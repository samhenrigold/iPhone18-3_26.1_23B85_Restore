uint64_t sub_275172298()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

__n128 sub_2751722FC(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u8[0] = a1[1].n128_u8[0];
  *a2 = result;
  return result;
}

uint64_t sub_275172310()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t outlined init with take of XPCSystem.ResultHandler.ReplyHandler(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

void *sub_275172360()
{
  if (MEMORY[0x277D85020])
  {
    return &type metadata for ID64.Generator;
  }

  else
  {
    return (MEMORY[0x277D84F78] + 8);
  }
}

void *sub_275172388()
{
  if (MEMORY[0x277D85020])
  {
    return &type metadata for Fuse;
  }

  else
  {
    return (MEMORY[0x277D84F78] + 8);
  }
}

uint64_t outlined consume of (@escaping @callee_guaranteed @Sendable () -> ())?(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_2751723C8()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_275172408()
{
  if (MEMORY[0x277D85020])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&_s15Synchronization6AtomicVySbGMd, &_s15Synchronization6AtomicVySbGMR);
  }

  else
  {
    return MEMORY[0x277D84F78] + 8;
  }
}

uint64_t sub_275172448()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t _s14XPCDistributed9XPCSystemC7SessionC24RemoteInvocationResponseV0dE7Failure018_6652F7F3EA9063F11H13BACB4A19090F0LLO33ResultPropagationFailedCodingKeysOy__x__Gs0R3KeyAAsANP11stringValuexSgSS_tcfCTW_0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a4@<X8>)
{
  result = XPCSystem.Session.RemoteInvocationResponse.RemoteInvocationFailure.ExecutionFailedCodingKeys.init(stringValue:)(a1, a2);
  *a4 = result & 1;
  return result;
}

uint64_t sub_2751724E8()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_275172528()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_275172560()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void *sub_275172598()
{
  if (MEMORY[0x277D85020])
  {
    return &type metadata for Fuse;
  }

  else
  {
    return (MEMORY[0x277D84F78] + 8);
  }
}

void *sub_2751725C0()
{
  if (MEMORY[0x277D85020])
  {
    return &type metadata for ID64.Generator;
  }

  else
  {
    return (MEMORY[0x277D84F78] + 8);
  }
}

uint64_t sub_2751725E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 253)
  {
    v4 = *(a1 + 8);
    if (v4 > 2)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = type metadata accessor for XPCSystem.Transport.Packet.Payload(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_27517268C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 253)
  {
    *(result + 8) = -a2;
  }

  else
  {
    v7 = type metadata accessor for XPCSystem.Transport.Packet.Payload(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_27517272C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for XPCDictionary();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_275172798(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for XPCDictionary();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_275172808()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCys6ResultOyABy14XPCDistributed9XPCSystemC9TransportC6PacketV7PayloadVAG0D5ErrorOGSgs5NeverOGAQGMd, &_sScCys6ResultOyABy14XPCDistributed9XPCSystemC9TransportC6PacketV7PayloadVAG0D5ErrorOGSgs5NeverOGAQGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2751728E0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_275172920()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy14XPCDistributed9XPCSystemC9TransportC6PacketV7PayloadVAG0D5ErrorOGMd, &_ss6ResultOy14XPCDistributed9XPCSystemC9TransportC6PacketV7PayloadVAG0D5ErrorOGMR) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);

  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    v5 = type metadata accessor for XPCDictionary();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_275172A38()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

uint64_t sub_275172A78()
{
  swift_unknownObjectRelease();

  outlined consume of XPCSystem.SharedActorKey(*(v0 + 48), *(v0 + 56), *(v0 + 64));

  if (*(v0 + 176))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 88);
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 128);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, 216, 7);
}

uint64_t sub_275172B20()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

__n128 sub_275172B8C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u8[0] = a1[1].n128_u8[0];
  *a2 = result;
  return result;
}

uint64_t sub_275172BD4()
{
  v1 = *(v0 + 24);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_275172C90()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_275172CC8()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_275172D00()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 72) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  type metadata accessor for Result();
  v6 = type metadata accessor for CheckedContinuation();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8 + 8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;

  (*(v2 + 8))(v0 + v4, v1);

  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2821FE8E8](v0, v9 + v10, v11 | 7);
}

uint64_t sub_275172EB4()
{
  if (MEMORY[0x277D85020])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&_s15Synchronization6AtomicVys6UInt64VGMd, &_s15Synchronization6AtomicVys6UInt64VGMR);
  }

  else
  {
    return MEMORY[0x277D84F78] + 8;
  }
}

