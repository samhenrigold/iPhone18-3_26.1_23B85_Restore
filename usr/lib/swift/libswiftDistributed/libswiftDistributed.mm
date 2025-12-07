uint64_t DistributedActor.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  MEMORY[0x2A1C7C4A8](AssociatedTypeWitness);
  v7 = &v9 - v6;
  v10 = v3;
  dispatch thunk of Identifiable.id.getter();
  swift_getAssociatedConformanceWitness();
  dispatch thunk of Hashable.hash(into:)();
  return (*(v5 + 8))(v7, AssociatedTypeWitness);
}

uint64_t static DistributedActor.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = MEMORY[0x2A1C7C4A8](AssociatedTypeWitness);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v8);
  v12 = &v15 - v11;
  v16 = a1;
  dispatch thunk of Identifiable.id.getter();
  v16 = a2;
  dispatch thunk of Identifiable.id.getter();
  swift_getAssociatedConformanceWitness();
  LOBYTE(a1) = dispatch thunk of static Equatable.== infix(_:_:)();
  v13 = *(v7 + 8);
  v13(v10, AssociatedTypeWitness);
  v13(v12, AssociatedTypeWitness);
  return a1 & 1;
}

uint64_t one-time initialization function for actorSystemKey()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17CodingUserInfoKeyVSgMd, &_ss17CodingUserInfoKeyVSgMR);
  MEMORY[0x2A1C7C4A8](v0 - 8);
  v2 = &v7 - v1;
  v3 = type metadata accessor for CodingUserInfoKey();
  __swift_allocate_value_buffer(v3, static CodingUserInfoKey.actorSystemKey);
  v4 = __swift_project_value_buffer(v3, static CodingUserInfoKey.actorSystemKey);
  CodingUserInfoKey.init(rawValue:)();
  v5 = *(v3 - 8);
  if ((*(v5 + 48))(v2, 1, v3) != 1)
  {
    return (*(v5 + 32))(v4, v2, v3);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t static CodingUserInfoKey.actorSystemKey.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for actorSystemKey != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for CodingUserInfoKey();
  v3 = __swift_project_value_buffer(v2, static CodingUserInfoKey.actorSystemKey);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t DistributedActor<>.init(from:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v42 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v40 = *(AssociatedTypeWitness - 8);
  MEMORY[0x2A1C7C4A8](AssociatedTypeWitness);
  v43 = &v38 - v7;
  v39 = a3;
  v45 = a2;
  v8 = swift_getAssociatedTypeWitness();
  v9 = type metadata accessor for Optional();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x2A1C7C4A8](v9);
  v13 = &v38 - v12;
  v14 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v11);
  v16 = &v38 - v15;
  v17 = a1[3];
  v47 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v17);
  v18 = dispatch thunk of Decoder.userInfo.getter();
  if (one-time initialization token for actorSystemKey != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for CodingUserInfoKey();
  v20 = __swift_project_value_buffer(v19, static CodingUserInfoKey.actorSystemKey);
  if (*(v18 + 16) && (v21 = specialized __RawDictionaryStorage.find<A>(_:)(v20), (v22 & 1) != 0))
  {
    outlined init with copy of Any(*(v18 + 56) + 32 * v21, v46);
  }

  else
  {

    memset(v46, 0, 32);
  }

  swift_getCanonicalSpecializedMetadata();
  v23 = swift_dynamicCast();
  v24 = *(v14 + 56);
  if ((v23 & 1) == 0)
  {
    v24(v13, 1, 1, v8);
    (*(v10 + 8))(v13, v9);
    *&v46[0] = 0;
    *(&v46[0] + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(39);

    *&v46[0] = 0xD000000000000024;
    *(&v46[0] + 1) = 0x8000000299ADB020;
    v30 = _typeName(_:qualified:)();
    MEMORY[0x29C2AA470](v30);

    MEMORY[0x29C2AA470](46, 0xE100000000000000);
    v31 = v46[0];
    *&v46[0] = 0xD000000000000029;
    *(&v46[0] + 1) = 0x8000000299ADAFF0;
    MEMORY[0x29C2AA470](v31, *(&v31 + 1));

    v28 = *(&v46[0] + 1);
    v33 = *&v46[0];
    lazy protocol witness table accessor for type DistributedActorCodingError and conformance DistributedActorCodingError(v32, v34, v35);
    swift_allocError();
    *v36 = v33;
    v36[1] = v28;
    swift_willThrow();
    v25 = v47;
    goto LABEL_12;
  }

  v24(v13, 0, 1, v8);
  (*(v14 + 32))(v16, v13, v8);
  v25 = v47;
  outlined init with copy of Decoder(v47, v46);
  v27 = v43;
  v26 = AssociatedTypeWitness;
  v28 = AssociatedTypeWitness;
  v29 = v41;
  dispatch thunk of Decodable.init(from:)();
  if (v29)
  {
    (*(v14 + 8))(v16, v8);
LABEL_12:
    __swift_destroy_boxed_opaque_existential_1(v25);
    return v28;
  }

  v28 = (*(v39 + 64))(v27, v16);
  (*(v40 + 8))(v27, v26);
  (*(v14 + 8))(v16, v8);
  __swift_destroy_boxed_opaque_existential_1(v25);
  return v28;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t DistributedActor<>.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v5 = v4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  MEMORY[0x2A1C7C4A8](AssociatedTypeWitness);
  v10 = v12 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  v13[6] = v5;
  dispatch thunk of Identifiable.id.getter();
  __swift_mutable_project_boxed_opaque_existential_1(v13, v13[3]);
  dispatch thunk of SingleValueEncodingContainer.encode<A>(_:)();
  (*(v8 + 8))(v10, AssociatedTypeWitness);
  return __swift_destroy_boxed_opaque_existential_1(v13);
}

uint64_t _s11Distributed0A5ActorPAAE20whenLocalTypedThrowsyqd__Sgqd__xYiYaYbqd_0_YKXEYaqd_0_YKs8SendableRd__s5ErrorRd_0_r0_lF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[7] = v6;
  v7[8] = v10;
  v7[5] = a5;
  v7[6] = a6;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  v7[9] = *(a6 - 8);
  v7[10] = swift_task_alloc();

  return MEMORY[0x2A1C73D48](_s11Distributed0A5ActorPAAE20whenLocalTypedThrowsyqd__Sgqd__xYiYaYbqd_0_YKXEYaqd_0_YKs8SendableRd__s5ErrorRd_0_r0_lFTY0_, 0, 0);
}

uint64_t _s11Distributed0A5ActorPAAE20whenLocalTypedThrowsyqd__Sgqd__xYiYaYbqd_0_YKXEYaqd_0_YKs8SendableRd__s5ErrorRd_0_r0_lFTY0_()
{
  if (swift_distributed_actor_is_remote())
  {
    (*(*(v0[5] - 8) + 56))(v0[2], 1, 1);

    v1 = v0[1];

    return v1();
  }

  else
  {
    v7 = (v0[3] + *v0[3]);
    v3 = swift_task_alloc();
    v0[11] = v3;
    *v3 = v0;
    v3[1] = _s11Distributed0A5ActorPAAE20whenLocalTypedThrowsyqd__Sgqd__xYiYaYbqd_0_YKXEYaqd_0_YKs8SendableRd__s5ErrorRd_0_r0_lFTQ1_;
    v4 = v0[10];
    v5 = v0[7];
    v6 = v0[2];

    return v7(v6, v5, v4);
  }
}

uint64_t _s11Distributed0A5ActorPAAE20whenLocalTypedThrowsyqd__Sgqd__xYiYaYbqd_0_YKXEYaqd_0_YKs8SendableRd__s5ErrorRd_0_r0_lFTQ1_()
{

  if (v0)
  {
    v1 = _s11Distributed0A5ActorPAAE20whenLocalTypedThrowsyqd__Sgqd__xYiYaYbqd_0_YKXEYaqd_0_YKs8SendableRd__s5ErrorRd_0_r0_lFTY3_;
  }

  else
  {
    v1 = _s11Distributed0A5ActorPAAE20whenLocalTypedThrowsyqd__Sgqd__xYiYaYbqd_0_YKXEYaqd_0_YKs8SendableRd__s5ErrorRd_0_r0_lFTY2_;
  }

  return MEMORY[0x2A1C73D48](v1, 0, 0);
}

uint64_t _s11Distributed0A5ActorPAAE20whenLocalTypedThrowsyqd__Sgqd__xYiYaYbqd_0_YKXEYaqd_0_YKs8SendableRd__s5ErrorRd_0_r0_lFTY2_()
{
  (*(*(v0[5] - 8) + 56))(v0[2], 0, 1);

  v1 = v0[1];

  return v1();
}

uint64_t _s11Distributed0A5ActorPAAE20whenLocalTypedThrowsyqd__Sgqd__xYiYaYbqd_0_YKXEYaqd_0_YKs8SendableRd__s5ErrorRd_0_r0_lFTY3_()
{
  (*(v0[9] + 32))(v0[8], v0[10], v0[6]);

  v1 = v0[1];

  return v1();
}

uint64_t _s11Distributed0A5ActorPAAE9whenLocalyqd__Sgqd__xYiYaYbqd_0_YKXEYaqd_0_YKs8SendableRd__s5ErrorRd_0_r0_lF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9[2] = a6;
  v9[3] = a9;
  v9[4] = *(a6 - 8);
  v18 = swift_task_alloc();
  v9[5] = v18;
  v19 = swift_task_alloc();
  v9[6] = v19;
  *v19 = v9;
  v19[1] = _s11Distributed0A5ActorPAAE9whenLocalyqd__Sgqd__xYiYaYbqd_0_YKXEYaqd_0_YKs8SendableRd__s5ErrorRd_0_r0_lFTQ0_;

  return (_s11Distributed0A5ActorPAAE20whenLocalTypedThrowsyqd__Sgqd__xYiYaYbqd_0_YKXEYaqd_0_YKs8SendableRd__s5ErrorRd_0_r0_lF)(a1, a2, a3, a4, a5, a6, a7, a8, v18);
}

uint64_t _s11Distributed0A5ActorPAAE9whenLocalyqd__Sgqd__xYiYaYbqd_0_YKXEYaqd_0_YKs8SendableRd__s5ErrorRd_0_r0_lFTQ0_()
{
  v2 = *v1;

  if (!v0)
  {

    v3 = *(v2 + 8);

    __asm { BRAA            X1, X16 }
  }

  return MEMORY[0x2A1C73D48](_s11Distributed0A5ActorPAAE9whenLocalyqd__Sgqd__xYiYaYbqd_0_YKXEYaqd_0_YKs8SendableRd__s5ErrorRd_0_r0_lFTY1_, 0, 0);
}

uint64_t _s11Distributed0A5ActorPAAE9whenLocalyqd__Sgqd__xYiYaYbqd_0_YKXEYaqd_0_YKs8SendableRd__s5ErrorRd_0_r0_lFTY1_()
{
  (*(v0[4] + 32))(v0[3], v0[5], v0[2]);

  v1 = v0[1];

  return v1();
}

uint64_t DistributedActor.whenLocal<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[8] = a6;
  v7[9] = v6;
  v7[6] = a4;
  v7[7] = a5;
  v7[4] = a2;
  v7[5] = a3;
  v7[3] = a1;
  return MEMORY[0x2A1C73D48](DistributedActor.whenLocal<A>(_:), 0, 0);
}

void DistributedActor.whenLocal<A>(_:)()
{
  v1 = *(v0 + 64);
  v2 = swift_task_alloc();
  *(v0 + 80) = v2;
  v3 = *(v0 + 32);
  *(v2 + 16) = *(v0 + 48);
  *(v2 + 32) = v1;
  *(v2 + 40) = v3;
  v4 = swift_task_alloc();
  *(v0 + 88) = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  *v4 = v0;
  v4[1] = DistributedActor.whenLocal<A>(_:);

  JUMPOUT(0x299AD0318);
}

