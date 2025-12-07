id BannerPresentationManager.activeCall.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC15ConversationKit25BannerPresentationManager_callCenter);
  if ([v1 currentAudioAndVideoCallCount] <= 0)
  {
    result = [v1 frontmostBargeCall];
    if (!result)
    {
      return result;
    }
  }

  v3 = OUTLINED_FUNCTION_175_3();
  result = [v3 v4];
  if (!result)
  {
    v5 = [v1 screeningCall];
    if (!v5 || (v6 = v5, v7 = [v5 resolvedCallStatus], v6, v7 != 4) || (result = objc_msgSend(v1, sel_screeningCall)) == 0)
    {
      v8 = OUTLINED_FUNCTION_175_3();
      result = [v8 v9];
      if (!result)
      {
        v10 = OUTLINED_FUNCTION_175_3();
        result = [v10 v11];
        if (!result)
        {
          v12 = OUTLINED_FUNCTION_175_3();
          result = [v12 v13];
          if (!result)
          {
            return [v1 frontmostBargeCall];
          }
        }
      }
    }
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type UUID and conformance UUID(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t lazy protocol witness table accessor for type UUID and conformance UUID(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for UUID();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t _s10Foundation4UUIDVACSQAAWlTm_0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t _s10Foundation4UUIDVACSQAAWlTm_1(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t OUTLINED_FUNCTION_245_0()
{

  return Hasher.init(_seed:)();
}

uint64_t OUTLINED_FUNCTION_214_2(void x0_0, void x1_0, void x2_0, void x3_0, void x4_0, void x5_0, void a7, void a8, uint64_t a2, int a3, __int16 a4, char a5, char a6)
{

  return String.init<A>(reflecting:)();
}

void OUTLINED_FUNCTION_276_0()
{

  JUMPOUT(0x1BFB20B10);
}

void *OUTLINED_FUNCTION_276_1(void *a1)
{

  return memcpy(a1, (v2 + v1), 0xE8uLL);
}

uint64_t OUTLINED_FUNCTION_423()
{

  return swift_getObjectType();
}

void *OUTLINED_FUNCTION_423_0()
{

  return __swift_project_boxed_opaque_existential_1((v1 - 144), v0);
}

uint64_t OUTLINED_FUNCTION_406()
{
  *(v0 + 8) = v1;

  return swift_unknownObjectWeakAssign();
}

unint64_t specialized BroadcastingState.init(call:callCenter:deviceOrientation:shouldMaintainCameraPosition:)(uint64_t a1, void *a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  if (((*(a6 + 328))(a5, a6) & 1) == 0)
  {
    goto LABEL_7;
  }

  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  if ((*(*static Defaults.shared + 152))())
  {
    if (a4)
    {
      v10 = 0;
    }

    else
    {
      v17 = a2[3];
      v18 = a2[4];
      __swift_project_boxed_opaque_existential_1(a2, v17);
      v19 = [(*(v18 + 24))(v17 v18)];
      swift_unknownObjectRelease();
      type metadata accessor for TUCall();
      static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v20 = specialized Array.count.getter();

      v10 = v20 < 2;
    }

    v21 = OUTLINED_FUNCTION_0_240();
    v23 = v22(v21);
    if (v10)
    {
      v24 = 0;
    }

    else
    {
      v25 = a2[3];
      v26 = a2[4];
      __swift_project_boxed_opaque_existential_1(a2, v25);
      (*(v26 + 32))(v33, v25, v26);
      v27 = v34;
      v28 = v35;
      __swift_project_boxed_opaque_existential_1(v33, v34);
      v29 = (*(v28 + 8))(v27, v28);
      __swift_destroy_boxed_opaque_existential_1(v33);
      v24 = v29 << 8;
    }

    v30 = OUTLINED_FUNCTION_0_240();
    v31(v30);
    swift_unknownObjectRelease();
    v16 = v24 | v23 & 1;
  }

  else
  {
LABEL_7:
    v11 = OUTLINED_FUNCTION_0_240();
    v13 = v12(v11);
    v14 = (*(a6 + 352))(a5, a6);
    swift_unknownObjectRelease();
    if (v14)
    {
      v15 = 256;
    }

    else
    {
      v15 = 0;
    }

    v16 = v15 & 0xFFFFFFFFFFFFFFFELL | v13 & 1;
  }

  __swift_destroy_boxed_opaque_existential_1(a2);
  return v16;
}

uint64_t OUTLINED_FUNCTION_503(uint64_t result, uint64_t a2)
{
  *(v2 - 312) = result;
  *(v2 - 304) = a2;
  return result;
}

id @nonobjc TUCall.screenShareAttributes.getter()
{
  v1 = [v0 screenShareAttributes];

  return v1;
}

void OUTLINED_FUNCTION_352()
{
  v0[73] = 0;
  v0[72] = 0;
  v0[74] = 0;
  v0[75] = 1;

  bzero(v0 + 76, 0xB1uLL);
}

uint64_t OUTLINED_FUNCTION_325@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + a1);
  v4 = *v3;
  v5 = v3[1];

  return outlined consume of (@escaping @callee_guaranteed () -> ())?(v4, v5);
}

id OUTLINED_FUNCTION_424(uint64_t a1, const char *a2, uint64_t a3)
{

  return [v3 a2];
}

uint64_t OUTLINED_FUNCTION_424_0(__n128 *a1, __n128 a2)
{
  a1[1] = a2;

  return type metadata accessor for UUID();
}

uint64_t OUTLINED_FUNCTION_269()
{

  return Publisher<>.sink(receiveValue:)();
}

uint64_t OUTLINED_FUNCTION_269_0()
{
}

uint64_t OUTLINED_FUNCTION_269_1()
{
  *(v0 + 8) = v1;

  return outlined destroy of Participant.MediaInfo(v0 + 304);
}

void OUTLINED_FUNCTION_269_2(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

void OUTLINED_FUNCTION_154_1(float a1)
{
  *v1 = a1;
  v4 = (*(v2 + 144) + 24);

  os_unfair_lock_lock(v4);
}

uint64_t OUTLINED_FUNCTION_293_1(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_449(uint64_t a1, unint64_t a2)
{

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, (v2 - 168));
}

uint64_t OUTLINED_FUNCTION_509(const char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  return os_log(_:dso:log:type:_:)(a1, 146, 2, a4, v6, a6, v7);
}

void OUTLINED_FUNCTION_93_4()
{
  outlined copy of RemoteControlState(*(v0 + 16));

  os_unfair_lock_unlock((v0 + 24));
}

uint64_t OUTLINED_FUNCTION_93_6(double a1)
{
  *(v1 - 120) = a1;

  return specialized >> prefix<A>(_:)(v1 - 168);
}

void OUTLINED_FUNCTION_93_7(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_93_8(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{

  return outlined init with copy of [CaptionSectioner.SpeakerSection]();
}

uint64_t OUTLINED_FUNCTION_448()
{

  return swift_unknownObjectRelease();
}

uint64_t OUTLINED_FUNCTION_106_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  *(a1 + 16) = v11;
  *(a1 + 24) = a11;

  return outlined copy of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(v11, a11);
}

uint64_t OUTLINED_FUNCTION_106_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{

  return _print_unlocked<A, B>(_:_:)();
}

void specialized ConversationControlsManager.init(conversationController:entitlementsChecker:defaults:callCenter:featureFlags:)()
{
  OUTLINED_FUNCTION_29();
  v1 = v0;
  v209 = v2;
  v208 = v3;
  v213 = v4;
  v6 = v5;
  v207 = v7;
  v212 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy15ConversationKit6Notice_pSg_GMd, &_s7Combine9PublishedV9PublisherVy15ConversationKit6Notice_pSg_GMR);
  OUTLINED_FUNCTION_1();
  v211 = v8;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_13_1();
  OUTLINED_FUNCTION_10(v10);
  v206 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy15ConversationKit0C31ControlsSecondaryPillButtonTypeOGMd, &_s7Combine9PublishedVy15ConversationKit0C31ControlsSecondaryPillButtonTypeOGMR);
  OUTLINED_FUNCTION_1();
  v205 = v11;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_13_1();
  v14 = OUTLINED_FUNCTION_16(v13);
  v204 = type metadata accessor for ConversationControlsSecondaryPillButtonType(v14);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_4();
  v203 = v16;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_10(&v182 - v18);
  v202 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy15ConversationKit14EphemeralAlertVSgGMd, &_s7Combine9PublishedVy15ConversationKit14EphemeralAlertVSgGMR);
  OUTLINED_FUNCTION_1();
  v201 = v19;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_13_1();
  OUTLINED_FUNCTION_10(v21);
  v200 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy15ConversationKit13ForegroundAppCSgGMd, &_s7Combine9PublishedVy15ConversationKit13ForegroundAppCSgGMR);
  OUTLINED_FUNCTION_1();
  v199 = v22;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_13_1();
  OUTLINED_FUNCTION_10(v24);
  v198 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo22TUCallTransmissionModeVGMd, &_s7Combine9PublishedVySo22TUCallTransmissionModeVGMR);
  OUTLINED_FUNCTION_1();
  v197 = v25;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_13_1();
  OUTLINED_FUNCTION_10(v27);
  v194 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy20CommunicationsUICore22PushToTalkChannelStateOGMd, &_s7Combine9PublishedVy20CommunicationsUICore22PushToTalkChannelStateOGMR);
  OUTLINED_FUNCTION_1();
  v193 = v28;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_13_1();
  OUTLINED_FUNCTION_16(v30);
  v191 = type metadata accessor for PushToTalkChannelState();
  OUTLINED_FUNCTION_1();
  v190 = v31;
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_4();
  v189 = v33;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_10(&v182 - v35);
  v187 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo26TUCallBluetoothAudioFormatVSgGMd, &_s7Combine9PublishedVySo26TUCallBluetoothAudioFormatVSgGMR);
  OUTLINED_FUNCTION_1();
  v186 = v36;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_13_1();
  OUTLINED_FUNCTION_10(v38);
  v215 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo7TURouteCSgGMd, &_s7Combine9PublishedVySo7TURouteCSgGMR);
  OUTLINED_FUNCTION_1();
  v214 = v39;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_13_1();
  OUTLINED_FUNCTION_16(v41);
  v195 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  OUTLINED_FUNCTION_1();
  v183 = v42;
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16(v45 - v44);
  type metadata accessor for OS_dispatch_queue.Attributes();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16(v48 - v47);
  v49 = type metadata accessor for DispatchQoS();
  v50 = OUTLINED_FUNCTION_22(v49);
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_92_7();
  v51 = type metadata accessor for EntitlementsChecker();
  v224[4] = &protocol witness table for EntitlementsChecker;
  v52 = MEMORY[0x1E69E7CC0];
  *&v1[OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_ignoredScreenSharingRequestUUIDs] = MEMORY[0x1E69E7CC0];
  v224[3] = v51;
  v224[0] = v6;
  *&v1[OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_initiallyActiveParticipantIdentifiers] = MEMORY[0x1E69E7CD0];
  v53 = OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_coreAnalyticsReporter;
  *&v1[v53] = [objc_allocWithZone(CNKCoreAnalyticsReporter) init];
  v54 = OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_noticeCoordinator;
  *&v1[v54] = [objc_allocWithZone(type metadata accessor for ConversationControlsNoticeCoordinator(0)) init];
  *&v1[OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_activeNoticeCancellable] = 0;
  OUTLINED_FUNCTION_197_3();
  *&v1[OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_contentExtractor] = 0;
  v55 = &v1[OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_presentContactCard];
  *v55 = TPNumberPadCharacter.rawValue.getter;
  v55[1] = 0;
  v56 = &v1[OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_presentAddParticipantSheet];
  *v56 = TPNumberPadCharacter.rawValue.getter;
  v56[1] = 0;
  *&v1[OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_isOnScreenSubscription] = 0;
  v57 = OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_features;
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_0(&one-time initialization token for shared);
  }

  v58 = static Features.shared;
  *&v1[v57] = static Features.shared;
  v59 = OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_notificationCenter;
  v60 = objc_opt_self();
  v61 = v58;
  *&v1[v59] = [v60 defaultCenter];
  v62 = &v1[OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_observation];
  *v62 = 0u;
  v62[1] = 0u;
  *&v1[OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_activeRemoteAlertHandle] = 0;
  *&v1[OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_minReactionCountForNotice] = 1;
  v1[OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_canPostReactionNotice] = 0;
  OUTLINED_FUNCTION_197_3();
  v1[OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_hasInitializedCallControlsService] = 0;
  v63 = &v1[OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager____lazy_storage___callControlsService];
  *v63 = 0;
  *(v63 + 1) = 0;
  *(v63 + 2) = 0;
  *(v63 + 24) = xmmword_1BC4C9460;
  OUTLINED_FUNCTION_88_7(OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_systemBannerPresenter);
  OUTLINED_FUNCTION_88_7(OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_systemConversationControlsDelegate);
  OUTLINED_FUNCTION_88_7(OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_systemAudioConversationControlsDelegate);
  OUTLINED_FUNCTION_88_7(OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_inCallConversationControlsDelegate);
  OUTLINED_FUNCTION_88_7(OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_inCallDetailsViewControllerDelegate);
  OUTLINED_FUNCTION_197_3();
  OUTLINED_FUNCTION_197_3();
  OUTLINED_FUNCTION_88_7(OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_handoffCompletedDelegate);
  *&v1[OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_approvalDelegate] = 0;
  *&v1[OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_conduitLagunaNoticeManager] = 0;
  v64 = OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_lagunaQueue;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  static DispatchQoS.unspecified.getter();
  v221 = v52;
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_6(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  OUTLINED_FUNCTION_3_8();
  lazy protocol witness table accessor for type NSObject.KeyValueObservingPublisher<UICollectionView, CGPoint> and conformance NSObject.KeyValueObservingPublisher<A, B>(v65, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v183 + 104))(v182.super_class, *MEMORY[0x1E69E8090], v195);
  *&v1[v64] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v66 = OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_conversationDidChangePublisher;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine18PassthroughSubjectCyyts5NeverOGMd, &_s7Combine18PassthroughSubjectCyyts5NeverOGMR);
  OUTLINED_FUNCTION_84(v67);
  *&v1[v66] = PassthroughSubject.init()();
  v68 = OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_activityManager;
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_20_57(&one-time initialization token for shared);
  }

  v69 = static HUDActivityManager.shared;
  *&v1[v68] = static HUDActivityManager.shared;
  v70 = OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_bannerActivityManager;
  v71 = one-time initialization token for shared;
  v72 = v69;
  if (v71 != -1)
  {
    OUTLINED_FUNCTION_32_27(&one-time initialization token for shared);
  }

  v73 = static BannerActivityManager.shared;
  *&v1[v70] = static BannerActivityManager.shared;
  *&v1[OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_incomingScreenSharingRequestActivity] = 0;
  *&v1[OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_podcastRecordingConsentRequestActivity] = 0;
  v74 = OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager__audioRoute;
  v221 = 0;
  v75 = v73;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7TURouteCSgMd, &_sSo7TURouteCSgMR);
  OUTLINED_FUNCTION_155_2();
  v76 = v184;
  v195 = v77;
  Published.init(initialValue:)();
  (*(v214 + 32))(&v1[v74], v76, v215);
  v221 = 0;
  LOBYTE(v222) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo26TUCallBluetoothAudioFormatVSgMd, &_sSo26TUCallBluetoothAudioFormatVSgMR);
  OUTLINED_FUNCTION_155_2();
  v78 = v185;
  Published.init(initialValue:)();
  v79 = OUTLINED_FUNCTION_141_2();
  v80(v79, v78, v187);
  *&v1[OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_cancellables] = MEMORY[0x1E69E7CC0];
  v81 = v190;
  v82 = v188;
  v83 = v191;
  (*(v190 + 104))(v188, *MEMORY[0x1E6995F20], v191);
  (*(v81 + 16))(v189, v82, v83);
  v84 = v192;
  Published.init(initialValue:)();
  (*(v81 + 8))(v82, v83);
  v85 = OUTLINED_FUNCTION_141_2();
  v86(v85, v84, v194);
  v221 = 1;
  type metadata accessor for TUCallTransmissionMode(0);
  OUTLINED_FUNCTION_155_2();
  v87 = v196;
  Published.init(initialValue:)();
  v88 = OUTLINED_FUNCTION_141_2();
  v89(v88, v87, v198);
  *&v1[OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager____lazy_storage___pttViewModel] = 0;
  *&v1[OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager____lazy_storage___pttCallUpdateSubject] = 0;
  v90 = OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_incomingTransmissionReceivedSubject;
  LOBYTE(v221) = 0;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCySbs5NeverOGMd, &_s7Combine19CurrentValueSubjectCySbs5NeverOGMR);
  OUTLINED_FUNCTION_84(v91);
  *&v1[v90] = CurrentValueSubject.init(_:)();
  *&v1[OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_pttCallStatusUpdateCancellable] = 0;
  *&v1[OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_pttCallIncomingTransmissionReceivedCancellable] = 0;
  *&v1[OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_confirmLeavePTTChannelAlert] = 0;
  *&v1[OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_confirmStopWaitOnHoldAlert] = 0;
  v221 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit13ForegroundAppCSgMd, &_s15ConversationKit13ForegroundAppCSgMR);
  OUTLINED_FUNCTION_155_2();
  Published.init(initialValue:)();
  v92 = OUTLINED_FUNCTION_94_9();
  v93(v92);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay15ConversationKit0A15ControlsManagerC19CollaborationPrompt33_437EB4956F8C313AB56D9B5E6A4F0C8CLLOGMd, &_sSay15ConversationKit0A15ControlsManagerC19CollaborationPrompt33_437EB4956F8C313AB56D9B5E6A4F0C8CLLOGMR);
  Cache.init(countLimit:)();
  type metadata accessor for ForegroundCollaborationState(0);
  swift_storeEnumTagMultiPayload();
  v221 = 0;
  v222 = 0;
  v223 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit14EphemeralAlertVSgMd, &_s15ConversationKit14EphemeralAlertVSgMR);
  OUTLINED_FUNCTION_155_2();
  Published.init(initialValue:)();
  v94 = OUTLINED_FUNCTION_94_9();
  v95(v94);
  v1[OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_shouldShowDelayedLMIBanner] = 0;
  v1[OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_isWaitingOnFirstRemoteFrame] = 0;
  *&v1[OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_activityLaunchTimer] = 0;
  v96 = OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_tccServer;
  *&v1[v96] = tcc_server_create();
  *&v1[OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_applicationState] = 0;
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_189_1();
  outlined init with copy of FaceIDUnavailableNotice(v97, v81 + 8);
  Published.init(initialValue:)();
  outlined destroy of HUDActivityManager.BannerUpdate();
  v98 = OUTLINED_FUNCTION_94_9();
  v99(v98);
  *&v1[OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_updateForegroundCollaborationStateTask] = 0;
  *&v1[OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_screenShareCountdownTimer] = 0;
  v100 = OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_participantStateDidChangeSubject;
  swift_allocObject();
  *&v1[v100] = PassthroughSubject.init()();
  if (one-time initialization token for conversationControls != -1)
  {
    OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
  }

  v101 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_52(v101, &static Logger.conversationControls);
  v102 = Logger.logObject.getter();
  v103 = static os_log_type_t.default.getter();
  if (OUTLINED_FUNCTION_25(v103))
  {
    v104 = OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_50_0(v104);
    OUTLINED_FUNCTION_7_4(&dword_1BBC58000, v105, v106, "CCM init");
    OUTLINED_FUNCTION_26();
  }

  v107 = v207;
  *&v1[OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_conversationController] = v207;
  type metadata accessor for ConversationControlsJoinCountdownActionController();
  swift_allocObject();
  v108 = v107;
  *&v1[OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_countdownController] = ConversationControlsJoinCountdownActionController.init()();
  v109 = [objc_allocWithZone(MEMORY[0x1E69D8BE8]) init];
  v110 = [v109 gameControllerSystemButton];

  v111 = 0;
  if ((v110 & 1) == 0)
  {
    type metadata accessor for CallGameController();
    OUTLINED_FUNCTION_37_0();
    v109 = swift_allocObject();
    v111 = CallGameController.init()();
  }

  *&v1[OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_gameController] = v111;
  v112 = [objc_allocWithZone(MEMORY[0x1E69D8BF0]) init];
  *&v1[OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_gameOverlayController] = v112;
  v113 = v208;
  *&v1[OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_callCenter] = v208;
  v114 = v113;
  v115 = [v114 conversationManager];
  OUTLINED_FUNCTION_24_1();
  type metadata accessor for CollaborationInitiationManager();
  OUTLINED_FUNCTION_20();
  v116 = swift_allocObject();
  *(v116 + 16) = v109;
  *&v1[OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_collaborationInitiationManager] = v116;
  ConversationController.hasMessageCapableRemoteParticipants.getter();
  v118 = v117;
  OUTLINED_FUNCTION_30_2(&v1[OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager__shouldOpenMessages], &v221);
  v220[24] = v118 & 1;
  Published.init(initialValue:)();
  swift_endAccess();
  v119 = OBJC_IVAR____TtC15ConversationKit22ConversationController_conversationState;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  v120 = *&v108[v119];
  v121 = 1;
  if (v120 != 3)
  {
    v122 = &v108[OBJC_IVAR____TtC15ConversationKit22ConversationController_call];
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    v123 = *(v122 + 1);
    ObjectType = swift_getObjectType();
    v125 = v108;
    v126 = v114;
    v127 = v74;
    v128 = *(v123 + 152);
    swift_unknownObjectRetain();
    v129 = v128(ObjectType, v123);
    v74 = v127;
    v114 = v126;
    v108 = v125;
    v121 = v129;
    swift_unknownObjectRelease();
  }

  OUTLINED_FUNCTION_30_2(&v1[OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager__shouldEnableStartingStagedActivity], v220);
  LOBYTE(v219[0]) = v121 & 1;
  Published.init(initialValue:)();
  swift_endAccess();
  v130 = ConversationController.audioRoute.getter();
  OUTLINED_FUNCTION_30_2(&v1[v74], v220);
  (*(v214 + 8))(&v1[v74], v215);
  v219[0] = v130;
  Published.init(initialValue:)();
  swift_endAccess();
  v131 = &v108[OBJC_IVAR____TtC15ConversationKit22ConversationController_call];
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  v132 = *(v131 + 1);
  v133 = swift_getObjectType();
  v134 = *(v132 + 376);
  swift_unknownObjectRetain();
  LOBYTE(v132) = v134(v133, v132);
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_30_2(&v1[OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager__localAudioEnabled], v219);
  v217 = (v132 & 1) == 0;
  Published.init(initialValue:)();
  swift_endAccess();
  v135 = ConversationController.localVideoSupported.getter();
  v136 = *(v131 + 1);
  v137 = swift_getObjectType();
  v138 = *(v136 + 328);
  swift_unknownObjectRetain();
  LOBYTE(v136) = v138(v137, v136);
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_30_2(&v1[OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager__localVideoButtonState], v219);
  v217 = v135 & 1;
  v218 = v136 & 1;
  Published.init(initialValue:)();
  swift_endAccess();
  outlined init with copy of IDSLookupManager(v224, &v1[OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_entitlementsChecker]);
  v139 = &v1[OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_defaults];
  *v139 = v213;
  v139[1] = &protocol witness table for Defaults;
  v140 = v209;
  *&v1[OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_featureFlags] = v209;
  *&v1[OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_reactionNoticeHistory] = MEMORY[0x1E69E7CC0];
  v141 = type metadata accessor for ConversationControlsManager(0);
  v216.receiver = v1;
  v216.super_class = v141;

  v142 = v140;
  objc_msgSendSuper2(&v216, sel_init);
  OUTLINED_FUNCTION_24_1();
  v143 = objc_allocWithZone(type metadata accessor for ConduitApprovalDelegate());
  v144 = sel_init;
  v145 = ConduitApprovalDelegate.init(_:)();
  v146 = OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_approvalDelegate;
  v147 = *&v144[OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_approvalDelegate];
  *&v144[OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_approvalDelegate] = v145;

  v148 = [v114 neighborhoodActivityConduit];
  [v148 setApprovalDelegate_];

  if ([v142 lagunaEnabled])
  {
    v149 = OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_lagunaQueue;
    v150 = *&v144[OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_lagunaQueue];
    v151 = objc_opt_self();
    v152 = v144;
    v153 = v150;
    v154 = [v151 sharedInstance];
    v155 = OUTLINED_FUNCTION_24_1();
    v156 = objc_allocWithZone(type metadata accessor for ConduitLagunaNoticeManager(v155));
    v157 = OUTLINED_FUNCTION_43_0();
    ConduitLagunaNoticeManager.init(_:queue:callCenter:)(v157, v158, v151, v159, v160, v161, v162, v163, v182, v183, v184, v185, v186, v187, v188, v189, v190, v191, v192);
    v165 = v164;
    v166 = [v114 neighborhoodActivityConduit];
    [v166 addDelegate:v165 queue:*&v144[v149]];

    v167 = [v114 conversationManager];
    [v167 addDelegate:v165 queue:*&v144[v149]];

    v168 = OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_conduitLagunaNoticeManager;
    OUTLINED_FUNCTION_3_5(&v152[OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_conduitLagunaNoticeManager], v219);
    v169 = *&v152[v168];
    *&v152[v168] = v165;
  }

  ConversationControlsManager.updateShareButtonState()();
  v170 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_108_4();
  (*(v171 + 2608))();
  ConversationControlsManager.setupConversationControllerObservers()();
  v172 = *&v144[OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_noticeCoordinator];
  v173 = *((*v170 & *v172) + 0xA0);
  v174 = v172;
  v175 = v210;
  v173();

  OUTLINED_FUNCTION_20();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  lazy protocol witness table accessor for type NSObject.KeyValueObservingPublisher<UICollectionView, CGPoint> and conformance NSObject.KeyValueObservingPublisher<A, B>(&lazy protocol witness table cache variable for type Published<Notice?>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVy15ConversationKit6Notice_pSg_GMd, &_s7Combine9PublishedV9PublisherVy15ConversationKit6Notice_pSg_GMR);
  v176 = v212;
  v177 = Publisher<>.sink(receiveValue:)();

  (*(v211 + 8))(v175, v176);
  *&v144[OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_activeNoticeCancellable] = v177;

  v178 = *&v144[OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_gameController];
  if (v178)
  {
    OUTLINED_FUNCTION_20();
    v179 = swift_allocObject();
    swift_unknownObjectWeakInit();
    OUTLINED_FUNCTION_20();
    v180 = swift_allocObject();
    swift_unknownObjectWeakInit();

    v181 = GameControllerIncomingCallEvent.init(acceptCallAction:rejectCallAction:)(partial apply for closure #2 in ConversationControlsManager.init(conversationController:entitlementsChecker:defaults:callCenter:featureFlags:), v179, partial apply for closure #3 in ConversationControlsManager.init(conversationController:entitlementsChecker:defaults:callCenter:featureFlags:), v180);
    specialized CallGameController.addEvent(_:)(v181, v178);
  }

  [*&v144[OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_gameOverlayController] setDelegate_];

  __swift_destroy_boxed_opaque_existential_1(v224);
  OUTLINED_FUNCTION_30_0();
}

void *OUTLINED_FUNCTION_65_2()
{

  return memcpy((v2 + v1), (v0 + 712), 0xACuLL);
}

id OUTLINED_FUNCTION_65_3(void *a1)
{

  return [a1 conversationKit];
}

uint64_t OUTLINED_FUNCTION_65_7(uint64_t result)
{
  v4 = (v2 + *(*(v3 - 128) + 44));
  *v4 = v1;
  v4[1] = result;
  return result;
}

unint64_t OUTLINED_FUNCTION_65_10(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return lazy protocol witness table accessor for type VideoMessageController.UnrecoverableErrors and conformance VideoMessageController.UnrecoverableErrors();
}

uint64_t OUTLINED_FUNCTION_81()
{
}

