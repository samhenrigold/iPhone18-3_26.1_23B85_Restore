void _s27PhoneCallFlowDelegatePlugin17ContactResolutionC19updateSiriKitIntent04sirijK014contactQueries012hasEmergencyF03app6locale02nlK013sharedGlobals18multicardinalIndex0lJ11EventSender09emergencyfG0yAA013NCRResolvableK0_p_Say0I9Inference0F5QueryVGSb0i3AppG03AppCSg10Foundation6LocaleVAA0aB8NLIntent_pAA06SharedU9Providing_pSiSg0ijC00ijX7Sending_pAA0pfG0CtFZTf4ennnnnnnnnn_nSo012INStartVideobK0C_Tt9g5Tf4nnnnnennnn_n(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  OUTLINED_FUNCTION_66();
  v202 = v25;
  v197 = v26;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v189 = type metadata accessor for ResolvedSiriKitContact();
  OUTLINED_FUNCTION_7();
  v188 = v33;
  __chkstk_darwin(v34);
  OUTLINED_FUNCTION_5_4();
  v36 = OUTLINED_FUNCTION_13(v35);
  type metadata accessor for PhoneError(v36);
  OUTLINED_FUNCTION_23_1();
  __chkstk_darwin(v37);
  OUTLINED_FUNCTION_16_2();
  OUTLINED_FUNCTION_9_3();
  __chkstk_darwin(v38);
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_13(v39);
  type metadata accessor for RecommenderType();
  OUTLINED_FUNCTION_7();
  __chkstk_darwin(v40);
  OUTLINED_FUNCTION_5_4();
  OUTLINED_FUNCTION_13(v41);
  type metadata accessor for SearchSuggestedContacts();
  OUTLINED_FUNCTION_7();
  __chkstk_darwin(v42);
  OUTLINED_FUNCTION_5_4();
  OUTLINED_FUNCTION_13(v43);
  v44 = type metadata accessor for ContactResolverDomain();
  v45 = OUTLINED_FUNCTION_21(v44);
  __chkstk_darwin(v45);
  OUTLINED_FUNCTION_5_4();
  OUTLINED_FUNCTION_13(v46);
  v195 = type metadata accessor for ContactActionType();
  OUTLINED_FUNCTION_7();
  v194 = v47;
  __chkstk_darwin(v48);
  OUTLINED_FUNCTION_16_2();
  OUTLINED_FUNCTION_9_3();
  __chkstk_darwin(v49);
  OUTLINED_FUNCTION_13_5();
  OUTLINED_FUNCTION_9_3();
  __chkstk_darwin(v50);
  OUTLINED_FUNCTION_91();
  v200 = v51;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference27ContactHandleTypePreferenceVSgMd, &_s13SiriInference27ContactHandleTypePreferenceVSgMR);
  v53 = OUTLINED_FUNCTION_21(v52);
  __chkstk_darwin(v53);
  OUTLINED_FUNCTION_16_2();
  OUTLINED_FUNCTION_9_3();
  __chkstk_darwin(v54);
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_13(v55);
  type metadata accessor for Locale();
  OUTLINED_FUNCTION_7();
  v198 = v57;
  v199 = v56;
  __chkstk_darwin(v56);
  OUTLINED_FUNCTION_16_2();
  OUTLINED_FUNCTION_9_3();
  __chkstk_darwin(v58);
  OUTLINED_FUNCTION_91();
  v203 = v59;
  v60 = OUTLINED_FUNCTION_15_0();
  v61 = type metadata accessor for ContactResolverConfigHashable(v60);
  OUTLINED_FUNCTION_23_1();
  __chkstk_darwin(v62);
  OUTLINED_FUNCTION_12_5();
  v65 = (v63 - v64);
  __chkstk_darwin(v66);
  OUTLINED_FUNCTION_91();
  v196 = v67;
  v206[3] = a24;
  v206[4] = a25;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v206);
  OUTLINED_FUNCTION_40();
  (*(v69 + 16))();
  type metadata accessor for ContactResolution();
  if (v28)
  {
    ObjectType = swift_getObjectType();
    dynamic_cast_existential_1_unconditional(v32, ObjectType, &protocol descriptor for CallingIntent);
    v71 = one-time initialization token for siriPhone;
    v72 = v32;
    if (v71 != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v73 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_9_0(v73, static Logger.siriPhone);
    v74 = Logger.logObject.getter();
    v75 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_43(v75))
    {
      *OUTLINED_FUNCTION_65_0() = 0;
      OUTLINED_FUNCTION_30_3();
      _os_log_impl(v76, v77, v78, v79, v80, 2u);
      OUTLINED_FUNCTION_5_7();
    }

    v81 = [objc_allocWithZone(HKHealthStore) init];
    [objc_allocWithZone(HKMedicalIDStore) initWithHealthStore:v81];

    v82 = type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for HKMedicalIDStore, HKMedicalIDStore_ptr);
    OUTLINED_FUNCTION_52_7(v82, &protocol witness table for HKMedicalIDStore);
    v83 = OUTLINED_FUNCTION_93_3();
    v84(v83);

    __swift_destroy_boxed_opaque_existential_1(&v205);
    goto LABEL_60;
  }

  if (_s27PhoneCallFlowDelegatePlugin17ContactResolutionC010shouldSkipfG033_4B58522B746884F3C9E10F5EDE9E49B18nlIntent02skT014contactQueriesSbAA0aB8NLIntent_p_AA013NCRResolvableT0_pSay13SiriInference0F5QueryVGSgtFZTf4nenn_nSo012INStartAudiobT0C_Tt2g5Tf4enn_nTm(boxed_opaque_existential_1, v32, v30, a24, a25, outlined bridged method (pb) of @objc INStartVideoCallIntent.contacts.getter))
  {
LABEL_60:
    __swift_destroy_boxed_opaque_existential_1(v206);
    OUTLINED_FUNCTION_65();
    return;
  }

  v85 = _swiftEmptyArrayStorage;
  if (v197)
  {
    v86 = App.appIdentifier.getter();
    if (v87)
    {
      v88 = v86;
      v89 = v87;
      OUTLINED_FUNCTION_76_3();
      v85 = v90;
      v92 = v90[2];
      v91 = v90[3];
      if (v92 >= v91 >> 1)
      {
        OUTLINED_FUNCTION_76(v91);
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v85 = v186;
      }

      v85[2] = v92 + 1;
      v93 = &v85[2 * v92];
      v93[4] = v88;
      v93[5] = v89;
    }

    else
    {
      v85 = _swiftEmptyArrayStorage;
    }
  }

  v201 = v85;
  if (one-time initialization token for emptyStartCallIntent != -1)
  {
    OUTLINED_FUNCTION_6_30(&one-time initialization token for emptyStartCallIntent);
  }

  v94 = [static PhoneCallIntentClassNames.emptyStartCallIntent _className];
  v95 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v97 = v96;

  v98 = v202[3];
  v99 = v202[4];
  __swift_project_boxed_opaque_existential_1(v202, v98);
  (*(v99 + 8))(&v205, v98, v99);
  OUTLINED_FUNCTION_54_11(&v205);
  DeviceState.siriInputLocale.getter();
  v100 = v32;

  outlined bridged method (ob) of @objc INIntent.intentId.getter(v100);
  OUTLINED_FUNCTION_98_2();
  if (v103)
  {
    v104 = 0xE000000000000000;
  }

  else
  {
    v104 = v101;
  }

  *v65 = v102;
  v65[1] = v104;
  v65[2] = v95;
  v65[3] = v97;
  v105 = v65;
  v106 = *(v198 + 16);
  v106(v105 + *(v61 + 24), v203, v199);
  *(v105 + *(v61 + 28)) = v201;

  OUTLINED_FUNCTION_80_2();
  static ContactResolverConfigHashable.chooseHandleTypePreference(skIntent:)(v107, v108);
  (*(v194 + 104))(v191, enum case for ContactActionType.phoneCall(_:), v195);
  (*(v194 + 32))(v200, v191, v195);
  v106(v190, v203, v199);
  static ContactResolverDomain.phone.getter();
  outlined init with copy of ContactHandleTypePreference?(v97, v192);
  OUTLINED_FUNCTION_69_4();
  v109();
  OUTLINED_FUNCTION_50_9();
  v110();
  ContactResolverConfig.init(intentId:intentTypeName:locale:logRunTimeData:processNLv3SpeechAlternatives:bundleIds:domainsToSearchForHistory:searchSuggestedContacts:handleTypePreference:recommender:customGenerator:)();
  (*(v194 + 16))(v193, v200, v195);
  ContactResolverConfig.actionType.setter();
  (*(v194 + 8))(v200, v195);
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v97, &_s13SiriInference27ContactHandleTypePreferenceVSgMd, &_s13SiriInference27ContactHandleTypePreferenceVSgMR);
  (*(v198 + 8))(v203, v199);
  outlined init with take of ContactResolverConfigHashable(v105, v196);
  __swift_destroy_boxed_opaque_existential_1(&v205);
  v111 = v202[4];
  __swift_project_boxed_opaque_existential_1(v202, v202[3]);
  v112 = OUTLINED_FUNCTION_20_17();
  v113(v112);
  OUTLINED_FUNCTION_30_12();
  OUTLINED_FUNCTION_94_2();
  v115 = v114();
  if (v111)
  {
    OUTLINED_FUNCTION_121_0();

    __swift_destroy_boxed_opaque_existential_1(&v205);
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v116 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_9_0(v116, static Logger.siriPhone);
    swift_errorRetain();
    v117 = Logger.logObject.getter();
    static os_log_type_t.error.getter();
    OUTLINED_FUNCTION_116_0();
    if (OUTLINED_FUNCTION_115_1())
    {
      OUTLINED_FUNCTION_42();
      *&v205 = OUTLINED_FUNCTION_62();
      OUTLINED_FUNCTION_110_0(4.8149e-34);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v118 = String.init<A>(describing:)();
      getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v118, v119, &v205);
      OUTLINED_FUNCTION_113_0();
      *(v97 + 4) = v194 + 8;
      OUTLINED_FUNCTION_21_12();
      _os_log_impl(v120, v121, v122, v123, v124, 0xCu);
      OUTLINED_FUNCTION_22_8();
      OUTLINED_FUNCTION_52();
    }

    OUTLINED_FUNCTION_108_1();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    OUTLINED_FUNCTION_2_4();
    v125 = type metadata accessor for InferenceError();
    if (OUTLINED_FUNCTION_65_6(v125))
    {
      dispatch thunk of InferenceError.log()();
    }

    else
    {
      getpid();
      OUTLINED_FUNCTION_108_1();
      String.init<A>(describing:)();
      String._bridgeToObjectiveC()();
      OUTLINED_FUNCTION_105_1();

      OUTLINED_FUNCTION_91_3();
    }

    specialized INPersonContainingIntent.clearContactsSlotMatches()(outlined bridged method (pb) of @objc INStartVideoCallIntent.contacts.getter, INStartVideoCallIntent.overwriteContacts(newContacts:));

    goto LABEL_59;
  }

  v126 = v115;
  OUTLINED_FUNCTION_32_10();
  v127 = [v100 typeName];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v129 = v128;

  _s27PhoneCallFlowDelegatePlugin22SharedGlobalsProviding_pWOcTm_0(v206, &v205);
  OUTLINED_FUNCTION_106();
  v130 = swift_allocObject();
  *(v130 + 16) = v197;
  outlined init with take of SPHConversation(&v205, v130 + 24);
  *(v130 + 64) = v126;

  OUTLINED_FUNCTION_49_7();
  v135 = OUTLINED_FUNCTION_66_7(v131, v132, v133, v134);
  OUTLINED_FUNCTION_85_1(v135);

  v136 = *(v126 + 16);
  if (v136)
  {
    OUTLINED_FUNCTION_114_3(_swiftEmptyArrayStorage);
    v204 = *(v188 + 16);
    OUTLINED_FUNCTION_19_1();
    v138 = v126 + v137;
    v129 = *(v188 + 72);
    v126 = v189;
    do
    {
      v204(v187, v138, v189);
      ResolvedSiriKitContact.person.getter();
      (*(v188 + 8))(v187, v189);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      OUTLINED_FUNCTION_107_0();
      OUTLINED_FUNCTION_104();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v138 += v129;
      --v136;
    }

    while (v136);

    v139 = v205;
  }

  else
  {

    v139 = _swiftEmptyArrayStorage;
  }

  specialized Array.count.getter(v139);
  OUTLINED_FUNCTION_121_0();
  if (v140)
  {
    static ContactResolution.dedupeContacts(contacts:)(v139);
    OUTLINED_FUNCTION_125_1();

    v139 = v126;
  }

  if (a21)
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v141 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_9_0(v141, static Logger.siriPhone);
    v142 = Logger.logObject.getter();
    v143 = static os_log_type_t.debug.getter();
    if (!OUTLINED_FUNCTION_10_0(v143))
    {
      goto LABEL_58;
    }

    goto LABEL_57;
  }

  if (!outlined bridged method (pb) of @objc INStartVideoCallIntent.contacts.getter(v129))
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v155 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_9_0(v155, static Logger.siriPhone);
    v142 = Logger.logObject.getter();
    v156 = static os_log_type_t.debug.getter();
    if (!OUTLINED_FUNCTION_10_0(v156))
    {
      goto LABEL_58;
    }

LABEL_57:
    v157 = OUTLINED_FUNCTION_65_0();
    OUTLINED_FUNCTION_103(v157);
    OUTLINED_FUNCTION_21_12();
    _os_log_impl(v158, v159, v160, v161, v162, 2u);
    OUTLINED_FUNCTION_52();
LABEL_58:

    INStartVideoCallIntent.overwriteContacts(newContacts:)(v139);

LABEL_59:
    OUTLINED_FUNCTION_0_46();
    _s27PhoneCallFlowDelegatePlugin29ContactResolverConfigHashableVWOhTm_0();
    goto LABEL_60;
  }

  v144 = OUTLINED_FUNCTION_125_1();
  if (!specialized Array.count.getter(v144))
  {
    goto LABEL_48;
  }

  v145 = v139 & 0xC000000000000001;
  specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v139 & 0xC000000000000001) == 0, v139);
  if ((v139 & 0xC000000000000001) != 0)
  {
    v146 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    v146 = *(v139 + 32);
  }

  v147 = v146;
  OUTLINED_FUNCTION_82_2();
  if (v139 < 0 || specialized Array.count.getter(v126) <= v145 || (specialized Array.count.getter(v139), v148 = OUTLINED_FUNCTION_40_0(), specialized Array.count.getter(v148) < v145))
  {

LABEL_48:
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v149 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_9_0(v149, static Logger.siriPhone);
    v150 = Logger.logObject.getter();
    v151 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_16_4(v151))
    {
      v152 = OUTLINED_FUNCTION_65_0();
      OUTLINED_FUNCTION_102(v152);
      OUTLINED_FUNCTION_47_1(&dword_0, v153, v154, "#ContactResolution: overwriting contacts slot");
      OUTLINED_FUNCTION_35();
    }

    INStartVideoCallIntent.overwriteContacts(newContacts:)(v139);
    goto LABEL_53;
  }

  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v163 = type metadata accessor for Logger();
  __swift_project_value_buffer(v163, static Logger.siriPhone);
  v164 = Logger.logObject.getter();
  v165 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_43(v165))
  {
    v166 = OUTLINED_FUNCTION_42();
    OUTLINED_FUNCTION_57_8(v166, 3.852e-34);
    OUTLINED_FUNCTION_30_3();
    _os_log_impl(v167, v168, v169, v170, v171, 0xCu);
    OUTLINED_FUNCTION_5_7();
  }

  specialized Array.count.getter(v126);
  OUTLINED_FUNCTION_82_2();
  if (v172 <= v164)
  {
    v177 = OUTLINED_FUNCTION_26_13();
    OUTLINED_FUNCTION_53_11(v177);
    OUTLINED_FUNCTION_5_34();
    _s27PhoneCallFlowDelegatePlugin29ContactResolverConfigHashableVWOhTm_0();
    _s27PhoneCallFlowDelegatePlugin29ContactResolverConfigHashableVWOhTm_0();
    v178 = Logger.logObject.getter();
    v179 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_21_8(v179))
    {
      v180 = OUTLINED_FUNCTION_86_1();
      OUTLINED_FUNCTION_58_3(v180, 3.8521e-34);
      *(v180 + 14) = specialized Array.count.getter(v126);
      OUTLINED_FUNCTION_34_5();
      _os_log_impl(v181, v182, v183, v184, v185, 0x16u);
      OUTLINED_FUNCTION_26_0(v180);
    }

    INStartVideoCallIntent.overwriteContacts(newContacts:)(v139);
    goto LABEL_53;
  }

  v173 = v147;
  isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (v126 >> 62 || (isUniquelyReferenced_nonNull_bridgeObject & 1) == 0)
  {
    v126 = specialized _ArrayBuffer._consumeAndCreateNew()();
  }

  if (*(&dword_10 + (v126 & 0xFFFFFFFFFFFFFF8)) > v164)
  {
    v175 = *(&stru_20.cmd + 8 * v164 + (v126 & 0xFFFFFFFFFFFFFF8));
    *(&stru_20.cmd + 8 * v164 + (v126 & 0xFFFFFFFFFFFFFF8)) = v173;

    INStartVideoCallIntent.overwriteContacts(newContacts:)(v176);

LABEL_53:

    OUTLINED_FUNCTION_0_46();
    _s27PhoneCallFlowDelegatePlugin29ContactResolverConfigHashableVWOhTm_0();

    goto LABEL_60;
  }

  __break(1u);
}

uint64_t outlined init with copy of ContactHandleTypePreference?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference27ContactHandleTypePreferenceVSgMd, &_s13SiriInference27ContactHandleTypePreferenceVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t _s27PhoneCallFlowDelegatePlugin29ContactResolverConfigHashableVWOhTm_0()
{
  v1 = OUTLINED_FUNCTION_2_4();
  v2(v1);
  OUTLINED_FUNCTION_23_1();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t dynamic_cast_existential_1_unconditional(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_conformsToProtocol2();
  if (result)
  {
    return a1;
  }

  __break(1u);
  return result;
}

uint64_t objectdestroy_7Tm()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  OUTLINED_FUNCTION_106();

  return _swift_deallocObject(v1, v2, v3);
}

id partial apply for closure #1 in closure #1 in static EmergencyContactResolution.fetchEmergencyContacts(sirikitIntent:locale:medicalIDStore:_:)@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = static EmergencyContactResolution.makeINPerson(emergencyContact:locale:)(*a1, *(v2 + 16));
  *a2 = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_26_13()
{
  **(v1 - 400) = v0;

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_31_7()
{

  return ContactResolverConfig.init(intentId:intentTypeName:locale:logRunTimeData:processNLv3SpeechAlternatives:bundleIds:domainsToSearchForHistory:searchSuggestedContacts:handleTypePreference:recommender:customGenerator:)();
}

char *OUTLINED_FUNCTION_39_11()
{
  *(v5 - 456) = v0;
  *v1 = v0;
  v1[1] = v2;
  *(v5 - 440) = v3;
  v1[2] = v3;
  v1[3] = v4;
  return v1 + *(*(v5 - 232) + 24);
}

uint64_t OUTLINED_FUNCTION_53_11(uint64_t a1)
{
  v3 = *(v1 - 416);

  return PhoneError.logged()(v3);
}

void OUTLINED_FUNCTION_55_9()
{
  v2 = *(v0 + 16) + 1;

  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 1);
}

uint64_t OUTLINED_FUNCTION_58_3(uint64_t result, float a2)
{
  *result = a2;
  *(result + 4) = v2;
  *(result + 12) = 2048;
  return result;
}

uint64_t OUTLINED_FUNCTION_59_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 - 392) = a8;
  *(v8 - 208) = a7;
  *(v8 - 224) = a5;
  *(v8 - 248) = a4;

  return type metadata accessor for ResolvedSiriKitContact();
}

void OUTLINED_FUNCTION_64_4(uint64_t a1@<X8>)
{
  *(v2 - 96) = a1;

  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
}

uint64_t OUTLINED_FUNCTION_65_6(uint64_t a1)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_66_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return SiriKitEvent.__allocating_init(stateType:taskType:statusReason:_:)();
}

uint64_t OUTLINED_FUNCTION_85_1(uint64_t a1)
{

  return dispatch thunk of SiriKitEventSending.send(_:)();
}

uint64_t OUTLINED_FUNCTION_91_3()
{

  return SimulateCrash();
}

uint64_t OUTLINED_FUNCTION_107_0()
{

  return specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
}

uint64_t OUTLINED_FUNCTION_108_1()
{
  *(v1 - 168) = v0;

  return swift_errorRetain();
}

uint64_t OUTLINED_FUNCTION_109_0(uint64_t a1)
{
  *(a1 + 16) = *(v2 - 248);
  outlined init with take of SPHConversation((v2 - 168), a1 + 24);
  *(a1 + 64) = v1;
}

uint64_t OUTLINED_FUNCTION_111_1(uint64_t a1, uint64_t a2)
{
}

void *OUTLINED_FUNCTION_112_1()
{

  return static SiriKitEventSender.current.getter();
}

uint64_t OUTLINED_FUNCTION_113_0()
{
}

uint64_t OUTLINED_FUNCTION_114_3@<X0>(uint64_t a1@<X8>)
{
  *(v1 - 168) = a1;

  return specialized ContiguousArray.reserveCapacity(_:)();
}

BOOL OUTLINED_FUNCTION_115_1()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t OUTLINED_FUNCTION_116_0()
{
}

void OUTLINED_FUNCTION_119_2()
{
  v5 = *(v4 - 224);
  *(v5 + 16) = v2;
  v6 = v5 + 16 * v3;
  *(v6 + 32) = v0;
  *(v6 + 40) = v1;
}

uint64_t OUTLINED_FUNCTION_137_0()
{
  v2 = *(v0 - 192);
  v3 = *(v0 - 344);

  return outlined init with copy of ContactHandleTypePreference?(v2, v3);
}

uint64_t *OUTLINED_FUNCTION_138_0@<X0>(uint64_t a1@<X8>)
{
  *(v3 - 240) = a1;
  *(v3 - 104) = v2;
  *(v3 - 96) = v1;

  return __swift_allocate_boxed_opaque_existential_1((v3 - 128));
}

uint64_t OUTLINED_FUNCTION_140_0()
{

  return specialized _ArrayBuffer._getElementSlowPath(_:)();
}

uint64_t ContactResolverConfigHashable.init(intentTypeName:locale:bundleIds:siriKitIntent:sharedGlobals:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X5>, void *a7@<X6>, uint64_t *a8@<X8>)
{
  v94 = a7;
  v78 = a6;
  v98 = a4;
  v91 = type metadata accessor for RecommenderType();
  OUTLINED_FUNCTION_7();
  v89 = v13;
  __chkstk_darwin(v14);
  OUTLINED_FUNCTION_4();
  v90 = v16 - v15;
  OUTLINED_FUNCTION_15_0();
  type metadata accessor for SearchSuggestedContacts();
  OUTLINED_FUNCTION_7();
  v85 = v18;
  v86 = v17;
  __chkstk_darwin(v17);
  OUTLINED_FUNCTION_4();
  v87 = v20 - v19;
  OUTLINED_FUNCTION_15_0();
  v21 = type metadata accessor for ContactResolverDomain();
  __chkstk_darwin(v21 - 8);
  OUTLINED_FUNCTION_4();
  v84 = v23 - v22;
  OUTLINED_FUNCTION_15_0();
  v24 = type metadata accessor for Locale();
  OUTLINED_FUNCTION_7();
  v26 = v25;
  __chkstk_darwin(v27);
  OUTLINED_FUNCTION_4();
  v82 = v29 - v28;
  OUTLINED_FUNCTION_15_0();
  v79 = type metadata accessor for ContactActionType();
  OUTLINED_FUNCTION_7();
  v77 = v30;
  __chkstk_darwin(v31);
  OUTLINED_FUNCTION_12_5();
  v80 = v32 - v33;
  __chkstk_darwin(v34);
  v74 = &v70 - v35;
  __chkstk_darwin(v36);
  v81 = &v70 - v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference27ContactHandleTypePreferenceVSgMd, &_s13SiriInference27ContactHandleTypePreferenceVSgMR);
  __chkstk_darwin(v38 - 8);
  OUTLINED_FUNCTION_12_5();
  v75 = v39 - v40;
  __chkstk_darwin(v41);
  v43 = &v70 - v42;
  ObjectType = swift_getObjectType();
  v45 = a5;
  v46 = outlined bridged method (ob) of @objc INIntent.intentId.getter(v45);
  if (v47)
  {
    v48 = v46;
  }

  else
  {
    v48 = 0;
  }

  if (v47)
  {
    v49 = v47;
  }

  else
  {
    v49 = 0xE000000000000000;
  }

  v73 = v48;
  *a8 = v48;
  a8[1] = v49;
  v92 = a1;
  a8[2] = a1;
  a8[3] = a2;
  v50 = type metadata accessor for ContactResolverConfigHashable(0);
  v51 = *(v50 + 24);
  v88 = v26;
  v52 = *(v26 + 16);
  v97 = v24;
  v71 = v52;
  v52(a8 + v51, a3, v24);
  v53 = *(v50 + 28);
  v83 = a8;
  *(a8 + v53) = v98;
  v72 = v49;

  v93 = a2;

  v96 = v43;
  v54 = v78;
  static ContactResolverConfigHashable.chooseHandleTypePreference(skIntent:)(v78, v43);
  v55 = (*(*(v54 + 16) + 8))(ObjectType);
  v95 = a3;
  v76 = v45;
  if (v55 == 2)
  {
    v56 = swift_getObjectType();
    v58 = &enum case for ContactActionType.facetimeVideo(_:);
    if (dynamic_cast_existential_1_conditional(v45, v56, &protocol descriptor for CallingIntent))
    {
      v59 = v57;
      v60 = swift_getObjectType();
      v61 = *(v59 + 24);
      v62 = v45;
      v63 = v61(v60, v59);

      if (v63 == 1)
      {
        v58 = &enum case for ContactActionType.facetimeAudio(_:);
      }
    }

    a3 = v95;
  }

  else
  {
    v58 = &enum case for ContactActionType.phoneCall(_:);
  }

  v64 = *v58;
  v65 = v77;
  v66 = v74;
  v67 = v79;
  (*(v77 + 104))(v74, v64, v79);
  v68 = v81;
  (*(v65 + 32))(v81, v66, v67);
  v71(v82, a3, v97);
  static ContactResolverDomain.phone.getter();
  outlined init with copy of ContactHandleTypePreference?(v96, v75);
  (*(v85 + 104))(v87, enum case for SearchSuggestedContacts.ifOnlyMatchIsSuggested(_:), v86);
  (*(v89 + 104))(v90, enum case for RecommenderType.mlRecommender(_:), v91);
  ContactResolverConfig.init(intentId:intentTypeName:locale:logRunTimeData:processNLv3SpeechAlternatives:bundleIds:domainsToSearchForHistory:searchSuggestedContacts:handleTypePreference:recommender:customGenerator:)();
  (*(v65 + 16))(v80, v68, v67);
  ContactResolverConfig.actionType.setter();

  __swift_destroy_boxed_opaque_existential_1(v94);
  (*(v88 + 8))(v95, v97);
  (*(v65 + 8))(v68, v67);
  return outlined destroy of ContactHandleTypePreference?(v96);
}

uint64_t ContactResolverConfigHashable.config.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ContactResolverConfigHashable(0) + 32);
  v4 = type metadata accessor for ContactResolverConfig();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ContactResolverConfigHashable.description.getter()
{
  v1 = type metadata accessor for ContactActionType();
  OUTLINED_FUNCTION_7();
  v3 = v2;
  __chkstk_darwin(v4);
  OUTLINED_FUNCTION_4();
  v7 = v6 - v5;
  v24[0] = 0;
  v24[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(115);
  v25 = 0;
  v26 = 0xE000000000000000;
  v8._countAndFlagsBits = 0xD000000000000028;
  v8._object = 0x800000000045ACE0;
  String.append(_:)(v8);
  Hasher.init(_seed:)();
  ContactResolverConfigHashable.hash(into:)(v24);
  v24[0] = Hasher._finalize()();
  v9._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v9);

  v10._countAndFlagsBits = 0x746E65746E69202CLL;
  v10._object = 0xEB000000003D6449;
  String.append(_:)(v10);
  String.append(_:)(*v0);
  v11._object = 0x800000000045AD10;
  v11._countAndFlagsBits = 0xD000000000000011;
  String.append(_:)(v11);
  String.append(_:)(v0[1]);
  v12._countAndFlagsBits = 0x656C61636F6C202CLL;
  v12._object = 0xE90000000000003DLL;
  String.append(_:)(v12);
  type metadata accessor for ContactResolverConfigHashable(0);
  type metadata accessor for Locale();
  OUTLINED_FUNCTION_2_44();
  lazy protocol witness table accessor for type Locale and conformance Locale(v13, v14, &protocol conformance descriptor for Locale);
  v15._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v15);

  v16._countAndFlagsBits = 0x656C646E7562202CLL;
  v16._object = 0xEC0000003D736449;
  String.append(_:)(v16);
  v17._countAndFlagsBits = Array.description.getter();
  String.append(_:)(v17);

  v18._countAndFlagsBits = 0x6E6F69746361202CLL;
  v18._object = 0xED00003D65707954;
  String.append(_:)(v18);
  ContactResolverConfig.actionType.getter();
  OUTLINED_FUNCTION_3_35();
  lazy protocol witness table accessor for type Locale and conformance Locale(v19, v20, &protocol conformance descriptor for ContactActionType);
  v21._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v21);

  (*(v3 + 8))(v7, v1);
  v22._countAndFlagsBits = 41;
  v22._object = 0xE100000000000000;
  String.append(_:)(v22);
  return v25;
}

Swift::Int ContactResolverConfigHashable.hashValue.getter()
{
  Hasher.init(_seed:)();
  ContactResolverConfigHashable.hash(into:)(v1);
  return Hasher._finalize()();
}

uint64_t ContactResolverConfigHashable.isFaceTime.getter()
{
  v0 = type metadata accessor for ContactActionType();
  OUTLINED_FUNCTION_7();
  v2 = v1;
  __chkstk_darwin(v3);
  OUTLINED_FUNCTION_12_5();
  v6 = v4 - v5;
  __chkstk_darwin(v7);
  v9 = &v15 - v8;
  type metadata accessor for ContactResolverConfigHashable(0);
  ContactResolverConfig.actionType.getter();
  v10 = *(v2 + 104);
  v10(v6, enum case for ContactActionType.facetimeAudio(_:), v0);
  v11 = specialized == infix<A>(_:_:)(v9, v6);
  v12 = *(v2 + 8);
  v12(v6, v0);
  v12(v9, v0);
  if (v11)
  {
    v13 = 1;
  }

  else
  {
    ContactResolverConfig.actionType.getter();
    v10(v6, enum case for ContactActionType.facetimeVideo(_:), v0);
    v13 = specialized == infix<A>(_:_:)(v9, v6);
    v12(v6, v0);
    v12(v9, v0);
  }

  return v13 & 1;
}

uint64_t static ContactResolverConfigHashable.chooseHandleTypePreference(skIntent:)@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  ObjectType = swift_getObjectType();
  if ((*(*(a2 + 16) + 8))(ObjectType) == 2)
  {
    v6 = 1;
  }

  else
  {
    static ContactHandleTypePreference.requirePhone.getter();
    v6 = 0;
  }

  v7 = type metadata accessor for ContactHandleTypePreference();

  return __swift_storeEnumTagSinglePayload(a3, v6, 1, v7);
}

uint64_t ContactResolverConfigHashable.hash(into:)(uint64_t a1)
{
  v3 = type metadata accessor for ContactActionType();
  OUTLINED_FUNCTION_7();
  v5 = v4;
  __chkstk_darwin(v6);
  OUTLINED_FUNCTION_4();
  v9 = v8 - v7;
  String.hash(into:)();
  String.hash(into:)();
  v10 = type metadata accessor for ContactResolverConfigHashable(0);
  type metadata accessor for Locale();
  OUTLINED_FUNCTION_2_44();
  lazy protocol witness table accessor for type Locale and conformance Locale(v11, v12, &protocol conformance descriptor for Locale);
  dispatch thunk of Hashable.hash(into:)();
  specialized Array<A>.hash(into:)(a1, *(v1 + *(v10 + 28)));
  ContactResolverConfig.actionType.getter();
  OUTLINED_FUNCTION_3_35();
  lazy protocol witness table accessor for type Locale and conformance Locale(v13, v14, &protocol conformance descriptor for ContactActionType);
  dispatch thunk of Hashable.hash(into:)();
  return (*(v5 + 8))(v9, v3);
}

