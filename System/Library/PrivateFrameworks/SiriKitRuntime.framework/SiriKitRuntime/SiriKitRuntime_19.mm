uint64_t Dictionary<>.decodeWithValueAs<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v71 = type metadata accessor for Optional();
  v5 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71);
  v70 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v79 = &v61 - v8;
  v9 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v69 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for UserID();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v84 = &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v82 = &v61 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes6UserIDV3key_10Foundation4DataV5valuetSgMd, &_s16SiriMessageTypes6UserIDV3key_10Foundation4DataV5valuetSgMR);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v61 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v61 - v21;
  v23 = lazy protocol witness table accessor for type UserID and conformance UserID(&lazy protocol witness table cache variable for type UserID and conformance UserID, MEMORY[0x1E69D08C8], MEMORY[0x1E69D08D0]);
  v85 = v12;
  v68 = v23;
  v24 = Dictionary.init()();
  v25 = *(a2 + 64);
  v63 = a2 + 64;
  v26 = 1 << *(a2 + 32);
  v27 = -1;
  v88 = v24;
  if (v26 < 64)
  {
    v27 = ~(-1 << v26);
  }

  v28 = v27 & v25;
  v62 = (v26 + 63) >> 6;
  v80 = (v13 + 16);
  v83 = (v13 + 32);
  v72 = v13;
  v29 = (v13 + 8);
  v30 = a3;
  v77 = (v9 + 56);
  v78 = v29;
  v67 = (v5 + 8);
  v66 = (v9 + 32);
  v65 = (v9 + 16);
  v64 = (v9 + 8);
  v74 = a2;

  v32 = 0;
  v73 = a3;
  v86 = v19;
  v81 = v22;
  if (v28)
  {
    while (1)
    {
      v33 = v87;
      v34 = v32;
LABEL_13:
      v87 = v33;
      v37 = __clz(__rbit64(v28));
      v28 &= v28 - 1;
      v38 = v37 | (v34 << 6);
      v39 = v74;
      v40 = v72;
      v41 = v82;
      v42 = v85;
      (*(v72 + 16))(v82, *(v74 + 48) + *(v72 + 72) * v38, v85);
      v43 = (*(v39 + 56) + 16 * v38);
      v44 = *v43;
      v45 = v43[1];
      v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes6UserIDV3key_10Foundation4DataV5valuetMd, &_s16SiriMessageTypes6UserIDV3key_10Foundation4DataV5valuetMR);
      v47 = &v86[*(v46 + 48)];
      (*(v40 + 32))(v86, v41, v42);
      *v47 = v44;
      v47[1] = v45;
      v19 = v86;
      (*(*(v46 - 8) + 56))(v86, 0, 1, v46);
      outlined copy of Data._Representation(v44, v45);
      v36 = v34;
      v30 = v73;
      v22 = v81;
LABEL_14:
      outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v19, v22, &_s16SiriMessageTypes6UserIDV3key_10Foundation4DataV5valuetSgMd, &_s16SiriMessageTypes6UserIDV3key_10Foundation4DataV5valuetSgMR);
      v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes6UserIDV3key_10Foundation4DataV5valuetMd, &_s16SiriMessageTypes6UserIDV3key_10Foundation4DataV5valuetMR);
      v49 = (*(*(v48 - 8) + 48))(v22, 1, v48);
      v50 = v79;
      if (v49 == 1)
      {

        return v88;
      }

      v51 = &v22[*(v48 + 48)];
      v53 = *v51;
      v52 = v51[1];
      (*v83)(v84, v22, v85);
      type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NSKeyedUnarchiver, 0x1E696ACD0);
      v54 = v87;
      static NSKeyedUnarchiver.unarchiveTopLevelObjectWithData(_:)();
      v87 = v54;
      if (v54)
      {
        break;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
      if (swift_dynamicCast())
      {
        v75 = *v77;
        v75(v50, 0, 1, v30);
        v55 = v69;
        (*v66)(v69, v50, v30);
        v56 = *v80;
        v76 = v36;
        v57 = v85;
        v56(v82, v84, v85);
        v58 = v70;
        (*v65)(v70, v55, v30);
        v75(v58, 0, 1, v30);
        type metadata accessor for Dictionary();
        v19 = v86;
        Dictionary.subscript.setter();
        outlined consume of Data._Representation(v53, v52);
        v59 = v55;
        v22 = v81;
        (*v64)(v59, v30);
        result = (*v78)(v84, v57);
        v32 = v76;
      }

      else
      {
        (*v78)(v84, v85);
        outlined consume of Data._Representation(v53, v52);
        (*v77)(v50, 1, 1, v30);
        result = (*v67)(v50, v71);
        v32 = v36;
      }

      if (!v28)
      {
        goto LABEL_5;
      }
    }

    outlined consume of Data._Representation(v53, v52);
    (*v78)(v84, v85);
  }

  else
  {
LABEL_5:
    if (v62 <= v32 + 1)
    {
      v35 = v32 + 1;
    }

    else
    {
      v35 = v62;
    }

    v36 = v35 - 1;
    while (1)
    {
      v34 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
        break;
      }

      if (v34 >= v62)
      {
        v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes6UserIDV3key_10Foundation4DataV5valuetMd, &_s16SiriMessageTypes6UserIDV3key_10Foundation4DataV5valuetMR);
        (*(*(v60 - 8) + 56))(v19, 1, 1, v60);
        v28 = 0;
        goto LABEL_14;
      }

      v28 = *(v63 + 8 * v34);
      ++v32;
      if (v28)
      {
        v33 = v87;
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  return result;
}

Swift::OpaquePointer_optional __swiftcall SAMultiUserInfo.toUserIdToHomeMemberDictionary()()
{
  v48 = type metadata accessor for UserID();
  v46 = *(v48 - 8);
  v1 = MEMORY[0x1EEE9AC00](v48);
  v3 = &v43 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [v0 homeMembers];
  if (v4)
  {
    v6 = v4;
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for SAHomeMemberInfo, 0x1E69C7820);
    v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v7 >> 62)
    {
LABEL_36:
      v9 = __CocoaSet.count.getter();
      if (v9)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v9 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v9)
      {
LABEL_4:
        v10 = 0;
        v50 = v7 & 0xC000000000000001;
        v44 = v46 + 16;
        v45 = v7 & 0xFFFFFFFFFFFFFF8;
        v11 = MEMORY[0x1E69E7CC8];
        v47 = (v46 + 8);
        *&v8 = 138412290;
        v43 = v8;
        v49 = v9;
        while (1)
        {
          if (v50)
          {
            v14 = MEMORY[0x1E12A1FE0](v10, v7);
          }

          else
          {
            if (v10 >= *(v45 + 16))
            {
              goto LABEL_34;
            }

            v14 = *(v7 + 8 * v10 + 32);
          }

          v15 = v14;
          v16 = v10 + 1;
          if (__OFADD__(v10, 1))
          {
            __break(1u);
LABEL_33:
            __break(1u);
LABEL_34:
            __break(1u);
LABEL_35:
            __break(1u);
            goto LABEL_36;
          }

          v17 = [v14 sharedUserId];
          if (!v17)
          {
            if (one-time initialization token for conversationBridge != -1)
            {
              swift_once();
            }

            v29 = type metadata accessor for Logger();
            __swift_project_value_buffer(v29, static Logger.conversationBridge);
            v30 = v15;
            v31 = Logger.logObject.getter();
            v32 = static os_log_type_t.error.getter();

            if (os_log_type_enabled(v31, v32))
            {
              v33 = swift_slowAlloc();
              v34 = swift_slowAlloc();
              *v33 = v43;
              *(v33 + 4) = v30;
              *v34 = v30;
              v35 = v30;
              _os_log_impl(&dword_1DC659000, v31, v32, "Ignoring HomeMemberInfo: %@ for lack of sharedUserId", v33, 0xCu);
              outlined destroy of ReferenceResolutionClientProtocol?(v34, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
              v36 = v34;
              v9 = v49;
              MEMORY[0x1E12A2F50](v36, -1, -1);
              MEMORY[0x1E12A2F50](v33, -1, -1);
            }

            else
            {
            }

            goto LABEL_7;
          }

          v18 = v17;
          static String._unconditionallyBridgeFromObjectiveC(_:)();

          UserID.init(sharedUserId:)();
          v19 = v15;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v51 = v11;
          v22 = specialized __RawDictionaryStorage.find<A>(_:)(v3);
          v23 = v11[2];
          v24 = (v21 & 1) == 0;
          v25 = v23 + v24;
          if (__OFADD__(v23, v24))
          {
            goto LABEL_33;
          }

          v26 = v21;
          if (v11[3] >= v25)
          {
            if (isUniquelyReferenced_nonNull_native)
            {
              v11 = v51;
              if ((v21 & 1) == 0)
              {
                goto LABEL_25;
              }
            }

            else
            {
              specialized _NativeDictionary.copy()();
              v11 = v51;
              if ((v26 & 1) == 0)
              {
                goto LABEL_25;
              }
            }
          }

          else
          {
            specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v25, isUniquelyReferenced_nonNull_native);
            v27 = specialized __RawDictionaryStorage.find<A>(_:)(v3);
            if ((v26 & 1) != (v28 & 1))
            {
              v42 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
              __break(1u);
              goto LABEL_40;
            }

            v22 = v27;
            v11 = v51;
            if ((v26 & 1) == 0)
            {
LABEL_25:
              v11[(v22 >> 6) + 8] |= 1 << v22;
              v37 = v46;
              v38 = v48;
              (*(v46 + 16))(v11[6] + *(v46 + 72) * v22, v3, v48);
              *(v11[7] + 8 * v22) = v19;

              (*(v37 + 8))(v3, v38);
              v39 = v11[2];
              v40 = __OFADD__(v39, 1);
              v41 = v39 + 1;
              if (v40)
              {
                goto LABEL_35;
              }

              v11[2] = v41;
              goto LABEL_6;
            }
          }

          v12 = v11[7];
          v13 = *(v12 + 8 * v22);
          *(v12 + 8 * v22) = v19;

          (*v47)(v3, v48);
LABEL_6:
          v9 = v49;
LABEL_7:
          ++v10;
          if (v16 == v9)
          {

            goto LABEL_38;
          }
        }
      }
    }

    v11 = MEMORY[0x1E69E7CC8];
  }

  else
  {
    v11 = 0;
  }

LABEL_38:
  v42 = v11;
LABEL_40:
  result.value._rawValue = v42;
  result.is_nil = v5;
  return result;
}

Swift::String __swiftcall AFUserIdentityClassfication.toAceUserIdentityClassification()()
{
  v0 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

id SAConfidenceScores.toVoiceIdScoreCard()()
{
  v1 = v0;
  [v0 processedAudioDurationMilliseconds];
  v26.super.super.isa = Int._bridgeToObjectiveC()().super.super.isa;
  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NSNumber, 0x1E696AD98);
  v25.super.super.isa = NSNumber.init(integerLiteral:)(-1).super.super.isa;
  SAConfidenceScores.scoresDict()();
  v24 = [v0 scoringSchemeVersion];
  v2 = [v0 thresholdType];
  if (v2)
  {
    v3 = v2;
    v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;
  }

  else
  {
    v23 = 0;
    v5 = 0;
  }

  v6 = [v0 assetVersion];
  if (v6)
  {
    v7 = v6;
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  v11 = [v1 classifiedUser];
  if (v11)
  {
    v12 = v11;
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;
  }

  else
  {
    v13 = 0;
    v15 = 0;
  }

  v16 = SAConfidenceScores.af_userIdentityClassification()();
  v17.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  if (v5)
  {
    v18 = MEMORY[0x1E12A1410](v23, v5);

    if (v10)
    {
      goto LABEL_12;
    }

LABEL_15:
    v19 = 0;
    if (v15)
    {
      goto LABEL_13;
    }

LABEL_16:
    v20 = 0;
    goto LABEL_17;
  }

  v18 = 0;
  if (!v10)
  {
    goto LABEL_15;
  }

LABEL_12:
  v19 = MEMORY[0x1E12A1410](v8, v10);

  if (!v15)
  {
    goto LABEL_16;
  }

LABEL_13:
  v20 = MEMORY[0x1E12A1410](v13, v15);

LABEL_17:
  v21 = [objc_allocWithZone(MEMORY[0x1E698D268]) initWithSpIdAudioProcessedDuration:v26.super.super.isa spIdUnknownUserScore:v25.super.super.isa spIdKnownUserScores:v17.super.isa spIdUserScoresVersion:v24 spIdScoreThresholdingType:v18 spIdAssetVersion:v19 userClassified:v20 userIdentityClassification:v16];

  return v21;
}

void *SAConfidenceScores.scoresDict()()
{
  v1 = v0;
  v2 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So8NSNumberCTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v3 = [v1 scores];
  if (v3)
  {
    v4 = v3;
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for SAUserConfidenceScore, 0x1E69C7C00);
    v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v5 >> 62)
    {
      goto LABEL_28;
    }

    for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
    {
      v7 = 0;
      v35 = v5;
      v36 = v5 & 0xC000000000000001;
      v34 = v5 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v36)
        {
          v8 = MEMORY[0x1E12A1FE0](v7, v5);
        }

        else
        {
          if (v7 >= *(v34 + 16))
          {
            goto LABEL_26;
          }

          v8 = *(v5 + 8 * v7 + 32);
        }

        v9 = v8;
        v10 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          break;
        }

        v11 = [v8 sharedUserId];
        if (v11)
        {
          v5 = i;
          v12 = v11;
          v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v15 = v14;

          [v9 confidenceScore];
          v16.super.super.isa = Int._bridgeToObjectiveC()().super.super.isa;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v18 = specialized __RawDictionaryStorage.find<A>(_:)(v13, v15);
          v20 = v2[2];
          v21 = (v19 & 1) == 0;
          v22 = __OFADD__(v20, v21);
          v23 = v20 + v21;
          if (v22)
          {
            goto LABEL_25;
          }

          v24 = v19;
          if (v2[3] >= v23)
          {
            if (isUniquelyReferenced_nonNull_native)
            {
              goto LABEL_18;
            }

            v29 = v18;
            specialized _NativeDictionary.copy()();
            v18 = v29;
            if ((v24 & 1) == 0)
            {
              goto LABEL_21;
            }

LABEL_19:
            v26 = v18;

            v27 = v2[7];
            v28 = *(v27 + 8 * v26);
            *(v27 + 8 * v26) = v16;
          }

          else
          {
            specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v23, isUniquelyReferenced_nonNull_native);
            v18 = specialized __RawDictionaryStorage.find<A>(_:)(v13, v15);
            if ((v24 & 1) != (v25 & 1))
            {
              result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
              __break(1u);
              return result;
            }

LABEL_18:
            if (v24)
            {
              goto LABEL_19;
            }

LABEL_21:
            v2[(v18 >> 6) + 8] |= 1 << v18;
            v30 = (v2[6] + 16 * v18);
            *v30 = v13;
            v30[1] = v15;
            *(v2[7] + 8 * v18) = v16;

            v31 = v2[2];
            v22 = __OFADD__(v31, 1);
            v32 = v31 + 1;
            if (v22)
            {
              goto LABEL_27;
            }

            v2[2] = v32;
          }

          i = v5;
          v5 = v35;
          goto LABEL_6;
        }

LABEL_6:
        ++v7;
        if (v10 == i)
        {
          goto LABEL_29;
        }
      }

      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      ;
    }

LABEL_29:
  }

  return v2;
}

uint64_t SAConfidenceScores.af_userIdentityClassification()()
{
  v1 = [v0 userIdentityClassification];
  if (v1)
  {
    v2 = v1;
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;

    if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v3 && v6 == v5)
    {
      v9 = 4;
    }

    else
    {
      v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v8)
      {
        v9 = 4;
LABEL_11:

        return v9;
      }

      if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v3 && v11 == v5)
      {
        v9 = 3;
      }

      else
      {
        v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v13)
        {
          v9 = 3;
          goto LABEL_11;
        }

        if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v3 && v14 == v5)
        {
          v9 = 1;
        }

        else
        {
          v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v15)
          {
            v9 = 1;
            goto LABEL_11;
          }

          if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v3 && v16 == v5)
          {
            v9 = 2;
          }

          else
          {
            v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v17)
            {
              v9 = 2;
              goto LABEL_11;
            }

            if (static String._unconditionallyBridgeFromObjectiveC(_:)() != v3 || v18 != v5)
            {
              _stringCompareWithSmolCheck(_:_:expecting:)();
            }

            v9 = 0;
          }
        }
      }
    }

    goto LABEL_11;
  }

  return 0;
}

id AFVoiceIdScoreCard.toSAConfidenceScores()()
{
  v1 = [objc_allocWithZone(MEMORY[0x1E69C7790]) init];
  v2 = [v0 spIdAudioProcessedDuration];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 integerValue];
  }

  else
  {
    v4 = -1;
  }

  [v1 setProcessedAudioDurationMilliseconds_];
  v5 = [v0 spIdUserScoresVersion];
  [v1 setScoringSchemeVersion_];

  v6 = AFVoiceIdScoreCard.thresholdType()();
  v7 = MEMORY[0x1E12A1410](v6);

  [v1 setThresholdType_];

  v8 = [v0 spIdAssetVersion];
  [v1 setAssetVersion_];

  v9 = [v0 userClassified];
  [v1 setClassifiedUser_];

  [v0 userIdentityClassification];
  countAndFlagsBits = AFUserIdentityClassfication.toAceUserIdentityClassification()()._countAndFlagsBits;
  v11 = MEMORY[0x1E12A1410](countAndFlagsBits);

  [v1 setUserIdentityClassification_];

  AFVoiceIdScoreCard.scoresArray()();
  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for SAUserConfidenceScore, 0x1E69C7C00);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v1 setScores_];

  return v1;
}