uint64_t sub_275172EE4()
{
  swift_unownedRelease();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_275172F20()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

void *sub_275172F68()
{
  if (MEMORY[0x277D85020])
  {
    return &type metadata for Fuse;
  }

  else
  {
    return (MEMORY[0x277D84F78] + 8);
  }
}

uint64_t sub_275172F90()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_275172FE0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGMd, &_sScCyyts5NeverOGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_275173098()
{
  v1 = type metadata accessor for XPCSystem.Transport.Packet(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  v6 = v0 + *(v1 + 20);
  v7 = type metadata accessor for XPCDictionary();
  (*(*(v7 - 8) + 8))(v6 + v4, v7);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_275173174()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_275173244(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for XPCEndpoint();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_2751732F0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for XPCEndpoint();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_275173394(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for XPCSystem.EphemeralService(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_275173450(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for XPCSystem.EphemeralService(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_275173508()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGMd, &_sScCyyts5NeverOGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2751735BC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = a3[1];
  outlined init with copy of XPCPeerRequirement?(a1, v6, &_s14XPCDistributed12WeakActorRefVSgMd, &_s14XPCDistributed12WeakActorRefVSgMR);
  return specialized Dictionary.subscript.setter(v6, v3, v4);
}

__n128 sub_275173640(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

void *XPCSystem.Session.deinit()
{
  v1._object = 0x80000002751B8720;
  v1._countAndFlagsBits = 0xD000000000000033;
  XPCSystem.Session.cancel(because:)(v1);

  outlined consume of OwnedAwaitableEvent<XPCSystem.Session.LocalInterface.ActivationToken>?(*(v0 + 112));

  return v0;
}

Swift::Void __swiftcall XPCSystem.Session.cancel(because:)(Swift::String because)
{
  v2 = 0;
  v3 = *(v1 + 32);
  atomic_compare_exchange_strong_explicit((v3 + 32), &v2, 1u, memory_order_relaxed, memory_order_relaxed);
  if (!v2)
  {
    object = because._object;
    countAndFlagsBits = because._countAndFlagsBits;
    v6 = *(v3 + 88);
    v7 = *(v3 + 96);
    __swift_project_boxed_opaque_existential_1((v3 + 64), v6);
    (*(v7 + 24))(v6, v7);
    if (one-time initialization token for sessionLog != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    __swift_project_value_buffer(v8, sessionLog);

    oslog = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(oslog, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 136446466;
      v16 = v11;
      v12 = *(v3 + 40);
      v13 = *(v3 + 48);

      MEMORY[0x277C6B720](v12, v13);

      MEMORY[0x277C6B720](58, 0xE100000000000000);
      _print_unlocked<A, B>(_:_:)();
      v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0, 0xE000000000000000, &v16);

      *(v10 + 4) = v14;
      *(v10 + 12) = 2082;
      *(v10 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(countAndFlagsBits, object, &v16);
      _os_log_impl(&dword_275171000, oslog, v9, "%{public}s is cancelled because %{public}s", v10, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x277C6C430](v11, -1, -1);
      MEMORY[0x277C6C430](v10, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t outlined consume of OwnedAwaitableEvent<XPCSystem.Session.LocalInterface.ActivationToken>?(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t XPCSystem.Session.__deallocating_deinit()
{
  XPCSystem.Session.deinit();

  return swift_deallocClassInstance();
}

BOOL protocol witness for SetAlgebra.insert(_:) in conformance XPCSystem.Session.InitializationOptions(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *protocol witness for SetAlgebra.remove(_:) in conformance XPCSystem.Session.InitializationOptions@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *protocol witness for SetAlgebra.update(with:) in conformance XPCSystem.Session.InitializationOptions@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

void *protocol witness for RawRepresentable.init(rawValue:) in conformance XPCSystem.Session.InitializationOptions@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t protocol witness for ExpressibleByArrayLiteral.init(arrayLiteral:) in conformance XPCSystem.Session.InitializationOptions@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = specialized SetAlgebra<>.init(arrayLiteral:)(a1);

  *a2 = v3;
  return result;
}

uint64_t _s14XPCDistributed9XPCSystemC7SessionC11actorSystem9transport7optionsAeC_AC9TransportCAE21InitializationOptionsVtAC10SetupErrorVYKcfC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a3;
  v8 = swift_allocObject();
  _s14XPCDistributed9XPCSystemC7SessionC11actorSystem9transport7optionsAeC_AC9TransportCAE21InitializationOptionsVtAC10SetupErrorVYKcfc(a1, a2, v5, a4);
  return v8;
}

uint64_t _s14XPCDistributed9XPCSystemC7SessionC11actorSystem9transport7optionsAeC_AC9TransportCAE21InitializationOptionsVtAC10SetupErrorVYKcfc(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  v7 = v4;
  *(v4 + 112) = 0u;
  *(v4 + 128) = 0u;
  v10 = (v4 + 112);
  *(v4 + 16) = a1;
  *(v4 + 32) = a2;

  v11 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC14XPCDistributed9XPCSystemC14SharedActorKeyO_11Distributed0hF0_pTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14XPCDistributed12SynchronizedCySDyAA9XPCSystemC14SharedActorKeyO11Distributed0gE0_pGGMd, &_s14XPCDistributed12SynchronizedCySDyAA9XPCSystemC14SharedActorKeyO11Distributed0gE0_pGGMR);
  v12 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  *(v12 + 16) = v13;
  *(v12 + 24) = v11;
  *(v10 - 8) = v12;
  if (one-time initialization token for default != -1)
  {
LABEL_16:
    swift_once();
  }

  v14 = static ID64.default;
  do
  {
    v15 = v14 + 1;
    if (v14 == -1)
    {
      __break(1u);
      goto LABEL_16;
    }

    v16 = v14;
    atomic_compare_exchange_strong_explicit(&static ID64.default, &v16, v15, memory_order_relaxed, memory_order_relaxed);
    v17 = v16 == v14;
    v14 = v16;
  }

  while (!v17);
  v35 = a4;
  v36 = a3;
  v38 = v5;
  *(v7 + 24) = v15;
  v18 = swift_allocObject();
  *(v18 + 24) = 0;
  *(v18 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine6FutureCyyts5NeverOGMd, &_s7Combine6FutureCyyts5NeverOGMR);
  swift_allocObject();

  v19 = Future.init(_:)();
  result = swift_beginAccess();
  v21 = *(v18 + 16);
  if (!v21)
  {
    __break(1u);
    goto LABEL_18;
  }

  v22 = *(v18 + 24);

  *(v7 + 56) = v19;
  *(v7 + 64) = v21;
  *(v7 + 72) = v22;
  v23 = swift_allocObject();
  *(v23 + 24) = 0;
  *(v23 + 16) = 0;
  swift_allocObject();

  v24 = Future.init(_:)();
  result = swift_beginAccess();
  v25 = *(v23 + 16);
  if (!v25)
  {
LABEL_18:
    __break(1u);
    return result;
  }

  v26 = *(v23 + 24);

  *(v7 + 80) = v24;
  *(v7 + 88) = v25;
  *(v7 + 96) = v26;
  v27 = *(v7 + 112);
  *v10 = 0u;
  v10[1] = 0u;
  outlined consume of OwnedAwaitableEvent<XPCSystem.Session.LocalInterface.ActivationToken>?(v27);
  *(v7 + 104) = (v36 & 2) != 0;
  *(v7 + 144) = 0;
  *(v7 + 40) = 0;
  *(v7 + 152) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC14XPCDistributed4ID64V_ScTyyts5NeverOGTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  *(a2 + 24) = lazy protocol witness table accessor for type XPCSystem.Session and conformance XPCSystem.Session(&lazy protocol witness table cache variable for type XPCSystem.Session and conformance XPCSystem.Session, v28, type metadata accessor for XPCSystem.Session, protocol conformance descriptor for XPCSystem.Session);
  swift_unknownObjectWeakAssign();
  if ((v36 & 4) != 0 || (v29 = 0, atomic_compare_exchange_strong_explicit((v7 + 144), &v29, 1u, memory_order_relaxed, memory_order_relaxed), v29))
  {
  }

  else
  {
    v30 = *(v7 + 32);
    v31 = v30[11];
    v32 = v30[12];
    __swift_project_boxed_opaque_existential_1(v30 + 8, v31);
    v33 = v38;
    (*(v32 + 8))(v30, v37, v31, v32);

    if (v33)
    {

      v34 = v37[1];
      *v35 = v37[0];
      v35[1] = v34;
    }
  }

  return v7;
}

void *_s14XPCDistributed9XPCSystemC7SessionC17activateTransportyyAC10SetupErrorVYKF(void *result)
{
  v3 = 0;
  atomic_compare_exchange_strong_explicit((v1 + 144), &v3, 1u, memory_order_relaxed, memory_order_relaxed);
  if (!v3)
  {
    v4 = result;
    v5 = *(v1 + 32);
    v6 = v5[11];
    v7 = v5[12];
    __swift_project_boxed_opaque_existential_1(v5 + 8, v6);
    result = (*(v7 + 8))(v5, v9, v6, v7);
    if (v2)
    {
      v8 = v9[1];
      *v4 = v9[0];
      v4[1] = v8;
    }
  }

  return result;
}

uint64_t (*XPCSystem.Session.local.read(void *a1))()
{
  *a1 = v1;

  return XPCSystem.Session.local.read;
}

uint64_t _s14XPCDistributed9XPCSystemC7SessionC14readyToReceiveyyScTyAE14LocalInterfaceV15ActivationTokenVs5NeverOGAC10SetupErrorVYKF(uint64_t a1, void *a2)
{
  if (*(v2 + 104) == 1)
  {
    v5 = v3;
    v6 = *(v2 + 96);
    v7 = *(v2 + 112);
    *(v2 + 112) = *(v2 + 80);
    *(v2 + 128) = v6;
    *(v2 + 136) = a1;

    result = outlined consume of OwnedAwaitableEvent<XPCSystem.Session.LocalInterface.ActivationToken>?(v7);
    v9 = 0;
    atomic_compare_exchange_strong_explicit((v2 + 144), &v9, 1u, memory_order_relaxed, memory_order_relaxed);
    if (!v9)
    {
      v10 = *(v2 + 32);
      v11 = v10[11];
      v12 = v10[12];
      __swift_project_boxed_opaque_existential_1(v10 + 8, v11);
      result = (*(v12 + 8))(v10, v14, v11, v12);
      if (v5)
      {
        v13 = v14[1];
        *a2 = v14[0];
        a2[1] = v13;
      }
    }
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t XPCSystem.Session.waitForLocalInterfaceActivation()()
{
  *(v1 + 16) = v0;
  return MEMORY[0x2822009F8](XPCSystem.Session.waitForLocalInterfaceActivation(), 0, 0);
}

{
  v1 = v0[2];
  v2 = v1[14];
  v0[3] = v2;
  if (v2)
  {
    v0[4] = v1[17];
    v0[5] = v1[16];

    v3 = swift_task_alloc();
    v0[6] = v3;
    *v3 = v0;
    v3[1] = XPCSystem.Session.waitForLocalInterfaceActivation();

    return MEMORY[0x28210E9A8](v3);
  }

  else
  {
    v4 = v0[1];

    return v4();
  }
}

{

  return MEMORY[0x2822009F8](XPCSystem.Session.waitForLocalInterfaceActivation(), 0, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t XPCSystem.Session.resolveSharedActor(at:)(uint64_t a1)
{
  if (*(v1 + 104) != 1)
  {
    return 0;
  }

  v2 = *(v1 + 48);
  MEMORY[0x28223BE20](a1);
  v4 = v3;
  v6 = v5;
  v8 = v7;
  KeyPath = swift_getKeyPath();
  v10 = *(*v2 + 136);
  outlined copy of XPCSystem.SharedActorKey(v4, v6, v8);
  v10(&v12, KeyPath);

  return v12;
}

BOOL key path index equality operator for (XPCSystem.SharedActorKey)(uint64_t *a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = *(a2 + 16);
  v7 = *a1;
  v8 = *(a1 + 16);
  if (!v6)
  {
    if (!*(a1 + 16))
    {
      goto LABEL_6;
    }

    return 0;
  }

  if (v6 != 1)
  {
    return v8 == 2 && v4 == v7;
  }

  if (v8 != 1)
  {
    return 0;
  }

LABEL_6:
  v9 = v4 == v7 && v5 == a1[1];
  return v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0;
}

Swift::Int key path index hash operator for (XPCSystem.SharedActorKey)(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 16);
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

uint64_t XPCSystem.Session.addPendingInvocationExecutionTask(_:withID:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = (&v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *(*(v3 + 32) + 56);
  *v10 = v11;
  (*(v7 + 104))(v10, *MEMORY[0x277D85200], v6, v8);
  v12 = v11;
  LOBYTE(v11) = _dispatchPreconditionTest(_:)();
  result = (*(v7 + 8))(v10, v6);
  if (v11)
  {
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *(v3 + 152);
    *(v3 + 152) = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, isUniquelyReferenced_nonNull_native);
    *(v3 + 152) = v15;
    return swift_endAccess();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t XPCSystem.Session.removePendingInvocationExecutionTask(withID:)(uint64_t a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*(v1 + 32) + 56);
  v12 = swift_allocObject();
  *(v12 + 16) = v1;
  *(v12 + 24) = a1;
  aBlock[4] = partial apply for closure #1 in XPCSystem.Session.removePendingInvocationExecutionTask(withID:);
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor;
  v13 = _Block_copy(aBlock);
  v14 = v11;

  static DispatchQoS.unspecified.getter();
  v16[1] = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type XPCSystem.Session and conformance XPCSystem.Session(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, 255, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x277C6B8E0](0, v10, v6, v13);
  _Block_release(v13);

  (*(v4 + 8))(v6, v3);
  (*(v8 + 8))(v10, v7);
}

uint64_t closure #1 in XPCSystem.Session.removePendingInvocationExecutionTask(withID:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  if (v5)
  {
    v6 = v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *(a1 + 152);
    *(a1 + 152) = 0x8000000000000000;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()();
    }

    specialized _NativeDictionary._delete(at:)(v6, v8);
    *(a1 + 152) = v8;
  }

  return swift_endAccess();
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable () -> ()(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t XPCSystem.Session.cancelPendingInvocationExecutionTask(withID:)(uint64_t a1)
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = (&v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(*(v1 + 32) + 56);
  *v7 = v8;
  (*(v4 + 104))(v7, *MEMORY[0x277D85200], v3, v5);
  v9 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  result = (*(v4 + 8))(v7, v3);
  if (v8)
  {
    swift_beginAccess();
    v11 = specialized Dictionary._Variant.removeValue(forKey:)(a1);
    result = swift_endAccess();
    if (v11)
    {
      MEMORY[0x277C6B800](v11, MEMORY[0x277D84F78] + 8, MEMORY[0x277D84A98], MEMORY[0x277D84AC0]);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t XPCSystem.Session.addSharedActor(_:at:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*(v5 + 104) == 1)
  {
    v6 = a5;
    v11 = *(v5 + 48);
    MEMORY[0x28223BE20](a1);
    KeyPath = swift_getKeyPath();
    outlined copy of XPCSystem.SharedActorKey(a3, a4, v6);
    v15[0] = XPCSystem.resolve(id:)(a1, a2);
    v15[1] = v13;
    (*(*v11 + 152))(KeyPath, v15);

    return swift_unknownObjectRelease();
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

unint64_t XPCSystem.Session.shareActor(_:)(unint64_t result, uint64_t a2)
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

Swift::Void __swiftcall XPCSystem.Session.cancellationCompleted()()
{
  (*(**(v0 + 48) + 200))(closure #1 in XPCSystem.Session.cancellationCompleted(), 0, MEMORY[0x277D84F78] + 8, MEMORY[0x277D84A98], MEMORY[0x277D84AC0]);
  v1 = *(v0 + 64);
  v2[0] = 0;
  v1(v2);
}

uint64_t closure #1 in XPCSystem.Session.cancellationCompleted()(void *a1)
{

  *a1 = MEMORY[0x277D84F98];
  return result;
}

Swift::Bool __swiftcall XPCSystem.Session.remoteSatisfiesActorSystemRequirement()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s3XPC18XPCPeerRequirementVSgMd, &_s3XPC18XPCPeerRequirementVSgMR);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v13 - v2;
  v4 = type metadata accessor for XPCPeerRequirement();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of XPCPeerRequirement?(*(v0 + 16) + OBJC_IVAR____TtC14XPCDistributed9XPCSystem_peerRequirement, v3, &_s3XPC18XPCPeerRequirementVSgMd, &_s3XPC18XPCPeerRequirementVSgMR);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    outlined destroy of XPCPeerRequirement?(v3);
    v8 = 1;
    return v8 & 1;
  }

  (*(v5 + 32))(v7, v3, v4);
  v9 = *(v0 + 32);
  v10 = v9[11];
  v11 = v9[12];
  __swift_project_boxed_opaque_existential_1(v9 + 8, v10);
  (*(v11 + 32))(&v14, v10, v11);
  if (v15 & 1) == 0 && (audit_token_t.isValid.getter())
  {
    v8 = audit_token_t.satisfies(requirement:)();
    (*(v5 + 8))(v7, v4);
    return v8 & 1;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t XPCSystem.Session.waitForCancellation()()
{
  *(v1 + 16) = v0;
  return MEMORY[0x2822009F8](XPCSystem.Session.waitForCancellation(), 0, 0);
}

{
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = XPCSystem.Session.waitForCancellation();

  return MEMORY[0x28210E9A8](v1);
}

{

  return MEMORY[0x2822009F8](XPCSystem.Session.waitForCancellation(), 0, 0);
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t XPCSystem.Session.debugDescription.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);

  MEMORY[0x277C6B720](v2, v3);

  MEMORY[0x277C6B720](58, 0xE100000000000000);
  _print_unlocked<A, B>(_:_:)();
  return 0;
}

double XPCSystem.Session.RemoteInterface.auditToken.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 32);
  v4 = v3[11];
  v5 = v3[12];
  __swift_project_boxed_opaque_existential_1(v3 + 8, v4);
  v6 = *(v5 + 32);

  v6(v9, v4, v5);

  result = *v9;
  v8 = v9[1];
  *a1 = v9[0];
  *(a1 + 16) = v8;
  *(a1 + 32) = v10;
  return result;
}

uint64_t XPCSystem.Session.RemoteInterface.import<A>(defaultActorFor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  v13 = type metadata accessor for XPCSystem.Session();
  v14 = lazy protocol witness table accessor for type XPCSystem.Session and conformance XPCSystem.Session(&lazy protocol witness table cache variable for type XPCSystem.Session and conformance XPCSystem.Session, v5, type metadata accessor for XPCSystem.Session, protocol conformance descriptor for XPCSystem.Session);
  *&v12 = v4;

  v6 = SwiftType.init<A>(_:)();
  if (v7)
  {
    v8 = v6;
    v9 = v7;
    outlined init with take of XPCSystem.ResultHandler.ReplyHandler(&v12, v16);
    v17 = v8;
    v18 = v9;
    v19 = 0;
    outlined init with copy of XPCSystem.RawActorID.Remote(v16, &v12);
    v15 = 1;

    v10 = dispatch thunk of static DistributedActor.resolve(id:using:)();

    outlined destroy of XPCSystem.ActorID(&v12);
    outlined destroy of XPCSystem.RawActorID.Remote(v16);
    return v10;
  }

  else
  {
    __break(1u);

    __break(1u);
  }

  return result;
}

uint64_t XPCSystem.Session.RemoteInterface.import<A>(clientActorFor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *v4;
  v12[3] = type metadata accessor for XPCSystem.Session();
  v12[4] = lazy protocol witness table accessor for type XPCSystem.Session and conformance XPCSystem.Session(&lazy protocol witness table cache variable for type XPCSystem.Session and conformance XPCSystem.Session, v8, type metadata accessor for XPCSystem.Session, protocol conformance descriptor for XPCSystem.Session);
  v12[5] = a1;
  v12[0] = v7;
  v12[6] = a2;
  v13 = 1;
  outlined init with copy of XPCSystem.RawActorID.Remote(v12, v11);
  v11[57] = 1;

  v9 = dispatch thunk of static DistributedActor.resolve(id:using:)();

  outlined destroy of XPCSystem.ActorID(v11);
  outlined destroy of XPCSystem.RawActorID.Remote(v12);
  return v9;
}

uint64_t XPCSystem.Session.LocalInterface.export<A, B>(_:asDefaultActorFor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  dispatch thunk of Identifiable.id.getter();
  *&v9[10] = *&v12[10];
  v8[0] = v10;
  v8[1] = v11;
  *v9 = *v12;
  if ((v12[25] & 1) == 0)
  {
    v5 = SwiftType.init<A>(_:)();
    if (v6)
    {
      XPCSystem.Session.addSharedActor(_:at:)(*&v8[0], *(&v8[0] + 1), v5, v6, 0);
    }

    __break(1u);
  }

  outlined destroy of XPCSystem.RawActorID(v8);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t XPCSystem.Session.LocalInterface.export<A>(_:asServerActorFor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  dispatch thunk of Identifiable.id.getter();
  *&v9[10] = *&v12[10];
  v8[0] = v10;
  v8[1] = v11;
  *v9 = *v12;
  if ((v12[25] & 1) == 0)
  {
    return XPCSystem.Session.addSharedActor(_:at:)(*&v8[0], *(&v8[0] + 1), a2, a3, 1);
  }

  outlined destroy of XPCSystem.RawActorID(v8);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance XPCSystem.Session.LocalInterface.ActivationToken.CodingKeys()
{
  Hasher.init(_seed:)();
  MEMORY[0x277C6BCC0](0);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance XPCSystem.Session.LocalInterface.ActivationToken.CodingKeys(uint64_t a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x277C6BCC0](0);
  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance XPCSystem.Session.LocalInterface.ActivationToken.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 25705 && a2 == 0xE200000000000000)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance XPCSystem.Session.LocalInterface.ActivationToken.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type XPCSystem.Session.LocalInterface.ActivationToken.CodingKeys and conformance XPCSystem.Session.LocalInterface.ActivationToken.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance XPCSystem.Session.LocalInterface.ActivationToken.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type XPCSystem.Session.LocalInterface.ActivationToken.CodingKeys and conformance XPCSystem.Session.LocalInterface.ActivationToken.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t XPCSystem.Session.LocalInterface.ActivationToken.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14XPCDistributed9XPCSystemC7SessionC14LocalInterfaceV15ActivationTokenV10CodingKeys33_3CEE9BCFA827C3ABA8685D1E56281272LLOGMd, &_ss22KeyedEncodingContainerVy14XPCDistributed9XPCSystemC7SessionC14LocalInterfaceV15ActivationTokenV10CodingKeys33_3CEE9BCFA827C3ABA8685D1E56281272LLOGMR);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v9 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type XPCSystem.Session.LocalInterface.ActivationToken.CodingKeys and conformance XPCSystem.Session.LocalInterface.ActivationToken.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9[1] = v7;
  lazy protocol witness table accessor for type ID64 and conformance ID64();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v4 + 8))(v6, v3);
}

Swift::Int XPCSystem.Session.LocalInterface.ActivationToken.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x277C6BCE0](v1);
  return Hasher._finalize()();
}

uint64_t XPCSystem.Session.LocalInterface.ActivationToken.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy14XPCDistributed9XPCSystemC7SessionC14LocalInterfaceV15ActivationTokenV10CodingKeys33_3CEE9BCFA827C3ABA8685D1E56281272LLOGMd, &_ss22KeyedDecodingContainerVy14XPCDistributed9XPCSystemC7SessionC14LocalInterfaceV15ActivationTokenV10CodingKeys33_3CEE9BCFA827C3ABA8685D1E56281272LLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type XPCSystem.Session.LocalInterface.ActivationToken.CodingKeys and conformance XPCSystem.Session.LocalInterface.ActivationToken.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    lazy protocol witness table accessor for type ID64 and conformance ID64();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v6 + 8))(v8, v5);
    *a2 = v10[1];
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance XPCSystem.Session.LocalInterface.ActivationToken()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x277C6BCE0](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance XPCSystem.Session.LocalInterface.ActivationToken(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  MEMORY[0x277C6BCE0](v2);
  return Hasher._finalize()();
}

uint64_t XPCSystem.Session.LocalInterface.activateThenWaitForCancellation()(uint64_t a1)
{
  *(v2 + 696) = a1;
  *(v2 + 704) = *v1;
  return MEMORY[0x2822009F8](XPCSystem.Session.LocalInterface.activateThenWaitForCancellation(), 0, 0);
}

uint64_t XPCSystem.Session.LocalInterface.activateThenWaitForCancellation()()
{
  v6 = v0;
  v1 = v0[88];
  v2 = *(v1 + 88);
  v5 = 0;
  v2(&v5);
  v3 = swift_task_alloc();
  v0[89] = v3;
  v3[2] = &async function pointer to closure #1 in XPCSystem.Session.LocalInterface.activateThenWaitForCancellation();
  v3[3] = 0;
  v3[4] = v1;
  swift_asyncLet_begin();
  v0[90] = *(v1 + 24);

  return MEMORY[0x282200928](v0 + 2);
}

{
  return MEMORY[0x2822009F8](XPCSystem.Session.LocalInterface.activateThenWaitForCancellation(), 0, 0);
}

{
  return MEMORY[0x2822009F8](XPCSystem.Session.LocalInterface.activateThenWaitForCancellation(), 0, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t closure #1 in XPCSystem.Session.LocalInterface.activateThenWaitForCancellation()()
{
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = closure #1 in XPCSystem.Session.LocalInterface.activateThenWaitForCancellation();

  return MEMORY[0x28210E9A8](v1);
}

{

  return MEMORY[0x2822009F8](closure #1 in XPCSystem.Session.LocalInterface.activateThenWaitForCancellation(), 0, 0);
}

{
  return (*(v0 + 8))();
}

uint64_t XPCSystem.Session.LocalInterface.activateThenWithRemoteInterface<A>(perform:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[96] = a5;
  v6[95] = a4;
  v6[94] = a3;
  v6[93] = a2;
  v6[87] = a1;
  v6[97] = *(a5 - 8);
  v6[98] = swift_task_alloc();
  v6[99] = *v5;

  return MEMORY[0x2822009F8](XPCSystem.Session.LocalInterface.activateThenWithRemoteInterface<A>(perform:), 0, 0);
}

uint64_t XPCSystem.Session.LocalInterface.activateThenWithRemoteInterface<A>(perform:)()
{
  v8 = v0;
  v1 = *(v0 + 792);
  v2 = *(v0 + 768);
  v3 = *(v1 + 88);
  v7 = 0;
  v6 = *(v0 + 752);
  v3(&v7);
  v4 = swift_task_alloc();
  *(v0 + 800) = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v6;
  *(v4 + 40) = v1;
  swift_asyncLet_begin();
  *(v0 + 808) = *(v1 + 24);

  return MEMORY[0x282200928](v0 + 16);
}

{
  return MEMORY[0x2822009F8](XPCSystem.Session.LocalInterface.activateThenWithRemoteInterface<A>(perform:), 0, 0);
}

{
  v1 = v0[101];
  v2 = v0[93];
  (*(v0[97] + 16))(v0[87], v0[98], v0[96]);
  *v2 = v1;
  v3 = v0[98];

  return MEMORY[0x282200920](v0 + 2, v3, XPCSystem.Session.LocalInterface.activateThenWithRemoteInterface<A>(perform:), v0 + 88);
}

{
  return MEMORY[0x2822009F8](XPCSystem.Session.LocalInterface.activateThenWithRemoteInterface<A>(perform:), 0, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t specialized implicit closure #1 in XPCSystem.Session.LocalInterface.activateThenWithRemoteInterface<A>(perform:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;
  return MEMORY[0x2822009F8](specialized implicit closure #1 in XPCSystem.Session.LocalInterface.activateThenWithRemoteInterface<A>(perform:), 0, 0);
}

uint64_t specialized implicit closure #1 in XPCSystem.Session.LocalInterface.activateThenWithRemoteInterface<A>(perform:)()
{
  v1 = v0[4];
  v0[2] = v0[6];

  v5 = (v1 + *v1);
  v2 = swift_task_alloc();
  v0[7] = v2;
  *v2 = v0;
  v2[1] = specialized implicit closure #1 in XPCSystem.Session.LocalInterface.activateThenWithRemoteInterface<A>(perform:);
  v3 = v0[3];

  return (v5)(v3, v0 + 2);
}

uint64_t implicit closure #1 in XPCSystem.Session.LocalInterface.activateThenWithRemoteInterface<A>(perform:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;
  return MEMORY[0x2822009F8](implicit closure #1 in XPCSystem.Session.LocalInterface.activateThenWithRemoteInterface<A>(perform:), 0, 0);
}

uint64_t implicit closure #1 in XPCSystem.Session.LocalInterface.activateThenWithRemoteInterface<A>(perform:)()
{
  v1 = v0[4];
  v0[2] = v0[6];

  v5 = (v1 + *v1);
  v2 = swift_task_alloc();
  v0[7] = v2;
  *v2 = v0;
  v2[1] = implicit closure #1 in XPCSystem.Session.LocalInterface.activateThenWithRemoteInterface<A>(perform:);
  v3 = v0[3];

  return (v5)(v3, v0 + 2);
}

{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t _s14XPCDistributed9XPCSystemC7SessionC14LocalInterfaceV022activateThenWithRemoteE07performs6ResultOyxq_G6result_AG15ActivationTokenV5tokentxAE0iE0VYaq_YKXE_tYas8SendableRzs5ErrorR_r0_lF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[8] = a6;
  v8[9] = a7;
  v8[6] = a4;
  v8[7] = a5;
  v8[4] = a2;
  v8[5] = a3;
  v8[2] = *v7;
  v8[3] = a1;
  return MEMORY[0x2822009F8](_s14XPCDistributed9XPCSystemC7SessionC14LocalInterfaceV022activateThenWithRemoteE07performs6ResultOyxq_G6result_AG15ActivationTokenV5tokentxAE0iE0VYaq_YKXE_tYas8SendableRzs5ErrorR_r0_lFTY0_, 0, 0);
}

uint64_t _s14XPCDistributed9XPCSystemC7SessionC14LocalInterfaceV022activateThenWithRemoteE07performs6ResultOyxq_G6result_AG15ActivationTokenV5tokentxAE0iE0VYaq_YKXE_tYas8SendableRzs5ErrorR_r0_lFTY0_()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  v3 = *(v0 + 56);
  v4 = swift_task_alloc();
  *(v0 + 80) = v4;
  v5 = *(v0 + 40);
  *(v4 + 16) = v3;
  *(v4 + 24) = v1;
  *(v4 + 32) = v2;
  *(v4 + 40) = v5;
  v6 = swift_task_alloc();
  *(v0 + 88) = v6;
  v7 = type metadata accessor for Result();
  *v6 = v0;
  v6[1] = _s14XPCDistributed9XPCSystemC7SessionC14LocalInterfaceV022activateThenWithRemoteE07performs6ResultOyxq_G6result_AG15ActivationTokenV5tokentxAE0iE0VYaq_YKXE_tYas8SendableRzs5ErrorR_r0_lFTQ1_;
  v8 = *(v0 + 24);
  v9 = *(v0 + 32);

  return XPCSystem.Session.LocalInterface.activateThenWithRemoteInterface<A>(perform:)(v8, v9, &_s14XPCDistributed9XPCSystemC7SessionC14LocalInterfaceV022activateThenWithRemoteE07performs6ResultOyxq_G6result_AG15ActivationTokenV5tokentxAE0iE0VYaq_YKXE_tYas8SendableRzs5ErrorR_r0_lFAlRYaXEfU_TATu, v4, v7);
}

uint64_t _s14XPCDistributed9XPCSystemC7SessionC14LocalInterfaceV022activateThenWithRemoteE07performs6ResultOyxq_G6result_AG15ActivationTokenV5tokentxAE0iE0VYaq_YKXE_tYas8SendableRzs5ErrorR_r0_lFTQ1_()
{

  return MEMORY[0x2822009F8](closure #1 in XPCSystem.Session.LocalInterface.activateThenWaitForCancellation(), 0, 0);
}

uint64_t _s14XPCDistributed9XPCSystemC7SessionC14LocalInterfaceV022activateThenWithRemoteE07performs6ResultOyxq_G6result_AG15ActivationTokenV5tokentxAE0iE0VYaq_YKXE_tYas8SendableRzs5ErrorR_r0_lFAlRYaXEfU_(uint64_t a1, void *a2, int *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a6;
  v7[6] = a7;
  v7[3] = a1;
  v7[4] = a5;
  v7[7] = *(a5 - 8);
  v11 = swift_task_alloc();
  v7[8] = v11;
  v7[9] = *(a6 - 8);
  v12 = swift_task_alloc();
  v7[10] = v12;
  v7[11] = swift_task_alloc();
  v7[2] = *a2;
  v15 = a3 + *a3;
  v13 = swift_task_alloc();
  v7[12] = v13;
  *v13 = v7;
  v13[1] = _s14XPCDistributed9XPCSystemC7SessionC14LocalInterfaceV022activateThenWithRemoteE07performs6ResultOyxq_G6result_AG15ActivationTokenV5tokentxAE0iE0VYaq_YKXE_tYas8SendableRzs5ErrorR_r0_lFAlRYaXEfU_TQ0_;

  return (v15)(v11, v7 + 2, v12);
}

uint64_t _s14XPCDistributed9XPCSystemC7SessionC14LocalInterfaceV022activateThenWithRemoteE07performs6ResultOyxq_G6result_AG15ActivationTokenV5tokentxAE0iE0VYaq_YKXE_tYas8SendableRzs5ErrorR_r0_lFAlRYaXEfU_TQ0_()
{

  if (v0)
  {
    v1 = _s14XPCDistributed9XPCSystemC7SessionC14LocalInterfaceV022activateThenWithRemoteE07performs6ResultOyxq_G6result_AG15ActivationTokenV5tokentxAE0iE0VYaq_YKXE_tYas8SendableRzs5ErrorR_r0_lFAlRYaXEfU_TY2_;
  }

  else
  {
    v1 = _s14XPCDistributed9XPCSystemC7SessionC14LocalInterfaceV022activateThenWithRemoteE07performs6ResultOyxq_G6result_AG15ActivationTokenV5tokentxAE0iE0VYaq_YKXE_tYas8SendableRzs5ErrorR_r0_lFAlRYaXEfU_TY1_;
  }

  return MEMORY[0x2822009F8](v1, 0, 0);
}

uint64_t _s14XPCDistributed9XPCSystemC7SessionC14LocalInterfaceV022activateThenWithRemoteE07performs6ResultOyxq_G6result_AG15ActivationTokenV5tokentxAE0iE0VYaq_YKXE_tYas8SendableRzs5ErrorR_r0_lFAlRYaXEfU_TY1_()
{
  (*(v0[7] + 32))(v0[3], v0[8], v0[4]);
  type metadata accessor for Result();
  swift_storeEnumTagMultiPayload();

  v1 = v0[1];

  return v1();
}

uint64_t _s14XPCDistributed9XPCSystemC7SessionC14LocalInterfaceV022activateThenWithRemoteE07performs6ResultOyxq_G6result_AG15ActivationTokenV5tokentxAE0iE0VYaq_YKXE_tYas8SendableRzs5ErrorR_r0_lFAlRYaXEfU_TY2_()
{
  v1 = *(v0[9] + 32);
  v1(v0[11], v0[10], v0[5]);
  v1(v0[3], v0[11], v0[5]);
  type metadata accessor for Result();
  swift_storeEnumTagMultiPayload();

  v2 = v0[1];

  return v2();
}

uint64_t XPCSystem.Session.LocalInterface.UncheckedHandoff.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14XPCDistributed12SynchronizedCyAA9XPCSystemC7SessionCSgGMd, &_s14XPCDistributed12SynchronizedCyAA9XPCSystemC7SessionCSgGMR);
  v4 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  result = swift_allocObject();
  *(result + 16) = 0;
  *(v4 + 16) = result;
  *(v4 + 24) = a1;
  *a2 = v4;
  return result;
}

void *XPCSystem.Session.LocalInterface.UncheckedHandoff.complete()@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v5 = 0;
  result = (*(*v3 + 168))(&v6, &v5);
  if (v6)
  {
    *a1 = v6;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

Swift::Int XPCSystem.Session.hashValue.getter()
{
  Hasher.init(_seed:)();
  MEMORY[0x277C6BCE0](*(v0 + 24));
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance XPCSystem.Session()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x277C6BCE0](*(v1 + 24));
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance XPCSystem.Session(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  MEMORY[0x277C6BCE0](*(v2 + 24));
  return Hasher._finalize()();
}

uint64_t XPCSystem.Session.RemoteInterface.satisfies(requirement:)(uint64_t a1)
{
  v2 = *(*v1 + 32);
  v3 = v2[11];
  v4 = v2[12];
  __swift_project_boxed_opaque_existential_1(v2 + 8, v3);
  v5 = *(v4 + 32);

  v5(&v7, v3, v4);

  if (v8)
  {
    return 2;
  }

  else
  {
    return audit_token_t.satisfies(requirement:)() & 1;
  }
}

uint64_t one-time initialization function for sessionKey()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17CodingUserInfoKeyVSgMd, &_ss17CodingUserInfoKeyVSgMR);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v7 - v1;
  v3 = type metadata accessor for CodingUserInfoKey();
  __swift_allocate_value_buffer(v3, static CodingUserInfoKey.sessionKey);
  v4 = __swift_project_value_buffer(v3, static CodingUserInfoKey.sessionKey);
  CodingUserInfoKey.init(rawValue:)();
  v5 = *(v3 - 8);
  result = (*(v5 + 48))(v2, 1, v3);
  if (result != 1)
  {
    return (*(v5 + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

uint64_t CodingUserInfoKey.sessionKey.unsafeMutableAddressor()
{
  if (one-time initialization token for sessionKey != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for CodingUserInfoKey();

  return __swift_project_value_buffer(v0, static CodingUserInfoKey.sessionKey);
}

uint64_t static CodingUserInfoKey.sessionKey.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for sessionKey != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for CodingUserInfoKey();
  v3 = __swift_project_value_buffer(v2, static CodingUserInfoKey.sessionKey);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t Dictionary<>.init(session:xpcSystem:)(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys17CodingUserInfoKeyV_yptGMd, &_ss23_ContiguousArrayStorageCys17CodingUserInfoKeyV_yptGMR);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17CodingUserInfoKeyV_yptMd, &_ss17CodingUserInfoKeyV_yptMR);
  v5 = *(*(v4 - 8) + 72);
  v6 = (*(*(v4 - 8) + 80) + 32) & ~*(*(v4 - 8) + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_2751B4420;
  v8 = *(v4 + 48);
  if (one-time initialization token for sessionKey != -1)
  {
    swift_once();
  }

  v9 = v7 + v6;
  v10 = type metadata accessor for CodingUserInfoKey();
  v11 = __swift_project_value_buffer(v10, static CodingUserInfoKey.sessionKey);
  (*(*(v10 - 8) + 16))(v9, v11, v10);
  outlined init with copy of Any(a1, v9 + v8);
  v12 = (v9 + v5 + *(v4 + 48));
  static CodingUserInfoKey.actorSystemKey.getter();
  v12[3] = type metadata accessor for XPCSystem(0);
  *v12 = a2;
  v13 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs17CodingUserInfoKeyV_ypTt0g5Tf4g_n(v7);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v13;
}

uint64_t static TestHook.mapToLocalActorID(_:session:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = outlined init with copy of XPCSystem.RawActorID(a1, v18);
  if (v20 == 1)
  {
    v21[0] = v18[0];
    v21[1] = v18[1];
    *v22 = *v19;
    *&v22[9] = *&v19[9];
    if (*(a2 + 104) == 1 && (v7 = *&v22[8], v6 = *&v22[16], v8 = v22[24], v9 = *(a2 + 48), MEMORY[0x28223BE20](v5), KeyPath = swift_getKeyPath(), v11 = *(*v9 + 136), outlined copy of XPCSystem.SharedActorKey(v7, v6, v8), v11(&v14, KeyPath), , (v12 = v14) != 0))
    {
      swift_getObjectType();
      v14 = v12;
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      __swift_allocate_boxed_opaque_existential_1(&v15);
      dispatch thunk of Identifiable.id.getter();
      outlined destroy of XPCSystem.RawActorID.Remote(v21);
      swift_unknownObjectRelease();
      outlined init with take of XPCSystem.ResultHandler.ReplyHandler(&v15, v18);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSH_s8SendablepMd, &_sSH_s8SendablepMR);
      return swift_dynamicCast();
    }

    else
    {
      result = outlined destroy of XPCSystem.RawActorID.Remote(v21);
      *(a3 + 48) = 0;
      *(a3 + 16) = 0u;
      *(a3 + 32) = 0u;
      *a3 = 0u;
      *(a3 + 56) = -256;
    }
  }

  else
  {
    outlined destroy of XPCSystem.RawActorID(v18);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t specialized closure #1 in UnownedAwaitableEvent.init()(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  swift_beginAccess();
  v8 = *(a3 + 16);
  v9 = *(a3 + 24);
  *(a3 + 16) = a1;
  *(a3 + 24) = a2;
  a4(v8, v9);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t serialize(_:at:)(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t closure #1 in OSLogArguments.append(_:)(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
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
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  return v7;
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy14XPCDistributed9SwiftTypeVGMd, &_ss23_ContiguousArrayStorageCy14XPCDistributed9SwiftTypeVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

_BYTE **closure #1 in OSLogArguments.append(_:)(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t specialized Dictionary._Variant.removeValue(forKey:)(uint64_t a1)
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
  v11 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    specialized _NativeDictionary.copy()();
    v7 = v11;
  }

  v8 = v5;
  v9 = *(*(v7 + 56) + 8 * v5);
  specialized _NativeDictionary._delete(at:)(v8, v7);
  *v2 = v7;
  return v9;
}

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
  v11 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    specialized _NativeDictionary.copy()();
    v7 = v11;
  }

  v8 = v5;
  v9 = *(*(v7 + 56) + 8 * v5);
  specialized _NativeDictionary._delete(at:)(v8, v7);
  *v2 = v7;
  return v9;
}

uint64_t specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy14XPCDistributed9XPCSystemC14SharedActorKeyO11Distributed0hF0_pGMd, &_ss18_DictionaryStorageCy14XPCDistributed9XPCSystemC14SharedActorKeyO11Distributed0hF0_pGMR);
  v36 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v35 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (1)
    {
      if (!v12)
      {
        v18 = v8;
        while (1)
        {
          v8 = v18 + 1;
          if (__OFADD__(v18, 1))
          {
            __break(1u);
            goto LABEL_41;
          }

          if (v8 >= v13)
          {
            break;
          }

          v19 = v9[v8];
          ++v18;
          if (v19)
          {
            v17 = __clz(__rbit64(v19));
            v12 = (v19 - 1) & v19;
            goto LABEL_15;
          }
        }

        if ((v36 & 1) == 0)
        {

          v3 = v2;
          goto LABEL_39;
        }

        v34 = 1 << *(v5 + 32);
        v3 = v2;
        if (v34 >= 64)
        {
          bzero(v9, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
        }

        else
        {
          *v9 = -1 << v34;
        }

        *(v5 + 16) = 0;
        goto LABEL_38;
      }

      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(v5 + 56);
      v22 = *(v5 + 48) + 24 * v20;
      v23 = *v22;
      v24 = *(v22 + 8);
      v25 = *(v22 + 16);
      v37 = *(v21 + 16 * v20);
      if ((v36 & 1) == 0)
      {
        outlined copy of XPCSystem.SharedActorKey(v23, v24, v25);
        swift_unknownObjectRetain();
      }

      Hasher.init(_seed:)();
      if (!v25)
      {
        break;
      }

      if (v25 == 1)
      {
        v26 = 1;
LABEL_21:
        MEMORY[0x277C6BCC0](v26);
        String.hash(into:)();
        goto LABEL_23;
      }

      MEMORY[0x277C6BCC0](2);
      MEMORY[0x277C6BCE0](v23);
LABEL_23:
      result = Hasher._finalize()();
      v27 = -1 << *(v7 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_41:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 24 * v15;
      *v16 = v23;
      *(v16 + 8) = v24;
      *(v16 + 16) = v25;
      *(*(v7 + 56) + 16 * v15) = v37;
      ++*(v7 + 16);
      v5 = v35;
    }

    v26 = 0;
    goto LABEL_21;
  }

LABEL_38:

LABEL_39:
  *v3 = v7;
  return result;
}

Swift::Int specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy14XPCDistributed4ID64VScTyyts5NeverOGGMd, &_ss18_DictionaryStorageCy14XPCDistributed4ID64VScTyyts5NeverOGGMR);
  v30 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v30 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      MEMORY[0x277C6BCE0](v20);
      result = Hasher._finalize()();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy14XPCDistributed4ID64VAC14RequestManagerC0E0CyAEs6ResultOyAC9XPCSystemC9TransportC6PacketV7PayloadVAO0I5ErrorOG_GGMd, &_ss18_DictionaryStorageCy14XPCDistributed4ID64VAC14RequestManagerC0E0CyAEs6ResultOyAC9XPCSystemC9TransportC6PacketV7PayloadVAO0I5ErrorOG_GGMR);
  v30 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v30 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      MEMORY[0x277C6BCE0](v20);
      result = Hasher._finalize()();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy14XPCDistributed9XPCSystemC10RawActorIDO5LocalVAC04WeakF3RefVGMd, &_ss18_DictionaryStorageCy14XPCDistributed9XPCSystemC10RawActorIDO5LocalVAC04WeakF3RefVGMR);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = 16 * (v17 | (v8 << 6));
      v30 = *(*(v5 + 48) + v20);
      v21 = *(v5 + 56) + v20;
      if (v4)
      {
        outlined init with take of WeakActorRef(v21, v31);
      }

      else
      {
        outlined init with copy of WeakActorRef(v21, v31);
      }

      Hasher.init(_seed:)();
      MEMORY[0x277C6BCE0](v30);
      MEMORY[0x277C6BCE0](*(&v30 + 1));
      result = Hasher._finalize()();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      *(*(v7 + 48) + v16) = v30;
      result = outlined init with take of WeakActorRef(v31, *(v7 + 56) + v16);
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if (v4)
    {
      v29 = 1 << *(v5 + 32);
      if (v29 >= 64)
      {
        bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v29;
      }

      *(v5 + 16) = 0;
    }

    v3 = v2;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t specialized _NativeDictionary._delete(at:)(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    v27 = v4;
    while (1)
    {
      v9 = 24 * v6;
      v10 = *(a2 + 48) + 24 * v6;
      v11 = *v10;
      v12 = *(v10 + 8);
      v13 = *(v10 + 16);
      Hasher.init(_seed:)();
      if (!v13)
      {
        break;
      }

      if (v13 == 1)
      {
        v14 = 1;
LABEL_9:
        MEMORY[0x277C6BCC0](v14);

        String.hash(into:)();
        goto LABEL_11;
      }

      MEMORY[0x277C6BCC0](2);
      MEMORY[0x277C6BCE0](v11);
LABEL_11:
      v15 = Hasher._finalize()();
      result = outlined consume of XPCSystem.SharedActorKey(v11, v12, v13);
      v16 = v15 & v7;
      if (v3 >= v8)
      {
        v4 = v27;
        if (v16 < v8)
        {
          goto LABEL_4;
        }
      }

      else
      {
        v4 = v27;
        if (v16 >= v8)
        {
          goto LABEL_16;
        }
      }

      if (v3 >= v16)
      {
LABEL_16:
        v17 = *(a2 + 48);
        v18 = v17 + 24 * v3;
        v19 = (v17 + v9);
        if (24 * v3 < v9 || v18 >= v19 + 24 || v3 != v6)
        {
          v20 = *v19;
          *(v18 + 16) = *(v19 + 2);
          *v18 = v20;
        }

        v21 = *(a2 + 56);
        v22 = (v21 + 16 * v3);
        v23 = (v21 + 16 * v6);
        if (v3 != v6 || v22 >= v23 + 1)
        {
          *v22 = *v23;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    v14 = 0;
    goto LABEL_9;
  }

LABEL_23:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v24 = *(a2 + 16);
  v25 = __OFSUB__(v24, 1);
  v26 = v24 - 1;
  if (v25)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v26;
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
      v9 = *(*(a2 + 48) + 8 * v6);
      Hasher.init(_seed:)();
      MEMORY[0x277C6BCE0](v9);
      result = Hasher._finalize()();
      v10 = result & v7;
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
        v12 = (v11 + 8 * v3);
        v13 = (v11 + 8 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
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
      v9 = (*(a2 + 48) + 16 * v6);
      v10 = *v9;
      v11 = v9[1];
      Hasher.init(_seed:)();
      MEMORY[0x277C6BCE0](v10);
      MEMORY[0x277C6BCE0](v11);
      result = Hasher._finalize()();
      v12 = result & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v12 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v13 = *(a2 + 48);
      v14 = (v13 + 16 * v3);
      v15 = (v13 + 16 * v6);
      if (v3 != v6 || v14 >= v15 + 1)
      {
        *v14 = *v15;
      }

      v16 = *(a2 + 56);
      result = v16 + 16 * v3;
      if (v3 < v6 || result >= v16 + 16 * v6 + 16)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        if (v3 == v6)
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
        goto LABEL_18;
      }
    }

    if (v12 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v12)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_18:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, __n128 a7)
{
  v8 = v7;
  v15 = *v7;
  v16 = specialized __RawDictionaryStorage.find<A>(_:)(a3, a4, a5);
  v18 = *(v15 + 16);
  v19 = (v17 & 1) == 0;
  v20 = __OFADD__(v18, v19);
  v21 = v18 + v19;
  if (v20)
  {
    __break(1u);
    goto LABEL_17;
  }

  v22 = v17;
  v23 = *(v15 + 24);
  if (v23 < v21 || (a6 & 1) == 0)
  {
    if (v23 < v21 || (a6 & 1) != 0)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v21, a6 & 1);
      v16 = specialized __RawDictionaryStorage.find<A>(_:)(a3, a4, a5);
      if ((v22 & 1) != (v25 & 1))
      {
LABEL_18:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v24 = v16;
      specialized _NativeDictionary.copy()();
      v16 = v24;
    }
  }

  v26 = *v8;
  if (v22)
  {
    v27 = (v26[7] + 16 * v16);
    *v27 = a1;
    v27[1] = a2;

    return swift_unknownObjectRelease();
  }

  v26[(v16 >> 6) + 8] |= 1 << v16;
  v29 = v26[6] + 24 * v16;
  *v29 = a3;
  *(v29 + 8) = a4;
  *(v29 + 16) = a5;
  v30 = (v26[7] + 16 * v16);
  *v30 = a1;
  v30[1] = a2;
  v31 = v26[2];
  v20 = __OFADD__(v31, 1);
  v32 = v31 + 1;
  if (v20)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v26[2] = v32;

  return outlined copy of XPCSystem.SharedActorKey(a3, a4, a5);
}

unint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v14, a3 & 1);
      result = specialized __RawDictionaryStorage.find<A>(_:)(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      specialized _NativeDictionary.copy()();
      result = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + 8 * result) = a2;
    *(v19[7] + 8 * result) = a1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return result;
    }

    goto LABEL_15;
  }

  *(v19[7] + 8 * result) = a1;
}

{
  v4 = v3;
  v8 = *v3;
  result = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v14, a3 & 1);
      result = specialized __RawDictionaryStorage.find<A>(_:)(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      specialized _NativeDictionary.copy()();
      result = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + 8 * result) = a2;
    *(v19[7] + 8 * result) = a1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return result;
    }

    goto LABEL_15;
  }

  *(v19[7] + 8 * result) = a1;
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      specialized _NativeDictionary.copy()();
      v11 = v19;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, a4 & 1);
    v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = v21[7] + 16 * v11;

    return outlined assign with take of WeakActorRef(a1, v22);
  }

  else
  {

    return specialized _NativeDictionary._insert(at:key:value:)(v11, a2, a3, a1, v21);
  }
}

uint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = outlined init with take of WeakActorRef(a4, a5[7] + 16 * a1);
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

void *specialized _NativeDictionary.copy()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy14XPCDistributed9XPCSystemC14SharedActorKeyO11Distributed0hF0_pGMd, &_ss18_DictionaryStorageCy14XPCDistributed9XPCSystemC14SharedActorKeyO11Distributed0hF0_pGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 24 * v17;
        v19 = *(v2 + 48) + 24 * v17;
        v20 = *v19;
        v21 = *(v19 + 8);
        v17 *= 16;
        v22 = *(v4 + 48) + v18;
        v23 = *(*(v2 + 56) + v17);
        v24 = *(v19 + 16);
        *v22 = *v19;
        *(v22 + 8) = v21;
        *(v22 + 16) = v24;
        *(*(v4 + 56) + v17) = v23;
        outlined copy of XPCSystem.SharedActorKey(v20, v21, v24);
        result = swift_unknownObjectRetain();
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy14XPCDistributed4ID64VScTyyts5NeverOGGMd, &_ss18_DictionaryStorageCy14XPCDistributed4ID64VScTyyts5NeverOGGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy14XPCDistributed4ID64VAC14RequestManagerC0E0CyAEs6ResultOyAC9XPCSystemC9TransportC6PacketV7PayloadVAO0I5ErrorOG_GGMd, &_ss18_DictionaryStorageCy14XPCDistributed4ID64VAC14RequestManagerC0E0CyAEs6ResultOyAC9XPCSystemC9TransportC6PacketV7PayloadVAO0I5ErrorOG_GGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy14XPCDistributed9XPCSystemC10RawActorIDO5LocalVAC04WeakF3RefVGMd, &_ss18_DictionaryStorageCy14XPCDistributed9XPCSystemC10RawActorIDO5LocalVAC04WeakF3RefVGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = *(*(v2 + 48) + v17);
        outlined init with copy of WeakActorRef(*(v2 + 56) + v17, v19);
        *(*(v4 + 48) + v17) = v18;
        result = outlined init with take of WeakActorRef(v19, *(v4 + 56) + v17);
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t specialized SetAlgebra<>.init(arrayLiteral:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC14XPCDistributed9XPCSystemC14SharedActorKeyO_11Distributed0hF0_pTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy14XPCDistributed9XPCSystemC14SharedActorKeyO11Distributed0hF0_pGMd, &_ss18_DictionaryStorageCy14XPCDistributed9XPCSystemC14SharedActorKeyO11Distributed0hF0_pGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i = (i + 40))
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v7 = *(i - 8);
      v14 = *i;
      outlined copy of XPCSystem.SharedActorKey(v5, v6, *(i - 8));
      swift_unknownObjectRetain();
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6, v7);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = v3[6] + 24 * result;
      *v10 = v5;
      *(v10 + 8) = v6;
      *(v10 + 16) = v7;
      *(v3[7] + 16 * result) = v14;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
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

uint64_t partial apply for specialized closure #1 in UnownedAwaitableEvent.init()(uint64_t a1, uint64_t a2)
{
  return specialized closure #1 in UnownedAwaitableEvent.init()(a1, a2, v2, _ss6ResultOyxs5NeverOGRi_zRi0_zlyytIsegn_SgWOe);
}

{
  return specialized closure #1 in UnownedAwaitableEvent.init()(a1, a2, v2);
}

void *_sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC14XPCDistributed4ID64V_ScTyyts5NeverOGTt0g5Tf4g_n(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy14XPCDistributed4ID64VScTyyts5NeverOGGMd, &_ss18_DictionaryStorageCy14XPCDistributed4ID64VScTyyts5NeverOGGMR);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  v4 = a1[4];
  v5 = a1[5];
  v6 = specialized __RawDictionaryStorage.find<A>(_:)(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = (a1 + 7);
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + 8 * v8) = v4;
    *(v3[7] + 8 * v8) = result;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v4 = *(v10 - 1);
    v15 = *v10;

    v8 = specialized __RawDictionaryStorage.find<A>(_:)(v4);
    v10 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type XPCSystem.SharedActorKey and conformance XPCSystem.SharedActorKey()
{
  result = lazy protocol witness table cache variable for type XPCSystem.SharedActorKey and conformance XPCSystem.SharedActorKey;
  if (!lazy protocol witness table cache variable for type XPCSystem.SharedActorKey and conformance XPCSystem.SharedActorKey)
  {
    result = swift_getWitnessTable("y1\b\r\\^", &type metadata for XPCSystem.SharedActorKey, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type XPCSystem.SharedActorKey and conformance XPCSystem.SharedActorKey);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type XPCSystem.SharedActorKey and conformance XPCSystem.SharedActorKey;
  if (!lazy protocol witness table cache variable for type XPCSystem.SharedActorKey and conformance XPCSystem.SharedActorKey)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for XPCSystem.SharedActorKey, &type metadata for XPCSystem.SharedActorKey, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type XPCSystem.SharedActorKey and conformance XPCSystem.SharedActorKey);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type XPCSystem.SharedActorKey and conformance XPCSystem.SharedActorKey;
  if (!lazy protocol witness table cache variable for type XPCSystem.SharedActorKey and conformance XPCSystem.SharedActorKey)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for XPCSystem.SharedActorKey, &type metadata for XPCSystem.SharedActorKey, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type XPCSystem.SharedActorKey and conformance XPCSystem.SharedActorKey);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type XPCSystem.SharedActorKey and conformance XPCSystem.SharedActorKey;
  if (!lazy protocol witness table cache variable for type XPCSystem.SharedActorKey and conformance XPCSystem.SharedActorKey)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for XPCSystem.SharedActorKey, &type metadata for XPCSystem.SharedActorKey, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type XPCSystem.SharedActorKey and conformance XPCSystem.SharedActorKey);
  }

  return result;
}

