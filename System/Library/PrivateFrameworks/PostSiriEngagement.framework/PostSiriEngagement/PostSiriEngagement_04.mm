uint64_t type metadata completion function for TranscriptStep(uint64_t a1)
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

uint64_t type metadata completion function for TranscriptTask(uint64_t a1)
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

uint64_t getEnumTagSinglePayload for TranscriptTask.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TranscriptTask.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t outlined init with take of UUID?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void AppIntentSignalFactory.convertBmEventToEngagementFeatureSet(bmEvent:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v3 = type metadata accessor for ProtoTaskEngagementType();
  MEMORY[0x28223BE20](v3 - 8);
  v47 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Date();
  v50 = *(v5 - 8);
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v42 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriTaskEngagement05ProtoB10FeatureSetVSgMd, &_s18SiriTaskEngagement05ProtoB10FeatureSetVSgMR);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v42 - v12;
  v51 = type metadata accessor for ProtoTaskFeatureSet();
  v48 = *(v51 - 8);
  v14 = MEMORY[0x28223BE20](v51);
  v16 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v42 - v18;
  v20 = MEMORY[0x25F8CE7F0](v17);
  v21 = v52;
  closure #1 in static Utils.extractInteraction(fromAppIntentEvent:)(a1, &v53, &v54);
  if (v21)
  {
    objc_autoreleasePoolPop(v20);
  }

  else
  {
    v43 = v8;
    v44 = v16;
    v22 = a1;
    v52 = 0;
    v45 = v10;
    v46 = v19;
    v23 = v50;
    objc_autoreleasePoolPop(v20);
    v24 = v54;
    INInteraction.extractFeatures()();
    v25 = v48;
    v26 = v51;
    if ((*(v48 + 48))(v13, 1, v51) == 1)
    {

      outlined destroy of Date?(v13, &_s18SiriTaskEngagement05ProtoB10FeatureSetVSgMd, &_s18SiriTaskEngagement05ProtoB10FeatureSetVSgMR);
      v27 = 1;
      v28 = v49;
    }

    else
    {
      v29 = v46;
      (*(v25 + 32))(v46, v13, v26);
      v30 = [v22 absoluteTimestamp];
      v28 = v49;
      if (v30)
      {
        v31 = v43;
        v32 = v30;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v33 = *(v23 + 32);
        v34 = v45;
        v42 = v5;
        v33(v45, v31, v5);
        ProtoTaskEngagementFeatureSet.init()();
        type metadata accessor for SiriTaskEngagementUtils();
        dispatch thunk of static SiriTaskEngagementUtils.convertDateTimeToUInt64(date:)();
        ProtoTaskEngagementFeatureSet.startTimestampMs.setter();
        type metadata accessor for Utils();
        v35 = [v24 intent];
        v36 = [v35 _className];

        v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v39 = v38;

        static Utils.deriveEngagmentType(from:)(v37, v39, v47);

        ProtoTaskEngagementFeatureSet.engagementType.setter();
        v40 = v51;
        (*(v25 + 16))(v44, v29, v51);
        ProtoTaskEngagementFeatureSet.featureSet.setter();

        (*(v50 + 8))(v34, v42);
        (*(v25 + 8))(v29, v40);
        v27 = 0;
      }

      else
      {
        (*(v25 + 8))(v29, v26);

        v27 = 1;
      }
    }

    v41 = type metadata accessor for ProtoTaskEngagementFeatureSet();
    (*(*(v41 - 8) + 56))(v28, v27, 1, v41);
  }
}

uint64_t AppIntentSignalFactory.processBiomeEventsToSignals(bmEvents:siriUISession:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v60 = a2;
  v38[0] = a3;
  v62 = type metadata accessor for ReliabilityCategory();
  v6 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v61 = v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriTaskEngagement05ProtobC10FeatureSetVSgMd, &_s18SiriTaskEngagement05ProtobC10FeatureSetVSgMR);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v38 - v9;
  v11 = type metadata accessor for ProtoTaskEngagementFeatureSet();
  v40 = *(v11 - 8);
  v12 = MEMORY[0x28223BE20](v11);
  v44 = v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v12);
  v43 = v38 - v16;
  v63 = MEMORY[0x277D84F90];
  if (!(a1 >> 62))
  {
    v17 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v17)
    {
      goto LABEL_3;
    }

LABEL_24:
    v46 = MEMORY[0x277D84F90];
    v47 = MEMORY[0x277D84F90];
LABEL_25:
    v36 = v38[0];
    v37 = v46;
    *v38[0] = v47;
    *(v36 + 8) = v37;
    return result;
  }

  v34 = result;
  if ((a1 & 0x8000000000000000) != 0)
  {
    v35 = a1;
  }

  else
  {
    v35 = a1 & 0xFFFFFFFFFFFFFF8;
  }

  v17 = MEMORY[0x25F8CE500](v35);
  result = v34;
  if (!v17)
  {
    goto LABEL_24;
  }

LABEL_3:
  if (v17 >= 1)
  {
    v45 = result;
    v48 = v10;
    v18 = 0;
    v19 = *v4;
    v59 = a1 & 0xC000000000000001;
    v55 = "intentResponseCode";
    v20 = *(v19 + 88);
    v57 = v19 + 88;
    v58 = v20;
    v21 = *MEMORY[0x277D616D0];
    v53 = *MEMORY[0x277D61678];
    v54 = v21;
    v51 = v6 + 8;
    v52 = v6 + 104;
    v42 = (v40 + 48);
    v41 = (v40 + 32);
    v39 = (v40 + 16);
    v38[1] = v40 + 8;
    *&v15 = 136315138;
    v49 = v15;
    v46 = MEMORY[0x277D84F90];
    v47 = MEMORY[0x277D84F90];
    v50 = v4;
    v56 = v17;
    do
    {
      if (v59)
      {
        v22 = MEMORY[0x25F8CE460](v18, a1);
      }

      else
      {
        v22 = *(a1 + 8 * v18 + 32);
      }

      v23 = v22;
      if (v58(v22, v60))
      {

        MEMORY[0x25F8CE160](v24);
        if (*((v63 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v63 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          v4 = v50;
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        v47 = v63;
      }

      v25 = v48;
      (*(*v4 + 80))(v23);
      v26 = v45;
      if ((*v42)(v25, 1, v45) == 1)
      {

        result = outlined destroy of Date?(v25, &_s18SiriTaskEngagement05ProtobC10FeatureSetVSgMd, &_s18SiriTaskEngagement05ProtobC10FeatureSetVSgMR);
      }

      else
      {
        v27 = *v41;
        v28 = v43;
        (*v41)(v43, v25, v26);
        (*v39)(v44, v28, v26);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v46 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v46[2] + 1, 1, v46);
        }

        v30 = v46[2];
        v29 = v46[3];
        if (v30 >= v29 >> 1)
        {
          v46 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v29 > 1), v30 + 1, 1, v46);
        }

        v31 = v40;
        v32 = v45;
        (*(v40 + 8))(v43, v45);
        v33 = v46;
        v46[2] = v30 + 1;
        result = v27(&v33[((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v30], v44, v32);
        v4 = v50;
      }

      ++v18;
    }

    while (v17 != v18);
    goto LABEL_25;
  }

  __break(1u);
  return result;
}

uint64_t AppIntentSignalFactory.getINIntentResponseCodeDescription(responseCode:)(uint64_t a1)
{
  if (a1 <= 3)
  {
    if (a1 <= 1)
    {
      if (!a1)
      {
        return 0x6669636570736E75;
      }

      if (a1 == 1)
      {
        return 0x7964616572;
      }

      return 0;
    }

    if (a1 == 2)
    {
      return 0x65756E69746E6F63;
    }

    else
    {
      return 0x6572676F72506E69;
    }
  }

  else
  {
    if (a1 > 5)
    {
      switch(a1)
      {
        case 6:
          return 0xD000000000000019;
        case 7:
          return 0x6E49656C646E6168;
        case 8:
          return 0xD000000000000018;
      }

      return 0;
    }

    if (a1 == 4)
    {
      return 0x73736563637573;
    }

    else
    {
      return 0x6572756C696166;
    }
  }
}

void AppIntentSignalFactory.convertBmEventToSignal(bmEvent:siriUISession:)(void *a1, uint64_t a2)
{
  v121 = a2;
  v3 = type metadata accessor for Date();
  v122 = *(v3 - 8);
  v123 = v3;
  v4 = MEMORY[0x28223BE20](v3);
  v119 = &v109 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v109 - v7;
  MEMORY[0x28223BE20](v6);
  v10 = &v109 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v109 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v109 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v20 = &v109 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v109 - v22;
  v24 = MEMORY[0x25F8CE7F0](v21);
  v25 = v124;
  closure #1 in static Utils.extractInteraction(fromAppIntentEvent:)(a1, v126, &v127);
  if (v25)
  {
    objc_autoreleasePoolPop(v24);
    return;
  }

  v117 = a1;
  v124 = 0;
  v112 = v14;
  v113 = v16;
  v114 = v20;
  v118 = v23;
  v115 = v8;
  v26 = v123;
  v116 = v10;
  objc_autoreleasePoolPop(v24);
  v27 = v127;
  v28 = [v127 intent];
  objc_opt_self();
  if (swift_dynamicCastObjCClass() || (objc_opt_self(), swift_dynamicCastObjCClass()))
  {

LABEL_6:
    return;
  }

  v111 = v27;
  v29 = [v28 domain];
  v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v32 = v31;

  v33 = v30;
  if (String.count.getter())
  {
    v34 = v26;
    v35 = v33;
    v36 = v117;
  }

  else
  {

    v36 = v117;
    v37 = [v117 intentClass];
    v34 = v26;
    if (!v37)
    {
      v37 = [v28 typeName];
    }

    v38 = v37;
    v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v32 = v39;
  }

  if (String.count.getter() < 1)
  {

    goto LABEL_6;
  }

  if (v35 == 1936744781 && v32 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v40 = [v28 parametersByName];
    if (v40)
    {
      v41 = v40;
      v42 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      if (*(v42 + 16) && (v43 = specialized __RawDictionaryStorage.find<A>(_:)(0x746E656D656C65, 0xE700000000000000), (v44 & 1) != 0))
      {
        outlined init with copy of Any(*(v42 + 56) + 32 * v43, &v127);

        if (swift_dynamicCast())
        {
          if (v126[0] == __PAIR128__(0xEE00535554415453, 0x5F56414E5F544547))
          {

LABEL_39:

            return;
          }

          v108 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v108)
          {

            goto LABEL_39;
          }
        }
      }

      else
      {
      }
    }
  }

  v45 = [v36 donatedBySiri];
  v128 = MEMORY[0x277D839B0];
  LOBYTE(v127) = v45;
  outlined init with take of Any(&v127, v126);
  v46 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v125 = v46;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v126, 0x42646574616E6F64, 0xED00006972695379, isUniquelyReferenced_nonNull_native);
  v48 = v125;
  v49 = [v28 typeName];
  v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v123 = v51;

  v128 = MEMORY[0x277D837D0];
  *&v127 = v50;
  *(&v127 + 1) = v123;
  outlined init with take of Any(&v127, v126);
  v52 = swift_isUniquelyReferenced_nonNull_native();
  v125 = v48;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v126, 0x7954746E65746E69, 0xEE00656D614E6570, v52);
  v53 = v125;
  v54 = [v111 intentResponse];
  if (v54)
  {
    v123 = "messageIdentifiers";
    v55 = v54;
    v56 = (*(*v120 + 104))([v54 _intentResponseCode]);
    v128 = MEMORY[0x277D837D0];
    *&v127 = v56;
    *(&v127 + 1) = v57;
    outlined init with take of Any(&v127, v126);
    v58 = swift_isUniquelyReferenced_nonNull_native();
    v125 = v53;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v126, 0xD000000000000012, v123 | 0x8000000000000000, v58);

    v53 = v125;
  }

  v110 = v53;
  v59 = [v36 absoluteTimestamp];
  if (v59)
  {
    v60 = v118;
    v61 = v59;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v62 = 0;
  }

  else
  {
    v62 = 1;
    v60 = v118;
  }

  v63 = v112;
  v64 = v115;
  v117 = v35;
  v65 = *(v122 + 56);
  LODWORD(v123) = 1;
  v65(v60, v62, 1, v34);
  v66 = [v111 dateInterval];
  v67 = v121;
  if (v66)
  {
    v68 = v66;
    static DateInterval._unconditionallyBridgeFromObjectiveC(_:)();

    LODWORD(v123) = 0;
  }

  v69 = v113;
  v120 = v32;
  v70 = type metadata accessor for DateInterval();
  v71 = *(v70 - 8);
  (*(v71 + 56))(v63, v123, 1, v70);
  outlined init with take of DateInterval?(v63, v69);
  v72 = 0;
  if (!(*(v71 + 48))(v69, 1, v70))
  {
    DateInterval.duration.getter();
    v72 = v73;
  }

  outlined destroy of Date?(v69, &_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
  v74 = v122;
  v75 = *(v122 + 16);
  v76 = v116;
  v75(v116, v67, v34);
  v77 = type metadata accessor for SiriUISession(0);
  v75(v64, v67 + *(v77 + 20), v34);
  v78 = v118;
  v79 = v114;
  outlined init with copy of Date?(v118, v114);
  v80 = (*(v74 + 48))(v79, 1, v34);
  v81 = v80;
  if (v80 == 1)
  {
    v100 = *(v74 + 8);
    v100(v64, v34);
    v100(v76, v34);
    outlined destroy of Date?(v78, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v99 = v117;
    outlined destroy of Date?(v79, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v97 = 0x3FF0000000000000;
    v86 = 0;
    v90 = 0.0;
    v98 = 0.0;
    v72 = 0;
  }

  else
  {
    v82 = v80;
    v83 = v64;
    v84 = v119;
    (*(v74 + 32))(v119, v79, v34);
    Date.timeIntervalSinceReferenceDate.getter();
    v86 = v85;
    Date.timeIntervalSinceReferenceDate.getter();
    v88 = v87;
    Date.timeIntervalSinceReferenceDate.getter();
    v90 = v88 - v89;
    Date.timeIntervalSinceReferenceDate.getter();
    v92 = v91;
    Date.timeIntervalSinceReferenceDate.getter();
    v94 = v93;
    v95 = *(v74 + 8);
    v95(v84, v34);
    v96 = v83;
    v81 = v82;
    v95(v96, v34);
    v95(v76, v34);
    outlined destroy of Date?(v78, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v97 = 0;
    v98 = v92 - v94;
    v99 = v117;
  }

  v101 = v81 != 1;
  v102 = [v28 verb];
  v103 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v105 = v104;

  type metadata accessor for Signal();
  v106 = swift_allocObject();
  *(v106 + 16) = v86;
  *(v106 + 24) = v90;
  *(v106 + 32) = v98;
  *(v106 + 40) = v72;
  *(v106 + 48) = v97;
  *(v106 + 56) = v101;
  v107 = v120;
  *(v106 + 64) = v99;
  *(v106 + 72) = v107;
  *(v106 + 80) = v103;
  *(v106 + 88) = v105;
  *(v106 + 96) = 1;
  *(v106 + 104) = v110;
}

uint64_t outlined init with take of DateInterval?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t AppLaunchSignalFactory.launchReasonSiri.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t AppLaunchSignalFactory.launchReasonHomescreen.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t AppLaunchSignalFactory.launchReasonHomeScreenOpenFolder.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t AppLaunchSignalFactory.convertBmAppLaunchEventToSignal(startingBmEvent:endDate:siriUISession:)(void *a1, uint64_t a2, uint64_t a3)
{
  v102 = a3;
  v106 = type metadata accessor for ReliabilityCategory();
  v5 = *(v106 - 8);
  MEMORY[0x28223BE20](v106);
  v7 = &v98 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v103 = &v98 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v104 = &v98 - v12;
  MEMORY[0x28223BE20](v11);
  v14 = &v98 - v13;
  v15 = type metadata accessor for Date();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v99 = &v98 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v100 = &v98 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v101 = &v98 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v98 - v24;
  MEMORY[0x28223BE20](v23);
  v27 = &v98 - v26;
  v28 = [a1 absoluteTimestamp];
  v29 = 0.0;
  if (v28)
  {
    v30 = v28;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    outlined init with copy of Date?(a2, v14);
    if ((*(v16 + 48))(v14, 1, v15) == 1)
    {
      (*(v16 + 8))(v27, v15);
      outlined destroy of Date?(v14);
    }

    else
    {
      (*(v16 + 32))(v25, v14, v15);
      Date.timeIntervalSince(_:)();
      v32 = v31;
      v33 = *(v16 + 8);
      v33(v25, v15);
      v33(v27, v15);
      if (v32 >= 2.0)
      {
        v29 = 1.0;
        if (v32 > 10.0)
        {
          v29 = 2.0;
        }
      }
    }
  }

  v34 = [a1 launchReason];
  if (v34)
  {
    v35 = v34;
    v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v38 = v37;

    v39 = [a1 bundleID];
    if (v39)
    {
      v40 = v39;
      v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v43 = v42;

      if (v105[4] == v36 && v105[5] == v38 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v44 = 1769105747;

        LODWORD(v105) = 0;
        v106 = 0xE400000000000000;
      }

      else
      {
        v63 = 0xEA00000000006E65;
        v44 = 0x65726373656D6F48;
        if (v105[6] == v36 && v105[7] == v38)
        {
          v106 = 0xEA00000000006E65;
        }

        else
        {
          v64 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v64 & 1) == 0)
          {
            v44 = 0x726568744FLL;
            v63 = 0xE500000000000000;
          }

          v106 = v63;
        }

        LODWORD(v105) = 1;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_25ED7C970;
      *(inited + 32) = 0xD000000000000011;
      v66 = MEMORY[0x277D837D0];
      *(inited + 40) = 0x800000025ED7E690;
      *(inited + 48) = v41;
      *(inited + 56) = v43;
      *(inited + 72) = v66;
      *(inited + 80) = 0xD000000000000011;
      *(inited + 88) = 0x800000025ED80040;
      *(inited + 120) = MEMORY[0x277D839F8];
      *(inited + 96) = v29;
      v67 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd, &_sSS_yptMR);
      swift_arrayDestroy();
      v68 = [a1 absoluteTimestamp];
      if (v68)
      {
        v69 = v104;
        v70 = v68;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v71 = 0;
      }

      else
      {
        v71 = 1;
        v69 = v104;
      }

      v72 = v103;
      v73 = v101;
      (*(v16 + 56))(v69, v71, 1, v15);
      v74 = *(v16 + 16);
      v75 = v102;
      v74(v73, v102, v15);
      v76 = v75 + *(type metadata accessor for SiriUISession(0) + 20);
      v77 = v100;
      v74(v100, v76, v15);
      outlined init with copy of Date?(v69, v72);
      v78 = (*(v16 + 48))(v72, 1, v15);
      if (v78 == 1)
      {
        v96 = *(v16 + 8);
        v96(v77, v15);
        v96(v73, v15);
        outlined destroy of Date?(v69);
        outlined destroy of Date?(v72);
        v94 = 0x3FF0000000000000;
        v83 = 0;
        v87 = 0.0;
        v95 = 0.0;
        v29 = 0.0;
      }

      else
      {
        v79 = *(v16 + 32);
        v104 = v67;
        v80 = v44;
        v81 = v99;
        v79(v99, v72, v15);
        Date.timeIntervalSinceReferenceDate.getter();
        v83 = v82;
        Date.timeIntervalSinceReferenceDate.getter();
        v85 = v84;
        Date.timeIntervalSinceReferenceDate.getter();
        v87 = v85 - v86;
        Date.timeIntervalSinceReferenceDate.getter();
        v89 = v88;
        Date.timeIntervalSinceReferenceDate.getter();
        v91 = v90;
        v92 = *(v16 + 8);
        v93 = v81;
        v44 = v80;
        v67 = v104;
        v92(v93, v15);
        v92(v77, v15);
        v92(v73, v15);
        outlined destroy of Date?(v69);
        v94 = 0;
        v95 = v89 - v91;
      }

      type metadata accessor for Signal();
      result = swift_allocObject();
      *(result + 16) = v83;
      *(result + 24) = v87;
      *(result + 32) = v95;
      *(result + 40) = v29;
      *(result + 48) = v94;
      *(result + 56) = v78 != 1;
      *(result + 64) = 0x636E75614C707041;
      *(result + 72) = 0xE900000000000068;
      v97 = v106;
      *(result + 80) = v44;
      *(result + 88) = v97;
      *(result + 96) = v105;
      *(result + 104) = v67;
      return result;
    }
  }

  if (one-time initialization token for engagement != -1)
  {
    swift_once();
  }

  v45 = type metadata accessor for Logger();
  __swift_project_value_buffer(v45, static Logger.engagement);
  v107 = 0;
  v108 = 0xE000000000000000;
  _StringGuts.grow(_:)(61);
  MEMORY[0x25F8CE090](0xD00000000000001BLL, 0x800000025ED7FFF0);
  v46 = a1;
  v47 = [v46 description];
  v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v50 = v49;

  MEMORY[0x25F8CE090](v48, v50);

  MEMORY[0x25F8CE090](0xD000000000000020, 0x800000025ED80010);
  v52 = v107;
  v51 = v108;
  v53 = *MEMORY[0x277D616E8];
  v54 = type metadata accessor for AppLaunchEventDataIssues();
  (*(*(v54 - 8) + 104))(v7, v53, v54);
  v55 = v106;
  (*(v5 + 104))(v7, *MEMORY[0x277D61680], v106);

  v56 = Logger.logObject.getter();
  v57 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v56, v57))
  {
    v58 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v107 = v59;
    *v58 = 136315138;
    *(v58 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v52, v51, &v107);
    _os_log_impl(&dword_25ECEC000, v56, v57, "%s", v58, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v59);
    MEMORY[0x25F8CEE50](v59, -1, -1);
    MEMORY[0x25F8CEE50](v58, -1, -1);
  }

  type metadata accessor for SiriTaskEngagementUtils();
  v60 = dispatch thunk of static SiriTaskEngagementUtils.formulateSimplifiedReliabilityReasonDescription(reliabilityDescription:)();
  MEMORY[0x25F8CDB30](v7, v60, v61);

  (*(v5 + 8))(v7, v55);
  return 0;
}

void AppLaunchSignalFactory.processBiomeEventsToSignals(bmEvents:siriUISession:)(unint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v103 = a2;
  v106 = a3;
  v111 = type metadata accessor for ReliabilityCategory();
  v4 = *(v111 - 8);
  MEMORY[0x28223BE20](v111);
  v110 = &v101 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v101 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v101 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v101 - v14;
  MEMORY[0x28223BE20](v13);
  v18 = &v101 - v17;
  v126 = MEMORY[0x277D84F90];
  v123 = v4;
  v124 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    goto LABEL_90;
  }

  v19 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v102 = v9;
  v20 = MEMORY[0x277D84F90];
  if (!v19)
  {
    v27 = MEMORY[0x277D84F90];
    a1 = v110;
    v28 = v111;
    if ((MEMORY[0x277D84F90] & 0x8000000000000000) != 0)
    {
      goto LABEL_94;
    }

LABEL_23:
    if ((v27 & 0x4000000000000000) != 0)
    {
      goto LABEL_94;
    }

    v120 = *(v27 + 16);
    if (v120 == 1)
    {
      goto LABEL_25;
    }

    goto LABEL_33;
  }

  v120 = v12;
  v121 = v15;
  v122 = v18;
  v12 = 0;
  do
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v21 = MEMORY[0x25F8CE460](v12, a1);
    }

    else
    {
      if (v12 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_88;
      }

      v21 = *(a1 + 8 * v12 + 32);
    }

    v9 = v21;
    v22 = (v12 + 1);
    if (__OFADD__(v12, 1))
    {
LABEL_87:
      __break(1u);
LABEL_88:
      __break(1u);
LABEL_89:
      __break(1u);
LABEL_90:
      if ((a1 & 0x8000000000000000) != 0)
      {
        v100 = a1;
      }

      else
      {
        v100 = a1 & 0xFFFFFFFFFFFFFF8;
      }

      v19 = MEMORY[0x25F8CE500](v100);
      goto LABEL_3;
    }

    v23 = [v21 bundleID];
    if (!v23)
    {
LABEL_5:
      v15 = &v124;
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v18 = *(v124 + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      goto LABEL_6;
    }

    v24 = v23;
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v25;

    if (v18 == v109[8] && v15 == v109[9])
    {
    }

    else
    {
      v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v18 & 1) == 0)
      {
        goto LABEL_5;
      }
    }

LABEL_6:
    ++v12;
  }

  while (v22 != v19);
  v27 = v124;
  v20 = MEMORY[0x277D84F90];
  v15 = v121;
  v18 = v122;
  v12 = v120;
  a1 = v110;
  v28 = v111;
  if ((v124 & 0x8000000000000000) == 0)
  {
    goto LABEL_23;
  }

LABEL_94:
  v120 = MEMORY[0x25F8CE500](v27);
  if (v120 != 1)
  {
LABEL_33:
    v33 = 0;
    v119 = v27 & 0xC000000000000001;
    v117 = "This launchReason in event ";
    v116 = *MEMORY[0x277D616E8];
    v115 = v123 + 104;
    v114 = *MEMORY[0x277D61680];
    v113 = (v123 + 8);
    v104 = MEMORY[0x277D84F90];
    v105 = v27 + 40;
    *&v16 = 134218498;
    v108 = v16;
    *&v16 = 136315138;
    v107 = v16;
    v118 = v27;
    while (1)
    {
      if (__OFADD__(v33, 1))
      {
        goto LABEL_89;
      }

      if ((v33 + 1) >= v120)
      {
LABEL_73:

        v20 = MEMORY[0x277D84F90];
        v94 = v104;
        goto LABEL_74;
      }

      v12 = v105 + 8 * v33;
      while (1)
      {
        v15 = v33 + 1;
        if (v119)
        {
          v38 = MEMORY[0x25F8CE460](v33, v27);
          v39 = MEMORY[0x25F8CE460](v33 + 1, v27);
        }

        else
        {
          if ((v33 & 0x8000000000000000) != 0)
          {
            __break(1u);
LABEL_84:
            __break(1u);
LABEL_85:
            __break(1u);
LABEL_86:
            __break(1u);
            goto LABEL_87;
          }

          v18 = *(v27 + 16);
          if (v33 >= v18)
          {
            goto LABEL_84;
          }

          v37 = *(v12 - 8);
          if ((v15 & 0x8000000000000000) != 0)
          {
            goto LABEL_85;
          }

          if (v15 >= v18)
          {
            goto LABEL_86;
          }

          v38 = v37;
          v39 = *v12;
        }

        v40 = v39;
        if (one-time initialization token for engagement != -1)
        {
          swift_once();
        }

        v41 = type metadata accessor for Logger();
        v42 = __swift_project_value_buffer(v41, static Logger.engagement);
        v43 = v38;
        v44 = v40;
        v121 = v42;
        v45 = Logger.logObject.getter();
        v46 = static os_log_type_t.debug.getter();

        v47 = os_log_type_enabled(v45, v46);
        v122 = v33;
        v123 = v44;
        if (v47)
        {
          v48 = swift_slowAlloc();
          v49 = swift_slowAlloc();
          v124 = v49;
          *v48 = v108;
          *(v48 + 4) = v33;
          *(v48 + 12) = 2080;
          v50 = v43;
          v51 = [v50 description];
          v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v112 = v43;
          v54 = v53;

          v55 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v52, v54, &v124);

          *(v48 + 14) = v55;
          *(v48 + 22) = 2080;
          v56 = v44;
          v57 = [v56 description];
          v58 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v60 = v59;

          v61 = v58;
          v27 = v118;
          v62 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v61, v60, &v124);

          *(v48 + 24) = v62;
          v43 = v112;
          _os_log_impl(&dword_25ECEC000, v45, v46, "index=%ld. This event = %s, Next event = %s", v48, 0x20u);
          swift_arrayDestroy();
          v63 = v49;
          a1 = v110;
          v28 = v111;
          MEMORY[0x25F8CEE50](v63, -1, -1);
          MEMORY[0x25F8CEE50](v48, -1, -1);
        }

        if ([v43 starting])
        {
          if (([v123 starting] & 1) == 0)
          {
            v64 = [v43 bundleID];
            if (v64)
            {
              break;
            }
          }
        }

LABEL_57:
        v124 = 0;
        v125 = 0xE000000000000000;
        _StringGuts.grow(_:)(45);

        v124 = 0x6576652073696854;
        v125 = 0xEB0000000020746ELL;
        v18 = v43;
        v75 = [v18 description];
        v76 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v78 = v77;

        MEMORY[0x25F8CE090](v76, v78);

        MEMORY[0x25F8CE090](0xD000000000000020, v117 | 0x8000000000000000);
        v79 = v124;
        v9 = v125;
        v80 = type metadata accessor for AppLaunchEventDataIssues();
        (*(*(v80 - 8) + 104))(a1, v116, v80);
        (*v115)(a1, v114, v28);

        v81 = Logger.logObject.getter();
        v82 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v81, v82))
        {
          v83 = swift_slowAlloc();
          v84 = swift_slowAlloc();
          v124 = v84;
          *v83 = v107;
          *(v83 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v79, v9, &v124);
          _os_log_impl(&dword_25ECEC000, v81, v82, "%s", v83, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v84);
          v85 = v84;
          v27 = v118;
          MEMORY[0x25F8CEE50](v85, -1, -1);
          MEMORY[0x25F8CEE50](v83, -1, -1);
        }

        v34 = v122;
        type metadata accessor for SiriTaskEngagementUtils();
        v35 = dispatch thunk of static SiriTaskEngagementUtils.formulateSimplifiedReliabilityReasonDescription(reliabilityDescription:)();
        MEMORY[0x25F8CDB30](a1, v35, v36);

        (*v113)(a1, v28);
        v33 = v34 + 1;
        v12 += 8;
        if ((v34 + 2) >= v120)
        {
          goto LABEL_73;
        }
      }

      v18 = v43;
      v65 = v64;
      v66 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v68 = v67;

      v43 = v18;
      v69 = [v18 bundleID];
      if (!v69)
      {

        goto LABEL_57;
      }

      v70 = v69;
      v71 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v73 = v72;

      if (v66 != v71 || v68 != v73)
      {
        break;
      }

      a1 = v110;
      v28 = v111;
