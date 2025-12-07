uint64_t closure #1 in closure #1 in Publishers.WaitUntilAvailable.Inner.receive<A>(subscriber:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v21 = *(result + *(*result + 200));

    os_unfair_lock_lock(*(v21 + 16));
    closure #1 in closure #1 in closure #1 in Publishers.WaitUntilAvailable.Inner.receive<A>(subscriber:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11);
    os_unfair_lock_unlock(*(v21 + 16));
  }

  return result;
}

uint64_t closure #1 in closure #1 in closure #1 in Publishers.WaitUntilAvailable.Inner.receive<A>(subscriber:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  swift_getAssociatedTypeWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v15 = &v17[-v14];
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    (*(v13 + 16))(v15, a2, AssociatedTypeWitness);
    v19 = 0;
    swift_beginAccess();
    type metadata accessor for Array();
    swift_getAssociatedConformanceWitness();
    type metadata accessor for Dictionary();
    Dictionary.subscript.setter();
    swift_endAccess();
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    (*(v13 + 16))(v15, a2, AssociatedTypeWitness);
    v18 = 0;
    memset(&v17[32], 0, 32);
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7Combine11Cancellable_pMd, &_s7Combine11Cancellable_pMR);
    swift_getAssociatedConformanceWitness();
    type metadata accessor for Dictionary();
    Dictionary.subscript.setter();
    swift_endAccess();
  }

  return result;
}

void closure #2 in Publishers.WaitUntilAvailable.Inner.receive<A>(subscriber:)(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v18 = a5;
  v9 = *a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = type metadata accessor for Optional();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v17 - v13;
  os_unfair_lock_lock(*(*(a2 + *(v9 + 200)) + 16));
  v15 = *(AssociatedTypeWitness - 8);
  (*(v15 + 16))(v14, a1, AssociatedTypeWitness);
  (*(v15 + 56))(v14, 0, 1, AssociatedTypeWitness);
  v16 = *(*a2 + 192);
  swift_beginAccess();
  (*(v12 + 40))(a2 + v16, v14, v11);
  swift_endAccess();
  v19 = a3;
  v20 = a4;
  v21 = a2;
  swift_getAssociatedTypeWitness();
  type metadata accessor for Array();
  swift_getWitnessTable();
  *v18 = Sequence.flatMap<A>(_:)();
  os_unfair_lock_unlock(*(*(a2 + *(*a2 + 200)) + 16));
}

uint64_t closure #1 in closure #2 in Publishers.WaitUntilAvailable.Inner.receive<A>(subscriber:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v19 = a3;
  v5 = *a2;
  swift_getAssociatedTypeWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v17 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v18 = v16 - v7;
  v8 = *(v5 + 176);
  swift_beginAccess();
  v9 = *(a2 + v8);
  v10 = type metadata accessor for Array();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();

  v12 = a1;
  MEMORY[0x1B270FE60](v21, a1, v9, AssociatedTypeWitness, v10, AssociatedConformanceWitness);

  if (*&v21[0])
  {
    v16[1] = AssociatedConformanceWitness;
    v13 = v18;
    v14 = *(v17 + 16);
    v17 = *&v21[0];
    v14(v18, v12, AssociatedTypeWitness);
    v20 = 0;
    swift_beginAccess();
    type metadata accessor for Dictionary();
    Dictionary.subscript.setter();
    swift_endAccess();
    v14(v13, v12, AssociatedTypeWitness);
    v22 = 0;
    memset(v21, 0, sizeof(v21));
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7Combine11Cancellable_pMd, &_s7Combine11Cancellable_pMR);
    type metadata accessor for Dictionary();
    Dictionary.subscript.setter();
    swift_endAccess();
    result = v17;
  }

  else
  {
    result = static Array._allocateUninitialized(_:)();
  }

  *v19 = result;
  return result;
}

uint64_t key path getter for Sequence.publisher : <A, B, C><A1>[A.Output](uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();
  type metadata accessor for Array();
  swift_getWitnessTable();
  return Sequence.publisher.getter();
}

uint64_t *Publishers.WaitUntilAvailable.Inner.deinit()
{
  v1 = *v0;
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 144));
  (*(*(*(v1 + 88) - 8) + 8))(v0 + *(*v0 + 152), *(v1 + 88));
  (*(*(*(v1 + 96) - 8) + 8))(v0 + *(*v0 + 160), *(v1 + 96));
  v2 = *(*v0 + 168);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(v0 + v2, AssociatedTypeWitness);

  v4 = *(*v0 + 192);
  swift_getAssociatedTypeWitness();
  v5 = type metadata accessor for Optional();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);

  return v0;
}

uint64_t Publishers.WaitUntilAvailable.Inner.__deallocating_deinit()
{
  Publishers.WaitUntilAvailable.Inner.deinit();

  return swift_deallocClassInstance();
}

uint64_t partial apply for implicit closure #1 in Publishers.WaitUntilAvailable.Inner.receive<A>(subscriber:)(uint64_t *a1)
{

  swift_getAtKeyPath();
}

unint64_t __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = dispatch thunk of Hashable._rawHashValue(seed:)();

  return __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v6, a2, a3);
}

unint64_t __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21[1] = a1;
  v21[2] = a4;
  MEMORY[0x1EEE9AC00](a1);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v4;
  v9 = -1 << *(v4 + 32);
  v11 = v10 & ~v9;
  v21[0] = v4 + 64;
  if ((*(v4 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v9;
    v15 = *(v6 + 16);
    v13 = v6 + 16;
    v14 = v15;
    v16 = *(v13 + 56);
    v17 = (v13 - 8);
    do
    {
      v18 = v13;
      v14(v8, *(v22 + 48) + v16 * v11, a3);
      v19 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*v17)(v8, a3);
      if (v19)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      v13 = v18;
    }

    while (((*(v21[0] + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  return v11;
}

uint64_t partial apply for closure #1 in closure #1 in Publishers.WaitUntilAvailable.Inner.receive<A>(subscriber:)()
{
  v1 = v0[2];
  v12 = v0[3];
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[8];
  v7 = v0[9];
  v9 = v0[10];
  v8 = v0[11];
  swift_getAssociatedTypeWitness();
  v10 = *(swift_getAssociatedTypeWitness() - 8);
  return closure #1 in closure #1 in Publishers.WaitUntilAvailable.Inner.receive<A>(subscriber:)(v0[12], v0 + ((*(v10 + 80) + 104) & ~*(v10 + 80)), v1, v12, v2, v3, v4, v5, v6, v7, v9, v8);
}

uint64_t partial apply for implicit closure #1 in closure #1 in Publishers.WaitUntilAvailable.Inner.receive<A>(subscriber:)()
{
  swift_getAssociatedTypeWitness();

  return static Array._allocateUninitialized(_:)();
}

BOOL one-time initialization function for identity()
{
  v0 = getpid();
  result = _cp_sandbox_check(v0, *MEMORY[0x1E69E9BD0] | 2u);
  static ConversationManagerInterface.identity = !result;
  return result;
}

uint64_t static ConversationManagerInterface.identity.getter@<X0>(_BYTE *a1@<X8>)
{
  if (one-time initialization token for identity != -1)
  {
    v1 = a1;
    result = swift_once();
    a1 = v1;
  }

  *a1 = static ConversationManagerInterface.identity;
  return result;
}

id closure #1 in variable initialization expression of static ConversationManagerInterface.hostObjectInterface()
{
  v0 = [objc_opt_self() interfaceWithProtocol_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlXpGMd, &_ss23_ContiguousArrayStorageCyyXlXpGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AEE07B10;
  v2 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSSet, 0x1E695DFD8);
  *(inited + 32) = v2;
  *(inited + 40) = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationMember, 0x1E69D8B80);
  specialized _arrayForceCast<A, B>(_:)(inited);
  swift_setDeallocating();
  v3 = objc_allocWithZone(MEMORY[0x1E695DFD8]);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v5 = [v3 initWithArray_];

  static Set._conditionallyBridgeFromObjectiveC(_:result:)();
  v6 = Set._bridgeToObjectiveC()().super.isa;

  [v0 setClasses:v6 forSelector:sel_addRemoteMembers_toConversationWithUUID_ argumentIndex:0 ofReply:0];

  v7 = swift_initStackObject();
  *(v7 + 16) = xmmword_1AEE07B10;
  *(v7 + 32) = v2;
  *(v7 + 40) = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationParticipantPresentationContext, 0x1E69D8BA0);
  specialized _arrayForceCast<A, B>(_:)(v7);
  swift_setDeallocating();
  v8 = objc_allocWithZone(MEMORY[0x1E695DFD8]);
  v9 = Array._bridgeToObjectiveC()().super.isa;

  v10 = [v8 initWithArray_];

  static Set._conditionallyBridgeFromObjectiveC(_:result:)();
  v11 = Set._bridgeToObjectiveC()().super.isa;

  [v0 setClasses:v11 forSelector:sel_updateConversationWith_participantPresentationContexts_ argumentIndex:1 ofReply:0];

  v12 = swift_initStackObject();
  *(v12 + 16) = xmmword_1AEE07B30;
  *(v12 + 32) = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSDictionary, 0x1E695DF20);
  *(v12 + 40) = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSArray, 0x1E695DEC8);
  *(v12 + 48) = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSString, 0x1E696AEC0);
  *(v12 + 56) = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSNumber, 0x1E696AD98);
  specialized _arrayForceCast<A, B>(_:)(v12);
  swift_setDeallocating();
  v13 = objc_allocWithZone(MEMORY[0x1E695DFD8]);
  v14 = Array._bridgeToObjectiveC()().super.isa;

  v15 = [v13 initWithArray_];

  static Set._conditionallyBridgeFromObjectiveC(_:result:)();
  v16 = Set._bridgeToObjectiveC()().super.isa;

  [v0 setClasses:v16 forSelector:sel_includeMetricsReport_onConversationWithUUID_ argumentIndex:0 ofReply:0];

  v17 = swift_initStackObject();
  *(v17 + 16) = xmmword_1AEE07B20;
  v18 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSUUID, 0x1E696AFB0);
  *(v17 + 32) = v18;
  specialized _arrayForceCast<A, B>(_:)(v17);
  swift_setDeallocating();
  v19 = objc_allocWithZone(MEMORY[0x1E695DFD8]);
  v20 = Array._bridgeToObjectiveC()().super.isa;

  v21 = [v19 initWithArray_];

  static Set._conditionallyBridgeFromObjectiveC(_:result:)();
  v22 = Set._bridgeToObjectiveC()().super.isa;

  [v0 setClasses:v22 forSelector:sel_advertiseGroupActivity_reply_ argumentIndex:0 ofReply:1];

  v23 = swift_initStackObject();
  *(v23 + 16) = xmmword_1AEE07B20;
  *(v23 + 32) = v18;
  specialized _arrayForceCast<A, B>(_:)(v23);
  swift_setDeallocating();
  v24 = objc_allocWithZone(MEMORY[0x1E695DFD8]);
  v25 = Array._bridgeToObjectiveC()().super.isa;

  v26 = [v24 initWithArray_];

  static Set._conditionallyBridgeFromObjectiveC(_:result:)();
  v27 = Set._bridgeToObjectiveC()().super.isa;

  [v0 setClasses:v27 forSelector:sel_stopAdvertisingGroupActivity_reply_ argumentIndex:0 ofReply:1];

  return v0;
}

id closure #1 in variable initialization expression of static ConversationManagerInterface.clientObjectInterface()
{
  v0 = [objc_opt_self() interfaceWithProtocol_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlXpGMd, &_ss23_ContiguousArrayStorageCyyXlXpGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AEE09B00;
  *(inited + 32) = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSDictionary, 0x1E695DF20);
  *(inited + 40) = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSUUID, 0x1E696AFB0);
  *(inited + 48) = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationActivitySessionContainer, 0x1E69D8B60);
  specialized _arrayForceCast<A, B>(_:)(inited);
  swift_setDeallocating();
  v2 = objc_allocWithZone(MEMORY[0x1E695DFD8]);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v4 = [v2 initWithArray_];

  static Set._conditionallyBridgeFromObjectiveC(_:result:)();
  v5 = Set._bridgeToObjectiveC()().super.isa;

  [v0 setClasses:v5 forSelector:sel_updateConversationContainersWithConversationContainersByGroupUUID_ argumentIndex:0 ofReply:0];

  return v0;
}

id static ConversationManagerInterface.hostObjectInterface.getter(void *a1, void **a2, uint64_t a3)
{
  if (*a1 == -1)
  {
    v4 = *a2;
  }

  else
  {
    swift_once();
    v4 = *a2;
  }

  return v4;
}

uint64_t protocol witness for static XPCInterface.identity.getter in conformance ConversationManagerInterface@<X0>(_BYTE *a1@<X8>)
{
  if (one-time initialization token for identity != -1)
  {
    v1 = a1;
    result = swift_once();
    a1 = v1;
  }

  *a1 = static ConversationManagerInterface.identity;
  return result;
}

id protocol witness for static XPCInterface.hostObjectInterface.getter in conformance ConversationManagerInterface(uint64_t a1, uint64_t a2, void *a3, void **a4, uint64_t a5)
{
  if (*a3 == -1)
  {
    v6 = *a4;
  }

  else
  {
    swift_once();
    v6 = *a4;
  }

  return v6;
}

uint64_t PeoplePickerClient.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = direct field offset for PeoplePickerClient.id;
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PeoplePickerClient.delegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + direct field offset for PeoplePickerClient.delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*PeoplePickerClient.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = direct field offset for PeoplePickerClient.delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return ActivitySession.sessionManager.modify;
}

Swift::Void __swiftcall PeoplePickerClient.handleServerDisconnect()()
{
  v1 = v0 + direct field offset for PeoplePickerClient.delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v2 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    (*(v2 + 8))(ObjectType, v2);
    swift_unknownObjectRelease();
  }
}

Swift::Void __swiftcall PeoplePickerClient.dismissViewController(success:)(Swift::Bool success)
{
  v3 = v1 + direct field offset for PeoplePickerClient.delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v4 = *(v3 + 8);
    ObjectType = swift_getObjectType();
    (*(v4 + 16))(success, ObjectType, v4);
    swift_unknownObjectRelease();
  }
}

void @objc PeoplePickerClient.dismissViewController(success:)(char *a1, uint64_t a2, uint64_t a3)
{
  v5 = &a1[direct field offset for PeoplePickerClient.delegate];
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v6 = *(v5 + 1);
    ObjectType = swift_getObjectType();
    v8 = *(v6 + 16);
    v9 = a1;
    v8(a3, ObjectType, v6);
    swift_unknownObjectRelease();
  }
}

uint64_t PeoplePickerClient.requestActivity(completionHandler:)(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v12 - v6;
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = a1;
  v9[5] = a2;
  v9[6] = v2;

  v10 = v2;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v7, &async function pointer to partial apply for closure #1 in PeoplePickerClient.requestActivity(completionHandler:), v9);
}

uint64_t closure #1 in PeoplePickerClient.requestActivity(completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  return MEMORY[0x1EEE6DFA0](closure #1 in PeoplePickerClient.requestActivity(completionHandler:), 0, 0);
}

uint64_t closure #1 in PeoplePickerClient.requestActivity(completionHandler:)()
{
  v1 = *(v0 + 56) + direct field offset for PeoplePickerClient.delegate;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 64) = Strong;
  if (Strong)
  {
    v3 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    v8 = (*(v3 + 24) + **(v3 + 24));
    v5 = swift_task_alloc();
    *(v0 + 72) = v5;
    *v5 = v0;
    v5[1] = closure #1 in PeoplePickerClient.requestActivity(completionHandler:);

    return v8(ObjectType, v3);
  }

  else
  {
    (*(v0 + 40))();
    v7 = *(v0 + 8);

    return v7();
  }
}

{
  v1 = *(v0 + 80);
  swift_unknownObjectRelease();
  (*(v0 + 40))(v1);

  v2 = *(v0 + 8);

  return v2();
}

{
  (*(v0 + 40))(0);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t closure #1 in PeoplePickerClient.requestActivity(completionHandler:)(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {

    swift_unknownObjectRelease();
    v5 = closure #1 in PeoplePickerClient.requestActivity(completionHandler:);
  }

  else
  {
    *(v4 + 80) = a1;
    v5 = closure #1 in PeoplePickerClient.requestActivity(completionHandler:);
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t partial apply for closure #1 in PeoplePickerClient.requestActivity(completionHandler:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return closure #1 in PeoplePickerClient.requestActivity(completionHandler:)(a1, v4, v5, v6, v7, v8);
}

uint64_t @objc PeoplePickerClient.requestActivity(completionHandler:)(void *a1, uint64_t a2, const void *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(a3);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned TUConversationActivity?) -> ();
  v11[5] = v9;
  v11[6] = a1;
  v12 = a1;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v7, &closure #1 in PeoplePickerClient.requestActivity(completionHandler:)partial apply, v11);
}

id PeoplePickerClient.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PeoplePickerClient.init()()
{
  ObjectType = swift_getObjectType();
  UUID.init()();
  *&v0[direct field offset for PeoplePickerClient.delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, sel_init);
}

id @objc PeoplePickerClient.init()(char *a1)
{
  ObjectType = swift_getObjectType();
  UUID.init()();
  *&a1[direct field offset for PeoplePickerClient.delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v4.receiver = a1;
  v4.super_class = ObjectType;
  return objc_msgSendSuper2(&v4, sel_init);
}

uint64_t PeoplePickerClient.__ivar_destroyer()
{
  v1 = direct field offset for PeoplePickerClient.id;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = v0 + direct field offset for PeoplePickerClient.delegate;

  return outlined destroy of weak ActivitySessionManagerProtocol?(v3);
}

id PeoplePickerClient.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t dispatch thunk of PeoplePickerClientDelegate.requestActivity()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 24) + **(a2 + 24));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = dispatch thunk of ConversationManagerClientProtocol.createActivitySession(with:onConversationWithUUID:);

  return v7(a1, a2);
}

uint64_t @objc PeoplePickerClient.__ivar_destroyer(uint64_t a1)
{
  v2 = direct field offset for PeoplePickerClient.id;
  v3 = type metadata accessor for UUID();
  (*(*(v3 - 8) + 8))(a1 + v2, v3);
  v4 = a1 + direct field offset for PeoplePickerClient.delegate;

  return outlined destroy of weak ActivitySessionManagerProtocol?(v4);
}

uint64_t type metadata accessor for PeoplePickerClient(uint64_t a1)
{
  result = type metadata singleton initialization cache for PeoplePickerClient;
  if (!type metadata singleton initialization cache for PeoplePickerClient)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for PeoplePickerClient(uint64_t a1)
{
  result = type metadata accessor for UUID();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t objectdestroyTm_2()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t closure #1 in PeoplePickerClient.requestActivity(completionHandler:)partial apply(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return closure #1 in PeoplePickerClient.requestActivity(completionHandler:)(a1, v4, v5, v6, v7, v8);
}

void Date.sinceEpochMillis.getter()
{
  Date.timeIntervalSince1970.getter();
  v1 = v0 * 1000.0;
  if ((*&v1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v1 <= -1.0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v1 >= 1.84467441e19)
  {
LABEL_7:
    __break(1u);
  }
}

uint64_t key path setter for CurrentSubject.wrappedValue : <A>CurrentSubject<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for CurrentSubject(0, *(a3 + a4 - 8), a3, a4);

  specialized CurrentSubject.wrappedValue.setter();
}

void (*CurrentSubject.wrappedValue.modify(void *a1, uint64_t a2))(uint64_t **a1, char a2)
{
  v5 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  v7 = v6;
  *a1 = v6;
  v8 = *(a2 + 16);
  *v6 = v8;
  v9 = *(v8 - 8);
  v6[1] = v9;
  v10 = *(v9 + 64);
  if (v5)
  {
    v6[2] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v6[2] = malloc(v10);
    v11 = malloc(v10);
  }

  v12 = *v2;
  v7[3] = v11;
  v7[4] = v12;
  CurrentValueSubject.value.getter();
  return CurrentSubject.wrappedValue.modify;
}

void CurrentSubject.wrappedValue.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[3];
  v5 = (*a1)[1];
  v4 = (*a1)[2];
  v6 = **a1;
  if (a2)
  {
    (*(v5 + 16))((*a1)[2], v3, v6);

    CurrentValueSubject.send(_:)();
    v7 = *(v5 + 8);
    v7(v4, v6);

    v7(v3, v6);
  }

  else
  {

    CurrentValueSubject.send(_:)();
    (*(v5 + 8))(v3, v6);
  }

  free(v3);
  free(v4);

  free(v2);
}

void *__swift_initWithCopy_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

void *__swift_assignWithCopy_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

void *__swift_assignWithTake_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

void IMUserNotification.init(identifier:timeout:alertLevel:displayFlags:displayInformation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v13 = objc_opt_self();
  v14 = MEMORY[0x1B270FF70](a1, a2);
  specialized _dictionaryUpCast<A, B, C, D>(_:)(a5);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v16 = [v13 userNotificationWithIdentifier:v14 timeout:a3 alertLevel:a4 displayFlags:isa displayInformation:a6];

  if (v16)
  {

    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    outlined init with take of Any(&v18, v19);
    swift_dynamicCast();
    (*(*(v6 - 8) + 32))(v19, v17, v6);
  }

  else
  {
    __break(1u);
  }
}

id static IMUserNotificationCenter.shared.getter()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = static IMUserNotificationCenter.shared;

  return v0;
}

void static IMUserNotificationCenter.shared.setter(uint64_t a1)
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = static IMUserNotificationCenter.shared;
  static IMUserNotificationCenter.shared = a1;
}

uint64_t (*static IMUserNotificationCenter.shared.modify(uint64_t a1))(uint64_t a1)
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return ActivitySession.audioSessionID.modify;
}

void thunk for @escaping @callee_guaranteed @Sendable (@guaranteed IMUserNotification?) -> ()(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  outlined init with copy of Any((a1 + 2), (a2 + 2));
  *a2 = v4;
  a2[1] = v3;
}

uint64_t specialized LazyMapSequence.Iterator.next()@<X0>(_OWORD *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_10:
    v12 = (v7 - 1) & v7;
    v13 = __clz(__rbit64(v7)) | (v8 << 6);
    v14 = (*(v3 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    outlined init with copy of Any(*(v3 + 56) + 32 * v13, v21);
    *&v22 = v16;
    *(&v22 + 1) = v15;
    outlined init with take of Any(v21, &v23);

    v18 = *(&v22 + 1);
    v19 = v22;
    v11 = v8;
LABEL_11:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v6;
    v1[3] = v11;
    v1[4] = v12;
    if (v18)
    {
      v20 = v1[5];
      *&v21[0] = v19;
      *(&v21[0] + 1) = v18;
      v21[1] = v23;
      v21[2] = v24;
      v20(v21);
      return outlined destroy of NSObject?(v21, &_sSS3key_yp5valuetMd, &_sSS3key_yp5valuetMR);
    }

    else
    {
      a1[1] = 0u;
      a1[2] = 0u;
      *a1 = 0u;
    }
  }

  else
  {
    v9 = (v6 + 64) >> 6;
    if (v9 <= v5 + 1)
    {
      v10 = v5 + 1;
    }

    else
    {
      v10 = (v6 + 64) >> 6;
    }

    v11 = v10 - 1;
    while (1)
    {
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v8 >= v9)
      {
        v18 = 0;
        v19 = 0;
        v12 = 0;
        v23 = 0u;
        v24 = 0u;
        v22 = 0u;
        goto LABEL_11;
      }

      v7 = *(v4 + 8 * v8);
      ++v5;
      if (v7)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

_OWORD *specialized LazyMapSequence.Iterator.next()@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_10:
    v12 = (v7 - 1) & v7;
    v13 = __clz(__rbit64(v7)) | (v8 << 6);
    outlined init with copy of AnyHashable(*(v3 + 48) + 40 * v13, &v17);
    outlined init with copy of Any(*(v3 + 56) + 32 * v13, v22);
    v23 = v17;
    v24 = v18;
    *&v25 = v19;
    result = outlined init with take of Any(v22, (&v25 + 8));
    v15 = *(&v24 + 1);
    v11 = v8;
LABEL_11:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v6;
    v1[3] = v11;
    v1[4] = v12;
    if (v15)
    {
      v16 = v1[5];
      v17 = v23;
      *&v18 = v24;
      *(&v18 + 1) = v15;
      v19 = v25;
      v20 = v26;
      v21 = v27;
      v16(&v17);
      return outlined destroy of NSObject?(&v17, &_ss11AnyHashableV3key_yp5valuetMd, &_ss11AnyHashableV3key_yp5valuetMR);
    }

    else
    {
      *(a1 + 64) = 0;
      *(a1 + 32) = 0u;
      *(a1 + 48) = 0u;
      *a1 = 0u;
      *(a1 + 16) = 0u;
    }
  }

  else
  {
    v9 = (v6 + 64) >> 6;
    if (v9 <= v5 + 1)
    {
      v10 = v5 + 1;
    }

    else
    {
      v10 = (v6 + 64) >> 6;
    }

    v11 = v10 - 1;
    while (1)
    {
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v8 >= v9)
      {
        v15 = 0;
        v12 = 0;
        v27 = 0;
        v25 = 0u;
        v26 = 0u;
        v23 = 0u;
        v24 = 0u;
        goto LABEL_11;
      }

      v7 = *(v4 + 8 * v8);
      ++v5;
      if (v7)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

void *specialized IMUserNotificationCenter.notification(withIdentifier:bundleIdentifier:displayInformation:showsIcon:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6)
  {
    type metadata accessor for ActivityAuthorizationManager();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v12 = objc_opt_self();

    v13 = [v12 bundleForClass_];
    v14 = MEMORY[0x1B270FF70](0x737465737341, 0xE600000000000000);
    v15 = MEMORY[0x1B270FF70](7496035, 0xE300000000000000);
    v16 = [v13 pathForResource:v14 ofType:v15];

    if (v16)
    {
      v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v19 = v18;

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1AEE07B10;
      *(inited + 32) = 0xD00000000000002DLL;
      v21 = MEMORY[0x1E69E6158];
      *(inited + 40) = 0x80000001AEE35AE0;
      *(inited + 48) = v17;
      *(inited + 56) = v19;
      *(inited + 72) = v21;
      *(inited + 80) = 0xD000000000000031;
      *(inited + 120) = v21;
      *(inited + 88) = 0x80000001AEE35B10;
      *(inited + 96) = 0x616C506572616853;
      *(inited + 104) = 0xE900000000000079;
      v22 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd, &_sSS_yptMR);
      swift_arrayDestroy();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v28 = a5;
      specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v22, specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B), 0, isUniquelyReferenced_nonNull_native, &v28);

      a5 = v28;
    }
  }

  else
  {
  }

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for IMUserNotification, 0x1E69A6188);

  IMUserNotification.init(identifier:timeout:alertLevel:displayFlags:displayInformation:)(a1, a2, 3, 0, a5, 0.0);
  v25 = v24;
  [v24 setUsesNotificationCenter_];
  v26 = MEMORY[0x1B270FF70](a3, a4);
  [v25 setRepresentedApplicationBundle_];

  return v25;
}

void specialized IMUserNotificationCenter.postNotification(withIdentifier:bundleIdentifier:displayInformation:showsIcon:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  v10 = specialized IMUserNotificationCenter.notification(withIdentifier:bundleIdentifier:displayInformation:showsIcon:)(a1, a2, a3, a4, a5, a6);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v11 = static IMUserNotificationCenter.shared;
  v12 = swift_allocObject();
  *(v12 + 16) = a7;
  *(v12 + 24) = a8;
  aBlock[4] = partial apply for closure #1 in IMUserNotificationCenter.postNotification(withIdentifier:bundleIdentifier:displayInformation:showsIcon:completionHandler:);
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed IMUserNotification?) -> ();
  aBlock[3] = &block_descriptor_22;
  v13 = _Block_copy(aBlock);
  v14 = v11;
  v15 = v10;

  [v14 addUserNotification:v15 listener:0 completionHandler:v13];
  _Block_release(v13);
}

uint64_t partial apply for closure #1 in IMUserNotificationCenter.postNotification(withIdentifier:bundleIdentifier:displayInformation:showsIcon:completionHandler:)(void *a1)
{
  v2 = *(v1 + 16);
  if (a1)
  {
    v3 = [a1 response];
  }

  else
  {
    v3 = 3;
  }

  return v2(v3);
}

