uint64_t SPHCall.toPhoneCallRecord()()
{
  type metadata accessor for Locale();
  OUTLINED_FUNCTION_7();
  __chkstk_darwin(v0);
  OUTLINED_FUNCTION_4();
  v3 = (v2 - v1);
  isa = SPHCall.toINCallRecord()().super.isa;
  type metadata accessor for AppInfoBuilder();
  v5 = swift_allocObject();
  static Device.current.getter();
  __swift_project_boxed_opaque_existential_1(v11, v11[3]);
  dispatch thunk of DeviceState.siriLocale.getter();
  __swift_destroy_boxed_opaque_existential_1(v11);
  v6 = _s27PhoneCallFlowDelegatePlugin0aB6RecordC10getBuilder04callF07options07appInfoH06localeAC0H0CSo06INCallF0C_AC7OptionsVAA03AppL8Building_p10Foundation6LocaleVtFZTf4nnenn_nAA0plH0C_Tt3g5(isa, 0, v5, v3);
  type metadata accessor for PhoneCallRecord(0);
  swift_allocObject();
  v7 = PhoneCallRecord.init(builder:)(v6);

  v8 = OUTLINED_FUNCTION_20_0();
  v9(v8);
  return v7;
}

uint64_t specialized AppInfoBuilding.getAppNameIfThirdParty(_:requestedLocale:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (App.isFirstParty()())
  {
    return 0;
  }

  else
  {
    return (*(*v3 + 88))(a1, a2);
  }
}

uint64_t SPHCall.isFTVideo.getter()
{
  OUTLINED_FUNCTION_10_55();
  if (((*(v0 + 32))() & 1) == 0)
  {
    return 0;
  }

  v1 = OUTLINED_FUNCTION_20_0();

  return v2(v1);
}

id SPHCall.localHandle.getter()
{
  OUTLINED_FUNCTION_10_55();
  if (((*(v0 + 32))() & 1) == 0)
  {
    v9 = OUTLINED_FUNCTION_20_0();
    v11 = v10(v9);
    v8 = [v11 handle];

    return v8;
  }

  v1 = OUTLINED_FUNCTION_20_0();
  v2(v1);
  if (!v14)
  {
    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v13, &_s27PhoneCallFlowDelegatePlugin15SPHConversation_pSgMd, &_s27PhoneCallFlowDelegatePlugin15SPHConversation_pSgMR);
    return 0;
  }

  v3 = v15;
  __swift_project_boxed_opaque_existential_1(v13, v14);
  v4 = OUTLINED_FUNCTION_40_0();
  v6 = v5(v4, v3);
  if (!v6)
  {
    __swift_destroy_boxed_opaque_existential_1(v13);
    return 0;
  }

  v7 = v6;
  v8 = [v6 handle];

  __swift_destroy_boxed_opaque_existential_1(v13);
  return v8;
}

uint64_t SPHCall.isFTAudio.getter()
{
  OUTLINED_FUNCTION_10_55();
  if ((*(v0 + 32))())
  {
    v1 = OUTLINED_FUNCTION_20_0();
    v3 = v2(v1) ^ 1;
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

BOOL specialized Set.isEmpty.getter(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    v1 = __CocoaSet.count.getter();
  }

  else
  {
    v1 = *(a1 + 16);
  }

  return v1 == 0;
}

uint64_t TUCall.conversation.getter@<X0>(void *a1@<X8>)
{
  if (one-time initialization token for instance != -1)
  {
    OUTLINED_FUNCTION_0_36(&one-time initialization token for instance);
  }

  OUTLINED_FUNCTION_19_6();
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  v4 = v1;
  specialized CallStateProvider.onCallCenterQueue<A>(_:)(partial apply for closure #1 in TUCall.conversation.getter, v3);
  OUTLINED_FUNCTION_32_25();
  if (&static CallStateProvider.instance)
  {
    result = type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for TUConversation, TUConversation_ptr);
    v6 = &protocol witness table for TUConversation;
  }

  else
  {
    result = 0;
    v6 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  *a1 = &static CallStateProvider.instance;
  a1[3] = result;
  a1[4] = v6;
  return result;
}

id closure #1 in TUCall.conversation.getter@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = [a1 activeConversationForCall:a2];
  *a3 = result;
  return result;
}

id TUCall.maxRemoteParticipants.getter()
{
  v1 = [v0 provider];
  v2 = [v1 isFaceTimeProvider];

  if (!v2 || ![v0 isConversation])
  {
    return &dword_0 + 1;
  }

  v3 = objc_opt_self();

  return [v3 maximumNumberOfInvitedMembers];
}

uint64_t (*TUCall.isMicrophoneMuted.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = [v1 isUplinkMuted];
  return TUCall.isMicrophoneMuted.modify;
}

uint64_t TUCall.isSpeakerphoneEnabled.getter()
{
  if (one-time initialization token for instance != -1)
  {
    OUTLINED_FUNCTION_0_36(&one-time initialization token for instance);
  }

  return OUTLINED_FUNCTION_6_89() & 1;
}

uint64_t TUCall.isSpeakerphoneEnabled.setter(char a1)
{
  if (one-time initialization token for instance != -1)
  {
    OUTLINED_FUNCTION_0_36(&one-time initialization token for instance);
  }

  v2 = swift_allocObject();
  *(v2 + 16) = a1 & 1;
  v3 = static CallStateProvider.instance;
  OUTLINED_FUNCTION_50();
  v4 = swift_allocObject();
  *(v4 + 16) = partial apply for closure #1 in TUCall.isSpeakerphoneEnabled.setter;
  *(v4 + 24) = v2;
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for TUCallCenter, TUCallCenter_ptr);
  v5 = v3;

  OUTLINED_FUNCTION_21_46();
}

void closure #1 in TUCall.isSpeakerphoneEnabled.getter(void *a1@<X0>, unsigned __int8 *a2@<X8>)
{
  v3 = [a1 routeController];
  v4 = [v3 speakerRoute];

  if (v4)
  {
    v5 = [v4 isCurrentlyPicked];
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
}

void closure #1 in TUCall.isSpeakerphoneEnabled.setter(void *a1, char a2)
{
  v4 = [a1 routeController];
  v5 = [v4 speakerRoute];
  if (v5)
  {
    v14 = v5;
    v6 = [v4 receiverRoute];
    if (v6)
    {
      v7 = v6;
      v8 = [a1 routeController];
      v9 = v8;
      if (a2)
      {
        v10 = v14;
      }

      else
      {
        v10 = v7;
      }

      [v8 pickRoute:v10];

      goto LABEL_13;
    }
  }

  if (one-time initialization token for siriPhone != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  __swift_project_value_buffer(v11, static Logger.siriPhone);
  v7 = Logger.logObject.getter();
  v12 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v7, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
  }

  v14 = v4;
LABEL_13:
}

uint64_t (*TUCall.isSpeakerphoneEnabled.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  if (one-time initialization token for instance != -1)
  {
    OUTLINED_FUNCTION_0_36(&one-time initialization token for instance);
  }

  *(a1 + 8) = OUTLINED_FUNCTION_6_89() & 1;
  return TUCall.isSpeakerphoneEnabled.modify;
}

uint64_t TUCall.isMicrophoneMuted.setter(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (one-time initialization token for instance != -1)
  {
    OUTLINED_FUNCTION_0_36(&one-time initialization token for instance);
  }

  v7 = swift_allocObject();
  *(v7 + 16) = v4;
  *(v7 + 24) = a1 & 1;
  v8 = static CallStateProvider.instance;
  OUTLINED_FUNCTION_50();
  v9 = swift_allocObject();
  *(v9 + 16) = a4;
  *(v9 + 24) = v7;
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for TUCallCenter, TUCallCenter_ptr);
  v10 = v4;
  v11 = v8;

  OUTLINED_FUNCTION_20_47();
}

void closure #1 in TUCall.isCameraEnabled.setter(int a1, id a2, char a3)
{
  [a2 setIsSendingVideo:a3 & 1];
  if (one-time initialization token for siriPhone != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.siriPhone);
  v5 = a2;
  oslog = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 67109120;
    *(v7 + 4) = [v5 isSendingVideo];

    _os_log_impl(&dword_0, oslog, v6, "#SPHCall toggled camera state to %{BOOL}d", v7, 8u);

    v8 = oslog;
  }

  else
  {

    v8 = v5;
  }
}

uint64_t (*TUCall.isCameraEnabled.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = [v1 isSendingVideo];
  return TUCall.isCameraEnabled.modify;
}

Swift::Void __swiftcall TUCall.switchToFaceTime()()
{
  if ([v0 isVideo])
  {
    if (one-time initialization token for siriPhone != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    __swift_project_value_buffer(v1, static Logger.siriPhone);
    oslog = Logger.logObject.getter();
    v2 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      _os_log_impl(&dword_0, oslog, v2, "#SPHCall cannot switch to FaceTime because the call is already a FaceTime call", v3, 2u);
    }
  }

  else
  {
    if (one-time initialization token for instance != -1)
    {
      OUTLINED_FUNCTION_0_36(&one-time initialization token for instance);
    }

    OUTLINED_FUNCTION_19_6();
    v4 = swift_allocObject();
    *(v4 + 16) = v0;
    v5 = static CallStateProvider.instance;
    OUTLINED_FUNCTION_50();
    v6 = swift_allocObject();
    *(v6 + 16) = partial apply for closure #1 in TUCall.switchToFaceTime();
    *(v6 + 24) = v4;
    type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for TUCallCenter, TUCallCenter_ptr);
    v7 = v0;
    v8 = v5;

    OUTLINED_FUNCTION_21_46();
  }
}

id closure #1 in TUCall.switchToFaceTime()(void *a1, void *a2)
{
  if (one-time initialization token for siriPhone != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.siriPhone);
  v5 = a2;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 67109120;
    *(v8 + 4) = [v5 isConversation];

    _os_log_impl(&dword_0, v6, v7, "#SPHCall call is conversation %{BOOL}d", v8, 8u);
  }

  else
  {

    v6 = v5;
  }

  return [a1 requestVideoUpgradeForCall:v5 originatingUIType:11];
}

id TUCall.isFaceTime.getter(SEL *a1, SEL *a2)
{
  v4 = [v2 *a1];
  v5 = [v4 *a2];

  return v5;
}

uint64_t TUCall.hold()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (one-time initialization token for instance != -1)
  {
    OUTLINED_FUNCTION_0_36(&one-time initialization token for instance);
  }

  OUTLINED_FUNCTION_19_6();
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  v6 = static CallStateProvider.instance;
  OUTLINED_FUNCTION_50();
  v7 = swift_allocObject();
  *(v7 + 16) = a3;
  *(v7 + 24) = v5;
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for TUCallCenter, TUCallCenter_ptr);
  v8 = v3;
  v9 = v6;

  OUTLINED_FUNCTION_20_47();
}

uint64_t @nonobjc TUCall.callUUID.getter()
{
  v1 = [v0 callUUID];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

id @nonobjc TUCall.localSenderIdentity.getter()
{
  v1 = [v0 localSenderIdentity];

  return v1;
}

uint64_t (*protocol witness for SPHCall.isSpeakerphoneEnabled.modify in conformance TUCall(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  if (one-time initialization token for instance != -1)
  {
    swift_once();
  }

  *(a1 + 8) = specialized CallStateProvider.onCallCenterQueue<A>(_:)(closure #1 in TUCall.isSpeakerphoneEnabled.getter, 0) & 1;
  return TUCall.isSpeakerphoneEnabled.modify;
}

BOOL SPHCall.isBlockedOrHasNoHandles.getter()
{
  OUTLINED_FUNCTION_10_55();
  if ((*(v0 + 168))())
  {
    return 1;
  }

  v2 = OUTLINED_FUNCTION_20_0();
  v4 = v3(v2);
  v5 = specialized Set.isEmpty.getter(v4);

  return v5;
}

uint64_t @nonobjc TUCall.remoteParticipantHandles.getter(SEL *a1, unint64_t *a2, void *a3, unint64_t *a4)
{
  v8 = [v4 *a1];
  type metadata accessor for CNContactStore(0, a2, a3);
  lazy protocol witness table accessor for type TUConversationParticipant and conformance NSObject(a4, a2, a3);
  v9 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  return v9;
}

id @nonobjc TUConversation.localMember.getter()
{
  v1 = [v0 localMember];

  return v1;
}

INCallRecord __swiftcall SPHCall.toINCallRecord()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v1 = OUTLINED_FUNCTION_21(v0);
  __chkstk_darwin(v1);
  v3 = &v28 - v2;
  v4 = OUTLINED_FUNCTION_104();
  v6 = v5(v4);
  v8 = v7;
  type metadata accessor for Date();
  v9 = 1;
  OUTLINED_FUNCTION_7_6();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  v14 = OUTLINED_FUNCTION_104();
  v16 = SPHCall.inCallRecordType.getter(v14, v15);
  v17 = OUTLINED_FUNCTION_104();
  if (v18(v17))
  {
    v9 = 2;
  }

  v19 = OUTLINED_FUNCTION_104();
  v21 = SPHCall.inCallProvider.getter(v19, v20);
  v22 = OUTLINED_FUNCTION_104();
  v24 = SPHCall.inParticipants.getter(v22, v23);
  v25 = [objc_allocWithZone(NSNumber) initWithInteger:1];
  v26 = objc_allocWithZone(INCallRecord);
  return @nonobjc INCallRecord.init(__identifier:dateCreated:callRecordType:callCapability:callDuration:unseen:preferredCallProvider:participants:numberOfCalls:providerId:providerBundleId:isCallerIdBlocked:)(v6, v8, v3, v16, v9, 0, 0, v21, v24, v25, 0, 0, 0, 0, 0);
}

uint64_t SPHCall.inCallRecordType.getter(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 16))(a1) - 1;
  if (v2 > 3)
  {
    return 0;
  }

  else
  {
    return qword_4493F0[v2];
  }
}

uint64_t SPHCall.inCallProvider.getter(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 32))())
  {
    return 2;
  }

  else
  {
    return (*(a2 + 40))(a1, a2) & 1;
  }
}

void *SPHCall.inParticipants.getter(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 56))(a1);
  v3 = specialized Set.count.getter(v2);
  if (v3)
  {
    v4 = v3;
    v29 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    result = specialized Set.startIndex.getter(v2);
    v26 = result;
    v27 = v6;
    v28 = v7 & 1;
    if ((v4 & 0x8000000000000000) == 0)
    {
      result = type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INPerson, INPerson_ptr);
      v8 = 0;
      while (!__OFADD__(v8++, 1))
      {
        v11 = v26;
        v10 = v27;
        v12 = v28;
        specialized Set.subscript.getter(v26, v27, v28, v2);
        v14 = v13;
        INPerson.init(personHandle:)([v13 personHandle]);

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        result = specialized ContiguousArray._endMutation()();
        if ((v2 & 0xC000000000000001) != 0)
        {
          if (!v12)
          {
            goto LABEL_31;
          }

          if (__CocoaSet.Index.handleBitPattern.getter())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSh5IndexVySo8TUHandleC_GMd, &_sSh5IndexVySo8TUHandleC_GMR);
          v19 = Set.Index._asCocoa.modify();
          __CocoaSet.formIndex(after:isUnique:)();
          result = v19(v25, 0);
        }

        else
        {
          if (v12)
          {
            goto LABEL_32;
          }

          if ((v11 & 0x8000000000000000) != 0)
          {
            goto LABEL_27;
          }

          v15 = (1 << *(v2 + 32));
          if (v11 >= v15)
          {
            goto LABEL_27;
          }

          v16 = v11 >> 6;
          v17 = *(v2 + 56 + 8 * (v11 >> 6));
          if (((v17 >> v11) & 1) == 0)
          {
            goto LABEL_28;
          }

          if (*(v2 + 36) != v10)
          {
            goto LABEL_29;
          }

          v18 = v17 & (-2 << (v11 & 0x3F));
          if (v18)
          {
            v15 = (__clz(__rbit64(v18)) | v11 & 0x7FFFFFFFFFFFFFC0);
          }

          else
          {
            v20 = v16 << 6;
            v21 = v16 + 1;
            v22 = (v2 + 64 + 8 * v16);
            while (v21 < (v15 + 63) >> 6)
            {
              v24 = *v22++;
              v23 = v24;
              v20 += 64;
              ++v21;
              if (v24)
              {
                result = outlined consume of Set<TUHandle>.Index._Variant(v11, v10, 0);
                v15 = (__clz(__rbit64(v23)) + v20);
                goto LABEL_22;
              }
            }

            result = outlined consume of Set<TUHandle>.Index._Variant(v11, v10, 0);
          }

LABEL_22:
          v26 = v15;
          v27 = v10;
          v28 = 0;
        }

        if (v8 == v4)
        {

          outlined consume of Set<TUHandle>.Index._Variant(v26, v27, v28);
          return v29;
        }
      }

      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {

    return _swiftEmptyArrayStorage;
  }

  return result;
}

uint64_t specialized Set.startIndex.getter(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    return __CocoaSet.startIndex.getter();
  }

  else
  {
    return _HashTable.startBucket.getter();
  }
}

void specialized Set.subscript.getter(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v6 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      __CocoaSet.element(at:)();
      type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for TUHandle, TUHandle_ptr);
      swift_dynamicCast();
      return;
    }

    goto LABEL_23;
  }

  if (a3)
  {
    type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for TUHandle, TUHandle_ptr);
    if (__CocoaSet.Index.age.getter() == *(a4 + 36))
    {
      __CocoaSet.Index.element.getter();
      swift_dynamicCast();
      v4 = v13;
      v7 = NSObject._rawHashValue(seed:)(*(a4 + 40));
      v8 = ~(-1 << *(a4 + 32));
      while (1)
      {
        v6 = v7 & v8;
        if (((*(a4 + 56 + (((v7 & v8) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v7 & v8)) & 1) == 0)
        {
          goto LABEL_22;
        }

        v9 = *(*(a4 + 48) + 8 * v6);
        v10 = static NSObject.== infix(_:_:)();

        if (v10)
        {
          goto LABEL_15;
        }

        v7 = v6 + 1;
      }
    }

    __break(1u);
    goto LABEL_20;
  }

  if (a1 < 0 || 1 << *(a4 + 32) <= a1)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (((*(a4 + 8 * (a1 >> 6) + 56) >> a1) & 1) == 0)
  {
LABEL_21:
    __break(1u);
LABEL_22:

    __break(1u);
LABEL_23:
    __break(1u);
    return;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_15:
  }

  v11 = *(*(a4 + 48) + 8 * v6);

  v12 = v11;
}

uint64_t _s27PhoneCallFlowDelegatePlugin0aB6RecordC10getBuilder04callF07options07appInfoH06localeAC0H0CSo06INCallF0C_AC7OptionsVAA03AppL8Building_p10Foundation6LocaleVtFZTf4nnenn_nAA0plH0C_Tt3g5(void *a1, uint64_t a2, uint64_t (**a3)(uint64_t, void (*)(uint64_t, char *, uint64_t)), void *a4)
{
  v285 = a4;
  v281 = a3;
  v277 = a2;
  v5 = type metadata accessor for CATOption();
  v6 = OUTLINED_FUNCTION_21(v5);
  __chkstk_darwin(v6);
  OUTLINED_FUNCTION_4();
  v262 = v8 - v7;
  v283 = type metadata accessor for Locale();
  OUTLINED_FUNCTION_7();
  v278 = v9;
  __chkstk_darwin(v10);
  OUTLINED_FUNCTION_4();
  v282 = v12 - v11;
  v284 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_7();
  v279 = v13;
  __chkstk_darwin(v14);
  OUTLINED_FUNCTION_16_2();
  OUTLINED_FUNCTION_9_3();
  __chkstk_darwin(v15);
  OUTLINED_FUNCTION_13_5();
  OUTLINED_FUNCTION_9_3();
  __chkstk_darwin(v16);
  OUTLINED_FUNCTION_13_5();
  OUTLINED_FUNCTION_9_3();
  __chkstk_darwin(v17);
  OUTLINED_FUNCTION_13_5();
  OUTLINED_FUNCTION_9_3();
  __chkstk_darwin(v18);
  OUTLINED_FUNCTION_13_5();
  OUTLINED_FUNCTION_9_3();
  __chkstk_darwin(v19);
  OUTLINED_FUNCTION_13_5();
  OUTLINED_FUNCTION_9_3();
  __chkstk_darwin(v20);
  v269 = &v248 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v23 = OUTLINED_FUNCTION_21(v22);
  __chkstk_darwin(v23);
  v25 = &v248 - v24;
  v26 = type metadata accessor for Date();
  OUTLINED_FUNCTION_7();
  v28 = v27;
  __chkstk_darwin(v29);
  OUTLINED_FUNCTION_16_2();
  v31 = v30;
  __chkstk_darwin(v32);
  v34 = &v248 - v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v36 = OUTLINED_FUNCTION_21(v35);
  __chkstk_darwin(v36);
  OUTLINED_FUNCTION_16_2();
  OUTLINED_FUNCTION_9_3();
  __chkstk_darwin(v37);
  v39 = &v248 - v38;
  __chkstk_darwin(v40);
  OUTLINED_FUNCTION_13_5();
  OUTLINED_FUNCTION_9_3();
  __chkstk_darwin(v41);
  OUTLINED_FUNCTION_13_5();
  OUTLINED_FUNCTION_9_3();
  __chkstk_darwin(v42);
  OUTLINED_FUNCTION_13_5();
  OUTLINED_FUNCTION_9_3();
  __chkstk_darwin(v43);
  OUTLINED_FUNCTION_13_5();
  OUTLINED_FUNCTION_9_3();
  __chkstk_darwin(v44);
  v46 = &v248 - v45;
  __chkstk_darwin(v47);
  OUTLINED_FUNCTION_13_5();
  OUTLINED_FUNCTION_9_3();
  __chkstk_darwin(v48);
  v50 = &v248 - v49;
  type metadata accessor for App();
  v273 = a1;
  outlined bridged method (pb) of @objc INCallRecord.providerBundleId.getter(a1);
  v264 = App.__allocating_init(appIdentifier:)();
  v51 = specialized AppInfoBuilding.getAppNameIfThirdParty(_:requestedLocale:)(v264, v285);
  if (v52)
  {
    OUTLINED_FUNCTION_94(v51, v52);
    v53 = 0;
  }

  else
  {
    v53 = 1;
  }

  __swift_storeEnumTagSinglePayload(v50, v53, 1, v284);
  v54 = OUTLINED_FUNCTION_23_37();
  v56 = [v54 v55];
  if (v56)
  {
    v57 = v56;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v58 = *(v28 + 32);
    v58(v25, v31, v26);
    OUTLINED_FUNCTION_23_3();
    __swift_storeEnumTagSinglePayload(v59, v60, v61, v26);
    v58(v34, v25, v26);
  }

  else
  {
    OUTLINED_FUNCTION_7_6();
    __swift_storeEnumTagSinglePayload(v62, v63, v64, v26);
    Date.init()();
    if (__swift_getEnumTagSinglePayload(v25, 1, v26) != 1)
    {
      _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v25, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    }
  }

  type metadata accessor for DialogCalendar();
  v266 = static DialogCalendar.make(date:)(v34);
  (*(v28 + 8))(v34, v26);
  v65 = OUTLINED_FUNCTION_23_37();
  v67 = [v65 v66];
  v265 = v50;
  v250 = v39;
  v258 = v46;
  if (v67)
  {
    BackingType = INCallRecordTypeGetBackingType();
    switch(BackingType)
    {
      case 2:
        v69 = @"OUTGOING";
        goto LABEL_20;
      case 3:
        v69 = @"MISSED";
        goto LABEL_20;
      case 4:
        v69 = @"RECEIVED";
        goto LABEL_20;
      case 5:
        v69 = @"LATEST";
        goto LABEL_20;
      case 7:
        v69 = @"VOICEMAIL";
        goto LABEL_20;
      case 8:
        v69 = @"RINGING";
        goto LABEL_20;
      case 9:
        v69 = @"IN_PROGRESS";
        goto LABEL_20;
      case 10:
        v69 = @"ON_HOLD";
LABEL_20:
        v71 = v69;
        break;
      default:
        v69 = [NSString stringWithFormat:@"(unknown: %i)", BackingType];
        break;
    }

    v70 = v278;
    v72 = v69;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v70 = v278;
  }

  SpeakableString.init(serializedValue:)();
  OUTLINED_FUNCTION_94(0, 0xE000000000000000);
  OUTLINED_FUNCTION_94(0, 0xE000000000000000);
  v73 = OUTLINED_FUNCTION_23_37();
  v74 = outlined bridged method (pb) of @objc INCallInvite.participants.getter(v73);
  if (v74)
  {
    v75 = v74;
  }

  else
  {
    v75 = _swiftEmptyArrayStorage;
  }

  v286[0] = _swiftEmptyArrayStorage;
  v76 = specialized Array.count.getter(v75);
  v77 = 0;
  v249 = 0;
  v278 = v75 & 0xC000000000000001;
  v274 = v75 & 0xFFFFFFFFFFFFFF8;
  v281 = (v70 + 8);
  v285 = _swiftEmptyArrayStorage;
  v276 = _swiftEmptyArrayStorage;
  while (v76 != v77)
  {
    if (v278)
    {
      v78 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v77 >= *(v274 + 16))
      {
        goto LABEL_133;
      }

      v78 = *(v75 + 8 * v77 + 32);
    }

    v79 = v78;
    v80 = v77 + 1;
    if (__OFADD__(v77, 1))
    {
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
      goto LABEL_140;
    }

    type metadata accessor for PhonePerson(0);
    static Device.current.getter();
    __swift_project_boxed_opaque_existential_1(v288, v288[3]);
    v81 = v282;
    dispatch thunk of DeviceState.siriLocale.getter();
    __swift_destroy_boxed_opaque_existential_1(v288);
    v82 = static PhonePerson.make(phonePerson:options:locale:)(v79, v277 & 2, v81);

    (*v281)(v81, v283);
    ++v77;
    if (v82)
    {
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      v83 = *(&dword_18 + (v286[0] & 0xFFFFFFFFFFFFFF8));
      if (*(&dword_10 + (v286[0] & 0xFFFFFFFFFFFFFF8)) >= v83 >> 1)
      {
        OUTLINED_FUNCTION_76(v83);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v276 = v286[0];
      v77 = v80;
    }
  }

  v84 = OUTLINED_FUNCTION_23_37();
  v85 = outlined bridged method (pb) of @objc INCallInvite.participants.getter(v84);
  if (v85)
  {
    v86 = v85;
  }

  else
  {
    v86 = _swiftEmptyArrayStorage;
  }

  v87 = specialized Array.count.getter(v86);
  v88 = 0;
  v278 = v279 + 32;
  v89 = v276;
  while (v87 != v88)
  {
    if ((v86 & 0xC000000000000001) != 0)
    {
      v90 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v88 >= *(&dword_10 + (v86 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_135;
      }

      v90 = *(v86 + 8 * v88 + 32);
    }

    v91 = v90;
    if (__OFADD__(v88, 1))
    {
      goto LABEL_134;
    }

    v92 = outlined bridged method (pb) of @objc INPerson.contactIdentifier.getter(v90);
    if (!v93)
    {
      v92 = 0;
      v93 = 0xE000000000000000;
    }

    OUTLINED_FUNCTION_94(v92, v93);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v285 = v99;
    }

    v95 = v285[2];
    v94 = v285[3];
    if (v95 >= v94 >> 1)
    {
      OUTLINED_FUNCTION_76(v94);
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v285 = v100;
    }

    v285[2] = v95 + 1;
    OUTLINED_FUNCTION_15_57();
    (*(v98 + 32))(v97 + v96 + *(v98 + 72) * v95, v280);
    ++v88;
  }

  v280 = specialized Array.count.getter(v89);
  if (!v280)
  {
    v101 = 0;
    goto LABEL_57;
  }

  specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v89 & 0xC000000000000001) == 0, v89);
  if ((v89 & 0xC000000000000001) == 0)
  {
    v101 = *(v89 + 32);

    goto LABEL_57;
  }

LABEL_140:
  v101 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_57:
  static Device.current.getter();
  type metadata accessor for PhoneCallDisplayTextCATs(0);
  static CATOption.defaultMode.getter();
  v102 = CATWrapper.__allocating_init(options:globals:)();
  v288[0] = v273;
  v288[6] = v102;
  v103 = v273;
  v104 = CallRecordDisplayTextComponents.callDateText.getter();
  v106 = v105;
  v107 = v268;
  static CallRecordViewUtils.generateDisplayTime(dateTime:formattedDate:)(v104, v268);

  v108 = v279 + 8;
  v109 = *(v279 + 8);
  v110 = OUTLINED_FUNCTION_25_40(&v289);
  v109(v110);
  v267 = *(v108 + 24);
  v267(v288, v107, v106);
  v268 = v103;
  v111 = INCallRecord.callDuration.getter();
  if (v112)
  {
    goto LABEL_63;
  }

  v113 = *&v111;
  v114 = [objc_allocWithZone(NSDateComponentsFormatter) init];
  [v114 setUnitsStyle:0];
  [v114 setAllowedUnits:192];
  [v114 setZeroFormattingBehavior:0x10000];
  v115 = [v114 stringFromTimeInterval:ceil(v113)];
  if (!v115)
  {

LABEL_63:
    v117 = 0;
    v119 = 0xE000000000000000;
    goto LABEL_64;
  }

  v116 = v115;
  v117 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v119 = v118;

  v120._countAndFlagsBits = 48;
  v120._object = 0xE100000000000000;
  LOBYTE(v116) = String.hasPrefix(_:)(v120);

  if (v116)
  {
    specialized Collection.dropFirst(_:)(1uLL);
    v117 = static String._fromSubstring(_:)();
    v119 = v121;
  }

LABEL_64:
  OUTLINED_FUNCTION_94(v117, v119);
  v122 = OUTLINED_FUNCTION_25_40(&v290);
  v109(v122);
  OUTLINED_FUNCTION_9_76();
  v123();
  v124 = v268;
  if ([v268 callRecordType] != &dword_4 + 1)
  {
    if (![v124 preferredCallProvider])
    {
      v257 = 0xE700000000000000;
      v256 = 0x4E574F4E4B4E55;
      goto LABEL_68;
    }

    v146 = INPreferredCallProviderGetBackingType();
    if (v146 == 4)
    {
      v125 = @"THIRD_PARTY_PROVIDER";
      goto LABEL_66;
    }

    if (v146 == 3)
    {
      v125 = @"FACETIME_PROVIDER";
      goto LABEL_66;
    }

    if (v146 != 2)
    {
      v125 = [NSString stringWithFormat:@"(unknown: %i)", v146];
      goto LABEL_67;
    }
  }

  v125 = @"TELEPHONY_PROVIDER";
LABEL_66:
  v126 = v125;
LABEL_67:
  v127 = v125;
  v256 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v257 = v128;

LABEL_68:
  type metadata accessor for PhoneCallRecord.Builder(0);
  swift_allocObject();
  PhoneCallRecord.Builder.init()();
  v129 = v268;
  v130 = [v268 identifier];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v131 = v275;
  SpeakableString.init(serializedValue:)();
  OUTLINED_FUNCTION_23_3();
  __swift_storeEnumTagSinglePayload(v132, v133, v134, v284);
  OUTLINED_FUNCTION_35_0();
  (*(v135 + 856))(v131);
  OUTLINED_FUNCTION_22_36();
  _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v131, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_37();
  v137 = *(v136 + 872);

  v137(v138);
  OUTLINED_FUNCTION_40_0();

  OUTLINED_FUNCTION_35_0();
  v140 = (*(v139 + 888))(v101);

  v141 = outlined bridged method (pb) of @objc INCallInvite.participants.getter(v129);
  v254 = v101;
  v253 = v108;
  v252 = v109;
  v255 = v140;
  if (v141)
  {
    v142 = v141;
    if (specialized Array.count.getter(v141))
    {
      specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v142 & 0xC000000000000001) == 0, v142);
      if ((v142 & 0xC000000000000001) != 0)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v143 = *(v142 + 32);
      }

      OUTLINED_FUNCTION_40_0();

      v144 = outlined bridged method (ob) of @objc INPerson.alternatives.getter((v142 & 0xC000000000000001));
      if (v144)
      {
        v145 = v144;
      }

      else
      {
        v145 = _swiftEmptyArrayStorage;
      }
    }

    else
    {

      v145 = _swiftEmptyArrayStorage;
    }
  }

  else
  {
    v145 = _swiftEmptyArrayStorage;
  }

  v263 = _swiftEmptyArrayStorage;
  v287 = _swiftEmptyArrayStorage;
  v147 = specialized Array.count.getter(v145);
  v148 = 0;
  v274 = v145 & 0xC000000000000001;
  v273 = (v145 & 0xFFFFFFFFFFFFFF8);
  v149 = v282;
  while (v147 != v148)
  {
    if (v274)
    {
      v150 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v148 >= *(v273 + 2))
      {
        goto LABEL_137;
      }

      v150 = *(v145 + 8 * v148 + 32);
    }

    v151 = v150;
    v152 = v148 + 1;
    if (__OFADD__(v148, 1))
    {
      goto LABEL_136;
    }

    type metadata accessor for PhonePerson(0);
    static Device.current.getter();
    __swift_project_boxed_opaque_existential_1(v286, v286[3]);
    dispatch thunk of DeviceState.siriLocale.getter();
    __swift_destroy_boxed_opaque_existential_1(v286);
    v153 = static PhonePerson.make(phonePerson:options:locale:)(v151, 0, v149);

    (*v281)(v149, v283);
    ++v148;
    if (v153)
    {
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      v154 = *(&dword_18 + (v287 & 0xFFFFFFFFFFFFFF8));
      if (*(&dword_10 + (v287 & 0xFFFFFFFFFFFFFF8)) >= v154 >> 1)
      {
        OUTLINED_FUNCTION_76(v154);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v263 = v287;
      v148 = v152;
    }
  }

  (*(*v255 + 904))(v263);
  OUTLINED_FUNCTION_40_0();

  v155 = v279 + 16;
  v156 = v275;
  v157 = v284;
  v283 = *(v279 + 16);
  v283(v275, v269, v284);
  OUTLINED_FUNCTION_23_3();
  __swift_storeEnumTagSinglePayload(v158, v159, v160, v157);
  OUTLINED_FUNCTION_35_0();
  (*(v161 + 912))(v156);
  OUTLINED_FUNCTION_22_36();
  _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v156, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v162 = v268;
  v163 = INCallRecord.refinedCallDurationAsDouble.getter();
  LOBYTE(v156) = v164;
  type metadata accessor for PhoneCallMetrics();
  if (v156)
  {
    v165 = 0;
  }

  else
  {
    v165 = v163;
  }

  PhoneCallMetrics.__allocating_init(timeToEstablish:duration:)(0, 0, v165, 0);
  OUTLINED_FUNCTION_37();
  v167 = (*(v166 + 928))();

  v168 = INCallRecord.refinedUnseenAsBool.getter();
  (*(*v167 + 944))(v168 & 1);

  if ([v162 callCapability])
  {
    v169 = INCallCapabilityGetBackingType();
    v170 = v260;
    v171 = v259;
    v172 = v258;
    if (v169 == 2)
    {
      v173 = @"VIDEO_CALL";
    }

    else
    {
      if (v169 != 1)
      {
        v173 = [NSString stringWithFormat:@"(unknown: %i)", v169];
        goto LABEL_104;
      }

      v173 = @"AUDIO_CALL";
    }

    v174 = v173;
LABEL_104:
    v175 = v173;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    goto LABEL_105;
  }

  v170 = v260;
  v171 = v259;
  v172 = v258;
