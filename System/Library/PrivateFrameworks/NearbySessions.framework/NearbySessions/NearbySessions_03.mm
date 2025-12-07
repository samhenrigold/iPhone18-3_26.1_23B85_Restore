uint64_t closure #1 in NearbyInvitation.markUsed()(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v17 - v9;
  v20 = *(a2 + direct field offset for NearbyInvitation.controller);
  v18 = *(a2 + direct field offset for NearbyInvitation.invitationHostInfo);
  v11 = direct field offset for NearbyInvitation.id;
  (*(v7 + 16))(&v17 - v9, v19, v6);
  (*(v4 + 16))(&v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a2 + v11, v3);
  v12 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v13 = (v8 + *(v4 + 80) + v12) & ~*(v4 + 80);
  v14 = swift_allocObject();
  (*(v7 + 32))(v14 + v12, v10, v6);
  (*(v4 + 32))(v14 + v13, &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  v15 = v18;
  *(v14 + ((v5 + v13 + 7) & 0xFFFFFFFFFFFFFFF8)) = v18;
  NearbyInvitationsController.markInvitationUsed(_:response:)(v15, partial apply for closure #1 in closure #1 in NearbyInvitation.markUsed(), v14);
}

uint64_t closure #1 in closure #1 in NearbyInvitation.markUsed()(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](a1);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v9)
  {
    v29 = v9;
    v12 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    if (one-time initialization token for client != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    __swift_project_value_buffer(v14, static Log.client);
    (*(v8 + 16))(v11, a3, v7);
    v15 = a4;
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v29 = v28;
      *v18 = 136315394;
      _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_2(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v19 = dispatch thunk of CustomStringConvertible.description.getter();
      v21 = v20;
      (*(v8 + 8))(v11, v7);
      v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v21, &v29);

      *(v18 + 4) = v22;
      *(v18 + 12) = 2112;
      *(v18 + 14) = v15;
      v23 = v27;
      *v27 = v15;
      v24 = v15;
      _os_log_impl(&dword_25B7C4000, v16, v17, "Successfully marked invitation: %s - %@ as used.", v18, 0x16u);
      outlined destroy of NSObject?(v23, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x25F86FE20](v23, -1, -1);
      v25 = v28;
      __swift_destroy_boxed_opaque_existential_0(v28);
      MEMORY[0x25F86FE20](v25, -1, -1);
      MEMORY[0x25F86FE20](v18, -1, -1);
    }

    else
    {

      (*(v8 + 8))(v11, v7);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
    return CheckedContinuation.resume(returning:)();
  }
}

uint64_t NearbyInvitation.approve(_:userInfo:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a3;
  v4[10] = v3;
  v4[7] = a1;
  v4[8] = a2;
  return MEMORY[0x2822009F8](NearbyInvitation.approve(_:userInfo:), 0, 0);
}

uint64_t NearbyInvitation.approve(_:userInfo:)()
{
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  v7 = *(v0 + 56);
  v3 = swift_task_alloc();
  *(v0 + 88) = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v7;
  *(v3 + 40) = v2;
  v4 = swift_task_alloc();
  *(v0 + 96) = v4;
  *v4 = v0;
  v4[1] = NearbyInvitation.approve(_:userInfo:);
  v5 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v4, 0, 0, 0xD000000000000014, 0x800000025B830E60, partial apply for closure #1 in NearbyInvitation.approve(_:userInfo:), v3, v5);
}

{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = NearbyInvitation.approve(_:userInfo:);
  }

  else
  {

    v2 = NearbyInvitation.approve(_:userInfo:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  if (one-time initialization token for client != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[14] = __swift_project_value_buffer(v1, static Log.client);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_25B7C4000, v2, v3, "Successfully approved, now telling sourceProvider to add the member", v4, 2u);
    MEMORY[0x25F86FE20](v4, -1, -1);
  }

  v5 = v0[10];
  v6 = v0[7];

  v7 = *v6;
  v8 = (*v6 + OBJC_IVAR____TtC14NearbySessions29IncomingInvitationJoinRequest_remotePseudonym);
  v10 = *v8;
  v9 = v8[1];
  v0[15] = v9;
  v11 = (v7 + OBJC_IVAR____TtC14NearbySessions29IncomingInvitationJoinRequest_destinationToken);
  v13 = *v11;
  v12 = v11[1];
  v0[16] = v12;
  v14 = (v5 + direct field offset for NearbyInvitation.sourceProvider);
  v15 = *(v5 + direct field offset for NearbyInvitation.sourceProvider + 24);
  v16 = v14[4];
  __swift_project_boxed_opaque_existential_1(v14, v15);
  v0[2] = v10;
  v0[3] = v9;
  v0[4] = v13;
  v0[5] = v12;
  v17 = *(v16 + 24);

  v20 = (v17 + *v17);
  v18 = swift_task_alloc();
  v0[17] = v18;
  *v18 = v0;
  v18[1] = NearbyInvitation.approve(_:userInfo:);

  return (v20)(v0 + 2, v15, v16);
}

{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = NearbyInvitation.approve(_:userInfo:);
  }

  else
  {

    v2 = NearbyInvitation.approve(_:userInfo:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

{
  v15 = v0;
  v1 = v0[18];

  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[18];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136315138;
    v0[6] = v5;
    v8 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v9 = String.init<A>(reflecting:)();
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v14);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_25B7C4000, v3, v4, "SourceProvider failed to handle adding the approvedMember, error: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x25F86FE20](v7, -1, -1);
    MEMORY[0x25F86FE20](v6, -1, -1);
  }

  swift_willThrow();
  v12 = v0[1];

  return v12();
}

uint64_t NearbyInvitation.approve(_:userInfo:)(uint64_t a1)
{
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_25B7C4000, v2, v3, "SourceProvider successfully handled adding the approvedMember", v4, 2u);
    MEMORY[0x25F86FE20](v4, -1, -1);
  }

  v5 = *(v1 + 8);

  return v5();
}

void closure #1 in NearbyInvitation.approve(_:userInfo:)(uint64_t a1, uint64_t a2, void **a3, uint64_t a4, unint64_t a5)
{
  v33 = a4;
  v34 = a5;
  v35 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v30 - v9;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a2 + direct field offset for NearbyInvitation.controller);
  v31 = *a3;
  v32 = v15;
  v16 = *(a2 + direct field offset for NearbyInvitation.sourceProvider + 24);
  v17 = *(a2 + direct field offset for NearbyInvitation.sourceProvider + 32);
  __swift_project_boxed_opaque_existential_1((a2 + direct field offset for NearbyInvitation.sourceProvider), v16);
  (*(v17 + 16))(v16, v17);
  v18 = UUID.uuidString.getter();
  v20 = v19;
  (*(v12 + 8))(v14, v11);
  v21 = type metadata accessor for InvitationJoinResponse();
  v22 = objc_allocWithZone(v21);
  v23 = &v22[OBJC_IVAR____TtC14NearbySessions22InvitationJoinResponse_sessionIdentifier];
  *v23 = v18;
  v23[1] = v20;
  *&v22[OBJC_IVAR____TtC14NearbySessions22InvitationJoinResponse_memberHandles] = MEMORY[0x277D84F90];
  v24 = &v22[OBJC_IVAR____TtC14NearbySessions22InvitationJoinResponse_userInfo];
  v25 = v33;
  v26 = v34;
  *v24 = v33;
  v24[1] = v26;
  outlined copy of Data?(v25, v26);
  v36.receiver = v22;
  v36.super_class = v21;
  v27 = objc_msgSendSuper2(&v36, sel_init);
  (*(v8 + 16))(v10, v35, v7);
  v28 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v29 = swift_allocObject();
  (*(v8 + 32))(v29 + v28, v10, v7);
  NearbyInvitationsController.approve(pendingMember:response:completion:)(v31, v27, partial apply for closure #1 in closure #1 in NearbyInvitation.approve(_:userInfo:), v29);
}

uint64_t closure #1 in closure #1 in NearbyInvitation.approve(_:userInfo:)(void *a1)
{
  if (a1)
  {
    v1 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
    return CheckedContinuation.resume(returning:)();
  }
}

uint64_t InvitationApprovalRequest.displayName.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14NearbySessions25InvitationApprovalRequest_displayName);

  return v1;
}

uint64_t InvitationApprovalRequest.userInfo.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14NearbySessions25InvitationApprovalRequest_userInfo);
  outlined copy of Data?(v1, *(v0 + OBJC_IVAR____TtC14NearbySessions25InvitationApprovalRequest_userInfo + 8));
  return v1;
}

id InvitationApprovalRequest.init(remoteInvitationData:displayName:userInfo:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *&v5[OBJC_IVAR____TtC14NearbySessions25InvitationApprovalRequest_remoteInvitationData] = a1;
  v6 = &v5[OBJC_IVAR____TtC14NearbySessions25InvitationApprovalRequest_displayName];
  *v6 = a2;
  *(v6 + 1) = a3;
  v7 = &v5[OBJC_IVAR____TtC14NearbySessions25InvitationApprovalRequest_userInfo];
  *v7 = a4;
  *(v7 + 1) = a5;
  v9.receiver = v5;
  v9.super_class = type metadata accessor for InvitationApprovalRequest();
  return objc_msgSendSuper2(&v9, sel_init);
}

uint64_t InvitationApprovalRequest.description.getter()
{
  v1 = v0;
  swift_getObjectType();
  _StringGuts.grow(_:)(60);
  MEMORY[0x25F86F070](60, 0xE100000000000000);
  v2 = _typeName(_:qualified:)();
  MEMORY[0x25F86F070](v2);

  MEMORY[0x25F86F070](0xD000000000000017, 0x800000025B830E80);
  v3 = [*(v0 + OBJC_IVAR____TtC14NearbySessions25InvitationApprovalRequest_remoteInvitationData) description];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  MEMORY[0x25F86F070](v4, v6);

  MEMORY[0x25F86F070](0x616C70736964202CLL, 0xEF203A656D614E79);
  MEMORY[0x25F86F070](*(v1 + OBJC_IVAR____TtC14NearbySessions25InvitationApprovalRequest_displayName), *(v1 + OBJC_IVAR____TtC14NearbySessions25InvitationApprovalRequest_displayName + 8));
  MEMORY[0x25F86F070](0x6E4972657375202CLL, 0xEC000000203A6F66);
  v7 = *(v1 + OBJC_IVAR____TtC14NearbySessions25InvitationApprovalRequest_userInfo + 8);
  if (v7 >> 60 == 15)
  {
    v8 = 0xE300000000000000;
    v9 = 7104878;
  }

  else
  {
    outlined copy of Data._Representation(*(v1 + OBJC_IVAR____TtC14NearbySessions25InvitationApprovalRequest_userInfo), v7);
    v9 = String.init<A>(reflecting:)();
    v8 = v10;
  }

  MEMORY[0x25F86F070](v9, v8);

  MEMORY[0x25F86F070](62, 0xE100000000000000);
  return 0;
}

Swift::Void __swiftcall InvitationApprovalRequest.encode(with:)(NSCoder with)
{
  v3 = *(v1 + OBJC_IVAR____TtC14NearbySessions25InvitationApprovalRequest_remoteInvitationData);
  v4 = MEMORY[0x25F86F000](0xD000000000000014, 0x800000025B830EA0);
  [(objc_class *)with.super.isa encodeObject:v3 forKey:v4];

  v5 = MEMORY[0x25F86F000](*(v1 + OBJC_IVAR____TtC14NearbySessions25InvitationApprovalRequest_displayName), *(v1 + OBJC_IVAR____TtC14NearbySessions25InvitationApprovalRequest_displayName + 8));
  v6 = MEMORY[0x25F86F000](0x4E79616C70736964, 0xEB00000000656D61);
  [(objc_class *)with.super.isa encodeObject:v5 forKey:v6];

  if (*(v1 + OBJC_IVAR____TtC14NearbySessions25InvitationApprovalRequest_userInfo + 8) >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
  }

  v8 = MEMORY[0x25F86F000](0x6F666E4972657375, 0xE800000000000000);
  [(objc_class *)with.super.isa encodeObject:isa forKey:v8];
  swift_unknownObjectRelease();
}

id InvitationApprovalRequest.init(coder:)(void *a1)
{
  type metadata accessor for NearbyInvitationData(0);
  v2 = NSCoder.decodeObject<A>(of:forKey:)();
  if (v2)
  {
    v3 = v2;
    type metadata accessor for NSSet(0, &lazy cache variable for type metadata for NSString, 0x277CCACA8);
    v4 = NSCoder.decodeObject<A>(of:forKey:)();
    if (v4)
    {
      v5 = v4;
      static String._conditionallyBridgeFromObjectiveC(_:result:)();
    }

    a1 = v3;
  }

  type metadata accessor for InvitationApprovalRequest();
  swift_deallocPartialClassInstance();
  return 0;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance InvitationApprovalRequest.CodingKeys()
{
  v1 = 0x4E79616C70736964;
  if (*v0 != 1)
  {
    v1 = 0x6F666E4972657375;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000014;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance InvitationApprovalRequest.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized InvitationApprovalRequest.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance InvitationApprovalRequest.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type InvitationApprovalRequest.CodingKeys and conformance InvitationApprovalRequest.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance InvitationApprovalRequest.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type InvitationApprovalRequest.CodingKeys and conformance InvitationApprovalRequest.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t InvitationApprovalRequest.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14NearbySessions25InvitationApprovalRequestC10CodingKeys33_1727203DAE7B5184CD8F06D353AB6F7ALLOGMd, &_ss22KeyedEncodingContainerVy14NearbySessions25InvitationApprovalRequestC10CodingKeys33_1727203DAE7B5184CD8F06D353AB6F7ALLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type InvitationApprovalRequest.CodingKeys and conformance InvitationApprovalRequest.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v12 = *(v3 + OBJC_IVAR____TtC14NearbySessions25InvitationApprovalRequest_remoteInvitationData);
  v14 = 0;
  type metadata accessor for NearbyInvitationData(0);
  _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_2(&lazy protocol witness table cache variable for type NearbyInvitationData and conformance NearbyInvitationData, 255, type metadata accessor for NearbyInvitationData, &protocol conformance descriptor for NearbyInvitationData);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    LOBYTE(v12) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v10 = *(v3 + OBJC_IVAR____TtC14NearbySessions25InvitationApprovalRequest_userInfo + 8);
    v12 = *(v3 + OBJC_IVAR____TtC14NearbySessions25InvitationApprovalRequest_userInfo);
    v13 = v10;
    v14 = 2;
    outlined copy of Data?(v12, v10);
    lazy protocol witness table accessor for type Data and conformance Data();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    outlined consume of Data?(v12, v13);
  }

  return (*(v6 + 8))(v8, v5);
}

char *InvitationApprovalRequest.init(from:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy14NearbySessions25InvitationApprovalRequestC10CodingKeys33_1727203DAE7B5184CD8F06D353AB6F7ALLOGMd, &_ss22KeyedDecodingContainerVy14NearbySessions25InvitationApprovalRequestC10CodingKeys33_1727203DAE7B5184CD8F06D353AB6F7ALLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type InvitationApprovalRequest.CodingKeys and conformance InvitationApprovalRequest.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
    type metadata accessor for InvitationApprovalRequest();
    swift_deallocPartialClassInstance();
  }

  else
  {
    type metadata accessor for NearbyInvitationData(0);
    v16 = 0;
    _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_2(&lazy protocol witness table cache variable for type NearbyInvitationData and conformance NearbyInvitationData, 255, type metadata accessor for NearbyInvitationData, &protocol conformance descriptor for NearbyInvitationData);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *(v1 + OBJC_IVAR____TtC14NearbySessions25InvitationApprovalRequest_remoteInvitationData) = v15;
    LOBYTE(v15) = 1;
    v10 = KeyedDecodingContainer.decode(_:forKey:)();
    v11 = (v1 + OBJC_IVAR____TtC14NearbySessions25InvitationApprovalRequest_displayName);
    *v11 = v10;
    v11[1] = v12;
    v16 = 2;
    lazy protocol witness table accessor for type Data and conformance Data();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    *(v1 + OBJC_IVAR____TtC14NearbySessions25InvitationApprovalRequest_userInfo) = v15;
    v13 = type metadata accessor for InvitationApprovalRequest();
    v14.receiver = v1;
    v14.super_class = v13;
    v3 = objc_msgSendSuper2(&v14, sel_init);
    (*(v6 + 8))(v8, v5);
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  return v3;
}

uint64_t protocol witness for Decodable.init(from:) in conformance InvitationApprovalRequest@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 136))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t NearbyInvitationData.displayName.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14NearbySessions20NearbyInvitationData_displayName);

  return v1;
}