uint64_t DistributedActor.whenLocal<A>(_:)()
{
  v2 = *v1;

  if (!v0)
  {

    v3 = *(v2 + 8);

    __asm { BRAA            X1, X16 }
  }

  return MEMORY[0x2A1C73D48](DistributedActor.whenLocal<A>(_:), 0, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t _sxqd__s5Error_pIghHgIrzo_xqd__sAA_pIeghHgIrzr_11Distributed0B5ActorRzs8SendableRd__r__lTR(uint64_t a1, uint64_t a2, int *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 16) = a8;
  v13 = (a3 + *a3);
  v11 = swift_task_alloc();
  *(v8 + 24) = v11;
  *v11 = v8;
  v11[1] = _sxqd__s5Error_pIghHgIrzo_xqd__sAA_pIeghHgIrzr_11Distributed0B5ActorRzs8SendableRd__r__lTRTQ0_;

  return v13(a1, a2);
}

uint64_t _sxqd__s5Error_pIghHgIrzo_xqd__sAA_pIeghHgIrzr_11Distributed0B5ActorRzs8SendableRd__r__lTRTQ0_()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
    **(v2 + 16) = v0;
  }

  v4 = *(v3 + 8);

  return v4();
}

void _distributedStubFatalError(function:)(uint64_t a1, uint64_t a2)
{
  _StringGuts.grow(_:)(54);
  MEMORY[0x29C2AA470](0xD00000000000002DLL, 0x8000000299ADB080);
  MEMORY[0x29C2AA470](a1, a2);
  MEMORY[0x29C2AA470](0x21627574732027, 0xE700000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t DistributedActorSystem.executeDistributedTarget<A>(on:target:invocationDecoder:handler:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[12] = a7;
  v8[13] = v7;
  v8[10] = a4;
  v8[11] = a5;
  v8[8] = a1;
  v8[9] = a3;
  v9 = a2[1];
  v8[14] = *a2;
  v8[15] = v9;
  return MEMORY[0x2A1C73D48](DistributedActorSystem.executeDistributedTarget<A>(on:target:invocationDecoder:handler:), 0, 0);
}

uint64_t DistributedActorSystem.executeDistributedTarget<A>(on:target:invocationDecoder:handler:)()
{
  specialized _copyCollectionToContiguousArray<A>(_:)(*(v0 + 112), *(v0 + 120));
  if (!swift_distributed_getGenericEnvironment())
  {
    WitnessTables = 0;
    v6 = 0;
    goto LABEL_4;
  }

  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v2 = *(AssociatedConformanceWitness + 16);
  v3 = swift_checkMetadataState();
  v4 = v2(v3, AssociatedConformanceWitness);
  v16 = v4;
  v17 = *(v4 + 16);
  if (!v17)
  {

    v55 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Cannot call generic method without generic argument substitutions", 0x41uLL, 1);
    lazy protocol witness table accessor for type ExecuteDistributedTargetError and conformance ExecuteDistributedTargetError(v55._countAndFlagsBits, v55._object, v56);
    swift_allocError();
    *(v57 + 8) = v55;
    *v57 = 2;
    swift_willThrow();
    goto LABEL_50;
  }

  if (v17 >> 60)
  {
    __break(1u);
    return _assertionFailure(_:_:file:line:flags:)();
  }

  v18 = swift_slowAlloc();
  v6 = v18;
  if (v17 >= 6 && (v18 - v16 - 32) >= 0x20)
  {
    v19 = v17 & 0xFFFFFFFFFFFFFFCLL;
    v74 = (v16 + 48);
    v75 = (v18 + 16);
    v76 = v17 & 0xFFFFFFFFFFFFFFCLL;
    do
    {
      v77 = *v74;
      *(v75 - 1) = *(v74 - 1);
      *v75 = v77;
      v74 += 2;
      v75 += 2;
      v76 -= 4;
    }

    while (v76);
    if (v17 == v19)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v19 = 0;
  }

  v20 = 8 * v19;
  v21 = (v18 + 8 * v19);
  v22 = v17 - v19;
  v23 = (v20 + v16 + 32);
  do
  {
    v24 = *v23++;
    *v21++ = v24;
    --v22;
  }

  while (v22);
LABEL_19:
  WitnessTables = swift_distributed_getWitnessTables();
  if (v25 < 0)
  {
    v59 = *(v0 + 112);
    v58 = *(v0 + 120);

    _StringGuts.grow(_:)(71);
    countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Generic substitutions ", 0x16uLL, 1)._countAndFlagsBits;
    MEMORY[0x29C2AA470](countAndFlagsBits);

    v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXpMd, &_sypXpMR);
    v62 = MEMORY[0x29C2AA4A0](v16, v61);
    v64 = v63;

    MEMORY[0x29C2AA470](v62, v64);

    v65 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" do not satisfy generic requirements of ", 0x28uLL, 1)._countAndFlagsBits;
    MEMORY[0x29C2AA470](v65);

    v66._countAndFlagsBits = v59;
    v66._object = v58;
    v68 = _getFunctionFullNameFromMangledName(mangledName:)(v66);
    v67 = v68.value._countAndFlagsBits;
    if (v68.value._object)
    {
      object = v68.value._object;
      v71 = *(v0 + 112);
      v70 = *(v0 + 120);
    }

    else
    {
      v70 = *(v0 + 120);

      v71 = *(v0 + 112);
      v67 = v71;
      object = v70;
    }

    MEMORY[0x29C2AA470](v67, object);

    v86 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" (", 2uLL, 1)._countAndFlagsBits;
    MEMORY[0x29C2AA470](v86);

    MEMORY[0x29C2AA470](v71, v70);
    v87 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(")", 1uLL, 1)._countAndFlagsBits;
    MEMORY[0x29C2AA470](v87);

    lazy protocol witness table accessor for type ExecuteDistributedTargetError and conformance ExecuteDistributedTargetError(v88, v89, v90);
    swift_allocError();
    *(v91 + 8) = 0;
    *(v91 + 16) = 0xE000000000000000;
    *v91 = 3;
    swift_willThrow();
    MEMORY[0x29C2AAA60](v6, -1, -1);
    goto LABEL_49;
  }

LABEL_4:
  *(v0 + 128) = WitnessTables;
  *(v0 + 136) = v6;
  ParameterCount = swift_func_getParameterCount();
  if ((ParameterCount & 0x80000000) != 0)
  {
    v27 = *(v0 + 112);
    v26 = *(v0 + 120);

    _StringGuts.grow(_:)(104);
    v28 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Failed to decode distributed invocation target expected parameter count,\nerror code: ", 0x55uLL, 1)._countAndFlagsBits;
    MEMORY[0x29C2AA470](v28);

    *(v0 + 252) = ParameterCount;
    v29 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x29C2AA470](v29);

    v30 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("\nmangled name: ", 0xFuLL, 1)._countAndFlagsBits;
    MEMORY[0x29C2AA470](v30);

    v31 = MEMORY[0x29C2AA470](v27, v26);
    lazy protocol witness table accessor for type ExecuteDistributedTargetError and conformance ExecuteDistributedTargetError(v31, v32, v33);
    swift_allocError();
    *(v34 + 8) = 0;
    *(v34 + 16) = 0xE000000000000000;
    *v34 = 1;
    swift_willThrow();
    if (v6)
    {
      MEMORY[0x29C2AAA60](v6, -1, -1);
    }

    if (!WitnessTables)
    {
      goto LABEL_50;
    }

    goto LABEL_49;
  }

  v8 = swift_slowAlloc();
  *(v0 + 144) = v8;
  ParameterTypeInfo = swift_func_getParameterTypeInfo();
  v95 = WitnessTables;
  if (ParameterTypeInfo == ParameterCount)
  {
    v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, ParameterCount, 0, MEMORY[0x29EDCA190]);
    v11 = v10;
    v93 = v8;
    if (ParameterCount)
    {
      v12 = *(v10 + 2);
      v13 = 8 * ParameterCount;
      do
      {
        v14 = *v8;
        v15 = *(v11 + 3);
        if (v12 >= v15 >> 1)
        {
          v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v12 + 1, 1, v11);
        }

        ++v8;
        *(v11 + 2) = v12 + 1;
        *&v11[8 * v12++ + 32] = v14;
        v13 -= 8;
      }

      while (v13);
    }

    ReturnTypeInfo = swift_func_getReturnTypeInfo();
    *(v0 + 152) = ReturnTypeInfo;
    if (ReturnTypeInfo)
    {
      v50 = static UnsafeMutablePointer.allocate(capacity:)();
      *(v0 + 160) = v50;
      if (v50)
      {
        v51 = swift_allocObject();
        *(v0 + 168) = v51;
        *(v51 + 16) = 1;
        swift_getAssociatedTypeWitness();
        v52 = swift_getAssociatedConformanceWitness();
        v53 = *(v52 + 40);
        v54 = swift_checkMetadataState();
        *(v0 + 176) = v53(v54, v52);
        v81 = String.count.getter();
        if ((v81 & 0x8000000000000000) == 0)
        {
          v82 = v81;

          v83 = String.utf8CString.getter();
          *(v0 + 184) = v83;
          *(v0 + 16) = v0;
          *(v0 + 24) = DistributedActorSystem.executeDistributedTarget<A>(on:target:invocationDecoder:handler:);
          v84 = *(v0 + 64);

          return swift_distributed_execute_target(v84, v83 + 32, v82);
        }

        return _assertionFailure(_:_:file:line:flags:)();
      }

      v72 = "Failed to allocate buffer for distributed target return type";
      v73 = 60;
    }

    else
    {

      v72 = "Failed to decode distributed target return type";
      v73 = 47;
    }

    v78 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v72, v73, 1);
    lazy protocol witness table accessor for type ExecuteDistributedTargetError and conformance ExecuteDistributedTargetError(v78._countAndFlagsBits, v78._object, v79);
    swift_allocError();
    *(v80 + 8) = v78;
    *v80 = 4;
    swift_willThrow();
    v48 = v93;
  }

  else
  {
    v35 = ParameterTypeInfo;
    v36 = *(v0 + 112);
    v94 = *(v0 + 120);

    _StringGuts.grow(_:)(145);
    v37 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Failed to decode the expected number of params of distributed invocation target, error code: ", 0x5DuLL, 1)._countAndFlagsBits;
    MEMORY[0x29C2AA470](v37);

    *(v0 + 240) = v35;
    v38 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x29C2AA470](v38);

    v39 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("\ndecoded: ", 0xAuLL, 1)._countAndFlagsBits;
    MEMORY[0x29C2AA470](v39);

    *(v0 + 244) = v35;
    v40 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x29C2AA470](v40);

    v41 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(", expected params: ", 0x13uLL, 1)._countAndFlagsBits;
    MEMORY[0x29C2AA470](v41);

    *(v0 + 248) = ParameterCount;
    v42 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x29C2AA470](v42);

    v43 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("\nmangled name: ", 0xFuLL, 1)._countAndFlagsBits;
    MEMORY[0x29C2AA470](v43);

    v44 = MEMORY[0x29C2AA470](v36, v94);
    lazy protocol witness table accessor for type ExecuteDistributedTargetError and conformance ExecuteDistributedTargetError(v44, v45, v46);
    swift_allocError();
    *(v47 + 8) = 0;
    *(v47 + 16) = 0xE000000000000000;
    *v47 = 1;
    swift_willThrow();
    v48 = v8;
  }

  MEMORY[0x29C2AAA60](v48, -1, -1);
  if (v6)
  {
    MEMORY[0x29C2AAA60](v6, -1, -1);
  }

  if (v95)
  {
LABEL_49:
    MEMORY[0x29C2AAA60]();
  }