uint64_t outlined consume of XPCSystem.SharedActorKey(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

uint64_t outlined copy of XPCSystem.SharedActorKey(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A];
  if (!lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A])
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    result = swift_getWitnessTable(MEMORY[0x277D83970], v3, v0, v1);
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

uint64_t outlined destroy of XPCPeerRequirement?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s3XPC18XPCPeerRequirementVSgMd, &_s3XPC18XPCPeerRequirementVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type XPCSystem.Session.LocalInterface.ActivationToken.CodingKeys and conformance XPCSystem.Session.LocalInterface.ActivationToken.CodingKeys()
{
  result = lazy protocol witness table cache variable for type XPCSystem.Session.LocalInterface.ActivationToken.CodingKeys and conformance XPCSystem.Session.LocalInterface.ActivationToken.CodingKeys;
  if (!lazy protocol witness table cache variable for type XPCSystem.Session.LocalInterface.ActivationToken.CodingKeys and conformance XPCSystem.Session.LocalInterface.ActivationToken.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for XPCSystem.Session.LocalInterface.ActivationToken.CodingKeys, &unk_2883F4180, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type XPCSystem.Session.LocalInterface.ActivationToken.CodingKeys and conformance XPCSystem.Session.LocalInterface.ActivationToken.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type XPCSystem.Session.LocalInterface.ActivationToken.CodingKeys and conformance XPCSystem.Session.LocalInterface.ActivationToken.CodingKeys;
  if (!lazy protocol witness table cache variable for type XPCSystem.Session.LocalInterface.ActivationToken.CodingKeys and conformance XPCSystem.Session.LocalInterface.ActivationToken.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for XPCSystem.Session.LocalInterface.ActivationToken.CodingKeys, &unk_2883F4180, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type XPCSystem.Session.LocalInterface.ActivationToken.CodingKeys and conformance XPCSystem.Session.LocalInterface.ActivationToken.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type XPCSystem.Session.LocalInterface.ActivationToken.CodingKeys and conformance XPCSystem.Session.LocalInterface.ActivationToken.CodingKeys;
  if (!lazy protocol witness table cache variable for type XPCSystem.Session.LocalInterface.ActivationToken.CodingKeys and conformance XPCSystem.Session.LocalInterface.ActivationToken.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for XPCSystem.Session.LocalInterface.ActivationToken.CodingKeys, &unk_2883F4180, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type XPCSystem.Session.LocalInterface.ActivationToken.CodingKeys and conformance XPCSystem.Session.LocalInterface.ActivationToken.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type XPCSystem.Session.LocalInterface.ActivationToken.CodingKeys and conformance XPCSystem.Session.LocalInterface.ActivationToken.CodingKeys;
  if (!lazy protocol witness table cache variable for type XPCSystem.Session.LocalInterface.ActivationToken.CodingKeys and conformance XPCSystem.Session.LocalInterface.ActivationToken.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for XPCSystem.Session.LocalInterface.ActivationToken.CodingKeys, &unk_2883F4180, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type XPCSystem.Session.LocalInterface.ActivationToken.CodingKeys and conformance XPCSystem.Session.LocalInterface.ActivationToken.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ID64 and conformance ID64()
{
  result = lazy protocol witness table cache variable for type ID64 and conformance ID64;
  if (!lazy protocol witness table cache variable for type ID64 and conformance ID64)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ID64, &type metadata for ID64, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ID64 and conformance ID64);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ID64 and conformance ID64;
  if (!lazy protocol witness table cache variable for type ID64 and conformance ID64)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ID64, &type metadata for ID64, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ID64 and conformance ID64);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ID64 and conformance ID64;
  if (!lazy protocol witness table cache variable for type ID64 and conformance ID64)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ID64, &type metadata for ID64, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ID64 and conformance ID64);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ID64 and conformance ID64;
  if (!lazy protocol witness table cache variable for type ID64 and conformance ID64)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ID64, &type metadata for ID64, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ID64 and conformance ID64);
  }

  return result;
}

uint64_t partial apply for specialized implicit closure #1 in XPCSystem.Session.LocalInterface.activateThenWithRemoteInterface<A>(perform:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for specialized implicit closure #1 in XPCSystem.Session.LocalInterface.activateThenWithRemoteInterface<A>(perform:);

  return specialized implicit closure #1 in XPCSystem.Session.LocalInterface.activateThenWithRemoteInterface<A>(perform:)(a1, v4, v5, v6);
}

uint64_t partial apply for implicit closure #1 in XPCSystem.Session.LocalInterface.activateThenWithRemoteInterface<A>(perform:)(uint64_t a1)
{
  v4 = v1[3];
  v6 = v1[4];
  v5 = v1[5];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for implicit closure #1 in XPCSystem.Session.LocalInterface.activateThenWithRemoteInterface<A>(perform:);

  return implicit closure #1 in XPCSystem.Session.LocalInterface.activateThenWithRemoteInterface<A>(perform:)(a1, v4, v6, v5);
}

uint64_t partial apply for implicit closure #1 in XPCSystem.Session.LocalInterface.activateThenWithRemoteInterface<A>(perform:)()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t _s14XPCDistributed9XPCSystemC7SessionC14LocalInterfaceV022activateThenWithRemoteE07performs6ResultOyxq_G6result_AG15ActivationTokenV5tokentxAE0iE0VYaq_YKXE_tYas8SendableRzs5ErrorR_r0_lFAlRYaXEfU_TA(uint64_t a1, void *a2)
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