LABEL_61:
      v12 = v123;
      v86 = [v123 absoluteTimestamp];
      if (v86)
      {
        v87 = v102;
        v88 = v86;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v89 = 0;
      }

      else
      {
        v89 = 1;
        v87 = v102;
      }

      v90 = v122;
      v91 = type metadata accessor for Date();
      (*(*(v91 - 8) + 56))(v87, v89, 1, v91);
      v15 = v109;
      v9 = (*(*v109 + 128))(v18, v87, v103);
      outlined destroy of Date?(v87);
      if (!v9)
      {

        v93 = __OFADD__(v90, 2);
        v33 = v90 + 2;
        if (!v93)
        {
          continue;
        }

LABEL_100:
        __break(1u);
        return;
      }

      v15 = &v126;
      MEMORY[0x25F8CE160](v92);
      if (*((v126 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v126 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v104 = v126;
      v93 = __OFADD__(v90, 2);
      v33 = v90 + 2;
      if (v93)
      {
        goto LABEL_100;
      }
    }

    v74 = _stringCompareWithSmolCheck(_:_:expecting:)();

    a1 = v110;
    v28 = v111;
    if (v74)
    {
      goto LABEL_61;
    }

    goto LABEL_57;
  }

  if (!MEMORY[0x25F8CE500](v27))
  {
LABEL_32:
    v120 = 1;
    goto LABEL_33;
  }

LABEL_25:
  if ((v27 & 0xC000000000000001) != 0)
  {
    v29 = MEMORY[0x25F8CE460](0, v27);
LABEL_28:
    v19 = v29;
    if (![v29 starting])
    {

      goto LABEL_32;
    }

    v30 = [v19 absoluteTimestamp];
    if (v30)
    {
      v31 = v30;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v32 = type metadata accessor for Date();
      (*(*(v32 - 8) + 56))(v12, 0, 1, v32);
    }

    else
    {
      v32 = type metadata accessor for Date();
      (*(*(v32 - 8) + 56))(v12, 1, 1, v32);
    }

    outlined init with take of Date?(v12, v15);
    type metadata accessor for Date();
    v96 = *(v32 - 8);
    if ((*(v96 + 48))(v15, 1, v32) == 1)
    {
      outlined destroy of Date?(v15);
      v97 = 1;
    }

    else
    {
      Date.addingTimeInterval(_:)();
      (*(v96 + 8))(v15, v32);
      v97 = 0;
    }

    (*(v96 + 56))(v18, v97, 1, v32);
    v98 = (*(*v109 + 128))(v19, v18, v103);
    outlined destroy of Date?(v18);
    if (v98)
    {

      MEMORY[0x25F8CE160](v99);
      if (*((v126 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v126 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_99;
      }

      goto LABEL_81;
    }

    v94 = MEMORY[0x277D84F90];
  }

  else
  {
    if (*(v27 + 16))
    {
      v29 = *(v27 + 32);
      goto LABEL_28;
    }

    __break(1u);
LABEL_99:
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
LABEL_81:
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    v94 = v126;
  }

LABEL_74:
  v95 = v106;
  *v106 = v94;
  v95[1] = v20;
}

void *AppLaunchSignalFactory.deinit()
{

  return v0;
}

uint64_t AppLaunchSignalFactory.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 80, 7);
}

double AppLaunchSignalFactory.__allocating_init()()
{
  v0 = swift_allocObject();
  result = 2.0;
  *(v0 + 16) = xmmword_25ED7CDB0;
  *(v0 + 32) = 0xD00000000000002BLL;
  *(v0 + 40) = 0x800000025ED80060;
  *(v0 + 48) = 0xD000000000000031;
  *(v0 + 56) = 0x800000025ED80090;
  *(v0 + 64) = 0xD00000000000002DLL;
  *(v0 + 72) = 0x800000025ED800D0;
  return result;
}

double AppLaunchSignalFactory.init()()
{
  result = 2.0;
  *(v0 + 16) = xmmword_25ED7CDB0;
  *(v0 + 32) = 0xD00000000000002BLL;
  *(v0 + 40) = 0x800000025ED80060;
  *(v0 + 48) = 0xD000000000000031;
  *(v0 + 56) = 0x800000025ED80090;
  *(v0 + 64) = 0xD00000000000002DLL;
  *(v0 + 72) = 0x800000025ED800D0;
  return result;
}

uint64_t PSEBiomeFetchConfiguration.init(startDate:endDate:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for Date();
  v9 = *(*(v6 - 8) + 32);
  (v9)((v6 - 8), a3, a1, v6);
  v7 = a3 + *(type metadata accessor for PSEBiomeFetchConfiguration(0) + 20);

  return v9(v7, a2, v6);
}

uint64_t PSEBiomeFetchConfiguration.startDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for Date();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t PSEBiomeFetchConfiguration.endDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PSEBiomeFetchConfiguration(0) + 20);
  v4 = type metadata accessor for Date();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PSEBiomeEventsSource.nowPlayingEvents.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t PSEBiomeEventsSource.appIntentEvents.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t PSEBiomeEventsSource.alarmEvents.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t PSEBiomeEventsSource.appLaunchEvents.setter(uint64_t a1)
{

  *(v1 + 24) = a1;
  return result;
}

uint64_t PSEBiomeEventsSource.homeEvents.setter(uint64_t a1)
{

  *(v1 + 32) = a1;
  return result;
}

uint64_t PSEBiomeEventsSource.appIntentInvocationEvents.setter(uint64_t a1)
{

  *(v1 + 40) = a1;
  return result;
}

uint64_t PSEBiomeEventsSource.photosEngagementEvents.setter(uint64_t a1)
{

  *(v1 + 48) = a1;
  return result;
}

uint64_t PSEBiomeEventsSource.photosEditEvents.setter(uint64_t a1)
{

  *(v1 + 56) = a1;
  return result;
}

uint64_t PSEBiomeEventsSource.photosSearchEvents.setter(uint64_t a1)
{

  *(v1 + 64) = a1;
  return result;
}

uint64_t PSEBiomeEventsSource.photosFavoriteEvents.setter(uint64_t a1)
{

  *(v1 + 72) = a1;
  return result;
}

uint64_t PSEBiomeEventsSource.photosShareEvents.setter(uint64_t a1)
{

  *(v1 + 80) = a1;
  return result;
}

uint64_t PSEBiomeEventsSource.photosPickerEvents.setter(uint64_t a1)
{

  *(v1 + 88) = a1;
  return result;
}

uint64_t PSEBiomeEventsSource.photosDeleteEvents.setter(uint64_t a1)
{

  *(v1 + 96) = a1;
  return result;
}

uint64_t PSEBiomeEventsSource.photosMemoriesViewedEvents.setter(uint64_t a1)
{

  *(v1 + 104) = a1;
  return result;
}

uint64_t PSEBiomeEventsSource.photosMemoriesSharedEvents.setter(uint64_t a1)
{

  *(v1 + 112) = a1;
  return result;
}

void __swiftcall PSEBiomeEventsSource.init()(PostSiriEngagement::PSEBiomeEventsSource *__return_ptr retstr)
{
  v1 = MEMORY[0x277D84F90];
  retstr->nowPlayingEvents._rawValue = MEMORY[0x277D84F90];
  retstr->appIntentEvents._rawValue = v1;
  retstr->alarmEvents._rawValue = v1;
  retstr->appLaunchEvents._rawValue = v1;
  retstr->homeEvents._rawValue = v1;
  retstr->appIntentInvocationEvents._rawValue = v1;
  retstr->photosEngagementEvents._rawValue = v1;
  retstr->photosEditEvents._rawValue = v1;
  retstr->photosSearchEvents._rawValue = v1;
  retstr->photosFavoriteEvents._rawValue = v1;
  retstr->photosShareEvents._rawValue = v1;
  retstr->photosPickerEvents._rawValue = v1;
  retstr->photosDeleteEvents._rawValue = v1;
  retstr->photosMemoriesViewedEvents._rawValue = v1;
  retstr->photosMemoriesSharedEvents._rawValue = v1;
}

__n128 PSEBiomeEventsSource.init(nowPlayingEvents:appIntentEvents:alarmEvents:appLaunchEvents:homeEvents:appIntentInvocationEvents:photosEngagementEvents:photosEditEvents:photosSearchEvents:photosFavoriteEvents:photosShareEvents:photosPickerEvents:photosDeleteEvents:photosMemoriesViewedEvents:photosMemoriesSharedEvents:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, __int128 a11, __n128 a12, uint64_t a13)
{
  result = a12;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  *(a9 + 80) = a11;
  *(a9 + 96) = a12;
  *(a9 + 112) = a13;
  return result;
}

void closure #2 in static PSEBiomeEventsSourceFetcher.fetchSiriUIEvents(startDate:endDate:)(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for ReliabilityCategory();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [a1 eventBody];
  if (v8)
  {
    v9 = v8;
    swift_beginAccess();
    v10 = v9;
    MEMORY[0x25F8CE160]();
    if (*((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    swift_endAccess();
  }

  else
  {
    if (one-time initialization token for engagement != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, static Logger.engagement);
    v12 = *MEMORY[0x277D61558];
    v13 = type metadata accessor for SiriUIEventDataIssues();
    (*(*(v13 - 8) + 104))(v7, v12, v13);
    (*(v5 + 104))(v7, *MEMORY[0x277D61670], v4);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v21[0] = v17;
      *v16 = 136315138;
      *(v16 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000030, 0x800000025ED80340, v21);
      _os_log_impl(&dword_25ECEC000, v14, v15, "%s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v17);
      MEMORY[0x25F8CEE50](v17, -1, -1);
      MEMORY[0x25F8CEE50](v16, -1, -1);
    }

    type metadata accessor for SiriTaskEngagementUtils();
    v18 = dispatch thunk of static SiriTaskEngagementUtils.formulateSimplifiedReliabilityReasonDescription(reliabilityDescription:)();
    MEMORY[0x25F8CDB30](v7, v18, v19);

    (*(v5 + 8))(v7, v4);
  }
}

void closure #2 in static PSEBiomeEventsSourceFetcher.fetchSiriExecutionEvents(startDate:endDate:)(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for ReliabilityCategory();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [a1 eventBody];
  if (v8)
  {
    v9 = v8;
    swift_beginAccess();
    v10 = v9;
    MEMORY[0x25F8CE160]();
    if (*((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    swift_endAccess();
  }

  else
  {
    if (one-time initialization token for engagement != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, static Logger.engagement);
    v12 = *MEMORY[0x277D61578];
    v13 = type metadata accessor for SiriExecutionEventDataIssues();
    (*(*(v13 - 8) + 104))(v7, v12, v13);
    (*(v5 + 104))(v7, *MEMORY[0x277D61698], v4);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v21[0] = v17;
      *v16 = 136315138;
      *(v16 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000037, 0x800000025ED802C0, v21);
      _os_log_impl(&dword_25ECEC000, v14, v15, "%s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v17);
      MEMORY[0x25F8CEE50](v17, -1, -1);
      MEMORY[0x25F8CEE50](v16, -1, -1);
    }

    type metadata accessor for SiriTaskEngagementUtils();
    v18 = dispatch thunk of static SiriTaskEngagementUtils.formulateSimplifiedReliabilityReasonDescription(reliabilityDescription:)();
    MEMORY[0x25F8CDB30](v7, v18, v19);

    (*(v5 + 8))(v7, v4);
  }
}

uint64_t static PSEBiomeEventsSourceFetcher.fetchTranscriptEvents(startDate:endDate:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &aBlock - v6;
  v8 = swift_allocObject();
  *(v8 + 16) = MEMORY[0x277D84F90];
  outlined init with copy of Date?(a2, v7);
  v9.super.isa = Date._bridgeToObjectiveC()().super.isa;
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  isa = 0;
  if ((*(v11 + 48))(v7, 1, v10) != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v11 + 8))(v7, v10);
  }

  v13 = [objc_allocWithZone(MEMORY[0x277CF1A50]) initWithStartDate:v9.super.isa endDate:isa maxEvents:0 lastN:0 reversed:0];

  v14 = [BiomeLibrary() IntelligenceFlow];
  swift_unknownObjectRelease();
  v15 = [v14 Transcript];
  swift_unknownObjectRelease();
  v16 = [v15 Datastream];
  swift_unknownObjectRelease();
  v17 = [v16 publisherWithOptions_];
  v28 = AbstractActivityCollector.collect(callback:);
  v29 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v25 = 1107296256;
  v26 = thunk for @escaping @callee_guaranteed (@guaranteed BPSCompletion) -> ();
  v27 = &block_descriptor_0;
  v18 = _Block_copy(&aBlock);
  v19 = swift_allocObject();
  *(v19 + 16) = v3;
  *(v19 + 24) = v8;
  v28 = partial apply for closure #2 in static PSEBiomeEventsSourceFetcher.fetchTranscriptEvents(startDate:endDate:);
  v29 = v19;
  aBlock = MEMORY[0x277D85DD0];
  v25 = 1107296256;
  v26 = thunk for @escaping @callee_guaranteed (@guaranteed BPSCompletion) -> ();
  v27 = &block_descriptor_6;
  v20 = _Block_copy(&aBlock);

  v21 = [v17 sinkWithCompletion:v18 receiveInput:v20];

  _Block_release(v20);
  _Block_release(v18);

  swift_beginAccess();
  v22 = *(v8 + 16);

  return v22;
}

void closure #2 in static PSEBiomeEventsSourceFetcher.fetchTranscriptEvents(startDate:endDate:)(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for ReliabilityCategory();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v22[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a1 eventBody];
  if (v9)
  {
    v21 = v9;
    if (specialized static PSEBiomeEventsSourceFetcher.isAssistantClient(bmEvent:)(v9))
    {
      swift_beginAccess();
      v10 = v21;
      MEMORY[0x25F8CE160]();
      if (*((*(a3 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a3 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      swift_endAccess();
    }

    else
    {
      v20 = v21;
    }
  }

  else
  {
    if (one-time initialization token for engagement != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, static Logger.engagement);
    v12 = *MEMORY[0x277D61720];
    v13 = type metadata accessor for TranscriptEventDataIssues();
    (*(*(v13 - 8) + 104))(v8, v12, v13);
    (*(v6 + 104))(v8, *MEMORY[0x277D61690], v5);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v22[0] = v17;
      *v16 = 136315138;
      *(v16 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000033, 0x800000025ED80280, v22);
      _os_log_impl(&dword_25ECEC000, v14, v15, "%s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v17);
      MEMORY[0x25F8CEE50](v17, -1, -1);
      MEMORY[0x25F8CEE50](v16, -1, -1);
    }

    type metadata accessor for SiriTaskEngagementUtils();
    v18 = dispatch thunk of static SiriTaskEngagementUtils.formulateSimplifiedReliabilityReasonDescription(reliabilityDescription:)();
    MEMORY[0x25F8CDB30](v8, v18, v19);

    (*(v6 + 8))(v8, v5);
  }
}

uint64_t thunk for @escaping @callee_guaranteed (@in_guaranteed Any, @in_guaranteed Any) -> (@unowned NSComparisonResult)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v9[3] = swift_getObjectType();
  v9[0] = a2;
  v8[3] = swift_getObjectType();
  v8[0] = a3;

  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v6 = v5(v9, v8);

  __swift_destroy_boxed_opaque_existential_0(v8);
  __swift_destroy_boxed_opaque_existential_0(v9);
  return v6;
}

void closure #2 in static PSEBiomeEventsSourceFetcher.fetchDonatedEvents(startDate:endDate:completion:)(void *a1, void (*a2)(void, void), uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for ReliabilityCategory();
  v47 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([a1 state])
  {
    if (one-time initialization token for engagement != -1)
    {
      swift_once();
    }

    v15 = __swift_project_value_buffer(v11, static Logger.engagement);
    v43 = v12;
    (*(v12 + 16))(v14, v15, v11);
    *&v49 = 0;
    *(&v49 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(40);

    *&v49 = 0xD000000000000026;
    *(&v49 + 1) = 0x800000025ED80310;
    v45 = a1;
    v48[0] = [a1 error];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pSgMd, &_ss5Error_pSgMR);
    v16 = String.init<A>(describing:)();
    MEMORY[0x25F8CE090](v16);

    v17 = *(&v49 + 1);
    v46 = v49;
    v18 = *MEMORY[0x277D615C0];
    v19 = type metadata accessor for EngagementSignalCollectionError();
    (*(*(v19 - 8) + 104))(v10, v18, v19);
    v20 = *MEMORY[0x277D616A8];
    v21 = *(v47 + 104);
    v44 = v8;
    v21(v10, v20, v8);

    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v42 = a2;
      v25 = v24;
      v26 = swift_slowAlloc();
      v41[1] = a3;
      v27 = v26;
      *&v49 = v26;
      *v25 = 136315138;
      *(v25 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46, v17, &v49);
      _os_log_impl(&dword_25ECEC000, v22, v23, "%s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v27);
      MEMORY[0x25F8CEE50](v27, -1, -1);
      v28 = v25;
      a2 = v42;
      MEMORY[0x25F8CEE50](v28, -1, -1);
    }

    type metadata accessor for SiriTaskEngagementUtils();
    v29 = dispatch thunk of static SiriTaskEngagementUtils.formulateSimplifiedReliabilityReasonDescription(reliabilityDescription:)();
    MEMORY[0x25F8CDB30](v10, v29, v30);

    (*(v47 + 8))(v10, v44);
    (*(v43 + 8))(v14, v11);
    v31 = [v45 error];
    swift_beginAccess();
    v32 = *(a4 + 96);
    v53 = *(a4 + 80);
    v54 = v32;
    v55 = *(a4 + 112);
    v56 = *(a4 + 128);
    v33 = *(a4 + 32);
    v49 = *(a4 + 16);
    v50 = v33;
    v34 = *(a4 + 64);
    v51 = *(a4 + 48);
    v52 = v34;
    outlined init with copy of PSEBiomeEventsSource(&v49, v48);
    a2(v31, &v49);
    outlined destroy of PSEBiomeEventsSource(&v49);
  }

  else
  {
    if (one-time initialization token for engagement != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v11, static Logger.engagement);
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_25ECEC000, v35, v36, "receiving all Biome events successfully.", v37, 2u);
      MEMORY[0x25F8CEE50](v37, -1, -1);
    }

    swift_beginAccess();
    v38 = *(a4 + 96);
    v53 = *(a4 + 80);
    v54 = v38;
    v55 = *(a4 + 112);
    v56 = *(a4 + 128);
    v39 = *(a4 + 32);
    v49 = *(a4 + 16);
    v50 = v39;
    v40 = *(a4 + 64);
    v51 = *(a4 + 48);
    v52 = v40;
    outlined init with copy of PSEBiomeEventsSource(&v49, v48);
    a2(0, &v49);
    outlined destroy of PSEBiomeEventsSource(&v49);
  }
}

uint64_t closure #3 in static PSEBiomeEventsSourceFetcher.fetchDonatedEvents(startDate:endDate:completion:)(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v168 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v171[3] = &unk_2870E6758;
  swift_unknownObjectRetain();
  v12 = swift_dynamicCastObjCProtocolConditional();
  if (!v12)
  {
    return swift_unknownObjectRelease();
  }

  v13 = v12;
  v168[1] = a4;
  if (one-time initialization token for engagement != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  __swift_project_value_buffer(v14, static Logger.engagement);
  swift_unknownObjectRetain();
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.info.getter();
  swift_unknownObjectRelease();
  v17 = os_log_type_enabled(v15, v16);
  v169 = a3;
  if (v17)
  {
    v18 = swift_slowAlloc();
    v168[0] = v11;
    v19 = v8;
    v20 = v9;
    v21 = a2;
    v22 = v18;
    v23 = swift_slowAlloc();
    v170 = v13;
    v171[0] = v23;
    *v22 = 136315138;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo12BMStoreEvent_pMd, &_sSo12BMStoreEvent_pMR);
    v24 = String.init<A>(describing:)();
    v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v25, v171);

    *(v22 + 4) = v26;
    _os_log_impl(&dword_25ECEC000, v15, v16, "receiving Biome event %s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v23);
    MEMORY[0x25F8CEE50](v23, -1, -1);
    v27 = v22;
    a2 = v21;
    v9 = v20;
    v8 = v19;
    v11 = v168[0];
    MEMORY[0x25F8CEE50](v27, -1, -1);
  }

  if ([a1 respondsToSelector_])
  {
    if ([a1 eventBody])
    {
      objc_opt_self();
      v28 = swift_dynamicCastObjCClass();
      swift_unknownObjectRelease();
      if (v28)
      {
        result = [a1 respondsToSelector_];
        if (result)
        {
          result = [a1 eventBody];
          if (result)
          {
            result = [a1 respondsToSelector_];
            if (result)
            {
              [a1 timestamp];
              v31 = v30;
              objc_opt_self();
              v32 = swift_dynamicCastObjCClassUnconditional();
              swift_beginAccess();
              v33 = a2[5];
              swift_unknownObjectRetain();
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              a2[5] = v33;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                v33 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v33 + 2) + 1, 1, v33);
                a2[5] = v33;
              }

              v36 = *(v33 + 2);
              v35 = *(v33 + 3);
              if (v36 >= v35 >> 1)
              {
                v33 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v35 > 1), v36 + 1, 1, v33);
              }

              *(v33 + 2) = v36 + 1;
              v37 = &v33[16 * v36];
              *(v37 + 4) = v32;
              *(v37 + 5) = v31;
              a2[5] = v33;
LABEL_171:
              swift_endAccess();
              goto LABEL_172;
            }

            goto LABEL_184;
          }
        }

        else
        {
          __break(1u);
        }

        __break(1u);
LABEL_184:
        __break(1u);
        goto LABEL_185;
      }
    }
  }

  if ([a1 respondsToSelector_])
  {
    if ([a1 eventBody])
    {
      objc_opt_self();
      v38 = swift_dynamicCastObjCClass();
      swift_unknownObjectRelease();
      if (v38)
      {
        result = [a1 respondsToSelector_];
        if (result)
        {
          result = [a1 eventBody];
          if (result)
          {
            result = [a1 respondsToSelector_];
            if (result)
            {
              [a1 timestamp];
              v40 = v39;
              objc_opt_self();
              v41 = swift_dynamicCastObjCClassUnconditional();
              swift_beginAccess();
              v42 = a2[2];
              swift_unknownObjectRetain();
              v43 = swift_isUniquelyReferenced_nonNull_native();
              a2[2] = v42;
              if ((v43 & 1) == 0)
              {
                v42 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v42 + 2) + 1, 1, v42);
                a2[2] = v42;
              }

              v45 = *(v42 + 2);
              v44 = *(v42 + 3);
              if (v45 >= v44 >> 1)
              {
                v42 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v44 > 1), v45 + 1, 1, v42);
              }

              *(v42 + 2) = v45 + 1;
              v46 = &v42[16 * v45];
              *(v46 + 4) = v41;
              *(v46 + 5) = v40;
              a2[2] = v42;
              goto LABEL_171;
            }

            goto LABEL_187;
          }

LABEL_186:
          __break(1u);
LABEL_187:
          __break(1u);
          goto LABEL_188;
        }

LABEL_185:
        __break(1u);
        goto LABEL_186;
      }
    }
  }

  if ([a1 respondsToSelector_])
  {
    if ([a1 eventBody])
    {
      objc_opt_self();
      v47 = swift_dynamicCastObjCClass();
      swift_unknownObjectRelease();
      if (v47)
      {
        result = [a1 respondsToSelector_];
        if (result)
        {
          result = [a1 eventBody];
          if (result)
          {
            result = [a1 respondsToSelector_];
            if (result)
            {
              [a1 timestamp];
              v49 = v48;
              objc_opt_self();
              v50 = swift_dynamicCastObjCClassUnconditional();
              swift_beginAccess();
              v51 = a2[4];
              swift_unknownObjectRetain();
              v52 = swift_isUniquelyReferenced_nonNull_native();
              a2[4] = v51;
              if ((v52 & 1) == 0)
              {
                v51 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v51 + 2) + 1, 1, v51);
                a2[4] = v51;
              }

              v54 = *(v51 + 2);
              v53 = *(v51 + 3);
              if (v54 >= v53 >> 1)
              {
                v51 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v53 > 1), v54 + 1, 1, v51);
              }

              *(v51 + 2) = v54 + 1;
              v55 = &v51[16 * v54];
              *(v55 + 4) = v50;
              *(v55 + 5) = v49;
              a2[4] = v51;
              goto LABEL_171;
            }

            goto LABEL_190;
          }

LABEL_189:
          __break(1u);
LABEL_190:
          __break(1u);
          goto LABEL_191;
        }

LABEL_188:
        __break(1u);
        goto LABEL_189;
      }
    }
  }

  if ([a1 respondsToSelector_])
  {
    if ([a1 eventBody])
    {
      objc_opt_self();
      v56 = swift_dynamicCastObjCClass();
      swift_unknownObjectRelease();
      if (v56)
      {
        result = [a1 respondsToSelector_];
        if (result)
        {
          result = [a1 eventBody];
          if (result)
          {
            result = [a1 respondsToSelector_];
            if (result)
            {
              [a1 timestamp];
              v58 = v57;
              objc_opt_self();
              v59 = swift_dynamicCastObjCClassUnconditional();
              swift_beginAccess();
              v60 = a2[6];
              swift_unknownObjectRetain();
              v61 = swift_isUniquelyReferenced_nonNull_native();
              a2[6] = v60;
              if ((v61 & 1) == 0)
              {
                v60 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v60 + 2) + 1, 1, v60);
                a2[6] = v60;
              }

              v63 = *(v60 + 2);
              v62 = *(v60 + 3);
              if (v63 >= v62 >> 1)
              {
                v60 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v62 > 1), v63 + 1, 1, v60);
              }

              *(v60 + 2) = v63 + 1;
              v64 = &v60[16 * v63];
              *(v64 + 4) = v59;
              *(v64 + 5) = v58;
              a2[6] = v60;
              goto LABEL_171;
            }

            goto LABEL_193;
          }

LABEL_192:
          __break(1u);
LABEL_193:
          __break(1u);
          goto LABEL_194;
        }

LABEL_191:
        __break(1u);
        goto LABEL_192;
      }
    }
  }

  if ([a1 respondsToSelector_])
  {
    if ([a1 eventBody])
    {
      objc_opt_self();
      v65 = swift_dynamicCastObjCClass();
      swift_unknownObjectRelease();
      if (v65)
      {
        result = [a1 respondsToSelector_];
        if (result)
        {
          result = [a1 eventBody];
          if (result)
          {
            result = [a1 respondsToSelector_];
            if (result)
            {
              [a1 timestamp];
              v67 = v66;
              objc_opt_self();
              v68 = swift_dynamicCastObjCClassUnconditional();
              swift_beginAccess();
              v69 = a2[7];
              swift_unknownObjectRetain();
              v70 = swift_isUniquelyReferenced_nonNull_native();
              a2[7] = v69;
              if ((v70 & 1) == 0)
              {
                v69 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v69 + 2) + 1, 1, v69);
                a2[7] = v69;
              }

              v72 = *(v69 + 2);
              v71 = *(v69 + 3);
              if (v72 >= v71 >> 1)
              {
                v69 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v71 > 1), v72 + 1, 1, v69);
              }

              *(v69 + 2) = v72 + 1;
              v73 = &v69[16 * v72];
              *(v73 + 4) = v68;
              *(v73 + 5) = v67;
              a2[7] = v69;
              goto LABEL_171;
            }

            goto LABEL_196;
          }

LABEL_195:
          __break(1u);
LABEL_196:
          __break(1u);
          goto LABEL_197;
        }