LABEL_105:
  SpeakableString.init(serializedValue:)();
  v176 = 1;
  OUTLINED_FUNCTION_23_3();
  v177 = v284;
  __swift_storeEnumTagSinglePayload(v178, v179, v180, v284);
  OUTLINED_FUNCTION_35_0();
  (*(v181 + 952))(v172);

  _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v172, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v182 = INCallRecord.refinedNumberOfCallsAsInt.getter();
  if (v183)
  {
    v182 = 0;
  }

  _sSd7exactlySdSgx_tcSzRzlufCSi_Tt0g5(v182);
  OUTLINED_FUNCTION_26_34();
  v185 = (*(v184 + 968))();

  OUTLINED_FUNCTION_94(v256, v257);
  OUTLINED_FUNCTION_23_3();
  __swift_storeEnumTagSinglePayload(v186, v187, v188, v177);
  outlined init with copy of SpeakableString?(v265, v170);
  v189 = App.appIdentifier.getter();
  v191 = v261;
  if (v190)
  {
    OUTLINED_FUNCTION_94(v189, v190);
    v176 = 0;
  }

  v192 = v284;
  __swift_storeEnumTagSinglePayload(v191, v176, 1, v284);
  type metadata accessor for PhoneCallProvider(0);
  PhoneCallProvider.__allocating_init(preferredCallProvider:providerName:providerBundleId:)(v171, v170, v191);
  (*(*v185 + 976))();

  INCallRecord.refinedIsCallerIDBlockedAsBool.getter();
  OUTLINED_FUNCTION_26_34();
  (*(v193 + 992))(v194 & 1);
  OUTLINED_FUNCTION_32_25();
  v195 = v275;
  v283(v275, v270, v192);
  OUTLINED_FUNCTION_23_3();
  __swift_storeEnumTagSinglePayload(v196, v197, v198, v192);
  OUTLINED_FUNCTION_35_0();
  (*(v199 + 1016))(v195);
  OUTLINED_FUNCTION_22_36();
  OUTLINED_FUNCTION_4_85();
  v200 = SpeakableString.print.getter();
  v282 = v155;
  static CallRecordViewUtils.generatedDisplayTextColor(callRecordType:forCallHistoryDisplay:)(v200, v201);

  OUTLINED_FUNCTION_37();
  (*(v202 + 1032))(v195);

  OUTLINED_FUNCTION_4_85();
  v203 = SpeakableString.print.getter();
  static CallRecordViewUtils.generatedDisplaySymbolIcon(callRecordType:forCallHistoryDisplay:)(v203, v204);

  OUTLINED_FUNCTION_26_34();
  (*(v205 + 1048))(v195);
  OUTLINED_FUNCTION_32_25();
  OUTLINED_FUNCTION_4_85();
  static Device.current.getter();
  v206 = OUTLINED_FUNCTION_29_33();
  static CallRecordViewUtils.generatedSelectedAction(callRecord:forCallHistoryDisplay:deviceState:)(v206, v207);
  __swift_destroy_boxed_opaque_existential_1(v286);
  OUTLINED_FUNCTION_35_0();
  (*(v208 + 1080))(v195);
  OUTLINED_FUNCTION_22_36();
  OUTLINED_FUNCTION_4_85();
  v209 = OUTLINED_FUNCTION_29_33();
  static CallRecordViewUtils.generatedSelectedActionForVoicemail(callRecord:forCallHistoryDisplay:)(v209, v210);
  OUTLINED_FUNCTION_37();
  (*(v211 + 1096))(v195);
  OUTLINED_FUNCTION_40_0();

  OUTLINED_FUNCTION_4_85();
  v212 = OUTLINED_FUNCTION_29_33();
  static CallRecordViewUtils.generatedActionForOpeningCallRecord(callRecord:forCallHistoryDisplay:)(v212, v213);
  OUTLINED_FUNCTION_35_0();
  (*(v214 + 1112))(v195);
  OUTLINED_FUNCTION_22_36();
  OUTLINED_FUNCTION_4_85();
  v283(v195, v271, v192);
  OUTLINED_FUNCTION_23_3();
  __swift_storeEnumTagSinglePayload(v215, v216, v217, v192);
  OUTLINED_FUNCTION_37();
  (*(v218 + 1128))(v195);

  OUTLINED_FUNCTION_4_85();
  INCallRecord.refinedCallDurationAsDouble.getter();
  OUTLINED_FUNCTION_26_34();
  (*(v219 + 1168))();
  OUTLINED_FUNCTION_32_25();
  OUTLINED_FUNCTION_35_0();
  v221 = v276;
  v222 = (*(v220 + 1144))(v276);

  v223 = 0;
  v224 = _swiftEmptyArrayStorage;
  while (v280 != v223)
  {
    if ((v221 & 0xC000000000000001) != 0)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v223 >= *(&dword_10 + (v221 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_139;
      }
    }

    if (__OFADD__(v223, 1))
    {
      goto LABEL_138;
    }

    v225 = v275;
    dispatch thunk of DialogPerson.toString.getter();
    v226 = v225;
    v227 = v272;
    outlined init with take of SpeakableString?(v226, v272);

    if (__swift_getEnumTagSinglePayload(v227, 1, v284) == 1)
    {
      _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v227, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
      ++v223;
    }

    else
    {
      OUTLINED_FUNCTION_9_76();
      v228();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v224 = v232;
      }

      v230 = v224[2];
      v229 = v224[3];
      if (v230 >= v229 >> 1)
      {
        OUTLINED_FUNCTION_76(v229);
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v224 = v233;
      }

      v224[2] = v230 + 1;
      OUTLINED_FUNCTION_15_57();
      OUTLINED_FUNCTION_9_76();
      v231();
      ++v223;
    }
  }

  (*(*v222 + 1152))(v224);

  OUTLINED_FUNCTION_35_0();
  v235 = (*(v234 + 1160))(v285);

  if (v277)
  {
    type metadata accessor for PhoneCallRecord(0);
    swift_allocObject();

    PhoneCallRecord.init(builder:)(v236);
    type metadata accessor for SearchCallHistoryCATs(0);
    static CATOption.defaultMode.getter();
    CATWrapper.__allocating_init(options:globals:)();
    v237 = v250;
    v238 = v249;
    static CallRecordViewUtils.generatedDisplayName(searchCallHistoryCATs:callRecord:)(v250);
    v239 = v265;
    v240 = v252;
    if (v238)
    {

      OUTLINED_FUNCTION_7_6();
      __swift_storeEnumTagSinglePayload(v241, v242, v243, v284);
    }

    v244 = v251;
    (*(*v235 + 1000))(v237);

    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v237, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_29_33();
    static CallRecordViewUtils.generatedDisplayCallDetail(searchCallHistoryCATs:callRecord:)(v245);
    (*(*v235 + 1064))(v244);

    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v244, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  }

  else
  {

    v239 = v265;
    v240 = v252;
  }

  outlined destroy of CallRecordDisplayTextComponents(v288);
  v246 = v284;
  v240(v271, v284);
  v240(v270, v246);
  v240(v269, v246);
  _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v239, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  return v235;
}

uint64_t lazy protocol witness table accessor for type TUConversationParticipant and conformance NSObject(unint64_t *a1, unint64_t *a2, void *a3)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CNContactStore(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined consume of Set<TUHandle>.Index._Variant(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

id SPHTUBackedCallCapabilities.isAddPersonEnabled.getter()
{
  v0 = objc_opt_self();
  result = [v0 supportsConversations];
  if (result)
  {
    return [v0 isAddPersonEnabled];
  }

  return result;
}

id SPHTUBackedCallCapabilities.isGreenTea.getter()
{
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v1 = result;
    v2 = [result isGreenTea];

    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id static SPHCallHandleFormatting.normalizedHandle(for:)(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = [a1 value];
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  v11 = HIBYTE(v10) & 0xF;
  if ((v10 & 0x2000000000000000) == 0)
  {
    v11 = v8 & 0xFFFFFFFFFFFFLL;
  }

  if (!v11)
  {

    return 0;
  }

  v12 = [a1 type];
  if (v12 == &dword_0 + 1)
  {
    v17 = [objc_opt_self() normalizedEmailAddressHandleForValue:v7];
  }

  else
  {
    if (v12 == &dword_0 + 2)
    {
      v13 = PNCopyBestGuessCountryCodeForNumber();
      if (v13)
      {
        v14 = v13;
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        v15 = objc_opt_self();
      }

      else
      {
        v15 = objc_opt_self();
        (*(a3 + 8))(a2, a3);
        if (!v18)
        {
          v19 = 0;
          goto LABEL_16;
        }
      }

      v19 = String._bridgeToObjectiveC()();

LABEL_16:
      v16 = [v15 normalizedPhoneNumberHandleForValue:v7 isoCountryCode:v19];

      return v16;
    }

    v17 = [objc_opt_self() normalizedGenericHandleForValue:v7];
  }

  v16 = v17;

  return v16;
}

uint64_t static SPHCallHandleFormatter.countryCode.getter()
{
  v0 = TUNetworkCountryCode();
  if (!v0)
  {
    v0 = TUHomeCountryCode();
    if (!v0)
    {
      return 0;
    }
  }

  v1 = v0;
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

uint64_t AFCallState.debugDescription.getter(char a1)
{
  _StringGuts.grow(_:)(58);
  v2._object = 0x8000000000461D10;
  v2._countAndFlagsBits = 0xD000000000000018;
  String.append(_:)(v2);
  if (a1)
  {
    v3 = 1702195828;
  }

  else
  {
    v3 = 0x65736C6166;
  }

  if (a1)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  v5 = v4;
  String.append(_:)(*&v3);

  v6._countAndFlagsBits = 0x6E6573202020200ALL;
  v6._object = 0xED00003D676E6964;
  String.append(_:)(v6);
  if ((a1 & 2) != 0)
  {
    v7 = 1702195828;
  }

  else
  {
    v7 = 0x65736C6166;
  }

  if ((a1 & 2) != 0)
  {
    v8 = 0xE400000000000000;
  }

  else
  {
    v8 = 0xE500000000000000;
  }

  v9 = v8;
  String.append(_:)(*&v7);

  v10._countAndFlagsBits = 0x6E6972202020200ALL;
  v10._object = 0xED00003D676E6967;
  String.append(_:)(v10);
  if ((a1 & 4) != 0)
  {
    v11 = 1702195828;
  }

  else
  {
    v11 = 0x65736C6166;
  }

  if ((a1 & 4) != 0)
  {
    v12 = 0xE400000000000000;
  }

  else
  {
    v12 = 0xE500000000000000;
  }

  v13 = v12;
  String.append(_:)(*&v11);

  v14._countAndFlagsBits = 10506;
  v14._object = 0xE200000000000000;
  String.append(_:)(v14);
  return 0;
}

Swift::Void __swiftcall SpringBoardServicesManager.undimScreen()()
{
  if (one-time initialization token for siriPhone != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, static Logger.siriPhone);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_0, v1, v2, "#SpringBoardServicesManager undimed screen.", v3, 2u);
  }

  _SBSUndimScreen();
}

uint64_t ButtonConfigurationModel.init(label:directInvocation:id:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  OUTLINED_FUNCTION_12_64(a1, a2, a3);
  [objc_allocWithZone(SABaseCommand) init];
  v5 = type metadata accessor for ButtonConfigurationModel(0);
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SABaseCommand, SABaseCommand_ptr);
  CodableAceObject.init(wrappedValue:)();
  *(v4 + *(v5 + 32)) = 1;
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SAIntentGroupRunSiriKitExecutor, SAIntentGroupRunSiriKitExecutor_ptr);
  CodableAceObject.init(wrappedValue:)();
  v6 = *(v5 + 28);
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_23_1();
  v8 = *(v7 + 32);

  return v8(v4 + v6, v3);
}

uint64_t type metadata accessor for ButtonConfigurationModel(uint64_t a1)
{
  result = type metadata singleton initialization cache for ButtonConfigurationModel;
  if (!type metadata singleton initialization cache for ButtonConfigurationModel)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t StackedButtonsModel.responseViewId.getter(uint64_t a1, char a2)
{
  _StringGuts.grow(_:)(22);

  if (a2)
  {
    if (a2 == 1)
    {
      v3 = 0x747465536E65706FLL;
    }

    else
    {
      v3 = 0xD000000000000011;
    }

    if (a2 == 1)
    {
      v4 = 0xEC00000073676E69;
    }

    else
    {
      v4 = 0x8000000000454750;
    }
  }

  else
  {
    v4 = 0xEF74706D6F72506CLL;
    v3 = 0x6C6143724F646461;
  }

  v5 = v4;
  String.append(_:)(*&v3);

  return 0xD000000000000014;
}

uint64_t StackedButtonsModel.init(buttonConfiguration:useCase:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy27PhoneCallFlowDelegatePlugin24ButtonConfigurationModelVGMd, &_ss23_ContiguousArrayStorageCy27PhoneCallFlowDelegatePlugin24ButtonConfigurationModelVGMR);
  v2 = *(type metadata accessor for ButtonConfigurationModel(0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_424FD0;
  outlined init with take of ButtonConfigurationModel(a1, v4 + v3);
  return v4;
}

uint64_t ButtonConfigurationModel.init(label:action:id:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  OUTLINED_FUNCTION_12_64(a1, a2, a3);
  v6 = type metadata accessor for ButtonConfigurationModel(0);
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SABaseCommand, SABaseCommand_ptr);
  v7 = v5;
  CodableAceObject.init(wrappedValue:)();
  v8 = *(v6 + 28);
  v9 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_20_3();
  v13 = v10;
  (*(v10 + 16))(v4 + v8, v3, v9);
  *(v4 + *(v6 + 32)) = 0;
  [objc_allocWithZone(SAIntentGroupRunSiriKitExecutor) init];
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SAIntentGroupRunSiriKitExecutor, SAIntentGroupRunSiriKitExecutor_ptr);
  CodableAceObject.init(wrappedValue:)();

  v11 = *(v13 + 8);

  return v11(v3, v9);
}

uint64_t ButtonConfigurationModel.init(label:url:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a5@<X8>)
{
  v34 = a2;
  v7 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_7();
  v9 = v8;
  __chkstk_darwin(v10);
  OUTLINED_FUNCTION_4();
  v13 = v12 - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v14);
  v16 = &v33 - v15;
  v17 = [objc_allocWithZone(SAUIAppPunchOut) init];
  URL.init(string:)();

  v18 = type metadata accessor for URL();
  v20 = 0;
  if (__swift_getEnumTagSinglePayload(v16, 1, v18) != 1)
  {
    URL._bridgeToObjectiveC()(v19);
    v20 = v21;
    (*(*(v18 - 8) + 8))(v16, v18);
  }

  [v17 setPunchOutUri:v20];

  v22 = v17;
  UUID.init()();
  UUID.uuidString.getter();
  v33 = *(v9 + 8);
  v23 = OUTLINED_FUNCTION_5_26();
  v24(v23);
  v25 = OUTLINED_FUNCTION_8_33();
  outlined bridged method (mbnn) of @objc SABaseClientBoundCommand.aceId.setter(v25, v26, v22);

  v27 = v22;
  UUID.init()();
  v28 = v34;
  *a5 = a1;
  *(a5 + 1) = v28;
  v29 = type metadata accessor for ButtonConfigurationModel(0);
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SABaseCommand, SABaseCommand_ptr);
  v30 = v27;
  CodableAceObject.init(wrappedValue:)();
  (*(v9 + 16))(&a5[*(v29 + 28)], v13, v7);
  a5[*(v29 + 32)] = 0;
  [objc_allocWithZone(SAIntentGroupRunSiriKitExecutor) init];
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SAIntentGroupRunSiriKitExecutor, SAIntentGroupRunSiriKitExecutor_ptr);
  CodableAceObject.init(wrappedValue:)();

  v31 = OUTLINED_FUNCTION_5_26();
  return v33(v31);
}

uint64_t StackedButtonsModel.shouldHideSnippet(on:)(uint64_t a1, uint64_t a2, char a3)
{
  v4 = type metadata accessor for DeviceIdiom();
  OUTLINED_FUNCTION_7();
  v6 = v5;
  __chkstk_darwin(v7);
  OUTLINED_FUNCTION_4();
  v10 = v9 - v8;
  v11 = *(v6 + 104);
  v11(v9 - v8, enum case for DeviceIdiom.car(_:), v4);
  lazy protocol witness table accessor for type DeviceIdiom and conformance DeviceIdiom(&lazy protocol witness table cache variable for type DeviceIdiom and conformance DeviceIdiom, &type metadata accessor for DeviceIdiom, &protocol conformance descriptor for DeviceIdiom);
  v12 = dispatch thunk of static Equatable.== infix(_:_:)();
  v13 = *(v6 + 8);
  v13(v10, v4);
  if (v12)
  {
    goto LABEL_2;
  }

  if (a3 != 1)
  {
    v14 = 0;
    return v14 & 1;
  }

  v11(v10, enum case for DeviceIdiom.watch(_:), v4);
  v15 = static DeviceIdiom.== infix(_:_:)();
  v13(v10, v4);
  if (v15)
  {
LABEL_2:
    v14 = 1;
  }

  else
  {
    v11(v10, enum case for DeviceIdiom.mac(_:), v4);
    v14 = static DeviceIdiom.== infix(_:_:)();
    v13(v10, v4);
  }

  return v14 & 1;
}

uint64_t property wrapper backing initializer of ButtonConfigurationModel.action(uint64_t a1)
{
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SABaseCommand, SABaseCommand_ptr);

  return CodableAceObject.init(wrappedValue:)();
}

uint64_t ButtonConfigurationModel.action.getter()
{
  type metadata accessor for ButtonConfigurationModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo13SABaseCommandCGMd, &_s10SnippetKit16CodableAceObjectVySo13SABaseCommandCGMR);
  return CodableAceObject.wrappedValue.getter();
}

uint64_t ButtonConfigurationModel.action.setter(uint64_t a1)
{
  type metadata accessor for ButtonConfigurationModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo13SABaseCommandCGMd, &_s10SnippetKit16CodableAceObjectVySo13SABaseCommandCGMR);
  return CodableAceObject.wrappedValue.setter();
}

void (*ButtonConfigurationModel.action.modify(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  type metadata accessor for ButtonConfigurationModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo13SABaseCommandCGMd, &_s10SnippetKit16CodableAceObjectVySo13SABaseCommandCGMR);
  v2[4] = CodableAceObject.wrappedValue.modify();
  return EmergencyCountdownModel.sashTitle.modify;
}

uint64_t property wrapper backing initializer of ButtonConfigurationModel.directInvocation(uint64_t a1)
{
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SAIntentGroupRunSiriKitExecutor, SAIntentGroupRunSiriKitExecutor_ptr);

  return CodableAceObject.init(wrappedValue:)();
}

uint64_t ButtonConfigurationModel.directInvocation.getter()
{
  type metadata accessor for ButtonConfigurationModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
  return CodableAceObject.wrappedValue.getter();
}

uint64_t ButtonConfigurationModel.directInvocation.setter(uint64_t a1)
{
  type metadata accessor for ButtonConfigurationModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
  return CodableAceObject.wrappedValue.setter();
}

void (*ButtonConfigurationModel.directInvocation.modify(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  type metadata accessor for ButtonConfigurationModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
  v2[4] = CodableAceObject.wrappedValue.modify();
  return EmergencyCountdownModel.callAction.modify;
}

uint64_t ButtonConfigurationModel.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ButtonConfigurationModel(0) + 28);
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_23_1();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t ButtonConfigurationModel.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C6562616CLL && a2 == 0xE500000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6E6F69746361 && a2 == 0xE600000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000010 && 0x80000000004616C0 == a2;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 25705 && a2 == 0xE200000000000000;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0xD000000000000012 && 0x8000000000461D50 == a2)
        {

          return 4;
        }

        else
        {
          v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

uint64_t ButtonConfigurationModel.CodingKeys.stringValue.getter(char a1)
{
  result = 0x6C6562616CLL;
  switch(a1)
  {
    case 1:
      result = 0x6E6F69746361;
      break;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 25705;
      break;
    case 4:
      result = 0xD000000000000012;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance ButtonConfigurationModel.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = ButtonConfigurationModel.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ButtonConfigurationModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ButtonConfigurationModel.CodingKeys and conformance ButtonConfigurationModel.CodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ButtonConfigurationModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ButtonConfigurationModel.CodingKeys and conformance ButtonConfigurationModel.CodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ButtonConfigurationModel.encode(to:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy27PhoneCallFlowDelegatePlugin24ButtonConfigurationModelV10CodingKeys33_681430E2C5A237474B232B789BBEE430LLOGMd, &_ss22KeyedEncodingContainerVy27PhoneCallFlowDelegatePlugin24ButtonConfigurationModelV10CodingKeys33_681430E2C5A237474B232B789BBEE430LLOGMR);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v3);
  OUTLINED_FUNCTION_17_17();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ButtonConfigurationModel.CodingKeys and conformance ButtonConfigurationModel.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  OUTLINED_FUNCTION_5_3();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v1)
  {
    type metadata accessor for ButtonConfigurationModel(0);
    v4 = OUTLINED_FUNCTION_8_33();
    __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
    OUTLINED_FUNCTION_2_115(&lazy protocol witness table cache variable for type CodableAceObject<SABaseCommand> and conformance CodableAceObject<A>);
    OUTLINED_FUNCTION_5_3();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v6 = OUTLINED_FUNCTION_8_33();
    __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
    OUTLINED_FUNCTION_2_115(&lazy protocol witness table cache variable for type CodableAceObject<SAIntentGroupRunSiriKitExecutor> and conformance CodableAceObject<A>);
    OUTLINED_FUNCTION_5_3();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    type metadata accessor for UUID();
    OUTLINED_FUNCTION_1_120();
    lazy protocol witness table accessor for type DeviceIdiom and conformance DeviceIdiom(v8, v9, &protocol conformance descriptor for UUID);
    OUTLINED_FUNCTION_5_3();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    OUTLINED_FUNCTION_5_3();
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  v10 = OUTLINED_FUNCTION_5_26();
  return v11(v10);
}

uint64_t ButtonConfigurationModel.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v48 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_7();
  v44 = v4;
  __chkstk_darwin(v5);
  OUTLINED_FUNCTION_4();
  v41 = v7 - v6;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
  OUTLINED_FUNCTION_7();
  v43 = v8;
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v9);
  v42 = v38 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo13SABaseCommandCGMd, &_s10SnippetKit16CodableAceObjectVySo13SABaseCommandCGMR);
  OUTLINED_FUNCTION_7();
  v45 = v12;
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v13);
  v15 = v38 - v14;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy27PhoneCallFlowDelegatePlugin24ButtonConfigurationModelV10CodingKeys33_681430E2C5A237474B232B789BBEE430LLOGMd, &_ss22KeyedDecodingContainerVy27PhoneCallFlowDelegatePlugin24ButtonConfigurationModelV10CodingKeys33_681430E2C5A237474B232B789BBEE430LLOGMR);
  OUTLINED_FUNCTION_7();
  v46 = v16;
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v17);
  OUTLINED_FUNCTION_17_17();
  v18 = type metadata accessor for ButtonConfigurationModel(0);
  OUTLINED_FUNCTION_23_1();
  __chkstk_darwin(v19);
  OUTLINED_FUNCTION_4();
  v22 = (v21 - v20);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ButtonConfigurationModel.CodingKeys and conformance ButtonConfigurationModel.CodingKeys();
  v49 = v2;
  v23 = v51;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v23)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v24 = v15;
  v25 = v47;
  v51 = v18;
  v39 = v11;
  v26 = v48;
  v56 = 0;
  *v22 = KeyedDecodingContainer.decode(_:forKey:)();
  v22[1] = v27;
  v38[2] = v27;
  v55 = 1;
  OUTLINED_FUNCTION_3_111(&lazy protocol witness table cache variable for type CodableAceObject<SABaseCommand> and conformance CodableAceObject<A>, &_s10SnippetKit16CodableAceObjectVySo13SABaseCommandCGMd, &_s10SnippetKit16CodableAceObjectVySo13SABaseCommandCGMR);
  v28 = v39;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v45 + 32))(v22 + v51[5], v24, v28);
  v54 = 2;
  OUTLINED_FUNCTION_3_111(&lazy protocol witness table cache variable for type CodableAceObject<SAIntentGroupRunSiriKitExecutor> and conformance CodableAceObject<A>, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
  v29 = v42;
  v38[1] = 0;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v30 = v22;
  (*(v43 + 32))(v22 + v51[6], v29, v25);
  v53 = 3;
  OUTLINED_FUNCTION_1_120();
  lazy protocol witness table accessor for type DeviceIdiom and conformance DeviceIdiom(v31, v32, &protocol conformance descriptor for UUID);
  v33 = v41;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v44 + 32))(v30 + v51[7], v33, v26);
  v52 = 4;
  v34 = KeyedDecodingContainer.decode(_:forKey:)();
  v35 = OUTLINED_FUNCTION_9_77();
  v36(v35);
  *(v30 + v51[8]) = v34 & 1;
  outlined init with copy of ButtonConfigurationModel(v30, v40);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return outlined destroy of ButtonConfigurationModel(v30);
}

PhoneCallFlowDelegatePlugin::StackedButtonsModel::UseCase_optional __swiftcall StackedButtonsModel.UseCase.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of StackedButtonsModel.UseCase.init(rawValue:), v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t StackedButtonsModel.UseCase.rawValue.getter(char a1)
{
  if (!a1)
  {
    return 0x6C6143724F646461;
  }

  if (a1 == 1)
  {
    return 0x747465536E65706FLL;
  }

  return 0xD000000000000011;
}

PhoneCallFlowDelegatePlugin::StackedButtonsModel::UseCase_optional protocol witness for RawRepresentable.init(rawValue:) in conformance StackedButtonsModel.UseCase@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::StackedButtonsModel::UseCase_optional *a2@<X8>)
{
  result.value = StackedButtonsModel.UseCase.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance StackedButtonsModel.UseCase@<X0>(uint64_t *a1@<X8>)
{
  result = StackedButtonsModel.UseCase.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t StackedButtonsModel.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000014 && 0x8000000000461D70 == a2;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65736143657375 && a2 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t StackedButtonsModel.CodingKeys.stringValue.getter(char a1)
{
  if (a1)
  {
    return 0x65736143657375;
  }

  else
  {
    return 0xD000000000000014;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance StackedButtonsModel.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = StackedButtonsModel.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance StackedButtonsModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type StackedButtonsModel.CodingKeys and conformance StackedButtonsModel.CodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance StackedButtonsModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type StackedButtonsModel.CodingKeys and conformance StackedButtonsModel.CodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t StackedButtonsModel.encode(to:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy27PhoneCallFlowDelegatePlugin19StackedButtonsModelV10CodingKeys33_681430E2C5A237474B232B789BBEE430LLOGMd, &_ss22KeyedEncodingContainerVy27PhoneCallFlowDelegatePlugin19StackedButtonsModelV10CodingKeys33_681430E2C5A237474B232B789BBEE430LLOGMR);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v2);
  OUTLINED_FUNCTION_17_17();
  v3 = OUTLINED_FUNCTION_8_33();
  __swift_project_boxed_opaque_existential_1(v3, v4);
  lazy protocol witness table accessor for type StackedButtonsModel.CodingKeys and conformance StackedButtonsModel.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay27PhoneCallFlowDelegatePlugin24ButtonConfigurationModelVGMd, &_sSay27PhoneCallFlowDelegatePlugin24ButtonConfigurationModelVGMR);
  lazy protocol witness table accessor for type [ButtonConfigurationModel] and conformance <A> [A](&lazy protocol witness table cache variable for type [ButtonConfigurationModel] and conformance <A> [A], &lazy protocol witness table cache variable for type ButtonConfigurationModel and conformance ButtonConfigurationModel, &protocol conformance descriptor for ButtonConfigurationModel, &protocol conformance descriptor for <A> [A]);
  OUTLINED_FUNCTION_5_3();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v1)
  {
    lazy protocol witness table accessor for type StackedButtonsModel.UseCase and conformance StackedButtonsModel.UseCase();
    OUTLINED_FUNCTION_5_3();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  v5 = OUTLINED_FUNCTION_5_26();
  return v6(v5);
}

uint64_t StackedButtonsModel.init(from:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy27PhoneCallFlowDelegatePlugin19StackedButtonsModelV10CodingKeys33_681430E2C5A237474B232B789BBEE430LLOGMd, &_ss22KeyedDecodingContainerVy27PhoneCallFlowDelegatePlugin19StackedButtonsModelV10CodingKeys33_681430E2C5A237474B232B789BBEE430LLOGMR);
  OUTLINED_FUNCTION_7();
  v4 = v3;
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v5);
  v7 = &v10[-v6];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type StackedButtonsModel.CodingKeys and conformance StackedButtonsModel.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay27PhoneCallFlowDelegatePlugin24ButtonConfigurationModelVGMd, &_sSay27PhoneCallFlowDelegatePlugin24ButtonConfigurationModelVGMR);
  v10[7] = 0;
  lazy protocol witness table accessor for type [ButtonConfigurationModel] and conformance <A> [A](&lazy protocol witness table cache variable for type [ButtonConfigurationModel] and conformance <A> [A], &lazy protocol witness table cache variable for type ButtonConfigurationModel and conformance ButtonConfigurationModel, &protocol conformance descriptor for ButtonConfigurationModel, &protocol conformance descriptor for <A> [A]);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v9 = v11;
  v10[5] = 1;
  lazy protocol witness table accessor for type StackedButtonsModel.UseCase and conformance StackedButtonsModel.UseCase();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v4 + 8))(v7, v2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v9;
}

uint64_t protocol witness for Decodable.init(from:) in conformance StackedButtonsModel@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = StackedButtonsModel.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
  }

  return result;
}

void outlined bridged method (mbnn) of @objc SABaseClientBoundCommand.aceId.setter(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = String._bridgeToObjectiveC()();

  [a3 setAceId:v4];
}

unint64_t lazy protocol witness table accessor for type ButtonConfigurationModel.CodingKeys and conformance ButtonConfigurationModel.CodingKeys()
{
  result = lazy protocol witness table cache variable for type ButtonConfigurationModel.CodingKeys and conformance ButtonConfigurationModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type ButtonConfigurationModel.CodingKeys and conformance ButtonConfigurationModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ButtonConfigurationModel.CodingKeys and conformance ButtonConfigurationModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ButtonConfigurationModel.CodingKeys and conformance ButtonConfigurationModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type ButtonConfigurationModel.CodingKeys and conformance ButtonConfigurationModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ButtonConfigurationModel.CodingKeys and conformance ButtonConfigurationModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ButtonConfigurationModel.CodingKeys and conformance ButtonConfigurationModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type ButtonConfigurationModel.CodingKeys and conformance ButtonConfigurationModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ButtonConfigurationModel.CodingKeys and conformance ButtonConfigurationModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ButtonConfigurationModel.CodingKeys and conformance ButtonConfigurationModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type ButtonConfigurationModel.CodingKeys and conformance ButtonConfigurationModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ButtonConfigurationModel.CodingKeys and conformance ButtonConfigurationModel.CodingKeys);
  }

  return result;
}