BOOL static ContactResolverConfigHashable.== infix(_:_:)()
{
  Hasher.init(_seed:)();
  ContactResolverConfigHashable.hash(into:)(v2);
  v0 = Hasher._finalize()();
  Hasher.init(_seed:)();
  ContactResolverConfigHashable.hash(into:)(v2);
  return v0 == Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ContactResolverConfigHashable(uint64_t a1)
{
  Hasher.init(_seed:)();
  ContactResolverConfigHashable.hash(into:)(v2);
  return Hasher._finalize()();
}

uint64_t outlined destroy of ContactHandleTypePreference?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference27ContactHandleTypePreferenceVSgMd, &_s13SiriInference27ContactHandleTypePreferenceVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void specialized Array<A>.hash(into:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  Hasher._combine(_:)(v3);
  if (v3)
  {
    v4 = a2 + 40;
    do
    {

      String.hash(into:)();

      v4 += 16;
      --v3;
    }

    while (v3);
  }
}

{
  v3 = *(a2 + 16);
  Hasher._combine(_:)(v3);
  if (v3)
  {
    v4 = *(type metadata accessor for ContactQuery() - 8);
    v5 = a2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v6 = *(v4 + 72);
    lazy protocol witness table accessor for type Locale and conformance Locale(&lazy protocol witness table cache variable for type ContactQuery and conformance ContactQuery, &type metadata accessor for ContactQuery, &protocol conformance descriptor for ContactQuery);
    do
    {
      dispatch thunk of Hashable.hash(into:)();
      v5 += v6;
      --v3;
    }

    while (v3);
  }
}

void type metadata completion function for ContactResolverConfigHashable(uint64_t a1)
{
  type metadata accessor for Locale();
  if (v1 <= 0x3F)
  {
    type metadata accessor for [String]();
    if (v2 <= 0x3F)
    {
      type metadata accessor for ContactResolverConfig();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata accessor for [String]()
{
  if (!lazy cache variable for type metadata for [String])
  {
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for [String]);
    }
  }
}

uint64_t lazy protocol witness table accessor for type Locale and conformance Locale(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t static ContactSlotResolver.makeMulticardinalResolver<A>(multicardinalIndex:rchFlowContext:sharedGlobals:)(uint64_t a1, char a2, uint64_t a3, void *a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  type metadata accessor for AnyIntentResolver(255, a7, a3, a4);
  type metadata accessor for _ContiguousArrayStorage();
  swift_allocObject();
  v15 = static Array._adoptStorage(_:count:)();
  v17 = v16;
  outlined init with copy of SignalProviding(a6, v31);
  v18 = *(a8 + 8);
  default argument 1 of EmergencyContactSlotResolver.init(sharedGlobals:medicalIDStore:)(v30);
  BurstNotificationSearchManager.init(sharedGlobals:voicemailFinder:)(v31, v30, v32);
  v19 = OUTLINED_FUNCTION_2_45();
  v22 = type metadata accessor for EmergencyContactSlotResolver(v19, v20, v18, v21);
  OUTLINED_FUNCTION_0_47(v22);
  SKIntentResolver.toAnyIntentResolver()(v8, v17);
  (*(*(v8 - 8) + 8))(v32, v8);
  v23 = OUTLINED_FUNCTION_2_45();
  v26 = type metadata accessor for SiriInferenceContactSlotResolver(v23, v24, a8, v25);
  outlined init with copy of SignalProviding(a6, v32);
  *&v32[0] = SiriInferenceContactSlotResolver.__allocating_init(rchFlowContext:sharedGlobals:updateStrategy:)(a3, a4, a5, v32);
  v27 = a5;

  v28 = a4;
  OUTLINED_FUNCTION_1_57();
  SKIntentResolver.toAnyIntentResolver()(v26, v17 + 8);

  type metadata accessor for Array();
  static SKIntentResolverChain.firstHit<A>(_:)(v15, a7);
}

uint64_t static ContactSlotResolver.make<A>(rchFlowContext:sharedGlobals:)(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  type metadata accessor for AnyIntentResolver(255, a5, a3, a4);
  type metadata accessor for _ContiguousArrayStorage();
  swift_allocObject();
  v13 = static Array._adoptStorage(_:count:)();
  v15 = v14;
  outlined init with copy of SignalProviding(a4, v29);
  v16 = *(a6 + 8);
  default argument 1 of EmergencyContactSlotResolver.init(sharedGlobals:medicalIDStore:)(v28);
  BurstNotificationSearchManager.init(sharedGlobals:voicemailFinder:)(v29, v28, v30);
  v17 = OUTLINED_FUNCTION_2_45();
  v20 = type metadata accessor for EmergencyContactSlotResolver(v17, v18, v16, v19);
  OUTLINED_FUNCTION_0_47(v20);
  SKIntentResolver.toAnyIntentResolver()(v6, v15);
  (*(*(v6 - 8) + 8))(v30, v6);
  v21 = OUTLINED_FUNCTION_2_45();
  v24 = type metadata accessor for SiriInferenceContactSlotResolver(v21, v22, a6, v23);
  outlined init with copy of SignalProviding(a4, v30);
  variable initialization expression of IdentifyIncomingCallerDirectAction.handleType();
  *&v30[0] = SiriInferenceContactSlotResolver.__allocating_init(rchFlowContext:sharedGlobals:updateStrategy:)(a1, a2, a3, v30);
  v25 = a3;

  v26 = a2;
  OUTLINED_FUNCTION_1_57();
  SKIntentResolver.toAnyIntentResolver()(v24, v15 + 8);

  type metadata accessor for Array();
  static SKIntentResolverChain.firstHit<A>(_:)(v13, a5);
}

void static ContactsSlotTemplating.isMissingMeCardCase(intent:)()
{
  OUTLINED_FUNCTION_66();
  v2 = (*(*(v0 + 8) + 8))(v1, *(v0 + 8));
  v3 = v2;
  if (!v2)
  {
    v9 = 0;
    v11 = 0;
LABEL_8:
    v7 = 0;
    goto LABEL_9;
  }

  if (!specialized Array.count.getter(v2))
  {

    v9 = 0;
    v11 = 0;
    LODWORD(v3) = 0;
    goto LABEL_8;
  }

  v4 = OUTLINED_FUNCTION_3_36();
  specialized Array._checkSubscript(_:wasNativeTypeChecked:)(v4, v5, v3);
  if ((v3 & 0xC000000000000001) != 0)
  {
    v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    v6 = *(v3 + 32);
  }

  v7 = v6;

  LODWORD(v3) = [v7 isMe];
  v8 = [v7 displayName];
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

LABEL_9:
  specialized Optional<A>.isNilOrEmpty.getter(v9, v11);

  if (!v7)
  {
LABEL_13:
    v13 = 0;
    goto LABEL_14;
  }

  v12 = [v7 personHandle];
  v13 = v12;
  if (v12)
  {
    v14 = [v12 label];

    if (v14)
    {
      v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v16 = v15;

      goto LABEL_15;
    }

    goto LABEL_13;
  }

LABEL_14:
  v16 = 0;
LABEL_15:
  specialized Optional<A>.isNilOrEmpty.getter(v13, v16);

  if (v3)
  {
    v17 = OUTLINED_FUNCTION_55();
    INPersonContainingIntent.hasSiriMatches.getter(v17, v18);
  }

  OUTLINED_FUNCTION_65();
}

uint64_t ContactsSlotTemplating.init(deviceState:startCallCats:locale:appInfoBuilder:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, __int128 *a5@<X4>, void *a6@<X8>)
{
  outlined init with take of SPHConversation(a1, a6);
  a6[5] = a2;
  a6[6] = a3;
  a6[7] = a4;

  return outlined init with take of SPHConversation(a5, (a6 + 8));
}

void ContactsSlotTemplating.makeParameterPromptDialog(app:parameterName:intent:_:)()
{
  OUTLINED_FUNCTION_66();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v9 = OUTLINED_FUNCTION_21(v8);
  __chkstk_darwin(v9);
  OUTLINED_FUNCTION_12_5();
  v12 = v10 - v11;
  __chkstk_darwin(v13);
  v15 = &v53 - v14;
  __chkstk_darwin(v16);
  v18 = &v53 - v17;
  v19 = *(v3 + 16);
  v20 = *(v3 + 32);
  static ContactsSlotTemplating.isMissingMeCardCase(intent:)();
  if (v21)
  {
    v53 = v7;
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_0_6();
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    __swift_project_value_buffer(v22, static Logger.siriPhone);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.debug.getter();
    v25 = os_log_type_enabled(v23, v24);
    v54 = v5;
    if (v25)
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_0, v23, v24, "User requested a handle label with inferred isMe=true, but no MeCard person exists. Provide specific prompt dialog for this case StartCall#PromptForContactsKnownLabel.", v26, 2u);
    }

    v27 = (*(*(v20 + 8) + 8))(v19);
    v28 = v27;
    if (v27 && (!specialized Array.count.getter(v27) ? (v32 = 0) : ((v29 = OUTLINED_FUNCTION_3_36(), specialized Array._checkSubscript(_:wasNativeTypeChecked:)(v29, v30, v28), (v28 & 0xC000000000000001) != 0) ? (v31 = specialized _ArrayBuffer._getElementSlowPath(_:)()) : (v31 = *(v28 + 32)), v32 = v31), (, v28 = [v32 personHandle], v32, v28) && (v36 = objc_msgSend(v28, "label")) != 0))
    {
      v37 = v36;
      v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v40 = v39;

      OUTLINED_FUNCTION_94(v38, v40);
      v41 = type metadata accessor for SpeakableString();
      v42 = 0;
    }

    else
    {
      v41 = type metadata accessor for SpeakableString();
      v42 = 1;
    }

    __swift_storeEnumTagSinglePayload(v18, v42, 1, v41);
    type metadata accessor for DialogPersonHandle();
    v43 = v28;
    v44 = DialogPersonHandle.__allocating_init(handle:)();
    type metadata accessor for DialogPersonHandle.Builder();
    swift_allocObject();
    DialogPersonHandle.Builder.init()();
    if (v44)
    {

      DialogPersonHandle.label.getter();
    }

    else
    {
      v45 = type metadata accessor for SpeakableString();
      __swift_storeEnumTagSinglePayload(v15, 1, 1, v45);
    }

    dispatch thunk of DialogPersonHandle.Builder.withLabel(_:)();

    outlined destroy of SpeakableString?(v15);
    v46 = @"PhoneNumber";
    v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v49 = v48;

    OUTLINED_FUNCTION_94(v47, v49);
    v50 = type metadata accessor for SpeakableString();
    __swift_storeEnumTagSinglePayload(v12, 0, 1, v50);
    dispatch thunk of DialogPersonHandle.Builder.withType(_:)();

    outlined destroy of SpeakableString?(v12);
    v51 = dispatch thunk of DialogPersonHandle.Builder.build()();

    v52 = *(**(v1 + 40) + class metadata base offset for StartCallCATs + 1376);

    v52(v18, v51, v53, v54);
  }

  else
  {
    v33 = *(v1 + 40);
    v34 = type metadata accessor for SpeakableString();
    __swift_storeEnumTagSinglePayload(v12, 1, 1, v34);
    v35 = (*(*(v20 + 16) + 8))(v19) == 2;
    (*(*v33 + class metadata base offset for StartCallCATs + 1344))(v12, v35, 0, 0, 0, 0, v7, v5);
    v18 = v12;
  }

  outlined destroy of SpeakableString?(v18);
  OUTLINED_FUNCTION_65();
}

void ContactsSlotTemplating.makeParameterValueConfirmationDialog(app:parameterName:intentResolutionResult:intent:inferenceSource:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_66();
  v22 = v21;
  v73 = v23;
  v74 = v24;
  LODWORD(v69) = v25;
  v27 = v26;
  type metadata accessor for Locale();
  OUTLINED_FUNCTION_7();
  v71 = v29;
  v72 = v28;
  __chkstk_darwin(v28);
  v31 = &v65 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v33 = OUTLINED_FUNCTION_21(v32);
  __chkstk_darwin(v33);
  OUTLINED_FUNCTION_12_5();
  v66 = v34 - v35;
  OUTLINED_FUNCTION_4_0();
  *&v37 = __chkstk_darwin(v36).n128_u64[0];
  v39 = &v65 - v38;
  v70 = [v27 confirmationReason];
  v40 = [v27 itemToConfirm];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  type metadata accessor for INPerson();
  if (swift_dynamicCast())
  {
    v68 = v77;
    v41 = *(a21 + 32);
    v42 = *(a21 + 16);
    v43 = (*(*(v41 + 8) + 8))(v42, *(v41 + 8));
    goto LABEL_11;
  }

  v41 = *(a21 + 32);
  v44 = *(v41 + 8);
  v45 = *(v44 + 8);
  v42 = *(a21 + 16);
  v46 = v45(v42, v44);
  if (v46)
  {
    v47 = v46;
    if (specialized Array.count.getter(v46))
    {
      v67 = v21;
      v65 = v31;
      v48 = OUTLINED_FUNCTION_3_36();
      specialized Array._checkSubscript(_:wasNativeTypeChecked:)(v48, v49, v47);
      if ((v47 & 0xC000000000000001) != 0)
      {
        v50 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v50 = *(v47 + 32);
      }

      v68 = v50;

      v31 = v65;
      v22 = v67;
      goto LABEL_10;
    }
  }

  v68 = 0;
LABEL_10:
  v43 = v45(v42, v44);
LABEL_11:
  if (v43)
  {
    v51 = v43;
    if (specialized Array.count.getter(v43))
    {
      v52 = OUTLINED_FUNCTION_3_36();
      specialized Array._checkSubscript(_:wasNativeTypeChecked:)(v52, v53, v51);
      if ((v51 & 0xC000000000000001) != 0)
      {
        v54 = OUTLINED_FUNCTION_14_26();
      }

      else
      {
        v54 = *(v51 + 32);
      }

      v55 = v54;

      v56 = [v55 personHandle];

      if (v56)
      {
        LODWORD(v67) = [v56 isSuggested];

        goto LABEL_19;
      }
    }

    else
    {
    }
  }

  LODWORD(v67) = 0;
LABEL_19:
  v57 = type metadata accessor for SpeakableString();
  __swift_storeEnumTagSinglePayload(v39, 1, 1, v57);
  if ((v69 & 1) == 0)
  {
    v58 = v66;
    SpeakableString.init(print:speak:)();
    outlined destroy of SpeakableString?(v39);
    __swift_storeEnumTagSinglePayload(v58, 0, 1, v57);
    outlined init with take of SpeakableString?(v58, v39);
  }

  v69 = *(v22 + 40);
  v66 = (*(*(v41 + 16) + 8))(v42);
  type metadata accessor for PhonePerson(0);
  static Device.current.getter();
  __swift_project_boxed_opaque_existential_1(v75, v76);
  dispatch thunk of DeviceState.siriLocale.getter();
  __swift_destroy_boxed_opaque_existential_1(v75);
  v59 = v68;
  v60 = OUTLINED_FUNCTION_13_23();
  v65 = v39;
  v61 = v72;
  v62 = *(v71 + 8);
  v62(v31, v72);
  static Device.current.getter();
  __swift_project_boxed_opaque_existential_1(v75, v76);
  dispatch thunk of DeviceState.siriLocale.getter();
  __swift_destroy_boxed_opaque_existential_1(v75);
  v63 = OUTLINED_FUNCTION_13_23();
  v62(v31, v61);
  v64 = v65;
  (*(*v69 + class metadata base offset for StartCallCATs + 96))(v66 == 2, v60, v63, (v70 & 0xFFFFFFFFFFFFFFFELL) == 2, v67, v65, v73, v74);

  outlined destroy of SpeakableString?(v64);
  OUTLINED_FUNCTION_65();
}

void ContactsSlotTemplating.makeParameterValueDisambiguationDialog(app:parameterName:intentResolutionResult:disambiguationList:deviceIsLocked:intent:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22)
{
  OUTLINED_FUNCTION_66();
  v146 = v22;
  v24 = v23;
  v26 = v25;
  v142 = v27;
  v143 = a21;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v29 = OUTLINED_FUNCTION_21(v28);
  __chkstk_darwin(v29);
  v136 = &v134 - v30;
  v135 = type metadata accessor for InteractionType();
  OUTLINED_FUNCTION_7();
  v32 = v31;
  __chkstk_darwin(v33);
  OUTLINED_FUNCTION_12_5();
  v134 = v34 - v35;
  OUTLINED_FUNCTION_4_0();
  __chkstk_darwin(v36);
  v38 = &v134 - v37;
  v148 = type metadata accessor for Locale();
  OUTLINED_FUNCTION_7();
  v141 = v39;
  __chkstk_darwin(v40);
  OUTLINED_FUNCTION_12_5();
  v137 = v41 - v42;
  OUTLINED_FUNCTION_4_0();
  v44 = __chkstk_darwin(v43);
  v147 = &v134 - v45;
  v138 = a22[4];
  v139 = a22;
  v46 = *(v138 + 8);
  v47 = *(v46 + 1);
  v144 = a22[2];
  ContactRelatedOr = v24;
  v48 = v47(v44);
  v49 = [v26 disambiguationItems];
  v50 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v51 = *(v50 + 16);
  v52 = v48;

  v53 = &selRef_alternatives;
  if (v51)
  {
    v53 = &selRef_disambiguationItems;
  }

  v54 = [v26 *v53];
  v55 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v56 = specialized _arrayConditionalCast<A, B>(_:)(v55);
  v140 = _swiftEmptyArrayStorage;
  if (v56)
  {
    v57 = v56;
  }

  else
  {
    v57 = _swiftEmptyArrayStorage;
  }

  if (!v48)
  {
    v63 = 0;
    goto LABEL_14;
  }

  if (!specialized Array.count.getter(v48))
  {
    goto LABEL_12;
  }

  v58 = OUTLINED_FUNCTION_3_36();
  specialized Array._checkSubscript(_:wasNativeTypeChecked:)(v58, v59, v48);
  if ((v48 & 0xC000000000000001) != 0)
  {
    goto LABEL_102;
  }

  v60 = *(v48 + 32);
  while (1)
  {
    v61 = [v60 siriMatches];

    if (v61)
    {
      type metadata accessor for INPerson();
      v62 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v63 = specialized Array.count.getter(v62);
    }

    else
    {
LABEL_12:
      v63 = specialized Array.count.getter(v52);
    }

LABEL_14:
    v64 = App.isFirstParty()();
    v65 = v55[2];
    static EmergencyUtils.isForeignEmergencyDisambiguation(_:)(v57);
    if (v66)
    {
      break;
    }

    static EmergencyUtils.isRegularEmergencyDisambiguation(_:)(v57);
    if ((v74 & 1) == 0)
    {
      v147 = v63;

      v87 = PhoneContactDisambiguationProperties.isHandleDisambiguation.getter(v86);

      if (v87)
      {
        goto LABEL_40;
      }

      v93 = specialized Array.count.getter(v57);
      if (v93 == 1)
      {
        v94 = OUTLINED_FUNCTION_3_36();
        specialized Array._checkSubscript(_:wasNativeTypeChecked:)(v94, v95, v57);
        if ((v57 & 0xC000000000000001) != 0)
        {
          v96 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v96 = *(v57 + 32);
        }

        v97 = v96;
        v98 = INPerson.hasHandleLabel.getter();

        if (!v98)
        {
          goto LABEL_65;
        }

LABEL_40:
        if (v52)
        {
          if (specialized Array.count.getter(v52))
          {
            v88 = OUTLINED_FUNCTION_3_36();
            specialized Array._checkSubscript(_:wasNativeTypeChecked:)(v88, v89, v52);
            if ((v52 & 0xC000000000000001) != 0)
            {
              v90 = OUTLINED_FUNCTION_14_26();
            }

            else
            {
              v90 = *(v52 + 32);
            }

            v91 = v90;

            v92 = v91;
            LODWORD(v140) = INPerson.hasHandleLabel.getter();
            v147 = v92;

            goto LABEL_74;
          }
        }

        LODWORD(v140) = 0;
        v147 = 0;
LABEL_74:
        ContactRelatedOr = INPersonContainingIntent.isFirstContactRelatedOrMyself.getter(v144, v46);
        v112 = specialized Array.count.getter(v57);
        v113 = 0;
        v38 = v57 & 0xC000000000000001;
        v55 = (v57 & 0xFFFFFFFFFFFFFF8);
        v46 = &unk_548000;
        do
        {
          v52 = v113;
          if (v112 == v113)
          {
            break;
          }

          if (v38)
          {
            v114 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v113 >= *(&dword_10 + (v57 & 0xFFFFFFFFFFFFFF8)))
            {
              goto LABEL_99;
            }

            v114 = *(v57 + 8 * v113 + 32);
          }

          v32 = v114;
          if (__OFADD__(v52, 1))
          {
            goto LABEL_98;
          }

          v115 = [v114 personHandle];
          if (!v115)
          {

            break;
          }

          v116 = v115;
          v117 = [v115 type];

          v113 = v52 + 1;
        }

        while (v117 == &dword_0 + 2);
        v118 = OUTLINED_FUNCTION_3_36();
        specialized Array._checkSubscript(_:wasNativeTypeChecked:)(v118, v119, v57);
        if (v38)
        {
          v120 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v120 = *(v57 + 32);
        }

        v121 = v120;

        type metadata accessor for PhonePerson(0);
        v122 = v146;
        __swift_project_boxed_opaque_existential_1(v146, v146[3]);
        v123 = v137;
        OUTLINED_FUNCTION_8_35();
        v124 = static PhonePerson.make(phonePerson:options:locale:)(v121, ContactRelatedOr & 1, v123);

        (*(v141 + 8))(v123, v148);
        v125 = *(*v122[5] + class metadata base offset for StartCallCATs + 352);

        v125(v140 & 1, v112 == v52, v124, v142, v143);
      }

      else if (v93 >= 6 && (__swift_project_boxed_opaque_existential_1(v146, v146[3]), v99 = v38, OUTLINED_FUNCTION_55(), dispatch thunk of DeviceState.interactionType.getter(), v100 = v134, v101 = v135, (v32[13])(v134, enum case for InteractionType.dialogDriven(_:), v135), v102 = specialized == infix<A>(_:_:)(v38, v100), v103 = v32[1], ++v32, v104 = OUTLINED_FUNCTION_55(), v103(v104), (v103)(v99, v101), (v102 & 1) != 0))
      {

        v105 = v146[5];
        v149[0] = _swiftEmptyArrayStorage;
        v55 = specialized Array.count.getter(v57);
        v38 = 0;
        v46 = 0;
        while (v55 != v38)
        {
          if ((v57 & 0xC000000000000001) != 0)
          {
            v106 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v38 >= *(&dword_10 + (v57 & 0xFFFFFFFFFFFFFF8)))
            {
              goto LABEL_101;
            }

            v106 = *(v57 + 8 * v38 + 32);
          }

          v107 = v106;
          if (__OFADD__(v38, 1))
          {
            goto LABEL_100;
          }

          v153 = v106;
          closure #4 in ContactsSlotTemplating.makeParameterValueDisambiguationDialog(app:parameterName:intentResolutionResult:disambiguationList:deviceIsLocked:intent:_:)(&v153, v144, v138, &v152);

          v52 = v152;
          if (v152)
          {
            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            v32 = *(&dword_10 + (v149[0] & 0xFFFFFFFFFFFFFF8));
            if (v32 >= *(&dword_18 + (v149[0] & 0xFFFFFFFFFFFFFF8)) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            v140 = v149[0];
          }

          ++v38;
        }

        type metadata accessor for PhonePersonList();
        v126 = PhonePersonList.__allocating_init(list:)(v140);
        (*(*v105 + class metadata base offset for StartCallCATs + 448))(v126, v142, v143);
LABEL_38:
      }

      else
      {
LABEL_65:

        v67 = v146;
        if (v64 && v65 < v147)
        {

          (*(*v67[5] + class metadata base offset for StartCallCATs + 416))(v142, v143);
        }

        else
        {
          if (v52)
          {
            if (specialized Array.count.getter(v52))
            {
              v108 = OUTLINED_FUNCTION_3_36();
              specialized Array._checkSubscript(_:wasNativeTypeChecked:)(v108, v109, v52);
              if ((v52 & 0xC000000000000001) != 0)
              {
                v110 = OUTLINED_FUNCTION_14_26();
              }

              else
              {
                v110 = *(v52 + 32);
              }

              v111 = v110;
            }

            else
            {
LABEL_92:
              v111 = 0;
            }

            v127 = [v111 relationship];
          }

          else
          {
            v127 = 0;
          }

          v128 = v136;
          ContactsSlotTemplating.translateRelationship(relationship:)(v127, v136);

          (*(*v67[5] + class metadata base offset for StartCallCATs + 288))(v128, v142, v143);
          outlined destroy of SpeakableString?(v128);
        }
      }

LABEL_95:
      OUTLINED_FUNCTION_65();
      return;
    }

    v139 = v146[5];
    v153 = _swiftEmptyArrayStorage;
    v75 = specialized Array.count.getter(v57);
    v52 = 0;
    v138 = 0;
    ContactRelatedOr = v57 & 0xC000000000000001;
    v146 = v75;
    v144 = (v57 & 0xFFFFFFFFFFFFFF8);
    v38 = v141 + 8;
    while (1)
    {
      if (v146 == v52)
      {

        (*(*v139 + class metadata base offset for StartCallCATs + 384))(v140, v142, v143);

        goto LABEL_95;
      }

      if (ContactRelatedOr)
      {
        v76 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v52 >= v144[2])
        {
          goto LABEL_97;
        }

        v76 = *(v57 + 8 * v52 + 32);
      }

      v77 = v76;
      v78 = v52 + 1;
      if (__OFADD__(v52, 1))
      {
        break;
      }

      type metadata accessor for PhonePerson(0);
      static Device.current.getter();
      v46 = v150;
      v32 = v151;
      __swift_project_boxed_opaque_existential_1(v149, v150);
      v55 = v147;
      dispatch thunk of DeviceState.siriLocale.getter();
      __swift_destroy_boxed_opaque_existential_1(v149);
      v79 = static PhonePerson.make(phonePerson:options:locale:)(v77, 0, v55);

      (*v38)(v55, v148);
      ++v52;
      if (v79)
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*(&dword_10 + (v153 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v153 & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v140 = v153;
        v52 = v78;
      }
    }

    __break(1u);
LABEL_97:
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

    v60 = OUTLINED_FUNCTION_14_26();
  }

  v144 = v55;
  ContactRelatedOr = v52;
  v67 = specialized Array.count.getter(v57);
  for (i = 0; v67 != i; ++i)
  {
    if ((v57 & 0xC000000000000001) != 0)
    {
      v69 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (i >= *(&dword_10 + (v57 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_91;
      }

      v69 = *(v57 + 8 * i + 32);
    }

    v70 = v69;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_91:
      __break(1u);
      goto LABEL_92;
    }

    v71 = [v69 personHandle];
    if (v71)
    {
      v72 = v71;
      v73 = [v71 emergencyType];

      if (v73 == &dword_0 + 2)
      {

        v80 = v146;
        v81 = v146[5];
        type metadata accessor for SirikitDeviceState();
        outlined init with copy of SignalProviding(v80, v149);
        v82 = SirikitDeviceState.__allocating_init(from:)();
        type metadata accessor for PhonePerson(0);
        v83 = v70;
        static Device.current.getter();
        __swift_project_boxed_opaque_existential_1(v149, v150);
        v84 = v147;
        OUTLINED_FUNCTION_8_35();
        __swift_destroy_boxed_opaque_existential_1(v149);
        v85 = static PhonePerson.make(phonePerson:options:locale:)(v70, 0, v84);

        (*(v141 + 8))(v84, v148);
        (*(*v81 + class metadata base offset for StartCallCATs + 320))(v82, v85, v142, v143);

        goto LABEL_38;
      }
    }
  }

  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v129 = type metadata accessor for Logger();
  __swift_project_value_buffer(v129, static Logger.siriPhone);
  v130 = Logger.logObject.getter();
  v131 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v130, v131))
  {
    v132 = swift_slowAlloc();
    v133 = swift_slowAlloc();
    v149[0] = v133;
    *v132 = 136315138;
    *(v132 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000005ALL, 0x800000000045AD30, v149);
    _os_log_impl(&dword_0, v130, v131, "%s", v132, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v133);
  }

  static SiriKitLifecycle._logCrashToEventBus(_:)();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t closure #4 in ContactsSlotTemplating.makeParameterValueDisambiguationDialog(app:parameterName:intentResolutionResult:disambiguationList:deviceIsLocked:intent:_:)@<X0>(void **a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X4>, uint64_t *a4@<X8>)
{
  v14 = a4;
  v7 = type metadata accessor for Locale();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v15[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  type metadata accessor for PhonePerson(0);
  LOBYTE(a2) = INPersonContainingIntent.isFirstContactRelatedOrMyself.getter(a2, *(a3 + 8));
  static Device.current.getter();
  __swift_project_boxed_opaque_existential_1(v15, v15[3]);
  dispatch thunk of DeviceState.siriLocale.getter();
  __swift_destroy_boxed_opaque_existential_1(v15);
  v12 = static PhonePerson.make(phonePerson:options:locale:)(v11, a2 & 1, v10);
  result = (*(v8 + 8))(v10, v7);
  *v14 = v12;
  return result;
}

void ContactsSlotTemplating.translateRelationship(relationship:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1)
  {

    INPersonRelationship.toSpeakableString(startCallCats:)();
  }

  else
  {
    v3 = type metadata accessor for SpeakableString();

    __swift_storeEnumTagSinglePayload(a2, 1, 1, v3);
  }
}

void ContactsSlotTemplating.makeParameterValueUnsupportedDialog(app:parameterName:intentResolutionResult:intent:multicardinalValueIndex:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_66();
  v145 = v22;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v137 = v31;
  v143 = v32;
  v144 = a21;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v34 = OUTLINED_FUNCTION_21(v33);
  __chkstk_darwin(v34);
  OUTLINED_FUNCTION_12_5();
  v37 = v35 - v36;
  __chkstk_darwin(v38);
  v139 = &v137 - v39;
  OUTLINED_FUNCTION_4_0();
  __chkstk_darwin(v40);
  v141 = &v137 - v41;
  v148 = type metadata accessor for Locale();
  OUTLINED_FUNCTION_7();
  v140 = v42;
  __chkstk_darwin(v43);
  OUTLINED_FUNCTION_12_5();
  v138 = v44 - v45;
  OUTLINED_FUNCTION_4_0();
  __chkstk_darwin(v46);
  v48 = &v137 - v47;
  v142 = *(a22 + 32);
  v49 = *(*(v142 + 8) + 8);
  v50 = *(a22 + 16);
  v146 = v28;
  v51 = OUTLINED_FUNCTION_6_31();
  v52 = (v49)(v51);
  if (v52)
  {
    v53 = v52;
    if ((v24 & 1) == 0)
    {
      v60 = v52 & 0xC000000000000001;
      specialized Array._checkSubscript(_:wasNativeTypeChecked:)(v26, (v52 & 0xC000000000000001) == 0, v52);
      if (v60)
      {
        goto LABEL_86;
      }

      v59 = *(v53 + 8 * v26 + 32);
      goto LABEL_10;
    }
  }

  v54 = OUTLINED_FUNCTION_6_31();
  v55 = (v49)(v54);
  if (!v55)
  {
LABEL_13:
    v147 = 0;
    goto LABEL_14;
  }

  v56 = v55;
  if (!specialized Array.count.getter(v55))
  {

    goto LABEL_13;
  }

  v57 = OUTLINED_FUNCTION_3_36();
  specialized Array._checkSubscript(_:wasNativeTypeChecked:)(v57, v58, v56);
  if ((v56 & 0xC000000000000001) != 0)
  {
    goto LABEL_86;
  }

  v59 = *(v56 + 32);
LABEL_10:
  v61 = v59;
  while (2)
  {
    v147 = v61;

LABEL_14:
    v62 = [v30 unsupportedReason];
    if (_INStartCallContactUnsupportedReasonForeignEmergencyDisambiguation == v62)
    {
      OUTLINED_FUNCTION_0_48();
      (*(v63 + class metadata base offset for StartCallCATs + 1632))(v143);
LABEL_16:
      OUTLINED_FUNCTION_65();

      return;
    }

    switch(v62)
    {
      case 2uLL:
        OUTLINED_FUNCTION_0_48();
        (*(v66 + class metadata base offset for StartCallCATs + 1696))(v143);
        goto LABEL_16;
      case 3uLL:
        v74 = type metadata accessor for PhoneStartCallIntent(0);
        v75 = specialized static PhoneStartCallIntent.makeForSlotTemplating(intent:isRelationshipRequest:)(v146, 0, v74, v50, v142);
        if (v147 && (v76 = [v147 personHandle]) != 0 && (v77 = v76, v78 = objc_msgSend(v76, "label"), v77, v78) && (v79 = static String._unconditionallyBridgeFromObjectiveC(_:)(), v81 = v80, v78, v81))
        {
          OUTLINED_FUNCTION_94(v79, v81);
          v82 = type metadata accessor for SpeakableString();
          v83 = 0;
        }

        else
        {
          v82 = type metadata accessor for SpeakableString();
          v83 = 1;
        }

        v87 = v139;
        __swift_storeEnumTagSinglePayload(v141, v83, 1, v82);
        v88 = *&v75[OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin20PhoneStartCallIntent_contacts];
        if (v88 && (v89 = *(v88 + 24), specialized Array.count.getter(v89)))
        {
          v90 = OUTLINED_FUNCTION_3_36();
          specialized Array._checkSubscript(_:wasNativeTypeChecked:)(v90, v91, v89);
          if ((v89 & 0xC000000000000001) != 0)
          {

            specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
          }

          v92 = DialogPerson.personHandle.getter();
        }

        else
        {
          v92 = 0;
        }

        v93 = OUTLINED_FUNCTION_6_31();
        v95 = INPersonContainingIntent.hasSiriMatches.getter(v93, v94);
        v139 = v92;
        if ((v95 & 1) == 0)
        {
          v103 = v75;
          v105 = v147;
          v102 = v147;
          goto LABEL_64;
        }

        if (!v147 || (v96 = [v147 siriMatches]) == 0)
        {
          v103 = v75;
LABEL_63:
          v102 = 0;
          goto LABEL_64;
        }

        v97 = v96;
        type metadata accessor for INPerson();
        v98 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        if (!specialized Array.count.getter(v98))
        {
          v103 = v75;

          goto LABEL_63;
        }

        v99 = OUTLINED_FUNCTION_3_36();
        specialized Array._checkSubscript(_:wasNativeTypeChecked:)(v99, v100, v98);
        if ((v98 & 0xC000000000000001) != 0)
        {
          v101 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v101 = *(v98 + 32);
        }

        v102 = v101;
        v103 = v75;

LABEL_64:
        v107 = v145[5];
        v108 = *(*(v142 + 16) + 8);

        v109 = OUTLINED_FUNCTION_55();
        if (v108(v109))
        {
          v110 = INPreferredCallProviderGetBackingType();
          switch(v110)
          {
            case 4:
              v111 = @"THIRD_PARTY_PROVIDER";
              break;
            case 3:
              v111 = @"FACETIME_PROVIDER";
              break;
            case 2:
              v111 = @"TELEPHONY_PROVIDER";
              break;
            default:
              v111 = [NSString stringWithFormat:@"(unknown: %i)", v110];
              goto LABEL_79;
          }

          v127 = v111;
LABEL_79:
          v128 = v111;
          v113 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v112 = v129;

          goto LABEL_80;
        }

        v112 = 0xE700000000000000;
        v113 = 0x4E574F4E4B4E55;
LABEL_80:
        OUTLINED_FUNCTION_94(v113, v112);
        v130 = type metadata accessor for SpeakableString();
        __swift_storeEnumTagSinglePayload(v87, 0, 1, v130);
        type metadata accessor for PhonePerson(0);
        v131 = OUTLINED_FUNCTION_6_31();
        ContactRelatedOr = INPersonContainingIntent.isFirstContactRelatedOrMyself.getter(v131, v132);
        static Device.current.getter();
        __swift_project_boxed_opaque_existential_1(v150, v151);
        v134 = v138;
        dispatch thunk of DeviceState.siriLocale.getter();
        __swift_destroy_boxed_opaque_existential_1(v150);
        v135 = static PhonePerson.make(phonePerson:options:locale:)(v102, ContactRelatedOr & 1, v134);
        (*(v140 + 8))(v134, v148);
        v136 = v141;
        (*(*v107 + class metadata base offset for StartCallCATs + 1824))(v103, v87, v135, v141, v139, v143, v144);

        outlined destroy of SpeakableString?(v87);
        v126 = v136;
LABEL_81:
        outlined destroy of SpeakableString?(v126);
LABEL_82:
        OUTLINED_FUNCTION_65();
        return;
      case 4uLL:
        v68 = OUTLINED_FUNCTION_6_31();
        v69 = (v49)(v68);
        v49 = _swiftEmptyArrayStorage;
        if (!v69)
        {
          goto LABEL_58;
        }

        v50 = v69;
        v139 = _swiftEmptyArrayStorage;
        v149 = _swiftEmptyArrayStorage;
        v146 = specialized Array.count.getter(v69);
        v37 = 0;
        v141 = v50 & 0xFFFFFFFFFFFFFF8;
        v142 = v50 & 0xC000000000000001;
        v30 = (v140 + 8);
        while (2)
        {
          if (v146 == v37)
          {

            v49 = v139;
LABEL_58:
            type metadata accessor for PhonePersonList();
            v104 = PhonePersonList.__allocating_init(list:)(v49);
            (*(*v145[5] + class metadata base offset for StartCallCATs + 1664))(v104, v143, v144);

            goto LABEL_82;
          }

          if (v142)
          {
            v70 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v37 >= *(v141 + 16))
            {
              goto LABEL_85;
            }

            v70 = *(v50 + 8 * v37 + 32);
          }

          v71 = v70;
          v49 = (v37 + 1);
          if (!__OFADD__(v37, 1))
          {
            type metadata accessor for PhonePerson(0);
            static Device.current.getter();
            __swift_project_boxed_opaque_existential_1(v150, v151);
            OUTLINED_FUNCTION_8_35();
            __swift_destroy_boxed_opaque_existential_1(v150);
            v72 = static PhonePerson.make(phonePerson:options:locale:)(v71, 0, v48);

            (*v30)(v48, v148);
            ++v37;
            if (v72)
            {
              specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
              if (*(&dword_10 + (v149 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v149 & 0xFFFFFFFFFFFFFF8)) >> 1)
              {
                specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
              }

              specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
              v139 = v149;
              v37 = v49;
            }

            continue;
          }

          break;
        }

        __break(1u);
LABEL_85:
        __break(1u);
LABEL_86:
        v61 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        continue;
      case 5uLL:
        OUTLINED_FUNCTION_0_48();
        (*(v73 + class metadata base offset for StartCallCATs + 1888))(v143);
        goto LABEL_16;
      case 6uLL:
        OUTLINED_FUNCTION_0_48();
        (*(v67 + class metadata base offset for StartCallCATs + 1728))(v143);
        goto LABEL_16;
      case 7uLL:
        OUTLINED_FUNCTION_0_48();
        (*(v84 + class metadata base offset for StartCallCATs + 1856))(v143);
        goto LABEL_16;
      default:
        static ContactsSlotTemplating.isMissingMeCardCase(intent:)();
        if (v85)
        {
          OUTLINED_FUNCTION_0_48();
          (*(v86 + class metadata base offset for StartCallCATs + 1792))(v143);
          goto LABEL_16;
        }

        if (v147)
        {
          v106 = INPerson.nameLowercasedWithFirstUppercased.getter();
        }

        else
        {
          v106 = 0;
        }

        type metadata accessor for PhonePerson(0);
        static Device.current.getter();
        __swift_project_boxed_opaque_existential_1(v150, v151);
        dispatch thunk of DeviceState.siriLocale.getter();
        __swift_destroy_boxed_opaque_existential_1(v150);
        v146 = static PhonePerson.make(phonePerson:options:locale:)(v106, 0, v48);

        v142 = *(v140 + 8);
        v114 = v148;
        (v142)(v48, v148);
        v115 = v145;
        v116 = v145[11];
        v117 = v145[12];
        __swift_project_boxed_opaque_existential_1(v145 + 8, v116);
        __swift_project_boxed_opaque_existential_1(v115, v115[3]);
        dispatch thunk of DeviceState.siriLocale.getter();
        v118 = (*(v117 + 16))(v137, v48, v116, v117);
        v120 = v119;
        (v142)(v48, v114);
        if (v120)
        {
          OUTLINED_FUNCTION_94(v118, v120);
          v121 = 0;
        }

        else
        {
          v121 = 1;
        }

        v122 = type metadata accessor for SpeakableString();
        __swift_storeEnumTagSinglePayload(v37, v121, 1, v122);
        v123 = v146;
        v124 = v145[5];

        v125 = App.isFirstParty()();
        (*(*v124 + class metadata base offset for StartCallCATs + 1760))(v123, v37, v125, v143, v144);

        v126 = v37;
        goto LABEL_81;
    }
  }
}

