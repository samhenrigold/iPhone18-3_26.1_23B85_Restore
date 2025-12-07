uint64_t specialized RequestManager.withRequest(id:perform:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[6] = a4;
  v5[7] = v4;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  v5[8] = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOyABy14XPCDistributed9XPCSystemC9TransportC6PacketV7PayloadVAG0D5ErrorOGSgs5NeverOGMd, &_ss6ResultOyABy14XPCDistributed9XPCSystemC9TransportC6PacketV7PayloadVAG0D5ErrorOGSgs5NeverOGMR);
  v5[9] = swift_task_alloc();
  v5[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](specialized RequestManager.withRequest(id:perform:), 0, 0);
}

uint64_t specialized RequestManager.withRequest(id:perform:)()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 32);
  *(v0 + 16) = v2;
  v3 = swift_allocObject();
  *(v0 + 88) = v3;
  *(v3 + 16) = specialized closure #1 in RequestManager.withRequest(id:perform:);
  *(v3 + 24) = 0;
  v4 = *(v1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14XPCDistributed14RequestManagerC0B0CyAA4ID64Vs6ResultOyAA9XPCSystemC9TransportC6PacketV7PayloadVAM0G5ErrorOG_GMd, &_s14XPCDistributed14RequestManagerC0B0CyAA4ID64Vs6ResultOyAA9XPCSystemC9TransportC6PacketV7PayloadVAM0G5ErrorOG_GMR);
  v5 = swift_allocObject();
  *(v0 + 96) = v5;
  v5[2] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14XPCDistributed14RequestManagerC0B0C5StateOyAA4ID64Vs6ResultOyAA9XPCSystemC9TransportC6PacketV7PayloadVAO0H5ErrorOG__GMd, &_s14XPCDistributed14RequestManagerC0B0C5StateOyAA4ID64Vs6ResultOyAA9XPCSystemC9TransportC6PacketV7PayloadVAO0H5ErrorOG__GMR);
  v13 = *(v0 + 40);
  swift_storeEnumTagMultiPayload();
  *(v5 + *(*v5 + 120)) = v4;
  v6 = swift_task_alloc();
  *(v0 + 104) = v6;
  *(v6 + 16) = v1;
  *(v6 + 24) = v0 + 16;
  *(v6 + 32) = v5;
  *(v6 + 40) = v3;
  *(v6 + 48) = v13;
  v7 = swift_task_alloc();
  *(v0 + 112) = v7;
  *(v7 + 16) = v1;
  *(v7 + 24) = v5;
  v8 = v4;
  v9 = swift_task_alloc();
  *(v0 + 120) = v9;
  *v9 = v0;
  v9[1] = specialized RequestManager.withRequest(id:perform:);
  v10 = *(v0 + 80);
  v11 = *(v0 + 64);

  return MEMORY[0x282200830](v10, &_s14XPCDistributed14RequestManagerC04withB02id12replyHandler7performqd__x_qd__q_Sgqd_0_YKcnyAC0B0Cyxq__GXEtYaqd_0_YKs5ErrorRd_0_r0_lFs6ResultOyqd__qd_0_GyYaXEfU_AA4ID64V_ANyAA9XPCSystemC9TransportC6PacketV7PayloadVAU0mI0OGA0_Sgs5NeverOTG5TATu, v6, _s14XPCDistributed14RequestManagerC04withB02id12replyHandler7performqd__x_qd__q_Sgqd_0_YKcnyAC0B0Cyxq__GXEtYaqd_0_YKs5ErrorRd_0_r0_lFyyYbXEfU0_AA4ID64V_s6ResultOyAA9XPCSystemC9TransportC6PacketV7PayloadVAT0mI0OGA_Sgs5NeverOTg5TA, v7, 0, 0, v11);
}

{

  if (v0)
  {
  }

  else
  {

    return MEMORY[0x2822009F8](specialized RequestManager.withRequest(id:perform:), 0, 0);
  }
}

{
  outlined init with copy of XPCPeerRequirement?(v0[10], v0[9], &_ss6ResultOyABy14XPCDistributed9XPCSystemC9TransportC6PacketV7PayloadVAG0D5ErrorOGSgs5NeverOGMd, &_ss6ResultOyABy14XPCDistributed9XPCSystemC9TransportC6PacketV7PayloadVAG0D5ErrorOGSgs5NeverOGMR);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v2 = v0[10];
  if (EnumCaseMultiPayload == 1)
  {
    swift_willThrowTypedImpl();

    outlined destroy of Result<XPCSystem.Transport.Packet.Payload, XPCSystem.Transport.TransportError>(v2, &_ss6ResultOyABy14XPCDistributed9XPCSystemC9TransportC6PacketV7PayloadVAG0D5ErrorOGSgs5NeverOGMd, &_ss6ResultOyABy14XPCDistributed9XPCSystemC9TransportC6PacketV7PayloadVAG0D5ErrorOGSgs5NeverOGMR);
  }

  else
  {
    v4 = v0[9];
    v5 = v0[3];
    outlined destroy of Result<XPCSystem.Transport.Packet.Payload, XPCSystem.Transport.TransportError>(v0[10], &_ss6ResultOyABy14XPCDistributed9XPCSystemC9TransportC6PacketV7PayloadVAG0D5ErrorOGSgs5NeverOGMd, &_ss6ResultOyABy14XPCDistributed9XPCSystemC9TransportC6PacketV7PayloadVAG0D5ErrorOGSgs5NeverOGMR);

    outlined init with take of Result<XPCSystem.Transport.Packet.Payload, XPCSystem.Transport.TransportError>?(v4, v5, &_ss6ResultOy14XPCDistributed9XPCSystemC9TransportC6PacketV7PayloadVAG0D5ErrorOGSgMd, &_ss6ResultOy14XPCDistributed9XPCSystemC9TransportC6PacketV7PayloadVAG0D5ErrorOGSgMR);

    v6 = v0[1];

    return v6();
  }
}

void *_s14XPCDistributed9XPCSystemC9TransportC16sendNotification11withPayloadyAE6PacketV0G0V_tAE0C5ErrorOYKF(uint64_t a1)
{
  v4 = type metadata accessor for XPCSystem.Transport.Packet(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of XPCSystem.Transport.Packet.Payload(a1, &v6[*(v7 + 28)]);
  *v6 = 0;
  v6[8] = 2;
  v8 = v1[11];
  v9 = v1[12];
  v10 = __swift_project_boxed_opaque_existential_1(v1 + 8, v8);
  v11 = (*(v9 + 16))(v6, v8, v9);
  if (v2)
  {
    v13 = v11;
    v14 = v12;
    v17 = 0;
    v18 = 0xE000000000000000;
    _StringGuts.grow(_:)(41);
    MEMORY[0x277C6B720](0xD000000000000027, 0x80000002751B8F10);
    v16[0] = v13;
    v16[1] = v14;
    _print_unlocked<A, B>(_:_:)();

    v10 = v17;
    lazy protocol witness table accessor for type XPCSystem.Transport.TransportError and conformance XPCSystem.Transport.TransportError();
    swift_willThrowTypedImpl();
  }

  outlined destroy of XPCSystem.Transport.Packet(v6);
  return v10;
}

uint64_t XPCSystem.Transport.deinit()
{
  outlined destroy of weak XPCSystem.InboundSessionProtocol?(v0 + 16);

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 64);

  return v0;
}

uint64_t XPCSystem.Transport.__deallocating_deinit()
{
  outlined destroy of weak XPCSystem.InboundSessionProtocol?(v0 + 16);

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 64);

  return swift_deallocClassInstance();
}

uint64_t XPCSystem.Transport.Packet.Header.write(to:)(uint64_t a1, uint64_t a2, char a3)
{
  lazy protocol witness table accessor for type UInt8 and conformance UInt8();
  XPCDictionary.subscript.setter();
  lazy protocol witness table accessor for type UInt64 and conformance UInt64();
  return XPCDictionary.subscript.setter();
}

uint64_t XPCSystem.Transport.Packet.Payload.dictionary.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for XPCDictionary();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t XPCSystem.Transport.Packet.Payload.init<A>(encoding:userInfo:)@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a5@<X8>)
{
  v9 = type metadata accessor for XPCDictionary();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  XPCDictionary.init()();
  XPCDictionary.encode<A>(_:forKey:withUserInfo:)();
  if (v5)
  {

    (*(*(a3 - 8) + 8))(a1, a3);
    return (*(v10 + 8))(v12, v9);
  }

  else
  {
    (*(*(a3 - 8) + 8))(a1, a3);

    return (*(v10 + 32))(a5, v12, v9);
  }
}

uint64_t XPCSystem.Transport.Packet.Payload.init(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for XPCSystem.Transport.Packet.Payload(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = XPCDictionary.keys.getter();
  v16[0] = 0x64616F6C796170;
  v16[1] = 0xE700000000000000;
  v15 = v16;
  v9 = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), v14, v8);

  v10 = type metadata accessor for XPCDictionary();
  v11 = *(v10 - 8);
  if (v9)
  {
    (*(v11 + 32))(v7, a1, v10);
    outlined init with take of XPCSystem.Transport.Packet.Payload(v7, a2, type metadata accessor for XPCSystem.Transport.Packet.Payload);
    v12 = 0;
  }

  else
  {
    (*(v11 + 8))(a1, v10);
    v12 = 1;
  }

  return (*(v5 + 56))(a2, v12, 1, v4);
}

uint64_t XPCSystem.Transport.Packet.payload.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for XPCSystem.Transport.Packet(0) + 20);

  return outlined init with copy of XPCSystem.Transport.Packet.Payload(v3, a1);
}

uint64_t XPCSystem.Transport.Packet.rawValue.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for XPCSystem.Transport.Packet.Payload(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for XPCSystem.Transport.Packet(0);
  outlined init with copy of XPCSystem.Transport.Packet.Payload(v1 + *(v6 + 20), v5);
  v7 = type metadata accessor for XPCDictionary();
  (*(*(v7 - 8) + 32))(a1, v5, v7);
  return XPCSystem.Transport.Packet.Header.write(to:)(a1, *v1, *(v1 + 8));
}

uint64_t XPCSystem.Transport.Packet.init(rawValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14XPCDistributed9XPCSystemC9TransportC6PacketV7PayloadVSgMd, &_s14XPCDistributed9XPCSystemC9TransportC6PacketV7PayloadVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v27 - v4;
  v6 = type metadata accessor for XPCSystem.Transport.Packet.Payload(0);
  v29 = *(v6 - 8);
  v30 = v6;
  MEMORY[0x28223BE20](v6);
  v28 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for XPCDictionary();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for XPCSystem.Transport.Packet(0);
  v12 = *(v31 - 8);
  v13 = MEMORY[0x28223BE20](v31);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v9 + 16);
  v16(v11, a1, v8, v13);
  v17 = specialized XPCSystem.Transport.Packet.Header.init(from:)(v11);
  if (v18 == -1)
  {
    (*(v9 + 8))(a1, v8);
  }

  else
  {
    v19 = v18;
    v27 = v17;
    (v16)(v11, a1, v8);
    XPCSystem.Transport.Packet.Payload.init(from:)(v11, v5);
    (*(v9 + 8))(a1, v8);
    if ((*(v29 + 48))(v5, 1, v30) != 1)
    {
      v23 = v28;
      outlined init with take of XPCSystem.Transport.Packet.Payload(v5, v28, type metadata accessor for XPCSystem.Transport.Packet.Payload);
      *v15 = v27;
      v15[8] = v19;
      v24 = v31;
      outlined init with take of XPCSystem.Transport.Packet.Payload(v23, &v15[*(v31 + 20)], type metadata accessor for XPCSystem.Transport.Packet.Payload);
      v25 = v32;
      outlined init with take of XPCSystem.Transport.Packet.Payload(v15, v32, type metadata accessor for XPCSystem.Transport.Packet);
      v22 = v24;
      v21 = v25;
      v20 = 0;
      return (*(v12 + 56))(v21, v20, 1, v22);
    }

    outlined destroy of Result<XPCSystem.Transport.Packet.Payload, XPCSystem.Transport.TransportError>(v5, &_s14XPCDistributed9XPCSystemC9TransportC6PacketV7PayloadVSgMd, &_s14XPCDistributed9XPCSystemC9TransportC6PacketV7PayloadVSgMR);
  }

  v20 = 1;
  v22 = v31;
  v21 = v32;
  return (*(v12 + 56))(v21, v20, 1, v22);
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance XPCSystem.Transport.Packet@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for XPCSystem.Transport.Packet.Payload(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of XPCSystem.Transport.Packet.Payload(v2 + *(a1 + 20), v7);
  v8 = type metadata accessor for XPCDictionary();
  (*(*(v8 - 8) + 32))(a2, v7, v8);
  return XPCSystem.Transport.Packet.Header.write(to:)(a2, *v2, *(v2 + 8));
}

uint64_t specialized RequestManager.Request._setReplyHandler(to:)(void (*a1)(char *), void (*a2)(char *))
{
  v3 = v2;
  v26 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy14XPCDistributed9XPCSystemC9TransportC6PacketV7PayloadVAG0D5ErrorOGSgMd, &_ss6ResultOy14XPCDistributed9XPCSystemC9TransportC6PacketV7PayloadVAG0D5ErrorOGSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v25 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14XPCDistributed14RequestManagerC0B0C5StateOyAA4ID64Vs6ResultOyAA9XPCSystemC9TransportC6PacketV7PayloadVAO0H5ErrorOG__GMd, &_s14XPCDistributed14RequestManagerC0B0C5StateOyAA4ID64Vs6ResultOyAA9XPCSystemC9TransportC6PacketV7PayloadVAO0H5ErrorOG__GMR);
  MEMORY[0x28223BE20](v8);
  v10 = (&v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11);
  v13 = &v25 - v12;
  v14 = type metadata accessor for DispatchPredicate();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = (&v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = *(v3 + *(*v3 + 120));
  *v18 = v19;
  (*(v15 + 104))(v18, *MEMORY[0x277D85200], v14, v16);
  v20 = v19;
  v21 = _dispatchPreconditionTest(_:)();
  (*(v15 + 8))(v18, v14);
  if ((v21 & 1) == 0)
  {
    __break(1u);
LABEL_9:
    outlined destroy of Result<XPCSystem.Transport.Packet.Payload, XPCSystem.Transport.TransportError>(v13, &_s14XPCDistributed14RequestManagerC0B0C5StateOyAA4ID64Vs6ResultOyAA9XPCSystemC9TransportC6PacketV7PayloadVAO0H5ErrorOG__GMd, &_s14XPCDistributed14RequestManagerC0B0C5StateOyAA4ID64Vs6ResultOyAA9XPCSystemC9TransportC6PacketV7PayloadVAO0H5ErrorOG__GMR);
    goto LABEL_10;
  }

  v21 = *(*v3 + 112);
  swift_beginAccess();
  outlined init with copy of XPCPeerRequirement?(v3 + v21, v13, &_s14XPCDistributed14RequestManagerC0B0C5StateOyAA4ID64Vs6ResultOyAA9XPCSystemC9TransportC6PacketV7PayloadVAO0H5ErrorOG__GMd, &_s14XPCDistributed14RequestManagerC0B0C5StateOyAA4ID64Vs6ResultOyAA9XPCSystemC9TransportC6PacketV7PayloadVAO0H5ErrorOG__GMR);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      outlined init with take of Result<XPCSystem.Transport.Packet.Payload, XPCSystem.Transport.TransportError>?(v13, v7, &_ss6ResultOy14XPCDistributed9XPCSystemC9TransportC6PacketV7PayloadVAG0D5ErrorOGSgMd, &_ss6ResultOy14XPCDistributed9XPCSystemC9TransportC6PacketV7PayloadVAG0D5ErrorOGSgMR);
      v26(v7);

      outlined destroy of Result<XPCSystem.Transport.Packet.Payload, XPCSystem.Transport.TransportError>(v7, &_ss6ResultOy14XPCDistributed9XPCSystemC9TransportC6PacketV7PayloadVAG0D5ErrorOGSgMd, &_ss6ResultOy14XPCDistributed9XPCSystemC9TransportC6PacketV7PayloadVAG0D5ErrorOGSgMR);
      swift_storeEnumTagMultiPayload();
      swift_beginAccess();
      outlined assign with take of RequestManager<ID64, Result<XPCSystem.Transport.Packet.Payload, XPCSystem.Transport.TransportError>>.Request.State(v10, v3 + v21);
      swift_endAccess();
      return 0;
    }

    goto LABEL_9;
  }

  if (EnumCaseMultiPayload == 2)
  {
    *v10 = v26;
    v10[1] = a2;
    v23 = 1;
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    outlined assign with take of RequestManager<ID64, Result<XPCSystem.Transport.Packet.Payload, XPCSystem.Transport.TransportError>>.Request.State(v10, v3 + v21);
    swift_endAccess();
    return v23;
  }

LABEL_10:
  v27 = 0;
  v28 = 0xE000000000000000;
  _StringGuts.grow(_:)(25);

  v27 = 0xD000000000000017;
  v28 = 0x80000002751B8C50;
  v29 = 0;
  v30 = 0xE000000000000000;
  _StringGuts.grow(_:)(45);
  MEMORY[0x277C6B720](0xD00000000000002BLL, 0x80000002751B90C0);
  outlined init with copy of XPCPeerRequirement?(v3 + v21, v10, &_s14XPCDistributed14RequestManagerC0B0C5StateOyAA4ID64Vs6ResultOyAA9XPCSystemC9TransportC6PacketV7PayloadVAO0H5ErrorOG__GMd, &_s14XPCDistributed14RequestManagerC0B0C5StateOyAA4ID64Vs6ResultOyAA9XPCSystemC9TransportC6PacketV7PayloadVAO0H5ErrorOG__GMR);
  _print_unlocked<A, B>(_:_:)();
  outlined destroy of Result<XPCSystem.Transport.Packet.Payload, XPCSystem.Transport.TransportError>(v10, &_s14XPCDistributed14RequestManagerC0B0C5StateOyAA4ID64Vs6ResultOyAA9XPCSystemC9TransportC6PacketV7PayloadVAO0H5ErrorOG__GMd, &_s14XPCDistributed14RequestManagerC0B0C5StateOyAA4ID64Vs6ResultOyAA9XPCSystemC9TransportC6PacketV7PayloadVAO0H5ErrorOG__GMR);
  MEMORY[0x277C6B720](v29, v30);

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t specialized RequestManager.Request._cancel(with:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14XPCDistributed14RequestManagerC0B0C5StateOyAA4ID64Vs6ResultOyAA9XPCSystemC9TransportC6PacketV7PayloadVAO0H5ErrorOG__GMd, &_s14XPCDistributed14RequestManagerC0B0C5StateOyAA4ID64Vs6ResultOyAA9XPCSystemC9TransportC6PacketV7PayloadVAO0H5ErrorOG__GMR);
  MEMORY[0x28223BE20](v4);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = (&v19 - v8);
  v10 = type metadata accessor for DispatchPredicate();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = (&v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *(v2 + *(*v2 + 120));
  *v14 = v15;
  (*(v11 + 104))(v14, *MEMORY[0x277D85200], v10, v12);
  v16 = v15;
  LOBYTE(v15) = _dispatchPreconditionTest(_:)();
  (*(v11 + 8))(v14, v10);
  if ((v15 & 1) == 0)
  {
    __break(1u);
LABEL_9:
    outlined destroy of Result<XPCSystem.Transport.Packet.Payload, XPCSystem.Transport.TransportError>(v9, &_s14XPCDistributed14RequestManagerC0B0C5StateOyAA4ID64Vs6ResultOyAA9XPCSystemC9TransportC6PacketV7PayloadVAO0H5ErrorOG__GMd, &_s14XPCDistributed14RequestManagerC0B0C5StateOyAA4ID64Vs6ResultOyAA9XPCSystemC9TransportC6PacketV7PayloadVAO0H5ErrorOG__GMR);
    goto LABEL_10;
  }

  v10 = *(*v2 + 112);
  swift_beginAccess();
  outlined init with copy of XPCPeerRequirement?(v2 + v10, v9, &_s14XPCDistributed14RequestManagerC0B0C5StateOyAA4ID64Vs6ResultOyAA9XPCSystemC9TransportC6PacketV7PayloadVAO0H5ErrorOG__GMd, &_s14XPCDistributed14RequestManagerC0B0C5StateOyAA4ID64Vs6ResultOyAA9XPCSystemC9TransportC6PacketV7PayloadVAO0H5ErrorOG__GMR);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload == 1)
    {
      (*v9)(a1);

LABEL_7:
      swift_storeEnumTagMultiPayload();
      swift_beginAccess();
      outlined assign with take of RequestManager<ID64, Result<XPCSystem.Transport.Packet.Payload, XPCSystem.Transport.TransportError>>.Request.State(v6, v2 + v10);
      return swift_endAccess();
    }

    goto LABEL_9;
  }

  if (EnumCaseMultiPayload == 2)
  {
    outlined init with copy of XPCPeerRequirement?(a1, v6, &_ss6ResultOy14XPCDistributed9XPCSystemC9TransportC6PacketV7PayloadVAG0D5ErrorOGSgMd, &_ss6ResultOy14XPCDistributed9XPCSystemC9TransportC6PacketV7PayloadVAG0D5ErrorOGSgMR);
    goto LABEL_7;
  }

LABEL_10:
  v19 = 0;
  v20 = 0xE000000000000000;
  _StringGuts.grow(_:)(25);

  v19 = 0xD000000000000017;
  v20 = 0x80000002751B8C50;
  v21 = 0;
  v22 = 0xE000000000000000;
  _StringGuts.grow(_:)(30);
  MEMORY[0x277C6B720](0xD00000000000001CLL, 0x80000002751B9070);
  outlined init with copy of XPCPeerRequirement?(v2 + v10, v6, &_s14XPCDistributed14RequestManagerC0B0C5StateOyAA4ID64Vs6ResultOyAA9XPCSystemC9TransportC6PacketV7PayloadVAO0H5ErrorOG__GMd, &_s14XPCDistributed14RequestManagerC0B0C5StateOyAA4ID64Vs6ResultOyAA9XPCSystemC9TransportC6PacketV7PayloadVAO0H5ErrorOG__GMR);
  _print_unlocked<A, B>(_:_:)();
  outlined destroy of Result<XPCSystem.Transport.Packet.Payload, XPCSystem.Transport.TransportError>(v6, &_s14XPCDistributed14RequestManagerC0B0C5StateOyAA4ID64Vs6ResultOyAA9XPCSystemC9TransportC6PacketV7PayloadVAO0H5ErrorOG__GMd, &_s14XPCDistributed14RequestManagerC0B0C5StateOyAA4ID64Vs6ResultOyAA9XPCSystemC9TransportC6PacketV7PayloadVAO0H5ErrorOG__GMR);
  MEMORY[0x277C6B720](v21, v22);

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t _s14XPCDistributed14RequestManagerC04withB02id12replyHandler7performqd__x_qd__q_Sgqd_0_YKcnyAC0B0Cyxq__GXEtYaqd_0_YKs5ErrorRd_0_r0_lFs6ResultOyqd__qd_0_GyYaXEfU_yScCyAOs5NeverOGXEfU_SbyXEfU_yAHcfU_AA4ID64V_ANyAA9XPCSystemC9TransportC6PacketV7PayloadVAX0nI0OGA3_SgAQTg5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOyABy14XPCDistributed9XPCSystemC9TransportC6PacketV7PayloadVAG0D5ErrorOGSgs5NeverOGMd, &_ss6ResultOyABy14XPCDistributed9XPCSystemC9TransportC6PacketV7PayloadVAG0D5ErrorOGSgs5NeverOGMR);
  MEMORY[0x28223BE20](v7);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v21 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v21 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v21 - v17;
  swift_beginAccess();
  specialized Dictionary._Variant.removeValue(forKey:)(a3);
  swift_endAccess();

  swift_beginAccess();
  v19 = *(a4 + 16);

  v19(a1);

  swift_storeEnumTagMultiPayload();
  outlined init with take of Result<XPCSystem.Transport.Packet.Payload, XPCSystem.Transport.TransportError>?(v12, v15, &_ss6ResultOyABy14XPCDistributed9XPCSystemC9TransportC6PacketV7PayloadVAG0D5ErrorOGSgs5NeverOGMd, &_ss6ResultOyABy14XPCDistributed9XPCSystemC9TransportC6PacketV7PayloadVAG0D5ErrorOGSgs5NeverOGMR);
  outlined init with take of Result<XPCSystem.Transport.Packet.Payload, XPCSystem.Transport.TransportError>?(v15, v18, &_ss6ResultOyABy14XPCDistributed9XPCSystemC9TransportC6PacketV7PayloadVAG0D5ErrorOGSgs5NeverOGMd, &_ss6ResultOyABy14XPCDistributed9XPCSystemC9TransportC6PacketV7PayloadVAG0D5ErrorOGSgs5NeverOGMR);
  outlined init with copy of XPCPeerRequirement?(v18, v9, &_ss6ResultOyABy14XPCDistributed9XPCSystemC9TransportC6PacketV7PayloadVAG0D5ErrorOGSgs5NeverOGMd, &_ss6ResultOyABy14XPCDistributed9XPCSystemC9TransportC6PacketV7PayloadVAG0D5ErrorOGSgs5NeverOGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCys6ResultOyABy14XPCDistributed9XPCSystemC9TransportC6PacketV7PayloadVAG0D5ErrorOGSgs5NeverOGAQGMd, &_sScCys6ResultOyABy14XPCDistributed9XPCSystemC9TransportC6PacketV7PayloadVAG0D5ErrorOGSgs5NeverOGAQGMR);
  CheckedContinuation.resume(returning:)();
  return outlined destroy of Result<XPCSystem.Transport.Packet.Payload, XPCSystem.Transport.TransportError>(v18, &_ss6ResultOyABy14XPCDistributed9XPCSystemC9TransportC6PacketV7PayloadVAG0D5ErrorOGSgs5NeverOGMd, &_ss6ResultOyABy14XPCDistributed9XPCSystemC9TransportC6PacketV7PayloadVAG0D5ErrorOGSgs5NeverOGMR);
}

uint64_t _s14XPCDistributed14RequestManagerC04withB02id12replyHandler7performqd__x_qd__q_Sgqd_0_YKcnyAC0B0Cyxq__GXEtYaqd_0_YKs5ErrorRd_0_r0_lFyyYbXEfU0_AA4ID64V_s6ResultOyAA9XPCSystemC9TransportC6PacketV7PayloadVAT0mI0OGA_Sgs5NeverOTg5(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v16 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchQoS();
  v7 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 16);
  aBlock[4] = _s14XPCDistributed14RequestManagerC04withB02id12replyHandler7performqd__x_qd__q_Sgqd_0_YKcnyAC0B0Cyxq__GXEtYaqd_0_YKs5ErrorRd_0_r0_lFyyYbXEfU0_yyYbcfU_AA4ID64V_s6ResultOyAA9XPCSystemC9TransportC6PacketV7PayloadVAT0mI0OGA_Sgs5NeverOTg5TA;
  aBlock[5] = a2;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_1;
  v11 = _Block_copy(aBlock);
  v12 = v10;

  static DispatchQoS.unspecified.getter();
  v17 = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x277C6B8E0](0, v9, v6, v11);
  _Block_release(v11);

  (*(v16 + 8))(v6, v4);
  (*(v7 + 8))(v9, v15);
}

uint64_t _s14XPCDistributed14RequestManagerC04withB02id12replyHandler7performqd__x_qd__q_Sgqd_0_YKcnyAC0B0Cyxq__GXEtYaqd_0_YKs5ErrorRd_0_r0_lFyyYbXEfU0_yyYbcfU_AA4ID64V_s6ResultOyAA9XPCSystemC9TransportC6PacketV7PayloadVAT0mI0OGA_Sgs5NeverOTg5()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy14XPCDistributed9XPCSystemC9TransportC6PacketV7PayloadVAG0D5ErrorOGSgMd, &_ss6ResultOy14XPCDistributed9XPCSystemC9TransportC6PacketV7PayloadVAG0D5ErrorOGSgMR);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v5 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy14XPCDistributed9XPCSystemC9TransportC6PacketV7PayloadVAG0D5ErrorOGMd, &_ss6ResultOy14XPCDistributed9XPCSystemC9TransportC6PacketV7PayloadVAG0D5ErrorOGMR);
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  specialized RequestManager.Request._cancel(with:)(v2);
  return outlined destroy of Result<XPCSystem.Transport.Packet.Payload, XPCSystem.Transport.TransportError>(v2, &_ss6ResultOy14XPCDistributed9XPCSystemC9TransportC6PacketV7PayloadVAG0D5ErrorOGSgMd, &_ss6ResultOy14XPCDistributed9XPCSystemC9TransportC6PacketV7PayloadVAG0D5ErrorOGSgMR);
}

uint64_t specialized closure #1 in RequestManager.reply(to:with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy14XPCDistributed9XPCSystemC9TransportC6PacketV7PayloadVAG0D5ErrorOGSgMd, &_ss6ResultOy14XPCDistributed9XPCSystemC9TransportC6PacketV7PayloadVAG0D5ErrorOGSgMR);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v12 - v7;
  swift_beginAccess();
  if (!*(*(a1 + 24) + 16))
  {
    return swift_endAccess();
  }

  specialized __RawDictionaryStorage.find<A>(_:)(a2);
  if ((v9 & 1) == 0)
  {
    return swift_endAccess();
  }

  swift_endAccess();
  outlined init with copy of XPCPeerRequirement?(a3, v8, &_ss6ResultOy14XPCDistributed9XPCSystemC9TransportC6PacketV7PayloadVAG0D5ErrorOGMd, &_ss6ResultOy14XPCDistributed9XPCSystemC9TransportC6PacketV7PayloadVAG0D5ErrorOGMR);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy14XPCDistributed9XPCSystemC9TransportC6PacketV7PayloadVAG0D5ErrorOGMd, &_ss6ResultOy14XPCDistributed9XPCSystemC9TransportC6PacketV7PayloadVAG0D5ErrorOGMR);
  (*(*(v10 - 8) + 56))(v8, 0, 1, v10);

  specialized RequestManager.Request.reply(with:)(v8);

  return outlined destroy of Result<XPCSystem.Transport.Packet.Payload, XPCSystem.Transport.TransportError>(v8, &_ss6ResultOy14XPCDistributed9XPCSystemC9TransportC6PacketV7PayloadVAG0D5ErrorOGSgMd, &_ss6ResultOy14XPCDistributed9XPCSystemC9TransportC6PacketV7PayloadVAG0D5ErrorOGSgMR);
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

uint64_t _s14XPCDistributed14RequestManagerC04withB02id12replyHandler7performqd__x_qd__q_Sgqd_0_YKcnyAC0B0Cyxq__GXEtYaqd_0_YKs5ErrorRd_0_r0_lFs6ResultOyqd__qd_0_GyYaXEfU_AA4ID64V_ANyAA9XPCSystemC9TransportC6PacketV7PayloadVAU0mI0OGA0_Sgs5NeverOTG5(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a1;
  v7[4] = a2;
  v7[2] = *a3;
  return MEMORY[0x2822009F8](_s14XPCDistributed14RequestManagerC04withB02id12replyHandler7performqd__x_qd__q_Sgqd_0_YKcnyAC0B0Cyxq__GXEtYaqd_0_YKs5ErrorRd_0_r0_lFs6ResultOyqd__qd_0_GyYaXEfU_AA4ID64V_ANyAA9XPCSystemC9TransportC6PacketV7PayloadVAU0mI0OGA0_Sgs5NeverOTG5TY0_, 0, 0);
}

uint64_t _s14XPCDistributed14RequestManagerC04withB02id12replyHandler7performqd__x_qd__q_Sgqd_0_YKcnyAC0B0Cyxq__GXEtYaqd_0_YKs5ErrorRd_0_r0_lFs6ResultOyqd__qd_0_GyYaXEfU_AA4ID64V_ANyAA9XPCSystemC9TransportC6PacketV7PayloadVAU0mI0OGA0_Sgs5NeverOTG5TY0_()
{
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  *(v0 + 72) = v2;
  v3 = *(v0 + 40);
  v4 = *(v0 + 56);
  *(v2 + 16) = v1;
  *(v2 + 24) = v0 + 16;
  *(v2 + 32) = v3;
  *(v2 + 48) = v4;
  v5 = swift_task_alloc();
  *(v0 + 80) = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOyABy14XPCDistributed9XPCSystemC9TransportC6PacketV7PayloadVAG0D5ErrorOGSgs5NeverOGMd, &_ss6ResultOyABy14XPCDistributed9XPCSystemC9TransportC6PacketV7PayloadVAG0D5ErrorOGSgs5NeverOGMR);
  *v5 = v0;
  v5[1] = _s14XPCDistributed14RequestManagerC04withB02id12replyHandler7performqd__x_qd__q_Sgqd_0_YKcnyAC0B0Cyxq__GXEtYaqd_0_YKs5ErrorRd_0_r0_lFs6ResultOyqd__qd_0_GyYaXEfU_AA4ID64V_ANyAA9XPCSystemC9TransportC6PacketV7PayloadVAU0mI0OGA0_Sgs5NeverOTG5TQ1_;
  v7 = *(v0 + 24);

  return MEMORY[0x2822007B8](v7, 0, 0, 0xD000000000000025, 0x80000002751B9090, _s14XPCDistributed14RequestManagerC04withB02id12replyHandler7performqd__x_qd__q_Sgqd_0_YKcnyAC0B0Cyxq__GXEtYaqd_0_YKs5ErrorRd_0_r0_lFs6ResultOyqd__qd_0_GyYaXEfU_yScCyAOs5NeverOGXEfU_AA4ID64V_ANyAA9XPCSystemC9TransportC6PacketV7PayloadVAX0nI0OGA3_SgAQTG5TA, v2, v6);
}

uint64_t _s14XPCDistributed14RequestManagerC04withB02id12replyHandler7performqd__x_qd__q_Sgqd_0_YKcnyAC0B0Cyxq__GXEtYaqd_0_YKs5ErrorRd_0_r0_lFs6ResultOyqd__qd_0_GyYaXEfU_AA4ID64V_ANyAA9XPCSystemC9TransportC6PacketV7PayloadVAU0mI0OGA0_Sgs5NeverOTG5TQ1_()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void _s14XPCDistributed14RequestManagerC04withB02id12replyHandler7performqd__x_qd__q_Sgqd_0_YKcnyAC0B0Cyxq__GXEtYaqd_0_YKs5ErrorRd_0_r0_lFs6ResultOyqd__qd_0_GyYaXEfU_yScCyAOs5NeverOGXEfU_AA4ID64V_ANyAA9XPCSystemC9TransportC6PacketV7PayloadVAX0nI0OGA3_SgAQTG5(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t))
{
  v8 = *(a2 + 16);
  OS_dispatch_queue.sync<A>(execute:)();

  if (v9 == 1)
  {
    a6(a4);
  }
}

uint64_t _s14XPCDistributed14RequestManagerC04withB02id12replyHandler7performqd__x_qd__q_Sgqd_0_YKcnyAC0B0Cyxq__GXEtYaqd_0_YKs5ErrorRd_0_r0_lFs6ResultOyqd__qd_0_GyYaXEfU_yScCyAOs5NeverOGXEfU_SbyXEfU_AA4ID64V_ANyAA9XPCSystemC9TransportC6PacketV7PayloadVAX0nI0OGA3_SgAQTG5@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _BYTE *a6@<X8>)
{
  v20 = a6;
  v19 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCys6ResultOyABy14XPCDistributed9XPCSystemC9TransportC6PacketV7PayloadVAG0D5ErrorOGSgs5NeverOGAQGMd, &_sScCys6ResultOyABy14XPCDistributed9XPCSystemC9TransportC6PacketV7PayloadVAG0D5ErrorOGSgs5NeverOGAQGMR);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v19 - v12;
  v14 = *a2;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v21 = *(a1 + 24);
  *(a1 + 24) = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a3, v14, isUniquelyReferenced_nonNull_native);
  *(a1 + 24) = v21;
  swift_endAccess();
  (*(v11 + 16))(v13, v19, v10);
  v16 = (*(v11 + 80) + 40) & ~*(v11 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  *(v17 + 24) = v14;
  *(v17 + 32) = a4;
  (*(v11 + 32))(v17 + v16, v13, v10);

  result = specialized RequestManager.Request._setReplyHandler(to:)(_s14XPCDistributed14RequestManagerC04withB02id12replyHandler7performqd__x_qd__q_Sgqd_0_YKcnyAC0B0Cyxq__GXEtYaqd_0_YKs5ErrorRd_0_r0_lFs6ResultOyqd__qd_0_GyYaXEfU_yScCyAOs5NeverOGXEfU_SbyXEfU_yAHcfU_AA4ID64V_ANyAA9XPCSystemC9TransportC6PacketV7PayloadVAX0nI0OGA3_SgAQTG5TA, v17);
  *v20 = result & 1;
  return result;
}