void OUTLINED_FUNCTION_65_13(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{
  v8 = *(v6 - 180);

  _os_log_impl(a1, v4, v8, a4, v5, 0x26u);
}

uint64_t OUTLINED_FUNCTION_65_17()
{
  *(v1 - 88) = 7;

  return static ConversationControlsType.== infix(_:_:)(v0, v1 - 128);
}

uint64_t type metadata accessor for ConversationControlsNoticeCoordinator(uint64_t a1)
{
  result = type metadata singleton initialization cache for ConversationControlsNoticeCoordinator;
  if (!type metadata singleton initialization cache for ConversationControlsNoticeCoordinator)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id Defaults.sharePlayAvailable.getter(SEL *a1)
{
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 conversationManager];

  v4 = [v3 *a1];
  return v4;
}

void *OUTLINED_FUNCTION_279_0(void *a1)
{

  return memcpy(a1, (v1 + v2), 0xE8uLL);
}

uint64_t ConversationControlsManager.isWaitingOnFirstRemoteFrame.getter(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_isWaitingOnFirstRemoteFrame;
  OUTLINED_FUNCTION_19_1(a1);
  return *(v1 + v2);
}

id OUTLINED_FUNCTION_371_0(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  *(v3 - 120) = v2;

  return v2;
}

uint64_t ConversationController.isOneToOneModeEnabled.getter()
{
  if (*(v0 + OBJC_IVAR____TtC15ConversationKit22ConversationController_isOneToOneModeEnabledByCallCenter) & 1) != 0 || (ConversationController.isOneToOneModeInferred.getter())
  {
    v1 = *(v0 + OBJC_IVAR____TtC15ConversationKit22ConversationController_isOneToOneModeDisabledByActivity) ^ 1;
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

void ConversationControlsManager.controlsMode.getter()
{
  OUTLINED_FUNCTION_29();
  v4 = v0;
  v5 = type metadata accessor for CallScreeningService();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_320_0();
  v165 = type metadata accessor for CallScreeningStatus();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_17();
  v12 = v10 - v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_227();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_32();
  v166 = v15;
  OUTLINED_FUNCTION_13_2();
  v167 = *((*MEMORY[0x1E69E7D40] & v16) + 0x2C0);
  v17 = v167();
  v164 = v12;
  if (v17)
  {
    v18 = v17;
    v170 = [v17 state];
  }

  else
  {
    v170 = 0;
  }

  v19 = OUTLINED_FUNCTION_417();
  v20 = &lazy protocol witness table cache variable for type AsyncStream<Tips.Status> and conformance AsyncStream<A>;
  if ((*(v1 + 680))(v19, v1))
  {
    OUTLINED_FUNCTION_109_3();
    (*(v21 + 672))();
    OUTLINED_FUNCTION_255();
    OUTLINED_FUNCTION_311_0();
    v22();
    v23 = OUTLINED_FUNCTION_280_0();
    if ((v1 & 1) != 0 && !v170)
    {
      v1 = (v167)(v23);
      v24 = [v1 handoffEligibility];

      if (v24)
      {

        OUTLINED_FUNCTION_256_0();
        if (!v39)
        {
          OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
        }

        v25 = type metadata accessor for Logger();
        OUTLINED_FUNCTION_52(v25, &static Logger.conversationControls);
        v26 = Logger.logObject.getter();
        v27 = static os_log_type_t.default.getter();
        if (OUTLINED_FUNCTION_25(v27))
        {
          v28 = OUTLINED_FUNCTION_33();
          OUTLINED_FUNCTION_50_0(v28);
          OUTLINED_FUNCTION_7_4(&dword_1BBC58000, v29, v30, "ConversationControlsManager: handoffEligible");
          OUTLINED_FUNCTION_26();
        }

        goto LABEL_98;
      }
    }
  }

  OUTLINED_FUNCTION_109_3();
  v32 = v31 + 672;
  v168 = *(v31 + 672);
  v168();
  OUTLINED_FUNCTION_255();
  OUTLINED_FUNCTION_311_0();
  v33();
  v34 = OUTLINED_FUNCTION_280_0();
  if (v1)
  {
    v1 = (v167)(v34);
    v35 = [v1 link];

    if (v35)
    {

      v36 = *(v4 + OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_conversationController);
      v1 = OBJC_IVAR____TtC15ConversationKit22ConversationController_conversationLetMeInRequestState;
      OUTLINED_FUNCTION_3_0();
      v34 = swift_beginAccess();
      if ((*(v36 + v1) - 1) <= 1)
      {
        goto LABEL_98;
      }
    }
  }

  (v168)(v34);
  OUTLINED_FUNCTION_255();
  OUTLINED_FUNCTION_236_0();
  v37();
  v38 = OUTLINED_FUNCTION_280_0();
  v39 = v1 == 4 && v170 == 3;
  if (v39)
  {
    goto LABEL_98;
  }

  v162 = v8;
  v40 = (v168)(v38);
  ConversationControlsManager.shouldShowCallAgainHUD(forCall:)(v40, v41);
  OUTLINED_FUNCTION_375();
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_256_0();
  v163 = v32;
  if (!v39)
  {
    OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
  }

  v42 = type metadata accessor for Logger();
  __swift_project_value_buffer(v42, &static Logger.conversationControls);
  v43 = Logger.logObject.getter();
  v44 = static os_log_type_t.default.getter();
  if (OUTLINED_FUNCTION_163(v44))
  {
    v20 = OUTLINED_FUNCTION_18_18();
    *v20 = 67109120;
    *(v20 + 4) = v8 & 1;
    OUTLINED_FUNCTION_85();
    _os_log_impl(v45, v46, v47, v48, v20, 8u);
    OUTLINED_FUNCTION_239();
  }

  if (v8)
  {
    goto LABEL_98;
  }

  v49 = Features.receptionistEnabled.getter();
  v50 = MEMORY[0x1E6995E98];
  v51 = MEMORY[0x1E6995EA0];
  if (v49)
  {
    v174 = &type metadata for ScreeningStatusOverride;
    v175 = lazy protocol witness table accessor for type ScreeningStatusOverride and conformance ScreeningStatusOverride();
    type metadata accessor for Defaults();
    OUTLINED_FUNCTION_24();
    swift_allocObject();
    v172 = Defaults.init()();
    CallScreeningService.init(overrides:)();
    OUTLINED_FUNCTION_227_0();
    v40();
    v52 = OUTLINED_FUNCTION_254_0();
    (*(v20 + 48))(&v172, v52, v20);
    swift_unknownObjectRelease();
    CallScreeningService.screeningStatusForCall(_:)();
    __swift_destroy_boxed_opaque_existential_1(&v172);
    OUTLINED_FUNCTION_23_26();
    v53(v2, v5);
    v54 = v165;
  }

  else
  {
    OUTLINED_FUNCTION_227_0();
    v40();
    v55 = OUTLINED_FUNCTION_254_0();
    (*(v20 + 144))(v55, v20);
    OUTLINED_FUNCTION_247();
    swift_unknownObjectRelease();
    if (v20)
    {
      v56 = v51;
    }

    else
    {
      v56 = v50;
    }

    LODWORD(v20) = v165;
    (*(v162 + 104))(v3, *v56, v165);
    v57 = OUTLINED_FUNCTION_270_0();
    v54 = v165;
    v58(v57);
  }

  OUTLINED_FUNCTION_226_1();
  v40();
  objc_opt_self();
  OUTLINED_FUNCTION_170();
  v59 = swift_dynamicCastObjCClass();
  if (v59)
  {
    [v59 isWaitOnHoldActive];
    OUTLINED_FUNCTION_247();
    swift_unknownObjectRelease();
    if (v20)
    {
      (*(v162 + 8))(v166, v54);
      (*(v162 + 104))(v166, *v50, v54);
    }
  }

  else
  {
    swift_unknownObjectRelease();
  }

  v60 = v162;
  v61 = v164;
  (*(v162 + 16))(v164, v166, v54);
  v62 = (*(v162 + 88))(v164, v54);
  if (v62 == *MEMORY[0x1E6995EA8])
  {
    v60 = v162 + 8;
    v63 = *(v162 + 8);
    v63(v164, v54);
    v64 = OUTLINED_FUNCTION_355();
    v65 = static os_log_type_t.default.getter();
    if (OUTLINED_FUNCTION_163(v65))
    {
      v61 = OUTLINED_FUNCTION_33();
      *v61 = 0;
      OUTLINED_FUNCTION_85();
      _os_log_impl(v66, v67, v68, v69, v61, 2u);
      OUTLINED_FUNCTION_239();
    }

    if (v49)
    {
      v70 = OUTLINED_FUNCTION_270_0();
      (v63)(v70);
LABEL_98:
      OUTLINED_FUNCTION_30_0();
      return;
    }
  }

  else
  {
    v40 = v62;
    if (v62 != *v50)
    {
      if (v62 == *v51)
      {
        v91 = OUTLINED_FUNCTION_355();
        v92 = static os_log_type_t.default.getter();
        if (OUTLINED_FUNCTION_163(v92))
        {
          v93 = OUTLINED_FUNCTION_33();
          *v93 = 0;
          OUTLINED_FUNCTION_85();
          _os_log_impl(v94, v95, v96, v97, v93, 2u);
          OUTLINED_FUNCTION_239();
        }

        OUTLINED_FUNCTION_23_26();
        v98 = OUTLINED_FUNCTION_270_0();
        v99(v98);
        goto LABEL_98;
      }

      v61 = *MEMORY[0x1E6995EB0];
      v60 = OUTLINED_FUNCTION_355();
      if (v40 == v61)
      {
        v110 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v60, v110))
        {
          v61 = OUTLINED_FUNCTION_33();
          *v61 = 0;
          _os_log_impl(&dword_1BBC58000, v60, v110, "Showing controls for CallScreening", v61, 2u);
          OUTLINED_FUNCTION_239();
        }

        if (v49)
        {
          OUTLINED_FUNCTION_23_26();
          v111 = OUTLINED_FUNCTION_270_0();
          v112(v111);
          goto LABEL_98;
        }
      }

      else
      {
        v113 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v60, v113))
        {
          OUTLINED_FUNCTION_42();
          v114 = OUTLINED_FUNCTION_38_3();
          v172 = v114;
          *v49 = 136315138;
          OUTLINED_FUNCTION_3_0();
          swift_beginAccess();
          OUTLINED_FUNCTION_190();
          lazy protocol witness table accessor for type URL and conformance URL(v115, v116);
          v117 = dispatch thunk of CustomStringConvertible.description.getter();
          v61 = v118;
          getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v117, v118, &v172);
          OUTLINED_FUNCTION_28_0();

          *(v49 + 4) = v166;
          OUTLINED_FUNCTION_302(&dword_1BBC58000, v60, v113, "ConversationControlsManager found unknown screening status: %s");
          __swift_destroy_boxed_opaque_existential_1(v114);
          v54 = v165;
          OUTLINED_FUNCTION_27();
          OUTLINED_FUNCTION_4_4();
        }

        (*(v162 + 8))(v164, v54);
      }
    }
  }

  v168();
  OUTLINED_FUNCTION_254_0();
  OUTLINED_FUNCTION_154();
  v72 = v71();
  swift_unknownObjectRelease();
  v73 = OUTLINED_FUNCTION_355();
  v74 = static os_log_type_t.default.getter();
  if (OUTLINED_FUNCTION_42_1(v74))
  {
    OUTLINED_FUNCTION_30_1();
    v60 = OUTLINED_FUNCTION_16_8();
    v172 = v60;
    *v49 = 136315394;
    v75 = v170;
    v176 = v170;
    type metadata accessor for TUConversationState(0);
    v76 = >> prefix<A>(_:)();
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v76, v77, &v172);
    OUTLINED_FUNCTION_397();

    *(v49 + 4) = v40;
    *(v49 + 12) = 2080;
    LODWORD(v176) = v72;
    type metadata accessor for TUCallStatus(0);
    v78 = >> prefix<A>(_:)();
    v61 = v79;
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v78, v79, &v172);
    OUTLINED_FUNCTION_397();

    *(v49 + 14) = v40;
    OUTLINED_FUNCTION_130_1();
    _os_log_impl(v80, v81, v82, v83, v84, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_104_2();
    OUTLINED_FUNCTION_4_4();
  }

  else
  {

    v75 = v170;
  }

  if (v75 - 2 < 3)
  {
    if (one-time initialization token for shared != -1)
    {
      OUTLINED_FUNCTION_0_9(&one-time initialization token for shared);
    }

    OUTLINED_FUNCTION_0_1();
    if ((*(v85 + 624))())
    {
      v86 = v167();
      if (v86)
      {
        v87 = v86;
        if ([v86 isContinuitySession])
        {
          v88 = [v87 avMode];

          if (!v88)
          {
LABEL_51:
            v89 = OUTLINED_FUNCTION_270_0();
            v90(v89);
            goto LABEL_98;
          }
        }

        else
        {
        }
      }
    }

    OUTLINED_FUNCTION_109_3();
    (*(v119 + 896))();
    v120 = OUTLINED_FUNCTION_270_0();
    v121(v120);
    goto LABEL_98;
  }

  if (v75 <= 1)
  {
    v100 = *(v4 + OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_conversationController);
    v101 = v100;
    if (ConversationController.shouldShowJoinCountdown.getter())
    {
      OUTLINED_FUNCTION_109_3();
      v101 = v4;
      if ((*(v102 + 1256))())
      {
        OUTLINED_FUNCTION_255();
        OUTLINED_FUNCTION_159_0();
        v103();
        OUTLINED_FUNCTION_247();
        swift_unknownObjectRelease();
        if (v61)
        {
          goto LABEL_51;
        }
      }
    }

    OUTLINED_FUNCTION_227_0();
    v40();
    OUTLINED_FUNCTION_254_0();
    OUTLINED_FUNCTION_154();
    v104();
    OUTLINED_FUNCTION_247();
    swift_unknownObjectRelease();
    if (v61 == 3 || (OUTLINED_FUNCTION_226_1(), v40(), OUTLINED_FUNCTION_254_0(), OUTLINED_FUNCTION_154(), v105(), OUTLINED_FUNCTION_247(), swift_unknownObjectRelease(), v61 == 4))
    {
      OUTLINED_FUNCTION_226_1();
      v40();
      v106 = OUTLINED_FUNCTION_254_0();
      (*(v61 + 192))(v106, v61);
      OUTLINED_FUNCTION_247();
      swift_unknownObjectRelease();
      specialized Set.count.getter();
      OUTLINED_FUNCTION_28_0();

      if (v101 > 1 || (OUTLINED_FUNCTION_226_1(), v40(), OUTLINED_FUNCTION_254_0(), OUTLINED_FUNCTION_154(), v108(), OUTLINED_FUNCTION_247(), v107 = swift_unknownObjectRelease(), v61 != 3) || (v61 = OBJC_IVAR____TtC15ConversationKit22ConversationController_conversationLetMeInRequestState, OUTLINED_FUNCTION_3_0(), v107 = swift_beginAccess(), *(v100 + v61)))
      {
LABEL_79:
        v122 = v163;
        (v40)(v107);
        OUTLINED_FUNCTION_254_0();
        OUTLINED_FUNCTION_154();
        v171 = v123();
        v124 = swift_unknownObjectRelease();
        (v40)(v124);
        v125 = OUTLINED_FUNCTION_254_0();
        (*(v61 + 192))(v125, v61);
        OUTLINED_FUNCTION_247();
        swift_unknownObjectRelease();
        v169 = specialized Set.count.getter();

        v127 = v167;
        v128 = (v167)(v126);
        if (v128)
        {
          v129 = v128;
          v130 = [v128 mergedActiveRemoteParticipants];

          OUTLINED_FUNCTION_30_20();
          v122 = type metadata accessor for NSObject(v131, v132, v133);
          OUTLINED_FUNCTION_1_65();
          OUTLINED_FUNCTION_30_20();
          v127 = v167;
          lazy protocol witness table accessor for type TUConversationInvitationPreference and conformance NSObject(v134, v135, v136);
          static Set._unconditionallyBridgeFromObjectiveC(_:)();

          specialized Set.count.getter();
          OUTLINED_FUNCTION_359();
        }

        else
        {
          v60 = -1;
        }

        v137 = OBJC_IVAR____TtC15ConversationKit22ConversationController_conversationLetMeInRequestState;
        OUTLINED_FUNCTION_3_0();
        v138 = swift_beginAccess();
        v139 = *(v100 + v137);
        v140 = (v127)(v138);
        if (v140)
        {
          v141 = v140;
          v142 = [v140 localParticipantAssociation];

          if (v142)
          {
            v143 = [v142 identifier];
          }

          else
          {
            v143 = 0;
          }

          v127 = v167;
        }

        else
        {
          v143 = 0;
        }

        v144 = v127();
        if (v144 && (v145 = v144, v146 = [v144 link], v145, v146) && (v147 = outlined bridged method (ob) of @objc TUConversationLink.displayName.getter(v146), v148))
        {
          v149 = v147;
          v150 = v148;
        }

        else
        {

          v150 = 0xE300000000000000;
          v149 = 7104878;
        }

        v151 = OUTLINED_FUNCTION_355();
        v152 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v151, v152))
        {
          swift_slowAlloc();
          v153 = OUTLINED_FUNCTION_38_3();
          v177 = v153;
          *v122 = 67241474;
          *(v122 + 4) = v171;
          *(v122 + 8) = 2050;
          *(v122 + 10) = v169;
          *(v122 + 18) = 2050;
          *(v122 + 20) = v60;
          *(v122 + 28) = 2050;
          *(v122 + 30) = v139;
          *(v122 + 38) = 2080;
          v154 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v149, v150, &v177);

          *(v122 + 40) = v154;
          *(v122 + 48) = 2048;
          *(v122 + 50) = v143;
          OUTLINED_FUNCTION_130_1();
          _os_log_impl(v155, v156, v157, v158, v159, 0x3Au);
          __swift_destroy_boxed_opaque_existential_1(v153);
          OUTLINED_FUNCTION_239();
          OUTLINED_FUNCTION_4_4();
        }

        else
        {
        }

        OUTLINED_FUNCTION_23_26();
        v160(v166, v165);
        goto LABEL_98;
      }

      v61 = (v167)(v107);
      v109 = [v61 link];

      if (v109)
      {
        v40 = v168;
LABEL_78:

        goto LABEL_79;
      }

      v61 = v167();
      v109 = [v61 localParticipantAssociation];

      v40 = v168;
      if (v109)
      {
        goto LABEL_78;
      }
    }

    (*(v162 + 8))(v166, v165);
    goto LABEL_98;
  }

  v172 = 0;
  v173 = 0xE000000000000000;
  _StringGuts.grow(_:)(33);

  v172 = 0xD00000000000001FLL;
  v173 = 0x80000001BC508330;
  v176 = v75;
  type metadata accessor for TUConversationState(0);
  v161 = >> prefix<A>(_:)();
  MEMORY[0x1BFB20B10](v161);

  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id OUTLINED_FUNCTION_330_0(id a1, SEL a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return [a1 a2];
}

uint64_t ConversationControlsManager.conversation.getter()
{
  ConversationController.lookupActiveConversation()();
  if (v12)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit0A0_pMd, &_s15ConversationKit0A0_pMR);
    v0 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversation, 0x1E69D8B20);
    OUTLINED_FUNCTION_310_0(v0, v1, v2, v3, v4, v5, v6, v7, v9);
    if (swift_dynamicCast())
    {
      return v10;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    outlined destroy of CallControlsService?(v11, &_s15ConversationKit0A0_pSgMd, &_s15ConversationKit0A0_pSgMR);
    return 0;
  }
}

uint64_t ConversationControlsManager.shouldShowCallAgainHUD(forCall:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  if (((*(a2 + 544))(ObjectType, a2) & 1) == 0)
  {
    return 0;
  }

  v5 = *(v2 + OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_defaults + 8);
  v6 = swift_getObjectType();
  return (*(v5 + 600))(v6, v5) & 1;
}

uint64_t TUCall.cnk_eligibleForRedial.getter()
{
  v1 = [v0 handle];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 value];
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;

    v7 = HIBYTE(v6) & 0xF;
    if ((v6 & 0x2000000000000000) == 0)
    {
      v7 = v4 & 0xFFFFFFFFFFFFLL;
    }

    if (v7)
    {
      _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo24TUCallDisconnectedReasonV_Tt0g5();
      v9 = v8;
      if (([v0 service] == 3 || objc_msgSend(v0, sel_service) == 2) && (v10 = objc_msgSend(v0, sel_remoteParticipantHandles), type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUHandle, 0x1E69D8C00), OUTLINED_FUNCTION_1_65(), lazy protocol witness table accessor for type TUCall and conformance TUCall(v11, &lazy cache variable for type metadata for TUHandle, 0x1E69D8C00, v12), static Set._unconditionallyBridgeFromObjectiveC(_:)(), v10, v13 = specialized Set.count.getter(), , v13 == 1) && objc_msgSend(v0, sel_status) == 6)
      {
        v14 = specialized Set.contains(_:)([v0 disconnectedReason], v9);
      }

      else
      {
        v14 = 0;
      }
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14 & 1;
}

void _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo24TUCallDisconnectedReasonV_Tt0g5()
{
  OUTLINED_FUNCTION_42_4();
  v4 = v3;
  if (*(v3 + 16) && (__swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySo24TUCallDisconnectedReasonVGMd, &_ss11_SetStorageCySo24TUCallDisconnectedReasonVGMR), v5 = OUTLINED_FUNCTION_38_8(), (v6 = *(v4 + 16)) != 0))
  {
    OUTLINED_FUNCTION_84_0();
    while (v0 < *(v4 + 16))
    {
      v7 = *(v2 + 4 * v0++);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v7);
      Hasher._finalize()();
      while (1)
      {
        OUTLINED_FUNCTION_78_1();
        if (v12)
        {
          break;
        }

        if (*(*(v5 + 48) + 4 * v8) == v7)
        {
          goto LABEL_11;
        }
      }

      *(v1 + 8 * v9) = v11 | v10;
      *(*(v5 + 48) + 4 * v8) = v7;
      OUTLINED_FUNCTION_52_2();
      if (v14)
      {
        goto LABEL_14;
      }

      *(v5 + 16) = v13;
LABEL_11:
      if (v0 == v6)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
  }

  else
  {
LABEL_12:

    OUTLINED_FUNCTION_43_6();
  }
}

uint64_t OUTLINED_FUNCTION_100_0()
{

  return outlined init with take of CaptionSectioner.SpeakerSection?();
}

uint64_t OUTLINED_FUNCTION_100_2()
{
}

uint64_t OUTLINED_FUNCTION_100_6(unint64_t *a1)
{

  return lazy protocol witness table accessor for type NSObject.KeyValueObservingPublisher<UICollectionView, CGPoint> and conformance NSObject.KeyValueObservingPublisher<A, B>(a1, v1, v2);
}

uint64_t Features.receptionistEnabled.getter()
{
  v0 = objc_opt_self();
  v1 = [v0 currentDevice];
  v2 = [v1 userInterfaceIdiom];

  if (v2 && (v0 = [v0 currentDevice], v3 = objc_msgSend(v0, sel_userInterfaceIdiom), v0, v3 != 1))
  {
    LOBYTE(v0) = 0;
  }

  else
  {
    v4 = lazy protocol witness table accessor for type Features.TelephonyUtilities and conformance Features.TelephonyUtilities();
    v12 = OUTLINED_FUNCTION_12_53(v4, v5, v6, v7, v8, v9, v10, v11, v15, v16);
    OUTLINED_FUNCTION_8_68(v12, v13);
  }

  return v0 & 1;
}

void OUTLINED_FUNCTION_236(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  *v2 = 0;
  v2[1] = 0;
}

uint64_t OUTLINED_FUNCTION_236_3()
{

  return _s15ConversationKit11ParticipantVWObTm_6();
}

id OUTLINED_FUNCTION_277_0(uint64_t a1)
{
  v3 = *(*(v1 + 56) + 8 * a1);

  return v3;
}

uint64_t OUTLINED_FUNCTION_277_1()
{

  return type metadata accessor for DispatchPredicate();
}

double OUTLINED_FUNCTION_297_1()
{
  *(v0 + 32) = 0;
  result = 0.0;
  *v0 = 0u;
  *(v0 + 16) = 0u;
  return result;
}

BOOL @objc TUCall.isWaitOnHoldActive()(void *a1)
{
  v1 = a1;
  v2 = TUCall.isWaitOnHoldActive()();

  return v2;
}

Swift::Bool __swiftcall TUCall.isWaitOnHoldActive()()
{
  v1 = [v0 smartHoldingSession];
  if (v1)
  {
    v2 = v1;
    v3 = specialized Sequence<>.contains(_:)([v1 state], &outlined read-only object #0 of TUCall.isWaitOnHoldActive());

    LOBYTE(v1) = v3;
  }

  return v1;
}

id OUTLINED_FUNCTION_157_1()
{
  *(v3 + 4) = v0;
  *(v3 + 12) = 2080;
  *(v1 + 48) = v2;

  return v2;
}

void *OUTLINED_FUNCTION_157_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t __dst)
{

  return memcpy(&__dst, &STACK[0x200], 0xE8uLL);
}

uint64_t OUTLINED_FUNCTION_378(uint64_t a1)
{

  return outlined destroy of CallControlsService?(a1, v1, v2);
}