uint64_t type metadata instantiation function for ContactsSlotTemplating(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t getEnumTagSinglePayload for ContactsSlotTemplating(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 104))
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

uint64_t storeEnumTagSinglePayload for ContactsSlotTemplating(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id specialized Array.subscript.getter(uint64_t a1, unint64_t a2)
{
  if (a1 < 0)
  {
    return 0;
  }

  if (a2 >> 62)
  {
    v5 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v5 = *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8));
  }

  if (v5 <= a1)
  {
    return 0;
  }

  v6 = OUTLINED_FUNCTION_42_8();
  specialized Array._checkSubscript(_:wasNativeTypeChecked:)(v6, v7, v8);
  if (!v2)
  {
    return *(a2 + 8 * a1 + 32);
  }

  OUTLINED_FUNCTION_0();
  return specialized _ArrayBuffer._getElementSlowPath(_:)();
}

uint64_t specialized Array.subscript.getter(uint64_t a1, unint64_t a2)
{
  if (a1 < 0)
  {
    return 0;
  }

  if (a2 >> 62)
  {
    v4 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v4 = *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8));
  }

  if (v4 <= a1)
  {
    return 0;
  }

  v5 = OUTLINED_FUNCTION_42_8();
  specialized Array._checkSubscript(_:wasNativeTypeChecked:)(v5, v6, v7);
  if (!v2)
  {
  }

  OUTLINED_FUNCTION_0();
  return specialized _ArrayBuffer._getElementSlowPath(_:)();
}

uint64_t ContactUnsetRelationshipFlowStrategy.init(sharedGlobals:contactStore:labelTemplates:unsetRelationshipTemplates:displayTextCatFamily:phoneCallCommonCats:)@<X0>(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  outlined init with copy of SignalProviding(a1, a8);
  outlined init with copy of SignalProviding(a2, (a8 + 5));
  outlined init with copy of SignalProviding(a3, (a8 + 10));
  outlined init with copy of SignalProviding(a4, (a8 + 15));
  a8[20] = a5;
  a8[21] = a6;
  v16 = type metadata accessor for CNContactStore(255, &lazy cache variable for type metadata for INIntentResponse, INIntentResponse_ptr);
  type metadata accessor for PhoneCallBaseCatTemplatingService(0, a7, v16, v17);
  outlined init with copy of SignalProviding(a1, v28);
  outlined init with copy of SignalProviding(a3, v27);
  OUTLINED_FUNCTION_13_24();
  default argument 0 of PhoneCallBaseCatTemplatingService.init(ducFamily:sharedGlobals:displayTextCats:phoneCallCommonCats:appInfoBuilder:labelTemplating:startCallCats:)();
  v18 = OUTLINED_FUNCTION_13_24();
  default argument 4 of PhoneCallBaseCatTemplatingService.init(ducFamily:sharedGlobals:displayTextCats:phoneCallCommonCats:appInfoBuilder:labelTemplating:startCallCats:)(v18, v19);

  v20 = OUTLINED_FUNCTION_13_24();
  default argument 6 of PhoneCallBaseCatTemplatingService.init(ducFamily:sharedGlobals:displayTextCats:phoneCallCommonCats:appInfoBuilder:labelTemplating:startCallCats:)(v20, v21);
  PhoneCallBaseCatTemplatingService.__allocating_init(ducFamily:sharedGlobals:displayTextCats:phoneCallCommonCats:appInfoBuilder:labelTemplating:startCallCats:)();
  v23 = v22;
  __swift_destroy_boxed_opaque_existential_1(a4);
  __swift_destroy_boxed_opaque_existential_1(a3);
  __swift_destroy_boxed_opaque_existential_1(a2);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  a8[22] = v23;
  return result;
}

uint64_t ContactUnsetRelationshipFlowStrategy.parseRequestedRelationship(resolveRecord:)()
{
  OUTLINED_FUNCTION_15();
  v0[3] = v1;
  v0[4] = v2;
  v0[2] = v3;
  v4 = type metadata accessor for PhoneError(0);
  v0[5] = v4;
  OUTLINED_FUNCTION_21(v4);
  v0[6] = OUTLINED_FUNCTION_45();
  v5 = type metadata accessor for ParameterIdentifier();
  v0[7] = v5;
  OUTLINED_FUNCTION_13_2(v5);
  v0[8] = v6;
  v0[9] = OUTLINED_FUNCTION_45();
  v7 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t ContactUnsetRelationshipFlowStrategy.parseRequestedRelationship(resolveRecord:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_135();
  a21 = v23;
  a22 = v24;
  OUTLINED_FUNCTION_39_4();
  a20 = v22;
  v25 = *(v22 + 32);
  v26 = *(v25 + 16);
  type metadata accessor for ParameterResolutionRecord();
  ParameterResolutionRecord.parameter.getter();
  v61 = ParameterIdentifier.multicardinalIndex.getter();
  v28 = v27;
  v29 = OUTLINED_FUNCTION_33_4();
  v30(v29);
  v31 = ParameterResolutionRecord.intent.getter();
  v32 = (*(*(*(v25 + 24) + 8) + 8))(v26);

  if (v32 && ((v28 & 1) == 0 ? (v33 = v61) : (v33 = 0), (v34 = specialized Array.subscript.getter(v33, v32), , v34) && (v35 = [v34 relationship], v34, v35)))
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v36 = type metadata accessor for Logger();
    __swift_project_value_buffer(v36, static Logger.siriPhone);
    v37 = v35;
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = OUTLINED_FUNCTION_42();
      v41 = swift_slowAlloc();
      a10 = v41;
      *v40 = 136315138;
      v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v44 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, v43, &a10);

      *(v40 + 4) = v44;
      OUTLINED_FUNCTION_45_1(&dword_0, v45, v46, "#ContactUnsetRelationshipFlowStrategy Detected unset relationship %s");
      __swift_destroy_boxed_opaque_existential_1(v41);
      OUTLINED_FUNCTION_26_0(v41);
      OUTLINED_FUNCTION_26_0(v40);
    }

    static RelationshipLabel.from(intentsRelationship:)(*(v22 + 16));

    OUTLINED_FUNCTION_8_1();
  }

  else
  {
    v47 = *(v22 + 48);
    *v47 = xmmword_426250;
    OUTLINED_FUNCTION_34_6();
    OUTLINED_FUNCTION_4_22();
    v50 = _s27PhoneCallFlowDelegatePlugin0A5ErrorOACs0F0AAWlTm_4(v48, v49, &protocol conformance descriptor for PhoneError);
    OUTLINED_FUNCTION_147(v50);
    PhoneError.logged()(v51);
    outlined destroy of PhoneError(v47);
    swift_willThrow();

    OUTLINED_FUNCTION_11();
  }

  OUTLINED_FUNCTION_15_11();

  return v53(v52, v53, v54, v55, v56, v57, v58, v59, v61, a10, a11, a12, a13, a14);
}

uint64_t ContactUnsetRelationshipFlowStrategy.applyPersonToIntent(person:requestedRelationship:resolveRecord:)()
{
  OUTLINED_FUNCTION_15();
  v1[31] = v2;
  v1[32] = v0;
  v1[29] = v3;
  v1[30] = v4;
  v1[28] = v5;
  v6 = type metadata accessor for PhoneError(0);
  v1[33] = v6;
  OUTLINED_FUNCTION_21(v6);
  v1[34] = OUTLINED_FUNCTION_45();
  v7 = type metadata accessor for ParameterIdentifier();
  v1[35] = v7;
  OUTLINED_FUNCTION_13_2(v7);
  v1[36] = v8;
  v1[37] = OUTLINED_FUNCTION_45();
  v9 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v9, v10, v11);
}

{
  v2 = *(v0 + 288);
  v1 = *(v0 + 296);
  v3 = *(v0 + 280);
  v4 = *(v0 + 248);
  v5 = *(v4 + 16);
  *(v0 + 304) = v5;
  type metadata accessor for ParameterResolutionRecord();
  ParameterResolutionRecord.parameter.getter();
  v6 = ParameterIdentifier.multicardinalIndex.getter();
  v8 = v7;
  (*(v2 + 8))(v1, v3);
  if (v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = v6;
  }

  v10.super.isa = SAPerson.toINPerson()().super.isa;
  *(v0 + 312) = v10;
  v11 = ParameterResolutionRecord.intent.getter();
  v12 = *(v4 + 24);
  v13 = *(v12 + 8);
  v14 = (*(v13 + 8))(v5, v13);

  v15 = static DisambiguationItemUtils.getUpdatedPersonList(selectedIndex:selectedPerson:persons:)(v9, v10.super.isa, v14);

  if (!specialized Array.count.getter(v15))
  {

    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v28 = type metadata accessor for Logger();
    __swift_project_value_buffer(v28, static Logger.siriPhone);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_0, v29, v30, "#ContactUnsetRelationshipFlowStrategy List is empty after updating contacts list", v31, 2u);
      OUTLINED_FUNCTION_26_0(v31);
    }

    v32 = *(v0 + 272);

    *v32 = xmmword_426250;
    *(v32 + 16) = 2;
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_4_22();
    _s27PhoneCallFlowDelegatePlugin0A5ErrorOACs0F0AAWlTm_4(v33, v34, &protocol conformance descriptor for PhoneError);
    swift_allocError();
    PhoneError.logged()(v35);
    outlined destroy of PhoneError(v32);
    swift_willThrow();

    OUTLINED_FUNCTION_11();
LABEL_16:
    OUTLINED_FUNCTION_21_7();

    __asm { BRAA            X1, X16 }
  }

  v16 = ParameterResolutionRecord.intent.getter();
  *(v0 + 320) = v16;
  (*(v13 + 16))(v15, v5, v13);

  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v17 = type metadata accessor for Logger();
  *(v0 + 328) = __swift_project_value_buffer(v17, static Logger.siriPhone);
  v18 = v16;
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.debug.getter();
  v54 = v18;

  if (os_log_type_enabled(v19, v20))
  {
    v21 = OUTLINED_FUNCTION_42();
    v22 = v12;
    v23 = v9;
    v24 = swift_slowAlloc();
    *v21 = 138412290;
    *(v21 + 4) = v54;
    *v24 = v54;
    v25 = v54;
    _os_log_impl(&dword_0, v19, v20, "#ContactUnsetRelationshipFlowStrategy updatedIntent: %@", v21, 0xCu);
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v24, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v26 = v24;
    v9 = v23;
    v12 = v22;
    OUTLINED_FUNCTION_26_0(v26);
    OUTLINED_FUNCTION_26_0(v21);
  }

  if (INPerson.hasHandleValue.getter())
  {
    OUTLINED_FUNCTION_37_11();
    type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INPerson, INPerson_ptr);
    IntentPromptAnswer.init(answeredValue:updatedIntent:)();
    v27 = type metadata accessor for IntentPromptAnswer();
    OUTLINED_FUNCTION_48_10(v27);

    OUTLINED_FUNCTION_8_1();
    goto LABEL_16;
  }

  v53 = v9;
  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    *v40 = 0;
    _os_log_impl(&dword_0, v38, v39, "#ContactUnsetRelationshipFlowStrategy Person has no handle value, so run ContactResolution", v40, 2u);
    OUTLINED_FUNCTION_26_0(v40);
  }

  v41 = *(v0 + 256);

  *(v0 + 48) = 0;
  *(v0 + 32) = 0u;
  *(v0 + 16) = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy13SiriInference12ContactQueryVGMd, &_ss23_ContiguousArrayStorageCy13SiriInference12ContactQueryVGMR);
  v42 = type metadata accessor for ContactQuery();
  OUTLINED_FUNCTION_13_2(v42);
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_424FD0;
  INPerson.toContactQuery()();
  *(v0 + 56) = _swiftEmptyArrayStorage;
  *(v0 + 64) = 2;
  *(v0 + 72) = 0;
  *(v0 + 80) = 0x1123030905050204;
  *(v0 + 88) = 518;
  *(v0 + 96) = _swiftEmptyArrayStorage;
  *(v0 + 104) = v43;
  *(v0 + 112) = _swiftEmptyArrayStorage;
  v44 = ContactUnsetRelationshipFlowStrategy.app.getter();
  static ContactSlotResolver.makeMulticardinalResolver<A>(multicardinalIndex:rchFlowContext:sharedGlobals:)(v53, 0, v44, 0, 0, v41, v5, v12);

  *(v0 + 208) = &type metadata for PhoneCallDirectInvocationNLIntent;
  *(v0 + 216) = &protocol witness table for PhoneCallDirectInvocationNLIntent;
  v45 = swift_allocObject();
  *(v0 + 184) = v45;
  outlined init with copy of PhoneCallDirectInvocationNLIntent(v0 + 16, v45 + 16);
  v46 = swift_task_alloc();
  *(v0 + 336) = v46;
  *(v0 + 344) = type metadata accessor for AnyIntentResolver(0, v5, v47, v48);
  *v46 = v0;
  v46[1] = ContactUnsetRelationshipFlowStrategy.applyPersonToIntent(person:requestedRelationship:resolveRecord:);
  OUTLINED_FUNCTION_21_7();

  return AnyIntentResolver.resolve(skIntent:nlIntent:)(v49, v50);
}

{
  OUTLINED_FUNCTION_27();
  v3 = v2;
  OUTLINED_FUNCTION_28();
  v5 = v4;
  OUTLINED_FUNCTION_13_1();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v8 = v7;
  *(v5 + 352) = v0;

  if (!v0)
  {

    __swift_destroy_boxed_opaque_existential_1((v5 + 184));
  }

  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v9, v10, v11);
}

{
  v1 = *(v0 + 320);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 320);
    v5 = OUTLINED_FUNCTION_42();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    *(v5 + 4) = v4;
    *v6 = v4;
    v7 = v4;
    _os_log_impl(&dword_0, v2, v3, "#ContactUnsetRelationshipFlowStrategy CRR-updatedIntent %@", v5, 0xCu);
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v6, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    OUTLINED_FUNCTION_26_0(v6);
    OUTLINED_FUNCTION_26_0(v5);
  }

  v8 = *(v0 + 344);

  (*(*(v8 - 8) + 8))(v0 + 120, v8);
  outlined destroy of PhoneCallDirectInvocationNLIntent(v0 + 16);
  OUTLINED_FUNCTION_37_11();
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INPerson, INPerson_ptr);
  IntentPromptAnswer.init(answeredValue:updatedIntent:)();
  v9 = type metadata accessor for IntentPromptAnswer();
  OUTLINED_FUNCTION_48_10(v9);

  OUTLINED_FUNCTION_8_1();

  return v10();
}

{
  OUTLINED_FUNCTION_15();
  v1 = *(v0 + 344);
  v2 = *(v0 + 320);

  (*(*(v1 - 8) + 8))(v0 + 120, v1);
  outlined destroy of PhoneCallDirectInvocationNLIntent(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1((v0 + 184));

  OUTLINED_FUNCTION_11();

  return v3();
}

uint64_t ContactUnsetRelationshipFlowStrategy.app.getter()
{
  if (one-time initialization token for instance != -1)
  {
    swift_once();
  }

  memcpy(__dst, &static PhoneCallFeatureFlags.instance, sizeof(__dst));
  v9 = &type metadata for PhoneCallFeatureFlags;
  v10 = &protocol witness table for PhoneCallFeatureFlags;
  *&v8 = swift_allocObject();
  memcpy((v8 + 16), &static PhoneCallFeatureFlags.instance, 0xC0uLL);
  outlined init with take of SPHConversation(&v8, v11);
  outlined init with copy of PhoneCallFeatureFlags(__dst, v6);
  __swift_destroy_boxed_opaque_existential_1(v11);
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  (*(v2 + 8))(v6, v1, v2);
  __swift_project_boxed_opaque_existential_1(v6, v7);
  if (dispatch thunk of DeviceState.isMac.getter())
  {
    if (one-time initialization token for siriFaceTimeMacExtension != -1)
    {
      swift_once();
    }

    v3 = &static DefaultPhoneApps.siriFaceTimeMacExtension;
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(v6, v7);
    if (dispatch thunk of DeviceState.isWatch.getter())
    {
      if (one-time initialization token for siriPhoneWatchExtension != -1)
      {
        swift_once();
      }

      v3 = &static DefaultPhoneApps.siriPhoneWatchExtension;
    }

    else
    {
      __swift_project_boxed_opaque_existential_1(v6, v7);
      if (dispatch thunk of DeviceState.isXRDevice.getter())
      {
        if (one-time initialization token for siriPhoneFaceTimeExtension != -1)
        {
          swift_once();
        }

        v3 = &static DefaultPhoneApps.siriPhoneFaceTimeExtension;
      }

      else
      {
        if (one-time initialization token for siriPhoneExtension != -1)
        {
          swift_once();
        }

        v3 = &static DefaultPhoneApps.siriPhoneExtension;
      }
    }
  }

  v4 = *v3;

  __swift_destroy_boxed_opaque_existential_1(v6);
  return v4;
}

uint64_t ContactUnsetRelationshipFlowStrategy.makeMeCardNotFoundResponse(requestedRelationship:resolveRecord:)()
{
  OUTLINED_FUNCTION_15();
  v1[20] = v2;
  v1[21] = v0;
  v1[18] = v3;
  v1[19] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  OUTLINED_FUNCTION_21(v5);
  v1[22] = OUTLINED_FUNCTION_45();
  v6 = type metadata accessor for TemplatingResult();
  v1[23] = v6;
  OUTLINED_FUNCTION_13_2(v6);
  v1[24] = v7;
  v1[25] = OUTLINED_FUNCTION_45();
  v8 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v8, v9, v10);
}

{
  OUTLINED_FUNCTION_23_0();
  __swift_project_boxed_opaque_existential_1((*(v0 + 168) + 120), *(*(v0 + 168) + 144));
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_18_1();
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 208) = v1;
  *v1 = v2;
  v1[1] = ContactUnsetRelationshipFlowStrategy.makeMeCardNotFoundResponse(requestedRelationship:resolveRecord:);
  OUTLINED_FUNCTION_41_10();

  return v3();
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v5 = v4;
  *(v6 + 216) = v0;

  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v7, v8, v9);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v5 = v4;
  *(v6 + 240) = v0;

  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v7, v8, v9);
}

{
  OUTLINED_FUNCTION_15();

  OUTLINED_FUNCTION_11();

  return v0();
}

{
  OUTLINED_FUNCTION_15();
  (*(v0[24] + 8))(v0[25], v0[23]);

  OUTLINED_FUNCTION_11();

  return v1();
}

uint64_t ContactUnsetRelationshipFlowStrategy.makeMeCardNotFoundResponse(requestedRelationship:resolveRecord:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_27();
  v21 = swift_task_alloc();
  *(v20 + 224) = v21;
  OUTLINED_FUNCTION_39_12(v21);
  v22 = swift_task_alloc();
  *(v20 + 232) = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo9SAAceViewCGMd, &_sSaySo9SAAceViewCGMR);
  *v22 = v20;
  v22[1] = ContactUnsetRelationshipFlowStrategy.makeMeCardNotFoundResponse(requestedRelationship:resolveRecord:);
  OUTLINED_FUNCTION_66_0();

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v23, v24, v25, 0xD000000000000040, v26, v27, v21, v28, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t ContactUnsetRelationshipFlowStrategy.makeMeCardNotFoundResponse(requestedRelationship:resolveRecord:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_39_4();
  v16 = *(v14 + 192);
  v15 = *(v14 + 200);
  v17 = *(v14 + 176);
  v42 = *(v14 + 184);
  v18 = *(v14 + 144);
  v19 = OUTLINED_FUNCTION_13_24();
  __swift_project_boxed_opaque_existential_1(v19, v20);
  v21 = OUTLINED_FUNCTION_2();
  v22(v21);
  v23 = OUTLINED_FUNCTION_13_24();
  __swift_project_boxed_opaque_existential_1(v23, v24);
  v25 = OUTLINED_FUNCTION_2();
  v26(v25);
  __swift_project_boxed_opaque_existential_1((v14 + 56), *(v14 + 80));
  OUTLINED_FUNCTION_13_24();
  dispatch thunk of DeviceState.isTextToSpeechEnabled.getter();
  OUTLINED_FUNCTION_23_9();
  type metadata accessor for NLContextUpdate();
  v27 = OUTLINED_FUNCTION_39_2();
  __swift_storeEnumTagSinglePayload(v27, v28, v29, v30);
  type metadata accessor for AceOutput();
  *&v31 = OUTLINED_FUNCTION_27_10();
  *(v14 + 96) = v31;
  v18[3] = v32;
  v18[4] = &protocol witness table for AceOutput;
  __swift_allocate_boxed_opaque_existential_1(v18);
  OUTLINED_FUNCTION_36_11();
  static AceOutputHelper.makeClarificationViewOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();

  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v14 + 96, &_s11SiriKitFlow0C8Activity_pSgMd, &_s11SiriKitFlow0C8Activity_pSgMR);
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v17, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  __swift_destroy_boxed_opaque_existential_1((v14 + 16));
  (*(v16 + 8))(v15, v42);
  __swift_destroy_boxed_opaque_existential_1((v14 + 56));

  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_15_11();

  return v34(v33, v34, v35, v36, v37, v38, v39, v40, v14 + 96, a10, v42, a12, a13, a14);
}

uint64_t closure #1 in ContactUnsetRelationshipFlowStrategy.makeMeCardNotFoundResponse(requestedRelationship:resolveRecord:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySaySo9SAAceViewCGs5Error_pGMd, &_sScCySaySo9SAAceViewCGs5Error_pGMR);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v18 - v8;
  v10 = *(a2 + 176);
  v11 = type metadata accessor for CNContactStore(255, &lazy cache variable for type metadata for INIntentResponse, INIntentResponse_ptr);
  v18[3] = type metadata accessor for PhoneCallBaseCatTemplatingService(0, a3, v11, v12);
  v18[4] = &protocol witness table for PhoneCallBaseCatTemplatingService<A, B>;
  v18[0] = v10;

  static StartCallViewBuilders.makeSiriSettingsButton(templatingService:sharedGlobals:)(v18, v19);
  __swift_destroy_boxed_opaque_existential_1(v18);
  v13 = v20;
  v14 = v21;
  __swift_project_boxed_opaque_existential_1(v19, v20);
  (*(v7 + 16))(v9, a1, v6);
  v15 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v16 = swift_allocObject();
  (*(v7 + 32))(v16 + v15, v9, v6);
  IdiomSensitiveViewBuilding.makeViews(_:)(partial apply for closure #1 in closure #1 in CallingIntentContactNeedsDisambiguationFlowStrategy.makeLegacyPromptForDisambiguation(resolveRecord:disambiguationList:), v16, v13, v14);

  return __swift_destroy_boxed_opaque_existential_1(v19);
}

uint64_t ContactUnsetRelationshipFlowStrategy.makeUnsupportedPlatformResponse(requestedRelationship:resolveRecord:)()
{
  OUTLINED_FUNCTION_15();
  v2 = v1;
  v4 = v3;
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 16) = v5;
  *v5 = v6;
  v5[1] = closure #2 in ActionableCallControlFlow.execute();

  return static UnsetRelationshipOutputFactory.makeUnsupportedPlatformResponse(requestedRelationship:)(v4, v2);
}

uint64_t ContactUnsetRelationshipFlowStrategy.makeErrorResponse(error:app:intent:)()
{
  OUTLINED_FUNCTION_15();
  v1[9] = v2;
  v1[10] = v0;
  v3 = type metadata accessor for CATOption();
  OUTLINED_FUNCTION_21(v3);
  v1[11] = OUTLINED_FUNCTION_45();
  v4 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v4, v5, v6);
}

{
  OUTLINED_FUNCTION_23_0();
  v1 = v0[10];
  type metadata accessor for StartCallCATsSimple(0);
  static CATOption.defaultMode.getter();
  v2 = CATWrapperSimple.__allocating_init(options:globals:)();
  v3 = static CommonOutputs.genericError(sharedGlobals:startCallCATsSimple:)(v1, v2);
  v0[12] = v3;

  v7 = (*(*v3 + 128) + **(*v3 + 128));
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[13] = v4;
  *v4 = v5;
  v4[1] = ContactUnsetRelationshipFlowStrategy.makeErrorResponse(error:app:intent:);

  return v7(v0 + 2);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v1 = *v0;
  OUTLINED_FUNCTION_4_2();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v3, v4, v5);
}

{
  OUTLINED_FUNCTION_15();
  if (*(v0 + 56))
  {
    *(v0 + 64) = *(v0 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    swift_willThrowTypedImpl();

    OUTLINED_FUNCTION_11();
  }

  else
  {
    outlined init with take of SPHConversation((v0 + 16), *(v0 + 72));

    OUTLINED_FUNCTION_8_1();
  }

  return v1();
}

uint64_t ContactUnsetRelationshipFlowStrategy.actionForInput(_:)()
{
  v1 = type metadata accessor for Parse();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v8[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  outlined init with copy of SignalProviding(v0, v8);
  Input.parse.getter();
  v5 = ContactPromptResponseParser.parseResponse(from:isConfirmationPrompt:)(v4, 0);
  (*(v2 + 8))(v4, v1);
  outlined destroy of ContactPromptResponseParser(v8);
  if (v5 - 5 < 2)
  {
    return static ActionForInput.ignore()();
  }

  if (v5 - 1 > 1)
  {
    return static ActionForInput.handle()();
  }

  return static ActionForInput.cancel()();
}

uint64_t ContactUnsetRelationshipFlowStrategy.parseUnsetRelationshipPersonFromResponse(input:resolveRecord:)()
{
  OUTLINED_FUNCTION_15();
  v1[48] = v2;
  v1[49] = v0;
  v1[47] = v3;
  v4 = type metadata accessor for UnsetRelationshipPerson();
  v1[50] = v4;
  OUTLINED_FUNCTION_13_2(v4);
  v1[51] = v5;
  v1[52] = swift_task_alloc();
  v1[53] = swift_task_alloc();
  v1[54] = swift_task_alloc();
  v1[55] = swift_task_alloc();
  v1[56] = swift_task_alloc();
  v1[57] = swift_task_alloc();
  v6 = type metadata accessor for Parse();
  v1[58] = v6;
  OUTLINED_FUNCTION_13_2(v6);
  v1[59] = v7;
  v1[60] = OUTLINED_FUNCTION_45();
  v8 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v8, v9, v10);
}

void ContactUnsetRelationshipFlowStrategy.parseUnsetRelationshipPersonFromResponse(input:resolveRecord:)()
{
  v1 = *(v0 + 480);
  v2 = *(v0 + 392);
  v3 = v2[3];
  v4 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v3);
  v5 = (*(v4 + 72))(v3, v4);
  Input.parse.getter();
  (*(*v5 + 192))(v1);

  v6 = OUTLINED_FUNCTION_55();
  v7(v6);
  if (!*(v0 + 80))
  {
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v0 + 56, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMR);
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v15 = type metadata accessor for Logger();
    __swift_project_value_buffer(v15, static Logger.siriPhone);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_0, v16, v17, "#ContactUnsetRelationshipFlowStrategy expected only 1 SiriPhone contact", v18, 2u);
      OUTLINED_FUNCTION_26_0(v18);
    }

    v19 = *(v0 + 400);
    v20 = *(v0 + 376);

    __swift_storeEnumTagSinglePayload(v20, 1, 1, v19);
LABEL_45:

    OUTLINED_FUNCTION_8_1();
    OUTLINED_FUNCTION_21_7();

    __asm { BRAA            X1, X16 }
  }

  outlined init with take of SPHConversation((v0 + 56), v0 + 16);
  OUTLINED_FUNCTION_35_7();
  v8 = OUTLINED_FUNCTION_55();
  v10 = *(v9(v8) + 16);

  OUTLINED_FUNCTION_35_7();
  v11 = OUTLINED_FUNCTION_55();
  v13 = v12(v11);
  v14 = v13;
  if (v10 == 1)
  {
    specialized Collection.first.getter(v13, v0 + 96);

    goto LABEL_19;
  }

  v21 = *(v13 + 16);
  if (!v21)
  {
LABEL_17:

    *(v0 + 128) = 0;
    *(v0 + 96) = 0u;
    *(v0 + 112) = 0u;
    goto LABEL_19;
  }

  v22 = 0;
  v23 = v13 + 32;
  while (v22 < *(v14 + 16))
  {
    outlined init with copy of SignalProviding(v23, v0 + 136);
    __swift_project_boxed_opaque_existential_1((v0 + 136), *(v0 + 160));
    v24 = OUTLINED_FUNCTION_33_4();
    v26 = v25(v24);
    if (v27)
    {
      v28 = v26;
      v29 = v27;

      v30 = HIBYTE(v29) & 0xF;
      if ((v29 & 0x2000000000000000) == 0)
      {
        v30 = v28 & 0xFFFFFFFFFFFFLL;
      }

      if (v30)
      {

        outlined init with take of SPHConversation((v0 + 136), v0 + 96);
LABEL_19:
        outlined init with copy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(v0 + 96, v0 + 176, &_s27PhoneCallFlowDelegatePlugin04SiriA7Contact_pSgMd, &_s27PhoneCallFlowDelegatePlugin04SiriA7Contact_pSgMR);
        if (*(v0 + 200))
        {
          __swift_project_boxed_opaque_existential_1((v0 + 176), *(v0 + 200));
          OUTLINED_FUNCTION_0();
          v31 = default argument 3 of SAUISayIt.init(message:dialogIdentifier:canUseServerTTS:listenAfterSpeaking:)();
          v32 = OUTLINED_FUNCTION_14_27(v31);
          SiriPhoneContact.getFirstName(filteredAlternatives:)(v32);
          __swift_destroy_boxed_opaque_existential_1((v0 + 176));
        }

        else
        {
          outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v0 + 176, &_s27PhoneCallFlowDelegatePlugin04SiriA7Contact_pSgMd, &_s27PhoneCallFlowDelegatePlugin04SiriA7Contact_pSgMR);
        }

        outlined init with copy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(v0 + 96, v0 + 216, &_s27PhoneCallFlowDelegatePlugin04SiriA7Contact_pSgMd, &_s27PhoneCallFlowDelegatePlugin04SiriA7Contact_pSgMR);
        if (*(v0 + 240))
        {
          __swift_project_boxed_opaque_existential_1((v0 + 216), *(v0 + 240));
          OUTLINED_FUNCTION_0();
          v33 = default argument 3 of SAUISayIt.init(message:dialogIdentifier:canUseServerTTS:listenAfterSpeaking:)();
          v34 = OUTLINED_FUNCTION_14_27(v33);
          SiriPhoneContact.getLastName(filteredAlternatives:)(v34);
          __swift_destroy_boxed_opaque_existential_1((v0 + 216));
        }

        else
        {
          outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v0 + 216, &_s27PhoneCallFlowDelegatePlugin04SiriA7Contact_pSgMd, &_s27PhoneCallFlowDelegatePlugin04SiriA7Contact_pSgMR);
        }

        outlined init with copy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(v0 + 96, v0 + 256, &_s27PhoneCallFlowDelegatePlugin04SiriA7Contact_pSgMd, &_s27PhoneCallFlowDelegatePlugin04SiriA7Contact_pSgMR);
        if (*(v0 + 280))
        {
          __swift_project_boxed_opaque_existential_1((v0 + 256), *(v0 + 280));
          OUTLINED_FUNCTION_0();
          v35 = default argument 3 of SAUISayIt.init(message:dialogIdentifier:canUseServerTTS:listenAfterSpeaking:)();
          v36 = OUTLINED_FUNCTION_14_27(v35);
          SiriPhoneContact.getMiddleName(filteredAlternatives:)(v36);
          __swift_destroy_boxed_opaque_existential_1((v0 + 256));
        }

        else
        {
          outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v0 + 256, &_s27PhoneCallFlowDelegatePlugin04SiriA7Contact_pSgMd, &_s27PhoneCallFlowDelegatePlugin04SiriA7Contact_pSgMR);
        }

        outlined init with copy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(v0 + 96, v0 + 296, &_s27PhoneCallFlowDelegatePlugin04SiriA7Contact_pSgMd, &_s27PhoneCallFlowDelegatePlugin04SiriA7Contact_pSgMR);
        if (*(v0 + 320))
        {
          __swift_project_boxed_opaque_existential_1((v0 + 296), *(v0 + 320));
          OUTLINED_FUNCTION_0();
          v37 = default argument 3 of SAUISayIt.init(message:dialogIdentifier:canUseServerTTS:listenAfterSpeaking:)();
          v38 = OUTLINED_FUNCTION_14_27(v37);
          SiriPhoneContact.getFullName(filteredAlternatives:)(v38);
          __swift_destroy_boxed_opaque_existential_1((v0 + 296));
        }

        else
        {
          outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v0 + 296, &_s27PhoneCallFlowDelegatePlugin04SiriA7Contact_pSgMd, &_s27PhoneCallFlowDelegatePlugin04SiriA7Contact_pSgMR);
        }

        outlined init with copy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(v0 + 96, v0 + 336, &_s27PhoneCallFlowDelegatePlugin04SiriA7Contact_pSgMd, &_s27PhoneCallFlowDelegatePlugin04SiriA7Contact_pSgMR);
        countAndFlagsBits = *(v0 + 360);
        if (countAndFlagsBits)
        {
          __swift_project_boxed_opaque_existential_1((v0 + 336), *(v0 + 360));
          OUTLINED_FUNCTION_0();
          v40 = SiriPhoneContact.getNickName()();
          countAndFlagsBits = v40.value._countAndFlagsBits;
          object = v40.value._object;
          __swift_destroy_boxed_opaque_existential_1((v0 + 336));
        }

        else
        {
          outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v0 + 336, &_s27PhoneCallFlowDelegatePlugin04SiriA7Contact_pSgMd, &_s27PhoneCallFlowDelegatePlugin04SiriA7Contact_pSgMR);
          object = 0;
        }

        v113 = countAndFlagsBits;
        v117 = object;
        UnsetRelationshipPerson.init(firstName:lastName:middleName:fullName:nickname:)();
        if (one-time initialization token for siriPhone == -1)
        {
LABEL_35:
          v42 = *(v0 + 408);
          v43 = type metadata accessor for Logger();
          __swift_project_value_buffer(v43, static Logger.siriPhone);
          v44 = *(v42 + 16);
          OUTLINED_FUNCTION_31_8();
          v44(v45, v46);
          OUTLINED_FUNCTION_31_8();
          v44(v47, v48);
          OUTLINED_FUNCTION_31_8();
          v44(v49, v50);
          OUTLINED_FUNCTION_31_8();
          v44(v51, v52);
          OUTLINED_FUNCTION_31_8();
          v44(v53, v54);
          v55 = Logger.logObject.getter();
          v56 = static os_log_type_t.debug.getter();
          v57 = os_log_type_enabled(v55, v56);
          v59 = *(v0 + 440);
          v58 = *(v0 + 448);
          v60 = *(v0 + 424);
          v61 = *(v0 + 432);
          v62 = *(v0 + 408);
          v63 = *(v0 + 416);
          v64 = *(v0 + 400);
          if (v57)
          {
            HIDWORD(v138) = v56;
            v65 = swift_slowAlloc();
            v143 = swift_slowAlloc();
            v148 = v143;
            *v65 = 136316418;
            *(v65 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000003ELL, 0x800000000045ADE0, &v148);
            *(v65 + 12) = 2080;
            v66 = UnsetRelationshipPerson.firstName.getter();
            v129 = v63;
            log = v55;
            if (v67)
            {
              v68 = v66;
            }

            else
            {
              v68 = 0;
            }

            if (v67)
            {
              v69 = v67;
            }

            else
            {
              v69 = 0xE000000000000000;
            }

            v125 = v60;
            v70 = *(v62 + 8);
            v70(v58, v64);
            v71 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v68, v69, &v148);

            *(v65 + 14) = v71;
            *(v65 + 22) = 2080;
            UnsetRelationshipPerson.lastName.getter();
            OUTLINED_FUNCTION_38_8();
            v72 = (v70)(v59, v64);
            OUTLINED_FUNCTION_25_10(v72, v73, v74, v75, v76, v77, v78, v79, v113, v117, v121, v125, v129, log, v138, v143);
            OUTLINED_FUNCTION_5();

            *(v65 + 24) = v59;
            *(v65 + 32) = 2080;
            UnsetRelationshipPerson.middleName.getter();
            OUTLINED_FUNCTION_38_8();
            v80 = (v70)(v61, v64);
            OUTLINED_FUNCTION_25_10(v80, v81, v82, v83, v84, v85, v86, v87, v114, v118, v122, v126, v130, loga, v139, v144);
            OUTLINED_FUNCTION_5();

            *(v65 + 34) = v61;
            *(v65 + 42) = 2080;
            v88 = v127;
            UnsetRelationshipPerson.fullName.getter();
            OUTLINED_FUNCTION_38_8();
            v89 = (v70)(v127, v64);
            OUTLINED_FUNCTION_25_10(v89, v90, v91, v92, v93, v94, v95, v96, v115, v119, v123, v127, v131, logb, v140, v145);
            OUTLINED_FUNCTION_5();

            *(v65 + 44) = v88;
            *(v65 + 52) = 2080;
            v97 = v132;
            UnsetRelationshipPerson.nickname.getter();
            OUTLINED_FUNCTION_38_8();
            v98 = (v70)(v132, v64);
            OUTLINED_FUNCTION_25_10(v98, v99, v100, v101, v102, v103, v104, v105, v116, v120, v124, v128, v132, logc, v141, v146);
            OUTLINED_FUNCTION_5();

            *(v65 + 54) = v97;
            _os_log_impl(&dword_0, logd, v142, "#ContactUnsetRelationshipFlowStrategy %s {\n    firstName = %s\n    lastName = %s\n    middleName = %s\n    fullName = %s\n    nickname = %s\n}", v65, 0x3Eu);
            swift_arrayDestroy();
            OUTLINED_FUNCTION_26_0(v147);
            OUTLINED_FUNCTION_26_0(v65);
          }

          else
          {

            v106 = *(v62 + 8);
            v106(v63, v64);
            v106(v60, v64);
            v106(v61, v64);
            v106(v59, v64);
            v106(v58, v64);
          }

          outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v0 + 96, &_s27PhoneCallFlowDelegatePlugin04SiriA7Contact_pSgMd, &_s27PhoneCallFlowDelegatePlugin04SiriA7Contact_pSgMR);
          v107 = *(v0 + 400);
          (*(*(v0 + 408) + 32))(*(v0 + 376), *(v0 + 456), v107);
          v108 = OUTLINED_FUNCTION_39_2();
          __swift_storeEnumTagSinglePayload(v108, v109, v110, v107);
          __swift_destroy_boxed_opaque_existential_1((v0 + 16));
          goto LABEL_45;
        }