uint64_t specialized XPCSystem.Transport.init(debugName:rawTransport:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v23 = *(v12 - 8);
  v24 = v12;
  MEMORY[0x28223BE20](v12);
  v22 = v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for OS_dispatch_queue_serial.Attributes();
  MEMORY[0x28223BE20](v14);
  v15 = type metadata accessor for DispatchQoS();
  MEMORY[0x28223BE20](v15 - 8);
  v26[3] = a5;
  v26[4] = a6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v26);
  (*(*(a5 - 8) + 32))(boxed_opaque_existential_1, a3, a5);
  *(a4 + 24) = 0;
  swift_unknownObjectWeakInit();
  outlined init with copy of Decoder(v26, a4 + 64);
  *(a4 + 32) = 0;
  *(a4 + 40) = a1;
  *(a4 + 48) = a2;
  v21[1] = type metadata accessor for OS_dispatch_queue_serial();
  strcpy(v25, "XPCTransport-");
  HIWORD(v25[1]) = -4864;

  MEMORY[0x277C6B720](a1, a2);

  static DispatchQoS.unspecified.getter();
  v25[0] = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type OS_dispatch_queue_serial.Attributes and conformance OS_dispatch_queue_serial.Attributes, MEMORY[0x277D852D8], MEMORY[0x277D852E0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo24OS_dispatch_queue_serialC8DispatchE10AttributesVGMd, &_sSaySo24OS_dispatch_queue_serialC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_queue_serial.Attributes] and conformance [A], &_sSaySo24OS_dispatch_queue_serialC8DispatchE10AttributesVGMd, &_sSaySo24OS_dispatch_queue_serialC8DispatchE10AttributesVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v23 + 104))(v22, *MEMORY[0x277D85268], v24);
  v17 = OS_dispatch_queue_serial.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(a4 + 56) = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14XPCDistributed14RequestManagerCyAA4ID64Vs6ResultOyAA9XPCSystemC9TransportC6PacketV7PayloadVAK0G5ErrorOGGMd, &_s14XPCDistributed14RequestManagerCyAA4ID64Vs6ResultOyAA9XPCSystemC9TransportC6PacketV7PayloadVAK0G5ErrorOGGMR);
  v18 = swift_allocObject();
  *(v18 + 16) = v17;
  *(v18 + 24) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC14XPCDistributed4ID64V_AC14RequestManagerC0E0CyAEs6ResultOyAC9XPCSystemC9TransportC6PacketV7PayloadVAO0I5ErrorOG_GTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  *(a4 + 104) = v18;
  v19 = v17;
  __swift_destroy_boxed_opaque_existential_1Tm(v26);
  *(a4 + 112) = 0;
  return a4;
}

uint64_t specialized XPCSystem.Transport.__allocating_init(debugName:rawTransport:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *(a5 - 8);
  MEMORY[0x28223BE20](a1);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_allocObject();
  (*(v11 + 16))(v13, a3, a5);
  return specialized XPCSystem.Transport.init(debugName:rawTransport:)(a1, a2, v13, v14, a5, a6);
}

uint64_t outlined init with copy of XPCSystem.Transport.Packet.Payload(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for XPCSystem.Transport.Packet.Payload(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for XPCSystem.Transport.Packet(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type XPCSystem.Transport.TransportError and conformance XPCSystem.Transport.TransportError()
{
  result = lazy protocol witness table cache variable for type XPCSystem.Transport.TransportError and conformance XPCSystem.Transport.TransportError;
  if (!lazy protocol witness table cache variable for type XPCSystem.Transport.TransportError and conformance XPCSystem.Transport.TransportError)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for XPCSystem.Transport.TransportError, &type metadata for XPCSystem.Transport.TransportError, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type XPCSystem.Transport.TransportError and conformance XPCSystem.Transport.TransportError);
  }

  return result;
}

uint64_t outlined destroy of XPCSystem.Transport.Packet(uint64_t a1)
{
  v2 = type metadata accessor for XPCSystem.Transport.Packet(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t partial apply for specialized closure #1 in Sequence<>.contains(_:)(uint64_t *a1)
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

uint64_t specialized XPCSystem.Transport.Packet.Header.init(from:)(uint64_t a1)
{
  lazy protocol witness table accessor for type UInt8 and conformance UInt8();
  XPCDictionary.subscript.getter();
  if (v9 == 1)
  {
    v2 = type metadata accessor for XPCDictionary();
    (*(*(v2 - 8) + 8))(a1, v2);
    return 0;
  }

  if (v8)
  {
    lazy protocol witness table accessor for type UInt64 and conformance UInt64();
    XPCDictionary.subscript.getter();
    v3 = type metadata accessor for XPCDictionary();
    (*(*(v3 - 8) + 8))(a1, v3);
    if (v7)
    {
      return 0;
    }

    result = v6;
    if (v8 != 1 && v8 != 2)
    {
      return 0;
    }
  }

  else
  {
    v5 = type metadata accessor for XPCDictionary();
    (*(*(v5 - 8) + 8))(a1, v5);
    return 0;
  }

  return result;
}

uint64_t outlined init with take of XPCSystem.Transport.Packet.Payload(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t getEnumTagSinglePayload for XPCSystem.Transport.TransportError(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for XPCSystem.Transport.TransportError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t getEnumTag for XPCSystem.Transport.TransportError(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *destructiveInjectEnumTag for XPCSystem.Transport.TransportError(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t type metadata completion function for XPCSystem.Transport.Packet(uint64_t a1)
{
  result = type metadata accessor for XPCSystem.Transport.Packet.Payload(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t type metadata completion function for XPCSystem.Transport.Packet.Payload(uint64_t a1)
{
  result = type metadata accessor for XPCDictionary();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t _s14XPCDistributed9XPCSystemC9TransportC03RawC8ProtocolP4send6packetyAE6PacketV_tAE0dC5ErrorOYKFTj(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = (*(a3 + 16))(a1, a2);
  if (!v3)
  {
    return v5;
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for XPCSystem.Transport.Packet.Header(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for XPCSystem.Transport.Packet.Header(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTag for XPCSystem.Transport.Packet.Header(uint64_t a1)
{
  if (*(a1 + 8) <= 1u)
  {
    return *(a1 + 8);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t destructiveInjectEnumTag for XPCSystem.Transport.Packet.Header(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

unint64_t lazy protocol witness table accessor for type UInt8 and conformance UInt8()
{
  result = lazy protocol witness table cache variable for type UInt8 and conformance UInt8;
  if (!lazy protocol witness table cache variable for type UInt8 and conformance UInt8)
  {
    result = swift_getWitnessTable(MEMORY[0x277D84B98], MEMORY[0x277D84B78], v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type UInt8 and conformance UInt8);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type UInt64 and conformance UInt64()
{
  result = lazy protocol witness table cache variable for type UInt64 and conformance UInt64;
  if (!lazy protocol witness table cache variable for type UInt64 and conformance UInt64)
  {
    result = swift_getWitnessTable(MEMORY[0x277D84D70], MEMORY[0x277D84D38], v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type UInt64 and conformance UInt64);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UInt64 and conformance UInt64;
  if (!lazy protocol witness table cache variable for type UInt64 and conformance UInt64)
  {
    result = swift_getWitnessTable(MEMORY[0x277D84D60], MEMORY[0x277D84D38], v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type UInt64 and conformance UInt64);
  }

  return result;
}

uint64_t _s14XPCDistributed14RequestManagerC04withB02id12replyHandler7performqd__x_qd__q_Sgqd_0_YKcnyAC0B0Cyxq__GXEtYaqd_0_YKs5ErrorRd_0_r0_lFs6ResultOyqd__qd_0_GyYaXEfU_AA4ID64V_ANyAA9XPCSystemC9TransportC6PacketV7PayloadVAU0mI0OGA0_Sgs5NeverOTG5TA(uint64_t a1)
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
  v10[1] = partial apply for implicit closure #1 in XPCSystem.Session.LocalInterface.activateThenWithRemoteInterface<A>(perform:);

  return _s14XPCDistributed14RequestManagerC04withB02id12replyHandler7performqd__x_qd__q_Sgqd_0_YKcnyAC0B0Cyxq__GXEtYaqd_0_YKs5ErrorRd_0_r0_lFs6ResultOyqd__qd_0_GyYaXEfU_AA4ID64V_ANyAA9XPCSystemC9TransportC6PacketV7PayloadVAU0mI0OGA0_Sgs5NeverOTG5(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t outlined assign with take of RequestManager<ID64, Result<XPCSystem.Transport.Packet.Payload, XPCSystem.Transport.TransportError>>.Request.State(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14XPCDistributed14RequestManagerC0B0C5StateOyAA4ID64Vs6ResultOyAA9XPCSystemC9TransportC6PacketV7PayloadVAO0H5ErrorOG__GMd, &_s14XPCDistributed14RequestManagerC0B0C5StateOyAA4ID64Vs6ResultOyAA9XPCSystemC9TransportC6PacketV7PayloadVAO0H5ErrorOG__GMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t _s14XPCDistributed14RequestManagerC04withB02id12replyHandler7performqd__x_qd__q_Sgqd_0_YKcnyAC0B0Cyxq__GXEtYaqd_0_YKs5ErrorRd_0_r0_lFs6ResultOyqd__qd_0_GyYaXEfU_yScCyAOs5NeverOGXEfU_SbyXEfU_yAHcfU_AA4ID64V_ANyAA9XPCSystemC9TransportC6PacketV7PayloadVAX0nI0OGA3_SgAQTG5TA(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCys6ResultOyABy14XPCDistributed9XPCSystemC9TransportC6PacketV7PayloadVAG0D5ErrorOGSgs5NeverOGAQGMd, &_sScCys6ResultOyABy14XPCDistributed9XPCSystemC9TransportC6PacketV7PayloadVAG0D5ErrorOGSgs5NeverOGAQGMR);
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[2];

  return _s14XPCDistributed14RequestManagerC04withB02id12replyHandler7performqd__x_qd__q_Sgqd_0_YKcnyAC0B0Cyxq__GXEtYaqd_0_YKs5ErrorRd_0_r0_lFs6ResultOyqd__qd_0_GyYaXEfU_yScCyAOs5NeverOGXEfU_SbyXEfU_yAHcfU_AA4ID64V_ANyAA9XPCSystemC9TransportC6PacketV7PayloadVAX0nI0OGA3_SgAQTg5(a1, v5, v3, v4);
}

unint64_t lazy protocol witness table accessor for type XPCSystem.Transport.RawTransportError and conformance XPCSystem.Transport.RawTransportError()
{
  result = lazy protocol witness table cache variable for type XPCSystem.Transport.RawTransportError and conformance XPCSystem.Transport.RawTransportError;
  if (!lazy protocol witness table cache variable for type XPCSystem.Transport.RawTransportError and conformance XPCSystem.Transport.RawTransportError)
  {
    result = swift_getWitnessTable("QU\b\rtg", &type metadata for XPCSystem.Transport.RawTransportError, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type XPCSystem.Transport.RawTransportError and conformance XPCSystem.Transport.RawTransportError);
  }

  return result;
}

uint64_t outlined destroy of Result<XPCSystem.Transport.Packet.Payload, XPCSystem.Transport.TransportError>(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t outlined init with take of Result<XPCSystem.Transport.Packet.Payload, XPCSystem.Transport.TransportError>?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t partial apply for specialized closure #1 in RequestManager.reply(to:with:)()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy14XPCDistributed9XPCSystemC9TransportC6PacketV7PayloadVAG0D5ErrorOGMd, &_ss6ResultOy14XPCDistributed9XPCSystemC9TransportC6PacketV7PayloadVAG0D5ErrorOGMR) - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80));

  return specialized closure #1 in RequestManager.reply(to:with:)(v2, v3, v4);
}

unint64_t type metadata accessor for OS_dispatch_queue_serial()
{
  result = lazy cache variable for type metadata for OS_dispatch_queue_serial;
  if (!lazy cache variable for type metadata for OS_dispatch_queue_serial)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for OS_dispatch_queue_serial);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    v5 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable(MEMORY[0x277D83970], v5);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t XPCSystem.Session.RemoteInvocationReplyHandler.onReturn<A>(value:)(uint64_t a1, void (*a2)(char *), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v32 = a4;
  v33 = a3;
  v34 = a2;
  v31 = a1;
  v10 = type metadata accessor for XPCDictionary();
  v30[2] = *(v10 - 8);
  v30[3] = v10;
  MEMORY[0x28223BE20](v10);
  v35 = v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for XPCSystem.Transport.Packet.Payload(0);
  MEMORY[0x28223BE20](v12 - 8);
  v30[1] = v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = v30 - v15;
  v17 = *(a5 - 8);
  MEMORY[0x28223BE20](v18);
  v20 = v30 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for XPCSystem.Session.RemoteInvocationResponse(0, a5, a6, a7);
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = v30 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v25);
  v28 = v30 - v27;
  (*(v17 + 16))(v20, v31, a5, v26);
  XPCSystem.Session.RemoteInvocationResponse.init(result:)(v20, a5, a6, a7, v28);
  (*(v22 + 16))(v24, v28, v21);

  swift_getWitnessTable(protocol conformance descriptor for XPCSystem.Session.RemoteInvocationResponse<A>, v21);
  XPCSystem.Transport.Packet.Payload.init<A>(encoding:userInfo:)(v24, v21, v16);
  v34(v16);
  outlined destroy of XPCSystem.Transport.Packet.Payload(v16);
  return (*(v22 + 8))(v28, v21);
}

uint64_t XPCSystem.Session.RemoteInvocationReplyHandler.reply<A, B>(with:)(uint64_t a1, void (*a2)(char *), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v35 = a7;
  v36 = a8;
  v34 = a4;
  v39 = a2;
  v40 = a3;
  v12 = type metadata accessor for XPCDictionary();
  v37 = *(v12 - 8);
  v38 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for XPCSystem.Transport.Packet.Payload(0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = *(a6 - 8);
  MEMORY[0x28223BE20](v18);
  v20 = &v34 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(a5 - 8);
  MEMORY[0x28223BE20](v22);
  v24 = &v34 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for Result();
  v26 = MEMORY[0x28223BE20](v25);
  v28 = &v34 - v27;
  (*(v29 + 16))(&v34 - v27, a1, v25, v26);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v30 = v39;
    (*(v41 + 32))(v20, v28, a6);
    v42 = 0;
    v43 = 0xE000000000000000;
    _StringGuts.grow(_:)(67);
    MEMORY[0x277C6B720](0x742065746F6D6552, 0xED00002077657268);
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    MEMORY[0x277C6B720](0xD000000000000034, 0x80000002751B92A0);
    v31 = v42;
    v32 = v43;

    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs17CodingUserInfoKeyV_ypTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    v42 = v31;
    v43 = v32;
    v44 = 256;
    XPCDictionary.init()();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s14XPCDistributed9XPCSystemC7SessionC24RemoteInvocationResponseVy__s5NeverOGMd, &_s14XPCDistributed9XPCSystemC7SessionC24RemoteInvocationResponseVy__s5NeverOGMR);
    lazy protocol witness table accessor for type XPCSystem.Session.RemoteInvocationResponse<Never> and conformance XPCSystem.Session.RemoteInvocationResponse<A>();
    XPCDictionary.encode<A>(_:forKey:withUserInfo:)();

    (*(v37 + 32))(v17, v14, v38);
    v30(v17);

    outlined destroy of XPCSystem.Transport.Packet.Payload(v17);
    return (*(v41 + 8))(v20, a6);
  }

  else
  {
    (*(v21 + 32))(v24, v28, a5);
    XPCSystem.Session.RemoteInvocationReplyHandler.onReturn<A>(value:)(v24, v39, v40, v34, a5, v35, v36);
    return (*(v21 + 8))(v24, a5);
  }
}

uint64_t XPCSystem.Session.handleReceivedRequest(_:replyUsing:)(uint64_t a1, void (*a2)(char *), uint64_t a3)
{
  v93 = a2;
  v90 = a1;
  v94 = *v3;
  v95 = a3;
  v4 = type metadata accessor for DispatchPredicate();
  v81 = *(v4 - 8);
  v82 = v4;
  MEMORY[0x28223BE20](v4);
  v80 = (&v79 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v6 - 8);
  v79 = &v79 - v7;
  v8 = type metadata accessor for RemoteCallTarget();
  v84 = *(v8 - 8);
  v85 = v8;
  MEMORY[0x28223BE20](v8);
  v83 = &v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for XPCDictionary();
  v91 = *(v10 - 8);
  v92 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v79 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v87 = &v79 - v14;
  MEMORY[0x28223BE20](v15);
  v89 = &v79 - v16;
  v17 = type metadata accessor for XPCSystem.Transport.Packet.Payload(0);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v79 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v86 = &v79 - v21;
  MEMORY[0x28223BE20](v22);
  v88 = &v79 - v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys17CodingUserInfoKeyV_yptGMd, &_ss23_ContiguousArrayStorageCys17CodingUserInfoKeyV_yptGMR);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17CodingUserInfoKeyV_yptMd, &_ss17CodingUserInfoKeyV_yptMR);
  v25 = *(*(v24 - 8) + 72);
  v26 = (*(*(v24 - 8) + 80) + 32) & ~*(*(v24 - 8) + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_2751B4420;
  v28 = v27 + v26;
  v29 = (v27 + v26 + *(v24 + 48));
  if (one-time initialization token for sessionKey != -1)
  {
    swift_once();
  }

  v30 = type metadata accessor for CodingUserInfoKey();
  v31 = __swift_project_value_buffer(v30, static CodingUserInfoKey.sessionKey);
  (*(*(v30 - 8) + 16))(v28, v31, v30);
  v29[3] = v94;
  *v29 = v3;
  v32 = (v28 + v25 + *(v24 + 48));

  static CodingUserInfoKey.actorSystemKey.getter();
  v33 = v3[2];
  v32[3] = type metadata accessor for XPCSystem(0);
  *v32 = v33;

  v34 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs17CodingUserInfoKeyV_ypTt0g5Tf4g_n(v27);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  if (*(v3 + 104) != 1)
  {

    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs17CodingUserInfoKeyV_ypTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    *&v112 = 0xD00000000000001FLL;
    *(&v112 + 1) = 0x80000002751B9120;
    LOWORD(v113) = 257;
    XPCDictionary.init()();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s14XPCDistributed9XPCSystemC7SessionC24RemoteInvocationResponseVy__s5NeverOGMd, &_s14XPCDistributed9XPCSystemC7SessionC24RemoteInvocationResponseVy__s5NeverOGMR);
    lazy protocol witness table accessor for type XPCSystem.Session.RemoteInvocationResponse<Never> and conformance XPCSystem.Session.RemoteInvocationResponse<A>();
    XPCDictionary.encode<A>(_:forKey:withUserInfo:)();

    (*(v91 + 32))(v19, v12, v92);
    v93(v19);

    return outlined destroy of XPCSystem.Transport.Packet.Payload(v19);
  }

  v35 = v95;

  v94 = v3;
  if (XPCSystem.Session.remoteSatisfiesActorSystemRequirement()())
  {
    lazy protocol witness table accessor for type XPCSystem.Session.RemoteInvocationRequest and conformance XPCSystem.Session.RemoteInvocationRequest();
    XPCDictionary.decode<A>(as:forKey:withUserInfo:)();
    v36 = 0;

    v115[2] = v109;
    v115[3] = v110;
    v116[0] = v111[0];
    *(v116 + 9) = *(v111 + 9);
    v114 = v106;
    v115[0] = v107;
    v115[1] = v108;
    v112 = v104;
    v113 = v105;
    if (one-time initialization token for sessionLog != -1)
    {
      swift_once();
    }

    v39 = type metadata accessor for Logger();
    __swift_project_value_buffer(v39, sessionLog);
    outlined init with copy of XPCSystem.Session.RemoteInvocationRequest(&v112, &v104);
    outlined init with copy of XPCSystem.Session.RemoteInvocationRequest(&v112, &v98);
    outlined init with copy of XPCSystem.Session.RemoteInvocationRequest(&v112, v97);
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v89 = swift_slowAlloc();
      v96 = v89;
      *v42 = 134218498;
      v43 = v104;
      outlined destroy of XPCSystem.Session.RemoteInvocationRequest(&v104);
      *(v42 + 4) = v43;
      *(v42 + 12) = 2080;
      v44 = XPCSystem.SharedActorKey.debugDescription.getter(*(&v98 + 1), v99, SBYTE8(v99));
      v90 = 0;
      v46 = v45;
      outlined destroy of XPCSystem.Session.RemoteInvocationRequest(&v98);
      v47 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v44, v46, &v96);

      *(v42 + 14) = v47;
      *(v42 + 22) = 2080;
      v48 = v97[4];
      v49 = v97[5];

      v50 = v83;
      v51 = MEMORY[0x277C6B300](v48, v49);
      v52 = MEMORY[0x277C6B2E0](v51);
      v54 = v53;
      (*(v84 + 8))(v50, v85);
      outlined destroy of XPCSystem.Session.RemoteInvocationRequest(v97);
      v55 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v52, v54, &v96);
      v36 = v90;

      *(v42 + 24) = v55;
      _os_log_impl(&dword_275171000, v40, v41, "Received request %llu targeting %s for invocation %s", v42, 0x20u);
      v56 = v89;
      swift_arrayDestroy();
      v35 = v95;
      MEMORY[0x277C6C430](v56, -1, -1);
      MEMORY[0x277C6C430](v42, -1, -1);
    }

    else
    {
      outlined destroy of XPCSystem.Session.RemoteInvocationRequest(&v104);

      outlined destroy of XPCSystem.Session.RemoteInvocationRequest(v97);
      outlined destroy of XPCSystem.Session.RemoteInvocationRequest(&v98);
    }

    v57 = v94;
    outlined init with copy of XPCSystem.Session.RemoteInvocationRequest.InvocationContents(v115, &v104);
    if (BYTE8(v109))
    {
      v100 = v106;
      v101 = v107;
      v102 = v108;
      v103 = v109;
      v98 = v104;
      v99 = v105;
      v58 = *(&v105 + 1);
      v59 = swift_allocObject();
      v60 = v59;
      if (v58)
      {
        v61 = v101;
        *(v59 + 48) = v100;
        *(v59 + 64) = v61;
        *(v59 + 80) = v102;
        *(v59 + 96) = v103;
        v62 = v99;
        *(v59 + 16) = v98;
        *(v59 + 32) = v62;
        v63 = type metadata accessor for TaskPriority();
        v64 = v79;
        (*(*(v63 - 8) + 56))(v79, 1, 1, v63);
        outlined init with copy of XPCSystem.Session.RemoteInvocationRequest(&v112, &v104);
        v65 = swift_allocObject();
        v66 = v108;
        *(v65 + 120) = v109;
        v67 = v111[0];
        *(v65 + 136) = v110;
        *(v65 + 152) = v67;
        *(v65 + 161) = *(v111 + 9);
        v68 = v104;
        *(v65 + 56) = v105;
        v69 = v107;
        *(v65 + 72) = v106;
        *(v65 + 88) = v69;
        *(v65 + 104) = v66;
        *(v65 + 16) = 0;
        *(v65 + 24) = 0;
        *(v65 + 32) = v57;
        *(v65 + 40) = v68;
        *(v65 + 184) = v93;
        *(v65 + 192) = v35;
        *(v65 + 200) = v34;
        *(v65 + 208) = v60;

        v70 = _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v64, &async function pointer to partial apply for closure #1 in XPCSystem.Session.handleReceivedRequest(_:replyUsing:), v65);
        v71 = v112;
        v72 = *(v57[4] + 56);
        v73 = v80;
        v74 = v81;
        *v80 = v72;
        v75 = v82;
        (*(v74 + 104))(v73, *MEMORY[0x277D85200], v82);
        v76 = v72;
        LOBYTE(v72) = _dispatchPreconditionTest(_:)();
        (*(v74 + 8))(v73, v75);
        if (v72)
        {
          swift_beginAccess();

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&v98 = v57[19];
          v57[19] = 0x8000000000000000;
          specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v70, v71, isUniquelyReferenced_nonNull_native);
          v57[19] = v98;
          swift_endAccess();

          outlined destroy of XPCSystem.Session.RemoteInvocationRequest(&v112);
        }

        __break(1u);
LABEL_23:

        (*(v91 + 8))(v71, v92);
        result = swift_unexpectedError();
        __break(1u);
        return result;
      }
    }

    else
    {
      outlined destroy of XPCSystem.Session.RemoteInvocationRequest.InvocationContents(&v104);
      v98 = 0u;
      v99 = 0u;
      v100 = 0u;
      v101 = 0u;
      v102 = 0u;
      v103 = 0;
      swift_allocObject();
    }

    outlined destroy of Result<XPCSystem.Transport.Packet.Payload, XPCSystem.Transport.TransportError>(&v98, &_s14XPCDistributed9XPCSystemC17InvocationDecoderVSgMd, &_s14XPCDistributed9XPCSystemC17InvocationDecoderVSgMR);
    swift_deallocUninitializedObject();
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs17CodingUserInfoKeyV_ypTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    *&v104 = 0xD00000000000001FLL;
    *(&v104 + 1) = 0x80000002751B91E0;
    LOWORD(v105) = 257;
    v71 = v87;
    XPCDictionary.init()();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s14XPCDistributed9XPCSystemC7SessionC24RemoteInvocationResponseVy__s5NeverOGMd, &_s14XPCDistributed9XPCSystemC7SessionC24RemoteInvocationResponseVy__s5NeverOGMR);
    lazy protocol witness table accessor for type XPCSystem.Session.RemoteInvocationResponse<Never> and conformance XPCSystem.Session.RemoteInvocationResponse<A>();
    XPCDictionary.encode<A>(_:forKey:withUserInfo:)();
    if (!v36)
    {

      v78 = v86;
      (*(v91 + 32))(v86, v71, v92);
      v93(v78);

      outlined destroy of XPCSystem.Transport.Packet.Payload(v78);
      return outlined destroy of XPCSystem.Session.RemoteInvocationRequest(&v112);
    }

    goto LABEL_23;
  }

  v38._countAndFlagsBits = 0xD000000000000047;
  v38._object = 0x80000002751B9170;
  XPCSystem.Session.cancel(because:)(v38);
}

uint64_t closure #1 in XPCSystem.Session.handleReceivedRequest(_:replyUsing:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[24] = a8;
  v8[25] = v13;
  v8[22] = a6;
  v8[23] = a7;
  v8[20] = a4;
  v8[21] = a5;
  v9 = type metadata accessor for XPCPeerRequirement();
  v8[26] = v9;
  v8[27] = *(v9 - 8);
  v8[28] = swift_task_alloc();
  v10 = type metadata accessor for XPCDictionary();
  v8[29] = v10;
  v8[30] = *(v10 - 8);
  v8[31] = swift_task_alloc();
  v8[32] = swift_task_alloc();
  type metadata accessor for XPCSystem.Transport.Packet.Payload(0);
  v8[33] = swift_task_alloc();
  v8[34] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in XPCSystem.Session.handleReceivedRequest(_:replyUsing:), 0, 0);
}

uint64_t closure #1 in XPCSystem.Session.handleReceivedRequest(_:replyUsing:)()
{
  v1 = *(v0 + 160);
  v2 = *(v1 + 112);
  *(v0 + 280) = v2;
  if (v2)
  {
    *(v0 + 288) = *(v1 + 136);
    *(v0 + 296) = *(v1 + 128);

    v3 = swift_task_alloc();
    *(v0 + 304) = v3;
    *v3 = v0;
    v3[1] = closure #1 in XPCSystem.Session.handleReceivedRequest(_:replyUsing:);

    return MEMORY[0x28210E9A8](v3);
  }

  v4 = *(v0 + 168);
  v5 = *(v4 + 8);
  v6 = *(v4 + 16);
  v7 = *(v4 + 24);
  if (*(v1 + 104) == 1 && (v8 = *(v1 + 48), v9 = swift_task_alloc(), *v9 = v5, *(v9 + 8) = v6, *(v9 + 16) = v7, KeyPath = swift_getKeyPath(), , v11 = *(*v8 + 136), outlined copy of XPCSystem.SharedActorKey(v5, v6, v7), v11(KeyPath), , v12 = *(v0 + 136), (*(v0 + 312) = v12) != 0))
  {
    v13 = *(v0 + 144);
    swift_getObjectType();
    v14 = swift_conformsToProtocol2();
    if (!v14)
    {
      goto LABEL_10;
    }

    v15 = v14;
    v16 = *(*(v0 + 160) + 32);
    v17 = v16[11];
    v18 = v16[12];
    __swift_project_boxed_opaque_existential_1(v16 + 8, v17);
    v19 = *(v18 + 32);

    swift_unknownObjectRetain();
    v19(v17, v18);

    if (*(v0 + 68))
    {
      __break(1u);
      return MEMORY[0x28210E9A8](v3);
    }

    v21 = *(v0 + 216);
    v20 = *(v0 + 224);
    v43 = *(v0 + 208);
    ObjectType = swift_getObjectType();
    (*(v15 + 16))(ObjectType, v15);
    v23 = audit_token_t.satisfies(requirement:)();
    (*(v21 + 8))(v20, v43);
    swift_unknownObjectRelease();
    if (v23)
    {
LABEL_10:
      if (one-time initialization token for $currentSession != -1)
      {
        swift_once();
      }

      v24 = *(v0 + 192);
      v25 = *(v0 + 200) + 16;
      v26 = swift_task_alloc();
      *(v0 + 320) = v26;
      v27 = *(v0 + 160);
      v28 = *(v0 + 176);
      *(v0 + 152) = *(v0 + 160);
      *(v26 + 16) = v12;
      *(v26 + 24) = v13;
      *(v26 + 32) = v27;
      *(v26 + 48) = v25;
      *(v26 + 56) = v28;
      *(v26 + 72) = v24;

      v29 = swift_task_alloc();
      *(v0 + 328) = v29;
      *v29 = v0;
      v29[1] = closure #1 in XPCSystem.Session.handleReceivedRequest(_:replyUsing:);

      return MEMORY[0x282200908]();
    }

    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs17CodingUserInfoKeyV_ypTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    *(v0 + 72) = 0xD000000000000025;
    *(v0 + 80) = 0x80000002751B9230;
    *(v0 + 88) = 257;
    XPCDictionary.init()();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s14XPCDistributed9XPCSystemC7SessionC24RemoteInvocationResponseVy__s5NeverOGMd, &_s14XPCDistributed9XPCSystemC7SessionC24RemoteInvocationResponseVy__s5NeverOGMR);
    lazy protocol witness table accessor for type XPCSystem.Session.RemoteInvocationResponse<Never> and conformance XPCSystem.Session.RemoteInvocationResponse<A>();
    XPCDictionary.encode<A>(_:forKey:withUserInfo:)();
    v32 = *(v0 + 264);
    v39 = *(v0 + 240);
    v38 = *(v0 + 248);
    v40 = *(v0 + 232);
    v41 = *(v0 + 176);

    (*(v39 + 32))(v32, v38, v40);
    v41(v32);
    swift_unknownObjectRelease();
  }

  else
  {
    _StringGuts.grow(_:)(34);
    *(v0 + 120) = 0;
    *(v0 + 128) = 0xE000000000000000;
    MEMORY[0x277C6B720](0xD000000000000020, 0x80000002751B9200);
    *(v0 + 96) = v5;
    *(v0 + 104) = v6;
    *(v0 + 112) = v7;
    _print_unlocked<A, B>(_:_:)();
    v31 = *(v0 + 120);
    v30 = *(v0 + 128);

    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs17CodingUserInfoKeyV_ypTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    *(v0 + 16) = v31;
    *(v0 + 24) = v30;
    *(v0 + 32) = 257;
    XPCDictionary.init()();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s14XPCDistributed9XPCSystemC7SessionC24RemoteInvocationResponseVy__s5NeverOGMd, &_s14XPCDistributed9XPCSystemC7SessionC24RemoteInvocationResponseVy__s5NeverOGMR);
    lazy protocol witness table accessor for type XPCSystem.Session.RemoteInvocationResponse<Never> and conformance XPCSystem.Session.RemoteInvocationResponse<A>();
    XPCDictionary.encode<A>(_:forKey:withUserInfo:)();
    v32 = *(v0 + 272);
    v33 = *(v0 + 256);
    v34 = *(v0 + 232);
    v35 = *(v0 + 240);
    v36 = *(v0 + 176);

    (*(v35 + 32))(v32, v33, v34);
    v36(v32);
  }

  outlined destroy of XPCSystem.Transport.Packet.Payload(v32);

  v37 = *(v0 + 8);

  return v37();
}

{

  return MEMORY[0x2822009F8](closure #1 in XPCSystem.Session.handleReceivedRequest(_:replyUsing:), 0, 0);
}

{

  v1 = *(v0 + 160);
  v2 = *(v0 + 168);
  v3 = *(v2 + 8);
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  if (*(v1 + 104) == 1 && (v6 = *(v1 + 48), v7 = swift_task_alloc(), *v7 = v3, *(v7 + 8) = v4, *(v7 + 16) = v5, KeyPath = swift_getKeyPath(), , v9 = *(*v6 + 136), outlined copy of XPCSystem.SharedActorKey(v3, v4, v5), v9(KeyPath), , v10 = *(v0 + 136), (*(v0 + 312) = v10) != 0))
  {
    v11 = *(v0 + 144);
    swift_getObjectType();
    v12 = swift_conformsToProtocol2();
    if (!v12)
    {
      goto LABEL_6;
    }

    v13 = v12;
    v14 = *(*(v0 + 160) + 32);
    v15 = v14[11];
    v16 = v14[12];
    __swift_project_boxed_opaque_existential_1(v14 + 8, v15);
    v17 = *(v16 + 32);

    swift_unknownObjectRetain();
    v17(v15, v16);

    if (*(v0 + 68))
    {
      __break(1u);
      return MEMORY[0x282200908]();
    }

    v19 = *(v0 + 216);
    v18 = *(v0 + 224);
    v41 = *(v0 + 208);
    ObjectType = swift_getObjectType();
    (*(v13 + 16))(ObjectType, v13);
    v21 = audit_token_t.satisfies(requirement:)();
    (*(v19 + 8))(v18, v41);
    swift_unknownObjectRelease();
    if (v21)
    {
LABEL_6:
      if (one-time initialization token for $currentSession != -1)
      {
        swift_once();
      }

      v22 = *(v0 + 192);
      v23 = *(v0 + 200) + 16;
      v24 = swift_task_alloc();
      *(v0 + 320) = v24;
      v25 = *(v0 + 160);
      v26 = *(v0 + 176);
      *(v0 + 152) = *(v0 + 160);
      *(v24 + 16) = v10;
      *(v24 + 24) = v11;
      *(v24 + 32) = v25;
      *(v24 + 48) = v23;
      *(v24 + 56) = v26;
      *(v24 + 72) = v22;

      v27 = swift_task_alloc();
      *(v0 + 328) = v27;
      *v27 = v0;
      v27[1] = closure #1 in XPCSystem.Session.handleReceivedRequest(_:replyUsing:);

      return MEMORY[0x282200908]();
    }

    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs17CodingUserInfoKeyV_ypTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    *(v0 + 72) = 0xD000000000000025;
    *(v0 + 80) = 0x80000002751B9230;
    *(v0 + 88) = 257;
    XPCDictionary.init()();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s14XPCDistributed9XPCSystemC7SessionC24RemoteInvocationResponseVy__s5NeverOGMd, &_s14XPCDistributed9XPCSystemC7SessionC24RemoteInvocationResponseVy__s5NeverOGMR);
    lazy protocol witness table accessor for type XPCSystem.Session.RemoteInvocationResponse<Never> and conformance XPCSystem.Session.RemoteInvocationResponse<A>();
    XPCDictionary.encode<A>(_:forKey:withUserInfo:)();
    v30 = *(v0 + 264);
    v38 = *(v0 + 240);
    v37 = *(v0 + 248);
    v39 = *(v0 + 232);
    v40 = *(v0 + 176);

    (*(v38 + 32))(v30, v37, v39);
    v40(v30);
    swift_unknownObjectRelease();
  }

  else
  {
    _StringGuts.grow(_:)(34);
    *(v0 + 120) = 0;
    *(v0 + 128) = 0xE000000000000000;
    MEMORY[0x277C6B720](0xD000000000000020, 0x80000002751B9200);
    *(v0 + 96) = v3;
    *(v0 + 104) = v4;
    *(v0 + 112) = v5;
    _print_unlocked<A, B>(_:_:)();
    v29 = *(v0 + 120);
    v28 = *(v0 + 128);

    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs17CodingUserInfoKeyV_ypTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    *(v0 + 16) = v29;
    *(v0 + 24) = v28;
    *(v0 + 32) = 257;
    XPCDictionary.init()();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s14XPCDistributed9XPCSystemC7SessionC24RemoteInvocationResponseVy__s5NeverOGMd, &_s14XPCDistributed9XPCSystemC7SessionC24RemoteInvocationResponseVy__s5NeverOGMR);
    lazy protocol witness table accessor for type XPCSystem.Session.RemoteInvocationResponse<Never> and conformance XPCSystem.Session.RemoteInvocationResponse<A>();
    XPCDictionary.encode<A>(_:forKey:withUserInfo:)();
    v30 = *(v0 + 272);
    v31 = *(v0 + 256);
    v32 = *(v0 + 232);
    v33 = *(v0 + 240);
    v34 = *(v0 + 176);

    (*(v33 + 32))(v30, v31, v32);
    v34(v30);
  }

  outlined destroy of XPCSystem.Transport.Packet.Payload(v30);

  v35 = *(v0 + 8);

  return v35();
}

{
  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

void closure #1 in XPCSystem.Session.handleReceivedRequest(_:replyUsing:)()
{

  if (v0)
  {
  }

  else
  {

    MEMORY[0x2822009F8](closure #1 in XPCSystem.Session.handleReceivedRequest(_:replyUsing:), 0, 0);
  }
}

uint64_t closure #1 in closure #1 in XPCSystem.Session.handleReceivedRequest(_:replyUsing:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[34] = a8;
  v8[35] = v13;
  v8[32] = a6;
  v8[33] = a7;
  v8[30] = a4;
  v8[31] = a5;
  v8[28] = a2;
  v8[29] = a3;
  v9 = type metadata accessor for XPCDictionary();
  v8[36] = v9;
  v8[37] = *(v9 - 8);
  v8[38] = swift_task_alloc();
  type metadata accessor for XPCSystem.Transport.Packet.Payload(0);
  v8[39] = swift_task_alloc();
  v10 = type metadata accessor for RemoteCallTarget();
  v8[40] = v10;
  v8[41] = *(v10 - 8);
  v8[42] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in closure #1 in XPCSystem.Session.handleReceivedRequest(_:replyUsing:), 0, 0);
}

uint64_t closure #1 in closure #1 in XPCSystem.Session.handleReceivedRequest(_:replyUsing:)()
{
  v2 = *(v0 + 272);
  v1 = *(v0 + 280);
  v3 = *(v0 + 256);
  v4 = *(v0 + 264);
  v5 = *(v0 + 248);
  v6 = *(*(v0 + 240) + 16);
  *(v0 + 344) = v6;
  *(v0 + 208) = v6;
  v7 = *(v5 + 32);
  v8 = *(v5 + 40);

  MEMORY[0x277C6B300](v7, v8);
  *(v0 + 88) = &unk_2883F52A0;
  *(v0 + 96) = &protocol witness table for XPCSystem.Session.RemoteInvocationReplyHandler;
  *(v0 + 64) = v4;
  *(v0 + 72) = v2;
  *(v0 + 80) = v1;
  swift_beginAccess();
  LOBYTE(v8) = *(v3 + 80) != 0;
  ObjectType = swift_getObjectType();
  outlined init with take of XPCSystem.ResultHandler.ReplyHandler((v0 + 64), v0 + 16);
  *(v0 + 56) = v8;
  swift_beginAccess();

  v10 = swift_task_alloc();
  *(v0 + 352) = v10;
  v11 = type metadata accessor for XPCSystem(0);
  v12 = lazy protocol witness table accessor for type XPCSystem.Session and conformance XPCSystem.Session(&lazy protocol witness table cache variable for type XPCSystem and conformance XPCSystem, type metadata accessor for XPCSystem, protocol conformance descriptor for XPCSystem);
  *v10 = v0;
  v10[1] = closure #1 in closure #1 in XPCSystem.Session.handleReceivedRequest(_:replyUsing:);
  v13 = *(v0 + 336);
  v14 = *(v0 + 256);
  v15 = *(v0 + 224);
  v16 = *(v0 + 232);

  return MEMORY[0x2821FF478](v15, v13, v14, v0 + 16, v11, ObjectType, v12, v16);
}

{
  v2 = *v1;
  *(*v1 + 360) = v0;

  if (v0)
  {
    v3 = closure #1 in closure #1 in XPCSystem.Session.handleReceivedRequest(_:replyUsing:);
  }

  else
  {
    v4 = v2[42];
    v5 = v2[40];
    v6 = v2[41];
    swift_endAccess();
    outlined destroy of XPCSystem.ResultHandler((v2 + 2));
    (*(v6 + 8))(v4, v5);

    v3 = closure #1 in closure #1 in XPCSystem.Session.handleReceivedRequest(_:replyUsing:);
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  XPCSystem.Session.removePendingInvocationExecutionTask(withID:)(*(*(v0 + 240) + 24));

  v1 = *(v0 + 8);

  return v1();
}

{
  v1 = *(v0 + 360);
  v2 = *(v0 + 336);
  v3 = *(v0 + 320);
  v4 = *(v0 + 328);
  v15 = *(v0 + 224);
  swift_endAccess();
  outlined destroy of XPCSystem.ResultHandler(v0 + 16);
  (*(v4 + 8))(v2, v3);

  _StringGuts.grow(_:)(67);
  *(v0 + 176) = 0;
  *(v0 + 184) = 0xE000000000000000;
  MEMORY[0x277C6B720](0xD000000000000032, 0x80000002751B9260);
  *(v0 + 192) = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11Distributed0A5Actor_pMd, &_s11Distributed0A5Actor_pMR);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x277C6B720](0x7265206874697720, 0xEC00000020726F72);
  *(v0 + 216) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x277C6B720](46, 0xE100000000000000);
  v5 = *(v0 + 176);
  v6 = *(v0 + 184);

  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs17CodingUserInfoKeyV_ypTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  *(v0 + 152) = v5;
  *(v0 + 160) = v6;
  *(v0 + 168) = 257;
  XPCDictionary.init()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14XPCDistributed9XPCSystemC7SessionC24RemoteInvocationResponseVy__s5NeverOGMd, &_s14XPCDistributed9XPCSystemC7SessionC24RemoteInvocationResponseVy__s5NeverOGMR);
  lazy protocol witness table accessor for type XPCSystem.Session.RemoteInvocationResponse<Never> and conformance XPCSystem.Session.RemoteInvocationResponse<A>();
  XPCDictionary.encode<A>(_:forKey:withUserInfo:)();
  v7 = *(v0 + 360);
  v9 = *(v0 + 304);
  v8 = *(v0 + 312);
  v10 = *(v0 + 288);
  v11 = *(v0 + 296);
  v12 = *(v0 + 264);

  (*(v11 + 32))(v8, v9, v10);
  v12(v8);

  outlined destroy of XPCSystem.Transport.Packet.Payload(v8);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  outlined init with copy of TaskPriority?(a3, v25 - v10);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    outlined destroy of Result<XPCSystem.Transport.Packet.Payload, XPCSystem.Transport.TransportError>(v11, &_sScPSgMd, &_sScPSgMR);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      outlined destroy of Result<XPCSystem.Transport.Packet.Payload, XPCSystem.Transport.TransportError>(a3, &_sScPSgMd, &_sScPSgMR);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  outlined destroy of Result<XPCSystem.Transport.Packet.Payload, XPCSystem.Transport.TransportError>(a3, &_sScPSgMd, &_sScPSgMR);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfC14XPCDistributed9XPCSystemC7SessionC14LocalInterfaceV15ActivationTokenV_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  outlined init with copy of TaskPriority?(a3, v25 - v10);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    outlined destroy of Result<XPCSystem.Transport.Packet.Payload, XPCSystem.Transport.TransportError>(v11, &_sScPSgMd, &_sScPSgMR);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      outlined destroy of Result<XPCSystem.Transport.Packet.Payload, XPCSystem.Transport.TransportError>(a3, &_sScPSgMd, &_sScPSgMR);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  outlined destroy of Result<XPCSystem.Transport.Packet.Payload, XPCSystem.Transport.TransportError>(a3, &_sScPSgMd, &_sScPSgMR);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t XPCSystem.Session.handleReceivedNotification(_:)()
{
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs17CodingUserInfoKeyV_ypTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  lazy protocol witness table accessor for type XPCSystem.Session.RemoteNotification and conformance XPCSystem.Session.RemoteNotification();
  XPCDictionary.decode<A>(as:forKey:withUserInfo:)();

  return XPCSystem.Session.cancelPendingInvocationExecutionTask(withID:)(v1);
}

unint64_t XPCSystem.Session.handleActorShared(_:)(unint64_t result, uint64_t a2)
{
  v3 = *(v2 + 40);
  while (1)
  {
    v4 = v3 + 1;
    if (v3 == -1)
    {
      break;
    }

    v5 = v3;
    atomic_compare_exchange_strong_explicit((v2 + 40), &v5, v4, memory_order_relaxed, memory_order_relaxed);
    v6 = v5 == v3;
    v3 = v5;
    if (v6)
    {
      XPCSystem.Session.addSharedActor(_:at:)(result, a2, v4, 0, 2);
      return v4;
    }
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall XPCSystem.Session.handleTransportCancellation()()
{
  (*(**(v0 + 48) + 200))(closure #1 in XPCSystem.Session.cancellationCompleted(), 0, MEMORY[0x277D84F78] + 8, MEMORY[0x277D84A98], MEMORY[0x277D84AC0]);
  v1 = *(v0 + 64);
  v2[0] = 0;
  v1(v2);
}

unint64_t protocol witness for XPCSystem.InboundSessionProtocol.handleActorShared(_:) in conformance XPCSystem.Session(unint64_t result, uint64_t a2)
{
  v3 = *(v2 + 40);
  while (1)
  {
    v4 = v3 + 1;
    if (v3 == -1)
    {
      break;
    }

    v5 = v3;
    atomic_compare_exchange_strong_explicit((v2 + 40), &v5, v4, memory_order_relaxed, memory_order_relaxed);
    v6 = v5 == v3;
    v3 = v5;
    if (v6)
    {
      XPCSystem.Session.addSharedActor(_:at:)(result, a2, v4, 0, 2);
      return v4;
    }
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for XPCSystem.InboundSessionProtocol.handleTransportCancellation() in conformance XPCSystem.Session()
{
  (*(**(v0 + 48) + 200))(closure #1 in XPCSystem.Session.cancellationCompleted(), 0, MEMORY[0x277D84F78] + 8, MEMORY[0x277D84A98], MEMORY[0x277D84AC0]);
  v1 = *(v0 + 64);
  v3[0] = 0;
  return v1(v3);
}

void *static XPCSystem.currentRemoteInvocationOrigin()@<X0>(void *a1@<X8>)
{
  if (one-time initialization token for $currentSession != -1)
  {
    swift_once();
  }

  result = TaskLocal.get()();
  *a1 = v3;
  return result;
}

uint64_t implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:)(uint64_t (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

{
  return a1();
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TQ0_;

  return v6(a1);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTR14XPCDistributed9XPCSystemC7SessionC14LocalInterfaceV15ActivationTokenV_Tg5(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTR14XPCDistributed9XPCSystemC7SessionC14LocalInterfaceV15ActivationTokenV_Tg5TQ0_;

  return v6(a1);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTR14XPCDistributed9XPCSystemC7SessionC14LocalInterfaceV15ActivationTokenV_Tg5TQ0_()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void *closure #1 in serialize<A>(_:at:)(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

void closure #1 in OSLogArguments.append(_:)(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = (a4)(a1, a2, a3);
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

uint64_t thunk for @escaping @callee_guaranteed () -> (@unowned UInt64)@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type XPCSystem.Session.RemoteInvocationResponse<Never> and conformance XPCSystem.Session.RemoteInvocationResponse<A>()
{
  result = lazy protocol witness table cache variable for type XPCSystem.Session.RemoteInvocationResponse<Never> and conformance XPCSystem.Session.RemoteInvocationResponse<A>;
  if (!lazy protocol witness table cache variable for type XPCSystem.Session.RemoteInvocationResponse<Never> and conformance XPCSystem.Session.RemoteInvocationResponse<A>)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s14XPCDistributed9XPCSystemC7SessionC24RemoteInvocationResponseVy__s5NeverOGMd, &_s14XPCDistributed9XPCSystemC7SessionC24RemoteInvocationResponseVy__s5NeverOGMR);
    result = swift_getWitnessTable(protocol conformance descriptor for XPCSystem.Session.RemoteInvocationResponse<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type XPCSystem.Session.RemoteInvocationResponse<Never> and conformance XPCSystem.Session.RemoteInvocationResponse<A>);
  }

  return result;
}

uint64_t outlined destroy of XPCSystem.Transport.Packet.Payload(uint64_t a1)
{
  v2 = type metadata accessor for XPCSystem.Transport.Packet.Payload(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type XPCSystem.Session.RemoteInvocationRequest and conformance XPCSystem.Session.RemoteInvocationRequest()
{
  result = lazy protocol witness table cache variable for type XPCSystem.Session.RemoteInvocationRequest and conformance XPCSystem.Session.RemoteInvocationRequest;
  if (!lazy protocol witness table cache variable for type XPCSystem.Session.RemoteInvocationRequest and conformance XPCSystem.Session.RemoteInvocationRequest)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for XPCSystem.Session.RemoteInvocationRequest, &type metadata for XPCSystem.Session.RemoteInvocationRequest, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type XPCSystem.Session.RemoteInvocationRequest and conformance XPCSystem.Session.RemoteInvocationRequest);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type XPCSystem.Session.RemoteInvocationRequest and conformance XPCSystem.Session.RemoteInvocationRequest;
  if (!lazy protocol witness table cache variable for type XPCSystem.Session.RemoteInvocationRequest and conformance XPCSystem.Session.RemoteInvocationRequest)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for XPCSystem.Session.RemoteInvocationRequest, &type metadata for XPCSystem.Session.RemoteInvocationRequest, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type XPCSystem.Session.RemoteInvocationRequest and conformance XPCSystem.Session.RemoteInvocationRequest);
  }

  return result;
}

uint64_t partial apply for closure #1 in XPCSystem.Session.handleReceivedRequest(_:replyUsing:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[23];
  v8 = v1[24];
  v9 = v1[25];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = partial apply for implicit closure #1 in XPCSystem.Session.LocalInterface.activateThenWithRemoteInterface<A>(perform:);

  return closure #1 in XPCSystem.Session.handleReceivedRequest(_:replyUsing:)(a1, v4, v5, v6, (v1 + 5), v7, v8, v9);
}

unint64_t lazy protocol witness table accessor for type XPCSystem.Session.RemoteNotification and conformance XPCSystem.Session.RemoteNotification()
{
  result = lazy protocol witness table cache variable for type XPCSystem.Session.RemoteNotification and conformance XPCSystem.Session.RemoteNotification;
  if (!lazy protocol witness table cache variable for type XPCSystem.Session.RemoteNotification and conformance XPCSystem.Session.RemoteNotification)
  {
    result = swift_getWitnessTable("\tS\b\rxs", &type metadata for XPCSystem.Session.RemoteNotification, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type XPCSystem.Session.RemoteNotification and conformance XPCSystem.Session.RemoteNotification);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type XPCSystem.Session.RemoteNotification and conformance XPCSystem.Session.RemoteNotification;
  if (!lazy protocol witness table cache variable for type XPCSystem.Session.RemoteNotification and conformance XPCSystem.Session.RemoteNotification)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for XPCSystem.Session.RemoteNotification, &type metadata for XPCSystem.Session.RemoteNotification, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type XPCSystem.Session.RemoteNotification and conformance XPCSystem.Session.RemoteNotification);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for XPCSystem.Session(uint64_t a1)
{
  result = lazy protocol witness table accessor for type XPCSystem.Session and conformance XPCSystem.Session(&lazy protocol witness table cache variable for type XPCSystem.Session and conformance XPCSystem.Session, type metadata accessor for XPCSystem.Session, protocol conformance descriptor for XPCSystem.Session);
  *(a1 + 8) = result;
  return result;
}

uint64_t outlined init with copy of TaskPriority?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTR14XPCDistributed9XPCSystemC7SessionC14LocalInterfaceV15ActivationTokenV_Tg5TA(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for specialized implicit closure #1 in XPCSystem.Session.LocalInterface.activateThenWithRemoteInterface<A>(perform:);

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTR14XPCDistributed9XPCSystemC7SessionC14LocalInterfaceV15ActivationTokenV_Tg5(a1, v4);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TA(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for specialized implicit closure #1 in XPCSystem.Session.LocalInterface.activateThenWithRemoteInterface<A>(perform:);

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(a1, v4);
}

uint64_t partial apply for closure #1 in closure #1 in XPCSystem.Session.handleReceivedRequest(_:replyUsing:)(uint64_t a1)
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
  v11[1] = partial apply for implicit closure #1 in XPCSystem.Session.LocalInterface.activateThenWithRemoteInterface<A>(perform:);

  return closure #1 in closure #1 in XPCSystem.Session.handleReceivedRequest(_:replyUsing:)(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t lazy protocol witness table accessor for type XPCSystem.Session and conformance XPCSystem.Session(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static XPCSystem.RemoteInvocationCancellationError.resultPropagationFailed(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 3;
  *(a3 + 8) = a1;
  *(a3 + 16) = a2;
}

uint64_t static XPCSystem.RemoteInvocationCancellationError.executionFailed(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 2;
  *(a3 + 8) = a1;
  *(a3 + 16) = a2;
}

Swift::Int XPCSystem.RemoteInvocationCancellationError.Reason.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x277C6BCC0](v1);
  return Hasher._finalize()();
}

uint64_t XPCSystem.RemoteInvocationCancellationError.message.getter()
{
  v1 = 0xD000000000000020;
  v2 = 0xE000000000000000;
  v4 = *(v0 + 1);
  v3 = *(v0 + 2);
  v5 = " invocation was cancelled";
  v6 = "nvocation after it was executed";
  v7 = 0xD00000000000002BLL;
  if (*v0 != 2)
  {
    v7 = 0xD00000000000004FLL;
    v6 = " result of invocation (error: ";
  }

  if (*v0)
  {
    v1 = 0xD000000000000039;
    v5 = "invocation was not executed";
  }

  if (*v0 <= 1u)
  {
    v8 = v1;
  }

  else
  {
    v8 = v7;
  }

  if (*v0 <= 1u)
  {
    v9 = v5;
  }

  else
  {
    v9 = v6;
  }

  MEMORY[0x277C6B720](v8, v9 | 0x8000000000000000);

  MEMORY[0x277C6B720](8238, 0xE200000000000000);
  if (v3)
  {
    v2 = v3;
  }

  else
  {
    v4 = 0;
  }

  MEMORY[0x277C6B720](v4, v2);

  return 0;
}

_BYTE *XPCSystem.RemoteInvocationCancellationError.init(reason:message:)@<X0>(_BYTE *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = *result;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  return result;
}

uint64_t static XPCSystem.RemoteInvocationCancellationError.underlyingSessionCancelled(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 8) = a1;
  *(a3 + 16) = a2;
}

void static XPCSystem.RemoteInvocationCancellationError.callingTaskCancelled()(uint64_t a1@<X8>)
{
  *a1 = 1;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
}

uint64_t XPCSystem.SetupError.message.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t XPCSystem.SetupError.init(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t XPCSystem.SetupError.debugDescription.getter()
{
  v1 = *v0;
  v2 = v0[1];
  _StringGuts.grow(_:)(16);

  strcpy(v4, "SetupError{");
  MEMORY[0x277C6B720](v1, v2);
  MEMORY[0x277C6B720](32034, 0xE200000000000000);
  return v4[0];
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance XPCSystem.SetupError()
{
  v1 = *v0;
  v2 = v0[1];
  _StringGuts.grow(_:)(16);

  strcpy(v4, "SetupError{");
  MEMORY[0x277C6B720](v1, v2);
  MEMORY[0x277C6B720](32034, 0xE200000000000000);
  return v4[0];
}

unint64_t lazy protocol witness table accessor for type XPCSystem.RemoteInvocationCancellationError.Reason and conformance XPCSystem.RemoteInvocationCancellationError.Reason()
{
  result = lazy protocol witness table cache variable for type XPCSystem.RemoteInvocationCancellationError.Reason and conformance XPCSystem.RemoteInvocationCancellationError.Reason;
  if (!lazy protocol witness table cache variable for type XPCSystem.RemoteInvocationCancellationError.Reason and conformance XPCSystem.RemoteInvocationCancellationError.Reason)
  {
    result = swift_getWitnessTable("9>\b\r e", &type metadata for XPCSystem.RemoteInvocationCancellationError.Reason, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type XPCSystem.RemoteInvocationCancellationError.Reason and conformance XPCSystem.RemoteInvocationCancellationError.Reason);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type XPCSystem.SetupError and conformance XPCSystem.SetupError()
{
  result = lazy protocol witness table cache variable for type XPCSystem.SetupError and conformance XPCSystem.SetupError;
  if (!lazy protocol witness table cache variable for type XPCSystem.SetupError and conformance XPCSystem.SetupError)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for XPCSystem.SetupError, &type metadata for XPCSystem.SetupError, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type XPCSystem.SetupError and conformance XPCSystem.SetupError);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for XPCSystem.RemoteInvocationCancellationError(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for XPCSystem.RemoteInvocationCancellationError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t Either.mapB<A>(_:)@<X0>(void (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v8 = *(a2 + 24);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](a1);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v15, v17, v13);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v9 + 32))(v11, v15, v8);
    a1(v11);
    (*(v9 + 8))(v11, v8);
    v19 = *(a2 + 16);
  }

  else
  {
    v19 = *(a2 + 16);
    (*(*(v19 - 8) + 32))(a4, v15, v19);
  }

  type metadata accessor for Either(0, v19, a3, v18);
  return swift_storeEnumTagMultiPayload();
}

uint64_t _s14XPCDistributed6EitherOAAs5ErrorR_rlE4getAxyq_YKF@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *(a1 + 24);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](a1);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v14, v16, a1, v12);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return (*(*(*(a1 + 16) - 8) + 32))(a4, v14);
  }

  (*(v8 + 32))(v10, v14, v7);
  (*(v8 + 16))(a3, v10, v7);
  swift_willThrowTypedImpl();
  return (*(v8 + 8))(v10, v7);
}

uint64_t Either<>.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1702060387 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 97 && a2 == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 98 && a2 == 0xE100000000000000)
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

Swift::Int Either<>.CodingKeys.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x277C6BCC0](a1);
  return Hasher._finalize()();
}

uint64_t Either<>.CodingKeys.stringValue.getter(char a1)
{
  if (!a1)
  {
    return 1702060387;
  }

  if (a1 == 1)
  {
    return 97;
  }

  return 98;
}

uint64_t Either<>.Case.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  if (a1 == 97 && a2 == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 98 && a2 == 0xE100000000000000)
  {

    return 1;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v5)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t Either<>.Case.CodingKeys.stringValue.getter(char a1)
{
  if (a1)
  {
    return 98;
  }

  else
  {
    return 97;
  }
}

uint64_t Either<>.Case.encode(to:)(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v37 = a2;
  v38 = a3;
  v39 = a4;
  v40 = a5;
  v41 = a6;
  v42 = a7;
  v43 = a8;
  v15 = type metadata accessor for Either<>.Case.BCodingKeys(255, &v38);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for Either<A, B><>.Case.BCodingKeys, v15);
  v36 = v15;
  v16 = type metadata accessor for KeyedEncodingContainer();
  v33 = *(v16 - 8);
  v34 = v16;
  MEMORY[0x28223BE20](v16);
  v32 = &v28 - v17;
  v38 = a3;
  v39 = a4;
  v40 = a5;
  v41 = a6;
  v42 = a7;
  v43 = a8;
  v18 = type metadata accessor for Either<>.Case.ACodingKeys(255, &v38);
  v30 = swift_getWitnessTable(protocol conformance descriptor for Either<A, B><>.Case.ACodingKeys, v18);
  v31 = type metadata accessor for KeyedEncodingContainer();
  v29 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v28 = &v28 - v19;
  v38 = a3;
  v39 = a4;
  v40 = a5;
  v41 = a6;
  v42 = a7;
  v43 = a8;
  v20 = type metadata accessor for Either<>.Case.CodingKeys(255, &v38);
  swift_getWitnessTable(protocol conformance descriptor for Either<A, B><>.Case.CodingKeys, v20);
  v21 = type metadata accessor for KeyedEncodingContainer();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = &v28 - v23;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (v37)
  {
    LOBYTE(v38) = 1;
    v25 = v32;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v33 + 8))(v25, v34);
  }

  else
  {
    LOBYTE(v38) = 0;
    v26 = v28;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v29 + 8))(v26, v31);
  }

  return (*(v22 + 8))(v24, v21);
}