uint64_t outlined destroy of ButtonConfigurationModel(uint64_t a1)
{
  v2 = type metadata accessor for ButtonConfigurationModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type StackedButtonsModel.CodingKeys and conformance StackedButtonsModel.CodingKeys()
{
  result = lazy protocol witness table cache variable for type StackedButtonsModel.CodingKeys and conformance StackedButtonsModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type StackedButtonsModel.CodingKeys and conformance StackedButtonsModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StackedButtonsModel.CodingKeys and conformance StackedButtonsModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StackedButtonsModel.CodingKeys and conformance StackedButtonsModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type StackedButtonsModel.CodingKeys and conformance StackedButtonsModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StackedButtonsModel.CodingKeys and conformance StackedButtonsModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StackedButtonsModel.CodingKeys and conformance StackedButtonsModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type StackedButtonsModel.CodingKeys and conformance StackedButtonsModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StackedButtonsModel.CodingKeys and conformance StackedButtonsModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StackedButtonsModel.CodingKeys and conformance StackedButtonsModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type StackedButtonsModel.CodingKeys and conformance StackedButtonsModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StackedButtonsModel.CodingKeys and conformance StackedButtonsModel.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StackedButtonsModel.UseCase and conformance StackedButtonsModel.UseCase()
{
  result = lazy protocol witness table cache variable for type StackedButtonsModel.UseCase and conformance StackedButtonsModel.UseCase;
  if (!lazy protocol witness table cache variable for type StackedButtonsModel.UseCase and conformance StackedButtonsModel.UseCase)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StackedButtonsModel.UseCase and conformance StackedButtonsModel.UseCase);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StackedButtonsModel.UseCase and conformance StackedButtonsModel.UseCase;
  if (!lazy protocol witness table cache variable for type StackedButtonsModel.UseCase and conformance StackedButtonsModel.UseCase)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StackedButtonsModel.UseCase and conformance StackedButtonsModel.UseCase);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StackedButtonsModel.UseCase and conformance StackedButtonsModel.UseCase;
  if (!lazy protocol witness table cache variable for type StackedButtonsModel.UseCase and conformance StackedButtonsModel.UseCase)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StackedButtonsModel.UseCase and conformance StackedButtonsModel.UseCase);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StackedButtonsModel.UseCase and conformance StackedButtonsModel.UseCase;
  if (!lazy protocol witness table cache variable for type StackedButtonsModel.UseCase and conformance StackedButtonsModel.UseCase)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StackedButtonsModel.UseCase and conformance StackedButtonsModel.UseCase);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [ButtonConfigurationModel] and conformance <A> [A](unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay27PhoneCallFlowDelegatePlugin24ButtonConfigurationModelVGMd, &_sSay27PhoneCallFlowDelegatePlugin24ButtonConfigurationModelVGMR);
    lazy protocol witness table accessor for type DeviceIdiom and conformance DeviceIdiom(a2, type metadata accessor for ButtonConfigurationModel, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type DeviceIdiom and conformance DeviceIdiom(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t instantiation function for generic protocol witness table for StackedButtonsModel(uint64_t a1)
{
  result = lazy protocol witness table accessor for type StackedButtonsModel and conformance StackedButtonsModel();
  *(a1 + 8) = result;
  return result;
}

void type metadata completion function for ButtonConfigurationModel(uint64_t a1)
{
  type metadata accessor for CodableAceObject<SABaseCommand>(319, &lazy cache variable for type metadata for CodableAceObject<SABaseCommand>, &lazy cache variable for type metadata for SABaseCommand, SABaseCommand_ptr);
  if (v1 <= 0x3F)
  {
    type metadata accessor for CodableAceObject<SABaseCommand>(319, &lazy cache variable for type metadata for CodableAceObject<SAIntentGroupRunSiriKitExecutor>, &lazy cache variable for type metadata for SAIntentGroupRunSiriKitExecutor, SAIntentGroupRunSiriKitExecutor_ptr);
    if (v2 <= 0x3F)
    {
      type metadata accessor for UUID();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata accessor for CodableAceObject<SABaseCommand>(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4)
{
  if (!*a2)
  {
    type metadata accessor for CNContactStore(255, a3, a4);
    v5 = type metadata accessor for CodableAceObject();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for StackedButtonsModel.UseCase(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for StackedButtonsModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ButtonConfigurationModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

uint64_t StartAudioCallAceViewProvider.init(templatingService:sharedGlobals:)(uint64_t a1, void *a2)
{
  *(v2 + direct field offset for StartAudioCallAceViewProvider.templatingService) = a1;
  outlined init with copy of SignalProviding(a2, v2 + direct field offset for StartAudioCallAceViewProvider.sharedGlobals);
  v4 = DefaultAceViewProvider.init()();
  __swift_destroy_boxed_opaque_existential_1(a2);
  return v4;
}

uint64_t StartAudioCallAceViewProvider.makeAceViewsForResolveNeedsDisambiguation(app:parameterName:intent:utteranceViews:disambiguationList:deviceIsLocked:_:)(uint64_t a1, uint64_t a2, void *a3, void *a4, unint64_t a5, uint64_t a6, char a7, void (*a8)(uint64_t, void), uint64_t a9)
{
  v17 = type metadata accessor for CATOption();
  __chkstk_darwin(v17 - 8);

  v18._countAndFlagsBits = a2;
  v18._object = a3;
  if (PhoneCallSlotNames.init(rawValue:)(v18).value == PhoneCallFlowDelegatePlugin_PhoneCallSlotNames_contact)
  {
    v32 = a7;
    v31 = direct field offset for StartAudioCallAceViewProvider.sharedGlobals;
    type metadata accessor for PhoneCallDisplayTextCATs(0);
    static CATOption.defaultMode.getter();
    v30 = CATWrapper.__allocating_init(options:globals:)();
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v19 = type metadata accessor for Logger();
    __swift_project_value_buffer(v19, static Logger.siriPhone);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_0, v20, v21, "#StartCallViewBuilders Providing DefaultDisambiguationBuilder", v22, 2u);
    }

    outlined init with copy of SignalProviding(v33 + v31, v36);
    v34[0] = a1;
    v34[1] = a4;
    v34[2] = a2;
    v34[3] = a3;
    v34[4] = a6;
    v35 = v32 & 1;
    v36[5] = v30;

    v23 = a4;

    specialized IdiomSensitiveViewBuilder.makeViews(utteranceViews:_:)(a5, a8, a9);
    return outlined destroy of DefaultDisambiguationBuilder<INStartAudioCallIntent>(v34);
  }

  else
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v25 = type metadata accessor for Logger();
    __swift_project_value_buffer(v25, static Logger.siriPhone);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_0, v26, v27, "Not disambiguating contact - not building a disambiguation snippet", v28, 2u);
    }

    if (a5 >> 62)
    {
      type metadata accessor for SAAceView();

      v29 = _bridgeCocoaArray<A>(_:)();
    }

    else
    {

      dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
      type metadata accessor for SAAceView();
      v29 = a5;
    }

    a8(v29, 0);
  }
}

uint64_t StartAudioCallAceViewProvider.__ivar_destroyer()
{

  v1 = (v0 + direct field offset for StartAudioCallAceViewProvider.sharedGlobals);

  return __swift_destroy_boxed_opaque_existential_1(v1);
}

uint64_t StartAudioCallAceViewProvider.deinit()
{
  v0 = DefaultAceViewProvider.deinit();

  __swift_destroy_boxed_opaque_existential_1((v0 + direct field offset for StartAudioCallAceViewProvider.sharedGlobals));
  return v0;
}

uint64_t StartAudioCallAceViewProvider.__deallocating_deinit()
{
  StartAudioCallAceViewProvider.deinit();

  return swift_deallocClassInstance();
}

uint64_t outlined destroy of DefaultDisambiguationBuilder<INStartAudioCallIntent>(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin28DefaultDisambiguationBuilder33_6270EEFB01DDA464E81F258DCCAFA0E4LLVySo012INStartAudioB6IntentCGMd, &_s27PhoneCallFlowDelegatePlugin28DefaultDisambiguationBuilder33_6270EEFB01DDA464E81F258DCCAFA0E4LLVySo012INStartAudioB6IntentCGMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for StartAudioCallAceViewProvider(uint64_t a1)
{
  result = type metadata singleton initialization cache for StartAudioCallAceViewProvider;
  if (!type metadata singleton initialization cache for StartAudioCallAceViewProvider)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void StartAudioCallCatTemplatingService.__allocating_init(sharedGlobals:catFamily:displayTextCats:phoneCallCommonCats:appInfoBuilder:)()
{
  OUTLINED_FUNCTION_66();
  OUTLINED_FUNCTION_29_1();
  swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v0, *(v0 + 24));
  OUTLINED_FUNCTION_9_1();
  __chkstk_darwin(v1);
  OUTLINED_FUNCTION_4();
  v3 = OUTLINED_FUNCTION_28_4(v2);
  v4(v3);
  OUTLINED_FUNCTION_2_116();
  v5 = OUTLINED_FUNCTION_40_0();
  __swift_destroy_boxed_opaque_existential_1(v5);
  OUTLINED_FUNCTION_65();
}

void StartAudioCallCatTemplatingService.init(sharedGlobals:catFamily:displayTextCats:phoneCallCommonCats:appInfoBuilder:)()
{
  OUTLINED_FUNCTION_66();
  OUTLINED_FUNCTION_29_1();
  __swift_mutable_project_boxed_opaque_existential_1(v0, *(v0 + 24));
  OUTLINED_FUNCTION_9_1();
  __chkstk_darwin(v1);
  OUTLINED_FUNCTION_4();
  v3 = OUTLINED_FUNCTION_28_4(v2);
  v4(v3);
  OUTLINED_FUNCTION_2_116();
  v5 = OUTLINED_FUNCTION_40_0();
  __swift_destroy_boxed_opaque_existential_1(v5);
  OUTLINED_FUNCTION_65();
}

uint64_t StartAudioCallCatTemplatingService.slotTemplating(for:)@<X0>(char a1@<W0>, _OWORD *a2@<X8>)
{
  switch(a1)
  {
    case 2:
      OUTLINED_FUNCTION_35_0();
      v10 = OUTLINED_FUNCTION_11_5(v9 + class metadata base offset for PhoneCallBaseCatTemplatingService);
      outlined init with copy of SignalProviding(v10, v29);
      OUTLINED_FUNCTION_7_2(direct field offset for StartAudioCallCatTemplatingService.catFamily);
      specialized SlotTemplating.toAnySlotTemplating()();

      v7 = &_s27PhoneCallFlowDelegatePlugin29DestinationTypeSlotTemplatingVySo012INStartAudioB6IntentCSo16INIntentResponseCGMd;
      v8 = &_s27PhoneCallFlowDelegatePlugin29DestinationTypeSlotTemplatingVySo012INStartAudioB6IntentCSo16INIntentResponseCGMR;
      goto LABEL_5;
    case 3:
      OUTLINED_FUNCTION_35_0();
      v6 = OUTLINED_FUNCTION_11_5(v5 + class metadata base offset for PhoneCallBaseCatTemplatingService);
      outlined init with copy of SignalProviding(v6, v29);
      OUTLINED_FUNCTION_7_2(direct field offset for StartAudioCallCatTemplatingService.catFamily);
      specialized SlotTemplating.toAnySlotTemplating()();

      v7 = &_s27PhoneCallFlowDelegatePlugin09PreferredB22ProviderSlotTemplatingVySo012INStartAudioB6IntentCSo16INIntentResponseCGMd;
      v8 = &_s27PhoneCallFlowDelegatePlugin09PreferredB22ProviderSlotTemplatingVySo012INStartAudioB6IntentCSo16INIntentResponseCGMR;
LABEL_5:
      v11 = v29;
LABEL_8:
      result = _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v11, v7, v8);
      v21 = v3[1];
      *a2 = *v3;
      a2[1] = v21;
      v22 = v3[3];
      a2[2] = v3[2];
      a2[3] = v22;
      return result;
    case 4:
      OUTLINED_FUNCTION_35_0();
      v13 = OUTLINED_FUNCTION_11_5(v12 + class metadata base offset for PhoneCallBaseCatTemplatingService);
      outlined init with copy of SignalProviding(v13, v28);
      v14 = *(v2 + direct field offset for StartAudioCallCatTemplatingService.catFamily);

      v15 = DucTemplatingService.locale.getter();
      v17 = v16;
      v18 = type metadata accessor for AppInfoBuilder();
      v19 = swift_allocObject();
      v28[11] = v18;
      v28[12] = &protocol witness table for AppInfoBuilder;
      v28[5] = v14;
      v28[6] = v15;
      v28[7] = v17;
      v28[8] = v19;
      v3 = v29;
      specialized SlotTemplating.toAnySlotTemplating()();
      v7 = &_s27PhoneCallFlowDelegatePlugin22ContactsSlotTemplatingVySo012INStartAudioB6IntentCSo16INIntentResponseCGMd;
      v8 = &_s27PhoneCallFlowDelegatePlugin22ContactsSlotTemplatingVySo012INStartAudioB6IntentCSo16INIntentResponseCGMR;
      v11 = v28;
      goto LABEL_8;
  }

  if (one-time initialization token for siriPhone != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for Logger();
  __swift_project_value_buffer(v23, static Logger.siriPhone);
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v28[0] = v27;
    *v26 = 136315138;
    *(v26 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000004FLL, 0x8000000000461EC0, v28);
    _os_log_impl(&dword_0, v24, v25, "%s", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v27);
  }

  static SiriKitLifecycle._logCrashToEventBus(_:)();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void StartAudioCallCatTemplatingService.makeIntentHandledDialog(app:intent:intentResponse:_:)()
{
  OUTLINED_FUNCTION_66();
  v1 = v0;
  v52 = v3;
  v53 = v2;
  v5 = v4;
  v7 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  __chkstk_darwin(v8 - 8);
  v54 = &v46 - v9;
  v58 = type metadata accessor for Locale();
  OUTLINED_FUNCTION_9_1();
  v11 = v10;
  __chkstk_darwin(v12);
  OUTLINED_FUNCTION_4();
  v15 = v14 - v13;
  v50 = v5;
  v16 = outlined bridged method (pb) of @objc INStartAudioCallIntent.contacts.getter(v5);
  v51 = v11;
  if (v16)
  {
    v17 = v16;
    v47 = v1;
    v48 = v7;
    v60[0] = _swiftEmptyArrayStorage;
    v18 = specialized Array.count.getter(v16);
    v19 = 0;
    v56 = v17 & 0xC000000000000001;
    v57 = v18;
    v55 = v17 & 0xFFFFFFFFFFFFFF8;
    v49 = _swiftEmptyArrayStorage;
    while (1)
    {
      if (v57 == v19)
      {

        v1 = v47;
        v7 = v48;
        v24 = v49;
        goto LABEL_15;
      }

      if (v56)
      {
        v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v19 >= *(v55 + 16))
        {
          goto LABEL_29;
        }

        v20 = *(v17 + 8 * v19 + 32);
      }

      v21 = v20;
      v22 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      type metadata accessor for PhonePerson(0);
      static Device.current.getter();
      __swift_project_boxed_opaque_existential_1(v59, v59[3]);
      dispatch thunk of DeviceState.siriLocale.getter();
      __swift_destroy_boxed_opaque_existential_1(v59);
      v23 = static PhonePerson.make(phonePerson:options:locale:)(v21, 0, v15);

      (*(v11 + 8))(v15, v58);
      ++v19;
      if (v23)
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*(&dword_10 + (v60[0] & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v60[0] & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v49 = v60[0];
        v19 = v22;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
  }

  else
  {
    v24 = _swiftEmptyArrayStorage;
LABEL_15:
    type metadata accessor for PhonePersonList.Builder();
    v25 = swift_allocObject();
    *(v25 + 16) = _swiftEmptyArrayStorage;
    v26 = (v25 + 16);
    swift_beginAccess();
    *v26 = v24;
    type metadata accessor for PhonePersonList();
    swift_allocObject();
    v27 = OUTLINED_FUNCTION_40_0();
    v28 = PhonePersonList.init(builder:)(v27);
    v29 = *(v1 + direct field offset for StartAudioCallCatTemplatingService.catFamily);
    v30 = v50;
    _s27PhoneCallFlowDelegatePlugin0a5StartB6IntentC6intent21isRelationshipRequestAcA07CallingG0_p_SbtcfCTf4enn_nSo012INStartAudiobG0C_Tt1g5();
    v56 = v31;
    type metadata accessor for SirikitDeviceState();
    v32 = (v1 + *(*v1 + class metadata base offset for PhoneCallBaseCatTemplatingService + 40));
    outlined init with copy of SignalProviding(v32, v59);
    v57 = v28;

    v55 = SirikitDeviceState.__allocating_init(from:)();
    v33 = (v1 + *(*v1 + class metadata base offset for PhoneCallBaseCatTemplatingService + 48));
    v34 = v33[3];
    v35 = v33[4];
    __swift_project_boxed_opaque_existential_1(v33, v34);
    __swift_project_boxed_opaque_existential_1(v32, v32[3]);
    dispatch thunk of DeviceState.siriLocale.getter();
    (*(v35 + 16))(v7, v15, v34, v35);
    v37 = v36;
    (*(v51 + 8))(v15, v58);
    v38 = v54;
    if (v37)
    {
      SpeakableString.init(print:speak:)();
      v39 = 0;
    }

    else
    {
      v39 = 1;
    }

    v40 = type metadata accessor for SpeakableString();
    __swift_storeEnumTagSinglePayload(v38, v39, 1, v40);
    v41 = App.isFirstParty()();
    v42 = App.appIdentifier.getter();
    if (v43)
    {
      if (v42 == 0xD000000000000010 && v43 == 0x8000000000458F10)
      {
        v45 = 1;
      }

      else
      {
        v45 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }
    }

    else
    {
      v45 = 0;
    }

    (*(*v29 + class metadata base offset for StartCallCATs + 1152))(v56, v57, v55, v38, v41, v45 & 1, 0, v53, v52);

    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v38, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_65();
  }
}

uint64_t StartAudioCallCatTemplatingService.makeParameterValueConfirmationDialog(app:parameterName:intentResolutionResult:intent:_:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{

  v14._countAndFlagsBits = a2;
  v14._object = a3;
  v15.value = PhoneCallSlotNames.init(rawValue:)(v14).value;
  StartAudioCallCatTemplatingService.slotTemplating(for:)(v15.value, &v17);
  v18(a1, a2, a3, a4, a5, 1, a6, a7);
}

void StartAudioCallCatTemplatingService.makeFailureHandlingIntentDialog(app:intent:intentResponse:_:)()
{
  OUTLINED_FUNCTION_66();
  v1 = v0;
  v40 = v2;
  v41 = v3;
  v39 = v4;
  v37 = v5;
  v38 = type metadata accessor for Locale();
  OUTLINED_FUNCTION_9_1();
  v36 = v6;
  __chkstk_darwin(v7);
  OUTLINED_FUNCTION_4();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  __chkstk_darwin(v11 - 8);
  v13 = &v35 - v12;
  OUTLINED_FUNCTION_35_0();
  v15 = (v0 + *(v14 + class metadata base offset for PhoneCallBaseCatTemplatingService + 48));
  v17 = v15[3];
  v16 = v15[4];
  __swift_project_boxed_opaque_existential_1(v15, v17);
  OUTLINED_FUNCTION_35_0();
  v19 = (v0 + *(v18 + class metadata base offset for PhoneCallBaseCatTemplatingService + 40));
  __swift_project_boxed_opaque_existential_1(v19, v19[3]);
  OUTLINED_FUNCTION_40_0();
  dispatch thunk of DeviceState.siriLocale.getter();
  (*(v16 + 16))(v37, v10, v17, v16);
  v21 = v20;
  (*(v36 + 8))(v10, v38);
  if (v21)
  {
    SpeakableString.init(print:speak:)();
    v22 = 0;
  }

  else
  {
    v22 = 1;
  }

  v23 = type metadata accessor for SpeakableString();
  __swift_storeEnumTagSinglePayload(v13, v22, 1, v23);
  switch([v39 code])
  {
    case 5uLL:
      OUTLINED_FUNCTION_9_78();
      (*(v24 + class metadata base offset for StartCallCATs + 640))(v13, v40, v41);
      break;
    case 6uLL:
      type metadata accessor for SirikitDeviceState();
      v27 = (v1 + *(*v1 + class metadata base offset for PhoneCallBaseCatTemplatingService + 72));
      v28 = v27[3];
      v29 = v27[4];
      __swift_project_boxed_opaque_existential_1(v27, v28);
      (*(v29 + 8))(v42, v28, v29);
      SirikitDeviceState.__allocating_init(from:)();
      OUTLINED_FUNCTION_9_78();
      (*(v30 + class metadata base offset for StartCallCATs + 736))();
      goto LABEL_10;
    case 7uLL:
      OUTLINED_FUNCTION_9_78();
      (*(v25 + class metadata base offset for StartCallCATs + 768))(v13, v40, v41);
      break;
    case 8uLL:
      OUTLINED_FUNCTION_9_78();
      (*(v26 + class metadata base offset for StartCallCATs + 832))(v13, v40, v41);
      break;
    default:
      v31 = *(v1 + direct field offset for StartAudioCallCatTemplatingService.catFamily);
      type metadata accessor for SirikitDeviceState();
      outlined init with copy of SignalProviding(v19, v42);
      v32 = SirikitDeviceState.__allocating_init(from:)();
      v33 = swift_allocObject();
      *(v33 + 16) = v40;
      *(v33 + 24) = v41;
      v34 = *(*v31 + class metadata base offset for StartCallCATs + 576);

      v34(v32, partial apply for closure #2 in StartAudioCallCatTemplatingService.makeFailureHandlingIntentDialog(app:intent:intentResponse:_:), v33);

LABEL_10:

      break;
  }

  _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v13, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_65();
}

uint64_t StartAudioCallCatTemplatingService.makeParameterValueUnsupportedDialog(app:parameterName:intentResolutionResult:intent:multicardinalValueIndex:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_5_6(a1, a2, a3);
  v5._countAndFlagsBits = v4;
  v5._object = v3;
  v6.value = PhoneCallSlotNames.init(rawValue:)(v5).value;
  StartAudioCallCatTemplatingService.slotTemplating(for:)(v6.value, &v10);
  v7 = OUTLINED_FUNCTION_10_7();
  v8(v7);
}

uint64_t StartAudioCallCatTemplatingService.makeParameterValueDisambiguationDialog(app:parameterName:intentResolutionResult:disambiguationList:deviceIsLocked:intent:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_5_6(a1, a2, a3);
  v14._countAndFlagsBits = v11;
  v14._object = v10;
  v15.value = PhoneCallSlotNames.init(rawValue:)(v14).value;
  StartAudioCallCatTemplatingService.slotTemplating(for:)(v15.value, &v19);
  (*(*v8 + class metadata base offset for PhoneCallBaseCatTemplatingService + 216))(v9, a8, v12);
  v16 = OUTLINED_FUNCTION_10_7();
  v17(v16);
}

uint64_t StartAudioCallCatTemplatingService.makeGenericErrorDialog(app:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(v3 + direct field offset for StartAudioCallCatTemplatingService.catFamily);
  type metadata accessor for SirikitDeviceState();
  OUTLINED_FUNCTION_35_0();
  v8 = OUTLINED_FUNCTION_11_5(v7 + class metadata base offset for PhoneCallBaseCatTemplatingService);
  outlined init with copy of SignalProviding(v8, v11);
  v9 = SirikitDeviceState.__allocating_init(from:)();
  (*(*v6 + class metadata base offset for StartCallCATs + 960))(v9, a2, a3);
}

uint64_t StartAudioCallCatTemplatingService.deinit()
{
  v0 = specialized PhoneCallBaseCatTemplatingService.deinit();

  return v0;
}

uint64_t StartAudioCallCatTemplatingService.__deallocating_deinit()
{
  specialized PhoneCallBaseCatTemplatingService.deinit();

  return swift_deallocClassInstance();
}

uint64_t outlined bridged method (pb) of @objc INStartAudioCallIntent.contacts.getter(void *a1)
{
  v1 = [a1 contacts];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  type metadata accessor for INPerson();
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t specialized StartAudioCallCatTemplatingService.init(sharedGlobals:catFamily:displayTextCats:phoneCallCommonCats:appInfoBuilder:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  v35 = a4;
  v40 = a1;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow25DucTemplatingLocalContextVSgMd, &_s11SiriKitFlow25DucTemplatingLocalContextVSgMR);
  __chkstk_darwin(v15 - 8);
  v41 = v34 - v16;
  v38 = type metadata accessor for Locale();
  v36 = *(v38 - 8);
  __chkstk_darwin(v38);
  v18 = v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for CATOption();
  __chkstk_darwin(v19 - 8);
  v52[3] = a7;
  v52[4] = a8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v52);
  (*(*(a7 - 8) + 32))(boxed_opaque_existential_1, a5, a7);
  v37 = a2;
  *(a6 + direct field offset for StartAudioCallCatTemplatingService.catFamily) = a2;
  v39 = "csV2";
  outlined init with copy of SignalProviding(a1, v49);
  outlined init with copy of SignalProviding(v52, v48);
  type metadata accessor for StartCallCATs(0);

  static CATOption.defaultMode.getter();
  v42 = CATWrapper.__allocating_init(options:globals:)();
  v47[3] = &type metadata for LabelTemplatesProvider;
  v47[4] = &protocol witness table for LabelTemplatesProvider;
  v21 = swift_allocObject();
  v47[0] = v21;
  *(v21 + 16) = 0u;
  *(v21 + 32) = 0u;
  v22 = (a6 + *(*a6 + class metadata base offset for PhoneCallBaseCatTemplatingService + 16));
  *v22 = 0x3D65737561705C1BLL;
  v22[1] = 0xEC0000005C303532;
  v23 = a6 + *(*a6 + class metadata base offset for PhoneCallBaseCatTemplatingService + 56);
  *v23 = 0u;
  *(v23 + 1) = 0u;
  *(v23 + 4) = 0;
  outlined init with copy of SignalProviding(v49, a6 + *(*a6 + class metadata base offset for PhoneCallBaseCatTemplatingService + 72));
  v24 = v50;
  v25 = v51;
  __swift_project_boxed_opaque_existential_1(v49, v50);
  (*(v25 + 8))(&v45, v24, v25);
  v26 = *(*a6 + class metadata base offset for PhoneCallBaseCatTemplatingService + 40);
  outlined init with take of PhoneCallFeatureFlagProviding(&v45, a6 + v26);
  v27 = *(*a6 + class metadata base offset for PhoneCallBaseCatTemplatingService + 24);
  v34[1] = a3;
  *(a6 + v27) = a3;
  *(a6 + *(*a6 + class metadata base offset for PhoneCallBaseCatTemplatingService + 32)) = v35;
  outlined init with copy of SignalProviding(v48, a6 + *(*a6 + class metadata base offset for PhoneCallBaseCatTemplatingService + 48));
  outlined init with copy of SignalProviding(v47, a6 + *(*a6 + class metadata base offset for PhoneCallBaseCatTemplatingService + 64));
  *(a6 + *(*a6 + class metadata base offset for PhoneCallBaseCatTemplatingService + 80)) = v42;
  outlined init with copy of SignalProviding(a6 + v26, &v45);
  __swift_project_boxed_opaque_existential_1(&v45, v46);

  dispatch thunk of DeviceState.siriLocale.getter();
  v44[0] = Locale.identifier.getter();
  v44[1] = v28;
  v43[0] = 45;
  v43[1] = 0xE100000000000000;
  v44[5] = 95;
  v44[6] = 0xE100000000000000;
  lazy protocol witness table accessor for type String and conformance String();
  StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  (*(v36 + 8))(v18, v38);

  type metadata accessor for INIntentSlotValueType(0);
  lazy protocol witness table accessor for type INIntentSlotValueType and conformance INIntentSlotValueType();
  Dictionary.init(dictionaryLiteral:)();
  v29 = v50;
  v30 = v51;
  __swift_project_boxed_opaque_existential_1(v49, v50);
  (*(v30 + 24))(v44, v29, v30);
  outlined init with copy of SignalProviding(a6 + v26, v43);
  v31 = type metadata accessor for DucTemplatingLocalContext();
  __swift_storeEnumTagSinglePayload(v41, 1, 1, v31);
  v32 = DucTemplatingService.init(ducFamily:locale:extensionValueTypeNamesByValueType:aceServiceInvoker:deviceState:localContext:)();

  __swift_destroy_boxed_opaque_existential_1(v40);
  __swift_destroy_boxed_opaque_existential_1(v48);
  __swift_destroy_boxed_opaque_existential_1(v52);
  __swift_destroy_boxed_opaque_existential_1(v47);
  __swift_destroy_boxed_opaque_existential_1(&v45);
  __swift_destroy_boxed_opaque_existential_1(v49);
  return v32;
}

uint64_t type metadata accessor for StartAudioCallCatTemplatingService(uint64_t a1)
{
  result = type metadata singleton initialization cache for StartAudioCallCatTemplatingService;
  if (!type metadata singleton initialization cache for StartAudioCallCatTemplatingService)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type INIntentSlotValueType and conformance INIntentSlotValueType()
{
  result = lazy protocol witness table cache variable for type INIntentSlotValueType and conformance INIntentSlotValueType;
  if (!lazy protocol witness table cache variable for type INIntentSlotValueType and conformance INIntentSlotValueType)
  {
    type metadata accessor for INIntentSlotValueType(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type INIntentSlotValueType and conformance INIntentSlotValueType);
  }

  return result;
}

uint64_t StartAudioCallDirectAction.init(appId:intentTypeName:intentData:nlIntent:userDialogAct:preferPrintingDialogOnDisplayMode:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, char a11)
{
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  *(a9 + 72) = a11;
  return result;
}

id StartAudioCallDirectAction.toStartLocalRequest(deviceState:)(void *a1)
{
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SKIDirectInvocationPayload, SKIDirectInvocationPayload_ptr);
  v2 = SKIDirectInvocationPayload.__allocating_init(identifier:)(0xD000000000000034, 0x8000000000452770);
  v3 = StartAudioCallDirectAction.toDictionary()();
  v4 = specialized _dictionaryUpCast<A, B, C, D>(_:)(v3);

  outlined bridged method (mbnn) of @objc SKIDirectInvocationPayload.userData.setter(v4, v2);
  v5 = SKIDirectInvocationPayload.toStartLocalRequest(deviceState:)(a1);

  return v5;
}

unint64_t StartAudioCallDirectAction.startAudioCallIntent.getter()
{
  if (*(v0 + 24))
  {
    v1 = String._bridgeToObjectiveC()();
  }

  else
  {
    v1 = 0;
  }

  if (*(v0 + 40) >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
  }

  OUTLINED_FUNCTION_19_0();
  v3 = INIntentCreate();

  if (v3)
  {
    v4 = v3;
    v5 = _sSo8INIntentC27PhoneCallFlowDelegatePluginE5typed2asxSgxm_tABRbzlFSo07INStartC6IntentC_Ttg5Tm(INStartCallIntent_ptr);

    if (v5)
    {
      v6 = INStartCallIntent.toStartAudioCallIntent()();

      if (v6)
      {
        if (one-time initialization token for siriPhone != -1)
        {
          OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
        }

        v7 = type metadata accessor for Logger();
        __swift_project_value_buffer(v7, static Logger.siriPhone);
        v8 = Logger.logObject.getter();
        v9 = static os_log_type_t.debug.getter();
        if (!OUTLINED_FUNCTION_51_0(v9))
        {
          goto LABEL_20;
        }

        v10 = OUTLINED_FUNCTION_65_0();
        *v10 = 0;
        v11 = "#StartAudioCallDirectAction Received INStartCallIntent from directAction, converting to INStartAudioCallIntent";
LABEL_19:
        _os_log_impl(&dword_0, v8, v3, v11, v10, 2u);
        OUTLINED_FUNCTION_26_0(v10);
LABEL_20:

        v3 = v4;
        goto LABEL_26;
      }
    }

    v4 = v4;
    v6 = _sSo8INIntentC27PhoneCallFlowDelegatePluginE5typed2asxSgxm_tABRbzlFSo07INStartC6IntentC_Ttg5Tm(INStartAudioCallIntent_ptr);

    if (v6)
    {
      if (one-time initialization token for siriPhone != -1)
      {
        OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
      }

      v12 = type metadata accessor for Logger();
      __swift_project_value_buffer(v12, static Logger.siriPhone);
      v8 = Logger.logObject.getter();
      v13 = static os_log_type_t.debug.getter();
      if (!OUTLINED_FUNCTION_51_0(v13))
      {
        goto LABEL_20;
      }

      v10 = OUTLINED_FUNCTION_65_0();
      *v10 = 0;
      v11 = "#StartAudioCallDirectAction Received INStartAudioCallIntent from directAction";
      goto LABEL_19;
    }
  }

  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v14 = type metadata accessor for Logger();
  __swift_project_value_buffer(v14, static Logger.siriPhone);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = OUTLINED_FUNCTION_65_0();
    *v17 = 0;
    _os_log_impl(&dword_0, v15, v16, "#StartAudioCallDirectAction Didn't receive initial siriKitIntent, using default INStartAudioCallIntent", v17, 2u);
    OUTLINED_FUNCTION_26_0(v17);
  }

  v18 = objc_allocWithZone(INStartAudioCallIntent);
  v6 = @nonobjc INStartAudioCallIntent.init(destinationType:contacts:)(1, 0);
LABEL_26:

  return v6;
}

uint64_t _sSo8INIntentC27PhoneCallFlowDelegatePluginE5typed2asxSgxm_tABRbzlFSo07INStartC6IntentC_Ttg5Tm(void *a1)
{
  v2 = v1;
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (v3)
  {
    v4 = v3;
    v5 = v2;
  }

  else
  {
    v7 = INTypedIntentWithIntent();
    if (v7)
    {
      v8 = v7;
      objc_opt_self();
      v4 = swift_dynamicCastObjCClass();
      if (!v4)
      {
      }
    }

    else
    {
      return 0;
    }
  }

  return v4;
}

uint64_t StartAudioCallDirectAction.init(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 16))
  {
    v4 = specialized __RawDictionaryStorage.find<A>(_:)(0x6449707061, 0xE500000000000000);
    if (v5)
    {
      v6 = outlined init with copy of Any(*(a1 + 56) + 32 * v4, &v50);
      if (OUTLINED_FUNCTION_1_121(v6, v7, v8, &type metadata for String, v9, v10))
      {
        v11 = v49;
        v17 = specialized Dictionary.subscript.getter(0x7954746E65746E69, 0xEE00656D614E6570, a1, &v50);
        if (v51)
        {
          v18 = OUTLINED_FUNCTION_1_121(v12, v13, v14, &type metadata for String, v15, v16, v17);
          if (v18)
          {
            v19 = v48;
          }

          else
          {
            v19 = 0;
          }

          if (v18)
          {
            v20 = v49;
          }

          else
          {
            v20 = 0;
          }
        }

        else
        {
          outlined destroy of Any?(&v50);
          v19 = 0;
          v20 = 0;
        }

        v34 = specialized Dictionary.subscript.getter(0x6144746E65746E69, 0xEA00000000006174, a1, &v50);
        if (v51)
        {
          v35 = OUTLINED_FUNCTION_1_121(v29, v30, v31, &type metadata for Data, v32, v33, v34);
          if (v35)
          {
            v23 = v48;
          }

          else
          {
            v23 = 0;
          }

          if (v35)
          {
            v24 = v49;
          }

          else
          {
            v24 = 0xF000000000000000;
          }
        }

        else
        {
          outlined destroy of Any?(&v50);
          v23 = 0;
          v24 = 0xF000000000000000;
        }

        v41 = specialized Dictionary.subscript.getter(0x746E65746E496C6ELL, 0xE800000000000000, a1, &v50);
        if (v51)
        {
          v42 = OUTLINED_FUNCTION_1_121(v36, v37, v38, &type metadata for Data, v39, v40, v41);
          if (v42)
          {
            v25 = v48;
          }

          else
          {
            v25 = 0;
          }

          if (v42)
          {
            v26 = v49;
          }

          else
          {
            v26 = 0xF000000000000000;
          }
        }

        else
        {
          outlined destroy of Any?(&v50);
          v25 = 0;
          v26 = 0xF000000000000000;
        }

        specialized Dictionary.subscript.getter(0x6C61694472657375, 0xED0000746341676FLL, a1, &v50);
        if (v51)
        {
          v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20SIRINLUUserDialogAct_pMd, &_sSo20SIRINLUUserDialogAct_pMR);
          if (OUTLINED_FUNCTION_1_121(v43, v44, v45, v43, v46, v47))
          {
            v27 = v48;
          }

          else
          {
            v27 = 0;
          }
        }

        else
        {
          outlined destroy of Any?(&v50);
          v27 = 0;
        }

        specialized Dictionary.subscript.getter(0xD000000000000021, 0x8000000000459A70, a1, &v50);

        if (v51)
        {
          result = swift_dynamicCast();
          if (result)
          {
            v28 = v48;
LABEL_40:
            v22 = v48;
            goto LABEL_12;
          }
        }

        else
        {
          result = outlined destroy of Any?(&v50);
        }

        v28 = 1;
        goto LABEL_40;
      }
    }
  }

  v22 = 0;
  v11 = 0;
  v19 = 0;
  v20 = 0;
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v26 = 0;
  v27 = 0;
  v28 = 0;
LABEL_12:
  *a2 = v22;
  *(a2 + 8) = v11;
  *(a2 + 16) = v19;
  *(a2 + 24) = v20;
  *(a2 + 32) = v23;
  *(a2 + 40) = v24;
  *(a2 + 48) = v25;
  *(a2 + 56) = v26;
  *(a2 + 64) = v27;
  *(a2 + 72) = v28;
  return result;
}

uint64_t StartAudioCallDirectAction.intentData.getter()
{
  v0 = OUTLINED_FUNCTION_19_0();
  outlined copy of Data?(v0, v1);
  return OUTLINED_FUNCTION_19_0();
}

uint64_t StartAudioCallDirectAction.nlIntent.getter()
{
  v0 = OUTLINED_FUNCTION_19_0();
  outlined copy of Data?(v0, v1);
  return OUTLINED_FUNCTION_19_0();
}

uint64_t StartAudioCallDirectAction.toDictionary()()
{
  v1 = v0;
  v18 = *v0;
  ObjectType = &type metadata for String;
  v12 = v18;
  outlined init with take of Any(&v12, &v9);
  outlined init with copy of String(&v18, &v17);
  swift_isUniquelyReferenced_nonNull_native();
  *&v17 = &_swiftEmptyDictionarySingleton;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v9, 0x6449707061, 0xE500000000000000);
  v2 = v17;
  v17 = v1[1];
  if (*(&v17 + 1))
  {
    OUTLINED_FUNCTION_3_112(*(&v17 + 1), v5, v6, v7, v8, v9, v10, v11, v12, v13, ObjectType);
    outlined init with copy of SIRINLUUserDialogAct?(&v17, &v16, &_sSSSgMd, &_sSSSgMR);
    swift_isUniquelyReferenced_nonNull_native();
    *&v16 = v2;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v9, 0x7954746E65746E69, 0xEE00656D614E6570);
    v2 = v16;
  }

  v16 = v1[2];
  if (*(&v16 + 1) >> 60 != 15)
  {
    OUTLINED_FUNCTION_3_112(*(&v16 + 1), v5, v6, v7, v8, v9, v10, v11, v12, v13, ObjectType);
    outlined init with copy of SIRINLUUserDialogAct?(&v16, &v15, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
    swift_isUniquelyReferenced_nonNull_native();
    *&v15 = v2;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v9, 0x6144746E65746E69, 0xEA00000000006174);
    v2 = v15;
  }

  v15 = v1[3];
  if (*(&v15 + 1) >> 60 != 15)
  {
    OUTLINED_FUNCTION_3_112(*(&v15 + 1), v5, v6, v7, v8, v9, v10, v11, v12, v13, ObjectType);
    outlined init with copy of SIRINLUUserDialogAct?(&v15, &v6, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
    swift_isUniquelyReferenced_nonNull_native();
    v6 = v2;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v9, 0x746E65746E496C6ELL, 0xE800000000000000);
    v2 = v6;
  }

  v3 = *(v1 + 8);
  v6 = v3;
  if (v3)
  {
    ObjectType = swift_getObjectType();
    *&v12 = v3;
    outlined init with take of Any(&v12, &v9);
    outlined init with copy of SIRINLUUserDialogAct?(&v6, &v8, &_sSo20SIRINLUUserDialogAct_pSgMd, &_sSo20SIRINLUUserDialogAct_pSgMR);
    swift_isUniquelyReferenced_nonNull_native();
    v8 = v2;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v9, 0x6C61694472657375, 0xED0000746341676FLL);
    return v8;
  }

  return v2;
}

id @nonobjc INStartAudioCallIntent.init(destinationType:contacts:)(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INPerson, INPerson_ptr);
    v4.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v4.super.isa = 0;
  }

  v5 = [v2 initWithDestinationType:a1 contacts:v4.super.isa];

  return v5;
}

uint64_t outlined init with copy of SIRINLUUserDialogAct?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v5 = OUTLINED_FUNCTION_19_0();
  v6(v5);
  return a2;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t getEnumTagSinglePayload for StartAudioCallDirectAction(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 73))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t storeEnumTagSinglePayload for StartAudioCallDirectAction(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 73) = 1;
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

    *(result + 73) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t specialized CallingFlowAbstraction.init(app:flowName:sharedGlobals:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  return specialized CallingFlowAbstraction.init(app:flowName:sharedGlobals:)(a1, a2, a3, a4, specialized PhoneFlow.init(sharedGlobals:));
}

{
  return specialized CallingFlowAbstraction.init(app:flowName:sharedGlobals:)(a1, a2, a3, a4, specialized PhoneFlow.init(sharedGlobals:));
}

uint64_t specialized CallingFlowAbstraction.init(app:flowName:sharedGlobals:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(uint64_t *))
{
  *(v5 + *(*v5 + 288)) = a1;
  v8 = (v5 + *(*v5 + 296));
  *v8 = a2;
  v8[1] = a3;
  v9 = one-time initialization token for siriPhone;

  if (v9 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Logger.siriPhone);

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v20[0] = v14;
    *v13 = 136315138;
    v15 = *v8;
    v16 = v8[1];

    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, v20);

    *(v13 + 4) = v17;
    _os_log_impl(&dword_0, v11, v12, "%s.initialize", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v14);
  }

  else
  {
  }

  outlined init with copy of SignalProviding(a4, v20);
  v18 = a5(v20);

  __swift_destroy_boxed_opaque_existential_1(a4);
  return v18;
}

uint64_t specialized CallingFlowAbstraction.deinit()
{
  return specialized CallingFlowAbstraction.deinit(specialized PhoneFlow.deinit);
}

{
  return specialized CallingFlowAbstraction.deinit(specialized PhoneFlow.deinit);
}

uint64_t specialized CallingFlowAbstraction.deinit(uint64_t (*a1)(void))
{
  v1 = a1();

  return v1;
}

uint64_t StartAudioCallFlow.init(app:sharedGlobals:)(uint64_t a1, void *a2)
{
  v5 = (v2 + direct field offset for StartAudioCallFlow.flowName);
  *v5 = 0xD000000000000012;
  v5[1] = 0x8000000000449C90;
  outlined init with copy of SignalProviding(a2, v8);
  v6 = specialized CallingFlowAbstraction.init(app:flowName:sharedGlobals:)(a1, 0xD000000000000012, 0x8000000000449C90, v8, specialized PhoneFlow.init(sharedGlobals:));
  __swift_destroy_boxed_opaque_existential_1(a2);
  return v6;
}