uint64_t outlined init with copy of Any(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs17CodingUserInfoKeyV_ypTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17CodingUserInfoKeyV_yptMd, &_ss17CodingUserInfoKeyV_yptMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys17CodingUserInfoKeyVypGMd, &_ss18_DictionaryStorageCys17CodingUserInfoKeyVypGMR);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      outlined init with copy of XPCPeerRequirement?(v9, v5, &_ss17CodingUserInfoKeyV_yptMd, &_ss17CodingUserInfoKeyV_yptMR);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for CodingUserInfoKey();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      result = outlined init with take of Any(&v5[v8], (v7[7] + 32 * v13));
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

uint64_t __swift_destroy_boxed_opaque_existential_1Tm(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type XPCSystem.Session.InitializationOptions and conformance XPCSystem.Session.InitializationOptions()
{
  result = lazy protocol witness table cache variable for type XPCSystem.Session.InitializationOptions and conformance XPCSystem.Session.InitializationOptions;
  if (!lazy protocol witness table cache variable for type XPCSystem.Session.InitializationOptions and conformance XPCSystem.Session.InitializationOptions)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for XPCSystem.Session.InitializationOptions, &type metadata for XPCSystem.Session.InitializationOptions, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type XPCSystem.Session.InitializationOptions and conformance XPCSystem.Session.InitializationOptions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type XPCSystem.Session.InitializationOptions and conformance XPCSystem.Session.InitializationOptions;
  if (!lazy protocol witness table cache variable for type XPCSystem.Session.InitializationOptions and conformance XPCSystem.Session.InitializationOptions)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for XPCSystem.Session.InitializationOptions, &type metadata for XPCSystem.Session.InitializationOptions, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type XPCSystem.Session.InitializationOptions and conformance XPCSystem.Session.InitializationOptions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type XPCSystem.Session.InitializationOptions and conformance XPCSystem.Session.InitializationOptions;
  if (!lazy protocol witness table cache variable for type XPCSystem.Session.InitializationOptions and conformance XPCSystem.Session.InitializationOptions)
  {
    result = swift_getWitnessTable("QZ\b\rHy", &type metadata for XPCSystem.Session.InitializationOptions, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type XPCSystem.Session.InitializationOptions and conformance XPCSystem.Session.InitializationOptions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type XPCSystem.Session.InitializationOptions and conformance XPCSystem.Session.InitializationOptions;
  if (!lazy protocol witness table cache variable for type XPCSystem.Session.InitializationOptions and conformance XPCSystem.Session.InitializationOptions)
  {
    result = swift_getWitnessTable(")h\b\r y", &type metadata for XPCSystem.Session.InitializationOptions, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type XPCSystem.Session.InitializationOptions and conformance XPCSystem.Session.InitializationOptions);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type XPCSystem.Session.LocalInterface.ActivationToken and conformance XPCSystem.Session.LocalInterface.ActivationToken()
{
  result = lazy protocol witness table cache variable for type XPCSystem.Session.LocalInterface.ActivationToken and conformance XPCSystem.Session.LocalInterface.ActivationToken;
  if (!lazy protocol witness table cache variable for type XPCSystem.Session.LocalInterface.ActivationToken and conformance XPCSystem.Session.LocalInterface.ActivationToken)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for XPCSystem.Session.LocalInterface.ActivationToken, &type metadata for XPCSystem.Session.LocalInterface.ActivationToken, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type XPCSystem.Session.LocalInterface.ActivationToken and conformance XPCSystem.Session.LocalInterface.ActivationToken);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type XPCSystem.Session and conformance XPCSystem.Session(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), const char *a4)
{
  result = *a1;
  if (!result)
  {
    v7 = a3(a2);
    result = swift_getWitnessTable(a4, v7);
    atomic_store(result, a1);
  }

  return result;
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

void *assignWithTake for XPCSystem.Session.LocalInterface(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t getEnumTagSinglePayload for XPCSystem.Session.LocalInterface.ActivationToken(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for XPCSystem.Session.LocalInterface.ActivationToken(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
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

  *(result + 8) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for XPCSystem.Session.RemoteInterface(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t storeEnumTagSinglePayload for XPCSystem.Session.RemoteInterface(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for XPCSystem.Session.LocalInterface.ActivationToken.CodingKeys(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for XPCSystem.Session.LocalInterface.ActivationToken.CodingKeys(_WORD *result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for os_unfair_lock_s(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for os_unfair_lock_s(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
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

  *(result + 4) = v3;
  return result;
}

void type metadata accessor for os_unfair_lock_s()
{
  if (!lazy cache variable for type metadata for os_unfair_lock_s)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &lazy cache variable for type metadata for os_unfair_lock_s);
    }
  }
}

void *_sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC14XPCDistributed4ID64V_AC14RequestManagerC0E0CyAEs6ResultOyAC9XPCSystemC9TransportC6PacketV7PayloadVAO0I5ErrorOG_GTt0g5Tf4g_n(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy14XPCDistributed4ID64VAC14RequestManagerC0E0CyAEs6ResultOyAC9XPCSystemC9TransportC6PacketV7PayloadVAO0I5ErrorOG_GGMd, &_ss18_DictionaryStorageCy14XPCDistributed4ID64VAC14RequestManagerC0E0CyAEs6ResultOyAC9XPCSystemC9TransportC6PacketV7PayloadVAO0I5ErrorOG_GGMR);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  v4 = a1[4];
  v5 = a1[5];
  v6 = specialized __RawDictionaryStorage.find<A>(_:)(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = (a1 + 7);
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + 8 * v8) = v4;
    *(v3[7] + 8 * v8) = result;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v4 = *(v10 - 1);
    v15 = *v10;

    v8 = specialized __RawDictionaryStorage.find<A>(_:)(v4);
    v10 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC14XPCDistributed9XPCSystemC10RawActorIDO5LocalV_AC04WeakF3RefVTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy14XPCDistributed9XPCSystemC10RawActorIDO5LocalVAC04WeakF3RefVGMd, &_ss18_DictionaryStorageCy14XPCDistributed9XPCSystemC10RawActorIDO5LocalVAC04WeakF3RefVGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    for (i = a1 + 32; ; i += 32)
    {
      outlined init with copy of XPCPeerRequirement?(i, &v13, &_s14XPCDistributed9XPCSystemC10RawActorIDO5LocalV_AA04WeakD3RefVtMd, &_s14XPCDistributed9XPCSystemC10RawActorIDO5LocalV_AA04WeakD3RefVtMR);
      v5 = v13;
      v6 = v14;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = outlined init with take of WeakActorRef(&v15, v3[7] + 16 * result);
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      if (!--v1)
      {
        return v3;
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

uint64_t outlined init with copy of XPCPeerRequirement?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

_OWORD *outlined init with take of Any(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
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

uint64_t SwiftType.init<A>(_:)()
{
  result = _mangledTypeName(_:)();
  if (!v1)
  {
    return 0;
  }

  return result;
}

uint64_t static SwiftType.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance SwiftType.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x5464656C676E616DLL && a2 == 0xEF656D614E657079)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SwiftType.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SwiftType.CodingKeys and conformance SwiftType.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SwiftType.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SwiftType.CodingKeys and conformance SwiftType.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SwiftType.encode(to:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14XPCDistributed9SwiftTypeV10CodingKeys33_3C9B7FB6BA3D0F315FA05335263ED71ELLOGMd, &_ss22KeyedEncodingContainerVy14XPCDistributed9SwiftTypeV10CodingKeys33_3C9B7FB6BA3D0F315FA05335263ED71ELLOGMR);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type SwiftType.CodingKeys and conformance SwiftType.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v5 + 8))(v7, v4);
}

unint64_t lazy protocol witness table accessor for type SwiftType.CodingKeys and conformance SwiftType.CodingKeys()
{
  result = lazy protocol witness table cache variable for type SwiftType.CodingKeys and conformance SwiftType.CodingKeys;
  if (!lazy protocol witness table cache variable for type SwiftType.CodingKeys and conformance SwiftType.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SwiftType.CodingKeys, &unk_2883F4310, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SwiftType.CodingKeys and conformance SwiftType.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SwiftType.CodingKeys and conformance SwiftType.CodingKeys;
  if (!lazy protocol witness table cache variable for type SwiftType.CodingKeys and conformance SwiftType.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SwiftType.CodingKeys, &unk_2883F4310, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SwiftType.CodingKeys and conformance SwiftType.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SwiftType.CodingKeys and conformance SwiftType.CodingKeys;
  if (!lazy protocol witness table cache variable for type SwiftType.CodingKeys and conformance SwiftType.CodingKeys)
  {
    result = swift_getWitnessTable("=c\b\rlt", &unk_2883F4310, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SwiftType.CodingKeys and conformance SwiftType.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SwiftType.CodingKeys and conformance SwiftType.CodingKeys;
  if (!lazy protocol witness table cache variable for type SwiftType.CodingKeys and conformance SwiftType.CodingKeys)
  {
    result = swift_getWitnessTable("M_\b\rDt", &unk_2883F4310, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SwiftType.CodingKeys and conformance SwiftType.CodingKeys);
  }

  return result;
}

Swift::Int SwiftType.hashValue.getter(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

void *SwiftType.init(from:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy14XPCDistributed9SwiftTypeV10CodingKeys33_3C9B7FB6BA3D0F315FA05335263ED71ELLOGMd, &_ss22KeyedDecodingContainerVy14XPCDistributed9SwiftTypeV10CodingKeys33_3C9B7FB6BA3D0F315FA05335263ED71ELLOGMR);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - v5;
  v7 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type SwiftType.CodingKeys and conformance SwiftType.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v7 = KeyedDecodingContainer.decode(_:forKey:)();
    (*(v4 + 8))(v6, v3);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v7;
}

uint64_t protocol witness for Decodable.init(from:) in conformance SwiftType@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy14XPCDistributed9SwiftTypeV10CodingKeys33_3C9B7FB6BA3D0F315FA05335263ED71ELLOGMd, &_ss22KeyedDecodingContainerVy14XPCDistributed9SwiftTypeV10CodingKeys33_3C9B7FB6BA3D0F315FA05335263ED71ELLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type SwiftType.CodingKeys and conformance SwiftType.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  v11 = v10;
  (*(v6 + 8))(v8, v5);
  result = __swift_destroy_boxed_opaque_existential_1Tm(a1);
  *a2 = v9;
  a2[1] = v11;
  return result;
}

uint64_t protocol witness for Encodable.encode(to:) in conformance SwiftType(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14XPCDistributed9SwiftTypeV10CodingKeys33_3C9B7FB6BA3D0F315FA05335263ED71ELLOGMd, &_ss22KeyedEncodingContainerVy14XPCDistributed9SwiftTypeV10CodingKeys33_3C9B7FB6BA3D0F315FA05335263ED71ELLOGMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type SwiftType.CodingKeys and conformance SwiftType.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v3 + 8))(v5, v2);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance SwiftType()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance SwiftType(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type SwiftType and conformance SwiftType()
{
  result = lazy protocol witness table cache variable for type SwiftType and conformance SwiftType;
  if (!lazy protocol witness table cache variable for type SwiftType and conformance SwiftType)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SwiftType, &type metadata for SwiftType, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SwiftType and conformance SwiftType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SwiftType and conformance SwiftType;
  if (!lazy protocol witness table cache variable for type SwiftType and conformance SwiftType)
  {
    result = swift_getWitnessTable("yR\b\rLu", &type metadata for SwiftType, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SwiftType and conformance SwiftType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SwiftType and conformance SwiftType;
  if (!lazy protocol witness table cache variable for type SwiftType and conformance SwiftType)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SwiftType, &type metadata for SwiftType, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SwiftType and conformance SwiftType);
  }

  return result;
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SwiftType()
{
  v1 = *v0;

  return v1;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance SwiftType(uint64_t *a1, void *a2)
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

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for SwiftType(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for SwiftType(uint64_t result, int a2, int a3)
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

uint64_t Synchronized.__allocating_init(initalValue:)(uint64_t a1)
{
  v2 = swift_allocObject();
  Synchronized.init(initalValue:)(a1);
  return v2;
}

Swift::Bool __swiftcall Fuse.trip()()
{
  v1 = 0;
  atomic_compare_exchange_strong_explicit(v0, &v1, 1u, memory_order_relaxed, memory_order_relaxed);
  return v1 == 0;
}

char *Synchronized.init(initalValue:)(uint64_t a1)
{
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(v1 + 2) = v4;
  (*(*(*(v3 + 80) - 8) + 32))(&v1[*(v3 + 96)], a1);
  return v1;
}

void Synchronized.get<A>(_:)(uint64_t a1)
{
  v2 = *(*v1 + 80);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](a1);
  v5 = &v7 - v4;
  os_unfair_lock_lock((*(v1 + 2) + 16));
  v6 = *(*v1 + 96);
  swift_beginAccess();
  (*(v3 + 16))(v5, &v1[v6], v2);
  swift_getAtKeyPath();
  (*(v3 + 8))(v5, v2);
  os_unfair_lock_unlock((*(v1 + 2) + 16));
}

void Synchronized.get<A>(_:)(uint64_t **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a1;
  v7 = *(*v3 + 80);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](a1);
  v10 = &v12 - v9;
  v14 = v3;
  os_unfair_lock_lock((*(v3 + 2) + 16));
  if (a2)
  {
    v13 = *(*v14 + 96);
    swift_beginAccess();
    v11 = *(v8 + 16);
    do
    {
      a3 += 8;
      v11(v10, &v14[v13], v7);
      ++v5;

      swift_getAtKeyPath();

      (*(v8 + 8))(v10, v7);
      --a2;
    }

    while (a2);
  }

  os_unfair_lock_unlock((*(v14 + 2) + 16));
}

void Synchronized.set<A>(_:to:)(void *a1, uint64_t a2)
{
  v4 = *(*a1 + *MEMORY[0x277D84308] + 8);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](a1);
  v7 = &v8 - v6;
  os_unfair_lock_lock((*(v2 + 16) + 16));
  (*(v5 + 16))(v7, a2, v4);
  swift_beginAccess();
  swift_setAtWritableKeyPath();
  swift_endAccess();
  os_unfair_lock_unlock((*(v2 + 16) + 16));
}

void Synchronized.set<A>(assumingUnset:to:)(void *a1, uint64_t a2)
{
  v21 = a2;
  v3 = a1;
  v4 = *(*a1 + *MEMORY[0x277D84308] + 8);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](a1);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v20 - v9;
  v12 = *(v11 + 80);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v20 - v15;
  os_unfair_lock_lock((*(v2 + 2) + 16));
  v17 = *(*v2 + 96);
  swift_beginAccess();
  (*(v13 + 16))(v16, &v2[v17], v12);
  v22 = v3;
  swift_getAtKeyPath();
  (*(v13 + 8))(v16, v12);
  v18 = *(v4 + 16);
  v19 = *(v18 - 8);
  LODWORD(v3) = (*(v19 + 48))(v10, 1, v18);
  (*(v5 + 8))(v10, v4);
  if (v3 == 1)
  {
    (*(v19 + 16))(v7, v21, v18);
    (*(v19 + 56))(v7, 0, 1, v18);
    swift_beginAccess();
    swift_setAtWritableKeyPath();
    swift_endAccess();
    os_unfair_lock_unlock((*(v2 + 2) + 16));
  }

  else
  {
    v23 = 0;
    v24 = 0xE000000000000000;
    _StringGuts.grow(_:)(25);

    v23 = 0xD000000000000017;
    v24 = 0x80000002751B8C50;
    v26 = 0;
    v27 = 0xE000000000000000;
    v25 = v22;
    type metadata accessor for WritableKeyPath();
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    MEMORY[0x277C6B720](0x74657320736920, 0xE700000000000000);
    MEMORY[0x277C6B720](v26, v27);

    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }
}

void Synchronized.set(to:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  os_unfair_lock_lock((*(v2 + 2) + 16));
  v6 = *(*v2 + 96);
  swift_beginAccess();
  v7 = *(v5 + 80);
  v8 = *(v7 - 8);
  (*(v8 + 16))(a2, &v2[v6], v7);
  swift_beginAccess();
  (*(v8 + 24))(&v2[v6], a1, v7);
  swift_endAccess();
  os_unfair_lock_unlock((*(v2 + 2) + 16));
}

void _s14XPCDistributed12SynchronizedC3mapyqd_0_s7KeyPathCyxqd__G_qd_0_qd__qd_1_YKXEtqd_1_YKs5ErrorRd_1_r1_lF(uint64_t a1@<X0>, void (*a2)(char *, char *)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v24 = a4;
  v25 = a5;
  v7 = v6;
  v28 = a3;
  v29 = a2;
  v27 = a6;
  v23 = *(a4 - 8);
  MEMORY[0x28223BE20](a1);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *(v10 + *MEMORY[0x277D84DE8] + 8);
  v11 = *(v26 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v23 - v13;
  v16 = *(v15 + 80);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v18);
  v20 = &v23 - v19;
  os_unfair_lock_lock((*(v7 + 2) + 16));
  v21 = *(*v7 + 96);
  swift_beginAccess();
  (*(v17 + 16))(v20, &v7[v21], v16);
  swift_getAtKeyPath();
  (*(v17 + 8))(v20, v16);
  v22 = v30;
  v29(v14, v9);
  (*(v11 + 8))(v14, v26);
  if (v22)
  {
    (*(v23 + 32))(v25, v9, v24);
  }

  os_unfair_lock_unlock((*(v7 + 2) + 16));
}

void _s14XPCDistributed12SynchronizedC3mapyqd__qd__xqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v20[0] = a6;
  v20[1] = a2;
  v7 = v6;
  v21 = a1;
  v9 = *(a4 - 8);
  MEMORY[0x28223BE20](a1);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v12 + 80);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = v20 - v16;
  os_unfair_lock_lock((*(v6 + 2) + 16));
  v18 = *(*v6 + 96);
  swift_beginAccess();
  (*(v14 + 16))(v17, &v7[v18], v13);
  v19 = v22;
  v21(v17, v11);
  (*(v14 + 8))(v17, v13);
  if (v19)
  {
    (*(v9 + 32))(v20[0], v11, a4);
  }

  os_unfair_lock_unlock((*(v7 + 2) + 16));
}

void _s14XPCDistributed12SynchronizedC6updateyqd_0_s15WritableKeyPathCyxqd__G_qd_0_qd__zqd_1_YKXEtqd_1_YKs5ErrorRd_1_r1_lF(uint64_t a1, void (*a2)(uint64_t, _BYTE *), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v17 = a7;
  v10 = *(a5 - 8);
  MEMORY[0x28223BE20](a1);
  v12 = &v18[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  os_unfair_lock_lock((*(v7 + 16) + 16));
  swift_beginAccess();
  v13 = swift_modifyAtWritableKeyPath();
  v14 = v19;
  a2(v15, v12);
  if (v14)
  {
    (*(v10 + 32))(v17, v12, a5);
    v16 = 1;
  }

  else
  {
    v16 = 0;
  }

  v13(v18, v16);
  swift_endAccess();
  os_unfair_lock_unlock((*(v7 + 16) + 16));
}

void _s14XPCDistributed12SynchronizedC6updateyqd__qd__xzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(void (*a1)(char *, _BYTE *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = a6;
  v10 = *(a4 - 8);
  MEMORY[0x28223BE20](a1);
  v12 = &v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  os_unfair_lock_lock((*(v6 + 2) + 16));
  v13 = *(*v6 + 96);
  swift_beginAccess();
  a1(&v6[v13], v12);
  if (v7)
  {
    (*(v10 + 32))(v15, v12, a4);
  }

  swift_endAccess();
  os_unfair_lock_unlock((*(v6 + 2) + 16));
}

void Synchronized.update<A>(_:from:to:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v27 = a2;
  v28 = a4;
  v24 = a3;
  v29 = a5;
  v8 = *(*v5 + 80);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](a1);
  v11 = &v23 - v10;
  v13 = *(v12 + *MEMORY[0x277D84308] + 8);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v15);
  v23 = &v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v23 - v18;
  os_unfair_lock_lock((*(v6 + 2) + 16));
  v20 = *(*v6 + 96);
  swift_beginAccess();
  (*(v9 + 16))(v11, &v6[v20], v8);
  v25 = a1;
  v21 = swift_readAtKeyPath();
  v26 = v14;
  v22 = *(v14 + 16);
  v22(v19);
  v21(v30, 0);
  (*(v9 + 8))(v11, v8);
  if (dispatch thunk of static Equatable.== infix(_:_:)())
  {
    (v22)(v23, v24, v13);
    swift_beginAccess();
    swift_setAtWritableKeyPath();
    swift_endAccess();
  }

  (*(v26 + 32))(v29, v19, v13);
  os_unfair_lock_unlock((*(v6 + 2) + 16));
}

uint64_t *Synchronized.deinit()
{
  v1 = *v0;

  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(*v0 + 96));
  return v0;
}

uint64_t Synchronized.__deallocating_deinit()
{
  Synchronized.deinit();

  return swift_deallocClassInstance();
}

uint64_t ActorBackedByDispatchSerialQueue.unownedExecutor.getter(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 16))(a1);
  v3 = OS_dispatch_queue_serial_executor.asUnownedSerialExecutor()();

  return v3;
}

void ActorBackedByDispatchSerialQueue.syncToActor<A>(_:file:line:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = (*(a9 + 16))(a7, a9);
  OS_dispatch_queue.sync<A>(execute:)();
}

uint64_t Actor.assumeIsolated<A>(_:file:line:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    goto LABEL_8;
  }

  v15 = swift_allocObject();
  v15[2] = a7;
  v15[3] = a8;
  v15[4] = a9;
  v15[5] = a1;
  v15[6] = a2;
  closure #1 in Actor.assumeIsolated<A>(_:file:line:)(_sxqd__s5Error_pIggIrzo_xqd__sAA_pIeggIrzo_ScARzs8SendableRd__r__lTRTA, v15, v9, a7, a8, a9);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (v10)
  {
    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_8:
    _StringGuts.grow(_:)(66);
    MEMORY[0x277C6B720](0xD00000000000003FLL, 0x80000002751B8C80);
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    MEMORY[0x277C6B720](46, 0xE100000000000000);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t ActorBackedByDispatchSerialQueue.asyncToActor(_:file:line:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v31 = a6;
  v30 = a5;
  v28 = a3;
  v29 = a4;
  v27 = a1;
  v12 = type metadata accessor for DispatchWorkItemFlags();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for DispatchQoS();
  v16 = *(v32 - 8);
  v17 = MEMORY[0x28223BE20](v32);
  v19 = &v26 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = (*(a8 + 16))(a7, a8, v17);
  v21 = swift_allocObject();
  *(v21 + 16) = a7;
  *(v21 + 24) = a8;
  v23 = v27;
  v22 = v28;
  *(v21 + 32) = v8;
  *(v21 + 40) = v23;
  *(v21 + 48) = a2;
  *(v21 + 56) = v22;
  *(v21 + 64) = v29;
  *(v21 + 72) = v30;
  *(v21 + 80) = v31;
  aBlock[4] = partial apply for closure #1 in ActorBackedByDispatchSerialQueue.asyncToActor(_:file:line:);
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_0;
  v24 = _Block_copy(aBlock);
  swift_unknownObjectRetain();

  static DispatchQoS.unspecified.getter();
  v33 = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x277C6B8E0](0, v19, v15, v24);
  _Block_release(v24);

  (*(v13 + 8))(v15, v12);
  (*(v16 + 8))(v19, v32);
}

uint64_t partial apply for closure #1 in ActorBackedByDispatchSerialQueue.asyncToActor(_:file:line:)()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 56);
  v3 = *(v0 + 64);
  v4 = *(v0 + 80);
  v5 = *(v0 + 72);
  v8 = *(v0 + 16);
  v9 = v1;
  v10 = *(v0 + 40);
  return Actor.assumeIsolated<A>(_:file:line:)(_sxs5Error_pIggIzo_xytsAA_pIeggIrzo_14XPCDistributed32ActorBackedByDispatchSerialQueueRzlTRTA, v7, v2, v3, v5, v4, v8, MEMORY[0x277D84F78] + 8, *(v1 + 8));
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags()
{
  result = lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags;
  if (!lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags)
  {
    v3 = type metadata accessor for DispatchWorkItemFlags();
    result = swift_getWitnessTable(MEMORY[0x277D851A0], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags);
  }

  return result;
}

uint64_t type metadata completion function for Synchronized(uint64_t a1)
{
  result = swift_checkMetadataState();
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

uint64_t dispatch thunk of Synchronized.get<A>(_:)()
{
  return (*(*v0 + 136))();
}

{
  return (*(*v0 + 144))();
}

uint64_t closure #1 in Actor.assumeIsolated<A>(_:file:line:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_allocObject();
  v12[2] = a4;
  v12[3] = a5;
  v12[4] = a6;
  v12[5] = a1;
  v12[6] = a2;

  v14 = a3;
  _sxqd__s5Error_pIeggIrzo_xqd__sAA_pIegnIrzo_ScARzs8SendableRd__r__lTRTA(&v14);
}

uint64_t Atomic.deinit(uint64_t a1)
{
  v2 = v1;
  v3 = *(a1 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v6 = &v13 - v5;
  v7 = *(v3 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  memcpy(v6, v2, v11);
  dispatch thunk of static AtomicRepresentable.decodeAtomicRepresentation(_:)();
  (*(v7 + 8))(v10, v3);
  return UnsafeMutablePointer.deinitialize(count:)();
}

uint64_t getEnumTagSinglePayload for Fuse(unsigned __int8 *a1, int a2)
{
  if (a2)
  {
    if ((a2 + 255) >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 255) >> 8 < 0xFF)
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
        return (*a1 | (v4 << 8)) - 255;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (*(a1 + 1))
      {
        return (*a1 | (v4 << 8)) - 255;
      }
    }

    else
    {
      v4 = a1[1];
      if (a1[1])
      {
        return (*a1 | (v4 << 8)) - 255;
      }
    }
  }

  return 0;
}

uint64_t storeEnumTagSinglePayload for Fuse(uint64_t result, int a2, int a3)
{
  if ((a3 + 255) >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 255) >> 8 < 0xFF)
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
    v5 = ((a2 - 1) >> 8) + 1;
    *result = a2 - 1;
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
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *(result + 1) = 0;
    }

    else
    {
      *(result + 1) = 0;
    }
  }

  else if (v4)
  {
    *(result + 1) = 0;
  }

  return result;
}

uint64_t key path getter for WeakActorRef.ref : WeakActorRef@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  outlined init with copy of WeakActorRef(a1, v6);
  Strong = swift_unknownObjectWeakLoadStrong();
  v4 = v6[1];
  result = outlined destroy of WeakActorRef(v6);
  *a2 = Strong;
  a2[1] = v4;
  return result;
}

uint64_t WeakActorRef.ref.setter(uint64_t a1, uint64_t a2)
{
  *(v2 + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t (*WeakActorRef.ref.modify(uint64_t *a1))(uint64_t *a1)
{
  a1[2] = v1;
  Strong = swift_unknownObjectWeakLoadStrong();
  v4 = *(v1 + 8);
  *a1 = Strong;
  a1[1] = v4;
  return WeakActorRef.ref.modify;
}

uint64_t WeakActorRef.ref.modify(uint64_t *a1)
{
  *(a1[2] + 8) = a1[1];
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t WeakActorRef.init<A>(_:)@<X0>(uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  *(a3 + 8) = 0;
  *(swift_unknownObjectWeakInit() + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t getEnumTagSinglePayload for WeakActorRef(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  if ((*(a1 + 8) & 0xF000000000000007) != 0)
  {
    v2 = *a1 & 0x7FFFFFFF;
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for WeakActorRef(uint64_t result, int a2, int a3)
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
      *(result + 8) = 1;
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

uint64_t XPCSystem.Session.RemoteInvocationRequest.targetedSharedActor.getter()
{
  v1 = *(v0 + 8);
  outlined copy of XPCSystem.SharedActorKey(v1, *(v0 + 16), *(v0 + 24));
  return v1;
}

__n128 XPCSystem.Session.RemoteInvocationRequest.init(id:targetedSharedActor:remoteCallTarget:invocation:)@<Q0>(unint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unsigned __int8 a4@<W3>, uint64_t a5@<X4>, __n128 *a6@<X5>, __n128 *a7@<X8>)
{
  a7->n128_u64[1] = a2;
  a7[1].n128_u64[0] = a3;
  a7[1].n128_u8[8] = a4;
  v11 = MEMORY[0x277C6B2E0]();
  v13 = v12;
  v14 = type metadata accessor for RemoteCallTarget();
  v17 = a6[2];
  v18 = a6[1];
  v16 = *a6;
  (*(*(v14 - 8) + 8))(a5, v14);
  a7[2].n128_u64[0] = v11;
  a7[2].n128_u64[1] = v13;
  a7[3] = v16;
  result = v18;
  a7[4] = v18;
  a7[5] = v17;
  a7[8].n128_u8[8] = 0;
  a7->n128_u64[0] = a1;
  return result;
}

double XPCSystem.Session.RemoteInvocationRequest.invocation.getter@<D0>(uint64_t a1@<X8>)
{
  outlined init with copy of XPCSystem.Session.RemoteInvocationRequest.InvocationContents(v1 + 48, v6);
  if (v8)
  {
    v3 = v6[3];
    *(a1 + 32) = v6[2];
    *(a1 + 48) = v3;
    *(a1 + 64) = v6[4];
    *(a1 + 80) = v7;
    result = *v6;
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
  }

  else
  {
    outlined destroy of XPCSystem.Session.RemoteInvocationRequest.InvocationContents(v6);
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *(a1 + 64) = 0u;
    *(a1 + 80) = 0;
  }

  return result;
}

void XPCSystem.Session.RemoteInvocationRequest.targetRemoteCall.getter()
{

  JUMPOUT(0x277C6B300);
}

uint64_t protocol witness for Decodable.init(from:) in conformance XPCSystem.Session.RemoteInvocationRequest.InvocationContents@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  outlined init with copy of Decoder(a1, v6);
  XPCSystem.InvocationDecoder.init(from:)(v6, a2);
  result = __swift_destroy_boxed_opaque_existential_1Tm(a1);
  if (!v2)
  {
    *(a2 + 88) = 1;
  }

  return result;
}

uint64_t protocol witness for Encodable.encode(to:) in conformance XPCSystem.Session.RemoteInvocationRequest.InvocationContents(void *a1)
{
  outlined init with copy of XPCSystem.Session.RemoteInvocationRequest.InvocationContents(v1, &v4);
  if (v5)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    XPCSystem.InvocationEncoder.encode(to:)(a1);
  }

  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance XPCSystem.Session.RemoteInvocationRequest.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x277C6BCC0](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance XPCSystem.Session.RemoteInvocationRequest.CodingKeys(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  MEMORY[0x277C6BCC0](v2);
  return Hasher._finalize()();
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance XPCSystem.Session.RemoteInvocationRequest.CodingKeys()
{
  v1 = *v0;
  v2 = 25705;
  if (v1 == 2)
  {
    v3 = 0xD000000000000014;
  }

  else
  {
    v3 = 0x73746E65746E6F63;
  }

  if (*v0)
  {
    v2 = 0xD000000000000013;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance XPCSystem.Session.RemoteInvocationRequest.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized XPCSystem.Session.RemoteInvocationRequest.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance XPCSystem.Session.RemoteInvocationRequest.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type XPCSystem.Session.RemoteInvocationRequest.CodingKeys and conformance XPCSystem.Session.RemoteInvocationRequest.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance XPCSystem.Session.RemoteInvocationRequest.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type XPCSystem.Session.RemoteInvocationRequest.CodingKeys and conformance XPCSystem.Session.RemoteInvocationRequest.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t XPCSystem.Session.RemoteInvocationRequest.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14XPCDistributed9XPCSystemC7SessionC23RemoteInvocationRequestV10CodingKeys018_6652F7F3EA9063F11L13BACB4A19090F0LLOGMd, &_ss22KeyedEncodingContainerVy14XPCDistributed9XPCSystemC7SessionC23RemoteInvocationRequestV10CodingKeys018_6652F7F3EA9063F11L13BACB4A19090F0LLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type XPCSystem.Session.RemoteInvocationRequest.CodingKeys and conformance XPCSystem.Session.RemoteInvocationRequest.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  *&v11 = *v3;
  v13 = 0;
  lazy protocol witness table accessor for type ID64 and conformance ID64();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v9 = *(v3 + 24);
    v11 = *(v3 + 8);
    v12 = v9;
    v13 = 1;
    lazy protocol witness table accessor for type XPCSystem.SharedActorKey and conformance XPCSystem.SharedActorKey();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v11) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v11) = 3;
    lazy protocol witness table accessor for type XPCSystem.Session.RemoteInvocationRequest.InvocationContents and conformance XPCSystem.Session.RemoteInvocationRequest.InvocationContents();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t lazy protocol witness table accessor for type XPCSystem.Session.RemoteInvocationRequest.CodingKeys and conformance XPCSystem.Session.RemoteInvocationRequest.CodingKeys()
{
  result = lazy protocol witness table cache variable for type XPCSystem.Session.RemoteInvocationRequest.CodingKeys and conformance XPCSystem.Session.RemoteInvocationRequest.CodingKeys;
  if (!lazy protocol witness table cache variable for type XPCSystem.Session.RemoteInvocationRequest.CodingKeys and conformance XPCSystem.Session.RemoteInvocationRequest.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for XPCSystem.Session.RemoteInvocationRequest.CodingKeys, &unk_2883F4968, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type XPCSystem.Session.RemoteInvocationRequest.CodingKeys and conformance XPCSystem.Session.RemoteInvocationRequest.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type XPCSystem.Session.RemoteInvocationRequest.CodingKeys and conformance XPCSystem.Session.RemoteInvocationRequest.CodingKeys;
  if (!lazy protocol witness table cache variable for type XPCSystem.Session.RemoteInvocationRequest.CodingKeys and conformance XPCSystem.Session.RemoteInvocationRequest.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for XPCSystem.Session.RemoteInvocationRequest.CodingKeys, &unk_2883F4968, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type XPCSystem.Session.RemoteInvocationRequest.CodingKeys and conformance XPCSystem.Session.RemoteInvocationRequest.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type XPCSystem.Session.RemoteInvocationRequest.CodingKeys and conformance XPCSystem.Session.RemoteInvocationRequest.CodingKeys;
  if (!lazy protocol witness table cache variable for type XPCSystem.Session.RemoteInvocationRequest.CodingKeys and conformance XPCSystem.Session.RemoteInvocationRequest.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for XPCSystem.Session.RemoteInvocationRequest.CodingKeys, &unk_2883F4968, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type XPCSystem.Session.RemoteInvocationRequest.CodingKeys and conformance XPCSystem.Session.RemoteInvocationRequest.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type XPCSystem.Session.RemoteInvocationRequest.CodingKeys and conformance XPCSystem.Session.RemoteInvocationRequest.CodingKeys;
  if (!lazy protocol witness table cache variable for type XPCSystem.Session.RemoteInvocationRequest.CodingKeys and conformance XPCSystem.Session.RemoteInvocationRequest.CodingKeys)
  {
    atomic_store(result, &lazy protocol witness table cache variable for type XPCSystem.Session.RemoteInvocationRequest.CodingKeys and conformance XPCSystem.Session.RemoteInvocationRequest.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type XPCSystem.Session.RemoteInvocationRequest.InvocationContents and conformance XPCSystem.Session.RemoteInvocationRequest.InvocationContents()
{
  result = lazy protocol witness table cache variable for type XPCSystem.Session.RemoteInvocationRequest.InvocationContents and conformance XPCSystem.Session.RemoteInvocationRequest.InvocationContents;
  if (!lazy protocol witness table cache variable for type XPCSystem.Session.RemoteInvocationRequest.InvocationContents and conformance XPCSystem.Session.RemoteInvocationRequest.InvocationContents)
  {
    result = swift_getWitnessTable("\rG\b\r$m", &type metadata for XPCSystem.Session.RemoteInvocationRequest.InvocationContents, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type XPCSystem.Session.RemoteInvocationRequest.InvocationContents and conformance XPCSystem.Session.RemoteInvocationRequest.InvocationContents);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type XPCSystem.Session.RemoteInvocationRequest.InvocationContents and conformance XPCSystem.Session.RemoteInvocationRequest.InvocationContents;
  if (!lazy protocol witness table cache variable for type XPCSystem.Session.RemoteInvocationRequest.InvocationContents and conformance XPCSystem.Session.RemoteInvocationRequest.InvocationContents)
  {
    result = swift_getWitnessTable("eK\b\rLm", &type metadata for XPCSystem.Session.RemoteInvocationRequest.InvocationContents, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type XPCSystem.Session.RemoteInvocationRequest.InvocationContents and conformance XPCSystem.Session.RemoteInvocationRequest.InvocationContents);
  }

  return result;
}

uint64_t XPCSystem.Session.RemoteInvocationRequest.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy14XPCDistributed9XPCSystemC7SessionC23RemoteInvocationRequestV10CodingKeys018_6652F7F3EA9063F11L13BACB4A19090F0LLOGMd, &_ss22KeyedDecodingContainerVy14XPCDistributed9XPCSystemC7SessionC23RemoteInvocationRequestV10CodingKeys018_6652F7F3EA9063F11L13BACB4A19090F0LLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type XPCSystem.Session.RemoteInvocationRequest.CodingKeys and conformance XPCSystem.Session.RemoteInvocationRequest.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v31 = 0;
  lazy protocol witness table accessor for type ID64 and conformance ID64();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v20 = v15;
  v31 = 1;
  lazy protocol witness table accessor for type XPCSystem.SharedActorKey and conformance XPCSystem.SharedActorKey();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v9 = *(&v15 + 1);
  v10 = v16;
  v14[2] = v15;
  v21 = v15;
  v22 = v16;
  LOBYTE(v15) = 2;
  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  v14[1] = v9;
  v30 = v10;
  v23 = v11;
  v24 = v12;
  v31 = 3;
  lazy protocol witness table accessor for type XPCSystem.Session.RemoteInvocationRequest.InvocationContents and conformance XPCSystem.Session.RemoteInvocationRequest.InvocationContents();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v6 + 8))(v8, v5);
  v27 = v17;
  v28 = v18;
  v29[0] = *v19;
  *(v29 + 9) = *&v19[9];
  v25 = v15;
  v26 = v16;
  outlined init with copy of XPCSystem.Session.RemoteInvocationRequest(&v20, a2);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return outlined destroy of XPCSystem.Session.RemoteInvocationRequest(&v20);
}

uint64_t XPCSystem.Session.RemoteInvocationResponse.RemoteInvocationFailure.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000017 && 0x80000002751B8DC0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F69747563657865 && a2 == 0xEF64656C6961466ELL)
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

Swift::Int XPCSystem.Session.RemoteInvocationResponse.RemoteInvocationFailure.CodingKeys.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x277C6BCC0](a1 & 1);
  return Hasher._finalize()();
}

uint64_t XPCSystem.Session.RemoteInvocationResponse.RemoteInvocationFailure.CodingKeys.stringValue.getter(char a1)
{
  if (a1)
  {
    return 0x6F69747563657865;
  }

  else
  {
    return 0xD000000000000017;
  }
}

uint64_t XPCSystem.Session.RemoteInvocationResponse.RemoteInvocationFailure.ExecutionFailedCodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t XPCSystem.Session.RemoteInvocationResponse.RemoteInvocationFailure.encode(to:)(void *a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v35 = a3;
  v36 = a4;
  v34 = a2;
  v30 = type metadata accessor for XPCSystem.Session.RemoteInvocationResponse.RemoteInvocationFailure.ExecutionFailedCodingKeys(255, a5, a6, a7);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for XPCSystem.Session.RemoteInvocationResponse<A>.RemoteInvocationFailure.ExecutionFailedCodingKeys, v30);
  v11 = type metadata accessor for KeyedEncodingContainer();
  v31 = *(v11 - 8);
  v32 = v11;
  MEMORY[0x28223BE20](v11);
  v29 = &v25 - v12;
  v13 = type metadata accessor for XPCSystem.Session.RemoteInvocationResponse.RemoteInvocationFailure.ResultPropagationFailedCodingKeys(255, a5, a6, a7);
  v25 = swift_getWitnessTable(protocol conformance descriptor for XPCSystem.Session.RemoteInvocationResponse<A>.RemoteInvocationFailure.ResultPropagationFailedCodingKeys, v13);
  v14 = type metadata accessor for KeyedEncodingContainer();
  v26 = *(v14 - 8);
  v27 = v14;
  MEMORY[0x28223BE20](v14);
  v16 = &v25 - v15;
  v17 = type metadata accessor for XPCSystem.Session.RemoteInvocationResponse.RemoteInvocationFailure.CodingKeys(255, a5, a6, a7);
  swift_getWitnessTable(protocol conformance descriptor for XPCSystem.Session.RemoteInvocationResponse<A>.RemoteInvocationFailure.CodingKeys, v17);
  v18 = type metadata accessor for KeyedEncodingContainer();
  v33 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v20 = &v25 - v19;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (v36)
  {
    v38 = 1;
    v21 = v29;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v22 = v32;
    KeyedEncodingContainer.encode(_:forKey:)();
    (*(v31 + 8))(v21, v22);
  }

  else
  {
    v37 = 0;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v23 = v27;
    KeyedEncodingContainer.encode(_:forKey:)();
    (*(v26 + 8))(v16, v23);
  }

  return (*(v33 + 8))(v20, v18);
}

uint64_t XPCSystem.Session.RemoteInvocationResponse.RemoteInvocationFailure.init(from:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for XPCSystem.Session.RemoteInvocationResponse.RemoteInvocationFailure.ExecutionFailedCodingKeys(255, a2, a3, a4);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for XPCSystem.Session.RemoteInvocationResponse<A>.RemoteInvocationFailure.ExecutionFailedCodingKeys, v8);
  v46 = v8;
  v9 = type metadata accessor for KeyedDecodingContainer();
  v42 = *(v9 - 8);
  v43 = v9;
  MEMORY[0x28223BE20](v9);
  v47 = &v37 - v10;
  v11 = type metadata accessor for XPCSystem.Session.RemoteInvocationResponse.RemoteInvocationFailure.ResultPropagationFailedCodingKeys(255, a2, a3, a4);
  v44 = swift_getWitnessTable(protocol conformance descriptor for XPCSystem.Session.RemoteInvocationResponse<A>.RemoteInvocationFailure.ResultPropagationFailedCodingKeys, v11);
  v41 = type metadata accessor for KeyedDecodingContainer();
  v40 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v13 = &v37 - v12;
  v49 = a2;
  v50 = a3;
  v48 = a4;
  v14 = type metadata accessor for XPCSystem.Session.RemoteInvocationResponse.RemoteInvocationFailure.CodingKeys(255, a2, a3, a4);
  swift_getWitnessTable(protocol conformance descriptor for XPCSystem.Session.RemoteInvocationResponse<A>.RemoteInvocationFailure.CodingKeys, v14);
  v15 = type metadata accessor for KeyedDecodingContainer();
  v51 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = &v37 - v16;
  v18 = a1[3];
  v57 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  v19 = v52;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v19)
  {
    goto LABEL_8;
  }

  v38 = v11;
  v39 = v13;
  v21 = v49;
  v20 = v50;
  v52 = v15;
  *&v53 = KeyedDecodingContainer.allKeys.getter();
  v22 = type metadata accessor for Array();
  swift_getWitnessTable(MEMORY[0x277D83970], v22);
  *&v55 = ArraySlice.init<A>(_:)();
  *(&v55 + 1) = v23;
  *&v56 = v24;
  *(&v56 + 1) = v25;
  v26 = type metadata accessor for ArraySlice();
  swift_getWitnessTable(MEMORY[0x277D83FC0], v26);
  Collection<>.popFirst()();
  v27 = v53;
  if (v53 == 2 || (v37 = v55, v53 = v55, v54 = v56, (Collection.isEmpty.getter() & 1) == 0))
  {
    v14 = type metadata accessor for DecodingError();
    swift_allocError();
    v33 = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR);
    *v33 = type metadata accessor for XPCSystem.Session.RemoteInvocationResponse.RemoteInvocationFailure(0, v21, v20, v48);
    v34 = v52;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v14 - 8) + 104))(v33, *MEMORY[0x277D84160], v14);
    swift_willThrow();
    (*(v51 + 8))(v17, v34);
    swift_unknownObjectRelease();
LABEL_8:
    __swift_destroy_boxed_opaque_existential_1Tm(v57);
    return v14;
  }

  if (v27)
  {
    LOBYTE(v53) = 1;
    v28 = v47;
    v29 = v52;
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v30 = v51;
    v31 = v43;
    v14 = KeyedDecodingContainer.decode(_:forKey:)();
    v36 = v42;
  }

  else
  {
    LOBYTE(v53) = 0;
    v28 = v39;
    v29 = v52;
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v30 = v51;
    v31 = v41;
    v14 = KeyedDecodingContainer.decode(_:forKey:)();
    v36 = v40;
  }

  (*(v36 + 8))(v28, v31);
  (*(v30 + 8))(v17, v29);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(v57);
  return v14;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance XPCSystem.Session.RemoteInvocationResponse<A>.RemoteInvocationFailure.CodingKeys(uint64_t a1)
{
  Hasher.init(_seed:)();
  XPCSystem.Session.RemoteInvocationResponse.RemoteInvocationFailure.CodingKeys.hash(into:)(v3, *v1);
  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance XPCSystem.Session.RemoteInvocationResponse<A>.RemoteInvocationFailure.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = XPCSystem.Session.RemoteInvocationResponse.RemoteInvocationFailure.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance XPCSystem.Session.RemoteInvocationResponse<A>.RemoteInvocationFailure.CodingKeys@<X0>(_BYTE *a2@<X8>)
{
  result = specialized XPCSystem.Session.RemoteInvocationResponse.RemoteInvocationFailure.CodingKeys.init(intValue:)();
  *a2 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance XPCSystem.Session.RemoteInvocationResponse<A>.RemoteInvocationFailure.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for XPCSystem.Session.RemoteInvocationResponse<A>.RemoteInvocationFailure.CodingKeys, a1);

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance XPCSystem.Session.RemoteInvocationResponse<A>.RemoteInvocationFailure.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for XPCSystem.Session.RemoteInvocationResponse<A>.RemoteInvocationFailure.CodingKeys, a1);

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance XPCSystem.Session.RemoteInvocationResponse<A>.RemoteInvocationFailure.ExecutionFailedCodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = protocol witness for static Equatable.== infix(_:_:) in conformance XPCSystem.Session.LocalInterface.ActivationToken.CodingKeys();
  *a1 = result & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance XPCSystem.Session.RemoteInvocationResponse<A>.RemoteInvocationFailure.ExecutionFailedCodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for XPCSystem.Session.RemoteInvocationResponse<A>.RemoteInvocationFailure.ExecutionFailedCodingKeys, a1);

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance XPCSystem.Session.RemoteInvocationResponse<A>.RemoteInvocationFailure.ExecutionFailedCodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for XPCSystem.Session.RemoteInvocationResponse<A>.RemoteInvocationFailure.ExecutionFailedCodingKeys, a1);

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance XPCSystem.Session.RemoteInvocationResponse<A>.RemoteInvocationFailure.ResultPropagationFailedCodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for XPCSystem.Session.RemoteInvocationResponse<A>.RemoteInvocationFailure.ResultPropagationFailedCodingKeys, a1);

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance XPCSystem.Session.RemoteInvocationResponse<A>.RemoteInvocationFailure.ResultPropagationFailedCodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for XPCSystem.Session.RemoteInvocationResponse<A>.RemoteInvocationFailure.ResultPropagationFailedCodingKeys, a1);

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t protocol witness for Decodable.init(from:) in conformance XPCSystem.Session.RemoteInvocationResponse<A>.RemoteInvocationFailure@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  result = XPCSystem.Session.RemoteInvocationResponse.RemoteInvocationFailure.init(from:)(a1, a2[2], a2[3], a2[4]);
  if (!v3)
  {
    *a3 = result;
    *(a3 + 8) = v6;
    *(a3 + 16) = v7 & 1;
  }

  return result;
}