uint64_t Either<>.Case.init(from:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *&v58 = a2;
  *(&v58 + 1) = a3;
  *&v59 = a4;
  *(&v59 + 1) = a5;
  v60 = a6;
  v61 = a7;
  v47 = type metadata accessor for Either<>.Case.BCodingKeys(255, &v58);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for Either<A, B><>.Case.BCodingKeys, v47);
  v44 = type metadata accessor for KeyedDecodingContainer();
  v43 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v45 = &v38 - v14;
  *&v58 = a2;
  *(&v58 + 1) = a3;
  *&v59 = a4;
  *(&v59 + 1) = a5;
  v60 = a6;
  v61 = a7;
  v15 = type metadata accessor for Either<>.Case.ACodingKeys(255, &v58);
  v46 = swift_getWitnessTable(protocol conformance descriptor for Either<A, B><>.Case.ACodingKeys, v15);
  v42 = type metadata accessor for KeyedDecodingContainer();
  v41 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v53 = &v38 - v16;
  v54 = a2;
  *&v58 = a2;
  *(&v58 + 1) = a3;
  v49 = a3;
  *&v50 = a4;
  *&v59 = a4;
  *(&v59 + 1) = a5;
  *(&v50 + 1) = a5;
  v51 = a6;
  v60 = a6;
  v61 = a7;
  v52 = a7;
  v17 = type metadata accessor for Either<>.Case.CodingKeys(255, &v58);
  swift_getWitnessTable(protocol conformance descriptor for Either<A, B><>.Case.CodingKeys, v17);
  v18 = type metadata accessor for KeyedDecodingContainer();
  v55 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v20 = &v38 - v19;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v21 = v62;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v21)
  {
    v22 = v53;
    v39 = v15;
    v23 = v54;
    v40 = 0;
    v62 = a1;
    *&v58 = KeyedDecodingContainer.allKeys.getter();
    v24 = type metadata accessor for Array();
    swift_getWitnessTable(MEMORY[0x277D83970], v24);
    *&v56 = ArraySlice.init<A>(_:)();
    *(&v56 + 1) = v25;
    *&v57 = v26;
    *(&v57 + 1) = v27;
    v28 = type metadata accessor for ArraySlice();
    swift_getWitnessTable(MEMORY[0x277D83FC0], v28);
    Collection<>.popFirst()();
    v29 = v58;
    if (v58 == 2 || (v38 = v56, v58 = v56, v59 = v57, (Collection.isEmpty.getter() & 1) == 0))
    {
      v33 = type metadata accessor for DecodingError();
      swift_allocError();
      v35 = v34;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR);
      *&v58 = v23;
      *(&v58 + 1) = v49;
      v59 = v50;
      v60 = v51;
      v61 = v52;
      *v35 = type metadata accessor for Either<>.Case(0, &v58);
      KeyedDecodingContainer.codingPath.getter();
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v33 - 8) + 104))(v35, *MEMORY[0x277D84160], v33);
      swift_willThrow();
      (*(v55 + 8))(v20, v18);
    }

    else
    {
      if (v29)
      {
        LOBYTE(v58) = 1;
        v30 = v45;
        v31 = v40;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v32 = v55;
        if (!v31)
        {
          (*(v43 + 8))(v30, v44);
LABEL_14:
          (*(v32 + 8))(v20, v18);
          swift_unknownObjectRelease();
          __swift_destroy_boxed_opaque_existential_1Tm(v62);
          return v29 & 1;
        }
      }

      else
      {
        LOBYTE(v58) = 0;
        v37 = v40;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v32 = v55;
        if (!v37)
        {
          (*(v41 + 8))(v22, v42);
          goto LABEL_14;
        }
      }

      (*(v32 + 8))(v20, v18);
    }

    swift_unknownObjectRelease();
    a1 = v62;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Either<A, B><>.CodingKeys(uint64_t a1)
{
  Hasher.init(_seed:)();
  Either<>.CodingKeys.hash(into:)(v3, *v1);
  return Hasher._finalize()();
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Either<A, B><>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable("YN\b\rxa", a1);

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Either<A, B><>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable("YN\b\rxa", a1);

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Either<A, B><>.Case.ACodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for Either<A, B><>.Case.ACodingKeys, a1);

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Either<A, B><>.Case.ACodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for Either<A, B><>.Case.ACodingKeys, a1);

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance Either<A, B><>.Case.ACodingKeys@<X0>(void *a2@<X2>, uint64_t (*a3)(void, void, void, void, void, void)@<X4>, _BYTE *a4@<X8>)
{
  v5 = a3(a2[2], a2[3], a2[4], a2[5], a2[6], a2[7]);

  *a4 = v5 & 1;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance Either<A, B><>.Case.ACodingKeys@<X0>(void *a1@<X1>, uint64_t (*a2)(void, void, void, void, void, void)@<X3>, _BYTE *a3@<X8>)
{
  result = a2(a1[2], a1[3], a1[4], a1[5], a1[6], a1[7]);
  *a3 = result & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Either<A, B><>.Case.BCodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for Either<A, B><>.Case.BCodingKeys, a1);

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Either<A, B><>.Case.BCodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for Either<A, B><>.Case.BCodingKeys, a1);

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance Either<A, B><>.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t (*a4)(uint64_t, uint64_t, void, void, void, void, void, void)@<X4>, _BYTE *a5@<X8>)
{
  result = a4(a1, a2, a3[2], a3[3], a3[4], a3[5], a3[6], a3[7]);
  *a5 = result;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance Either<A, B><>.CodingKeys@<X0>(void *a1@<X1>, uint64_t (*a2)(void, void, void, void, void, void)@<X3>, _BYTE *a3@<X8>)
{
  result = a2(a1[2], a1[3], a1[4], a1[5], a1[6], a1[7]);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Either<A, B><>.Case.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for Either<A, B><>.Case.CodingKeys, a1);

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Either<A, B><>.Case.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for Either<A, B><>.Case.CodingKeys, a1);

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Either<A, B><>.Case.CodingKeys(uint64_t a1, void *a2, uint64_t a3, void (*a4)(void *, void, void, void, void, void, void, void))
{
  Hasher.init(_seed:)();
  a4(v8, *v4, a2[2], a2[3], a2[4], a2[5], a2[6], a2[7]);
  return Hasher._finalize()();
}

uint64_t protocol witness for Decodable.init(from:) in conformance Either<A, B><>.Case@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, _BYTE *a3@<X8>)
{
  result = Either<>.Case.init(from:)(a1, a2[2], a2[3], a2[4], a2[5], a2[6], a2[7]);
  if (!v3)
  {
    *a3 = result & 1;
  }

  return result;
}

uint64_t Either<>.encode(to:)(void *a1, uint64_t a2)
{
  v37 = *(*(a2 + 24) - 8);
  MEMORY[0x28223BE20](a1);
  v39 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = *(*(v5 + 16) - 8);
  MEMORY[0x28223BE20](v6);
  v38 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = v14;
  v44 = v13;
  v51 = v14;
  v52 = v15;
  v47 = v15;
  v41 = v16;
  v42 = v17;
  v53 = v16;
  v54 = v13;
  v55 = v17;
  v56 = v18;
  v45 = v18;
  v19 = type metadata accessor for Either<>.CodingKeys(255, &v51);
  swift_getWitnessTable("YN\b\rxa", v19);
  v20 = type metadata accessor for KeyedEncodingContainer();
  v49 = *(v20 - 8);
  v50 = v20;
  MEMORY[0x28223BE20](v20);
  v22 = &v36 - v21;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v48 = v22;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  (*(v9 + 16))(v12, v40, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v23 = v37;
    v24 = v39;
    v25 = v47;
    (*(v37 + 32))(v39, v12, v47);
    v57 = 256;
    v51 = v43;
    v52 = v25;
    v53 = v41;
    v54 = v44;
    v55 = v42;
    v56 = v45;
    v26 = type metadata accessor for Either<>.Case(0, &v51);
    swift_getWitnessTable(protocol conformance descriptor for Either<A, B><>.Case, v26);
    v27 = v50;
    v28 = v48;
    v29 = v46;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    if (!v29)
    {
      LOBYTE(v51) = 2;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
    }

    (*(v23 + 8))(v24, v25);
  }

  else
  {
    v30 = v36;
    v31 = v38;
    v32 = v43;
    (*(v36 + 32))(v38, v12, v43);
    v57 = 0;
    v51 = v32;
    v52 = v47;
    v53 = v41;
    v54 = v44;
    v55 = v42;
    v56 = v45;
    v33 = type metadata accessor for Either<>.Case(0, &v51);
    swift_getWitnessTable(protocol conformance descriptor for Either<A, B><>.Case, v33);
    v27 = v50;
    v28 = v48;
    v34 = v46;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    if (!v34)
    {
      LOBYTE(v51) = 1;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
    }

    (*(v30 + 8))(v31, v32);
  }

  return (*(v49 + 8))(v28, v27);
}

uint64_t Either<>.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v55 = a2;
  v42 = a8;
  v56 = a3;
  v57 = a4;
  v51 = a4;
  v52 = a6;
  v46 = a5;
  v58 = a5;
  v59 = a6;
  v48 = a7;
  v60 = a7;
  v11 = type metadata accessor for Either<>.CodingKeys(255, &v55);
  WitnessTable = swift_getWitnessTable("YN\b\rxa", v11);
  v47 = type metadata accessor for KeyedDecodingContainer();
  v44 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v13 = &v38 - v12;
  v49 = a2;
  v50 = a3;
  v15 = type metadata accessor for Either(0, a2, a3, v14);
  v43 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v38 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v38 - v22;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v45 = v13;
  v24 = v54;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v24)
  {
    v35 = a1;
  }

  else
  {
    v40 = v17;
    v41 = v20;
    WitnessTable = v23;
    v39 = v15;
    v25 = v44;
    v54 = a1;
    v55 = v49;
    v56 = v50;
    v57 = v51;
    v58 = v46;
    v59 = v52;
    v60 = v48;
    v26 = type metadata accessor for Either<>.Case(0, &v55);
    LOBYTE(v55) = 0;
    swift_getWitnessTable(protocol conformance descriptor for Either<A, B><>.Case, v26);
    v27 = v47;
    v28 = v45;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v29 = v25;
    if (v61)
    {
      LOBYTE(v55) = 2;
      v30 = v40;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v31 = v43;
      v32 = WitnessTable;
      (*(v29 + 8))(v28, v27);
      v33 = v39;
      swift_storeEnumTagMultiPayload();
      v34 = v42;
    }

    else
    {
      LOBYTE(v55) = 1;
      v30 = v41;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v34 = v42;
      v31 = v43;
      v32 = WitnessTable;
      (*(v29 + 8))(v28, v27);
      v33 = v39;
      swift_storeEnumTagMultiPayload();
    }

    v37 = *(v31 + 32);
    v37(v32, v30, v33);
    v37(v34, v32, v33);
    v35 = v54;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v35);
}