uint64_t ConversationController.shouldShowJoinCountdown.getter()
{
  v2 = v1;
  v3 = type metadata accessor for Participant(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_7_10();
  ConversationController.lookupActiveConversation()();
  if (!v15)
  {
    outlined destroy of CallControlsService?(&v14, &_s15ConversationKit0A0_pSgMd, &_s15ConversationKit0A0_pSgMR);
    goto LABEL_8;
  }

  outlined init with take of TapInteractionHandler(&v14, v16);
  OUTLINED_FUNCTION_184_2(v16);
  v5 = OUTLINED_FUNCTION_84_9();
  v7 = v6(v5);
  if (!v7 || (v7, v8 = OBJC_IVAR____TtC15ConversationKit22ConversationController_conversationLetMeInRequestState, OUTLINED_FUNCTION_3_0(), swift_beginAccess(), *(v2 + v8) != 3))
  {
    __swift_destroy_boxed_opaque_existential_1(v16);
LABEL_8:
    v10 = 0;
    return v10 & 1;
  }

  v9 = OBJC_IVAR____TtC15ConversationKit22ConversationController_localParticipant;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  OUTLINED_FUNCTION_1_186();
  _s15ConversationKit11ParticipantVWOcTm_17(v2 + v9, v0);
  if (*(v0 + *(v3 + 28)))
  {
    v10 = 0;
  }

  else
  {
    Participant.CountdownInfo.shouldShowJoinCountdown.getter();
    v10 = v12;
  }

  OUTLINED_FUNCTION_0_222();
  _s15ConversationKit11ParticipantVWOhTm_18(v0, v13);
  __swift_destroy_boxed_opaque_existential_1(v16);
  return v10 & 1;
}

void *ConversationControlsManager.isOneToOneConversation.getter()
{
  result = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x2C0))();
  if (result)
  {
    v2 = result;
    v3 = [result mergedRemoteMembers];
    OUTLINED_FUNCTION_41();
    type metadata accessor for NSObject(v4, v5, v6);
    OUTLINED_FUNCTION_1_65();
    OUTLINED_FUNCTION_41();
    lazy protocol witness table accessor for type TUConversationInvitationPreference and conformance NSObject(v7, v8, v9);
    static Set._unconditionallyBridgeFromObjectiveC(_:)();

    specialized Set.count.getter();
    OUTLINED_FUNCTION_6_4();

    if (v3 == 1)
    {
      v10 = [v2 mergedActiveRemoteParticipants];
      OUTLINED_FUNCTION_41();
      type metadata accessor for NSObject(v11, v12, v13);
      OUTLINED_FUNCTION_1_65();
      OUTLINED_FUNCTION_41();
      lazy protocol witness table accessor for type TUConversationInvitationPreference and conformance NSObject(v14, v15, v16);
      static Set._unconditionallyBridgeFromObjectiveC(_:)();

      specialized Set.count.getter();
      OUTLINED_FUNCTION_6_4();

      return (v10 < 2);
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_296_0(uint64_t a1, void *a2, uint64_t a3, ...)
{

  return swift_beginAccess();
}

uint64_t ConversationControlsManager.pttChannelState.getter(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_208();
  static Published.subscript.getter();
}

Swift::Void __swiftcall ConversationControlsManager.setupConversationControllerObservers()()
{
  if (one-time initialization token for conversationControls != -1)
  {
    OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
  }

  v0 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_52(v0, &static Logger.conversationControls);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (OUTLINED_FUNCTION_163(v2))
  {
    v3 = OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_39_2(v3);
    OUTLINED_FUNCTION_219();
    _os_log_impl(v4, v5, v6, v7, v8, 2u);
    OUTLINED_FUNCTION_18();
  }

  ConversationControlsManager.setupConversationControllerLocalStateObservers()();
  ConversationControlsManager.setupConversationControllerConversationStateObservers()();
  ConversationControlsManager.setupConversationControllerRemoteParticipantStateObservers()();
  ConversationControlsManager.setupConversationControllerSharePlayStateObservers()();
  ConversationControlsManager.setupConversationControllerGondolaStateObservers()();
  ConversationControlsManager.setupConversationControllerPushToTalkStateObservers()();

  ConversationControlsManager.setupGreenTea3PStateObservers()();
}

Swift::Void __swiftcall ConversationControlsManager.setupConversationControllerLocalStateObservers()()
{
  v0 = OUTLINED_FUNCTION_3_54();
  v1 = OUTLINED_FUNCTION_67_2(v0);
  OUTLINED_FUNCTION_84_5(v1, v25);
  OUTLINED_FUNCTION_266();
  OUTLINED_FUNCTION_50_14();
  v2 = OUTLINED_FUNCTION_3_54();
  v3 = OUTLINED_FUNCTION_67_2(v2);
  OUTLINED_FUNCTION_84_5(v3, v24);
  OUTLINED_FUNCTION_266();
  OUTLINED_FUNCTION_50_14();
  v4 = OUTLINED_FUNCTION_3_54();
  v5 = OUTLINED_FUNCTION_67_2(v4);
  OUTLINED_FUNCTION_84_5(v5, v23);
  OUTLINED_FUNCTION_266();
  OUTLINED_FUNCTION_50_14();
  v6 = OUTLINED_FUNCTION_3_54();
  v7 = OUTLINED_FUNCTION_67_2(v6);
  OUTLINED_FUNCTION_84_5(v7, v22);
  OUTLINED_FUNCTION_266();
  OUTLINED_FUNCTION_50_14();
  v8 = OUTLINED_FUNCTION_3_54();
  v9 = OUTLINED_FUNCTION_67_2(v8);
  OUTLINED_FUNCTION_84_5(v9, v21);
  OUTLINED_FUNCTION_266();
  OUTLINED_FUNCTION_50_14();
  v10 = OUTLINED_FUNCTION_3_54();
  v11 = OUTLINED_FUNCTION_67_2(v10);
  OUTLINED_FUNCTION_84_5(v11, v20);
  OUTLINED_FUNCTION_266();
  OUTLINED_FUNCTION_50_14();
  v12 = OUTLINED_FUNCTION_3_54();
  v13 = OUTLINED_FUNCTION_67_2(v12);
  OUTLINED_FUNCTION_84_5(v13, v19);
  OUTLINED_FUNCTION_266();
  OUTLINED_FUNCTION_50_14();
  v14 = OUTLINED_FUNCTION_3_54();
  OUTLINED_FUNCTION_247_0(v14);
  v15 = swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_73(v15, &v18);
  OUTLINED_FUNCTION_356();
  v16 = OUTLINED_FUNCTION_62_0();
  outlined consume of (@escaping @callee_guaranteed () -> ())?(v16, v17);
}

uint64_t OUTLINED_FUNCTION_254_0()
{

  return swift_getObjectType();
}

uint64_t OUTLINED_FUNCTION_208_2@<X0>(uint64_t a1@<X8>)
{
  v3 = (v2 + a1);
  result = *v3;
  v5 = v3[1];
  v6 = v3[2];
  *v1 = *v3;
  v1[1] = v5;
  v1[2] = v6;
  return result;
}

void *OUTLINED_FUNCTION_208_3(void *a1)
{

  return memcpy(a1, (v1 + v2), 0x150uLL);
}

Swift::Void __swiftcall ConversationControlsManager.setupConversationControllerConversationStateObservers()()
{
  v1 = v0;
  if (one-time initialization token for conversationControls != -1)
  {
    OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
  }

  v2 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_52(v2, &static Logger.conversationControls);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (OUTLINED_FUNCTION_163(v4))
  {
    v5 = OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_39_2(v5);
    OUTLINED_FUNCTION_219();
    _os_log_impl(v6, v7, v8, v9, v10, 2u);
    OUTLINED_FUNCTION_18();
  }

  if ([*(v1 + OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_featureFlags) sharePlayInCallsEnabled])
  {
    v11 = *(v1 + OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_conversationController);
    OUTLINED_FUNCTION_20();
    v12 = swift_allocObject();
    OUTLINED_FUNCTION_278(v12);
    swift_unknownObjectWeakInit();
    v13 = (v11 + OBJC_IVAR____TtC15ConversationKit22ConversationController_callConversationChanged);
    OUTLINED_FUNCTION_3_5(v13, v54);
    *v13 = partial apply for closure #1 in ConversationControlsManager.setupConversationControllerConversationStateObservers();
    v13[1] = v3;

    v14 = OUTLINED_FUNCTION_40_2();
    outlined consume of (@escaping @callee_guaranteed () -> ())?(v14, v15);
  }

  v16 = *(v1 + OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_conversationController);
  OUTLINED_FUNCTION_36();
  v17 = swift_allocObject();
  OUTLINED_FUNCTION_95_3(v17);
  v18 = swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_84_5(v18, v70);
  OUTLINED_FUNCTION_266();
  OUTLINED_FUNCTION_50_14();
  OUTLINED_FUNCTION_36();
  v19 = swift_allocObject();
  OUTLINED_FUNCTION_95_3(v19);
  v20 = swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_84_5(v20, v69);
  OUTLINED_FUNCTION_266();
  OUTLINED_FUNCTION_50_14();
  OUTLINED_FUNCTION_36();
  v21 = swift_allocObject();
  OUTLINED_FUNCTION_95_3(v21);
  v22 = swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_84_5(v22, v68);
  OUTLINED_FUNCTION_266();
  OUTLINED_FUNCTION_50_14();
  OUTLINED_FUNCTION_36();
  v23 = swift_allocObject();
  OUTLINED_FUNCTION_95_3(v23);
  v24 = swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_84_5(v24, v67);
  OUTLINED_FUNCTION_266();
  OUTLINED_FUNCTION_50_14();
  OUTLINED_FUNCTION_36();
  v25 = swift_allocObject();
  OUTLINED_FUNCTION_95_3(v25);
  v26 = swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_84_5(v26, v66);
  OUTLINED_FUNCTION_266();
  OUTLINED_FUNCTION_50_14();
  OUTLINED_FUNCTION_36();
  v27 = swift_allocObject();
  OUTLINED_FUNCTION_95_3(v27);
  v28 = swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_84_5(v28, v65);
  OUTLINED_FUNCTION_266();
  OUTLINED_FUNCTION_50_14();
  OUTLINED_FUNCTION_36();
  v29 = swift_allocObject();
  OUTLINED_FUNCTION_95_3(v29);
  v30 = swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_84_5(v30, v64);
  OUTLINED_FUNCTION_266();
  OUTLINED_FUNCTION_50_14();
  OUTLINED_FUNCTION_36();
  v31 = swift_allocObject();
  OUTLINED_FUNCTION_95_3(v31);
  v32 = swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_84_5(v32, v63);
  OUTLINED_FUNCTION_266();
  OUTLINED_FUNCTION_50_14();
  OUTLINED_FUNCTION_36();
  v33 = swift_allocObject();
  OUTLINED_FUNCTION_95_3(v33);
  v34 = swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_84_5(v34, v62);
  OUTLINED_FUNCTION_266();
  OUTLINED_FUNCTION_50_14();
  OUTLINED_FUNCTION_36();
  v35 = swift_allocObject();
  OUTLINED_FUNCTION_95_3(v35);
  v36 = swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_84_5(v36, v61);
  OUTLINED_FUNCTION_266();
  OUTLINED_FUNCTION_50_14();
  OUTLINED_FUNCTION_36();
  v37 = swift_allocObject();
  OUTLINED_FUNCTION_278(v37);
  swift_unknownObjectWeakInit();
  v38 = (v16 + OBJC_IVAR____TtC15ConversationKit22ConversationController_screenSharingAvailabilityDidChange);
  OUTLINED_FUNCTION_3_5(v16 + OBJC_IVAR____TtC15ConversationKit22ConversationController_screenSharingAvailabilityDidChange, v60);
  *v38 = partial apply for closure #12 in ConversationControlsManager.setupConversationControllerConversationStateObservers();
  v38[1] = &unk_1F3ADF248;

  v39 = OUTLINED_FUNCTION_40_2();
  outlined consume of (@escaping @callee_guaranteed () -> ())?(v39, v40);

  if (one-time initialization token for DidChangeIsWaitingOnFirstFrameNotification != -1)
  {
    swift_once();
  }

  v41 = OUTLINED_FUNCTION_211_0();
  [v41 v42];
  v43 = OUTLINED_FUNCTION_211_0();
  [v43 v44];
  if (one-time initialization token for MoreMenuRemoteAlertViewPresentAddParticipant != -1)
  {
    swift_once();
  }

  v45 = OUTLINED_FUNCTION_211_0();
  [v45 v46];
  if (one-time initialization token for MoreMenuRemoteAlertViewPresentContactCard != -1)
  {
    swift_once();
  }

  v47 = OUTLINED_FUNCTION_211_0();
  [v47 v48];
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_0_9(&one-time initialization token for shared);
  }

  v49 = static Defaults.shared;
  OUTLINED_FUNCTION_20();
  v50 = swift_allocObject();
  OUTLINED_FUNCTION_95_3(v50);
  swift_unknownObjectWeakInit();
  v51 = *(*v49 + 864);

  v52 = OUTLINED_FUNCTION_28_3();
  v51(v52);
  OUTLINED_FUNCTION_6_4();

  v53 = 0;
  if (v49)
  {
    v53 = type metadata accessor for Defaults.Observation();
  }

  else
  {
    v57 = 0;
    v58 = 0;
  }

  v56 = v49;
  v59 = v53;
  OUTLINED_FUNCTION_30_2(v1 + OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_observation, v55);
  outlined assign with take of RecentsCallItem?();
  swift_endAccess();
}

id Defaults.screeningStatusOverrideObservation(onUpdate:)(uint64_t a1, uint64_t a2)
{
  if ((Defaults.isInternalInstall.getter() & 1) == 0)
  {
    return 0;
  }

  v4 = [objc_opt_self() standardUserDefaults];
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v6 = objc_allocWithZone(type metadata accessor for Defaults.Observation());

  return Defaults.Observation.init(userDefault:key:onChange:)();
}

uint64_t sub_1BBCBF42C()
{

  OUTLINED_FUNCTION_19_16();

  return swift_deallocObject();
}

id Defaults.isInternalInstall.getter()
{
  v0 = [objc_opt_self() sharedInstance];
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  v2 = [v0 isInternalInstall];

  return v2;
}

id Defaults.Observation.init(userDefault:key:onChange:)()
{
  OUTLINED_FUNCTION_11_102();
  ObjectType = swift_getObjectType();
  v7 = &v1[OBJC_IVAR____TtCC15ConversationKit8Defaults11Observation_key];
  *v7 = v4;
  *(v7 + 1) = v3;
  *&v1[OBJC_IVAR____TtCC15ConversationKit8Defaults11Observation_userDefault] = v5;
  v8 = &v1[OBJC_IVAR____TtCC15ConversationKit8Defaults11Observation_onChange];
  *v8 = v2;
  *(v8 + 1) = v0;
  v13.receiver = v1;
  v13.super_class = ObjectType;

  v9 = v5;

  v10 = objc_msgSendSuper2(&v13, sel_init);
  v11 = MEMORY[0x1BFB209B0](v4, v3);

  [v9 addObserver:v10 forKeyPath:v11 options:0 context:{0, v13.receiver, v13.super_class}];

  return v10;
}

Swift::Void __swiftcall ConversationControlsManager.setupConversationControllerRemoteParticipantStateObservers()()
{
  v0 = OUTLINED_FUNCTION_3_54();
  v1 = OUTLINED_FUNCTION_67_2(v0);
  OUTLINED_FUNCTION_84_5(v1, v37);
  OUTLINED_FUNCTION_266();
  OUTLINED_FUNCTION_50_14();
  v2 = OUTLINED_FUNCTION_3_54();
  v3 = OUTLINED_FUNCTION_67_2(v2);
  OUTLINED_FUNCTION_84_5(v3, v36);
  OUTLINED_FUNCTION_266();
  OUTLINED_FUNCTION_50_14();
  v4 = OUTLINED_FUNCTION_3_54();
  v5 = OUTLINED_FUNCTION_67_2(v4);
  OUTLINED_FUNCTION_84_5(v5, v35);
  OUTLINED_FUNCTION_266();
  OUTLINED_FUNCTION_50_14();
  v6 = OUTLINED_FUNCTION_3_54();
  v7 = OUTLINED_FUNCTION_67_2(v6);
  OUTLINED_FUNCTION_84_5(v7, v34);
  OUTLINED_FUNCTION_266();
  OUTLINED_FUNCTION_50_14();
  v8 = OUTLINED_FUNCTION_3_54();
  v9 = OUTLINED_FUNCTION_67_2(v8);
  OUTLINED_FUNCTION_84_5(v9, v33);
  OUTLINED_FUNCTION_266();
  OUTLINED_FUNCTION_50_14();
  v10 = OUTLINED_FUNCTION_3_54();
  v11 = OUTLINED_FUNCTION_67_2(v10);
  OUTLINED_FUNCTION_84_5(v11, v32);
  OUTLINED_FUNCTION_266();
  OUTLINED_FUNCTION_50_14();
  v12 = OUTLINED_FUNCTION_3_54();
  v13 = OUTLINED_FUNCTION_67_2(v12);
  OUTLINED_FUNCTION_84_5(v13, v31);
  OUTLINED_FUNCTION_266();
  OUTLINED_FUNCTION_50_14();
  v14 = OUTLINED_FUNCTION_3_54();
  v15 = OUTLINED_FUNCTION_67_2(v14);
  OUTLINED_FUNCTION_84_5(v15, v30);
  OUTLINED_FUNCTION_266();
  OUTLINED_FUNCTION_50_14();
  v16 = OUTLINED_FUNCTION_3_54();
  v17 = OUTLINED_FUNCTION_67_2(v16);
  OUTLINED_FUNCTION_84_5(v17, v29);
  OUTLINED_FUNCTION_266();
  OUTLINED_FUNCTION_50_14();
  v18 = OUTLINED_FUNCTION_3_54();
  v19 = OUTLINED_FUNCTION_67_2(v18);
  OUTLINED_FUNCTION_84_5(v19, v28);
  OUTLINED_FUNCTION_266();
  OUTLINED_FUNCTION_50_14();
  v20 = OUTLINED_FUNCTION_3_54();
  v21 = OUTLINED_FUNCTION_67_2(v20);
  OUTLINED_FUNCTION_84_5(v21, v27);
  OUTLINED_FUNCTION_266();
  OUTLINED_FUNCTION_50_14();
  v22 = OUTLINED_FUNCTION_3_54();
  OUTLINED_FUNCTION_247_0(v22);
  v23 = swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_73(v23, &v26);
  OUTLINED_FUNCTION_356();
  v24 = OUTLINED_FUNCTION_62_0();
  outlined consume of (@escaping @callee_guaranteed () -> ())?(v24, v25);
}

Swift::Void __swiftcall ConversationControlsManager.setupConversationControllerSharePlayStateObservers()()
{
  v0 = OUTLINED_FUNCTION_3_54();
  v1 = OUTLINED_FUNCTION_67_2(v0);
  OUTLINED_FUNCTION_84_5(v1, v15);
  OUTLINED_FUNCTION_266();
  OUTLINED_FUNCTION_50_14();
  v2 = OUTLINED_FUNCTION_3_54();
  v3 = OUTLINED_FUNCTION_67_2(v2);
  OUTLINED_FUNCTION_84_5(v3, v14);
  OUTLINED_FUNCTION_266();
  OUTLINED_FUNCTION_50_14();
  v4 = OUTLINED_FUNCTION_3_54();
  v5 = OUTLINED_FUNCTION_67_2(v4);
  OUTLINED_FUNCTION_84_5(v5, v13);
  OUTLINED_FUNCTION_266();
  OUTLINED_FUNCTION_50_14();
  v6 = OUTLINED_FUNCTION_3_54();
  v7 = OUTLINED_FUNCTION_67_2(v6);
  OUTLINED_FUNCTION_84_5(v7, v12);
  OUTLINED_FUNCTION_266();
  OUTLINED_FUNCTION_50_14();
  v8 = OUTLINED_FUNCTION_3_54();
  OUTLINED_FUNCTION_247_0(v8);
  v9 = swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_51_3(v9);
  OUTLINED_FUNCTION_356();
  v10 = OUTLINED_FUNCTION_62_0();
  outlined consume of (@escaping @callee_guaranteed () -> ())?(v10, v11);
}

Swift::Void __swiftcall ConversationControlsManager.setupConversationControllerGondolaStateObservers()()
{
  v0 = OUTLINED_FUNCTION_3_54();
  v1 = OUTLINED_FUNCTION_67_2(v0);
  OUTLINED_FUNCTION_84_5(v1, v25);
  OUTLINED_FUNCTION_266();
  OUTLINED_FUNCTION_50_14();
  v2 = OUTLINED_FUNCTION_3_54();
  v3 = OUTLINED_FUNCTION_67_2(v2);
  OUTLINED_FUNCTION_84_5(v3, v24);
  OUTLINED_FUNCTION_266();
  OUTLINED_FUNCTION_50_14();
  v4 = OUTLINED_FUNCTION_3_54();
  v5 = OUTLINED_FUNCTION_67_2(v4);
  OUTLINED_FUNCTION_84_5(v5, v23);
  OUTLINED_FUNCTION_266();
  OUTLINED_FUNCTION_50_14();
  v6 = OUTLINED_FUNCTION_3_54();
  v7 = OUTLINED_FUNCTION_67_2(v6);
  OUTLINED_FUNCTION_84_5(v7, v22);
  OUTLINED_FUNCTION_266();
  OUTLINED_FUNCTION_50_14();
  v8 = OUTLINED_FUNCTION_3_54();
  v9 = OUTLINED_FUNCTION_67_2(v8);
  OUTLINED_FUNCTION_84_5(v9, v21);
  OUTLINED_FUNCTION_266();
  OUTLINED_FUNCTION_50_14();
  v10 = OUTLINED_FUNCTION_3_54();
  v11 = OUTLINED_FUNCTION_67_2(v10);
  OUTLINED_FUNCTION_84_5(v11, v20);
  OUTLINED_FUNCTION_266();
  OUTLINED_FUNCTION_50_14();
  v12 = OUTLINED_FUNCTION_3_54();
  v13 = OUTLINED_FUNCTION_67_2(v12);
  OUTLINED_FUNCTION_84_5(v13, v19);
  OUTLINED_FUNCTION_266();
  OUTLINED_FUNCTION_50_14();
  v14 = OUTLINED_FUNCTION_3_54();
  OUTLINED_FUNCTION_247_0(v14);
  v15 = swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_73(v15, &v18);
  OUTLINED_FUNCTION_356();
  v16 = OUTLINED_FUNCTION_62_0();
  outlined consume of (@escaping @callee_guaranteed () -> ())?(v16, v17);
}

uint64_t ConversationControlsManager.setupConversationControllerPushToTalkStateObservers()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v57 = &v44 - v3;
  v4 = type metadata accessor for OS_dispatch_queue.SchedulerTimeType.Stride();
  v58 = *(v4 - 8);
  v59 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v54 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine4JustVy15ConversationKit4Call_pGMd, &_s7Combine4JustVy15ConversationKit4Call_pGMR);
  v46 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v7 = &v44 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO5MergeVy_AA4JustVy15ConversationKit4Call_pGAA19CurrentValueSubjectCyAhI_ps5NeverOGGMd, &_s7Combine10PublishersO5MergeVy_AA4JustVy15ConversationKit4Call_pGAA19CurrentValueSubjectCyAhI_ps5NeverOGGMR);
  v9 = *(v8 - 8);
  v47 = v8;
  v48 = v9;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v44 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO0A6LatestVy_AC5MergeVy_AA4JustVy15ConversationKit4Call_pGAA19CurrentValueSubjectCyAjK_ps5NeverOGGANySbAPGGMd, &_s7Combine10PublishersO0A6LatestVy_AC5MergeVy_AA4JustVy15ConversationKit4Call_pGAA19CurrentValueSubjectCyAjK_ps5NeverOGGANySbAPGGMR);
  v13 = *(v12 - 8);
  v49 = v12;
  v50 = v13;
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v44 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO10CompactMapVy_AC0A6LatestVy_AC5MergeVy_AA4JustVy15ConversationKit4Call_pGAA19CurrentValueSubjectCyAlM_ps5NeverOGGAPySbARGGSo6TUCallC4call_So13TUParticipantCSg23activeRemoteParticipantSb22isIncomingTransmissiontGMd, &_s7Combine10PublishersO10CompactMapVy_AC0A6LatestVy_AC5MergeVy_AA4JustVy15ConversationKit4Call_pGAA19CurrentValueSubjectCyAlM_ps5NeverOGGAPySbARGGSo6TUCallC4call_So13TUParticipantCSg23activeRemoteParticipantSb22isIncomingTransmissiontGMR);
  v17 = *(v16 - 8);
  v52 = v16;
  v53 = v17;
  MEMORY[0x1EEE9AC00](v16);
  v45 = &v44 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO8DebounceVy_AC10CompactMapVy_AC0A6LatestVy_AC5MergeVy_AA4JustVy15ConversationKit4Call_pGAA19CurrentValueSubjectCyAnO_ps5NeverOGGARySbATGGSo6TUCallC4call_So13TUParticipantCSg23activeRemoteParticipantSb22isIncomingTransmissiontGSo17OS_dispatch_queueCGMd, &_s7Combine10PublishersO8DebounceVy_AC10CompactMapVy_AC0A6LatestVy_AC5MergeVy_AA4JustVy15ConversationKit4Call_pGAA19CurrentValueSubjectCyAnO_ps5NeverOGGARySbATGGSo6TUCallC4call_So13TUParticipantCSg23activeRemoteParticipantSb22isIncomingTransmissiontGSo17OS_dispatch_queueCGMR);
  v20 = *(v19 - 8);
  v55 = v19;
  v56 = v20;
  MEMORY[0x1EEE9AC00](v19);
  v51 = &v44 - v21;
  v22 = *(v0 + OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_conversationController);
  v23 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v24 = (v22 + OBJC_IVAR____TtC15ConversationKit22ConversationController_pttCallStatusDidChange);
  swift_beginAccess();
  v26 = *v24;
  v25 = v24[1];
  *v24 = partial apply for closure #1 in ConversationControlsManager.setupConversationControllerPushToTalkStateObservers();
  v24[1] = v23;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v26, v25);

  v60 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x2A0))(v27);
  v61 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit4Call_pMd, &_s15ConversationKit4Call_pMR);
  Just.init(_:)();
  v60 = ConversationControlsManager.pttCallUpdateSubject.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCy15ConversationKit4Call_ps5NeverOGMd, &_s7Combine19CurrentValueSubjectCy15ConversationKit4Call_ps5NeverOGMR);
  lazy protocol witness table accessor for type NSObject.KeyValueObservingPublisher<UICollectionView, CGPoint> and conformance NSObject.KeyValueObservingPublisher<A, B>(&lazy protocol witness table cache variable for type Just<Call> and conformance Just<A>, &_s7Combine4JustVy15ConversationKit4Call_pGMd, &_s7Combine4JustVy15ConversationKit4Call_pGMR);
  lazy protocol witness table accessor for type NSObject.KeyValueObservingPublisher<UICollectionView, CGPoint> and conformance NSObject.KeyValueObservingPublisher<A, B>(&lazy protocol witness table cache variable for type CurrentValueSubject<Call, Never> and conformance CurrentValueSubject<A, B>, &_s7Combine19CurrentValueSubjectCy15ConversationKit4Call_ps5NeverOGMd, &_s7Combine19CurrentValueSubjectCy15ConversationKit4Call_ps5NeverOGMR);
  v29 = v44;
  Publisher.merge<A>(with:)();

  (*(v46 + 8))(v7, v29);
  v60 = *(v1 + OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_incomingTransmissionReceivedSubject);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCySbs5NeverOGMd, &_s7Combine19CurrentValueSubjectCySbs5NeverOGMR);
  lazy protocol witness table accessor for type NSObject.KeyValueObservingPublisher<UICollectionView, CGPoint> and conformance NSObject.KeyValueObservingPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.Merge<Just<Call>, CurrentValueSubject<Call, Never>> and conformance Publishers.Merge<A, B>, &_s7Combine10PublishersO5MergeVy_AA4JustVy15ConversationKit4Call_pGAA19CurrentValueSubjectCyAhI_ps5NeverOGGMd, &_s7Combine10PublishersO5MergeVy_AA4JustVy15ConversationKit4Call_pGAA19CurrentValueSubjectCyAhI_ps5NeverOGGMR);
  lazy protocol witness table accessor for type NSObject.KeyValueObservingPublisher<UICollectionView, CGPoint> and conformance NSObject.KeyValueObservingPublisher<A, B>(&lazy protocol witness table cache variable for type CurrentValueSubject<Bool, Never> and conformance CurrentValueSubject<A, B>, &_s7Combine19CurrentValueSubjectCySbs5NeverOGMd, &_s7Combine19CurrentValueSubjectCySbs5NeverOGMR);
  v30 = v47;
  Publisher.combineLatest<A>(_:)();
  (*(v48 + 8))(v11, v30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo6TUCallC4call_So13TUParticipantCSg23activeRemoteParticipantSb22isIncomingTransmissiontMd, &_sSo6TUCallC4call_So13TUParticipantCSg23activeRemoteParticipantSb22isIncomingTransmissiontMR);
  lazy protocol witness table accessor for type NSObject.KeyValueObservingPublisher<UICollectionView, CGPoint> and conformance NSObject.KeyValueObservingPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.CombineLatest<Publishers.Merge<Just<Call>, CurrentValueSubject<Call, Never>>, CurrentValueSubject<Bool, Never>> and conformance Publishers.CombineLatest<A, B>, &_s7Combine10PublishersO0A6LatestVy_AC5MergeVy_AA4JustVy15ConversationKit4Call_pGAA19CurrentValueSubjectCyAjK_ps5NeverOGGANySbAPGGMd, &_s7Combine10PublishersO0A6LatestVy_AC5MergeVy_AA4JustVy15ConversationKit4Call_pGAA19CurrentValueSubjectCyAjK_ps5NeverOGGANySbAPGGMR);
  v31 = v45;
  v32 = v49;
  Publisher.compactMap<A>(_:)();
  (*(v50 + 8))(v15, v32);
  v33 = v54;
  static OS_dispatch_queue.SchedulerTimeType.Stride.milliseconds(_:)();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  v34 = static OS_dispatch_queue.main.getter();
  v60 = v34;
  v35 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v36 = v57;
  __swift_storeEnumTagSinglePayload(v57, 1, 1, v35);
  lazy protocol witness table accessor for type NSObject.KeyValueObservingPublisher<UICollectionView, CGPoint> and conformance NSObject.KeyValueObservingPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.CompactMap<Publishers.CombineLatest<Publishers.Merge<Just<Call>, CurrentValueSubject<Call, Never>>, CurrentValueSubject<Bool, Never>>, (call: TUCall, activeRemoteParticipant: TUParticipant?, isIncomingTransmission: Bool)> and conformance Publishers.CompactMap<A, B>, &_s7Combine10PublishersO10CompactMapVy_AC0A6LatestVy_AC5MergeVy_AA4JustVy15ConversationKit4Call_pGAA19CurrentValueSubjectCyAlM_ps5NeverOGGAPySbARGGSo6TUCallC4call_So13TUParticipantCSg23activeRemoteParticipantSb22isIncomingTransmissiontGMd, &_s7Combine10PublishersO10CompactMapVy_AC0A6LatestVy_AC5MergeVy_AA4JustVy15ConversationKit4Call_pGAA19CurrentValueSubjectCyAlM_ps5NeverOGGAPySbARGGSo6TUCallC4call_So13TUParticipantCSg23activeRemoteParticipantSb22isIncomingTransmissiontGMR);
  lazy protocol witness table accessor for type TUConversationInvitationPreference and conformance NSObject(&lazy protocol witness table cache variable for type OS_dispatch_queue and conformance OS_dispatch_queue, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  v38 = v51;
  v37 = v52;
  Publisher.debounce<A>(for:scheduler:options:)();
  outlined destroy of CallControlsService?(v36, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMR);

  (*(v58 + 8))(v33, v59);
  (*(v53 + 8))(v31, v37);
  v39 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v40 = swift_allocObject();
  *(v40 + 16) = partial apply for closure #3 in ConversationControlsManager.setupConversationControllerPushToTalkStateObservers();
  *(v40 + 24) = v39;
  lazy protocol witness table accessor for type NSObject.KeyValueObservingPublisher<UICollectionView, CGPoint> and conformance NSObject.KeyValueObservingPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.Debounce<Publishers.CompactMap<Publishers.CombineLatest<Publishers.Merge<Just<Call>, CurrentValueSubject<Call, Never>>, CurrentValueSubject<Bool, Never>>, (call: TUCall, activeRemoteParticipant: TUParticipant?, isIncomingTransmission: Bool)>, OS_dispatch_queue> and conformance Publishers.Debounce<A, B>, &_s7Combine10PublishersO8DebounceVy_AC10CompactMapVy_AC0A6LatestVy_AC5MergeVy_AA4JustVy15ConversationKit4Call_pGAA19CurrentValueSubjectCyAnO_ps5NeverOGGARySbATGGSo6TUCallC4call_So13TUParticipantCSg23activeRemoteParticipantSb22isIncomingTransmissiontGSo17OS_dispatch_queueCGMd, &_s7Combine10PublishersO8DebounceVy_AC10CompactMapVy_AC0A6LatestVy_AC5MergeVy_AA4JustVy15ConversationKit4Call_pGAA19CurrentValueSubjectCyAnO_ps5NeverOGGARySbATGGSo6TUCallC4call_So13TUParticipantCSg23activeRemoteParticipantSb22isIncomingTransmissiontGSo17OS_dispatch_queueCGMR);
  v41 = v55;
  v42 = Publisher<>.sink(receiveValue:)();

  (*(v56 + 8))(v38, v41);
  *(v1 + OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_pttCallStatusUpdateCancellable) = v42;
}

uint64_t sub_1BBCC05AC()
{

  OUTLINED_FUNCTION_19_16();

  return swift_deallocObject();
}

uint64_t ConversationControlsManager.pttCallUpdateSubject.getter()
{
  v2 = OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager____lazy_storage___pttCallUpdateSubject;
  if (*(v1 + OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager____lazy_storage___pttCallUpdateSubject))
  {
    v3 = *(v1 + OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager____lazy_storage___pttCallUpdateSubject);
  }

  else
  {
    OUTLINED_FUNCTION_262();
    (*((*MEMORY[0x1E69E7D40] & v4) + 0x2A0))();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCy15ConversationKit4Call_ps5NeverOGMd, &_s7Combine19CurrentValueSubjectCy15ConversationKit4Call_ps5NeverOGMR);
    swift_allocObject();
    v3 = CurrentValueSubject.init(_:)();
    *(v0 + v2) = v3;
  }

  return v3;
}

void *specialized thunk for @escaping @callee_guaranteed (@guaranteed Call, @unowned Bool) -> (@owned (call: TUCall, activeRemoteParticipant: TUParticipant?, isIncomingTransmission: Bool)?)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = closure #2 in ConversationControlsManager.setupConversationControllerPushToTalkStateObservers()(*a1);
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  return result;
}

void *closure #2 in ConversationControlsManager.setupConversationControllerPushToTalkStateObservers()(uint64_t a1)
{
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (v1)
  {
    swift_unknownObjectRetain();
    if ([v1 isPTT])
    {
      if ([v1 isReceivingTransmission])
      {
        v2 = [v1 activeRemoteParticipant];
      }
    }

    else
    {
      swift_unknownObjectRelease();
      return 0;
    }
  }

  return v1;
}

Swift::Void __swiftcall ConversationControlsManager.setupGreenTea3PStateObservers()()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69D8BE8]) init];
  v1 = [v0 groupConversations];

  if (v1)
  {
    if (TUDeviceHasChinaSKU())
    {
      OUTLINED_FUNCTION_20();
      v2 = swift_allocObject();
      OUTLINED_FUNCTION_247_0(v2);
      v3 = swift_unknownObjectWeakInit();
      OUTLINED_FUNCTION_51_3(v3);
      OUTLINED_FUNCTION_356();
      v4 = OUTLINED_FUNCTION_62_0();
      outlined consume of (@escaping @callee_guaranteed () -> ())?(v4, v5);
    }
  }
}

uint64_t ConversationControlsNoticeCoordinator.$activeNotice.getter()
{
  OUTLINED_FUNCTION_30_2(v0 + OBJC_IVAR____TtC15ConversationKit37ConversationControlsNoticeCoordinator__activeNotice, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy15ConversationKit6Notice_pSgGMd, &_s7Combine9PublishedVy15ConversationKit6Notice_pSgGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

void closure #1 in ConversationControlsManager.init(conversationController:entitlementsChecker:defaults:callCenter:featureFlags:)()
{
  OUTLINED_FUNCTION_6_7();
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    outlined init with copy of RecentCallDetailControllerFactoryProtocol?();
    if (v28)
    {
      outlined init with take of TapInteractionHandler(&v27, v31);
      if (one-time initialization token for conversationControls != -1)
      {
        OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
      }

      v2 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_52(v2, &static Logger.conversationControls);
      outlined init with copy of IDSLookupManager(v31, &v27);
      v3 = Logger.logObject.getter();
      v4 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v3, v4))
      {
        v5 = OUTLINED_FUNCTION_42();
        v26 = OUTLINED_FUNCTION_23();
        *v5 = 136315138;
        v6 = v28;
        v7 = v29;
        v8 = __swift_project_boxed_opaque_existential_1(&v27, v28);
        (*(v7 + 120))(v6, v7);
        OUTLINED_FUNCTION_264();
        __swift_destroy_boxed_opaque_existential_1(&v27);
        v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v6, &v26);

        *(v5 + 4) = v9;
        _os_log_impl(&dword_1BBC58000, v3, v4, "Present activeNotice: %s", v5, 0xCu);
        OUTLINED_FUNCTION_28_2();
        OUTLINED_FUNCTION_18();
      }

      else
      {

        __swift_destroy_boxed_opaque_existential_1(&v27);
      }

      OUTLINED_FUNCTION_293();
      if ((*(v22 + 1256))())
      {
        v23 = OUTLINED_FUNCTION_255();
        outlined init with copy of IDSLookupManager(v31, &v27);
        v30 = 1;
        (*(v3 + 80))(&v27, 0, 0, v23, v3);
        swift_unknownObjectRelease();
        outlined destroy of ConversationControlsType(&v27);
      }

      OUTLINED_FUNCTION_293();
      if ((*(v24 + 1184))())
      {
        OUTLINED_FUNCTION_255();
        outlined init with copy of IDSLookupManager(v31, &v27);
        v30 = 1;
        OUTLINED_FUNCTION_294();
        OUTLINED_FUNCTION_3_0();
        v25();
        swift_unknownObjectRelease();

        outlined destroy of ConversationControlsType(&v27);
      }

      else
      {
      }

      __swift_destroy_boxed_opaque_existential_1(v31);
    }

    else
    {
      outlined destroy of CallControlsService?(&v27, &_s15ConversationKit6Notice_pSgMd, &_s15ConversationKit6Notice_pSgMR);
      if (one-time initialization token for conversationControls != -1)
      {
        OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
      }

      v10 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_52(v10, &static Logger.conversationControls);
      v11 = Logger.logObject.getter();
      v12 = static os_log_type_t.default.getter();
      if (OUTLINED_FUNCTION_163(v12))
      {
        v13 = OUTLINED_FUNCTION_33();
        OUTLINED_FUNCTION_39_2(v13);
        OUTLINED_FUNCTION_219();
        _os_log_impl(v14, v15, v16, v17, v18, 2u);
        OUTLINED_FUNCTION_18();
      }

      type metadata completion function for SyncedScreeningAlphaGradientView();
      OUTLINED_FUNCTION_380();
      ConversationControlsManager.notifyDelegates(about:forceUpdate:)(v19, v20, v21);
    }
  }
}

uint64_t ConversationControlsManager.notifyDelegates(about:forceUpdate:)(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v6 = MEMORY[0x1E69E7D40];
  if (a1)
  {
    v7 = a2;
    v8 = a1;
  }

  else
  {
    v8 = (*((*MEMORY[0x1E69E7D40] & *v3) + 0x2A0))(0, a2);
    v7 = v9;
  }

  ObjectType = swift_getObjectType();
  v11 = *(v7 + 96);
  swift_unknownObjectRetain();
  if (v11(ObjectType, v7))
  {
    ConversationControlsManager.controlsHUDUpdate(for:)(v8, v7, v12, v13, v14, v15, v16, v17, v29[0], v29[1], v29[2], v30, v31, v32[0], v32[1], v32[2], v32[3], v32[4], v33, v34);
    ConversationController.lookupActiveConversation()();
    v18 = v30;
    if (v30)
    {
      v19 = v31;
      __swift_project_boxed_opaque_existential_1(v29, v30);
      v20 = Conversation.isContinuitySession.getter(v18, v19);
      v21 = __swift_destroy_boxed_opaque_existential_1(v29);
      if (v20)
      {
LABEL_14:
        if ((*((*v6 & *v4) + 0x4E8))(v21))
        {
          v27 = v26;
          v28 = swift_getObjectType();
          (*(v27 + 80))(v32, BYTE2(v33), a3 & 1, v28, v27);
          swift_unknownObjectRelease();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine18PassthroughSubjectCyyts5NeverOGMd, &_s7Combine18PassthroughSubjectCyyts5NeverOGMR);
        lazy protocol witness table accessor for type NSObject.KeyValueObservingPublisher<UICollectionView, CGPoint> and conformance NSObject.KeyValueObservingPublisher<A, B>(&lazy protocol witness table cache variable for type PassthroughSubject<(), Never> and conformance PassthroughSubject<A, B>, &_s7Combine18PassthroughSubjectCyyts5NeverOGMd, &_s7Combine18PassthroughSubjectCyyts5NeverOGMR);
        Subject<>.send()();
        swift_unknownObjectRelease();
        return outlined destroy of ControlsHUDUpdate(v32);
      }
    }

    else
    {
      v21 = outlined destroy of CallControlsService?(v29, &_s15ConversationKit0A0_pSgMd, &_s15ConversationKit0A0_pSgMR);
    }

    v21 = (*((*v6 & *v4) + 0x4B8))(v21);
    if (v21)
    {
      v24 = v23;
      v25 = swift_getObjectType();
      (*(v24 + 16))(v32, BYTE1(v33), v25, v24);
      v21 = swift_unknownObjectRelease();
    }

    goto LABEL_14;
  }

  return swift_unknownObjectRelease();
}