void *specialized Sequence.compactMap<A>(_:)(uint64_t a1)
{
  v1 = a1;
  v25 = MEMORY[0x1E69E7CC0];
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for AddressableMember();
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_4(&lazy protocol witness table cache variable for type AddressableMember and conformance NSObject, 255, type metadata accessor for AddressableMember, MEMORY[0x1E69E81B8]);
    result = Set.Iterator.init(_cocoa:)();
    v1 = v20;
    v3 = v21;
    v4 = v22;
    v5 = v23;
    v6 = v24;
  }

  else
  {
    v7 = -1 << *(a1 + 32);
    v3 = a1 + 56;
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = v9 & *(a1 + 56);

    v5 = 0;
  }

  v16 = v3;
  v17 = MEMORY[0x1E69E7CC0];
  v15 = v1;
  if (v1 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v10 = v5;
  v11 = v6;
  v12 = v5;
  if (v6)
  {
LABEL_12:
    v13 = (v11 - 1) & v11;
    v14 = *(*(v1 + 48) + ((v12 << 9) | (8 * __clz(__rbit64(v11)))));
    if (v14)
    {
      while (1)
      {
        AddressableMember.idsDestination.getter();

        if (v18)
        {
          break;
        }

        MEMORY[0x1B2710150]();
        if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        result = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v17 = v25;
        v5 = v12;
        v6 = v13;
        v1 = v15;
        v3 = v16;
        if ((v15 & 0x8000000000000000) == 0)
        {
          goto LABEL_8;
        }

LABEL_14:
        if (__CocoaSet.Iterator.next()())
        {
          type metadata accessor for AddressableMember();
          swift_dynamicCast();
          v14 = v19;
          v12 = v5;
          v13 = v6;
          if (v19)
          {
            continue;
          }
        }

        goto LABEL_21;
      }

      outlined consume of Set<String>.Iterator._Variant(v15);
    }

    else
    {
LABEL_21:
      outlined consume of Set<String>.Iterator._Variant(v1);
    }

    return v17;
  }

  else
  {
    while (1)
    {
      v12 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v12 >= ((v4 + 64) >> 6))
      {
        goto LABEL_21;
      }

      v11 = *(v3 + 8 * v12);
      ++v10;
      if (v11)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  return result;
}

{
  v1 = a1;
  v25 = MEMORY[0x1E69E7CC0];
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for TUHandle();
    lazy protocol witness table accessor for type AddressableMember and conformance NSObject(&lazy protocol witness table cache variable for type TUHandle and conformance NSObject, type metadata accessor for TUHandle);
    result = Set.Iterator.init(_cocoa:)();
    v1 = v20;
    v3 = v21;
    v5 = v22;
    v4 = v23;
    v6 = v24;
  }

  else
  {
    v7 = -1 << *(a1 + 32);
    v3 = a1 + 56;
    v5 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = v9 & *(a1 + 56);

    v4 = 0;
  }

  v10 = MEMORY[0x1E69E7CC0];
  if (v1 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v11 = v4;
    v12 = v6;
    v13 = v4;
    if (!v6)
    {
      break;
    }

LABEL_12:
    v14 = (v12 - 1) & v12;
    v15 = *(*(v1 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v12)))));
    if (!v15)
    {
LABEL_20:
      outlined consume of Set<String>.Iterator._Variant(v1);
      return v10;
    }

    while (1)
    {
      v16 = type metadata accessor for AddressableMember();
      v17 = objc_allocWithZone(v16);
      *&v17[OBJC_IVAR____TtC14CopresenceCore17AddressableMember_handle] = v15;
      v19.receiver = v17;
      v19.super_class = v16;
      objc_msgSendSuper2(&v19, sel_init);
      MEMORY[0x1B2710150]();
      if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      result = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v10 = v25;
      v4 = v13;
      v6 = v14;
      if ((v1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (__CocoaSet.Iterator.next()())
      {
        type metadata accessor for TUHandle();
        swift_dynamicCast();
        v15 = v18;
        v13 = v4;
        v14 = v6;
        if (v18)
        {
          continue;
        }
      }

      goto LABEL_20;
    }
  }

  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v13 >= ((v5 + 64) >> 6))
    {
      goto LABEL_20;
    }

    v12 = *(v3 + 8 * v13);
    ++v11;
    if (v12)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

{
  v1 = a1;
  v25 = MEMORY[0x1E69E7CC0];
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for TUHandle();
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_7(&lazy protocol witness table cache variable for type TUHandle and conformance NSObject, type metadata accessor for TUHandle, MEMORY[0x1E69E81B8]);
    result = Set.Iterator.init(_cocoa:)();
    v1 = v20;
    v3 = v21;
    v5 = v22;
    v4 = v23;
    v6 = v24;
  }

  else
  {
    v7 = -1 << *(a1 + 32);
    v3 = a1 + 56;
    v5 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = v9 & *(a1 + 56);

    v4 = 0;
  }

  v10 = MEMORY[0x1E69E7CC0];
  if (v1 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v11 = v4;
    v12 = v6;
    v13 = v4;
    if (!v6)
    {
      break;
    }

LABEL_12:
    v14 = (v12 - 1) & v12;
    v15 = *(*(v1 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v12)))));
    if (!v15)
    {
LABEL_20:
      outlined consume of Set<String>.Iterator._Variant(v1);
      return v10;
    }

    while (1)
    {
      v16 = type metadata accessor for AddressableMember();
      v17 = objc_allocWithZone(v16);
      *&v17[OBJC_IVAR____TtC14CopresenceCore17AddressableMember_handle] = v15;
      v19.receiver = v17;
      v19.super_class = v16;
      objc_msgSendSuper2(&v19, sel_init);
      MEMORY[0x1B2710150]();
      if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      result = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v10 = v25;
      v4 = v13;
      v6 = v14;
      if ((v1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (__CocoaSet.Iterator.next()())
      {
        type metadata accessor for TUHandle();
        swift_dynamicCast();
        v15 = v18;
        v13 = v4;
        v14 = v6;
        if (v18)
        {
          continue;
        }
      }

      goto LABEL_20;
    }
  }

  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v13 >= ((v5 + 64) >> 6))
    {
      goto LABEL_20;
    }

    v12 = *(v3 + 8 * v13);
    ++v11;
    if (v12)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

Swift::Int specialized Set.subtracting(_:)(uint64_t a1, Swift::Int a2)
{
  v2 = a2;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v4 = __CocoaSet.count.getter();
    if ((v2 & 0xC000000000000001) != 0)
    {
      goto LABEL_3;
    }

LABEL_9:
    if (v4 > *(v2 + 16) >> 3)
    {
      goto LABEL_10;
    }

LABEL_13:
    specialized Set._subtract<A>(_:)(a1);
    return v2;
  }

  v4 = *(a1 + 16);
  if ((a2 & 0xC000000000000001) == 0)
  {
    goto LABEL_9;
  }

LABEL_3:
  if (v2 < 0)
  {
    v5 = v2;
  }

  else
  {
    v5 = v2 & 0xFFFFFFFFFFFFFF8;
  }

  if (v4 <= __CocoaSet.count.getter() / 8)
  {
    goto LABEL_13;
  }

  v6 = __CocoaSet.count.getter();
  v2 = _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfC14CopresenceCore17AddressableMemberC_Tt1g5(v5, v6);
LABEL_10:

  return specialized _NativeSet.subtracting<A>(_:)(a1, v2);
}

void *_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy14CopresenceCore23IDSGroupSessionProviderC11ParticipantVG_AF17AddressableMemberCs5NeverOTg504_s14d6Core23fgh77C28recomputeUnknownParticipants021_D1D34BE0B5DF16735B93L10C8E257E055LLyyFAA17jk5CAC11I6VXEfU_Tf1cn_n(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v36 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray.reserveCapacity(_:)();
    v4 = v1 + 56;
    v5 = _HashTable.startBucket.getter();
    v6 = *(v1 + 36);
    result = objc_opt_self();
    v33 = v1;
    v34 = result;
    v7 = 0;
    v29 = v1 + 64;
    v30 = v2;
    v31 = v6;
    v32 = v1 + 56;
    while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(v1 + 32))
    {
      v9 = v5 >> 6;
      if ((*(v4 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
      {
        goto LABEL_23;
      }

      if (v6 != *(v1 + 36))
      {
        goto LABEL_24;
      }

      v10 = (*(v1 + 48) + 24 * v5);
      v11 = *v10;
      v12 = v10[1];
      v13 = v10[2];

      v14 = MEMORY[0x1B270FF70](v12, v13);
      v15 = [v34 normalizedHandleWithDestinationID_];

      if (!v15)
      {
        v16 = objc_allocWithZone(MEMORY[0x1E69D8C00]);
        v17 = MEMORY[0x1B270FF70](v12, v13);
        v15 = [v16 initWithDestinationID_];
      }

      v18 = [objc_allocWithZone(MEMORY[0x1E69D8B90]) initWithIdentifier:v11 handle:v15];

      v19 = [v18 handle];
      v20 = type metadata accessor for AddressableMember();
      v21 = objc_allocWithZone(v20);
      *&v21[OBJC_IVAR____TtC14CopresenceCore17AddressableMember_handle] = v19;
      v35.receiver = v21;
      v35.super_class = v20;
      objc_msgSendSuper2(&v35, sel_init);

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      result = specialized ContiguousArray._endMutation()();
      v1 = v33;
      v8 = 1 << *(v33 + 32);
      if (v5 >= v8)
      {
        goto LABEL_25;
      }

      v4 = v32;
      v22 = *(v32 + 8 * v9);
      if ((v22 & (1 << v5)) == 0)
      {
        goto LABEL_26;
      }

      LODWORD(v6) = v31;
      if (v31 != *(v33 + 36))
      {
        goto LABEL_27;
      }

      v23 = v22 & (-2 << (v5 & 0x3F));
      if (v23)
      {
        v8 = __clz(__rbit64(v23)) | v5 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v24 = v9 << 6;
        v25 = v9 + 1;
        v26 = (v29 + 8 * v9);
        while (v25 < (v8 + 63) >> 6)
        {
          v28 = *v26++;
          v27 = v28;
          v24 += 64;
          ++v25;
          if (v28)
          {
            result = outlined consume of Set<AddressableMember>.Index._Variant(v5, v31, 0);
            v8 = __clz(__rbit64(v27)) + v24;
            goto LABEL_4;
          }
        }

        result = outlined consume of Set<AddressableMember>.Index._Variant(v5, v31, 0);
      }

LABEL_4:
      ++v7;
      v5 = v8;
      if (v7 == v30)
      {
        return v36;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }

  return result;
}

uint64_t specialized closure #1 in Task<>.reportFailure(on:function:process:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[11] = a8;
  v8[12] = v12;
  v8[9] = a6;
  v8[10] = a7;
  v8[7] = a4;
  v8[8] = a5;
  v9 = type metadata accessor for Date();
  v8[13] = v9;
  v8[14] = *(v9 - 8);
  v8[15] = swift_task_alloc();
  v8[16] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](specialized closure #1 in Task<>.reportFailure(on:function:process:), 0, 0);
}

{
  v8[14] = a8;
  v8[15] = v12;
  v8[12] = a6;
  v8[13] = a7;
  v8[10] = a4;
  v8[11] = a5;
  v9 = type metadata accessor for Date();
  v8[16] = v9;
  v8[17] = *(v9 - 8);
  v8[18] = swift_task_alloc();
  v8[19] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](specialized closure #1 in Task<>.reportFailure(on:function:process:), 0, 0);
}

uint64_t specialized closure #1 in Task<>.reportFailure(on:function:process:)(uint64_t a1)
{
  Date.init()();
  v2 = swift_task_alloc();
  *(v1 + 136) = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  *v2 = v1;
  v2[1] = specialized closure #1 in Task<>.reportFailure(on:function:process:);
  v4 = *(v1 + 56);
  v5 = MEMORY[0x1E69E7288];
  v6 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DA10](v3, v4, v6, v3, v5);
}

{
  *(*v1 + 192) = a1;

  return MEMORY[0x1EEE6DFA0](specialized closure #1 in Task<>.reportFailure(on:function:process:), 0, 0);
}

{
  Date.init()();
  v2 = swift_task_alloc();
  *(v1 + 160) = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  *v2 = v1;
  v2[1] = specialized closure #1 in Task<>.reportFailure(on:function:process:);
  v4 = *(v1 + 80);
  v5 = MEMORY[0x1E69E7288];

  return MEMORY[0x1EEE6DA10](v1 + 16, v4, &type metadata for IDSGroupSessionProvider.Participant, v3, v5);
}

{
  *(*v1 + 216) = a1;

  return MEMORY[0x1EEE6DFA0](specialized closure #1 in Task<>.reportFailure(on:function:process:), 0, 0);
}

uint64_t specialized closure #1 in Task<>.reportFailure(on:function:process:)()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = specialized closure #1 in Task<>.reportFailure(on:function:process:);
  }

  else
  {
    v2 = specialized closure #1 in Task<>.reportFailure(on:function:process:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  (*(v0[14] + 8))(v0[16], v0[13]);

  v1 = v0[1];

  return v1();
}

{
  v63 = v0;
  if (one-time initialization token for abcReporter != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[19] = __swift_project_value_buffer(v1, static Log.abcReporter);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[8];
    v4 = v0[9];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v62 = v7;
    *v6 = 136315138;
    *(v6 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v4, &v62);
    _os_log_impl(&dword_1AEB26000, v2, v3, "Detected failure on function %s. Reporting!", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x1B27120C0](v7, -1, -1);
    MEMORY[0x1B27120C0](v6, -1, -1);
  }

  if (v0[11])
  {
    v59 = v0[11];
    v58 = v0[10];
  }

  else
  {
    v8 = [objc_opt_self() mainBundle];
    v9 = [v8 bundleIdentifier];

    if (!v9)
    {

      v45 = Logger.logObject.getter();
      v46 = static os_log_type_t.error.getter();

      v47 = os_log_type_enabled(v45, v46);
      v48 = v0[18];
      v49 = v0[16];
      v51 = v0[13];
      v50 = v0[14];
      if (v47)
      {
        v53 = v0[8];
        v52 = v0[9];
        v61 = v0[16];
        v54 = swift_slowAlloc();
        v55 = swift_slowAlloc();
        v62 = v55;
        *v54 = 136315394;
        *(v54 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v53, v52, &v62);
        *(v54 + 12) = 2080;
        *(v54 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(7104878, 0xE300000000000000, &v62);
        _os_log_impl(&dword_1AEB26000, v45, v46, "Can't report failure on function %s because of missing processName %s", v54, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1B27120C0](v55, -1, -1);
        MEMORY[0x1B27120C0](v54, -1, -1);

        (*(v50 + 8))(v61, v51);
      }

      else
      {

        (*(v50 + 8))(v49, v51);
      }

      goto LABEL_22;
    }

    v58 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v59 = v10;
  }

  v11 = v0[12];
  v13 = v0[8];
  v12 = v0[9];
  v15 = v11[3];
  v14 = v11[4];
  v57 = v11;
  __swift_project_boxed_opaque_existential_1(v11, v15);
  swift_getErrorValue();

  v16 = Error.localizedDescription.getter();
  v18 = (*(v14 + 16))(v13, v12, v16, v17, v58, v59, v15, v14);
  v0[20] = v18;

  if (v18)
  {

    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v62 = v22;
      *v21 = 136315138;
      v23 = Dictionary.description.getter();
      v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v24, &v62);

      *(v21 + 4) = v25;
      _os_log_impl(&dword_1AEB26000, v19, v20, "Reporting signature %s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v22);
      MEMORY[0x1B27120C0](v22, -1, -1);
      MEMORY[0x1B27120C0](v21, -1, -1);
    }

    v26 = v0[15];
    v27 = v0[13];
    v28 = v0[14];
    v29 = v57[3];
    v30 = v57[4];
    __swift_project_boxed_opaque_existential_1(v0[12], v29);
    Date.init()();
    Date.timeIntervalSince(_:)();
    v32 = v31;
    v33 = *(v28 + 8);
    v0[21] = v33;
    v0[22] = (v28 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v33(v26, v27);
    v60 = (*(v30 + 24) + **(v30 + 24));
    v34 = swift_task_alloc();
    v0[23] = v34;
    *v34 = v0;
    v34[1] = specialized closure #1 in Task<>.reportFailure(on:function:process:);
    v35.n128_u64[0] = v32;

    return v60(v18, v29, v30, v35);
  }

  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.error.getter();
  v39 = os_log_type_enabled(v37, v38);
  v40 = v0[18];
  v41 = v0[16];
  v42 = v0[13];
  v43 = v0[14];
  if (v39)
  {
    v44 = swift_slowAlloc();
    *v44 = 0;
    _os_log_impl(&dword_1AEB26000, v37, v38, "Failed to convert signature payload", v44, 2u);
    MEMORY[0x1B27120C0](v44, -1, -1);
  }

  else
  {
  }

  (*(v43 + 8))(v41, v42);
LABEL_22:

  v56 = v0[1];

  return v56();
}

{
  v20 = v0;

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[24];
    v18 = v0[21];
    v4 = v0[18];
    v5 = v0[16];
    v6 = v0[13];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v19 = v8;
    *v7 = 136315138;
    v0[6] = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys11AnyHashableVypGMd, &_sSDys11AnyHashableVypGMR);
    v9 = String.init<A>(reflecting:)();
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v19);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_1AEB26000, v1, v2, "Received reporting response: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x1B27120C0](v8, -1, -1);
    MEMORY[0x1B27120C0](v7, -1, -1);

    v18(v5, v6);
  }

  else
  {
    v12 = v0[21];
    v13 = v0[18];
    v14 = v0[16];
    v15 = v0[13];

    v12(v14, v15);
  }

  v16 = v0[1];

  return v16();
}

{
  *(*v1 + 168) = v0;

  if (v0)
  {
    v2 = specialized closure #1 in Task<>.reportFailure(on:function:process:);
  }

  else
  {

    v2 = specialized closure #1 in Task<>.reportFailure(on:function:process:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  (*(v0[17] + 8))(v0[19], v0[16]);

  v1 = v0[1];

  return v1();
}

{
  v63 = v0;
  if (one-time initialization token for abcReporter != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[22] = __swift_project_value_buffer(v1, static Log.abcReporter);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[11];
    v4 = v0[12];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v62 = v7;
    *v6 = 136315138;
    *(v6 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v4, &v62);
    _os_log_impl(&dword_1AEB26000, v2, v3, "Detected failure on function %s. Reporting!", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x1B27120C0](v7, -1, -1);
    MEMORY[0x1B27120C0](v6, -1, -1);
  }

  if (v0[14])
  {
    v59 = v0[14];
    v58 = v0[13];
  }

  else
  {
    v8 = [objc_opt_self() mainBundle];
    v9 = [v8 bundleIdentifier];

    if (!v9)
    {

      v45 = Logger.logObject.getter();
      v46 = static os_log_type_t.error.getter();

      v47 = os_log_type_enabled(v45, v46);
      v48 = v0[21];
      v49 = v0[19];
      v51 = v0[16];
      v50 = v0[17];
      if (v47)
      {
        v53 = v0[11];
        v52 = v0[12];
        v61 = v0[19];
        v54 = swift_slowAlloc();
        v55 = swift_slowAlloc();
        v62 = v55;
        *v54 = 136315394;
        *(v54 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v53, v52, &v62);
        *(v54 + 12) = 2080;
        *(v54 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(7104878, 0xE300000000000000, &v62);
        _os_log_impl(&dword_1AEB26000, v45, v46, "Can't report failure on function %s because of missing processName %s", v54, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1B27120C0](v55, -1, -1);
        MEMORY[0x1B27120C0](v54, -1, -1);

        (*(v50 + 8))(v61, v51);
      }

      else
      {

        (*(v50 + 8))(v49, v51);
      }

      goto LABEL_22;
    }

    v58 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v59 = v10;
  }

  v11 = v0[15];
  v13 = v0[11];
  v12 = v0[12];
  v15 = v11[3];
  v14 = v11[4];
  v57 = v11;
  __swift_project_boxed_opaque_existential_1(v11, v15);
  swift_getErrorValue();

  v16 = Error.localizedDescription.getter();
  v18 = (*(v14 + 16))(v13, v12, v16, v17, v58, v59, v15, v14);
  v0[23] = v18;

  if (v18)
  {

    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v62 = v22;
      *v21 = 136315138;
      v23 = Dictionary.description.getter();
      v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v24, &v62);

      *(v21 + 4) = v25;
      _os_log_impl(&dword_1AEB26000, v19, v20, "Reporting signature %s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v22);
      MEMORY[0x1B27120C0](v22, -1, -1);
      MEMORY[0x1B27120C0](v21, -1, -1);
    }

    v26 = v0[18];
    v27 = v0[16];
    v28 = v0[17];
    v29 = v57[3];
    v30 = v57[4];
    __swift_project_boxed_opaque_existential_1(v0[15], v29);
    Date.init()();
    Date.timeIntervalSince(_:)();
    v32 = v31;
    v33 = *(v28 + 8);
    v0[24] = v33;
    v0[25] = (v28 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v33(v26, v27);
    v60 = (*(v30 + 24) + **(v30 + 24));
    v34 = swift_task_alloc();
    v0[26] = v34;
    *v34 = v0;
    v34[1] = specialized closure #1 in Task<>.reportFailure(on:function:process:);
    v35.n128_u64[0] = v32;

    return v60(v18, v29, v30, v35);
  }

  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.error.getter();
  v39 = os_log_type_enabled(v37, v38);
  v40 = v0[21];
  v41 = v0[19];
  v42 = v0[16];
  v43 = v0[17];
  if (v39)
  {
    v44 = swift_slowAlloc();
    *v44 = 0;
    _os_log_impl(&dword_1AEB26000, v37, v38, "Failed to convert signature payload", v44, 2u);
    MEMORY[0x1B27120C0](v44, -1, -1);
  }

  else
  {
  }

  (*(v43 + 8))(v41, v42);
LABEL_22:

  v56 = v0[1];

  return v56();
}

{
  v20 = v0;

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[27];
    v18 = v0[24];
    v4 = v0[21];
    v5 = v0[19];
    v6 = v0[16];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v19 = v8;
    *v7 = 136315138;
    v0[9] = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys11AnyHashableVypGMd, &_sSDys11AnyHashableVypGMR);
    v9 = String.init<A>(reflecting:)();
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v19);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_1AEB26000, v1, v2, "Received reporting response: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x1B27120C0](v8, -1, -1);
    MEMORY[0x1B27120C0](v7, -1, -1);

    v18(v5, v6);
  }

  else
  {
    v12 = v0[24];
    v13 = v0[21];
    v14 = v0[19];
    v15 = v0[16];

    v12(v14, v15);
  }

  v16 = v0[1];

  return v16();
}

uint64_t protocol witness for IDSServiceProtocol.accounts.getter in conformance IDSService()
{
  v1 = [*v0 accounts];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for IDSAccount, 0x1E69A4828);
  lazy protocol witness table accessor for type TUConversationActivitySessionContainer and conformance NSObject(&lazy protocol witness table cache variable for type IDSAccount and conformance NSObject, &lazy cache variable for type metadata for IDSAccount, 0x1E69A4828);
  v3 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t protocol witness for IDSServiceProtocol.devices.getter in conformance IDSService()
{
  v1 = [*v0 devices];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for IDSDevice, 0x1E69A4848);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

id protocol witness for IDSServiceProtocol.iCloudAccount.getter in conformance IDSService()
{
  v1 = [*v0 iCloudAccount];

  return v1;
}

uint64_t protocol witness for IDSServiceProtocol.serviceIdentifier.getter in conformance IDSService()
{
  v1 = [*v0 serviceIdentifier];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t IDSGroupSessionProvider.Participant.handle.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

id IDSGroupSessionProvider.Participant.tuConversationParticipant.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_opt_self();
  v7 = MEMORY[0x1B270FF70](a2, a3);
  v8 = [v6 normalizedHandleWithDestinationID_];

  if (!v8)
  {
    v9 = objc_allocWithZone(MEMORY[0x1E69D8C00]);
    v10 = MEMORY[0x1B270FF70](a2, a3);
    v8 = [v9 initWithDestinationID_];
  }

  v11 = [objc_allocWithZone(MEMORY[0x1E69D8B90]) initWithIdentifier:a1 handle:v8];

  return v11;
}

uint64_t static IDSGroupSessionProvider.Participant.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a1 != a4)
  {
    return 0;
  }

  if (a2 == a5 && a3 == a6)
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t IDSGroupSessionProvider.Participant.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  MEMORY[0x1B2711210](a2);

  return String.hash(into:)();
}

Swift::Int IDSGroupSessionProvider.Participant.hashValue.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Hasher.init(_seed:)();
  MEMORY[0x1B2711210](a1);
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance IDSGroupSessionProvider.Participant()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1B2711210](v1);
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance IDSGroupSessionProvider.Participant(uint64_t a1)
{
  MEMORY[0x1B2711210](*v1);

  return String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance IDSGroupSessionProvider.Participant(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  MEMORY[0x1B2711210](v2);
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance IDSGroupSessionProvider.Participant(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (a1[1] == a2[1] && a1[2] == a2[2])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

uint64_t IDSGroupSessionProvider.delegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC14CopresenceCore23IDSGroupSessionProvider_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*IDSGroupSessionProvider.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC14CopresenceCore23IDSGroupSessionProvider_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return ActivitySession.sessionManager.modify;
}

uint64_t IDSGroupSessionProvider.groupID.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14CopresenceCore23IDSGroupSessionProvider_groupID);

  return v1;
}

uint64_t IDSGroupSessionProvider.members.didset(Swift::Int a1)
{
  v2 = OBJC_IVAR____TtC14CopresenceCore23IDSGroupSessionProvider_members;

  v4 = specialized Set.subtracting(_:)(v3, a1);

  if ((v4 & 0xC000000000000001) == 0)
  {
    v5 = &unk_1ED931000;
    if (*(v4 + 16))
    {
      goto LABEL_3;
    }

LABEL_9:

    goto LABEL_10;
  }

  v5 = &unk_1ED931000;
  if (!__CocoaSet.count.getter())
  {
    goto LABEL_9;
  }

LABEL_3:
  if (v5[406] != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Log.service);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v37[0] = v10;
    *v9 = 136315138;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sShy14CopresenceCore17AddressableMemberCGMd, &_sShy14CopresenceCore17AddressableMemberCGMR);
    v11 = String.init<A>(reflecting:)();
    v13 = a1;
    v14 = v2;
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, v37);

    *(v9 + 4) = v15;
    v2 = v14;
    a1 = v13;
    _os_log_impl(&dword_1AEB26000, v7, v8, "Removing members: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x1B27120C0](v10, -1, -1);
    v16 = v9;
    v5 = &unk_1ED931000;
    MEMORY[0x1B27120C0](v16, -1, -1);
  }

  IDSGroupSessionProvider.removeMembers(_:)(v4);

LABEL_10:
  v17 = *(v36 + v2);

  v18 = specialized Set.subtracting(_:)(a1, v17);
  v19 = v18;
  if ((v18 & 0xC000000000000001) != 0)
  {
    if (!__CocoaSet.count.getter())
    {
      goto LABEL_19;
    }
  }

  else if (!*(v18 + 16))
  {
    goto LABEL_19;
  }

  if (v5[406] != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  __swift_project_value_buffer(v20, static Log.service);

  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v37[0] = v24;
    *v23 = 136315138;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sShy14CopresenceCore17AddressableMemberCGMd, &_sShy14CopresenceCore17AddressableMemberCGMR);
    v25 = String.init<A>(reflecting:)();
    v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, v37);

    *(v23 + 4) = v27;
    _os_log_impl(&dword_1AEB26000, v21, v22, "Adding members: %s", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v24);
    MEMORY[0x1B27120C0](v24, -1, -1);
    MEMORY[0x1B27120C0](v23, -1, -1);
  }

  IDSGroupSessionProvider.addMembers(_:)(v19);
LABEL_19:

  v29 = MEMORY[0x1E69E7D40];
  v30 = (*((*MEMORY[0x1E69E7D40] & *v36) + 0x148))(v28);
  v31 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy14CopresenceCore23IDSGroupSessionProviderC11ParticipantVG_AF17AddressableMemberCs5NeverOTg504_s14d6Core23fgh77C28recomputeUnknownParticipants021_D1D34BE0B5DF16735B93L10C8E257E055LLyyFAA17jk5CAC11I6VXEfU_Tf1cn_n(v30);

  v32 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC14CopresenceCore17AddressableMemberC_SayAFGTt0g5Tf4g_n(v31);

  v34 = specialized Set.subtracting(_:)(v33, v32);

  return (*((*v29 & *v36) + 0x168))(v34);
}