LABEL_194:
        __break(1u);
        goto LABEL_195;
      }
    }
  }

  if (([a1 respondsToSelector_] & 1) == 0)
  {
    goto LABEL_72;
  }

  if (![a1 eventBody])
  {
    goto LABEL_72;
  }

  objc_opt_self();
  v74 = swift_dynamicCastObjCClass();
  swift_unknownObjectRelease();
  if (!v74)
  {
    goto LABEL_72;
  }

  if (([a1 respondsToSelector_] & 1) == 0)
  {
    goto LABEL_72;
  }

  v75 = [a1 eventBody];
  if (!v75)
  {
    goto LABEL_72;
  }

  v76 = v75;
  objc_opt_self();
  v77 = swift_dynamicCastObjCClass();
  if (!v77)
  {
    swift_unknownObjectRelease();
LABEL_72:
    if ([a1 respondsToSelector_])
    {
      if ([a1 eventBody])
      {
        objc_opt_self();
        v80 = swift_dynamicCastObjCClass();
        swift_unknownObjectRelease();
        if (v80)
        {
          result = [a1 respondsToSelector_];
          if (result)
          {
            result = [a1 eventBody];
            if (result)
            {
              result = [a1 respondsToSelector_];
              if (result)
              {
                [a1 timestamp];
                v82 = v81;
                objc_opt_self();
                v83 = swift_dynamicCastObjCClassUnconditional();
                swift_beginAccess();
                v84 = a2[8];
                swift_unknownObjectRetain();
                v85 = swift_isUniquelyReferenced_nonNull_native();
                a2[8] = v84;
                if ((v85 & 1) == 0)
                {
                  v84 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v84 + 2) + 1, 1, v84);
                  a2[8] = v84;
                }

                v87 = *(v84 + 2);
                v86 = *(v84 + 3);
                if (v87 >= v86 >> 1)
                {
                  v84 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v86 > 1), v87 + 1, 1, v84);
                }

                *(v84 + 2) = v87 + 1;
                v88 = &v84[16 * v87];
                *(v88 + 4) = v83;
                *(v88 + 5) = v82;
                a2[8] = v84;
                goto LABEL_171;
              }

              goto LABEL_199;
            }

LABEL_198:
            __break(1u);
LABEL_199:
            __break(1u);
            goto LABEL_200;
          }

LABEL_197:
          __break(1u);
          goto LABEL_198;
        }
      }
    }

    if ([a1 respondsToSelector_])
    {
      if ([a1 eventBody])
      {
        objc_opt_self();
        v89 = swift_dynamicCastObjCClass();
        swift_unknownObjectRelease();
        if (v89)
        {
          result = [a1 respondsToSelector_];
          if (result)
          {
            result = [a1 eventBody];
            if (result)
            {
              result = [a1 respondsToSelector_];
              if (result)
              {
                [a1 timestamp];
                v91 = v90;
                objc_opt_self();
                v92 = swift_dynamicCastObjCClassUnconditional();
                swift_beginAccess();
                v93 = a2[9];
                swift_unknownObjectRetain();
                v94 = swift_isUniquelyReferenced_nonNull_native();
                a2[9] = v93;
                if ((v94 & 1) == 0)
                {
                  v93 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v93 + 2) + 1, 1, v93);
                  a2[9] = v93;
                }

                v96 = *(v93 + 2);
                v95 = *(v93 + 3);
                if (v96 >= v95 >> 1)
                {
                  v93 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v95 > 1), v96 + 1, 1, v93);
                }

                *(v93 + 2) = v96 + 1;
                v97 = &v93[16 * v96];
                *(v97 + 4) = v92;
                *(v97 + 5) = v91;
                a2[9] = v93;
                goto LABEL_171;
              }

              goto LABEL_202;
            }

LABEL_201:
            __break(1u);
LABEL_202:
            __break(1u);
            goto LABEL_203;
          }

LABEL_200:
          __break(1u);
          goto LABEL_201;
        }
      }
    }

    if ([a1 respondsToSelector_])
    {
      if ([a1 eventBody])
      {
        objc_opt_self();
        v98 = swift_dynamicCastObjCClass();
        swift_unknownObjectRelease();
        if (v98)
        {
          result = [a1 respondsToSelector_];
          if (result)
          {
            result = [a1 eventBody];
            if (result)
            {
              result = [a1 respondsToSelector_];
              if (result)
              {
                [a1 timestamp];
                v100 = v99;
                objc_opt_self();
                v101 = swift_dynamicCastObjCClassUnconditional();
                swift_beginAccess();
                v102 = a2[10];
                swift_unknownObjectRetain();
                v103 = swift_isUniquelyReferenced_nonNull_native();
                a2[10] = v102;
                if ((v103 & 1) == 0)
                {
                  v102 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v102 + 2) + 1, 1, v102);
                  a2[10] = v102;
                }

                v105 = *(v102 + 2);
                v104 = *(v102 + 3);
                if (v105 >= v104 >> 1)
                {
                  v102 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v104 > 1), v105 + 1, 1, v102);
                }

                *(v102 + 2) = v105 + 1;
                v106 = &v102[16 * v105];
                *(v106 + 4) = v101;
                *(v106 + 5) = v100;
                a2[10] = v102;
                goto LABEL_171;
              }

              goto LABEL_205;
            }

LABEL_204:
            __break(1u);
LABEL_205:
            __break(1u);
            goto LABEL_206;
          }

LABEL_203:
          __break(1u);
          goto LABEL_204;
        }
      }
    }

    if ([a1 respondsToSelector_])
    {
      if ([a1 eventBody])
      {
        objc_opt_self();
        v107 = swift_dynamicCastObjCClass();
        swift_unknownObjectRelease();
        if (v107)
        {
          result = [a1 respondsToSelector_];
          if (result)
          {
            result = [a1 eventBody];
            if (result)
            {
              result = [a1 respondsToSelector_];
              if (result)
              {
                [a1 timestamp];
                v109 = v108;
                objc_opt_self();
                v110 = swift_dynamicCastObjCClassUnconditional();
                swift_beginAccess();
                v111 = a2[11];
                swift_unknownObjectRetain();
                v112 = swift_isUniquelyReferenced_nonNull_native();
                a2[11] = v111;
                if ((v112 & 1) == 0)
                {
                  v111 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v111 + 2) + 1, 1, v111);
                  a2[11] = v111;
                }

                v114 = *(v111 + 2);
                v113 = *(v111 + 3);
                if (v114 >= v113 >> 1)
                {
                  v111 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v113 > 1), v114 + 1, 1, v111);
                }

                *(v111 + 2) = v114 + 1;
                v115 = &v111[16 * v114];
                *(v115 + 4) = v110;
                *(v115 + 5) = v109;
                a2[11] = v111;
                goto LABEL_171;
              }

              goto LABEL_208;
            }

LABEL_207:
            __break(1u);
LABEL_208:
            __break(1u);
            goto LABEL_209;
          }

LABEL_206:
          __break(1u);
          goto LABEL_207;
        }
      }
    }

    if ([a1 respondsToSelector_])
    {
      if ([a1 eventBody])
      {
        objc_opt_self();
        v116 = swift_dynamicCastObjCClass();
        swift_unknownObjectRelease();
        if (v116)
        {
          result = [a1 respondsToSelector_];
          if (result)
          {
            result = [a1 eventBody];
            if (result)
            {
              result = [a1 respondsToSelector_];
              if (result)
              {
                [a1 timestamp];
                v118 = v117;
                objc_opt_self();
                v119 = swift_dynamicCastObjCClassUnconditional();
                swift_beginAccess();
                v120 = a2[12];
                swift_unknownObjectRetain();
                v121 = swift_isUniquelyReferenced_nonNull_native();
                a2[12] = v120;
                if ((v121 & 1) == 0)
                {
                  v120 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v120 + 2) + 1, 1, v120);
                  a2[12] = v120;
                }

                v123 = *(v120 + 2);
                v122 = *(v120 + 3);
                if (v123 >= v122 >> 1)
                {
                  v120 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v122 > 1), v123 + 1, 1, v120);
                }

                *(v120 + 2) = v123 + 1;
                v124 = &v120[16 * v123];
                *(v124 + 4) = v119;
                *(v124 + 5) = v118;
                a2[12] = v120;
                goto LABEL_171;
              }

              goto LABEL_211;
            }

LABEL_210:
            __break(1u);
LABEL_211:
            __break(1u);
            goto LABEL_212;
          }

LABEL_209:
          __break(1u);
          goto LABEL_210;
        }
      }
    }

    if ([a1 respondsToSelector_])
    {
      if ([a1 eventBody])
      {
        objc_opt_self();
        v125 = swift_dynamicCastObjCClass();
        swift_unknownObjectRelease();
        if (v125)
        {
          result = [a1 respondsToSelector_];
          if (result)
          {
            result = [a1 eventBody];
            if (result)
            {
              result = [a1 respondsToSelector_];
              if (result)
              {
                [a1 timestamp];
                v127 = v126;
                objc_opt_self();
                v128 = swift_dynamicCastObjCClassUnconditional();
                swift_beginAccess();
                v129 = a2[13];
                swift_unknownObjectRetain();
                v130 = swift_isUniquelyReferenced_nonNull_native();
                a2[13] = v129;
                if ((v130 & 1) == 0)
                {
                  v129 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v129 + 2) + 1, 1, v129);
                  a2[13] = v129;
                }

                v132 = *(v129 + 2);
                v131 = *(v129 + 3);
                if (v132 >= v131 >> 1)
                {
                  v129 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v131 > 1), v132 + 1, 1, v129);
                }

                *(v129 + 2) = v132 + 1;
                v133 = &v129[16 * v132];
                *(v133 + 4) = v128;
                *(v133 + 5) = v127;
                a2[13] = v129;
                goto LABEL_171;
              }

              goto LABEL_214;
            }

LABEL_213:
            __break(1u);
LABEL_214:
            __break(1u);
            goto LABEL_215;
          }

LABEL_212:
          __break(1u);
          goto LABEL_213;
        }
      }
    }

    if ([a1 respondsToSelector_])
    {
      if ([a1 eventBody])
      {
        objc_opt_self();
        v134 = swift_dynamicCastObjCClass();
        swift_unknownObjectRelease();
        if (v134)
        {
          result = [a1 respondsToSelector_];
          if (result)
          {
            result = [a1 eventBody];
            if (result)
            {
              result = [a1 respondsToSelector_];
              if (result)
              {
                [a1 timestamp];
                v136 = v135;
                objc_opt_self();
                v137 = swift_dynamicCastObjCClassUnconditional();
                swift_beginAccess();
                v138 = a2[14];
                swift_unknownObjectRetain();
                v139 = swift_isUniquelyReferenced_nonNull_native();
                a2[14] = v138;
                if ((v139 & 1) == 0)
                {
                  v138 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v138 + 2) + 1, 1, v138);
                  a2[14] = v138;
                }

                v141 = *(v138 + 2);
                v140 = *(v138 + 3);
                if (v141 >= v140 >> 1)
                {
                  v138 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v140 > 1), v141 + 1, 1, v138);
                }

                *(v138 + 2) = v141 + 1;
                v142 = &v138[16 * v141];
                *(v142 + 4) = v137;
                *(v142 + 5) = v136;
                a2[14] = v138;
                goto LABEL_171;
              }

              goto LABEL_217;
            }

LABEL_216:
            __break(1u);
LABEL_217:
            __break(1u);
            goto LABEL_218;
          }

LABEL_215:
          __break(1u);
          goto LABEL_216;
        }
      }
    }

    if ([a1 respondsToSelector_])
    {
      if ([a1 eventBody])
      {
        objc_opt_self();
        v143 = swift_dynamicCastObjCClass();
        swift_unknownObjectRelease();
        if (v143)
        {
          result = [a1 respondsToSelector_];
          if (result)
          {
            result = [a1 eventBody];
            if (result)
            {
              result = [a1 respondsToSelector_];
              if (result)
              {
                [a1 timestamp];
                v145 = v144;
                objc_opt_self();
                v146 = swift_dynamicCastObjCClassUnconditional();
                swift_beginAccess();
                v147 = a2[15];
                swift_unknownObjectRetain();
                v148 = swift_isUniquelyReferenced_nonNull_native();
                a2[15] = v147;
                if ((v148 & 1) == 0)
                {
                  v147 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v147 + 2) + 1, 1, v147);
                  a2[15] = v147;
                }

                v150 = *(v147 + 2);
                v149 = *(v147 + 3);
                if (v150 >= v149 >> 1)
                {
                  v147 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v149 > 1), v150 + 1, 1, v147);
                }

                *(v147 + 2) = v150 + 1;
                v151 = &v147[16 * v150];
                *(v151 + 4) = v146;
                *(v151 + 5) = v145;
                a2[15] = v147;
                goto LABEL_171;
              }

              goto LABEL_220;
            }

LABEL_219:
            __break(1u);
LABEL_220:
            __break(1u);
            goto LABEL_221;
          }

LABEL_218:
          __break(1u);
          goto LABEL_219;
        }
      }
    }

    if (([a1 respondsToSelector_] & 1) == 0 || !objc_msgSend(a1, sel_eventBody))
    {
      return swift_unknownObjectRelease();
    }

    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      swift_unknownObjectRelease();
      result = [a1 respondsToSelector_];
      if (result)
      {
        result = [a1 eventBody];
        if (result)
        {
          result = [a1 respondsToSelector_];
          if (result)
          {
            [a1 timestamp];
            v153 = v152;
            objc_opt_self();
            v154 = swift_dynamicCastObjCClassUnconditional();
            swift_beginAccess();
            v155 = a2[16];
            swift_unknownObjectRetain();
            v156 = swift_isUniquelyReferenced_nonNull_native();
            a2[16] = v155;
            if ((v156 & 1) == 0)
            {
              v155 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v155 + 2) + 1, 1, v155);
              a2[16] = v155;
            }

            v158 = *(v155 + 2);
            v157 = *(v155 + 3);
            if (v158 >= v157 >> 1)
            {
              v155 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v157 > 1), v158 + 1, 1, v155);
            }

            *(v155 + 2) = v158 + 1;
            v159 = &v155[16 * v158];
            *(v159 + 4) = v154;
            *(v159 + 5) = v153;
            a2[16] = v155;
            goto LABEL_171;
          }

          goto LABEL_223;
        }

LABEL_222:
        __break(1u);
LABEL_223:
        __break(1u);
        goto LABEL_224;
      }

LABEL_221:
      __break(1u);
      goto LABEL_222;
    }

LABEL_172:
    swift_unknownObjectRelease();
    return swift_unknownObjectRelease();
  }

  v78 = [v77 absoluteTimestamp];
  if (!v78)
  {
    goto LABEL_172;
  }

  v168[0] = v76;
  v79 = v78;
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  lazy protocol witness table accessor for type Date and conformance Date();
  if (dispatch thunk of static Comparable.< infix(_:_:)() & 1) != 0 || (dispatch thunk of static Comparable.< infix(_:_:)())
  {
    (*(v9 + 8))(v11, v8);
    goto LABEL_172;
  }

  result = [a1 respondsToSelector_];
  if ((result & 1) == 0)
  {
LABEL_224:
    __break(1u);
    goto LABEL_225;
  }

  v169 = v9;
  result = [a1 eventBody];
  if (!result)
  {
LABEL_225:
    __break(1u);
    return result;
  }

  objc_opt_self();
  v160 = swift_dynamicCastObjCClassUnconditional();
  Date.timeIntervalSinceReferenceDate.getter();
  v162 = v161;
  swift_beginAccess();
  v163 = a2[3];
  swift_unknownObjectRetain();
  v164 = swift_isUniquelyReferenced_nonNull_native();
  a2[3] = v163;
  if ((v164 & 1) == 0)
  {
    v163 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v163 + 2) + 1, 1, v163);
    a2[3] = v163;
  }

  v166 = *(v163 + 2);
  v165 = *(v163 + 3);
  if (v166 >= v165 >> 1)
  {
    v163 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v165 > 1), v166 + 1, 1, v163);
  }

  *(v163 + 2) = v166 + 1;
  v167 = &v163[16 * v166];
  *(v167 + 4) = v160;
  *(v167 + 5) = v162;
  a2[3] = v163;
  swift_endAccess();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return (*(v169 + 8))(v11, v8);
}

uint64_t thunk for @escaping @callee_guaranteed (@guaranteed Swift.AnyObject) -> ()(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

void closure #2 in static PSEBiomeEventsSourceFetcher.fetchAppIntentEventAfter(answerEvent:)(void *a1, void *a2, uint64_t a3)
{
  v5 = [a1 eventBody];
  if (!v5)
  {
    return;
  }

  v18 = v5;
  v6 = [v5 itemID];
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

  v11 = [a2 itemID];
  if (!v11)
  {
    if (!v10)
    {
      goto LABEL_20;
    }

    goto LABEL_16;
  }

  v12 = v11;
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  if (!v10)
  {
    if (!v15)
    {
      goto LABEL_20;
    }

    goto LABEL_16;
  }

  if (!v15)
  {
LABEL_16:

    goto LABEL_17;
  }

  if (v8 == v13 && v10 == v15)
  {

    return;
  }

  v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v17 & 1) == 0)
  {
LABEL_17:
    swift_beginAccess();
    v16 = *(a3 + 16);
    *(a3 + 16) = v18;

    return;
  }

LABEL_20:
}

void thunk for @escaping @callee_guaranteed (@guaranteed BPSCompletion) -> ()(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t specialized static PSEBiomeEventsSourceFetcher.fetchSiriExecutionEvents(startDate:endDate:)(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &aBlock - v4;
  v6 = swift_allocObject();
  *(v6 + 16) = MEMORY[0x277D84F90];
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  (*(v8 + 16))(v5, a2, v7);
  (*(v8 + 56))(v5, 0, 1, v7);
  v9.super.isa = Date._bridgeToObjectiveC()().super.isa;
  isa = 0;
  if ((*(v8 + 48))(v5, 1, v7) != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v8 + 8))(v5, v7);
  }

  v11 = [objc_allocWithZone(MEMORY[0x277CF1A50]) initWithStartDate:v9.super.isa endDate:isa maxEvents:0 lastN:0 reversed:0];

  v12 = [BiomeLibrary() Siri];
  swift_unknownObjectRelease();
  v13 = [v12 Execution];
  swift_unknownObjectRelease();
  v14 = [v13 publisherWithOptions_];
  v24 = AbstractActivityCollector.collect(callback:);
  v25 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v21 = 1107296256;
  v22 = thunk for @escaping @callee_guaranteed (@guaranteed BPSCompletion) -> ();
  v23 = &block_descriptor_109;
  v15 = _Block_copy(&aBlock);
  v24 = partial apply for closure #2 in static PSEBiomeEventsSourceFetcher.fetchSiriExecutionEvents(startDate:endDate:);
  v25 = v6;
  aBlock = MEMORY[0x277D85DD0];
  v21 = 1107296256;
  v22 = thunk for @escaping @callee_guaranteed (@guaranteed BPSCompletion) -> ();
  v23 = &block_descriptor_112;
  v16 = _Block_copy(&aBlock);

  v17 = [v14 sinkWithCompletion:v15 receiveInput:v16];

  _Block_release(v16);
  _Block_release(v15);

  swift_beginAccess();
  v18 = *(v6 + 16);

  return v18;
}

uint64_t specialized static PSEBiomeEventsSourceFetcher.fetchDonatedEvents(startDate:endDate:completion:)(char *a1, char *a2, void *a3, uint64_t a4)
{
  v138 = a4;
  v134 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v105 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v105 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v105 - v13;
  v15 = type metadata accessor for Date();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v137 = &v105 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v135 = &v105 - v20;
  v136 = v21;
  MEMORY[0x28223BE20](v19);
  v148 = &v105 - v22;
  Date.addingTimeInterval(_:)();
  v23 = v16[2];
  v139 = a2;
  v146 = v23;
  v147 = v16 + 2;
  v23(v14, a2, v15);
  v24 = v16[7];
  v24(v14, 0, 1, v15);
  v150 = a1;
  v25.super.isa = Date._bridgeToObjectiveC()().super.isa;
  v149 = v16;
  v26 = v16[6];
  v151 = v15;
  isa = 0;
  if (v26(v14, 1, v15) != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (v149[1])(v14, v151);
  }

  v144 = [objc_allocWithZone(MEMORY[0x277CF1A50]) initWithStartDate:v25.super.isa endDate:isa maxEvents:0 lastN:0 reversed:0];

  v28 = v151;
  v146(v12, v148, v151);
  v24(v12, 0, 1, v28);
  v29.super.isa = Date._bridgeToObjectiveC()().super.isa;
  v30 = 0;
  if (v26(v12, 1, v28) != 1)
  {
    v30 = Date._bridgeToObjectiveC()().super.isa;
    (v149[1])(v12, v151);
  }

  v145 = [objc_allocWithZone(MEMORY[0x277CF1A50]) initWithStartDate:v29.super.isa endDate:v30 maxEvents:0 lastN:0 reversed:0];

  v31 = v151;
  v24(v9, 1, 1, v151);
  v32.super.isa = Date._bridgeToObjectiveC()().super.isa;
  v33 = 0;
  if (v26(v9, 1, v31) != 1)
  {
    v33 = Date._bridgeToObjectiveC()().super.isa;
    (v149[1])(v9, v151);
  }

  v34 = [objc_allocWithZone(MEMORY[0x277CF1A50]) initWithStartDate:v32.super.isa endDate:v33 maxEvents:0 lastN:0 reversed:0];
  v126 = v34;

  v35 = [BiomeLibrary() App];
  swift_unknownObjectRelease();
  v36 = [v35 InFocus];
  v133 = v36;
  swift_unknownObjectRelease();
  v37 = v144;
  v144 = [v36 publisherWithOptions_];
  v38 = [BiomeLibrary() HomeKit];
  swift_unknownObjectRelease();
  v39 = [v38 Client];
  swift_unknownObjectRelease();
  v40 = [v39 AccessoryControl];
  v132 = v40;
  swift_unknownObjectRelease();
  v123 = [v40 publisherWithOptions_];
  v41 = [BiomeLibrary() Clock];
  swift_unknownObjectRelease();
  v42 = [v41 Alarm];
  v131 = v42;
  swift_unknownObjectRelease();
  v121 = [v42 publisherWithOptions_];
  v43 = [BiomeLibrary() App];
  swift_unknownObjectRelease();
  v44 = [v43 Intents];
  swift_unknownObjectRelease();
  v45 = [v44 Transcript];
  v130 = v45;
  swift_unknownObjectRelease();
  v119 = [v45 publisherWithOptions_];
  v46 = [BiomeLibrary() Media];
  swift_unknownObjectRelease();
  v47 = [v46 NowPlaying];
  v129 = v47;
  swift_unknownObjectRelease();
  v116 = [v47 publisherWithOptions_];
  v48 = [BiomeLibrary() App];
  swift_unknownObjectRelease();
  v49 = [v48 Intent];
  v128 = v49;
  swift_unknownObjectRelease();
  v50 = [v49 publisherWithOptions_];
  v51 = [BiomeLibrary() Photos];
  swift_unknownObjectRelease();
  v52 = [v51 Engagement];
  v127 = v52;
  swift_unknownObjectRelease();
  v53 = [v52 publisherWithOptions_];
  v54 = [BiomeLibrary() Photos];
  swift_unknownObjectRelease();
  v55 = [v54 Edit];
  v125 = v55;
  swift_unknownObjectRelease();
  v113 = [v55 publisherWithOptions_];
  v56 = [BiomeLibrary() Photos];
  swift_unknownObjectRelease();
  v57 = [v56 Search];
  v124 = v57;
  swift_unknownObjectRelease();
  v112 = [v57 publisherWithOptions_];
  v58 = [BiomeLibrary() Photos];
  swift_unknownObjectRelease();
  v59 = [v58 Favorite];
  v122 = v59;
  swift_unknownObjectRelease();
  v111 = [v59 publisherWithOptions_];
  v60 = [BiomeLibrary() Photos];
  swift_unknownObjectRelease();
  v61 = [v60 Share];
  v120 = v61;
  swift_unknownObjectRelease();
  v143 = [v61 publisherWithOptions_];
  v62 = [BiomeLibrary() Photos];
  swift_unknownObjectRelease();
  v63 = [v62 Picker];
  v118 = v63;
  swift_unknownObjectRelease();
  v142 = [v63 publisherWithOptions_];
  v64 = [BiomeLibrary() Photos];
  swift_unknownObjectRelease();
  v65 = [v64 Delete];
  v117 = v65;
  swift_unknownObjectRelease();
  v141 = [v65 publisherWithOptions_];
  v66 = [BiomeLibrary() Photos];
  swift_unknownObjectRelease();
  v67 = [v66 Memories];
  swift_unknownObjectRelease();
  v68 = [v67 Viewed];
  v115 = v68;
  swift_unknownObjectRelease();
  v140 = [v68 publisherWithOptions_];
  v69 = [BiomeLibrary() Photos];
  swift_unknownObjectRelease();
  v70 = [v69 Memories];
  swift_unknownObjectRelease();
  v71 = [v70 Shared];
  v114 = v71;
  swift_unknownObjectRelease();
  v110 = v37;
  v72 = [v71 publisherWithOptions_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v73 = swift_allocObject();
  *(v73 + 16) = xmmword_25ED7CE50;
  v74 = v50;
  *(v73 + 32) = v50;
  v75 = v116;
  v76 = v123;
  *(v73 + 40) = v116;
  *(v73 + 48) = v76;
  v77 = v121;
  v78 = v119;
  *(v73 + 56) = v121;
  *(v73 + 64) = v78;
  v79 = v113;
  *(v73 + 72) = v53;
  *(v73 + 80) = v79;
  v80 = v112;
  v81 = v111;
  *(v73 + 88) = v112;
  *(v73 + 96) = v81;
  v82 = v142;
  *(v73 + 104) = v143;
  *(v73 + 112) = v82;
  v83 = v140;
  *(v73 + 120) = v141;
  *(v73 + 128) = v83;
  *(v73 + 136) = v72;
  v109 = v74;
  v116 = v75;
  v123 = v76;
  v121 = v77;
  v119 = v78;
  v108 = v53;
  v113 = v79;
  v112 = v80;
  v111 = v81;
  v143 = v143;
  v142 = v142;
  v141 = v141;
  v140 = v140;
  v107 = v72;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo12BPSPublisher_pMd, &_sSo12BPSPublisher_pMR);
  v84 = Array._bridgeToObjectiveC()().super.isa;

  v156 = closure #1 in static PSEBiomeEventsSourceFetcher.fetchDonatedEvents(startDate:endDate:completion:);
  v157 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v153 = 1107296256;
  v105 = &v154;
  v154 = thunk for @escaping @callee_guaranteed (@in_guaranteed Any, @in_guaranteed Any) -> (@unowned NSComparisonResult);
  v155 = &block_descriptor_115;
  v85 = _Block_copy(&aBlock);
  v106 = [v144 orderedMergeWithOthers:v84 comparator:v85];
  _Block_release(v85);

  v86 = swift_allocObject();
  v87 = MEMORY[0x277D84F90];
  v86[2] = MEMORY[0x277D84F90];
  v86[3] = v87;
  v86[4] = v87;
  v86[5] = v87;
  v86[6] = v87;
  v86[7] = v87;
  v86[8] = v87;
  v86[9] = v87;
  v86[10] = v87;
  v86[11] = v87;
  v86[12] = v87;
  v86[13] = v87;
  v86[14] = v87;
  v86[15] = v87;
  v86[16] = v87;
  v88 = swift_allocObject();
  v89 = v138;
  v88[2] = v134;
  v88[3] = v89;
  v88[4] = v86;
  v156 = partial apply for closure #2 in static PSEBiomeEventsSourceFetcher.fetchDonatedEvents(startDate:endDate:completion:);
  v157 = v88;
  aBlock = MEMORY[0x277D85DD0];
  v153 = 1107296256;
  v154 = thunk for @escaping @callee_guaranteed (@guaranteed BPSCompletion) -> ();
  v155 = &block_descriptor_124;
  v134 = _Block_copy(&aBlock);

  v90 = v135;
  v91 = v151;
  v92 = v146;
  v146(v135, v150, v151);
  v93 = v137;
  v92(v137, v139, v91);
  v94 = v149;
  v95 = *(v149 + 80);
  v96 = (v95 + 24) & ~v95;
  v97 = (v136 + v95 + v96) & ~v95;
  v98 = swift_allocObject();
  *(v98 + 16) = v86;
  v99 = v94[4];
  v99(v98 + v96, v90, v91);
  v99(v98 + v97, v93, v91);
  v156 = partial apply for closure #3 in static PSEBiomeEventsSourceFetcher.fetchDonatedEvents(startDate:endDate:completion:);
  v157 = v98;
  aBlock = MEMORY[0x277D85DD0];
  v153 = 1107296256;
  v154 = thunk for @escaping @callee_guaranteed (@guaranteed Swift.AnyObject) -> ();
  v155 = &block_descriptor_130;
  v100 = _Block_copy(&aBlock);

  v101 = v106;
  v102 = v134;
  v103 = [v106 sinkWithCompletion:v134 receiveInput:v100];
  _Block_release(v100);
  _Block_release(v102);

  (v94[1])(v148, v91);
}