uint64_t static Either<>.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v38 = a5;
  v39 = a6;
  v44 = a1;
  v45 = a2;
  v42 = *(a4 - 8);
  MEMORY[0x28223BE20](a1);
  v37 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = *(v8 - 8);
  MEMORY[0x28223BE20](v9);
  v36 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = v11;
  v13 = type metadata accessor for Either(0, v12, v11, v11);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v36 - v18;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v40 = *(TupleTypeMetadata2 - 8);
  v21 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v23 = &v36 - v22;
  v25 = *(v24 + 48);
  v26 = *(v14 + 16);
  v26(&v36 - v22, v44, v13, v21);
  (v26)(&v23[v25], v45, v13);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (v26)(v19, v23, v13);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v32 = v41;
      v33 = v36;
      (*(v41 + 32))(v36, &v23[v25], a3);
      v30 = dispatch thunk of static Equatable.== infix(_:_:)();
      v34 = *(v32 + 8);
      v34(v33, a3);
      v34(v19, a3);
      goto LABEL_9;
    }

    (*(v41 + 8))(v19, a3);
    goto LABEL_7;
  }

  (v26)(v16, v23, v13);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v42 + 8))(v16, v43);
LABEL_7:
    v30 = 0;
    v14 = v40;
    v13 = TupleTypeMetadata2;
    goto LABEL_9;
  }

  v28 = v42;
  v27 = v43;
  v29 = v37;
  (*(v42 + 32))(v37, &v23[v25], v43);
  v30 = dispatch thunk of static Equatable.== infix(_:_:)();
  v31 = *(v28 + 8);
  v31(v29, v27);
  v31(v16, v27);
LABEL_9:
  (*(v14 + 8))(v23, v13);
  return v30 & 1;
}

uint64_t Either<>.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22[1] = a4;
  v5 = *(a2 + 24);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](a1);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v9 + 16);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v15);
  v18 = v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v18, v20, a2, v16);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v6 + 32))(v8, v18, v5);
    MEMORY[0x277C6BCC0](1);
    dispatch thunk of Hashable.hash(into:)();
    return (*(v6 + 8))(v8, v5);
  }

  else
  {
    (*(v11 + 32))(v14, v18, v10);
    MEMORY[0x277C6BCC0](0);
    dispatch thunk of Hashable.hash(into:)();
    return (*(v11 + 8))(v14, v10);
  }
}

Swift::Int Either<>.hashValue.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Hasher.init(_seed:)();
  Either<>.hash(into:)(v7, a1, a2, a3);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance <> Either<A, B>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 - 16);
  v4 = *(a3 - 8);
  Hasher.init(_seed:)();
  Either<>.hash(into:)(v7, a2, v4, v5);
  return Hasher._finalize()();
}

uint64_t Either.mapA<A>(_:)@<X0>(void (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v8 = *(a2 + 16);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](a1);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v15, v17, v13);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = *(a2 + 24);
    (*(*(v18 - 8) + 32))(a4, v15, v18);
  }

  else
  {
    (*(v9 + 32))(v11, v15, v8);
    a1(v11);
    (*(v9 + 8))(v11, v8);
    v18 = *(a2 + 24);
  }

  type metadata accessor for Either(0, a3, v18, v19);
  return swift_storeEnumTagMultiPayload();
}

uint64_t Either<>.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a5@<X8>)
{
  type metadata accessor for Result();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = a3;
  }

  else
  {
    v9 = a2;
  }

  (*(*(v9 - 8) + 32))(a5, a1);
  type metadata accessor for Either(0, a2, a3, v10);

  return swift_storeEnumTagMultiPayload();
}

uint64_t _s14XPCDistributed6EitherOAAs5ErrorR_rlE8flatMapAyACyqd__q_Gqd__xq_YKXElF@<X0>(void (*a1)(char *, char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v26 = a1;
  v27 = a4;
  v25 = a2;
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](a1);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = *(v11 + 16);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v17);
  v20 = &v25 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 16))(v20, v22, v18);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v7 + 32))(a5, v20, v6);
  }

  else
  {
    (*(v13 + 32))(v16, v20, v12);
    v26(v16, v9);
    (*(v13 + 8))(v16, v12);
  }

  type metadata accessor for Either(0, v27, v6, v23);
  return swift_storeEnumTagMultiPayload();
}

uint64_t Either.flatMapA<A>(_:)@<X0>(void (*a1)(char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v6 = v5;
  v38 = a2;
  v39 = a1;
  v10 = type metadata accessor for Optional();
  v36 = *(v10 - 8);
  v37 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v35 - v11;
  v40 = *(a4 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a3 + 16);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v18);
  v20 = &v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v21);
  v24 = &v35 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v25 + 16))(v24, v6, a3, v22);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v26 = *(a3 + 24);
    (*(*(v26 - 8) + 32))(a5, v24, v26);
    v28 = type metadata accessor for Either(0, a4, v26, v27);
  }

  else
  {
    (*(v17 + 32))(v20, v24, v16);
    v39(v20);
    (*(v17 + 8))(v20, v16);
    v29 = v40;
    if ((*(v40 + 48))(v12, 1, a4) == 1)
    {
      (*(v36 + 8))(v12, v37);
      v31 = type metadata accessor for Either(0, a4, *(a3 + 24), v30);
      return (*(*(v31 - 8) + 56))(a5, 1, 1, v31);
    }

    v33 = *(v29 + 32);
    v33(v15, v12, a4);
    v33(a5, v15, a4);
    v28 = type metadata accessor for Either(0, a4, *(a3 + 24), v34);
  }

  swift_storeEnumTagMultiPayload();
  return (*(*(v28 - 8) + 56))(a5, 0, 1, v28);
}

uint64_t Either.flatMapB<A>(_:)@<X0>(void (*a1)(char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v6 = v5;
  v38 = a2;
  v39 = a1;
  v10 = type metadata accessor for Optional();
  v36 = *(v10 - 8);
  v37 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v35 - v11;
  v40 = *(a4 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a3 + 24);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v18);
  v20 = &v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v21);
  v24 = &v35 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v25 + 16))(v24, v6, a3, v22);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v17 + 32))(v20, v24, v16);
    v39(v20);
    (*(v17 + 8))(v20, v16);
    v26 = v40;
    if ((*(v40 + 48))(v12, 1, a4) == 1)
    {
      (*(v36 + 8))(v12, v37);
      v28 = type metadata accessor for Either(0, *(a3 + 16), a4, v27);
      return (*(*(v28 - 8) + 56))(a5, 1, 1, v28);
    }

    v33 = *(v26 + 32);
    v33(v15, v12, a4);
    v33(a5, v15, a4);
    v32 = type metadata accessor for Either(0, *(a3 + 16), a4, v34);
  }

  else
  {
    v30 = *(a3 + 16);
    (*(*(v30 - 8) + 32))(a5, v24, v30);
    v32 = type metadata accessor for Either(0, v30, a4, v31);
  }

  swift_storeEnumTagMultiPayload();
  return (*(*(v32 - 8) + 56))(a5, 0, 1, v32);
}

uint64_t base witness table accessor for Equatable in <> Either<A, B>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*(a3 - 16) + 8);
  v5[0] = *(*(a3 - 8) + 8);
  v5[1] = v3;
  return swift_getWitnessTable(protocol conformance descriptor for <> Either<A, B>, a1, v5);
}

uint64_t type metadata completion function for Either(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Either(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 24) - 8) + 64);
  if (v3 <= *(*(*(a3 + 16) - 8) + 64))
  {
    v3 = *(*(*(a3 + 16) - 8) + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_25;
  }

  v4 = v3 + 1;
  v5 = 8 * (v3 + 1);
  if ((v3 + 1) <= 3)
  {
    v8 = ((a2 + ~(-1 << v5) - 254) >> v5) + 1;
    if (HIWORD(v8))
    {
      v6 = *(a1 + v4);
      if (!v6)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v8 > 0xFF)
    {
      v6 = *(a1 + v4);
      if (!*(a1 + v4))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v8 < 2)
    {
LABEL_25:
      v10 = *(a1 + v3);
      if (v10 >= 2)
      {
        return (v10 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v6 = *(a1 + v4);
  if (!*(a1 + v4))
  {
    goto LABEL_25;
  }

LABEL_14:
  v9 = (v6 - 1) << v5;
  if (v4 > 3)
  {
    v9 = 0;
  }

  if (v4)
  {
    if (v4 > 3)
    {
      LODWORD(v4) = 4;
    }

    if (v4 > 2)
    {
      if (v4 == 3)
      {
        LODWORD(v4) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v4) = *a1;
      }
    }

    else if (v4 == 1)
    {
      LODWORD(v4) = *a1;
    }

    else
    {
      LODWORD(v4) = *a1;
    }
  }

  return (v4 | v9) + 255;
}

void storeEnumTagSinglePayload for Either(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (*(*(*(a4 + 24) - 8) + 64) > v5)
  {
    v5 = *(*(*(a4 + 24) - 8) + 64);
  }

  v6 = v5 + 1;
  if (a3 < 0xFF)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 254) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFE)
  {
    v8 = a2 - 255;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_39:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v5] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_24;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

uint64_t getEnumTagSinglePayload for Either<>.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for Either<>.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t *RequestManager.__allocating_init(queue:)(void *a1)
{
  swift_allocObject();
  v2 = specialized RequestManager.init(queue:)(a1);

  return v2;
}

uint64_t RequestManager.replyAll(with:)(uint64_t a1)
{
  v43 = a1;
  v2 = *v1;
  v3 = *(*v1 + 88);
  v42 = type metadata accessor for Optional();
  v4 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v6 = v36 - v5;
  v7 = type metadata accessor for DispatchPredicate();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = (v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = v1[2];
  *v11 = v12;
  (*(v8 + 104))(v11, *MEMORY[0x277D85200], v7, v9);
  v13 = v12;
  v14 = _dispatchPreconditionTest(_:)();
  result = (*(v8 + 8))(v11, v7);
  if (v14)
  {
    swift_beginAccess();
    v16 = v1[3];
    v17 = *(v2 + 96);
    v37 = *(v2 + 80);
    v38 = v17;
    v18 = type metadata accessor for RequestManager.Request(0, v37, v3, v17);
    v39 = v1;
    v40 = v18;
    if ((v16 & 0xC000000000000001) != 0)
    {
      v19 = 0;
      v20 = 0;
      v21 = 0;
      v44 = __CocoaDictionary.makeIterator()() | 0x8000000000000000;
    }

    else
    {
      v22 = -1 << *(v16 + 32);
      v20 = ~v22;
      v19 = v16 + 64;
      v23 = -v22;
      if (v23 < 64)
      {
        v24 = ~(-1 << v23);
      }

      else
      {
        v24 = -1;
      }

      v21 = v24 & *(v16 + 64);
      v44 = v16;
    }

    v25 = 0;
    v36[1] = v20;
    v26 = (v20 + 64) >> 6;
    v41 = v3;
    v27 = (v4 + 8);
    v28 = v44;
    if ((v44 & 0x8000000000000000) != 0)
    {
      goto LABEL_15;
    }

    while (1)
    {
      v29 = v25;
      v30 = v21;
      v31 = v25;
      if (!v21)
      {
        break;
      }

LABEL_13:
      v32 = (v30 - 1) & v30;
      v33 = *(*(v28 + 56) + ((v31 << 9) | (8 * __clz(__rbit64(v30)))));

      if (!v33)
      {
LABEL_19:
        outlined consume of [A : RequestManager<A, B>.Request].Iterator._Variant<A, B>();
        swift_beginAccess();
        type metadata accessor for Dictionary();
        Dictionary.removeAll(keepingCapacity:)(0);
        return swift_endAccess();
      }

      while (1)
      {
        v34 = v41;
        v35 = *(v41 - 8);
        (*(v35 + 16))(v6, v43, v41);
        (*(v35 + 56))(v6, 0, 1, v34);
        RequestManager.Request.reply(with:)(v6);

        result = (*v27)(v6, v42);
        v25 = v31;
        v21 = v32;
        v28 = v44;
        if ((v44 & 0x8000000000000000) == 0)
        {
          break;
        }

LABEL_15:
        if (__CocoaDictionary.Iterator.next()())
        {
          swift_unknownObjectRelease();
          _forceBridgeFromObjectiveC<A>(_:_:)();
          swift_unknownObjectRelease();
          v31 = v25;
          v32 = v21;
          if (v45)
          {
            continue;
          }
        }

        goto LABEL_19;
      }
    }

    while (1)
    {
      v31 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        break;
      }

      if (v31 >= v26)
      {
        goto LABEL_19;
      }

      v30 = *(v19 + 8 * v31);
      ++v29;
      if (v30)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t RequestManager.Request.reply(with:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = type metadata accessor for RequestManager.Request.State(0, *(*v2 + 80), *(*v2 + 88), *(*v2 + 96));
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v21[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v11 = &v21[-v10];
  v12 = type metadata accessor for DispatchPredicate();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v21[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = *(v2 + *(v4 + 120));
  *v16 = v17;
  (*(v13 + 104))(v16, *MEMORY[0x277D85200], v12, v14);
  v18 = v17;
  LOBYTE(v17) = _dispatchPreconditionTest(_:)();
  result = (*(v13 + 8))(v16, v12);
  if (v17)
  {
    v20 = *(*v2 + 112);
    swift_beginAccess();
    (*(v6 + 16))(v11, v2 + v20, v5);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      (*v11)(a1);

      swift_storeEnumTagMultiPayload();
      swift_beginAccess();
      (*(v6 + 40))(v2 + v20, v8, v5);
      return swift_endAccess();
    }

    else
    {
      return (*(v6 + 8))(v11, v5);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t RequestManager.withRequest(id:perform:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v5[7] = *v4;
  return MEMORY[0x2822009F8](RequestManager.withRequest(id:perform:), 0, 0);
}

uint64_t RequestManager.withRequest(id:perform:)()
{
  v1 = v0[7];
  v2 = swift_allocObject();
  v2[2] = v1[10];
  v2[3] = v1[11];
  v2[4] = v1[12];
  v3 = swift_task_alloc();
  v0[8] = v3;
  v4 = type metadata accessor for Optional();
  *v3 = v0;
  v3[1] = RequestManager.withRequest(id:perform:);
  v5 = v0[5];
  v6 = v0[3];
  v7 = v0[4];
  v8 = v0[2];
  v9 = MEMORY[0x277D84A98];

  return _s14XPCDistributed14RequestManagerC04withB02id12replyHandler7performqd__x_qd__q_Sgqd_0_YKcnyAC0B0Cyxq__GXEtYaqd_0_YKs5ErrorRd_0_r0_lF(v8, v6, partial apply for closure #1 in RequestManager.withRequest(id:perform:), v2, v7, v5, v4, v9);
}

{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t RequestManager.Request.__allocating_init(id:queue:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  RequestManager.Request.init(id:queue:)(a1, a2);
  return v4;
}

uint64_t *RequestManager.Request.init(id:queue:)(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = *(*v2 + 80);
  (*(*(v5 - 8) + 32))(v2 + *(*v2 + 104), a1, v5);
  type metadata accessor for RequestManager.Request.State(0, v5, *(v4 + 88), *(v4 + 96));
  swift_storeEnumTagMultiPayload();
  *(v2 + *(*v2 + 120)) = a2;
  return v2;
}

uint64_t RequestManager.Request._setReplyHandler(to:)(void (*a1)(char *), uint64_t a2)
{
  v3 = v2;
  v32 = a1;
  v33 = a2;
  v4 = *v2;
  v5 = (*v2)[11];
  v6 = type metadata accessor for Optional();
  v30 = *(v6 - 8);
  v31 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v30 - v7;
  v9 = type metadata accessor for RequestManager.Request.State(0, v4[10], v5, v4[12]);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = (&v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v13);
  v15 = &v30 - v14;
  v16 = type metadata accessor for DispatchPredicate();
  v17 = *(v16 - 1);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v30 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(v3 + v4[15]);
  *v20 = v21;
  (*(v17 + 104))(v20, *MEMORY[0x277D85200], v16, v18);
  v22 = v21;
  LOBYTE(v21) = _dispatchPreconditionTest(_:)();
  (*(v17 + 8))(v20, v16);
  if ((v21 & 1) == 0)
  {
    __break(1u);
LABEL_9:
    (*(v10 + 8))(v15, v9);
    goto LABEL_10;
  }

  v20 = (*v3)[14];
  swift_beginAccess();
  v16 = *(v10 + 16);
  v16(v15, &v20[v3], v9);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      v24 = v30;
      v25 = v15;
      v26 = v31;
      (*(v30 + 32))(v8, v25, v31);
      v32(v8);

      (*(v24 + 8))(v8, v26);
      swift_storeEnumTagMultiPayload();
      swift_beginAccess();
      (*(v10 + 40))(&v20[v3], v12, v9);
      swift_endAccess();
      return 0;
    }

    goto LABEL_9;
  }

  if (EnumCaseMultiPayload == 2)
  {
    v28 = v33;
    *v12 = v32;
    v12[1] = v28;
    v27 = 1;
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    (*(v10 + 40))(&v20[v3], v12, v9);
    swift_endAccess();
    return v27;
  }

LABEL_10:
  v34 = 0;
  v35 = 0xE000000000000000;
  _StringGuts.grow(_:)(25);

  v34 = 0xD000000000000017;
  v35 = 0x80000002751B8C50;
  v36 = 0;
  v37 = 0xE000000000000000;
  _StringGuts.grow(_:)(45);
  MEMORY[0x277C6B720](0xD00000000000002BLL, 0x80000002751B90C0);
  v16(v12, &v20[v3], v9);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  (*(v10 + 8))(v12, v9);
  MEMORY[0x277C6B720](v36, v37);

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t RequestManager.Request._cancel(with:)(uint64_t a1)
{
  v2 = v1;
  v23 = a1;
  v3 = *v1;
  v4 = type metadata accessor for RequestManager.Request.State(0, *(*v1 + 80), *(*v1 + 88), *(*v1 + 96));
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = (&v22 - v9);
  v11 = type metadata accessor for DispatchPredicate();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v2 + *(v3 + 120));
  *v15 = v16;
  (*(v12 + 104))(v15, *MEMORY[0x277D85200], v11, v13);
  v17 = v16;
  v18 = _dispatchPreconditionTest(_:)();
  (*(v12 + 8))(v15, v11);
  if ((v18 & 1) == 0)
  {
    __break(1u);
LABEL_9:
    (*(v5 + 8))(v10, v4);
    goto LABEL_10;
  }

  v18 = *(*v2 + 112);
  swift_beginAccess();
  v15 = *(v5 + 16);
  (v15)(v10, v2 + v18, v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload == 1)
    {
      (*v10)(v23);

LABEL_7:
      swift_storeEnumTagMultiPayload();
      swift_beginAccess();
      (*(v5 + 40))(v2 + v18, v7, v4);
      return swift_endAccess();
    }

    goto LABEL_9;
  }

  if (EnumCaseMultiPayload == 2)
  {
    v20 = type metadata accessor for Optional();
    (*(*(v20 - 8) + 16))(v7, v23, v20);
    goto LABEL_7;
  }

LABEL_10:
  v24 = 0;
  v25 = 0xE000000000000000;
  _StringGuts.grow(_:)(25);

  v24 = 0xD000000000000017;
  v25 = 0x80000002751B8C50;
  v26 = 0;
  v27 = 0xE000000000000000;
  _StringGuts.grow(_:)(30);
  MEMORY[0x277C6B720](0xD00000000000001CLL, 0x80000002751B9070);
  (v15)(v7, v2 + v18, v4);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  (*(v5 + 8))(v7, v4);
  MEMORY[0x277C6B720](v26, v27);

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t RequestManager.Request.cancel(with:)(uint64_t a1)
{
  v3 = *v1;
  v22 = type metadata accessor for DispatchWorkItemFlags();
  v25 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v23 = *(v6 - 8);
  v24 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = v3[11];
  v10 = *(v9 - 8);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v21 - v13;
  v21 = *(v1 + v3[15]);
  (*(v10 + 16))(&v21 - v13, a1, v9, v12);
  v15 = (*(v10 + 80) + 48) & ~*(v10 + 80);
  v16 = swift_allocObject();
  *(v16 + 2) = v3[10];
  *(v16 + 3) = v9;
  *(v16 + 4) = v3[12];
  *(v16 + 5) = v1;
  (*(v10 + 32))(&v16[v15], v14, v9);
  aBlock[4] = partial apply for closure #1 in RequestManager.Request.cancel(with:);
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_10;
  v17 = _Block_copy(aBlock);
  v18 = v21;

  static DispatchQoS.unspecified.getter();
  v26 = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  v19 = v22;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x277C6B8E0](0, v8, v5, v17);
  _Block_release(v17);

  (*(v25 + 8))(v5, v19);
  (*(v23 + 8))(v8, v24);
}

uint64_t closure #1 in RequestManager.Request.cancel(with:)(uint64_t a1, uint64_t a2)
{
  v3 = *(*a1 + 88);
  v4 = type metadata accessor for Optional();
  v5 = *(v4 - 8);
  v6.n128_f64[0] = MEMORY[0x28223BE20](v4);
  v8 = &v11 - v7;
  v9 = *(v3 - 8);
  (*(v9 + 16))(&v11 - v7, a2, v3, v6);
  (*(v9 + 56))(v8, 0, 1, v3);
  RequestManager.Request._cancel(with:)(v8);
  return (*(v5 + 8))(v8, v4);
}

uint64_t *RequestManager.Request.deinit()
{
  v1 = *v0;
  v2 = *(*v0 + 80);
  (*(*(v2 - 8) + 8))(v0 + *(*v0 + 104), v2);
  v3 = *(*v0 + 112);
  v4 = type metadata accessor for RequestManager.Request.State(0, v2, *(v1 + 88), *(v1 + 96));
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return v0;
}

uint64_t RequestManager.Request.__deallocating_deinit()
{
  RequestManager.Request.deinit();

  return swift_deallocClassInstance();
}

uint64_t *RequestManager.init(queue:)(void *a1)
{
  v2 = specialized RequestManager.init(queue:)(a1);

  return v2;
}

uint64_t _s14XPCDistributed14RequestManagerC04withB02id12replyHandler7performqd__x_qd__q_Sgqd_0_YKcnyAC0B0Cyxq__GXEtYaqd_0_YKs5ErrorRd_0_r0_lF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[9] = v8;
  v9[10] = v19;
  v9[7] = a8;
  v9[8] = v18;
  v9[5] = a6;
  v9[6] = a7;
  v9[3] = a2;
  v9[4] = a5;
  v9[2] = a1;
  v12 = *v8;
  v9[11] = *v8;
  v9[12] = *(a8 - 8);
  v9[13] = swift_task_alloc();
  v13 = type metadata accessor for Result();
  v9[14] = v13;
  v9[15] = *(v13 - 8);
  v9[16] = swift_task_alloc();
  v9[17] = swift_task_alloc();
  v14 = *(v12 + 80);
  v9[18] = v14;
  v9[19] = *(v14 - 8);
  v9[20] = swift_task_alloc();
  v15 = swift_allocObject();
  v9[21] = v15;
  *(v15 + 16) = a3;
  *(v15 + 24) = a4;

  return MEMORY[0x2822009F8](_s14XPCDistributed14RequestManagerC04withB02id12replyHandler7performqd__x_qd__q_Sgqd_0_YKcnyAC0B0Cyxq__GXEtYaqd_0_YKs5ErrorRd_0_r0_lFTY0_, 0, 0);
}

uint64_t _s14XPCDistributed14RequestManagerC04withB02id12replyHandler7performqd__x_qd__q_Sgqd_0_YKcnyAC0B0Cyxq__GXEtYaqd_0_YKs5ErrorRd_0_r0_lFTY0_()
{
  v1 = *(v0 + 160);
  v19 = *(v0 + 168);
  v2 = *(v0 + 144);
  v3 = *(v0 + 152);
  v5 = *(v0 + 64);
  v4 = *(v0 + 72);
  v7 = *(v0 + 48);
  v6 = *(v0 + 56);
  v8 = *(v0 + 24);
  type metadata accessor for RequestManager.Request(0, v2, *(*(v0 + 88) + 88), *(*(v0 + 88) + 96));
  v18 = *(v0 + 32);
  (*(v3 + 16))(v1, v8, v2);
  v9 = *(v4 + 16);
  v10 = swift_allocObject();
  *(v0 + 176) = v10;
  RequestManager.Request.init(id:queue:)(v1, v9);
  v11 = swift_task_alloc();
  *(v0 + 184) = v11;
  *(v11 + 16) = v7;
  *(v11 + 24) = v6;
  *(v11 + 32) = v5;
  *(v11 + 40) = v4;
  *(v11 + 48) = v8;
  *(v11 + 56) = v10;
  *(v11 + 64) = v19;
  *(v11 + 72) = v18;
  v12 = swift_task_alloc();
  *(v0 + 192) = v12;
  v12[2] = v7;
  v12[3] = v6;
  v12[4] = v5;
  v12[5] = v4;
  v12[6] = v10;
  v13 = v9;
  v14 = swift_task_alloc();
  *(v0 + 200) = v14;
  *v14 = v0;
  v14[1] = _s14XPCDistributed14RequestManagerC04withB02id12replyHandler7performqd__x_qd__q_Sgqd_0_YKcnyAC0B0Cyxq__GXEtYaqd_0_YKs5ErrorRd_0_r0_lFTQ1_;
  v15 = *(v0 + 136);
  v16 = *(v0 + 112);

  return MEMORY[0x282200830](v15, &_s14XPCDistributed14RequestManagerC04withB02id12replyHandler7performqd__x_qd__q_Sgqd_0_YKcnyAC0B0Cyxq__GXEtYaqd_0_YKs5ErrorRd_0_r0_lFs6ResultOyqd__qd_0_GyYaXEfU_TATu, v11, _s14XPCDistributed14RequestManagerC04withB02id12replyHandler7performqd__x_qd__q_Sgqd_0_YKcnyAC0B0Cyxq__GXEtYaqd_0_YKs5ErrorRd_0_r0_lFyyYbXEfU0_TA, v12, 0, 0, v16);
}

uint64_t _s14XPCDistributed14RequestManagerC04withB02id12replyHandler7performqd__x_qd__q_Sgqd_0_YKcnyAC0B0Cyxq__GXEtYaqd_0_YKs5ErrorRd_0_r0_lFTQ1_()
{
  *(*v1 + 208) = v0;

  if (v0)
  {
  }

  else
  {

    return MEMORY[0x2822009F8](_s14XPCDistributed14RequestManagerC04withB02id12replyHandler7performqd__x_qd__q_Sgqd_0_YKcnyAC0B0Cyxq__GXEtYaqd_0_YKs5ErrorRd_0_r0_lFTY2_, 0, 0);
  }
}

uint64_t _s14XPCDistributed14RequestManagerC04withB02id12replyHandler7performqd__x_qd__q_Sgqd_0_YKcnyAC0B0Cyxq__GXEtYaqd_0_YKs5ErrorRd_0_r0_lFTY2_()
{
  v1 = v0[26];
  v2 = v0[17];
  v3 = v0[14];
  v4 = v0[15];
  v5 = v0[13];
  v6 = v0[2];
  (*(v4 + 16))(v0[16], v2, v3);
  _ss6ResultOsRi_zRi0_zrlE3getxyq_YKF(v3, v5, v6);
  (*(v4 + 8))(v2, v3);
  v7 = v0[13];
  if (v1)
  {
    v8 = v0[12];
    v9 = v0[10];
    v10 = v0[7];

    (*(v8 + 32))(v9, v7, v10);
  }

  else
  {
  }

  v11 = v0[1];

  return v11();
}

uint64_t _s14XPCDistributed14RequestManagerC04withB02id12replyHandler7performqd__x_qd__q_Sgqd_0_YKcnyAC0B0Cyxq__GXEtYaqd_0_YKs5ErrorRd_0_r0_lFs6ResultOyqd__qd_0_GyYaXEfU_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[10] = v10;
  v8[11] = v11;
  v8[8] = a7;
  v8[9] = a8;
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a3;
  v8[5] = a4;
  v8[2] = a1;
  v8[3] = a2;
  return MEMORY[0x2822009F8](_s14XPCDistributed14RequestManagerC04withB02id12replyHandler7performqd__x_qd__q_Sgqd_0_YKcnyAC0B0Cyxq__GXEtYaqd_0_YKs5ErrorRd_0_r0_lFs6ResultOyqd__qd_0_GyYaXEfU_TY0_, 0, 0);
}

uint64_t _s14XPCDistributed14RequestManagerC04withB02id12replyHandler7performqd__x_qd__q_Sgqd_0_YKcnyAC0B0Cyxq__GXEtYaqd_0_YKs5ErrorRd_0_r0_lFs6ResultOyqd__qd_0_GyYaXEfU_TY0_()
{
  v2 = *(v0 + 80);
  v1 = *(v0 + 88);
  v3 = *(v0 + 72);
  v4 = swift_task_alloc();
  *(v0 + 96) = v4;
  v5 = *(v0 + 24);
  v6 = *(v0 + 40);
  v7 = *(v0 + 56);
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  *(v4 + 32) = v1;
  *(v4 + 40) = v5;
  *(v4 + 56) = v6;
  *(v4 + 72) = v7;
  v8 = swift_task_alloc();
  *(v0 + 104) = v8;
  v9 = type metadata accessor for Result();
  *v8 = v0;
  v8[1] = _s14XPCDistributed14RequestManagerC04withB02id12replyHandler7performqd__x_qd__q_Sgqd_0_YKcnyAC0B0Cyxq__GXEtYaqd_0_YKs5ErrorRd_0_r0_lFs6ResultOyqd__qd_0_GyYaXEfU_TQ1_;
  v10 = *(v0 + 16);

  return MEMORY[0x2822007B8](v10, 0, 0, 0xD000000000000025, 0x80000002751B9090, _s14XPCDistributed14RequestManagerC04withB02id12replyHandler7performqd__x_qd__q_Sgqd_0_YKcnyAC0B0Cyxq__GXEtYaqd_0_YKs5ErrorRd_0_r0_lFs6ResultOyqd__qd_0_GyYaXEfU_yScCyAOs5NeverOGXEfU_TA, v4, v9);
}

uint64_t _s14XPCDistributed14RequestManagerC04withB02id12replyHandler7performqd__x_qd__q_Sgqd_0_YKcnyAC0B0Cyxq__GXEtYaqd_0_YKs5ErrorRd_0_r0_lFs6ResultOyqd__qd_0_GyYaXEfU_TQ1_()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void _s14XPCDistributed14RequestManagerC04withB02id12replyHandler7performqd__x_qd__q_Sgqd_0_YKcnyAC0B0Cyxq__GXEtYaqd_0_YKs5ErrorRd_0_r0_lFs6ResultOyqd__qd_0_GyYaXEfU_yScCyAOs5NeverOGXEfU_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t), uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v12 = *(a2 + 16);
  OS_dispatch_queue.sync<A>(execute:)();

  if (v13 == 1)
  {
    a6(a4);
  }
}

uint64_t _s14XPCDistributed14RequestManagerC04withB02id12replyHandler7performqd__x_qd__q_Sgqd_0_YKcnyAC0B0Cyxq__GXEtYaqd_0_YKs5ErrorRd_0_r0_lFs6ResultOyqd__qd_0_GyYaXEfU_yScCyAOs5NeverOGXEfU_SbyXEfU_@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, _BYTE *a9@<X8>)
{
  v41 = a3;
  v37 = a7;
  v38 = a8;
  v35 = a5;
  v36 = a6;
  v39 = a4;
  v40 = a9;
  v30 = a2;
  v11 = *a1;
  type metadata accessor for Result();
  v43 = type metadata accessor for CheckedContinuation();
  v33 = *(v43 - 8);
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v43);
  v42 = &v30 - v12;
  v13 = v11[10];
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v17 = MEMORY[0x28223BE20](v16);
  v19 = &v30 - v18;
  v20 = *(v14 + 16);
  v20(&v30 - v18, a2, v13, v17);
  v44 = v41;
  swift_beginAccess();
  v32 = v11[11];
  v31 = v11[12];
  type metadata accessor for RequestManager.Request(255, v13, v32, v31);
  type metadata accessor for Dictionary();

  Dictionary.subscript.setter();
  swift_endAccess();
  (v20)(v19, v30, v13);
  v21 = v33;
  (*(v33 + 16))(v42, v35, v43);
  v22 = (*(v14 + 80) + 72) & ~*(v14 + 80);
  v23 = (v15 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = (*(v21 + 80) + v23 + 8) & ~*(v21 + 80);
  v25 = swift_allocObject();
  v26 = v32;
  *(v25 + 2) = v13;
  *(v25 + 3) = v26;
  v27 = v37;
  *(v25 + 4) = v36;
  *(v25 + 5) = v27;
  v28 = v38;
  *(v25 + 6) = v31;
  *(v25 + 7) = v28;
  *(v25 + 8) = a1;
  (*(v14 + 32))(&v25[v22], v19, v13);
  *&v25[v23] = v39;
  (*(v21 + 32))(&v25[v24], v42, v43);

  result = RequestManager.Request._setReplyHandler(to:)(_s14XPCDistributed14RequestManagerC04withB02id12replyHandler7performqd__x_qd__q_Sgqd_0_YKcnyAC0B0Cyxq__GXEtYaqd_0_YKs5ErrorRd_0_r0_lFs6ResultOyqd__qd_0_GyYaXEfU_yScCyAOs5NeverOGXEfU_SbyXEfU_yAHcfU_TA, v25);
  *v40 = result & 1;
  return result;
}

uint64_t _s14XPCDistributed14RequestManagerC04withB02id12replyHandler7performqd__x_qd__q_Sgqd_0_YKcnyAC0B0Cyxq__GXEtYaqd_0_YKs5ErrorRd_0_r0_lFs6ResultOyqd__qd_0_GyYaXEfU_yScCyAOs5NeverOGXEfU_SbyXEfU_yAHcfU_(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v23 = a7;
  v24 = a8;
  v25 = a1;
  v26 = a5;
  v22[1] = a3;
  v10 = *a2;
  v11 = type metadata accessor for Result();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = v22 - v16;
  v22[0] = a4 + 16;
  swift_beginAccess();
  v18 = v10[10];
  v19 = v10[11];
  v20 = v10[12];
  type metadata accessor for RequestManager.Request(255, v18, v19, v20);
  type metadata accessor for Dictionary();
  Dictionary.removeValue(forKey:)();
  swift_endAccess();

  v27 = v18;
  v28 = v19;
  v29 = a6;
  v30 = v23;
  v31 = v20;
  v32 = v24;
  v33 = v22[0];
  v34 = v25;
  _ss6ResultOsRi_zrlE8catchingAByxq_Gxyq_YKXE_tcfC(_s14XPCDistributed14RequestManagerC04withB02id12replyHandler7performqd__x_qd__q_Sgqd_0_YKcnyAC0B0Cyxq__GXEtYaqd_0_YKs5ErrorRd_0_r0_lFs6ResultOyqd__qd_0_GyYaXEfU_yScCyAOs5NeverOGXEfU_SbyXEfU_yAHcfU_qd__yqd_0_YKXEfU_TA, v17);
  (*(v12 + 16))(v14, v17, v11);
  type metadata accessor for CheckedContinuation();
  CheckedContinuation.resume(returning:)();
  return (*(v12 + 8))(v17, v11);
}

uint64_t _s14XPCDistributed14RequestManagerC04withB02id12replyHandler7performqd__x_qd__q_Sgqd_0_YKcnyAC0B0Cyxq__GXEtYaqd_0_YKs5ErrorRd_0_r0_lFs6ResultOyqd__qd_0_GyYaXEfU_yScCyAOs5NeverOGXEfU_SbyXEfU_yAHcfU_qd__yqd_0_YKXEfU_(void (**a1)(uint64_t, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v25[0] = a8;
  v12 = *(a6 - 8);
  MEMORY[0x28223BE20](a1);
  v14 = v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = v25 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = v25 - v19;
  swift_beginAccess();
  v21 = *a1;

  v22 = v25[5];
  v21(a2, v17);
  if (!v22)
  {
  }

  v23 = *(v12 + 32);
  v23(v20, v17, a6);
  v23(v14, v20, a6);
  (*(v12 + 16))(a9, v14, a6);
  swift_willThrowTyped(a9, a6, v25[0]);
  return (*(v12 + 8))(v14, a6);
}

uint64_t _ss6ResultOsRi_zrlE8catchingAByxq_Gxyq_YKXE_tcfC@<X0>(void (*a1)(_BYTE *)@<X0>, uint64_t a2@<X8>)
{
  MEMORY[0x28223BE20](a1);
  v5 = &v12[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for Result();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v12[-v9];
  (a1)(v5, v8);
  swift_storeEnumTagMultiPayload();
  return (*(v7 + 32))(a2, v10, v6);
}

uint64_t _s14XPCDistributed14RequestManagerC04withB02id12replyHandler7performqd__x_qd__q_Sgqd_0_YKcnyAC0B0Cyxq__GXEtYaqd_0_YKs5ErrorRd_0_r0_lFyyYbXEfU0_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for DispatchWorkItemFlags();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22[0] = type metadata accessor for DispatchQoS();
  v14 = *(v22[0] - 8);
  MEMORY[0x28223BE20](v22[0]);
  v16 = v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a1 + 16);
  v18 = swift_allocObject();
  v18[2] = a3;
  v18[3] = a4;
  v18[4] = a5;
  v18[5] = a2;
  aBlock[4] = _s14XPCDistributed14RequestManagerC04withB02id12replyHandler7performqd__x_qd__q_Sgqd_0_YKcnyAC0B0Cyxq__GXEtYaqd_0_YKs5ErrorRd_0_r0_lFyyYbXEfU0_yyYbcfU_TA;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_29;
  v19 = _Block_copy(aBlock);
  v20 = v17;

  static DispatchQoS.unspecified.getter();
  v22[1] = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x277C6B8E0](0, v16, v13, v19);
  _Block_release(v19);

  (*(v11 + 8))(v13, v10);
  (*(v14 + 8))(v16, v22[0]);
}

uint64_t _s14XPCDistributed14RequestManagerC04withB02id12replyHandler7performqd__x_qd__q_Sgqd_0_YKcnyAC0B0Cyxq__GXEtYaqd_0_YKs5ErrorRd_0_r0_lFyyYbXEfU0_yyYbcfU_(uint64_t a1)
{
  v1 = *(*a1 + 88);
  v2 = type metadata accessor for Optional();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  (*(*(v1 - 8) + 56))(&v8 - v5, 1, 1, v1, v4);
  RequestManager.Request._cancel(with:)(v6);
  return (*(v3 + 8))(v6, v2);
}

uint64_t _ss6ResultOsRi_zRi0_zrlE3getxyq_YKF@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return (*(*(a1[2] - 8) + 32))(a3, v3);
  }

  (*(*(a1[3] - 8) + 32))(a2, v3, a1[3]);
  return swift_willThrowTypedImpl();
}