void ConversationControlsManager.controlsHUDUpdate(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_29();
  a19 = v22;
  a20 = v23;
  v24 = v21;
  v198 = v25;
  v27 = v26;
  v29 = v28;
  v193 = type metadata accessor for CallScreeningService();
  OUTLINED_FUNCTION_1();
  v192 = v30;
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_8();
  v191 = v33 - v32;
  OUTLINED_FUNCTION_4_24();
  v34 = type metadata accessor for CallScreeningStatus();
  OUTLINED_FUNCTION_1();
  v36 = v35;
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_17();
  v196 = (v38 - v39);
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v40);
  v190 = &v185 - v41;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v42);
  v44 = &v185 - v43;
  OUTLINED_FUNCTION_13_2();
  if ((*((*MEMORY[0x1E69E7D40] & v45) + 0x4E8))())
  {
    OUTLINED_FUNCTION_254_0();
    OUTLINED_FUNCTION_222_0();
    v46();
    OUTLINED_FUNCTION_247();
    swift_unknownObjectRelease();
    v47 = v20 ^ 1u;
  }

  else
  {
    v47 = 1;
  }

  v48 = *(v21 + OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_features);
  v49 = v48;
  if (Features.isIncomingCallBannerEnabled.getter())
  {
    v49 = v48;
    LODWORD(v199) = !Features.shouldShowFullScreenCallWaiting.getter() | v47;
  }

  else
  {
    LODWORD(v199) = 0;
  }

  objc_opt_self();
  OUTLINED_FUNCTION_108_0();
  v50 = swift_dynamicCastObjCClass();
  if (!v50)
  {
    goto LABEL_31;
  }

  v47 = v50;
  objc_opt_self();
  OUTLINED_FUNCTION_6_4();
  swift_unknownObjectRetain();
  v51 = [v49 sharedInstance];
  v52 = [v51 activeConversationForCall_];

  v189 = v52;
  if (!v52)
  {
    swift_unknownObjectRelease();
    goto LABEL_31;
  }

  if ((*((*MEMORY[0x1E69E7D40] & *v24) + 0x620))())
  {
  }

  else if ([v189 state] != 2)
  {
LABEL_16:
    swift_unknownObjectRelease();

    goto LABEL_31;
  }

  if ([v47 status] != 1)
  {
    goto LABEL_16;
  }

  v195 = v27;
  v197 = v44;
  v194 = v36;
  v200 = v29;
  v53 = [v189 screenSharingRequests];
  v54 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUScreenSharingRequest, 0x1E69D8CC8);
  OUTLINED_FUNCTION_1_65();
  lazy protocol witness table accessor for type TUConversationInvitationPreference and conformance NSObject(v55, &lazy cache variable for type metadata for TUScreenSharingRequest, 0x1E69D8CC8);
  OUTLINED_FUNCTION_243();
  v56 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v188 = v34;
  v186 = v56;
  v187 = v54;
  if ((v56 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    Set.Iterator.init(_cocoa:)();
    v47 = v208;
    v57 = v209;
    v58 = v210;
    v59 = v211;
    v60 = v212;
  }

  else
  {
    v47 = v56;
    v57 = (v56 + 56);
    v58 = ~(-1 << *(v56 + 32));
    OUTLINED_FUNCTION_56();
    v60 = (v61 & v62);

    v59 = 0;
  }

  v185 = v58;
  v63 = (v58 + 64) >> 6;
  if (v47 < 0)
  {
    goto LABEL_25;
  }

LABEL_19:
  v64 = v59;
  v65 = v59;
  if (!v60)
  {
    while (1)
    {
      v65 = v64 + 1;
      if (__OFADD__(v64, 1))
      {
        break;
      }

      if (v65 >= v63)
      {
        goto LABEL_30;
      }

      ++v64;
      if (v57[v65])
      {
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_98:
    OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
LABEL_69:
    v124 = type metadata accessor for Logger();
    v193 = __swift_project_value_buffer(v124, &static Logger.conversationControls);
    v125 = Logger.logObject.getter();
    v126 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v125, v126))
    {
      v127 = OUTLINED_FUNCTION_42();
      v128 = OUTLINED_FUNCTION_23();
      v204 = v128;
      *v127 = *&v54[144]._predicateFlags;
      LOBYTE(v202) = v60;
      v129 = >> prefix<A>(_:)();
      getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v129, v130, &v204);
      OUTLINED_FUNCTION_17_2();
      *(v127 + 4) = v57;
      OUTLINED_FUNCTION_325_0();
      _os_log_impl(v131, v132, v133, v134, v127, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v128);
      OUTLINED_FUNCTION_27();
      OUTLINED_FUNCTION_3_83();
    }

    if (!(v60 & 1 | ((v199 & 1) == 0)))
    {
      v135 = OUTLINED_FUNCTION_113_1();
      v137 = v136(v135);
      v138 = [v137 identifier];

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v139 = String.count.getter();
      v140 = v196;

      if (v139 >= 1)
      {
        v141 = OUTLINED_FUNCTION_113_1();
        v142 = v140(v141);
        v143 = [v142 isFaceTimeProvider];

        if ((v143 & 1) == 0)
        {
          v160 = OUTLINED_FUNCTION_113_1();
          if (v161(v160) & 1) != 0 || (v162 = OUTLINED_FUNCTION_113_1(), (v163(v162)) || (v164 = OUTLINED_FUNCTION_113_1(), v166 = v165(v164), ((v166 | v192)))
          {
            v167 = OUTLINED_FUNCTION_113_1();
            v168 = v140(v167);
            v169 = [v168 isSystemProvider];

            v170 = 8;
            if (v169)
            {
              v170 = 6;
            }

            v204 = v170;
            v205 = 0u;
            v206 = 0u;
            v207 = 7;
            swift_unknownObjectRetain();
            v171 = Logger.logObject.getter();
            static os_log_type_t.default.getter();
            OUTLINED_FUNCTION_375();
            swift_unknownObjectRelease();
            if (os_log_type_enabled(v171, v140))
            {
              v172 = OUTLINED_FUNCTION_30_1();
              v199 = swift_slowAlloc();
              v201 = v199;
              *v172 = 136315394;
              OUTLINED_FUNCTION_3_0();
              swift_beginAccess();
              v173 = >> prefix<A>(_:)();
              getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v173, v174, &v201);
              OUTLINED_FUNCTION_242();

              *(v172 + 4) = v24;
              *(v172 + 12) = 2080;
              v175 = (v140)(v63, v198);
              v176 = [v175 identifier];

              static String._unconditionallyBridgeFromObjectiveC(_:)();
              OUTLINED_FUNCTION_264();

              v202 = v175;
              v203 = v24;
              >> prefix<A>(_:)();
              OUTLINED_FUNCTION_175_0();

              v177 = OUTLINED_FUNCTION_208();
              getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v177, v178, v179);
              OUTLINED_FUNCTION_246();

              *(v172 + 14) = v175;
              OUTLINED_FUNCTION_325_0();
              _os_log_impl(v180, v181, v182, v183, v172, 0x16u);
              OUTLINED_FUNCTION_111_1(&a17);
              swift_arrayDestroy();
              OUTLINED_FUNCTION_3_83();
              OUTLINED_FUNCTION_104_2();
            }

            OUTLINED_FUNCTION_3_0();
            swift_beginAccess();
            v29 = v200;
            outlined init with copy of ConversationControlsType(&v204, v200);
            outlined destroy of ConversationControlsType(&v204);
            goto LABEL_92;
          }
        }
      }
    }

    if ((SBUIIsSystemApertureEnabled() & 1) != 0 || !ConversationControlsManager.shouldPresentCollaborationHUD.getter())
    {
      v29 = v200;
      (*((*MEMORY[0x1E69E7D40] & *v24) + 0x930))();
      OUTLINED_FUNCTION_3_0();
      swift_beginAccess();
      v144 = static ConversationControlsManager.shouldShowAVLessLeaveConfirmation;
      OUTLINED_FUNCTION_38_19();
      OUTLINED_FUNCTION_400();
      v145();
      v114 = 0;
      *(v29 + 41) = v144;
      goto LABEL_95;
    }

    v29 = v200;
    OUTLINED_FUNCTION_31_25(10);
    OUTLINED_FUNCTION_38_19();
    OUTLINED_FUNCTION_400();
    goto LABEL_77;
  }

LABEL_23:
  OUTLINED_FUNCTION_7_1();
  v54 = (v67 & v66);
  v58 = *(*(v47 + 48) + ((v65 << 9) | (8 * v68)));
  if (v58)
  {
    while ([v58 type] != 4)
    {

      v59 = v65;
      v60 = v54;
      if ((v47 & 0x8000000000000000) == 0)
      {
        goto LABEL_19;
      }

LABEL_25:
      v58 = v47 & 0x7FFFFFFFFFFFFFFFLL;
      v69 = __CocoaSet.Iterator.next()();
      if (v69)
      {
        v202 = v69;
        swift_dynamicCast();
        v58 = v204;
        v65 = v59;
        v54 = v60;
        if (v204)
        {
          continue;
        }
      }

      goto LABEL_30;
    }

    swift_unknownObjectRelease();
    v184 = OUTLINED_FUNCTION_297_0();
    outlined consume of Set<TUHandle>.Iterator._Variant(v184);

    v29 = v200;
    *v200 = 26;
    *(v29 + 1) = 0u;
    *(v29 + 3) = 0u;
    *(v29 + 20) = 263;
    v114 = 1;
    goto LABEL_95;
  }

LABEL_30:

  OUTLINED_FUNCTION_111_1(&a13);
  swift_unknownObjectRelease();
  v70 = OUTLINED_FUNCTION_297_0();
  v27 = v58;
  outlined consume of Set<TUHandle>.Iterator._Variant(v70);

  v29 = v200;
  v34 = v188;
  v36 = v194;
  v44 = v197;
LABEL_31:
  if (v199)
  {
    ObjectType = swift_getObjectType();
    if ((*(v198 + 208))(ObjectType) == 4)
    {
      (*((*MEMORY[0x1E69E7D40] & *v24) + 0x2A0))();
      OUTLINED_FUNCTION_254_0();
      OUTLINED_FUNCTION_307_0();
      v73 = v72();
      static ConversationControlsType.firstOrThirdPartyIncomingCall(for:)(v73, v29);
      swift_unknownObjectRelease();

LABEL_94:
      v114 = 1;
      *(v29 + 41) = 1;
      goto LABEL_95;
    }
  }

  v200 = v29;
  v195 = v27;
  v74 = Features.receptionistEnabled.getter();
  v75 = MEMORY[0x1E6995E98];
  v76 = MEMORY[0x1E6995EA0];
  v77 = MEMORY[0x1E69E7D40];
  LODWORD(v189) = v74;
  if (v74)
  {
    v78 = MEMORY[0x1E6995E98];
    *&v206 = &type metadata for ScreeningStatusOverride;
    *(&v206 + 1) = lazy protocol witness table accessor for type ScreeningStatusOverride and conformance ScreeningStatusOverride();
    type metadata accessor for Defaults();
    OUTLINED_FUNCTION_24();
    swift_allocObject();
    v204 = Defaults.init()();
    v79 = v191;
    v80 = CallScreeningService.init(overrides:)();
    (*((*v77 & *v24) + 0x2A0))(v80);
    v81 = OUTLINED_FUNCTION_254_0();
    (*(v47 + 48))(&v204, v81, v47);
    swift_unknownObjectRelease();
    CallScreeningService.screeningStatusForCall(_:)();
    __swift_destroy_boxed_opaque_existential_1(&v204);
    OUTLINED_FUNCTION_23_26();
    v82 = v79;
    v76 = MEMORY[0x1E6995EA0];
    v83(v82, v193);
  }

  else
  {
    OUTLINED_FUNCTION_143_1();
    (*(v84 + 672))();
    v85 = OUTLINED_FUNCTION_254_0();
    (*(v47 + 144))(v85, v47);
    OUTLINED_FUNCTION_247();
    swift_unknownObjectRelease();
    v78 = v75;
    if (v47)
    {
      v86 = v76;
    }

    else
    {
      v86 = v75;
    }

    v87 = v190;
    (*(v36 + 104))(v190, *v86, v34);
    (*(v36 + 32))(v44, v87, v34);
  }

  OUTLINED_FUNCTION_143_1();
  (*(v88 + 672))();
  objc_opt_self();
  v89 = swift_dynamicCastObjCClass();
  if (v89)
  {
    v90 = [v89 isWaitOnHoldActive];
    swift_unknownObjectRelease();
    v91 = v78;
    if (v90)
    {
      (*(v36 + 8))(v44, v34);
      (*(v36 + 104))(v44, *v78, v34);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    v91 = v78;
  }

  v92 = *(v36 + 16);
  v93 = v196;
  v197 = v44;
  v92(v196, v44, v34);
  v94 = OUTLINED_FUNCTION_208();
  v96 = v95(v94);
  v97 = v36;
  v57 = &lazy protocol witness table cache variable for type AsyncStream<Tips.Status> and conformance AsyncStream<A>;
  v54 = &stru_1BC4BA000;
  v98 = v96 == *MEMORY[0x1E6995EA8];
  v29 = v200;
  v194 = v97;
  if (v98)
  {
    v99 = v93;
    v100 = *(v97 + 8);
    v100(v99, v34);
    if (v189)
    {
      v101 = OUTLINED_FUNCTION_31_25(21);
      (v100)(v197, v34, v101);
      goto LABEL_94;
    }
  }

  else if (v96 != *v91)
  {
    if (v96 == *v76)
    {
      OUTLINED_FUNCTION_31_25(20);
      v117 = OUTLINED_FUNCTION_38_19();
      v119 = v34;
LABEL_77:
      v118(v117, v119);
      v114 = 0;
      *(v29 + 41) = 0;
      goto LABEL_95;
    }

    if (v96 == *MEMORY[0x1E6995EB0])
    {
      if (v189)
      {
        OUTLINED_FUNCTION_31_25(22);
        v121 = OUTLINED_FUNCTION_38_19();
        v123 = v34;
LABEL_93:
        v122(v121, v123);
        goto LABEL_94;
      }
    }

    else
    {
      if (one-time initialization token for conversationControls != -1)
      {
        OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
      }

      v146 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_52(v146, &static Logger.conversationControls);
      v147 = Logger.logObject.getter();
      v148 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v147, v148))
      {
        v149 = OUTLINED_FUNCTION_42();
        v150 = OUTLINED_FUNCTION_23();
        v204 = v150;
        *v149 = 136315138;
        OUTLINED_FUNCTION_111_1(&a15);
        OUTLINED_FUNCTION_3_0();
        swift_beginAccess();
        OUTLINED_FUNCTION_190();
        lazy protocol witness table accessor for type URL and conformance URL(v151, v152);
        v153 = dispatch thunk of CustomStringConvertible.description.getter();
        v155 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v153, v154, &v204);

        *(v149 + 4) = v155;
        OUTLINED_FUNCTION_325_0();
        _os_log_impl(v156, v157, v158, v159, v149, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v150);
        OUTLINED_FUNCTION_27();
        OUTLINED_FUNCTION_26();
      }

      (*(v194 + 8))(v196, v34);
    }
  }

  v188 = v34;
  OUTLINED_FUNCTION_111_1(&a13);
  v63 = swift_getObjectType();
  v102 = *(v198 + 184);
  v103 = v102(v63, v198);
  v104 = [v103 supportsDynamicSystemUI];

  if (v104)
  {
    v105 = [objc_allocWithZone(MEMORY[0x1E69D8BE8]) init];
    v106 = [v105 groupConversations];

    if (v106)
    {
      if (TUDeviceHasChinaSKU())
      {
        v107 = OUTLINED_FUNCTION_308();
        v109 = v108(v107);
        v110 = 23;
        if (v109 != 4)
        {
          v110 = 24;
        }

        v29 = v200;
        OUTLINED_FUNCTION_31_25(v110);
LABEL_92:
        OUTLINED_FUNCTION_38_19();
        OUTLINED_FUNCTION_400();
        goto LABEL_93;
      }
    }
  }

  v111 = OUTLINED_FUNCTION_308();
  if ((v112(v111) & 1) == 0)
  {
    v115 = OUTLINED_FUNCTION_308();
    if (v116(v115) == 1)
    {
      LODWORD(v192) = SBSIsSystemApertureAvailable() ^ 1;
    }

    else
    {
      LODWORD(v192) = 0;
    }

    type metadata accessor for PlaceholderCall(0);
    OUTLINED_FUNCTION_170();
    v120 = swift_dynamicCastClass();
    if (v120)
    {
      LOBYTE(v60) = *(v120 + 16) == 3;
    }

    else
    {
      LOBYTE(v60) = 0;
    }

    v196 = v102;
    if (one-time initialization token for conversationControls == -1)
    {
      goto LABEL_69;
    }

    goto LABEL_98;
  }

  v29 = v200;
  OUTLINED_FUNCTION_31_25(2);
  OUTLINED_FUNCTION_38_19();
  OUTLINED_FUNCTION_400();
  v113();
  v114 = 0;
  *(v29 + 41) = 1;
LABEL_95:
  *(v29 + 42) = v114;
  v29[6] = 0;
  OUTLINED_FUNCTION_30_0();
}

uint64_t ConversationControlsManager.systemBannerPresenter.getter(void *a1)
{
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  return swift_unknownObjectWeakLoadStrong();
}

BOOL Features.shouldShowFullScreenCallWaiting.getter()
{
  result = 0;
  if ((!SBUIIsSystemApertureEnabled() || (Features.callManagerEnabled.getter() & 1) == 0) && ((Features.isIncomingCallBannerEnabled.getter() & 1) == 0 || (Features.shouldEmbedSwapBanner.getter() & 1) == 0))
  {
    v13 = lazy protocol witness table accessor for type Features.CallUI and conformance Features.CallUI();
    v8 = OUTLINED_FUNCTION_12_53(v13, v1, v2, v3, v4, v5, v6, v7, v11, v12);
    OUTLINED_FUNCTION_8_68(v8, v9);
    if ((v0 & 1) == 0 && (Features.callManagerEnabled.getter() & 1) == 0)
    {
      return 1;
    }

    if ((SBUIIsSystemApertureEnabled() & 1) == 0)
    {
      return 1;
    }
  }

  return result;
}

uint64_t type metadata accessor for PlaceholderCall(uint64_t a1)
{
  result = type metadata singleton initialization cache for PlaceholderCall;
  if (!type metadata singleton initialization cache for PlaceholderCall)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_349(uint64_t a1)
{

  return Publisher.eraseToAnyPublisher()();
}

uint64_t get_enum_tag_for_layout_string_15ConversationKit0A12ControlsTypeO(uint64_t a1)
{
  if ((*(a1 + 40) & 7) == 7)
  {
    return (*a1 + 7);
  }

  else
  {
    return *(a1 + 40) & 7;
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

uint64_t ConversationControlsType.debugDescription.getter()
{
  outlined init with copy of ConversationControlsType(v0, &v27);
  v1 = v27;
  switch(v28)
  {
    case 1:
      outlined init with take of TapInteractionHandler(&v27, &v23);
      *&v26 = 0x28656369746F6ELL;
      *(&v26 + 1) = 0xE700000000000000;
      __swift_project_boxed_opaque_existential_1(&v23, v25);
      v17 = OUTLINED_FUNCTION_44_0();
      v19 = v18(v17);
      MEMORY[0x1BFB20B10](v19);

      MEMORY[0x1BFB20B10](41, 0xE100000000000000);
      __swift_destroy_boxed_opaque_existential_1(&v23);
      return OUTLINED_FUNCTION_38_2();
    case 2:
      OUTLINED_FUNCTION_45_13();
      _StringGuts.grow(_:)(19);

      OUTLINED_FUNCTION_19_24();
      v23 = v3 - 11;
      v24 = v2;
      if (*(&v1 + 1))
      {
        v26 = v1;
        v4 = String.init<A>(reflecting:)();
        v6 = v5;
      }

      else
      {
        v6 = 0xE300000000000000;
        v4 = 7104878;
      }

      MEMORY[0x1BFB20B10](v4, v6);
      goto LABEL_20;
    case 3:
      OUTLINED_FUNCTION_45_13();
      _StringGuts.grow(_:)(19);

      OUTLINED_FUNCTION_19_24();
      v23 = v8 - 11;
      v24 = v7;
      *&v26 = v1;
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUNearbySuggestion, 0x1E69D8C88);
      v9 = v1;
      v10 = String.init<A>(reflecting:)();
      MEMORY[0x1BFB20B10](v10);

LABEL_20:

      return OUTLINED_FUNCTION_38_2();
    case 4:
      outlined destroy of ConversationControlsType(&v27);
      goto LABEL_84;
    case 5:
      OUTLINED_FUNCTION_45_13();
      _StringGuts.grow(_:)(30);

      OUTLINED_FUNCTION_19_24();
      v23 = v21;
      v24 = v20;
      MEMORY[0x1BFB20B10](v21 + 36, 0x80000001BC5021A0);
      return OUTLINED_FUNCTION_38_2();
    case 6:
      outlined destroy of ConversationControlsType(&v27);
      return OUTLINED_FUNCTION_38_2();
    case 7:
      OUTLINED_FUNCTION_47_11();
      if (!v14)
      {
        return OUTLINED_FUNCTION_38_2();
      }

      v15 = v11 | *(&v1 + 1) | v12 | v13;
      if (v1 == 1 && v15 == 0)
      {
        goto LABEL_81;
      }

      if (v1 == 2 && !v15 || v1 == 3 && !v15)
      {
        return OUTLINED_FUNCTION_38_2();
      }

      if (v1 == 4 && !v15)
      {
        goto LABEL_81;
      }

      if (v1 == 5 && !v15)
      {
        return OUTLINED_FUNCTION_38_2();
      }

      if (v1 == 6 && !v15 || v1 == 7 && !v15 || v1 == 8 && !v15 || v1 == 9 && !v15 || v1 == 10 && !v15 || v1 == 11 && !v15 || v1 == 12 && !v15)
      {
        goto LABEL_81;
      }

      if (v1 == 13 && !v15)
      {
        return OUTLINED_FUNCTION_38_2();
      }

      if (v1 == 14 && !v15 || v1 == 15 && !v15 || v1 == 16 && !v15 || v1 == 17 && !v15 || v1 == 18 && !v15 || v1 == 19 && !v15 || v1 == 20 && !v15 || v1 == 21 && !v15 || v1 == 22 && !v15 || v1 == 23 && !v15 || v1 == 24 && !v15)
      {
        goto LABEL_81;
      }

      if (v1 == 25 && !v15 || v1 == 26 && !v15)
      {
        goto LABEL_84;
      }

      if (v1 != 27 || v15)
      {
        if (v1 != 28 || v15)
        {
LABEL_84:
          OUTLINED_FUNCTION_27_4();
        }
      }

      else
      {
LABEL_81:
        OUTLINED_FUNCTION_3_85();
      }

      return OUTLINED_FUNCTION_38_2();
    default:
      goto LABEL_81;
  }
}

uint64_t OUTLINED_FUNCTION_71_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);

  return outlined init with copy of IDSLookupManager(va, &a9);
}