uint64_t XPCSystem.Session.RemoteInvocationResponse.value.getter@<X0>(void *a1@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v25 = a2;
  v7 = a1[2];
  v8 = type metadata accessor for Either(0, v7, &type metadata for XPCSystem.RemoteInvocationCancellationError, a3);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v19[-v10];
  v12 = a1[3];
  v13 = a1[4];
  v20 = v7;
  v21 = v12;
  v22 = v13;
  v14 = type metadata accessor for XPCSystem.Session.RemoteInvocationResponse.RemoteInvocationFailure(255, v7, v12, v13);
  v16 = type metadata accessor for Either(0, v7, v14, v15);
  Either.mapB<A>(_:)(partial apply for implicit closure #1 in XPCSystem.Session.RemoteInvocationResponse.value.getter, v16, &type metadata for XPCSystem.RemoteInvocationCancellationError, v11);
  lazy protocol witness table accessor for type XPCSystem.RemoteInvocationCancellationError and conformance XPCSystem.RemoteInvocationCancellationError();
  _s14XPCDistributed6EitherOAAs5ErrorR_rlE4getAxyq_YKF(v8, v23, a4);
  result = (*(v9 + 8))(v11, v8);
  if (v4)
  {
    v18 = v25;
    *v25 = v23[0];
    *(v18 + 8) = v24;
  }

  return result;
}

uint64_t partial apply for implicit closure #1 in XPCSystem.Session.RemoteInvocationResponse.value.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v2 = a1[1];
  if (*(a1 + 16))
  {
    v4 = 2;
  }

  else
  {
    v4 = 3;
  }

  *a2 = v4;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  return outlined copy of XPCSystem.Session.RemoteInvocationResponse<A>.RemoteInvocationFailure<A>(v3, v2);
}

