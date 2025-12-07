uint64_t partial apply for closure #1 in AnyGroupActivity.tuConversationActivity.getter(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v6 = *(type metadata accessor for AnyGroupActivity(0) - 8);
  v7 = v3 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return a3(a1, a2, v7);
}

uint64_t partial apply for closure #1 in closure #1 in AnyGroupActivity.tuConversationActivity<A>(as:)(id *a1)
{
  v3 = *(v1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v4 = *(type metadata accessor for CheckedContinuation() - 8);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));

  return closure #1 in closure #1 in AnyGroupActivity.tuConversationActivity<A>(as:)(a1, v5, v6, v3);
}

uint64_t partial apply for closure #2 in closure #1 in AnyGroupActivity.tuConversationActivity<A>(as:)(id *a1)
{
  v3 = *(v1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v4 = *(type metadata accessor for CheckedContinuation() - 8);
  v5 = v1 + ((*(v4 + 80) + 24) & ~*(v4 + 80));

  return closure #2 in closure #1 in AnyGroupActivity.tuConversationActivity<A>(as:)(a1, v5, v3);
}

unint64_t type metadata accessor for TUConversationActivity()
{
  result = lazy cache variable for type metadata for TUConversationActivity;
  if (!lazy cache variable for type metadata for TUConversationActivity)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for TUConversationActivity);
  }

  return result;
}

uint64_t partial apply for closure #1 in closure #1 in AnyGroupActivity.metadata.getter(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy15GroupActivities0A16ActivityMetadataVs5NeverOGMd, &_sScCy15GroupActivities0A16ActivityMetadataVs5NeverOGMR);

  return closure #1 in closure #1 in AnyGroupActivity.metadata.getter(a1);
}

uint64_t lazy protocol witness table accessor for type Future<TUConversationActivity, Error> and conformance Future<A, B>(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed Result<TUConversationActivity, Error>) -> ()(uint64_t a1, char a2)
{
  v3 = *(v2 + 16);
  v5 = a1;
  v6 = a2 & 1;
  return v3(&v5);
}

void partial apply for closure #1 in closure #1 in AnyGroupActivity.tuConversationActivity.getter(uint64_t a1)
{
  v3 = *(type metadata accessor for AnyGroupActivity(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  closure #1 in closure #1 in AnyGroupActivity.tuConversationActivity.getter(a1, (v1 + v4), v5);
}

uint64_t partial apply for specialized closure #1 in closure #1 in GroupActivity.awaitMetadataValue()(uint64_t a1)
{
  type metadata accessor for AnyGroupActivity(0);
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = protocol witness for AnyTransportSession.removeAttachment(id:) in conformance GroupSession<A>;

  return specialized closure #1 in closure #1 in GroupActivity.awaitMetadataValue()(a1, v4, v5, v6, v7);
}

uint64_t PresenceGroupSessionProviderObserver.groupSessionService.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*PresenceGroupSessionProviderObserver.groupSessionService.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return PresenceGroupSessionProviderObserver.groupSessionService.modify;
}

void PresenceGroupSessionProviderObserver.groupSessionService.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + 24) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t PresenceGroupSessionProviderObserver.cancellables.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 56) = a1;
}

void *PresenceGroupSessionProviderObserver.__allocating_init(provider:groupSessionService:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  v8[3] = 0;
  swift_unknownObjectWeakInit();
  v8[7] = MEMORY[0x1E69E7CD0];
  v8[4] = a1;
  v8[5] = a2;
  swift_beginAccess();
  v8[3] = a4;
  swift_unknownObjectWeakAssign();
  type metadata accessor for PresenceSession(0);
  v9 = swift_allocObject();
  ObjectType = swift_getObjectType();
  v11 = swift_unknownObjectRetain();
  v12 = specialized PresenceSession.init(provider:serviceProvider:)(v11, a2, a3, v9, ObjectType, a4);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v8[6] = v12;
  return v8;
}

void *PresenceGroupSessionProviderObserver.init(provider:groupSessionService:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = 0;
  swift_unknownObjectWeakInit();
  v4[7] = MEMORY[0x1E69E7CD0];
  v4[4] = a1;
  v4[5] = a2;
  swift_beginAccess();
  v4[3] = a4;
  swift_unknownObjectWeakAssign();
  type metadata accessor for PresenceSession(0);
  v9 = swift_allocObject();
  ObjectType = swift_getObjectType();
  v11 = swift_unknownObjectRetain();
  v12 = specialized PresenceSession.init(provider:serviceProvider:)(v11, a2, a3, v9, ObjectType, a4);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v4[6] = v12;
  return v4;
}

uint64_t PresenceGroupSessionProviderObserver.join()()
{
  v1[14] = v0;
  v1[15] = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v1[16] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](PresenceGroupSessionProviderObserver.join(), 0, 0);
}

{
  v27 = v0;
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[14];
  v24 = *(*v3 + 152);
  v4 = v24(v0 + 2);
  v6 = v5;

  *v6 = MEMORY[0x1E69E7CD0];
  v4(v0 + 2, 0);
  v7 = type metadata accessor for TaskPriority();
  v23 = *(*(v7 - 8) + 56);
  v8 = v23(v1, 1, 1, v7);
  v9 = v3[6];
  v10 = (*(*v9 + 272))(v8);
  v11 = swift_allocObject();
  swift_weakInit();
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = v10;
  v12[5] = v11;
  v12[6] = v2;
  v0[17] = _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v1, &async function pointer to partial apply for closure #1 in PresenceGroupSessionProviderObserver.join(), v12);
  type metadata accessor for AnyCancellable();
  swift_allocObject();

  v13 = AnyCancellable.init(_:)();
  v14 = v24(v0 + 6);
  specialized Set._Variant.insert(_:)(&v26, v13);

  v14(v0 + 6, 0);
  v15 = v23(v1, 1, 1, v7);
  v16 = (*(*v9 + 184))(v15);
  v17 = swift_allocObject();
  swift_weakInit();
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = v16;
  v18[5] = v17;
  v0[18] = _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v1, &async function pointer to partial apply for closure #3 in PresenceGroupSessionProviderObserver.join(), v18);
  swift_allocObject();

  v19 = AnyCancellable.init(_:)();
  v20 = v24(v0 + 10);
  specialized Set._Variant.insert(_:)(&v26, v19);

  v20(v0 + 10, 0);
  v25 = (*(*v9 + 360) + **(*v9 + 360));
  v21 = swift_task_alloc();
  v0[19] = v21;
  *v21 = v0;
  v21[1] = PresenceGroupSessionProviderObserver.join();

  return v25();
}

{
  *(*v1 + 160) = v0;

  if (v0)
  {
    v2 = PresenceGroupSessionProviderObserver.join();
  }

  else
  {
    v2 = PresenceGroupSessionProviderObserver.join();
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t closure #1 in PresenceGroupSessionProviderObserver.join()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[70] = a5;
  v5[69] = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherVyAA19CurrentValueSubjectCy15GroupActivities19PresenceSessionInfoVs5NeverOGGMd, &_s7Combine14AsyncPublisherVyAA19CurrentValueSubjectCy15GroupActivities19PresenceSessionInfoVs5NeverOGGMR);
  v5[71] = v6;
  v5[72] = *(v6 - 8);
  v5[73] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherV8IteratorVyAA19CurrentValueSubjectCy15GroupActivities19PresenceSessionInfoVs5NeverOG_GMd, &_s7Combine14AsyncPublisherV8IteratorVyAA19CurrentValueSubjectCy15GroupActivities19PresenceSessionInfoVs5NeverOG_GMR);
  v5[74] = v7;
  v5[75] = *(v7 - 8);
  v5[76] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in PresenceGroupSessionProviderObserver.join(), 0, 0);
}

uint64_t closure #1 in PresenceGroupSessionProviderObserver.join()()
{
  v1 = v0[73];
  v2 = v0[72];
  v3 = v0[71];
  v0[58] = v0[69];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCy15GroupActivities19PresenceSessionInfoVs5NeverOGMd, &_s7Combine19CurrentValueSubjectCy15GroupActivities19PresenceSessionInfoVs5NeverOGMR);
  v5 = lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type CurrentValueSubject<PresenceSessionInfo, Never> and conformance CurrentValueSubject<A, B>, &_s7Combine19CurrentValueSubjectCy15GroupActivities19PresenceSessionInfoVs5NeverOGMd, &_s7Combine19CurrentValueSubjectCy15GroupActivities19PresenceSessionInfoVs5NeverOGMR, MEMORY[0x1E695BFB0]);
  MEMORY[0x1B2713ED0](v4, v5);
  AsyncPublisher.makeAsyncIterator()();
  (*(v2 + 8))(v1, v3);
  swift_beginAccess();
  v6 = lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type AsyncPublisher<CurrentValueSubject<PresenceSessionInfo, Never>>.Iterator and conformance AsyncPublisher<A>.Iterator, &_s7Combine14AsyncPublisherV8IteratorVyAA19CurrentValueSubjectCy15GroupActivities19PresenceSessionInfoVs5NeverOG_GMd, &_s7Combine14AsyncPublisherV8IteratorVyAA19CurrentValueSubjectCy15GroupActivities19PresenceSessionInfoVs5NeverOG_GMR, MEMORY[0x1E695BF38]);
  v7 = swift_task_alloc();
  v0[77] = v7;
  *v7 = v0;
  v7[1] = closure #1 in PresenceGroupSessionProviderObserver.join();
  v8 = v0[74];

  return MEMORY[0x1EEE6D8C8](v0 + 62, v8, v6);
}

{
  *(*v1 + 624) = v0;

  if (v0)
  {
    v2 = closure #1 in PresenceGroupSessionProviderObserver.join();
  }

  else
  {
    v2 = closure #1 in PresenceGroupSessionProviderObserver.join();
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  return MEMORY[0x1EEE6DFA0](closure #1 in PresenceGroupSessionProviderObserver.join(), 0, 0);
}

{
  v40 = v0;
  v1 = *(v0 + 496);
  if (v1)
  {
    Strong = swift_weakLoadStrong();
    *(v0 + 632) = Strong;
    if (Strong)
    {
      v3 = Strong;
      v4 = *(Strong + 40);
      ObjectType = swift_getObjectType();
      (*(v4 + 16))(ObjectType, v4);
      *(v0 + 488) = v1;
      CurrentValueSubject.send(_:)();

      specialized Collection.prefix(_:)(33, v1, v0 + 72);

      if (specialized Sequence.contains(where:)(v0 + 72) & 1) != 0 && (specialized Sequence.contains(where:)(v0 + 72))
      {
        v6 = (*(*v3 + 112))();
        *(v0 + 640) = v6;
        if (v6)
        {
          v8 = v7;
          v9 = swift_getObjectType();
          v10 = v3[4];
          *(v0 + 648) = v10;
          v11 = *(v3[5] + 8);
          v12 = *(v8 + 16);
          swift_unknownObjectRetain();
          v38 = (v12 + *v12);
          v13 = swift_task_alloc();
          *(v0 + 656) = v13;
          *v13 = v0;
          v13[1] = closure #1 in PresenceGroupSessionProviderObserver.join();

          return v38(v10, v11, v9, v8);
        }

        *(v0 + 344) = *(v0 + 72);
        *(v0 + 360) = *(v0 + 88);
        outlined destroy of NSObject?(v0 + 344, &_sSh5IndexVy15GroupActivities19PresenceSessionInfoV11ParticipantV_GMd, &_sSh5IndexVy15GroupActivities19PresenceSessionInfoV11ParticipantV_GMR);
        *(v0 + 368) = *(v0 + 96);
        *(v0 + 384) = *(v0 + 112);
        outlined destroy of NSObject?(v0 + 368, &_sSh5IndexVy15GroupActivities19PresenceSessionInfoV11ParticipantV_GMd, &_sSh5IndexVy15GroupActivities19PresenceSessionInfoV11ParticipantV_GMR);
        *(v0 + 504) = *(v0 + 120);
        outlined destroy of NSObject?(v0 + 504, &_sShy15GroupActivities19PresenceSessionInfoV11ParticipantVGMd, &_sShy15GroupActivities19PresenceSessionInfoV11ParticipantVGMR);
      }

      else
      {
        if (one-time initialization token for groupSessionProviderObserver != -1)
        {
          swift_once();
        }

        v24 = type metadata accessor for Logger();
        __swift_project_value_buffer(v24, static Log.groupSessionProviderObserver);
        *(v0 + 416) = *(v0 + 72);
        *(v0 + 432) = *(v0 + 88);
        *(v0 + 176) = *(v0 + 96);
        *(v0 + 192) = *(v0 + 112);
        *(v0 + 536) = *(v0 + 120);
        outlined init with copy of URL?(v0 + 416, v0 + 440, &_sSh5IndexVy15GroupActivities19PresenceSessionInfoV11ParticipantV_GMd, &_sSh5IndexVy15GroupActivities19PresenceSessionInfoV11ParticipantV_GMR);
        outlined init with copy of URL?(v0 + 176, v0 + 392, &_sSh5IndexVy15GroupActivities19PresenceSessionInfoV11ParticipantV_GMd, &_sSh5IndexVy15GroupActivities19PresenceSessionInfoV11ParticipantV_GMR);
        outlined init with copy of URL?(v0 + 536, v0 + 512, &_sShy15GroupActivities19PresenceSessionInfoV11ParticipantVGMd, &_sShy15GroupActivities19PresenceSessionInfoV11ParticipantVGMR);
        v25 = Logger.logObject.getter();
        v26 = static os_log_type_t.default.getter();
        outlined destroy of NSObject?(v0 + 416, &_sSh5IndexVy15GroupActivities19PresenceSessionInfoV11ParticipantV_GMd, &_sSh5IndexVy15GroupActivities19PresenceSessionInfoV11ParticipantV_GMR);
        outlined destroy of NSObject?(v0 + 176, &_sSh5IndexVy15GroupActivities19PresenceSessionInfoV11ParticipantV_GMd, &_sSh5IndexVy15GroupActivities19PresenceSessionInfoV11ParticipantV_GMR);
        outlined destroy of NSObject?(v0 + 536, &_sShy15GroupActivities19PresenceSessionInfoV11ParticipantVGMd, &_sShy15GroupActivities19PresenceSessionInfoV11ParticipantVGMR);
        if (!os_log_type_enabled(v25, v26))
        {

          outlined destroy of NSObject?(v0 + 416, &_sSh5IndexVy15GroupActivities19PresenceSessionInfoV11ParticipantV_GMd, &_sSh5IndexVy15GroupActivities19PresenceSessionInfoV11ParticipantV_GMR);
          outlined destroy of NSObject?(v0 + 176, &_sSh5IndexVy15GroupActivities19PresenceSessionInfoV11ParticipantV_GMd, &_sSh5IndexVy15GroupActivities19PresenceSessionInfoV11ParticipantV_GMR);
          outlined destroy of NSObject?(v0 + 536, &_sShy15GroupActivities19PresenceSessionInfoV11ParticipantVGMd, &_sShy15GroupActivities19PresenceSessionInfoV11ParticipantVGMR);
          goto LABEL_21;
        }

        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v39[0] = v28;
        *v27 = 136315138;
        v29 = *(v0 + 88);
        *(v0 + 16) = *(v0 + 72);
        *(v0 + 32) = v29;
        *(v0 + 48) = *(v0 + 104);
        *(v0 + 64) = *(v0 + 120);
        outlined init with copy of URL?(v0 + 416, v0 + 272, &_sSh5IndexVy15GroupActivities19PresenceSessionInfoV11ParticipantV_GMd, &_sSh5IndexVy15GroupActivities19PresenceSessionInfoV11ParticipantV_GMR);
        outlined init with copy of URL?(v0 + 176, v0 + 200, &_sSh5IndexVy15GroupActivities19PresenceSessionInfoV11ParticipantV_GMd, &_sSh5IndexVy15GroupActivities19PresenceSessionInfoV11ParticipantV_GMR);
        outlined init with copy of URL?(v0 + 536, v0 + 544, &_sShy15GroupActivities19PresenceSessionInfoV11ParticipantVGMd, &_sShy15GroupActivities19PresenceSessionInfoV11ParticipantVGMR);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SliceVyShy15GroupActivities19PresenceSessionInfoV11ParticipantVGGMd, &_ss5SliceVyShy15GroupActivities19PresenceSessionInfoV11ParticipantVGGMR);
        v30 = String.init<A>(reflecting:)();
        v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v31, v39);

        *(v27 + 4) = v32;
        _os_log_impl(&dword_1AEE80000, v25, v26, "Not setting up IDSGroupSession since we don't have >1 other device %s", v27, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v28);
        MEMORY[0x1B2715BA0](v28, -1, -1);
        MEMORY[0x1B2715BA0](v27, -1, -1);
        outlined destroy of NSObject?(v0 + 416, &_sSh5IndexVy15GroupActivities19PresenceSessionInfoV11ParticipantV_GMd, &_sSh5IndexVy15GroupActivities19PresenceSessionInfoV11ParticipantV_GMR);
        outlined destroy of NSObject?(v0 + 176, &_sSh5IndexVy15GroupActivities19PresenceSessionInfoV11ParticipantV_GMd, &_sSh5IndexVy15GroupActivities19PresenceSessionInfoV11ParticipantV_GMR);
        outlined destroy of NSObject?(v0 + 536, &_sShy15GroupActivities19PresenceSessionInfoV11ParticipantVGMd, &_sShy15GroupActivities19PresenceSessionInfoV11ParticipantVGMR);
      }

LABEL_21:
      v33 = lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type AsyncPublisher<CurrentValueSubject<PresenceSessionInfo, Never>>.Iterator and conformance AsyncPublisher<A>.Iterator, &_s7Combine14AsyncPublisherV8IteratorVyAA19CurrentValueSubjectCy15GroupActivities19PresenceSessionInfoVs5NeverOG_GMd, &_s7Combine14AsyncPublisherV8IteratorVyAA19CurrentValueSubjectCy15GroupActivities19PresenceSessionInfoVs5NeverOG_GMR, MEMORY[0x1E695BF38]);
      v34 = swift_task_alloc();
      *(v0 + 616) = v34;
      *v34 = v0;
      v34[1] = closure #1 in PresenceGroupSessionProviderObserver.join();
      v35 = *(v0 + 592);

      return MEMORY[0x1EEE6D8C8](v0 + 496, v35, v33);
    }

    (*(*(v0 + 600) + 8))(*(v0 + 608), *(v0 + 592));
  }

  else
  {
    (*(*(v0 + 600) + 8))(*(v0 + 608), *(v0 + 592));
    if (one-time initialization token for groupSessionProviderObserver != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    __swift_project_value_buffer(v15, static Log.groupSessionProviderObserver);

    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v39[0] = v19;
      *v18 = 136315138;
      swift_beginAccess();
      v20 = swift_weakLoadStrong();
      if (v20)
      {
        *(v0 + 480) = v20;
        type metadata accessor for PresenceGroupSessionProviderObserver();
        v21 = String.init<A>(reflecting:)();
        v23 = v22;
      }

      else
      {
        v23 = 0xE300000000000000;
        v21 = 7104878;
      }

      v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v23, v39);

      *(v18 + 4) = v36;
      _os_log_impl(&dword_1AEE80000, v16, v17, "%s PresenceSession's sessionInfo publisher has finished", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v19);
      MEMORY[0x1B2715BA0](v19, -1, -1);
      MEMORY[0x1B2715BA0](v18, -1, -1);
    }
  }

  v37 = *(v0 + 8);

  return v37();
}