uint64_t StartAudioCallFlow.makeRCHFlow(input:intent:app:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v41 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow08RCHChildC9ProducersVySo22INStartAudioCallIntentCSo0fghI8ResponseCGMd, &_s11SiriKitFlow08RCHChildC9ProducersVySo22INStartAudioCallIntentCSo0fghI8ResponseCGMR);
  OUTLINED_FUNCTION_7();
  v38 = v6;
  v39 = v5;
  __chkstk_darwin(v5);
  v40 = v33 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow08RCHChildC14ProducersAsyncVySo22INStartAudioCallIntentCSo0ghiJ8ResponseCGMd, &_s11SiriKitFlow08RCHChildC14ProducersAsyncVySo22INStartAudioCallIntentCSo0ghiJ8ResponseCGMR);
  OUTLINED_FUNCTION_7();
  v35 = v9;
  v36 = v8;
  __chkstk_darwin(v8);
  v37 = v33 - v10;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0abC7FactoryO0A16RCHFlowProducersVy_So012INStartAudioB6IntentCSo0ijbK8ResponseCGMd, &_s27PhoneCallFlowDelegatePlugin0abC7FactoryO0A16RCHFlowProducersVy_So012INStartAudioB6IntentCSo0ijbK8ResponseCGMR);
  __chkstk_darwin(v34);
  v12 = v33 - v11;
  v13 = type metadata accessor for CATOption();
  v14 = __chkstk_darwin(v13 - 8);
  v15 = *(*v3 + 152);
  v15(&v46, v14);
  v16 = one-time initialization token for instance;

  if (v16 != -1)
  {
    swift_once();
  }

  v17 = static BiomeEventSender.instance;
  type metadata accessor for StartAudioCallRCHFlowDelegate(0);
  v18 = swift_allocObject();

  v33[1] = specialized StartAudioCallRCHFlowDelegate.init(sharedGlobals:appResolved:biomeEventSender:)(&v46, a3, v17, v18);
  (v15)(&v46);
  type metadata accessor for PhoneCallDisplayTextCATsSimple(0);
  static CATOption.defaultMode.getter();
  v19 = CATWrapperSimple.__allocating_init(options:globals:)();
  type metadata accessor for StartCallCATsSimple(0);
  static CATOption.defaultMode.getter();
  v20 = CATWrapperSimple.__allocating_init(options:globals:)();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin28CallingIntentRCHFlowStrategyCySo012INStartAudiobG0CSo0jkbG8ResponseCGMd, &_s27PhoneCallFlowDelegatePlugin28CallingIntentRCHFlowStrategyCySo012INStartAudiobG0CSo0jkbG8ResponseCGMR);
  swift_allocObject();
  v22 = specialized CallingIntentRCHFlowStrategy.init(sharedGlobals:appResolved:phoneCallDisplayTextCATsSimple:startCallCATsSimple:)(&v46, a3, v19, v20);
  _s27PhoneCallFlowDelegatePlugin0abC7FactoryO015getGenericStartB9Producers8delegate3appAC0a7RCHFlowJ0Vy_10IntentTypeQz0n8ResponseO0QzGx_17SiriAppResolution0R0CtAA07CallingnmD0RzlFZAA0i5AudiobmD0C_Tt2g5();
  (v15)(&v46);
  v23 = v47;
  v24 = v48;
  __swift_project_boxed_opaque_existential_1(&v46, v47);
  (*(v24 + 104))(v43, v23, v24);
  v26 = v44;
  v25 = v45;
  __swift_project_boxed_opaque_existential_1(v43, v44);
  v42 = v22;
  (*(v35 + 16))(v37, &v12[*(v34 + 36)], v36);
  (*(v38 + 16))(v40, v12, v39);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow08RCHChildC7FactoryCySo22INStartAudioCallIntentCSo0fghI8ResponseCGMd, &_s11SiriKitFlow08RCHChildC7FactoryCySo22INStartAudioCallIntentCSo0fghI8ResponseCGMR);
  swift_allocObject();
  v27 = RCHChildFlowFactory.init(producers:withFallbacks:)();
  v28 = a3;
  v29 = *(v25 + 8);
  v30 = lazy protocol witness table accessor for type CallingIntentRCHFlowStrategy<INStartAudioCallIntent, INStartAudioCallIntentResponse> and conformance CallingIntentRCHFlowStrategy<A, B>();
  v31 = v29(&v42, v27, v28, v41, v21, v30, v26, v25);

  outlined destroy of PhoneCallFlowFactory.PhoneRCHFlowProducers<INStartAudioCallIntent, INStartAudioCallIntentResponse>(v12);

  __swift_destroy_boxed_opaque_existential_1(v43);
  __swift_destroy_boxed_opaque_existential_1(&v46);
  return v31;
}

uint64_t StartAudioCallFlow.deinit()
{
  v0 = OUTLINED_FUNCTION_0_115();

  return v0;
}

uint64_t StartAudioCallFlow.__deallocating_deinit()
{
  OUTLINED_FUNCTION_0_115();

  return swift_deallocClassInstance();
}

unint64_t lazy protocol witness table accessor for type CallingIntentRCHFlowStrategy<INStartAudioCallIntent, INStartAudioCallIntentResponse> and conformance CallingIntentRCHFlowStrategy<A, B>()
{
  result = lazy protocol witness table cache variable for type CallingIntentRCHFlowStrategy<INStartAudioCallIntent, INStartAudioCallIntentResponse> and conformance CallingIntentRCHFlowStrategy<A, B>;
  if (!lazy protocol witness table cache variable for type CallingIntentRCHFlowStrategy<INStartAudioCallIntent, INStartAudioCallIntentResponse> and conformance CallingIntentRCHFlowStrategy<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s27PhoneCallFlowDelegatePlugin28CallingIntentRCHFlowStrategyCySo012INStartAudiobG0CSo0jkbG8ResponseCGMd, &_s27PhoneCallFlowDelegatePlugin28CallingIntentRCHFlowStrategyCySo012INStartAudiobG0CSo0jkbG8ResponseCGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CallingIntentRCHFlowStrategy<INStartAudioCallIntent, INStartAudioCallIntentResponse> and conformance CallingIntentRCHFlowStrategy<A, B>);
  }

  return result;
}

uint64_t outlined destroy of PhoneCallFlowFactory.PhoneRCHFlowProducers<INStartAudioCallIntent, INStartAudioCallIntentResponse>(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0abC7FactoryO0A16RCHFlowProducersVy_So012INStartAudioB6IntentCSo0ijbK8ResponseCGMd, &_s27PhoneCallFlowDelegatePlugin0abC7FactoryO0A16RCHFlowProducersVy_So012INStartAudioB6IntentCSo0ijbK8ResponseCGMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for StartAudioCallFlow(uint64_t a1)
{
  result = type metadata singleton initialization cache for StartAudioCallFlow;
  if (!type metadata singleton initialization cache for StartAudioCallFlow)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id static StartAudioCallIntentConversion.convertToIntent(phoneCallNLIntent:app:sharedGlobals:previousIntent:previousIntentResponse:groupResolver:)(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, void *a6)
{
  v11 = a6[3];
  v12 = a6[4];
  v13 = __swift_project_boxed_opaque_existential_1(a6, v11);

  return specialized static StartAudioCallIntentConversion.convertToIntent(phoneCallNLIntent:app:sharedGlobals:previousIntent:previousIntentResponse:groupResolver:)(a1, a2, a3, a4, a5, v13, v11, v12);
}

id specialized static StartAudioCallIntentConversion.convertToIntent(phoneCallNLIntent:app:sharedGlobals:previousIntent:previousIntentResponse:groupResolver:)(void *a1, uint64_t a2, void *a3, id a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v105 = a8;
  v110 = a2;
  v108 = type metadata accessor for Locale();
  v107 = *(v108 - 8);
  __chkstk_darwin(v108);
  v106 = &v96 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo21INCallDestinationTypeVGMd, &_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo21INCallDestinationTypeVGMR);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v111 = &v96 - v15;
  v16 = *(a7 - 8);
  v18 = __chkstk_darwin(v17);
  v20 = *(v16 + 2);
  v112 = &v96 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20(v18);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (PhoneCallNLIntent.hasAnyConfirmation()())
  {
    if (one-time initialization token for siriPhone != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    __swift_project_value_buffer(v21, static Logger.siriPhone);
    v22 = a4;
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v111 = v16;
      v26 = a7;
      v27 = v25;
      v28 = swift_slowAlloc();
      v117[0] = v28;
      *v27 = 136315138;
      v114[0] = a4;
      v29 = v22;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo22INStartAudioCallIntentCSgMd, &_sSo22INStartAudioCallIntentCSgMR);
      v30 = String.init<A>(describing:)();
      v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v31, v117);

      *(v27 + 4) = v32;
      _os_log_impl(&dword_0, v23, v24, "#StartAudioCallIntentConversion is confirmation, returning previousIntent: %s.", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v28);

      a7 = v26;
      v16 = v111;
    }

    v33 = v22;
  }

  else
  {
    if (one-time initialization token for siriPhone != -1)
    {
      swift_once();
    }

    v104 = v14;
    v34 = type metadata accessor for Logger();
    v109 = __swift_project_value_buffer(v34, static Logger.siriPhone);
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_0, v35, v36, "#StartAudioCallIntentConversion called with NLv4IntentOnly", v37, 2u);
    }

    v38 = a3[3];
    v39 = a3[4];
    __swift_project_boxed_opaque_existential_1(a3, v38);
    (*(v39 + 8))(v117, v38, v39);
    v40 = a3[3];
    v41 = a3[4];
    __swift_project_boxed_opaque_existential_1(a3, v40);
    v42 = (*(v41 + 72))(v40, v41);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMR);
    type metadata accessor for INCallDestinationType(0);
    Transformer.init(transform:)();
    v43 = Transformer.transform.getter();
    v43(v114, a1);
    v101 = v42;
    v102 = v13;

    v44 = v114[0];
    v45 = a1[3];
    v46 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v45);
    v47 = (*(v46 + 128))(v45, v46);
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);

    HIDWORD(v99) = PhoneCallNLIntent.isEmergencyContactCall()();
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v48 = PhoneCallNLIntent.getPersons()();
    v49 = objc_allocWithZone(INStartAudioCallIntent);
    v50 = @nonobjc INStartAudioCallIntent.init(destinationType:contacts:)(v44, v48);
    v51 = _s27PhoneCallFlowDelegatePlugin20NLv4IntentConversionPAAE03setG8Metadata3for13sharedGlobals3app08previousG00G4TypeQzAJ_AA06SharedM9Providing_p17SiriAppResolution0T0CAJSgtFZAA010StartAudiobgH0O_Tt3g5(v50, a3, v110, a4);

    outlined init with copy of SignalProviding(a1, v114);
    v52 = v51;

    v53 = Logger.logObject.getter();
    v54 = static os_log_type_t.debug.getter();

    v55 = os_log_type_enabled(v53, v54);
    v103 = a7;
    v100 = v47;
    if (v55)
    {
      v56 = swift_slowAlloc();
      HIDWORD(v97) = v54;
      v57 = v56;
      v58 = swift_slowAlloc();
      v98 = swift_slowAlloc();
      v113[0] = v98;
      *v57 = 138413058;
      *(v57 + 4) = v52;
      *v58 = v52;
      *(v57 + 12) = 2080;
      v59 = v52;
      v96 = v53;
      v60 = dispatch thunk of App.debugDescription.getter();
      v62 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v60, v61, v113);

      *(v57 + 14) = v62;
      *(v57 + 22) = 2080;
      v63 = v115;
      v64 = v116;
      __swift_project_boxed_opaque_existential_1(v114, v115);
      (*(v64 + 24))(v63, v64);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin04SiriA7Contact_pMd, &_s27PhoneCallFlowDelegatePlugin04SiriA7Contact_pMR);
      v65 = Array.description.getter();
      v67 = v66;

      __swift_destroy_boxed_opaque_existential_1(v114);
      v68 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v65, v67, v113);

      *(v57 + 24) = v68;
      *(v57 + 32) = 2080;
      type metadata accessor for ContactQuery();
      v69 = Array.debugDescription.getter();
      v71 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v69, v70, v113);

      *(v57 + 34) = v71;
      v72 = v96;
      _os_log_impl(&dword_0, v96, BYTE4(v97), "#StartAudioCallIntentConversion starts with intent:%@ resolvedApp:%s phoneCallNLIntent=%s contactQueries=%s", v57, 0x2Au);
      outlined destroy of NSObject?(v58);

      swift_arrayDestroy();
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1(v114);
    }

    v73 = a3[3];
    v74 = a3[4];
    __swift_project_boxed_opaque_existential_1(a3, v73);
    v75 = *(v74 + 56);
    a4 = v52;
    v76 = v75(v73, v74);
    LOBYTE(v73) = (*(*v76 + 232))(v76);

    if (v73)
    {
      static SiriKitEventSender.current.getter();
      type metadata accessor for EmergencyContactResolution();
      swift_allocObject();
      a7 = v103;
      _s27PhoneCallFlowDelegatePlugin33ReferenceContactResolutionWrapperO21resolveUpdateSKIntent13siriKitIntent14contactQueries012hasEmergencyG03app02nlO013sharedGlobals18multicardinalIndex0mN11EventSender09emergencygH00P13GroupResolveryAA013NCRResolvableO0_p_Say13SiriInference0G5QueryVGSb07SiriAppH03AppCAA0aB8NLIntent_pAA06SharedW9Providing_pSiSg04SirinC004SirinZ7Sending_pAA0sgH0CAA0G14GroupResolving_ptFZTf4ennnnnnnnnn_nSo012INStartAudiobO0C_Tt9g5Tf4nnnnnnnnne_n();

      __swift_destroy_boxed_opaque_existential_1(v114);
    }

    else
    {
      v77 = a3[3];
      v78 = a3[4];
      __swift_project_boxed_opaque_existential_1(a3, v77);
      (*(v78 + 8))(v114, v77, v78);
      __swift_project_boxed_opaque_existential_1(v114, v115);
      v79 = v106;
      dispatch thunk of DeviceState.siriLocale.getter();
      static SiriKitEventSender.current.getter();
      type metadata accessor for EmergencyContactResolution();
      v80 = swift_allocObject();
      v81 = a1[3];
      v82 = a1[4];
      v83 = __swift_project_boxed_opaque_existential_1(a1, v81);
      LOBYTE(v94) = 1;
      _s27PhoneCallFlowDelegatePlugin17ContactResolutionC19updateSiriKitIntent04sirijK014contactQueries012hasEmergencyF03app6locale02nlK013sharedGlobals18multicardinalIndex0lJ11EventSender09emergencyfG0yAA013NCRResolvableK0_p_Say0I9Inference0F5QueryVGSb0i3AppG03AppCSg10Foundation6LocaleVAA0aB8NLIntent_pAA06SharedU9Providing_pSiSg0ijC00ijX7Sending_pAA0pfG0CtFZTf4ennnnnnnnnn_nSo012INStartAudiobK0C_Tt9g5Tf4nnnnnennnn_n(a4, v100, BYTE4(v99) & 1, v110, v79, v83, a3, 0, v94, v113, v80, v81, v82, v95, v96, v97, v98, v99, v100, v101, v102);

      __swift_destroy_boxed_opaque_existential_1(v113);
      (*(v107 + 8))(v79, v108);
      __swift_destroy_boxed_opaque_existential_1(v114);
      a7 = v103;
    }

    v84 = v102;
    v85 = outlined bridged method (pb) of @objc INStartAudioCallIntent.contacts.getter(a4);
    v86 = one-time initialization token for instance;
    v87 = a4;
    if (v86 != -1)
    {
      swift_once();
    }

    _s27PhoneCallFlowDelegatePlugin34AppSelectionSignalsGatheringHelperO23triggerSignalCollection13sharedGlobals8contacts05phoneB8NLIntent05smartfG018eligibleAppsFinder8skIntentyAA06SharedO9Providing_p_SaySo8INPersonCGSgAA0abR0_pAA05SmartfG14FeatureManagerCSgAA012PrefetchableF7Finding_pAA07CallingX0_pSgtFZTf4nnnnenn_nAA08EligiblefV0C_Tt5g5(a3, v85, a1, 0, static EligibleAppFinder.instance);

    v88 = Logger.logObject.getter();
    v89 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v88, v89))
    {
      v90 = swift_slowAlloc();
      v91 = swift_slowAlloc();
      *v90 = 138412290;
      *(v90 + 4) = v87;
      *v91 = a4;
      v92 = v87;
      _os_log_impl(&dword_0, v88, v89, "#StartAudioCallIntentConversion ends with %@", v90, 0xCu);
      outlined destroy of NSObject?(v91);
    }

    (*(v104 + 8))(v111, v84);
    __swift_destroy_boxed_opaque_existential_1(v117);
  }

  (*(v16 + 1))(v112, a7);
  return a4;
}

uint64_t specialized PhoneCallNLIntent.hasCallConfirmation(_:)(char a1)
{
  if (one-time initialization token for confirmation != -1)
  {
    swift_once();
  }

  type metadata accessor for PhoneCallNLv3Intent(0);
  OUTLINED_FUNCTION_10_72();
  lazy protocol witness table accessor for type StartAudioCallRCHFlowDelegate and conformance StartAudioCallRCHFlowDelegate(v2, v3, &protocol conformance descriptor for PhoneCallNLv3Intent);
  IntentNodeTraversable.value<A>(forNode:)();
  if (v11 == 5)
  {
    v4 = 0;
  }

  else
  {
    v5 = PhoneCallConfirmation.rawValue.getter(v11);
    v7 = v6;
    if (v5 == PhoneCallConfirmation.rawValue.getter(a1) && v7 == v8)
    {
      v4 = 1;
    }

    else
    {
      v4 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  return v4 & 1;
}

uint64_t specialized CallingIntentRCHFlowDelegate.buildDisambiguationList(app:intent:parameterName:intentResolutionResult:templatingService:_:)(int a1, void *a2, int a3, uint64_t a4, void *a5, uint64_t a6, void (*a7)(void), uint64_t a8)
{
  return specialized CallingIntentRCHFlowDelegate.buildDisambiguationList(app:intent:parameterName:intentResolutionResult:templatingService:_:)(a1, a2, a3, a4, a5, a6, a7, a8, outlined bridged method (pb) of @objc INStartCallIntent.contacts.getter, &_s27PhoneCallFlowDelegatePlugin0aB24BaseCatTemplatingServiceCySo07INStartB6IntentCSo0jbK8ResponseCGMd, &_s27PhoneCallFlowDelegatePlugin0aB24BaseCatTemplatingServiceCySo07INStartB6IntentCSo0jbK8ResponseCGMR, &direct field offset for StartCallRCHFlowDelegate.sharedGlobals);
}

{
  return specialized CallingIntentRCHFlowDelegate.buildDisambiguationList(app:intent:parameterName:intentResolutionResult:templatingService:_:)(a1, a2, a3, a4, a5, a6, a7, a8, outlined bridged method (pb) of @objc INStartVideoCallIntent.contacts.getter, &_s27PhoneCallFlowDelegatePlugin0aB24BaseCatTemplatingServiceCySo012INStartVideoB6IntentCSo0jkbL8ResponseCGMd, &_s27PhoneCallFlowDelegatePlugin0aB24BaseCatTemplatingServiceCySo012INStartVideoB6IntentCSo0jkbL8ResponseCGMR, &direct field offset for StartVideoCallRCHFlowDelegate.sharedGlobals);
}

uint64_t specialized CallingIntentRCHFlowDelegate.buildDisambiguationList(app:intent:parameterName:intentResolutionResult:templatingService:_:)(int a1, void *a2, int a3, uint64_t a4, id a5, uint64_t a6, void (*a7)(void), uint64_t a8, uint64_t (*a9)(void *), uint64_t *a10, uint64_t *a11, uint64_t a12)
{
  v16 = [a5 disambiguationItems];
  v17 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v18 = *(v17 + 16);

  v19 = &selRef_alternatives;
  if (v18)
  {
    v19 = &selRef_disambiguationItems;
  }

  v20 = [a5 *v19];
  v21 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v22._countAndFlagsBits = OUTLINED_FUNCTION_20_0();
  if ((PhoneCallSlotNames.init(rawValue:)(v22).value & 0xFE) == 4)
  {
    if (one-time initialization token for siriPhone != -1)
    {
      goto LABEL_41;
    }

    while (1)
    {
      v23 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_9_0(v23, static Logger.siriPhone);
      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.default.getter();
      if (OUTLINED_FUNCTION_10_0(v25))
      {
        v26 = OUTLINED_FUNCTION_65_0();
        OUTLINED_FUNCTION_11_1(v26);
        OUTLINED_FUNCTION_18_30();
        _os_log_impl(v27, v28, v29, v30, v31, 2u);
        OUTLINED_FUNCTION_12_3();
      }

      v32 = specialized _arrayConditionalCast<A, B>(_:)(v21);

      v21 = (v32 ? v32 : _swiftEmptyArrayStorage);
      v33 = a9(a2);
      if (!v33)
      {
        break;
      }

      v34 = v33;
      if (!specialized Array.count.getter(v33))
      {

        break;
      }

      v35 = (v34 & 0xC000000000000001);
      specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v34 & 0xC000000000000001) == 0, v34);
      if ((v34 & 0xC000000000000001) != 0)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v36 = *(v34 + 32);
      }

      OUTLINED_FUNCTION_40_0();

      v37 = [v34 & 0xC000000000000001 relationship];

      if (!v37)
      {
        break;
      }

      v38 = specialized Array.count.getter(v21);
      v39 = 0;
      a9 = (v21 & 0xFFFFFFFFFFFFFF8);
      while (1)
      {
        if (v38 == v39)
        {

          goto LABEL_32;
        }

        if ((v21 & 0xC000000000000001) != 0)
        {
          v40 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v39 >= *(&dword_10 + (v21 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_40;
          }

          v40 = *(v21 + 8 * v39 + 32);
        }

        a2 = v40;
        if (__OFADD__(v39, 1))
        {
          break;
        }

        [v40 setRelationship:v37];

        ++v39;
      }

      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      OUTLINED_FUNCTION_0_6();
      swift_once();
    }

LABEL_32:
    v62 = __swift_instantiateConcreteTypeFromMangledNameV2(a10, a11);
    v63 = &protocol witness table for PhoneCallBaseCatTemplatingService<A, B>;
    *&v61 = a6;

    v51 = App.appIdentifier.getter();
    if (v52)
    {
      v53 = v51;
    }

    else
    {
      v53 = 0;
    }

    if (v52)
    {
      v54 = v52;
    }

    else
    {
      v54 = 0xE000000000000000;
    }

    OUTLINED_FUNCTION_13_56();
    v55 = OUTLINED_FUNCTION_1_1();
    v56(v55);
    OUTLINED_FUNCTION_13_56();
    v57 = OUTLINED_FUNCTION_1_1();
    v58(v57);
    v64[0] = v21;
    v64[1] = v21;
    outlined init with take of SPHConversation(&v61, &v68);
    v65 = 1;
    v66 = v53;
    v67 = v54;

    specialized DisambiguationItemFactory.buildDisambiguationItemList(_:)(a7, a8);
    return outlined destroy of PhoneContactDisambiguationItemFactory(v64);
  }

  else
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_0_6();
      swift_once();
    }

    v41 = type metadata accessor for Logger();
    __swift_project_value_buffer(v41, static Logger.siriPhone);
    OUTLINED_FUNCTION_40_0();

    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = OUTLINED_FUNCTION_42();
      v45 = OUTLINED_FUNCTION_36();
      v64[0] = v45;
      *v44 = 136315138;
      v46 = OUTLINED_FUNCTION_20_0();
      *(v44 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46, v47, v48);
      _os_log_impl(&dword_0, v42, v43, "#CallingIntentRCHFlowDelegate Disambiguating %s, no disambiguation snippet", v44, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v45);
      OUTLINED_FUNCTION_26_0(v45);
      OUTLINED_FUNCTION_26_0(v44);
    }

    v49 = type metadata accessor for SiriKitDisambiguationList();
    OUTLINED_FUNCTION_41_1(v49);
    SiriKitDisambiguationList.init(rawItems:disambiguationItems:shouldReadItemsInVox:requestUnlockForEmptyOrDuplicateItems:)();
    a7();
  }
}

uint64_t specialized PhoneCallNLIntent.isDisplayNameEmergencyContact()()
{
  type metadata accessor for PhoneCallNLv3Intent(0);
  lazy protocol witness table accessor for type StartAudioCallRCHFlowDelegate and conformance StartAudioCallRCHFlowDelegate(&lazy protocol witness table cache variable for type PhoneCallNLv3Intent and conformance PhoneCallNLv3Intent, type metadata accessor for PhoneCallNLv3Intent, &protocol conformance descriptor for PhoneCallNLv3Intent);
  v1 = IntentNodeTraversable.intentNodes(forOntologyNode:)();
  v15 = v0;
  v2 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay12SiriOntology21NonTerminalIntentNodeVG_27PhoneCallFlowDelegatePlugin0dJ7Contact_ps5NeverOTg5(closure #1 in PhoneCallNLv3Intent.contacts.getterpartial apply, &v14, v1);

  v4 = *(v2 + 16);
  if (v4)
  {
    v5 = 0;
    v6 = v2 + 32;
    while (v5 < *(v2 + 16))
    {
      outlined init with copy of SignalProviding(v6, v16);
      v7 = v17;
      v8 = v18;
      __swift_project_boxed_opaque_existential_1(v16, v17);
      v9 = (*(v8 + 408))(v7, v8);
      if (v10)
      {
        if (v9 == 0xD000000000000011 && v10 == 0x800000000045E840)
        {

          __swift_destroy_boxed_opaque_existential_1(v16);
LABEL_15:
          v13 = 1;
          goto LABEL_16;
        }

        v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

        result = __swift_destroy_boxed_opaque_existential_1(v16);
        if (v12)
        {
          goto LABEL_15;
        }
      }

      else
      {
        result = __swift_destroy_boxed_opaque_existential_1(v16);
      }

      ++v5;
      v6 += 40;
      if (v4 == v5)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_13:
    v13 = 0;
LABEL_16:

    return v13;
  }

  return result;
}

void specialized IntentFromParseFlowStrategyHelper.makeIntentFromParse(parse:previousIntent:)(uint64_t a1, uint64_t a2)
{
  specialized IntentFromParseFlowStrategyHelper.makeIntentFromParse(parse:previousIntent:)();
}

{
  specialized IntentFromParseFlowStrategyHelper.makeIntentFromParse(parse:previousIntent:)();
}

void specialized IntentFromParseFlowStrategyHelper.makeIntentFromParse(parse:previousIntent:)()
{
  OUTLINED_FUNCTION_66();
  v155 = v1;
  v159 = v2;
  v161 = v3;
  v164 = v0;
  v166 = v4;
  v156 = type metadata accessor for Locale();
  OUTLINED_FUNCTION_7();
  v154 = v5;
  __chkstk_darwin(v6);
  OUTLINED_FUNCTION_4();
  v153 = v8 - v7;
  v9 = OUTLINED_FUNCTION_15_0();
  v10 = type metadata accessor for PhoneCallNLv3Intent(v9);
  v11 = OUTLINED_FUNCTION_21(v10);
  __chkstk_darwin(v11);
  OUTLINED_FUNCTION_4();
  v160 = v13 - v12;
  OUTLINED_FUNCTION_15_0();
  v14 = type metadata accessor for NLIntent();
  OUTLINED_FUNCTION_7();
  v163 = v15;
  __chkstk_darwin(v16);
  OUTLINED_FUNCTION_12_5();
  v158 = v17 - v18;
  OUTLINED_FUNCTION_4_0();
  __chkstk_darwin(v19);
  v21 = &v146 - v20;
  __chkstk_darwin(v22);
  v162 = &v146 - v23;
  OUTLINED_FUNCTION_15_0();
  v24 = type metadata accessor for Parse();
  OUTLINED_FUNCTION_7();
  v26 = v25;
  __chkstk_darwin(v27);
  OUTLINED_FUNCTION_12_5();
  v152 = v28 - v29;
  OUTLINED_FUNCTION_4_0();
  __chkstk_darwin(v30);
  v157 = &v146 - v31;
  OUTLINED_FUNCTION_4_0();
  __chkstk_darwin(v32);
  v34 = &v146 - v33;
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v35 = type metadata accessor for Logger();
  v165 = __swift_project_value_buffer(v35, static Logger.siriPhone);
  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_16_4(v37))
  {
    v38 = OUTLINED_FUNCTION_65_0();
    OUTLINED_FUNCTION_11_1(v38);
    _os_log_impl(&dword_0, v36, v37, "#IntentFromParseFlowStrategyHelper makeIntentFromParse", v14, 2u);
    OUTLINED_FUNCTION_26_0(v14);
  }

  v39 = *(v26 + 16);
  v40 = v166;
  v39(v34, v166, v24);
  v41 = OUTLINED_FUNCTION_29_31();
  v43 = v42(v41);
  if (v43 != enum case for Parse.NLv3IntentOnly(_:))
  {
    if (v43 == enum case for Parse.NLv3IntentPlusServerConversion(_:))
    {
      v148 = v39;
      v50 = OUTLINED_FUNCTION_29_31();
      v51(v50);
      v52 = *&v34[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology8NLIntentV_0A7KitFlow5ParseO16ServerConversionCtMd, &_s12SiriOntology8NLIntentV_0A7KitFlow5ParseO16ServerConversionCtMR) + 48)];
      v54 = v162;
      v53 = v163;
      (*(v163 + 32))(v162, v34, v14);
      v55 = *(v53 + 16);
      v150 = (v53 + 16);
      v149 = v55;
      v55(v21, v54, v14);
      PhoneCallNLv3Intent.init(intent:)(v21, v160);

      v56 = Logger.logObject.getter();
      v57 = static os_log_type_t.debug.getter();

      v58 = os_log_type_enabled(v56, v57);
      v151 = v14;
      if (v58)
      {
        v59 = OUTLINED_FUNCTION_42();
        v60 = OUTLINED_FUNCTION_36();
        v169[0] = v60;
        *v59 = 136315138;
        v61 = Parse.ServerConversion.siriKitIntent.getter();
        v62 = [v61 _metadata];

        v63 = [v62 userUtterance];
        *&v167 = v63;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo11_INPBStringCSgMd, &_sSo11_INPBStringCSgMR);
        v64 = String.init<A>(describing:)();
        v66 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v64, v65, v169);

        *(v59 + 4) = v66;
        _os_log_impl(&dword_0, v56, v57, "User utterance: %s", v59, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v60);
        OUTLINED_FUNCTION_26_0(v60);
        OUTLINED_FUNCTION_26_0(v59);
      }

      v67 = Logger.logObject.getter();
      v68 = static os_log_type_t.debug.getter();

      v69 = os_log_type_enabled(v67, v68);
      v161 = v52;
      if (v69)
      {
        v70 = OUTLINED_FUNCTION_42();
        v147 = OUTLINED_FUNCTION_36();
        v169[0] = v147;
        *v70 = 136315138;
        v71 = Parse.ServerConversion.siriKitIntent.getter();
        v72 = [v71 description];
        v73 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v75 = v74;

        v76 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v73, v75, v169);

        *(v70 + 4) = v76;
        _os_log_impl(&dword_0, v67, v68, "SKIntent from server: %s", v70, 0xCu);
        v77 = v147;
        __swift_destroy_boxed_opaque_existential_1(v147);
        OUTLINED_FUNCTION_26_0(v77);
        OUTLINED_FUNCTION_26_0(v70);
      }

      v78 = v151;
      v79 = v158;
      v149(v158, v162, v151);
      v80 = Logger.logObject.getter();
      v81 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v80, v81))
      {
        v82 = OUTLINED_FUNCTION_42();
        v150 = OUTLINED_FUNCTION_36();
        v169[0] = v150;
        *v82 = 136315138;
        lazy protocol witness table accessor for type StartAudioCallRCHFlowDelegate and conformance StartAudioCallRCHFlowDelegate(&lazy protocol witness table cache variable for type NLIntent and conformance NLIntent, &type metadata accessor for NLIntent, &protocol conformance descriptor for NLIntent);
        v83 = dispatch thunk of CustomStringConvertible.description.getter();
        v84 = v78;
        v86 = v85;
        v87 = *(v163 + 8);
        v87(v79, v84);
        v88 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v83, v86, v169);

        *(v82 + 4) = v88;
        _os_log_impl(&dword_0, v80, v81, "NLIntent from server: %s", v82, 0xCu);
        v89 = v150;
        __swift_destroy_boxed_opaque_existential_1(v150);
        OUTLINED_FUNCTION_26_0(v89);
        OUTLINED_FUNCTION_26_0(v82);
      }

      else
      {

        v87 = *(v163 + 8);
        v87(v79, v78);
      }

      v40 = v166;
      v93 = Parse.ServerConversion.siriKitIntent.getter();
      v14 = v159();

      if (v14)
      {
        v94 = v14;
        v95 = v164;
        v96 = IntentFromParseFlowStrategyHelper.inferApp(from:)();
        v97 = v95[7];
        __swift_project_boxed_opaque_existential_1(v95 + 3, v95[6]);
        v98 = OUTLINED_FUNCTION_11_0();
        v99(v98, v97);
        __swift_project_boxed_opaque_existential_1(v169, v169[3]);
        v100 = v153;
        OUTLINED_FUNCTION_11_0();
        dispatch thunk of DeviceState.siriLocale.getter();
        v101 = v160;
        v155(v94, v160, v96, v100, v95 + 3, 0, 1);

        (*(v154 + 8))(v100, v156);
        __swift_destroy_boxed_opaque_existential_1(v169);
        v102 = v94;
        v103 = Logger.logObject.getter();
        v104 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v103, v104))
        {
          v105 = OUTLINED_FUNCTION_42();
          v106 = OUTLINED_FUNCTION_36();
          v169[0] = v106;
          *v105 = 136315138;
          v107 = v102;
          v108 = [(uint8_t *)v107 description];
          v109 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v166 = v87;
          v111 = v110;

          v112 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v109, v111, v169);

          *(v105 + 4) = v112;
          _os_log_impl(&dword_0, v103, v104, "SKIntent after NCR replacement: %s", v105, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v106);
          OUTLINED_FUNCTION_26_0(v106);
          OUTLINED_FUNCTION_52();

          OUTLINED_FUNCTION_1_122();
          _s27PhoneCallFlowDelegatePlugin18CommonDirectActionOWOhTm_6(v160, v113);
          v114 = OUTLINED_FUNCTION_16_55();
          (v166)(v114);
        }

        else
        {

          OUTLINED_FUNCTION_1_122();
          _s27PhoneCallFlowDelegatePlugin18CommonDirectActionOWOhTm_6(v101, v131);
          v132 = OUTLINED_FUNCTION_16_55();
          (v87)(v132);
        }

        goto LABEL_29;
      }

      OUTLINED_FUNCTION_1_122();
      _s27PhoneCallFlowDelegatePlugin18CommonDirectActionOWOhTm_6(v160, v115);
      v116 = OUTLINED_FUNCTION_16_55();
      (v87)(v116);
      v39 = v148;
    }

    else
    {
      if (v43 == enum case for Parse.NLv4IntentOnly(_:) || v43 == enum case for Parse.uso(_:))
      {
        goto LABEL_6;
      }

      v91 = OUTLINED_FUNCTION_29_31();
      v92(v91);
    }

    v117 = v157;
    v39(v157, v40, v24);
    v118 = Logger.logObject.getter();
    v119 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_10_0(v119))
    {
      OUTLINED_FUNCTION_42();
      v120 = OUTLINED_FUNCTION_32_0();
      v169[0] = v120;
      *v14 = 136315138;
      v121 = v152;
      v39(v152, v117, v24);
      v122 = String.init(describing:)(v121);
      v124 = v123;
      (*(v26 + 8))(v117, v24);
      v125 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v122, v124, v169);

      *(v14 + 4) = v125;
      OUTLINED_FUNCTION_18_30();
      _os_log_impl(v126, v127, v128, v129, v130, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v120);
      OUTLINED_FUNCTION_26_0(v120);
      OUTLINED_FUNCTION_12_3();
    }

    else
    {

      (*(v26 + 8))(v117, v24);
    }

    goto LABEL_29;
  }

LABEL_6:
  v44 = OUTLINED_FUNCTION_29_31();
  v45(v44);
  v46 = v164[7];
  __swift_project_boxed_opaque_existential_1(v164 + 3, v164[6]);
  v47 = OUTLINED_FUNCTION_40_0();
  v49 = v48(v47, v46);
  (*(*v49 + 192))(&v167, v40);

  if (v168)
  {
    outlined init with take of SPHConversation(&v167, v169);
    specialized IntentFromParseFlowStrategyHelper.makeIntentFromParseSiriX(parse:nlIntent:previousIntent:)();
    __swift_destroy_boxed_opaque_existential_1(v169);
LABEL_29:
    OUTLINED_FUNCTION_65();
    return;
  }

  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(&v167, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMR);
  v133 = Logger.logObject.getter();
  v134 = static os_log_type_t.error.getter();
  if (OUTLINED_FUNCTION_10_0(v134))
  {
    OUTLINED_FUNCTION_42();
    v135 = OUTLINED_FUNCTION_32_0();
    v169[0] = v135;
    *v46 = 136315138;
    *(v46 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000050, 0x800000000045C0D0, v169);
    OUTLINED_FUNCTION_18_30();
    _os_log_impl(v136, v137, v138, v139, v140, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v135);
    OUTLINED_FUNCTION_52();
    OUTLINED_FUNCTION_12_3();
  }

  static SiriKitLifecycle._logCrashToEventBus(_:)();
  OUTLINED_FUNCTION_11_4();
  OUTLINED_FUNCTION_28_28();
  OUTLINED_FUNCTION_34_23(v141, v142, v143, 80, v144, v145);
  __break(1u);
}

