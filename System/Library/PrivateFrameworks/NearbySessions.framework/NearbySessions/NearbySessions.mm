uint64_t type metadata accessor for NearbyGroup(uint64_t a1)
{
  result = type metadata singleton initialization cache for NearbyGroup;
  if (!type metadata singleton initialization cache for NearbyGroup)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for Invitation_HostConnectionInfo(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id NearbyGroupConnectionInfo.init(id:endpoint:localMember:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();
  v10 = OBJC_IVAR____TtC14NearbySessions25NearbyGroupConnectionInfo_id;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  (*(v12 + 16))(&v4[v10], a1, v11);
  *&v4[OBJC_IVAR____TtC14NearbySessions25NearbyGroupConnectionInfo_endpoint] = a2;
  v13 = &v4[OBJC_IVAR____TtC14NearbySessions25NearbyGroupConnectionInfo_localMember];
  *v13 = a3;
  *(v13 + 1) = a4;
  v16.receiver = v4;
  v16.super_class = ObjectType;
  v14 = objc_msgSendSuper2(&v16, sel_init);
  (*(v12 + 8))(a1, v11);
  return v14;
}

id @objc NearbyGroupCreationRequest.description.getter(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  v5 = a3();
  v7 = v6;

  v8 = MEMORY[0x25F86F000](v5, v7);

  return v8;
}

uint64_t NearbyGroupConnectionInfo.description.getter()
{
  v1 = v0;
  swift_getObjectType();
  _StringGuts.grow(_:)(42);

  v2 = _typeName(_:qualified:)();
  MEMORY[0x25F86F070](v2);

  MEMORY[0x25F86F070](0x203A6469283ELL, 0xE600000000000000);
  type metadata accessor for UUID();
  _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
  v3 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x25F86F070](v3);

  MEMORY[0x25F86F070](0x696F70646E65202CLL, 0xEC000000203A746ELL);
  v4 = [*(v0 + OBJC_IVAR____TtC14NearbySessions25NearbyGroupConnectionInfo_endpoint) description];
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  MEMORY[0x25F86F070](v5, v7);

  MEMORY[0x25F86F070](0x4D6C61636F6C202CLL, 0xEF203A7265626D65);
  MEMORY[0x25F86F070](*(v1 + OBJC_IVAR____TtC14NearbySessions25NearbyGroupConnectionInfo_localMember), *(v1 + OBJC_IVAR____TtC14NearbySessions25NearbyGroupConnectionInfo_localMember + 8));
  return 60;
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

uint64_t _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_1(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_2(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

Swift::Void __swiftcall NearbyGroupConnectionInfo.encode(with:)(NSCoder with)
{
  v2 = v1;
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v5 = MEMORY[0x25F86F000](25705, 0xE200000000000000);
  [(objc_class *)with.super.isa encodeObject:isa forKey:v5];

  v6 = *(v2 + OBJC_IVAR____TtC14NearbySessions25NearbyGroupConnectionInfo_endpoint);
  v7 = MEMORY[0x25F86F000](0x746E696F70646E65, 0xE800000000000000);
  [(objc_class *)with.super.isa encodeObject:v6 forKey:v7];

  v8 = MEMORY[0x25F86F000](*(v2 + OBJC_IVAR____TtC14NearbySessions25NearbyGroupConnectionInfo_localMember), *(v2 + OBJC_IVAR____TtC14NearbySessions25NearbyGroupConnectionInfo_localMember + 8));
  v9 = MEMORY[0x25F86F000](0x6D654D6C61636F6CLL, 0xEB00000000726562);
  [(objc_class *)with.super.isa encodeObject:v8 forKey:v9];
}

void *closure #1 in closure #1 in closure #1 in NearbyInvitationsController.createGroup(with:)(void *result, id a2)
{
  if (result)
  {
    v2 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy14NearbySessions0A19GroupConnectionInfoCs5Error_pGMd, &_sScCy14NearbySessions0A19GroupConnectionInfoCs5Error_pGMR);
    return CheckedContinuation.resume(returning:)();
  }

  else if (a2)
  {
    v3 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy14NearbySessions0A19GroupConnectionInfoCs5Error_pGMd, &_sScCy14NearbySessions0A19GroupConnectionInfoCs5Error_pGMR);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *partial apply for closure #1 in closure #1 in closure #1 in NearbyInvitationsController.createGroup(with:)(void *a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy14NearbySessions0A19GroupConnectionInfoCs5Error_pGMd, &_sScCy14NearbySessions0A19GroupConnectionInfoCs5Error_pGMR);

  return closure #1 in closure #1 in closure #1 in NearbyInvitationsController.createGroup(with:)(a1, a2);
}

void thunk for @escaping @callee_guaranteed (@guaranteed NearbyGroupConnectionInfo?, @guaranteed Error?) -> ()(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

uint64_t specialized NearbyGroup.init(id:endpoint:)(uint64_t a1, uint64_t a2)
{
  v3[16] = a2;
  v3[17] = v2;
  v3[15] = a1;
  v3[18] = *v2;
  v4 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v3[19] = v4;
  v3[20] = *(v4 - 8);
  v3[21] = swift_task_alloc();
  v3[22] = type metadata accessor for OS_dispatch_queue.Attributes();
  v3[23] = swift_task_alloc();
  type metadata accessor for DispatchQoS();
  v3[24] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy14NearbySessions0C5GroupC5StateOGMd, &_s7Combine9PublishedVy14NearbySessions0C5GroupC5StateOGMR);
  v3[25] = v5;
  v3[26] = *(v5 - 8);
  v3[27] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVyShy14NearbySessions0C5GroupC6MemberVGGMd, &_s7Combine9PublishedVyShy14NearbySessions0C5GroupC6MemberVGGMR);
  v3[28] = v6;
  v3[29] = *(v6 - 8);
  v3[30] = swift_task_alloc();

  return MEMORY[0x2822009F8](specialized NearbyGroup.init(id:endpoint:), 0, 0);
}

uint64_t specialized NearbyGroup.init(id:endpoint:)()
{
  v1 = v0;
  v3 = v0[29];
  v2 = v0[30];
  v4 = v0[27];
  v5 = v0[28];
  v6 = v0[26];
  v36 = v0[20];
  v37 = v0[21];
  v38 = v0[19];
  v33 = v0[25];
  v7 = v0[17];
  v34 = v0[16];
  v32 = v0[15];
  v8 = OBJC_IVAR____TtC14NearbySessions11NearbyGroup__members;
  v0[11] = MEMORY[0x277D84FA0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sShy14NearbySessions0A5GroupC6MemberVGMd, &_sShy14NearbySessions0A5GroupC6MemberVGMR);
  Published.init(initialValue:)();
  (*(v3 + 32))(v7 + v8, v2, v5);
  v9 = OBJC_IVAR____TtC14NearbySessions11NearbyGroup__state;
  v1[12] = 0;
  Published.init(initialValue:)();
  (*(v6 + 32))(v7 + v9, v4, v33);
  v10 = (v7 + OBJC_IVAR____TtC14NearbySessions11NearbyGroup_localMemberHandle);
  *v10 = 0;
  v10[1] = 0;
  v11 = OBJC_IVAR____TtC14NearbySessions11NearbyGroup_id;
  v12 = type metadata accessor for UUID();
  v1[31] = v12;
  v13 = *(v12 - 8);
  v1[32] = v13;
  (*(v13 + 16))(v7 + v11, v32, v12);
  swift_beginAccess();
  (*(v3 + 8))(v7 + v8, v5);
  v1[13] = MEMORY[0x277D84FA0];
  Published.init(initialValue:)();
  swift_endAccess();
  *(v7 + OBJC_IVAR____TtC14NearbySessions11NearbyGroup_endpoint) = v34;
  type metadata accessor for OS_dispatch_queue();
  v35 = v34;
  _typeName(_:qualified:)();
  MEMORY[0x25F86F070](45, 0xE100000000000000);
  v14 = UUID.uuidString.getter();
  MEMORY[0x25F86F070](v14);

  static DispatchQoS.unspecified.getter();
  v1[14] = MEMORY[0x277D84F90];
  _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR, MEMORY[0x277D83970]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v36 + 104))(v37, *MEMORY[0x277D85260], v38);
  *(v7 + OBJC_IVAR____TtC14NearbySessions11NearbyGroup_queue) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  type metadata accessor for NearbyGroupClientConnection(0);
  v15 = v35;
  v16 = XPCClient.__allocating_init(listenerEndpoint:)();
  *(v7 + OBJC_IVAR____TtC14NearbySessions11NearbyGroup_connection) = v16;
  v17 = swift_allocObject();
  swift_weakInit();
  v18 = &v16[direct field offset for NearbyGroupClientConnection.serverDisconnectedCallback];
  swift_beginAccess();
  v19 = *v18;
  v20 = v18[1];
  *v18 = partial apply for closure #1 in NearbyGroup.init(id:endpoint:);
  v18[1] = v17;
  v21 = v16;

  _sShy14NearbySessions0A11GroupMemberCGIegg_SgWOe_0(v19, v20);

  v22 = *(v7 + OBJC_IVAR____TtC14NearbySessions11NearbyGroup_connection);
  v23 = swift_allocObject();
  swift_weakInit();
  v24 = v22;

  v25 = &v24[direct field offset for NearbyGroupClientConnection.setMembersCallback];
  swift_beginAccess();
  v26 = *v25;
  v27 = v25[1];
  *v25 = partial apply for closure #2 in NearbyGroup.init(id:endpoint:);
  v25[1] = v23;

  _sShy14NearbySessions0A11GroupMemberCGIegg_SgWOe_0(v26, v27);

  v28 = swift_task_alloc();
  v1[33] = v28;
  *v28 = v1;
  v28[1] = specialized NearbyGroup.init(id:endpoint:);
  v29 = v1[17];
  v30 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v28, 0, 0, 0xD000000000000012, 0x800000025B830910, partial apply for closure #3 in NearbyGroup.init(id:endpoint:), v29, v30);
}

{
  *(*v1 + 272) = v0;

  if (v0)
  {
    v2 = specialized NearbyGroup.init(id:endpoint:);
  }

  else
  {
    v2 = specialized NearbyGroup.init(id:endpoint:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  (*(v0[32] + 8))(v0[15], v0[31]);

  v1 = v0[1];
  v2 = v0[17];

  return v1(v2);
}

{
  v1 = v0[31];
  v2 = v0[32];
  v3 = v0[15];

  (*(v2 + 8))(v3, v1);

  v4 = v0[1];

  return v4();
}

uint64_t sub_25B7C6C28()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t _sShy14NearbySessions0A11GroupMemberCGIegg_SgWOe_0(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

unint64_t type metadata accessor for OS_dispatch_queue()
{
  result = lazy cache variable for type metadata for OS_dispatch_queue;
  if (!lazy cache variable for type metadata for OS_dispatch_queue)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for OS_dispatch_queue);
  }

  return result;
}

uint64_t type metadata accessor for NearbyGroupClientConnection(uint64_t a1)
{
  result = type metadata singleton initialization cache for NearbyGroupClientConnection;
  if (!type metadata singleton initialization cache for NearbyGroupClientConnection)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id @objc NearbyGroupClientConnection.init()(char *a1)
{
  ObjectType = swift_getObjectType();
  v3 = &a1[direct field offset for NearbyGroupClientConnection.serverDisconnectedCallback];
  *v3 = 0;
  *(v3 + 1) = 0;
  v4 = &a1[direct field offset for NearbyGroupClientConnection.setMembersCallback];
  *v4 = 0;
  *(v4 + 1) = 0;
  v6.receiver = a1;
  v6.super_class = ObjectType;
  return objc_msgSendSuper2(&v6, sel_init);
}

uint64_t specialized NearbyGroup.__allocating_init(id:members:controller:)()
{
  *(*v1 + 160) = v0;

  if (v0)
  {
    v2 = specialized NearbyGroup.__allocating_init(id:members:controller:);
  }

  else
  {

    v2 = specialized NearbyGroup.__allocating_init(id:members:controller:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v1 = *(v0 + 104);
  v2 = *(v0 + 88);
  v3 = *(v0 + 72);

  v4 = *(v0 + 32);
  *(v0 + 168) = v4;
  v5 = OBJC_IVAR____TtC14NearbySessions25NearbyGroupConnectionInfo_id;
  v6 = v4;
  v1(v2, &v4[v5], v3);
  v7 = *&v6[OBJC_IVAR____TtC14NearbySessions25NearbyGroupConnectionInfo_endpoint];
  *(v0 + 176) = v7;
  *(v0 + 184) = type metadata accessor for NearbyGroup(0);
  swift_allocObject();
  v8 = v7;
  v9 = swift_task_alloc();
  *(v0 + 192) = v9;
  *v9 = v0;
  v9[1] = specialized NearbyGroup.__allocating_init(id:members:controller:);
  v10 = *(v0 + 88);

  return specialized NearbyGroup.init(id:endpoint:)(v10, v8);
}

{
  receiver = v0[6].receiver;
  super_class = v0[4].super_class;
  v3 = v0[5].receiver;
  v5 = v0[3].super_class;
  v4 = v0[4].receiver;
  v6 = v0[3].receiver;
  v7 = *(v3 + 2);
  v0[6].super_class = v7;
  v0[7].receiver = ((v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000);
  (v7)(receiver, v6, super_class);
  v8 = type metadata accessor for NearbyGroupCreationRequest(0);
  v9 = objc_allocWithZone(v8);
  (v7)(&v9[OBJC_IVAR____TtC14NearbySessions26NearbyGroupCreationRequest_id], receiver, super_class);
  *&v9[OBJC_IVAR____TtC14NearbySessions26NearbyGroupCreationRequest_members] = v5;
  v0[1].receiver = v9;
  v0[1].super_class = v8;
  v10 = objc_msgSendSuper2(v0 + 1, sel_init);
  v0[7].super_class = v10;
  v11 = *(v3 + 1);
  v0[8].receiver = v11;
  v0[8].super_class = ((v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
  v11(receiver, super_class);
  v12 = swift_task_alloc();
  v0[9].receiver = v12;
  *(v12 + 16) = v4;
  *(v12 + 24) = v10;
  v13 = swift_task_alloc();
  v0[9].super_class = v13;
  v14 = type metadata accessor for NearbyGroupConnectionInfo(0);
  *v13 = v0;
  *(v13 + 1) = specialized NearbyGroup.__allocating_init(id:members:controller:);

  return MEMORY[0x2822008A0](&v0[2], 0, 0, 0xD000000000000012, 0x800000025B830470, partial apply for closure #1 in NearbyInvitationsController.createGroup(with:), v12, v14);
}

{
  v1 = *(v0 + 64);

  v2 = *(v1 + OBJC_IVAR____TtC14NearbySessions27NearbyInvitationsController_groupTable);
  *(v0 + 216) = v2;
  v3 = *(*v2 + 152);

  v8 = (v3 + *v3);
  v4 = swift_task_alloc();
  *(v0 + 224) = v4;
  *v4 = v0;
  v4[1] = specialized NearbyGroup.__allocating_init(id:members:controller:);
  v5 = *(v0 + 200);
  v6 = *(v0 + 48);

  return v8(v6, &async function pointer to partial apply for closure #1 in NearbyGroup.init(id:members:controller:), v5);
}

{
  v1 = v0[21];
  v2 = v0[16];
  v3 = v0[9];
  v4 = v0[6];

  v2(v4, v3);

  v5 = v0[1];

  return v5();
}

{
  v1 = *(v0 + 128);
  v2 = *(v0 + 72);
  v3 = *(v0 + 48);

  v1(v3, v2);

  v4 = *(v0 + 8);

  return v4();
}

{
  v18 = v0;
  if (*(v0 + 232) == *(v0 + 200))
  {
    v14 = *(v0 + 168);
    (*(v0 + 128))(*(v0 + 48), *(v0 + 72));

    v15 = *(v0 + 8);
    v16 = *(v0 + 200);

    return v15(v16);
  }

  else
  {
    if (one-time initialization token for group != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    __swift_project_value_buffer(v1, static Log.group);

    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v2, v3))
    {
      v4 = *(v0 + 232);
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v17 = v6;
      *v5 = 136315138;
      *(v0 + 40) = v4;

      v7 = String.init<A>(reflecting:)();
      v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v8, &v17);

      *(v5 + 4) = v9;
      _os_log_impl(&dword_25B7C4000, v2, v3, "Group already exists: %s", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v6);
      MEMORY[0x25F86FE20](v6, -1, -1);
      MEMORY[0x25F86FE20](v5, -1, -1);
    }

    v10 = *(v0 + 168);
    lazy protocol witness table accessor for type NearbyGroup.Errors and conformance NearbyGroup.Errors();
    swift_allocError();
    *v11 = 2;
    swift_willThrow();

    (*(v0 + 128))(*(v0 + 48), *(v0 + 72));

    v12 = *(v0 + 8);

    return v12();
  }
}

{
  v1 = *(v0 + 168);

  (*(v0 + 128))(*(v0 + 48), *(v0 + 72));

  v2 = *(v0 + 8);

  return v2();
}

uint64_t lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t closure #3 in NearbyGroup.init(id:endpoint:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v27 - v6;
  if (one-time initialization token for group != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Log.group);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v28 = v4;
    v12 = v11;
    v27 = swift_slowAlloc();
    aBlock[0] = v27;
    *v12 = 136315138;
    v13 = NearbyGroup.description.getter();
    v15 = v7;
    v16 = a1;
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, aBlock);

    *(v12 + 4) = v17;
    a1 = v16;
    v7 = v15;
    _os_log_impl(&dword_25B7C4000, v9, v10, "%s Attempting to join", v12, 0xCu);
    v18 = v27;
    __swift_destroy_boxed_opaque_existential_0(v27);
    MEMORY[0x25F86FE20](v18, -1, -1);
    v19 = v12;
    v4 = v28;
    MEMORY[0x25F86FE20](v19, -1, -1);
  }

  v20 = XPCClient.queue.getter();
  (*(v5 + 16))(v7, a1, v4);
  v21 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = a2;
  (*(v5 + 32))(v22 + v21, v7, v4);
  v23 = swift_allocObject();
  *(v23 + 16) = partial apply for closure #1 in closure #3 in NearbyGroup.init(id:endpoint:);
  *(v23 + 24) = v22;
  aBlock[4] = thunk for @callee_guaranteed () -> ()partial apply;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_132_0;
  v24 = _Block_copy(aBlock);

  dispatch_sync(v20, v24);

  _Block_release(v24);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t NearbyGroup.description.getter()
{
  _StringGuts.grow(_:)(88);
  MEMORY[0x25F86F070](0xD000000000000012, 0x800000025B830860);
  v14 = v0;
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x25F86F070](0x203A6469202CLL, 0xE600000000000000);
  type metadata accessor for UUID();
  _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
  v1 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x25F86F070](v1);

  MEMORY[0x25F86F070](0x3A6574617473202CLL, 0xE900000000000020);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  _print_unlocked<A, B>(_:_:)();
  outlined consume of NearbyGroup.State(v0);
  MEMORY[0x25F86F070](0x696F70646E65202CLL, 0xEC000000203A746ELL);
  v2 = [*&v0[OBJC_IVAR____TtC14NearbySessions11NearbyGroup_endpoint] description];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  MEMORY[0x25F86F070](v3, v5);

  MEMORY[0x25F86F070](0x7265626D656D202CLL, 0xEB00000000203A73);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  lazy protocol witness table accessor for type NearbyGroup.Member and conformance NearbyGroup.Member();
  v6 = Set.description.getter();
  v8 = v7;

  MEMORY[0x25F86F070](v6, v8);

  MEMORY[0x25F86F070](0xD000000000000014, 0x800000025B830880);
  v9 = &v14[OBJC_IVAR____TtC14NearbySessions11NearbyGroup_localMemberHandle];
  swift_beginAccess();
  if (*(v9 + 1))
  {
    swift_bridgeObjectRetain_n();
    v10 = String.init<A>(reflecting:)();
    v12 = v11;
  }

  else
  {
    v12 = 0xE300000000000000;
    v10 = 7104878;
  }

  MEMORY[0x25F86F070](v10, v12);

  return 0;
}

uint64_t get_enum_tag_for_layout_string_14NearbySessions0A5GroupC5StateO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void outlined consume of NearbyGroup.State(id a1)
{
  if (a1 >= 2)
  {
  }
}

unint64_t lazy protocol witness table accessor for type NearbyGroup.Member and conformance NearbyGroup.Member()
{
  result = lazy protocol witness table cache variable for type NearbyGroup.Member and conformance NearbyGroup.Member;
  if (!lazy protocol witness table cache variable for type NearbyGroup.Member and conformance NearbyGroup.Member)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NearbyGroup.Member and conformance NearbyGroup.Member);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NearbyGroup.Member and conformance NearbyGroup.Member;
  if (!lazy protocol witness table cache variable for type NearbyGroup.Member and conformance NearbyGroup.Member)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NearbyGroup.Member and conformance NearbyGroup.Member);
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for NearbyGroup.Member(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = specialized _StringGuts._deconstructUTF8<A>(scratch:)(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    outlined init with copy of Any(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t partial apply for closure #1 in closure #1 in NearbyGroup.leave()(uint64_t (*a1)(uint64_t, uint64_t))
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR) - 8);
  v3 = *(v1 + 16);
  v4 = v1 + ((*(v2 + 80) + 24) & ~*(v2 + 80));

  return a1(v3, v4);
}

uint64_t closure #1 in closure #3 in NearbyGroup.init(id:endpoint:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11[-v6];
  v12 = a1;
  v13 = a2;
  (*(v5 + 16))(&v11[-v6], a2, v4);
  v8 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  (*(v5 + 32))(v9 + v8, v7, v4);

  XPCClient.withSynchronousHost<A>(body:errorHandler:)();
}

uint64_t key path getter for static NearbyGroupInterface.identity : NearbyGroupInterface.Type@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for identity != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for XPCIdentity();
  v3 = __swift_project_value_buffer(v2, static NearbyGroupInterface.identity);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

id protocol witness for static XPCInterface.hostObjectInterface.getter in conformance NearbyGroupInterface(uint64_t a1, uint64_t a2, void *a3, void **a4, uint64_t a5)
{
  if (*a3 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v6 = *a4;

  return v6;
}

void closure #1 in closure #1 in closure #3 in NearbyGroup.init(id:endpoint:)(void **a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = aBlock - v8;
  v10 = *a1;
  (*(v7 + 16))(aBlock - v8, a3, v6);
  v11 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  (*(v7 + 32))(v12 + v11, v9, v6);
  aBlock[4] = partial apply for closure #1 in closure #1 in closure #1 in closure #3 in NearbyGroup.init(id:endpoint:);
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed String?, @guaranteed Set<NearbyGroupMember>?, @guaranteed Error?) -> ();
  aBlock[3] = &block_descriptor_141_0;
  v13 = _Block_copy(aBlock);

  [v10 joinWithNearbyGroupMembers_];
  _Block_release(v13);
}

id NearbyGroupConnectionInfo.init(coder:)(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v27 - v6;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v27 - v13;
  type metadata accessor for NSSet(0, &lazy cache variable for type metadata for NSUUID, 0x277CCAD78);
  v15 = NSCoder.decodeObject<A>(of:forKey:)();
  if (v15 && (v16 = v15, (*(v9 + 56))(v7, 1, 1, v8), _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9620]), dispatch thunk of static _ObjectiveCBridgeable._conditionallyBridgeFromObjectiveC(_:result:)(), v16, (*(v9 + 48))(v7, 1, v8) != 1))
  {
    v28 = ObjectType;
    v17 = *(v9 + 32);
    v17(v12, v7, v8);
    v17(v14, v12, v8);
    type metadata accessor for NSSet(0, &lazy cache variable for type metadata for NSXPCListenerEndpoint, 0x277CCAEA0);
    v18 = NSCoder.decodeObject<A>(of:forKey:)();
    if (v18)
    {
      v19 = v18;
      type metadata accessor for NSSet(0, &lazy cache variable for type metadata for NSString, 0x277CCACA8);
      v20 = NSCoder.decodeObject<A>(of:forKey:)();
      if (v20)
      {
        v30 = 0;
        v31 = 0;
        v21 = v20;
        static String._conditionallyBridgeFromObjectiveC(_:result:)();

        v22 = v31;
        if (v31)
        {
          v23 = v30;
          v17(&v2[OBJC_IVAR____TtC14NearbySessions25NearbyGroupConnectionInfo_id], v14, v8);
          *&v2[OBJC_IVAR____TtC14NearbySessions25NearbyGroupConnectionInfo_endpoint] = v19;
          v24 = &v2[OBJC_IVAR____TtC14NearbySessions25NearbyGroupConnectionInfo_localMember];
          *v24 = v23;
          *(v24 + 1) = v22;
          v29.receiver = v2;
          v29.super_class = v28;
          v25 = objc_msgSendSuper2(&v29, sel_init);

          return v25;
        }

        (*(v9 + 8))(v14, v8);
      }

      else
      {
        (*(v9 + 8))(v14, v8);
      }
    }

    else
    {
      (*(v9 + 8))(v14, v8);
    }
  }

  else
  {
  }

  swift_deallocPartialClassInstance();
  return 0;
}