{
  *(v0 + 472) = *(v0 + 624);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

{
  *(*v1 + 664) = v0;

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if (v0)
  {
    v2 = closure #1 in PresenceGroupSessionProviderObserver.join();
  }

  else
  {
    v2 = closure #1 in PresenceGroupSessionProviderObserver.join();
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  *(v0 + 296) = *(v0 + 72);
  *(v0 + 312) = *(v0 + 88);
  outlined destroy of NSObject?(v0 + 296, &_sSh5IndexVy15GroupActivities19PresenceSessionInfoV11ParticipantV_GMd, &_sSh5IndexVy15GroupActivities19PresenceSessionInfoV11ParticipantV_GMR);
  *(v0 + 320) = *(v0 + 96);
  *(v0 + 336) = *(v0 + 112);
  outlined destroy of NSObject?(v0 + 320, &_sSh5IndexVy15GroupActivities19PresenceSessionInfoV11ParticipantV_GMd, &_sSh5IndexVy15GroupActivities19PresenceSessionInfoV11ParticipantV_GMR);
  *(v0 + 520) = *(v0 + 120);
  outlined destroy of NSObject?(v0 + 520, &_sShy15GroupActivities19PresenceSessionInfoV11ParticipantVGMd, &_sShy15GroupActivities19PresenceSessionInfoV11ParticipantVGMR);

  v1 = lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type AsyncPublisher<CurrentValueSubject<PresenceSessionInfo, Never>>.Iterator and conformance AsyncPublisher<A>.Iterator, &_s7Combine14AsyncPublisherV8IteratorVyAA19CurrentValueSubjectCy15GroupActivities19PresenceSessionInfoVs5NeverOG_GMd, &_s7Combine14AsyncPublisherV8IteratorVyAA19CurrentValueSubjectCy15GroupActivities19PresenceSessionInfoVs5NeverOG_GMR, MEMORY[0x1E695BF38]);
  v2 = swift_task_alloc();
  *(v0 + 616) = v2;
  *v2 = v0;
  v2[1] = closure #1 in PresenceGroupSessionProviderObserver.join();
  v3 = *(v0 + 592);

  return MEMORY[0x1EEE6D8C8](v0 + 496, v3, v1);
}

{
  v1 = *(v0 + 608);
  v2 = *(v0 + 600);
  v3 = *(v0 + 592);

  *(v0 + 224) = *(v0 + 72);
  *(v0 + 240) = *(v0 + 88);
  outlined destroy of NSObject?(v0 + 224, &_sSh5IndexVy15GroupActivities19PresenceSessionInfoV11ParticipantV_GMd, &_sSh5IndexVy15GroupActivities19PresenceSessionInfoV11ParticipantV_GMR);
  *(v0 + 248) = *(v0 + 96);
  *(v0 + 264) = *(v0 + 112);
  outlined destroy of NSObject?(v0 + 248, &_sSh5IndexVy15GroupActivities19PresenceSessionInfoV11ParticipantV_GMd, &_sSh5IndexVy15GroupActivities19PresenceSessionInfoV11ParticipantV_GMR);
  *(v0 + 528) = *(v0 + 120);
  outlined destroy of NSObject?(v0 + 528, &_sShy15GroupActivities19PresenceSessionInfoV11ParticipantVGMd, &_sShy15GroupActivities19PresenceSessionInfoV11ParticipantVGMR);
  (*(v2 + 8))(v1, v3);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t specialized Sequence.contains(where:)(uint64_t a1)
{
  v43 = type metadata accessor for PresenceSessionInfo.Participant(0);
  v2 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v38 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities19PresenceSessionInfoV11ParticipantVSgMd, &_s15GroupActivities19PresenceSessionInfoV11ParticipantVSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v47 = &v32 - v5;
  v7 = *a1;
  v6 = *(a1 + 8);
  v8 = *(a1 + 16);
  v51 = *(a1 + 24);
  v52 = *(a1 + 40);
  v10 = *(&v51 + 1);
  v9 = v51;
  v35 = v51;
  v11 = v52;
  v53 = *(a1 + 48);
  v12 = v53;
  v50 = v8;
  v13 = *(a1 + 32);
  v33 = *(a1 + 24);
  v32 = v13;
  v49 = v52;
  outlined copy of Set<A>.Index._Variant<A>(v7, v6, v8);
  outlined copy of Set<A>.Index._Variant<A>(v7, v6, v8);
  outlined init with copy of URL?(&v51, v48, &_sSh5IndexVy15GroupActivities19PresenceSessionInfoV11ParticipantV_GMd, &_sSh5IndexVy15GroupActivities19PresenceSessionInfoV11ParticipantV_GMR);
  result = outlined init with copy of URL?(&v53, v48, &_sShy15GroupActivities19PresenceSessionInfoV11ParticipantVGMd, &_sShy15GroupActivities19PresenceSessionInfoV11ParticipantVGMR);
  v39 = v2;
  v40 = v12 + 56;
  v42 = (v2 + 56);
  v41 = v8;
  v37 = v11;
  v15 = v8 | v11;
  v34 = v12 + 64;
  v44 = v6;
  v45 = v7;
  v36 = v10;
  while (1)
  {
    if (v15)
    {
      goto LABEL_31;
    }

    if (v6 != v10)
    {
      break;
    }

    v18 = v7;
    if (v7 == v9)
    {
      v48[0] = 0;
      (*v42)(v47, 1, 1, v43);
      v29 = v48[0];
      v7 = v35;
LABEL_23:
      v30 = v18 != v9;
      v31 = v49;
      outlined consume of Set<TUHandle>.Index._Variant(v45, v44, v50);
      outlined consume of Set<TUHandle>.Index._Variant(v33, v32, v31);

      outlined consume of Set<TUHandle>.Index._Variant(v7, v6, v29);
      return v30;
    }

    if (v41)
    {
      goto LABEL_32;
    }

    if (v7 < v45)
    {
      goto LABEL_25;
    }

    if (v10 != v44)
    {
      goto LABEL_26;
    }

    if (v7 >= v9)
    {
      goto LABEL_27;
    }

    if (v7 < 0)
    {
      goto LABEL_28;
    }

    v7 = 1 << *(v12 + 32);
    if (v18 >= v7)
    {
      goto LABEL_28;
    }

    v19 = v18 >> 6;
    v20 = *(v40 + 8 * (v18 >> 6));
    if (((v20 >> v18) & 1) == 0)
    {
      goto LABEL_29;
    }

    if (*(v12 + 36) != v10)
    {
      goto LABEL_30;
    }

    v46 = v6;
    v10 = v12;
    v21 = *(v12 + 48);
    v22 = v38;
    outlined init with copy of PresenceSessionInfo.Participant(v21 + *(v39 + 72) * v18, v38, type metadata accessor for PresenceSessionInfo.Participant);
    outlined init with take of PresenceSessionInfo.Participant(v22, v47, type metadata accessor for PresenceSessionInfo.Participant);
    if ((v20 & (-2 << (v18 & 0x3F))) != 0)
    {
      v7 = __clz(__rbit64(v20 & (-2 << (v18 & 0x3F)))) | v18 & 0x7FFFFFFFFFFFFFC0;
      v12 = v10;
      LODWORD(v10) = v36;
    }

    else
    {
      v23 = v19 << 6;
      v24 = v19 + 1;
      v25 = (v34 + 8 * v19);
      v12 = v10;
      LODWORD(v10) = v36;
      v26 = v46;
      while (v24 < (v7 + 63) >> 6)
      {
        v28 = *v25++;
        v27 = v28;
        v23 += 64;
        ++v24;
        if (v28)
        {
          outlined copy of Set<A>.Index._Variant<A>(v35, v36, 0);
          outlined consume of Set<TUHandle>.Index._Variant(v18, v26, 0);
          v7 = __clz(__rbit64(v27)) + v23;
          goto LABEL_3;
        }
      }

      outlined copy of Set<A>.Index._Variant<A>(v35, v36, 0);
      outlined consume of Set<TUHandle>.Index._Variant(v18, v26, 0);
    }

LABEL_3:
    v6 = *(v12 + 36);
    v16 = v43;
    v17 = v47;
    (*v42)(v47, 0, 1, v43);
    LOBYTE(v16) = *(v17 + *(v16 + 24));
    result = outlined destroy of PresenceSessionInfo.Participant(v17, type metadata accessor for PresenceSessionInfo.Participant);
    v15 = v37;
    if (v16)
    {
      v29 = 0;
      goto LABEL_23;
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
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

{
  v43 = type metadata accessor for PresenceSessionInfo.Participant(0);
  v2 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v38 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities19PresenceSessionInfoV11ParticipantVSgMd, &_s15GroupActivities19PresenceSessionInfoV11ParticipantVSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v47 = &v32 - v5;
  v7 = *a1;
  v6 = *(a1 + 8);
  v8 = *(a1 + 16);
  v51 = *(a1 + 24);
  v52 = *(a1 + 40);
  v10 = *(&v51 + 1);
  v9 = v51;
  v35 = v51;
  v11 = v52;
  v53 = *(a1 + 48);
  v12 = v53;
  v50 = v8;
  v13 = *(a1 + 32);
  v33 = *(a1 + 24);
  v32 = v13;
  v49 = v52;
  outlined copy of Set<A>.Index._Variant<A>(v7, v6, v8);
  outlined copy of Set<A>.Index._Variant<A>(v7, v6, v8);
  outlined init with copy of URL?(&v51, v48, &_sSh5IndexVy15GroupActivities19PresenceSessionInfoV11ParticipantV_GMd, &_sSh5IndexVy15GroupActivities19PresenceSessionInfoV11ParticipantV_GMR);
  result = outlined init with copy of URL?(&v53, v48, &_sShy15GroupActivities19PresenceSessionInfoV11ParticipantVGMd, &_sShy15GroupActivities19PresenceSessionInfoV11ParticipantVGMR);
  v39 = v2;
  v40 = v12 + 56;
  v42 = (v2 + 56);
  v41 = v8;
  v37 = v11;
  v15 = v8 | v11;
  v34 = v12 + 64;
  v44 = v6;
  v45 = v7;
  v36 = v10;
  while (1)
  {
    if (v15)
    {
      goto LABEL_31;
    }

    if (v6 != v10)
    {
      break;
    }

    v18 = v7;
    if (v7 == v9)
    {
      v48[0] = 0;
      (*v42)(v47, 1, 1, v43);
      v29 = v48[0];
      v7 = v35;
LABEL_23:
      v30 = v18 != v9;
      v31 = v49;
      outlined consume of Set<TUHandle>.Index._Variant(v45, v44, v50);
      outlined consume of Set<TUHandle>.Index._Variant(v33, v32, v31);

      outlined consume of Set<TUHandle>.Index._Variant(v7, v6, v29);
      return v30;
    }

    if (v41)
    {
      goto LABEL_32;
    }

    if (v7 < v45)
    {
      goto LABEL_25;
    }

    if (v10 != v44)
    {
      goto LABEL_26;
    }

    if (v7 >= v9)
    {
      goto LABEL_27;
    }

    if (v7 < 0)
    {
      goto LABEL_28;
    }

    v7 = 1 << *(v12 + 32);
    if (v18 >= v7)
    {
      goto LABEL_28;
    }

    v19 = v18 >> 6;
    v20 = *(v40 + 8 * (v18 >> 6));
    if (((v20 >> v18) & 1) == 0)
    {
      goto LABEL_29;
    }

    if (*(v12 + 36) != v10)
    {
      goto LABEL_30;
    }

    v46 = v6;
    v10 = v12;
    v21 = *(v12 + 48);
    v22 = v38;
    outlined init with copy of PresenceSessionInfo.Participant(v21 + *(v39 + 72) * v18, v38, type metadata accessor for PresenceSessionInfo.Participant);
    outlined init with take of PresenceSessionInfo.Participant(v22, v47, type metadata accessor for PresenceSessionInfo.Participant);
    if ((v20 & (-2 << (v18 & 0x3F))) != 0)
    {
      v7 = __clz(__rbit64(v20 & (-2 << (v18 & 0x3F)))) | v18 & 0x7FFFFFFFFFFFFFC0;
      v12 = v10;
      LODWORD(v10) = v36;
    }

    else
    {
      v23 = v19 << 6;
      v24 = v19 + 1;
      v25 = (v34 + 8 * v19);
      v12 = v10;
      LODWORD(v10) = v36;
      v26 = v46;
      while (v24 < (v7 + 63) >> 6)
      {
        v28 = *v25++;
        v27 = v28;
        v23 += 64;
        ++v24;
        if (v28)
        {
          outlined copy of Set<A>.Index._Variant<A>(v35, v36, 0);
          outlined consume of Set<TUHandle>.Index._Variant(v18, v26, 0);
          v7 = __clz(__rbit64(v27)) + v23;
          goto LABEL_3;
        }
      }

      outlined copy of Set<A>.Index._Variant<A>(v35, v36, 0);
      outlined consume of Set<TUHandle>.Index._Variant(v18, v26, 0);
    }

LABEL_3:
    v6 = *(v12 + 36);
    v16 = v43;
    v17 = v47;
    (*v42)(v47, 0, 1, v43);
    LOBYTE(v16) = *(v17 + *(v16 + 24));
    result = outlined destroy of PresenceSessionInfo.Participant(v17, type metadata accessor for PresenceSessionInfo.Participant);
    v15 = v37;
    if ((v16 & 1) == 0)
    {
      v29 = 0;
      goto LABEL_23;
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
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t closure #3 in PresenceGroupSessionProviderObserver.join()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[12] = a4;
  v5[13] = a5;
  v6 = type metadata accessor for UUID();
  v5[14] = v6;
  v5[15] = *(v6 - 8);
  v5[16] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherVyAA19CurrentValueSubjectCy15GroupActivities15PresenceSessionC5StateOs5NeverOGGMd, &_s7Combine14AsyncPublisherVyAA19CurrentValueSubjectCy15GroupActivities15PresenceSessionC5StateOs5NeverOGGMR);
  v5[17] = v7;
  v5[18] = *(v7 - 8);
  v5[19] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherV8IteratorVyAA19CurrentValueSubjectCy15GroupActivities15PresenceSessionC5StateOs5NeverOG_GMd, &_s7Combine14AsyncPublisherV8IteratorVyAA19CurrentValueSubjectCy15GroupActivities15PresenceSessionC5StateOs5NeverOG_GMR);
  v5[20] = v8;
  v5[21] = *(v8 - 8);
  v5[22] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #3 in PresenceGroupSessionProviderObserver.join(), 0, 0);
}

uint64_t closure #3 in PresenceGroupSessionProviderObserver.join()()
{
  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[17];
  v0[8] = v0[12];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCy15GroupActivities15PresenceSessionC5StateOs5NeverOGMd, &_s7Combine19CurrentValueSubjectCy15GroupActivities15PresenceSessionC5StateOs5NeverOGMR);
  v5 = lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type CurrentValueSubject<PresenceSession.State, Never> and conformance CurrentValueSubject<A, B>, &_s7Combine19CurrentValueSubjectCy15GroupActivities15PresenceSessionC5StateOs5NeverOGMd, &_s7Combine19CurrentValueSubjectCy15GroupActivities15PresenceSessionC5StateOs5NeverOGMR, MEMORY[0x1E695BFB0]);
  MEMORY[0x1B2713ED0](v4, v5);
  AsyncPublisher.makeAsyncIterator()();
  (*(v2 + 8))(v1, v3);
  swift_beginAccess();
  v6 = lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type AsyncPublisher<CurrentValueSubject<PresenceSession.State, Never>>.Iterator and conformance AsyncPublisher<A>.Iterator, &_s7Combine14AsyncPublisherV8IteratorVyAA19CurrentValueSubjectCy15GroupActivities15PresenceSessionC5StateOs5NeverOG_GMd, &_s7Combine14AsyncPublisherV8IteratorVyAA19CurrentValueSubjectCy15GroupActivities15PresenceSessionC5StateOs5NeverOG_GMR, MEMORY[0x1E695BF38]);
  v7 = swift_task_alloc();
  v0[23] = v7;
  *v7 = v0;
  v7[1] = closure #3 in PresenceGroupSessionProviderObserver.join();
  v8 = v0[20];

  return MEMORY[0x1EEE6D8C8](v0 + 29, v8, v6);
}

{
  *(*v1 + 192) = v0;

  if (v0)
  {
    v2 = closure #3 in PresenceGroupSessionProviderObserver.join();
  }

  else
  {
    v2 = closure #3 in PresenceGroupSessionProviderObserver.join();
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  *(v0 + 234) = *(v0 + 232);
  return MEMORY[0x1EEE6DFA0](closure #3 in PresenceGroupSessionProviderObserver.join(), 0, 0);
}

{
  v41 = v0;
  if (*(v0 + 234) == 3)
  {
    (*(*(v0 + 168) + 8))(*(v0 + 176), *(v0 + 160));
    if (one-time initialization token for groupSessionProviderObserver != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    __swift_project_value_buffer(v1, static Log.groupSessionProviderObserver);

    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v40 = v5;
      *v4 = 136315138;
      swift_beginAccess();
      Strong = swift_weakLoadStrong();
      if (Strong)
      {
        *(v0 + 80) = Strong;
        type metadata accessor for PresenceGroupSessionProviderObserver();
        v7 = String.init<A>(reflecting:)();
        v9 = v8;
      }

      else
      {
        v9 = 0xE300000000000000;
        v7 = 7104878;
      }

      v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v9, &v40);

      *(v4 + 4) = v37;
      _os_log_impl(&dword_1AEE80000, v2, v3, "%s PresenceSession's state publisher has finished", v4, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v5);
      MEMORY[0x1B2715BA0](v5, -1, -1);
      MEMORY[0x1B2715BA0](v4, -1, -1);
    }

    goto LABEL_24;
  }

  v10 = swift_weakLoadStrong();
  *(v0 + 200) = v10;
  if (!v10)
  {
    (*(*(v0 + 168) + 8))(*(v0 + 176), *(v0 + 160));
LABEL_24:

    v38 = *(v0 + 8);

    return v38();
  }

  v11 = v10;
  if (one-time initialization token for groupSessionProviderObserver != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  __swift_project_value_buffer(v12, static Log.groupSessionProviderObserver);

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = *(v0 + 234);
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v40 = v17;
    *v16 = 136315394;
    *(v0 + 88) = v11;
    type metadata accessor for PresenceGroupSessionProviderObserver();

    v18 = String.init<A>(reflecting:)();
    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, &v40);

    *(v16 + 4) = v20;
    *(v16 + 12) = 2080;
    *(v0 + 233) = v15;
    v21 = String.init<A>(reflecting:)();
    v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, &v40);

    *(v16 + 14) = v23;
    _os_log_impl(&dword_1AEE80000, v13, v14, "%s observed state transition to: %s", v16, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B2715BA0](v17, -1, -1);
    MEMORY[0x1B2715BA0](v16, -1, -1);
  }

  if (*(v0 + 234) == 2 && (v24 = (*(*v11 + 112))(), (*(v0 + 208) = v24) != 0))
  {
    v26 = v25;
    v27 = *(v0 + 128);
    ObjectType = swift_getObjectType();
    v29 = v11[5];
    v30 = swift_getObjectType();
    GroupSessionProvider.uuid.getter(v30, *(v29 + 8), v27);
    v39 = (*(v26 + 32) + **(v26 + 32));
    v31 = swift_task_alloc();
    *(v0 + 216) = v31;
    *v31 = v0;
    v31[1] = closure #3 in PresenceGroupSessionProviderObserver.join();
    v32 = *(v0 + 128);

    return v39(v32, ObjectType, v26);
  }

  else
  {

    v34 = lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type AsyncPublisher<CurrentValueSubject<PresenceSession.State, Never>>.Iterator and conformance AsyncPublisher<A>.Iterator, &_s7Combine14AsyncPublisherV8IteratorVyAA19CurrentValueSubjectCy15GroupActivities15PresenceSessionC5StateOs5NeverOG_GMd, &_s7Combine14AsyncPublisherV8IteratorVyAA19CurrentValueSubjectCy15GroupActivities15PresenceSessionC5StateOs5NeverOG_GMR, MEMORY[0x1E695BF38]);
    v35 = swift_task_alloc();
    *(v0 + 184) = v35;
    *v35 = v0;
    v35[1] = closure #3 in PresenceGroupSessionProviderObserver.join();
    v36 = *(v0 + 160);

    return MEMORY[0x1EEE6D8C8](v0 + 232, v36, v34);
  }
}

{
  *(v0 + 72) = *(v0 + 192);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

{
  v2 = *v1;
  *(*v1 + 224) = v0;

  v3 = v2[16];
  v4 = v2[15];
  v5 = v2[14];
  if (v0)
  {
    (*(v4 + 8))(v2[16], v2[14]);
    swift_unknownObjectRelease();
    v6 = closure #3 in PresenceGroupSessionProviderObserver.join();
  }

  else
  {
    swift_unknownObjectRelease();
    (*(v4 + 8))(v3, v5);
    v6 = closure #3 in PresenceGroupSessionProviderObserver.join();
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

{

  v1 = lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type AsyncPublisher<CurrentValueSubject<PresenceSession.State, Never>>.Iterator and conformance AsyncPublisher<A>.Iterator, &_s7Combine14AsyncPublisherV8IteratorVyAA19CurrentValueSubjectCy15GroupActivities15PresenceSessionC5StateOs5NeverOG_GMd, &_s7Combine14AsyncPublisherV8IteratorVyAA19CurrentValueSubjectCy15GroupActivities15PresenceSessionC5StateOs5NeverOG_GMR, MEMORY[0x1E695BF38]);
  v2 = swift_task_alloc();
  *(v0 + 184) = v2;
  *v2 = v0;
  v2[1] = closure #3 in PresenceGroupSessionProviderObserver.join();
  v3 = *(v0 + 160);

  return MEMORY[0x1EEE6D8C8](v0 + 232, v3, v1);
}

{
  v2 = v0[21];
  v1 = v0[22];
  v3 = v0[20];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t PresenceGroupSessionProviderObserver.leave()()
{
  *(v1 + 48) = v0;
  return MEMORY[0x1EEE6DFA0](PresenceGroupSessionProviderObserver.leave(), 0, 0);
}

{
  v1 = *(v0 + 48);
  v2 = ((*v1)[19])(v0 + 16);
  v4 = v3;

  *v4 = MEMORY[0x1E69E7CD0];
  v2(v0 + 16, 0);
  v7 = (*(*v1[6] + 368) + **(*v1[6] + 368));
  v5 = swift_task_alloc();
  *(v0 + 56) = v5;
  *v5 = v0;
  v5[1] = PresenceGroupSessionProviderObserver.leave();

  return v7();
}

{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t PresenceGroupSessionProviderObserver.deinit()
{
  outlined destroy of weak SystemCoordinatorHostDelegate?(v0 + 16);
  swift_unknownObjectRelease();

  return v0;
}

uint64_t PresenceGroupSessionProviderObserver.__deallocating_deinit()
{
  outlined destroy of weak SystemCoordinatorHostDelegate?(v0 + 16);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t specialized Set._Variant.insert(_:)(void *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = MEMORY[0x1B2715020](*(*v2 + 40));
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 8 * v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    specialized _NativeSet.insertNew(_:at:isUnique:)(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t specialized Set._Variant.insert(_:)(uint64_t *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = __CocoaSet.member(for:)();

    if (v9)
    {

      type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for CPParticipant, 0x1E6997710);
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = __CocoaSet.count.getter();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfCSo13CPParticipantC_Tt1g5(v7, result + 1);
    v20 = v19[2];
    if (v19[3] <= v20)
    {
      specialized _NativeSet.resize(capacity:)(v20 + 1);
    }

    v18 = v8;
    specialized _NativeSet._unsafeInsertNew(_:)(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for CPParticipant, 0x1E6997710);
  v11 = NSObject._rawHashValue(seed:)(*(v6 + 40));
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    specialized _NativeSet.insertNew(_:at:isUnique:)(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = static NSObject.== infix(_:_:)();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = __CocoaSet.member(for:)();

    if (v9)
    {

      type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for TUHandle, 0x1E69D8C00);
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = __CocoaSet.count.getter();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfCSo8TUHandleC_Tt1g5(v7, result + 1);
    v20 = v19[2];
    if (v19[3] <= v20)
    {
      specialized _NativeSet.resize(capacity:)(v20 + 1);
    }

    v18 = v8;
    specialized _NativeSet._unsafeInsertNew(_:)(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for TUHandle, 0x1E69D8C00);
  v11 = NSObject._rawHashValue(seed:)(*(v6 + 40));
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    specialized _NativeSet.insertNew(_:at:isUnique:)(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = static NSObject.== infix(_:_:)();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

uint64_t specialized Set._Variant.insert(_:)(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = __CocoaSet.member(for:)();

    if (v8)
    {

      type metadata accessor for AnyCancellable();
      swift_dynamicCast();
      result = 0;
      *a1 = v19;
      return result;
    }

    result = __CocoaSet.count.getter();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v16 = _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfC7Combine14AnyCancellableC_Tt1g5(v7, result + 1);
    v17 = *(v16 + 16);
    if (*(v16 + 24) <= v17)
    {
      specialized _NativeSet.resize(capacity:)(v17 + 1);
    }

    specialized _NativeSet._unsafeInsertNew(_:)(v18, v16);

    *v3 = v16;
    goto LABEL_16;
  }

  type metadata accessor for AnyCancellable();
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type AnyCancellable and conformance AnyCancellable, MEMORY[0x1E695BF10], MEMORY[0x1E695BF18]);
  v10 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v11 = -1 << *(v6 + 32);
  v12 = v10 & ~v11;
  if (((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;

    specialized _NativeSet.insertNew(_:at:isUnique:)(v15, v12, isUniquelyReferenced_nonNull_native);
    *v2 = v20;
LABEL_16:
    *a1 = a2;
    return 1;
  }

  v13 = ~v11;
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type AnyCancellable and conformance AnyCancellable, MEMORY[0x1E695BF10], MEMORY[0x1E695BF20]);
  while ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {
    v12 = (v12 + 1) & v13;
    if (((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  *a1 = *(*(v6 + 48) + 8 * v12);

  return 0;
}

uint64_t specialized Set._Variant.insert(_:)(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  v33 = a2;
  v11 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    specialized _NativeSet.insertNew(_:at:isUnique:)(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

{
  v3 = v2;
  v6 = type metadata accessor for UTType();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UTType and conformance UTType, MEMORY[0x1E69E8450], MEMORY[0x1E69E8460]);
  v33 = a2;
  v11 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UTType and conformance UTType, MEMORY[0x1E69E8450], MEMORY[0x1E69E8468]);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    specialized _NativeSet.insertNew(_:at:isUnique:)(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t specialized Set._Variant.insert(_:)(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
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

uint64_t specialized Set._Variant.insert(_:)(uint64_t a1, uint64_t a2)
{
  v28 = a1;
  v4 = type metadata accessor for PresenceSessionInfo.Participant(0);
  v25 = *(v4 - 8);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v26 = &v24 - v8;
  v27 = v2;
  v9 = *v2;
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  dispatch thunk of Hashable.hash(into:)();
  v10 = (a2 + *(v4 + 20));
  v11 = v10[1];
  v30 = *v10;
  String.hash(into:)();
  v12 = v4;
  v29 = *(a2 + *(v4 + 24));
  Hasher._combine(_:)(v29);
  v13 = Hasher._finalize()();
  v14 = -1 << *(v9 + 32);
  v15 = v13 & ~v14;
  if ((*(v9 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
  {
    v16 = ~v14;
    v17 = *(v25 + 72);
    while (1)
    {
      outlined init with copy of PresenceSessionInfo.Participant(*(v9 + 48) + v17 * v15, v7, type metadata accessor for PresenceSessionInfo.Participant);
      if (static UUID.== infix(_:_:)())
      {
        v18 = &v7[*(v12 + 20)];
        v19 = *v18 == v30 && *(v18 + 1) == v11;
        if (v19 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && v29 == v7[*(v12 + 24)])
        {
          break;
        }
      }

      outlined destroy of PresenceSessionInfo.Participant(v7, type metadata accessor for PresenceSessionInfo.Participant);
      v15 = (v15 + 1) & v16;
      if (((*(v9 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    outlined destroy of PresenceSessionInfo.Participant(v7, type metadata accessor for PresenceSessionInfo.Participant);
    outlined destroy of PresenceSessionInfo.Participant(a2, type metadata accessor for PresenceSessionInfo.Participant);
    outlined init with copy of PresenceSessionInfo.Participant(*(v9 + 48) + v17 * v15, v28, type metadata accessor for PresenceSessionInfo.Participant);
    return 0;
  }

  else
  {
LABEL_12:
    v20 = v27;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = v26;
    outlined init with copy of PresenceSessionInfo.Participant(a2, v26, type metadata accessor for PresenceSessionInfo.Participant);
    v31 = *v20;
    specialized _NativeSet.insertNew(_:at:isUnique:)(v22, v15, isUniquelyReferenced_nonNull_native);
    *v20 = v31;
    outlined init with take of PresenceSessionInfo.Participant(a2, v28, type metadata accessor for PresenceSessionInfo.Participant);
    return 1;
  }
}

Swift::Int _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfCSo13CPParticipantC_Tt1g5(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySo13CPParticipantCGMd, &_ss11_SetStorageCySo13CPParticipantCGMR);
    v2 = static _SetStorage.convert(_:capacity:)();
    v15 = v2;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for CPParticipant, 0x1E6997710);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          specialized _NativeSet.resize(capacity:)(v9 + 1);
        }

        v2 = v15;
        result = NSObject._rawHashValue(seed:)(*(v15 + 40));
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (__CocoaSet.Iterator.next()());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return v2;
}

uint64_t _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfC7Combine14AnyCancellableC_Tt1g5(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy7Combine14AnyCancellableCGMd, &_ss11_SetStorageCy7Combine14AnyCancellableCGMR);
    v2 = static _SetStorage.convert(_:capacity:)();
    v15 = v2;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      type metadata accessor for AnyCancellable();
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          specialized _NativeSet.resize(capacity:)(v9 + 1);
        }

        v2 = v15;
        lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type AnyCancellable and conformance AnyCancellable, MEMORY[0x1E695BF10], MEMORY[0x1E695BF18]);
        result = dispatch thunk of Hashable._rawHashValue(seed:)();
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (__CocoaSet.Iterator.next()());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return v2;
}

Swift::Int _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfCSo8TUHandleC_Tt1g5(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySo8TUHandleCGMd, &_ss11_SetStorageCySo8TUHandleCGMR);
    v2 = static _SetStorage.convert(_:capacity:)();
    v15 = v2;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for TUHandle, 0x1E69D8C00);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          specialized _NativeSet.resize(capacity:)(v9 + 1);
        }

        v2 = v15;
        result = NSObject._rawHashValue(seed:)(*(v15 + 40));
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (__CocoaSet.Iterator.next()());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return v2;
}

unint64_t specialized _NativeSet._unsafeInsertNew(_:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for AnyCancellable();
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type AnyCancellable and conformance AnyCancellable, MEMORY[0x1E695BF10], MEMORY[0x1E695BF18]);
  dispatch thunk of Hashable._rawHashValue(seed:)();
  result = _HashTable.nextHole(atOrAfter:)();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

unint64_t specialized _NativeSet._unsafeInsertNew(_:)(uint64_t a1, void *a2)
{
  NSObject._rawHashValue(seed:)(a2[5]);
  result = _HashTable.nextHole(atOrAfter:)();
  *(a2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 56) |= 1 << result;
  *(a2[6] + 8 * result) = a1;
  ++a2[2];
  return result;
}

uint64_t specialized _NativeSet.insertNew(_:at:isUnique:)(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = specialized _NativeSet.copy()();
      a2 = v7;
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v5 + 1);
  }

  v8 = *v3;
  result = MEMORY[0x1B2715020](*(*v3 + 40), v4);
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + 8 * a2) != v4)
    {
      a2 = (a2 + 1) & v10;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + 8 * a2) = v4;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void specialized _NativeSet.insertNew(_:at:isUnique:)(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      specialized _NativeSet.copy()();
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v6 + 1, &_ss11_SetStorageCySo13CPParticipantCGMd, &_ss11_SetStorageCySo13CPParticipantCGMR);
  }

  v8 = *v3;
  v9 = NSObject._rawHashValue(seed:)(*(*v3 + 40));
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for CPParticipant, 0x1E6997710);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = static NSObject.== infix(_:_:)();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      specialized _NativeSet.copy()();
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v6 + 1, &_ss11_SetStorageCySo8TUHandleCGMd, &_ss11_SetStorageCySo8TUHandleCGMR);
  }

  v8 = *v3;
  v9 = NSObject._rawHashValue(seed:)(*(*v3 + 40));
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for TUHandle, 0x1E69D8C00);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = static NSObject.== infix(_:_:)();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void specialized _NativeSet.insertNew(_:at:isUnique:)(uint64_t result, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      specialized _NativeSet.copy()();
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v6 + 1);
  }

  v8 = *v3;
  type metadata accessor for AnyCancellable();
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type AnyCancellable and conformance AnyCancellable, MEMORY[0x1E695BF10], MEMORY[0x1E695BF18]);
  v9 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type AnyCancellable and conformance AnyCancellable, MEMORY[0x1E695BF10], MEMORY[0x1E695BF20]);
    while ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
    {
      a2 = (a2 + 1) & v11;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + 8 * a2) = result;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return;
  }

  __break(1u);
LABEL_15:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

uint64_t specialized _NativeSet.insertNew(_:at:isUnique:)(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      specialized _NativeSet.copy()();
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v10 + 1);
  }

  v12 = *v3;
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  v13 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v9, *(v30 + 48) + v20 * a2, v6);
      lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v18 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

{
  v4 = v3;
  v8 = type metadata accessor for Participant(0);
  v9 = *(v8 - 1);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v36[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*v4 + 16);
  v13 = *(*v4 + 24);
  if (v13 > v12 && (a3 & 1) != 0)
  {
    goto LABEL_29;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v12 + 1);
  }

  else
  {
    if (v13 > v12)
    {
      specialized _NativeSet.copy()();
      goto LABEL_29;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v12 + 1);
  }

  v14 = *v4;
  Hasher.init(_seed:)();
  Participant.hash(into:)(v36);
  v15 = Hasher._finalize()();
  v16 = -1 << *(v14 + 32);
  a2 = v15 & ~v16;
  if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v18 = *(v9 + 72);
    do
    {
      outlined init with copy of PresenceSessionInfo.Participant(*(v14 + 48) + v18 * a2, v11, type metadata accessor for Participant);
      if ((static UUID.== infix(_:_:)() & 1) == 0)
      {
        goto LABEL_11;
      }

      v19 = v8[5];
      v20 = *&v11[v19];
      v21 = *&v11[v19 + 8];
      v22 = (a1 + v19);
      v23 = v20 == *v22 && v21 == v22[1];
      if (!v23 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || *&v11[v8[6]] != *(a1 + v8[6]))
      {
        goto LABEL_11;
      }

      v24 = v8[7];
      v25 = &v11[v24];
      v26 = *&v11[v24 + 8];
      v27 = (a1 + v24);
      v28 = v27[1];
      if (v26)
      {
        if (!v28)
        {
          goto LABEL_11;
        }

        v29 = *v25 == *v27 && v26 == v28;
        if (!v29 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      else if (v28)
      {
        goto LABEL_11;
      }

      if (v11[v8[8]] == *(a1 + v8[8]) && v11[v8[9]] == *(a1 + v8[9]))
      {
        outlined destroy of PresenceSessionInfo.Participant(v11, type metadata accessor for Participant);
        ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        break;
      }

LABEL_11:
      outlined destroy of PresenceSessionInfo.Participant(v11, type metadata accessor for Participant);
      a2 = (a2 + 1) & v17;
    }

    while (((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_29:
  v30 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = outlined init with take of PresenceSessionInfo.Participant(a1, *(v30 + 48) + *(v9 + 72) * a2, type metadata accessor for Participant);
  v32 = *(v30 + 16);
  v33 = __OFADD__(v32, 1);
  v34 = v32 + 1;
  if (v33)
  {
    __break(1u);
  }

  else
  {
    *(v30 + 16) = v34;
  }

  return result;
}

{
  v7 = type metadata accessor for PresenceSessionInfo.Participant(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v28 = v8;
  v29 = v3;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_19;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      specialized _NativeSet.copy()();
      goto LABEL_19;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v11 + 1);
  }

  v13 = *v3;
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  dispatch thunk of Hashable.hash(into:)();
  v14 = (a1 + *(v7 + 20));
  v15 = *v14;
  v16 = v14[1];
  String.hash(into:)();
  v30 = *(a1 + *(v7 + 24));
  Hasher._combine(_:)(v30);
  v17 = Hasher._finalize()();
  v18 = -1 << *(v13 + 32);
  a2 = v17 & ~v18;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v19 = ~v18;
    v20 = *(v8 + 72);
    do
    {
      outlined init with copy of PresenceSessionInfo.Participant(*(v13 + 48) + v20 * a2, v10, type metadata accessor for PresenceSessionInfo.Participant);
      if (static UUID.== infix(_:_:)())
      {
        v21 = &v10[*(v7 + 20)];
        v22 = *v21 == v15 && *(v21 + 1) == v16;
        if (v22 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && v30 == v10[*(v7 + 24)])
        {
          goto LABEL_22;
        }
      }

      outlined destroy of PresenceSessionInfo.Participant(v10, type metadata accessor for PresenceSessionInfo.Participant);
      a2 = (a2 + 1) & v19;
    }

    while (((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_19:
  v23 = *v29;
  *(*v29 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = outlined init with take of PresenceSessionInfo.Participant(a1, *(v23 + 48) + *(v28 + 72) * a2, type metadata accessor for PresenceSessionInfo.Participant);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_22:
  outlined destroy of PresenceSessionInfo.Participant(v10, type metadata accessor for PresenceSessionInfo.Participant);
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

{
  v31 = a1;
  v6 = type metadata accessor for UTType();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      specialized _NativeSet.copy()();
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v10 + 1);
  }

  v12 = *v3;
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UTType and conformance UTType, MEMORY[0x1E69E8450], MEMORY[0x1E69E8460]);
  v13 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v9, *(v30 + 48) + v20 * a2, v6);
      lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UTType and conformance UTType, MEMORY[0x1E69E8450], MEMORY[0x1E69E8468]);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v18 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

Swift::Int specialized _NativeSet.insertNew(_:at:isUnique:)(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
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

uint64_t specialized _NativeSet.copyAndResize(capacity:)(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCys6UInt64VGMd, &_ss11_SetStorageCys6UInt64VGMR);
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
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      result = MEMORY[0x1B2715020](*(v5 + 40), v16);
      v17 = -1 << *(v5 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_26;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
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
        goto LABEL_24;
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
LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_24:

    *v2 = v5;
  }

  return result;
}

{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy7Combine14AnyCancellableCGMd, &_ss11_SetStorageCy7Combine14AnyCancellableCGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v25 = v3;
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
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v26 = (v10 - 1) & v10;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      type metadata accessor for AnyCancellable();
      lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type AnyCancellable and conformance AnyCancellable, MEMORY[0x1E695BF10], MEMORY[0x1E695BF18]);

      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
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
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
      v3 = v25;
      v10 = v26;
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v11)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v7 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v26 = (v16 - 1) & v16;
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

{
  v2 = v1;
  v33 = type metadata accessor for UUID();
  v3 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy10Foundation4UUIDVGMd, &_ss11_SetStorageCy10Foundation4UUIDVGMR);
  v7 = static _SetStorage.resize(original:capacity:move:)();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v32 + 72);
      (*(v32 + 16))(v5, *(result + 48) + v20 * (v17 | (v9 << 6)), v33);
      lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v29)(*(v7 + 48) + v16 * v20, v5, v33);
      ++*(v7 + 16);
      result = v30;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v28;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
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
    *v2 = v7;
  }

  return result;
}