void specialized IntentFromParseFlowStrategyHelper.makeIntentFromParseSiriX(parse:nlIntent:previousIntent:)()
{
  OUTLINED_FUNCTION_66();
  v121 = v1;
  v123 = v2;
  v124 = v3;
  v4 = v0;
  v6 = v5;
  v126 = v7;
  type metadata accessor for Locale();
  OUTLINED_FUNCTION_7();
  v119 = v9;
  v120 = v8;
  __chkstk_darwin(v8);
  OUTLINED_FUNCTION_4();
  v118 = v11 - v10;
  OUTLINED_FUNCTION_15_0();
  v12 = type metadata accessor for Parse();
  OUTLINED_FUNCTION_7();
  v14 = v13;
  __chkstk_darwin(v15);
  OUTLINED_FUNCTION_12_5();
  v115 = v16 - v17;
  OUTLINED_FUNCTION_4_0();
  __chkstk_darwin(v18);
  v117 = &v112 - v19;
  OUTLINED_FUNCTION_4_0();
  __chkstk_darwin(v20);
  v22 = &v112 - v21;
  isa = v0[2].isa;
  if (isa)
  {
    v24 = one-time initialization token for siriPhone;

    if (v24 != -1)
    {
      OUTLINED_FUNCTION_0_6();
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_9_0(v25, static Logger.siriPhone);

    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = OUTLINED_FUNCTION_42();
      v125 = v14;
      v29 = v28;
      v30 = OUTLINED_FUNCTION_36();
      v122 = v22;
      v31 = v30;
      v127 = isa;
      v128[0] = v30;
      *v29 = 136315138;
      type metadata accessor for App();
      lazy protocol witness table accessor for type StartAudioCallRCHFlowDelegate and conformance StartAudioCallRCHFlowDelegate(&lazy protocol witness table cache variable for type App and conformance App, &type metadata accessor for App, &protocol conformance descriptor for App);
      v0 = &v127;
      v32 = dispatch thunk of CustomStringConvertible.description.getter();
      getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v33, v128);
      OUTLINED_FUNCTION_40_0();

      *(v29 + 4) = &v127;
      _os_log_impl(&dword_0, v26, v27, "#IntentFromParseFlowStrategyHelper makeIntentFromParse: appResolved: %s", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v31);
      v34 = v31;
      v22 = v122;
      OUTLINED_FUNCTION_26_0(v34);
      v35 = v29;
      v14 = v125;
      OUTLINED_FUNCTION_26_0(v35);
    }

    else
    {
    }
  }

  else
  {
    v36 = &v112 - v21;
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_0_6();
      swift_once();
    }

    v37 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_9_0(v37, static Logger.siriPhone);
    v0 = Logger.logObject.getter();
    v38 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_16_4(v38))
    {
      v39 = OUTLINED_FUNCTION_65_0();
      *v39 = 0;
      _os_log_impl(&dword_0, v0, v38, "#IntentFromParseFlowStrategyHelper makeIntentFromParse: no appResolved", v39, 2u);
      OUTLINED_FUNCTION_26_0(v39);
    }

    v22 = v36;
  }

  v40 = *(v14 + 16);
  v40(v22, v126, v12);
  v41 = (*(v14 + 88))(v22, v12);
  if (v41 == enum case for Parse.NLv3IntentOnly(_:))
  {
    v112 = v40;
    v122 = v22;
    v125 = v14;
    v114 = v12;
    v42 = v4[6].isa;
    v43 = v4[7].isa;
    __swift_project_boxed_opaque_existential_1(&v4[3].isa, v42);
    v44 = *(v43 + 10);

    v113 = v4;
    v45 = v6;
    v46 = v123;
    v44(v128, v42, v43);
    __swift_project_boxed_opaque_existential_1(v45, v45[3]);
    v116 = isa;
    OUTLINED_FUNCTION_38_27();
    v48 = v47();
    outlined destroy of SKTransformer(v128);
    if (v48)
    {
      v126 = v46;
      v49 = v113;
      v50 = v113[6].isa;
      v51 = v113[7].isa;
      __swift_project_boxed_opaque_existential_1(&v113[3].isa, v50);
      v52 = *(v51 + 1);
      v53 = v48;
      v52(v128, v50, v51);
      __swift_project_boxed_opaque_existential_1(v128, v128[3]);
      v54 = v118;
      OUTLINED_FUNCTION_40_0();
      dispatch thunk of DeviceState.siriLocale.getter();
      v55 = v45[3];
      v56 = v45[4];
      v57 = __swift_project_boxed_opaque_existential_1(v45, v55);
      v121(v53, v57, v116, v54, v49 + 3, 0, 1, v55, v56);

      (*(v119 + 8))(v54, v120);
      __swift_destroy_boxed_opaque_existential_1(v128);
      if (one-time initialization token for siriPhone != -1)
      {
        OUTLINED_FUNCTION_0_6();
        swift_once();
      }

      v58 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_9_0(v58, static Logger.siriPhone);
      v59 = v53;
      v60 = Logger.logObject.getter();
      v61 = static os_log_type_t.debug.getter();

      v62 = os_log_type_enabled(v60, v61);
      v63 = v126;
      if (v62)
      {
        v64 = OUTLINED_FUNCTION_42();
        v65 = OUTLINED_FUNCTION_36();
        v128[0] = v65;
        *v64 = 136315138;
        v66 = v59;
        v67 = [v66 description];
        v68 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v70 = v69;

        v71 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v68, v70, v128);

        *(v64 + 4) = v71;
        _os_log_impl(&dword_0, v60, v61, "#IntentFromParseFlowStrategyHelper SKIntent after NCR replacement: %s", v64, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v65);
        OUTLINED_FUNCTION_12_3();
        OUTLINED_FUNCTION_26_0(v64);
      }

      (*(v125 + 8))(v122, v114);
    }

    else
    {

      v82 = *(v125 + 8);
      v83 = v114;
      v125 += 8;
      v82(v122, v114);
      if (one-time initialization token for siriPhone != -1)
      {
        OUTLINED_FUNCTION_0_6();
        swift_once();
      }

      v84 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_9_0(v84, static Logger.siriPhone);
      v85 = v117;
      v86 = v112;
      v112(v117, v126, v83);
      v87 = Logger.logObject.getter();
      v88 = static os_log_type_t.error.getter();
      if (OUTLINED_FUNCTION_16_4(v88))
      {
        v89 = OUTLINED_FUNCTION_42();
        v90 = OUTLINED_FUNCTION_36();
        v128[0] = v90;
        *v89 = 136315138;
        v91 = v115;
        v86(v115, v85, v83);
        v92 = String.init(describing:)(v91);
        v93 = v85;
        v94 = v92;
        v96 = v95;
        v82(v93, v83);
        v97 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v94, v96, v128);

        *(v89 + 4) = v97;
        _os_log_impl(&dword_0, v87, v88, "#IntentFromParseFlowStrategyHelper makeIntentFromParseSiriX get unexpected parse: %s", v89, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v90);
        OUTLINED_FUNCTION_26_0(v90);
        OUTLINED_FUNCTION_26_0(v89);
      }

      else
      {

        v82(v85, v83);
      }
    }

LABEL_34:
    OUTLINED_FUNCTION_65();
    return;
  }

  if (v41 == enum case for Parse.NLv4IntentOnly(_:) || v41 == enum case for Parse.uso(_:))
  {
    (*(v14 + 8))(v22, v12);
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_0_6();
      swift_once();
    }

    v73 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_9_0(v73, static Logger.siriPhone);
    v74 = Logger.logObject.getter();
    v75 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_10_0(v75))
    {
      v76 = OUTLINED_FUNCTION_65_0();
      *v76 = 0;
      _os_log_impl(&dword_0, v74, v0, "IntentFromParseFlowStrategyHelper NLv4/USO parse. running convertToIntent.", v76, 2u);
      OUTLINED_FUNCTION_52();
    }

    v77 = v4[7].isa;
    __swift_project_boxed_opaque_existential_1(&v4[3].isa, v4[6].isa);
    v78 = OUTLINED_FUNCTION_40_0();
    v79(v78, v77);
    __swift_project_boxed_opaque_existential_1(v6, v6[3]);

    v80 = v123;
    OUTLINED_FUNCTION_38_27();
    v81();

    outlined destroy of SKTransformer(v128);
    goto LABEL_34;
  }

  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v98 = type metadata accessor for Logger();
  __swift_project_value_buffer(v98, static Logger.siriPhone);
  v99 = Logger.logObject.getter();
  v100 = static os_log_type_t.error.getter();
  if (OUTLINED_FUNCTION_10_0(v100))
  {
    OUTLINED_FUNCTION_42();
    v101 = OUTLINED_FUNCTION_32_0();
    v128[0] = v101;
    *isa = 136315138;
    *(isa + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000057, 0x800000000045C130, v128);
    OUTLINED_FUNCTION_18_30();
    _os_log_impl(v102, v103, v104, v105, v106, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v101);
    OUTLINED_FUNCTION_52();
    OUTLINED_FUNCTION_12_3();
  }

  static SiriKitLifecycle._logCrashToEventBus(_:)();
  OUTLINED_FUNCTION_11_4();
  OUTLINED_FUNCTION_28_28();
  OUTLINED_FUNCTION_34_23(v107, v108, v109, 87, v110, v111);
  __break(1u);
}

uint64_t specialized IntentFromParseFlowStrategyHelper.__deallocating_deinit()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  return swift_deallocClassInstance();
}

uint64_t StartAudioCallRCHFlowDelegate.__allocating_init(sharedGlobals:appResolved:biomeEventSender:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(a3, *(a3 + 24));
  OUTLINED_FUNCTION_9_10();
  __chkstk_darwin(v5);
  OUTLINED_FUNCTION_4();
  v7 = OUTLINED_FUNCTION_33_24(v6);
  v8(v7);
  OUTLINED_FUNCTION_29_34();
  v9 = OUTLINED_FUNCTION_40_0();
  __swift_destroy_boxed_opaque_existential_1(v9);
  return v4;
}

uint64_t StartAudioCallRCHFlowDelegate.init(sharedGlobals:appResolved:biomeEventSender:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_mutable_project_boxed_opaque_existential_1(a3, *(a3 + 24));
  OUTLINED_FUNCTION_9_10();
  __chkstk_darwin(v4);
  OUTLINED_FUNCTION_4();
  v6 = OUTLINED_FUNCTION_33_24(v5);
  v7(v6);
  OUTLINED_FUNCTION_29_34();
  v8 = OUTLINED_FUNCTION_40_0();
  __swift_destroy_boxed_opaque_existential_1(v8);
  return v3;
}

uint64_t StartAudioCallRCHFlowDelegate.makeAceViewProvider()(uint64_t a1)
{
  v2 = dispatch thunk of BaseRCHFlowDelegate.makeDialogTemplating()();
  outlined init with copy of SignalProviding(v1 + direct field offset for StartAudioCallRCHFlowDelegate.sharedGlobals, v5);
  v3 = type metadata accessor for StartAudioCallAceViewProvider(0);
  OUTLINED_FUNCTION_41_1(v3);
  return StartAudioCallAceViewProvider.init(templatingService:sharedGlobals:)(v2, v5);
}

uint64_t StartAudioCallRCHFlowDelegate.makeNLContextProvider()()
{
  OUTLINED_FUNCTION_13_56();
  v0 = OUTLINED_FUNCTION_1_1();
  v1(v0);
  OUTLINED_FUNCTION_13_56();
  v2 = OUTLINED_FUNCTION_1_1();
  v3(v2);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0aB17NLContextProviderCySo012INStartAudioB6IntentCSo0hibJ8ResponseCGMd, &_s27PhoneCallFlowDelegatePlugin0aB17NLContextProviderCySo012INStartAudioB6IntentCSo0hibJ8ResponseCGMR);
  OUTLINED_FUNCTION_41_1(v4);
  return specialized PhoneCallNLContextProvider.init(deviceState:assistantProperties:)();
}

void StartAudioCallRCHFlowDelegate.makeDialogTemplating()()
{
  v1 = type metadata accessor for CATOption();
  v2 = OUTLINED_FUNCTION_21(v1);
  __chkstk_darwin(v2);
  OUTLINED_FUNCTION_4();
  outlined init with copy of SignalProviding(v0 + direct field offset for StartAudioCallRCHFlowDelegate.sharedGlobals, v4);
  type metadata accessor for StartCallCATs(0);
  static CATOption.defaultMode.getter();
  CATWrapper.__allocating_init(options:globals:)();
  type metadata accessor for PhoneCallDisplayTextCATs(0);
  static CATOption.defaultMode.getter();
  CATWrapper.__allocating_init(options:globals:)();
  type metadata accessor for PhoneCallCommonCATs(0);
  static CATOption.defaultMode.getter();
  CATWrapper.__allocating_init(options:globals:)();
  type metadata accessor for AppInfoBuilder();
  swift_allocObject();
  v3 = type metadata accessor for StartAudioCallCatTemplatingService(0);
  OUTLINED_FUNCTION_41_1(v3);
  specialized StartAudioCallCatTemplatingService.init(sharedGlobals:catFamily:displayTextCats:phoneCallCommonCats:appInfoBuilder:)();
}

uint64_t StartAudioCallRCHFlowDelegate.makeIntentFromParse(parse:previousIntent:)()
{
  v1 = v0;
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_9_0(v2, static Logger.siriPhone);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_16_4(v4))
  {
    v5 = OUTLINED_FUNCTION_65_0();
    *v5 = 0;
    _os_log_impl(&dword_0, v3, v4, "#StartAudioCallRCHFlowDelegate makeIntentFromParse", v5, 2u);
    OUTLINED_FUNCTION_26_0(v5);
  }

  outlined init with copy of SignalProviding(v1 + direct field offset for StartAudioCallRCHFlowDelegate.sharedGlobals, v11);
  v6 = *(v1 + direct field offset for StartAudioCallRCHFlowDelegate.appResolved);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin015IntentFromParseC14StrategyHelperCySo012INStartAudiobF0CGMd, &_s27PhoneCallFlowDelegatePlugin015IntentFromParseC14StrategyHelperCySo012INStartAudiobF0CGMR);
  inited = swift_initStackObject();
  outlined init with take of SPHConversation(v11, inited + 24);
  *(inited + 16) = v6;

  OUTLINED_FUNCTION_20_0();
  specialized IntentFromParseFlowStrategyHelper.makeIntentFromParse(parse:previousIntent:)();
  v9 = v8;
  swift_setDeallocating();
  specialized IntentFromParseFlowStrategyHelper.__deallocating_deinit();
  return v9;
}

void StartAudioCallRCHFlowDelegate.makeConfirmationStateFromParse(parse:)()
{
  OUTLINED_FUNCTION_66();
  v109 = v0;
  v110 = v1;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin18CommonDirectActionOSgMd, &_s27PhoneCallFlowDelegatePlugin18CommonDirectActionOSgMR);
  v5 = OUTLINED_FUNCTION_21(v4);
  __chkstk_darwin(v5);
  OUTLINED_FUNCTION_12_5();
  v102 = v6 - v7;
  OUTLINED_FUNCTION_4_0();
  __chkstk_darwin(v8);
  v106 = &v102 - v9;
  OUTLINED_FUNCTION_4_0();
  __chkstk_darwin(v10);
  v105 = (&v102 - v11);
  OUTLINED_FUNCTION_15_0();
  type metadata accessor for Parse.DirectInvocation();
  OUTLINED_FUNCTION_7();
  v103 = v13;
  v104 = v12;
  __chkstk_darwin(v12);
  OUTLINED_FUNCTION_4();
  v16 = v15 - v14;
  v17 = type metadata accessor for PhoneCallNLv3Intent(0);
  v18 = OUTLINED_FUNCTION_21(v17);
  __chkstk_darwin(v18);
  OUTLINED_FUNCTION_12_5();
  v21 = v19 - v20;
  __chkstk_darwin(v22);
  v107 = &v102 - v23;
  OUTLINED_FUNCTION_15_0();
  v24 = type metadata accessor for NLIntent();
  OUTLINED_FUNCTION_7();
  v26 = v25;
  __chkstk_darwin(v27);
  OUTLINED_FUNCTION_12_5();
  v30 = v28 - v29;
  __chkstk_darwin(v31);
  v33 = &v102 - v32;
  v34 = type metadata accessor for Parse();
  OUTLINED_FUNCTION_7();
  v36 = v35;
  __chkstk_darwin(v37);
  OUTLINED_FUNCTION_4();
  v40 = v39 - v38;
  v41 = *(v36 + 16);
  v108 = v3;
  v41(v40, v3, v34);
  v42 = OUTLINED_FUNCTION_8_33();
  v44 = v43(v42);
  if (v44 != enum case for Parse.NLv3IntentOnly(_:))
  {
    if (v44 != enum case for Parse.directInvocation(_:))
    {
      v69 = OUTLINED_FUNCTION_8_33();
      v70(v69);
      goto LABEL_22;
    }

    v58 = OUTLINED_FUNCTION_8_33();
    v59(v58);
    v60 = v103;
    v61 = v40;
    v62 = v104;
    (*(v103 + 32))(v16, v61, v104);
    v63 = v105;
    static CommonDirectAction.from(_:)(v105);
    (*(v60 + 8))(v16, v62);
    v64 = v106;
    outlined init with take of CommonDirectAction?(v63, v106);
    v65 = type metadata accessor for CommonDirectAction(0);
    if (__swift_getEnumTagSinglePayload(v64, 1, v65) != 1)
    {
      v66 = v102;
      outlined init with copy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(v64, v102, &_s27PhoneCallFlowDelegatePlugin18CommonDirectActionOSgMd, &_s27PhoneCallFlowDelegatePlugin18CommonDirectActionOSgMR);
      OUTLINED_FUNCTION_20_0();
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload == 7)
      {
        v68 = &enum case for SiriKitConfirmationState.cancelled(_:);
        goto LABEL_19;
      }

      if (EnumCaseMultiPayload == 6)
      {
        v68 = &enum case for SiriKitConfirmationState.confirmed(_:);
LABEL_19:
        v85 = *v68;
        type metadata accessor for SiriKitConfirmationState();
        OUTLINED_FUNCTION_23_1();
        (*(v86 + 104))(v110, v85);
        outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v64, &_s27PhoneCallFlowDelegatePlugin18CommonDirectActionOSgMd, &_s27PhoneCallFlowDelegatePlugin18CommonDirectActionOSgMR);
        goto LABEL_25;
      }

      _s27PhoneCallFlowDelegatePlugin18CommonDirectActionOWOhTm_6(v66, type metadata accessor for CommonDirectAction);
    }

    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v64, &_s27PhoneCallFlowDelegatePlugin18CommonDirectActionOSgMd, &_s27PhoneCallFlowDelegatePlugin18CommonDirectActionOSgMR);
    goto LABEL_22;
  }

  v45 = OUTLINED_FUNCTION_8_33();
  v46(v45);
  (*(v26 + 32))(v33, v40, v24);
  v47 = v109;
  v48 = *(v109 + direct field offset for StartAudioCallRCHFlowDelegate.appResolved);
  if (v48)
  {
    (*(v26 + 16))(v30, v33, v24);

    v49 = v107;
    PhoneCallNLv3Intent.init(intent:)(v30, v107);
    __swift_project_boxed_opaque_existential_1((v47 + direct field offset for StartAudioCallRCHFlowDelegate.sharedGlobals), *(v47 + direct field offset for StartAudioCallRCHFlowDelegate.sharedGlobals + 24));
    v50 = OUTLINED_FUNCTION_1_1();
    v51(v50);
    outlined init with copy of PhoneCallNLv3Intent(v49, v21);

    v52 = specialized SKTransformer.convertToSKIntent<A>(phoneCallNLIntent:rchFlowContext:)(v21, v48, 0, 0, v111);

    outlined destroy of SKTransformer(v111);
    OUTLINED_FUNCTION_1_122();
    _s27PhoneCallFlowDelegatePlugin18CommonDirectActionOWOhTm_6(v21, v53);
    if (v52)
    {
      if (specialized PhoneCallNLIntent.hasCallConfirmation(_:)(1))
      {

        OUTLINED_FUNCTION_1_122();
        _s27PhoneCallFlowDelegatePlugin18CommonDirectActionOWOhTm_6(v49, v54);
        v55 = OUTLINED_FUNCTION_15_58();
        v56(v55);
        v57 = &enum case for SiriKitConfirmationState.rejected(_:);
      }

      else
      {
        if ((specialized PhoneCallNLIntent.hasCallConfirmation(_:)(0) & 1) == 0)
        {
          v79 = specialized PhoneCallNLIntent.hasCallConfirmation(_:)(2);

          OUTLINED_FUNCTION_1_122();
          _s27PhoneCallFlowDelegatePlugin18CommonDirectActionOWOhTm_6(v49, v80);
          v81 = OUTLINED_FUNCTION_15_58();
          v82(v81);
          type metadata accessor for SiriKitConfirmationState();
          OUTLINED_FUNCTION_23_1();
          if (v79)
          {
            v84 = &enum case for SiriKitConfirmationState.cancelled(_:);
          }

          else
          {
            v84 = &enum case for SiriKitConfirmationState.unset(_:);
          }

          (*(v83 + 104))(v110, *v84);
          goto LABEL_25;
        }

        OUTLINED_FUNCTION_1_122();
        _s27PhoneCallFlowDelegatePlugin18CommonDirectActionOWOhTm_6(v49, v74);
        v75 = OUTLINED_FUNCTION_15_58();
        v76(v75);
        v57 = &enum case for SiriKitConfirmationState.confirmed(_:);
      }

      v77 = *v57;
      type metadata accessor for SiriKitConfirmationState();
      OUTLINED_FUNCTION_23_1();
      (*(v78 + 104))(v110, v77);
LABEL_25:
      OUTLINED_FUNCTION_65();
      return;
    }

    OUTLINED_FUNCTION_1_122();
    _s27PhoneCallFlowDelegatePlugin18CommonDirectActionOWOhTm_6(v49, v71);
    v72 = OUTLINED_FUNCTION_15_58();
    v73(v72);
LABEL_22:
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow19BaseRCHFlowDelegateCySo22INStartAudioCallIntentCSo0ghiJ8ResponseCGMd, &_s11SiriKitFlow19BaseRCHFlowDelegateCySo22INStartAudioCallIntentCSo0ghiJ8ResponseCGMR);
    v87 = method lookup function for BaseRCHFlowDelegate();
    v87(v108);
    goto LABEL_25;
  }

  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v88 = type metadata accessor for Logger();
  __swift_project_value_buffer(v88, static Logger.siriPhone);
  v89 = Logger.logObject.getter();
  v90 = static os_log_type_t.error.getter();
  if (OUTLINED_FUNCTION_10_0(v90))
  {
    OUTLINED_FUNCTION_42();
    v91 = OUTLINED_FUNCTION_32_0();
    v111[0] = v91;
    *v16 = 136315138;
    *(v16 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000044, 0x8000000000461FE0, v111);
    OUTLINED_FUNCTION_18_30();
    _os_log_impl(v92, v93, v94, v95, v96, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v91);
    OUTLINED_FUNCTION_52();
    OUTLINED_FUNCTION_12_3();
  }

  static SiriKitLifecycle._logCrashToEventBus(_:)();
  OUTLINED_FUNCTION_11_4();
  OUTLINED_FUNCTION_28_28();
  OUTLINED_FUNCTION_34_23(v97, v98, v99, 68, v100, v101);
  __break(1u);
}

uint64_t StartAudioCallRCHFlowDelegate.makeDisambiguationList(app:intent:parameterName:intentResolutionResult:_:)(uint64_t a1, void *a2, int a3, uint64_t a4, void *a5, void (*a6)(void), uint64_t a7)
{
  v13 = a1;
  v14 = dispatch thunk of BaseRCHFlowDelegate.makeDialogTemplating()();
  specialized CallingIntentRCHFlowDelegate.buildDisambiguationList(app:intent:parameterName:intentResolutionResult:templatingService:_:)(v13, a2, a3, a4, a5, v14, a6, a7, outlined bridged method (pb) of @objc INStartAudioCallIntent.contacts.getter, &_s27PhoneCallFlowDelegatePlugin0aB24BaseCatTemplatingServiceCySo012INStartAudioB6IntentCSo0jkbL8ResponseCGMd, &_s27PhoneCallFlowDelegatePlugin0aB24BaseCatTemplatingServiceCySo012INStartAudioB6IntentCSo0jkbL8ResponseCGMR, &direct field offset for StartAudioCallRCHFlowDelegate.sharedGlobals);
}

uint64_t StartVideoCallRCHFlowDelegate.makeErrorDialogBehavior(app:intent:intentResponse:)@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for ErrorDialogBehavior.openAppButton(_:);
  type metadata accessor for ErrorDialogBehavior();
  OUTLINED_FUNCTION_23_1();
  v5 = *(v4 + 104);

  return v5(a1, v2, v3);
}

void StartAudioCallRCHFlowDelegate.makeLaunchAppCommandViewBehavior(app:intent:intentResolutionResult:intentResponse:executionStep:)()
{
  OUTLINED_FUNCTION_66();
  v2 = v1;
  v4 = v3;
  v5 = type metadata accessor for RCHExecutionStep();
  OUTLINED_FUNCTION_7();
  v7 = v6;
  __chkstk_darwin(v8);
  OUTLINED_FUNCTION_4();
  v11 = v10 - v9;
  (*(v7 + 104))(v10 - v9, enum case for RCHExecutionStep.handle(_:), v5);
  v12 = static RCHExecutionStep.== infix(_:_:)();
  (*(v7 + 8))(v11, v5);
  if ((v12 & 1) != 0 && v2 && [v2 code] == &dword_0 + 2)
  {
    v13 = *(v0 + direct field offset for StartAudioCallRCHFlowDelegate.biomeEventSender + 24);
    v14 = *(v0 + direct field offset for StartAudioCallRCHFlowDelegate.biomeEventSender + 32);
    __swift_project_boxed_opaque_existential_1((v0 + direct field offset for StartAudioCallRCHFlowDelegate.biomeEventSender), v13);
    v15 = *(v0 + direct field offset for StartAudioCallRCHFlowDelegate.sharedGlobals + 24);
    v16 = *(v0 + direct field offset for StartAudioCallRCHFlowDelegate.sharedGlobals + 32);
    __swift_project_boxed_opaque_existential_1((v0 + direct field offset for StartAudioCallRCHFlowDelegate.sharedGlobals), v15);
    v17 = (*(v16 + 112))(v15, v16);
    BiomeEventSending.logEventForVoiceTriggerOnHeadset(currentRequest:)(v17, v13, v14);

    type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SAIntentGroupLaunchAppWithIntent, SAIntentGroupLaunchAppWithIntent_ptr);
    OUTLINED_FUNCTION_11_0();
    *v4 = static SAIntentGroupLaunchAppWithIntent.launchAppWithIntent(app:intent:intentResponse:)();
    *(v4 + 8) = 256;
    v18 = &enum case for LaunchAppBehavior.withAutomaticPunchOut(_:);
  }

  else
  {
    v18 = &enum case for LaunchAppBehavior.withDialogAndButton(_:);
  }

  v19 = *v18;
  type metadata accessor for LaunchAppBehavior();
  OUTLINED_FUNCTION_23_1();
  (*(v20 + 104))(v4, v19);
  OUTLINED_FUNCTION_65();
}

uint64_t StartAudioCallRCHFlowDelegate.__ivar_destroyer()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + direct field offset for StartAudioCallRCHFlowDelegate.sharedGlobals));
  __swift_destroy_boxed_opaque_existential_1((v0 + direct field offset for StartAudioCallRCHFlowDelegate.biomeEventSender));
}

uint64_t StartAudioCallRCHFlowDelegate.deinit()
{
  v0 = BaseRCHFlowDelegate.deinit();
  __swift_destroy_boxed_opaque_existential_1((v0 + direct field offset for StartAudioCallRCHFlowDelegate.sharedGlobals));
  __swift_destroy_boxed_opaque_existential_1((v0 + direct field offset for StartAudioCallRCHFlowDelegate.biomeEventSender));

  return v0;
}

uint64_t StartAudioCallRCHFlowDelegate.__deallocating_deinit()
{
  StartAudioCallRCHFlowDelegate.deinit();

  return swift_deallocClassInstance();
}

uint64_t specialized StartAudioCallRCHFlowDelegate.init(sharedGlobals:appResolved:biomeEventSender:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14[3] = a5;
  v14[4] = a6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v14);
  (*(*(a5 - 8) + 32))(boxed_opaque_existential_1, a3, a5);
  outlined init with copy of SignalProviding(a1, a4 + direct field offset for StartAudioCallRCHFlowDelegate.sharedGlobals);
  *(a4 + direct field offset for StartAudioCallRCHFlowDelegate.appResolved) = a2;
  outlined init with copy of SignalProviding(v14, a4 + direct field offset for StartAudioCallRCHFlowDelegate.biomeEventSender);
  v12 = BaseRCHFlowDelegate.init()();
  __swift_destroy_boxed_opaque_existential_1(a1);
  __swift_destroy_boxed_opaque_existential_1(v14);
  return v12;
}

void specialized StartAudioCallCatTemplatingService.init(sharedGlobals:catFamily:displayTextCats:phoneCallCommonCats:appInfoBuilder:)()
{
  OUTLINED_FUNCTION_66();
  v1 = v0;
  v3 = v2;
  v51 = v4;
  v6 = v5;
  v8 = v7;
  v47 = v7;
  v10 = v9;
  v49 = v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow25DucTemplatingLocalContextVSgMd, &_s11SiriKitFlow25DucTemplatingLocalContextVSgMR);
  v12 = OUTLINED_FUNCTION_21(v11);
  __chkstk_darwin(v12);
  v50 = &v42 - v13;
  OUTLINED_FUNCTION_15_0();
  type metadata accessor for Locale();
  OUTLINED_FUNCTION_7();
  v45 = v15;
  v46 = v14;
  __chkstk_darwin(v14);
  OUTLINED_FUNCTION_4();
  v18 = v17 - v16;
  v19 = type metadata accessor for CATOption();
  v20 = OUTLINED_FUNCTION_21(v19);
  __chkstk_darwin(v20);
  OUTLINED_FUNCTION_4();
  v60[3] = type metadata accessor for AppInfoBuilder();
  v60[4] = &protocol witness table for AppInfoBuilder;
  v60[0] = v3;
  *(v1 + direct field offset for StartAudioCallCatTemplatingService.catFamily) = v8;
  v48 = "csV2";
  outlined init with copy of SignalProviding(v10, v57);
  outlined init with copy of SignalProviding(v60, v56);
  type metadata accessor for StartCallCATs(0);

  static CATOption.defaultMode.getter();
  v43 = CATWrapper.__allocating_init(options:globals:)();
  v55[3] = &type metadata for LabelTemplatesProvider;
  v55[4] = &protocol witness table for LabelTemplatesProvider;
  v21 = swift_allocObject();
  v55[0] = v21;
  *(v21 + 16) = 0u;
  *(v21 + 32) = 0u;
  v22 = (v1 + *(*v1 + class metadata base offset for PhoneCallBaseCatTemplatingService + 16));
  *v22 = 0x3D65737561705C1BLL;
  v22[1] = 0xEC0000005C303532;
  OUTLINED_FUNCTION_72_0();
  v24 = v1 + *(v23 + class metadata base offset for PhoneCallBaseCatTemplatingService + 56);
  *v24 = v25;
  *(v24 + 1) = v25;
  *(v24 + 4) = 0;
  OUTLINED_FUNCTION_72_0();
  outlined init with copy of SignalProviding(v57, v1 + *(v26 + class metadata base offset for PhoneCallBaseCatTemplatingService + 72));
  v27 = v58;
  v28 = v59;
  __swift_project_boxed_opaque_existential_1(v57, v58);
  (*(v28 + 8))(&v53, v27, v28);
  OUTLINED_FUNCTION_72_0();
  v30 = *(v29 + class metadata base offset for PhoneCallBaseCatTemplatingService + 40);
  outlined init with take of SPHConversation(&v53, v1 + v30);
  OUTLINED_FUNCTION_72_0();
  v32 = *(v31 + class metadata base offset for PhoneCallBaseCatTemplatingService + 24);
  v44 = v6;
  *(v1 + v32) = v6;
  OUTLINED_FUNCTION_72_0();
  *(v1 + *(v33 + class metadata base offset for PhoneCallBaseCatTemplatingService + 32)) = v51;
  OUTLINED_FUNCTION_72_0();
  outlined init with copy of SignalProviding(v56, v1 + *(v34 + class metadata base offset for PhoneCallBaseCatTemplatingService + 48));
  OUTLINED_FUNCTION_72_0();
  outlined init with copy of SignalProviding(v55, v1 + *(v35 + class metadata base offset for PhoneCallBaseCatTemplatingService + 64));
  OUTLINED_FUNCTION_72_0();
  *(v1 + *(v36 + class metadata base offset for PhoneCallBaseCatTemplatingService + 80)) = v43;
  outlined init with copy of SignalProviding(v1 + v30, &v53);
  __swift_project_boxed_opaque_existential_1(&v53, v54);

  dispatch thunk of DeviceState.siriLocale.getter();
  v52[5] = Locale.identifier.getter();
  v52[6] = v37;
  v52[0] = 45;
  v52[1] = 0xE100000000000000;
  v52[10] = 95;
  v52[11] = 0xE100000000000000;
  lazy protocol witness table accessor for type String and conformance String();
  StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  (*(v45 + 8))(v18, v46);

  type metadata accessor for INIntentSlotValueType(0);
  lazy protocol witness table accessor for type StartAudioCallRCHFlowDelegate and conformance StartAudioCallRCHFlowDelegate(&lazy protocol witness table cache variable for type INIntentSlotValueType and conformance INIntentSlotValueType, type metadata accessor for INIntentSlotValueType, &protocol conformance descriptor for INIntentSlotValueType);
  Dictionary.init(dictionaryLiteral:)();
  v38 = v59;
  __swift_project_boxed_opaque_existential_1(v57, v58);
  v39 = OUTLINED_FUNCTION_11_0();
  v40(v39, v38);
  outlined init with copy of SignalProviding(v1 + v30, v52);
  v41 = type metadata accessor for DucTemplatingLocalContext();
  __swift_storeEnumTagSinglePayload(v50, 1, 1, v41);
  DucTemplatingService.init(ducFamily:locale:extensionValueTypeNamesByValueType:aceServiceInvoker:deviceState:localContext:)();

  __swift_destroy_boxed_opaque_existential_1(v49);
  __swift_destroy_boxed_opaque_existential_1(v56);
  __swift_destroy_boxed_opaque_existential_1(v60);
  __swift_destroy_boxed_opaque_existential_1(v55);
  __swift_destroy_boxed_opaque_existential_1(&v53);
  __swift_destroy_boxed_opaque_existential_1(v57);
  OUTLINED_FUNCTION_65();
}

uint64_t outlined init with take of CommonDirectAction?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin18CommonDirectActionOSgMd, &_s27PhoneCallFlowDelegatePlugin18CommonDirectActionOSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t instantiation function for generic protocol witness table for StartAudioCallRCHFlowDelegate(uint64_t a1)
{
  result = lazy protocol witness table accessor for type StartAudioCallRCHFlowDelegate and conformance StartAudioCallRCHFlowDelegate(&lazy protocol witness table cache variable for type StartAudioCallRCHFlowDelegate and conformance StartAudioCallRCHFlowDelegate, type metadata accessor for StartAudioCallRCHFlowDelegate, &protocol conformance descriptor for StartAudioCallRCHFlowDelegate);
  *(a1 + 8) = result;
  return result;
}

{
  result = lazy protocol witness table accessor for type StartAudioCallRCHFlowDelegate and conformance StartAudioCallRCHFlowDelegate(&lazy protocol witness table cache variable for type StartAudioCallRCHFlowDelegate and conformance BaseRCHFlowDelegate<A, B>, type metadata accessor for StartAudioCallRCHFlowDelegate, &protocol conformance descriptor for BaseRCHFlowDelegate<A, B>);
  *(a1 + 16) = result;
  return result;
}