uint64_t OUTLINED_FUNCTION_71_5()
{
  type metadata accessor for ParticipantGridView.VideoInfoCache(0);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_71_6(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  *v7 = result;
  *(v7 + 8) = a2;
  *(v7 + 16) = a3;
  *(v7 + 24) = a4;
  *(v7 + 32) = a5;
  *(v7 + 40) = a6;
  *(v7 + 48) = a7;
  return result;
}

uint64_t OUTLINED_FUNCTION_71_7(uint64_t a1, uint64_t a2)
{

  return outlined init with copy of [CaptionSectioner.SpeakerSection]();
}

uint64_t OUTLINED_FUNCTION_71_8()
{

  return outlined init with take of Collaboration();
}

uint64_t GameControllerIncomingCallEvent.init(acceptCallAction:rejectCallAction:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15ConversationKit25GameControllerPressActionVGMd, &_ss23_ContiguousArrayStorageCy15ConversationKit25GameControllerPressActionVGMR);
  v8 = (type metadata accessor for GameControllerPressAction(0) - 8);
  v9 = *(*v8 + 72);
  v10 = (*(*v8 + 80) + 32) & ~*(*v8 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1BC4BAA20;
  v12 = v11 + v10;
  static GCButtonElementName.a.getter();
  v13 = (v12 + v8[7]);
  *v13 = a1;
  v13[1] = a2;

  static GCButtonElementName.b.getter();
  v14 = (v12 + v9 + v8[7]);
  *v14 = a3;
  v14[1] = a4;

  return v11;
}

uint64_t type metadata accessor for GameControllerPressAction(uint64_t a1)
{
  result = type metadata singleton initialization cache for GameControllerPressAction;
  if (!type metadata singleton initialization cache for GameControllerPressAction)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t specialized CallGameController.addEvent(_:)(uint64_t a1, uint64_t a2)
{
  v8[3] = &type metadata for GameControllerIncomingCallEvent;
  v8[4] = lazy protocol witness table accessor for type GameControllerIncomingCallEvent and conformance GameControllerIncomingCallEvent();
  v8[0] = a1;
  outlined init with copy of IDSLookupManager(v8, v6);
  OUTLINED_FUNCTION_30_2(a2 + 32, &v5);

  specialized Set._Variant.insert(_:)(v7, v6);
  swift_endAccess();
  outlined destroy of CallGameController.GameControllerEventBox(v7);
  CallGameController.attachAllControllers()();
  return __swift_destroy_boxed_opaque_existential_1(v8);
}

BOOL specialized Set._Variant.insert(_:)(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  Hasher.init(_seed:)();
  specialized GameControllerEvent.hash(into:)(v20);
  Hasher._finalize()();
  OUTLINED_FUNCTION_16_7();
  v7 = ~v6;
  while (1)
  {
    v8 = v5 & v7;
    v9 = (1 << (v5 & v7)) & *(v4 + 56 + (((v5 & v7) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v9)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      outlined init with copy of CallGameController.GameControllerEventBox(a2, v20);
      v19 = *v17;
      specialized _NativeSet.insertNew(_:at:isUnique:)(v20, v8, isUniquelyReferenced_nonNull_native);
      *v17 = v19;
      v15 = *(a2 + 16);
      *a1 = *a2;
      *(a1 + 16) = v15;
      *(a1 + 32) = *(a2 + 32);
      return v9 == 0;
    }

    outlined init with copy of CallGameController.GameControllerEventBox(*(v4 + 48) + 40 * v8, v20);
    __swift_project_boxed_opaque_existential_1(v20, v21);
    v10 = dispatch thunk of Hashable.hashValue.getter();
    v11 = OUTLINED_FUNCTION_244_1();
    __swift_project_boxed_opaque_existential_1(v11, v12);
    v13 = dispatch thunk of Hashable.hashValue.getter();
    outlined destroy of CallGameController.GameControllerEventBox(v20);
    if (v10 == v13)
    {
      break;
    }

    v5 = v8 + 1;
  }

  outlined destroy of CallGameController.GameControllerEventBox(a2);
  outlined init with copy of CallGameController.GameControllerEventBox(*(v4 + 48) + 40 * v8, a1);
  return v9 == 0;
}

unint64_t lazy protocol witness table accessor for type GameControllerIncomingCallEvent and conformance GameControllerIncomingCallEvent()
{
  result = lazy protocol witness table cache variable for type GameControllerIncomingCallEvent and conformance GameControllerIncomingCallEvent;
  if (!lazy protocol witness table cache variable for type GameControllerIncomingCallEvent and conformance GameControllerIncomingCallEvent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GameControllerIncomingCallEvent and conformance GameControllerIncomingCallEvent);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GameControllerIncomingCallEvent and conformance GameControllerIncomingCallEvent;
  if (!lazy protocol witness table cache variable for type GameControllerIncomingCallEvent and conformance GameControllerIncomingCallEvent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GameControllerIncomingCallEvent and conformance GameControllerIncomingCallEvent);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GameControllerIncomingCallEvent and conformance GameControllerIncomingCallEvent;
  if (!lazy protocol witness table cache variable for type GameControllerIncomingCallEvent and conformance GameControllerIncomingCallEvent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GameControllerIncomingCallEvent and conformance GameControllerIncomingCallEvent);
  }

  return result;
}

uint64_t specialized GameControllerEvent.hash(into:)(uint64_t a1)
{
  v3 = type metadata accessor for GameControllerPressAction(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  OUTLINED_FUNCTION_6_1();
  v5 = v1[3];
  v6 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v5);
  v7 = (*(v6 + 16))(v5, v6);
  v8 = *(v7 + 16);
  if (v8)
  {
    v9 = v7 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v10 = *(v4 + 72);
    do
    {
      outlined init with copy of GameControllerPressAction(v9, v2);
      type metadata accessor for GCButtonElementName();
      lazy protocol witness table accessor for type GCButtonElementName and conformance GCButtonElementName();
      dispatch thunk of Hashable.hash(into:)();
      outlined destroy of GameControllerPressAction(v2);
      v9 += v10;
      --v8;
    }

    while (v8);
  }
}

uint64_t outlined init with copy of GameControllerPressAction(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GameControllerPressAction(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type GCButtonElementName and conformance GCButtonElementName()
{
  result = lazy protocol witness table cache variable for type GCButtonElementName and conformance GCButtonElementName;
  if (!lazy protocol witness table cache variable for type GCButtonElementName and conformance GCButtonElementName)
  {
    type metadata accessor for GCButtonElementName();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GCButtonElementName and conformance GCButtonElementName);
  }

  return result;
}

uint64_t outlined destroy of GameControllerPressAction(uint64_t a1)
{
  v2 = type metadata accessor for GameControllerPressAction(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void specialized _NativeSet.insertNew(_:at:isUnique:)(__int128 *result, unint64_t a2, char a3)
{
  v4 = v3;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 <= v7 || (a3 & 1) == 0)
  {
    if (a3)
    {
      specialized _NativeSet.resize(capacity:)();
      goto LABEL_10;
    }

    if (v8 <= v7)
    {
      specialized _NativeSet.copyAndResize(capacity:)(v7 + 1);
LABEL_10:
      v16 = *v3;
      Hasher.init(_seed:)();
      specialized GameControllerEvent.hash(into:)(v21);
      v17 = Hasher._finalize()();
      v18 = ~(-1 << *(v16 + 32));
      while (1)
      {
        a2 = v17 & v18;
        if (((*(v16 + 56 + (((v17 & v18) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v17 & v18)) & 1) == 0)
        {
          goto LABEL_7;
        }

        outlined init with copy of CallGameController.GameControllerEventBox(*(v16 + 48) + 40 * a2, v21);
        __swift_project_boxed_opaque_existential_1(v21, v21[3]);
        v19 = dispatch thunk of Hashable.hashValue.getter();
        __swift_project_boxed_opaque_existential_1(result, *(result + 3));
        v20 = dispatch thunk of Hashable.hashValue.getter();
        outlined destroy of CallGameController.GameControllerEventBox(v21);
        if (v19 == v20)
        {
          goto LABEL_15;
        }

        v17 = a2 + 1;
      }
    }

    specialized _NativeSet.copy()();
  }

LABEL_7:
  v9 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v10 = *(v9 + 48) + 40 * a2;
  v11 = *result;
  v12 = result[1];
  *(v10 + 32) = *(result + 4);
  *v10 = v11;
  *(v10 + 16) = v12;
  v13 = *(v9 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
LABEL_15:
    ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v9 + 16) = v15;
  }
}

Swift::Int specialized _NativeSet.copyAndResize(capacity:)(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for GameControllerPressAction(0);
  v36 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v4 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy15ConversationKit18CallGameControllerC0fG8EventBox33_27FD5918DCC98DD7DE0C1CE9822B82EELLVGMd, &_ss11_SetStorageCy15ConversationKit18CallGameControllerC0fG8EventBox33_27FD5918DCC98DD7DE0C1CE9822B82EELLVGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v4 + 16))
  {
    v7 = 0;
    v33 = v4 + 56;
    v8 = 1 << *(v4 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v4 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    v37 = v11;
    v34 = result;
    v35 = v4;
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v38 = (v10 - 1) & v10;
LABEL_12:
        outlined init with copy of CallGameController.GameControllerEventBox(*(v4 + 48) + 40 * (v13 | (v7 << 6)), &v39);
        Hasher.init(_seed:)();
        v16 = *(&v40 + 1);
        v17 = v41;
        __swift_project_boxed_opaque_existential_1(&v39, *(&v40 + 1));
        v18 = (*(v17 + 16))(v16, v17);
        v19 = *(v18 + 16);
        if (v19)
        {
          v20 = v18 + ((*(v36 + 80) + 32) & ~*(v36 + 80));
          v21 = *(v36 + 72);
          do
          {
            _s15ConversationKit19RecentsCallItemTypeOWOcTm_2();
            type metadata accessor for GCButtonElementName();
            _s14GameController19GCButtonElementNameVACSHAAWlTm_1(&lazy protocol witness table cache variable for type GCButtonElementName and conformance GCButtonElementName, MEMORY[0x1E696B170], MEMORY[0x1E696B178]);
            dispatch thunk of Hashable.hash(into:)();
            _s15ConversationKit19RecentsCallItemTypeOWOhTm_4();
            v20 += v21;
            --v19;
          }

          while (v19);

          v6 = v34;
          v4 = v35;
        }

        else
        {
        }

        result = Hasher._finalize()();
        v22 = -1 << *(v6 + 32);
        v23 = result & ~v22;
        v24 = v23 >> 6;
        if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
        {
          break;
        }

        v25 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
        *(v12 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
        v30 = *(v6 + 48) + 40 * v25;
        v31 = v39;
        v32 = v40;
        *(v30 + 32) = v41;
        *v30 = v31;
        *(v30 + 16) = v32;
        ++*(v6 + 16);
        v11 = v37;
        v10 = v38;
        if (!v38)
        {
          goto LABEL_7;
        }
      }

      v26 = 0;
      v27 = (63 - v22) >> 6;
      while (++v24 != v27 || (v26 & 1) == 0)
      {
        v28 = v24 == v27;
        if (v24 == v27)
        {
          v24 = 0;
        }

        v26 |= v28;
        v29 = *(v12 + 8 * v24);
        if (v29 != -1)
        {
          v25 = __clz(__rbit64(~v29)) + (v24 << 6);
          goto LABEL_26;
        }
      }
    }

    else
    {
LABEL_7:
      v14 = v7;
      while (1)
      {
        v7 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v7 >= v11)
        {

          v2 = v1;
          goto LABEL_30;
        }

        v15 = *(v33 + 8 * v7);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v38 = (v15 - 1) & v15;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_30:
    *v2 = v6;
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
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        v15 = (*(v3 + 48) + 16 * (v12 | (v6 << 6)));
        v16 = *v15;
        v17 = v15[1];
        Hasher.init(_seed:)();

        String.hash(into:)();
        result = Hasher._finalize()();
        v18 = -1 << *(v5 + 32);
        v19 = result & ~v18;
        v20 = v19 >> 6;
        if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
        {
          break;
        }

        v21 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
        v26 = (*(v5 + 48) + 16 * v21);
        *v26 = v16;
        v26[1] = v17;
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v11 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v6;
      while (1)
      {
        v6 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v6 >= v10)
        {

          v2 = v1;
          goto LABEL_25;
        }

        v14 = *(v3 + 56 + 8 * v6);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v5;
  }

  return result;
}

{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySo23CNKGameControllerButtonVGMd, &_ss11_SetStorageCySo23CNKGameControllerButtonVGMR);
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
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        v15 = *(*(v3 + 48) + 4 * (v12 | (v6 << 6)));
        Hasher.init(_seed:)();
        Hasher._combine(_:)(v15);
        result = Hasher._finalize()();
        v16 = -1 << *(v5 + 32);
        v17 = result & ~v16;
        v18 = v17 >> 6;
        if (((-1 << v17) & ~*(v11 + 8 * (v17 >> 6))) == 0)
        {
          break;
        }

        v19 = __clz(__rbit64((-1 << v17) & ~*(v11 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
        *(*(v5 + 48) + 4 * v19) = v15;
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      v20 = 0;
      v21 = (63 - v16) >> 6;
      while (++v18 != v21 || (v20 & 1) == 0)
      {
        v22 = v18 == v21;
        if (v18 == v21)
        {
          v18 = 0;
        }

        v20 |= v22;
        v23 = *(v11 + 8 * v18);
        if (v23 != -1)
        {
          v19 = __clz(__rbit64(~v23)) + (v18 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v6;
      while (1)
      {
        v6 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v6 >= v10)
        {

          v2 = v1;
          goto LABEL_25;
        }

        v14 = *(v3 + 56 + 8 * v6);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v5;
  }

  return result;
}

{
  v2 = v1;
  v3 = type metadata accessor for ConversationControlsAction(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v4 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy15ConversationKit0C14ControlsActionOGMd, &_ss11_SetStorageCy15ConversationKit0C14ControlsActionOGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v4 + 16))
  {
    v7 = 0;
    v8 = 1 << *(v4 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v4 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    if (v10)
    {
      while (1)
      {
        v10 &= v10 - 1;
LABEL_12:
        _s15ConversationKit19RecentsCallItemTypeOWOcTm_2();
        Hasher.init(_seed:)();
        ConversationControlsAction.hash(into:)();
        result = Hasher._finalize()();
        v15 = -1 << *(v6 + 32);
        v16 = result & ~v15;
        v17 = v16 >> 6;
        if (((-1 << v16) & ~*(v12 + 8 * (v16 >> 6))) == 0)
        {
          break;
        }

        v18 = __clz(__rbit64((-1 << v16) & ~*(v12 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v12 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
        result = _s15ConversationKit010RecentCallC12ItemMetadataVWObTm_1();
        ++*(v6 + 16);
        if (!v10)
        {
          goto LABEL_7;
        }
      }

      v19 = 0;
      v20 = (63 - v15) >> 6;
      while (++v17 != v20 || (v19 & 1) == 0)
      {
        v21 = v17 == v20;
        if (v17 == v20)
        {
          v17 = 0;
        }

        v19 |= v21;
        v22 = *(v12 + 8 * v17);
        if (v22 != -1)
        {
          v18 = __clz(__rbit64(~v22)) + (v17 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v7;
      while (1)
      {
        v7 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v7 >= v11)
        {

          v2 = v1;
          goto LABEL_25;
        }

        v14 = *(v4 + 56 + 8 * v7);
        ++v13;
        if (v14)
        {
          v10 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v6;
  }

  return result;
}

{
  v2 = v1;
  v3 = type metadata accessor for Participant(0);
  MEMORY[0x1EEE9AC00](v3);
  v4 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy15ConversationKit11ParticipantVGMd, &_ss11_SetStorageCy15ConversationKit11ParticipantVGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v4 + 16))
  {
    v7 = 0;
    v8 = 1 << *(v4 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v4 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    if (v10)
    {
      while (1)
      {
        v10 &= v10 - 1;
LABEL_12:
        _s15ConversationKit19RecentsCallItemTypeOWOcTm_2();
        Hasher.init(_seed:)();
        type metadata accessor for UUID();
        _s14GameController19GCButtonElementNameVACSHAAWlTm_1(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
        dispatch thunk of Hashable.hash(into:)();
        result = Hasher._finalize()();
        v15 = -1 << *(v6 + 32);
        v16 = result & ~v15;
        v17 = v16 >> 6;
        if (((-1 << v16) & ~*(v12 + 8 * (v16 >> 6))) == 0)
        {
          break;
        }

        v18 = __clz(__rbit64((-1 << v16) & ~*(v12 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v12 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
        result = _s15ConversationKit010RecentCallC12ItemMetadataVWObTm_1();
        ++*(v6 + 16);
        if (!v10)
        {
          goto LABEL_7;
        }
      }

      v19 = 0;
      v20 = (63 - v15) >> 6;
      while (++v17 != v20 || (v19 & 1) == 0)
      {
        v21 = v17 == v20;
        if (v17 == v20)
        {
          v17 = 0;
        }

        v19 |= v21;
        v22 = *(v12 + 8 * v17);
        if (v22 != -1)
        {
          v18 = __clz(__rbit64(~v22)) + (v17 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v7;
      while (1)
      {
        v7 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v7 >= v11)
        {

          v2 = v1;
          goto LABEL_25;
        }

        v14 = *(v4 + 56 + 8 * v7);
        ++v13;
        if (v14)
        {
          v10 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v6;
  }

  return result;
}

{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy15ConversationKit0C12ControlsTypeOGMd, &_ss11_SetStorageCy15ConversationKit0C12ControlsTypeOGMR);
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
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        outlined init with copy of ConversationControlsType(*(v3 + 48) + 48 * (v12 | (v6 << 6)), &v27);
        Hasher.init(_seed:)();
        ConversationControlsType.hash(into:)(v26);
        result = Hasher._finalize()();
        v15 = -1 << *(v5 + 32);
        v16 = result & ~v15;
        v17 = v16 >> 6;
        if (((-1 << v16) & ~*(v11 + 8 * (v16 >> 6))) == 0)
        {
          break;
        }

        v18 = __clz(__rbit64((-1 << v16) & ~*(v11 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
        v23 = (*(v5 + 48) + 48 * v18);
        v24 = v27;
        v25 = v28[0];
        *(v23 + 25) = *(v28 + 9);
        *v23 = v24;
        v23[1] = v25;
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      v19 = 0;
      v20 = (63 - v15) >> 6;
      while (++v17 != v20 || (v19 & 1) == 0)
      {
        v21 = v17 == v20;
        if (v17 == v20)
        {
          v17 = 0;
        }

        v19 |= v21;
        v22 = *(v11 + 8 * v17);
        if (v22 != -1)
        {
          v18 = __clz(__rbit64(~v22)) + (v17 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v6;
      while (1)
      {
        v6 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v6 >= v10)
        {

          v2 = v1;
          goto LABEL_25;
        }

        v14 = *(v3 + 56 + 8 * v6);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v5;
  }

  return result;
}

{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy15ConversationKit18CoupledHUDActivity33_1110C52F52D8EDCF5F7A893547109D29LLCGMd, &_ss11_SetStorageCy15ConversationKit18CoupledHUDActivity33_1110C52F52D8EDCF5F7A893547109D29LLCGMR);
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
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        v15 = *(*(v3 + 48) + 8 * (v12 | (v6 << 6)));
        Hasher.init(_seed:)();

        HUDActivity.hash(into:)();
        result = Hasher._finalize()();
        v16 = -1 << *(v5 + 32);
        v17 = result & ~v16;
        v18 = v17 >> 6;
        if (((-1 << v17) & ~*(v11 + 8 * (v17 >> 6))) == 0)
        {
          break;
        }

        v19 = __clz(__rbit64((-1 << v17) & ~*(v11 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
        *(*(v5 + 48) + 8 * v19) = v15;
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      v20 = 0;
      v21 = (63 - v16) >> 6;
      while (++v18 != v21 || (v20 & 1) == 0)
      {
        v22 = v18 == v21;
        if (v18 == v21)
        {
          v18 = 0;
        }

        v20 |= v22;
        v23 = *(v11 + 8 * v18);
        if (v23 != -1)
        {
          v19 = __clz(__rbit64(~v23)) + (v18 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v6;
      while (1)
      {
        v6 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v6 >= v10)
        {

          v2 = v1;
          goto LABEL_25;
        }

        v14 = *(v3 + 56 + 8 * v6);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v5;
  }

  return result;
}

{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy15ConversationKit17RecentsCallHandleVGMd, &_ss11_SetStorageCy15ConversationKit17RecentsCallHandleVGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v29 = v3;
    v6 = 0;
    v7 = v3 + 56;
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
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_12:
        v16 = (*(v3 + 48) + 24 * (v13 | (v6 << 6)));
        v17 = *v16;
        v19 = *(v16 + 1);
        v18 = *(v16 + 2);
        Hasher.init(_seed:)();
        MEMORY[0x1BFB22640](v17);
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
        if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
        {
          break;
        }

        v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_24:
        *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        v28 = *(v5 + 48) + 24 * v23;
        *v28 = v17;
        *(v28 + 8) = v19;
        *(v28 + 16) = v18;
        ++*(v5 + 16);
        v3 = v29;
        if (!v10)
        {
          goto LABEL_7;
        }
      }

      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_24;
        }
      }
    }

    else
    {
LABEL_7:
      v14 = v6;
      while (1)
      {
        v6 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v6 >= v11)
        {

          v2 = v1;
          goto LABEL_28;
        }

        v15 = *(v7 + 8 * v6);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v10 = (v15 - 1) & v15;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v5;
  }

  return result;
}

{
  v2 = v1;
  v3 = type metadata accessor for CountdownVoucher(0);
  MEMORY[0x1EEE9AC00](v3);
  v4 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy15ConversationKit16CountdownVoucherVGMd, &_ss11_SetStorageCy15ConversationKit16CountdownVoucherVGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v4 + 16))
  {
    v7 = 0;
    v8 = 1 << *(v4 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v4 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    if (v10)
    {
      while (1)
      {
        v10 &= v10 - 1;
LABEL_12:
        _s15ConversationKit19RecentsCallItemTypeOWOcTm_2();
        Hasher.init(_seed:)();
        type metadata accessor for UUID();
        _s14GameController19GCButtonElementNameVACSHAAWlTm_1(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
        dispatch thunk of Hashable.hash(into:)();
        result = Hasher._finalize()();
        v15 = -1 << *(v6 + 32);
        v16 = result & ~v15;
        v17 = v16 >> 6;
        if (((-1 << v16) & ~*(v12 + 8 * (v16 >> 6))) == 0)
        {
          break;
        }

        v18 = __clz(__rbit64((-1 << v16) & ~*(v12 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v12 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
        result = _s15ConversationKit010RecentCallC12ItemMetadataVWObTm_1();
        ++*(v6 + 16);
        if (!v10)
        {
          goto LABEL_7;
        }
      }

      v19 = 0;
      v20 = (63 - v15) >> 6;
      while (++v17 != v20 || (v19 & 1) == 0)
      {
        v21 = v17 == v20;
        if (v17 == v20)
        {
          v17 = 0;
        }

        v19 |= v21;
        v22 = *(v12 + 8 * v17);
        if (v22 != -1)
        {
          v18 = __clz(__rbit64(~v22)) + (v17 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v7;
      while (1)
      {
        v7 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v7 >= v11)
        {

          v2 = v1;
          goto LABEL_25;
        }

        v14 = *(v4 + 56 + 8 * v7);
        ++v13;
        if (v14)
        {
          v10 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v6;
  }

  return result;
}

{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy15ConversationKit11BezelEffectOGMd, &_ss11_SetStorageCy15ConversationKit11BezelEffectOGMR);
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
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        v15 = *(*(v3 + 48) + (v12 | (v6 << 6)));
        Hasher.init(_seed:)();
        MEMORY[0x1BFB22640](v15);
        result = Hasher._finalize()();
        v16 = -1 << *(v5 + 32);
        v17 = result & ~v16;
        v18 = v17 >> 6;
        if (((-1 << v17) & ~*(v11 + 8 * (v17 >> 6))) == 0)
        {
          break;
        }

        v19 = __clz(__rbit64((-1 << v17) & ~*(v11 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
        *(*(v5 + 48) + v19) = v15;
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      v20 = 0;
      v21 = (63 - v16) >> 6;
      while (++v18 != v21 || (v20 & 1) == 0)
      {
        v22 = v18 == v21;
        if (v18 == v21)
        {
          v18 = 0;
        }

        v20 |= v22;
        v23 = *(v11 + 8 * v18);
        if (v23 != -1)
        {
          v19 = __clz(__rbit64(~v23)) + (v18 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v6;
      while (1)
      {
        v6 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v6 >= v10)
        {

          v2 = v1;
          goto LABEL_25;
        }

        v14 = *(v3 + 56 + 8 * v6);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v5;
  }

  return result;
}

{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy15ConversationKit13VideoReactionOGMd, &_ss11_SetStorageCy15ConversationKit13VideoReactionOGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v27 = v1;
    v28 = v3;
    v6 = 0;
    v7 = v3 + 56;
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
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_12:
        v16 = *(*(v3 + 48) + (v13 | (v6 << 6)));
        Hasher.init(_seed:)();
        v17 = **(&unk_1E7FE5F98 + v16);
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v18 = v17;
        String.hash(into:)();

        result = Hasher._finalize()();
        v19 = -1 << *(v5 + 32);
        v20 = result & ~v19;
        v21 = v20 >> 6;
        if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
        {
          break;
        }

        v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
        *(*(v5 + 48) + v22) = v16;
        ++*(v5 + 16);
        v3 = v28;
        if (!v10)
        {
          goto LABEL_7;
        }
      }

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
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v14 = v6;
      while (1)
      {
        v6 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v6 >= v11)
        {

          v2 = v27;
          goto LABEL_25;
        }

        v15 = *(v7 + 8 * v6);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v10 = (v15 - 1) & v15;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v5;
  }

  return result;
}

{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy15ConversationKit19InCallControlsStateOGMd, &_ss11_SetStorageCy15ConversationKit19InCallControlsStateOGMR);
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
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        v15 = *(*(v3 + 48) + 8 * (v12 | (v6 << 6)));
        Hasher.init(_seed:)();
        MEMORY[0x1BFB22640](v15);
        result = Hasher._finalize()();
        v16 = -1 << *(v5 + 32);
        v17 = result & ~v16;
        v18 = v17 >> 6;
        if (((-1 << v17) & ~*(v11 + 8 * (v17 >> 6))) == 0)
        {
          break;
        }

        v19 = __clz(__rbit64((-1 << v17) & ~*(v11 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
        *(*(v5 + 48) + 8 * v19) = v15;
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      v20 = 0;
      v21 = (63 - v16) >> 6;
      while (++v18 != v21 || (v20 & 1) == 0)
      {
        v22 = v18 == v21;
        if (v18 == v21)
        {
          v18 = 0;
        }

        v20 |= v22;
        v23 = *(v11 + 8 * v18);
        if (v23 != -1)
        {
          v19 = __clz(__rbit64(~v23)) + (v18 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v6;
      while (1)
      {
        v6 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v6 >= v10)
        {

          v2 = v1;
          goto LABEL_25;
        }

        v14 = *(v3 + 56 + 8 * v6);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v5;
  }

  return result;
}

void CallGameController.attachAllControllers()()
{
  v0 = [objc_opt_self() controllers];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for GCController, 0x1E696B1C0);
  v1 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v2 = specialized Array.count.getter();
  swift_retain_n();
  for (i = 0; ; ++i)
  {
    if (v2 == i)
    {

      return;
    }

    if ((v1 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x1BFB22010](i, v1);
    }

    else
    {
      if (i >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }

      v4 = *(v1 + 8 * i + 32);
    }

    v5 = v4;
    if (__OFADD__(i, 1))
    {
      break;
    }

    CallGameController.attachController(_:)(v4);
  }

  __break(1u);
LABEL_11:
  __break(1u);
}

uint64_t ConversationControlsManager.systemBannerPresenter.setter()
{
  OUTLINED_FUNCTION_55();
  v3 = v1 + *v2;
  OUTLINED_FUNCTION_51_3(v4);
  *(v3 + 8) = v0;
  OUTLINED_FUNCTION_15_14();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

{
  return ConversationControlsManager.systemBannerPresenter.setter();
}

uint64_t BannerPresentationManager.presentationDelegate.getter(uint64_t *a1)
{
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  return swift_unknownObjectWeakLoadStrong();
}

uint64_t ConversationControlsManager.audioRoutingDelegate.setter(uint64_t a1)
{
  return ConversationControlsManager.audioRoutingDelegate.setter(a1);
}

{
  OUTLINED_FUNCTION_3_12(a1);
  OUTLINED_FUNCTION_75_1();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t SystemBannerHostViewController.delegate.setter(uint64_t a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_3_12(a1);
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t BannerPresentationManager.inCallConversationControlsDelegate.getter()
{
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  return swift_unknownObjectWeakLoadStrong();
}

uint64_t ConversationControlsManager.inCallConversationControlsDelegate.setter()
{
  OUTLINED_FUNCTION_55();
  v2 = v1 + OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_inCallConversationControlsDelegate;
  OUTLINED_FUNCTION_84_5(v3, v5);
  *(v2 + 8) = v0;
  OUTLINED_FUNCTION_1_5();
  swift_unknownObjectWeakAssign();
  ConversationControlsManager.inCallConversationControlsDelegate.didset();
  return swift_unknownObjectRelease();
}

uint64_t ConversationControlsManager.inCallConversationControlsDelegate.didset()
{
  v1 = v0;
  v2 = v0 + OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_inCallConversationControlsDelegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v3 = *(v2 + 8);
    ObjectType = swift_getObjectType();
    (*(v3 + 56))(ObjectType, v3);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVySbs5NeverOGMd, &_s7Combine12AnyPublisherVySbs5NeverOGMR);
    lazy protocol witness table accessor for type NSObject.KeyValueObservingPublisher<UICollectionView, CGPoint> and conformance NSObject.KeyValueObservingPublisher<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<Bool, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVySbs5NeverOGMd, &_s7Combine12AnyPublisherVySbs5NeverOGMR);
    v5 = Publisher<>.sink(receiveValue:)();

    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0;
  }

  *(v1 + OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_isOnScreenSubscription) = v5;
}

uint64_t sub_1BBCC3BEC()
{
  MEMORY[0x1BFB23F10](v0 + 16);
  OUTLINED_FUNCTION_36();

  return swift_deallocObject();
}

void ConversationControlsManager.gameControllerManager.setter(void *a1)
{
  OUTLINED_FUNCTION_3_12(a1);
  OUTLINED_FUNCTION_75_1();
  swift_unknownObjectWeakAssign();
  OUTLINED_FUNCTION_13_2();
  (*((*MEMORY[0x1E69E7D40] & v2) + 0x358))();
}

Swift::Void __swiftcall ConversationControlsManager.updateGameControllerResponder()()
{
  OUTLINED_FUNCTION_262();
  OUTLINED_FUNCTION_153();
  v3 = (*(v2 + 832))();
  if (v3)
  {
    v7 = v3;
    OUTLINED_FUNCTION_238_0();
    OUTLINED_FUNCTION_293();
    (*(v4 + 672))();
    OUTLINED_FUNCTION_255();
    OUTLINED_FUNCTION_236_0();
    v5();
    OUTLINED_FUNCTION_280_0();
    if (v1 == 4 && SBSIsSystemApertureAvailable() && (OUTLINED_FUNCTION_238_0(), OUTLINED_FUNCTION_293(), (*(v6 + 1184))()))
    {
      swift_unknownObjectRelease();
      specialized GameControllerManager.addResponder(_:)(v0, v7);
    }

    else
    {
      specialized GameControllerManager.removeResponder(_:)(v0, v7);
    }
  }
}

void specialized GameControllerManager.removeResponder(_:)(uint64_t result, uint64_t a2)
{
  if (*(a2 + OBJC_IVAR____TtC15ConversationKit21GameControllerManager_isActive) == 1)
  {
    MEMORY[0x1EEE9AC00](result);
    v5[2] = v2;
    swift_beginAccess();
    v3 = specialized MutableCollection._halfStablePartition(isSuffixElement:)(partial apply for closure #1 in GameControllerManager.removeResponder(_:), v5);
    v4 = specialized Array.count.getter();
    if (v4 < v3)
    {
      __break(1u);
      swift_endAccess();
      __break(1u);
    }

    else
    {
      specialized Array.replaceSubrange<A>(_:with:)(v3, v4);
      swift_endAccess();
      if (!specialized Array.count.getter())
      {
        GameControllerManager.updateButtonHandlers()();
      }
    }
  }
}

void BannerPresentationManager._conversationControlsManager.setter(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC15ConversationKit25BannerPresentationManager__conversationControlsManager);
  *(v1 + OBJC_IVAR____TtC15ConversationKit25BannerPresentationManager__conversationControlsManager) = a1;
  v2 = a1;
  BannerPresentationManager._conversationControlsManager.didset(v3);
}

void BannerPresentationManager._conversationControlsManager.didset(void *a1)
{
  if ((Features.isMoreMenuEnabled.getter() & 1) != 0 && a1)
  {
    v2 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x2A0);
    v14 = a1;
    v2();
    v4 = v3;
    ObjectType = swift_getObjectType();
    LOBYTE(v4) = (*(v4 + 96))(ObjectType, v4);
    swift_unknownObjectRelease();
    if (v4)
    {
    }

    else
    {
      type metadata accessor for FTMenuItemRegistry();
      v6 = static FTMenuItemRegistry.shared.getter();
      v2();
      v8 = v7;
      v9 = swift_getObjectType();
      v10 = (*(v8 + 224))(v9, v8);
      v12 = v11;
      swift_unknownObjectRelease();
      v13._countAndFlagsBits = v10;
      v13._object = v12;
      FTMenuItemRegistry.clear(for:)(v13);
    }
  }
}

unint64_t lazy protocol witness table accessor for type Features.CallExperience and conformance Features.CallExperience()
{
  result = lazy protocol witness table cache variable for type Features.CallExperience and conformance Features.CallExperience;
  if (!lazy protocol witness table cache variable for type Features.CallExperience and conformance Features.CallExperience)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Features.CallExperience and conformance Features.CallExperience);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Features.CallExperience and conformance Features.CallExperience;
  if (!lazy protocol witness table cache variable for type Features.CallExperience and conformance Features.CallExperience)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Features.CallExperience and conformance Features.CallExperience);
  }

  return result;
}

const char *Features.CallExperience.feature.getter(char a1)
{
  result = "CallExperience_iPad_InCallUI_Poster";
  switch(a1)
  {
    case 1:
      result = "CallExperience_ICUIRedesign";
      break;
    case 2:
      result = "CallExperience_ICUIRedesign_TV";
      break;
    case 3:
      result = "CallExperience_MoreMenu";
      break;
    default:
      return result;
  }

  return result;
}

void *BannerPresentationManager.presentedSystemApertureElement.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit25BannerPresentationManager_presentedSystemApertureElement;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

uint64_t static ConversationControlsType.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  outlined init with copy of ConversationControlsType(a1, &v32);
  outlined init with copy of ConversationControlsType(a2, &v34);
  v3 = v32;
  switch(v33)
  {
    case 1:
      if (v37 != 1)
      {
        __swift_destroy_boxed_opaque_existential_1(&v32);
        goto LABEL_231;
      }

      outlined init with take of TapInteractionHandler(&v32, v29);
      outlined init with take of TapInteractionHandler(&v34, v28);
      v14 = v30;
      v15 = v31;
      __swift_project_boxed_opaque_existential_1(v29, v30);
      v5 = (*(v15 + 224))(v28, v14, v15);
      __swift_destroy_boxed_opaque_existential_1(v28);
      __swift_destroy_boxed_opaque_existential_1(v29);
      return v5 & 1;
    case 2:
      if (v37 != 2)
      {
        goto LABEL_19;
      }

      if (!*(&v32 + 1))
      {
        if (!v35.i64[0])
        {
          goto LABEL_58;
        }

        goto LABEL_65;
      }

      if (!v35.i64[0])
      {
LABEL_65:

        goto LABEL_232;
      }

      if (v32 == v34 && *(&v32 + 1) == v35.i64[0])
      {
LABEL_18:

LABEL_58:
        v5 = 1;
      }

      else
      {
LABEL_9:
        OUTLINED_FUNCTION_44_0();
        v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }

      return v5 & 1;
    case 3:
      if (v37 == 3)
      {
        v7 = v34;
        v5 = [v32 isEqual_];

        return v5 & 1;
      }

      goto LABEL_231;
    case 4:
      if (v37 != 4)
      {
LABEL_19:

        goto LABEL_231;
      }

      v4 = v32 == v34 && v35.i64[0] == *(&v32 + 1);
      if (!v4)
      {
        goto LABEL_9;
      }

      goto LABEL_18;
    case 5:
      if (v37 != 5)
      {
        goto LABEL_231;
      }

      goto LABEL_58;
    case 6:
      if (v37 != 6)
      {
        swift_unknownObjectRelease();
        goto LABEL_231;
      }

      v16 = v35.i64[0];
      ObjectType = swift_getObjectType();
      v18 = (*(*(&v3 + 1) + 56))(ObjectType, *(&v3 + 1));
      v20 = v19;
      v21 = swift_getObjectType();
      if (v18 == (*(v16 + 56))(v21, v16) && v20 == v22)
      {
        v5 = 1;
      }

      else
      {
        OUTLINED_FUNCTION_2_40();
        v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      return v5 & 1;
    case 7:
      OUTLINED_FUNCTION_47_11();
      if (v11)
      {
        v12 = v8 | *(&v3 + 1) | v9 | v10;
        if (v3 == 1 && v12 == 0)
        {
          OUTLINED_FUNCTION_16_38();
          if (!v4 || v34 != 1)
          {
            goto LABEL_231;
          }
        }

        else if (v3 != 2 || v12)
        {
          if (v3 != 3 || v12)
          {
            if (v3 != 4 || v12)
            {
              if (v3 != 5 || v12)
              {
                if (v3 != 6 || v12)
                {
                  if (v3 != 7 || v12)
                  {
                    if (v3 != 8 || v12)
                    {
                      if (v3 != 9 || v12)
                      {
                        if (v3 != 10 || v12)
                        {
                          if (v3 != 11 || v12)
                          {
                            if (v3 != 12 || v12)
                            {
                              if (v3 != 13 || v12)
                              {
                                if (v3 != 14 || v12)
                                {
                                  if (v3 != 15 || v12)
                                  {
                                    if (v3 != 16 || v12)
                                    {
                                      if (v3 != 17 || v12)
                                      {
                                        if (v3 != 18 || v12)
                                        {
                                          if (v3 != 19 || v12)
                                          {
                                            if (v3 != 20 || v12)
                                            {
                                              if (v3 != 21 || v12)
                                              {
                                                if (v3 != 22 || v12)
                                                {
                                                  if (v3 != 23 || v12)
                                                  {
                                                    if (v3 != 24 || v12)
                                                    {
                                                      if (v3 != 25 || v12)
                                                      {
                                                        if (v3 != 26 || v12)
                                                        {
                                                          if (v3 != 27 || v12)
                                                          {
                                                            if (v3 != 28 || v12)
                                                            {
                                                              if (v3 != 29 || v12)
                                                              {
                                                                if (v3 != 30 || v12)
                                                                {
                                                                  OUTLINED_FUNCTION_16_38();
                                                                  if (!v4 || v34 != 31)
                                                                  {
                                                                    goto LABEL_231;
                                                                  }
                                                                }

                                                                else
                                                                {
                                                                  OUTLINED_FUNCTION_16_38();
                                                                  if (!v4 || v34 != 30)
                                                                  {
                                                                    goto LABEL_231;
                                                                  }
                                                                }
                                                              }

                                                              else
                                                              {
                                                                OUTLINED_FUNCTION_16_38();
                                                                if (!v4 || v34 != 29)
                                                                {
                                                                  goto LABEL_231;
                                                                }
                                                              }
                                                            }

                                                            else
                                                            {
                                                              OUTLINED_FUNCTION_16_38();
                                                              if (!v4 || v34 != 28)
                                                              {
                                                                goto LABEL_231;
                                                              }
                                                            }
                                                          }

                                                          else
                                                          {
                                                            OUTLINED_FUNCTION_16_38();
                                                            if (!v4 || v34 != 27)
                                                            {
                                                              goto LABEL_231;
                                                            }
                                                          }
                                                        }

                                                        else
                                                        {
                                                          OUTLINED_FUNCTION_16_38();
                                                          if (!v4 || v34 != 26)
                                                          {
                                                            goto LABEL_231;
                                                          }
                                                        }
                                                      }

                                                      else
                                                      {
                                                        OUTLINED_FUNCTION_16_38();
                                                        if (!v4 || v34 != 25)
                                                        {
                                                          goto LABEL_231;
                                                        }
                                                      }
                                                    }

                                                    else
                                                    {
                                                      OUTLINED_FUNCTION_16_38();
                                                      if (!v4 || v34 != 24)
                                                      {
                                                        goto LABEL_231;
                                                      }
                                                    }
                                                  }

                                                  else
                                                  {
                                                    OUTLINED_FUNCTION_16_38();
                                                    if (!v4 || v34 != 23)
                                                    {
                                                      goto LABEL_231;
                                                    }
                                                  }
                                                }

                                                else
                                                {
                                                  OUTLINED_FUNCTION_16_38();
                                                  if (!v4 || v34 != 22)
                                                  {
                                                    goto LABEL_231;
                                                  }
                                                }
                                              }

                                              else
                                              {
                                                OUTLINED_FUNCTION_16_38();
                                                if (!v4 || v34 != 21)
                                                {
                                                  goto LABEL_231;
                                                }
                                              }
                                            }

                                            else
                                            {
                                              OUTLINED_FUNCTION_16_38();
                                              if (!v4 || v34 != 20)
                                              {
                                                goto LABEL_231;
                                              }
                                            }
                                          }

                                          else
                                          {
                                            OUTLINED_FUNCTION_16_38();
                                            if (!v4 || v34 != 19)
                                            {
                                              goto LABEL_231;
                                            }
                                          }
                                        }

                                        else
                                        {
                                          OUTLINED_FUNCTION_16_38();
                                          if (!v4 || v34 != 18)
                                          {
                                            goto LABEL_231;
                                          }
                                        }
                                      }

                                      else
                                      {
                                        OUTLINED_FUNCTION_16_38();
                                        if (!v4 || v34 != 17)
                                        {
                                          goto LABEL_231;
                                        }
                                      }
                                    }

                                    else
                                    {
                                      OUTLINED_FUNCTION_16_38();
                                      if (!v4 || v34 != 16)
                                      {
                                        goto LABEL_231;
                                      }
                                    }
                                  }

                                  else
                                  {
                                    OUTLINED_FUNCTION_16_38();
                                    if (!v4 || v34 != 15)
                                    {
                                      goto LABEL_231;
                                    }
                                  }
                                }

                                else
                                {
                                  OUTLINED_FUNCTION_16_38();
                                  if (!v4 || v34 != 14)
                                  {
                                    goto LABEL_231;
                                  }
                                }
                              }

                              else
                              {
                                OUTLINED_FUNCTION_16_38();
                                if (!v4 || v34 != 13)
                                {
                                  goto LABEL_231;
                                }
                              }
                            }

                            else
                            {
                              OUTLINED_FUNCTION_16_38();
                              if (!v4 || v34 != 12)
                              {
                                goto LABEL_231;
                              }
                            }
                          }

                          else
                          {
                            OUTLINED_FUNCTION_16_38();
                            if (!v4 || v34 != 11)
                            {
                              goto LABEL_231;
                            }
                          }
                        }

                        else
                        {
                          OUTLINED_FUNCTION_16_38();
                          if (!v4 || v34 != 10)
                          {
                            goto LABEL_231;
                          }
                        }
                      }

                      else
                      {
                        OUTLINED_FUNCTION_16_38();
                        if (!v4 || v34 != 9)
                        {
                          goto LABEL_231;
                        }
                      }
                    }

                    else
                    {
                      OUTLINED_FUNCTION_16_38();
                      if (!v4 || v34 != 8)
                      {
                        goto LABEL_231;
                      }
                    }
                  }

                  else
                  {
                    OUTLINED_FUNCTION_16_38();
                    if (!v4 || v34 != 7)
                    {
                      goto LABEL_231;
                    }
                  }
                }

                else
                {
                  OUTLINED_FUNCTION_16_38();
                  if (!v4 || v34 != 6)
                  {
                    goto LABEL_231;
                  }
                }
              }

              else
              {
                OUTLINED_FUNCTION_16_38();
                if (!v4 || v34 != 5)
                {
                  goto LABEL_231;
                }
              }
            }

            else
            {
              OUTLINED_FUNCTION_16_38();
              if (!v4 || v34 != 4)
              {
                goto LABEL_231;
              }
            }
          }

          else
          {
            OUTLINED_FUNCTION_16_38();
            if (!v4 || v34 != 3)
            {
              goto LABEL_231;
            }
          }
        }

        else
        {
          OUTLINED_FUNCTION_16_38();
          if (!v4 || v34 != 2)
          {
            goto LABEL_231;
          }
        }

        OUTLINED_FUNCTION_61_7(v36, v35);
        if (!v26)
        {
          goto LABEL_58;
        }
      }

      else
      {
        OUTLINED_FUNCTION_16_38();
        if (v4)
        {
          OUTLINED_FUNCTION_11_49(v36, v35);
          if (!(v25 | v24))
          {
            goto LABEL_58;
          }
        }
      }

LABEL_231:
      outlined destroy of ConversationControlsType(&v34);
LABEL_232:
      v5 = 0;
      return v5 & 1;
    default:
      if (!v37)
      {
        goto LABEL_58;
      }

      goto LABEL_231;
  }
}

uint64_t ConversationControlsType.isFirstOrThirdPartyIncomingCall.getter()
{
  OUTLINED_FUNCTION_14_3();
  v10 = OUTLINED_FUNCTION_38_15(v2, v3, v4, v5, v6, v7, v8, v9, v59, v60, *(&v60 + 1), v61, *(&v61 + 1), v62);
  OUTLINED_FUNCTION_56_8(v10, v11, v12, v13, v14, v15, v16, v17, v59);
  if (v0)
  {
    v0 = 1;
  }

  else
  {
    v59 = 7;
    v60 = 0u;
    v61 = 0u;
    v62 = 7;
    v18 = static ConversationControlsType.== infix(_:_:)(v1, &v59);
    OUTLINED_FUNCTION_56_8(v18, v19, v20, v21, v22, v23, v24, v25, v59);
    OUTLINED_FUNCTION_14_3();
    v34 = OUTLINED_FUNCTION_38_15(v26, v27, v28, v29, v30, v31, v32, v33, v59, v60, *(&v60 + 1), v61, *(&v61 + 1), v62);
    OUTLINED_FUNCTION_56_8(v34, v35, v36, v37, v38, v39, v40, v41, v59);
    OUTLINED_FUNCTION_14_3();
    v51 = OUTLINED_FUNCTION_38_15(v43, v44, v45, v46, v47, v48, v49, v50, v59, v60, *(&v60 + 1), v61, *(&v61 + 1), v62);
    OUTLINED_FUNCTION_56_8(v51, v52, v53, v54, v55, v56, v57, v58, v59);
  }

  return v0 & 1;
}

void BannerPresentationManager.updatePresentedHUD(type:replacingNotice:)()
{
  OUTLINED_FUNCTION_29();
  v3 = v2;
  OUTLINED_FUNCTION_17_1();
  v41 = type metadata accessor for DispatchTimeInterval();
  OUTLINED_FUNCTION_1();
  v39 = v4;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_8();
  v35 = (v7 - v6);
  OUTLINED_FUNCTION_4_24();
  v40 = type metadata accessor for DispatchTime();
  OUTLINED_FUNCTION_1();
  v38 = v8;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_4();
  v36 = v10;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v11);
  v37 = &v34 - v12;
  OUTLINED_FUNCTION_4_24();
  type metadata accessor for DispatchWorkItemFlags();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_8();
  v14 = OBJC_IVAR____TtC15ConversationKit25BannerPresentationManager_updateWorkItem;
  if (*(v1 + OBJC_IVAR____TtC15ConversationKit25BannerPresentationManager_updateWorkItem))
  {

    dispatch thunk of DispatchWorkItem.cancel()();
  }

  OUTLINED_FUNCTION_20();
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  outlined init with copy of ConversationControlsType(v0, &v44);
  v16 = swift_allocObject();
  v17 = *v45;
  *(v16 + 24) = v44;
  *(v16 + 16) = v15;
  *(v16 + 40) = v17;
  *(v16 + 49) = *&v45[9];
  *(v16 + 65) = v3 & 1;
  v43[4] = partial apply for closure #1 in BannerPresentationManager.updatePresentedHUD(type:replacingNotice:);
  v43[5] = v16;
  v43[0] = MEMORY[0x1E69E9820];
  v43[1] = 1107296256;
  OUTLINED_FUNCTION_6_5();
  v43[2] = v18;
  v43[3] = &block_descriptor_16_0;
  _Block_copy(v43);
  v42 = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_12_85();
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_6(v19, v20);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  OUTLINED_FUNCTION_3_8();
  OUTLINED_FUNCTION_14_37();
  lazy protocol witness table accessor for type NSObject.KeyValueObservingPublisher<UICollectionView, CGPoint> and conformance NSObject.KeyValueObservingPublisher<A, B>(v21, v22, v23);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v24 = type metadata accessor for DispatchWorkItem();
  OUTLINED_FUNCTION_84(v24);
  v25 = DispatchWorkItem.init(flags:block:)();

  *(v1 + v14) = v25;

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  v26 = static OS_dispatch_queue.main.getter();
  v27 = v36;
  static DispatchTime.now()();
  v28 = v35;
  *v35 = 150;
  v29 = v39;
  v30 = v41;
  (*(v39 + 104))(v28, *MEMORY[0x1E69E7F38], v41);
  v31 = v37;
  MEMORY[0x1BFB20700](v27, v28);
  (*(v29 + 8))(v28, v30);
  v32 = *(v38 + 8);
  v33 = v40;
  v32(v27, v40);
  MEMORY[0x1BFB21520](v31, v25);

  v32(v31, v33);
  OUTLINED_FUNCTION_30_0();
}

uint64_t sub_1BBCC4E88()
{

  switch(*(v0 + 64))
  {
    case 1:
      __swift_destroy_boxed_opaque_existential_1((v0 + 24));
      break;
    case 2:
    case 4:

      break;
    case 3:

      break;
    case 6:
      swift_unknownObjectRelease();
      break;
    default:
      break;
  }

  return swift_deallocObject();
}

uint64_t sub_1BBCC4F34()
{
  MEMORY[0x1BFB23F10](v0 + 16);
  OUTLINED_FUNCTION_20();

  return swift_deallocObject();
}

void @nonobjc TUCall.uniqueProxyIdentifierUUID.getter()
{
  v1 = [v0 uniqueProxyIdentifierUUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
}

uint64_t BannerPresentationManager.setupMoreMenu(with:_:)(uint64_t a1, uint64_t a2, void *a3)
{
  OUTLINED_FUNCTION_55();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  OUTLINED_FUNCTION_22(v6);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_140_0();
  result = Features.isMoreMenuEnabled.getter();
  if (result)
  {
    type metadata accessor for TaskPriority();
    OUTLINED_FUNCTION_10_0();
    __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
    type metadata accessor for MainActor();
    OUTLINED_FUNCTION_6_4();
    swift_unknownObjectRetain();
    v13 = a3;
    v14 = static MainActor.shared.getter();
    v15 = swift_allocObject();
    v16 = MEMORY[0x1E69E85E0];
    v15[2] = v14;
    v15[3] = v16;
    v15[4] = v4;
    v15[5] = v3;
    v15[6] = v13;
    OUTLINED_FUNCTION_59();
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5();
  }

  return result;
}

uint64_t sub_1BBCC50EC()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

unint64_t lazy protocol witness table accessor for type Features.SpringBoard and conformance Features.SpringBoard()
{
  result = lazy protocol witness table cache variable for type Features.SpringBoard and conformance Features.SpringBoard;
  if (!lazy protocol witness table cache variable for type Features.SpringBoard and conformance Features.SpringBoard)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Features.SpringBoard and conformance Features.SpringBoard);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Features.SpringBoard and conformance Features.SpringBoard;
  if (!lazy protocol witness table cache variable for type Features.SpringBoard and conformance Features.SpringBoard)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Features.SpringBoard and conformance Features.SpringBoard);
  }

  return result;
}

uint64_t closure #1 in WaitOnHoldService.init()@<X0>(void *a1@<X8>)
{
  Notification.object.getter();
  if (!v6)
  {
    result = outlined destroy of TapInteractionHandler?(v5, &_sypSgMd, &_sypSgMR);
    goto LABEL_5;
  }

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUCall, 0x1E69D8A40);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_5:
    v3 = 0;
    goto LABEL_6;
  }

  v3 = v4;
LABEL_6:
  *a1 = v3;
  return result;
}

uint64_t @objc BannerPresentationManager.handleCallStatusDidChange(_:)(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v7 = type metadata accessor for Notification();
  OUTLINED_FUNCTION_1();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_101();
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = a1;
  a4(v4);

  return (*(v9 + 8))(v4, v7);
}

void BannerPresentationManager.handleCallStatusDidChange(_:)()
{
  OUTLINED_FUNCTION_29();
  v25 = v1;
  type metadata accessor for DispatchWorkItemFlags();
  OUTLINED_FUNCTION_1();
  v28 = v2;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_140_0();
  type metadata accessor for DispatchQoS();
  OUTLINED_FUNCTION_1();
  v26 = v5;
  v27 = v4;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_92_7();
  v6 = type metadata accessor for Notification();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v12 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  v14 = static OS_dispatch_queue.main.getter();
  OUTLINED_FUNCTION_20();
  v15 = swift_allocObject();
  OUTLINED_FUNCTION_278(v15);
  swift_unknownObjectWeakInit();
  (*(v8 + 16))(v12, v25, v6);
  v16 = (*(v8 + 80) + 24) & ~*(v8 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = v13;
  (*(v8 + 32))(v17 + v16, v12, v6);
  v29[4] = partial apply for closure #1 in BannerPresentationManager.handleCallStatusDidChange(_:);
  v29[5] = v17;
  OUTLINED_FUNCTION_5_73();
  v29[1] = 1107296256;
  OUTLINED_FUNCTION_6_5();
  v29[2] = v18;
  v29[3] = &block_descriptor_52;
  v19 = _Block_copy(v29);

  static DispatchQoS.unspecified.getter();
  v29[0] = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_12_85();
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_6(v20, v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  OUTLINED_FUNCTION_3_8();
  lazy protocol witness table accessor for type NSObject.KeyValueObservingPublisher<UICollectionView, CGPoint> and conformance NSObject.KeyValueObservingPublisher<A, B>(v22, &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OUTLINED_FUNCTION_11_70();
  _Block_release(v19);

  v23 = OUTLINED_FUNCTION_309();
  v24(v23);
  (*(v26 + 8))(v0, v27);
  OUTLINED_FUNCTION_30_0();
}

uint64_t sub_1BBCC56B4()
{
  v1 = type metadata accessor for Notification();
  OUTLINED_FUNCTION_1();
  v3 = v2;
  v4 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v3 + 8))(v0 + v4, v1);

  return swift_deallocObject();
}

uint64_t @objc CallScreeningRTTHelper.callStatusChanged(_:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v5 = type metadata accessor for Notification();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_8();
  v11 = v10 - v9;
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();

  a4(v11);

  return (*(v7 + 8))(v11, v5);
}

void CallScreeningRTTHelper.callStatusChanged(_:)()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  OUTLINED_FUNCTION_22(v2);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_16_4();
  Notification.object.getter();
  if (v14)
  {
    type metadata accessor for TUCall();
    if (OUTLINED_FUNCTION_15_35())
    {
      v4 = [v12 callUUID];
      v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v7 = v6;

      if ([v12 isActive])
      {
      }

      else
      {
        static TaskPriority.userInitiated.getter();
        v8 = type metadata accessor for TaskPriority();
        OUTLINED_FUNCTION_19_28(v8);

        v9 = static MainActor.shared.getter();
        v10 = swift_allocObject();
        v11 = MEMORY[0x1E69E85E0];
        v10[2] = v9;
        v10[3] = v11;
        v10[4] = v1;
        v10[5] = v5;
        v10[6] = v7;
        OUTLINED_FUNCTION_11_57();
        _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5();
      }
    }
  }

  else
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v13, &_sypSgMd, &_sypSgMR);
  }
}

unint64_t type metadata accessor for TUCall()
{
  result = lazy cache variable for type metadata for TUCall;
  if (!lazy cache variable for type metadata for TUCall)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for TUCall);
  }

  return result;
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed Notification) -> ()(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Notification();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 32);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();

  v7(v6);

  return (*(v4 + 8))(v6, v3);
}

void partial apply for closure #1 in closure #1 in CallStatusService.init(logger:notificationCenter:callServices:callCenter:)(uint64_t a1)
{
  v3 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_9_0(v3);
  v5 = v4;
  v7 = v6;
  v8 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v9 = *(v1 + 16);
  v10 = (v1 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  closure #1 in closure #1 in CallStatusService.init(logger:notificationCenter:callServices:callCenter:)(a1, v9, (v1 + v8), v11, v12);
}

void closure #1 in closure #1 in CallStatusService.init(logger:notificationCenter:callServices:callCenter:)(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5)
{
  v66 = a4;
  v67 = a5;
  v68 = a3;
  v6 = type metadata accessor for Notification();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Logger();
  v64 = *(v10 - 8);
  v65 = v10;
  v11 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v63 = v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for AnsweringMachineCallStatus(0);
  v62 = *(v12 - 8);
  v13 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v56 - v16;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v19 = Strong;
  Notification.object.getter();
  if (!v70)
  {
    outlined destroy of Any?(v69);
LABEL_7:
    (*(v7 + 16))(v9, a1, v6);
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v68 = v19;
      v69[0] = v34;
      v35 = v34;
      *v33 = 136446210;
      v36 = Notification.name.getter();
      v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v39 = v38;

      (*(v7 + 8))(v9, v6);
      v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v39, v69);

      *(v33 + 4) = v40;
      _os_log_impl(&dword_1BBC58000, v31, v32, "ignoring %{public}s missing TUCall", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v35);
      MEMORY[0x1BFB23DF0](v35, -1, -1);
      MEMORY[0x1BFB23DF0](v33, -1, -1);
    }

    else
    {

      (*(v7 + 8))(v9, v6);
    }

    return;
  }

  type metadata accessor for TUCall();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_7;
  }

  v20 = v72;
  v21 = [v72 callUUID];
  v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v59 = v23;
  v60 = v22;

  v24 = [v20 description];
  v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v57 = v26;
  v58 = v25;

  v27 = *&v19[OBJC_IVAR____TtC15ConversationKit17CallStatusService_features];
  v28 = Features.receptionistEnabled.getter();

  if (v28)
  {
    v70 = &type metadata for CallCenterCall;
    v71 = lazy protocol witness table accessor for type CallCenterCall and conformance CallCenterCall();
    v69[0] = v20;
    v29 = v20;
    v30 = v17;
    callStatus(updateSource:for:)(v66, v67, v69, v17);
    __swift_destroy_boxed_opaque_existential_1(v69);
  }

  else
  {
    v30 = v17;
    callStatus(updateSource:for:)(v66, v67, v20, v17);
  }

  v61 = v20;
  if (v30[32] == 6 && v30[*(v12 + 32)] == 1)
  {
    type metadata accessor for Defaults();
    swift_allocObject();
    v41 = *Defaults.init()();
    (*(v41 + 256))(0);
  }

  v56[1] = *&v19[OBJC_IVAR____TtC15ConversationKit17CallStatusService_notificationQueue];
  v43 = v63;
  v42 = v64;
  v44 = v65;
  (*(v64 + 16))(v63, v68, v65);
  outlined init with copy of AnsweringMachineCallStatus(v30, v14);
  v45 = v19;
  v46 = (*(v42 + 80) + 56) & ~*(v42 + 80);
  v47 = (v11 + *(v62 + 80) + v46) & ~*(v62 + 80);
  v48 = swift_allocObject();
  v68 = v30;
  v49 = v48;
  v50 = v66;
  v51 = v67;
  v48[2] = v45;
  v48[3] = v50;
  v52 = v59;
  v53 = v60;
  v48[4] = v51;
  v48[5] = v53;
  v48[6] = v52;
  (*(v42 + 32))(v48 + v46, v43, v44);
  outlined init with take of AnsweringMachineCallStatus(v14, v49 + v47);
  v54 = (v49 + ((v13 + v47 + 7) & 0xFFFFFFFFFFFFFFF8));
  v55 = v57;
  *v54 = v58;
  v54[1] = v55;

  dispatch thunk of TaskQueue.async(_:)();

  outlined destroy of AnsweringMachineCallStatus(v68);
}

uint64_t sub_1BBCC6204()
{
  v1 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_1();
  v3 = v2;
  v4 = (*(v2 + 80) + 56) & ~*(v2 + 80);
  v6 = *(v5 + 64);
  v7 = (type metadata accessor for AnsweringMachineCallStatus(0) - 8);
  v8 = (v4 + v6 + *(*v7 + 80)) & ~*(*v7 + 80);

  (*(v3 + 8))(v0 + v4, v1);

  v9 = v7[9];
  type metadata accessor for CallScreeningStatus();
  OUTLINED_FUNCTION_7_0();
  (*(v10 + 8))(v0 + v8 + v9);

  return swift_deallocObject();
}

uint64_t type metadata accessor for AnsweringMachineCallStatus(uint64_t a1)
{
  result = type metadata singleton initialization cache for AnsweringMachineCallStatus;
  if (!type metadata singleton initialization cache for AnsweringMachineCallStatus)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t callStatus(updateSource:for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v27 = a1;
  v28 = a2;
  v6 = type metadata accessor for CallScreeningStatus();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [a3 callUUID];
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v25 = v13;
  v26 = v12;

  v14 = CallStatus.init(_:)([a3 status]);
  v15 = [a3 isScreening];
  v16 = MEMORY[0x1E6995EA0];
  if (!v15)
  {
    v16 = MEMORY[0x1E6995E98];
  }

  (*(v7 + 104))(v10, *v16, v6);
  v17 = [a3 isScreeningDueToUserInteraction];
  v18 = [a3 isEligibleForScreening];
  v19 = [a3 answeringMachineStreamToken];
  v20 = [a3 screeningAnnouncementHasFinished];
  v21 = v28;
  *a4 = v27;
  *(a4 + 8) = v21;
  v22 = v25;
  *(a4 + 16) = v26;
  *(a4 + 24) = v22;
  *(a4 + 32) = v14;
  v23 = type metadata accessor for AnsweringMachineCallStatus(0);
  (*(v7 + 32))(a4 + v23[7], v10, v6);
  *(a4 + v23[8]) = v17;
  *(a4 + v23[9]) = v18;
  *(a4 + v23[10]) = v19;
  *(a4 + v23[11]) = v20;
}

uint64_t CallStatus.init(_:)(uint64_t result)
{
  if (result >= 7)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t outlined init with copy of AnsweringMachineCallStatus(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AnsweringMachineCallStatus(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of AnsweringMachineCallStatus(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AnsweringMachineCallStatus(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of AnsweringMachineCallStatus(uint64_t a1)
{
  v2 = type metadata accessor for AnsweringMachineCallStatus(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t closure #1 in AudioCallManager.init(withCallCoordinator:andPublisher:resolvingCallsWith:presentingCallsWith:)(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v21 - v13;
  v22 = *a1;
  v15 = v22;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUCall, 0x1E69D8A40);
  v16 = v15;
  result = swift_dynamicCast();
  if (result)
  {
    v18 = v21;
    v19 = type metadata accessor for TaskPriority();
    __swift_storeEnumTagSinglePayload(v14, 1, 1, v19);
    v20 = swift_allocObject();
    v20[2] = 0;
    v20[3] = 0;
    v20[4] = a3;
    v20[5] = a4;
    v20[6] = a5;
    v20[7] = a6;
    v20[8] = a2;
    v20[9] = v18;

    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCytSg_Tt2g5();
  }

  return result;
}

uint64_t sub_1BBCC68D4()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in CallStatusService.init(logger:notificationCenter:callServices:callCenter:)()
{
  v2 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_9_0(v2);
  v4 = (*(v3 + 80) + 56) & ~*(v3 + 80);
  v6 = *(v5 + 64);
  v7 = type metadata accessor for AnsweringMachineCallStatus(0);
  OUTLINED_FUNCTION_9_0(v7);
  v9 = (v4 + v6 + *(v8 + 80)) & ~*(v8 + 80);
  v11 = v0[3];
  v19 = v0[2];
  v12 = v0[4];
  v13 = v0[5];
  v14 = v0[6];
  v15 = *(v0 + ((*(v10 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v16 = swift_task_alloc();
  *(v1 + 16) = v16;
  *v16 = v1;
  v16[1] = partial apply for closure #1 in SyncedScreeningAlphaGradientView.gradient(for:);

  return closure #1 in closure #1 in closure #1 in CallStatusService.init(logger:notificationCenter:callServices:callCenter:)(v19, v11, v12, v13, v14, v0 + v4, v0 + v9, v15);
}

uint64_t closure #1 in closure #1 in closure #1 in CallStatusService.init(logger:notificationCenter:callServices:callCenter:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[9] = a8;
  v8[10] = v13;
  v8[7] = a6;
  v8[8] = a7;
  v8[5] = a4;
  v8[6] = a5;
  v8[3] = a2;
  v8[4] = a3;
  v8[2] = a1;
  type metadata accessor for AnsweringMachineCallStatus(0);
  v8[11] = swift_task_alloc();
  v8[12] = swift_task_alloc();
  v8[13] = swift_task_alloc();
  type metadata accessor for MainActor();
  v8[14] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in closure #1 in CallStatusService.init(logger:notificationCenter:callServices:callCenter:), v10, v9);
}

uint64_t @objc TUCallCenter.cnk_hasTooManyCallsForCallWaitingBanner.getter(void *a1)
{
  v1 = a1;
  v2 = TUCallCenter.cnk_hasTooManyCallsForCallWaitingBanner.getter();

  return v2 & 1;
}

uint64_t TUCallCenter.cnk_hasTooManyCallsForCallWaitingBanner.getter()
{
  if ([v0 currentAudioAndVideoCallCount] < 3)
  {
    return 0;
  }

  return TUCallCenter.cnk_hasIncomingAudioOrVideoCall.getter();
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5TA()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_15_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_0_17(v1);

  return v4(v3);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5TQ0_;

  return v5(v2 + 32);
}

uint64_t partial apply for closure #1 in closure #1 in AudioCallManager.init(withCallCoordinator:andPublisher:resolvingCallsWith:presentingCallsWith:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[8];
  v6 = v1[9];
  swift_task_alloc();
  OUTLINED_FUNCTION_14_4();
  *(v2 + 16) = v8;
  *v8 = v9;
  v8[1] = partial apply for closure #1 in CallRecordingService.startRecording(call:completion:);

  return closure #1 in closure #1 in AudioCallManager.init(withCallCoordinator:andPublisher:resolvingCallsWith:presentingCallsWith:)(a1, v4, v5, v7, v6);
}

uint64_t CNKBannerPresentationManager.isMicIndicatorVisible.getter(uint64_t (*a1)(void))
{
  v2 = a1;
  v3 = OBJC_IVAR___CNKBannerPresentationManager_value;
  OUTLINED_FUNCTION_9_67(a1);
  v4 = *(v1 + v3);
  LOBYTE(v2) = v2();

  return v2 & 1;
}

uint64_t closure #1 in closure #1 in AudioCallManager.init(withCallCoordinator:andPublisher:resolvingCallsWith:presentingCallsWith:)()
{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_4_0(*(v0 + 48) + 16, v0 + 16);
  Strong = swift_weakLoadStrong();
  *(v0 + 64) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    *(v0 + 72) = v2;
    *v2 = v0;
    v2[1] = closure #1 in closure #1 in AudioCallManager.init(withCallCoordinator:andPublisher:resolvingCallsWith:presentingCallsWith:);

    return AudioCallManager.updateWithCall(_:)();
  }

  else
  {
    **(v0 + 40) = 1;
    OUTLINED_FUNCTION_13();

    return v4();
  }
}

{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_23_0();
  v1 = *v0;
  OUTLINED_FUNCTION_4_6();
  *v2 = v1;

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in AudioCallManager.init(withCallCoordinator:andPublisher:resolvingCallsWith:presentingCallsWith:), 0, 0);
}

{
  **(v0 + 40) = *(v0 + 64) == 0;
  OUTLINED_FUNCTION_13();
  return v1();
}

uint64_t closure #1 in closure #1 in AudioCallManager.init(withCallCoordinator:andPublisher:resolvingCallsWith:presentingCallsWith:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[5] = a1;
  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in AudioCallManager.init(withCallCoordinator:andPublisher:resolvingCallsWith:presentingCallsWith:), 0, 0);
}

uint64_t AudioCallManager.updateWithCall(_:)()
{
  OUTLINED_FUNCTION_24_0();
  v1[2] = v2;
  v1[3] = v0;
  v1[4] = *v0;
  type metadata accessor for MainActor();
  v1[5] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[6] = v4;
  v1[7] = v3;

  return MEMORY[0x1EEE6DFA0](AudioCallManager.updateWithCall(_:), v4, v3);
}

{
  OUTLINED_FUNCTION_9();
  v1 = v0[4];
  v2 = v0[2];
  AudioCallManager.callsCache.getter();
  AudioCallManager.CallsCache.addCall(_:)(v2);

  v3 = (*(*(v1 + 88) + 184))(*(v1 + 80));
  LOBYTE(v2) = [v3 isSystemProvider];

  if ((v2 & 1) == 0)
  {
    AudioCallManager.watchProcessForCall(_:)();
  }

  v4 = swift_task_alloc();
  v0[8] = v4;
  *v4 = v0;
  v4[1] = AudioCallManager.updateWithCall(_:);

  return AudioCallManager.resolveAndPresent()();
}

{
  OUTLINED_FUNCTION_24_0();
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_4_6();
  *v3 = v2;

  v4 = *(v1 + 56);
  v5 = *(v1 + 48);

  return MEMORY[0x1EEE6DFA0](AudioCallManager.updateWithCall(_:), v5, v4);
}

{
  OUTLINED_FUNCTION_24_0();

  OUTLINED_FUNCTION_13();

  return v0();
}

uint64_t BannerPresentationManager.onlyHasPlaceholderCall.getter()
{
  result = PlaceholderCallCenter.activeCall.getter();
  if (result)
  {

    OUTLINED_FUNCTION_293();
    v2 = (*(v1 + 392))();
    if (v2)
    {

      return 0;
    }

    else
    {
      return 1;
    }
  }

  return result;
}

void *PlaceholderCallCenter.activeCall.getter()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v3 = OUTLINED_FUNCTION_22(v2);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v41 - v4;
  v6 = type metadata accessor for UUID();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_8();
  v9 = v8 - v7;
  v10 = type metadata accessor for DispatchPredicate();
  OUTLINED_FUNCTION_1();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_4_2();
  v14 = *&v0[OBJC_IVAR____TtC15ConversationKit21PlaceholderCallCenter_queue];
  *v1 = v14;
  (*(v12 + 104))(v1, *MEMORY[0x1E69E8020], v10);
  v15 = v14;
  LOBYTE(v14) = _dispatchPreconditionTest(_:)();
  v17 = *(v12 + 8);
  v16 = (v12 + 8);
  v17(v1, v10);
  if ((v14 & 1) == 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  PlaceholderCallCenter.conversationNeedingPlaceholderCall.getter(&v43);
  v10 = v43;
  if (!v43)
  {
    return 0;
  }

  v18 = v44;
  HIBYTE(v42) = v44;
  v19 = PlaceholderCallCenter.activeCall(for:purpose:)(v43, &v42 + 7);
  if (v19)
  {
    v1 = v19;

    return v1;
  }

  v16 = &selRef__iconForResourceProxy_format_;
  v20 = [v10 UUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  BYTE6(v42) = v18;
  type metadata accessor for PlaceholderCall(0);
  swift_allocObject();
  v21 = v0;
  v1 = PlaceholderCall.init(for:placeholderCallCenter:purpose:)(v9, v21, &v42 + 6);
  v22 = *&v21[OBJC_IVAR____TtC15ConversationKit21PlaceholderCallCenter_activeCalls];

  result = [v10 UUID];
  if (result)
  {
    v24 = result;
    [v22 setObject:v1 forKey:result];

    if (one-time initialization token for conversationKit == -1)
    {
LABEL_8:
      v25 = static OS_os_log.conversationKit;
      v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      v27 = OUTLINED_FUNCTION_13_12(v26);
      *(v27 + 16) = xmmword_1BC4BA940;
      v28 = [v10 v16[411]];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      __swift_storeEnumTagSinglePayload(v5, 0, 1, v6);
      specialized >> prefix<A>(_:)(v5, v29, v30, v31, v32, v33, v34, v35, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50);
      v37 = v36;
      v39 = v38;
      outlined destroy of UUID?(v5);
      *(v27 + 56) = MEMORY[0x1E69E6158];
      *(v27 + 64) = lazy protocol witness table accessor for type String and conformance String();
      *(v27 + 32) = v37;
      *(v27 + 40) = v39;
      v40 = static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)("PlaceholderCallCenter created placeholder for conversation %@", 61, 2, &dword_1BBC58000, v25, v40, v27);

      return v1;
    }

LABEL_11:
    OUTLINED_FUNCTION_0_6(&one-time initialization token for conversationKit);
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

void PlaceholderCallCenter.conversationNeedingPlaceholderCall.getter(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 1);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = (&v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v1 + OBJC_IVAR____TtC15ConversationKit21PlaceholderCallCenter_queue);
  *v7 = v8;
  (*(v4 + 104))(v7, *MEMORY[0x1E69E8020], v3, v5);
  v9 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  (*(v4 + 8))(v7, v3);
  if ((v8 & 1) == 0)
  {
    __break(1u);
    goto LABEL_20;
  }

  v10 = PlaceholderCallCenter.avLessConversation.getter();
  if (v10)
  {
    v3 = v10;
    v11 = [v10 presentationContext];
    v12 = [v11 mode];

    if (v12 == 2)
    {
      v21 = 2;
LABEL_16:
      *a1 = v3;
      goto LABEL_17;
    }

    if (v12 == 1)
    {
LABEL_15:
      v21 = 1;
      goto LABEL_16;
    }

    if (v12)
    {
      if (one-time initialization token for conversationKit != -1)
      {
        swift_once();
      }

      v22 = static OS_os_log.conversationKit;
      v23 = static os_log_type_t.fault.getter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_1BC4BA940;
      v30 = v3;
      type metadata accessor for TUConversation();
      v25 = v3;
      v26 = String.init<A>(reflecting:)();
      v28 = v27;
      *(v24 + 56) = MEMORY[0x1E69E6158];
      *(v24 + 64) = lazy protocol witness table accessor for type String and conformance String();
      *(v24 + 32) = v26;
      *(v24 + 40) = v28;
      os_log(_:dso:log:type:_:)("Unhandled avLess conversation case. Falling back to avLessPurpose = .avLessConversation: %@", 91, 2, &dword_1BBC58000, v22, v23, v24);
      goto LABEL_14;
    }

    if (one-time initialization token for conversationKit == -1)
    {
LABEL_7:
      v13 = static OS_os_log.conversationKit;
      v14 = static os_log_type_t.error.getter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      v15 = swift_allocObject();
      *(v15 + 16) = xmmword_1BC4BA940;
      v30 = v3;
      type metadata accessor for TUConversation();
      v16 = v3;
      v17 = String.init<A>(reflecting:)();
      v19 = v18;
      *(v15 + 56) = MEMORY[0x1E69E6158];
      *(v15 + 64) = lazy protocol witness table accessor for type String and conformance String();
      *(v15 + 32) = v17;
      *(v15 + 40) = v19;
      os_log(_:dso:log:type:_:)("AVLess conversations should have non-default presentationContext modes: %@", 74, 2, &dword_1BBC58000, v13, v14, v15);
LABEL_14:

      goto LABEL_15;
    }

LABEL_20:
    swift_once();
    goto LABEL_7;
  }

  v20 = PlaceholderCallCenter.handoffEligibleConversation.getter();
  if (v20)
  {
    *a1 = v20;
    v21 = 3;
LABEL_17:
    *(a1 + 8) = v21;
    return;
  }

  *a1 = 0;
  *(a1 + 8) = 0;
}

id PlaceholderCallCenter.avLessConversation.getter()
{
  v1 = v0;
  v38 = type metadata accessor for UUID();
  v2 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v37 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for shared != -1)
  {
    goto LABEL_30;
  }

  while (1)
  {
    if (((*(*static Defaults.shared + 904))(v3, v4) & 1) == 0)
    {
      return 0;
    }

    v6 = [*(v1 + OBJC_IVAR____TtC15ConversationKit21PlaceholderCallCenter_conversationManager) activeConversations];
    v7 = type metadata accessor for TUConversation();
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_5(&lazy protocol witness table cache variable for type TUConversation and conformance NSObject, type metadata accessor for TUConversation, MEMORY[0x1E69E81B8]);
    v8 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v35 = v1;
    v33 = v8;
    if ((v8 & 0xC000000000000001) != 0)
    {
      swift_unknownObjectRetain();
      __CocoaSet.makeIterator()();
      Set.Iterator.init(_cocoa:)();
      v8 = v42;
      v9 = v43;
      v10 = v44;
      v11 = v45;
      v12 = v46;
    }

    else
    {
      v14 = -1 << *(v8 + 32);
      v9 = v8 + 56;
      v10 = ~v14;
      v15 = -v14;
      v16 = v15 < 64 ? ~(-1 << v15) : -1;
      v12 = v16 & *(v8 + 56);

      v11 = 0;
    }

    v32 = v10;
    v1 = (v10 + 64) >> 6;
    v34 = (v2 + 1);
    v2 = &selRef_isRecordingAllowed;
    if (v8 < 0)
    {
      break;
    }

LABEL_11:
    v17 = v11;
    v18 = v12;
    v19 = v11;
    if (v12)
    {
LABEL_15:
      v20 = (v18 - 1) & v18;
      v13 = *(*(v8 + 48) + ((v19 << 9) | (8 * __clz(__rbit64(v18)))));
      if (v13)
      {
        goto LABEL_19;
      }

      goto LABEL_26;
    }

    while (1)
    {
      v19 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v19 >= v1)
      {
        goto LABEL_25;
      }

      v18 = *(v9 + 8 * v19);
      ++v17;
      if (v18)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_30:
    v3 = swift_once();
  }

  while (1)
  {
    v21 = __CocoaSet.Iterator.next()();
    if (!v21)
    {
      break;
    }

    v40 = v21;
    swift_dynamicCast();
    v13 = v41;
    v19 = v11;
    v20 = v12;
    if (!v41)
    {
      goto LABEL_26;
    }

LABEL_19:
    v39 = v11;
    if ([v13 v2[26]])
    {
      if ([v13 v2[26]] != 4)
      {
        if (![v13 avMode])
        {
          goto LABEL_26;
        }

        v22 = OBJC_IVAR____TtC15ConversationKit21PlaceholderCallCenter_expectedAVLessConversationUUIDs;
        v23 = v35;
        swift_beginAccess();
        v24 = *(v23 + v22);

        v25 = [v13 UUID];
        v36 = v12;
        v26 = v8;
        v27 = v7;
        v28 = v37;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        specialized Set.contains(_:)(v28, v24);
        LOBYTE(v25) = v29;
        v2 = &selRef_isRecordingAllowed;

        v30 = v28;
        v7 = v27;
        v8 = v26;
        (*v34)(v30, v38);
        if (v25)
        {
          goto LABEL_26;
        }
      }
    }

    v11 = v19;
    v12 = v20;
    if ((v8 & 0x8000000000000000) == 0)
    {
      goto LABEL_11;
    }
  }

LABEL_25:
  v13 = 0;
LABEL_26:
  outlined consume of Set<TUHandle>.Iterator._Variant(v8);

  return v13;
}

unint64_t type metadata accessor for TUConversation()
{
  result = lazy cache variable for type metadata for TUConversation;
  if (!lazy cache variable for type metadata for TUConversation)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for TUConversation);
  }

  return result;
}

id PlaceholderCallCenter.handoffEligibleConversation.getter()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  if ((*(*static Defaults.shared + 608))())
  {
    return [*(v0 + OBJC_IVAR____TtC15ConversationKit21PlaceholderCallCenter_conversationManager) handoffEligibleConversation];
  }

  else
  {
    return 0;
  }
}

uint64_t Features.shouldEmbedSwapBanner.getter()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  if (v1 == 1)
  {
    LOBYTE(v0) = 0;
  }

  else
  {
    v14 = lazy protocol witness table accessor for type Features.CallUI and conformance Features.CallUI();
    v9 = OUTLINED_FUNCTION_12_53(v14, v2, v3, v4, v5, v6, v7, v8, v12, v13);
    OUTLINED_FUNCTION_8_68(v9, v10);
  }

  return v0 & 1;
}

unint64_t lazy protocol witness table accessor for type Features.CallUI and conformance Features.CallUI()
{
  result = lazy protocol witness table cache variable for type Features.CallUI and conformance Features.CallUI;
  if (!lazy protocol witness table cache variable for type Features.CallUI and conformance Features.CallUI)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Features.CallUI and conformance Features.CallUI);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Features.CallUI and conformance Features.CallUI;
  if (!lazy protocol witness table cache variable for type Features.CallUI and conformance Features.CallUI)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Features.CallUI and conformance Features.CallUI);
  }

  return result;
}

const char *Features.CallUI.feature.getter(char a1)
{
  result = "CallUI_DialPad";
  switch(a1)
  {
    case 1:
      result = "CallUI_Banners";
      break;
    case 2:
      result = "CallUI_EmbedSwapBanner";
      break;
    case 3:
      result = "CallUI_DynamicIsland_IncomingBannerOverSixUp";
      break;
    default:
      return result;
  }

  return result;
}

BOOL Features.isHeroImageEnabled.getter()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  return v1 != 1;
}

uint64_t TUCallCenter.wantsCallWaiting.getter()
{
  if ([v0 currentAudioAndVideoCallCount] < 2)
  {
    return 0;
  }

  return TUCallCenter.cnk_hasIncomingAudioOrVideoCall.getter();
}

id static NameAndPhotoUtilities.shared.getter()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v1 = static NameAndPhotoUtilities.shared;

  return v1;
}

id NameAndPhotoUtilities.currentIMNickname(matching:)(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v3 = objc_opt_self();
  v4 = a1;
  v5 = [v3 contactIsInAutoUpdateState_];
  v6 = *(v1 + OBJC_IVAR____TtC15ConversationKit21NameAndPhotoUtilities_imNicknameProvider);
  v7 = [v6 haveNicknamesLoaded];
  v8 = v7;
  v9 = 0;
  if (v5 && v7)
  {
    v9 = [v6 currentNicknameForContact_];
    v10 = v9;
  }

  if (one-time initialization token for nickname != -1)
  {
    OUTLINED_FUNCTION_0_160(&one-time initialization token for nickname);
  }

  v11 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_52(v11, &static Logger.nickname);
  v12 = v9;
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *v15 = 67109634;
    *(v15 + 4) = v8;
    *(v15 + 8) = 2080;
    v16 = String.init<A>(reflecting:)();
    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, &v24);

    *(v15 + 10) = v18;
    *(v15 + 18) = 2080;
    if (v9)
    {
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for IMNickname, 0x1E69A8190);
      v19 = String.init<A>(reflecting:)();
      v21 = v20;
    }

    else
    {
      v21 = 0xE300000000000000;
      v19 = 7104878;
    }

    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v21, &v24);

    *(v15 + 20) = v22;
    _os_log_impl(&dword_1BBC58000, v13, v14, "SNAP: imNicknameProviderReady: %{BOOL}d contactIsInAutoUpdateState: %s fetched contacts associated IMNickname: %s", v15, 0x1Cu);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_4_4();
  }

  else
  {
  }

  return v9;
}

uint64_t Features.isDialPadEnabled.getter()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  v2 = lazy protocol witness table accessor for type Features.CallUI and conformance Features.CallUI();
  v10 = OUTLINED_FUNCTION_11_64(v2, v3, v4, v5, v6, v7, v8, v9, v13, v14, v15, v16, &unk_1F3ADD8C8, v17);
  OUTLINED_FUNCTION_8_68(v10, v11);
  return v0 & (v1 != 1);
}

uint64_t @objc DelayedAnsweringMachine.enabled.getter(uint64_t a1)
{

  v1 = DelayedAnsweringMachine.enabled.getter();

  return v1 & 1;
}

BOOL partial apply for closure #1 in AnsweringMachineSyncComposer.compose(isInSupportedEnvirement:timeToWaitForCall:)()
{
  v0 = type metadata accessor for AnsweringMachineStatusService(0);
  OUTLINED_FUNCTION_22(v0);
  OUTLINED_FUNCTION_26_46();
  return AnsweringMachineStatusService.isAvailable()();
}

uint64_t type metadata accessor for AnsweringMachineStatusService(uint64_t a1)
{
  result = type metadata singleton initialization cache for AnsweringMachineStatusService;
  if (!type metadata singleton initialization cache for AnsweringMachineStatusService)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

Swift::Bool __swiftcall AnsweringMachineStatusService.isAvailable()()
{
  v1 = v0;
  v2 = TUCallScreeningEnabled();
  v3 = type metadata accessor for AnsweringMachineStatusService(0);
  if (v2)
  {
    if ((*(v1 + *(v3 + 24)))())
    {
      return 1;
    }

    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      v8 = "Answering Machine unavailable because we are not in a supported envirement";
      goto LABEL_8;
    }
  }

  else
  {
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      v8 = "Answering Machine unavailable because TUCallScreeningEnabled is NO";
LABEL_8:
      _os_log_impl(&dword_1BBC58000, v5, v6, v8, v7, 2u);
      MEMORY[0x1BFB23DF0](v7, -1, -1);
    }
  }

  return 0;
}

uint64_t Features.isiPadPostersEnabled.getter()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  if (v1 == 1)
  {
    v2 = lazy protocol witness table accessor for type Features.CallExperience and conformance Features.CallExperience();
    v10 = OUTLINED_FUNCTION_11_64(v2, v3, v4, v5, v6, v7, v8, v9, v13, v14, v15, v16, &unk_1F3ADDCB8, v17);
    OUTLINED_FUNCTION_8_68(v10, v11);
  }

  else
  {
    LOBYTE(v0) = 0;
  }

  return v0 & 1;
}

void CallRecordingButtonViewController.update(recordingAvailability:)(int a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC15ConversationKit33CallRecordingButtonViewController_viewModel);
  swift_beginAccess();
  *(v3 + 60) = a1;
  CallRecordingButtonViewModel.updateButtonState()();
}

void CallRecordingButtonViewModel.updateButtonState()()
{
  v1 = [objc_opt_self() sharedInstance];
  v2 = [v1 currentCalls];

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUCall, 0x1E69D8A40);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v4 = specialized Array.count.getter();
  for (i = 0; ; ++i)
  {
    if (v4 == i)
    {

      v14 = 0;
      v7 = 0;
      goto LABEL_17;
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x1BFB22010](i, v3);
    }

    else
    {
      if (i >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_29;
      }

      v6 = *(v3 + 8 * i + 32);
    }

    v7 = v6;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_29:
      __break(1u);
      return;
    }

    v8 = [v6 callUUID];
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    if (v9 == *(v0 + 40) && v11 == *(v0 + 48))
    {
      break;
    }

    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v13)
    {
      goto LABEL_16;
    }
  }

LABEL_16:

  v14 = [v7 status];
LABEL_17:
  v27[50] = v4 == i;
  v15 = specialized Sequence<>.contains(_:)(v14 | ((v4 == i) << 32), &outlined read-only object #0 of CallRecordingButtonViewModel.updateButtonState());
  swift_beginAccess();
  v16 = *(v0 + 68);
  v17 = *(v0 + 56) ^ 1;
  swift_beginAccess();
  v19 = *(v0 + 60);
  v20 = !v15;
  if (v19 != 3)
  {
    v20 = 0;
  }

  v21 = v19 == 1 || !((v7 != 0) & v17 & v16);
  v22 = v19 != 1 && v20;
  OUTLINED_FUNCTION_4_5(v0 + 16, v18);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v24 = Strong;
    v25 = *(v0 + 24);
    ObjectType = swift_getObjectType();
    v27[0] = v22;
    v27[1] = v21;
    (*(v25 + 24))(v27, ObjectType, v25);
  }
}

Swift::Void __swiftcall CallRecordingButtonViewController.update(callUUID:)(Swift::String callUUID)
{
  *(*(v1 + OBJC_IVAR____TtC15ConversationKit33CallRecordingButtonViewController_viewModel) + 40) = callUUID;
}

BOOL specialized Sequence<>.contains(_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 36);
  while (v2)
  {
    if (*v3)
    {
      if ((a1 & 0x100000000) != 0)
      {
        return v2 != 0;
      }
    }

    else if ((a1 & 0x100000000) == 0 && *(v3 - 1) == a1)
    {
      return v2 != 0;
    }

    v3 += 8;
    --v2;
  }

  return v2 != 0;
}

{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *v3++;
  }

  while (v6 != a1);
  return v4 != 0;
}

Swift::Void __swiftcall CallHoldingButtonViewController.update(callUUID:)(Swift::String callUUID)
{
  object = callUUID._object;
  countAndFlagsBits = callUUID._countAndFlagsBits;
  v4 = *(v1 + OBJC_IVAR____TtC15ConversationKit31CallHoldingButtonViewController_viewModel);
  OUTLINED_FUNCTION_6_0(v4 + 32, callUUID._object);
  *(v4 + 32) = countAndFlagsBits;
  *(v4 + 40) = object;

  CallHoldingButtonViewModel.callUUID.didset();
}

uint64_t CallHoldingButtonViewModel.callUUID.didset()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  OUTLINED_FUNCTION_22(v1);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v8 - v3;
  v5 = type metadata accessor for TaskPriority();
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v5);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v0;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5();
}

uint64_t outlined destroy of TapInteractionHandler?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

Swift::Void __swiftcall CallHoldingButtonViewController.update(holdingAvailability:)(Swift::Bool holdingAvailability)
{
  v4 = *(v2 + OBJC_IVAR____TtC15ConversationKit31CallHoldingButtonViewController_viewModel);
  OUTLINED_FUNCTION_6_0(v4 + 60, v1);
  *(v4 + 60) = holdingAvailability;
}

Swift::Void __swiftcall WaitOnHoldService.updateForCall(withUUID:)(Swift::String withUUID)
{
  v2 = v1;
  object = withUUID._object;
  countAndFlagsBits = withUUID._countAndFlagsBits;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  OUTLINED_FUNCTION_22(v5);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v63 - v7;
  v9 = type metadata accessor for AttributeContainer();
  v10 = OUTLINED_FUNCTION_22(v9);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_8();
  v11 = type metadata accessor for AttributedString();
  v12 = OUTLINED_FUNCTION_22(v11);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_8();
  v15 = (v14 - v13);
  v16 = OBJC_IVAR____TtC15ConversationKit17WaitOnHoldService_call;
  v17 = *(v1 + OBJC_IVAR____TtC15ConversationKit17WaitOnHoldService_call);
  if (v17)
  {
    v18 = [v17 callUUID];
    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;

    if (v19 == countAndFlagsBits && v21 == object)
    {
      OUTLINED_FUNCTION_30_0();

      return;
    }

    v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v23)
    {
      goto LABEL_28;
    }
  }

  v24 = [objc_opt_self() sharedInstance];
  v25 = MEMORY[0x1BFB209B0](countAndFlagsBits, object);
  v26 = [v24 callWithCallUUID_];

  if (!v26)
  {
LABEL_28:
    OUTLINED_FUNCTION_30_0();
    return;
  }

  v27 = *(v2 + v16);
  *(v2 + v16) = v26;
  v64 = v26;

  WaitOnHoldService.beginInitialHoldDetectionForCallIfNeeded()();
  if (([v64 isWaitOnHoldActive] & 1) == 0)
  {
    WaitOnHoldService.stopActivity()();
  }

  v28 = OBJC_IVAR____TtC15ConversationKit17WaitOnHoldService_waitOnHoldStatusMessageService;
  v29 = *(v2 + OBJC_IVAR____TtC15ConversationKit17WaitOnHoldService_waitOnHoldStatusMessageService);
  if (!v29)
  {
LABEL_22:
    v43 = objc_opt_self();
    v44 = v64;
    v45 = [v43 conversationKit];
    OUTLINED_FUNCTION_5_5();
    v46.super.isa = v45;
    OUTLINED_FUNCTION_17_0(0xD00000000000001ALL, 0x80000001BC500610, v47, v48, v46);

    AttributeContainer.init()();
    AttributedString.init(_:attributes:)();
    type metadata accessor for WaitOnHoldStatusMessageService(0);
    v49 = swift_allocObject();
    *(v2 + v28) = specialized WaitOnHoldStatusMessageService.init(call:initialStatusMessage:)(v44, v15, v49);

    v50 = OBJC_IVAR____TtC15ConversationKit17WaitOnHoldService_statusMessageTask;
    if (*(v2 + OBJC_IVAR____TtC15ConversationKit17WaitOnHoldService_statusMessageTask))
    {

      MEMORY[0x1BFB21000](v51, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7410]);
    }

    *(v2 + v50) = 0;

    static TaskPriority.userInitiated.getter();
    type metadata accessor for TaskPriority();
    OUTLINED_FUNCTION_12();
    __swift_storeEnumTagSinglePayload(v53, v54, v55, v56);
    OUTLINED_FUNCTION_20();
    v57 = swift_allocObject();
    swift_unknownObjectWeakInit();
    type metadata accessor for MainActor();

    v58 = static MainActor.shared.getter();
    OUTLINED_FUNCTION_37_0();
    v59 = swift_allocObject();
    v60 = MEMORY[0x1E69E85E0];
    v59[2] = v58;
    v59[3] = v60;
    v59[4] = v57;

    OUTLINED_FUNCTION_59();
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5();
    v62 = v61;

    *(v2 + v50) = v62;

    goto LABEL_28;
  }

  v63 = v8;
  v30 = *(*v29 + 136);

  v30(v31);
  v33 = v32;
  ObjectType = swift_getObjectType();
  v35 = (*(v33 + 56))(ObjectType, v33);
  v37 = v36;
  swift_unknownObjectRelease();
  if (v35 != countAndFlagsBits || v37 != object)
  {
    v39 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v39)
    {
      OUTLINED_FUNCTION_30_0();

      return;
    }

    goto LABEL_22;
  }

  OUTLINED_FUNCTION_30_0();
}

uint64_t sub_1BBCC9768()
{
  MEMORY[0x1BFB23F10](v0 + 16);
  OUTLINED_FUNCTION_20();

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in CallHoldingButtonViewModel.callUUID.didset()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_225();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_16_1(v1);

  return closure #1 in CallHoldingButtonViewModel.callUUID.didset(v3, v4, v5, v6);
}

uint64_t closure #1 in CallHoldingButtonViewModel.callUUID.didset()
{
  OUTLINED_FUNCTION_24_0();
  type metadata accessor for MainActor();
  *(v0 + 24) = static MainActor.shared.getter();
  OUTLINED_FUNCTION_28_0();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #1 in CallHoldingButtonViewModel.callUUID.didset, v2, v1);
}

uint64_t @objc TUCallCenter.autoPunchOutBehaviorRequiredForCurrentCalls.getter(void *a1)
{
  v1 = a1;
  v2 = TUCallCenter.autoPunchOutBehaviorRequiredForCurrentCalls.getter();

  return v2 & 1;
}

uint64_t TUCallCenter.autoPunchOutBehaviorRequiredForCurrentCalls.getter()
{
  result = [v0 frontmostAudioOrVideoCall];
  if (result)
  {
    v2 = result;
    if ([v0 autoPunchOutBehaviorRequiredForFrontmostCall] && ((type metadata accessor for SpringBoardUtilities(), !static SpringBoardUtilities.checkSpringBoardState(for:)(0xD00000000000001FLL, 0x80000001BC4F4A20)) || objc_msgSend(v2, sel_isThirdPartyVideo)) && (v3 = objc_msgSend(objc_opt_self(), sel__carScreen), v2, (v2 = v3) == 0))
    {
      return 1;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t outlined bridged method (pb) of @objc TUCall.contactIdentifiers.getter(void *a1)
{
  v1 = [a1 contactIdentifiers];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t outlined bridged method (pb) of @objc TUCall.localizedLabel.getter(void *a1)
{
  v1 = [a1 localizedLabel];
  if (v1)
  {
    v2 = v1;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  return OUTLINED_FUNCTION_46();
}

uint64_t outlined bridged method (pb) of @objc TUConversationLink.displayName.getter(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (v2)
  {
    v3 = v2;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  return OUTLINED_FUNCTION_46();
}

uint64_t CallParticipantLabelDescriptor.layoutState.getter(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC15ConversationKit30CallParticipantLabelDescriptor_layoutState;
  OUTLINED_FUNCTION_19_1(a1);
  return *(v1 + v2);
}

id @objc CallParticipantLabelDescriptor.secondaryString.getter(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v3 = a3();
  if (v4)
  {
    v5 = MEMORY[0x1BFB209B0](v3);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t CallParticipantLabelDescriptor.secondaryString.getter(void *a1)
{
  OUTLINED_FUNCTION_22_2(a1);

  return OUTLINED_FUNCTION_38_2();
}

void closure #1 in VideoMessageController.init(callCenter:notificationCenter:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    VideoMessageController.updateState()();
  }
}

uint64_t @objc ConversationController.handlelocalCameraUIDDidChange(_:)(uint64_t a1, uint64_t a2, void *a3, void (*a4)(uint64_t))
{
  OUTLINED_FUNCTION_77_2();
  type metadata accessor for Notification();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_4_2();
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v4;
  v9 = OUTLINED_FUNCTION_182();
  a4(v9);

  v10 = OUTLINED_FUNCTION_162_4();
  return v11(v10);
}

void ConversationController.handleCallStatusDidChange(_:)()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_24_1();
  type metadata accessor for DispatchWorkItemFlags();
  OUTLINED_FUNCTION_2_12();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_1_7();
  type metadata accessor for DispatchQoS();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_4_2();
  Notification.object.getter();
  if (v21)
  {
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUCall, 0x1E69D8A40);
    if (OUTLINED_FUNCTION_216_4())
    {
      v3 = v24;
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
      v19 = static OS_dispatch_queue.main.getter();
      OUTLINED_FUNCTION_24();
      v4 = swift_allocObject();
      *(v4 + 16) = v3;
      *(v4 + 24) = v0;
      v22 = partial apply for closure #1 in ConversationController.handleCallStatusDidChange(_:);
      v23 = v4;
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 1107296256;
      v20[2] = thunk for @escaping @callee_guaranteed () -> ();
      v21 = &block_descriptor_321;
      v17 = _Block_copy(v20);
      v18 = v3;
      v5 = v0;

      static DispatchQoS.unspecified.getter();
      v20[0] = MEMORY[0x1E69E7CC0];
      OUTLINED_FUNCTION_3_164();
      lazy protocol witness table accessor for type ConversationController and conformance ConversationController(v6, v7);
      v8 = OUTLINED_FUNCTION_252();
      __swift_instantiateConcreteTypeFromMangledNameV2(v8, v9);
      OUTLINED_FUNCTION_9_8();
      lazy protocol witness table accessor for type NSObject.KeyValueObservingPublisher<UICollectionView, CGPoint> and conformance NSObject.KeyValueObservingPublisher<A, B>(v10, v11, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
      OUTLINED_FUNCTION_78_8();
      OUTLINED_FUNCTION_260();
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v12 = OUTLINED_FUNCTION_117();
      MEMORY[0x1BFB215C0](v12);
      _Block_release(v17);

      v13 = OUTLINED_FUNCTION_309();
      v14(v13);
      v15 = OUTLINED_FUNCTION_206();
      v16(v15);
    }
  }

  else
  {
    outlined destroy of CallControlsService?(v20, &_sypSgMd, &_sypSgMR);
  }

  OUTLINED_FUNCTION_30_0();
}

void OUTLINED_FUNCTION_204_0()
{

  JUMPOUT(0x1BFB20B10);
}

uint64_t OUTLINED_FUNCTION_204_1(uint64_t a1)
{
  *(v2 - 352) = v1;

  return Logger.logObject.getter();
}

void OUTLINED_FUNCTION_165_3()
{

  Hasher._combine(_:)(0);
}

void closure #1 in closure #1 in ConversationController.fetchExistingScreenSharingAttributes()(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (a2)
    {
      v5 = swift_unknownObjectRetain();
      ConversationController.updateRemoteScreenShareAttributesChanged(remoteAttributes:isLocallySharing:)(v5, 0);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

Swift::Void __swiftcall NameAndPhotoUtilities.handleIdsStatusChanged()()
{
  v1 = v0;
  if (one-time initialization token for conversationControls != -1)
  {
    OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
  }

  v2 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_52(v2, &static Logger.conversationControls);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    *OUTLINED_FUNCTION_33() = 0;
    OUTLINED_FUNCTION_219();
    _os_log_impl(v5, v6, v7, v8, v9, 2u);
    OUTLINED_FUNCTION_18();
  }

  v11 = NameAndPhotoUtilities.isShareNameAndPhotoAvailable(forDestinations:)(v10);

  if (v11)
  {
    v12 = *(v1 + OBJC_IVAR____TtC15ConversationKit21NameAndPhotoUtilities_queriedCallForSNAPStatus);
    if (v12)
    {
      v13 = *(v1 + OBJC_IVAR____TtC15ConversationKit21NameAndPhotoUtilities_queriedCallForSNAPStatus + 8);
      ObjectType = swift_getObjectType();
      v15 = *(v13 + 96);
      swift_unknownObjectRetain();
      if (v15(ObjectType, v13))
      {
        v16 = NameAndPhotoUtilities.checkForShouldShowOutgoingShareBanner(forCall:)(v12, v13);
        NameAndPhotoUtilities.checkBannerType(forCall:shouldShowOutgoingShareBanner:)(v13, (v16 == 2) | v16 & 1, &v23);
        if (v24[24] == 255)
        {
          swift_unknownObjectRelease();
          outlined destroy of TapInteractionHandler?(&v23, &_s15ConversationKit0A12ControlsTypeOSgMd, &_s15ConversationKit0A12ControlsTypeOSgMR);
        }

        else
        {
          v25 = v23;
          v26[0] = *v24;
          *(v26 + 9) = *&v24[9];
          v17 = v1 + OBJC_IVAR____TtC15ConversationKit21NameAndPhotoUtilities_delegate;
          OUTLINED_FUNCTION_4_0(v1 + OBJC_IVAR____TtC15ConversationKit21NameAndPhotoUtilities_delegate, v22);
          if (swift_unknownObjectWeakLoadStrong())
          {
            v18 = *(v17 + 8);
            v19 = swift_getObjectType();
            outlined init with copy of ConversationControlsType(&v25, &v23);
            v20 = *(v18 + 16);

            v20(v21, &v23, v19, v18);
            swift_unknownObjectRelease();
            swift_unknownObjectRelease();

            outlined destroy of TapInteractionHandler?(&v23, &_s15ConversationKit0A12ControlsTypeOSgMd, &_s15ConversationKit0A12ControlsTypeOSgMR);
          }

          else
          {
            swift_unknownObjectRelease();
          }

          outlined destroy of ConversationControlsType(&v25);
        }
      }

      else
      {

        swift_unknownObjectRelease();
      }
    }
  }
}

Swift::Bool __swiftcall NameAndPhotoUtilities.isShareNameAndPhotoAvailable(forDestinations:)(Swift::OpaquePointer forDestinations)
{
  isa = Array._bridgeToObjectiveC()().super.isa;
  v2 = OUTLINED_FUNCTION_205();
  v4 = [v2 v3];

  if (v4)
  {
    return 1;
  }

  v6 = Array._bridgeToObjectiveC()().super.isa;
  v7 = OUTLINED_FUNCTION_205();
  v5 = [v7 v8];

  return v5;
}

uint64_t partial apply for closure #1 in BannerPresentationManager.setupMoreMenu(with:_:)()
{
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_33_37();
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[6];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_2(v4);
  *v5 = v6;
  v5[1] = partial apply for closure #1 in HUDActivityService.stopActivity(reason:);
  v7 = OUTLINED_FUNCTION_16_2();

  return closure #1 in BannerPresentationManager.setupMoreMenu(with:_:)(v7, v8, v9, v1, v2, v3);
}

uint64_t IDSCapabilitiesChecker.handleLookupManagerDidChangeNotification(_:)()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_17();
  v8 = v6 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v47 - v10;
  v60 = type metadata accessor for IDSCapabilitiesChecker.ParticipantDestination(0);
  OUTLINED_FUNCTION_1();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_8();
  v17 = v16 - v15;
  v64 = MEMORY[0x1E69E7CD0];
  v18 = v1[6];
  v19 = *(v18 + 16);
  if (v19)
  {
    v58 = v18 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
    v49 = (v4 + 8);
    v50 = (v4 + 16);
    v61 = v18;

    v54 = 0;
    v20 = 0;
    v57 = v19;
    v48 = v19 - 1;
    v56 = xmmword_1BC4C74D0;
    v55 = xmmword_1BC4C74E0;
    v52 = v8;
    v53 = v2;
    v51 = v11;
    v59 = v13;
LABEL_3:
    v21 = v20;
    do
    {
      if (v21 >= *(v61 + 16))
      {
        __break(1u);
        goto LABEL_29;
      }

      _s15ConversationKit11ParticipantVWOcTm_5(v58 + *(v13 + 72) * v21, v17, type metadata accessor for IDSCapabilitiesChecker.ParticipantDestination);
      v22 = v1[10];
      v23 = v1[11];
      __swift_project_boxed_opaque_existential_1(v1 + 7, v22);
      v24 = (*(v23 + 16))(*(v17 + *(v60 + 20)), *(v17 + *(v60 + 20) + 8), v22, v23);
      v25 = v24;
      if (v24 != 3)
      {
        v26 = v24;
        if (*((*(*v1 + 120))() + 16) && (specialized __RawDictionaryStorage.find<A>(_:)(), (v27 & 1) != 0))
        {
          OUTLINED_FUNCTION_20_22();
          v30 = v28 | (v29 << 32);

          if (v25 == 2)
          {
            if (v30 != 2)
            {
              goto LABEL_18;
            }
          }

          else if (v30 == 2 || (v32 = vdupq_n_s64(v26), v33 = vdupq_n_s64(v30), (vminv_u16(vcltz_s16(vshl_n_s16(vmovn_s32(vmvnq_s8(veorq_s8(vuzp1q_s32(vceqzq_s64(vandq_s8(v32, v56)), vceqzq_s64(vandq_s8(v32, v55))), vuzp1q_s32(vceqzq_s64(vandq_s8(v33, v56)), vceqzq_s64(vandq_s8(v33, v55)))))), 0xFuLL))) & 1) == 0) || ((v26 ^ v30) & 1) != 0 || ((v26 >> 40) & 1) == ((v30 & 0x10000000000) == 0))
          {
LABEL_18:
            swift_beginAccess();
            swift_isUniquelyReferenced_nonNull_native();
            v62 = v1[2];
            specialized _NativeDictionary.setValue(_:forKey:isUnique:)();
            v1[2] = v62;
            swift_endAccess();
            swift_beginAccess();
            swift_isUniquelyReferenced_nonNull_native();
            v62 = v1[3];
            specialized _NativeDictionary.setValue(_:forKey:isUnique:)();
            v1[3] = v62;
            swift_endAccess();
            v34 = v53;
            (*v50)(v52, v17, v53);
            v35 = v51;
            specialized Set._Variant.insert(_:)();
            (*v49)(v35, v34);
            OUTLINED_FUNCTION_3_73();
            _s15ConversationKit11ParticipantVWOhTm_7(v17, v36);
            v20 = v21 + 1;
            v54 = 1;
            v13 = v59;
            if (v48 != v21)
            {
              goto LABEL_3;
            }

LABEL_21:
            if ((*(*v1 + 168))(v37))
            {
              swift_getObjectType();
              v38 = OUTLINED_FUNCTION_29_6();
              v39(v38);

              swift_unknownObjectRelease();
            }

            else
            {
            }

            if (one-time initialization token for conversationKit == -1)
            {
LABEL_26:
              v40 = static OS_os_log.conversationKit;
              __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
              v41 = swift_allocObject();
              *(v41 + 16) = xmmword_1BC4BA940;
              v63 = (*(*v1 + 120))();
              __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDy10Foundation4UUIDV15ConversationKit22IDSCapabilitiesCheckerC12CapabilitiesOGMd, &_sSDy10Foundation4UUIDV15ConversationKit22IDSCapabilitiesCheckerC12CapabilitiesOGMR);
              v42 = String.init<A>(reflecting:)();
              v44 = v43;
              *(v41 + 56) = MEMORY[0x1E69E6158];
              *(v41 + 64) = lazy protocol witness table accessor for type String and conformance String();
              *(v41 + 32) = v42;
              *(v41 + 40) = v44;
              v45 = static os_log_type_t.default.getter();
              os_log(_:dso:log:type:_:)("Updated IDS capabilities: %@", 28, 2, &dword_1BBC58000, v40, v45, v41);
            }

LABEL_29:
            OUTLINED_FUNCTION_0_6(&one-time initialization token for conversationKit);
            goto LABEL_26;
          }
        }

        else
        {
        }
      }

      ++v21;
      OUTLINED_FUNCTION_3_73();
      _s15ConversationKit11ParticipantVWOhTm_7(v17, v31);
      v13 = v59;
    }

    while (v57 != v21);

    if (v54)
    {
      goto LABEL_21;
    }
  }
}

uint64_t closure #1 in BannerPresentationManager.setupMoreMenu(with:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[48] = a5;
  v6[49] = a6;
  v6[47] = a4;
  type metadata accessor for MainActor();
  v6[50] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #1 in BannerPresentationManager.setupMoreMenu(with:_:), v8, v7);
}

uint64_t closure #1 in BannerPresentationManager.setupMoreMenu(with:_:)()
{
  v47 = v0;
  v1 = *(v0 + 376);

  objc_opt_self();
  OUTLINED_FUNCTION_170();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    v3 = v2;
    v4 = *(v0 + 384);
    v5 = *(v0 + 392);
    v45 = 0;
    v6 = objc_opt_self();
    swift_unknownObjectRetain_n();
    v7 = [v6 sharedInstance];
    v8 = OUTLINED_FUNCTION_24_1();
    v9 = type metadata accessor for ShareActivitiesMoreMenuViewModel(v8);
    OUTLINED_FUNCTION_84(v9);
    v10 = v5;
    v44 = ShareActivitiesMoreMenuViewModel.init(call:controlsManager:menuType:callCenter:)(v3, v10, &v45, v1);
    v46 = 1;
    swift_unknownObjectRetain();
    v11 = [v6 sharedInstance];
    swift_allocObject();
    v12 = ShareActivitiesMoreMenuViewModel.init(call:controlsManager:menuType:callCenter:)(v3, v10, &v46, v11);
    type metadata accessor for FTMenuItemRegistry();
    v43 = static FTMenuItemRegistry.shared.getter();
    ObjectType = swift_getObjectType();
    (*(v4 + 224))(ObjectType, v4);
    *(v0 + 176) = 0u;
    *(v0 + 32) = 0u;
    *(v0 + 48) = 0;
    *(v0 + 16) = 0u;
    *(v0 + 72) = 0u;
    *(v0 + 88) = 0;
    *(v0 + 56) = 0u;
    *(v0 + 112) = 0u;
    *(v0 + 128) = 0;
    *(v0 + 96) = 0u;
    *(v0 + 152) = 0u;
    *(v0 + 168) = 0;
    *(v0 + 136) = 0u;
    *(v0 + 192) = 0u;
    *(v0 + 208) = 0;
    *(v0 + 232) = 0u;
    *(v0 + 248) = 0;
    *(v0 + 216) = 0u;
    *(v0 + 280) = v9;
    v14 = _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_6(&lazy protocol witness table cache variable for type ShareActivitiesMoreMenuViewModel and conformance ShareActivitiesMoreMenuViewModel, type metadata accessor for ShareActivitiesMoreMenuViewModel);
    *(v0 + 256) = v44;
    *(v0 + 320) = v9;
    *(v0 + 328) = v14;
    *(v0 + 288) = v14;
    *(v0 + 296) = v12;
    *(v0 + 336) = 0u;
    *(v0 + 352) = 0u;
    *(v0 + 368) = 0;

    FTMenuItemRegistry.register(with:punchOutProvider:callRecording:deskView:routes:liveCaptions:liveTranslation:screenShare:sharePlay:splitCalls:conferenceParticipants:)();

    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_14_37();
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v15, v16, v17);
    OUTLINED_FUNCTION_14_37();
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v18, v19, v20);
    OUTLINED_FUNCTION_14_37();
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v21, v22, v23);
    v24 = OUTLINED_FUNCTION_46();
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v24, v25, &_s20CommunicationsUICore18FTMenuItemProvider_pSgMR);
    OUTLINED_FUNCTION_14_37();
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v26, v27, v28);
    OUTLINED_FUNCTION_14_37();
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v29, v30, v31);
    OUTLINED_FUNCTION_14_37();
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v32, v33, v34);
    OUTLINED_FUNCTION_14_37();
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v35, v36, v37);
    OUTLINED_FUNCTION_14_37();
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v38, v39, v40);
  }

  OUTLINED_FUNCTION_13();

  return v41();
}