{
  v2 = v1;
  v33 = type metadata accessor for UTType();
  v3 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy22UniformTypeIdentifiers6UTTypeVGMd, &_ss11_SetStorageCy22UniformTypeIdentifiers6UTTypeVGMR);
  v7 = static _SetStorage.resize(original:capacity:move:)();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v32 + 72);
      (*(v32 + 16))(v5, *(result + 48) + v20 * (v17 | (v9 << 6)), v33);
      lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UTType and conformance UTType, MEMORY[0x1E69E8450], MEMORY[0x1E69E8460]);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v29)(*(v7 + 48) + v16 * v20, v5, v33);
      ++*(v7 + 16);
      result = v30;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v28;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
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
    *v2 = v7;
  }

  return result;
}

Swift::Int specialized _NativeSet.copyAndResize(capacity:)(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for Participant(0);
  v4 = *(v3 - 1);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy15GroupActivities11ParticipantVGMd, &_ss11_SetStorageCy15GroupActivities11ParticipantVGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v9 = result;
  if (*(v7 + 16))
  {
    v29 = v1;
    v10 = 0;
    v11 = *(v7 + 56);
    v30 = v7 + 56;
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & v11;
    v15 = (v12 + 63) >> 6;
    v16 = result + 56;
    v31 = v15;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v33 = (v14 - 1) & v14;
LABEL_15:
      v21 = *(v7 + 48);
      v32 = *(v4 + 72);
      outlined init with copy of PresenceSessionInfo.Participant(v21 + v32 * (v18 | (v10 << 6)), v6, type metadata accessor for Participant);
      Hasher.init(_seed:)();
      type metadata accessor for UUID();
      lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      dispatch thunk of Hashable.hash(into:)();
      String.hash(into:)();
      MEMORY[0x1B2715070](*&v6[v3[6]]);
      if (*&v6[v3[7] + 8])
      {
        Hasher._combine(_:)(1u);
        v15 = v31;
        String.hash(into:)();
      }

      else
      {
        Hasher._combine(_:)(0);
      }

      Hasher._combine(_:)(v6[v3[8]]);
      Hasher._combine(_:)(v6[v3[9]]);
      result = Hasher._finalize()();
      v22 = -1 << *(v9 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v16 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v16 + 8 * v24);
          if (v28 != -1)
          {
            v17 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_31;
      }

      v17 = __clz(__rbit64((-1 << v23) & ~*(v16 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      result = outlined init with take of PresenceSessionInfo.Participant(v6, *(v9 + 48) + v17 * v32, type metadata accessor for Participant);
      ++*(v9 + 16);
      v14 = v33;
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v2 = v29;
        goto LABEL_29;
      }

      v20 = *(v30 + 8 * v10);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v33 = (v20 - 1) & v20;
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
    *v2 = v9;
  }

  return result;
}

{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy15GroupActivities17AddressableMemberVGMd, &_ss11_SetStorageCy15GroupActivities17AddressableMemberVGMR);
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

{
  v2 = v1;
  v3 = type metadata accessor for PresenceSessionInfo.Participant(0);
  v33 = *(v3 - 8);
  v34 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy15GroupActivities19PresenceSessionInfoV11ParticipantVGMd, &_ss11_SetStorageCy15GroupActivities19PresenceSessionInfoV11ParticipantVGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v6 + 16))
  {
    v31 = v1;
    v32 = v6;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v15 = result + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v6 + 48);
      v21 = *(v33 + 72);
      outlined init with copy of PresenceSessionInfo.Participant(v20 + v21 * (v17 | (v9 << 6)), v5, type metadata accessor for PresenceSessionInfo.Participant);
      Hasher.init(_seed:)();
      type metadata accessor for UUID();
      lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      dispatch thunk of Hashable.hash(into:)();
      v22 = v34;
      String.hash(into:)();
      Hasher._combine(_:)(v5[*(v22 + 24)]);
      result = Hasher._finalize()();
      v23 = -1 << *(v8 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v15 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v15 + 8 * v25);
          if (v29 != -1)
          {
            v16 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v24) & ~*(v15 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      result = outlined init with take of PresenceSessionInfo.Participant(v5, *(v8 + 48) + v16 * v21, type metadata accessor for PresenceSessionInfo.Participant);
      ++*(v8 + 16);
      v6 = v32;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v31;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
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
    *v2 = v8;
  }

  return result;
}

Swift::Int specialized _NativeSet.copyAndResize(capacity:)(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = static _SetStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v27 = v3;
    v8 = 0;
    v9 = 1 << *(v5 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v5 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(v7 + 40);
      v19 = *(*(v5 + 48) + 8 * (v15 | (v8 << 6)));
      result = NSObject._rawHashValue(seed:)(v18);
      v20 = -1 << *(v7 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
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
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v7 + 48) + 8 * v14) = v19;
      ++*(v7 + 16);
    }

    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v8 >= v12)
      {

        v4 = v27;
        goto LABEL_26;
      }

      v17 = *(v5 + 56 + 8 * v8);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
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
    *v4 = v7;
  }

  return result;
}

void specialized Set._Variant.removeAll(keepingCapacity:)(char a1)
{
  v2 = *v1;
  if (a1)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      if (__CocoaSet.count.getter() > 0)
      {
        v3 = __CocoaSet.count.getter();

        if (v3)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy7Combine14AnyCancellableCGMd, &_ss11_SetStorageCy7Combine14AnyCancellableCGMR);
          *v1 = static _SetStorage.allocate(capacity:)();
        }

        else
        {
          *v1 = MEMORY[0x1E69E7CD0];
        }
      }
    }

    else if (*(v2 + 16))
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v5 = *v1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss10_NativeSetVy7Combine14AnyCancellableCGMd, &_ss10_NativeSetVy7Combine14AnyCancellableCGMR);
      _NativeSet.removeAll(isUnique:)(isUniquelyReferenced_nonNull_native);
      *v1 = v5;
    }
  }

  else
  {

    *v1 = MEMORY[0x1E69E7CD0];
  }
}

uint64_t specialized Collection.index(_:offsetBy:limitedBy:)(uint64_t result, uint64_t a2, char a3, uint64_t a4, uint64_t a5, int a6, char a7, uint64_t a8)
{
  if (a4 < 0)
  {
LABEL_26:
    __break(1u);
  }

  else
  {
    if (!a4)
    {
      v20 = result;
      outlined copy of Set<A>.Index._Variant<A>(result, a2, a3 & 1);
      return v20;
    }

    v8 = 0;
    v9 = a3 | a7;
    while ((v9 & 1) == 0)
    {
      if (a2 != a6)
      {
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (result == a5)
      {
        return 0;
      }

      if (result < 0)
      {
        goto LABEL_23;
      }

      v11 = 1 << *(a8 + 32);
      if (result >= v11)
      {
        goto LABEL_23;
      }

      v12 = result >> 6;
      v13 = *(a8 + 56 + 8 * (result >> 6));
      if (((v13 >> result) & 1) == 0)
      {
        goto LABEL_24;
      }

      if (*(a8 + 36) != a6)
      {
        goto LABEL_25;
      }

      v14 = v13 & (-2 << (result & 0x3F));
      if (v14)
      {
        result = __clz(__rbit64(v14)) | result & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v15 = v12 << 6;
        v16 = v12 + 1;
        v17 = (a8 + 64 + 8 * v12);
        while (v16 < (v11 + 63) >> 6)
        {
          v19 = *v17++;
          v18 = v19;
          v15 += 64;
          ++v16;
          if (v19)
          {
            result = __clz(__rbit64(v18)) + v15;
            goto LABEL_5;
          }
        }

        result = 1 << *(a8 + 32);
      }

LABEL_5:
      LODWORD(a2) = a6;
      v9 = a7;
      if (v8++ == a4 - 1)
      {
        return result;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t specialized Collection<>.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = _HashTable.startBucket.getter();
  v7 = 1 << *(a2 + 32);
  if (v7 < result)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (*(a1 + 16))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = *(a2 + 36);
  v9 = *(a1 + 8);
  if (v8 != v9)
  {
    goto LABEL_12;
  }

  if (*a1 < result)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (*(a1 + 40))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v10 = *(a1 + 32);
  if (v8 != v10)
  {
    goto LABEL_14;
  }

  v11 = *(a1 + 24);
  if (v7 < v11)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  *a3 = *a1;
  *(a3 + 8) = v9;
  *(a3 + 16) = 0;
  *(a3 + 24) = v11;
  *(a3 + 32) = v10;
  *(a3 + 40) = 0;
  *(a3 + 48) = a2;
}

uint64_t partial apply for closure #1 in PresenceGroupSessionProviderObserver.join()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = protocol witness for AnyTransportSession.downloadAttachment(_:) in conformance GroupSession<A>;

  return closure #1 in PresenceGroupSessionProviderObserver.join()(a1, v4, v5, v6, v7);
}

void partial apply for closure #2 in PresenceGroupSessionProviderObserver.join()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);

  JUMPOUT(0x1B27144E0);
}

uint64_t partial apply for closure #3 in PresenceGroupSessionProviderObserver.join()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = protocol witness for AnyTransportSession.downloadAttachment(_:) in conformance GroupSession<A>;

  return closure #3 in PresenceGroupSessionProviderObserver.join()(a1, v4, v5, v7, v6);
}

uint64_t dispatch thunk of PresenceGroupSessionProviderObserver.join()()
{
  v4 = (*(*v0 + 168) + **(*v0 + 168));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = protocol witness for AnyTransportSession.removeAttachment(id:) in conformance GroupSession<A>;

  return v4();
}

uint64_t dispatch thunk of PresenceGroupSessionProviderObserver.leave()()
{
  v4 = (*(*v0 + 176) + **(*v0 + 176));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = protocol witness for AnyTransportSession.downloadAttachment(_:) in conformance GroupSession<A>;

  return v4();
}

uint64_t specialized Collection.prefix(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = result;
    v6 = _HashTable.startBucket.getter();
    v7 = *(a2 + 36);
    v8 = -1 << *(a2 + 32);
    v9 = specialized Collection.index(_:offsetBy:limitedBy:)(v6, v7, 0, v4, -v8, *(a2 + 36), 0, a2);
    v11 = v10;
    v13 = v12;
    v14 = v12;
    result = _HashTable.startBucket.getter();
    if (v14 == 255)
    {
      v15 = -v8;
    }

    else
    {
      v15 = v9;
    }

    if (v14 == 255)
    {
      v16 = v7;
    }

    else
    {
      v16 = v11;
    }

    if (v14 != 255 && (v13 & 1) != 0)
    {
      goto LABEL_16;
    }

    v17 = *(a2 + 36);
    if (v17 == v16)
    {
      if (v15 >= result)
      {
        v21[0] = result;
        v21[1] = v17;
        v22 = 0;
        v23 = v15;
        v24 = v16;
        v25 = 0;
        result = specialized Collection<>.subscript.getter(v21, a2, v19);
        v18 = v19[1];
        *a3 = v19[0];
        *(a3 + 16) = v18;
        *(a3 + 32) = v19[2];
        *(a3 + 48) = v20;
        return result;
      }

      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_15:
  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

uint64_t outlined copy of Set<A>.Index._Variant<A>(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

uint64_t outlined init with take of PresenceSessionInfo.Participant(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with copy of PresenceSessionInfo.Participant(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of PresenceSessionInfo.Participant(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void *PlaybackSyncer.localParticipantState.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

void PlaybackSyncer.localParticipantState.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;
}

uint64_t PlaybackSyncer.transportControlStates.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 24) = a1;
}

uint64_t PlaybackSyncer.coordinator.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 120) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*PlaybackSyncer.coordinator.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 120);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return PlaybackSyncer.coordinator.modify;
}

void PlaybackSyncer.coordinator.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + 120) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t PlaybackSyncer.link.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 136) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*PlaybackSyncer.link.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 136);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return PlaybackSyncer.link.modify;
}

void PlaybackSyncer.link.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + 136) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t PlaybackSyncer.syncerDelegate.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 152) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*PlaybackSyncer.syncerDelegate.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 152);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return PlaybackSyncer.syncerDelegate.modify;
}

void PlaybackSyncer.syncerDelegate.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + 152) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t PlaybackSyncer.__allocating_init(coordinator:serialQueue:localParticipantUUID:)(void *a1, void *a2, uint64_t a3)
{
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v3 + 472);
  v12 = a1;
  v13 = a2;
  v14 = v11(v12, &protocol witness table for AVPlaybackCoordinator, v13);
  v15 = type metadata accessor for PlaybackSyncer.AVCoordinatorDelegateBridge(0);
  (*(v8 + 16))(v10, a3, v7);
  swift_retain_n();
  v16 = specialized PlaybackSyncer.AVCoordinatorDelegateBridge.init(localParticipantID:delegate:)(v10, v14, objc_allocWithZone(v15), v3, &protocol witness table for PlaybackSyncer);

  (*(v8 + 8))(a3, v7);
  v17 = *(v14 + 104);
  *(v14 + 104) = v16;

  return v14;
}

id PlaybackSyncer.AVCoordinatorDelegateBridge.__allocating_init(localParticipantID:delegate:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();

  return specialized PlaybackSyncer.AVCoordinatorDelegateBridge.__allocating_init(localParticipantID:delegate:)(a1, a2, v3, ObjectType, a3);
}

uint64_t PlaybackSyncer.__allocating_init(internalCoordinator:serialQueue:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_allocObject();
  v6 = specialized PlaybackSyncer.init(internalCoordinator:serialQueue:)(a1, a2, a3);
  swift_unknownObjectRelease();
  return v6;
}

uint64_t PlaybackSyncer.init(internalCoordinator:serialQueue:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = specialized PlaybackSyncer.init(internalCoordinator:serialQueue:)(a1, a2, a3);
  swift_unknownObjectRelease();
  return v3;
}