uint64_t NearbyInvitationData.userInfo.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14NearbySessions20NearbyInvitationData_userInfo);
  outlined copy of Data?(v1, *(v0 + OBJC_IVAR____TtC14NearbySessions20NearbyInvitationData_userInfo + 8));
  return v1;
}

uint64_t NearbyInvitationData.sourceProviderName.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14NearbySessions20NearbyInvitationData_sourceProviderName);

  return v1;
}

Swift::Int NearbyInvitationData.Errors.hashValue.getter()
{
  Hasher.init(_seed:)();
  MEMORY[0x25F86F720](0);
  return Hasher._finalize()();
}

uint64_t NearbyInvitationData.encodedData.getter()
{
  v1 = type metadata accessor for Invitation_InvitationData(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v6[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = v0;
  _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_2(&lazy protocol witness table cache variable for type Invitation_InvitationData and conformance Invitation_InvitationData, 255, type metadata accessor for Invitation_InvitationData, &protocol conformance descriptor for Invitation_InvitationData);
  static Message.with(_:)();
  v4 = Message.serializedData(partial:)();
  outlined destroy of Invitation_InvitationData(v3, type metadata accessor for Invitation_InvitationData);
  return v4;
}

uint64_t closure #1 in NearbyInvitationData.encodedData.getter(uint64_t *a1, uint64_t a2)
{
  v4 = type metadata accessor for Invitation_HostConnectionInfo(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = UUID.data.getter();
  v10 = v9;
  outlined consume of Data._Representation(*a1, a1[1]);
  *a1 = v8;
  a1[1] = v10;
  v12 = *(a2 + OBJC_IVAR____TtC14NearbySessions20NearbyInvitationData_displayName);
  v11 = *(a2 + OBJC_IVAR____TtC14NearbySessions20NearbyInvitationData_displayName + 8);

  a1[2] = v12;
  a1[3] = v11;
  v14 = *(a2 + OBJC_IVAR____TtC14NearbySessions20NearbyInvitationData_userInfo + 8);
  if (v14 >> 60 != 15)
  {
    v15 = *(a2 + OBJC_IVAR____TtC14NearbySessions20NearbyInvitationData_userInfo);
    v16 = (a1 + *(type metadata accessor for Invitation_InvitationData(0) + 28));
    v26 = v4;
    v17 = v5;
    v25 = v7;
    v18 = *v16;
    v19 = v16[1];
    outlined copy of Data._Representation(v15, v14);
    v20 = v18;
    v5 = v17;
    v4 = v26;
    v21 = v19;
    v7 = v25;
    v13 = outlined consume of Data?(v20, v21);
    *v16 = v15;
    v16[1] = v14;
  }

  MEMORY[0x28223BE20](v13);
  *(&v24 - 2) = a2;
  _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_2(&lazy protocol witness table cache variable for type Invitation_HostConnectionInfo and conformance Invitation_HostConnectionInfo, 255, type metadata accessor for Invitation_HostConnectionInfo, &protocol conformance descriptor for Invitation_HostConnectionInfo);
  static Message.with(_:)();
  v22 = *(type metadata accessor for Invitation_InvitationData(0) + 32);
  outlined destroy of NSObject?(a1 + v22, &_s14NearbySessions29Invitation_HostConnectionInfoVSgMd, &_s14NearbySessions29Invitation_HostConnectionInfoVSgMR);
  outlined init with take of Invitation_HostConnectionInfo(v7, a1 + v22);
  return (*(v5 + 56))(a1 + v22, 0, 1, v4);
}

uint64_t closure #1 in closure #1 in NearbyInvitationData.encodedData.getter(uint64_t *a1, uint64_t a2)
{
  v3 = *(a2 + OBJC_IVAR____TtC14NearbySessions20NearbyInvitationData_hostConnectionInfo);
  v4 = *(v3 + OBJC_IVAR____TtC14NearbySessions35NearbyInvitationJoinRequestMetadata_publicKey);
  v5 = *(v3 + OBJC_IVAR____TtC14NearbySessions35NearbyInvitationJoinRequestMetadata_publicKey + 8);
  v6 = *a1;
  v7 = a1[1];
  outlined copy of Data._Representation(v4, v5);
  outlined consume of Data._Representation(v6, v7);
  *a1 = v4;
  a1[1] = v5;
  v9 = *(v3 + OBJC_IVAR____TtC14NearbySessions35NearbyInvitationJoinRequestMetadata_pseudonym);
  v8 = *(v3 + OBJC_IVAR____TtC14NearbySessions35NearbyInvitationJoinRequestMetadata_pseudonym + 8);

  a1[2] = v9;
  a1[3] = v8;
  return result;
}

id InvitationBlob.__allocating_init(invitationID:dataBlob:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v13 = objc_allocWithZone(v6);
  v14 = &v13[*a5];
  *v14 = a1;
  *(v14 + 1) = a2;
  v15 = &v13[*a6];
  *v15 = a3;
  *(v15 + 1) = a4;
  v17.receiver = v13;
  v17.super_class = v6;
  return objc_msgSendSuper2(&v17, sel_init);
}

id NearbyInvitationData.__allocating_init(invitationID:displayName:userInfo:hostConnectionInfo:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, void *a6)
{
  v7 = v6;
  v28 = a1;
  v14 = type metadata accessor for UUID();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = objc_allocWithZone(v7);
  (*(v15 + 16))(&v18[OBJC_IVAR____TtC14NearbySessions20NearbyInvitationData_invitationID], a1, v14);
  v19 = &v18[OBJC_IVAR____TtC14NearbySessions20NearbyInvitationData_displayName];
  *v19 = a2;
  *(v19 + 1) = a3;
  v20 = &v18[OBJC_IVAR____TtC14NearbySessions20NearbyInvitationData_userInfo];
  *v20 = a4;
  *(v20 + 1) = a5;
  *&v18[OBJC_IVAR____TtC14NearbySessions20NearbyInvitationData_hostConnectionInfo] = a6;
  outlined copy of Data?(a4, a5);
  v21 = a6;
  UUID.init()();
  (*(v15 + 32))(&v18[OBJC_IVAR____TtC14NearbySessions20NearbyInvitationData_sourceProviderID], v17, v14);
  v22 = _s14NearbySessions24InvitationSourceProviderPAAE18providerIdentifierSSvgZAA0A5GroupC_Ttg5();
  v23 = &v18[OBJC_IVAR____TtC14NearbySessions20NearbyInvitationData_sourceProviderName];
  *v23 = v22;
  v23[1] = v24;
  v29.receiver = v18;
  v29.super_class = v27;
  v25 = objc_msgSendSuper2(&v29, sel_init);

  outlined consume of Data?(a4, a5);
  (*(v15 + 8))(v28, v14);
  return v25;
}

id NearbyInvitationData.init<A>(from:)(uint64_t a1)
{
  v1 = specialized NearbyInvitationData.init<A>(from:)(a1);

  return v1;
}

id NearbyInvitationData.__allocating_init(invitationID:displayName:userInfo:hostConnectionInfo:sourceProviderID:sourceProviderName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = v9;
  v14 = objc_allocWithZone(v9);
  v15 = OBJC_IVAR____TtC14NearbySessions20NearbyInvitationData_invitationID;
  v16 = type metadata accessor for UUID();
  v17 = *(v16 - 8);
  v18 = *(v17 + 16);
  v18(&v14[v15], a1, v16);
  v19 = &v14[OBJC_IVAR____TtC14NearbySessions20NearbyInvitationData_displayName];
  *v19 = a2;
  *(v19 + 1) = a3;
  v20 = &v14[OBJC_IVAR____TtC14NearbySessions20NearbyInvitationData_userInfo];
  *v20 = a4;
  *(v20 + 1) = a5;
  *&v14[OBJC_IVAR____TtC14NearbySessions20NearbyInvitationData_hostConnectionInfo] = a6;
  v18(&v14[OBJC_IVAR____TtC14NearbySessions20NearbyInvitationData_sourceProviderID], a7, v16);
  v21 = &v14[OBJC_IVAR____TtC14NearbySessions20NearbyInvitationData_sourceProviderName];
  *v21 = a8;
  *(v21 + 1) = a9;
  v30.receiver = v14;
  v30.super_class = v10;
  v22 = objc_msgSendSuper2(&v30, sel_init);
  v23 = *(v17 + 8);
  v23(a7, v16);
  v23(a1, v16);
  return v22;
}

id NearbyInvitationData.init(invitationID:displayName:userInfo:hostConnectionInfo:sourceProviderID:sourceProviderName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v14 = OBJC_IVAR____TtC14NearbySessions20NearbyInvitationData_invitationID;
  v15 = type metadata accessor for UUID();
  v16 = *(v15 - 8);
  v17 = *(v16 + 16);
  v17(&v9[v14], a1, v15);
  v18 = &v9[OBJC_IVAR____TtC14NearbySessions20NearbyInvitationData_displayName];
  *v18 = a2;
  *(v18 + 1) = a3;
  v19 = &v9[OBJC_IVAR____TtC14NearbySessions20NearbyInvitationData_userInfo];
  *v19 = a4;
  *(v19 + 1) = a5;
  *&v9[OBJC_IVAR____TtC14NearbySessions20NearbyInvitationData_hostConnectionInfo] = a6;
  v17(&v9[OBJC_IVAR____TtC14NearbySessions20NearbyInvitationData_sourceProviderID], a7, v15);
  v20 = &v9[OBJC_IVAR____TtC14NearbySessions20NearbyInvitationData_sourceProviderName];
  *v20 = a8;
  *(v20 + 1) = a9;
  v28.receiver = v9;
  v28.super_class = type metadata accessor for NearbyInvitationData(0);
  v21 = objc_msgSendSuper2(&v28, sel_init);
  v22 = *(v16 + 8);
  v22(a7, v15);
  v22(a1, v15);
  return v21;
}

id NearbyInvitationData.init(invitationID:displayName:userInfo:hostConnectionInfo:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, void *a6)
{
  v13 = type metadata accessor for UUID();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(&v6[OBJC_IVAR____TtC14NearbySessions20NearbyInvitationData_invitationID], a1, v13);
  v17 = &v6[OBJC_IVAR____TtC14NearbySessions20NearbyInvitationData_displayName];
  *v17 = a2;
  *(v17 + 1) = a3;
  v18 = &v6[OBJC_IVAR____TtC14NearbySessions20NearbyInvitationData_userInfo];
  *v18 = a4;
  *(v18 + 1) = a5;
  *&v6[OBJC_IVAR____TtC14NearbySessions20NearbyInvitationData_hostConnectionInfo] = a6;
  outlined copy of Data?(a4, a5);
  v19 = a6;
  UUID.init()();
  (*(v14 + 32))(&v6[OBJC_IVAR____TtC14NearbySessions20NearbyInvitationData_sourceProviderID], v16, v13);
  v20 = _s14NearbySessions24InvitationSourceProviderPAAE18providerIdentifierSSvgZAA0A5GroupC_Ttg5();
  v21 = &v6[OBJC_IVAR____TtC14NearbySessions20NearbyInvitationData_sourceProviderName];
  *v21 = v20;
  v21[1] = v22;
  v23 = type metadata accessor for NearbyInvitationData(0);
  v26.receiver = v6;
  v26.super_class = v23;
  v24 = objc_msgSendSuper2(&v26, sel_init);

  outlined consume of Data?(a4, a5);
  (*(v14 + 8))(a1, v13);
  return v24;
}

uint64_t NearbyInvitationData.description.getter()
{
  swift_getObjectType();
  _StringGuts.grow(_:)(75);
  MEMORY[0x25F86F070](60, 0xE100000000000000);
  v1 = _typeName(_:qualified:)();
  MEMORY[0x25F86F070](v1);

  MEMORY[0x25F86F070](0x74617469766E6920, 0xEF203A44496E6F69);
  type metadata accessor for UUID();
  _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_2(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
  v2 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x25F86F070](v2);

  MEMORY[0x25F86F070](0x79616C7073696420, 0xEE00203A656D614ELL);
  MEMORY[0x25F86F070](*(v0 + OBJC_IVAR____TtC14NearbySessions20NearbyInvitationData_displayName), *(v0 + OBJC_IVAR____TtC14NearbySessions20NearbyInvitationData_displayName + 8));
  MEMORY[0x25F86F070](0x6E4972657375202CLL, 0xEC000000203A6F66);
  v3 = *(v0 + OBJC_IVAR____TtC14NearbySessions20NearbyInvitationData_userInfo + 8);
  if (v3 >> 60 == 15)
  {
    v4 = 0xE300000000000000;
    v5 = 7104878;
  }

  else
  {
    outlined copy of Data._Representation(*(v0 + OBJC_IVAR____TtC14NearbySessions20NearbyInvitationData_userInfo), v3);
    v5 = String.init<A>(reflecting:)();
    v4 = v6;
  }

  MEMORY[0x25F86F070](v5, v4);

  MEMORY[0x25F86F070](0xD000000000000016, 0x800000025B830EF0);
  v7 = [*(v0 + OBJC_IVAR____TtC14NearbySessions20NearbyInvitationData_hostConnectionInfo) description];
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  MEMORY[0x25F86F070](v8, v10);

  MEMORY[0x25F86F070](62, 0xE100000000000000);
  return 0;
}

Swift::Void __swiftcall NearbyInvitationData.encode(with:)(NSCoder with)
{
  v2 = v1;
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v5 = MEMORY[0x25F86F000](0x6974617469766E69, 0xEC00000044496E6FLL);
  [(objc_class *)with.super.isa encodeObject:isa forKey:v5];

  v6 = MEMORY[0x25F86F000](*(v2 + OBJC_IVAR____TtC14NearbySessions20NearbyInvitationData_displayName), *(v2 + OBJC_IVAR____TtC14NearbySessions20NearbyInvitationData_displayName + 8));
  v7 = MEMORY[0x25F86F000](0x4E79616C70736964, 0xEB00000000656D61);
  [(objc_class *)with.super.isa encodeObject:v6 forKey:v7];

  if (*(v2 + OBJC_IVAR____TtC14NearbySessions20NearbyInvitationData_userInfo + 8) >> 60 == 15)
  {
    v8 = 0;
  }

  else
  {
    v8 = Data._bridgeToObjectiveC()().super.isa;
  }

  v9 = MEMORY[0x25F86F000](0x6F666E4972657375, 0xE800000000000000);
  [(objc_class *)with.super.isa encodeObject:v8 forKey:v9];
  swift_unknownObjectRelease();

  v10 = *(v2 + OBJC_IVAR____TtC14NearbySessions20NearbyInvitationData_hostConnectionInfo);
  v11 = MEMORY[0x25F86F000](0xD000000000000012, 0x800000025B830210);
  [(objc_class *)with.super.isa encodeObject:v10 forKey:v11];
}

id NearbyInvitationData.init(coder:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for NSSet(0, &lazy cache variable for type metadata for NSUUID, 0x277CCAD78);
  v8 = NSCoder.decodeObject<A>(of:forKey:)();
  if (!v8)
  {
    goto LABEL_9;
  }

  v9 = v8;
  type metadata accessor for NSSet(0, &lazy cache variable for type metadata for NSString, 0x277CCACA8);
  v10 = NSCoder.decodeObject<A>(of:forKey:)();
  if (!v10 || (v32 = 0uLL, v11 = v10, static String._conditionallyBridgeFromObjectiveC(_:result:)(), v11, (v12 = *(&v32 + 1)) == 0))
  {

LABEL_9:
LABEL_10:
    type metadata accessor for NearbyInvitationData(0);
    swift_deallocPartialClassInstance();
    return 0;
  }

  v13 = v32;
  type metadata accessor for NearbyInvitationJoinRequestMetadata();
  v14 = NSCoder.decodeObject<A>(of:forKey:)();
  if (!v14)
  {

    goto LABEL_10;
  }

  v15 = v14;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = *(v5 + 32);
  v16(&v2[OBJC_IVAR____TtC14NearbySessions20NearbyInvitationData_invitationID], v7, v4);
  v17 = &v2[OBJC_IVAR____TtC14NearbySessions20NearbyInvitationData_displayName];
  *v17 = v13;
  *(v17 + 1) = v12;
  type metadata accessor for NSSet(0, &lazy cache variable for type metadata for NSData, 0x277CBEA90);
  v18 = NSCoder.decodeObject<A>(of:forKey:)();
  if (v18 && (v32 = xmmword_25B82C300, v19 = v18, static Data._conditionallyBridgeFromObjectiveC(_:result:)(), v19, v20 = *(&v32 + 1), *(&v32 + 1) >> 60 != 15))
  {
    v21 = v32;
  }

  else
  {
    v21 = 0;
    v20 = 0xF000000000000000;
  }

  v23 = &v2[OBJC_IVAR____TtC14NearbySessions20NearbyInvitationData_userInfo];
  *v23 = v21;
  *(v23 + 1) = v20;
  *&v2[OBJC_IVAR____TtC14NearbySessions20NearbyInvitationData_hostConnectionInfo] = v15;
  v24 = v15;
  UUID.init()();
  v16(&v2[OBJC_IVAR____TtC14NearbySessions20NearbyInvitationData_sourceProviderID], v7, v4);
  v25 = _s14NearbySessions24InvitationSourceProviderPAAE18providerIdentifierSSvgZAA0A5GroupC_Ttg5();
  v27 = v26;

  v28 = &v2[OBJC_IVAR____TtC14NearbySessions20NearbyInvitationData_sourceProviderName];
  *v28 = v25;
  v28[1] = v27;
  v29 = type metadata accessor for NearbyInvitationData(0);
  v31.receiver = v2;
  v31.super_class = v29;
  v30 = objc_msgSendSuper2(&v31, sel_init);

  return v30;
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance NearbyInvitationData.CodingKeys()
{
  v1 = *v0;
  v2 = 0x6974617469766E69;
  v3 = 0xD000000000000012;
  v4 = 0xD000000000000010;
  if (v1 != 4)
  {
    v4 = 0xD000000000000012;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x4E79616C70736964;
  if (v1 != 1)
  {
    v5 = 0x6F666E4972657375;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance NearbyInvitationData.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized NearbyInvitationData.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance NearbyInvitationData.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NearbyInvitationData.CodingKeys and conformance NearbyInvitationData.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance NearbyInvitationData.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NearbyInvitationData.CodingKeys and conformance NearbyInvitationData.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t NearbyInvitationData.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14NearbySessions0D14InvitationDataC10CodingKeys33_1727203DAE7B5184CD8F06D353AB6F7ALLOGMd, &_ss22KeyedEncodingContainerVy14NearbySessions0D14InvitationDataC10CodingKeys33_1727203DAE7B5184CD8F06D353AB6F7ALLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type NearbyInvitationData.CodingKeys and conformance NearbyInvitationData.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v14) = 0;
  type metadata accessor for UUID();
  _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_2(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC95F8]);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    LOBYTE(v14) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v9 = *(v3 + OBJC_IVAR____TtC14NearbySessions20NearbyInvitationData_userInfo + 8);
    v14 = *(v3 + OBJC_IVAR____TtC14NearbySessions20NearbyInvitationData_userInfo);
    v15 = v9;
    v13 = 2;
    outlined copy of Data?(v14, v9);
    lazy protocol witness table accessor for type Data and conformance Data();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    outlined consume of Data?(v14, v15);
    v14 = *(v3 + OBJC_IVAR____TtC14NearbySessions20NearbyInvitationData_hostConnectionInfo);
    v13 = 3;
    type metadata accessor for NearbyInvitationJoinRequestMetadata();
    _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_2(&lazy protocol witness table cache variable for type NearbyInvitationJoinRequestMetadata and conformance NearbyInvitationJoinRequestMetadata, v10, type metadata accessor for NearbyInvitationJoinRequestMetadata, &protocol conformance descriptor for NearbyInvitationJoinRequestMetadata);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v14) = 4;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v14) = 5;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

void *NearbyInvitationData.init(from:)(void *a1)
{
  v3 = type metadata accessor for UUID();
  v35 = *(v3 - 8);
  v36 = v3;
  v4 = MEMORY[0x28223BE20](v3);
  v6 = v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = v33 - v7;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy14NearbySessions0D14InvitationDataC10CodingKeys33_1727203DAE7B5184CD8F06D353AB6F7ALLOGMd, &_ss22KeyedDecodingContainerVy14NearbySessions0D14InvitationDataC10CodingKeys33_1727203DAE7B5184CD8F06D353AB6F7ALLOGMR);
  v9 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v11 = v33 - v10;
  v12 = a1[3];
  v38 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v12);
  lazy protocol witness table accessor for type NearbyInvitationData.CodingKeys and conformance NearbyInvitationData.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_0(v38);
    v32 = v39;
    type metadata accessor for NearbyInvitationData(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v34 = v6;
    v13 = v9;
    LOBYTE(v41) = 0;
    v14 = _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_2(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9618]);
    v15 = v36;
    v16 = v11;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v33[3] = v14;
    v18 = v35 + 32;
    v19 = *(v35 + 32);
    v19(v39 + OBJC_IVAR____TtC14NearbySessions20NearbyInvitationData_invitationID, v8, v15);
    LOBYTE(v41) = 1;
    v20 = KeyedDecodingContainer.decode(_:forKey:)();
    v21 = v13;
    v33[1] = v18;
    v22 = v39;
    v23 = (v39 + OBJC_IVAR____TtC14NearbySessions20NearbyInvitationData_displayName);
    *v23 = v20;
    v23[1] = v24;
    v42 = 2;
    lazy protocol witness table accessor for type Data and conformance Data();
    v33[2] = 0;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v25 = v22;
    *&v22[OBJC_IVAR____TtC14NearbySessions20NearbyInvitationData_userInfo] = v41;
    type metadata accessor for NearbyInvitationJoinRequestMetadata();
    v42 = 3;
    _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_2(&lazy protocol witness table cache variable for type NearbyInvitationJoinRequestMetadata and conformance NearbyInvitationJoinRequestMetadata, v26, type metadata accessor for NearbyInvitationJoinRequestMetadata, &protocol conformance descriptor for NearbyInvitationJoinRequestMetadata);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *&v22[OBJC_IVAR____TtC14NearbySessions20NearbyInvitationData_hostConnectionInfo] = v41;
    LOBYTE(v41) = 4;
    v27 = v34;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v19(&v25[OBJC_IVAR____TtC14NearbySessions20NearbyInvitationData_sourceProviderID], v27, v15);
    LOBYTE(v41) = 5;
    v28 = KeyedDecodingContainer.decode(_:forKey:)();
    v29 = &v25[OBJC_IVAR____TtC14NearbySessions20NearbyInvitationData_sourceProviderName];
    *v29 = v28;
    v29[1] = v30;
    v31 = type metadata accessor for NearbyInvitationData(0);
    v40.receiver = v25;
    v40.super_class = v31;
    v32 = objc_msgSendSuper2(&v40, sel_init);
    (*(v21 + 8))(v16, v37);
    __swift_destroy_boxed_opaque_existential_0(v38);
  }

  return v32;
}