uint64_t type metadata accessor for NSSet(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t @objc NearbyInvitationServiceClient.didReceiveUpdatedGroups(_:)(void *a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for NearbyGroupConnectionInfo(0);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = a1;
  NearbyInvitationServiceClient.didReceiveUpdatedGroups(_:)(v4);
}

Swift::Void __swiftcall NearbyInvitationServiceClient.didReceiveUpdatedGroups(_:)(Swift::OpaquePointer a1)
{
  v2 = v1;
  if (one-time initialization token for client != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Log.client);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16[0] = v8;
    *v7 = 136315138;
    v9 = type metadata accessor for NearbyGroupConnectionInfo(0);
    v10 = MEMORY[0x25F86F100](a1._rawValue, v9);
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, v16);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_25B7C4000, v5, v6, "Did receive updated groups: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x25F86FE20](v8, -1, -1);
    MEMORY[0x25F86FE20](v7, -1, -1);
  }

  v13 = v2 + direct field offset for NearbyInvitationServiceClient.delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v14 = *(v13 + 8);
    ObjectType = swift_getObjectType();
    (*(*(v14 + 8) + 8))(a1._rawValue, ObjectType);
    swift_unknownObjectRelease();
  }
}

unint64_t specialized _StringGuts._deconstructUTF8<A>(scratch:)(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = _StringGuts._allocateForDeconstruct()(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = _StringObject.sharedUTF8.getter();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t outlined init with copy of Any(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

Swift::Void __swiftcall NearbyInvitationsController.didReceiveUpdatedGroups(_:)(Swift::OpaquePointer a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v27 = *(v8 - 8);
  v28 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for client != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  __swift_project_value_buffer(v11, static Log.client);

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v26 = v5;
    v16 = v15;
    aBlock[0] = v15;
    *v14 = 136315138;
    v17 = type metadata accessor for NearbyGroupConnectionInfo(0);
    v18 = MEMORY[0x25F86F100](a1._rawValue, v17);
    v25 = v10;
    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, aBlock);
    v10 = v25;

    *(v14 + 4) = v20;
    _os_log_impl(&dword_25B7C4000, v12, v13, "NearbyInvitationsController: didReceiveUpdatedGroups %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    v21 = v16;
    v5 = v26;
    MEMORY[0x25F86FE20](v21, -1, -1);
    MEMORY[0x25F86FE20](v14, -1, -1);
  }

  v22 = swift_allocObject();
  v22[2]._rawValue = v2;
  v22[3]._rawValue = a1._rawValue;
  aBlock[4] = partial apply for closure #1 in NearbyInvitationsController.didReceiveUpdatedGroups(_:);
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_133;
  v23 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v29 = MEMORY[0x277D84F90];
  _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x277D83970]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x25F86F310](0, v10, v7, v23);
  _Block_release(v23);
  (*(v5 + 8))(v7, v4);
  (*(v27 + 8))(v10, v28);
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable () -> ()(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t closure #1 in NearbyInvitationsController.didReceiveUpdatedGroups(_:)(uint64_t a1, unint64_t a2)
{
  v36[1] = a1;
  v3 = type metadata accessor for UUID();
  v37 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_14NearbySessions0E19GroupConnectionInfoCTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  if (a2 >> 62)
  {
    goto LABEL_25;
  }

  for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v8 = 0;
    v9 = a2 & 0xC000000000000001;
    v10 = a2 & 0xFFFFFFFFFFFFFF8;
    v41 = v3;
    v42 = (v37 + 16);
    v39 = a2;
    v40 = (v37 + 8);
    while (1)
    {
      if (v9)
      {
        v13 = MEMORY[0x25F86F4A0](v8, a2);
      }

      else
      {
        if (v8 >= *(v10 + 16))
        {
          goto LABEL_22;
        }

        v13 = *(a2 + 8 * v8 + 32);
      }

      v14 = v13;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      v43 = v8 + 1;
      a2 = *v42;
      (*v42)(v5, v13 + OBJC_IVAR____TtC14NearbySessions25NearbyGroupConnectionInfo_id, v3);
      v15 = v14;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v44 = v6;
      v17 = specialized __RawDictionaryStorage.find<A>(_:)(v5);
      v19 = v6[2];
      v20 = (v18 & 1) == 0;
      v21 = __OFADD__(v19, v20);
      v22 = v19 + v20;
      if (v21)
      {
        goto LABEL_23;
      }

      v23 = v18;
      if (v6[3] < v22)
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v22, isUniquelyReferenced_nonNull_native);
        v17 = specialized __RawDictionaryStorage.find<A>(_:)(v5);
        if ((v23 & 1) != (v24 & 1))
        {
          result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          return result;
        }

LABEL_15:
        v6 = v44;
        if (v23)
        {
          goto LABEL_4;
        }

        goto LABEL_16;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_15;
      }

      v34 = v17;
      specialized _NativeDictionary.copy()();
      v17 = v34;
      v6 = v44;
      if (v23)
      {
LABEL_4:
        v11 = v6[7];
        v12 = *(v11 + 8 * v17);
        *(v11 + 8 * v17) = v15;

        v3 = v41;
        (*v40)(v5, v41);
        goto LABEL_5;
      }

LABEL_16:
      v25 = v10;
      v26 = v9;
      v27 = i;
      v6[(v17 >> 6) + 8] |= 1 << v17;
      v28 = v5;
      v29 = v37;
      v30 = v6[6] + *(v37 + 72) * v17;
      v38 = v17;
      v3 = v41;
      (a2)(v30, v28, v41);
      *(v6[7] + 8 * v38) = v15;

      v31 = *(v29 + 8);
      v5 = v28;
      v31(v28, v3);
      v32 = v6[2];
      v21 = __OFADD__(v32, 1);
      v33 = v32 + 1;
      if (v21)
      {
        goto LABEL_24;
      }

      v6[2] = v33;
      i = v27;
      v9 = v26;
      v10 = v25;
LABEL_5:
      ++v8;
      a2 = v39;
      if (v43 == i)
      {
        goto LABEL_26;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    ;
  }

LABEL_26:
  swift_getKeyPath();
  swift_getKeyPath();
  v44 = v6;

  return static Published.subscript.setter();
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_14NearbySessions0E19GroupConnectionInfoCTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV_14NearbySessions0C19GroupConnectionInfoCtMd, &_s10Foundation4UUIDV_14NearbySessions0C19GroupConnectionInfoCtMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4UUIDV14NearbySessions0E19GroupConnectionInfoCGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDV14NearbySessions0E19GroupConnectionInfoCGMR);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      outlined init with copy of (UUID, Bool)(v9, v5, &_s10Foundation4UUIDV_14NearbySessions0C19GroupConnectionInfoCtMd, &_s10Foundation4UUIDV_14NearbySessions0C19GroupConnectionInfoCtMR);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for UUID();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1)
{
  type metadata accessor for UUID();
  _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v2);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  v18 = v2 + 64;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v13 = *(v5 + 16);
    v12 = v5 + 16;
    v11 = v13;
    v14 = *(v12 + 56);
    do
    {
      v11(v7, *(v20 + 48) + v14 * v9, v4);
      _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
      v15 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v12 - 8))(v7, v4);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

uint64_t specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4UUIDV14NearbySessions0E19GroupConnectionInfoCGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDV14NearbySessions0E19GroupConnectionInfoCGMR);
  v39 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v35 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v36 = (v6 + 16);
    v37 = v9;
    v38 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v42 = *(v38 + 72);
      v25 = v24 + v42 * v23;
      if (v39)
      {
        (*v40)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v36)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v40)(*(v11 + 48) + v42 * v19, v43, v5);
      *(*(v11 + 56) + 8 * v19) = v41;
      ++*(v11 + 16);
      v9 = v37;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4UUIDV14NearbySessions0E10GroupTableC04WeakeG0VGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDV14NearbySessions0E10GroupTableC04WeakeG0VGMR);
  v38 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v11 = result;
  if (*(v9 + 16))
  {
    v41 = v8;
    v42 = v5;
    v34 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v35 = (v6 + 16);
    v36 = v6;
    v39 = (v6 + 32);
    v18 = result + 64;
    v37 = v9;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v40 = *(v6 + 72);
      v25 = v24 + v40 * v23;
      if (v38)
      {
        (*v39)(v41, v25, v42);
        outlined init with take of NearbyGroupTable.WeakNearbyGroup(*(v9 + 56) + 8 * v23, v43);
      }

      else
      {
        (*v35)(v41, v25, v42);
        outlined init with copy of NearbyGroupTable.WeakNearbyGroup(*(v9 + 56) + 8 * v23, v43);
      }

      _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        v6 = v36;
        v9 = v37;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
      v6 = v36;
      v9 = v37;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v39)((*(v11 + 48) + v40 * v19), v41, v42);
      result = outlined init with take of NearbyGroupTable.WeakNearbyGroup(v43, *(v11 + 56) + 8 * v19);
      ++*(v11 + 16);
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4UUIDVSbGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDVSbGMR);
  v40 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v36 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v37 = (v6 + 16);
    v38 = v6;
    v41 = (v6 + 32);
    v18 = result + 64;
    v39 = v9;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v21 = (v16 - 1) & v16;
LABEL_15:
      v24 = v20 | (v12 << 6);
      v42 = v21;
      v25 = *(v6 + 72);
      v26 = *(v9 + 48) + v25 * v24;
      if (v40)
      {
        (*v41)(v43, v26, v5);
      }

      else
      {
        (*v37)(v43, v26, v5);
      }

      v27 = *(*(v9 + 56) + v24);
      _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v28 = -1 << *(v11 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v18 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v18 + 8 * v30);
          if (v34 != -1)
          {
            v19 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v29) & ~*(v18 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v41)(*(v11 + 48) + v25 * v19, v43, v5);
      *(*(v11 + 56) + v19) = v27;
      ++*(v11 + 16);
      v6 = v38;
      v9 = v39;
      v16 = v42;
    }

    v22 = v12;
    while (1)
    {
      v12 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v23 = v13[v12];
      ++v22;
      if (v23)
      {
        v20 = __clz(__rbit64(v23));
        v21 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v35 = 1 << *(v9 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v13, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v35;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_25B7C97D4()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_25B7C9828()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, ((v5 + 23) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_25B7C991C()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = (v5 + v3 + v4) & ~v3;
  v7 = (v5 + v6 + 7) & 0xFFFFFFFFFFFFFFF8;

  v8 = *(v2 + 8);
  v8(v0 + v4, v1);
  v8(v0 + v6, v1);

  return MEMORY[0x2821FE8E8](v0, v7 + 8, v3 | 7);
}

uint64_t sub_25B7C9A14()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, ((v5 + 23) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_25B7C9B10()
{
  outlined consume of Data._Representation(*(v0 + 32), *(v0 + 40));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_25B7C9B58()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_25B7C9BEC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for Invitation_InvitationData(0) + 28));
  v4 = *v3;
  v5 = v3[1];
  if (v5 >> 60 == 15)
  {
    v6 = 0;
  }

  else
  {
    v6 = *v3;
  }

  v7 = 0xC000000000000000;
  if (v5 >> 60 != 15)
  {
    v7 = v5;
  }

  *a2 = v6;
  a2[1] = v7;

  return outlined copy of Data?(v4, v5);
}

uint64_t sub_25B7C9C58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_25B7C9D04(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for UnknownStorage();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_25B7C9DA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14NearbySessions29Invitation_HostConnectionInfoVSgMd, &_s14NearbySessions29Invitation_HostConnectionInfoVSgMR);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 32);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_25B7C9ED8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14NearbySessions29Invitation_HostConnectionInfoVSgMd, &_s14NearbySessions29Invitation_HostConnectionInfoVSgMR);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 32);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_25B7CA0F8()
{

  outlined consume of Data._Representation(*(v0 + 32), *(v0 + 40));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_25B7CA140()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_25B7CA190()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_25B7CA1E4()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (((((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_25B7CA29C()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 8);
  v4 = *(v2 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v2 + 64);
  v7 = (v4 + ((v6 + v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v4;
  v3(v0 + v5, v1);

  v3(v0 + v7, v1);

  return MEMORY[0x2821FE8E8](v0, v7 + v6, v4 | 7);
}

uint64_t sub_25B7CA36C()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, ((v5 + 23) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_25B7CA460()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_25B7CA54C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25B7CA5D0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  outlined init with copy of NearbyGroupTable.WeakNearbyGroup(a1, v5);
  Strong = swift_weakLoadStrong();
  result = outlined destroy of NearbyGroupTable.WeakNearbyGroup(v5);
  *a2 = Strong;
  return result;
}

uint64_t sub_25B7CA630()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25B7CA668()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25B7CA6A8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy14NearbySessions0A19GroupConnectionInfoCs5Error_pGMd, &_sScCy14NearbySessions0A19GroupConnectionInfoCs5Error_pGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_25B7CA780()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy14NearbySessions0A19GroupConnectionInfoCs5Error_pGMd, &_sScCy14NearbySessions0A19GroupConnectionInfoCs5Error_pGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_25B7CA838@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 176))();
  *a2 = result;
  return result;
}

uint64_t sub_25B7CA884(void *a1, uint64_t a2)
{
  v2 = *(**a2 + 184);

  return v2(v3);
}

__n128 sub_25B7CA8E4(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_25B7CA8F0()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25B7CA928()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_25B7CAA4C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy10Foundation4UUIDVs5Error_pGMd, &_sScCy10Foundation4UUIDVs5Error_pGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_25B7CAAE4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_25B7CAB88@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 184))();
  *a2 = result;
  return result;
}

__n128 sub_25B7CAC0C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_25B7CAC7C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_25B7CAD54()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy14NearbySessions14InvitationBlobCs5Error_pGMd, &_sScCy14NearbySessions14InvitationBlobCs5Error_pGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v6 + 8, v3 | 7);
}

uint64_t sub_25B7CAE24()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy14NearbySessions0A29InvitationJoinRequestMetadataCSgs5Error_pGMd, &_sScCy14NearbySessions0A29InvitationJoinRequestMetadataCSgs5Error_pGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_25B7CAECC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_25B7CAF78@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 152))();
  *a2 = result;
  return result;
}

uint64_t sub_25B7CAFC4(void *a1, uint64_t a2)
{
  v2 = *(**a2 + 160);

  return v2(v3);
}

__n128 sub_25B7CB024(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_25B7CB030@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 176))();
  *a2 = result;
  return result;
}

uint64_t sub_25B7CB07C(void *a1, uint64_t a2)
{
  v2 = *(**a2 + 184);

  return v2(v3);
}

uint64_t sub_25B7CB0DC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 200))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_25B7CB128(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 208);

  return v4(v2, v3);
}

uint64_t sub_25B7CB19C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 224))();
  *a2 = result;
  return result;
}

uint64_t sub_25B7CB1E8(void *a1, uint64_t a2)
{
  v2 = *(**a2 + 232);

  return v2(v3);
}

uint64_t sub_25B7CB248@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 248))();
  *a2 = result;
  return result;
}

uint64_t sub_25B7CB294(void *a1, uint64_t a2)
{
  v2 = *(**a2 + 256);

  return v2(v3);
}

uint64_t sub_25B7CB3A8()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25B7CB3E4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25B7CB4CC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_25B7CB5A8()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(v1 + 64);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy14NearbySessions0B5GroupC_GMd, &_sScS12ContinuationVy14NearbySessions0B5GroupC_GMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = *(v6 + 64);
  swift_unknownObjectRelease();

  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v0 + v3, 1, v9))
  {
    (*(v10 + 8))(v0 + v3, v9);
  }

  v11 = v2 | v7;
  v12 = (v3 + v4 + v7) & ~v7;
  (*(v6 + 8))(v0 + v12, v5);

  return MEMORY[0x2821FE8E8](v0, v12 + v8, v11 | 7);
}

uint64_t sub_25B7CB768()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  return MEMORY[0x2821FE8E8](v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_25B7CB894()
{
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_14NearbySessions0D19GroupConnectionInfoC5valuetMd, &_s10Foundation4UUIDV3key_14NearbySessions0D19GroupConnectionInfoC5valuetMR) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = type metadata accessor for UUID();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t _sShy14NearbySessions0A11GroupMemberCGIegg_SgWOy_0(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_25B7CB9C4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

unsigned int *_s14NearbySessions0A19InvitationScopeTypeOSYAASY8rawValuexSg03RawG0Qz_tcfCTW_0@<X0>(unsigned int *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 2;
  if (*result > 2)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 4) = v3;
  return result;
}

uint64_t sub_25B7CBAB8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 168))();
  *a2 = result;
  return result;
}

uint64_t sub_25B7CBB04(void *a1, uint64_t a2)
{
  v2 = *(**a2 + 176);

  return v2(v3);
}

__n128 sub_25B7CBB64(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_25B7CBB70()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_25B7CBC0C@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x88))();
  *a2 = result;
  return result;
}

uint64_t sub_25B7CBC68(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x277D85000] & **a2) + 0x90);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_25B7CBCD0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 120))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_25B7CBD1C(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 128);

  return v4(v2, v3);
}

uint64_t sub_25B7CBD90@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 144))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_25B7CBDDC(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 152);
  outlined copy of Data?(*a1, v3);
  return v4(v2, v3);
}

uint64_t sub_25B7CBED4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 216))();
  *a2 = result;
  return result;
}

uint64_t sub_25B7CBF20(void *a1, uint64_t a2)
{
  v2 = *(**a2 + 224);

  return v2(v3);
}

uint64_t sub_25B7CBF80@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0xA8))();
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_25B7CC048@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0xC0))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_25B7CC0A4(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *((*MEMORY[0x277D85000] & **a2) + 0xC8);

  return v4(v2, v3);
}

uint64_t sub_25B7CC11C@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0xD8))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_25B7CC178(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *((*MEMORY[0x277D85000] & **a2) + 0xE0);

  return v4(v2, v3);
}

uint64_t sub_25B7CC1F0@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0xF0))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_25B7CC24C(void *a1, void **a2)
{
  v2 = a1[1];
  v3 = *((*MEMORY[0x277D85000] & **a2) + 0xF8);
  v4 = swift_unknownObjectRetain();
  return v3(v4, v2);
}

uint64_t sub_25B7CC2EC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = v3 | v8;
  v11 = (*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2821FE8E8](v0, v11 + 8, v10 | 7);
}

uint64_t sub_25B7CC468()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy14NearbySessions22InvitationJoinResponseCs5Error_pGMd, &_sScCy14NearbySessions22InvitationJoinResponseCs5Error_pGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_25B7CC4FC()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25B7CC534()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t key path getter for NearbyInvitationServiceClient.delegate : NearbyInvitationServiceClient@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + direct field offset for NearbyInvitationServiceClient.delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t key path setter for NearbyInvitationServiceClient.delegate : NearbyInvitationServiceClient(uint64_t *a1, void *a2)
{
  v2 = a1[1];
  v3 = *a2 + direct field offset for NearbyInvitationServiceClient.delegate;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t NearbyInvitationServiceClient.delegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + direct field offset for NearbyInvitationServiceClient.delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t (*NearbyInvitationServiceClient.delegate.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = direct field offset for NearbyInvitationServiceClient.delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return NearbyInvitationServiceClient.delegate.modify;
}

id one-time initialization function for shared()
{
  result = [objc_allocWithZone(type metadata accessor for NearbyInvitationServiceClient(0)) init];
  static NearbyInvitationServiceClient.shared = result;
  return result;
}

id NearbyInvitationServiceClient.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t *NearbyInvitationServiceClient.shared.unsafeMutableAddressor()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  return &static NearbyInvitationServiceClient.shared;
}

id static NearbyInvitationServiceClient.shared.getter()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v1 = static NearbyInvitationServiceClient.shared;

  return v1;
}

id NearbyInvitationServiceClient.init()()
{
  ObjectType = swift_getObjectType();
  *&v0[direct field offset for NearbyInvitationServiceClient.delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v4.receiver = v0;
  v4.super_class = ObjectType;
  v2 = objc_msgSendSuper2(&v4, sel_init);
  dispatch thunk of XPCClient.connectionClosure.setter();

  return v2;
}

id closure #1 in NearbyInvitationServiceClient.init()()
{
  v0 = type metadata accessor for MachServiceName();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v3, *MEMORY[0x277CFD120], v0);
  v4 = MachServiceName.rawValue.getter();
  v6 = v5;
  (*(v1 + 8))(v3, v0);
  v7 = objc_allocWithZone(MEMORY[0x277CCAE80]);
  v8 = MEMORY[0x25F86F000](v4, v6);

  v9 = [v7 initWithServiceName_];

  return v9;
}

char *@objc NearbyInvitationServiceClient.init()(char *a1)
{
  ObjectType = swift_getObjectType();
  *&a1[direct field offset for NearbyInvitationServiceClient.delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v5.receiver = a1;
  v5.super_class = ObjectType;
  v3 = objc_msgSendSuper2(&v5, sel_init);
  dispatch thunk of XPCClient.connectionClosure.setter();

  return v3;
}

Swift::Void __swiftcall NearbyInvitationServiceClient.handleServerDisconnect()()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = (&v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v4 = XPCClient.queue.getter();
  (*(v2 + 104))(v4, *MEMORY[0x277D85200], v1);
  v5 = _dispatchPreconditionTest(_:)();
  (*(v2 + 8))(v4, v1);
  if (v5)
  {
    v6 = v0 + direct field offset for NearbyInvitationServiceClient.delegate;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v7 = *(v6 + 8);
      ObjectType = swift_getObjectType();
      (*(v7 + 16))(v0, &protocol witness table for NearbyInvitationServiceClient, ObjectType, v7);
      swift_unknownObjectRelease();
    }
  }

  else
  {
    __break(1u);
  }
}

void closure #1 in closure #1 in NearbyInvitationServiceClient.createGroup(with:response:)(void **a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *a1;
  if (one-time initialization token for client != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, static Log.client);
  v10 = a2;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v24 = a3;
    v14 = swift_slowAlloc();
    aBlock[0] = v14;
    *v13 = 136315650;
    v15 = _typeName(_:qualified:)();
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, aBlock);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2080;
    *(v13 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001BLL, 0x800000025B82F830, aBlock);
    *(v13 + 22) = 2080;
    aBlock[7] = v10;
    type metadata accessor for NearbyGroupCreationRequest(0);
    v18 = v10;
    v19 = String.init<A>(reflecting:)();
    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v20, aBlock);

    *(v13 + 24) = v21;
    _os_log_impl(&dword_25B7C4000, v11, v12, "%s %s %s", v13, 0x20u);
    swift_arrayDestroy();
    v22 = v14;
    a3 = v24;
    MEMORY[0x25F86FE20](v22, -1, -1);
    MEMORY[0x25F86FE20](v13, -1, -1);
  }

  aBlock[4] = a3;
  aBlock[5] = a4;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed InvitationJoinResponse?, @guaranteed Error?) -> ();
  aBlock[3] = &block_descriptor_192;
  v23 = _Block_copy(aBlock);

  [v8 createGroupWith:v10 response:v23];
  _Block_release(v23);
}

uint64_t closure #2 in closure #1 in NearbyInvitationServiceClient.createGroup(with:response:)(void *a1, void *a2, uint64_t (*a3)(void, void *))
{
  if (one-time initialization token for client != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Log.client);
  v7 = a2;
  v8 = a1;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v20 = v13;
    *v11 = 138412546;
    *(v11 + 4) = v7;
    *v12 = v7;
    *(v11 + 12) = 2080;
    v14 = v7;
    v15 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v16 = String.init<A>(reflecting:)();
    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, &v20);

    *(v11 + 14) = v18;
    _os_log_impl(&dword_25B7C4000, v9, v10, "Failed createGroup(with: %@), error: %s", v11, 0x16u);
    outlined destroy of NSObject?(v12, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x25F86FE20](v12, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x25F86FE20](v13, -1, -1);
    MEMORY[0x25F86FE20](v11, -1, -1);
  }

  return a3(0, a1);
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A];
  if (!lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A]);
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