uint64_t AFVoiceIdScoreCard.thresholdType()()
{
  v1 = [v0 spIdScoreThresholdingType];
  if (v1)
  {
    v2 = v1;
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;

    v6 = v3 == 0xD000000000000025 && 0x80000001DCA800C0 == v5;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || (v3 == 0xD000000000000028 ? (v8 = 0x80000001DCA800F0 == v5) : (v8 = 0), v8))
    {
    }

    else
    {
      _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  return static String._unconditionallyBridgeFromObjectiveC(_:)();
}

void AFVoiceIdScoreCard.scoresArray()()
{
  v20 = MEMORY[0x1E69E7CC0];
  v1 = [v0 spIdKnownUserScores];
  if (v1)
  {
    v2 = v1;
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NSNumber, 0x1E696AD98);
    v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v4 = 0;
    v5 = 1 << *(v3 + 32);
    v6 = -1;
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    v7 = v6 & *(v3 + 64);
    v8 = (v5 + 63) >> 6;
    if (v7)
    {
      goto LABEL_9;
    }

    while (1)
    {
      v9 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      if (v9 >= v8)
      {

        return;
      }

      v7 = *(v3 + 64 + 8 * v9);
      ++v4;
      if (v7)
      {
        v4 = v9;
        do
        {
LABEL_9:
          v10 = __clz(__rbit64(v7)) | (v4 << 6);
          v11 = (*(v3 + 48) + 16 * v10);
          v12 = *v11;
          v13 = v11[1];
          v14 = *(*(v3 + 56) + 8 * v10);
          v15 = objc_allocWithZone(MEMORY[0x1E69C7C00]);

          v16 = v14;
          v17 = [v15 init];
          [v17 setConfidenceScore_];
          v18 = MEMORY[0x1E12A1410](v12, v13);

          [v17 setSharedUserId_];

          v19 = v17;
          MEMORY[0x1E12A1680]();
          if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          v7 &= v7 - 1;
          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        }

        while (v7);
      }
    }

    __break(1u);
  }
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSi_Tt1g5(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 3);
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSo16SAHomeMemberInfoC_Tt1g5Tm(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

void specialized _NativeDictionary._delete(at:)(int64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v41 = a2;
    v11 = ~v9;
    v12 = _HashTable.previousHole(before:)();
    v13 = v11;
    a2 = v41;
    v40 = (v12 + 1) & v13;
    v15 = *(v5 + 16);
    v14 = v5 + 16;
    v38 = v8;
    v39 = v15;
    v16 = *(v14 + 56);
    v37 = (v14 - 8);
    do
    {
      v17 = v16;
      v18 = v16 * v10;
      v19 = v13;
      v20 = v14;
      v39(v7, *(a2 + 48) + v16 * v10, v4);
      lazy protocol witness table accessor for type UserID and conformance UserID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      v21 = dispatch thunk of Hashable._rawHashValue(seed:)();
      (*v37)(v7, v4);
      v13 = v19;
      v22 = v21 & v19;
      if (a1 >= v40)
      {
        if (v22 >= v40 && a1 >= v22)
        {
LABEL_15:
          v14 = v20;
          if (v17 * a1 < v18 || *(v41 + 48) + v17 * a1 >= (*(v41 + 48) + v18 + v17))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v17 * a1 != v18)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v41;
          v25 = *(v41 + 56);
          v26 = *(*(type metadata accessor for Parse() - 8) + 72);
          v27 = v26 * a1;
          v28 = v25 + v26 * a1;
          v29 = v26 * v10;
          v30 = v25 + v26 * v10 + v26;
          if (v27 < v29 || v28 >= v30)
          {
            swift_arrayInitWithTakeFrontToBack();
            a1 = v10;
            v8 = v38;
            v13 = v19;
          }

          else
          {
            a1 = v10;
            v32 = v27 == v29;
            v8 = v38;
            v13 = v19;
            if (!v32)
            {
              swift_arrayInitWithTakeBackToFront();
              v13 = v19;
              a1 = v10;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v22 >= v40 || a1 >= v22)
      {
        goto LABEL_15;
      }

      v14 = v20;
      v8 = v38;
      a2 = v41;
LABEL_4:
      v10 = (v10 + 1) & v13;
      v16 = v17;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
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
}

{
  v38 = type metadata accessor for UUID();
  v4 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v37 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a2 + 64;
  v8 = -1 << *(a2 + 32);
  v9 = (a1 + 1) & ~v8;
  if ((*(a2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v39 = v5;
    v11 = _HashTable.previousHole(before:)();
    v12 = v38;
    v5 = v39;
    v13 = v10;
    v36 = (v11 + 1) & v10;
    v15 = *(v4 + 16);
    v14 = v4 + 16;
    v34 = a2 + 64;
    v35 = v15;
    v16 = *(v14 + 56);
    v33 = (v14 - 8);
    do
    {
      v17 = v16;
      v18 = v16 * v9;
      v19 = v37;
      v20 = v13;
      v21 = v14;
      v35(v37, *(v5 + 48) + v16 * v9, v12);
      lazy protocol witness table accessor for type UserID and conformance UserID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      v22 = dispatch thunk of Hashable._rawHashValue(seed:)();
      (*v33)(v19, v12);
      v13 = v20;
      v23 = v22 & v20;
      if (a1 >= v36)
      {
        if (v23 >= v36 && a1 >= v23)
        {
LABEL_15:
          v5 = v39;
          v14 = v21;
          if (v17 * a1 < v18 || (v16 = v17, *(v39 + 48) + v17 * a1 >= (*(v39 + 48) + v18 + v17)))
          {
            swift_arrayInitWithTakeFrontToBack();
            v5 = v39;
            v16 = v17;
            v13 = v20;
            v7 = v34;
          }

          else
          {
            v7 = v34;
            if (v17 * a1 != v18)
            {
              swift_arrayInitWithTakeBackToFront();
              v5 = v39;
              v16 = v17;
              v13 = v20;
            }
          }

          v26 = *(v5 + 56);
          v27 = (v26 + 8 * a1);
          v28 = (v26 + 8 * v9);
          if (a1 != v9 || v27 >= v28 + 1)
          {
            *v27 = *v28;
            a1 = v9;
          }

          goto LABEL_4;
        }
      }

      else if (v23 >= v36 || a1 >= v23)
      {
        goto LABEL_15;
      }

      v14 = v21;
      v7 = v34;
      v16 = v17;
      v5 = v39;
LABEL_4:
      v9 = (v9 + 1) & v13;
    }

    while (((*(v7 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  *(v7 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v29 = *(v5 + 16);
  v30 = __OFSUB__(v29, 1);
  v31 = v29 - 1;
  if (v30)
  {
    __break(1u);
  }

  else
  {
    *(v5 + 16) = v31;
    ++*(v5 + 36);
  }
}

{
  v4 = type metadata accessor for CodingUserInfoKey();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v12 = _HashTable.previousHole(before:)();
    v13 = v11;
    v38 = (v12 + 1) & v11;
    v15 = *(v5 + 16);
    v14 = v5 + 16;
    v39 = *(v14 + 56);
    v36 = (v14 - 8);
    v37 = v15;
    do
    {
      v16 = v8;
      v17 = v39 * v10;
      v18 = v13;
      v19 = v14;
      v37(v7, *(a2 + 48) + v39 * v10, v4);
      v20 = dispatch thunk of Hashable._rawHashValue(seed:)();
      (*v36)(v7, v4);
      v13 = v18;
      v21 = v20 & v18;
      if (a1 >= v38)
      {
        if (v21 >= v38 && a1 >= v21)
        {
LABEL_15:
          v24 = *(a2 + 48);
          v25 = v24 + v39 * a1;
          v26 = v24 + v17 + v39;
          v27 = v39 * a1 < v17 || v25 >= v26;
          v14 = v19;
          if (v27)
          {
            swift_arrayInitWithTakeFrontToBack();
            v13 = v18;
            v8 = v16;
          }

          else
          {
            v28 = v39 * a1 == v17;
            v8 = v16;
            if (!v28)
            {
              swift_arrayInitWithTakeBackToFront();
              v13 = v18;
            }
          }

          v29 = *(a2 + 56);
          v30 = (v29 + 32 * a1);
          v31 = (v29 + 32 * v10);
          if (a1 != v10 || v30 >= v31 + 2)
          {
            v32 = v31[1];
            *v30 = *v31;
            v30[1] = v32;
            a1 = v10;
          }

          goto LABEL_4;
        }
      }

      else if (v21 >= v38 || a1 >= v21)
      {
        goto LABEL_15;
      }

      v14 = v19;
      v8 = v16;
LABEL_4:
      v10 = (v10 + 1) & v13;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
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
}

{
  v39 = type metadata accessor for ConversationSessionKey();
  v4 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v38 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a2 + 64;
  v8 = -1 << *(a2 + 32);
  v9 = (a1 + 1) & ~v8;
  if ((*(a2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v40 = v5;
    v11 = _HashTable.previousHole(before:)();
    v12 = v39;
    v5 = v40;
    v13 = v10;
    v37 = (v11 + 1) & v10;
    v15 = *(v4 + 16);
    v14 = v4 + 16;
    v35 = a2 + 64;
    v36 = v15;
    v16 = *(v14 + 56);
    v34 = (v14 - 8);
    do
    {
      v17 = v16;
      v18 = v16 * v9;
      v19 = v38;
      v20 = v13;
      v21 = v14;
      v36(v38, *(v5 + 48) + v16 * v9, v12);
      lazy protocol witness table accessor for type UserID and conformance UserID(&lazy protocol witness table cache variable for type ConversationSessionKey and conformance ConversationSessionKey, MEMORY[0x1E69D0820], MEMORY[0x1E69D0828]);
      v22 = dispatch thunk of Hashable._rawHashValue(seed:)();
      (*v34)(v19, v12);
      v13 = v20;
      v23 = v22 & v20;
      if (a1 >= v37)
      {
        if (v23 >= v37 && a1 >= v23)
        {
LABEL_15:
          v5 = v40;
          v14 = v21;
          if (v17 * a1 < v18 || (v16 = v17, *(v40 + 48) + v17 * a1 >= (*(v40 + 48) + v18 + v17)))
          {
            swift_arrayInitWithTakeFrontToBack();
            v5 = v40;
            v16 = v17;
            v13 = v20;
            v7 = v35;
          }

          else
          {
            v7 = v35;
            if (v17 * a1 != v18)
            {
              swift_arrayInitWithTakeBackToFront();
              v5 = v40;
              v16 = v17;
              v13 = v20;
            }
          }

          v26 = *(v5 + 56);
          v27 = (v26 + 32 * a1);
          v28 = (v26 + 32 * v9);
          if (a1 != v9 || v27 >= v28 + 2)
          {
            v29 = v28[1];
            *v27 = *v28;
            v27[1] = v29;
            a1 = v9;
          }

          goto LABEL_4;
        }
      }

      else if (v23 >= v37 || a1 >= v23)
      {
        goto LABEL_15;
      }

      v14 = v21;
      v7 = v35;
      v16 = v17;
      v5 = v40;
LABEL_4:
      v9 = (v9 + 1) & v13;
    }

    while (((*(v7 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  *(v7 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v30 = *(v5 + 16);
  v31 = __OFSUB__(v30, 1);
  v32 = v30 - 1;
  if (v31)
  {
    __break(1u);
  }

  else
  {
    *(v5 + 16) = v32;
    ++*(v5 + 36);
  }
}

{
  v38 = type metadata accessor for UUID();
  v4 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v37 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a2 + 64;
  v8 = -1 << *(a2 + 32);
  v9 = (a1 + 1) & ~v8;
  if ((*(a2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v39 = v5;
    v11 = _HashTable.previousHole(before:)();
    v12 = v38;
    v5 = v39;
    v13 = v10;
    v36 = (v11 + 1) & v10;
    v15 = *(v4 + 16);
    v14 = v4 + 16;
    v34 = a2 + 64;
    v35 = v15;
    v16 = *(v14 + 56);
    v33 = (v14 - 8);
    do
    {
      v17 = v16;
      v18 = v16 * v9;
      v19 = v37;
      v20 = v13;
      v21 = v14;
      v35(v37, *(v5 + 48) + v16 * v9, v12);
      lazy protocol witness table accessor for type UserID and conformance UserID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      v22 = dispatch thunk of Hashable._rawHashValue(seed:)();
      (*v33)(v19, v12);
      v13 = v20;
      v23 = v22 & v20;
      if (a1 >= v36)
      {
        if (v23 >= v36 && a1 >= v23)
        {
LABEL_15:
          v5 = v39;
          v14 = v21;
          if (v17 * a1 < v18 || (v16 = v17, *(v39 + 48) + v17 * a1 >= (*(v39 + 48) + v18 + v17)))
          {
            swift_arrayInitWithTakeFrontToBack();
            v5 = v39;
            v16 = v17;
            v13 = v20;
            v7 = v34;
          }

          else
          {
            v7 = v34;
            if (v17 * a1 != v18)
            {
              swift_arrayInitWithTakeBackToFront();
              v5 = v39;
              v16 = v17;
              v13 = v20;
            }
          }

          v26 = *(v5 + 56);
          v27 = (v26 + 16 * a1);
          v28 = (v26 + 16 * v9);
          if (a1 != v9 || v27 >= v28 + 1)
          {
            *v27 = *v28;
            a1 = v9;
          }

          goto LABEL_4;
        }
      }

      else if (v23 >= v36 || a1 >= v23)
      {
        goto LABEL_15;
      }

      v14 = v21;
      v7 = v34;
      v16 = v17;
      v5 = v39;
LABEL_4:
      v9 = (v9 + 1) & v13;
    }

    while (((*(v7 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  *(v7 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v29 = *(v5 + 16);
  v30 = __OFSUB__(v29, 1);
  v31 = v29 - 1;
  if (v30)
  {
    __break(1u);
  }

  else
  {
    *(v5 + 16) = v31;
    ++*(v5 + 36);
  }
}

{
  v38 = type metadata accessor for UserID();
  v4 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v37 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a2 + 64;
  v8 = -1 << *(a2 + 32);
  v9 = (a1 + 1) & ~v8;
  if ((*(a2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v39 = v5;
    v11 = _HashTable.previousHole(before:)();
    v12 = v38;
    v5 = v39;
    v13 = v10;
    v36 = (v11 + 1) & v10;
    v15 = *(v4 + 16);
    v14 = v4 + 16;
    v34 = a2 + 64;
    v35 = v15;
    v16 = *(v14 + 56);
    v33 = (v14 - 8);
    do
    {
      v17 = v16;
      v18 = v16 * v9;
      v19 = v37;
      v20 = v13;
      v21 = v14;
      v35(v37, *(v5 + 48) + v16 * v9, v12);
      lazy protocol witness table accessor for type UserID and conformance UserID(&lazy protocol witness table cache variable for type UserID and conformance UserID, MEMORY[0x1E69D08C8], MEMORY[0x1E69D08D0]);
      v22 = dispatch thunk of Hashable._rawHashValue(seed:)();
      (*v33)(v19, v12);
      v13 = v20;
      v23 = v22 & v20;
      if (a1 >= v36)
      {
        if (v23 >= v36 && a1 >= v23)
        {
LABEL_15:
          v5 = v39;
          v14 = v21;
          if (v17 * a1 < v18 || (v16 = v17, *(v39 + 48) + v17 * a1 >= (*(v39 + 48) + v18 + v17)))
          {
            swift_arrayInitWithTakeFrontToBack();
            v5 = v39;
            v16 = v17;
            v13 = v20;
            v7 = v34;
          }

          else
          {
            v7 = v34;
            if (v17 * a1 != v18)
            {
              swift_arrayInitWithTakeBackToFront();
              v5 = v39;
              v16 = v17;
              v13 = v20;
            }
          }

          v26 = *(v5 + 56);
          v27 = (v26 + 8 * a1);
          v28 = (v26 + 8 * v9);
          if (a1 != v9 || v27 >= v28 + 1)
          {
            *v27 = *v28;
            a1 = v9;
          }

          goto LABEL_4;
        }
      }

      else if (v23 >= v36 || a1 >= v23)
      {
        goto LABEL_15;
      }

      v14 = v21;
      v7 = v34;
      v16 = v17;
      v5 = v39;
LABEL_4:
      v9 = (v9 + 1) & v13;
    }

    while (((*(v7 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  *(v7 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v29 = *(v5 + 16);
  v30 = __OFSUB__(v29, 1);
  v31 = v29 - 1;
  if (v30)
  {
    __break(1u);
  }

  else
  {
    *(v5 + 16) = v31;
    ++*(v5 + 36);
  }
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
      v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SiriCam12RankedActionV03topD0_SayAA0B5ParseOG17alternativeParsestMd, &_s7SiriCam12RankedActionV03topD0_SayAA0B5ParseOG17alternativeParsestMR) - 8) + 72);
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

unint64_t specialized _NativeDictionary._delete(at:)(unint64_t a1, uint64_t a2)
{
  return specialized _NativeDictionary._delete(at:)(a1, a2, MEMORY[0x1E69D0AA8]);
}

{
  return specialized _NativeDictionary._delete(at:)(a1, a2, MEMORY[0x1E69D0100]);
}

unint64_t specialized _NativeDictionary._delete(at:)(unint64_t result, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = result;
  v5 = a2 + 64;
  v6 = -1 << *(a2 + 32);
  v7 = (result + 1) & ~v6;
  if ((*(a2 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v9 = ~v6;
    v10 = (_HashTable.previousHole(before:)() + 1) & ~v6;
    while (1)
    {
      Hasher.init(_seed:)();

      String.hash(into:)();
      v11 = Hasher._finalize()();

      v12 = v11 & v9;
      if (v4 >= v10)
      {
        break;
      }

      if (v12 < v10)
      {
        goto LABEL_10;
      }

LABEL_11:
      v13 = *(a2 + 48);
      v14 = (v13 + 16 * v4);
      v15 = (v13 + 16 * v7);
      if (v4 != v7 || v14 >= v15 + 1)
      {
        *v14 = *v15;
      }

      v16 = *(a2 + 56);
      v17 = *(*(a3(0) - 8) + 72);
      v18 = v17 * v4;
      result = v16 + v17 * v4;
      v19 = v17 * v7;
      v20 = v16 + v17 * v7 + v17;
      if (v18 < v19 || result >= v20)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v4 = v7;
        if (v18 == v19)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v4 = v7;
LABEL_5:
      v7 = (v7 + 1) & v9;
      if (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v12 < v10)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v4 < v12)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v5 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v4) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
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
        v14 = (v13 + 8 * v3);
        v15 = (v13 + 8 * v6);
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

void specialized _NativeDictionary._delete(at:)(uint64_t a1, uint64_t a2)
{
  specialized _NativeDictionary._delete(at:)(a1, a2, &_s11SiriKitFlow5InputV_AA06ActingC0_p0A9Utilities0A11EnvironmentCtMd, &_s11SiriKitFlow5InputV_AA06ActingC0_p0A9Utilities0A11EnvironmentCtMR);
}

{
  specialized _NativeDictionary._delete(at:)(a1, a2, &_s11SiriKitFlow5InputV_AA03AnyC0C0A9Utilities0A11EnvironmentCtMd, &_s11SiriKitFlow5InputV_AA03AnyC0C0A9Utilities0A11EnvironmentCtMR);
}

void specialized _NativeDictionary._delete(at:)(int64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v38 = a3;
  v39 = a4;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2 + 64;
  v11 = -1 << *(a2 + 32);
  v12 = (a1 + 1) & ~v11;
  if ((*(a2 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    v14 = _HashTable.previousHole(before:)();
    v15 = v13;
    v43 = (v14 + 1) & v13;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v41 = a2 + 64;
    v42 = v17;
    v18 = *(v16 + 56);
    v40 = (v16 - 8);
    v44 = v18;
    do
    {
      v19 = v18 * v12;
      v20 = v15;
      v21 = v16;
      v42(v9, *(a2 + 48) + v18 * v12, v6);
      lazy protocol witness table accessor for type UserID and conformance UserID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      v22 = dispatch thunk of Hashable._rawHashValue(seed:)();
      (*v40)(v9, v6);
      v15 = v20;
      v23 = v22 & v20;
      if (a1 >= v43)
      {
        if (v23 >= v43 && a1 >= v23)
        {
LABEL_15:
          v16 = v21;
          if (v44 * a1 < v19 || *(a2 + 48) + v44 * a1 >= (*(a2 + 48) + v19 + v44))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v44 * a1 != v19)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v26 = *(a2 + 56);
          v27 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(v38, v39) - 8) + 72);
          v28 = v27 * a1;
          v29 = v26 + v27 * a1;
          v30 = v27 * v12;
          v31 = v26 + v27 * v12 + v27;
          if (v28 < v30 || v29 >= v31)
          {
            swift_arrayInitWithTakeFrontToBack();
            a1 = v12;
            v10 = v41;
            v15 = v20;
          }

          else
          {
            a1 = v12;
            v33 = v28 == v30;
            v10 = v41;
            v15 = v20;
            if (!v33)
            {
              swift_arrayInitWithTakeBackToFront();
              v15 = v20;
              a1 = v12;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v23 >= v43 || a1 >= v23)
      {
        goto LABEL_15;
      }

      v16 = v21;
      v10 = v41;
LABEL_4:
      v12 = (v12 + 1) & v15;
      v18 = v44;
    }

    while (((*(v10 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v34 = *(a2 + 16);
  v35 = __OFSUB__(v34, 1);
  v36 = v34 - 1;
  if (v35)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v36;
    ++*(a2 + 36);
  }
}

char *specialized _NativeDictionary._delete(at:)(char *result, uint64_t a2)
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
        result = (v14 + 80 * v3);
        v15 = (v14 + 80 * v6);
        if (v3 != v6 || result >= v15 + 80)
        {
          result = memmove(result, v15, 0x50uLL);
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

uint64_t specialized static ConversationMUXUtils.getAllUserIds(from:)()
{
  v45 = type metadata accessor for UserID();
  v0 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v41 = v36 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v44 = v36 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes6UserIDV3key_So16SAHomeMemberInfoC5valuetSgMd, &_s16SiriMessageTypes6UserIDV3key_So16SAHomeMemberInfoC5valuetSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v42 = v36 - v8;
  v9 = MUXContextMessage.userIdToHomeMember.getter();
  v46 = MEMORY[0x1E69E7CD0];
  v10 = v9 + 64;
  v11 = 1 << *(v9 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(v9 + 64);
  v14 = (v11 + 63) >> 6;
  v36[1] = v0 + 16;
  v43 = (v0 + 32);
  v38 = v0;
  v39 = v9;
  v40 = (v0 + 8);

  v16 = 0;
  v37 = v6;
  if (v13)
  {
    while (1)
    {
      v17 = v16;
LABEL_12:
      v21 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v22 = v21 | (v17 << 6);
      v24 = v38;
      v23 = v39;
      (*(v38 + 16))(v44, *(v39 + 48) + *(v38 + 72) * v22, v45);
      v25 = *(*(v23 + 56) + 8 * v22);
      v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes6UserIDV3key_So16SAHomeMemberInfoC5valuetMd, &_s16SiriMessageTypes6UserIDV3key_So16SAHomeMemberInfoC5valuetMR);
      v27 = *(v26 + 48);
      v6 = v37;
      (*(v24 + 32))();
      *&v6[v27] = v25;
      (*(*(v26 - 8) + 56))(v6, 0, 1, v26);
      v28 = v25;
      v19 = v17;
      v20 = v42;
LABEL_13:
      outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v6, v20, &_s16SiriMessageTypes6UserIDV3key_So16SAHomeMemberInfoC5valuetSgMd, &_s16SiriMessageTypes6UserIDV3key_So16SAHomeMemberInfoC5valuetSgMR);
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes6UserIDV3key_So16SAHomeMemberInfoC5valuetMd, &_s16SiriMessageTypes6UserIDV3key_So16SAHomeMemberInfoC5valuetMR);
      if ((*(*(v29 - 8) + 48))(v20, 1, v29) == 1)
      {
        break;
      }

      v30 = *(v20 + *(v29 + 48));
      v31 = v41;
      v32 = v20;
      v33 = v45;
      (*v43)(v41, v32, v45);
      v34 = v44;
      specialized Set._Variant.insert(_:)(v44, v31);

      result = (*v40)(v34, v33);
      v16 = v19;
      if (!v13)
      {
        goto LABEL_5;
      }
    }

    return v46;
  }

  else
  {
LABEL_5:
    if (v14 <= v16 + 1)
    {
      v18 = v16 + 1;
    }

    else
    {
      v18 = v14;
    }

    v19 = v18 - 1;
    v20 = v42;
    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v17 >= v14)
      {
        v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes6UserIDV3key_So16SAHomeMemberInfoC5valuetMd, &_s16SiriMessageTypes6UserIDV3key_So16SAHomeMemberInfoC5valuetMR);
        (*(*(v35 - 8) + 56))(v6, 1, 1, v35);
        v13 = 0;
        goto LABEL_13;
      }

      v13 = *(v10 + 8 * v17);
      ++v16;
      if (v13)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  return result;
}

void specialized static ConversationMUXUtils.getAllKnownUserIds(from:)()
{
  v0 = type metadata accessor for UserID();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v60 = &v57 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v57 - v4;
  MEMORY[0x1EEE9AC00](v6);
  v70 = &v57 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes6UserIDV3key_So16SAHomeMemberInfoC5valuetSgMd, &_s16SiriMessageTypes6UserIDV3key_So16SAHomeMemberInfoC5valuetSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v65 = &v57 - v12;
  v13 = MUXContextMessage.userIdToHomeMember.getter();
  v76[4] = MEMORY[0x1E69E7CD0];
  v14 = v13 + 64;
  v15 = 1 << *(v13 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(v13 + 64);
  v59 = (v15 + 63) >> 6;
  v69 = (v1 + 16);
  v71 = (v1 + 32);
  v72 = *MEMORY[0x1E69C7EF0];
  v61 = v1;
  v63 = (v1 + 8);
  v62 = v13;

  v18 = 0;
  v67 = v10;
  v64 = v14;
  v58 = v0;
  v68 = v5;
  if (!v17)
  {
    goto LABEL_9;
  }

  while (1)
  {
LABEL_8:
    v23 = v0;
    v24 = v18;
LABEL_17:
    v27 = __clz(__rbit64(v17));
    v17 &= v17 - 1;
    v28 = v27 | (v24 << 6);
    v29 = v62;
    v30 = v61;
    v31 = v70;
    (*(v61 + 16))(v70, *(v62 + 48) + *(v61 + 72) * v28, v23);
    v32 = *(*(v29 + 56) + 8 * v28);
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes6UserIDV3key_So16SAHomeMemberInfoC5valuetMd, &_s16SiriMessageTypes6UserIDV3key_So16SAHomeMemberInfoC5valuetMR);
    v34 = *(v33 + 48);
    v35 = *(v30 + 32);
    v36 = v67;
    v37 = v31;
    v38 = v23;
    v35(v67, v37, v23);
    *&v36[v34] = v32;
    v10 = v36;
    (*(*(v33 - 8) + 56))(v36, 0, 1, v33);
    v39 = v32;
    v5 = v68;
LABEL_18:
    v40 = v65;
    outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v10, v65, &_s16SiriMessageTypes6UserIDV3key_So16SAHomeMemberInfoC5valuetSgMd, &_s16SiriMessageTypes6UserIDV3key_So16SAHomeMemberInfoC5valuetSgMR);
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes6UserIDV3key_So16SAHomeMemberInfoC5valuetMd, &_s16SiriMessageTypes6UserIDV3key_So16SAHomeMemberInfoC5valuetMR);
    if ((*(*(v41 - 8) + 48))(v40, 1, v41) == 1)
    {

      return;
    }

    v19 = *(v40 + *(v41 + 48));
    v0 = v38;
    (*v71)(v5, v40, v38);
    v42 = [v19 attributes];
    if (v42)
    {
      break;
    }

LABEL_7:
    v20 = v60;
    (*v69)(v60, v5, v0);
    v21 = v70;
    specialized Set._Variant.insert(_:)(v70, v20);

    v22 = *v63;
    (*v63)(v21, v0);
    v22(v5, v0);
    v14 = v64;
    if (!v17)
    {
      goto LABEL_9;
    }
  }

  v66 = v19;
  v43 = v42;
  v44 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v45 = *(v44 + 16);
  if (!v45)
  {

    v10 = v67;
    v5 = v68;
LABEL_6:
    v19 = v66;
    goto LABEL_7;
  }

  v46 = 0;
  v47 = v44 + 32;
  while (1)
  {
    if (v46 >= *(v44 + 16))
    {
      __break(1u);
      goto LABEL_45;
    }

    outlined init with copy of Any(v47, v76);
    outlined init with copy of Any(v76, v75);
    v48 = swift_dynamicCast();
    v49 = v74;
    if (v48)
    {
      v50 = v73;
    }

    else
    {
      v50 = 0;
    }

    v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    if (v48)
    {
      v53 = v49 == 0;
    }

    else
    {
      v53 = 1;
    }

    if (v53)
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v76);

      goto LABEL_23;
    }

    if (v50 == v51 && v49 == v52)
    {
      break;
    }

    v55 = _stringCompareWithSmolCheck(_:_:expecting:)();

    __swift_destroy_boxed_opaque_existential_1Tm(v76);
    if (v55)
    {
      goto LABEL_41;
    }

LABEL_23:
    ++v46;
    v47 += 32;
    if (v45 == v46)
    {

      v0 = v58;
      v10 = v67;
      v5 = v68;
      goto LABEL_6;
    }
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v76);
LABEL_41:

  v5 = v68;
  v0 = v58;
  (*v63)(v68, v58);
  v10 = v67;
  v14 = v64;
  if (v17)
  {
    goto LABEL_8;
  }

LABEL_9:
  if (v59 <= v18 + 1)
  {
    v25 = v18 + 1;
  }

  else
  {
    v25 = v59;
  }

  v26 = v25 - 1;
  while (1)
  {
    v24 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v24 >= v59)
    {
      v38 = v0;
      v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes6UserIDV3key_So16SAHomeMemberInfoC5valuetMd, &_s16SiriMessageTypes6UserIDV3key_So16SAHomeMemberInfoC5valuetMR);
      (*(*(v56 - 8) + 56))(v10, 1, 1, v56);
      v17 = 0;
      v18 = v26;
      goto LABEL_18;
    }

    v17 = *(v14 + 8 * v24);
    ++v18;
    if (v17)
    {
      v23 = v0;
      v18 = v24;
      goto LABEL_17;
    }
  }

LABEL_45:
  __break(1u);
}

void *specialized static ConversationMUXUtils.homeMember(withUserId:from:)(uint64_t a1, double a2)
{
  v3 = MUXContextMessage.userIdToHomeMember.getter();
  if (*(v3 + 16) && (v4 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v5 & 1) != 0))
  {
    v6 = *(*(v3 + 56) + 8 * v4);
    v7 = v6;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void specialized static ConversationMUXUtils.isOwner(_:)(void *a1, uint64_t *a2)
{
  v2 = [a1 attributes];
  if (v2)
  {
    v3 = v2;
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v5 = *(v4 + 16);
    if (v5)
    {
      v6 = 0;
      v7 = v4 + 32;
      while (v6 < *(v4 + 16))
      {
        outlined init with copy of Any(v7, v18);
        outlined init with copy of Any(v18, v17);
        v8 = swift_dynamicCast();
        if (v8)
        {
          v9 = v15;
        }

        else
        {
          v9 = 0;
        }

        v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        if (v8)
        {
          v12 = v16 == 0;
        }

        else
        {
          v12 = 1;
        }

        if (v12)
        {
          __swift_destroy_boxed_opaque_existential_1Tm(v18);
        }

        else
        {
          if (v9 == v10 && v16 == v11)
          {

            __swift_destroy_boxed_opaque_existential_1Tm(v18);
LABEL_22:

            return;
          }

          v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

          __swift_destroy_boxed_opaque_existential_1Tm(v18);
          if (v14)
          {
            goto LABEL_22;
          }
        }

        ++v6;
        v7 += 32;
        if (v5 == v6)
        {
          goto LABEL_20;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_20:
    }
  }
}

void specialized static ConversationMUXUtils.singleKnownUserInHome(muxContextMessage:)()
{
  v0 = type metadata accessor for UserID();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v49 = v48 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes6UserIDV3key_So16SAHomeMemberInfoC5valuetSgMd, &_s16SiriMessageTypes6UserIDV3key_So16SAHomeMemberInfoC5valuetSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v48 - v7;
  v9 = MUXContextMessage.userIdToHomeMember.getter();
  v57 = 0;
  v10 = 0;
  v12 = v9 + 64;
  v11 = *(v9 + 64);
  v51 = v9;
  v13 = 1 << *(v9 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & v11;
  v16 = (v13 + 63) >> 6;
  v48[2] = v1 + 16;
  v48[1] = v1 + 32;
  v60 = *MEMORY[0x1E69C7EF0];
  v50 = v1;
  v55 = v9 + 64;
  v56 = (v1 + 8);
  v53 = v0;
  v54 = v16;
  v52 = v5;
  v58 = v8;
  if ((v14 & v11) == 0)
  {
    goto LABEL_7;
  }

  while (1)
  {
LABEL_16:
    v20 = v5;
    v19 = v10;
LABEL_17:
    v22 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
    v23 = v22 | (v19 << 6);
    v25 = v50;
    v24 = v51;
    v26 = v49;
    (*(v50 + 16))(v49, *(v51 + 48) + *(v50 + 72) * v23, v0);
    v27 = *(*(v24 + 56) + 8 * v23);
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes6UserIDV3key_So16SAHomeMemberInfoC5valuetMd, &_s16SiriMessageTypes6UserIDV3key_So16SAHomeMemberInfoC5valuetMR);
    v29 = *(v28 + 48);
    v30 = v26;
    v5 = v20;
    (*(v25 + 32))(v20, v30, v0);
    *&v20[v29] = v27;
    (*(*(v28 - 8) + 56))(v20, 0, 1, v28);
    v31 = v27;
    v8 = v58;
LABEL_18:
    outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v5, v8, &_s16SiriMessageTypes6UserIDV3key_So16SAHomeMemberInfoC5valuetSgMd, &_s16SiriMessageTypes6UserIDV3key_So16SAHomeMemberInfoC5valuetSgMR);
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes6UserIDV3key_So16SAHomeMemberInfoC5valuetMd, &_s16SiriMessageTypes6UserIDV3key_So16SAHomeMemberInfoC5valuetMR);
    if ((*(*(v32 - 8) + 48))(v8, 1, v32) == 1)
    {

      return;
    }

    v33 = *&v8[*(v32 + 48)];
    v34 = [v33 attributes];
    if (!v34)
    {

      if (v57)
      {
        goto LABEL_46;
      }

      goto LABEL_40;
    }

    v35 = v34;
    v59 = v33;
    v36 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v37 = *(v36 + 16);
    if (v37)
    {
      break;
    }

LABEL_39:

    v8 = v58;
    if (v57)
    {
LABEL_46:

      (*v56)(v8, v0);
      return;
    }

LABEL_40:
    (*v56)(v8, v0);
    v57 = 1;
    v16 = v54;
    v12 = v55;
    if (!v15)
    {
      goto LABEL_7;
    }
  }

  v38 = 0;
  v39 = v36 + 32;
  while (1)
  {
    if (v38 >= *(v36 + 16))
    {
      __break(1u);
      goto LABEL_48;
    }

    outlined init with copy of Any(v39, v64);
    outlined init with copy of Any(v64, v63);
    v40 = swift_dynamicCast();
    v41 = v62;
    if (v40)
    {
      v42 = v61;
    }

    else
    {
      v42 = 0;
    }

    v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    if (v40)
    {
      v45 = v41 == 0;
    }

    else
    {
      v45 = 1;
    }

    if (v45)
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v64);

      goto LABEL_23;
    }

    if (v42 == v43 && v41 == v44)
    {
      break;
    }

    v47 = _stringCompareWithSmolCheck(_:_:expecting:)();

    __swift_destroy_boxed_opaque_existential_1Tm(v64);
    if (v47)
    {
      goto LABEL_6;
    }

LABEL_23:
    ++v38;
    v39 += 32;
    if (v37 == v38)
    {

      v5 = v52;
      v0 = v53;
      goto LABEL_39;
    }
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v64);
LABEL_6:

  v8 = v58;
  v0 = v53;
  (*v56)(v58, v53);
  v5 = v52;
  v16 = v54;
  v12 = v55;
  if (v15)
  {
    goto LABEL_16;
  }

LABEL_7:
  if (v16 <= v10 + 1)
  {
    v17 = v10 + 1;
  }

  else
  {
    v17 = v16;
  }

  v18 = v17 - 1;
  while (1)
  {
    v19 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v19 >= v16)
    {
      v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes6UserIDV3key_So16SAHomeMemberInfoC5valuetMd, &_s16SiriMessageTypes6UserIDV3key_So16SAHomeMemberInfoC5valuetMR);
      (*(*(v21 - 8) + 56))(v5, 1, 1, v21);
      v15 = 0;
      v10 = v18;
      goto LABEL_18;
    }

    v15 = *(v12 + 8 * v19);
    ++v10;
    if (v15)
    {
      v20 = v5;
      v10 = v19;
      goto LABEL_17;
    }
  }

LABEL_48:
  __break(1u);
}

void *specialized static ConversationMUXUtils.voiceIdentificationSignal(withRefId:requestType:isPersonalRequest:isServerFallback:voiceIdClassification:voiceIdOverridden:selectedUserId:)(uint64_t a1, uint64_t a2, uint64_t a3, int a4, char a5, uint64_t a6, int a7, int a8, uint64_t a9)
{
  v55 = a7;
  v54 = a6;
  v53 = a4;
  v51 = a1;
  v52 = a2;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v49[-v12];
  v14 = type metadata accessor for UUID();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v49[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = type metadata accessor for RequestType();
  v19 = *(v18 - 8);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = &v49[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a5)
  {
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    __swift_project_value_buffer(v23, static Logger.conversationBridge);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v24, v25))
    {
      goto LABEL_7;
    }

    v26 = swift_slowAlloc();
    *v26 = 0;
    v27 = "Not sending VoiceIdenfiticationSignal in case of server fallback";
LABEL_6:
    _os_log_impl(&dword_1DC659000, v24, v25, v27, v26, 2u);
    MEMORY[0x1E12A2F50](v26, -1, -1);
LABEL_7:

    return 0;
  }

  v50 = a8;
  (*(v19 + 104))(v22, *MEMORY[0x1E69D0548], v18, v20);
  lazy protocol witness table accessor for type UserID and conformance UserID(&lazy protocol witness table cache variable for type RequestType and conformance RequestType, MEMORY[0x1E69D0568], MEMORY[0x1E69D0578]);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v58 == v56 && v59 == v57)
  {
    (*(v19 + 8))(v22, v18);
  }

  else
  {
    v29 = _stringCompareWithSmolCheck(_:_:expecting:)();
    (*(v19 + 8))(v22, v18);

    if ((v29 & 1) == 0)
    {
      if (one-time initialization token for conversationBridge != -1)
      {
        swift_once();
      }

      v48 = type metadata accessor for Logger();
      __swift_project_value_buffer(v48, static Logger.conversationBridge);
      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.debug.getter();
      if (!os_log_type_enabled(v24, v25))
      {
        goto LABEL_7;
      }

      v26 = swift_slowAlloc();
      *v26 = 0;
      v27 = "Not sending VoiceIdentification since this is not a speech request";
      goto LABEL_6;
    }
  }

  v30 = [objc_allocWithZone(MEMORY[0x1E69C7A38]) init];
  UUID.init()();
  v31 = UUID.uuidString.getter();
  v33 = v32;
  (*(v15 + 8))(v17, v14);
  v34 = MEMORY[0x1E12A1410](v31, v33);

  [v30 setAceId_];

  v35 = v30;
  v36 = MEMORY[0x1E12A1410](v51, v52);
  [v35 setRefId_];

  v37 = v35;
  [v35 setRecordUserAudio_];
  v38 = ((v54 - 3) < 2) & ~v55;
  outlined init with copy of UserID?(a9, v13);
  v39 = type metadata accessor for UserID();
  v40 = *(v39 - 8);
  if ((*(v40 + 48))(v13, 1, v39) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v13, &_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
LABEL_17:
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v44 = type metadata accessor for Logger();
    __swift_project_value_buffer(v44, static Logger.conversationBridge);
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 67109376;
      *(v47 + 4) = v38;
      *(v47 + 8) = 1024;
      *(v47 + 10) = v50 & 1;
      _os_log_impl(&dword_1DC659000, v45, v46, "Not updating selectedSharedUserId in VoiceIdentificationSignal because either selectedUserId is nil or isConfidentEnough: %{BOOL}d, voiceIDOverridden: %{BOOL}d", v47, 0xEu);
      MEMORY[0x1E12A2F50](v47, -1, -1);
    }

    goto LABEL_26;
  }

  v41 = UserID.sharedUserId.getter();
  v43 = v42;
  (*(v40 + 8))(v13, v39);
  if (!v38 || (v50 & 1) != 0)
  {

    goto LABEL_17;
  }

  v45 = MEMORY[0x1E12A1410](v41, v43);

  [v37 setSelectedSharedUserId_];
LABEL_26:

  return v37;
}

uint64_t static ConversationMUXUtils.getUserIdForPrimaryUser(from:)(unint64_t a1, void *a2)
{
  if (a1 >> 62)
  {
    goto LABEL_39;
  }

  v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    return 0;
  }

LABEL_3:
  v3 = 0;
  v4 = a1 & 0xC000000000000001;
  v5 = a1 & 0xFFFFFFFFFFFFFF8;
  v29 = a1;
  v30 = a1 & 0xFFFFFFFFFFFFFF8;
  v6 = a1 + 32;
  v7 = &selRef_setMitigationSource_;
  v31 = a1 & 0xC000000000000001;
  v32 = v2;
  v33 = a1 + 32;
  while (1)
  {
    if (v4)
    {
      a1 = MEMORY[0x1E12A1FE0](v3, v29);
    }

    else
    {
      if (v3 >= *(v5 + 16))
      {
        goto LABEL_38;
      }

      a1 = *(v6 + 8 * v3);
    }

    v8 = a1;
    if (__OFADD__(v3++, 1))
    {
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      v26 = a1;
      v27 = a2;
      v28 = __CocoaSet.count.getter();
      a2 = v27;
      v2 = v28;
      a1 = v26;
      if (!v2)
      {
        return 0;
      }

      goto LABEL_3;
    }

    v10 = [a1 v7[32]];
    if (v10)
    {
      break;
    }

LABEL_5:
    if (v3 == v2)
    {
      return 0;
    }
  }

  v34 = v8;
  v11 = v10;
  v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v13 = *(v12 + 16);
  if (!v13)
  {

LABEL_31:
    v6 = v33;
    v7 = &selRef_setMitigationSource_;
    goto LABEL_5;
  }

  v14 = 0;
  v15 = v12 + 32;
  while (1)
  {
    if (v14 >= *(v12 + 16))
    {
      __break(1u);
      goto LABEL_37;
    }

    outlined init with copy of Any(v15, v38);
    outlined init with copy of Any(v38, v37);
    v16 = swift_dynamicCast();
    if (v16)
    {
      v17 = v35;
    }

    else
    {
      v17 = 0;
    }

    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    if (v16)
    {
      v20 = v36 == 0;
    }

    else
    {
      v20 = 1;
    }

    if (v20)
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v38);

      goto LABEL_14;
    }

    if (v17 == v18 && v36 == v19)
    {
      break;
    }

    v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

    a1 = __swift_destroy_boxed_opaque_existential_1Tm(v38);
    if (v22)
    {
      goto LABEL_34;
    }

LABEL_14:
    ++v14;
    v15 += 32;
    if (v13 == v14)
    {

      v4 = v31;
      v2 = v32;
      v5 = v30;
      goto LABEL_31;
    }
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v38);
LABEL_34:

  v23 = [v34 sharedUserId];

  if (!v23)
  {
    return 0;
  }

  v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v24;
}

uint64_t lazy protocol witness table accessor for type UserID and conformance UserID(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t specialized Dictionary.removeValue(forKey:)(uint64_t a1)
{
  v2 = v1;
  v3 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v1;
  v12 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    specialized _NativeDictionary.copy()();
    v7 = v12;
  }

  v8 = *(v7 + 48);
  v9 = type metadata accessor for UUID();
  (*(*(v9 - 8) + 8))(v8 + *(*(v9 - 8) + 72) * v5, v9);
  v10 = *(*(v7 + 56) + 16 * v5);
  specialized _NativeDictionary._delete(at:)(v5, v7);
  *v2 = v7;
  return v10;
}

uint64_t ConversationOutputSubmitter.__allocating_init(requestDispatcherServiceHelper:isMUXEnabled:muxContextMessage:messagePublisher:featureChecker:)(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, void *a5)
{
  v8 = a2;
  v10 = swift_allocObject();
  v11 = a5[3];
  v12 = a5[4];
  v13 = __swift_mutable_project_boxed_opaque_existential_1(a5, v11);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v16, v14);
  v18 = specialized ConversationOutputSubmitter.init(requestDispatcherServiceHelper:isMUXEnabled:muxContextMessage:messagePublisher:featureChecker:)(a1, v8, a3, a4, v16, v10, v11, v12);
  __swift_destroy_boxed_opaque_existential_1Tm(a5);
  return v18;
}

uint64_t ConversationOutputSubmitter.isMUXEnabled.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 72) = a1;
  return result;
}

void ConversationOutputSubmitter.muxContextMessage.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 80);
  *(v1 + 80) = a1;
}

uint64_t ConversationOutputSubmitter.selfReflectionAgent.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 88) = a1;
}

uint64_t ConversationOutputSubmitter.flowCommandCompletions.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 96) = a1;
}

uint64_t ConversationOutputSubmitter.plannerTimeout.setter(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 104) = a1;
  return result;
}

uint64_t ConversationOutputSubmitter.init(requestDispatcherServiceHelper:isMUXEnabled:muxContextMessage:messagePublisher:featureChecker:)(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, void *a5)
{
  v9 = a2;
  v11 = a5[3];
  v12 = a5[4];
  v13 = __swift_mutable_project_boxed_opaque_existential_1(a5, v11);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v16, v14);
  v18 = specialized ConversationOutputSubmitter.init(requestDispatcherServiceHelper:isMUXEnabled:muxContextMessage:messagePublisher:featureChecker:)(a1, v9, a3, a4, v16, v5, v11, v12);
  __swift_destroy_boxed_opaque_existential_1Tm(a5);
  return v18;
}

uint64_t ConversationOutputSubmitter.__allocating_init(requestDispatcherServiceHelper:isMUXEnabled:muxContextMessage:messagePublisher:selfReflection:featureChecker:)(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, uint64_t a5, void *a6)
{
  v10 = a2;
  v12 = swift_allocObject();
  v13 = a6[3];
  v14 = a6[4];
  v15 = __swift_mutable_project_boxed_opaque_existential_1(a6, v13);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v18, v16);
  v20 = specialized ConversationOutputSubmitter.init(requestDispatcherServiceHelper:isMUXEnabled:muxContextMessage:messagePublisher:selfReflection:featureChecker:)(a1, v10, a3, a4, a5, v18, v12, v13, v14);
  __swift_destroy_boxed_opaque_existential_1Tm(a6);
  return v20;
}

uint64_t ConversationOutputSubmitter.init(requestDispatcherServiceHelper:isMUXEnabled:muxContextMessage:messagePublisher:selfReflection:featureChecker:)(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, uint64_t a5, void *a6)
{
  v11 = a2;
  v13 = a6[3];
  v14 = a6[4];
  v15 = __swift_mutable_project_boxed_opaque_existential_1(a6, v13);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v18, v16);
  v20 = specialized ConversationOutputSubmitter.init(requestDispatcherServiceHelper:isMUXEnabled:muxContextMessage:messagePublisher:selfReflection:featureChecker:)(a1, v11, a3, a4, a5, v18, v6, v13, v14);
  __swift_destroy_boxed_opaque_existential_1Tm(a6);
  return v20;
}

void ConversationOutputSubmitter.handleMitigation(mitigationResult:executionOutput:requestId:requestIdOverride:contextUpdater:executionContextMatchingInfo:executionContextUpdateMetadata:assistantId:sessionId:invocationId:_:)(unsigned __int8 *a1, char *a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9, void *a10, void *a11, void *a12, void *a13, void *a14, void (*a15)(id, void), uint64_t a16)
{
  v17 = v16;
  v410 = a7;
  v406 = a6;
  v401 = a5;
  v418 = a4;
  v416 = a3;
  v375 = a2;
  v374 = a16;
  v373 = a15;
  v402 = a14;
  v403 = a13;
  v415 = a12;
  v419 = a11;
  v417 = a10;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = (&v361 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v23);
  v399 = &v361 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v361 - v26;
  updated = type metadata accessor for ContextUpdateScope();
  v404 = *(updated - 8);
  MEMORY[0x1EEE9AC00](updated);
  v390 = &v361 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v389 = &v361 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v388 = &v361 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5ParseO16DirectInvocationVSgMd, &_s11SiriKitFlow5ParseO16DirectInvocationVSgMR);
  MEMORY[0x1EEE9AC00](v33 - 8);
  v387 = &v361 - v34;
  v35 = type metadata accessor for BinaryDecodingOptions();
  MEMORY[0x1EEE9AC00](v35 - 8);
  v396 = &v361 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  v383 = &v361 - v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology010Com_Apple_A28_Product_Proto_PromptContextVSgMd, &_s12SiriOntology010Com_Apple_A28_Product_Proto_PromptContextVSgMR);
  MEMORY[0x1EEE9AC00](v39 - 8);
  v397 = &v361 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v41);
  v386 = &v361 - v42;
  v384 = type metadata accessor for Com_Apple_Siri_Product_Proto_PromptContext();
  v394 = *(v384 - 8);
  MEMORY[0x1EEE9AC00](v384);
  v398 = &v361 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v44);
  v395 = &v361 - v45;
  MEMORY[0x1EEE9AC00](v46);
  v372 = &v361 - v47;
  MEMORY[0x1EEE9AC00](v48);
  v376 = &v361 - v49;
  v424 = type metadata accessor for RequestSummary.ExecutionSource();
  v425 = *(v424 - 8);
  MEMORY[0x1EEE9AC00](v424);
  v413 = (&v361 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v51);
  v414 = &v361 - v52;
  MEMORY[0x1EEE9AC00](v53);
  v423 = &v361 - v54;
  MEMORY[0x1EEE9AC00](v55);
  v422 = &v361 - v56;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMd, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMR);
  MEMORY[0x1EEE9AC00](v57 - 8);
  v405 = &v361 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v59);
  v408 = &v361 - v60;
  MEMORY[0x1EEE9AC00](v61);
  v421 = (&v361 - v62);
  MEMORY[0x1EEE9AC00](v63);
  v420 = &v361 - v64;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v66 = *(v65 - 8);
  v67 = *(v66 + 8);
  v68 = MEMORY[0x1EEE9AC00](v65 - 8);
  v70 = &v361 - v69;
  LODWORD(v71) = *a1;
  v72 = (*(*v17 + 200))(v68);
  if (!v72)
  {
    return;
  }

  v407 = v27;
  v393 = v22;
  v371 = v72;
  v411 = a8;
  v412 = a9;
  if (one-time initialization token for conversationBridge != -1)
  {
LABEL_119:
    swift_once();
  }

  v400 = type metadata accessor for Logger();
  v392 = __swift_project_value_buffer(v400, static Logger.conversationBridge);
  v73 = Logger.logObject.getter();
  v74 = static os_log_type_t.debug.getter();
  v75 = os_log_type_enabled(v73, v74);
  v409 = v17;
  if (v75)
  {
    v76 = swift_slowAlloc();
    v77 = swift_slowAlloc();
    *&v433 = v77;
    *v76 = 136315394;
    *(v76 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD0000000000000BFLL, 0x80000001DCA80160, &v433);
    *(v76 + 12) = 2080;
    LOBYTE(v431) = v71;
    v78 = SelfReflectionAgentDecision.description.getter();
    v80 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v78, v79, &v433);

    *(v76 + 14) = v80;
    _os_log_impl(&dword_1DC659000, v73, v74, "ConversationOutputSubmitter.%s self reflection decision: <%s>", v76, 0x16u);
    swift_arrayDestroy();
    v81 = v77;
    v17 = v409;
    MEMORY[0x1E12A2F50](v81, -1, -1);
    MEMORY[0x1E12A2F50](v76, -1, -1);
  }

  v82 = v412;
  if (v71 <= 3)
  {
    if (v71 == 2)
    {
LABEL_65:

      goto LABEL_67;
    }

    if (v71 == 3)
    {
LABEL_9:
      if (*&v375[OBJC_IVAR___SKRExecutionOutput_command])
      {
        v83 = [objc_allocWithZone(MEMORY[0x1E69C7788]) init];
        v373(v83, 0);
      }

      else
      {
        v373(0, 0);
      }

      goto LABEL_65;
    }

LABEL_13:
    outlined init with copy of ReferenceResolutionClientProtocol?(v410, &v433, &_s14SiriKitRuntime15ContextUpdating_pSgMd, &_s14SiriKitRuntime15ContextUpdating_pSgMR);
    outlined init with copy of ReferenceResolutionClientProtocol?(v415, v70, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v84 = (v66[80] + 152) & ~v66[80];
    v85 = swift_allocObject();
    v86 = v82;
    v87 = v374;
    *(v85 + 16) = v373;
    *(v85 + 24) = v87;
    v88 = v375;
    *(v85 + 32) = v375;
    *(v85 + 40) = v17;
    v89 = v418;
    *(v85 + 48) = v416;
    *(v85 + 56) = v89;
    v90 = v406;
    *(v85 + 64) = v401;
    *(v85 + 72) = v90;
    v91 = v434;
    *(v85 + 80) = v433;
    *(v85 + 96) = v91;
    v92 = v411;
    *(v85 + 112) = v435;
    *(v85 + 120) = v92;
    v93 = v417;
    *(v85 + 128) = v86;
    *(v85 + 136) = v93;
    *(v85 + 144) = v419;
    outlined init with take of UUID?(v70, v85 + v84);
    v94 = (v85 + (&v67[v84 + 7] & 0xFFFFFFFFFFFFFFF8));
    v95 = v402;
    *v94 = v403;
    v94[1] = v95;

    v96 = v88;

    v97 = v92;

    SelfReflectionAgent.createAskToRepeatAction(revealSpeech:_:)(v71 & 1, partial apply for closure #1 in ConversationOutputSubmitter.handleMitigation(mitigationResult:executionOutput:requestId:requestIdOverride:contextUpdater:executionContextMatchingInfo:executionContextUpdateMetadata:assistantId:sessionId:invocationId:_:), v85);

    return;
  }

  if (v71 != 4)
  {
    if (v71 != 5)
    {
      if (v71 == 6)
      {
        goto LABEL_9;
      }

      goto LABEL_13;
    }

    v215 = v412;
    outlined init with copy of ReferenceResolutionClientProtocol?(v410, &v431, &_s14SiriKitRuntime15ContextUpdating_pSgMd, &_s14SiriKitRuntime15ContextUpdating_pSgMR);
    if (v432)
    {
      outlined init with take of ReferenceResolutionClientProtocol(&v431, &v433);
      v216 = v375;
      if (v215)
      {
        v217 = *&v375[OBJC_IVAR___SKRExecutionOutput_contextUpdate];
        if (v217)
        {
          v218 = *(*v17 + 152);

          v219 = v217;
          v220 = v218();
          v221 = ContextUpdateScope.toExecutionContextUpdateScope(isMUXEnabled:)(v220 & 1);
          v222 = *(&v434 + 1);
          v223 = v435;
          __swift_project_boxed_opaque_existential_1(&v433, *(&v434 + 1));
          (*(v223 + 1))(v219, v215, v221, v222, v223);
        }

        __swift_destroy_boxed_opaque_existential_1Tm(&v433);
        goto LABEL_75;
      }

      __swift_destroy_boxed_opaque_existential_1Tm(&v433);
    }

    else
    {
      outlined destroy of ReferenceResolutionClientProtocol?(&v431, &_s14SiriKitRuntime15ContextUpdating_pSgMd, &_s14SiriKitRuntime15ContextUpdating_pSgMR);
      v216 = v375;
    }

    v225 = Logger.logObject.getter();
    v226 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v225, v226))
    {
      v227 = swift_slowAlloc();
      *v227 = 0;
      _os_log_impl(&dword_1DC659000, v225, v226, "Not applying any context but just submitting ExecutionOutput since ContextUpdater or metadata or both are nil", v227, 2u);
      MEMORY[0x1E12A2F50](v227, -1, -1);
    }

LABEL_75:
    ConversationOutputSubmitter.sendOutputMessagesIfNecessary(output:requestId:commandExecutionInfo:assistantId:sessionId:invocationId:)(v216, v416, v418, v411, v417, v419, v415, v403, v402);
    v228 = *(v216 + OBJC_IVAR___SKRExecutionOutput_command);
    if (v215)
    {
      v229 = OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_currentUserId;
      v230 = type metadata accessor for UserID();
      v231 = *(v230 - 8);
      v232 = v215 + v229;
      v233 = v399;
      (*(v231 + 16))(v399, v232, v230);
      (*(v231 + 56))(v233, 0, 1, v230);
      v234 = *(v215 + OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_meetsUserSessionThreshold);
      v235 = *(v215 + OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_meetsPersonalRequestThreshold);
    }

    else
    {
      v236 = type metadata accessor for UserID();
      v233 = v399;
      (*(*(v236 - 8) + 56))(v399, 1, 1, v236);
      v235 = 0;
      v234 = 0;
    }

    v423 = 0;
    BYTE1(v359) = v235;
    LOBYTE(v359) = v234;
    (*(*v17 + 328))(v228, v416, v418, v401, v406, v411, v417, v419, v415, v233, v359, v373, v374);
    outlined destroy of ReferenceResolutionClientProtocol?(v233, &_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
    SelfReflectionAgent.createRevealRecognizedSpeech()();
    v422 = v237;
    v238 = v216 + OBJC_IVAR___SKRExecutionOutput_executionRequestId;
    v240 = *(v216 + OBJC_IVAR___SKRExecutionOutput_executionRequestId);
    v239 = *(v238 + 8);
    v241 = type metadata accessor for FlowOutputMessage.InAppResponse();
    v242 = v408;
    (*(*(v241 - 8) + 56))(v408, 1, 1, v241);
    v243 = v425;
    v244 = v414;
    v245 = v424;
    (*(v425 + 13))(v414, *MEMORY[0x1E69D0678], v424);
    v246 = *(v243 + 2);
    v247 = v413;
    v246(v413, v244, v245);
    v248 = v242;
    v249 = v405;
    outlined init with copy of ReferenceResolutionClientProtocol?(v248, v405, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMd, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMR);
    v421 = type metadata accessor for ExecutionOutput(0);
    v250 = objc_allocWithZone(v421);
    v251 = &v250[OBJC_IVAR___SKRExecutionOutput_executionRequestId];
    *v251 = v240;
    *(v251 + 1) = v239;
    v252 = &v250[OBJC_IVAR___SKRExecutionOutput_fullPrint];
    *v252 = 0;
    *(v252 + 1) = 0;
    v253 = &v250[OBJC_IVAR___SKRExecutionOutput_fullSpeak];
    *v253 = 0;
    *(v253 + 1) = 0;
    v254 = &v250[OBJC_IVAR___SKRExecutionOutput_redactedFullPrint];
    *v254 = 0;
    *(v254 + 1) = 0;
    v255 = &v250[OBJC_IVAR___SKRExecutionOutput_redactedFullSpeak];
    *v255 = 0;
    *(v255 + 1) = 0;
    v246(&v250[OBJC_IVAR___SKRExecutionOutput_executionSource], v247, v245);
    v420 = v250;
    v256 = v249;
    v257 = v422;
    outlined init with copy of ReferenceResolutionClientProtocol?(v256, &v250[OBJC_IVAR___SKRExecutionOutput_inAppResponse], &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMd, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMR);
    objc_opt_self();
    v258 = swift_dynamicCastObjCClass();
    v259 = one-time initialization token for executor;
    v260 = v257;
    v261 = v260;
    if (!v258)
    {

      if (v259 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v400, static Logger.executor);
      v276 = v261;
      v277 = Logger.logObject.getter();
      v278 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v277, v278))
      {
        v279 = swift_slowAlloc();
        v280 = swift_slowAlloc();
        v281 = v261;
        v282 = swift_slowAlloc();
        *&v433 = v282;
        *v279 = 136315394;
        *(v279 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000085, 0x80000001DCA7C240, &v433);
        *(v279 + 12) = 2112;
        *(v279 + 14) = v276;
        *v280 = v257;
        v283 = v276;
        _os_log_impl(&dword_1DC659000, v277, v278, "ExecutionOutput: %s: converting non-context ACE command=%@ to ExecutionOutput", v279, 0x16u);
        outlined destroy of ReferenceResolutionClientProtocol?(v280, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        MEMORY[0x1E12A2F50](v280, -1, -1);
        __swift_destroy_boxed_opaque_existential_1Tm(v282);
        v284 = v282;
        v261 = v281;
        MEMORY[0x1E12A2F50](v284, -1, -1);
        MEMORY[0x1E12A2F50](v279, -1, -1);
      }

      v285 = v412;
      v286 = v424;
      v287 = v393;
      v288 = 0x1FB2FA000;
      v289 = v420;
      *&v420[OBJC_IVAR___SKRExecutionOutput_command] = v257;
      *&v289[OBJC_IVAR___SKRExecutionOutput_contextUpdate] = 0;
      v290 = v276;
      v291 = v421;
LABEL_96:
      v430.receiver = v289;
      v430.super_class = v291;
      v315 = objc_msgSendSuper2(&v430, v288[390]);
      outlined destroy of ReferenceResolutionClientProtocol?(v405, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMd, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMR);
      v316 = *(v425 + 1);
      v316(v413, v286);

      v316(v414, v286);
      outlined destroy of ReferenceResolutionClientProtocol?(v408, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMd, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMR);
      outlined init with copy of ReferenceResolutionClientProtocol?(v410, &v431, &_s14SiriKitRuntime15ContextUpdating_pSgMd, &_s14SiriKitRuntime15ContextUpdating_pSgMR);
      v317 = v411;
      if (v432)
      {
        outlined init with take of ReferenceResolutionClientProtocol(&v431, &v433);
        v318 = v409;
        if (v285)
        {
          v319 = *&v315[OBJC_IVAR___SKRExecutionOutput_contextUpdate];
          if (v319)
          {
            v407 = v261;
            v320 = *(*v409 + 152);

            v321 = v319;
            v322 = v320();
            v323 = ContextUpdateScope.toExecutionContextUpdateScope(isMUXEnabled:)(v322 & 1);
            v324 = *(&v434 + 1);
            v325 = v435;
            __swift_project_boxed_opaque_existential_1(&v433, *(&v434 + 1));
            v326 = v423;
            (*(v325 + 1))(v321, v285, v323, v324, v325);
            if (v326)
            {

              v327 = v326;
              v328 = Logger.logObject.getter();
              v329 = static os_log_type_t.error.getter();

              if (os_log_type_enabled(v328, v329))
              {
                v330 = swift_slowAlloc();
                v331 = swift_slowAlloc();
                *&v431 = v331;
                *v330 = 136315138;
                v429 = v326;
                v332 = v326;
                __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
                v333 = String.init<A>(describing:)();
                v335 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v333, v334, &v431);

                *(v330 + 4) = v335;
                _os_log_impl(&dword_1DC659000, v328, v329, "Error while applying context: %s", v330, 0xCu);
                __swift_destroy_boxed_opaque_existential_1Tm(v331);
                MEMORY[0x1E12A2F50](v331, -1, -1);
                MEMORY[0x1E12A2F50](v330, -1, -1);
              }

              __swift_destroy_boxed_opaque_existential_1Tm(&v433);
              return;
            }

            v317 = v411;
            v318 = v409;
            v261 = v407;
          }

          __swift_destroy_boxed_opaque_existential_1Tm(&v433);
LABEL_112:
          ConversationOutputSubmitter.sendOutputMessagesIfNecessary(output:requestId:commandExecutionInfo:assistantId:sessionId:invocationId:)(v315, v416, v418, v317, v417, v419, v415, v403, v402);
          v351 = *&v315[OBJC_IVAR___SKRExecutionOutput_command];
          if (v285)
          {
            v352 = OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_currentUserId;
            v353 = type metadata accessor for UserID();
            v354 = *(v353 - 8);
            (*(v354 + 16))(v287, v285 + v352, v353);
            (*(v354 + 56))(v287, 0, 1, v353);
            v355 = *(v285 + OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_meetsUserSessionThreshold);
            v356 = *(v285 + OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_meetsPersonalRequestThreshold);
          }

          else
          {
            v357 = type metadata accessor for UserID();
            (*(*(v357 - 8) + 56))(v287, 1, 1, v357);
            v356 = 0;
            v355 = 0;
          }

          BYTE1(v360) = v356;
          LOBYTE(v360) = v355;
          (*(*v318 + 328))(v351, v416, v418, v401, v406, v317, v417, v419, v415, v287, v360, destructiveProjectEnumData for AceServiceInvokerImpl.AceSubmitOptions, 0);

          outlined destroy of ReferenceResolutionClientProtocol?(v287, &_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);

          return;
        }

        __swift_destroy_boxed_opaque_existential_1Tm(&v433);
      }

      else
      {
        outlined destroy of ReferenceResolutionClientProtocol?(&v431, &_s14SiriKitRuntime15ContextUpdating_pSgMd, &_s14SiriKitRuntime15ContextUpdating_pSgMR);
        v318 = v409;
      }

      v336 = Logger.logObject.getter();
      v337 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v336, v337))
      {
        v338 = swift_slowAlloc();
        *v338 = 0;
        _os_log_impl(&dword_1DC659000, v336, v337, "Not applying any context but just submitting ExecutionOutput since ContextUpdater or metadata or both are nil", v338, 2u);
        MEMORY[0x1E12A2F50](v338, -1, -1);
      }

      goto LABEL_112;
    }

    v422 = v258;
    v262 = v260;
    v263 = v260;

    if (v259 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v400, static Logger.executor);
    v264 = v263;
    v265 = Logger.logObject.getter();
    v266 = static os_log_type_t.debug.getter();

    v267 = os_log_type_enabled(v265, v266);
    v268 = v423;
    v269 = v397;
    v407 = v262;
    if (v267)
    {
      v270 = swift_slowAlloc();
      v271 = swift_slowAlloc();
      v272 = swift_slowAlloc();
      *&v433 = v272;
      *v270 = 136315394;
      *(v270 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000085, 0x80000001DCA7C240, &v433);
      *(v270 + 12) = 2112;
      v273 = v422;
      *(v270 + 14) = v422;
      *v271 = v273;
      v274 = v264;
      _os_log_impl(&dword_1DC659000, v265, v266, "ExecutionOutput: %s: converting SARDNativeFlowContextUpdate=%@ to ExecutionOutput", v270, 0x16u);
      outlined destroy of ReferenceResolutionClientProtocol?(v271, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x1E12A2F50](v271, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v272);
      MEMORY[0x1E12A2F50](v272, -1, -1);
      MEMORY[0x1E12A2F50](v270, -1, -1);

      v275 = v398;
    }

    else
    {

      v275 = v398;
      v273 = v422;
    }

    v292 = [v273 promptContextProto];
    if (v292)
    {
      v293 = v292;
      v294 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v296 = v295;

      v435 = 0;
      v433 = 0u;
      v434 = 0u;
      outlined copy of Data._Representation(v294, v296);
      BinaryDecodingOptions.init()();
      lazy protocol witness table accessor for type Com_Apple_Siri_Product_Proto_PromptContext and conformance Com_Apple_Siri_Product_Proto_PromptContext(&lazy protocol witness table cache variable for type Com_Apple_Siri_Product_Proto_PromptContext and conformance Com_Apple_Siri_Product_Proto_PromptContext, MEMORY[0x1E69D1500], MEMORY[0x1E69D14F8]);
      v297 = v384;
      Message.init(serializedData:extensions:partial:options:)();
      if (!v268)
      {
        v423 = 0;
        v339 = v394;
        (*(v394 + 56))(v269, 0, 1, v297);
        v340 = v395;
        (*(v339 + 32))(v395, v269, v297);
        (*(v339 + 16))(v275, v340, v297);
        v341 = v297;
        v342 = Logger.logObject.getter();
        v343 = v275;
        v344 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v342, v344))
        {
          v345 = swift_slowAlloc();
          v400 = swift_slowAlloc();
          *&v433 = v400;
          *v345 = 136315394;
          *(v345 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000085, 0x80000001DCA7C240, &v433);
          *(v345 + 12) = 2080;
          v346 = v341;
          v347 = Message.textFormatString()();
          LODWORD(v399) = v344;
          v348 = *(v339 + 8);
          v348(v343, v341);
          v349 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v347._countAndFlagsBits, v347._object, &v433);

          *(v345 + 14) = v349;
          _os_log_impl(&dword_1DC659000, v342, v399, "ExecutionOutput: %s: NFCU has prompt context %s", v345, 0x16u);
          v350 = v400;
          swift_arrayDestroy();
          MEMORY[0x1E12A2F50](v350, -1, -1);
          MEMORY[0x1E12A2F50](v345, -1, -1);

          outlined consume of Data._Representation(v294, v296);
          v348(v395, v346);
        }

        else
        {

          outlined consume of Data._Representation(v294, v296);
          v358 = *(v339 + 8);
          v358(v275, v341);
          v358(v395, v341);
        }

LABEL_95:
        v302 = type metadata accessor for Parse.DirectInvocation();
        v303 = v387;
        (*(*(v302 - 8) + 56))(v387, 1, 1, v302);
        v304 = type metadata accessor for PommesContext();
        v305 = v388;
        (*(*(v304 - 8) + 56))(v388, 1, 1, v304);
        v306 = v404;
        v307 = v390;
        v308 = updated;
        (*(v404 + 13))(v390, *MEMORY[0x1E69CFF08], updated);
        v309 = type metadata accessor for ExecutionContextUpdate(0);
        v310 = objc_allocWithZone(v309);
        v311 = v389;
        outlined init with copy of ReferenceResolutionClientProtocol?(v305, v389, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
        v312 = v422;
        specialized static ExecutionContextUpdate.synchronizePromptContexts(pommesContext:nativeFlowContextCommand:)(v311, v422);
        *&v310[OBJC_IVAR___SKRExecutionContextUpdate_provideContextCommand] = 0;
        *&v310[OBJC_IVAR___SKRExecutionContextUpdate_nativeFlowContextCommand] = v312;
        *&v310[OBJC_IVAR___SKRExecutionContextUpdate_nluSystemDialogActs] = 0;
        *&v310[OBJC_IVAR___SKRExecutionContextUpdate_nluActiveTasks] = 0;
        *&v310[OBJC_IVAR___SKRExecutionContextUpdate_nluCompletedTasks] = 0;
        outlined init with copy of ReferenceResolutionClientProtocol?(v303, &v310[OBJC_IVAR___SKRExecutionContextUpdate_undoDirectInvocation], &_s11SiriKitFlow5ParseO16DirectInvocationVSgMd, &_s11SiriKitFlow5ParseO16DirectInvocationVSgMR);
        *&v310[OBJC_IVAR___SKRExecutionContextUpdate_rrEntities] = 0;
        outlined init with copy of ReferenceResolutionClientProtocol?(v311, &v310[OBJC_IVAR___SKRExecutionContextUpdate_pommesContext], &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
        v306[2](&v310[OBJC_IVAR___SKRExecutionContextUpdate_contextUpdateScope], v307, v308);
        v313 = &v310[OBJC_IVAR___SKRExecutionContextUpdate_restoreSessionForRequestId];
        *v313 = 0;
        v313[1] = 0;
        v310[OBJC_IVAR___SKRExecutionContextUpdate_executedOnRemoteDevice] = 0;
        v428.receiver = v310;
        v428.super_class = v309;
        v288 = off_1E8646000;
        v314 = objc_msgSendSuper2(&v428, sel_init);
        (v306[1])(v307, v308);
        outlined destroy of ReferenceResolutionClientProtocol?(v305, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
        outlined destroy of ReferenceResolutionClientProtocol?(v303, &_s11SiriKitFlow5ParseO16DirectInvocationVSgMd, &_s11SiriKitFlow5ParseO16DirectInvocationVSgMR);
        outlined destroy of ReferenceResolutionClientProtocol?(v311, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
        v289 = v420;
        *&v420[OBJC_IVAR___SKRExecutionOutput_contextUpdate] = v314;
        *&v289[OBJC_IVAR___SKRExecutionOutput_command] = 0;
        v286 = v424;
        v287 = v393;
        v261 = v407;
        v291 = v421;
        v285 = v412;
        goto LABEL_96;
      }

      outlined consume of Data._Representation(v294, v296);
      (*(v394 + 56))(v269, 1, 1, v297);
      outlined destroy of ReferenceResolutionClientProtocol?(v269, &_s12SiriOntology010Com_Apple_A28_Product_Proto_PromptContextVSgMd, &_s12SiriOntology010Com_Apple_A28_Product_Proto_PromptContextVSgMR);
      v268 = 0;
    }

    v423 = v268;
    v298 = Logger.logObject.getter();
    v299 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v298, v299))
    {
      v300 = swift_slowAlloc();
      v301 = swift_slowAlloc();
      *&v433 = v301;
      *v300 = 136315138;
      *(v300 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000085, 0x80000001DCA7C240, &v433);
      _os_log_impl(&dword_1DC659000, v298, v299, "ExecutionOutput: %s: NFCU has no (or invalid) prompt context", v300, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v301);
      MEMORY[0x1E12A2F50](v301, -1, -1);
      MEMORY[0x1E12A2F50](v300, -1, -1);
    }

    goto LABEL_95;
  }

  specialized Logger.debugF(_:_:_:_:)("SiriKitRuntime/ConversationOutputSubmitter.swift", 48, 2, "handleMitigation(mitigationResult:executionOutput:requestId:requestIdOverride:contextUpdater:executionContextMatchingInfo:executionContextUpdateMetadata:assistantId:sessionId:invocationId:_:)", 191, 2);
  v98 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v70 = SelfReflectionAgent.createCloseAssitantAction(closeAssistantReason:)(v98, v99);

  v100 = SelfReflectionAgent.createCancelRequestAction()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  inited = swift_initStackObject();
  v102 = 0;
  v103 = 0;
  v408 = 0;
  *(&v104 + 1) = 5;
  *(inited + 32) = v70;
  v370 = inited + 32;
  v105 = &v375[OBJC_IVAR___SKRExecutionOutput_executionRequestId];
  v399 = (inited & 0xC000000000000001);
  v368 = inited & 0xFFFFFFFFFFFFFF8;
  v106 = MEMORY[0x1E69D0678];
  *(inited + 16) = xmmword_1DCA6ACA0;
  v107 = v425;
  v398 = v425 + 104;
  v397 = v425 + 16;
  v382 = inited;
  *(inited + 40) = v100;
  v385 = "mmand8@NSError16";
  v369 = (v394 + 56);
  v109 = *v105;
  v108 = *(v105 + 1);
  v396 = v109;
  v395 = v108;
  v366 = (v394 + 32);
  v365 = (v394 + 16);
  v364 = (v394 + 8);
  LODWORD(v394) = *v106;
  v381 = v404 + 104;
  v380 = (v404 + 16);
  v379 = (v404 + 8);
  *&v104 = 136315394;
  v377 = v104;
  *&v104 = 136315138;
  v367 = v104;
  v378 = *MEMORY[0x1E69CFF08];
  v393 = (v107 + 8);
  do
  {
    LODWORD(v414) = v102;
    if (v399)
    {
      v115 = MEMORY[0x1E12A1FE0](v103, v382);
    }

    else
    {
      if (v103 >= *(v368 + 16))
      {
        __break(1u);
        goto LABEL_119;
      }

      v115 = *(v370 + 8 * v103);
    }

    v116 = v115;
    v117 = type metadata accessor for FlowOutputMessage.InAppResponse();
    v118 = v420;
    (*(*(v117 - 8) + 56))(v420, 1, 1, v117);
    v119 = v422;
    v120 = v424;
    (*v398)(v422, v394, v424);
    v121 = *v397;
    v122 = v423;
    (*v397)(v423, v119, v120);
    v123 = v421;
    outlined init with copy of ReferenceResolutionClientProtocol?(v118, v421, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMd, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMR);
    v413 = type metadata accessor for ExecutionOutput(0);
    v124 = objc_allocWithZone(v413);
    v125 = &v124[OBJC_IVAR___SKRExecutionOutput_executionRequestId];
    v126 = v395;
    *v125 = v396;
    *(v125 + 1) = v126;
    v127 = &v124[OBJC_IVAR___SKRExecutionOutput_fullPrint];
    *v127 = 0;
    *(v127 + 1) = 0;
    v128 = &v124[OBJC_IVAR___SKRExecutionOutput_fullSpeak];
    *v128 = 0;
    *(v128 + 1) = 0;
    v129 = &v124[OBJC_IVAR___SKRExecutionOutput_redactedFullPrint];
    *v129 = 0;
    *(v129 + 1) = 0;
    v130 = &v124[OBJC_IVAR___SKRExecutionOutput_redactedFullSpeak];
    *v130 = 0;
    *(v130 + 1) = 0;
    v121(&v124[OBJC_IVAR___SKRExecutionOutput_executionSource], v122, v120);
    outlined init with copy of ReferenceResolutionClientProtocol?(v123, &v124[OBJC_IVAR___SKRExecutionOutput_inAppResponse], &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMd, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMR);
    objc_opt_self();
    v131 = swift_dynamicCastObjCClass();
    v132 = one-time initialization token for executor;
    v133 = v116;
    v134 = v133;
    v425 = v133;
    if (v131)
    {
      v135 = v133;

      if (v132 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v400, static Logger.executor);
      v136 = v135;
      v137 = Logger.logObject.getter();
      v138 = static os_log_type_t.debug.getter();

      v139 = os_log_type_enabled(v137, v138);
      v405 = v124;
      if (v139)
      {
        v140 = swift_slowAlloc();
        v141 = swift_slowAlloc();
        v142 = swift_slowAlloc();
        *&v433 = v142;
        *v140 = v377;
        *(v140 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000085, v385 | 0x8000000000000000, &v433);
        *(v140 + 12) = 2112;
        *(v140 + 14) = v131;
        *v141 = v131;
        v143 = v136;
        _os_log_impl(&dword_1DC659000, v137, v138, "ExecutionOutput: %s: converting SARDNativeFlowContextUpdate=%@ to ExecutionOutput", v140, 0x16u);
        outlined destroy of ReferenceResolutionClientProtocol?(v141, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        MEMORY[0x1E12A2F50](v141, -1, -1);
        __swift_destroy_boxed_opaque_existential_1Tm(v142);
        MEMORY[0x1E12A2F50](v142, -1, -1);
        MEMORY[0x1E12A2F50](v140, -1, -1);
      }

      v404 = v131;
      v144 = [v131 promptContextProto];
      v145 = v386;
      if (v144)
      {
        v146 = v144;
        v147 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v149 = v148;

        v435 = 0;
        v433 = 0u;
        v434 = 0u;
        outlined copy of Data._Representation(v147, v149);
        BinaryDecodingOptions.init()();
        lazy protocol witness table accessor for type Com_Apple_Siri_Product_Proto_PromptContext and conformance Com_Apple_Siri_Product_Proto_PromptContext(&lazy protocol witness table cache variable for type Com_Apple_Siri_Product_Proto_PromptContext and conformance Com_Apple_Siri_Product_Proto_PromptContext, MEMORY[0x1E69D1500], MEMORY[0x1E69D14F8]);
        v150 = v384;
        v151 = v408;
        Message.init(serializedData:extensions:partial:options:)();
        if (!v151)
        {
          v408 = 0;
          (*v369)(v145, 0, 1, v150);
          v201 = v376;
          (*v366)(v376, v145, v150);
          v202 = v372;
          (*v365)(v372, v201, v150);
          v203 = Logger.logObject.getter();
          v204 = static os_log_type_t.debug.getter();
          v205 = v150;
          if (os_log_type_enabled(v203, v204))
          {
            v206 = swift_slowAlloc();
            v363 = swift_slowAlloc();
            *&v433 = v363;
            *v206 = v377;
            *(v206 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000085, v385 | 0x8000000000000000, &v433);
            *(v206 + 12) = 2080;
            v207 = v205;
            v208 = Message.textFormatString()();
            v209 = *v364;
            v362 = v203;
            v209(v202, v205);
            v210 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v208._countAndFlagsBits, v208._object, &v433);

            *(v206 + 14) = v210;
            v211 = v362;
            _os_log_impl(&dword_1DC659000, v362, v204, "ExecutionOutput: %s: NFCU has prompt context %s", v206, 0x16u);
            v212 = v363;
            swift_arrayDestroy();
            MEMORY[0x1E12A2F50](v212, -1, -1);
            MEMORY[0x1E12A2F50](v206, -1, -1);

            outlined consume of Data._Representation(v147, v149);
            v209(v376, v207);
          }

          else
          {

            outlined consume of Data._Representation(v147, v149);
            v213 = v150;
            v214 = *v364;
            (*v364)(v202, v213);
            v214(v201, v213);
          }

LABEL_35:
          v156 = type metadata accessor for Parse.DirectInvocation();
          v157 = v387;
          (*(*(v156 - 8) + 56))(v387, 1, 1, v156);
          v158 = type metadata accessor for PommesContext();
          v159 = v388;
          (*(*(v158 - 8) + 56))(v388, 1, 1, v158);
          v160 = v390;
          v161 = updated;
          (*v381)(v390, v378, updated);
          v162 = type metadata accessor for ExecutionContextUpdate(0);
          v163 = objc_allocWithZone(v162);
          v164 = v389;
          outlined init with copy of ReferenceResolutionClientProtocol?(v159, v389, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
          v165 = v404;
          specialized static ExecutionContextUpdate.synchronizePromptContexts(pommesContext:nativeFlowContextCommand:)(v164, v404);
          *&v163[OBJC_IVAR___SKRExecutionContextUpdate_provideContextCommand] = 0;
          *&v163[OBJC_IVAR___SKRExecutionContextUpdate_nativeFlowContextCommand] = v165;
          *&v163[OBJC_IVAR___SKRExecutionContextUpdate_nluSystemDialogActs] = 0;
          *&v163[OBJC_IVAR___SKRExecutionContextUpdate_nluActiveTasks] = 0;
          *&v163[OBJC_IVAR___SKRExecutionContextUpdate_nluCompletedTasks] = 0;
          outlined init with copy of ReferenceResolutionClientProtocol?(v157, &v163[OBJC_IVAR___SKRExecutionContextUpdate_undoDirectInvocation], &_s11SiriKitFlow5ParseO16DirectInvocationVSgMd, &_s11SiriKitFlow5ParseO16DirectInvocationVSgMR);
          *&v163[OBJC_IVAR___SKRExecutionContextUpdate_rrEntities] = 0;
          outlined init with copy of ReferenceResolutionClientProtocol?(v164, &v163[OBJC_IVAR___SKRExecutionContextUpdate_pommesContext], &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
          (*v380)(&v163[OBJC_IVAR___SKRExecutionContextUpdate_contextUpdateScope], v160, v161);
          v166 = &v163[OBJC_IVAR___SKRExecutionContextUpdate_restoreSessionForRequestId];
          *v166 = 0;
          v166[1] = 0;
          v163[OBJC_IVAR___SKRExecutionContextUpdate_executedOnRemoteDevice] = 0;
          v426.receiver = v163;
          v426.super_class = v162;
          v167 = objc_msgSendSuper2(&v426, sel_init);
          (*v379)(v160, v161);
          v168 = v159;
          v169 = off_1E8646000;
          outlined destroy of ReferenceResolutionClientProtocol?(v168, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
          outlined destroy of ReferenceResolutionClientProtocol?(v157, &_s11SiriKitFlow5ParseO16DirectInvocationVSgMd, &_s11SiriKitFlow5ParseO16DirectInvocationVSgMR);
          outlined destroy of ReferenceResolutionClientProtocol?(v164, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
          v124 = v405;
          *&v405[OBJC_IVAR___SKRExecutionOutput_contextUpdate] = v167;
          *&v124[OBJC_IVAR___SKRExecutionOutput_command] = 0;
          v66 = v407;
          v170 = v412;
          goto LABEL_41;
        }

        outlined consume of Data._Representation(v147, v149);
        (*v369)(v145, 1, 1, v150);
        outlined destroy of ReferenceResolutionClientProtocol?(v145, &_s12SiriOntology010Com_Apple_A28_Product_Proto_PromptContextVSgMd, &_s12SiriOntology010Com_Apple_A28_Product_Proto_PromptContextVSgMR);
        v408 = 0;
      }

      v152 = Logger.logObject.getter();
      v153 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v152, v153))
      {
        v154 = swift_slowAlloc();
        v155 = swift_slowAlloc();
        *&v433 = v155;
        *v154 = v367;
        *(v154 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000085, v385 | 0x8000000000000000, &v433);
        _os_log_impl(&dword_1DC659000, v152, v153, "ExecutionOutput: %s: NFCU has no (or invalid) prompt context", v154, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v155);
        MEMORY[0x1E12A2F50](v155, -1, -1);
        MEMORY[0x1E12A2F50](v154, -1, -1);
      }

      goto LABEL_35;
    }

    v171 = v412;
    if (v132 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v400, static Logger.executor);
    v172 = v134;
    v173 = Logger.logObject.getter();
    v174 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v173, v174))
    {
      v175 = swift_slowAlloc();
      v176 = swift_slowAlloc();
      v177 = swift_slowAlloc();
      *&v433 = v177;
      *v175 = v377;
      *(v175 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000085, v385 | 0x8000000000000000, &v433);
      *(v175 + 12) = 2112;
      *(v175 + 14) = v172;
      *v176 = v116;
      v178 = v172;
      _os_log_impl(&dword_1DC659000, v173, v174, "ExecutionOutput: %s: converting non-context ACE command=%@ to ExecutionOutput", v175, 0x16u);
      outlined destroy of ReferenceResolutionClientProtocol?(v176, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x1E12A2F50](v176, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v177);
      MEMORY[0x1E12A2F50](v177, -1, -1);
      MEMORY[0x1E12A2F50](v175, -1, -1);
    }

    v169 = off_1E8646000;
    v170 = v171;
    *&v124[OBJC_IVAR___SKRExecutionOutput_command] = v116;
    *&v124[OBJC_IVAR___SKRExecutionOutput_contextUpdate] = 0;
    v179 = v172;
    v66 = v407;
LABEL_41:
    v427.receiver = v124;
    v427.super_class = v413;
    v67 = objc_msgSendSuper2(&v427, sel_init);
    v70 = &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMR;
    outlined destroy of ReferenceResolutionClientProtocol?(v421, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMd, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMR);
    v180 = *v393;
    v181 = v424;
    (*v393)(v423, v424);

    v180(v422, v181);
    outlined destroy of ReferenceResolutionClientProtocol?(v420, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMd, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMR);
    outlined init with copy of ReferenceResolutionClientProtocol?(v410, &v431, &_s14SiriKitRuntime15ContextUpdating_pSgMd, &_s14SiriKitRuntime15ContextUpdating_pSgMR);
    if (!v432)
    {
      outlined destroy of ReferenceResolutionClientProtocol?(&v431, &_s14SiriKitRuntime15ContextUpdating_pSgMd, &_s14SiriKitRuntime15ContextUpdating_pSgMR);
      v17 = v409;
      v182 = v170;
LABEL_49:
      v71 = v411;
      v198 = Logger.logObject.getter();
      v199 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v198, v199))
      {
        v70 = swift_slowAlloc();
        *v70 = 0;
        _os_log_impl(&dword_1DC659000, v198, v199, "Not applying any context but just submitting ExecutionOutput since ContextUpdater or metadata or both are nil", v70, 2u);
        MEMORY[0x1E12A2F50](v70, -1, -1);
      }

      ConversationOutputSubmitter.sendOutputMessagesIfNecessary(output:requestId:commandExecutionInfo:assistantId:sessionId:invocationId:)(v67, v416, v418, v71, v417, v419, v415, v403, v402);
      v110 = *&v67[OBJC_IVAR___SKRExecutionOutput_command];
      if (v182)
      {
        goto LABEL_17;
      }

      v200 = type metadata accessor for UserID();
      (*(*(v200 - 8) + 56))(v66, 1, 1, v200);
      v114 = 0;
      v113 = 0;
LABEL_18:
      BYTE1(v359) = v114;
      LOBYTE(v359) = v113;
      (*(*v17 + 328))(v110, v416, v418, v401, v406, v71, v417, v419, v415, v66, v359, destructiveProjectEnumData for AceServiceInvokerImpl.AceSubmitOptions, 0);

      outlined destroy of ReferenceResolutionClientProtocol?(v66, &_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
      goto LABEL_19;
    }

    outlined init with take of ReferenceResolutionClientProtocol(&v431, &v433);
    v17 = v409;
    v182 = v170;
    if (!v170)
    {
      __swift_destroy_boxed_opaque_existential_1Tm(&v433);
      goto LABEL_49;
    }

    v183 = *&v67[OBJC_IVAR___SKRExecutionOutput_contextUpdate];
    v71 = v411;
    if (!v183)
    {
      goto LABEL_16;
    }

    v184 = *(*v409 + 152);

    v185 = v183;
    v186 = v184();
    v187 = ContextUpdateScope.toExecutionContextUpdateScope(isMUXEnabled:)(v186 & 1);
    v188 = *(&v434 + 1);
    v66 = v435;
    __swift_project_boxed_opaque_existential_1(&v433, *(&v434 + 1));
    v70 = v408;
    (*(v66 + 1))(v185, v182, v187, v188, v66);
    v71 = v70;
    if (!v70)
    {
      v408 = 0;

      v71 = v411;
      v66 = v407;
LABEL_16:
      __swift_destroy_boxed_opaque_existential_1Tm(&v433);
      ConversationOutputSubmitter.sendOutputMessagesIfNecessary(output:requestId:commandExecutionInfo:assistantId:sessionId:invocationId:)(v67, v416, v418, v71, v417, v419, v415, v403, v402);
      v110 = *&v67[OBJC_IVAR___SKRExecutionOutput_command];
LABEL_17:
      v70 = OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_currentUserId;
      v111 = type metadata accessor for UserID();
      v112 = *(v111 - 8);
      (*(v112 + 16))(v66, &v70[v182], v111);
      (*(v112 + 56))(v66, 0, 1, v111);
      v113 = *(v182 + OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_meetsUserSessionThreshold);
      v114 = *(v182 + OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_meetsPersonalRequestThreshold);
      goto LABEL_18;
    }

    v189 = v70;
    v190 = Logger.logObject.getter();
    v191 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v190, v191))
    {
      v192 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      *&v431 = v70;
      *v192 = v367;
      v429 = v71;
      v193 = v71;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v194 = String.init<A>(describing:)();
      v66 = v195;
      v196 = v71;
      v71 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v194, v195, &v431);

      *(v192 + 4) = v71;
      _os_log_impl(&dword_1DC659000, v190, v191, "Error while applying context: %s", v192, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v70);
      MEMORY[0x1E12A2F50](v70, -1, -1);
      MEMORY[0x1E12A2F50](v192, -1, -1);
      v197 = v196;
      v169 = off_1E8646000;
    }

    else
    {
      v197 = v70;
    }

    __swift_destroy_boxed_opaque_existential_1Tm(&v433);
    v408 = 0;
LABEL_19:
    v102 = 1;
    v103 = 1;
  }

  while ((v414 & 1) == 0);
  swift_setDeallocating();
  swift_arrayDestroy();
  if (*&v375[OBJC_IVAR___SKRExecutionOutput_command])
  {
    v224 = [objc_allocWithZone(MEMORY[0x1E69C7788]) v169[390]];
    v373(v224, 0);
  }

  else
  {
    v373(0, 0);
  }

LABEL_67:
}