uint64_t PlaybackSyncer.connect(toLink:withExistingRemoteParticipants:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v47 = a3;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v52 = *(v6 - 8);
  v53 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v50 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = type metadata accessor for DispatchQoS();
  v49 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v48 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMR);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v43 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO9ReceiveOnVy_AA19CurrentValueSubjectCySbs5NeverOGSo17OS_dispatch_queueCGMd, &_s7Combine10PublishersO9ReceiveOnVy_AA19CurrentValueSubjectCySbs5NeverOGSo17OS_dispatch_queueCGMR);
  v45 = *(v12 - 8);
  v46 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v44 = &v43 - v13;
  if (one-time initialization token for playback != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  __swift_project_value_buffer(v14, static Logger.playback);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_1AEE80000, v15, v16, "PlaybackSync: Connecting link", v17, 2u);
    MEMORY[0x1B2715BA0](v17, -1, -1);
  }

  v18 = *(*v4 + 432);
  v19 = swift_unknownObjectRetain();
  v18(v19, a2);
  v20 = v4[13];
  if (v20)
  {
    v21 = *(*v4 + 400);
    v22 = v20;
    if (v21())
    {
      objc_opt_self();
      v23 = swift_dynamicCastObjCClass();
      if (v23)
      {
        [v23 setCoordinationMediumDelegate_];
      }

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  ObjectType = swift_getObjectType();
  v25 = swift_allocObject();
  swift_weakInit();
  v26 = *(a2 + 24);

  v26(partial apply for closure #1 in PlaybackSyncer.connect(toLink:withExistingRemoteParticipants:), v25, ObjectType, a2);

  v27 = swift_allocObject();
  swift_weakInit();
  v28 = *(a2 + 48);

  v28(partial apply for closure #2 in PlaybackSyncer.connect(toLink:withExistingRemoteParticipants:), v27, ObjectType, a2);

  aBlock[0] = (*(a2 + 80))(ObjectType, a2);
  v55 = v4[12];
  v29 = v55;
  v30 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  (*(*(v30 - 8) + 56))(v11, 1, 1, v30);
  v31 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCySbs5NeverOGMd, &_s7Combine19CurrentValueSubjectCySbs5NeverOGMR);
  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type CurrentValueSubject<Bool, Never> and conformance CurrentValueSubject<A, B>, &_s7Combine19CurrentValueSubjectCySbs5NeverOGMd, &_s7Combine19CurrentValueSubjectCySbs5NeverOGMR, MEMORY[0x1E695BFB0]);
  lazy protocol witness table accessor for type OS_dispatch_queue and conformance OS_dispatch_queue();
  v32 = v44;
  Publisher.receive<A>(on:options:)();
  outlined destroy of NSObject?(v11, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMR);

  v33 = swift_allocObject();
  swift_weakInit();
  v34 = swift_allocObject();
  v35 = v47;
  *(v34 + 16) = v33;
  *(v34 + 24) = v35;
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type Publishers.ReceiveOn<CurrentValueSubject<Bool, Never>, OS_dispatch_queue> and conformance Publishers.ReceiveOn<A, B>, &_s7Combine10PublishersO9ReceiveOnVy_AA19CurrentValueSubjectCySbs5NeverOGSo17OS_dispatch_queueCGMd, &_s7Combine10PublishersO9ReceiveOnVy_AA19CurrentValueSubjectCySbs5NeverOGSo17OS_dispatch_queueCGMR, MEMORY[0x1E695BE98]);

  v36 = v46;
  Publisher<>.sink(receiveValue:)();

  (*(v45 + 8))(v32, v36);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v37 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = partial apply for closure #4 in PlaybackSyncer.connect(toLink:withExistingRemoteParticipants:);
  aBlock[5] = v37;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_1;
  v38 = _Block_copy(aBlock);

  v39 = v48;
  static DispatchQoS.unspecified.getter();
  v55 = MEMORY[0x1E69E7CC0];
  _s10Foundation4UUIDVACSHAAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x1E69E6328]);
  v40 = v50;
  v41 = v53;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1B27147B0](0, v39, v40, v38);
  _Block_release(v38);
  (*(v52 + 8))(v40, v41);
  (*(v49 + 8))(v39, v51);
}

uint64_t closure #1 in PlaybackSyncer.connect(toLink:withExistingRemoteParticipants:)(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  v26 = a2;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v29 = *(v4 - 8);
  v30 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v27 = *(v7 - 8);
  v28 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *a1;
  v14 = *(a1 + 1);
  v15 = *(a1 + 2);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v24 = *(result + 96);

    v17 = swift_allocObject();
    swift_beginAccess();
    swift_weakLoadStrong();
    swift_weakInit();

    (*(v11 + 16))(&v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v26, v10);
    v18 = (*(v11 + 80) + 48) & ~*(v11 + 80);
    v19 = swift_allocObject();
    *(v19 + 16) = v17;
    *(v19 + 24) = v25;
    *(v19 + 32) = v14;
    *(v19 + 40) = v15;
    (*(v11 + 32))(v19 + v18, v13, v10);
    aBlock[4] = partial apply for closure #1 in closure #1 in PlaybackSyncer.connect(toLink:withExistingRemoteParticipants:);
    aBlock[5] = v19;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor_127;
    v20 = _Block_copy(aBlock);

    outlined copy of Data._Representation(v14, v15);
    static DispatchQoS.unspecified.getter();
    v31 = MEMORY[0x1E69E7CC0];
    _s10Foundation4UUIDVACSHAAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x1E69E6328]);
    v21 = v30;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v22 = v24;
    MEMORY[0x1B27147B0](0, v9, v6, v20);
    _Block_release(v20);

    (*(v29 + 8))(v6, v21);
    (*(v27 + 8))(v9, v28);
  }

  return result;
}

uint64_t closure #1 in closure #1 in PlaybackSyncer.connect(toLink:withExistingRemoteParticipants:)(uint64_t a1, unsigned __int8 a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v10[0] = a2;
    v11 = a3;
    v12 = a4;
    PlaybackSyncer.receiveMessage(message:from:)(v10, a5);
  }

  return result;
}

uint64_t closure #2 in PlaybackSyncer.connect(toLink:withExistingRemoteParticipants:)(uint64_t a1, uint64_t a2)
{
  v23 = a1;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v24 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v14 = *(result + 96);
    v22 = v6;
    v21 = v14;

    v15 = swift_allocObject();
    swift_beginAccess();
    swift_weakLoadStrong();
    swift_weakInit();

    (*(v10 + 16))(&v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v23, v9);
    v16 = (*(v10 + 80) + 24) & ~*(v10 + 80);
    v17 = swift_allocObject();
    *(v17 + 16) = v15;
    (*(v10 + 32))(v17 + v16, v12, v9);
    aBlock[4] = partial apply for closure #1 in closure #2 in PlaybackSyncer.connect(toLink:withExistingRemoteParticipants:);
    aBlock[5] = v17;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor_120;
    v18 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    v25 = MEMORY[0x1E69E7CC0];
    _s10Foundation4UUIDVACSHAAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x1E69E6328]);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v19 = v21;
    MEMORY[0x1B27147B0](0, v8, v5, v18);
    _Block_release(v18);

    (*(v3 + 8))(v5, v2);
    (*(v24 + 8))(v8, v22);
  }

  return result;
}

uint64_t closure #1 in closure #2 in PlaybackSyncer.connect(toLink:withExistingRemoteParticipants:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    (*(*result + 504))(a2);
  }

  return result;
}

void closure #3 in PlaybackSyncer.connect(toLink:withExistingRemoteParticipants:)(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    if (v4)
    {
      PlaybackSyncer.sendCatchupRequestMessage()();
    }

    else if (*(a3 + 16))
    {
      v6 = Strong;
      if (one-time initialization token for playback != -1)
      {
        swift_once();
      }

      v7 = type metadata accessor for Logger();
      __swift_project_value_buffer(v7, static Logger.playback);

      v8 = Logger.logObject.getter();
      v9 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        v11 = swift_slowAlloc();
        v19[0] = v11;
        *v10 = 136315138;
        type metadata accessor for UUID();
        _s10Foundation4UUIDVACSHAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
        v12 = Set.description.getter();
        v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, v19);

        *(v10 + 4) = v14;
        _os_log_impl(&dword_1AEE80000, v8, v9, "PlaybackSync: Requesting catchup due to existing joined participants:%s.", v10, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v11);
        MEMORY[0x1B2715BA0](v11, -1, -1);
        MEMORY[0x1B2715BA0](v10, -1, -1);
      }

      swift_beginAccess();
      *(v6 + 88) = a3;

      PlaybackSyncer.sendCatchupRequestMessage()();
    }

    else
    {
      if (one-time initialization token for playback != -1)
      {
        swift_once();
      }

      v15 = type metadata accessor for Logger();
      __swift_project_value_buffer(v15, static Logger.playback);
      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&dword_1AEE80000, v16, v17, "PlaybackSync: Catchup not needed", v18, 2u);
        MEMORY[0x1B2715BA0](v18, -1, -1);
      }
    }
  }
}

uint64_t closure #4 in PlaybackSyncer.connect(toLink:withExistingRemoteParticipants:)(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    PlaybackSyncer.scheduleTransportStateTakeoverTimer()();
  }

  return result;
}

uint64_t PlaybackSyncer.replaceCoordinator(coordinator:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v18 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS();
  v9 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v3 + 96);
  v12 = swift_allocObject();
  swift_weakInit();
  v13 = swift_allocObject();
  v13[2] = v12;
  v13[3] = a1;
  v13[4] = a2;
  aBlock[4] = partial apply for closure #1 in PlaybackSyncer.replaceCoordinator(coordinator:);
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_13;
  v14 = _Block_copy(aBlock);

  swift_unknownObjectRetain();
  static DispatchQoS.unspecified.getter();
  v19 = MEMORY[0x1E69E7CC0];
  _s10Foundation4UUIDVACSHAAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x1E69E6328]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1B27147B0](0, v11, v8, v14);
  _Block_release(v14);
  (*(v18 + 8))(v8, v6);
  (*(v9 + 8))(v11, v17);
}

uint64_t closure #1 in PlaybackSyncer.replaceCoordinator(coordinator:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = result;
    v6 = *(*result + 408);
    v7 = swift_unknownObjectRetain();
    v8 = v6(v7, a3);
    if ((*(*v5 + 424))(v8))
    {
      swift_unknownObjectRelease();
      PlaybackSyncer.sendCatchupRequestMessage()();
    }
  }

  return result;
}

uint64_t PlaybackSyncer.replaceCoordinator(avPlaybackCoordinator:localParticipantUUID:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v23[0] = a1;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v26 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v24 = *(v8 - 8);
  v25 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23[1] = *(v3 + 96);
  v15 = swift_allocObject();
  swift_weakInit();
  (*(v12 + 16))(v14, a2, v11);
  v16 = (*(v12 + 80) + 24) & ~*(v12 + 80);
  v17 = (v13 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  *(v18 + 16) = v15;
  (*(v12 + 32))(v18 + v16, v14, v11);
  v19 = v23[0];
  *(v18 + v17) = v23[0];
  aBlock[4] = partial apply for closure #1 in PlaybackSyncer.replaceCoordinator(avPlaybackCoordinator:localParticipantUUID:);
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_20;
  v20 = _Block_copy(aBlock);

  v21 = v19;
  static DispatchQoS.unspecified.getter();
  v27 = MEMORY[0x1E69E7CC0];
  _s10Foundation4UUIDVACSHAAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x1E69E6328]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1B27147B0](0, v10, v7, v20);
  _Block_release(v20);
  (*(v26 + 8))(v7, v5);
  (*(v24 + 8))(v10, v25);
}

void closure #1 in PlaybackSyncer.replaceCoordinator(avPlaybackCoordinator:localParticipantUUID:)(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    if (one-time initialization token for playback != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, static Logger.playback);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_1AEE80000, v12, v13, "PlaybackSync: Replacing AVPlaybackCoordinator for group session", v14, 2u);
      MEMORY[0x1B2715BA0](v14, -1, -1);
    }

    (*(*v10 + 512))();
    v15 = *(v6 + 16);
    v15(v8, a2, v5);
    v16 = type metadata accessor for PlaybackSyncer.AVCoordinatorDelegateBridge(0);
    v17 = objc_allocWithZone(v16);
    v18 = &v17[OBJC_IVAR____TtCC15GroupActivities14PlaybackSyncer27AVCoordinatorDelegateBridge_delegate];
    *&v17[OBJC_IVAR____TtCC15GroupActivities14PlaybackSyncer27AVCoordinatorDelegateBridge_delegate + 8] = 0;
    swift_unknownObjectWeakInit();
    v15(&v17[OBJC_IVAR____TtCC15GroupActivities14PlaybackSyncer27AVCoordinatorDelegateBridge_localParticipantID], v8, v5);
    swift_beginAccess();
    *(v18 + 1) = &protocol witness table for PlaybackSyncer;
    swift_unknownObjectWeakAssign();
    v22.receiver = v17;
    v22.super_class = v16;
    v19 = objc_msgSendSuper2(&v22, sel_init);
    (*(v6 + 8))(v8, v5);
    [a3 setCoordinationMediumDelegate_];
    v20 = v10[13];
    v10[13] = v19;
    v21 = v19;

    (*(*v10 + 488))(a3, &protocol witness table for AVPlaybackCoordinator);
  }
}

void PlaybackSyncer.participantLeft(_:)(uint64_t a1)
{
  v2 = v1;
  v79 = a1;
  v3 = type metadata accessor for UUID();
  v80 = *(v3 - 8);
  v4 = MEMORY[0x1EEE9AC00](v3);
  v74 = &v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v71 = &v70 - v7;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v70 - v8;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
  MEMORY[0x1EEE9AC00](v77);
  v11 = &v70 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v72 = &v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v78 = &v70 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v70 - v17;
  v19 = type metadata accessor for DispatchPredicate();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = (&v70 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = v2[12];
  *v22 = v23;
  (*(v20 + 104))(v22, *MEMORY[0x1E69E8020], v19);
  v24 = v23;
  v25 = _dispatchPreconditionTest(_:)();
  v27 = *(v20 + 8);
  v26 = v20 + 8;
  v27(v22, v19);
  if ((v25 & 1) == 0)
  {
    __break(1u);
    goto LABEL_25;
  }

  v70 = v9;
  v28 = v80;
  v75 = *(v80 + 16);
  v76 = v80 + 16;
  v75(v18, v79, v3);
  v29 = *(v28 + 56);
  v30 = 1;
  v31 = v3;
  v32 = v29(v18, 0, 1, v3);
  v33 = *(*v2 + 424);
  v73 = v2;
  if (v33(v32))
  {
    v35 = v34;
    ObjectType = swift_getObjectType();
    v37 = v78;
    (*(v35 + 64))(ObjectType, v35);
    swift_unknownObjectRelease();
    v30 = 0;
  }

  else
  {
    v37 = v78;
  }

  v2 = v31;
  v29(v37, v30, 1, v31);
  v38 = *(v77 + 48);
  outlined init with copy of UUID?(v18, v11);
  outlined init with copy of UUID?(v37, &v11[v38]);
  v39 = *(v80 + 48);
  if (v39(v11, 1, v31) == 1)
  {
    outlined destroy of NSObject?(v37, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    outlined destroy of NSObject?(v18, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v40 = v39(&v11[v38], 1, v31);
    v26 = v79;
    if (v40 == 1)
    {
      outlined destroy of NSObject?(v11, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
LABEL_19:
      if (one-time initialization token for playback != -1)
      {
        swift_once();
      }

      v60 = type metadata accessor for Logger();
      __swift_project_value_buffer(v60, static Logger.playback);
      v61 = v71;
      v75(v71, v26, v2);
      v62 = Logger.logObject.getter();
      v63 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v62, v63))
      {
        v64 = swift_slowAlloc();
        v65 = swift_slowAlloc();
        v81 = v65;
        *v64 = 136315138;
        _s10Foundation4UUIDVACSHAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
        v66 = dispatch thunk of CustomStringConvertible.description.getter();
        v68 = v67;
        (*(v80 + 8))(v61, v2);
        v69 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v66, v68, &v81);

        *(v64 + 4) = v69;
        _os_log_impl(&dword_1AEE80000, v62, v63, "PlaybackSync: Ignoring removal of local participant: %s", v64, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v65);
        MEMORY[0x1B2715BA0](v65, -1, -1);
        MEMORY[0x1B2715BA0](v64, -1, -1);
      }

      else
      {

        (*(v80 + 8))(v61, v2);
      }

      return;
    }

    goto LABEL_10;
  }

  v41 = v72;
  outlined init with copy of UUID?(v11, v72);
  if (v39(&v11[v38], 1, v31) == 1)
  {
    outlined destroy of NSObject?(v78, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    outlined destroy of NSObject?(v18, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    (*(v80 + 8))(v41, v31);
    v26 = v79;
LABEL_10:
    outlined destroy of NSObject?(v11, &_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
    goto LABEL_11;
  }

  v56 = v80;
  v57 = v70;
  (*(v80 + 32))(v70, &v11[v38], v2);
  _s10Foundation4UUIDVACSHAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
  v58 = dispatch thunk of static Equatable.== infix(_:_:)();
  v59 = *(v56 + 8);
  v59(v57, v2);
  outlined destroy of NSObject?(v78, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  outlined destroy of NSObject?(v18, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v59(v41, v2);
  outlined destroy of NSObject?(v11, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v26 = v79;
  if (v58)
  {
    goto LABEL_19;
  }

LABEL_11:
  if (one-time initialization token for playback != -1)
  {
LABEL_25:
    swift_once();
  }

  v42 = type metadata accessor for Logger();
  __swift_project_value_buffer(v42, static Logger.playback);
  v43 = v74;
  v75(v74, v26, v2);
  v44 = Logger.logObject.getter();
  v45 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v81 = v47;
    *v46 = 136315138;
    _s10Foundation4UUIDVACSHAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v48 = dispatch thunk of CustomStringConvertible.description.getter();
    v50 = v49;
    (*(v80 + 8))(v43, v2);
    v51 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v48, v50, &v81);

    *(v46 + 4) = v51;
    _os_log_impl(&dword_1AEE80000, v44, v45, "PlaybackSync: Cleaning up after participant left: %s", v46, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v47);
    MEMORY[0x1B2715BA0](v47, -1, -1);
    MEMORY[0x1B2715BA0](v46, -1, -1);
  }

  else
  {

    v52 = (*(v80 + 8))(v43, v2);
  }

  if ((*(*v73 + 400))(v52))
  {
    v54 = v53;
    v55 = swift_getObjectType();
    (*(v54 + 24))(v26, v55, v54);
    swift_unknownObjectRelease();
  }

  PlaybackSyncer.handleWaitingFor(participant:)(v26);
}

Swift::Void __swiftcall PlaybackSyncer.cleanUp()()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v50 = *(v2 - 8);
  v3 = MEMORY[0x1EEE9AC00](v2);
  v5 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v44 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v44 - v12;
  v14 = type metadata accessor for DispatchPredicate();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = (&v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = v1[12];
  *v17 = v18;
  (*(v15 + 104))(v17, *MEMORY[0x1E69E8020], v14);
  v19 = v18;
  v20 = _dispatchPreconditionTest(_:)();
  v22 = *(v15 + 8);
  v21 = (v15 + 8);
  v23 = v22(v17, v14);
  if ((v20 & 1) == 0)
  {
    __break(1u);
LABEL_23:
    swift_once();
LABEL_7:
    v25 = type metadata accessor for Logger();
    __swift_project_value_buffer(v25, static Logger.playback);
    swift_unknownObjectRetain();

    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();
    swift_unknownObjectRelease();

    v49 = v27;
    if (os_log_type_enabled(v26, v27))
    {
      v46 = v26;
      v47 = v20;
      v28 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v51 = v45;
      *v28 = 136315394;
      if ((*(*v1 + 424))())
      {
        v30 = v29;
        ObjectType = swift_getObjectType();
        (*(v30 + 72))(ObjectType, v30);
        swift_unknownObjectRelease();
        v32 = 0;
      }

      else
      {
        v32 = 1;
      }

      v33 = v48;
      v34 = v50;
      (*(v50 + 56))(v13, v32, 1, v2);
      outlined init with copy of UUID?(v13, v11);
      if ((*(v34 + 48))(v11, 1, v2) == 1)
      {
        v35 = 0xE300000000000000;
        v36 = 7104878;
      }

      else
      {
        (*(v34 + 32))(v7, v11, v2);
        (*(v34 + 16))(v33, v7, v2);
        v36 = String.init<A>(reflecting:)();
        v35 = v37;
        (*(v34 + 8))(v7, v2);
      }

      outlined destroy of NSObject?(v13, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v35, &v51);

      *(v28 + 4) = v38;
      *(v28 + 12) = 2112;
      *(v28 + 14) = v21;
      v39 = v44;
      *v44 = v21;
      swift_unknownObjectRetain();
      v40 = v46;
      _os_log_impl(&dword_1AEE80000, v46, v49, "PlaybackSync: Cleaning up playback coordinator for session: %s coordinator:%@", v28, 0x16u);
      outlined destroy of NSObject?(v39, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x1B2715BA0](v39, -1, -1);
      v41 = v45;
      __swift_destroy_boxed_opaque_existential_0(v45);
      MEMORY[0x1B2715BA0](v41, -1, -1);
      MEMORY[0x1B2715BA0](v28, -1, -1);

      v20 = v47;
    }

    else
    {
    }

    [v21 setCoordinationMediumDelegate_];
    if (v20)
    {
      v42 = [v20 player];
      if (v42)
      {
        v43 = v42;
        [v42 setBackgroundPIPAuthorizationToken_];
      }
    }

    goto LABEL_20;
  }

  if (!(*(*v1 + 400))(v23))
  {
    return;
  }

  objc_opt_self();
  v24 = swift_dynamicCastObjCClass();
  if (v24)
  {
    v21 = v24;
    objc_opt_self();
    v20 = swift_dynamicCastObjCClass();
    if (v20)
    {
      swift_unknownObjectRetain();
    }

    v48 = v5;
    if (one-time initialization token for playback == -1)
    {
      goto LABEL_7;
    }

    goto LABEL_23;
  }

LABEL_20:
  swift_unknownObjectRelease();
}

uint64_t PlaybackSyncer.shouldDismissPlayback(allowingCancellation:completionHandler:)(char a1, uint64_t a2, uint64_t a3)
{
  result = (*(*v3 + 448))();
  if (result)
  {
    v9 = v8;
    ObjectType = swift_getObjectType();
    (*(v9 + 8))(a1 & 1, a2, a3, ObjectType, v9);

    return swift_unknownObjectRelease();
  }

  return result;
}

Swift::Void __swiftcall PlaybackSyncer.shareLocalParticipantState(participantState:)(NSDictionary participantState)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v16 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchQoS();
  v7 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v2 + 96);
  v10 = swift_allocObject();
  swift_weakInit();
  v11 = swift_allocObject();
  v11[2].super.isa = v10;
  v11[3].super.isa = participantState.super.isa;
  aBlock[4] = partial apply for closure #1 in PlaybackSyncer.shareLocalParticipantState(participantState:);
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_27;
  v12 = _Block_copy(aBlock);

  v13 = participantState.super.isa;
  static DispatchQoS.unspecified.getter();
  v17 = MEMORY[0x1E69E7CC0];
  _s10Foundation4UUIDVACSHAAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x1E69E6328]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1B27147B0](0, v9, v6, v12);
  _Block_release(v12);
  (*(v16 + 8))(v6, v4);
  (*(v7 + 8))(v9, v15);
}

void closure #1 in PlaybackSyncer.shareLocalParticipantState(participantState:)(uint64_t a1, void *a2)
{
  v61 = *MEMORY[0x1E69E9840];
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = (*(*Strong + 424))();
    if (v9)
    {
      v11 = v9;
      v58 = v10;
      if (one-time initialization token for playback != -1)
      {
        swift_once();
      }

      v12 = type metadata accessor for Logger();
      __swift_project_value_buffer(v12, static Logger.playback);
      v13 = a2;
      swift_unknownObjectRetain();
      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.default.getter();
      swift_unknownObjectRelease();

      v16 = os_log_type_enabled(v14, v15);
      v59 = v11;
      if (v16)
      {
        v17 = swift_slowAlloc();
        v56 = v15;
        v18 = v17;
        v19 = swift_slowAlloc();
        v55 = v19;
        v57 = swift_slowAlloc();
        v60[0] = v57;
        v53 = v18;
        *v18 = 138412546;
        *(v18 + 4) = v13;
        *v19 = v13;
        *(v18 + 12) = 2080;
        ObjectType = swift_getObjectType();
        v54 = v14;
        v21 = ObjectType;
        v22 = v58;
        v52 = v3;
        v23 = *(v58 + 72);
        v24 = v13;
        v23(v21, v22);
        _s10Foundation4UUIDVACSHAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
        v25 = v52;
        v26 = dispatch thunk of CustomStringConvertible.description.getter();
        v28 = v27;
        (*(v4 + 8))(v6, v25);
        v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v28, v60);

        v30 = v53;
        *(v53 + 14) = v29;
        v14 = v54;
        _os_log_impl(&dword_1AEE80000, v54, v56, "PlaybackSync: Broadcasting participant state:%@ to group session:%s", v30, 0x16u);
        v31 = v55;
        outlined destroy of NSObject?(v55, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        MEMORY[0x1B2715BA0](v31, -1, -1);
        v32 = v57;
        __swift_destroy_boxed_opaque_existential_0(v57);
        MEMORY[0x1B2715BA0](v32, -1, -1);
        MEMORY[0x1B2715BA0](v30, -1, -1);
      }

      v33 = objc_opt_self();
      v60[0] = 0;
      v34 = [v33 dataWithJSONObject:v13 options:0 error:v60];
      v35 = v60[0];
      if (v34)
      {
        v36 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v38 = v37;

        v39 = *(*v8 + 216);
        v40 = v13;
        v39(v13);
        LOBYTE(v60[0]) = 0;
        v60[1] = v36;
        v60[2] = v38;
        outlined copy of Data._Representation(v36, v38);
        PlaybackSyncer.sendMessage(_:to:)(v60, 0);

        outlined consume of Data._Representation(v36, v38);
        swift_unknownObjectRelease();
        outlined consume of Data._Representation(v36, v38);
      }

      else
      {
        v41 = v35;
        v42 = _convertNSErrorToError(_:)();

        swift_willThrow();
        v43 = v42;
        v44 = Logger.logObject.getter();
        v45 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v44, v45))
        {
          v46 = swift_slowAlloc();
          v47 = swift_slowAlloc();
          v60[0] = v47;
          *v46 = 136315138;
          swift_getErrorValue();
          v48 = Error.localizedDescription.getter();
          v50 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v48, v49, v60);

          *(v46 + 4) = v50;
          _os_log_impl(&dword_1AEE80000, v44, v45, "PlaybackSync: shareLocalParticipantState Error:%s", v46, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v47);
          MEMORY[0x1B2715BA0](v47, -1, -1);
          MEMORY[0x1B2715BA0](v46, -1, -1);
          swift_unknownObjectRelease();
        }

        else
        {

          swift_unknownObjectRelease();
        }
      }
    }

    else
    {
    }
  }
}