unint64_t lazy protocol witness table accessor for type XPCSystem.RemoteInvocationCancellationError and conformance XPCSystem.RemoteInvocationCancellationError()
{
  result = lazy protocol witness table cache variable for type XPCSystem.RemoteInvocationCancellationError and conformance XPCSystem.RemoteInvocationCancellationError;
  if (!lazy protocol witness table cache variable for type XPCSystem.RemoteInvocationCancellationError and conformance XPCSystem.RemoteInvocationCancellationError)
  {
    result = swift_getWitnessTable("yQ\b\rtd", &type metadata for XPCSystem.RemoteInvocationCancellationError, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type XPCSystem.RemoteInvocationCancellationError and conformance XPCSystem.RemoteInvocationCancellationError);
  }

  return result;
}

uint64_t XPCSystem.Session.RemoteInvocationResponse.init(result:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a2 - 8) + 32))(a5, a1, a2);
  v8 = type metadata accessor for XPCSystem.Session.RemoteInvocationResponse.RemoteInvocationFailure(255, a2, a3, a4);
  type metadata accessor for Either(0, a2, v8, v9);

  return swift_storeEnumTagMultiPayload();
}

uint64_t XPCSystem.Session.RemoteInvocationResponse.init(executionFailure:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X8>)
{
  *a7 = a1;
  *(a7 + 8) = a2;
  *(a7 + 16) = a6;
  v8 = type metadata accessor for XPCSystem.Session.RemoteInvocationResponse.RemoteInvocationFailure(255, a3, a4, a5);
  type metadata accessor for Either(0, a3, v8, v9);

  return swift_storeEnumTagMultiPayload();
}

uint64_t XPCSystem.Session.RemoteInvocationResponse.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x65756C61765FLL && a2 == 0xE600000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance XPCSystem.Session.RemoteInvocationResponse<A>.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = XPCSystem.Session.RemoteInvocationResponse.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance XPCSystem.Session.RemoteInvocationResponse<A>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for XPCSystem.Session.RemoteInvocationResponse<A>.CodingKeys, a1);

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance XPCSystem.Session.RemoteInvocationResponse<A>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for XPCSystem.Session.RemoteInvocationResponse<A>.CodingKeys, a1);

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t XPCSystem.Session.RemoteInvocationResponse.encode(to:)(void *a1, void *a2)
{
  v4 = a2[2];
  v3 = a2[3];
  v5 = a2[4];
  v6 = type metadata accessor for XPCSystem.Session.RemoteInvocationResponse.CodingKeys(255, v4, v3, v5);
  swift_getWitnessTable(protocol conformance descriptor for XPCSystem.Session.RemoteInvocationResponse<A>.CodingKeys, v6);
  v7 = type metadata accessor for KeyedEncodingContainer();
  v8 = *(v7 - 8);
  v19 = v7;
  v20 = v8;
  MEMORY[0x28223BE20](v7);
  v10 = &v18 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = type metadata accessor for XPCSystem.Session.RemoteInvocationResponse.RemoteInvocationFailure(255, v4, v3, v5);
  v13 = type metadata accessor for Either(0, v4, v11, v12);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for XPCSystem.Session.RemoteInvocationResponse<A>.RemoteInvocationFailure, v11);
  v15 = swift_getWitnessTable(protocol conformance descriptor for XPCSystem.Session.RemoteInvocationResponse<A>.RemoteInvocationFailure, v11);
  v21[0] = v3;
  v21[1] = v5;
  v21[2] = WitnessTable;
  v21[3] = v15;
  v16 = v19;
  swift_getWitnessTable(protocol conformance descriptor for <> Either<A, B>, v13, v21);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v20 + 8))(v10, v16);
}

uint64_t XPCSystem.Session.RemoteInvocationResponse.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v32 = a5;
  v37 = type metadata accessor for XPCSystem.Session.RemoteInvocationResponse.RemoteInvocationFailure(255, a2, a3, a4);
  v40 = type metadata accessor for Either(0, a2, v37, v9);
  v34 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v39 = &v29 - v10;
  v11 = type metadata accessor for XPCSystem.Session.RemoteInvocationResponse.CodingKeys(255, a2, a3, a4);
  swift_getWitnessTable(protocol conformance descriptor for XPCSystem.Session.RemoteInvocationResponse<A>.CodingKeys, v11);
  v38 = type metadata accessor for KeyedDecodingContainer();
  v33 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v13 = &v29 - v12;
  v35 = a3;
  v36 = a4;
  v14 = type metadata accessor for XPCSystem.Session.RemoteInvocationResponse(0, a2, a3, a4);
  v31 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v29 - v15;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v17 = v42;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v17)
  {
    v28 = a1;
  }

  else
  {
    v29 = v16;
    v30 = v14;
    v42 = a1;
    v18 = v33;
    v19 = v34;
    v20 = v37;
    WitnessTable = swift_getWitnessTable(protocol conformance descriptor for XPCSystem.Session.RemoteInvocationResponse<A>.RemoteInvocationFailure, v37);
    v22 = swift_getWitnessTable(protocol conformance descriptor for XPCSystem.Session.RemoteInvocationResponse<A>.RemoteInvocationFailure, v20);
    v41[0] = v35;
    v41[1] = v36;
    v41[2] = WitnessTable;
    v41[3] = v22;
    v23 = v40;
    swift_getWitnessTable("Y=\b\r8c", v40, v41);
    v25 = v38;
    v24 = v39;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v18 + 8))(v13, v25);
    v27 = v29;
    (*(v19 + 32))(v29, v24, v23);
    (*(v31 + 32))(v32, v27, v30);
    v28 = v42;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v28);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance XPCSystem.Session.RemoteNotification.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000013 && 0x80000002751B8DA0 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance XPCSystem.Session.RemoteNotification.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type XPCSystem.Session.RemoteNotification.CodingKeys and conformance XPCSystem.Session.RemoteNotification.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance XPCSystem.Session.RemoteNotification.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type XPCSystem.Session.RemoteNotification.CodingKeys and conformance XPCSystem.Session.RemoteNotification.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance XPCSystem.Session.RemoteNotification.InvocationCancelledCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type XPCSystem.Session.RemoteNotification.InvocationCancelledCodingKeys and conformance XPCSystem.Session.RemoteNotification.InvocationCancelledCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance XPCSystem.Session.RemoteNotification.InvocationCancelledCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type XPCSystem.Session.RemoteNotification.InvocationCancelledCodingKeys and conformance XPCSystem.Session.RemoteNotification.InvocationCancelledCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t XPCSystem.Session.RemoteNotification.encode(to:)(void *a1, uint64_t a2)
{
  v12[0] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14XPCDistributed9XPCSystemC7SessionC18RemoteNotificationO29InvocationCancelledCodingKeys018_6652F7F3EA9063F11M13BACB4A19090F0LLOGMd, &_ss22KeyedEncodingContainerVy14XPCDistributed9XPCSystemC7SessionC18RemoteNotificationO29InvocationCancelledCodingKeys018_6652F7F3EA9063F11M13BACB4A19090F0LLOGMR);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v12 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14XPCDistributed9XPCSystemC7SessionC18RemoteNotificationO10CodingKeys018_6652F7F3EA9063F11K13BACB4A19090F0LLOGMd, &_ss22KeyedEncodingContainerVy14XPCDistributed9XPCSystemC7SessionC18RemoteNotificationO10CodingKeys018_6652F7F3EA9063F11K13BACB4A19090F0LLOGMR);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v12 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type XPCSystem.Session.RemoteNotification.CodingKeys and conformance XPCSystem.Session.RemoteNotification.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  lazy protocol witness table accessor for type XPCSystem.Session.RemoteNotification.InvocationCancelledCodingKeys and conformance XPCSystem.Session.RemoteNotification.InvocationCancelledCodingKeys();
  KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  v12[3] = v12[0];
  lazy protocol witness table accessor for type ID64 and conformance ID64();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  (*(v4 + 8))(v6, v3);
  return (*(v8 + 8))(v10, v7);
}

unint64_t lazy protocol witness table accessor for type XPCSystem.Session.RemoteNotification.CodingKeys and conformance XPCSystem.Session.RemoteNotification.CodingKeys()
{
  result = lazy protocol witness table cache variable for type XPCSystem.Session.RemoteNotification.CodingKeys and conformance XPCSystem.Session.RemoteNotification.CodingKeys;
  if (!lazy protocol witness table cache variable for type XPCSystem.Session.RemoteNotification.CodingKeys and conformance XPCSystem.Session.RemoteNotification.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for XPCSystem.Session.RemoteNotification.CodingKeys, &unk_2883F4768, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type XPCSystem.Session.RemoteNotification.CodingKeys and conformance XPCSystem.Session.RemoteNotification.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type XPCSystem.Session.RemoteNotification.CodingKeys and conformance XPCSystem.Session.RemoteNotification.CodingKeys;
  if (!lazy protocol witness table cache variable for type XPCSystem.Session.RemoteNotification.CodingKeys and conformance XPCSystem.Session.RemoteNotification.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for XPCSystem.Session.RemoteNotification.CodingKeys, &unk_2883F4768, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type XPCSystem.Session.RemoteNotification.CodingKeys and conformance XPCSystem.Session.RemoteNotification.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type XPCSystem.Session.RemoteNotification.CodingKeys and conformance XPCSystem.Session.RemoteNotification.CodingKeys;
  if (!lazy protocol witness table cache variable for type XPCSystem.Session.RemoteNotification.CodingKeys and conformance XPCSystem.Session.RemoteNotification.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for XPCSystem.Session.RemoteNotification.CodingKeys, &unk_2883F4768, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type XPCSystem.Session.RemoteNotification.CodingKeys and conformance XPCSystem.Session.RemoteNotification.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type XPCSystem.Session.RemoteNotification.CodingKeys and conformance XPCSystem.Session.RemoteNotification.CodingKeys;
  if (!lazy protocol witness table cache variable for type XPCSystem.Session.RemoteNotification.CodingKeys and conformance XPCSystem.Session.RemoteNotification.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for XPCSystem.Session.RemoteNotification.CodingKeys, &unk_2883F4768, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type XPCSystem.Session.RemoteNotification.CodingKeys and conformance XPCSystem.Session.RemoteNotification.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type XPCSystem.Session.RemoteNotification.InvocationCancelledCodingKeys and conformance XPCSystem.Session.RemoteNotification.InvocationCancelledCodingKeys()
{
  result = lazy protocol witness table cache variable for type XPCSystem.Session.RemoteNotification.InvocationCancelledCodingKeys and conformance XPCSystem.Session.RemoteNotification.InvocationCancelledCodingKeys;
  if (!lazy protocol witness table cache variable for type XPCSystem.Session.RemoteNotification.InvocationCancelledCodingKeys and conformance XPCSystem.Session.RemoteNotification.InvocationCancelledCodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for XPCSystem.Session.RemoteNotification.InvocationCancelledCodingKeys, &unk_2883F47F8, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type XPCSystem.Session.RemoteNotification.InvocationCancelledCodingKeys and conformance XPCSystem.Session.RemoteNotification.InvocationCancelledCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type XPCSystem.Session.RemoteNotification.InvocationCancelledCodingKeys and conformance XPCSystem.Session.RemoteNotification.InvocationCancelledCodingKeys;
  if (!lazy protocol witness table cache variable for type XPCSystem.Session.RemoteNotification.InvocationCancelledCodingKeys and conformance XPCSystem.Session.RemoteNotification.InvocationCancelledCodingKeys)
  {
    result = swift_getWitnessTable("EL\b\r<n", &unk_2883F47F8, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type XPCSystem.Session.RemoteNotification.InvocationCancelledCodingKeys and conformance XPCSystem.Session.RemoteNotification.InvocationCancelledCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type XPCSystem.Session.RemoteNotification.InvocationCancelledCodingKeys and conformance XPCSystem.Session.RemoteNotification.InvocationCancelledCodingKeys;
  if (!lazy protocol witness table cache variable for type XPCSystem.Session.RemoteNotification.InvocationCancelledCodingKeys and conformance XPCSystem.Session.RemoteNotification.InvocationCancelledCodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for XPCSystem.Session.RemoteNotification.InvocationCancelledCodingKeys, &unk_2883F47F8, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type XPCSystem.Session.RemoteNotification.InvocationCancelledCodingKeys and conformance XPCSystem.Session.RemoteNotification.InvocationCancelledCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type XPCSystem.Session.RemoteNotification.InvocationCancelledCodingKeys and conformance XPCSystem.Session.RemoteNotification.InvocationCancelledCodingKeys;
  if (!lazy protocol witness table cache variable for type XPCSystem.Session.RemoteNotification.InvocationCancelledCodingKeys and conformance XPCSystem.Session.RemoteNotification.InvocationCancelledCodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for XPCSystem.Session.RemoteNotification.InvocationCancelledCodingKeys, &unk_2883F47F8, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type XPCSystem.Session.RemoteNotification.InvocationCancelledCodingKeys and conformance XPCSystem.Session.RemoteNotification.InvocationCancelledCodingKeys);
  }

  return result;
}

void *protocol witness for Decodable.init(from:) in conformance XPCSystem.Session.RemoteNotification@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = specialized XPCSystem.Session.RemoteNotification.init(from:)(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t specialized XPCSystem.Session.RemoteInvocationRequest.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x80000002751B8CC0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x80000002751B8CE0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x73746E65746E6F63 && a2 == 0xE800000000000000)
  {

    return 3;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

void *specialized XPCSystem.Session.RemoteNotification.init(from:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy14XPCDistributed9XPCSystemC7SessionC18RemoteNotificationO29InvocationCancelledCodingKeys018_6652F7F3EA9063F11M13BACB4A19090F0LLOGMd, &_ss22KeyedDecodingContainerVy14XPCDistributed9XPCSystemC7SessionC18RemoteNotificationO29InvocationCancelledCodingKeys018_6652F7F3EA9063F11M13BACB4A19090F0LLOGMR);
  v23 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v20 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy14XPCDistributed9XPCSystemC7SessionC18RemoteNotificationO10CodingKeys018_6652F7F3EA9063F11K13BACB4A19090F0LLOGMd, &_ss22KeyedDecodingContainerVy14XPCDistributed9XPCSystemC7SessionC18RemoteNotificationO10CodingKeys018_6652F7F3EA9063F11K13BACB4A19090F0LLOGMR);
  v22 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v20 - v7;
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type XPCSystem.Session.RemoteNotification.CodingKeys and conformance XPCSystem.Session.RemoteNotification.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    goto LABEL_6;
  }

  v21 = a1;
  v11 = v22;
  v10 = v23;
  v12 = KeyedDecodingContainer.allKeys.getter();
  v13 = (2 * *(v12 + 16)) | 1;
  v24 = v12;
  v25 = v12 + 32;
  v26 = 0;
  v27 = v13;
  v14 = v8;
  if (specialized Collection<>.popFirst()() || v26 != v27 >> 1)
  {
    v15 = v6;
    v16 = type metadata accessor for DecodingError();
    swift_allocError();
    v18 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR);
    *v18 = &type metadata for XPCSystem.Session.RemoteNotification;
    v9 = v14;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v16 - 8) + 104))(v18, *MEMORY[0x277D84160], v16);
    swift_willThrow();
    (*(v11 + 8))(v14, v15);
    swift_unknownObjectRelease();
    a1 = v21;
LABEL_6:
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    return v9;
  }

  lazy protocol witness table accessor for type XPCSystem.Session.RemoteNotification.InvocationCancelledCodingKeys and conformance XPCSystem.Session.RemoteNotification.InvocationCancelledCodingKeys();
  KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  lazy protocol witness table accessor for type ID64 and conformance ID64();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v10 + 8))(v5, v3);
  (*(v11 + 8))(v8, v6);
  swift_unknownObjectRelease();
  v9 = v28;
  __swift_destroy_boxed_opaque_existential_1Tm(v21);
  return v9;
}

__n128 __swift_memcpy137_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 121) = *(a2 + 121);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for XPCSystem.Session.RemoteInvocationRequest(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 137))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for XPCSystem.Session.RemoteInvocationRequest(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 136) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 137) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 137) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t type metadata completion function for XPCSystem.Session.RemoteInvocationResponse(void *a1)
{
  v1 = a1[2];
  v2 = type metadata accessor for XPCSystem.Session.RemoteInvocationResponse.RemoteInvocationFailure(255, v1, a1[3], a1[4]);
  result = type metadata accessor for Either(319, v1, v2, v3);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for XPCSystem.Session.RemoteInvocationResponse(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = 17;
  if (*(v3 + 64) > 0x11uLL)
  {
    v4 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_25;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 254) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 < 2)
    {
LABEL_25:
      v11 = *(a1 + v4);
      if (v11 >= 2)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_25;
  }

LABEL_14:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    if (v5 > 2)
    {
      if (v5 == 3)
      {
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v5) = *a1;
      }
    }

    else if (v5 == 1)
    {
      LODWORD(v5) = *a1;
    }

    else
    {
      LODWORD(v5) = *a1;
    }
  }

  return (v5 | v10) + 255;
}

void storeEnumTagSinglePayload for XPCSystem.Session.RemoteInvocationResponse(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 0x11)
  {
    v5 = 17;
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

uint64_t type metadata instantiation function for XPCSystem.Session.RemoteInvocationResponse.RemoteInvocationFailure(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for XPCSystem.Session.RemoteInvocationResponse.RemoteInvocationFailure(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
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

uint64_t storeEnumTagSinglePayload for XPCSystem.Session.RemoteInvocationResponse.RemoteInvocationFailure(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

uint64_t getEnumTagSinglePayload for XPCSystem.Session.RemoteInvocationRequest.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for XPCSystem.Session.RemoteInvocationRequest.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 __swift_memcpy89_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 73) = *(a2 + 73);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for XPCSystem.Session.RemoteInvocationRequest.InvocationContents(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 89))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 88);
  if (v3 >= 2)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for XPCSystem.Session.RemoteInvocationRequest.InvocationContents(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 73) = 0u;
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 89) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 89) = 0;
    }

    if (a2)
    {
      *(result + 88) = -a2;
    }
  }

  return result;
}