LABEL_49:
        OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
        goto LABEL_35;
      }
    }

    ++v22;
    __swift_destroy_boxed_opaque_existential_1((v0 + 136));
    v23 += 40;
    if (v21 == v22)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
  goto LABEL_49;
}

uint64_t ContactUnsetRelationshipFlowStrategy.makePromptForPersonName(requestedRelationship:resolveRecord:)()
{
  OUTLINED_FUNCTION_15();
  v1[19] = v2;
  v1[20] = v0;
  v1[17] = v3;
  v1[18] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  OUTLINED_FUNCTION_21(v5);
  v1[21] = OUTLINED_FUNCTION_45();
  v6 = type metadata accessor for TemplatingResult();
  v1[22] = v6;
  OUTLINED_FUNCTION_13_2(v6);
  v1[23] = v7;
  v1[24] = OUTLINED_FUNCTION_45();
  v8 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v8, v9, v10);
}

{
  OUTLINED_FUNCTION_23_0();
  __swift_project_boxed_opaque_existential_1((*(v0 + 160) + 120), *(*(v0 + 160) + 144));
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_18_1();
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 200) = v1;
  *v1 = v2;
  v1[1] = ContactUnsetRelationshipFlowStrategy.makePromptForPersonName(requestedRelationship:resolveRecord:);
  OUTLINED_FUNCTION_41_10();

  return v3();
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v5 = v4;
  *(v6 + 208) = v0;

  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v7, v8, v9);
}

{
  v2 = *(v0 + 184);
  v1 = *(v0 + 192);
  v3 = *(v0 + 168);
  v4 = *(v0 + 176);
  v5 = *(v0 + 160);
  v6 = *(v0 + 136);
  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  v7 = OUTLINED_FUNCTION_13_24();
  v8(v7);
  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  v9 = OUTLINED_FUNCTION_13_24();
  v10(v9);
  __swift_project_boxed_opaque_existential_1((v0 + 56), *(v0 + 80));
  dispatch thunk of DeviceState.isTextToSpeechEnabled.getter();
  OUTLINED_FUNCTION_23_9();
  type metadata accessor for NLContextUpdate();
  v11 = OUTLINED_FUNCTION_39_2();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  type metadata accessor for AceOutput();
  *&v15 = OUTLINED_FUNCTION_27_10();
  *(v0 + 96) = v15;
  v6[3] = v16;
  v6[4] = &protocol witness table for AceOutput;
  __swift_allocate_boxed_opaque_existential_1(v6);
  OUTLINED_FUNCTION_36_11();
  static AceOutputHelper.makeClarificationViewOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v0 + 96, &_s11SiriKitFlow0C8Activity_pSgMd, &_s11SiriKitFlow0C8Activity_pSgMR);
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v3, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  (*(v2 + 8))(v1, v4);
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  OUTLINED_FUNCTION_8_1();

  return v17();
}

{
  OUTLINED_FUNCTION_15();

  OUTLINED_FUNCTION_11();

  return v0();
}

uint64_t ContactUnsetRelationshipFlowStrategy.actionForPromptForContactDisambiguationInput(_:resolveRecord:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v3 = type metadata accessor for Parse();
  OUTLINED_FUNCTION_7();
  v5 = v4;
  __chkstk_darwin(v6);
  v36 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v34 - v9;
  v11 = type metadata accessor for ActionForInput();
  OUTLINED_FUNCTION_7();
  v13 = v12;
  __chkstk_darwin(v14);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v34 - v18;
  v38 = a1;
  ContactUnsetRelationshipFlowStrategy.actionForInput(_:)();
  static ActionForInput.handle()();
  _s27PhoneCallFlowDelegatePlugin0A5ErrorOACs0F0AAWlTm_4(&lazy protocol witness table cache variable for type ActionForInput and conformance ActionForInput, &type metadata accessor for ActionForInput, &protocol conformance descriptor for ActionForInput);
  v20 = dispatch thunk of static Equatable.== infix(_:_:)();
  v37 = *(v13 + 8);
  v37(v16, v11);
  if ((v20 & 1) == 0)
  {
    return (*(v13 + 32))(v39, v19, v11);
  }

  Input.parse.getter();
  v21 = (*(v5 + 88))(v10, v3);
  v22 = enum case for Parse.directInvocation(_:);
  v35 = *(v5 + 8);
  v35(v10, v3);
  if (v21 == v22)
  {
    return (*(v13 + 32))(v39, v19, v11);
  }

  v24 = OUTLINED_FUNCTION_13_24();
  __swift_project_boxed_opaque_existential_1(v24, v25);
  v26 = OUTLINED_FUNCTION_2();
  v28 = v27(v26);
  v29 = v36;
  Input.parse.getter();
  (*(*v28 + 192))(v42, v29);

  v35(v29, v3);
  outlined init with copy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(v42, v40, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMR);
  if (!v41)
  {
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v40, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMR);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(v40, v41);
  v30 = OUTLINED_FUNCTION_33_4();
  v32 = v31(v30);
  __swift_destroy_boxed_opaque_existential_1(v40);
  v33 = *(v32 + 16);

  if (!v33)
  {
LABEL_8:
    static ActionForInput.ignore()();
    goto LABEL_9;
  }

  static ActionForInput.handle()();
LABEL_9:
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v42, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMR);
  return (v37)(v19, v11);
}

uint64_t ContactUnsetRelationshipFlowStrategy.makeDisambiguationItemContainer(contacts:resolveRecord:)(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = OUTLINED_FUNCTION_10();
  return _swift_task_switch(v2, v3, v4);
}

uint64_t ContactUnsetRelationshipFlowStrategy.makeDisambiguationItemContainer(contacts:resolveRecord:)()
{
  v1 = specialized Array.count.getter(*(v0 + 16));
  if (v1)
  {
    v2 = v1;
    result = specialized ContiguousArray.reserveCapacity(_:)();
    if (v2 < 0)
    {
      __break(1u);
      return result;
    }

    v4 = 0;
    v5 = *(v0 + 16);
    v6 = v5 & 0xC000000000000001;
    v7 = v5 + 32;
    do
    {
      if (v6)
      {
        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v8 = *(v7 + 8 * v4);
      }

      v9 = v8;
      ++v4;
      SAPerson.toINPerson()();

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    while (v2 != v4);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow32BasicDisambiguationItemContainerCySo8INPersonCGMd, &_s11SiriKitFlow32BasicDisambiguationItemContainerCySo8INPersonCGMR);
  swift_allocObject();
  v10 = BasicDisambiguationItemContainer.init(_:_:)();
  v11 = *(v0 + 8);

  return v11(v10);
}

uint64_t ContactUnsetRelationshipFlowStrategy.parseContactDisambiguationResult(input:paginatedItems:resolveRecord:)()
{
  OUTLINED_FUNCTION_15();
  v1[17] = v2;
  v1[18] = v0;
  v1[15] = v3;
  v1[16] = v4;
  v5 = type metadata accessor for PaginationRequest();
  v1[19] = v5;
  OUTLINED_FUNCTION_13_2(v5);
  v1[20] = v6;
  v1[21] = OUTLINED_FUNCTION_45();
  v7 = type metadata accessor for Parse();
  v1[22] = v7;
  OUTLINED_FUNCTION_13_2(v7);
  v1[23] = v8;
  v1[24] = OUTLINED_FUNCTION_45();
  v9 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t ContactUnsetRelationshipFlowStrategy.parseContactDisambiguationResult(input:paginatedItems:resolveRecord:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_39_4();
  v16 = *(v14 + 184);
  v15 = *(v14 + 192);
  v73 = *(v14 + 176);
  v17 = *(v14 + 144);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow22PaginatedItemContainerVySo8INPersonCGMd, &_s11SiriKitFlow22PaginatedItemContainerVySo8INPersonCGMR);
  v18 = PaginatedItemContainer.items.getter();
  __swift_project_boxed_opaque_existential_1(v17, v17[3]);
  v19 = OUTLINED_FUNCTION_2();
  v21 = v20(v19);
  outlined init with copy of SignalProviding(v21 + 160, v14 + 24);

  outlined init with copy of SignalProviding(v17, v14 + 64);
  *(v14 + 16) = v18;
  Input.parse.getter();
  v22 = ContactDisambiguationPromptResponseParser.parseDisambiguationResponse(from:)(v15);
  v24 = v23;
  (*(v16 + 8))(v15, v73);
  outlined destroy of ContactDisambiguationPromptResponseParser(v14 + 16);
  if (v24 == 255)
  {
    goto LABEL_10;
  }

  if (v24 != 2)
  {
    if (v24 == 1)
    {
      v25 = OUTLINED_FUNCTION_96();
      outlined copy of ContactDisambiguationPromptResponse(v25, v26);
      if (INPerson.hasNameComponents.getter())
      {
        goto LABEL_15;
      }

      v27 = [v22 _displayName];
      if (v27)
      {
        v28 = v27;
        v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v31 = v30;
      }

      else
      {
        v29 = 0;
        v31 = 0;
      }

      v35 = specialized Optional<A>.isNilOrEmpty.getter(v29, v31);

      if (v35 && (v36 = [v22 contactIdentifier]) != 0)
      {
        v37 = v36;
        v38 = *(v14 + 144);
        v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v41 = v40;

        v42 = v38[8];
        v43 = v38[9];
        __swift_project_boxed_opaque_existential_1(v38 + 5, v42);
        v68 = (*(v43 + 8))(v39, v41, v42, v43);

        v69 = OUTLINED_FUNCTION_96();
        outlined consume of ContactDisambiguationPromptResponse?(v69, v70);
        if (v68)
        {
          v71 = OUTLINED_FUNCTION_96();
          outlined consume of ContactDisambiguationPromptResponse?(v71, v72);
          v32 = v68;
          goto LABEL_8;
        }
      }

      else
      {
LABEL_15:
        v44 = OUTLINED_FUNCTION_96();
        outlined consume of ContactDisambiguationPromptResponse?(v44, v45);
      }

      v46 = OUTLINED_FUNCTION_96();
      outlined copy of ContactDisambiguationPromptResponse(v46, v47);
      goto LABEL_17;
    }

    outlined consume of ContactDisambiguationPromptResponse?(v22, v24);
LABEL_10:
    static PaginationRequest.firstPage()();
    type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SAPerson, SAPerson_ptr);
    static DisambiguationResult.paginate(_:)();
    v33 = OUTLINED_FUNCTION_0();
    v34(v33);
    goto LABEL_22;
  }

  PaginatedItemContainer.items.getter();
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INPerson, INPerson_ptr);
  Array.subscript.getter();

  outlined consume of ContactDisambiguationPromptResponse?(v22, 2u);
  v32 = *(v14 + 112);
LABEL_8:
  v22 = v32;
LABEL_17:
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v48 = type metadata accessor for Logger();
  __swift_project_value_buffer(v48, static Logger.siriPhone);
  v49 = v22;
  v50 = Logger.logObject.getter();
  v51 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v50, v51))
  {
    v52 = OUTLINED_FUNCTION_42();
    v53 = swift_slowAlloc();
    *v52 = 138412290;
    *(v52 + 4) = v49;
    *v53 = v49;
    v54 = v49;
    OUTLINED_FUNCTION_45_1(&dword_0, v55, v56, "#ContactUnsetRelationshipStrategy Chosen person: %@");
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v53, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    OUTLINED_FUNCTION_26_0(v53);
    OUTLINED_FUNCTION_26_0(v52);
  }

  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SAPerson, SAPerson_ptr);
  v57 = OUTLINED_FUNCTION_5();
  v58 = SAPerson.init(person:)(v57);
  *(v14 + 104) = v58;
  static DisambiguationResult.chosenItem(_:)();

LABEL_22:

  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_15_11();

  return v60(v59, v60, v61, v62, v63, v64, v65, v66, a9, v73, a11, a12, a13, a14);
}

uint64_t ContactUnsetRelationshipFlowStrategy.makePromptForContactDisambiguation(paginatedItems:resolveRecord:)()
{
  OUTLINED_FUNCTION_15();
  v1[10] = v2;
  v1[11] = v0;
  v1[8] = v3;
  v1[9] = v4;
  v1[7] = v5;
  v6 = type metadata accessor for DialogPhase();
  OUTLINED_FUNCTION_21(v6);
  v1[12] = OUTLINED_FUNCTION_45();
  v7 = type metadata accessor for OutputGenerationManifest();
  v1[13] = v7;
  OUTLINED_FUNCTION_13_2(v7);
  v1[14] = v8;
  v1[15] = OUTLINED_FUNCTION_45();
  v9 = type metadata accessor for NLContextUpdate();
  v1[16] = v9;
  OUTLINED_FUNCTION_13_2(v9);
  v1[17] = v10;
  v1[18] = OUTLINED_FUNCTION_45();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow28WindowedPaginationParametersVSgMd, &_s11SiriKitFlow28WindowedPaginationParametersVSgMR);
  OUTLINED_FUNCTION_21(v11);
  v1[19] = OUTLINED_FUNCTION_45();
  v12 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v12, v13, v14);
}

{
  OUTLINED_FUNCTION_23_0();
  v1 = v0[19];
  v2 = v0[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow22PaginatedItemContainerVySo8INPersonCGMd, &_s11SiriKitFlow22PaginatedItemContainerVySo8INPersonCGMR);
  v3 = PaginatedItemContainer.items.getter();
  v0[20] = v3;
  type metadata accessor for ParameterResolutionRecord();
  v4 = ParameterResolutionRecord.intent.getter();
  ContactUnsetRelationshipFlowStrategy.getAppForDisplay(intent:)(v4, v2);

  App.appIdentifier.getter();

  type metadata accessor for CATGlobals();
  CATGlobals.__allocating_init()();
  type metadata accessor for ContactResolutionPatternGenerator();
  swift_allocObject();
  OUTLINED_FUNCTION_33_4();
  v0[21] = ContactResolutionPatternGenerator.init(appBundleId:globals:)();
  v5 = type metadata accessor for WindowedPaginationParameters();
  __swift_storeEnumTagSinglePayload(v1, 1, 1, v5);
  v6 = swift_task_alloc();
  v0[22] = v6;
  *v6 = v0;
  v6[1] = ContactUnsetRelationshipFlowStrategy.makePromptForContactDisambiguation(paginatedItems:resolveRecord:);
  v7 = v0[19];

  return ContactResolutionPatternGenerator.generateDetailedDisambiguationContactNames(contacts:contactPickerDirectInvocationID:contactSelectionDirectInvocationID:windowedPaginationParameters:)(v3, 0xD000000000000033, 0x8000000000459B70, 0xD000000000000042, 0x8000000000458DE0, v7);
}

{
  OUTLINED_FUNCTION_27();
  v2 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_1();
  *v5 = v4;
  v2[23] = v6;
  v2[24] = v0;

  if (v0)
  {
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v2[19], &_s11SiriKitFlow28WindowedPaginationParametersVSgMd, &_s11SiriKitFlow28WindowedPaginationParametersVSgMR);

    OUTLINED_FUNCTION_66_0();

    return _swift_task_switch(v7, v8, v9);
  }

  else
  {
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v2[19], &_s11SiriKitFlow28WindowedPaginationParametersVSgMd, &_s11SiriKitFlow28WindowedPaginationParametersVSgMR);

    v10 = swift_task_alloc();
    v2[25] = v10;
    *v10 = v4;
    v10[1] = ContactUnsetRelationshipFlowStrategy.makePromptForContactDisambiguation(paginatedItems:resolveRecord:);
    v11 = v2[20];
    v12 = v2[18];
    v13 = v2[10];

    return ContactUnsetRelationshipFlowStrategy.contactNeedsDisambiguationContext(persons:)(v12, v11, v13);
  }
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v1 = *v0;
  OUTLINED_FUNCTION_4_2();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v3, v4, v5);
}

{
  OUTLINED_FUNCTION_23_0();
  v1 = v0[18];
  v2 = v0[11];
  static DialogPhase.clarification.getter();
  *(swift_task_alloc() + 16) = v1;
  OutputGenerationManifest.init(dialogPhase:_:)();

  v3 = v2[3];
  v4 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v3);
  (*(v4 + 136))(v3, v4);
  OUTLINED_FUNCTION_35_7();
  v5 = v2[1];
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[26] = v6;
  *v6 = v7;
  v6[1] = ContactUnsetRelationshipFlowStrategy.makePromptForContactDisambiguation(paginatedItems:resolveRecord:);
  v8 = v0[23];
  v9 = v0[15];
  v10 = v0[7];

  return dispatch thunk of ResponseGenerating.makeResponseOutput(patternExecutionResult:outputGenerationManifest:)(v10, v8, v9, v3, v5);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v5 = v4;
  *(v6 + 216) = v0;

  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v7, v8, v9);
}

{

  v1 = OUTLINED_FUNCTION_33_4();
  v2(v1);
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v3 = OUTLINED_FUNCTION_55();
  v4(v3);

  OUTLINED_FUNCTION_8_1();

  return v5();
}

{
  OUTLINED_FUNCTION_27();

  OUTLINED_FUNCTION_11();

  return v0();
}

{
  OUTLINED_FUNCTION_23_0();
  v1 = *(v0 + 120);
  v2 = *(v0 + 104);
  v3 = *(v0 + 112);

  (*(v3 + 8))(v1, v2);
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v4 = OUTLINED_FUNCTION_0();
  v5(v4);

  OUTLINED_FUNCTION_11();

  return v6();
}

uint64_t ContactUnsetRelationshipFlowStrategy.getAppForDisplay(intent:)(uint64_t a1, uint64_t a2)
{
  v4 = ContactUnsetRelationshipFlowStrategy.app.getter();
  v5 = (*(*(*(a2 + 24) + 16) + 8))(*(a2 + 16));
  v6 = v2[3];
  v7 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v6);
  (*(v7 + 8))(v10, v6, v7);
  v8 = static UserFacingCallingAppUtils.getCommAppForLaunch(originalApp:preferredCallProvider:deviceState:)(v4, v5, v10);

  __swift_destroy_boxed_opaque_existential_1(v10);
  return v8;
}

uint64_t ContactUnsetRelationshipFlowStrategy.contactNeedsDisambiguationContext(persons:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return _swift_task_switch(ContactUnsetRelationshipFlowStrategy.contactNeedsDisambiguationContext(persons:), 0, 0);
}

uint64_t ContactUnsetRelationshipFlowStrategy.contactNeedsDisambiguationContext(persons:)()
{
  OUTLINED_FUNCTION_23_0();
  v1 = v0[3];
  v2 = swift_task_alloc();
  v0[6] = v2;
  OUTLINED_FUNCTION_39_12(v2)[5] = v1;
  v3 = swift_task_alloc();
  v0[7] = v3;
  type metadata accessor for NLContextUpdate();
  *v3 = v0;
  v3[1] = ContactUnsetRelationshipFlowStrategy.contactNeedsDisambiguationContext(persons:);
  OUTLINED_FUNCTION_66_0();

  return withCheckedContinuation<A>(isolation:function:_:)(v4);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v1 = *v0;
  OUTLINED_FUNCTION_4_2();
  *v2 = v1;

  OUTLINED_FUNCTION_11();

  return v3();
}

uint64_t closure #1 in ContactUnsetRelationshipFlowStrategy.makePromptForContactDisambiguation(paginatedItems:resolveRecord:)(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  __chkstk_darwin(v3 - 8);
  v5 = &v8 - v4;
  v6 = type metadata accessor for NLContextUpdate();
  (*(*(v6 - 8) + 16))(v5, a2, v6);
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v6);
  OutputGenerationManifest.nlContextUpdate.setter();
  OutputGenerationManifest.canUseServerTTS.setter();
  return OutputGenerationManifest.listenAfterSpeaking.setter();
}

uint64_t ContactUnsetRelationshipFlowStrategy.parsePromptToSaveRelationshipResponse(input:resolveRecord:)()
{
  OUTLINED_FUNCTION_15();
  v1[8] = v2;
  v1[9] = v0;
  v1[7] = v3;
  v4 = type metadata accessor for PhoneError(0);
  v1[10] = v4;
  OUTLINED_FUNCTION_21(v4);
  v1[11] = OUTLINED_FUNCTION_45();
  v5 = type metadata accessor for Parse();
  v1[12] = v5;
  OUTLINED_FUNCTION_13_2(v5);
  v1[13] = v6;
  v1[14] = OUTLINED_FUNCTION_45();
  v7 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v7, v8, v9);
}

{
  OUTLINED_FUNCTION_23_0();
  v1 = v0[14];
  outlined init with copy of SignalProviding(v0[9], (v0 + 2));
  Input.parse.getter();
  v2 = ContactPromptResponseParser.parseResponse(from:isConfirmationPrompt:)(v1, 0);
  v3 = OUTLINED_FUNCTION_55();
  v4(v3);
  outlined destroy of ContactPromptResponseParser((v0 + 2));
  if (v2 >= 3u)
  {
    v9 = v0[11];
    *v9 = 0;
    v9[1] = 0;
    OUTLINED_FUNCTION_34_6();
    OUTLINED_FUNCTION_4_22();
    v12 = _s27PhoneCallFlowDelegatePlugin0A5ErrorOACs0F0AAWlTm_4(v10, v11, &protocol conformance descriptor for PhoneError);
    OUTLINED_FUNCTION_147(v12);
    PhoneError.logged()(v13);
    outlined destroy of PhoneError(v9);
    swift_willThrow();

    OUTLINED_FUNCTION_11();
  }

  else
  {
    v5 = v0[7];
    v6 = **(&off_5200D8 + v2);
    type metadata accessor for ConfirmationResponse();
    OUTLINED_FUNCTION_23_1();
    (*(v7 + 104))(v5, v6);

    OUTLINED_FUNCTION_8_1();
  }

  return v8();
}

uint64_t ContactUnsetRelationshipFlowStrategy.makePromptToSaveRelationship(person:requestedRelationship:resolveRecord:)()
{
  OUTLINED_FUNCTION_15();
  v1[20] = v2;
  v1[21] = v0;
  v1[18] = v3;
  v1[19] = v4;
  v1[17] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  OUTLINED_FUNCTION_21(v6);
  v1[22] = OUTLINED_FUNCTION_45();
  v7 = type metadata accessor for TemplatingResult();
  v1[23] = v7;
  OUTLINED_FUNCTION_13_2(v7);
  v1[24] = v8;
  v1[25] = OUTLINED_FUNCTION_45();
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v1[26] = v9;
  *v9 = v10;
  v9[1] = ContactUnsetRelationshipFlowStrategy.makePromptToSaveRelationship(person:requestedRelationship:resolveRecord:);

  return static ConfirmationViewUtils.makeYesNoConfirmationView(labelTemplatesProvider:sharedGlobals:)(v0 + 80, v0);
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_28();
  v3 = v2;
  OUTLINED_FUNCTION_13_1();
  *v4 = v3;
  v5 = *v1;
  *v4 = *v1;
  *(v3 + 216) = v6;

  if (v0)
  {

    v7 = *(v5 + 8);

    return v7();
  }

  else
  {
    OUTLINED_FUNCTION_66_0();

    return _swift_task_switch(v9, v10, v11);
  }
}

{
  OUTLINED_FUNCTION_23_0();
  v1 = v0[21];
  v2 = v1[18];
  v3 = v1[19];
  __swift_project_boxed_opaque_existential_1(v1 + 15, v2);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_18_1();
  v11 = (v4 + *v4);
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[28] = v5;
  *v5 = v6;
  v5[1] = ContactUnsetRelationshipFlowStrategy.makePromptToSaveRelationship(person:requestedRelationship:resolveRecord:);
  v7 = v0[25];
  v9 = v0[18];
  v8 = v0[19];

  return v11(v7, v8, v9, v2, v3);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v3 = v2;
  OUTLINED_FUNCTION_13_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v6 = v5;
  *(v3 + 232) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v7, v8, v9);
}

{
  OUTLINED_FUNCTION_15();

  OUTLINED_FUNCTION_11();

  return v0();
}

uint64_t ContactUnsetRelationshipFlowStrategy.makePromptToSaveRelationship(person:requestedRelationship:resolveRecord:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_39_4();
  v16 = *(v14 + 192);
  v15 = *(v14 + 200);
  v17 = *(v14 + 176);
  v39 = *(v14 + 216);
  v40 = *(v14 + 184);
  v18 = *(v14 + 168);
  v19 = *(v14 + 136);
  v21 = v18[3];
  v20 = v18[4];
  __swift_project_boxed_opaque_existential_1(v18, v21);
  (*(v20 + 8))(v21, v20);
  v22 = v18[3];
  v23 = v18[4];
  __swift_project_boxed_opaque_existential_1(v18, v22);
  (*(v23 + 8))(v22, v23);
  __swift_project_boxed_opaque_existential_1((v14 + 56), *(v14 + 80));
  dispatch thunk of DeviceState.isTextToSpeechEnabled.getter();
  TemplatingResult.shouldListenAfterSpeaking(defaultBehavior:)(1);
  ContactUnsetRelationshipFlowStrategy.contactNeedsConfirmationContext.getter();
  type metadata accessor for NLContextUpdate();
  v24 = OUTLINED_FUNCTION_39_2();
  __swift_storeEnumTagSinglePayload(v24, v25, v26, v27);
  type metadata accessor for AceOutput();
  *&v28 = OUTLINED_FUNCTION_27_10();
  *(v14 + 96) = v28;
  v19[3] = v29;
  v19[4] = &protocol witness table for AceOutput;
  __swift_allocate_boxed_opaque_existential_1(v19);
  static AceOutputHelper.makeClarificationViewOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();

  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v14 + 96, &_s11SiriKitFlow0C8Activity_pSgMd, &_s11SiriKitFlow0C8Activity_pSgMR);
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v17, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  __swift_destroy_boxed_opaque_existential_1((v14 + 16));
  (*(v16 + 8))(v15, v40);
  __swift_destroy_boxed_opaque_existential_1((v14 + 56));

  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_15_11();

  return v31(v30, v31, v32, v33, v34, v35, v36, v37, v14 + 96, v39, v40, a12, a13, a14);
}

PhoneCallFlowDelegatePlugin::PhoneCallSlotNames_optional ContactUnsetRelationshipFlowStrategy.contactNeedsConfirmationContext.getter()
{
  _s27PhoneCallFlowDelegatePlugin0aB17NLContextProviderC34makeGenericConfirmationNLv3Context07SiriKitC00F6UpdateVyFZSo8INIntentC_So0P8ResponseCTt0g5();
  v0._countAndFlagsBits = 0x73746361746E6F63;
  v0._object = 0xE800000000000000;
  result.value = PhoneCallSlotNames.init(rawValue:)(v0).value;
  if ((result.value & 0xFE) == 4)
  {
    _s27PhoneCallFlowDelegatePlugin0aB17NLContextProviderC22makeSDAForConfirmation33_3C2ABB69DDB872D121E37A32A4E694A9LLSay12SiriNLUTypes0T29_Nlu_External_SystemDialogActVGSgyFZSo8INIntentC_So16INIntentResponseCTtg5();
    return NLContextUpdate.nluSystemDialogActs.setter();
  }

  return result;
}

uint64_t closure #1 in ContactUnsetRelationshipFlowStrategy.contactNeedsDisambiguationContext(persons:)(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy11SiriKitFlow15NLContextUpdateVs5NeverOGMd, &_sScCy11SiriKitFlow15NLContextUpdateVs5NeverOGMR);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v18 - v6;
  v8 = a2[3];
  v9 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v8);
  (*(v9 + 8))(v19, v8, v9);
  v10 = a2[3];
  v11 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v10);
  (*(v11 + 184))(v18, v10, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0aB17NLContextProviderCySo8INIntentCSo0H8ResponseCGMd, &_s27PhoneCallFlowDelegatePlugin0aB17NLContextProviderCySo8INIntentCSo0H8ResponseCGMR);
  swift_allocObject();
  v12 = specialized PhoneCallNLContextProvider.init(deviceState:assistantProperties:)();
  specialized _arrayForceCast<A, B>(_:)();
  v14 = v13;
  (*(v5 + 16))(v7, a1, v4);
  v15 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v16 = swift_allocObject();
  (*(v5 + 32))(v16 + v15, v7, v4);
  (*(*v12 + class metadata base offset for PhoneCallNLContextProvider + 40))(0x73746361746E6F63, 0xE800000000000000, v14, partial apply for closure #1 in closure #1 in ContactUnsetRelationshipFlowStrategy.contactNeedsDisambiguationContext(persons:), v16);
}

uint64_t closure #1 in closure #1 in ContactUnsetRelationshipFlowStrategy.contactNeedsDisambiguationContext(persons:)(uint64_t a1)
{
  v2 = type metadata accessor for NLContextUpdate();
  v3 = __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy11SiriKitFlow15NLContextUpdateVs5NeverOGMd, &_sScCy11SiriKitFlow15NLContextUpdateVs5NeverOGMR);
  return CheckedContinuation.resume(returning:)();
}

uint64_t protocol witness for UnsupportedUnsetRelationshipFlowStrategyAsync.parseRequestedRelationship(resolveRecord:) in conformance ContactUnsetRelationshipFlowStrategy<A>()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = closure #1 in ActionableCallControlFlow.execute();

  return ContactUnsetRelationshipFlowStrategy.parseRequestedRelationship(resolveRecord:)();
}

uint64_t protocol witness for UnsupportedUnsetRelationshipFlowStrategyAsync.applyPersonToIntent(person:requestedRelationship:resolveRecord:) in conformance ContactUnsetRelationshipFlowStrategy<A>()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = closure #1 in ActionableCallControlFlow.execute();

  return ContactUnsetRelationshipFlowStrategy.applyPersonToIntent(person:requestedRelationship:resolveRecord:)();
}

uint64_t protocol witness for UnsupportedUnsetRelationshipFlowStrategyAsync.makeMeCardNotFoundResponse(requestedRelationship:resolveRecord:) in conformance ContactUnsetRelationshipFlowStrategy<A>()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = closure #1 in ActionableCallControlFlow.execute();

  return ContactUnsetRelationshipFlowStrategy.makeMeCardNotFoundResponse(requestedRelationship:resolveRecord:)();
}

uint64_t protocol witness for UnsupportedUnsetRelationshipFlowStrategyAsync.makeUnsupportedPlatformResponse(requestedRelationship:resolveRecord:) in conformance ContactUnsetRelationshipFlowStrategy<A>()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = closure #1 in ActionableCallControlFlow.execute();

  return ContactUnsetRelationshipFlowStrategy.makeUnsupportedPlatformResponse(requestedRelationship:resolveRecord:)();
}

uint64_t protocol witness for UnsupportedUnsetRelationshipFlowStrategyAsync.makeIntentCancelledResponse(resolveRecord:) in conformance ContactUnsetRelationshipFlowStrategy<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = closure #1 in ActionableCallControlFlow.execute();

  return UnsupportedUnsetRelationshipFlowStrategyAsync.makeIntentCancelledResponse(resolveRecord:)(a1, a2, a3, a4);
}