void closure #1 in ConversationOutputSubmitter.handleMitigation(mitigationResult:executionOutput:requestId:requestIdOverride:contextUpdater:executionContextMatchingInfo:executionContextUpdateMetadata:assistantId:sessionId:invocationId:_:)(void *a1, id a2, void *a3, void *a4, void (*a5)(void, void), uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, void *a16, void *a17, void *a18, void *a19, void *a20)
{
  v323 = a8;
  v311 = a6;
  v325 = a3;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v302 = &v277 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v296 = &v277 - v28;
  updated = type metadata accessor for ContextUpdateScope();
  v295 = *(updated - 8);
  MEMORY[0x1EEE9AC00](updated);
  v294 = &v277 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
  MEMORY[0x1EEE9AC00](v31 - 8);
  v293 = &v277 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v292 = &v277 - v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5ParseO16DirectInvocationVSgMd, &_s11SiriKitFlow5ParseO16DirectInvocationVSgMR);
  MEMORY[0x1EEE9AC00](v35 - 8);
  v291 = &v277 - v36;
  v37 = type metadata accessor for BinaryDecodingOptions();
  MEMORY[0x1EEE9AC00](v37 - 8);
  v287 = &v277 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology010Com_Apple_A28_Product_Proto_PromptContextVSgMd, &_s12SiriOntology010Com_Apple_A28_Product_Proto_PromptContextVSgMR);
  MEMORY[0x1EEE9AC00](v39 - 8);
  v288 = &v277 - v40;
  v290 = type metadata accessor for Com_Apple_Siri_Product_Proto_PromptContext();
  v289 = *(v290 - 8);
  MEMORY[0x1EEE9AC00](v290);
  v284 = &v277 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v42);
  v285 = &v277 - v43;
  v306 = 0;
  v327 = type metadata accessor for RequestSummary.ExecutionSource();
  v326 = *(v327 - 8);
  MEMORY[0x1EEE9AC00](v327);
  v316 = &v277 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v45);
  v315 = &v277 - v46;
  MEMORY[0x1EEE9AC00](v47);
  v308 = (&v277 - v48);
  MEMORY[0x1EEE9AC00](v49);
  v309 = &v277 - v50;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMd, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMR);
  MEMORY[0x1EEE9AC00](v51 - 8);
  v53 = &v277 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v54);
  v314 = &v277 - v55;
  MEMORY[0x1EEE9AC00](v56);
  v58 = &v277 - v57;
  MEMORY[0x1EEE9AC00](v59);
  v307 = &v277 - v60;
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v312 = type metadata accessor for Logger();
  v313 = __swift_project_value_buffer(v312, static Logger.conversationBridge);
  v61 = Logger.logObject.getter();
  v62 = static os_log_type_t.debug.getter();
  v63 = os_log_type_enabled(v61, v62);
  v324 = a2;
  v303 = v53;
  if (v63)
  {
    v64 = swift_slowAlloc();
    v65 = v58;
    v66 = updated;
    v67 = a4;
    v68 = a5;
    v69 = a1;
    v70 = a7;
    v71 = swift_slowAlloc();
    *&v333 = v71;
    *v64 = 136315138;
    *(v64 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD0000000000000BFLL, 0x80000001DCA80160, &v333);
    _os_log_impl(&dword_1DC659000, v61, v62, "ConversationOutputSubmitter.%s handling ask to repeat action", v64, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v71);
    v72 = v71;
    a7 = v70;
    a1 = v69;
    a5 = v68;
    a4 = v67;
    updated = v66;
    v58 = v65;
    MEMORY[0x1E12A2F50](v72, -1, -1);
    v73 = v64;
    a2 = v324;
    MEMORY[0x1E12A2F50](v73, -1, -1);
  }

  if (a1)
  {
    v283 = updated;
    v322 = a16;
    v310 = a15;
    v321 = a14;
    v304 = a13;
    v301 = a12;
    v300 = a11;
    v319 = a10;
    v318 = a9;
    v299 = a19;
    v298 = a20;
    v320 = a17;
    v317 = a18;
    v74 = MEMORY[0x1E69D0678];
    v297 = a5;
    v305 = a1;
    if (!a2)
    {
      v145 = a1;
      v146 = v325;
      goto LABEL_55;
    }

    v282 = a7;
    v75 = *(a7 + OBJC_IVAR___SKRExecutionOutput_executionRequestId);
    v76 = *(a7 + OBJC_IVAR___SKRExecutionOutput_executionRequestId + 8);
    v77 = type metadata accessor for FlowOutputMessage.InAppResponse();
    v78 = *(*(v77 - 8) + 56);
    v286 = v58;
    v79 = v307;
    v78(v307, 1, 1, v77);
    v80 = *v74;
    v81 = v326;
    v82 = v309;
    v83 = v327;
    (*(v326 + 104))(v309, v80, v327);
    v84 = *(v81 + 16);
    v85 = v308;
    v84(v308, v82, v83);
    v86 = v79;
    v87 = v286;
    outlined init with copy of ReferenceResolutionClientProtocol?(v86, v286, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMd, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMR);
    v281 = type metadata accessor for ExecutionOutput(0);
    v88 = objc_allocWithZone(v281);
    v89 = &v88[OBJC_IVAR___SKRExecutionOutput_executionRequestId];
    *v89 = v75;
    *(v89 + 1) = v76;
    v90 = v324;
    v279 = v76;
    v91 = &v88[OBJC_IVAR___SKRExecutionOutput_fullPrint];
    *v91 = 0;
    *(v91 + 1) = 0;
    v92 = &v88[OBJC_IVAR___SKRExecutionOutput_fullSpeak];
    *v92 = 0;
    *(v92 + 1) = 0;
    v93 = &v88[OBJC_IVAR___SKRExecutionOutput_redactedFullPrint];
    *v93 = 0;
    *(v93 + 1) = 0;
    v94 = &v88[OBJC_IVAR___SKRExecutionOutput_redactedFullSpeak];
    *v94 = 0;
    *(v94 + 1) = 0;
    v84(&v88[OBJC_IVAR___SKRExecutionOutput_executionSource], v85, v83);
    v280 = v88;
    outlined init with copy of ReferenceResolutionClientProtocol?(v87, &v88[OBJC_IVAR___SKRExecutionOutput_inAppResponse], &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMd, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMR);
    objc_opt_self();
    v95 = swift_dynamicCastObjCClass();
    v96 = v90;
    v97 = v96;
    if (!v95)
    {
      outlined copy of (SAUIAddViews, SAUIRevealRecognizedSpeech?, ExecutionContextUpdate)?(v305, v90, v325);
      v147 = one-time initialization token for executor;
      v148 = v97;

      v149 = v310;
      if (v147 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v312, static Logger.executor);
      v150 = v148;
      v151 = Logger.logObject.getter();
      v152 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v151, v152))
      {
        v153 = swift_slowAlloc();
        v154 = swift_slowAlloc();
        v155 = swift_slowAlloc();
        *&v333 = v155;
        *v153 = 136315394;
        *(v153 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000085, 0x80000001DCA7C240, &v333);
        *(v153 + 12) = 2112;
        *(v153 + 14) = v150;
        *v154 = v324;
        v156 = v150;
        _os_log_impl(&dword_1DC659000, v151, v152, "ExecutionOutput: %s: converting non-context ACE command=%@ to ExecutionOutput", v153, 0x16u);
        outlined destroy of ReferenceResolutionClientProtocol?(v154, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        MEMORY[0x1E12A2F50](v154, -1, -1);
        __swift_destroy_boxed_opaque_existential_1Tm(v155);
        v157 = v155;
        v87 = v286;
        MEMORY[0x1E12A2F50](v157, -1, -1);
        v158 = v153;
        v90 = v324;
        MEMORY[0x1E12A2F50](v158, -1, -1);
      }

      v135 = v280;
      *&v280[OBJC_IVAR___SKRExecutionOutput_command] = v90;
      *&v135[OBJC_IVAR___SKRExecutionOutput_contextUpdate] = 0;
      v159 = v150;
      v136 = v149;
LABEL_29:
      v329.receiver = v135;
      v329.super_class = v281;
      v160 = objc_msgSendSuper2(&v329, sel_init, v277);
      outlined destroy of ReferenceResolutionClientProtocol?(v87, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMd, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMR);
      v161 = *(v326 + 8);
      v162 = v327;
      v161(v308, v327);

      v161(v309, v162);
      outlined destroy of ReferenceResolutionClientProtocol?(v307, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMd, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMR);
      outlined init with copy of ReferenceResolutionClientProtocol?(v304, &v331, &_s14SiriKitRuntime15ContextUpdating_pSgMd, &_s14SiriKitRuntime15ContextUpdating_pSgMR);
      if (v332)
      {
        outlined init with take of ReferenceResolutionClientProtocol(&v331, &v333);
        if (v136)
        {
          v163 = *&v160[OBJC_IVAR___SKRExecutionOutput_contextUpdate];
          if (v163)
          {
            v164 = *(*v323 + 152);

            v165 = v163;
            v166 = v164();
            v167 = ContextUpdateScope.toExecutionContextUpdateScope(isMUXEnabled:)(v166 & 1);
            v168 = *(&v334 + 1);
            v169 = v335;
            __swift_project_boxed_opaque_existential_1(&v333, *(&v334 + 1));
            v170 = v306;
            (*(v169 + 8))(v165, v136, v167, v168, v169);
            if (v170)
            {

              v171 = v170;
              v172 = Logger.logObject.getter();
              v173 = static os_log_type_t.error.getter();

              if (os_log_type_enabled(v172, v173))
              {
                v174 = swift_slowAlloc();
                v175 = swift_slowAlloc();
                *&v331 = v175;
                *v174 = 136315138;
                v330 = v170;
                v176 = v170;
                __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
                v177 = String.init<A>(describing:)();
                v179 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v177, v178, &v331);

                *(v174 + 4) = v179;
                _os_log_impl(&dword_1DC659000, v172, v173, "Error while applying context: %s", v174, 0xCu);
                __swift_destroy_boxed_opaque_existential_1Tm(v175);
                MEMORY[0x1E12A2F50](v175, -1, -1);
                MEMORY[0x1E12A2F50](v174, -1, -1);
              }

              a7 = v282;
              __swift_destroy_boxed_opaque_existential_1Tm(&v333);
              v306 = 0;
              v74 = MEMORY[0x1E69D0678];
LABEL_55:
              v211 = *(a7 + OBJC_IVAR___SKRExecutionOutput_executionRequestId);
              v210 = *(a7 + OBJC_IVAR___SKRExecutionOutput_executionRequestId + 8);
              v212 = type metadata accessor for FlowOutputMessage.InAppResponse();
              v213 = v314;
              (*(*(v212 - 8) + 56))(v314, 1, 1, v212);
              v214 = *v74;
              v215 = v326;
              v216 = v315;
              v217 = v327;
              (*(v326 + 104))(v315, v214, v327);
              v218 = *(v215 + 16);
              v219 = v316;
              v218(v316, v216, v217);
              v220 = v303;
              outlined init with copy of ReferenceResolutionClientProtocol?(v213, v303, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMd, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMR);
              v308 = type metadata accessor for ExecutionOutput(0);
              v221 = objc_allocWithZone(v308);
              v222 = &v221[OBJC_IVAR___SKRExecutionOutput_executionRequestId];
              *v222 = v211;
              *(v222 + 1) = v210;
              v223 = &v221[OBJC_IVAR___SKRExecutionOutput_fullPrint];
              *v223 = 0;
              *(v223 + 1) = 0;
              v224 = &v221[OBJC_IVAR___SKRExecutionOutput_fullSpeak];
              *v224 = 0;
              *(v224 + 1) = 0;
              v225 = &v221[OBJC_IVAR___SKRExecutionOutput_redactedFullPrint];
              *v225 = 0;
              *(v225 + 1) = 0;
              v226 = &v221[OBJC_IVAR___SKRExecutionOutput_redactedFullSpeak];
              *v226 = 0;
              *(v226 + 1) = 0;
              v218(&v221[OBJC_IVAR___SKRExecutionOutput_executionSource], v219, v217);
              outlined init with copy of ReferenceResolutionClientProtocol?(v220, &v221[OBJC_IVAR___SKRExecutionOutput_inAppResponse], &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMd, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMR);
              v227 = one-time initialization token for executor;
              v228 = v305;
              v229 = v305;
              v309 = v325;

              if (v227 != -1)
              {
                swift_once();
              }

              __swift_project_value_buffer(v312, static Logger.executor);
              v230 = v229;
              v231 = Logger.logObject.getter();
              v232 = static os_log_type_t.debug.getter();

              if (os_log_type_enabled(v231, v232))
              {
                v233 = swift_slowAlloc();
                v234 = swift_slowAlloc();
                v235 = swift_slowAlloc();
                *&v333 = v235;
                *v233 = 136315394;
                *(v233 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000085, 0x80000001DCA7C240, &v333);
                *(v233 + 12) = 2112;
                *(v233 + 14) = v230;
                *v234 = v228;
                v236 = v230;
                _os_log_impl(&dword_1DC659000, v231, v232, "ExecutionOutput: %s: converting non-context ACE command=%@ to ExecutionOutput", v233, 0x16u);
                outlined destroy of ReferenceResolutionClientProtocol?(v234, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
                MEMORY[0x1E12A2F50](v234, -1, -1);
                __swift_destroy_boxed_opaque_existential_1Tm(v235);
                MEMORY[0x1E12A2F50](v235, -1, -1);
                MEMORY[0x1E12A2F50](v233, -1, -1);
              }

              v237 = v297;
              v238 = v310;
              *&v221[OBJC_IVAR___SKRExecutionOutput_command] = v228;
              *&v221[OBJC_IVAR___SKRExecutionOutput_contextUpdate] = v325;
              v336.receiver = v221;
              v336.super_class = v308;
              v239 = objc_msgSendSuper2(&v336, sel_init);
              outlined destroy of ReferenceResolutionClientProtocol?(v220, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMd, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMR);
              v240 = *(v326 + 8);
              v241 = v327;
              v240(v316, v327);
              v240(v315, v241);
              outlined destroy of ReferenceResolutionClientProtocol?(v314, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMd, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMR);
              outlined init with copy of ReferenceResolutionClientProtocol?(v304, &v331, &_s14SiriKitRuntime15ContextUpdating_pSgMd, &_s14SiriKitRuntime15ContextUpdating_pSgMR);
              if (v332)
              {
                outlined init with take of ReferenceResolutionClientProtocol(&v331, &v333);
                if (v238)
                {
                  v242 = *&v239[OBJC_IVAR___SKRExecutionOutput_contextUpdate];
                  v243 = v323;
                  if (v242)
                  {
                    v244 = *(*v323 + 152);

                    v245 = v242;
                    v246 = v244();
                    v238 = v310;
                    v247 = ContextUpdateScope.toExecutionContextUpdateScope(isMUXEnabled:)(v246 & 1);
                    v248 = *(&v334 + 1);
                    v249 = v335;
                    __swift_project_boxed_opaque_existential_1(&v333, *(&v334 + 1));
                    v250 = v306;
                    (*(v249 + 8))(v245, v238, v247, v248, v249);
                    if (v250)
                    {

                      v251 = v250;
                      v252 = Logger.logObject.getter();
                      v253 = static os_log_type_t.error.getter();

                      if (os_log_type_enabled(v252, v253))
                      {
                        v254 = swift_slowAlloc();
                        v255 = swift_slowAlloc();
                        *&v331 = v255;
                        *v254 = 136315138;
                        v330 = v250;
                        v256 = v250;
                        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
                        v257 = String.init<A>(describing:)();
                        v259 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v257, v258, &v331);

                        *(v254 + 4) = v259;
                        _os_log_impl(&dword_1DC659000, v252, v253, "Error while applying context: %s", v254, 0xCu);
                        __swift_destroy_boxed_opaque_existential_1Tm(v255);
                        MEMORY[0x1E12A2F50](v255, -1, -1);
                        MEMORY[0x1E12A2F50](v254, -1, -1);
                      }

                      v260 = v297;
                      v261 = v250;
                      v260(0, v250);

                      __swift_destroy_boxed_opaque_existential_1Tm(&v333);
                      return;
                    }

                    v237 = v297;
                  }

                  __swift_destroy_boxed_opaque_existential_1Tm(&v333);
                  goto LABEL_73;
                }

                __swift_destroy_boxed_opaque_existential_1Tm(&v333);
              }

              else
              {
                outlined destroy of ReferenceResolutionClientProtocol?(&v331, &_s14SiriKitRuntime15ContextUpdating_pSgMd, &_s14SiriKitRuntime15ContextUpdating_pSgMR);
              }

              v243 = v323;
              v262 = Logger.logObject.getter();
              v263 = static os_log_type_t.info.getter();
              if (os_log_type_enabled(v262, v263))
              {
                v264 = swift_slowAlloc();
                *v264 = 0;
                _os_log_impl(&dword_1DC659000, v262, v263, "Not applying any context but just submitting ExecutionOutput since ContextUpdater or metadata or both are nil", v264, 2u);
                MEMORY[0x1E12A2F50](v264, -1, -1);
              }

LABEL_73:
              ConversationOutputSubmitter.sendOutputMessagesIfNecessary(output:requestId:commandExecutionInfo:assistantId:sessionId:invocationId:)(v239, v318, v319, v321, v322, v320, v317, v299, v298);
              v265 = *&v239[OBJC_IVAR___SKRExecutionOutput_command];
              if (v238)
              {
                v266 = OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_currentUserId;
                v267 = type metadata accessor for UserID();
                v268 = *(v267 - 8);
                v269 = v238 + v266;
                v270 = v302;
                (*(v268 + 16))(v302, v269, v267);
                (*(v268 + 56))(v270, 0, 1, v267);
                v271 = *(v238 + OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_meetsUserSessionThreshold);
                v272 = *(v238 + OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_meetsPersonalRequestThreshold);
              }

              else
              {
                v273 = type metadata accessor for UserID();
                v270 = v302;
                (*(*(v273 - 8) + 56))(v302, 1, 1, v273);
                v272 = 0;
                v271 = 0;
              }

              BYTE1(v275) = v272;
              LOBYTE(v275) = v271;
              (*(*v243 + 328))(v265, v318, v319, v300, v301, v321, v322, v320, v317, v270, v275, v237, v311);

              outlined destroy of ReferenceResolutionClientProtocol?(v270, &_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
              return;
            }

            v306 = 0;
          }

          __swift_destroy_boxed_opaque_existential_1Tm(&v333);
LABEL_51:
          ConversationOutputSubmitter.sendOutputMessagesIfNecessary(output:requestId:commandExecutionInfo:assistantId:sessionId:invocationId:)(v160, v318, v319, v321, v322, v320, v317, v299, v298);
          v202 = *&v160[OBJC_IVAR___SKRExecutionOutput_command];
          if (v136)
          {
            v203 = OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_currentUserId;
            v204 = type metadata accessor for UserID();
            v205 = *(v204 - 8);
            v206 = v296;
            (*(v205 + 16))(v296, v136 + v203, v204);
            (*(v205 + 56))(v206, 0, 1, v204);
            v207 = *(v136 + OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_meetsUserSessionThreshold);
            v208 = *(v136 + OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_meetsPersonalRequestThreshold);
          }

          else
          {
            v209 = type metadata accessor for UserID();
            v206 = v296;
            (*(*(v209 - 8) + 56))(v296, 1, 1, v209);
            v208 = 0;
            v207 = 0;
          }

          v74 = MEMORY[0x1E69D0678];
          HIBYTE(v276) = v208;
          LOBYTE(v276) = v207;
          (*(*v323 + 328))(v202, v318, v319, v300, v301, v321, v322, v320, v317, v206, v276, destructiveProjectEnumData for AceServiceInvokerImpl.AceSubmitOptions, 0);

          outlined destroy of ReferenceResolutionClientProtocol?(v206, &_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
          a7 = v282;
          goto LABEL_55;
        }

        __swift_destroy_boxed_opaque_existential_1Tm(&v333);
      }

      else
      {
        outlined destroy of ReferenceResolutionClientProtocol?(&v331, &_s14SiriKitRuntime15ContextUpdating_pSgMd, &_s14SiriKitRuntime15ContextUpdating_pSgMR);
      }

      v180 = Logger.logObject.getter();
      v181 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v180, v181))
      {
        v182 = swift_slowAlloc();
        *v182 = 0;
        _os_log_impl(&dword_1DC659000, v180, v181, "Not applying any context but just submitting ExecutionOutput since ContextUpdater or metadata or both are nil", v182, 2u);
        MEMORY[0x1E12A2F50](v182, -1, -1);
      }

      goto LABEL_51;
    }

    v278 = v96;
    v98 = v96;
    outlined copy of (SAUIAddViews, SAUIRevealRecognizedSpeech?, ExecutionContextUpdate)?(v305, v90, v325);
    v99 = one-time initialization token for executor;
    v100 = v98;

    if (v99 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v312, static Logger.executor);
    v101 = v100;
    v102 = Logger.logObject.getter();
    v103 = static os_log_type_t.debug.getter();

    v104 = os_log_type_enabled(v102, v103);
    v105 = v290;
    if (v104)
    {
      v106 = swift_slowAlloc();
      v107 = swift_slowAlloc();
      v108 = swift_slowAlloc();
      *&v333 = v108;
      *v106 = 136315394;
      *(v106 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000085, 0x80000001DCA7C240, &v333);
      *(v106 + 12) = 2112;
      *(v106 + 14) = v95;
      *v107 = v95;
      v109 = v101;
      _os_log_impl(&dword_1DC659000, v102, v103, "ExecutionOutput: %s: converting SARDNativeFlowContextUpdate=%@ to ExecutionOutput", v106, 0x16u);
      outlined destroy of ReferenceResolutionClientProtocol?(v107, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x1E12A2F50](v107, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v108);
      MEMORY[0x1E12A2F50](v108, -1, -1);
      MEMORY[0x1E12A2F50](v106, -1, -1);
    }

    v110 = [v95 promptContextProto];
    v277 = v95;
    if (v110)
    {
      v111 = v110;
      v112 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v114 = v113;

      v335 = 0;
      v333 = 0u;
      v334 = 0u;
      outlined copy of Data._Representation(v112, v114);
      BinaryDecodingOptions.init()();
      v115 = lazy protocol witness table accessor for type Com_Apple_Siri_Product_Proto_PromptContext and conformance Com_Apple_Siri_Product_Proto_PromptContext(&lazy protocol witness table cache variable for type Com_Apple_Siri_Product_Proto_PromptContext and conformance Com_Apple_Siri_Product_Proto_PromptContext, MEMORY[0x1E69D1500], MEMORY[0x1E69D14F8]);
      v116 = v288;
      v117 = v306;
      Message.init(serializedData:extensions:partial:options:)();
      if (!v117)
      {
        v287 = v115;
        v306 = 0;
        v191 = v289;
        (*(v289 + 56))(v116, 0, 1, v105);
        v192 = v285;
        (*(v191 + 32))(v285, v116, v105);
        v193 = v284;
        (*(v191 + 16))(v284, v192, v105);
        v194 = Logger.logObject.getter();
        v195 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v194, v195))
        {
          v196 = swift_slowAlloc();
          v197 = swift_slowAlloc();
          LODWORD(v279) = v195;
          v198 = v197;
          *&v333 = v197;
          *v196 = 136315394;
          *(v196 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000085, 0x80000001DCA7C240, &v333);
          *(v196 + 12) = 2080;
          v199 = Message.textFormatString()();
          v288 = v114;
          v200 = *(v191 + 8);
          v200(v193, v105);
          v201 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v199._countAndFlagsBits, v199._object, &v333);

          *(v196 + 14) = v201;
          _os_log_impl(&dword_1DC659000, v194, v279, "ExecutionOutput: %s: NFCU has prompt context %s", v196, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1E12A2F50](v198, -1, -1);
          MEMORY[0x1E12A2F50](v196, -1, -1);

          outlined consume of Data._Representation(v112, v288);
          v200(v285, v105);
        }

        else
        {

          outlined consume of Data._Representation(v112, v114);
          v274 = *(v191 + 8);
          v274(v193, v105);
          v274(v192, v105);
        }