void *specialized static PSEBiomeEventsSourceFetcher.fetchAppIntentEventAfter(answerEvent:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v29 - v3;
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v29 - v10;
  v12 = [a1 absoluteTimestamp];
  if (!v12)
  {
    return 0;
  }

  v13 = v12;
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  (*(v6 + 32))(v11, v9, v5);
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  v29 = v14 + 16;
  (*(v6 + 56))(v4, 1, 1, v5);
  v30 = v11;
  v15.super.isa = Date._bridgeToObjectiveC()().super.isa;
  isa = 0;
  if ((*(v6 + 48))(v4, 1, v5) != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v6 + 8))(v4, v5);
  }

  v17 = [objc_allocWithZone(MEMORY[0x277CF1A50]) initWithStartDate:v15.super.isa endDate:isa maxEvents:2 lastN:0 reversed:0];

  v18 = [BiomeLibrary() App];
  swift_unknownObjectRelease();
  v19 = [v18 Intent];
  swift_unknownObjectRelease();
  v20 = [v19 publisherWithOptions_];
  v35 = AbstractActivityCollector.collect(callback:);
  v36 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v32 = 1107296256;
  v33 = thunk for @escaping @callee_guaranteed (@guaranteed BPSCompletion) -> ();
  v34 = &block_descriptor_145;
  v21 = _Block_copy(&aBlock);
  v22 = swift_allocObject();
  *(v22 + 16) = a1;
  *(v22 + 24) = v14;
  v35 = partial apply for closure #2 in static PSEBiomeEventsSourceFetcher.fetchAppIntentEventAfter(answerEvent:);
  v36 = v22;
  aBlock = MEMORY[0x277D85DD0];
  v32 = 1107296256;
  v33 = thunk for @escaping @callee_guaranteed (@guaranteed BPSCompletion) -> ();
  v34 = &block_descriptor_151;
  v23 = _Block_copy(&aBlock);
  v24 = a1;

  v25 = [v20 sinkWithCompletion:v21 receiveInput:v23];
  _Block_release(v23);
  _Block_release(v21);

  (*(v6 + 8))(v30, v5);
  swift_beginAccess();
  v26 = *(v14 + 16);
  v27 = v26;

  return v26;
}

uint64_t specialized static PSEBiomeEventsSourceFetcher.fetchSiriUIEvents(startDate:endDate:)(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &aBlock - v4;
  v6 = swift_allocObject();
  *(v6 + 16) = MEMORY[0x277D84F90];
  outlined init with copy of Date?(a2, v5);
  v7.super.isa = Date._bridgeToObjectiveC()().super.isa;
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  isa = 0;
  if ((*(v9 + 48))(v5, 1, v8) != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v9 + 8))(v5, v8);
  }

  v11 = [objc_allocWithZone(MEMORY[0x277CF1A50]) initWithStartDate:v7.super.isa endDate:isa maxEvents:0 lastN:0 reversed:0];

  v12 = [BiomeLibrary() Siri];
  swift_unknownObjectRelease();
  v13 = [v12 UI];
  swift_unknownObjectRelease();
  v14 = [v13 publisherWithOptions_];
  v24 = AbstractActivityCollector.collect(callback:);
  v25 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v21 = 1107296256;
  v22 = thunk for @escaping @callee_guaranteed (@guaranteed BPSCompletion) -> ();
  v23 = &block_descriptor_136;
  v15 = _Block_copy(&aBlock);
  v24 = partial apply for closure #2 in static PSEBiomeEventsSourceFetcher.fetchSiriUIEvents(startDate:endDate:);
  v25 = v6;
  aBlock = MEMORY[0x277D85DD0];
  v21 = 1107296256;
  v22 = thunk for @escaping @callee_guaranteed (@guaranteed BPSCompletion) -> ();
  v23 = &block_descriptor_139;
  v16 = _Block_copy(&aBlock);

  v17 = [v14 sinkWithCompletion:v15 receiveInput:v16];

  _Block_release(v16);
  _Block_release(v15);

  swift_beginAccess();
  v18 = *(v6 + 16);

  return v18;
}

uint64_t type metadata accessor for PSEBiomeFetchConfiguration(uint64_t a1)
{
  result = type metadata singleton initialization cache for PSEBiomeFetchConfiguration;
  if (!type metadata singleton initialization cache for PSEBiomeFetchConfiguration)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t specialized static PSEBiomeEventsSourceFetcher.isAssistantClient(bmEvent:)(void *a1)
{
  v1 = [a1 identifiers];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 clientApplicationId];

    if (v3)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      String.lowercased()();

      lazy protocol witness table accessor for type String and conformance String();
      LOBYTE(v3) = StringProtocol.contains<A>(_:)();
    }
  }

  else
  {
    LOBYTE(v3) = 0;
  }

  return v3 & 1;
}

uint64_t type metadata completion function for PSEBiomeFetchConfiguration(uint64_t a1)
{
  result = type metadata accessor for Date();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

__n128 __swift_memcpy120_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for PSEBiomeEventsSource(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
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

uint64_t storeEnumTagSinglePayload for PSEBiomeEventsSource(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
      *(result + 120) = 1;
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

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t partial apply for closure #3 in static PSEBiomeEventsSourceFetcher.fetchDonatedEvents(startDate:endDate:completion:)(void *a1)
{
  v3 = *(type metadata accessor for Date() - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 24) & ~v4;
  v6 = *(v1 + 16);
  v7 = v1 + ((*(v3 + 64) + v4 + v5) & ~v4);

  return closure #3 in static PSEBiomeEventsSourceFetcher.fetchDonatedEvents(startDate:endDate:completion:)(a1, v6, v1 + v5, v7);
}

char *_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSS8UTF8ViewV_s5UInt8Vs5NeverOTg5052_sSS18PostSiriEngagementE17encodeWithXorByte3keySSs5F12V_tFA2EXEfU_AITf1cn_n(unint64_t a1, unint64_t a2, char a3)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_37;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

LABEL_5:
  v6 = MEMORY[0x277D84F90];
  if (!v5)
  {
    return v6;
  }

  v30 = MEMORY[0x277D84F90];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5 & ~(v5 >> 63), 0);
  if ((v5 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v6 = v30;
    v9 = a1;
    v10 = (a1 >> 59) & 1;
    if ((a2 & 0x1000000000000000) == 0)
    {
      LOBYTE(v10) = 1;
    }

    v11 = 4 << v10;
    v12 = a1 & 0xFFFFFFFFFFFFLL;
    if ((a2 & 0x2000000000000000) != 0)
    {
      v12 = v4;
    }

    v27 = v12;
    v25 = v5;
    v13 = 15;
    while (1)
    {
      v14 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        v5 = String.UTF8View._foreignCount()();
        goto LABEL_5;
      }

      v15 = v13;
      v16 = v11;
      if ((v13 & 0xC) == v11)
      {
        v15 = _StringGuts._slowEnsureMatchingEncoding(_:)(v13, a1, a2);
        v9 = a1;
      }

      v17 = v15 >> 16;
      if (v15 >> 16 >= v27)
      {
        goto LABEL_35;
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        v19 = String.UTF8View._foreignSubscript(position:)();
        v9 = a1;
      }

      else if ((a2 & 0x2000000000000000) != 0)
      {
        v29[0] = v9;
        v29[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        v19 = *(v29 + v17);
      }

      else
      {
        v18 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if ((v9 & 0x1000000000000000) == 0)
        {
          v18 = _StringObject.sharedUTF8.getter();
          v9 = a1;
        }

        v19 = *(v18 + v17);
      }

      v30 = v6;
      v4 = *(v6 + 16);
      v20 = *(v6 + 24);
      if (v4 >= v20 >> 1)
      {
        v24 = v19;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v4 + 1, 1);
        v9 = a1;
        v19 = v24;
        v6 = v30;
      }

      *(v6 + 16) = v4 + 1;
      *(v6 + v4 + 32) = v19 ^ a3;
      v11 = v16;
      if ((v13 & 0xC) == v16)
      {
        v23 = _StringGuts._slowEnsureMatchingEncoding(_:)(v13, a1, a2);
        v9 = a1;
        v13 = v23;
        v21 = v25;
        if ((a2 & 0x1000000000000000) == 0)
        {
LABEL_12:
          v13 = (v13 & 0xFFFFFFFFFFFF0000) + 65540;
          goto LABEL_13;
        }
      }

      else
      {
        v21 = v25;
        if ((a2 & 0x1000000000000000) == 0)
        {
          goto LABEL_12;
        }
      }

      if (v27 <= v13 >> 16)
      {
        goto LABEL_36;
      }

      v22 = String.UTF8View._foreignIndex(after:)();
      v9 = a1;
      v13 = v22;
LABEL_13:
      ++v8;
      if (v14 == v21)
      {
        return v6;
      }
    }
  }

  __break(1u);
  return result;
}

Swift::Int UnarchiveError.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x25F8CE700](a1 & 1);
  return Hasher._finalize()();
}

Swift::String __swiftcall String.encodeWithXorByte(key:)(Swift::UInt8 key)
{
  v3 = v2;
  v4 = v1;
  v6 = type metadata accessor for String.Encoding();
  MEMORY[0x28223BE20](v6 - 8);
  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSS8UTF8ViewV_s5UInt8Vs5NeverOTg5052_sSS18PostSiriEngagementE17encodeWithXorByte3keySSs5F12V_tFA2EXEfU_AITf1cn_n(v4, v3, key);
  static String.Encoding.utf8.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5UInt8VGMd, &_sSays5UInt8VGMR);
  lazy protocol witness table accessor for type [UInt8] and conformance [A]();
  v7 = String.init<A>(bytes:encoding:)();
  v9 = v8;

  if (v9)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0;
  }

  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = 0xE000000000000000;
  }

  result._object = v11;
  result._countAndFlagsBits = v10;
  return result;
}

unint64_t lazy protocol witness table accessor for type [UInt8] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [UInt8] and conformance [A];
  if (!lazy protocol witness table cache variable for type [UInt8] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSays5UInt8VGMd, &_sSays5UInt8VGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [UInt8] and conformance [A]);
  }

  return result;
}

uint64_t static Utils.deltaTBetween(eventStart:siriUISession:duration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v39 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v38 - v8;
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v38 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v38 - v18;
  v20 = *(v11 + 16);
  v20(&v38 - v18, a2, v10);
  v21 = type metadata accessor for SiriUISession(0);
  v20(v17, a2 + *(v21 + 20), v10);
  outlined init with copy of Date?(v39, v9);
  v22 = (*(v11 + 48))(v9, 1, v10);
  if (v22 == 1)
  {
    v37 = *(v11 + 8);
    v37(v17, v10);
    v37(v19, v10);
    result = outlined destroy of Date?(v9, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v35 = 0x3FF0000000000000;
    v24 = 0;
    v28 = 0.0;
    v36 = 0.0;
    a4 = 0.0;
  }

  else
  {
    (*(v11 + 32))(v14, v9, v10);
    Date.timeIntervalSinceReferenceDate.getter();
    v24 = v23;
    Date.timeIntervalSinceReferenceDate.getter();
    v26 = v25;
    Date.timeIntervalSinceReferenceDate.getter();
    v28 = v26 - v27;
    Date.timeIntervalSinceReferenceDate.getter();
    v30 = v29;
    Date.timeIntervalSinceReferenceDate.getter();
    v32 = v31;
    v33 = *(v11 + 8);
    v33(v14, v10);
    v33(v17, v10);
    result = (v33)(v19, v10);
    v35 = 0;
    v36 = v30 - v32;
  }

  *a3 = v24;
  *(a3 + 8) = v28;
  *(a3 + 16) = v36;
  *(a3 + 24) = a4;
  *(a3 + 32) = v35;
  *(a3 + 40) = v22 != 1;
  return result;
}

uint64_t static Utils.deriveEngagmentType(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for ReliabilityCategory();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 == 0xD000000000000011 && 0x800000025ED80380 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || a1 == 0xD000000000000016 && 0x800000025ED803A0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || a1 == 0xD000000000000016 && 0x800000025ED803C0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v10 = MEMORY[0x277D61518];
LABEL_11:
    v11 = *v10;
    v12 = type metadata accessor for ProtoTaskEngagementType();
    v13 = *(*(v12 - 8) + 104);

    return v13(a3, v11, v12);
  }

  if (a1 == 0xD000000000000013 && 0x800000025ED803E0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v10 = MEMORY[0x277D614E8];
    goto LABEL_11;
  }

  if (a1 == 0xD000000000000013 && 0x800000025ED80400 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || a1 == 0xD000000000000013 && 0x800000025ED80420 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v10 = MEMORY[0x277D614D8];
    goto LABEL_11;
  }

  if (a1 == 0xD000000000000013 && 0x800000025ED7F6D0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v10 = MEMORY[0x277D614F0];
    goto LABEL_11;
  }

  v15 = v7;
  if (a1 == 0xD000000000000013 && 0x800000025ED7F6F0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v10 = MEMORY[0x277D61500];
    goto LABEL_11;
  }

  if (a1 == 0xD000000000000013 && 0x800000025ED80440 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v10 = MEMORY[0x277D614E0];
    goto LABEL_11;
  }

  if (a1 == 0xD000000000000018 && 0x800000025ED80460 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v10 = MEMORY[0x277D61520];
    goto LABEL_11;
  }

  if (a1 == 0xD000000000000010 && 0x800000025ED80480 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v10 = MEMORY[0x277D61508];
    goto LABEL_11;
  }

  if (a1 == 0xD000000000000011 && 0x800000025ED804A0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v10 = MEMORY[0x277D61530];
    goto LABEL_11;
  }

  if (a1 == 0x7370616D4E49 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v10 = MEMORY[0x277D61510];
    goto LABEL_11;
  }

  if (one-time initialization token for engagement != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  __swift_project_value_buffer(v16, static Logger.engagement);
  v29 = 0;
  v30 = 0xE000000000000000;
  _StringGuts.grow(_:)(64);
  MEMORY[0x25F8CE090](0xD00000000000003ELL, 0x800000025ED804C0);
  MEMORY[0x25F8CE090](a1, a2);
  v18 = v29;
  v17 = v30;
  v19 = *MEMORY[0x277D61580];
  v20 = type metadata accessor for EngagementFeaturizationError();
  (*(*(v20 - 8) + 104))(v9, v19, v20);
  (*(v7 + 104))(v9, *MEMORY[0x277D616A0], v6);

  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v29 = v24;
    *v23 = 136315138;
    *(v23 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v17, &v29);
    _os_log_impl(&dword_25ECEC000, v21, v22, "%s", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v24);
    MEMORY[0x25F8CEE50](v24, -1, -1);
    MEMORY[0x25F8CEE50](v23, -1, -1);
  }

  type metadata accessor for SiriTaskEngagementUtils();
  v25 = dispatch thunk of static SiriTaskEngagementUtils.formulateSimplifiedReliabilityReasonDescription(reliabilityDescription:)();
  MEMORY[0x25F8CDB30](v9, v25, v26);

  (*(v15 + 8))(v9, v6);
  v27 = *MEMORY[0x277D614F8];
  v28 = type metadata accessor for ProtoTaskEngagementType();
  return (*(*(v28 - 8) + 104))(a3, v27, v28);
}

id static Utils.isDiagnosticsSubmissionAllowed()()
{
  result = [objc_opt_self() sharedConnection];
  if (result)
  {
    v1 = result;
    v2 = [result effectiveBoolValueForSetting_];

    return (v2 == 1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void static Utils.extractInteraction(fromAppIntentEvent:)(void *a1)
{
  v2 = MEMORY[0x25F8CE7F0]();
  closure #1 in static Utils.extractInteraction(fromAppIntentEvent:)(a1, &v3, &v4);
  objc_autoreleasePoolPop(v2);
}

void closure #1 in static Utils.extractInteraction(fromAppIntentEvent:)(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = v3;
  v8 = type metadata accessor for ReliabilityCategory();
  v64 = *(v8 - 8);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v58 - v12;
  v14 = [a1 interaction];
  if (!v14)
  {
    v21 = a2;
    if (one-time initialization token for engagement != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    __swift_project_value_buffer(v22, static Logger.engagement);
    v62 = 0;
    v63 = 0xE000000000000000;
    _StringGuts.grow(_:)(53);
    MEMORY[0x25F8CE090](0xD000000000000033, 0x800000025ED805A0);
    v23 = a1;
    v24 = [v23 description];
    v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = v26;

    MEMORY[0x25F8CE090](v25, v27);

    v29 = v62;
    v28 = v63;
    v30 = *MEMORY[0x277D616D0];
    v31 = type metadata accessor for AppIntentEventDataIssues();
    (*(*(v31 - 8) + 104))(v13, v30, v31);
    (*(v64 + 104))(v13, *MEMORY[0x277D61678], v8);

    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v62 = v35;
      *v34 = 136315138;
      *(v34 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v28, &v62);
      _os_log_impl(&dword_25ECEC000, v32, v33, "%s", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v35);
      MEMORY[0x25F8CEE50](v35, -1, -1);
      MEMORY[0x25F8CEE50](v34, -1, -1);
    }

    a2 = v21;
    type metadata accessor for SiriTaskEngagementUtils();
    v36 = dispatch thunk of static SiriTaskEngagementUtils.formulateSimplifiedReliabilityReasonDescription(reliabilityDescription:)();
    MEMORY[0x25F8CDB30](v13, v36, v37);

    (*(v64 + 8))(v13, v8);
    lazy protocol witness table accessor for type UnarchiveError and conformance UnarchiveError();
    v5 = swift_allocError();
    *v38 = 1;
    swift_willThrow();
    goto LABEL_9;
  }

  v61 = v8;
  v15 = v14;
  v16 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;

  v19 = objc_allocWithZone(MEMORY[0x277CCAAC8]);
  outlined copy of Data._Representation(v16, v18);
  v20 = specialized @nonobjc NSKeyedUnarchiver.init(forReadingFrom:)();
  outlined consume of Data._Representation(v16, v18);
  if (v3)
  {
LABEL_3:
    outlined consume of Data._Representation(v16, v18);
LABEL_9:
    *a2 = v5;
    return;
  }

  v60 = a2;
  type metadata accessor for INInteraction();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v39 = NSCoder.decodeObject<A>(of:forKey:)();

  if (!v39)
  {
    v59 = v20;
    if (one-time initialization token for engagement != -1)
    {
      swift_once();
    }

    v40 = type metadata accessor for Logger();
    __swift_project_value_buffer(v40, static Logger.engagement);
    v62 = 0;
    v63 = 0xE000000000000000;
    _StringGuts.grow(_:)(78);
    MEMORY[0x25F8CE090](0xD00000000000004CLL, 0x800000025ED805E0);
    v41 = a1;
    v42 = [v41 description];
    v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v45 = v44;

    MEMORY[0x25F8CE090](v43, v45);

    v47 = v62;
    v46 = v63;
    v48 = *MEMORY[0x277D616D0];
    v49 = type metadata accessor for AppIntentEventDataIssues();
    (*(*(v49 - 8) + 104))(v11, v48, v49);
    (*(v64 + 104))(v11, *MEMORY[0x277D61678], v61);

    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = v47;
      v54 = swift_slowAlloc();
      v62 = v54;
      *v52 = 136315138;
      *(v52 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v53, v46, &v62);
      _os_log_impl(&dword_25ECEC000, v50, v51, "%s", v52, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v54);
      MEMORY[0x25F8CEE50](v54, -1, -1);
      MEMORY[0x25F8CEE50](v52, -1, -1);
    }

    a2 = v60;
    type metadata accessor for SiriTaskEngagementUtils();
    v55 = dispatch thunk of static SiriTaskEngagementUtils.formulateSimplifiedReliabilityReasonDescription(reliabilityDescription:)();
    MEMORY[0x25F8CDB30](v11, v55, v56);

    (*(v64 + 8))(v11, v61);
    lazy protocol witness table accessor for type UnarchiveError and conformance UnarchiveError();
    v5 = swift_allocError();
    *v57 = 0;
    swift_willThrow();

    goto LABEL_3;
  }

  outlined consume of Data._Representation(v16, v18);

  *a3 = v39;
}

unint64_t _StringGuts._slowEnsureMatchingEncoding(_:)(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = String.UTF16View.index(_:offsetBy:)();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x25F8CE0D0](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t specialized static Utils.formulateIntentTypeName(intentTypeName:)(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for ReliabilityCategory();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = a1;
  v27 = a2;
  v25[0] = 46;
  v25[1] = 0xE100000000000000;
  lazy protocol witness table accessor for type String and conformance String();
  v8 = (StringProtocol.components<A>(separatedBy:)() + 16);
  if (*v8)
  {
    v9 = &v8[2 * *v8];
    v11 = *v9;
    v10 = v9[1];

    v12._countAndFlagsBits = 20041;
    v12._object = 0xE200000000000000;
    if (!String.hasPrefix(_:)(v12))
    {
      v26 = 20041;
      v27 = 0xE200000000000000;
      MEMORY[0x25F8CE090](v11, v10);

      return v26;
    }
  }

  else
  {

    if (one-time initialization token for engagement != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    __swift_project_value_buffer(v13, static Logger.engagement);
    v26 = 0;
    v27 = 0xE000000000000000;
    _StringGuts.grow(_:)(109);
    MEMORY[0x25F8CE090](0xD000000000000048, 0x800000025ED80520);
    MEMORY[0x25F8CE090](a1, a2);
    MEMORY[0x25F8CE090](0xD000000000000023, 0x800000025ED80570);
    v15 = v26;
    v14 = v27;
    v16 = *MEMORY[0x277D61570];
    v17 = type metadata accessor for SiriExecutionEventDataIssues();
    (*(*(v17 - 8) + 104))(v7, v16, v17);
    (*(v5 + 104))(v7, *MEMORY[0x277D61698], v4);

    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v26 = v21;
      *v20 = 136315138;
      *(v20 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v14, &v26);
      _os_log_impl(&dword_25ECEC000, v18, v19, "%s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v21);
      MEMORY[0x25F8CEE50](v21, -1, -1);
      MEMORY[0x25F8CEE50](v20, -1, -1);
    }

    type metadata accessor for SiriTaskEngagementUtils();
    v22 = dispatch thunk of static SiriTaskEngagementUtils.formulateSimplifiedReliabilityReasonDescription(reliabilityDescription:)();
    MEMORY[0x25F8CDB30](v7, v22, v23);

    (*(v5 + 8))(v7, v4);
    return 0x6465737261706E55;
  }

  return v11;
}

id specialized @nonobjc NSKeyedUnarchiver.init(forReadingFrom:)()
{
  v6[1] = *MEMORY[0x277D85DE8];
  isa = Data._bridgeToObjectiveC()().super.isa;
  v6[0] = 0;
  v2 = [v0 initForReadingFromData:isa error:v6];

  if (v2)
  {
    v3 = v6[0];
  }

  else
  {
    v4 = v6[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v2;
}

uint64_t specialized static Utils.normalizedAlarmIdentifier(from:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URLQueryItem();
  v46 = *(v4 - 8);
  v5 = MEMORY[0x28223BE20](v4);
  v47 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v48 = &v38 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v41 = &v38 - v10;
  MEMORY[0x28223BE20](v9);
  v12 = &v38 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation13URLComponentsVSgMd, &_s10Foundation13URLComponentsVSgMR);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v38 - v14;
  URLComponents.init(string:)();
  v16 = type metadata accessor for URLComponents();
  v17 = *(v16 - 8);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    outlined destroy of Date?(v15, &_s10Foundation13URLComponentsVSgMd, &_s10Foundation13URLComponentsVSgMR);
    goto LABEL_23;
  }

  v18 = URLComponents.queryItems.getter();
  result = (*(v17 + 8))(v15, v16);
  if (!v18)
  {
    goto LABEL_23;
  }

  v38 = v12;
  v39 = a1;
  v40 = a2;
  v45 = *(v18 + 16);
  if (!v45)
  {
    v22 = MEMORY[0x277D84F90];
LABEL_19:

    a1 = v39;
    if (*(v22 + 16))
    {
      v32 = v46;
      v33 = v41;
      (*(v46 + 16))(v41, v22 + ((*(v32 + 80) + 32) & ~*(v32 + 80)), v4);

      v34 = v38;
      (*(v32 + 32))(v38, v33, v4);
      v35 = URLQueryItem.value.getter();
      v37 = v36;
      (*(v32 + 8))(v34, v4);
      if (v37)
      {
        return v35;
      }
    }

    else
    {
    }

LABEL_23:

    return a1;
  }

  v20 = 0;
  v44 = v46 + 16;
  v42 = (v46 + 8);
  v21 = (v46 + 32);
  v22 = MEMORY[0x277D84F90];
  v43 = v4;
  while (v20 < *(v18 + 16))
  {
    v23 = (*(v46 + 80) + 32) & ~*(v46 + 80);
    v24 = *(v46 + 72);
    (*(v46 + 16))(v48, v18 + v23 + v24 * v20, v4);
    if (URLQueryItem.name.getter() == 25705 && v25 == 0xE200000000000000)
    {

LABEL_13:
      v27 = *v21;
      (*v21)(v47, v48, v4);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v49 = v22;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v22 + 16) + 1, 1);
        v22 = v49;
      }

      v30 = *(v22 + 16);
      v29 = *(v22 + 24);
      if (v30 >= v29 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v29 > 1), v30 + 1, 1);
        v22 = v49;
      }

      *(v22 + 16) = v30 + 1;
      v31 = v22 + v23 + v30 * v24;
      v4 = v43;
      result = (v27)(v31, v47, v43);
      goto LABEL_7;
    }

    v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v26)
    {
      goto LABEL_13;
    }

    result = (*v42)(v48, v4);
LABEL_7:
    if (v45 == ++v20)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type UnarchiveError and conformance UnarchiveError()
{
  result = lazy protocol witness table cache variable for type UnarchiveError and conformance UnarchiveError;
  if (!lazy protocol witness table cache variable for type UnarchiveError and conformance UnarchiveError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UnarchiveError and conformance UnarchiveError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UnarchiveError and conformance UnarchiveError;
  if (!lazy protocol witness table cache variable for type UnarchiveError and conformance UnarchiveError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UnarchiveError and conformance UnarchiveError);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for UnarchiveError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for UnarchiveError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
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

unint64_t type metadata accessor for INInteraction()
{
  result = lazy cache variable for type metadata for INInteraction;
  if (!lazy cache variable for type metadata for INInteraction)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for INInteraction);
  }

  return result;
}

uint64_t UserDefaultsDomainProvider.lastCollectionDate.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v42 - v9;
  Date.init(timeIntervalSinceNow:)();
  v11 = *(v1 + 16);
  if (v11)
  {
    swift_beginAccess();
    v12 = *(v2 + 40);
    v13 = *(v2 + 48);

    v14 = MEMORY[0x25F8CDFC0](v12, v13);

    v15 = [v11 valueForKey_];

    if (v15)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v44 = 0u;
      v45 = 0u;
    }

    v46 = v44;
    v47 = v45;
    if (*(&v45 + 1))
    {
      outlined destroy of Any?(&v46);
      v16 = *(v2 + 40);
      v17 = *(v2 + 48);

      v18 = MEMORY[0x25F8CDFC0](v16, v17);

      [v11 doubleForKey_];
      v20 = v19;

      if (one-time initialization token for engagement != -1)
      {
        swift_once();
      }

      v21 = type metadata accessor for Logger();
      __swift_project_value_buffer(v21, static Logger.engagement);

      v22 = Logger.logObject.getter();
      v23 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        *&v46 = v25;
        *v24 = 136315394;
        v43 = v4;
        v26 = a1;
        v28 = *(v2 + 40);
        v27 = *(v2 + 48);

        v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v27, &v46);

        *(v24 + 4) = v29;
        a1 = v26;
        v4 = v43;
        *(v24 + 12) = 2048;
        *(v24 + 14) = v20;
        _os_log_impl(&dword_25ECEC000, v22, v23, "The userdefault has key %s with the value %f", v24, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v25);
        MEMORY[0x25F8CEE50](v25, -1, -1);
        MEMORY[0x25F8CEE50](v24, -1, -1);
      }

      Date.init(timeIntervalSinceReferenceDate:)();
      lazy protocol witness table accessor for type Date and conformance Date();
      v30 = dispatch thunk of static Comparable.>= infix(_:_:)();
      v31 = *(v5 + 8);
      v32 = (v5 + 32);
      if (v30)
      {
        v31(v10, v4);
        return (*v32)(a1, v8, v4);
      }

      else
      {
        v31(v8, v4);
        return (*v32)(a1, v10, v4);
      }
    }
  }

  else
  {
    v46 = 0u;
    v47 = 0u;
  }

  outlined destroy of Any?(&v46);
  if (one-time initialization token for engagement != -1)
  {
    swift_once();
  }

  v34 = type metadata accessor for Logger();
  __swift_project_value_buffer(v34, static Logger.engagement);

  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    *&v44 = v38;
    *v37 = 136315138;
    swift_beginAccess();
    v40 = *(v2 + 40);
    v39 = *(v2 + 48);

    v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v39, &v44);

    *(v37 + 4) = v41;
    _os_log_impl(&dword_25ECEC000, v35, v36, "The userdefault contained no value for %s", v37, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v38);
    MEMORY[0x25F8CEE50](v38, -1, -1);
    MEMORY[0x25F8CEE50](v37, -1, -1);
  }

  return (*(v5 + 32))(a1, v10, v4);
}