uint64_t NearbyInvitationServiceClient.createGroup(with:response:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v25 = a5;
  v26 = a6;
  v24 = a2;
  ObjectType = swift_getObjectType();
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &ObjectType - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for DispatchQoS();
  v13 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v15 = &ObjectType - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = XPCClient.queue.getter();
  v17 = swift_allocObject();
  v17[2] = v6;
  v17[3] = a1;
  v18 = ObjectType;
  v17[4] = v24;
  v17[5] = a3;
  v17[6] = v18;
  aBlock[4] = v25;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = v26;
  v19 = _Block_copy(aBlock);
  v20 = v6;
  v21 = a1;

  static DispatchQoS.unspecified.getter();
  v28 = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x25F86F310](0, v15, v12, v19);
  _Block_release(v19);

  (*(v10 + 8))(v12, v9);
  (*(v13 + 8))(v15, v27);
}

void closure #1 in closure #1 in NearbyInvitationServiceClient.requestApproval(with:completion:)(void **a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *a1;
  if (one-time initialization token for client != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, static Log.client);
  v10 = a2;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v24 = a3;
    v14 = swift_slowAlloc();
    aBlock[0] = v14;
    *v13 = 136315650;
    v15 = _typeName(_:qualified:)();
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, aBlock);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2080;
    *(v13 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000021, 0x800000025B82F7B0, aBlock);
    *(v13 + 22) = 2080;
    aBlock[7] = v10;
    type metadata accessor for InvitationApprovalRequest();
    v18 = v10;
    v19 = String.init<A>(reflecting:)();
    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v20, aBlock);

    *(v13 + 24) = v21;
    _os_log_impl(&dword_25B7C4000, v11, v12, "%s %s %s", v13, 0x20u);
    swift_arrayDestroy();
    v22 = v14;
    a3 = v24;
    MEMORY[0x25F86FE20](v22, -1, -1);
    MEMORY[0x25F86FE20](v13, -1, -1);
  }

  aBlock[4] = a3;
  aBlock[5] = a4;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed InvitationJoinResponse?, @guaranteed Error?) -> ();
  aBlock[3] = &block_descriptor_186;
  v23 = _Block_copy(aBlock);

  [v8 requestApprovalWith:v10 completion:v23];
  _Block_release(v23);
}

uint64_t closure #2 in closure #1 in NearbyInvitationServiceClient.requestApproval(with:completion:)(void *a1, void *a2, uint64_t (*a3)(void, void *))
{
  if (one-time initialization token for client != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Log.client);
  v7 = a2;
  v8 = a1;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v22 = v12;
    *v11 = 136315394;
    type metadata accessor for InvitationApprovalRequest();
    v13 = v7;
    v14 = String.init<A>(reflecting:)();
    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, &v22);

    *(v11 + 4) = v16;
    *(v11 + 12) = 2080;
    v17 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v18 = String.init<A>(reflecting:)();
    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, &v22);

    *(v11 + 14) = v20;
    _os_log_impl(&dword_25B7C4000, v9, v10, "Failed requestApproval(with: %s), error: %s", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25F86FE20](v12, -1, -1);
    MEMORY[0x25F86FE20](v11, -1, -1);
  }

  return a3(0, a1);
}

uint64_t closure #1 in NearbyInvitationServiceClient.approve(pendingMember:response:completion:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = swift_allocObject();
  v9[2] = a2;
  v9[3] = a4;
  v9[4] = a5;
  v10 = a2;

  XPCClient.withHost(body:errorHandler:)();
}

void closure #1 in closure #1 in NearbyInvitationServiceClient.approve(pendingMember:response:completion:)(void **a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = *a1;
  if (one-time initialization token for client != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Log.client);
  v11 = a2;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v25 = a5;
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    aBlock[0] = v15;
    *v14 = 136315650;
    v16 = _typeName(_:qualified:)();
    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, aBlock);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2080;
    *(v14 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002BLL, 0x800000025B82F730, aBlock);
    *(v14 + 22) = 2080;
    aBlock[7] = v11;
    type metadata accessor for IncomingInvitationJoinRequest(0);
    v19 = v11;
    v20 = String.init<A>(reflecting:)();
    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, aBlock);

    *(v14 + 24) = v22;
    _os_log_impl(&dword_25B7C4000, v12, v13, "%s %s %s", v14, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x25F86FE20](v15, -1, -1);
    v23 = v14;
    a5 = v25;
    MEMORY[0x25F86FE20](v23, -1, -1);
  }

  aBlock[4] = a4;
  aBlock[5] = a5;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed Error?) -> ();
  aBlock[3] = &block_descriptor_180;
  v24 = _Block_copy(aBlock);

  [v9 approveWithPendingMember:v11 response:a3 completion:v24];
  _Block_release(v24);
}

uint64_t closure #1 in NearbyInvitationServiceClient.createGroup(with:response:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = swift_allocObject();
  v11[2] = a2;
  v11[3] = a3;
  v11[4] = a4;
  v12 = a2;

  XPCClient.withHost(body:errorHandler:)();
}

void closure #1 in closure #1 in NearbyInvitationServiceClient.reject(pendingMember:completion:)(void **a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *a1;
  if (one-time initialization token for client != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, static Log.client);
  v10 = a2;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v24 = a3;
    v14 = swift_slowAlloc();
    aBlock[0] = v14;
    *v13 = 136315650;
    v15 = _typeName(_:qualified:)();
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, aBlock);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2080;
    *(v13 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000021, 0x800000025B82F700, aBlock);
    *(v13 + 22) = 2080;
    aBlock[7] = v10;
    type metadata accessor for IncomingInvitationJoinRequest(0);
    v18 = v10;
    v19 = String.init<A>(reflecting:)();
    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v20, aBlock);

    *(v13 + 24) = v21;
    _os_log_impl(&dword_25B7C4000, v11, v12, "%s %s %s", v13, 0x20u);
    swift_arrayDestroy();
    v22 = v14;
    a3 = v24;
    MEMORY[0x25F86FE20](v22, -1, -1);
    MEMORY[0x25F86FE20](v13, -1, -1);
  }

  aBlock[4] = a3;
  aBlock[5] = a4;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed Error?) -> ();
  aBlock[3] = &block_descriptor_174;
  v23 = _Block_copy(aBlock);

  [v8 rejectWithPendingMember:v10 completion:v23];
  _Block_release(v23);
}

uint64_t closure #2 in closure #1 in NearbyInvitationServiceClient.approve(pendingMember:response:completion:)(void *a1, void *a2, uint64_t (*a3)(void *), uint64_t a4, const char *a5)
{
  if (one-time initialization token for client != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, static Log.client);
  v10 = a2;
  v11 = a1;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v25 = v15;
    *v14 = 136315394;
    type metadata accessor for IncomingInvitationJoinRequest(0);
    v16 = v10;
    v17 = String.init<A>(reflecting:)();
    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, &v25);

    *(v14 + 4) = v19;
    *(v14 + 12) = 2080;
    v20 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v21 = String.init<A>(reflecting:)();
    v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, &v25);

    *(v14 + 14) = v23;
    _os_log_impl(&dword_25B7C4000, v12, v13, a5, v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25F86FE20](v15, -1, -1);
    MEMORY[0x25F86FE20](v14, -1, -1);
  }

  return a3(a1);
}

void closure #1 in closure #1 in NearbyInvitationServiceClient.generateNearbyInvitation(provider:response:)(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *a1;
  if (one-time initialization token for client != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, static Log.client);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    aBlock[0] = v20;
    *v12 = 136315394;
    v13 = _typeName(_:qualified:)();
    log = v10;
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, aBlock);

    *(v12 + 4) = v15;
    *(v12 + 12) = 2080;
    *(v12 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002CLL, 0x800000025B82F6D0, aBlock);
    _os_log_impl(&dword_25B7C4000, v10, v11, "%s %s", v12, 0x16u);
    v16 = v20;
    swift_arrayDestroy();
    MEMORY[0x25F86FE20](v16, -1, -1);
    MEMORY[0x25F86FE20](v12, -1, -1);
  }

  else
  {
  }

  aBlock[4] = a3;
  aBlock[5] = a4;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed InvitationJoinResponse?, @guaranteed Error?) -> ();
  aBlock[3] = &block_descriptor_168;
  v17 = _Block_copy(aBlock);

  [v8 generateNearbyInvitationWithProvider:a2 response:v17];
  _Block_release(v17);
}

uint64_t NearbyInvitationServiceClient.advertiseNearbyInvitation(_:provider:response:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22 = a2;
  v23 = a3;
  ObjectType = swift_getObjectType();
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for DispatchQoS();
  v12 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = XPCClient.queue.getter();
  v16 = swift_allocObject();
  v16[2] = v4;
  v16[3] = a1;
  v17 = v23;
  v16[4] = v22;
  v16[5] = v17;
  v16[6] = a4;
  v16[7] = ObjectType;
  aBlock[4] = partial apply for closure #1 in NearbyInvitationServiceClient.advertiseNearbyInvitation(_:provider:response:);
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_45;
  v18 = _Block_copy(aBlock);
  v19 = v4;
  v20 = a1;

  static DispatchQoS.unspecified.getter();
  v25 = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x25F86F310](0, v14, v11, v18);
  _Block_release(v18);

  (*(v9 + 8))(v11, v8);
  (*(v12 + 8))(v14, v24);
}

void closure #1 in closure #1 in NearbyInvitationServiceClient.advertiseNearbyInvitation(_:provider:response:)(void **a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *a1;
  if (one-time initialization token for client != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  __swift_project_value_buffer(v12, static Log.client);
  v13 = a2;
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v28 = a4;
    v16 = swift_slowAlloc();
    v29 = a3;
    v17 = swift_slowAlloc();
    aBlock[7] = v6;
    v27 = swift_slowAlloc();
    aBlock[0] = v27;
    *v16 = 136315650;
    v18 = _typeName(_:qualified:)();
    v20 = a5;
    v21 = v11;
    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, aBlock);

    *(v16 + 4) = v22;
    v11 = v21;
    a5 = v20;
    *(v16 + 12) = 2080;
    *(v16 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002FLL, 0x800000025B82F650, aBlock);
    *(v16 + 22) = 2112;
    *(v16 + 24) = v13;
    *v17 = v13;
    v23 = v13;
    _os_log_impl(&dword_25B7C4000, v14, v15, "%s %s %@", v16, 0x20u);
    outlined destroy of NSObject?(v17, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v24 = v17;
    a3 = v29;
    MEMORY[0x25F86FE20](v24, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x25F86FE20](v27, -1, -1);
    v25 = v16;
    a4 = v28;
    MEMORY[0x25F86FE20](v25, -1, -1);
  }

  aBlock[4] = a4;
  aBlock[5] = a5;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed Error?) -> ();
  aBlock[3] = &block_descriptor_165;
  v26 = _Block_copy(aBlock);

  [v11 advertiseNearbyInvitation:v13 provider:a3 response:v26];
  _Block_release(v26);
}

void closure #1 in closure #1 in NearbyInvitationServiceClient.advertiseNearbySessionEndpoint(params:response:)(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *a1;
  if (one-time initialization token for client != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, static Log.client);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    aBlock[0] = v20;
    *v12 = 136315394;
    v13 = _typeName(_:qualified:)();
    log = v10;
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, aBlock);

    *(v12 + 4) = v15;
    *(v12 + 12) = 2080;
    *(v12 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000030, 0x800000025B82F610, aBlock);
    _os_log_impl(&dword_25B7C4000, v10, v11, "%s %s", v12, 0x16u);
    v16 = v20;
    swift_arrayDestroy();
    MEMORY[0x25F86FE20](v16, -1, -1);
    MEMORY[0x25F86FE20](v12, -1, -1);
  }

  else
  {
  }

  aBlock[4] = a3;
  aBlock[5] = a4;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed Error?) -> ();
  aBlock[3] = &block_descriptor_162;
  v17 = _Block_copy(aBlock);

  [v8 advertiseNearbySessionEndpointWithParams:a2 response:v17];
  _Block_release(v17);
}

void closure #1 in closure #1 in NearbyInvitationServiceClient.stopAdvertisingNearbyInvitation(_:response:)(id *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v32 = a4;
  v29 = a3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = *a1;
  if (one-time initialization token for client != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  __swift_project_value_buffer(v12, static Log.client);
  v13 = *(v9 + 16);
  v28[1] = a2;
  v13(v11, a2, v8);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v28[0] = v5;
    v18 = v17;
    aBlock[0] = v17;
    *v16 = 136315650;
    v19 = _typeName(_:qualified:)();
    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v20, aBlock);

    *(v16 + 4) = v21;
    *(v16 + 12) = 2080;
    *(v16 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002CLL, 0x800000025B82F5E0, aBlock);
    *(v16 + 22) = 2080;
    lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v22 = dispatch thunk of CustomStringConvertible.description.getter();
    v24 = v23;
    (*(v9 + 8))(v11, v8);
    v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v24, aBlock);

    *(v16 + 24) = v25;
    _os_log_impl(&dword_25B7C4000, v14, v15, "%s %s %s", v16, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x25F86FE20](v18, -1, -1);
    MEMORY[0x25F86FE20](v16, -1, -1);
  }

  else
  {

    (*(v9 + 8))(v11, v8);
  }

  isa = UUID._bridgeToObjectiveC()().super.isa;
  aBlock[4] = v29;
  aBlock[5] = v32;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed Error?) -> ();
  aBlock[3] = &block_descriptor_159;
  v27 = _Block_copy(aBlock);

  [v30 stopAdvertisingNearbyInvitation:isa response:v27];
  _Block_release(v27);
}

uint64_t NearbyInvitationServiceClient.stopAdvertisingNearbySessionEndpoint(response:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18[0] = type metadata accessor for DispatchQoS();
  v10 = *(v18[0] - 8);
  MEMORY[0x28223BE20](v18[0]);
  v12 = v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = XPCClient.queue.getter();
  v14 = swift_allocObject();
  v14[2] = v2;
  v14[3] = a1;
  v14[4] = a2;
  v14[5] = ObjectType;
  aBlock[4] = partial apply for closure #1 in NearbyInvitationServiceClient.stopAdvertisingNearbySessionEndpoint(response:);
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_63;
  v15 = _Block_copy(aBlock);
  v16 = v2;

  static DispatchQoS.unspecified.getter();
  v18[1] = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x25F86F310](0, v12, v9, v15);
  _Block_release(v15);

  (*(v7 + 8))(v9, v6);
  (*(v10 + 8))(v12, v18[0]);
}

void closure #1 in closure #1 in NearbyInvitationServiceClient.stopAdvertisingNearbySessionEndpoint(response:)(void **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *a1;
  if (one-time initialization token for client != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, static Log.client);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v17 = v6;
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v16[0] = v11;
    *v10 = 136315394;
    v12 = _typeName(_:qualified:)();
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, v16);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2080;
    *(v10 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002FLL, 0x800000025B82F5B0, v16);
    _os_log_impl(&dword_25B7C4000, v8, v9, "%s %s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25F86FE20](v11, -1, -1);
    v6 = v17;
    MEMORY[0x25F86FE20](v10, -1, -1);
  }

  v16[4] = a2;
  v16[5] = a3;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 1107296256;
  v16[2] = thunk for @escaping @callee_guaranteed (@guaranteed Error?) -> ();
  v16[3] = &block_descriptor_156;
  v15 = _Block_copy(v16);

  [v6 stopAdvertisingNearbySessionEndpointWithResponse_];
  _Block_release(v15);
}

void closure #1 in closure #1 in NearbyInvitationServiceClient.markInvitationUsed(_:response:)(void **a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *a1;
  if (one-time initialization token for client != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Log.client);
  v11 = a2;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v25 = a3;
    v14 = swift_slowAlloc();
    aBlock[7] = v5;
    v15 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    aBlock[0] = v24;
    *v14 = 136315650;
    v16 = _typeName(_:qualified:)();
    v18 = a4;
    v19 = v9;
    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, aBlock);

    *(v14 + 4) = v20;
    v9 = v19;
    a4 = v18;
    *(v14 + 12) = 2080;
    *(v14 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001FLL, 0x800000025B82F590, aBlock);
    *(v14 + 22) = 2112;
    *(v14 + 24) = v11;
    *v15 = v11;
    v21 = v11;
    _os_log_impl(&dword_25B7C4000, v12, v13, "%s %s %@", v14, 0x20u);
    outlined destroy of NSObject?(v15, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x25F86FE20](v15, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x25F86FE20](v24, -1, -1);
    v22 = v14;
    a3 = v25;
    MEMORY[0x25F86FE20](v22, -1, -1);
  }

  aBlock[4] = a3;
  aBlock[5] = a4;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed Error?) -> ();
  aBlock[3] = &block_descriptor_153;
  v23 = _Block_copy(aBlock);

  [v9 markInvitationUsed:v11 response:v23];
  _Block_release(v23);
}

uint64_t NearbyInvitationServiceClient.assertAdvertisementPublic(_:rotations:response:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = a4;
  v30 = a2;
  v31 = a3;
  ObjectType = swift_getObjectType();
  v35 = type metadata accessor for DispatchWorkItemFlags();
  v38 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v36 = *(v7 - 8);
  v37 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = XPCClient.queue.getter();
  (*(v11 + 16))(v13, a1, v10);
  v14 = (*(v11 + 80) + 24) & ~*(v11 + 80);
  v15 = (v12 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v15 + 15) & 0xFFFFFFFFFFFFFFF8;
  v17 = (v16 + 23) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  *(v18 + 16) = v4;
  (*(v11 + 32))(v18 + v14, v13, v10);
  v19 = v31;
  *(v18 + v15) = v30;
  v20 = (v18 + v16);
  v21 = v33;
  *v20 = v19;
  v20[1] = v21;
  *(v18 + v17) = ObjectType;
  aBlock[4] = partial apply for closure #1 in NearbyInvitationServiceClient.assertAdvertisementPublic(_:rotations:response:);
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_75;
  v22 = _Block_copy(aBlock);
  v23 = v4;

  static DispatchQoS.unspecified.getter();
  v39 = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  v25 = v34;
  v24 = v35;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v26 = v32;
  MEMORY[0x25F86F310](0, v9, v25, v22);
  _Block_release(v22);

  (*(v38 + 8))(v25, v24);
  (*(v36 + 8))(v9, v37);
}

void closure #1 in closure #1 in NearbyInvitationServiceClient.assertAdvertisementPublic(_:rotations:response:)(id *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v39 = a5;
  v36 = a4;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = *a1;
  if (one-time initialization token for client != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  __swift_project_value_buffer(v14, static Log.client);
  v15 = *(v11 + 16);
  v35 = a2;
  v15(v13, a2, v10);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v34 = v6;
    v19 = v18;
    v20 = swift_slowAlloc();
    v33 = a3;
    v21 = v20;
    aBlock[0] = v20;
    *v19 = 136315650;
    v22 = _typeName(_:qualified:)();
    v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v23, aBlock);

    *(v19 + 4) = v24;
    *(v19 + 12) = 2080;
    *(v19 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000030, 0x800000025B82F550, aBlock);
    *(v19 + 22) = 2080;
    lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v25 = dispatch thunk of CustomStringConvertible.description.getter();
    v27 = v26;
    (*(v11 + 8))(v13, v10);
    v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v27, aBlock);

    *(v19 + 24) = v28;
    _os_log_impl(&dword_25B7C4000, v16, v17, "%s %s %s", v19, 0x20u);
    swift_arrayDestroy();
    v29 = v21;
    a3 = v33;
    MEMORY[0x25F86FE20](v29, -1, -1);
    MEMORY[0x25F86FE20](v19, -1, -1);
  }

  else
  {

    (*(v11 + 8))(v13, v10);
  }

  isa = UUID._bridgeToObjectiveC()().super.isa;
  aBlock[4] = v36;
  aBlock[5] = v39;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@in_guaranteed UUID?, @guaranteed Error?) -> ();
  aBlock[3] = &block_descriptor_150;
  v31 = _Block_copy(aBlock);

  [v37 assertAdvertisementPublic:isa rotations:a3 response:v31];
  _Block_release(v31);
}

uint64_t thunk for @escaping @callee_guaranteed (@in_guaranteed UUID?, @guaranteed Error?) -> ()(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v14 - v7;
  v9 = *(a1 + 32);
  if (a2)
  {
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = type metadata accessor for UUID();
    (*(*(v10 - 8) + 56))(v8, 0, 1, v10);
  }

  else
  {
    v11 = type metadata accessor for UUID();
    (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  }

  v12 = a3;
  v9(v8, a3);

  return outlined destroy of NSObject?(v8, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
}

uint64_t NearbyInvitationServiceClient.releaseAdvertisementPublicAssertion(_:assertionIdentifier:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v34 = type metadata accessor for DispatchWorkItemFlags();
  v37 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v33 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v35 = *(v6 - 8);
  v36 = v6;
  MEMORY[0x28223BE20](v6);
  v30 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v12 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v29 - v13;
  v31 = XPCClient.queue.getter();
  v15 = *(v9 + 16);
  v15(v14, a1, v8);
  v15(v12, a2, v8);
  v16 = *(v9 + 80);
  v17 = (v16 + 24) & ~v16;
  v18 = (v10 + v16 + v17) & ~v16;
  v19 = (v10 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  *(v20 + 16) = v2;
  v21 = *(v9 + 32);
  v21(v20 + v17, v14, v8);
  v21(v20 + v18, v12, v8);
  *(v20 + v19) = ObjectType;
  aBlock[4] = partial apply for closure #1 in NearbyInvitationServiceClient.releaseAdvertisementPublicAssertion(_:assertionIdentifier:);
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_81;
  v22 = _Block_copy(aBlock);
  v23 = v2;
  v24 = v30;
  static DispatchQoS.unspecified.getter();
  v38 = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  v26 = v33;
  v25 = v34;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v27 = v31;
  MEMORY[0x25F86F310](0, v24, v26, v22);
  _Block_release(v22);

  (*(v37 + 8))(v26, v25);
  (*(v35 + 8))(v24, v36);
}

void closure #1 in closure #1 in NearbyInvitationServiceClient.releaseAdvertisementPublicAssertion(_:assertionIdentifier:)(id *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = *a1;
  if (one-time initialization token for client != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  __swift_project_value_buffer(v12, static Log.client);
  v13 = *(v9 + 16);
  v31 = a2;
  v13(v11, a2, v8);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v29[0] = a3;
    v17 = v16;
    v18 = swift_slowAlloc();
    v29[1] = v4;
    v19 = v18;
    v32 = v18;
    *v17 = 136315650;
    v20 = _typeName(_:qualified:)();
    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, &v32);

    *(v17 + 4) = v22;
    *(v17 + 12) = 2080;
    *(v17 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000003BLL, 0x800000025B82F4F0, &v32);
    *(v17 + 22) = 2080;
    lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v23 = dispatch thunk of CustomStringConvertible.description.getter();
    v25 = v24;
    (*(v9 + 8))(v11, v8);
    v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v25, &v32);

    *(v17 + 24) = v26;
    _os_log_impl(&dword_25B7C4000, v14, v15, "%s %s %s", v17, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x25F86FE20](v19, -1, -1);
    MEMORY[0x25F86FE20](v17, -1, -1);
  }

  else
  {

    (*(v9 + 8))(v11, v8);
  }

  isa = UUID._bridgeToObjectiveC()().super.isa;
  v28 = UUID._bridgeToObjectiveC()().super.isa;
  [v30 releaseAdvertisementPublicAssertion:isa assertionIdentifier:v28];
}

uint64_t objectdestroyTm()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

void closure #1 in closure #1 in NearbyInvitationServiceClient.releaseInvitation(_:response:)(void **a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *a1;
  if (one-time initialization token for client != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Log.client);
  v11 = a2;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v25 = a3;
    v14 = swift_slowAlloc();
    aBlock[7] = v5;
    v15 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    aBlock[0] = v24;
    *v14 = 136315650;
    v16 = _typeName(_:qualified:)();
    v18 = a4;
    v19 = v9;
    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, aBlock);

    *(v14 + 4) = v20;
    v9 = v19;
    a4 = v18;
    *(v14 + 12) = 2080;
    *(v14 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001ELL, 0x800000025B82F4D0, aBlock);
    *(v14 + 22) = 2112;
    *(v14 + 24) = v11;
    *v15 = v11;
    v21 = v11;
    _os_log_impl(&dword_25B7C4000, v12, v13, "%s %s %@", v14, 0x20u);
    outlined destroy of NSObject?(v15, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x25F86FE20](v15, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x25F86FE20](v24, -1, -1);
    v22 = v14;
    a3 = v25;
    MEMORY[0x25F86FE20](v22, -1, -1);
  }

  aBlock[4] = a3;
  aBlock[5] = a4;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed Error?) -> ();
  aBlock[3] = &block_descriptor_147;
  v23 = _Block_copy(aBlock);

  [v9 releaseInvitation:v11 response:v23];
  _Block_release(v23);
}