LABEL_18:
        v122 = type metadata accessor for Parse.DirectInvocation();
        v123 = v291;
        (*(*(v122 - 8) + 56))(v291, 1, 1, v122);
        v124 = type metadata accessor for PommesContext();
        v125 = v292;
        (*(*(v124 - 8) + 56))(v292, 1, 1, v124);
        v126 = v295;
        v127 = v294;
        v128 = v283;
        (*(v295 + 104))(v294, *MEMORY[0x1E69CFF08], v283);
        v129 = type metadata accessor for ExecutionContextUpdate(0);
        v130 = objc_allocWithZone(v129);
        v131 = v293;
        outlined init with copy of ReferenceResolutionClientProtocol?(v125, v293, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
        v132 = v277;
        specialized static ExecutionContextUpdate.synchronizePromptContexts(pommesContext:nativeFlowContextCommand:)(v131, v277);
        *&v130[OBJC_IVAR___SKRExecutionContextUpdate_provideContextCommand] = 0;
        *&v130[OBJC_IVAR___SKRExecutionContextUpdate_nativeFlowContextCommand] = v132;
        *&v130[OBJC_IVAR___SKRExecutionContextUpdate_nluSystemDialogActs] = 0;
        *&v130[OBJC_IVAR___SKRExecutionContextUpdate_nluActiveTasks] = 0;
        *&v130[OBJC_IVAR___SKRExecutionContextUpdate_nluCompletedTasks] = 0;
        outlined init with copy of ReferenceResolutionClientProtocol?(v123, &v130[OBJC_IVAR___SKRExecutionContextUpdate_undoDirectInvocation], &_s11SiriKitFlow5ParseO16DirectInvocationVSgMd, &_s11SiriKitFlow5ParseO16DirectInvocationVSgMR);
        *&v130[OBJC_IVAR___SKRExecutionContextUpdate_rrEntities] = 0;
        outlined init with copy of ReferenceResolutionClientProtocol?(v131, &v130[OBJC_IVAR___SKRExecutionContextUpdate_pommesContext], &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
        (*(v126 + 16))(&v130[OBJC_IVAR___SKRExecutionContextUpdate_contextUpdateScope], v127, v128);
        v133 = &v130[OBJC_IVAR___SKRExecutionContextUpdate_restoreSessionForRequestId];
        *v133 = 0;
        v133[1] = 0;
        v130[OBJC_IVAR___SKRExecutionContextUpdate_executedOnRemoteDevice] = 0;
        v328.receiver = v130;
        v328.super_class = v129;
        v134 = objc_msgSendSuper2(&v328, sel_init);
        (*(v126 + 8))(v127, v128);
        outlined destroy of ReferenceResolutionClientProtocol?(v125, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
        outlined destroy of ReferenceResolutionClientProtocol?(v123, &_s11SiriKitFlow5ParseO16DirectInvocationVSgMd, &_s11SiriKitFlow5ParseO16DirectInvocationVSgMR);
        outlined destroy of ReferenceResolutionClientProtocol?(v131, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
        v135 = v280;
        *&v280[OBJC_IVAR___SKRExecutionOutput_contextUpdate] = v134;
        *&v135[OBJC_IVAR___SKRExecutionOutput_command] = 0;
        v87 = v286;
        v136 = v310;
        v97 = v278;
        goto LABEL_29;
      }

      outlined consume of Data._Representation(v112, v114);
      (*(v289 + 56))(v116, 1, 1, v105);
      outlined destroy of ReferenceResolutionClientProtocol?(v116, &_s12SiriOntology010Com_Apple_A28_Product_Proto_PromptContextVSgMd, &_s12SiriOntology010Com_Apple_A28_Product_Proto_PromptContextVSgMR);
      v306 = 0;
    }

    v118 = Logger.logObject.getter();
    v119 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v118, v119))
    {
      v120 = swift_slowAlloc();
      v121 = swift_slowAlloc();
      *&v333 = v121;
      *v120 = 136315138;
      *(v120 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000085, 0x80000001DCA7C240, &v333);
      _os_log_impl(&dword_1DC659000, v118, v119, "ExecutionOutput: %s: NFCU has no (or invalid) prompt context", v120, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v121);
      MEMORY[0x1E12A2F50](v121, -1, -1);
      MEMORY[0x1E12A2F50](v120, -1, -1);
    }

    goto LABEL_18;
  }

  v137 = a4;
  v138 = Logger.logObject.getter();
  v139 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v138, v139))
  {
    v140 = swift_slowAlloc();
    v141 = swift_slowAlloc();
    *&v333 = v141;
    *v140 = 136315394;
    *(v140 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD0000000000000BFLL, 0x80000001DCA80160, &v333);
    *(v140 + 12) = 2080;
    if (a4)
    {
      swift_getErrorValue();
      v142 = Error.localizedDescription.getter();
      v144 = v143;
    }

    else
    {
      v144 = 0x80000001DCA802C0;
      v142 = 0xD000000000000037;
    }

    v183 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v142, v144, &v333);

    *(v140 + 14) = v183;
    _os_log_impl(&dword_1DC659000, v138, v139, "ConversationOutputSubmitter.%s error: %s", v140, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12A2F50](v141, -1, -1);
    MEMORY[0x1E12A2F50](v140, -1, -1);
  }

  else
  {
  }

  *&v333 = 0;
  *(&v333 + 1) = 0xE000000000000000;
  if (a4)
  {
    swift_getErrorValue();
    v184 = Error.localizedDescription.getter();
    v186 = v185;
  }

  else
  {
    v186 = 0x80000001DCA802C0;
    v184 = 0xD000000000000037;
  }

  MEMORY[0x1E12A1580](v184, v186);

  v187 = v333;
  v188 = objc_allocWithZone(MEMORY[0x1E69C7778]);
  v189 = MEMORY[0x1E12A1410](v187, *(&v187 + 1));

  v190 = [v188 initWithReason_];

  a5(v190, 0);
}

void ConversationOutputSubmitter.flowOutputCompleted(flowOutputMessageId:result:)(uint64_t a1, void *a2, void *a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v52 - v11;
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  v14 = __swift_project_value_buffer(v13, static Logger.conversationBridge);
  v58 = *(v7 + 16);
  v59 = v7 + 16;
  v58(v12, a1, v6);
  v15 = a2;
  v16 = a3;
  v60 = v14;
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.debug.getter();

  v19 = os_log_type_enabled(v17, v18);
  v61 = v7;
  if (v19)
  {
    v54 = v18;
    v56 = a1;
    v57 = v9;
    v20 = v7;
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v64[0] = v53;
    *v21 = 136315650;
    lazy protocol witness table accessor for type Com_Apple_Siri_Product_Proto_PromptContext and conformance Com_Apple_Siri_Product_Proto_PromptContext(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v23 = dispatch thunk of CustomStringConvertible.description.getter();
    v24 = v6;
    v26 = v25;
    v27 = v12;
    v28 = v24;
    v55 = *(v20 + 8);
    v55(v27, v24);
    v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v26, v64);

    *(v21 + 4) = v29;
    *(v21 + 12) = 2112;
    *(v21 + 14) = v15;
    *v22 = a2;
    *(v21 + 22) = 2112;
    v30 = v15;
    v31 = a2;
    if (a3)
    {
      v32 = a3;
      v33 = _swift_stdlib_bridgeErrorToNSError();
      v34 = v33;
    }

    else
    {
      v33 = 0;
      v34 = 0;
    }

    v37 = v54;
    *(v21 + 24) = v33;
    v22[1] = v34;
    _os_log_impl(&dword_1DC659000, v17, v37, "Flow output completed for messageId: %s result: (%@, %@)", v21, 0x20u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    swift_arrayDestroy();
    MEMORY[0x1E12A2F50](v22, -1, -1);
    v38 = v53;
    __swift_destroy_boxed_opaque_existential_1Tm(v53);
    MEMORY[0x1E12A2F50](v38, -1, -1);
    MEMORY[0x1E12A2F50](v21, -1, -1);

    a1 = v56;
    v9 = v57;
    v35 = v55;
  }

  else
  {
    v31 = a2;

    v35 = *(v7 + 8);
    v36 = v12;
    v28 = v6;
    v35(v36, v6);
  }

  v39 = (*(*v62 + 240))(v64);
  v40 = specialized Dictionary.removeValue(forKey:)(a1);
  v42 = v41;
  v39(v64, 0);
  if (v40)
  {
    v63 = a3;
    v64[0] = v31;
    v40(v64, &v63);
    _sxRi_zRi0_zlySDySSSbGIsegr_SgWOe(v40, v42);
  }

  else
  {
    v58(v9, a1, v28);
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = v9;
      v47 = swift_slowAlloc();
      v64[0] = v47;
      *v45 = 136315138;
      lazy protocol witness table accessor for type Com_Apple_Siri_Product_Proto_PromptContext and conformance Com_Apple_Siri_Product_Proto_PromptContext(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v48 = dispatch thunk of CustomStringConvertible.description.getter();
      v50 = v49;
      v35(v46, v28);
      v51 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v48, v50, v64);

      *(v45 + 4) = v51;
      _os_log_impl(&dword_1DC659000, v43, v44, "Could not find flow command completion. commandId: %s", v45, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v47);
      MEMORY[0x1E12A2F50](v47, -1, -1);
      MEMORY[0x1E12A2F50](v45, -1, -1);
    }

    else
    {

      v35(v9, v28);
    }
  }
}

void ConversationOutputSubmitter.sendSiriWillAskForConfirmation(assistantId:sessionId:requestId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v7 = objc_allocWithZone(type metadata accessor for SiriWillAskForConfirmationMessage());
  v8 = SiriWillAskForConfirmationMessage.init(build:)();
  if (v8)
  {
    v9 = v8;
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, static Logger.conversationBridge);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_1DC659000, v11, v12, "Going to post SiriWillAskForConfirmationMessage", v13, 2u);
      MEMORY[0x1E12A2F50](v13, -1, -1);
    }

    __swift_project_boxed_opaque_existential_1((v6 + 32), *(v6 + 56));
    dispatch thunk of MessagePublishing.postMessage(_:)();
  }

  else
  {
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    __swift_project_value_buffer(v14, static Logger.conversationBridge);
    v9 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v9, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_1DC659000, v9, v15, "Could not create SiriWillAskForConfirmationMessage", v16, 2u);
      MEMORY[0x1E12A2F50](v16, -1, -1);
    }
  }
}

uint64_t ConversationOutputSubmitter.deinit()
{

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 32));

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 112));
  return v0;
}

uint64_t ConversationOutputSubmitter.__deallocating_deinit()
{

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 32));

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 112));

  return swift_deallocClassInstance();
}

uint64_t specialized ConversationOutputSubmitter.init(requestDispatcherServiceHelper:isMUXEnabled:muxContextMessage:messagePublisher:selfReflection:featureChecker:)(uint64_t a1, char a2, uint64_t a3, __int128 *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v24 = a8;
  v25 = a9;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v23);
  (*(*(a8 - 8) + 32))(boxed_opaque_existential_0, a6, a8);
  type metadata accessor for ConcurrentTaskPool();
  v18 = swift_allocObject();
  v19 = MEMORY[0x1E69E7CC0];
  *(v18 + 16) = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v20 = swift_allocObject();
  *(v20 + 16) = 0;
  *(v18 + 24) = v20;
  *(a7 + 16) = v18;
  *(a7 + 88) = 0;
  *(a7 + 80) = 0;
  *(a7 + 96) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_ySo13SABaseCommandCSg_s5Error_pSgt14SiriKitRuntime15MessageBusActorCYccTt0g5Tf4g_n(v19);
  *(a7 + 104) = 30000000000;
  *(a7 + 24) = a1;
  *(a7 + 72) = a2;
  swift_beginAccess();
  v21 = *(a7 + 80);
  *(a7 + 80) = a3;

  outlined init with take of ReferenceResolutionClientProtocol(a4, a7 + 32);
  swift_beginAccess();
  *(a7 + 88) = a5;

  outlined init with take of ReferenceResolutionClientProtocol(&v23, a7 + 112);
  return a7;
}

uint64_t specialized ConversationOutputSubmitter.init(requestDispatcherServiceHelper:isMUXEnabled:muxContextMessage:messagePublisher:featureChecker:)(uint64_t a1, char a2, uint64_t a3, __int128 *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v22 = a7;
  v23 = a8;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v21);
  (*(*(a7 - 8) + 32))(boxed_opaque_existential_0, a5, a7);
  type metadata accessor for ConcurrentTaskPool();
  v16 = swift_allocObject();
  v17 = MEMORY[0x1E69E7CC0];
  *(v16 + 16) = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v18 = swift_allocObject();
  *(v18 + 16) = 0;
  *(v16 + 24) = v18;
  *(a6 + 16) = v16;
  *(a6 + 88) = 0;
  *(a6 + 80) = 0;
  *(a6 + 96) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_ySo13SABaseCommandCSg_s5Error_pSgt14SiriKitRuntime15MessageBusActorCYccTt0g5Tf4g_n(v17);
  *(a6 + 104) = 30000000000;
  *(a6 + 24) = a1;
  *(a6 + 72) = a2;
  swift_beginAccess();
  v19 = *(a6 + 80);
  *(a6 + 80) = a3;

  outlined init with take of ReferenceResolutionClientProtocol(a4, a6 + 32);
  outlined init with take of ReferenceResolutionClientProtocol(&v21, a6 + 112);
  return a6;
}