uint64_t outlined destroy of Any?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t UserDefaultsDomainProvider.__allocating_init(collectorIdentifier:domain:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  UserDefaultsDomainProvider.init(collectorIdentifier:domain:)(a1, a2, a3, a4);
  return v8;
}

uint64_t UserDefaultsDomainProvider.lastCollectionDate.setter(uint64_t a1)
{
  v3 = v1[4];
  v4 = v1[3] & 0xFFFFFFFFFFFFLL;
  if ((v3 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(v3) & 0xF;
  }

  if (v4)
  {
    v5 = v1;
    Date.timeIntervalSinceReferenceDate.getter();
    v7 = v6;
    if (one-time initialization token for engagement != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    __swift_project_value_buffer(v8, static Logger.engagement);

    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v35[0] = v12;
      *v11 = 136315394;
      swift_beginAccess();
      v13 = v1[5];
      v14 = v1[6];

      v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, v35);

      *(v11 + 4) = v15;
      *(v11 + 12) = 2048;
      *(v11 + 14) = v7;
      _os_log_impl(&dword_25ECEC000, v9, v10, "Set key %s to %f", v11, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v12);
      MEMORY[0x25F8CEE50](v12, -1, -1);
      MEMORY[0x25F8CEE50](v11, -1, -1);
    }

    v16 = v1[2];
    if (v16)
    {
      swift_beginAccess();
      v17 = v1[5];
      v18 = v5[6];
      v19 = v16;

      v20 = MEMORY[0x25F8CDFC0](v17, v18);

      [v19 setDouble:v20 forKey:v7];
    }

    else
    {

      v20 = Logger.logObject.getter();
      v28 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v20, v28))
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v36 = v30;
        *v29 = 136315138;
        swift_beginAccess();
        v32 = v5[5];
        v31 = v5[6];

        v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v31, &v36);

        *(v29 + 4) = v33;
        _os_log_impl(&dword_25ECEC000, v20, v28, "Fail to set key %s due to empty userdefaults", v29, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v30);
        MEMORY[0x25F8CEE50](v30, -1, -1);
        MEMORY[0x25F8CEE50](v29, -1, -1);
      }
    }

    v34 = type metadata accessor for Date();
    return (*(*(v34 - 8) + 8))(a1, v34);
  }

  else
  {
    if (one-time initialization token for engagement != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    __swift_project_value_buffer(v21, static Logger.engagement);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_25ECEC000, v22, v23, "Skip userDefault set due to empty identifier", v24, 2u);
      MEMORY[0x25F8CEE50](v24, -1, -1);
    }

    v25 = type metadata accessor for Date();
    v26 = *(*(v25 - 8) + 8);

    return v26(a1, v25);
  }
}

uint64_t UserDefaultsDomainProvider.userDefaultsKey.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 40);

  return v1;
}

uint64_t UserDefaultsDomainProvider.userDefaultsKey.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
}

void *UserDefaultsDomainProvider.init(collectorIdentifier:domain:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v11 = MEMORY[0x25F8CDFC0](a3, a4);

  v12 = [v10 initWithSuiteName_];

  v5[2] = v12;
  v5[3] = a1;
  v5[4] = a2;

  MEMORY[0x25F8CE090](0xD000000000000011, 0x800000025ED7F8C0);
  v5[5] = a1;
  v5[6] = a2;
  return v5;
}

uint64_t key path setter for UserDefaultsDomainProvider.lastCollectionDate : UserDefaultsDomainProvider(uint64_t a1)
{
  v2 = type metadata accessor for Date();
  MEMORY[0x28223BE20](v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v4, a1);
  return UserDefaultsDomainProvider.lastCollectionDate.setter(v4);
}

void (*UserDefaultsDomainProvider.lastCollectionDate.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = type metadata accessor for Date();
  v5[1] = v6;
  v7 = *(v6 - 8);
  v5[2] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[3] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[3] = malloc(*(v7 + 64));
    v9 = malloc(v8);
  }

  v5[4] = v9;
  UserDefaultsDomainProvider.lastCollectionDate.getter(v9);
  return UserDefaultsDomainProvider.lastCollectionDate.modify;
}

void UserDefaultsDomainProvider.lastCollectionDate.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  if (a2)
  {
    v5 = v2[1];
    v6 = v2[2];
    (*(v6 + 16))(*(*a1 + 24), v4, v5);
    UserDefaultsDomainProvider.lastCollectionDate.setter(v3);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    UserDefaultsDomainProvider.lastCollectionDate.setter(*(*a1 + 32));
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t UserDefaultsDomainProvider.deinit()
{

  return v0;
}

uint64_t UserDefaultsDomainProvider.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 56, 7);
}

void PSEAppIntentTranscriptSELFEmitter.emitPSEAppIntentTranscript(appIntentTranscriptSignals:appLaunchSignals:task:)(unint64_t a1, void (*a2)(char *, uint64_t), uint64_t a3)
{
  v265 = a3;
  v263 = a2;
  v4 = type metadata accessor for ReliabilityCategory();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v239 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = v239 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v14 = v239 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v17 = v239 - v16;
  MEMORY[0x28223BE20](v15);
  v260 = v239 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v258 = v239 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v259 = v239 - v23;
  MEMORY[0x28223BE20](v22);
  v257 = v239 - v24;
  v25 = type metadata accessor for UUID();
  v26 = MEMORY[0x28223BE20](v25);
  v28 = v239 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v26);
  v30 = MEMORY[0x28223BE20](v29);
  v31 = MEMORY[0x28223BE20](v30);
  v36 = v239 - v35;
  v37 = a1 & 0xFFFFFFFFFFFFFF8;
  v38 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_46;
  }

  v39 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v39)
  {
LABEL_50:
    if (one-time initialization token for engagement != -1)
    {
      swift_once();
    }

    v69 = type metadata accessor for Logger();
    __swift_project_value_buffer(v69, static Logger.engagement);
    v70 = *MEMORY[0x277D61710];
    v71 = type metadata accessor for TranscriptEventDataIssues();
    (*(*(v71 - 8) + 104))(v8, v70, v71);
    (*(v5 + 104))(v8, *MEMORY[0x277D61690], v4);
    v72 = Logger.logObject.getter();
    v73 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      v269[0] = v75;
      *v74 = 136315138;
      *(v74 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000007ALL, 0x800000025ED80750, v269);
      _os_log_impl(&dword_25ECEC000, v72, v73, "%s", v74, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v75);
      MEMORY[0x25F8CEE50](v75, -1, -1);
      MEMORY[0x25F8CEE50](v74, -1, -1);
    }

    v76 = v265;
    v77 = v263;
    type metadata accessor for SiriTaskEngagementUtils();
    v78 = dispatch thunk of static SiriTaskEngagementUtils.formulateSimplifiedReliabilityReasonDescription(reliabilityDescription:)();
    MEMORY[0x25F8CDB30](v8, v78, v79);

    (*(v5 + 8))(v8, v4);
    (*(*v266 + 176))(v77, v76);
    return;
  }

LABEL_3:
  v250 = v17;
  v256 = v31;
  v254 = v14;
  v17 = (a1 & 0xC000000000000001);
  v262 = v4;
  v253 = v36;
  v248 = v28;
  v251 = v33;
  v247 = v34;
  v249 = v32;
  if ((a1 & 0xC000000000000001) == 0)
  {
    if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v264 = *(a1 + 32);

      goto LABEL_6;
    }

    __break(1u);
    goto LABEL_58;
  }

LABEL_56:
  v264 = MEMORY[0x25F8CE460](0, a1);
LABEL_6:
  v40 = [objc_allocWithZone(MEMORY[0x277D5A190]) init];
  if (!v40)
  {
    goto LABEL_41;
  }

  v255 = v40;
  v252 = [objc_allocWithZone(MEMORY[0x277D5A198]) init];
  if (!v252)
  {
    v49 = v255;
LABEL_40:

LABEL_41:
    if (one-time initialization token for engagement == -1)
    {
LABEL_42:
      v55 = type metadata accessor for Logger();
      __swift_project_value_buffer(v55, static Logger.engagement);
      v56 = *MEMORY[0x277D615B0];
      v57 = type metadata accessor for EngagementSignalCollectionError();
      (*(*(v57 - 8) + 104))(v11, v56, v57);
      v58 = v262;
      (*(v5 + 104))(v11, *MEMORY[0x277D616A8], v262);
      v59 = Logger.logObject.getter();
      v60 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v59, v60))
      {
        v61 = swift_slowAlloc();
        v62 = swift_slowAlloc();
        v269[0] = v62;
        *v61 = 136315138;
        *(v61 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000003DLL, 0x800000025ED806A0, v269);
        _os_log_impl(&dword_25ECEC000, v59, v60, "%s", v61, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v62);
        MEMORY[0x25F8CEE50](v62, -1, -1);
        MEMORY[0x25F8CEE50](v61, -1, -1);
      }

      type metadata accessor for SiriTaskEngagementUtils();
      v63 = dispatch thunk of static SiriTaskEngagementUtils.formulateSimplifiedReliabilityReasonDescription(reliabilityDescription:)();
      MEMORY[0x25F8CDB30](v11, v63, v64);

      (*(v5 + 8))(v11, v58);
      return;
    }

LABEL_58:
    swift_once();
    goto LABEL_42;
  }

  v245 = [objc_allocWithZone(MEMORY[0x277D5A178]) init];
  if (!v245)
  {
    v50 = v255;
    v51 = v252;
LABEL_39:

    v49 = v51;
    goto LABEL_40;
  }

  v246 = [objc_allocWithZone(MEMORY[0x277D5A1A0]) init];
  if (!v246)
  {
    v52 = v245;
    v53 = v255;
    v54 = v252;
LABEL_38:

    v50 = v54;
    v51 = v52;
    goto LABEL_39;
  }

  v244 = [objc_allocWithZone(MEMORY[0x277D5A170]) init];
  if (!v244)
  {

    v53 = v252;
    v54 = v245;
    v52 = v246;
    goto LABEL_38;
  }

  v11 = 0;
  v267 = MEMORY[0x277D84F90];
  v261 = a1 & 0xFFFFFFFFFFFFFF8;
  v243 = v5;
  v5 = MEMORY[0x277D839B0];
  do
  {
    if (v17)
    {
      v31 = MEMORY[0x25F8CE460](v11, a1);
      v28 = v31;
      v4 = (v11 + 1);
      if (__OFADD__(v11, 1))
      {
        goto LABEL_45;
      }
    }

    else
    {
      if (v11 >= *(v261 + 16))
      {
        __break(1u);
        goto LABEL_56;
      }

      v28 = *(a1 + 8 * v11 + 32);

      v4 = (v11 + 1);
      if (__OFADD__(v11, 1))
      {
LABEL_45:
        __break(1u);
LABEL_46:
        v250 = v17;
        v256 = v31;
        if ((a1 & 0x8000000000000000) != 0)
        {
          v65 = a1;
        }

        else
        {
          v65 = v37;
        }

        v66 = v36;
        v251 = v33;
        v67 = v34;
        v249 = v32;
        v68 = MEMORY[0x25F8CE500](v65);
        v32 = v249;
        v34 = v67;
        v33 = v251;
        v36 = v66;
        v39 = v68;
        v31 = v256;
        v17 = v250;
        if (!v39)
        {
          goto LABEL_50;
        }

        goto LABEL_3;
      }
    }

    v14 = (*(*v28 + 216))();
    if (*(v14 + 16) && (v41 = specialized __RawDictionaryStorage.find<A>(_:)(0x42646574616E6F64, 0xED00006972695379), (v42 & 1) != 0))
    {
      outlined init with copy of Any(*(v14 + 56) + 32 * v41, v269);

      if (swift_dynamicCast() & 1) != 0 && (v270)
      {
        v14 = &v267;
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v8 = (a1 >> 62);
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        goto LABEL_25;
      }
    }

    else
    {
    }

LABEL_25:
    ++v11;
  }

  while (v4 != v39);
  v43 = v267;
  if (v267 < 0 || (v267 & 0x4000000000000000) != 0)
  {
    v44 = MEMORY[0x25F8CE500](v267);
    if (!v44)
    {
      goto LABEL_60;
    }

LABEL_29:
    v45 = __OFSUB__(v44, 1);
    v46 = v44 - 1;
    if (v45)
    {
LABEL_143:
      __break(1u);
    }

    else if ((v43 & 0xC000000000000001) == 0)
    {
      if ((v46 & 0x8000000000000000) == 0)
      {
        if (v46 < *(v43 + 16))
        {
          v47 = *(v43 + 8 * v46 + 32);

          goto LABEL_61;
        }

        goto LABEL_148;
      }

      __break(1u);
LABEL_147:
      __break(1u);
LABEL_148:
      __break(1u);
      goto LABEL_149;
    }

    v153 = MEMORY[0x25F8CE460](v46, v43);

    v47 = v153;
    goto LABEL_61;
  }

  v44 = *(v267 + 16);
  if (v44)
  {
    goto LABEL_29;
  }

LABEL_60:

  v47 = v264;
LABEL_61:
  (*(*v47 + 120))(v269, v48);
  v80 = [v246 setEventDonationTimeInSecondsSince2001_];
  v81 = *(*v47 + 216);
  v82 = *v47 + 216;
  v264 = v47;
  v242 = v81;
  v241 = v82;
  v83 = (v81)(v80);
  if (*(v83 + 16) && (v84 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000011, 0x800000025ED806E0), (v85 & 1) != 0))
  {
    outlined init with copy of Any(*(v83 + 56) + 32 * v84, v269);

    v86 = swift_dynamicCast();
    if (v86)
    {
      v87 = v267;
      v88 = v268;
      v89 = v264;
      goto LABEL_67;
    }
  }

  else
  {
  }

  v89 = v264;
  v87 = (*(*v264 + 144))(v86);
  v88 = v90;
LABEL_67:
  v91 = MEMORY[0x25F8CDFC0](v87, v88);

  v92 = v246;
  [v246 setDomain_];

  v93 = (*(*v89 + 168))();
  v94 = MEMORY[0x25F8CDFC0](v93);

  [v92 setAction_];

  v95 = v242();
  if (*(v95 + 16))
  {
    v96 = specialized __RawDictionaryStorage.find<A>(_:)(0x42646574616E6F64, 0xED00006972695379);
    v97 = v263;
    if (v98)
    {
      outlined init with copy of Any(*(v95 + 56) + 32 * v96, v269);

      if (swift_dynamicCast())
      {
        v99 = v267;
      }

      else
      {
        v99 = 2;
      }
    }

    else
    {

      v99 = 2;
    }
  }

  else
  {

    v99 = 2;
    v97 = v263;
  }

  v14 = v266;
  v100 = (*(*v266 + 104))(v99);
  [v246 setIsDonatedBySiri_];
  if (v97 >> 62)
  {
    if (v97 < 0)
    {
      v121 = v97;
    }

    else
    {
      v121 = v97 & 0xFFFFFFFFFFFFFF8;
    }

    if (!MEMORY[0x25F8CE500](v121))
    {
      goto LABEL_102;
    }

LABEL_76:
    if ((v97 & 0xC000000000000001) != 0)
    {
      v102 = MEMORY[0x25F8CE460](0, v97);
      v101 = v102;
LABEL_79:
      (*(*v101 + 120))(v269, v102);
      v103 = (*(*v101 + 216))([v246 setAppLaunchTimeInSecondsSince2001_]);
      if (*(v103 + 16) && (v104 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000011, 0x800000025ED7E690), (v105 & 1) != 0))
      {
        outlined init with copy of Any(*(v103 + 56) + 32 * v104, v269);

        v106 = swift_dynamicCast();
        if (v106)
        {
          v107 = v267;
        }

        else
        {
          v107 = 0;
        }

        if (v106)
        {
          v108 = v268;
        }

        else
        {
          v108 = 0;
        }
      }

      else
      {

        v107 = 0;
        v108 = 0;
      }

      v109 = v242();
      if (*(v109 + 16) && (v110 = specialized __RawDictionaryStorage.find<A>(_:)(0x4449656C646E7562, 0xE800000000000000), (v111 & 1) != 0))
      {
        outlined init with copy of Any(*(v109 + 56) + 32 * v110, v269);

        v112 = swift_dynamicCast();
        if (v112)
        {
          v113 = v267;
        }

        else
        {
          v113 = 0;
        }

        if (v112)
        {
          v114 = v268;
        }

        else
        {
          v114 = 0;
        }
      }

      else
      {

        v113 = 0;
        v114 = 0;
      }

      v115 = v266;
      v116 = (*(*v266 + 120))(v107, v108, v113, v114);

      v117 = v246;
      v118 = (*(*v101 + 168))([v246 setAppFollowup_]);
      v119 = (*(*v115 + 136))(v118);

      [v117 setAppLaunchReason_];

      goto LABEL_103;
    }

    if (*((v97 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v101 = *(v97 + 32);

      goto LABEL_79;
    }

    goto LABEL_147;
  }

  if (*((v97 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_76;
  }

LABEL_102:
  v120 = [v246 setAppFollowup_];
LABEL_103:
  v122 = (*v265 + 328);
  v240 = *v122;
  v239[1] = v122;
  v123 = v240(v120);
  v124 = (*(*v123 + 104))(v123);

  [v244 setIsSiriResultUseful_];
  if (v38)
  {
    if ((a1 & 0x8000000000000000) != 0)
    {
      v125 = a1;
    }

    else
    {
      v125 = v261;
    }

    if (MEMORY[0x25F8CE500](v125) < 2)
    {
      goto LABEL_151;
    }
  }

  else if (*(v261 + 16) < 2)
  {
LABEL_151:
    v133 = v246;
    [v246 setHasUserInitiatedFollowup_];
    goto LABEL_152;
  }

  v43 = 0;
  v267 = MEMORY[0x277D84F90];
  v38 = MEMORY[0x277D839B0];
  while (2)
  {
    if (v17)
    {
      v126 = MEMORY[0x25F8CE460](v43, a1);
      v127 = v43 + 1;
      if (__OFADD__(v43, 1))
      {
        goto LABEL_141;
      }
    }

    else
    {
      v46 = *(v261 + 16);
      if (v43 >= v46)
      {
        goto LABEL_142;
      }

      v126 = *(a1 + 8 * v43 + 32);

      v127 = v43 + 1;
      if (__OFADD__(v43, 1))
      {
LABEL_141:
        __break(1u);
LABEL_142:
        __break(1u);
        goto LABEL_143;
      }
    }

    v128 = (*(*v126 + 216))();
    if (*(v128 + 16) && (v129 = specialized __RawDictionaryStorage.find<A>(_:)(0x42646574616E6F64, 0xED00006972695379), (v130 & 1) != 0))
    {
      outlined init with copy of Any(*(v128 + 56) + 32 * v129, v269);

      if ((swift_dynamicCast() & 1) != 0 && (v270 & 1) == 0)
      {
        (*(*v126 + 120))(v269);
        if (*&v269[1] <= 30.0)
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          goto LABEL_125;
        }
      }
    }

    else
    {
    }

LABEL_125:
    ++v43;
    if (v127 != v39)
    {
      continue;
    }

    break;
  }

  v14 = v267;
  if (v267 < 0 || (v267 & 0x4000000000000000) != 0)
  {
LABEL_149:
    v131 = MEMORY[0x25F8CE500](v14);
    if (v131)
    {
      goto LABEL_129;
    }

LABEL_150:

    goto LABEL_151;
  }

  v131 = *(v267 + 16);
  if (!v131)
  {
    goto LABEL_150;
  }

LABEL_129:
  v45 = __OFSUB__(v131, 1);
  v132 = v131 - 1;
  if (v45)
  {
    __break(1u);
    goto LABEL_178;
  }

  if ((v14 & 0xC000000000000001) != 0)
  {
LABEL_178:
    v134 = MEMORY[0x25F8CE460](v132, v14);

    v133 = v246;
    goto LABEL_134;
  }

  v133 = v246;
  if ((v132 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_180;
  }

  if (v132 >= *(v14 + 16))
  {
LABEL_180:
    __break(1u);
    return;
  }

  v134 = *(v14 + 8 * v132 + 32);

LABEL_134:
  v135 = [v133 setHasUserInitiatedFollowup_];
  v136 = *(*v134 + 168);
  v137 = (v136)(v135);
  v138 = MEMORY[0x25F8CDFC0](v137);

  v139 = v244;
  [v244 setAppIntentName_];

  v140 = v136();
  v141 = (*(*v266 + 168))(v140);

  v142 = [v139 setFollowUpActionType_];
  v143 = *(*v134 + 216);
  v144 = (v143)(v142);
  if (*(v144 + 16) && (v145 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000016, 0x800000025ED7E770), (v146 & 1) != 0))
  {
    outlined init with copy of Any(*(v144 + 56) + 32 * v145, v269);

    if (swift_dynamicCast())
    {
      v147 = v267;
      goto LABEL_140;
    }
  }

  else
  {
  }

  v147 = 0;
LABEL_140:
  v148 = v244;
  v149 = [v244 setIsFirstPartyApp_];
  v150 = (v242)(v149);
  v151 = v143();
  v152 = (*(*v266 + 160))(v150, v151);

  [v148 setFollowUpEntityComparison_];

LABEL_152:
  v154 = v245;
  [v245 setCommonSignal_];
  [v154 setEngagementSignal_];
  v155 = v253;
  UUID.init()();
  v156 = objc_allocWithZone(MEMORY[0x277D5AC78]);
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v158 = [v156 initWithNSUUID_];

  v159 = v251;
  v160 = *(v251 + 8);
  v161 = v155;
  v162 = v256;
  v160(v161, v256);
  v163 = v252;
  [v252 setPseId_];

  v164 = v265;
  (*(*v265 + 160))();
  v165 = v257;
  UUID.init(uuidString:)();

  v261 = *(v159 + 48);
  v166 = (v261)(v165, 1, v162);
  v263 = v160;
  if (v166 == 1)
  {
    v167 = outlined destroy of UUID?(v165);
  }

  else
  {
    v168 = v165;
    v169 = v249;
    (*(v159 + 32))(v249, v168, v162);
    v170 = objc_allocWithZone(MEMORY[0x277D5AC78]);
    v171 = UUID._bridgeToObjectiveC()().super.isa;
    v172 = [v170 initWithNSUUID_];

    [v163 setUiSessionId_];
    v167 = (v160)(v169, v256);
  }

  v173 = v259;
  v174 = ((*(*v164 + 208))(v167) + 16);
  v175 = v262;
  if (*v174)
  {

    UUID.init(uuidString:)();
    v176 = v256;

    if ((v261)(v173, 1, v176) == 1)
    {
      outlined destroy of UUID?(v173);
      goto LABEL_159;
    }

    v193 = v247;
    (*(v251 + 32))(v247, v173, v176);
    v192 = 0x277D5A000uLL;
    v194 = objc_allocWithZone(MEMORY[0x277D5AC78]);
    v195 = UUID._bridgeToObjectiveC()().super.isa;
    v196 = [v194 initWithNSUUID_];

    [v252 setOriginalLastRequestId_];
    v186 = v256;
    v191 = (v263)(v193, v256);
    v187 = v258;
  }

  else
  {

LABEL_159:
    if (one-time initialization token for engagement != -1)
    {
      swift_once();
    }

    v177 = type metadata accessor for Logger();
    __swift_project_value_buffer(v177, static Logger.engagement);
    v178 = *MEMORY[0x277D615E0];
    v179 = type metadata accessor for EngagementSignalCollectionError();
    v180 = v260;
    (*(*(v179 - 8) + 104))(v260, v178, v179);
    (*(v243 + 104))(v180, *MEMORY[0x277D616A8], v175);
    v181 = Logger.logObject.getter();
    v182 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v181, v182))
    {
      v183 = swift_slowAlloc();
      v184 = swift_slowAlloc();
      v269[0] = v184;
      *v183 = 136315138;
      *(v183 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000027, 0x800000025ED7E6D0, v269);
      _os_log_impl(&dword_25ECEC000, v181, v182, "%s", v183, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v184);
      v185 = v184;
      v164 = v265;
      MEMORY[0x25F8CEE50](v185, -1, -1);
      MEMORY[0x25F8CEE50](v183, -1, -1);
    }

    v186 = v256;
    v187 = v258;
    type metadata accessor for SiriTaskEngagementUtils();
    v188 = dispatch thunk of static SiriTaskEngagementUtils.formulateSimplifiedReliabilityReasonDescription(reliabilityDescription:)();
    v189 = v260;
    MEMORY[0x25F8CDB30](v260, v188, v190);

    v191 = (*(v243 + 8))(v189, v175);
    v192 = 0x277D5A000;
  }

  (*(*v164 + 184))(v191);
  UUID.init(uuidString:)();

  if ((v261)(v187, 1, v186) == 1)
  {
    outlined destroy of UUID?(v187);
    v197 = v243;
    if (one-time initialization token for engagement != -1)
    {
      swift_once();
    }

    v198 = type metadata accessor for Logger();
    __swift_project_value_buffer(v198, static Logger.engagement);
    v199 = *MEMORY[0x277D615C8];
    v200 = type metadata accessor for EngagementSignalCollectionError();
    v201 = v250;
    (*(*(v200 - 8) + 104))(v250, v199, v200);
    (*(v197 + 104))(v201, *MEMORY[0x277D616A8], v175);
    v202 = Logger.logObject.getter();
    v203 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v202, v203))
    {
      v204 = swift_slowAlloc();
      v205 = swift_slowAlloc();
      v269[0] = v205;
      *v204 = 136315138;
      *(v204 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000024, 0x800000025ED7E700, v269);
      _os_log_impl(&dword_25ECEC000, v202, v203, "%s", v204, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v205);
      MEMORY[0x25F8CEE50](v205, -1, -1);
      MEMORY[0x25F8CEE50](v204, -1, -1);
    }

    type metadata accessor for SiriTaskEngagementUtils();
    v213 = dispatch thunk of static SiriTaskEngagementUtils.formulateSimplifiedReliabilityReasonDescription(reliabilityDescription:)();
    v214 = v250;
    MEMORY[0x25F8CDB30](v250, v213, v215);

    v212 = (*(v197 + 8))(v214, v175);
    v211 = v252;
  }

  else
  {
    v206 = v248;
    (*(v251 + 32))(v248, v187, v186);
    v207 = v186;
    v208 = objc_allocWithZone(*(v192 + 3192));
    v209 = UUID._bridgeToObjectiveC()().super.isa;
    v210 = [v208 initWithNSUUID_];

    v211 = v252;
    [v252 setTaskId_];

    v212 = (v263)(v206, v207);
    v197 = v243;
  }

  v216 = v240(v212);
  v217 = (*(*v216 + 104))(v216);

  v218 = v266;
  v219 = [v211 setSiriEngagementTaskSuccess_];
  [v211 setTriggerOrigin_];
  v220 = v255;
  [v255 setEventMetadata_];
  [v220 setAppIntentSignalGenerated_];
  v221 = v211;
  if (one-time initialization token for engagement != -1)
  {
    swift_once();
  }

  v222 = type metadata accessor for Logger();
  __swift_project_value_buffer(v222, static Logger.engagement);
  v223 = *MEMORY[0x277D61608];
  v224 = type metadata accessor for SELFPSELogged();
  v225 = v254;
  (*(*(v224 - 8) + 104))(v254, v223, v224);
  (*(v197 + 104))(v225, *MEMORY[0x277D61658], v175);
  v226 = Logger.logObject.getter();
  v227 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v226, v227))
  {
    v228 = swift_slowAlloc();
    v229 = swift_slowAlloc();
    v269[0] = v229;
    *v228 = 136315138;
    *(v228 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000044, 0x800000025ED80700, v269);
    _os_log_impl(&dword_25ECEC000, v226, v227, "%s", v228, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v229);
    v230 = v229;
    v221 = v252;
    MEMORY[0x25F8CEE50](v230, -1, -1);
    MEMORY[0x25F8CEE50](v228, -1, -1);
  }

  type metadata accessor for SiriTaskEngagementUtils();
  v231 = dispatch thunk of static SiriTaskEngagementUtils.formulateSimplifiedReliabilityReasonDescription(reliabilityDescription:)();
  v232 = v254;
  MEMORY[0x25F8CDB30](v254, v231, v233);

  (*(v197 + 8))(v232, v175);
  v234 = [objc_opt_self() sharedAnalytics];
  v235 = [v234 defaultMessageStream];

  v236 = v253;
  UUID.init()();
  v237 = UUID._bridgeToObjectiveC()().super.isa;
  v263(v236, v256);
  v238 = v255;
  [v235 emitMessage:v255 isolatedStreamUUID:v237];
}