uint64_t PlaybackSyncer.Message.init(type:payload:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = result;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  return result;
}

Swift::Void __swiftcall PlaybackSyncer.shareTransportControlState(itemIdentifier:transportControlState:)(Swift::String itemIdentifier, NSDictionary transportControlState)
{
  v3 = v2;
  object = itemIdentifier._object;
  countAndFlagsBits = itemIdentifier._countAndFlagsBits;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v19 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DispatchQoS();
  v10 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v3 + 96);
  v13 = swift_allocObject();
  swift_weakInit();
  v14 = swift_allocObject();
  v14[2].super.isa = v13;
  v14[3].super.isa = transportControlState.super.isa;
  v14[4].super.isa = countAndFlagsBits;
  v14[5].super.isa = object;
  aBlock[4] = partial apply for closure #1 in PlaybackSyncer.shareTransportControlState(itemIdentifier:transportControlState:);
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_34;
  v15 = _Block_copy(aBlock);

  v16 = transportControlState.super.isa;

  static DispatchQoS.unspecified.getter();
  v20 = MEMORY[0x1E69E7CC0];
  _s10Foundation4UUIDVACSHAAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x1E69E6328]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1B27147B0](0, v12, v9, v15);
  _Block_release(v15);
  (*(v19 + 8))(v9, v7);
  (*(v10 + 8))(v12, v18);
}

void closure #1 in PlaybackSyncer.shareTransportControlState(itemIdentifier:transportControlState:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v67 = *MEMORY[0x1E69E9840];
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    if (!(*(*Strong + 424))())
    {
LABEL_12:

      return;
    }

    v62 = v8;
    v14 = v13;
    if (one-time initialization token for playback != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    v16 = __swift_project_value_buffer(v15, static Logger.playback);
    v17 = a2;
    swift_unknownObjectRetain();
    v61 = v16;
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    swift_unknownObjectRelease();

    v20 = os_log_type_enabled(v18, v19);
    v63 = a3;
    v64 = a4;
    if (v20)
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v59 = v22;
      v60 = swift_slowAlloc();
      v66[0] = v60;
      *v21 = 138412546;
      *(v21 + 4) = v17;
      *v22 = v17;
      *(v21 + 12) = 2080;
      ObjectType = swift_getObjectType();
      v57 = v19;
      v58 = v18;
      v24 = *(v14 + 72);
      v25 = v17;
      v24(ObjectType, v14);
      _s10Foundation4UUIDVACSHAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v26 = dispatch thunk of CustomStringConvertible.description.getter();
      v28 = v27;
      (*(v62 + 8))(v10, v7);
      v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v28, v66);

      *(v21 + 14) = v29;
      v30 = v58;
      _os_log_impl(&dword_1AEE80000, v58, v57, "PlaybackSync: Broadcasting transport control state:%@ to group session:%s", v21, 0x16u);
      v31 = v59;
      outlined destroy of NSObject?(v59, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x1B2715BA0](v31, -1, -1);
      v32 = v60;
      __swift_destroy_boxed_opaque_existential_0(v60);
      MEMORY[0x1B2715BA0](v32, -1, -1);
      MEMORY[0x1B2715BA0](v21, -1, -1);
    }

    else
    {
    }

    v33 = objc_opt_self();
    v66[0] = 0;
    v34 = [v33 dataWithJSONObject:v17 options:0 error:v66];
    v35 = v66[0];
    if (v34)
    {
      v36 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v38 = v37;

      v39 = *(*v12 + 248);
      v40 = v17;
      v41 = v64;

      v42 = v39(v66);
      v44 = v43;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v65 = *v44;
      *v44 = 0x8000000000000000;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v40, v63, v41, isUniquelyReferenced_nonNull_native);

      *v44 = v65;
      v42(v66, 0);
      LOBYTE(v66[0]) = 1;
      v66[1] = v36;
      v66[2] = v38;
      outlined copy of Data._Representation(v36, v38);
      PlaybackSyncer.sendMessage(_:to:)(v66, 0);
      outlined consume of Data._Representation(v36, v38);
      if ((v12[72] & 1) == 0)
      {
        PlaybackSyncer.useExistingState()();
      }

      swift_unknownObjectRelease();
      outlined consume of Data._Representation(v36, v38);
      goto LABEL_12;
    }

    v46 = v35;
    v47 = _convertNSErrorToError(_:)();

    swift_willThrow();
    v48 = v47;
    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v66[0] = v52;
      *v51 = 136315138;
      swift_getErrorValue();
      v53 = Error.localizedDescription.getter();
      v55 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v53, v54, v66);

      *(v51 + 4) = v55;
      _os_log_impl(&dword_1AEE80000, v49, v50, "PlaybackSync: shareTransportControlState Error:%s", v51, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v52);
      MEMORY[0x1B2715BA0](v52, -1, -1);
      MEMORY[0x1B2715BA0](v51, -1, -1);
      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }
  }
}

uint64_t PlaybackSyncer.reloadTransportControlStateForItem(itemIdentifier:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v21 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for DispatchQoS();
  v12 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v4 + 96);
  v15 = swift_allocObject();
  swift_weakInit();
  v16 = swift_allocObject();
  v16[2] = v15;
  v16[3] = a1;
  v16[4] = a2;
  v16[5] = a3;
  v16[6] = a4;
  aBlock[4] = partial apply for closure #1 in PlaybackSyncer.reloadTransportControlStateForItem(itemIdentifier:completion:);
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_41;
  v17 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v22 = MEMORY[0x1E69E7CC0];
  _s10Foundation4UUIDVACSHAAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x1E69E6328]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1B27147B0](0, v14, v11, v17);
  _Block_release(v17);
  (*(v21 + 8))(v11, v9);
  (*(v12 + 8))(v14, v20);
}

uint64_t closure #1 in PlaybackSyncer.reloadTransportControlStateForItem(itemIdentifier:completion:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t (*a4)(void), uint64_t a5)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v8 = result;
    if (!(*(*result + 424))())
    {
    }

    v10 = v9;
    if (one-time initialization token for playback != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, static Logger.playback);
    swift_retain_n();
    swift_unknownObjectRetain_n();

    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v53[0] = v48;
      *v14 = 136315906;
      *(v14 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a2, a3, v53);
      *(v14 + 12) = 1024;
      ObjectType = swift_getObjectType();
      v46 = *(v10 + 80);
      log = v12;
      v46(ObjectType, v10);
      CurrentValueSubject.value.getter();
      swift_unknownObjectRelease();

      *(v14 + 14) = v52;
      swift_unknownObjectRelease();
      *(v14 + 18) = 2080;
      swift_beginAccess();
      type metadata accessor for UUID();
      v49 = a2;
      _s10Foundation4UUIDVACSHAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      v45 = v13;

      v16 = Set.description.getter();
      v18 = v17;

      v19 = v16;
      a2 = v49;
      v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v18, v53);
      v21 = v46;

      *(v14 + 20) = v20;
      *(v14 + 28) = 1024;
      LODWORD(v20) = *(v8 + 72);

      *(v14 + 30) = v20;

      _os_log_impl(&dword_1AEE80000, log, v45, "PlaybackSync: reloadTransportControlStateForItem:%s. shouldRequestCatchup:%{BOOL}d waitingForCatchupResponseFromParticipants:%s hasReceivedTransportState:%{BOOL}d", v14, 0x22u);
      swift_arrayDestroy();
      MEMORY[0x1B2715BA0](v48, -1, -1);
      MEMORY[0x1B2715BA0](v14, -1, -1);
    }

    else
    {

      swift_unknownObjectRelease_n();

      v21 = *(v10 + 80);
    }

    v22 = swift_getObjectType();
    v21(v22, v10);
    CurrentValueSubject.value.getter();

    if ((v53[0] & 1) != 0 || (v23 = swift_beginAccess(), *(*(v8 + 88) + 16)))
    {
      if (*(v8 + 72) != 1)
      {
        v40 = Logger.logObject.getter();
        v41 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v40, v41))
        {
          v42 = swift_slowAlloc();
          *v42 = 0;
          _os_log_impl(&dword_1AEE80000, v40, v41, "Playback Sync: Deferring completion handler until later", v42, 2u);
          MEMORY[0x1B2715BA0](v42, -1, -1);
        }

        swift_unknownObjectRelease();
        v43 = *(v8 + 56);
        v44 = *(v8 + 64);
        *(v8 + 56) = a4;
        *(v8 + 64) = a5;

        outlined consume of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(v43, v44);
      }
    }

    v24 = (*(*v8 + 232))(v23);
    if (*(v24 + 16))
    {
      v25 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
      if (v26)
      {
        v27 = *(*(v24 + 56) + 8 * v25);

        v28 = v27;
        v29 = Logger.logObject.getter();
        v30 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v29, v30))
        {
          v31 = swift_slowAlloc();
          v32 = swift_slowAlloc();
          *v31 = 138412290;
          *(v31 + 4) = v28;
          *v32 = v28;
          v33 = v28;
          _os_log_impl(&dword_1AEE80000, v29, v30, "PlaybackSync: applying transport control state during reload:%@", v31, 0xCu);
          outlined destroy of NSObject?(v32, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
          MEMORY[0x1B2715BA0](v32, -1, -1);
          MEMORY[0x1B2715BA0](v31, -1, -1);
        }

        if ((*(*v8 + 400))())
        {
          v35 = v34;
          v36 = swift_getObjectType();
          (*(v35 + 8))(v28, v36, v35);
          swift_unknownObjectRelease();
        }

        $defer #1 () in closure #1 in PlaybackSyncer.reloadTransportControlStateForItem(itemIdentifier:completion:)(a4);
        swift_unknownObjectRelease();
      }
    }

    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_1AEE80000, v37, v38, "PlaybackSync: Could not find state for this item identifier", v39, 2u);
      MEMORY[0x1B2715BA0](v39, -1, -1);
    }

    $defer #1 () in closure #1 in PlaybackSyncer.reloadTransportControlStateForItem(itemIdentifier:completion:)(a4);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t $defer #1 () in closure #1 in PlaybackSyncer.reloadTransportControlStateForItem(itemIdentifier:completion:)(uint64_t (*a1)(void))
{
  if (one-time initialization token for playback != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.playback);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1AEE80000, v3, v4, "PlaybackSync: reloadTransportControlStateForItem finished", v5, 2u);
    MEMORY[0x1B2715BA0](v5, -1, -1);
  }

  return a1();
}

uint64_t PlaybackSyncer.sendCatchupRequestMessage()()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v14[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v6 = *(v1 + 96);
  *v5 = v6;
  (*(v3 + 104))(v5, *MEMORY[0x1E69E8020], v2);
  v7 = v6;
  LOBYTE(v6) = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v5, v2);
  if (v6)
  {
    if (one-time initialization token for playback == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Logger.playback);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_1AEE80000, v9, v10, "PlaybackSync: Catchup needed. Broadcasting catchup request.", v11, 2u);
    MEMORY[0x1B2715BA0](v11, -1, -1);
  }

  v14[0] = 2;
  v15 = xmmword_1AF00DBA0;
  PlaybackSyncer.sendMessage(_:to:)(v14, 0);
  return outlined consume of Data._Representation(0, 0xC000000000000000);
}

void PlaybackSyncer.receiveMessage(message:from:)(unsigned __int8 *a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchPredicate();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = (&v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v35 = *a1;
  v14 = *(a1 + 1);
  v36 = *(a1 + 2);
  v15 = *(v3 + 96);
  *v13 = v15;
  (*(v11 + 104))(v13, *MEMORY[0x1E69E8020], v10);
  v16 = v15;
  LOBYTE(v15) = _dispatchPreconditionTest(_:)();
  (*(v11 + 8))(v13, v10);
  if (v15)
  {
    if (one-time initialization token for playback == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v17 = type metadata accessor for Logger();
  __swift_project_value_buffer(v17, static Logger.playback);
  v18 = *(v7 + 16);
  v34 = a2;
  v18(v9, a2, v6);
  v19 = v36;
  outlined copy of Data._Representation(v14, v36);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();
  v22 = os_log_type_enabled(v20, v21);
  v33 = v14;
  if (v22)
  {
    v23 = swift_slowAlloc();
    v32 = v3;
    v24 = v23;
    v25 = swift_slowAlloc();
    v37 = v25;
    *v24 = 134218242;
    v26 = v14;
    v27 = v35;
    *(v24 + 4) = v35;
    outlined consume of Data._Representation(v26, v19);
    *(v24 + 12) = 2080;
    _s10Foundation4UUIDVACSHAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v28 = dispatch thunk of CustomStringConvertible.description.getter();
    v30 = v29;
    (*(v7 + 8))(v9, v6);
    v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v30, &v37);
    v19 = v36;

    *(v24 + 14) = v31;
    _os_log_impl(&dword_1AEE80000, v20, v21, "PlaybackSync: Received message of type:%ld from participant:%s", v24, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v25);
    MEMORY[0x1B2715BA0](v25, -1, -1);
    MEMORY[0x1B2715BA0](v24, -1, -1);
  }

  else
  {
    outlined consume of Data._Representation(v14, v19);

    (*(v7 + 8))(v9, v6);
    v27 = v35;
  }

  if (v27 > 1)
  {
    if (v27 == 2)
    {
      PlaybackSyncer.receiveCatchupRequestMessage(from:)(v34);
    }

    else
    {
      PlaybackSyncer.receiveCatchupResponseMessage(payload:from:)(v33, v19, v34);
    }
  }

  else if (v27)
  {
    PlaybackSyncer.receiveTransportControlMessage(payload:)();
  }

  else
  {
    PlaybackSyncer.receiveParticipantMessage(payload:from:)(v33);
  }
}

uint64_t PlaybackSyncer.receiveParticipantMessage(payload:from:)(void *a1)
{
  v2 = v1;
  v60 = *MEMORY[0x1E69E9840];
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = v2[12];
  *v11 = v12;
  (*(v9 + 104))(v11, *MEMORY[0x1E69E8020], v8);
  v13 = v12;
  LOBYTE(v12) = _dispatchPreconditionTest(_:)();
  v14 = (*(v9 + 8))(v11, v8);
  if ((v12 & 1) == 0)
  {
    __break(1u);
LABEL_22:
    swift_once();
    goto LABEL_4;
  }

  result = (*(*v2 + 424))(v14);
  if (!result)
  {
    return result;
  }

  v56 = v16;
  if (one-time initialization token for playback != -1)
  {
    goto LABEL_22;
  }

LABEL_4:
  v17 = type metadata accessor for Logger();
  __swift_project_value_buffer(v17, static Logger.playback);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v55 = a1;
    v21 = v7;
    v22 = v4;
    v23 = v5;
    v24 = v20;
    *v20 = 0;
    _os_log_impl(&dword_1AEE80000, v18, v19, "PlaybackSync: Receiving ParticipantState", v20, 2u);
    v25 = v24;
    v5 = v23;
    v4 = v22;
    v7 = v21;
    MEMORY[0x1B2715BA0](v25, -1, -1);
  }

  v26 = objc_opt_self();
  isa = Data._bridgeToObjectiveC()().super.isa;
  v57 = 0;
  v28 = [v26 JSONObjectWithData:isa options:0 error:&v57];

  v29 = v57;
  if (v28)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    outlined init with take of Any(v58, v59);
    outlined init with copy of Any(v59, v58);
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NSDictionary, 0x1E695DF20);
    if (swift_dynamicCast())
    {
      v30 = v57;
      if ((*(*v2 + 400))())
      {
        v32 = v31;
        ObjectType = swift_getObjectType();
        (*(v32 + 16))(v30, ObjectType, v32);
        swift_unknownObjectRelease();
      }

      swift_unknownObjectRetain();
      v34 = v30;
      v35 = Logger.logObject.getter();
      v36 = static os_log_type_t.default.getter();

      swift_unknownObjectRelease();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        v54 = swift_slowAlloc();
        v55 = swift_slowAlloc();
        *&v58[0] = v55;
        *v37 = 136315394;
        v38 = swift_getObjectType();
        (*(v56 + 72))(v38);
        _s10Foundation4UUIDVACSHAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
        v39 = dispatch thunk of CustomStringConvertible.description.getter();
        v41 = v40;
        (*(v5 + 8))(v7, v4);
        v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v41, v58);

        *(v37 + 4) = v42;
        *(v37 + 12) = 2112;
        *(v37 + 14) = v34;
        v43 = v54;
        *v54 = v34;
        v44 = v34;
        _os_log_impl(&dword_1AEE80000, v35, v36, "PlaybackSync: Received new participant state for group session %s: %@", v37, 0x16u);
        outlined destroy of NSObject?(v43, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        MEMORY[0x1B2715BA0](v43, -1, -1);
        v45 = v55;
        __swift_destroy_boxed_opaque_existential_0(v55);
        MEMORY[0x1B2715BA0](v45, -1, -1);
        MEMORY[0x1B2715BA0](v37, -1, -1);
        swift_unknownObjectRelease();
      }

      else
      {

        swift_unknownObjectRelease();
      }
    }

    else
    {
      v51 = Logger.logObject.getter();
      v52 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        *v53 = 0;
        _os_log_impl(&dword_1AEE80000, v51, v52, "PlaybackSync: Could not cast participant state to dictionary.", v53, 2u);
        MEMORY[0x1B2715BA0](v53, -1, -1);
        swift_unknownObjectRelease();
      }

      else
      {

        swift_unknownObjectRelease();
      }
    }

    return __swift_destroy_boxed_opaque_existential_0(v59);
  }

  else
  {
    v46 = v29;
    v47 = _convertNSErrorToError(_:)();

    swift_willThrow();
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      *v50 = 0;
      _os_log_impl(&dword_1AEE80000, v48, v49, "PlaybackSync: Could not deserialize participant state.", v50, 2u);
      MEMORY[0x1B2715BA0](v50, -1, -1);
    }

    return swift_unknownObjectRelease();
  }
}

void PlaybackSyncer.receiveTransportControlMessage(payload:)()
{
  v1 = v0;
  v73 = *MEMORY[0x1E69E9840];
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = (&v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = v1[12];
  *v9 = v10;
  (*(v7 + 104))(v9, *MEMORY[0x1E69E8020], v6);
  v11 = v10;
  LOBYTE(v10) = _dispatchPreconditionTest(_:)();
  v12 = (*(v7 + 8))(v9, v6);
  if ((v10 & 1) == 0)
  {
    __break(1u);
LABEL_36:
    swift_once();
    goto LABEL_4;
  }

  if (!(*(*v1 + 424))(v12))
  {
    return;
  }

  v66 = v13;
  if (one-time initialization token for playback != -1)
  {
    goto LABEL_36;
  }

LABEL_4:
  v14 = type metadata accessor for Logger();
  __swift_project_value_buffer(v14, static Logger.playback);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v65 = v1;
    v18 = v3;
    v19 = v17;
    *v17 = 0;
    _os_log_impl(&dword_1AEE80000, v15, v16, "PlaybackSync: Receiving TransportControlState", v17, 2u);
    v20 = v19;
    v3 = v18;
    v1 = v65;
    MEMORY[0x1B2715BA0](v20, -1, -1);
  }

  v21 = objc_opt_self();
  isa = Data._bridgeToObjectiveC()().super.isa;
  *&v69 = 0;
  v23 = [v21 JSONObjectWithData:isa options:0 error:&v69];

  v24 = v69;
  if (v23)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    outlined init with take of Any(v71, v72);
    outlined init with copy of Any(v72, v71);
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NSDictionary, 0x1E695DF20);
    if (swift_dynamicCast())
    {
      v25 = v69;
      if ((*(*v1 + 400))())
      {
        v27 = v26;
        ObjectType = swift_getObjectType();
        (*(v27 + 8))(v25, ObjectType, v27);
        swift_unknownObjectRelease();
      }

      *&v69 = *MEMORY[0x1E6987980];
      v29 = v69;
      type metadata accessor for AVPlaybackCoordinationTransportControlStateKey(0);
      v30 = v29;
      v31 = [v25 __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
      swift_unknownObjectRelease();
      if (v31)
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        v69 = 0u;
        v70 = 0u;
      }

      v71[0] = v69;
      v71[1] = v70;
      if (*(&v70 + 1))
      {
        if (swift_dynamicCast())
        {
          v40 = v68;
          v64 = v3;
          v65 = v67;
          v41 = *(*v1 + 248);
          v42 = v25;
          v43 = v41(v71);
          v45 = v44;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&v69 = *v45;
          *v45 = 0x8000000000000000;
          specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v42, v65, v40, isUniquelyReferenced_nonNull_native);

          *v45 = v69;
          v43(v71, 0);
          v47 = v42;
          swift_unknownObjectRetain();
          v48 = Logger.logObject.getter();
          v49 = static os_log_type_t.default.getter();

          swift_unknownObjectRelease();
          if (os_log_type_enabled(v48, v49))
          {
            v50 = swift_slowAlloc();
            v63 = swift_slowAlloc();
            v65 = swift_slowAlloc();
            *&v71[0] = v65;
            *v50 = 136315394;
            v51 = swift_getObjectType();
            (*(v66 + 72))(v51);
            _s10Foundation4UUIDVACSHAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
            v52 = dispatch thunk of CustomStringConvertible.description.getter();
            v54 = v53;
            (*(v64 + 8))(v5, v2);
            v55 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v52, v54, v71);

            *(v50 + 4) = v55;
            *(v50 + 12) = 2112;
            *(v50 + 14) = v47;
            v56 = v63;
            *v63 = v47;
            v57 = v47;
            _os_log_impl(&dword_1AEE80000, v48, v49, "PlaybackSync: Received new transport control state for group session %s: %@", v50, 0x16u);
            outlined destroy of NSObject?(v56, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
            MEMORY[0x1B2715BA0](v56, -1, -1);
            v58 = v65;
            __swift_destroy_boxed_opaque_existential_0(v65);
            MEMORY[0x1B2715BA0](v58, -1, -1);
            MEMORY[0x1B2715BA0](v50, -1, -1);
          }

          if (v1[9])
          {
            __swift_destroy_boxed_opaque_existential_0(v72);
            swift_unknownObjectRelease();

            return;
          }

          PlaybackSyncer.useExistingState()();

          goto LABEL_32;
        }
      }

      else
      {
        outlined destroy of NSObject?(v71, &_sypSgMd, &_sypSgMR);
      }

      v37 = Logger.logObject.getter();
      v59 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v37, v59))
      {
        v60 = swift_slowAlloc();
        *v60 = 0;
        _os_log_impl(&dword_1AEE80000, v37, v59, "PlaybackSync: Could not decode item identifier in receiveTransportControlMessage.", v60, 2u);
        MEMORY[0x1B2715BA0](v60, -1, -1);
        v61 = v25;
      }

      else
      {
        v61 = v37;
        v37 = v25;
      }
    }

    else
    {
      v37 = Logger.logObject.getter();
      v38 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v37, v38))
      {

LABEL_32:
        swift_unknownObjectRelease();
        goto LABEL_33;
      }

      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_1AEE80000, v37, v38, "PlaybackSync: Could not cast transport control state to dictionary.", v39, 2u);
      MEMORY[0x1B2715BA0](v39, -1, -1);
    }

    swift_unknownObjectRelease();

LABEL_33:
    __swift_destroy_boxed_opaque_existential_0(v72);
    return;
  }

  v32 = v24;
  v33 = _convertNSErrorToError(_:)();

  swift_willThrow();
  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    *v36 = 0;
    _os_log_impl(&dword_1AEE80000, v34, v35, "PlaybackSync: Could not deserialize transport control state.", v36, 2u);
    MEMORY[0x1B2715BA0](v36, -1, -1);
  }

  swift_unknownObjectRelease();
}

uint64_t PlaybackSyncer.useExistingState()()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v1 + 96);
  *v5 = v6;
  (*(v3 + 104))(v5, *MEMORY[0x1E69E8020], v2);
  v7 = v6;
  LOBYTE(v6) = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v5, v2);
  if (v6)
  {
    if (one-time initialization token for playback == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Logger.playback);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_1AEE80000, v9, v10, "PlaybackSync: Using current state", v11, 2u);
    MEMORY[0x1B2715BA0](v11, -1, -1);
  }

  *(v1 + 72) = 1;
  if (*(v1 + 80))
  {

    dispatch thunk of DispatchWorkItem.cancel()();
  }

  *(v1 + 80) = 0;

  swift_beginAccess();
  *(v1 + 88) = MEMORY[0x1E69E7CD0];

  v12 = *(v1 + 56);
  if (v12)
  {
    v13 = *(v1 + 64);

    v12(v14);
    outlined consume of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(v12, v13);
    v15 = *(v1 + 56);
  }

  else
  {
    v15 = 0;
  }

  v16 = *(v1 + 64);
  *(v1 + 56) = 0;
  *(v1 + 64) = 0;
  return outlined consume of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(v15, v16);
}