uint64_t NearbyInvitationServiceClient.stopAdvertisingNearbyInvitation(_:response:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v32 = a5;
  v33 = a6;
  v27 = a4;
  v30 = a2;
  v31 = a3;
  ObjectType = swift_getObjectType();
  v34 = type metadata accessor for DispatchWorkItemFlags();
  v37 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v35 = *(v10 - 8);
  v36 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for UUID();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = XPCClient.queue.getter();
  (*(v14 + 16))(v16, a1, v13);
  v17 = (*(v14 + 80) + 24) & ~*(v14 + 80);
  v18 = (v15 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  *(v19 + 16) = v6;
  (*(v14 + 32))(v19 + v17, v16, v13);
  v20 = (v19 + v18);
  v21 = v31;
  *v20 = v30;
  v20[1] = v21;
  *(v19 + ((v18 + 23) & 0xFFFFFFFFFFFFFFF8)) = ObjectType;
  aBlock[4] = v32;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = v33;
  v22 = _Block_copy(aBlock);
  v23 = v6;

  static DispatchQoS.unspecified.getter();
  v38 = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  v24 = v34;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v25 = v29;
  MEMORY[0x25F86F310](0, v12, v9, v22);
  _Block_release(v22);

  (*(v37 + 8))(v9, v24);
  (*(v35 + 8))(v12, v36);
}

uint64_t objectdestroy_53Tm()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, ((v5 + 23) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

void closure #1 in closure #1 in NearbyInvitationServiceClient.scanNearbyInvitations(scannerID:response:)(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *a1;
  if (one-time initialization token for client != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Log.client);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    aBlock[0] = v20;
    *v11 = 136315394;
    v12 = _typeName(_:qualified:)();
    log = v9;
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, aBlock);

    *(v11 + 4) = v14;
    *(v11 + 12) = 2080;
    *(v11 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002ALL, 0x800000025B82F4A0, aBlock);
    _os_log_impl(&dword_25B7C4000, v9, v10, "%s %s", v11, 0x16u);
    v15 = v20;
    swift_arrayDestroy();
    MEMORY[0x25F86FE20](v15, -1, -1);
    MEMORY[0x25F86FE20](v11, -1, -1);
  }

  else
  {
  }

  isa = UUID._bridgeToObjectiveC()().super.isa;
  aBlock[4] = a3;
  aBlock[5] = a4;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed Error?) -> ();
  aBlock[3] = &block_descriptor_144;
  v17 = _Block_copy(aBlock);

  [v7 scanNearbyInvitationsWithScannerID:isa response:v17];
  _Block_release(v17);
}

uint64_t NearbyInvitationServiceClient.scanNearbyEndpoints(params:scannerID:response:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28 = a3;
  v29 = a4;
  ObjectType = swift_getObjectType();
  v32 = type metadata accessor for DispatchWorkItemFlags();
  v35 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v31 = &ObjectType - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v33 = *(v8 - 8);
  v34 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &ObjectType - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &ObjectType - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = XPCClient.queue.getter();
  (*(v12 + 16))(v14, a2, v11);
  v15 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v16 = (v13 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  *(v17 + 16) = v4;
  *(v17 + 24) = a1;
  (*(v12 + 32))(v17 + v15, v14, v11);
  v18 = (v17 + v16);
  v19 = v29;
  *v18 = v28;
  v18[1] = v19;
  *(v17 + ((v16 + 23) & 0xFFFFFFFFFFFFFFF8)) = ObjectType;
  aBlock[4] = partial apply for closure #1 in NearbyInvitationServiceClient.scanNearbyEndpoints(params:scannerID:response:);
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_99;
  v20 = _Block_copy(aBlock);
  v21 = v4;
  v22 = a1;

  static DispatchQoS.unspecified.getter();
  v36 = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  v24 = v31;
  v23 = v32;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v25 = v30;
  MEMORY[0x25F86F310](0, v10, v24, v20);
  _Block_release(v20);

  (*(v35 + 8))(v24, v23);
  (*(v33 + 8))(v10, v34);
}

void closure #1 in closure #1 in NearbyInvitationServiceClient.scanNearbyEndpoints(params:scannerID:response:)(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *a1;
  if (one-time initialization token for client != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  __swift_project_value_buffer(v11, static Log.client);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    aBlock[7] = v6;
    v24 = swift_slowAlloc();
    aBlock[0] = v24;
    *v14 = 136315394;
    v15 = _typeName(_:qualified:)();
    v17 = a5;
    v18 = a4;
    v19 = v10;
    v20 = a2;
    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, aBlock);

    *(v14 + 4) = v21;
    a2 = v20;
    v10 = v19;
    a4 = v18;
    a5 = v17;
    *(v14 + 12) = 2080;
    *(v14 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002FLL, 0x800000025B82F470, aBlock);
    _os_log_impl(&dword_25B7C4000, v12, v13, "%s %s", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25F86FE20](v24, -1, -1);
    MEMORY[0x25F86FE20](v14, -1, -1);
  }

  isa = UUID._bridgeToObjectiveC()().super.isa;
  aBlock[4] = a4;
  aBlock[5] = a5;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed Error?) -> ();
  aBlock[3] = &block_descriptor_141;
  v23 = _Block_copy(aBlock);

  [v10 scanNearbyEndpointsWithParams:a2 scannerID:isa response:v23];
  _Block_release(v23);
}

uint64_t NearbyInvitationServiceClient.generateNearbyInvitation(provider:response:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v25 = a5;
  v26 = a6;
  v23 = a1;
  v24 = a2;
  ObjectType = swift_getObjectType();
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for DispatchQoS();
  v13 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = XPCClient.queue.getter();
  v17 = swift_allocObject();
  v19 = v23;
  v18 = v24;
  v17[2] = v6;
  v17[3] = v19;
  v17[4] = v18;
  v17[5] = a3;
  v17[6] = ObjectType;
  aBlock[4] = v25;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = v26;
  v20 = _Block_copy(aBlock);
  v21 = v6;

  static DispatchQoS.unspecified.getter();
  v28 = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x25F86F310](0, v15, v12, v20);
  _Block_release(v20);

  (*(v10 + 8))(v12, v9);
  (*(v13 + 8))(v15, v27);
}

uint64_t objectdestroy_35Tm()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

void closure #1 in closure #1 in NearbyInvitationServiceClient.stopScanningNearbyInvitations(provider:response:)(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *a1;
  if (one-time initialization token for client != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, static Log.client);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    aBlock[0] = v20;
    *v12 = 136315394;
    v13 = _typeName(_:qualified:)();
    log = v10;
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, aBlock);

    *(v12 + 4) = v15;
    *(v12 + 12) = 2080;
    *(v12 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000031, 0x800000025B82F430, aBlock);
    _os_log_impl(&dword_25B7C4000, v10, v11, "%s %s", v12, 0x16u);
    v16 = v20;
    swift_arrayDestroy();
    MEMORY[0x25F86FE20](v16, -1, -1);
    MEMORY[0x25F86FE20](v12, -1, -1);
  }

  else
  {
  }

  aBlock[4] = a3;
  aBlock[5] = a4;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed Error?) -> ();
  aBlock[3] = &block_descriptor_138;
  v17 = _Block_copy(aBlock);

  [v8 stopScanningNearbyInvitationsWithProvider:a2 response:v17];
  _Block_release(v17);
}

uint64_t NearbyInvitationServiceClient.approve(pendingMember:response:completion:)(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v29 = a6;
  v30 = a7;
  v28 = a3;
  ObjectType = swift_getObjectType();
  v11 = type metadata accessor for DispatchWorkItemFlags();
  v32 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for DispatchQoS();
  v14 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = XPCClient.queue.getter();
  v18 = swift_allocObject();
  v18[2] = v7;
  v18[3] = a1;
  v19 = ObjectType;
  v20 = v28;
  v18[4] = a2;
  v18[5] = v20;
  v18[6] = a4;
  v18[7] = v19;
  aBlock[4] = v29;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = v30;
  v21 = _Block_copy(aBlock);
  v22 = v7;
  v23 = a1;
  v24 = a2;

  static DispatchQoS.unspecified.getter();
  v33 = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x25F86F310](0, v16, v13, v21);
  _Block_release(v21);

  (*(v32 + 8))(v13, v11);
  (*(v14 + 8))(v16, v31);
}

void closure #1 in closure #1 in NearbyInvitationServiceClient.requestConnection(with:localInvitation:response:)(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *a1;
  if (one-time initialization token for client != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  __swift_project_value_buffer(v12, static Log.client);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v26 = a4;
    v15 = swift_slowAlloc();
    aBlock[7] = v6;
    v25 = swift_slowAlloc();
    aBlock[0] = v25;
    *v15 = 136315394;
    v16 = _typeName(_:qualified:)();
    v18 = a5;
    v19 = v11;
    v20 = a2;
    v21 = a3;
    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, aBlock);

    *(v15 + 4) = v22;
    a3 = v21;
    a2 = v20;
    v11 = v19;
    a5 = v18;
    *(v15 + 12) = 2080;
    *(v15 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000031, 0x800000025B82F3F0, aBlock);
    _os_log_impl(&dword_25B7C4000, v13, v14, "%s %s", v15, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25F86FE20](v25, -1, -1);
    v23 = v15;
    a4 = v26;
    MEMORY[0x25F86FE20](v23, -1, -1);
  }

  aBlock[4] = a4;
  aBlock[5] = a5;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed InvitationJoinResponse?, @guaranteed Error?) -> ();
  aBlock[3] = &block_descriptor_135;
  v24 = _Block_copy(aBlock);

  [v11 requestConnectionWith:a2 localInvitation:a3 response:v24];
  _Block_release(v24);
}

uint64_t objectdestroy_23Tm()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

void closure #1 in closure #1 in NearbyInvitationServiceClient.requestEndpointConnection(with:pseudonym:response:)(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *a1;
  if (one-time initialization token for client != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  __swift_project_value_buffer(v12, static Log.client);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v26 = a4;
    v15 = swift_slowAlloc();
    aBlock[7] = v6;
    v25 = swift_slowAlloc();
    aBlock[0] = v25;
    *v15 = 136315394;
    v16 = _typeName(_:qualified:)();
    v18 = a5;
    v19 = v11;
    v20 = a2;
    v21 = a3;
    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, aBlock);

    *(v15 + 4) = v22;
    a3 = v21;
    a2 = v20;
    v11 = v19;
    a5 = v18;
    *(v15 + 12) = 2080;
    *(v15 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000033, 0x800000025B82F370, aBlock);
    _os_log_impl(&dword_25B7C4000, v13, v14, "%s %s", v15, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25F86FE20](v25, -1, -1);
    v23 = v15;
    a4 = v26;
    MEMORY[0x25F86FE20](v23, -1, -1);
  }

  aBlock[4] = a4;
  aBlock[5] = a5;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed Error?) -> ();
  aBlock[3] = &block_descriptor_132;
  v24 = _Block_copy(aBlock);

  [v11 requestEndpointConnectionWith:a2 pseudonym:a3 response:v24];
  _Block_release(v24);
}

uint64_t NearbyInvitationServiceClient.approveConnectionRequest(_:localInvitation:)(void *a1, uint64_t a2, unint64_t a3)
{
  ObjectType = swift_getObjectType();
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v22 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for DispatchQoS();
  v11 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = XPCClient.queue.getter();
  v15 = swift_allocObject();
  v15[2] = v3;
  v15[3] = a1;
  v15[4] = a2;
  v15[5] = a3;
  v15[6] = ObjectType;
  aBlock[4] = partial apply for closure #1 in NearbyInvitationServiceClient.approveConnectionRequest(_:localInvitation:);
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_123;
  v16 = _Block_copy(aBlock);
  v17 = v3;
  v18 = a1;
  outlined copy of Data._Representation(a2, a3);
  static DispatchQoS.unspecified.getter();
  v23 = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x25F86F310](0, v13, v10, v16);
  _Block_release(v16);

  (*(v22 + 8))(v10, v8);
  (*(v11 + 8))(v13, v21);
}

uint64_t outlined consume of Data._Representation(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
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

void closure #1 in closure #1 in NearbyInvitationServiceClient.approveConnectionRequest(_:localInvitation:)(void **a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *a1;
  if (one-time initialization token for client != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, static Log.client);
  v8 = a2;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v20 = v19;
    *v11 = 136315650;
    v13 = _typeName(_:qualified:)();
    v15 = v6;
    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v20);

    *(v11 + 4) = v16;
    v6 = v15;
    *(v11 + 12) = 2080;
    *(v11 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002CLL, 0x800000025B82F320, &v20);
    *(v11 + 22) = 2112;
    *(v11 + 24) = v8;
    *v12 = v8;
    v17 = v8;
    _os_log_impl(&dword_25B7C4000, v9, v10, "%s %s %@", v11, 0x20u);
    outlined destroy of NSObject?(v12, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x25F86FE20](v12, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x25F86FE20](v19, -1, -1);
    MEMORY[0x25F86FE20](v11, -1, -1);
  }

  isa = Data._bridgeToObjectiveC()().super.isa;
  [v6 approveConnectionRequest:v8 localInvitation:isa];
}

uint64_t NearbyInvitationServiceClient.denyConnectionRequest(_:)(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = XPCClient.queue.getter();
  v13 = swift_allocObject();
  v13[2] = v1;
  v13[3] = a1;
  v13[4] = ObjectType;
  aBlock[4] = partial apply for closure #1 in NearbyInvitationServiceClient.denyConnectionRequest(_:);
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_129;
  v14 = _Block_copy(aBlock);
  v15 = v1;
  v16 = a1;
  static DispatchQoS.unspecified.getter();
  v18[1] = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x25F86F310](0, v11, v7, v14);
  _Block_release(v14);

  (*(v5 + 8))(v7, v4);
  (*(v9 + 8))(v11, v8);
}

id closure #1 in closure #1 in NearbyInvitationServiceClient.denyConnectionRequest(_:)(void **a1, void *a2, uint64_t a3)
{
  v4 = *a1;
  if (one-time initialization token for client != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static Log.client);
  v6 = a2;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v17 = v16;
    *v9 = 136315650;
    v11 = _typeName(_:qualified:)();
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v17);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2080;
    *(v9 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000019, 0x800000025B82F300, &v17);
    *(v9 + 22) = 2112;
    *(v9 + 24) = v6;
    *v10 = v6;
    v14 = v6;
    _os_log_impl(&dword_25B7C4000, v7, v8, "%s %s %@", v9, 0x20u);
    outlined destroy of NSObject?(v10, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x25F86FE20](v10, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x25F86FE20](v16, -1, -1);
    MEMORY[0x25F86FE20](v9, -1, -1);
  }

  return [v4 denyConnectionRequest_];
}

id NearbyInvitationServiceClient.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t protocol witness for NearbyInvitationsControllerDataSourceProtocol.delegate.setter in conformance NearbyInvitationServiceClient(uint64_t a1, uint64_t a2)
{
  v4 = v2 + direct field offset for NearbyInvitationServiceClient.delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t (*protocol witness for NearbyInvitationsControllerDataSourceProtocol.delegate.modify in conformance NearbyInvitationServiceClient(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = direct field offset for NearbyInvitationServiceClient.delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return protocol witness for NearbyInvitationsControllerDataSourceProtocol.delegate.modify in conformance NearbyInvitationServiceClient;
}

void NearbyInvitationServiceClient.delegate.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + *(*a1 + 48) + 8) = *(*a1 + 32);
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

uint64_t NearbyInvitationServiceClient.didReceiveInvitationApprovalRequest(request:)(void *a1)
{
  v2 = v1;
  if (one-time initialization token for client != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Log.client);
  v5 = a1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    *(v8 + 4) = v5;
    *v9 = v5;
    v10 = v5;
    _os_log_impl(&dword_25B7C4000, v6, v7, "Did receive invitation approval request: %@", v8, 0xCu);
    outlined destroy of NSObject?(v9, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x25F86FE20](v9, -1, -1);
    MEMORY[0x25F86FE20](v8, -1, -1);
  }

  v11 = v2 + direct field offset for NearbyInvitationServiceClient.delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v13 = *(v11 + 8);
    ObjectType = swift_getObjectType();
    (*(*(v13 + 8) + 16))(v5, ObjectType);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t NearbyInvitationServiceClient.didReceiveConnectionRequest(advertisement:)(uint64_t a1)
{
  v2 = v1;
  if (one-time initialization token for client != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Log.client);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_25B7C4000, v5, v6, "Did discover nearby advertisement from the host", v7, 2u);
    MEMORY[0x25F86FE20](v7, -1, -1);
  }

  v8 = v2 + direct field offset for NearbyInvitationServiceClient.delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v10 = *(v8 + 8);
    ObjectType = swift_getObjectType();
    (*(*(v10 + 8) + 24))(a1, ObjectType);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t NearbyInvitationServiceClient.didDiscoverNearbyAdvertisement(advertisement:)(uint64_t a1)
{
  v2 = v1;
  if (one-time initialization token for client != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Log.client);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_25B7C4000, v5, v6, "Did discover nearby advertisement from the host", v7, 2u);
    MEMORY[0x25F86FE20](v7, -1, -1);
  }

  v8 = v2 + direct field offset for NearbyInvitationServiceClient.delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v10 = *(v8 + 8);
    ObjectType = swift_getObjectType();
    (*(*(v10 + 8) + 32))(a1, ObjectType);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t NearbyInvitationServiceClient.didLoseNearbyAdvertisement(advertisement:)(uint64_t a1)
{
  v2 = v1;
  if (one-time initialization token for client != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Log.client);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_25B7C4000, v5, v6, "Did lose nearby advertisement from the host", v7, 2u);
    MEMORY[0x25F86FE20](v7, -1, -1);
  }

  v8 = v2 + direct field offset for NearbyInvitationServiceClient.delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v10 = *(v8 + 8);
    ObjectType = swift_getObjectType();
    (*(*(v10 + 8) + 40))(a1, ObjectType);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t NearbyInvitationServiceClient.didDiscoverNearbySessionInvitation(id:invitation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (one-time initialization token for client != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Log.client);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_25B7C4000, v11, v12, "Did discover nearby advertisement from the host", v13, 2u);
    MEMORY[0x25F86FE20](v13, -1, -1);
  }

  v14 = v5 + direct field offset for NearbyInvitationServiceClient.delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v16 = *(v14 + 8);
    ObjectType = swift_getObjectType();
    (*(*(v16 + 8) + 48))(a1, a2, a3, a4, ObjectType);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t NearbyInvitationServiceClient.didReceiveSessionJoinResponse(response:)(uint64_t a1)
{
  v2 = v1;
  if (one-time initialization token for client != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Log.client);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_25B7C4000, v5, v6, "Did receive join response from the host", v7, 2u);
    MEMORY[0x25F86FE20](v7, -1, -1);
  }

  v8 = v2 + direct field offset for NearbyInvitationServiceClient.delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v10 = *(v8 + 8);
    ObjectType = swift_getObjectType();
    (*(*(v10 + 8) + 56))(a1, ObjectType);
    return swift_unknownObjectRelease();
  }

  return result;
}

void @objc NearbyInvitationServiceClient.didReceiveInvitationApprovalRequest(request:)(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  NearbyInvitationServiceClient.didReceiveInvitationApprovalRequest(request:)(v4);
}

void @objc NearbyInvitationServiceClient.didReceiveConnectionRequest(advertisement:)(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  NearbyInvitationServiceClient.didReceiveConnectionRequest(advertisement:)(v4);
}

void @objc NearbyInvitationServiceClient.didDiscoverNearbyAdvertisement(advertisement:)(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  NearbyInvitationServiceClient.didDiscoverNearbyAdvertisement(advertisement:)(v4);
}

void @objc NearbyInvitationServiceClient.didLoseNearbyAdvertisement(advertisement:)(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  NearbyInvitationServiceClient.didLoseNearbyAdvertisement(advertisement:)(v4);
}

uint64_t @objc NearbyInvitationServiceClient.didDiscoverNearbySessionInvitation(id:invitation:)(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v9 = a4;
  v10 = a1;
  v11 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  NearbyInvitationServiceClient.didDiscoverNearbySessionInvitation(id:invitation:)(v6, v8, v11, v13);
  outlined consume of Data._Representation(v11, v13);
}

void @objc NearbyInvitationServiceClient.didReceiveSessionJoinResponse(response:)(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  NearbyInvitationServiceClient.didReceiveSessionJoinResponse(response:)(v4);
}

void *_StringGuts._allocateForDeconstruct()(uint64_t a1, unint64_t a2)
{
  v3 = specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2);
  specialized Array.append<A>(contentsOf:)(&outlined read-only object #0 of _StringGuts._allocateForDeconstruct());
  return v3;
}

void *specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = _StringObject.sharedUTF8.getter();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t specialized Array.append<A>(contentsOf:)(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
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
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
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
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy14NearbySessions0D5GroupC6MemberVGMd, &_ss23_ContiguousArrayStorageCy14NearbySessions0D5GroupC6MemberVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t type metadata accessor for NearbyInvitationServiceClient(uint64_t a1)
{
  result = type metadata singleton initialization cache for NearbyInvitationServiceClient;
  if (!type metadata singleton initialization cache for NearbyInvitationServiceClient)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata accessor for CBNearbyInfoV2InvitationRouteType()
{
  if (!lazy cache variable for type metadata for CBNearbyInfoV2InvitationRouteType)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &lazy cache variable for type metadata for CBNearbyInfoV2InvitationRouteType);
    }
  }
}

uint64_t lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t outlined destroy of NSObject?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t objectdestroy_59Tm(uint64_t a1)
{

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

uint64_t Invitation_HostConnectionInfo.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = xmmword_25B82C2F0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  type metadata accessor for Invitation_HostConnectionInfo(0);
  return UnknownStorage.init()();
}

uint64_t Invitation_InvitationData.invitationID.getter()
{
  v1 = *v0;
  outlined copy of Data._Representation(*v0, *(v0 + 8));
  return v1;
}

uint64_t Invitation_InvitationData.invitationID.setter(uint64_t a1, uint64_t a2)
{
  result = outlined consume of Data._Representation(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
  return result;
}

uint64_t Invitation_InvitationData.displayName.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t Invitation_InvitationData.displayName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t Invitation_InvitationData.userInfo.getter()
{
  v1 = (v0 + *(type metadata accessor for Invitation_InvitationData(0) + 28));
  v2 = v1[1];
  if (v2 >> 60 == 15)
  {
    v3 = 0;
  }

  else
  {
    v3 = *v1;
  }

  outlined copy of Data?(*v1, v2);
  return v3;
}

uint64_t outlined copy of Data?(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return outlined copy of Data._Representation(result, a2);
  }

  return result;
}

uint64_t key path setter for Invitation_InvitationData.userInfo : Invitation_InvitationData(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (a2 + *(type metadata accessor for Invitation_InvitationData(0) + 28));
  v5 = *v4;
  v6 = v4[1];
  outlined copy of Data._Representation(v2, v3);
  result = outlined consume of Data?(v5, v6);
  *v4 = v2;
  v4[1] = v3;
  return result;
}

uint64_t Invitation_InvitationData.userInfo.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for Invitation_InvitationData(0) + 28);
  result = outlined consume of Data?(*v5, *(v5 + 8));
  *v5 = a1;
  *(v5 + 8) = a2;
  return result;
}

uint64_t outlined consume of Data?(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return outlined consume of Data._Representation(result, a2);
  }

  return result;
}

uint64_t (*Invitation_InvitationData.userInfo.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 16) = v1;
  v3 = *(type metadata accessor for Invitation_InvitationData(0) + 28);
  *(a1 + 24) = v3;
  v4 = (v1 + v3);
  v5 = *v4;
  v6 = v4[1];
  if (v6 >> 60 == 15)
  {
    v7 = 0;
  }

  else
  {
    v7 = *v4;
  }

  v8 = 0xC000000000000000;
  if (v6 >> 60 != 15)
  {
    v8 = v6;
  }

  *a1 = v7;
  *(a1 + 8) = v8;
  outlined copy of Data?(v5, v6);
  return Invitation_InvitationData.userInfo.modify;
}

uint64_t Invitation_InvitationData.userInfo.modify(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16) + *(a1 + 24);
  v4 = *a1;
  v5 = *v3;
  v6 = *(v3 + 8);
  if (a2)
  {
    outlined copy of Data._Representation(*a1, v2);
    outlined consume of Data?(v5, v6);
    *v3 = v4;
    *(v3 + 8) = v2;

    return outlined consume of Data._Representation(v4, v2);
  }

  else
  {
    result = outlined consume of Data?(*v3, *(v3 + 8));
    *v3 = v4;
    *(v3 + 8) = v2;
  }

  return result;
}