uint64_t type metadata accessor for StartAudioCallRCHFlowDelegate(uint64_t a1)
{
  result = type metadata singleton initialization cache for StartAudioCallRCHFlowDelegate;
  if (!type metadata singleton initialization cache for StartAudioCallRCHFlowDelegate)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t _s27PhoneCallFlowDelegatePlugin17ContactResolutionC23updateSiriKitIntentNLv304sirijK002nlK03app6locale13sharedGlobals18multicardinalIndexyAA07CallingK0_p_AA0aB8NLIntent_p0i3AppG00W0CSg10Foundation6LocaleVAA06SharedR9Providing_pSiSgtFZTf4ennnnnn_nSo012INStartAudiobK0C_Tt5g5Tf4nennnn_nAA0ablK0V_Tg5(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6, int a7)
{
  v61 = a7;
  v63 = a3;
  v12 = type metadata accessor for ContactQuery();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v60 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v51 - v16;
  __chkstk_darwin(v18);
  v20 = &v51 - v19;
  v21 = type metadata accessor for PhoneCallNLv3Intent(0);
  __chkstk_darwin(v21);
  v23 = a2;
  v24 = &v51 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PhoneCallNLv3Intent(v23, v24);
  v62 = a1;
  _s27PhoneCallFlowDelegatePlugin17ContactResolutionC010shouldSkipfG033_4B58522B746884F3C9E10F5EDE9E49B18nlIntent02skT014contactQueriesSbAA0aB8NLIntent_p_AA013NCRResolvableT0_pSay13SiriInference0F5QueryVGSgtFZTf4nenn_nSo012INStartAudiobT0C_Tt2g5Tf4enn_nAA0ab4NLv3T0V_Tg5Tm();
  if (v25)
  {
    return _s27PhoneCallFlowDelegatePlugin18CommonDirectActionOWOhTm_6(v24, type metadata accessor for PhoneCallNLv3Intent);
  }

  v55 = v17;
  v57 = a4;
  v58 = a5;
  v59 = a6;
  lazy protocol witness table accessor for type StartAudioCallRCHFlowDelegate and conformance StartAudioCallRCHFlowDelegate(&lazy protocol witness table cache variable for type PhoneCallNLv3Intent and conformance PhoneCallNLv3Intent, type metadata accessor for PhoneCallNLv3Intent, &protocol conformance descriptor for PhoneCallNLv3Intent);
  v26 = IntentNodeTraversable.intentNodes(forOntologyNode:)();
  __chkstk_darwin(v26);
  v56 = v24;
  v50 = v24;
  v27 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay12SiriOntology21NonTerminalIntentNodeVG_27PhoneCallFlowDelegatePlugin0dJ7Contact_ps5NeverOTg5(closure #1 in PhoneCallNLv3Intent.contacts.getterpartial apply, &v49, v26);

  v28 = *(v27 + 16);
  if (v28)
  {
    v66 = _swiftEmptyArrayStorage;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v28, 0);
    v29 = v66;
    v54 = v27;
    v30 = v27 + 32;
    v64 = (v13 + 32);
    v31 = v60;
    do
    {
      outlined init with copy of SignalProviding(v30, v65);
      __swift_project_boxed_opaque_existential_1(v65, v65[3]);
      SiriPhoneContact.asSiriInferenceContact.getter();
      __swift_destroy_boxed_opaque_existential_1(v65);
      v66 = v29;
      v33 = v29[2];
      v32 = v29[3];
      if (v33 >= v32 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v32 > 1, v33 + 1, 1);
        v29 = v66;
      }

      v29[2] = v33 + 1;
      (*(v13 + 32))(v29 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v33, v31, v12);
      v30 += 40;
      --v28;
    }

    while (v28);
  }

  else
  {

    v29 = _swiftEmptyArrayStorage;
  }

  v35 = 0;
  v36 = v29[2];
  v37 = v13 + 16;
  v60 = (v13 + 32);
  v64 = _swiftEmptyArrayStorage;
  while (1)
  {
    if (v36 == v35)
    {

      v46 = v56;
      v47 = specialized PhoneCallNLIntent.isDisplayNameEmergencyContact()();
      static SiriKitEventSender.current.getter();
      type metadata accessor for EmergencyContactResolution();
      v48 = swift_allocObject();
      v24 = v46;
      _s27PhoneCallFlowDelegatePlugin17ContactResolutionC19updateSiriKitIntent04sirijK014contactQueries012hasEmergencyF03app6locale02nlK013sharedGlobals18multicardinalIndex0lJ11EventSender09emergencyfG0yAA013NCRResolvableK0_p_Say0I9Inference0F5QueryVGSb0i3AppG03AppCSg10Foundation6LocaleVAA0aB8NLIntent_pAA06SharedU9Providing_pSiSg0ijC00ijX7Sending_pAA0pfG0CtFZTf4ennnnnnnnnn_nSo012INStartAudiobK0C_Tt9g5Tf4nnnnnennnn_nAA0ab4NLv3K0V_Tg5(v62, v64, v47 & 1, v63, v57, v46, v58, v59, v61 & 1, v65, v48);

      __swift_destroy_boxed_opaque_existential_1(v65);
      return _s27PhoneCallFlowDelegatePlugin18CommonDirectActionOWOhTm_6(v24, type metadata accessor for PhoneCallNLv3Intent);
    }

    if (v35 >= v29[2])
    {
      break;
    }

    v38 = (*(v13 + 80) + 32) & ~*(v13 + 80);
    v39 = *(v13 + 72);
    (*(v13 + 16))(v20, v29 + v38 + v39 * v35, v12);
    if (one-time initialization token for emptyQuery != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v12, static ContactQuery.emptyQuery);
    if (static ContactQuery.== infix(_:_:)())
    {
      goto LABEL_18;
    }

    if (one-time initialization token for emptyNLv4Query != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v12, static ContactQuery.emptyNLv4Query);
    if (static ContactQuery.== infix(_:_:)())
    {
LABEL_18:
      result = (*(v13 + 8))(v20, v12);
      ++v35;
    }

    else
    {
      v53 = *v60;
      v54 = v37;
      v53(v55, v20, v12);
      v40 = v64;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v65[0] = v40;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v40[2] + 1, 1);
        v40 = v65[0];
      }

      v43 = v40[2];
      v42 = v40[3];
      v44 = v40;
      v45 = (v43 + 1);
      v37 = v54;
      if (v43 >= v42 >> 1)
      {
        v64 = (v43 + 1);
        v52 = v43;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v42 > 1, v43 + 1, 1);
        v45 = v64;
        v44 = v65[0];
        v43 = v52;
        v37 = v54;
      }

      ++v35;
      v44[2] = v45;
      v64 = v44;
      result = (v53)(v44 + v38 + v43 * v39, v55, v12);
    }
  }

  __break(1u);
  return result;
}

unint64_t _s27PhoneCallFlowDelegatePlugin17ContactResolutionC19updateSiriKitIntent04sirijK014contactQueries012hasEmergencyF03app6locale02nlK013sharedGlobals18multicardinalIndex0lJ11EventSender09emergencyfG0yAA013NCRResolvableK0_p_Say0I9Inference0F5QueryVGSb0i3AppG03AppCSg10Foundation6LocaleVAA0aB8NLIntent_pAA06SharedU9Providing_pSiSg0ijC00ijX7Sending_pAA0pfG0CtFZTf4ennnnnnnnnn_nSo012INStartAudiobK0C_Tt9g5Tf4nnnnnennnn_nAA0ab4NLv3K0V_Tg5(void *a1, uint64_t a2, char a3, uint64_t a4, void *a5, uint64_t a6, void *a7, uint64_t a8, char a9, void *a10, uint64_t a11)
{
  v181 = a7;
  v178 = a5;
  v175 = a4;
  v160 = type metadata accessor for ResolvedSiriKitContact();
  v159 = *(v160 - 8);
  __chkstk_darwin(v160);
  v158 = &v147 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v157 = type metadata accessor for PhoneError(0);
  __chkstk_darwin(v157);
  v18 = (&v147 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v19);
  v156 = &v147 - v20;
  v174 = type metadata accessor for RecommenderType();
  v172 = *(v174 - 8);
  __chkstk_darwin(v174);
  v173 = &v147 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v168 = type metadata accessor for SearchSuggestedContacts();
  v167 = *(v168 - 8);
  __chkstk_darwin(v168);
  v170 = &v147 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for ContactResolverDomain();
  __chkstk_darwin(v23 - 8);
  v166 = &v147 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v171 = type metadata accessor for ContactActionType();
  v169 = *(v171 - 8);
  __chkstk_darwin(v171);
  v165 = &v147 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v162 = &v147 - v27;
  __chkstk_darwin(v28);
  v164 = &v147 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference27ContactHandleTypePreferenceVSgMd, &_s13SiriInference27ContactHandleTypePreferenceVSgMR);
  __chkstk_darwin(v30 - 8);
  v163 = &v147 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v180 = &v147 - v33;
  v183 = type metadata accessor for Locale();
  v179 = *(v183 - 1);
  __chkstk_darwin(v183);
  v161 = &v147 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v182 = &v147 - v36;
  v177 = type metadata accessor for ContactResolverConfigHashable(0);
  __chkstk_darwin(v177);
  v38 = (&v147 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v39);
  v176 = &v147 - v40;
  v188[3] = type metadata accessor for PhoneCallNLv3Intent(0);
  v188[4] = &protocol witness table for PhoneCallNLv3Intent;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v188);
  outlined init with copy of PhoneCallNLv3Intent(a6, boxed_opaque_existential_1);
  v42 = type metadata accessor for ContactResolution();
  if (a3)
  {
    ObjectType = swift_getObjectType();
    v44 = dynamic_cast_existential_1_unconditional(a1, ObjectType, &protocol descriptor for CallingIntent);
    v46 = v45;
    v47 = one-time initialization token for siriPhone;
    v48 = a1;
    if (v47 != -1)
    {
      swift_once();
    }

    v49 = type metadata accessor for Logger();
    __swift_project_value_buffer(v49, static Logger.siriPhone);
    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&dword_0, v50, v51, "#ContactResolution NL intent has an emergency contact. Bypassing contact resolution.", v52, 2u);
    }

    v53 = [objc_allocWithZone(HKHealthStore) init];
    v54 = [objc_allocWithZone(HKMedicalIDStore) initWithHealthStore:v53];

    v186 = type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for HKMedicalIDStore, HKMedicalIDStore_ptr);
    v187 = &protocol witness table for HKMedicalIDStore;
    *&v185 = v54;
    (*(*a11 + 80))(v44, v46, v178, &v185);

    __swift_destroy_boxed_opaque_existential_1(&v185);
    return __swift_destroy_boxed_opaque_existential_1(v188);
  }

  v55 = v42;
  _s27PhoneCallFlowDelegatePlugin17ContactResolutionC010shouldSkipfG033_4B58522B746884F3C9E10F5EDE9E49B18nlIntent02skT014contactQueriesSbAA0aB8NLIntent_p_AA013NCRResolvableT0_pSay13SiriInference0F5QueryVGSgtFZTf4nenn_nSo012INStartAudiobT0C_Tt2g5Tf4enn_nAA0ab4NLv3T0V_Tg5Tm();
  if (v56)
  {
    return __swift_destroy_boxed_opaque_existential_1(v188);
  }

  v148 = v55;
  v154 = a2;
  v147 = v18;
  if (v175)
  {
    v57 = App.appIdentifier.getter();
    if (v58)
    {
      v59 = v57;
      v60 = v58;
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v62 = v61;
      v63 = v61[2];
      if (v63 >= v61[3] >> 1)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v62 = v146;
      }

      v62[2] = v63 + 1;
      v64 = &v62[2 * v63];
      v64[4] = v59;
      v64[5] = v60;
    }

    else
    {
      v62 = _swiftEmptyArrayStorage;
    }
  }

  else
  {
    v62 = _swiftEmptyArrayStorage;
  }

  v65 = v62;
  if (one-time initialization token for emptyStartCallIntent != -1)
  {
    swift_once();
  }

  v66 = [static PhoneCallIntentClassNames.emptyStartCallIntent _className];
  v67 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v69 = v68;

  v70 = v181[3];
  v71 = v181[4];
  __swift_project_boxed_opaque_existential_1(v181, v70);
  (*(v71 + 8))(&v185, v70, v71);
  __swift_project_boxed_opaque_existential_1(&v185, v186);
  v72 = v182;
  DeviceState.siriInputLocale.getter();
  v73 = a1;

  v74 = outlined bridged method (ob) of @objc INIntent.intentId.getter(v73);
  if (v75)
  {
    v76 = v74;
  }

  else
  {
    v76 = 0;
  }

  if (v75)
  {
    v77 = v75;
  }

  else
  {
    v77 = 0xE000000000000000;
  }

  v151 = v76;
  *v38 = v76;
  v38[1] = v77;
  v153 = v67;
  v38[2] = v67;
  v38[3] = v69;
  v78 = v177;
  v79 = *(v179 + 16);
  v79(v38 + *(v177 + 24), v72, v183);
  *(v38 + *(v78 + 28)) = v65;

  v150 = v77;

  v152 = v69;

  static ContactResolverConfigHashable.chooseHandleTypePreference(skIntent:)(&protocol witness table for INStartAudioCallIntent, v180);
  v80 = [v73 preferredCallProvider];
  v178 = v73;
  v149 = a8;
  v155 = v65;
  if (v80 == &dword_0 + 2)
  {
    v81 = swift_getObjectType();
    dynamic_cast_existential_1_unconditional(v73, v81, &protocol descriptor for CallingIntent);
    v83 = v82;
    v84 = swift_getObjectType();
    v85 = *(v83 + 24);
    v86 = v73;
    v87 = v85(v84, v83);

    v88 = v169;
    v89 = *(v169 + 104);
    if (v87 == 1)
    {
      v90 = &enum case for ContactActionType.facetimeAudio(_:);
    }

    else
    {
      v90 = &enum case for ContactActionType.facetimeVideo(_:);
    }

    v91 = *v90;
  }

  else
  {
    v91 = enum case for ContactActionType.phoneCall(_:);
    v88 = v169;
    v89 = *(v169 + 104);
  }

  v92 = v162;
  v93 = v171;
  v89(v162, v91, v171);
  v94 = v164;
  (*(v88 + 32))(v164, v92, v93);
  v79(v161, v182, v183);
  static ContactResolverDomain.phone.getter();
  v95 = v180;
  outlined init with copy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(v180, v163, &_s13SiriInference27ContactHandleTypePreferenceVSgMd, &_s13SiriInference27ContactHandleTypePreferenceVSgMR);
  (*(v167 + 104))(v170, enum case for SearchSuggestedContacts.ifOnlyMatchIsSuggested(_:), v168);
  (*(v172 + 104))(v173, enum case for RecommenderType.mlRecommender(_:), v174);
  ContactResolverConfig.init(intentId:intentTypeName:locale:logRunTimeData:processNLv3SpeechAlternatives:bundleIds:domainsToSearchForHistory:searchSuggestedContacts:handleTypePreference:recommender:customGenerator:)();
  (*(v88 + 16))(v165, v94, v93);
  ContactResolverConfig.actionType.setter();
  (*(v88 + 8))(v94, v93);
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v95, &_s13SiriInference27ContactHandleTypePreferenceVSgMd, &_s13SiriInference27ContactHandleTypePreferenceVSgMR);
  (*(v179 + 8))(v182, v183);
  v96 = v176;
  outlined init with take of ContactResolverConfigHashable(v38, v176);
  __swift_destroy_boxed_opaque_existential_1(&v185);
  v97 = v181[3];
  v98 = v181[4];
  __swift_project_boxed_opaque_existential_1(v181, v97);
  (*(v98 + 96))(&v185, v97, v98);
  v99 = v186;
  v100 = v187;
  __swift_project_boxed_opaque_existential_1(&v185, v186);
  v101 = (v100[2])(v154, v96, v99, v100);
  __swift_destroy_boxed_opaque_existential_1(&v185);
  __swift_project_boxed_opaque_existential_1(a10, a10[3]);
  type metadata accessor for SiriKitEvent();
  v102 = [v178 typeName];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  outlined init with copy of SignalProviding(v188, &v185);
  v103 = swift_allocObject();
  *(v103 + 16) = v175;
  outlined init with take of SPHConversation(&v185, v103 + 24);
  *(v103 + 64) = v101;

  LOBYTE(v184) = 0;
  SiriKitEvent.__allocating_init(stateType:taskType:statusReason:_:)();
  dispatch thunk of SiriKitEventSending.send(_:)();

  v104 = *(v101 + 16);
  if (v104)
  {
    *&v185 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v105 = *(v159 + 16);
    v182 = v101;
    v183 = v105;
    v106 = v101 + ((*(v159 + 80) + 32) & ~*(v159 + 80));
    v107 = *(v159 + 72);
    v108 = (v159 + 8);
    v109 = v158;
    v110 = v160;
    do
    {
      v183(v109, v106, v110);
      ResolvedSiriKitContact.person.getter();
      (*v108)(v109, v110);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v106 += v107;
      --v104;
    }

    while (v104);

    v111 = v185;
  }

  else
  {

    v111 = _swiftEmptyArrayStorage;
  }

  v112 = specialized Array.count.getter(v111);
  v113 = v178;
  v114 = v149;
  if (v112)
  {
    v115 = static ContactResolution.dedupeContacts(contacts:)(v111);

    v111 = v115;
  }

  if (a9)
  {
    if (one-time initialization token for siriPhone != -1)
    {
      swift_once();
    }

    v116 = type metadata accessor for Logger();
    __swift_project_value_buffer(v116, static Logger.siriPhone);
    v117 = Logger.logObject.getter();
    v118 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v117, v118))
    {
      goto LABEL_60;
    }

    v119 = swift_slowAlloc();
    *v119 = 0;
    v120 = "#ContactResolution multicardinalIndex is nil, overwriting contacts slot";
LABEL_59:
    _os_log_impl(&dword_0, v117, v118, v120, v119, 2u);

LABEL_60:

    INStartAudioCallIntent.overwriteContacts(newContacts:)(v111);

    _s27PhoneCallFlowDelegatePlugin18CommonDirectActionOWOhTm_6(v176, type metadata accessor for ContactResolverConfigHashable);
    return __swift_destroy_boxed_opaque_existential_1(v188);
  }

  v121 = outlined bridged method (pb) of @objc INStartAudioCallIntent.contacts.getter(v113);
  if (!v121)
  {
    if (one-time initialization token for siriPhone != -1)
    {
      swift_once();
    }

    v130 = type metadata accessor for Logger();
    __swift_project_value_buffer(v130, static Logger.siriPhone);
    v117 = Logger.logObject.getter();
    v118 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v117, v118))
    {
      goto LABEL_60;
    }

    v119 = swift_slowAlloc();
    *v119 = 0;
    v120 = "#ContactResolution siriKitIntent contacts slot is nil, overwriting contacts slot";
    goto LABEL_59;
  }

  v122 = v121;
  if (!specialized Array.count.getter(v111))
  {
    goto LABEL_49;
  }

  specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v111 & 0xC000000000000001) == 0, v111);
  if ((v111 & 0xC000000000000001) != 0)
  {
    v123 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    v123 = *(v111 + 32);
  }

  v124 = v123;
  if (v114 < 0 || specialized Array.count.getter(v122) <= v114 || (v125 = specialized Array.count.getter(v111), specialized Array.count.getter(v122) < v125))
  {

LABEL_49:
    if (one-time initialization token for siriPhone != -1)
    {
      swift_once();
    }

    v126 = type metadata accessor for Logger();
    __swift_project_value_buffer(v126, static Logger.siriPhone);
    v127 = Logger.logObject.getter();
    v128 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v127, v128))
    {
      v129 = swift_slowAlloc();
      *v129 = 0;
      _os_log_impl(&dword_0, v127, v128, "#ContactResolution: overwriting contacts slot", v129, 2u);
    }

    INStartAudioCallIntent.overwriteContacts(newContacts:)(v111);
    goto LABEL_54;
  }

  if (one-time initialization token for siriPhone != -1)
  {
    swift_once();
  }

  v132 = type metadata accessor for Logger();
  __swift_project_value_buffer(v132, static Logger.siriPhone);
  v133 = Logger.logObject.getter();
  v134 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v133, v134))
  {
    v135 = swift_slowAlloc();
    *v135 = 134217984;
    *(v135 + 4) = v149;
    _os_log_impl(&dword_0, v133, v134, "#ContactResolution updating person at index %ld", v135, 0xCu);
  }

  v136 = specialized Array.count.getter(v122);
  v137 = v149;
  if (v136 <= v149)
  {
    v141 = v147;
    *v147 = v149;
    swift_storeEnumTagMultiPayload();
    v142 = v156;
    PhoneError.logged()(v156);
    _s27PhoneCallFlowDelegatePlugin18CommonDirectActionOWOhTm_6(v141, type metadata accessor for PhoneError);
    _s27PhoneCallFlowDelegatePlugin18CommonDirectActionOWOhTm_6(v142, type metadata accessor for PhoneError);
    v143 = Logger.logObject.getter();
    v144 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v143, v144))
    {
      v145 = swift_slowAlloc();
      *v145 = 134218240;
      *(v145 + 4) = v137;
      *(v145 + 12) = 2048;
      *(v145 + 14) = specialized Array.count.getter(v122);
      _os_log_impl(&dword_0, v143, v144, "#ContactResolution multicardinalIndex %ld out of bounds for contacts array of length %ld, falling back to overwriting contacts slot", v145, 0x16u);
    }

    INStartAudioCallIntent.overwriteContacts(newContacts:)(v111);
    goto LABEL_54;
  }

  v138 = v124;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (v122 >> 62 || (result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()();
    v122 = result;
  }

  if (*(&dword_10 + (v122 & 0xFFFFFFFFFFFFFF8)) > v149)
  {
    v139 = *(&stru_20.cmd + 8 * v149 + (v122 & 0xFFFFFFFFFFFFFF8));
    *(&stru_20.cmd + 8 * v149 + (v122 & 0xFFFFFFFFFFFFFF8)) = v138;

    INStartAudioCallIntent.overwriteContacts(newContacts:)(v140);

LABEL_54:

    _s27PhoneCallFlowDelegatePlugin18CommonDirectActionOWOhTm_6(v176, type metadata accessor for ContactResolverConfigHashable);

    return __swift_destroy_boxed_opaque_existential_1(v188);
  }

  __break(1u);
  return result;
}

uint64_t _s27PhoneCallFlowDelegatePlugin17ContactResolutionC23updateSiriKitIntentNLv304sirijK002nlK03app6locale13sharedGlobals18multicardinalIndexyAA07CallingK0_p_AA0aB8NLIntent_p0i3AppG00W0CSg10Foundation6LocaleVAA06SharedR9Providing_pSiSgtFZTf4ennnnnn_nSo07INStartbK0C_Tt5g5Tf4nennnn_nAA0ablK0V_Tg5(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6, int a7)
{
  v61 = a7;
  v63 = a3;
  v12 = type metadata accessor for ContactQuery();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v60 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v51 - v16;
  __chkstk_darwin(v18);
  v20 = &v51 - v19;
  v21 = type metadata accessor for PhoneCallNLv3Intent(0);
  __chkstk_darwin(v21);
  v23 = a2;
  v24 = &v51 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PhoneCallNLv3Intent(v23, v24);
  v62 = a1;
  _s27PhoneCallFlowDelegatePlugin17ContactResolutionC010shouldSkipfG033_4B58522B746884F3C9E10F5EDE9E49B18nlIntent02skT014contactQueriesSbAA0aB8NLIntent_p_AA013NCRResolvableT0_pSay13SiriInference0F5QueryVGSgtFZTf4nenn_nSo012INStartAudiobT0C_Tt2g5Tf4enn_nAA0ab4NLv3T0V_Tg5Tm();
  if (v25)
  {
    return _s27PhoneCallFlowDelegatePlugin18CommonDirectActionOWOhTm_6(v24, type metadata accessor for PhoneCallNLv3Intent);
  }

  v55 = v17;
  v57 = a4;
  v58 = a5;
  v59 = a6;
  lazy protocol witness table accessor for type StartAudioCallRCHFlowDelegate and conformance StartAudioCallRCHFlowDelegate(&lazy protocol witness table cache variable for type PhoneCallNLv3Intent and conformance PhoneCallNLv3Intent, type metadata accessor for PhoneCallNLv3Intent, &protocol conformance descriptor for PhoneCallNLv3Intent);
  v26 = IntentNodeTraversable.intentNodes(forOntologyNode:)();
  __chkstk_darwin(v26);
  v56 = v24;
  v50 = v24;
  v27 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay12SiriOntology21NonTerminalIntentNodeVG_27PhoneCallFlowDelegatePlugin0dJ7Contact_ps5NeverOTg5(closure #1 in PhoneCallNLv3Intent.contacts.getterpartial apply, &v49, v26);

  v28 = *(v27 + 16);
  if (v28)
  {
    v66 = _swiftEmptyArrayStorage;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v28, 0);
    v29 = v66;
    v54 = v27;
    v30 = v27 + 32;
    v64 = (v13 + 32);
    v31 = v60;
    do
    {
      outlined init with copy of SignalProviding(v30, v65);
      __swift_project_boxed_opaque_existential_1(v65, v65[3]);
      SiriPhoneContact.asSiriInferenceContact.getter();
      __swift_destroy_boxed_opaque_existential_1(v65);
      v66 = v29;
      v33 = v29[2];
      v32 = v29[3];
      if (v33 >= v32 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v32 > 1, v33 + 1, 1);
        v29 = v66;
      }

      v29[2] = v33 + 1;
      (*(v13 + 32))(v29 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v33, v31, v12);
      v30 += 40;
      --v28;
    }

    while (v28);
  }

  else
  {

    v29 = _swiftEmptyArrayStorage;
  }

  v35 = 0;
  v36 = v29[2];
  v37 = v13 + 16;
  v60 = (v13 + 32);
  v64 = _swiftEmptyArrayStorage;
  while (1)
  {
    if (v36 == v35)
    {

      v46 = v56;
      v47 = specialized PhoneCallNLIntent.isDisplayNameEmergencyContact()();
      static SiriKitEventSender.current.getter();
      type metadata accessor for EmergencyContactResolution();
      v48 = swift_allocObject();
      v24 = v46;
      _s27PhoneCallFlowDelegatePlugin17ContactResolutionC19updateSiriKitIntent04sirijK014contactQueries012hasEmergencyF03app6locale02nlK013sharedGlobals18multicardinalIndex0lJ11EventSender09emergencyfG0yAA013NCRResolvableK0_p_Say0I9Inference0F5QueryVGSb0i3AppG03AppCSg10Foundation6LocaleVAA0aB8NLIntent_pAA06SharedU9Providing_pSiSg0ijC00ijX7Sending_pAA0pfG0CtFZTf4ennnnnnnnnn_nSo07INStartbK0C_Tt9g5Tf4nnnnnennnn_nAA0ab4NLv3K0V_Tg5(v62, v64, v47 & 1, v63, v57, v46, v58, v59, v61 & 1, v65, v48);

      __swift_destroy_boxed_opaque_existential_1(v65);
      return _s27PhoneCallFlowDelegatePlugin18CommonDirectActionOWOhTm_6(v24, type metadata accessor for PhoneCallNLv3Intent);
    }

    if (v35 >= v29[2])
    {
      break;
    }

    v38 = (*(v13 + 80) + 32) & ~*(v13 + 80);
    v39 = *(v13 + 72);
    (*(v13 + 16))(v20, v29 + v38 + v39 * v35, v12);
    if (one-time initialization token for emptyQuery != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v12, static ContactQuery.emptyQuery);
    if (static ContactQuery.== infix(_:_:)())
    {
      goto LABEL_18;
    }

    if (one-time initialization token for emptyNLv4Query != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v12, static ContactQuery.emptyNLv4Query);
    if (static ContactQuery.== infix(_:_:)())
    {
LABEL_18:
      result = (*(v13 + 8))(v20, v12);
      ++v35;
    }

    else
    {
      v53 = *v60;
      v54 = v37;
      v53(v55, v20, v12);
      v40 = v64;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v65[0] = v40;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v40[2] + 1, 1);
        v40 = v65[0];
      }

      v43 = v40[2];
      v42 = v40[3];
      v44 = v40;
      v45 = (v43 + 1);
      v37 = v54;
      if (v43 >= v42 >> 1)
      {
        v64 = (v43 + 1);
        v52 = v43;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v42 > 1, v43 + 1, 1);
        v45 = v64;
        v44 = v65[0];
        v43 = v52;
        v37 = v54;
      }

      ++v35;
      v44[2] = v45;
      v64 = v44;
      result = (v53)(v44 + v38 + v43 * v39, v55, v12);
    }
  }

  __break(1u);
  return result;
}

void _s27PhoneCallFlowDelegatePlugin17ContactResolutionC010shouldSkipfG033_4B58522B746884F3C9E10F5EDE9E49B1LL8nlIntent02skT014contactQueriesSbAA0aB8NLIntent_p_AA013NCRResolvableT0_pSay13SiriInference0F5QueryVGSgtFZTf4nenn_nSo012INStartAudiobT0C_Tt2g5Tf4enn_nAA0ab4NLv3T0V_Tg5Tm()
{
  OUTLINED_FUNCTION_66();
  v93 = v1;
  v94 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v101 = type metadata accessor for PhoneCallNLv3Intent(0);
  v102 = &protocol witness table for PhoneCallNLv3Intent;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v100);
  outlined init with copy of PhoneCallNLv3Intent(v9, boxed_opaque_existential_1);
  ObjectType = swift_getObjectType();
  dynamic_cast_existential_1_unconditional(v7, ObjectType, &protocol descriptor for CallingIntent);
  v13 = v12;
  v14 = swift_getObjectType();
  v15 = *(v13 + 16);
  v16 = v7;
  if (v15(v14, v13) == 2)
  {
    if (one-time initialization token for siriPhone != -1)
    {
      goto LABEL_84;
    }

    goto LABEL_3;
  }

  if (v5)
  {
    if (*(v5 + 16))
    {
      goto LABEL_33;
    }

    if (one-time initialization token for siriPhone != -1)
    {
LABEL_86:
      OUTLINED_FUNCTION_0_6();
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_9_0(v30, static Logger.siriPhone);
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.debug.getter();
    if (!OUTLINED_FUNCTION_10_0(v32))
    {
      goto LABEL_32;
    }

    goto LABEL_22;
  }

  v21 = v3(v16);
  if (!v21)
  {
    goto LABEL_24;
  }

  v16 = v21;
  v22 = specialized Array.count.getter(v21);
  if (!v22)
  {

LABEL_24:
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_0_6();
      swift_once();
    }

    v34 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_9_0(v34, static Logger.siriPhone);
    v31 = Logger.logObject.getter();
    v35 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_10_0(v35))
    {
LABEL_22:
      v33 = OUTLINED_FUNCTION_65_0();
      OUTLINED_FUNCTION_11_1(v33);
LABEL_31:
      OUTLINED_FUNCTION_18_30();
      _os_log_impl(v39, v40, v41, v42, v43, 2u);
      OUTLINED_FUNCTION_12_3();
      goto LABEL_32;
    }

    goto LABEL_32;
  }

  v23 = v22;
  v24 = 0;
  v25 = v16 & 0xC000000000000001;
  v26 = v16 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if (v23 == v24)
    {

      if (one-time initialization token for siriPhone != -1)
      {
LABEL_88:
        OUTLINED_FUNCTION_0_6();
        swift_once();
      }

      v36 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_9_0(v36, static Logger.siriPhone);
      v31 = Logger.logObject.getter();
      v37 = static os_log_type_t.debug.getter();
      if (OUTLINED_FUNCTION_10_0(v37))
      {
LABEL_30:
        v38 = OUTLINED_FUNCTION_65_0();
        OUTLINED_FUNCTION_11_1(v38);
        goto LABEL_31;
      }

LABEL_32:

      goto LABEL_33;
    }

    if (v25)
    {
      v27 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v24 >= *(&dword_10 + (v16 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_82;
      }

      v27 = *(v16 + 8 * v24 + 32);
    }

    v28 = v27;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    v29 = INPerson.hasHandleValue.getter();

    ++v24;
    if (!v29)
    {
      v44 = 0;
      v92 = v16 & 0xFFFFFFFFFFFFFF8;
      do
      {
        if (v25)
        {
          v45 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v44 >= *(v26 + 16))
          {
            __break(1u);
            goto LABEL_86;
          }

          v45 = *(v16 + 8 * v44 + 32);
        }

        v46 = v45;
        v47 = v44 + 1;
        if (__OFADD__(v44, 1))
        {
          goto LABEL_83;
        }

        v48 = [v45 personHandle];
        if (v48)
        {
          v49 = v48;
          v50 = [v48 emergencyType];

          if (v50)
          {

            if (one-time initialization token for siriPhone != -1)
            {
LABEL_90:
              OUTLINED_FUNCTION_0_6();
              swift_once();
            }

            v75 = type metadata accessor for Logger();
            OUTLINED_FUNCTION_9_0(v75, static Logger.siriPhone);
            v76 = Logger.logObject.getter();
            v77 = static os_log_type_t.debug.getter();
            if (OUTLINED_FUNCTION_10_0(v77))
            {
              OUTLINED_FUNCTION_42();
              v78 = OUTLINED_FUNCTION_32_0();
              v96[0] = v78;
              *v47 = 136315138;
              *&v95[0] = v50;
              type metadata accessor for INPersonHandleEmergencyType(0);
              v79 = String.init<A>(describing:)();
              v81 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v79, v80, v96);

              *(v47 + 4) = v81;
              OUTLINED_FUNCTION_18_30();
              _os_log_impl(v82, v83, v84, v85, v86, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v78);
              OUTLINED_FUNCTION_52();
              OUTLINED_FUNCTION_12_3();
            }

            goto LABEL_33;
          }
        }

        ++v44;
        v26 = v92;
      }

      while (v47 != v23);
      v51 = __swift_project_boxed_opaque_existential_1(v100, v101);
      OUTLINED_FUNCTION_10_72();
      lazy protocol witness table accessor for type StartAudioCallRCHFlowDelegate and conformance StartAudioCallRCHFlowDelegate(v52, v53, &protocol conformance descriptor for PhoneCallNLv3Intent);
      v54 = IntentNodeTraversable.intentNodes(forOntologyNode:)();
      v50 = &v91;
      __chkstk_darwin(v54);
      v90 = boxed_opaque_existential_1;
      v55 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay12SiriOntology21NonTerminalIntentNodeVG_27PhoneCallFlowDelegatePlugin0dJ7Contact_ps5NeverOTg5(v94, v89, v54);

      v56 = *(v55 + 16);

      if (!v56)
      {
LABEL_74:

        goto LABEL_33;
      }

      v57 = IntentNodeTraversable.intentNodes(forOntologyNode:)();
      __chkstk_darwin(v57);
      v90 = v51;
      v47 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay12SiriOntology21NonTerminalIntentNodeVG_27PhoneCallFlowDelegatePlugin0dJ7Contact_ps5NeverOTg5(v93, v89, v57);

      v46 = 0;
      v58 = *(v47 + 16);
      v59 = v47 + 32;
      if (v16 >= 0)
      {
        v60 = v26;
      }

      else
      {
        v60 = v16;
      }

      v93 = v60;
      v94 = v58;
      while (1)
      {
        if (v94 == v46)
        {

          goto LABEL_77;
        }

        if (v46 >= *(v47 + 16))
        {
          __break(1u);
          goto LABEL_88;
        }

        outlined init with copy of SignalProviding(v59, v95);
        v61 = v16 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *(v26 + 16);
        if (v46 == v61)
        {
          break;
        }

        if (v25)
        {
          v62 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v46 >= *(v26 + 16))
          {
            __break(1u);
            goto LABEL_90;
          }

          v62 = *(v16 + 8 * v46 + 32);
        }

        v63 = v62;
        outlined init with take of SPHConversation(v95, v96);
        v99 = v63;
        v65 = v97;
        v64 = v98;
        __swift_project_boxed_opaque_existential_1(v96, v97);
        v66 = (*(v64 + 32))(v65, v64);
        if (!v67)
        {
          goto LABEL_72;
        }

        v68 = v66;
        v69 = v67;

        v70 = HIBYTE(v69) & 0xF;
        if ((v69 & 0x2000000000000000) == 0)
        {
          v70 = v68 & 0xFFFFFFFFFFFFLL;
        }

        if (!v70 || (v71 = outlined bridged method (pb) of @objc INPerson.contactIdentifier.getter(v63), !v72))
        {
LABEL_72:
          outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v96, &_s27PhoneCallFlowDelegatePlugin04SiriA7Contact_p_So8INPersonCtMd, &_s27PhoneCallFlowDelegatePlugin04SiriA7Contact_p_So8INPersonCtMR);
LABEL_73:

          goto LABEL_74;
        }

        v73 = v71;
        v50 = v72;

        if ((v50 & 0x2000000000000000) != 0)
        {
          v74 = HIBYTE(v50) & 0xF;
        }

        else
        {
          v74 = v73 & 0xFFFFFFFFFFFFLL;
        }

        outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v96, &_s27PhoneCallFlowDelegatePlugin04SiriA7Contact_p_So8INPersonCtMd, &_s27PhoneCallFlowDelegatePlugin04SiriA7Contact_p_So8INPersonCtMR);
        v59 += 40;
        ++v46;
        v26 = v92;
        if (!v74)
        {
          goto LABEL_73;
        }
      }

      __swift_destroy_boxed_opaque_existential_1(v95);
LABEL_77:
      if (one-time initialization token for siriPhone != -1)
      {
        OUTLINED_FUNCTION_0_6();
        swift_once();
      }

      v87 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_9_0(v87, static Logger.siriPhone);
      v31 = Logger.logObject.getter();
      v88 = static os_log_type_t.debug.getter();
      if (OUTLINED_FUNCTION_10_0(v88))
      {
        goto LABEL_30;
      }

      goto LABEL_32;
    }
  }

  __break(1u);