uint64_t protocol witness for UnsupportedUnsetRelationshipFlowStrategyAsync.parseUnsetRelationshipPersonFromResponse(input:resolveRecord:) in conformance ContactUnsetRelationshipFlowStrategy<A>()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = closure #1 in ActionableCallControlFlow.execute();

  return ContactUnsetRelationshipFlowStrategy.parseUnsetRelationshipPersonFromResponse(input:resolveRecord:)();
}

uint64_t protocol witness for UnsupportedUnsetRelationshipFlowStrategyAsync.makePromptForPersonName(requestedRelationship:resolveRecord:) in conformance ContactUnsetRelationshipFlowStrategy<A>()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = closure #1 in ActionableCallControlFlow.execute();

  return ContactUnsetRelationshipFlowStrategy.makePromptForPersonName(requestedRelationship:resolveRecord:)();
}

uint64_t protocol witness for UnsupportedUnsetRelationshipFlowStrategyAsync.makeRepromptForPersonNameOnEmptyParse(requestedRelationship:resolveRecord:) in conformance ContactUnsetRelationshipFlowStrategy<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = closure #1 in ActionableCallControlFlow.execute();

  return UnsupportedUnsetRelationshipFlowStrategyAsync.makeRepromptForPersonNameOnEmptyParse(requestedRelationship:resolveRecord:)(a1, a2, a3, a4, a5);
}

uint64_t protocol witness for UnsupportedUnsetRelationshipFlowStrategyAsync.makeRepromptForPersonNameOnLowConfidence(requestedRelationship:resolveRecord:) in conformance ContactUnsetRelationshipFlowStrategy<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = closure #1 in ActionableCallControlFlow.execute();

  return UnsupportedUnsetRelationshipFlowStrategyAsync.makeRepromptForPersonNameOnLowConfidence(requestedRelationship:resolveRecord:)(a1, a2, a3, a4, a5);
}

uint64_t protocol witness for UnsupportedUnsetRelationshipFlowStrategyAsync.makeContactNotFoundResponse(requestedPerson:resolveRecord:) in conformance ContactUnsetRelationshipFlowStrategy<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = closure #1 in ActionableCallControlFlow.execute();

  return UnsupportedUnsetRelationshipFlowStrategyAsync.makeContactNotFoundResponse(requestedPerson:resolveRecord:)(a1, a2, a3, a4, a5);
}

uint64_t protocol witness for UnsupportedUnsetRelationshipFlowStrategyAsync.makeDisambiguationItemContainer(contacts:resolveRecord:) in conformance ContactUnsetRelationshipFlowStrategy<A>(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = protocol witness for NeedsDisambiguationFlowStrategyAsync.makeDisambiguationItemContainer(resolveRecord:) in conformance ContactNeedsDisambiguationFlowStrategy<A>;

  return ContactUnsetRelationshipFlowStrategy.makeDisambiguationItemContainer(contacts:resolveRecord:)(a2);
}

uint64_t protocol witness for UnsupportedUnsetRelationshipFlowStrategyAsync.parseContactDisambiguationResult(input:paginatedItems:resolveRecord:) in conformance ContactUnsetRelationshipFlowStrategy<A>()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = closure #1 in ActionableCallControlFlow.execute();

  return ContactUnsetRelationshipFlowStrategy.parseContactDisambiguationResult(input:paginatedItems:resolveRecord:)();
}

uint64_t protocol witness for UnsupportedUnsetRelationshipFlowStrategyAsync.makePromptForContactDisambiguation(paginatedItems:resolveRecord:) in conformance ContactUnsetRelationshipFlowStrategy<A>()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = closure #1 in ActionableCallControlFlow.execute();

  return ContactUnsetRelationshipFlowStrategy.makePromptForContactDisambiguation(paginatedItems:resolveRecord:)();
}

uint64_t protocol witness for UnsupportedUnsetRelationshipFlowStrategyAsync.makeRepromptForContactDisambiguationOnEmptyParse(paginatedItems:resolveRecord:) in conformance ContactUnsetRelationshipFlowStrategy<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = closure #1 in ActionableCallControlFlow.execute();

  return UnsupportedUnsetRelationshipFlowStrategyAsync.makeRepromptForContactDisambiguationOnEmptyParse(paginatedItems:resolveRecord:)(a1, a2, a3, a4, a5);
}

uint64_t protocol witness for UnsupportedUnsetRelationshipFlowStrategyAsync.makeRepromptForContactDisambiguationOnLowConfidence(paginatedItems:resolveRecord:) in conformance ContactUnsetRelationshipFlowStrategy<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = closure #1 in ActionableCallControlFlow.execute();

  return UnsupportedUnsetRelationshipFlowStrategyAsync.makeRepromptForContactDisambiguationOnLowConfidence(paginatedItems:resolveRecord:)(a1, a2, a3, a4, a5);
}

uint64_t protocol witness for UnsupportedUnsetRelationshipFlowStrategyAsync.parsePromptToSaveRelationshipResponse(input:resolveRecord:) in conformance ContactUnsetRelationshipFlowStrategy<A>()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = closure #1 in ActionableCallControlFlow.execute();

  return ContactUnsetRelationshipFlowStrategy.parsePromptToSaveRelationshipResponse(input:resolveRecord:)();
}

uint64_t protocol witness for UnsupportedUnsetRelationshipFlowStrategyAsync.makePromptToSaveRelationship(person:requestedRelationship:resolveRecord:) in conformance ContactUnsetRelationshipFlowStrategy<A>()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = closure #1 in ActionableCallControlFlow.execute();

  return ContactUnsetRelationshipFlowStrategy.makePromptToSaveRelationship(person:requestedRelationship:resolveRecord:)();
}

uint64_t protocol witness for UnsupportedUnsetRelationshipFlowStrategyAsync.makeRepromptToSaveRelationshipOnEmptyParse(person:requestedRelationship:resolveRecord:) in conformance ContactUnsetRelationshipFlowStrategy<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = closure #1 in ActionableCallControlFlow.execute();

  return UnsupportedUnsetRelationshipFlowStrategyAsync.makeRepromptToSaveRelationshipOnEmptyParse(person:requestedRelationship:resolveRecord:)(a1, a2, a3, a4, a5, a6);
}

uint64_t protocol witness for UnsupportedUnsetRelationshipFlowStrategyAsync.makeRepromptToSaveRelationshipOnLowConfidence(person:requestedRelationship:resolveRecord:) in conformance ContactUnsetRelationshipFlowStrategy<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = closure #1 in ActionableCallControlFlow.execute();

  return UnsupportedUnsetRelationshipFlowStrategyAsync.makeRepromptToSaveRelationshipOnLowConfidence(person:requestedRelationship:resolveRecord:)(a1, a2, a3, a4, a5, a6);
}

uint64_t protocol witness for UnsupportedUnsetRelationshipFlowStrategyAsync.makeSaveRelationshipCompletedResponse(person:requestedRelationship:resolveRecord:) in conformance ContactUnsetRelationshipFlowStrategy<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = closure #1 in ActionableCallControlFlow.execute();

  return UnsupportedUnsetRelationshipFlowStrategyAsync.makeSaveRelationshipCompletedResponse(person:requestedRelationship:resolveRecord:)(a1, a2, a3, a4, a5, a6);
}

uint64_t protocol witness for UnsupportedUnsetRelationshipFlowStrategyAsync.makeSaveRelationshipRejectedResponse(person:requestedRelationship:resolveRecord:) in conformance ContactUnsetRelationshipFlowStrategy<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = closure #1 in ActionableCallControlFlow.execute();

  return UnsupportedUnsetRelationshipFlowStrategyAsync.makeSaveRelationshipRejectedResponse(person:requestedRelationship:resolveRecord:)(a1, a2, a3, a4, a5, a6);
}

uint64_t protocol witness for UnsupportedUnsetRelationshipFlowStrategyAsync.makeErrorResponse(error:app:intent:) in conformance ContactUnsetRelationshipFlowStrategy<A>()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = closure #1 in ActionableCallControlFlow.execute();

  return ContactUnsetRelationshipFlowStrategy.makeErrorResponse(error:app:intent:)();
}

uint64_t _s27PhoneCallFlowDelegatePlugin0A5ErrorOACs0F0AAWlTm_4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t lazy protocol witness table accessor for type BasicDisambiguationItemContainer<INPerson> and conformance BasicDisambiguationItemContainer<A>()
{
  result = lazy protocol witness table cache variable for type BasicDisambiguationItemContainer<INPerson> and conformance BasicDisambiguationItemContainer<A>;
  if (!lazy protocol witness table cache variable for type BasicDisambiguationItemContainer<INPerson> and conformance BasicDisambiguationItemContainer<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s11SiriKitFlow32BasicDisambiguationItemContainerCySo8INPersonCGMd, &_s11SiriKitFlow32BasicDisambiguationItemContainerCySo8INPersonCGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BasicDisambiguationItemContainer<INPerson> and conformance BasicDisambiguationItemContainer<A>);
  }

  return result;
}

uint64_t type metadata instantiation function for ContactUnsetRelationshipFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t getEnumTagSinglePayload for ContactUnsetRelationshipFlowStrategy(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 184))
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

uint64_t storeEnumTagSinglePayload for ContactUnsetRelationshipFlowStrategy(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
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
      *(result + 184) = 1;
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

    *(result + 184) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t partial apply for closure #1 in closure #1 in ContactUnsetRelationshipFlowStrategy.contactNeedsDisambiguationContext(persons:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy11SiriKitFlow15NLContextUpdateVs5NeverOGMd, &_sScCy11SiriKitFlow15NLContextUpdateVs5NeverOGMR);
  OUTLINED_FUNCTION_21(v2);

  return closure #1 in closure #1 in ContactUnsetRelationshipFlowStrategy.contactNeedsDisambiguationContext(persons:)(a1);
}

void *OUTLINED_FUNCTION_39_12(void *result)
{
  result[2] = *(v2 + 16);
  result[3] = *(v2 + 24);
  result[4] = v1;
  return result;
}

uint64_t ContactUnsupportedFlowStrategy.makeUnsupportedValueOutput(resolveRecord:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return _swift_task_switch(ContactUnsupportedFlowStrategy.makeUnsupportedValueOutput(resolveRecord:), 0, 0);
}

uint64_t ContactUnsupportedFlowStrategy.makeUnsupportedValueOutput(resolveRecord:)()
{
  v1 = v0[4];
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  swift_getAssociatedTypeWitness();
  type metadata accessor for ParameterResolutionRecord();
  v4 = ParameterResolutionRecord.app.getter();
  v0[6] = v4;
  v5 = ParameterResolutionRecord.intent.getter();
  v0[7] = v5;
  v6 = ParameterResolutionRecord.result.getter();
  v0[8] = v6;
  v10 = (*(v2 + 48) + **(v2 + 48));
  v7 = swift_task_alloc();
  v0[9] = v7;
  *v7 = v0;
  v7[1] = ContactUnsupportedFlowStrategy.makeUnsupportedValueOutput(resolveRecord:);
  v8 = v0[2];

  return v10(v8, v4, v5, v6, v3, v2);
}

{
  v2 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v3 = v2;
  *(v2 + 80) = v0;

  if (v0)
  {

    return _swift_task_switch(ContactUnsupportedFlowStrategy.makeUnsupportedValueOutput(resolveRecord:), 0, 0);
  }

  else
  {
    v4 = *(v2 + 56);

    v5 = *(v2 + 8);

    return v5();
  }
}

{
  OUTLINED_FUNCTION_15();
  v1 = *(v0 + 56);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t ContactUnsupportedFlowStrategy.makeUpdatedIntentForUnsupportedValue(resolveRecord:)()
{
  OUTLINED_FUNCTION_15();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = type metadata accessor for ParameterIdentifier();
  v1[5] = v4;
  v1[6] = *(v4 - 8);
  v1[7] = swift_task_alloc();

  return _swift_task_switch(ContactUnsupportedFlowStrategy.makeUpdatedIntentForUnsupportedValue(resolveRecord:), 0, 0);
}

unint64_t ContactUnsupportedFlowStrategy.makeUpdatedIntentForUnsupportedValue(resolveRecord:)()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for ParameterResolutionRecord();
  v2 = ParameterResolutionRecord.intent.getter();
  v3 = ParameterResolutionRecord.result.getter();
  v4 = ContactUnsupportedFlowStrategy.isMultipleContactsUnsupported(intentResolutionResult:)(v3);

  if (v4)
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, static Logger.siriPhone);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 136315138;
      *(v8 + 4) = OUTLINED_FUNCTION_1_58("makeUpdatedIntentForUnsupportedValue(resolveRecord:)", v9);
      _os_log_impl(&dword_0, v6, v7, "%s: Unsupported multiple contacts => clear slot.", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v9);
      OUTLINED_FUNCTION_26_0(v9);
      OUTLINED_FUNCTION_26_0(v8);
    }

    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    (*(*(AssociatedConformanceWitness + 8) + 16))(_swiftEmptyArrayStorage, AssociatedTypeWitness);
  }

  else
  {
    v11 = ParameterResolutionRecord.result.getter();
    v12 = [v11 alternatives];

    v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = *(v13 + 16);

    if (v14)
    {
      if (one-time initialization token for siriPhone != -1)
      {
        OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
      }

      v15 = type metadata accessor for Logger();
      __swift_project_value_buffer(v15, static Logger.siriPhone);
      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        *v18 = 136315138;
        *(v18 + 4) = OUTLINED_FUNCTION_1_58("makeUpdatedIntentForUnsupportedValue(resolveRecord:)", v19);
        _os_log_impl(&dword_0, v16, v17, "%s: Unsupported with alternatives => leave slot as-is.", v18, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v19);
        OUTLINED_FUNCTION_26_0(v19);
        OUTLINED_FUNCTION_26_0(v18);
      }
    }

    else
    {
      v20 = *(swift_getAssociatedConformanceWitness() + 8);
      v21 = (*(v20 + 8))(AssociatedTypeWitness, v20);
      if (v21)
      {
        v22 = v21;
        if (one-time initialization token for siriPhone != -1)
        {
          OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
        }

        v23 = type metadata accessor for Logger();
        __swift_project_value_buffer(v23, static Logger.siriPhone);
        v24 = Logger.logObject.getter();
        v25 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v24, v25))
        {
          v26 = swift_slowAlloc();
          v27 = swift_slowAlloc();
          *v26 = 136315138;
          *(v26 + 4) = OUTLINED_FUNCTION_1_58("makeUpdatedIntentForUnsupportedValue(resolveRecord:)", v27);
          _os_log_impl(&dword_0, v24, v25, "%s: Unsupported with NO alternatives => remove unsupported value.", v26, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v27);
          OUTLINED_FUNCTION_26_0(v27);
          OUTLINED_FUNCTION_26_0(v26);
        }

        v29 = v0[6];
        v28 = v0[7];
        v30 = v0[5];
        ParameterResolutionRecord.parameter.getter();
        v31 = ParameterIdentifier.multicardinalIndex.getter();
        v33 = v32;
        (*(v29 + 8))(v28, v30);
        result = swift_isUniquelyReferenced_nonNull_bridgeObject();
        if (v33)
        {
          v31 = 0;
        }

        if (v22 >> 62 || (result & 1) == 0)
        {
          result = specialized _ArrayBuffer._consumeAndCreateNew()();
          v22 = result;
        }

        v35 = *(&dword_10 + (v22 & 0xFFFFFFFFFFFFFF8));
        if (v31 >= v35)
        {
          __break(1u);
          return result;
        }

        v36 = v35 - 1;
        v37 = v35 - 1 - v31;
        v38 = (v22 & 0xFFFFFFFFFFFFFF8) + 8 * v31;
        v39 = *(&stru_20.cmd + v38);
        specialized UnsafeMutablePointer.moveInitialize(from:count:)((v38 + 40), v37, (v38 + 32));
        *(&dword_10 + (v22 & 0xFFFFFFFFFFFFFF8)) = v36;

        (*(v20 + 16))(v22, AssociatedTypeWitness, v20);
      }
    }
  }

  v40 = v0[1];

  return v40(v2);
}

uint64_t ContactUnsupportedFlowStrategy.isMultipleContactsUnsupported(intentResolutionResult:)(void *a1)
{
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    return [a1 unsupportedReason] == &dword_0 + 2;
  }

  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    return [a1 unsupportedReason] == &dword_0 + 2;
  }

  return result;
}

uint64_t ContactUnsupportedFlowStrategy.init(outputProvider:sharedGlobals:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a3 - 8) + 32))(a5, a1);
  v10 = a5 + *(type metadata accessor for ContactUnsupportedFlowStrategy(0, a3, a4, v9) + 36);

  return outlined init with take of PhoneCallFeatureFlagProviding(a2, v10);
}

uint64_t protocol witness for UnsupportedValueFlowStrategyAsync.makeUnsupportedValueOutput(resolveRecord:) in conformance ContactUnsupportedFlowStrategy<A>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = protocol witness for Flow.execute() in conformance CommunalDeviceExecutionFlow;

  return ContactUnsupportedFlowStrategy.makeUnsupportedValueOutput(resolveRecord:)(a1, a2, a3);
}

uint64_t protocol witness for UnsupportedValueFlowStrategyAsync.makeUpdatedIntentForUnsupportedValue(resolveRecord:) in conformance ContactUnsupportedFlowStrategy<A>()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = AddCallParticipantCATPatternsExecutor.unsupportedNoActiveCall();

  return ContactUnsupportedFlowStrategy.makeUpdatedIntentForUnsupportedValue(resolveRecord:)();
}

uint64_t protocol witness for UnsupportedValueFlowStrategyAsync.makeLaunchAppWithIntentOutput(resolveRecord:) in conformance ContactUnsupportedFlowStrategy<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = protocol witness for UnsupportedValueFlowStrategyAsync.makeLaunchAppWithIntentOutput(resolveRecord:) in conformance ContactUnsupportedFlowStrategy<A>;

  return UnsupportedValueFlowStrategyAsync.makeLaunchAppWithIntentOutput(resolveRecord:)(a1, a2, a3, a4);
}

uint64_t getEnumTagSinglePayload for ContactUnsupportedFlowStrategy(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(*(v4 - 8) + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
LABEL_26:
    if (v5 < 0x7FFFFFFF)
    {
      v16 = *(((result + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 24);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }

    else
    {
      return __swift_getEnumTagSinglePayload(result, v5, v4);
    }
  }

  else
  {
    v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 40;
    v9 = a2 - v7;
    v10 = v8 & 0xFFFFFFF8;
    if ((v8 & 0xFFFFFFF8) != 0)
    {
      v11 = 2;
    }

    else
    {
      v11 = v9 + 1;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    switch(v13)
    {
      case 1:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

LABEL_22:
        v15 = v14 - 1;
        if (v10)
        {
          v15 = 0;
          LODWORD(v10) = *result;
        }

        result = v7 + (v10 | v15) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void storeEnumTagSinglePayload for ContactUnsupportedFlowStrategy(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(*(v6 - 8) + 84);
  }

  v9 = *(*(v6 - 8) + 64);
  v10 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 40;
  if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFD8)
  {
    v11 = a3 - v8 + 1;
  }

  else
  {
    v11 = 2;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a3)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (a2 <= v8)
  {
    switch(v14)
    {
      case 1:
        a1[v10] = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        break;
      case 2:
        *&a1[v10] = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        break;
      case 3:
LABEL_43:
        __break(1u);
        break;
      case 4:
        *&a1[v10] = 0;
        goto LABEL_32;
      default:
LABEL_32:
        if (a2)
        {
LABEL_33:
          if (v7 < 0x7FFFFFFF)
          {
            v17 = &a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8;
            if ((a2 & 0x80000000) != 0)
            {
              *(v17 + 8) = 0u;
              *(v17 + 24) = 0u;
              *v17 = a2 & 0x7FFFFFFF;
            }

            else
            {
              *(v17 + 24) = (a2 - 1);
            }
          }

          else
          {

            __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
          }
        }

        break;
    }
  }

  else
  {
    if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFD8)
    {
      v15 = a2 - v8;
    }

    else
    {
      v15 = 1;
    }

    if (((v9 + 7) & 0xFFFFFFF8) != 0xFFFFFFD8)
    {
      v16 = ~v8 + a2;
      bzero(a1, ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 40);
      *a1 = v16;
    }

    switch(v14)
    {
      case 1:
        a1[v10] = v15;
        break;
      case 2:
        *&a1[v10] = v15;
        break;
      case 3:
        goto LABEL_43;
      case 4:
        *&a1[v10] = v15;
        break;
      default:
        return;
    }
  }
}

void ContinueReadingVoicemailFlow.state.didset()
{
  if (one-time initialization token for siriPhone != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.siriPhone);
  swift_retain_n();
  oslog = Logger.logObject.getter();
  v2 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 136315394;
    v5 = *(v0 + direct field offset for ContinueReadingVoicemailFlow.logPrefix);
    v6 = *(v0 + direct field offset for ContinueReadingVoicemailFlow.logPrefix + 8);
    v7 = *(v0 + direct field offset for ContinueReadingVoicemailFlow.logPrefix + 16);
    v8 = *(v0 + direct field offset for ContinueReadingVoicemailFlow.logPrefix + 24);
    v16 = v4;

    DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v5, v6, v7, v8);

    v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0, 0xE000000000000000, &v16);

    *(v3 + 4) = v9;
    *(v3 + 12) = 2080;
    v10 = *(v0 + 16);

    v11 = ContinueReadingVoicemailState.description.getter(v10);
    v13 = v12;

    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v13, &v16);

    *(v3 + 14) = v14;
    _os_log_impl(&dword_0, oslog, v2, "%s set state to %s", v3, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }
}

void *ContinueReadingVoicemailFlow.windowCatItems.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v2)
  {
    specialized ContiguousArray.reserveCapacity(_:)();
    v4 = v1 + 32;
    do
    {
      v4 += 16;

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      OUTLINED_FUNCTION_8_2();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      --v2;
    }

    while (v2);
    return _swiftEmptyArrayStorage;
  }

  return result;
}

uint64_t ContinueReadingVoicemailFlow.__allocating_init(app:intent:intentResponse:phoneSearchCallHistoryIntent:isSingleVoicemailRequest:isRepeatRequest:sharedGlobals:windowItems:windowParam:totalItemCount:playVoicemailCommands:voiceMailPositionString:searchCallHistorySharedGlobals:)(uint64_t a1, void *a2, void *a3, uint64_t a4, char a5, char a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, char a13, uint64_t a14)
{
  v17 = swift_allocObject();
  ContinueReadingVoicemailFlow.init(app:intent:intentResponse:phoneSearchCallHistoryIntent:isSingleVoicemailRequest:isRepeatRequest:sharedGlobals:windowItems:windowParam:totalItemCount:playVoicemailCommands:voiceMailPositionString:searchCallHistorySharedGlobals:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11 & 1, a12, a13, a14);
  return v17;
}

uint64_t *ContinueReadingVoicemailFlow.init(app:intent:intentResponse:phoneSearchCallHistoryIntent:isSingleVoicemailRequest:isRepeatRequest:sharedGlobals:windowItems:windowParam:totalItemCount:playVoicemailCommands:voiceMailPositionString:searchCallHistorySharedGlobals:)(uint64_t a1, void *a2, void *a3, uint64_t a4, char a5, char a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, char a13, uint64_t a14)
{
  v21 = *v14;
  *(v14 + direct field offset for ContinueReadingVoicemailFlow.isRepeatRequest) = 0;
  v22 = (v14 + direct field offset for ContinueReadingVoicemailFlow.logPrefix);
  *v22 = type metadata accessor for ContinueReadingVoicemailFlow(0, *(v21 + 80), a3, a4);
  v22[1] = &outlined read-only object #0 of ContinueReadingVoicemailFlow.init(app:intent:intentResponse:phoneSearchCallHistoryIntent:isSingleVoicemailRequest:isRepeatRequest:sharedGlobals:windowItems:windowParam:totalItemCount:playVoicemailCommands:voiceMailPositionString:searchCallHistorySharedGlobals:);
  v22[2] = 0;
  v22[3] = 0;
  v14[4] = a2;
  v14[5] = a3;
  v14[11] = a1;
  v14[12] = a4;
  *(v14 + direct field offset for ContinueReadingVoicemailFlow.isSingleVoicemailRequest) = a5;
  v35 = a7;
  outlined init with copy of SignalProviding(a7, (v14 + 6));
  v23 = direct field offset for ContinueReadingVoicemailFlow.windowParam;
  v24 = type metadata accessor for WindowedPaginationParameters();
  v25 = *(v24 - 8);
  (*(v25 + 16))(v14 + v23, a9, v24);
  v14[3] = a8;
  v26 = v14 + direct field offset for ContinueReadingVoicemailFlow.totalItemCount;
  *v26 = a10;
  *(v26 + 8) = a11 & 1;
  v14[38] = a12;
  *(v14 + 312) = a13;
  outlined init with copy of SearchCallHistorySharedGlobals(a14, (v14 + 13));
  if (a6)
  {
    outlined destroy of SearchCallHistorySharedGlobals(a14);
    (*(v25 + 8))(a9, v24);
    __swift_destroy_boxed_opaque_existential_1(v35);
    *(v14 + 16) = 7;
    *(v14 + direct field offset for ContinueReadingVoicemailFlow.isLeadingSavedVoiceMailPostPrompt) = 0;
  }

  else
  {

    v27 = a2;
    v28 = a3;

    if (a5 & 1 | ((WindowedPaginationParameters.isFirstWindow.getter() & 1) == 0))
    {
      v29 = 7;
    }

    else
    {
      v29 = 5;
    }

    *(v14 + 16) = v29;
    v30 = WindowedPaginationParameters.isFirstWindow.getter();
    v31 = static SearchCallHistoryHelper.isLeadingSavedVoiceMail(isFirstPage:intentResponse:intent:)(v30 & 1, v28, v27);

    outlined destroy of SearchCallHistorySharedGlobals(a14);
    (*(v25 + 8))(a9, v24);
    __swift_destroy_boxed_opaque_existential_1(v35);
    *(v14 + direct field offset for ContinueReadingVoicemailFlow.isLeadingSavedVoiceMailPostPrompt) = v31 & 1;
  }

  return v14;
}

void ContinueReadingVoicemailFlow.__allocating_init(state:app:intent:intentResponse:phoneSearchCallHistoryIntent:isSingleVoicemailRequest:isRepeatRequest:sharedGlobals:windowItems:windowParam:totalItemCount:playVoicemailCommands:voiceMailPositionString:searchCallHistorySharedGlobals:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, char a26, uint64_t a27)
{
  OUTLINED_FUNCTION_66();
  v29 = v28;
  v52 = v30;
  v51 = v31;
  v50 = v32;
  v49 = v33;
  v48 = v34;
  v47 = v35;
  v53 = v36;
  v37 = type metadata accessor for WindowedPaginationParameters();
  OUTLINED_FUNCTION_7();
  v39 = v38;
  __chkstk_darwin(v40);
  OUTLINED_FUNCTION_4();
  v43 = v42 - v41;
  outlined init with copy of SignalProviding(v29, v55);
  (*(v39 + 16))(v43, a22, v37);
  outlined init with copy of SearchCallHistorySharedGlobals(a27, v54);
  v45 = a24 & 1;
  v44 = (*(v27 + 272))(v47, v48, v49, v50, v51, v52, v55, a21, v43, a23, v45, a25, a26, v54);
  outlined destroy of SearchCallHistorySharedGlobals(a27);
  (*(v39 + 8))(a22, v37);
  __swift_destroy_boxed_opaque_existential_1(v29);
  *(v44 + 16) = v53;
  OUTLINED_FUNCTION_65();
}

uint64_t ContinueReadingVoicemailFlow.exitValue.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *v4;
  v6 = *(v4 + 16);
  if ((v6 - 5) >= 5)
  {
    switch(v6)
    {
      case 1:

        result = static WindowingAction.cancelled()(&type metadata for () + 8);
        break;
      case 2:
      case 4:
        result = static WindowingAction.complete(_:)();
        break;
      case 3:

        result = static WindowingAction.repeatWindow()(&type metadata for () + 8);
        break;
      default:

        result = static WindowingAction.proceedWithNextWindow()(&type metadata for () + 8);
        break;
    }
  }

  else
  {
    type metadata accessor for ContinueReadingVoicemailFlow.ContinuationPromptFlowError(0, *(v5 + 80), a3, a4);
    swift_getWitnessTable();
    swift_allocError();
    *v7 = v6;
    static WindowingAction.error(_:handled:)();
  }

  return result;
}

void ContinueReadingVoicemailFlow.on(input:)()
{
  OUTLINED_FUNCTION_66();
  v1 = v0;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin18CommonDirectActionOSgMd, &_s27PhoneCallFlowDelegatePlugin18CommonDirectActionOSgMR);
  v5 = OUTLINED_FUNCTION_21(v4);
  __chkstk_darwin(v5);
  OUTLINED_FUNCTION_12_5();
  v149 = v6 - v7;
  __chkstk_darwin(v8);
  v10 = &v136 - v9;
  __chkstk_darwin(v11);
  v145 = (&v136 - v12);
  OUTLINED_FUNCTION_15_0();
  v13 = type metadata accessor for Parse.DirectInvocation();
  OUTLINED_FUNCTION_7();
  v147 = v14;
  __chkstk_darwin(v15);
  OUTLINED_FUNCTION_4();
  v146 = v17 - v16;
  OUTLINED_FUNCTION_15_0();
  v151 = type metadata accessor for Parse();
  OUTLINED_FUNCTION_7();
  v19 = v18;
  __chkstk_darwin(v20);
  OUTLINED_FUNCTION_12_5();
  v142 = v21 - v22;
  __chkstk_darwin(v23);
  v25 = &v136 - v24;
  v150 = type metadata accessor for Input();
  OUTLINED_FUNCTION_7();
  v27 = v26;
  __chkstk_darwin(v28);
  OUTLINED_FUNCTION_4();
  v31 = v30 - v29;
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v32 = type metadata accessor for Logger();
  v33 = __swift_project_value_buffer(v32, static Logger.siriPhone);
  v34 = *(v27 + 16);
  v148 = v3;
  v34(v31, v3, v150);

  v143 = v33;
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = OUTLINED_FUNCTION_86_1();
    v140 = v25;
    v38 = v37;
    v139 = swift_slowAlloc();
    *&v153 = v139;
    *v38 = 136315394;
    v39 = v1 + direct field offset for ContinueReadingVoicemailFlow.logPrefix;
    v138 = v36;
    v40 = *(v1 + direct field offset for ContinueReadingVoicemailFlow.logPrefix);
    v41 = *(v1 + direct field offset for ContinueReadingVoicemailFlow.logPrefix + 8);
    v144 = v13;
    v42 = v10;
    v43 = v1;
    v141 = v19;
    v44 = *(v1 + direct field offset for ContinueReadingVoicemailFlow.logPrefix + 16);
    v19 = *(v39 + 24);
    v155[0] = 0;
    v155[1] = 0xE000000000000000;

    v137 = v35;
    v45 = v44;
    v1 = v43;
    v10 = v42;
    v13 = v144;
    DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v40, v41, v45, v19);
    OUTLINED_FUNCTION_24_14();

    OUTLINED_FUNCTION_31_9();
    OUTLINED_FUNCTION_40_0();

    *(v38 + 4) = v155;
    *(v38 + 12) = 2080;
    _s11SiriKitFlow5InputVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type Input and conformance Input, &type metadata accessor for Input, &protocol conformance descriptor for Input);
    v46 = v150;
    v47 = dispatch thunk of CustomStringConvertible.description.getter();
    v49 = v48;
    (*(v27 + 8))(v31, v46);
    v50 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v47, v49, &v153);

    *(v38 + 14) = v50;
    v51 = v137;
    _os_log_impl(&dword_0, v137, v138, "%s on is called with input: %s.", v38, 0x16u);
    v52 = v139;
    swift_arrayDestroy();
    OUTLINED_FUNCTION_26_0(v52);
    v53 = v38;
    v25 = v140;
    OUTLINED_FUNCTION_26_0(v53);
  }

  else
  {

    (*(v27 + 8))(v31, v150);
  }

  Input.parse.getter();
  v54 = OUTLINED_FUNCTION_23_10();
  v56 = v55(v54);
  v57 = v149;
  if (v56 != enum case for Parse.directInvocation(_:))
  {
    v74 = *(v1 + 80);
    __swift_project_boxed_opaque_existential_1((v1 + 48), *(v1 + 72));
    v75 = OUTLINED_FUNCTION_40_0();
    v77 = v76(v75, v74);
    v78 = v142;
    Input.parse.getter();
    (*(*v77 + 192))(&v153, v78);

    v81 = *(v19 + 8);
    v79 = v19 + 8;
    v80 = v81;
    (v81)(v78, v151);
    if (v154)
    {
      outlined init with take of SPHConversation(&v153, v155);
      OUTLINED_FUNCTION_1_3();
      if (PhoneCallNLIntent.isNextAfterPlayingVoiceMail()())
      {
        if (WindowedPaginationParameters.isLastWindow.getter())
        {

          v82 = Logger.logObject.getter();
          v83 = static os_log_type_t.error.getter();
          if (OUTLINED_FUNCTION_13_25(v83))
          {
            OUTLINED_FUNCTION_42();
            v141 = v79;
            v149 = OUTLINED_FUNCTION_62();
            v152 = v149;
            *&v153 = 0;
            *v79 = 136315138;
            OUTLINED_FUNCTION_25_11();
            v85 = *(v84 + 24);
            *(&v153 + 1) = 0xE000000000000000;

            v86 = OUTLINED_FUNCTION_6_32();
            DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v86, v87, v88, v85);

            getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v153, *(&v153 + 1), &v152);
            OUTLINED_FUNCTION_40_0();

            *(v79 + 4) = &v153;
            OUTLINED_FUNCTION_3_37();
            _os_log_impl(v89, v90, v91, v92, v93, 0xCu);
            OUTLINED_FUNCTION_9_28();
            v94 = OUTLINED_FUNCTION_24_14();
            OUTLINED_FUNCTION_26_0(v94);
          }

          else
          {
          }

          __swift_destroy_boxed_opaque_existential_1(v155);
          v123 = OUTLINED_FUNCTION_23_10();
          v80(v123);
          goto LABEL_38;
        }

        *(v1 + 16) = 0;
LABEL_29:
        ContinueReadingVoicemailFlow.state.didset();
        __swift_destroy_boxed_opaque_existential_1(v155);
        v113 = OUTLINED_FUNCTION_23_10();
        v80(v113);
        goto LABEL_38;
      }

      OUTLINED_FUNCTION_1_3();
      if (PhoneCallNLIntent.hasWantedToRepeat()() || (OUTLINED_FUNCTION_1_3(), PhoneCallNLIntent.isRepeatAfterPlayingVoiceMail()()))
      {
        v112 = 3;
LABEL_23:
        *(v1 + 16) = v112;
        goto LABEL_29;
      }

      OUTLINED_FUNCTION_1_3();
      if (PhoneCallNLIntent.isVoiceMailCallOrCallBack()())
      {
        v112 = 2;
        goto LABEL_23;
      }

      OUTLINED_FUNCTION_1_3();
      if (PhoneCallNLIntent.hasCancellation()() || (OUTLINED_FUNCTION_1_3(), PhoneCallNLIntent.hasRejection()()))
      {
        *(v1 + 16) = 1;
        ContinueReadingVoicemailFlow.state.didset();
        __swift_destroy_boxed_opaque_existential_1(v155);
        v124 = OUTLINED_FUNCTION_23_10();
        v80(v124);
        goto LABEL_38;
      }

      v125 = Logger.logObject.getter();
      v126 = static os_log_type_t.error.getter();
      if (OUTLINED_FUNCTION_13_25(v126))
      {
        OUTLINED_FUNCTION_42();
        v141 = v79;
        v149 = OUTLINED_FUNCTION_62();
        v152 = v149;
        *&v153 = 0;
        *v79 = 136315138;
        OUTLINED_FUNCTION_25_11();
        v140 = v25;
        v128 = *(v127 + 16);
        v129 = *(v127 + 24);
        *(&v153 + 1) = 0xE000000000000000;

        DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v77, v1, v128, v129);
        v25 = v140;

        getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v153, *(&v153 + 1), &v152);
        OUTLINED_FUNCTION_40_0();

        *(v79 + 4) = &v153;
        OUTLINED_FUNCTION_3_37();
        _os_log_impl(v130, v131, v132, v133, v134, 0xCu);
        OUTLINED_FUNCTION_9_28();
        v135 = OUTLINED_FUNCTION_24_14();
        OUTLINED_FUNCTION_26_0(v135);
      }

      else
      {
      }

      __swift_destroy_boxed_opaque_existential_1(v155);
    }

    else
    {
      outlined destroy of PhoneCallNLIntent?(&v153, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMR);
    }

    v101 = OUTLINED_FUNCTION_23_10();
    v80(v101);

    v102 = Logger.logObject.getter();
    v103 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_13_25(v103))
    {
      OUTLINED_FUNCTION_42();
      *&v153 = OUTLINED_FUNCTION_62();
      *v79 = 136315138;
      OUTLINED_FUNCTION_40_10();

      v104 = OUTLINED_FUNCTION_6_32();
      DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v104, v105, v106, v25);

      OUTLINED_FUNCTION_31_9();
      OUTLINED_FUNCTION_40_0();

      *(v79 + 4) = v155;
      OUTLINED_FUNCTION_3_37();
      _os_log_impl(v107, v108, v109, v110, v111, 0xCu);
      OUTLINED_FUNCTION_3_7();
      OUTLINED_FUNCTION_52();
    }

    else
    {
    }

    goto LABEL_38;
  }

  v58 = OUTLINED_FUNCTION_23_10();
  v59(v58);
  v60 = v146;
  v61 = v147;
  (*(v147 + 32))(v146, v25, v13);
  v62 = v145;
  static CommonDirectAction.from(_:)(v145);
  outlined init with copy of CommonDirectAction?(v62, v10);
  v63 = type metadata accessor for CommonDirectAction(0);
  if (__swift_getEnumTagSinglePayload(v10, 1, v63) == 1)
  {
LABEL_8:
    v144 = v13;

    v64 = Logger.logObject.getter();
    v65 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_13_25(v65))
    {
      OUTLINED_FUNCTION_42();
      *&v153 = OUTLINED_FUNCTION_62();
      *v60 = 136315138;
      OUTLINED_FUNCTION_25_11();
      OUTLINED_FUNCTION_40_10();

      v66 = OUTLINED_FUNCTION_6_32();
      DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v66, v67, v68, v62);

      OUTLINED_FUNCTION_31_9();
      OUTLINED_FUNCTION_40_0();

      *(v60 + 4) = v155;
      OUTLINED_FUNCTION_3_37();
      _os_log_impl(v69, v70, v71, v72, v73, 0xCu);
      OUTLINED_FUNCTION_3_7();
      OUTLINED_FUNCTION_52();

      outlined destroy of PhoneCallNLIntent?(v145, &_s27PhoneCallFlowDelegatePlugin18CommonDirectActionOSgMd, &_s27PhoneCallFlowDelegatePlugin18CommonDirectActionOSgMR);
      (*(v147 + 8))(v146, v144);
    }

    else
    {

      outlined destroy of PhoneCallNLIntent?(v62, &_s27PhoneCallFlowDelegatePlugin18CommonDirectActionOSgMd, &_s27PhoneCallFlowDelegatePlugin18CommonDirectActionOSgMR);
      (*(v61 + 8))(v60, v144);
    }

    outlined destroy of PhoneCallNLIntent?(v10, &_s27PhoneCallFlowDelegatePlugin18CommonDirectActionOSgMd, &_s27PhoneCallFlowDelegatePlugin18CommonDirectActionOSgMR);
  }

  else
  {
    outlined init with copy of CommonDirectAction?(v10, v57);
    switch(swift_getEnumCaseMultiPayload())
    {
      case 7u:
        *(v1 + 16) = 1;
        ContinueReadingVoicemailFlow.state.didset();
        OUTLINED_FUNCTION_28_2();
        outlined destroy of PhoneCallNLIntent?(v95, v96, v97);
        (*(v61 + 8))(v60, v13);
        OUTLINED_FUNCTION_28_2();
        outlined destroy of PhoneCallNLIntent?(v98, v99, v100);
        break;
      case 8u:
        v114 = 3;
        goto LABEL_33;
      case 9u:
        *(v1 + 16) = 0;
        goto LABEL_34;
      case 0xAu:
        v114 = 2;
LABEL_33:
        *(v1 + 16) = v114;
LABEL_34:
        ContinueReadingVoicemailFlow.state.didset();
        OUTLINED_FUNCTION_28_2();
        outlined destroy of PhoneCallNLIntent?(v115, v116, v117);
        v118 = OUTLINED_FUNCTION_8_2();
        v119(v118);
        OUTLINED_FUNCTION_28_2();
        outlined destroy of PhoneCallNLIntent?(v120, v121, v122);
        break;
      default:
        outlined destroy of CommonDirectAction(v57);
        goto LABEL_8;
    }
  }