uint64_t protocol witness for Decodable.init(from:) in conformance NearbyInvitationData@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 184))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t NearbyAdvertisement.identifier.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_identifier);

  return v1;
}

uint64_t NearbyAdvertisement.contactID.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_contactID);

  return v1;
}

id @objc NearbyAdvertisement.contactID.getter(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = (a1 + *a3);
  v4 = v3[1];
  if (v4)
  {
    v5 = *v3;

    v6 = MEMORY[0x25F86F000](v5, v4);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t NearbyAdvertisement.handle.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_handle);

  return v1;
}

uint64_t NearbyAdvertisement.displayName.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_displayName);

  return v1;
}

uint64_t NearbyAdvertisement.deviceColor.getter()
{
  v1 = v0 + OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_deviceColor;
  swift_beginAccess();
  return *v1;
}

uint64_t NearbyAdvertisement.deviceColor.setter(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_deviceColor;
  result = swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
  return result;
}

uint64_t NearbyAdvertisement.deviceModel.getter(void *a1)
{
  v2 = (v1 + *a1);
  swift_beginAccess();
  v3 = *v2;

  return v3;
}

uint64_t NearbyAdvertisement.deviceModel.setter(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (v3 + *a3);
  swift_beginAccess();
  *v6 = a1;
  v6[1] = a2;
}

uint64_t NearbyAdvertisement.userInfo.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_userInfo);
  outlined copy of Data?(v1, *(v0 + OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_userInfo + 8));
  return v1;
}

id NearbyAdvertisement.dataSource.getter(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement____lazy_storage___dataSource);
  if (*(v2 + OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement____lazy_storage___dataSource))
  {
    v4 = *(v2 + OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement____lazy_storage___dataSource);
  }

  else
  {
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    v5 = static NearbyInvitationServiceClient.shared;
    *v3 = static NearbyInvitationServiceClient.shared;
    v3[1] = &protocol witness table for NearbyInvitationServiceClient;
    v4 = v5;
    swift_unknownObjectRelease();
  }

  swift_unknownObjectRetain();
  return v4;
}

uint64_t NearbyAdvertisement.dataSource.setter(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement____lazy_storage___dataSource);
  *v3 = a1;
  v3[1] = a2;
  return swift_unknownObjectRelease();
}

uint64_t (*NearbyAdvertisement.dataSource.modify(id *a1, uint64_t a2))(uint64_t a1)
{
  a1[2] = v2;
  *a1 = NearbyAdvertisement.dataSource.getter(a1, a2);
  a1[1] = v4;
  return NearbyAdvertisement.dataSource.modify;
}

id NearbyAdvertisement.init(scannerID:identifier:activityType:contactID:handle:displayName:userInfo:deviceColor:deviceModel:deviceID:)(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v22 = &v18[OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_deviceColor];
  *v22 = 0;
  v22[8] = 1;
  v23 = &v18[OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_deviceModel];
  *v23 = 0;
  *(v23 + 1) = 0;
  v24 = &v18[OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_deviceID];
  *v24 = 0;
  *(v24 + 1) = 0;
  v25 = &v18[OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement____lazy_storage___dataSource];
  *v25 = 0;
  *(v25 + 1) = 0;
  v26 = OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_scannerID;
  v27 = type metadata accessor for UUID();
  v28 = *(v27 - 8);
  v29 = &v18[v26];
  v30 = a1;
  (*(v28 + 16))(v29, a1, v27);
  v31 = &v18[OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_identifier];
  *v31 = a2;
  *(v31 + 1) = a3;
  *&v18[OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_activityType] = a4;
  v32 = &v18[OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_contactID];
  *v32 = a5;
  *(v32 + 1) = a6;
  v33 = &v18[OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_handle];
  *v33 = a7;
  *(v33 + 1) = a8;
  v34 = &v18[OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_displayName];
  *v34 = a9;
  *(v34 + 1) = a10;
  v35 = &v18[OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_userInfo];
  *v35 = a11;
  *(v35 + 1) = a12;
  swift_beginAccess();
  *v22 = a13;
  v22[8] = a14 & 1;
  swift_beginAccess();
  *v23 = a15;
  *(v23 + 1) = a16;
  swift_beginAccess();
  *v24 = a17;
  *(v24 + 1) = a18;
  v43.receiver = v18;
  v43.super_class = type metadata accessor for NearbyAdvertisement(0);
  v36 = objc_msgSendSuper2(&v43, sel_init);
  (*(v28 + 8))(v30, v27);
  return v36;
}