void partial apply for closure #1 in ConversationOutputSubmitter.handleMitigation(mitigationResult:executionOutput:requestId:requestIdOverride:contextUpdater:executionContextMatchingInfo:executionContextUpdateMetadata:assistantId:sessionId:invocationId:_:)(void *a1, void *a2, void *a3, void *a4)
{
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR) - 8);
  v10 = (*(v9 + 80) + 152) & ~*(v9 + 80);
  v11 = (*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  closure #1 in ConversationOutputSubmitter.handleMitigation(mitigationResult:executionOutput:requestId:requestIdOverride:contextUpdater:executionContextMatchingInfo:executionContextUpdateMetadata:assistantId:sessionId:invocationId:_:)(a1, a2, a3, a4, *(v4 + 16), *(v4 + 24), *(v4 + 32), *(v4 + 40), *(v4 + 48), *(v4 + 56), *(v4 + 64), *(v4 + 72), v4 + 80, *(v4 + 120), *(v4 + 128), *(v4 + 136), *(v4 + 144), (v4 + v10), *(v4 + v11), *(v4 + v11 + 8));
}

uint64_t dispatch thunk of ConversationOutputSubmitter.handleMitigation(mitigationResult:executionOutput:requestId:requestIdOverride:contextUpdater:executionContextMatchingInfo:executionContextUpdateMetadata:assistantId:sessionId:invocationId:_:)()
{
  v2 = *(*v0 + 288);

  return v2();
}

id outlined copy of (SAUIAddViews, SAUIRevealRecognizedSpeech?, ExecutionContextUpdate)?(id result, void *a2, void *a3)
{
  if (result)
  {
    v6 = result;
    v4 = a2;
    v5 = a3;

    return v6;
  }

  return result;
}

id ConversationParaphraseResult.xpcRepresentation.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow16ActionParaphraseVSgMd, &_s11SiriKitFlow16ActionParaphraseVSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v22 - v3;
  v5 = type metadata accessor for ActionParaphrase();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ConversationParaphraseResult(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  outlined init with copy of ConversationParaphraseResult(v1, v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = *v11;
    v13 = v11[1];
    (*(v6 + 56))(v4, 1, 1, v5);
    v14 = type metadata accessor for ConversationParaphraseResultXPC(0);
    v15 = objc_allocWithZone(v14);
    outlined init with copy of ActionParaphrase?(v4, &v15[OBJC_IVAR____TtC14SiriKitRuntime31ConversationParaphraseResultXPC_paraphrase]);
    v16 = &v15[OBJC_IVAR____TtC14SiriKitRuntime31ConversationParaphraseResultXPC_errorMsg];
    *v16 = v12;
    *(v16 + 1) = v13;
    v23.receiver = v15;
    v23.super_class = v14;
    v17 = objc_msgSendSuper2(&v23, sel_init);
    outlined destroy of ActionParaphrase?(v4);
  }

  else
  {
    (*(v6 + 32))(v8, v11, v5);
    (*(v6 + 16))(v4, v8, v5);
    (*(v6 + 56))(v4, 0, 1, v5);
    v18 = type metadata accessor for ConversationParaphraseResultXPC(0);
    v19 = objc_allocWithZone(v18);
    outlined init with copy of ActionParaphrase?(v4, &v19[OBJC_IVAR____TtC14SiriKitRuntime31ConversationParaphraseResultXPC_paraphrase]);
    v20 = &v19[OBJC_IVAR____TtC14SiriKitRuntime31ConversationParaphraseResultXPC_errorMsg];
    *v20 = 0;
    *(v20 + 1) = 0;
    v22.receiver = v19;
    v22.super_class = v18;
    v17 = objc_msgSendSuper2(&v22, sel_init);
    outlined destroy of ActionParaphrase?(v4);
    (*(v6 + 8))(v8, v5);
  }

  return v17;
}

id static ConversationParaphraseResultXPC.paraphrase(paraphrase:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow16ActionParaphraseVSgMd, &_s11SiriKitFlow16ActionParaphraseVSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v12 - v4;
  v6 = type metadata accessor for ActionParaphrase();
  v7 = *(v6 - 8);
  (*(v7 + 16))(v5, a1, v6);
  (*(v7 + 56))(v5, 0, 1, v6);
  v8 = objc_allocWithZone(v1);
  outlined init with copy of ActionParaphrase?(v5, &v8[OBJC_IVAR____TtC14SiriKitRuntime31ConversationParaphraseResultXPC_paraphrase]);
  v9 = &v8[OBJC_IVAR____TtC14SiriKitRuntime31ConversationParaphraseResultXPC_errorMsg];
  *v9 = 0;
  *(v9 + 1) = 0;
  v12.receiver = v8;
  v12.super_class = v1;
  v10 = objc_msgSendSuper2(&v12, sel_init);
  outlined destroy of ActionParaphrase?(v5);
  return v10;
}

uint64_t outlined init with copy of ConversationParaphraseResult(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConversationParaphraseResult(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id static ConversationParaphraseResultXPC.error(errorMsg:)(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow16ActionParaphraseVSgMd, &_s11SiriKitFlow16ActionParaphraseVSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v13 - v6;
  v8 = type metadata accessor for ActionParaphrase();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = objc_allocWithZone(v2);
  outlined init with copy of ActionParaphrase?(v7, &v9[OBJC_IVAR____TtC14SiriKitRuntime31ConversationParaphraseResultXPC_paraphrase]);
  v10 = &v9[OBJC_IVAR____TtC14SiriKitRuntime31ConversationParaphraseResultXPC_errorMsg];
  *v10 = a1;
  *(v10 + 1) = a2;
  v13.receiver = v9;
  v13.super_class = v2;

  v11 = objc_msgSendSuper2(&v13, sel_init);
  outlined destroy of ActionParaphrase?(v7);
  return v11;
}

uint64_t outlined init with copy of ActionParaphrase?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow16ActionParaphraseVSgMd, &_s11SiriKitFlow16ActionParaphraseVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of ActionParaphrase?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow16ActionParaphraseVSgMd, &_s11SiriKitFlow16ActionParaphraseVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ConversationParaphraseResultXPC.swiftRepresentation()@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow16ActionParaphraseVSgMd, &_s11SiriKitFlow16ActionParaphraseVSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v11 - v4;
  v6 = *(v1 + OBJC_IVAR____TtC14SiriKitRuntime31ConversationParaphraseResultXPC_errorMsg + 8);
  if (v6)
  {
    *a1 = *(v1 + OBJC_IVAR____TtC14SiriKitRuntime31ConversationParaphraseResultXPC_errorMsg);
    a1[1] = v6;
    type metadata accessor for ConversationParaphraseResult(0);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    outlined init with copy of ActionParaphrase?(v1 + OBJC_IVAR____TtC14SiriKitRuntime31ConversationParaphraseResultXPC_paraphrase, v5);
    v7 = type metadata accessor for ActionParaphrase();
    v8 = *(v7 - 8);
    v9 = *(v8 + 48);
    if (v9(v5, 1, v7) == 1)
    {
      static ActionParaphrase.noParaphrase()();
      if (v9(v5, 1, v7) != 1)
      {
        outlined destroy of ActionParaphrase?(v5);
      }
    }

    else
    {
      (*(v8 + 32))(a1, v5, v7);
    }

    type metadata accessor for ConversationParaphraseResult(0);
    swift_storeEnumTagMultiPayload();
  }
}

uint64_t static ConversationParaphraseResultXPC.supportsSecureCoding.setter(char a1)
{
  result = swift_beginAccess();
  static ConversationParaphraseResultXPC.supportsSecureCoding = a1;
  return result;
}

Swift::Void __swiftcall ConversationParaphraseResultXPC.encode(with:)(NSCoder with)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow16ActionParaphraseVSgMd, &_s11SiriKitFlow16ActionParaphraseVSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v18 - v5;
  v7 = type metadata accessor for ActionParaphrase();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of ActionParaphrase?(v2 + OBJC_IVAR____TtC14SiriKitRuntime31ConversationParaphraseResultXPC_paraphrase, v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    outlined destroy of ActionParaphrase?(v6);
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
    type metadata accessor for PropertyListEncoder();
    swift_allocObject();
    PropertyListEncoder.init()();
    lazy protocol witness table accessor for type ActionParaphrase and conformance ActionParaphrase(&lazy protocol witness table cache variable for type ActionParaphrase and conformance ActionParaphrase, MEMORY[0x1E69CFE98]);
    v11 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    v13 = v12;

    isa = Data._bridgeToObjectiveC()().super.isa;
    v15 = MEMORY[0x1E12A1410](0x6172687061726170, 0xEA00000000006573);
    [(objc_class *)with.super.isa encodeObject:isa forKey:v15];
    outlined consume of Data._Representation(v11, v13);

    (*(v8 + 8))(v10, v7);
  }

  if (*(v2 + OBJC_IVAR____TtC14SiriKitRuntime31ConversationParaphraseResultXPC_errorMsg + 8))
  {
    v16 = MEMORY[0x1E12A1410](*(v2 + OBJC_IVAR____TtC14SiriKitRuntime31ConversationParaphraseResultXPC_errorMsg));
    v17 = MEMORY[0x1E12A1410](0x67734D726F727265, 0xE800000000000000);
    [(objc_class *)with.super.isa encodeObject:v16 forKey:v17];
  }
}

id ConversationParaphraseResultXPC.__allocating_init(coder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = specialized ConversationParaphraseResultXPC.init(coder:)(a1);

  return v4;
}

id ConversationParaphraseResultXPC.init(coder:)(void *a1)
{
  v2 = specialized ConversationParaphraseResultXPC.init(coder:)(a1);

  return v2;
}

SiriKitRuntime::ConversationParaphraseResultXPC::CodingKeys_optional __swiftcall ConversationParaphraseResultXPC.CodingKeys.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of ConversationParaphraseResultXPC.CodingKeys.init(rawValue:), v2);

  if (v3 == 1)
  {
    v4.value = SiriKitRuntime_ConversationParaphraseResultXPC_CodingKeys_errorMsg;
  }

  else
  {
    v4.value = SiriKitRuntime_ConversationParaphraseResultXPC_CodingKeys_unknownDefault;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

SiriKitRuntime::ConversationParaphraseResultXPC::CodingKeys_optional __swiftcall ConversationParaphraseResultXPC.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  object = stringValue._object;
  v2._countAndFlagsBits = stringValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of ConversationParaphraseResultXPC.CodingKeys.init(rawValue:), v2);

  if (v3 == 1)
  {
    v4.value = SiriKitRuntime_ConversationParaphraseResultXPC_CodingKeys_errorMsg;
  }

  else
  {
    v4.value = SiriKitRuntime_ConversationParaphraseResultXPC_CodingKeys_unknownDefault;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t ConversationParaphraseResultXPC.CodingKeys.stringValue.getter(char a1)
{
  if (a1)
  {
    return 0x67734D726F727265;
  }

  else
  {
    return 0x6172687061726170;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance ConversationParaphraseResultXPC.CodingKeys(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x67734D726F727265;
  }

  else
  {
    v3 = 0x6172687061726170;
  }

  if (v2)
  {
    v4 = 0xEA00000000006573;
  }

  else
  {
    v4 = 0xE800000000000000;
  }

  if (*a2)
  {
    v5 = 0x67734D726F727265;
  }

  else
  {
    v5 = 0x6172687061726170;
  }

  if (*a2)
  {
    v6 = 0xE800000000000000;
  }

  else
  {
    v6 = 0xEA00000000006573;
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

Swift::Int protocol witness for Hashable.hashValue.getter in conformance ConversationParaphraseResultXPC.CodingKeys()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ConversationParaphraseResultXPC.CodingKeys(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ConversationParaphraseResultXPC.CodingKeys(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance ConversationParaphraseResultXPC.CodingKeys@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of ConversationParaphraseResultXPC.CodingKeys.init(rawValue:), *a1);

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance ConversationParaphraseResultXPC.CodingKeys(uint64_t *a1@<X8>)
{
  v2 = 0x6172687061726170;
  if (*v1)
  {
    v2 = 0x67734D726F727265;
  }

  v3 = 0xEA00000000006573;
  if (*v1)
  {
    v3 = 0xE800000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance ConversationParaphraseResultXPC.CodingKeys()
{
  if (*v0)
  {
    return 0x67734D726F727265;
  }

  else
  {
    return 0x6172687061726170;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance ConversationParaphraseResultXPC.CodingKeys@<X0>(Swift::String string@<0:X0, 8:X1>, char *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of ConversationParaphraseResultXPC.CodingKeys.init(rawValue:), v3);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ConversationParaphraseResultXPC.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ConversationParaphraseResultXPC.CodingKeys and conformance ConversationParaphraseResultXPC.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ConversationParaphraseResultXPC.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ConversationParaphraseResultXPC.CodingKeys and conformance ConversationParaphraseResultXPC.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

id ConversationParaphraseResultXPC.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ConversationParaphraseResultXPC.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id specialized ConversationParaphraseResultXPC.init(coder:)(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow16ActionParaphraseVSgMd, &_s11SiriKitFlow16ActionParaphraseVSgMR);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v27 - v7;
  v9 = MEMORY[0x1E12A1410](0x67734D726F727265, 0xE800000000000000, v6);
  v10 = [a1 containsValueForKey_];

  if (v10 && (type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NSString, 0x1E696AEC0), (v11 = NSCoder.decodeObject<A>(of:forKey:)()) != 0))
  {
    v12 = v11;
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;
  }

  else
  {
    v13 = 0;
    v15 = 0;
  }

  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NSData, 0x1E695DEF0);
  v16 = NSCoder.decodeObject<A>(of:forKey:)();
  if (v16)
  {
    v17 = v16;
    v27 = ObjectType;
    type metadata accessor for PropertyListDecoder();
    swift_allocObject();
    PropertyListDecoder.init()();
    v18 = type metadata accessor for ActionParaphrase();
    v19 = v17;
    v20 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = v21;

    lazy protocol witness table accessor for type ActionParaphrase and conformance ActionParaphrase(&lazy protocol witness table cache variable for type ActionParaphrase and conformance ActionParaphrase, MEMORY[0x1E69CFEA0]);
    dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();

    outlined consume of Data._Representation(v20, v22);

    (*(*(v18 - 8) + 56))(v8, 0, 1, v18);
    outlined init with take of ActionParaphrase?(v8, &v2[OBJC_IVAR____TtC14SiriKitRuntime31ConversationParaphraseResultXPC_paraphrase]);
    ObjectType = v27;
  }

  else
  {
    v23 = OBJC_IVAR____TtC14SiriKitRuntime31ConversationParaphraseResultXPC_paraphrase;
    v24 = type metadata accessor for ActionParaphrase();
    (*(*(v24 - 8) + 56))(&v2[v23], 1, 1, v24);
  }

  v25 = &v2[OBJC_IVAR____TtC14SiriKitRuntime31ConversationParaphraseResultXPC_errorMsg];
  *v25 = v13;
  v25[1] = v15;
  v28.receiver = v2;
  v28.super_class = ObjectType;
  return objc_msgSendSuper2(&v28, sel_init);
}

unint64_t lazy protocol witness table accessor for type ConversationParaphraseResultXPC.CodingKeys and conformance ConversationParaphraseResultXPC.CodingKeys()
{
  result = lazy protocol witness table cache variable for type ConversationParaphraseResultXPC.CodingKeys and conformance ConversationParaphraseResultXPC.CodingKeys;
  if (!lazy protocol witness table cache variable for type ConversationParaphraseResultXPC.CodingKeys and conformance ConversationParaphraseResultXPC.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ConversationParaphraseResultXPC.CodingKeys and conformance ConversationParaphraseResultXPC.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ConversationParaphraseResultXPC.CodingKeys and conformance ConversationParaphraseResultXPC.CodingKeys;
  if (!lazy protocol witness table cache variable for type ConversationParaphraseResultXPC.CodingKeys and conformance ConversationParaphraseResultXPC.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ConversationParaphraseResultXPC.CodingKeys and conformance ConversationParaphraseResultXPC.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ConversationParaphraseResultXPC.CodingKeys and conformance ConversationParaphraseResultXPC.CodingKeys;
  if (!lazy protocol witness table cache variable for type ConversationParaphraseResultXPC.CodingKeys and conformance ConversationParaphraseResultXPC.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ConversationParaphraseResultXPC.CodingKeys and conformance ConversationParaphraseResultXPC.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ConversationParaphraseResultXPC.CodingKeys and conformance ConversationParaphraseResultXPC.CodingKeys;
  if (!lazy protocol witness table cache variable for type ConversationParaphraseResultXPC.CodingKeys and conformance ConversationParaphraseResultXPC.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ConversationParaphraseResultXPC.CodingKeys and conformance ConversationParaphraseResultXPC.CodingKeys);
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for ConversationParaphraseResult(uint64_t *a1, uint64_t *a2, uint64_t a3)
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
      v6 = a2[1];
      *a1 = *a2;
      a1[1] = v6;
    }

    else
    {
      v8 = type metadata accessor for ActionParaphrase();
      (*(*(v8 - 8) + 16))(a1, a2, v8);
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

uint64_t destroy for ConversationParaphraseResult(uint64_t a1, uint64_t a2)
{
  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    v4 = type metadata accessor for ActionParaphrase();
    v5 = *(*(v4 - 8) + 8);

    return v5(a1, v4);
  }
}

void *initializeWithCopy for ConversationParaphraseResult(void *a1, void *a2, uint64_t a3)
{
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = a2[1];
    *a1 = *a2;
    a1[1] = v5;
  }

  else
  {
    v6 = type metadata accessor for ActionParaphrase();
    (*(*(v6 - 8) + 16))(a1, a2, v6);
  }

  swift_storeEnumTagMultiPayload();
  return a1;
}

void *assignWithCopy for ConversationParaphraseResult(void *a1, void *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    outlined destroy of ConversationParaphraseResult(a1);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      *a1 = *a2;
      a1[1] = a2[1];
    }

    else
    {
      v5 = type metadata accessor for ActionParaphrase();
      (*(*(v5 - 8) + 16))(a1, a2, v5);
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

uint64_t outlined destroy of ConversationParaphraseResult(uint64_t a1)
{
  v2 = type metadata accessor for ConversationParaphraseResult(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *initializeWithTake for ConversationParaphraseResult(void *a1, const void *a2, uint64_t a3)
{
  if (swift_getEnumCaseMultiPayload())
  {
    v6 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v6);
  }

  else
  {
    v8 = type metadata accessor for ActionParaphrase();
    (*(*(v8 - 8) + 32))(a1, a2, v8);
    swift_storeEnumTagMultiPayload();
    return a1;
  }
}

void *assignWithTake for ConversationParaphraseResult(void *a1, const void *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  outlined destroy of ConversationParaphraseResult(a1);
  if (!swift_getEnumCaseMultiPayload())
  {
    v8 = type metadata accessor for ActionParaphrase();
    (*(*(v8 - 8) + 32))(a1, a2, v8);
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v6 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v6);
}

uint64_t type metadata completion function for ConversationParaphraseResult(uint64_t a1)
{
  result = type metadata accessor for ActionParaphrase();
  if (v2 <= 0x3F)
  {
    swift_initEnumMetadataMultiPayload();
    return 0;
  }

  return result;
}

void type metadata completion function for ConversationParaphraseResultXPC(uint64_t a1)
{
  type metadata accessor for ActionParaphrase?(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for ActionParaphrase?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ActionParaphrase?)
  {
    type metadata accessor for ActionParaphrase();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ActionParaphrase?);
    }
  }
}

uint64_t lazy protocol witness table accessor for type ActionParaphrase and conformance ActionParaphrase(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ActionParaphrase();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined init with take of ActionParaphrase?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow16ActionParaphraseVSgMd, &_s11SiriKitFlow16ActionParaphraseVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void ConversationRequestProcessor.handleRunPommesResponseMessage(_:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for RunPommesResponseMessage.UserInput();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Logger.conversationBridge);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v22 = v12;
    *v11 = 136315138;
    *(v11 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000022, 0x80000001DCA80380, &v22);
    _os_log_impl(&dword_1DC659000, v9, v10, "%s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    MEMORY[0x1E12A2F50](v12, -1, -1);
    MEMORY[0x1E12A2F50](v11, -1, -1);
  }

  if ((*(*v2 + 608))())
  {
    RunPommesResponseMessage.userInput.getter();
    v13 = (*(v5 + 88))(v7, v4);
    if (v13 == *MEMORY[0x1E69D03B0])
    {
      (*(v5 + 96))(v7, v4);
      v14 = *v7;
      ConversationRequestProcessor.handleRunPommesResponseMessage(withSpeechPackage:message:)(*v7, a1);

LABEL_15:

      return;
    }

    if (v13 == *MEMORY[0x1E69D03A8])
    {
      (*(v5 + 96))(v7, v4);
      ConversationRequestProcessor.handleRunPommesResponseMessageInternal(withTextInput:message:)(*v7, v7[1], a1);

      goto LABEL_15;
    }

    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_1DC659000, v18, v19, "Unknown UserInput type received with RunPommesResponseMessage", v20, 2u);
      MEMORY[0x1E12A2F50](v20, -1, -1);
    }

    (*(v5 + 8))(v7, v4);
  }

  else
  {
    v21 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v21, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_1DC659000, v21, v15, "PommesTRPCandidateMessage received for an inactive request. Dropping it on the floor.", v16, 2u);
      MEMORY[0x1E12A2F50](v16, -1, -1);
    }

    v17 = v21;
  }
}

uint64_t ConversationRequestProcessor.handleRunPommesResponseMessage(withSpeechPackage:message:)(void *a1, void *a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes22UserSessionAccessLevelOSgMd, &_s16SiriMessageTypes22UserSessionAccessLevelOSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v180 = &v177 - v7;
  v183 = type metadata accessor for UserSessionAccessLevel();
  v190 = *(v183 - 8);
  MEMORY[0x1EEE9AC00](v183);
  v182 = &v177 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v189 = &v177 - v10;
  v195 = type metadata accessor for UserSessionState();
  v192 = *(v195 - 8);
  MEMORY[0x1EEE9AC00](v195);
  v179 = &v177 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v191 = &v177 - v13;
  v187 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes22SelectedUserAttributesVSgMd, &_s16SiriMessageTypes22SelectedUserAttributesVSgMR);
  MEMORY[0x1EEE9AC00](v187);
  v181 = &v177 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v188 = &v177 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v196 = &v177 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v185 = &v177 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v194 = &v177 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v186 = &v177 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v177 - v26;
  v28 = type metadata accessor for UserID();
  v29 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v31 = &v177 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for UUID();
  v33 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v35 = &v177 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  UUID.init()();
  v202 = UUID.uuidString.getter();
  v203 = v36;
  (*(v33 + 8))(v35, v32);
  v193 = a2;
  RunPommesResponseMessage.userId.getter();
  v37 = *(v29 + 48);
  v38 = v37(v27, 1, v28);
  v200 = v28;
  v201 = v31;
  v197 = v37;
  if (v38 == 1)
  {
    v39 = v3;
    (*(v29 + 16))(v31, v3 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_sessionUserId, v28);
    if (v37(v27, 1, v28) != 1)
    {
      outlined destroy of ReferenceResolutionClientProtocol?(v27, &_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
    }
  }

  else
  {
    v39 = v3;
    (*(v29 + 32))(v31, v27, v28);
  }

  v40 = swift_allocObject();
  v42 = v202;
  v41 = v203;
  v40[2] = v202;
  v40[3] = v41;
  v40[4] = a1;
  v43 = objc_allocWithZone(MEMORY[0x1E69D0900]);
  v44 = swift_allocObject();
  *(v44 + 16) = partial apply for closure #1 in ConversationRequestProcessor.handleRunPommesResponseMessage(withSpeechPackage:message:);
  *(v44 + 24) = v40;
  v45 = v40;
  aBlock[4] = partial apply for thunk for @callee_guaranteed (@guaranteed SMTTCUPackageMutating?) -> ();
  aBlock[5] = v44;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed SMTTCUPackageMutating?) -> ();
  aBlock[3] = &block_descriptor_7;
  v46 = _Block_copy(aBlock);

  v47 = a1;

  v48 = [v43 initWithBuilder_];
  _Block_release(v46);
  v199 = v29;
  if (v48)
  {
    MEMORY[0x1EEE9AC00](v49);
    *(&v177 - 6) = v39;
    *(&v177 - 5) = v42;
    v50 = v201;
    *(&v177 - 4) = v41;
    *(&v177 - 3) = v50;
    *(&v177 - 2) = v48;
    v51 = objc_allocWithZone(type metadata accessor for TRPCandidateRequestMessage());
    v52 = TRPCandidateRequestMessage.init(build:)();
    if (v52)
    {
      v53 = v52;
      v54 = one-time initialization token for conversationBridge;

      v55 = v39;
      v56 = v45;
      if (v54 != -1)
      {
        swift_once();
      }

      v57 = type metadata accessor for Logger();
      v198 = __swift_project_value_buffer(v57, static Logger.conversationBridge);
      v58 = Logger.logObject.getter();
      v59 = static os_log_type_t.debug.getter();
      v60 = os_log_type_enabled(v58, v59);
      v184 = v48;
      if (v60)
      {
        v61 = swift_slowAlloc();
        v62 = swift_slowAlloc();
        aBlock[0] = v62;
        *v61 = 136315138;
        *(v61 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001ALL, 0x80000001DCA80470, aBlock);
        _os_log_impl(&dword_1DC659000, v58, v59, "Posting message %s to ConversationBridge", v61, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v62);
        MEMORY[0x1E12A2F50](v62, -1, -1);
        v63 = v61;
        v55 = v39;
        MEMORY[0x1E12A2F50](v63, -1, -1);
      }

      (*(*v55 + 856))(v53);

      v64 = v193;
      v65 = Logger.logObject.getter();
      v66 = static os_log_type_t.info.getter();

      v67 = os_log_type_enabled(v65, v66);
      v177 = v56;
      if (v67)
      {
        v193 = v55;
        v68 = swift_slowAlloc();
        v69 = swift_slowAlloc();
        aBlock[0] = v69;
        *v68 = 136315394;
        RunPommesResponseMessage.selectedUserAttributes.getter();
        v70 = String.init<A>(describing:)();
        v72 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v70, v71, aBlock);

        *(v68 + 4) = v72;
        *(v68 + 12) = 2080;
        v73 = v186;
        RunPommesResponseMessage.userId.getter();
        v74 = v200;
        if (v197(v73, 1, v200) == 1)
        {
          outlined destroy of ReferenceResolutionClientProtocol?(v73, &_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
          v75 = 0xE500000000000000;
          v76 = 0x3E6C696E3CLL;
        }

        else
        {
          v90 = UserID.sharedUserId.getter();
          v91 = v73;
          v92 = v90;
          v75 = v93;
          (*(v199 + 8))(v91, v74);
          v76 = v92;
        }

        v94 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v76, v75, aBlock);

        *(v68 + 14) = v94;
        _os_log_impl(&dword_1DC659000, v65, v66, "#user-session: #pommes received selectedUserAttribute=%s from pommes for userId: %s", v68, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1E12A2F50](v69, -1, -1);
        MEMORY[0x1E12A2F50](v68, -1, -1);

        v29 = v199;
        v55 = v193;
      }

      else
      {
      }

      v95 = v194;
      RunPommesResponseMessage.userId.getter();
      v96 = v200;
      v97 = v197(v95, 1, v200);
      v178 = v53;
      if (v97 == 1)
      {
        v98 = outlined destroy of ReferenceResolutionClientProtocol?(v95, &_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
        v82 = v201;
      }

      else
      {
        UserID.sharedUserId.getter();
        (*(v29 + 8))(v95, v96);

        v99 = v188;
        RunPommesResponseMessage.selectedUserAttributes.getter();
        v100 = type metadata accessor for SelectedUserAttributes();
        v101 = (*(*(v100 - 8) + 48))(v99, 1, v100);
        v98 = outlined destroy of ReferenceResolutionClientProtocol?(v99, &_s16SiriMessageTypes22SelectedUserAttributesVSgMd, &_s16SiriMessageTypes22SelectedUserAttributesVSgMR);
        v82 = v201;
        if (v101 != 1)
        {
          v118 = v196;
          v119 = RunPommesResponseMessage.selectedUserAttributes.getter();
          goto LABEL_42;
        }
      }

      v197 = v64;
      v102 = (*v55 + 568);
      v103 = *v102;
      v104 = v191;
      (*v102)(v98);
      v105 = UserSessionState.isSessionActiveForUser(siriSharedUserId:)(v82);
      v106 = *(v192 + 8);
      v106(v104, v195);
      if (v105)
      {
        v107 = Logger.logObject.getter();
        v108 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v107, v108))
        {
          v109 = swift_slowAlloc();
          *v109 = 0;
          _os_log_impl(&dword_1DC659000, v107, v108, "#user-session: constructing selectedUserAttribute from an existing user session", v109, 2u);
          MEMORY[0x1E12A2F50](v109, -1, -1);
        }

        v110 = v179;
        v103();
        v111 = v180;
        UserSessionState.activeUserAccessLevel.getter();
        v106(v110, v195);
        v112 = v190;
        v113 = *(v190 + 48);
        v114 = v183;
        if (v113(v111, 1, v183) == 1)
        {
          v115 = *(v112 + 104);
          v115(v189, *MEMORY[0x1E69D0870], v114);
          if (v113(v111, 1, v114) != 1)
          {
            outlined destroy of ReferenceResolutionClientProtocol?(v111, &_s16SiriMessageTypes22UserSessionAccessLevelOSgMd, &_s16SiriMessageTypes22UserSessionAccessLevelOSgMR);
          }

          v116 = v189;
          v112 = v190;
        }

        else
        {
          v116 = v189;
          (*(v112 + 32))(v189, v111, v114);
          v115 = *(v112 + 104);
        }

        v120 = *MEMORY[0x1E69D0878];
        v121 = v182;
        v115(v182, v120, v114);
        static UserSessionAccessLevel.== infix(_:_:)();
        v122 = *(v112 + 8);
        v122(v121, v114);
        v115(v121, v120, v114);
        static UserSessionAccessLevel.== infix(_:_:)();
        v122(v121, v114);
        v123 = v181;
        SelectedUserAttributes.init(score:classification:lowScoreThreshold:meetsUserSessionThreshold:meetsPersonalRequestThreshold:)();
        v122(v116, v114);
        v124 = type metadata accessor for SelectedUserAttributes();
        (*(*(v124 - 8) + 56))(v123, 0, 1, v124);
        v118 = v196;
        v119 = outlined init with take of SelectedUserAttributes?(v123, v196);
        v82 = v201;
      }

      else
      {
        v117 = type metadata accessor for SelectedUserAttributes();
        v118 = v196;
        v119 = (*(*(v117 - 8) + 56))(v196, 1, 1, v117);
      }

      v64 = v197;
LABEL_42:
      MEMORY[0x1EEE9AC00](v119);
      v125 = v202;
      v126 = v203;
      *(&v177 - 8) = v55;
      *(&v177 - 7) = v125;
      *(&v177 - 6) = v126;
      *(&v177 - 5) = v82;
      *(&v177 - 4) = v184;
      *(&v177 - 3) = v64;
      *(&v177 - 2) = v118;
      v127 = objc_allocWithZone(type metadata accessor for TTResponseMessage());
      v128 = TTResponseMessage.init(build:)();
      if (v128)
      {
        v129 = v128;

        v130 = Logger.logObject.getter();
        v131 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v130, v131))
        {
          v132 = swift_slowAlloc();
          v133 = swift_slowAlloc();
          aBlock[0] = v133;
          *v132 = 136315138;
          *(v132 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000011, 0x80000001DCA80450, aBlock);
          _os_log_impl(&dword_1DC659000, v130, v131, "Posting message %s to ConversationBridge", v132, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v133);
          MEMORY[0x1E12A2F50](v133, -1, -1);
          MEMORY[0x1E12A2F50](v132, -1, -1);
        }

        (*(*v55 + 880))(v129);

        MEMORY[0x1EEE9AC00](v134);
        v135 = v202;
        v136 = v203;
        *(&v177 - 4) = v55;
        *(&v177 - 3) = v135;
        *(&v177 - 2) = v136;
        *(&v177 - 1) = v64;
        v137 = objc_allocWithZone(type metadata accessor for PommesTRPCandidateMessage());
        v138 = PommesTRPCandidateMessage.init(build:)();
        if (v138)
        {
          v139 = v138;

          v140 = Logger.logObject.getter();
          v141 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v140, v141))
          {
            v142 = swift_slowAlloc();
            v143 = swift_slowAlloc();
            aBlock[0] = v143;
            *v142 = 136315138;
            *(v142 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000019, 0x80000001DCA80430, aBlock);
            _os_log_impl(&dword_1DC659000, v140, v141, "Posting message %s to ConversationBridge", v142, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v143);
            v144 = v143;
            v118 = v196;
            MEMORY[0x1E12A2F50](v144, -1, -1);
            MEMORY[0x1E12A2F50](v142, -1, -1);
          }

          (*(*v55 + 952))(v139);

          MEMORY[0x1EEE9AC00](v145);
          v146 = v202;
          v147 = v203;
          *(&v177 - 4) = v55;
          *(&v177 - 3) = v146;
          *(&v177 - 2) = v147;
          v148 = objc_allocWithZone(type metadata accessor for StoppedListeningForSpeechContinuationMessage());
          v197 = StoppedListeningForSpeechContinuationMessage.init(build:)();
          if (v197)
          {

            v149 = Logger.logObject.getter();
            v150 = static os_log_type_t.debug.getter();
            if (os_log_type_enabled(v149, v150))
            {
              v151 = swift_slowAlloc();
              v152 = swift_slowAlloc();
              aBlock[0] = v152;
              *v151 = 136315138;
              *(v151 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002CLL, 0x80000001DCA80400, aBlock);
              _os_log_impl(&dword_1DC659000, v149, v150, "Posting message %s to ConversationBridge", v151, 0xCu);
              __swift_destroy_boxed_opaque_existential_1Tm(v152);
              MEMORY[0x1E12A2F50](v152, -1, -1);
              MEMORY[0x1E12A2F50](v151, -1, -1);
            }

            v153 = v202;
            v81 = v200;
            (*(*v55 + 904))(v197);

            MEMORY[0x1EEE9AC00](v154);
            *(&v177 - 4) = v55;
            *(&v177 - 3) = v153;
            *(&v177 - 2) = v203;
            v155 = objc_allocWithZone(type metadata accessor for NLRoutingDecisionMessage());
            v156 = NLRoutingDecisionMessage.init(build:)();

            if (v156)
            {

              v157 = Logger.logObject.getter();
              v158 = static os_log_type_t.debug.getter();
              if (os_log_type_enabled(v157, v158))
              {
                v159 = swift_slowAlloc();
                v160 = v55;
                v161 = swift_slowAlloc();
                aBlock[0] = v161;
                *v159 = 136315138;
                *(v159 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000018, 0x80000001DCA803E0, aBlock);
                _os_log_impl(&dword_1DC659000, v157, v158, "Posting message %s to ConversationBridge", v159, 0xCu);
                __swift_destroy_boxed_opaque_existential_1Tm(v161);
                v162 = v161;
                v55 = v160;
                MEMORY[0x1E12A2F50](v162, -1, -1);
                MEMORY[0x1E12A2F50](v159, -1, -1);
              }

              (*(*v55 + 872))(v156);

              v163 = v178;
            }

            else
            {
              v173 = Logger.logObject.getter();
              v174 = static os_log_type_t.error.getter();
              if (os_log_type_enabled(v173, v174))
              {
                v175 = swift_slowAlloc();
                *v175 = 0;
                _os_log_impl(&dword_1DC659000, v173, v174, "Could not construct NLRoutingDecisionMessage", v175, 2u);
                MEMORY[0x1E12A2F50](v175, -1, -1);
              }

              v163 = v197;
            }

            outlined destroy of ReferenceResolutionClientProtocol?(v196, &_s16SiriMessageTypes22SelectedUserAttributesVSgMd, &_s16SiriMessageTypes22SelectedUserAttributesVSgMR);
            goto LABEL_69;
          }

          v170 = Logger.logObject.getter();
          v171 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v170, v171))
          {
            v172 = swift_slowAlloc();
            *v172 = 0;
            _os_log_impl(&dword_1DC659000, v170, v171, "Could not construct StoppedListeningForSpeechContinuationMessage", v172, 2u);
            MEMORY[0x1E12A2F50](v172, -1, -1);
          }
        }

        else
        {

          v167 = Logger.logObject.getter();
          v168 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v167, v168))
          {
            v169 = swift_slowAlloc();
            *v169 = 0;
            _os_log_impl(&dword_1DC659000, v167, v168, "Could not construct PommesTRPCandidateMessage", v169, 2u);
            MEMORY[0x1E12A2F50](v169, -1, -1);
          }
        }
      }

      else
      {

        v164 = Logger.logObject.getter();
        v165 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v164, v165))
        {
          v166 = swift_slowAlloc();
          *v166 = 0;
          _os_log_impl(&dword_1DC659000, v164, v165, "Could not construct TTResponseMessage", v166, 2u);
          MEMORY[0x1E12A2F50](v166, -1, -1);
        }
      }

      outlined destroy of ReferenceResolutionClientProtocol?(v118, &_s16SiriMessageTypes22SelectedUserAttributesVSgMd, &_s16SiriMessageTypes22SelectedUserAttributesVSgMR);
      v81 = v200;
      goto LABEL_69;
    }

    v84 = v48;

    v81 = v200;
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v85 = type metadata accessor for Logger();
    __swift_project_value_buffer(v85, static Logger.conversationBridge);
    v86 = Logger.logObject.getter();
    v87 = static os_log_type_t.error.getter();
    v88 = os_log_type_enabled(v86, v87);
    v82 = v201;
    if (v88)
    {
      v89 = swift_slowAlloc();
      *v89 = 0;
      _os_log_impl(&dword_1DC659000, v86, v87, "Could not construct TRPCandidateRequestMessage", v89, 2u);
      MEMORY[0x1E12A2F50](v89, -1, -1);
    }
  }

  else
  {

    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v77 = type metadata accessor for Logger();
    __swift_project_value_buffer(v77, static Logger.conversationBridge);
    v78 = Logger.logObject.getter();
    v79 = static os_log_type_t.error.getter();
    v80 = os_log_type_enabled(v78, v79);
    v81 = v200;
    v82 = v201;
    if (v80)
    {
      v83 = swift_slowAlloc();
      *v83 = 0;
      _os_log_impl(&dword_1DC659000, v78, v79, "Could not construct TCUPackage", v83, 2u);
      MEMORY[0x1E12A2F50](v83, -1, -1);
    }
  }