LABEL_50:
  v92 = *(v0 + 8);

  return v92();
}

{
  *(*v1 + 192) = v0;
  if (v0)
  {
    v2 = DistributedActorSystem.executeDistributedTarget<A>(on:target:invocationDecoder:handler:);
  }

  else
  {

    v2 = DistributedActorSystem.executeDistributedTarget<A>(on:target:invocationDecoder:handler:);
  }

  return MEMORY[0x2A1C73D48](v2, 0, 0);
}

{
  v1 = v0[22];
  if (!v1)
  {
    v1 = v0[19];
  }

  *(v0[21] + 16) = 0;
  if (v1 == MEMORY[0x29EDCA180] + 8)
  {
    swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v3 = *(AssociatedConformanceWitness + 24);
    v4 = swift_checkMetadataState();
    v15 = (v3 + *v3);
    v5 = swift_task_alloc();
    v0[25] = v5;
    *v5 = v0;
    v5[1] = DistributedActorSystem.executeDistributedTarget<A>(on:target:invocationDecoder:handler:);

    return v15(v4, AssociatedConformanceWitness);
  }

  else
  {
    v7 = v0[22];
    v8 = v0[19];
    v16 = (*(v0[12] + 136) + **(v0[12] + 136));
    v9 = swift_task_alloc();
    v0[26] = v9;
    *v9 = v0;
    v9[1] = DistributedActorSystem.executeDistributedTarget<A>(on:target:invocationDecoder:handler:);
    if (v7)
    {
      v10 = v7;
    }

    else
    {
      v10 = v8;
    }

    v11 = v0[20];
    v12 = v0[12];
    v14 = v0[10];
    v13 = v0[11];

    return v16(v14, v11, v10, v13, v12);
  }
}

{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
    *(v2 + 56) = v0;
    v4 = v2 + 56;
    *(v4 + 160) = v0;
    swift_getAssociatedTypeWitness();
    v5 = *(swift_getAssociatedConformanceWitness() + 32);
    swift_checkMetadataState();
    v8 = v5 + *v5;
    v6 = swift_task_alloc();
    *(v4 + 168) = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    *v6 = v3;
    v6[1] = DistributedActorSystem.executeDistributedTarget<A>(on:target:invocationDecoder:handler:);

    __asm { BRAA            X5, X16 }
  }

  return MEMORY[0x2A1C73D48](DistributedActorSystem.executeDistributedTarget<A>(on:target:invocationDecoder:handler:), 0, 0);
}

{
  if ((*(v0[21] + 16) & 1) == 0)
  {
    UnsafeMutablePointer.deinitialize(count:)();
  }

  v2 = v0[17];
  v1 = v0[18];
  MEMORY[0x29C2AA520](v0[20], v0[19]);

  MEMORY[0x29C2AAA60](v1, -1, -1);
  if (v2)
  {
    MEMORY[0x29C2AAA60](v0[17], -1, -1);
  }

  v3 = v0[16];
  if (v3)
  {
    MEMORY[0x29C2AAA60](v3, -1, -1);
  }

  v4 = v0[1];

  return v4();
}

{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
    *(v2 + 56) = v0;
    v4 = v2 + 56;
    *(v4 + 160) = v0;
    swift_getAssociatedTypeWitness();
    v5 = *(swift_getAssociatedConformanceWitness() + 32);
    swift_checkMetadataState();
    v8 = v5 + *v5;
    v6 = swift_task_alloc();
    *(v4 + 168) = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    *v6 = v3;
    v6[1] = DistributedActorSystem.executeDistributedTarget<A>(on:target:invocationDecoder:handler:);

    __asm { BRAA            X5, X16 }
  }

  return MEMORY[0x2A1C73D48](DistributedActorSystem.executeDistributedTarget<A>(on:target:invocationDecoder:handler:), 0, 0);
}

{
  v2 = *v1;
  *(*v1 + 232) = v0;

  if (v0)
  {
    v3 = DistributedActorSystem.executeDistributedTarget<A>(on:target:invocationDecoder:handler:);
  }

  else
  {
    MEMORY[0x29C2AA8F0](*(v2 + 216));
    v3 = DistributedActorSystem.executeDistributedTarget<A>(on:target:invocationDecoder:handler:);
  }

  return MEMORY[0x2A1C73D48](v3, 0, 0);
}

{

  v1 = v0[24];
  v0[27] = v1;
  v0[7] = v1;
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v3 = *(AssociatedConformanceWitness + 32);
  v4 = swift_checkMetadataState();
  v9 = (v3 + *v3);
  v5 = swift_task_alloc();
  v0[28] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  *v5 = v0;
  v5[1] = DistributedActorSystem.executeDistributedTarget<A>(on:target:invocationDecoder:handler:);
  v7 = MEMORY[0x29EDC9F20];

  return (v9)(v0 + 7, v6, v7, v4, AssociatedConformanceWitness);
}

{
  v1 = v0[21];
  MEMORY[0x29C2AA8F0](v0[27]);
  if ((*(v1 + 16) & 1) == 0)
  {
    UnsafeMutablePointer.deinitialize(count:)();
  }

  v2 = v0[18];
  v3 = v0[17];
  MEMORY[0x29C2AA520](v0[20], v0[19]);

  MEMORY[0x29C2AAA60](v2, -1, -1);
  if (v3)
  {
    MEMORY[0x29C2AAA60](v0[17], -1, -1);
  }

  v4 = v0[16];
  if (v4)
  {
    MEMORY[0x29C2AAA60](v4, -1, -1);
  }

  v5 = v0[1];

  return v5();
}

Distributed::ExecuteDistributedTargetError __swiftcall ExecuteDistributedTargetError.init(message:errorCode:)(Distributed::ExecuteDistributedTargetError message, Distributed::ExecuteDistributedTargetError::ErrorCode errorCode)
{
  v3 = *errorCode;
  *(v2 + 8) = *&message.errorCode;
  *v2 = v3;
  LOBYTE(message.message._object) = errorCode;
  return message;
}