uint64_t NearbyAdvertisement.approve(with:)(void *a1)
{
  v3 = MEMORY[0x277D85000];
  (*((*MEMORY[0x277D85000] & *v1) + 0xF0))();
  v5 = v4;
  v6 = (*((*v3 & *a1) + 0x80))();
  v8 = v7;
  ObjectType = swift_getObjectType();
  (*(v5 + 176))(v1, v6, v8, ObjectType, v5);
  outlined consume of Data._Representation(v6, v8);

  return swift_unknownObjectRelease();
}

Swift::Void __swiftcall NearbyAdvertisement.reject()()
{
  (*((*MEMORY[0x277D85000] & *v0) + 0xF0))();
  v2 = v1;
  ObjectType = swift_getObjectType();
  (*(v2 + 184))(v0, ObjectType, v2);

  swift_unknownObjectRelease();
}

Swift::Void __swiftcall NearbyAdvertisement.encode(with:)(NSCoder with)
{
  v2 = v1;
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v5 = MEMORY[0x25F86F000](0x4972656E6E616373, 0xE900000000000044);
  [(objc_class *)with.super.isa encodeObject:isa forKey:v5];

  v6 = MEMORY[0x25F86F000](*(v2 + OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_identifier), *(v2 + OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_identifier + 8));
  v7 = MEMORY[0x25F86F000](0x696669746E656469, 0xEA00000000007265);
  [(objc_class *)with.super.isa encodeObject:v6 forKey:v7];

  v8 = UInt32._bridgeToObjectiveC()().super.super.isa;
  v9 = MEMORY[0x25F86F000](0x7974697669746361, 0xEC00000065707954);
  [(objc_class *)with.super.isa encodeObject:v8 forKey:v9];

  if (*(v2 + OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_contactID + 8))
  {
    v10 = MEMORY[0x25F86F000](*(v2 + OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_contactID));
  }

  else
  {
    v10 = 0;
  }

  v11 = MEMORY[0x25F86F000](0x49746361746E6F63, 0xE900000000000044);
  [(objc_class *)with.super.isa encodeObject:v10 forKey:v11];
  swift_unknownObjectRelease();

  if (*(v2 + OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_userInfo + 8) >> 60 == 15)
  {
    v12 = 0;
  }

  else
  {
    v12 = Data._bridgeToObjectiveC()().super.isa;
  }

  v13 = MEMORY[0x25F86F000](0x6F666E4972657375, 0xE800000000000000);
  [(objc_class *)with.super.isa encodeObject:v12 forKey:v13];
  swift_unknownObjectRelease();

  if (*(v2 + OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_handle + 8))
  {
    v14 = MEMORY[0x25F86F000](*(v2 + OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_handle));
  }

  else
  {
    v14 = 0;
  }

  v15 = MEMORY[0x25F86F000](0x656C646E6168, 0xE600000000000000);
  [(objc_class *)with.super.isa encodeObject:v14 forKey:v15];
  swift_unknownObjectRelease();

  if (*(v2 + OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_displayName + 8))
  {
    v16 = MEMORY[0x25F86F000](*(v2 + OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_displayName));
  }

  else
  {
    v16 = 0;
  }

  v17 = MEMORY[0x25F86F000](0x4E79616C70736964, 0xEB00000000656D61);
  [(objc_class *)with.super.isa encodeObject:v16 forKey:v17];
  swift_unknownObjectRelease();

  v18 = MEMORY[0x277D85000];
  (*((*MEMORY[0x277D85000] & *v2) + 0xA8))();
  if (v19)
  {
    v20 = 0;
  }

  else
  {
    v20 = Int._bridgeToObjectiveC()().super.super.isa;
  }

  v21 = MEMORY[0x25F86F000](0x6F43656369766564, 0xEB00000000726F6CLL);
  [(objc_class *)with.super.isa encodeObject:v20 forKey:v21];
  swift_unknownObjectRelease();

  v22 = (*((*v18 & *v2) + 0xC0))();
  if (v23)
  {
    v24 = MEMORY[0x25F86F000](v22);
  }

  else
  {
    v24 = 0;
  }

  v25 = MEMORY[0x25F86F000](0x6F4D656369766564, 0xEB000000006C6564);
  [(objc_class *)with.super.isa encodeObject:v24 forKey:v25];
  swift_unknownObjectRelease();

  v26 = (*((*v18 & *v2) + 0xD8))();
  if (v27)
  {
    v28 = MEMORY[0x25F86F000](v26);
  }

  else
  {
    v28 = 0;
  }

  v29 = MEMORY[0x25F86F000](0x4449656369766564, 0xE800000000000000);
  [(objc_class *)with.super.isa encodeObject:v28 forKey:v29];
  swift_unknownObjectRelease();
}

id NearbyAdvertisement.init(coder:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v71 - v4;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v73 = &v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = &v1[OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_deviceColor];
  *v9 = 0;
  v9[8] = 1;
  v10 = &v1[OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_deviceModel];
  *v10 = 0;
  *(v10 + 1) = 0;
  v11 = &v1[OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_deviceID];
  *v11 = 0;
  *(v11 + 1) = 0;
  v74 = v11;
  v12 = &v1[OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement____lazy_storage___dataSource];
  *v12 = 0;
  *(v12 + 1) = 0;
  v13 = MEMORY[0x25F86F000](0x4972656E6E616373, 0xE900000000000044);
  v14 = a1;
  v15 = [a1 decodeObjectForKey_];

  if (v15)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v82 = 0u;
    v83 = 0u;
  }

  v84 = v82;
  v85 = v83;
  if (!*(&v83 + 1))
  {

    outlined destroy of NSObject?(&v84, &_sypSgMd, &_sypSgMR);
    (*(v7 + 56))(v5, 1, 1, v6);
    goto LABEL_8;
  }

  v16 = swift_dynamicCast();
  (*(v7 + 56))(v5, v16 ^ 1u, 1, v6);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {

LABEL_8:
    v17 = &_s10Foundation4UUIDVSgMd;
    v18 = &_s10Foundation4UUIDVSgMR;
    v19 = v5;
LABEL_9:
    outlined destroy of NSObject?(v19, v17, v18);
LABEL_10:

    swift_unknownObjectRelease();
    type metadata accessor for NearbyAdvertisement(0);
    swift_deallocPartialClassInstance();
    return 0;
  }

  (*(v7 + 32))(v73, v5, v6);
  v21 = MEMORY[0x25F86F000](0x696669746E656469, 0xEA00000000007265);
  v22 = [v14 decodeObjectForKey_];

  if (v22)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v82 = 0u;
    v83 = 0u;
  }

  v84 = v82;
  v85 = v83;
  if (!*(&v83 + 1))
  {
    (*(v7 + 8))(v73, v6);

    v17 = &_sypSgMd;
    v18 = &_sypSgMR;
    v19 = &v84;
    goto LABEL_9;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    (*(v7 + 8))(v73, v6);

    goto LABEL_10;
  }

  v71 = v80;
  v72 = v81;
  v23 = MEMORY[0x25F86F000](0x7974697669746361, 0xEC00000065707954);
  v24 = [v14 decodeObjectForKey_];

  if (v24)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v82 = 0u;
    v83 = 0u;
  }

  v84 = v82;
  v85 = v83;
  if (!*(&v83 + 1))
  {
    outlined destroy of NSObject?(&v84, &_sypSgMd, &_sypSgMR);
    goto LABEL_26;
  }

  if (!swift_dynamicCast())
  {
LABEL_26:
    v25 = 0;
    goto LABEL_27;
  }

  v25 = v80;
  if (v80 >= 2)
  {
    (*(v7 + 8))(v73, v6);

    goto LABEL_10;
  }

LABEL_27:
  v26 = MEMORY[0x25F86F000](0x49746361746E6F63, 0xE900000000000044);
  v27 = [v14 decodeObjectForKey_];

  if (v27)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v82 = 0u;
    v83 = 0u;
  }

  v84 = v82;
  v85 = v83;
  v28 = v14;
  if (*(&v83 + 1))
  {
    v29 = swift_dynamicCast();
    if (v29)
    {
      v30 = v80;
    }

    else
    {
      v30 = 0;
    }

    if (v29)
    {
      v31 = v81;
    }

    else
    {
      v31 = 0;
    }
  }

  else
  {
    outlined destroy of NSObject?(&v84, &_sypSgMd, &_sypSgMR);
    v30 = 0;
    v31 = 0;
  }

  (*(v7 + 16))(&v1[OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_scannerID], v73, v6);
  v32 = &v1[OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_identifier];
  v33 = v72;
  *v32 = v71;
  *(v32 + 1) = v33;
  *&v1[OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_activityType] = v25;
  v34 = &v1[OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_contactID];
  *v34 = v30;
  *(v34 + 1) = v31;
  v35 = MEMORY[0x25F86F000](0x6F666E4972657375, 0xE800000000000000);
  v36 = [v14 decodeObjectForKey_];

  if (v36)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v82 = 0u;
    v83 = 0u;
  }

  v84 = v82;
  v85 = v83;
  if (*(&v83 + 1))
  {
    v37 = swift_dynamicCast();
    v38 = v80;
    v39 = v81;
    if (!v37)
    {
      v38 = 0;
      v39 = 0xF000000000000000;
    }
  }

  else
  {
    outlined destroy of NSObject?(&v84, &_sypSgMd, &_sypSgMR);
    v38 = 0;
    v39 = 0xF000000000000000;
  }

  v40 = &v1[OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_userInfo];
  *v40 = v38;
  *(v40 + 1) = v39;
  v41 = MEMORY[0x25F86F000](0x656C646E6168, 0xE600000000000000);
  v42 = [v14 decodeObjectForKey_];

  if (v42)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v82 = 0u;
    v83 = 0u;
  }

  v84 = v82;
  v85 = v83;
  if (*(&v83 + 1))
  {
    v43 = swift_dynamicCast();
    v44 = v80;
    v45 = v81;
    if (!v43)
    {
      v44 = 0;
      v45 = 0;
    }
  }

  else
  {
    outlined destroy of NSObject?(&v84, &_sypSgMd, &_sypSgMR);
    v44 = 0;
    v45 = 0;
  }

  v46 = &v1[OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_handle];
  *v46 = v44;
  *(v46 + 1) = v45;
  v47 = MEMORY[0x25F86F000](0x4E79616C70736964, 0xEB00000000656D61);
  v48 = [v14 decodeObjectForKey_];

  if (v48)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v82 = 0u;
    v83 = 0u;
  }

  v84 = v82;
  v85 = v83;
  if (*(&v83 + 1))
  {
    v49 = swift_dynamicCast();
    v50 = v80;
    v51 = v81;
    if (!v49)
    {
      v50 = 0;
      v51 = 0;
    }
  }

  else
  {
    outlined destroy of NSObject?(&v84, &_sypSgMd, &_sypSgMR);
    v50 = 0;
    v51 = 0;
  }

  v52 = &v1[OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_displayName];
  *v52 = v50;
  *(v52 + 1) = v51;
  v53 = MEMORY[0x25F86F000](0x6F43656369766564, 0xEB00000000726F6CLL);
  v54 = [v14 decodeObjectForKey_];

  if (v54)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v82 = 0u;
    v83 = 0u;
  }

  v84 = v82;
  v85 = v83;
  if (*(&v83 + 1))
  {
    v55 = swift_dynamicCast();
    if (v55)
    {
      v56 = v80;
    }

    else
    {
      v56 = 0;
    }

    v57 = v55 ^ 1;
  }

  else
  {
    outlined destroy of NSObject?(&v84, &_sypSgMd, &_sypSgMR);
    v56 = 0;
    v57 = 1;
  }

  swift_beginAccess();
  *v9 = v56;
  v9[8] = v57;
  v58 = MEMORY[0x25F86F000](0x6F4D656369766564, 0xEB000000006C6564);
  v59 = [v14 decodeObjectForKey_];

  if (v59)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v82 = 0u;
    v83 = 0u;
  }

  v84 = v82;
  v85 = v83;
  if (*(&v83 + 1))
  {
    v60 = swift_dynamicCast();
    if (v60)
    {
      v61 = v78;
    }

    else
    {
      v61 = 0;
    }

    if (v60)
    {
      v62 = v79;
    }

    else
    {
      v62 = 0;
    }
  }

  else
  {
    outlined destroy of NSObject?(&v84, &_sypSgMd, &_sypSgMR);
    v61 = 0;
    v62 = 0;
  }

  swift_beginAccess();
  *v10 = v61;
  *(v10 + 1) = v62;

  v63 = MEMORY[0x25F86F000](0x4449656369766564, 0xE800000000000000);
  v64 = [v14 decodeObjectForKey_];

  if (v64)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    (*(v7 + 8))(v73, v6);
  }

  else
  {
    (*(v7 + 8))(v73, v6);
    v82 = 0u;
    v83 = 0u;
  }

  v84 = v82;
  v85 = v83;
  if (*(&v83 + 1))
  {
    v65 = swift_dynamicCast();
    if (v65)
    {
      v66 = v75;
    }

    else
    {
      v66 = 0;
    }

    if (v65)
    {
      v67 = v76;
    }

    else
    {
      v67 = 0;
    }
  }

  else
  {
    outlined destroy of NSObject?(&v84, &_sypSgMd, &_sypSgMR);
    v66 = 0;
    v67 = 0;
  }

  v68 = v74;
  swift_beginAccess();
  *v68 = v66;
  *(v68 + 1) = v67;

  v69 = type metadata accessor for NearbyAdvertisement(0);
  v77.receiver = v1;
  v77.super_class = v69;
  v70 = objc_msgSendSuper2(&v77, sel_init);

  return v70;
}