uint64_t type metadata accessor for ShareActivitiesMoreMenuViewModel(uint64_t a1)
{
  result = type metadata singleton initialization cache for ShareActivitiesMoreMenuViewModel;
  if (!type metadata singleton initialization cache for ShareActivitiesMoreMenuViewModel)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ShareActivitiesMoreMenuViewModel.init(call:controlsManager:menuType:callCenter:)(void *a1, void *a2, char *a3, void *a4)
{
  v5 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20CommunicationsUICore10FTMenuItemC30SecondaryViewPresentationStyleO012presentationH0_yyc09evaluatedF0tSgMd, &_s20CommunicationsUICore10FTMenuItemC30SecondaryViewPresentationStyleO012presentationH0_yyc09evaluatedF0tSgMR);
  v11 = OUTLINED_FUNCTION_22(v10);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v25 - v12;
  v14 = *a3;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *(v5 + 48) = [objc_allocWithZone(MEMORY[0x1E69D8BE8]) init];
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v15 = static ScreenSharingInteractionController.shared;
  *(v5 + 64) = static ScreenSharingInteractionController.shared;
  v16 = v15;
  Logger.init(subsystem:category:)();
  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakAssign();
  *(v5 + 32) = a4;
  *(v5 + 40) = v14;
  type metadata accessor for FTMenuItem();
  v17 = a4;
  OUTLINED_FUNCTION_17_32();
  if (v14)
  {
    v18 = static FTMenuItem.sharePlayRow(isSessionActive:rowAction:stopAction:)();
    v19 = MEMORY[0x1E6995D80];
  }

  else
  {
    v18 = static FTMenuItem.screenSharingRow(isSessionActive:rowAction:stopAction:)();
    v19 = MEMORY[0x1E6995D88];
  }

  *(v5 + 56) = v18;
  OUTLINED_FUNCTION_20();
  swift_allocObject();
  swift_weakInit();

  dispatch thunk of FTMenuItem.stopAction.setter();

  type metadata accessor for FTMenuItem.SecondaryViewPresentationStyle();
  OUTLINED_FUNCTION_7_0();
  (*(v20 + 104))(v13, *v19);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20CommunicationsUICore10FTMenuItemC30SecondaryViewPresentationStyleO012presentationH0_yyc09evaluatedF0tMd, &_s20CommunicationsUICore10FTMenuItemC30SecondaryViewPresentationStyleO012presentationH0_yyc09evaluatedF0tMR);
  v22 = &v13[*(v21 + 48)];
  OUTLINED_FUNCTION_20();
  v23 = swift_allocObject();
  swift_weakInit();

  *v22 = partial apply for closure #2 in ShareActivitiesMoreMenuViewModel.init(call:controlsManager:menuType:callCenter:);
  v22[1] = v23;
  __swift_storeEnumTagSinglePayload(v13, 0, 1, v21);

  dispatch thunk of FTMenuItem.secondaryView.setter();

  return v5;
}