void *IDSGroupSessionProvider.groupSession.getter()
{
  v1 = OBJC_IVAR____TtC14CopresenceCore23IDSGroupSessionProvider_groupSession;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void IDSGroupSessionProvider.groupSession.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14CopresenceCore23IDSGroupSessionProvider_groupSession;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t IDSGroupSessionProvider.participantIdentifier.getter()
{
  v1 = ((*((*MEMORY[0x1E69E7D40] & *v0) + 0x128))() + 16);
  if (*v1)
  {
    v2 = v1[2 * *v1 + 1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void IDSGroupSessionProvider.userDefaults.getter(void *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC14CopresenceCore23IDSGroupSessionProvider____lazy_storage___userDefaults;
  swift_beginAccess();
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v1 + v3, &v10, &_s14CopresenceCore16ProtectedStorage_pSgMd, &_s14CopresenceCore16ProtectedStorage_pSgMR);
  if (v11)
  {
    outlined init with take of ContiguousBytes(&v10, a1);
  }

  else
  {
    v4 = v1;
    outlined destroy of NSObject?(&v10, &_s14CopresenceCore16ProtectedStorage_pSgMd, &_s14CopresenceCore16ProtectedStorage_pSgMR);
    v5 = [objc_opt_self() mainBundle];
    v6 = [v5 bundleIdentifier];

    if (v6)
    {
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSUserDefaults, 0x1E695E000);
      v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v9 = v8;

      static NSUserDefaults.classProtectedStorage(suiteName:)(v7, v9, a1);

      outlined init with copy of UserNotificationCenter(a1, &v10);
      swift_beginAccess();
      outlined assign with take of ProtectedStorage?(&v10, v4 + v3);
      swift_endAccess();
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t outlined assign with take of ProtectedStorage?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore16ProtectedStorage_pSgMd, &_s14CopresenceCore16ProtectedStorage_pSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t IDSGroupSessionProvider.userDefaults.setter(__int128 *a1)
{
  outlined init with take of ContiguousBytes(a1, v4);
  v2 = OBJC_IVAR____TtC14CopresenceCore23IDSGroupSessionProvider____lazy_storage___userDefaults;
  swift_beginAccess();
  outlined assign with take of ProtectedStorage?(v4, v1 + v2);
  return swift_endAccess();
}

void (*IDSGroupSessionProvider.userDefaults.modify(void *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x70uLL);
  }

  *a1 = v3;
  v3[13] = v1;
  IDSGroupSessionProvider.userDefaults.getter(v3);
  return IDSGroupSessionProvider.userDefaults.modify;
}

void IDSGroupSessionProvider.userDefaults.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 104);
  if (a2)
  {
    outlined init with copy of UserNotificationCenter(*a1, (v2 + 5));
    v4 = OBJC_IVAR____TtC14CopresenceCore23IDSGroupSessionProvider____lazy_storage___userDefaults;
    swift_beginAccess();
    outlined assign with take of ProtectedStorage?((v2 + 5), v3 + v4);
    swift_endAccess();
    __swift_destroy_boxed_opaque_existential_1Tm(v2);
  }

  else
  {
    outlined init with take of ContiguousBytes(*a1, (v2 + 5));
    v5 = OBJC_IVAR____TtC14CopresenceCore23IDSGroupSessionProvider____lazy_storage___userDefaults;
    swift_beginAccess();
    outlined assign with take of ProtectedStorage?((v2 + 5), v3 + v5);
    swift_endAccess();
  }

  free(v2);
}

uint64_t IDSGroupSessionProvider.currentPlugins.getter()
{
  v1 = v0 + OBJC_IVAR____TtC14CopresenceCore23IDSGroupSessionProvider__currentPlugins;
  os_unfair_lock_lock((v0 + OBJC_IVAR____TtC14CopresenceCore23IDSGroupSessionProvider__currentPlugins));
  v2 = *(v1 + 8);

  os_unfair_lock_unlock(v1);
  return v2;
}

uint64_t IDSGroupSessionProvider.currentPlugins.setter(uint64_t a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v16 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchQoS();
  v6 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = &v1[OBJC_IVAR____TtC14CopresenceCore23IDSGroupSessionProvider__currentPlugins];
  os_unfair_lock_lock(&v1[OBJC_IVAR____TtC14CopresenceCore23IDSGroupSessionProvider__currentPlugins]);

  *(v9 + 1) = a1;
  os_unfair_lock_unlock(v9);
  v10 = swift_allocObject();
  *(v10 + 16) = v1;
  aBlock[4] = partial apply for closure #2 in IDSGroupSessionProvider.currentPlugins.setter;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_23;
  v11 = _Block_copy(aBlock);
  v12 = v1;
  static DispatchQoS.unspecified.getter();
  v17 = MEMORY[0x1E69E7CC0];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_4(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, 255, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x1E69E6328]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1B27106E0](0, v8, v5, v11);
  _Block_release(v11);
  (*(v16 + 8))(v5, v3);
  (*(v6 + 8))(v8, v15);
}

uint64_t closure #2 in IDSGroupSessionProvider.currentPlugins.setter(void *a1)
{
  result = (*((*MEMORY[0x1E69E7D40] & *a1) + 0xC0))();
  if (result)
  {
    v4 = v3;
    ObjectType = swift_getObjectType();
    v9[3] = type metadata accessor for IDSGroupSessionProvider();
    v9[4] = _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_4(&lazy protocol witness table cache variable for type IDSGroupSessionProvider and conformance IDSGroupSessionProvider, v6, type metadata accessor for IDSGroupSessionProvider, &protocol conformance descriptor for IDSGroupSessionProvider);
    v9[0] = a1;
    v7 = *(v4 + 40);
    v8 = a1;
    v7(v9, ObjectType, v4);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1Tm(v9);
  }

  return result;
}

uint64_t (*IDSGroupSessionProvider.currentPlugins.modify(void *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  v3 = v1 + OBJC_IVAR____TtC14CopresenceCore23IDSGroupSessionProvider__currentPlugins;
  os_unfair_lock_lock(v3);
  v4 = *(v3 + 8);

  os_unfair_lock_unlock(v3);
  *a1 = v4;
  return IDSGroupSessionProvider.currentPlugins.modify;
}

uint64_t IDSGroupSessionProvider.currentPlugins.modify(uint64_t *a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    return IDSGroupSessionProvider.currentPlugins.setter(*a1);
  }

  IDSGroupSessionProvider.currentPlugins.setter(v2);
}

void *IDSGroupSessionProvider.virtualParticipant.getter()
{
  v1 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x128))();
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v1 + 16 + 16 * v2);
    v4 = v3;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t IDSGroupSessionProvider.participants.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14CopresenceCore23IDSGroupSessionProvider_participants;
  swift_beginAccess();
  *(v1 + v3) = a1;

  v5 = MEMORY[0x1E69E7D40];
  v6 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x148))(v4);
  v7 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy14CopresenceCore23IDSGroupSessionProviderC11ParticipantVG_AF17AddressableMemberCs5NeverOTg504_s14d6Core23fgh77C28recomputeUnknownParticipants021_D1D34BE0B5DF16735B93L10C8E257E055LLyyFAA17jk5CAC11I6VXEfU_Tf1cn_n(v6);

  v8 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC14CopresenceCore17AddressableMemberC_SayAFGTt0g5Tf4g_n(v7);

  v10 = specialized Set.subtracting(_:)(v9, v8);

  return (*((*v5 & *v1) + 0x168))(v10);
}

uint64_t (*IDSGroupSessionProvider.participants.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return IDSGroupSessionProvider.participants.modify;
}

uint64_t IDSGroupSessionProvider.participants.modify(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 24);
    v6 = MEMORY[0x1E69E7D40];
    v7 = (*((*MEMORY[0x1E69E7D40] & *v5) + 0x148))(result);
    v8 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy14CopresenceCore23IDSGroupSessionProviderC11ParticipantVG_AF17AddressableMemberCs5NeverOTg504_s14d6Core23fgh77C28recomputeUnknownParticipants021_D1D34BE0B5DF16735B93L10C8E257E055LLyyFAA17jk5CAC11I6VXEfU_Tf1cn_n(v7);

    v9 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC14CopresenceCore17AddressableMemberC_SayAFGTt0g5Tf4g_n(v8);

    v11 = specialized Set.subtracting(_:)(v10, v9);

    return (*((*v6 & *v5) + 0x168))(v11);
  }

  return result;
}

uint64_t IDSGroupSessionProvider.unknownParticipants.didset(uint64_t a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchQoS();
  v7 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14[1] = *&v1[OBJC_IVAR____TtC14CopresenceCore23IDSGroupSessionProvider_queue];
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = v1;
  aBlock[4] = partial apply for closure #1 in IDSGroupSessionProvider.unknownParticipants.didset;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_108;
  v11 = _Block_copy(aBlock);

  v12 = v1;
  static DispatchQoS.unspecified.getter();
  v16 = MEMORY[0x1E69E7CC0];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_4(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, 255, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x1E69E6328]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1B27106E0](0, v9, v6, v11);
  _Block_release(v11);
  (*(v4 + 8))(v6, v3);
  (*(v7 + 8))(v9, v15);
}

void closure #1 in IDSGroupSessionProvider.unknownParticipants.didset(uint64_t a1, void *a2)
{
  v4 = MEMORY[0x1E69E7D40];
  v5 = *((*MEMORY[0x1E69E7D40] & *a2) + 0x160);
  v6 = v5();
  v7 = _sSh2eeoiySbShyxG_ABtFZ14CopresenceCore17AddressableMemberC_Tt1g5(a1, v6);

  if (v7)
  {
    if (one-time initialization token for service != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, static Log.service);
    v10 = a2;

    oslog = Logger.logObject.getter();
    v11 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(oslog, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v30[0] = v14;
      *v12 = 138412802;
      *(v12 + 4) = v10;
      *v13 = a2;
      *(v12 + 12) = 2080;
      v15 = v10;
      v5();
      type metadata accessor for AddressableMember();
      _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_4(&lazy protocol witness table cache variable for type AddressableMember and conformance NSObject, 255, type metadata accessor for AddressableMember, MEMORY[0x1E69E81B8]);
      v16 = Set.description.getter();
      v18 = v17;

      v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v18, v30);

      *(v12 + 14) = v19;
      *(v12 + 22) = 2080;
      v20 = Set.description.getter();
      v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, v30);

      *(v12 + 24) = v22;
      _os_log_impl(&dword_1AEB26000, oslog, v11, "%@ not notifying delegate of updated unknownParticipant list %s because it's the same as the oldValue: %s", v12, 0x20u);
      outlined destroy of NSObject?(v13, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x1B27120C0](v13, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x1B27120C0](v14, -1, -1);
      MEMORY[0x1B27120C0](v12, -1, -1);
    }

    else
    {
    }
  }

  else if ((*((*v4 & *a2) + 0xC0))(v8))
  {
    v24 = v23;
    ObjectType = swift_getObjectType();
    v30[3] = type metadata accessor for IDSGroupSessionProvider();
    v30[4] = _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_4(&lazy protocol witness table cache variable for type IDSGroupSessionProvider and conformance IDSGroupSessionProvider, v26, type metadata accessor for IDSGroupSessionProvider, &protocol conformance descriptor for IDSGroupSessionProvider);
    v30[0] = a2;
    v27 = a2;
    v28 = v5();
    (*(v24 + 32))(v30, v28, ObjectType, v24);

    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1Tm(v30);
  }
}

uint64_t IDSGroupSessionProvider.unknownParticipants.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14CopresenceCore23IDSGroupSessionProvider_unknownParticipants;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  IDSGroupSessionProvider.unknownParticipants.didset(v4);
}

void (*IDSGroupSessionProvider.unknownParticipants.modify(uint64_t *a1))(void **a1, char a2)
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
  v5 = OBJC_IVAR____TtC14CopresenceCore23IDSGroupSessionProvider_unknownParticipants;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = *(v1 + v5);

  return IDSGroupSessionProvider.unknownParticipants.modify;
}

void IDSGroupSessionProvider.unknownParticipants.modify(void **a1, char a2)
{
  v2 = *a1;
  v4 = *(*a1 + 4);
  v3 = *(*a1 + 5);
  v5 = *(v4 + v3);
  *(v4 + v3) = *(*a1 + 3);
  if (a2)
  {

    IDSGroupSessionProvider.unknownParticipants.didset(v5);
  }

  else
  {
    IDSGroupSessionProvider.unknownParticipants.didset(v5);
  }

  free(v2);
}

uint64_t IDSGroupSessionProvider.abcReporter.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC14CopresenceCore23IDSGroupSessionProvider_abcReporter;
  swift_beginAccess();
  return outlined init with copy of UserNotificationCenter(v1 + v3, a1);
}

uint64_t IDSGroupSessionProvider.abcReporter.setter(__int128 *a1)
{
  v3 = OBJC_IVAR____TtC14CopresenceCore23IDSGroupSessionProvider_abcReporter;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1Tm((v1 + v3));
  outlined init with take of ContiguousBytes(a1, v1 + v3);
  return swift_endAccess();
}

void *IDSGroupSessionProvider.powerAssertion.getter()
{
  v1 = OBJC_IVAR____TtC14CopresenceCore23IDSGroupSessionProvider_powerAssertion;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void IDSGroupSessionProvider.powerAssertion.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14CopresenceCore23IDSGroupSessionProvider_powerAssertion;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t IDSGroupSessionProvider.state.didset()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v18 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS();
  v5 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC14CopresenceCore23IDSGroupSessionProvider_state;
  swift_beginAccess();
  if (*(v1 + v8) != 1)
  {
    if (one-time initialization token for service != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, static Log.service);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_1AEB26000, v10, v11, "IDSGroupSessionProvider getting rid of assertion", v12, 2u);
      MEMORY[0x1B27120C0](v12, -1, -1);
    }

    (*((*MEMORY[0x1E69E7D40] & *v1) + 0x198))(0);
  }

  v13 = swift_allocObject();
  *(v13 + 16) = v1;
  aBlock[4] = partial apply for closure #1 in IDSGroupSessionProvider.state.didset;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_102;
  v14 = _Block_copy(aBlock);
  v15 = v1;
  static DispatchQoS.unspecified.getter();
  v19 = MEMORY[0x1E69E7CC0];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_4(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, 255, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x1E69E6328]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1B27106E0](0, v7, v4, v14);
  _Block_release(v14);
  (*(v18 + 8))(v4, v2);
  (*(v5 + 8))(v7, v17);
}

uint64_t closure #1 in IDSGroupSessionProvider.state.didset(void *a1)
{
  v2 = MEMORY[0x1E69E7D40];
  result = (*((*MEMORY[0x1E69E7D40] & *a1) + 0xC0))();
  if (result)
  {
    v5 = v4;
    ObjectType = swift_getObjectType();
    v11[3] = type metadata accessor for IDSGroupSessionProvider();
    v11[4] = _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_4(&lazy protocol witness table cache variable for type IDSGroupSessionProvider and conformance IDSGroupSessionProvider, v7, type metadata accessor for IDSGroupSessionProvider, &protocol conformance descriptor for IDSGroupSessionProvider);
    v11[0] = a1;
    v8 = *((*v2 & *a1) + 0x1A8);
    v9 = a1;
    v10 = v8();
    (*(v5 + 8))(v11, v10, ObjectType, v5);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1Tm(v11);
  }

  return result;
}

uint64_t IDSGroupSessionProvider.state.getter()
{
  v1 = OBJC_IVAR____TtC14CopresenceCore23IDSGroupSessionProvider_state;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t IDSGroupSessionProvider.state.setter(char a1)
{
  v3 = OBJC_IVAR____TtC14CopresenceCore23IDSGroupSessionProvider_state;
  swift_beginAccess();
  *(v1 + v3) = a1;
  return IDSGroupSessionProvider.state.didset();
}

uint64_t (*IDSGroupSessionProvider.state.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return IDSGroupSessionProvider.state.modify;
}

uint64_t IDSGroupSessionProvider.state.modify(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return IDSGroupSessionProvider.state.didset();
  }

  return result;
}

id IDSGroupSessionProvider.__allocating_init(groupID:members:localMember:service:targetQueue:abcReporter:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7, uint64_t a8)
{
  v9 = v8;
  v40 = a8;
  v17 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v38 = *(v17 - 8);
  v39 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v37 = v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for OS_dispatch_queue.Attributes();
  MEMORY[0x1EEE9AC00](v19);
  v36 = v34 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for DispatchQoS();
  MEMORY[0x1EEE9AC00](v21 - 8);
  v41 = v9;
  v22 = objc_allocWithZone(v9);
  *&v22[OBJC_IVAR____TtC14CopresenceCore23IDSGroupSessionProvider_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v22[OBJC_IVAR____TtC14CopresenceCore23IDSGroupSessionProvider_groupSession] = 0;
  v23 = &v22[OBJC_IVAR____TtC14CopresenceCore23IDSGroupSessionProvider____lazy_storage___userDefaults];
  *v23 = 0u;
  *(v23 + 1) = 0u;
  *(v23 + 4) = 0;
  v24 = &v22[OBJC_IVAR____TtC14CopresenceCore23IDSGroupSessionProvider__currentPlugins];
  v25 = MEMORY[0x1E69E7CC0];
  *v24 = 0;
  *(v24 + 1) = v25;
  v26 = MEMORY[0x1E69E7CD0];
  *&v22[OBJC_IVAR____TtC14CopresenceCore23IDSGroupSessionProvider_participants] = MEMORY[0x1E69E7CD0];
  *&v22[OBJC_IVAR____TtC14CopresenceCore23IDSGroupSessionProvider_unknownParticipants] = v26;
  *&v22[OBJC_IVAR____TtC14CopresenceCore23IDSGroupSessionProvider_powerAssertion] = 0;
  v22[OBJC_IVAR____TtC14CopresenceCore23IDSGroupSessionProvider_state] = 0;
  v27 = &v22[OBJC_IVAR____TtC14CopresenceCore23IDSGroupSessionProvider_groupID];
  *v27 = a1;
  v27[1] = a2;
  *&v22[OBJC_IVAR____TtC14CopresenceCore23IDSGroupSessionProvider_members] = a3;
  v28 = &v22[OBJC_IVAR____TtC14CopresenceCore23IDSGroupSessionProvider_localMember];
  *v28 = a4;
  v28[1] = a5;
  outlined init with copy of UserNotificationCenter(a6, &v22[OBJC_IVAR____TtC14CopresenceCore23IDSGroupSessionProvider_service]);
  v34[1] = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  *&v47 = 0;
  *(&v47 + 1) = 0xE000000000000000;
  v43 = a4;
  swift_unknownObjectRetain();

  _StringGuts.grow(_:)(29);
  MEMORY[0x1B2710020](0xD000000000000018, 0x80000001AEE35B70);
  MEMORY[0x1B2710020](a1, a2);

  MEMORY[0x1B2710020](45, 0xE100000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore18IDSServiceProtocol_pMd, &_s14CopresenceCore18IDSServiceProtocol_pMR);
  v42 = a6;
  _print_unlocked<A, B>(_:_:)();
  v35 = a7;
  static DispatchQoS.unspecified.getter();
  *&v47 = MEMORY[0x1E69E7CC0];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_4(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, 255, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR, MEMORY[0x1E69E6328]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v38 + 104))(v37, *MEMORY[0x1E69E8090], v39);
  v29 = v40;
  *&v22[OBJC_IVAR____TtC14CopresenceCore23IDSGroupSessionProvider_queue] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v29, &v45, &_s14CopresenceCore19ABCReporterProtocol_pSgMd, &_s14CopresenceCore19ABCReporterProtocol_pSgMR);
  if (v46)
  {
    outlined init with take of ContiguousBytes(&v45, &v47);
  }

  else
  {
    v30 = type metadata accessor for ABCReporter();
    v31 = swift_allocObject();
    v31[2] = [objc_allocWithZone(MEMORY[0x1E69D4F80]) init];
    v31[3] = 0x636E795374736146;
    v31[4] = 0xE800000000000000;
    v31[5] = 0xD000000000000017;
    v31[6] = 0x80000001AEE17DD0;
    v48 = v30;
    v49 = &protocol witness table for ABCReporter;
    *&v47 = v31;
    if (v46)
    {
      outlined destroy of NSObject?(&v45, &_s14CopresenceCore19ABCReporterProtocol_pSgMd, &_s14CopresenceCore19ABCReporterProtocol_pSgMR);
    }
  }

  outlined init with take of ContiguousBytes(&v47, &v22[OBJC_IVAR____TtC14CopresenceCore23IDSGroupSessionProvider_abcReporter]);
  v44.receiver = v22;
  v44.super_class = v41;
  v32 = objc_msgSendSuper2(&v44, sel_init);
  outlined destroy of NSObject?(v29, &_s14CopresenceCore19ABCReporterProtocol_pSgMd, &_s14CopresenceCore19ABCReporterProtocol_pSgMR);
  __swift_destroy_boxed_opaque_existential_1Tm(v42);
  swift_unknownObjectRelease();

  return v32;
}

id IDSGroupSessionProvider.init(groupID:members:localMember:service:targetQueue:abcReporter:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7, uint64_t a8)
{
  v9 = specialized IDSGroupSessionProvider.init(groupID:members:localMember:service:targetQueue:abcReporter:)(a1, a2, a3, a4, a5, a6, a7, a8);

  swift_unknownObjectRelease();
  return v9;
}

id IDSGroupSessionProvider.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC14CopresenceCore23IDSGroupSessionProvider_groupSession;
  swift_beginAccess();
  v2 = *&v0[v1];
  if (v2)
  {
    [v2 invalidate];
  }

  v4.receiver = v0;
  v4.super_class = type metadata accessor for IDSGroupSessionProvider();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> IDSGroupSessionProvider.start()()
{
  v2 = IDSGroupSessionProvider.idsAccountForLocalMember()();
  if (!v1)
  {
    v3 = v2;
    v4 = MEMORY[0x1E69E7D40];
    if ((*((*MEMORY[0x1E69E7D40] & *v0) + 0xC0))())
    {
      swift_unknownObjectRelease();
      IDSGroupSessionProvider.idsSessionCreationOptions()();
      v6 = v5;
      if (one-time initialization token for service != -1)
      {
        swift_once();
      }

      v7 = type metadata accessor for Logger();
      __swift_project_value_buffer(v7, static Log.service);
      v8 = v0;

      v9 = Logger.logObject.getter();
      v10 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v9, v10))
      {
        v63 = v10;
        v11 = swift_slowAlloc();
        v62 = swift_slowAlloc();
        v67 = v62;
        *v11 = 136315650;
        v66 = *(v8 + OBJC_IVAR____TtC14CopresenceCore23IDSGroupSessionProvider_groupID + 8);

        v12 = String.init<A>(reflecting:)();
        v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v67);

        *(v11 + 4) = v14;
        *(v11 + 12) = 2080;
        v65 = v6;

        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd, &_sSDySSypGMR);
        v15 = String.init<A>(reflecting:)();
        v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, &v67);

        *(v11 + 14) = v17;
        *(v11 + 22) = 2080;
        v18 = *(v8 + OBJC_IVAR____TtC14CopresenceCore23IDSGroupSessionProvider_service + 24);
        v19 = *(v8 + OBJC_IVAR____TtC14CopresenceCore23IDSGroupSessionProvider_service + 32);
        __swift_project_boxed_opaque_existential_1((v8 + OBJC_IVAR____TtC14CopresenceCore23IDSGroupSessionProvider_service), v18);
        v20 = (*(v19 + 32))(v18, v19);
        if (v21)
        {
          v65 = v20;
          v66 = v21;
          v22 = String.init<A>(reflecting:)();
          v24 = v23;
        }

        else
        {
          v24 = 0xE300000000000000;
          v22 = 7104878;
        }

        v4 = MEMORY[0x1E69E7D40];
        v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v24, &v67);

        *(v11 + 24) = v30;
        _os_log_impl(&dword_1AEB26000, v9, v63, "Creating IDSGroupSession as LW with UUID %s using options %s on service %s", v11, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1B27120C0](v62, -1, -1);
        MEMORY[0x1B27120C0](v11, -1, -1);
      }

      else
      {
      }

      v31 = objc_allocWithZone(MEMORY[0x1E69A4868]);
      v3 = v3;
      v32 = MEMORY[0x1E69E6158];
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      v34 = [v31 initWithAccount:v3 options:isa];

      v35 = (*((*v4 & *v8) + 0xF8))(v34);
      v64 = *((*v4 & *v8) + 0xF0);
      v36 = (v64)(v35);
      if (v36)
      {
        v37 = v36;
        [v36 setDelegate:v8 queue:*(v8 + OBJC_IVAR____TtC14CopresenceCore23IDSGroupSessionProvider_queue)];
      }

      v38 = IDSGroupSessionProvider.idsJoinSessionOptions()();
      v39 = [objc_allocWithZone(CPFeatureFlags) init];
      v40 = [v39 wranglerEnabled];

      if (v40)
      {
        v41 = Logger.logObject.getter();
        v42 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v41, v42))
        {
          v43 = swift_slowAlloc();
          *v43 = 0;
          _os_log_impl(&dword_1AEB26000, v41, v42, "Grabbing power assertion", v43, 2u);
          MEMORY[0x1B27120C0](v43, -1, -1);
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys11AnyHashableV_yptGMd, &_ss23_ContiguousArrayStorageCys11AnyHashableV_yptGMR);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1AEE07B10;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        AnyHashable.init<A>(_:)();
        v45 = [objc_opt_self() processInfo];
        [v45 processIdentifier];

        v46 = Int32._bridgeToObjectiveC()().super.super.isa;
        *(inited + 96) = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSNumber, 0x1E696AD98);
        *(inited + 72) = v46;
        v65 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v66 = v47;
        AnyHashable.init<A>(_:)();
        *(inited + 168) = v32;
        *(inited + 144) = 0xD000000000000022;
        *(inited + 152) = 0x80000001AEE35BB0;
        _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_ypTt0g5Tf4g_n(inited);
        swift_setDeallocating();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11AnyHashableV_yptMd, &_ss11AnyHashableV_yptMR);
        swift_arrayDestroy();
        v48 = objc_allocWithZone(MEMORY[0x1E69A6130]);
        v49 = MEMORY[0x1B270FF70](0xD000000000000018, 0x80000001AEE35B90);
        v50 = Dictionary._bridgeToObjectiveC()().super.isa;

        v51 = [v48 initWithIdentifier:v49 timeoutSec:v50 properties:0.0];

        (*((*MEMORY[0x1E69E7D40] & *v8) + 0x198))(v51);
      }

      v52 = Logger.logObject.getter();
      v53 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        v55 = swift_slowAlloc();
        v65 = v55;
        *v54 = 136315138;
        v67 = v38;

        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd, &_sSDySSypGMR);
        v56 = String.init<A>(reflecting:)();
        v58 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v56, v57, &v65);

        *(v54 + 4) = v58;
        _os_log_impl(&dword_1AEB26000, v52, v53, "Joining group session with options %s", v54, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v55);
        MEMORY[0x1B27120C0](v55, -1, -1);
        MEMORY[0x1B27120C0](v54, -1, -1);
      }

      v59 = v64();
      if (v59)
      {
        v60 = v59;
        specialized _dictionaryUpCast<A, B, C, D>(_:)(v38);

        v61 = Dictionary._bridgeToObjectiveC()().super.isa;

        [v60 joinWithOptions_];
      }

      else
      {
      }
    }

    else
    {
      if (one-time initialization token for service != -1)
      {
        swift_once();
      }

      v25 = type metadata accessor for Logger();
      __swift_project_value_buffer(v25, static Log.service);
      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&dword_1AEB26000, v26, v27, "IDSGroupSessionProvider start called before setting delegate", v28, 2u);
        MEMORY[0x1B27120C0](v28, -1, -1);
      }

      lazy protocol witness table accessor for type IDSGroupSessionProvider.IDSGroupSessionProviderError and conformance IDSGroupSessionProvider.IDSGroupSessionProviderError();
      swift_allocError();
      *v29 = 2;
      swift_willThrow();
    }
  }
}

Swift::Void __swiftcall IDSGroupSessionProvider.leave()()
{
  if (one-time initialization token for service != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Log.service);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = MEMORY[0x1E69E7D40];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v15 = v8;
    *v7 = 136315138;
    if ((*((*v6 & *v2) + 0xF0))())
    {
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for IDSGroupSession, 0x1E69A4868);
      v9 = String.init<A>(reflecting:)();
      v11 = v10;
    }

    else
    {
      v11 = 0xE300000000000000;
      v9 = 7104878;
    }

    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v11, &v15);

    *(v7 + 4) = v13;
    _os_log_impl(&dword_1AEB26000, v3, v4, "Leaving IDSGroupSession %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x1B27120C0](v8, -1, -1);
    MEMORY[0x1B27120C0](v7, -1, -1);
  }

  else
  {
  }

  v14 = (*((*v6 & *v2) + 0xF0))(v12);
  [v14 leaveGroupSession];
}

void IDSGroupSessionProvider.addMembers(_:)(uint64_t a1, unsigned __int16 a2, const char *a3, ...)
{
  v8 = (*((*MEMORY[0x1E69E7D40] & *v3) + 0xF0))();
  if (v8)
  {
    v9 = v8;
    v10 = specialized Sequence.compactMap<A>(_:)(a1);
    if (v4)
    {
    }

    else
    {
      specialized _arrayForceCast<A, B>(_:)(v10);

      isa = Array._bridgeToObjectiveC()().super.isa;

      [v9 manageDesignatedMembers:isa withType:a2];
    }
  }

  else
  {
    if (one-time initialization token for service != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, static Log.service);
    v12 = v3;
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v27 = v16;
      *v15 = 136315138;
      v17 = (v12 + OBJC_IVAR____TtC14CopresenceCore23IDSGroupSessionProvider_service);
      v18 = *(v12 + OBJC_IVAR____TtC14CopresenceCore23IDSGroupSessionProvider_service + 24);
      v19 = v17[4];
      __swift_project_boxed_opaque_existential_1(v17, v18);
      (*(v19 + 32))(v18, v19);
      if (v20)
      {
        v21 = String.init<A>(reflecting:)();
        v23 = v22;
      }

      else
      {
        v23 = 0xE300000000000000;
        v21 = 7104878;
      }

      v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v23, &v27);

      *(v15 + 4) = v25;
      _os_log_impl(&dword_1AEB26000, v13, v14, a3, v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v16);
      MEMORY[0x1B27120C0](v16, -1, -1);
      MEMORY[0x1B27120C0](v15, -1, -1);
    }

    lazy protocol witness table accessor for type IDSGroupSessionProvider.IDSGroupSessionProviderError and conformance IDSGroupSessionProvider.IDSGroupSessionProviderError();
    swift_allocError();
    *v26 = 4;
    swift_willThrow();
  }
}