uint64_t RequestManager.reply(to:with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v40 = a4;
  v41 = a5;
  v38 = a3;
  v36 = a2;
  v7 = *v5;
  v43 = type metadata accessor for DispatchWorkItemFlags();
  v46 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v42 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v44 = *(v9 - 8);
  v45 = v9;
  MEMORY[0x28223BE20](v9);
  v39 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = v7;
  v11 = *(v7 + 88);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v33 - v14;
  v34 = &v33 - v14;
  v16 = *(v7 + 80);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v20 = MEMORY[0x28223BE20](v19);
  v22 = &v33 - v21;
  v37 = v5[2];
  (*(v17 + 16))(&v33 - v21, a1, v16, v20);
  (*(v12 + 16))(v15, v36, v11);
  v23 = (*(v17 + 80) + 48) & ~*(v17 + 80);
  v24 = (v18 + *(v12 + 80) + v23) & ~*(v12 + 80);
  v25 = swift_allocObject();
  v26 = v35;
  *(v25 + 2) = v16;
  *(v25 + 3) = v11;
  *(v25 + 4) = *(v26 + 96);
  *(v25 + 5) = v5;
  (*(v17 + 32))(&v25[v23], v22, v16);
  (*(v12 + 32))(&v25[v24], v34, v11);
  aBlock[4] = v40;
  aBlock[5] = v25;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = v41;
  v27 = _Block_copy(aBlock);
  v28 = v37;

  v29 = v39;
  static DispatchQoS.unspecified.getter();
  v47 = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  v31 = v42;
  v30 = v43;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x277C6B8E0](0, v29, v31, v27);
  _Block_release(v27);

  (*(v46 + 8))(v31, v30);
  (*(v44 + 8))(v29, v45);
}

uint64_t closure #1 in RequestManager.reply(to:with:)(void *a1, uint64_t a2, uint64_t a3, void (*a4)(char *))
{
  v20 = a4;
  v7 = *a1;
  v8 = *(*a1 + 88);
  v9 = type metadata accessor for Optional();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v19 - v11;
  swift_beginAccess();
  v13 = a1[3];
  v14 = *(v7 + 80);
  v15 = *(v7 + 96);
  v16 = type metadata accessor for RequestManager.Request(0, v14, v8, v15);
  MEMORY[0x277C6B6A0](&v21, a2, v13, v14, v16, v15);
  if (!v21)
  {
    return swift_endAccess();
  }

  swift_endAccess();
  v17 = *(v8 - 8);
  (*(v17 + 16))(v12, a3, v8);
  (*(v17 + 56))(v12, 0, 1, v8);
  v20(v12);

  return (*(v10 + 8))(v12, v9);
}

uint64_t RequestManager.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

unint64_t __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = dispatch thunk of Hashable._rawHashValue(seed:)();

  return __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v6, a2, a3);
}

unint64_t __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22[1] = a1;
  v22[2] = a4;
  v7.n128_f64[0] = MEMORY[0x28223BE20](a1);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = v4;
  v10 = -1 << *(v4 + 32);
  v12 = v11 & ~v10;
  v22[0] = v4 + 64;
  if ((*(v4 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v10;
    v16 = *(v6 + 16);
    v14 = v6 + 16;
    v15 = v16;
    v17 = *(v14 + 56);
    v18 = (v14 - 8);
    do
    {
      v19 = v14;
      v15(v9, *(v23 + 48) + v17 * v12, a3, v7);
      v20 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*v18)(v9, a3);
      if (v20)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      v14 = v19;
    }

    while (((*(v22[0] + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  return v12;
}

unint64_t specialized Dictionary.init(dictionaryLiteral:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v13 = v24 - v12;
  if (MEMORY[0x277C6B780](a1, TupleTypeMetadata2, v11))
  {
    type metadata accessor for _DictionaryStorage();
    v14 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v14 = MEMORY[0x277D84F98];
  }

  result = MEMORY[0x277C6B790](a1, TupleTypeMetadata2);
  if (result)
  {
    if (result >= 1)
    {
      v24[0] = v10;
      v28 = a4;
      v16 = 0;
      v17 = *(TupleTypeMetadata2 + 48);
      v26 = a3;
      v27 = (v9 + 16);
      v24[2] = a2 - 8;
      v25 = v17;
      v24[1] = a3 - 8;
      while (1)
      {
        v18 = result;
        if (Array._hoistableIsNativeTypeChecked()())
        {
          (*(v9 + 16))(v13, a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v16, TupleTypeMetadata2);
        }

        else
        {
          result = _ArrayBuffer._getElementSlowPath(_:)();
          if (v24[0] != 8)
          {
            goto LABEL_19;
          }

          v29 = result;
          (*v27)(v13, &v29, TupleTypeMetadata2);
          swift_unknownObjectRelease();
        }

        result = __RawDictionaryStorage.find<A>(_:)(v13, a2, v28);
        if (v19)
        {
          break;
        }

        v20 = result;
        *(v14 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
        (*(*(a2 - 8) + 32))(v14[6] + *(*(a2 - 8) + 72) * result, v13, a2);
        result = (*(*(v26 - 8) + 32))(v14[7] + *(*(v26 - 8) + 72) * v20, &v13[v25]);
        v21 = v14[2];
        v22 = __OFADD__(v21, 1);
        v23 = v21 + 1;
        if (v22)
        {
          goto LABEL_17;
        }

        ++v16;
        v14[2] = v23;
        result = v18;
        if (v18 == v16)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_15:

    return v14;
  }

  return result;
}

uint64_t *specialized RequestManager.init(queue:)(void *a1)
{
  v3 = *v1;
  v1[2] = a1;
  v4 = v3[10];
  v5 = v3[12];
  v6 = type metadata accessor for RequestManager.Request(255, v4, v3[11], v5);
  v7 = a1;
  swift_getTupleTypeMetadata2();
  v8 = static Array._allocateUninitialized(_:)();
  v9 = specialized Dictionary.init(dictionaryLiteral:)(v8, v4, v6, v5);

  v1[3] = v9;
  return v1;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t _s14XPCDistributed14RequestManagerC04withB02id12replyHandler7performqd__x_qd__q_Sgqd_0_YKcnyAC0B0Cyxq__GXEtYaqd_0_YKs5ErrorRd_0_r0_lFs6ResultOyqd__qd_0_GyYaXEfU_TA(uint64_t a1)
{
  v12 = v1[2];
  v4 = v1[5];
  v5 = v1[6];
  v6 = v1[7];
  v7 = v1[8];
  v8 = v1[9];
  v9 = v1[10];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = partial apply for implicit closure #1 in XPCSystem.Session.LocalInterface.activateThenWithRemoteInterface<A>(perform:);

  return _s14XPCDistributed14RequestManagerC04withB02id12replyHandler7performqd__x_qd__q_Sgqd_0_YKcnyAC0B0Cyxq__GXEtYaqd_0_YKs5ErrorRd_0_r0_lFs6ResultOyqd__qd_0_GyYaXEfU_(a1, v4, v5, v6, v7, v8, v9, v12);
}

uint64_t objectdestroyTm()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 48) & ~v4;
  v6 = *(v2 - 8);
  v7 = *(v6 + 80);
  v8 = (v5 + *(v3 + 64) + v7) & ~v7;
  v9 = *(v6 + 64);
  v10 = v4 | v7;

  (*(v3 + 8))(v0 + v5, v1);
  (*(v6 + 8))(v0 + v8, v2);

  return MEMORY[0x2821FE8E8](v0, v8 + v9, v10 | 7);
}

uint64_t type metadata completion function for RequestManager.Request(void *a1)
{
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    result = type metadata accessor for RequestManager.Request.State(319, result, a1[11], a1[12]);
    if (v4 <= 0x3F)
    {
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t type metadata completion function for RequestManager.Request.State(uint64_t a1)
{
  result = type metadata accessor for Optional();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for ()();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RequestManager.Request.State(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 24) - 8);
  if (*(v3 + 84))
  {
    v4 = *(v3 + 64);
  }

  else
  {
    v4 = *(v3 + 64) + 1;
  }

  v5 = 16;
  if (v4 > 0x10)
  {
    v5 = v4;
  }

  v6 = (1u >> (8 * v5)) ^ 0xFD;
  if (v5 > 3)
  {
    v6 = 253;
  }

  if (!a2)
  {
    return 0;
  }

  if (v6 >= a2)
  {
    goto LABEL_30;
  }

  v7 = v5 + 1;
  v8 = 8 * (v5 + 1);
  if ((v5 + 1) <= 3)
  {
    v11 = ((~(-1 << v8) + a2 - v6) >> v8) + 1;
    if (HIWORD(v11))
    {
      v9 = *(a1 + v7);
      if (!v9)
      {
        goto LABEL_30;
      }

      goto LABEL_19;
    }

    if (v11 > 0xFF)
    {
      v9 = *(a1 + v7);
      if (!*(a1 + v7))
      {
        goto LABEL_30;
      }

      goto LABEL_19;
    }

    if (v11 < 2)
    {
LABEL_30:
      v13 = *(a1 + v5);
      if (v6 <= (v13 ^ 0xFFu))
      {
        return 0;
      }

      else
      {
        return (256 - v13);
      }
    }
  }

  v9 = *(a1 + v7);
  if (!*(a1 + v7))
  {
    goto LABEL_30;
  }

LABEL_19:
  v12 = (v9 - 1) << v8;
  if (v7 > 3)
  {
    v12 = 0;
  }

  if (v7)
  {
    if (v7 > 3)
    {
      LODWORD(v7) = 4;
    }

    if (v7 > 2)
    {
      if (v7 == 3)
      {
        LODWORD(v7) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v7) = *a1;
      }
    }

    else if (v7 == 1)
    {
      LODWORD(v7) = *a1;
    }

    else
    {
      LODWORD(v7) = *a1;
    }
  }

  return v6 + (v7 | v12) + 1;
}

void storeEnumTagSinglePayload for RequestManager.Request.State(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 24) - 8);
  if (*(v5 + 84))
  {
    v6 = *(v5 + 64);
  }

  else
  {
    v6 = *(v5 + 64) + 1;
  }

  if (v6 <= 0x10)
  {
    v6 = 16;
  }

  v7 = (1u >> (8 * v6)) ^ 0xFD;
  if (v6 > 3)
  {
    v7 = 253;
  }

  v8 = v6 + 1;
  if (v7 >= a3)
  {
    v9 = 0;
    if (v7 < a2)
    {
      goto LABEL_20;
    }

LABEL_24:
    if (v9 > 1)
    {
      if (v9 != 2)
      {
        *&a1[v8] = 0;
        if (!a2)
        {
          return;
        }

LABEL_36:
        a1[v6] = -a2;
        return;
      }

      *&a1[v8] = 0;
    }

    else if (v9)
    {
      a1[v8] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_36;
    }

    if (!a2)
    {
      return;
    }

    goto LABEL_36;
  }

  v9 = 1;
  if (v8 <= 3)
  {
    v10 = ((~(-1 << (8 * v8)) + a3 - v7) >> (8 * v8)) + 1;
    v11 = HIWORD(v10);
    if (v10 < 0x100)
    {
      v12 = 1;
    }

    else
    {
      v12 = 2;
    }

    if (v10 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    if (v11)
    {
      v9 = 4;
    }

    else
    {
      v9 = v13;
    }
  }

  if (v7 >= a2)
  {
    goto LABEL_24;
  }

LABEL_20:
  v14 = ~v7 + a2;
  if (v8 >= 4)
  {
    bzero(a1, v8);
    *a1 = v14;
    v15 = 1;
    if (v9 > 1)
    {
      goto LABEL_44;
    }

    goto LABEL_41;
  }

  v15 = (v14 >> (8 * v8)) + 1;
  if (v6 == -1)
  {
LABEL_40:
    if (v9 > 1)
    {
      goto LABEL_44;
    }

    goto LABEL_41;
  }

  v16 = v14 & ~(-1 << (8 * v8));
  bzero(a1, v8);
  if (v8 == 3)
  {
    *a1 = v16;
    a1[2] = BYTE2(v16);
    goto LABEL_40;
  }

  if (v8 == 2)
  {
    *a1 = v16;
    if (v9 > 1)
    {
LABEL_44:
      if (v9 == 2)
      {
        *&a1[v8] = v15;
      }

      else
      {
        *&a1[v8] = v15;
      }

      return;
    }
  }

  else
  {
    *a1 = v14;
    if (v9 > 1)
    {
      goto LABEL_44;
    }
  }

LABEL_41:
  if (v9)
  {
    a1[v8] = v15;
  }
}

unint64_t type metadata accessor for ()()
{
  result = lazy cache variable for type metadata for ();
  if (!lazy cache variable for type metadata for ())
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &lazy cache variable for type metadata for ());
  }

  return result;
}

uint64_t _s14XPCDistributed14RequestManagerC04withB02id12replyHandler7performqd__x_qd__q_Sgqd_0_YKcnyAC0B0Cyxq__GXEtYaqd_0_YKs5ErrorRd_0_r0_lFs6ResultOyqd__qd_0_GyYaXEfU_yScCyAOs5NeverOGXEfU_SbyXEfU_yAHcfU_TA(uint64_t a1)
{
  v3 = v1[4];
  v4 = v1[5];
  v5 = v1[7];
  v6 = (*(*(v1[2] - 8) + 80) + 72) & ~*(*(v1[2] - 8) + 80);
  v7 = (*(*(v1[2] - 8) + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  type metadata accessor for Result();
  v8 = *(type metadata accessor for CheckedContinuation() - 8);
  v9 = v1[8];
  v10 = *(v1 + v7);
  v11 = v1 + ((v7 + *(v8 + 80) + 8) & ~*(v8 + 80));

  return _s14XPCDistributed14RequestManagerC04withB02id12replyHandler7performqd__x_qd__q_Sgqd_0_YKcnyAC0B0Cyxq__GXEtYaqd_0_YKs5ErrorRd_0_r0_lFs6ResultOyqd__qd_0_GyYaXEfU_yScCyAOs5NeverOGXEfU_SbyXEfU_yAHcfU_(a1, v9, v1 + v6, v10, v11, v3, v4, v5);
}

uint64_t _s14XPCDistributed9XPCSystemC19withRemoteInterface4over7performxAC9TransportC_xAC7SessionC0dE0VYaXEtYaAC10SetupErrorVYKs8SendableRzlF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[9] = v6;
  v7[10] = a6;
  v7[7] = a3;
  v7[8] = a4;
  v7[5] = a1;
  v7[6] = a2;
  return MEMORY[0x2822009F8](_s14XPCDistributed9XPCSystemC19withRemoteInterface4over7performxAC9TransportC_xAC7SessionC0dE0VYaXEtYaAC10SetupErrorVYKs8SendableRzlFTY0_, 0, 0);
}

uint64_t _s14XPCDistributed9XPCSystemC19withRemoteInterface4over7performxAC9TransportC_xAC7SessionC0dE0VYaXEtYaAC10SetupErrorVYKs8SendableRzlFTY0_()
{
  v1 = v0[9];
  v2 = v0[6];
  type metadata accessor for XPCSystem.Session();
  swift_allocObject();

  v3 = _s14XPCDistributed9XPCSystemC7SessionC11actorSystem9transport7optionsAeC_AC9TransportCAE21InitializationOptionsVtAC10SetupErrorVYKcfc(v1, v2, 0, v0 + 2);
  v0[11] = v3;
  v4 = v0[7];
  v0[4] = v3;

  v8 = (v4 + *v4);
  v5 = swift_task_alloc();
  v0[12] = v5;
  *v5 = v0;
  v5[1] = _s14XPCDistributed9XPCSystemC19withRemoteInterface4over7performxAC9TransportC_xAC7SessionC0dE0VYaXEtYaAC10SetupErrorVYKs8SendableRzlFTQ1_;
  v6 = v0[5];

  return (v8)(v6, v0 + 4);
}

uint64_t _s14XPCDistributed9XPCSystemC19withRemoteInterface4over7performxAC9TransportC_xAC7SessionC0dE0VYaXEtYaAC10SetupErrorVYKs8SendableRzlFTQ1_()
{

  return MEMORY[0x2822009F8](_s14XPCDistributed9XPCSystemC19withRemoteInterface4over7performxAC9TransportC_xAC7SessionC0dE0VYaXEtYaAC10SetupErrorVYKs8SendableRzlFTY2_, 0, 0);
}

uint64_t _s14XPCDistributed9XPCSystemC19withRemoteInterface4over7performxAC9TransportC_xAC7SessionC0dE0VYaXEtYaAC10SetupErrorVYKs8SendableRzlFTY2_()
{
  v1._object = 0x80000002751B9420;
  v1._countAndFlagsBits = 0xD000000000000033;
  XPCSystem.Session.cancel(because:)(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t _s14XPCDistributed9XPCSystemC19withRemoteInterface4over7performs6ResultOyxq_GAC9TransportC_xAC7SessionC0dE0VYaq_YKXEtYaAC10SetupErrorVYKs8SendableRzs0L0R_r0_lF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[11] = v8;
  v9[12] = a8;
  v9[9] = a6;
  v9[10] = a7;
  v9[7] = a4;
  v9[8] = a5;
  v9[5] = a2;
  v9[6] = a3;
  v9[4] = a1;
  return MEMORY[0x2822009F8](_s14XPCDistributed9XPCSystemC19withRemoteInterface4over7performs6ResultOyxq_GAC9TransportC_xAC7SessionC0dE0VYaq_YKXEtYaAC10SetupErrorVYKs8SendableRzs0L0R_r0_lFTY0_, 0, 0);
}

uint64_t _s14XPCDistributed9XPCSystemC19withRemoteInterface4over7performs6ResultOyxq_GAC9TransportC_xAC7SessionC0dE0VYaq_YKXEtYaAC10SetupErrorVYKs8SendableRzs0L0R_r0_lFTY0_()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);
  v3 = *(v0 + 64);
  v4 = swift_task_alloc();
  *(v0 + 104) = v4;
  v5 = *(v0 + 48);
  *(v4 + 16) = v3;
  *(v4 + 24) = v1;
  *(v4 + 32) = v2;
  *(v4 + 40) = v5;
  v6 = swift_task_alloc();
  *(v0 + 112) = v6;
  type metadata accessor for Result();
  *v6 = v0;
  v6[1] = _s14XPCDistributed9XPCSystemC19withRemoteInterface4over7performs6ResultOyxq_GAC9TransportC_xAC7SessionC0dE0VYaq_YKXEtYaAC10SetupErrorVYKs8SendableRzs0L0R_r0_lFTQ1_;
  v8 = *(v0 + 32);
  v9 = *(v0 + 40);

  return _s14XPCDistributed9XPCSystemC19withRemoteInterface4over7performxAC9TransportC_xAC7SessionC0dE0VYaXEtYaAC10SetupErrorVYKs8SendableRzlF(v8, v9, &_s14XPCDistributed9XPCSystemC19withRemoteInterface4over7performs6ResultOyxq_GAC9TransportC_xAC7SessionC0dE0VYaq_YKXEtYaAC10SetupErrorVYKs8SendableRzs0L0R_r0_lFAiOYaXEfU_TATu, v4, v7, v0 + 16);
}

uint64_t _s14XPCDistributed9XPCSystemC19withRemoteInterface4over7performs6ResultOyxq_GAC9TransportC_xAC7SessionC0dE0VYaq_YKXEtYaAC10SetupErrorVYKs8SendableRzs0L0R_r0_lFTQ1_()
{
  v2 = *v1;

  if (v0)
  {

    return MEMORY[0x2822009F8](_s14XPCDistributed9XPCSystemC19withRemoteInterface4over7performs6ResultOyxq_GAC9TransportC_xAC7SessionC0dE0VYaq_YKXEtYaAC10SetupErrorVYKs8SendableRzs0L0R_r0_lFTY2_, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t _s14XPCDistributed9XPCSystemC19withRemoteInterface4over7performs6ResultOyxq_GAC9TransportC_xAC7SessionC0dE0VYaq_YKXEtYaAC10SetupErrorVYKs8SendableRzs0L0R_r0_lFTY2_()
{
  v1 = v0[12];
  v2 = v0[3];
  *v1 = v0[2];
  v1[1] = v2;

  v3 = v0[1];

  return v3();
}

uint64_t _s14XPCDistributed9XPCSystemC19withRemoteInterface4over7performs6ResultOyxq_GAC9TransportC_xAC7SessionC0dE0VYaq_YKXEtYaAC10SetupErrorVYKs8SendableRzs0L0R_r0_lFAiOYaXEfU_TA(uint64_t a1, void *a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v10 = v2[6];
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = partial apply for implicit closure #1 in XPCSystem.Session.LocalInterface.activateThenWithRemoteInterface<A>(perform:);

  return _s14XPCDistributed9XPCSystemC7SessionC14LocalInterfaceV022activateThenWithRemoteE07performs6ResultOyxq_G6result_AG15ActivationTokenV5tokentxAE0iE0VYaq_YKXE_tYas8SendableRzs5ErrorR_r0_lFAlRYaXEfU_(a1, a2, v9, v10, v6, v7, v8);
}

uint64_t _s14XPCDistributed9XPCSystemC26withBidirectionalInterface4over7performxAC9TransportC_x6result_AC7SessionC05LocalE0V15ActivationTokenV5tokentAMnYaXEtYaAC10SetupErrorVYKs8SendableRzlF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[10] = v6;
  v7[11] = a6;
  v7[8] = a3;
  v7[9] = a4;
  v7[6] = a1;
  v7[7] = a2;
  return MEMORY[0x2822009F8](_s14XPCDistributed9XPCSystemC26withBidirectionalInterface4over7performxAC9TransportC_x6result_AC7SessionC05LocalE0V15ActivationTokenV5tokentAMnYaXEtYaAC10SetupErrorVYKs8SendableRzlFTY0_, 0, 0);
}

uint64_t _s14XPCDistributed9XPCSystemC26withBidirectionalInterface4over7performxAC9TransportC_x6result_AC7SessionC05LocalE0V15ActivationTokenV5tokentAMnYaXEtYaAC10SetupErrorVYKs8SendableRzlFTY0_()
{
  v1 = v0[10];
  v2 = v0[7];
  type metadata accessor for XPCSystem.Session();
  swift_allocObject();

  v3 = _s14XPCDistributed9XPCSystemC7SessionC11actorSystem9transport7optionsAeC_AC9TransportCAE21InitializationOptionsVtAC10SetupErrorVYKcfc(v1, v2, 2, v0 + 2);
  v0[12] = v3;
  v4 = v0[8];
  v0[5] = v3;

  v8 = (v4 + *v4);
  v5 = swift_task_alloc();
  v0[13] = v5;
  *v5 = v0;
  v5[1] = _s14XPCDistributed9XPCSystemC26withBidirectionalInterface4over7performxAC9TransportC_x6result_AC7SessionC05LocalE0V15ActivationTokenV5tokentAMnYaXEtYaAC10SetupErrorVYKs8SendableRzlFTQ1_;
  v6 = v0[6];

  return (v8)(v6, v0 + 4, v0 + 5);
}

uint64_t _s14XPCDistributed9XPCSystemC26withBidirectionalInterface4over7performxAC9TransportC_x6result_AC7SessionC05LocalE0V15ActivationTokenV5tokentAMnYaXEtYaAC10SetupErrorVYKs8SendableRzlFTQ1_()
{

  return MEMORY[0x2822009F8](_s14XPCDistributed9XPCSystemC26withBidirectionalInterface4over7performxAC9TransportC_x6result_AC7SessionC05LocalE0V15ActivationTokenV5tokentAMnYaXEtYaAC10SetupErrorVYKs8SendableRzlFTY2_, 0, 0);
}

uint64_t _s14XPCDistributed9XPCSystemC26withBidirectionalInterface4over7performxAC9TransportC_x6result_AC7SessionC05LocalE0V15ActivationTokenV5tokentAMnYaXEtYaAC10SetupErrorVYKs8SendableRzlFTY2_()
{
  v1 = v0[12];
  v2 = v0[4];
  v3._object = 0x80000002751B9420;
  v3._countAndFlagsBits = 0xD000000000000033;
  XPCSystem.Session.cancel(because:)(v3);
  if (v2 != *(v1 + 24))
  {
    return _assertionFailure(_:_:file:line:flags:)();
  }

  v4 = v0[1];

  return v4();
}

uint64_t _s14XPCDistributed9XPCSystemC19makeRemoteInterface4overAC7SessionC0dE0VAC9TransportC_tYaAC10SetupErrorVYKF(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[6] = v3;
  v4[7] = a3;
  v4[4] = a1;
  v4[5] = a2;
  return MEMORY[0x2822009F8](_s14XPCDistributed9XPCSystemC19makeRemoteInterface4overAC7SessionC0dE0VAC9TransportC_tYaAC10SetupErrorVYKFTY0_, 0, 0);
}

uint64_t _s14XPCDistributed9XPCSystemC19makeRemoteInterface4overAC7SessionC0dE0VAC9TransportC_tYaAC10SetupErrorVYKFTY0_()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  type metadata accessor for XPCSystem.Session();
  swift_allocObject();

  **(v0 + 32) = _s14XPCDistributed9XPCSystemC7SessionC11actorSystem9transport7optionsAeC_AC9TransportCAE21InitializationOptionsVtAC10SetupErrorVYKcfc(v2, v1, 0, (v0 + 16));
  v3 = *(v0 + 8);

  return v3();
}

uint64_t _s14XPCDistributed9XPCSystemC26makeBidirectionalInterface4over011assumeLocalE11ActivatedInAC7SessionC06RemoteE0VAC9TransportC_ScTyAH0hE0V15ActivationTokenVs5NeverOGAN16UncheckedHandoffVXEtYaAC10SetupErrorVYKF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[8] = v5;
  v6[9] = a5;
  v6[6] = a3;
  v6[7] = a4;
  v6[4] = a1;
  v6[5] = a2;
  return MEMORY[0x2822009F8](_s14XPCDistributed9XPCSystemC26makeBidirectionalInterface4over011assumeLocalE11ActivatedInAC7SessionC06RemoteE0VAC9TransportC_ScTyAH0hE0V15ActivationTokenVs5NeverOGAN16UncheckedHandoffVXEtYaAC10SetupErrorVYKFTY0_, 0, 0);
}

uint64_t _s14XPCDistributed9XPCSystemC26makeBidirectionalInterface4over011assumeLocalE11ActivatedInAC7SessionC06RemoteE0VAC9TransportC_ScTyAH0hE0V15ActivationTokenVs5NeverOGAN16UncheckedHandoffVXEtYaAC10SetupErrorVYKFTY0_()
{
  v12 = v0;
  v1 = v0[8];
  v2 = v0[5];
  type metadata accessor for XPCSystem.Session();
  swift_allocObject();

  v3 = _s14XPCDistributed9XPCSystemC7SessionC11actorSystem9transport7optionsAeC_AC9TransportCAE21InitializationOptionsVtAC10SetupErrorVYKcfc(v1, v2, 6, v0 + 2);
  v4 = v0[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14XPCDistributed12SynchronizedCyAA9XPCSystemC7SessionCSgGMd, &_s14XPCDistributed12SynchronizedCyAA9XPCSystemC7SessionCSgGMR);
  v5 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *(v5 + 16) = v6;
  *(v5 + 24) = v3;
  v11 = v5;

  v7 = v4(&v11);

  _s14XPCDistributed9XPCSystemC7SessionC14readyToReceiveyyScTyAE14LocalInterfaceV15ActivationTokenVs5NeverOGAC10SetupErrorVYKF(v7, v0 + 2);
  v8 = v0[4];

  *v8 = v3;
  v9 = v0[1];

  return v9();
}

uint64_t TestHook.ActorReference.__allocating_init<A>(_:as:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = swift_allocObject();
  dispatch thunk of Identifiable.id.getter();
  *(v6 + 16) = v8;
  *(v6 + 32) = v9;
  *(v6 + 48) = *v10;
  *(v6 + 58) = *&v10[10];
  *(v6 + 80) = a1;
  *(v6 + 88) = a4;
  return v6;
}

uint64_t TestHook.ActorReference.init<A>(_:as:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  dispatch thunk of Identifiable.id.getter();
  *(v4 + 16) = v8;
  *(v4 + 32) = v9;
  *(v4 + 48) = *v10;
  *(v4 + 58) = *&v10[10];
  *(v4 + 80) = a1;
  *(v4 + 88) = a4;
  return v4;
}

uint64_t TestHook.ActorReference.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  TestHook.ActorReference.init(from:)(a1);
  return v2;
}

uint64_t *TestHook.ActorReference.init(from:)(void *a1)
{
  v3 = v1;
  v5 = *v1;
  v6 = type metadata accessor for CodingUserInfoKey();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Decoder(a1, v20);
  XPCSystem.ActorID.init(from:)(v20, v21);
  if (v2)
  {
    swift_deallocPartialClassInstance();
    goto LABEL_6;
  }

  v19 = v5;
  v10 = v21[1];
  *(v1 + 1) = v21[0];
  *(v1 + 2) = v10;
  *(v1 + 3) = v22[0];
  *(v1 + 58) = *(v22 + 10);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v11 = dispatch thunk of Decoder.userInfo.getter();
  static CodingUserInfoKey.actorSystemKey.getter();
  if (*(v11 + 16))
  {
    v12 = specialized __RawDictionaryStorage.find<A>(_:)(v9);
    if (v13)
    {
      outlined init with copy of Any(*(v11 + 56) + 32 * v12, v20);

      (*(v7 + 8))(v9, v6);
      outlined init with take of Any(v20, v21);
      type metadata accessor for XPCSystem(0);
      swift_dynamicCast();
      v14 = v23;
      v15 = v19;
      outlined init with copy of XPCSystem.ActorID((v3 + 2), v21);
      *&v20[0] = v14;
      v16 = *(*(v15 + 88) + 8);
      v17 = dispatch thunk of static DistributedActor.resolve(id:using:)();
      outlined destroy of XPCSystem.ActorID(v21);

      v3[10] = v17;
      v3[11] = v16;
LABEL_6:
      __swift_destroy_boxed_opaque_existential_1Tm(a1);
      return v3;
    }
  }

  __break(1u);
  return result;
}

uint64_t TestHook.ActorReference.resolve()()
{
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11Distributed0A5Actor_pMd, &_s11Distributed0A5Actor_pMR);
  if (swift_dynamicCast())
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t TestHook.ActorReference.deinit()
{
  outlined destroy of XPCSystem.ActorID(v0 + 16);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t TestHook.ActorReference.__deallocating_deinit()
{
  outlined destroy of XPCSystem.ActorID(v0 + 16);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t protocol witness for Decodable.init(from:) in conformance TestHook.ActorReference<A>@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = TestHook.ActorReference.__allocating_init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t XPCSystem.RawActorID.Remote.init(session:key:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  result = outlined init with take of Hashable & Sendable(a1, a5);
  *(a5 + 40) = a2;
  *(a5 + 48) = a3;
  *(a5 + 56) = a4;
  return result;
}

__n128 XPCSystem.ActorID.init(rawActorID:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v2;
  *(a2 + 32) = *(a1 + 32);
  result = *(a1 + 42);
  *(a2 + 42) = result;
  return result;
}

uint64_t static TestHook.sharedActorKey(for:)(uint64_t a1)
{
  v1 = *(a1 + 40);
  outlined copy of XPCSystem.SharedActorKey(v1, *(a1 + 48), *(a1 + 56));
  return v1;
}

BOOL specialized Collection<>.popFirst()()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24) >> 1;
  if (v1 != v2)
  {
    if (v1 >= v2)
    {
      __break(1u);
      return result;
    }

    *(v0 + 16) = v1 + 1;
  }

  return v1 == v2;
}

uint64_t XPCSystem.SharedActorKey.debugDescription.getter(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    if (a3 == 1)
    {
      _StringGuts.grow(_:)(16);

      strcpy(v7, "preset_forKey_");
      HIBYTE(v7[1]) = -18;
      MEMORY[0x277C6B720](a1, a2);
    }

    else
    {
      strcpy(v7, "dynamic_");
      BYTE1(v7[1]) = 0;
      WORD1(v7[1]) = 0;
      HIDWORD(v7[1]) = -402653184;
      v5 = String.init<A>(describing:)();
      MEMORY[0x277C6B720](v5);
    }
  }

  else
  {
    v7[0] = 0;
    v7[1] = 0xE000000000000000;
    MEMORY[0x277C6B720](0x5F746573657270, 0xE700000000000000);
    _print_unlocked<A, B>(_:_:)();
  }

  return v7[0];
}

uint64_t XPCSystem.ActorID.encode(to:)(void *a1)
{
  outlined init with copy of XPCSystem.RawActorID(v1, &v19);
  if (v21)
  {
    outlined destroy of XPCSystem.RawActorID(&v19);
  }

  else
  {
    v3 = v19;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v4 = dispatch thunk of Encoder.userInfo.getter();
    if (one-time initialization token for sessionKey != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for CodingUserInfoKey();
    v6 = __swift_project_value_buffer(v5, static CodingUserInfoKey.sessionKey);
    if (*(v4 + 16) && (v7 = specialized __RawDictionaryStorage.find<A>(_:)(v6), (v8 & 1) != 0))
    {
      outlined init with copy of Any(*(v4 + 56) + 32 * v7, &v19);

      outlined init with take of Any(&v19, v18);
      outlined init with copy of Any(v18, &v19);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s14XPCDistributed9XPCSystemC22InboundSessionProtocol_pMd, &_s14XPCDistributed9XPCSystemC22InboundSessionProtocol_pMR);
      if ((swift_dynamicCast() & 1) != 0 && v16)
      {
        ObjectType = swift_getObjectType();
        v10 = (*(v17 + 32))(v3, *(&v3 + 1), ObjectType);
        v12 = v11;
        v14 = v13;
        __swift_project_boxed_opaque_existential_1(a1, a1[3]);
        dispatch thunk of Encoder.singleValueContainer()();
        __swift_mutable_project_boxed_opaque_existential_1(&v19, v20);
        lazy protocol witness table accessor for type XPCSystem.SharedActorKey and conformance XPCSystem.SharedActorKey();
        dispatch thunk of SingleValueEncodingContainer.encode<A>(_:)();
        __swift_destroy_boxed_opaque_existential_1Tm(v18);
        swift_unknownObjectRelease();
        outlined consume of XPCSystem.SharedActorKey(v10, v12, v14);
        return __swift_destroy_boxed_opaque_existential_1Tm(&v19);
      }
    }

    else
    {
    }
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t XPCSystem.ActorID.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v5 = dispatch thunk of Decoder.userInfo.getter();
  if (one-time initialization token for sessionKey != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for CodingUserInfoKey();
  v7 = __swift_project_value_buffer(v6, static CodingUserInfoKey.sessionKey);
  if (!*(v5 + 16) || (v8 = specialized __RawDictionaryStorage.find<A>(_:)(v7), (v9 & 1) == 0))
  {

LABEL_14:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  outlined init with copy of Any(*(v5 + 56) + 32 * v8, &v15);

  outlined init with take of Any(&v15, v20);
  outlined init with copy of Any(v20, v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14XPCDistributed9XPCSystemC23OutboundSessionProtocol_pMd, &_s14XPCDistributed9XPCSystemC23OutboundSessionProtocol_pMR);
  if ((swift_dynamicCast() & 1) == 0)
  {
    *v17 = 0;
    v15 = 0u;
    v16 = 0u;
    goto LABEL_13;
  }

  if (!*(&v16 + 1))
  {
LABEL_13:
    outlined destroy of Result<XPCSystem.Transport.Packet.Payload, XPCSystem.Transport.TransportError>(&v15, &_s14XPCDistributed9XPCSystemC23OutboundSessionProtocol_pSgMd, &_s14XPCDistributed9XPCSystemC23OutboundSessionProtocol_pSgMR);
    goto LABEL_14;
  }

  outlined init with take of Hashable & Sendable(&v15, v19);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Decoder.singleValueContainer()();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v19);
    v10 = v20;
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(v18, v18[3]);
    lazy protocol witness table accessor for type XPCSystem.SharedActorKey and conformance XPCSystem.SharedActorKey();
    dispatch thunk of SingleValueDecodingContainer.decode<A>(_:)();
    __swift_destroy_boxed_opaque_existential_1Tm(v20);
    v11 = v15;
    v12 = v16;
    outlined init with take of Hashable & Sendable(v19, &v15);
    *&v17[8] = v11;
    v17[24] = v12;
    v13 = v16;
    *a2 = v15;
    *(a2 + 16) = v13;
    *(a2 + 32) = *v17;
    *(a2 + 41) = *&v17[9];
    *(a2 + 57) = 1;
    v10 = v18;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v10);
  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t XPCSystem.RawActorID.debugDescription.getter()
{
  outlined init with copy of XPCSystem.RawActorID(v0, &v15);
  if (v18)
  {
    v13[1] = v16;
    *v14 = *v17;
    v13[0] = v15;
    *&v14[9] = *&v17[9];
    v11 = 0x3A65746F6D6572;
    v12 = 0xE700000000000000;
    v9 = 0;
    v10 = 0xE000000000000000;
    v1 = *(&v16 + 1);
    v2 = *v17;
    __swift_project_boxed_opaque_existential_1(v13, *(&v16 + 1));
    (*(*(v2 + 8) + 24))(&v6, v1);
    v8 = v6;
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x277C6B720](14906, 0xE200000000000000);
    v6 = *&v14[8];
    v7 = v14[24];
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x277C6B720](v9, v10);

    v3 = v11;
    outlined destroy of XPCSystem.RawActorID.Remote(v13);
  }

  else
  {
    v4 = *(&v15 + 1);
    *(&v13[0] + 1) = 0xE600000000000000;
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x277C6B720](14906, 0xE200000000000000);
    v11 = v4;
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x277C6B720](0, 0xE000000000000000);

    return 0x3A6C61636F6CLL;
  }

  return v3;
}