uint64_t PlaybackSyncer.receiveCatchupRequestMessage(from:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *(v2 + 96);
  *v11 = v12;
  (*(v9 + 104))(v11, *MEMORY[0x1E69E8020], v8);
  v13 = v12;
  LOBYTE(v12) = _dispatchPreconditionTest(_:)();
  (*(v9 + 8))(v11, v8);
  if (v12)
  {
    if (one-time initialization token for playback == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v14 = type metadata accessor for Logger();
  __swift_project_value_buffer(v14, static Logger.playback);
  (*(v5 + 16))(v7, a1, v4);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v33[1] = v2;
    v18 = v17;
    v19 = swift_slowAlloc();
    v33[0] = a1;
    v20 = v19;
    v34 = v19;
    *v18 = 136315138;
    _s10Foundation4UUIDVACSHAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    v23 = v22;
    (*(v5 + 8))(v7, v4);
    v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v23, &v34);

    *(v18 + 4) = v24;
    _os_log_impl(&dword_1AEE80000, v15, v16, "PlaybackSync: Catchup response requested from:%s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v20);
    v25 = v20;
    a1 = v33[0];
    MEMORY[0x1B2715BA0](v25, -1, -1);
    MEMORY[0x1B2715BA0](v18, -1, -1);
  }

  else
  {

    (*(v5 + 8))(v7, v4);
  }

  PlaybackSyncer.handleWaitingFor(participant:)(a1);
  PlaybackSyncer.generateCatchupResponseMessage()(&v34);
  v26 = v34;
  v27 = v35;
  v28 = v36;
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&dword_1AEE80000, v29, v30, "PlaybackSync: Sending catchup response!", v31, 2u);
    MEMORY[0x1B2715BA0](v31, -1, -1);
  }

  LOBYTE(v34) = v26;
  v35 = v27;
  v36 = v28;
  PlaybackSyncer.sendMessage(_:to:)(&v34, 0);
  return outlined consume of Data._Representation(v27, v28);
}

uint64_t PlaybackSyncer.receiveCatchupResponseMessage(payload:from:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v48 = a1;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 1);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchPredicate();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = (v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *(v4 + 96);
  *v14 = v15;
  (*(v12 + 104))(v14, *MEMORY[0x1E69E8020], v11);
  v16 = v15;
  LOBYTE(v15) = _dispatchPreconditionTest(_:)();
  (*(v12 + 8))(v14, v11);
  if ((v15 & 1) == 0)
  {
    goto LABEL_29;
  }

  v46[1] = a2;
  if (one-time initialization token for playback != -1)
  {
    goto LABEL_30;
  }

  while (1)
  {
    v17 = type metadata accessor for Logger();
    __swift_project_value_buffer(v17, static Logger.playback);
    v18 = *(v8 + 16);
    v47 = a3;
    v18(v10, a3, v7);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v46[0] = v4;
      v22 = v21;
      v23 = swift_slowAlloc();
      v49 = v23;
      *v22 = 136315138;
      _s10Foundation4UUIDVACSHAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v24 = dispatch thunk of CustomStringConvertible.description.getter();
      v26 = v25;
      (*(v8 + 8))(v10, v7);
      v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v26, &v49);

      *(v22 + 4) = v27;
      _os_log_impl(&dword_1AEE80000, v19, v20, "PlaybackSync: Receiving catchup response from:%s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v23);
      MEMORY[0x1B2715BA0](v23, -1, -1);
      v28 = v22;
      v4 = v46[0];
      MEMORY[0x1B2715BA0](v28, -1, -1);
    }

    else
    {

      (*(v8 + 8))(v10, v7);
    }

    lazy protocol witness table accessor for type PlaybackSyncer.CatchupState and conformance PlaybackSyncer.CatchupState();
    dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
    v29 = v47;
    v7 = v49;
    v30 = v50;
    v31 = v51;
    if (v50 >> 60 != 15)
    {
      outlined copy of Data._Representation(v49, v50);
      PlaybackSyncer.receiveParticipantMessage(payload:from:)(v7);
      outlined consume of Data?(v7, v30);
    }

    if (!*(v31 + 16))
    {
      break;
    }

    v8 = v31 + 64;
    v32 = 1 << *(v31 + 32);
    v33 = -1;
    if (v32 < 64)
    {
      v33 = ~(-1 << v32);
    }

    v4 = v33 & *(v31 + 64);
    v10 = ((v32 + 63) >> 6);

    a3 = 0;
    while (v4)
    {
      v34 = a3;
LABEL_17:
      v35 = __clz(__rbit64(v4));
      v4 &= v4 - 1;
      v36 = (*(v31 + 56) + ((v34 << 10) | (16 * v35)));
      v37 = *v36;
      v38 = v36[1];
      outlined copy of Data._Representation(*v36, v38);
      PlaybackSyncer.receiveTransportControlMessage(payload:)();
      outlined consume of Data._Representation(v37, v38);
    }

    while (1)
    {
      v34 = a3 + 1;
      if (__OFADD__(a3, 1))
      {
        break;
      }

      if (v34 >= v10)
      {
        outlined consume of Data?(v7, v30);
      }

      v4 = *(v8 + 8 * v34);
      ++a3;
      if (v4)
      {
        a3 = v34;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    swift_once();
  }

  v40 = *(v4 + 72);
  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.default.getter();
  v43 = os_log_type_enabled(v41, v42);
  if (v40 == 1)
  {
    if (v43)
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&dword_1AEE80000, v41, v42, "PlaybackSync: Received empty catchup but have already received non-empty catchup from somebody else. Returning.", v44, 2u);
      MEMORY[0x1B2715BA0](v44, -1, -1);
    }
  }

  else
  {
    if (v43)
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&dword_1AEE80000, v41, v42, "PlaybackSync: Received empty catchup", v45, 2u);
      MEMORY[0x1B2715BA0](v45, -1, -1);
    }

    PlaybackSyncer.handleWaitingFor(participant:)(v29);
  }

  outlined consume of Data?(v7, v30);
}

void PlaybackSyncer.handleWaitingFor(participant:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v37 - v5;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (*(*(v1 + 88) + 16))
  {
    if (one-time initialization token for playback != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    v12 = __swift_project_value_buffer(v11, static Logger.playback);
    (*(v8 + 16))(v10, a1, v7);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    v15 = os_log_type_enabled(v13, v14);
    v39 = v7;
    if (v15)
    {
      v16 = swift_slowAlloc();
      v37[1] = v12;
      v17 = v16;
      v18 = swift_slowAlloc();
      v38 = a1;
      v19 = v18;
      v40[0] = v18;
      *v17 = 136315138;
      _s10Foundation4UUIDVACSHAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v20 = dispatch thunk of CustomStringConvertible.description.getter();
      v21 = v7;
      v23 = v22;
      (*(v8 + 8))(v10, v21);
      v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v23, v40);

      *(v17 + 4) = v24;
      _os_log_impl(&dword_1AEE80000, v13, v14, "PlaybackSync: Removing %s from waiting for empty catchup response list", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v19);
      v25 = v19;
      a1 = v38;
      MEMORY[0x1B2715BA0](v25, -1, -1);
      MEMORY[0x1B2715BA0](v17, -1, -1);
    }

    else
    {

      (*(v8 + 8))(v10, v7);
    }

    swift_beginAccess();
    specialized Set._Variant.remove(_:)(a1, v6);
    outlined destroy of NSObject?(v6, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    swift_endAccess();
    if (*(*(v2 + 88) + 16))
    {

      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v40[0] = v29;
        *v28 = 136315138;
        _s10Foundation4UUIDVACSHAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);

        v30 = Set.description.getter();
        v32 = v31;

        v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v32, v40);

        *(v28 + 4) = v33;
        _os_log_impl(&dword_1AEE80000, v26, v27, "PlaybackSync: Still waiting for empty catchup responses from:%s", v28, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v29);
        MEMORY[0x1B2715BA0](v29, -1, -1);
        MEMORY[0x1B2715BA0](v28, -1, -1);
      }
    }

    else
    {
      v34 = Logger.logObject.getter();
      v35 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        *v36 = 0;
        _os_log_impl(&dword_1AEE80000, v34, v35, "PlaybackSync: All existing participants replied with empty catchup responses or left, so using existing state", v36, 2u);
        MEMORY[0x1B2715BA0](v36, -1, -1);
      }

      PlaybackSyncer.useExistingState()();
    }
  }
}

uint64_t PlaybackSyncer.generateCatchupResponseMessage()@<X0>(_BYTE *a1@<X8>)
{
  v3 = v1;
  v51[3] = *MEMORY[0x1E69E9840];
  v5 = type metadata accessor for String.Encoding();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = (&v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = v3[12];
  *v9 = v10;
  (*(v7 + 104))(v9, *MEMORY[0x1E69E8020], v6);
  v11 = v10;
  LOBYTE(v10) = _dispatchPreconditionTest(_:)();
  (*(v7 + 8))(v9, v6);
  if (v10)
  {
    if (one-time initialization token for playback == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v12 = type metadata accessor for Logger();
  __swift_project_value_buffer(v12, static Logger.playback);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_1AEE80000, v13, v14, "PlaybackSync: Generating catchup response", v15, 2u);
    MEMORY[0x1B2715BA0](v15, -1, -1);
  }

  v16 = (*(*v3 + 208))();
  v49 = a1;
  if (!v16)
  {
    goto LABEL_17;
  }

  v17 = v16;
  v18 = objc_opt_self();
  v51[0] = 0;
  v19 = [v18 dataWithJSONObject:v17 options:0 error:v51];
  v20 = v51[0];
  if (!v19)
  {
    v32 = v20;
    v33 = _convertNSErrorToError(_:)();

    swift_willThrow();
    v50 = 0;
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_1AEE80000, v34, v35, "PlaybackSync: Could not serialize participant state.", v36, 2u);
      MEMORY[0x1B2715BA0](v36, -1, -1);
    }

LABEL_17:
    v21 = 0;
    v23 = 0xF000000000000000;
    goto LABEL_18;
  }

  v21 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v23 = v22;

  outlined copy of Data._Representation(v21, v23);
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.default.getter();
  outlined consume of Data._Representation(v21, v23);
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v51[0] = v48;
    *v26 = 136315138;
    static String.Encoding.utf8.getter();
    v27 = String.init(data:encoding:)();
    if (v28)
    {
      v29 = v28;
    }

    else
    {
      v27 = 0x64696C61766E693CLL;
      v29 = 0xE90000000000003ELL;
    }

    v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v29, v51);

    *(v26 + 4) = v30;
    _os_log_impl(&dword_1AEE80000, v24, v25, "PlaybackSync: attaching participant state to catchup: %s", v26, 0xCu);
    v31 = v48;
    __swift_destroy_boxed_opaque_existential_0(v48);
    MEMORY[0x1B2715BA0](v31, -1, -1);
    MEMORY[0x1B2715BA0](v26, -1, -1);
  }

LABEL_18:
  if ((*(*v3 + 400))())
  {
    v38 = v37;
    ObjectType = swift_getObjectType();
    v40 = (*(v38 + 32))(ObjectType, v38);
    swift_unknownObjectRelease();
  }

  else
  {
    v40 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_10Foundation4DataVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  }

  v51[0] = v21;
  v51[1] = v23;
  v51[2] = v40;
  lazy protocol witness table accessor for type PlaybackSyncer.CatchupState and conformance PlaybackSyncer.CatchupState();
  v41 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  if (v2)
  {
    outlined consume of Data?(v21, v23);
  }

  else
  {
    v44 = v41;
    v45 = v42;
    outlined consume of Data?(v21, v23);

    v46 = v49;
    *v49 = 3;
    *(v46 + 1) = v44;
    *(v46 + 2) = v45;
  }

  return result;
}

uint64_t jsonToString(_:)(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for String.Encoding();
  MEMORY[0x1EEE9AC00](v2 - 8);
  static String.Encoding.utf8.getter();
  result = String.init(data:encoding:)();
  if (!v4)
  {
    return 0x64696C61766E693CLL;
  }

  return result;
}

uint64_t PlaybackSyncer.scheduleTransportStateTakeoverTimer()()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchTime();
  v41 = *(v2 - 8);
  v3 = MEMORY[0x1EEE9AC00](v2);
  v39 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v40 = &v34 - v5;
  v42 = type metadata accessor for DispatchTimeInterval();
  v6 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchWorkItemFlags();
  MEMORY[0x1EEE9AC00](v9);
  v10 = type metadata accessor for DispatchPredicate();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = (&v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *(v1 + 12);
  *v13 = v14;
  (*(v11 + 104))(v13, *MEMORY[0x1E69E8020], v10);
  v38 = v14;
  LOBYTE(v14) = _dispatchPreconditionTest(_:)();
  v15 = (*(v11 + 8))(v13, v10);
  if ((v14 & 1) == 0)
  {
    __break(1u);
    goto LABEL_18;
  }

  v37 = v2;
  result = (*(*v1 + 424))(v15);
  if (!result)
  {
    return result;
  }

  if (*(v1 + 10))
  {
    if (one-time initialization token for playback == -1)
    {
LABEL_5:
      v18 = type metadata accessor for Logger();
      __swift_project_value_buffer(v18, static Logger.playback);
      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        _os_log_impl(&dword_1AEE80000, v19, v20, "PlaybackSync: Attempting to schedule transport state takeover when one already exists.", v21, 2u);
        MEMORY[0x1B2715BA0](v21, -1, -1);
      }

      return swift_unknownObjectRelease();
    }

LABEL_18:
    swift_once();
    goto LABEL_5;
  }

  v36 = v17;
  if (one-time initialization token for playback != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  __swift_project_value_buffer(v22, static Logger.playback);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&dword_1AEE80000, v23, v24, "PlaybackSync: Scheduling takeover countdown", v25, 2u);
    MEMORY[0x1B2715BA0](v25, -1, -1);
  }

  aBlock[4] = partial apply for closure #1 in PlaybackSyncer.scheduleTransportStateTakeoverTimer();
  aBlock[5] = v1;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_104;
  v35 = _Block_copy(aBlock);
  v43 = MEMORY[0x1E69E7CC0];
  _s10Foundation4UUIDVACSHAAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x1E69E6328]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  type metadata accessor for DispatchWorkItem();
  swift_allocObject();
  v35 = DispatchWorkItem.init(flags:block:)();

  ObjectType = swift_getObjectType();
  (*(v36 + 80))(ObjectType);
  CurrentValueSubject.value.getter();

  if (LOBYTE(aBlock[0]))
  {
    v27 = &OBJC_IVAR____TtC15GroupActivities14PlaybackSyncer_defaultTransportStateTakeoverInterval;
  }

  else
  {
    v27 = &OBJC_IVAR____TtC15GroupActivities14PlaybackSyncer_initiatorTransportStateTakeoverInterval;
  }

  (*(v6 + 16))(v8, &v1[*v27], v42);
  v28 = v39;
  static DispatchTime.now()();
  v29 = v40;
  MEMORY[0x1B2713FA0](v28, v8);
  v30 = *(v41 + 8);
  v31 = v37;
  v30(v28, v37);
  v32 = v8;
  v33 = v35;
  MEMORY[0x1B2714740](v29, v35);
  swift_unknownObjectRelease();
  v30(v29, v31);
  (*(v6 + 8))(v32, v42);
  *(v1 + 10) = v33;
}

uint64_t closure #1 in PlaybackSyncer.scheduleTransportStateTakeoverTimer()(uint64_t result)
{
  if ((*(result + 72) & 1) == 0)
  {
    if (one-time initialization token for playback != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    __swift_project_value_buffer(v1, static Logger.playback);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_1AEE80000, v2, v3, "PlaybackSync: Transport state takeover timer has expired. Using existing state.", v4, 2u);
      MEMORY[0x1B2715BA0](v4, -1, -1);
    }

    return PlaybackSyncer.useExistingState()();
  }

  return result;
}

uint64_t PlaybackSyncer.sendMessage(_:to:)(char *a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v24[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v10 = *a1;
  v11 = *(a1 + 1);
  v12 = *(a1 + 2);
  v13 = v3[12];
  *v9 = v13;
  (*(v7 + 104))(v9, *MEMORY[0x1E69E8020], v6);
  v14 = v13;
  LOBYTE(v13) = _dispatchPreconditionTest(_:)();
  (*(v7 + 8))(v9, v6);
  if (v13)
  {
    if (one-time initialization token for playback == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v15 = type metadata accessor for Logger();
  __swift_project_value_buffer(v15, static Logger.playback);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_1AEE80000, v16, v17, "PlaybackSync: Sending message.", v18, 2u);
    MEMORY[0x1B2715BA0](v18, -1, -1);
  }

  result = (*(*v3 + 424))();
  if (result)
  {
    v21 = v20;
    ObjectType = swift_getObjectType();
    v24[0] = v10;
    v25 = v11;
    v26 = v12;
    (*(v21 + 8))(v24, a2, ObjectType, v21);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t PlaybackSyncer.deinit()
{

  outlined consume of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(*(v0 + 56), *(v0 + 64));

  outlined destroy of weak SystemCoordinatorHostDelegate?(v0 + 112);
  outlined destroy of weak SystemCoordinatorHostDelegate?(v0 + 128);
  outlined destroy of weak SystemCoordinatorHostDelegate?(v0 + 144);
  v1 = OBJC_IVAR____TtC15GroupActivities14PlaybackSyncer_defaultTransportStateTakeoverInterval;
  v2 = type metadata accessor for DispatchTimeInterval();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC15GroupActivities14PlaybackSyncer_initiatorTransportStateTakeoverInterval, v2);
  return v0;
}

uint64_t PlaybackSyncer.__deallocating_deinit()
{
  PlaybackSyncer.deinit();

  return swift_deallocClassInstance();
}

uint64_t PlaybackSyncer.AVCoordinatorDelegateBridge.localParticipantID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtCC15GroupActivities14PlaybackSyncer27AVCoordinatorDelegateBridge_localParticipantID;
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PlaybackSyncer.AVCoordinatorDelegateBridge.delegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtCC15GroupActivities14PlaybackSyncer27AVCoordinatorDelegateBridge_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*PlaybackSyncer.AVCoordinatorDelegateBridge.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtCC15GroupActivities14PlaybackSyncer27AVCoordinatorDelegateBridge_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return SystemCoordinatorHost.delegate.modify;
}

id PlaybackSyncer.AVCoordinatorDelegateBridge.init(localParticipantID:delegate:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();

  return specialized PlaybackSyncer.AVCoordinatorDelegateBridge.init(localParticipantID:delegate:)(a1, a2, v3, ObjectType, a3);
}

uint64_t PlaybackSyncer.AVCoordinatorDelegateBridge.localParticipantUUID(for:)@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for playback != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Logger.playback);
  v4 = v1;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16 = v8;
    *v7 = 136315138;
    type metadata accessor for UUID();
    _s10Foundation4UUIDVACSHAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v9 = dispatch thunk of CustomStringConvertible.description.getter();
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v16);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_1AEE80000, v5, v6, "PlaybackSync: AVPlaybackCoordinator asked for local participant UUID:%s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x1B2715BA0](v8, -1, -1);
    MEMORY[0x1B2715BA0](v7, -1, -1);
  }

  v12 = OBJC_IVAR____TtCC15GroupActivities14PlaybackSyncer27AVCoordinatorDelegateBridge_localParticipantID;
  v13 = type metadata accessor for UUID();
  v14 = *(*(v13 - 8) + 16);

  return v14(a1, &v4[v12], v13);
}

Swift::Void __swiftcall PlaybackSyncer.AVCoordinatorDelegateBridge.playbackCoordinator(_:broadcastLocalParticipantStateDictionary:)(AVPlaybackCoordinator _, Swift::OpaquePointer broadcastLocalParticipantStateDictionary)
{
  if ((*((*MEMORY[0x1E69E7D40] & *v2) + 0x60))(_.super.isa))
  {
    v4 = v3;
    ObjectType = swift_getObjectType();
    type metadata accessor for AVPlaybackCoordinationParticipantStateKey(0);
    _s10Foundation4UUIDVACSHAAWlTm_0(&lazy protocol witness table cache variable for type AVPlaybackCoordinationParticipantStateKey and conformance AVPlaybackCoordinationParticipantStateKey, type metadata accessor for AVPlaybackCoordinationParticipantStateKey, &protocol conformance descriptor for AVPlaybackCoordinationParticipantStateKey);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
    (*(v4 + 8))(isa, ObjectType, v4);

    swift_unknownObjectRelease();
  }
}

Swift::Void __swiftcall PlaybackSyncer.AVCoordinatorDelegateBridge.playbackCoordinator(_:broadcastTransportControlStateDictionary:forItemWithIdentifier:)(AVPlaybackCoordinator _, Swift::OpaquePointer broadcastTransportControlStateDictionary, Swift::String forItemWithIdentifier)
{
  object = forItemWithIdentifier._object;
  countAndFlagsBits = forItemWithIdentifier._countAndFlagsBits;
  if ((*((*MEMORY[0x1E69E7D40] & *v3) + 0x60))(_.super.isa))
  {
    v7 = v6;
    ObjectType = swift_getObjectType();
    type metadata accessor for AVPlaybackCoordinationTransportControlStateKey(0);
    _s10Foundation4UUIDVACSHAAWlTm_0(&lazy protocol witness table cache variable for type AVPlaybackCoordinationTransportControlStateKey and conformance AVPlaybackCoordinationTransportControlStateKey, type metadata accessor for AVPlaybackCoordinationTransportControlStateKey, &protocol conformance descriptor for AVPlaybackCoordinationTransportControlStateKey);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
    (*(v7 + 16))(countAndFlagsBits, object, isa, ObjectType, v7);

    swift_unknownObjectRelease();
  }
}

uint64_t PlaybackSyncer.AVCoordinatorDelegateBridge.playbackCoordinator(_:reloadTransportControlStateForItemWithIdentifier:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = (*((*MEMORY[0x1E69E7D40] & *v5) + 0x60))(a1);
  if (result)
  {
    v12 = v11;
    ObjectType = swift_getObjectType();
    (*(v12 + 24))(a2, a3, a4, a5, ObjectType, v12);

    return swift_unknownObjectRelease();
  }

  return result;
}

id PlaybackSyncer.AVCoordinatorDelegateBridge.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PlaybackSyncer.AVCoordinatorDelegateBridge.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PlaybackSyncer.AVCoordinatorDelegateBridge(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t closure #1 in PlaybackSyncer.AVCoordinatorDelegateBridge.playbackCoordinator(_:promptForLeaveOrEndSessionAllowingCancellation:completionHandler:)(char a1, char a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v19 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DispatchQoS();
  v11 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  v14 = static OS_dispatch_queue.main.getter();
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 17) = a2;
  *(v15 + 24) = a3;
  *(v15 + 32) = a4;
  aBlock[4] = partial apply for closure #1 in closure #1 in PlaybackSyncer.AVCoordinatorDelegateBridge.playbackCoordinator(_:promptForLeaveOrEndSessionAllowingCancellation:completionHandler:);
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_113;
  v16 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  _s10Foundation4UUIDVACSHAAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x1E69E6328]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1B27147B0](0, v13, v10, v16);
  _Block_release(v16);

  (*(v19 + 8))(v10, v8);
  return (*(v11 + 8))(v13, v18);
}

uint64_t closure #1 in closure #1 in PlaybackSyncer.AVCoordinatorDelegateBridge.playbackCoordinator(_:promptForLeaveOrEndSessionAllowingCancellation:completionHandler:)(char a1, char a2, uint64_t (*a3)(void))
{
  if (one-time initialization token for playback != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static Logger.playback);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v18 = v9;
    *v8 = 136315394;
    v10 = String.init<A>(reflecting:)();
    v12 = a3;
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v18);

    *(v8 + 4) = v13;
    *(v8 + 12) = 2080;
    v14 = String.init<A>(reflecting:)();
    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, &v18);
    a3 = v12;

    *(v8 + 14) = v16;
    _os_log_impl(&dword_1AEE80000, v6, v7, "Calling playback coordinator dismissal callback with result: %s promptForLeaveOrEndSessionAllowingCancellation%s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B2715BA0](v9, -1, -1);
    MEMORY[0x1B2715BA0](v8, -1, -1);
  }

  return a3(a1 & 1);
}