void IDSGroupSessionProvider.updateMembers(_:)(uint64_t a1)
{
  v4 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0xF0))();
  if (v4)
  {
    v5 = v4;
    v6 = *(v1 + OBJC_IVAR____TtC14CopresenceCore23IDSGroupSessionProvider_members);
    *(v1 + OBJC_IVAR____TtC14CopresenceCore23IDSGroupSessionProvider_members) = a1;

    IDSGroupSessionProvider.members.didset(v6);

    v7 = specialized Sequence.compactMap<A>(_:)(a1);
    if (v2)
    {
    }

    else
    {
      v21 = v7;
      IDSGroupSessionProvider.idsDestinationsForLocalMember()();
      if (!v22)
      {
        v22 = MEMORY[0x1E69E7CC0];
      }

      specialized Array.append<A>(contentsOf:)(v22);
      specialized _arrayForceCast<A, B>(_:)(v21);

      isa = Array._bridgeToObjectiveC()().super.isa;

      [v5 updateMembers:isa withContext:0 triggeredLocally:1];
    }
  }

  else
  {
    if (one-time initialization token for service != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    __swift_project_value_buffer(v8, static Log.service);
    v9 = v1;
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v26 = v13;
      *v12 = 136315138;
      v14 = (v9 + OBJC_IVAR____TtC14CopresenceCore23IDSGroupSessionProvider_service);
      v15 = *(v9 + OBJC_IVAR____TtC14CopresenceCore23IDSGroupSessionProvider_service + 24);
      v16 = v14[4];
      __swift_project_boxed_opaque_existential_1(v14, v15);
      (*(v16 + 32))(v15, v16);
      if (v17)
      {
        v18 = String.init<A>(reflecting:)();
        v20 = v19;
      }

      else
      {
        v20 = 0xE300000000000000;
        v18 = 7104878;
      }

      v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v20, &v26);

      *(v12 + 4) = v24;
      _os_log_impl(&dword_1AEB26000, v10, v11, "Unable to update members, no session for service %s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v13);
      MEMORY[0x1B27120C0](v13, -1, -1);
      MEMORY[0x1B27120C0](v12, -1, -1);
    }

    lazy protocol witness table accessor for type IDSGroupSessionProvider.IDSGroupSessionProviderError and conformance IDSGroupSessionProvider.IDSGroupSessionProviderError();
    swift_allocError();
    *v25 = 4;
    swift_willThrow();
  }
}

void IDSGroupSessionProvider.requestDataCryptor(forTopic:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, NSObject *a4)
{
  v9 = (*((*MEMORY[0x1E69E7D40] & *v4) + 0xF0))();
  if (v9)
  {
    v10 = v9;
    if (one-time initialization token for service != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, static Log.service);
    v12 = v10;

    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v13, v14))
    {
      osloga = a4;
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v51 = v16;
      *v15 = 136315394;
      v17 = [v12 sessionID];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v18 = String.init<A>(reflecting:)();
      v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, &v51);

      *(v15 + 4) = v20;
      *(v15 + 12) = 2080;
      aBlock = a1;
      v46 = a2;

      v21 = String.init<A>(reflecting:)();
      v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, &v51);

      *(v15 + 14) = v23;
      _os_log_impl(&dword_1AEB26000, v13, v14, "Session, %s, fetching data cryptor for topic: %s", v15, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B27120C0](v16, -1, -1);
      v24 = v15;
      a4 = osloga;
      MEMORY[0x1B27120C0](v24, -1, -1);
    }

    v25 = MEMORY[0x1B270FF70](a1, a2);
    v26 = swift_allocObject();
    v26[2] = a1;
    v26[3] = a2;
    v26[4] = v12;
    v26[5] = a3;
    v26[6] = a4;
    v49 = partial apply for closure #1 in IDSGroupSessionProvider.requestDataCryptor(forTopic:completion:);
    v50 = v26;
    aBlock = MEMORY[0x1E69E9820];
    v46 = 1107296256;
    v47 = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed IDSGroupSessionDataCryptor) -> ();
    v48 = &block_descriptor_6_3;
    v27 = _Block_copy(&aBlock);
    v28 = v12;

    [v28 requestDataCryptorForTopic:v25 completionHandler:v27];
    _Block_release(v27);
  }

  else
  {
    if (one-time initialization token for service != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    __swift_project_value_buffer(v29, static Log.service);
    v30 = v4;
    oslog = Logger.logObject.getter();
    v31 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(oslog, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v51 = v33;
      *v32 = 136315138;
      v34 = (v30 + OBJC_IVAR____TtC14CopresenceCore23IDSGroupSessionProvider_service);
      v35 = *(v30 + OBJC_IVAR____TtC14CopresenceCore23IDSGroupSessionProvider_service + 24);
      v36 = v34[4];
      __swift_project_boxed_opaque_existential_1(v34, v35);
      v37 = (*(v36 + 32))(v35, v36);
      if (v38)
      {
        aBlock = v37;
        v46 = v38;
        v39 = String.init<A>(reflecting:)();
        v41 = v40;
      }

      else
      {
        v41 = 0xE300000000000000;
        v39 = 7104878;
      }

      v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v41, &v51);

      *(v32 + 4) = v42;
      _os_log_impl(&dword_1AEB26000, oslog, v31, "Unable to fetch data cryptor, no session for service %s", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v33);
      MEMORY[0x1B27120C0](v33, -1, -1);
      MEMORY[0x1B27120C0](v32, -1, -1);
    }

    else
    {
    }
  }
}

void closure #1 in IDSGroupSessionProvider.requestDataCryptor(forTopic:completion:)(void *a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(void))
{
  v42[1] = &unk_1F24B5F08;
  v8 = swift_dynamicCastObjCProtocolConditional();
  v9 = one-time initialization token for service;
  if (v8)
  {
    v10 = v8;
    v11 = a1;
    if (v9 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, static Log.service);

    v13 = a4;
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v41 = a5;
      v16 = swift_slowAlloc();
      v40 = v11;
      v17 = swift_slowAlloc();
      v42[0] = v17;
      *v16 = 136315394;

      v18 = String.init<A>(reflecting:)();
      v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, v42);

      *(v16 + 4) = v20;
      *(v16 + 12) = 2080;
      v21 = [v13 sessionID];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v22 = String.init<A>(reflecting:)();
      v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v23, v42);

      *(v16 + 14) = v24;
      _os_log_impl(&dword_1AEB26000, v14, v15, "Successfully fetched data cryptor for topic %s on session %s", v16, 0x16u);
      swift_arrayDestroy();
      v25 = v17;
      v11 = v40;
      MEMORY[0x1B27120C0](v25, -1, -1);
      v26 = v16;
      a5 = v41;
      MEMORY[0x1B27120C0](v26, -1, -1);
    }

    a5(v10);
  }

  else
  {
    if (one-time initialization token for service != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    __swift_project_value_buffer(v27, static Log.service);

    v28 = a4;
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v42[0] = v32;
      *v31 = 136315394;

      v33 = String.init<A>(reflecting:)();
      v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v34, v42);

      *(v31 + 4) = v35;
      *(v31 + 12) = 2080;
      v36 = [v28 sessionID];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v37 = String.init<A>(reflecting:)();
      v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v38, v42);

      *(v31 + 14) = v39;
      _os_log_impl(&dword_1AEB26000, v29, v30, "Failed to fetch data cryptor for topic %s on session %s", v31, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B27120C0](v32, -1, -1);
      MEMORY[0x1B27120C0](v31, -1, -1);
    }
  }
}

void thunk for @escaping @callee_guaranteed @Sendable (@guaranteed IDSGroupSessionDataCryptor) -> ()(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

Swift::Void __swiftcall IDSGroupSessionProvider.requestEncryptionKeysForParticipants(_:)(Swift::OpaquePointer_optional a1)
{
  rawValue = a1.value._rawValue;
  v3 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0xF0))(a1.value._rawValue, *&a1.is_nil);
  if (v3)
  {
    v4 = v3;
    if (one-time initialization token for service != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, static Log.service);

    v6 = v4;
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v33 = v10;
      *v9 = 136315394;
      v11 = [v6 sessionID];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v12 = String.init<A>(reflecting:)();
      v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v33);

      *(v9 + 4) = v14;
      *(v9 + 12) = 2080;
      if (rawValue)
      {

        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays6UInt64VGMd, &_sSays6UInt64VGMR);
        v15 = String.init<A>(reflecting:)();
        v17 = v16;
      }

      else
      {
        v15 = 7104878;
        v17 = 0xE300000000000000;
      }

      v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v17, &v33);

      *(v9 + 14) = v30;
      _os_log_impl(&dword_1AEB26000, v7, v8, "Session, %s, requesting encryption keys for: %s", v9, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B27120C0](v10, -1, -1);
      MEMORY[0x1B27120C0](v9, -1, -1);
    }

    if (rawValue)
    {
      specialized _arrayForceCast<A, B>(_:)(rawValue);
      rawValue = Array._bridgeToObjectiveC()().super.isa;
    }

    [v6 requestEncryptionKeyForParticipants_];
  }

  else
  {
    if (one-time initialization token for service != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    __swift_project_value_buffer(v18, static Log.service);
    v19 = v1;
    oslog = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(oslog, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v33 = v22;
      *v21 = 136315138;
      v23 = (v19 + OBJC_IVAR____TtC14CopresenceCore23IDSGroupSessionProvider_service);
      v24 = *(v19 + OBJC_IVAR____TtC14CopresenceCore23IDSGroupSessionProvider_service + 24);
      v25 = v23[4];
      __swift_project_boxed_opaque_existential_1(v23, v24);
      (*(v25 + 32))(v24, v25);
      if (v26)
      {
        v27 = String.init<A>(reflecting:)();
        v29 = v28;
      }

      else
      {
        v27 = 7104878;
        v29 = 0xE300000000000000;
      }

      v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v29, &v33);

      *(v21 + 4) = v31;
      _os_log_impl(&dword_1AEB26000, oslog, v20, "Unable to request encryption keys, no session for service %s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v22);
      MEMORY[0x1B27120C0](v22, -1, -1);
      MEMORY[0x1B27120C0](v21, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t IDSGroupSessionProvider.description.getter()
{
  BYTE8(v3) = 0;
  _StringGuts.grow(_:)(43);
  MEMORY[0x1B2710020](0xD000000000000020, 0x80000001AEE35C10);
  MEMORY[0x1B2710020](*(v0 + OBJC_IVAR____TtC14CopresenceCore23IDSGroupSessionProvider_groupID), *(v0 + OBJC_IVAR____TtC14CopresenceCore23IDSGroupSessionProvider_groupID + 8));
  v1 = MEMORY[0x1B2710020](0x3A657461747320, 0xE700000000000000);
  *&v3 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x1A8))(v1);
  _print_unlocked<A, B>(_:_:)();
  return *(&v3 + 1);
}

unint64_t IDSGroupSessionProvider.idsJoinSessionOptions()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AEE07B10;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v2;
  *(inited + 72) = MEMORY[0x1E6969080];
  *(inited + 48) = xmmword_1AEE0C200;
  *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 88) = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_SStGMd, &_ss23_ContiguousArrayStorageCySS_SStGMR);
  v4 = swift_initStackObject();
  *(v4 + 16) = xmmword_1AEE07B20;
  *(v4 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v4 + 40) = v5;
  *(v4 + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v4 + 56) = v6;
  v7 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(v4);
  swift_setDeallocating();
  outlined destroy of NSObject?(v4 + 32, &_sSS_SStMd, &_sSS_SStMR);
  *(inited + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDyS2SGMd, &_sSDyS2SGMR);
  *(inited + 96) = v7;
  v8 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd, &_sSS_yptMR);
  v9 = swift_arrayDestroy();
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0x110))(&v20, v9);
  v10 = v21;
  v11 = v22;
  __swift_project_boxed_opaque_existential_1(&v20, v21);
  v12 = MEMORY[0x1E69E6370];
  (*(v11 + 32))(v19, MEMORY[0x1E69E6370], 0xD000000000000010, 0x80000001AEE35FA0, MEMORY[0x1E69E6370], MEMORY[0x1E69E6390], MEMORY[0x1E69E6378], v10, v11);
  v13 = v19[0];
  __swift_destroy_boxed_opaque_existential_1Tm(&v20);
  if (v13)
  {
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;
    v21 = v12;
    LOBYTE(v20) = 1;
    outlined init with take of Any(&v20, v19);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v19, v14, v16, isUniquelyReferenced_nonNull_native);
  }

  return v8;
}

void IDSGroupSessionProvider.idsSessionCreationOptions()()
{
  IDSGroupSessionProvider.idsDestinationsForLocalMember()();
  if (v1)
  {
    return;
  }

  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AEE07B30;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = (inited + 32);
  *(inited + 40) = v6;
  *(inited + 72) = MEMORY[0x1E69E6370];
  *(inited + 48) = 1;
  *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 88) = v7;
  v8 = *(v0 + OBJC_IVAR____TtC14CopresenceCore23IDSGroupSessionProvider_groupID);
  v9 = *(v0 + OBJC_IVAR____TtC14CopresenceCore23IDSGroupSessionProvider_groupID + 8);
  *(inited + 120) = MEMORY[0x1E69E6158];
  *(inited + 96) = v8;
  *(inited + 104) = v9;
  *(inited + 128) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 136) = v10;

  v12 = specialized Sequence.compactMap<A>(_:)(v11);

  *&v40 = v12;

  specialized Array.append<A>(contentsOf:)(v13);
  *(inited + 168) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo22IDSDestinationProtocol_pGMd, &_sSaySo22IDSDestinationProtocol_pGMR);
  *(inited + 144) = v12;
  *(inited + 176) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 184) = v14;
  *(inited + 216) = MEMORY[0x1E69E6370];
  *(inited + 192) = 1;
  v15 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd, &_sSS_yptMR);
  swift_arrayDestroy();
  v42 = v15;
  if (!(v3 >> 62))
  {
    if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_9;
    }

LABEL_21:

    return;
  }

  if (!__CocoaSet.count.getter())
  {
    goto LABEL_21;
  }

LABEL_9:
  if ((v3 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x1B2710B10](0, v3);
LABEL_12:

    v16 = [v5 destinationURIs];
    v17 = MEMORY[0x1E69E6158];
    v18 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v19 = specialized Collection.first.getter(v18);
    v21 = v20;

    if (v21)
    {
      v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v24 = v23;
      v25 = MEMORY[0x1B270FF70](v19, v21);

      v26 = [v25 _stripFZIDPrefix];

      if (v26)
      {
        v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v29 = v28;

        v41 = v17;
        *&v40 = v27;
        *(&v40 + 1) = v29;
        outlined init with take of Any(&v40, v39);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v39, v22, v24, isUniquelyReferenced_nonNull_native);

        swift_unknownObjectRelease();
        v42 = v15;
      }

      else
      {
        specialized Dictionary._Variant.removeValue(forKey:)(v22, v24, v39);
        swift_unknownObjectRelease();

        outlined destroy of NSObject?(v39, &_sypSgMd, &_sypSgMR);
      }

      return;
    }

    if (one-time initialization token for service == -1)
    {
      goto LABEL_16;
    }

    goto LABEL_24;
  }

  if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v5 = *(v3 + 32);
    swift_unknownObjectRetain();
    goto LABEL_12;
  }

  __break(1u);
LABEL_24:
  swift_once();
LABEL_16:
  v31 = type metadata accessor for Logger();
  __swift_project_value_buffer(v31, static Log.service);
  swift_unknownObjectRetain();
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.fault.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    *&v40 = v35;
    *v34 = 136315138;
    *&v39[0] = v5;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo22IDSDestinationProtocol_pMd, &_sSo22IDSDestinationProtocol_pMR);
    v36 = String.init<A>(reflecting:)();
    v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v37, &v40);

    *(v34 + 4) = v38;
    _os_log_impl(&dword_1AEB26000, v32, v33, "Failed to find destinationURI for localMember's IDSDestination: %s", v34, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v35);
    MEMORY[0x1B27120C0](v35, -1, -1);
    MEMORY[0x1B27120C0](v34, -1, -1);
  }

  swift_unknownObjectRelease();
}

void IDSGroupSessionProvider.idsDestinationsForLocalMember()()
{
  v2 = *(v0 + OBJC_IVAR____TtC14CopresenceCore23IDSGroupSessionProvider_localMember);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC14CopresenceCore23IDSGroupSessionProvider_localMember + 8);
    type metadata accessor for AddressableMember();
    if (swift_dynamicCastClass())
    {
      swift_unknownObjectRetain();
      v4 = AddressableMember.idsDestination.getter();
      if (!v1)
      {
        v5 = v4;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
        v6 = swift_allocObject();
        *(v6 + 16) = xmmword_1AEE07B40;
        *(v6 + 32) = v5;
        swift_unknownObjectRelease();
        return;
      }

      goto LABEL_71;
    }

    type metadata accessor for AccountMember();
    if (!swift_dynamicCastClass())
    {
      v23 = one-time initialization token for service;
      swift_unknownObjectRetain();
      if (v23 == -1)
      {
LABEL_23:
        v24 = type metadata accessor for Logger();
        __swift_project_value_buffer(v24, static Log.service);
        v25 = v0;
        v26 = Logger.logObject.getter();
        v27 = static os_log_type_t.fault.getter();

        if (os_log_type_enabled(v26, v27))
        {
          v28 = swift_slowAlloc();
          v29 = swift_slowAlloc();
          v103._countAndFlagsBits = v29;
          *v28 = 136315138;
          v104 = v2;
          v105 = v3;
          swift_unknownObjectRetain();
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore6Member_pMd, &_s14CopresenceCore6Member_pMR);
          v30 = String.init<A>(reflecting:)();
          v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v31, &v103._countAndFlagsBits);

          *(v28 + 4) = v32;
          _os_log_impl(&dword_1AEB26000, v26, v27, "Unknown type for localMember: %s", v28, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v29);
          MEMORY[0x1B27120C0](v29, -1, -1);
          MEMORY[0x1B27120C0](v28, -1, -1);
        }

        lazy protocol witness table accessor for type IDSGroupSessionProvider.IDSGroupSessionProviderError and conformance IDSGroupSessionProvider.IDSGroupSessionProviderError();
        swift_allocError();
        v34 = 5;
LABEL_70:
        *v33 = v34;
        swift_willThrow();
LABEL_71:
        swift_unknownObjectRelease();
        return;
      }

LABEL_76:
      swift_once();
      goto LABEL_23;
    }

    v7 = (v0 + OBJC_IVAR____TtC14CopresenceCore23IDSGroupSessionProvider_service);
    v8 = *(v0 + OBJC_IVAR____TtC14CopresenceCore23IDSGroupSessionProvider_service + 24);
    v3 = *(v0 + OBJC_IVAR____TtC14CopresenceCore23IDSGroupSessionProvider_service + 32);
    __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC14CopresenceCore23IDSGroupSessionProvider_service), v8);
    v9 = v3[3];
    swift_unknownObjectRetain();
    v10 = v9(v8, v3);
    if (!v10)
    {
      if (one-time initialization token for service != -1)
      {
        swift_once();
      }

      v35 = type metadata accessor for Logger();
      __swift_project_value_buffer(v35, static Log.service);
      v36 = v0;
      v37 = Logger.logObject.getter();
      v38 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v37, v38))
      {
        v39 = 7104878;
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        v103._countAndFlagsBits = v41;
        *v40 = 136315394;
        v42 = v7[3];
        v43 = v7[4];
        __swift_project_boxed_opaque_existential_1(v7, v42);
        v44 = (*(v43 + 32))(v42, v43);
        if (v45)
        {
          v104 = v44;
          v105 = v45;
          v46 = String.init<A>(reflecting:)();
          v48 = v47;
        }

        else
        {
          v48 = 0xE300000000000000;
          v46 = 7104878;
        }

        v78 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46, v48, &v103._countAndFlagsBits);

        *(v40 + 4) = v78;
        *(v40 + 12) = 2080;
        v79 = v7[3];
        v80 = v7[4];
        __swift_project_boxed_opaque_existential_1(v7, v79);
        v81 = (*(v80 + 8))(v79, v80);
        if (v81)
        {
          v104 = v81;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sShySo10IDSAccountCGMd, &_sShySo10IDSAccountCGMR);
          v39 = String.init<A>(reflecting:)();
          v83 = v82;
        }

        else
        {
          v83 = 0xE300000000000000;
        }

        v84 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v83, &v103._countAndFlagsBits);

        *(v40 + 14) = v84;
        _os_log_impl(&dword_1AEB26000, v37, v38, "No iCloudAccount found while starting IDS Service service %s accounts %s", v40, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1B27120C0](v41, -1, -1);
        MEMORY[0x1B27120C0](v40, -1, -1);
      }

      else
      {
      }

      lazy protocol witness table accessor for type IDSGroupSessionProvider.IDSGroupSessionProviderError and conformance IDSGroupSessionProvider.IDSGroupSessionProviderError();
      swift_allocError();
      v34 = 1;
      goto LABEL_70;
    }

    v100 = v10;
    v11 = [v10 handles];
    if (!v11)
    {
      if (one-time initialization token for service != -1)
      {
        swift_once();
      }

      v50 = type metadata accessor for Logger();
      __swift_project_value_buffer(v50, static Log.service);
      v51 = v100;
      v52 = Logger.logObject.getter();
      v53 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        v55 = swift_slowAlloc();
        v104 = v55;
        *v54 = 136315138;
        v103._countAndFlagsBits = v51;
        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for IDSAccount, 0x1E69A4828);
        v56 = v51;
        v57 = String.init<A>(reflecting:)();
        v59 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v57, v58, &v104);

        *(v54 + 4) = v59;
        _os_log_impl(&dword_1AEB26000, v52, v53, "No handles on iCloudAccount %s", v54, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v55);
        MEMORY[0x1B27120C0](v55, -1, -1);
        MEMORY[0x1B27120C0](v54, -1, -1);
      }

      lazy protocol witness table accessor for type IDSGroupSessionProvider.IDSGroupSessionProviderError and conformance IDSGroupSessionProvider.IDSGroupSessionProviderError();
      swift_allocError();
      *v60 = 6;
      swift_willThrow();
      goto LABEL_92;
    }

    v12 = v11;
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for IDSHandle, 0x1E69A52A8);
    v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v106 = MEMORY[0x1E69E7CC0];
    if (v13 >> 62)
    {
      v14 = __CocoaSet.count.getter();
    }

    else
    {
      v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v0 = MEMORY[0x1E69E7CC0];
    if (v14)
    {
      v2 = 0;
      while (1)
      {
        if ((v13 & 0xC000000000000001) != 0)
        {
          v15 = MEMORY[0x1B2710B10](v2, v13);
        }

        else
        {
          if (v2 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_75;
          }

          v15 = *(v13 + 8 * v2 + 32);
        }

        v16 = v15;
        v3 = (v2 + 1);
        if (__OFADD__(v2, 1))
        {
          goto LABEL_74;
        }

        v17 = [v15 URI];
        v18 = [v17 prefixedURI];

        v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v21 = v20;

        v104 = v19;
        v105 = v21;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v22 = String.lowercased()();

        v103 = v22;
        lazy protocol witness table accessor for type String and conformance String();
        v0 = &v104;
        LOBYTE(v18) = StringProtocol.contains<A>(_:)();

        if (v18)
        {
        }

        else
        {
          v0 = &v106;
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
        }

        ++v2;
        if (v3 == v14)
        {
          v49 = v106;
          v0 = MEMORY[0x1E69E7CC0];
          goto LABEL_39;
        }
      }
    }

    v49 = MEMORY[0x1E69E7CC0];
LABEL_39:

    v104 = v0;
    v61 = (v49 >> 62) & 1;
    if (v49 < 0)
    {
      LODWORD(v61) = 1;
    }

    v101 = v61;
    if (v61 == 1)
    {
      v2 = __CocoaSet.count.getter();
    }

    else
    {
      v2 = *(v49 + 16);
    }

    v0 = 0;
    v102 = MEMORY[0x1E69E7CC0];
    if (v2)
    {
      while (1)
      {
        if ((v49 & 0xC000000000000001) != 0)
        {
          v73 = MEMORY[0x1B2710B10](v0, v49);
        }

        else
        {
          if (v0 >= *(v49 + 16))
          {
            goto LABEL_73;
          }

          v73 = *(v49 + 8 * v0 + 32);
        }

        v74 = v73;
        v3 = (v0 + 1);
        if (__OFADD__(v0, 1))
        {
          break;
        }

        v75 = [v73 URI];
        v76 = [v75 prefixedURI];

        if (!v76)
        {
          v77 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v76 = MEMORY[0x1B270FF70](v77);
        }

        v72 = [objc_opt_self() destinationWithStringURI:v76 isLightWeight:1];

        ++v0;
        if (v72)
        {
          MEMORY[0x1B2710150]();
          if (*((v104 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v104 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v102 = v104;
          v0 = v3;
          if (v2 == v3)
          {
            goto LABEL_44;
          }
        }

        else if (v2 == v0)
        {
          goto LABEL_44;
        }
      }

      __break(1u);
LABEL_73:
      __break(1u);
LABEL_74:
      __break(1u);
LABEL_75:
      __break(1u);
      goto LABEL_76;
    }

LABEL_44:
    if (one-time initialization token for service != -1)
    {
      swift_once();
    }

    v62 = type metadata accessor for Logger();
    __swift_project_value_buffer(v62, static Log.service);

    v63 = Logger.logObject.getter();
    v64 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v104 = v66;
      *v65 = 136315138;
      v103._countAndFlagsBits = v102;

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo14IDSDestinationCGMd, &_sSaySo14IDSDestinationCGMR);
      v67 = String.init<A>(reflecting:)();
      v69 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v67, v68, &v104);

      *(v65 + 4) = v69;
      _os_log_impl(&dword_1AEB26000, v63, v64, "Filtered destinations: %s", v65, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v66);
      MEMORY[0x1B27120C0](v66, -1, -1);
      MEMORY[0x1B27120C0](v65, -1, -1);
    }

    if (v102 >> 62)
    {
      v70 = __CocoaSet.count.getter();
      if (v101)
      {
        goto LABEL_50;
      }
    }

    else
    {
      v70 = *((v102 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v101)
      {
LABEL_50:
        v71 = __CocoaSet.count.getter();
LABEL_81:

        if (v70 == v71)
        {

          if (v102 >> 62)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo22IDSDestinationProtocol_pMd, &_sSo22IDSDestinationProtocol_pMR);
            _bridgeCocoaArray<A>(_:)();
            swift_unknownObjectRelease();

            swift_bridgeObjectRelease_n();
          }

          else
          {
            dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
            swift_unknownObjectRelease();
          }

          return;
        }

        v51 = v100;
        v85 = Logger.logObject.getter();
        v86 = static os_log_type_t.fault.getter();

        if (os_log_type_enabled(v85, v86))
        {
          v87 = swift_slowAlloc();
          v88 = swift_slowAlloc();
          v104 = v88;
          *v87 = 136315394;
          v89 = [v51 handles];
          if (v89)
          {
            v90 = v89;
            v91 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

            v103._countAndFlagsBits = v91;
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo9IDSHandleCGMd, &_sSaySo9IDSHandleCGMR);
            v92 = String.init<A>(reflecting:)();
            v94 = v93;
          }

          else
          {
            v92 = 7104878;
            v94 = 0xE300000000000000;
          }

          v95 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v92, v94, &v104);

          *(v87 + 4) = v95;
          *(v87 + 12) = 2080;
          v103._countAndFlagsBits = v102;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo14IDSDestinationCGMd, &_sSaySo14IDSDestinationCGMR);
          v96 = String.init<A>(reflecting:)();
          v98 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v96, v97, &v104);

          *(v87 + 14) = v98;
          _os_log_impl(&dword_1AEB26000, v85, v86, "Mismatch during conversion: %s vs %s", v87, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1B27120C0](v88, -1, -1);
          MEMORY[0x1B27120C0](v87, -1, -1);
        }

        else
        {
        }

        lazy protocol witness table accessor for type IDSGroupSessionProvider.IDSGroupSessionProviderError and conformance IDSGroupSessionProvider.IDSGroupSessionProviderError();
        swift_allocError();
        *v99 = 5;
        swift_willThrow();
LABEL_92:
        swift_unknownObjectRelease();

        return;
      }
    }

    v71 = *(v49 + 16);
    goto LABEL_81;
  }
}

id AddressableMember.idsDestination.getter()
{
  v1 = TUCopyIDSCanonicalAddressForHandle();
  if (v1)
  {
    v2 = v1;
    v3 = [objc_opt_self() destinationWithStringURI:v1 isLightWeight:1];

    return v3;
  }

  else
  {
    if (one-time initialization token for service != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, static Log.service);
    v6 = v0;
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v16 = v10;
      *v9 = 136315138;
      type metadata accessor for AddressableMember();
      v11 = v6;
      v12 = String.init<A>(reflecting:)();
      v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v16);

      *(v9 + 4) = v14;
      _os_log_impl(&dword_1AEB26000, v7, v8, "Failed to generate destination for %s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v10);
      MEMORY[0x1B27120C0](v10, -1, -1);
      MEMORY[0x1B27120C0](v9, -1, -1);
    }

    lazy protocol witness table accessor for type IDSGroupSessionProvider.IDSGroupSessionProviderError and conformance IDSGroupSessionProvider.IDSGroupSessionProviderError();
    swift_allocError();
    *v15 = 5;
    return swift_willThrow();
  }
}