LABEL_69:
  (*(v199 + 8))(v82, v81);
}

uint64_t ConversationRequestProcessor.handleRunPommesResponseMessageInternal(withTextInput:message:)(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v104 = a2;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy21SiriInformationSearch14PommesResponseC0B12MessageTypes0E5ErrorOGMd, &_ss6ResultOy21SiriInformationSearch14PommesResponseC0B12MessageTypes0E5ErrorOGMR);
  MEMORY[0x1EEE9AC00](v98);
  v99 = (&v96 - v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes11PommesErrorOSgMd, &_s16SiriMessageTypes11PommesErrorOSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v100 = &v96 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v96 - v11;
  v13 = type metadata accessor for UserID();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v96 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for UUID();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v96 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  UUID.init()();
  v106 = UUID.uuidString.getter();
  v103 = v21;
  (*(v18 + 8))(v20, v17);
  v22 = v13;
  v23 = v14;
  v101 = a3;
  RunPommesResponseMessage.userId.getter();
  v24 = *(v14 + 48);
  v25 = v24(v12, 1, v22);
  v105 = v16;
  if (v25 == 1)
  {
    (*(v14 + 16))(v16, v4 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_sessionUserId, v22);
    v26 = v24(v12, 1, v22);
    if (v26 != 1)
    {
      v26 = outlined destroy of ReferenceResolutionClientProtocol?(v12, &_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
    }
  }

  else
  {
    v26 = (*(v14 + 32))(v16, v12, v22);
  }

  MEMORY[0x1EEE9AC00](v26);
  v28 = v105;
  v27 = v106;
  *(&v96 - 6) = v4;
  *(&v96 - 5) = v28;
  v29 = v103;
  *(&v96 - 4) = v27;
  *(&v96 - 3) = v29;
  v30 = v104;
  *(&v96 - 2) = a1;
  *(&v96 - 1) = v30;
  v31 = objc_allocWithZone(type metadata accessor for TextBasedResultCandidateMessage());
  v104 = TextBasedResultCandidateMessage.init(build:)();
  v102 = v22;
  if (v104)
  {
    v32 = one-time initialization token for conversationBridge;

    if (v32 != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    __swift_project_value_buffer(v33, static Logger.conversationBridge);
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v107 = v37;
      *v36 = 136315138;
      *(v36 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001FLL, 0x80000001DCA804F0, &v107);
      _os_log_impl(&dword_1DC659000, v34, v35, "Posting message %s to ConversationBridge", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v37);
      MEMORY[0x1E12A2F50](v37, -1, -1);
      MEMORY[0x1E12A2F50](v36, -1, -1);
    }

    (*(*v4 + 768))(v104);

    MEMORY[0x1EEE9AC00](v38);
    v39 = v106;
    *(&v96 - 4) = v4;
    *(&v96 - 3) = v39;
    *(&v96 - 2) = v29;
    v40 = objc_allocWithZone(type metadata accessor for ResultSelectedMessage());
    v41 = MEMORY[0x1E129ECE0](partial apply for closure #2 in ConversationRequestProcessor.handleRunPommesResponseMessageInternal(withTextInput:message:), &v96 - 6);
    if (v41)
    {
      v42 = v41;

      v43 = Logger.logObject.getter();
      v44 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        v107 = v46;
        *v45 = 136315138;
        *(v45 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000015, 0x80000001DCA804D0, &v107);
        _os_log_impl(&dword_1DC659000, v43, v44, "Posting message %s to ConversationBridge", v45, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v46);
        v29 = v103;
        MEMORY[0x1E12A2F50](v46, -1, -1);
        MEMORY[0x1E12A2F50](v45, -1, -1);
      }

      (*(*v4 + 968))(v42);

      MEMORY[0x1EEE9AC00](v47);
      v48 = v105;
      v49 = v106;
      *(&v96 - 6) = v4;
      *(&v96 - 5) = v49;
      *(&v96 - 4) = v29;
      *(&v96 - 3) = v48;
      *(&v96 - 2) = v101;
      v50 = objc_allocWithZone(type metadata accessor for NLResultCandidateMessage());
      v103 = NLResultCandidateMessage.init(build:)();
      if (v103)
      {
        v97 = v42;

        v51 = Logger.logObject.getter();
        v52 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v51, v52))
        {
          v53 = swift_slowAlloc();
          v54 = swift_slowAlloc();
          v107 = v54;
          *v53 = 136315138;
          *(v53 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000018, 0x80000001DCA804B0, &v107);
          _os_log_impl(&dword_1DC659000, v51, v52, "Posting message %s to ConversationBridge", v53, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v54);
          MEMORY[0x1E12A2F50](v54, -1, -1);
          MEMORY[0x1E12A2F50](v53, -1, -1);
        }

        v55 = v100;
        (*(*v4 + 792))(v103);

        v56 = v99;
        RunPommesResponseMessage.pommesResult.getter();
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v57 = type metadata accessor for PommesError();
          v58 = *(v57 - 8);
          (*(v58 + 32))(v55, v56, v57);
          v59 = (*(v58 + 56))(v55, 0, 1, v57);
          v60 = 0;
        }

        else
        {
          v60 = *v56;
          v71 = type metadata accessor for PommesError();
          (*(*(v71 - 8) + 56))(v55, 1, 1, v71);
          v59 = v60;
        }

        MEMORY[0x1EEE9AC00](v59);
        v72 = v106;
        *(&v96 - 6) = v4;
        *(&v96 - 5) = v72;
        *(&v96 - 4) = v29;
        *(&v96 - 3) = v60;
        v73 = v101;
        *(&v96 - 2) = v55;
        *(&v96 - 1) = v73;
        v74 = objc_allocWithZone(type metadata accessor for PommesResultCandidateMessage());
        v75 = PommesResultCandidateMessage.init(build:)();

        if (v75)
        {

          v76 = Logger.logObject.getter();
          v77 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v76, v77))
          {
            v78 = swift_slowAlloc();
            v79 = swift_slowAlloc();
            v107 = v79;
            *v78 = 136315138;
            *(v78 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001CLL, 0x80000001DCA80490, &v107);
            _os_log_impl(&dword_1DC659000, v76, v77, "Posting message %s to ConversationBridge", v78, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v79);
            v80 = v79;
            v55 = v100;
            MEMORY[0x1E12A2F50](v80, -1, -1);
            MEMORY[0x1E12A2F50](v78, -1, -1);
          }

          (*(*v4 + 840))(v75);

          MEMORY[0x1EEE9AC00](v81);
          v82 = v106;
          *(&v96 - 4) = v4;
          *(&v96 - 3) = v82;
          *(&v96 - 2) = v29;
          v83 = objc_allocWithZone(type metadata accessor for NLRoutingDecisionMessage());
          v84 = NLRoutingDecisionMessage.init(build:)();

          if (v84)
          {

            v85 = Logger.logObject.getter();
            v86 = static os_log_type_t.debug.getter();
            if (os_log_type_enabled(v85, v86))
            {
              v87 = swift_slowAlloc();
              v88 = swift_slowAlloc();
              v107 = v88;
              *v87 = 136315138;
              *(v87 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000018, 0x80000001DCA803E0, &v107);
              _os_log_impl(&dword_1DC659000, v85, v86, "Posting message %s to ConversationBridge", v87, 0xCu);
              __swift_destroy_boxed_opaque_existential_1Tm(v88);
              MEMORY[0x1E12A2F50](v88, -1, -1);
              MEMORY[0x1E12A2F50](v87, -1, -1);
            }

            (*(*v4 + 872))(v84);
          }

          else
          {
            v92 = Logger.logObject.getter();
            v93 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v92, v93))
            {
              v94 = swift_slowAlloc();
              *v94 = 0;
              _os_log_impl(&dword_1DC659000, v92, v93, "Could not construct NLRoutingDecisionMessage", v94, 2u);
              MEMORY[0x1E12A2F50](v94, -1, -1);
            }
          }
        }

        else
        {

          v89 = Logger.logObject.getter();
          v90 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v89, v90))
          {
            v91 = swift_slowAlloc();
            *v91 = 0;
            _os_log_impl(&dword_1DC659000, v89, v90, "Could not construct PommesResultCandidateMessage", v91, 2u);
            MEMORY[0x1E12A2F50](v91, -1, -1);
          }
        }

        outlined destroy of ReferenceResolutionClientProtocol?(v55, &_s16SiriMessageTypes11PommesErrorOSgMd, &_s16SiriMessageTypes11PommesErrorOSgMR);
      }

      else
      {

        v68 = Logger.logObject.getter();
        v69 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v68, v69))
        {
          v70 = swift_slowAlloc();
          *v70 = 0;
          _os_log_impl(&dword_1DC659000, v68, v69, "Could not construct NLResultCandidateMessage", v70, 2u);
          MEMORY[0x1E12A2F50](v70, -1, -1);
        }
      }
    }

    else
    {

      v65 = Logger.logObject.getter();
      v66 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v65, v66))
      {
        v67 = swift_slowAlloc();
        *v67 = 0;
        _os_log_impl(&dword_1DC659000, v65, v66, "Could not construct ResultSelectedMessage", v67, 2u);
        MEMORY[0x1E12A2F50](v67, -1, -1);
      }
    }
  }

  else
  {

    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v61 = type metadata accessor for Logger();
    __swift_project_value_buffer(v61, static Logger.conversationBridge);
    v62 = Logger.logObject.getter();
    v63 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      *v64 = 0;
      _os_log_impl(&dword_1DC659000, v62, v63, "Could not construct TextBasedResultCandidateMessage", v64, 2u);
      MEMORY[0x1E12A2F50](v64, -1, -1);
    }
  }

  return (*(v23 + 8))(v105, v102);
}

id closure #1 in ConversationRequestProcessor.handleRunPommesResponseMessage(withSpeechPackage:message:)(id result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {
    v5 = result;
    v6 = MEMORY[0x1E12A1410](a2, a3);
    [v5 setTcuId_];

    return [v5 setSpeechPackage_];
  }

  return result;
}

uint64_t closure #2 in ConversationRequestProcessor.handleRunPommesResponseMessage(withSpeechPackage:message:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v27[1] = a3;
  v28 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v27 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = v27 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes0B6SourceOSgMd, &_s16SiriMessageTypes0B6SourceOSgMR);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = v27 - v15;
  v17 = *MEMORY[0x1E69D0460];
  v18 = type metadata accessor for MessageSource();
  v19 = *(v18 - 8);
  (*(v19 + 104))(v16, v17, v18);
  (*(v19 + 56))(v16, 0, 1, v18);
  TRPCandidateRequestMessage.Builder.source.setter();

  TRPCandidateRequestMessage.Builder.assistantId.setter();
  v20 = OBJC_IVAR____TtC14SiriKitRuntime32ConversationRequestProcessorBase_sessionId;
  v21 = type metadata accessor for UUID();
  v22 = *(v21 - 8);
  (*(v22 + 16))(v13, &a2[v20], v21);
  (*(v22 + 56))(v13, 0, 1, v21);
  TRPCandidateRequestMessage.Builder.sessionId.setter();

  TRPCandidateRequestMessage.Builder.requestId.setter();

  TRPCandidateRequestMessage.Builder.trpCandidateId.setter();
  v23 = type metadata accessor for UserID();
  v24 = *(v23 - 8);
  (*(v24 + 16))(v10, v28, v23);
  (*(v24 + 56))(v10, 0, 1, v23);
  TRPCandidateRequestMessage.Builder.userId.setter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo13SMTTCUPackageC_16SiriMessageTypes33ImmutableConversationSessionState_ptGMd, &_ss23_ContiguousArrayStorageCySo13SMTTCUPackageC_16SiriMessageTypes33ImmutableConversationSessionState_ptGMR);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1DCA66060;
  *(v25 + 32) = a6;
  (*(*a2 + 424))(v29, a6);
  __swift_project_boxed_opaque_existential_1(v29, v29[3]);
  dispatch thunk of ConversationSessionState.immutableSnapshot()();
  __swift_destroy_boxed_opaque_existential_1Tm(v29);
  return TRPCandidateRequestMessage.Builder.tcuToContextList.setter();
}

id closure #3 in ConversationRequestProcessor.handleRunPommesResponseMessage(withSpeechPackage:message:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  v42 = a8;
  v43 = a4;
  v40[1] = a7;
  v45 = a5;
  v46 = a6;
  v44 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes22SelectedUserAttributesVSgMd, &_s16SiriMessageTypes22SelectedUserAttributesVSgMR);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v41 = v40 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = v40 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMd, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMR);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = v40 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = v40 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = v40 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes0B6SourceOSgMd, &_s16SiriMessageTypes0B6SourceOSgMR);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v25 = v40 - v24;
  v26 = *MEMORY[0x1E69D0460];
  v27 = type metadata accessor for MessageSource();
  v28 = *(v27 - 8);
  (*(v28 + 104))(v25, v26, v27);
  (*(v28 + 56))(v25, 0, 1, v27);
  TTResponseMessage.Builder.source.setter();

  TTResponseMessage.Builder.assistantId.setter();
  v29 = OBJC_IVAR____TtC14SiriKitRuntime32ConversationRequestProcessorBase_sessionId;
  v30 = type metadata accessor for UUID();
  v31 = *(v30 - 8);
  (*(v31 + 16))(v22, &a2[v29], v30);
  (*(v31 + 56))(v22, 0, 1, v30);
  TTResponseMessage.Builder.sessionId.setter();

  TTResponseMessage.Builder.requestId.setter();

  TTResponseMessage.Builder.trpCandidateId.setter();
  v32 = type metadata accessor for UserID();
  v33 = *(v32 - 8);
  (*(v33 + 16))(v19, v45, v32);
  (*(v33 + 56))(v19, 0, 1, v32);
  TTResponseMessage.Builder.userId.setter();
  v34 = *MEMORY[0x1E69D0270];
  v35 = type metadata accessor for TTResponseMessage.MitigationDecision();
  v36 = *(v35 - 8);
  (*(v36 + 104))(v16, v34, v35);
  (*(v36 + 56))(v16, 0, 1, v35);
  TTResponseMessage.Builder.mitigationDecision.setter();
  result = [v46 tcuId];
  if (result)
  {
    v38 = result;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    RunPommesResponseMessage.nlResponse.getter();
    TCUMappedNLResponse.init(tcuId:nlResponse:)();
    v39 = type metadata accessor for TCUMappedNLResponse();
    (*(*(v39 - 8) + 56))(v13, 0, 1, v39);
    TTResponseMessage.Builder.tcuMappedNLResponse.setter();
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So11SMTTCUStateVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    TTResponseMessage.Builder.tcuStateDict.setter();
    outlined init with copy of ReferenceResolutionClientProtocol?(v42, v41, &_s16SiriMessageTypes22SelectedUserAttributesVSgMd, &_s16SiriMessageTypes22SelectedUserAttributesVSgMR);
    return TTResponseMessage.Builder.selectedUserAttributes.setter();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t closure #4 in ConversationRequestProcessor.handleRunPommesResponseMessage(withSpeechPackage:message:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v27[0] = a3;
  v27[1] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20SiriInformationTypes18PommesSearchReasonOSgMd, &_s20SiriInformationTypes18PommesSearchReasonOSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v27 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy21SiriInformationSearch14PommesResponseC0B12MessageTypes0E5ErrorOGSgMd, &_ss6ResultOy21SiriInformationSearch14PommesResponseC0B12MessageTypes0E5ErrorOGSgMR);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v27 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = v27 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes0B6SourceOSgMd, &_s16SiriMessageTypes0B6SourceOSgMR);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = v27 - v16;
  v18 = *MEMORY[0x1E69D0460];
  v19 = type metadata accessor for MessageSource();
  v20 = *(v19 - 8);
  (*(v20 + 104))(v17, v18, v19);
  (*(v20 + 56))(v17, 0, 1, v19);
  PommesTRPCandidateMessage.Builder.source.setter();

  PommesTRPCandidateMessage.Builder.assistantId.setter();
  v21 = OBJC_IVAR____TtC14SiriKitRuntime32ConversationRequestProcessorBase_sessionId;
  v22 = type metadata accessor for UUID();
  v23 = *(v22 - 8);
  (*(v23 + 16))(v14, &a2[v21], v22);
  (*(v23 + 56))(v14, 0, 1, v22);
  PommesTRPCandidateMessage.Builder.sessionId.setter();

  PommesTRPCandidateMessage.Builder.requestId.setter();
  swift_bridgeObjectRetain_n();
  PommesTRPCandidateMessage.Builder.trpCandidateId.setter();
  RunPommesResponseMessage.pommesResult.getter();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy21SiriInformationSearch14PommesResponseC0B12MessageTypes0E5ErrorOGMd, &_ss6ResultOy21SiriInformationSearch14PommesResponseC0B12MessageTypes0E5ErrorOGMR);
  (*(*(v24 - 8) + 56))(v11, 0, 1, v24);
  PommesTRPCandidateMessage.Builder.pommesResult.setter();
  RunPommesResponseMessage.pommesSearchReason.getter();
  v25 = type metadata accessor for PommesSearchReason();
  (*(*(v25 - 8) + 56))(v8, 0, 1, v25);
  PommesTRPCandidateMessage.Builder.searchReason.setter();
  return PommesTRPCandidateMessage.Builder.tcuId.setter();
}

uint64_t closure #5 in ConversationRequestProcessor.handleRunPommesResponseMessage(withSpeechPackage:message:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v18 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes0B6SourceOSgMd, &_s16SiriMessageTypes0B6SourceOSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v18 - v9;
  v11 = *MEMORY[0x1E69D0460];
  v12 = type metadata accessor for MessageSource();
  v13 = *(v12 - 8);
  (*(v13 + 104))(v10, v11, v12);
  (*(v13 + 56))(v10, 0, 1, v12);
  StoppedListeningForSpeechContinuationMessage.Builder.source.setter();

  StoppedListeningForSpeechContinuationMessage.Builder.assistantId.setter();
  v14 = OBJC_IVAR____TtC14SiriKitRuntime32ConversationRequestProcessorBase_sessionId;
  v15 = type metadata accessor for UUID();
  v16 = *(v15 - 8);
  (*(v16 + 16))(v7, &a2[v14], v15);
  (*(v16 + 56))(v7, 0, 1, v15);
  StoppedListeningForSpeechContinuationMessage.Builder.sessionId.setter();

  StoppedListeningForSpeechContinuationMessage.Builder.requestId.setter();

  return StoppedListeningForSpeechContinuationMessage.Builder.lastTRPId.setter();
}

uint64_t closure #1 in ConversationRequestProcessor.handleRunPommesResponseMessageInternal(withTextInput:message:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v28 = a4;
  v29 = a6;
  v27 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v26 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v26 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes0B6SourceOSgMd, &_s16SiriMessageTypes0B6SourceOSgMR);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v26 - v15;
  v17 = *MEMORY[0x1E69D0460];
  v18 = type metadata accessor for MessageSource();
  v19 = *(v18 - 8);
  (*(v19 + 104))(v16, v17, v18);
  (*(v19 + 56))(v16, 0, 1, v18);
  TextBasedResultCandidateMessage.Builder.source.setter();

  TextBasedResultCandidateMessage.Builder.assistantId.setter();
  v20 = OBJC_IVAR____TtC14SiriKitRuntime32ConversationRequestProcessorBase_sessionId;
  v21 = type metadata accessor for UUID();
  v22 = *(v21 - 8);
  (*(v22 + 16))(v13, &a2[v20], v21);
  (*(v22 + 56))(v13, 0, 1, v21);
  TextBasedResultCandidateMessage.Builder.sessionId.setter();

  TextBasedResultCandidateMessage.Builder.requestId.setter();
  v23 = type metadata accessor for UserID();
  v24 = *(v23 - 8);
  (*(v24 + 16))(v10, v27, v23);
  (*(v24 + 56))(v10, 0, 1, v23);
  TextBasedResultCandidateMessage.Builder.userId.setter();

  TextBasedResultCandidateMessage.Builder.resultCandidateId.setter();

  return TextBasedResultCandidateMessage.Builder.utterance.setter();
}

uint64_t closure #2 in ConversationRequestProcessor.handleRunPommesResponseMessageInternal(withTextInput:message:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v18 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes0B6SourceOSgMd, &_s16SiriMessageTypes0B6SourceOSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v18 - v9;
  v11 = *MEMORY[0x1E69D0460];
  v12 = type metadata accessor for MessageSource();
  v13 = *(v12 - 8);
  (*(v13 + 104))(v10, v11, v12);
  (*(v13 + 56))(v10, 0, 1, v12);
  ResultSelectedMessageBase.Builder.source.setter();

  ResultSelectedMessageBase.Builder.assistantId.setter();
  v14 = OBJC_IVAR____TtC14SiriKitRuntime32ConversationRequestProcessorBase_sessionId;
  v15 = type metadata accessor for UUID();
  v16 = *(v15 - 8);
  (*(v16 + 16))(v7, &a2[v14], v15);
  (*(v16 + 56))(v7, 0, 1, v15);
  ResultSelectedMessageBase.Builder.sessionId.setter();

  ResultSelectedMessageBase.Builder.requestId.setter();

  ResultSelectedMessageBase.Builder.resultCandidateId.setter();
  ResultSelectedMessageBase.Builder.isMitigated.setter();
  return ResultSelectedMessageBase.Builder.endpointMode.setter();
}

uint64_t closure #3 in ConversationRequestProcessor.handleRunPommesResponseMessageInternal(withTextInput:message:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v39 = a5;
  v38[1] = a4;
  v38[2] = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A35_Nlu_External_LanguageVariantResultVSgMd, &_s12SiriNLUTypes0A35_Nlu_External_LanguageVariantResultVSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v40 = v38 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v38[3] = v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v38 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A28_Nlu_External_ResponseStatusV0F4CodeOSgMd, &_s12SiriNLUTypes0A28_Nlu_External_ResponseStatusV0F4CodeOSgMR);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = v38 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = v38 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes0B6SourceOSgMd, &_s16SiriMessageTypes0B6SourceOSgMR);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = v38 - v20;
  v22 = *MEMORY[0x1E69D0460];
  v23 = type metadata accessor for MessageSource();
  v24 = *(v23 - 8);
  (*(v24 + 104))(v21, v22, v23);
  (*(v24 + 56))(v21, 0, 1, v23);
  NLResultCandidateMessage.Builder.source.setter();

  NLResultCandidateMessage.Builder.assistantId.setter();
  v25 = OBJC_IVAR____TtC14SiriKitRuntime32ConversationRequestProcessorBase_sessionId;
  v26 = type metadata accessor for UUID();
  v27 = *(v26 - 8);
  (*(v27 + 16))(v18, &a2[v25], v26);
  (*(v27 + 56))(v18, 0, 1, v26);
  NLResultCandidateMessage.Builder.sessionId.setter();

  NLResultCandidateMessage.Builder.requestId.setter();

  NLResultCandidateMessage.Builder.resultCandidateId.setter();
  v28 = *MEMORY[0x1E69D0AA0];
  v29 = type metadata accessor for Siri_Nlu_External_ResponseStatus.StatusCode();
  v30 = *(v29 - 8);
  (*(v30 + 104))(v15, v28, v29);
  (*(v30 + 56))(v15, 0, 1, v29);
  NLResultCandidateMessage.Builder.responseStatusCode.setter();
  v31 = type metadata accessor for UserID();
  v32 = *(v31 - 8);
  (*(v32 + 16))(v12, v39, v31);
  (*(v32 + 56))(v12, 0, 1, v31);
  NLResultCandidateMessage.Builder.userId.setter();
  v33 = RunPommesResponseMessage.nlResponse.getter();
  NLParseResponse.userParses.getter();

  NLResultCandidateMessage.Builder.userParses.setter();
  v34 = RunPommesResponseMessage.nlResponse.getter();
  NLParseResponse.fallbackParse.getter();

  NLResultCandidateMessage.Builder.fallbackParse.setter();
  v35 = RunPommesResponseMessage.nlResponse.getter();
  NLParseResponse.languageVariantResult.getter();

  NLResultCandidateMessage.Builder.languageVariantResult.setter();
  v36 = RunPommesResponseMessage.nlResponse.getter();
  NLParseResponse.responseVariantResult.getter();

  return NLResultCandidateMessage.Builder.responseVariantResult.setter();
}

uint64_t closure #4 in ConversationRequestProcessor.handleRunPommesResponseMessageInternal(withTextInput:message:)(uint64_t a1, char *a2, void *a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v30 = a6;
  v31 = a7;
  v29[0] = a5;
  v29[1] = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20SiriInformationTypes18PommesSearchReasonOSgMd, &_s20SiriInformationTypes18PommesSearchReasonOSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v29 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes11PommesErrorOSgMd, &_s16SiriMessageTypes11PommesErrorOSgMR);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = v29 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = v29 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes0B6SourceOSgMd, &_s16SiriMessageTypes0B6SourceOSgMR);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = v29 - v18;
  v20 = *MEMORY[0x1E69D0460];
  v21 = type metadata accessor for MessageSource();
  v22 = *(v21 - 8);
  (*(v22 + 104))(v19, v20, v21);
  (*(v22 + 56))(v19, 0, 1, v21);
  v23 = v29[0];
  PommesResultCandidateMessage.Builder.source.setter();

  PommesResultCandidateMessage.Builder.assistantId.setter();
  v24 = OBJC_IVAR____TtC14SiriKitRuntime32ConversationRequestProcessorBase_sessionId;
  v25 = type metadata accessor for UUID();
  v26 = *(v25 - 8);
  (*(v26 + 16))(v16, &a2[v24], v25);
  (*(v26 + 56))(v16, 0, 1, v25);
  PommesResultCandidateMessage.Builder.sessionId.setter();

  PommesResultCandidateMessage.Builder.requestId.setter();

  PommesResultCandidateMessage.Builder.resultCandidateId.setter();
  PommesResultCandidateMessage.Builder.pommesResponse.setter();
  outlined init with copy of ReferenceResolutionClientProtocol?(v30, v13, &_s16SiriMessageTypes11PommesErrorOSgMd, &_s16SiriMessageTypes11PommesErrorOSgMR);
  PommesResultCandidateMessage.Builder.error.setter();
  RunPommesResponseMessage.pommesSearchReason.getter();
  v27 = type metadata accessor for PommesSearchReason();
  (*(*(v27 - 8) + 56))(v10, 0, 1, v27);
  return PommesResultCandidateMessage.Builder.searchReason.setter();
}

uint64_t closure #1 in ConversationRequestProcessor.nlRoutingDecisionMessage(trpId:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes017NLRoutingDecisionB0C07RoutingE0OSgMd, &_s16SiriMessageTypes017NLRoutingDecisionB0C07RoutingE0OSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v24 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v24 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes0B6SourceOSgMd, &_s16SiriMessageTypes0B6SourceOSgMR);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v24 - v12;
  v14 = *MEMORY[0x1E69D0460];
  v15 = type metadata accessor for MessageSource();
  v16 = *(v15 - 8);
  (*(v16 + 104))(v13, v14, v15);
  (*(v16 + 56))(v13, 0, 1, v15);
  NLRoutingDecisionMessage.Builder.source.setter();

  NLRoutingDecisionMessage.Builder.assistantId.setter();
  v17 = OBJC_IVAR____TtC14SiriKitRuntime32ConversationRequestProcessorBase_sessionId;
  v18 = type metadata accessor for UUID();
  v19 = *(v18 - 8);
  (*(v19 + 16))(v10, &a2[v17], v18);
  (*(v19 + 56))(v10, 0, 1, v18);
  NLRoutingDecisionMessage.Builder.sessionId.setter();

  NLRoutingDecisionMessage.Builder.requestId.setter();

  NLRoutingDecisionMessage.Builder.trpCandidateId.setter();
  v20 = *MEMORY[0x1E69D02D8];
  v21 = type metadata accessor for NLRoutingDecisionMessage.RoutingDecision();
  v22 = *(v21 - 8);
  (*(v22 + 104))(v7, v20, v21);
  (*(v22 + 56))(v7, 0, 1, v21);
  return NLRoutingDecisionMessage.Builder.routingDecision.setter();
}

uint64_t thunk for @escaping @callee_guaranteed (@guaranteed SMTTCUPackageMutating?) -> ()(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  swift_unknownObjectRetain();
  v3(a2);

  return swift_unknownObjectRelease();
}

uint64_t outlined init with take of SelectedUserAttributes?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes22SelectedUserAttributesVSgMd, &_s16SiriMessageTypes22SelectedUserAttributesVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t one-time initialization function for warmUpSignals()
{
  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NSSet, 0x1E695DFD8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1DCA69C10;
  v1 = type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for SAIntentGroupIntentSignal, 0x1E69C7858);
  *(v0 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo25SAIntentGroupIntentSignalCmMd, &_sSo25SAIntentGroupIntentSignalCmMR);
  *(v0 + 32) = v1;
  v2 = type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for SAIntentGroupSiriKitPluginSignal, 0x1E69C78B0);
  *(v0 + 88) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo32SAIntentGroupSiriKitPluginSignalCmMd, &_sSo32SAIntentGroupSiriKitPluginSignalCmMR);
  *(v0 + 64) = v2;
  v3 = type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for SAAceDomainSignal, 0x1E69C7700);
  *(v0 + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17SAAceDomainSignalCmMd, &_sSo17SAAceDomainSignalCmMR);
  *(v0 + 96) = v3;
  v4 = type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for SAMPMusicPlaybackImminent, 0x1E69C78E0);
  *(v0 + 152) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo25SAMPMusicPlaybackImminentCmMd, &_sSo25SAMPMusicPlaybackImminentCmMR);
  *(v0 + 128) = v4;
  v5 = type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for SADonateRankedQueriesToPortrait, 0x1E69C77D0);
  *(v0 + 184) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo31SADonateRankedQueriesToPortraitCmMd, &_sSo31SADonateRankedQueriesToPortraitCmMR);
  *(v0 + 160) = v5;
  result = MEMORY[0x1E12A1C90](v0);
  static ConversationRequestProcessor.warmUpSignals = result;
  return result;
}

uint64_t *ConversationRequestProcessor.warmUpSignals.unsafeMutableAddressor()
{
  if (one-time initialization token for warmUpSignals != -1)
  {
    swift_once();
  }

  return &static ConversationRequestProcessor.warmUpSignals;
}

id static ConversationRequestProcessor.warmUpSignals.getter()
{
  if (one-time initialization token for warmUpSignals != -1)
  {
    swift_once();
  }

  v1 = static ConversationRequestProcessor.warmUpSignals;

  return v1;
}