uint64_t PlaybackSyncer.CatchupState.localParticipantState.setter(uint64_t a1, uint64_t a2)
{
  result = outlined consume of Data?(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
  return result;
}

uint64_t PlaybackSyncer.CatchupState.transportControlStates.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance PlaybackSyncer.CatchupState.CodingKeys()
{
  if (*v0)
  {
    return 0xD000000000000016;
  }

  else
  {
    return 0xD000000000000015;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance PlaybackSyncer.CatchupState.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000015 && 0x80000001AF01B120 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001AF01B140 == a2)
  {

    v7 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PlaybackSyncer.CatchupState.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PlaybackSyncer.CatchupState.CodingKeys and conformance PlaybackSyncer.CatchupState.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PlaybackSyncer.CatchupState.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PlaybackSyncer.CatchupState.CodingKeys and conformance PlaybackSyncer.CatchupState.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PlaybackSyncer.CatchupState.encode(to:)(void *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v14 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15GroupActivities14PlaybackSyncerC12CatchupStateV10CodingKeys33_FC0C2000094293835FDF4CBE986D167FLLOGMd, &_ss22KeyedEncodingContainerVy15GroupActivities14PlaybackSyncerC12CatchupStateV10CodingKeys33_FC0C2000094293835FDF4CBE986D167FLLOGMR);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v13 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PlaybackSyncer.CatchupState.CodingKeys and conformance PlaybackSyncer.CatchupState.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15 = a2;
  v16 = a3;
  v17 = 0;
  outlined copy of Data?(a2, a3);
  lazy protocol witness table accessor for type Data and conformance Data();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  outlined consume of Data?(v15, v16);
  if (!v4)
  {
    v15 = v14;
    v17 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySS10Foundation4DataVGMd, &_sSDySS10Foundation4DataVGMR);
    lazy protocol witness table accessor for type [String : Data] and conformance <> [A : B](&lazy protocol witness table cache variable for type [String : Data] and conformance <> [A : B], lazy protocol witness table accessor for type Data and conformance Data, MEMORY[0x1E69E6160], MEMORY[0x1E69E5E38]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v9 + 8))(v11, v8);
}

uint64_t PlaybackSyncer.CatchupState.init(from:)(void *a1)
{
  result = specialized PlaybackSyncer.CatchupState.init(from:)(a1);
  if (v1)
  {
    return v3;
  }

  return result;
}

uint64_t protocol witness for Decodable.init(from:) in conformance PlaybackSyncer.CatchupState@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = specialized PlaybackSyncer.CatchupState.init(from:)(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
  }

  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance PlaybackSyncer.Message.MessageType()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1B2715040](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance PlaybackSyncer.Message.MessageType(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  MEMORY[0x1B2715040](v2);
  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance PlaybackSyncer.Message.MessageType@<X0>(Swift::Int *a1@<X0>, GroupActivities::PlaybackSyncer::Message::MessageType_optional *a2@<X8>)
{
  result = specialized PlaybackSyncer.Message.MessageType.init(rawValue:)(*a1);
  a2->value = result;
  return result;
}

uint64_t PlaybackSyncer.Message.payload.getter()
{
  v1 = *(v0 + 8);
  outlined copy of Data._Representation(v1, *(v0 + 16));
  return v1;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance PlaybackSyncer.Message.CodingKeys()
{
  if (*v0)
  {
    return 0x64616F6C796170;
  }

  else
  {
    return 1701869940;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance PlaybackSyncer.Message.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x64616F6C796170 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PlaybackSyncer.Message.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PlaybackSyncer.Message.CodingKeys and conformance PlaybackSyncer.Message.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PlaybackSyncer.Message.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PlaybackSyncer.Message.CodingKeys and conformance PlaybackSyncer.Message.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PlaybackSyncer.Message.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15GroupActivities14PlaybackSyncerC7MessageV10CodingKeys33_FC0C2000094293835FDF4CBE986D167FLLOGMd, &_ss22KeyedEncodingContainerVy15GroupActivities14PlaybackSyncerC7MessageV10CodingKeys33_FC0C2000094293835FDF4CBE986D167FLLOGMR);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v11 - v5;
  v7 = *v1;
  v8 = *(v1 + 2);
  v11[0] = *(v1 + 1);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PlaybackSyncer.Message.CodingKeys and conformance PlaybackSyncer.Message.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v12) = v7;
  v14 = 0;
  lazy protocol witness table accessor for type PlaybackSyncer.Message.MessageType and conformance PlaybackSyncer.Message.MessageType();
  v9 = v11[1];
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v9)
  {
    v12 = v11[0];
    v13 = v8;
    v14 = 1;
    outlined copy of Data._Representation(v11[0], v8);
    lazy protocol witness table accessor for type Data and conformance Data();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    outlined consume of Data._Representation(v12, v13);
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t PlaybackSyncer.Message.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15GroupActivities14PlaybackSyncerC7MessageV10CodingKeys33_FC0C2000094293835FDF4CBE986D167FLLOGMd, &_ss22KeyedDecodingContainerVy15GroupActivities14PlaybackSyncerC7MessageV10CodingKeys33_FC0C2000094293835FDF4CBE986D167FLLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PlaybackSyncer.Message.CodingKeys and conformance PlaybackSyncer.Message.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v13 = 0;
    lazy protocol witness table accessor for type PlaybackSyncer.Message.MessageType and conformance PlaybackSyncer.Message.MessageType();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v9 = v12;
    v13 = 1;
    lazy protocol witness table accessor for type Data and conformance Data();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v6 + 8))(v8, v5);
    v10 = v12;
    *a2 = v9;
    *(a2 + 8) = v10;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

Swift::Void __swiftcall AVPlaybackCoordinator.handleNewTransportControlStateDictionary(_:)(NSDictionary a1)
{
  type metadata accessor for AVPlaybackCoordinationTransportControlStateKey(0);
  _s10Foundation4UUIDVACSHAAWlTm_0(&lazy protocol witness table cache variable for type AVPlaybackCoordinationTransportControlStateKey and conformance AVPlaybackCoordinationTransportControlStateKey, type metadata accessor for AVPlaybackCoordinationTransportControlStateKey, &protocol conformance descriptor for AVPlaybackCoordinationTransportControlStateKey);
  static Dictionary._forceBridgeFromObjectiveC(_:result:)();
  __break(1u);
}

Swift::Void __swiftcall AVPlaybackCoordinator.handleNewParticipantStateDictionary(_:)(NSDictionary a1)
{
  type metadata accessor for AVPlaybackCoordinationParticipantStateKey(0);
  _s10Foundation4UUIDVACSHAAWlTm_0(&lazy protocol witness table cache variable for type AVPlaybackCoordinationParticipantStateKey and conformance AVPlaybackCoordinationParticipantStateKey, type metadata accessor for AVPlaybackCoordinationParticipantStateKey, &protocol conformance descriptor for AVPlaybackCoordinationParticipantStateKey);
  static Dictionary._forceBridgeFromObjectiveC(_:result:)();
  __break(1u);
}

uint64_t AVPlaybackCoordinator.getTrackedTransportStates()()
{
  v1 = [v0 trackedTransportControlStateDictionaries];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySo46AVPlaybackCoordinationTransportControlStateKeyaypGMd, &_sSDySo46AVPlaybackCoordinationTransportControlStateKeyaypGMR);
  v2 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v3 = specialized Dictionary.compactMapValues<A>(_:)(v2);

  return v3;
}

void closure #1 in AVPlaybackCoordinator.getTrackedTransportStates()(uint64_t *a1@<X8>)
{
  v27[1] = *MEMORY[0x1E69E9840];
  v2 = type metadata accessor for String.Encoding();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = objc_opt_self();
  type metadata accessor for AVPlaybackCoordinationTransportControlStateKey(0);
  _s10Foundation4UUIDVACSHAAWlTm_0(&lazy protocol witness table cache variable for type AVPlaybackCoordinationTransportControlStateKey and conformance AVPlaybackCoordinationTransportControlStateKey, type metadata accessor for AVPlaybackCoordinationTransportControlStateKey, &protocol conformance descriptor for AVPlaybackCoordinationTransportControlStateKey);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v27[0] = 0;
  v5 = [v3 dataWithJSONObject:isa options:0 error:v27];

  v6 = v27[0];
  if (v5)
  {
    v7 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;

    if (one-time initialization token for playback != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, static Logger.playback);
    outlined copy of Data._Representation(v7, v9);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    outlined consume of Data._Representation(v7, v9);
    if (os_log_type_enabled(v11, v12))
    {
      v26 = a1;
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v27[0] = v14;
      *v13 = 136315138;
      static String.Encoding.utf8.getter();
      v15 = String.init(data:encoding:)();
      if (v16)
      {
        v17 = v16;
      }

      else
      {
        v15 = 0x64696C61766E693CLL;
        v17 = 0xE90000000000003ELL;
      }

      v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v17, v27);

      *(v13 + 4) = v18;
      _os_log_impl(&dword_1AEE80000, v11, v12, "PlaybackSync: attaching AV transport control state to catchup: %s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v14);
      MEMORY[0x1B2715BA0](v14, -1, -1);
      v19 = v13;
      a1 = v26;
      MEMORY[0x1B2715BA0](v19, -1, -1);
    }
  }

  else
  {
    v20 = v6;
    v21 = _convertNSErrorToError(_:)();

    swift_willThrow();
    if (one-time initialization token for playback != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    __swift_project_value_buffer(v22, static Logger.playback);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_1AEE80000, v23, v24, "PlaybackSync: Could not serialize AV transport control state.", v25, 2u);
      MEMORY[0x1B2715BA0](v25, -1, -1);
    }

    v7 = 0;
    v9 = 0xF000000000000000;
  }

  *a1 = v7;
  a1[1] = v9;
}

uint64_t specialized Dictionary.compactMapValues<A>(_:)(uint64_t a1)
{
  v2 = MEMORY[0x1E69E7CC8];
  v34 = MEMORY[0x1E69E7CC8];
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  if (!v6)
  {
    goto LABEL_7;
  }

LABEL_11:
  while (1)
  {
    v11 = __clz(__rbit64(v6)) | (v9 << 6);
    v12 = (*(a1 + 48) + 16 * v11);
    v14 = *v12;
    v13 = v12[1];
    v33 = *(*(a1 + 56) + 8 * v11);

    closure #1 in AVPlaybackCoordinator.getTrackedTransportStates()(&v31);
    if (v1)
    {
      break;
    }

    v6 &= v6 - 1;

    v15 = v32;
    if (v32 >> 60 == 15)
    {

      result = outlined consume of Data?(v31, v15);
      v1 = 0;
      if (!v6)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v29 = v31;
      v16 = *(v2 + 16);
      if (*(v2 + 24) <= v16)
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16 + 1, 1);
        v2 = v34;
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v17 = v2 + 64;
      v18 = -1 << *(v2 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v2 + 64 + 8 * (v19 >> 6))) == 0)
      {
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
          v25 = *(v17 + 8 * v20);
          if (v25 != -1)
          {
            v21 = __clz(__rbit64(~v25)) + (v20 << 6);
            goto LABEL_25;
          }
        }

LABEL_31:
        __break(1u);
        return result;
      }

      v21 = __clz(__rbit64((-1 << v19) & ~*(v2 + 64 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
      *(v17 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      v26 = 16 * v21;
      v27 = (*(v2 + 48) + v26);
      *v27 = v14;
      v27[1] = v13;
      v28 = (*(v2 + 56) + v26);
      *v28 = v29;
      v28[1] = v15;
      ++*(v2 + 16);
      v1 = 0;
      if (!v6)
      {
LABEL_7:
        while (1)
        {
          v10 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            break;
          }

          if (v10 >= v7)
          {

            return v2;
          }

          v6 = *(v3 + 8 * v10);
          ++v9;
          if (v6)
          {
            v9 = v10;
            goto LABEL_11;
          }
        }

        __break(1u);
        goto LABEL_31;
      }
    }
  }

  return v2;
}

void protocol witness for PlaybackCoordinating.handleNewTransportControlStateDictionary(_:) in conformance AVPlaybackCoordinator(uint64_t a1)
{
  type metadata accessor for AVPlaybackCoordinationTransportControlStateKey(0);
  _s10Foundation4UUIDVACSHAAWlTm_0(&lazy protocol witness table cache variable for type AVPlaybackCoordinationTransportControlStateKey and conformance AVPlaybackCoordinationTransportControlStateKey, type metadata accessor for AVPlaybackCoordinationTransportControlStateKey, &protocol conformance descriptor for AVPlaybackCoordinationTransportControlStateKey);
  static Dictionary._forceBridgeFromObjectiveC(_:result:)();
  __break(1u);
}

void protocol witness for PlaybackCoordinating.handleNewParticipantStateDictionary(_:) in conformance AVPlaybackCoordinator(uint64_t a1)
{
  type metadata accessor for AVPlaybackCoordinationParticipantStateKey(0);
  _s10Foundation4UUIDVACSHAAWlTm_0(&lazy protocol witness table cache variable for type AVPlaybackCoordinationParticipantStateKey and conformance AVPlaybackCoordinationParticipantStateKey, type metadata accessor for AVPlaybackCoordinationParticipantStateKey, &protocol conformance descriptor for AVPlaybackCoordinationParticipantStateKey);
  static Dictionary._forceBridgeFromObjectiveC(_:result:)();
  __break(1u);
}

void protocol witness for PlaybackCoordinating.handleRemoval(ofParticipant:) in conformance AVPlaybackCoordinator()
{
  isa = UUID._bridgeToObjectiveC()().super.isa;
  [v0 handleRemovalOfParticipant_];
}

uint64_t protocol witness for PlaybackCoordinating.getTrackedTransportStates() in conformance AVPlaybackCoordinator()
{
  v1 = [v0 trackedTransportControlStateDictionaries];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySo46AVPlaybackCoordinationTransportControlStateKeyaypGMd, &_sSDySo46AVPlaybackCoordinationTransportControlStateKeyaypGMR);
  v2 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v3 = specialized Dictionary.compactMapValues<A>(_:)(v2);

  return v3;
}

id specialized PlaybackSyncer.AVCoordinatorDelegateBridge.__allocating_init(localParticipantID:delegate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = objc_allocWithZone(type metadata accessor for PlaybackSyncer.AVCoordinatorDelegateBridge(0));

  return specialized PlaybackSyncer.AVCoordinatorDelegateBridge.init(localParticipantID:delegate:)(a1, a2, v9, a4, a5);
}

id specialized PlaybackSyncer.AVCoordinatorDelegateBridge.init(localParticipantID:delegate:)(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5)
{
  v8 = &a3[OBJC_IVAR____TtCC15GroupActivities14PlaybackSyncer27AVCoordinatorDelegateBridge_delegate];
  *&a3[OBJC_IVAR____TtCC15GroupActivities14PlaybackSyncer27AVCoordinatorDelegateBridge_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v9 = OBJC_IVAR____TtCC15GroupActivities14PlaybackSyncer27AVCoordinatorDelegateBridge_localParticipantID;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  (*(v11 + 16))(&a3[v9], a1, v10);
  swift_beginAccess();
  *(v8 + 1) = a5;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  v14.receiver = a3;
  v14.super_class = type metadata accessor for PlaybackSyncer.AVCoordinatorDelegateBridge(0);
  v12 = objc_msgSendSuper2(&v14, sel_init);
  (*(v11 + 8))(a1, v10);
  return v12;
}

uint64_t specialized PlaybackSyncer.init(internalCoordinator:serialQueue:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  *(v3 + 16) = 0;
  *(v3 + 24) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So12NSDictionaryCTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  type metadata accessor for PropertyListEncoder();
  swift_allocObject();
  *(v3 + 32) = PropertyListEncoder.init()();
  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  v7 = PropertyListDecoder.init()();
  v8 = MEMORY[0x1E69E7CD0];
  *(v3 + 40) = v7;
  *(v3 + 48) = v8;
  *(v3 + 56) = 0;
  *(v3 + 64) = 0;
  *(v3 + 72) = 0;
  *(v3 + 80) = 0;
  *(v3 + 88) = v8;
  *(v3 + 104) = 0;
  *(v3 + 120) = 0;
  swift_unknownObjectWeakInit();
  *(v3 + 136) = 0;
  swift_unknownObjectWeakInit();
  *(v3 + 152) = 0;
  swift_unknownObjectWeakInit();
  v9 = OBJC_IVAR____TtC15GroupActivities14PlaybackSyncer_defaultTransportStateTakeoverInterval;
  *(v3 + OBJC_IVAR____TtC15GroupActivities14PlaybackSyncer_defaultTransportStateTakeoverInterval) = 20;
  v10 = *MEMORY[0x1E69E7F48];
  v11 = type metadata accessor for DispatchTimeInterval();
  v12 = *(*(v11 - 8) + 104);
  v12(v4 + v9, v10, v11);
  v13 = OBJC_IVAR____TtC15GroupActivities14PlaybackSyncer_initiatorTransportStateTakeoverInterval;
  *(v4 + OBJC_IVAR____TtC15GroupActivities14PlaybackSyncer_initiatorTransportStateTakeoverInterval) = 10;
  v12(v4 + v13, v10, v11);
  if (one-time initialization token for playback != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  __swift_project_value_buffer(v14, static Logger.playback);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_1AEE80000, v15, v16, "PlaybackSync: Creating playback syncer for group session", v17, 2u);
    MEMORY[0x1B2715BA0](v17, -1, -1);
  }

  swift_beginAccess();
  *(v4 + 120) = a2;
  swift_unknownObjectWeakAssign();
  *(v4 + 96) = a3;
  return v4;
}

double block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t objectdestroy_4Tm(void (*a1)(void), uint64_t a2)
{

  a1(*(v2 + 24));

  return MEMORY[0x1EEE6BDD0](v2, a2, 7);
}

void partial apply for closure #1 in PlaybackSyncer.replaceCoordinator(avPlaybackCoordinator:localParticipantUUID:)()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  closure #1 in PlaybackSyncer.replaceCoordinator(avPlaybackCoordinator:localParticipantUUID:)(v3, v0 + v2, v4);
}

uint64_t outlined init with copy of UUID?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t specialized PlaybackSyncer.AVCoordinatorDelegateBridge.playbackCoordinator(_:promptForLeaveOrEndSessionAllowingCancellation:completionHandler:)(char a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (one-time initialization token for playback != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Logger.playback);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v23 = v12;
    *v11 = 136315138;
    v13 = String.init<A>(reflecting:)();
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v23);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_1AEE80000, v9, v10, "PlaybackSync: Got dismissal callback promptForLeaveOrEndSessionAllowingCancellation: %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x1B2715BA0](v12, -1, -1);
    MEMORY[0x1B2715BA0](v11, -1, -1);
  }

  result = (*((*MEMORY[0x1E69E7D40] & *v4) + 0x60))();
  if (result)
  {
    v18 = v17;
    ObjectType = swift_getObjectType();
    v20 = swift_allocObject();
    v21 = a1 & 1;
    *(v20 + 16) = v21;
    *(v20 + 24) = a2;
    *(v20 + 32) = a3;
    v22 = *(v18 + 32);

    v22(v21, partial apply for closure #1 in PlaybackSyncer.AVCoordinatorDelegateBridge.playbackCoordinator(_:promptForLeaveOrEndSessionAllowingCancellation:completionHandler:), v20, ObjectType, v18);

    return swift_unknownObjectRelease();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PlaybackSyncer.CatchupState.CodingKeys and conformance PlaybackSyncer.CatchupState.CodingKeys()
{
  result = lazy protocol witness table cache variable for type PlaybackSyncer.CatchupState.CodingKeys and conformance PlaybackSyncer.CatchupState.CodingKeys;
  if (!lazy protocol witness table cache variable for type PlaybackSyncer.CatchupState.CodingKeys and conformance PlaybackSyncer.CatchupState.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PlaybackSyncer.CatchupState.CodingKeys and conformance PlaybackSyncer.CatchupState.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PlaybackSyncer.CatchupState.CodingKeys and conformance PlaybackSyncer.CatchupState.CodingKeys;
  if (!lazy protocol witness table cache variable for type PlaybackSyncer.CatchupState.CodingKeys and conformance PlaybackSyncer.CatchupState.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PlaybackSyncer.CatchupState.CodingKeys and conformance PlaybackSyncer.CatchupState.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PlaybackSyncer.CatchupState.CodingKeys and conformance PlaybackSyncer.CatchupState.CodingKeys;
  if (!lazy protocol witness table cache variable for type PlaybackSyncer.CatchupState.CodingKeys and conformance PlaybackSyncer.CatchupState.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PlaybackSyncer.CatchupState.CodingKeys and conformance PlaybackSyncer.CatchupState.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PlaybackSyncer.CatchupState.CodingKeys and conformance PlaybackSyncer.CatchupState.CodingKeys;
  if (!lazy protocol witness table cache variable for type PlaybackSyncer.CatchupState.CodingKeys and conformance PlaybackSyncer.CatchupState.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PlaybackSyncer.CatchupState.CodingKeys and conformance PlaybackSyncer.CatchupState.CodingKeys);
  }

  return result;
}

uint64_t specialized PlaybackSyncer.CatchupState.init(from:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15GroupActivities14PlaybackSyncerC12CatchupStateV10CodingKeys33_FC0C2000094293835FDF4CBE986D167FLLOGMd, &_ss22KeyedDecodingContainerVy15GroupActivities14PlaybackSyncerC12CatchupStateV10CodingKeys33_FC0C2000094293835FDF4CBE986D167FLLOGMR);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v10 - v5;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_10Foundation4DataVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PlaybackSyncer.CatchupState.CodingKeys and conformance PlaybackSyncer.CatchupState.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    v8 = 0;
    __swift_destroy_boxed_opaque_existential_0(a1);
    outlined consume of Data?(0, 0xF000000000000000);
  }

  else
  {
    v11 = 0;
    lazy protocol witness table accessor for type Data and conformance Data();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v8 = v10[0];
    v9 = v10[1];
    outlined consume of Data?(0, 0xF000000000000000);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySS10Foundation4DataVGMd, &_sSDySS10Foundation4DataVGMR);
    v11 = 1;
    lazy protocol witness table accessor for type [String : Data] and conformance <> [A : B](&lazy protocol witness table cache variable for type [String : Data] and conformance <> [A : B], lazy protocol witness table accessor for type Data and conformance Data, MEMORY[0x1E69E6190], MEMORY[0x1E69E5E58]);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v6, v3);

    outlined copy of Data?(v8, v9);

    __swift_destroy_boxed_opaque_existential_0(a1);
    outlined consume of Data?(v8, v9);
  }

  return v8;
}