uint64_t IDSGroupSessionProvider.iCloudAccountForService()()
{
  v1 = &v0[OBJC_IVAR____TtC14CopresenceCore23IDSGroupSessionProvider_service];
  v2 = *&v0[OBJC_IVAR____TtC14CopresenceCore23IDSGroupSessionProvider_service + 24];
  v3 = *&v0[OBJC_IVAR____TtC14CopresenceCore23IDSGroupSessionProvider_service + 32];
  __swift_project_boxed_opaque_existential_1(&v0[OBJC_IVAR____TtC14CopresenceCore23IDSGroupSessionProvider_service], v2);
  result = (*(v3 + 24))(v2, v3);
  if (!result)
  {
    if (one-time initialization token for service != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, static Log.service);
    v6 = v0;
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = 7104878;
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v25 = v11;
      *v10 = 136315394;
      v12 = *(v1 + 3);
      v13 = *(v1 + 4);
      __swift_project_boxed_opaque_existential_1(v1, v12);
      (*(v13 + 32))(v12, v13);
      if (v14)
      {
        v15 = String.init<A>(reflecting:)();
        v17 = v16;
      }

      else
      {
        v17 = 0xE300000000000000;
        v15 = 7104878;
      }

      v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v17, &v25);

      *(v10 + 4) = v18;
      *(v10 + 12) = 2080;
      v19 = *(v1 + 3);
      v20 = *(v1 + 4);
      __swift_project_boxed_opaque_existential_1(v1, v19);
      if ((*(v20 + 8))(v19, v20))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sShySo10IDSAccountCGMd, &_sShySo10IDSAccountCGMR);
        v9 = String.init<A>(reflecting:)();
        v22 = v21;
      }

      else
      {
        v22 = 0xE300000000000000;
      }

      v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v22, &v25);

      *(v10 + 14) = v23;
      _os_log_impl(&dword_1AEB26000, v7, v8, "No iCloudAccount found while starting session on service: %s accounts: %s", v10, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B27120C0](v11, -1, -1);
      MEMORY[0x1B27120C0](v10, -1, -1);
    }

    lazy protocol witness table accessor for type IDSGroupSessionProvider.IDSGroupSessionProviderError and conformance IDSGroupSessionProvider.IDSGroupSessionProviderError();
    swift_allocError();
    *v24 = 1;
    return swift_willThrow();
  }

  return result;
}

uint64_t IDSGroupSessionProvider.idsAccountForLocalMember()()
{
  v1 = *&v0[OBJC_IVAR____TtC14CopresenceCore23IDSGroupSessionProvider_localMember];
  if (!v1)
  {
    return IDSGroupSessionProvider.iCloudAccountForService()();
  }

  v2 = *&v0[OBJC_IVAR____TtC14CopresenceCore23IDSGroupSessionProvider_localMember + 8];
  type metadata accessor for AddressableMember();
  v98 = swift_dynamicCastClass();
  if (v98)
  {
    v3 = *&v0[OBJC_IVAR____TtC14CopresenceCore23IDSGroupSessionProvider_service + 24];
    v4 = *&v0[OBJC_IVAR____TtC14CopresenceCore23IDSGroupSessionProvider_service + 32];
    v87 = v0;
    v88 = &v0[OBJC_IVAR____TtC14CopresenceCore23IDSGroupSessionProvider_service];
    __swift_project_boxed_opaque_existential_1(&v0[OBJC_IVAR____TtC14CopresenceCore23IDSGroupSessionProvider_service], v3);
    v5 = *(v4 + 8);
    swift_unknownObjectRetain_n();
    result = v5(v3, v4);
    if (result)
    {
      v7 = result;
      if ((result & 0xC000000000000001) != 0)
      {
        __CocoaSet.makeIterator()();
        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for IDSAccount, 0x1E69A4828);
        lazy protocol witness table accessor for type TUConversationActivitySessionContainer and conformance NSObject(&lazy protocol witness table cache variable for type IDSAccount and conformance NSObject, &lazy cache variable for type metadata for IDSAccount, 0x1E69A4828);
        Set.Iterator.init(_cocoa:)();
        v7 = v103[5];
        v8 = v103[6];
        v9 = v103[7];
        v10 = v103[8];
        v11 = v103[9];
      }

      else
      {
        v10 = 0;
        v13 = -1 << *(result + 32);
        v8 = result + 56;
        v14 = ~v13;
        v15 = -v13;
        if (v15 < 64)
        {
          v16 = ~(-1 << v15);
        }

        else
        {
          v16 = -1;
        }

        v11 = v16 & *(result + 56);
        v9 = v14;
      }

      v17 = (v9 + 64) >> 6;
      v18 = &_OBJC_LABEL_PROTOCOL___SKPresenceDelegate;
      v93 = v7;
      v92 = v8;
      v89 = v17;
      if (v7 < 0)
      {
        goto LABEL_21;
      }

LABEL_15:
      v19 = v10;
      v20 = v11;
      v21 = v10;
      if (!v11)
      {
        while (1)
        {
          v21 = v19 + 1;
          if (__OFADD__(v19, 1))
          {
            break;
          }

          if (v21 >= v17)
          {
            goto LABEL_69;
          }

          v20 = *(v8 + 8 * v21);
          ++v19;
          if (v20)
          {
            goto LABEL_19;
          }
        }

LABEL_87:
        __break(1u);
        goto LABEL_88;
      }

LABEL_19:
      v91 = (v20 - 1) & v20;
      v22 = *(*(v7 + 48) + ((v21 << 9) | (8 * __clz(__rbit64(v20)))));
      if (!v22)
      {
LABEL_69:
        outlined consume of Set<String>.Iterator._Variant(v7);
        if (one-time initialization token for service == -1)
        {
LABEL_70:
          v64 = type metadata accessor for Logger();
          __swift_project_value_buffer(v64, static Log.service);
          swift_unknownObjectRetain();
          v65 = v87;
          v66 = Logger.logObject.getter();
          v67 = static os_log_type_t.default.getter();
          swift_unknownObjectRelease();

          if (os_log_type_enabled(v66, v67))
          {
            v68 = 7104878;
            v69 = swift_slowAlloc();
            v70 = swift_slowAlloc();
            v104 = v70;
            *v69 = 136315650;
            outlined init with copy of UserNotificationCenter(v88, v103);
            outlined init with copy of ActivitySession.DomainAssertionWrapper?(v103, &v101, &_s14CopresenceCore18IDSServiceProtocol_pSgMd, &_s14CopresenceCore18IDSServiceProtocol_pSgMR);
            if (v102)
            {
              outlined init with take of ContiguousBytes(&v101, v100);
              outlined init with copy of UserNotificationCenter(v100, v99);
              __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore18IDSServiceProtocol_pMd, &_s14CopresenceCore18IDSServiceProtocol_pMR);
              v71 = String.init<A>(reflecting:)();
              v73 = v72;
              __swift_destroy_boxed_opaque_existential_1Tm(v100);
            }

            else
            {
              v73 = 0xE300000000000000;
              v71 = 7104878;
            }

            outlined destroy of NSObject?(v103, &_s14CopresenceCore18IDSServiceProtocol_pSgMd, &_s14CopresenceCore18IDSServiceProtocol_pSgMR);
            v74 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v71, v73, &v104);

            *(v69 + 4) = v74;
            *(v69 + 12) = 2080;
            v75 = *(v88 + 3);
            v76 = *(v88 + 4);
            __swift_project_boxed_opaque_existential_1(v88, v75);
            v77 = (*(v76 + 8))(v75, v76);
            if (v77)
            {
              v103[0] = v77;
              __swift_instantiateConcreteTypeFromMangledNameV2(&_sShySo10IDSAccountCGMd, &_sShySo10IDSAccountCGMR);
              v68 = String.init<A>(reflecting:)();
              v79 = v78;
            }

            else
            {
              v79 = 0xE300000000000000;
            }

            v80 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v68, v79, &v104);

            *(v69 + 14) = v80;
            *(v69 + 22) = 2080;
            v103[0] = *(v98 + OBJC_IVAR____TtC14CopresenceCore17AddressableMember_handle);
            v81 = v103[0];
            type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUHandle, 0x1E69D8C00);
            v82 = v81;
            v83 = String.init<A>(reflecting:)();
            v85 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v83, v84, &v104);

            *(v69 + 24) = v85;
            _os_log_impl(&dword_1AEB26000, v66, v67, "No iCloudAccount found while starting IDS Service service %s accounts %s idsDestination: %s", v69, 0x20u);
            swift_arrayDestroy();
            MEMORY[0x1B27120C0](v70, -1, -1);
            MEMORY[0x1B27120C0](v69, -1, -1);
          }

          else
          {
          }

          lazy protocol witness table accessor for type IDSGroupSessionProvider.IDSGroupSessionProviderError and conformance IDSGroupSessionProvider.IDSGroupSessionProviderError();
          swift_allocError();
          *v86 = 1;
          swift_willThrow();
          swift_unknownObjectRelease();
          return swift_unknownObjectRelease();
        }

LABEL_88:
        swift_once();
        goto LABEL_70;
      }

      while (1)
      {
        v90 = v21;
        v97 = v22;
        result = [v22 v18[308]];
        if (!result)
        {
          break;
        }

        v24 = result;
        v25 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        v26 = 0;
        v27 = MEMORY[0x1E69E7CC0];
        v103[0] = MEMORY[0x1E69E7CC0];
        v28 = *(v25 + 16);
LABEL_25:
        v96 = v27;
        v29 = (v25 + 40 + 16 * v26);
        while (v28 != v26)
        {
          if (v26 >= *(v25 + 16))
          {
            __break(1u);
LABEL_83:
            __break(1u);
LABEL_84:
            __break(1u);
LABEL_85:
            __break(1u);
LABEL_86:
            __break(1u);
            goto LABEL_87;
          }

          ++v26;
          v30 = v29 + 2;
          v32 = *(v29 - 1);
          v31 = *v29;
          v33 = objc_opt_self();

          v34 = MEMORY[0x1B270FF70](v32, v31);
          v35 = [v33 normalizedHandleWithDestinationID_];

          v29 = v30;
          if (v35)
          {
            MEMORY[0x1B2710150]();
            if (*((v103[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v103[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            v27 = v103[0];
            goto LABEL_25;
          }
        }

        result = [v97 pseudonyms];
        if (!result)
        {
          goto LABEL_90;
        }

        v36 = result;
        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for IDSPseudonym, 0x1E69A5390);
        v37 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        v103[0] = MEMORY[0x1E69E7CC0];
        if (v37 >> 62)
        {
          v38 = __CocoaSet.count.getter();
        }

        else
        {
          v38 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v39 = 0;
        v95 = MEMORY[0x1E69E7CC0];
        if (v38)
        {
          while (1)
          {
            if ((v37 & 0xC000000000000001) != 0)
            {
              v47 = MEMORY[0x1B2710B10](v39, v37);
            }

            else
            {
              if (v39 >= *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_84;
              }

              v47 = *(v37 + 8 * v39 + 32);
            }

            v48 = v47;
            v49 = v39 + 1;
            if (__OFADD__(v39, 1))
            {
              goto LABEL_83;
            }

            v50 = [v47 URI];
            v51 = [v50 prefixedURI];

            if (!v51)
            {
              v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v51 = MEMORY[0x1B270FF70](v52);
            }

            v46 = [objc_opt_self() normalizedHandleWithDestinationID_];

            ++v39;
            if (v46)
            {
              MEMORY[0x1B2710150]();
              if (*((v103[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v103[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
              }

              specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
              v95 = v103[0];
              v39 = v49;
              if (v38 == v49)
              {
                break;
              }
            }

            else if (v38 == v39)
            {
              break;
            }
          }
        }

        v103[0] = v96;
        specialized Array.append<A>(contentsOf:)(v95);
        if (v96 >> 62)
        {
          v40 = __CocoaSet.count.getter();
        }

        else
        {
          v40 = *((v103[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v41 = 0;
        v42 = OBJC_IVAR____TtC14CopresenceCore17AddressableMember_handle;
        while (v40 != v41)
        {
          if ((v96 & 0xC000000000000001) != 0)
          {
            v43 = MEMORY[0x1B2710B10](v41, v96);
          }

          else
          {
            if (v41 >= *((v96 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_86;
            }

            v43 = *(v96 + 8 * v41 + 32);
          }

          v44 = v43;
          if (__OFADD__(v41, 1))
          {
            goto LABEL_85;
          }

          v45 = [v43 isEquivalentToHandle_];

          ++v41;
          if (v45)
          {
            swift_unknownObjectRelease();

            outlined consume of Set<String>.Iterator._Variant(v93);
            swift_unknownObjectRelease();
            return v97;
          }
        }

        v10 = v90;
        v11 = v91;
        v7 = v93;
        v8 = v92;
        v17 = v89;
        v18 = &_OBJC_LABEL_PROTOCOL___SKPresenceDelegate;
        if ((v93 & 0x8000000000000000) == 0)
        {
          goto LABEL_15;
        }

LABEL_21:
        v23 = __CocoaSet.Iterator.next()();
        if (v23)
        {
          *&v101 = v23;
          type metadata accessor for NSObject(0, &lazy cache variable for type metadata for IDSAccount, 0x1E69A4828);
          swift_dynamicCast();
          v22 = v103[0];
          v21 = v10;
          v91 = v11;
          if (v103[0])
          {
            continue;
          }
        }

        goto LABEL_69;
      }

      __break(1u);
LABEL_90:
      __break(1u);
    }

    __break(1u);
    return result;
  }

  type metadata accessor for AccountMember();
  if (!swift_dynamicCastClass())
  {
    v53 = one-time initialization token for service;
    swift_unknownObjectRetain();
    if (v53 != -1)
    {
      swift_once();
    }

    v54 = type metadata accessor for Logger();
    __swift_project_value_buffer(v54, static Log.service);
    v55 = v0;
    v56 = Logger.logObject.getter();
    v57 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      *&v101 = v59;
      *v58 = 136315138;
      v103[0] = v1;
      v103[1] = v2;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore6Member_pMd, &_s14CopresenceCore6Member_pMR);
      v60 = String.init<A>(reflecting:)();
      v62 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v60, v61, &v101);

      *(v58 + 4) = v62;
      _os_log_impl(&dword_1AEB26000, v56, v57, "Unknown type for localMember: %s", v58, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v59);
      MEMORY[0x1B27120C0](v59, -1, -1);
      MEMORY[0x1B27120C0](v58, -1, -1);
    }

    lazy protocol witness table accessor for type IDSGroupSessionProvider.IDSGroupSessionProviderError and conformance IDSGroupSessionProvider.IDSGroupSessionProviderError();
    swift_allocError();
    *v63 = 5;
    swift_willThrow();
    return swift_unknownObjectRelease();
  }

  swift_unknownObjectRetain();
  v12 = IDSGroupSessionProvider.iCloudAccountForService()();
  result = swift_unknownObjectRelease();
  if (!v94)
  {
    return v12;
  }

  return result;
}

void IDSGroupSessionProvider.registerQRPlugin()()
{
  v1 = MEMORY[0x1E69E7D40];
  v2 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x140))();
  if (v2)
  {

    if (one-time initialization token for service != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, static Log.service);
    oslog = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_1AEB26000, oslog, v4, "IDSGroupSessionProvider. We already have a virtual participant identifier. Not re-registering QR plugin", v5, 2u);
      MEMORY[0x1B27120C0](v5, -1, -1);
    }
  }

  else
  {
    if (one-time initialization token for service != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, static Log.service);
    v7 = v0;
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v29 = v11;
      *v10 = 136315138;
      v12 = (*((*v1 & *v7) + 0xF0))();
      if (v12)
      {
        v13 = v12;
        v14 = [v12 sessionID];

        v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v17 = v16;

        v30 = v15;
        v31 = v17;
        v18 = String.init<A>(reflecting:)();
        v20 = v19;
      }

      else
      {
        v20 = 0xE300000000000000;
        v18 = 7104878;
      }

      v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v20, &v29);

      *(v10 + 4) = v21;
      _os_log_impl(&dword_1AEB26000, v8, v9, "Registering QR plugin on %s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v11);
      MEMORY[0x1B27120C0](v11, -1, -1);
      MEMORY[0x1B27120C0](v10, -1, -1);
    }

    v22 = (*((*v1 & *v7) + 0xF0))();
    if (v22)
    {
      v23 = v22;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys11AnyHashableV_yptGMd, &_ss23_ContiguousArrayStorageCys11AnyHashableV_yptGMR);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1AEE07B20;
      v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v31 = v25;
      v26 = MEMORY[0x1E69E6158];
      AnyHashable.init<A>(_:)();
      *(inited + 96) = v26;
      *(inited + 72) = 0x627553627550;
      *(inited + 80) = 0xE600000000000000;
      _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_ypTt0g5Tf4g_n(inited);
      swift_setDeallocating();
      outlined destroy of NSObject?(inited + 32, &_ss11AnyHashableV_yptMd, &_ss11AnyHashableV_yptMR);
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      [v23 registerPluginWithOptions_];
    }
  }
}

uint64_t IDSGroupSessionProvider.requestParticipant(for:)(uint64_t a1)
{
  v2[29] = a1;
  v2[30] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v2[31] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](IDSGroupSessionProvider.requestParticipant(for:), 0, 0);
}

{
  v2 = v1[34];
  v3 = v1[33];
  swift_willThrow();

  v4 = v1[1];

  return v4();
}

uint64_t IDSGroupSessionProvider.requestParticipant(for:)()
{
  if (one-time initialization token for service != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 256) = __swift_project_value_buffer(v1, static Log.service);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 232);
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = v4;
    _os_log_impl(&dword_1AEB26000, v2, v3, "[Translation] Requested translated participant for id %llu", v5, 0xCu);
    MEMORY[0x1B27120C0](v5, -1, -1);
  }

  v6 = *(v0 + 240);

  v7 = (*((*MEMORY[0x1E69E7D40] & *v6) + 0xF0))();
  *(v0 + 264) = v7;
  if (v7)
  {
    v8 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1AEE07B40;
    *(v9 + 32) = UInt64._bridgeToObjectiveC()();
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSNumber, 0x1E696AD98);
    isa = Array._bridgeToObjectiveC()().super.isa;
    *(v0 + 272) = isa;

    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 224;
    *(v0 + 24) = IDSGroupSessionProvider.requestParticipant(for:);
    v11 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySDySo8NSNumberCSSGs5Error_pGMd, &_sSccySDySo8NSNumberCSSGs5Error_pGMR);
    *(v0 + 80) = MEMORY[0x1E69E9820];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSDictionary?, @unowned NSError?) -> () with result type [NSNumber : String];
    *(v0 + 104) = &block_descriptor_9_2;
    *(v0 + 112) = v11;
    [v8 requestURIsForParticipantIDs:isa completionHandler:v0 + 80];

    return MEMORY[0x1EEE6DEC8](v0 + 16);
  }

  else
  {
    v12 = *(v0 + 240);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = *(v0 + 240);
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 138412290;
      *(v16 + 4) = v15;
      *v17 = v6;
      v18 = v15;
      _os_log_impl(&dword_1AEB26000, v13, v14, "No current GroupSession found on %@", v16, 0xCu);
      outlined destroy of NSObject?(v17, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x1B27120C0](v17, -1, -1);
      MEMORY[0x1B27120C0](v16, -1, -1);
    }

    lazy protocol witness table accessor for type IDSGroupSessionProvider.IDSGroupSessionProviderError and conformance IDSGroupSessionProvider.IDSGroupSessionProviderError();
    swift_allocError();
    *v19 = 3;
    swift_willThrow();

    v20 = *(v0 + 8);

    return v20();
  }
}

{
  v1 = *(*v0 + 48);
  *(*v0 + 280) = v1;
  if (v1)
  {
    v2 = IDSGroupSessionProvider.requestParticipant(for:);
  }

  else
  {
    v2 = IDSGroupSessionProvider.requestParticipant(for:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

void IDSGroupSessionProvider.requestParticipant(for:)()
{
  v1 = *(v0 + 224);

  v2.super.super.isa = UInt64._bridgeToObjectiveC()().super.super.isa;
  isa = v2.super.super.isa;
  if (*(v1 + 16) && (v4 = specialized __RawDictionaryStorage.find<A>(_:)(v2.super.super.isa), (v5 & 1) != 0))
  {
    v6 = (*(v1 + 56) + 16 * v4);
    v8 = *v6;
    v7 = v6[1];

    v9 = MEMORY[0x1B270FF70](v8, v7);
    v10 = [v9 _stripFZIDPrefix];

    if (v10)
    {
      v11 = *(v0 + 264);

      v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v14 = v13;

LABEL_18:

      v34 = *(v0 + 8);
      v35 = *(v0 + 232);

      v34(v35, v12, v14);
    }

    else
    {
LABEL_25:
      __break(1u);
    }
  }

  else
  {

    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_1AEB26000, v15, v16, "[Translation] Checking against stored list of participants for participant incase it is present", v17, 2u);
      MEMORY[0x1B27120C0](v17, -1, -1);
    }

    v18 = *(v0 + 240);

    v19 = MEMORY[0x1E69E7D40];
    v20 = (*((*MEMORY[0x1E69E7D40] & *v18) + 0x148))();
    v21 = 0;
    v22 = -1;
    v23 = -1 << *(v20 + 32);
    if (-v23 < 64)
    {
      v22 = ~(-1 << -v23);
    }

    v24 = v22 & *(v20 + 56);
    while (v24)
    {
      v25 = v21;
LABEL_16:
      v26 = __clz(__rbit64(v24));
      v24 &= v24 - 1;
      v27 = (*(v20 + 48) + 24 * (v26 | (v25 << 6)));
      if (*v27 == *(v0 + 232))
      {
        v28 = *(v0 + 264);
        v29 = *(v0 + 240);
        v30 = *(v0 + 248);
        v12 = v27[1];
        v14 = v27[2];

        static TaskPriority.background.getter();
        v31 = type metadata accessor for TaskPriority();
        v32 = (*(*(v31 - 8) + 56))(v30, 0, 1, v31);
        (*((*v19 & *v29) + 0x178))(v32);
        outlined init with take of ContiguousBytes((v0 + 144), v0 + 184);
        v33 = swift_allocObject();
        *(v33 + 16) = 0;
        *(v33 + 24) = 0;
        outlined init with take of ContiguousBytes((v0 + 184), v33 + 32);
        _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v30, &async function pointer to partial apply for closure #2 in IDSGroupSessionProvider.requestParticipant(for:), v33);

        goto LABEL_18;
      }
    }

    while (1)
    {
      v25 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v25 >= ((63 - v23) >> 6))
      {
        break;
      }

      v24 = *(v20 + 56 + 8 * v25);
      ++v21;
      if (v24)
      {
        v21 = v25;
        goto LABEL_16;
      }
    }

    v36 = *(v0 + 264);

    lazy protocol witness table accessor for type IDSGroupSessionProvider.IDSGroupSessionProviderError and conformance IDSGroupSessionProvider.IDSGroupSessionProviderError();
    swift_allocError();
    *v37 = 7;
    swift_willThrow();

    v38 = *(v0 + 8);

    v38();
  }
}

uint64_t closure #2 in IDSGroupSessionProvider.requestParticipant(for:)()
{
  v1 = v0[2];
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = [objc_opt_self() mainBundle];
  v5 = [v4 bundleIdentifier];

  if (v5)
  {
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
  }

  else
  {
    v8 = 0x80000001AEE31310;
    v6 = 0xD00000000000001DLL;
  }

  v9 = (*(v3 + 16))(0xD000000000000016, 0x80000001AEE35E30, 0xD000000000000047, 0x80000001AEE35F50, v6, v8, v2, v3);
  v0[3] = v9;

  if (v9)
  {
    v11 = v1[3];
    v10 = v1[4];
    __swift_project_boxed_opaque_existential_1(v0[2], v11);
    v20 = (*(v10 + 24) + **(v10 + 24));
    v12 = swift_task_alloc();
    v0[4] = v12;
    *v12 = v0;
    v12[1] = closure #2 in IDSGroupSessionProvider.requestParticipant(for:);
    v13.n128_u64[0] = 0;

    return v20(v9, v11, v10, v13);
  }

  else
  {
    if (one-time initialization token for abcReporter != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    __swift_project_value_buffer(v15, static Log.abcReporter);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_1AEB26000, v16, v17, "[Translation] Failed to generate signature for Participant translation", v18, 2u);
      MEMORY[0x1B27120C0](v18, -1, -1);
    }

    v19 = v0[1];

    return v19();
  }
}

uint64_t closure #2 in IDSGroupSessionProvider.requestParticipant(for:)(uint64_t a1)
{
  v4 = *v1;

  v2 = *(v4 + 8);

  return v2();
}

id IDSGroupSessionProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void (*protocol witness for IDSGroupSessionProviderProtocol.delegate.modify in conformance IDSGroupSessionProvider(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & **v1) + 0xD0))();
  return protocol witness for PresenceDataSource.members.modify in conformance SKPresenceDataSource<A>;
}

uint64_t protocol witness for IDSGroupSessionProviderProtocol.groupID.getter in conformance IDSGroupSessionProvider()
{
  v1 = *(*v0 + OBJC_IVAR____TtC14CopresenceCore23IDSGroupSessionProvider_groupID);

  return v1;
}

uint64_t protocol witness for IDSGroupSessionProviderProtocol.init(groupID:members:localMember:service:targetQueue:abcReporter:) in conformance IDSGroupSessionProvider@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 448))();
  *a1 = result;
  return result;
}

uint64_t protocol witness for IDSGroupSessionProviderProtocol.requestParticipant(for:) in conformance IDSGroupSessionProvider(uint64_t a1)
{
  v4 = *((*MEMORY[0x1E69E7D40] & **v1) + 0x238);
  v7 = (v4 + *v4);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = protocol witness for IDSGroupSessionProviderProtocol.requestParticipant(for:) in conformance IDSGroupSessionProvider;

  return v7(a1);
}

uint64_t protocol witness for IDSGroupSessionProviderProtocol.requestParticipant(for:) in conformance IDSGroupSessionProvider(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13 = *v4;

  v11 = *(v13 + 8);
  if (!v3)
  {
    v8 = a1;
    v9 = a2;
    v10 = a3;
  }

  return v11(v8, v9, v10);
}

void IDSGroupSessionProvider.sessionDidJoinGroup(_:participantUpdate:error:)(void *a1, void *a2, void *a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v49 - v9;
  v11 = type metadata accessor for DispatchPredicate();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = (&v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *&v4[OBJC_IVAR____TtC14CopresenceCore23IDSGroupSessionProvider_queue];
  *v14 = v15;
  (*(v12 + 104))(v14, *MEMORY[0x1E69E8020], v11);
  v16 = v15;
  LOBYTE(v15) = _dispatchPreconditionTest(_:)();
  (*(v12 + 8))(v14, v11);
  if (v15)
  {
    if (one-time initialization token for service == -1)
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
  __swift_project_value_buffer(v17, static Log.service);
  v18 = a1;
  v19 = a2;
  v20 = a3;
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();

  if (!os_log_type_enabled(v21, v22))
  {

    if (!_TUIsInternalInstall())
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v49 = v10;
  v50 = v4;
  v23 = swift_slowAlloc();
  v24 = swift_slowAlloc();
  v25 = swift_slowAlloc();
  v52[0] = v25;
  *v23 = 138412802;
  *(v23 + 4) = v18;
  *v24 = v18;
  *(v23 + 12) = 2080;
  *&v51[0] = v19;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for IDSGroupSessionParticipantUpdate, 0x1E69A52A0);
  v26 = v18;
  v27 = v19;
  v28 = String.init<A>(reflecting:)();
  v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v29, v52);

  *(v23 + 14) = v30;
  *(v23 + 22) = 2080;
  if (a3)
  {
    *&v51[0] = a3;
    v31 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v32 = String.init<A>(reflecting:)();
    v34 = v33;
  }

  else
  {
    v34 = 0xE300000000000000;
    v32 = 7104878;
  }

  v4 = v50;
  v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v34, v52);

  *(v23 + 24) = v35;
  _os_log_impl(&dword_1AEB26000, v21, v22, "IDSGroupSessionProvider: sessionDidJoinGroup %@ participantUpdate %s error %s", v23, 0x20u);
  outlined destroy of NSObject?(v24, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
  MEMORY[0x1B27120C0](v24, -1, -1);
  swift_arrayDestroy();
  MEMORY[0x1B27120C0](v25, -1, -1);
  MEMORY[0x1B27120C0](v23, -1, -1);

  v10 = v49;
  if (_TUIsInternalInstall())
  {
LABEL_10:
    v36 = [v19 participantDestinationURI];
    v37 = [v36 tokenFreeURI];

    v38 = [v37 unprefixedURI];
    v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v41 = v40;

    v42 = type metadata accessor for TaskPriority();
    v43 = *(*(v42 - 8) + 56);
    v43(v10, 1, 1, v42);
    v44 = swift_allocObject();
    v44[2] = 0;
    v44[3] = 0;
    v44[4] = v4;
    v44[5] = v19;
    v44[6] = v39;
    v44[7] = v41;
    v45 = v19;
    v46 = v4;
    v47 = _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v10, &async function pointer to partial apply for closure #1 in IDSGroupSessionProvider.sessionDidJoinGroup(_:participantUpdate:error:), v44);
    (*((*MEMORY[0x1E69E7D40] & *v46) + 0x178))(v52);
    v43(v10, 1, 1, v42);
    outlined init with copy of UserNotificationCenter(v52, v51);
    v48 = swift_allocObject();
    v48[2] = 0;
    v48[3] = 0;
    v48[4] = v47;
    v48[5] = 0xD00000000000002FLL;
    v48[7] = 0;
    v48[8] = 0;
    v48[6] = 0x80000001AEE35CA0;
    outlined init with take of ContiguousBytes(v51, (v48 + 9));

    _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(0, 0, v10, &async function pointer to partial apply for specialized closure #1 in Task<>.reportFailure(on:function:process:), v48);

    outlined destroy of NSObject?(v10, &_sScPSgMd, &_sScPSgMR);
    __swift_destroy_boxed_opaque_existential_1Tm(v52);
  }

LABEL_11:
  IDSGroupSessionProvider.registerQRPlugin()();
}

uint64_t closure #1 in IDSGroupSessionProvider.sessionDidJoinGroup(_:participantUpdate:error:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  return MEMORY[0x1EEE6DFA0](closure #1 in IDSGroupSessionProvider.sessionDidJoinGroup(_:participantUpdate:error:), 0, 0);
}

uint64_t closure #1 in IDSGroupSessionProvider.sessionDidJoinGroup(_:participantUpdate:error:)()
{
  if (one-time initialization token for service != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[6] = __swift_project_value_buffer(v1, static Log.service);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1AEB26000, v2, v3, "[ParticipantID Verification] Verifying that the participantDestinationURI matches the QRParticipantID we joined with", v4, 2u);
    MEMORY[0x1B27120C0](v4, -1, -1);
  }

  v6 = v0[2];
  v5 = v0[3];

  v7 = [v5 participantIdentifier];
  v8 = *((*MEMORY[0x1E69E7D40] & *v6) + 0x238);
  v11 = (v8 + *v8);
  v9 = swift_task_alloc();
  v0[7] = v9;
  *v9 = v0;
  v9[1] = closure #1 in IDSGroupSessionProvider.sessionDidJoinGroup(_:participantUpdate:error:);

  return v11(v7);
}