LABEL_38:
  OUTLINED_FUNCTION_65();
}

uint64_t ContinueReadingVoicemailFlow.execute(completion:)(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v6 = OUTLINED_FUNCTION_21(v5);
  __chkstk_darwin(v6);
  v8 = &v12 - v7;
  v9 = type metadata accessor for TaskPriority();
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v9);
  OUTLINED_FUNCTION_36_4();
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = a1;
  v10[5] = a2;
  v10[6] = v2;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5();
}

uint64_t closure #1 in ContinueReadingVoicemailFlow.execute(completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v6[2] = a4;
  v6[3] = a5;
  v8 = type metadata accessor for ExecuteResponse();
  v6[4] = v8;
  v6[5] = *(v8 - 8);
  v9 = swift_task_alloc();
  v6[6] = v9;
  v12 = (*(*a6 + 304) + **(*a6 + 304));
  v10 = swift_task_alloc();
  v6[7] = v10;
  *v10 = v6;
  v10[1] = closure #1 in ContinueReadingVoicemailFlow.execute(completion:);

  return v12(v9);
}

uint64_t closure #1 in ContinueReadingVoicemailFlow.execute(completion:)()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v1 = *v0;
  OUTLINED_FUNCTION_4_2();
  *v2 = v1;

  return _swift_task_switch(closure #1 in ContinueReadingVoicemailFlow.execute(completion:), 0, 0);
}

{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = *(v0 + 32);
  (*(v0 + 16))(v1);
  (*(v2 + 8))(v1, v3);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t ContinueReadingVoicemailFlow.execute()()
{
  OUTLINED_FUNCTION_15();
  v1[177] = v0;
  v1[176] = v2;
  v3 = type metadata accessor for WindowedPaginationParameters();
  v1[178] = v3;
  v1[179] = *(v3 - 8);
  v1[180] = swift_task_alloc();

  return _swift_task_switch(ContinueReadingVoicemailFlow.execute(), 0, 0);
}

{
  v118 = v1;
  v3 = v1;
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.siriPhone);
  swift_retain_n();
  v5 = Logger.logObject.getter();
  static os_log_type_t.debug.getter();
  OUTLINED_FUNCTION_39_5();
  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v1 + 1416);
  v9 = &unk_426000;
  v10 = &_s10Foundation4UUIDVSg_ADtMd;
  if (v7)
  {
    v11 = OUTLINED_FUNCTION_86_1();
    v113 = swift_slowAlloc();
    v115 = v113;
    v116 = 0;
    *v11 = 136315394;
    v12 = v3;
    v13 = *(v8 + direct field offset for ContinueReadingVoicemailFlow.logPrefix);
    v14 = *(v8 + direct field offset for ContinueReadingVoicemailFlow.logPrefix + 8);
    v109 = v0;
    v15 = *(v8 + direct field offset for ContinueReadingVoicemailFlow.logPrefix + 16);
    v16 = *(v8 + direct field offset for ContinueReadingVoicemailFlow.logPrefix + 24);
    v117 = 0xE000000000000000;

    v17 = v13;
    v10 = &_s10Foundation4UUIDVSg_ADtMd;
    DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v17, v14, v15, v16);
    v3 = v12;

    v2 = &type metadata for Any;

    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v116, 0xE000000000000000, &v115);

    *(v11 + 4) = v18;
    *(v11 + 12) = 2080;
    LOBYTE(v12) = *(v8 + 16);

    ContinueReadingVoicemailState.description.getter(v12);
    v0 = v19;

    v20 = OUTLINED_FUNCTION_8_2();
    v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, v22);

    *(v11 + 14) = v23;
    _os_log_impl(&dword_0, v5, v109, "%s execute %s", v11, 0x16u);
    v9 = v113;
    swift_arrayDestroy();
    OUTLINED_FUNCTION_52();
    OUTLINED_FUNCTION_26_0(v11);
  }

  else
  {
  }

  v24 = *(v3 + 1416);
  switch(*(v24 + 16))
  {
    case 1:
      ContinueReadingVoicemailFlow.makePromptCancelledOutputFlow()();
      *(v3 + 1376) = v59;
      type metadata accessor for SimpleOutputFlowAsync();
      static ExecuteResponse.complete<A>(next:)();
      goto LABEL_21;
    case 2:
      v55 = *(v24 + 24);
      if (*(v55 + 16) && (v56 = [*(v55 + 40) participants]) != 0)
      {
        v57 = v56;
        type metadata accessor for INPerson();
        v58 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
      }

      else
      {
        v58 = 0;
      }

      v67 = objc_allocWithZone(INStartCallIntent);

      v68 = @nonobjc INStartCallIntent.init(callRecordFilter:callRecordToCallBack:audioRoute:destinationType:contacts:callCapability:)(0, 0, 0, 1, v58, 1);
      if (one-time initialization token for instance != -1)
      {
        swift_once();
      }

      v69 = *(v3 + 1416);
      memcpy((v3 + 616), &static PhoneCallFeatureFlags.instance, 0xC0uLL);
      type metadata accessor for PhoneCallFeatureManager();
      OUTLINED_FUNCTION_36_4();
      v70 = swift_allocObject();
      *(v3 + 1120) = &type metadata for PhoneCallFeatureFlags;
      *(v3 + 1128) = &protocol witness table for PhoneCallFeatureFlags;
      v71 = swift_allocObject();
      *(v3 + 1096) = v71;
      memcpy((v71 + 16), &static PhoneCallFeatureFlags.instance, 0xC0uLL);
      outlined init with take of SPHConversation((v3 + 1096), v70 + 16);
      swift_setDeallocating();
      outlined init with copy of PhoneCallFeatureFlags(v3 + 616, v3 + 808);
      __swift_destroy_boxed_opaque_existential_1((v70 + 16));
      OUTLINED_FUNCTION_36_4();
      swift_deallocClassInstance();
      __swift_project_boxed_opaque_existential_1((v69 + 48), *(v69 + 72));
      v72 = OUTLINED_FUNCTION_8_2();
      v73(v72);
      OUTLINED_FUNCTION_11_26();
      if (dispatch thunk of DeviceState.isMac.getter())
      {
        if (one-time initialization token for siriFaceTimeMacExtension == -1)
        {
          goto LABEL_35;
        }
      }

      else
      {
        OUTLINED_FUNCTION_11_26();
        if (dispatch thunk of DeviceState.isWatch.getter())
        {
          if (one-time initialization token for siriPhoneWatchExtension == -1)
          {
            goto LABEL_35;
          }
        }

        else
        {
          OUTLINED_FUNCTION_11_26();
          if (dispatch thunk of DeviceState.isXRDevice.getter())
          {
            if (one-time initialization token for siriPhoneFaceTimeExtension == -1)
            {
              goto LABEL_35;
            }
          }

          else if (one-time initialization token for siriPhoneExtension == -1)
          {
            goto LABEL_35;
          }
        }
      }

      swift_once();
LABEL_35:

      __swift_destroy_boxed_opaque_existential_1((v3 + 1136));
      static PhoneCallFlowFactory.makeRCHFlow(app:intent:sharedGlobals:)();
      v75 = v74;

      if (v75)
      {

        v76 = Logger.logObject.getter();
        v77 = static os_log_type_t.debug.getter();

        v78 = os_log_type_enabled(v76, v77);
        v114 = v3;
        v79 = *(v3 + 1416);
        if (v78)
        {
          v80 = OUTLINED_FUNCTION_86_1();
          v108 = swift_slowAlloc();
          v115 = v108;
          v116 = 0;
          *v80 = 136315394;
          v81 = (v79 + v10[175]);
          v82 = *v81;
          v111 = v68;
          v83 = v81[3];
          v117 = 0xE000000000000000;

          v106 = v77;
          v84 = OUTLINED_FUNCTION_38_9();
          DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v84, v85, v86, v83);

          v68 = v111;

          OUTLINED_FUNCTION_29_15();
          OUTLINED_FUNCTION_34_0();

          *(v80 + 4) = v82;
          *(v80 + 12) = 2080;
          if (v58)
          {
            v87 = v58;
          }

          else
          {
            v87 = _swiftEmptyArrayStorage;
          }

          type metadata accessor for INPerson();
          v88 = Array.description.getter();
          v90 = v89;

          getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v88, v90, &v115);
          OUTLINED_FUNCTION_40_0();

          *(v80 + 14) = v87;
          _os_log_impl(&dword_0, v76, v106, "%s start make a call to %s", v80, 0x16u);
          swift_arrayDestroy();
          OUTLINED_FUNCTION_26_0(v108);
          OUTLINED_FUNCTION_26_0(v80);
        }

        else
        {
        }

        v3 = v114;
        static ExecuteResponse.complete(next:)();
      }

      else
      {
        v112 = v68;

        v91 = Logger.logObject.getter();
        v92 = static os_log_type_t.error.getter();
        v93 = OUTLINED_FUNCTION_13_25(v92);
        v94 = *(v3 + 1416);
        if (v93)
        {
          v95 = OUTLINED_FUNCTION_42();
          v96 = OUTLINED_FUNCTION_36();
          v115 = v96;
          v116 = 0;
          *v95 = 136315138;
          v97 = *(v94 + v10[175]);
          OUTLINED_FUNCTION_30_13();

          v98 = OUTLINED_FUNCTION_38_9();
          DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v98, v99, v100, v3);

          v3 = v113;

          OUTLINED_FUNCTION_29_15();
          OUTLINED_FUNCTION_34_0();

          *(v95 + 4) = v97;
          _os_log_impl(&dword_0, v91, v58, "%s can't build a start call flow to handle callback.", v95, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v96);
          OUTLINED_FUNCTION_26_0(v96);
          OUTLINED_FUNCTION_26_0(v95);
        }

        else
        {
        }

        static ExecuteResponse.complete()();
      }

LABEL_22:

      v65 = *(v3 + 8);

      return v65();
    case 3:
    case 7:
      v25 = *(v3 + 1440);
      v101 = v25;
      v26 = *(v3 + 1432);
      v27 = *(v3 + 1424);
      v28 = *(v24 + 32);
      v29 = *(v24 + 40);
      v107 = *(v24 + 88);
      v103 = *(v24 + 96);
      v110 = *(v24 + direct field offset for ContinueReadingVoicemailFlow.isSingleVoicemailRequest);
      outlined init with copy of SignalProviding(v24 + 48, v3 + 1176);

      v105 = v28;
      v104 = v29;

      v102 = ContinueReadingVoicemailFlow.windowCatItems.getter();
      (*(v26 + 16))(v25, v24 + direct field offset for ContinueReadingVoicemailFlow.windowParam, v27);
      v30 = *(v24 + direct field offset for ContinueReadingVoicemailFlow.totalItemCount);
      v31 = *(v24 + direct field offset for ContinueReadingVoicemailFlow.totalItemCount + 8);
      v32 = *(v24 + 304);
      LOBYTE(v28) = *(v24 + direct field offset for ContinueReadingVoicemailFlow.isLeadingSavedVoiceMailPostPrompt);
      LOBYTE(v25) = *(v24 + 312);
      outlined init with copy of SearchCallHistorySharedGlobals(v24 + 104, v3 + 16);
      v33 = *(v24 + 16) == 3;
      v34 = type metadata accessor for PromptForValueAfterReadingVoicemailFlowStrategy(0);
      OUTLINED_FUNCTION_41_1(v34);
      PromptForValueAfterReadingVoicemailFlowStrategy.init(app:intent:intentResponse:phoneSearchCallHistoryIntent:isSingleVoicemailRequest:sharedGlobals:windowItems:windowParam:totalItemCount:playVoicemailCommands:isLeadingSavedVoiceMailPostPrompt:voiceMailPositionString:searchCallHistorySharedGlobals:isRepeatRequest:)(v107, v105, v104, v103, v110, (v3 + 1176), v102, v101, v30, v31, v32, v28, v25, (v3 + 16), v33);
      OUTLINED_FUNCTION_43_11();

      v31(v30, v33);
      v35 = *(v3 + 1024);
      v36 = *(v3 + 1040);
      v37 = __swift_project_boxed_opaque_existential_1((v3 + 1000), v35);
      *(v3 + 1240) = v35;
      *(v3 + 1248) = v36;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v3 + 1216));
      (*(*(v35 - 8) + 16))(boxed_opaque_existential_1, v37, v35);
      v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow014PromptForValueC5AsyncCy09PhoneCallC14DelegatePlugin0i7HistoryD8ResponseOGMd, &_s11SiriKitFlow014PromptForValueC5AsyncCy09PhoneCallC14DelegatePlugin0i7HistoryD8ResponseOGMR);
      OUTLINED_FUNCTION_41_1(v39);
      _s11SiriKitFlow5InputVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type PromptForValueAfterReadingVoicemailFlowStrategy and conformance PromptForValueAfterReadingVoicemailFlowStrategy, type metadata accessor for PromptForValueAfterReadingVoicemailFlowStrategy, &protocol conformance descriptor for PromptForValueAfterReadingVoicemailFlowStrategy);
      v40 = PromptForValueFlowAsync.init<A>(strategy:outputPublisher:)();
      __swift_destroy_boxed_opaque_existential_1((v3 + 1000));
      *(v3 + 1384) = v40;
      implicit closure #5 in ContinueReadingVoicemailFlow.execute()();
      lazy protocol witness table accessor for type TerminalOntologyNode<VoiceMail.VoiceMailNoun> and conformance TerminalOntologyNode<A>(&lazy protocol witness table cache variable for type PromptForValueFlowAsync<CallHistoryPromptResponse> and conformance PromptForValueFlowAsync<A>, &_s11SiriKitFlow014PromptForValueC5AsyncCy09PhoneCallC14DelegatePlugin0i7HistoryD8ResponseOGMd, &_s11SiriKitFlow014PromptForValueC5AsyncCy09PhoneCallC14DelegatePlugin0i7HistoryD8ResponseOGMR, &protocol conformance descriptor for PromptForValueFlowAsync<A>);
      static ExecuteResponse.ongoing<A>(next:childCompletion:)();
      goto LABEL_10;
    case 5:
      if (*(v24 + direct field offset for ContinueReadingVoicemailFlow.isLeadingSavedVoiceMailPostPrompt))
      {
        v60 = 6;
      }

      else
      {
        v60 = 7;
      }

      *(v24 + 16) = v60;
      ContinueReadingVoicemailFlow.state.didset();
      v61 = *(v24 + 32);
      v62 = *(v24 + 40);

      v63 = v61;
      v64 = v62;
      ContinueReadingVoicemailFlow.windowCatItems.getter();
      outlined init with copy of SignalProviding(v24 + 48, v3 + 1336);
      outlined init with copy of SearchCallHistorySharedGlobals(v24 + 104, v3 + 416);
      type metadata accessor for PlayVoicemailReadIntroductionFlow();
      swift_allocObject();
      *(v3 + 1400) = PlayVoicemailReadIntroductionFlow.init(app:intent:intentResponse:isSingleVoicemailRequest:items:sharedGlobals:searchCallHistorySharedGlobals:)();
      _s11SiriKitFlow5InputVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type PlayVoicemailReadIntroductionFlow and conformance PlayVoicemailReadIntroductionFlow, type metadata accessor for PlayVoicemailReadIntroductionFlow, &protocol conformance descriptor for PlayVoicemailReadIntroductionFlow);
      static ExecuteResponse.ongoing<A>(next:)();
      goto LABEL_21;
    case 6:
      outlined init with copy of SignalProviding(v24 + 48, v3 + 1256);
      outlined init with copy of SearchCallHistorySharedGlobals(v24 + 104, v3 + 216);
      type metadata accessor for VoicemailShouldPlayPromptFlowStrategy();
      swift_allocObject();
      VoicemailShouldPlayPromptFlowStrategy.init(sharedGlobals:searchCallHistorySharedGlobals:)((v3 + 1256), (v3 + 216));
      OUTLINED_FUNCTION_43_11();

      (v10)(v9, v2);
      v41 = *(v3 + 1072);
      v42 = *(v3 + 1088);
      v43 = __swift_project_boxed_opaque_existential_1((v3 + 1048), v41);
      *(v3 + 1320) = v41;
      *(v3 + 1328) = v42;
      v44 = __swift_allocate_boxed_opaque_existential_1((v3 + 1296));
      (*(*(v41 - 8) + 16))(v44, v43, v41);
      v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow021PromptForConfirmationC5AsyncCyytAA06SimpleF16ResponseProviderVGMd, &_s11SiriKitFlow021PromptForConfirmationC5AsyncCyytAA06SimpleF16ResponseProviderVGMR);
      OUTLINED_FUNCTION_41_1(v45);
      _s11SiriKitFlow5InputVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type VoicemailShouldPlayPromptFlowStrategy and conformance VoicemailShouldPlayPromptFlowStrategy, type metadata accessor for VoicemailShouldPlayPromptFlowStrategy, &protocol conformance descriptor for VoicemailShouldPlayPromptFlowStrategy);
      v46 = PromptForConfirmationFlowAsync.init<A>(itemToConfirm:strategy:outputPublisher:)();
      __swift_destroy_boxed_opaque_existential_1((v3 + 1048));
      *(v3 + 1392) = v46;
      implicit closure #3 in ContinueReadingVoicemailFlow.execute()();
      lazy protocol witness table accessor for type TerminalOntologyNode<VoiceMail.VoiceMailNoun> and conformance TerminalOntologyNode<A>(&lazy protocol witness table cache variable for type PromptForConfirmationFlowAsync<(), SimpleConfirmationResponseProvider> and conformance PromptForConfirmationFlowAsync<A, B>, &_s11SiriKitFlow021PromptForConfirmationC5AsyncCyytAA06SimpleF16ResponseProviderVGMd, &_s11SiriKitFlow021PromptForConfirmationC5AsyncCyytAA06SimpleF16ResponseProviderVGMR, &protocol conformance descriptor for PromptForConfirmationFlowAsync<A, B>);
      static ExecuteResponse.ongoing<A>(next:childCompletion:)();
LABEL_10:

LABEL_21:

      goto LABEL_22;
    case 9:

      v47 = Logger.logObject.getter();
      static os_log_type_t.debug.getter();
      OUTLINED_FUNCTION_39_5();
      v49 = os_log_type_enabled(v47, v48);
      v50 = *(v3 + 1416);
      if (v49)
      {
        v51 = OUTLINED_FUNCTION_42();
        v115 = OUTLINED_FUNCTION_36();
        v116 = 0;
        *v51 = 136315138;
        v52 = (v50 + v10[175]);
        v53 = *v52;
        v54 = v52[1];
        OUTLINED_FUNCTION_30_13();

        DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v53, v54, v10, v3);

        v3 = v113;

        OUTLINED_FUNCTION_29_15();
        OUTLINED_FUNCTION_34_0();

        *(v51 + 4) = v53;
        _os_log_impl(&dword_0, v47, v0, "%s waitForBargeInInput, return ongoing and require for an input.", v51, 0xCu);
        OUTLINED_FUNCTION_3_7();
        OUTLINED_FUNCTION_26_0(v51);
      }

      else
      {
      }

      static ExecuteResponse.ongoing(requireInput:)();
      goto LABEL_22;
    default:
      static ExecuteResponse.complete()();
      goto LABEL_22;
  }
}

BOOL static ContinueReadingVoicemailState.__derived_enum_equals(_:_:)(unsigned __int8 a1, unsigned __int8 a2)
{
  switch(a1)
  {
    case 5u:
      if (a2 == 5)
      {
        goto LABEL_11;
      }

      goto LABEL_13;
    case 6u:
      if (a2 == 6)
      {
        goto LABEL_11;
      }

      goto LABEL_13;
    case 7u:
      if (a2 != 7)
      {
        goto LABEL_13;
      }

      goto LABEL_11;
    case 8u:
      if (a2 != 8)
      {
        goto LABEL_13;
      }

      goto LABEL_11;
    case 9u:
      if (a2 != 9)
      {
        goto LABEL_13;
      }

LABEL_11:
      result = 1;
      break;
    default:
      if (a2 - 5 >= 5)
      {
        result = a1 == a2;
      }

      else
      {
LABEL_13:
        result = 0;
      }

      break;
  }

  return result;
}

void ContinueReadingVoicemailFlow.makePromptCancelledOutputFlow()()
{
  OUTLINED_FUNCTION_66();
  v1 = type metadata accessor for DialogPhase();
  v2 = OUTLINED_FUNCTION_21(v1);
  __chkstk_darwin(v2);
  OUTLINED_FUNCTION_4();
  v3 = type metadata accessor for CATOption();
  v4 = OUTLINED_FUNCTION_21(v3);
  __chkstk_darwin(v4);
  OUTLINED_FUNCTION_4();
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static Logger.siriPhone);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = OUTLINED_FUNCTION_42();
    v15 = OUTLINED_FUNCTION_36();
    *v8 = 136315138;
    v9 = *(v0 + direct field offset for ContinueReadingVoicemailFlow.logPrefix);
    v10 = *(v0 + direct field offset for ContinueReadingVoicemailFlow.logPrefix + 8);
    v16 = v15;
    v11 = *(v0 + direct field offset for ContinueReadingVoicemailFlow.logPrefix + 16);
    v12 = *(v0 + direct field offset for ContinueReadingVoicemailFlow.logPrefix + 24);
    v17[0] = 0;
    v17[1] = 0xE000000000000000;

    DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v9, v10, v11, v12);

    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0, 0xE000000000000000, &v16);
    OUTLINED_FUNCTION_40_0();

    *(v8 + 4) = v17;
    _os_log_impl(&dword_0, v6, v7, "%s cancel is received", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v15);
    OUTLINED_FUNCTION_26_0(v15);
    OUTLINED_FUNCTION_26_0(v8);
  }

  else
  {
  }

  type metadata accessor for PhoneCallCommonCATsSimple(0);
  static CATOption.defaultMode.getter();
  CATWrapperSimple.__allocating_init(options:globals:)();
  static DialogPhase.canceled.getter();
  outlined init with copy of SignalProviding(v0 + 48, v17);
  v13 = type metadata accessor for DialogOutputFactory(0);
  OUTLINED_FUNCTION_41_1(v13);
  v14 = DialogOutputFactory.init(dialog:dialogPhase:sharedGlobals:)();
  (*(*v14 + 112))(v14);

  OUTLINED_FUNCTION_65();
}

void ContinueReadingVoicemailFlow.onPromptComplete(_:)()
{
  OUTLINED_FUNCTION_66();
  v78 = v0;
  v4 = v3;
  v75 = type metadata accessor for BargeInError();
  OUTLINED_FUNCTION_7();
  v73 = v5;
  __chkstk_darwin(v6);
  OUTLINED_FUNCTION_4();
  v74 = v8 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow12PromptResultOy09PhoneCallC14DelegatePlugin0g7HistoryD8ResponseOGMd, &_s11SiriKitFlow12PromptResultOy09PhoneCallC14DelegatePlugin0g7HistoryD8ResponseOGMR);
  OUTLINED_FUNCTION_7();
  v11 = v10;
  __chkstk_darwin(v12);
  OUTLINED_FUNCTION_12_5();
  v76 = (v13 - v14);
  __chkstk_darwin(v15);
  v17 = &v70 - v16;
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v18 = type metadata accessor for Logger();
  v19 = __swift_project_value_buffer(v18, static Logger.siriPhone);

  v77 = v19;
  v20 = Logger.logObject.getter();
  static os_log_type_t.debug.getter();
  OUTLINED_FUNCTION_39_5();
  if (os_log_type_enabled(v20, v21))
  {
    OUTLINED_FUNCTION_42();
    v22 = OUTLINED_FUNCTION_62();
    v70 = v22;
    *v2 = 136315138;
    v71 = v11;
    v72 = v4;
    v24 = *(v78 + direct field offset for ContinueReadingVoicemailFlow.logPrefix);
    v23 = *(v78 + direct field offset for ContinueReadingVoicemailFlow.logPrefix + 8);
    v26 = *(v78 + direct field offset for ContinueReadingVoicemailFlow.logPrefix + 16);
    v25 = *(v78 + direct field offset for ContinueReadingVoicemailFlow.logPrefix + 24);
    OUTLINED_FUNCTION_5_8(v22);

    v27 = v24;
    v11 = v71;
    DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v27, v23, v26, v25);
    v4 = v72;

    OUTLINED_FUNCTION_15_25();
    OUTLINED_FUNCTION_40_0();

    *(v2 + 4) = v79;
    _os_log_impl(&dword_0, v20, v1, "%s onPromptComplete", v2, 0xCu);
    OUTLINED_FUNCTION_9_28();
    OUTLINED_FUNCTION_52();
  }

  else
  {
  }

  v28 = v11[2];
  v28(v17, v4, v9);
  v29 = v11[11];
  v30 = OUTLINED_FUNCTION_22();
  if ((v29)(v30) == enum case for PromptResult.answered<A>(_:))
  {
    v31 = OUTLINED_FUNCTION_22();
    v32(v31);
    v33 = *v17;
LABEL_18:
    *(v78 + 16) = v33;
    ContinueReadingVoicemailFlow.state.didset();
    goto LABEL_19;
  }

  v34 = v11[1];
  v35 = OUTLINED_FUNCTION_22();
  v34(v35);
  v36 = v76;
  v28(v76, v4, v9);
  v37 = OUTLINED_FUNCTION_22();
  if ((v29)(v37) != enum case for PromptResult.error<A>(_:))
  {
    v57 = OUTLINED_FUNCTION_22();
    v34(v57);
LABEL_14:

    v58 = Logger.logObject.getter();
    v59 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_13_25(v59))
    {
      OUTLINED_FUNCTION_42();
      v60 = OUTLINED_FUNCTION_62();
      *v29 = 136315138;
      v61 = *(v78 + direct field offset for ContinueReadingVoicemailFlow.logPrefix + 24);
      OUTLINED_FUNCTION_5_8(v60);

      v62 = OUTLINED_FUNCTION_6_32();
      DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v62, v63, v64, v61);

      OUTLINED_FUNCTION_15_25();
      OUTLINED_FUNCTION_40_0();

      *(v29 + 4) = v79;
      OUTLINED_FUNCTION_3_37();
      _os_log_impl(v65, v66, v67, v68, v69, 0xCu);
      OUTLINED_FUNCTION_3_7();
      OUTLINED_FUNCTION_52();
    }

    else
    {
    }

    v33 = 8;
    goto LABEL_18;
  }

  v38 = OUTLINED_FUNCTION_22();
  v39(v38);
  v79[0] = *v36;
  swift_errorRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v41 = v74;
  v40 = v75;
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_14;
  }

  (*(v73 + 8))(v41, v40);

  swift_errorRetain();
  v42 = Logger.logObject.getter();
  v43 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v42, v43))
  {
    v44 = OUTLINED_FUNCTION_86_1();
    v45 = swift_slowAlloc();
    v46 = OUTLINED_FUNCTION_36();
    v77 = v46;
    *v44 = 136315394;
    v47 = *(v78 + direct field offset for ContinueReadingVoicemailFlow.logPrefix);
    v48 = *(v78 + direct field offset for ContinueReadingVoicemailFlow.logPrefix + 8);
    v50 = *(v78 + direct field offset for ContinueReadingVoicemailFlow.logPrefix + 16);
    v49 = *(v78 + direct field offset for ContinueReadingVoicemailFlow.logPrefix + 24);
    OUTLINED_FUNCTION_5_8(v46);

    DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v47, v48, v50, v49);

    OUTLINED_FUNCTION_15_25();
    OUTLINED_FUNCTION_40_0();

    *(v44 + 4) = v79;
    *(v44 + 12) = 2112;
    swift_errorRetain();
    v51 = _swift_stdlib_bridgeErrorToNSError();
    *(v44 + 14) = v51;
    *v45 = v51;
    OUTLINED_FUNCTION_3_37();
    _os_log_impl(v52, v53, v54, v55, v56, 0x16u);
    outlined destroy of PhoneCallNLIntent?(v45, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    OUTLINED_FUNCTION_26_0(v45);
    OUTLINED_FUNCTION_9_28();
    OUTLINED_FUNCTION_52();
  }

  else
  {
  }

  *(v78 + 16) = 9;
  ContinueReadingVoicemailFlow.state.didset();

LABEL_19:
  OUTLINED_FUNCTION_65();
}