uint64_t NearbyAdvertisement.description.getter()
{
  v1 = 7104878;
  swift_getObjectType();
  v27 = 0;
  v28 = 0xE000000000000000;
  _StringGuts.grow(_:)(48);
  MEMORY[0x25F86F070](60, 0xE100000000000000);
  v2 = _typeName(_:qualified:)();
  MEMORY[0x25F86F070](v2);

  MEMORY[0x25F86F070](8250, 0xE200000000000000);
  MEMORY[0x25F86F070](*(v0 + OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_identifier), *(v0 + OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_identifier + 8));
  MEMORY[0x25F86F070](0x61746E6F63202D20, 0xEC000000203A7463);
  v3 = *(v0 + OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_contactID + 8);
  if (v3)
  {
    v26[0] = *(v0 + OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_contactID);
    v26[1] = v3;

    v4 = String.init<A>(reflecting:)();
    v6 = v5;
  }

  else
  {
    v6 = 0xE300000000000000;
    v4 = 7104878;
  }

  MEMORY[0x25F86F070](v4, v6);

  MEMORY[0x25F86F070](0x3A656C646E616820, 0xE900000000000020);
  v7 = *(v0 + OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_handle + 8);
  if (v7)
  {
    v26[0] = *(v0 + OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_handle);
    v26[1] = v7;

    v8 = String.init<A>(reflecting:)();
    v10 = v9;
  }

  else
  {
    v10 = 0xE300000000000000;
    v8 = 7104878;
  }

  MEMORY[0x25F86F070](v8, v10);

  MEMORY[0x25F86F070](0x79616C7073696420, 0xEE00203A656D614ELL);
  v11 = *(v0 + OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_displayName + 8);
  if (v11)
  {
    v26[0] = *(v0 + OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_displayName);
    v26[1] = v11;

    v1 = String.init<A>(reflecting:)();
    v13 = v12;
  }

  else
  {
    v13 = 0xE300000000000000;
  }

  MEMORY[0x25F86F070](v1, v13);

  v15 = MEMORY[0x277D85000];
  v16 = (*((*MEMORY[0x277D85000] & *v0) + 0xC0))(v14);
  if (v17)
  {
    v18 = v16;
    v19 = v17;
    _StringGuts.grow(_:)(16);

    strcpy(v26, " deviceModel: ");
    HIBYTE(v26[1]) = -18;
    MEMORY[0x25F86F070](v18, v19);

    MEMORY[0x25F86F070](v26[0], v26[1]);
  }

  v20 = (*((*v15 & *v0) + 0xA8))(v16);
  if ((v21 & 1) == 0)
  {
    _StringGuts.grow(_:)(16);

    strcpy(v26, " deviceColor: ");
    HIBYTE(v26[1]) = -18;
    v22 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x25F86F070](v22);

    MEMORY[0x25F86F070](v26[0], v26[1]);
  }

  v23 = (*((*v15 & *v0) + 0xD8))(v20);
  if (v24)
  {
    strcpy(v26, "deviceID: ");
    BYTE3(v26[1]) = 0;
    HIDWORD(v26[1]) = -369098752;
    MEMORY[0x25F86F070](v23);

    MEMORY[0x25F86F070](v26[0], v26[1]);
  }

  MEMORY[0x25F86F070](62, 0xE100000000000000);
  return v27;
}

Swift::Int NearbyAdvertisement.hash.getter()
{
  Hasher.init()();
  v1 = UUID.hashValue.getter();
  MEMORY[0x25F86F720](v1);
  v2 = MEMORY[0x25F86F090](*(v0 + OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_identifier), *(v0 + OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_identifier + 8));
  MEMORY[0x25F86F720](v2);
  Hasher._combine(_:)(*(v0 + OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_activityType));
  if (*(v0 + OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_contactID + 8))
  {
    v3 = MEMORY[0x25F86F090](*(v0 + OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_contactID));
    Hasher._combine(_:)(1u);
    MEMORY[0x25F86F720](v3);
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  if (*(v0 + OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_userInfo + 8) >> 60 == 15)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v4 = Data.hashValue.getter();
    Hasher._combine(_:)(1u);
    MEMORY[0x25F86F720](v4);
  }

  if (*(v0 + OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_handle + 8))
  {
    v5 = MEMORY[0x25F86F090](*(v0 + OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_handle));
    Hasher._combine(_:)(1u);
    MEMORY[0x25F86F720](v5);
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  if (*(v0 + OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_displayName + 8))
  {
    v6 = MEMORY[0x25F86F090](*(v0 + OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_displayName));
    Hasher._combine(_:)(1u);
    v7 = MEMORY[0x25F86F720](v6);
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v8 = MEMORY[0x277D85000];
  (*((*MEMORY[0x277D85000] & *v0) + 0xA8))(v7);
  if (v9)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v11 = Int.hashValue.getter();
    Hasher._combine(_:)(1u);
    v10 = MEMORY[0x25F86F720](v11);
  }

  v12 = (*((*v8 & *v0) + 0xC0))(v10);
  if (v13)
  {
    v14 = MEMORY[0x25F86F090](v12);

    Hasher._combine(_:)(1u);
    v15 = MEMORY[0x25F86F720](v14);
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v16 = (*((*v8 & *v0) + 0xD8))(v15);
  if (v17)
  {
    v18 = MEMORY[0x25F86F090](v16);

    Hasher._combine(_:)(1u);
    MEMORY[0x25F86F720](v18);
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  return Hasher.finalize()();
}

uint64_t NearbyAdvertisement.isEqual(_:)(uint64_t a1)
{
  outlined init with copy of (UUID, Bool)(a1, v36, &_sypSgMd, &_sypSgMR);
  if (!v37)
  {
    outlined destroy of NSObject?(v36, &_sypSgMd, &_sypSgMR);
    goto LABEL_19;
  }

  type metadata accessor for NearbyAdvertisement(0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_19:
    v5 = 0;
    return v5 & 1;
  }

  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_18;
  }

  v2 = *(v1 + OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_identifier) == *(v35 + OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_identifier) && *(v1 + OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_identifier + 8) == *(v35 + OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_identifier + 8);
  if (!v2 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || *(v1 + OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_activityType) != *(v35 + OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_activityType))
  {
    goto LABEL_18;
  }

  v3 = *(v1 + OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_contactID + 8);
  v4 = *(v35 + OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_contactID + 8);
  if (v3)
  {
    if (!v4 || (*(v1 + OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_contactID) != *(v35 + OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_contactID) || v3 != v4) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  else if (v4)
  {
    goto LABEL_18;
  }

  v8 = *(v1 + OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_userInfo);
  v7 = *(v1 + OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_userInfo + 8);
  v10 = *(v35 + OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_userInfo);
  v9 = *(v35 + OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_userInfo + 8);
  if (v7 >> 60 == 15)
  {
    if (v9 >> 60 == 15)
    {
      outlined copy of Data?(*(v35 + OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_userInfo), *(v35 + OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_userInfo + 8));
      outlined copy of Data?(v8, v7);
      outlined consume of Data?(v8, v7);
      goto LABEL_27;
    }

LABEL_25:
    outlined copy of Data?(*(v35 + OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_userInfo), *(v35 + OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_userInfo + 8));
    outlined copy of Data?(v8, v7);

    outlined consume of Data?(v8, v7);
    outlined consume of Data?(v10, v9);
    goto LABEL_19;
  }

  if (v9 >> 60 == 15)
  {
    goto LABEL_25;
  }

  outlined copy of Data?(*(v35 + OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_userInfo), *(v35 + OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_userInfo + 8));
  outlined copy of Data?(v10, v9);
  outlined copy of Data?(v8, v7);
  v11 = specialized static Data.== infix(_:_:)(v8, v7, v10, v9);
  outlined consume of Data?(v10, v9);
  outlined consume of Data?(v10, v9);
  outlined consume of Data?(v8, v7);
  if (!v11)
  {
    goto LABEL_18;
  }

LABEL_27:
  v12 = *(v1 + OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_handle + 8);
  v13 = *(v35 + OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_handle + 8);
  if (v12)
  {
    if (!v13 || (*(v1 + OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_handle) != *(v35 + OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_handle) || v12 != v13) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  else if (v13)
  {
    goto LABEL_18;
  }

  v14 = *(v1 + OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_displayName + 8);
  v15 = *(v35 + OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_displayName + 8);
  if (v14)
  {
    if (!v15 || (*(v1 + OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_displayName) != *(v35 + OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_displayName) || v14 != v15) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  else if (v15)
  {
    goto LABEL_18;
  }

  v16 = MEMORY[0x277D85000];
  v17 = v1;
  v18 = (*((*MEMORY[0x277D85000] & *v1) + 0xA8))();
  v20 = v19;
  v21 = (*((*v16 & *v35) + 0xA8))();
  if (v20)
  {
    if (v22)
    {
      goto LABEL_46;
    }

LABEL_18:

    goto LABEL_19;
  }

  if ((v22 & 1) != 0 || v18 != v21)
  {
    goto LABEL_18;
  }

LABEL_46:
  v23 = (*((*v16 & *v1) + 0xC0))(v21);
  v25 = v24;
  v26 = (*((*v16 & *v35) + 0xC0))();
  v5 = v27;
  if (!v25)
  {
    if (v27)
    {
LABEL_52:

      goto LABEL_19;
    }

    goto LABEL_55;
  }

  if (!v27)
  {

    return v5 & 1;
  }

  if (v23 == v26 && v25 == v27)
  {

    goto LABEL_55;
  }

  v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v28 & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_55:
  v29 = (*((*v16 & *v17) + 0xD8))(v26);
  v31 = v30;
  v32 = (*((*v16 & *v35) + 0xD8))();
  v34 = v33;
  if (!v31)
  {

    if (!v34)
    {
      v5 = 1;
      return v5 & 1;
    }

    goto LABEL_19;
  }

  if (!v33)
  {
    goto LABEL_52;
  }

  if (v29 == v32 && v31 == v33)
  {

    v5 = 1;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v5 & 1;
}

id NearbyAdvertisement.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t NearbyAdvertisement.CodingKeys.stringValue.getter(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x6F4D656369766564;
    v6 = 0x4449656369766564;
    if (a1 != 8)
    {
      v6 = 0x6F666E4972657375;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x4E79616C70736964;
    if (a1 != 5)
    {
      v7 = 0x6F43656369766564;
    }

    if (a1 <= 6u)
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
    v1 = 0x4972656E6E616373;
    v2 = 0x7974697669746361;
    v3 = 0x49746361746E6F63;
    if (a1 != 3)
    {
      v3 = 0x656C646E6168;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x696669746E656469;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance NearbyAdvertisement.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized NearbyAdvertisement.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance NearbyAdvertisement.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NearbyAdvertisement.CodingKeys and conformance NearbyAdvertisement.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance NearbyAdvertisement.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NearbyAdvertisement.CodingKeys and conformance NearbyAdvertisement.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t NearbyAdvertisement.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14NearbySessions0D13AdvertisementC10CodingKeys33_1727203DAE7B5184CD8F06D353AB6F7ALLOGMd, &_ss22KeyedEncodingContainerVy14NearbySessions0D13AdvertisementC10CodingKeys33_1727203DAE7B5184CD8F06D353AB6F7ALLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type NearbyAdvertisement.CodingKeys and conformance NearbyAdvertisement.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v16) = 0;
  type metadata accessor for UUID();
  _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_2(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC95F8]);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    LOBYTE(v16) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    LODWORD(v16) = *(v3 + OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_activityType);
    v18 = 2;
    lazy protocol witness table accessor for type NearbyInvitationActivityType and conformance NearbyInvitationActivityType();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v16) = 3;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v16) = 4;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v16) = 5;
    v10 = KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v11 = MEMORY[0x277D85000];
    (*((*MEMORY[0x277D85000] & *v3) + 0xA8))(v10);
    LOBYTE(v16) = 6;
    v12 = KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    (*((*v11 & *v3) + 0xC0))(v12);
    LOBYTE(v16) = 7;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();

    (*((*v11 & *v3) + 0xD8))(v13);
    LOBYTE(v16) = 8;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();

    v14 = *(v3 + OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_userInfo + 8);
    v16 = *(v3 + OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_userInfo);
    v17 = v14;
    v18 = 9;
    outlined copy of Data?(v16, v14);
    lazy protocol witness table accessor for type Data and conformance Data();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    outlined consume of Data?(v16, v17);
  }

  return (*(v6 + 8))(v8, v5);
}

void *NearbyAdvertisement.init(from:)(void *a1)
{
  v4 = type metadata accessor for UUID();
  v45 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy14NearbySessions0D13AdvertisementC10CodingKeys33_1727203DAE7B5184CD8F06D353AB6F7ALLOGMd, &_ss22KeyedDecodingContainerVy14NearbySessions0D13AdvertisementC10CodingKeys33_1727203DAE7B5184CD8F06D353AB6F7ALLOGMR);
  v46 = *(v7 - 8);
  v47 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = v43 - v8;
  v10 = v1 + OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_deviceColor;
  *v10 = 0;
  *(v10 + 8) = 1;
  v11 = (v1 + OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_deviceModel);
  *v11 = 0;
  v11[1] = 0;
  v52 = v1;
  v53 = v11;
  v12 = (v1 + OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_deviceID);
  *v12 = 0;
  v12[1] = 0;
  v50 = a1;
  v51 = v12;
  v13 = (v1 + OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement____lazy_storage___dataSource);
  *v13 = 0;
  v13[1] = 0;
  v49 = v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type NearbyAdvertisement.CodingKeys and conformance NearbyAdvertisement.CodingKeys();
  v48 = v9;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    v42 = v52;
    __swift_destroy_boxed_opaque_existential_0(v50);

    swift_unknownObjectRelease();
    type metadata accessor for NearbyAdvertisement(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v44 = v10;
    LOBYTE(v58) = 0;
    _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_2(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9618]);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v15 = v52;
    (*(v45 + 32))(v52 + OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_scannerID, v6, v4);
    LOBYTE(v58) = 1;
    v16 = KeyedDecodingContainer.decode(_:forKey:)();
    v17 = (v15 + OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_identifier);
    *v17 = v16;
    v17[1] = v18;
    v57 = 2;
    lazy protocol witness table accessor for type NearbyInvitationActivityType and conformance NearbyInvitationActivityType();
    v43[1] = 0;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *(v15 + OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_activityType) = v58;
    LOBYTE(v58) = 3;
    v19 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v20 = (v15 + OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_contactID);
    *v20 = v19;
    v20[1] = v21;
    LOBYTE(v58) = 4;
    v22 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v23 = (v15 + OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_handle);
    *v23 = v22;
    v23[1] = v24;
    LOBYTE(v58) = 5;
    v25 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v26 = (v15 + OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_displayName);
    *v26 = v25;
    v26[1] = v27;
    LOBYTE(v58) = 6;
    v28 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v30 = v29;
    v31 = v44;
    swift_beginAccess();
    *v31 = v28;
    *(v31 + 8) = v30 & 1;
    v57 = 7;
    v32 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v34 = v33;
    v35 = v53;
    swift_beginAccess();
    *v35 = v32;
    v35[1] = v34;

    v56 = 8;
    v36 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v38 = v37;
    v39 = v51;
    swift_beginAccess();
    *v39 = v36;
    v39[1] = v38;

    v59 = 9;
    lazy protocol witness table accessor for type Data and conformance Data();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v40 = v52;
    *(v52 + OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_userInfo) = v55;
    v41 = type metadata accessor for NearbyAdvertisement(0);
    v54.receiver = v40;
    v54.super_class = v41;
    v42 = objc_msgSendSuper2(&v54, sel_init);
    (*(v46 + 8))(v48, v47);
    __swift_destroy_boxed_opaque_existential_0(v50);
  }

  return v42;
}

uint64_t protocol witness for Decodable.init(from:) in conformance NearbyAdvertisement@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 312))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t NearbyInvitationJoinRequestMetadata.publicKey.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14NearbySessions35NearbyInvitationJoinRequestMetadata_publicKey);
  outlined copy of Data._Representation(v1, *(v0 + OBJC_IVAR____TtC14NearbySessions35NearbyInvitationJoinRequestMetadata_publicKey + 8));
  return v1;
}