Swift::Int XPCSystem.RawActorID.Local.hashValue.getter(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  MEMORY[0x277C6BCE0](a1);
  MEMORY[0x277C6BCE0](a2);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance XPCSystem.RawActorID.Local()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  MEMORY[0x277C6BCE0](v1);
  MEMORY[0x277C6BCE0](v2);
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance XPCSystem.RawActorID.Local()
{
  v1 = v0[1];
  MEMORY[0x277C6BCE0](*v0);
  return MEMORY[0x277C6BCE0](v1);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance XPCSystem.RawActorID.Local(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  Hasher.init(_seed:)();
  MEMORY[0x277C6BCE0](v2);
  MEMORY[0x277C6BCE0](v3);
  return Hasher._finalize()();
}

uint64_t XPCSystem.RawActorID.Remote.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = *(v1 + 24);
  v3 = *(v1 + 32);
  __swift_project_boxed_opaque_existential_1(v2, v4);
  (*(*(v3 + 8) + 24))(&v8, v4);
  MEMORY[0x277C6BCE0](v8);
  v5 = *(v2 + 40);
  if (!*(v2 + 56))
  {
    v6 = 0;
    goto LABEL_5;
  }

  if (*(v2 + 56) == 1)
  {
    v6 = 1;
LABEL_5:
    MEMORY[0x277C6BCC0](v6);
    return String.hash(into:)();
  }

  MEMORY[0x277C6BCC0](2);
  return MEMORY[0x277C6BCE0](v5);
}

uint64_t XPCSystem.SharedActorKey.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    if (a4 != 1)
    {
      MEMORY[0x277C6BCC0](2);
      return MEMORY[0x277C6BCE0](a2);
    }

    v5 = 1;
  }

  else
  {
    v5 = 0;
  }

  MEMORY[0x277C6BCC0](v5);

  return String.hash(into:)();
}

BOOL XPCSystem.RawActorID.Remote.belongsTo(actorSystem:)(uint64_t a1)
{
  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  v5 = (*(v4 + 24))(v3, v4);

  return v5 == a1;
}

Swift::Int XPCSystem.RawActorID.Remote.hashValue.getter()
{
  v1 = v0;
  Hasher.init(_seed:)();
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  __swift_project_boxed_opaque_existential_1(v1, v2);
  (*(*(v3 + 8) + 24))(&v7, v2);
  MEMORY[0x277C6BCE0](v7);
  v4 = *(v1 + 40);
  if (*(v1 + 56))
  {
    if (*(v1 + 56) != 1)
    {
      MEMORY[0x277C6BCC0](2);
      MEMORY[0x277C6BCE0](v4);
      return Hasher._finalize()();
    }

    v5 = 1;
  }

  else
  {
    v5 = 0;
  }

  MEMORY[0x277C6BCC0](v5);
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance XPCSystem.RawActorID.Remote(uint64_t a1)
{
  v2 = v1;
  v4 = *(v1 + 24);
  v3 = *(v1 + 32);
  __swift_project_boxed_opaque_existential_1(v2, v4);
  (*(*(v3 + 8) + 24))(&v8, v4);
  MEMORY[0x277C6BCE0](v8);
  v5 = *(v2 + 40);
  if (!*(v2 + 56))
  {
    v6 = 0;
    goto LABEL_5;
  }

  if (*(v2 + 56) == 1)
  {
    v6 = 1;
LABEL_5:
    MEMORY[0x277C6BCC0](v6);
    return String.hash(into:)();
  }

  MEMORY[0x277C6BCC0](2);
  return MEMORY[0x277C6BCE0](v5);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance XPCSystem.RawActorID.Remote(uint64_t a1)
{
  v2 = v1;
  Hasher.init(_seed:)();
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  __swift_project_boxed_opaque_existential_1(v2, v3);
  (*(*(v4 + 8) + 24))(&v8, v3);
  MEMORY[0x277C6BCE0](v8);
  v5 = *(v2 + 40);
  if (*(v2 + 56))
  {
    if (*(v2 + 56) != 1)
    {
      MEMORY[0x277C6BCC0](2);
      MEMORY[0x277C6BCE0](v5);
      return Hasher._finalize()();
    }

    v6 = 1;
  }

  else
  {
    v6 = 0;
  }

  MEMORY[0x277C6BCC0](v6);
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t XPCSystem.RawActorID.hash(into:)(uint64_t a1)
{
  outlined init with copy of XPCSystem.RawActorID(v1, v12);
  if ((v14 & 1) == 0)
  {
    v6 = v12[0];
    MEMORY[0x277C6BCC0](0);
    MEMORY[0x277C6BCE0](v6);
    return MEMORY[0x277C6BCE0](*(&v6 + 1));
  }

  v9 = v12[0];
  v10 = v12[1];
  *v11 = *v13;
  *&v11[9] = *&v13[9];
  MEMORY[0x277C6BCC0](1);
  v3 = *(&v10 + 1);
  v2 = *v11;
  __swift_project_boxed_opaque_existential_1(&v9, *(&v10 + 1));
  (*(*(v2 + 8) + 24))(&v8, v3);
  MEMORY[0x277C6BCE0](v8);
  v4 = *&v11[8];
  if (v11[24])
  {
    if (v11[24] != 1)
    {
      MEMORY[0x277C6BCC0](2);
      MEMORY[0x277C6BCE0](v4);
      return outlined destroy of XPCSystem.RawActorID.Remote(&v9);
    }

    v5 = 1;
  }

  else
  {
    v5 = 0;
  }

  MEMORY[0x277C6BCC0](v5);
  String.hash(into:)();
  return outlined destroy of XPCSystem.RawActorID.Remote(&v9);
}

Swift::Int XPCSystem.ActorID.hashValue.getter()
{
  Hasher.init(_seed:)();
  XPCSystem.RawActorID.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance XPCSystem.ActorID(uint64_t a1)
{
  Hasher.init(_seed:)();
  XPCSystem.RawActorID.hash(into:)(v2);
  return Hasher._finalize()();
}

uint64_t XPCSystem.SharedActorKey.init(from:)(uint64_t a1)
{
  v2 = *(a1 + 40);
  outlined copy of XPCSystem.SharedActorKey(v2, *(a1 + 48), *(a1 + 56));
  outlined destroy of XPCSystem.RawActorID.Remote(a1);
  return v2;
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance XPCSystem.SharedActorKey.CodingKeys()
{
  v1 = 0xD000000000000010;
  if (*v0 != 1)
  {
    v1 = 0x63696D616E7964;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x646574726F707865;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance XPCSystem.SharedActorKey.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized XPCSystem.SharedActorKey.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance XPCSystem.SharedActorKey.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type XPCSystem.SharedActorKey.CodingKeys and conformance XPCSystem.SharedActorKey.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance XPCSystem.SharedActorKey.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type XPCSystem.SharedActorKey.CodingKeys and conformance XPCSystem.SharedActorKey.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance XPCSystem.SharedActorKey.DynamicCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type XPCSystem.SharedActorKey.DynamicCodingKeys and conformance XPCSystem.SharedActorKey.DynamicCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance XPCSystem.SharedActorKey.DynamicCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type XPCSystem.SharedActorKey.DynamicCodingKeys and conformance XPCSystem.SharedActorKey.DynamicCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance XPCSystem.SharedActorKey.ExportedCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type XPCSystem.SharedActorKey.ExportedCodingKeys and conformance XPCSystem.SharedActorKey.ExportedCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance XPCSystem.SharedActorKey.ExportedCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type XPCSystem.SharedActorKey.ExportedCodingKeys and conformance XPCSystem.SharedActorKey.ExportedCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance XPCSystem.SharedActorKey.DynamicCodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance XPCSystem.SharedActorKey.ExportedRawValueCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type XPCSystem.SharedActorKey.ExportedRawValueCodingKeys and conformance XPCSystem.SharedActorKey.ExportedRawValueCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance XPCSystem.SharedActorKey.ExportedRawValueCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type XPCSystem.SharedActorKey.ExportedRawValueCodingKeys and conformance XPCSystem.SharedActorKey.ExportedRawValueCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t XPCSystem.SharedActorKey.encode(to:)(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v28 = a4;
  v27 = a3;
  v29 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14XPCDistributed9XPCSystemC14SharedActorKeyO17DynamicCodingKeys33_9CCE54CB0967057F6206FADB16F86B43LLOGMd, &_ss22KeyedEncodingContainerVy14XPCDistributed9XPCSystemC14SharedActorKeyO17DynamicCodingKeys33_9CCE54CB0967057F6206FADB16F86B43LLOGMR);
  v25 = *(v5 - 8);
  v26 = v5;
  MEMORY[0x28223BE20](v5);
  v24 = &v20 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14XPCDistributed9XPCSystemC14SharedActorKeyO26ExportedRawValueCodingKeys33_9CCE54CB0967057F6206FADB16F86B43LLOGMd, &_ss22KeyedEncodingContainerVy14XPCDistributed9XPCSystemC14SharedActorKeyO26ExportedRawValueCodingKeys33_9CCE54CB0967057F6206FADB16F86B43LLOGMR);
  v22 = *(v7 - 8);
  v23 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14XPCDistributed9XPCSystemC14SharedActorKeyO18ExportedCodingKeys33_9CCE54CB0967057F6206FADB16F86B43LLOGMd, &_ss22KeyedEncodingContainerVy14XPCDistributed9XPCSystemC14SharedActorKeyO18ExportedCodingKeys33_9CCE54CB0967057F6206FADB16F86B43LLOGMR);
  v21 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v20 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14XPCDistributed9XPCSystemC14SharedActorKeyO10CodingKeys33_9CCE54CB0967057F6206FADB16F86B43LLOGMd, &_ss22KeyedEncodingContainerVy14XPCDistributed9XPCSystemC14SharedActorKeyO10CodingKeys33_9CCE54CB0967057F6206FADB16F86B43LLOGMR);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v20 - v15;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type XPCSystem.SharedActorKey.CodingKeys and conformance XPCSystem.SharedActorKey.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (v28)
  {
    if (v28 == 1)
    {
      LOBYTE(v30) = 1;
      lazy protocol witness table accessor for type XPCSystem.SharedActorKey.ExportedRawValueCodingKeys and conformance XPCSystem.SharedActorKey.ExportedRawValueCodingKeys();
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v17 = v23;
      KeyedEncodingContainer.encode(_:forKey:)();
      v18 = v22;
    }

    else
    {
      LOBYTE(v30) = 2;
      lazy protocol witness table accessor for type XPCSystem.SharedActorKey.DynamicCodingKeys and conformance XPCSystem.SharedActorKey.DynamicCodingKeys();
      v9 = v24;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v30 = v29;
      lazy protocol witness table accessor for type ID64 and conformance ID64();
      v17 = v26;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v18 = v25;
    }

    (*(v18 + 8))(v9, v17);
    return (*(v14 + 8))(v16, v13);
  }

  else
  {
    LOBYTE(v30) = 0;
    lazy protocol witness table accessor for type XPCSystem.SharedActorKey.ExportedCodingKeys and conformance XPCSystem.SharedActorKey.ExportedCodingKeys();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v30 = v29;
    v31 = v27;
    lazy protocol witness table accessor for type SwiftType and conformance SwiftType();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v21 + 8))(v12, v10);
    return (*(v14 + 8))(v16, v13);
  }
}

Swift::Int XPCSystem.SharedActorKey.hashValue.getter(uint64_t a1, uint64_t a2, char a3)
{
  Hasher.init(_seed:)();
  if (a3)
  {
    if (a3 != 1)
    {
      MEMORY[0x277C6BCC0](2);
      MEMORY[0x277C6BCE0](a1);
      return Hasher._finalize()();
    }

    v5 = 1;
  }

  else
  {
    v5 = 0;
  }

  MEMORY[0x277C6BCC0](v5);
  String.hash(into:)();
  return Hasher._finalize()();
}

char *XPCSystem.SharedActorKey.init(from:)(void *a1)
{
  result = specialized XPCSystem.SharedActorKey.init(from:)(a1);
  if (v1)
  {
    return v3;
  }

  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance XPCSystem.SharedActorKey()
{
  v1 = *v0;
  v2 = *(v0 + 16);
  Hasher.init(_seed:)();
  if (v2)
  {
    if (v2 != 1)
    {
      MEMORY[0x277C6BCC0](2);
      MEMORY[0x277C6BCE0](v1);
      return Hasher._finalize()();
    }

    v3 = 1;
  }

  else
  {
    v3 = 0;
  }

  MEMORY[0x277C6BCC0](v3);
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance XPCSystem.SharedActorKey(uint64_t a1)
{
  v2 = *v1;
  if (*(v1 + 16))
  {
    if (*(v1 + 16) != 1)
    {
      MEMORY[0x277C6BCC0](2);
      return MEMORY[0x277C6BCE0](v2);
    }

    v3 = 1;
  }

  else
  {
    v3 = 0;
  }

  MEMORY[0x277C6BCC0](v3);

  return String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance XPCSystem.SharedActorKey(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 16);
  Hasher.init(_seed:)();
  if (v3)
  {
    if (v3 != 1)
    {
      MEMORY[0x277C6BCC0](2);
      MEMORY[0x277C6BCE0](v2);
      return Hasher._finalize()();
    }

    v4 = 1;
  }

  else
  {
    v4 = 0;
  }

  MEMORY[0x277C6BCC0](v4);
  String.hash(into:)();
  return Hasher._finalize()();
}

char *protocol witness for Decodable.init(from:) in conformance XPCSystem.SharedActorKey@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = specialized XPCSystem.SharedActorKey.init(from:)(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5;
    *(a1 + 16) = v6;
  }

  return result;
}

uint64_t XPCSystem.RawActorID.Local.debugDescription.getter(uint64_t a1, uint64_t a2)
{
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x277C6B720](14906, 0xE200000000000000);
  _print_unlocked<A, B>(_:_:)();
  return 0;
}

uint64_t XPCSystem.RawActorID.Remote.debugDescription.getter()
{
  v1 = v0;
  v9 = 0;
  v10 = 0xE000000000000000;
  v3 = *(v0 + 24);
  v2 = *(v0 + 32);
  __swift_project_boxed_opaque_existential_1(v1, v3);
  (*(*(v2 + 8) + 24))(&v6, v3);
  v8 = v6;
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x277C6B720](14906, 0xE200000000000000);
  v4 = *(v1 + 56);
  v6 = *(v1 + 40);
  v7 = v4;
  _print_unlocked<A, B>(_:_:)();
  return v9;
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance XPCSystem.RawActorID.Local()
{
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x277C6B720](14906, 0xE200000000000000);
  _print_unlocked<A, B>(_:_:)();
  return 0;
}

double DistributedActor<>.session.getter@<D0>(uint64_t a3@<X8>)
{
  dispatch thunk of Identifiable.id.getter();
  if (v8)
  {
    v5[0] = v6[2];
    v5[1] = v6[3];
    v6[0] = *v7;
    *(v6 + 9) = *&v7[9];
    outlined init with copy of Decoder(v5, a3);
    outlined destroy of XPCSystem.RawActorID.Remote(v5);
  }

  else
  {
    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t static TestHook.isLocal(_:)(uint64_t a1)
{
  outlined init with copy of XPCSystem.RawActorID(a1, v3);
  v1 = v4;
  if (v4 == 1)
  {
    outlined destroy of XPCSystem.RawActorID(v3);
  }

  return v1 ^ 1u;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x277C6BCE0](a1);
  v2 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v2);
}

{
  type metadata accessor for CodingUserInfoKey();
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v2);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  Hasher.init(_seed:)();
  if (!v3)
  {
    v6 = 0;
    goto LABEL_5;
  }

  if (v3 == 1)
  {
    v6 = 1;
LABEL_5:
    MEMORY[0x277C6BCC0](v6);
    String.hash(into:)();
    goto LABEL_7;
  }

  MEMORY[0x277C6BCC0](2);
  MEMORY[0x277C6BCE0](a1);
LABEL_7:
  v7 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2, v3, v7);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  MEMORY[0x277C6BCE0](a1);
  MEMORY[0x277C6BCE0](a2);
  v4 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2, v4);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