void ContinueReadingVoicemailFlow.onShouldPlayPromptComplete(_:)()
{
  OUTLINED_FUNCTION_66();
  v2 = v0;
  v83 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR);
  v5 = OUTLINED_FUNCTION_21(v4);
  __chkstk_darwin(v5);
  v84 = &v73 - v6;
  OUTLINED_FUNCTION_15_0();
  v85 = type metadata accessor for ConfirmationResponse();
  OUTLINED_FUNCTION_7();
  v8 = v7;
  __chkstk_darwin(v9);
  OUTLINED_FUNCTION_12_5();
  v12 = (v10 - v11);
  __chkstk_darwin(v13);
  v15 = &v73 - v14;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow12PromptResultOyAA34SimpleConfirmationResponseProviderVGMd, &_s11SiriKitFlow12PromptResultOyAA34SimpleConfirmationResponseProviderVGMR);
  OUTLINED_FUNCTION_7();
  v17 = v16;
  __chkstk_darwin(v18);
  v81 = &v73 - v19;
  OUTLINED_FUNCTION_15_0();
  v20 = type metadata accessor for SimpleConfirmationResponseProvider();
  OUTLINED_FUNCTION_7();
  v79 = v21;
  __chkstk_darwin(v22);
  OUTLINED_FUNCTION_4();
  v78 = v24 - v23;
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v25 = type metadata accessor for Logger();
  v26 = __swift_project_value_buffer(v25, static Logger.siriPhone);

  v80 = v26;
  v27 = Logger.logObject.getter();
  static os_log_type_t.debug.getter();
  OUTLINED_FUNCTION_39_5();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = OUTLINED_FUNCTION_42();
    v74 = v8;
    v30 = v29;
    v31 = OUTLINED_FUNCTION_36();
    v73 = v31;
    *v30 = 136315138;
    v32 = (v2 + direct field offset for ContinueReadingVoicemailFlow.logPrefix);
    v76 = v12;
    v77 = v15;
    v33 = v2;
    v35 = *(v2 + direct field offset for ContinueReadingVoicemailFlow.logPrefix);
    v34 = v32[1];
    v75 = v20;
    v36 = v32[2];
    v37 = v32[3];
    OUTLINED_FUNCTION_5_8(v31);

    v38 = v35;
    v2 = v33;
    v12 = v76;
    DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v38, v34, v36, v37);
    v20 = v75;

    OUTLINED_FUNCTION_15_25();
    OUTLINED_FUNCTION_40_0();
    v15 = v77;

    *(v30 + 4) = v86;
    _os_log_impl(&dword_0, v27, v1, "%s onShouldPlayPromptComplete", v30, 0xCu);
    v39 = v73;
    __swift_destroy_boxed_opaque_existential_1(v73);
    OUTLINED_FUNCTION_26_0(v39);
    v40 = v30;
    v8 = v74;
    OUTLINED_FUNCTION_26_0(v40);
  }

  else
  {
  }

  v42 = v81;
  v41 = v82;
  (*(v17 + 16))(v81, v83, v82);
  v43 = (*(v17 + 88))(v42, v41);
  v44 = v84;
  if (v43 != enum case for PromptResult.answered<A>(_:))
  {
    (*(v17 + 8))(v42, v41);
    goto LABEL_10;
  }

  (*(v17 + 96))(v42, v41);
  v46 = v78;
  v45 = v79;
  (*(v79 + 32))(v78, v42, v20);
  SimpleConfirmationResponseProvider.confirmationResponse.getter();
  if (__swift_getEnumTagSinglePayload(v44, 1, v85) == 1)
  {
    (*(v45 + 8))(v46, v20);
    outlined destroy of PhoneCallNLIntent?(v44, &_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR);
LABEL_10:

    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_13_25(v48))
    {
      OUTLINED_FUNCTION_42();
      v49 = OUTLINED_FUNCTION_62();
      *v12 = 136315138;
      v50 = *(v2 + direct field offset for ContinueReadingVoicemailFlow.logPrefix + 24);
      OUTLINED_FUNCTION_5_8(v49);

      v51 = OUTLINED_FUNCTION_6_32();
      DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v51, v52, v53, v50);

      OUTLINED_FUNCTION_15_25();
      OUTLINED_FUNCTION_40_0();

      *(v12 + 4) = v86;
      OUTLINED_FUNCTION_3_37();
      _os_log_impl(v54, v55, v56, v57, v58, 0xCu);
      OUTLINED_FUNCTION_3_7();
      OUTLINED_FUNCTION_52();
    }

    else
    {
    }

    *(v2 + 16) = 8;
    ContinueReadingVoicemailFlow.state.didset();
    goto LABEL_14;
  }

  v59 = v85;
  (*(v8 + 32))(v15, v44, v85);
  OUTLINED_FUNCTION_28_2();
  v60();
  v61 = (*(v8 + 88))(v12, v59);
  if (v61 == enum case for ConfirmationResponse.confirmed(_:))
  {
    v62 = 7;
LABEL_19:
    *(v2 + 16) = v62;
    ContinueReadingVoicemailFlow.state.didset();
    (*(v8 + 8))(v15, v85);
    (*(v45 + 8))(v46, v20);
    goto LABEL_14;
  }

  if (v61 == enum case for ConfirmationResponse.rejected(_:))
  {
    v62 = 8;
    goto LABEL_19;
  }

  v75 = v20;
  v76 = v12;
  v77 = v15;

  v63 = Logger.logObject.getter();
  v64 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v63, v64))
  {
    v65 = OUTLINED_FUNCTION_42();
    v66 = OUTLINED_FUNCTION_36();
    v84 = v66;
    *v65 = 136315138;
    v74 = v8;
    v67 = *(v2 + direct field offset for ContinueReadingVoicemailFlow.logPrefix + 24);
    OUTLINED_FUNCTION_5_8(v66);

    v68 = OUTLINED_FUNCTION_6_32();
    DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v68, v69, v70, v67);
    v8 = v74;

    v46 = v78;
    v45 = v79;

    OUTLINED_FUNCTION_15_25();
    OUTLINED_FUNCTION_40_0();

    *(v65 + 4) = v86;
    _os_log_impl(&dword_0, v63, v64, "%s onShouldPlayPromptComplete received an unknown ConfirmationResponse", v65, 0xCu);
    OUTLINED_FUNCTION_9_28();
    OUTLINED_FUNCTION_26_0(v65);
  }

  else
  {
  }

  *(v2 + 16) = 8;
  ContinueReadingVoicemailFlow.state.didset();
  v71 = *(v8 + 8);
  v72 = v85;
  v71(v77, v85);
  (*(v45 + 8))(v46, v75);
  v71(v76, v72);
LABEL_14:
  OUTLINED_FUNCTION_65();
}

uint64_t ContinueReadingVoicemailFlow.deinit()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 48));

  outlined destroy of SearchCallHistorySharedGlobals(v0 + 104);

  v1 = direct field offset for ContinueReadingVoicemailFlow.windowParam;
  type metadata accessor for WindowedPaginationParameters();
  OUTLINED_FUNCTION_23_5();
  (*(v2 + 8))(v0 + v1);

  return v0;
}

uint64_t ContinueReadingVoicemailFlow.__deallocating_deinit()
{
  ContinueReadingVoicemailFlow.deinit();

  return swift_deallocClassInstance();
}

uint64_t protocol witness for Flow.execute() in conformance ContinueReadingVoicemailFlow<A>(uint64_t a1)
{
  v6 = (*(**v1 + 304) + **(**v1 + 304));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = protocol witness for Flow.execute() in conformance CallingIntentContinueInAppFlow<A, B>;

  return v6(a1);
}

unint64_t ContinueReadingVoicemailState.description.getter(unsigned __int8 a1)
{
  v1 = a1 - 5;
  result = 0x74656C706D6F632ELL;
  switch(v1)
  {
    case 0:
      result = 0xD000000000000011;
      break;
    case 1:
      result = 0xD00000000000001ALL;
      break;
    case 2:
      result = 0xD000000000000019;
      break;
    case 3:
      return result;
    case 4:
      result = 0xD000000000000014;
      break;
    default:
      v3._countAndFlagsBits = String.init<A>(describing:)();
      String.append(_:)(v3);

      result = 0x65726577736E612ELL;
      break;
  }

  return result;
}

id @nonobjc INStartCallIntent.init(callRecordFilter:callRecordToCallBack:audioRoute:destinationType:contacts:callCapability:)(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  if (a5)
  {
    type metadata accessor for INPerson();
    v13.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v13.super.isa = 0;
  }

  v14 = [v7 initWithCallRecordFilter:a1 callRecordToCallBack:a2 audioRoute:a3 destinationType:a4 contacts:v13.super.isa callCapability:a6];

  return v14;
}

uint64_t outlined init with copy of CommonDirectAction?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin18CommonDirectActionOSgMd, &_s27PhoneCallFlowDelegatePlugin18CommonDirectActionOSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #1 in ContinueReadingVoicemailFlow.execute(completion:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = protocol witness for Flow.execute() in conformance CallingIntentContinueInAppFlow<A, B>;

  return closure #1 in ContinueReadingVoicemailFlow.execute(completion:)(a1, v4, v5, v6, v7, v8);
}

uint64_t _s11SiriKitFlow5InputVACs23CustomStringConvertibleAAWlTm_1(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata completion function for ContinueReadingVoicemailFlow(uint64_t a1)
{
  result = type metadata accessor for WindowedPaginationParameters();
  if (v2 <= 0x3F)
  {
    return swift_initClassMetadata2();
  }

  return result;
}

unsigned __int8 *getEnumTagSinglePayload for ContinueReadingVoicemailState(unsigned __int8 *result, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
LABEL_18:
    v6 = *result;
    if (v6 >= 5)
    {
      v7 = v6 - 4;
    }

    else
    {
      v7 = 0;
    }

    if (v7 >= 6)
    {
      return (v7 - 5);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v2 = a2 + 9;
    if (a2 + 9 >= 0xFFFF00)
    {
      v3 = 4;
    }

    else
    {
      v3 = 2;
    }

    if (v2 >> 8 < 0xFF)
    {
      v3 = 1;
    }

    if (v2 >= 0x100)
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }

    switch(v4)
    {
      case 1:
        v5 = result[1];
        if (!result[1])
        {
          goto LABEL_18;
        }

        goto LABEL_16;
      case 2:
        v5 = *(result + 1);
        if (!*(result + 1))
        {
          goto LABEL_18;
        }

        goto LABEL_16;
      case 3:
        __break(1u);
        return result;
      case 4:
        v5 = *(result + 1);
        if (!v5)
        {
          goto LABEL_18;
        }

LABEL_16:
        result = ((*result | (v5 << 8)) - 9);
        break;
      default:
        goto LABEL_18;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ContinueReadingVoicemailState(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 9;
  if (a3 + 9 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 >= 0xF7)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (a2 > 0xF6)
  {
    v7 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
    switch(v6)
    {
      case 1:
        result[1] = v7;
        break;
      case 2:
        *(result + 1) = v7;
        break;
      case 3:
LABEL_25:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v7;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v6)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      case 2:
        *(result + 1) = 0;
        goto LABEL_19;
      case 3:
        goto LABEL_25;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      default:
LABEL_19:
        if (a2)
        {
LABEL_20:
          *result = a2 + 9;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ContinueReadingVoicemailFlow.ContinuationPromptFlowError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF7)
  {
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
        goto LABEL_15;
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

LABEL_15:
        v5 = (*a1 | (v4 << 8)) - 10;
        return (v5 + 1);
      }

      v4 = a1[1];
      if (a1[1])
      {
        goto LABEL_15;
      }
    }
  }

LABEL_17:
  v6 = *a1;
  if (v6 <= 9)
  {
    v7 = 9;
  }

  else
  {
    v7 = *a1;
  }

  v8 = v7 - 10;
  if (v6 < 5)
  {
    v5 = -1;
  }

  else
  {
    v5 = v8;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ContinueReadingVoicemailFlow.ContinuationPromptFlowError(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xF7)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF6)
  {
    v6 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
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
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 9;
        }

        break;
    }
  }

  return result;
}

unint64_t OUTLINED_FUNCTION_29_15()
{
  v2 = *(v0 - 88);
  v3 = *(v0 - 80);

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v2, v3, (v0 - 96));
}

unint64_t OUTLINED_FUNCTION_31_9()
{
  v2 = *(v0 - 128);
  v3 = *(v0 - 120);

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v2, v3, (v0 - 168));
}

uint64_t OUTLINED_FUNCTION_40_10()
{
  *(v1 - 128) = 0;
  *(v1 - 120) = 0xE000000000000000;
}

void *_s27PhoneCallFlowDelegatePlugin17CustomCanvasModelPAASeRzSERzrlE14serializedDatax10Foundation0J0V_tKcfCAA0A13ContactHeaderV_Tt1g5@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  lazy protocol witness table accessor for type PhoneContactHeader and conformance PhoneContactHeader();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  outlined consume of Data._Representation(a1, a2);

  if (!v3)
  {
    return memcpy(a3, __src, 0x41uLL);
  }

  return result;
}

uint64_t CustomCanvasModel<>.init(serializedData:)(uint64_t a1, unint64_t a2)
{
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  outlined consume of Data._Representation(a1, a2);
}

uint64_t specialized CustomCanvasModel<>.serializedData()()
{
  memcpy(__dst, v0, sizeof(__dst));
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  lazy protocol witness table accessor for type PhoneContactHeader and conformance PhoneContactHeader();
  v1 = dispatch thunk of JSONEncoder.encode<A>(_:)();

  return v1;
}

uint64_t CustomCanvasModel<>.serializedData()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  v4 = dispatch thunk of JSONEncoder.encode<A>(_:)();

  return v4;
}

unint64_t lazy protocol witness table accessor for type PhoneContactHeader and conformance PhoneContactHeader()
{
  result = lazy protocol witness table cache variable for type PhoneContactHeader and conformance PhoneContactHeader;
  if (!lazy protocol witness table cache variable for type PhoneContactHeader and conformance PhoneContactHeader)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneContactHeader and conformance PhoneContactHeader);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneContactHeader and conformance PhoneContactHeader;
  if (!lazy protocol witness table cache variable for type PhoneContactHeader and conformance PhoneContactHeader)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneContactHeader and conformance PhoneContactHeader);
  }

  return result;
}

uint64_t DateCreatedSlotTemplating.makeParameterValueConfirmationDialog(app:parameterName:intentResolutionResult:intent:inferenceSource:_:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v43 = a7;
  v44 = a8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  __chkstk_darwin(v10 - 8);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v40 - v14;
  __chkstk_darwin(v16);
  v18 = &v40 - v17;
  v19 = type metadata accessor for Date();
  v42 = *(v19 - 8);
  __chkstk_darwin(v19);
  v21 = &v40 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v40 - v23;
  *&v26 = __chkstk_darwin(v25).n128_u64[0];
  v28 = &v40 - v27;
  v29 = [a4 itemToConfirm];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  type metadata accessor for INDateComponentsRange();
  if ((swift_dynamicCast() & 1) == 0)
  {
    return (*(**(v8 + 40) + class metadata base offset for SearchCallHistoryCATs + 96))(0, 0, v43, v44);
  }

  v30 = v45;
  v31 = [v45 startDate];
  if (!v31)
  {

    return (*(**(v8 + 40) + class metadata base offset for SearchCallHistoryCATs + 96))(0, 0, v43, v44);
  }

  v32 = v31;
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  v41 = *(v42 + 32);
  v41(v28, v24, v19);
  v33 = [v30 endDate];
  if (v33)
  {
    v34 = v33;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v35 = 0;
  }

  else
  {
    v35 = 1;
  }

  __swift_storeEnumTagSinglePayload(v15, v35, 1, v19);
  outlined init with take of Date?(v15, v18);
  v37 = *(v8 + 40);
  outlined init with copy of Date?(v18, v12);
  if (__swift_getEnumTagSinglePayload(v12, 1, v19) == 1)
  {
    (*(v42 + 16))(v21, v28, v19);
    if (__swift_getEnumTagSinglePayload(v12, 1, v19) != 1)
    {
      outlined destroy of Date?(v12);
    }
  }

  else
  {
    v41(v21, v12, v19);
  }

  type metadata accessor for DialogCalendar();
  v38 = static DialogCalendar.make(date:)(v21);
  v39 = *(v42 + 8);
  v39(v21, v19);
  (*(*v37 + class metadata base offset for SearchCallHistoryCATs + 96))(v38, 1, v43, v44);

  outlined destroy of Date?(v18);
  return (v39)(v28, v19);
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

uint64_t outlined init with take of Date?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of Date?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of Date?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t static StartCallViewBuilders.makeDefaultDisambiguationBuilder<A>(app:intent:parameterName:disambiguationList:deviceIsLocked:sharedGlobals:displayTextCats:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v17 = type metadata accessor for Logger();
  v18 = OUTLINED_FUNCTION_12_1(v17, static Logger.siriPhone);
  v19 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_16_4(v19))
  {
    v29 = a2;
    v20 = a4;
    v21 = a5;
    v22 = a8;
    v23 = a3;
    v24 = a6;
    v25 = OUTLINED_FUNCTION_65_0();
    *v25 = 0;
    _os_log_impl(&dword_0, v18, v19, "#StartCallViewBuilders Providing DefaultDisambiguationBuilder", v25, 2u);
    v26 = v25;
    a6 = v24;
    a3 = v23;
    a8 = v22;
    a5 = v21;
    a4 = v20;
    a2 = v29;
    OUTLINED_FUNCTION_26_0(v26);
  }

  outlined init with copy of SignalProviding(a7, v31);
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6 & 1;
  outlined init with take of PhoneCallFeatureFlagProviding(v31, a9 + 48);
  *(a9 + 88) = a8;

  v27 = a2;
}

uint64_t DefaultDisambiguationBuilder.makeViewsForWatch(utteranceViews:_:)(uint64_t a1, void (*a2)(uint64_t, void))
{
  v3 = v2;
  SiriKitDisambiguationList.disambiguationItems.getter();
  v5 = *(v2 + 72);
  v6 = *(v2 + 80);
  __swift_project_boxed_opaque_existential_1((v3 + 48), *(v3 + 72));
  (*(v6 + 8))(v12, v5, v6);
  __swift_project_boxed_opaque_existential_1(v12, v12[3]);
  dispatch thunk of DeviceState.isTextToSpeechEnabled.getter();
  v7 = static SiriKitDisambiguationSnippetFactory.makeDisambiguationSnippetForWatch(disambiguationItems:textToSpeechIsEnabled:)();

  __swift_destroy_boxed_opaque_existential_1(v12);
  type metadata accessor for SiriKitAceViewBuilder();
  v8 = *(v2 + 72);
  v9 = *(v2 + 80);
  __swift_project_boxed_opaque_existential_1((v3 + 48), *(v3 + 72));
  (*(v9 + 8))(v12, v8, v9);
  dispatch thunk of static SiriKitAceViewBuilder.makeBuilder(deviceState:)();
  __swift_destroy_boxed_opaque_existential_1(v12);
  dispatch thunk of SiriKitAceViewBuilder.withUtteranceViews(utteranceViews:)();

  dispatch thunk of SiriKitAceViewBuilder.addSnippet(snippet:)();

  v10 = dispatch thunk of SiriKitAceViewBuilder.build()();

  a2(v10, 0);
}

uint64_t DefaultDisambiguationBuilder.makeViewsForMac(utteranceViews:_:)(uint64_t a1, void (*a2)(uint64_t, void))
{
  SiriKitDisambiguationList.disambiguationItems.getter();
  v4 = static SiriKitDisambiguationSnippetFactory.makeDisambiguationSnippetForMac(disambiguationItems:deviceIsLocked:)();

  type metadata accessor for SiriKitAceViewBuilder();
  v5 = v2[9];
  v6 = v2[10];
  __swift_project_boxed_opaque_existential_1(v2 + 6, v5);
  (*(v6 + 8))(v9, v5, v6);
  dispatch thunk of static SiriKitAceViewBuilder.makeBuilder(deviceState:)();
  __swift_destroy_boxed_opaque_existential_1(v9);
  dispatch thunk of SiriKitAceViewBuilder.withUtteranceViews(utteranceViews:)();

  dispatch thunk of SiriKitAceViewBuilder.withDisambiguationList(disambiguationList:)();

  v7 = dispatch thunk of SiriKitAceViewBuilder.build()();

  a2(v7, 0);
}

uint64_t DefaultDisambiguationBuilder.makeViewsForCar(utteranceViews:_:)(unint64_t a1, void (*a2)(uint64_t, void))
{
  SiriKitDisambiguationList.disambiguationItems.getter();
  v4 = static SiriKitDisambiguationSnippetFactory.makeDisambiguationSnippetForCarPlay(disambiguationItems:deviceIsLocked:)();

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_426260;
  *(v5 + 32) = v4;
  if (a1 >> 62)
  {
    type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SAAceView, SAAceView_ptr);
    v8 = v4;

    v9 = _bridgeCocoaArray<A>(_:)();

    a1 = v9;
  }

  else
  {
    v6 = v4;

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SAAceView, SAAceView_ptr);
  }

  specialized Array.append<A>(contentsOf:)(a1);
  a2(v5, 0);
}

uint64_t specialized DefaultDisambiguationBuilder.makeViewsForIOS(utteranceViews:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  return specialized DefaultDisambiguationBuilder.makeViewsForIOS(utteranceViews:_:)(a1, a2, a3, a4, a5, a6, a7, a8, closure #1 in static PicsDisambiguationBuilder.mixedCardSectionsFromDetailedSelectionItems(disambiguationItems:deviceIsLocked:sharedGlobals:persons:imageSize:)partial apply, 2, specialized DefaultDisambiguationBuilder.makeViewsForIOS(utteranceViews:_:));
}

{
  return specialized DefaultDisambiguationBuilder.makeViewsForIOS(utteranceViews:_:)(a1, a2, a3, a4, a5, a6, a7, a8, closure #1 in static PicsDisambiguationBuilder.mixedCardSectionsFromDetailedSelectionItems(disambiguationItems:deviceIsLocked:sharedGlobals:persons:imageSize:)partial apply, specialized DefaultDisambiguationBuilder.makeViewsForIOS(utteranceViews:_:));
}

{
  return specialized DefaultDisambiguationBuilder.makeViewsForIOS(utteranceViews:_:)(a1, a2, a3, a4, a5, a6, a7, a8, closure #1 in static PicsDisambiguationBuilder.mixedCardSectionsFromDetailedSelectionItems(disambiguationItems:deviceIsLocked:sharedGlobals:persons:imageSize:)partial apply, 1, specialized DefaultDisambiguationBuilder.makeViewsForIOS(utteranceViews:_:));
}

uint64_t specialized DefaultDisambiguationBuilder.makeViewsForIOS(utteranceViews:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t (*a9)(unint64_t, uint64_t), void (*a10)(uint64_t))
{
  OUTLINED_FUNCTION_3_38(a1, a2, a3);

  v14._countAndFlagsBits = v10;
  v14._object = v11;
  v15.value = PhoneCallSlotNames.init(rawValue:)(v14).value;
  v16 = SiriKitDisambiguationList.rawItems.getter();
  v17 = specialized _arrayConditionalCast<A, B>(_:)(v16);

  if (!v17)
  {
    goto LABEL_4;
  }

  v47 = v12;
  if (v15.value == PhoneCallFlowDelegatePlugin_PhoneCallSlotNames_unknownDefault)
  {
LABEL_3:

LABEL_4:

    v18 = OUTLINED_FUNCTION_4_23();
    a10(v18);

    goto LABEL_22;
  }

  OUTLINED_FUNCTION_2_46();
  PhoneCallSlotNames.rawValue.getter(v15.value);
  OUTLINED_FUNCTION_17_14();
  v20 = v20 && v19 == 0xE700000000000000;
  if (v20)
  {
    goto LABEL_16;
  }

  OUTLINED_FUNCTION_16_25();
  v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v21)
  {
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_2_46();
  PhoneCallSlotNames.rawValue.getter(v15.value);
  OUTLINED_FUNCTION_17_14();
  if (v20 && v22 == 0xE800000000000000)
  {
LABEL_16:

    goto LABEL_17;
  }

  OUTLINED_FUNCTION_16_25();
  v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v24 & 1) == 0)
  {
    goto LABEL_3;
  }

LABEL_17:
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v25 = type metadata accessor for Logger();
  v26 = OUTLINED_FUNCTION_12_1(v25, static Logger.siriPhone);
  v27 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_16_4(v27))
  {
    v28 = OUTLINED_FUNCTION_65_0();
    *v28 = 0;
    OUTLINED_FUNCTION_13_7(&dword_0, v29, v27, "#DefaultDisambiguationBuilder Prepending header items for contact handle disambiguation");
    OUTLINED_FUNCTION_26_0(v28);
  }

  __swift_project_boxed_opaque_existential_1((v13 + 48), *(v13 + 72));
  v30 = OUTLINED_FUNCTION_5_35();
  v31(v30);
  v32 = PhoneContactDisambiguationHeaderItemFactory.makeHeaderItems(persons:)(v17);
  outlined destroy of PhoneContactDisambiguationHeaderItemFactory(v50);
  v33 = SiriKitDisambiguationList.disambiguationItems.getter();
  v50[0] = v32;
  specialized Array.append<A>(contentsOf:)(v33);
  v34 = OUTLINED_FUNCTION_11_27();
  specialized DefaultDisambiguationBuilder.makeViewsForIOSDisambiguation(utteranceViews:disambiguationItems:persons:)(v34, v35, v36, a9);

  OUTLINED_FUNCTION_7_27(v37, v38, v39, v40, v41, v42, v43, v44, v46, a9, v47, v48, v49);

LABEL_22:
}

uint64_t specialized DefaultDisambiguationBuilder.makeViewsForIOS(utteranceViews:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t (*a9)(unint64_t, uint64_t), uint64_t a10, void (*a11)(uint64_t))
{
  OUTLINED_FUNCTION_3_38(a1, a2, a3);

  v15._countAndFlagsBits = v11;
  v15._object = v12;
  v16.value = PhoneCallSlotNames.init(rawValue:)(v15).value;
  v17 = SiriKitDisambiguationList.rawItems.getter();
  v18 = specialized _arrayConditionalCast<A, B>(_:)(v17);

  if (!v18)
  {
    goto LABEL_4;
  }

  v47 = v13;
  if (v16.value == PhoneCallFlowDelegatePlugin_PhoneCallSlotNames_unknownDefault)
  {
LABEL_3:

LABEL_4:

    v19 = OUTLINED_FUNCTION_4_23();
    a11(v19);

    goto LABEL_22;
  }

  OUTLINED_FUNCTION_2_46();
  PhoneCallSlotNames.rawValue.getter(v16.value);
  OUTLINED_FUNCTION_17_14();
  v21 = v21 && v20 == 0xE700000000000000;
  if (v21)
  {
    goto LABEL_16;
  }

  OUTLINED_FUNCTION_16_25();
  v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v22)
  {
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_2_46();
  PhoneCallSlotNames.rawValue.getter(v16.value);
  OUTLINED_FUNCTION_17_14();
  if (v21 && v23 == 0xE800000000000000)
  {
LABEL_16:

    goto LABEL_17;
  }

  OUTLINED_FUNCTION_16_25();
  v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v25 & 1) == 0)
  {
    goto LABEL_3;
  }

LABEL_17:
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v26 = type metadata accessor for Logger();
  v27 = OUTLINED_FUNCTION_12_1(v26, static Logger.siriPhone);
  v28 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_16_4(v28))
  {
    v29 = OUTLINED_FUNCTION_65_0();
    *v29 = 0;
    OUTLINED_FUNCTION_13_7(&dword_0, v30, v28, "#DefaultDisambiguationBuilder Prepending header items for contact handle disambiguation");
    OUTLINED_FUNCTION_26_0(v29);
  }

  __swift_project_boxed_opaque_existential_1((v14 + 48), *(v14 + 72));
  v31 = OUTLINED_FUNCTION_5_35();
  v32(v31);
  v33 = PhoneContactDisambiguationHeaderItemFactory.makeHeaderItems(persons:)(v18);
  outlined destroy of PhoneContactDisambiguationHeaderItemFactory(v50);
  v34 = SiriKitDisambiguationList.disambiguationItems.getter();
  v50[0] = v33;
  specialized Array.append<A>(contentsOf:)(v34);
  v35 = OUTLINED_FUNCTION_11_27();
  specialized DefaultDisambiguationBuilder.makeViewsForIOSDisambiguation(utteranceViews:disambiguationItems:persons:)(v35, v36, v37, a9, a10);

  OUTLINED_FUNCTION_7_27(v38, v39, v40, v41, v42, v43, v44, v45, a9, a10, v47, v48, v49);

LABEL_22:
}

uint64_t DefaultDisambiguationBuilder.makeViewsForIOS(utteranceViews:_:)(uint64_t a1, void (*a2)(uint64_t, void), uint64_t a3, uint64_t a4)
{
  v5 = v4;
  while (1)
  {
    do
    {
      v6 = v5[2];
      v7 = v5[3];

      v8._countAndFlagsBits = v6;
      v8._object = v7;
      v9.value = PhoneCallSlotNames.init(rawValue:)(v8).value;
      v10 = SiriKitDisambiguationList.rawItems.getter();
      v11 = specialized _arrayConditionalCast<A, B>(_:)(v10);
    }

    while (!v11);
    if (v9.value == PhoneCallFlowDelegatePlugin_PhoneCallSlotNames_unknownDefault)
    {
      goto LABEL_14;
    }

    if (PhoneCallSlotNames.rawValue.getter(v9.value) == 0x746361746E6F63 && v12 == 0xE700000000000000)
    {
      break;
    }

    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v14)
    {
      goto LABEL_16;
    }

    if (PhoneCallSlotNames.rawValue.getter(v9.value) == 0x73746361746E6F63 && v15 == 0xE800000000000000)
    {
      break;
    }

    v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v17)
    {
      goto LABEL_16;
    }

LABEL_14:
  }

LABEL_16:
  if (one-time initialization token for siriPhone != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  __swift_project_value_buffer(v18, static Logger.siriPhone);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_0, v19, v20, "#DefaultDisambiguationBuilder Prepending header items for contact handle disambiguation", v21, 2u);
  }

  v22 = v5[9];
  v23 = v5[10];
  __swift_project_boxed_opaque_existential_1(v5 + 6, v22);
  (*(v23 + 8))(v31, v22, v23);
  v24 = PhoneContactDisambiguationHeaderItemFactory.makeHeaderItems(persons:)(v11);
  outlined destroy of PhoneContactDisambiguationHeaderItemFactory(v31);
  v25 = SiriKitDisambiguationList.disambiguationItems.getter();
  v31[0] = v24;
  specialized Array.append<A>(contentsOf:)(v25);
  v26 = DefaultDisambiguationBuilder.makeViewsForIOSDisambiguation(utteranceViews:disambiguationItems:persons:)(a1, v31[0], v11, a4);

  a2(v26, 0);
}

void specialized DefaultDisambiguationBuilder.makeViewsForIOSDisambiguation(utteranceViews:disambiguationItems:persons:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t (*a4)(unint64_t, uint64_t))
{
  v6 = v4;
  v50 = a1;
  v8 = type metadata accessor for ImageSize();
  OUTLINED_FUNCTION_7();
  v10 = v9;
  __chkstk_darwin(v11);
  v13 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v50 - v15;
  v51 = (v4 + 48);
  static PicsUtils.shouldUsePicsDisambiguationFormat(persons:sharedGlobals:)(a3);
  if (v17)
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v18 = type metadata accessor for Logger();
    v19 = OUTLINED_FUNCTION_12_1(v18, static Logger.siriPhone);
    v20 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_16_4(v20))
    {
      v21 = OUTLINED_FUNCTION_65_0();
      *v21 = 0;
      _os_log_impl(&dword_0, v19, v20, "#DefaultDisambiguationBuilder use mixed card section for PICS", v21, 2u);
      OUTLINED_FUNCTION_26_0(v21);
    }

    v22 = *(v6 + 40);
    OUTLINED_FUNCTION_19_19();
    v23(v13);
    type metadata accessor for SiriKitDisambiguationItem();
    v24 = dispatch thunk of static SiriKitDisambiguationItem.allowedItems(disambiguationItems:deviceLockedForDisambiguation:)();
    v52[0] = _swiftEmptyArrayStorage;
    __chkstk_darwin(v24);
    *(&v50 - 32) = v22;
    v25 = v51;
    *(&v50 - 3) = v13;
    *(&v50 - 2) = v25;
    *(&v50 - 1) = v52;
    _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFs12Zip2SequenceVySaySo8INPersonCGSay11SiriKitFlow0gH18DisambiguationItemCGG_So13SFCardSectionCs5NeverOTg505_sSo8f3C11gh9Flow0bC18jk5CSo13lm17CIgggo_AB_AEtAGs5N11OIegnrzr_TRAimQIgggo_Tf1cn_n(a3, v24, a4);
    v27 = specialized BidirectionalCollection.last.getter(v26);
    if (v27)
    {
      v28 = v27;
      [v27 setSeparatorStyle:{1, v50}];
    }

    v29 = v52[0];
    type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SACardSnippet, SACardSnippet_ptr);
    OUTLINED_FUNCTION_5();
    static SACardSnippet.makeFromCardSections(cardSections:shouldGenerateAceId:)();
    OUTLINED_FUNCTION_5();

    outlined bridged method (mbnn) of @objc SACardSnippet.referencedCommands.setter(v29, v24);
  }

  else
  {
    OUTLINED_FUNCTION_19_19();
    v30(v16);
    v24 = static SiriKitDisambiguationSnippetFactory.makeDisambiguationSnippetPhone(disambiguationItems:deviceIsLocked:imageSize:)();
    v13 = v16;
  }

  (*(v10 + 8))(v13, v8);
  v32 = *v6;
  v31 = *(v6 + 8);
  v33 = *(v6 + 72);
  v34 = *(v6 + 80);
  __swift_project_boxed_opaque_existential_1(v51, v33);
  v35 = *(v34 + 8);
  v36 = v24;
  v35(v52, v33, v34);
  static UserFacingCallingAppUtils.getCommAppForLaunch(originalApp:preferredCallProvider:deviceState:)(v32, [v31 preferredCallProvider], v52);
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SAUISash, SAUISash_ptr);
  v37 = OUTLINED_FUNCTION_40_0();
  v38 = SAUISash.init(app:)(v37);
  __swift_destroy_boxed_opaque_existential_1(v52);
  [v36 setSash:v38];

  v39 = SiriKitDisambiguationList.rawItems.getter();
  LOBYTE(v38) = OUTLINED_FUNCTION_14_28(v39);

  if (v38)
  {
    objc_opt_self();
    v40 = swift_dynamicCastObjCClass();
    if (v40)
    {
      v41 = v40;
      v42 = one-time initialization token for siriPhone;
      v43 = v36;
      if (v42 != -1)
      {
        OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
      }

      v44 = type metadata accessor for Logger();
      v45 = OUTLINED_FUNCTION_12_1(v44, static Logger.siriPhone);
      v46 = static os_log_type_t.debug.getter();
      if (OUTLINED_FUNCTION_16_4(v46))
      {
        v47 = OUTLINED_FUNCTION_65_0();
        *v47 = 0;
        _os_log_impl(&dword_0, v45, v46, "#DefaultDisambiguationBuilder appending Open Contacts button on disambiguation snippet", v47, 2u);
        OUTLINED_FUNCTION_26_0(v47);
      }

      specialized DefaultDisambiguationBuilder.appendLaunchAppButton(to:)(v41);
    }
  }

  type metadata accessor for SiriKitAceViewBuilder();
  __swift_project_boxed_opaque_existential_1(v51, *(v6 + 72));
  v48 = OUTLINED_FUNCTION_6_33();
  v49(v48);
  dispatch thunk of static SiriKitAceViewBuilder.makeBuilder(deviceState:)();
  __swift_destroy_boxed_opaque_existential_1(v52);
  dispatch thunk of SiriKitAceViewBuilder.withUtteranceViews(utteranceViews:)();

  dispatch thunk of SiriKitAceViewBuilder.addSnippet(snippet:)();
  OUTLINED_FUNCTION_40_0();

  dispatch thunk of SiriKitAceViewBuilder.build()();

  OUTLINED_FUNCTION_65();
}