uint64_t NearbyInvitationJoinRequestMetadata.pseudonym.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14NearbySessions35NearbyInvitationJoinRequestMetadata_pseudonym);

  return v1;
}

id InvitationBlob.init(invitationID:dataBlob:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, uint64_t (*a7)(void))
{
  v8 = &v7[*a5];
  *v8 = a1;
  *(v8 + 1) = a2;
  v9 = &v7[*a6];
  *v9 = a3;
  *(v9 + 1) = a4;
  v11.receiver = v7;
  v11.super_class = a7();
  return objc_msgSendSuper2(&v11, sel_init);
}

id @objc NearbyInvitationParameters.description.getter(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  v5 = a3();
  v7 = v6;

  v8 = MEMORY[0x25F86F000](v5, v7);

  return v8;
}

uint64_t NearbyInvitationJoinRequestMetadata.description.getter()
{
  swift_getObjectType();
  _StringGuts.grow(_:)(33);

  v1 = _typeName(_:qualified:)();
  MEMORY[0x25F86F070](v1);

  MEMORY[0x25F86F070](0x4B63696C62757020, 0xEC000000203A7965);
  v2 = Data.description.getter();
  MEMORY[0x25F86F070](v2);

  MEMORY[0x25F86F070](0x6F6475657370202CLL, 0xED0000203A6D796ELL);
  MEMORY[0x25F86F070](*(v0 + OBJC_IVAR____TtC14NearbySessions35NearbyInvitationJoinRequestMetadata_pseudonym), *(v0 + OBJC_IVAR____TtC14NearbySessions35NearbyInvitationJoinRequestMetadata_pseudonym + 8));
  MEMORY[0x25F86F070](62, 0xE100000000000000);
  return 60;
}

Swift::Void __swiftcall NearbyInvitationJoinRequestMetadata.encode(with:)(NSCoder with)
{
  isa = Data._bridgeToObjectiveC()().super.isa;
  v4 = MEMORY[0x25F86F000](0x654B63696C627570, 0xE900000000000079);
  [(objc_class *)with.super.isa encodeObject:isa forKey:v4];

  v5 = MEMORY[0x25F86F000](*(v1 + OBJC_IVAR____TtC14NearbySessions35NearbyInvitationJoinRequestMetadata_pseudonym), *(v1 + OBJC_IVAR____TtC14NearbySessions35NearbyInvitationJoinRequestMetadata_pseudonym + 8));
  v6 = MEMORY[0x25F86F000](0x796E6F6475657370, 0xE90000000000006DLL);
  [(objc_class *)with.super.isa encodeObject:v5 forKey:v6];
}