unint64_t specialized PlaybackSyncer.Message.MessageType.init(rawValue:)(unint64_t result)
{
  if (result >= 4)
  {
    return 4;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PlaybackSyncer.Message.CodingKeys and conformance PlaybackSyncer.Message.CodingKeys()
{
  result = lazy protocol witness table cache variable for type PlaybackSyncer.Message.CodingKeys and conformance PlaybackSyncer.Message.CodingKeys;
  if (!lazy protocol witness table cache variable for type PlaybackSyncer.Message.CodingKeys and conformance PlaybackSyncer.Message.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PlaybackSyncer.Message.CodingKeys and conformance PlaybackSyncer.Message.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PlaybackSyncer.Message.CodingKeys and conformance PlaybackSyncer.Message.CodingKeys;
  if (!lazy protocol witness table cache variable for type PlaybackSyncer.Message.CodingKeys and conformance PlaybackSyncer.Message.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PlaybackSyncer.Message.CodingKeys and conformance PlaybackSyncer.Message.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PlaybackSyncer.Message.CodingKeys and conformance PlaybackSyncer.Message.CodingKeys;
  if (!lazy protocol witness table cache variable for type PlaybackSyncer.Message.CodingKeys and conformance PlaybackSyncer.Message.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PlaybackSyncer.Message.CodingKeys and conformance PlaybackSyncer.Message.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PlaybackSyncer.Message.CodingKeys and conformance PlaybackSyncer.Message.CodingKeys;
  if (!lazy protocol witness table cache variable for type PlaybackSyncer.Message.CodingKeys and conformance PlaybackSyncer.Message.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PlaybackSyncer.Message.CodingKeys and conformance PlaybackSyncer.Message.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PlaybackSyncer.Message.MessageType and conformance PlaybackSyncer.Message.MessageType()
{
  result = lazy protocol witness table cache variable for type PlaybackSyncer.Message.MessageType and conformance PlaybackSyncer.Message.MessageType;
  if (!lazy protocol witness table cache variable for type PlaybackSyncer.Message.MessageType and conformance PlaybackSyncer.Message.MessageType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PlaybackSyncer.Message.MessageType and conformance PlaybackSyncer.Message.MessageType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PlaybackSyncer.Message.MessageType and conformance PlaybackSyncer.Message.MessageType;
  if (!lazy protocol witness table cache variable for type PlaybackSyncer.Message.MessageType and conformance PlaybackSyncer.Message.MessageType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PlaybackSyncer.Message.MessageType and conformance PlaybackSyncer.Message.MessageType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PlaybackSyncer.Message.MessageType and conformance PlaybackSyncer.Message.MessageType;
  if (!lazy protocol witness table cache variable for type PlaybackSyncer.Message.MessageType and conformance PlaybackSyncer.Message.MessageType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PlaybackSyncer.Message.MessageType and conformance PlaybackSyncer.Message.MessageType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PlaybackSyncer.Message.MessageType and conformance PlaybackSyncer.Message.MessageType;
  if (!lazy protocol witness table cache variable for type PlaybackSyncer.Message.MessageType and conformance PlaybackSyncer.Message.MessageType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PlaybackSyncer.Message.MessageType and conformance PlaybackSyncer.Message.MessageType);
  }

  return result;
}

uint64_t type metadata completion function for PlaybackSyncer(uint64_t a1)
{
  result = type metadata accessor for DispatchTimeInterval();
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t type metadata completion function for PlaybackSyncer.AVCoordinatorDelegateBridge(uint64_t a1)
{
  result = type metadata accessor for UUID();
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

uint64_t get_enum_tag_for_layout_string_10Foundation4DataVSg(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for PlaybackSyncer.CatchupState(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for PlaybackSyncer.CatchupState(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for PlaybackSyncer.Message(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && a1[24])
  {
    return (*a1 + 253);
  }

  v3 = *a1;
  v4 = v3 >= 4;
  v5 = v3 - 4;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for PlaybackSyncer.Message(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2 + 3;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PlaybackSyncer.Message.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for PlaybackSyncer.Message.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t lazy protocol witness table accessor for type PlaybackSyncer.CatchupState and conformance PlaybackSyncer.CatchupState()
{
  result = lazy protocol witness table cache variable for type PlaybackSyncer.CatchupState and conformance PlaybackSyncer.CatchupState;
  if (!lazy protocol witness table cache variable for type PlaybackSyncer.CatchupState and conformance PlaybackSyncer.CatchupState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PlaybackSyncer.CatchupState and conformance PlaybackSyncer.CatchupState);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PlaybackSyncer.CatchupState and conformance PlaybackSyncer.CatchupState;
  if (!lazy protocol witness table cache variable for type PlaybackSyncer.CatchupState and conformance PlaybackSyncer.CatchupState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PlaybackSyncer.CatchupState and conformance PlaybackSyncer.CatchupState);
  }

  return result;
}

uint64_t partial apply for closure #1 in closure #2 in PlaybackSyncer.connect(toLink:withExistingRemoteParticipants:)()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return closure #1 in closure #2 in PlaybackSyncer.connect(toLink:withExistingRemoteParticipants:)(v2, v3);
}

uint64_t partial apply for closure #1 in closure #1 in PlaybackSyncer.connect(toLink:withExistingRemoteParticipants:)()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(v0 + 24);
  v6 = v0 + ((*(v1 + 80) + 48) & ~*(v1 + 80));

  return closure #1 in closure #1 in PlaybackSyncer.connect(toLink:withExistingRemoteParticipants:)(v2, v5, v3, v4, v6);
}

char *SpatialTemplatePreference.init(storage:contentExtent:)@<X0>(char *result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v4 = *result;
  *a4 = a2;
  *(a4 + 8) = a3 & 1;
  *(a4 + 9) = v4;
  return result;
}

uint64_t SpatialTemplatePreference.init(storage:spatialTemplate:contentExtent:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  result = outlined destroy of SpatialTemplate?(a2);
  v10 = *a1;
  *a5 = a3;
  *(a5 + 8) = a4 & 1;
  *(a5 + 9) = v10;
  return result;
}

uint64_t outlined destroy of SpatialTemplate?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities15SpatialTemplate_pSgMd, &_s15GroupActivities15SpatialTemplate_pSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

GroupActivities::SpatialTemplatePreference::Storage_optional __swiftcall SpatialTemplatePreference.Storage.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 5;
  if (rawValue < 5)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t SpatialTemplatePreference.description.getter()
{
  v1 = *(v0 + 9);
  v2 = 1701736302;
  v3 = 0x61737265766E6F63;
  v4 = 0x646E756F72727573;
  if (v1 != 3)
  {
    v4 = 0x6D6F74737563;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*(v0 + 9))
  {
    v2 = 0x6953794265646973;
  }

  if (*(v0 + 9) <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SpatialTemplatePreference()
{
  v1 = *(v0 + 9);
  v2 = 1701736302;
  v3 = 0x61737265766E6F63;
  v4 = 0x646E756F72727573;
  if (v1 != 3)
  {
    v4 = 0x6D6F74737563;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*(v0 + 9))
  {
    v2 = 0x6953794265646973;
  }

  if (*(v0 + 9) <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t static SpatialTemplatePreference.none.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for none != -1)
  {
    v3 = a1;
    result = swift_once();
    a1 = v3;
  }

  v1 = word_1EB619638;
  v2 = HIBYTE(word_1EB619638);
  *a1 = static SpatialTemplatePreference.none;
  *(a1 + 8) = v1;
  *(a1 + 9) = v2;
  return result;
}

uint64_t static SpatialTemplatePreference.sideBySide.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for sideBySide != -1)
  {
    v3 = a1;
    result = swift_once();
    a1 = v3;
  }

  v1 = word_1EB619648;
  v2 = HIBYTE(word_1EB619648);
  *a1 = static SpatialTemplatePreference.sideBySide;
  *(a1 + 8) = v1;
  *(a1 + 9) = v2;
  return result;
}

uint64_t static SpatialTemplatePreference.conversational.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for conversational != -1)
  {
    v3 = a1;
    result = swift_once();
    a1 = v3;
  }

  v1 = word_1EB619658;
  v2 = HIBYTE(word_1EB619658);
  *a1 = static SpatialTemplatePreference.conversational;
  *(a1 + 8) = v1;
  *(a1 + 9) = v2;
  return result;
}

uint64_t static SpatialTemplatePreference.surround.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for surround != -1)
  {
    v3 = a1;
    result = swift_once();
    a1 = v3;
  }

  v1 = word_1EB619668;
  v2 = HIBYTE(word_1EB619668);
  *a1 = static SpatialTemplatePreference.surround;
  *(a1 + 8) = v1;
  *(a1 + 9) = v2;
  return result;
}

void SpatialTemplatePreference.contentExtent(_:)(uint64_t a1@<X8>, double a2@<D0>)
{
  v3 = *(v2 + 9);
  *a1 = a2;
  *(a1 + 8) = 0;
  *(a1 + 9) = v3;
}

double SpatialTemplatePreference.role(for:inSeatNumber:)@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

unint64_t lazy protocol witness table accessor for type SpatialTemplatePreference.Storage and conformance SpatialTemplatePreference.Storage()
{
  result = lazy protocol witness table cache variable for type SpatialTemplatePreference.Storage and conformance SpatialTemplatePreference.Storage;
  if (!lazy protocol witness table cache variable for type SpatialTemplatePreference.Storage and conformance SpatialTemplatePreference.Storage)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SpatialTemplatePreference.Storage and conformance SpatialTemplatePreference.Storage);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SpatialTemplatePreference.Storage(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SpatialTemplatePreference.Storage(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t GroupSession.requestEndpoint(with:)(uint64_t *a1)
{
  v3 = *a1;
  v4 = a1[1];
  v2[3] = v1;
  v2[4] = v3;
  v2[5] = v4;
  return MEMORY[0x1EEE6DFA0](GroupSession.requestEndpoint(with:), 0, 0);
}

uint64_t GroupSession.requestEndpoint(with:)()
{
  v19 = v0;
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Log.default);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = *(v0 + 32);
    v4 = *(v0 + 40);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v18 = v7;
    *v6 = 136315394;
    *(v6 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v4, &v18);
    *(v6 + 12) = 2080;

    v8 = GroupSession.description.getter();
    v10 = v9;

    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v10, &v18);

    *(v6 + 14) = v11;
    _os_log_impl(&dword_1AEE80000, v2, v3, "Application called requestEndpoint(with: %s) on %s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B2715BA0](v7, -1, -1);
    MEMORY[0x1B2715BA0](v6, -1, -1);
  }

  else
  {
  }

  v12 = *(v0 + 40);
  v17 = *(v0 + 24);
  v13 = swift_task_alloc();
  *(v0 + 48) = v13;
  *(v13 + 16) = v17;
  *(v13 + 32) = v12;
  v14 = swift_task_alloc();
  *(v0 + 56) = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo21NSXPCListenerEndpointCSgMd, &_sSo21NSXPCListenerEndpointCSgMR);
  *v14 = v0;
  v14[1] = AnyGroupActivity.tuConversationActivity<A>(as:);

  return MEMORY[0x1EEE6DE38](v0 + 16, 0, 0, 0xD000000000000016, 0x80000001AF01B390, partial apply for closure #1 in GroupSession.requestEndpoint(with:), v13, v15);
}

uint64_t closure #1 in GroupSession.requestEndpoint(with:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = *a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo21NSXPCListenerEndpointCSgs5Error_pGMd, &_sScCySo21NSXPCListenerEndpointCSgs5Error_pGMR);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v18 - v11;
  v19 = *(a2 + v8[37]);
  (*(v10 + 16))(&v18 - v11, a1, v9);
  v13 = (*(v10 + 80) + 56) & ~*(v10 + 80);
  v14 = swift_allocObject();
  *(v14 + 2) = v8[10];
  *(v14 + 3) = v8[11];
  *(v14 + 4) = a2;
  *(v14 + 5) = a3;
  *(v14 + 6) = a4;
  (*(v10 + 32))(&v14[v13], v12, v9);
  v15 = swift_allocObject();
  *(v15 + 16) = partial apply for closure #1 in closure #1 in GroupSession.requestEndpoint(with:);
  *(v15 + 24) = v14;
  aBlock[4] = _sIg_Ieg_TRTA_0;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_2;
  v16 = _Block_copy(aBlock);

  dispatch_sync(v19, v16);
  _Block_release(v16);
  LOBYTE(a4) = swift_isEscapingClosureAtFileLocation();

  if (a4)
  {
    __break(1u);
  }

  return result;
}

uint64_t closure #1 in closure #1 in GroupSession.requestEndpoint(with:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21 = a3;
  v7 = *a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo21NSXPCListenerEndpointCSgs5Error_pGMd, &_sScCySo21NSXPCListenerEndpointCSgs5Error_pGMR);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &aBlock[-1] - v10;
  v12 = v7[36];
  swift_beginAccess();
  v13 = *(a1 + v12);
  v14 = XPCClient.queue.getter();

  (*(v9 + 16))(v11, a4, v8);
  v15 = (*(v9 + 80) + 56) & ~*(v9 + 80);
  v16 = swift_allocObject();
  *(v16 + 2) = v7[10];
  *(v16 + 3) = v7[11];
  *(v16 + 4) = a1;
  v17 = v21;
  *(v16 + 5) = a2;
  *(v16 + 6) = v17;
  (*(v9 + 32))(&v16[v15], v11, v8);
  v18 = swift_allocObject();
  *(v18 + 16) = partial apply for closure #1 in closure #1 in closure #1 in GroupSession.requestEndpoint(with:);
  *(v18 + 24) = v16;
  aBlock[4] = thunk for @callee_guaranteed () -> ()partial apply;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_17;
  v19 = _Block_copy(aBlock);

  dispatch_sync(v14, v19);

  _Block_release(v19);
  LOBYTE(v9) = swift_isEscapingClosureAtFileLocation();

  if (v9)
  {
    __break(1u);
  }

  return result;
}

void closure #1 in closure #1 in closure #1 in GroupSession.requestEndpoint(with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo21NSXPCListenerEndpointCSgs5Error_pGMd, &_sScCySo21NSXPCListenerEndpointCSgs5Error_pGMR);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v17[-v10];
  v12 = *(*a1 + 288);
  swift_beginAccess();
  v13 = *(a1 + v12);
  v18 = a2;
  v19 = a3;
  v20 = a4;
  (*(v9 + 16))(v11, a4, v8);
  v14 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v15 = swift_allocObject();
  (*(v9 + 32))(v15 + v14, v11, v8);
  v16 = v13;
  XPCClient.withHost(body:errorHandler:)();
}

void closure #1 in closure #1 in closure #1 in closure #1 in GroupSession.requestEndpoint(with:)(void **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo21NSXPCListenerEndpointCSgs5Error_pGMd, &_sScCySo21NSXPCListenerEndpointCSgs5Error_pGMR);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = aBlock - v10;
  v12 = *a1;
  v13 = MEMORY[0x1B2714130](a2, a3);
  (*(v9 + 16))(v11, a4, v8);
  v14 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v15 = swift_allocObject();
  (*(v9 + 32))(v15 + v14, v11, v8);
  aBlock[4] = partial apply for closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in GroupSession.requestEndpoint(with:);
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed NSXPCListenerEndpoint?) -> ();
  aBlock[3] = &block_descriptor_26;
  v16 = _Block_copy(aBlock);

  [v12 requestEndpointWith:v13 completion:v16];
  _Block_release(v16);
}

uint64_t closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in GroupSession.requestEndpoint(with:)(void *a1)
{
  v1 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo21NSXPCListenerEndpointCSgs5Error_pGMd, &_sScCySo21NSXPCListenerEndpointCSgs5Error_pGMR);
  return CheckedContinuation.resume(returning:)();
}

void thunk for @escaping @callee_guaranteed (@guaranteed NSXPCListenerEndpoint?) -> ()(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t closure #2 in closure #1 in closure #1 in closure #1 in GroupSession.requestEndpoint(with:)(void *a1)
{
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Log.default);
  v3 = a1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136315138;
    v8 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v9 = String.init<A>(reflecting:)();
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v14);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_1AEE80000, v4, v5, "connection error %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x1B2715BA0](v7, -1, -1);
    MEMORY[0x1B2715BA0](v6, -1, -1);
  }

  v14 = a1;
  v12 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo21NSXPCListenerEndpointCSgs5Error_pGMd, &_sScCySo21NSXPCListenerEndpointCSgs5Error_pGMR);
  return CheckedContinuation.resume(throwing:)();
}

uint64_t GroupSession.requestEndpointError(with:)(uint64_t *a1)
{
  v2 = a1[1];
  v1[2] = *a1;
  v1[3] = v2;
  v3 = swift_task_alloc();
  v1[4] = v3;
  *v3 = v1;
  v3[1] = GroupSession.requestEndpointError(with:);

  return GroupSession.requestEndpoint(with:)(v1 + 2);
}

uint64_t GroupSession.requestEndpointError(with:)(uint64_t a1)
{
  v4 = *v2;
  *(v4 + 40) = v1;

  if (v1)
  {

    return MEMORY[0x1EEE6DFA0](GroupSession.requestEndpointError(with:), 0, 0);
  }

  else
  {
    v5 = *(v4 + 8);

    return v5(a1);
  }
}

uint64_t GroupSessionEndpointIdentifier.rawValue.getter()
{
  v1 = *v0;

  return v1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance GroupSessionEndpointIdentifier()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance GroupSessionEndpointIdentifier(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

void *protocol witness for RawRepresentable.init(rawValue:) in conformance GroupSessionEndpointIdentifier@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v2 = result[1];
  *a2 = *result;
  a2[1] = v2;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance GroupSessionEndpointIdentifier@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance GroupSessionEndpointIdentifier(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

unint64_t lazy protocol witness table accessor for type GroupSessionEndpointIdentifier and conformance GroupSessionEndpointIdentifier()
{
  result = lazy protocol witness table cache variable for type GroupSessionEndpointIdentifier and conformance GroupSessionEndpointIdentifier;
  if (!lazy protocol witness table cache variable for type GroupSessionEndpointIdentifier and conformance GroupSessionEndpointIdentifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GroupSessionEndpointIdentifier and conformance GroupSessionEndpointIdentifier);
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for GroupSessionEndpointIdentifier(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for GroupSessionEndpointIdentifier(uint64_t result, int a2, int a3)
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

double block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t objectdestroyTm_1()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo21NSXPCListenerEndpointCSgs5Error_pGMd, &_sScCySo21NSXPCListenerEndpointCSgs5Error_pGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t partial apply for closure #1 in closure #1 in GroupSession.requestEndpoint(with:)(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, char *))
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo21NSXPCListenerEndpointCSgs5Error_pGMd, &_sScCySo21NSXPCListenerEndpointCSgs5Error_pGMR) - 8);
  v3 = v1[4];
  v4 = v1[5];
  v5 = v1[6];
  v6 = v1 + ((*(v2 + 80) + 56) & ~*(v2 + 80));

  return a1(v3, v4, v5, v6);
}

uint64_t objectdestroy_19Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo21NSXPCListenerEndpointCSgs5Error_pGMd, &_sScCySo21NSXPCListenerEndpointCSgs5Error_pGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t partial apply for closure #2 in closure #1 in closure #1 in closure #1 in GroupSession.requestEndpoint(with:)(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo21NSXPCListenerEndpointCSgs5Error_pGMd, &_sScCySo21NSXPCListenerEndpointCSgs5Error_pGMR) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t one-time initialization function for shared()
{
  type metadata accessor for SystemCoordinatorTable();
  v0 = swift_allocObject();
  result = swift_defaultActor_initialize();
  *(v0 + 112) = MEMORY[0x1E69E7CC8];
  static SystemCoordinatorTable.shared = v0;
  return result;
}

{
  type metadata accessor for BackgroundAudioSessionAssertionManager();
  result = swift_initStaticObject();
  static BackgroundAudioSessionAssertionManager.shared = result;
  return result;
}

{
  type metadata accessor for StaticGroupActivityRegistry();
  v0 = swift_allocObject();
  *(v0 + 16) = MEMORY[0x1E69E7CC8];
  type metadata accessor for Lock();
  swift_allocObject();
  result = Lock.init()();
  *(v0 + 24) = result;
  static StaticGroupActivityRegistry.shared = v0;
  return result;
}

uint64_t SystemCoordinatorTable.__allocating_init()()
{
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v0 + 112) = MEMORY[0x1E69E7CC8];
  return v0;
}

uint64_t *SystemCoordinatorTable.shared.unsafeMutableAddressor()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  return &static SystemCoordinatorTable.shared;
}

double static SystemCoordinatorTable.shared.getter()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  return result;
}

uint64_t SystemCoordinatorTable.systemCoordinator(for:)(void *a1)
{
  v3 = a1[3];
  v4 = a1[4];
  v5 = __swift_project_boxed_opaque_existential_1(a1, v3);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = SystemCoordinatorTable.systemCoordinator(for:);

  return specialized SystemCoordinatorTable.systemCoordinator(for:)(v5, v1, v3, v4);
}

uint64_t SystemCoordinatorTable.systemCoordinator(for:)(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t closure #1 in SystemCoordinatorTable.systemCoordinator(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 56) = a1;
  *(v4 + 64) = a4;
  return MEMORY[0x1EEE6DFA0](closure #1 in SystemCoordinatorTable.systemCoordinator(for:), 0, 0);
}

uint64_t closure #1 in SystemCoordinatorTable.systemCoordinator(for:)()
{
  outlined init with copy of Transferable(*(v0 + 64), v0 + 16);
  type metadata accessor for SystemCoordinator(0);
  swift_allocObject();
  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  *v1 = v0;
  v1[1] = closure #1 in SystemCoordinatorTable.systemCoordinator(for:);

  return SystemCoordinator.init(clientProvider:)(v0 + 16);
}

{
  **(v0 + 56) = *(v0 + 80);
  return (*(v0 + 8))();
}

uint64_t closure #1 in SystemCoordinatorTable.systemCoordinator(for:)(uint64_t a1)
{
  *(*v1 + 80) = a1;

  return MEMORY[0x1EEE6DFA0](closure #1 in SystemCoordinatorTable.systemCoordinator(for:), 0, 0);
}

uint64_t closure #2 in SystemCoordinatorTable.systemCoordinator(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[14] = a5;
  v6[15] = a6;
  v6[13] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherV8IteratorVyAA03AnyC0VySbs5NeverOG_GMd, &_s7Combine14AsyncPublisherV8IteratorVyAA03AnyC0VySbs5NeverOG_GMR);
  v6[16] = v7;
  v6[17] = *(v7 - 8);
  v6[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #2 in SystemCoordinatorTable.systemCoordinator(for:), 0, 0);
}

uint64_t closure #2 in SystemCoordinatorTable.systemCoordinator(for:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherVyAA03AnyC0VySbs5NeverOGGMd, &_s7Combine14AsyncPublisherVyAA03AnyC0VySbs5NeverOGGMR);
  AsyncPublisher.makeAsyncIterator()();
  swift_beginAccess();
  v1 = lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type AsyncPublisher<AnyPublisher<Bool, Never>>.Iterator and conformance AsyncPublisher<A>.Iterator, &_s7Combine14AsyncPublisherV8IteratorVyAA03AnyC0VySbs5NeverOG_GMd, &_s7Combine14AsyncPublisherV8IteratorVyAA03AnyC0VySbs5NeverOG_GMR, MEMORY[0x1E695BF38]);
  v2 = swift_task_alloc();
  *(v0 + 152) = v2;
  *v2 = v0;
  v2[1] = closure #2 in SystemCoordinatorTable.systemCoordinator(for:);
  v3 = *(v0 + 128);

  return MEMORY[0x1EEE6D8C8](v0 + 176, v3, v1);
}

{
  *(*v1 + 160) = v0;

  if (v0)
  {
    v2 = closure #2 in SystemCoordinatorTable.systemCoordinator(for:);
  }

  else
  {
    v2 = closure #2 in SystemCoordinatorTable.systemCoordinator(for:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  *(v0 + 177) = *(v0 + 176);
  return MEMORY[0x1EEE6DFA0](closure #2 in SystemCoordinatorTable.systemCoordinator(for:), 0, 0);
}

{
  v1 = *(v0 + 177);
  if (v1 == 2)
  {
    (*(*(v0 + 136) + 8))(*(v0 + 144), *(v0 + 128));

    v2 = *(v0 + 8);

    return v2();
  }

  else if ((v1 & 1) != 0 || (Strong = swift_weakLoadStrong(), (*(v0 + 168) = Strong) == 0))
  {
    v5 = lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type AsyncPublisher<AnyPublisher<Bool, Never>>.Iterator and conformance AsyncPublisher<A>.Iterator, &_s7Combine14AsyncPublisherV8IteratorVyAA03AnyC0VySbs5NeverOG_GMd, &_s7Combine14AsyncPublisherV8IteratorVyAA03AnyC0VySbs5NeverOG_GMR, MEMORY[0x1E695BF38]);
    v6 = swift_task_alloc();
    *(v0 + 152) = v6;
    *v6 = v0;
    v6[1] = closure #2 in SystemCoordinatorTable.systemCoordinator(for:);
    v7 = *(v0 + 128);

    return MEMORY[0x1EEE6D8C8](v0 + 176, v7, v5);
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](closure #2 in SystemCoordinatorTable.systemCoordinator(for:), Strong, 0);
  }
}

{
  *(v0 + 88) = *(v0 + 160);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

{
  v1 = v0[21];
  swift_beginAccess();
  v2 = *(v1 + 112);
  if (*(v2 + 16))
  {
    v3 = v0[15];

    v4 = specialized __RawDictionaryStorage.find<A>(_:)(v3);
    if (v5)
    {
      v6 = v0[15];
      v7 = *(*(v2 + 56) + 16 * v4 + 8);

      MEMORY[0x1B27144E0](v7, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7410]);
      swift_beginAccess();
      v8 = specialized __RawDictionaryStorage.find<A>(_:)(v6);
      if (v9)
      {
        v10 = v8;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v12 = *(v1 + 112);
        v0[12] = v12;
        *(v1 + 112) = 0x8000000000000000;
        if (!isUniquelyReferenced_nonNull_native)
        {
          specialized _NativeDictionary.copy()();
          v12 = v0[12];
        }

        v13 = *(v12 + 48);
        v14 = type metadata accessor for UUID();
        (*(*(v14 - 8) + 8))(v13 + *(*(v14 - 8) + 72) * v10, v14);

        specialized _NativeDictionary._delete(at:)(v10, v12);
        *(v1 + 112) = v12;
      }

      swift_endAccess();
    }

    else
    {
    }
  }

  v15 = lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type AsyncPublisher<AnyPublisher<Bool, Never>>.Iterator and conformance AsyncPublisher<A>.Iterator, &_s7Combine14AsyncPublisherV8IteratorVyAA03AnyC0VySbs5NeverOG_GMd, &_s7Combine14AsyncPublisherV8IteratorVyAA03AnyC0VySbs5NeverOG_GMR, MEMORY[0x1E695BF38]);
  v16 = swift_task_alloc();
  v0[19] = v16;
  *v16 = v0;
  v16[1] = closure #2 in SystemCoordinatorTable.systemCoordinator(for:);
  v17 = v0[16];

  return MEMORY[0x1EEE6D8C8](v0 + 22, v17, v15);
}

uint64_t SystemCoordinatorTable.clearSystemCoordinator(_:)(uint64_t a1)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v12[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  result = swift_beginAccess();
  v8 = *(v1 + 112);
  if (*(v8 + 16))
  {

    v9 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
    if (v10)
    {
      v11 = *(*(v8 + 56) + 16 * v9 + 8);

      MEMORY[0x1B27144E0](v11, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7410]);
      (*(v4 + 16))(v6, a1, v3);
      swift_beginAccess();
      specialized Dictionary.subscript.setter(0, 0, v6);
      swift_endAccess();
    }

    else
    {
    }
  }

  return result;
}