Swift::Void __swiftcall Invitation_InvitationData.clearUserInfo()()
{
  v1 = v0 + *(type metadata accessor for Invitation_InvitationData(0) + 28);
  outlined consume of Data?(*v1, *(v1 + 8));
  *v1 = xmmword_25B82C300;
}

uint64_t Invitation_InvitationData.hostConnectionInfo.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14NearbySessions29Invitation_HostConnectionInfoVSgMd, &_s14NearbySessions29Invitation_HostConnectionInfoVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v10 - v4;
  v6 = type metadata accessor for Invitation_InvitationData(0);
  outlined init with copy of Invitation_HostConnectionInfo?(v1 + *(v6 + 32), v5);
  v7 = type metadata accessor for Invitation_HostConnectionInfo(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return outlined init with take of Invitation_HostConnectionInfo(v5, a1);
  }

  *a1 = xmmword_25B82C2F0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  UnknownStorage.init()();
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return outlined destroy of NSObject?(v5, &_s14NearbySessions29Invitation_HostConnectionInfoVSgMd, &_s14NearbySessions29Invitation_HostConnectionInfoVSgMR);
  }

  return result;
}

uint64_t outlined init with copy of Invitation_HostConnectionInfo?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14NearbySessions29Invitation_HostConnectionInfoVSgMd, &_s14NearbySessions29Invitation_HostConnectionInfoVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of Invitation_HostConnectionInfo(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Invitation_HostConnectionInfo(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t key path getter for Invitation_InvitationData.hostConnectionInfo : Invitation_InvitationData@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14NearbySessions29Invitation_HostConnectionInfoVSgMd, &_s14NearbySessions29Invitation_HostConnectionInfoVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v11 - v5;
  v7 = type metadata accessor for Invitation_InvitationData(0);
  outlined init with copy of Invitation_HostConnectionInfo?(a1 + *(v7 + 32), v6);
  v8 = type metadata accessor for Invitation_HostConnectionInfo(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return outlined init with take of Invitation_HostConnectionInfo(v6, a2);
  }

  *a2 = xmmword_25B82C2F0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0xE000000000000000;
  UnknownStorage.init()();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return outlined destroy of NSObject?(v6, &_s14NearbySessions29Invitation_HostConnectionInfoVSgMd, &_s14NearbySessions29Invitation_HostConnectionInfoVSgMR);
  }

  return result;
}

uint64_t key path setter for Invitation_InvitationData.hostConnectionInfo : Invitation_InvitationData(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Invitation_HostConnectionInfo(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Invitation_HostConnectionInfo(a1, v7);
  v8 = *(type metadata accessor for Invitation_InvitationData(0) + 32);
  outlined destroy of NSObject?(a2 + v8, &_s14NearbySessions29Invitation_HostConnectionInfoVSgMd, &_s14NearbySessions29Invitation_HostConnectionInfoVSgMR);
  outlined init with take of Invitation_HostConnectionInfo(v7, a2 + v8);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

uint64_t Invitation_InvitationData.hostConnectionInfo.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Invitation_InvitationData(0) + 32);
  outlined destroy of NSObject?(v1 + v3, &_s14NearbySessions29Invitation_HostConnectionInfoVSgMd, &_s14NearbySessions29Invitation_HostConnectionInfoVSgMR);
  outlined init with take of Invitation_HostConnectionInfo(a1, v1 + v3);
  v4 = type metadata accessor for Invitation_HostConnectionInfo(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Invitation_InvitationData.hostConnectionInfo.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14NearbySessions29Invitation_HostConnectionInfoVSgMd, &_s14NearbySessions29Invitation_HostConnectionInfoVSgMR) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Invitation_HostConnectionInfo(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Invitation_InvitationData(0) + 32);
  *(v5 + 12) = v15;
  outlined init with copy of Invitation_HostConnectionInfo?(v1 + v15, v8);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = xmmword_25B82C2F0;
    *(v14 + 16) = 0;
    *(v14 + 24) = 0xE000000000000000;
    UnknownStorage.init()();
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of NSObject?(v8, &_s14NearbySessions29Invitation_HostConnectionInfoVSgMd, &_s14NearbySessions29Invitation_HostConnectionInfoVSgMR);
    }
  }

  else
  {
    outlined init with take of Invitation_HostConnectionInfo(v8, v14);
  }

  return Invitation_InvitationData.hostConnectionInfo.modify;
}

void Invitation_InvitationData.hostConnectionInfo.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    outlined init with copy of Invitation_HostConnectionInfo((*a1)[5], v4);
    outlined destroy of NSObject?(v9 + v3, &_s14NearbySessions29Invitation_HostConnectionInfoVSgMd, &_s14NearbySessions29Invitation_HostConnectionInfoVSgMR);
    outlined init with take of Invitation_HostConnectionInfo(v4, v9 + v3);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    outlined destroy of Invitation_HostConnectionInfo(v5);
  }

  else
  {
    outlined destroy of NSObject?(v9 + v3, &_s14NearbySessions29Invitation_HostConnectionInfoVSgMd, &_s14NearbySessions29Invitation_HostConnectionInfoVSgMR);
    outlined init with take of Invitation_HostConnectionInfo(v5, v9 + v3);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

uint64_t outlined init with copy of Invitation_HostConnectionInfo(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Invitation_HostConnectionInfo(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of Invitation_HostConnectionInfo(uint64_t a1)
{
  v2 = type metadata accessor for Invitation_HostConnectionInfo(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

BOOL Invitation_InvitationData.hasHostConnectionInfo.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14NearbySessions29Invitation_HostConnectionInfoVSgMd, &_s14NearbySessions29Invitation_HostConnectionInfoVSgMR);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v8 - v2;
  v4 = type metadata accessor for Invitation_InvitationData(0);
  outlined init with copy of Invitation_HostConnectionInfo?(v0 + *(v4 + 32), v3);
  v5 = type metadata accessor for Invitation_HostConnectionInfo(0);
  v6 = (*(*(v5 - 8) + 48))(v3, 1, v5) != 1;
  outlined destroy of NSObject?(v3, &_s14NearbySessions29Invitation_HostConnectionInfoVSgMd, &_s14NearbySessions29Invitation_HostConnectionInfoVSgMR);
  return v6;
}

Swift::Void __swiftcall Invitation_InvitationData.clearHostConnectionInfo()()
{
  v1 = *(type metadata accessor for Invitation_InvitationData(0) + 32);
  outlined destroy of NSObject?(v0 + v1, &_s14NearbySessions29Invitation_HostConnectionInfoVSgMd, &_s14NearbySessions29Invitation_HostConnectionInfoVSgMR);
  v2 = type metadata accessor for Invitation_HostConnectionInfo(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t Invitation_HostConnectionInfo.unknownFields.getter@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 24);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t Invitation_HostConnectionInfo.unknownFields.setter(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 24);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t Invitation_InvitationData.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = xmmword_25B82C2F0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  v2 = type metadata accessor for Invitation_InvitationData(0);
  UnknownStorage.init()();
  *(a1 + *(v2 + 28)) = xmmword_25B82C300;
  v3 = *(v2 + 32);
  v4 = type metadata accessor for Invitation_HostConnectionInfo(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1 + v3, 1, 1, v4);
}

uint64_t one-time initialization function for _protobuf_nameMap()
{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Invitation_HostConnectionInfo._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Invitation_HostConnectionInfo._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_25B82C310;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "publicKey";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "handle";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Invitation_InvitationData._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Invitation_InvitationData._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_25B82C320;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "invitationID";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "displayName";
  *(v10 + 8) = 11;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "userInfo";
  *(v12 + 1) = 8;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "hostConnectionInfo";
  *(v14 + 1) = 18;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t Invitation_HostConnectionInfo.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      dispatch thunk of Decoder.decodeSingularBytesField(value:)();
    }

    else if (result == 2)
    {
      dispatch thunk of Decoder.decodeSingularStringField(value:)();
    }
  }

  return result;
}

uint64_t Invitation_HostConnectionInfo.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v3;
  v6 = v3[1];
  v7 = v6 >> 62;
  if ((v6 >> 62) > 1)
  {
    if (v7 != 2)
    {
      goto LABEL_10;
    }

    v8 = *(v5 + 16);
    v9 = *(v5 + 24);
  }

  else
  {
    if (!v7)
    {
      if ((v6 & 0xFF000000000000) == 0)
      {
        goto LABEL_10;
      }

LABEL_9:
      result = dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
      if (v4)
      {
        return result;
      }

      goto LABEL_10;
    }

    v8 = v5;
    v9 = v5 >> 32;
  }

  if (v8 != v9)
  {
    goto LABEL_9;
  }

LABEL_10:
  v11 = v3[3];
  v12 = HIBYTE(v11) & 0xF;
  if ((v11 & 0x2000000000000000) == 0)
  {
    v12 = v3[2] & 0xFFFFFFFFFFFFLL;
  }

  if (!v12 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v4))
  {
    type metadata accessor for Invitation_HostConnectionInfo(0);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance Invitation_HostConnectionInfo@<X0>(uint64_t a1@<X8>)
{
  *a1 = xmmword_25B82C2F0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Invitation_HostConnectionInfo(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Invitation_HostConnectionInfo and conformance Invitation_HostConnectionInfo(&lazy protocol witness table cache variable for type Invitation_HostConnectionInfo and conformance Invitation_HostConnectionInfo, type metadata accessor for Invitation_HostConnectionInfo, &protocol conformance descriptor for Invitation_HostConnectionInfo);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Invitation_HostConnectionInfo(uint64_t a1)
{
  lazy protocol witness table accessor for type Invitation_HostConnectionInfo and conformance Invitation_HostConnectionInfo(&lazy protocol witness table cache variable for type Invitation_HostConnectionInfo and conformance Invitation_HostConnectionInfo, type metadata accessor for Invitation_HostConnectionInfo, &protocol conformance descriptor for Invitation_HostConnectionInfo);

  return Message.debugDescription.getter();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Invitation_HostConnectionInfo(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type Invitation_HostConnectionInfo and conformance Invitation_HostConnectionInfo(&lazy protocol witness table cache variable for type Invitation_HostConnectionInfo and conformance Invitation_HostConnectionInfo, type metadata accessor for Invitation_HostConnectionInfo, &protocol conformance descriptor for Invitation_HostConnectionInfo);

  return Message.hash(into:)();
}

uint64_t Invitation_HostConnectionInfo._protobuf_nameMap.unsafeMutableAddressor(void *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for _NameMap();

  return __swift_project_value_buffer(v4, a2);
}

uint64_t static Invitation_HostConnectionInfo._protobuf_nameMap.getter@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for _NameMap();
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t Invitation_InvitationData.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result > 2)
    {
      if (result == 3)
      {
        type metadata accessor for Invitation_InvitationData(0);
        dispatch thunk of Decoder.decodeSingularBytesField(value:)();
      }

      else if (result == 4)
      {
        closure #4 in Invitation_InvitationData.decodeMessage<A>(decoder:)(a1, v5, a2, a3);
      }
    }

    else if (result == 1)
    {
      dispatch thunk of Decoder.decodeSingularBytesField(value:)();
    }

    else if (result == 2)
    {
      dispatch thunk of Decoder.decodeSingularStringField(value:)();
    }
  }

  return result;
}

uint64_t closure #4 in Invitation_InvitationData.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Invitation_InvitationData(0);
  type metadata accessor for Invitation_HostConnectionInfo(0);
  lazy protocol witness table accessor for type Invitation_HostConnectionInfo and conformance Invitation_HostConnectionInfo(&lazy protocol witness table cache variable for type Invitation_HostConnectionInfo and conformance Invitation_HostConnectionInfo, type metadata accessor for Invitation_HostConnectionInfo, &protocol conformance descriptor for Invitation_HostConnectionInfo);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t Invitation_InvitationData.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = v3[1];
  v10 = v9 >> 62;
  if ((v9 >> 62) > 1)
  {
    if (v10 != 2)
    {
      goto LABEL_10;
    }

    v11 = *(v8 + 16);
    v12 = *(v8 + 24);
  }

  else
  {
    if (!v10)
    {
      if ((v9 & 0xFF000000000000) == 0)
      {
        goto LABEL_10;
      }

LABEL_9:
      result = dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
      if (v4)
      {
        return result;
      }

      goto LABEL_10;
    }

    v11 = v8;
    v12 = v8 >> 32;
  }

  if (v11 != v12)
  {
    goto LABEL_9;
  }

LABEL_10:
  v14 = v3[3];
  v15 = HIBYTE(v14) & 0xF;
  if ((v14 & 0x2000000000000000) == 0)
  {
    v15 = v3[2] & 0xFFFFFFFFFFFFLL;
  }

  if (!v15 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v4))
  {
    result = closure #1 in Invitation_InvitationData.traverse<A>(visitor:)(v3);
    if (!v4)
    {
      closure #2 in Invitation_InvitationData.traverse<A>(visitor:)(v3, a1, a2, a3);
      type metadata accessor for Invitation_InvitationData(0);
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

uint64_t closure #1 in Invitation_InvitationData.traverse<A>(visitor:)(uint64_t a1)
{
  result = type metadata accessor for Invitation_InvitationData(0);
  v3 = a1 + *(result + 28);
  v4 = *(v3 + 8);
  if (v4 >> 60 != 15)
  {
    v5 = *v3;
    outlined copy of Data._Representation(*v3, *(v3 + 8));
    dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
    return outlined consume of Data?(v5, v4);
  }

  return result;
}

uint64_t closure #2 in Invitation_InvitationData.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14NearbySessions29Invitation_HostConnectionInfoVSgMd, &_s14NearbySessions29Invitation_HostConnectionInfoVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Invitation_HostConnectionInfo(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Invitation_InvitationData(0);
  outlined init with copy of Invitation_HostConnectionInfo?(a1 + *(v12 + 32), v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of NSObject?(v7, &_s14NearbySessions29Invitation_HostConnectionInfoVSgMd, &_s14NearbySessions29Invitation_HostConnectionInfoVSgMR);
  }

  outlined init with take of Invitation_HostConnectionInfo(v7, v11);
  lazy protocol witness table accessor for type Invitation_HostConnectionInfo and conformance Invitation_HostConnectionInfo(&lazy protocol witness table cache variable for type Invitation_HostConnectionInfo and conformance Invitation_HostConnectionInfo, type metadata accessor for Invitation_HostConnectionInfo, &protocol conformance descriptor for Invitation_HostConnectionInfo);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Invitation_HostConnectionInfo(v11);
}

Swift::Int Invitation_HostConnectionInfo.hashValue.getter(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  Hasher.init(_seed:)();
  a1(0);
  lazy protocol witness table accessor for type Invitation_HostConnectionInfo and conformance Invitation_HostConnectionInfo(a2, a3, a4);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Message.init() in conformance Invitation_InvitationData@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = xmmword_25B82C2F0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0xE000000000000000;
  UnknownStorage.init()();
  v4 = *(a1 + 28);
  v5 = *(a1 + 32);
  *(a2 + v4) = xmmword_25B82C300;
  v6 = type metadata accessor for Invitation_HostConnectionInfo(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a2 + v5, 1, 1, v6);
}

uint64_t protocol witness for Message.unknownFields.getter in conformance Invitation_HostConnectionInfo@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t protocol witness for Message.unknownFields.setter in conformance Invitation_HostConnectionInfo(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Invitation_InvitationData(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Invitation_HostConnectionInfo and conformance Invitation_HostConnectionInfo(&lazy protocol witness table cache variable for type Invitation_InvitationData and conformance Invitation_InvitationData, type metadata accessor for Invitation_InvitationData, &protocol conformance descriptor for Invitation_InvitationData);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for static _ProtoNameProviding._protobuf_nameMap.getter in conformance Invitation_HostConnectionInfo@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for _NameMap();
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Invitation_InvitationData(uint64_t a1)
{
  lazy protocol witness table accessor for type Invitation_HostConnectionInfo and conformance Invitation_HostConnectionInfo(&lazy protocol witness table cache variable for type Invitation_InvitationData and conformance Invitation_InvitationData, type metadata accessor for Invitation_InvitationData, &protocol conformance descriptor for Invitation_InvitationData);

  return Message.debugDescription.getter();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Invitation_HostConnectionInfo(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Invitation_InvitationData(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type Invitation_HostConnectionInfo and conformance Invitation_HostConnectionInfo(&lazy protocol witness table cache variable for type Invitation_InvitationData and conformance Invitation_InvitationData, type metadata accessor for Invitation_InvitationData, &protocol conformance descriptor for Invitation_InvitationData);

  return Message.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Invitation_HostConnectionInfo(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t specialized static Invitation_HostConnectionInfo.== infix(_:_:)(_BOOL8 *a1, uint64_t *a2)
{
  if (!specialized static Data.== infix(_:_:)(*a1, a1[1], *a2, a2[1]))
  {
    return 0;
  }

  v4 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Invitation_HostConnectionInfo(0);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type Invitation_HostConnectionInfo and conformance Invitation_HostConnectionInfo(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static Invitation_InvitationData.== infix(_:_:)(_BOOL8 *a1, uint64_t *a2)
{
  v4 = type metadata accessor for Invitation_HostConnectionInfo(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v30[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14NearbySessions29Invitation_HostConnectionInfoVSgMd, &_s14NearbySessions29Invitation_HostConnectionInfoVSgMR);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v30[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14NearbySessions29Invitation_HostConnectionInfoVSg_ADtMd, &_s14NearbySessions29Invitation_HostConnectionInfoVSg_ADtMR);
  MEMORY[0x28223BE20](v11);
  v13 = &v30[-v12];
  if (!specialized static Data.== infix(_:_:)(*a1, a1[1], *a2, a2[1]) || (a1[2] != a2[2] || a1[3] != a2[3]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_26;
  }

  v33 = v7;
  v34 = v5;
  v14 = type metadata accessor for Invitation_InvitationData(0);
  v15 = *(v14 + 28);
  v17 = *(a1 + v15);
  v16 = *(a1 + v15 + 8);
  v18 = (a2 + v15);
  v19 = *v18;
  v20 = v18[1];
  if (v16 >> 60 == 15)
  {
    if (v20 >> 60 == 15)
    {
      v32 = v14;
      outlined copy of Data?(v17, v16);
      outlined copy of Data?(v19, v20);
      outlined consume of Data?(v17, v16);
      goto LABEL_11;
    }

LABEL_9:
    outlined copy of Data?(v17, v16);
    outlined copy of Data?(v19, v20);
    outlined consume of Data?(v17, v16);
    outlined consume of Data?(v19, v20);
    goto LABEL_26;
  }

  if (v20 >> 60 == 15)
  {
    goto LABEL_9;
  }

  v32 = v14;
  outlined copy of Data?(v17, v16);
  outlined copy of Data?(v19, v20);
  v31 = specialized static Data.== infix(_:_:)(v17, v16, v19, v20);
  outlined consume of Data?(v19, v20);
  outlined consume of Data?(v17, v16);
  if (!v31)
  {
    goto LABEL_26;
  }

LABEL_11:
  v21 = *(v32 + 32);
  v22 = *(v11 + 48);
  outlined init with copy of Invitation_HostConnectionInfo?(a1 + v21, v13);
  outlined init with copy of Invitation_HostConnectionInfo?(a2 + v21, &v13[v22]);
  v23 = *(v34 + 48);
  if (v23(v13, 1, v4) != 1)
  {
    outlined init with copy of Invitation_HostConnectionInfo?(v13, v10);
    if (v23(&v13[v22], 1, v4) == 1)
    {
      outlined destroy of Invitation_HostConnectionInfo(v10);
      goto LABEL_17;
    }

    v27 = v33;
    outlined init with take of Invitation_HostConnectionInfo(&v13[v22], v33);
    if (!specialized static Data.== infix(_:_:)(*v10, v10[1], *v27, v27[1]) || (v10[2] != v27[2] || v10[3] != v27[3]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      outlined destroy of Invitation_HostConnectionInfo(v27);
      outlined destroy of Invitation_HostConnectionInfo(v10);
      v25 = &_s14NearbySessions29Invitation_HostConnectionInfoVSgMd;
      v26 = &_s14NearbySessions29Invitation_HostConnectionInfoVSgMR;
      goto LABEL_25;
    }

    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type Invitation_HostConnectionInfo and conformance Invitation_HostConnectionInfo(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v28 = dispatch thunk of static Equatable.== infix(_:_:)();
    outlined destroy of Invitation_HostConnectionInfo(v27);
    outlined destroy of Invitation_HostConnectionInfo(v10);
    outlined destroy of NSObject?(v13, &_s14NearbySessions29Invitation_HostConnectionInfoVSgMd, &_s14NearbySessions29Invitation_HostConnectionInfoVSgMR);
    if (v28)
    {
      goto LABEL_14;
    }

LABEL_26:
    v24 = 0;
    return v24 & 1;
  }

  if (v23(&v13[v22], 1, v4) != 1)
  {
LABEL_17:
    v25 = &_s14NearbySessions29Invitation_HostConnectionInfoVSg_ADtMd;
    v26 = &_s14NearbySessions29Invitation_HostConnectionInfoVSg_ADtMR;
LABEL_25:
    outlined destroy of NSObject?(v13, v25, v26);
    goto LABEL_26;
  }

  outlined destroy of NSObject?(v13, &_s14NearbySessions29Invitation_HostConnectionInfoVSgMd, &_s14NearbySessions29Invitation_HostConnectionInfoVSgMR);
LABEL_14:
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type Invitation_HostConnectionInfo and conformance Invitation_HostConnectionInfo(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v24 = dispatch thunk of static Equatable.== infix(_:_:)();
  return v24 & 1;
}

uint64_t lazy protocol witness table accessor for type Invitation_HostConnectionInfo and conformance Invitation_HostConnectionInfo(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata completion function for Invitation_HostConnectionInfo(uint64_t a1)
{
  result = type metadata accessor for UnknownStorage();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void type metadata completion function for Invitation_InvitationData(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    type metadata accessor for Data?();
    if (v2 <= 0x3F)
    {
      type metadata accessor for Invitation_HostConnectionInfo?(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata accessor for Data?()
{
  if (!lazy cache variable for type metadata for Data?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Data?);
    }
  }
}

void type metadata accessor for Invitation_HostConnectionInfo?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Invitation_HostConnectionInfo?)
  {
    type metadata accessor for Invitation_HostConnectionInfo(255);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Invitation_HostConnectionInfo?);
    }
  }
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t >> prefix<A>(_:)(uint64_t a1, uint64_t a2)
{
  v4[2] = a2;
  type metadata accessor for Optional();
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for closure #1 in >> prefix<A>(_:), v4, MEMORY[0x277D84A98], MEMORY[0x277D837D0], v2, v5);
  if (v5[1])
  {
    return v5[0];
  }

  else
  {
    return 7104878;
  }
}

BOOL Subsystem.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of Subsystem.init(rawValue:), v2);

  return v3 != 0;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Subsystem()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Subsystem(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance Subsystem@<X0>(Swift::String *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of protocol witness for RawRepresentable.init(rawValue:) in conformance Subsystem, *a1);

  *a2 = v3 != 0;
  return result;
}

uint64_t Logger.init<A>(subsystem:category:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  dispatch thunk of RawRepresentable.rawValue.getter();
  Logger.init(subsystem:category:)();
  return (*(*(a4 - 8) + 8))(a1, a4);
}

uint64_t one-time initialization function for client(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  return Logger.init(subsystem:category:)();
}

uint64_t Log.client.unsafeMutableAddressor(void *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();

  return __swift_project_value_buffer(v4, a2);
}

uint64_t static Log.client.getter@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF@<X0>(void (*a1)(char *, char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v25 = a5;
  v26 = a2;
  v28 = a4;
  v27 = a1;
  v24 = *(a3 - 8);
  v10 = MEMORY[0x28223BE20](a1);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v13 + 16);
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v10);
  v18 = &v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 16))(v20, v6);
  v22 = 1;
  if ((*(v15 + 48))(v20, 1, v14) != 1)
  {
    (*(v15 + 32))(v18, v20, v14);
    v27(v18, v12);
    (*(v15 + 8))(v18, v14);
    if (v7)
    {
      return (*(v24 + 32))(v25, v12, a3);
    }

    v22 = 0;
  }

  return (*(*(v28 - 8) + 56))(a6, v22, 1);
}

uint64_t DefaultStringInterpolation.appendInterpolation<A>(_:)(uint64_t a1, uint64_t a2)
{
  v6[2] = a2;
  type metadata accessor for Optional();
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for closure #1 in DefaultStringInterpolation.appendInterpolation<A>(_:), v6, MEMORY[0x277D84A98], MEMORY[0x277D837D0], v2, &v7);
  if (v8)
  {
    v3 = v7;
  }

  else
  {
    v3 = 7104878;
  }

  if (v8)
  {
    v4 = v8;
  }

  else
  {
    v4 = 0xE300000000000000;
  }

  MEMORY[0x25F86F070](v3, v4);
}

uint64_t closure #1 in >> prefix<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t *a3@<X8>)
{
  MEMORY[0x28223BE20](a1);
  (*(v5 + 16))(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = String.init<A>(reflecting:)();
  *a3 = result;
  a3[1] = v7;
  return result;
}

unint64_t lazy protocol witness table accessor for type Subsystem and conformance Subsystem()
{
  result = lazy protocol witness table cache variable for type Subsystem and conformance Subsystem;
  if (!lazy protocol witness table cache variable for type Subsystem and conformance Subsystem)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Subsystem and conformance Subsystem);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Subsystem(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for Subsystem(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t NearbyGroupMember.handle.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14NearbySessions17NearbyGroupMember_handle);

  return v1;
}

uint64_t NearbyGroupMember.tokenID.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14NearbySessions17NearbyGroupMember_tokenID);

  return v1;
}

id NearbyGroupMember.__allocating_init(handle:tokenID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = objc_allocWithZone(v4);
  v10 = &v9[OBJC_IVAR____TtC14NearbySessions17NearbyGroupMember_handle];
  *v10 = a1;
  *(v10 + 1) = a2;
  v11 = &v9[OBJC_IVAR____TtC14NearbySessions17NearbyGroupMember_tokenID];
  *v11 = a3;
  *(v11 + 1) = a4;
  v13.receiver = v9;
  v13.super_class = v4;
  return objc_msgSendSuper2(&v13, sel_init);
}

id NearbyGroupMember.init(handle:tokenID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = &v4[OBJC_IVAR____TtC14NearbySessions17NearbyGroupMember_handle];
  *v5 = a1;
  *(v5 + 1) = a2;
  v6 = &v4[OBJC_IVAR____TtC14NearbySessions17NearbyGroupMember_tokenID];
  *v6 = a3;
  *(v6 + 1) = a4;
  v8.receiver = v4;
  v8.super_class = type metadata accessor for NearbyGroupMember();
  return objc_msgSendSuper2(&v8, sel_init);
}

uint64_t NearbyGroupMember.isEqual(_:)(uint64_t a1)
{
  outlined init with copy of Any?(a1, v8);
  if (!v9)
  {
    outlined destroy of Any?(v8);
    goto LABEL_17;
  }

  type metadata accessor for NearbyGroupMember();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_17:
    LOBYTE(v4) = 0;
    return v4 & 1;
  }

  v2 = *(v1 + OBJC_IVAR____TtC14NearbySessions17NearbyGroupMember_handle) == *&v7[OBJC_IVAR____TtC14NearbySessions17NearbyGroupMember_handle] && *(v1 + OBJC_IVAR____TtC14NearbySessions17NearbyGroupMember_handle + 8) == *&v7[OBJC_IVAR____TtC14NearbySessions17NearbyGroupMember_handle + 8];
  if (!v2 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {

    goto LABEL_17;
  }

  v3 = *(v1 + OBJC_IVAR____TtC14NearbySessions17NearbyGroupMember_tokenID + 8);
  v4 = *&v7[OBJC_IVAR____TtC14NearbySessions17NearbyGroupMember_tokenID + 8];
  if (!v3)
  {

    if (!v4)
    {
      goto LABEL_23;
    }

    goto LABEL_17;
  }

  if (v4)
  {
    if (*(v1 + OBJC_IVAR____TtC14NearbySessions17NearbyGroupMember_tokenID) != *&v7[OBJC_IVAR____TtC14NearbySessions17NearbyGroupMember_tokenID] || v3 != v4)
    {
      LOBYTE(v4) = _stringCompareWithSmolCheck(_:_:expecting:)();
      goto LABEL_15;
    }

LABEL_23:
    LOBYTE(v4) = 1;
    return v4 & 1;
  }

LABEL_15:

  return v4 & 1;
}

uint64_t outlined init with copy of Any?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of Any?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

Swift::Int NearbyGroupMember.hash.getter()
{
  Hasher.init()();
  lazy protocol witness table accessor for type String and conformance String();
  v1 = StringProtocol.hash.getter();
  MEMORY[0x25F86F720](v1);
  if (*(v0 + OBJC_IVAR____TtC14NearbySessions17NearbyGroupMember_tokenID + 8))
  {
    v2 = StringProtocol.hash.getter();
    Hasher._combine(_:)(1u);
    MEMORY[0x25F86F720](v2);
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  return Hasher.finalize()();
}

unint64_t lazy protocol witness table accessor for type String and conformance String()
{
  result = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String and conformance String);
  }

  return result;
}

id NearbyGroupMember.__allocating_init(coder:)(void *a1)
{
  v2 = v1;
  objc_allocWithZone(v2);
  type metadata accessor for NSString();
  v4 = NSCoder.decodeObject<A>(of:forKey:)();
  if (v4)
  {
    v7 = 0;
    v5 = v4;
    static String._conditionallyBridgeFromObjectiveC(_:result:)();
  }

  swift_deallocPartialClassInstance();
  return 0;
}

id NearbyGroupMember.init(coder:)(void *a1)
{
  type metadata accessor for NSString();
  v2 = NSCoder.decodeObject<A>(of:forKey:)();
  if (v2)
  {
    v5 = 0;
    v3 = v2;
    static String._conditionallyBridgeFromObjectiveC(_:result:)();
  }

  type metadata accessor for NearbyGroupMember();
  swift_deallocPartialClassInstance();
  return 0;
}

unint64_t type metadata accessor for NSString()
{
  result = lazy cache variable for type metadata for NSString;
  if (!lazy cache variable for type metadata for NSString)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSString);
  }

  return result;
}

Swift::Void __swiftcall NearbyGroupMember.encode(with:)(NSCoder with)
{
  v3 = MEMORY[0x25F86F000](*(v1 + OBJC_IVAR____TtC14NearbySessions17NearbyGroupMember_handle), *(v1 + OBJC_IVAR____TtC14NearbySessions17NearbyGroupMember_handle + 8));
  v4 = MEMORY[0x25F86F000](0x656C646E6168, 0xE600000000000000);
  [(objc_class *)with.super.isa encodeObject:v3 forKey:v4];

  if (*(v1 + OBJC_IVAR____TtC14NearbySessions17NearbyGroupMember_tokenID + 8))
  {
    v5 = MEMORY[0x25F86F000](*(v1 + OBJC_IVAR____TtC14NearbySessions17NearbyGroupMember_tokenID));
  }

  else
  {
    v5 = 0;
  }

  v6 = MEMORY[0x25F86F000](0x44496E656B6F74, 0xE700000000000000);
  [(objc_class *)with.super.isa encodeObject:v5 forKey:v6];
  swift_unknownObjectRelease();
}

id NearbyGroupMember.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id NearbyGroupMember.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NearbyGroupMember();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t NearbyGroupMember.description.getter()
{
  swift_getObjectType();
  v1 = _typeName(_:qualified:)();
  MEMORY[0x25F86F070](v1);

  MEMORY[0x25F86F070](*(v0 + OBJC_IVAR____TtC14NearbySessions17NearbyGroupMember_handle), *(v0 + OBJC_IVAR____TtC14NearbySessions17NearbyGroupMember_handle + 8));
  MEMORY[0x25F86F070](0x3D656C646E616820, 0xE800000000000000);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  v2 = String.init<A>(describing:)();
  MEMORY[0x25F86F070](v2);

  MEMORY[0x25F86F070](0x44496E656B6F7420, 0xE90000000000003DLL);

  MEMORY[0x25F86F070](62, 0xE100000000000000);
  return 60;
}

uint64_t NearbySessionInvitation.identifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC14NearbySessions23NearbySessionInvitation_identifier;
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t NearbySessionInvitation.sourceProviderID.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14NearbySessions23NearbySessionInvitation_sourceProviderID);

  return v1;
}

uint64_t NearbySessionInvitation.sourceProviderName.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14NearbySessions23NearbySessionInvitation_sourceProviderName);

  return v1;
}

uint64_t NearbySessionInvitation.displayName.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14NearbySessions23NearbySessionInvitation_displayName);

  return v1;
}