uint64_t ConversationRequestProcessor.sessionState.setter(__int128 *a1)
{
  v3 = OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_sessionState;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1Tm((v1 + v3));
  outlined init with take of ReferenceResolutionClientProtocol(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t ConversationRequestProcessor.sentResultCandidateSelected.getter()
{
  v1 = OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_sentResultCandidateSelected;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t ConversationRequestProcessor.sentResultCandidateSelected.setter(char a1)
{
  v3 = OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_sentResultCandidateSelected;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t ConversationRequestProcessor.didCommitExecution.getter()
{
  v1 = OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_didCommitExecution;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t ConversationRequestProcessor.didCommitExecution.setter(char a1)
{
  v3 = OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_didCommitExecution;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

void *ConversationRequestProcessor.muxContextMessage.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_muxContextMessage);
  v2 = v1;
  return v1;
}

uint64_t ConversationRequestProcessor.entitiesCollected.getter()
{
  v1 = OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_entitiesCollected;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t ConversationRequestProcessor.entitiesCollected.setter(char a1)
{
  v3 = OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_entitiesCollected;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t ConversationRequestProcessor.sessionUserId.getter@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = a2(0);
  v7 = *(*(v6 - 8) + 16);

  return v7(a3, v3 + v5, v6);
}

uint64_t key path setter for ConversationRequestProcessor.userSessionState : ConversationRequestProcessor(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UserSessionState();
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7, a1, v5);
  return (*(**a2 + 576))(v7);
}

uint64_t ConversationRequestProcessor.userSessionState.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_userSessionState;
  swift_beginAccess();
  v4 = type metadata accessor for UserSessionState();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

void *ConversationRequestProcessor.__allocating_init(assistantId:sessionId:sessionConfiguration:requestId:rootRequestId:name:messagePublisher:executionClient:executionOutputSubmitter:decisionMaker:preExecutionActionHandler:sessionState:instrumentationUtil:requestDispatcherServiceHelper:isFirstRequestInSession:networkAvailabilityProvider:coreTelephonyServiceProvider:rrClient:correctionsPlatformClient:sessionUserId:recentDialogTracker:userSessionState:featureChecker:isSystemAssistantExperienceEnabled:muxContextMessage:isMUXEnabled:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, void *a12, void *a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, void *a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, char a28, void *a29, char a30)
{

  v31 = swift_allocObject();
  v32 = OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_asyncWork;
  type metadata accessor for ConcurrentTaskPool();
  v33 = swift_allocObject();
  *(v33 + 16) = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v34 = swift_allocObject();
  *(v34 + 16) = 0;
  *(v33 + 24) = v34;
  *(v31 + v32) = v33;
  v35 = v31 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_state;
  *v35 = 0;
  *(v35 + 1) = 0;
  v35[16] = 3;
  *(v31 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_rraasCollectionTask) = 0;
  *(v31 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_sentResultCandidateSelected) = 0;
  *(v31 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_didCommitExecution) = 0;
  *(v31 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_entitiesCollected) = 2;
  v36 = (v31 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_gestureRCID);
  *v36 = 0;
  v36[1] = 0;
  v37 = OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_sessionConfiguration;
  v38 = type metadata accessor for SessionConfiguration();
  v110 = *(v38 - 8);
  v111 = v38;
  v116 = a4;
  (*(v110 + 16))(v31 + v37, a4);
  v39 = objc_opt_self();

  v40 = [v39 sharedPreferences];
  v41 = [objc_opt_self() clientWithIdentifier_];
  v42 = type metadata accessor for TrialExperimentationAssetManager();
  v43 = swift_allocObject();
  v44 = [objc_allocWithZone(type metadata accessor for ExperimentationAnalyticsManager()) init];
  *(v43 + 16) = v41;
  *(v43 + 24) = v44;
  if (one-time initialization token for instance != -1)
  {
    swift_once();
  }

  v45 = static SelfReflectionCurareDonator.instance;
  type metadata accessor for SelfReflectionAgent();
  v46 = swift_allocObject();
  v131 = v42;
  v132 = &protocol witness table for TrialExperimentationAssetManager;
  *&v130 = v43;
  type metadata accessor for TaggingService();
  swift_allocObject();

  *(v46 + 104) = TaggingService.init()();
  *(v46 + 144) = 0;
  *(v46 + 128) = 0u;
  *(v46 + 112) = 0u;
  *(v46 + 16) = a17;
  *(v46 + 24) = a20;
  *(v46 + 32) = v40;
  *(v46 + 40) = a28 & 1;
  outlined init with take of ReferenceResolutionClientProtocol(&v130, v46 + 48);
  swift_beginAccess();
  *(v46 + 128) = 0;
  swift_beginAccess();
  *(v46 + 136) = 0;
  swift_beginAccess();
  *(v46 + 144) = 0;
  *(v46 + 152) = 33686018;
  *(v46 + 156) = 514;
  *(v46 + 160) = 0;
  *(v46 + 168) = 1;
  *(v46 + 176) = 0;
  *(v46 + 184) = 1;
  *(v46 + 185) = 2;
  *(v46 + 192) = 0;
  *(v46 + 200) = 0;
  LOBYTE(v127) = 1;
  LOBYTE(v126[0]) = 1;
  *(v46 + 208) = 33686018;
  *(v46 + 212) = 514;
  *(v46 + 216) = 0;
  *(v46 + 224) = 1;
  *(v46 + 225) = v135[0];
  *(v46 + 228) = *(v135 + 3);
  *(v46 + 232) = 0;
  *(v46 + 240) = 1;
  *(v46 + 241) = 2;
  v47 = v133;
  *(v46 + 246) = v134;
  *(v46 + 242) = v47;
  *(v46 + 248) = 0;
  *(v46 + 256) = 0;
  *(v46 + 88) = v45;
  *(v46 + 264) = 0;
  *(v46 + 96) = 0;
  v48 = OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_selfReflectionAgent;
  *(v31 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_selfReflectionAgent) = v46;
  outlined init with copy of ReferenceResolutionClientProtocol(a12, v31 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_executionClient);
  v49 = a13[3];
  v50 = *(*a13 + 152);
  v51 = swift_unknownObjectRetain();
  LOBYTE(v46) = v50(v51);
  outlined init with copy of ReferenceResolutionClientProtocol((a13 + 4), &v130);
  v52 = *(v31 + v48);
  v53 = type metadata accessor for FeatureChecker();
  v54 = swift_allocObject();
  v106 = a29;

  *(v54 + 16) = AFDeviceSupportsSAEByDeviceCapabilityAndFeatureFlags();
  v128 = &type metadata for IntelligenceFlowFeatureFlag;
  v129 = lazy protocol witness table accessor for type IntelligenceFlowFeatureFlag and conformance IntelligenceFlowFeatureFlag();
  LOBYTE(v50) = isFeatureEnabled(_:)();
  __swift_destroy_boxed_opaque_existential_1Tm(&v127);
  *(v54 + 17) = v50 & 1;
  type metadata accessor for ConversationOutputSubmitter();
  v55 = swift_allocObject();
  v128 = v53;
  v129 = &protocol witness table for FeatureChecker;
  *&v127 = v54;
  v56 = swift_allocObject();
  v57 = MEMORY[0x1E69E7CC0];
  *(v56 + 16) = MEMORY[0x1E69E7CC0];
  v58 = swift_allocObject();
  *(v58 + 16) = 0;
  *(v56 + 24) = v58;
  *(v55 + 16) = v56;
  *(v55 + 88) = 0;
  *(v55 + 80) = 0;
  *(v55 + 96) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_ySo13SABaseCommandCSg_s5Error_pSgt14SiriKitRuntime15MessageBusActorCYccTt0g5Tf4g_n(v57);
  *(v55 + 104) = 30000000000;
  *(v55 + 24) = v49;
  *(v55 + 72) = v46 & 1;
  swift_beginAccess();
  v59 = *(v55 + 80);
  *(v55 + 80) = a29;

  outlined init with take of ReferenceResolutionClientProtocol(&v130, v55 + 32);
  swift_beginAccess();
  *(v55 + 88) = v52;

  outlined init with take of ReferenceResolutionClientProtocol(&v127, v55 + 112);
  *(v31 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_executionOutputSubmitter) = v55;
  *(v31 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_decisionMaker) = a14;
  *(v31 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_preExecutionActionHandler) = a15;
  *(v31 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_requestDispatcherServiceHelper) = a18;
  outlined init with copy of ReferenceResolutionClientProtocol(a16, v31 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_sessionState);
  *(v31 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_instrumentationUtil) = a17;
  *(v31 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_isFirstRequestInSession) = a19 & 1;
  *(v31 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_networkAvailabilityProvider) = a20;
  *(v31 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_coreTelephonyServiceProvider) = a21;
  outlined init with copy of ReferenceResolutionClientProtocol(a22, v31 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_rrClient);
  outlined init with copy of ReferenceResolutionClientProtocol(a23, v31 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_correctionsPlatformClient);
  *(v31 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_muxContextMessage) = a29;
  v60 = OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_sessionUserId;
  v61 = type metadata accessor for UserID();
  v118 = *(v61 - 8);
  v119 = v61;
  v105 = *(v118 + 16);
  v105(v31 + v60, a24);
  *(v31 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_isMUXEnabled) = a30 & 1;
  v62 = OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_userSessionState;
  v63 = type metadata accessor for UserSessionState();
  v108 = *(v63 - 8);
  v109 = v63;
  (*(v108 + 16))(v31 + v62, a26);
  outlined init with copy of ReferenceResolutionClientProtocol(a27, v31 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_featureChecker);
  *(v31 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_recentDialogTracker) = a25;
  v64 = *(*a25 + 224);

  v117 = v106;

  swift_unknownObjectRetain();
  v64(a5, a6, a3);
  *(v31 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_isSystemAssistantExperienceEnabled) = a28 & 1;
  v65 = a23;
  if (one-time initialization token for sharedInstance != -1)
  {
    swift_once();
  }

  v66 = static DeviceContextHelper.sharedInstance;
  v67 = (v31 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_contextDonator);
  v68 = type metadata accessor for DeviceContextHelper();
  v67[3] = v68;
  v67[4] = &protocol witness table for DeviceContextHelper;
  *v67 = v66;
  type metadata accessor for ConversationBridgeProcessorDelegate();
  v69 = swift_allocObject();
  swift_weakInit();
  v70 = a18;
  *(v69 + 24) = a18;
  *(v31 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_executionBridgeProcessorDelegate) = v69;
  if ((a30 & 1) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy16SiriMessageTypes6UserIDVGMd, &_ss23_ContiguousArrayStorageCy16SiriMessageTypes6UserIDVGMR);
    v107 = v68;
    v77 = (*(v118 + 80) + 32) & ~*(v118 + 80);
    v78 = swift_allocObject();
    *(v78 + 16) = xmmword_1DCA66060;
    (v105)(v78 + v77, a24, v119);
    swift_unknownObjectRetain();

    v104 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC16SiriMessageTypes6UserIDV_Tt0g5Tf4g_n(v78);
    swift_setDeallocating();
    v79 = *(v118 + 8);
    v79(v78 + v77, v119);
    swift_deallocClassInstance();
    v76 = a22;
    v80 = swift_allocObject();
    *(v80 + 16) = xmmword_1DCA66060;
    v73 = v104;
    (v105)(v80 + v77, a24, v119);
    v121 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC16SiriMessageTypes6UserIDV_Tt0g5Tf4g_n(v80);
    swift_setDeallocating();
    v81 = v80 + v77;
    v68 = v107;
    v65 = a23;
    v79(v81, v119);
    swift_deallocClassInstance();
    v75 = a16;
    v72 = a18;
    goto LABEL_9;
  }

  if (a29)
  {
    v71 = v117;
    v72 = a18;
    swift_unknownObjectRetain();

    v73 = specialized static ConversationMUXUtils.getAllUserIds(from:)();
    specialized static ConversationMUXUtils.getAllKnownUserIds(from:)();
    v121 = v74;

    v75 = a16;
    v76 = a22;
LABEL_9:
    v82 = type metadata accessor for MultiUserContextUpdater();
    outlined init with copy of ReferenceResolutionClientProtocol(v75, &v130);
    outlined init with copy of ReferenceResolutionClientProtocol(v76, &v127);
    outlined init with copy of ReferenceResolutionClientProtocol(v65, v126);
    ObjectType = swift_getObjectType();
    v125 = v66;

    swift_unknownObjectRetain();
    v84 = a2;

    v85 = a6;

    v86 = a8;

    v103 = ObjectType;
    v102 = v68;
    v87 = a5;
    *(&v101 + 1) = v73;
    *&v101 = a17;
    v88 = a7;
    v89 = a1;
    v90 = specialized MultiUserContextUpdater.__allocating_init(sessionState:rraasClient:correctionsPlatformClient:serviceHelper:assistantId:requestId:rootRequestId:contextDonator:instrumentationUtil:userIdSet:knownUserIdSet:)(&v130, &v127, v126, v72, a1, a2, a5, a6, a7, a8, &v125, v101, v121, v82, v102, v103, &protocol witness table for DeviceContextHelper);
    v91 = &protocol witness table for MultiUserContextUpdater;
    v70 = v72;
    goto LABEL_10;
  }

  v96 = one-time initialization token for conversationBridge;
  swift_unknownObjectRetain();

  if (v96 != -1)
  {
    swift_once();
  }

  v87 = a5;
  v97 = type metadata accessor for Logger();
  __swift_project_value_buffer(v97, static Logger.conversationBridge);
  v98 = Logger.logObject.getter();
  v99 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v98, v99))
  {
    v100 = swift_slowAlloc();
    *v100 = 0;
    _os_log_impl(&dword_1DC659000, v98, v99, "Cannot create an instance of ContextUpdater since MUXContextMessage is unavailable", v100, 2u);
    MEMORY[0x1E12A2F50](v100, -1, -1);
  }

  v82 = 0;
  v91 = 0;
  v90 = 0;
  v88 = a7;
  v86 = a8;
  v85 = a6;
  v89 = a1;
  v84 = a2;
LABEL_10:
  v92 = (v31 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_contextUpdater);
  *v92 = v90;
  v92[1] = 0;
  v92[2] = 0;
  v92[3] = v82;
  v92[4] = v91;
  v93 = OBJC_IVAR____TtC14SiriKitRuntime32ConversationRequestProcessorBase_sessionId;
  v123 = type metadata accessor for UUID();
  v94 = *(v123 - 8);
  (*(v94 + 16))(v31 + v93, a3, v123);
  outlined init with copy of ReferenceResolutionClientProtocol(a11, (v31 + 3));
  v31[12] = v89;
  v31[13] = v84;
  v31[8] = v87;
  v31[9] = v85;
  v31[10] = v88;
  v31[11] = v86;
  v31[2] = v70;
  swift_unknownObjectRetain();

  ConversationBridgeProcessorDelegate.setExecutionProcessor(executionProcessor:)(v31);

  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1Tm(a27);
  (*(v108 + 8))(a26, v109);
  (*(v118 + 8))(a24, v119);
  __swift_destroy_boxed_opaque_existential_1Tm(a23);
  __swift_destroy_boxed_opaque_existential_1Tm(a22);
  __swift_destroy_boxed_opaque_existential_1Tm(a16);
  __swift_destroy_boxed_opaque_existential_1Tm(a12);
  __swift_destroy_boxed_opaque_existential_1Tm(a11);
  (*(v110 + 8))(v116, v111);
  (*(v94 + 8))(a3, v123);
  return v31;
}

void *ConversationRequestProcessor.init(assistantId:sessionId:sessionConfiguration:requestId:rootRequestId:name:messagePublisher:executionClient:executionOutputSubmitter:decisionMaker:preExecutionActionHandler:sessionState:instrumentationUtil:requestDispatcherServiceHelper:isFirstRequestInSession:networkAvailabilityProvider:coreTelephonyServiceProvider:rrClient:correctionsPlatformClient:sessionUserId:recentDialogTracker:userSessionState:featureChecker:isSystemAssistantExperienceEnabled:muxContextMessage:isMUXEnabled:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, void *a12, void *a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, void *a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, char a28, void *a29, char a30)
{
  v31 = v30;

  v33 = OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_asyncWork;
  type metadata accessor for ConcurrentTaskPool();
  v34 = swift_allocObject();
  *(v34 + 16) = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v35 = swift_allocObject();
  *(v35 + 16) = 0;
  *(v34 + 24) = v35;
  *(v31 + v33) = v34;
  v36 = v31 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_state;
  *v36 = 0;
  *(v36 + 1) = 0;
  v36[16] = 3;
  *(v31 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_rraasCollectionTask) = 0;
  *(v31 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_sentResultCandidateSelected) = 0;
  *(v31 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_didCommitExecution) = 0;
  *(v31 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_entitiesCollected) = 2;
  v37 = (v31 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_gestureRCID);
  *v37 = 0;
  v37[1] = 0;
  v38 = OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_sessionConfiguration;
  v39 = type metadata accessor for SessionConfiguration();
  v106 = *(v39 - 8);
  v107 = v39;
  v112 = a4;
  (*(v106 + 16))(v31 + v38, a4);
  v40 = objc_opt_self();

  v41 = [v40 sharedPreferences];
  v42 = [objc_opt_self() clientWithIdentifier_];
  v43 = type metadata accessor for TrialExperimentationAssetManager();
  v44 = swift_allocObject();
  v45 = [objc_allocWithZone(type metadata accessor for ExperimentationAnalyticsManager()) init];
  *(v44 + 16) = v42;
  *(v44 + 24) = v45;
  if (one-time initialization token for instance != -1)
  {
    swift_once();
  }

  v46 = static SelfReflectionCurareDonator.instance;
  type metadata accessor for SelfReflectionAgent();
  v47 = swift_allocObject();
  v127 = v43;
  v128 = &protocol witness table for TrialExperimentationAssetManager;
  *&v126 = v44;
  type metadata accessor for TaggingService();
  swift_allocObject();

  *(v47 + 104) = TaggingService.init()();
  *(v47 + 144) = 0;
  *(v47 + 128) = 0u;
  *(v47 + 112) = 0u;
  *(v47 + 16) = a17;
  *(v47 + 24) = a20;
  *(v47 + 32) = v41;
  *(v47 + 40) = a28 & 1;
  outlined init with take of ReferenceResolutionClientProtocol(&v126, v47 + 48);
  swift_beginAccess();
  *(v47 + 128) = 0;
  swift_beginAccess();
  *(v47 + 136) = 0;
  swift_beginAccess();
  v48 = *(v47 + 144);
  *(v47 + 144) = 0;

  *(v47 + 152) = 33686018;
  *(v47 + 156) = 514;
  *(v47 + 160) = 0;
  *(v47 + 168) = 1;
  *(v47 + 176) = 0;
  *(v47 + 184) = 1;
  *(v47 + 185) = 2;
  *(v47 + 192) = 0;
  *(v47 + 200) = 0;
  LOBYTE(v123) = 1;
  LOBYTE(v122[0]) = 1;
  *(v47 + 208) = 33686018;
  *(v47 + 212) = 514;
  *(v47 + 216) = 0;
  *(v47 + 224) = 1;
  *(v47 + 225) = v131[0];
  *(v47 + 228) = *(v131 + 3);
  *(v47 + 232) = 0;
  *(v47 + 240) = 1;
  *(v47 + 241) = 2;
  v49 = v129;
  *(v47 + 246) = v130;
  *(v47 + 242) = v49;
  *(v47 + 248) = 0;
  *(v47 + 256) = 0;
  *(v47 + 88) = v46;
  *(v47 + 264) = 0;
  *(v47 + 96) = 0;
  v50 = OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_selfReflectionAgent;
  *(v31 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_selfReflectionAgent) = v47;
  outlined init with copy of ReferenceResolutionClientProtocol(a12, v31 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_executionClient);
  v51 = a13[3];
  v52 = *(*a13 + 152);
  v53 = swift_unknownObjectRetain();
  LOBYTE(v47) = v52(v53);
  outlined init with copy of ReferenceResolutionClientProtocol((a13 + 4), &v126);
  v54 = *(v31 + v50);
  v55 = type metadata accessor for FeatureChecker();
  v56 = swift_allocObject();
  v102 = a29;

  *(v56 + 16) = AFDeviceSupportsSAEByDeviceCapabilityAndFeatureFlags();
  v124 = &type metadata for IntelligenceFlowFeatureFlag;
  v125 = lazy protocol witness table accessor for type IntelligenceFlowFeatureFlag and conformance IntelligenceFlowFeatureFlag();
  LOBYTE(v52) = isFeatureEnabled(_:)();
  __swift_destroy_boxed_opaque_existential_1Tm(&v123);
  *(v56 + 17) = v52 & 1;
  type metadata accessor for ConversationOutputSubmitter();
  v57 = swift_allocObject();
  v124 = v55;
  v125 = &protocol witness table for FeatureChecker;
  *&v123 = v56;
  v58 = swift_allocObject();
  v59 = MEMORY[0x1E69E7CC0];
  *(v58 + 16) = MEMORY[0x1E69E7CC0];
  v60 = swift_allocObject();
  *(v60 + 16) = 0;
  *(v58 + 24) = v60;
  *(v57 + 16) = v58;
  *(v57 + 88) = 0;
  *(v57 + 80) = 0;
  *(v57 + 96) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_ySo13SABaseCommandCSg_s5Error_pSgt14SiriKitRuntime15MessageBusActorCYccTt0g5Tf4g_n(v59);
  *(v57 + 104) = 30000000000;
  *(v57 + 24) = v51;
  *(v57 + 72) = v47 & 1;
  swift_beginAccess();
  v61 = *(v57 + 80);
  *(v57 + 80) = a29;

  outlined init with take of ReferenceResolutionClientProtocol(&v126, v57 + 32);
  swift_beginAccess();
  *(v57 + 88) = v54;

  outlined init with take of ReferenceResolutionClientProtocol(&v123, v57 + 112);
  *(v31 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_executionOutputSubmitter) = v57;
  *(v31 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_decisionMaker) = a14;
  *(v31 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_preExecutionActionHandler) = a15;
  *(v31 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_requestDispatcherServiceHelper) = a18;
  outlined init with copy of ReferenceResolutionClientProtocol(a16, v31 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_sessionState);
  *(v31 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_instrumentationUtil) = a17;
  *(v31 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_isFirstRequestInSession) = a19 & 1;
  *(v31 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_networkAvailabilityProvider) = a20;
  *(v31 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_coreTelephonyServiceProvider) = a21;
  outlined init with copy of ReferenceResolutionClientProtocol(a22, v31 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_rrClient);
  outlined init with copy of ReferenceResolutionClientProtocol(a23, v31 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_correctionsPlatformClient);
  *(v31 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_muxContextMessage) = a29;
  v62 = OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_sessionUserId;
  v63 = type metadata accessor for UserID();
  v113 = *(v63 - 8);
  v114 = v63;
  v100 = *(v113 + 16);
  v100(v31 + v62, a24);
  *(v31 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_isMUXEnabled) = a30 & 1;
  v64 = OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_userSessionState;
  v65 = type metadata accessor for UserSessionState();
  v104 = *(v65 - 8);
  v105 = v65;
  (*(v104 + 16))(v31 + v64, a26);
  outlined init with copy of ReferenceResolutionClientProtocol(a27, v31 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_featureChecker);
  *(v31 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_recentDialogTracker) = a25;
  v66 = *(*a25 + 224);

  v67 = v102;

  swift_unknownObjectRetain();
  v69 = a5;
  v68 = a6;
  v66(a5, a6, a3);
  *(v31 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_isSystemAssistantExperienceEnabled) = a28 & 1;
  if (one-time initialization token for sharedInstance != -1)
  {
    swift_once();
  }

  v70 = static DeviceContextHelper.sharedInstance;
  v71 = (v31 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_contextDonator);
  v101 = type metadata accessor for DeviceContextHelper();
  v71[3] = v101;
  v71[4] = &protocol witness table for DeviceContextHelper;
  *v71 = v70;
  type metadata accessor for ConversationBridgeProcessorDelegate();
  v72 = swift_allocObject();
  swift_weakInit();
  *(v72 + 24) = a18;
  *(v31 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_executionBridgeProcessorDelegate) = v72;
  v103 = v67;
  if ((a30 & 1) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy16SiriMessageTypes6UserIDVGMd, &_ss23_ContiguousArrayStorageCy16SiriMessageTypes6UserIDVGMR);
    v76 = (*(v113 + 80) + 32) & ~*(v113 + 80);
    v77 = swift_allocObject();
    *(v77 + 16) = xmmword_1DCA66060;
    (v100)(v77 + v76, a24, v114);
    swift_unknownObjectRetain();

    v118 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC16SiriMessageTypes6UserIDV_Tt0g5Tf4g_n(v77);
    swift_setDeallocating();
    v75 = a18;
    v78 = *(v113 + 8);
    v78(v77 + v76, v114);
    swift_deallocClassInstance();
    v68 = a6;
    v79 = swift_allocObject();
    *(v79 + 16) = xmmword_1DCA66060;
    (v100)(v79 + v76, a24, v114);
    v115 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC16SiriMessageTypes6UserIDV_Tt0g5Tf4g_n(v79);
    swift_setDeallocating();
    v80 = v79 + v76;
    v69 = a5;
    v78(v80, v114);
    swift_deallocClassInstance();
    goto LABEL_9;
  }

  if (a29)
  {
    v73 = v67;
    swift_unknownObjectRetain();

    v118 = specialized static ConversationMUXUtils.getAllUserIds(from:)();
    specialized static ConversationMUXUtils.getAllKnownUserIds(from:)();
    v115 = v74;

    v75 = a18;
LABEL_9:
    v82 = a7;
    v81 = a8;
    v83 = type metadata accessor for MultiUserContextUpdater();
    outlined init with copy of ReferenceResolutionClientProtocol(a16, &v126);
    outlined init with copy of ReferenceResolutionClientProtocol(a22, &v123);
    outlined init with copy of ReferenceResolutionClientProtocol(a23, v122);
    ObjectType = swift_getObjectType();
    v121 = v70;

    swift_unknownObjectRetain();
    v85 = a2;

    v99 = ObjectType;
    *(&v98 + 1) = v118;
    *&v98 = a17;
    v86 = a1;
    v87 = specialized MultiUserContextUpdater.__allocating_init(sessionState:rraasClient:correctionsPlatformClient:serviceHelper:assistantId:requestId:rootRequestId:contextDonator:instrumentationUtil:userIdSet:knownUserIdSet:)(&v126, &v123, v122, v75, a1, a2, v69, v68, a7, a8, &v121, v98, v115, v83, v101, v99, &protocol witness table for DeviceContextHelper);
    v88 = &protocol witness table for MultiUserContextUpdater;
    goto LABEL_10;
  }

  v93 = one-time initialization token for conversationBridge;
  swift_unknownObjectRetain();

  if (v93 != -1)
  {
    swift_once();
  }

  v94 = type metadata accessor for Logger();
  __swift_project_value_buffer(v94, static Logger.conversationBridge);
  v95 = Logger.logObject.getter();
  v96 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v95, v96))
  {
    v97 = swift_slowAlloc();
    *v97 = 0;
    _os_log_impl(&dword_1DC659000, v95, v96, "Cannot create an instance of ContextUpdater since MUXContextMessage is unavailable", v97, 2u);
    MEMORY[0x1E12A2F50](v97, -1, -1);
  }

  v83 = 0;
  v88 = 0;
  v87 = 0;
  v75 = a18;
  v82 = a7;
  v81 = a8;
  v69 = a5;
  v68 = a6;
  v86 = a1;
  v85 = a2;
LABEL_10:
  v89 = (v31 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_contextUpdater);
  *v89 = v87;
  v89[1] = 0;
  v89[2] = 0;
  v89[3] = v83;
  v89[4] = v88;
  v90 = OBJC_IVAR____TtC14SiriKitRuntime32ConversationRequestProcessorBase_sessionId;
  v120 = type metadata accessor for UUID();
  v91 = *(v120 - 8);
  (*(v91 + 16))(v31 + v90, a3, v120);
  outlined init with copy of ReferenceResolutionClientProtocol(a11, (v31 + 3));
  v31[12] = v86;
  v31[13] = v85;
  v31[8] = v69;
  v31[9] = v68;
  v31[10] = v82;
  v31[11] = v81;
  v31[2] = v75;
  swift_unknownObjectRetain();

  ConversationBridgeProcessorDelegate.setExecutionProcessor(executionProcessor:)(v31);

  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1Tm(a27);
  (*(v104 + 8))(a26, v105);
  (*(v113 + 8))(a24, v114);
  __swift_destroy_boxed_opaque_existential_1Tm(a23);
  __swift_destroy_boxed_opaque_existential_1Tm(a22);
  __swift_destroy_boxed_opaque_existential_1Tm(a16);
  __swift_destroy_boxed_opaque_existential_1Tm(a12);
  __swift_destroy_boxed_opaque_existential_1Tm(a11);
  (*(v106 + 8))(v112, v107);
  (*(v91 + 8))(a3, v120);
  return v31;
}

void *ConversationRequestProcessor.__allocating_init(assistantId:sessionId:sessionConfiguration:requestId:rootRequestId:name:messagePublisher:executionClient:contextUpdater:executionOutputSubmitter:decisionMaker:preExecutionActionHandler:sessionState:instrumentationUtil:requestDispatcherServiceHelper:isFirstRequestInSession:networkAvailabilityProvider:coreTelephonyServiceProvider:rrClient:correctionsPlatformClient:sessionUserId:recentDialogTracker:userSessionState:featureChecker:isSystemAssistantExperienceEnabled:muxContextMessage:isMUXEnabled:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, void *a12, void *a13, void *a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, void *a23, void *a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, char a29, void *a30, char a31)
{

  v31 = swift_allocObject();
  v32 = OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_asyncWork;
  type metadata accessor for ConcurrentTaskPool();
  v33 = swift_allocObject();
  *(v33 + 16) = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v34 = swift_allocObject();
  *(v34 + 16) = 0;
  *(v33 + 24) = v34;
  *(v31 + v32) = v33;
  v35 = v31 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_state;
  *v35 = 0;
  *(v35 + 1) = 0;
  v35[16] = 3;
  *(v31 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_rraasCollectionTask) = 0;
  *(v31 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_sentResultCandidateSelected) = 0;
  *(v31 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_didCommitExecution) = 0;
  *(v31 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_entitiesCollected) = 2;
  v36 = (v31 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_gestureRCID);
  *v36 = 0;
  v36[1] = 0;
  v37 = objc_opt_self();

  v38 = [v37 sharedPreferences];
  v39 = [objc_opt_self() clientWithIdentifier_];
  v40 = type metadata accessor for TrialExperimentationAssetManager();
  v41 = swift_allocObject();
  v42 = [objc_allocWithZone(type metadata accessor for ExperimentationAnalyticsManager()) init];
  *(v41 + 16) = v39;
  *(v41 + 24) = v42;
  if (one-time initialization token for instance != -1)
  {
    swift_once();
  }

  v43 = static SelfReflectionCurareDonator.instance;
  type metadata accessor for SelfReflectionAgent();
  v44 = swift_allocObject();
  v92 = v40;
  v93 = &protocol witness table for TrialExperimentationAssetManager;
  *&v91 = v41;
  type metadata accessor for TaggingService();
  swift_allocObject();

  *(v44 + 104) = TaggingService.init()();
  *(v44 + 144) = 0;
  *(v44 + 128) = 0u;
  *(v44 + 112) = 0u;
  *(v44 + 16) = a18;
  *(v44 + 24) = a21;
  *(v44 + 32) = v38;
  *(v44 + 40) = a29 & 1;
  outlined init with take of ReferenceResolutionClientProtocol(&v91, v44 + 48);
  swift_beginAccess();
  *(v44 + 128) = 0;
  swift_beginAccess();
  *(v44 + 136) = 0;
  swift_beginAccess();
  *(v44 + 144) = 0;
  *(v44 + 152) = 33686018;
  *(v44 + 156) = 514;
  *(v44 + 160) = 0;
  *(v44 + 168) = 1;
  *(v44 + 176) = 0;
  *(v44 + 184) = 1;
  *(v44 + 185) = 2;
  *(v44 + 192) = 0;
  *(v44 + 200) = 0;
  LOBYTE(v88) = 1;
  *(v44 + 208) = 33686018;
  *(v44 + 212) = 514;
  *(v44 + 216) = 0;
  *(v44 + 224) = 1;
  *(v44 + 225) = v96[0];
  *(v44 + 228) = *(v96 + 3);
  *(v44 + 232) = 0;
  *(v44 + 240) = 1;
  *(v44 + 241) = 2;
  v45 = v94;
  *(v44 + 246) = v95;
  *(v44 + 242) = v45;
  *(v44 + 248) = 0;
  *(v44 + 256) = 0;
  *(v44 + 88) = v43;
  *(v44 + 264) = 0;
  *(v44 + 96) = 0;
  v46 = OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_selfReflectionAgent;
  *(v31 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_selfReflectionAgent) = v44;
  outlined init with copy of ReferenceResolutionClientProtocol(a12, v31 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_executionClient);
  v47 = a14[3];
  v48 = *(*a14 + 152);
  v49 = swift_unknownObjectRetain();
  LOBYTE(v44) = v48(v49);
  outlined init with copy of ReferenceResolutionClientProtocol((a14 + 4), &v91);
  v50 = *(v31 + v46);
  v51 = type metadata accessor for FeatureChecker();
  v52 = swift_allocObject();
  v75 = a30;

  *(v52 + 16) = AFDeviceSupportsSAEByDeviceCapabilityAndFeatureFlags();
  v89 = &type metadata for IntelligenceFlowFeatureFlag;
  v90 = lazy protocol witness table accessor for type IntelligenceFlowFeatureFlag and conformance IntelligenceFlowFeatureFlag();
  v53 = isFeatureEnabled(_:)();
  __swift_destroy_boxed_opaque_existential_1Tm(&v88);
  *(v52 + 17) = v53 & 1;
  type metadata accessor for ConversationOutputSubmitter();
  v54 = swift_allocObject();
  v89 = v51;
  v90 = &protocol witness table for FeatureChecker;
  *&v88 = v52;
  v55 = swift_allocObject();
  v56 = MEMORY[0x1E69E7CC0];
  *(v55 + 16) = MEMORY[0x1E69E7CC0];
  v57 = swift_allocObject();
  *(v57 + 16) = 0;
  *(v55 + 24) = v57;
  *(v54 + 16) = v55;
  *(v54 + 88) = 0;
  *(v54 + 80) = 0;
  *(v54 + 96) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_ySo13SABaseCommandCSg_s5Error_pSgt14SiriKitRuntime15MessageBusActorCYccTt0g5Tf4g_n(v56);
  *(v54 + 104) = 30000000000;
  *(v54 + 24) = v47;
  *(v54 + 72) = v44 & 1;
  swift_beginAccess();
  v58 = *(v54 + 80);
  *(v54 + 80) = a30;

  outlined init with take of ReferenceResolutionClientProtocol(&v91, v54 + 32);
  swift_beginAccess();
  *(v54 + 88) = v50;

  outlined init with take of ReferenceResolutionClientProtocol(&v88, v54 + 112);
  *(v31 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_executionOutputSubmitter) = v54;
  *(v31 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_decisionMaker) = a15;
  *(v31 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_preExecutionActionHandler) = a16;
  *(v31 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_requestDispatcherServiceHelper) = a19;
  outlined init with copy of ReferenceResolutionClientProtocol(a17, v31 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_sessionState);
  *(v31 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_instrumentationUtil) = a18;
  *(v31 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_isFirstRequestInSession) = a20 & 1;
  *(v31 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_networkAvailabilityProvider) = a21;
  *(v31 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_coreTelephonyServiceProvider) = a22;
  outlined init with copy of ReferenceResolutionClientProtocol(a23, v31 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_rrClient);
  outlined init with copy of ReferenceResolutionClientProtocol(a24, v31 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_correctionsPlatformClient);
  outlined init with copy of ReferenceResolutionClientProtocol(a13, v31 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_contextUpdater);
  *(v31 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_muxContextMessage) = a30;
  v59 = OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_sessionUserId;
  v60 = type metadata accessor for UserID();
  v78 = *(v60 - 8);
  v79 = v60;
  (*(v78 + 16))(v31 + v59, a25);
  *(v31 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_isMUXEnabled) = a31 & 1;
  type metadata accessor for ConversationBridgeProcessorDelegate();
  v61 = swift_allocObject();
  swift_weakInit();
  *(v61 + 24) = a19;
  *(v31 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_executionBridgeProcessorDelegate) = v61;
  v62 = one-time initialization token for sharedInstance;
  swift_unknownObjectRetain_n();

  v77 = v75;

  if (v62 != -1)
  {
    swift_once();
  }

  v63 = static DeviceContextHelper.sharedInstance;
  v64 = (v31 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_contextDonator);
  v64[3] = type metadata accessor for DeviceContextHelper();
  v64[4] = &protocol witness table for DeviceContextHelper;
  *v64 = v63;
  *(v31 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_recentDialogTracker) = a26;
  v65 = *(*a26 + 224);

  v65(a5, a6, a3);
  v66 = OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_userSessionState;
  v67 = type metadata accessor for UserSessionState();
  v68 = *(v67 - 8);
  (*(v68 + 16))(v31 + v66, a27, v67);
  outlined init with copy of ReferenceResolutionClientProtocol(a28, v31 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_featureChecker);
  v69 = OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_sessionConfiguration;
  v76 = type metadata accessor for SessionConfiguration();
  v70 = *(v76 - 8);
  (*(v70 + 16))(v31 + v69, a4, v76);
  *(v31 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_isSystemAssistantExperienceEnabled) = a29 & 1;
  v71 = OBJC_IVAR____TtC14SiriKitRuntime32ConversationRequestProcessorBase_sessionId;
  v72 = type metadata accessor for UUID();
  v73 = *(v72 - 8);
  (*(v73 + 16))(v31 + v71, a3, v72);
  outlined init with copy of ReferenceResolutionClientProtocol(a11, (v31 + 3));
  v31[12] = a1;
  v31[13] = a2;
  v31[8] = a5;
  v31[9] = a6;
  v31[10] = a7;
  v31[11] = a8;
  v31[2] = a19;
  swift_unknownObjectRetain();

  ConversationBridgeProcessorDelegate.setExecutionProcessor(executionProcessor:)(v31);

  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1Tm(a28);
  (*(v68 + 8))(a27, v67);
  (*(v78 + 8))(a25, v79);
  __swift_destroy_boxed_opaque_existential_1Tm(a24);
  __swift_destroy_boxed_opaque_existential_1Tm(a23);
  __swift_destroy_boxed_opaque_existential_1Tm(a17);
  __swift_destroy_boxed_opaque_existential_1Tm(a13);
  __swift_destroy_boxed_opaque_existential_1Tm(a12);
  __swift_destroy_boxed_opaque_existential_1Tm(a11);
  (*(v70 + 8))(a4, v76);
  (*(v73 + 8))(a3, v72);
  return v31;
}