LABEL_82:
  __break(1u);
LABEL_83:
  __break(1u);
LABEL_84:
  OUTLINED_FUNCTION_0_6();
  swift_once();
LABEL_3:
  v17 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_9_0(v17, static Logger.siriPhone);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_16_4(v19))
  {
    v20 = OUTLINED_FUNCTION_65_0();
    *v20 = 0;
    _os_log_impl(&dword_0, v18, v19, "#ContactResolution intent is emergency call. bypassing contact resolution", v20, 2u);
    OUTLINED_FUNCTION_52();
  }

LABEL_33:
  __swift_destroy_boxed_opaque_existential_1(v100);
  OUTLINED_FUNCTION_65();
}

uint64_t _s27PhoneCallFlowDelegatePlugin17ContactResolutionC19updateSiriKitIntent04sirijK014contactQueries012hasEmergencyF03app6locale02nlK013sharedGlobals18multicardinalIndex0lJ11EventSender09emergencyfG0yAA013NCRResolvableK0_p_Say0I9Inference0F5QueryVGSb0i3AppG03AppCSg10Foundation6LocaleVAA0aB8NLIntent_pAA06SharedU9Providing_pSiSg0ijC00ijX7Sending_pAA0pfG0CtFZTf4ennnnnnnnnn_nSo07INStartbK0C_Tt9g5Tf4nnnnnennnn_nAA0ab4NLv3K0V_Tg5(void *a1, uint64_t a2, char a3, uint64_t a4, void *a5, uint64_t a6, void *a7, uint64_t a8, char a9, void *a10, uint64_t a11)
{
  v180 = a7;
  v177 = a5;
  v174 = a4;
  v159 = type metadata accessor for ResolvedSiriKitContact();
  v158 = *(v159 - 8);
  __chkstk_darwin(v159);
  v157 = &v146 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v156 = type metadata accessor for PhoneError(0);
  __chkstk_darwin(v156);
  v18 = (&v146 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v19);
  v155 = &v146 - v20;
  v173 = type metadata accessor for RecommenderType();
  v171 = *(v173 - 8);
  __chkstk_darwin(v173);
  v172 = &v146 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v167 = type metadata accessor for SearchSuggestedContacts();
  v166 = *(v167 - 8);
  __chkstk_darwin(v167);
  v169 = &v146 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for ContactResolverDomain();
  __chkstk_darwin(v23 - 8);
  v165 = &v146 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v170 = type metadata accessor for ContactActionType();
  v168 = *(v170 - 8);
  __chkstk_darwin(v170);
  v164 = &v146 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v161 = &v146 - v27;
  __chkstk_darwin(v28);
  v163 = &v146 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference27ContactHandleTypePreferenceVSgMd, &_s13SiriInference27ContactHandleTypePreferenceVSgMR);
  __chkstk_darwin(v30 - 8);
  v162 = &v146 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v179 = &v146 - v33;
  v182 = type metadata accessor for Locale();
  v178 = *(v182 - 1);
  __chkstk_darwin(v182);
  v160 = &v146 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v181 = &v146 - v36;
  v176 = type metadata accessor for ContactResolverConfigHashable(0);
  __chkstk_darwin(v176);
  v38 = (&v146 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v39);
  v175 = &v146 - v40;
  v187[3] = type metadata accessor for PhoneCallNLv3Intent(0);
  v187[4] = &protocol witness table for PhoneCallNLv3Intent;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v187);
  outlined init with copy of PhoneCallNLv3Intent(a6, boxed_opaque_existential_1);
  v42 = type metadata accessor for ContactResolution();
  if ((a3 & 1) == 0)
  {
    v55 = v42;
    _s27PhoneCallFlowDelegatePlugin17ContactResolutionC010shouldSkipfG033_4B58522B746884F3C9E10F5EDE9E49B18nlIntent02skT014contactQueriesSbAA0aB8NLIntent_p_AA013NCRResolvableT0_pSay13SiriInference0F5QueryVGSgtFZTf4nenn_nSo012INStartAudiobT0C_Tt2g5Tf4enn_nAA0ab4NLv3T0V_Tg5Tm();
    if (v56)
    {
      return __swift_destroy_boxed_opaque_existential_1(v187);
    }

    v147 = v55;
    v153 = a2;
    v146 = v18;
    if (v174)
    {
      v57 = App.appIdentifier.getter();
      if (v58)
      {
        v59 = v57;
        v60 = v58;
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v62 = v61;
        v63 = v61[2];
        if (v63 >= v61[3] >> 1)
        {
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v62 = v145;
        }

        v62[2] = v63 + 1;
        v64 = &v62[2 * v63];
        v64[4] = v59;
        v64[5] = v60;
      }

      else
      {
        v62 = _swiftEmptyArrayStorage;
      }
    }

    else
    {
      v62 = _swiftEmptyArrayStorage;
    }

    v65 = v62;
    if (one-time initialization token for emptyStartCallIntent != -1)
    {
      swift_once();
    }

    v66 = [static PhoneCallIntentClassNames.emptyStartCallIntent _className];
    v67 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v69 = v68;

    v70 = v180[3];
    v71 = v180[4];
    __swift_project_boxed_opaque_existential_1(v180, v70);
    (*(v71 + 8))(&v184, v70, v71);
    __swift_project_boxed_opaque_existential_1(&v184, v185);
    v72 = v181;
    DeviceState.siriInputLocale.getter();
    v73 = a1;

    v74 = outlined bridged method (ob) of @objc INIntent.intentId.getter(v73);
    if (v75)
    {
      v76 = v74;
    }

    else
    {
      v76 = 0;
    }

    if (v75)
    {
      v77 = v75;
    }

    else
    {
      v77 = 0xE000000000000000;
    }

    v150 = v76;
    *v38 = v76;
    v38[1] = v77;
    v152 = v67;
    v38[2] = v67;
    v38[3] = v69;
    v78 = v176;
    v79 = *(v178 + 16);
    v79(v38 + *(v176 + 24), v72, v182);
    *(v38 + *(v78 + 28)) = v65;

    v149 = v77;

    v151 = v69;

    static ContactResolverConfigHashable.chooseHandleTypePreference(skIntent:)(&protocol witness table for INStartCallIntent, v179);
    v80 = [v73 preferredCallProvider];
    v177 = v73;
    v148 = a8;
    v154 = v65;
    if (v80 == &dword_0 + 2)
    {
      ObjectType = swift_getObjectType();
      dynamic_cast_existential_1_unconditional(v73, ObjectType, &protocol descriptor for CallingIntent);
      v83 = v82;
      v84 = swift_getObjectType();
      v85 = *(v83 + 24);
      v86 = v73;
      v87 = v85(v84, v83);

      v88 = v168;
      v89 = *(v168 + 104);
      if (v87 == 1)
      {
        v90 = &enum case for ContactActionType.facetimeAudio(_:);
      }

      else
      {
        v90 = &enum case for ContactActionType.facetimeVideo(_:);
      }

      v91 = *v90;
    }

    else
    {
      v91 = enum case for ContactActionType.phoneCall(_:);
      v88 = v168;
      v89 = *(v168 + 104);
    }

    v92 = v161;
    v93 = v170;
    v89(v161, v91, v170);
    v94 = v163;
    (*(v88 + 32))(v163, v92, v93);
    v79(v160, v181, v182);
    static ContactResolverDomain.phone.getter();
    v95 = v179;
    outlined init with copy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(v179, v162, &_s13SiriInference27ContactHandleTypePreferenceVSgMd, &_s13SiriInference27ContactHandleTypePreferenceVSgMR);
    (*(v166 + 104))(v169, enum case for SearchSuggestedContacts.ifOnlyMatchIsSuggested(_:), v167);
    (*(v171 + 104))(v172, enum case for RecommenderType.mlRecommender(_:), v173);
    ContactResolverConfig.init(intentId:intentTypeName:locale:logRunTimeData:processNLv3SpeechAlternatives:bundleIds:domainsToSearchForHistory:searchSuggestedContacts:handleTypePreference:recommender:customGenerator:)();
    (*(v88 + 16))(v164, v94, v93);
    ContactResolverConfig.actionType.setter();
    (*(v88 + 8))(v94, v93);
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v95, &_s13SiriInference27ContactHandleTypePreferenceVSgMd, &_s13SiriInference27ContactHandleTypePreferenceVSgMR);
    (*(v178 + 8))(v181, v182);
    v96 = v175;
    outlined init with take of ContactResolverConfigHashable(v38, v175);
    __swift_destroy_boxed_opaque_existential_1(&v184);
    v97 = v180[3];
    v98 = v180[4];
    __swift_project_boxed_opaque_existential_1(v180, v97);
    (*(v98 + 96))(&v184, v97, v98);
    v99 = v185;
    v100 = v186;
    __swift_project_boxed_opaque_existential_1(&v184, v185);
    v101 = (v100[2])(v153, v96, v99, v100);
    __swift_destroy_boxed_opaque_existential_1(&v184);
    __swift_project_boxed_opaque_existential_1(a10, a10[3]);
    type metadata accessor for SiriKitEvent();
    v102 = [v177 typeName];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    outlined init with copy of SignalProviding(v187, &v184);
    v103 = swift_allocObject();
    *(v103 + 16) = v174;
    outlined init with take of SPHConversation(&v184, v103 + 24);
    *(v103 + 64) = v101;

    LOBYTE(v183) = 0;
    SiriKitEvent.__allocating_init(stateType:taskType:statusReason:_:)();
    dispatch thunk of SiriKitEventSending.send(_:)();

    v104 = *(v101 + 16);
    if (v104)
    {
      *&v184 = _swiftEmptyArrayStorage;
      specialized ContiguousArray.reserveCapacity(_:)();
      v105 = *(v158 + 16);
      v181 = v101;
      v182 = v105;
      v106 = v101 + ((*(v158 + 80) + 32) & ~*(v158 + 80));
      v107 = *(v158 + 72);
      v108 = (v158 + 8);
      v109 = v157;
      v110 = v159;
      do
      {
        v182(v109, v106, v110);
        ResolvedSiriKitContact.person.getter();
        (*v108)(v109, v110);
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v106 += v107;
        --v104;
      }

      while (v104);

      v111 = v184;
    }

    else
    {

      v111 = _swiftEmptyArrayStorage;
    }

    v112 = specialized Array.count.getter(v111);
    v113 = v177;
    v114 = v148;
    if (v112)
    {
      v115 = static ContactResolution.dedupeContacts(contacts:)(v111);

      v111 = v115;
    }

    if (a9)
    {
      if (one-time initialization token for siriPhone != -1)
      {
        swift_once();
      }

      v116 = type metadata accessor for Logger();
      __swift_project_value_buffer(v116, static Logger.siriPhone);
      v117 = Logger.logObject.getter();
      v118 = static os_log_type_t.debug.getter();
      if (!os_log_type_enabled(v117, v118))
      {
        goto LABEL_60;
      }

      v119 = swift_slowAlloc();
      *v119 = 0;
      v120 = "#ContactResolution multicardinalIndex is nil, overwriting contacts slot";
LABEL_59:
      _os_log_impl(&dword_0, v117, v118, v120, v119, 2u);

LABEL_60:

      INStartCallIntent.overwriteContacts(newContacts:)(v111);

      _s27PhoneCallFlowDelegatePlugin18CommonDirectActionOWOhTm_6(v175, type metadata accessor for ContactResolverConfigHashable);
      return __swift_destroy_boxed_opaque_existential_1(v187);
    }

    v121 = outlined bridged method (pb) of @objc INStartCallIntent.contacts.getter(v113);
    if (!v121)
    {
      if (one-time initialization token for siriPhone != -1)
      {
        swift_once();
      }

      v130 = type metadata accessor for Logger();
      __swift_project_value_buffer(v130, static Logger.siriPhone);
      v117 = Logger.logObject.getter();
      v118 = static os_log_type_t.debug.getter();
      if (!os_log_type_enabled(v117, v118))
      {
        goto LABEL_60;
      }

      v119 = swift_slowAlloc();
      *v119 = 0;
      v120 = "#ContactResolution siriKitIntent contacts slot is nil, overwriting contacts slot";
      goto LABEL_59;
    }

    v122 = v121;
    if (!specialized Array.count.getter(v111))
    {
      goto LABEL_49;
    }

    specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v111 & 0xC000000000000001) == 0, v111);
    if ((v111 & 0xC000000000000001) != 0)
    {
      v123 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v123 = *(v111 + 32);
    }

    v124 = v123;
    if (v114 < 0 || specialized Array.count.getter(v122) <= v114 || (v125 = specialized Array.count.getter(v111), specialized Array.count.getter(v122) < v125))
    {

LABEL_49:
      if (one-time initialization token for siriPhone != -1)
      {
        swift_once();
      }

      v126 = type metadata accessor for Logger();
      __swift_project_value_buffer(v126, static Logger.siriPhone);
      v127 = Logger.logObject.getter();
      v128 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v127, v128))
      {
        v129 = swift_slowAlloc();
        *v129 = 0;
        _os_log_impl(&dword_0, v127, v128, "#ContactResolution: overwriting contacts slot", v129, 2u);
      }

      INStartCallIntent.overwriteContacts(newContacts:)(v111);
      goto LABEL_54;
    }

    if (one-time initialization token for siriPhone != -1)
    {
      swift_once();
    }

    v132 = type metadata accessor for Logger();
    v133 = __swift_project_value_buffer(v132, static Logger.siriPhone);
    v134 = Logger.logObject.getter();
    v135 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v134, v135))
    {
      v136 = swift_slowAlloc();
      *v136 = 134217984;
      *(v136 + 4) = v148;
      _os_log_impl(&dword_0, v134, v135, "#ContactResolution updating person at index %ld", v136, 0xCu);
    }

    v137 = specialized Array.count.getter(v122);
    v138 = v148;
    if (v137 <= v148)
    {
      v142 = v146;
      *v146 = v148;
      swift_storeEnumTagMultiPayload();
      v143 = v155;
      PhoneError.logged()(v155);
      _s27PhoneCallFlowDelegatePlugin18CommonDirectActionOWOhTm_6(v142, type metadata accessor for PhoneError);
      _s27PhoneCallFlowDelegatePlugin18CommonDirectActionOWOhTm_6(v143, type metadata accessor for PhoneError);
      v134 = Logger.logObject.getter();
      v133 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v134, v133))
      {
LABEL_76:

        INStartCallIntent.overwriteContacts(newContacts:)(v111);
        goto LABEL_54;
      }

      v135 = swift_slowAlloc();
      *v135 = 134218240;
      *(v135 + 4) = v138;
      *(v135 + 12) = 2048;
      if (!(v122 >> 62))
      {
        v144 = *(&dword_10 + (v122 & 0xFFFFFFFFFFFFFF8));
LABEL_75:
        *(v135 + 14) = v144;
        _os_log_impl(&dword_0, v134, v133, "#ContactResolution multicardinalIndex %ld out of bounds for contacts array of length %ld, falling back to overwriting contacts slot", v135, 0x16u);

        goto LABEL_76;
      }
    }

    else
    {

      v111 = v124;
      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      if (v122 >> 62 || (isUniquelyReferenced_nonNull_bridgeObject & 1) == 0)
      {
        v122 = specialized _ArrayBuffer._consumeAndCreateNew()();
      }

      if (*(&dword_10 + (v122 & 0xFFFFFFFFFFFFFF8)) > v148)
      {
        v140 = *(&stru_20.cmd + 8 * v148 + (v122 & 0xFFFFFFFFFFFFFF8));
        *(&stru_20.cmd + 8 * v148 + (v122 & 0xFFFFFFFFFFFFFF8)) = v111;

        INStartCallIntent.overwriteContacts(newContacts:)(v141);

LABEL_54:

        _s27PhoneCallFlowDelegatePlugin18CommonDirectActionOWOhTm_6(v175, type metadata accessor for ContactResolverConfigHashable);

        return __swift_destroy_boxed_opaque_existential_1(v187);
      }

      __break(1u);
    }

    v144 = _CocoaArrayWrapper.endIndex.getter();
    goto LABEL_75;
  }

  v43 = swift_getObjectType();
  v44 = dynamic_cast_existential_1_unconditional(a1, v43, &protocol descriptor for CallingIntent);
  v46 = v45;
  v47 = one-time initialization token for siriPhone;
  v48 = a1;
  if (v47 != -1)
  {
    swift_once();
  }

  v49 = type metadata accessor for Logger();
  __swift_project_value_buffer(v49, static Logger.siriPhone);
  v50 = Logger.logObject.getter();
  v51 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    *v52 = 0;
    _os_log_impl(&dword_0, v50, v51, "#ContactResolution NL intent has an emergency contact. Bypassing contact resolution.", v52, 2u);
  }

  v53 = [objc_allocWithZone(HKHealthStore) init];
  v54 = [objc_allocWithZone(HKMedicalIDStore) initWithHealthStore:v53];

  v185 = type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for HKMedicalIDStore, HKMedicalIDStore_ptr);
  v186 = &protocol witness table for HKMedicalIDStore;
  *&v184 = v54;
  (*(*a11 + 80))(v44, v46, v177, &v184);

  __swift_destroy_boxed_opaque_existential_1(&v184);
  return __swift_destroy_boxed_opaque_existential_1(v187);
}

uint64_t _s27PhoneCallFlowDelegatePlugin17ContactResolutionC23updateSiriKitIntentNLv304sirijK002nlK03app6locale13sharedGlobals18multicardinalIndexyAA07CallingK0_p_AA0aB8NLIntent_p0i3AppG00W0CSg10Foundation6LocaleVAA06SharedR9Providing_pSiSgtFZTf4ennnnnn_nSo012INStartVideobK0C_Tt5g5Tf4nennnn_nAA0ablK0V_Tg5(void *a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(char *, char *, uint64_t), uint64_t a6, int a7)
{
  v61 = a7;
  v63 = a3;
  v12 = type metadata accessor for ContactQuery();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v60 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v51 - v16;
  __chkstk_darwin(v18);
  v20 = &v51 - v19;
  v21 = type metadata accessor for PhoneCallNLv3Intent(0);
  __chkstk_darwin(v21);
  v23 = a2;
  v24 = &v51 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PhoneCallNLv3Intent(v23, v24);
  v62 = a1;
  _s27PhoneCallFlowDelegatePlugin17ContactResolutionC010shouldSkipfG033_4B58522B746884F3C9E10F5EDE9E49B18nlIntent02skT014contactQueriesSbAA0aB8NLIntent_p_AA013NCRResolvableT0_pSay13SiriInference0F5QueryVGSgtFZTf4nenn_nSo012INStartAudiobT0C_Tt2g5Tf4enn_nAA0ab4NLv3T0V_Tg5Tm();
  if (v25)
  {
    return _s27PhoneCallFlowDelegatePlugin18CommonDirectActionOWOhTm_6(v24, type metadata accessor for PhoneCallNLv3Intent);
  }

  v55 = v17;
  v57 = a4;
  v58 = a5;
  v59 = a6;
  lazy protocol witness table accessor for type StartAudioCallRCHFlowDelegate and conformance StartAudioCallRCHFlowDelegate(&lazy protocol witness table cache variable for type PhoneCallNLv3Intent and conformance PhoneCallNLv3Intent, type metadata accessor for PhoneCallNLv3Intent, &protocol conformance descriptor for PhoneCallNLv3Intent);
  v26 = IntentNodeTraversable.intentNodes(forOntologyNode:)();
  __chkstk_darwin(v26);
  v56 = v24;
  v50 = v24;
  v27 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay12SiriOntology21NonTerminalIntentNodeVG_27PhoneCallFlowDelegatePlugin0dJ7Contact_ps5NeverOTg5(partial apply for closure #1 in PhoneCallNLv3Intent.contacts.getter, &v49, v26);

  v28 = *(v27 + 16);
  if (v28)
  {
    v66 = _swiftEmptyArrayStorage;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v28, 0);
    v29 = v66;
    v54 = v27;
    v30 = v27 + 32;
    v64 = (v13 + 32);
    v31 = v60;
    do
    {
      outlined init with copy of SignalProviding(v30, v65);
      __swift_project_boxed_opaque_existential_1(v65, v65[3]);
      SiriPhoneContact.asSiriInferenceContact.getter();
      __swift_destroy_boxed_opaque_existential_1(v65);
      v66 = v29;
      v33 = v29[2];
      v32 = v29[3];
      if (v33 >= v32 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v32 > 1, v33 + 1, 1);
        v29 = v66;
      }

      v29[2] = v33 + 1;
      (*(v13 + 32))(v29 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v33, v31, v12);
      v30 += 40;
      --v28;
    }

    while (v28);
  }

  else
  {

    v29 = _swiftEmptyArrayStorage;
  }

  v35 = 0;
  v36 = v29[2];
  v37 = v13 + 16;
  v60 = (v13 + 32);
  v64 = _swiftEmptyArrayStorage;
  while (1)
  {
    if (v36 == v35)
    {

      v46 = v56;
      v47 = specialized PhoneCallNLIntent.isDisplayNameEmergencyContact()();
      static SiriKitEventSender.current.getter();
      type metadata accessor for EmergencyContactResolution();
      v48 = swift_allocObject();
      v24 = v46;
      _s27PhoneCallFlowDelegatePlugin17ContactResolutionC19updateSiriKitIntent04sirijK014contactQueries012hasEmergencyF03app6locale02nlK013sharedGlobals18multicardinalIndex0lJ11EventSender09emergencyfG0yAA013NCRResolvableK0_p_Say0I9Inference0F5QueryVGSb0i3AppG03AppCSg10Foundation6LocaleVAA0aB8NLIntent_pAA06SharedU9Providing_pSiSg0ijC00ijX7Sending_pAA0pfG0CtFZTf4ennnnnnnnnn_nSo012INStartVideobK0C_Tt9g5Tf4nnnnnennnn_nAA0ab4NLv3K0V_Tg5(v62, v64, v47 & 1, v63, v57, v46, v58, v59, v61 & 1, v65, v48);

      __swift_destroy_boxed_opaque_existential_1(v65);
      return _s27PhoneCallFlowDelegatePlugin18CommonDirectActionOWOhTm_6(v24, type metadata accessor for PhoneCallNLv3Intent);
    }

    if (v35 >= v29[2])
    {
      break;
    }

    v38 = (*(v13 + 80) + 32) & ~*(v13 + 80);
    v39 = *(v13 + 72);
    (*(v13 + 16))(v20, v29 + v38 + v39 * v35, v12);
    if (one-time initialization token for emptyQuery != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v12, static ContactQuery.emptyQuery);
    if (static ContactQuery.== infix(_:_:)())
    {
      goto LABEL_18;
    }

    if (one-time initialization token for emptyNLv4Query != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v12, static ContactQuery.emptyNLv4Query);
    if (static ContactQuery.== infix(_:_:)())
    {
LABEL_18:
      result = (*(v13 + 8))(v20, v12);
      ++v35;
    }

    else
    {
      v53 = *v60;
      v54 = v37;
      v53(v55, v20, v12);
      v40 = v64;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v65[0] = v40;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v40[2] + 1, 1);
        v40 = v65[0];
      }

      v43 = v40[2];
      v42 = v40[3];
      v44 = v40;
      v45 = (v43 + 1);
      v37 = v54;
      if (v43 >= v42 >> 1)
      {
        v64 = (v43 + 1);
        v52 = v43;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v42 > 1, v43 + 1, 1);
        v45 = v64;
        v44 = v65[0];
        v43 = v52;
        v37 = v54;
      }

      ++v35;
      v44[2] = v45;
      v64 = v44;
      result = (v53)(v44 + v38 + v43 * v39, v55, v12);
    }
  }

  __break(1u);
  return result;
}

unint64_t _s27PhoneCallFlowDelegatePlugin17ContactResolutionC19updateSiriKitIntent04sirijK014contactQueries012hasEmergencyF03app6locale02nlK013sharedGlobals18multicardinalIndex0lJ11EventSender09emergencyfG0yAA013NCRResolvableK0_p_Say0I9Inference0F5QueryVGSb0i3AppG03AppCSg10Foundation6LocaleVAA0aB8NLIntent_pAA06SharedU9Providing_pSiSg0ijC00ijX7Sending_pAA0pfG0CtFZTf4ennnnnnnnnn_nSo012INStartVideobK0C_Tt9g5Tf4nnnnnennnn_nAA0ab4NLv3K0V_Tg5(void *a1, uint64_t a2, char a3, uint64_t a4, void *a5, uint64_t a6, void (*a7)(char *, char *, uint64_t), uint64_t a8, char a9, void *a10, uint64_t a11)
{
  v156 = a8;
  v179 = a5;
  v180 = a7;
  v172 = a4;
  v158 = type metadata accessor for ResolvedSiriKitContact();
  v159 = *(v158 - 8);
  __chkstk_darwin(v158);
  v157 = v143 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v154 = type metadata accessor for PhoneError(0);
  __chkstk_darwin(v154);
  v155 = (v143 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v17);
  v153 = v143 - v18;
  v171 = type metadata accessor for RecommenderType();
  v169 = *(v171 - 8);
  __chkstk_darwin(v171);
  v170 = v143 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v166 = type metadata accessor for SearchSuggestedContacts();
  v165 = *(v166 - 8);
  __chkstk_darwin(v166);
  v167 = v143 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for ContactResolverDomain();
  __chkstk_darwin(v21 - 8);
  v164 = v143 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v168 = type metadata accessor for ContactActionType();
  v162 = *(v168 - 8);
  __chkstk_darwin(v168);
  v163 = v143 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v26 = v143 - v25;
  __chkstk_darwin(v27);
  v178 = v143 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference27ContactHandleTypePreferenceVSgMd, &_s13SiriInference27ContactHandleTypePreferenceVSgMR);
  __chkstk_darwin(v29 - 8);
  v161 = v143 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v177 = v143 - v32;
  v33 = type metadata accessor for Locale();
  v175 = *(v33 - 8);
  v176 = v33;
  __chkstk_darwin(v33);
  v160 = v143 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v37 = v143 - v36;
  v174 = type metadata accessor for ContactResolverConfigHashable(0);
  __chkstk_darwin(v174);
  v39 = (v143 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v40);
  v173 = v143 - v41;
  v185[3] = type metadata accessor for PhoneCallNLv3Intent(0);
  v185[4] = &protocol witness table for PhoneCallNLv3Intent;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v185);
  outlined init with copy of PhoneCallNLv3Intent(a6, boxed_opaque_existential_1);
  v43 = type metadata accessor for ContactResolution();
  if (a3)
  {
    ObjectType = swift_getObjectType();
    v45 = dynamic_cast_existential_1_unconditional(a1, ObjectType, &protocol descriptor for CallingIntent);
    v47 = v46;
    v48 = one-time initialization token for siriPhone;
    v49 = a1;
    if (v48 != -1)
    {
      swift_once();
    }

    v50 = type metadata accessor for Logger();
    __swift_project_value_buffer(v50, static Logger.siriPhone);
    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      *v53 = 0;
      _os_log_impl(&dword_0, v51, v52, "#ContactResolution NL intent has an emergency contact. Bypassing contact resolution.", v53, 2u);
    }

    v54 = [objc_allocWithZone(HKHealthStore) init];
    v55 = [objc_allocWithZone(HKMedicalIDStore) initWithHealthStore:v54];

    v183 = type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for HKMedicalIDStore, HKMedicalIDStore_ptr);
    v184 = &protocol witness table for HKMedicalIDStore;
    *&v182 = v55;
    (*(*a11 + 80))(v45, v47, v179, &v182);

    __swift_destroy_boxed_opaque_existential_1(&v182);
    return __swift_destroy_boxed_opaque_existential_1(v185);
  }

  v56 = v43;
  _s27PhoneCallFlowDelegatePlugin17ContactResolutionC010shouldSkipfG033_4B58522B746884F3C9E10F5EDE9E49B18nlIntent02skT014contactQueriesSbAA0aB8NLIntent_p_AA013NCRResolvableT0_pSay13SiriInference0F5QueryVGSgtFZTf4nenn_nSo012INStartAudiobT0C_Tt2g5Tf4enn_nAA0ab4NLv3T0V_Tg5Tm();
  if (v57)
  {
    return __swift_destroy_boxed_opaque_existential_1(v185);
  }

  v143[1] = v56;
  v150 = a2;
  v58 = _swiftEmptyArrayStorage;
  if (v172)
  {
    v59 = App.appIdentifier.getter();
    if (v60)
    {
      v61 = v59;
      v62 = v60;
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v58 = v63;
      v64 = v63[2];
      if (v64 >= v63[3] >> 1)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v58 = v142;
      }

      v58[2] = v64 + 1;
      v65 = &v58[2 * v64];
      v65[4] = v61;
      v65[5] = v62;
    }
  }

  v149 = v26;
  if (one-time initialization token for emptyStartCallIntent != -1)
  {
    swift_once();
  }

  v66 = [static PhoneCallIntentClassNames.emptyStartCallIntent _className];
  v67 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v148 = v67;
  v69 = v68;

  v71 = *(v180 + 3);
  v70 = *(v180 + 4);
  __swift_project_boxed_opaque_existential_1(v180, v71);
  (*(v70 + 8))(&v182, v71, v70);
  __swift_project_boxed_opaque_existential_1(&v182, v183);
  v152 = v37;
  DeviceState.siriInputLocale.getter();
  v72 = a1;

  v73 = outlined bridged method (ob) of @objc INIntent.intentId.getter(v72);
  if (v74)
  {
    v75 = v73;
  }

  else
  {
    v75 = 0;
  }

  v147 = v75;
  if (v74)
  {
    v76 = v74;
  }

  else
  {
    v76 = 0xE000000000000000;
  }

  *v39 = v75;
  v39[1] = v76;
  v146 = v76;
  v39[2] = v67;
  v39[3] = v69;
  v145 = v69;
  v77 = *(v174 + 24);
  v78 = v58;
  v151 = v58;
  v79 = v174;
  v80 = v39;
  v81 = *(v175 + 16);
  v144 = v80;
  v82 = v176;
  v81(v80 + v77, v37, v176);
  *(v80 + *(v79 + 28)) = v78;

  v83 = v177;
  v179 = v72;
  static ContactResolverConfigHashable.chooseHandleTypePreference(skIntent:)(&protocol witness table for INStartVideoCallIntent, v177);
  v84 = v162;
  v85 = v149;
  v86 = v168;
  (*(v162 + 104))(v149, enum case for ContactActionType.phoneCall(_:), v168);
  (*(v84 + 32))(v178, v85, v86);
  v81(v160, v152, v82);
  static ContactResolverDomain.phone.getter();
  outlined init with copy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(v83, v161, &_s13SiriInference27ContactHandleTypePreferenceVSgMd, &_s13SiriInference27ContactHandleTypePreferenceVSgMR);
  (*(v165 + 104))(v167, enum case for SearchSuggestedContacts.ifOnlyMatchIsSuggested(_:), v166);
  (*(v169 + 104))(v170, enum case for RecommenderType.mlRecommender(_:), v171);
  v87 = v144;
  ContactResolverConfig.init(intentId:intentTypeName:locale:logRunTimeData:processNLv3SpeechAlternatives:bundleIds:domainsToSearchForHistory:searchSuggestedContacts:handleTypePreference:recommender:customGenerator:)();
  v88 = v178;
  (*(v84 + 16))(v163, v178, v86);
  ContactResolverConfig.actionType.setter();
  (*(v84 + 8))(v88, v86);
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v177, &_s13SiriInference27ContactHandleTypePreferenceVSgMd, &_s13SiriInference27ContactHandleTypePreferenceVSgMR);
  (*(v175 + 8))(v152, v176);
  v89 = v173;
  outlined init with take of ContactResolverConfigHashable(v87, v173);
  __swift_destroy_boxed_opaque_existential_1(&v182);
  v90 = *(v180 + 3);
  v91 = *(v180 + 4);
  __swift_project_boxed_opaque_existential_1(v180, v90);
  (*(v91 + 96))(&v182, v90, v91);
  v92 = v183;
  v93 = v184;
  __swift_project_boxed_opaque_existential_1(&v182, v183);
  v94 = (v93[2])(v150, v89, v92, v93);
  __swift_destroy_boxed_opaque_existential_1(&v182);
  __swift_project_boxed_opaque_existential_1(a10, a10[3]);
  type metadata accessor for SiriKitEvent();
  v95 = [v179 typeName];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  outlined init with copy of SignalProviding(v185, &v182);
  v96 = swift_allocObject();
  *(v96 + 16) = v172;
  outlined init with take of SPHConversation(&v182, v96 + 24);
  *(v96 + 64) = v94;

  LOBYTE(v181) = 0;
  SiriKitEvent.__allocating_init(stateType:taskType:statusReason:_:)();
  dispatch thunk of SiriKitEventSending.send(_:)();

  v97 = *(v94 + 16);
  if (v97)
  {
    *&v182 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v98 = v157;
    v99 = v94;
    v100 = v158;
    v180 = *(v159 + 16);
    v101 = *(v159 + 80);
    v178 = v99;
    v102 = &v99[(v101 + 32) & ~v101];
    v103 = *(v159 + 72);
    v104 = (v159 + 8);
    do
    {
      v180(v98, v102, v100);
      ResolvedSiriKitContact.person.getter();
      (*v104)(v98, v100);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v102 += v103;
      --v97;
    }

    while (v97);

    v105 = v182;
  }

  else
  {

    v105 = _swiftEmptyArrayStorage;
  }

  v106 = specialized Array.count.getter(v105);
  v107 = v173;
  v108 = v179;
  if (v106)
  {
    v109 = static ContactResolution.dedupeContacts(contacts:)(v105);

    v105 = v109;
  }

  if (a9)
  {
    if (one-time initialization token for siriPhone != -1)
    {
      swift_once();
    }

    v110 = type metadata accessor for Logger();
    __swift_project_value_buffer(v110, static Logger.siriPhone);
    v111 = Logger.logObject.getter();
    v112 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v111, v112))
    {
      goto LABEL_52;
    }

    v113 = swift_slowAlloc();
    *v113 = 0;
    v114 = "#ContactResolution multicardinalIndex is nil, overwriting contacts slot";
LABEL_51:
    _os_log_impl(&dword_0, v111, v112, v114, v113, 2u);

LABEL_52:

    INStartVideoCallIntent.overwriteContacts(newContacts:)(v105);

    _s27PhoneCallFlowDelegatePlugin18CommonDirectActionOWOhTm_6(v107, type metadata accessor for ContactResolverConfigHashable);
    return __swift_destroy_boxed_opaque_existential_1(v185);
  }

  v115 = outlined bridged method (pb) of @objc INStartVideoCallIntent.contacts.getter(v108);
  if (!v115)
  {
    if (one-time initialization token for siriPhone != -1)
    {
      swift_once();
    }

    v125 = type metadata accessor for Logger();
    __swift_project_value_buffer(v125, static Logger.siriPhone);
    v111 = Logger.logObject.getter();
    v112 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v111, v112))
    {
      goto LABEL_52;
    }

    v113 = swift_slowAlloc();
    *v113 = 0;
    v114 = "#ContactResolution siriKitIntent contacts slot is nil, overwriting contacts slot";
    goto LABEL_51;
  }

  v116 = v115;
  if (!specialized Array.count.getter(v105))
  {
    goto LABEL_41;
  }

  specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v105 & 0xC000000000000001) == 0, v105);
  if ((v105 & 0xC000000000000001) != 0)
  {
    v117 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    v117 = *(v105 + 32);
  }

  v118 = v117;
  v119 = v156;
  if (v156 < 0 || specialized Array.count.getter(v116) <= v119 || (v120 = specialized Array.count.getter(v105), specialized Array.count.getter(v116) < v120))
  {

LABEL_41:
    if (one-time initialization token for siriPhone != -1)
    {
      swift_once();
    }

    v121 = type metadata accessor for Logger();
    __swift_project_value_buffer(v121, static Logger.siriPhone);
    v122 = Logger.logObject.getter();
    v123 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v122, v123))
    {
      v124 = swift_slowAlloc();
      *v124 = 0;
      _os_log_impl(&dword_0, v122, v123, "#ContactResolution: overwriting contacts slot", v124, 2u);
    }

    INStartVideoCallIntent.overwriteContacts(newContacts:)(v105);
    goto LABEL_46;
  }

  if (one-time initialization token for siriPhone != -1)
  {
    swift_once();
  }

  v127 = type metadata accessor for Logger();
  __swift_project_value_buffer(v127, static Logger.siriPhone);
  v128 = Logger.logObject.getter();
  v129 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v128, v129))
  {
    v130 = swift_slowAlloc();
    *v130 = 134217984;
    *(v130 + 4) = v156;
    _os_log_impl(&dword_0, v128, v129, "#ContactResolution updating person at index %ld", v130, 0xCu);
  }

  v131 = specialized Array.count.getter(v116);
  v132 = v156;
  if (v131 <= v156)
  {
    v136 = v155;
    *v155 = v156;
    swift_storeEnumTagMultiPayload();
    v137 = v153;
    v138 = v132;
    PhoneError.logged()(v153);
    _s27PhoneCallFlowDelegatePlugin18CommonDirectActionOWOhTm_6(v136, type metadata accessor for PhoneError);
    _s27PhoneCallFlowDelegatePlugin18CommonDirectActionOWOhTm_6(v137, type metadata accessor for PhoneError);
    v139 = Logger.logObject.getter();
    v140 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v139, v140))
    {
      v141 = swift_slowAlloc();
      *v141 = 134218240;
      *(v141 + 4) = v138;
      *(v141 + 12) = 2048;
      *(v141 + 14) = specialized Array.count.getter(v116);
      _os_log_impl(&dword_0, v139, v140, "#ContactResolution multicardinalIndex %ld out of bounds for contacts array of length %ld, falling back to overwriting contacts slot", v141, 0x16u);
    }

    INStartVideoCallIntent.overwriteContacts(newContacts:)(v105);
    goto LABEL_46;
  }

  v133 = v118;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (v116 >> 62 || (result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()();
    v116 = result;
  }

  if (*(&dword_10 + (v116 & 0xFFFFFFFFFFFFFF8)) > v132)
  {
    v134 = *(&stru_20.cmd + 8 * v132 + (v116 & 0xFFFFFFFFFFFFFF8));
    *(&stru_20.cmd + 8 * v132 + (v116 & 0xFFFFFFFFFFFFFF8)) = v133;

    INStartVideoCallIntent.overwriteContacts(newContacts:)(v135);

LABEL_46:

    _s27PhoneCallFlowDelegatePlugin18CommonDirectActionOWOhTm_6(v107, type metadata accessor for ContactResolverConfigHashable);

    return __swift_destroy_boxed_opaque_existential_1(v185);
  }

  __break(1u);
  return result;
}