{
  v22 = a1;
  v4 = type metadata accessor for CodingUserInfoKey();
  v6.n128_f64[0] = MEMORY[0x28223BE20](v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v21 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v12 = v5 + 16;
    v13 = v14;
    v15 = *(v12 + 56);
    v16 = (v12 - 8);
    do
    {
      v17 = v12;
      v13(v8, *(v23 + 48) + v15 * v10, v4, v6);
      v18 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*v16)(v8, v4);
      if (v18)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      v12 = v17;
    }

    while (((*(v21 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v5 = v4 + 64;
  v6 = -1 << *(v4 + 32);
  v7 = a4 & ~v6;
  if ((*(v4 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v11 = ~v6;
    v12 = *(v4 + 48);
    do
    {
      v13 = (v12 + 24 * v7);
      v14 = *v13;
      v15 = v13[1];
      v16 = *(v13 + 16);
      if (v16)
      {
        if (v16 != 1)
        {
          if (a3 == 2 && v14 == a1)
          {
            return v7;
          }

          goto LABEL_4;
        }

        if (a3 != 1)
        {
          goto LABEL_4;
        }
      }

      else if (a3)
      {
        goto LABEL_4;
      }

      v17 = v14 == a1 && v15 == a2;
      if (v17 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        return v7;
      }

LABEL_4:
      v7 = (v7 + 1) & v11;
    }

    while (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  return v7;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = -1 << *(v3 + 32);
  result = a3 & ~v5;
  if ((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v7 = ~v5;
    do
    {
      v8 = (*(v3 + 48) + 16 * result);
      v10 = *v8;
      v9 = v8[1];
      if (v10 == a1 && v9 == a2)
      {
        break;
      }

      result = (result + 1) & v7;
    }

    while (((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

uint64_t specialized static XPCSystem.RawActorID.Remote.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 24);
  v4 = *(a1 + 32);
  __swift_project_boxed_opaque_existential_1(a1, v5);
  (*(*(v4 + 8) + 24))(&v18, v5);
  v6 = v18;
  v8 = *(a2 + 24);
  v7 = *(a2 + 32);
  __swift_project_boxed_opaque_existential_1(a2, v8);
  (*(*(v7 + 8) + 24))(&v17, v8);
  if (v6 != v17)
  {
LABEL_9:
    v14 = 0;
    return v14 & 1;
  }

  v9 = *(a1 + 40);
  v10 = *(a1 + 48);
  v11 = *(a2 + 40);
  v12 = *(a2 + 48);
  v13 = *(a2 + 56);
  if (!*(a1 + 56))
  {
    if (!*(a2 + 56))
    {
      if (v9 != v11 || v10 != v12)
      {
        goto LABEL_20;
      }

LABEL_19:
      v14 = 1;
      return v14 & 1;
    }

    goto LABEL_9;
  }

  if (*(a1 + 56) == 1)
  {
    if (v13 == 1)
    {
      if (v9 != v11 || v10 != v12)
      {
LABEL_20:
        v14 = _stringCompareWithSmolCheck(_:_:expecting:)();
        return v14 & 1;
      }

      goto LABEL_19;
    }

    goto LABEL_9;
  }

  v14 = v13 == 2 && v9 == v11;
  return v14 & 1;
}

uint64_t specialized static XPCSystem.RawActorID.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  outlined init with copy of XPCSystem.RawActorID(a1, v9);
  outlined init with copy of XPCSystem.RawActorID(a2, v10);
  if ((v9[57] & 1) == 0)
  {
    outlined init with copy of XPCSystem.RawActorID(v9, v8);
    if ((v12 & 1) == 0)
    {
      v3 = v8[0] == *&v10[0] && v8[1] == *(&v10[0] + 1);
      goto LABEL_11;
    }

LABEL_13:
    outlined destroy of Result<XPCSystem.Transport.Packet.Payload, XPCSystem.Transport.TransportError>(v9, &_s14XPCDistributed9XPCSystemC10RawActorIDO_AEtMd, &_s14XPCDistributed9XPCSystemC10RawActorIDO_AEtMR);
    v3 = 0;
    return v3 & 1;
  }

  outlined init with copy of XPCSystem.RawActorID(v9, v8);
  if (v12 != 1)
  {
    outlined destroy of XPCSystem.RawActorID.Remote(v8);
    goto LABEL_13;
  }

  v6[0] = v10[0];
  v6[1] = v10[1];
  v7[0] = *v11;
  *(v7 + 9) = *&v11[9];
  v3 = specialized static XPCSystem.RawActorID.Remote.== infix(_:_:)(v8, v6);
  outlined destroy of XPCSystem.RawActorID.Remote(v6);
  outlined destroy of XPCSystem.RawActorID.Remote(v8);
LABEL_11:
  outlined destroy of XPCSystem.RawActorID(v9);
  return v3 & 1;
}

uint64_t specialized static XPCSystem.SharedActorKey.== infix(_:_:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (!a3)
  {
    if (!a6)
    {
      if (a1 != a4 || a2 != a5)
      {
        return _stringCompareWithSmolCheck(_:_:expecting:)();
      }

      return 1;
    }

    return 0;
  }

  if (a3 == 1)
  {
    if (a6 == 1)
    {
      if (a1 != a4 || a2 != a5)
      {
        return _stringCompareWithSmolCheck(_:_:expecting:)();
      }

      return 1;
    }

    return 0;
  }

  return a6 == 2 && a1 == a4;
}

unint64_t lazy protocol witness table accessor for type XPCSystem.SharedActorKey.CodingKeys and conformance XPCSystem.SharedActorKey.CodingKeys()
{
  result = lazy protocol witness table cache variable for type XPCSystem.SharedActorKey.CodingKeys and conformance XPCSystem.SharedActorKey.CodingKeys;
  if (!lazy protocol witness table cache variable for type XPCSystem.SharedActorKey.CodingKeys and conformance XPCSystem.SharedActorKey.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for XPCSystem.SharedActorKey.CodingKeys, &unk_2883F5D88, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type XPCSystem.SharedActorKey.CodingKeys and conformance XPCSystem.SharedActorKey.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type XPCSystem.SharedActorKey.CodingKeys and conformance XPCSystem.SharedActorKey.CodingKeys;
  if (!lazy protocol witness table cache variable for type XPCSystem.SharedActorKey.CodingKeys and conformance XPCSystem.SharedActorKey.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for XPCSystem.SharedActorKey.CodingKeys, &unk_2883F5D88, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type XPCSystem.SharedActorKey.CodingKeys and conformance XPCSystem.SharedActorKey.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type XPCSystem.SharedActorKey.CodingKeys and conformance XPCSystem.SharedActorKey.CodingKeys;
  if (!lazy protocol witness table cache variable for type XPCSystem.SharedActorKey.CodingKeys and conformance XPCSystem.SharedActorKey.CodingKeys)
  {
    result = swift_getWitnessTable("%:\b\rDW", &unk_2883F5D88, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type XPCSystem.SharedActorKey.CodingKeys and conformance XPCSystem.SharedActorKey.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type XPCSystem.SharedActorKey.CodingKeys and conformance XPCSystem.SharedActorKey.CodingKeys;
  if (!lazy protocol witness table cache variable for type XPCSystem.SharedActorKey.CodingKeys and conformance XPCSystem.SharedActorKey.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for XPCSystem.SharedActorKey.CodingKeys, &unk_2883F5D88, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type XPCSystem.SharedActorKey.CodingKeys and conformance XPCSystem.SharedActorKey.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type XPCSystem.SharedActorKey.DynamicCodingKeys and conformance XPCSystem.SharedActorKey.DynamicCodingKeys()
{
  result = lazy protocol witness table cache variable for type XPCSystem.SharedActorKey.DynamicCodingKeys and conformance XPCSystem.SharedActorKey.DynamicCodingKeys;
  if (!lazy protocol witness table cache variable for type XPCSystem.SharedActorKey.DynamicCodingKeys and conformance XPCSystem.SharedActorKey.DynamicCodingKeys)
  {
    result = swift_getWitnessTable("U?\b\rXV", &unk_2883F5F38, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type XPCSystem.SharedActorKey.DynamicCodingKeys and conformance XPCSystem.SharedActorKey.DynamicCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type XPCSystem.SharedActorKey.DynamicCodingKeys and conformance XPCSystem.SharedActorKey.DynamicCodingKeys;
  if (!lazy protocol witness table cache variable for type XPCSystem.SharedActorKey.DynamicCodingKeys and conformance XPCSystem.SharedActorKey.DynamicCodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for XPCSystem.SharedActorKey.DynamicCodingKeys, &unk_2883F5F38, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type XPCSystem.SharedActorKey.DynamicCodingKeys and conformance XPCSystem.SharedActorKey.DynamicCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type XPCSystem.SharedActorKey.DynamicCodingKeys and conformance XPCSystem.SharedActorKey.DynamicCodingKeys;
  if (!lazy protocol witness table cache variable for type XPCSystem.SharedActorKey.DynamicCodingKeys and conformance XPCSystem.SharedActorKey.DynamicCodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for XPCSystem.SharedActorKey.DynamicCodingKeys, &unk_2883F5F38, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type XPCSystem.SharedActorKey.DynamicCodingKeys and conformance XPCSystem.SharedActorKey.DynamicCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type XPCSystem.SharedActorKey.DynamicCodingKeys and conformance XPCSystem.SharedActorKey.DynamicCodingKeys;
  if (!lazy protocol witness table cache variable for type XPCSystem.SharedActorKey.DynamicCodingKeys and conformance XPCSystem.SharedActorKey.DynamicCodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for XPCSystem.SharedActorKey.DynamicCodingKeys, &unk_2883F5F38, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type XPCSystem.SharedActorKey.DynamicCodingKeys and conformance XPCSystem.SharedActorKey.DynamicCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type XPCSystem.SharedActorKey.ExportedRawValueCodingKeys and conformance XPCSystem.SharedActorKey.ExportedRawValueCodingKeys()
{
  result = lazy protocol witness table cache variable for type XPCSystem.SharedActorKey.ExportedRawValueCodingKeys and conformance XPCSystem.SharedActorKey.ExportedRawValueCodingKeys;
  if (!lazy protocol witness table cache variable for type XPCSystem.SharedActorKey.ExportedRawValueCodingKeys and conformance XPCSystem.SharedActorKey.ExportedRawValueCodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for XPCSystem.SharedActorKey.ExportedRawValueCodingKeys, &unk_2883F5EA8, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type XPCSystem.SharedActorKey.ExportedRawValueCodingKeys and conformance XPCSystem.SharedActorKey.ExportedRawValueCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type XPCSystem.SharedActorKey.ExportedRawValueCodingKeys and conformance XPCSystem.SharedActorKey.ExportedRawValueCodingKeys;
  if (!lazy protocol witness table cache variable for type XPCSystem.SharedActorKey.ExportedRawValueCodingKeys and conformance XPCSystem.SharedActorKey.ExportedRawValueCodingKeys)
  {
    result = swift_getWitnessTable("-,\b\rlX", &unk_2883F5EA8, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type XPCSystem.SharedActorKey.ExportedRawValueCodingKeys and conformance XPCSystem.SharedActorKey.ExportedRawValueCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type XPCSystem.SharedActorKey.ExportedRawValueCodingKeys and conformance XPCSystem.SharedActorKey.ExportedRawValueCodingKeys;
  if (!lazy protocol witness table cache variable for type XPCSystem.SharedActorKey.ExportedRawValueCodingKeys and conformance XPCSystem.SharedActorKey.ExportedRawValueCodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for XPCSystem.SharedActorKey.ExportedRawValueCodingKeys, &unk_2883F5EA8, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type XPCSystem.SharedActorKey.ExportedRawValueCodingKeys and conformance XPCSystem.SharedActorKey.ExportedRawValueCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type XPCSystem.SharedActorKey.ExportedRawValueCodingKeys and conformance XPCSystem.SharedActorKey.ExportedRawValueCodingKeys;
  if (!lazy protocol witness table cache variable for type XPCSystem.SharedActorKey.ExportedRawValueCodingKeys and conformance XPCSystem.SharedActorKey.ExportedRawValueCodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for XPCSystem.SharedActorKey.ExportedRawValueCodingKeys, &unk_2883F5EA8, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type XPCSystem.SharedActorKey.ExportedRawValueCodingKeys and conformance XPCSystem.SharedActorKey.ExportedRawValueCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type XPCSystem.SharedActorKey.ExportedCodingKeys and conformance XPCSystem.SharedActorKey.ExportedCodingKeys()
{
  result = lazy protocol witness table cache variable for type XPCSystem.SharedActorKey.ExportedCodingKeys and conformance XPCSystem.SharedActorKey.ExportedCodingKeys;
  if (!lazy protocol witness table cache variable for type XPCSystem.SharedActorKey.ExportedCodingKeys and conformance XPCSystem.SharedActorKey.ExportedCodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for XPCSystem.SharedActorKey.ExportedCodingKeys, &unk_2883F5E18, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type XPCSystem.SharedActorKey.ExportedCodingKeys and conformance XPCSystem.SharedActorKey.ExportedCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type XPCSystem.SharedActorKey.ExportedCodingKeys and conformance XPCSystem.SharedActorKey.ExportedCodingKeys;
  if (!lazy protocol witness table cache variable for type XPCSystem.SharedActorKey.ExportedCodingKeys and conformance XPCSystem.SharedActorKey.ExportedCodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for XPCSystem.SharedActorKey.ExportedCodingKeys, &unk_2883F5E18, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type XPCSystem.SharedActorKey.ExportedCodingKeys and conformance XPCSystem.SharedActorKey.ExportedCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type XPCSystem.SharedActorKey.ExportedCodingKeys and conformance XPCSystem.SharedActorKey.ExportedCodingKeys;
  if (!lazy protocol witness table cache variable for type XPCSystem.SharedActorKey.ExportedCodingKeys and conformance XPCSystem.SharedActorKey.ExportedCodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for XPCSystem.SharedActorKey.ExportedCodingKeys, &unk_2883F5E18, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type XPCSystem.SharedActorKey.ExportedCodingKeys and conformance XPCSystem.SharedActorKey.ExportedCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type XPCSystem.SharedActorKey.ExportedCodingKeys and conformance XPCSystem.SharedActorKey.ExportedCodingKeys;
  if (!lazy protocol witness table cache variable for type XPCSystem.SharedActorKey.ExportedCodingKeys and conformance XPCSystem.SharedActorKey.ExportedCodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for XPCSystem.SharedActorKey.ExportedCodingKeys, &unk_2883F5E18, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type XPCSystem.SharedActorKey.ExportedCodingKeys and conformance XPCSystem.SharedActorKey.ExportedCodingKeys);
  }

  return result;
}

uint64_t specialized XPCSystem.SharedActorKey.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x646574726F707865 && a2 == 0xE800000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000002751B9640 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x63696D616E7964 && a2 == 0xE700000000000000)
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

char *specialized XPCSystem.SharedActorKey.init(from:)(void *a1)
{
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy14XPCDistributed9XPCSystemC14SharedActorKeyO17DynamicCodingKeys33_9CCE54CB0967057F6206FADB16F86B43LLOGMd, &_ss22KeyedDecodingContainerVy14XPCDistributed9XPCSystemC14SharedActorKeyO17DynamicCodingKeys33_9CCE54CB0967057F6206FADB16F86B43LLOGMR);
  v44 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v46 = &v38 - v2;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy14XPCDistributed9XPCSystemC14SharedActorKeyO26ExportedRawValueCodingKeys33_9CCE54CB0967057F6206FADB16F86B43LLOGMd, &_ss22KeyedDecodingContainerVy14XPCDistributed9XPCSystemC14SharedActorKeyO26ExportedRawValueCodingKeys33_9CCE54CB0967057F6206FADB16F86B43LLOGMR);
  v43 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v4 = &v38 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy14XPCDistributed9XPCSystemC14SharedActorKeyO18ExportedCodingKeys33_9CCE54CB0967057F6206FADB16F86B43LLOGMd, &_ss22KeyedDecodingContainerVy14XPCDistributed9XPCSystemC14SharedActorKeyO18ExportedCodingKeys33_9CCE54CB0967057F6206FADB16F86B43LLOGMR);
  v41 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v38 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy14XPCDistributed9XPCSystemC14SharedActorKeyO10CodingKeys33_9CCE54CB0967057F6206FADB16F86B43LLOGMd, &_ss22KeyedDecodingContainerVy14XPCDistributed9XPCSystemC14SharedActorKeyO10CodingKeys33_9CCE54CB0967057F6206FADB16F86B43LLOGMR);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v38 - v10;
  v12 = a1[3];
  v49 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v12);
  lazy protocol witness table accessor for type XPCSystem.SharedActorKey.CodingKeys and conformance XPCSystem.SharedActorKey.CodingKeys();
  v13 = v47;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v13)
  {
    v14 = v5;
    v39 = 0;
    v40 = v9;
    v15 = v45;
    v47 = v11;
    v16 = KeyedDecodingContainer.allKeys.getter();
    v17 = *(v16 + 16);
    v18 = v8;
    if (!v17 || ((v19 = *(v16 + 32), v17 == 1) ? (v20 = v19 == 3) : (v20 = 1), v20))
    {
      v7 = type metadata accessor for DecodingError();
      swift_allocError();
      v22 = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR);
      *v22 = &type metadata for XPCSystem.SharedActorKey;
      v23 = v47;
      KeyedDecodingContainer.codingPath.getter();
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v7 - 1) + 104))(v22, *MEMORY[0x277D84160], v7);
      swift_willThrow();
      (*(v40 + 8))(v23, v18);
    }

    else if (*(v16 + 32))
    {
      if (v19 == 1)
      {
        LOBYTE(v48) = 1;
        lazy protocol witness table accessor for type XPCSystem.SharedActorKey.ExportedRawValueCodingKeys and conformance XPCSystem.SharedActorKey.ExportedRawValueCodingKeys();
        v25 = v4;
        v26 = v18;
        v27 = v47;
        v28 = v39;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v7 = v28;
        v29 = v40;
        if (v28)
        {
          (*(v40 + 8))(v27, v26);
        }

        else
        {
          v36 = KeyedDecodingContainer.decode(_:forKey:)();
          v39 = 0;
          v7 = v36;
          (*(v43 + 8))(v25, v15);
          (*(v29 + 8))(v27, v26);
        }
      }

      else
      {
        LOBYTE(v48) = 2;
        lazy protocol witness table accessor for type XPCSystem.SharedActorKey.DynamicCodingKeys and conformance XPCSystem.SharedActorKey.DynamicCodingKeys();
        v33 = v47;
        v34 = v39;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v35 = v40;
        if (!v34)
        {
          lazy protocol witness table accessor for type ID64 and conformance ID64();
          v37 = v42;
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          (*(v44 + 8))(0, v37);
          (*(v35 + 8))(v47, v18);
          swift_unknownObjectRelease();
          v7 = v48;
          goto LABEL_10;
        }

        v7 = (v40 + 8);
        (*(v40 + 8))(v33, v18);
      }
    }

    else
    {
      LOBYTE(v48) = 0;
      lazy protocol witness table accessor for type XPCSystem.SharedActorKey.ExportedCodingKeys and conformance XPCSystem.SharedActorKey.ExportedCodingKeys();
      v30 = v7;
      v7 = v18;
      v31 = v47;
      v32 = v39;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (!v32)
      {
        lazy protocol witness table accessor for type SwiftType and conformance SwiftType();
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        (*(v41 + 8))(v30, v14);
        (*(v40 + 8))(v31, v7);
        swift_unknownObjectRelease();
        v7 = v48;
        goto LABEL_10;
      }

      (*(v40 + 8))(v31, v7);
    }

    swift_unknownObjectRelease();
  }

LABEL_10:
  __swift_destroy_boxed_opaque_existential_1Tm(v49);
  return v7;
}

unint64_t lazy protocol witness table accessor for type XPCSystem.ActorID and conformance XPCSystem.ActorID()
{
  result = lazy protocol witness table cache variable for type XPCSystem.ActorID and conformance XPCSystem.ActorID;
  if (!lazy protocol witness table cache variable for type XPCSystem.ActorID and conformance XPCSystem.ActorID)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for XPCSystem.ActorID, &type metadata for XPCSystem.ActorID, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type XPCSystem.ActorID and conformance XPCSystem.ActorID);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type XPCSystem.ActorID and conformance XPCSystem.ActorID;
  if (!lazy protocol witness table cache variable for type XPCSystem.ActorID and conformance XPCSystem.ActorID)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for XPCSystem.ActorID, &type metadata for XPCSystem.ActorID, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type XPCSystem.ActorID and conformance XPCSystem.ActorID);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type XPCSystem.RawActorID.Local and conformance XPCSystem.RawActorID.Local()
{
  result = lazy protocol witness table cache variable for type XPCSystem.RawActorID.Local and conformance XPCSystem.RawActorID.Local;
  if (!lazy protocol witness table cache variable for type XPCSystem.RawActorID.Local and conformance XPCSystem.RawActorID.Local)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for XPCSystem.RawActorID.Local, &type metadata for XPCSystem.RawActorID.Local, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type XPCSystem.RawActorID.Local and conformance XPCSystem.RawActorID.Local);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type XPCSystem.RawActorID.Local and conformance XPCSystem.RawActorID.Local;
  if (!lazy protocol witness table cache variable for type XPCSystem.RawActorID.Local and conformance XPCSystem.RawActorID.Local)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for XPCSystem.RawActorID.Local, &type metadata for XPCSystem.RawActorID.Local, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type XPCSystem.RawActorID.Local and conformance XPCSystem.RawActorID.Local);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type XPCSystem.RawActorID.Remote and conformance XPCSystem.RawActorID.Remote()
{
  result = lazy protocol witness table cache variable for type XPCSystem.RawActorID.Remote and conformance XPCSystem.RawActorID.Remote;
  if (!lazy protocol witness table cache variable for type XPCSystem.RawActorID.Remote and conformance XPCSystem.RawActorID.Remote)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for XPCSystem.RawActorID.Remote, &type metadata for XPCSystem.RawActorID.Remote, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type XPCSystem.RawActorID.Remote and conformance XPCSystem.RawActorID.Remote);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type XPCSystem.RawActorID and conformance XPCSystem.RawActorID()
{
  result = lazy protocol witness table cache variable for type XPCSystem.RawActorID and conformance XPCSystem.RawActorID;
  if (!lazy protocol witness table cache variable for type XPCSystem.RawActorID and conformance XPCSystem.RawActorID)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for XPCSystem.RawActorID, &type metadata for XPCSystem.RawActorID, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type XPCSystem.RawActorID and conformance XPCSystem.RawActorID);
  }

  return result;
}

__n128 __swift_memcpy58_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 42) = *(a2 + 42);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for XPCSystem.ActorID(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 58))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 57);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for XPCSystem.ActorID(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 58) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 58) = 0;
    }

    if (a2)
    {
      *(result + 57) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for XPCSystem.RawActorID(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 58))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 57);
  if (v3 >= 2)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for XPCSystem.RawActorID(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 42) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 58) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 58) = 0;
    }

    if (a2)
    {
      *(result + 57) = -a2;
    }
  }

  return result;
}

uint64_t destructiveInjectEnumTag for XPCSystem.RawActorID(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 41) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 57) = a2;
  return result;
}

uint64_t getEnumTagSinglePayload for XPCSystem.RawActorID.Local(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for XPCSystem.RawActorID.Local(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

__n128 __swift_memcpy57_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for XPCSystem.RawActorID.Remote(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
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

uint64_t storeEnumTagSinglePayload for XPCSystem.RawActorID.Remote(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for XPCSystem.SharedActorKey(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for XPCSystem.SharedActorKey(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

void ID64.init()()
{
  if (one-time initialization token for default != -1)
  {
LABEL_8:
    swift_once();
  }

  v0 = static ID64.default;
  do
  {
    if (v0 == -1)
    {
      __break(1u);
      goto LABEL_8;
    }

    v1 = v0;
    atomic_compare_exchange_strong_explicit(&static ID64.default, &v1, v0 + 1, memory_order_relaxed, memory_order_relaxed);
    v2 = v1 == v0;
    v0 = v1;
  }

  while (!v2);
}

unint64_t ID64.Generator.next()()
{
  v1 = *v0;
  while (1)
  {
    result = v1 + 1;
    if (v1 == -1)
    {
      break;
    }

    v3 = v1;
    atomic_compare_exchange_strong_explicit(v0, &v3, result, memory_order_relaxed, memory_order_relaxed);
    v4 = v3 == v1;
    v1 = v3;
    if (v4)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t XPCDictionary.subscript.getter(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type UInt64 and conformance UInt64();
  XPCDictionary.subscript.getter();
  if (v4)
  {
    return 0;
  }

  else
  {
    return v3;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance ID64.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ID64.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ID64.CodingKeys and conformance ID64.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ID64.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ID64.CodingKeys and conformance ID64.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ID64.encode(to:)(void *a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14XPCDistributed4ID64V10CodingKeys33_9966923C87AF252E96CBDF4B8B7042EDLLOGMd, &_ss22KeyedEncodingContainerVy14XPCDistributed4ID64V10CodingKeys33_9966923C87AF252E96CBDF4B8B7042EDLLOGMR);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ID64.CodingKeys and conformance ID64.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v4 + 8))(v6, v3);
}

unint64_t lazy protocol witness table accessor for type ID64.CodingKeys and conformance ID64.CodingKeys()
{
  result = lazy protocol witness table cache variable for type ID64.CodingKeys and conformance ID64.CodingKeys;
  if (!lazy protocol witness table cache variable for type ID64.CodingKeys and conformance ID64.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ID64.CodingKeys, &unk_2883F60E8, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ID64.CodingKeys and conformance ID64.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ID64.CodingKeys and conformance ID64.CodingKeys;
  if (!lazy protocol witness table cache variable for type ID64.CodingKeys and conformance ID64.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ID64.CodingKeys, &unk_2883F60E8, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ID64.CodingKeys and conformance ID64.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ID64.CodingKeys and conformance ID64.CodingKeys;
  if (!lazy protocol witness table cache variable for type ID64.CodingKeys and conformance ID64.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ID64.CodingKeys, &unk_2883F60E8, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ID64.CodingKeys and conformance ID64.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ID64.CodingKeys and conformance ID64.CodingKeys;
  if (!lazy protocol witness table cache variable for type ID64.CodingKeys and conformance ID64.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ID64.CodingKeys, &unk_2883F60E8, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ID64.CodingKeys and conformance ID64.CodingKeys);
  }

  return result;
}

Swift::Int ID64.hashValue.getter(uint64_t a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x277C6BCE0](a1);
  return Hasher._finalize()();
}

void *ID64.init(from:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy14XPCDistributed4ID64V10CodingKeys33_9966923C87AF252E96CBDF4B8B7042EDLLOGMd, &_ss22KeyedDecodingContainerVy14XPCDistributed4ID64V10CodingKeys33_9966923C87AF252E96CBDF4B8B7042EDLLOGMR);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - v5;
  v7 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ID64.CodingKeys and conformance ID64.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v7 = KeyedDecodingContainer.decode(_:forKey:)();
    (*(v4 + 8))(v6, v3);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v7;
}

uint64_t protocol witness for Decodable.init(from:) in conformance ID64@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy14XPCDistributed4ID64V10CodingKeys33_9966923C87AF252E96CBDF4B8B7042EDLLOGMd, &_ss22KeyedDecodingContainerVy14XPCDistributed4ID64V10CodingKeys33_9966923C87AF252E96CBDF4B8B7042EDLLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ID64.CodingKeys and conformance ID64.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  (*(v6 + 8))(v8, v5);
  result = __swift_destroy_boxed_opaque_existential_1Tm(a1);
  *a2 = v9;
  return result;
}

uint64_t protocol witness for Encodable.encode(to:) in conformance ID64(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14XPCDistributed4ID64V10CodingKeys33_9966923C87AF252E96CBDF4B8B7042EDLLOGMd, &_ss22KeyedEncodingContainerVy14XPCDistributed4ID64V10CodingKeys33_9966923C87AF252E96CBDF4B8B7042EDLLOGMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ID64.CodingKeys and conformance ID64.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v3 + 8))(v5, v2);
}

void *key path getter for XPCDictionary.subscript(_:) : XPCDictionary@<X0>(uint64_t a2@<X8>)
{
  lazy protocol witness table accessor for type UInt64 and conformance UInt64();
  result = XPCDictionary.subscript.getter();
  v4 = v5;
  if (v6)
  {
    v4 = 0;
  }

  *a2 = v4;
  *(a2 + 8) = v6;
  return result;
}

uint64_t key path setter for XPCDictionary.subscript(_:) : XPCDictionary(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  lazy protocol witness table accessor for type UInt64 and conformance UInt64();

  return XPCDictionary.subscript.setter();
}

void (*XPCDictionary.subscript.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t **a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x38uLL);
  }

  v8 = v7;
  *a1 = v7;
  v7[5] = a3;
  v7[6] = v3;
  v7[4] = a2;
  lazy protocol witness table accessor for type UInt64 and conformance UInt64();
  XPCDictionary.subscript.getter();
  v9 = v8[2];
  v10 = *(v8 + 24);
  if (v10)
  {
    v9 = 0;
  }

  *v8 = v9;
  *(v8 + 8) = v10;
  return XPCDictionary.subscript.modify;
}

void XPCDictionary.subscript.modify(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *(*a1 + 8);
  if (v3)
  {
    v2 = 0;
  }

  v1[2] = v2;
  *(v1 + 24) = v3;
  lazy protocol witness table accessor for type UInt64 and conformance UInt64();

  XPCDictionary.subscript.setter();

  free(v1);
}

uint64_t XPCSystem.Transport.XPCRawTransport.__allocating_init(session:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = a1;
  return result;
}

uint64_t XPCSystem.Transport.XPCRawTransport.init(session:)(uint64_t a1)
{
  *(v1 + 16) = 0;
  *(v1 + 24) = a1;
  return v1;
}

void _s14XPCDistributed9XPCSystemC9TransportC06XPCRawC0C8activate7linkingyAE_tAC10SetupErrorVYKF(uint64_t a1, void *a2)
{
  *(v2 + 16) = a1;

  dispatch thunk of XPCSession.setTargetQueue(_:)();
  swift_unownedRetainStrong();
  swift_unownedRetain();
  swift_unownedRetain();

  *(swift_allocObject() + 16) = v2;
  dispatch thunk of XPCSession.setIncomingMessageHandler(_:)();

  swift_unownedRelease();
  swift_unownedRetainStrong();
  swift_unownedRetain();
  swift_unownedRetain();

  *(swift_allocObject() + 16) = v2;
  dispatch thunk of XPCSession.setCancellationHandler(_:)();

  swift_unownedRelease();
  dispatch thunk of XPCSession.activate()();
  if (v3)
  {
    _StringGuts.grow(_:)(41);
    MEMORY[0x277C6B720](0xD000000000000026, 0x80000002751B9660);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x277C6B720](41, 0xE100000000000000);
    *a2 = 0;
    a2[1] = 0xE000000000000000;
    lazy protocol witness table accessor for type XPCSystem.SetupError and conformance XPCSystem.SetupError();
    swift_willThrowTypedImpl();
  }
}

uint64_t _s14XPCDistributed9XPCSystemC9TransportC06XPCRawC0C8activate7linkingyAE_tAC10SetupErrorVYKF3XPC13XPCDictionaryVSgANYbcfU_@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for XPCDictionary();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14XPCDistributed9XPCSystemC9TransportC6PacketVSgMd, &_s14XPCDistributed9XPCSystemC9TransportC6PacketVSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v20 - v11;
  v13 = type metadata accessor for XPCSystem.Transport.Packet(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = (&v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v7 + 16))(v9, a1, v6, v15);
  XPCSystem.Transport.Packet.init(rawValue:)(v9, v12);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    outlined destroy of XPCSystem.Transport.Packet?(v12);
    return (*(v7 + 56))(a3, 1, 1, v6);
  }

  outlined init with take of XPCSystem.Transport.Packet(v12, v17);
  swift_unownedRetainStrong();
  v18 = *(a2 + 16);

  if (v18)
  {
    XPCSystem.Transport.handleReceivedPacket(_:)(v17);

    outlined destroy of XPCSystem.Transport.Packet(v17);
    return (*(v7 + 56))(a3, 1, 1, v6);
  }

  __break(1u);
  return result;
}

uint64_t _s14XPCDistributed9XPCSystemC9TransportC06XPCRawC0C8activate7linkingyAE_tAC10SetupErrorVYKFy3XPC07XPCRichH0VYbcfU0_(uint64_t a1, uint64_t a2)
{
  swift_unownedRetainStrong();
  v3 = *(a2 + 16);

  if (v3)
  {
    XPCSystem.Transport.handleCancellation()();

    swift_unownedRetainStrong();
    *(a2 + 16) = 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t _s14XPCDistributed9XPCSystemC9TransportC06XPCRawC0C4send6packetyAE6PacketV_tAE03RawC5ErrorOYKF(uint64_t a1)
{
  v4 = type metadata accessor for XPCSystem.Transport.Packet.Payload(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for XPCDictionary();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v1 + 24);
  v12 = type metadata accessor for XPCSystem.Transport.Packet(0);
  outlined init with copy of XPCSystem.Transport.Packet.Payload(a1 + *(v12 + 20), v6);
  (*(v8 + 32))(v10, v6, v7);
  XPCSystem.Transport.Packet.Header.write(to:)(v10, *a1, *(a1 + 8));
  dispatch thunk of XPCSession.send(message:)();
  (*(v8 + 8))(v10, v7);
  if (v2)
  {
    v14[0] = 0;
    v14[1] = 0xE000000000000000;
    MEMORY[0x277C6B720](0x6973736553435058, 0xEC000000203A6E6FLL);
    v14[3] = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    _print_unlocked<A, B>(_:_:)();
    v11 = v14[0];
    lazy protocol witness table accessor for type XPCSystem.Transport.RawTransportError and conformance XPCSystem.Transport.RawTransportError();
    swift_willThrowTypedImpl();
  }

  return v11;
}

uint64_t XPCSystem.Transport.XPCRawTransport.auditToken.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = XPCSession.auditToken.getter();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  result = audit_token_t.isValid.getter();
  if (result)
  {
    v10 = v2;
  }

  else
  {
    v10 = 0;
  }

  if (result)
  {
    v11 = v4;
  }

  else
  {
    v11 = 0;
  }

  if (result)
  {
    v12 = v6;
  }

  else
  {
    v12 = 0;
  }

  if (result)
  {
    v13 = v8;
  }

  else
  {
    v13 = 0;
  }

  *a1 = v10;
  *(a1 + 8) = v11;
  *(a1 + 16) = v12;
  *(a1 + 24) = v13;
  *(a1 + 32) = (result & 1) == 0;
  return result;
}

uint64_t XPCSystem.Transport.XPCRawTransport.deinit()
{

  return v0;
}

uint64_t XPCSystem.Transport.XPCRawTransport.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void _s14XPCDistributed9XPCSystemC9TransportC06XPCRawC0CAE03RawC8ProtocolAaeHP8activate7linkingyAE_tAC10SetupErrorVYKFTW(uint64_t a1, void *a2)
{
  _s14XPCDistributed9XPCSystemC9TransportC06XPCRawC0C8activate7linkingyAE_tAC10SetupErrorVYKF(a1, v5);
  if (v2)
  {
    v4 = v5[1];
    *a2 = v5[0];
    a2[1] = v4;
  }
}

uint64_t protocol witness for XPCSystem.Transport.RawTransportProtocol.auditToken.getter in conformance XPCSystem.Transport.XPCRawTransport@<X0>(uint64_t a1@<X8>)
{
  v2 = XPCSession.auditToken.getter();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  result = audit_token_t.isValid.getter();
  if (result)
  {
    v10 = v2;
  }

  else
  {
    v10 = 0;
  }

  if (result)
  {
    v11 = v4;
  }

  else
  {
    v11 = 0;
  }

  if (result)
  {
    v12 = v6;
  }

  else
  {
    v12 = 0;
  }

  if (result)
  {
    v13 = v8;
  }

  else
  {
    v13 = 0;
  }

  *a1 = v10;
  *(a1 + 8) = v11;
  *(a1 + 16) = v12;
  *(a1 + 24) = v13;
  *(a1 + 32) = (result & 1) == 0;
  return result;
}

uint64_t outlined destroy of XPCSystem.Transport.Packet?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14XPCDistributed9XPCSystemC9TransportC6PacketVSgMd, &_s14XPCDistributed9XPCSystemC9TransportC6PacketVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with take of XPCSystem.Transport.Packet(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for XPCSystem.Transport.Packet(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t one-time initialization function for generalLog(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v4, a2);
  __swift_project_value_buffer(v4, a2);
  return Logger.init(subsystem:category:)();
}

uint64_t sessionLog.unsafeMutableAddressor(void *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();

  return __swift_project_value_buffer(v4, a2);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance Ack.CodingKeys@<X0>(_BYTE *a2@<X8>)
{

  *a2 = 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Ack.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Ack.CodingKeys and conformance Ack.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Ack.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Ack.CodingKeys and conformance Ack.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Ack.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14XPCDistributed3AckV10CodingKeys33_396AC60AE4D4A7867AFA16DA87D1E327LLOGMd, &_ss22KeyedEncodingContainerVy14XPCDistributed3AckV10CodingKeys33_396AC60AE4D4A7867AFA16DA87D1E327LLOGMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type Ack.CodingKeys and conformance Ack.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  return (*(v3 + 8))(v5, v2);
}

unint64_t lazy protocol witness table accessor for type Ack.CodingKeys and conformance Ack.CodingKeys()
{
  result = lazy protocol witness table cache variable for type Ack.CodingKeys and conformance Ack.CodingKeys;
  if (!lazy protocol witness table cache variable for type Ack.CodingKeys and conformance Ack.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Ack.CodingKeys, &unk_2883F61A0, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type Ack.CodingKeys and conformance Ack.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Ack.CodingKeys and conformance Ack.CodingKeys;
  if (!lazy protocol witness table cache variable for type Ack.CodingKeys and conformance Ack.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Ack.CodingKeys, &unk_2883F61A0, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type Ack.CodingKeys and conformance Ack.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Ack.CodingKeys and conformance Ack.CodingKeys;
  if (!lazy protocol witness table cache variable for type Ack.CodingKeys and conformance Ack.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Ack.CodingKeys, &unk_2883F61A0, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type Ack.CodingKeys and conformance Ack.CodingKeys);
  }

  return result;
}

uint64_t protocol witness for Encodable.encode(to:) in conformance Ack(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14XPCDistributed3AckV10CodingKeys33_396AC60AE4D4A7867AFA16DA87D1E327LLOGMd, &_ss22KeyedEncodingContainerVy14XPCDistributed3AckV10CodingKeys33_396AC60AE4D4A7867AFA16DA87D1E327LLOGMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type Ack.CodingKeys and conformance Ack.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  return (*(v3 + 8))(v5, v2);
}

uint64_t XPCSystem.TransportReceiver.peerHandlingTasks.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 64) = a1;
}

uint64_t XPCSystem.TransportReceiver.__allocating_init(actorSystem:peerHandler:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = a1;
  *(result + 32) = a2;
  *(result + 40) = a3;
  *(result + 48) = 0;
  v7 = MEMORY[0x277D84F90];
  *(result + 56) = 0;
  *(result + 64) = v7;
  return result;
}

uint64_t XPCSystem.TransportReceiver.init(actorSystem:peerHandler:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = 0;
  *(v3 + 24) = a1;
  *(v3 + 32) = a2;
  *(v3 + 40) = a3;
  *(v3 + 48) = 0;
  v4 = MEMORY[0x277D84F90];
  *(v3 + 56) = 0;
  *(v3 + 64) = v4;
  return v3;
}

uint64_t XPCSystem.TransportReceiver.setCancellationHandler(_:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v4 = *(v2 + 56);
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  outlined consume of (@escaping @callee_guaranteed @Sendable () -> ())?(v5, v4);
}

uint64_t _s14XPCDistributed9XPCSystemC17TransportReceiverC06attachC0yyAC0C0CAC10SetupErrorVYKF(uint64_t a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v23[-1] - v6;
  v8 = *(v3 + 24);

  type metadata accessor for XPCSystem.Session();
  swift_allocObject();

  v9 = _s14XPCDistributed9XPCSystemC7SessionC11actorSystem9transport7optionsAeC_AC9TransportCAE21InitializationOptionsVtAC10SetupErrorVYKcfc(v8, a1, 6, v23);
  if (v2)
  {
    v19 = v23[0];
    v20 = v23[1];
    lazy protocol witness table accessor for type XPCSystem.SetupError and conformance XPCSystem.SetupError();
    swift_allocError();
    *v21 = v19;
    v21[1] = v20;
    result = swift_unexpectedError();
    __break(1u);
  }

  else
  {
    v10 = v9;
    v11 = type metadata accessor for TaskPriority();
    (*(*(v11 - 8) + 56))(v7, 1, 1, v11);
    v12 = swift_allocObject();
    v12[2] = 0;
    v12[3] = 0;
    v12[4] = v3;
    v12[5] = v10;
    swift_retain_n();

    v13 = _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfC14XPCDistributed9XPCSystemC7SessionC14LocalInterfaceV15ActivationTokenV_Tt2g5(0, 0, v7, &_s14XPCDistributed9XPCSystemC17TransportReceiverC06attachC0yyAC0C0CAC10SetupErrorVYKFAC7SessionC14LocalInterfaceV15ActivationTokenVyYacfU_TATu, v12);
    swift_beginAccess();
    v14 = *(v3 + 64);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v3 + 64) = v14;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v14[2] + 1, 1, v14);
      *(v3 + 64) = v14;
    }

    v17 = v14[2];
    v16 = v14[3];
    if (v17 >= v16 >> 1)
    {
      v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1, v14);
    }

    v14[2] = v17 + 1;
    v14[v17 + 4] = v13;
    *(v3 + 64) = v14;
    swift_endAccess();
    _s14XPCDistributed9XPCSystemC7SessionC14readyToReceiveyyScTyAE14LocalInterfaceV15ActivationTokenVs5NeverOGAC10SetupErrorVYKF(v13, v23);
  }

  return result;
}

uint64_t _s14XPCDistributed9XPCSystemC17TransportReceiverC06attachC0yyAC0C0CAC10SetupErrorVYKFAC7SessionC14LocalInterfaceV15ActivationTokenVyYacfU_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[4] = a1;
  return MEMORY[0x2822009F8](_s14XPCDistributed9XPCSystemC17TransportReceiverC06attachC0yyAC0C0CAC10SetupErrorVYKFAC7SessionC14LocalInterfaceV15ActivationTokenVyYacfU_TY0_, 0, 0);
}

uint64_t _s14XPCDistributed9XPCSystemC17TransportReceiverC06attachC0yyAC0C0CAC10SetupErrorVYKFAC7SessionC14LocalInterfaceV15ActivationTokenVyYacfU_TY0_()
{
  v1 = *(v0[5] + 32);
  v0[3] = v0[6];

  v4 = (v1 + *v1);
  v2 = swift_task_alloc();
  v0[7] = v2;
  *v2 = v0;
  v2[1] = _s14XPCDistributed9XPCSystemC17TransportReceiverC06attachC0yyAC0C0CAC10SetupErrorVYKFAC7SessionC14LocalInterfaceV15ActivationTokenVyYacfU_TQ1_;

  return (v4)(v0 + 2, v0 + 3);
}

uint64_t _s14XPCDistributed9XPCSystemC17TransportReceiverC06attachC0yyAC0C0CAC10SetupErrorVYKFAC7SessionC14LocalInterfaceV15ActivationTokenVyYacfU_TQ1_()
{

  return MEMORY[0x2822009F8](_s14XPCDistributed9XPCSystemC17TransportReceiverC06attachC0yyAC0C0CAC10SetupErrorVYKFAC7SessionC14LocalInterfaceV15ActivationTokenVyYacfU_TY2_, 0, 0);
}