void *ConversationRequestProcessor.init(assistantId:sessionId:sessionConfiguration:requestId:rootRequestId:name:messagePublisher:executionClient:contextUpdater:executionOutputSubmitter:decisionMaker:preExecutionActionHandler:sessionState:instrumentationUtil:requestDispatcherServiceHelper:isFirstRequestInSession:networkAvailabilityProvider:coreTelephonyServiceProvider:rrClient:correctionsPlatformClient:sessionUserId:recentDialogTracker:userSessionState:featureChecker:isSystemAssistantExperienceEnabled:muxContextMessage:isMUXEnabled:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, void *a12, void *a13, void *a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, void *a23, void *a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, char a29, void *a30, char a31)
{
  v32 = v31;

  v33 = OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_asyncWork;
  type metadata accessor for ConcurrentTaskPool();
  v34 = swift_allocObject();
  *(v34 + 16) = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v35 = swift_allocObject();
  *(v35 + 16) = 0;
  *(v34 + 24) = v35;
  *(v32 + v33) = v34;
  v36 = v32 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_state;
  *v36 = 0;
  *(v36 + 1) = 0;
  v36[16] = 3;
  *(v32 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_rraasCollectionTask) = 0;
  *(v32 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_sentResultCandidateSelected) = 0;
  *(v32 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_didCommitExecution) = 0;
  *(v32 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_entitiesCollected) = 2;
  v37 = (v32 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_gestureRCID);
  *v37 = 0;
  v37[1] = 0;
  v38 = objc_opt_self();

  v39 = [v38 sharedPreferences];
  v40 = [objc_opt_self() clientWithIdentifier_];
  v41 = type metadata accessor for TrialExperimentationAssetManager();
  v42 = swift_allocObject();
  v43 = [objc_allocWithZone(type metadata accessor for ExperimentationAnalyticsManager()) init];
  *(v42 + 16) = v40;
  *(v42 + 24) = v43;
  if (one-time initialization token for instance != -1)
  {
    swift_once();
  }

  v44 = static SelfReflectionCurareDonator.instance;
  type metadata accessor for SelfReflectionAgent();
  v45 = swift_allocObject();
  v94 = v41;
  v95 = &protocol witness table for TrialExperimentationAssetManager;
  *&v93 = v42;
  type metadata accessor for TaggingService();
  swift_allocObject();

  *(v45 + 104) = TaggingService.init()();
  *(v45 + 144) = 0;
  *(v45 + 128) = 0u;
  *(v45 + 112) = 0u;
  *(v45 + 16) = a18;
  *(v45 + 24) = a21;
  *(v45 + 32) = v39;
  *(v45 + 40) = a29 & 1;
  outlined init with take of ReferenceResolutionClientProtocol(&v93, v45 + 48);
  swift_beginAccess();
  *(v45 + 128) = 0;
  swift_beginAccess();
  *(v45 + 136) = 0;
  swift_beginAccess();
  v46 = *(v45 + 144);
  *(v45 + 144) = 0;

  *(v45 + 152) = 33686018;
  *(v45 + 156) = 514;
  *(v45 + 160) = 0;
  *(v45 + 168) = 1;
  *(v45 + 176) = 0;
  *(v45 + 184) = 1;
  *(v45 + 185) = 2;
  *(v45 + 192) = 0;
  *(v45 + 200) = 0;
  LOBYTE(v90) = 1;
  *(v45 + 208) = 33686018;
  *(v45 + 212) = 514;
  *(v45 + 216) = 0;
  *(v45 + 224) = 1;
  *(v45 + 225) = v98[0];
  *(v45 + 228) = *(v98 + 3);
  *(v45 + 232) = 0;
  *(v45 + 240) = 1;
  *(v45 + 241) = 2;
  v47 = v96;
  *(v45 + 246) = v97;
  *(v45 + 242) = v47;
  *(v45 + 248) = 0;
  *(v45 + 256) = 0;
  *(v45 + 88) = v44;
  *(v45 + 264) = 0;
  *(v45 + 96) = 0;
  v48 = OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_selfReflectionAgent;
  *(v32 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_selfReflectionAgent) = v45;
  outlined init with copy of ReferenceResolutionClientProtocol(a12, v32 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_executionClient);
  v49 = a14[3];
  v50 = *(*a14 + 152);
  v51 = swift_unknownObjectRetain();
  LOBYTE(v45) = v50(v51);
  outlined init with copy of ReferenceResolutionClientProtocol((a14 + 4), &v93);
  v52 = *(v32 + v48);
  v53 = type metadata accessor for FeatureChecker();
  v54 = swift_allocObject();
  v76 = a30;

  *(v54 + 16) = AFDeviceSupportsSAEByDeviceCapabilityAndFeatureFlags();
  v91 = &type metadata for IntelligenceFlowFeatureFlag;
  v92 = lazy protocol witness table accessor for type IntelligenceFlowFeatureFlag and conformance IntelligenceFlowFeatureFlag();
  v55 = isFeatureEnabled(_:)();
  __swift_destroy_boxed_opaque_existential_1Tm(&v90);
  *(v54 + 17) = v55 & 1;
  type metadata accessor for ConversationOutputSubmitter();
  v56 = swift_allocObject();
  v91 = v53;
  v92 = &protocol witness table for FeatureChecker;
  *&v90 = v54;
  v57 = swift_allocObject();
  v58 = MEMORY[0x1E69E7CC0];
  *(v57 + 16) = MEMORY[0x1E69E7CC0];
  v59 = swift_allocObject();
  *(v59 + 16) = 0;
  *(v57 + 24) = v59;
  *(v56 + 16) = v57;
  *(v56 + 88) = 0;
  *(v56 + 80) = 0;
  *(v56 + 96) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_ySo13SABaseCommandCSg_s5Error_pSgt14SiriKitRuntime15MessageBusActorCYccTt0g5Tf4g_n(v58);
  *(v56 + 104) = 30000000000;
  *(v56 + 24) = v49;
  *(v56 + 72) = v45 & 1;
  swift_beginAccess();
  v60 = *(v56 + 80);
  *(v56 + 80) = a30;

  outlined init with take of ReferenceResolutionClientProtocol(&v93, v56 + 32);
  swift_beginAccess();
  *(v56 + 88) = v52;

  outlined init with take of ReferenceResolutionClientProtocol(&v90, v56 + 112);
  *(v32 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_executionOutputSubmitter) = v56;
  *(v32 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_decisionMaker) = a15;
  *(v32 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_preExecutionActionHandler) = a16;
  *(v32 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_requestDispatcherServiceHelper) = a19;
  outlined init with copy of ReferenceResolutionClientProtocol(a17, v32 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_sessionState);
  *(v32 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_instrumentationUtil) = a18;
  *(v32 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_isFirstRequestInSession) = a20 & 1;
  *(v32 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_networkAvailabilityProvider) = a21;
  *(v32 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_coreTelephonyServiceProvider) = a22;
  outlined init with copy of ReferenceResolutionClientProtocol(a23, v32 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_rrClient);
  outlined init with copy of ReferenceResolutionClientProtocol(a24, v32 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_correctionsPlatformClient);
  outlined init with copy of ReferenceResolutionClientProtocol(a13, v32 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_contextUpdater);
  *(v32 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_muxContextMessage) = a30;
  v61 = OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_sessionUserId;
  v62 = type metadata accessor for UserID();
  v80 = *(v62 - 8);
  v81 = v62;
  (*(v80 + 16))(v32 + v61, a25);
  *(v32 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_isMUXEnabled) = a31 & 1;
  type metadata accessor for ConversationBridgeProcessorDelegate();
  v63 = swift_allocObject();
  swift_weakInit();
  *(v63 + 24) = a19;
  *(v32 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_executionBridgeProcessorDelegate) = v63;
  v64 = one-time initialization token for sharedInstance;
  swift_unknownObjectRetain_n();

  v79 = v76;

  if (v64 != -1)
  {
    swift_once();
  }

  v65 = static DeviceContextHelper.sharedInstance;
  v66 = (v32 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_contextDonator);
  v66[3] = type metadata accessor for DeviceContextHelper();
  v66[4] = &protocol witness table for DeviceContextHelper;
  *v66 = v65;
  *(v32 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_recentDialogTracker) = a26;
  v67 = *(*a26 + 224);

  v67(a5, a6, a3);
  v68 = OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_userSessionState;
  v77 = type metadata accessor for UserSessionState();
  v69 = *(v77 - 8);
  (*(v69 + 16))(v32 + v68, a27, v77);
  outlined init with copy of ReferenceResolutionClientProtocol(a28, v32 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_featureChecker);
  v70 = OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_sessionConfiguration;
  v78 = type metadata accessor for SessionConfiguration();
  v71 = *(v78 - 8);
  (*(v71 + 16))(v32 + v70, a4, v78);
  *(v32 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_isSystemAssistantExperienceEnabled) = a29 & 1;
  v72 = OBJC_IVAR____TtC14SiriKitRuntime32ConversationRequestProcessorBase_sessionId;
  v73 = type metadata accessor for UUID();
  v74 = *(v73 - 8);
  (*(v74 + 16))(v32 + v72, a3, v73);
  outlined init with copy of ReferenceResolutionClientProtocol(a11, (v32 + 3));
  v32[12] = a1;
  v32[13] = a2;
  v32[8] = a5;
  v32[9] = a6;
  v32[10] = a7;
  v32[11] = a8;
  v32[2] = a19;
  swift_unknownObjectRetain();

  ConversationBridgeProcessorDelegate.setExecutionProcessor(executionProcessor:)(v32);

  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1Tm(a28);
  (*(v69 + 8))(a27, v77);
  (*(v80 + 8))(a25, v81);
  __swift_destroy_boxed_opaque_existential_1Tm(a24);
  __swift_destroy_boxed_opaque_existential_1Tm(a23);
  __swift_destroy_boxed_opaque_existential_1Tm(a17);
  __swift_destroy_boxed_opaque_existential_1Tm(a13);
  __swift_destroy_boxed_opaque_existential_1Tm(a12);
  __swift_destroy_boxed_opaque_existential_1Tm(a11);
  (*(v71 + 8))(a4, v78);
  (*(v74 + 8))(a3, v73);
  return v32;
}

void *ConversationRequestProcessor.pendingTurn.getter()
{
  v1 = (*(*v0 + 400))();
  if (v3 == 1)
  {
    v4 = v2;

    v2 = v4;
    v3 = 1;
    v5 = v1;
  }

  else
  {
    v5 = 0;
  }

  outlined consume of ConversationRequestProcessor.State(v1, v2, v3);
  return v5;
}

void ConversationRequestProcessor.handleStartRequest(_:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for InputOrigin();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for RequestType();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for StartSpeechDictationRequestMessage();
  if (swift_dynamicCastClass())
  {
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, static Logger.conversationBridge);
    v23 = Logger.logObject.getter();
    v13 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v23, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_1DC659000, v23, v13, "Ignoring dictation start request", v14, 2u);
      MEMORY[0x1E12A2F50](v14, -1, -1);
    }

    v15 = v23;
  }

  else
  {
    (*(v9 + 104))(v11, *MEMORY[0x1E69D0548], v8);
    v16 = RequestMessageBase.requestId.getter();
    v23 = v2;
    v17 = v16;
    v19 = v18;
    StartRequestMessageBase.inputOrigin.getter();
    type metadata accessor for ConversationRequestProcessorTurnState(0);
    v20 = swift_allocObject();
    *&v20[OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_flowPluginInfo] = 0;
    *&v20[OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_outputCounter] = 0;
    *&v20[OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_speechState] = xmmword_1DCA6B010;
    (*(v9 + 32))(&v20[OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_requestType], v11, v8);
    v21 = &v20[OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_requestId];
    *v21 = v17;
    *(v21 + 1) = v19;
    v20[OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_asrOnServer] = 0;
    (*(v5 + 32))(&v20[OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_inputOrigin], v7, v4);
    specialized ConversationRequestProcessor.handleStartRequestInternal(_:turnState:isTapToEdit:)(a1, v20, 0, v23);
  }
}

uint64_t static ConversationRequestProcessor.createUtteranceRREntity(utterance:)@<X0>(uint64_t a3@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s32SiriReferenceResolutionDataModel15GroupIdentifierVSgMd, &_s32SiriReferenceResolutionDataModel15GroupIdentifierVSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v30 - v5;
  v7 = type metadata accessor for UsoIdentifier();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  String.md5String.getter();
  if (v11)
  {
    v31 = a3;
    type metadata accessor for UsoEntityBuilder_common_LocalisedString();
    swift_allocObject();
    v12 = UsoEntityBuilder_common_LocalisedString.init()();
    dispatch thunk of UsoEntityBuilder_common_LocalisedString.setStringValue(value:)();

    UsoIdentifier.init(value:appBundleId:namespace:)();
    dispatch thunk of UsoBuilder.addUsoIdentifier(usoIdentifier:)();
    (*(v8 + 8))(v10, v7);
    if (MEMORY[0x1E129CC60](v12))
    {
      v13 = type metadata accessor for GroupIdentifier();
      (*(*(v13 - 8) + 56))(v6, 1, 1, v13);
      v14 = v31;
      RREntity.init(id:appBundleId:usoEntity:dataType:data:group:)();

      v15 = type metadata accessor for RREntity();
      return (*(*(v15 - 8) + 56))(v14, 0, 1, v15);
    }

    else
    {

      if (one-time initialization token for conversationBridge != -1)
      {
        swift_once();
      }

      v25 = type metadata accessor for Logger();
      __swift_project_value_buffer(v25, static Logger.conversationBridge);
      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&dword_1DC659000, v26, v27, "#donateUtteranceForReferenceResolution: failed to create UsoEntity_common_LocalisedString entity", v28, 2u);
        MEMORY[0x1E12A2F50](v28, -1, -1);
      }

      v29 = type metadata accessor for RREntity();
      return (*(*(v29 - 8) + 56))(v31, 1, 1, v29);
    }
  }

  else
  {
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    __swift_project_value_buffer(v17, static Logger.conversationBridge);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = a3;
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_1DC659000, v18, v19, "#donateUtteranceForReferenceResolution: failed to get md5String from utterance string", v21, 2u);
      v22 = v21;
      a3 = v20;
      MEMORY[0x1E12A2F50](v22, -1, -1);
    }

    v23 = type metadata accessor for RREntity();
    v24 = *(*(v23 - 8) + 56);

    return v24(a3, 1, 1, v23);
  }
}

uint64_t ConversationRequestProcessor.handleStartChildTextRequestMessage(_:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for TextRequestType();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a1;
  v9 = specialized ConversationRequestProcessorTurnState.__allocating_init(startTextRequestMessage:)(v8);
  StartChildTextRequestMessage.textRequestType.getter();
  v10 = (*(v5 + 88))(v7, v4) == *MEMORY[0x1E69D06D0];
  (*(v5 + 8))(v7, v4);
  specialized ConversationRequestProcessor.handleStartRequestInternal(_:turnState:isTapToEdit:)(v8, v9, v10, v2, 0, 0);
}

uint64_t ConversationRequestProcessor.handleStartTextRequestMessage(_:)(void *a1)
{
  v2 = a1;
  v3 = specialized ConversationRequestProcessorTurnState.__allocating_init(startTextRequestMessage:)(v2);
  specialized ConversationRequestProcessor.handleStartRequestInternal(_:turnState:isTapToEdit:)(v2, v3, 0, v1);
}

uint64_t ConversationRequestProcessor.handleStartUnderstandingOnServerRequestMessage(_:)(void *a1, unsigned int *a2)
{
  v4 = v2;
  v24 = type metadata accessor for InputOrigin();
  v6 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for RequestType();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 104))(v13, *a2, v9, v11);
  v14 = a1;
  v23 = RequestMessageBase.requestId.getter();
  v16 = v15;
  v17 = v14;
  StartRequestMessageBase.inputOrigin.getter();

  type metadata accessor for ConversationRequestProcessorTurnState(0);
  v18 = swift_allocObject();
  *&v18[OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_flowPluginInfo] = 0;
  *&v18[OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_outputCounter] = 0;
  *&v18[OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_speechState] = xmmword_1DCA6B010;
  (*(v10 + 32))(&v18[OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_requestType], v13, v9);
  v19 = &v18[OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_requestId];
  v20 = v24;
  *v19 = v23;
  v19[1] = v16;
  v18[OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_asrOnServer] = 0;
  v21 = (*(v6 + 32))(&v18[OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_inputOrigin], v8, v20);
  *&v4[OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_rraasCollectionTask] = (*(*v4 + 680))(v21);

  specialized ConversationRequestProcessor.handleStartRequestInternal(_:turnState:isTapToEdit:)(v17, v18, 0, v4, 0, 0);
}

uint64_t ConversationRequestProcessor.createRRaaSCollectionTask()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v2.n128_f64[0] = MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v11 - v3;
  (*(*v0 + 528))(0, v2);
  v5 = type metadata accessor for TaskPriority();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = one-time initialization token for shared;

  if (v6 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v7 = static MessageBusActor.shared;
  v8 = _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_2(&lazy protocol witness table cache variable for type MessageBusActor and conformance MessageBusActor, type metadata accessor for MessageBusActor, &protocol conformance descriptor for MessageBusActor);
  v9 = swift_allocObject();
  v9[2] = v7;
  v9[3] = v8;
  v9[4] = v0;

  return _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v4, &async function pointer to partial apply for closure #1 in ConversationRequestProcessor.createRRaaSCollectionTask(), v9);
}

uint64_t closure #1 in ConversationRequestProcessor.createRRaaSCollectionTask()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a4;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5 = static MessageBusActor.shared;
  *(v4 + 48) = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](closure #1 in ConversationRequestProcessor.createRRaaSCollectionTask(), v5, 0);
}

uint64_t closure #1 in ConversationRequestProcessor.createRRaaSCollectionTask()()
{
  v1 = (*(v0 + 40) + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_rrClient);
  v3 = v1[3];
  v2 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *v4 = v0;
  v4[1] = closure #1 in ConversationRequestProcessor.createRRaaSCollectionTask();

  return MEMORY[0x1EEE39D58](v3, v2);
}

{
  v1 = *(v0 + 40);

  (*(*v1 + 528))(1);
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.conversationBridge);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1DC659000, v3, v4, "RRaaS entities collected", v5, 2u);
    MEMORY[0x1E12A2F50](v5, -1, -1);
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t closure #1 in ConversationRequestProcessor.createRRaaSCollectionTask()(uint64_t a1)
{
  v3 = *v2;

  v4 = *(v3 + 48);
  if (v1)
  {

    v5 = closure #1 in ConversationRequestProcessor.createRRaaSCollectionTask();
  }

  else
  {

    v5 = closure #1 in ConversationRequestProcessor.createRRaaSCollectionTask();
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

uint64_t ConversationRequestProcessor.handleStartIFRequestMessage(_:)(void *a1)
{
  v2 = v1;
  v30 = type metadata accessor for InputOrigin();
  v4 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for RequestType();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  __swift_project_value_buffer(v11, static Logger.conversationBridge);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v29 = v6;
    v16 = v4;
    v17 = a1;
    v18 = v2;
    v19 = v15;
    v31 = v15;
    *v14 = 136315138;
    *(v14 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001FLL, 0x80000001DCA80550, &v31);
    _os_log_impl(&dword_1DC659000, v12, v13, "%s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v19);
    v20 = v19;
    v2 = v18;
    a1 = v17;
    v4 = v16;
    v6 = v29;
    MEMORY[0x1E12A2F50](v20, -1, -1);
    MEMORY[0x1E12A2F50](v14, -1, -1);
  }

  (*(v8 + 104))(v10, *MEMORY[0x1E69D0530], v7);
  v21 = a1;
  v22 = RequestMessageBase.requestId.getter();
  v24 = v23;
  StartIFRequestMessage.inputOrigin.getter();

  type metadata accessor for ConversationRequestProcessorTurnState(0);
  v25 = swift_allocObject();
  *(v25 + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_flowPluginInfo) = 0;
  *(v25 + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_outputCounter) = 0;
  *(v25 + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_speechState) = xmmword_1DCA6B010;
  (*(v8 + 32))(v25 + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_requestType, v10, v7);
  v26 = (v25 + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_requestId);
  *v26 = v22;
  v26[1] = v24;
  *(v25 + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_asrOnServer) = 0;
  (*(v4 + 32))(v25 + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_inputOrigin, v6, v30);
  specialized ConversationRequestProcessor.handleStartRequestInternal(_:turnState:isTapToEdit:)(v21, v25, 0, v2);
}

void ConversationRequestProcessor.handleStartCandidateRequestMessage(_:)(void *a1)
{
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.conversationBridge);
  v3 = a1;
  oslog = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v10 = v7;
    *v5 = 136315394;
    *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000026, 0x80000001DCA80570, &v10);
    *(v5 + 12) = 2112;
    *(v5 + 14) = v3;
    *v6 = v3;
    v8 = v3;
    _os_log_impl(&dword_1DC659000, oslog, v4, "%s: %@", v5, 0x16u);
    outlined destroy of ReferenceResolutionClientProtocol?(v6, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1E12A2F50](v6, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x1E12A2F50](v7, -1, -1);
    MEMORY[0x1E12A2F50](v5, -1, -1);
  }
}

void ConversationRequestProcessor.handleRequestContextMessage(_:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities12RestrictionsVSgMd, &_s13SiriUtilities12RestrictionsVSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v169 = &v150 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v166 = &v150 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities12ResponseModeVSgMd, &_s13SiriUtilities12ResponseModeVSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v163 = &v150 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v150 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities16AudioDestinationVSgMd, &_s13SiriUtilities16AudioDestinationVSgMR);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v162 = &v150 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11AudioSourceVSgMd, &_s13SiriUtilities11AudioSourceVSgMR);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v161 = &v150 - v14;
  v160 = type metadata accessor for InputOrigin();
  v174 = *(v160 - 8);
  MEMORY[0x1EEE9AC00](v160);
  v158 = &v150 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v173 = &v150 - v17;
  v18 = type metadata accessor for RequestType();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v168 = &v150 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v167 = &v150 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v165 = &v150 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v164 = &v150 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v150 - v28;
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v150 - v31;
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v33 = type metadata accessor for Logger();
  v34 = __swift_project_value_buffer(v33, static Logger.conversationBridge);
  v35 = a1;
  v175 = v34;
  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    *v38 = 138412290;
    *(v38 + 4) = v35;
    *v39 = v35;
    v40 = v35;
    _os_log_impl(&dword_1DC659000, v36, v37, "ConversationBridge handling message: %@", v38, 0xCu);
    outlined destroy of ReferenceResolutionClientProtocol?(v39, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1E12A2F50](v39, -1, -1);
    MEMORY[0x1E12A2F50](v38, -1, -1);
  }

  v176 = v35;

  v41 = (*v177 + 400);
  v42 = *v41;
  v43 = (*v41)();
  v46 = v43;
  if (v45 == 1)
  {
    v153 = v10;
    v157 = v44;
    v47 = OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_requestType;
    swift_beginAccess();
    v170 = v19[2];
    v171 = v19 + 2;
    v170(v32, &v46[v47], v18);
    v48 = *MEMORY[0x1E69D0528];
    v49 = v18;
    v156 = v19[13];
    v156(v29, v48, v18);
    _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_2(&lazy protocol witness table cache variable for type RequestType and conformance RequestType, MEMORY[0x1E69D0568], MEMORY[0x1E69D0570]);
    v50 = dispatch thunk of static Equatable.== infix(_:_:)();
    v51 = v19[1];
    v51(v29, v49);
    v159 = v49;
    v172 = v51;
    v51(v32, v49);
    v155 = v19 + 1;
    v154 = v47;
    if (v50 & 1) != 0 || (v52 = v159, v170(v32, &v46[v47], v159), v156(v29, *MEMORY[0x1E69D0558], v52), v53 = dispatch thunk of static Equatable.== infix(_:_:)(), v54 = v29, v55 = v172, v172(v54, v52), v55(v32, v52), (v53))
    {

      v56 = v176;

      v57 = Logger.logObject.getter();
      v58 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v57, v58))
      {
        v59 = v46;
        v60 = swift_slowAlloc();
        v61 = swift_slowAlloc();
        v62 = swift_slowAlloc();
        v180 = v62;
        *v60 = 138412546;
        *(v60 + 4) = v56;
        *v61 = v56;
        *(v60 + 12) = 2080;
        v63 = v159;
        v170(v32, &v59[v154], v159);
        v64 = v56;
        v65 = RequestType.rawValue.getter();
        v67 = v66;
        v172(v32, v63);
        v68 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v65, v67, &v180);

        *(v60 + 14) = v68;
        _os_log_impl(&dword_1DC659000, v57, v58, "%@ is not supported for this requestType: %s", v60, 0x16u);
        outlined destroy of ReferenceResolutionClientProtocol?(v61, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        MEMORY[0x1E12A2F50](v61, -1, -1);
        __swift_destroy_boxed_opaque_existential_1Tm(v62);
        MEMORY[0x1E12A2F50](v62, -1, -1);
        MEMORY[0x1E12A2F50](v60, -1, -1);
      }
    }

    else
    {
      v152 = v19 + 13;
      v78 = *MEMORY[0x1E69D04C0];
      v79 = v160;
      v151 = *(v174 + 104);
      v151(v173, v78, v160);
      _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_2(&lazy protocol witness table cache variable for type InputOrigin and conformance InputOrigin, MEMORY[0x1E69D04D0], MEMORY[0x1E69D04E8]);
      v175 = v46;
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      if (v180 == v178 && v181 == v179)
      {
        v80 = 1;
      }

      else
      {
        v80 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }

      v81 = v159;
      v82 = *(v174 + 8);
      v82(v173, v79);

      if (v80)
      {
        v83 = v158;
        v151(v158, v78, v79);
        v84 = InputOrigin.aceInputOrigin.getter();
        v86 = v85;
        v82(v83, v79);
      }

      else
      {
        v84 = InputOrigin.aceInputOrigin.getter();
        v86 = v89;
      }

      type metadata accessor for RequestContextData.Builder(0);
      swift_allocObject();
      v90 = *RequestContextData.Builder.init()();
      v91 = (*(v90 + 1040))(v84, v86);

      RequestContextMessage.audioSource.getter();
      v92 = v161;
      AudioSource.init(aceValue:)();
      v93 = (*(*v91 + 1048))(v92);

      outlined destroy of ReferenceResolutionClientProtocol?(v92, &_s13SiriUtilities11AudioSourceVSgMd, &_s13SiriUtilities11AudioSourceVSgMR);
      RequestContextMessage.audioDestination.getter();
      v94 = v162;
      AudioDestination.init(aceValue:)();
      v95 = (*(*v93 + 1056))(v94);

      outlined destroy of ReferenceResolutionClientProtocol?(v94, &_s13SiriUtilities16AudioDestinationVSgMd, &_s13SiriUtilities16AudioDestinationVSgMR);
      RequestContextMessage.responseMode.getter();
      v96 = v163;
      ResponseMode.init(aceValue:)();
      v97 = type metadata accessor for ResponseMode();
      v98 = *(v97 - 8);
      v99 = *(v98 + 48);
      v100 = v99(v96, 1, v97);
      v101 = v177;
      if (v100 == 1)
      {
        v102 = v153;
        static ResponseMode.displayForward.getter();
        if (v99(v96, 1, v97) != 1)
        {
          outlined destroy of ReferenceResolutionClientProtocol?(v96, &_s13SiriUtilities12ResponseModeVSgMd, &_s13SiriUtilities12ResponseModeVSgMR);
        }
      }

      else
      {
        v102 = v153;
        (*(v98 + 32))(v153, v96, v97);
      }

      v103 = 1;
      (*(v98 + 56))(v102, 0, 1, v97);
      v104 = (*(*v95 + 1064))(v102);

      outlined destroy of ReferenceResolutionClientProtocol?(v102, &_s13SiriUtilities12ResponseModeVSgMd, &_s13SiriUtilities12ResponseModeVSgMR);
      v105 = RequestContextMessage.isEyesFree.getter();
      v106 = (*(*v104 + 1072))(v105 & 1);

      v107 = v164;
      v170(v164, (v175 + v154), v81);
      v108 = v165;
      v156(v165, *MEMORY[0x1E69D0508], v81);
      _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_2(&lazy protocol witness table cache variable for type RequestType and conformance RequestType, MEMORY[0x1E69D0568], MEMORY[0x1E69D0578]);
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      if (v180 != v178 || v181 != v179)
      {
        v103 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }

      v109 = v108;
      v110 = v172;
      v172(v109, v81);
      v110(v107, v81);

      v111 = (*(*v106 + 1080))(v103 & 1);

      v112 = RequestContextMessage.isVoiceTriggerEnabled.getter();
      v113 = (*(*v111 + 1088))(v112 & 1);

      v114 = RequestContextMessage.isTextToSpeechEnabled.getter();
      v115 = (*(*v113 + 1096))(v114 & 1);

      v116 = RequestContextMessage.bargeInModes.getter();
      v117 = (*(*v115 + 1128))(v116);

      v118 = v166;
      RequestContextMessage.approximatePreviousTTSInterval.getter();
      v119 = (*(*v117 + 1136))(v118);

      outlined destroy of ReferenceResolutionClientProtocol?(v118, &_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
      RequestContextMessage.deviceRestrictions.getter();
      v120 = v169;
      Restrictions.init(aceValue:)();
      v121 = type metadata accessor for Restrictions();
      v122 = 1;
      (*(*(v121 - 8) + 56))(v120, 0, 1, v121);
      v123 = (*(*v119 + 1144))(v120);

      outlined destroy of ReferenceResolutionClientProtocol?(v120, &_s13SiriUtilities12RestrictionsVSgMd, &_s13SiriUtilities12RestrictionsVSgMR);
      v124 = (*(*v123 + 1160))(v101[12], v101[13]);

      v125 = RequestContextMessage.isTriggerlessFollowup.getter();
      v126 = (*(*v124 + 1168))(v125 & 1);

      v127 = ConversationRequestProcessor.didPreviouslyFallbackToServer(forUserId:)(v101 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_sessionUserId);
      v128 = (*(*v126 + 1176))(v127 & 1);

      v129 = v175;
      v130 = v167;
      v170(v167, (v175 + v154), v81);
      v131 = v168;
      v156(v168, *MEMORY[0x1E69D0548], v81);
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      if (v180 != v178 || v181 != v179)
      {
        v122 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }

      v132 = v131;
      v133 = v172;
      v172(v132, v81);
      v133(v130, v81);

      v134 = (*(*v128 + 1184))(v122 & 1);

      v135 = RequestContextMessage.voiceTriggerEventInfo.getter();
      v136 = (*(*v134 + 1200))(v135);

      if (*(v101 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_muxContextMessage))
      {
        v137 = MUXContextMessage.isRMVEnabled.getter();
      }

      else
      {
        v137 = 0;
      }

      v138 = (*(*v136 + 1208))(v137 & 1);

      v139 = RequestContextMessage.voiceAudioSessionId.getter();
      v140 = *(*v138 + 1216);
      LOBYTE(v180) = 0;
      v141 = v140(v139);

      v142 = RequestContextMessage.isSystemApertureEnabled.getter();
      v143 = (*(*v141 + 1224))(v142);

      v144 = RequestContextMessage.isLiveActivitiesSupported.getter();
      v145 = (*(*v143 + 1232))(v144);

      v146 = RequestContextMessage.isInAmbient.getter();
      v147 = (*(*v145 + 1240))(v146);

      v149 = (*(*v147 + 1280))(v148);

      ConversationRequestProcessor.sendRequestContextData(_:turn:candidateRequestMessages:)(v149, v129, v157);
    }
  }

  else
  {
    outlined consume of ConversationRequestProcessor.State(v43, v44, v45);

    v176 = Logger.logObject.getter();
    v69 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v176, v69))
    {
      v70 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      v182 = v71;
      *v70 = 136315138;
      v72 = v42();
      if (v74 > 1u)
      {
        if (v74 == 2)
        {
          outlined consume of ConversationRequestProcessor.State(v72, v73, 2);
          v75 = 0xEC00000064657472;
          v76 = 0x617473206E727574;
        }

        else
        {
          v87 = (v72 | v73) == 0;
          if (v72 | v73)
          {
            v76 = 0x6574656C706D6F63;
          }

          else
          {
            v76 = 1701602409;
          }

          if (v87)
          {
            v75 = 0xE400000000000000;
          }

          else
          {
            v75 = 0xE800000000000000;
          }
        }
      }

      else if (v74)
      {
        v75 = 0x80000001DCA80530;
        outlined consume of ConversationRequestProcessor.State(v72, v73, 1);
        v76 = 0xD00000000000001DLL;
      }

      else
      {
        v75 = 0x80000001DCA80510;
        outlined consume of ConversationRequestProcessor.State(v72, v73, 0);
        v76 = 0xD000000000000011;
      }

      v88 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v76, v75, &v182);

      *(v70 + 4) = v88;
      _os_log_impl(&dword_1DC659000, v176, v69, "ConversationBridge got request context data while in unexpected state: %s", v70, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v71);
      MEMORY[0x1E12A2F50](v71, -1, -1);
      MEMORY[0x1E12A2F50](v70, -1, -1);
    }

    else
    {
      v77 = v176;
    }
  }
}

uint64_t ConversationRequestProcessor.handleASRResultCandidateMessage(_:)(void *a1)
{
  v2 = v1;
  v4 = ResultCandidateRequestMessageBase.resultCandidateId.getter();
  v6 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy16SiriMessageTypes11RequestTypeOGMd, &_ss23_ContiguousArrayStorageCy16SiriMessageTypes11RequestTypeOGMR);
  v7 = type metadata accessor for RequestType();
  v8 = *(v7 - 8);
  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1DCA66060;
  (*(v8 + 104))(v10 + v9, *MEMORY[0x1E69D0548], v7);
  v11 = *(v2 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_isMUXEnabled);

  v12 = a1;
  specialized ConversationRequestProcessor.handleCandidateMessage(_:rcId:expectedTypes:messageToCacheIfNotInActiveTurn:shouldUpdateExistingRCState:createResultCandidateState:)(v12, v4, v6, v10, 0xF000000000000007, v11, v2, v12);

  swift_setDeallocating();
  (*(v8 + 8))(v10 + v9, v7);

  return swift_deallocClassInstance();
}

void ConversationRequestProcessor.handleMUXASRResultCandidateMessage(_:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for RequestType();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v60 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v55 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v55 - v11;
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  v14 = __swift_project_value_buffer(v13, static Logger.conversationBridge);
  v15 = a1;
  v61 = v14;
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *v18 = 138412290;
    *(v18 + 4) = v15;
    *v19 = v15;
    v20 = v15;
    _os_log_impl(&dword_1DC659000, v16, v17, "ConversationBridge handling message: %@", v18, 0xCu);
    outlined destroy of ReferenceResolutionClientProtocol?(v19, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1E12A2F50](v19, -1, -1);
    MEMORY[0x1E12A2F50](v18, -1, -1);
  }

  v21 = (*(*v2 + 608))();
  if (!v21)
  {

    v61 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v61, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v65[0] = v28;
      *v27 = 136315138;
      v29 = (*(*v2 + 400))();
      if (v31 > 1u)
      {
        if (v31 == 2)
        {
          outlined consume of ConversationRequestProcessor.State(v29, v30, 2);
          v32 = 0xEC00000064657472;
          v33 = 0x617473206E727574;
        }

        else
        {
          v53 = (v29 | v30) == 0;
          if (v29 | v30)
          {
            v33 = 0x6574656C706D6F63;
          }

          else
          {
            v33 = 1701602409;
          }

          if (v53)
          {
            v32 = 0xE400000000000000;
          }

          else
          {
            v32 = 0xE800000000000000;
          }
        }
      }

      else if (v31)
      {
        v32 = 0x80000001DCA80530;
        outlined consume of ConversationRequestProcessor.State(v29, v30, 1);
        v33 = 0xD00000000000001DLL;
      }

      else
      {
        v32 = 0x80000001DCA80510;
        outlined consume of ConversationRequestProcessor.State(v29, v30, 0);
        v33 = 0xD000000000000011;
      }

      v54 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v32, v65);

      *(v27 + 4) = v54;
      _os_log_impl(&dword_1DC659000, v61, v26, "Got ASRResultCandidateMessage when in state %s: Ignoring", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v28);
      MEMORY[0x1E12A2F50](v28, -1, -1);
      MEMORY[0x1E12A2F50](v27, -1, -1);
    }

    else
    {
      v52 = v61;
    }

    return;
  }

  v22 = v21;
  v23 = OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_requestType;
  swift_beginAccess();
  v24 = *(v5 + 16);
  v57 = v5 + 16;
  v58 = v23;
  v56 = v24;
  v24(v12, v22 + v23, v4);
  (*(v5 + 104))(v9, *MEMORY[0x1E69D0548], v4);
  _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_2(&lazy protocol witness table cache variable for type RequestType and conformance RequestType, MEMORY[0x1E69D0568], MEMORY[0x1E69D0578]);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v64[0] == v62 && v64[1] == v63)
  {
    v25 = 1;
  }

  else
  {
    v25 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v34 = *(v5 + 8);
  v34(v9, v4);
  v59 = v5 + 8;
  v34(v12, v4);

  if ((v25 & 1) == 0)
  {
    v40 = v15;

    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v64[0] = v61;
      *v43 = 138412546;
      *(v43 + 4) = v40;
      *v44 = v40;
      *(v43 + 12) = 2080;
      v45 = v60;
      v56(v60, v22 + v58, v4);
      v46 = v40;
      v47 = RequestType.rawValue.getter();
      v49 = v48;
      v34(v45, v4);
      v50 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v47, v49, v64);

      *(v43 + 14) = v50;
      _os_log_impl(&dword_1DC659000, v41, v42, "%@ is not supported for this requestType: %s", v43, 0x16u);
      outlined destroy of ReferenceResolutionClientProtocol?(v44, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x1E12A2F50](v44, -1, -1);
      v51 = v61;
      __swift_destroy_boxed_opaque_existential_1Tm(v61);
      MEMORY[0x1E12A2F50](v51, -1, -1);
      MEMORY[0x1E12A2F50](v43, -1, -1);
    }

    return;
  }

  specialized ConversationRequestProcessor.makeResultCandidateStatesForMultiUser(from:)(v15);
  v36 = v35;
  if (v35 >> 62)
  {
    v37 = __CocoaSet.count.getter();
    if (v37)
    {
      goto LABEL_17;
    }

LABEL_40:

    return;
  }

  v37 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v37)
  {
    goto LABEL_40;
  }

LABEL_17:
  if (v37 >= 1)
  {
    v38 = 0;
    do
    {
      if ((v36 & 0xC000000000000001) != 0)
      {
        v39 = MEMORY[0x1E12A1FE0](v38, v36);
      }

      else
      {
        v39 = *(v36 + 8 * v38 + 32);
      }

      ++v38;
      ConversationRequestProcessorTurnState.addResultCandidateState(_:)(v39);
      (*(*v39 + 416))(4);
    }

    while (v37 != v38);
    goto LABEL_40;
  }

  __break(1u);
}