uint64_t sub_1BBCCB4C0()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_20();

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in HUDActivityService.stopActivity(reason:)()
{

  OUTLINED_FUNCTION_13();

  return v0();
}

{
  OUTLINED_FUNCTION_9();
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_92(v3);
  *v4 = v5;
  v4[1] = partial apply for closure #1 in HUDActivityService.stopActivity(reason:);
  v6 = OUTLINED_FUNCTION_44_0();

  return closure #1 in HUDActivityService.stopActivity(reason:)(v6, v7, v1, v2);
}

void closure #4 in WaitOnHoldService.init()(void **a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = OBJC_IVAR____TtC15ConversationKit17WaitOnHoldService_call;
    v6 = *&Strong[OBJC_IVAR____TtC15ConversationKit17WaitOnHoldService_call];
    if (v6 && v2)
    {
      v7 = v6;
      v8 = v2;
      v9 = [v8 callUUID];
      v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v12 = v11;

      v13 = [v7 callUUID];
      v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v16 = v15;

      if (v10 == v14 && v12 == v16)
      {
      }

      else
      {
        v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v18 & 1) == 0)
        {

          return;
        }
      }

      if ([v8 status] != 1)
      {
        WaitOnHoldService.stopActivity()();
      }

      v19 = [v8 status];
      if (v19 == 6)
      {
        v20 = *&v4[v5];
        *&v4[v5] = 0;

        *&v4[OBJC_IVAR____TtC15ConversationKit17WaitOnHoldService_waitOnHoldStatusMessageService] = 0;

        v21 = OBJC_IVAR____TtC15ConversationKit17WaitOnHoldService_statusMessageTask;
        if (*&v4[OBJC_IVAR____TtC15ConversationKit17WaitOnHoldService_statusMessageTask])
        {

          MEMORY[0x1BFB21000](v22, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7410]);
        }

        *&v4[v21] = 0;

        v23 = &v4[OBJC_IVAR____TtC15ConversationKit17WaitOnHoldService_hasStartedInitialHoldDetectionCallUUID];
        *v23 = 0;
        *(v23 + 1) = 0;
      }

      else
      {
        if (v19 == 1)
        {
          WaitOnHoldService.beginInitialHoldDetectionForCallIfNeeded()();
        }
      }
    }

    else
    {
    }
  }
}