id NearbyInvitationJoinRequestMetadata.init(coder:)(void *a1)
{
  type metadata accessor for NSSet(0, &lazy cache variable for type metadata for NSData, 0x277CBEA90);
  v2 = NSCoder.decodeObject<A>(of:forKey:)();
  if (v2)
  {
    v5 = xmmword_25B82C300;
    v3 = v2;
    static Data._conditionallyBridgeFromObjectiveC(_:result:)();
  }

  type metadata accessor for NearbyInvitationJoinRequestMetadata();
  swift_deallocPartialClassInstance();
  return 0;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance NearbyInvitationJoinRequestMetadata.CodingKeys()
{
  if (*v0)
  {
    return 0x796E6F6475657370;
  }

  else
  {
    return 0x654B63696C627570;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance NearbyInvitationJoinRequestMetadata.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0x654B63696C627570 && a2 == 0xE900000000000079 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x796E6F6475657370 && a2 == 0xE90000000000006DLL)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance NearbyInvitationJoinRequestMetadata.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NearbyInvitationJoinRequestMetadata.CodingKeys and conformance NearbyInvitationJoinRequestMetadata.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance NearbyInvitationJoinRequestMetadata.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NearbyInvitationJoinRequestMetadata.CodingKeys and conformance NearbyInvitationJoinRequestMetadata.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t NearbyInvitationJoinRequestMetadata.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14NearbySessions0D29InvitationJoinRequestMetadataC10CodingKeys33_1727203DAE7B5184CD8F06D353AB6F7ALLOGMd, &_ss22KeyedEncodingContainerVy14NearbySessions0D29InvitationJoinRequestMetadataC10CodingKeys33_1727203DAE7B5184CD8F06D353AB6F7ALLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type NearbyInvitationJoinRequestMetadata.CodingKeys and conformance NearbyInvitationJoinRequestMetadata.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9 = *(v3 + OBJC_IVAR____TtC14NearbySessions35NearbyInvitationJoinRequestMetadata_publicKey + 8);
  v12 = *(v3 + OBJC_IVAR____TtC14NearbySessions35NearbyInvitationJoinRequestMetadata_publicKey);
  v13 = v9;
  v11[15] = 0;
  outlined copy of Data._Representation(v12, v9);
  lazy protocol witness table accessor for type Data and conformance Data();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  outlined consume of Data._Representation(v12, v13);
  if (!v2)
  {
    LOBYTE(v12) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

void *NearbyInvitationJoinRequestMetadata.init(from:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy14NearbySessions0D29InvitationJoinRequestMetadataC10CodingKeys33_1727203DAE7B5184CD8F06D353AB6F7ALLOGMd, &_ss22KeyedDecodingContainerVy14NearbySessions0D29InvitationJoinRequestMetadataC10CodingKeys33_1727203DAE7B5184CD8F06D353AB6F7ALLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type NearbyInvitationJoinRequestMetadata.CodingKeys and conformance NearbyInvitationJoinRequestMetadata.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
    type metadata accessor for NearbyInvitationJoinRequestMetadata();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v16 = 0;
    lazy protocol witness table accessor for type Data and conformance Data();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *(v1 + OBJC_IVAR____TtC14NearbySessions35NearbyInvitationJoinRequestMetadata_publicKey) = v15;
    LOBYTE(v15) = 1;
    v10 = KeyedDecodingContainer.decode(_:forKey:)();
    v11 = (v1 + OBJC_IVAR____TtC14NearbySessions35NearbyInvitationJoinRequestMetadata_pseudonym);
    *v11 = v10;
    v11[1] = v12;
    v13 = type metadata accessor for NearbyInvitationJoinRequestMetadata();
    v14.receiver = v1;
    v14.super_class = v13;
    v3 = objc_msgSendSuper2(&v14, sel_init);
    (*(v6 + 8))(v8, v5);
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  return v3;
}

uint64_t protocol witness for Decodable.init(from:) in conformance NearbyInvitationJoinRequestMetadata@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 128))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t InvitationRequestData.invitationData.getter()
{
  v1 = *v0;
  outlined copy of Data?(*v0, *(v0 + 8));
  return v1;
}

uint64_t InvitationRequestData.id.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t InvitationRequestData.pseudonym.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t InvitationRequestData.init(invitationData:id:pseudo:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  *a7 = result;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  a7[4] = a5;
  a7[5] = a6;
  return result;
}

uint64_t InvitationRequestData.description.getter()
{
  v1 = 7104878;
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[5];
  _StringGuts.grow(_:)(60);
  MEMORY[0x25F86F070](0xD000000000000026, 0x800000025B830FD0);
  if (v3 >> 60 == 15)
  {
    v7 = 0xE300000000000000;
    v8 = 7104878;
  }

  else
  {
    outlined copy of Data._Representation(v2, v3);
    v8 = String.init<A>(reflecting:)();
    v7 = v9;
  }

  MEMORY[0x25F86F070](v8, v7);

  MEMORY[0x25F86F070](0x203A6469202CLL, 0xE600000000000000);
  MEMORY[0x25F86F070](v4, v5);
  MEMORY[0x25F86F070](0x6F6475657370202CLL, 0xEA0000000000203ALL);
  if (v6)
  {

    v1 = String.init<A>(reflecting:)();
    v11 = v10;
  }

  else
  {
    v11 = 0xE300000000000000;
  }

  MEMORY[0x25F86F070](v1, v11);

  return 0;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance InvitationRequestData.CodingKeys()
{
  v1 = 25705;
  if (*v0 != 1)
  {
    v1 = 0x796E6F6475657370;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6974617469766E69;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance InvitationRequestData.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized InvitationRequestData.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance InvitationRequestData.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type InvitationRequestData.CodingKeys and conformance InvitationRequestData.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance InvitationRequestData.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type InvitationRequestData.CodingKeys and conformance InvitationRequestData.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t InvitationRequestData.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14NearbySessions21InvitationRequestDataV10CodingKeys33_1727203DAE7B5184CD8F06D353AB6F7ALLOGMd, &_ss22KeyedEncodingContainerVy14NearbySessions21InvitationRequestDataV10CodingKeys33_1727203DAE7B5184CD8F06D353AB6F7ALLOGMR);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v13 - v5;
  v7 = *v1;
  v8 = v1[1];
  v9 = v1[2];
  v13[3] = v1[3];
  v13[4] = v9;
  v10 = v1[4];
  v13[1] = v1[5];
  v13[2] = v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  outlined copy of Data?(v7, v8);
  lazy protocol witness table accessor for type InvitationRequestData.CodingKeys and conformance InvitationRequestData.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = v7;
  v15 = v8;
  v16 = 0;
  lazy protocol witness table accessor for type Data and conformance Data();
  v11 = v13[5];
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  outlined consume of Data?(v14, v15);
  if (!v11)
  {
    LOBYTE(v14) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v14) = 2;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t InvitationRequestData.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy14NearbySessions21InvitationRequestDataV10CodingKeys33_1727203DAE7B5184CD8F06D353AB6F7ALLOGMd, &_ss22KeyedDecodingContainerVy14NearbySessions21InvitationRequestDataV10CodingKeys33_1727203DAE7B5184CD8F06D353AB6F7ALLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v20 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type InvitationRequestData.CodingKeys and conformance InvitationRequestData.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v26 = 0;
  lazy protocol witness table accessor for type Data and conformance Data();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v9 = v24;
  v23 = v25;
  LOBYTE(v24) = 1;
  v21 = KeyedDecodingContainer.decode(_:forKey:)();
  v22 = v10;
  LOBYTE(v24) = 2;
  v11 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v13 = v12;
  v14 = v11;
  (*(v6 + 8))(v8, v5);
  v15 = v9;
  *a2 = v9;
  v16 = v22;
  v17 = v23;
  v18 = v21;
  a2[1] = v23;
  a2[2] = v18;
  a2[3] = v16;
  a2[4] = v14;
  a2[5] = v13;
  outlined copy of Data?(v15, v17);

  __swift_destroy_boxed_opaque_existential_0(a1);
  outlined consume of Data?(v15, v17);
}

uint64_t closure #1 in static Data.== infix(_:_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = __DataStorage._bytes.getter();
    if (v10)
    {
      v11 = __DataStorage._offset.getter();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = MEMORY[0x25F86EA20]();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v20 = a3;
    v21 = BYTE2(a3);
    v22 = BYTE3(a3);
    v23 = BYTE4(a3);
    v24 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = __DataStorage._bytes.getter();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = __DataStorage._offset.getter();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = MEMORY[0x25F86EA20]();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t specialized Data.withUnsafeBytes<A>(_:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v13[2] = *MEMORY[0x277D85DE8];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v13[0] = a1;
      LOWORD(v13[1]) = a2;
      BYTE2(v13[1]) = BYTE2(a2);
      BYTE3(v13[1]) = BYTE3(a2);
      BYTE4(v13[1]) = BYTE4(a2);
      BYTE5(v13[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    outlined consume of Data._Representation(a3, a4);
    return v10 & 1;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v13, 0, 14);
LABEL_9:
  closure #1 in static Data.== infix(_:_:)(v13, a3, a4, &v12);
  v10 = v4;
  outlined consume of Data._Representation(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

uint64_t specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = __DataStorage._bytes.getter();
  v11 = result;
  if (result)
  {
    result = __DataStorage._offset.getter();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  MEMORY[0x25F86EA20]();
  closure #1 in static Data.== infix(_:_:)(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

BOOL specialized static Data.== infix(_:_:)(_BOOL8 result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          outlined copy of Data._Representation(a3, a4);
          return specialized Data.withUnsafeBytes<A>(_:)(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

char *specialized static NearbyInvitationData.create(from:)(uint64_t a1, char *a2)
{
  v111 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14NearbySessions29Invitation_HostConnectionInfoVSgMd, &_s14NearbySessions29Invitation_HostConnectionInfoVSgMR);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v104 = &v92 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v106 = &v92 - v6;
  v108 = type metadata accessor for Invitation_HostConnectionInfo(0);
  v102 = *(v108 - 8);
  v7 = MEMORY[0x28223BE20](v108);
  v103 = (&v92 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v101 = (&v92 - v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v107 = &v92 - v11;
  v12 = type metadata accessor for UUID();
  v109 = *(v12 - 8);
  v110 = v12;
  v13 = MEMORY[0x28223BE20](v12);
  v105 = &v92 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v92 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v92 - v18;
  v20 = type metadata accessor for BinaryDecodingOptions();
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v92 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for Invitation_InvitationData(0);
  v24 = MEMORY[0x28223BE20](v23);
  v26 = &v92 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v28 = (&v92 - v27);
  v115 = 0;
  memset(v114, 0, sizeof(v114));
  outlined copy of Data._Representation(a1, v111);
  BinaryDecodingOptions.init()();
  v29 = _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_2(&lazy protocol witness table cache variable for type Invitation_InvitationData and conformance Invitation_InvitationData, 255, type metadata accessor for Invitation_InvitationData, &protocol conformance descriptor for Invitation_InvitationData);
  v30 = v116;
  Message.init(serializedData:extensions:partial:options:)();
  if (!v30)
  {
    v98 = v29;
    v99 = v26;
    v111 = v19;
    v116 = v17;
    v100 = 0;
    outlined copy of Data._Representation(*v28, v28[1]);
    v31 = v107;
    UUID.init(data:)();
    v32 = v109;
    v33 = v110;
    if ((*(v109 + 48))(v31, 1, v110) == 1)
    {
      outlined destroy of NSObject?(v31, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      if (one-time initialization token for client != -1)
      {
        swift_once();
      }

      v34 = type metadata accessor for Logger();
      __swift_project_value_buffer(v34, static Log.client);
      v35 = v99;
      outlined init with copy of Invitation_InvitationData(v28, v99);
      v36 = Logger.logObject.getter();
      v37 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = v28;
        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        *&v114[0] = v40;
        *v39 = 136315138;
        v41 = Message.debugDescription.getter();
        v43 = v42;
        outlined destroy of Invitation_InvitationData(v35, type metadata accessor for Invitation_InvitationData);
        v44 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41, v43, v114);

        *(v39 + 4) = v44;
        _os_log_impl(&dword_25B7C4000, v36, v37, "Invalid payload passed in: %s", v39, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v40);
        MEMORY[0x25F86FE20](v40, -1, -1);
        v45 = v39;
        v28 = v38;
        MEMORY[0x25F86FE20](v45, -1, -1);
      }

      else
      {

        outlined destroy of Invitation_InvitationData(v35, type metadata accessor for Invitation_InvitationData);
      }

      lazy protocol witness table accessor for type NearbyInvitationData.Errors and conformance NearbyInvitationData.Errors();
      v22 = swift_allocError();
      swift_willThrow();
      outlined destroy of Invitation_InvitationData(v28, type metadata accessor for Invitation_InvitationData);
    }

    else
    {
      v46 = *(v32 + 32);
      v47 = v111;
      v99 = (v32 + 32);
      v98 = v46;
      v46(v111, v31, v33);
      v48 = *(v32 + 16);
      v95 = v32 + 16;
      v94 = v48;
      v48(v116, v47, v33);
      v49 = v28[3];
      v93 = v28[2];
      v50 = v28;
      v51 = *(v23 + 32);
      v52 = (v50 + *(v23 + 28));
      v54 = *v52;
      v53 = v52[1];
      if (v53 >> 60 == 15)
      {
        v55 = 0;
      }

      else
      {
        v55 = *v52;
      }

      v97 = v55;
      v56 = 0xC000000000000000;
      if (v53 >> 60 != 15)
      {
        v56 = v53;
      }

      v96 = v56;
      v107 = v50;
      v57 = v106;
      outlined init with copy of (UUID, Bool)(v50 + v51, v106, &_s14NearbySessions29Invitation_HostConnectionInfoVSgMd, &_s14NearbySessions29Invitation_HostConnectionInfoVSgMR);
      v58 = *(v102 + 48);
      v59 = v108;
      if (v58(v57, 1, v108) == 1)
      {
        v60 = v101;
        *v101 = xmmword_25B82C2F0;
        *(v60 + 2) = 0;
        *(v60 + 3) = 0xE000000000000000;

        outlined copy of Data?(v54, v53);
        v61 = v106;
        UnknownStorage.init()();
        v62 = v59;
        v63 = v60;
        v64 = v49;
        if (v58(v61, 1, v62) != 1)
        {
          outlined destroy of NSObject?(v61, &_s14NearbySessions29Invitation_HostConnectionInfoVSgMd, &_s14NearbySessions29Invitation_HostConnectionInfoVSgMR);
        }
      }

      else
      {
        v63 = v101;
        outlined init with take of Invitation_HostConnectionInfo(v57, v101);

        outlined copy of Data?(v54, v53);
        v64 = v49;
      }

      v66 = *v63;
      v67 = v63[1];
      outlined copy of Data._Representation(*v63, v67);
      outlined destroy of Invitation_InvitationData(v63, type metadata accessor for Invitation_HostConnectionInfo);
      v68 = v104;
      outlined init with copy of (UUID, Bool)(v107 + v51, v104, &_s14NearbySessions29Invitation_HostConnectionInfoVSgMd, &_s14NearbySessions29Invitation_HostConnectionInfoVSgMR);
      v69 = v108;
      if (v58(v68, 1, v108) == 1)
      {
        v70 = v103;
        *v103 = xmmword_25B82C2F0;
        *(v70 + 2) = 0;
        *(v70 + 3) = 0xE000000000000000;
        UnknownStorage.init()();
        if (v58(v68, 1, v69) != 1)
        {
          outlined destroy of NSObject?(v68, &_s14NearbySessions29Invitation_HostConnectionInfoVSgMd, &_s14NearbySessions29Invitation_HostConnectionInfoVSgMR);
        }
      }

      else
      {
        v70 = v103;
        outlined init with take of Invitation_HostConnectionInfo(v68, v103);
      }

      v72 = *(v70 + 2);
      v71 = *(v70 + 3);

      outlined destroy of Invitation_InvitationData(v70, type metadata accessor for Invitation_HostConnectionInfo);
      v73 = type metadata accessor for NearbyInvitationJoinRequestMetadata();
      v74 = objc_allocWithZone(v73);
      v75 = &v74[OBJC_IVAR____TtC14NearbySessions35NearbyInvitationJoinRequestMetadata_publicKey];
      *v75 = v66;
      v75[1] = v67;
      v76 = &v74[OBJC_IVAR____TtC14NearbySessions35NearbyInvitationJoinRequestMetadata_pseudonym];
      *v76 = v72;
      *(v76 + 1) = v71;
      v113.receiver = v74;
      v113.super_class = v73;
      v77 = objc_msgSendSuper2(&v113, sel_init);
      v78 = type metadata accessor for NearbyInvitationData(0);
      v79 = objc_allocWithZone(v78);
      v80 = v116;
      v81 = v110;
      v94(&v79[OBJC_IVAR____TtC14NearbySessions20NearbyInvitationData_invitationID], v116, v110);
      v82 = &v79[OBJC_IVAR____TtC14NearbySessions20NearbyInvitationData_displayName];
      *v82 = v93;
      *(v82 + 1) = v64;
      v83 = &v79[OBJC_IVAR____TtC14NearbySessions20NearbyInvitationData_userInfo];
      v84 = v97;
      v85 = v96;
      *v83 = v97;
      v83[1] = v85;
      *&v79[OBJC_IVAR____TtC14NearbySessions20NearbyInvitationData_hostConnectionInfo] = v77;
      outlined copy of Data._Representation(v84, v85);
      v86 = v77;
      v87 = v105;
      UUID.init()();
      v98(&v79[OBJC_IVAR____TtC14NearbySessions20NearbyInvitationData_sourceProviderID], v87, v81);
      v88 = _s14NearbySessions24InvitationSourceProviderPAAE18providerIdentifierSSvgZAA0A5GroupC_Ttg5();
      v89 = &v79[OBJC_IVAR____TtC14NearbySessions20NearbyInvitationData_sourceProviderName];
      *v89 = v88;
      v89[1] = v90;
      v112.receiver = v79;
      v112.super_class = v78;
      v22 = objc_msgSendSuper2(&v112, sel_init);

      outlined consume of Data._Representation(v84, v85);
      v91 = *(v109 + 8);
      v91(v80, v81);
      v91(v111, v81);
      outlined destroy of Invitation_InvitationData(v107, type metadata accessor for Invitation_InvitationData);
    }
  }

  return v22;
}

uint64_t *specialized NearbyInvitation.init<A>(id:displayName:hostInfo:userInfo:controller:invitationSourceProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v54 = a4;
  v11 = v10;
  v50 = a6;
  v51 = a8;
  v42 = a7;
  v48 = a3;
  v49 = a5;
  v46 = a2;
  v56 = a1;
  v12 = *v10;
  v13 = *(*v10 + 80);
  v14 = *(*v10 + 88);
  v47 = a10;
  v44 = v14;
  v45 = a9;
  v43 = v13;
  type metadata accessor for NearbyInvitation.PendingMember(255, v13, v14, a4);
  swift_getWitnessTable();
  type metadata accessor for Set();
  v15 = type metadata accessor for Published();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v41 - v17;
  v19 = *(v12 + 144);
  v20 = Set.init()();
  property wrapper backing initializer of NearbyInvitation.pendingMembers(v20, v13, v14, v21);
  (*(v16 + 32))(v10 + v19, v18, v15);
  *(v10 + *(*v10 + 152)) = MEMORY[0x277D84FA0];
  *(v10 + direct field offset for NearbyInvitation.invitationHostInfo) = v54;
  v22 = v42;
  *(v10 + direct field offset for NearbyInvitation.controller) = v42;
  v23 = direct field offset for NearbyInvitation.id;
  v24 = type metadata accessor for UUID();
  v25 = *(v24 - 8);
  v52 = v24;
  v53 = v25;
  (*(v25 + 16))(v11 + v23, v56, v24);
  v26 = (v11 + direct field offset for NearbyInvitation.displayName);
  v27 = v45;
  v28 = v48;
  v29 = v49;
  *v26 = v46;
  v26[1] = v28;
  v30 = (v11 + direct field offset for NearbyInvitation.userInfo);
  v31 = v50;
  *v30 = v29;
  v30[1] = v31;
  v32 = (v11 + direct field offset for NearbyInvitation.sourceProvider);
  v33 = v47;
  v32[3] = v27;
  v32[4] = v33;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v32);
  (*(*(v27 - 8) + 16))(boxed_opaque_existential_1, v51, v27);
  v35 = OBJC_IVAR____TtC14NearbySessions27NearbyInvitationsController_approvalRequests;
  swift_beginAccess();
  v55 = *(v22 + v35);
  v36 = swift_allocObject();
  swift_weakInit();
  v37 = swift_allocObject();
  v38 = v44;
  v37[2] = v43;
  v37[3] = v27;
  v37[4] = v38;
  v37[5] = v33;
  v37[6] = v36;
  v39 = v54;

  outlined copy of Data?(v29, v31);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine18PassthroughSubjectCy14NearbySessions29IncomingInvitationJoinRequestCs5NeverOGMd, &_s7Combine18PassthroughSubjectCy14NearbySessions29IncomingInvitationJoinRequestCs5NeverOGMR);
  lazy protocol witness table accessor for type PassthroughSubject<IncomingInvitationJoinRequest, Never> and conformance PassthroughSubject<A, B>();
  Publisher<>.sink(receiveValue:)();

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  (*(v53 + 8))(v56, v52);
  return v11;
}

unint64_t lazy protocol witness table accessor for type InvitationBlob.CodingKeys and conformance InvitationBlob.CodingKeys()
{
  result = lazy protocol witness table cache variable for type InvitationBlob.CodingKeys and conformance InvitationBlob.CodingKeys;
  if (!lazy protocol witness table cache variable for type InvitationBlob.CodingKeys and conformance InvitationBlob.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InvitationBlob.CodingKeys and conformance InvitationBlob.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type InvitationBlob.CodingKeys and conformance InvitationBlob.CodingKeys;
  if (!lazy protocol witness table cache variable for type InvitationBlob.CodingKeys and conformance InvitationBlob.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InvitationBlob.CodingKeys and conformance InvitationBlob.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type InvitationBlob.CodingKeys and conformance InvitationBlob.CodingKeys;
  if (!lazy protocol witness table cache variable for type InvitationBlob.CodingKeys and conformance InvitationBlob.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InvitationBlob.CodingKeys and conformance InvitationBlob.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type InvitationBlob.CodingKeys and conformance InvitationBlob.CodingKeys;
  if (!lazy protocol witness table cache variable for type InvitationBlob.CodingKeys and conformance InvitationBlob.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InvitationBlob.CodingKeys and conformance InvitationBlob.CodingKeys);
  }

  return result;
}

void *specialized InvitationRequest.init(remoteInvitationData:displayName:userInfo:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v5[3] = 0;
  v5[4] = 0;
  v5[2] = 0;
  v5[5] = 0xF000000000000000;
  v5[6] = a1;
  swift_beginAccess();
  v5[2] = a2;
  v5[3] = a3;
  swift_beginAccess();
  v10 = v5[4];
  v11 = v5[5];
  v5[4] = a4;
  v5[5] = a5;
  outlined copy of Data?(a4, a5);
  outlined consume of Data?(v10, v11);
  return v5;
}

uint64_t outlined init with copy of InvitationSourceProvider(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t specialized NearbyInvitation.$pendingMembers.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for NearbyInvitation.PendingMember(255, *(*v4 + 80), *(*v4 + 88), a4);
  swift_getWitnessTable();
  type metadata accessor for Set();
  v6 = type metadata accessor for Published.Publisher();
  MEMORY[0x28223BE20](v6);
  (*(v8 + 16))(&v10 - v7, a1);
  swift_beginAccess();
  type metadata accessor for Published();
  Published.projectedValue.setter();
  return swift_endAccess();
}

void partial apply for closure #1 in NearbyInvitation.deinit(void *a1)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  closure #1 in NearbyInvitation.deinit(a1, v1 + v4, v5);
}

unint64_t lazy protocol witness table accessor for type InvitationApprovalRequest.CodingKeys and conformance InvitationApprovalRequest.CodingKeys()
{
  result = lazy protocol witness table cache variable for type InvitationApprovalRequest.CodingKeys and conformance InvitationApprovalRequest.CodingKeys;
  if (!lazy protocol witness table cache variable for type InvitationApprovalRequest.CodingKeys and conformance InvitationApprovalRequest.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InvitationApprovalRequest.CodingKeys and conformance InvitationApprovalRequest.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type InvitationApprovalRequest.CodingKeys and conformance InvitationApprovalRequest.CodingKeys;
  if (!lazy protocol witness table cache variable for type InvitationApprovalRequest.CodingKeys and conformance InvitationApprovalRequest.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InvitationApprovalRequest.CodingKeys and conformance InvitationApprovalRequest.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type InvitationApprovalRequest.CodingKeys and conformance InvitationApprovalRequest.CodingKeys;
  if (!lazy protocol witness table cache variable for type InvitationApprovalRequest.CodingKeys and conformance InvitationApprovalRequest.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InvitationApprovalRequest.CodingKeys and conformance InvitationApprovalRequest.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type InvitationApprovalRequest.CodingKeys and conformance InvitationApprovalRequest.CodingKeys;
  if (!lazy protocol witness table cache variable for type InvitationApprovalRequest.CodingKeys and conformance InvitationApprovalRequest.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InvitationApprovalRequest.CodingKeys and conformance InvitationApprovalRequest.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type NearbyInvitationData.CodingKeys and conformance NearbyInvitationData.CodingKeys()
{
  result = lazy protocol witness table cache variable for type NearbyInvitationData.CodingKeys and conformance NearbyInvitationData.CodingKeys;
  if (!lazy protocol witness table cache variable for type NearbyInvitationData.CodingKeys and conformance NearbyInvitationData.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NearbyInvitationData.CodingKeys and conformance NearbyInvitationData.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NearbyInvitationData.CodingKeys and conformance NearbyInvitationData.CodingKeys;
  if (!lazy protocol witness table cache variable for type NearbyInvitationData.CodingKeys and conformance NearbyInvitationData.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NearbyInvitationData.CodingKeys and conformance NearbyInvitationData.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NearbyInvitationData.CodingKeys and conformance NearbyInvitationData.CodingKeys;
  if (!lazy protocol witness table cache variable for type NearbyInvitationData.CodingKeys and conformance NearbyInvitationData.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NearbyInvitationData.CodingKeys and conformance NearbyInvitationData.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NearbyInvitationData.CodingKeys and conformance NearbyInvitationData.CodingKeys;
  if (!lazy protocol witness table cache variable for type NearbyInvitationData.CodingKeys and conformance NearbyInvitationData.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NearbyInvitationData.CodingKeys and conformance NearbyInvitationData.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type NearbyAdvertisement.CodingKeys and conformance NearbyAdvertisement.CodingKeys()
{
  result = lazy protocol witness table cache variable for type NearbyAdvertisement.CodingKeys and conformance NearbyAdvertisement.CodingKeys;
  if (!lazy protocol witness table cache variable for type NearbyAdvertisement.CodingKeys and conformance NearbyAdvertisement.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NearbyAdvertisement.CodingKeys and conformance NearbyAdvertisement.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NearbyAdvertisement.CodingKeys and conformance NearbyAdvertisement.CodingKeys;
  if (!lazy protocol witness table cache variable for type NearbyAdvertisement.CodingKeys and conformance NearbyAdvertisement.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NearbyAdvertisement.CodingKeys and conformance NearbyAdvertisement.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NearbyAdvertisement.CodingKeys and conformance NearbyAdvertisement.CodingKeys;
  if (!lazy protocol witness table cache variable for type NearbyAdvertisement.CodingKeys and conformance NearbyAdvertisement.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NearbyAdvertisement.CodingKeys and conformance NearbyAdvertisement.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NearbyAdvertisement.CodingKeys and conformance NearbyAdvertisement.CodingKeys;
  if (!lazy protocol witness table cache variable for type NearbyAdvertisement.CodingKeys and conformance NearbyAdvertisement.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NearbyAdvertisement.CodingKeys and conformance NearbyAdvertisement.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type NearbyInvitationJoinRequestMetadata.CodingKeys and conformance NearbyInvitationJoinRequestMetadata.CodingKeys()
{
  result = lazy protocol witness table cache variable for type NearbyInvitationJoinRequestMetadata.CodingKeys and conformance NearbyInvitationJoinRequestMetadata.CodingKeys;
  if (!lazy protocol witness table cache variable for type NearbyInvitationJoinRequestMetadata.CodingKeys and conformance NearbyInvitationJoinRequestMetadata.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NearbyInvitationJoinRequestMetadata.CodingKeys and conformance NearbyInvitationJoinRequestMetadata.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NearbyInvitationJoinRequestMetadata.CodingKeys and conformance NearbyInvitationJoinRequestMetadata.CodingKeys;
  if (!lazy protocol witness table cache variable for type NearbyInvitationJoinRequestMetadata.CodingKeys and conformance NearbyInvitationJoinRequestMetadata.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NearbyInvitationJoinRequestMetadata.CodingKeys and conformance NearbyInvitationJoinRequestMetadata.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NearbyInvitationJoinRequestMetadata.CodingKeys and conformance NearbyInvitationJoinRequestMetadata.CodingKeys;
  if (!lazy protocol witness table cache variable for type NearbyInvitationJoinRequestMetadata.CodingKeys and conformance NearbyInvitationJoinRequestMetadata.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NearbyInvitationJoinRequestMetadata.CodingKeys and conformance NearbyInvitationJoinRequestMetadata.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NearbyInvitationJoinRequestMetadata.CodingKeys and conformance NearbyInvitationJoinRequestMetadata.CodingKeys;
  if (!lazy protocol witness table cache variable for type NearbyInvitationJoinRequestMetadata.CodingKeys and conformance NearbyInvitationJoinRequestMetadata.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NearbyInvitationJoinRequestMetadata.CodingKeys and conformance NearbyInvitationJoinRequestMetadata.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type InvitationRequestData.CodingKeys and conformance InvitationRequestData.CodingKeys()
{
  result = lazy protocol witness table cache variable for type InvitationRequestData.CodingKeys and conformance InvitationRequestData.CodingKeys;
  if (!lazy protocol witness table cache variable for type InvitationRequestData.CodingKeys and conformance InvitationRequestData.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InvitationRequestData.CodingKeys and conformance InvitationRequestData.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type InvitationRequestData.CodingKeys and conformance InvitationRequestData.CodingKeys;
  if (!lazy protocol witness table cache variable for type InvitationRequestData.CodingKeys and conformance InvitationRequestData.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InvitationRequestData.CodingKeys and conformance InvitationRequestData.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type InvitationRequestData.CodingKeys and conformance InvitationRequestData.CodingKeys;
  if (!lazy protocol witness table cache variable for type InvitationRequestData.CodingKeys and conformance InvitationRequestData.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InvitationRequestData.CodingKeys and conformance InvitationRequestData.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type InvitationRequestData.CodingKeys and conformance InvitationRequestData.CodingKeys;
  if (!lazy protocol witness table cache variable for type InvitationRequestData.CodingKeys and conformance InvitationRequestData.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InvitationRequestData.CodingKeys and conformance InvitationRequestData.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type NearbyInvitationScopeType and conformance NearbyInvitationScopeType()
{
  result = lazy protocol witness table cache variable for type NearbyInvitationScopeType and conformance NearbyInvitationScopeType;
  if (!lazy protocol witness table cache variable for type NearbyInvitationScopeType and conformance NearbyInvitationScopeType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NearbyInvitationScopeType and conformance NearbyInvitationScopeType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NearbyInvitationScopeType and conformance NearbyInvitationScopeType;
  if (!lazy protocol witness table cache variable for type NearbyInvitationScopeType and conformance NearbyInvitationScopeType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NearbyInvitationScopeType and conformance NearbyInvitationScopeType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type NearbyInvitationRouteType and conformance NearbyInvitationRouteType()
{
  result = lazy protocol witness table cache variable for type NearbyInvitationRouteType and conformance NearbyInvitationRouteType;
  if (!lazy protocol witness table cache variable for type NearbyInvitationRouteType and conformance NearbyInvitationRouteType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NearbyInvitationRouteType and conformance NearbyInvitationRouteType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NearbyInvitationRouteType and conformance NearbyInvitationRouteType;
  if (!lazy protocol witness table cache variable for type NearbyInvitationRouteType and conformance NearbyInvitationRouteType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NearbyInvitationRouteType and conformance NearbyInvitationRouteType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type NearbyInvitationData.Errors and conformance NearbyInvitationData.Errors()
{
  result = lazy protocol witness table cache variable for type NearbyInvitationData.Errors and conformance NearbyInvitationData.Errors;
  if (!lazy protocol witness table cache variable for type NearbyInvitationData.Errors and conformance NearbyInvitationData.Errors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NearbyInvitationData.Errors and conformance NearbyInvitationData.Errors);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NearbyInvitationData.Errors and conformance NearbyInvitationData.Errors;
  if (!lazy protocol witness table cache variable for type NearbyInvitationData.Errors and conformance NearbyInvitationData.Errors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NearbyInvitationData.Errors and conformance NearbyInvitationData.Errors);
  }

  return result;
}

uint64_t type metadata completion function for IncomingInvitationJoinRequest(uint64_t a1)
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

uint64_t dispatch thunk of InvitationRequest.requestApproval()()
{
  v4 = (*(*v0 + 200) + **(*v0 + 200));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = dispatch thunk of NearbyGroupTable.firstGroup();

  return v4();
}

uint64_t dispatch thunk of InvitationSourceProvider.didApproveMember(member:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 24) + **(a3 + 24));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = partial apply for closure #1 in NearbyGroupTable.cleanUpIfNotPresent(_:);

  return v9(a1, a2, a3);
}

uint64_t type metadata completion function for NearbyInvitation(uint64_t a1)
{
  result = type metadata accessor for UUID();
  if (v4 <= 0x3F)
  {
    type metadata accessor for NearbyInvitation.PendingMember(255, *(a1 + 80), *(a1 + 88), v3);
    swift_getWitnessTable();
    type metadata accessor for Set();
    result = type metadata accessor for Published();
    if (v5 <= 0x3F)
    {
      return swift_initClassMetadata2();
    }
  }

  return result;
}

uint64_t dispatch thunk of NearbyInvitation.markUsed()()
{
  v4 = (*(*v0 + 256) + **(*v0 + 256));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = partial apply for closure #1 in NearbyGroupTable.cleanUpIfNotPresent(_:);

  return v4();
}

uint64_t dispatch thunk of NearbyInvitation.approve(_:userInfo:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 264) + **(*v3 + 264));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = partial apply for closure #1 in NearbyGroupTable.cleanUpIfNotPresent(_:);

  return v10(a1, a2, a3);
}

uint64_t dispatch thunk of NearbyInvitation.reject(_:)(uint64_t a1)
{
  v6 = (*(*v1 + 272) + **(*v1 + 272));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = partial apply for closure #1 in NearbyGroupTable.firstGroup();

  return v6(a1);
}

uint64_t type metadata instantiation function for NearbyInvitation.PendingMember(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t getEnumTagSinglePayload for NearbyInvitation.PendingMember(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t storeEnumTagSinglePayload for NearbyInvitation.PendingMember(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t type metadata completion function for NearbyInvitationData(uint64_t a1)
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

uint64_t type metadata completion function for NearbyAdvertisement(uint64_t a1)
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

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for InvitationRequestData(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for InvitationRequestData(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NearbyAdvertisement.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for NearbyAdvertisement.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for NearbyInvitationData.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for NearbyInvitationData.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t specialized InvitationApprovalRequest.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000014 && 0x800000025B830EA0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4E79616C70736964 && a2 == 0xEB00000000656D61 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F666E4972657375 && a2 == 0xE800000000000000)
  {

    return 2;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t specialized NearbyInvitationData.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6974617469766E69 && a2 == 0xEC00000044496E6FLL;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4E79616C70736964 && a2 == 0xEB00000000656D61 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F666E4972657375 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x800000025B830210 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x800000025B830320 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000012 && 0x800000025B830340 == a2)
  {

    return 5;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t specialized NearbyAdvertisement.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4972656E6E616373 && a2 == 0xE900000000000044;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7974697669746361 && a2 == 0xEC00000065707954 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x49746361746E6F63 && a2 == 0xE900000000000044 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x656C646E6168 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x4E79616C70736964 && a2 == 0xEB00000000656D61 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6F43656369766564 && a2 == 0xEB00000000726F6CLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6F4D656369766564 && a2 == 0xEB000000006C6564 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x4449656369766564 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6F666E4972657375 && a2 == 0xE800000000000000)
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

uint64_t specialized InvitationRequestData.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6974617469766E69 && a2 == 0xEE00617461446E6FLL;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 25705 && a2 == 0xE200000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x796E6F6475657370 && a2 == 0xE90000000000006DLL)
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

uint64_t partial apply for closure #1 in closure #1 in NearbyInvitation.approve(_:userInfo:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);

  return closure #1 in closure #1 in NearbyInvitation.approve(_:userInfo:)(a1);
}

uint64_t partial apply for closure #1 in closure #1 in NearbyInvitation.markUsed()(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for UUID() - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = *(v1 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));

  return closure #1 in closure #1 in NearbyInvitation.markUsed()(a1, v1 + v4, v1 + v7, v8);
}

uint64_t objectdestroy_167Tm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = *(v4 + 64);
  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x2821FE8E8](v2, v6 + v7, v5 | 7);
}

void *partial apply for closure #1 in closure #1 in NearbyInvitation.init<A>(id:displayName:userInfo:controller:invitationSourceProvider:)(void *a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy14NearbySessions0A29InvitationJoinRequestMetadataCs5Error_pGMd, &_sScCy14NearbySessions0A29InvitationJoinRequestMetadataCs5Error_pGMR);

  return closure #1 in closure #1 in NearbyInvitation.init<A>(id:displayName:userInfo:controller:invitationSourceProvider:)(a1, a2);
}

uint64_t partial apply for closure #1 in closure #1 in InvitationRequest.requestApproval()(void *a1, void *a2)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy14NearbySessions22InvitationJoinResponseCs5Error_pGMd, &_sScCy14NearbySessions22InvitationJoinResponseCs5Error_pGMR) - 8);
  v8 = v2 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

  return closure #1 in closure #1 in InvitationRequest.requestApproval()(a1, a2, v8, v5, v6);
}

uint64_t outlined init with copy of Invitation_InvitationData(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Invitation_InvitationData(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of Invitation_InvitationData(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t lazy protocol witness table accessor for type PassthroughSubject<IncomingInvitationJoinRequest, Never> and conformance PassthroughSubject<A, B>()
{
  result = lazy protocol witness table cache variable for type PassthroughSubject<IncomingInvitationJoinRequest, Never> and conformance PassthroughSubject<A, B>;
  if (!lazy protocol witness table cache variable for type PassthroughSubject<IncomingInvitationJoinRequest, Never> and conformance PassthroughSubject<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7Combine18PassthroughSubjectCy14NearbySessions29IncomingInvitationJoinRequestCs5NeverOGMd, &_s7Combine18PassthroughSubjectCy14NearbySessions29IncomingInvitationJoinRequestCs5NeverOGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PassthroughSubject<IncomingInvitationJoinRequest, Never> and conformance PassthroughSubject<A, B>);
  }

  return result;
}

uint64_t dispatch thunk of Decoder.decodeSingularBytesField(value:)()
{
  return MEMORY[0x28217E2C0]();
}

{
  return MEMORY[0x28217E2C8]();
}

uint64_t KeyedDecodingContainer.decodeIfPresent(_:forKey:)()
{
  return MEMORY[0x2821FD988]();
}

{
  return MEMORY[0x2821FD9A8]();
}

uint64_t KeyedDecodingContainer.decode(_:forKey:)()
{
  return MEMORY[0x2821FD9F8]();
}

{
  return MEMORY[0x2821FDA00]();
}

uint64_t KeyedEncodingContainer.encodeIfPresent(_:forKey:)()
{
  return MEMORY[0x2821FDAC0]();
}

{
  return MEMORY[0x2821FDAE0]();
}

uint64_t KeyedEncodingContainer.encode(_:forKey:)()
{
  return MEMORY[0x2821FDB38]();
}

{
  return MEMORY[0x2821FDB40]();
}