uint64_t NearbySessionInvitation.handle.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14NearbySessions23NearbySessionInvitation_handle);

  return v1;
}

uint64_t NearbySessionInvitation.userInfo.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14NearbySessions23NearbySessionInvitation_userInfo);
  outlined copy of Data?(v1, *(v0 + OBJC_IVAR____TtC14NearbySessions23NearbySessionInvitation_userInfo + 8));
  return v1;
}

id NearbySessionInvitation.__allocating_init(identifier:activityType:metadata:sourceProviderID:sourceProviderName:displayName:handle:userInfo:)(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v18 = objc_allocWithZone(v13);
  v19 = OBJC_IVAR____TtC14NearbySessions23NearbySessionInvitation_identifier;
  v20 = type metadata accessor for UUID();
  v21 = *(v20 - 8);
  (*(v21 + 16))(&v18[v19], a1, v20);
  *&v18[OBJC_IVAR____TtC14NearbySessions23NearbySessionInvitation_activityType] = a2;
  *&v18[OBJC_IVAR____TtC14NearbySessions23NearbySessionInvitation_metadata] = a3;
  v22 = &v18[OBJC_IVAR____TtC14NearbySessions23NearbySessionInvitation_sourceProviderID];
  *v22 = a4;
  v22[1] = a5;
  v23 = &v18[OBJC_IVAR____TtC14NearbySessions23NearbySessionInvitation_sourceProviderName];
  *v23 = a6;
  v23[1] = a7;
  v24 = &v18[OBJC_IVAR____TtC14NearbySessions23NearbySessionInvitation_userInfo];
  *v24 = a12;
  v24[1] = a13;
  v18[OBJC_IVAR____TtC14NearbySessions23NearbySessionInvitation_isPublic] = 0;
  v25 = &v18[OBJC_IVAR____TtC14NearbySessions23NearbySessionInvitation_displayName];
  *v25 = a8;
  v25[1] = a9;
  v26 = &v18[OBJC_IVAR____TtC14NearbySessions23NearbySessionInvitation_handle];
  *v26 = a10;
  v26[1] = a11;
  v33.receiver = v18;
  v33.super_class = v13;
  v27 = objc_msgSendSuper2(&v33, sel_init);
  (*(v21 + 8))(a1, v20);
  return v27;
}

id NearbySessionInvitation.init(identifier:activityType:metadata:sourceProviderID:sourceProviderName:displayName:handle:userInfo:)(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v19 = OBJC_IVAR____TtC14NearbySessions23NearbySessionInvitation_identifier;
  v20 = type metadata accessor for UUID();
  v21 = *(v20 - 8);
  (*(v21 + 16))(&v13[v19], a1, v20);
  *&v13[OBJC_IVAR____TtC14NearbySessions23NearbySessionInvitation_activityType] = a2;
  *&v13[OBJC_IVAR____TtC14NearbySessions23NearbySessionInvitation_metadata] = a3;
  v22 = &v13[OBJC_IVAR____TtC14NearbySessions23NearbySessionInvitation_sourceProviderID];
  *v22 = a4;
  v22[1] = a5;
  v23 = &v13[OBJC_IVAR____TtC14NearbySessions23NearbySessionInvitation_sourceProviderName];
  *v23 = a6;
  v23[1] = a7;
  v24 = &v13[OBJC_IVAR____TtC14NearbySessions23NearbySessionInvitation_userInfo];
  *v24 = a12;
  v24[1] = a13;
  v13[OBJC_IVAR____TtC14NearbySessions23NearbySessionInvitation_isPublic] = 0;
  v25 = &v13[OBJC_IVAR____TtC14NearbySessions23NearbySessionInvitation_displayName];
  *v25 = a8;
  v25[1] = a9;
  v26 = &v13[OBJC_IVAR____TtC14NearbySessions23NearbySessionInvitation_handle];
  *v26 = a10;
  v26[1] = a11;
  v32.receiver = v13;
  v32.super_class = type metadata accessor for NearbySessionInvitation(0);
  v27 = objc_msgSendSuper2(&v32, sel_init);
  (*(v21 + 8))(a1, v20);
  return v27;
}

uint64_t type metadata accessor for NearbySessionInvitation(uint64_t a1)
{
  result = type metadata singleton initialization cache for NearbySessionInvitation;
  if (!type metadata singleton initialization cache for NearbySessionInvitation)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t NearbySessionInvitation.description.getter()
{
  v1 = v0;
  swift_getObjectType();
  _StringGuts.grow(_:)(68);
  MEMORY[0x25F86F070](60, 0xE100000000000000);
  v2 = _typeName(_:qualified:)();
  MEMORY[0x25F86F070](v2);

  MEMORY[0x25F86F070](0x6669746E65646920, 0xED0000203A726569);
  type metadata accessor for UUID();
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
  v3 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x25F86F070](v3);

  MEMORY[0x25F86F070](0x203A6570797420, 0xE700000000000000);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x25F86F070](0x6E4972657375202CLL, 0xEC000000203A6F66);
  v4 = *(v0 + OBJC_IVAR____TtC14NearbySessions23NearbySessionInvitation_userInfo + 8);
  if (v4 >> 60 == 15)
  {
    v5 = 0xE300000000000000;
    v6 = 7104878;
  }

  else
  {
    outlined copy of Data._Representation(*(v0 + OBJC_IVAR____TtC14NearbySessions23NearbySessionInvitation_userInfo), v4);
    v6 = String.init<A>(reflecting:)();
    v5 = v7;
  }

  MEMORY[0x25F86F070](v6, v5);

  MEMORY[0x25F86F070](0x61646174656D202CLL, 0xEC000000203A6174);
  v8 = [*(v0 + OBJC_IVAR____TtC14NearbySessions23NearbySessionInvitation_metadata) description];
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  MEMORY[0x25F86F070](v9, v11);

  MEMORY[0x25F86F070](0x63696C627570202CLL, 0xEA0000000000203ALL);
  if (*(v1 + OBJC_IVAR____TtC14NearbySessions23NearbySessionInvitation_isPublic))
  {
    v12 = 1702195828;
  }

  else
  {
    v12 = 0x65736C6166;
  }

  if (*(v1 + OBJC_IVAR____TtC14NearbySessions23NearbySessionInvitation_isPublic))
  {
    v13 = 0xE400000000000000;
  }

  else
  {
    v13 = 0xE500000000000000;
  }

  MEMORY[0x25F86F070](v12, v13);

  MEMORY[0x25F86F070](62, 0xE100000000000000);
  return 0;
}

Swift::Void __swiftcall NearbySessionInvitation.encode(with:)(NSCoder with)
{
  v2 = v1;
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v5 = MEMORY[0x25F86F000](0x696669746E656469, 0xEA00000000007265);
  [(objc_class *)with.super.isa encodeObject:isa forKey:v5];

  v6 = UInt32._bridgeToObjectiveC()().super.super.isa;
  v7 = MEMORY[0x25F86F000](0x7974697669746361, 0xEC00000065707954);
  [(objc_class *)with.super.isa encodeObject:v6 forKey:v7];

  v8 = *(v2 + OBJC_IVAR____TtC14NearbySessions23NearbySessionInvitation_metadata);
  v9 = MEMORY[0x25F86F000](0x617461646174656DLL, 0xE800000000000000);
  [(objc_class *)with.super.isa encodeObject:v8 forKey:v9];

  v10 = (v2 + OBJC_IVAR____TtC14NearbySessions23NearbySessionInvitation_userInfo);
  v11 = *(v2 + OBJC_IVAR____TtC14NearbySessions23NearbySessionInvitation_userInfo + 8);
  if (v11 >> 60 != 15)
  {
    v12 = *v10;
    outlined copy of Data._Representation(*v10, *(v2 + OBJC_IVAR____TtC14NearbySessions23NearbySessionInvitation_userInfo + 8));
    v13 = Data._bridgeToObjectiveC()().super.isa;
    v14 = MEMORY[0x25F86F000](0x6F666E4972657375, 0xE800000000000000);
    [(objc_class *)with.super.isa encodeObject:v13 forKey:v14];

    outlined consume of Data?(v12, v11);
  }

  v15 = *(v2 + OBJC_IVAR____TtC14NearbySessions23NearbySessionInvitation_isPublic);
  v16 = MEMORY[0x25F86F000](0x63696C6275507369, 0xE800000000000000);
  [(objc_class *)with.super.isa encodeBool:v15 forKey:v16];

  v17 = MEMORY[0x25F86F000](*(v2 + OBJC_IVAR____TtC14NearbySessions23NearbySessionInvitation_displayName), *(v2 + OBJC_IVAR____TtC14NearbySessions23NearbySessionInvitation_displayName + 8));
  v18 = MEMORY[0x25F86F000](0x4E79616C70736964, 0xEB00000000656D61);
  [(objc_class *)with.super.isa encodeObject:v17 forKey:v18];

  v19 = MEMORY[0x25F86F000](*(v2 + OBJC_IVAR____TtC14NearbySessions23NearbySessionInvitation_handle), *(v2 + OBJC_IVAR____TtC14NearbySessions23NearbySessionInvitation_handle + 8));
  v20 = MEMORY[0x25F86F000](0x656C646E6168, 0xE600000000000000);
  [(objc_class *)with.super.isa encodeObject:v19 forKey:v20];

  v21 = MEMORY[0x25F86F000](*(v2 + OBJC_IVAR____TtC14NearbySessions23NearbySessionInvitation_sourceProviderID), *(v2 + OBJC_IVAR____TtC14NearbySessions23NearbySessionInvitation_sourceProviderID + 8));
  v22 = MEMORY[0x25F86F000](0xD000000000000010, 0x800000025B830320);
  [(objc_class *)with.super.isa encodeObject:v21 forKey:v22];

  v23 = MEMORY[0x25F86F000](*(v2 + OBJC_IVAR____TtC14NearbySessions23NearbySessionInvitation_sourceProviderName), *(v2 + OBJC_IVAR____TtC14NearbySessions23NearbySessionInvitation_sourceProviderName + 8));
  v24 = MEMORY[0x25F86F000](0xD000000000000012, 0x800000025B830340);
  [(objc_class *)with.super.isa encodeObject:v23 forKey:v24];
}

id NearbySessionInvitation.init(coder:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v51 - v4;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x25F86F000](0x696669746E656469, 0xEA00000000007265);
  v11 = [a1 decodeObjectForKey_];

  if (v11)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v66 = 0u;
    v67 = 0u;
  }

  v68 = v66;
  v69 = v67;
  if (!*(&v67 + 1))
  {

    outlined destroy of NSObject?(&v68, &_sypSgMd, &_sypSgMR);
    (*(v7 + 56))(v5, 1, 1, v6);
    goto LABEL_8;
  }

  v12 = swift_dynamicCast();
  (*(v7 + 56))(v5, v12 ^ 1u, 1, v6);
  if ((*(v7 + 48))(v5, 1, v6) != 1)
  {
    v17 = *(v7 + 32);
    v17(v9, v5, v6);
    v18 = MEMORY[0x25F86F000](0x7974697669746361, 0xEC00000065707954);
    v19 = [a1 decodeObjectForKey_];

    if (v19)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v66 = 0u;
      v67 = 0u;
    }

    v68 = v66;
    v69 = v67;
    if (*(&v67 + 1))
    {
      if (swift_dynamicCast())
      {
        v20 = v64;
        if (v64 >= 2)
        {
          goto LABEL_28;
        }

LABEL_21:
        v62 = v20;
        v21 = MEMORY[0x25F86F000](0x617461646174656DLL, 0xE800000000000000);
        v22 = [a1 decodeObjectForKey_];

        if (v22)
        {
          _bridgeAnyObjectToAny(_:)();
          swift_unknownObjectRelease();
        }

        else
        {
          v66 = 0u;
          v67 = 0u;
        }

        v68 = v66;
        v69 = v67;
        if (*(&v67 + 1))
        {
          type metadata accessor for NearbyInvitationJoinRequestMetadata();
          if ((swift_dynamicCast() & 1) == 0)
          {
LABEL_28:
            (*(v7 + 8))(v9, v6);

            goto LABEL_10;
          }

          v61 = v64;
          v23 = MEMORY[0x25F86F000](0x4E79616C70736964, 0xEB00000000656D61);
          v24 = [a1 decodeObjectForKey_];

          if (v24)
          {
            _bridgeAnyObjectToAny(_:)();
            swift_unknownObjectRelease();
          }

          else
          {
            v66 = 0u;
            v67 = 0u;
          }

          v68 = v66;
          v69 = v67;
          if (*(&v67 + 1))
          {
            if ((swift_dynamicCast() & 1) == 0)
            {
              (*(v7 + 8))(v9, v6);

LABEL_64:
              goto LABEL_10;
            }

            v25 = v65;
            v59 = v64;
            v60 = v17;
            v26 = MEMORY[0x25F86F000](0x656C646E6168, 0xE600000000000000);
            v27 = [a1 decodeObjectForKey_];

            if (v27)
            {
              _bridgeAnyObjectToAny(_:)();
              swift_unknownObjectRelease();
            }

            else
            {
              v66 = 0u;
              v67 = 0u;
            }

            v68 = v66;
            v69 = v67;
            if (*(&v67 + 1))
            {
              if ((swift_dynamicCast() & 1) == 0)
              {
                (*(v7 + 8))(v9, v6);

LABEL_63:

                goto LABEL_64;
              }

              v57 = v64;
              v58 = v65;
              v28 = MEMORY[0x25F86F000](0xD000000000000010, 0x800000025B830320);
              v29 = [a1 decodeObjectForKey_];

              if (v29)
              {
                _bridgeAnyObjectToAny(_:)();
                swift_unknownObjectRelease();
              }

              else
              {
                v66 = 0u;
                v67 = 0u;
              }

              v68 = v66;
              v69 = v67;
              if (*(&v67 + 1))
              {
                if ((swift_dynamicCast() & 1) == 0)
                {
                  (*(v7 + 8))(v9, v6);

LABEL_62:

                  goto LABEL_63;
                }

                v55 = v64;
                v56 = v65;
                v30 = MEMORY[0x25F86F000](0xD000000000000012, 0x800000025B830340);
                v31 = [a1 decodeObjectForKey_];

                if (v31)
                {
                  _bridgeAnyObjectToAny(_:)();
                  swift_unknownObjectRelease();
                }

                else
                {
                  v66 = 0u;
                  v67 = 0u;
                }

                v68 = v66;
                v69 = v67;
                if (*(&v67 + 1))
                {
                  if (swift_dynamicCast())
                  {
                    v54 = v64;
                    v53 = v65;
                    v32 = MEMORY[0x25F86F000](0x6F666E4972657375, 0xE800000000000000);
                    v33 = [a1 decodeObjectForKey_];

                    if (v33)
                    {
                      _bridgeAnyObjectToAny(_:)();
                      swift_unknownObjectRelease();
                    }

                    else
                    {
                      v66 = 0u;
                      v67 = 0u;
                    }

                    v68 = v66;
                    v69 = v67;
                    if (*(&v67 + 1))
                    {
                      v34 = swift_dynamicCast();
                      v35 = v64;
                      if (!v34)
                      {
                        v35 = 0;
                      }

                      v52 = v35;
                      if (v34)
                      {
                        v36 = v65;
                      }

                      else
                      {
                        v36 = 0xF000000000000000;
                      }
                    }

                    else
                    {
                      outlined destroy of NSObject?(&v68, &_sypSgMd, &_sypSgMR);
                      v52 = 0;
                      v36 = 0xF000000000000000;
                    }

                    v37 = MEMORY[0x25F86F000](0x63696C6275507369, 0xE800000000000000);
                    v38 = [a1 decodeObjectForKey_];

                    if (v38)
                    {
                      _bridgeAnyObjectToAny(_:)();
                      swift_unknownObjectRelease();
                    }

                    else
                    {
                      v66 = 0u;
                      v67 = 0u;
                    }

                    v39 = v60;
                    v68 = v66;
                    v69 = v67;
                    if (*(&v67 + 1))
                    {
                      if (swift_dynamicCast())
                      {
                        v40 = v64;
LABEL_81:
                        v39(&v1[OBJC_IVAR____TtC14NearbySessions23NearbySessionInvitation_identifier], v9, v6);
                        *&v1[OBJC_IVAR____TtC14NearbySessions23NearbySessionInvitation_activityType] = v62;
                        *&v1[OBJC_IVAR____TtC14NearbySessions23NearbySessionInvitation_metadata] = v61;
                        v41 = &v1[OBJC_IVAR____TtC14NearbySessions23NearbySessionInvitation_userInfo];
                        *v41 = v52;
                        v41[1] = v36;
                        v1[OBJC_IVAR____TtC14NearbySessions23NearbySessionInvitation_isPublic] = v40;
                        v42 = &v1[OBJC_IVAR____TtC14NearbySessions23NearbySessionInvitation_displayName];
                        *v42 = v59;
                        v42[1] = v25;
                        v43 = &v1[OBJC_IVAR____TtC14NearbySessions23NearbySessionInvitation_sourceProviderID];
                        v44 = v56;
                        *v43 = v55;
                        v43[1] = v44;
                        v45 = &v1[OBJC_IVAR____TtC14NearbySessions23NearbySessionInvitation_sourceProviderName];
                        v46 = v53;
                        *v45 = v54;
                        v45[1] = v46;
                        v47 = &v1[OBJC_IVAR____TtC14NearbySessions23NearbySessionInvitation_handle];
                        v48 = v58;
                        *v47 = v57;
                        v47[1] = v48;
                        v49 = type metadata accessor for NearbySessionInvitation(0);
                        v63.receiver = v1;
                        v63.super_class = v49;
                        v50 = objc_msgSendSuper2(&v63, sel_init);

                        return v50;
                      }
                    }

                    else
                    {
                      outlined destroy of NSObject?(&v68, &_sypSgMd, &_sypSgMR);
                    }

                    v40 = 0;
                    goto LABEL_81;
                  }

                  (*(v7 + 8))(v9, v6);

                  goto LABEL_62;
                }

                (*(v7 + 8))(v9, v6);
              }

              else
              {
                (*(v7 + 8))(v9, v6);
              }
            }

            else
            {
              (*(v7 + 8))(v9, v6);
            }
          }

          else
          {
            (*(v7 + 8))(v9, v6);
          }
        }

        else
        {
          (*(v7 + 8))(v9, v6);
        }

        v13 = &_sypSgMd;
        v14 = &_sypSgMR;
        v15 = &v68;
        goto LABEL_9;
      }
    }

    else
    {
      outlined destroy of NSObject?(&v68, &_sypSgMd, &_sypSgMR);
    }

    v20 = 0;
    goto LABEL_21;
  }