void partial apply for closure #1 in BannerPresentationManager.handleCallStatusDidChange(_:)()
{
  v1 = type metadata accessor for Notification();
  OUTLINED_FUNCTION_22(v1);
  v3 = *(v0 + 16);
  v4 = v0 + ((*(v2 + 80) + 24) & ~*(v2 + 80));

  closure #1 in BannerPresentationManager.handleCallStatusDidChange(_:)(v3, v4);
}

void closure #1 in BannerPresentationManager.handleCallStatusDidChange(_:)(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v83 - v4;
  v6 = type metadata accessor for Notification();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v83 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v11 = Strong;
  Notification.object.getter();
  if (!v84[3])
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v84, &_sypSgMd, &_sypSgMR);
    goto LABEL_21;
  }

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUCall, 0x1E69D8A40);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_21:
    if (one-time initialization token for banners != -1)
    {
      swift_once();
    }

    v51 = type metadata accessor for Logger();
    __swift_project_value_buffer(v51, static Logger.banners);
    (*(v7 + 16))(v9, a2, v6);
    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v84[0] = v55;
      *v54 = 136315138;
      _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_6(&lazy protocol witness table cache variable for type Notification and conformance Notification, MEMORY[0x1E6968160]);
      v56 = dispatch thunk of CustomStringConvertible.description.getter();
      v58 = v57;
      (*(v7 + 8))(v9, v6);
      v59 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v56, v58, v84);

      *(v54 + 4) = v59;
      _os_log_impl(&dword_1BBC58000, v52, v53, "handleCallStatusDidChange: notification didn't include a call object: %s", v54, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v55);
      MEMORY[0x1BFB23DF0](v55, -1, -1);
      MEMORY[0x1BFB23DF0](v54, -1, -1);
    }

    else
    {

      (*(v7 + 8))(v9, v6);
    }

    return;
  }

  v12 = v86;
  if (one-time initialization token for banners != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  v14 = __swift_project_value_buffer(v13, static Logger.banners);
  v15 = v12;
  v83[1] = v14;
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v84[0] = v20;
    *v18 = 136315394;
    LODWORD(v86) = [v15 status];
    type metadata accessor for TUCallStatus(0);
    v21 = String.init<A>(describing:)();
    v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, v84);

    *(v18 + 4) = v23;
    *(v18 + 12) = 2112;
    *(v18 + 14) = v15;
    *v19 = v15;
    v24 = v15;
    _os_log_impl(&dword_1BBC58000, v16, v17, "handleCallStatusDidChange, status:%s for call:%@", v18, 0x16u);
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v19, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1BFB23DF0](v19, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v20);
    MEMORY[0x1BFB23DF0](v20, -1, -1);
    MEMORY[0x1BFB23DF0](v18, -1, -1);
  }

  v25 = *(v11 + OBJC_IVAR____TtC15ConversationKit25BannerPresentationManager_incomingCallActivity);
  v26 = MEMORY[0x1E69E7D40];
  v27 = MEMORY[0x1E69E85E0];
  if (v25)
  {
    v28 = *((*MEMORY[0x1E69E7D40] & *v11) + 0x188);

    v30 = v28(v29);
    if (!v30 || (v31 = v30, v32 = [v30 status], v31, v32 != 4))
    {
      v33 = type metadata accessor for TaskPriority();
      __swift_storeEnumTagSinglePayload(v5, 1, 1, v33);
      type metadata accessor for MainActor();

      v34 = v11;
      v35 = static MainActor.shared.getter();
      v36 = swift_allocObject();
      v36[2] = v35;
      v36[3] = v27;
      v36[4] = v25;
      v36[5] = v34;
      _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5();
    }
  }

  v37 = *(v11 + OBJC_IVAR____TtC15ConversationKit25BannerPresentationManager_waitOnHoldHUDActivity);
  if (v37)
  {
    v38 = *((*v26 & *v11) + 0x188);

    v40 = v38(v39);
    if (!v40 || (v41 = v40, v42 = [v40 isWaitOnHoldActive], v41, (v42 & 1) == 0))
    {
      v43 = type metadata accessor for TaskPriority();
      __swift_storeEnumTagSinglePayload(v5, 1, 1, v43);
      type metadata accessor for MainActor();
      v44 = v11;

      v45 = static MainActor.shared.getter();
      v46 = swift_allocObject();
      v46[2] = v45;
      v46[3] = v27;
      v46[4] = v37;
      v46[5] = v44;
      _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5();
    }
  }

  v47 = BannerPresentationManager.shouldPresentHandoffCompletedBanner(for:)(v15);
  v48 = v47;
  if (v47)
  {
    v49 = *((*v26 & *v11) + 0x178);
    v50 = v15;
    v47 = v49(v15);
  }

  v60 = *((*v26 & *v11) + 0x1D8);

  if (v48)
  {
    v61 = v15;
    v62 = Logger.logObject.getter();
    v63 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      *v64 = 138412290;
      *(v64 + 4) = v61;
      *v65 = v61;
      v66 = v61;
      _os_log_impl(&dword_1BBC58000, v62, v63, "handleCallStatusDidChange: showing handoff continued session banner for call: %@", v64, 0xCu);
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v65, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x1BFB23DF0](v65, -1, -1);
      MEMORY[0x1BFB23DF0](v64, -1, -1);
    }

    v84[0] = outlined bridged method (pb) of @objc BannerPresentationManager.inCallSceneSessionIdentifier.getter(v61, &selRef_localizedHandoffRecipientDeviceCategory);
    v84[1] = v67;
    v85 = 2;
    swift_allocObject();
    swift_unknownObjectWeakInit();

    BannerPresentationManager.presentBanner(as:type:reply:)();

    outlined destroy of ConversationControlsType(v84);
  }

  v68 = OBJC_IVAR____TtC15ConversationKit25BannerPresentationManager_shouldRequestHUDPresentationOnAVUpgradeOrDowngrade;
  if (*(v11 + OBJC_IVAR____TtC15ConversationKit25BannerPresentationManager_shouldRequestHUDPresentationOnAVUpgradeOrDowngrade) == 1 && ([v15 status] == 1 || objc_msgSend(v15, sel_status) == 6))
  {
    *(v11 + v68) = 0;
    BannerPresentationManager.presentSystemHUD()();
  }

  v69 = v60();
  if (v69)
  {
    v70 = v69;
    v71 = (*((*v26 & *v69) + 0x2B0))();

    v72 = v71 & 1;
  }

  else
  {
    v72 = 2;
  }

  BannerPresentationManager.previouslyHadMultipleCalls.setter(v72);
  v73 = [objc_allocWithZone(MEMORY[0x1E69D8BE8]) init];
  v74 = [v73 uplevelFTAEnabled];

  if (v74)
  {
    v75 = OBJC_IVAR____TtC15ConversationKit25BannerPresentationManager_callCenter;
    v76 = [*(v11 + OBJC_IVAR____TtC15ConversationKit25BannerPresentationManager_callCenter) pendingUpgradeCall];
    if (v76 && (v76, !*(v11 + OBJC_IVAR____TtC15ConversationKit25BannerPresentationManager_videoUpgradeRequestActivity)))
    {
      BannerPresentationManager.showVideoUpgradeRequest()();
    }

    else
    {
      v77 = [*(v11 + v75) pendingUpgradeCall];
      if (v77)
      {
        v78 = v77;

        return;
      }

      v79 = OBJC_IVAR____TtC15ConversationKit25BannerPresentationManager_videoUpgradeRequestActivity;
      v80 = *(v11 + OBJC_IVAR____TtC15ConversationKit25BannerPresentationManager_videoUpgradeRequestActivity);
      if (v80)
      {
        v81 = *(*v80 + 304);

        v81(v82);

        *(v11 + v79) = 0;

        return;
      }
    }
  }
}

id BannerPresentationManager.shouldPresentHandoffCompletedBanner(for:)(void *a1)
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  if (((*(*static Defaults.shared + 608))() & 1) == 0 || [a1 status] != 6 || objc_msgSend(a1, sel_disconnectedReason) != 7)
  {
    return 0;
  }

  v2 = [a1 provider];
  v3 = [v2 isFaceTimeProvider];

  return v3;
}

BOOL TUCallCenter.hasMultipleActiveCalls.getter()
{
  if ([v0 hasCurrentVideoCalls])
  {
    goto LABEL_16;
  }

  v1 = [v0 currentCallGroups];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUCallGroup, 0x1E69D8A70);
  static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v2 = specialized Array.count.getter();

  if (v2 != 1)
  {
    goto LABEL_16;
  }

  v3 = [v0 currentCallGroups];
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!specialized Array.count.getter())
  {

LABEL_16:
    v13 = [v0 currentCallGroups];
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUCallGroup, 0x1E69D8A70);
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v14 = specialized Array.count.getter();

    v15 = [v0 currentVideoCallCount];
    if (!__OFADD__(v14, v15))
    {
      v16 = v15 + v14 <= 1;
      return !v16;
    }

LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v4 & 0xC000000000000001) == 0, v4);
  if ((v4 & 0xC000000000000001) == 0)
  {
    v5 = *(v4 + 32);
    goto LABEL_6;
  }

LABEL_29:
  v5 = MEMORY[0x1BFB22010](0, v4);
LABEL_6:
  v6 = v5;

  v7 = [v6 calls];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUCall, 0x1E69D8A40);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v8 = specialized Array.count.getter();
  for (i = 0; v8 != i; ++i)
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x1BFB22010](i, v4);
    }

    else
    {
      if (i >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_27;
      }

      v10 = *(v4 + 8 * i + 32);
    }

    v11 = v10;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    v12 = [v10 wantsHoldMusic];

    if (v12)
    {

      return 0;
    }
  }

  if ([v6 status] == 1 || objc_msgSend(v6, sel_status) == 2)
  {
    v18 = [v6 calls];
    static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v19 = specialized Array.count.getter();

    v16 = v19 <= 1;
    return !v16;
  }

  return 0;
}

void BannerPresentationManager.previouslyHadMultipleCalls.didset(int a1)
{
  v3 = MEMORY[0x1E69E7D40];
  v4 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x1D8))();
  if (!v4)
  {
    return;
  }

  v5 = *(v1 + OBJC_IVAR____TtC15ConversationKit25BannerPresentationManager_previouslyHadMultipleCalls);
  if (v5 == 2)
  {
    if (a1 == 2)
    {
      goto LABEL_9;
    }

LABEL_7:
    v14 = v4;
    v6 = (*((*v3 & *v4) + 0x2A0))();
    ConversationControlsManager.controlsHUDUpdate(for:)(v6, v7, v8, v9, v10, v11, v12, v13, v14, v16[0], v16[1], v16[2], v16[3], v16[4], v16[5], v16[6], v16[7], v16[8], v16[9], v16[10]);
    swift_unknownObjectRelease();
    BannerPresentationManager.updatePresentedHUD(type:replacingNotice:)();

    outlined destroy of ConversationControlsType(v16);
    return;
  }

  if (a1 == 2 || ((v5 ^ a1) & 1) != 0)
  {
    goto LABEL_7;
  }

LABEL_9:
}

void BannerPresentationManager.previouslyHadMultipleCalls.setter(char a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC15ConversationKit25BannerPresentationManager_previouslyHadMultipleCalls);
  *(v1 + OBJC_IVAR____TtC15ConversationKit25BannerPresentationManager_previouslyHadMultipleCalls) = a1;
  BannerPresentationManager.previouslyHadMultipleCalls.didset(v2);
}

uint64_t CallStatusService.currentStatus(updateSource:for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  Features.receptionistEnabled.getter();
  v7 = *(v4 + OBJC_IVAR____TtC15ConversationKit17CallStatusService_callCenter);
  v8 = MEMORY[0x1BFB209B0](a3, a4);
  v9 = [v7 callWithCallUUID_];

  if (v9)
  {
    v19[3] = &type metadata for CallCenterCall;
    v19[4] = lazy protocol witness table accessor for type CallCenterCall and conformance CallCenterCall();
    v19[0] = v9;
    v10 = v9;
    v11 = OUTLINED_FUNCTION_45_1();
    callStatus(updateSource:for:)(v11, v12, v13, v14);

    return __swift_destroy_boxed_opaque_existential_1(v19);
  }

  else
  {
    v16 = OUTLINED_FUNCTION_45_1();

    return static AnsweringMachineCallStatus.notFound(updateSource:callUUID:)(v16, v17, a3, a4, v18);
  }
}

uint64_t closure #1 in closure #1 in closure #1 in CallStatusService.init(logger:notificationCenter:callServices:callCenter:)()
{
  v31 = v0;
  v1 = v0[13];
  v2 = v0[12];
  v3 = v0[8];
  v27 = v0[11];
  v5 = v0[5];
  v4 = v0[6];
  v6 = v0[3];
  v7 = v0[4];

  CallStatusService.currentStatus(updateSource:for:)(v6, v7, v5, v4);
  outlined init with copy of AnsweringMachineCallStatus(v3, v2);
  outlined init with copy of AnsweringMachineCallStatus(v1, v27);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  v10 = os_log_type_enabled(v8, v9);
  v12 = v0[11];
  v11 = v0[12];
  if (v10)
  {
    v28 = v0[9];
    v29 = v0[10];
    v13 = v0[3];
    v14 = v0[4];
    v15 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v15 = 136446978;
    *(v15 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v30);
    *(v15 + 12) = 2082;
    v16 = AnsweringMachineCallStatus.description.getter();
    v18 = v17;
    outlined destroy of AnsweringMachineCallStatus(v11);
    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v18, &v30);

    *(v15 + 14) = v19;
    *(v15 + 22) = 2082;
    v20 = AnsweringMachineCallStatus.description.getter();
    v22 = v21;
    outlined destroy of AnsweringMachineCallStatus(v12);
    v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v22, &v30);

    *(v15 + 24) = v23;
    *(v15 + 32) = 2082;
    *(v15 + 34) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v29, &v30);
    _os_log_impl(&dword_1BBC58000, v8, v9, "CallStatusService: recieved notification from source %{public}s for status: %{public}s, fetched new Status to send: %{public}s \n call: %{public}s", v15, 0x2Au);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_27();
  }

  else
  {

    outlined destroy of AnsweringMachineCallStatus(v12);
    outlined destroy of AnsweringMachineCallStatus(v11);
  }

  v24 = v0[13];
  PassthroughSubject.send(_:)();
  outlined destroy of AnsweringMachineCallStatus(v24);

  v25 = v0[1];

  return v25();
}

uint64_t static AnsweringMachineCallStatus.notFound(updateSource:callUUID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for AnsweringMachineCallStatus(0);
  v11 = v10[7];
  v12 = *MEMORY[0x1E6995E98];
  type metadata accessor for CallScreeningStatus();
  OUTLINED_FUNCTION_7_0();
  (*(v13 + 104))(a5 + v11, v12);
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
  *(a5 + 32) = 6;
  *(a5 + v10[8]) = 0;
  *(a5 + v10[9]) = 0;
  *(a5 + v10[10]) = 0;
  *(a5 + v10[11]) = 0;
}

uint64_t AnsweringMachineCallStatus.description.getter()
{
  v1 = v0;
  _StringGuts.grow(_:)(203);
  OUTLINED_FUNCTION_2_67();
  MEMORY[0x1BFB20B10]();
  MEMORY[0x1BFB20B10](*v1, v1[1]);
  MEMORY[0x1BFB20B10](0x55556C6C6163202CLL, 0xEC000000203A4449);
  MEMORY[0x1BFB20B10](v1[2], v1[3]);
  MEMORY[0x1BFB20B10](0x737574617473202CLL, 0xEA0000000000203ALL);
  v2 = CallStatus.description.getter(*(v0 + 32));
  MEMORY[0x1BFB20B10](v2);

  OUTLINED_FUNCTION_2_67();
  MEMORY[0x1BFB20B10](0xD000000000000013);
  v3 = type metadata accessor for AnsweringMachineCallStatus(0);
  type metadata accessor for CallScreeningStatus();
  lazy protocol witness table accessor for type CallScreeningStatus and conformance CallScreeningStatus();
  v4 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1BFB20B10](v4);

  OUTLINED_FUNCTION_2_67();
  MEMORY[0x1BFB20B10]();
  if (*(v0 + v3[8]))
  {
    v5 = 1702195828;
  }

  else
  {
    v5 = 0x65736C6166;
  }

  if (*(v0 + v3[8]))
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  MEMORY[0x1BFB20B10](v5, v6);

  OUTLINED_FUNCTION_2_67();
  MEMORY[0x1BFB20B10]();
  if (*(v0 + v3[9]))
  {
    v7 = 1702195828;
  }

  else
  {
    v7 = 0x65736C6166;
  }

  if (*(v0 + v3[9]))
  {
    v8 = 0xE400000000000000;
  }

  else
  {
    v8 = 0xE500000000000000;
  }

  MEMORY[0x1BFB20B10](v7, v8);

  MEMORY[0x1BFB20B10](0x6D6165727473202CLL, 0xEF203A6E656B6F54);
  v9 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1BFB20B10](v9);

  OUTLINED_FUNCTION_2_67();
  MEMORY[0x1BFB20B10]();
  if (*(v0 + v3[11]))
  {
    v10 = 1702195828;
  }

  else
  {
    v10 = 0x65736C6166;
  }

  if (*(v0 + v3[11]))
  {
    v11 = 0xE400000000000000;
  }

  else
  {
    v11 = 0xE500000000000000;
  }

  MEMORY[0x1BFB20B10](v10, v11);

  return 0;
}

uint64_t CallStatus.description.getter(char a1)
{
  result = 1701602409;
  switch(a1)
  {
    case 1:
      result = 0x657669746361;
      break;
    case 2:
      result = 1684825448;
      break;
    case 3:
      v3 = 1684956531;
      goto LABEL_6;
    case 4:
      v3 = 1735289202;
LABEL_6:
      result = v3 | 0x676E6900000000;
      break;
    case 5:
    case 6:
      result = 0x656E6E6F63736964;
      break;
    default:
      return result;
  }

  return result;
}