{
  v19 = v0;
  v1 = v0[8] == v0[4] && v0[9] == v0[5];
  if (v1 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_1AEB26000, v2, v3, "[ParticipantID Verification] Successfully matched.", v4, 2u);
      MEMORY[0x1B27120C0](v4, -1, -1);
    }

    v5 = v0[1];
  }

  else
  {

    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.fault.getter();

    v8 = os_log_type_enabled(v6, v7);
    v9 = v0[9];
    if (v8)
    {
      v10 = v0[8];
      v12 = v0[4];
      v11 = v0[5];
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v18[0] = v14;
      *v13 = 136315394;
      v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v9, v18);

      *(v13 + 4) = v15;
      *(v13 + 12) = 2080;
      *(v13 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v11, v18);
      _os_log_impl(&dword_1AEB26000, v6, v7, "[ParticipantID Verification] Detected invalid participantID mismatch on local join. Joined with QRParticipantID for %s when trying to join with handle: %s", v13, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B27120C0](v14, -1, -1);
      MEMORY[0x1B27120C0](v13, -1, -1);
    }

    else
    {
    }

    lazy protocol witness table accessor for type IDSGroupSessionProvider.IDSGroupSessionProviderError and conformance IDSGroupSessionProvider.IDSGroupSessionProviderError();
    swift_allocError();
    *v16 = 8;
    swift_willThrow();
    v5 = v0[1];
  }

  return v5();
}

uint64_t closure #1 in IDSGroupSessionProvider.sessionDidJoinGroup(_:participantUpdate:error:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v5[8] = a2;
  v5[9] = a3;

  if (v3)
  {
    v6 = v5[1];

    return v6();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](closure #1 in IDSGroupSessionProvider.sessionDidJoinGroup(_:participantUpdate:error:), 0, 0);
  }
}

uint64_t @objc IDSGroupSessionProvider.session(_:participantDidJoinGroupWithInfo:)(void *a1, uint64_t a2, void *a3, uint64_t a4, const char *a5, ...)
{
  v8 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = a3;
  v10 = a1;
  specialized IDSGroupSessionProvider.session(_:participantDidJoinGroupWithInfo:)(v8, a5);
}

void IDSGroupSessionProvider.groupSessionDidTerminate(_:)(void *a1)
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = (&v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v1 + OBJC_IVAR____TtC14CopresenceCore23IDSGroupSessionProvider_queue);
  *v6 = v7;
  (*(v4 + 104))(v6, *MEMORY[0x1E69E8020], v3);
  v8 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  (*(v4 + 8))(v6, v3);
  if (v7)
  {
    if (one-time initialization token for service == -1)
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
  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, static Log.service);
  v10 = a1;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v19 = v10;
    v20 = v14;
    *v13 = 136315138;
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for IDSGroupSession, 0x1E69A4868);
    v15 = v10;
    v16 = String.init<A>(reflecting:)();
    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, &v20);

    *(v13 + 4) = v18;
    _os_log_impl(&dword_1AEB26000, v11, v12, "IDSGroupSessionProvider: groupSessionDidTerminate %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v14);
    MEMORY[0x1B27120C0](v14, -1, -1);
    MEMORY[0x1B27120C0](v13, -1, -1);
  }
}

void IDSGroupSessionProvider.groupSessionEnded(_:with:error:)(void *a1, int a2, void *a3)
{
  v4 = v3;
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *(v4 + OBJC_IVAR____TtC14CopresenceCore23IDSGroupSessionProvider_queue);
  *v11 = v12;
  (*(v9 + 104))(v11, *MEMORY[0x1E69E8020], v8);
  v13 = v12;
  LOBYTE(v12) = _dispatchPreconditionTest(_:)();
  (*(v9 + 8))(v11, v8);
  if (v12)
  {
    if (one-time initialization token for service == -1)
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
  __swift_project_value_buffer(v14, static Log.service);
  v15 = a1;
  v16 = a3;
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v35 = v15;
    v36 = v20;
    *v19 = 136315650;
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for IDSGroupSession, 0x1E69A4868);
    v21 = v15;
    v22 = String.init<A>(reflecting:)();
    v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v23, &v36);

    *(v19 + 4) = v24;
    *(v19 + 12) = 2080;
    LODWORD(v35) = a2;
    type metadata accessor for IDSSessionEndedReason(0);
    v25 = String.init<A>(reflecting:)();
    v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, &v36);

    *(v19 + 14) = v27;
    *(v19 + 22) = 2080;
    if (a3)
    {
      v35 = a3;
      v28 = a3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v29 = String.init<A>(reflecting:)();
      v31 = v30;
    }

    else
    {
      v31 = 0xE300000000000000;
      v29 = 7104878;
    }

    v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v31, &v36);

    *(v19 + 24) = v32;
    _os_log_impl(&dword_1AEB26000, v17, v18, "IDSGroupSessionProvider: groupSessionEnded %s reason: %s error %s", v19, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1B27120C0](v20, -1, -1);
    MEMORY[0x1B27120C0](v19, -1, -1);
  }

  v33 = *((*MEMORY[0x1E69E7D40] & *v4) + 0x1B0);
  if (a3)
  {
    v34 = a3;
    v33(3);
  }

  else
  {
    v33(2);
  }
}

uint64_t closure #1 in IDSGroupSessionProvider.session(_:didRegisterPluginAllocationInfo:)()
{
  v1 = v0[2];
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = [objc_opt_self() mainBundle];
  v5 = [v4 bundleIdentifier];

  if (v5)
  {
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
  }

  else
  {
    v8 = 0x80000001AEE31310;
    v6 = 0xD00000000000001DLL;
  }

  v9 = (*(v3 + 16))(0xD000000000000014, 0x80000001AEE35EA0, 0xD00000000000001DLL, 0x80000001AEE35EC0, v6, v8, v2, v3);
  v0[3] = v9;

  if (v9)
  {
    v11 = v1[3];
    v10 = v1[4];
    __swift_project_boxed_opaque_existential_1(v0[2], v11);
    v20 = (*(v10 + 24) + **(v10 + 24));
    v12 = swift_task_alloc();
    v0[4] = v12;
    *v12 = v0;
    v12[1] = closure #1 in IDSGroupSessionProvider.session(_:didRegisterPluginAllocationInfo:);
    v13.n128_u64[0] = 0;

    return v20(v9, v11, v10, v13);
  }

  else
  {
    if (one-time initialization token for abcReporter != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    __swift_project_value_buffer(v15, static Log.abcReporter);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_1AEB26000, v16, v17, "Failed to generate signature for VirtualParticipantID", v18, 2u);
      MEMORY[0x1B27120C0](v18, -1, -1);
    }

    v19 = v0[1];

    return v19();
  }
}

uint64_t closure #2 in IDSGroupSessionProvider.session(_:didRegisterPluginAllocationInfo:)()
{
  v1 = v0[2];
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = [objc_opt_self() mainBundle];
  v5 = [v4 bundleIdentifier];

  if (v5)
  {
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
  }

  else
  {
    v8 = 0x80000001AEE31310;
    v6 = 0xD00000000000001DLL;
  }

  v9 = (*(v3 + 16))(0xD000000000000012, 0x80000001AEE35F10, 0xD00000000000001BLL, 0x80000001AEE35F30, v6, v8, v2, v3);
  v0[3] = v9;

  if (v9)
  {
    v11 = v1[3];
    v10 = v1[4];
    __swift_project_boxed_opaque_existential_1(v0[2], v11);
    v20 = (*(v10 + 24) + **(v10 + 24));
    v12 = swift_task_alloc();
    v0[4] = v12;
    *v12 = v0;
    v12[1] = closure #1 in IDSGroupSessionProvider.session(_:didRegisterPluginAllocationInfo:);
    v13.n128_u64[0] = 0;

    return v20(v9, v11, v10, v13);
  }

  else
  {
    if (one-time initialization token for abcReporter != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    __swift_project_value_buffer(v15, static Log.abcReporter);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_1AEB26000, v16, v17, "Failed to generate signature for LocalParticipantID", v18, 2u);
      MEMORY[0x1B27120C0](v18, -1, -1);
    }

    v19 = v0[1];

    return v19();
  }
}

uint64_t IDSGroupSessionProvider.sessionDidLeaveGroup(_:error:)(void *a1, void *a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = (&v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(v3 + OBJC_IVAR____TtC14CopresenceCore23IDSGroupSessionProvider_queue);
  *v9 = v10;
  (*(v7 + 104))(v9, *MEMORY[0x1E69E8020], v6);
  v11 = v10;
  LOBYTE(v10) = _dispatchPreconditionTest(_:)();
  (*(v7 + 8))(v9, v6);
  if (v10)
  {
    if (one-time initialization token for service == -1)
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
  __swift_project_value_buffer(v12, static Log.service);
  v13 = a1;
  v14 = a2;
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v29 = v13;
    v30 = v18;
    *v17 = 136315394;
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for IDSGroupSession, 0x1E69A4868);
    v19 = v13;
    v20 = String.init<A>(reflecting:)();
    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, &v30);

    *(v17 + 4) = v22;
    *(v17 + 12) = 2080;
    if (a2)
    {
      v29 = a2;
      v23 = a2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v24 = String.init<A>(reflecting:)();
      v26 = v25;
    }

    else
    {
      v26 = 0xE300000000000000;
      v24 = 7104878;
    }

    v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v26, &v30);

    *(v17 + 14) = v27;
    _os_log_impl(&dword_1AEB26000, v15, v16, "IDSGroupSessionProvider: sessionDidLeaveGroup %s, error: %s", v17, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B27120C0](v18, -1, -1);
    MEMORY[0x1B27120C0](v17, -1, -1);
  }

  return (*((*MEMORY[0x1E69E7D40] & *v3) + 0x1B0))(2);
}

uint64_t @objc IDSGroupSessionProvider.session(_:didRegisterPluginAllocationInfo:)(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(uint64_t))
{
  v8 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = a3;
  v10 = a1;
  a5(v8);
}

uint64_t closure #1 in IDSGroupSessionProvider.session(_:rejectedKeyRecoveryRequestFrom:reason:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  *(v5 + 60) = a5;
  *(v5 + 32) = a4;
  return MEMORY[0x1EEE6DFA0](closure #1 in IDSGroupSessionProvider.session(_:rejectedKeyRecoveryRequestFrom:reason:), 0, 0);
}

uint64_t closure #1 in IDSGroupSessionProvider.session(_:rejectedKeyRecoveryRequestFrom:reason:)()
{
  v1 = 0xD00000000000001DLL;
  v2 = *(v0 + 60);
  v3 = *(v0 + 32);
  v4 = v3[3];
  v5 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v4);
  _StringGuts.grow(_:)(44);
  *(v0 + 16) = 0;
  *(v0 + 24) = 0xE000000000000000;
  MEMORY[0x1B2710020](0xD00000000000002ALL, 0x80000001AEE35E70);
  *(v0 + 56) = v2;
  type metadata accessor for IDSGroupSessionEncryptionControllerRejectionReason(0);
  _print_unlocked<A, B>(_:_:)();
  v6 = *(v0 + 16);
  v7 = *(v0 + 24);
  v8 = [objc_opt_self() mainBundle];
  v9 = [v8 bundleIdentifier];

  if (v9)
  {
    v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;
  }

  else
  {
    v11 = 0x80000001AEE31310;
  }

  v12 = (*(v5 + 16))(0x766F63655279654BLL, 0xEB00000000797265, v6, v7, v1, v11, v4, v5);
  *(v0 + 40) = v12;

  if (v12)
  {
    v14 = v3[3];
    v13 = v3[4];
    __swift_project_boxed_opaque_existential_1(*(v0 + 32), v14);
    v23 = (*(v13 + 24) + **(v13 + 24));
    v15 = swift_task_alloc();
    *(v0 + 48) = v15;
    *v15 = v0;
    v15[1] = closure #1 in IDSGroupSessionProvider.session(_:rejectedKeyRecoveryRequestFrom:reason:);
    v16.n128_u64[0] = 0;

    return v23(v12, v14, v13, v16);
  }

  else
  {
    if (one-time initialization token for abcReporter != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    __swift_project_value_buffer(v18, static Log.abcReporter);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_1AEB26000, v19, v20, "[KeyRecovery] Failed to generate signature for key recovery", v21, 2u);
      MEMORY[0x1B27120C0](v21, -1, -1);
    }

    v22 = *(v0 + 8);

    return v22();
  }
}

uint64_t closure #1 in IDSGroupSessionProvider.session(_:rejectedKeyRecoveryRequestFrom:reason:)(uint64_t a1)
{
  v4 = *v1;

  v2 = *(v4 + 8);

  return v2();
}

void closure #2 in IDSGroupSessionProvider.session(_:didReceiveActiveLightweightParticipants:success:)(void **a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v27 - v7;
  v9 = *a1;
  v10 = [v9 participantURI];
  if (v10)
  {
    v11 = v10;
    v12 = [v9 participantIdentifier];
    v13 = [v11 _stripFZIDPrefix];

    if (v13)
    {
      v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v16 = v15;

      *a3 = v12;
      a3[1] = v14;
      a3[2] = v16;
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    if (one-time initialization token for service != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    __swift_project_value_buffer(v17, static Log.service);
    v18 = v9;
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v21 = 138412290;
      *(v21 + 4) = v18;
      *v22 = v18;
      v23 = v18;
      _os_log_impl(&dword_1AEB26000, v19, v20, "Failed to fetch participantURI for %@", v21, 0xCu);
      outlined destroy of NSObject?(v22, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x1B27120C0](v22, -1, -1);
      MEMORY[0x1B27120C0](v21, -1, -1);
    }

    static TaskPriority.background.getter();
    v24 = type metadata accessor for TaskPriority();
    v25 = (*(*(v24 - 8) + 56))(v8, 0, 1, v24);
    (*((*MEMORY[0x1E69E7D40] & *a2) + 0x178))(v28, v25);
    outlined init with take of ContiguousBytes(v28, v27);
    v26 = swift_allocObject();
    *(v26 + 16) = 0;
    *(v26 + 24) = 0;
    outlined init with take of ContiguousBytes(v27, v26 + 32);
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v8, &async function pointer to partial apply for closure #1 in closure #2 in IDSGroupSessionProvider.session(_:didReceiveActiveLightweightParticipants:success:), v26);

    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }
}

uint64_t closure #1 in closure #2 in IDSGroupSessionProvider.session(_:didReceiveActiveLightweightParticipants:success:)()
{
  v1 = v0[2];
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = [objc_opt_self() mainBundle];
  v5 = [v4 bundleIdentifier];

  if (v5)
  {
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
  }

  else
  {
    v8 = 0x80000001AEE31310;
    v6 = 0xD00000000000001DLL;
  }

  v9 = (*(v3 + 16))(0xD000000000000016, 0x80000001AEE35E30, 0xD000000000000018, 0x80000001AEE35E50, v6, v8, v2, v3);
  v0[3] = v9;

  if (v9)
  {
    v11 = v1[3];
    v10 = v1[4];
    __swift_project_boxed_opaque_existential_1(v0[2], v11);
    v20 = (*(v10 + 24) + **(v10 + 24));
    v12 = swift_task_alloc();
    v0[4] = v12;
    *v12 = v0;
    v12[1] = closure #1 in IDSGroupSessionProvider.session(_:didRegisterPluginAllocationInfo:);
    v13.n128_u64[0] = 0;

    return v20(v9, v11, v10, v13);
  }

  else
  {
    if (one-time initialization token for abcReporter != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    __swift_project_value_buffer(v15, static Log.abcReporter);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_1AEB26000, v16, v17, "Failed to generate signature for Participant translation", v18, 2u);
      MEMORY[0x1B27120C0](v18, -1, -1);
    }

    v19 = v0[1];

    return v19();
  }
}

uint64_t specialized Set.formUnion<A>(_:)(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v10 = (*(v1 + 48) + 24 * (v9 | (v8 << 6)));
      v11 = *v10;
      v12 = v10[1];
      v13 = v10[2];

      specialized Set._Variant.insert(_:)(v14, v11, v12, v13);

      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return result;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

uint64_t specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  __CocoaSet.count.getter();
LABEL_9:
  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v2 = result;
  return result;
}

uint64_t specialized Array.append<A>(contentsOf:)(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = __CocoaSet.count.getter();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v1 >> 62))
  {
    v4 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5 = __OFADD__(v4, v3);
    result = v4 + v3;
    if (!v5)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = __CocoaSet.count.getter();
  v5 = __OFADD__(v13, v3);
  result = v13 + v3;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(result, 1);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  specialized Array._copyContents(initializing:)(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 < 1)
  {
LABEL_9:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

{
  if (a1 >> 62)
  {
    v3 = __CocoaSet.count.getter();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v1 >> 62))
  {
    v4 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5 = __OFADD__(v4, v3);
    result = v4 + v3;
    if (!v5)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = __CocoaSet.count.getter();
  v5 = __OFADD__(v13, v3);
  result = v13 + v3;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(result, 1);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  specialized Array._copyContents(initializing:)(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 < 1)
  {
LABEL_9:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

char *specialized Array.append<A>(contentsOf:)(char *result)
{
  v2 = *(result + 2);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 3) >> 1)
  {
    if (*(v6 + 2))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 2))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 2);
  if ((*(v3 + 3) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy(&v3[8 * v7 + 32], v6 + 32, 8 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 2);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 2) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

{
  v2 = *(result + 2);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 3) >> 1)
  {
    if (*(v6 + 2))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 2))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 3) >> 1) - *(v3 + 2) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 2);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 2) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t specialized Array._copyContents(initializing:)(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = __CocoaSet.count.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = __CocoaSet.count.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [IDSDestinationProtocol] and conformance [A], &_sSaySo22IDSDestinationProtocol_pGMd, &_sSaySo22IDSDestinationProtocol_pGMR, MEMORY[0x1E69E6340]);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo22IDSDestinationProtocol_pGMd, &_sSaySo22IDSDestinationProtocol_pGMR);
            v9 = specialized protocol witness for Collection.subscript.read in conformance [A](v13, i, a3);
            v11 = *v10;
            swift_unknownObjectRetain();
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo22IDSDestinationProtocol_pMd, &_sSo22IDSDestinationProtocol_pMR);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = __CocoaSet.count.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = __CocoaSet.count.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [TUHandle] and conformance [A], &_sSaySo8TUHandleCGMd, &_sSaySo8TUHandleCGMR, MEMORY[0x1E69E6340]);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8TUHandleCGMd, &_sSaySo8TUHandleCGMR);
            v9 = specialized protocol witness for Collection.subscript.read in conformance [A](v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUHandle, 0x1E69D8C00);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

id specialized IDSGroupSessionProvider.init(groupID:members:localMember:service:targetQueue:abcReporter:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7, uint64_t a8)
{
  v9 = v8;
  v39 = a8;
  v17 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v37 = *(v17 - 8);
  v38 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v36 = v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for OS_dispatch_queue.Attributes();
  MEMORY[0x1EEE9AC00](v19);
  v35[1] = v35 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for DispatchQoS();
  MEMORY[0x1EEE9AC00](v21 - 8);
  *&v9[OBJC_IVAR____TtC14CopresenceCore23IDSGroupSessionProvider_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v9[OBJC_IVAR____TtC14CopresenceCore23IDSGroupSessionProvider_groupSession] = 0;
  v22 = &v9[OBJC_IVAR____TtC14CopresenceCore23IDSGroupSessionProvider____lazy_storage___userDefaults];
  *v22 = 0u;
  *(v22 + 1) = 0u;
  *(v22 + 4) = 0;
  v23 = &v9[OBJC_IVAR____TtC14CopresenceCore23IDSGroupSessionProvider__currentPlugins];
  v24 = MEMORY[0x1E69E7CC0];
  *v23 = 0;
  *(v23 + 1) = v24;
  v25 = MEMORY[0x1E69E7CD0];
  *&v9[OBJC_IVAR____TtC14CopresenceCore23IDSGroupSessionProvider_participants] = MEMORY[0x1E69E7CD0];
  *&v9[OBJC_IVAR____TtC14CopresenceCore23IDSGroupSessionProvider_unknownParticipants] = v25;
  *&v9[OBJC_IVAR____TtC14CopresenceCore23IDSGroupSessionProvider_powerAssertion] = 0;
  v9[OBJC_IVAR____TtC14CopresenceCore23IDSGroupSessionProvider_state] = 0;
  v26 = &v9[OBJC_IVAR____TtC14CopresenceCore23IDSGroupSessionProvider_groupID];
  *v26 = a1;
  v26[1] = a2;
  *&v9[OBJC_IVAR____TtC14CopresenceCore23IDSGroupSessionProvider_members] = a3;
  v27 = &v9[OBJC_IVAR____TtC14CopresenceCore23IDSGroupSessionProvider_localMember];
  *v27 = a4;
  v27[1] = a5;
  outlined init with copy of UserNotificationCenter(a6, &v9[OBJC_IVAR____TtC14CopresenceCore23IDSGroupSessionProvider_service]);
  v35[0] = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  *&v44 = 0;
  *(&v44 + 1) = 0xE000000000000000;
  swift_unknownObjectRetain();

  _StringGuts.grow(_:)(29);
  MEMORY[0x1B2710020](0xD000000000000018, 0x80000001AEE35B70);
  MEMORY[0x1B2710020](a1, a2);

  MEMORY[0x1B2710020](45, 0xE100000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore18IDSServiceProtocol_pMd, &_s14CopresenceCore18IDSServiceProtocol_pMR);
  v40 = a6;
  _print_unlocked<A, B>(_:_:)();
  v28 = a7;
  static DispatchQoS.unspecified.getter();
  *&v44 = MEMORY[0x1E69E7CC0];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_4(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, 255, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR, MEMORY[0x1E69E6328]);
  v29 = v39;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v37 + 104))(v36, *MEMORY[0x1E69E8090], v38);
  *&v9[OBJC_IVAR____TtC14CopresenceCore23IDSGroupSessionProvider_queue] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v29, &v42, &_s14CopresenceCore19ABCReporterProtocol_pSgMd, &_s14CopresenceCore19ABCReporterProtocol_pSgMR);
  if (v43)
  {
    outlined init with take of ContiguousBytes(&v42, &v44);
  }

  else
  {
    v30 = type metadata accessor for ABCReporter();
    v31 = swift_allocObject();
    v31[2] = [objc_allocWithZone(MEMORY[0x1E69D4F80]) init];
    v31[3] = 0x636E795374736146;
    v31[4] = 0xE800000000000000;
    v31[5] = 0xD000000000000017;
    v31[6] = 0x80000001AEE17DD0;
    v45 = v30;
    v46 = &protocol witness table for ABCReporter;
    *&v44 = v31;
    if (v43)
    {
      outlined destroy of NSObject?(&v42, &_s14CopresenceCore19ABCReporterProtocol_pSgMd, &_s14CopresenceCore19ABCReporterProtocol_pSgMR);
    }
  }

  outlined init with take of ContiguousBytes(&v44, &v9[OBJC_IVAR____TtC14CopresenceCore23IDSGroupSessionProvider_abcReporter]);
  v32 = type metadata accessor for IDSGroupSessionProvider();
  v41.receiver = v9;
  v41.super_class = v32;
  v33 = objc_msgSendSuper2(&v41, sel_init);
  outlined destroy of NSObject?(v29, &_s14CopresenceCore19ABCReporterProtocol_pSgMd, &_s14CopresenceCore19ABCReporterProtocol_pSgMR);
  __swift_destroy_boxed_opaque_existential_1Tm(v40);
  return v33;
}

unint64_t lazy protocol witness table accessor for type IDSGroupSessionProvider.IDSGroupSessionProviderError and conformance IDSGroupSessionProvider.IDSGroupSessionProviderError()
{
  result = lazy protocol witness table cache variable for type IDSGroupSessionProvider.IDSGroupSessionProviderError and conformance IDSGroupSessionProvider.IDSGroupSessionProviderError;
  if (!lazy protocol witness table cache variable for type IDSGroupSessionProvider.IDSGroupSessionProviderError and conformance IDSGroupSessionProvider.IDSGroupSessionProviderError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IDSGroupSessionProvider.IDSGroupSessionProviderError and conformance IDSGroupSessionProvider.IDSGroupSessionProviderError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IDSGroupSessionProvider.IDSGroupSessionProviderError and conformance IDSGroupSessionProvider.IDSGroupSessionProviderError;
  if (!lazy protocol witness table cache variable for type IDSGroupSessionProvider.IDSGroupSessionProviderError and conformance IDSGroupSessionProvider.IDSGroupSessionProviderError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IDSGroupSessionProvider.IDSGroupSessionProviderError and conformance IDSGroupSessionProvider.IDSGroupSessionProviderError);
  }

  return result;
}

uint64_t partial apply for closure #2 in IDSGroupSessionProvider.requestParticipant(for:)(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return closure #2 in IDSGroupSessionProvider.requestParticipant(for:)(a1, v4, v5, v1 + 32);
}

uint64_t partial apply for closure #1 in IDSGroupSessionProvider.sessionDidJoinGroup(_:participantUpdate:error:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return closure #1 in IDSGroupSessionProvider.sessionDidJoinGroup(_:participantUpdate:error:)(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t partial apply for specialized closure #1 in Task<>.reportFailure(on:function:process:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return specialized closure #1 in Task<>.reportFailure(on:function:process:)(a1, v4, v5, v6, v7, v8, v9, v10);
}

{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return specialized closure #1 in Task<>.reportFailure(on:function:process:)(a1, v4, v5, v6, v7, v8, v9, v10);
}

void specialized IDSGroupSessionProvider.session(_:participantDidJoinGroupWithInfo:)(uint64_t a1, const char *a2, ...)
{
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = (&v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v2 + OBJC_IVAR____TtC14CopresenceCore23IDSGroupSessionProvider_queue);
  *v8 = v9;
  (*(v6 + 104))(v8, *MEMORY[0x1E69E8020], v5);
  v10 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  (*(v6 + 8))(v8, v5);
  if (v9)
  {
    if (one-time initialization token for service == -1)
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
  v11 = type metadata accessor for Logger();
  __swift_project_value_buffer(v11, static Log.service);

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v19 = a1;
    v20 = v15;
    *v14 = 136315138;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd, &_sSDySSypGMR);
    v16 = String.init<A>(reflecting:)();
    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, &v20);

    *(v14 + 4) = v18;
    _os_log_impl(&dword_1AEB26000, v12, v13, a2, v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v15);
    MEMORY[0x1B27120C0](v15, -1, -1);
    MEMORY[0x1B27120C0](v14, -1, -1);
  }
}