LABEL_8:
  v13 = &_s10Foundation4UUIDVSgMd;
  v14 = &_s10Foundation4UUIDVSgMR;
  v15 = v5;
LABEL_9:
  outlined destroy of NSObject?(v15, v13, v14);
LABEL_10:
  type metadata accessor for NearbySessionInvitation(0);
  swift_deallocPartialClassInstance();
  return 0;
}

id NearbySessionInvitation.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

unint64_t NearbySessionInvitation.CodingKeys.stringValue.getter(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x696669746E656469;
    v6 = 0x617461646174656DLL;
    if (a1 != 2)
    {
      v6 = 0xD000000000000010;
    }

    if (a1)
    {
      v5 = 0x7974697669746361;
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
    v1 = 0x4E79616C70736964;
    v2 = 0x656C646E6168;
    if (a1 != 7)
    {
      v2 = 0x6F666E4972657375;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0xD000000000000012;
    if (a1 != 4)
    {
      v3 = 0x63696C6275507369;
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

Swift::Int protocol witness for Hashable.hashValue.getter in conformance NearbySessionInvitation.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x25F86F720](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance NearbySessionInvitation.CodingKeys(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  MEMORY[0x25F86F720](v2);
  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance NearbySessionInvitation.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized NearbySessionInvitation.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance NearbySessionInvitation.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NearbySessionInvitation.CodingKeys and conformance NearbySessionInvitation.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance NearbySessionInvitation.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NearbySessionInvitation.CodingKeys and conformance NearbySessionInvitation.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

id NearbySessionInvitation.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NearbySessionInvitation(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t NearbySessionInvitation.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14NearbySessions0D17SessionInvitationC10CodingKeys33_F49605F9E7C741B46585CB0A047694A0LLOGMd, &_ss22KeyedEncodingContainerVy14NearbySessions0D17SessionInvitationC10CodingKeys33_F49605F9E7C741B46585CB0A047694A0LLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type NearbySessionInvitation.CodingKeys and conformance NearbySessionInvitation.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v12) = 0;
  type metadata accessor for UUID();
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC95F8]);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    LODWORD(v12) = *(v3 + OBJC_IVAR____TtC14NearbySessions23NearbySessionInvitation_activityType);
    v14 = 1;
    lazy protocol witness table accessor for type NearbyInvitationActivityType and conformance NearbyInvitationActivityType();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v12 = *(v3 + OBJC_IVAR____TtC14NearbySessions23NearbySessionInvitation_metadata);
    v14 = 2;
    type metadata accessor for NearbyInvitationJoinRequestMetadata();
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type NearbyInvitationJoinRequestMetadata and conformance NearbyInvitationJoinRequestMetadata, type metadata accessor for NearbyInvitationJoinRequestMetadata, &protocol conformance descriptor for NearbyInvitationJoinRequestMetadata);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v12) = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v12) = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v12) = 5;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v12) = 6;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v12) = 7;
    KeyedEncodingContainer.encode(_:forKey:)();
    v9 = *(v3 + OBJC_IVAR____TtC14NearbySessions23NearbySessionInvitation_userInfo + 8);
    v12 = *(v3 + OBJC_IVAR____TtC14NearbySessions23NearbySessionInvitation_userInfo);
    v13 = v9;
    v14 = 8;
    outlined copy of Data?(v12, v9);
    lazy protocol witness table accessor for type Data and conformance Data();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    outlined consume of Data?(v12, v13);
  }

  return (*(v6 + 8))(v8, v5);
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type NearbySessionInvitation.CodingKeys and conformance NearbySessionInvitation.CodingKeys()
{
  result = lazy protocol witness table cache variable for type NearbySessionInvitation.CodingKeys and conformance NearbySessionInvitation.CodingKeys;
  if (!lazy protocol witness table cache variable for type NearbySessionInvitation.CodingKeys and conformance NearbySessionInvitation.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NearbySessionInvitation.CodingKeys and conformance NearbySessionInvitation.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NearbySessionInvitation.CodingKeys and conformance NearbySessionInvitation.CodingKeys;
  if (!lazy protocol witness table cache variable for type NearbySessionInvitation.CodingKeys and conformance NearbySessionInvitation.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NearbySessionInvitation.CodingKeys and conformance NearbySessionInvitation.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NearbySessionInvitation.CodingKeys and conformance NearbySessionInvitation.CodingKeys;
  if (!lazy protocol witness table cache variable for type NearbySessionInvitation.CodingKeys and conformance NearbySessionInvitation.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NearbySessionInvitation.CodingKeys and conformance NearbySessionInvitation.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NearbySessionInvitation.CodingKeys and conformance NearbySessionInvitation.CodingKeys;
  if (!lazy protocol witness table cache variable for type NearbySessionInvitation.CodingKeys and conformance NearbySessionInvitation.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NearbySessionInvitation.CodingKeys and conformance NearbySessionInvitation.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type NearbyInvitationActivityType and conformance NearbyInvitationActivityType()
{
  result = lazy protocol witness table cache variable for type NearbyInvitationActivityType and conformance NearbyInvitationActivityType;
  if (!lazy protocol witness table cache variable for type NearbyInvitationActivityType and conformance NearbyInvitationActivityType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NearbyInvitationActivityType and conformance NearbyInvitationActivityType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NearbyInvitationActivityType and conformance NearbyInvitationActivityType;
  if (!lazy protocol witness table cache variable for type NearbyInvitationActivityType and conformance NearbyInvitationActivityType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NearbyInvitationActivityType and conformance NearbyInvitationActivityType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NearbyInvitationActivityType and conformance NearbyInvitationActivityType;
  if (!lazy protocol witness table cache variable for type NearbyInvitationActivityType and conformance NearbyInvitationActivityType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NearbyInvitationActivityType and conformance NearbyInvitationActivityType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NearbyInvitationActivityType and conformance NearbyInvitationActivityType;
  if (!lazy protocol witness table cache variable for type NearbyInvitationActivityType and conformance NearbyInvitationActivityType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NearbyInvitationActivityType and conformance NearbyInvitationActivityType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Data and conformance Data()
{
  result = lazy protocol witness table cache variable for type Data and conformance Data;
  if (!lazy protocol witness table cache variable for type Data and conformance Data)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Data and conformance Data);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Data and conformance Data;
  if (!lazy protocol witness table cache variable for type Data and conformance Data)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Data and conformance Data);
  }

  return result;
}

void *NearbySessionInvitation.init(from:)(void *a1)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy14NearbySessions0D17SessionInvitationC10CodingKeys33_F49605F9E7C741B46585CB0A047694A0LLOGMd, &_ss22KeyedDecodingContainerVy14NearbySessions0D17SessionInvitationC10CodingKeys33_F49605F9E7C741B46585CB0A047694A0LLOGMR);
  v7 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v9 = &v29 - v8;
  v10 = a1[3];
  v31 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  lazy protocol witness table accessor for type NearbySessionInvitation.CodingKeys and conformance NearbySessionInvitation.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_0(v31);
    v28 = v32;
    type metadata accessor for NearbySessionInvitation(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v29 = v4;
    LOBYTE(v34) = 0;
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9618]);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v12 = v3;
    v13 = v32;
    (*(v29 + 32))(v32 + OBJC_IVAR____TtC14NearbySessions23NearbySessionInvitation_identifier, v6, v12);
    v35 = 1;
    lazy protocol witness table accessor for type NearbyInvitationActivityType and conformance NearbyInvitationActivityType();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *(v13 + OBJC_IVAR____TtC14NearbySessions23NearbySessionInvitation_activityType) = v34;
    type metadata accessor for NearbyInvitationJoinRequestMetadata();
    v35 = 2;
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type NearbyInvitationJoinRequestMetadata and conformance NearbyInvitationJoinRequestMetadata, type metadata accessor for NearbyInvitationJoinRequestMetadata, &protocol conformance descriptor for NearbyInvitationJoinRequestMetadata);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *(v13 + OBJC_IVAR____TtC14NearbySessions23NearbySessionInvitation_metadata) = v34;
    LOBYTE(v34) = 3;
    v14 = KeyedDecodingContainer.decode(_:forKey:)();
    v15 = (v13 + OBJC_IVAR____TtC14NearbySessions23NearbySessionInvitation_sourceProviderID);
    *v15 = v14;
    v15[1] = v16;
    LOBYTE(v34) = 4;
    v17 = KeyedDecodingContainer.decode(_:forKey:)();
    v18 = (v13 + OBJC_IVAR____TtC14NearbySessions23NearbySessionInvitation_sourceProviderName);
    *v18 = v17;
    v18[1] = v19;
    LOBYTE(v34) = 5;
    *(v13 + OBJC_IVAR____TtC14NearbySessions23NearbySessionInvitation_isPublic) = KeyedDecodingContainer.decode(_:forKey:)() & 1;
    LOBYTE(v34) = 6;
    v20 = KeyedDecodingContainer.decode(_:forKey:)();
    v21 = (v13 + OBJC_IVAR____TtC14NearbySessions23NearbySessionInvitation_displayName);
    *v21 = v20;
    v21[1] = v22;
    LOBYTE(v34) = 7;
    v23 = KeyedDecodingContainer.decode(_:forKey:)();
    v24 = (v32 + OBJC_IVAR____TtC14NearbySessions23NearbySessionInvitation_handle);
    *v24 = v23;
    v24[1] = v25;
    v35 = 8;
    lazy protocol witness table accessor for type Data and conformance Data();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v26 = v32;
    *(v32 + OBJC_IVAR____TtC14NearbySessions23NearbySessionInvitation_userInfo) = v34;
    v27 = type metadata accessor for NearbySessionInvitation(0);
    v33.receiver = v26;
    v33.super_class = v27;
    v28 = objc_msgSendSuper2(&v33, sel_init);
    (*(v7 + 8))(v9, v30);
    __swift_destroy_boxed_opaque_existential_0(v31);
  }

  return v28;
}

uint64_t protocol witness for Decodable.init(from:) in conformance NearbySessionInvitation@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 184))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t type metadata completion function for NearbySessionInvitation(uint64_t a1)
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

uint64_t getEnumTagSinglePayload for NearbySessionInvitation.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for NearbySessionInvitation.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t specialized NearbySessionInvitation.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7974697669746361 && a2 == 0xEC00000065707954 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x617461646174656DLL && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x800000025B830320 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000012 && 0x800000025B830340 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x63696C6275507369 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x4E79616C70736964 && a2 == 0xEB00000000656D61 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x656C646E6168 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6F666E4972657375 && a2 == 0xE800000000000000)
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

uint64_t one-time initialization function for identity()
{
  v0 = type metadata accessor for XPCIdentity();
  __swift_allocate_value_buffer(v0, static NearbyGroupInterface.identity);
  v1 = __swift_project_value_buffer(v0, static NearbyGroupInterface.identity);
  v2 = *MEMORY[0x277CFD118];
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

{
  v0 = type metadata accessor for XPCIdentity();
  __swift_allocate_value_buffer(v0, static NearbyInvitationServiceInterface.identity);
  v1 = __swift_project_value_buffer(v0, static NearbyInvitationServiceInterface.identity);
  v2 = *MEMORY[0x277CFD110];
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t static NearbyGroupInterface.identity.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for identity != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for XPCIdentity();
  v3 = __swift_project_value_buffer(v2, static NearbyGroupInterface.identity);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static NearbyGroupInterface.identity.setter(uint64_t a1)
{
  if (one-time initialization token for identity != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for XPCIdentity();
  v3 = __swift_project_value_buffer(v2, static NearbyGroupInterface.identity);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static NearbyGroupInterface.identity.modify(uint64_t a1))(uint64_t a1)
{
  if (one-time initialization token for identity != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for XPCIdentity();
  __swift_project_value_buffer(v1, static NearbyGroupInterface.identity);
  swift_beginAccess();
  return static NearbyGroupInterface.identity.modify;
}

uint64_t key path setter for static NearbyGroupInterface.identity : NearbyGroupInterface.Type(uint64_t a1)
{
  if (one-time initialization token for identity != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for XPCIdentity();
  v3 = __swift_project_value_buffer(v2, static NearbyGroupInterface.identity);
  swift_beginAccess();
  (*(*(v2 - 8) + 24))(v3, a1, v2);
  return swift_endAccess();
}

id one-time initialization function for hostObjectInterface()
{
  result = closure #1 in variable initialization expression of static NearbyGroupInterface.hostObjectInterface();
  static NearbyGroupInterface.hostObjectInterface = result;
  return result;
}

{
  result = closure #1 in variable initialization expression of static NearbyInvitationServiceInterface.hostObjectInterface();
  static NearbyInvitationServiceInterface.hostObjectInterface = result;
  return result;
}

id closure #1 in variable initialization expression of static NearbyGroupInterface.hostObjectInterface()
{
  v0 = [objc_opt_self() interfaceWithProtocol_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlXpGMd, &_ss23_ContiguousArrayStorageCyyXlXpGMR);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_25B82C9A0;
  v2 = type metadata accessor for NSSet(0, &lazy cache variable for type metadata for NSString, 0x277CCACA8);
  *(v1 + 32) = v2;
  v3 = type metadata accessor for NSSet(0, &lazy cache variable for type metadata for NSSet, 0x277CBEB98);
  *(v1 + 40) = v3;
  v4 = type metadata accessor for NearbyGroupMember();
  *(v1 + 48) = v4;
  NSXPCInterface.setClasses(_:for:argumentIndex:ofReply:)();

  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_25B82C9A0;
  *(v5 + 32) = v2;
  *(v5 + 40) = v3;
  *(v5 + 48) = v4;
  NSXPCInterface.setClasses(_:for:argumentIndex:ofReply:)();

  return v0;
}

uint64_t (*static NearbyGroupInterface.hostObjectInterface.modify(uint64_t a1))(uint64_t a1)
{
  if (one-time initialization token for hostObjectInterface != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return static NearbyGroupInterface.hostObjectInterface.modify;
}

uint64_t one-time initialization function for clientObjectInterface()
{
  v0 = objc_opt_self();
  v1 = &unk_286D10BD8;
  v2 = [v0 interfaceWithProtocol_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlXpGMd, &_ss23_ContiguousArrayStorageCyyXlXpGMR);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_25B82C310;
  *(v3 + 32) = type metadata accessor for NSSet(0, &lazy cache variable for type metadata for NSSet, 0x277CBEB98);
  *(v3 + 40) = type metadata accessor for NearbyGroupMember();
  NSXPCInterface.setClasses(_:for:argumentIndex:ofReply:)();

  static NearbyGroupInterface.clientObjectInterface = v2;
  return result;
}

id static NearbyGroupInterface.hostObjectInterface.getter(void *a1, void **a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = *a2;

  return v4;
}

void static NearbyGroupInterface.hostObjectInterface.setter(void *a1, void *a2, void **a3, uint64_t a4)
{
  if (*a2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v6 = *a3;
  *a3 = a1;
}

uint64_t (*static NearbyGroupInterface.clientObjectInterface.modify(uint64_t a1))(uint64_t a1)
{
  if (one-time initialization token for clientObjectInterface != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return static NearbyGroupInterface.identity.modify;
}

id key path getter for static NearbyGroupInterface.hostObjectInterface : NearbyGroupInterface.Type@<X0>(void *a1@<X3>, void **a2@<X4>, void **a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v6 = *a2;
  *a4 = *a2;

  return v6;
}

void key path setter for static NearbyGroupInterface.hostObjectInterface : NearbyGroupInterface.Type(id *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, void **a6, uint64_t a7)
{
  v8 = *a5;
  v9 = *a1;
  if (v8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v10 = *a6;
  *a6 = v9;
}

uint64_t NearbyGroupCreationRequest.description.getter()
{
  swift_getObjectType();
  _StringGuts.grow(_:)(25);

  v0 = _typeName(_:qualified:)();
  MEMORY[0x25F86F070](v0);

  MEMORY[0x25F86F070](0x203A6469283ELL, 0xE600000000000000);
  type metadata accessor for UUID();
  _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
  v1 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x25F86F070](v1);

  MEMORY[0x25F86F070](0x7265626D656D202CLL, 0xEB00000000203A73);
  type metadata accessor for NearbyGroupMember();
  _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type NearbyGroupMember and conformance NSObject, type metadata accessor for NearbyGroupMember, MEMORY[0x277D85378]);
  v2 = Set.description.getter();
  MEMORY[0x25F86F070](v2);

  MEMORY[0x25F86F070](41, 0xE100000000000000);
  return 60;
}

id NearbyGroupCreationRequest.__allocating_init(id:members:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = OBJC_IVAR____TtC14NearbySessions26NearbyGroupCreationRequest_id;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  (*(v8 + 16))(&v5[v6], a1, v7);
  *&v5[OBJC_IVAR____TtC14NearbySessions26NearbyGroupCreationRequest_members] = a2;
  v11.receiver = v5;
  v11.super_class = v2;
  v9 = objc_msgSendSuper2(&v11, sel_init);
  (*(v8 + 8))(a1, v7);
  return v9;
}

id NearbyGroupCreationRequest.init(id:members:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v6 = OBJC_IVAR____TtC14NearbySessions26NearbyGroupCreationRequest_id;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  (*(v8 + 16))(&v2[v6], a1, v7);
  *&v2[OBJC_IVAR____TtC14NearbySessions26NearbyGroupCreationRequest_members] = a2;
  v11.receiver = v2;
  v11.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v11, sel_init);
  (*(v8 + 8))(a1, v7);
  return v9;
}

Swift::Void __swiftcall NearbyGroupCreationRequest.encode(with:)(NSCoder with)
{
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v3 = MEMORY[0x25F86F000](25705, 0xE200000000000000);
  [(objc_class *)with.super.isa encodeObject:isa forKey:v3];

  type metadata accessor for NearbyGroupMember();
  _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type NearbyGroupMember and conformance NSObject, type metadata accessor for NearbyGroupMember, MEMORY[0x277D85378]);
  v4 = Set._bridgeToObjectiveC()().super.isa;
  v5 = MEMORY[0x25F86F000](0x737265626D656DLL, 0xE700000000000000);
  [(objc_class *)with.super.isa encodeObject:v4 forKey:v5];
}

id NearbyGroupCreationRequest.init(coder:)(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v22 - v6;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v22 - v13;
  type metadata accessor for NSSet(0, &lazy cache variable for type metadata for NSUUID, 0x277CCAD78);
  v15 = NSCoder.decodeObject<A>(of:forKey:)();
  if (v15 && (v16 = v15, (*(v9 + 56))(v7, 1, 1, v8), _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9620]), dispatch thunk of static _ObjectiveCBridgeable._conditionallyBridgeFromObjectiveC(_:result:)(), v16, (*(v9 + 48))(v7, 1, v8) != 1))
  {
    v22 = ObjectType;
    v17 = *(v9 + 32);
    v17(v12, v7, v8);
    v17(v14, v12, v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlXpGMd, &_ss23_ContiguousArrayStorageCyyXlXpGMR);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_25B82C310;
    *(v18 + 32) = type metadata accessor for NearbyGroupMember();
    *(v18 + 40) = type metadata accessor for NSSet(0, &lazy cache variable for type metadata for NSSet, 0x277CBEB98);
    NSCoder.decodeObject(of:forKey:)();

    if (v26)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sShy14NearbySessions0A11GroupMemberCGMd, &_sShy14NearbySessions0A11GroupMemberCGMR);
      if (swift_dynamicCast())
      {
        v19 = v24;
        v17(&v2[OBJC_IVAR____TtC14NearbySessions26NearbyGroupCreationRequest_id], v14, v8);
        *&v2[OBJC_IVAR____TtC14NearbySessions26NearbyGroupCreationRequest_members] = v19;
        v23.receiver = v2;
        v23.super_class = v22;
        v20 = objc_msgSendSuper2(&v23, sel_init);

        return v20;
      }

      (*(v9 + 8))(v14, v8);
    }

    else
    {
      (*(v9 + 8))(v14, v8);

      outlined destroy of NSObject?(v25, &_sypSgMd, &_sypSgMR);
    }
  }

  else
  {
  }

  swift_deallocPartialClassInstance();
  return 0;
}

uint64_t NearbyGroupCreationRequest.id.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t NearbyGroupConnectionInfo.localMember.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14NearbySessions25NearbyGroupConnectionInfo_localMember);

  return v1;
}

id NearbyGroupConnectionInfo.__allocating_init(id:endpoint:localMember:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = objc_allocWithZone(v4);
  v10 = OBJC_IVAR____TtC14NearbySessions25NearbyGroupConnectionInfo_id;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  (*(v12 + 16))(&v9[v10], a1, v11);
  *&v9[OBJC_IVAR____TtC14NearbySessions25NearbyGroupConnectionInfo_endpoint] = a2;
  v13 = &v9[OBJC_IVAR____TtC14NearbySessions25NearbyGroupConnectionInfo_localMember];
  *v13 = a3;
  *(v13 + 1) = a4;
  v16.receiver = v9;
  v16.super_class = v4;
  v14 = objc_msgSendSuper2(&v16, sel_init);
  (*(v12 + 8))(a1, v11);
  return v14;
}

id NearbyGroupConnectionInfo.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id NearbyGroupCreationRequest.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t key path setter for NearbyGroupTable.serialQueue : NearbyGroupTable(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AsyncSerialQueue();
  MEMORY[0x28223BE20](v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v6, a1);
  return (*(**a2 + 104))(v6);
}

uint64_t NearbyGroupTable.serialQueue.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC14NearbySessions16NearbyGroupTable_serialQueue;
  swift_beginAccess();
  v4 = type metadata accessor for AsyncSerialQueue();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t NearbyGroupTable.serialQueue.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14NearbySessions16NearbyGroupTable_serialQueue;
  swift_beginAccess();
  v4 = type metadata accessor for AsyncSerialQueue();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

uint64_t NearbyGroupTable.WeakNearbyGroup.group.setter(uint64_t a1)
{
  swift_weakAssign();
}

uint64_t (*NearbyGroupTable.WeakNearbyGroup.group.modify(uint64_t *a1))()
{
  a1[1] = v1;
  *a1 = swift_weakLoadStrong();
  return NearbyGroupTable.WeakNearbyGroup.group.modify;
}

uint64_t NearbyGroupTable.WeakNearbyGroup.group.modify(void *a1)
{
  swift_weakAssign();
}

uint64_t NearbyGroupTable.WeakNearbyGroup.init(group:)()
{
  swift_weakInit();
}

uint64_t NearbyGroupTable.cleanUpIfNotPresent(_:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for AsyncSerialQueue();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](NearbyGroupTable.cleanUpIfNotPresent(_:), 0, 0);
}