uint64_t PSEAppIntentTranscriptSELFEmitter.getFollowUpEntityComparison(siriSignalData:followupSignalData:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16))
  {
    v4 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000010, 0x800000025ED807D0);
    if (v5)
    {
      outlined init with copy of Any(*(a1 + 56) + 32 * v4, v13);
      if (swift_dynamicCast())
      {
        if (*(a2 + 16))
        {
          v6 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000010, 0x800000025ED807D0);
          if (v7)
          {
            outlined init with copy of Any(*(a2 + 56) + 32 * v6, v13);
            if (swift_dynamicCast())
            {
              v8 = HIBYTE(v12) & 0xF;
              if ((v12 & 0x2000000000000000) == 0)
              {
                v8 = *v11 & 0xFFFFFFFFFFFFLL;
              }

              if (v8)
              {
                v9 = HIBYTE(v12) & 0xF;
                if ((v12 & 0x2000000000000000) == 0)
                {
                  v9 = *v11 & 0xFFFFFFFFFFFFLL;
                }

                if (v9)
                {

                  return 2;
                }
              }
            }
          }
        }
      }
    }
  }

  return 1;
}

uint64_t PSEAppIntentTranscriptSELFEmitter.getFollowUpActionType(followUpAction:)()
{
  String.lowercased()();
  lazy protocol witness table accessor for type String and conformance String();
  if (StringProtocol.contains<A>(_:)())
  {

    return 1;
  }

  else if (StringProtocol.contains<A>(_:)())
  {

    return 14;
  }

  else if (StringProtocol.contains<A>(_:)())
  {

    return 2;
  }

  else if (StringProtocol.contains<A>(_:)())
  {

    return 3;
  }

  else if (StringProtocol.contains<A>(_:)())
  {

    return 4;
  }

  else if (StringProtocol.contains<A>(_:)())
  {

    return 5;
  }

  else if (StringProtocol.contains<A>(_:)())
  {

    return 6;
  }

  else if (StringProtocol.contains<A>(_:)())
  {

    return 7;
  }

  else if (StringProtocol.contains<A>(_:)())
  {

    return 8;
  }

  else if (StringProtocol.contains<A>(_:)())
  {

    return 9;
  }

  else if (StringProtocol.contains<A>(_:)())
  {

    return 10;
  }

  else if (StringProtocol.contains<A>(_:)())
  {

    return 11;
  }

  else if (StringProtocol.contains<A>(_:)())
  {

    return 12;
  }

  else if (StringProtocol.contains<A>(_:)())
  {

    return 13;
  }

  else if (StringProtocol.contains<A>(_:)())
  {

    return 15;
  }

  else if (StringProtocol.contains<A>(_:)())
  {

    return 16;
  }

  else if (StringProtocol.contains<A>(_:)())
  {

    return 17;
  }

  else if (StringProtocol.contains<A>(_:)())
  {

    return 18;
  }

  else if (StringProtocol.contains<A>(_:)())
  {

    return 31;
  }

  else if (StringProtocol.contains<A>(_:)())
  {

    return 19;
  }

  else if (StringProtocol.contains<A>(_:)())
  {

    return 20;
  }

  else if (StringProtocol.contains<A>(_:)())
  {

    return 21;
  }

  else if (StringProtocol.contains<A>(_:)())
  {

    return 22;
  }

  else if (StringProtocol.contains<A>(_:)())
  {

    return 23;
  }

  else if (StringProtocol.contains<A>(_:)())
  {

    return 24;
  }

  else if (StringProtocol.contains<A>(_:)())
  {

    return 25;
  }

  else if (StringProtocol.contains<A>(_:)())
  {

    return 26;
  }

  else if (StringProtocol.contains<A>(_:)())
  {

    return 27;
  }

  else if (StringProtocol.contains<A>(_:)())
  {

    return 28;
  }

  else if (StringProtocol.contains<A>(_:)())
  {

    return 29;
  }

  else if (StringProtocol.contains<A>(_:)())
  {

    return 30;
  }

  else if (StringProtocol.contains<A>(_:)())
  {

    return 32;
  }

  else if (StringProtocol.contains<A>(_:)())
  {

    return 34;
  }

  else
  {
    v1 = StringProtocol.contains<A>(_:)();

    if (v1)
    {
      return 33;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t PSEAppIntentTranscriptSELFEmitter.emitEmptyPSEAppIntentTranscript(appLaunchSignals:task:)(unint64_t a1, uint64_t a2)
{
  v199 = a2;
  v4 = type metadata accessor for ReliabilityCategory();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v174 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = v174 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v14 = v174 - v13;
  MEMORY[0x28223BE20](v12);
  v196 = v174 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v195 = v174 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v194 = v174 - v20;
  MEMORY[0x28223BE20](v19);
  v193 = v174 - v21;
  v22 = type metadata accessor for UUID();
  v197 = *(v22 - 8);
  v23 = MEMORY[0x28223BE20](v22);
  v192 = v174 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v23);
  v190 = v174 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v191 = v174 - v28;
  MEMORY[0x28223BE20](v27);
  v198 = v174 - v29;
  v30 = [objc_allocWithZone(MEMORY[0x277D5A190]) init];
  if (v30)
  {
    v31 = v30;
    v187 = v14;
    v189 = v2;
    v32 = [objc_allocWithZone(MEMORY[0x277D5A198]) init];
    if (v32)
    {
      v33 = v32;
      v188 = [objc_allocWithZone(MEMORY[0x277D5A178]) init];
      if (v188)
      {
        v186 = [objc_allocWithZone(MEMORY[0x277D5A1A0]) init];
        if (v186)
        {
          v183 = [objc_allocWithZone(MEMORY[0x277D5A170]) init];
          if (v183)
          {
            v202[0] = MEMORY[0x277D84F90];
            if (a1 >> 62)
            {
              if ((a1 & 0x8000000000000000) != 0)
              {
                v51 = a1;
              }

              else
              {
                v51 = a1 & 0xFFFFFFFFFFFFFF8;
              }

              v8 = MEMORY[0x25F8CE500](v51);
            }

            else
            {
              v8 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            v182 = v5;
            v181 = v11;
            v185 = v22;
            v180 = v31;
            v184 = v33;
            v176 = v4;
            if (v8)
            {
              v5 = 0;
              v4 = a1 & 0xFFFFFFFFFFFFFF8;
              v33 = 0xE400000000000000;
              while (1)
              {
                if ((a1 & 0xC000000000000001) != 0)
                {
                  v34 = MEMORY[0x25F8CE460](v5, a1);
                  v31 = (v5 + 1);
                  if (__OFADD__(v5, 1))
                  {
LABEL_24:
                    __break(1u);
                    goto LABEL_25;
                  }
                }

                else
                {
                  if (v5 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
                    __break(1u);
                    goto LABEL_44;
                  }

                  v34 = *(a1 + 8 * v5 + 32);

                  v31 = (v5 + 1);
                  if (__OFADD__(v5, 1))
                  {
                    goto LABEL_24;
                  }
                }

                if ((*(*v34 + 168))() == 1769105747 && v35 == 0xE400000000000000)
                {
                }

                else
                {
                  v2 = v35;
                  v37 = _stringCompareWithSmolCheck(_:_:expecting:)();

                  if ((v37 & 1) == 0)
                  {

                    goto LABEL_12;
                  }
                }

                v2 = v202;
                specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
                specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
                specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                specialized ContiguousArray._endMutation()();
LABEL_12:
                ++v5;
                if (v31 == v8)
                {
                  v39 = v202[0];
                  v4 = v176;
                  v40 = MEMORY[0x277D84F90];
                  if ((v202[0] & 0x8000000000000000) == 0)
                  {
                    goto LABEL_37;
                  }

                  goto LABEL_49;
                }
              }
            }

            v39 = MEMORY[0x277D84F90];
            v40 = MEMORY[0x277D84F90];
            if ((MEMORY[0x277D84F90] & 0x8000000000000000) != 0)
            {
              goto LABEL_49;
            }

LABEL_37:
            if ((v39 & 0x4000000000000000) != 0)
            {
LABEL_49:
              if (MEMORY[0x25F8CE500](v39))
              {
                goto LABEL_39;
              }
            }

            else if (*(v39 + 16))
            {
LABEL_39:
              if ((v39 & 0xC000000000000001) != 0)
              {
                v2 = MEMORY[0x25F8CE460](0, v39);
              }

              else
              {
                if (!*(v39 + 16))
                {
                  __break(1u);
                  goto LABEL_131;
                }

                v2 = *(v39 + 32);
              }

LABEL_51:
              v202[0] = v40;
              v179 = v2;
              if (v8)
              {
                v33 = 0;
                v5 = a1 & 0xC000000000000001;
                v40 = a1 & 0xFFFFFFFFFFFFFF8;
                v4 = 0xE400000000000000;
                while (1)
                {
                  if (v5)
                  {
                    v52 = MEMORY[0x25F8CE460](v33, a1);
                    v31 = (v33 + 1);
                    if (__OFADD__(v33, 1))
                    {
LABEL_67:
                      __break(1u);
LABEL_68:
                      v40 = v202[0];
                      v4 = v176;
                      v2 = v179;
                      break;
                    }
                  }

                  else
                  {
                    if (v33 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
                    {
                      __break(1u);
                      goto LABEL_77;
                    }

                    v52 = *(a1 + 8 * v33 + 32);

                    v31 = (v33 + 1);
                    if (__OFADD__(v33, 1))
                    {
                      goto LABEL_67;
                    }
                  }

                  v53 = (*(*v52 + 168))();
                  v2 = v54;
                  if (v53 == 1769105747 && v54 == 0xE400000000000000)
                  {
                  }

                  else
                  {
                    v56 = _stringCompareWithSmolCheck(_:_:expecting:)();

                    if (v56)
                    {
                    }

                    else
                    {
                      v2 = v202;
                      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
                      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
                      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                      specialized ContiguousArray._endMutation()();
                    }
                  }

                  ++v33;
                  if (v31 == v8)
                  {
                    goto LABEL_68;
                  }
                }
              }

              a1 = v188;
              v33 = v186;
              if (v40 < 0 || (v40 & 0x4000000000000000) != 0)
              {
LABEL_77:
                if (MEMORY[0x25F8CE500](v40))
                {
LABEL_72:
                  if ((v40 & 0xC000000000000001) == 0)
                  {
                    if (!*(v40 + 16))
                    {
                      __break(1u);
                      goto LABEL_133;
                    }

                    v57 = *(v40 + 32);

                    goto LABEL_75;
                  }

LABEL_131:
                  v57 = MEMORY[0x25F8CE460](0, v40);
LABEL_75:

                  goto LABEL_79;
                }
              }

              else if (*(v40 + 16))
              {
                goto LABEL_72;
              }

              v57 = 0;
LABEL_79:
              if (v57)
              {
                v58 = 2;
              }

              else
              {
                v58 = 3;
              }

              if (v2)
              {
                v59 = 1;
              }

              else
              {
                v59 = v58;
              }

              [v33 setIsDonatedBySiri_];
              if (v2)
              {
                v60 = *(*v2 + 120);

                v60(v202, v61);

                v62 = *v202;
              }

              else
              {
                v62 = -1.0;
              }

              v63 = [v33 setEventDonationTimeInSecondsSince2001_];
              v64 = *(*v199 + 280);
              v65 = (v64)(v63);
              v66 = MEMORY[0x25F8CDFC0](v65);

              [v33 setDomain_];

              v67 = v64();
              v68 = MEMORY[0x25F8CDFC0](v67);

              [v33 setAction_];

              v178 = v57;
              if (v57)
              {

                (*(*v57 + 120))(v202, [v33 setHasUserInitiatedFollowup_]);
                v69 = (*(*v57 + 168))([v33 setAppLaunchTimeInSecondsSince2001_]);
                v70 = (*(*v189 + 136))(v69);

                v71 = (*(*v57 + 216))([v33 setAppLaunchReason_]);
                v72 = v185;
                if (*(v71 + 16) && (v73 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000011, 0x800000025ED7E690), (v74 & 1) != 0))
                {
                  outlined init with copy of Any(*(v71 + 56) + 32 * v73, v202);

                  v75 = swift_dynamicCast();
                  if (v75)
                  {
                    v76 = v200;
                  }

                  else
                  {
                    v76 = 0;
                  }

                  if (v75)
                  {
                    v77 = v201;
                  }

                  else
                  {
                    v77 = 0;
                  }
                }

                else
                {

                  v76 = 0;
                  v77 = 0;
                }

                v78 = (*(*v199 + 256))();
                if (v78[2])
                {
                  v80 = v78[4];
                  v79 = v78[5];
                }

                else
                {
                  v80 = 0;
                  v79 = 0;
                }

                v82 = (*(*v189 + 120))(v76, v77, v80, v79);

                v33 = v186;
                [v186 setAppFollowup_];
                if ([v33 appFollowup] == 4)
                {
                  v83 = (*(*v199 + 328))();
                  (*(*v83 + 112))(4);
                }
              }

              else
              {
                [v33 setHasUserInitiatedFollowup_];
                v81 = [v33 setAppFollowup_];
                v72 = v185;
              }

              v84 = v199;
              v85 = (*v199 + 328);
              v175 = *v85;
              v174[1] = v85;
              v86 = v175(v81);
              v87 = (*(*v86 + 104))(v86);

              v88 = v87 == 3;
              v89 = v183;
              [v183 setIsSiriResultUseful_];
              [a1 setCommonSignal_];
              [a1 setEngagementSignal_];
              v90 = v198;
              UUID.init()();
              v91 = objc_allocWithZone(MEMORY[0x277D5AC78]);
              isa = UUID._bridgeToObjectiveC()().super.isa;
              v93 = [v91 initWithNSUUID_];

              v94 = v197;
              v95 = (v197 + 8);
              v33 = *(v197 + 8);
              (v33)(v90, v72);
              v96 = v184;
              [v184 setPseId_];

              (*(*v84 + 160))();
              v97 = v193;
              UUID.init(uuidString:)();
              v98 = v94;

              v100 = *(v94 + 48);
              v99 = v94 + 48;
              v177 = v100;
              v101 = v100(v97, 1, v72);
              v102 = v194;
              if (v101 == 1)
              {
                v103 = outlined destroy of UUID?(v97);
              }

              else
              {
                v104 = *(v98 + 32);
                v105 = v95;
                v174[0] = v99;
                v106 = v191;
                v104(v191, v97, v72);
                v107 = objc_allocWithZone(MEMORY[0x277D5AC78]);
                v108 = UUID._bridgeToObjectiveC()().super.isa;
                v109 = [v107 initWithNSUUID_];

                [v96 setUiSessionId_];
                v110 = v106;
                v95 = v105;
                v103 = (v33)(v110, v72);
              }

              v111 = ((*(*v199 + 208))(v103) + 16);
              v112 = &SiriExecutionTask;
              v31 = MEMORY[0x277D616A8];
              if (*v111)
              {

                v113 = v185;

                UUID.init(uuidString:)();

                if (v177(v102, 1, v113) != 1)
                {
                  v128 = v31;
                  v129 = v190;
                  (*(v197 + 32))(v190, v102, v113);
                  v130 = objc_allocWithZone(MEMORY[0x277D5AC78]);
                  v131 = UUID._bridgeToObjectiveC()().super.isa;
                  v132 = [v130 initWithNSUUID_];

                  [v184 setOriginalLastRequestId_];
                  v133 = v129;
                  v31 = v128;
                  v112 = &SiriExecutionTask;
                  v127 = (v33)(v133, v113);
                  a1 = v188;
                  goto LABEL_118;
                }

                outlined destroy of UUID?(v102);
              }

              else
              {
              }

              v194 = v95;
              if (one-time initialization token for engagement != -1)
              {
                swift_once();
              }

              v114 = type metadata accessor for Logger();
              __swift_project_value_buffer(v114, static Logger.engagement);
              v115 = *MEMORY[0x277D615E0];
              v116 = type metadata accessor for EngagementSignalCollectionError();
              v117 = v196;
              (*(*(v116 - 8) + 104))(v196, v115, v116);
              (*(v182 + 104))(v117, *v31, v4);
              v118 = Logger.logObject.getter();
              v119 = static os_log_type_t.debug.getter();
              if (os_log_type_enabled(v118, v119))
              {
                v120 = swift_slowAlloc();
                v121 = v31;
                v122 = swift_slowAlloc();
                v202[0] = v122;
                *v120 = 136315138;
                *(v120 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000027, 0x800000025ED7E6D0, v202);
                _os_log_impl(&dword_25ECEC000, v118, v119, "%s", v120, 0xCu);
                __swift_destroy_boxed_opaque_existential_0(v122);
                v123 = v122;
                v31 = v121;
                v112 = &SiriExecutionTask;
                MEMORY[0x25F8CEE50](v123, -1, -1);
                MEMORY[0x25F8CEE50](v120, -1, -1);
              }

              v113 = v185;
              type metadata accessor for SiriTaskEngagementUtils();
              v124 = dispatch thunk of static SiriTaskEngagementUtils.formulateSimplifiedReliabilityReasonDescription(reliabilityDescription:)();
              v125 = v196;
              MEMORY[0x25F8CDB30](v196, v124, v126);

              v127 = (*(v182 + 8))(v125, v4);
              a1 = v188;
LABEL_118:
              (*(*v199 + 184))(v127);
              v134 = v195;
              UUID.init(uuidString:)();

              if (v177(v134, 1, v113) != 1)
              {
                v149 = v192;
                (*(v197 + 32))(v192, v134, v113);
                v150 = objc_allocWithZone(MEMORY[0x277D5AC78]);
                v151 = UUID._bridgeToObjectiveC()().super.isa;
                v152 = [v150 initWithNSUUID_];

                v148 = v184;
                [v184 setTaskId_];

                v147 = (v33)(v149, v113);
                v5 = v182;
                v143 = v175;
LABEL_124:
                v153 = v143(v147);
                v154 = (*(*v153 + 104))(v153);

                v155 = v189;
                v156 = [v148 setSiriEngagementTaskSuccess_];
                [v148 setTriggerOrigin_];
                v157 = v180;
                [v180 setEventMetadata_];
                [v157 setAppIntentSignalGenerated_];
                if (one-time initialization token for engagement != -1)
                {
                  swift_once();
                }

                v158 = type metadata accessor for Logger();
                __swift_project_value_buffer(v158, static Logger.engagement);
                v159 = *MEMORY[0x277D61608];
                v160 = type metadata accessor for SELFPSELogged();
                v161 = v181;
                (*(*(v160 - 8) + 104))(v181, v159, v160);
                (*(v5 + 104))(v161, *MEMORY[0x277D61658], v4);
                v162 = Logger.logObject.getter();
                v163 = static os_log_type_t.debug.getter();
                if (os_log_type_enabled(v162, v163))
                {
                  v164 = swift_slowAlloc();
                  v165 = swift_slowAlloc();
                  v202[0] = v165;
                  *v164 = 136315138;
                  *(v164 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000044, 0x800000025ED80700, v202);
                  _os_log_impl(&dword_25ECEC000, v162, v163, "%s", v164, 0xCu);
                  __swift_destroy_boxed_opaque_existential_0(v165);
                  MEMORY[0x25F8CEE50](v165, -1, -1);
                  MEMORY[0x25F8CEE50](v164, -1, -1);
                }

                type metadata accessor for SiriTaskEngagementUtils();
                v166 = dispatch thunk of static SiriTaskEngagementUtils.formulateSimplifiedReliabilityReasonDescription(reliabilityDescription:)();
                v167 = v181;
                MEMORY[0x25F8CDB30](v181, v166, v168);

                (*(v5 + 8))(v167, v4);
                v169 = [objc_opt_self() sharedAnalytics];
                v170 = [v169 defaultMessageStream];

                v171 = v198;
                UUID.init()();
                v172 = UUID._bridgeToObjectiveC()().super.isa;
                (v33)(v171, v185);
                v173 = v180;
                [v170 emitMessage:v180 isolatedStreamUUID:v172];
              }

              outlined destroy of UUID?(v134);
              v5 = v182;
              if (*&v112[20].flags == -1)
              {
LABEL_120:
                v135 = type metadata accessor for Logger();
                __swift_project_value_buffer(v135, static Logger.engagement);
                v136 = *MEMORY[0x277D615C8];
                v137 = type metadata accessor for EngagementSignalCollectionError();
                v138 = v187;
                (*(*(v137 - 8) + 104))(v187, v136, v137);
                (*(v5 + 104))(v138, *v31, v4);
                v139 = Logger.logObject.getter();
                v140 = static os_log_type_t.debug.getter();
                if (os_log_type_enabled(v139, v140))
                {
                  v141 = swift_slowAlloc();
                  v142 = swift_slowAlloc();
                  v202[0] = v142;
                  *v141 = 136315138;
                  *(v141 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000024, 0x800000025ED7E700, v202);
                  _os_log_impl(&dword_25ECEC000, v139, v140, "%s", v141, 0xCu);
                  __swift_destroy_boxed_opaque_existential_0(v142);
                  MEMORY[0x25F8CEE50](v142, -1, -1);
                  MEMORY[0x25F8CEE50](v141, -1, -1);
                }

                v143 = v175;
                type metadata accessor for SiriTaskEngagementUtils();
                v144 = dispatch thunk of static SiriTaskEngagementUtils.formulateSimplifiedReliabilityReasonDescription(reliabilityDescription:)();
                v145 = v187;
                MEMORY[0x25F8CDB30](v187, v144, v146);

                v147 = (*(v5 + 8))(v145, v4);
                v148 = v184;
                goto LABEL_124;
              }

LABEL_133:
              swift_once();
              goto LABEL_120;
            }

            v2 = 0;
            goto LABEL_51;
          }

          v31 = v33;
          v33 = v188;
          v38 = v186;
        }

        else
        {
LABEL_25:
          v38 = v188;
        }

        v31 = v33;
        v33 = v38;
      }

      v31 = v33;
    }
  }

  if (one-time initialization token for engagement != -1)
  {
LABEL_44:
    swift_once();
  }

  v41 = type metadata accessor for Logger();
  __swift_project_value_buffer(v41, static Logger.engagement);
  v42 = *MEMORY[0x277D615B0];
  v43 = type metadata accessor for EngagementSignalCollectionError();
  (*(*(v43 - 8) + 104))(v8, v42, v43);
  (*(v5 + 104))(v8, *MEMORY[0x277D616A8], v4);
  v44 = Logger.logObject.getter();
  v45 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v202[0] = v47;
    *v46 = 136315138;
    *(v46 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000003DLL, 0x800000025ED806A0, v202);
    _os_log_impl(&dword_25ECEC000, v44, v45, "%s", v46, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v47);
    MEMORY[0x25F8CEE50](v47, -1, -1);
    MEMORY[0x25F8CEE50](v46, -1, -1);
  }

  type metadata accessor for SiriTaskEngagementUtils();
  v48 = dispatch thunk of static SiriTaskEngagementUtils.formulateSimplifiedReliabilityReasonDescription(reliabilityDescription:)();
  MEMORY[0x25F8CDB30](v8, v48, v49);

  return (*(v5 + 8))(v8, v4);
}

void static IdentifyEntitySimilarityExample.runIdentifyMusicEntitySimilarity()()
{
  v122 = type metadata accessor for ProtoTaskEngagementFeatureSet();
  isa = v122[-1].isa;
  MEMORY[0x28223BE20](v122);
  v121 = &isa - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriTaskEngagement22ProtoMediaEntitySignalVSgMd, &_s18SiriTaskEngagement22ProtoMediaEntitySignalVSgMR);
  v2 = MEMORY[0x28223BE20](v1 - 8);
  v109 = &isa - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v113 = &isa - v4;
  v120 = type metadata accessor for ProtoPlayMediaTaskFeatureSet();
  v5 = *(v120 - 8);
  MEMORY[0x28223BE20](v120);
  v119 = &isa - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ProtoTaskFeatureSet();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &isa - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = type metadata accessor for ProtoMediaEntitySignal();
  v11 = *(v112 - 8);
  v12 = MEMORY[0x28223BE20](v112);
  v91 = &isa - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v106 = &isa - v14;
  v15 = type metadata accessor for ProtoTaskEngagementType();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v104 = &isa - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v103 = &isa - v19;
  v92 = type metadata accessor for ProtoSiriTaskEngagement();
  v105 = *(v92 - 8);
  MEMORY[0x28223BE20](v92);
  v21 = &isa - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = static SiriTaskEngagementRetriever.retrieveAllSiriTaskEngagement(streamId:)();
  if (v22)
  {
    v23 = v22;
    v102 = *(v22 + 16);
    if (v102)
    {
      v24 = 0;
      v100 = v22 + ((*(v105 + 80) + 32) & ~*(v105 + 80));
      v99 = v105 + 16;
      v98 = *MEMORY[0x277D61530];
      v97 = (v16 + 104);
      v96 = (v16 + 8);
      v95 = (v105 + 8);
      v118 = (v8 + 8);
      v108 = (v5 + 8);
      v111 = (v11 + 56);
      v115 = isa + 16;
      v114 = (isa + 8);
      v89 = (v11 + 16);
      v88 = (v11 + 32);
      v87 = (v11 + 8);
      v94 = MEMORY[0x277D84F90];
      v93 = MEMORY[0x277D84F90];
      v25 = v92;
      v90 = v15;
      v85 = v21;
      v101 = v22;
      while (v24 < v23[2])
      {
        v26 = *(v105 + 72);
        v107 = v24;
        (*(v105 + 16))(v21, v100 + v26 * v24, v25);
        v27 = v103;
        ProtoSiriTaskEngagement.engagementType.getter();
        v28 = v104;
        (*v97)(v104, v98, v15);
        lazy protocol witness table accessor for type ProtoTaskEngagementType and conformance ProtoTaskEngagementType();
        dispatch thunk of RawRepresentable.rawValue.getter();
        dispatch thunk of RawRepresentable.rawValue.getter();
        v29 = *v96;
        (*v96)(v28, v15);
        v29(v27, v15);
        if (v126 == v123)
        {
          ProtoSiriTaskEngagement.siriTaskFeatureSet.getter();
          v30 = v119;
          ProtoTaskFeatureSet.playMediaFeatureSet.getter();
          v31 = *v118;
          (*v118)(v10, v7);
          ProtoPlayMediaTaskFeatureSet.mediaEntity.getter();
          v32 = *v108;
          v33 = v120;
          (*v108)(v30, v120);
          ProtoSiriTaskEngagement.siriTaskFeatureSet.getter();
          ProtoTaskFeatureSet.playMediaFeatureSet.getter();
          v31(v10, v7);
          ProtoPlayMediaTaskFeatureSet.playDurationInSec.getter();
          v35 = v34;
          v32(v30, v33);
          v110 = *v111;
          v110(v113, 1, 1, v112);
          v36 = *(ProtoSiriTaskEngagement.followupUserInitatedEngagements.getter() + 16);

          if (v36)
          {
            v37 = ProtoSiriTaskEngagement.followupUserInitatedEngagements.getter();
            v38 = *(v37 + 16);
            if (v38)
            {
              v39 = (*(isa + 80) + 32) & ~*(isa + 80);
              v86 = v37;
              v40 = v37 + v39;
              v41 = *(isa + 9);
              v116 = *(isa + 2);
              v117 = v41;
              v116(v121, v37 + v39, v122);
              while (1)
              {
                ProtoTaskEngagementFeatureSet.featureSet.getter();
                v42 = v119;
                ProtoTaskFeatureSet.playMediaFeatureSet.getter();
                v31(v10, v7);
                v43 = ProtoPlayMediaTaskFeatureSet.actionState.getter();
                v45 = v44;
                v32(v42, v120);
                if (v43 == 0x676E6979616C50 && v45 == 0xE700000000000000)
                {
                }

                else
                {
                  v46 = _stringCompareWithSmolCheck(_:_:expecting:)();

                  if ((v46 & 1) == 0)
                  {
                    (*v114)(v121, v122);
                    goto LABEL_12;
                  }
                }

                v47 = v121;
                ProtoTaskEngagementFeatureSet.featureSet.getter();
                v48 = v119;
                ProtoTaskFeatureSet.playMediaFeatureSet.getter();
                v31(v10, v7);
                v49 = v7;
                v50 = v109;
                ProtoPlayMediaTaskFeatureSet.mediaEntity.getter();
                v32(v48, v120);
                (*v114)(v47, v122);
                v51 = v113;
                outlined destroy of Date?(v113, &_s18SiriTaskEngagement22ProtoMediaEntitySignalVSgMd, &_s18SiriTaskEngagement22ProtoMediaEntitySignalVSgMR);
                v110(v50, 0, 1, v112);
                v52 = v50;
                v7 = v49;
                outlined init with take of ProtoMediaEntitySignal?(v52, v51);
LABEL_12:
                v40 += v117;
                if (!--v38)
                {
                  break;
                }

                v116(v121, v40, v122);
              }
            }

            v53 = v106;
            v21 = v85;
          }

          else
          {
            v54 = v106;
            if (one-time initialization token for engagement != -1)
            {
              swift_once();
            }

            v55 = type metadata accessor for Logger();
            __swift_project_value_buffer(v55, static Logger.engagement);
            v56 = Logger.logObject.getter();
            v57 = static os_log_type_t.debug.getter();
            if (os_log_type_enabled(v56, v57))
            {
              v58 = swift_slowAlloc();
              *v58 = 0;
              _os_log_impl(&dword_25ECEC000, v56, v57, "No user followups", v58, 2u);
              MEMORY[0x25F8CEE50](v58, -1, -1);
            }

            v53 = v54;
          }

          v59 = v91;
          v60 = v112;
          (*v89)(v91, v53, v112);
          v61 = v109;
          outlined init with copy of Date?(v113, v109, &_s18SiriTaskEngagement22ProtoMediaEntitySignalVSgMd, &_s18SiriTaskEngagement22ProtoMediaEntitySignalVSgMR);
          type metadata accessor for MusicEntitySimilarity(0);
          v62 = swift_allocObject();
          v63 = OBJC_IVAR____TtC18PostSiriEngagement21MusicEntitySimilarity_userFollowupEntity;
          v110(v62 + OBJC_IVAR____TtC18PostSiriEngagement21MusicEntitySimilarity_userFollowupEntity, 1, 1, v60);
          (*v88)(v62 + OBJC_IVAR____TtC18PostSiriEngagement21MusicEntitySimilarity_siriChosenEntity, v59, v60);
          swift_beginAccess();
          outlined assign with take of ProtoMediaEntitySignal?(v61, v62 + v63, &_s18SiriTaskEngagement22ProtoMediaEntitySignalVSgMd, &_s18SiriTaskEngagement22ProtoMediaEntitySignalVSgMR);
          swift_endAccess();
          *(v62 + OBJC_IVAR____TtC18PostSiriEngagement21MusicEntitySimilarity_playDuration) = v35;
          LOBYTE(v126) = MusicEntitySimilarity.compare()(&v127) & 1;
          outlined init with copy of Date?(&v126, &v123, &_sSb_18PostSiriEngagement16EntitySimilarity_ptMd, &_sSb_18PostSiriEngagement16EntitySimilarity_ptMR);
          LODWORD(v63) = v123;
          __swift_destroy_boxed_opaque_existential_0(&v124);
          if (v63 == 1)
          {
            outlined init with copy of Date?(&v126, &v123, &_sSb_18PostSiriEngagement16EntitySimilarity_ptMd, &_sSb_18PostSiriEngagement16EntitySimilarity_ptMR);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v15 = v90;
            v23 = v101;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v94 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v94[2] + 1, 1, v94);
            }

            v66 = v94[2];
            v65 = v94[3];
            v67 = v66 + 1;
            if (v66 >= v65 >> 1)
            {
              v94 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v65 > 1), v66 + 1, 1, v94);
            }

            outlined destroy of Date?(&v126, &_sSb_18PostSiriEngagement16EntitySimilarity_ptMd, &_sSb_18PostSiriEngagement16EntitySimilarity_ptMR);
            outlined destroy of Date?(v113, &_s18SiriTaskEngagement22ProtoMediaEntitySignalVSgMd, &_s18SiriTaskEngagement22ProtoMediaEntitySignalVSgMR);
            (*v87)(v106, v112);
            v25 = v92;
            (*v95)(v21, v92);
            v68 = &v125;
          }

          else
          {
            outlined init with copy of Date?(&v126, &v123, &_sSb_18PostSiriEngagement16EntitySimilarity_ptMd, &_sSb_18PostSiriEngagement16EntitySimilarity_ptMR);
            v69 = swift_isUniquelyReferenced_nonNull_native();
            v15 = v90;
            v23 = v101;
            if ((v69 & 1) == 0)
            {
              v93 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v93[2] + 1, 1, v93);
            }

            v66 = v93[2];
            v70 = v93[3];
            v67 = v66 + 1;
            if (v66 >= v70 >> 1)
            {
              v93 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v70 > 1), v66 + 1, 1, v93);
            }

            outlined destroy of Date?(&v126, &_sSb_18PostSiriEngagement16EntitySimilarity_ptMd, &_sSb_18PostSiriEngagement16EntitySimilarity_ptMR);
            outlined destroy of Date?(v113, &_s18SiriTaskEngagement22ProtoMediaEntitySignalVSgMd, &_s18SiriTaskEngagement22ProtoMediaEntitySignalVSgMR);
            (*v87)(v106, v112);
            v25 = v92;
            (*v95)(v21, v92);
            v68 = &v124 + 8;
          }

          v71 = *(v68 - 32);
          *(v71 + 16) = v67;
          outlined init with take of EntitySimilarity(&v124, v71 + 40 * v66 + 32);
        }

        else
        {
          (*v95)(v21, v25);
          v23 = v101;
        }

        v24 = v107 + 1;
        if (v107 + 1 == v102)
        {

          v23 = v93;
          goto LABEL_46;
        }
      }

      __break(1u);
    }

    else
    {

      v23 = MEMORY[0x277D84F90];
      v94 = MEMORY[0x277D84F90];
LABEL_46:
      if (one-time initialization token for engagement == -1)
      {
        goto LABEL_47;
      }
    }

    swift_once();