uint64_t destructiveInjectEnumTag for XPCSystem.Session.RemoteInvocationRequest.InvocationContents(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    v2 = a2 - 2;
    *(result + 80) = 0;
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    LOBYTE(a2) = 2;
    *result = v2;
  }

  *(result + 88) = a2;
  return result;
}

uint64_t outlined init with copy of Decoder(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t getEnumTagSinglePayload for XPCSystem.Session.RemoteInvocationResponse.RemoteInvocationFailure.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for XPCSystem.Session.RemoteInvocationResponse.RemoteInvocationFailure.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t UnownedAwaitableEvent.init()(uint64_t a1)
{
  v2 = swift_allocObject();
  type metadata accessor for Future();
  *(v2 + 24) = 0;
  *(v2 + 16) = 0;
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;

  v4 = Future.__allocating_init(_:)();
  result = swift_beginAccess();
  if (*(v2 + 16))
  {

    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t OwnedAwaitableEvent.wait()()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = OwnedAwaitableEvent.wait();

  return MEMORY[0x28210E9A8](v1);
}

{

  return MEMORY[0x2822009F8](closure #1 in XPCSystem.Session.LocalInterface.activateThenWaitForCancellation(), 0, 0);
}

uint64_t UnownedAwaitableEvent.wait()(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = partial apply for implicit closure #1 in XPCSystem.Session.LocalInterface.activateThenWithRemoteInterface<A>(perform:);

  return MEMORY[0x28210E9A8](a1);
}

uint64_t UnownedAwaitableEvent.post(value:)(uint64_t a1, uint64_t a2, void (*a3)(char *), uint64_t a4, uint64_t a5)
{
  v8 = type metadata accessor for Result();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v14 - v11;
  (*(*(a5 - 8) + 16))(&v14 - v11, a1, a5, v10);
  swift_storeEnumTagMultiPayload();
  a3(v12);
  return (*(v9 + 8))(v12, v8);
}

uint64_t closure #1 in UnownedAwaitableEvent.init()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v6 = *(a3 + 16);
  v7 = *(a3 + 24);
  *(a3 + 16) = a1;
  *(a3 + 24) = a2;
  outlined consume of (@escaping @callee_guaranteed @Sendable () -> ())?(v6, v7);
}

uint64_t type metadata instantiation function for UnownedAwaitableEvent(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for UnownedAwaitableEvent(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t storeEnumTagSinglePayload for UnownedAwaitableEvent(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t type metadata instantiation function for OwnedAwaitableEvent(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for OwnedAwaitableEvent(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t storeEnumTagSinglePayload for OwnedAwaitableEvent(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

void *XPCSystem.InvocationEncoder.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14XPCDistributed9XPCSystemC20InvocationCodingKeys33_D025C974E591FC5F9CCF5C171ECD5CA5LLOGMd, &_ss22KeyedEncodingContainerVy14XPCDistributed9XPCSystemC20InvocationCodingKeys33_D025C974E591FC5F9CCF5C171ECD5CA5LLOGMR);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = *v1;
  v6 = v1[1];
  v8 = v1[2];
  v27 = v1[3];
  v28 = v8;
  v9 = v1[4];
  v29 = v1[5];
  v30 = v6;
  v10 = a1[3];
  v11 = a1;
  v13 = &v23 - v12;
  __swift_project_boxed_opaque_existential_1(v11, v10);
  lazy protocol witness table accessor for type XPCSystem.InvocationCodingKeys and conformance XPCSystem.InvocationCodingKeys();

  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v35[0] = v7;
  LOBYTE(v31) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay14XPCDistributed9SwiftTypeVGMd, &_sSay14XPCDistributed9SwiftTypeVGMR);
  lazy protocol witness table accessor for type [SwiftType] and conformance <A> [A](&lazy protocol witness table cache variable for type [SwiftType] and conformance <A> [A], lazy protocol witness table accessor for type SwiftType and conformance SwiftType, MEMORY[0x277D83948]);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v2)
  {

    return (*(v5 + 8))(v13, v4);
  }

  else
  {
    v24 = v5;

    LOBYTE(v31) = 1;
    v25 = v4;
    v23 = v13;
    result = KeyedEncodingContainer.nestedUnkeyedContainer(forKey:)();
    v15 = v30;
    v26 = *(v30 + 16);
    if (v26)
    {
      v16 = 0;
      v17 = v30 + 32;
      while (v16 < *(v15 + 16))
      {
        outlined init with copy of Decoder(v17, &v31);
        v30 = v34;
        __swift_project_boxed_opaque_existential_1(&v31, v33);
        __swift_mutable_project_boxed_opaque_existential_1(v35, v35[3]);
        dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
        ++v16;
        result = __swift_destroy_boxed_opaque_existential_1Tm(&v31);
        v17 += 40;
        v18 = v27;
        v19 = v28;
        v20 = v29;
        if (v26 == v16)
        {
          goto LABEL_9;
        }
      }

      __break(1u);
    }

    else
    {
      v19 = v28;
      v20 = v29;
      v18 = v27;
LABEL_9:
      v31 = v19;
      v32 = v18;
      v36 = 2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s14XPCDistributed9SwiftTypeVSgMd, &_s14XPCDistributed9SwiftTypeVSgMR);
      lazy protocol witness table accessor for type SwiftType? and conformance <A> A?(&lazy protocol witness table cache variable for type SwiftType? and conformance <A> A?, lazy protocol witness table accessor for type SwiftType and conformance SwiftType, MEMORY[0x277D84F40]);
      v21 = v25;
      v22 = v23;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v31 = v9;
      v32 = v20;
      v36 = 3;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v24 + 8))(v22, v21);
      return __swift_destroy_boxed_opaque_existential_1Tm(v35);
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type XPCSystem.InvocationCodingKeys and conformance XPCSystem.InvocationCodingKeys()
{
  result = lazy protocol witness table cache variable for type XPCSystem.InvocationCodingKeys and conformance XPCSystem.InvocationCodingKeys;
  if (!lazy protocol witness table cache variable for type XPCSystem.InvocationCodingKeys and conformance XPCSystem.InvocationCodingKeys)
  {
    result = swift_getWitnessTable("\tX\b\rdg", &unk_2883F4DE8, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type XPCSystem.InvocationCodingKeys and conformance XPCSystem.InvocationCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type XPCSystem.InvocationCodingKeys and conformance XPCSystem.InvocationCodingKeys;
  if (!lazy protocol witness table cache variable for type XPCSystem.InvocationCodingKeys and conformance XPCSystem.InvocationCodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for XPCSystem.InvocationCodingKeys, &unk_2883F4DE8, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type XPCSystem.InvocationCodingKeys and conformance XPCSystem.InvocationCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type XPCSystem.InvocationCodingKeys and conformance XPCSystem.InvocationCodingKeys;
  if (!lazy protocol witness table cache variable for type XPCSystem.InvocationCodingKeys and conformance XPCSystem.InvocationCodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for XPCSystem.InvocationCodingKeys, &unk_2883F4DE8, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type XPCSystem.InvocationCodingKeys and conformance XPCSystem.InvocationCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type XPCSystem.InvocationCodingKeys and conformance XPCSystem.InvocationCodingKeys;
  if (!lazy protocol witness table cache variable for type XPCSystem.InvocationCodingKeys and conformance XPCSystem.InvocationCodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for XPCSystem.InvocationCodingKeys, &unk_2883F4DE8, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type XPCSystem.InvocationCodingKeys and conformance XPCSystem.InvocationCodingKeys);
  }

  return result;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

uint64_t lazy protocol witness table accessor for type SwiftType? and conformance <A> A?(unint64_t *a1, uint64_t (*a2)(void), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s14XPCDistributed9SwiftTypeVSgMd, &_s14XPCDistributed9SwiftTypeVSgMR);
    v8 = a2();
    result = swift_getWitnessTable(a3, v7, &v8);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t XPCSystem.InvocationDecoder.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy14XPCDistributed9XPCSystemC20InvocationCodingKeys33_D025C974E591FC5F9CCF5C171ECD5CA5LLOGMd, &_ss22KeyedDecodingContainerVy14XPCDistributed9XPCSystemC20InvocationCodingKeys33_D025C974E591FC5F9CCF5C171ECD5CA5LLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v10 - v7;
  outlined init with copy of Decoder(a1, v11);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type XPCSystem.InvocationCodingKeys and conformance XPCSystem.InvocationCodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    return __swift_destroy_boxed_opaque_existential_1Tm(v11);
  }

  else
  {
    v13 = 1;
    KeyedDecodingContainer.nestedUnkeyedContainer(forKey:)();
    (*(v6 + 8))(v8, v5);
    outlined init with take of XPCSystem.ResultHandler.ReplyHandler(v10, v12);
    v12[5] = specialized static XPCSystem.InvocationDecoder._decodeErrorType(from:)(a1);
    outlined init with copy of XPCSystem.InvocationDecoder(v11, a2);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    return outlined destroy of XPCSystem.InvocationDecoder(v11);
  }
}

double XPCSystem.InvocationEncoder.init()@<D0>(uint64_t a1@<X8>)
{
  v1 = MEMORY[0x277D84F90];
  *a1 = MEMORY[0x277D84F90];
  *(a1 + 8) = v1;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  return result;
}

uint64_t XPCSystem.InvocationEncoder.recordGenericSubstitution<A>(_:)(uint64_t a1, uint64_t a2)
{
  if (!swift_conformsToProtocol2() || !a1)
  {
    _StringGuts.grow(_:)(48);

    v13 = 0x80000002751B8DE0;
    v14 = 0xD00000000000002ELL;
LABEL_11:
    v16 = v14;
    v17 = v13;
    v15 = _typeName(_:qualified:)();
    MEMORY[0x277C6B720](v15);

    type metadata accessor for DistributedActorCodingError();
    lazy protocol witness table accessor for type DistributedActorCodingError and conformance DistributedActorCodingError();
    swift_allocError();
    MEMORY[0x277C6B2B0](v16, v17);
    return swift_willThrow();
  }

  v4 = SwiftType.init<A>(_:)();
  if (!v5)
  {
    _StringGuts.grow(_:)(43);

    v13 = 0x80000002751B8E10;
    v14 = 0xD000000000000029;
    goto LABEL_11;
  }

  v6 = v4;
  v7 = v5;
  v8 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 16) + 1, 1, v8);
    v8 = result;
  }

  v11 = *(v8 + 16);
  v10 = *(v8 + 24);
  if (v11 >= v10 >> 1)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1, v8);
    v8 = result;
  }

  *(v8 + 16) = v11 + 1;
  v12 = v8 + 16 * v11;
  *(v12 + 32) = v6;
  *(v12 + 40) = v7;
  *v2 = v8;
  return result;
}

uint64_t XPCSystem.InvocationEncoder.recordArgument<A>(_:)(uint64_t a1, uint64_t a2)
{
  swift_conformsToProtocol();
  v4 = swift_conformsToProtocol();
  v5 = *(a2 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = v17 - v9;
  type metadata accessor for RemoteCallArgument();
  RemoteCallArgument.value.getter();
  v12 = (v2 + 8);
  v11 = *(v2 + 8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v12 = v11;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v11[2] + 1, 1, v11);
    *v12 = v11;
  }

  v15 = v11[2];
  v14 = v11[3];
  if (v15 >= v14 >> 1)
  {
    v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1, v11);
    *v12 = v11;
  }

  (*(v5 + 16))(v7, v10, a2);
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)(v15, v7, v12, a2, v4);
  result = (*(v5 + 8))(v10, a2);
  *v12 = v11;
  return result;
}

uint64_t XPCSystem.InvocationEncoder.recordErrorType<A>(_:)(uint64_t a1, uint64_t a2)
{
  v3 = SwiftType.init<A>(_:)();
  if (v4)
  {
    v5 = v3;
    v6 = v4;

    *(v2 + 16) = v5;
    *(v2 + 24) = v6;
  }

  else
  {
    _StringGuts.grow(_:)(30);

    v8 = _typeName(_:qualified:)();
    MEMORY[0x277C6B720](v8);

    type metadata accessor for DistributedActorCodingError();
    lazy protocol witness table accessor for type DistributedActorCodingError and conformance DistributedActorCodingError();
    swift_allocError();
    MEMORY[0x277C6B2B0](0xD00000000000001CLL, 0x80000002751B8E40);
    return swift_willThrow();
  }

  return result;
}

uint64_t XPCSystem.InvocationEncoder.recordReturnType<A>(_:)(uint64_t a1, uint64_t a2)
{
  swift_conformsToProtocol();
  swift_conformsToProtocol();
  v3 = SwiftType.init<A>(_:)();
  if (v4)
  {
    v5 = v3;
    v6 = v4;

    *(v2 + 32) = v5;
    *(v2 + 40) = v6;
  }

  else
  {
    _StringGuts.grow(_:)(31);

    v8 = _typeName(_:qualified:)();
    MEMORY[0x277C6B720](v8);

    type metadata accessor for DistributedActorCodingError();
    lazy protocol witness table accessor for type DistributedActorCodingError and conformance DistributedActorCodingError();
    swift_allocError();
    MEMORY[0x277C6B2B0](0xD00000000000001DLL, 0x80000002751B8E60);
    return swift_willThrow();
  }

  return result;
}

uint64_t protocol witness for DistributedTargetInvocationEncoder.recordArgument<A>(_:) in conformance XPCSystem.InvocationEncoder(uint64_t a1, uint64_t a2)
{
  swift_conformsToProtocol();
  swift_conformsToProtocol();
  return XPCSystem.InvocationEncoder.recordArgument<A>(_:)(a1, a2);
}

uint64_t protocol witness for DistributedTargetInvocationEncoder.recordReturnType<A>(_:) in conformance XPCSystem.InvocationEncoder(uint64_t a1, uint64_t a2)
{
  swift_conformsToProtocol();
  swift_conformsToProtocol();
  return XPCSystem.InvocationEncoder.recordReturnType<A>(_:)(a1, a2);
}

void *XPCSystem.InvocationDecoder.decodeGenericSubstitutions()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy14XPCDistributed9XPCSystemC20InvocationCodingKeys33_D025C974E591FC5F9CCF5C171ECD5CA5LLOGMd, &_ss22KeyedDecodingContainerVy14XPCDistributed9XPCSystemC20InvocationCodingKeys33_D025C974E591FC5F9CCF5C171ECD5CA5LLOGMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - v4;
  v6 = __swift_project_boxed_opaque_existential_1(v0, v0[3]);
  lazy protocol witness table accessor for type XPCSystem.InvocationCodingKeys and conformance XPCSystem.InvocationCodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    return v6;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay14XPCDistributed9SwiftTypeVGMd, &_sSay14XPCDistributed9SwiftTypeVGMR);
  v19 = 0;
  lazy protocol witness table accessor for type [SwiftType] and conformance <A> [A](&lazy protocol witness table cache variable for type [SwiftType] and conformance <A> [A], lazy protocol witness table accessor for type SwiftType and conformance SwiftType, MEMORY[0x277D83978]);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v18 = 0;
  v7 = v20;
  v8 = v20[2];
  if (!v8)
  {

    (*(v3 + 8))(v5, v2);
    return MEMORY[0x277D84F90];
  }

  v16 = v3;
  v17 = v2;
  v20 = MEMORY[0x277D84F90];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v8, 0);
  v10 = 0;
  v6 = v20;
  v11 = v7 + 5;
  while (v10 < v7[2])
  {

    v12 = _typeByName(_:)();
    if (!v12 || (v13 = v12, !swift_conformsToProtocol2()))
    {

      type metadata accessor for DistributedActorCodingError();
      lazy protocol witness table accessor for type DistributedActorCodingError and conformance DistributedActorCodingError();
      swift_allocError();
      MEMORY[0x277C6B2B0](0xD000000000000026, 0x80000002751B8E80);
      swift_willThrow();

      (*(v16 + 8))(v5, v17);

      return v6;
    }

    v20 = v6;
    v15 = v6[2];
    v14 = v6[3];
    if (v15 >= v14 >> 1)
    {
      result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1);
      v6 = v20;
    }

    ++v10;
    v6[2] = v15 + 1;
    v6[v15 + 4] = v13;
    v11 += 2;
    if (v8 == v10)
    {
      (*(v16 + 8))(v5, v17);

      return v6;
    }
  }

  __break(1u);
  return result;
}

uint64_t XPCSystem.InvocationDecoder.decodeNextArgument<A>()(uint64_t a1)
{
  swift_conformsToProtocol();
  swift_conformsToProtocol();
  __swift_mutable_project_boxed_opaque_existential_1(v1 + 40, *(v1 + 64));
  return dispatch thunk of UnkeyedDecodingContainer.decode<A>(_:)();
}

void *XPCSystem.InvocationDecoder.decodeReturnType()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy14XPCDistributed9XPCSystemC20InvocationCodingKeys33_D025C974E591FC5F9CCF5C171ECD5CA5LLOGMd, &_ss22KeyedDecodingContainerVy14XPCDistributed9XPCSystemC20InvocationCodingKeys33_D025C974E591FC5F9CCF5C171ECD5CA5LLOGMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v8 - v4;
  v6 = __swift_project_boxed_opaque_existential_1(v0, v0[3]);
  lazy protocol witness table accessor for type XPCSystem.InvocationCodingKeys and conformance XPCSystem.InvocationCodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s14XPCDistributed9SwiftTypeVSgMd, &_s14XPCDistributed9SwiftTypeVSgMR);
    v9 = 3;
    lazy protocol witness table accessor for type SwiftType? and conformance <A> A?(&lazy protocol witness table cache variable for type SwiftType? and conformance <A> A?, lazy protocol witness table accessor for type SwiftType and conformance SwiftType, MEMORY[0x277D84F58]);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    if (v8[1])
    {
      v6 = _typeByName(_:)();

      if (!v6)
      {
        type metadata accessor for DistributedActorCodingError();
        lazy protocol witness table accessor for type DistributedActorCodingError and conformance DistributedActorCodingError();
        v6 = swift_allocError();
        MEMORY[0x277C6B2B0](0xD00000000000001BLL, 0x80000002751B8EB0);
        swift_willThrow();
      }

      (*(v3 + 8))(v5, v2);
    }

    else
    {
      (*(v3 + 8))(v5, v2);
      return 0;
    }
  }

  return v6;
}

uint64_t protocol witness for DistributedTargetInvocationDecoder.decodeNextArgument<A>() in conformance XPCSystem.InvocationDecoder(uint64_t a1)
{
  swift_conformsToProtocol();
  swift_conformsToProtocol();
  return XPCSystem.InvocationDecoder.decodeNextArgument<A>()(a1);
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance XPCSystem.InvocationCodingKeys()
{
  v1 = 0x746E656D75677261;
  v2 = 0x707954726F727265;
  if (*v0 != 2)
  {
    v2 = 0x79546E7275746572;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000013;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance XPCSystem.InvocationCodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized XPCSystem.InvocationCodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance XPCSystem.InvocationCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type XPCSystem.InvocationCodingKeys and conformance XPCSystem.InvocationCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance XPCSystem.InvocationCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type XPCSystem.InvocationCodingKeys and conformance XPCSystem.InvocationCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

void *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySE_pGMd, &_ss23_ContiguousArrayStorageCySE_pGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSE_pMd, &_sSE_pMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyScTy14XPCDistributed9XPCSystemC7SessionC14LocalInterfaceV15ActivationTokenVs5NeverOGGMd, &_ss23_ContiguousArrayStorageCyScTy14XPCDistributed9XPCSystemC7SessionC14LocalInterfaceV15ActivationTokenVs5NeverOGGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScTy14XPCDistributed9XPCSystemC7SessionC14LocalInterfaceV15ActivationTokenVs5NeverOGMd, &_sScTy14XPCDistributed9XPCSystemC7SessionC14LocalInterfaceV15ActivationTokenVs5NeverOGMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(char *a1, uint64_t a2, uint64_t a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypXpGMd, &_ss23_ContiguousArrayStorageCyypXpGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

uint64_t specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v12);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return outlined init with take of XPCSystem.ResultHandler.ReplyHandler(&v12, v10 + 40 * a1 + 32);
}

void *specialized static XPCSystem.InvocationDecoder._decodeErrorType(from:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy14XPCDistributed9XPCSystemC20InvocationCodingKeys33_D025C974E591FC5F9CCF5C171ECD5CA5LLOGMd, &_ss22KeyedDecodingContainerVy14XPCDistributed9XPCSystemC20InvocationCodingKeys33_D025C974E591FC5F9CCF5C171ECD5CA5LLOGMR);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v9 - v5;
  v7 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type XPCSystem.InvocationCodingKeys and conformance XPCSystem.InvocationCodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s14XPCDistributed9SwiftTypeVSgMd, &_s14XPCDistributed9SwiftTypeVSgMR);
    v10 = 2;
    lazy protocol witness table accessor for type SwiftType? and conformance <A> A?(&lazy protocol witness table cache variable for type SwiftType? and conformance <A> A?, lazy protocol witness table accessor for type SwiftType and conformance SwiftType, MEMORY[0x277D84F58]);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    if (v9[1])
    {
      v7 = _typeByName(_:)();

      if (!v7)
      {
        type metadata accessor for DistributedActorCodingError();
        lazy protocol witness table accessor for type DistributedActorCodingError and conformance DistributedActorCodingError();
        v7 = swift_allocError();
        MEMORY[0x277C6B2B0](0xD00000000000001BLL, 0x80000002751B8EB0);
        swift_willThrow();
      }

      (*(v4 + 8))(v6, v3);
    }

    else
    {
      (*(v4 + 8))(v6, v3);
      return 0;
    }
  }

  return v7;
}