uint64_t NearbyGroupTable.cleanUpIfNotPresent(_:)()
{
  v1 = v0[2];
  v2 = v0[3];
  (*(*v2 + 96))();
  v3 = swift_allocObject();
  v0[7] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;

  v4 = swift_task_alloc();
  v0[8] = v4;
  *v4 = v0;
  v4[1] = NearbyGroupTable.cleanUpIfNotPresent(_:);

  return MEMORY[0x28214FC20]();
}

{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 40);
  v3 = *(*v0 + 32);

  (*(v2 + 8))(v1, v3);

  return MEMORY[0x2822009F8](NearbyGroupTable.cleanUpIfNotPresent(_:), 0, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t closure #1 in NearbyGroupTable.cleanUpIfNotPresent(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[10] = a2;
  v3[11] = a3;
  v4 = type metadata accessor for UUID();
  v3[12] = v4;
  v3[13] = *(v4 - 8);
  v3[14] = swift_task_alloc();
  v3[15] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_14NearbySessions0D10GroupTableC04WeakdF0V5valuetMd, &_s10Foundation4UUIDV3key_14NearbySessions0D10GroupTableC04WeakdF0V5valuetMR);
  v3[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in NearbyGroupTable.cleanUpIfNotPresent(_:), 0, 0);
}

void closure #1 in NearbyGroupTable.cleanUpIfNotPresent(_:)()
{
  v55 = v0;
  v1 = *(v0 + 120);
  v2 = *(v0 + 104);
  v4 = *(v0 + 80);
  v3 = *(v0 + 88);
  v5 = OBJC_IVAR____TtC14NearbySessions16NearbyGroupTable_contents;
  swift_beginAccess();

  v7 = specialized _NativeDictionary.filter(_:)(v6, v3);

  v8 = v7 + 64;
  v9 = -1;
  v10 = -1 << *(v7 + 32);
  if (-v10 < 64)
  {
    v9 = ~(-1 << -v10);
  }

  v11 = v9 & *(v7 + 64);
  v12 = (63 - v10) >> 6;
  v49 = v2;
  v53 = (v2 + 8);
  v50 = v7;

  v13 = 0;
  v45 = v12;
  v46 = v7 + 64;
  v47 = v5;
  v48 = v4;
  while (v11)
  {
LABEL_11:
    v16 = *(v0 + 128);
    v17 = __clz(__rbit64(v11)) | (v13 << 6);
    v52 = *(v49 + 72);
    v18 = *(v49 + 16);
    v18(v16, *(v50 + 48) + v52 * v17, *(v0 + 96));
    outlined init with copy of NearbyGroupTable.WeakNearbyGroup(*(v50 + 56) + 8 * v17, v16 + *(v1 + 48));
    if (one-time initialization token for group != -1)
    {
      swift_once();
    }

    v19 = *(v0 + 128);
    v20 = *(v0 + 112);
    v21 = *(v0 + 96);
    v22 = type metadata accessor for Logger();
    __swift_project_value_buffer(v22, static Log.group);
    v18(v20, v19, v21);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();
    v25 = os_log_type_enabled(v23, v24);
    v26 = *(v0 + 112);
    v27 = *(v0 + 96);
    if (v25)
    {
      v43 = v24;
      v28 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v54 = v44;
      *v28 = 136315138;
      _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v29 = v1;
      v30 = dispatch thunk of CustomStringConvertible.description.getter();
      v32 = v31;
      v51 = *v53;
      (*v53)(v26, v27);
      v33 = v30;
      v1 = v29;
      v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v32, &v54);

      *(v28 + 4) = v34;
      _os_log_impl(&dword_25B7C4000, v23, v43, "NearbyGroup %s is no longer tracked. Cleaning up.", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v44);
      MEMORY[0x25F86FE20](v44, -1, -1);
      MEMORY[0x25F86FE20](v28, -1, -1);
    }

    else
    {

      v51 = *v53;
      (*v53)(v26, v27);
    }

    v8 = v46;
    v35 = *(v0 + 128);
    swift_beginAccess();
    v36 = specialized __RawDictionaryStorage.find<A>(_:)(v35);
    v38 = v37;
    if (v37)
    {
      v39 = v36;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v41 = *(v48 + v47);
      v54 = v41;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        specialized _NativeDictionary.copy()();
        v41 = v54;
      }

      v51(*(v41 + 48) + v39 * v52, *(v0 + 96));
      outlined init with take of NearbyGroupTable.WeakNearbyGroup(*(v41 + 56) + 8 * v39, v0 + 64);
      specialized _NativeDictionary._delete(at:)(v39, v41);
      *(v48 + v47) = v41;
    }

    else
    {
      *(v0 + 64) = 0;
    }

    v11 &= v11 - 1;
    v14 = *(v0 + 128);
    *(v0 + 72) = (v38 & 1) == 0;
    outlined destroy of NSObject?(v0 + 64, &_s14NearbySessions0A10GroupTableC04WeakaC0VSgMd, &_s14NearbySessions0A10GroupTableC04WeakaC0VSgMR);
    swift_endAccess();
    outlined destroy of NSObject?(v14, &_s10Foundation4UUIDV3key_14NearbySessions0D10GroupTableC04WeakdF0V5valuetMd, &_s10Foundation4UUIDV3key_14NearbySessions0D10GroupTableC04WeakdF0V5valuetMR);
    v12 = v45;
  }

  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
      return;
    }

    if (v15 >= v12)
    {
      break;
    }

    v11 = *(v8 + 8 * v15);
    ++v13;
    if (v11)
    {
      v13 = v15;
      goto LABEL_11;
    }
  }

  v42 = *(v0 + 8);

  v42();
}

uint64_t partial apply for closure #1 in NearbyGroupTable.cleanUpIfNotPresent(_:)(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = partial apply for closure #1 in NearbyGroupTable.cleanUpIfNotPresent(_:);

  return closure #1 in NearbyGroupTable.cleanUpIfNotPresent(_:)(a1, v5, v4);
}

uint64_t closure #1 in closure #1 in NearbyGroupTable.cleanUpIfNotPresent(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v25[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (*(a3 + 16))
  {
    specialized __RawDictionaryStorage.find<A>(_:)(a1);
    if (v10)
    {
      return 0;
    }
  }

  if (one-time initialization token for group != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  __swift_project_value_buffer(v12, static Log.group);
  (*(v7 + 16))(v9, a1, v6);
  outlined init with copy of NearbyGroupTable.WeakNearbyGroup(a2, v30);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v29 = v16;
    *v15 = 136315394;
    _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v19 = v18;
    (*(v7 + 8))(v9, v6);
    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v19, &v29);

    *(v15 + 4) = v20;
    *(v15 + 12) = 2080;
    outlined init with copy of NearbyGroupTable.WeakNearbyGroup(v30, v28);
    v28[8] = 0;
    outlined init with copy of (UUID, Bool)(v28, v27, &_s14NearbySessions0A10GroupTableC04WeakaC0VSgMd, &_s14NearbySessions0A10GroupTableC04WeakaC0VSgMR);
    if (v27[8])
    {
      v21 = 0xE300000000000000;
      v22 = 7104878;
    }

    else
    {
      outlined init with take of NearbyGroupTable.WeakNearbyGroup(v27, v26);
      outlined init with copy of NearbyGroupTable.WeakNearbyGroup(v26, v25);
      v22 = String.init<A>(reflecting:)();
      v21 = v23;
      outlined destroy of NearbyGroupTable.WeakNearbyGroup(v26);
    }

    outlined destroy of NSObject?(v28, &_s14NearbySessions0A10GroupTableC04WeakaC0VSgMd, &_s14NearbySessions0A10GroupTableC04WeakaC0VSgMR);
    outlined destroy of NearbyGroupTable.WeakNearbyGroup(v30);
    v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v21, &v29);

    *(v15 + 14) = v24;
    _os_log_impl(&dword_25B7C4000, v13, v14, "NearbyGroup %s, %s was removed.", v15, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25F86FE20](v16, -1, -1);
    MEMORY[0x25F86FE20](v15, -1, -1);
  }

  else
  {

    outlined destroy of NearbyGroupTable.WeakNearbyGroup(v30);
    (*(v7 + 8))(v9, v6);
  }

  return 1;
}

uint64_t NearbyGroupTable.registerIfNotPresent(identifier:generationBlock:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  v5 = type metadata accessor for UUID();
  v4[7] = v5;
  v6 = *(v5 - 8);
  v4[8] = v6;
  v4[9] = *(v6 + 64);
  v4[10] = swift_task_alloc();
  v7 = type metadata accessor for AsyncSerialQueue();
  v4[11] = v7;
  v4[12] = *(v7 - 8);
  v4[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](NearbyGroupTable.registerIfNotPresent(identifier:generationBlock:), 0, 0);
}

uint64_t NearbyGroupTable.registerIfNotPresent(identifier:generationBlock:)()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[7];
  v4 = v0[8];
  v6 = v0[5];
  v5 = v0[6];
  v7 = v0[3];
  v8 = v0[4];
  (*(*v5 + 96))();
  (*(v4 + 16))(v1, v7, v3);
  v9 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v10 = swift_allocObject();
  v0[14] = v10;
  *(v10 + 16) = v5;
  (*(v4 + 32))(v10 + v9, v1, v3);
  v11 = (v10 + ((v2 + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v11 = v8;
  v11[1] = v6;

  v12 = swift_task_alloc();
  v0[15] = v12;
  v13 = type metadata accessor for NearbyGroup(0);
  *v12 = v0;
  v12[1] = NearbyGroupTable.registerIfNotPresent(identifier:generationBlock:);

  return MEMORY[0x28214FC18](v0 + 2, &async function pointer to partial apply for closure #1 in NearbyGroupTable.registerIfNotPresent(identifier:generationBlock:), v10, v13);
}

{
  v2 = *(*v1 + 104);
  v3 = *(*v1 + 96);
  v4 = *(*v1 + 88);
  *(*v1 + 128) = v0;

  (*(v3 + 8))(v2, v4);

  if (v0)
  {
    v5 = NearbyGroupTable.registerIfNotPresent(identifier:generationBlock:);
  }

  else
  {
    v5 = NearbyGroupTable.registerIfNotPresent(identifier:generationBlock:);
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

{
  v1 = *(v0 + 16);

  v2 = *(v0 + 8);

  return v2(v1);
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t closure #1 in NearbyGroupTable.registerIfNotPresent(identifier:generationBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[17] = a4;
  v5[18] = a5;
  v5[15] = a2;
  v5[16] = a3;
  v5[14] = a1;
  v6 = type metadata accessor for UUID();
  v5[19] = v6;
  v5[20] = *(v6 - 8);
  v5[21] = swift_task_alloc();
  v5[22] = swift_task_alloc();
  v5[23] = swift_task_alloc();
  v5[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in NearbyGroupTable.registerIfNotPresent(identifier:generationBlock:), 0, 0);
}

uint64_t closure #1 in NearbyGroupTable.registerIfNotPresent(identifier:generationBlock:)()
{
  v58 = v0;
  v1 = *(v0 + 120);
  v2 = OBJC_IVAR____TtC14NearbySessions16NearbyGroupTable_contents;
  *(v0 + 200) = OBJC_IVAR____TtC14NearbySessions16NearbyGroupTable_contents;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (!*(v3 + 16))
  {
    goto LABEL_10;
  }

  v4 = *(v0 + 128);

  v5 = specialized __RawDictionaryStorage.find<A>(_:)(v4);
  if ((v6 & 1) == 0)
  {

LABEL_10:
    *(v0 + 64) = 0;
    *(v0 + 72) = 1;
    outlined destroy of NSObject?(v0 + 64, &_s14NearbySessions0A10GroupTableC04WeakaC0VSgMd, &_s14NearbySessions0A10GroupTableC04WeakaC0VSgMR);
    goto LABEL_11;
  }

  outlined init with copy of NearbyGroupTable.WeakNearbyGroup(*(v3 + 56) + 8 * v5, v0 + 64);

  *(v0 + 72) = 0;
  Strong = swift_weakLoadStrong();
  outlined destroy of NSObject?(v0 + 64, &_s14NearbySessions0A10GroupTableC04WeakaC0VSgMd, &_s14NearbySessions0A10GroupTableC04WeakaC0VSgMR);
  if (Strong)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v8 = *(v0 + 96);
    if (v8 <= 1)
    {
      if (one-time initialization token for group != -1)
      {
        swift_once();
      }

      v9 = *(v0 + 192);
      v10 = *(v0 + 152);
      v11 = *(v0 + 160);
      v12 = *(v0 + 128);
      v13 = type metadata accessor for Logger();
      __swift_project_value_buffer(v13, static Log.group);
      (*(v11 + 16))(v9, v12, v10);
      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.info.getter();
      v16 = os_log_type_enabled(v14, v15);
      v17 = *(v0 + 192);
      v19 = *(v0 + 152);
      v18 = *(v0 + 160);
      if (v16)
      {
        v20 = swift_slowAlloc();
        v54 = swift_slowAlloc();
        v57 = v54;
        *v20 = 136315138;
        _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        v21 = dispatch thunk of CustomStringConvertible.description.getter();
        v23 = v22;
        (*(v18 + 8))(v17, v19);
        v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v23, &v57);

        *(v20 + 4) = v24;
        _os_log_impl(&dword_25B7C4000, v14, v15, "Group already exists for identifier: %s", v20, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v54);
        MEMORY[0x25F86FE20](v54, -1, -1);
        MEMORY[0x25F86FE20](v20, -1, -1);
      }

      else
      {

        (*(v18 + 8))(v17, v19);
      }

      **(v0 + 112) = Strong;

      v53 = *(v0 + 8);

      return v53();
    }

    if (one-time initialization token for group != -1)
    {
      swift_once();
    }

    v45 = type metadata accessor for Logger();
    __swift_project_value_buffer(v45, static Log.group);

    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v57 = v49;
      *v48 = 136315138;
      *(v0 + 104) = Strong;
      type metadata accessor for NearbyGroup(0);

      v50 = String.init<A>(reflecting:)();
      v52 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v50, v51, &v57);

      *(v48 + 4) = v52;
      _os_log_impl(&dword_25B7C4000, v46, v47, "NearbyGroup already but is invalidated. Creating a new NearbyGroup to replace it. Existing: %s", v48, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v49);
      MEMORY[0x25F86FE20](v49, -1, -1);
      MEMORY[0x25F86FE20](v48, -1, -1);

      outlined consume of NearbyGroup.State(v8);
    }

    else
    {
      outlined consume of NearbyGroup.State(v8);
    }
  }

LABEL_11:
  if (one-time initialization token for group != -1)
  {
    swift_once();
  }

  v25 = *(v0 + 184);
  v26 = *(v0 + 152);
  v27 = *(v0 + 160);
  v28 = *(v0 + 128);
  v29 = type metadata accessor for Logger();
  *(v0 + 208) = __swift_project_value_buffer(v29, static Log.group);
  v30 = *(v27 + 16);
  *(v0 + 216) = v30;
  *(v0 + 224) = (v27 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v30(v25, v28, v26);
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.default.getter();
  v33 = os_log_type_enabled(v31, v32);
  v34 = *(v0 + 184);
  v35 = *(v0 + 152);
  v36 = *(v0 + 160);
  if (v33)
  {
    v37 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v57 = v55;
    *v37 = 136315138;
    _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v38 = dispatch thunk of CustomStringConvertible.description.getter();
    v40 = v39;
    v41 = *(v36 + 8);
    v41(v34, v35);
    v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v40, &v57);

    *(v37 + 4) = v42;
    _os_log_impl(&dword_25B7C4000, v31, v32, "Attempting generation for %s", v37, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v55);
    MEMORY[0x25F86FE20](v55, -1, -1);
    MEMORY[0x25F86FE20](v37, -1, -1);
  }

  else
  {

    v41 = *(v36 + 8);
    v41(v34, v35);
  }

  *(v0 + 232) = v41;
  v56 = (*(v0 + 136) + **(v0 + 136));
  v43 = swift_task_alloc();
  *(v0 + 240) = v43;
  *v43 = v0;
  v43[1] = closure #1 in NearbyGroupTable.registerIfNotPresent(identifier:generationBlock:);

  return v56();
}

{
  v23 = v0;
  (*(v0 + 216))(*(v0 + 176), *(v0 + 128), *(v0 + 152));

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 176);
    v4 = *(v0 + 152);
    v21 = *(v0 + 232);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v22 = v6;
    *v5 = 136315394;

    v7 = NearbyGroup.description.getter();
    v9 = v8;

    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v9, &v22);

    *(v5 + 4) = v10;
    *(v5 + 12) = 2080;
    _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v11 = dispatch thunk of CustomStringConvertible.description.getter();
    v13 = v12;
    v21(v3, v4);
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v13, &v22);

    *(v5 + 14) = v14;
    _os_log_impl(&dword_25B7C4000, v1, v2, "Generated group: %s for identifier: %s", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25F86FE20](v6, -1, -1);
    MEMORY[0x25F86FE20](v5, -1, -1);
  }

  else
  {
    v15 = *(v0 + 232);
    v16 = *(v0 + 176);
    v17 = *(v0 + 152);

    v15(v16, v17);
  }

  v18 = *(v0 + 168);
  (*(v0 + 216))(v18, *(v0 + 128), *(v0 + 152));
  swift_weakInit();
  *(v0 + 88) = 0;
  swift_beginAccess();
  specialized Dictionary.subscript.setter(v0 + 80, v18);
  swift_endAccess();
  **(v0 + 112) = *(v0 + 248);

  v19 = *(v0 + 8);

  return v19();
}

uint64_t closure #1 in NearbyGroupTable.registerIfNotPresent(identifier:generationBlock:)(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 248) = a1;

  if (v1)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x2822009F8](closure #1 in NearbyGroupTable.registerIfNotPresent(identifier:generationBlock:), 0, 0);
  }
}

uint64_t partial apply for closure #1 in NearbyGroupTable.registerIfNotPresent(identifier:generationBlock:)(uint64_t a1)
{
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = (v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = partial apply for closure #1 in NearbyGroupTable.cleanUpIfNotPresent(_:);

  return closure #1 in NearbyGroupTable.registerIfNotPresent(identifier:generationBlock:)(a1, v6, v1 + v5, v8, v9);
}

uint64_t specialized Dictionary.subscript.setter(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8))
  {
    outlined destroy of NSObject?(a1, &_s14NearbySessions0A10GroupTableC04WeakaC0VSgMd, &_s14NearbySessions0A10GroupTableC04WeakaC0VSgMR);
    specialized Dictionary._Variant.removeValue(forKey:)(a2, v9);
    v4 = type metadata accessor for UUID();
    (*(*(v4 - 8) + 8))(a2, v4);
    return outlined destroy of NSObject?(v9, &_s14NearbySessions0A10GroupTableC04WeakaC0VSgMd, &_s14NearbySessions0A10GroupTableC04WeakaC0VSgMR);
  }

  else
  {
    outlined init with take of NearbyGroupTable.WeakNearbyGroup(a1, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v2;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v9, a2, isUniquelyReferenced_nonNull_native);
    v7 = type metadata accessor for UUID();
    result = (*(*(v7 - 8) + 8))(a2, v7);
    *v2 = v8;
  }

  return result;
}

uint64_t NearbyGroupTable.firstGroup()()
{
  v1[3] = v0;
  v2 = type metadata accessor for AsyncSerialQueue();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](NearbyGroupTable.firstGroup(), 0, 0);
}

{
  (*(**(v0 + 24) + 96))();

  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  v2 = type metadata accessor for NearbyGroup(0);
  *v1 = v0;
  v1[1] = NearbyGroupTable.firstGroup();
  v3 = *(v0 + 24);

  return MEMORY[0x28214FC18](v0 + 16, &async function pointer to partial apply for closure #1 in NearbyGroupTable.firstGroup(), v3, v2);
}

{
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 32);
  *(*v1 + 64) = v0;

  (*(v3 + 8))(v2, v4);

  if (v0)
  {
    v5 = NearbyGroupTable.firstGroup();
  }

  else
  {
    v5 = NearbyGroupTable.firstGroup();
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

{
  v1 = *(v0 + 16);

  v2 = *(v0 + 8);

  return v2(v1);
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t closure #1 in NearbyGroupTable.firstGroup()(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  v2[7] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_14NearbySessions0D10GroupTableC04WeakdF0V5valuetMd, &_s10Foundation4UUIDV3key_14NearbySessions0D10GroupTableC04WeakdF0V5valuetMR);
  v2[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in NearbyGroupTable.firstGroup(), 0, 0);
}

uint64_t closure #1 in NearbyGroupTable.firstGroup()()
{
  v1 = v0[6];
  v22 = v0[7];
  v2 = OBJC_IVAR____TtC14NearbySessions16NearbyGroupTable_contents;
  swift_beginAccess();
  v3 = *(v1 + v2);
  v4 = MEMORY[0x277D84F90];
  v23 = MEMORY[0x277D84F90];
  v5 = -1;
  v6 = -1 << *(v3 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(v3 + 64);
  v8 = (63 - v6) >> 6;
  swift_bridgeObjectRetain_n();
  v9 = 0;
  if (!v7)
  {
    goto LABEL_6;
  }

  do
  {
LABEL_4:
    while (1)
    {
      v10 = v0[8];
      v11 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v12 = v11 | (v9 << 6);
      v13 = *(v3 + 48);
      v14 = type metadata accessor for UUID();
      (*(*(v14 - 8) + 16))(v10, v13 + *(*(v14 - 8) + 72) * v12, v14);
      outlined init with copy of NearbyGroupTable.WeakNearbyGroup(*(v3 + 56) + 8 * v12, v10 + *(v22 + 48));
      Strong = swift_weakLoadStrong();
      v16 = outlined destroy of NSObject?(v10, &_s10Foundation4UUIDV3key_14NearbySessions0D10GroupTableC04WeakdF0V5valuetMd, &_s10Foundation4UUIDV3key_14NearbySessions0D10GroupTableC04WeakdF0V5valuetMR);
      if (Strong)
      {
        break;
      }

      if (!v7)
      {
        goto LABEL_6;
      }
    }

    MEMORY[0x25F86F0D0](v16);
    if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v4 = v23;
  }

  while (v7);
  while (1)
  {
LABEL_6:
    v17 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
LABEL_21:
      result = __CocoaSet.count.getter();
      if (result)
      {
        goto LABEL_16;
      }

LABEL_22:

      lazy protocol witness table accessor for type Errors #1 in NearbyGroupTable.firstGroup() and conformance Errors #1 in NearbyGroupTable.firstGroup()();
      swift_allocError();
      swift_willThrow();

      v21 = v0[1];
      goto LABEL_23;
    }

    if (v17 >= v8)
    {
      break;
    }

    v7 = *(v3 + 64 + 8 * v17);
    ++v9;
    if (v7)
    {
      v9 = v17;
      goto LABEL_4;
    }
  }

  if (v4 >> 62)
  {
    goto LABEL_21;
  }

  if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_22;
  }

LABEL_16:
  if ((v4 & 0xC000000000000001) != 0)
  {
    v19 = MEMORY[0x25F86F4A0](0, v4);
  }

  else
  {
    if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v19 = *(v4 + 32);
  }

  v20 = v0[5];

  *v20 = v19;

  v21 = v0[1];
LABEL_23:

  return v21();
}

uint64_t partial apply for closure #1 in NearbyGroupTable.firstGroup()(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = partial apply for closure #1 in NearbyGroupTable.firstGroup();

  return closure #1 in NearbyGroupTable.firstGroup()(a1, v1);
}

uint64_t partial apply for closure #1 in NearbyGroupTable.firstGroup()()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t NearbyGroupTable.deinit()
{
  v1 = OBJC_IVAR____TtC14NearbySessions16NearbyGroupTable_serialQueue;
  v2 = type metadata accessor for AsyncSerialQueue();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t NearbyGroupTable.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC14NearbySessions16NearbyGroupTable_serialQueue;
  v2 = type metadata accessor for AsyncSerialQueue();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t NearbyGroupTable.__allocating_init()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV15BufferingPolicyOyyyYaYbc__GMd, &_sScS12ContinuationV15BufferingPolicyOyyyYaYbc__GMR);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v11 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v11 - v5;
  v7 = swift_allocObject();
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  (*(v1 + 104))(v3, *MEMORY[0x277D85778], v0);
  AsyncSerialQueue.init(priority:bufferingPolicy:)();
  v9 = OBJC_IVAR____TtC14NearbySessions16NearbyGroupTable_contents;
  *(v7 + v9) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_14NearbySessions0E10GroupTableC04WeakeG0VTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  return v7;
}