uint64_t _s27PhoneCallFlowDelegatePlugin18CommonDirectActionOWOhTm_6(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_23_1();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t objectdestroyTm_13()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t lazy protocol witness table accessor for type StartAudioCallRCHFlowDelegate and conformance StartAudioCallRCHFlowDelegate(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t OUTLINED_FUNCTION_29_34()
{

  return specialized StartAudioCallRCHFlowDelegate.init(sharedGlobals:appResolved:biomeEventSender:)(v2, v1, v5, v0, v3, v4);
}

uint64_t StartCallAceViewProvider.__allocating_init(templatingService:isDirectInvocation:sharedGlobals:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  swift_allocObject();
  v5 = OUTLINED_FUNCTION_61();
  return StartCallAceViewProvider.init(templatingService:isDirectInvocation:sharedGlobals:)(v5, v4, a3);
}

uint64_t StartCallAceViewProvider.init(templatingService:isDirectInvocation:sharedGlobals:)(uint64_t a1, char a2, void *a3)
{
  *(v3 + direct field offset for StartCallAceViewProvider.templatingService) = a1;
  outlined init with copy of SignalProviding(a3, v3 + direct field offset for StartCallAceViewProvider.sharedGlobals);
  *(v3 + direct field offset for StartCallAceViewProvider.isDirectInvocation) = a2;
  v6 = DefaultAceViewProvider.init()();
  __swift_destroy_boxed_opaque_existential_1(a3);
  return v6;
}

uint64_t StartCallAceViewProvider.makeAceViewsForResolveNeedsConfirmation(app:parameterName:intent:intentResolutionResult:_:)(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;

  v16._countAndFlagsBits = a2;
  v16._object = a3;
  if (PhoneCallSlotNames.init(rawValue:)(v16).value == PhoneCallFlowDelegatePlugin_PhoneCallSlotNames_contacts)
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v33 = a7;
    v17 = type metadata accessor for Logger();
    v18 = OUTLINED_FUNCTION_12_1(v17, static Logger.siriPhone);
    v19 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = OUTLINED_FUNCTION_65_0();
      *v20 = 0;
      _os_log_impl(&dword_0, v18, v19, "#StartCallAceViewProvider Building call/cancel confirmation buttons", v20, 2u);
      OUTLINED_FUNCTION_26_0(v20);
    }

    v21 = *(v8 + direct field offset for StartCallAceViewProvider.templatingService);
    v22 = (v8 + direct field offset for StartCallAceViewProvider.sharedGlobals);
    v23 = *(v8 + direct field offset for StartCallAceViewProvider.isDirectInvocation);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_16_4(v25))
    {
      v26 = OUTLINED_FUNCTION_65_0();
      *v26 = 0;
      _os_log_impl(&dword_0, v24, v25, "#StartCallViewBuilders Providing CallCancelSlotConfirmationButtonsBuilder", v26, 2u);
      OUTLINED_FUNCTION_26_0(v26);
    }

    v27 = v22[3];
    v28 = v22[4];
    __swift_project_boxed_opaque_existential_1(v22, v27);
    (*(v28 + 8))(v35, v27, v28);
    outlined init with copy of SignalProviding(v22, &v37);
    v34[0] = a4;
    v34[1] = v21;
    v35[5] = a1;
    v35[6] = a5;
    v36 = v23;
    v29 = a4;

    v30 = a5;
    specialized IdiomSensitiveViewBuilder.makeViews(utteranceViews:_:)(_swiftEmptyArrayStorage, a6, v33);
    return outlined destroy of CallCancelSlotConfirmationButtonsBuilder(v34);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow22DefaultAceViewProviderCySo17INStartCallIntentCSo0hiJ8ResponseCGMd, &_s11SiriKitFlow22DefaultAceViewProviderCySo17INStartCallIntentCSo0hiJ8ResponseCGMR);
    v32 = method lookup function for DefaultAceViewProvider();

    return v32(a1, a2, a3, a4, a5, a6, a7);
  }
}

uint64_t StartCallAceViewProvider.makeAceViewsForResolveNeedsDisambiguation(app:parameterName:intent:utteranceViews:disambiguationList:deviceIsLocked:_:)(uint64_t a1, uint64_t a2, void *a3, void *a4, unint64_t a5, void *a6, char a7, void (*a8)(uint64_t, void), uint64_t a9)
{
  v18 = type metadata accessor for CATOption();
  __chkstk_darwin(v18 - 8);

  v19._countAndFlagsBits = a2;
  v19._object = a3;
  if (PhoneCallSlotNames.init(rawValue:)(v19).value == PhoneCallFlowDelegatePlugin_PhoneCallSlotNames_contacts)
  {
    v58 = v9;
    v59 = a8;
    v20 = SiriKitDisambiguationList.rawItems.getter();
    v21 = specialized _arrayConditionalCast<A, B>(_:)(v20);

    if (v21)
    {
      static EmergencyUtils.isForeignEmergencyDisambiguation(_:)(v21);
      v23 = v22;

      if (v23)
      {
        v24 = *(v58 + direct field offset for StartCallAceViewProvider.templatingService);
        v25 = direct field offset for StartCallAceViewProvider.sharedGlobals;
        v26 = *(v58 + direct field offset for StartCallAceViewProvider.isDirectInvocation);
        if (one-time initialization token for siriPhone != -1)
        {
          OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
        }

        v27 = type metadata accessor for Logger();
        v28 = OUTLINED_FUNCTION_12_1(v27, static Logger.siriPhone);
        v29 = static os_log_type_t.debug.getter();
        if (OUTLINED_FUNCTION_16_4(v29))
        {
          v30 = OUTLINED_FUNCTION_65_0();
          *v30 = 0;
          OUTLINED_FUNCTION_7_80(&dword_0, v31, v32, "#StartCallViewBuilders Providing ForeignEmergencyButtonsBuilder");
          OUTLINED_FUNCTION_26_0(v30);
        }

        outlined init with copy of SignalProviding(v58 + v25, v62);
        v60 = v24;
        v61 = a6;
        v64[8] = v26;

        specialized IdiomSensitiveViewBuilder.makeViews(utteranceViews:_:)(a5, v59, a9);
        return outlined destroy of ForeignEmergencyButtonsBuilder(&v60);
      }

      else
      {
        v47 = direct field offset for StartCallAceViewProvider.sharedGlobals;
        type metadata accessor for PhoneCallDisplayTextCATs(0);
        static CATOption.defaultMode.getter();
        v57 = CATWrapper.__allocating_init(options:globals:)();
        if (one-time initialization token for siriPhone != -1)
        {
          OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
        }

        v48 = type metadata accessor for Logger();
        v49 = OUTLINED_FUNCTION_12_1(v48, static Logger.siriPhone);
        v50 = static os_log_type_t.debug.getter();
        if (OUTLINED_FUNCTION_16_4(v50))
        {
          v56 = v47;
          v51 = OUTLINED_FUNCTION_65_0();
          *v51 = 0;
          OUTLINED_FUNCTION_7_80(&dword_0, v52, v53, "#StartCallViewBuilders Providing DefaultDisambiguationBuilder");
          v54 = v51;
          v47 = v56;
          OUTLINED_FUNCTION_26_0(v54);
        }

        outlined init with copy of SignalProviding(v58 + v47, v64);
        v60 = a1;
        v61 = a4;
        v62[0] = a2;
        v62[1] = a3;
        v62[2] = a6;
        v63 = a7 & 1;
        v65 = v57;

        v55 = a4;
        specialized IdiomSensitiveViewBuilder.makeViews(utteranceViews:_:)(a5, v59, a9);
        return outlined destroy of DefaultDisambiguationBuilder<INStartCallIntent>(&v60);
      }
    }

    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v40 = type metadata accessor for Logger();
    v41 = OUTLINED_FUNCTION_12_1(v40, static Logger.siriPhone);
    v42 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = OUTLINED_FUNCTION_65_0();
      *v43 = 0;
      OUTLINED_FUNCTION_33(&dword_0, v44, v45, "#StartCallAceViewProvider DisambiguationItem for contacts slot was not an INPerson");
      OUTLINED_FUNCTION_26_0(v43);
    }

    if (!(a5 >> 62))
    {
      goto LABEL_20;
    }

LABEL_29:
    OUTLINED_FUNCTION_6_90();
    OUTLINED_FUNCTION_61();

    v46 = _bridgeCocoaArray<A>(_:)();

    goto LABEL_21;
  }

  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v34 = type metadata accessor for Logger();
  v35 = OUTLINED_FUNCTION_12_1(v34, static Logger.siriPhone);
  v36 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = OUTLINED_FUNCTION_65_0();
    *v37 = 0;
    OUTLINED_FUNCTION_33(&dword_0, v38, v39, "#StartCallAceViewProvider Not building disambiguation snippet - not disambiguating contacts");
    OUTLINED_FUNCTION_26_0(v37);
  }

  if (a5 >> 62)
  {
    goto LABEL_29;
  }

LABEL_20:

  dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
  type metadata accessor for SAAceView();
  v46 = a5;
LABEL_21:
  a8(v46, 0);
}

void StartCallAceViewProvider.makeAceViewsForConfirmIntentWithUser(app:intent:intentResponse:_:)(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v12 = v5 + direct field offset for StartCallAceViewProvider.sharedGlobals;
  v13 = *(v5 + direct field offset for StartCallAceViewProvider.sharedGlobals + 24);
  v14 = *(v5 + direct field offset for StartCallAceViewProvider.sharedGlobals + 32);
  __swift_project_boxed_opaque_existential_1((v5 + direct field offset for StartCallAceViewProvider.sharedGlobals), v13);
  (*(v14 + 8))(v27, v13, v14);
  if ((static EmergencyUtils.requiresEmergencyConfirmation(intent:intentResponse:)(a2, a3) & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_1(v27);
    goto LABEL_9;
  }

  v15 = static EmergencyUtils.shouldOpenMicForEmergency(intent:deviceState:)(a2);
  __swift_destroy_boxed_opaque_existential_1(v27);
  if (v15)
  {
LABEL_9:
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow22DefaultAceViewProviderCySo17INStartCallIntentCSo0hiJ8ResponseCGMd, &_s11SiriKitFlow22DefaultAceViewProviderCySo17INStartCallIntentCSo0hiJ8ResponseCGMR);
    v25 = method lookup function for DefaultAceViewProvider();
    v25(a1, a2, a3, a4, a5);
    goto LABEL_10;
  }

  v16 = *(v6 + direct field offset for StartCallAceViewProvider.templatingService);
  v17 = *(v6 + direct field offset for StartCallAceViewProvider.isDirectInvocation);
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v18 = type metadata accessor for Logger();
  v19 = OUTLINED_FUNCTION_12_1(v18, static Logger.siriPhone);
  v20 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_16_4(v20))
  {
    v26 = v17;
    v21 = OUTLINED_FUNCTION_65_0();
    *v21 = 0;
    _os_log_impl(&dword_0, v19, v20, "#StartCallViewBuilders Providing EmergencyCountdownBuilder", v21, 2u);
    v22 = v21;
    v17 = v26;
    OUTLINED_FUNCTION_26_0(v22);
  }

  outlined init with copy of SignalProviding(v12, v28);
  v27[0] = v16;
  v27[1] = a1;
  v27[2] = a2;
  v27[3] = a3;
  v28[40] = v17;

  v23 = a2;
  v24 = a3;
  specialized IdiomSensitiveViewBuilder.makeViews(utteranceViews:_:)(_swiftEmptyArrayStorage, a4, a5);
  outlined destroy of EmergencyCountdownBuilder(v27);
LABEL_10:
  OUTLINED_FUNCTION_4_86();
}

void StartCallAceViewProvider.makeAceViewsForLaunchAppWithButton(app:intent:intentResolutionResult:intentResponse:utteranceViews:_:)(uint64_t a1, void *a2, id a3, void *a4, unint64_t a5, void (*a6)(uint64_t, void), uint64_t a7)
{
  if (!a3 || [a3 resolutionResultCode] != &dword_0 + 1 || (objc_opt_self(), (v15 = swift_dynamicCastObjCClass()) == 0))
  {
    v18 = *(v7 + direct field offset for StartCallAceViewProvider.templatingService);
    v27[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0aB24BaseCatTemplatingServiceCySo07INStartB6IntentCSo0jbK8ResponseCGMd, &_s27PhoneCallFlowDelegatePlugin0aB24BaseCatTemplatingServiceCySo07INStartB6IntentCSo0jbK8ResponseCGMR);
    v27[4] = &protocol witness table for PhoneCallBaseCatTemplatingService<A, B>;
    v27[0] = v18;
    v19 = direct field offset for StartCallAceViewProvider.sharedGlobals;

    static StartCallViewBuilders.makeErrorButtonBuilder(templatingService:app:intent:intentResponse:sharedGlobals:)(a1, a2, a4, (v7 + v19), v24);
    __swift_destroy_boxed_opaque_existential_1(v27);
    v20 = v25;
    v21 = v26;
    __swift_project_boxed_opaque_existential_1(v24, v25);
    (*(v21 + 8))(a5, a6, a7, v20, v21);
    __swift_destroy_boxed_opaque_existential_1(v24);
    goto LABEL_8;
  }

  v16 = v15;
  v17 = a3;
  if ([a2 preferredCallProvider] == &dword_0 + 2 && objc_msgSend(v16, "unsupportedReason") - 5 <= &dword_0 + 1)
  {
    static StartCallViewBuilders.makeFaceTimeSettingsViewBuilder(templatingService:sharedGlobals:)(*(v7 + direct field offset for StartCallAceViewProvider.templatingService), v7 + direct field offset for StartCallAceViewProvider.sharedGlobals, v24);
    specialized IdiomSensitiveViewBuilder.makeViews(utteranceViews:_:)(a5, a6, a7);

    outlined destroy of FaceTimeSettingsBuilder(v24);
LABEL_8:
    OUTLINED_FUNCTION_4_86();
    return;
  }

  if (a5 >> 62)
  {
    if ((a5 & 0x8000000000000000) != 0)
    {
      v22 = a5;
    }

    else
    {
      v22 = a5 & 0xFFFFFFFFFFFFFF8;
    }

    type metadata accessor for SAAceView();

    _bridgeCocoaArray<A>(_:)();
    OUTLINED_FUNCTION_61();
  }

  else
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    type metadata accessor for SAAceView();
    v22 = a5;
  }

  a6(v22, 0);

  OUTLINED_FUNCTION_4_86();
}

uint64_t StartCallAceViewProvider.__ivar_destroyer()
{

  v1 = (v0 + direct field offset for StartCallAceViewProvider.sharedGlobals);

  return __swift_destroy_boxed_opaque_existential_1(v1);
}

uint64_t StartCallAceViewProvider.deinit()
{
  v0 = DefaultAceViewProvider.deinit();

  __swift_destroy_boxed_opaque_existential_1((v0 + direct field offset for StartCallAceViewProvider.sharedGlobals));
  return v0;
}

uint64_t StartCallAceViewProvider.__deallocating_deinit()
{
  StartCallAceViewProvider.deinit();

  return swift_deallocClassInstance();
}

uint64_t outlined destroy of DefaultDisambiguationBuilder<INStartCallIntent>(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin28DefaultDisambiguationBuilder33_6270EEFB01DDA464E81F258DCCAFA0E4LLVySo07INStartB6IntentCGMd, &_s27PhoneCallFlowDelegatePlugin28DefaultDisambiguationBuilder33_6270EEFB01DDA464E81F258DCCAFA0E4LLVySo07INStartB6IntentCGMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for StartCallAceViewProvider(uint64_t a1)
{
  result = type metadata singleton initialization cache for StartCallAceViewProvider;
  if (!type metadata singleton initialization cache for StartCallAceViewProvider)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void PhoneStartCallIntent.__allocating_init(intent:isRelationshipRequest:)(uint64_t a1)
{
  swift_getObjectType();
  v1 = OUTLINED_FUNCTION_1_123();

  specialized PhoneStartCallIntent.__allocating_init(intent:isRelationshipRequest:)(v1, v2, v3, v4, v5);
}

id static PhoneStartCallIntent.makeForSlotTemplating(intent:isRelationshipRequest:)(uint64_t a1)
{
  swift_getObjectType();
  v1 = OUTLINED_FUNCTION_1_123();

  return specialized static PhoneStartCallIntent.makeForSlotTemplating(intent:isRelationshipRequest:)(v1, v2, v3, v4, v5);
}

uint64_t static DialogCalendar.make(date:)(uint64_t a1)
{
  Date.timeIntervalSince1970.getter();
  type metadata accessor for DialogCalendar.Builder();
  swift_allocObject();
  DialogCalendar.Builder.init(secs:)();
  v1 = dispatch thunk of DialogCalendar.Builder.build()();

  return v1;
}

uint64_t static PhoneCallGroup.make(groupName:groupId:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  __chkstk_darwin(v8 - 8);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v28 - v12;
  if (a4)
  {
    v14 = a3;
  }

  else
  {
    v14 = 0;
  }

  if (a4)
  {
    v15 = a4;
  }

  else
  {
    v15 = 0xE000000000000000;
  }

  if (a2)
  {
    v16 = a1;
  }

  else
  {
    v16 = 0;
  }

  if (a2)
  {
    v17 = a2;
  }

  else
  {
    v17 = 0xE000000000000000;
  }

  v18 = HIBYTE(v15) & 0xF;
  if ((v15 & 0x2000000000000000) == 0)
  {
    v18 = v14 & 0xFFFFFFFFFFFFLL;
  }

  if (v18)
  {
    goto LABEL_19;
  }

  v19 = HIBYTE(v17) & 0xF;
  if ((v17 & 0x2000000000000000) == 0)
  {
    v19 = v16 & 0xFFFFFFFFFFFFLL;
  }

  if (v19)
  {
LABEL_19:
    type metadata accessor for PhoneCallGroup(0);

    String.toSpeakableString.getter();

    v20 = type metadata accessor for SpeakableString();
    OUTLINED_FUNCTION_23_3();
    __swift_storeEnumTagSinglePayload(v21, v22, v23, v20);
    String.toSpeakableString.getter();

    OUTLINED_FUNCTION_23_3();
    __swift_storeEnumTagSinglePayload(v24, v25, v26, v20);
    return PhoneCallGroup.__allocating_init(groupName:groupId:)(v13, v10);
  }

  else
  {

    return 0;
  }
}

void specialized PhoneStartCallIntent.__allocating_init(intent:isRelationshipRequest:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v98 = a4;
  v105 = a2;
  v9 = 0x4E574F4E4B4E55;
  v104 = type metadata accessor for Locale();
  OUTLINED_FUNCTION_7();
  v11 = v10;
  __chkstk_darwin(v12);
  v103 = &v90 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  __chkstk_darwin(v14 - 8);
  v16 = &v90 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v97 = &v90 - v18;
  __chkstk_darwin(v19);
  v21 = &v90 - v20;
  v23 = __chkstk_darwin(v22);
  v96 = &v90 - v24;
  v25 = *(a5 + 24);
  v99 = a5;
  v26 = v25(a4, a5, v23);
  v94 = a3;
  if (v26)
  {
    BackingType = INCallCapabilityGetBackingType();
    if (BackingType == 2)
    {
      v28 = @"VIDEO_CALL";
    }

    else
    {
      if (BackingType != 1)
      {
        OUTLINED_FUNCTION_4_87();
        v28 = [v30 stringWithFormat:@"(unknown: %i)"];
        goto LABEL_9;
      }

      v28 = @"AUDIO_CALL";
    }

    v29 = v28;
LABEL_9:
    v31 = v28;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  SpeakableString.init(print:speak:)();
  v32 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_23_3();
  __swift_storeEnumTagSinglePayload(v33, v34, v35, v32);
  v36 = v98;
  v37 = v99[4](v98);
  v100 = a1;
  if (!v37)
  {
    v40 = 0x4E574F4E4B4E55;
    goto LABEL_21;
  }

  v38 = INCallAudioRouteGetBackingType();
  switch(v38)
  {
    case 4:
      v39 = @"HEY_SIRI_AUDIO_ROUTE";
      break;
    case 3:
      v39 = @"BLUETOOTH_AUDIO_ROUTE";
      break;
    case 2:
      v39 = @"SPEAKERPHONE_AUDIO_ROUTE";
      break;
    default:
      OUTLINED_FUNCTION_4_87();
      v39 = [v42 stringWithFormat:@"(unknown: %i)"];
      goto LABEL_20;
  }

  v41 = v39;
LABEL_20:
  v43 = v39;
  v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  v36 = v98;
LABEL_21:
  OUTLINED_FUNCTION_2_117(v40);
  v92 = v21;
  OUTLINED_FUNCTION_23_3();
  __swift_storeEnumTagSinglePayload(v44, v45, v46, v32);
  OUTLINED_FUNCTION_3_113();
  if (!v47(v36))
  {
    v50 = 0x4E574F4E4B4E55;
    goto LABEL_32;
  }

  v48 = INPreferredCallProviderGetBackingType();
  switch(v48)
  {
    case 4:
      v49 = @"THIRD_PARTY_PROVIDER";
      break;
    case 3:
      v49 = @"FACETIME_PROVIDER";
      break;
    case 2:
      v49 = @"TELEPHONY_PROVIDER";
      break;
    default:
      OUTLINED_FUNCTION_4_87();
      v49 = [v52 stringWithFormat:@"(unknown: %i)", v94];
      goto LABEL_31;
  }

  v51 = v49;
LABEL_31:
  v53 = v49;
  v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  v36 = v98;
LABEL_32:
  OUTLINED_FUNCTION_2_117(v50);
  OUTLINED_FUNCTION_23_3();
  __swift_storeEnumTagSinglePayload(v54, v55, v56, v32);
  if (v99[2](v36))
  {
    switch(INCallDestinationTypeGetBackingType())
    {
      case 1u:
        v57 = @"NORMAL_DESTINATION";
        goto LABEL_40;
      case 2u:
        v57 = @"EMERGENCY_DESTINATION";
        goto LABEL_40;
      case 3u:
        v57 = @"VOICEMAIL_DESTINATION";
        goto LABEL_40;
      case 4u:
        v57 = @"REDIAL_DESTINATION";
        goto LABEL_40;
      case 5u:
        v57 = @"CALL_BACK_DESTINATION";
LABEL_40:
        v58 = v57;
        break;
      default:
        OUTLINED_FUNCTION_4_87();
        v57 = [v89 stringWithFormat:@"(unknown: %i)"];
        break;
    }

    v59 = v57;
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  OUTLINED_FUNCTION_2_117(v9);
  v93 = v16;
  OUTLINED_FUNCTION_23_3();
  __swift_storeEnumTagSinglePayload(v60, v61, v62, v32);
  OUTLINED_FUNCTION_3_113();
  v63 = v100;
  v65 = v64(v36);
  v66 = _swiftEmptyArrayStorage;
  v95 = _swiftEmptyArrayStorage;
  if (v65)
  {
    v67 = v65;
    v108 = _swiftEmptyArrayStorage;
    v106 = specialized Array.count.getter(v65);
    v68 = 0;
    v101 = v67 & 0xFFFFFFFFFFFFFF8;
    v102 = v67 & 0xC000000000000001;
    v91 = _swiftEmptyArrayStorage;
    while (1)
    {
      if (v106 == v68)
      {

        v63 = v100;
        v36 = v98;
        v66 = v91;
        goto LABEL_55;
      }

      if (v102)
      {
        v69 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v68 >= *(v101 + 16))
        {
          goto LABEL_72;
        }

        v69 = *(v67 + 8 * v68 + 32);
      }

      v70 = v69;
      v71 = v68 + 1;
      if (__OFADD__(v68, 1))
      {
        break;
      }

      type metadata accessor for PhonePerson(0);
      static Device.current.getter();
      __swift_project_boxed_opaque_existential_1(v107, v107[3]);
      v72 = v103;
      dispatch thunk of DeviceState.siriLocale.getter();
      __swift_destroy_boxed_opaque_existential_1(v107);
      v73 = static PhonePerson.make(phonePerson:options:locale:)(v70, v105 & 1, v72);

      (*(v11 + 8))(v72, v104);
      ++v68;
      if (v73)
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*(&dword_10 + (v108 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v108 & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v91 = v108;
        v68 = v71;
      }
    }

    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
  }

  else
  {
LABEL_55:
    type metadata accessor for PhonePersonList();
    v74 = PhonePersonList.__allocating_init(list:)(v66);
    v75 = v99[5](v36);
    if (v75)
    {
      v76 = v75;
      v106 = v74;
      v107[0] = _swiftEmptyArrayStorage;
      v77 = specialized Array.count.getter(v75);
      v78 = 0;
      while (v77 != v78)
      {
        if ((v76 & 0xC000000000000001) != 0)
        {
          v79 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v78 >= *(&dword_10 + (v76 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_74;
          }

          v79 = *(v76 + 8 * v78 + 32);
        }

        v80 = v79;
        v81 = v78 + 1;
        if (__OFADD__(v78, 1))
        {
          goto LABEL_73;
        }

        type metadata accessor for PhoneCallGroup(0);
        v82 = outlined bridged method (pb) of @objc INCallGroup.groupName.getter(v80);
        v84 = v83;
        v85 = outlined bridged method (pb) of @objc INCallGroup.groupId.getter(v80);
        v87 = static PhoneCallGroup.make(groupName:groupId:)(v82, v84, v85, v86);

        ++v78;
        if (v87)
        {
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*(&dword_10 + (v107[0] & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v107[0] & 0xFFFFFFFFFFFFFF8)) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v95 = v107[0];
          v78 = v81;
        }
      }

      v88 = v95;
      v74 = v106;
    }

    else
    {

      v88 = _swiftEmptyArrayStorage;
    }

    PhoneStartCallIntent.__allocating_init(callCapability:audioRoute:preferredCallProvider:destinationType:contacts:callGroups:)(v96, v92, v97, v93, v74, v88);
  }
}

id specialized static PhoneStartCallIntent.makeForSlotTemplating(intent:isRelationshipRequest:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v50 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  __chkstk_darwin(v8 - 8);
  v10 = &v40 - v9;
  v49 = type metadata accessor for Locale();
  OUTLINED_FUNCTION_7();
  v12 = v11;
  __chkstk_darwin(v13);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PhoneStartCallIntent.Builder(0);
  swift_allocObject();
  v16 = PhoneStartCallIntent.Builder.init()();
  OUTLINED_FUNCTION_3_113();
  v18 = v17(a4);
  v46 = _swiftEmptyArrayStorage;
  if (!v18)
  {
LABEL_14:
    type metadata accessor for PhonePersonList();
    v26 = PhonePersonList.__allocating_init(list:)(v46);
    v27 = (*(*v16 + 352))(v26);

    OUTLINED_FUNCTION_3_113();
    if (!v28(a4))
    {
      goto LABEL_25;
    }

    v29 = INPreferredCallProviderGetBackingType();
    switch(v29)
    {
      case 4:
        v30 = @"THIRD_PARTY_PROVIDER";
        break;
      case 3:
        v30 = @"FACETIME_PROVIDER";
        break;
      case 2:
        v30 = @"TELEPHONY_PROVIDER";
        break;
      default:
        v30 = [NSString stringWithFormat:@"(unknown: %i)", v29];
        goto LABEL_24;
    }

    v31 = v30;
LABEL_24:
    v32 = v30;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

LABEL_25:
    SpeakableString.init(print:speak:)();
    type metadata accessor for SpeakableString();
    OUTLINED_FUNCTION_23_3();
    __swift_storeEnumTagSinglePayload(v33, v34, v35, v36);
    v37 = (*(*v27 + 320))(v10);

    v38 = outlined destroy of SpeakableString?(v10);
    v39 = (*(*v37 + 376))(v38);

    return v39;
  }

  v19 = v18;
  v41 = v16;
  v42 = a5;
  v43 = a1;
  v44 = a4;
  v45 = v10;
  v53 = _swiftEmptyArrayStorage;
  result = specialized Array.count.getter(v18);
  v51 = result;
  v21 = 0;
  v47 = v19 & 0xFFFFFFFFFFFFFF8;
  v48 = v19 & 0xC000000000000001;
  v22 = (v12 + 8);
  while (1)
  {
    if (v51 == v21)
    {

      a4 = v44;
      v10 = v45;
      v16 = v41;
      goto LABEL_14;
    }

    if (v48)
    {
      result = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v21 >= *(v47 + 16))
      {
        goto LABEL_27;
      }

      result = *(v19 + 8 * v21 + 32);
    }

    v23 = result;
    v24 = (v21 + 1);
    if (__OFADD__(v21, 1))
    {
      break;
    }

    type metadata accessor for PhonePerson(0);
    static Device.current.getter();
    __swift_project_boxed_opaque_existential_1(v52, v52[3]);
    dispatch thunk of DeviceState.siriLocale.getter();
    __swift_destroy_boxed_opaque_existential_1(v52);
    v25 = static PhonePerson.make(phonePerson:options:locale:)(v23, v50 & 1, v15);

    result = (*v22)(v15, v49);
    ++v21;
    if (v25)
    {
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*(&dword_10 + (v53 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v53 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      result = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v46 = v53;
      v21 = v24;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

PhoneCallFlowDelegatePlugin::StartCallCATPatternsIdentifiers_optional __swiftcall StartCallCATPatternsIdentifiers.init(rawValue:)(Swift::String rawValue)
{
  v1 = _findStringSwitchCaseWithCache(cases:string:cache:)();

  if (v1 >= 0x24)
  {
    return 36;
  }

  else
  {
    return v1;
  }
}

unint64_t StartCallCATPatternsIdentifiers.rawValue.getter(char a1)
{
  result = 0xD000000000000019;
  switch(a1)
  {
    case 1:
    case 24:
    case 34:
      result = 0xD00000000000002ALL;
      break;
    case 2:
    case 6:
    case 14:
    case 31:
      result = 0xD00000000000002FLL;
      break;
    case 3:
      result = 0xD000000000000025;
      break;
    case 4:
      result = 0xD000000000000022;
      break;
    case 5:
    case 7:
      result = 0xD000000000000031;
      break;
    case 8:
    case 26:
      result = 0xD000000000000033;
      break;
    case 9:
    case 17:
      result = 0xD000000000000024;
      break;
    case 10:
      result = 0xD000000000000016;
      break;
    case 11:
      result = 0xD00000000000001CLL;
      break;
    case 12:
      result = 0xD000000000000032;
      break;
    case 13:
      result = 0xD00000000000001FLL;
      break;
    case 15:
      result = 0xD000000000000021;
      break;
    case 16:
      result = 0xD00000000000001BLL;
      break;
    case 18:
    case 27:
      result = 0xD00000000000002BLL;
      break;
    case 19:
      result = 0xD000000000000023;
      break;
    case 20:
    case 28:
      result = 0xD000000000000036;
      break;
    case 21:
      result = 0xD00000000000003ALL;
      break;
    case 22:
      result = 0xD000000000000037;
      break;
    case 23:
      result = 0xD00000000000003BLL;
      break;
    case 25:
      result = 0xD000000000000038;
      break;
    case 29:
      result = 0xD00000000000002DLL;
      break;
    case 30:
      result = 0xD000000000000034;
      break;
    case 32:
      result = 0xD000000000000027;
      break;
    case 33:
      result = 0xD000000000000028;
      break;
    case 35:
      result = 0xD00000000000003ELL;
      break;
    default:
      return result;
  }

  return result;
}

PhoneCallFlowDelegatePlugin::StartCallCATPatternsIdentifiers_optional protocol witness for RawRepresentable.init(rawValue:) in conformance StartCallCATPatternsIdentifiers@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::StartCallCATPatternsIdentifiers_optional *a2@<X8>)
{
  result.value = StartCallCATPatternsIdentifiers.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance StartCallCATPatternsIdentifiers@<X0>(unint64_t *a1@<X8>)
{
  result = StartCallCATPatternsIdentifiers.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t StartCallConfirmContactsParameters.confirmAction.getter()
{
  return StartCallConfirmContactsParameters.confirmAction.getter();
}

{
  v0 = OUTLINED_FUNCTION_81_8();
  v2 = v1(v0);
  v3 = OUTLINED_FUNCTION_54_0(*(v2 + 20));
  return outlined init with copy of SpeakableString?(v3, v4, v5, v6);
}

uint64_t StartCallConfirmContactsParameters.confirmAction.modify()
{
  v0 = OUTLINED_FUNCTION_2_4();
  type metadata accessor for StartCallConfirmContactsParameters(v0);
  return OUTLINED_FUNCTION_9_11();
}

uint64_t StartCallConfirmContactsParameters.contactHeader.getter()
{
  return StartCallConfirmContactsParameters.contactHeader.getter();
}

{
  v0 = OUTLINED_FUNCTION_81_8();
  v2 = v1(v0);
  v3 = OUTLINED_FUNCTION_54_0(*(v2 + 24));
  return outlined init with copy of SpeakableString?(v3, v4, v5, v6);
}

uint64_t StartCallConfirmContactsParameters.contactHeader.modify()
{
  v0 = OUTLINED_FUNCTION_2_4();
  type metadata accessor for StartCallConfirmContactsParameters(v0);
  return OUTLINED_FUNCTION_9_11();
}

uint64_t StartCallConfirmContactsParameters.contactToConfirm.modify()
{
  v0 = OUTLINED_FUNCTION_2_4();
  type metadata accessor for StartCallConfirmContactsParameters(v0);
  return OUTLINED_FUNCTION_9_11();
}

uint64_t StartCallConfirmContactsParameters.inferenceSource.getter()
{
  return StartCallConfirmContactsParameters.inferenceSource.getter();
}

{
  v0 = OUTLINED_FUNCTION_81_8();
  v2 = v1(v0);
  v3 = OUTLINED_FUNCTION_54_0(*(v2 + 32));
  return outlined init with copy of SpeakableString?(v3, v4, v5, v6);
}

uint64_t StartCallConfirmContactsParameters.inferenceSource.modify()
{
  v0 = OUTLINED_FUNCTION_2_4();
  type metadata accessor for StartCallConfirmContactsParameters(v0);
  return OUTLINED_FUNCTION_9_11();
}

uint64_t StartCallConfirmContactsParameters.redactedContactToConfirm.getter()
{
  type metadata accessor for StartCallConfirmContactsParameters(0);
}

uint64_t StartCallConfirmContactsParameters.redactedContactToConfirm.setter()
{
  v2 = OUTLINED_FUNCTION_2_4();
  v3 = *(type metadata accessor for StartCallConfirmContactsParameters(v2) + 48);

  *(v1 + v3) = v0;
  return result;
}

uint64_t StartCallConfirmContactsParameters.redactedContactToConfirm.modify()
{
  v0 = OUTLINED_FUNCTION_2_4();
  type metadata accessor for StartCallConfirmContactsParameters(v0);
  return OUTLINED_FUNCTION_9_11();
}

uint64_t StartCallConfirmContactsParameters.rejectAction.getter()
{
  v0 = type metadata accessor for StartCallConfirmContactsParameters(0);
  v1 = OUTLINED_FUNCTION_54_0(*(v0 + 52));
  return outlined init with copy of SpeakableString?(v1, v2, v3, v4);
}

uint64_t StartCallConfirmContactsParameters.rejectAction.setter()
{
  v0 = OUTLINED_FUNCTION_2_4();
  type metadata accessor for StartCallConfirmContactsParameters(v0);
  v1 = OUTLINED_FUNCTION_91_0();

  return outlined assign with take of SpeakableString?(v1, v2);
}