void specialized DefaultDisambiguationBuilder.makeViewsForIOSDisambiguation(utteranceViews:disambiguationItems:persons:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t (*a4)(unint64_t, uint64_t), uint64_t a5)
{
  v53 = a5;
  v54 = a1;
  v7 = v5;
  v9 = type metadata accessor for ImageSize();
  OUTLINED_FUNCTION_7();
  v11 = v10;
  __chkstk_darwin(v12);
  v14 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v51 - v16;
  v18 = (v5 + 48);
  static PicsUtils.shouldUsePicsDisambiguationFormat(persons:sharedGlobals:)(a3);
  if (v19)
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v52 = a4;
    v20 = type metadata accessor for Logger();
    v21 = OUTLINED_FUNCTION_12_1(v20, static Logger.siriPhone);
    v22 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_16_4(v22))
    {
      v23 = OUTLINED_FUNCTION_65_0();
      *v23 = 0;
      OUTLINED_FUNCTION_13_7(&dword_0, v24, v22, "#DefaultDisambiguationBuilder use mixed card section for PICS");
      OUTLINED_FUNCTION_26_0(v23);
    }

    v25 = *(v7 + 40);
    OUTLINED_FUNCTION_19_19();
    v26(v14);
    type metadata accessor for SiriKitDisambiguationItem();
    OUTLINED_FUNCTION_5();
    v27 = dispatch thunk of static SiriKitDisambiguationItem.allowedItems(disambiguationItems:deviceLockedForDisambiguation:)();
    v55[0] = _swiftEmptyArrayStorage;
    __chkstk_darwin(v27);
    *(&v51 - 32) = v25;
    *(&v51 - 3) = v14;
    *(&v51 - 2) = v18;
    *(&v51 - 1) = v55;
    _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFs12Zip2SequenceVySaySo8INPersonCGSay11SiriKitFlow0gH18DisambiguationItemCGG_So13SFCardSectionCs5NeverOTg505_sSo8f3C11gh9Flow0bC18jk5CSo13lm17CIgggo_AB_AEtAGs5N11OIegnrzr_TRAimQIgggo_Tf1cn_n(a3, v27, v52);
    v29 = specialized BidirectionalCollection.last.getter(v28);
    if (v29)
    {
      v30 = v29;
      [v29 setSeparatorStyle:1];
    }

    v31 = v55[0];
    type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SACardSnippet, SACardSnippet_ptr);
    OUTLINED_FUNCTION_5();
    static SACardSnippet.makeFromCardSections(cardSections:shouldGenerateAceId:)();
    OUTLINED_FUNCTION_5();

    outlined bridged method (mbnn) of @objc SACardSnippet.referencedCommands.setter(v31, v27);
  }

  else
  {
    OUTLINED_FUNCTION_19_19();
    v32(v17);
    v27 = static SiriKitDisambiguationSnippetFactory.makeDisambiguationSnippetPhone(disambiguationItems:deviceIsLocked:imageSize:)();
    v14 = v17;
  }

  (*(v11 + 8))(v14, v9);
  v33 = *v7;
  v34 = *(v7 + 72);
  v35 = *(v7 + 80);
  __swift_project_boxed_opaque_existential_1(v18, v34);
  v36 = *(v35 + 8);
  v37 = v27;
  v36(v55, v34, v35);
  static UserFacingCallingAppUtils.getCommAppForLaunch(originalApp:preferredCallProvider:deviceState:)(v33, v53, v55);
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SAUISash, SAUISash_ptr);
  v38 = OUTLINED_FUNCTION_40_0();
  v39 = SAUISash.init(app:)(v38);
  __swift_destroy_boxed_opaque_existential_1(v55);
  [v37 setSash:v39];

  v40 = SiriKitDisambiguationList.rawItems.getter();
  LOBYTE(v39) = OUTLINED_FUNCTION_14_28(v40);

  if (v39)
  {
    objc_opt_self();
    v41 = swift_dynamicCastObjCClass();
    if (v41)
    {
      v42 = v41;
      v43 = one-time initialization token for siriPhone;
      v44 = v37;
      if (v43 != -1)
      {
        OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
      }

      v45 = type metadata accessor for Logger();
      v46 = OUTLINED_FUNCTION_12_1(v45, static Logger.siriPhone);
      v47 = static os_log_type_t.debug.getter();
      if (OUTLINED_FUNCTION_16_4(v47))
      {
        v48 = OUTLINED_FUNCTION_65_0();
        *v48 = 0;
        _os_log_impl(&dword_0, v46, v47, "#DefaultDisambiguationBuilder appending Open Contacts button on disambiguation snippet", v48, 2u);
        OUTLINED_FUNCTION_26_0(v48);
      }

      specialized DefaultDisambiguationBuilder.appendLaunchAppButton(to:)(v42);
    }
  }

  type metadata accessor for SiriKitAceViewBuilder();
  __swift_project_boxed_opaque_existential_1(v18, *(v7 + 72));
  v49 = OUTLINED_FUNCTION_6_33();
  v50(v49);
  dispatch thunk of static SiriKitAceViewBuilder.makeBuilder(deviceState:)();
  __swift_destroy_boxed_opaque_existential_1(v55);
  dispatch thunk of SiriKitAceViewBuilder.withUtteranceViews(utteranceViews:)();

  dispatch thunk of SiriKitAceViewBuilder.addSnippet(snippet:)();
  OUTLINED_FUNCTION_40_0();

  dispatch thunk of SiriKitAceViewBuilder.build()();

  OUTLINED_FUNCTION_65();
}

uint64_t DefaultDisambiguationBuilder.makeViewsForIOSDisambiguation(utteranceViews:disambiguationItems:persons:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v5 = v4;
  v50 = a4;
  v51 = a1;
  v7 = type metadata accessor for ImageSize();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v48 - v12;
  static PicsUtils.shouldUsePicsDisambiguationFormat(persons:sharedGlobals:)(a3);
  if (v14)
  {
    if (one-time initialization token for siriPhone != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    __swift_project_value_buffer(v15, static Logger.siriPhone);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_0, v16, v17, "#DefaultDisambiguationBuilder use mixed card section for PICS", v18, 2u);
    }

    v19 = *(v5 + 40);
    (*(v8 + 104))(v13, enum case for ImageSize.contactDisambiguation(_:), v7);
    type metadata accessor for SiriKitDisambiguationItem();
    v20 = dispatch thunk of static SiriKitDisambiguationItem.allowedItems(disambiguationItems:deviceLockedForDisambiguation:)();
    v52[0] = _swiftEmptyArrayStorage;
    __chkstk_darwin(v20);
    *(&v48 - 32) = v19;
    *(&v48 - 3) = v13;
    *(&v48 - 2) = v5 + 48;
    *(&v48 - 1) = v52;
    _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFs12Zip2SequenceVySaySo8INPersonCGSay11SiriKitFlow0gH18DisambiguationItemCGG_So13SFCardSectionCs5NeverOTg505_sSo8f3C11gh9Flow0bC18jk5CSo13lm17CIgggo_AB_AEtAGs5N11OIegnrzr_TRAimQIgggo_Tf1cn_n(a3, v20, partial apply for closure #1 in static PicsDisambiguationBuilder.mixedCardSectionsFromDetailedSelectionItems(disambiguationItems:deviceIsLocked:sharedGlobals:persons:imageSize:));
    v22 = specialized BidirectionalCollection.last.getter(v21);
    if (v22)
    {
      v23 = v22;
      [v22 setSeparatorStyle:1];
    }

    v24 = v52[0];
    type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SACardSnippet, SACardSnippet_ptr);
    v25 = static SACardSnippet.makeFromCardSections(cardSections:shouldGenerateAceId:)();

    outlined bridged method (mbnn) of @objc SACardSnippet.referencedCommands.setter(v24, v25);
  }

  else
  {
    (*(v8 + 104))(v10, enum case for ImageSize.contactDisambiguation(_:), v7);
    v25 = static SiriKitDisambiguationSnippetFactory.makeDisambiguationSnippetPhone(disambiguationItems:deviceIsLocked:imageSize:)();
    v13 = v10;
  }

  (*(v8 + 8))(v13, v7);
  v27 = *v5;
  v26 = *(v5 + 8);
  v28 = *(v5 + 72);
  v29 = *(v5 + 80);
  v49 = (v5 + 48);
  __swift_project_boxed_opaque_existential_1((v5 + 48), v28);
  v30 = *(v29 + 8);
  v31 = v25;
  v30(v52, v28, v29);
  v32 = static PhoneCasinoFactory.makeSash<A>(intent:app:deviceState:)(v26, v27, v52, *(v50 + 16), *(v50 + 24));
  __swift_destroy_boxed_opaque_existential_1(v52);
  [v31 setSash:v32];

  v33 = *(v5 + 16);
  v34 = *(v5 + 24);
  v35 = SiriKitDisambiguationList.rawItems.getter();
  LOBYTE(v33) = specialized DefaultDisambiguationBuilder.shouldShowOpenContactsAppButton(parameterName:rawItems:)(v33, v34, v35);

  if (v33)
  {
    objc_opt_self();
    v36 = swift_dynamicCastObjCClass();
    if (v36)
    {
      v37 = v36;
      v38 = one-time initialization token for siriPhone;
      v39 = v31;
      if (v38 != -1)
      {
        swift_once();
      }

      v40 = type metadata accessor for Logger();
      __swift_project_value_buffer(v40, static Logger.siriPhone);
      v41 = Logger.logObject.getter();
      v42 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        *v43 = 0;
        _os_log_impl(&dword_0, v41, v42, "#DefaultDisambiguationBuilder appending Open Contacts button on disambiguation snippet", v43, 2u);
      }

      DefaultDisambiguationBuilder.appendLaunchAppButton(to:)(v37);
    }
  }

  type metadata accessor for SiriKitAceViewBuilder();
  v45 = *(v5 + 72);
  v44 = *(v5 + 80);
  __swift_project_boxed_opaque_existential_1(v49, v45);
  (*(v44 + 8))(v52, v45, v44);
  dispatch thunk of static SiriKitAceViewBuilder.makeBuilder(deviceState:)();
  __swift_destroy_boxed_opaque_existential_1(v52);
  dispatch thunk of SiriKitAceViewBuilder.withUtteranceViews(utteranceViews:)();

  dispatch thunk of SiriKitAceViewBuilder.addSnippet(snippet:)();

  v46 = dispatch thunk of SiriKitAceViewBuilder.build()();

  return v46;
}

uint64_t specialized DefaultDisambiguationBuilder.shouldShowOpenContactsAppButton(parameterName:rawItems:)(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = v3[9];
  v8 = v3[10];
  __swift_project_boxed_opaque_existential_1(v3 + 6, v7);
  (*(v8 + 8))(v19, v7, v8);
  v9 = v20;
  v10 = v21;
  __swift_project_boxed_opaque_existential_1(v19, v20);
  LOBYTE(v9) = DeviceState.isAuthenticatedForPhone.getter(v9, v10);
  __swift_destroy_boxed_opaque_existential_1(v19);
  if (v9)
  {

    v11._countAndFlagsBits = a1;
    v11._object = a2;
    if ((PhoneCallSlotNames.init(rawValue:)(v11).value & 0xFE) == 4)
    {
      v12 = specialized _arrayConditionalCast<A, B>(_:)(a3);
      if (v12)
      {
        v13 = v12;
        if (!PhoneContactDisambiguationProperties.isHandleDisambiguation.getter(v12))
        {
          static EmergencyUtils.isForeignEmergencyDisambiguation(_:)(v13);
          if ((v14 & 1) == 0)
          {
            static EmergencyUtils.isRegularEmergencyDisambiguation(_:)(v13);
            v18 = v17;

            v15 = v18 ^ 1;
            return v15 & 1;
          }
        }
      }
    }
  }

  v15 = 0;
  return v15 & 1;
}

void specialized DefaultDisambiguationBuilder.appendLaunchAppButton(to:)(NSObject *a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_7();
  v6 = v5;
  __chkstk_darwin(v7);
  v9 = &v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  __chkstk_darwin(v10 - 8);
  v12 = &v66 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
  *&v14 = __chkstk_darwin(v13).n128_u64[0];
  v16 = &v66 - v15;
  v66 = a1;
  v17 = [a1 cardData];
  if (v17)
  {
    v18 = v17;
    v19 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;
  }

  else
  {
    v19 = 0;
    v21 = 0xF000000000000000;
  }

  v22 = objc_allocWithZone(_SFPBCard);
  v23 = @nonobjc _SFPBCard.init(data:)(v19, v21);
  if (v23)
  {
    v24 = v23;
    v25 = [objc_allocWithZone(SFCard) initWithProtobuf:v23];

    if (v25)
    {
      (*(**(v2 + 88) + class metadata base offset for PhoneCallDisplayTextCATs + 536))();
      v26 = Result<>.firstPrint.getter();
      v28 = v27;
      outlined destroy of Result<TemplatingResult, Error>(v16);
      if (v28)
      {
        v29 = [objc_allocWithZone(SFButtonCardSection) init];
        [v29 setSeparatorStyle:0];
        type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SFRichText, SFRichText_ptr);
        v30 = @nonobjc SFRichText.__allocating_init(string:)(v26, v28);
        [v29 setTitle:v30];

        v31 = [objc_allocWithZone(SAUIAppPunchOut) init];
        URL.init(string:)();
        v32 = type metadata accessor for URL();
        v34 = 0;
        if (__swift_getEnumTagSinglePayload(v12, 1, v32) != 1)
        {
          URL._bridgeToObjectiveC()(v33);
          v34 = v35;
          (*(*(v32 - 8) + 8))(v12, v32);
        }

        [v31 setPunchOutUri:v34];

        v36 = v31;
        UUID.init()();
        UUID.uuidString.getter();
        (*(v6 + 8))(v9, v4);
        v37 = String._bridgeToObjectiveC()();

        [v36 setAceId:v37];

        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
        v38 = swift_allocObject();
        *(v38 + 16) = xmmword_426260;
        v39 = v36;
        v40 = static CasinoFactory.makeReferentialAbstractCommand(originalCommand:)();

        *(v38 + 32) = v40;
        type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SFAbstractCommand, SFAbstractCommand_ptr);
        isa = Array._bridgeToObjectiveC()().super.isa;

        [v29 setCommands:isa];

        v42 = [v25 cardSections];
        if (v42)
        {
          v43 = v42;
          type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SFCardSection, SFCardSection_ptr);
          v44 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

          v67 = v44;
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          v45 = v66;
          if (*(&dword_10 + (v67 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v67 & 0xFFFFFFFFFFFFFF8)) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          if (v67)
          {
            v46.super.isa = Array._bridgeToObjectiveC()().super.isa;
          }

          else
          {
            v46.super.isa = 0;
          }

          [v25 setCardSections:v46.super.isa];
        }

        else
        {

          [v25 setCardSections:0];
          v45 = v66;
        }

        v56 = [objc_allocWithZone(_SFPBCard) initWithFacade:v25];
        v57 = v56;
        if (v56)
        {
          v58 = [(objc_class *)v56 data];

          if (v58)
          {
            v59 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
            v61 = v60;

            v57 = Data._bridgeToObjectiveC()().super.isa;
            outlined consume of Data._Representation(v59, v61);
          }

          else
          {
            v57 = 0;
          }
        }

        [v45 setCardData:v57];

        v62 = [v45 referencedCommands];
        if (v62)
        {
          v63 = v62;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20SAClientBoundCommand_pMd, &_sSo20SAClientBoundCommand_pMR);
          v64 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

          v67 = v64;
          v39 = v39;
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*(&dword_10 + (v67 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v67 & 0xFFFFFFFFFFFFFF8)) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          if (v67)
          {
            v65.super.isa = Array._bridgeToObjectiveC()().super.isa;
          }

          else
          {
            v65.super.isa = 0;
          }

          [v45 setReferencedCommands:v65.super.isa];
        }

        else
        {
          [v45 setReferencedCommands:0];
        }
      }

      else
      {
        if (one-time initialization token for siriPhone != -1)
        {
          OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
        }

        v52 = type metadata accessor for Logger();
        v53 = OUTLINED_FUNCTION_12_1(v52, static Logger.siriPhone);
        v54 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v53, v54))
        {
          v55 = OUTLINED_FUNCTION_65_0();
          *v55 = 0;
          _os_log_impl(&dword_0, v53, v54, "#DefaultDisambiguationBuilder failed to generate Open Contacts button label", v55, 2u);
          OUTLINED_FUNCTION_26_0(v55);
        }
      }

      OUTLINED_FUNCTION_65();
    }

    else
    {
      if (one-time initialization token for siriPhone != -1)
      {
        OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
      }

      v47 = type metadata accessor for Logger();
      v66 = OUTLINED_FUNCTION_12_1(v47, static Logger.siriPhone);
      v48 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v66, v48))
      {
        v49 = OUTLINED_FUNCTION_65_0();
        *v49 = 0;
        _os_log_impl(&dword_0, v66, v48, "#DefaultDisambiguationBuilder failed to get SFCard from SFCardSnippet", v49, 2u);
        OUTLINED_FUNCTION_26_0(v49);
      }

      OUTLINED_FUNCTION_65();
    }
  }

  else
  {
    __break(1u);
  }
}

void DefaultDisambiguationBuilder.appendLaunchAppButton(to:)(NSObject *a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  __chkstk_darwin(v8 - 8);
  v10 = &v63 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
  *&v12 = __chkstk_darwin(v11).n128_u64[0];
  v14 = &v63 - v13;
  v63 = a1;
  v15 = [a1 cardData];
  if (v15)
  {
    v16 = v15;
    v17 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;
  }

  else
  {
    v17 = 0;
    v19 = 0xF000000000000000;
  }

  v20 = objc_allocWithZone(_SFPBCard);
  v21 = @nonobjc _SFPBCard.init(data:)(v17, v19);
  if (v21)
  {
    v22 = v21;
    v23 = [objc_allocWithZone(SFCard) initWithProtobuf:v21];

    if (v23)
    {
      (*(**(v2 + 88) + class metadata base offset for PhoneCallDisplayTextCATs + 536))();
      v24 = Result<>.firstPrint.getter();
      v26 = v25;
      outlined destroy of Result<TemplatingResult, Error>(v14);
      if (v26)
      {
        v27 = [objc_allocWithZone(SFButtonCardSection) init];
        [v27 setSeparatorStyle:0];
        type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SFRichText, SFRichText_ptr);
        v28 = @nonobjc SFRichText.__allocating_init(string:)(v24, v26);
        [v27 setTitle:v28];

        v29 = [objc_allocWithZone(SAUIAppPunchOut) init];
        URL.init(string:)();
        v30 = type metadata accessor for URL();
        v32 = 0;
        if (__swift_getEnumTagSinglePayload(v10, 1, v30) != 1)
        {
          URL._bridgeToObjectiveC()(v31);
          v32 = v33;
          (*(*(v30 - 8) + 8))(v10, v30);
        }

        [v29 setPunchOutUri:v32];

        v34 = v29;
        UUID.init()();
        UUID.uuidString.getter();
        (*(v5 + 8))(v7, v4);
        v35 = String._bridgeToObjectiveC()();

        [v34 setAceId:v35];

        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
        v36 = swift_allocObject();
        *(v36 + 16) = xmmword_426260;
        v37 = v34;
        v38 = static CasinoFactory.makeReferentialAbstractCommand(originalCommand:)();

        *(v36 + 32) = v38;
        type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SFAbstractCommand, SFAbstractCommand_ptr);
        isa = Array._bridgeToObjectiveC()().super.isa;

        [v27 setCommands:isa];

        v40 = [v23 cardSections];
        if (v40)
        {
          v41 = v40;
          type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SFCardSection, SFCardSection_ptr);
          v42 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

          v64 = v42;
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          v43 = v63;
          if (*(&dword_10 + (v64 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v64 & 0xFFFFFFFFFFFFFF8)) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          if (v64)
          {
            v44.super.isa = Array._bridgeToObjectiveC()().super.isa;
          }

          else
          {
            v44.super.isa = 0;
          }

          [v23 setCardSections:v44.super.isa];
        }

        else
        {

          [v23 setCardSections:0];
          v43 = v63;
        }

        v53 = [objc_allocWithZone(_SFPBCard) initWithFacade:v23];
        v54 = v53;
        if (v53)
        {
          v55 = [(objc_class *)v53 data];

          if (v55)
          {
            v56 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
            v58 = v57;

            v54 = Data._bridgeToObjectiveC()().super.isa;
            outlined consume of Data._Representation(v56, v58);
          }

          else
          {
            v54 = 0;
          }
        }

        [v43 setCardData:v54];

        v59 = [v43 referencedCommands];
        if (v59)
        {
          v60 = v59;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20SAClientBoundCommand_pMd, &_sSo20SAClientBoundCommand_pMR);
          v61 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

          v64 = v61;
          v37 = v37;
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*(&dword_10 + (v64 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v64 & 0xFFFFFFFFFFFFFF8)) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          if (v64)
          {
            v62.super.isa = Array._bridgeToObjectiveC()().super.isa;
          }

          else
          {
            v62.super.isa = 0;
          }

          [v43 setReferencedCommands:v62.super.isa];
        }

        else
        {
          [v43 setReferencedCommands:0];
        }
      }

      else
      {
        if (one-time initialization token for siriPhone != -1)
        {
          swift_once();
        }

        v49 = type metadata accessor for Logger();
        __swift_project_value_buffer(v49, static Logger.siriPhone);
        v50 = Logger.logObject.getter();
        v51 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v50, v51))
        {
          v52 = swift_slowAlloc();
          *v52 = 0;
          _os_log_impl(&dword_0, v50, v51, "#DefaultDisambiguationBuilder failed to generate Open Contacts button label", v52, 2u);
        }
      }
    }

    else
    {
      if (one-time initialization token for siriPhone != -1)
      {
        swift_once();
      }

      v45 = type metadata accessor for Logger();
      __swift_project_value_buffer(v45, static Logger.siriPhone);
      v63 = Logger.logObject.getter();
      v46 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v63, v46))
      {
        v47 = swift_slowAlloc();
        *v47 = 0;
        _os_log_impl(&dword_0, v63, v46, "#DefaultDisambiguationBuilder failed to get SFCard from SFCardSnippet", v47, 2u);
      }

      v48 = v63;
    }
  }

  else
  {
    __break(1u);
  }
}

id @nonobjc SFRichText.__allocating_init(string:)(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = String._bridgeToObjectiveC()();
  }

  else
  {
    v2 = 0;
  }

  v3 = [swift_getObjCClassFromMetadata() textWithString:v2];

  return v3;
}

id @nonobjc _SFPBCard.init(data:)(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    outlined consume of Data?(a1, a2);
  }

  v6 = [v2 initWithData:isa];

  return v6;
}

uint64_t type metadata instantiation function for DefaultDisambiguationBuilder(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t getEnumTagSinglePayload for DefaultDisambiguationBuilder(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 96))
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

uint64_t storeEnumTagSinglePayload for DefaultDisambiguationBuilder(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t DestinationTypeSlotTemplating.makeParameterValueConfirmationDialog(app:parameterName:intentResolutionResult:intent:inferenceSource:_:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  *&v14 = __chkstk_darwin(v13 - 8).n128_u64[0];
  v16 = v26 - v15;
  v17 = [a4 itemToConfirm];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  type metadata accessor for INCallDestinationType(0);
  if (swift_dynamicCast())
  {
    v18 = v26[1];
  }

  else
  {
    v18 = (*(*(a9 + 32) + 16))(*(a9 + 16));
  }

  v19 = *(v9 + 40);
  if (v18)
  {
    BackingType = INCallDestinationTypeGetBackingType();
    switch(BackingType)
    {
      case 1:
        v21 = @"NORMAL_DESTINATION";
        goto LABEL_12;
      case 2:
        v21 = @"EMERGENCY_DESTINATION";
        goto LABEL_12;
      case 3:
        v21 = @"VOICEMAIL_DESTINATION";
        goto LABEL_12;
      case 4:
        v21 = @"REDIAL_DESTINATION";
        goto LABEL_12;
      case 5:
        v21 = @"CALL_BACK_DESTINATION";
LABEL_12:
        v22 = v21;
        break;
      default:
        v21 = [NSString stringWithFormat:@"(unknown: %i)", BackingType];
        break;
    }

    v23 = v21;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  SpeakableString.init(print:speak:)();
  v24 = type metadata accessor for SpeakableString();
  __swift_storeEnumTagSinglePayload(v16, 0, 1, v24);
  (*(*v19 + class metadata base offset for StartCallCATs + 128))(v16, a7, a8);
  return outlined destroy of SpeakableString?(v16);
}

uint64_t type metadata instantiation function for DestinationTypeSlotTemplating(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t static Transformer<>.transformer(sharedGlobals:previousIntent:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMR);
  type metadata accessor for INCallDestinationType(0);

  return Transformer.init(transform:)();
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay27PhoneCallFlowDelegatePlugin04SiriA7Contact_pGMd, &_sSay27PhoneCallFlowDelegatePlugin04SiriA7Contact_pGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8INPersonCGSgMd, &_sSaySo8INPersonCGSgMR);
  OUTLINED_FUNCTION_2_66();
  OUTLINED_FUNCTION_31_14();

  return Transformer.init(transform:)();
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMR);
  type metadata accessor for INAudioCallTTYType(0);
  OUTLINED_FUNCTION_11_36();
  OUTLINED_FUNCTION_31_14();

  return Transformer.init(transform:)();
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMR);
  type metadata accessor for INCallRecordType(0);

  return Transformer.init(transform:)();
}

void closure #1 in static Transformer<>.transformer(sharedGlobals:previousIntent:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  OUTLINED_FUNCTION_0_49();
  if (PhoneCallNLIntent.isEmergencyServicesCall()())
  {
    v4 = 2;
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    OUTLINED_FUNCTION_0_49();
    if (PhoneCallNLIntent.hasVoiceMail()() && (__swift_project_boxed_opaque_existential_1(a1, a1[3]), OUTLINED_FUNCTION_0_49(), !PhoneCallNLIntent.hasPhoneNumber()()))
    {
      v4 = 3;
    }

    else
    {
      __swift_project_boxed_opaque_existential_1(a1, a1[3]);
      OUTLINED_FUNCTION_0_49();
      if (PhoneCallNLIntent.isRedial()())
      {
        v4 = 4;
      }

      else
      {
        __swift_project_boxed_opaque_existential_1(a1, a1[3]);
        OUTLINED_FUNCTION_0_49();
        if (PhoneCallNLIntent.isCallBack()())
        {
          v4 = 5;
        }

        else
        {
          v4 = 1;
        }
      }
    }
  }

  if (one-time initialization token for siriPhone != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static Logger.siriPhone);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v8 = 136315394;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo21INCallDestinationTypeVGMd, &_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo21INCallDestinationTypeVGMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo21INCallDestinationTypeVGmMd, &_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo21INCallDestinationTypeVGmMR);
    v9 = String.init<A>(describing:)();
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v20);

    *(v8 + 4) = v11;
    *(v8 + 12) = 2080;
    BackingType = INCallDestinationTypeGetBackingType();
    switch(BackingType)
    {
      case 1:
        v13 = @"NORMAL_DESTINATION";
        goto LABEL_21;
      case 2:
        v13 = @"EMERGENCY_DESTINATION";
        goto LABEL_21;
      case 3:
        v13 = @"VOICEMAIL_DESTINATION";
        goto LABEL_21;
      case 4:
        v13 = @"REDIAL_DESTINATION";
        goto LABEL_21;
      case 5:
        v13 = @"CALL_BACK_DESTINATION";
LABEL_21:
        v14 = v13;
        break;
      default:
        v13 = [NSString stringWithFormat:@"(unknown: %i)", BackingType];
        break;
    }

    v15 = v13;
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v18, &v20);

    *(v8 + 14) = v19;
    _os_log_impl(&dword_0, v6, v7, "#%s --> %s", v8, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  *a2 = v4;
}

unint64_t DeviceIdiom.getPBDeviceIdiom()()
{
  v1 = v0;
  v2 = type metadata accessor for DeviceIdiom();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == enum case for DeviceIdiom.car(_:))
  {
    v8 = 0;
    v9 = 5;
  }

  else if (v7 == enum case for DeviceIdiom.homepod(_:))
  {
    v8 = 0;
    v9 = 4;
  }

  else if (v7 == enum case for DeviceIdiom.mac(_:))
  {
    v8 = 0;
    v9 = 7;
  }

  else if (v7 == enum case for DeviceIdiom.pad(_:))
  {
    v8 = 0;
    v9 = 2;
  }

  else if (v7 == enum case for DeviceIdiom.phone(_:))
  {
    v8 = 0;
    v9 = 1;
  }

  else if (v7 == enum case for DeviceIdiom.watch(_:))
  {
    v8 = 0;
    v9 = 3;
  }

  else if (v7 == enum case for DeviceIdiom.tv(_:))
  {
    v8 = 0;
    v9 = 6;
  }

  else
  {
    (*(v3 + 8))(v6, v2);
    v9 = 0;
    v8 = 1;
  }

  return v9 | (v8 << 32);
}

uint64_t DeviceState.isVoiceTrigger.getter()
{
  OUTLINED_FUNCTION_24_3();
  v0 = type metadata accessor for InputOrigin();
  OUTLINED_FUNCTION_7();
  v2 = v1;
  __chkstk_darwin(v3);
  OUTLINED_FUNCTION_4();
  v6 = v5 - v4;
  OUTLINED_FUNCTION_20_0();
  dispatch thunk of DeviceState.inputOrigin.getter();
  v7 = InputOrigin.isVoiceTrigger.getter();
  (*(v2 + 8))(v6, v0);
  return v7 & 1;
}

uint64_t DeviceState.isTriggerlessFollowup.getter(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for InputOrigin();
  OUTLINED_FUNCTION_7();
  v5 = v4;
  __chkstk_darwin(v6);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v17 - v10;
  v17[1] = a2;
  dispatch thunk of DeviceState.inputOrigin.getter();
  v12 = *(v5 + 104);
  v12(v8, enum case for InputOrigin.clientGenerated(_:), v3);
  v13 = specialized == infix<A>(_:_:)(v11, v8);
  v14 = *(v5 + 8);
  v14(v8, v3);
  v14(v11, v3);
  if (v13)
  {
    v15 = 1;
  }

  else
  {
    dispatch thunk of DeviceState.inputOrigin.getter();
    v12(v8, enum case for InputOrigin.triggerlessFollowup(_:), v3);
    v15 = specialized == infix<A>(_:_:)(v11, v8);
    v14(v8, v3);
    v14(v11, v3);
  }

  return v15 & 1;
}

uint64_t InputOrigin.isVoiceTrigger.getter()
{
  v1 = type metadata accessor for InputOrigin();
  OUTLINED_FUNCTION_7();
  v3 = v2;
  __chkstk_darwin(v4);
  OUTLINED_FUNCTION_4();
  v7 = v6 - v5;
  v8 = *(v3 + 104);
  v8(v6 - v5, enum case for InputOrigin.voiceTrigger(_:), v1);
  v9 = specialized == infix<A>(_:_:)(v0, v7);
  v10 = *(v3 + 8);
  v11 = OUTLINED_FUNCTION_20_0();
  v10(v11);
  if (v9)
  {
    v12 = 1;
  }

  else
  {
    v8(v7, enum case for InputOrigin.bluetoothVoiceTrigger(_:), v1);
    v12 = specialized == infix<A>(_:_:)(v0, v7);
    v13 = OUTLINED_FUNCTION_20_0();
    v10(v13);
  }

  return v12 & 1;
}

uint64_t DeviceState.isStandaloneIOS.getter()
{
  OUTLINED_FUNCTION_24_3();
  if (dispatch thunk of DeviceState.isPhone.getter() & 1) != 0 || (OUTLINED_FUNCTION_20_0(), (dispatch thunk of DeviceState.isPad.getter()) || (OUTLINED_FUNCTION_20_0(), (dispatch thunk of DeviceState.isPod.getter()))
  {
    OUTLINED_FUNCTION_20_0();
    v0 = dispatch thunk of DeviceState.isCarPlay.getter() ^ 1;
  }

  else
  {
    v0 = 0;
  }

  return v0 & 1;
}

uint64_t DeviceState.isGroupFaceTimeDeviceUnsupported(app:)()
{
  if (!App.isFirstParty()())
  {
    return 0;
  }

  OUTLINED_FUNCTION_5_26();
  if (dispatch thunk of DeviceState.isWatch.getter())
  {
    return 1;
  }

  OUTLINED_FUNCTION_5_26();
  if (dispatch thunk of DeviceState.isHomePod.getter())
  {
    return 1;
  }

  OUTLINED_FUNCTION_5_26();

  return dispatch thunk of DeviceState.isMac.getter();
}

uint64_t DeviceState.siriInputLocale.getter()
{
  v0 = dispatch thunk of DeviceState.preferencesLanguageCode.getter();
  if (v1)
  {

    return Locale.init(identifier:)(v0);
  }

  else
  {
    OUTLINED_FUNCTION_5_26();

    return dispatch thunk of DeviceState.siriLocale.getter();
  }
}

uint64_t DeviceState.isSiriEmergencyCallingUnsupported(featureManager:)(uint64_t a1, uint64_t a2)
{
  if (dispatch thunk of DeviceState.isPad.getter() & 1) != 0 || (OUTLINED_FUNCTION_20_0(), (dispatch thunk of DeviceState.isMac.getter()))
  {
    v3 = (*(*a1 + 144))() ^ 1;
    return v3 & 1;
  }

  OUTLINED_FUNCTION_20_0();
  if (dispatch thunk of DeviceState.isPod.getter())
  {
    v3 = 1;
    return v3 & 1;
  }

  OUTLINED_FUNCTION_20_0();

  return dispatch thunk of DeviceState.isXRDevice.getter();
}

BOOL DeviceState.isSearchCallHistoryUnavailable(app:)(uint64_t a1, uint64_t a2)
{
  if (dispatch thunk of DeviceState.isAppleTV.getter())
  {
    return 1;
  }

  OUTLINED_FUNCTION_2_47();
  if (dispatch thunk of DeviceState.isMac.getter())
  {
    return 1;
  }

  OUTLINED_FUNCTION_2_47();
  if ((dispatch thunk of DeviceState.isWatch.getter() & 1) != 0 && App.isFirstParty()())
  {
    return 1;
  }

  else
  {
    OUTLINED_FUNCTION_2_47();
    if (dispatch thunk of DeviceState.isHomePod.getter())
    {
      return !App.isFirstParty()();
    }

    OUTLINED_FUNCTION_2_47();
    return (dispatch thunk of DeviceState.isPad.getter() & 1) != 0 && !App.isFirstParty()();
  }
}

uint64_t DeviceState.isSendingFaceTimeLinkDeviceUnsupported(app:)(uint64_t a1, uint64_t a2)
{
  if (dispatch thunk of DeviceState.isWatch.getter() & 1) != 0 || (dispatch thunk of DeviceState.isHomePod.getter())
  {
    v2 = 1;
  }

  else
  {
    v2 = dispatch thunk of DeviceState.isMac.getter();
  }

  return App.isFirstParty()() & v2 & 1;
}

uint64_t DialogOutputFactory.__allocating_init(dialog:dialogPhase:sharedGlobals:)()
{
  OUTLINED_FUNCTION_7_8();
  v0 = swift_allocObject();
  DialogOutputFactory.init(dialog:dialogPhase:sharedGlobals:)();
  return v0;
}

uint64_t DialogOutputFactory.dialog.getter()
{
  v1 = *(v0 + 56);

  return v1;
}

uint64_t DialogOutputFactory.dialogPhase.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin19DialogOutputFactory_dialogPhase;
  type metadata accessor for DialogPhase();
  OUTLINED_FUNCTION_40();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t DialogOutputFactory.init(dialog:dialogPhase:sharedGlobals:)()
{
  OUTLINED_FUNCTION_7_8();
  v5 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin19DialogOutputFactory_dialogPhase;
  type metadata accessor for DialogPhase();
  OUTLINED_FUNCTION_40();
  (*(v6 + 32))(v1 + v5, v2);
  outlined init with take of SPHConversation(v0, v1 + 16);
  *(v1 + 56) = v4;
  *(v1 + 64) = v3;
  return v1;
}

uint64_t DialogOutputFactory.makeSimpleOutputFlowAsync()()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  (*(v2 + 16))(v9, v1, v2);
  v3 = v10;
  v4 = v11;
  __swift_project_boxed_opaque_existential_1(v9, v10);
  v8[3] = v3;
  v8[4] = v4;
  __swift_allocate_boxed_opaque_existential_1(v8);
  OUTLINED_FUNCTION_40();
  (*(v5 + 16))();
  type metadata accessor for SimpleOutputFlowAsync();
  swift_allocObject();

  v6 = SimpleOutputFlowAsync.init(outputPublisher:outputGenerator:)();
  __swift_destroy_boxed_opaque_existential_1(v9);
  return v6;
}

uint64_t closure #1 in DialogOutputFactory.makeSimpleOutputFlowAsync()(uint64_t a1, uint64_t a2)
{
  *(v2 + 72) = a1;
  v5 = (*(*a2 + 128) + **(*a2 + 128));
  v3 = swift_task_alloc();
  *(v2 + 80) = v3;
  *v3 = v2;
  v3[1] = closure #1 in DialogOutputFactory.makeSimpleOutputFlowAsync();

  return v5(v2 + 16);
}

uint64_t closure #1 in DialogOutputFactory.makeSimpleOutputFlowAsync()()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v1 = *v0;
  OUTLINED_FUNCTION_4_2();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v3, v4, v5);
}

{
  OUTLINED_FUNCTION_15();
  if (*(v0 + 56))
  {
    *(v0 + 64) = *(v0 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    swift_willThrowTypedImpl();
  }

  else
  {
    outlined init with take of SPHConversation((v0 + 16), *(v0 + 72));
  }

  OUTLINED_FUNCTION_11();

  return v1();
}