uint64_t RemoteCallTarget.description.getter()
{
  countAndFlagsBits = v0->_countAndFlagsBits;
  v3 = _getFunctionFullNameFromMangledName(mangledName:)(*v0);
  result = v3.value._countAndFlagsBits;
  if (!v3.value._object)
  {

    return countAndFlagsBits;
  }

  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance RemoteCallTarget()
{
  countAndFlagsBits = v0->_countAndFlagsBits;
  v3 = _getFunctionFullNameFromMangledName(mangledName:)(*v0);
  result = v3.value._countAndFlagsBits;
  if (!v3.value._object)
  {

    return countAndFlagsBits;
  }

  return result;
}

uint64_t RemoteCallArgument.label.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t RemoteCallArgument.effectiveLabel.getter()
{
  if (v0[1])
  {
    v1 = *v0;
  }

  else
  {
    v1 = 95;
  }

  return v1;
}

uint64_t RemoteCallArgument.name.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t RemoteCallArgument.init(label:name:value:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  *a7 = a1;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  v10 = type metadata accessor for RemoteCallArgument(0, a6, a3, a4);
  v11 = *(*(a6 - 8) + 32);
  v12 = a7 + *(v10 + 32);

  return v11(v12, a5, a6);
}

uint64_t ExecuteDistributedTargetError.message.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

Swift::Int ExecuteDistributedTargetError.ErrorCode.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x29C2AA750](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance ExecuteDistributedTargetError.ErrorCode()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x29C2AA750](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ExecuteDistributedTargetError.ErrorCode(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  MEMORY[0x29C2AA750](v2);
  return Hasher._finalize()();
}

Distributed::ExecuteDistributedTargetError __swiftcall ExecuteDistributedTargetError.init(message:)(Distributed::ExecuteDistributedTargetError message)
{
  *(v1 + 8) = *&message.errorCode;
  *v1 = 5;
  return message;
}

void _diagnoseDistributedStubMethodCalled(className:funcName:file:line:column:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 a9, uint64_t a10)
{
  _StringGuts.grow(_:)(32);

  v10 = StaticString.description.getter();
  MEMORY[0x29C2AA470](v10);

  MEMORY[0x29C2AA470](46, 0xE100000000000000);
  v11 = StaticString.description.getter();
  MEMORY[0x29C2AA470](v11);

  MEMORY[0x29C2AA470](39, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t DistributedActor.preconditionIsolated(_:file:line:)(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(a8 + 56);
  v12 = v11(a7, a8);
  MEMORY[0x29C2AA4D0](v12);
  result = swift_task_isCurrentExecutor();
  if ((result & 1) == 0)
  {
    _StringGuts.grow(_:)(63);
    MEMORY[0x29C2AA470](0xD00000000000002FLL, 0x8000000299ADB3E0);
    v11(a7, a8);
    _print_unlocked<A, B>(_:_:)();
    v14 = MEMORY[0x29C2AA470](0x7475636578652027, 0xEC000000202E726FLL);
    v15 = a1(v14);
    MEMORY[0x29C2AA470](v15);

    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t DistributedActor.assertIsolated(_:file:line:)(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  (*(a8 + 56))(a7, a8);
  MEMORY[0x29C2AA4D0]();
  result = swift_task_isCurrentExecutor();
  if ((result & 1) == 0)
  {
    _StringGuts.grow(_:)(63);
    MEMORY[0x29C2AA470](0xD00000000000002FLL, 0x8000000299ADB3E0);
    _print_unlocked<A, B>(_:_:)();
    v10 = MEMORY[0x29C2AA470](0x7475636578652027, 0xEC000000202E726FLL);
    v11 = a1(v10);
    MEMORY[0x29C2AA470](v11);

    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t DistributedActor.assumeIsolated<A>(_:file:line:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = v9;
  if (swift_distributed_actor_is_remote())
  {
    goto LABEL_9;
  }

  v16 = (*(a9 + 56))(a7, a9);
  MEMORY[0x29C2AA4D0](v16);
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
LABEL_10:
    _StringGuts.grow(_:)(66);
    MEMORY[0x29C2AA470](0xD00000000000003FLL, 0x8000000299ADB8F0);
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    MEMORY[0x29C2AA470](46, 0xE100000000000000);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v17 = swift_allocObject();
  v17[2] = a7;
  v17[3] = a8;
  v17[4] = a9;
  v17[5] = a1;
  v17[6] = a2;
  closure #1 in DistributedActor.assumeIsolated<A>(_:file:line:)(_sxqd__s5Error_pIggIrzo_xqd__sAA_pIeggIrzo_11Distributed0B5ActorRzs8SendableRd__r__lTRTA, v17, v11, a7, a8, a9);
  if (v10)
  {
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (!isEscapingClosureAtFileLocation)
    {
      return result;
    }

    __break(1u);
  }

  v20 = swift_isEscapingClosureAtFileLocation();

  if (v20)
  {
    __break(1u);
LABEL_9:
    _StringGuts.grow(_:)(91);
    MEMORY[0x29C2AA470](0xD00000000000001ELL, 0x8000000299ADB960);
    v21 = _typeName(_:qualified:)();
    MEMORY[0x29C2AA470](v21);

    MEMORY[0x29C2AA470](0xD00000000000001BLL, 0x8000000299ADB980);
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    MEMORY[0x29C2AA470](0xD00000000000001ELL, 0x8000000299ADB9A0);
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    goto LABEL_10;
  }

  return result;
}

{
  return DistributedActor.assumeIsolated<A>(_:file:line:)(a1, a2, a3, a4, a5, a6, a7, a8, a9);
}

uint64_t closure #1 in DistributedActor.assumeIsolated<A>(_:file:line:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_allocObject();
  v12[2] = a4;
  v12[3] = a5;
  v12[4] = a6;
  v12[5] = a1;
  v12[6] = a2;

  v14 = a3;
  _sxqd__s5Error_pIeggIrzo_xqd__sAA_pIegnIrzo_11Distributed0B5ActorRzs8SendableRd__r__lTRTA(&v14);
}

void DistributedRemoteActorReferenceExecutor.enqueue(_:)()
{
  v0 = ExecutorJob.description.getter();
  v2 = v1;
  _StringGuts.grow(_:)(88);
  MEMORY[0x29C2AA470](0xD000000000000022, 0x8000000299ADB440);
  MEMORY[0x29C2AA470](v0, v2);
  MEMORY[0x29C2AA470](0xD000000000000034, 0x8000000299ADB470);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t protocol witness for SerialExecutor.enqueue(_:) in conformance DistributedRemoteActorReferenceExecutor(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return protocol witness for SerialExecutor.enqueue(_:) in conformance DistributedRemoteActorReferenceExecutor(a1, a2, a3, MEMORY[0x29EDCA368]);
}

{
  return protocol witness for SerialExecutor.enqueue(_:) in conformance DistributedRemoteActorReferenceExecutor(a1, a2, a3, MEMORY[0x29EDCA370]);
}

uint64_t protocol witness for SerialExecutor.enqueue(_:) in conformance DistributedRemoteActorReferenceExecutor(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v6 = *v4;
  v7 = lazy protocol witness table accessor for type DistributedRemoteActorReferenceExecutor and conformance DistributedRemoteActorReferenceExecutor(&lazy protocol witness table cache variable for type DistributedRemoteActorReferenceExecutor and conformance DistributedRemoteActorReferenceExecutor, &protocol conformance descriptor for DistributedRemoteActorReferenceExecutor);

  return a4(a1, v6, v7);
}

uint64_t protocol witness for Executor.enqueue(_:) in conformance DistributedRemoteActorReferenceExecutor(uint64_t a1)
{
  return MEMORY[0x2A1C73B08](a1, *v1);
}

{
  return MEMORY[0x2A1C73B10](a1, *v1);
}

void protocol witness for SerialExecutor.enqueue(_:) in conformance DistributedRemoteActorReferenceExecutor()
{
  v0 = ExecutorJob.description.getter();
  v2 = v1;
  _StringGuts.grow(_:)(88);
  MEMORY[0x29C2AA470](0xD000000000000022, 0x8000000299ADB440);
  MEMORY[0x29C2AA470](v0, v2);
  MEMORY[0x29C2AA470](0xD000000000000034, 0x8000000299ADB470);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

{
  protocol witness for Executor.enqueue(_:) in conformance DistributedRemoteActorReferenceExecutor();
}

uint64_t buildDefaultDistributedRemoteActorExecutor<A>(_:)()
{
  type metadata accessor for DistributedRemoteActorReferenceExecutor();
  inited = swift_initStaticObject();
  lazy protocol witness table accessor for type DistributedRemoteActorReferenceExecutor and conformance DistributedRemoteActorReferenceExecutor(&lazy protocol witness table cache variable for type DistributedRemoteActorReferenceExecutor and conformance DistributedRemoteActorReferenceExecutor, &protocol conformance descriptor for DistributedRemoteActorReferenceExecutor);
  return inited;
}

Swift::Int32 __swiftcall _getParameterCount(mangledMethodName:)(Swift::String mangledMethodName)
{
  specialized _copyCollectionToContiguousArray<A>(_:)(mangledMethodName._countAndFlagsBits, mangledMethodName._object);
  ParameterCount = swift_func_getParameterCount();

  return ParameterCount;
}

uint64_t _getParameterTypeInfo(mangledMethodName:genericEnv:genericArguments:into:length:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2);
  ParameterTypeInfo = swift_func_getParameterTypeInfo();

  return ParameterTypeInfo;
}

uint64_t _getReturnTypeInfo(mangledMethodName:genericEnv:genericArguments:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2);
  ReturnTypeInfo = swift_func_getReturnTypeInfo();

  return ReturnTypeInfo;
}

uint64_t swift_distributed_makeDistributedTargetAccessorNotFoundError(uint64_t a1, uint64_t a2, uint64_t a3)
{
  lazy protocol witness table accessor for type ExecuteDistributedTargetError and conformance ExecuteDistributedTargetError(a1, a2, a3);
  result = swift_allocError();
  *(v4 + 8) = 0xD00000000000002ELL;
  *(v4 + 16) = 0x8000000299ADB4B0;
  *v4 = 0;
  return result;
}

uint64_t LocalTestingDistributedActorSystem.__allocating_init()()
{
  v0 = swift_allocObject();
  LocalTestingDistributedActorSystem.init()();
  return v0;
}

void *LocalTestingDistributedActorSystem.init()()
{
  v0[2] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC11Distributed19LocalTestingActorIDV_AC0cF0_pTt0g5Tf4g_n(MEMORY[0x29EDCA190]);
  type metadata accessor for _Lock();
  v1 = swift_allocObject();
  v2 = swift_slowAlloc();
  *(v1 + 16) = v2;
  *v2 = 0;
  v0[3] = v1;
  v3 = swift_allocObject();
  v4 = swift_slowAlloc();
  *(v3 + 16) = v4;
  *v4 = 0;
  v0[4] = 0;
  v0[5] = v3;
  v0[6] = MEMORY[0x29EDCA1A0];
  v5 = swift_allocObject();
  v6 = swift_slowAlloc();
  *(v5 + 16) = v6;
  *v6 = 0;
  v0[7] = v5;
  return v0;
}

uint64_t LocalTestingDistributedActorSystem.resolve<A>(id:as:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = *(*(v3 + 24) + 16);
  os_unfair_lock_lock(v6);
  v7 = *(v3 + 16);
  if (!*(v7 + 16) || (v8 = specialized __RawDictionaryStorage.find<A>(_:)(v5, v4), (v9 & 1) == 0))
  {
    os_unfair_lock_unlock(v6);
    goto LABEL_7;
  }

  v10 = *(*(v7 + 56) + 16 * v8);
  swift_unknownObjectRetain();
  os_unfair_lock_unlock(v6);
  if (!v10)
  {
LABEL_7:
    *&v18 = 0;
    *(&v18 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(32);
    MEMORY[0x29C2AA470](0xD000000000000015, 0x8000000299ADB4E0);
    _print_unlocked<A, B>(_:_:)();
    v12 = MEMORY[0x29C2AA470](0x6C6C61636F6C2027, 0xE900000000000079);
    goto LABEL_8;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11Distributed0A5Actor_pMd, &_s11Distributed0A5Actor_pMR);
  if (swift_dynamicCast())
  {
    return v17;
  }

  *&v18 = 0;
  *(&v18 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(31);
  MEMORY[0x29C2AA470](0xD000000000000016, 0x8000000299ADB500);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x29C2AA470](0x2073612027, 0xE500000000000000);
  swift_getMetatypeMetadata();
  v16 = _typeName(_:qualified:)();
  MEMORY[0x29C2AA470](v16);

LABEL_8:
  lazy protocol witness table accessor for type LocalTestingDistributedActorSystemError and conformance LocalTestingDistributedActorSystemError(v12, v13, v14);
  swift_allocError();
  *v15 = v18;
  return swift_willThrow();
}

void LocalTestingDistributedActorSystem.assignID<A>(_:)(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = *(*(v1 + 40) + 16);
  os_unfair_lock_lock(v4);
  v5 = *(v2 + 32);
  if (__OFADD__(v5, 1))
  {
    __break(1u);
  }

  else
  {
    *(v2 + 32) = v5 + 1;
    os_unfair_lock_unlock(v4);
    v6 = dispatch thunk of CustomStringConvertible.description.getter();
    v8 = v7;
    v9 = *(*(v2 + 56) + 16);
    os_unfair_lock_lock(v9);

    specialized Set._Variant.insert(_:)(&v10, v6, v8);

    os_unfair_lock_unlock(v9);
    *a1 = v6;
    a1[1] = v8;
  }
}

void LocalTestingDistributedActorSystem.actorReady<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(v3[7] + 16);
  os_unfair_lock_lock(v8);
  v9 = v3[6];
  v15 = a1;

  dispatch thunk of Identifiable.id.getter();
  v10 = specialized Set.contains(_:)(v16, v17, v9);

  os_unfair_lock_unlock(v8);
  if (v10)
  {
    v11 = *(v3[3] + 16);
    os_unfair_lock_lock(v11);
    v15 = a1;
    dispatch thunk of Identifiable.id.getter();
    v12 = v16;
    v13 = v17;
    swift_unknownObjectRetain();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = v4[2];
    v4[2] = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, v12, v13, isUniquelyReferenced_nonNull_native, &v15, a2, a3);

    v4[2] = v15;
    os_unfair_lock_unlock(v11);
  }

  else
  {
    _StringGuts.grow(_:)(45);
    MEMORY[0x29C2AA470](0xD000000000000024, 0x8000000299ADB560);
    dispatch thunk of Identifiable.id.getter();
    _print_unlocked<A, B>(_:_:)();

    MEMORY[0x29C2AA470](0x79646165722027, 0xE700000000000000);
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }
}

uint64_t specialized Set.contains(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

Swift::Void __swiftcall LocalTestingDistributedActorSystem.resignID(_:)(Distributed::LocalTestingActorID a1)
{
  v2 = *a1.id._countAndFlagsBits;
  v3 = *(a1.id._countAndFlagsBits + 8);
  v4 = *(*(v1 + 24) + 16);
  os_unfair_lock_lock(v4);
  specialized Dictionary._Variant.removeValue(forKey:)(v2, v3);
  swift_unknownObjectRelease();

  os_unfair_lock_unlock(v4);
}

uint64_t LocalTestingDistributedActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[3] = a2;
  v7[4] = a7;
  swift_conformsToProtocol();
  swift_conformsToProtocol();
  v9 = a3[1];
  v7[5] = *a3;
  v7[6] = v9;

  return MEMORY[0x2A1C73D48](LocalTestingDistributedActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:), 0, 0);
}

uint64_t LocalTestingDistributedActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)()
{
  v2 = v0[5];
  v1 = v0[6];
  _StringGuts.grow(_:)(79);
  MEMORY[0x29C2AA470](0xD000000000000021, 0x8000000299ADB590);
  v3._countAndFlagsBits = v2;
  v3._object = v1;
  v5 = _getFunctionFullNameFromMangledName(mangledName:)(v3);
  countAndFlagsBits = v5.value._countAndFlagsBits;
  if (v5.value._object)
  {
    object = v5.value._object;
  }

  else
  {
    object = v0[6];

    countAndFlagsBits = v0[5];
  }

  v7 = v0[3];
  MEMORY[0x29C2AA470](countAndFlagsBits, object);

  MEMORY[0x29C2AA470](0x6F746361206E6F20, 0xEA00000000002072);
  v0[2] = v7;
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  MEMORY[0x29C2AA470](0xD000000000000020, 0x8000000299ADB5C0);
  return _assertionFailure(_:_:file:line:flags:)();
}

uint64_t LocalTestingDistributedActorSystem.remoteCallVoid<A, B>(on:target:invocation:throwing:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = swift_task_alloc();
  *(v8 + 16) = v13;
  *v13 = v8;
  v13[1] = LocalTestingDistributedActorSystem.remoteCallVoid<A, B>(on:target:invocation:throwing:);

  return specialized LocalTestingDistributedActorSystem.remoteCallVoid<A, B>(on:target:invocation:throwing:)(a1, a2, a3, a5);
}

uint64_t LocalTestingDistributedActorSystem.remoteCallVoid<A, B>(on:target:invocation:throwing:)()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void *LocalTestingDistributedActorSystem.deinit()
{

  return v0;
}

uint64_t LocalTestingDistributedActorSystem.__deallocating_deinit()
{

  return MEMORY[0x2A1C73398](v0, 64, 7);
}

uint64_t LocalTestingDistributedActorSystem.invokeHandlerOnReturn(handler:resultBuffer:metatype:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  return MEMORY[0x2A1C73D48](LocalTestingDistributedActorSystem.invokeHandlerOnReturn(handler:resultBuffer:metatype:), 0, 0);
}

uint64_t LocalTestingDistributedActorSystem.invokeHandlerOnReturn(handler:resultBuffer:metatype:)()
{
  v1 = dynamic_cast_existential_2_unconditional(v0[3], v0[3], MEMORY[0x29EDC9B40], MEMORY[0x29EDC9908]);
  v3 = v2;
  v5 = v4;
  v6 = swift_task_alloc();
  v0[4] = v6;
  *v6 = v0;
  v6[1] = LocalTestingDistributedActorSystem.invokeHandlerOnReturn(handler:resultBuffer:metatype:);
  v7 = v0[2];

  return doInvokeOnReturn #1 <A>(returnType:) in LocalTestingDistributedActorSystem.invokeHandlerOnReturn(handler:resultBuffer:metatype:)(v1, v7, v1, v3, v5);
}

{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t doInvokeOnReturn #1 <A>(returnType:) in LocalTestingDistributedActorSystem.invokeHandlerOnReturn(handler:resultBuffer:metatype:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v5[7] = *(a3 - 8);
  v5[8] = swift_task_alloc();

  return MEMORY[0x2A1C73D48](doInvokeOnReturn #1 <A>(returnType:) in LocalTestingDistributedActorSystem.invokeHandlerOnReturn(handler:resultBuffer:metatype:), 0, 0);
}

uint64_t doInvokeOnReturn #1 <A>(returnType:) in LocalTestingDistributedActorSystem.invokeHandlerOnReturn(handler:resultBuffer:metatype:)()
{
  UnsafeRawPointer.load<A>(fromByteOffset:as:)();
  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  *v1 = v0;
  v1[1] = doInvokeOnReturn #1 <A>(returnType:) in LocalTestingDistributedActorSystem.invokeHandlerOnReturn(handler:resultBuffer:metatype:);
  v2 = *(v0 + 32);

  return LocalTestingInvocationResultHandler.onReturn<A>(value:)(v1, v2);
}

{
  v2 = *(*v1 + 64);
  v3 = *(*v1 + 56);
  v4 = *(*v1 + 32);
  *(*v1 + 80) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = doInvokeOnReturn #1 <A>(returnType:) in LocalTestingDistributedActorSystem.invokeHandlerOnReturn(handler:resultBuffer:metatype:);
  }

  else
  {
    v5 = doInvokeOnReturn #1 <A>(returnType:) in LocalTestingDistributedActorSystem.invokeHandlerOnReturn(handler:resultBuffer:metatype:);
  }

  return MEMORY[0x2A1C73D48](v5, 0, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

{

  v1 = *(v0 + 8);

  return v1();
}

void protocol witness for DistributedActorSystem.resignID(_:) in conformance LocalTestingDistributedActorSystem(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(*(*v1 + 24) + 16);
  os_unfair_lock_lock(v4);
  specialized Dictionary._Variant.removeValue(forKey:)(v2, v3);
  swift_unknownObjectRelease();

  os_unfair_lock_unlock(v4);
}

uint64_t protocol witness for DistributedActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:) in conformance LocalTestingDistributedActorSystem(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  swift_conformsToProtocol();
  swift_conformsToProtocol();
  v13 = swift_task_alloc();
  *(v9 + 16) = v13;
  *v13 = v9;
  v13[1] = protocol witness for DistributedActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:) in conformance LocalTestingDistributedActorSystem;

  return LocalTestingDistributedActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)(v13, a2, a3, v14, v15, v16, a7);
}

uint64_t protocol witness for DistributedActorSystem.remoteCallVoid<A, B>(on:target:invocation:throwing:) in conformance LocalTestingDistributedActorSystem(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = swift_task_alloc();
  *(v8 + 16) = v13;
  *v13 = v8;
  v13[1] = protocol witness for DistributedActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:) in conformance LocalTestingDistributedActorSystem;

  return specialized LocalTestingDistributedActorSystem.remoteCallVoid<A, B>(on:target:invocation:throwing:)(a1, a2, a3, a5);
}

uint64_t protocol witness for DistributedActorSystem.invokeHandlerOnReturn(handler:resultBuffer:metatype:) in conformance LocalTestingDistributedActorSystem(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  return MEMORY[0x2A1C73D48](protocol witness for DistributedActorSystem.invokeHandlerOnReturn(handler:resultBuffer:metatype:) in conformance LocalTestingDistributedActorSystem, 0, 0);
}

uint64_t protocol witness for DistributedActorSystem.invokeHandlerOnReturn(handler:resultBuffer:metatype:) in conformance LocalTestingDistributedActorSystem()
{
  v1 = dynamic_cast_existential_2_unconditional(v0[3], v0[3], MEMORY[0x29EDC9B40], MEMORY[0x29EDC9908]);
  v3 = v2;
  v5 = v4;
  v6 = swift_task_alloc();
  v0[4] = v6;
  *v6 = v0;
  v6[1] = protocol witness for DistributedActorSystem.invokeHandlerOnReturn(handler:resultBuffer:metatype:) in conformance LocalTestingDistributedActorSystem;
  v7 = v0[2];

  return doInvokeOnReturn #1 <A>(returnType:) in LocalTestingDistributedActorSystem.invokeHandlerOnReturn(handler:resultBuffer:metatype:)(v1, v7, v1, v3, v5);
}

uint64_t LocalTestingActorID.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Decoder.singleValueContainer()();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v9, v9[3]);
    v5 = dispatch thunk of SingleValueDecodingContainer.decode(_:)();
    v7 = v6;
    __swift_destroy_boxed_opaque_existential_1(v9);
    *a2 = v5;
    a2[1] = v7;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t LocalTestingActorID.encode(to:)(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  __swift_mutable_project_boxed_opaque_existential_1(v2, v2[3]);
  dispatch thunk of SingleValueEncodingContainer.encode(_:)();
  return __swift_destroy_boxed_opaque_existential_1(v2);
}