LABEL_47:
    v76 = type metadata accessor for Logger();
    __swift_project_value_buffer(v76, static Logger.engagement);
    v77 = Logger.logObject.getter();
    v78 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v77, v78))
    {
      v79 = swift_slowAlloc();
      *v79 = 0;
      _os_log_impl(&dword_25ECEC000, v77, v78, "\n\n\n ======== Bad Music Entity Match ========\n\n", v79, 2u);
      MEMORY[0x25F8CEE50](v79, -1, -1);
    }

    v80 = v23[2];
    if (v80)
    {
      v81 = (v23 + 4);
      do
      {
        outlined init with copy of EntitySimilarity(v81, &v126);
        v82 = v128;
        v83 = v129;
        __swift_project_boxed_opaque_existential_1(&v126, v128);
        (*(v83 + 72))(v82, v83);
        __swift_destroy_boxed_opaque_existential_0(&v126);
        v81 += 40;
        --v80;
      }

      while (v80);
    }

    return;
  }

  if (one-time initialization token for engagement != -1)
  {
    swift_once();
  }

  v72 = type metadata accessor for Logger();
  __swift_project_value_buffer(v72, static Logger.engagement);
  v122 = Logger.logObject.getter();
  v73 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v122, v73))
  {
    v74 = swift_slowAlloc();
    *v74 = 0;
    _os_log_impl(&dword_25ECEC000, v122, v73, "Failed to retrieve engagement features", v74, 2u);
    MEMORY[0x25F8CEE50](v74, -1, -1);
  }

  v75 = v122;
}

uint64_t MusicEntitySimilarity.__allocating_init(siri:playDuration:userFollowup:)(uint64_t a1, uint64_t a2, double a3)
{
  v6 = swift_allocObject();
  v7 = OBJC_IVAR____TtC18PostSiriEngagement21MusicEntitySimilarity_userFollowupEntity;
  v8 = type metadata accessor for ProtoMediaEntitySignal();
  v9 = *(v8 - 8);
  (*(v9 + 56))(v6 + v7, 1, 1, v8);
  (*(v9 + 32))(v6 + OBJC_IVAR____TtC18PostSiriEngagement21MusicEntitySimilarity_siriChosenEntity, a1, v8);
  swift_beginAccess();
  outlined assign with take of ProtoMediaEntitySignal?(a2, v6 + v7, &_s18SiriTaskEngagement22ProtoMediaEntitySignalVSgMd, &_s18SiriTaskEngagement22ProtoMediaEntitySignalVSgMR);
  swift_endAccess();
  *(v6 + OBJC_IVAR____TtC18PostSiriEngagement21MusicEntitySimilarity_playDuration) = a3;
  return v6;
}

uint64_t key path setter for MusicEntitySimilarity.siriChosenEntity : MusicEntitySimilarity(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProtoMediaEntitySignal();
  MEMORY[0x28223BE20](v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v6, a1);
  return (*(**a2 + 112))(v6);
}

uint64_t key path setter for MusicEntitySimilarity.userFollowupEntity : MusicEntitySimilarity(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriTaskEngagement22ProtoMediaEntitySignalVSgMd, &_s18SiriTaskEngagement22ProtoMediaEntitySignalVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v8 - v5;
  outlined init with copy of Date?(a1, &v8 - v5, &_s18SiriTaskEngagement22ProtoMediaEntitySignalVSgMd, &_s18SiriTaskEngagement22ProtoMediaEntitySignalVSgMR);
  return (*(**a2 + 136))(v6);
}

double MusicEntitySimilarity.playDuration.getter()
{
  v1 = OBJC_IVAR____TtC18PostSiriEngagement21MusicEntitySimilarity_playDuration;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t MusicEntitySimilarity.playDuration.setter(double a1)
{
  v3 = OBJC_IVAR____TtC18PostSiriEngagement21MusicEntitySimilarity_playDuration;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t MusicEntitySimilarity.init(siri:playDuration:userFollowup:)(uint64_t a1, uint64_t a2, double a3)
{
  v7 = OBJC_IVAR____TtC18PostSiriEngagement21MusicEntitySimilarity_userFollowupEntity;
  v8 = type metadata accessor for ProtoMediaEntitySignal();
  v9 = *(v8 - 8);
  (*(v9 + 56))(v3 + v7, 1, 1, v8);
  (*(v9 + 32))(v3 + OBJC_IVAR____TtC18PostSiriEngagement21MusicEntitySimilarity_siriChosenEntity, a1, v8);
  swift_beginAccess();
  outlined assign with take of ProtoMediaEntitySignal?(a2, v3 + v7, &_s18SiriTaskEngagement22ProtoMediaEntitySignalVSgMd, &_s18SiriTaskEngagement22ProtoMediaEntitySignalVSgMR);
  swift_endAccess();
  *(v3 + OBJC_IVAR____TtC18PostSiriEngagement21MusicEntitySimilarity_playDuration) = a3;
  return v3;
}

uint64_t MusicEntitySimilarity.compare()(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriTaskEngagement22ProtoMediaEntitySignalVSgMd, &_s18SiriTaskEngagement22ProtoMediaEntitySignalVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v23 - v4;
  v6 = type metadata accessor for ProtoMediaEntitySignal();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v23 - v12;
  (*(*v1 + 128))(v11);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    outlined destroy of Date?(v5, &_s18SiriTaskEngagement22ProtoMediaEntitySignalVSgMd, &_s18SiriTaskEngagement22ProtoMediaEntitySignalVSgMR);
LABEL_3:
    a1[3] = type metadata accessor for MusicEntitySimilarity(0);
    a1[4] = &protocol witness table for MusicEntitySimilarity;
    *a1 = v1;

    return 0;
  }

  v15 = (*(v7 + 32))(v13, v5, v6);
  (*(*v1 + 104))(v15);
  v16 = ProtoMediaEntitySignal.adamIdentifier.getter();
  v18 = v17;
  v19 = *(v7 + 8);
  v19(v10, v6);
  if (v16 == ProtoMediaEntitySignal.adamIdentifier.getter() && v18 == v20)
  {
  }

  else
  {
    v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v22 & 1) == 0)
    {
      v19(v13, v6);
      goto LABEL_3;
    }
  }

  a1[3] = type metadata accessor for MusicEntitySimilarity(0);
  a1[4] = &protocol witness table for MusicEntitySimilarity;
  *a1 = v1;

  v19(v13, v6);
  return 1;
}

Swift::Void __swiftcall MusicEntitySimilarity.print()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriTaskEngagement22ProtoMediaEntitySignalVSgMd, &_s18SiriTaskEngagement22ProtoMediaEntitySignalVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v64 - v3;
  v5 = type metadata accessor for ProtoMediaEntitySignal();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v64 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v64 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v64 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v64 - v20;
  (*(*v0 + 128))(v19);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    outlined destroy of Date?(v4, &_s18SiriTaskEngagement22ProtoMediaEntitySignalVSgMd, &_s18SiriTaskEngagement22ProtoMediaEntitySignalVSgMR);
  }

  else
  {
    v70 = v18;
    (*(v6 + 32))(v21, v4, v5);
    v22 = v21;
    if (one-time initialization token for engagement != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    __swift_project_value_buffer(v23, static Logger.engagement);
    v24 = *(v6 + 16);
    v24(v70, v21, v5);
    v69 = v15;
    v24(v15, v21, v5);
    v24(v12, v21, v5);

    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v65 = v12;
      v28 = v27;
      v68 = swift_slowAlloc();
      v71 = v68;
      *v28 = 136316674;
      v29 = *(*v1 + 104);
      v64 = v25;
      v66 = v26;
      v29();
      v30 = ProtoMediaEntitySignal.title.getter();
      v32 = v31;
      v67 = v22;
      v33 = *(v6 + 8);
      v33(v9, v5);
      v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v32, &v71);

      *(v28 + 4) = v34;
      *(v28 + 12) = 2080;
      (v29)(v35);
      v36 = ProtoMediaEntitySignal.album.getter();
      v38 = v37;
      v33(v9, v5);
      v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v38, &v71);

      *(v28 + 14) = v39;
      *(v28 + 22) = 2080;
      (v29)(v40);
      v41 = ProtoMediaEntitySignal.artist.getter();
      v43 = v42;
      v33(v9, v5);
      v44 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41, v43, &v71);

      *(v28 + 24) = v44;
      *(v28 + 32) = 2048;
      *(v28 + 34) = (*(*v1 + 152))(v45);
      *(v28 + 42) = 2080;
      v46 = v70;
      v47 = ProtoMediaEntitySignal.title.getter();
      v49 = v48;
      v33(v46, v5);
      v50 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v47, v49, &v71);

      *(v28 + 44) = v50;
      *(v28 + 52) = 2080;
      v51 = v69;
      v52 = ProtoMediaEntitySignal.album.getter();
      v54 = v53;
      v33(v51, v5);
      v55 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v52, v54, &v71);

      *(v28 + 54) = v55;
      *(v28 + 62) = 2080;
      v56 = v65;
      v57 = ProtoMediaEntitySignal.artist.getter();
      v59 = v58;
      v33(v56, v5);
      v60 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v57, v59, &v71);

      *(v28 + 64) = v60;
      v61 = v64;
      _os_log_impl(&dword_25ECEC000, v64, v66, "\n Siri Played => Title: %s, Album: %s, Artist: %s ------------- Played %f seconds\n User Played in followup => Title: %s, Album: %s, Artist: %s\n\n ", v28, 0x48u);
      v62 = v68;
      swift_arrayDestroy();
      MEMORY[0x25F8CEE50](v62, -1, -1);
      MEMORY[0x25F8CEE50](v28, -1, -1);

      v33(v67, v5);
    }

    else
    {

      v63 = *(v6 + 8);
      v63(v12, v5);
      v63(v69, v5);
      v63(v70, v5);
      v63(v22, v5);
    }
  }
}

uint64_t MusicEntitySimilarity.deinit()
{
  v1 = OBJC_IVAR____TtC18PostSiriEngagement21MusicEntitySimilarity_siriChosenEntity;
  v2 = type metadata accessor for ProtoMediaEntitySignal();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  outlined destroy of Date?(v0 + OBJC_IVAR____TtC18PostSiriEngagement21MusicEntitySimilarity_userFollowupEntity, &_s18SiriTaskEngagement22ProtoMediaEntitySignalVSgMd, &_s18SiriTaskEngagement22ProtoMediaEntitySignalVSgMR);
  return v0;
}

uint64_t MusicEntitySimilarity.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC18PostSiriEngagement21MusicEntitySimilarity_siriChosenEntity;
  v2 = type metadata accessor for ProtoMediaEntitySignal();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  outlined destroy of Date?(v0 + OBJC_IVAR____TtC18PostSiriEngagement21MusicEntitySimilarity_userFollowupEntity, &_s18SiriTaskEngagement22ProtoMediaEntitySignalVSgMd, &_s18SiriTaskEngagement22ProtoMediaEntitySignalVSgMR);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t (*protocol witness for EntitySimilarity.siriChosenEntity.modify in conformance MusicEntitySimilarity(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*(**v1 + 120))();
  return protocol witness for EntitySimilarity.siriChosenEntity.modify in conformance MusicEntitySimilarity;
}

uint64_t (*protocol witness for EntitySimilarity.userFollowupEntity.modify in conformance MusicEntitySimilarity(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*(**v1 + 144))();
  return protocol witness for EntitySimilarity.userFollowupEntity.modify in conformance MusicEntitySimilarity;
}

uint64_t key path setter for PhoneCallEntitySimilarity.siriChosenEntity : PhoneCallEntitySimilarity(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProtoContactEntitySignal();
  MEMORY[0x28223BE20](v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v6, a1);
  return (*(**a2 + 112))(v6);
}

uint64_t MusicEntitySimilarity.siriChosenEntity.getter@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *a1;
  swift_beginAccess();
  v7 = a2(0);
  return (*(*(v7 - 8) + 16))(a3, v3 + v6, v7);
}

uint64_t MusicEntitySimilarity.siriChosenEntity.setter(uint64_t a1, uint64_t *a2, uint64_t (*a3)(void))
{
  v6 = *a2;
  swift_beginAccess();
  v7 = a3(0);
  (*(*(v7 - 8) + 40))(v3 + v6, a1, v7);
  return swift_endAccess();
}

uint64_t key path setter for PhoneCallEntitySimilarity.userFollowupEntity : PhoneCallEntitySimilarity(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriTaskEngagement24ProtoContactEntitySignalVSgMd, &_s18SiriTaskEngagement24ProtoContactEntitySignalVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v8 - v5;
  outlined init with copy of Date?(a1, &v8 - v5, &_s18SiriTaskEngagement24ProtoContactEntitySignalVSgMd, &_s18SiriTaskEngagement24ProtoContactEntitySignalVSgMR);
  return (*(**a2 + 136))(v6);
}

uint64_t MusicEntitySimilarity.userFollowupEntity.getter@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *a1;
  swift_beginAccess();
  return outlined init with copy of Date?(v4 + v8, a4, a2, a3);
}

uint64_t MusicEntitySimilarity.userFollowupEntity.setter(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v8 = *a2;
  swift_beginAccess();
  outlined assign with take of ProtoMediaEntitySignal?(a1, v4 + v8, a3, a4);
  return swift_endAccess();
}

double PhoneCallEntitySimilarity.callDuration.getter()
{
  v1 = OBJC_IVAR____TtC18PostSiriEngagement25PhoneCallEntitySimilarity_callDuration;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t PhoneCallEntitySimilarity.callDuration.setter(double a1)
{
  v3 = OBJC_IVAR____TtC18PostSiriEngagement25PhoneCallEntitySimilarity_callDuration;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t PhoneCallEntitySimilarity.__allocating_init(siri:callDuration:userFollowup:)(uint64_t a1, uint64_t a2, double a3)
{
  v6 = swift_allocObject();
  v7 = OBJC_IVAR____TtC18PostSiriEngagement25PhoneCallEntitySimilarity_userFollowupEntity;
  v8 = type metadata accessor for ProtoContactEntitySignal();
  v9 = *(v8 - 8);
  (*(v9 + 56))(v6 + v7, 1, 1, v8);
  (*(v9 + 32))(v6 + OBJC_IVAR____TtC18PostSiriEngagement25PhoneCallEntitySimilarity_siriChosenEntity, a1, v8);
  swift_beginAccess();
  outlined assign with take of ProtoMediaEntitySignal?(a2, v6 + v7, &_s18SiriTaskEngagement24ProtoContactEntitySignalVSgMd, &_s18SiriTaskEngagement24ProtoContactEntitySignalVSgMR);
  swift_endAccess();
  *(v6 + OBJC_IVAR____TtC18PostSiriEngagement25PhoneCallEntitySimilarity_callDuration) = a3;
  return v6;
}

uint64_t PhoneCallEntitySimilarity.init(siri:callDuration:userFollowup:)(uint64_t a1, uint64_t a2, double a3)
{
  v7 = OBJC_IVAR____TtC18PostSiriEngagement25PhoneCallEntitySimilarity_userFollowupEntity;
  v8 = type metadata accessor for ProtoContactEntitySignal();
  v9 = *(v8 - 8);
  (*(v9 + 56))(v3 + v7, 1, 1, v8);
  (*(v9 + 32))(v3 + OBJC_IVAR____TtC18PostSiriEngagement25PhoneCallEntitySimilarity_siriChosenEntity, a1, v8);
  swift_beginAccess();
  outlined assign with take of ProtoMediaEntitySignal?(a2, v3 + v7, &_s18SiriTaskEngagement24ProtoContactEntitySignalVSgMd, &_s18SiriTaskEngagement24ProtoContactEntitySignalVSgMR);
  swift_endAccess();
  *(v3 + OBJC_IVAR____TtC18PostSiriEngagement25PhoneCallEntitySimilarity_callDuration) = a3;
  return v3;
}

uint64_t PhoneCallEntitySimilarity.compare()(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriTaskEngagement24ProtoContactEntitySignalVSgMd, &_s18SiriTaskEngagement24ProtoContactEntitySignalVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v35 - v4;
  v6 = type metadata accessor for ProtoContactEntitySignal();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = v35 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v16 = v35 - v15;
  (*(*v1 + 128))(v14);
  if ((*(v7 + 48))(v5, 1, v6) != 1)
  {
    v37 = a1;
    v17 = (*(v7 + 32))(v16, v5, v6);
    v18 = *(*v1 + 104);
    v35[1] = *v1 + 104;
    v36 = v18;
    v18(v17);
    v19 = ProtoContactEntitySignal.givenName.getter();
    v21 = v20;
    v22 = *(v7 + 8);
    v22(v13, v6);
    if (v19 == ProtoContactEntitySignal.givenName.getter() && v21 == v23)
    {
    }

    else
    {
      v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v25 & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    v36(v26);
    v27 = ProtoContactEntitySignal.familyName.getter();
    v29 = v28;
    v22(v10, v6);
    if (v27 == ProtoContactEntitySignal.familyName.getter() && v29 == v30)
    {
    }

    else
    {
      v31 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v31 & 1) == 0)
      {
LABEL_15:
        v22(v16, v6);
        a1 = v37;
        goto LABEL_16;
      }
    }

    v32 = type metadata accessor for PhoneCallEntitySimilarity(0);
    v33 = v37;
    v37[3] = v32;
    v33[4] = &protocol witness table for PhoneCallEntitySimilarity;
    *v33 = v1;

    v22(v16, v6);
    return 1;
  }

  outlined destroy of Date?(v5, &_s18SiriTaskEngagement24ProtoContactEntitySignalVSgMd, &_s18SiriTaskEngagement24ProtoContactEntitySignalVSgMR);
LABEL_16:
  a1[3] = type metadata accessor for PhoneCallEntitySimilarity(0);
  a1[4] = &protocol witness table for PhoneCallEntitySimilarity;
  *a1 = v1;

  return 0;
}

Swift::Void __swiftcall PhoneCallEntitySimilarity.print()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriTaskEngagement24ProtoContactEntitySignalVSgMd, &_s18SiriTaskEngagement24ProtoContactEntitySignalVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v50 - v3;
  v5 = type metadata accessor for ProtoContactEntitySignal();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v50 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v50 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v50 - v17;
  (*(*v0 + 128))(v16);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    outlined destroy of Date?(v4, &_s18SiriTaskEngagement24ProtoContactEntitySignalVSgMd, &_s18SiriTaskEngagement24ProtoContactEntitySignalVSgMR);
  }

  else
  {
    (*(v6 + 32))(v18, v4, v5);
    if (one-time initialization token for engagement != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    __swift_project_value_buffer(v19, static Logger.engagement);
    v20 = *(v6 + 16);
    v20(v15, v18, v5);
    v20(v12, v18, v5);

    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v57 = v56;
      *v23 = 136316162;
      v24 = *v1;
      v51 = v15;
      v25 = *(v24 + 104);
      v55 = v22;
      v54 = v21;
      v25();
      v26 = ProtoContactEntitySignal.givenName.getter();
      v52 = v18;
      v53 = v12;
      v28 = v27;
      v29 = *(v6 + 8);
      v29(v9, v5);
      v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v28, &v57);

      *(v23 + 4) = v30;
      *(v23 + 12) = 2080;
      (v25)(v31);
      v32 = ProtoContactEntitySignal.familyName.getter();
      v34 = v33;
      v29(v9, v5);
      v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v34, &v57);

      *(v23 + 14) = v35;
      *(v23 + 22) = 2048;
      *(v23 + 24) = (*(*v1 + 152))(v36);
      *(v23 + 32) = 2080;
      v37 = v51;
      v38 = ProtoContactEntitySignal.givenName.getter();
      v40 = v39;
      v29(v37, v5);
      v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v40, &v57);

      *(v23 + 34) = v41;
      *(v23 + 42) = 2080;
      v42 = v53;
      v43 = ProtoContactEntitySignal.givenName.getter();
      v45 = v44;
      v29(v42, v5);
      v46 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v43, v45, &v57);

      *(v23 + 44) = v46;
      v47 = v54;
      _os_log_impl(&dword_25ECEC000, v54, v55, "\n Siri Called => First name: %s, Last name: %s,  ------------- CallDuration %f seconds\n User Called in followup => First name: %s, Last name: %s\n\n ", v23, 0x34u);
      v48 = v56;
      swift_arrayDestroy();
      MEMORY[0x25F8CEE50](v48, -1, -1);
      MEMORY[0x25F8CEE50](v23, -1, -1);

      v29(v52, v5);
    }

    else
    {

      v49 = *(v6 + 8);
      v49(v12, v5);
      v49(v15, v5);
      v49(v18, v5);
    }
  }
}

uint64_t PhoneCallEntitySimilarity.deinit()
{
  v1 = OBJC_IVAR____TtC18PostSiriEngagement25PhoneCallEntitySimilarity_siriChosenEntity;
  v2 = type metadata accessor for ProtoContactEntitySignal();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  outlined destroy of Date?(v0 + OBJC_IVAR____TtC18PostSiriEngagement25PhoneCallEntitySimilarity_userFollowupEntity, &_s18SiriTaskEngagement24ProtoContactEntitySignalVSgMd, &_s18SiriTaskEngagement24ProtoContactEntitySignalVSgMR);
  return v0;
}

uint64_t PhoneCallEntitySimilarity.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC18PostSiriEngagement25PhoneCallEntitySimilarity_siriChosenEntity;
  v2 = type metadata accessor for ProtoContactEntitySignal();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  outlined destroy of Date?(v0 + OBJC_IVAR____TtC18PostSiriEngagement25PhoneCallEntitySimilarity_userFollowupEntity, &_s18SiriTaskEngagement24ProtoContactEntitySignalVSgMd, &_s18SiriTaskEngagement24ProtoContactEntitySignalVSgMR);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t (*protocol witness for EntitySimilarity.siriChosenEntity.modify in conformance PhoneCallEntitySimilarity(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*(**v1 + 120))();
  return protocol witness for EntitySimilarity.userFollowupEntity.modify in conformance MusicEntitySimilarity;
}

uint64_t (*protocol witness for EntitySimilarity.userFollowupEntity.modify in conformance PhoneCallEntitySimilarity(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*(**v1 + 144))();
  return protocol witness for EntitySimilarity.userFollowupEntity.modify in conformance MusicEntitySimilarity;
}

void protocol witness for EntitySimilarity.siriChosenEntity.modify in conformance MusicEntitySimilarity(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

unint64_t lazy protocol witness table accessor for type ProtoTaskEngagementType and conformance ProtoTaskEngagementType()
{
  result = lazy protocol witness table cache variable for type ProtoTaskEngagementType and conformance ProtoTaskEngagementType;
  if (!lazy protocol witness table cache variable for type ProtoTaskEngagementType and conformance ProtoTaskEngagementType)
  {
    type metadata accessor for ProtoTaskEngagementType();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ProtoTaskEngagementType and conformance ProtoTaskEngagementType);
  }

  return result;
}