void specialized IDSGroupSessionProvider.session(_:didRegisterPluginAllocationInfo:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v62 - v5;
  v7 = type metadata accessor for DispatchPredicate();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = (v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *(v2 + OBJC_IVAR____TtC14CopresenceCore23IDSGroupSessionProvider_queue);
  *v10 = v11;
  (*(v8 + 104))(v10, *MEMORY[0x1E69E8020], v7);
  v12 = v11;
  LOBYTE(v11) = _dispatchPreconditionTest(_:)();
  (*(v8 + 8))(v10, v7);
  if (v11)
  {
    if (one-time initialization token for service == -1)
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
  v13 = type metadata accessor for Logger();
  __swift_project_value_buffer(v13, static Log.service);

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *&v65[0] = v17;
    *v16 = 136315138;
    *&v62[0] = a1;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys11AnyHashableVypGMd, &_sSDys11AnyHashableVypGMR);
    v18 = String.init<A>(reflecting:)();
    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, v65);

    *(v16 + 4) = v20;
    _os_log_impl(&dword_1AEB26000, v14, v15, "IDSGroupSessionProvider: didRegisterPluginAllocationInfo %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v17);
    MEMORY[0x1B27120C0](v17, -1, -1);
    MEMORY[0x1B27120C0](v16, -1, -1);
  }

  v63 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v64 = v21;
  AnyHashable.init<A>(_:)();
  if (!*(a1 + 16) || (v22 = specialized __RawDictionaryStorage.find<A>(_:)(v65), (v23 & 1) == 0))
  {
    outlined destroy of AnyHashable(v65);
    goto LABEL_17;
  }

  outlined init with copy of Any(*(a1 + 56) + 32 * v22, v62);
  outlined destroy of AnyHashable(v65);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_17:

    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      *&v65[0] = v45;
      *v44 = 136315138;
      v46 = Dictionary.description.getter();
      v48 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46, v47, v65);

      *(v44 + 4) = v48;
      _os_log_impl(&dword_1AEB26000, v42, v43, "Missing virtual participantID, read %s", v44, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v45);
      MEMORY[0x1B27120C0](v45, -1, -1);
      MEMORY[0x1B27120C0](v44, -1, -1);
    }

    static TaskPriority.background.getter();
    v49 = type metadata accessor for TaskPriority();
    v50 = (*(*(v49 - 8) + 56))(v6, 0, 1, v49);
    (*((*MEMORY[0x1E69E7D40] & *v2) + 0x178))(v65, v50);
    outlined init with take of ContiguousBytes(v65, v62);
    v51 = swift_allocObject();
    *(v51 + 16) = 0;
    *(v51 + 24) = 0;
    outlined init with take of ContiguousBytes(v62, v51 + 32);
    v52 = &async function pointer to partial apply for closure #1 in IDSGroupSessionProvider.session(_:didRegisterPluginAllocationInfo:);
    goto LABEL_20;
  }

  v24 = v63;
  v63 = 0xD000000000000023;
  v64 = 0x80000001AEE35EE0;
  AnyHashable.init<A>(_:)();
  if (!*(a1 + 16) || (v25 = specialized __RawDictionaryStorage.find<A>(_:)(v65), (v26 & 1) == 0))
  {
    outlined destroy of AnyHashable(v65);
    goto LABEL_22;
  }

  outlined init with copy of Any(*(a1 + 56) + 32 * v25, v62);
  outlined destroy of AnyHashable(v65);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_22:

    v53 = Logger.logObject.getter();
    v54 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      *&v65[0] = v56;
      *v55 = 136315138;
      v57 = Dictionary.description.getter();
      v59 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v57, v58, v65);

      *(v55 + 4) = v59;
      _os_log_impl(&dword_1AEB26000, v53, v54, "Missing local participantID, read %s", v55, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v56);
      MEMORY[0x1B27120C0](v56, -1, -1);
      MEMORY[0x1B27120C0](v55, -1, -1);
    }

    static TaskPriority.background.getter();
    v60 = type metadata accessor for TaskPriority();
    v61 = (*(*(v60 - 8) + 56))(v6, 0, 1, v60);
    (*((*MEMORY[0x1E69E7D40] & *v2) + 0x178))(v65, v61);
    outlined init with take of ContiguousBytes(v65, v62);
    v51 = swift_allocObject();
    *(v51 + 16) = 0;
    *(v51 + 24) = 0;
    outlined init with take of ContiguousBytes(v62, v51 + 32);
    v52 = &async function pointer to partial apply for closure #2 in IDSGroupSessionProvider.session(_:didRegisterPluginAllocationInfo:);
LABEL_20:
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v6, v52, v51);

    return;
  }

  v27 = v63;
  v28 = objc_allocWithZone(MEMORY[0x1E69D8BC0]);
  v29 = MEMORY[0x1B270FF70](0x627553627550, 0xE600000000000000);
  v30 = [v28 initWithIdentifier:v24 pluginName:v29];

  v31 = MEMORY[0x1E69E7D40];
  v32 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x138);
  v33 = v30;
  v34 = v32(v65);
  v36 = v35;
  v37 = *v35;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v36 = v37;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v37 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v37 + 2) + 1, 1, v37);
    *v36 = v37;
  }

  v40 = *(v37 + 2);
  v39 = *(v37 + 3);
  if (v40 >= v39 >> 1)
  {
    v37 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v39 > 1), v40 + 1, 1, v37);
    *v36 = v37;
  }

  *(v37 + 2) = v40 + 1;
  v41 = &v37[16 * v40];
  *(v41 + 4) = v33;
  *(v41 + 5) = v27;
  v34(v65, 0);
  (*((*v31 & *v2) + 0x1B0))(1);
}

void specialized IDSGroupSessionProvider.session(_:didUnregisterPluginAllocationInfo:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v58 - v5;
  v7 = type metadata accessor for DispatchPredicate();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = (&v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *(v2 + OBJC_IVAR____TtC14CopresenceCore23IDSGroupSessionProvider_queue);
  *v10 = v11;
  (*(v8 + 104))(v10, *MEMORY[0x1E69E8020], v7);
  v12 = v11;
  LOBYTE(v11) = _dispatchPreconditionTest(_:)();
  (*(v8 + 8))(v10, v7);
  if (v11)
  {
    if (one-time initialization token for service == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
LABEL_33:
    __break(1u);
  }

  swift_once();
LABEL_3:
  v13 = type metadata accessor for Logger();
  v14 = __swift_project_value_buffer(v13, static Log.service);

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *&v70[0] = v18;
    *v17 = 136315138;
    *&v67[0] = a1;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys11AnyHashableVypGMd, &_sSDys11AnyHashableVypGMR);
    v19 = String.init<A>(reflecting:)();
    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v20, v70);

    *(v17 + 4) = v21;
    _os_log_impl(&dword_1AEB26000, v15, v16, "IDSGroupSessionProvider: didUnregisterPluginAllocationInfo %s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v18);
    MEMORY[0x1B27120C0](v18, -1, -1);
    MEMORY[0x1B27120C0](v17, -1, -1);
  }

  v68 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v69 = v22;
  AnyHashable.init<A>(_:)();
  if (!a1[2] || (v23 = specialized __RawDictionaryStorage.find<A>(_:)(v70), (v24 & 1) == 0))
  {
    outlined destroy of AnyHashable(v70);
    goto LABEL_22;
  }

  outlined init with copy of Any(a1[7] + 32 * v23, v67);
  outlined destroy of AnyHashable(v70);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_22:

    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      *&v70[0] = v44;
      *v43 = 136315138;
      v45 = Dictionary.description.getter();
      v47 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v45, v46, v70);

      *(v43 + 4) = v47;
      _os_log_impl(&dword_1AEB26000, v41, v42, "Missing virtual participantID, read %s", v43, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v44);
      MEMORY[0x1B27120C0](v44, -1, -1);
      MEMORY[0x1B27120C0](v43, -1, -1);
    }

    static TaskPriority.background.getter();
    v48 = type metadata accessor for TaskPriority();
    v49 = (*(*(v48 - 8) + 56))(v6, 0, 1, v48);
    (*((*MEMORY[0x1E69E7D40] & *v2) + 0x178))(v70, v49);
    outlined init with take of ContiguousBytes(v70, v67);
    v50 = swift_allocObject();
    *(v50 + 16) = 0;
    *(v50 + 24) = 0;
    outlined init with take of ContiguousBytes(v67, v50 + 32);
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v6, &async function pointer to partial apply for closure #1 in IDSGroupSessionProvider.session(_:didUnregisterPluginAllocationInfo:), v50);

    return;
  }

  v61 = v14;
  v25 = v68;
  v26 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x128);
  v64 = (*MEMORY[0x1E69E7D40] & *v2) + 296;
  v65 = v26;
  v27 = v26();
  v6 = v27;
  v28 = *(v27 + 16);
  if (v28)
  {
    v29 = 0;
    v30 = v27 + 40;
    v62 = v28 - 1;
    v66 = MEMORY[0x1E69E7CC0];
    v63 = v27 + 40;
    do
    {
      v31 = (v30 + 16 * v29);
      v32 = v29;
      while (1)
      {
        if (v32 >= *(v6 + 2))
        {
          __break(1u);
          goto LABEL_33;
        }

        v33 = *v31;
        v29 = v32 + 1;
        a1 = *(v31 - 1);
        if ([a1 identifier] != v25)
        {
          break;
        }

        v31 += 2;
        ++v32;
        if (v28 == v29)
        {
          goto LABEL_27;
        }
      }

      v34 = v66;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v70[0] = v34;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v66 + 16) + 1, 1);
        v66 = *&v70[0];
      }

      v37 = *(v66 + 16);
      v36 = *(v66 + 24);
      v38 = v37 + 1;
      if (v37 >= v36 >> 1)
      {
        v59 = *(v66 + 16);
        v60 = v37 + 1;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v36 > 1), v37 + 1, 1);
        v37 = v59;
        v38 = v60;
        v66 = *&v70[0];
      }

      v39 = v66;
      *(v66 + 16) = v38;
      v40 = v39 + 16 * v37;
      *(v40 + 32) = a1;
      *(v40 + 40) = v33;
      v30 = v63;
    }

    while (v62 != v32);
  }

  else
  {
    v66 = MEMORY[0x1E69E7CC0];
  }

LABEL_27:

  v51 = MEMORY[0x1E69E7D40];
  v52 = (*((*MEMORY[0x1E69E7D40] & *v2) + 0x130))(v66);
  v53 = *((v65)(v52) + 16);

  if (!v53 && (*((*v51 & *v2) + 0x1A8))(v54) == 1)
  {
    v55 = Logger.logObject.getter();
    v56 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      *v57 = 0;
      _os_log_impl(&dword_1AEB26000, v55, v56, "IDSGroupSessionProvider: Lost all virtualParticipants, re-registering plugin.", v57, 2u);
      MEMORY[0x1B27120C0](v57, -1, -1);
    }

    IDSGroupSessionProvider.registerQRPlugin()();
  }
}

uint64_t specialized IDSGroupSessionProvider.session(_:rejectedKeyRecoveryRequestFrom:reason:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v37 - v7;
  v9 = type metadata accessor for DispatchPredicate();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = (v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *(v3 + OBJC_IVAR____TtC14CopresenceCore23IDSGroupSessionProvider_queue);
  *v12 = v13;
  (*(v10 + 104))(v12, *MEMORY[0x1E69E8020], v9);
  v14 = v13;
  LOBYTE(v13) = _dispatchPreconditionTest(_:)();
  (*(v10 + 8))(v12, v9);
  if (v13)
  {
    if (one-time initialization token for service == -1)
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
  __swift_project_value_buffer(v15, static Log.service);
  v16 = a1;
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *&v38 = v20;
    *v19 = 136315394;
    *&v37[0] = v16;
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for IDSURI, 0x1E69A5428);
    v21 = v16;
    v22 = String.init<A>(reflecting:)();
    v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v23, &v38);

    *(v19 + 4) = v24;
    *(v19 + 12) = 1024;
    *(v19 + 14) = a2;
    _os_log_impl(&dword_1AEB26000, v17, v18, "IDSGroupSessionProvider: rejectedKeyRecoveryRequest from: %s, reason: %u", v19, 0x12u);
    __swift_destroy_boxed_opaque_existential_1Tm(v20);
    MEMORY[0x1B27120C0](v20, -1, -1);
    MEMORY[0x1B27120C0](v19, -1, -1);
  }

  static TaskPriority.background.getter();
  v25 = type metadata accessor for TaskPriority();
  v26 = (*(*(v25 - 8) + 56))(v8, 0, 1, v25);
  v27 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v3) + 0x178))(&v38, v26);
  outlined init with take of ContiguousBytes(&v38, v37);
  v28 = swift_allocObject();
  *(v28 + 16) = 0;
  *(v28 + 24) = 0;
  outlined init with take of ContiguousBytes(v37, v28 + 32);
  *(v28 + 72) = a2;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v8, &async function pointer to partial apply for closure #1 in IDSGroupSessionProvider.session(_:rejectedKeyRecoveryRequestFrom:reason:), v28);

  result = (*((*v27 & *v3) + 0xC0))(v29);
  if (result)
  {
    v32 = v31;
    ObjectType = swift_getObjectType();
    v39 = type metadata accessor for IDSGroupSessionProvider();
    v40 = _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_4(&lazy protocol witness table cache variable for type IDSGroupSessionProvider and conformance IDSGroupSessionProvider, v34, type metadata accessor for IDSGroupSessionProvider, &protocol conformance descriptor for IDSGroupSessionProvider);
    *&v38 = v3;
    v35 = *(v32 + 24);
    v36 = v3;
    v35(&v38, v16, a2, ObjectType, v32);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1Tm(&v38);
  }

  return result;
}

uint64_t specialized IDSGroupSessionProvider.sessiondidReceiveKeyUpdate(_:)()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v20[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v1 + OBJC_IVAR____TtC14CopresenceCore23IDSGroupSessionProvider_queue);
  *v5 = v6;
  (*(v3 + 104))(v5, *MEMORY[0x1E69E8020], v2);
  v7 = v6;
  LOBYTE(v6) = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v5, v2);
  if (v6)
  {
    if (one-time initialization token for service == -1)
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
  __swift_project_value_buffer(v8, static Log.service);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_1AEB26000, v9, v10, "IDSGroupSessionProvider: sessiondidReceiveKeyUpdate", v11, 2u);
    MEMORY[0x1B27120C0](v11, -1, -1);
  }

  result = (*((*MEMORY[0x1E69E7D40] & *v1) + 0xC0))();
  if (result)
  {
    v14 = v13;
    ObjectType = swift_getObjectType();
    v20[3] = type metadata accessor for IDSGroupSessionProvider();
    v20[4] = _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_4(&lazy protocol witness table cache variable for type IDSGroupSessionProvider and conformance IDSGroupSessionProvider, v16, type metadata accessor for IDSGroupSessionProvider, &protocol conformance descriptor for IDSGroupSessionProvider);
    v20[0] = v1;
    v17 = *(v14 + 16);
    v18 = v1;
    v17(v20, ObjectType, v14);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1Tm(v20);
  }

  return result;
}

unint64_t specialized IDSGroupSessionProvider.session(_:didReceiveActiveLightweightParticipants:success:)(unint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
    return result;
  }

  v2 = result;
  *&v23 = MEMORY[0x1E69E7CC0];
  if (result >> 62)
  {
LABEL_18:
    v3 = __CocoaSet.count.getter();
    if (v3)
    {
LABEL_4:
      v4 = 0;
      do
      {
        if ((v2 & 0xC000000000000001) != 0)
        {
          v5 = MEMORY[0x1B2710B10](v4, v2);
        }

        else
        {
          if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_17;
          }

          v5 = *(v2 + 8 * v4 + 32);
        }

        v6 = v5;
        v7 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          __break(1u);
LABEL_17:
          __break(1u);
          goto LABEL_18;
        }

        if ([v5 isKnown])
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
        }

        else
        {
        }

        ++v4;
      }

      while (v7 != v3);
      v8 = v23;
      if ((v23 & 0x8000000000000000) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_37;
    }
  }

  else
  {
    v3 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_4;
    }
  }

  v8 = MEMORY[0x1E69E7CC0];
  if ((MEMORY[0x1E69E7CC0] & 0x8000000000000000) != 0)
  {
LABEL_37:
    while (1)
    {
      v9 = __CocoaSet.count.getter();
      if (!v9)
      {
        goto LABEL_38;
      }

LABEL_22:
      v10 = 0;
      v11 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        if ((v8 & 0xC000000000000001) != 0)
        {
          v13 = MEMORY[0x1B2710B10](v10, v8);
        }

        else
        {
          if (v10 >= *(v8 + 16))
          {
            goto LABEL_36;
          }

          v13 = *(v8 + 8 * v10 + 32);
        }

        v14 = v13;
        v15 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          break;
        }

        v25 = v13;
        closure #2 in IDSGroupSessionProvider.session(_:didReceiveActiveLightweightParticipants:success:)(&v25, v21, &v23);

        v16 = v24;
        if (v24)
        {
          v22 = v23;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v11 + 2) + 1, 1, v11);
          }

          v18 = *(v11 + 2);
          v17 = *(v11 + 3);
          if (v18 >= v17 >> 1)
          {
            v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1, v11);
          }

          *(v11 + 2) = v18 + 1;
          v12 = &v11[24 * v18];
          *(v12 + 2) = v22;
          *(v12 + 6) = v16;
        }

        ++v10;
        if (v15 == v9)
        {
          goto LABEL_39;
        }
      }

      __break(1u);
LABEL_36:
      __break(1u);
    }
  }

LABEL_20:
  if ((v8 & 0x4000000000000000) != 0)
  {
    goto LABEL_37;
  }

  v9 = *(v8 + 16);
  if (v9)
  {
    goto LABEL_22;
  }

LABEL_38:
  v11 = MEMORY[0x1E69E7CC0];
LABEL_39:

  v19 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC14CopresenceCore23IDSGroupSessionProviderC11ParticipantV_SayAHGTt0g5Tf4g_n(v11);

  v20 = (*((*MEMORY[0x1E69E7D40] & *v21) + 0x158))(&v23);
  specialized Set.formUnion<A>(_:)(v19);
  return v20(&v23, 0);
}

unint64_t lazy protocol witness table accessor for type IDSGroupSessionProvider.SessionState and conformance IDSGroupSessionProvider.SessionState()
{
  result = lazy protocol witness table cache variable for type IDSGroupSessionProvider.SessionState and conformance IDSGroupSessionProvider.SessionState;
  if (!lazy protocol witness table cache variable for type IDSGroupSessionProvider.SessionState and conformance IDSGroupSessionProvider.SessionState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IDSGroupSessionProvider.SessionState and conformance IDSGroupSessionProvider.SessionState);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for IDSGroupSessionProvider(uint64_t a1, uint64_t a2)
{
  result = _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_4(&lazy protocol witness table cache variable for type IDSGroupSessionProvider and conformance NSObject, a2, type metadata accessor for IDSGroupSessionProvider, MEMORY[0x1E6969F88]);
  *(a1 + 8) = result;
  return result;
}

uint64_t dispatch thunk of IDSGroupSessionProviderProtocol.requestParticipant(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 112) + **(a3 + 112));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = dispatch thunk of IDSGroupSessionProviderProtocol.requestParticipant(for:);

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of IDSGroupSessionProvider.requestParticipant(for:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x238);
  v7 = (v4 + *v4);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = dispatch thunk of IDSGroupSessionProvider.requestParticipant(for:);

  return v7(a1);
}

uint64_t dispatch thunk of IDSGroupSessionProvider.requestParticipant(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = *v3;

  v7 = *(v9 + 8);

  return v7(a1, a2, a3);
}

uint64_t getEnumTagSinglePayload for IDSGroupSessionProvider.Participant(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for IDSGroupSessionProvider.Participant(uint64_t result, int a2, int a3)
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

uint64_t objectdestroy_11Tm(uint64_t a1)
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm((v1 + 32));

  return MEMORY[0x1EEE6BDD0](v1, a1, 7);
}

uint64_t partial apply for closure #1 in closure #2 in IDSGroupSessionProvider.session(_:didReceiveActiveLightweightParticipants:success:)(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return closure #1 in closure #2 in IDSGroupSessionProvider.session(_:didReceiveActiveLightweightParticipants:success:)(a1, v4, v5, v1 + 32);
}

uint64_t partial apply for closure #1 in IDSGroupSessionProvider.session(_:rejectedKeyRecoveryRequestFrom:reason:)(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 72);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return closure #1 in IDSGroupSessionProvider.session(_:rejectedKeyRecoveryRequestFrom:reason:)(a1, v4, v5, v1 + 32, v6);
}

uint64_t partial apply for closure #1 in IDSGroupSessionProvider.session(_:didUnregisterPluginAllocationInfo:)(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return closure #1 in IDSGroupSessionProvider.session(_:didRegisterPluginAllocationInfo:)(a1, v4, v5, v1 + 32);
}

uint64_t partial apply for closure #1 in IDSGroupSessionProvider.session(_:didRegisterPluginAllocationInfo:)(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return closure #1 in IDSGroupSessionProvider.session(_:didRegisterPluginAllocationInfo:)(a1, v4, v5, v1 + 32);
}

uint64_t partial apply for closure #2 in IDSGroupSessionProvider.session(_:didRegisterPluginAllocationInfo:)(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return closure #2 in IDSGroupSessionProvider.session(_:didRegisterPluginAllocationInfo:)(a1, v4, v5, v1 + 32);
}

BOOL specialized Sequence<>.contains(_:)(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  v3 = *(a2 + 16);
  do
  {
    v4 = v2;
    if (v3 == v2)
    {
      break;
    }

    type metadata accessor for UUID();
    ++v2;
    _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
  }

  while ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0);
  return v3 != v4;
}

uint64_t specialized Sequence.first(where:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v80 = a2;
  v79 = type metadata accessor for UnencryptedAttachment(0);
  v78 = *(v79 - 8);
  MEMORY[0x1EEE9AC00](v79);
  v72 = &v70 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = type metadata accessor for AttachmentLedger_AttachmentEncryption(0);
  v4 = *(v91 - 8);
  MEMORY[0x1EEE9AC00](v91);
  v83 = &v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore017AttachmentLedger_C10EncryptionVSgMd, &_s14CopresenceCore017AttachmentLedger_C10EncryptionVSgMR);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v97 = &v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v92 = &v70 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore21UnencryptedAttachmentVSgSgMd, &_s14CopresenceCore21UnencryptedAttachmentVSgSgMR);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v77 = &v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v70 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v73 = &v70 - v16;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore21UnencryptedAttachmentVSgMd, &_s14CopresenceCore21UnencryptedAttachmentVSgMR);
  v98 = *(v96 - 8);
  v17 = MEMORY[0x1EEE9AC00](v96);
  v71 = &v70 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v88 = &v70 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v76 = &v70 - v21;
  v22 = *a1;
  v82 = a1[1];
  v24 = a1[2];
  v23 = a1[3];
  v86 = v22;
  v87 = v23;
  v26 = v22 + 64;
  v25 = *(v22 + 64);
  v100 = v22;
  v27 = -1 << *(v22 + 32);
  if (-v27 < 64)
  {
    v28 = ~(-1 << -v27);
  }

  else
  {
    v28 = -1;
  }

  v29 = v28 & v25;
  v30 = a1[4];
  v70 = a1[5];
  v31 = a1[6];
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(&v100, v99, &_sSD6ValuesVys6UInt64V14CopresenceCore017AttachmentLedger_E10EncryptionV_GMd, &_sSD6ValuesVys6UInt64V14CopresenceCore017AttachmentLedger_E10EncryptionV_GMR);
  v74 = v27;
  v81 = (63 - v27) >> 6;
  v84 = v24;
  v85 = v4;
  v89 = (v4 + 48);
  v90 = (v4 + 56);
  v94 = (v98 + 56);
  v95 = (v98 + 48);

  v93 = v30;

  v75 = v31;

  v33 = 0;
  if (v29)
  {
    while (1)
    {
      v34 = v33;
      v35 = v92;
LABEL_13:
      v38 = __clz(__rbit64(v29));
      v29 &= v29 - 1;
      outlined init with copy of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(*(v86 + 56) + *(v85 + 72) * (v38 | (v34 << 6)), v35, type metadata accessor for AttachmentLedger_AttachmentEncryption);
      v39 = 0;
      v98 = v34;
LABEL_14:
      v40 = v91;
      v41 = 1;
      (*v90)(v35, v39, 1, v91);
      v42 = v35;
      v43 = v97;
      outlined init with take of UUID?(v42, v97, &_s14CopresenceCore017AttachmentLedger_C10EncryptionVSgMd, &_s14CopresenceCore017AttachmentLedger_C10EncryptionVSgMR);
      if ((*v89)(v43, 1, v40) != 1)
      {
        v44 = v83;
        outlined init with take of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v97, v83, type metadata accessor for AttachmentLedger_AttachmentEncryption);
        v82(v44);
        outlined destroy of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v44, type metadata accessor for AttachmentLedger_AttachmentEncryption);
        v41 = 0;
      }

      v45 = *v94;
      v46 = v41;
      v47 = v96;
      (*v94)(v15, v46, 1, v96);
      v48 = *v95;
      if ((*v95)(v15, 1, v47) == 1)
      {
        outlined destroy of NSObject?(v15, &_s14CopresenceCore21UnencryptedAttachmentVSgSgMd, &_s14CopresenceCore21UnencryptedAttachmentVSgSgMR);
        v53 = 1;
        v54 = v73;
        goto LABEL_23;
      }

      v49 = v26;
      v50 = v15;
      v51 = v15;
      v52 = v88;
      outlined init with take of UUID?(v51, v88, &_s14CopresenceCore21UnencryptedAttachmentVSgMd, &_s14CopresenceCore21UnencryptedAttachmentVSgMR);
      if (v87(v52))
      {
        break;
      }

      result = outlined destroy of NSObject?(v52, &_s14CopresenceCore21UnencryptedAttachmentVSgMd, &_s14CopresenceCore21UnencryptedAttachmentVSgMR);
      v33 = v98;
      v15 = v50;
      v26 = v49;
      if (!v29)
      {
        goto LABEL_6;
      }
    }

    v55 = v52;
    v54 = v73;
    outlined init with take of UUID?(v55, v73, &_s14CopresenceCore21UnencryptedAttachmentVSgMd, &_s14CopresenceCore21UnencryptedAttachmentVSgMR);
    v53 = 0;