uint64_t static RemoteCallTarget.== infix(_:_:)(void *a1, void *a2)
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

Swift::Int RemoteCallTarget.hashValue.getter()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance RemoteCallTarget(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Decodable.init(from:) in conformance LocalTestingActorID@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Decoder.singleValueContainer()();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v9, v9[3]);
    v5 = dispatch thunk of SingleValueDecodingContainer.decode(_:)();
    v7 = v6;
    __swift_destroy_boxed_opaque_existential_1(v9);
    *a2 = v5;
    a2[1] = v7;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t protocol witness for Encodable.encode(to:) in conformance LocalTestingActorID(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  __swift_mutable_project_boxed_opaque_existential_1(v2, v2[3]);
  dispatch thunk of SingleValueEncodingContainer.encode(_:)();
  return __swift_destroy_boxed_opaque_existential_1(v2);
}

void LocalTestingInvocationEncoder.recordArgument<A>(_:)(uint64_t a1, uint64_t a2)
{
  swift_conformsToProtocol();
  swift_conformsToProtocol();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void LocalTestingInvocationEncoder.recordReturnType<A>(_:)(uint64_t a1, uint64_t a2)
{
  swift_conformsToProtocol();
  swift_conformsToProtocol();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void protocol witness for DistributedTargetInvocationEncoder.recordArgument<A>(_:) in conformance LocalTestingInvocationEncoder(uint64_t a1, uint64_t a2)
{
  swift_conformsToProtocol();
  v3 = swift_conformsToProtocol();
  LocalTestingInvocationEncoder.recordArgument<A>(_:)(v3, a2);
}

void protocol witness for DistributedTargetInvocationEncoder.recordReturnType<A>(_:) in conformance LocalTestingInvocationEncoder(uint64_t a1, uint64_t a2)
{
  swift_conformsToProtocol();
  v3 = swift_conformsToProtocol();
  LocalTestingInvocationEncoder.recordReturnType<A>(_:)(v3, a2);
}

void LocalTestingInvocationDecoder.decodeNextArgument<A>()(uint64_t a1)
{
  swift_conformsToProtocol();
  swift_conformsToProtocol();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void protocol witness for DistributedTargetInvocationDecoder.decodeNextArgument<A>() in conformance LocalTestingInvocationDecoder(uint64_t a1)
{
  swift_conformsToProtocol();
  swift_conformsToProtocol();
  LocalTestingInvocationDecoder.decodeNextArgument<A>()(a1);
}

uint64_t LocalTestingInvocationResultHandler.onReturn<A>(value:)(uint64_t a1, uint64_t a2)
{
  swift_conformsToProtocol();
  swift_conformsToProtocol();

  return MEMORY[0x2A1C73D48](LocalTestingInvocationResultHandler.onReturn<A>(value:), 0, 0);
}

uint64_t LocalTestingInvocationResultHandler.onReturnVoid()()
{
  return MEMORY[0x2A1C73D48](LocalTestingInvocationResultHandler.onReturnVoid(), 0, 0);
}

{
  return _assertionFailure(_:_:file:line:flags:)();
}

uint64_t LocalTestingInvocationResultHandler.onThrow<A>(error:)()
{
  return MEMORY[0x2A1C73D48](LocalTestingInvocationResultHandler.onThrow<A>(error:), 0, 0);
}

{
  return _assertionFailure(_:_:file:line:flags:)();
}

uint64_t protocol witness for DistributedTargetInvocationResultHandler.onReturn<A>(value:) in conformance LocalTestingInvocationResultHandler(uint64_t a1, uint64_t a2)
{
  swift_conformsToProtocol();
  swift_conformsToProtocol();
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = protocol witness for DistributedActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:) in conformance LocalTestingDistributedActorSystem;

  return LocalTestingInvocationResultHandler.onReturn<A>(value:)(v4, a2);
}

uint64_t LocalTestingDistributedActorSystemError.message.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t _Lock.__deallocating_deinit()
{
  MEMORY[0x29C2AAA60](*(v0 + 16), -1, -1);

  return MEMORY[0x2A1C73398](v0, 24, 7);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1)
{
  type metadata accessor for CodingUserInfoKey();
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v2);
}

unint64_t lazy protocol witness table accessor for type DistributedActorCodingError and conformance DistributedActorCodingError(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type DistributedActorCodingError and conformance DistributedActorCodingError;
  if (!lazy protocol witness table cache variable for type DistributedActorCodingError and conformance DistributedActorCodingError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DistributedActorCodingError and conformance DistributedActorCodingError);
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(void *a1)
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

uint64_t outlined init with copy of Decoder(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t outlined init with copy of Any(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
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

uint64_t _sxqd__s5Error_pIghHgIrzo_xqd__sAA_pIeghHgIrzr_11Distributed0B5ActorRzs8SendableRd__r__lTRTA(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = v3[2];
  v9 = v3[3];
  v10 = v3[4];
  v11 = v3[5];
  v12 = v3[6];
  v13 = swift_task_alloc();
  *(v4 + 16) = v13;
  *v13 = v4;
  v13[1] = protocol witness for DistributedActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:) in conformance LocalTestingDistributedActorSystem;

  return _sxqd__s5Error_pIghHgIrzo_xqd__sAA_pIeghHgIrzr_11Distributed0B5ActorRzs8SendableRd__r__lTR(a1, a2, v11, v12, v8, v9, v10, a3);
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

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2, v4);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2)
{
  v21 = a1;
  v4 = type metadata accessor for CodingUserInfoKey();
  MEMORY[0x2A1C7C4A8](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  v20 = v2 + 64;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v13 = *(v5 + 16);
    v11 = v5 + 16;
    v12 = v13;
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    do
    {
      v16 = v11;
      v12(v7, *(v22 + 48) + v14 * v9, v4);
      v17 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*v15)(v7, v4);
      if (v17)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      v11 = v16;
    }

    while (((*(v20 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

void *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 3);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
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

      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * (v12 >> 3);
      if (v5)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v10 = MEMORY[0x29EDCA190];
      if (result)
      {
LABEL_15:
        specialized UnsafeMutablePointer.moveInitialize(from:count:)(a4 + 32, v8, (v10 + 32));
        *(a4 + 2) = 0;
LABEL_18:

        return v10;
      }
    }

    specialized _ArrayBuffer._copyContents(subRange:initializing:)(0, v8, (v10 + 32), a4);
    goto LABEL_18;
  }

  __break(1u);
  return result;
}

char *specialized UnsafeMutablePointer.moveInitialize(from:count:)(char *__src, uint64_t a2, char *__dst)
{
  if (a2 < 0)
  {
    __src = _fatalErrorMessage(_:_:file:line:flags:)();
    __break(1u);
  }

  else if (__dst != __src || &__src[8 * a2] <= __dst)
  {

    return memmove(__dst, __src, 8 * a2);
  }

  return __src;
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

uint64_t specialized _NativeSet.resize(capacity:)(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy11Distributed19LocalTestingActorIDVGMd, &_ss11_SetStorageCy11Distributed19LocalTestingActorIDVGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    v9 = -1;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    v10 = v9 & *(v3 + 56);
    for (i = (v8 + 63) >> 6; v10; result = specialized _NativeSet._unsafeInsertNew(_:)(*v15, v15[1], v5))
    {
      v12 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_11:
      v15 = (*(v3 + 48) + 16 * (v12 | (v6 << 6)));
    }

    v13 = v6;
    while (1)
    {
      v6 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        return result;
      }

      if (v6 >= i)
      {
        break;
      }

      v14 = v7[v6];
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v10 = (v14 - 1) & v14;
        goto LABEL_11;
      }
    }

    v16 = 1 << *(v3 + 32);
    if (v16 >= 64)
    {
      specialized UnsafeMutablePointer.assign(repeating:count:)(0, (v16 + 63) >> 6, (v3 + 56));
    }

    else
    {
      *v7 = -1 << v16;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

Swift::Int specialized _NativeSet._unsafeInsertNew(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  result = Hasher._finalize()();
  v7 = a3 + 56;
  v8 = -1 << *(a3 + 32);
  v9 = result & ~v8;
  v10 = v9 >> 6;
  v11 = *(a3 + 56 + 8 * (v9 >> 6));
  v12 = 1 << v9;
  if (((1 << v9) & v11) != 0)
  {
    v13 = ~v8;
    while (1)
    {
      v14 = (*(a3 + 48) + 16 * v9);
      if (*v14 == a1 && v14[1] == a2)
      {
        break;
      }

      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if (result)
      {
        break;
      }

      v9 = (v9 + 1) & v13;
      v10 = v9 >> 6;
      v11 = *(v7 + 8 * (v9 >> 6));
      v12 = 1 << v9;
      if (((1 << v9) & v11) == 0)
      {
        goto LABEL_9;
      }
    }

    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
LABEL_9:
    *(v7 + 8 * v10) = v12 | v11;
    v16 = (*(a3 + 48) + 16 * v9);
    *v16 = a1;
    v16[1] = a2;
    ++*(a3 + 16);
  }

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

unint64_t specialized UnsafeMutablePointer.assign(repeating:count:)(unint64_t result, unint64_t a2, int64x2_t *a3)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    result = _fatalErrorMessage(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  if (a2)
  {
    if (a2 < 4)
    {
      v3 = 0;
LABEL_8:
      v7 = a2 - v3;
      v8 = &a3->i64[v3];
      do
      {
        *v8++ = result;
        --v7;
      }

      while (v7);
      return result;
    }

    v3 = a2 & 0x7FFFFFFFFFFFFFFCLL;
    v4 = vdupq_n_s64(result);
    v5 = a3 + 1;
    v6 = a2 & 0x7FFFFFFFFFFFFFFCLL;
    do
    {
      v5[-1] = v4;
      *v5 = v4;
      v5 += 2;
      v6 -= 4;
    }

    while (v6);
    if (v3 != a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *specialized _NativeSet.copy()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy11Distributed19LocalTestingActorIDVGMd, &_ss11_SetStorageCy11Distributed19LocalTestingActorIDVGMR);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = ((1 << *(v3 + 32)) + 63) >> 6;
    result = (v3 + 56);
    if (v4 != v2 || result >= v2 + 56 + 8 * v5)
    {
      result = memmove(result, (v2 + 56), 8 * v5);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

      v16 = *(v2 + 56 + 8 * v8);
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

Swift::Int specialized _NativeSet.copyAndResize(capacity:)(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy11Distributed19LocalTestingActorIDVGMd, &_ss11_SetStorageCy11Distributed19LocalTestingActorIDVGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    v8 = -1;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    v9 = v8 & *(v3 + 56);
    for (i = (v7 + 63) >> 6; v9; result = specialized _NativeSet._unsafeInsertNew(_:)(v15, v16, v5))
    {
      v11 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_11:
      v14 = (*(v3 + 48) + 16 * (v11 | (v6 << 6)));
      v15 = *v14;
      v16 = v14[1];
    }

    v12 = v6;
    while (1)
    {
      v6 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v6 >= i)
      {
        goto LABEL_13;
      }

      v13 = *(v3 + 56 + 8 * v6);
      ++v12;
      if (v13)
      {
        v11 = __clz(__rbit64(v13));
        v9 = (v13 - 1) & v13;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_13:

    *v2 = v5;
  }

  return result;
}

uint64_t specialized Dictionary._Variant.removeValue(forKey:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *v2;
  v11 = *v3;
  if (!isUniquelyReferenced_nonNull_native)
  {
    specialized _NativeDictionary.copy()();
    v8 = v11;
  }

  v9 = *(*(v8 + 56) + 16 * v6);
  specialized _NativeDictionary._delete(at:)(v6, v8);
  *v3 = v8;
  return v9;
}

uint64_t specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy11Distributed19LocalTestingActorIDVAC0cF0_pGMd, &_ss18_DictionaryStorageCy11Distributed19LocalTestingActorIDVAC0cF0_pGMR);
  v28 = v4;
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (!v5[1].i64[0])
  {
LABEL_21:

    *v3 = v7;
    return result;
  }

  v8 = 0;
  v9 = v5 + 4;
  v10 = 1 << v5[2].i8[0];
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & v5[4].i64[0];
  v13 = (v10 + 63) >> 6;
  v14 = v6 + 64;
  if (!v12)
  {
LABEL_6:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_23;
      }

      if (v8 >= v13)
      {
        break;
      }

      v17 = v9->u64[v8];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v12 = (v17 - 1) & v17;
        goto LABEL_11;
      }
    }

    v3 = v2;
    if (v28)
    {
      v26 = 1 << v5[2].i8[0];
      if (v26 > 63)
      {
        specialized UnsafeMutablePointer.assign(repeating:count:)(0, (v26 + 63) >> 6, v5 + 4);
      }

      else
      {
        v9->i64[0] = -1 << v26;
      }

      v5[1].i64[0] = 0;
    }

    goto LABEL_21;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_11:
    v18 = 16 * (v15 | (v8 << 6));
    v19 = (v5[3].i64[0] + v18);
    v20 = *v19;
    v21 = v19[1];
    v29 = *(v5[3].i64[1] + v18);
    if ((v28 & 1) == 0)
    {

      swift_unknownObjectRetain();
    }

    Hasher.init(_seed:)();
    String.hash(into:)();
    v22 = Hasher._finalize()();
    v23 = specialized __RawDictionaryStorage.find<A>(_:hashValue:)(v20, v21, v22);
    if (v24)
    {
      break;
    }

    *(v14 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    v25 = (v7[6] + 16 * v23);
    *v25 = v20;
    v25[1] = v21;
    *(v7[7] + 16 * v23) = v29;
    ++v7[2];
    if (!v12)
    {
      goto LABEL_6;
    }
  }

LABEL_23:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

unint64_t specialized _NativeDictionary._delete(at:)(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(a2 + 64 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    result = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v8 = (result + 1) & v7;
      do
      {
        Hasher.init(_seed:)();

        String.hash(into:)();

        result = Hasher._finalize()();
        v9 = result & v7;
        if (v3 >= v8)
        {
          if (v9 < v8)
          {
            goto LABEL_5;
          }
        }

        else if (v9 >= v8)
        {
          goto LABEL_11;
        }

        if (v3 >= v9)
        {
LABEL_11:
          v10 = *(a2 + 48);
          v11 = (v10 + 16 * v3);
          v12 = (v10 + 16 * v6);
          if (v3 != v6 || v11 >= v12 + 1)
          {
            *v11 = *v12;
          }

          v13 = *(a2 + 56);
          v14 = (v13 + 16 * v3);
          v15 = (v13 + 16 * v6);
          if (v3 != v6 || v14 >= v15 + 1)
          {
            *v14 = *v15;
            v3 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v16 = *(a2 + 16);
  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v18;
    ++*(a2 + 36);
  }

  return result;
}

void *specialized _NativeDictionary.copy()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy11Distributed19LocalTestingActorIDVAC0cF0_pGMd, &_ss18_DictionaryStorageCy11Distributed19LocalTestingActorIDVAC0cF0_pGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = ((1 << *(v3 + 32)) + 63) >> 6;
    result = (v3 + 64);
    if (v4 != v2 || result >= v2 + 64 + 8 * v5)
    {
      result = memmove(result, (v2 + 64), 8 * v5);
    }

    v8 = 0;
    v4[2] = *(v2 + 16);
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
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v2 + 56) + v17);
        v22 = (v4[6] + v17);
        *v22 = v20;
        v22[1] = v19;
        *(v4[7] + v17) = v21;

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

void *specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_10;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    while (1)
    {
      v3 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v2, 0);
      if (v2 < 0)
      {
        break;
      }

      v4 = v3;
      v5 = _StringGuts.copyUTF8(into:)();
      if (v6)
      {
        goto LABEL_14;
      }

      if (v5 == v2)
      {
        return v4;
      }

      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
LABEL_10:
      v2 = String.UTF8View._foreignCount()();
      if (!v2)
      {
        return MEMORY[0x29EDCA190];
      }
    }

    _fatalErrorMessage(_:_:file:line:flags:)();
    __break(1u);
LABEL_14:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    return MEMORY[0x29EDCA190];
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ExecuteDistributedTargetError and conformance ExecuteDistributedTargetError(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type ExecuteDistributedTargetError and conformance ExecuteDistributedTargetError;
  if (!lazy protocol witness table cache variable for type ExecuteDistributedTargetError and conformance ExecuteDistributedTargetError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ExecuteDistributedTargetError and conformance ExecuteDistributedTargetError);
  }

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
    return MEMORY[0x29EDCA190];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *specialized _ArrayBuffer._copyContents(subRange:initializing:)(uint64_t a1, uint64_t a2, char *__dst, uint64_t a4)
{
  v4 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
  }

  else if ((v4 & 0x8000000000000000) == 0)
  {
    v5 = (a4 + 8 * a1 + 32);
    v6 = 8 * v4;
    v7 = &__dst[v6];
    if (v5 >= &__dst[v6] || &v5[v6] <= __dst)
    {
      memcpy(__dst, v5, v6);
      return v7;
    }
  }

  result = _fatalErrorMessage(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void *_sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC11Distributed19LocalTestingActorIDV_AC0cF0_pTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy11Distributed19LocalTestingActorIDVAC0cF0_pGMd, &_ss18_DictionaryStorageCy11Distributed19LocalTestingActorIDVAC0cF0_pGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 2)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v14 = *i;

      swift_unknownObjectRetain();
      v7 = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((v7 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v7;
      v9 = (v3[6] + 16 * v7);
      *v9 = v5;
      v9[1] = v6;
      *(v3[7] + 16 * v7) = v14;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        __break(1u);
        break;
      }

      v3[2] = v12;
      if (!--v1)
      {

        return v3;
      }
    }

    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    return MEMORY[0x29EDCA198];
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type LocalTestingDistributedActorSystemError and conformance LocalTestingDistributedActorSystemError(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type LocalTestingDistributedActorSystemError and conformance LocalTestingDistributedActorSystemError;
  if (!lazy protocol witness table cache variable for type LocalTestingDistributedActorSystemError and conformance LocalTestingDistributedActorSystemError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LocalTestingDistributedActorSystemError and conformance LocalTestingDistributedActorSystemError);
  }

  return result;
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5, uint64_t a6, uint64_t a7)
{
  v13 = *a5;
  v14 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v16 = v13[2];
  v17 = (v15 & 1) == 0;
  v18 = __OFADD__(v16, v17);
  v19 = v16 + v17;
  if (v18)
  {
    __break(1u);
    goto LABEL_17;
  }

  v20 = v15;
  v21 = v13[3];
  if (v21 < v19 || (a4 & 1) == 0)
  {
    if (v21 < v19 || (a4 & 1) != 0)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v19, a4 & 1);
      v14 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
      if ((v20 & 1) != (v23 & 1))
      {
LABEL_18:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v22 = v14;
      specialized _NativeDictionary.copy()();
      v14 = v22;
    }
  }

  v24 = *a5;
  if (v20)
  {
    v25 = (v24[7] + 16 * v14);
    *v25 = a1;
    v25[1] = a7;

    return swift_unknownObjectRelease();
  }

  v24[(v14 >> 6) + 8] |= 1 << v14;
  v27 = (v24[6] + 16 * v14);
  *v27 = a2;
  v27[1] = a3;
  v28 = (v24[7] + 16 * v14);
  *v28 = a1;
  v28[1] = a7;
  v29 = v24[2];
  v18 = __OFADD__(v29, 1);
  v30 = v29 + 1;
  if (v18)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v24[2] = v30;
}

uint64_t specialized LocalTestingDistributedActorSystem.remoteCallVoid<A, B>(on:target:invocation:throwing:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a1;
  v4[4] = a4;
  v5 = a2[1];
  v4[5] = *a2;
  v4[6] = v5;
  return MEMORY[0x2A1C73D48](specialized LocalTestingDistributedActorSystem.remoteCallVoid<A, B>(on:target:invocation:throwing:), 0, 0);
}

uint64_t specialized LocalTestingDistributedActorSystem.remoteCallVoid<A, B>(on:target:invocation:throwing:)()
{
  v2 = v0[5];
  v1 = v0[6];
  _StringGuts.grow(_:)(80);
  MEMORY[0x29C2AA470](0xD000000000000021, 0x8000000299ADB590);
  v3._countAndFlagsBits = v2;
  v3._object = v1;
  v5 = _getFunctionFullNameFromMangledName(mangledName:)(v3);
  countAndFlagsBits = v5.value._countAndFlagsBits;
  if (v5.value._object)
  {
    object = v5.value._object;
  }

  else
  {
    object = v0[6];

    countAndFlagsBits = v0[5];
  }

  v7 = v0[3];
  MEMORY[0x29C2AA470](countAndFlagsBits, object);

  MEMORY[0x29C2AA470](0x6F746361206E6F20, 0xEA00000000002072);
  v0[2] = v7;
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  MEMORY[0x29C2AA470](0xD000000000000021, 0x8000000299ADB7D0);
  return _assertionFailure(_:_:file:line:flags:)();
}

uint64_t dynamic_cast_existential_2_unconditional(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_conformsToProtocol2();
  if (result)
  {
    result = swift_conformsToProtocol2();
    if (result)
    {
      return a1;
    }
  }

  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type RemoteCallTarget and conformance RemoteCallTarget(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type RemoteCallTarget and conformance RemoteCallTarget;
  if (!lazy protocol witness table cache variable for type RemoteCallTarget and conformance RemoteCallTarget)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RemoteCallTarget and conformance RemoteCallTarget);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ExecuteDistributedTargetError.ErrorCode and conformance ExecuteDistributedTargetError.ErrorCode(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type ExecuteDistributedTargetError.ErrorCode and conformance ExecuteDistributedTargetError.ErrorCode;
  if (!lazy protocol witness table cache variable for type ExecuteDistributedTargetError.ErrorCode and conformance ExecuteDistributedTargetError.ErrorCode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ExecuteDistributedTargetError.ErrorCode and conformance ExecuteDistributedTargetError.ErrorCode);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for ExecuteDistributedTargetError(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table accessor for type ExecuteDistributedTargetError and conformance ExecuteDistributedTargetError(a1, a2, a3);
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for DistributedActorCodingError(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table accessor for type DistributedActorCodingError and conformance DistributedActorCodingError(a1, a2, a3);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type DistributedRemoteActorReferenceExecutor and conformance DistributedRemoteActorReferenceExecutor(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for DistributedRemoteActorReferenceExecutor();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type LocalTestingActorID and conformance LocalTestingActorID(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type LocalTestingActorID and conformance LocalTestingActorID;
  if (!lazy protocol witness table cache variable for type LocalTestingActorID and conformance LocalTestingActorID)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LocalTestingActorID and conformance LocalTestingActorID);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LocalTestingActorID and conformance LocalTestingActorID;
  if (!lazy protocol witness table cache variable for type LocalTestingActorID and conformance LocalTestingActorID)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LocalTestingActorID and conformance LocalTestingActorID);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for LocalTestingDistributedActorSystemError(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table accessor for type LocalTestingDistributedActorSystemError and conformance LocalTestingDistributedActorSystemError(a1, a2, a3);
  *(a1 + 8) = result;
  return result;
}

uint64_t dispatch thunk of DistributedActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v20 = (*(a13 + 120) + **(a13 + 120));
  v18 = swift_task_alloc();
  *(v13 + 16) = v18;
  *v18 = v13;
  v18[1] = LocalTestingDistributedActorSystem.remoteCallVoid<A, B>(on:target:invocation:throwing:);

  return v20(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13);
}

uint64_t dispatch thunk of DistributedActorSystem.remoteCallVoid<A, B>(on:target:invocation:throwing:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v20 = (*(a10 + 128) + **(a10 + 128));
  v18 = swift_task_alloc();
  *(v10 + 16) = v18;
  *v18 = v10;
  v18[1] = protocol witness for DistributedActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:) in conformance LocalTestingDistributedActorSystem;

  return v20(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
}

uint64_t dispatch thunk of DistributedActorSystem.invokeHandlerOnReturn(handler:resultBuffer:metatype:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 136) + **(a5 + 136));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = protocol witness for DistributedActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:) in conformance LocalTestingDistributedActorSystem;

  return v13(a1, a2, a3, a4, a5);
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t type metadata completion function for RemoteCallArgument(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for RemoteCallArgument(void *a1, void *a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  if (v6 <= 7 && (*(v5 + 80) & 0x100000) == 0 && ((-33 - v6) | v6) - *(v5 + 64) >= 0xFFFFFFFFFFFFFFE7)
  {
    v10 = a2[1];
    *a1 = *a2;
    a1[1] = v10;
    v11 = ((a1 + 23) & 0xFFFFFFFFFFFFFFF8);
    v12 = ((a2 + 23) & 0xFFFFFFFFFFFFFFF8);
    *v11 = *v12;
    v11[1] = v12[1];
    v13 = *(v5 + 16);

    v13(v11 + 2, v12 + 2, v4);
  }

  else
  {
    v9 = *a2;
    *a1 = *a2;
    a1 = (v9 + ((v6 & 0xF8 ^ 0x1F8) & (v6 + 16)));
  }

  return a1;
}

uint64_t destroy for RemoteCallArgument(uint64_t a1, uint64_t a2)
{

  v4 = *(*(a2 + 16) - 8);
  v5 = *(v4 + 8);
  v6 = (((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + *(v4 + 80) + 16) & ~*(v4 + 80);

  return v5(v6);
}

void *initializeWithCopy for RemoteCallArgument(void *a1, void *a2, uint64_t a3)
{
  v4 = a2[1];
  *a1 = *a2;
  a1[1] = v4;
  v5 = ((a1 + 23) & 0xFFFFFFFFFFFFFFF8);
  v6 = ((a2 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v5 = *v6;
  v5[1] = v6[1];
  v7 = *(a3 + 16);
  v8 = *(*(v7 - 8) + 16);
  v9 = *(*(v7 - 8) + 80);
  v10 = v5 + v9 + 16;
  v11 = v6 + v9 + 16;

  v8(v10 & ~v9, v11 & ~v9, v7);
  return a1;
}

void *assignWithCopy for RemoteCallArgument(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  a1[1] = a2[1];

  v6 = ((a1 + 23) & 0xFFFFFFFFFFFFFFF8);
  v7 = ((a2 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v6 = *v7;
  v6[1] = v7[1];

  v8 = *(*(a3 + 16) - 8);
  (*(v8 + 24))((v6 + *(v8 + 80) + 16) & ~*(v8 + 80), (v7 + *(v8 + 80) + 16) & ~*(v8 + 80));
  return a1;
}

_OWORD *initializeWithTake for RemoteCallArgument(_OWORD *a1, _OWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = ((a1 + 23) & 0xFFFFFFFFFFFFFFF8);
  v5 = ((a2 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v4 = *v5;
  v6 = *(*(a3 + 16) - 8);
  (*(v6 + 32))((v4 + *(v6 + 80) + 16) & ~*(v6 + 80), (v5 + *(v6 + 80) + 16) & ~*(v6 + 80));
  return a1;
}

void *assignWithTake for RemoteCallArgument(void *a1, void *a2, uint64_t a3)
{
  v6 = a2[1];
  *a1 = *a2;
  a1[1] = v6;

  v7 = ((a1 + 23) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((a2 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;
  v7[1] = v8[1];

  v9 = *(*(a3 + 16) - 8);
  (*(v9 + 40))((v7 + *(v9 + 80) + 16) & ~*(v9 + 80), (v8 + *(v9 + 80) + 16) & ~*(v9 + 80));
  return a1;
}

uint64_t getEnumTagSinglePayload for RemoteCallArgument(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 32) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      v15 = (a1 + 23) & 0xFFFFFFFFFFFFFFF8;
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((v15 + v6 + 16) & ~v6);
      }

      v16 = *(v15 + 8);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void storeEnumTagSinglePayload for RemoteCallArgument(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 32) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_46:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  v19 = ((a1 + 23) & 0xFFFFFFFFFFFFFFF8);
  if ((v7 & 0x80000000) != 0)
  {
    v20 = *(v6 + 56);

    v20((v19 + v9 + 16) & ~v9);
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *v19 = a2 & 0x7FFFFFFF;
    v19[1] = 0;
  }

  else
  {
    v19[1] = a2 - 1;
  }
}

uint64_t dispatch thunk of DistributedTargetInvocationResultHandler.onReturn<A>(value:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 16) + **(a4 + 16));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = protocol witness for DistributedActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:) in conformance LocalTestingDistributedActorSystem;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of DistributedTargetInvocationResultHandler.onReturnVoid()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 24) + **(a2 + 24));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = protocol witness for DistributedActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:) in conformance LocalTestingDistributedActorSystem;

  return v7(a1, a2);
}

uint64_t dispatch thunk of DistributedTargetInvocationResultHandler.onThrow<A>(error:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 32) + **(a5 + 32));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = protocol witness for DistributedActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:) in conformance LocalTestingDistributedActorSystem;

  return v13(a1, a2, a3, a4, a5);
}

uint64_t initializeBufferWithCopyOfBuffer for ExecuteDistributedTargetError(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v3;

  return a1;
}

uint64_t assignWithCopy for ExecuteDistributedTargetError(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  return a1;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t assignWithTake for ExecuteDistributedTargetError(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v3;

  return a1;
}

uint64_t getEnumTagSinglePayload for ExecuteDistributedTargetError(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for ExecuteDistributedTargetError(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for ExecuteDistributedTargetError.ErrorCode(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ExecuteDistributedTargetError.ErrorCode(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for LocalTestingInvocationEncoder(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for LocalTestingInvocationEncoder(_WORD *result, int a2, int a3)
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

void *initializeBufferWithCopyOfBuffer for LocalTestingDistributedActorSystemError(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;

  return a1;
}

void *assignWithCopy for RemoteCallTarget(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];

  return a1;
}

void *assignWithTake for LocalTestingDistributedActorSystemError(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;

  return a1;
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

void *initializeBufferWithCopyOfBuffer for LocalTestingDistributedActorSystem.ActorIDProvider(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;

  return a1;
}

void *assignWithCopy for LocalTestingDistributedActorSystem.ActorIDProvider(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];

  return a1;
}

void *assignWithTake for LocalTestingDistributedActorSystem.ActorIDProvider(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;

  return a1;
}

uint64_t getEnumTagSinglePayload for RemoteCallTarget(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for RemoteCallTarget(uint64_t result, int a2, int a3)
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

uint64_t *initializeBufferWithCopyOfBuffer for Optional(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  if (*(v5 + 84))
  {
    v6 = *(v5 + 64);
  }

  else
  {
    v6 = *(v5 + 64) + 1;
  }

  v7 = *(v5 + 80);
  if (v7 > 7 || (*(v5 + 80) & 0x100000) != 0 || v6 > 0x18)
  {
    v10 = *a2;
    *a1 = *a2;
    a1 = (v10 + ((v7 + 16) & ~v7));

    return a1;
  }

  if (!(*(v5 + 48))(a2, 1, v4))
  {
    (*(v5 + 16))(a1, a2, v4);
    (*(v5 + 56))(a1, 0, 1, v4);
    return a1;
  }

  return memcpy(a1, a2, v6);
}

uint64_t destroy for Optional(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v6 = *(v3 - 8);
  result = (*(v6 + 48))(a1, 1, v3);
  if (!result)
  {
    v5 = *(v6 + 8);

    return v5(a1, v3);
  }

  return result;
}

void *initializeWithCopy for Optional(void *a1, const void *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(a2, 1, v5))
  {
    if (*(v6 + 84))
    {
      v7 = *(v6 + 64);
    }

    else
    {
      v7 = *(v6 + 64) + 1;
    }

    return memcpy(a1, a2, v7);
  }

  else
  {
    (*(v6 + 16))(a1, a2, v5);
    (*(v6 + 56))(a1, 0, 1, v5);
    return a1;
  }
}

void *assignWithCopy for Optional(void *a1, void *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 48);
  v8 = v7(a1, 1, v5);
  v9 = v7(a2, 1, v5);
  if (!v8)
  {
    if (v9)
    {
      v13 = *(v6 + 8);
      v12 = v6 + 8;
      v13(a1, v5);
      v10 = *(v12 + 76);
      v11 = *(v12 + 56);
      goto LABEL_6;
    }

    (*(v6 + 24))(a1, a2, v5);
    return a1;
  }

  if (!v9)
  {
    (*(v6 + 16))(a1, a2, v5);
    (*(v6 + 56))(a1, 0, 1, v5);
    return a1;
  }

  v10 = *(v6 + 84);
  v11 = *(v6 + 64);
LABEL_6:
  if (v10)
  {
    v14 = v11;
  }

  else
  {
    v14 = v11 + 1;
  }

  return memcpy(a1, a2, v14);
}

void *initializeWithTake for Optional(void *a1, const void *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(a2, 1, v5))
  {
    if (*(v6 + 84))
    {
      v7 = *(v6 + 64);
    }

    else
    {
      v7 = *(v6 + 64) + 1;
    }

    return memcpy(a1, a2, v7);
  }

  else
  {
    (*(v6 + 32))(a1, a2, v5);
    (*(v6 + 56))(a1, 0, 1, v5);
    return a1;
  }
}

void *assignWithTake for Optional(void *a1, void *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 48);
  v8 = v7(a1, 1, v5);
  v9 = v7(a2, 1, v5);
  if (!v8)
  {
    if (v9)
    {
      v13 = *(v6 + 8);
      v12 = v6 + 8;
      v13(a1, v5);
      v10 = *(v12 + 76);
      v11 = *(v12 + 56);
      goto LABEL_6;
    }

    (*(v6 + 40))(a1, a2, v5);
    return a1;
  }

  if (!v9)
  {
    (*(v6 + 32))(a1, a2, v5);
    (*(v6 + 56))(a1, 0, 1, v5);
    return a1;
  }

  v10 = *(v6 + 84);
  v11 = *(v6 + 64);
LABEL_6:
  if (v10)
  {
    v14 = v11;
  }

  else
  {
    v14 = v11 + 1;
  }

  return memcpy(a1, a2, v14);
}

uint64_t getEnumTagSinglePayload for Optional(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = *(*(*(a3 + 16) - 8) + 64);
  if (!v5)
  {
    ++v7;
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v6;
  if (a2 > v6)
  {
    v9 = 8 * v7;
    if (v7 > 3)
    {
      goto LABEL_8;
    }

    v11 = ((v8 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v7);
      if (v10)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v11 <= 0xFF)
      {
        if (v11 < 2)
        {
          goto LABEL_28;
        }

LABEL_8:
        v10 = *(a1 + v7);
        if (!*(a1 + v7))
        {
          goto LABEL_28;
        }

LABEL_15:
        v12 = (v10 - 1) << v9;
        if (v7 > 3)
        {
          v12 = 0;
        }

        if (v7)
        {
          if (v7 <= 3)
          {
            v13 = v7;
          }

          else
          {
            v13 = 4;
          }

          if (v13 > 2)
          {
            if (v13 == 3)
            {
              v14 = *a1 | (*(a1 + 2) << 16);
            }

            else
            {
              v14 = *a1;
            }
          }

          else if (v13 == 1)
          {
            v14 = *a1;
          }

          else
          {
            v14 = *a1;
          }
        }

        else
        {
          v14 = 0;
        }

        return v6 + (v14 | v12) + 1;
      }

      v10 = *(a1 + v7);
      if (*(a1 + v7))
      {
        goto LABEL_15;
      }
    }
  }

LABEL_28:
  if (v5 < 2)
  {
    return 0;
  }

  v16 = (*(v4 + 48))(a1, v5);
  if (v16 >= 2)
  {
    return v16 - 1;
  }

  else
  {
    return 0;
  }
}

char *storeEnumTagSinglePayload for Optional(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = v7 - 1;
  if (v7)
  {
    v9 = *(*(*(a4 + 16) - 8) + 64);
  }

  else
  {
    v8 = 0;
    v9 = *(*(*(a4 + 16) - 8) + 64) + 1;
  }

  v10 = a3 >= v8;
  v11 = a3 - v8;
  if (v11 == 0 || !v10)
  {
    goto LABEL_16;
  }

  if (v9 > 3)
  {
    v5 = 1;
    if (v8 < a2)
    {
      goto LABEL_17;
    }

    goto LABEL_26;
  }

  v12 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
  if (!HIWORD(v12))
  {
    if (v12 < 0x100)
    {
      v13 = 1;
    }

    else
    {
      v13 = 2;
    }

    if (v12 >= 2)
    {
      v5 = v13;
    }

    else
    {
      v5 = 0;
    }

LABEL_16:
    if (v8 < a2)
    {
      goto LABEL_17;
    }

    goto LABEL_26;
  }

  v5 = 4;
  if (v8 < a2)
  {
LABEL_17:
    v14 = ~v8 + a2;
    if (v9 < 4)
    {
      v16 = (v14 >> (8 * v9)) + 1;
      if (v9)
      {
        v17 = v14 & ~(-1 << (8 * v9));
        v18 = result;
        bzero(result, v9);
        result = v18;
        if (v9 != 3)
        {
          if (v9 == 2)
          {
            *v18 = v17;
            if (v5 > 1)
            {
LABEL_44:
              if (v5 == 2)
              {
                *&result[v9] = v16;
              }

              else
              {
                *&result[v9] = v16;
              }

              return result;
            }
          }

          else
          {
            *v18 = v14;
            if (v5 > 1)
            {
              goto LABEL_44;
            }
          }

          goto LABEL_41;
        }

        *v18 = v17;
        v18[2] = BYTE2(v17);
      }

      if (v5 > 1)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v15 = result;
      bzero(result, v9);
      result = v15;
      *v15 = v14;
      v16 = 1;
      if (v5 > 1)
      {
        goto LABEL_44;
      }
    }

LABEL_41:
    if (v5)
    {
      result[v9] = v16;
    }

    return result;
  }

LABEL_26:
  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *&result[v9] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_33;
    }

    *&result[v9] = 0;
  }

  else if (v5)
  {
    result[v9] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_33;
  }

  if (!a2)
  {
    return result;
  }

LABEL_33:
  if (v7 >= 2)
  {
    v19 = *(v6 + 56);

    return v19();
  }

  return result;
}

uint64_t sub_299ADA52C()
{

  return MEMORY[0x2A1C733A0](v0, 56, 7);
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

uint64_t swift_distributed_getGenericEnvironment()
{
  result = swift_findAccessibleFunction();
  if (result)
  {
    v1 = *(result + 4);
    if (v1)
    {
      result += v1 + 4;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t swift_distributed_execute_target(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AccessibleFunction = swift_findAccessibleFunction();
  if (AccessibleFunction)
  {
    v7 = (*(AccessibleFunction + 12) + AccessibleFunction + 12);
    v12 = v7 + *v7;
    v8 = swift_task_alloc();
    if (v3)
    {
      v9 = v3;
    }

    else
    {
      v9 = 0;
    }

    *v8 = v9;
    v8[1] = swift_distributed_execute_target_resume;

    __asm { BRAAZ           X8 }
  }

  swift_distributed_makeDistributedTargetAccessorNotFoundError(0, v5, v6);
  v10 = *(v3 + 8);

  return v10();
}

uint64_t swift_distributed_execute_target_resume()
{
  if (*(*v0 + 8))
  {
    v2 = *(*v0 + 8);
  }

  else
  {
    v2 = 0;
  }

  return v2();
}

Swift::String __swiftcall String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(Builtin::RawPointer _builtinStringLiteral, Builtin::Word utf8CodeUnitCount, Builtin::Int1 isASCII)
{
  v3 = MEMORY[0x2A1C724C8](_builtinStringLiteral, utf8CodeUnitCount, isASCII);
  result._object = v4;
  result._countAndFlagsBits = v3;
  return result;
}

Swift::String_optional __swiftcall _getFunctionFullNameFromMangledName(mangledName:)(Swift::String mangledName)
{
  v1 = MEMORY[0x2A1C72A88](mangledName._countAndFlagsBits, mangledName._object);
  result.value._object = v2;
  result.value._countAndFlagsBits = v1;
  return result;
}

uint64_t _assertionFailure(_:_:file:line:flags:)()
{
  return MEMORY[0x2A1C72E20]();
}

{
  return MEMORY[0x2A1C72E28]();
}