unint64_t lazy protocol witness table accessor for type DistributedActorCodingError and conformance DistributedActorCodingError()
{
  result = lazy protocol witness table cache variable for type DistributedActorCodingError and conformance DistributedActorCodingError;
  if (!lazy protocol witness table cache variable for type DistributedActorCodingError and conformance DistributedActorCodingError)
  {
    v3 = type metadata accessor for DistributedActorCodingError();
    result = swift_getWitnessTable(MEMORY[0x277D85330], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type DistributedActorCodingError and conformance DistributedActorCodingError);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [SwiftType] and conformance <A> [A](unint64_t *a1, uint64_t (*a2)(void), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay14XPCDistributed9SwiftTypeVGMd, &_sSay14XPCDistributed9SwiftTypeVGMR);
    v8 = a2();
    result = swift_getWitnessTable(a3, v7, &v8);
    atomic_store(result, a1);
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

uint64_t getEnumTagSinglePayload for XPCSystem.InvocationEncoder(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t storeEnumTagSinglePayload for XPCSystem.InvocationEncoder(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

__n128 __swift_memcpy88_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for XPCSystem.InvocationDecoder(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t storeEnumTagSinglePayload for XPCSystem.InvocationDecoder(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t specialized XPCSystem.InvocationCodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000013 && 0x80000002751B8ED0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746E656D75677261 && a2 == 0xE900000000000073 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x707954726F727265 && a2 == 0xE900000000000065 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x79546E7275746572 && a2 == 0xEA00000000006570)
  {

    return 3;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v5)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t XPCSystem.Transport.setInboundSession(_:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();

  return specialized XPCSystem.Transport.setInboundSession(_:)(a1, v2, ObjectType, a2);
}

uint64_t _s14XPCDistributed9XPCSystemC9TransportC8activateyyAC10SetupErrorVYKF(void *a1)
{
  v4 = v1[11];
  v5 = v1[12];
  __swift_project_boxed_opaque_existential_1(v1 + 8, v4);
  result = (*(v5 + 8))(v1, v8, v4, v5);
  if (v2)
  {
    v7 = v8[1];
    *a1 = v8[0];
    a1[1] = v7;
  }

  return result;
}

double XPCSystem.Transport.auditToken.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = v1[11];
  v4 = v1[12];
  __swift_project_boxed_opaque_existential_1(v1 + 8, v3);
  (*(v4 + 32))(v7, v3, v4);
  result = *v7;
  v6 = v7[1];
  *a1 = v7[0];
  *(a1 + 16) = v6;
  *(a1 + 32) = v8;
  return result;
}

Swift::Bool __swiftcall XPCSystem.Transport.cancel()()
{
  v1 = 0;
  atomic_compare_exchange_strong_explicit((v0 + 32), &v1, 1u, memory_order_relaxed, memory_order_relaxed);
  v2 = v1 == 0;
  if (!v1)
  {
    v3 = *(v0 + 88);
    v4 = *(v0 + 96);
    __swift_project_boxed_opaque_existential_1((v0 + 64), v3);
    (*(v4 + 24))(v3, v4);
  }

  return v2;
}

uint64_t XPCSystem.Transport.debugName.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t XPCSystem.Transport.__allocating_init(debugName:rawTransport:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 24);
  v8 = *(a3 + 32);
  v9 = __swift_mutable_project_boxed_opaque_existential_1(a3, v7);
  v10 = specialized XPCSystem.Transport.__allocating_init(debugName:rawTransport:)(a1, a2, v9, v3, v7, v8);
  __swift_destroy_boxed_opaque_existential_1Tm(a3);
  return v10;
}

uint64_t XPCSystem.Transport.init(debugName:rawTransport:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 24);
  v8 = *(a3 + 32);
  v9 = __swift_mutable_project_boxed_opaque_existential_1(a3, v7);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v12, v10);
  v14 = specialized XPCSystem.Transport.init(debugName:rawTransport:)(a1, a2, v12, v3, v7, v8);
  __swift_destroy_boxed_opaque_existential_1Tm(a3);
  return v14;
}

void XPCSystem.Transport.handleReceivedPacket(_:)(uint64_t *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy14XPCDistributed9XPCSystemC9TransportC6PacketV7PayloadVAG0D5ErrorOGMd, &_ss6ResultOy14XPCDistributed9XPCSystemC9TransportC6PacketV7PayloadVAG0D5ErrorOGMR);
  MEMORY[0x28223BE20](v4);
  v6 = &v27 - v5;
  v7 = type metadata accessor for DispatchPredicate();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = (&v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (swift_unknownObjectWeakLoadStrong())
  {
    v11 = v2[3];
    v12 = v2[7];
    *v10 = v12;
    (*(v8 + 104))(v10, *MEMORY[0x277D85200], v7);
    v13 = v12;
    LOBYTE(v12) = _dispatchPreconditionTest(_:)();
    (*(v8 + 8))(v10, v7);
    if (v12)
    {
      v14 = *a1;
      if (*(a1 + 8))
      {
        if (*(a1 + 8) == 1)
        {
          v15 = type metadata accessor for XPCSystem.Transport.Packet(0);
          outlined init with copy of XPCSystem.Transport.Packet.Payload(a1 + *(v15 + 20), v6);
          swift_storeEnumTagMultiPayload();
          specialized RequestManager.reply(to:with:)(v14, v6);
          swift_unknownObjectRelease();
          outlined destroy of Result<XPCSystem.Transport.Packet.Payload, XPCSystem.Transport.TransportError>(v6, &_ss6ResultOy14XPCDistributed9XPCSystemC9TransportC6PacketV7PayloadVAG0D5ErrorOGMd, &_ss6ResultOy14XPCDistributed9XPCSystemC9TransportC6PacketV7PayloadVAG0D5ErrorOGMR);
        }

        else
        {
          ObjectType = swift_getObjectType();
          v25 = type metadata accessor for XPCSystem.Transport.Packet(0);
          (*(v11 + 24))(a1 + *(v25 + 20), ObjectType, v11);
          swift_unknownObjectRelease();
        }
      }

      else
      {
        v20 = swift_getObjectType();
        v21 = *(type metadata accessor for XPCSystem.Transport.Packet(0) + 20);
        v22 = swift_allocObject();
        *(v22 + 16) = v14;
        *(v22 + 24) = v2;
        v23 = *(v11 + 16);

        v23(a1 + v21, partial apply for closure #1 in XPCSystem.Transport.handleReceivedPacket(_:), v22, v20, v11);
        swift_unknownObjectRelease();
      }

      return;
    }

    __break(1u);
  }

  else if (one-time initialization token for generalLog == -1)
  {
    goto LABEL_7;
  }

  swift_once();
LABEL_7:
  v16 = type metadata accessor for Logger();
  __swift_project_value_buffer(v16, generalLog);

  v27 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v27, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v28 = v19;
    *v18 = 136315138;
    *(v18 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v2[5], v2[6], &v28);
    _os_log_impl(&dword_275171000, v27, v17, "Inbound session is nil when a packet is received on %s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v19);
    MEMORY[0x277C6C430](v19, -1, -1);
    MEMORY[0x277C6C430](v18, -1, -1);
  }

  else
  {
    v26 = v27;
  }
}

uint64_t closure #1 in XPCSystem.Transport.handleReceivedPacket(_:)(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = type metadata accessor for XPCSystem.Transport.Packet(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of XPCSystem.Transport.Packet.Payload(a1, &v8[*(v9 + 28)]);
  *v8 = a2;
  v8[8] = 1;
  v10 = a3[11];
  v11 = a3[12];
  __swift_project_boxed_opaque_existential_1(a3 + 8, v10);
  (*(v11 + 16))(v8, v10, v11);
  return outlined destroy of XPCSystem.Transport.Packet(v8);
}

uint64_t specialized RequestManager.reply(to:with:)(uint64_t a1, uint64_t a2)
{
  v21 = a1;
  v22 = type metadata accessor for DispatchWorkItemFlags();
  v25 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v23 = *(v6 - 8);
  v24 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy14XPCDistributed9XPCSystemC9TransportC6PacketV7PayloadVAG0D5ErrorOGMd, &_ss6ResultOy14XPCDistributed9XPCSystemC9TransportC6PacketV7PayloadVAG0D5ErrorOGMR);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v21 - v11;
  v13 = *(v2 + 16);
  outlined init with copy of XPCPeerRequirement?(a2, &v21 - v11, &_ss6ResultOy14XPCDistributed9XPCSystemC9TransportC6PacketV7PayloadVAG0D5ErrorOGMd, &_ss6ResultOy14XPCDistributed9XPCSystemC9TransportC6PacketV7PayloadVAG0D5ErrorOGMR);
  v14 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v15 = swift_allocObject();
  v16 = v21;
  *(v15 + 16) = v2;
  *(v15 + 24) = v16;
  outlined init with take of Result<XPCSystem.Transport.Packet.Payload, XPCSystem.Transport.TransportError>?(v12, v15 + v14, &_ss6ResultOy14XPCDistributed9XPCSystemC9TransportC6PacketV7PayloadVAG0D5ErrorOGMd, &_ss6ResultOy14XPCDistributed9XPCSystemC9TransportC6PacketV7PayloadVAG0D5ErrorOGMR);
  aBlock[4] = partial apply for specialized closure #1 in RequestManager.reply(to:with:);
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_57;
  v17 = _Block_copy(aBlock);
  v18 = v13;

  static DispatchQoS.unspecified.getter();
  v26 = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  v19 = v22;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x277C6B8E0](0, v8, v5, v17);
  _Block_release(v17);

  (*(v25 + 8))(v5, v19);
  (*(v23 + 8))(v8, v24);
}

Swift::Void __swiftcall XPCSystem.Transport.handleCancellation()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy14XPCDistributed9XPCSystemC9TransportC6PacketV7PayloadVAG0D5ErrorOGMd, &_ss6ResultOy14XPCDistributed9XPCSystemC9TransportC6PacketV7PayloadVAG0D5ErrorOGMR);
  MEMORY[0x28223BE20](v2);
  v4 = (&v12 - v3);
  LOBYTE(v3) = 0;
  atomic_compare_exchange_strong_explicit((v0 + 32), &v3, 1u, memory_order_relaxed, memory_order_relaxed);
  if (!v3)
  {
    if (one-time initialization token for sessionLog != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, sessionLog);

    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v13 = v9;
      *v8 = 136315138;
      *(v8 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v1[5], v1[6], &v13);
      _os_log_impl(&dword_275171000, v6, v7, "%s is cancelled because remote end is gone.", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v9);
      MEMORY[0x277C6C430](v9, -1, -1);
      MEMORY[0x277C6C430](v8, -1, -1);
    }
  }

  *v4 = 0xD000000000000015;
  v4[1] = 0x80000002751B8EF0;
  swift_storeEnumTagMultiPayload();
  specialized RequestManager.replyAll(with:)(v4);
  outlined destroy of Result<XPCSystem.Transport.Packet.Payload, XPCSystem.Transport.TransportError>(v4, &_ss6ResultOy14XPCDistributed9XPCSystemC9TransportC6PacketV7PayloadVAG0D5ErrorOGMd, &_ss6ResultOy14XPCDistributed9XPCSystemC9TransportC6PacketV7PayloadVAG0D5ErrorOGMR);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v10 = v1[3];
    v1[3] = 0;
    swift_unknownObjectWeakAssign();
    ObjectType = swift_getObjectType();
    (*(v10 + 40))(ObjectType, v10);
    swift_unknownObjectRelease();
  }
}

uint64_t specialized RequestManager.replyAll(with:)(uint64_t a1)
{
  v50 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14XPCDistributed14RequestManagerC0B0C5StateOyAA4ID64Vs6ResultOyAA9XPCSystemC9TransportC6PacketV7PayloadVAO0H5ErrorOG__GMd, &_s14XPCDistributed14RequestManagerC0B0C5StateOyAA4ID64Vs6ResultOyAA9XPCSystemC9TransportC6PacketV7PayloadVAO0H5ErrorOG__GMR);
  MEMORY[0x28223BE20](v2);
  v41 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v43 = (&v39 - v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy14XPCDistributed9XPCSystemC9TransportC6PacketV7PayloadVAG0D5ErrorOGSgMd, &_ss6ResultOy14XPCDistributed9XPCSystemC9TransportC6PacketV7PayloadVAG0D5ErrorOGSgMR);
  MEMORY[0x28223BE20](v6 - 8);
  v52 = &v39 - v7;
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = (&v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *(v1 + 16);
  *v12 = v13;
  v14 = *(v9 + 104);
  v47 = *MEMORY[0x277D85200];
  v45 = v14;
  v46 = v9 + 104;
  v14(v12, v10);
  v15 = v13;
  LOBYTE(v13) = _dispatchPreconditionTest(_:)();
  v16 = *(v9 + 8);
  v48 = v9 + 8;
  v49 = v8;
  v44 = v16;
  result = v16(v12, v8);
  if (v13)
  {
    v42 = v2;
    swift_beginAccess();
    v39 = v1;
    v18 = *(v1 + 24);
    v21 = *(v18 + 64);
    v20 = v18 + 64;
    v19 = v21;
    v22 = 1 << *(*(v1 + 24) + 32);
    v23 = -1;
    if (v22 < 64)
    {
      v23 = ~(-1 << v22);
    }

    v24 = v23 & v19;
    v25 = (v22 + 63) >> 6;
    v51 = *(v1 + 24);

    v26 = 0;
    v40 = v12;
    v27 = 0;
    if (v24)
    {
LABEL_7:
      while (1)
      {
        v28 = *(*(v51 + 56) + ((v26 << 9) | (8 * __clz(__rbit64(v24)))));
        v29 = v52;
        outlined init with copy of XPCPeerRequirement?(v50, v52, &_ss6ResultOy14XPCDistributed9XPCSystemC9TransportC6PacketV7PayloadVAG0D5ErrorOGMd, &_ss6ResultOy14XPCDistributed9XPCSystemC9TransportC6PacketV7PayloadVAG0D5ErrorOGMR);
        v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy14XPCDistributed9XPCSystemC9TransportC6PacketV7PayloadVAG0D5ErrorOGMd, &_ss6ResultOy14XPCDistributed9XPCSystemC9TransportC6PacketV7PayloadVAG0D5ErrorOGMR);
        (*(*(v30 - 8) + 56))(v29, 0, 1, v30);
        v31 = *(v28 + *(*v28 + 120));
        *v12 = v31;
        v32 = v49;
        v45(v12, v47, v49);

        v33 = v31;
        LOBYTE(v31) = _dispatchPreconditionTest(_:)();
        result = v44(v12, v32);
        if ((v31 & 1) == 0)
        {
          break;
        }

        v24 &= v24 - 1;
        v34 = *(*v28 + 112);
        swift_beginAccess();
        v35 = v43;
        outlined init with copy of XPCPeerRequirement?(v28 + v34, v43, &_s14XPCDistributed14RequestManagerC0B0C5StateOyAA4ID64Vs6ResultOyAA9XPCSystemC9TransportC6PacketV7PayloadVAO0H5ErrorOG__GMd, &_s14XPCDistributed14RequestManagerC0B0C5StateOyAA4ID64Vs6ResultOyAA9XPCSystemC9TransportC6PacketV7PayloadVAO0H5ErrorOG__GMR);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v36 = v52;
          (*v35)(v52);

          v37 = v36;
          v12 = v40;
          outlined destroy of Result<XPCSystem.Transport.Packet.Payload, XPCSystem.Transport.TransportError>(v37, &_ss6ResultOy14XPCDistributed9XPCSystemC9TransportC6PacketV7PayloadVAG0D5ErrorOGSgMd, &_ss6ResultOy14XPCDistributed9XPCSystemC9TransportC6PacketV7PayloadVAG0D5ErrorOGSgMR);
          v38 = v41;
          swift_storeEnumTagMultiPayload();
          swift_beginAccess();
          outlined assign with take of RequestManager<ID64, Result<XPCSystem.Transport.Packet.Payload, XPCSystem.Transport.TransportError>>.Request.State(v38, v28 + v34);
          swift_endAccess();

          v27 = v26;
          if (!v24)
          {
            goto LABEL_10;
          }
        }

        else
        {

          outlined destroy of Result<XPCSystem.Transport.Packet.Payload, XPCSystem.Transport.TransportError>(v52, &_ss6ResultOy14XPCDistributed9XPCSystemC9TransportC6PacketV7PayloadVAG0D5ErrorOGSgMd, &_ss6ResultOy14XPCDistributed9XPCSystemC9TransportC6PacketV7PayloadVAG0D5ErrorOGSgMR);
          result = outlined destroy of Result<XPCSystem.Transport.Packet.Payload, XPCSystem.Transport.TransportError>(v35, &_s14XPCDistributed14RequestManagerC0B0C5StateOyAA4ID64Vs6ResultOyAA9XPCSystemC9TransportC6PacketV7PayloadVAO0H5ErrorOG__GMd, &_s14XPCDistributed14RequestManagerC0B0C5StateOyAA4ID64Vs6ResultOyAA9XPCSystemC9TransportC6PacketV7PayloadVAO0H5ErrorOG__GMR);
          v27 = v26;
          if (!v24)
          {
            goto LABEL_10;
          }
        }
      }
    }

    else
    {
LABEL_10:
      while (1)
      {
        v26 = v27 + 1;
        if (__OFADD__(v27, 1))
        {
          break;
        }

        if (v26 >= v25)
        {

          *(v39 + 24) = MEMORY[0x277D84F98];
        }

        v24 = *(v20 + 8 * v26);
        ++v27;
        if (v24)
        {
          goto LABEL_7;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t XPCSystem.Transport.Request.isCancelled.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 16) = a1;
  return result;
}

uint64_t XPCSystem.Transport.Request.__allocating_init(isCancelled:)(char a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t XPCSystem.Transport.sendRequest(id:payload:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](XPCSystem.Transport.sendRequest(id:payload:), 0, 0);
}

uint64_t XPCSystem.Transport.sendRequest(id:payload:)()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  v4 = swift_task_alloc();
  v0[6] = v4;
  v4[2] = v3;
  v4[3] = v2;
  v4[4] = v1;
  v5 = swift_task_alloc();
  v0[7] = v5;
  *v5 = v0;
  v5[1] = XPCSystem.Transport.sendRequest(id:payload:);
  v6 = v0[2];
  v7 = v0[3];

  return specialized RequestManager.withRequest(id:perform:)(v6, v7, partial apply for closure #1 in XPCSystem.Transport.sendRequest(id:payload:), v4);
}

{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t closure #1 in XPCSystem.Transport.sendRequest(id:payload:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v16[3] = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v8 = type metadata accessor for DispatchQoS();
  v16[1] = *(v8 - 8);
  v16[2] = v8;
  MEMORY[0x28223BE20](v8);
  v9 = type metadata accessor for XPCSystem.Transport.Packet(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of XPCSystem.Transport.Packet.Payload(a3, &v11[*(v12 + 28)]);
  *v11 = a2;
  v11[8] = 0;
  v14 = a4[11];
  v13 = a4[12];
  __swift_project_boxed_opaque_existential_1(a4 + 8, v14);
  (*(v13 + 16))(v11, v14, v13);
  return outlined destroy of XPCSystem.Transport.Packet(v11);
}

uint64_t closure #1 in closure #1 in XPCSystem.Transport.sendRequest(id:payload:)(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy14XPCDistributed9XPCSystemC9TransportC6PacketV7PayloadVAG0D5ErrorOGSgMd, &_ss6ResultOy14XPCDistributed9XPCSystemC9TransportC6PacketV7PayloadVAG0D5ErrorOGSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = (v9 - v4);
  v10 = 0;
  v11 = 0xE000000000000000;
  _StringGuts.grow(_:)(39);
  MEMORY[0x277C6B720](0xD000000000000025, 0x80000002751B90F0);
  v9[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  _print_unlocked<A, B>(_:_:)();
  v6 = v11;
  *v5 = v10;
  v5[1] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy14XPCDistributed9XPCSystemC9TransportC6PacketV7PayloadVAG0D5ErrorOGMd, &_ss6ResultOy14XPCDistributed9XPCSystemC9TransportC6PacketV7PayloadVAG0D5ErrorOGMR);
  swift_storeEnumTagMultiPayload();
  (*(*(v7 - 8) + 56))(v5, 0, 1, v7);
  specialized RequestManager.Request.reply(with:)(v5);
  return outlined destroy of Result<XPCSystem.Transport.Packet.Payload, XPCSystem.Transport.TransportError>(v5, &_ss6ResultOy14XPCDistributed9XPCSystemC9TransportC6PacketV7PayloadVAG0D5ErrorOGSgMd, &_ss6ResultOy14XPCDistributed9XPCSystemC9TransportC6PacketV7PayloadVAG0D5ErrorOGSgMR);
}

uint64_t specialized RequestManager.Request.reply(with:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14XPCDistributed14RequestManagerC0B0C5StateOyAA4ID64Vs6ResultOyAA9XPCSystemC9TransportC6PacketV7PayloadVAO0H5ErrorOG__GMd, &_s14XPCDistributed14RequestManagerC0B0C5StateOyAA4ID64Vs6ResultOyAA9XPCSystemC9TransportC6PacketV7PayloadVAO0H5ErrorOG__GMR);
  MEMORY[0x28223BE20](v4);
  v6 = &v19[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v9 = &v19[-v8];
  v10 = type metadata accessor for DispatchPredicate();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v19[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = *(v2 + *(*v2 + 120));
  *v14 = v15;
  (*(v11 + 104))(v14, *MEMORY[0x277D85200], v10, v12);
  v16 = v15;
  LOBYTE(v15) = _dispatchPreconditionTest(_:)();
  result = (*(v11 + 8))(v14, v10);
  if (v15)
  {
    v18 = *(*v2 + 112);
    swift_beginAccess();
    outlined init with copy of XPCPeerRequirement?(v2 + v18, v9, &_s14XPCDistributed14RequestManagerC0B0C5StateOyAA4ID64Vs6ResultOyAA9XPCSystemC9TransportC6PacketV7PayloadVAO0H5ErrorOG__GMd, &_s14XPCDistributed14RequestManagerC0B0C5StateOyAA4ID64Vs6ResultOyAA9XPCSystemC9TransportC6PacketV7PayloadVAO0H5ErrorOG__GMR);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      (*v9)(a1);

      swift_storeEnumTagMultiPayload();
      swift_beginAccess();
      outlined assign with take of RequestManager<ID64, Result<XPCSystem.Transport.Packet.Payload, XPCSystem.Transport.TransportError>>.Request.State(v6, v2 + v18);
      return swift_endAccess();
    }

    else
    {
      return outlined destroy of Result<XPCSystem.Transport.Packet.Payload, XPCSystem.Transport.TransportError>(v9, &_s14XPCDistributed14RequestManagerC0B0C5StateOyAA4ID64Vs6ResultOyAA9XPCSystemC9TransportC6PacketV7PayloadVAO0H5ErrorOG__GMd, &_s14XPCDistributed14RequestManagerC0B0C5StateOyAA4ID64Vs6ResultOyAA9XPCSystemC9TransportC6PacketV7PayloadVAO0H5ErrorOG__GMR);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}