LABEL_23:
    v56 = 1;
    v57 = v96;
    v45(v54, v53, 1, v96);
    v58 = v77;
    outlined init with take of UUID?(v54, v77, &_s14CopresenceCore21UnencryptedAttachmentVSgSgMd, &_s14CopresenceCore21UnencryptedAttachmentVSgSgMR);
    v59 = v48(v58, 1, v57);
    v60 = v79;
    v61 = v76;
    if (v59 != 1)
    {
      v62 = v58;
      v63 = v71;
      outlined init with take of UUID?(v62, v71, &_s14CopresenceCore21UnencryptedAttachmentVSgMd, &_s14CopresenceCore21UnencryptedAttachmentVSgMR);
      v70(v63);
      outlined destroy of NSObject?(v63, &_s14CopresenceCore21UnencryptedAttachmentVSgMd, &_s14CopresenceCore21UnencryptedAttachmentVSgMR);
      v56 = 0;
    }

    v64 = v78;
    v65 = *(v78 + 56);
    v65(v61, v56, 1, v60);
    if ((*(v64 + 48))(v61, 1, v60) == 1)
    {
      outlined consume of Set<String>.Iterator._Variant(v86);

      v66 = 1;
      v67 = v80;
    }

    else
    {
      v68 = v72;
      outlined init with take of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v61, v72, type metadata accessor for UnencryptedAttachment);
      outlined consume of Set<String>.Iterator._Variant(v86);

      v69 = v68;
      v67 = v80;
      outlined init with take of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v69, v80, type metadata accessor for UnencryptedAttachment);
      v66 = 0;
    }

    return (v65)(v67, v66, 1, v60);
  }

  else
  {
LABEL_6:
    if (v81 <= v33 + 1)
    {
      v36 = v33 + 1;
    }

    else
    {
      v36 = v81;
    }

    v37 = v36 - 1;
    v35 = v92;
    while (1)
    {
      v34 = v33 + 1;
      if (__OFADD__(v33, 1))
      {
        break;
      }

      if (v34 >= v81)
      {
        v98 = v37;
        v29 = 0;
        v39 = 1;
        goto LABEL_14;
      }

      v29 = *(v26 + 8 * v34);
      ++v33;
      if (v29)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t Attachment.encryptionSlots.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

void default argument 2 of Attachment.MMCSMetadata.init(encryptedAssetSkeleton:assetSkeleton:status:ownerID:storageLocation:fileHash:refSignature:)(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0xF000000000000000;
}

uint64_t Attachment.MMCSMetadata.init(encryptedAssetSkeleton:assetSkeleton:status:ownerID:storageLocation:fileHash:refSignature:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v30 = *a4;
  v19 = *(a4 + 2);
  v20 = type metadata accessor for AES.GCM.SealedBox();
  (*(*(v20 - 8) + 32))(a9, a1, v20);
  v21 = type metadata accessor for Attachment.MMCSMetadata(0);
  v22 = (a9 + v21[5]);
  *v22 = a2;
  v22[1] = a3;
  v23 = a9 + v21[6];
  *v23 = v30;
  *(v23 + 16) = v19;
  v24 = (a9 + v21[7]);
  *v24 = a5;
  v24[1] = a6;
  v25 = v21[8];
  v26 = type metadata accessor for URL();
  result = (*(*(v26 - 8) + 32))(a9 + v25, a7, v26);
  v28 = (a9 + v21[9]);
  *v28 = a8;
  v28[1] = a10;
  v29 = (a9 + v21[10]);
  *v29 = a11;
  v29[1] = a12;
  return result;
}

uint64_t Attachment.Metadata.init(developerMetadata:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t Attachment.__allocating_init(id:key:mmcsMetadata:metadata:dataCryptor:localParticipantID:config:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, void *a5, void *a6, uint64_t *a7)
{
  v14 = swift_allocObject();
  Attachment.init(id:key:mmcsMetadata:metadata:dataCryptor:localParticipantID:config:)(a1, a2, a3, a4, a5, a6, a7);
  return v14;
}

void *Attachment.update(_:)(__int128 *a1)
{
  if (one-time initialization token for attachment != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Log.attachment);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136315138;
    type metadata accessor for UUID();
    _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v6 = dispatch thunk of CustomStringConvertible.description.getter();
    v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v7, &v11);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_1AEB26000, v2, v3, "Attempting to update attachment %s's MMCSMetadata", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    MEMORY[0x1B27120C0](v5, -1, -1);
    MEMORY[0x1B27120C0](v4, -1, -1);
  }

  MEMORY[0x1EEE9AC00](v9);
  return OS_dispatch_queue.sync<A>(execute:)();
}

uint64_t Attachment.$encryptionSlots.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySDys6UInt64V14CopresenceCore017AttachmentLedger_F10EncryptionVGGMd, &_s7Combine9PublishedVySDys6UInt64V14CopresenceCore017AttachmentLedger_F10EncryptionVGGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t Attachment.update(_:)(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v83 = *(v2 - 8);
  v84 = v2;
  v3 = MEMORY[0x1EEE9AC00](v2);
  v74 = &v68 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v75 = &v68 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMd, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v80 = &v68 - v7;
  v8 = type metadata accessor for AttachmentLedger_EncryptionID(0);
  v77 = *(v8 - 8);
  v78 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v81 = (&v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore017AttachmentLedger_C10EncryptionVSgMd, &_s14CopresenceCore017AttachmentLedger_C10EncryptionVSgMR);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v68 - v11;
  v13 = type metadata accessor for AttachmentLedger_AttachmentEncryption(0);
  v76 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v17 = MEMORY[0x1EEE9AC00](v16 - 8);
  v79 = &v68 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v82 = &v68 - v19;
  v20 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(0);
  v86 = *(v20 - 8);
  v21 = *(v86 + 64);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v87 = &v68 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = &v68 - v24;
  MEMORY[0x1EEE9AC00](v23);
  v27 = &v68 - v26;
  if (one-time initialization token for attachment != -1)
  {
    swift_once();
  }

  v28 = type metadata accessor for Logger();
  __swift_project_value_buffer(v28, static Log.attachment);
  outlined init with copy of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(a1, v27, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full);
  v85 = a1;
  outlined init with copy of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(a1, v25, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full);
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v29, v30))
  {
    v72 = v29;
    v31 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    aBlock[0] = v69;
    *v31 = 134218242;
    v32 = *(v27 + 2);
    outlined destroy of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v27, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full);
    *(v31 + 4) = v32;
    v70 = v31;
    *(v31 + 12) = 2080;
    v33 = *(v20 + 28);
    v73 = v25;
    outlined init with copy of ActivitySession.DomainAssertionWrapper?(&v25[v33], v12, &_s14CopresenceCore017AttachmentLedger_C10EncryptionVSgMd, &_s14CopresenceCore017AttachmentLedger_C10EncryptionVSgMR);
    v34 = *(v76 + 48);
    v35 = v34(v12, 1, v13);
    v71 = v30;
    if (v35 == 1)
    {
      *v15 = xmmword_1AEE0C200;
      *(v15 + 2) = 0;
      UnknownStorage.init()();
      v36 = v77;
      v37 = v78;
      (*(v77 + 56))(&v15[*(v13 + 28)], 1, 1, v78);
      v38 = v34(v12, 1, v13);
      v40 = v83;
      v39 = v84;
      if (v38 != 1)
      {
        outlined destroy of NSObject?(v12, &_s14CopresenceCore017AttachmentLedger_C10EncryptionVSgMd, &_s14CopresenceCore017AttachmentLedger_C10EncryptionVSgMR);
      }
    }

    else
    {
      outlined init with take of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v12, v15, type metadata accessor for AttachmentLedger_AttachmentEncryption);
      v40 = v83;
      v39 = v84;
      v36 = v77;
      v37 = v78;
    }

    v41 = &v15[*(v13 + 28)];
    v42 = v80;
    outlined init with copy of ActivitySession.DomainAssertionWrapper?(v41, v80, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMd, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMR);
    v43 = *(v36 + 48);
    v44 = v43(v42, 1, v37);
    v45 = v82;
    if (v44 == 1)
    {
      v46 = v42;
      v47 = v81;
      *v81 = xmmword_1AEE0C200;
      UnknownStorage.init()();
      outlined destroy of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v15, type metadata accessor for AttachmentLedger_AttachmentEncryption);
      if (v43(v46, 1, v37) != 1)
      {
        outlined destroy of NSObject?(v46, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMd, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMR);
      }
    }

    else
    {
      outlined destroy of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v15, type metadata accessor for AttachmentLedger_AttachmentEncryption);
      v48 = v42;
      v47 = v81;
      outlined init with take of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v48, v81, type metadata accessor for AttachmentLedger_EncryptionID);
    }

    v49 = *v47;
    v50 = v47[1];
    outlined copy of Data._Representation(*v47, v50);
    outlined destroy of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v47, type metadata accessor for AttachmentLedger_EncryptionID);
    UUID.init(data:)(v49, v50, v45);
    v51 = v79;
    outlined init with copy of ActivitySession.DomainAssertionWrapper?(v45, v79, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    if ((*(v40 + 48))(v51, 1, v39) == 1)
    {
      v52 = 0xE300000000000000;
      v53 = 7104878;
    }

    else
    {
      v54 = v75;
      (*(v40 + 32))(v75, v51, v39);
      (*(v40 + 16))(v74, v54, v39);
      v53 = String.init<A>(reflecting:)();
      v52 = v55;
      (*(v40 + 8))(v54, v39);
    }

    outlined destroy of NSObject?(v45, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    outlined destroy of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v73, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full);
    v56 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v53, v52, aBlock);

    v57 = v70;
    *(v70 + 14) = v56;
    v58 = v72;
    _os_log_impl(&dword_1AEB26000, v72, v71, "Attempting to update attachment's encryption material for participant: %llu to SKI: %s", v57, 0x16u);
    v59 = v69;
    __swift_destroy_boxed_opaque_existential_1Tm(v69);
    MEMORY[0x1B27120C0](v59, -1, -1);
    MEMORY[0x1B27120C0](v57, -1, -1);
  }

  else
  {
    outlined destroy of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v27, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full);

    outlined destroy of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v25, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full);
  }

  v60 = v87;
  v61 = v88;
  v62 = *(v88 + OBJC_IVAR____TtC14CopresenceCore10Attachment_queue);
  outlined init with copy of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v85, v87, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full);
  v63 = (*(v86 + 80) + 24) & ~*(v86 + 80);
  v64 = swift_allocObject();
  *(v64 + 16) = v61;
  outlined init with take of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v60, v64 + v63, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full);
  v65 = swift_allocObject();
  *(v65 + 16) = partial apply for closure #1 in Attachment.update(_:);
  *(v65 + 24) = v64;
  aBlock[4] = _sIg_Ieg_TRTA_0;
  aBlock[5] = v65;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_24;
  v66 = _Block_copy(aBlock);

  dispatch_sync(v62, v66);
  _Block_release(v66);
  LOBYTE(v62) = swift_isEscapingClosureAtFileLocation();

  if (v62)
  {
    __break(1u);
  }

  return result;
}

uint64_t UnencryptedAttachment.metadata.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for UnencryptedAttachment(0) + 20));
  v4 = *v3;
  v5 = v3[1];
  *a1 = *v3;
  a1[1] = v5;

  return outlined copy of Data?(v4, v5);
}

uint64_t UnencryptedAttachment.metadata.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = v1 + *(type metadata accessor for UnencryptedAttachment(0) + 20);
  result = outlined consume of Data?(*v4, *(v4 + 8));
  *v4 = v2;
  *(v4 + 8) = v3;
  return result;
}

uint64_t UnencryptedAttachment.mmcsMetadata.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for UnencryptedAttachment(0) + 24);

  return outlined assign with take of Attachment.MMCSMetadata(a1, v3);
}

uint64_t UnencryptedAttachment.encryptionSlots.getter()
{
  type metadata accessor for UnencryptedAttachment(0);
}

uint64_t UnencryptedAttachment.encryptionSlots.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for UnencryptedAttachment(0) + 28);

  *(v1 + v3) = a1;
  return result;
}

uint64_t UnencryptedAttachment.init(key:metadata:mmcsMetadata:encryptionSlots:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *a2;
  v10 = a2[1];
  v11 = type metadata accessor for SymmetricKey();
  (*(*(v11 - 8) + 32))(a5, a1, v11);
  v12 = type metadata accessor for UnencryptedAttachment(0);
  result = outlined init with take of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(a3, a5 + v12[6], type metadata accessor for Attachment.MMCSMetadata);
  v14 = (a5 + v12[5]);
  *v14 = v9;
  v14[1] = v10;
  *(a5 + v12[7]) = a4;
  return result;
}

Swift::Int Attachment.Errors.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x1B27111E0](a1);
  return Hasher._finalize()();
}

uint64_t Attachment.UpdatingBlob.data.getter()
{
  v1 = *(v0 + 8);
  outlined copy of Data._Representation(v1, *(v0 + 16));
  return v1;
}

uint64_t Attachment.UpdatingBlob.data.setter(uint64_t a1, uint64_t a2)
{
  result = outlined consume of Data._Representation(*(v2 + 8), *(v2 + 16));
  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t Attachment.UpdatingBlob.init(data:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = result;
  a3[2] = a2;
  return result;
}

uint64_t Attachment.UpdatingBlob.init(version:data:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t UnencryptedAttachment.key.getter@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = a1(0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, v2, v4);
}

uint64_t UnencryptedAttachment.key.setter(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = a2(0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v2, a1, v4);
}

uint64_t Attachment.MMCSMetadata.assetSkeleton.getter()
{
  v1 = v0 + *(type metadata accessor for Attachment.MMCSMetadata(0) + 20);
  v2 = *v1;
  outlined copy of Data._Representation(*v1, *(v1 + 8));
  return v2;
}

uint64_t Attachment.MMCSMetadata.assetSkeleton.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for Attachment.MMCSMetadata(0) + 20);
  result = outlined consume of Data._Representation(*v5, *(v5 + 8));
  *v5 = a1;
  *(v5 + 8) = a2;
  return result;
}

uint64_t Attachment.MMCSMetadata.status.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for Attachment.MMCSMetadata(0) + 24));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;

  return outlined copy of Attachment.MMCSMetadata.UploadStatus(v4, v5, v6);
}

__n128 Attachment.MMCSMetadata.status.setter(__n128 *a1)
{
  v5 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = v1 + *(type metadata accessor for Attachment.MMCSMetadata(0) + 24);
  outlined consume of Attachment.MMCSMetadata.UploadStatus(*v3, *(v3 + 8), *(v3 + 16));
  result = v5;
  *v3 = v5;
  *(v3 + 16) = v2;
  return result;
}

uint64_t Attachment.MMCSMetadata.ownerID.getter()
{
  v1 = *(v0 + *(type metadata accessor for Attachment.MMCSMetadata(0) + 28));

  return v1;
}

uint64_t Attachment.MMCSMetadata.ownerID.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Attachment.MMCSMetadata(0) + 28));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t Attachment.MMCSMetadata.storageLocation.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Attachment.MMCSMetadata(0) + 32);
  v4 = type metadata accessor for URL();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Attachment.MMCSMetadata.storageLocation.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Attachment.MMCSMetadata(0) + 32);
  v4 = type metadata accessor for URL();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Attachment.MMCSMetadata.fileHash.getter()
{
  v1 = v0 + *(type metadata accessor for Attachment.MMCSMetadata(0) + 36);
  v2 = *v1;
  outlined copy of Data._Representation(*v1, *(v1 + 8));
  return v2;
}

uint64_t Attachment.MMCSMetadata.fileHash.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for Attachment.MMCSMetadata(0) + 36);
  result = outlined consume of Data._Representation(*v5, *(v5 + 8));
  *v5 = a1;
  *(v5 + 8) = a2;
  return result;
}

uint64_t Attachment.MMCSMetadata.refSignature.getter()
{
  v1 = v0 + *(type metadata accessor for Attachment.MMCSMetadata(0) + 40);
  v2 = *v1;
  outlined copy of Data._Representation(*v1, *(v1 + 8));
  return v2;
}

uint64_t Attachment.MMCSMetadata.refSignature.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for Attachment.MMCSMetadata(0) + 40);
  result = outlined consume of Data._Representation(*v5, *(v5 + 8));
  *v5 = a1;
  *(v5 + 8) = a2;
  return result;
}

uint64_t Attachment.Metadata.developerMetadata.getter()
{
  v1 = *v0;
  outlined copy of Data?(*v0, *(v0 + 8));
  return v1;
}

uint64_t Attachment.Metadata.developerMetadata.setter(uint64_t a1, uint64_t a2)
{
  result = outlined consume of Data?(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
  return result;
}

double Attachment.Metadata.init()@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_1AEE07B50;
  return result;
}

uint64_t Attachment.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC14CopresenceCore10Attachment_id;
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Attachment.key.getter(uint64_t a1)
{
  v1[2] = a1;
  type metadata accessor for UnencryptedAttachment(0);
  v2 = swift_task_alloc();
  v1[3] = v2;
  v3 = swift_task_alloc();
  v1[4] = v3;
  *v3 = v1;
  v3[1] = Attachment.key.getter;

  return Attachment.waitForDecryption()(v2);
}

uint64_t Attachment.key.getter()
{
  *(*v1 + 40) = v0;

  if (v0)
  {
    v2 = Attachment.key.getter;
  }

  else
  {
    v2 = Attachment.key.getter;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  v1 = v0[2];
  v2 = v0[3];
  v3 = type metadata accessor for SymmetricKey();
  (*(*(v3 - 8) + 16))(v1, v2, v3);
  outlined destroy of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v2, type metadata accessor for UnencryptedAttachment);

  v4 = v0[1];

  return v4();
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t Attachment.waitForDecryption()(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = type metadata accessor for Attachment.EncryptedAttachmentStatus(0);
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore10AttachmentC09EncryptedC6StatusOSgMd, &_s14CopresenceCore10AttachmentC09EncryptedC6StatusOSgMR);
  v2[12] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherVyAA19CurrentValueSubjectCy14CopresenceCore10AttachmentC09EncryptedI6StatusOs5NeverOGGMd, &_s7Combine14AsyncPublisherVyAA19CurrentValueSubjectCy14CopresenceCore10AttachmentC09EncryptedI6StatusOs5NeverOGGMR);
  v2[13] = v4;
  v2[14] = *(v4 - 8);
  v2[15] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherV8IteratorVyAA19CurrentValueSubjectCy14CopresenceCore10AttachmentC09EncryptedJ6StatusOs5NeverOG_GMd, &_s7Combine14AsyncPublisherV8IteratorVyAA19CurrentValueSubjectCy14CopresenceCore10AttachmentC09EncryptedJ6StatusOs5NeverOG_GMR);
  v2[16] = v5;
  v2[17] = *(v5 - 8);
  v2[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](Attachment.waitForDecryption(), 0, 0);
}

uint64_t Attachment.waitForDecryption()()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[13];
  v4 = v0[8];
  v5 = OBJC_IVAR____TtC14CopresenceCore10Attachment__status;
  swift_beginAccess();
  v0[5] = *(v4 + v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCy14CopresenceCore10AttachmentC09EncryptedG6StatusOs5NeverOGMd, &_s7Combine19CurrentValueSubjectCy14CopresenceCore10AttachmentC09EncryptedG6StatusOs5NeverOGMR);
  v7 = lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type CurrentValueSubject<Attachment.EncryptedAttachmentStatus, Never> and conformance CurrentValueSubject<A, B>, &_s7Combine19CurrentValueSubjectCy14CopresenceCore10AttachmentC09EncryptedG6StatusOs5NeverOGMd, &_s7Combine19CurrentValueSubjectCy14CopresenceCore10AttachmentC09EncryptedG6StatusOs5NeverOGMR, MEMORY[0x1E695BFB0]);
  MEMORY[0x1B270F520](v6, v7);
  AsyncPublisher.makeAsyncIterator()();
  (*(v2 + 8))(v1, v3);
  v8 = lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type AsyncPublisher<CurrentValueSubject<Attachment.EncryptedAttachmentStatus, Never>>.Iterator and conformance AsyncPublisher<A>.Iterator, &_s7Combine14AsyncPublisherV8IteratorVyAA19CurrentValueSubjectCy14CopresenceCore10AttachmentC09EncryptedJ6StatusOs5NeverOG_GMd, &_s7Combine14AsyncPublisherV8IteratorVyAA19CurrentValueSubjectCy14CopresenceCore10AttachmentC09EncryptedJ6StatusOs5NeverOG_GMR, MEMORY[0x1E695BF38]);
  v9 = swift_task_alloc();
  v0[19] = v9;
  *v9 = v0;
  v9[1] = Attachment.waitForDecryption();
  v10 = v0[16];
  v11 = v0[12];

  return MEMORY[0x1EEE6D8C8](v11, v10, v8);
}

{
  *(*v1 + 160) = v0;

  if (v0)
  {
    v2 = Attachment.waitForDecryption();
  }

  else
  {
    v2 = Attachment.waitForDecryption();
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  return MEMORY[0x1EEE6DFA0](Attachment.waitForDecryption(), 0, 0);
}

{
  v1 = v0[12];
  if ((*(v0[10] + 48))(v1, 1, v0[9]) == 1)
  {
    (*(v0[17] + 8))(v0[18], v0[16]);
    lazy protocol witness table accessor for type Attachment.Errors and conformance Attachment.Errors();
    swift_allocError();
    *v2 = 6;
    swift_willThrow();
    goto LABEL_10;
  }

  outlined init with take of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v1, v0[11], type metadata accessor for Attachment.EncryptedAttachmentStatus);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v4 = v0[11];
      v5 = v0[7];
      (*(v0[17] + 8))(v0[18], v0[16]);
      outlined init with take of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v4, v5, type metadata accessor for UnencryptedAttachment);

      v6 = v0[1];
LABEL_11:

      return v6();
    }

    v12 = v0[17];
    v11 = v0[18];
    v13 = v0[16];
    v14 = v0[11];
    lazy protocol witness table accessor for type Attachment.Errors and conformance Attachment.Errors();
    swift_allocError();
    *v15 = 5;
    swift_willThrow();
    (*(v12 + 8))(v11, v13);
    outlined destroy of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v14, type metadata accessor for Attachment.EncryptedAttachmentStatus);
LABEL_10:

    v6 = v0[1];
    goto LABEL_11;
  }

  outlined destroy of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v0[11], type metadata accessor for AttachmentLedger_AttachmentMetadata);
  v7 = lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type AsyncPublisher<CurrentValueSubject<Attachment.EncryptedAttachmentStatus, Never>>.Iterator and conformance AsyncPublisher<A>.Iterator, &_s7Combine14AsyncPublisherV8IteratorVyAA19CurrentValueSubjectCy14CopresenceCore10AttachmentC09EncryptedJ6StatusOs5NeverOG_GMd, &_s7Combine14AsyncPublisherV8IteratorVyAA19CurrentValueSubjectCy14CopresenceCore10AttachmentC09EncryptedJ6StatusOs5NeverOG_GMR, MEMORY[0x1E695BF38]);
  v8 = swift_task_alloc();
  v0[19] = v8;
  *v8 = v0;
  v8[1] = Attachment.waitForDecryption();
  v9 = v0[16];
  v10 = v0[12];

  return MEMORY[0x1EEE6D8C8](v10, v9, v7);
}

{
  *(v0 + 48) = *(v0 + 160);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v1 = MEMORY[0x1E69E73E0];
  v2 = swift_dynamicCast();
  v3 = MEMORY[0x1E69E7410];

  return MEMORY[0x1EEE6C240](v2, v1, v3);
}

uint64_t Attachment.mmcsMetadata.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScs12ContinuationV15BufferingPolicyOy14CopresenceCore10AttachmentC12MMCSMetadataVs5Error_p__GMd, &_sScs12ContinuationV15BufferingPolicyOy14CopresenceCore10AttachmentC12MMCSMetadataVs5Error_p__GMR);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v5 - v2;
  type metadata accessor for Attachment.MMCSMetadata(0);
  (*(v1 + 104))(v3, *MEMORY[0x1E69E8790], v0);
  return AsyncThrowingStream.init<>(_:bufferingPolicy:_:)();
}

uint64_t closure #1 in Attachment.mmcsMetadata.getter(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScs12ContinuationVy14CopresenceCore10AttachmentC12MMCSMetadataVs5Error_p_GMd, &_sScs12ContinuationVy14CopresenceCore10AttachmentC12MMCSMetadataVs5Error_p_GMR);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v15 - v9;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  (*(v5 + 16))(v7, a1, v4);
  v12 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v13 = swift_allocObject();
  *(v13 + 2) = 0;
  *(v13 + 3) = 0;
  *(v13 + 4) = a2;
  (*(v5 + 32))(&v13[v12], v7, v4);

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v10, &async function pointer to partial apply for closure #1 in closure #1 in Attachment.mmcsMetadata.getter, v13);
}

uint64_t closure #1 in closure #1 in Attachment.mmcsMetadata.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[9] = a4;
  v5[10] = a5;
  type metadata accessor for Attachment.MMCSMetadata(0);
  v5[11] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScs12ContinuationV11YieldResultOy14CopresenceCore10AttachmentC12MMCSMetadataVs5Error_p__GMd, &_sScs12ContinuationV11YieldResultOy14CopresenceCore10AttachmentC12MMCSMetadataVs5Error_p__GMR);
  v5[12] = v6;
  v5[13] = *(v6 - 8);
  v5[14] = swift_task_alloc();
  v5[15] = type metadata accessor for UnencryptedAttachment(0);
  v5[16] = swift_task_alloc();
  v7 = type metadata accessor for Attachment.EncryptedAttachmentStatus(0);
  v5[17] = v7;
  v5[18] = *(v7 - 8);
  v5[19] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore10AttachmentC09EncryptedC6StatusOSgMd, &_s14CopresenceCore10AttachmentC09EncryptedC6StatusOSgMR);
  v5[20] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherVyAA19CurrentValueSubjectCy14CopresenceCore10AttachmentC09EncryptedI6StatusOs5NeverOGGMd, &_s7Combine14AsyncPublisherVyAA19CurrentValueSubjectCy14CopresenceCore10AttachmentC09EncryptedI6StatusOs5NeverOGGMR);
  v5[21] = v8;
  v5[22] = *(v8 - 8);
  v5[23] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherV8IteratorVyAA19CurrentValueSubjectCy14CopresenceCore10AttachmentC09EncryptedJ6StatusOs5NeverOG_GMd, &_s7Combine14AsyncPublisherV8IteratorVyAA19CurrentValueSubjectCy14CopresenceCore10AttachmentC09EncryptedJ6StatusOs5NeverOG_GMR);
  v5[24] = v9;
  v5[25] = *(v9 - 8);
  v5[26] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in Attachment.mmcsMetadata.getter, 0, 0);
}

uint64_t closure #1 in closure #1 in Attachment.mmcsMetadata.getter()
{
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[21];
  v4 = v0[9];
  v5 = OBJC_IVAR____TtC14CopresenceCore10Attachment__status;
  swift_beginAccess();
  v0[5] = *(v4 + v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCy14CopresenceCore10AttachmentC09EncryptedG6StatusOs5NeverOGMd, &_s7Combine19CurrentValueSubjectCy14CopresenceCore10AttachmentC09EncryptedG6StatusOs5NeverOGMR);
  v7 = lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type CurrentValueSubject<Attachment.EncryptedAttachmentStatus, Never> and conformance CurrentValueSubject<A, B>, &_s7Combine19CurrentValueSubjectCy14CopresenceCore10AttachmentC09EncryptedG6StatusOs5NeverOGMd, &_s7Combine19CurrentValueSubjectCy14CopresenceCore10AttachmentC09EncryptedG6StatusOs5NeverOGMR, MEMORY[0x1E695BFB0]);
  MEMORY[0x1B270F520](v6, v7);
  AsyncPublisher.makeAsyncIterator()();
  (*(v2 + 8))(v1, v3);
  v8 = lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type AsyncPublisher<CurrentValueSubject<Attachment.EncryptedAttachmentStatus, Never>>.Iterator and conformance AsyncPublisher<A>.Iterator, &_s7Combine14AsyncPublisherV8IteratorVyAA19CurrentValueSubjectCy14CopresenceCore10AttachmentC09EncryptedJ6StatusOs5NeverOG_GMd, &_s7Combine14AsyncPublisherV8IteratorVyAA19CurrentValueSubjectCy14CopresenceCore10AttachmentC09EncryptedJ6StatusOs5NeverOG_GMR, MEMORY[0x1E695BF38]);
  v9 = swift_task_alloc();
  v0[27] = v9;
  *v9 = v0;
  v9[1] = closure #1 in closure #1 in Attachment.mmcsMetadata.getter;
  v10 = v0[24];
  v11 = v0[20];

  return MEMORY[0x1EEE6D8C8](v11, v10, v8);
}

{
  *(*v1 + 224) = v0;

  if (v0)
  {
    v2 = closure #1 in closure #1 in Attachment.mmcsMetadata.getter;
  }

  else
  {
    v2 = closure #1 in closure #1 in Attachment.mmcsMetadata.getter;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in Attachment.mmcsMetadata.getter, 0, 0);
}

{
  v1 = v0[20];
  if ((*(v0[18] + 48))(v1, 1, v0[17]) == 1)
  {
    (*(v0[25] + 8))(v0[26], v0[24]);
    v0[7] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScs12ContinuationVy14CopresenceCore10AttachmentC12MMCSMetadataVs5Error_p_GMd, &_sScs12ContinuationVy14CopresenceCore10AttachmentC12MMCSMetadataVs5Error_p_GMR);
LABEL_11:
    AsyncThrowingStream.Continuation.finish(throwing:)();

    v21 = v0[1];

    return v21();
  }

  outlined init with take of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v1, v0[19], type metadata accessor for Attachment.EncryptedAttachmentStatus);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      v16 = v0[25];
      v15 = v0[26];
      v17 = v0[24];
      v18 = v0[19];
      lazy protocol witness table accessor for type Attachment.Errors and conformance Attachment.Errors();
      v19 = swift_allocError();
      *v20 = 5;
      swift_willThrow();
      (*(v16 + 8))(v15, v17);
      outlined destroy of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v18, type metadata accessor for Attachment.EncryptedAttachmentStatus);
      v0[8] = v19;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sScs12ContinuationVy14CopresenceCore10AttachmentC12MMCSMetadataVs5Error_p_GMd, &_sScs12ContinuationVy14CopresenceCore10AttachmentC12MMCSMetadataVs5Error_p_GMR);
      goto LABEL_11;
    }

    v4 = v0[15];
    v3 = v0[16];
    v6 = v0[13];
    v5 = v0[14];
    v8 = v0[11];
    v7 = v0[12];
    outlined init with take of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v0[19], v3, type metadata accessor for UnencryptedAttachment);
    outlined init with copy of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v3 + *(v4 + 24), v8, type metadata accessor for Attachment.MMCSMetadata);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScs12ContinuationVy14CopresenceCore10AttachmentC12MMCSMetadataVs5Error_p_GMd, &_sScs12ContinuationVy14CopresenceCore10AttachmentC12MMCSMetadataVs5Error_p_GMR);
    AsyncThrowingStream.Continuation.yield(_:)();
    (*(v6 + 8))(v5, v7);
    v9 = type metadata accessor for UnencryptedAttachment;
    v10 = v3;
  }

  else
  {
    v10 = v0[19];
    v9 = type metadata accessor for AttachmentLedger_AttachmentMetadata;
  }

  outlined destroy of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v10, v9);
  v11 = lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type AsyncPublisher<CurrentValueSubject<Attachment.EncryptedAttachmentStatus, Never>>.Iterator and conformance AsyncPublisher<A>.Iterator, &_s7Combine14AsyncPublisherV8IteratorVyAA19CurrentValueSubjectCy14CopresenceCore10AttachmentC09EncryptedJ6StatusOs5NeverOG_GMd, &_s7Combine14AsyncPublisherV8IteratorVyAA19CurrentValueSubjectCy14CopresenceCore10AttachmentC09EncryptedJ6StatusOs5NeverOG_GMR, MEMORY[0x1E695BF38]);
  v12 = swift_task_alloc();
  v0[27] = v12;
  *v12 = v0;
  v12[1] = closure #1 in closure #1 in Attachment.mmcsMetadata.getter;
  v13 = v0[24];
  v14 = v0[20];

  return MEMORY[0x1EEE6D8C8](v14, v13, v11);
}

{
  *(v0 + 48) = *(v0 + 224);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v1 = MEMORY[0x1E69E73E0];
  v2 = swift_dynamicCast();
  v3 = MEMORY[0x1E69E7410];

  return MEMORY[0x1EEE6C240](v2, v1, v3);
}

uint64_t Attachment.metadata.getter(uint64_t a1)
{
  v1[2] = a1;
  v1[3] = type metadata accessor for UnencryptedAttachment(0);
  v2 = swift_task_alloc();
  v1[4] = v2;
  v3 = swift_task_alloc();
  v1[5] = v3;
  *v3 = v1;
  v3[1] = Attachment.metadata.getter;

  return Attachment.waitForDecryption()(v2);
}

uint64_t Attachment.metadata.getter()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = ConversationManagerClient.advertiseGroupActivity(_:);
  }

  else
  {
    v2 = Attachment.metadata.getter;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  v1 = v0[4];
  v2 = v0[2];
  v3 = (v1 + *(v0[3] + 20));
  v4 = *v3;
  v5 = v3[1];
  outlined copy of Data?(*v3, v5);
  outlined destroy of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v1, type metadata accessor for UnencryptedAttachment);
  *v2 = v4;
  v2[1] = v5;

  v6 = v0[1];

  return v6();
}

uint64_t closure #1 in Attachment.unencryptedAttachment.getter@<X0>(uint64_t a2@<X8>)
{
  v3 = type metadata accessor for Attachment.EncryptedAttachmentStatus(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();

  CurrentValueSubject.value.getter();

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v7 = type metadata accessor for AttachmentLedger_AttachmentMetadata;
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      return outlined init with take of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v5, a2, type metadata accessor for UnencryptedAttachment);
    }

    v7 = type metadata accessor for Attachment.EncryptedAttachmentStatus;
  }

  outlined destroy of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v5, v7);
  lazy protocol witness table accessor for type Attachment.Errors and conformance Attachment.Errors();
  swift_allocError();
  *v9 = 3;
  return swift_willThrow();
}

uint64_t Attachment.status.getter()
{
  swift_beginAccess();

  CurrentValueSubject.value.getter();
}

uint64_t key path getter for Attachment.encryptionSlots : Attachment@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v4;
  return result;
}

uint64_t key path setter for Attachment.encryptionSlots : Attachment(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t Attachment.encryptionSlots.setter(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}