uint64_t _s14XPCDistributed9XPCSystemC17TransportReceiverC06attachC0yyAC0C0CAC10SetupErrorVYKFAC7SessionC14LocalInterfaceV15ActivationTokenVyYacfU_TY2_()
{
  v1 = *(v0 + 16);
  if (v1 != *(*(v0 + 48) + 24))
  {
    return _assertionFailure(_:_:file:line:flags:)();
  }

  **(v0 + 32) = v1;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t _s14XPCDistributed9XPCSystemC17TransportReceiverC06attachC0yyAC0C0CAC10SetupErrorVYKFAC7SessionC14LocalInterfaceV15ActivationTokenVyYacfU_TA(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for implicit closure #1 in XPCSystem.Session.LocalInterface.activateThenWithRemoteInterface<A>(perform:);

  return _s14XPCDistributed9XPCSystemC17TransportReceiverC06attachC0yyAC0C0CAC10SetupErrorVYKFAC7SessionC14LocalInterfaceV15ActivationTokenVyYacfU_(a1, v4, v5, v7, v6);
}

Swift::Void __swiftcall XPCSystem.TransportReceiver.cancel()()
{
  v1 = 0;
  atomic_compare_exchange_strong_explicit((v0 + 16), &v1, 1u, memory_order_relaxed, memory_order_relaxed);
  if (!v1)
  {
    v2 = *(v0 + 48);
    if (v2)
    {
      v3 = *(v0 + 56);

      v2(v4);
      outlined consume of (@escaping @callee_guaranteed @Sendable () -> ())?(v2, v3);
      v5 = *(v0 + 48);
      v6 = *(v0 + 56);
      *(v0 + 48) = 0;
      *(v0 + 56) = 0;

      outlined consume of (@escaping @callee_guaranteed @Sendable () -> ())?(v5, v6);
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t XPCSystem.TransportReceiver.unwindPeers()()
{
  *(v1 + 56) = v0;
  return MEMORY[0x2822009F8](XPCSystem.TransportReceiver.unwindPeers(), 0, 0);
}

{
  v1 = v0[7];
  swift_beginAccess();
  v2 = *(*(v1 + 64) + 16);
  v0[8] = v2;
  if (v2)
  {

    v3 = 32;
    v4 = MEMORY[0x277D84A98];
    v5 = MEMORY[0x277D84AC0];
    do
    {

      MEMORY[0x277C6B800](v6, &type metadata for XPCSystem.Session.LocalInterface.ActivationToken, v4, v5);

      v3 += 8;
      --v2;
    }

    while (v2);

    v11 = *(v1 + 64);
    v0[9] = v11;
    v12 = v11[2];
    v0[10] = v12;
    if (v12)
    {
      v0[11] = 0;
      v13 = v11[4];
      v0[12] = v13;

      v14 = swift_task_alloc();
      v0[13] = v14;
      *v14 = v0;
      v14[1] = XPCSystem.TransportReceiver.unwindPeers();
      v8 = &type metadata for XPCSystem.Session.LocalInterface.ActivationToken;
      v9 = MEMORY[0x277D84A98];
      v10 = MEMORY[0x277D84AC0];
      v11 = v0 + 5;
      v7 = v13;
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x282200440](v11, v7, v8, v9, v10);
  }

  else
  {
    v15 = v0[1];

    return v15();
  }
}

{

  return MEMORY[0x2822009F8](XPCSystem.TransportReceiver.unwindPeers(), 0, 0);
}

{
  v1 = v0[11];
  v2 = v0[10];

  if (v1 + 1 != v2)
  {
LABEL_4:
    v5 = v0[11] + 1;
    v0[11] = v5;
    v6 = *(v0[9] + 8 * v5 + 32);
    v0[12] = v6;

    v7 = swift_task_alloc();
    v0[13] = v7;
    *v7 = v0;
    v7[1] = XPCSystem.TransportReceiver.unwindPeers();
    v8 = MEMORY[0x277D84A98];
    v9 = MEMORY[0x277D84AC0];

    return MEMORY[0x282200440](v0 + 5, v6, &type metadata for XPCSystem.Session.LocalInterface.ActivationToken, v8, v9);
  }

  v3 = v0[8];
  v4 = v0[7];

  if (v3 != *(*(v4 + 64) + 16))
  {
    __break(1u);
    goto LABEL_4;
  }

  v10 = v0[1];

  return v10();
}

uint64_t *XPCSystem.TransportReceiver.deinit()
{

  outlined consume of (@escaping @callee_guaranteed @Sendable () -> ())?(*(v0 + 48), *(v0 + 56));

  return v0;
}

uint64_t XPCSystem.TransportReceiver.__deallocating_deinit()
{

  outlined consume of (@escaping @callee_guaranteed @Sendable () -> ())?(*(v0 + 48), *(v0 + 56));

  return swift_deallocClassInstance();
}

uint64_t _s14XPCDistributed9XPCSystemC16InProcessServiceC7connect33_5CCECF3DC83765D42C0E856F2292EC88LL5usingAC9TransportCAC_tYaAC10SetupErrorVYKF(uint64_t a1, uint64_t a2)
{
  *(v3 + 88) = v2;
  *(v3 + 96) = a2;
  return MEMORY[0x2822009F8](_s14XPCDistributed9XPCSystemC16InProcessServiceC7connect33_5CCECF3DC83765D42C0E856F2292EC885usingAC9TransportCAC_tYaAC10SetupErrorVYKFTY0_, 0, 0);
}

uint64_t _s14XPCDistributed9XPCSystemC16InProcessServiceC7connect33_5CCECF3DC83765D42C0E856F2292EC88LL5usingAC9TransportCAC_tYaAC10SetupErrorVYKFTY0_()
{
  v1 = v0[11];
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = specialized static XPCSystem.Transport.InProcessRawTransport.makePair(_:)();
  v6 = v5;
  v0[13] = v4;
  v0[14] = v5;
  if (one-time initialization token for default != -1)
  {
LABEL_10:
    swift_once();
  }

  v7 = static ID64.default;
  do
  {
    v8 = v7 + 1;
    if (v7 == -1)
    {
      __break(1u);
      goto LABEL_10;
    }

    v9 = v7;
    atomic_compare_exchange_strong_explicit(&static ID64.default, &v9, v8, memory_order_relaxed, memory_order_relaxed);
    v10 = v9 == v7;
    v7 = v9;
  }

  while (!v10);
  v0[2] = 0;
  v0[3] = 0xE000000000000000;
  MEMORY[0x277C6B720](v2, v3);
  MEMORY[0x277C6B720](0x6E756F6274756F2FLL, 0xEA00000000002D64);
  v0[8] = v8;
  _print_unlocked<A, B>(_:_:)();
  v11 = v0[2];
  v12 = v0[3];
  type metadata accessor for XPCSystem.Transport();
  v13 = swift_allocObject();

  v0[15] = specialized XPCSystem.Transport.init(debugName:rawTransport:)(v11, v12, v4, v13);
  v0[4] = 0;
  v0[5] = 0xE000000000000000;
  MEMORY[0x277C6B720](v2, v3);
  MEMORY[0x277C6B720](0x646E756F626E692FLL, 0xE90000000000002DLL);
  v0[9] = v8;
  _print_unlocked<A, B>(_:_:)();
  v14 = v0[4];
  v15 = v0[5];
  v16 = swift_allocObject();

  v0[16] = specialized XPCSystem.Transport.init(debugName:rawTransport:)(v14, v15, v6, v16);
  v17 = swift_task_alloc();
  v0[17] = v17;
  *v17 = v0;
  v17[1] = _s14XPCDistributed9XPCSystemC16InProcessServiceC7connect33_5CCECF3DC83765D42C0E856F2292EC885usingAC9TransportCAC_tYaAC10SetupErrorVYKFTQ1_;

  return MEMORY[0x28210E9A8](v0 + 10);
}

uint64_t _s14XPCDistributed9XPCSystemC16InProcessServiceC7connect33_5CCECF3DC83765D42C0E856F2292EC88LL5usingAC9TransportCAC_tYaAC10SetupErrorVYKFTQ1_()
{

  return MEMORY[0x2822009F8](_s14XPCDistributed9XPCSystemC16InProcessServiceC7connect33_5CCECF3DC83765D42C0E856F2292EC885usingAC9TransportCAC_tYaAC10SetupErrorVYKFTY2_, 0, 0);
}

uint64_t _s14XPCDistributed9XPCSystemC16InProcessServiceC7connect33_5CCECF3DC83765D42C0E856F2292EC88LL5usingAC9TransportCAC_tYaAC10SetupErrorVYKFTY2_()
{
  _s14XPCDistributed9XPCSystemC17TransportReceiverC06attachC0yyAC0C0CAC10SetupErrorVYKF(v0[16]);

  v1 = v0[1];
  v2 = v0[15];

  return v1(v2);
}

void *XPCSystem.InProcessService.__allocating_init(_:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  v4[2] = a1;
  v4[3] = a2;
  v5 = swift_allocObject();
  *(v5 + 24) = 0;
  *(v5 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine6FutureCy14XPCDistributed9XPCSystemC17TransportReceiverCs5NeverOGMd, &_s7Combine6FutureCy14XPCDistributed9XPCSystemC17TransportReceiverCs5NeverOGMR);
  swift_allocObject();

  v6 = Future.init(_:)();
  result = swift_beginAccess();
  v8 = *(v5 + 16);
  if (v8)
  {
    v9 = *(v5 + 24);

    v4[4] = v6;
    v4[5] = v8;
    v4[6] = v9;
    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *XPCSystem.InProcessService.init(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v2[2] = a1;
  v2[3] = a2;
  v4 = swift_allocObject();
  *(v4 + 24) = 0;
  *(v4 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine6FutureCy14XPCDistributed9XPCSystemC17TransportReceiverCs5NeverOGMd, &_s7Combine6FutureCy14XPCDistributed9XPCSystemC17TransportReceiverCs5NeverOGMR);
  swift_allocObject();

  v5 = Future.init(_:)();
  result = swift_beginAccess();
  v7 = *(v4 + 16);
  if (v7)
  {
    v8 = *(v4 + 24);

    v3[4] = v5;
    v3[5] = v7;
    v3[6] = v8;
    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t XPCSystem.InProcessService.deinit()
{

  return v0;
}

uint64_t XPCSystem.InProcessService.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t _s14XPCDistributed9XPCSystemC19withRemoteInterface2to7performxAC16InProcessServiceC_xAC7SessionC0dE0VYaXEtYaAC10SetupErrorVYKs8SendableRzlF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[10] = v6;
  v7[11] = a6;
  v7[8] = a4;
  v7[9] = a5;
  v7[6] = a1;
  v7[7] = a3;
  v8 = swift_task_alloc();
  v7[12] = v8;
  *v8 = v7;
  v8[1] = _s14XPCDistributed9XPCSystemC19withRemoteInterface2to7performxAC16InProcessServiceC_xAC7SessionC0dE0VYaXEtYaAC10SetupErrorVYKs8SendableRzlFTQ0_;

  return _s14XPCDistributed9XPCSystemC16InProcessServiceC7connect33_5CCECF3DC83765D42C0E856F2292EC885usingAC9TransportCAC_tYaAC10SetupErrorVYKF(v6, (v7 + 2));
}

uint64_t _s14XPCDistributed9XPCSystemC19withRemoteInterface2to7performxAC16InProcessServiceC_xAC7SessionC0dE0VYaXEtYaAC10SetupErrorVYKs8SendableRzlFTQ0_(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 104) = a1;

  if (v1)
  {

    return MEMORY[0x2822009F8](_s14XPCDistributed9XPCSystemC19withRemoteInterface2to7performxAC16InProcessServiceC_xAC7SessionC0dE0VYaXEtYaAC10SetupErrorVYKs8SendableRzlFTY3_, 0, 0);
  }

  else
  {
    v6 = swift_task_alloc();
    v4[14] = v6;
    *v6 = v5;
    v6[1] = _s14XPCDistributed9XPCSystemC19withRemoteInterface2to7performxAC16InProcessServiceC_xAC7SessionC0dE0VYaXEtYaAC10SetupErrorVYKs8SendableRzlFTQ1_;
    v7 = v4[9];
    v8 = v4[7];
    v9 = v4[8];
    v10 = v4[6];

    return _s14XPCDistributed9XPCSystemC19withRemoteInterface4over7performxAC9TransportC_xAC7SessionC0dE0VYaXEtYaAC10SetupErrorVYKs8SendableRzlF(v10, a1, v8, v9, v7, (v4 + 4));
  }
}

uint64_t _s14XPCDistributed9XPCSystemC19withRemoteInterface2to7performxAC16InProcessServiceC_xAC7SessionC0dE0VYaXEtYaAC10SetupErrorVYKs8SendableRzlFTQ1_()
{

  if (v0)
  {
    v1 = _s14XPCDistributed9XPCSystemC19withRemoteInterface2to7performxAC16InProcessServiceC_xAC7SessionC0dE0VYaXEtYaAC10SetupErrorVYKs8SendableRzlFTY4_;
  }

  else
  {
    v1 = _s14XPCDistributed9XPCSystemC19withRemoteInterface2to7performxAC16InProcessServiceC_xAC7SessionC0dE0VYaXEtYaAC10SetupErrorVYKs8SendableRzlFTY2_;
  }

  return MEMORY[0x2822009F8](v1, 0, 0);
}

uint64_t _s14XPCDistributed9XPCSystemC19withRemoteInterface2to7performxAC16InProcessServiceC_xAC7SessionC0dE0VYaXEtYaAC10SetupErrorVYKs8SendableRzlFTY2_()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t _s14XPCDistributed9XPCSystemC19withRemoteInterface2to7performxAC16InProcessServiceC_xAC7SessionC0dE0VYaXEtYaAC10SetupErrorVYKs8SendableRzlFTY3_()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 24);
  *v1 = *(v0 + 16);
  v1[1] = v2;
  return (*(v0 + 8))();
}

uint64_t _s14XPCDistributed9XPCSystemC19withRemoteInterface2to7performxAC16InProcessServiceC_xAC7SessionC0dE0VYaXEtYaAC10SetupErrorVYKs8SendableRzlFTY4_()
{
  v1 = v0[11];

  v2 = v0[5];
  *v1 = v0[4];
  v1[1] = v2;
  v3 = v0[1];

  return v3();
}

uint64_t _s14XPCDistributed9XPCSystemC19withRemoteInterface2to7performs6ResultOyxq_GAC16InProcessServiceC_xAC7SessionC0dE0VYaq_YKXEtYaAC10SetupErrorVYKs8SendableRzs0N0R_r0_lF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[12] = v8;
  v9[13] = a8;
  v9[10] = a6;
  v9[11] = a7;
  v9[8] = a4;
  v9[9] = a5;
  v9[6] = a1;
  v9[7] = a3;
  v10 = swift_task_alloc();
  v9[14] = v10;
  *v10 = v9;
  v10[1] = _s14XPCDistributed9XPCSystemC19withRemoteInterface2to7performs6ResultOyxq_GAC16InProcessServiceC_xAC7SessionC0dE0VYaq_YKXEtYaAC10SetupErrorVYKs8SendableRzs0N0R_r0_lFTQ0_;

  return _s14XPCDistributed9XPCSystemC16InProcessServiceC7connect33_5CCECF3DC83765D42C0E856F2292EC885usingAC9TransportCAC_tYaAC10SetupErrorVYKF(v8, (v9 + 2));
}

uint64_t _s14XPCDistributed9XPCSystemC19withRemoteInterface2to7performs6ResultOyxq_GAC16InProcessServiceC_xAC7SessionC0dE0VYaq_YKXEtYaAC10SetupErrorVYKs8SendableRzs0N0R_r0_lFTQ0_(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 120) = a1;

  if (v1)
  {

    return MEMORY[0x2822009F8](_s14XPCDistributed9XPCSystemC19withRemoteInterface2to7performs6ResultOyxq_GAC16InProcessServiceC_xAC7SessionC0dE0VYaq_YKXEtYaAC10SetupErrorVYKs8SendableRzs0N0R_r0_lFTY3_, 0, 0);
  }

  else
  {
    v6 = swift_task_alloc();
    v4[16] = v6;
    *v6 = v5;
    v6[1] = _s14XPCDistributed9XPCSystemC19withRemoteInterface2to7performs6ResultOyxq_GAC16InProcessServiceC_xAC7SessionC0dE0VYaq_YKXEtYaAC10SetupErrorVYKs8SendableRzs0N0R_r0_lFTQ1_;
    v7 = v4[11];
    v8 = v4[9];
    v9 = v4[10];
    v10 = v4[7];
    v11 = v4[8];
    v12 = v4[6];

    return _s14XPCDistributed9XPCSystemC19withRemoteInterface4over7performs6ResultOyxq_GAC9TransportC_xAC7SessionC0dE0VYaq_YKXEtYaAC10SetupErrorVYKs8SendableRzs0L0R_r0_lF(v12, a1, v10, v11, v8, v9, v7, (v4 + 4));
  }
}

uint64_t _s14XPCDistributed9XPCSystemC19withRemoteInterface2to7performs6ResultOyxq_GAC16InProcessServiceC_xAC7SessionC0dE0VYaq_YKXEtYaAC10SetupErrorVYKs8SendableRzs0N0R_r0_lFTQ1_()
{

  if (v0)
  {
    v1 = _s14XPCDistributed9XPCSystemC19withRemoteInterface2to7performs6ResultOyxq_GAC16InProcessServiceC_xAC7SessionC0dE0VYaq_YKXEtYaAC10SetupErrorVYKs8SendableRzs0N0R_r0_lFTY4_;
  }

  else
  {
    v1 = _s14XPCDistributed9XPCSystemC19withRemoteInterface2to7performs6ResultOyxq_GAC16InProcessServiceC_xAC7SessionC0dE0VYaq_YKXEtYaAC10SetupErrorVYKs8SendableRzs0N0R_r0_lFTY2_;
  }

  return MEMORY[0x2822009F8](v1, 0, 0);
}

uint64_t _s14XPCDistributed9XPCSystemC19withRemoteInterface2to7performs6ResultOyxq_GAC16InProcessServiceC_xAC7SessionC0dE0VYaq_YKXEtYaAC10SetupErrorVYKs8SendableRzs0N0R_r0_lFTY2_()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t _s14XPCDistributed9XPCSystemC19withRemoteInterface2to7performs6ResultOyxq_GAC16InProcessServiceC_xAC7SessionC0dE0VYaq_YKXEtYaAC10SetupErrorVYKs8SendableRzs0N0R_r0_lFTY3_()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 24);
  *v1 = *(v0 + 16);
  v1[1] = v2;
  return (*(v0 + 8))();
}

uint64_t _s14XPCDistributed9XPCSystemC19withRemoteInterface2to7performs6ResultOyxq_GAC16InProcessServiceC_xAC7SessionC0dE0VYaq_YKXEtYaAC10SetupErrorVYKs8SendableRzs0N0R_r0_lFTY4_()
{
  v1 = v0[13];

  v2 = v0[5];
  *v1 = v0[4];
  v1[1] = v2;
  v3 = v0[1];

  return v3();
}

uint64_t _s14XPCDistributed9XPCSystemC19makeRemoteInterface2toAC7SessionC0dE0VAC16InProcessServiceC_tYaAC10SetupErrorVYKF(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[7] = v3;
  v4[8] = a3;
  v4[6] = a1;
  v5 = swift_task_alloc();
  v4[9] = v5;
  *v5 = v4;
  v5[1] = _s14XPCDistributed9XPCSystemC19makeRemoteInterface2toAC7SessionC0dE0VAC16InProcessServiceC_tYaAC10SetupErrorVYKFTQ0_;

  return _s14XPCDistributed9XPCSystemC16InProcessServiceC7connect33_5CCECF3DC83765D42C0E856F2292EC885usingAC9TransportCAC_tYaAC10SetupErrorVYKF(v3, (v4 + 2));
}

uint64_t _s14XPCDistributed9XPCSystemC19makeRemoteInterface2toAC7SessionC0dE0VAC16InProcessServiceC_tYaAC10SetupErrorVYKFTQ0_(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 80) = a1;
  *(v3 + 88) = v1;

  if (v1)
  {
    v4 = _s14XPCDistributed9XPCSystemC19makeRemoteInterface2toAC7SessionC0dE0VAC16InProcessServiceC_tYaAC10SetupErrorVYKFTY2_;
  }

  else
  {
    v4 = _s14XPCDistributed9XPCSystemC19makeRemoteInterface2toAC7SessionC0dE0VAC16InProcessServiceC_tYaAC10SetupErrorVYKFTY1_;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t _s14XPCDistributed9XPCSystemC19makeRemoteInterface2toAC7SessionC0dE0VAC16InProcessServiceC_tYaAC10SetupErrorVYKFTY1_()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);
  v3 = *(v0 + 56);
  type metadata accessor for XPCSystem.Session();
  swift_allocObject();

  v4 = _s14XPCDistributed9XPCSystemC7SessionC11actorSystem9transport7optionsAeC_AC9TransportCAE21InitializationOptionsVtAC10SetupErrorVYKcfc(v3, v1, 0, (v0 + 32));
  if (v2)
  {
    v5 = *(v0 + 64);
    v6 = *(v0 + 32);
    v7 = *(v0 + 40);

    *v5 = v6;
    v5[1] = v7;
  }

  else
  {
    **(v0 + 48) = v4;
  }

  v8 = *(v0 + 8);

  return v8();
}

uint64_t _s14XPCDistributed9XPCSystemC19makeRemoteInterface2toAC7SessionC0dE0VAC16InProcessServiceC_tYaAC10SetupErrorVYKFTY2_()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 24);
  *v1 = *(v0 + 16);
  v1[1] = v2;
  return (*(v0 + 8))();
}

uint64_t XPCSystem.listen(on:executingForEachPeer:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[6] = a3;
  v4[7] = v3;
  v4[4] = a1;
  v4[5] = a2;
  return MEMORY[0x2822009F8](XPCSystem.listen(on:executingForEachPeer:), 0, 0);
}

uint64_t XPCSystem.listen(on:executingForEachPeer:)()
{
  v1 = swift_allocObject();
  *(v0 + 64) = v1;
  *(v1 + 16) = *(v0 + 40);
  v2 = swift_task_alloc();
  *(v0 + 72) = v2;
  *v2 = v0;
  v2[1] = XPCSystem.listen(on:executingForEachPeer:);
  v3 = *(v0 + 56);
  v4 = *(v0 + 32);

  return _s14XPCDistributed9XPCSystemC6listen2on20executingForEachPeeryAC16InProcessServiceC_yt6result_AC7SessionC14LocalInterfaceV15ActivationTokenV5tokentAMnYaYbXEtYaKFyytAI_AoPtAMnYaYbcYaAC10SetupErrorVYKXEfU_(&async function pointer to partial apply for thunk for @callee_guaranteed @Sendable @async (@in XPCSystem.Session.LocalInterface) -> (@out XPCSystem.Session.LocalInterface.ActivationToken), v1, v3, v4);
}

{

  if (v0)
  {
    v1 = XPCSystem.listen(on:executingForEachPeer:);
  }

  else
  {
    v1 = XPCSystem.listen(on:executingForEachPeer:);
  }

  return MEMORY[0x2822009F8](v1, 0, 0);
}

{
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v3 = *(v0 + 8);

    return v3();
  }

  return result;
}

{
  v1 = v0[2];
  v2 = v0[3];
  lazy protocol witness table accessor for type XPCSystem.SetupError and conformance XPCSystem.SetupError();
  swift_allocError();
  *v3 = v1;
  v3[1] = v2;
  LOBYTE(v1) = swift_isEscapingClosureAtFileLocation();

  if (v1)
  {
    __break(1u);
  }

  else
  {
    v5 = v0[1];

    return v5();
  }

  return result;
}

uint64_t thunk for @callee_guaranteed @Sendable @async (@in XPCSystem.Session.LocalInterface) -> (@out XPCSystem.Session.LocalInterface.ActivationToken)(uint64_t a1, uint64_t a2, int *a3)
{
  v8 = (a3 + *a3);
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = partial apply for implicit closure #1 in XPCSystem.Session.LocalInterface.activateThenWithRemoteInterface<A>(perform:);

  return v8(a1, a2);
}

uint64_t partial apply for thunk for @callee_guaranteed @Sendable @async (@in XPCSystem.Session.LocalInterface) -> (@out XPCSystem.Session.LocalInterface.ActivationToken)(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = partial apply for specialized implicit closure #1 in XPCSystem.Session.LocalInterface.activateThenWithRemoteInterface<A>(perform:);

  return thunk for @callee_guaranteed @Sendable @async (@in XPCSystem.Session.LocalInterface) -> (@out XPCSystem.Session.LocalInterface.ActivationToken)(a1, a2, v6);
}

uint64_t _s14XPCDistributed9XPCSystemC6listen2on20executingForEachPeeryAC16InProcessServiceC_yt6result_AC7SessionC14LocalInterfaceV15ActivationTokenV5tokentAMnYaYbXEtYaKFyytAI_AoPtAMnYaYbcYaAC10SetupErrorVYKXEfU_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](_s14XPCDistributed9XPCSystemC6listen2on20executingForEachPeeryAC16InProcessServiceC_yt6result_AC7SessionC14LocalInterfaceV15ActivationTokenV5tokentAMnYaYbXEtYaKFyytAI_AoPtAMnYaYbcYaAC10SetupErrorVYKXEfU_TY0_, 0, 0);
}

uint64_t _s14XPCDistributed9XPCSystemC6listen2on20executingForEachPeeryAC16InProcessServiceC_yt6result_AC7SessionC14LocalInterfaceV15ActivationTokenV5tokentAMnYaYbXEtYaKFyytAI_AoPtAMnYaYbcYaAC10SetupErrorVYKXEfU_TY0_()
{
  v1 = v0[4];
  v2 = v0[5];
  v4 = v0[2];
  v3 = v0[3];
  type metadata accessor for XPCSystem.TransportReceiver();
  v5 = swift_allocObject();
  v0[6] = v5;
  *(v5 + 16) = 0;
  *(v5 + 24) = v1;
  *(v5 + 32) = v4;
  *(v5 + 40) = v3;
  *(v5 + 48) = 0;
  v6 = MEMORY[0x277D84F90];
  *(v5 + 56) = 0;
  *(v5 + 64) = v6;

  v7 = swift_task_alloc();
  v0[7] = v7;
  *(v7 + 16) = v5;
  *(v7 + 24) = v2;

  v8 = swift_task_alloc();
  v0[8] = v8;
  *v8 = v0;
  v8[1] = _s14XPCDistributed9XPCSystemC6listen2on20executingForEachPeeryAC16InProcessServiceC_yt6result_AC7SessionC14LocalInterfaceV15ActivationTokenV5tokentAMnYaYbXEtYaKFyytAI_AoPtAMnYaYbcYaAC10SetupErrorVYKXEfU_TQ1_;
  v9 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282200830](v8, &_s14XPCDistributed9XPCSystemC6listen2on20executingForEachPeeryAC16InProcessServiceC_yt6result_AC7SessionC14LocalInterfaceV15ActivationTokenV5tokentAMnYaYbXEtYaKFyytAI_AoPtAMnYaYbcYaAC10SetupErrorVYKXEfU_yyYaXEfU_TATu, v7, _s14XPCDistributed9XPCSystemC6listen2on20executingForEachPeeryAC16InProcessServiceC_yt6result_AC7SessionC14LocalInterfaceV15ActivationTokenV5tokentAMnYaYbXEtYaKFyytAI_AoPtAMnYaYbcYaAC10SetupErrorVYKXEfU_yyYbXEfU0_TA, v5, 0, 0, v9);
}

void _s14XPCDistributed9XPCSystemC6listen2on20executingForEachPeeryAC16InProcessServiceC_yt6result_AC7SessionC14LocalInterfaceV15ActivationTokenV5tokentAMnYaYbXEtYaKFyytAI_AoPtAMnYaYbcYaAC10SetupErrorVYKXEfU_TQ1_()
{

  if (v0)
  {
  }

  else
  {

    MEMORY[0x2822009F8](_s14XPCDistributed9XPCSystemC6listen2on20executingForEachPeeryAC16InProcessServiceC_yt6result_AC7SessionC14LocalInterfaceV15ActivationTokenV5tokentAMnYaYbXEtYaKFyytAI_AoPtAMnYaYbcYaAC10SetupErrorVYKXEfU_TY2_, 0, 0);
  }
}

uint64_t _s14XPCDistributed9XPCSystemC6listen2on20executingForEachPeeryAC16InProcessServiceC_yt6result_AC7SessionC14LocalInterfaceV15ActivationTokenV5tokentAMnYaYbXEtYaKFyytAI_AoPtAMnYaYbcYaAC10SetupErrorVYKXEfU_TY2_()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t _s14XPCDistributed9XPCSystemC6listen2on20executingForEachPeeryAC16InProcessServiceC_yt6result_AC7SessionC14LocalInterfaceV15ActivationTokenV5tokentAMnYaYbXEtYaKFyytAI_AoPtAMnYaYbcYaAC10SetupErrorVYKXEfU_yyYaXEfU_(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](_s14XPCDistributed9XPCSystemC6listen2on20executingForEachPeeryAC16InProcessServiceC_yt6result_AC7SessionC14LocalInterfaceV15ActivationTokenV5tokentAMnYaYbXEtYaKFyytAI_AoPtAMnYaYbcYaAC10SetupErrorVYKXEfU_yyYaXEfU_TY0_, 0, 0);
}

uint64_t _s14XPCDistributed9XPCSystemC6listen2on20executingForEachPeeryAC16InProcessServiceC_yt6result_AC7SessionC14LocalInterfaceV15ActivationTokenV5tokentAMnYaYbXEtYaKFyytAI_AoPtAMnYaYbcYaAC10SetupErrorVYKXEfU_yyYaXEfU_TY0_()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *(v1 + 16) = *(v0 + 24);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *v2 = v0;
  v2[1] = _s14XPCDistributed9XPCSystemC6listen2on20executingForEachPeeryAC16InProcessServiceC_yt6result_AC7SessionC14LocalInterfaceV15ActivationTokenV5tokentAMnYaYbXEtYaKFyytAI_AoPtAMnYaYbcYaAC10SetupErrorVYKXEfU_yyYaXEfU_TQ1_;
  v3 = *(v0 + 16);
  v4 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822007B8](v3, 0, 0, 0xD000000000000020, 0x80000002751B98D0, _s14XPCDistributed9XPCSystemC6listen2on20executingForEachPeeryAC16InProcessServiceC_yt6result_AC7SessionC14LocalInterfaceV15ActivationTokenV5tokentAMnYaYbXEtYaKFyytAI_AoPtAMnYaYbcYaAC10SetupErrorVYKXEfU_yyYaXEfU_yScCyyts5NeverOGXEfU_TA, v1, v4);
}

uint64_t _s14XPCDistributed9XPCSystemC6listen2on20executingForEachPeeryAC16InProcessServiceC_yt6result_AC7SessionC14LocalInterfaceV15ActivationTokenV5tokentAMnYaYbXEtYaKFyytAI_AoPtAMnYaYbcYaAC10SetupErrorVYKXEfU_yyYaXEfU_TQ1_()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t _s14XPCDistributed9XPCSystemC6listen2on20executingForEachPeeryAC16InProcessServiceC_yt6result_AC7SessionC14LocalInterfaceV15ActivationTokenV5tokentAMnYaYbXEtYaKFyytAI_AoPtAMnYaYbcYaAC10SetupErrorVYKXEfU_yyYaXEfU_yScCyyts5NeverOGXEfU_(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGMd, &_sScCyyts5NeverOGMR);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v17 - v9;
  (*(v7 + 16))(&v17 - v9, a1, v6, v8);
  v11 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v12 = swift_allocObject();
  (*(v7 + 32))(v12 + v11, v10, v6);
  v13 = *(a2 + 48);
  v14 = *(a2 + 56);
  *(a2 + 48) = _s14XPCDistributed9XPCSystemC6listen2on20executingForEachPeeryAC16InProcessServiceC_yt6result_AC7SessionC14LocalInterfaceV15ActivationTokenV5tokentAMnYaYbXEtYaKFyytAI_AoPtAMnYaYbcYaAC10SetupErrorVYKXEfU_yyYaXEfU_yScCyyts5NeverOGXEfU_yyYbcfU_TA;
  *(a2 + 56) = v12;
  outlined consume of (@escaping @callee_guaranteed @Sendable () -> ())?(v13, v14);
  v15 = *(a3 + 40);
  v17 = a2;
  v18 = 0;

  v15(&v17);
}

uint64_t _s14XPCDistributed9XPCSystemC6listen2on20executingForEachPeeryAC16InProcessServiceC_yt6result_AC7SessionC14LocalInterfaceV15ActivationTokenV5tokentAMnYaYbXEtYaKFyytAI_AoPtAMnYaYbcYaAC10SetupErrorVYKXEfU_yyYbXEfU0_(uint64_t result)
{
  v1 = 0;
  atomic_compare_exchange_strong_explicit((result + 16), &v1, 1u, memory_order_relaxed, memory_order_relaxed);
  if (!v1)
  {
    v3 = (result + 48);
    v2 = *(result + 48);
    if (v2)
    {
      v4 = *(result + 56);
      v5 = result;

      v2(v6);
      outlined consume of (@escaping @callee_guaranteed @Sendable () -> ())?(v2, v4);
      v7 = *(v5 + 48);
      v8 = *(v5 + 56);
      *v3 = 0;
      v3[1] = 0;

      return outlined consume of (@escaping @callee_guaranteed @Sendable () -> ())?(v7, v8);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t _s14XPCDistributed9XPCSystemC26withBidirectionalInterface2to7performxAC16InProcessServiceC_x6result_AC7SessionC05LocalE0V15ActivationTokenV5tokentAMnYaXEtYaAC10SetupErrorVYKs8SendableRzlF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[10] = v6;
  v7[11] = a6;
  v7[8] = a4;
  v7[9] = a5;
  v7[6] = a1;
  v7[7] = a3;
  v8 = swift_task_alloc();
  v7[12] = v8;
  *v8 = v7;
  v8[1] = _s14XPCDistributed9XPCSystemC26withBidirectionalInterface2to7performxAC16InProcessServiceC_x6result_AC7SessionC05LocalE0V15ActivationTokenV5tokentAMnYaXEtYaAC10SetupErrorVYKs8SendableRzlFTQ0_;

  return _s14XPCDistributed9XPCSystemC16InProcessServiceC7connect33_5CCECF3DC83765D42C0E856F2292EC885usingAC9TransportCAC_tYaAC10SetupErrorVYKF(v6, (v7 + 2));
}

uint64_t _s14XPCDistributed9XPCSystemC26withBidirectionalInterface2to7performxAC16InProcessServiceC_x6result_AC7SessionC05LocalE0V15ActivationTokenV5tokentAMnYaXEtYaAC10SetupErrorVYKs8SendableRzlFTQ0_(uint64_t a1)
{
  *(*v2 + 104) = a1;

  if (v1)
  {
    v3 = _s14XPCDistributed9XPCSystemC26withBidirectionalInterface2to7performxAC16InProcessServiceC_x6result_AC7SessionC05LocalE0V15ActivationTokenV5tokentAMnYaXEtYaAC10SetupErrorVYKs8SendableRzlFTY4_;
  }

  else
  {
    v3 = _s14XPCDistributed9XPCSystemC26withBidirectionalInterface2to7performxAC16InProcessServiceC_x6result_AC7SessionC05LocalE0V15ActivationTokenV5tokentAMnYaXEtYaAC10SetupErrorVYKs8SendableRzlFTY1_;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t _s14XPCDistributed9XPCSystemC26withBidirectionalInterface2to7performxAC16InProcessServiceC_x6result_AC7SessionC05LocalE0V15ActivationTokenV5tokentAMnYaXEtYaAC10SetupErrorVYKs8SendableRzlFTY1_()
{
  v1 = *(v0 + 72);
  v2 = swift_task_alloc();
  *(v0 + 112) = v2;
  v3 = *(v0 + 56);
  *(v2 + 16) = v1;
  *(v2 + 24) = v3;
  v4 = swift_task_alloc();
  *(v0 + 120) = v4;
  *v4 = v0;
  v4[1] = _s14XPCDistributed9XPCSystemC26withBidirectionalInterface2to7performxAC16InProcessServiceC_x6result_AC7SessionC05LocalE0V15ActivationTokenV5tokentAMnYaXEtYaAC10SetupErrorVYKs8SendableRzlFTQ2_;
  v5 = *(v0 + 104);
  v6 = *(v0 + 72);
  v7 = *(v0 + 48);

  return _s14XPCDistributed9XPCSystemC26withBidirectionalInterface4over7performxAC9TransportC_x6result_AC7SessionC05LocalE0V15ActivationTokenV5tokentAMnYaXEtYaAC10SetupErrorVYKs8SendableRzlF(v7, v5, &_s14XPCDistributed9XPCSystemC26withBidirectionalInterface2to7performxAC16InProcessServiceC_x6result_AC7SessionC05LocalE0V15ActivationTokenV5tokentAMnYaXEtYaAC10SetupErrorVYKs8SendableRzlFxAI_AoPtAMnYaXEfU_TATu, v2, v6, v0 + 32);
}

uint64_t _s14XPCDistributed9XPCSystemC26withBidirectionalInterface2to7performxAC16InProcessServiceC_x6result_AC7SessionC05LocalE0V15ActivationTokenV5tokentAMnYaXEtYaAC10SetupErrorVYKs8SendableRzlFTQ2_()
{

  if (v0)
  {
    v1 = _s14XPCDistributed9XPCSystemC26withBidirectionalInterface2to7performxAC16InProcessServiceC_x6result_AC7SessionC05LocalE0V15ActivationTokenV5tokentAMnYaXEtYaAC10SetupErrorVYKs8SendableRzlFTY5_;
  }

  else
  {

    v1 = _s14XPCDistributed9XPCSystemC26withBidirectionalInterface2to7performxAC16InProcessServiceC_x6result_AC7SessionC05LocalE0V15ActivationTokenV5tokentAMnYaXEtYaAC10SetupErrorVYKs8SendableRzlFTY3_;
  }

  return MEMORY[0x2822009F8](v1, 0, 0);
}

uint64_t _s14XPCDistributed9XPCSystemC26withBidirectionalInterface2to7performxAC16InProcessServiceC_x6result_AC7SessionC05LocalE0V15ActivationTokenV5tokentAMnYaXEtYaAC10SetupErrorVYKs8SendableRzlFTY5_()
{
  v1 = v0[11];

  v2 = v0[5];
  *v1 = v0[4];
  v1[1] = v2;

  v3 = v0[1];

  return v3();
}

uint64_t _s14XPCDistributed9XPCSystemC26withBidirectionalInterface2to7performxAC16InProcessServiceC_x6result_AC7SessionC05LocalE0V15ActivationTokenV5tokentAMnYaXEtYaAC10SetupErrorVYKs8SendableRzlFxAI_AoPtAMnYaXEfU_(uint64_t a1, uint64_t a2, void *a3, int *a4)
{
  *(v4 + 16) = *a3;
  v9 = (a4 + *a4);
  v7 = swift_task_alloc();
  *(v4 + 24) = v7;
  *v7 = v4;
  v7[1] = closure #1 in XPCSystem.Session.LocalInterface.activateThenWaitForCancellation();

  return v9(a1, a2, v4 + 16);
}

uint64_t _s14XPCDistributed9XPCSystemC26withBidirectionalInterface2to7performxAC16InProcessServiceC_x6result_AC7SessionC05LocalE0V15ActivationTokenV5tokentAMnYaXEtYaAC10SetupErrorVYKs8SendableRzlFxAI_AoPtAMnYaXEfU_TA(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = *(v3 + 24);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = partial apply for implicit closure #1 in XPCSystem.Session.LocalInterface.activateThenWithRemoteInterface<A>(perform:);

  return _s14XPCDistributed9XPCSystemC26withBidirectionalInterface2to7performxAC16InProcessServiceC_x6result_AC7SessionC05LocalE0V15ActivationTokenV5tokentAMnYaXEtYaAC10SetupErrorVYKs8SendableRzlFxAI_AoPtAMnYaXEfU_(a1, a2, a3, v8);
}

uint64_t _s14XPCDistributed9XPCSystemC26makeBidirectionalInterface2to011assumeLocalE11ActivatedInAC7SessionC06RemoteE0VAC0J14ProcessServiceC_ScTyAH0hE0V15ActivationTokenVs5NeverOGAN16UncheckedHandoffVXEtYaAC10SetupErrorVYKF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[11] = v5;
  v6[12] = a5;
  v6[9] = a3;
  v6[10] = a4;
  v6[8] = a1;
  v7 = swift_task_alloc();
  v6[13] = v7;
  *v7 = v6;
  v7[1] = _s14XPCDistributed9XPCSystemC26makeBidirectionalInterface2to011assumeLocalE11ActivatedInAC7SessionC06RemoteE0VAC0J14ProcessServiceC_ScTyAH0hE0V15ActivationTokenVs5NeverOGAN16UncheckedHandoffVXEtYaAC10SetupErrorVYKFTQ0_;

  return _s14XPCDistributed9XPCSystemC16InProcessServiceC7connect33_5CCECF3DC83765D42C0E856F2292EC885usingAC9TransportCAC_tYaAC10SetupErrorVYKF(v5, (v6 + 2));
}

uint64_t _s14XPCDistributed9XPCSystemC26makeBidirectionalInterface2to011assumeLocalE11ActivatedInAC7SessionC06RemoteE0VAC0J14ProcessServiceC_ScTyAH0hE0V15ActivationTokenVs5NeverOGAN16UncheckedHandoffVXEtYaAC10SetupErrorVYKFTQ0_(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 112) = a1;
  *(v3 + 120) = v1;

  if (v1)
  {
    v4 = _s14XPCDistributed9XPCSystemC26makeBidirectionalInterface2to011assumeLocalE11ActivatedInAC7SessionC06RemoteE0VAC0J14ProcessServiceC_ScTyAH0hE0V15ActivationTokenVs5NeverOGAN16UncheckedHandoffVXEtYaAC10SetupErrorVYKFTY2_;
  }

  else
  {
    v4 = _s14XPCDistributed9XPCSystemC26makeBidirectionalInterface2to011assumeLocalE11ActivatedInAC7SessionC06RemoteE0VAC0J14ProcessServiceC_ScTyAH0hE0V15ActivationTokenVs5NeverOGAN16UncheckedHandoffVXEtYaAC10SetupErrorVYKFTY1_;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t _s14XPCDistributed9XPCSystemC26makeBidirectionalInterface2to011assumeLocalE11ActivatedInAC7SessionC06RemoteE0VAC0J14ProcessServiceC_ScTyAH0hE0V15ActivationTokenVs5NeverOGAN16UncheckedHandoffVXEtYaAC10SetupErrorVYKFTY1_()
{
  v17 = v0;
  v1 = v0[14];
  v2 = v0[15];
  v3 = v0[11];
  type metadata accessor for XPCSystem.Session();
  swift_allocObject();

  v4 = _s14XPCDistributed9XPCSystemC7SessionC11actorSystem9transport7optionsAeC_AC9TransportCAE21InitializationOptionsVtAC10SetupErrorVYKcfc(v3, v1, 6, v0 + 4);
  if (v2)
  {
    v5 = v0[4];
    v6 = v0[5];
    lazy protocol witness table accessor for type XPCSystem.SetupError and conformance XPCSystem.SetupError();
    swift_allocError();
    *v7 = v5;
    v7[1] = v6;

    return swift_unexpectedError();
  }

  else
  {
    v9 = v4;
    v10 = v0[9];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s14XPCDistributed12SynchronizedCyAA9XPCSystemC7SessionCSgGMd, &_s14XPCDistributed12SynchronizedCyAA9XPCSystemC7SessionCSgGMR);
    v11 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
    v12 = swift_allocObject();
    *(v12 + 16) = 0;
    *(v11 + 16) = v12;
    *(v11 + 24) = v9;
    v16 = v11;

    v13 = v10(&v16);

    _s14XPCDistributed9XPCSystemC7SessionC14readyToReceiveyyScTyAE14LocalInterfaceV15ActivationTokenVs5NeverOGAC10SetupErrorVYKF(v13, v0 + 6);
    v14 = v0[8];

    *v14 = v9;

    v15 = v0[1];

    return v15();
  }
}