uint64_t outlined init with copy of EntitySimilarity(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t outlined init with take of EntitySimilarity(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t outlined init with take of ProtoMediaEntitySignal?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriTaskEngagement22ProtoMediaEntitySignalVSgMd, &_s18SiriTaskEngagement22ProtoMediaEntitySignalVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined assign with take of ProtoMediaEntitySignal?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

void type metadata completion function for MusicEntitySimilarity(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t), unint64_t *a5, uint64_t (*a6)(uint64_t))
{
  a4(319, a2, a3);
  if (v8 <= 0x3F)
  {
    type metadata accessor for ProtoMediaEntitySignal?(319, a5, a6);
    if (v9 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void type metadata accessor for ProtoMediaEntitySignal?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

uint64_t HomeKitAccessoryControlSignalFactory.convertBmEventToSignal(bmEvent:siriUISession:)(void *a1, uint64_t a2, double a3)
{
  v123 = a2;
  v124 = a1;
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v121 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v121 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v121 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v16 = &v121 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v121 - v17;
  v129 = MEMORY[0x277D84F98];
  Date.init(timeIntervalSinceReferenceDate:)();
  (*(v4 + 56))(v18, 0, 1, v3);
  v19 = *(v4 + 16);
  v122 = v12;
  v20 = v12;
  v21 = v123;
  v19(v20, v123, v3);
  v22 = type metadata accessor for SiriUISession(0);
  v19(v10, v21 + *(v22 + 20), v3);
  outlined init with copy of Date?(v18, v16);
  LODWORD(v123) = (*(v4 + 48))(v16, 1, v3);
  if (v123 == 1)
  {
    v36 = *(v4 + 8);
    v36(v10, v3);
    v36(v122, v3);
    outlined destroy of Date?(v18, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    outlined destroy of Date?(v16, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v122 = 0x3FF0000000000000;
    v24 = 0;
    v28 = 0.0;
    v35 = 0.0;
  }

  else
  {
    (*(v4 + 32))(v7, v16, v3);
    Date.timeIntervalSinceReferenceDate.getter();
    v24 = v23;
    Date.timeIntervalSinceReferenceDate.getter();
    v26 = v25;
    Date.timeIntervalSinceReferenceDate.getter();
    v28 = v26 - v27;
    Date.timeIntervalSinceReferenceDate.getter();
    v30 = v29;
    v31 = v122;
    Date.timeIntervalSinceReferenceDate.getter();
    v33 = v32;
    v34 = *(v4 + 8);
    v34(v7, v3);
    v34(v10, v3);
    v34(v31, v3);
    outlined destroy of Date?(v18, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v122 = 0;
    v35 = v30 - v33;
  }

  v37 = v124;
  v38 = [v124 accessoryUniqueIdentifier];
  v39 = MEMORY[0x277D837D0];
  if (v38)
  {
    v40 = v38;
    v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v43 = v42;

    v128 = v39;
    *&v127 = v41;
    *(&v127 + 1) = v43;
    outlined init with take of Any(&v127, v126);
    v44 = v129;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v125 = v44;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v126, 0xD000000000000019, 0x800000025ED7F4D0, isUniquelyReferenced_nonNull_native);
    v129 = v125;
  }

  else
  {
    specialized Dictionary._Variant.removeValue(forKey:)(0xD000000000000019, 0x800000025ED7F4D0, &v127);
    outlined destroy of Date?(&v127, &_sypSgMd, &_sypSgMR);
  }

  v46 = [v37 accessoryState];
  if (v46)
  {
    v47 = v46;
    [v46 numValue];
    v49 = v48;

    v128 = MEMORY[0x277D839F8];
    *&v127 = v49;
    outlined init with take of Any(&v127, v126);
    v50 = v129;
    v51 = swift_isUniquelyReferenced_nonNull_native();
    v125 = v50;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v126, 0xD000000000000014, 0x800000025ED7F510, v51);
    v129 = v125;
  }

  else
  {
    specialized Dictionary._Variant.removeValue(forKey:)(0xD000000000000014, 0x800000025ED7F510, &v127);
    outlined destroy of Date?(&v127, &_sypSgMd, &_sypSgMR);
  }

  v52 = [v37 characteristicType];
  if (v52)
  {
    v53 = v52;
    v54 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v56 = v55;

    v57 = v39;
    v128 = v39;
    *&v127 = v54;
    *(&v127 + 1) = v56;
    outlined init with take of Any(&v127, v126);
    v58 = v129;
    v59 = swift_isUniquelyReferenced_nonNull_native();
    v125 = v58;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v126, 0xD000000000000012, 0x800000025ED7F4F0, v59);
    v129 = v125;
  }

  else
  {
    v57 = v39;
    specialized Dictionary._Variant.removeValue(forKey:)(0xD000000000000012, 0x800000025ED7F4F0, &v127);
    outlined destroy of Date?(&v127, &_sypSgMd, &_sypSgMR);
  }

  v60 = [v37 base];
  if (v60 && (v61 = v60, v62 = [v60 source], v61, v62))
  {
    v63 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v65 = v64;

    v128 = v57;
    *&v127 = v63;
    *(&v127 + 1) = v65;
    outlined init with take of Any(&v127, v126);
    v66 = v129;
    v67 = swift_isUniquelyReferenced_nonNull_native();
    v125 = v66;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v126, 0x656372756F73, 0xE600000000000000, v67);
    v129 = v125;
  }

  else
  {
    specialized Dictionary._Variant.removeValue(forKey:)(0x656372756F73, 0xE600000000000000, &v127);
    outlined destroy of Date?(&v127, &_sypSgMd, &_sypSgMR);
  }

  v68 = [v37 base];
  if (v68 && (v69 = v68, v70 = [v68 clientName], v69, v70))
  {
    v71 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v73 = v72;

    v128 = v57;
    *&v127 = v71;
    *(&v127 + 1) = v73;
    outlined init with take of Any(&v127, v126);
    v74 = v129;
    v75 = swift_isUniquelyReferenced_nonNull_native();
    v125 = v74;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v126, 0x614E746E65696C63, 0xEA0000000000656DLL, v75);
    v129 = v125;
  }

  else
  {
    specialized Dictionary._Variant.removeValue(forKey:)(0x614E746E65696C63, 0xEA0000000000656DLL, &v127);
    outlined destroy of Date?(&v127, &_sypSgMd, &_sypSgMR);
  }

  v76 = [v37 base];
  if (!v76)
  {
    goto LABEL_28;
  }

  v77 = v76;
  v78 = [v76 source];

  if (!v78)
  {
    goto LABEL_28;
  }

  v79 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v81 = v80;

  if (v79 != 1769105747 || v81 != 0xE400000000000000)
  {
    v83 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v37 = v124;
    if (v83)
    {
      v82 = 1;
      goto LABEL_29;
    }

LABEL_28:
    v82 = 0;
    goto LABEL_29;
  }

  v82 = 1;
  v37 = v124;
LABEL_29:
  v84 = MEMORY[0x277D839B0];
  v128 = MEMORY[0x277D839B0];
  LOBYTE(v127) = v82;
  outlined init with take of Any(&v127, v126);
  v85 = v129;
  v86 = swift_isUniquelyReferenced_nonNull_native();
  v125 = v85;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v126, 0x42646574616E6F64, 0xED00006972695379, v86);
  v129 = v125;
  v87 = [v37 base];
  if (!v87 || (v88 = v87, v89 = [v87 source], v88, !v89))
  {
    v93 = 1;
    goto LABEL_38;
  }

  v90 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v92 = v91;

  if (v90 == 0x7261506472696854 && v92 == 0xEA00000000007974)
  {

LABEL_36:
    v93 = 0;
    goto LABEL_38;
  }

  v94 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v94)
  {
    goto LABEL_36;
  }

  v93 = 1;
LABEL_38:
  v128 = v84;
  LOBYTE(v127) = v93;
  outlined init with take of Any(&v127, v126);
  v95 = v129;
  v96 = swift_isUniquelyReferenced_nonNull_native();
  v125 = v95;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v126, 0xD000000000000016, 0x800000025ED7E770, v96);
  v97 = v125;
  v129 = v125;
  v98 = [v37 roomUniqueIdentifier];
  if (v98)
  {
    v99 = v98;
    v100 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v102 = v101;

    v128 = v57;
    *&v127 = v100;
    *(&v127 + 1) = v102;
    outlined init with take of Any(&v127, v126);
    v103 = swift_isUniquelyReferenced_nonNull_native();
    v125 = v97;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v126, 0xD000000000000014, 0x800000025ED7F550, v103);
    v104 = v125;
  }

  else
  {
    specialized Dictionary._Variant.removeValue(forKey:)(0xD000000000000014, 0x800000025ED7F550, &v127);
    outlined destroy of Date?(&v127, &_sypSgMd, &_sypSgMR);
    v104 = v129;
  }

  v105 = v124;
  v106 = [v124 zoneUniqueIdentifiers];
  v107 = MEMORY[0x277D837D0];
  v108 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  *&v127 = v108;
  outlined init with take of Any(&v127, v126);
  v109 = swift_isUniquelyReferenced_nonNull_native();
  v125 = v104;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v126, 0xD000000000000015, 0x800000025ED7F570, v109);
  v110 = v125;
  v129 = v125;
  v111 = [v105 serviceType];
  if (v111)
  {
    v112 = v111;
    v113 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v115 = v114;

    v128 = v107;
    *&v127 = v113;
    *(&v127 + 1) = v115;
    outlined init with take of Any(&v127, v126);
    v116 = swift_isUniquelyReferenced_nonNull_native();
    v125 = v110;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v126, 0x5465636976726573, 0xEB00000000657079, v116);
    v117 = v125;
  }

  else
  {
    specialized Dictionary._Variant.removeValue(forKey:)(0x5465636976726573, 0xEB00000000657079, &v127);
    outlined destroy of Date?(&v127, &_sypSgMd, &_sypSgMR);
    v117 = v129;
  }

  v118 = v123 != 1;
  type metadata accessor for Signal();
  result = swift_allocObject();
  *(result + 16) = v24;
  *(result + 24) = v28;
  *(result + 32) = v35;
  v120 = v122;
  *(result + 40) = 0;
  *(result + 48) = v120;
  *(result + 56) = v118;
  strcpy((result + 64), "HomeAutomation");
  *(result + 79) = -18;
  *(result + 80) = 0x486C6F72746E6F43;
  *(result + 88) = 0xEB00000000656D6FLL;
  *(result + 96) = 1;
  *(result + 104) = v117;
  return result;
}

uint64_t HomeKitAccessoryControlSignalFactory.processBiomeEventsToSignals(bmEvents:siriUISession:)@<X0>(uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  v4 = v3;
  v189 = a3;
  v202 = type metadata accessor for ReliabilityCategory();
  v6 = *(v202 - 8);
  MEMORY[0x28223BE20](v202);
  v201 = &v179 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x277D84F90];
  v204 = MEMORY[0x277D84F90];

  v10 = 0;
  v11 = _sSD8grouping2bySDyxSay7ElementQyd__GGqd__n_xADKXEtKcAERs_STRd__lufCSSSg_Say18PostSiriEngagement32ExtendedBMHomeKitClientAccessoryVGTt1g504_s18de16Engagement36Homeik94ControlSignalFactoryC27processBiomeEventsToSignals02bmL013siriUISessionAA10PSESignalsVSayAA014g8BMHomee6J25F0VG_AA0bQ0VtFSSSgAJXEfU_Tf1nc_nTf4g_n(v9);

  v12 = v11 + 8;
  v13 = 1 << *(v11 + 32);
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  else
  {
    v14 = -1;
  }

  v200 = (v14 & v11[8]);
  v198 = ((v13 + 63) >> 6);
  v190 = 0x800000025ED80960;
  v188 = 0x800000025ED80930;

  v15 = 0;
  v195 = xmmword_25ED7C750;
  v196 = v8;
  v192 = a2;
  *&v191 = v11;
LABEL_5:
  v16 = v200;
  while (1)
  {
    if (v16)
    {
      v17 = v16;
    }

    else
    {
      do
      {
        v18 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          __break(1u);
LABEL_151:
          __break(1u);
LABEL_152:
          __break(1u);
LABEL_153:
          __break(1u);
LABEL_154:
          __break(1u);
LABEL_155:
          __break(1u);
LABEL_156:
          __break(1u);
LABEL_157:
          __break(1u);
LABEL_158:
          __break(1u);
LABEL_159:
          __break(1u);
          goto LABEL_160;
        }

        if (v18 >= v198)
        {

          v203 = v196;

          specialized MutableCollection<>.sort(by:)(&v203);
          if (v10)
          {
            goto LABEL_162;
          }

          v169 = *(v203 + 2);
          if (v169)
          {
            v170 = *(*v4 + 80);
            v199 = (*v4 + 80);
            v200 = v170;
            v198 = "intentResponseCode";
            LODWORD(v197) = *MEMORY[0x277D616D0];
            LODWORD(v196) = *MEMORY[0x277D61678];
            *&v195 = v6 + 104;
            v194 = (v6 + 8);
            v188 = v203;
            v171 = v203 + 40;
            v190 = MEMORY[0x277D84F90];
            *&v168 = 136315138;
            v191 = v168;
            do
            {
              v172 = *v171;
              v173 = *(v171 - 1);
              if (v200(v172))
              {

                MEMORY[0x25F8CE160](v174);
                if (*((v204 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v204 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                }

                specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

                v190 = v204;
              }

              else
              {
              }

              v171 += 16;
              --v169;
            }

            while (v169);

            v176 = v190;
          }

          else
          {

            v176 = MEMORY[0x277D84F90];
          }

          v177 = v189;
          *v189 = v176;
          v177[1] = MEMORY[0x277D84F90];
          return result;
        }

        v17 = v12[v18];
        ++v15;
      }

      while (!v17);
      v15 = v18;
    }

    v16 = (v17 - 1) & v17;
    if (v11[2])
    {
      v19 = v11[6];
      v200 = ((v17 - 1) & v17);
      v20 = (v19 + ((v15 << 10) | (16 * __clz(__rbit64(v17)))));
      v21 = *v20;
      v22 = v20[1];

      v23 = specialized __RawDictionaryStorage.find<A>(_:)(v21, v22);
      v25 = v24;

      v16 = v200;
      if (v25)
      {
        v26 = *(v11[7] + 8 * v23);
        v27 = *(v26 + 16);
        if (v27)
        {
          break;
        }
      }
    }
  }

  v186 = v10;
  v185 = v6;
  v28 = MEMORY[0x277D84F98];
  v203 = MEMORY[0x277D84F98];

  v10 = 0;
  v29 = (v26 + 40);
  v193 = v27;
  v187 = v4;
  v194 = v12;
  do
  {
    if (v10 >= *(v26 + 16))
    {
      goto LABEL_151;
    }

    v199 = v28;
    v32 = *v29;
    v33 = *(v29 - 1);
    v34 = [v33 base];
    v197 = v33;
    if (v34 && (v35 = v34, v36 = [v34 source], v35, v36))
    {
      v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v39 = v38;
    }

    else
    {
      v37 = 0;
      v39 = 0;
    }

    v40 = v199;
    v42 = specialized __RawDictionaryStorage.find<A>(_:)(v37, v39);
    v43 = *(v40 + 2);
    v44 = (v41 & 1) == 0;
    v45 = v43 + v44;
    if (__OFADD__(v43, v44))
    {
      goto LABEL_152;
    }

    v46 = v41;
    if (*(v40 + 3) < v45)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v45, 1);
      v199 = v203;
      v47 = specialized __RawDictionaryStorage.find<A>(_:)(v37, v39);
      if ((v46 & 1) != (v48 & 1))
      {
LABEL_163:
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
LABEL_164:
        v178 = *(v158 - 32);
        goto LABEL_165;
      }

      v42 = v47;
    }

    if (v46)
    {

      v49 = *(v199 + 7);
      v50 = *(v49 + 8 * v42);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v49 + 8 * v42) = v50;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v50 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v50 + 2) + 1, 1, v50);
        *(v49 + 8 * v42) = v50;
      }

      v53 = *(v50 + 2);
      v52 = *(v50 + 3);
      v28 = v199;
      if (v53 >= v52 >> 1)
      {
        v54 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v52 > 1), v53 + 1, 1, v50);
        v28 = v199;
        v50 = v54;
        *(v49 + 8 * v42) = v54;
      }

      v12 = v194;
      v30 = v193;
      *(v50 + 2) = v53 + 1;
      v31 = &v50[16 * v53];
      *(v31 + 4) = v197;
      *(v31 + 5) = v32;
      v4 = v187;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy18PostSiriEngagement32ExtendedBMHomeKitClientAccessoryVGMd, &_ss23_ContiguousArrayStorageCy18PostSiriEngagement32ExtendedBMHomeKitClientAccessoryVGMR);
      v55 = swift_allocObject();
      *(v55 + 16) = v195;
      *(v55 + 32) = v197;
      *(v55 + 40) = v32;
      v28 = v199;
      *&v199[8 * (v42 >> 6) + 64] |= 1 << v42;
      v56 = (*(v28 + 6) + 16 * v42);
      *v56 = v37;
      v56[1] = v39;
      *(*(v28 + 7) + 8 * v42) = v55;
      v57 = *(v28 + 2);
      v58 = __OFADD__(v57, 1);
      v59 = v57 + 1;
      if (v58)
      {
        goto LABEL_154;
      }

      *(v28 + 2) = v59;
      v12 = v194;
      v30 = v193;
    }

    ++v10;
    v29 += 2;
  }

  while (v30 != v10);

  v60 = *(v199 + 8);
  v197 = v199 + 64;
  v61 = 1 << v199[32];
  if (v61 < 64)
  {
    v62 = ~(-1 << v61);
  }

  else
  {
    v62 = -1;
  }

  v10 = v62 & v60;
  v193 = (v61 + 63) >> 6;

  v63 = v199;
  v64 = 0;
  v6 = v185;
  while (1)
  {
    while (1)
    {
LABEL_38:
      if (!v10)
      {
        v10 = v186;
        while (1)
        {
          v66 = v64 + 1;
          if (__OFADD__(v64, 1))
          {
            goto LABEL_153;
          }

          if (v66 >= v193)
          {
            break;
          }

          v65 = *&v197[8 * v66];
          ++v64;
          if (v65)
          {
            v64 = v66;
            goto LABEL_45;
          }
        }

        v11 = v191;
        goto LABEL_5;
      }

      v65 = v10;
LABEL_45:
      v10 = (v65 - 1) & v65;
      if (*(v63 + 2))
      {
        v67 = (*(v63 + 6) + ((v64 << 10) | (16 * __clz(__rbit64(v65)))));
        v68 = *v67;
        v69 = v67[1];

        v70 = specialized __RawDictionaryStorage.find<A>(_:)(v68, v69);
        v72 = v71;

        v63 = v199;
        if (v72)
        {
          v73 = *(*(v199 + 7) + 8 * v70);
          v74 = *(v73 + 2);
          if (v74)
          {
            break;
          }
        }
      }
    }

    v181 = v10;
    if (v74 != 1)
    {
      break;
    }

    v75 = *(v73 + 5);
    v76 = *(v73 + 4);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v196 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v196 + 2) + 1, 1, v196);
    }

    v78 = *(v196 + 2);
    v77 = *(v196 + 3);
    v63 = v199;
    if (v78 >= v77 >> 1)
    {
      v196 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v77 > 1), v78 + 1, 1, v196);
      v63 = v199;
    }

    v79 = v196;
    *(v196 + 2) = v78 + 1;
    v80 = &v79[16 * v78];
    *(v80 + 4) = v76;
    *(v80 + 5) = v75;
    v10 = v181;
  }

  v180 = v74 - 1;
  v183 = v74;

  v81 = 0;
  v82 = v73 + 40;
  v182 = MEMORY[0x277D84F90];
  v184 = v73;
  v179 = v73 + 40;
  do
  {
    v83 = &v82[16 * v81];
    v84 = v81;
    while (1)
    {
      if (v84 >= *(v73 + 2))
      {
        goto LABEL_155;
      }

      v85 = *v83;
      v86 = *(v83 - 1);
      v87 = [v86 characteristicType];
      if (!v87)
      {
        break;
      }

      v10 = v12;
      v88 = v87;
      v89 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v91 = v90;

      if (v89 != 0xD000000000000024 || v190 != v91)
      {
        v93 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v12 = v10;
        if (v93)
        {
          goto LABEL_71;
        }

        break;
      }

LABEL_56:

      v12 = v10;
LABEL_57:
      ++v84;
      v83 += 16;
      v73 = v184;
      if (v183 == v84)
      {
        goto LABEL_77;
      }
    }

    v94 = [v86 characteristicType];
    if (!v94)
    {
      goto LABEL_72;
    }

    v95 = v94;
    v10 = v12;
    v96 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v98 = v97;

    if (v96 == 0xD000000000000024 && v188 == v98)
    {
      goto LABEL_56;
    }

    v100 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v12 = v10;
    if (v100)
    {
LABEL_71:

      goto LABEL_57;
    }

LABEL_72:
    v101 = v182;
    v102 = swift_isUniquelyReferenced_nonNull_native();
    v203 = v101;
    if ((v102 & 1) == 0)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v101 + 2) + 1, 1);
      v101 = v203;
    }

    v104 = *(v101 + 2);
    v103 = *(v101 + 3);
    if (v104 >= v103 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v103 > 1), v104 + 1, 1);
      v101 = v203;
    }

    v81 = v84 + 1;
    *(v101 + 2) = v104 + 1;
    v182 = v101;
    v105 = &v101[16 * v104];
    *(v105 + 4) = v86;
    *(v105 + 5) = v85;
    v73 = v184;
    v82 = v179;
  }

  while (v180 != v84);
LABEL_77:
  v106 = v182;
  v10 = v186;
  if (*(v182 + 2))
  {
  }

  else
  {
    v203 = v73;

    specialized MutableCollection<>.sort(by:)(&v203);
    if (v10)
    {
      goto LABEL_162;
    }

    v107 = *(v203 + 2);
    if (v107)
    {
      v108 = &v203[16 * v107 + 16];
      v109 = *(v108 + 1);
      v110 = *v108;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v106 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v106 + 2) + 1, 1, v106);
      }

      v112 = *(v106 + 2);
      v111 = *(v106 + 3);
      if (v112 >= v111 >> 1)
      {
        v106 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v111 > 1), v112 + 1, 1, v106);
      }

      *(v106 + 2) = v112 + 1;
      v113 = &v106[16 * v112];
      *(v113 + 4) = v110;
      *(v113 + 5) = v109;
      v10 = 0;
    }

    else
    {
    }
  }

  v186 = v10;
  v114 = MEMORY[0x277D84F98];
  v203 = MEMORY[0x277D84F98];
  v183 = *(v106 + 2);
  v182 = v106;
  if (v183)
  {
    v115 = 0;
    v10 = (v106 + 40);
    while (v115 < *(v182 + 2))
    {
      v117 = *v10;
      v184 = *(v10 - 8);
      v118 = [v184 characteristicType];
      if (v118)
      {
        v119 = v118;
        v120 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v122 = v121;
      }

      else
      {
        v120 = 0;
        v122 = 0;
      }

      v124 = specialized __RawDictionaryStorage.find<A>(_:)(v120, v122);
      v125 = *(v114 + 2);
      v126 = (v123 & 1) == 0;
      v127 = v125 + v126;
      if (__OFADD__(v125, v126))
      {
        goto LABEL_158;
      }

      v128 = v123;
      if (*(v114 + 3) < v127)
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v127, 1);
        v114 = v203;
        v129 = specialized __RawDictionaryStorage.find<A>(_:)(v120, v122);
        if ((v128 & 1) != (v130 & 1))
        {
          goto LABEL_163;
        }

        v124 = v129;
      }

      if (v128)
      {

        v131 = *(v114 + 7);
        v132 = *(v131 + 8 * v124);
        v133 = swift_isUniquelyReferenced_nonNull_native();
        *(v131 + 8 * v124) = v132;
        if ((v133 & 1) == 0)
        {
          v132 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v132 + 2) + 1, 1, v132);
          *(v131 + 8 * v124) = v132;
        }

        v135 = *(v132 + 2);
        v134 = *(v132 + 3);
        if (v135 >= v134 >> 1)
        {
          v132 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v134 > 1), v135 + 1, 1, v132);
          *(v131 + 8 * v124) = v132;
        }

        *(v132 + 2) = v135 + 1;
        v116 = &v132[16 * v135];
        *(v116 + 4) = v184;
        *(v116 + 5) = v117;
        v4 = v187;
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy18PostSiriEngagement32ExtendedBMHomeKitClientAccessoryVGMd, &_ss23_ContiguousArrayStorageCy18PostSiriEngagement32ExtendedBMHomeKitClientAccessoryVGMR);
        v136 = swift_allocObject();
        *(v136 + 16) = v195;
        *(v136 + 32) = v184;
        *(v136 + 40) = v117;
        *&v114[8 * (v124 >> 6) + 64] |= 1 << v124;
        v137 = (*(v114 + 6) + 16 * v124);
        *v137 = v120;
        v137[1] = v122;
        *(*(v114 + 7) + 8 * v124) = v136;
        v138 = *(v114 + 2);
        v58 = __OFADD__(v138, 1);
        v139 = v138 + 1;
        if (v58)
        {
          goto LABEL_159;
        }

        *(v114 + 2) = v139;
      }

      ++v115;
      v10 += 16;
      if (v183 == v115)
      {
        goto LABEL_106;
      }
    }

    goto LABEL_157;
  }

LABEL_106:
  v140 = *(v114 + 8);
  v184 = v114 + 64;
  v141 = 1 << v114[32];
  if (v141 < 64)
  {
    v142 = ~(-1 << v141);
  }

  else
  {
    v142 = -1;
  }

  v143 = v142 & v140;
  v183 = (v141 + 63) >> 6;

  v144 = 0;
  while (2)
  {
    v6 = v185;
    do
    {
      while (1)
      {
        if (!v143)
        {
          v10 = v181;
          while (1)
          {
            v145 = v144 + 1;
            if (__OFADD__(v144, 1))
            {
              goto LABEL_156;
            }

            if (v145 >= v183)
            {

              v12 = v194;
              v63 = v199;
              goto LABEL_38;
            }

            v143 = *&v184[8 * v145];
            ++v144;
            if (v143)
            {
              v144 = v145;
              break;
            }
          }
        }

        v146 = __clz(__rbit64(v143));
        v143 &= v143 - 1;
        v147 = (*(v114 + 6) + ((v144 << 10) | (16 * v146)));
        v149 = *v147;
        v148 = v147[1];
        v150 = *(v114 + 2);

        if (!v150)
        {
LABEL_111:

          continue;
        }

        v151 = specialized __RawDictionaryStorage.find<A>(_:)(v149, v148);
        if ((v152 & 1) == 0 || *(*(*(v114 + 7) + 8 * v151) + 16) != 1)
        {
          break;
        }

        if (!*(v114 + 2))
        {
          goto LABEL_111;
        }

        v10 = specialized __RawDictionaryStorage.find<A>(_:)(v149, v148);
        v154 = v153;

        if (v154)
        {
          v163 = *(*(v114 + 7) + 8 * v10);
          if (!*(v163 + 16))
          {
            goto LABEL_161;
          }

          v161 = *(v163 + 40);
          v162 = *(v163 + 32);
          goto LABEL_131;
        }
      }

      if (!*(v114 + 2))
      {
        goto LABEL_111;
      }

      v155 = specialized __RawDictionaryStorage.find<A>(_:)(v149, v148);
      v157 = v156;
    }

    while ((v157 & 1) == 0);
    v203 = *(*(v114 + 7) + 8 * v155);
    swift_bridgeObjectRetain_n();
    v10 = v186;
    specialized MutableCollection<>.sort(by:)(&v203);
    v158 = &v205;
    v186 = v10;
    if (v10)
    {
      goto LABEL_164;
    }

    v159 = *(v203 + 2);
    if (v159)
    {
      v160 = &v203[16 * v159 + 16];
      v161 = *(v160 + 1);
      v162 = *v160;

LABEL_131:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v196 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v196 + 2) + 1, 1, v196);
      }

      v165 = *(v196 + 2);
      v164 = *(v196 + 3);
      if (v165 >= v164 >> 1)
      {
        v196 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v164 > 1), v165 + 1, 1, v196);
      }

      v166 = v196;
      *(v196 + 2) = v165 + 1;
      v167 = &v166[16 * v165];
      *(v167 + 4) = v162;
      *(v167 + 5) = v161;
      continue;
    }

    break;
  }

LABEL_160:
  __break(1u);
LABEL_161:
  __break(1u);
LABEL_162:
  v178 = v10;
LABEL_165:

  __break(1u);
  return result;
}

Swift::Int specialized MutableCollection<>.sort(by:)(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = _minimumMergeRunLength(_:)(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 48;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = *&v2[16 * i + 40];
        v12 = v9;
        v13 = v8;
        do
        {
          if (v11 >= *(v13 - 1))
          {
            break;
          }

          v14 = *v13;
          *v13 = *(v13 - 1);
          *(v13 - 1) = v11;
          *(v13 - 2) = v14;
          v13 -= 2;
        }

        while (!__CFADD__(v12++, 1));
        v8 += 16;
        --v9;
      }
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(double *__dst, double *__src, double *a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[2 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[2 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      if (v6[1] < v4[1])
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 2;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 2;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 2;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[2 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[2 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_24:
    v5 -= 2;
    do
    {
      v17 = v5 + 2;
      if (*(v14 - 1) < *(v6 - 1))
      {
        v19 = v6 - 2;
        if (v17 != v6)
        {
          *v5 = *v19;
        }

        if (v14 <= v4 || (v6 -= 2, v19 <= v7))
        {
          v6 = v19;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      v18 = v14 - 2;
      if (v17 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 2;
      v14 -= 2;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v20 = v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0);
  if (v6 != v4 || v6 >= (v4 + (v20 & 0xFFFFFFFFFFFFFFF0)))
  {
    memmove(v6, v4, 16 * (v20 >> 4));
  }

  return 1;
}