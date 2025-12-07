uint64_t specialized Set._Variant.remove(_:)(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(v5 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v2;
  v16 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    specialized _NativeSet.copy()();
    v14 = v16;
  }

  v12 = *(*(v14 + 48) + 16 * v8);
  specialized _NativeSet._delete(at:)(v8);
  *v2 = v16;
  return v12;
}

unint64_t specialized _NativeSet._delete(at:)(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        Hasher.init(_seed:)();

        String.hash(into:)();
        v10 = Hasher._finalize()();

        v11 = v10 & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + 16 * v2);
          v14 = (v12 + 16 * v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.EncryptedRCSMemberCredentialError.CodingKeys and conformance MLS.EncryptedRCSMemberCredentialError.CodingKeys()
{
  result = lazy protocol witness table cache variable for type MLS.EncryptedRCSMemberCredentialError.CodingKeys and conformance MLS.EncryptedRCSMemberCredentialError.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.EncryptedRCSMemberCredentialError.CodingKeys and conformance MLS.EncryptedRCSMemberCredentialError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EncryptedRCSMemberCredentialError.CodingKeys and conformance MLS.EncryptedRCSMemberCredentialError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.EncryptedRCSMemberCredentialError.CodingKeys and conformance MLS.EncryptedRCSMemberCredentialError.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.EncryptedRCSMemberCredentialError.CodingKeys and conformance MLS.EncryptedRCSMemberCredentialError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EncryptedRCSMemberCredentialError.CodingKeys and conformance MLS.EncryptedRCSMemberCredentialError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.EncryptedRCSMemberCredentialError.CodingKeys and conformance MLS.EncryptedRCSMemberCredentialError.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.EncryptedRCSMemberCredentialError.CodingKeys and conformance MLS.EncryptedRCSMemberCredentialError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EncryptedRCSMemberCredentialError.CodingKeys and conformance MLS.EncryptedRCSMemberCredentialError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.EncryptedRCSMemberCredentialError.CodingKeys and conformance MLS.EncryptedRCSMemberCredentialError.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.EncryptedRCSMemberCredentialError.CodingKeys and conformance MLS.EncryptedRCSMemberCredentialError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EncryptedRCSMemberCredentialError.CodingKeys and conformance MLS.EncryptedRCSMemberCredentialError.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.EncryptedRCSMemberCredentialError.ErrorType and conformance MLS.EncryptedRCSMemberCredentialError.ErrorType()
{
  result = lazy protocol witness table cache variable for type MLS.EncryptedRCSMemberCredentialError.ErrorType and conformance MLS.EncryptedRCSMemberCredentialError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.EncryptedRCSMemberCredentialError.ErrorType and conformance MLS.EncryptedRCSMemberCredentialError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EncryptedRCSMemberCredentialError.ErrorType and conformance MLS.EncryptedRCSMemberCredentialError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.EncryptedRCSMemberCredentialError.ErrorType and conformance MLS.EncryptedRCSMemberCredentialError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.EncryptedRCSMemberCredentialError.ErrorType and conformance MLS.EncryptedRCSMemberCredentialError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EncryptedRCSMemberCredentialError.ErrorType and conformance MLS.EncryptedRCSMemberCredentialError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.EncryptedRCSMemberCredentialError.ErrorType and conformance MLS.EncryptedRCSMemberCredentialError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.EncryptedRCSMemberCredentialError.ErrorType and conformance MLS.EncryptedRCSMemberCredentialError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EncryptedRCSMemberCredentialError.ErrorType and conformance MLS.EncryptedRCSMemberCredentialError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.EncryptedRCSMemberCredentialError.ErrorType and conformance MLS.EncryptedRCSMemberCredentialError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.EncryptedRCSMemberCredentialError.ErrorType and conformance MLS.EncryptedRCSMemberCredentialError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EncryptedRCSMemberCredentialError.ErrorType and conformance MLS.EncryptedRCSMemberCredentialError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.EncryptedRCSMemberCredentialError.ErrorType and conformance MLS.EncryptedRCSMemberCredentialError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.EncryptedRCSMemberCredentialError.ErrorType and conformance MLS.EncryptedRCSMemberCredentialError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EncryptedRCSMemberCredentialError.ErrorType and conformance MLS.EncryptedRCSMemberCredentialError.ErrorType);
  }

  return result;
}

uint64_t specialized MLS.EncryptedRCSMemberCredentialError.init(from:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO33EncryptedRCSMemberCredentialErrorV10CodingKeys33_46B7670155C48EB6C84CF9E06BC36E7BLLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO33EncryptedRCSMemberCredentialErrorV10CodingKeys33_46B7670155C48EB6C84CF9E06BC36E7BLLOGMR);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9[-v5];
  v7 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  lazy protocol witness table accessor for type MLS.EncryptedRCSMemberCredentialError.CodingKeys and conformance MLS.EncryptedRCSMemberCredentialError.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v9[14] = 0;
    lazy protocol witness table accessor for type MLS.EncryptedRCSMemberCredentialError.ErrorType and conformance MLS.EncryptedRCSMemberCredentialError.ErrorType();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v7 = v9[15];
    v9[13] = 1;
    KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    (*(v4 + 8))(v6, v3);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v7;
}

unint64_t lazy protocol witness table accessor for type MLS.EncryptedRCSMemberCredentialError and conformance MLS.EncryptedRCSMemberCredentialError()
{
  result = lazy protocol witness table cache variable for type MLS.EncryptedRCSMemberCredentialError and conformance MLS.EncryptedRCSMemberCredentialError;
  if (!lazy protocol witness table cache variable for type MLS.EncryptedRCSMemberCredentialError and conformance MLS.EncryptedRCSMemberCredentialError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EncryptedRCSMemberCredentialError and conformance MLS.EncryptedRCSMemberCredentialError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.EncryptedRCSMemberCredentialError and conformance MLS.EncryptedRCSMemberCredentialError;
  if (!lazy protocol witness table cache variable for type MLS.EncryptedRCSMemberCredentialError and conformance MLS.EncryptedRCSMemberCredentialError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EncryptedRCSMemberCredentialError and conformance MLS.EncryptedRCSMemberCredentialError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.EncryptedRCSMemberCredentialError and conformance MLS.EncryptedRCSMemberCredentialError;
  if (!lazy protocol witness table cache variable for type MLS.EncryptedRCSMemberCredentialError and conformance MLS.EncryptedRCSMemberCredentialError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EncryptedRCSMemberCredentialError and conformance MLS.EncryptedRCSMemberCredentialError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.EncryptedRCSMemberCredentialError and conformance MLS.EncryptedRCSMemberCredentialError;
  if (!lazy protocol witness table cache variable for type MLS.EncryptedRCSMemberCredentialError and conformance MLS.EncryptedRCSMemberCredentialError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EncryptedRCSMemberCredentialError and conformance MLS.EncryptedRCSMemberCredentialError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.EncryptedRCSMemberCredentialError and conformance MLS.EncryptedRCSMemberCredentialError;
  if (!lazy protocol witness table cache variable for type MLS.EncryptedRCSMemberCredentialError and conformance MLS.EncryptedRCSMemberCredentialError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EncryptedRCSMemberCredentialError and conformance MLS.EncryptedRCSMemberCredentialError);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for MLS.EncryptedRCSMemberCredentialError(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type MLS.EncryptedRCSMemberCredentialError and conformance MLS.EncryptedRCSMemberCredentialError();
  a1[2] = lazy protocol witness table accessor for type MLS.EncryptedRCSMemberCredentialError and conformance MLS.EncryptedRCSMemberCredentialError();
  a1[3] = lazy protocol witness table accessor for type MLS.EncryptedRCSMemberCredentialError and conformance MLS.EncryptedRCSMemberCredentialError();
  result = lazy protocol witness table accessor for type MLS.EncryptedRCSMemberCredentialError and conformance MLS.EncryptedRCSMemberCredentialError();
  a1[4] = result;
  return result;
}

uint64_t _s8SwiftMLS0B0O8IdentityO07SigningC0VAGSHAAWlTm_0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t MLS.KeyUpdateOperation.__allocating_init(group:causedByOutgoingMessage:context:policy:featureFlagsStore:persister:clientIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int128 *a5, uint64_t *a6, uint64_t a7, uint64_t a8, uint64_t *a9)
{
  v14 = a3;
  v17 = swift_allocObject();
  MLS.KeyUpdateOperation.init(group:causedByOutgoingMessage:context:policy:featureFlagsStore:persister:clientIdentifier:)(a1, a2, v14, a4, a5, a6, a7, a8, a9);
  return v17;
}

uint64_t MLS.KeyUpdateOperation.group.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

double MLS.KeyUpdateOperation.featureFlagsStore.getter@<D0>(void *a1@<X8>)
{
  *a1 = *(v1 + *(*v1 + 160));

  return result;
}

double MLS.KeyUpdateOperation.clientIdentifier.getter@<D0>(void *a1@<X8>)
{
  v2 = (v1 + *(*v1 + 176));
  v3 = v2[1];
  *a1 = *v2;
  a1[1] = v3;

  return result;
}

uint64_t MLS.KeyUpdateOperation.logger.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 184);
  v4 = type metadata accessor for Logger();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t *MLS.KeyUpdateOperation.init(group:causedByOutgoingMessage:context:policy:featureFlagsStore:persister:clientIdentifier:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, __int128 *a5, uint64_t *a6, uint64_t a7, uint64_t a8, uint64_t *a9)
{
  v15 = *v9;
  v16 = *a6;
  v18 = *a9;
  v17 = a9[1];
  Logger.init(subsystem:category:)();
  v9[2] = a1;
  v9[3] = a2;
  *(v9 + 32) = a3;
  (*(*(*(v15 + 88) - 8) + 32))(v9 + *(*v9 + 144), a4);
  outlined init with take of MLS.KeyUpdatePolicy(a5, v9 + *(*v9 + 152));
  *(v9 + *(*v9 + 160)) = v16;
  v19 = (v9 + *(*v9 + 168));
  *v19 = a7;
  v19[1] = a8;
  v20 = (v9 + *(*v9 + 176));
  *v20 = v18;
  v20[1] = v17;
  return v9;
}

uint64_t MLS.KeyUpdateOperation.isDisabled.getter()
{
  v1 = *v0;
  v2 = *(v0 + *(*v0 + 160));
  if (!*(v2 + 16) || (v3 = specialized __RawDictionaryStorage.find<A>(_:)(0), (v4 & 1) == 0))
  {
    v14[3] = &type metadata for SMAFeatureFlagsKey;
    v14[4] = lazy protocol witness table accessor for type SMAFeatureFlagsKey and conformance SMAFeatureFlagsKey();
    LOBYTE(v14[0]) = 0;

    v13 = isFeatureEnabled(_:)();
    __swift_destroy_boxed_opaque_existential_1Tm(v14);

    if ((v13 & 1) == 0)
    {
      goto LABEL_4;
    }

    return 0;
  }

  if (*(*(v2 + 56) + v3))
  {
    return 0;
  }

LABEL_4:

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v14[0] = v8;
    *v7 = 136315138;
    v9 = (*(*(v1 + 112) + 16))(*(v1 + 88));
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, v14);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_264F1F000, v5, v6, "KeyUpdateOperation key roll check disabled { identifier: %s }", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x266755550](v8, -1, -1);
    MEMORY[0x266755550](v7, -1, -1);
  }

  return 1;
}

uint64_t MLS.KeyUpdateOperation.membersRequiringKeyPackages(swiftMLSGroup:)()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 8);
  v2 = MEMORY[0x277D84F90];

  return v1(v2);
}

uint64_t MLS.KeyUpdateOperation.perform(on:metricCollector:keyPackageResult:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4[101] = v3;
  v4[100] = a2;
  v4[99] = a1;
  v6 = *v3;
  v4[102] = *v3;
  v7 = type metadata accessor for UUID();
  v4[103] = v7;
  v4[104] = *(v7 - 8);
  v4[105] = swift_task_alloc();
  v4[106] = type metadata accessor for MetricCollector.Event(0);
  v4[107] = swift_task_alloc();
  v4[108] = swift_task_alloc();
  v8 = *(v6 + 104);
  v4[109] = v8;
  v9 = *(v8 + 8);
  v4[110] = v9;
  v4[111] = *(v9 + 8);
  v10 = *(v6 + 80);
  v4[112] = v10;
  v4[113] = swift_getAssociatedTypeWitness();
  v4[114] = swift_task_alloc();
  v4[115] = *(v10 - 8);
  v4[116] = swift_task_alloc();
  v4[117] = swift_task_alloc();
  v4[118] = swift_task_alloc();
  v4[119] = swift_task_alloc();
  v4[120] = swift_task_alloc();
  v4[121] = swift_task_alloc();
  v4[122] = swift_task_alloc();
  v4[123] = swift_task_alloc();
  v4[124] = swift_task_alloc();
  v4[125] = swift_task_alloc();
  v4[126] = swift_task_alloc();
  v4[127] = swift_task_alloc();
  v4[128] = *a3;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v11 = static MLSActor.shared;
  v4[129] = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.KeyUpdateOperation.perform(on:metricCollector:keyPackageResult:), v11, 0);
}

uint64_t MLS.KeyUpdateOperation.perform(on:metricCollector:keyPackageResult:)()
{
  v1 = v0[114];
  v2 = v0[113];
  v3 = v0[112];
  v19 = v0[111];
  v4 = v0[102];
  v5 = v0[101];
  v0[96] = v0[128];
  v0[130] = *(*v5 + 144);
  v6 = *(v4 + 112);
  v0[131] = v6;
  v7 = *(v6 + 16);
  v8 = *(v4 + 88);
  v0[132] = v8;

  v9 = v7(v8, v6);
  v11 = v10;
  v0[133] = v9;
  v0[134] = v10;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 16))(v2, AssociatedConformanceWitness);
  VersatileError.init(type:)(v1, v3, v19);
  v13 = swift_allocObject();
  v0[135] = v13;
  v13[2] = v5;
  v13[3] = v9;
  v13[4] = v11;

  v14 = swift_task_alloc();
  v0[136] = v14;
  type metadata accessor for MLS.KeyUpdateTracker();
  *v14 = v0;
  v14[1] = MLS.KeyUpdateOperation.perform(on:metricCollector:keyPackageResult:);
  v15 = v0[127];
  v16 = v0[112];
  v17 = v0[101];

  return _s15SecureMessaging12asyncRethrow_2as3logq_q_yYaYbKXK_xySSYbcSgtYaxYKAA14VersatileErrorRzr0_lF((v0 + 97), &async function pointer to partial apply for implicit closure #1 in MLS.KeyUpdateOperation.perform(on:metricCollector:keyPackageResult:), v17, v15, partial apply for closure #1 in MLS.KeyUpdateOperation.perform(on:metricCollector:keyPackageResult:), v13, v16);
}

{
  v2 = *v1;

  if (v0)
  {
    v3 = v2[129];
    v4 = v2[127];
    v5 = v2[115];
    v6 = v2[112];
    v7 = *(v5 + 8);
    v2[165] = v7;
    v2[166] = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v7(v4, v6);

    v8 = MLS.KeyUpdateOperation.perform(on:metricCollector:keyPackageResult:);
    v9 = v3;
  }

  else
  {
    v10 = v2[129];
    v11 = v2[127];
    v12 = v2[115];
    v13 = v2[112];
    v14 = *(v12 + 8);
    v2[137] = v14;
    v2[138] = (v12 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v14(v11, v13);

    v8 = MLS.KeyUpdateOperation.perform(on:metricCollector:keyPackageResult:);
    v9 = v10;
  }

  return MEMORY[0x2822009F8](v8, v9, 0);
}

{
  v1 = v0[134];
  v16 = v0[133];
  v2 = v0[114];
  v3 = v0[113];
  v4 = v0[112];
  v5 = v0[111];
  v6 = v0[101];
  v7 = v0[97];
  v0[139] = v7;
  v8 = swift_task_alloc();
  v0[140] = v8;
  *(v8 + 16) = v7;
  *(v8 + 24) = v6;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v0[141] = AssociatedConformanceWitness;
  v10 = *(AssociatedConformanceWitness + 96);
  v0[142] = v10;
  v0[143] = (AssociatedConformanceWitness + 96) & 0xFFFFFFFFFFFFLL | 0xCA1B000000000000;
  v10(v3, AssociatedConformanceWitness);
  VersatileError.init(type:)(v2, v4, v5);
  v11 = swift_allocObject();
  v0[144] = v11;
  v11[2] = v6;
  v11[3] = v16;
  v11[4] = v1;

  v12 = swift_task_alloc();
  v0[145] = v12;
  *v12 = v0;
  v12[1] = MLS.KeyUpdateOperation.perform(on:metricCollector:keyPackageResult:);
  v13 = v0[125];
  v14 = v0[112];

  return _s15SecureMessaging12asyncRethrow_2as3logq_q_yYaYbKXK_xySSYbcSgtYaxYKAA14VersatileErrorRzr0_lF(v0 + 193, &async function pointer to partial apply for implicit closure #2 in MLS.KeyUpdateOperation.perform(on:metricCollector:keyPackageResult:), v8, v13, partial apply for closure #2 in MLS.KeyUpdateOperation.perform(on:metricCollector:keyPackageResult:), v11, v14);
}

{
  v2 = *v1;

  v3 = *(v2 + 1032);
  (*(v2 + 1096))(*(v2 + 1000), *(v2 + 896));

  if (v0)
  {

    v4 = MLS.KeyUpdateOperation.perform(on:metricCollector:keyPackageResult:);
  }

  else
  {

    v4 = MLS.KeyUpdateOperation.perform(on:metricCollector:keyPackageResult:);
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{
  v2 = *v1;
  *(*v1 + 1184) = v0;

  if (v0)
  {
    v3 = *(v2 + 1032);

    v4 = MLS.KeyUpdateOperation.perform(on:metricCollector:keyPackageResult:);
    v5 = v3;
  }

  else
  {
    v5 = *(v2 + 1032);
    v4 = MLS.KeyUpdateOperation.perform(on:metricCollector:keyPackageResult:);
  }

  return MEMORY[0x2822009F8](v4, v5, 0);
}

{
  v82 = v0;
  v1._countAndFlagsBits = 0x534C4D7466697753;
  v1._object = 0xEE0074696D6D6F43;
  MetricCollector.end(label:)(v1);
  outlined init with copy of ServerBag.MLS(v0 + 664, v0 + 704);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 1072);
    v5 = *(v0 + 1064);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *&v78 = v7;
    *v6 = 136315394;
    *(v6 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v4, &v78);
    *(v6 + 12) = 2080;
    v8 = *(v0 + 728);
    __swift_project_boxed_opaque_existential_1((v0 + 704), v8);
    v9 = *(v8 - 8);
    swift_task_alloc();
    (*(v9 + 16))();
    v10 = String.init<A>(describing:)();
    v12 = v11;

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 704));
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v12, &v78);

    *(v6 + 14) = v13;
    _os_log_impl(&dword_264F1F000, v2, v3, "KeyUpdateOperation generated commit for key roll { identifier: %s, commitOutput: %s }", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v7, -1, -1);
    MEMORY[0x266755550](v6, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 704));
  }

  v14 = *(v0 + 1184);
  v15 = *(v0 + 1056);
  v16 = *(v0 + 1048);
  v17 = *(v0 + 896);
  v18 = *(v0 + 872);
  v19 = *(v0 + 816);
  v20 = *(v0 + 808);
  v21 = *(v0 + 688);
  v22 = *(v0 + 696);
  __swift_project_boxed_opaque_existential_1((v0 + 664), v21);
  MLS.SwiftMLSCommitOutputProtocol.outgoingCommit.getter(v21, v22, &v78);
  v23 = *(&v78 + 1);
  v73 = v78;
  *(v0 + 1192) = *(&v78 + 1);
  v76 = v79;
  *(v0 + 1200) = v79;
  *(v0 + 784) = v20;
  v24 = *(v19 + 96);
  v25 = *(v19 + 120);
  *(v0 + 616) = v17;
  *(v0 + 624) = v15;
  *(v0 + 632) = v24;
  *(v0 + 640) = v18;
  *(v0 + 648) = v16;
  *(v0 + 656) = v25;
  updated = type metadata accessor for MLS.KeyUpdateOperation(0, v0 + 616);
  WitnessTable = swift_getWitnessTable();
  MLS.GroupOperation.context(commitOutput:)((v0 + 664), updated, WitnessTable, &v78);
  v28 = v78;
  *(v0 + 1216) = v78;
  v29 = v79;
  *(v0 + 1232) = v79;
  v30 = v80;
  v31 = v81;
  *(v0 + 1248) = v80;
  *(v0 + 1256) = v31;
  if (v14)
  {

    outlined consume of Data._Representation(v76, *(&v76 + 1));

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 664));

    v32 = *(v0 + 8);

    return v32();
  }

  else
  {
    v67 = v30;
    v34 = *(v0 + 1072);
    v35 = *(v0 + 1064);
    v69 = *(v0 + 1048);
    v71 = *(v0 + 1056);
    v36 = *(v0 + 840);
    v37 = *(v0 + 832);
    v66 = *(v0 + 824);
    v72 = v28;

    UUID.init()();
    v70 = UUID.uuidString.getter();
    v39 = v38;
    v68 = v38;
    (*(v37 + 8))(v36, v66);
    v40 = *(v0 + 768);
    *(v0 + 200) = v35;
    *(v0 + 208) = v34;
    *(v0 + 216) = v70;
    *(v0 + 224) = v39;
    *(v0 + 232) = xmmword_2651B5F50;
    *(v0 + 248) = v40;
    *(v0 + 256) = v73;
    *(v0 + 264) = v23;
    *(v0 + 272) = v76;
    *(v0 + 288) = v72;
    *(v0 + 304) = v29;
    *(v0 + 320) = v67;
    *(v0 + 328) = v31;
    v41 = *(v0 + 216);
    *(v0 + 16) = *(v0 + 200);
    *(v0 + 32) = v41;
    v42 = *(v0 + 312);
    *(v0 + 112) = *(v0 + 296);
    *(v0 + 128) = v42;
    *(v0 + 144) = *(v0 + 328);
    v43 = *(v0 + 248);
    *(v0 + 48) = *(v0 + 232);
    *(v0 + 64) = v43;
    v44 = *(v0 + 280);
    *(v0 + 80) = *(v0 + 264);
    *(v0 + 96) = v44;
    _s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGWOi3_(v0 + 16);
    v74 = *(v69 + 8);

    outlined copy of Data._Representation(v76, *(&v76 + 1));
    outlined copy of Data._Representation(v72, *(&v72 + 1));
    outlined copy of Data?(v29, *(&v29 + 1));
    outlined copy of Data._Representation(v67, v31);
    outlined init with copy of MLS.OutgoingKeyUpdate<Data>(v0 + 200, v0 + 336);

    v45 = v74(v71, v69);
    *(v0 + 472) = v70;
    *(v0 + 480) = v68;
    *(v0 + 488) = 0;
    *(v0 + 496) = 0;
    *(v0 + 504) = 4;
    *(v0 + 512) = v35;
    *(v0 + 520) = v34;
    *(v0 + 528) = v45;
    *(v0 + 536) = v46;

    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = *(v0 + 1072);
      v50 = *(v0 + 1064);
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      *&v78 = v52;
      *v51 = 136315138;
      *(v51 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v50, v49, &v78);
      _os_log_impl(&dword_264F1F000, v47, v48, "KeyUpdateOperation returning operation result { identifier: %s }", v51, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v52);
      MEMORY[0x266755550](v52, -1, -1);
      MEMORY[0x266755550](v51, -1, -1);
    }

    v53 = *(v0 + 1128);
    v75 = *(v0 + 1064);
    v77 = *(v0 + 1072);
    v54 = *(v0 + 912);
    v55 = *(v0 + 904);
    v56 = *(v0 + 896);
    v57 = *(v0 + 888);
    v58 = *(v0 + 808);
    v59 = *(v0 + 800);
    v60 = swift_task_alloc();
    *(v0 + 1264) = v60;
    *(v60 + 16) = v59;
    (*(v53 + 56))(v55, v53);
    VersatileError.init(type:)(v54, v56, v57);
    v61 = swift_allocObject();
    *(v0 + 1272) = v61;
    v61[2] = v58;
    v61[3] = v75;
    v61[4] = v77;

    v62 = swift_task_alloc();
    *(v0 + 1280) = v62;
    *v62 = v0;
    v62[1] = MLS.KeyUpdateOperation.perform(on:metricCollector:keyPackageResult:);
    v63 = *(v0 + 984);
    v64 = *(v0 + 976);
    v65 = *(v0 + 896);
    v84 = *(v0 + 888);
    v85 = v64;

    return _s15SecureMessaging12asyncRethrow_2as3logq_q_yYaYbKXK_xySSYbcSgtYaxYKAA14VersatileErrorRzr0_lF(v0 + 744, &async function pointer to partial apply for implicit closure #7 in MLS.KeyUpdateOperation.perform(on:metricCollector:keyPackageResult:), v60, v63, partial apply for closure #3 in MLS.KeyUpdateOperation.perform(on:metricCollector:keyPackageResult:), v61, v65);
  }
}

{
  v2 = *v1;

  v3 = *(v2 + 1032);
  (*(v2 + 1096))(*(v2 + 984), *(v2 + 896));

  if (v0)
  {

    v4 = MLS.KeyUpdateOperation.perform(on:metricCollector:keyPackageResult:);
  }

  else
  {

    v4 = MLS.KeyUpdateOperation.perform(on:metricCollector:keyPackageResult:);
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{
  v1 = *(v0 + 1136);
  v2 = *(v0 + 1072);
  v3 = *(v0 + 1064);
  v4 = *(v0 + 912);
  v5 = *(v0 + 896);
  v6 = *(v0 + 888);
  v7 = *(v0 + 808);
  *(v0 + 1288) = *(v0 + 744);
  *(v0 + 196) = *(v0 + 752);
  *(v0 + 1296) = *(v0 + 760);
  v1();
  VersatileError.init(type:)(v4, v5, v6);
  v8 = swift_allocObject();
  *(v0 + 1304) = v8;
  v8[2] = v7;
  v8[3] = v3;
  v8[4] = v2;

  v9 = swift_task_alloc();
  *(v0 + 1312) = v9;
  *v9 = v0;
  v9[1] = MLS.KeyUpdateOperation.perform(on:metricCollector:keyPackageResult:);
  v10 = *(v0 + 1112);
  v11 = *(v0 + 968);
  v12 = *(v0 + 896);

  return _s15SecureMessaging12asyncRethrow_2as3logq_q_yYaYbKXK_xySSYbcSgtYaxYKAA14VersatileErrorRzr0_lF(v9, &async function pointer to partial apply for implicit closure #8 in MLS.KeyUpdateOperation.perform(on:metricCollector:keyPackageResult:), v10, v11, partial apply for closure #4 in MLS.KeyUpdateOperation.perform(on:metricCollector:keyPackageResult:), v8, v12);
}

{
  v2 = *v1;

  v3 = *(v2 + 1032);
  (*(v2 + 1096))(*(v2 + 968), *(v2 + 896));

  if (v0)
  {

    v4 = MLS.KeyUpdateOperation.perform(on:metricCollector:keyPackageResult:);
  }

  else
  {
    v4 = MLS.KeyUpdateOperation.perform(on:metricCollector:keyPackageResult:);
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{
  v28 = *(v0 + 196);
  v1 = *(v0 + 1256);
  v2 = *(v0 + 1248);
  v3 = *(v0 + 1240);
  v4 = *(v0 + 1232);
  v5 = *(v0 + 1224);
  v6 = *(v0 + 1216);
  v26 = *(v0 + 1208);
  v27 = *(v0 + 1288);
  v25 = *(v0 + 1200);
  v29 = *(v0 + 1296);
  v30 = *(v0 + 800);
  v7 = *(v0 + 792);

  outlined destroy of MLS.OutgoingKeyUpdate<Data>(v0 + 200);
  outlined consume of Data._Representation(v2, v1);
  outlined consume of Data?(v4, v3);
  outlined consume of Data._Representation(v6, v5);

  outlined consume of Data._Representation(v25, v26);
  v8 = *(v0 + 16);
  v9 = *(v0 + 32);
  v10 = *(v0 + 64);
  *(v7 + 32) = *(v0 + 48);
  *(v7 + 48) = v10;
  *v7 = v8;
  *(v7 + 16) = v9;
  v11 = *(v0 + 80);
  v12 = *(v0 + 96);
  v13 = *(v0 + 128);
  *(v7 + 96) = *(v0 + 112);
  *(v7 + 112) = v13;
  *(v7 + 64) = v11;
  *(v7 + 80) = v12;
  v14 = *(v0 + 144);
  v15 = *(v0 + 160);
  v16 = *(v0 + 176);
  *(v7 + 176) = *(v0 + 192);
  *(v7 + 144) = v15;
  *(v7 + 160) = v16;
  *(v7 + 128) = v14;
  *(v7 + 184) = *(v0 + 472);
  v17 = *(v0 + 488);
  v18 = *(v0 + 504);
  v19 = *(v0 + 520);
  *(v7 + 248) = *(v0 + 536);
  *(v7 + 232) = v19;
  *(v7 + 216) = v18;
  *(v7 + 200) = v17;
  *(v7 + 256) = 0;
  *(v7 + 264) = v27;
  *(v7 + 272) = v28;
  *(v7 + 280) = v29;
  *(v7 + 288) = *(v0 + 472);
  v20 = *(v0 + 488);
  v21 = *(v0 + 504);
  v22 = *(v0 + 520);
  *(v7 + 352) = *(v0 + 536);
  *(v7 + 320) = v21;
  *(v7 + 336) = v22;
  *(v7 + 304) = v20;
  *(v7 + 360) = 0;
  outlined init with copy of ServerBag.MLS(v30, v7 + 368);
  *(v7 + 408) = 0;
  *(v7 + 416) = *(v0 + 768);
  *(v7 + 424) = 0;
  *(v7 + 432) = 0;
  outlined init with copy of MLS.OutgoingEventState(v0 + 472, v0 + 544);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 664));

  v23 = *(v0 + 8);

  return v23();
}

{
  v1 = *(*(v0 + 920) + 32);
  v1(*(v0 + 952), *(v0 + 1008), *(v0 + 896));
  if (_getErrorEmbeddedNSError<A>(_:)())
  {
    (*(v0 + 1320))(*(v0 + 952), *(v0 + 896));
  }

  else
  {
    v2 = *(v0 + 952);
    v3 = *(v0 + 896);
    swift_allocError();
    v1(v4, v2, v3);
  }

  v5 = *(v0 + 8);

  return v5();
}

{
  v1 = *(*(v0 + 920) + 32);
  v1(*(v0 + 944), *(v0 + 992), *(v0 + 896));
  if (_getErrorEmbeddedNSError<A>(_:)())
  {
    (*(v0 + 1096))(*(v0 + 944), *(v0 + 896));
  }

  else
  {
    v2 = *(v0 + 944);
    v3 = *(v0 + 896);
    swift_allocError();
    v1(v4, v2, v3);
  }

  v5 = *(v0 + 8);

  return v5();
}

{

  v1 = *(v0 + 8);

  return v1();
}

{
  v1 = *(*(v0 + 920) + 32);
  v1(*(v0 + 936), *(v0 + 976), *(v0 + 896));
  if (_getErrorEmbeddedNSError<A>(_:)())
  {
    (*(v0 + 1096))(*(v0 + 936), *(v0 + 896));
  }

  else
  {
    v2 = *(v0 + 936);
    v3 = *(v0 + 896);
    swift_allocError();
    v1(v4, v2, v3);
  }

  v5 = *(v0 + 1256);
  v6 = *(v0 + 1248);
  v7 = *(v0 + 1240);
  v8 = *(v0 + 1232);
  v9 = *(v0 + 1224);
  v10 = *(v0 + 1216);
  v11 = *(v0 + 1208);
  v12 = *(v0 + 1200);

  outlined consume of Data._Representation(v12, v11);
  outlined consume of Data._Representation(v10, v9);
  outlined consume of Data?(v8, v7);
  outlined consume of Data._Representation(v6, v5);
  outlined destroy of MLS.OutgoingKeyUpdate<Data>(v0 + 200);
  outlined destroy of MLS.OutgoingEventState(v0 + 472);
  outlined destroy of MLS.OutgoingKeyUpdate<Data>(v0 + 200);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 664));

  v13 = *(v0 + 8);

  return v13();
}

{
  v1 = *(*(v0 + 920) + 32);
  v1(*(v0 + 928), *(v0 + 960), *(v0 + 896));
  if (_getErrorEmbeddedNSError<A>(_:)())
  {
    (*(v0 + 1096))(*(v0 + 928), *(v0 + 896));
  }

  else
  {
    v2 = *(v0 + 928);
    v3 = *(v0 + 896);
    swift_allocError();
    v1(v4, v2, v3);
  }

  v5 = *(v0 + 1256);
  v6 = *(v0 + 1248);
  v7 = *(v0 + 1240);
  v8 = *(v0 + 1232);
  v9 = *(v0 + 1224);
  v10 = *(v0 + 1216);
  v11 = *(v0 + 1208);
  v12 = *(v0 + 1200);

  outlined consume of Data._Representation(v12, v11);
  outlined consume of Data._Representation(v10, v9);
  outlined consume of Data?(v8, v7);
  outlined consume of Data._Representation(v6, v5);
  outlined destroy of MLS.OutgoingKeyUpdate<Data>(v0 + 200);
  outlined destroy of MLS.OutgoingEventState(v0 + 472);
  outlined destroy of MLS.OutgoingKeyUpdate<Data>(v0 + 200);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 664));

  v13 = *(v0 + 8);

  return v13();
}

uint64_t MLS.KeyUpdateOperation.perform(on:metricCollector:keyPackageResult:)(uint64_t a1)
{
  v27 = v1;
  if (*(v1 + 193) == 1)
  {
    v2 = *(v1 + 864);
    v3 = *(v1 + 856);
    v4 = *(v1 + 848);
    v5 = *(v1 + 800);
    Date.init()();
    v6 = *(v4 + 20);
    v7 = type metadata accessor for Date();
    (*(*(v7 - 8) + 56))(v2 + v6, 1, 1, v7);
    outlined init with take of MetricCollector.Event(v2, v3);
    v8 = *(v1 + 768);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = v8;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v3, 0x534C4D7466697753, 0xEE0074696D6D6F43, isUniquelyReferenced_nonNull_native);
    *(v1 + 1168) = v8;

    *(v1 + 768) = v8;
    v10 = v5[3];
    v11 = v5[4];
    __swift_project_boxed_opaque_existential_1(v5, v10);
    v25 = (*(v11 + 208) + **(v11 + 208));
    v12 = swift_task_alloc();
    *(v1 + 1176) = v12;
    *v12 = v1;
    v12[1] = MLS.KeyUpdateOperation.perform(on:metricCollector:keyPackageResult:);

    return v25(v1 + 664, v10, v11);
  }

  else
  {

    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();

    v16 = os_log_type_enabled(v14, v15);
    v17 = *(v1 + 1072);
    if (v16)
    {
      v18 = *(v1 + 1064);
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v26 = v20;
      *v19 = 136315138;
      v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v17, &v26);

      *(v19 + 4) = v21;
      _os_log_impl(&dword_264F1F000, v14, v15, "KeyUpdateOperation determined it should not roll { identifier: %s }", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v20);
      MEMORY[0x266755550](v20, -1, -1);
      MEMORY[0x266755550](v19, -1, -1);
    }

    else
    {
    }

    v22 = *(v1 + 800);
    v23 = *(v1 + 792);
    *(v23 + 64) = 0u;
    *(v23 + 80) = 0u;
    *(v23 + 32) = 0u;
    *(v23 + 48) = 0u;
    *v23 = 0u;
    *(v23 + 16) = 0u;
    *(v23 + 96) = 3;
    outlined init with copy of ServerBag.MLS(v22, v23 + 104);
    *(v23 + 408) = 1;
    *(v23 + 416) = *(v1 + 768);
    *(v23 + 424) = 0;
    *(v23 + 432) = 0;

    v24 = *(v1 + 8);

    return v24();
  }
}

uint64_t implicit closure #1 in MLS.KeyUpdateOperation.perform(on:metricCollector:keyPackageResult:)(uint64_t a1, uint64_t a2)
{
  v2[12] = a1;
  v2[13] = a2;
  v3 = type metadata accessor for Date();
  v2[14] = v3;
  v2[15] = *(v3 - 8);
  v2[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](implicit closure #1 in MLS.KeyUpdateOperation.perform(on:metricCollector:keyPackageResult:), 0, 0);
}

uint64_t implicit closure #1 in MLS.KeyUpdateOperation.perform(on:metricCollector:keyPackageResult:)()
{
  v1 = v0[13];
  v0[17] = v1[2];
  v0[18] = v1[3];
  v2 = *v1;
  v3 = (v1 + *(*v1 + 176));
  v0[19] = *v3;
  v0[20] = v3[1];
  v4 = (v1 + *(v2 + 168));
  v0[21] = *v4;
  v0[22] = v4[1];
  outlined init with copy of ServerBag.MLS(v1 + *(v2 + 152), (v0 + 2));
  v0[23] = type metadata accessor for MLS.KeyUpdateTracker();
  v0[24] = swift_allocObject();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v5 = static MLSActor.shared;
  v0[25] = static MLSActor.shared;

  return MEMORY[0x2822009F8](implicit closure #1 in MLS.KeyUpdateOperation.perform(on:metricCollector:keyPackageResult:), v5, 0);
}

{
  v1 = v0[24];
  v2 = v0[21];
  v14 = v0[22];
  v4 = v0[19];
  v3 = v0[20];
  v5 = v0[18];
  v1[6] = v0[17];
  v1[7] = v5;
  v1[4] = v4;
  v1[5] = v3;
  v1[2] = v2;
  v1[3] = v14;
  outlined init with copy of ServerBag.MLS((v0 + 2), (v1 + 11));
  ObjectType = swift_getObjectType();
  v0[10] = v4;
  v0[11] = v3;
  v7 = *(v14 + 144);

  swift_unknownObjectRetain();
  v13 = (v7 + *v7);
  v8 = swift_task_alloc();
  v0[26] = v8;
  *v8 = v0;
  v8[1] = implicit closure #1 in MLS.KeyUpdateOperation.perform(on:metricCollector:keyPackageResult:);
  v9 = v0[22];
  v10 = v0[17];
  v11 = v0[18];

  return (v13)(v0 + 7, v10, v11, v0 + 10, ObjectType, v9);
}

{
  v2 = *v1;
  *(*v1 + 216) = v0;

  v3 = *(v2 + 200);
  if (v0)
  {
    v4 = implicit closure #1 in MLS.KeyUpdateOperation.perform(on:metricCollector:keyPackageResult:);
  }

  else
  {
    v4 = implicit closure #1 in MLS.KeyUpdateOperation.perform(on:metricCollector:keyPackageResult:);
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{
  v1 = *(v0 + 192);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1Tm((v1 + 88));
  swift_deallocPartialClassInstance();

  return MEMORY[0x2822009F8](implicit closure #1 in MLS.KeyUpdateOperation.perform(on:metricCollector:keyPackageResult:), 0, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

{
  **(v0 + 96) = *(v0 + 192);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t implicit closure #1 in MLS.KeyUpdateOperation.perform(on:metricCollector:keyPackageResult:)(uint64_t a1)
{
  LODWORD(v2) = *(v1 + 72);
  if (v2 == 2)
  {
    v3 = *(v1 + 120);
    v2 = *(v1 + 128);
    v4 = *(v1 + 112);
    Date.init()();
    Date.timeIntervalSince1970.getter();
    v6 = v5;
    (*(v3 + 8))(v2, v4);
    __swift_destroy_boxed_opaque_existential_1Tm((v1 + 16));
    v7 = 0;
    LOBYTE(v2) = 1;
  }

  else
  {
    v6 = *(v1 + 64);
    v7 = *(v1 + 56);
    __swift_destroy_boxed_opaque_existential_1Tm((v1 + 16));
  }

  v8 = *(v1 + 192);
  *(v8 + 64) = v7;
  *(v8 + 72) = v6;
  *(v8 + 80) = v2 & 1;

  return MEMORY[0x2822009F8](implicit closure #1 in MLS.KeyUpdateOperation.perform(on:metricCollector:keyPackageResult:), 0, 0);
}

uint64_t implicit closure #2 in MLS.KeyUpdateOperation.perform(on:metricCollector:keyPackageResult:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](implicit closure #2 in MLS.KeyUpdateOperation.perform(on:metricCollector:keyPackageResult:), 0, 0);
}

uint64_t implicit closure #2 in MLS.KeyUpdateOperation.perform(on:metricCollector:keyPackageResult:)()
{
  v1 = *(*(v0 + 32) + 32);
  v4 = (*(**(v0 + 24) + 152) + **(**(v0 + 24) + 152));
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *v2 = v0;
  v2[1] = implicit closure #2 in MLS.KeyUpdateOperation.perform(on:metricCollector:keyPackageResult:);

  return v4(v1);
}

{
  **(v0 + 16) = *(v0 + 48);
  return (*(v0 + 8))();
}

uint64_t implicit closure #2 in MLS.KeyUpdateOperation.perform(on:metricCollector:keyPackageResult:)(char a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 48) = a1 & 1;

    return MEMORY[0x2822009F8](implicit closure #2 in MLS.KeyUpdateOperation.perform(on:metricCollector:keyPackageResult:), 0, 0);
  }
}

uint64_t implicit closure #8 in MLS.KeyUpdateOperation.perform(on:metricCollector:keyPackageResult:)(uint64_t a1, uint64_t a2)
{
  v5 = (*(*a2 + 160) + **(*a2 + 160));
  v3 = swift_task_alloc();
  *(v2 + 16) = v3;
  *v3 = v2;
  v3[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v5();
}

void closure #1 in MLS.KeyUpdateOperation.perform(on:metricCollector:keyPackageResult:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, const char *a6)
{

  oslog = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(oslog, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v15 = v13;
    *v12 = 136315394;
    *(v12 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a4, a5, &v15);
    *(v12 + 12) = 2080;
    *(v12 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v15);
    _os_log_impl(&dword_264F1F000, oslog, v11, a6, v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v13, -1, -1);
    MEMORY[0x266755550](v12, -1, -1);
  }
}

char *MLS.KeyUpdateOperation.deinit()
{
  v1 = *v0;

  (*(*(*(v1 + 88) - 8) + 8))(v0 + *(*v0 + 144));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + *(*v0 + 152)));

  swift_unknownObjectRelease();

  v2 = *(*v0 + 184);
  v3 = type metadata accessor for Logger();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  return v0;
}

uint64_t MLS.KeyUpdateOperation.__deallocating_deinit()
{
  MLS.KeyUpdateOperation.deinit();

  return swift_deallocClassInstance();
}

uint64_t protocol witness for MLS.RequiresGroupGroupOperation.membersRequiringKeyPackages(swiftMLSGroup:) in conformance MLS.KeyUpdateOperation<A, B, C>(uint64_t a1)
{
  v6 = (*(**v1 + 248) + **(**v1 + 248));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = specialized KDSRegistration.XPCCoordinator.__allocating_init(clientIdentifier:provider:simUniqueID:simLabelID:supportedState:testPhoneNumberURI:);

  return v6(a1);
}

uint64_t protocol witness for MLS.RequiresGroupGroupOperation.perform(on:metricCollector:keyPackageResult:) in conformance MLS.KeyUpdateOperation<A, B, C>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = (*(**v4 + 256) + **(**v4 + 256));
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v12(a1, a2, a3, a4);
}

uint64_t protocol witness for MLS.GroupOperation.logger.getter in conformance MLS.KeyUpdateOperation<A, B, C>@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v3 + 184);
  v5 = type metadata accessor for Logger();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t partial apply for implicit closure #1 in MLS.KeyUpdateOperation.perform(on:metricCollector:keyPackageResult:)(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return implicit closure #1 in MLS.KeyUpdateOperation.perform(on:metricCollector:keyPackageResult:)(a1, v1);
}

uint64_t partial apply for implicit closure #2 in MLS.KeyUpdateOperation.perform(on:metricCollector:keyPackageResult:)(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return implicit closure #2 in MLS.KeyUpdateOperation.perform(on:metricCollector:keyPackageResult:)(a1, v5, v4);
}

uint64_t outlined init with copy of MLS.OutgoingKeyUpdate<Data>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO17OutgoingKeyUpdateVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17OutgoingKeyUpdateVy_10Foundation4DataVGMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for implicit closure #7 in MLS.KeyUpdateOperation.perform(on:metricCollector:keyPackageResult:)(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return implicit closure #5 in MLS.UpdateOtherExpiredKeyPackagesOperation.perform(on:metricCollector:keyPackageResult:)(a1, v4);
}

uint64_t outlined destroy of MLS.OutgoingKeyUpdate<Data>(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO17OutgoingKeyUpdateVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17OutgoingKeyUpdateVy_10Foundation4DataVGMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t partial apply for implicit closure #8 in MLS.KeyUpdateOperation.perform(on:metricCollector:keyPackageResult:)(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return implicit closure #8 in MLS.KeyUpdateOperation.perform(on:metricCollector:keyPackageResult:)(a1, v1);
}

uint64_t instantiation function for generic protocol witness table for MLS.KeyUpdateOperation<A, B, C>(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata completion function for MLS.KeyUpdateOperation(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Logger();
    if (v3 <= 0x3F)
    {
      return swift_initClassMetadata2();
    }
  }

  return result;
}

uint64_t dispatch thunk of MLS.KeyUpdateOperation.membersRequiringKeyPackages(swiftMLSGroup:)(uint64_t a1)
{
  v6 = (*(*v1 + 248) + **(*v1 + 248));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = dispatch thunk of KDSRegistration.XPCCoordinator.__allocating_init(clientIdentifier:provider:simUniqueID:simLabelID:supportedState:testPhoneNumberURI:);

  return v6(a1);
}

uint64_t dispatch thunk of MLS.KeyUpdateOperation.perform(on:metricCollector:keyPackageResult:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = (*(*v4 + 256) + **(*v4 + 256));
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v12(a1, a2, a3, a4);
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Data?, @guaranteed Data?) -> ()(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {

    v6 = v4;
    v4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;

    if (a3)
    {
LABEL_3:
      v9 = a3;
      a3 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v11 = v10;

      goto LABEL_6;
    }
  }

  else
  {

    v8 = 0xF000000000000000;
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v11 = 0xF000000000000000;
LABEL_6:
  v5(v4, v8, a3, v11);
  outlined consume of Data?(a3, v11);
  outlined consume of Data?(v4, v8);
}

void thunk for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSData?, @unowned NSData?) -> ()(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  if (a2 >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
  }

  if (a4 >> 60 == 15)
  {
    v8 = 0;
  }

  else
  {
    v8 = Data._bridgeToObjectiveC()().super.isa;
  }

  v9 = v8;
  (*(a5 + 16))(a5, isa);
}

uint64_t MLS.XPCClientCoordinator.__allocating_init(clientIdentifier:selfMember:clientEventDeliverer:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_allocObject();
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = specialized KDSRegistration.XPCCoordinator.__allocating_init(clientIdentifier:provider:simUniqueID:simLabelID:supportedState:testPhoneNumberURI:);

  return MLS.XPCClientCoordinator.init(clientIdentifier:selfMember:clientEventDeliverer:)(v6, a2, a3);
}

void MLS.UniqueClientIdentifier.init(clientIdentifier:clientURI:)(void *a1@<X1>, void *a2@<X8>)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
}

double MLS.UniqueClientIdentifier.clientURI.getter@<D0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;

  return result;
}

uint64_t MLS.UniqueClientIdentifier.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  strcpy(v4, "EncryptedRCS.");
  MEMORY[0x2667545A0](v1, v2);
  return v4[0];
}

uint64_t static MLS.UniqueClientIdentifier.== infix(_:_:)(uint64_t *a1, void *a2)
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

uint64_t protocol witness for CodingKey.stringValue.getter in conformance MLS.UniqueClientIdentifier.CodingKeys()
{
  if (*v0)
  {
    return 0x5255746E65696C63;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance MLS.UniqueClientIdentifier.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x80000002651E81D0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x5255746E65696C63 && a2 == 0xE900000000000049)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.UniqueClientIdentifier.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.UniqueClientIdentifier.CodingKeys and conformance MLS.UniqueClientIdentifier.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.UniqueClientIdentifier.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.UniqueClientIdentifier.CodingKeys and conformance MLS.UniqueClientIdentifier.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MLS.UniqueClientIdentifier.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO22UniqueClientIdentifierV10CodingKeys33_81D0A976D58F423DE3B3485741045346LLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO22UniqueClientIdentifierV10CodingKeys33_81D0A976D58F423DE3B3485741045346LLOGMR);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - v6;
  v8 = v1[1];
  v11 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MLS.UniqueClientIdentifier.CodingKeys and conformance MLS.UniqueClientIdentifier.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v12) = 0;
  lazy protocol witness table accessor for type MLS.ClientIdentifier and conformance MLS.ClientIdentifier();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v12 = v11;
    v13 = v8;
    v14 = 1;
    lazy protocol witness table accessor for type URI and conformance URI();

    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t MLS.UniqueClientIdentifier.hash(into:)(uint64_t a1)
{
  String.hash(into:)();
  String.hash(into:)();
  return MEMORY[0x266754DE0](0);
}

Swift::Int MLS.UniqueClientIdentifier.hashValue.getter()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  MEMORY[0x266754DE0](0);
  return Hasher._finalize()();
}

uint64_t MLS.UniqueClientIdentifier.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO22UniqueClientIdentifierV10CodingKeys33_81D0A976D58F423DE3B3485741045346LLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO22UniqueClientIdentifierV10CodingKeys33_81D0A976D58F423DE3B3485741045346LLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MLS.UniqueClientIdentifier.CodingKeys and conformance MLS.UniqueClientIdentifier.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    LOBYTE(v11[0]) = 0;
    lazy protocol witness table accessor for type MLS.ClientIdentifier and conformance MLS.ClientIdentifier();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v12 = 1;
    lazy protocol witness table accessor for type URI and conformance URI();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v6 + 8))(v8, v5);
    v9 = v11[1];
    *a2 = v11[0];
    a2[1] = v9;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance MLS.UniqueClientIdentifier()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  MEMORY[0x266754DE0](0);
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance MLS.UniqueClientIdentifier(uint64_t a1)
{
  String.hash(into:)();
  String.hash(into:)();
  return MEMORY[0x266754DE0](0);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance MLS.UniqueClientIdentifier(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  MEMORY[0x266754DE0](0);
  return Hasher._finalize()();
}

uint64_t MLS.XPCClientCoordinator.logger.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = direct field offset for MLS.XPCClientCoordinator.logger;
  v4 = type metadata accessor for Logger();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

double MLS.XPCClientCoordinator.uniqueClientIdentifier.getter@<D0>(void *a1@<X8>)
{
  v2 = *(v1 + direct field offset for MLS.XPCClientCoordinator.uniqueClientIdentifier + 8);
  *a1 = *(v1 + direct field offset for MLS.XPCClientCoordinator.uniqueClientIdentifier);
  a1[1] = v2;

  return result;
}

uint64_t MLS.XPCClientCoordinator.selfMember.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1 + direct field offset for MLS.XPCClientCoordinator.selfMember;
  v3 = *(v1 + direct field offset for MLS.XPCClientCoordinator.selfMember);
  v4 = *(v1 + direct field offset for MLS.XPCClientCoordinator.selfMember + 8);
  v5 = *(v1 + direct field offset for MLS.XPCClientCoordinator.selfMember + 16);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = *(v2 + 24);
  return outlined copy of MLS.AllMember(v3, v4);
}

uint64_t MLS.XPCClientCoordinator.keyPackage.getter(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v3 = static MLSActor.shared;
  v2[6] = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.XPCClientCoordinator.keyPackage.getter, v3, 0);
}

void MLS.XPCClientCoordinator.keyPackage.getter()
{

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[5];
  if (v3)
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 136315138;
    v7 = *(v4 + direct field offset for MLS.XPCClientCoordinator.uniqueClientIdentifier);
    v8 = *(v4 + direct field offset for MLS.XPCClientCoordinator.uniqueClientIdentifier + 8);
    v17 = v6;
    strcpy(v18, "EncryptedRCS.");
    HIWORD(v18[1]) = -4864;

    MEMORY[0x2667545A0](v7, v8);

    v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18[0], v18[1], &v17);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_264F1F000, v1, v2, "XPCClientCoordinator keyPackage { client: %s }", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x266755550](v6, -1, -1);
    MEMORY[0x266755550](v5, -1, -1);
  }

  else
  {
  }

  v10 = *(*(v0[5] + direct field offset for MLS.XPCClientCoordinator.xpcClient) + OBJC_IVAR____TtCO15SecureMessaging8XPCUtils9XPCClient_deliveryInterface);
  v0[7] = v10;
  v11 = *(*v10 + 360);

  v16 = v11 + *v11;
  v12 = swift_task_alloc();
  v0[8] = v12;
  v13 = lazy protocol witness table accessor for type MLS.KeyPackageInfo and conformance MLS.KeyPackageInfo();
  v14 = lazy protocol witness table accessor for type MLS.KeyPackageInfo and conformance MLS.KeyPackageInfo();
  v15 = lazy protocol witness table accessor for type MLS.SelfKeyPackageError and conformance MLS.SelfKeyPackageError();
  *v12 = v0;
  v12[1] = MLS.XPCClientCoordinator.keyPackage.getter;
  v26 = v14;
  v27 = v15;
  v25 = v13;
  v24 = MEMORY[0x277CC9318];
  v23 = &type metadata for MLS.SelfKeyPackageError;
  v21 = 0;
  v22 = &type metadata for MLS.KeyPackageInfo;
  v20 = closure #3 in MLS.XPCClientCoordinator.keyPackage.getter;

  __asm { BRAA            X8, X16 }
}

uint64_t MLS.XPCClientCoordinator.keyPackage.getter()
{
  v2 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = *(v2 + 48);
    v4 = MLS.XPCClientCoordinator.keyPackage.getter;
  }

  else
  {
    v5 = *(v2 + 48);

    v4 = MLS.XPCClientCoordinator.keyPackage.getter;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{
  **(v0 + 32) = *(v0 + 16);
  return (*(v0 + 8))();
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t closure #1 in MLS.XPCClientCoordinator.keyPackage.getter@<X0>(uint64_t *a3@<X8>)
{
  lazy protocol witness table accessor for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier();

  v5 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  if (v3)
  {
  }

  v8 = v5;
  v9 = v6;

  *a3 = v8;
  a3[1] = v9;
  return result;
}

uint64_t MLS.XPCRequest.init(continuation:type:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy10Foundation4DataVs5Error_pGMd, &_sScCy10Foundation4DataVs5Error_pGMR);
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  result = type metadata accessor for MLS.XPCRequest(0);
  *(a3 + *(result + 20)) = a2;
  return result;
}

void closure #3 in MLS.XPCClientCoordinator.keyPackage.getter(void **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *a1;
  isa = Data._bridgeToObjectiveC()().super.isa;
  v9[4] = a3;
  v9[5] = a4;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Data?, @guaranteed Data?) -> ();
  v9[3] = &block_descriptor_297;
  v8 = _Block_copy(v9);

  [v6 selfKeyPackageWithUniqueClientIdentifier:isa completion:v8];
  _Block_release(v8);
}

uint64_t MLS.XPCClientCoordinator.init(clientIdentifier:selfMember:clientEventDeliverer:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  *(v4 + 48) = a3;
  *(v4 + 56) = v5;
  *(v4 + 64) = *v5;
  v7 = type metadata accessor for Logger();
  *(v4 + 72) = v7;
  *(v4 + 80) = *(v7 - 8);
  *(v4 + 88) = swift_task_alloc();
  *(v4 + 96) = *a2;
  *(v4 + 112) = *(a2 + 16);
  *(v4 + 224) = *(a2 + 24);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v8 = static MLSActor.shared;
  *(v4 + 120) = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.XPCClientCoordinator.init(clientIdentifier:selfMember:clientEventDeliverer:), v8, 0);
}

uint64_t MLS.XPCClientCoordinator.init(clientIdentifier:selfMember:clientEventDeliverer:)()
{
  v24 = v0;
  v1 = *(v0 + 224);
  Logger.init(subsystem:category:)();
  if (v1 <= 0xFD)
  {
    v14 = *(v0 + 104);
    v15 = *(v0 + 112);
    v16 = *(v0 + 96);
    v17 = *(v0 + 56);
    v18 = *(v0 + 224);
    *(v17 + 16) = *(v0 + 48);
    v19 = v17 + direct field offset for MLS.XPCClientCoordinator.selfMember;
    *v19 = v16;
    *(v19 + 8) = v14;
    *(v19 + 16) = v15;
    *(v19 + 24) = v18;
    v20 = direct field offset for MLS.XPCClientCoordinator.uniqueClientIdentifier;
    *(v0 + 128) = direct field offset for MLS.XPCClientCoordinator.uniqueClientIdentifier;
    v21 = (v17 + v20);
    *v21 = v16;
    v21[1] = v14;

    outlined copy of MLS.AllMember(v16, v14);
    v22 = swift_task_alloc();
    *(v0 + 136) = v22;
    *v22 = v0;
    v22[1] = MLS.XPCClientCoordinator.init(clientIdentifier:selfMember:clientEventDeliverer:);

    return specialized static XPCUtils.XPCClient.weakSharedInstance.getter();
  }

  else
  {
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v23 = v5;
      *v4 = 136315138;
      *(v4 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x6574707972636E45, 0xEC00000053435264, &v23);
      _os_log_impl(&dword_264F1F000, v2, v3, "XPCClientCoordinator created without selfMember { client: %s }", v4, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v5);
      MEMORY[0x266755550](v5, -1, -1);
      MEMORY[0x266755550](v4, -1, -1);
    }

    v7 = *(v0 + 80);
    v6 = *(v0 + 88);
    v9 = *(v0 + 64);
    v8 = *(v0 + 72);
    lazy protocol witness table accessor for type MLS.ClientCreationError and conformance MLS.ClientCreationError();
    swift_allocError();
    *v10 = 1;
    *(v10 + 8) = 0;
    *(v10 + 16) = 0;
    swift_willThrow();

    (*(v7 + 8))(v6, v8);
    v11 = *(v9 + 96);
    *(v0 + 16) = *(v9 + 80);
    *(v0 + 32) = v11;
    type metadata accessor for MLS.XPCClientCoordinator(0, v0 + 16);
    swift_deallocPartialClassInstance();

    v12 = *(v0 + 8);

    return v12();
  }
}

{
  v1 = v0[18];
  v3 = v0[10];
  v2 = v0[11];
  v5 = v0[8];
  v4 = v0[9];
  v6 = v0[7];
  *(v6 + direct field offset for MLS.XPCClientCoordinator.xpcClient) = v1;
  type metadata accessor for XPCUtils.XPCNotifyListener();
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  v8 = direct field offset for MLS.XPCClientCoordinator.notifyListener;
  v0[19] = direct field offset for MLS.XPCClientCoordinator.notifyListener;
  *(v6 + v8) = v7;
  (*(v3 + 16))(v6 + direct field offset for MLS.XPCClientCoordinator.logger, v2, v4);
  v9 = *(v1 + OBJC_IVAR____TtCO15SecureMessaging8XPCUtils9XPCClient_deliveryInterface);
  v0[20] = v9;
  v10 = swift_allocObject();
  v0[21] = v10;
  swift_weakInit();
  v11 = swift_allocObject();
  v0[22] = v11;
  v12 = v5[10];
  v0[23] = v12;
  v11[2] = v12;
  v13 = v5[11];
  v0[24] = v13;
  v11[3] = v13;
  v14 = v5[12];
  v0[25] = v14;
  v11[4] = v14;
  v15 = v5[13];
  v0[26] = v15;
  v11[5] = v15;
  v11[6] = v10;
  v16 = *(*v9 + 352);

  v19 = (v16 + *v16);
  v17 = swift_task_alloc();
  v0[27] = v17;
  *v17 = v0;
  v17[1] = MLS.XPCClientCoordinator.init(clientIdentifier:selfMember:clientEventDeliverer:);

  return (v19)(&async function pointer to partial apply for closure #1 in MLS.XPCClientCoordinator.init(clientIdentifier:selfMember:clientEventDeliverer:), v11);
}

{
  v1 = *(*v0 + 120);

  return MEMORY[0x2822009F8](MLS.XPCClientCoordinator.init(clientIdentifier:selfMember:clientEventDeliverer:), v1, 0);
}

{
  v30 = v0;

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = (*(v0 + 56) + *(v0 + 128));
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 136315138;
    v6 = *v3;
    v7 = v3[1];
    v28 = v5;
    strcpy(v29, "EncryptedRCS.");
    HIWORD(v29[1]) = -4864;

    MEMORY[0x2667545A0](v6, v7);

    v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29[0], v29[1], &v28);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_264F1F000, v1, v2, "XPCClientCoordinator setting up notifyListener { client: %s }", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    MEMORY[0x266755550](v5, -1, -1);
    MEMORY[0x266755550](v4, -1, -1);
  }

  else
  {
  }

  v9 = *(v0 + 152);
  v10 = *(v0 + 56);
  v11 = (v10 + *(v0 + 128));
  v29[0] = 0xD000000000000036;
  v29[1] = 0x80000002651EA160;
  v12 = *v11;
  v13 = v11[1];

  v26 = *(v0 + 200);
  v27 = *(v0 + 184);
  MEMORY[0x2667545A0](v12, v13);

  v14 = v29[0];
  v15 = v29[1];
  v16 = *(v10 + v9);
  v17 = swift_allocObject();
  swift_weakInit();

  v18 = swift_allocObject();
  *(v18 + 16) = v27;
  *(v18 + 32) = v26;
  *(v18 + 48) = v17;
  *(v18 + 56) = v14;
  *(v18 + 64) = v15;
  v19 = *(*v16 + 120);

  v19(v14, v15, partial apply for closure #2 in MLS.XPCClientCoordinator.init(clientIdentifier:selfMember:clientEventDeliverer:), v18);
  v21 = *(v0 + 80);
  v20 = *(v0 + 88);
  v22 = *(v0 + 72);

  (*(v21 + 8))(v20, v22);

  v23 = *(v0 + 8);
  v24 = *(v0 + 56);

  return v23(v24);
}

uint64_t MLS.XPCClientCoordinator.init(clientIdentifier:selfMember:clientEventDeliverer:)(uint64_t a1)
{
  v2 = *(*v1 + 120);
  *(*v1 + 144) = a1;

  return MEMORY[0x2822009F8](MLS.XPCClientCoordinator.init(clientIdentifier:selfMember:clientEventDeliverer:), v2, 0);
}

uint64_t closure #1 in MLS.XPCClientCoordinator.init(clientIdentifier:selfMember:clientEventDeliverer:)()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[6] = Strong;
  if (Strong)
  {
    v5 = (*(*Strong + 184) + **(*Strong + 184));
    v2 = swift_task_alloc();
    v0[7] = v2;
    *v2 = v0;
    v2[1] = closure #1 in KDSRegistration.XPCCoordinator.init(clientIdentifier:provider:simUniqueID:simLabelID:supportedState:testPhoneNumberURI:);

    return v5();
  }

  else
  {
    v4 = v0[1];

    return v4();
  }
}

uint64_t closure #2 in MLS.XPCClientCoordinator.init(clientIdentifier:selfMember:clientEventDeliverer:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v19 - v6;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v9 = result;

    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v19 = v13;
      *v12 = 136315138;
      *(v12 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a2, a3, &v19);
      _os_log_impl(&dword_264F1F000, v10, v11, "Received XPC Notification { notificationName: %s }", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v13);
      MEMORY[0x266755550](v13, -1, -1);
      MEMORY[0x266755550](v12, -1, -1);
    }

    v14 = type metadata accessor for TaskPriority();
    (*(*(v14 - 8) + 56))(v7, 1, 1, v14);
    v15 = one-time initialization token for shared;

    if (v15 != -1)
    {
      swift_once();
    }

    v16 = static MLSActor.shared;
    v17 = _s15SecureMessaging8XPCActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLSActor and conformance MLSActor, type metadata accessor for MLSActor, &protocol conformance descriptor for MLSActor);
    v18 = swift_allocObject();
    v18[2] = v16;
    v18[3] = v17;
    v18[4] = v9;

    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v7, &async function pointer to partial apply for closure #1 in closure #2 in MLS.XPCClientCoordinator.init(clientIdentifier:selfMember:clientEventDeliverer:), v18);
  }

  return result;
}

uint64_t closure #1 in closure #2 in MLS.XPCClientCoordinator.init(clientIdentifier:selfMember:clientEventDeliverer:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v5 = static MLSActor.shared;

  return MEMORY[0x2822009F8](closure #1 in closure #2 in MLS.XPCClientCoordinator.init(clientIdentifier:selfMember:clientEventDeliverer:), v5, 0);
}

void closure #1 in closure #2 in MLS.XPCClientCoordinator.init(clientIdentifier:selfMember:clientEventDeliverer:)()
{
  v1 = v0[2];
  v5[0] = 0;
  v5[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(18);
  MEMORY[0x2667545A0](0xD000000000000010, 0x80000002651EA1C0);
  v2 = *(v1 + direct field offset for MLS.XPCClientCoordinator.uniqueClientIdentifier);
  v3 = *(v1 + direct field offset for MLS.XPCClientCoordinator.uniqueClientIdentifier + 8);
  strcpy(v5, "EncryptedRCS.");
  HIWORD(v5[1]) = -4864;
  MEMORY[0x2667545A0](v2, v3);
  MEMORY[0x2667545A0](v5[0], v5[1]);

  v0[3] = 0xE000000000000000;
  swift_retain_n();
  v4 = swift_task_alloc();
  v0[4] = v4;
  *v4 = v0;
  v4[1] = closure #1 in closure #2 in MLS.XPCClientCoordinator.init(clientIdentifier:selfMember:clientEventDeliverer:);
  v7 = v1;

  JUMPOUT(0x264FC1CA0);
}

uint64_t closure #1 in closure #2 in MLS.XPCClientCoordinator.init(clientIdentifier:selfMember:clientEventDeliverer:)()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t closure #2 in closure #1 in closure #2 in MLS.XPCClientCoordinator.init(clientIdentifier:selfMember:clientEventDeliverer:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v5 = (*(*a2 + 184) + **(*a2 + 184));
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = closure #2 in closure #1 in closure #2 in MLS.XPCClientCoordinator.init(clientIdentifier:selfMember:clientEventDeliverer:);

  return v5();
}

uint64_t closure #2 in closure #1 in closure #2 in MLS.XPCClientCoordinator.init(clientIdentifier:selfMember:clientEventDeliverer:)()
{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return MEMORY[0x2822009F8](closure #2 in closure #1 in closure #2 in MLS.XPCClientCoordinator.init(clientIdentifier:selfMember:clientEventDeliverer:), 0, 0);
  }
}

{
  **(v0 + 16) = 0;
  return (*(v0 + 8))();
}

uint64_t closure #3 in closure #1 in closure #2 in MLS.XPCClientCoordinator.init(clientIdentifier:selfMember:clientEventDeliverer:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](closure #3 in closure #1 in closure #2 in MLS.XPCClientCoordinator.init(clientIdentifier:selfMember:clientEventDeliverer:), 0, 0);
}

uint64_t closure #3 in closure #1 in closure #2 in MLS.XPCClientCoordinator.init(clientIdentifier:selfMember:clientEventDeliverer:)()
{
  v17 = v0;
  v1 = v0[5];

  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[4];
    v5 = v0[5];
    v8 = v0[2];
    v7 = v0[3];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v16 = v11;
    *v9 = 136315650;
    *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v7, &v16);
    *(v9 + 12) = 2048;
    *(v9 + 14) = v6;
    *(v9 + 22) = 2112;
    v12 = v5;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 24) = v13;
    *v10 = v13;
    _os_log_impl(&dword_264F1F000, v3, v4, "XPCClientCoordinator hit error reconnecting after notify { client: %s, attempt: %lu, error: %@", v9, 0x20u);
    outlined destroy of NSObject?(v10, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x266755550](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    MEMORY[0x266755550](v11, -1, -1);
    MEMORY[0x266755550](v9, -1, -1);
  }

  v14 = v0[1];

  return v14();
}

uint64_t closure #4 in closure #1 in closure #2 in MLS.XPCClientCoordinator.init(clientIdentifier:selfMember:clientEventDeliverer:)()
{
  v14 = v0;

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.fault.getter();
  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 16);
  if (v3)
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 136315138;
    v7 = *(v4 + direct field offset for MLS.XPCClientCoordinator.uniqueClientIdentifier);
    v8 = *(v4 + direct field offset for MLS.XPCClientCoordinator.uniqueClientIdentifier + 8);
    v12 = v6;
    strcpy(v13, "EncryptedRCS.");
    HIWORD(v13[1]) = -4864;

    MEMORY[0x2667545A0](v7, v8);

    v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13[0], v13[1], &v12);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_264F1F000, v1, v2, "XPCClientCoordinator unable to reconnect after multiple attempts { client: %s }", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x266755550](v6, -1, -1);
    MEMORY[0x266755550](v5, -1, -1);
  }

  else
  {
  }

  v10 = *(v0 + 8);

  return v10();
}

uint64_t MLS.XPCClientCoordinator.setupXPCConnection()()
{
  *(v1 + 16) = v0;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v2 = static MLSActor.shared;
  *(v1 + 24) = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.XPCClientCoordinator.setupXPCConnection(), v2, 0);
}

{
  v2 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v3 = *(v2 + 24);
    v4 = MLS.XPCClientCoordinator.setupXPCConnection();
  }

  else
  {
    v5 = *(v2 + 24);

    v4 = MLS.XPCClientCoordinator.setupXPCConnection();
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{
  v14 = v0;

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 16);
  if (v3)
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 136315138;
    v7 = *(v4 + direct field offset for MLS.XPCClientCoordinator.uniqueClientIdentifier);
    v8 = *(v4 + direct field offset for MLS.XPCClientCoordinator.uniqueClientIdentifier + 8);
    v12 = v6;
    strcpy(v13, "EncryptedRCS.");
    HIWORD(v13[1]) = -4864;

    MEMORY[0x2667545A0](v7, v8);

    v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13[0], v13[1], &v12);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_264F1F000, v1, v2, "XPCClientCoordinator XPC setup { client: %s }", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x266755550](v6, -1, -1);
    MEMORY[0x266755550](v5, -1, -1);
  }

  else
  {
  }

  v10 = *(v0 + 8);

  return v10();
}

{
  v19 = v0;
  v1 = v0[7];

  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v16 = v0[7];
    v5 = v0[2];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v6 = 136315394;
    v10 = *(v5 + direct field offset for MLS.XPCClientCoordinator.uniqueClientIdentifier);
    v9 = *(v5 + direct field offset for MLS.XPCClientCoordinator.uniqueClientIdentifier + 8);
    v17 = v8;
    strcpy(v18, "EncryptedRCS.");
    HIWORD(v18[1]) = -4864;

    MEMORY[0x2667545A0](v10, v9);

    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18[0], v18[1], &v17);

    *(v6 + 4) = v11;
    *(v6 + 12) = 2112;
    v12 = v16;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v13;
    *v7 = v13;
    _os_log_impl(&dword_264F1F000, v3, v4, "XPCClientCoordinator setupXPCConnection failed { client: %s, error: %@ }", v6, 0x16u);
    outlined destroy of NSObject?(v7, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x266755550](v7, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x266755550](v8, -1, -1);
    MEMORY[0x266755550](v6, -1, -1);
  }

  else
  {
  }

  swift_willThrow();
  v14 = v0[1];

  return v14();
}

void MLS.XPCClientCoordinator.setupXPCConnection()()
{
  v0[4] = direct field offset for MLS.XPCClientCoordinator.logger;

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[2];
  if (v3)
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 136315138;
    v7 = *(v4 + direct field offset for MLS.XPCClientCoordinator.uniqueClientIdentifier);
    v8 = *(v4 + direct field offset for MLS.XPCClientCoordinator.uniqueClientIdentifier + 8);
    v17 = v6;
    strcpy(v18, "EncryptedRCS.");
    HIWORD(v18[1]) = -4864;

    MEMORY[0x2667545A0](v7, v8);

    v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18[0], v18[1], &v17);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_264F1F000, v1, v2, "XPCClientCoordinator setting up XPC { client: %s }", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x266755550](v6, -1, -1);
    MEMORY[0x266755550](v5, -1, -1);
  }

  else
  {
  }

  v10 = *(*(v0[2] + direct field offset for MLS.XPCClientCoordinator.xpcClient) + OBJC_IVAR____TtCO15SecureMessaging8XPCUtils9XPCClient_deliveryInterface);
  v0[5] = v10;
  v11 = *(*v10 + 360);

  v16 = v11 + *v11;
  v12 = swift_task_alloc();
  v0[6] = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataV_ACtMd, &_s10Foundation4DataV_ACtMR);
  v14 = lazy protocol witness table accessor for type MLS.ClientCreationError and conformance MLS.ClientCreationError();
  *v12 = v0;
  v12[1] = MLS.XPCClientCoordinator.setupXPCConnection();
  v15 = v0[2];
  v26 = MEMORY[0x277D839B8];
  v27 = v14;
  v24 = v13;
  v25 = MEMORY[0x277D839D0];
  v23 = &type metadata for MLS.ClientCreationError;
  v21 = v15;
  v22 = MEMORY[0x277D839B0];
  v20 = partial apply for closure #3 in MLS.XPCClientCoordinator.setupXPCConnection();

  __asm { BRAA            X8, X16 }
}

uint64_t closure #1 in MLS.XPCClientCoordinator.setupXPCConnection()@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v11 = *(a1 + direct field offset for MLS.XPCClientCoordinator.selfMember);
  v12 = *(a1 + direct field offset for MLS.XPCClientCoordinator.selfMember + 8);
  outlined copy of MLS.AllMember(v11, v12);
  lazy protocol witness table accessor for type MLS.AllMember and conformance MLS.AllMember();
  v4 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v6 = v5;
  result = outlined consume of MLS.AllMember(v11, v12);
  if (!v2)
  {
    lazy protocol witness table accessor for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier();

    v8 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    v10 = v9;

    *a2 = v8;
    a2[1] = v10;
    a2[2] = v4;
    a2[3] = v6;
  }

  return result;
}

uint64_t closure #3 in MLS.XPCClientCoordinator.setupXPCConnection()(void **a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *a1;
  v8 = *a2;
  v9 = a2[1];
  v10 = a2[2];
  v11 = a2[3];
  outlined copy of Data._Representation(*a2, v9);
  outlined copy of Data._Representation(v10, v11);
  isa = Data._bridgeToObjectiveC()().super.isa;
  v13 = Data._bridgeToObjectiveC()().super.isa;
  aBlock[4] = a3;
  aBlock[5] = a4;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Data?, @guaranteed Data?) -> ();
  aBlock[3] = &block_descriptor_282;
  v14 = _Block_copy(aBlock);

  [v7 setupXPCConnectionWithClient:a5 uniqueClientIdentifier:isa selfMember:v13 completion:v14];
  _Block_release(v14);

  outlined consume of Data._Representation(v10, v11);
  return outlined consume of Data._Representation(v8, v9);
}

uint64_t MLS.XPCClientCoordinator.createGroup(identifier:otherMembers:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 744) = v5;
  *(v6 + 736) = a4;
  *(v6 + 728) = a3;
  *(v6 + 720) = a2;
  *(v6 + 712) = a1;
  *(v6 + 752) = type metadata accessor for MetricCollector.Event(0);
  *(v6 + 760) = swift_task_alloc();
  *(v6 + 768) = swift_task_alloc();
  v8 = *(a5 + 48);
  *(v6 + 176) = *(a5 + 32);
  *(v6 + 192) = v8;
  *(v6 + 208) = *(a5 + 64);
  v9 = *(a5 + 16);
  *(v6 + 144) = *a5;
  *(v6 + 160) = v9;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v10 = static MLSActor.shared;
  *(v6 + 776) = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.XPCClientCoordinator.createGroup(identifier:otherMembers:context:), v10, 0);
}

void MLS.XPCClientCoordinator.createGroup(identifier:otherMembers:context:)()
{
  *(v0 + 784) = direct field offset for MLS.XPCClientCoordinator.logger;
  outlined init with copy of MLS.OutgoingEventState?(v0 + 144, v0 + 288, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  outlined destroy of NSObject?(v0 + 144, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);
  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 744);
  if (v3)
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v40 = v6;
    *v5 = 136315394;
    v7 = *(v0 + 144);
    v8 = *(v0 + 152);

    v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v8, &v40);

    *(v5 + 4) = v9;
    *(v5 + 12) = 2080;
    v10 = *(v4 + direct field offset for MLS.XPCClientCoordinator.uniqueClientIdentifier);
    v11 = *(v4 + direct field offset for MLS.XPCClientCoordinator.uniqueClientIdentifier + 8);
    strcpy(v41, "EncryptedRCS.");
    HIWORD(v41[1]) = -4864;

    MEMORY[0x2667545A0](v10, v11);

    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41[0], v41[1], &v40);

    *(v5 + 14) = v12;
    _os_log_impl(&dword_264F1F000, v1, v2, "XPCClientCoordinator createGroup { identifier: %s, client: %s }", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v6, -1, -1);
    MEMORY[0x266755550](v5, -1, -1);
  }

  else
  {
  }

  v13 = *(v0 + 768);
  v14 = *(v0 + 760);
  v15 = *(v0 + 752);
  v16 = *(v0 + 744);
  v17 = *(v0 + 736);
  v37 = *(v0 + 720);
  v39 = *(v0 + 728);
  v18 = *(v0 + 160);
  *(v0 + 648) = *(v0 + 144);
  *(v0 + 664) = v18;
  v19 = *(v0 + 176);
  v20 = *(v0 + 200);
  *(v0 + 680) = *(v0 + 184);
  *(v0 + 696) = v20;
  outlined init with copy of MLS.OutgoingEventState?(v0 + 144, v0 + 360, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);
  Date.init()();
  v21 = *(v15 + 20);
  v22 = type metadata accessor for Date();
  (*(*(v22 - 8) + 56))(v13 + v21, 1, 1, v22);
  outlined init with take of MetricCollector.Event(v13, v14);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v41[0] = v19;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v14, 0x5864726177726F46, 0xEA00000000004350, isUniquelyReferenced_nonNull_native);
  v24 = v41[0];
  *(v0 + 792) = v41[0];

  v25 = *(v0 + 664);
  *(v0 + 216) = *(v0 + 648);
  *(v0 + 232) = v25;
  *(v0 + 248) = v24;
  v26 = *(v0 + 696);
  *(v0 + 256) = *(v0 + 680);
  *(v0 + 272) = v26;
  v27 = *(*(v16 + direct field offset for MLS.XPCClientCoordinator.xpcClient) + OBJC_IVAR____TtCO15SecureMessaging8XPCUtils9XPCClient_deliveryInterface);
  *(v0 + 800) = v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO29GroupCreationProcessedContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO29GroupCreationProcessedContextVy_10Foundation4DataVGMR);
  v29 = swift_task_alloc();
  *(v0 + 808) = v29;
  v29[2] = v17;
  v29[3] = v0 + 216;
  v29[4] = v16;
  v30 = swift_task_alloc();
  *(v0 + 816) = v30;
  *(v30 + 16) = v37;
  *(v30 + 24) = v39;
  v31 = *(*v27 + 360);

  v38 = v31 + *v31;
  v32 = swift_task_alloc();
  *(v0 + 824) = v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataV_A2CtMd, &_s10Foundation4DataV_A2CtMR);
  v34 = lazy protocol witness table accessor for type MLS.KeyPackageRetrievalResult<MLS.AllMember> and conformance MLS.KeyPackageRetrievalResult<A>(&lazy protocol witness table cache variable for type MLS.GroupCreationProcessedContext<Data> and conformance MLS.GroupCreationProcessedContext<A>, &_s15SecureMessaging3MLSO29GroupCreationProcessedContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO29GroupCreationProcessedContextVy_10Foundation4DataVGMR, &protocol conformance descriptor for MLS.GroupCreationProcessedContext<A>);
  v35 = lazy protocol witness table accessor for type MLS.KeyPackageRetrievalResult<MLS.AllMember> and conformance MLS.KeyPackageRetrievalResult<A>(&lazy protocol witness table cache variable for type MLS.GroupCreationProcessedContext<Data> and conformance MLS.GroupCreationProcessedContext<A>, &_s15SecureMessaging3MLSO29GroupCreationProcessedContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO29GroupCreationProcessedContextVy_10Foundation4DataVGMR, &protocol conformance descriptor for MLS.GroupCreationProcessedContext<A>);
  v36 = lazy protocol witness table accessor for type MLS.GroupCreationError and conformance MLS.GroupCreationError();
  *v32 = v0;
  v32[1] = MLS.XPCClientCoordinator.createGroup(identifier:otherMembers:context:);
  v49 = v35;
  v50 = v36;
  v47 = v33;
  v48 = v34;
  v45 = v28;
  v46 = &type metadata for MLS.GroupCreationError;
  v43 = partial apply for closure #3 in MLS.XPCClientCoordinator.createGroup(identifier:otherMembers:context:);
  v44 = v30;

  __asm { BRAA            X8, X16 }
}

uint64_t MLS.XPCClientCoordinator.createGroup(identifier:otherMembers:context:)()
{
  v2 = *v1;
  *(*v1 + 832) = v0;

  v3 = *(v2 + 776);

  if (v0)
  {
    v4 = MLS.XPCClientCoordinator.createGroup(identifier:otherMembers:context:);
  }

  else
  {
    v4 = MLS.XPCClientCoordinator.createGroup(identifier:otherMembers:context:);
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{
  v1 = *(v0 + 792);
  v2 = *(v0 + 712);
  v3 = *(v0 + 664);
  *(v0 + 576) = *(v0 + 648);
  *(v0 + 592) = v3;
  *(v0 + 608) = v1;
  v4 = *(v0 + 696);
  *(v0 + 616) = *(v0 + 680);
  *(v0 + 632) = v4;
  outlined destroy of NSObject?(v0 + 576, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);
  v5 = *(v0 + 64);
  v7 = *(v0 + 16);
  v6 = *(v0 + 32);
  v2[2] = *(v0 + 48);
  v2[3] = v5;
  *v2 = v7;
  v2[1] = v6;
  v8 = *(v0 + 128);
  v10 = *(v0 + 80);
  v9 = *(v0 + 96);
  v2[6] = *(v0 + 112);
  v2[7] = v8;
  v2[4] = v10;
  v2[5] = v9;

  v11 = *(v0 + 8);

  return v11();
}

{
  v25 = v0;
  v1 = *(v0 + 832);
  v2 = *(v0 + 792);
  v3 = *(v0 + 664);
  *(v0 + 432) = *(v0 + 648);
  *(v0 + 448) = v3;
  *(v0 + 464) = v2;
  v4 = *(v0 + 696);
  *(v0 + 472) = *(v0 + 680);
  *(v0 + 488) = v4;
  outlined destroy of NSObject?(v0 + 432, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

  outlined init with copy of MLS.OutgoingEventState?(v0 + 144, v0 + 504, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

  v5 = v1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();
  outlined destroy of NSObject?(v0 + 144, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v0 + 832);
    v9 = *(v0 + 744);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v23 = v12;
    *v10 = 136315650;
    v13 = *(v0 + 144);
    v14 = *(v0 + 152);

    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v23);

    *(v10 + 4) = v15;
    *(v10 + 12) = 2112;
    v16 = v8;
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v17;
    *v11 = v17;
    *(v10 + 22) = 2080;
    v18 = *(v9 + direct field offset for MLS.XPCClientCoordinator.uniqueClientIdentifier);
    v19 = *(v9 + direct field offset for MLS.XPCClientCoordinator.uniqueClientIdentifier + 8);

    strcpy(v24, "EncryptedRCS.");
    HIWORD(v24[1]) = -4864;
    MEMORY[0x2667545A0](v18, v19);

    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24[0], v24[1], &v23);

    *(v10 + 24) = v20;
    _os_log_impl(&dword_264F1F000, v6, v7, "XPCClientCoordinator createGroup failed { identifier: %s, error: %@, client: %s }", v10, 0x20u);
    outlined destroy of NSObject?(v11, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x266755550](v11, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x266755550](v12, -1, -1);
    MEMORY[0x266755550](v10, -1, -1);
  }

  else
  {
  }

  swift_willThrow();

  v21 = *(v0 + 8);

  return v21();
}

uint64_t closure #1 in MLS.XPCClientCoordinator.createGroup(identifier:otherMembers:context:)@<X0>(uint64_t *a4@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay15SecureMessaging3MLSO9AllMemberOGMd, &_sSay15SecureMessaging3MLSO9AllMemberOGMR);
  lazy protocol witness table accessor for type [MLS.AllMember] and conformance <A> [A]();
  result = dispatch thunk of JSONEncoder.encode<A>(_:)();
  if (!v4)
  {
    v8 = result;
    v9 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);
    lazy protocol witness table accessor for type MLS.KeyPackageRetrievalResult<MLS.AllMember> and conformance MLS.KeyPackageRetrievalResult<A>(&lazy protocol witness table cache variable for type MLS.GroupCreationContext<Data> and conformance MLS.GroupCreationContext<A>, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR, &protocol conformance descriptor for MLS.GroupCreationContext<A>);
    v10 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    v12 = v11;
    lazy protocol witness table accessor for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier();

    v13 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    v15 = v14;

    *a4 = v13;
    a4[1] = v15;
    a4[2] = v8;
    a4[3] = v9;
    a4[4] = v10;
    a4[5] = v12;
  }

  return result;
}

uint64_t closure #3 in MLS.XPCClientCoordinator.createGroup(identifier:otherMembers:context:)(id *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = a2[2];
  v10 = a2[3];
  v11 = a2[4];
  v12 = a2[5];
  v23 = *a2;
  v21 = *a1;
  v22 = a2[1];
  outlined copy of Data._Representation(*a2, v22);
  v20 = v9;
  outlined copy of Data._Representation(v9, v10);
  outlined copy of Data._Representation(v11, v12);
  isa = Data._bridgeToObjectiveC()().super.isa;
  v14 = MEMORY[0x266754510](a5, a6);
  v15 = Data._bridgeToObjectiveC()().super.isa;
  v16 = Data._bridgeToObjectiveC()().super.isa;
  aBlock[4] = a3;
  aBlock[5] = a4;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Data?, @guaranteed Data?) -> ();
  aBlock[3] = &block_descriptor_279;
  v17 = _Block_copy(aBlock);

  [v21 createGroupWithUniqueClientIdentifier:isa identifier:v14 otherMembers:v15 groupCreationContext:v16 completion:v17];
  _Block_release(v17);

  outlined consume of Data._Representation(v11, v12);
  outlined consume of Data._Representation(v20, v10);
  return outlined consume of Data._Representation(v23, v22);
}

uint64_t MLS.XPCClientCoordinator.joinGroup(identifier:otherMembers:welcome:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _OWORD *a5, uint64_t a6)
{
  *(v7 + 808) = v6;
  *(v7 + 800) = a4;
  *(v7 + 792) = a3;
  *(v7 + 784) = a2;
  *(v7 + 776) = a1;
  *(v7 + 816) = type metadata accessor for MetricCollector.Event(0);
  *(v7 + 824) = swift_task_alloc();
  *(v7 + 832) = swift_task_alloc();
  v10 = a5[1];
  *(v7 + 648) = *a5;
  *(v7 + 664) = v10;
  *(v7 + 680) = a5[2];
  *(v7 + 690) = *(a5 + 42);
  v11 = *(a6 + 48);
  *(v7 + 176) = *(a6 + 32);
  *(v7 + 192) = v11;
  *(v7 + 208) = *(a6 + 64);
  v12 = *(a6 + 16);
  *(v7 + 144) = *a6;
  *(v7 + 160) = v12;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v13 = static MLSActor.shared;
  *(v7 + 840) = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.XPCClientCoordinator.joinGroup(identifier:otherMembers:welcome:context:), v13, 0);
}

void MLS.XPCClientCoordinator.joinGroup(identifier:otherMembers:welcome:context:)()
{
  *(v0 + 848) = direct field offset for MLS.XPCClientCoordinator.logger;
  outlined init with copy of MLS.OutgoingEventState?(v0 + 144, v0 + 288, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  outlined destroy of NSObject?(v0 + 144, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);
  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 808);
  if (v3)
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v40 = v6;
    *v5 = 136315394;
    v7 = *(v0 + 144);
    v8 = *(v0 + 152);

    v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v8, &v40);

    *(v5 + 4) = v9;
    *(v5 + 12) = 2080;
    v10 = *(v4 + direct field offset for MLS.XPCClientCoordinator.uniqueClientIdentifier);
    v11 = *(v4 + direct field offset for MLS.XPCClientCoordinator.uniqueClientIdentifier + 8);
    strcpy(v41, "EncryptedRCS.");
    HIWORD(v41[1]) = -4864;

    MEMORY[0x2667545A0](v10, v11);

    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41[0], v41[1], &v40);

    *(v5 + 14) = v12;
    _os_log_impl(&dword_264F1F000, v1, v2, "XPCClientCoordinator joinGroup { identifier: %s, client: %s }", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v6, -1, -1);
    MEMORY[0x266755550](v5, -1, -1);
  }

  else
  {
  }

  v13 = *(v0 + 832);
  v14 = *(v0 + 824);
  v15 = *(v0 + 816);
  v16 = *(v0 + 808);
  v17 = *(v0 + 800);
  v39 = *(v0 + 792);
  v37 = *(v0 + 784);
  v18 = *(v0 + 160);
  *(v0 + 712) = *(v0 + 144);
  *(v0 + 728) = v18;
  v19 = *(v0 + 176);
  v20 = *(v0 + 200);
  *(v0 + 744) = *(v0 + 184);
  *(v0 + 760) = v20;
  outlined init with copy of MLS.OutgoingEventState?(v0 + 144, v0 + 360, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);
  Date.init()();
  v21 = *(v15 + 20);
  v22 = type metadata accessor for Date();
  (*(*(v22 - 8) + 56))(v13 + v21, 1, 1, v22);
  outlined init with take of MetricCollector.Event(v13, v14);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v41[0] = v19;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v14, 0x5864726177726F46, 0xEA00000000004350, isUniquelyReferenced_nonNull_native);
  v24 = v41[0];
  *(v0 + 856) = v41[0];

  v25 = *(v0 + 728);
  *(v0 + 216) = *(v0 + 712);
  *(v0 + 232) = v25;
  *(v0 + 248) = v24;
  v26 = *(v0 + 760);
  *(v0 + 256) = *(v0 + 744);
  *(v0 + 272) = v26;
  v27 = *(*(v16 + direct field offset for MLS.XPCClientCoordinator.xpcClient) + OBJC_IVAR____TtCO15SecureMessaging8XPCUtils9XPCClient_deliveryInterface);
  *(v0 + 864) = v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO29GroupCreationProcessedContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO29GroupCreationProcessedContextVy_10Foundation4DataVGMR);
  v29 = swift_task_alloc();
  *(v0 + 872) = v29;
  v29[2] = v17;
  v29[3] = v0 + 648;
  v29[4] = v0 + 216;
  v29[5] = v16;
  v30 = swift_task_alloc();
  *(v0 + 880) = v30;
  *(v30 + 16) = v37;
  *(v30 + 24) = v39;
  v31 = *(*v27 + 360);

  v38 = v31 + *v31;
  v32 = swift_task_alloc();
  *(v0 + 888) = v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataV_A3CtMd, &_s10Foundation4DataV_A3CtMR);
  v34 = lazy protocol witness table accessor for type MLS.KeyPackageRetrievalResult<MLS.AllMember> and conformance MLS.KeyPackageRetrievalResult<A>(&lazy protocol witness table cache variable for type MLS.GroupCreationProcessedContext<Data> and conformance MLS.GroupCreationProcessedContext<A>, &_s15SecureMessaging3MLSO29GroupCreationProcessedContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO29GroupCreationProcessedContextVy_10Foundation4DataVGMR, &protocol conformance descriptor for MLS.GroupCreationProcessedContext<A>);
  v35 = lazy protocol witness table accessor for type MLS.KeyPackageRetrievalResult<MLS.AllMember> and conformance MLS.KeyPackageRetrievalResult<A>(&lazy protocol witness table cache variable for type MLS.GroupCreationProcessedContext<Data> and conformance MLS.GroupCreationProcessedContext<A>, &_s15SecureMessaging3MLSO29GroupCreationProcessedContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO29GroupCreationProcessedContextVy_10Foundation4DataVGMR, &protocol conformance descriptor for MLS.GroupCreationProcessedContext<A>);
  v36 = lazy protocol witness table accessor for type MLS.GroupCreationError and conformance MLS.GroupCreationError();
  *v32 = v0;
  v32[1] = MLS.XPCClientCoordinator.joinGroup(identifier:otherMembers:welcome:context:);
  v49 = v35;
  v50 = v36;
  v47 = v33;
  v48 = v34;
  v45 = v28;
  v46 = &type metadata for MLS.GroupCreationError;
  v43 = partial apply for closure #3 in MLS.XPCClientCoordinator.joinGroup(identifier:otherMembers:welcome:context:);
  v44 = v30;

  __asm { BRAA            X8, X16 }
}

uint64_t MLS.XPCClientCoordinator.joinGroup(identifier:otherMembers:welcome:context:)()
{
  v2 = *v1;
  *(*v1 + 896) = v0;

  v3 = *(v2 + 840);

  if (v0)
  {
    v4 = MLS.XPCClientCoordinator.joinGroup(identifier:otherMembers:welcome:context:);
  }

  else
  {
    v4 = MLS.XPCClientCoordinator.joinGroup(identifier:otherMembers:welcome:context:);
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{
  v1 = *(v0 + 856);
  v2 = *(v0 + 776);
  v3 = *(v0 + 728);
  *(v0 + 576) = *(v0 + 712);
  *(v0 + 592) = v3;
  *(v0 + 608) = v1;
  v4 = *(v0 + 760);
  *(v0 + 616) = *(v0 + 744);
  *(v0 + 632) = v4;
  outlined destroy of NSObject?(v0 + 576, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);
  v5 = *(v0 + 64);
  v7 = *(v0 + 16);
  v6 = *(v0 + 32);
  v2[2] = *(v0 + 48);
  v2[3] = v5;
  *v2 = v7;
  v2[1] = v6;
  v8 = *(v0 + 128);
  v10 = *(v0 + 80);
  v9 = *(v0 + 96);
  v2[6] = *(v0 + 112);
  v2[7] = v8;
  v2[4] = v10;
  v2[5] = v9;

  v11 = *(v0 + 8);

  return v11();
}

{
  v25 = v0;
  v1 = *(v0 + 896);
  v2 = *(v0 + 856);
  v3 = *(v0 + 728);
  *(v0 + 432) = *(v0 + 712);
  *(v0 + 448) = v3;
  *(v0 + 464) = v2;
  v4 = *(v0 + 760);
  *(v0 + 472) = *(v0 + 744);
  *(v0 + 488) = v4;
  outlined destroy of NSObject?(v0 + 432, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

  outlined init with copy of MLS.OutgoingEventState?(v0 + 144, v0 + 504, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

  v5 = v1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();
  outlined destroy of NSObject?(v0 + 144, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v0 + 896);
    v9 = *(v0 + 808);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v23 = v12;
    *v10 = 136315650;
    v13 = *(v0 + 144);
    v14 = *(v0 + 152);

    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v23);

    *(v10 + 4) = v15;
    *(v10 + 12) = 2112;
    v16 = v8;
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v17;
    *v11 = v17;
    *(v10 + 22) = 2080;
    v18 = *(v9 + direct field offset for MLS.XPCClientCoordinator.uniqueClientIdentifier);
    v19 = *(v9 + direct field offset for MLS.XPCClientCoordinator.uniqueClientIdentifier + 8);

    strcpy(v24, "EncryptedRCS.");
    HIWORD(v24[1]) = -4864;
    MEMORY[0x2667545A0](v18, v19);

    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24[0], v24[1], &v23);

    *(v10 + 24) = v20;
    _os_log_impl(&dword_264F1F000, v6, v7, "XPCClientCoordinator joinGroup failed { identifier: %s, error: %@, client: %s }", v10, 0x20u);
    outlined destroy of NSObject?(v11, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x266755550](v11, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x266755550](v12, -1, -1);
    MEMORY[0x266755550](v10, -1, -1);
  }

  else
  {
  }

  swift_willThrow();

  v21 = *(v0 + 8);

  return v21();
}

uint64_t closure #1 in MLS.XPCClientCoordinator.joinGroup(identifier:otherMembers:welcome:context:)@<X0>(uint64_t *a5@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay15SecureMessaging3MLSO9AllMemberOGMd, &_sSay15SecureMessaging3MLSO9AllMemberOGMR);
  lazy protocol witness table accessor for type [MLS.AllMember] and conformance <A> [A]();
  result = dispatch thunk of JSONEncoder.encode<A>(_:)();
  if (!v5)
  {
    v9 = result;
    v19 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO15IncomingMessageVy_AC9AllMemberOGMd, &_s15SecureMessaging3MLSO15IncomingMessageVy_AC9AllMemberOGMR);
    lazy protocol witness table accessor for type MLS.KeyPackageRetrievalResult<MLS.AllMember> and conformance MLS.KeyPackageRetrievalResult<A>(&lazy protocol witness table cache variable for type MLS.IncomingMessage<MLS.AllMember> and conformance MLS.IncomingMessage<A>, &_s15SecureMessaging3MLSO15IncomingMessageVy_AC9AllMemberOGMd, &_s15SecureMessaging3MLSO15IncomingMessageVy_AC9AllMemberOGMR, &protocol conformance descriptor for MLS.IncomingMessage<A>);
    v10 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    v18 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);
    lazy protocol witness table accessor for type MLS.KeyPackageRetrievalResult<MLS.AllMember> and conformance MLS.KeyPackageRetrievalResult<A>(&lazy protocol witness table cache variable for type MLS.GroupCreationContext<Data> and conformance MLS.GroupCreationContext<A>, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR, &protocol conformance descriptor for MLS.GroupCreationContext<A>);
    v12 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    v17 = v13;
    lazy protocol witness table accessor for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier();

    v14 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    v16 = v15;

    *a5 = v14;
    a5[1] = v16;
    a5[2] = v9;
    a5[3] = v19;
    a5[4] = v10;
    a5[5] = v18;
    a5[6] = v12;
    a5[7] = v17;
  }

  return result;
}

uint64_t closure #3 in MLS.XPCClientCoordinator.joinGroup(identifier:otherMembers:welcome:context:)(id *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v27 = *a1;
  v8 = a2[2];
  v7 = a2[3];
  v10 = a2[4];
  v9 = a2[5];
  v12 = a2[6];
  v11 = a2[7];
  v29 = a2[1];
  v30 = *a2;
  outlined copy of Data._Representation(*a2, v29);
  v28 = v7;
  outlined copy of Data._Representation(v8, v7);
  v26 = v9;
  outlined copy of Data._Representation(v10, v9);
  v13 = v12;
  v14 = v12;
  v15 = v11;
  outlined copy of Data._Representation(v14, v11);
  isa = Data._bridgeToObjectiveC()().super.isa;
  v16 = MEMORY[0x266754510](a5, a6);
  v17 = Data._bridgeToObjectiveC()().super.isa;
  v18 = Data._bridgeToObjectiveC()().super.isa;
  v19 = Data._bridgeToObjectiveC()().super.isa;
  aBlock[4] = a3;
  aBlock[5] = a4;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Data?, @guaranteed Data?) -> ();
  aBlock[3] = &block_descriptor_276;
  v20 = _Block_copy(aBlock);

  [v27 joinGroupWithUniqueClientIdentifier:isa identifier:v16 otherMembers:v17 welcome:v18 groupCreationContext:v19 completion:v20];
  _Block_release(v20);

  outlined consume of Data._Representation(v13, v15);
  outlined consume of Data._Representation(v10, v26);
  outlined consume of Data._Representation(v8, v28);
  return outlined consume of Data._Representation(v30, v29);
}

uint64_t MLS.XPCClientCoordinator.delete(group:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 48) = a3;
  *(v5 + 56) = v4;
  *(v5 + 32) = a1;
  *(v5 + 40) = a2;
  v6 = *(a4 + 8);
  *(v5 + 64) = *a4;
  *(v5 + 72) = v6;
  *(v5 + 80) = *(a4 + 16);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v7 = static MLSActor.shared;
  *(v5 + 96) = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.XPCClientCoordinator.delete(group:context:), v7, 0);
}

void MLS.XPCClientCoordinator.delete(group:context:)()
{
  v2 = v0[10];
  v1 = v0[11];
  v0[13] = direct field offset for MLS.XPCClientCoordinator.logger;

  outlined copy of Data?(v2, v1);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  outlined consume of Data?(v2, v1);
  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[8];
    v5 = v0[9];
    v7 = v0[7];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v31 = v9;
    *v8 = 136315394;

    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v5, &v31);

    *(v8 + 4) = v10;
    *(v8 + 12) = 2080;
    v11 = *(v7 + direct field offset for MLS.XPCClientCoordinator.uniqueClientIdentifier);
    v12 = *(v7 + direct field offset for MLS.XPCClientCoordinator.uniqueClientIdentifier + 8);
    strcpy(v32, "EncryptedRCS.");
    HIWORD(v32[1]) = -4864;

    MEMORY[0x2667545A0](v11, v12);

    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32[0], v32[1], &v31);

    *(v8 + 14) = v13;
    _os_log_impl(&dword_264F1F000, v3, v4, "XPCClientCoordinator delete { identifier: %s, client: %s }", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v9, -1, -1);
    MEMORY[0x266755550](v8, -1, -1);
  }

  else
  {
  }

  v15 = v0[10];
  v14 = v0[11];
  v30 = *(v0 + 4);
  v17 = v0[6];
  v16 = v0[7];
  v18 = v0[5];
  v19 = *(*(v16 + direct field offset for MLS.XPCClientCoordinator.xpcClient) + OBJC_IVAR____TtCO15SecureMessaging8XPCUtils9XPCClient_deliveryInterface);
  v0[14] = v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO29GroupDeletionProcessedContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO29GroupDeletionProcessedContextVy_10Foundation4DataVGMR);
  v21 = swift_task_alloc();
  v0[15] = v21;
  *(v21 + 16) = v30;
  *(v21 + 32) = v15;
  *(v21 + 40) = v14;
  *(v21 + 48) = v16;
  v22 = swift_task_alloc();
  v0[16] = v22;
  *(v22 + 16) = v18;
  *(v22 + 24) = v17;
  v23 = *(*v19 + 360);

  v29 = v23 + *v23;
  v24 = swift_task_alloc();
  v0[17] = v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataV_ACtMd, &_s10Foundation4DataV_ACtMR);
  v26 = lazy protocol witness table accessor for type MLS.KeyPackageRetrievalResult<MLS.AllMember> and conformance MLS.KeyPackageRetrievalResult<A>(&lazy protocol witness table cache variable for type MLS.GroupDeletionProcessedContext<Data> and conformance MLS.GroupDeletionProcessedContext<A>, &_s15SecureMessaging3MLSO29GroupDeletionProcessedContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO29GroupDeletionProcessedContextVy_10Foundation4DataVGMR, &protocol conformance descriptor for MLS.GroupDeletionProcessedContext<A>);
  v27 = lazy protocol witness table accessor for type MLS.KeyPackageRetrievalResult<MLS.AllMember> and conformance MLS.KeyPackageRetrievalResult<A>(&lazy protocol witness table cache variable for type MLS.GroupDeletionProcessedContext<Data> and conformance MLS.GroupDeletionProcessedContext<A>, &_s15SecureMessaging3MLSO29GroupDeletionProcessedContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO29GroupDeletionProcessedContextVy_10Foundation4DataVGMR, &protocol conformance descriptor for MLS.GroupDeletionProcessedContext<A>);
  v28 = lazy protocol witness table accessor for type MLS.GroupDeletionError and conformance MLS.GroupDeletionError();
  *v24 = v0;
  v24[1] = MLS.XPCClientCoordinator.delete(group:context:);
  v40 = v27;
  v41 = v28;
  v38 = v25;
  v39 = v26;
  v36 = v20;
  v37 = &type metadata for MLS.GroupDeletionError;
  v34 = partial apply for closure #3 in MLS.XPCClientCoordinator.delete(group:context:);
  v35 = v22;

  __asm { BRAA            X8, X16 }
}

uint64_t MLS.XPCClientCoordinator.delete(group:context:)()
{
  v2 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v3 = *(v2 + 96);
    v4 = MLS.XPCClientCoordinator.delete(group:context:);
  }

  else
  {
    v5 = *(v2 + 96);

    v4 = MLS.XPCClientCoordinator.delete(group:context:);
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{
  v24 = v0;
  v1 = v0[18];
  v3 = v0[10];
  v2 = v0[11];

  outlined copy of Data?(v3, v2);

  v4 = v1;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  outlined consume of Data?(v3, v2);

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[18];
    v9 = v0[8];
    v8 = v0[9];
    v10 = v0[7];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v22 = v13;
    *v11 = 136315650;

    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v8, &v22);

    *(v11 + 4) = v14;
    *(v11 + 12) = 2112;
    v15 = v7;
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 14) = v16;
    *v12 = v16;
    *(v11 + 22) = 2080;
    v17 = *(v10 + direct field offset for MLS.XPCClientCoordinator.uniqueClientIdentifier);
    v18 = *(v10 + direct field offset for MLS.XPCClientCoordinator.uniqueClientIdentifier + 8);

    strcpy(v23, "EncryptedRCS.");
    HIWORD(v23[1]) = -4864;
    MEMORY[0x2667545A0](v17, v18);

    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23[0], v23[1], &v22);

    *(v11 + 24) = v19;
    _os_log_impl(&dword_264F1F000, v5, v6, "XPCClientCoordinator delete failed { identifier: %s, error: %@, client: %s }", v11, 0x20u);
    outlined destroy of NSObject?(v12, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x266755550](v12, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x266755550](v13, -1, -1);
    MEMORY[0x266755550](v11, -1, -1);
  }

  else
  {
  }

  swift_willThrow();
  v20 = v0[1];

  return v20();
}

uint64_t closure #1 in MLS.XPCClientCoordinator.delete(group:context:)@<X0>(uint64_t *a6@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO20GroupDeletionContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupDeletionContextVy_10Foundation4DataVGMR);
  lazy protocol witness table accessor for type MLS.KeyPackageRetrievalResult<MLS.AllMember> and conformance MLS.KeyPackageRetrievalResult<A>(&lazy protocol witness table cache variable for type MLS.GroupDeletionContext<Data> and conformance MLS.GroupDeletionContext<A>, &_s15SecureMessaging3MLSO20GroupDeletionContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupDeletionContextVy_10Foundation4DataVGMR, &protocol conformance descriptor for MLS.GroupDeletionContext<A>);
  result = dispatch thunk of JSONEncoder.encode<A>(_:)();
  if (!v6)
  {
    v10 = result;
    v11 = v9;
    lazy protocol witness table accessor for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier();

    v12 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    v14 = v13;

    *a6 = v12;
    a6[1] = v14;
    a6[2] = v10;
    a6[3] = v11;
  }

  return result;
}

uint64_t MLS.XPCClientCoordinator.group(identifier:context:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5[17] = a3;
  v5[18] = v4;
  v5[15] = a1;
  v5[16] = a2;
  v6 = a4[1];
  v5[19] = *a4;
  v5[20] = v6;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v7 = static MLSActor.shared;
  v5[21] = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.XPCClientCoordinator.group(identifier:context:), v7, 0);
}

void MLS.XPCClientCoordinator.group(identifier:context:)()
{
  v0[22] = direct field offset for MLS.XPCClientCoordinator.logger;

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v4 = v0[19];
    v3 = v0[20];
    v5 = v0[18];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v26 = v7;
    *v6 = 136315394;
    *(v6 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v4, v3, &v26);
    *(v6 + 12) = 2080;
    v8 = *(v5 + direct field offset for MLS.XPCClientCoordinator.uniqueClientIdentifier);
    v9 = *(v5 + direct field offset for MLS.XPCClientCoordinator.uniqueClientIdentifier + 8);
    strcpy(v27, "EncryptedRCS.");
    HIWORD(v27[1]) = -4864;

    MEMORY[0x2667545A0](v8, v9);

    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27[0], v27[1], &v26);

    *(v6 + 14) = v10;
    _os_log_impl(&dword_264F1F000, v1, v2, "XPCClientCoordinator group { identifier: %s, client: %s }", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v7, -1, -1);
    MEMORY[0x266755550](v6, -1, -1);
  }

  else
  {
  }

  v12 = v0[19];
  v11 = v0[20];
  v14 = v0[17];
  v13 = v0[18];
  v15 = v0[16];
  v16 = *(*(v13 + direct field offset for MLS.XPCClientCoordinator.xpcClient) + OBJC_IVAR____TtCO15SecureMessaging8XPCUtils9XPCClient_deliveryInterface);
  v0[23] = v16;
  v17 = swift_task_alloc();
  v0[24] = v17;
  v17[2] = v12;
  v17[3] = v11;
  v17[4] = v13;
  v18 = swift_task_alloc();
  v0[25] = v18;
  *(v18 + 16) = v15;
  *(v18 + 24) = v14;
  v19 = *(*v16 + 360);

  v25 = v19 + *v19;
  v20 = swift_task_alloc();
  v0[26] = v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataV_ACtMd, &_s10Foundation4DataV_ACtMR);
  v22 = lazy protocol witness table accessor for type MLS.Group and conformance MLS.Group();
  v23 = lazy protocol witness table accessor for type MLS.Group and conformance MLS.Group();
  Error = lazy protocol witness table accessor for type MLS.GroupFetchError and conformance MLS.GroupFetchError();
  *v20 = v0;
  v20[1] = MLS.XPCClientCoordinator.group(identifier:context:);
  v35 = v23;
  v36 = Error;
  v33 = v21;
  v34 = v22;
  v32 = &type metadata for MLS.GroupFetchError;
  v30 = v18;
  v31 = &type metadata for MLS.Group;
  v29 = partial apply for closure #3 in MLS.XPCClientCoordinator.group(identifier:context:);

  __asm { BRAA            X8, X16 }
}

uint64_t MLS.XPCClientCoordinator.group(identifier:context:)()
{
  v2 = *v1;
  *(*v1 + 216) = v0;

  if (v0)
  {
    v3 = *(v2 + 168);
    v4 = MLS.XPCClientCoordinator.group(identifier:context:);
  }

  else
  {
    v5 = *(v2 + 168);

    v4 = MLS.XPCClientCoordinator.group(identifier:context:);
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{
  v2 = *(v0 + 80);
  v1 = *(v0 + 96);
  v3 = *(v0 + 120);
  v4 = *(v0 + 64);
  *(v3 + 96) = *(v0 + 112);
  *(v3 + 64) = v2;
  *(v3 + 80) = v1;
  *(v3 + 48) = v4;
  v5 = *(v0 + 16);
  v6 = *(v0 + 48);
  *(v3 + 16) = *(v0 + 32);
  *(v3 + 32) = v6;
  *v3 = v5;

  v7 = *(v0 + 8);

  return v7();
}

{
  v21 = v0;
  v1 = v0[27];

  swift_retain_n();

  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[27];
    v7 = v0[19];
    v6 = v0[20];
    v8 = v0[18];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v19 = v11;
    *v9 = 136315650;
    *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v6, &v19);
    *(v9 + 12) = 2112;
    v12 = v5;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v13;
    *v10 = v13;
    *(v9 + 22) = 2080;
    v14 = *(v8 + direct field offset for MLS.XPCClientCoordinator.uniqueClientIdentifier);
    v15 = *(v8 + direct field offset for MLS.XPCClientCoordinator.uniqueClientIdentifier + 8);

    strcpy(v20, "EncryptedRCS.");
    HIWORD(v20[1]) = -4864;
    MEMORY[0x2667545A0](v14, v15);

    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20[0], v20[1], &v19);

    *(v9 + 24) = v16;
    _os_log_impl(&dword_264F1F000, v3, v4, "XPCClientCoordinator group failed { identifier: %s, error: %@, client: %s }", v9, 0x20u);
    outlined destroy of NSObject?(v10, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x266755550](v10, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x266755550](v11, -1, -1);
    MEMORY[0x266755550](v9, -1, -1);
  }

  else
  {
  }

  swift_willThrow();
  v17 = v0[1];

  return v17();
}

uint64_t closure #1 in MLS.XPCClientCoordinator.group(identifier:context:)@<X0>(uint64_t *a5@<X8>)
{
  lazy protocol witness table accessor for type MLS.GroupFetchContext and conformance MLS.GroupFetchContext();
  result = dispatch thunk of JSONEncoder.encode<A>(_:)();
  if (!v5)
  {
    v9 = result;
    v10 = v8;
    lazy protocol witness table accessor for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier();

    v11 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    v13 = v12;

    *a5 = v11;
    a5[1] = v13;
    a5[2] = v9;
    a5[3] = v10;
  }

  return result;
}

uint64_t MLS.XPCClientCoordinator.update(groupDetails:forGroup:)(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = v3;
  *(v4 + 16) = a2;
  *(v4 + 40) = *a1;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v5 = static MLSActor.shared;
  *(v4 + 56) = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.XPCClientCoordinator.update(groupDetails:forGroup:), v5, 0);
}

void MLS.XPCClientCoordinator.update(groupDetails:forGroup:)()
{
  v0[8] = direct field offset for MLS.XPCClientCoordinator.logger;

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v4 = v0[2];
    v3 = v0[3];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v20 = v6;
    *v5 = 136315138;
    *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v4, v3, &v20);
    _os_log_impl(&dword_264F1F000, v1, v2, "XPCClientCoordinator updateGroupDetails { group: %s }", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x266755550](v6, -1, -1);
    MEMORY[0x266755550](v5, -1, -1);
  }

  v8 = v0[5];
  v7 = v0[6];
  v10 = v0[3];
  v9 = v0[4];
  v11 = v0[2];
  v12 = *(*(v9 + direct field offset for MLS.XPCClientCoordinator.xpcClient) + OBJC_IVAR____TtCO15SecureMessaging8XPCUtils9XPCClient_deliveryInterface);
  v0[9] = v12;
  v13 = swift_task_alloc();
  v0[10] = v13;
  v13[2] = v9;
  v13[3] = v8;
  v13[4] = v7;
  v14 = swift_task_alloc();
  v0[11] = v14;
  *(v14 + 16) = v11;
  *(v14 + 24) = v10;
  v15 = *(*v12 + 360);

  v19 = v15 + *v15;
  v16 = swift_task_alloc();
  v0[12] = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataV_ACtMd, &_s10Foundation4DataV_ACtMR);
  updated = lazy protocol witness table accessor for type MLS.GroupUpdateError and conformance MLS.GroupUpdateError();
  *v16 = v0;
  v16[1] = MLS.XPCClientCoordinator.update(groupDetails:forGroup:);
  v28 = MEMORY[0x277D839B8];
  v29 = updated;
  v26 = v17;
  v27 = MEMORY[0x277D839D0];
  v25 = &type metadata for MLS.GroupUpdateError;
  v23 = v14;
  v24 = MEMORY[0x277D839B0];
  v22 = partial apply for closure #3 in MLS.XPCClientCoordinator.update(groupDetails:forGroup:);

  __asm { BRAA            X8, X16 }
}

uint64_t MLS.XPCClientCoordinator.update(groupDetails:forGroup:)()
{
  v2 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = *(v2 + 56);
    v4 = MLS.XPCClientCoordinator.update(groupDetails:forGroup:);
  }

  else
  {
    v5 = *(v2 + 56);

    v4 = MLS.EventQueue.reenqueueAtFront(identifier:eventState:andBlockOnVersion:sendBlock:);
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{
  v21 = v0;
  v1 = v0[13];

  swift_retain_n();

  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[13];
    v7 = v0[3];
    v6 = v0[4];
    v8 = v0[2];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v19 = v11;
    *v9 = 136315650;
    *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v7, &v19);
    *(v9 + 12) = 2112;
    v12 = v5;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v13;
    *v10 = v13;
    *(v9 + 22) = 2080;
    v14 = *(v6 + direct field offset for MLS.XPCClientCoordinator.uniqueClientIdentifier);
    v15 = *(v6 + direct field offset for MLS.XPCClientCoordinator.uniqueClientIdentifier + 8);

    strcpy(v20, "EncryptedRCS.");
    HIWORD(v20[1]) = -4864;
    MEMORY[0x2667545A0](v14, v15);

    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20[0], v20[1], &v19);

    *(v9 + 24) = v16;
    _os_log_impl(&dword_264F1F000, v3, v4, "XPCClientCoordinator updateGroupDetails failed { group: %s, error: %@, client: %s }", v9, 0x20u);
    outlined destroy of NSObject?(v10, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x266755550](v10, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x266755550](v11, -1, -1);
    MEMORY[0x266755550](v9, -1, -1);
  }

  else
  {
  }

  swift_willThrow();
  v17 = v0[1];

  return v17();
}

uint64_t closure #1 in MLS.XPCClientCoordinator.update(groupDetails:forGroup:)@<X0>(uint64_t *a5@<X8>)
{
  lazy protocol witness table accessor for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier();

  v7 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v9 = v8;

  if (!v5)
  {
    lazy protocol witness table accessor for type MLS.GroupDetails and conformance MLS.GroupDetails();
    result = dispatch thunk of JSONEncoder.encode<A>(_:)();
    *a5 = v7;
    a5[1] = v9;
    a5[2] = result;
    a5[3] = v11;
  }

  return result;
}

uint64_t closure #3 in MLS.XPCClientCoordinator.update(groupDetails:forGroup:)(id *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v19 = *a1;
  v10 = *a2;
  v11 = a2[1];
  v12 = a2[2];
  v13 = a2[3];
  outlined copy of Data._Representation(*a2, v11);
  outlined copy of Data._Representation(v12, v13);
  isa = Data._bridgeToObjectiveC()().super.isa;
  v15 = Data._bridgeToObjectiveC()().super.isa;
  v16 = MEMORY[0x266754510](a5, a6);
  aBlock[4] = a3;
  aBlock[5] = a4;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Data?, @guaranteed Data?) -> ();
  aBlock[3] = &block_descriptor_267;
  v17 = _Block_copy(aBlock);

  [v19 updateWithUniqueClientIdentifier:isa groupDetails:v15 forGroup:v16 completion:v17];
  _Block_release(v17);

  outlined consume of Data._Representation(v12, v13);
  return outlined consume of Data._Representation(v10, v11);
}

uint64_t MLS.XPCClientCoordinator.otherMembers(group:context:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  *(v4 + 24) = a1;
  *(v4 + 32) = a2;
  v5 = *a3;
  v6 = a3[1];
  *(v4 + 40) = v3;
  *(v4 + 48) = v5;
  *(v4 + 56) = v6;
  *(v4 + 120) = *(a3 + 16);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v7 = static MLSActor.shared;
  *(v4 + 64) = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.XPCClientCoordinator.otherMembers(group:context:), v7, 0);
}

void MLS.XPCClientCoordinator.otherMembers(group:context:)()
{
  *(v0 + 72) = direct field offset for MLS.XPCClientCoordinator.logger;

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v4 = *(v0 + 48);
    v3 = *(v0 + 56);
    v5 = *(v0 + 40);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v28 = v7;
    *v6 = 136315394;
    *(v6 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v4, v3, &v28);
    *(v6 + 12) = 2080;
    v8 = *(v5 + direct field offset for MLS.XPCClientCoordinator.uniqueClientIdentifier);
    v9 = *(v5 + direct field offset for MLS.XPCClientCoordinator.uniqueClientIdentifier + 8);
    strcpy(v29, "EncryptedRCS.");
    HIWORD(v29[1]) = -4864;

    MEMORY[0x2667545A0](v8, v9);

    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29[0], v29[1], &v28);

    *(v6 + 14) = v10;
    _os_log_impl(&dword_264F1F000, v1, v2, "XPCClientCoordinator otherMembers { identifier: %s, client: %s }", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v7, -1, -1);
    MEMORY[0x266755550](v6, -1, -1);
  }

  else
  {
  }

  v11 = *(v0 + 120);
  v13 = *(v0 + 48);
  v12 = *(v0 + 56);
  v15 = *(v0 + 32);
  v14 = *(v0 + 40);
  v16 = *(v0 + 24);
  v17 = *(*(v14 + direct field offset for MLS.XPCClientCoordinator.xpcClient) + OBJC_IVAR____TtCO15SecureMessaging8XPCUtils9XPCClient_deliveryInterface);
  *(v0 + 80) = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sShy15SecureMessaging3MLSO9AllMemberOGMd, &_sShy15SecureMessaging3MLSO9AllMemberOGMR);
  v19 = swift_task_alloc();
  *(v0 + 88) = v19;
  *(v19 + 16) = v13;
  *(v19 + 24) = v12;
  *(v19 + 32) = v11;
  *(v19 + 40) = v14;
  v20 = swift_task_alloc();
  *(v0 + 96) = v20;
  *(v20 + 16) = v16;
  *(v20 + 24) = v15;
  v21 = *(*v17 + 360);

  v27 = v21 + *v21;
  v22 = swift_task_alloc();
  *(v0 + 104) = v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataV_ACtMd, &_s10Foundation4DataV_ACtMR);
  v24 = lazy protocol witness table accessor for type Set<MLS.AllMember> and conformance <> Set<A>();
  v25 = lazy protocol witness table accessor for type Set<MLS.AllMember> and conformance <> Set<A>();
  v26 = lazy protocol witness table accessor for type MLS.GroupMembersError and conformance MLS.GroupMembersError();
  *v22 = v0;
  v22[1] = MLS.XPCClientCoordinator.otherMembers(group:context:);
  v37 = v25;
  v38 = v26;
  v35 = v23;
  v36 = v24;
  v33 = v18;
  v34 = &type metadata for MLS.GroupMembersError;
  v31 = partial apply for closure #3 in MLS.XPCClientCoordinator.otherMembers(group:context:);
  v32 = v20;

  __asm { BRAA            X8, X16 }
}

uint64_t MLS.XPCClientCoordinator.otherMembers(group:context:)()
{
  v2 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = *(v2 + 64);
    v4 = MLS.XPCClientCoordinator.otherMembers(group:context:);
  }

  else
  {
    v5 = *(v2 + 64);

    v4 = MLS.XPCClientCoordinator.otherMembers(group:context:);
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{
  return (*(v0 + 8))(*(v0 + 16));
}

{
  v21 = v0;
  v1 = v0[14];

  swift_retain_n();

  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[14];
    v7 = v0[6];
    v6 = v0[7];
    v8 = v0[5];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v19 = v11;
    *v9 = 136315650;
    *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v6, &v19);
    *(v9 + 12) = 2112;
    v12 = v5;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v13;
    *v10 = v13;
    *(v9 + 22) = 2080;
    v14 = *(v8 + direct field offset for MLS.XPCClientCoordinator.uniqueClientIdentifier);
    v15 = *(v8 + direct field offset for MLS.XPCClientCoordinator.uniqueClientIdentifier + 8);

    strcpy(v20, "EncryptedRCS.");
    HIWORD(v20[1]) = -4864;
    MEMORY[0x2667545A0](v14, v15);

    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20[0], v20[1], &v19);

    *(v9 + 24) = v16;
    _os_log_impl(&dword_264F1F000, v3, v4, "XPCClientCoordinator otherMembers failed { identifier: %s, error: %@, client: %s }", v9, 0x20u);
    outlined destroy of NSObject?(v10, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x266755550](v10, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x266755550](v11, -1, -1);
    MEMORY[0x266755550](v9, -1, -1);
  }

  else
  {
  }

  swift_willThrow();
  v17 = v0[1];

  return v17();
}

uint64_t closure #1 in MLS.XPCClientCoordinator.otherMembers(group:context:)@<X0>(uint64_t *a5@<X8>)
{
  lazy protocol witness table accessor for type MLS.GroupMembersContext and conformance MLS.GroupMembersContext();
  result = dispatch thunk of JSONEncoder.encode<A>(_:)();
  if (!v5)
  {
    v9 = result;
    v10 = v8;
    lazy protocol witness table accessor for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier();

    v11 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    v13 = v12;

    *a5 = v11;
    a5[1] = v13;
    a5[2] = v9;
    a5[3] = v10;
  }

  return result;
}

uint64_t MLS.XPCClientCoordinator.add(members:toGroup:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  *(v6 + 112) = a4;
  *(v6 + 120) = v5;
  *(v6 + 96) = a2;
  *(v6 + 104) = a3;
  *(v6 + 88) = a1;
  *(v6 + 128) = type metadata accessor for MetricCollector.Event(0);
  *(v6 + 136) = swift_task_alloc();
  v8 = swift_task_alloc();
  v9 = *a5;
  v10 = a5[1];
  *(v6 + 144) = v8;
  *(v6 + 152) = v9;
  *(v6 + 160) = v10;
  *(v6 + 168) = *(a5 + 1);
  *(v6 + 184) = a5[4];
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v11 = static MLSActor.shared;
  *(v6 + 192) = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.XPCClientCoordinator.add(members:toGroup:context:), v11, 0);
}

void MLS.XPCClientCoordinator.add(members:toGroup:context:)()
{
  v1 = v0[22];
  v2 = v0[21];
  v0[25] = direct field offset for MLS.XPCClientCoordinator.logger;

  outlined copy of Data?(v2, v1);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  outlined consume of Data?(v2, v1);

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[19];
    v5 = v0[20];
    v7 = v0[15];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v41 = v9;
    *v8 = 136315394;

    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v5, &v41);

    *(v8 + 4) = v10;
    *(v8 + 12) = 2080;
    v11 = *(v7 + direct field offset for MLS.XPCClientCoordinator.uniqueClientIdentifier);
    v12 = *(v7 + direct field offset for MLS.XPCClientCoordinator.uniqueClientIdentifier + 8);
    strcpy(v42, "EncryptedRCS.");
    HIWORD(v42[1]) = -4864;

    MEMORY[0x2667545A0](v11, v12);

    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42[0], v42[1], &v41);

    *(v8 + 14) = v13;
    _os_log_impl(&dword_264F1F000, v3, v4, "XPCClientCoordinator add { identifier: %s, client: %s }", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v9, -1, -1);
    MEMORY[0x266755550](v8, -1, -1);
  }

  else
  {
  }

  v14 = v0[22];
  v15 = v0[23];
  v17 = v0[20];
  v16 = v0[21];
  v18 = v0[18];
  v19 = v0[19];
  v21 = v0[16];
  v20 = v0[17];
  v22 = v0[15];
  v38 = v0[13];
  v40 = v0[14];
  v37 = v0[12];

  outlined copy of Data?(v16, v14);

  Date.init()();
  v23 = *(v21 + 20);
  v24 = type metadata accessor for Date();
  (*(*(v24 - 8) + 56))(v18 + v23, 1, 1, v24);
  outlined init with take of MetricCollector.Event(v18, v20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v42[0] = v15;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v20, 0x5864726177726F46, 0xEA00000000004350, isUniquelyReferenced_nonNull_native);
  v26 = v42[0];
  v0[26] = v42[0];

  v0[2] = v19;
  v0[3] = v17;
  v0[4] = v16;
  v0[5] = v14;
  v0[6] = v26;
  v27 = *(*(v22 + direct field offset for MLS.XPCClientCoordinator.xpcClient) + OBJC_IVAR____TtCO15SecureMessaging8XPCUtils9XPCClient_deliveryInterface);
  v0[27] = v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO30GroupOperationProcessedContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO30GroupOperationProcessedContextVy_10Foundation4DataVGMR);
  v29 = swift_task_alloc();
  v0[28] = v29;
  v29[2] = v37;
  v29[3] = v0 + 2;
  v29[4] = v22;
  v30 = swift_task_alloc();
  v0[29] = v30;
  *(v30 + 16) = v38;
  *(v30 + 24) = v40;
  v31 = *(*v27 + 360);

  v39 = v31 + *v31;
  v32 = swift_task_alloc();
  v0[30] = v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataV_A2CtMd, &_s10Foundation4DataV_A2CtMR);
  v34 = lazy protocol witness table accessor for type MLS.KeyPackageRetrievalResult<MLS.AllMember> and conformance MLS.KeyPackageRetrievalResult<A>(&lazy protocol witness table cache variable for type MLS.GroupOperationProcessedContext<Data> and conformance MLS.GroupOperationProcessedContext<A>, &_s15SecureMessaging3MLSO30GroupOperationProcessedContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO30GroupOperationProcessedContextVy_10Foundation4DataVGMR, &protocol conformance descriptor for MLS.GroupOperationProcessedContext<A>);
  v35 = lazy protocol witness table accessor for type MLS.KeyPackageRetrievalResult<MLS.AllMember> and conformance MLS.KeyPackageRetrievalResult<A>(&lazy protocol witness table cache variable for type MLS.GroupOperationProcessedContext<Data> and conformance MLS.GroupOperationProcessedContext<A>, &_s15SecureMessaging3MLSO30GroupOperationProcessedContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO30GroupOperationProcessedContextVy_10Foundation4DataVGMR, &protocol conformance descriptor for MLS.GroupOperationProcessedContext<A>);
  v36 = lazy protocol witness table accessor for type MLS.GroupOperationError and conformance MLS.GroupOperationError();
  *v32 = v0;
  v32[1] = MLS.XPCClientCoordinator.add(members:toGroup:context:);
  v50 = v35;
  v51 = v36;
  v48 = v33;
  v49 = v34;
  v46 = v28;
  v47 = &type metadata for MLS.GroupOperationError;
  v44 = partial apply for closure #3 in MLS.XPCClientCoordinator.add(members:toGroup:context:);
  v45 = v30;

  __asm { BRAA            X8, X16 }
}

uint64_t MLS.XPCClientCoordinator.add(members:toGroup:context:)()
{
  v2 = *v1;
  *(*v1 + 248) = v0;

  v3 = *(v2 + 192);

  if (v0)
  {
    v4 = MLS.XPCClientCoordinator.add(members:toGroup:context:);
  }

  else
  {
    v4 = MLS.XPCClientCoordinator.add(members:toGroup:context:);
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{
  v2 = *(v0 + 168);
  v1 = *(v0 + 176);
  v3 = *(v0 + 88);

  outlined consume of Data?(v2, v1);

  v4 = *(v0 + 72);
  v5 = *(v0 + 80);
  *v3 = *(v0 + 56);
  *(v3 + 16) = v4;
  *(v3 + 24) = v5;

  v6 = *(v0 + 8);

  return v6();
}

{
  v24 = v0;
  v1 = v0[31];
  v2 = v0[22];
  v3 = v0[21];

  outlined consume of Data?(v3, v2);

  outlined copy of Data?(v3, v2);

  v4 = v1;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  outlined consume of Data?(v3, v2);

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[31];
    v9 = v0[19];
    v8 = v0[20];
    v10 = v0[15];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v22 = v13;
    *v11 = 136315650;

    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v8, &v22);

    *(v11 + 4) = v14;
    *(v11 + 12) = 2112;
    v15 = v7;
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 14) = v16;
    *v12 = v16;
    *(v11 + 22) = 2080;
    v17 = *(v10 + direct field offset for MLS.XPCClientCoordinator.uniqueClientIdentifier);
    v18 = *(v10 + direct field offset for MLS.XPCClientCoordinator.uniqueClientIdentifier + 8);

    strcpy(v23, "EncryptedRCS.");
    HIWORD(v23[1]) = -4864;
    MEMORY[0x2667545A0](v17, v18);

    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23[0], v23[1], &v22);

    *(v11 + 24) = v19;
    _os_log_impl(&dword_264F1F000, v5, v6, "XPCClientCoordinator add failed { identifier: %s, error: %@, client: %s }", v11, 0x20u);
    outlined destroy of NSObject?(v12, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x266755550](v12, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x266755550](v13, -1, -1);
    MEMORY[0x266755550](v11, -1, -1);
  }

  else
  {
  }

  swift_willThrow();

  v20 = v0[1];

  return v20();
}

uint64_t MLS.XPCClientCoordinator.kick(members:fromGroup:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  *(v6 + 112) = a4;
  *(v6 + 120) = v5;
  *(v6 + 96) = a2;
  *(v6 + 104) = a3;
  *(v6 + 88) = a1;
  *(v6 + 128) = type metadata accessor for MetricCollector.Event(0);
  *(v6 + 136) = swift_task_alloc();
  v8 = swift_task_alloc();
  v9 = *a5;
  v10 = a5[1];
  *(v6 + 144) = v8;
  *(v6 + 152) = v9;
  *(v6 + 160) = v10;
  *(v6 + 168) = *(a5 + 1);
  *(v6 + 184) = a5[4];
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v11 = static MLSActor.shared;
  *(v6 + 192) = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.XPCClientCoordinator.kick(members:fromGroup:context:), v11, 0);
}

void MLS.XPCClientCoordinator.kick(members:fromGroup:context:)()
{
  v1 = v0[22];
  v2 = v0[21];
  v0[25] = direct field offset for MLS.XPCClientCoordinator.logger;

  outlined copy of Data?(v2, v1);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  outlined consume of Data?(v2, v1);

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[19];
    v5 = v0[20];
    v7 = v0[15];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v41 = v9;
    *v8 = 136315394;

    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v5, &v41);

    *(v8 + 4) = v10;
    *(v8 + 12) = 2080;
    v11 = *(v7 + direct field offset for MLS.XPCClientCoordinator.uniqueClientIdentifier);
    v12 = *(v7 + direct field offset for MLS.XPCClientCoordinator.uniqueClientIdentifier + 8);
    strcpy(v42, "EncryptedRCS.");
    HIWORD(v42[1]) = -4864;

    MEMORY[0x2667545A0](v11, v12);

    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42[0], v42[1], &v41);

    *(v8 + 14) = v13;
    _os_log_impl(&dword_264F1F000, v3, v4, "XPCClientCoordinator kick { identifier: %s, client: %s }", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v9, -1, -1);
    MEMORY[0x266755550](v8, -1, -1);
  }

  else
  {
  }

  v14 = v0[22];
  v15 = v0[23];
  v17 = v0[20];
  v16 = v0[21];
  v18 = v0[18];
  v19 = v0[19];
  v21 = v0[16];
  v20 = v0[17];
  v22 = v0[15];
  v38 = v0[13];
  v40 = v0[14];
  v37 = v0[12];

  outlined copy of Data?(v16, v14);

  Date.init()();
  v23 = *(v21 + 20);
  v24 = type metadata accessor for Date();
  (*(*(v24 - 8) + 56))(v18 + v23, 1, 1, v24);
  outlined init with take of MetricCollector.Event(v18, v20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v42[0] = v15;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v20, 0x5864726177726F46, 0xEA00000000004350, isUniquelyReferenced_nonNull_native);
  v26 = v42[0];
  v0[26] = v42[0];

  v0[2] = v19;
  v0[3] = v17;
  v0[4] = v16;
  v0[5] = v14;
  v0[6] = v26;
  v27 = *(*(v22 + direct field offset for MLS.XPCClientCoordinator.xpcClient) + OBJC_IVAR____TtCO15SecureMessaging8XPCUtils9XPCClient_deliveryInterface);
  v0[27] = v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO30GroupOperationProcessedContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO30GroupOperationProcessedContextVy_10Foundation4DataVGMR);
  v29 = swift_task_alloc();
  v0[28] = v29;
  v29[2] = v37;
  v29[3] = v0 + 2;
  v29[4] = v22;
  v30 = swift_task_alloc();
  v0[29] = v30;
  *(v30 + 16) = v38;
  *(v30 + 24) = v40;
  v31 = *(*v27 + 360);

  v39 = v31 + *v31;
  v32 = swift_task_alloc();
  v0[30] = v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataV_A2CtMd, &_s10Foundation4DataV_A2CtMR);
  v34 = lazy protocol witness table accessor for type MLS.KeyPackageRetrievalResult<MLS.AllMember> and conformance MLS.KeyPackageRetrievalResult<A>(&lazy protocol witness table cache variable for type MLS.GroupOperationProcessedContext<Data> and conformance MLS.GroupOperationProcessedContext<A>, &_s15SecureMessaging3MLSO30GroupOperationProcessedContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO30GroupOperationProcessedContextVy_10Foundation4DataVGMR, &protocol conformance descriptor for MLS.GroupOperationProcessedContext<A>);
  v35 = lazy protocol witness table accessor for type MLS.KeyPackageRetrievalResult<MLS.AllMember> and conformance MLS.KeyPackageRetrievalResult<A>(&lazy protocol witness table cache variable for type MLS.GroupOperationProcessedContext<Data> and conformance MLS.GroupOperationProcessedContext<A>, &_s15SecureMessaging3MLSO30GroupOperationProcessedContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO30GroupOperationProcessedContextVy_10Foundation4DataVGMR, &protocol conformance descriptor for MLS.GroupOperationProcessedContext<A>);
  v36 = lazy protocol witness table accessor for type MLS.GroupOperationError and conformance MLS.GroupOperationError();
  *v32 = v0;
  v32[1] = MLS.XPCClientCoordinator.kick(members:fromGroup:context:);
  v50 = v35;
  v51 = v36;
  v48 = v33;
  v49 = v34;
  v46 = v28;
  v47 = &type metadata for MLS.GroupOperationError;
  v44 = partial apply for closure #3 in MLS.XPCClientCoordinator.kick(members:fromGroup:context:);
  v45 = v30;

  __asm { BRAA            X8, X16 }
}

uint64_t MLS.XPCClientCoordinator.kick(members:fromGroup:context:)()
{
  v2 = *v1;
  *(*v1 + 248) = v0;

  v3 = *(v2 + 192);

  if (v0)
  {
    v4 = MLS.XPCClientCoordinator.kick(members:fromGroup:context:);
  }

  else
  {
    v4 = MLS.XPCClientCoordinator.kick(members:fromGroup:context:);
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{
  v24 = v0;
  v1 = v0[31];
  v2 = v0[22];
  v3 = v0[21];

  outlined consume of Data?(v3, v2);

  outlined copy of Data?(v3, v2);

  v4 = v1;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  outlined consume of Data?(v3, v2);

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[31];
    v9 = v0[19];
    v8 = v0[20];
    v10 = v0[15];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v22 = v13;
    *v11 = 136315650;

    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v8, &v22);

    *(v11 + 4) = v14;
    *(v11 + 12) = 2112;
    v15 = v7;
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 14) = v16;
    *v12 = v16;
    *(v11 + 22) = 2080;
    v17 = *(v10 + direct field offset for MLS.XPCClientCoordinator.uniqueClientIdentifier);
    v18 = *(v10 + direct field offset for MLS.XPCClientCoordinator.uniqueClientIdentifier + 8);

    strcpy(v23, "EncryptedRCS.");
    HIWORD(v23[1]) = -4864;
    MEMORY[0x2667545A0](v17, v18);

    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23[0], v23[1], &v22);

    *(v11 + 24) = v19;
    _os_log_impl(&dword_264F1F000, v5, v6, "XPCClientCoordinator kick failed { identifier: %s, error: %@, client: %s }", v11, 0x20u);
    outlined destroy of NSObject?(v12, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x266755550](v12, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x266755550](v13, -1, -1);
    MEMORY[0x266755550](v11, -1, -1);
  }

  else
  {
  }

  swift_willThrow();

  v20 = v0[1];

  return v20();
}

uint64_t closure #1 in MLS.XPCClientCoordinator.add(members:toGroup:context:)@<X0>(uint64_t *a4@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay15SecureMessaging3MLSO9AllMemberOGMd, &_sSay15SecureMessaging3MLSO9AllMemberOGMR);
  lazy protocol witness table accessor for type [MLS.AllMember] and conformance <A> [A]();
  result = dispatch thunk of JSONEncoder.encode<A>(_:)();
  if (!v4)
  {
    v8 = result;
    v9 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO21GroupOperationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO21GroupOperationContextVy_10Foundation4DataVGMR);
    lazy protocol witness table accessor for type MLS.KeyPackageRetrievalResult<MLS.AllMember> and conformance MLS.KeyPackageRetrievalResult<A>(&lazy protocol witness table cache variable for type MLS.GroupOperationContext<Data> and conformance MLS.GroupOperationContext<A>, &_s15SecureMessaging3MLSO21GroupOperationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO21GroupOperationContextVy_10Foundation4DataVGMR, &protocol conformance descriptor for MLS.GroupOperationContext<A>);
    v10 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    v12 = v11;
    lazy protocol witness table accessor for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier();

    v13 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    v15 = v14;

    *a4 = v13;
    a4[1] = v15;
    a4[2] = v8;
    a4[3] = v9;
    a4[4] = v10;
    a4[5] = v12;
  }

  return result;
}

uint64_t MLS.XPCClientCoordinator.leave(group:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  *(v5 + 104) = a3;
  *(v5 + 112) = v4;
  *(v5 + 88) = a1;
  *(v5 + 96) = a2;
  *(v5 + 120) = type metadata accessor for MetricCollector.Event(0);
  *(v5 + 128) = swift_task_alloc();
  v7 = swift_task_alloc();
  v8 = *a4;
  v9 = a4[1];
  *(v5 + 136) = v7;
  *(v5 + 144) = v8;
  *(v5 + 152) = v9;
  *(v5 + 160) = *(a4 + 1);
  *(v5 + 176) = a4[4];
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v10 = static MLSActor.shared;
  *(v5 + 184) = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.XPCClientCoordinator.leave(group:context:), v10, 0);
}

void MLS.XPCClientCoordinator.leave(group:context:)()
{
  v1 = v0[21];
  v2 = v0[20];
  v0[24] = direct field offset for MLS.XPCClientCoordinator.logger;

  outlined copy of Data?(v2, v1);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  outlined consume of Data?(v2, v1);

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[18];
    v5 = v0[19];
    v7 = v0[14];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v40 = v9;
    *v8 = 136315394;

    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v5, &v40);

    *(v8 + 4) = v10;
    *(v8 + 12) = 2080;
    v11 = *(v7 + direct field offset for MLS.XPCClientCoordinator.uniqueClientIdentifier);
    v12 = *(v7 + direct field offset for MLS.XPCClientCoordinator.uniqueClientIdentifier + 8);
    strcpy(v41, "EncryptedRCS.");
    HIWORD(v41[1]) = -4864;

    MEMORY[0x2667545A0](v11, v12);

    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41[0], v41[1], &v40);

    *(v8 + 14) = v13;
    _os_log_impl(&dword_264F1F000, v3, v4, "XPCClientCoordinator leave { identifier: %s, client: %s }", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v9, -1, -1);
    MEMORY[0x266755550](v8, -1, -1);
  }

  else
  {
  }

  v14 = v0[21];
  v15 = v0[22];
  v17 = v0[19];
  v16 = v0[20];
  v18 = v0[17];
  v19 = v0[18];
  v21 = v0[15];
  v20 = v0[16];
  v22 = v0[14];
  v37 = v0[12];
  v39 = v0[13];

  outlined copy of Data?(v16, v14);

  Date.init()();
  v23 = *(v21 + 20);
  v24 = type metadata accessor for Date();
  (*(*(v24 - 8) + 56))(v18 + v23, 1, 1, v24);
  outlined init with take of MetricCollector.Event(v18, v20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v41[0] = v15;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v20, 0x5864726177726F46, 0xEA00000000004350, isUniquelyReferenced_nonNull_native);
  v26 = v41[0];
  v0[25] = v41[0];

  v0[2] = v19;
  v0[3] = v17;
  v0[4] = v16;
  v0[5] = v14;
  v0[6] = v26;
  v27 = *(*(v22 + direct field offset for MLS.XPCClientCoordinator.xpcClient) + OBJC_IVAR____TtCO15SecureMessaging8XPCUtils9XPCClient_deliveryInterface);
  v0[26] = v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO30GroupOperationProcessedContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO30GroupOperationProcessedContextVy_10Foundation4DataVGMR);
  v29 = swift_task_alloc();
  v0[27] = v29;
  *(v29 + 16) = v0 + 2;
  *(v29 + 24) = v22;
  v30 = swift_task_alloc();
  v0[28] = v30;
  *(v30 + 16) = v37;
  *(v30 + 24) = v39;
  v31 = *(*v27 + 360);

  v38 = v31 + *v31;
  v32 = swift_task_alloc();
  v0[29] = v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataV_ACtMd, &_s10Foundation4DataV_ACtMR);
  v34 = lazy protocol witness table accessor for type MLS.KeyPackageRetrievalResult<MLS.AllMember> and conformance MLS.KeyPackageRetrievalResult<A>(&lazy protocol witness table cache variable for type MLS.GroupOperationProcessedContext<Data> and conformance MLS.GroupOperationProcessedContext<A>, &_s15SecureMessaging3MLSO30GroupOperationProcessedContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO30GroupOperationProcessedContextVy_10Foundation4DataVGMR, &protocol conformance descriptor for MLS.GroupOperationProcessedContext<A>);
  v35 = lazy protocol witness table accessor for type MLS.KeyPackageRetrievalResult<MLS.AllMember> and conformance MLS.KeyPackageRetrievalResult<A>(&lazy protocol witness table cache variable for type MLS.GroupOperationProcessedContext<Data> and conformance MLS.GroupOperationProcessedContext<A>, &_s15SecureMessaging3MLSO30GroupOperationProcessedContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO30GroupOperationProcessedContextVy_10Foundation4DataVGMR, &protocol conformance descriptor for MLS.GroupOperationProcessedContext<A>);
  v36 = lazy protocol witness table accessor for type MLS.GroupOperationError and conformance MLS.GroupOperationError();
  *v32 = v0;
  v32[1] = MLS.XPCClientCoordinator.leave(group:context:);
  v49 = v35;
  v50 = v36;
  v47 = v33;
  v48 = v34;
  v45 = v28;
  v46 = &type metadata for MLS.GroupOperationError;
  v43 = partial apply for closure #3 in MLS.XPCClientCoordinator.leave(group:context:);
  v44 = v30;

  __asm { BRAA            X8, X16 }
}

uint64_t MLS.XPCClientCoordinator.leave(group:context:)()
{
  v2 = *v1;
  *(*v1 + 240) = v0;

  v3 = *(v2 + 184);

  if (v0)
  {
    v4 = MLS.XPCClientCoordinator.leave(group:context:);
  }

  else
  {
    v4 = MLS.XPCClientCoordinator.leave(group:context:);
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{
  v2 = *(v0 + 160);
  v1 = *(v0 + 168);
  v3 = *(v0 + 88);

  outlined consume of Data?(v2, v1);

  v4 = *(v0 + 72);
  v5 = *(v0 + 80);
  *v3 = *(v0 + 56);
  *(v3 + 16) = v4;
  *(v3 + 24) = v5;

  v6 = *(v0 + 8);

  return v6();
}

{
  v24 = v0;
  v1 = v0[30];
  v2 = v0[21];
  v3 = v0[20];

  outlined consume of Data?(v3, v2);

  outlined copy of Data?(v3, v2);

  v4 = v1;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  outlined consume of Data?(v3, v2);

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[30];
    v9 = v0[18];
    v8 = v0[19];
    v10 = v0[14];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v22 = v13;
    *v11 = 136315650;

    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v8, &v22);

    *(v11 + 4) = v14;
    *(v11 + 12) = 2112;
    v15 = v7;
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 14) = v16;
    *v12 = v16;
    *(v11 + 22) = 2080;
    v17 = *(v10 + direct field offset for MLS.XPCClientCoordinator.uniqueClientIdentifier);
    v18 = *(v10 + direct field offset for MLS.XPCClientCoordinator.uniqueClientIdentifier + 8);

    strcpy(v23, "EncryptedRCS.");
    HIWORD(v23[1]) = -4864;
    MEMORY[0x2667545A0](v17, v18);

    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23[0], v23[1], &v22);

    *(v11 + 24) = v19;
    _os_log_impl(&dword_264F1F000, v5, v6, "XPCClientCoordinator leave failed { identifier: %s, error: %@, client: %s }", v11, 0x20u);
    outlined destroy of NSObject?(v12, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x266755550](v12, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x266755550](v13, -1, -1);
    MEMORY[0x266755550](v11, -1, -1);
  }

  else
  {
  }

  swift_willThrow();

  v20 = v0[1];

  return v20();
}

uint64_t MLS.XPCClientCoordinator.downgrade(group:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  *(v5 + 104) = a3;
  *(v5 + 112) = v4;
  *(v5 + 88) = a1;
  *(v5 + 96) = a2;
  *(v5 + 120) = type metadata accessor for MetricCollector.Event(0);
  *(v5 + 128) = swift_task_alloc();
  v7 = swift_task_alloc();
  v8 = *a4;
  v9 = a4[1];
  *(v5 + 136) = v7;
  *(v5 + 144) = v8;
  *(v5 + 152) = v9;
  *(v5 + 160) = *(a4 + 1);
  *(v5 + 176) = a4[4];
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v10 = static MLSActor.shared;
  *(v5 + 184) = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.XPCClientCoordinator.downgrade(group:context:), v10, 0);
}

void MLS.XPCClientCoordinator.downgrade(group:context:)()
{
  v1 = v0[21];
  v2 = v0[20];
  v0[24] = direct field offset for MLS.XPCClientCoordinator.logger;

  outlined copy of Data?(v2, v1);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  outlined consume of Data?(v2, v1);

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[18];
    v5 = v0[19];
    v7 = v0[14];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v40 = v9;
    *v8 = 136315394;

    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v5, &v40);

    *(v8 + 4) = v10;
    *(v8 + 12) = 2080;
    v11 = *(v7 + direct field offset for MLS.XPCClientCoordinator.uniqueClientIdentifier);
    v12 = *(v7 + direct field offset for MLS.XPCClientCoordinator.uniqueClientIdentifier + 8);
    strcpy(v41, "EncryptedRCS.");
    HIWORD(v41[1]) = -4864;

    MEMORY[0x2667545A0](v11, v12);

    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41[0], v41[1], &v40);

    *(v8 + 14) = v13;
    _os_log_impl(&dword_264F1F000, v3, v4, "XPCClientCoordinator downgrade { identifier: %s, client: %s }", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v9, -1, -1);
    MEMORY[0x266755550](v8, -1, -1);
  }

  else
  {
  }

  v14 = v0[21];
  v15 = v0[22];
  v17 = v0[19];
  v16 = v0[20];
  v18 = v0[17];
  v19 = v0[18];
  v21 = v0[15];
  v20 = v0[16];
  v22 = v0[14];
  v37 = v0[12];
  v39 = v0[13];

  outlined copy of Data?(v16, v14);

  Date.init()();
  v23 = *(v21 + 20);
  v24 = type metadata accessor for Date();
  (*(*(v24 - 8) + 56))(v18 + v23, 1, 1, v24);
  outlined init with take of MetricCollector.Event(v18, v20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v41[0] = v15;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v20, 0x5864726177726F46, 0xEA00000000004350, isUniquelyReferenced_nonNull_native);
  v26 = v41[0];
  v0[25] = v41[0];

  v0[2] = v19;
  v0[3] = v17;
  v0[4] = v16;
  v0[5] = v14;
  v0[6] = v26;
  v27 = *(*(v22 + direct field offset for MLS.XPCClientCoordinator.xpcClient) + OBJC_IVAR____TtCO15SecureMessaging8XPCUtils9XPCClient_deliveryInterface);
  v0[26] = v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO25DowngradeProcessedContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO25DowngradeProcessedContextVy_10Foundation4DataVGMR);
  v29 = swift_task_alloc();
  v0[27] = v29;
  *(v29 + 16) = v0 + 2;
  *(v29 + 24) = v22;
  v30 = swift_task_alloc();
  v0[28] = v30;
  *(v30 + 16) = v37;
  *(v30 + 24) = v39;
  v31 = *(*v27 + 360);

  v38 = v31 + *v31;
  v32 = swift_task_alloc();
  v0[29] = v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataV_ACtMd, &_s10Foundation4DataV_ACtMR);
  v34 = lazy protocol witness table accessor for type MLS.KeyPackageRetrievalResult<MLS.AllMember> and conformance MLS.KeyPackageRetrievalResult<A>(&lazy protocol witness table cache variable for type MLS.DowngradeProcessedContext<Data> and conformance MLS.DowngradeProcessedContext<A>, &_s15SecureMessaging3MLSO25DowngradeProcessedContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO25DowngradeProcessedContextVy_10Foundation4DataVGMR, &protocol conformance descriptor for MLS.DowngradeProcessedContext<A>);
  v35 = lazy protocol witness table accessor for type MLS.KeyPackageRetrievalResult<MLS.AllMember> and conformance MLS.KeyPackageRetrievalResult<A>(&lazy protocol witness table cache variable for type MLS.DowngradeProcessedContext<Data> and conformance MLS.DowngradeProcessedContext<A>, &_s15SecureMessaging3MLSO25DowngradeProcessedContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO25DowngradeProcessedContextVy_10Foundation4DataVGMR, &protocol conformance descriptor for MLS.DowngradeProcessedContext<A>);
  v36 = lazy protocol witness table accessor for type MLS.DowngradeError and conformance MLS.DowngradeError();
  *v32 = v0;
  v32[1] = MLS.XPCClientCoordinator.downgrade(group:context:);
  v49 = v35;
  v50 = v36;
  v47 = v33;
  v48 = v34;
  v45 = v28;
  v46 = &type metadata for MLS.DowngradeError;
  v43 = partial apply for closure #3 in MLS.XPCClientCoordinator.downgrade(group:context:);
  v44 = v30;

  __asm { BRAA            X8, X16 }
}

uint64_t MLS.XPCClientCoordinator.downgrade(group:context:)()
{
  v2 = *v1;
  *(*v1 + 240) = v0;

  v3 = *(v2 + 184);

  if (v0)
  {
    v4 = MLS.XPCClientCoordinator.downgrade(group:context:);
  }

  else
  {
    v4 = MLS.XPCClientCoordinator.downgrade(group:context:);
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{
  v24 = v0;
  v1 = v0[30];
  v2 = v0[21];
  v3 = v0[20];

  outlined consume of Data?(v3, v2);

  outlined copy of Data?(v3, v2);

  v4 = v1;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  outlined consume of Data?(v3, v2);

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[30];
    v9 = v0[18];
    v8 = v0[19];
    v10 = v0[14];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v22 = v13;
    *v11 = 136315650;

    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v8, &v22);

    *(v11 + 4) = v14;
    *(v11 + 12) = 2112;
    v15 = v7;
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 14) = v16;
    *v12 = v16;
    *(v11 + 22) = 2080;
    v17 = *(v10 + direct field offset for MLS.XPCClientCoordinator.uniqueClientIdentifier);
    v18 = *(v10 + direct field offset for MLS.XPCClientCoordinator.uniqueClientIdentifier + 8);

    strcpy(v23, "EncryptedRCS.");
    HIWORD(v23[1]) = -4864;
    MEMORY[0x2667545A0](v17, v18);

    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23[0], v23[1], &v22);

    *(v11 + 24) = v19;
    _os_log_impl(&dword_264F1F000, v5, v6, "XPCClientCoordinator downgrade failed { identifier: %s, error: %@, client: %s }", v11, 0x20u);
    outlined destroy of NSObject?(v12, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x266755550](v12, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x266755550](v13, -1, -1);
    MEMORY[0x266755550](v11, -1, -1);
  }

  else
  {
  }

  swift_willThrow();

  v20 = v0[1];

  return v20();
}

uint64_t closure #1 in MLS.XPCClientCoordinator.leave(group:context:)@<X0>(uint64_t *a3@<X3>, uint64_t *a4@<X4>, unint64_t *a5@<X5>, uint64_t a6@<X6>, uint64_t *a7@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  lazy protocol witness table accessor for type MLS.KeyPackageRetrievalResult<MLS.AllMember> and conformance MLS.KeyPackageRetrievalResult<A>(a5, a3, a4, a6);
  result = dispatch thunk of JSONEncoder.encode<A>(_:)();
  if (!v7)
  {
    v15 = result;
    v16 = v14;
    lazy protocol witness table accessor for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier();

    v17 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    v19 = v18;

    *a7 = v17;
    a7[1] = v19;
    a7[2] = v15;
    a7[3] = v16;
  }

  return result;
}

uint64_t closure #3 in MLS.XPCClientCoordinator.delete(group:context:)(void **a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, SEL *a8)
{
  v22 = *a1;
  v13 = *a2;
  v14 = a2[1];
  v15 = a2[2];
  v16 = a2[3];
  outlined copy of Data._Representation(*a2, v14);
  outlined copy of Data._Representation(v15, v16);
  isa = Data._bridgeToObjectiveC()().super.isa;
  v18 = MEMORY[0x266754510](a5, a6);
  v19 = Data._bridgeToObjectiveC()().super.isa;
  aBlock[4] = a3;
  aBlock[5] = a4;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Data?, @guaranteed Data?) -> ();
  aBlock[3] = a7;
  v20 = _Block_copy(aBlock);

  [v22 *a8];
  _Block_release(v20);

  outlined consume of Data._Representation(v15, v16);
  return outlined consume of Data._Representation(v13, v14);
}

uint64_t MLS.XPCClientCoordinator.applicationEncrypt(data:withGroup:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 1296) = v6;
  *(v7 + 1288) = a5;
  *(v7 + 1280) = a4;
  *(v7 + 1272) = a3;
  *(v7 + 1264) = a2;
  *(v7 + 1256) = a1;
  *(v7 + 1304) = type metadata accessor for MetricCollector.Event(0);
  *(v7 + 1312) = swift_task_alloc();
  *(v7 + 1320) = swift_task_alloc();
  v9 = *(a6 + 112);
  *(v7 + 112) = *(a6 + 96);
  *(v7 + 128) = v9;
  *(v7 + 144) = *(a6 + 128);
  *(v7 + 160) = *(a6 + 144);
  v10 = *(a6 + 48);
  *(v7 + 48) = *(a6 + 32);
  *(v7 + 64) = v10;
  v11 = *(a6 + 80);
  *(v7 + 80) = *(a6 + 64);
  *(v7 + 96) = v11;
  v12 = *(a6 + 16);
  *(v7 + 16) = *a6;
  *(v7 + 32) = v12;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v13 = static MLSActor.shared;
  *(v7 + 1328) = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.XPCClientCoordinator.applicationEncrypt(data:withGroup:context:), v13, 0);
}

void MLS.XPCClientCoordinator.applicationEncrypt(data:withGroup:context:)()
{
  *(v0 + 1336) = direct field offset for MLS.XPCClientCoordinator.logger;
  outlined init with copy of MLS.OutgoingEventState?(v0 + 16, v0 + 320, &_s15SecureMessaging3MLSO17EncryptionContextVy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17EncryptionContextVy_AC9AllMemberO10Foundation4DataVGMR);

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  outlined destroy of NSObject?(v0 + 16, &_s15SecureMessaging3MLSO17EncryptionContextVy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17EncryptionContextVy_AC9AllMemberO10Foundation4DataVGMR);
  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 1296);
  if (v3)
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v44 = v6;
    *v5 = 136315394;
    v7 = *(v0 + 16);
    v8 = *(v0 + 24);

    v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v8, &v44);

    *(v5 + 4) = v9;
    *(v5 + 12) = 2080;
    v10 = *(v4 + direct field offset for MLS.XPCClientCoordinator.uniqueClientIdentifier);
    v11 = *(v4 + direct field offset for MLS.XPCClientCoordinator.uniqueClientIdentifier + 8);
    strcpy(v45, "EncryptedRCS.");
    HIWORD(v45[1]) = -4864;

    MEMORY[0x2667545A0](v10, v11);

    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v45[0], v45[1], &v44);

    *(v5 + 14) = v12;
    _os_log_impl(&dword_264F1F000, v1, v2, "XPCClientCoordinator applicationEncrypt { identifier: %s, client: %s }", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v6, -1, -1);
    MEMORY[0x266755550](v5, -1, -1);
  }

  else
  {
  }

  v13 = *(v0 + 1320);
  v14 = *(v0 + 1312);
  v15 = *(v0 + 1304);
  v16 = *(v0 + 1296);
  v17 = *(v0 + 1288);
  v18 = *(v0 + 1280);
  v43 = *(v0 + 1264);
  v19 = *(v0 + 128);
  *(v0 + 1176) = *(v0 + 112);
  *(v0 + 1192) = v19;
  *(v0 + 1208) = *(v0 + 144);
  v20 = *(v0 + 64);
  *(v0 + 1112) = *(v0 + 48);
  *(v0 + 1128) = v20;
  v21 = *(v0 + 96);
  *(v0 + 1144) = *(v0 + 80);
  *(v0 + 1160) = v21;
  v22 = *(v0 + 32);
  *(v0 + 1080) = *(v0 + 16);
  *(v0 + 1096) = v22;
  v23 = *(v0 + 160);
  outlined init with copy of MLS.OutgoingEventState?(v0 + 16, v0 + 472, &_s15SecureMessaging3MLSO17EncryptionContextVy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17EncryptionContextVy_AC9AllMemberO10Foundation4DataVGMR);
  Date.init()();
  v24 = *(v15 + 20);
  v25 = type metadata accessor for Date();
  (*(*(v25 - 8) + 56))(v13 + v24, 1, 1, v25);
  outlined init with take of MetricCollector.Event(v13, v14);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v45[0] = v23;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v14, 0x5864726177726F46, 0xEA00000000004350, isUniquelyReferenced_nonNull_native);
  v27 = v45[0];
  *(v0 + 1344) = v45[0];

  v28 = *(v0 + 1144);
  *(v0 + 248) = *(v0 + 1160);
  v29 = *(v0 + 1192);
  *(v0 + 264) = *(v0 + 1176);
  *(v0 + 280) = v29;
  *(v0 + 296) = *(v0 + 1208);
  v30 = *(v0 + 1080);
  *(v0 + 184) = *(v0 + 1096);
  v31 = *(v0 + 1128);
  *(v0 + 200) = *(v0 + 1112);
  *(v0 + 216) = v31;
  *(v0 + 232) = v28;
  *(v0 + 168) = v30;
  *(v0 + 312) = v27;
  v32 = *(*(v16 + direct field offset for MLS.XPCClientCoordinator.xpcClient) + OBJC_IVAR____TtCO15SecureMessaging8XPCUtils9XPCClient_deliveryInterface);
  *(v0 + 1352) = v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO26EncryptionProcessedContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO26EncryptionProcessedContextVy_10Foundation4DataVGMR);
  v34 = swift_task_alloc();
  *(v0 + 1360) = v34;
  *(v34 + 16) = v0 + 168;
  *(v34 + 24) = v16;
  v35 = swift_task_alloc();
  *(v0 + 1368) = v35;
  *(v35 + 16) = v43;
  *(v35 + 32) = v18;
  *(v35 + 40) = v17;
  v36 = *(*v32 + 360);

  v42 = v36 + *v36;
  v37 = swift_task_alloc();
  *(v0 + 1376) = v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataV_ACtMd, &_s10Foundation4DataV_ACtMR);
  v39 = lazy protocol witness table accessor for type MLS.KeyPackageRetrievalResult<MLS.AllMember> and conformance MLS.KeyPackageRetrievalResult<A>(&lazy protocol witness table cache variable for type MLS.EncryptionProcessedContext<Data> and conformance MLS.EncryptionProcessedContext<A>, &_s15SecureMessaging3MLSO26EncryptionProcessedContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO26EncryptionProcessedContextVy_10Foundation4DataVGMR, &protocol conformance descriptor for MLS.EncryptionProcessedContext<A>);
  v40 = lazy protocol witness table accessor for type MLS.KeyPackageRetrievalResult<MLS.AllMember> and conformance MLS.KeyPackageRetrievalResult<A>(&lazy protocol witness table cache variable for type MLS.EncryptionProcessedContext<Data> and conformance MLS.EncryptionProcessedContext<A>, &_s15SecureMessaging3MLSO26EncryptionProcessedContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO26EncryptionProcessedContextVy_10Foundation4DataVGMR, &protocol conformance descriptor for MLS.EncryptionProcessedContext<A>);
  v41 = lazy protocol witness table accessor for type MLS.EncryptionError and conformance MLS.EncryptionError();
  *v37 = v0;
  v37[1] = MLS.XPCClientCoordinator.applicationEncrypt(data:withGroup:context:);
  v53 = v40;
  v54 = v41;
  v51 = v38;
  v52 = v39;
  v49 = v33;
  v50 = &type metadata for MLS.EncryptionError;
  v47 = partial apply for closure #3 in MLS.XPCClientCoordinator.applicationEncrypt(data:withGroup:context:);
  v48 = v35;

  __asm { BRAA            X8, X16 }
}

uint64_t MLS.XPCClientCoordinator.applicationEncrypt(data:withGroup:context:)()
{
  v2 = *v1;
  *(*v1 + 1384) = v0;

  v3 = *(v2 + 1328);

  if (v0)
  {
    v4 = MLS.XPCClientCoordinator.applicationEncrypt(data:withGroup:context:);
  }

  else
  {
    v4 = MLS.XPCClientCoordinator.applicationEncrypt(data:withGroup:context:);
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{
  v1 = *(v0 + 1344);
  v2 = *(v0 + 1256);
  v3 = *(v0 + 1176);
  *(v0 + 1040) = *(v0 + 1192);
  *(v0 + 1056) = *(v0 + 1208);
  v4 = *(v0 + 1128);
  *(v0 + 960) = *(v0 + 1112);
  *(v0 + 976) = v4;
  v5 = *(v0 + 1144);
  *(v0 + 1008) = *(v0 + 1160);
  *(v0 + 1024) = v3;
  *(v0 + 992) = v5;
  v6 = *(v0 + 1096);
  *(v0 + 928) = *(v0 + 1080);
  *(v0 + 944) = v6;
  *(v0 + 1072) = v1;
  outlined destroy of NSObject?(v0 + 928, &_s15SecureMessaging3MLSO17EncryptionContextVy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17EncryptionContextVy_AC9AllMemberO10Foundation4DataVGMR);
  v7 = *(v0 + 1240);
  v8 = *(v0 + 1248);
  *v2 = *(v0 + 1224);
  *(v2 + 16) = v7;
  *(v2 + 24) = v8;

  v9 = *(v0 + 8);

  return v9();
}

{
  v27 = v0;
  v1 = *(v0 + 1384);
  v2 = *(v0 + 1344);
  v3 = *(v0 + 1192);
  *(v0 + 720) = *(v0 + 1176);
  *(v0 + 736) = v3;
  *(v0 + 752) = *(v0 + 1208);
  v4 = *(v0 + 1128);
  *(v0 + 656) = *(v0 + 1112);
  *(v0 + 672) = v4;
  v5 = *(v0 + 1160);
  *(v0 + 688) = *(v0 + 1144);
  *(v0 + 704) = v5;
  v6 = *(v0 + 1096);
  *(v0 + 624) = *(v0 + 1080);
  *(v0 + 640) = v6;
  *(v0 + 768) = v2;
  outlined destroy of NSObject?(v0 + 624, &_s15SecureMessaging3MLSO17EncryptionContextVy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17EncryptionContextVy_AC9AllMemberO10Foundation4DataVGMR);

  outlined init with copy of MLS.OutgoingEventState?(v0 + 16, v0 + 776, &_s15SecureMessaging3MLSO17EncryptionContextVy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17EncryptionContextVy_AC9AllMemberO10Foundation4DataVGMR);

  v7 = v1;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();
  outlined destroy of NSObject?(v0 + 16, &_s15SecureMessaging3MLSO17EncryptionContextVy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17EncryptionContextVy_AC9AllMemberO10Foundation4DataVGMR);

  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 1384);
    v11 = *(v0 + 1296);
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v25 = v14;
    *v12 = 136315650;
    v15 = *(v0 + 16);
    v16 = *(v0 + 24);

    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, &v25);

    *(v12 + 4) = v17;
    *(v12 + 12) = 2112;
    v18 = v10;
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 14) = v19;
    *v13 = v19;
    *(v12 + 22) = 2080;
    v20 = *(v11 + direct field offset for MLS.XPCClientCoordinator.uniqueClientIdentifier);
    v21 = *(v11 + direct field offset for MLS.XPCClientCoordinator.uniqueClientIdentifier + 8);

    strcpy(v26, "EncryptedRCS.");
    HIWORD(v26[1]) = -4864;
    MEMORY[0x2667545A0](v20, v21);

    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26[0], v26[1], &v25);

    *(v12 + 24) = v22;
    _os_log_impl(&dword_264F1F000, v8, v9, "XPCClientCoordinator applicationEncrypt failed { identifier: %s, error: %@, client: %s }", v12, 0x20u);
    outlined destroy of NSObject?(v13, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x266755550](v13, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x266755550](v14, -1, -1);
    MEMORY[0x266755550](v12, -1, -1);
  }

  else
  {
  }

  swift_willThrow();

  v23 = *(v0 + 8);

  return v23();
}

uint64_t closure #1 in MLS.XPCClientCoordinator.applicationEncrypt(data:withGroup:context:)@<X0>(uint64_t *a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO17EncryptionContextVy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17EncryptionContextVy_AC9AllMemberO10Foundation4DataVGMR);
  lazy protocol witness table accessor for type MLS.KeyPackageRetrievalResult<MLS.AllMember> and conformance MLS.KeyPackageRetrievalResult<A>(&lazy protocol witness table cache variable for type MLS.EncryptionContext<MLS.AllMember, Data> and conformance MLS.EncryptionContext<A, B>, &_s15SecureMessaging3MLSO17EncryptionContextVy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17EncryptionContextVy_AC9AllMemberO10Foundation4DataVGMR, &protocol conformance descriptor for MLS.EncryptionContext<A, B>);
  result = dispatch thunk of JSONEncoder.encode<A>(_:)();
  if (!v3)
  {
    v7 = result;
    v8 = v6;
    lazy protocol witness table accessor for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier();

    v9 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    v11 = v10;

    *a3 = v9;
    a3[1] = v11;
    a3[2] = v7;
    a3[3] = v8;
  }

  return result;
}

uint64_t MLS.XPCClientCoordinator.applicationSign(input:withGroup:context:)(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  *(v6 + 168) = a4;
  *(v6 + 176) = v5;
  *(v6 + 152) = a1;
  *(v6 + 160) = a3;
  *(v6 + 184) = type metadata accessor for MetricCollector.Event(0);
  *(v6 + 192) = swift_task_alloc();
  v9 = swift_task_alloc();
  v10 = a2[1];
  *(v6 + 16) = *a2;
  *(v6 + 32) = v10;
  *(v6 + 48) = a2[2];
  *(v6 + 60) = *(a2 + 44);
  v11 = *a5;
  v12 = a5[1];
  *(v6 + 200) = v9;
  *(v6 + 208) = v11;
  *(v6 + 216) = v12;
  *(v6 + 224) = *(a5 + 1);
  *(v6 + 240) = a5[4];
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v13 = static MLSActor.shared;
  *(v6 + 248) = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.XPCClientCoordinator.applicationSign(input:withGroup:context:), v13, 0);
}

void MLS.XPCClientCoordinator.applicationSign(input:withGroup:context:)()
{
  v1 = v0[29];
  v2 = v0[28];
  v0[32] = direct field offset for MLS.XPCClientCoordinator.logger;

  outlined copy of Data?(v2, v1);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  outlined consume of Data?(v2, v1);

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[26];
    v5 = v0[27];
    v7 = v0[22];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v40 = v9;
    *v8 = 136315394;

    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v5, &v40);

    *(v8 + 4) = v10;
    *(v8 + 12) = 2080;
    v11 = *(v7 + direct field offset for MLS.XPCClientCoordinator.uniqueClientIdentifier);
    v12 = *(v7 + direct field offset for MLS.XPCClientCoordinator.uniqueClientIdentifier + 8);
    strcpy(v41, "EncryptedRCS.");
    HIWORD(v41[1]) = -4864;

    MEMORY[0x2667545A0](v11, v12);

    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41[0], v41[1], &v40);

    *(v8 + 14) = v13;
    _os_log_impl(&dword_264F1F000, v3, v4, "XPCClientCoordinator applicationSign { identifier: %s, client: %s }", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v9, -1, -1);
    MEMORY[0x266755550](v8, -1, -1);
  }

  else
  {
  }

  v14 = v0[29];
  v15 = v0[30];
  v17 = v0[27];
  v16 = v0[28];
  v18 = v0[25];
  v19 = v0[26];
  v21 = v0[23];
  v20 = v0[24];
  v22 = v0[22];
  v39 = v0[21];
  v37 = v0[20];

  outlined copy of Data?(v16, v14);

  Date.init()();
  v23 = *(v21 + 20);
  v24 = type metadata accessor for Date();
  (*(*(v24 - 8) + 56))(v18 + v23, 1, 1, v24);
  outlined init with take of MetricCollector.Event(v18, v20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v41[0] = v15;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v20, 0x5864726177726F46, 0xEA00000000004350, isUniquelyReferenced_nonNull_native);
  v26 = v41[0];
  v0[33] = v41[0];

  v0[10] = v19;
  v0[11] = v17;
  v0[12] = v16;
  v0[13] = v14;
  v0[14] = v26;
  v27 = *(*(v22 + direct field offset for MLS.XPCClientCoordinator.xpcClient) + OBJC_IVAR____TtCO15SecureMessaging8XPCUtils9XPCClient_deliveryInterface);
  v0[34] = v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO23SigningProcessedContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO23SigningProcessedContextVy_10Foundation4DataVGMR);
  v29 = swift_task_alloc();
  v0[35] = v29;
  v29[2] = v0 + 2;
  v29[3] = v0 + 10;
  v29[4] = v22;
  v30 = swift_task_alloc();
  v0[36] = v30;
  *(v30 + 16) = v37;
  *(v30 + 24) = v39;
  v31 = *(*v27 + 360);

  v38 = v31 + *v31;
  v32 = swift_task_alloc();
  v0[37] = v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataV_A2CtMd, &_s10Foundation4DataV_A2CtMR);
  v34 = lazy protocol witness table accessor for type MLS.KeyPackageRetrievalResult<MLS.AllMember> and conformance MLS.KeyPackageRetrievalResult<A>(&lazy protocol witness table cache variable for type MLS.SigningProcessedContext<Data> and conformance MLS.SigningProcessedContext<A>, &_s15SecureMessaging3MLSO23SigningProcessedContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO23SigningProcessedContextVy_10Foundation4DataVGMR, &protocol conformance descriptor for MLS.SigningProcessedContext<A>);
  v35 = lazy protocol witness table accessor for type MLS.KeyPackageRetrievalResult<MLS.AllMember> and conformance MLS.KeyPackageRetrievalResult<A>(&lazy protocol witness table cache variable for type MLS.SigningProcessedContext<Data> and conformance MLS.SigningProcessedContext<A>, &_s15SecureMessaging3MLSO23SigningProcessedContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO23SigningProcessedContextVy_10Foundation4DataVGMR, &protocol conformance descriptor for MLS.SigningProcessedContext<A>);
  v36 = lazy protocol witness table accessor for type MLS.SigningError and conformance MLS.SigningError();
  *v32 = v0;
  v32[1] = MLS.XPCClientCoordinator.applicationSign(input:withGroup:context:);
  v49 = v35;
  v50 = v36;
  v47 = v33;
  v48 = v34;
  v45 = v28;
  v46 = &type metadata for MLS.SigningError;
  v43 = partial apply for closure #3 in MLS.XPCClientCoordinator.applicationSign(input:withGroup:context:);
  v44 = v30;

  __asm { BRAA            X8, X16 }
}

uint64_t MLS.XPCClientCoordinator.applicationSign(input:withGroup:context:)()
{
  v2 = *v1;
  *(*v1 + 304) = v0;

  v3 = *(v2 + 248);

  if (v0)
  {
    v4 = MLS.XPCClientCoordinator.applicationSign(input:withGroup:context:);
  }

  else
  {
    v4 = MLS.XPCClientCoordinator.applicationSign(input:withGroup:context:);
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{
  v2 = *(v0 + 224);
  v1 = *(v0 + 232);
  v3 = *(v0 + 152);

  outlined consume of Data?(v2, v1);

  v4 = *(v0 + 136);
  v5 = *(v0 + 144);
  *v3 = *(v0 + 120);
  *(v3 + 16) = v4;
  *(v3 + 24) = v5;

  v6 = *(v0 + 8);

  return v6();
}

{
  v24 = v0;
  v1 = v0[38];
  v2 = v0[29];
  v3 = v0[28];

  outlined consume of Data?(v3, v2);

  outlined copy of Data?(v3, v2);

  v4 = v1;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  outlined consume of Data?(v3, v2);

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[38];
    v9 = v0[26];
    v8 = v0[27];
    v10 = v0[22];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v22 = v13;
    *v11 = 136315650;

    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v8, &v22);

    *(v11 + 4) = v14;
    *(v11 + 12) = 2112;
    v15 = v7;
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 14) = v16;
    *v12 = v16;
    *(v11 + 22) = 2080;
    v17 = *(v10 + direct field offset for MLS.XPCClientCoordinator.uniqueClientIdentifier);
    v18 = *(v10 + direct field offset for MLS.XPCClientCoordinator.uniqueClientIdentifier + 8);

    strcpy(v23, "EncryptedRCS.");
    HIWORD(v23[1]) = -4864;
    MEMORY[0x2667545A0](v17, v18);

    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23[0], v23[1], &v22);

    *(v11 + 24) = v19;
    _os_log_impl(&dword_264F1F000, v5, v6, "XPCClientCoordinator applicationSign failed { identifier: %s, error: %@, client: %s }", v11, 0x20u);
    outlined destroy of NSObject?(v12, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x266755550](v12, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x266755550](v13, -1, -1);
    MEMORY[0x266755550](v11, -1, -1);
  }

  else
  {
  }

  swift_willThrow();

  v20 = v0[1];

  return v20();
}

uint64_t closure #1 in MLS.XPCClientCoordinator.applicationSign(input:withGroup:context:)@<X0>(uint64_t *a4@<X8>)
{
  lazy protocol witness table accessor for type MLS.SigningInput and conformance MLS.SigningInput();
  result = dispatch thunk of JSONEncoder.encode<A>(_:)();
  if (!v4)
  {
    v8 = result;
    v9 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO14SigningContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO14SigningContextVy_10Foundation4DataVGMR);
    lazy protocol witness table accessor for type MLS.KeyPackageRetrievalResult<MLS.AllMember> and conformance MLS.KeyPackageRetrievalResult<A>(&lazy protocol witness table cache variable for type MLS.SigningContext<Data> and conformance MLS.SigningContext<A>, &_s15SecureMessaging3MLSO14SigningContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO14SigningContextVy_10Foundation4DataVGMR, &protocol conformance descriptor for MLS.SigningContext<A>);
    v10 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    v12 = v11;
    lazy protocol witness table accessor for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier();

    v13 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    v15 = v14;

    *a4 = v13;
    a4[1] = v15;
    a4[2] = v8;
    a4[3] = v9;
    a4[4] = v10;
    a4[5] = v12;
  }

  return result;
}

uint64_t MLS.XPCClientCoordinator.applicationEncrypt(groupName:withGroup:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  *(v7 + 120) = a5;
  *(v7 + 128) = v6;
  *(v7 + 104) = a3;
  *(v7 + 112) = a4;
  *(v7 + 88) = a1;
  *(v7 + 96) = a2;
  *(v7 + 136) = type metadata accessor for MetricCollector.Event(0);
  *(v7 + 144) = swift_task_alloc();
  v9 = swift_task_alloc();
  v10 = *a6;
  v11 = a6[1];
  *(v7 + 152) = v9;
  *(v7 + 160) = v10;
  *(v7 + 168) = v11;
  *(v7 + 176) = *(a6 + 1);
  *(v7 + 192) = a6[4];
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v12 = static MLSActor.shared;
  *(v7 + 200) = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.XPCClientCoordinator.applicationEncrypt(groupName:withGroup:context:), v12, 0);
}

void MLS.XPCClientCoordinator.applicationEncrypt(groupName:withGroup:context:)()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 176);
  *(v0 + 208) = direct field offset for MLS.XPCClientCoordinator.logger;

  outlined copy of Data?(v2, v1);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  outlined consume of Data?(v2, v1);

  if (os_log_type_enabled(v3, v4))
  {
    v6 = *(v0 + 160);
    v5 = *(v0 + 168);
    v7 = *(v0 + 128);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v41 = v9;
    *v8 = 136315394;

    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v5, &v41);

    *(v8 + 4) = v10;
    *(v8 + 12) = 2080;
    v11 = *(v7 + direct field offset for MLS.XPCClientCoordinator.uniqueClientIdentifier);
    v12 = *(v7 + direct field offset for MLS.XPCClientCoordinator.uniqueClientIdentifier + 8);
    strcpy(v42, "EncryptedRCS.");
    HIWORD(v42[1]) = -4864;

    MEMORY[0x2667545A0](v11, v12);

    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42[0], v42[1], &v41);

    *(v8 + 14) = v13;
    _os_log_impl(&dword_264F1F000, v3, v4, "XPCClientCoordinator applicationEncrypt groupName { identifier: %s, client: %s }", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v9, -1, -1);
    MEMORY[0x266755550](v8, -1, -1);
  }

  else
  {
  }

  v14 = *(v0 + 184);
  v15 = *(v0 + 192);
  v17 = *(v0 + 168);
  v16 = *(v0 + 176);
  v18 = *(v0 + 152);
  v19 = *(v0 + 160);
  v21 = *(v0 + 136);
  v20 = *(v0 + 144);
  v22 = *(v0 + 128);
  v38 = *(v0 + 112);
  v40 = *(v0 + 120);
  v37 = *(v0 + 96);

  outlined copy of Data?(v16, v14);

  Date.init()();
  v23 = *(v21 + 20);
  v24 = type metadata accessor for Date();
  (*(*(v24 - 8) + 56))(v18 + v23, 1, 1, v24);
  outlined init with take of MetricCollector.Event(v18, v20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v42[0] = v15;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v20, 0x5864726177726F46, 0xEA00000000004350, isUniquelyReferenced_nonNull_native);
  v26 = v42[0];
  *(v0 + 216) = v42[0];

  *(v0 + 16) = v19;
  *(v0 + 24) = v17;
  *(v0 + 32) = v16;
  *(v0 + 40) = v14;
  *(v0 + 48) = v26;
  v27 = *(*(v22 + direct field offset for MLS.XPCClientCoordinator.xpcClient) + OBJC_IVAR____TtCO15SecureMessaging8XPCUtils9XPCClient_deliveryInterface);
  *(v0 + 224) = v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO35GroupNameEncryptionProcessedContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO35GroupNameEncryptionProcessedContextVy_10Foundation4DataVGMR);
  v29 = swift_task_alloc();
  *(v0 + 232) = v29;
  *(v29 + 16) = v0 + 16;
  *(v29 + 24) = v22;
  v30 = swift_task_alloc();
  *(v0 + 240) = v30;
  *(v30 + 16) = v37;
  *(v30 + 32) = v38;
  *(v30 + 40) = v40;
  v31 = *(*v27 + 360);

  v39 = v31 + *v31;
  v32 = swift_task_alloc();
  *(v0 + 248) = v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataV_ACtMd, &_s10Foundation4DataV_ACtMR);
  v34 = lazy protocol witness table accessor for type MLS.KeyPackageRetrievalResult<MLS.AllMember> and conformance MLS.KeyPackageRetrievalResult<A>(&lazy protocol witness table cache variable for type MLS.GroupNameEncryptionProcessedContext<Data> and conformance MLS.GroupNameEncryptionProcessedContext<A>, &_s15SecureMessaging3MLSO35GroupNameEncryptionProcessedContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO35GroupNameEncryptionProcessedContextVy_10Foundation4DataVGMR, &protocol conformance descriptor for MLS.GroupNameEncryptionProcessedContext<A>);
  v35 = lazy protocol witness table accessor for type MLS.KeyPackageRetrievalResult<MLS.AllMember> and conformance MLS.KeyPackageRetrievalResult<A>(&lazy protocol witness table cache variable for type MLS.GroupNameEncryptionProcessedContext<Data> and conformance MLS.GroupNameEncryptionProcessedContext<A>, &_s15SecureMessaging3MLSO35GroupNameEncryptionProcessedContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO35GroupNameEncryptionProcessedContextVy_10Foundation4DataVGMR, &protocol conformance descriptor for MLS.GroupNameEncryptionProcessedContext<A>);
  v36 = lazy protocol witness table accessor for type MLS.EncryptionError and conformance MLS.EncryptionError();
  *v32 = v0;
  v32[1] = MLS.XPCClientCoordinator.applicationEncrypt(groupName:withGroup:context:);
  v50 = v35;
  v51 = v36;
  v48 = v33;
  v49 = v34;
  v46 = v28;
  v47 = &type metadata for MLS.EncryptionError;
  v44 = partial apply for closure #3 in MLS.XPCClientCoordinator.applicationEncrypt(groupName:withGroup:context:);
  v45 = v30;

  __asm { BRAA            X8, X16 }
}

uint64_t MLS.XPCClientCoordinator.applicationEncrypt(groupName:withGroup:context:)()
{
  v2 = *v1;
  *(*v1 + 256) = v0;

  v3 = *(v2 + 200);

  if (v0)
  {
    v4 = MLS.XPCClientCoordinator.applicationEncrypt(groupName:withGroup:context:);
  }

  else
  {
    v4 = MLS.XPCClientCoordinator.applicationEncrypt(groupName:withGroup:context:);
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{
  v2 = *(v0 + 176);
  v1 = *(v0 + 184);
  v3 = *(v0 + 88);

  outlined consume of Data?(v2, v1);

  v4 = *(v0 + 72);
  v5 = *(v0 + 80);
  *v3 = *(v0 + 56);
  *(v3 + 16) = v4;
  *(v3 + 24) = v5;

  v6 = *(v0 + 8);

  return v6();
}

{
  v24 = v0;
  v1 = v0[32];
  v2 = v0[23];
  v3 = v0[22];

  outlined consume of Data?(v3, v2);

  outlined copy of Data?(v3, v2);

  v4 = v1;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  outlined consume of Data?(v3, v2);

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[32];
    v9 = v0[20];
    v8 = v0[21];
    v10 = v0[16];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v22 = v13;
    *v11 = 136315650;

    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v8, &v22);

    *(v11 + 4) = v14;
    *(v11 + 12) = 2112;
    v15 = v7;
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 14) = v16;
    *v12 = v16;
    *(v11 + 22) = 2080;
    v17 = *(v10 + direct field offset for MLS.XPCClientCoordinator.uniqueClientIdentifier);
    v18 = *(v10 + direct field offset for MLS.XPCClientCoordinator.uniqueClientIdentifier + 8);

    strcpy(v23, "EncryptedRCS.");
    HIWORD(v23[1]) = -4864;
    MEMORY[0x2667545A0](v17, v18);

    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23[0], v23[1], &v22);

    *(v11 + 24) = v19;
    _os_log_impl(&dword_264F1F000, v5, v6, "XPCClientCoordinator applicationEncrypt groupName failed { identifier: %s, error: %@, client: %s }", v11, 0x20u);
    outlined destroy of NSObject?(v12, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x266755550](v12, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x266755550](v13, -1, -1);
    MEMORY[0x266755550](v11, -1, -1);
  }

  else
  {
  }

  swift_willThrow();

  v20 = v0[1];

  return v20();
}

uint64_t MLS.XPCClientCoordinator.processIncoming(groupName:forGroup:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  *(v7 + 216) = a5;
  *(v7 + 224) = v6;
  *(v7 + 200) = a3;
  *(v7 + 208) = a4;
  *(v7 + 184) = a1;
  *(v7 + 192) = a2;
  *(v7 + 232) = type metadata accessor for MetricCollector.Event(0);
  *(v7 + 240) = swift_task_alloc();
  v9 = swift_task_alloc();
  v10 = *a6;
  v11 = a6[1];
  *(v7 + 248) = v9;
  *(v7 + 256) = v10;
  *(v7 + 264) = v11;
  *(v7 + 272) = *(a6 + 1);
  *(v7 + 288) = a6[4];
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v12 = static MLSActor.shared;
  *(v7 + 296) = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.XPCClientCoordinator.processIncoming(groupName:forGroup:context:), v12, 0);
}

void MLS.XPCClientCoordinator.processIncoming(groupName:forGroup:context:)()
{
  v1 = *(v0 + 280);
  v2 = *(v0 + 272);
  *(v0 + 304) = direct field offset for MLS.XPCClientCoordinator.logger;

  outlined copy of Data?(v2, v1);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  outlined consume of Data?(v2, v1);

  if (os_log_type_enabled(v3, v4))
  {
    v6 = *(v0 + 256);
    v5 = *(v0 + 264);
    v7 = *(v0 + 224);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v41 = v9;
    *v8 = 136315394;

    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v5, &v41);

    *(v8 + 4) = v10;
    *(v8 + 12) = 2080;
    v11 = *(v7 + direct field offset for MLS.XPCClientCoordinator.uniqueClientIdentifier);
    v12 = *(v7 + direct field offset for MLS.XPCClientCoordinator.uniqueClientIdentifier + 8);
    strcpy(v42, "EncryptedRCS.");
    HIWORD(v42[1]) = -4864;

    MEMORY[0x2667545A0](v11, v12);

    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42[0], v42[1], &v41);

    *(v8 + 14) = v13;
    _os_log_impl(&dword_264F1F000, v3, v4, "XPCClientCoordinator processIncoming groupName { identifier: %s, client: %s }", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v9, -1, -1);
    MEMORY[0x266755550](v8, -1, -1);
  }

  else
  {
  }

  v14 = *(v0 + 280);
  v15 = *(v0 + 288);
  v17 = *(v0 + 264);
  v16 = *(v0 + 272);
  v18 = *(v0 + 248);
  v19 = *(v0 + 256);
  v21 = *(v0 + 232);
  v20 = *(v0 + 240);
  v22 = *(v0 + 224);
  v38 = *(v0 + 208);
  v40 = *(v0 + 216);
  v37 = *(v0 + 192);

  outlined copy of Data?(v16, v14);

  Date.init()();
  v23 = *(v21 + 20);
  v24 = type metadata accessor for Date();
  (*(*(v24 - 8) + 56))(v18 + v23, 1, 1, v24);
  outlined init with take of MetricCollector.Event(v18, v20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v42[0] = v15;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v20, 0x5864726177726F46, 0xEA00000000004350, isUniquelyReferenced_nonNull_native);
  v26 = v42[0];
  *(v0 + 312) = v42[0];

  *(v0 + 144) = v19;
  *(v0 + 152) = v17;
  *(v0 + 160) = v16;
  *(v0 + 168) = v14;
  *(v0 + 176) = v26;
  v27 = *(*(v22 + direct field offset for MLS.XPCClientCoordinator.xpcClient) + OBJC_IVAR____TtCO15SecureMessaging8XPCUtils9XPCClient_deliveryInterface);
  *(v0 + 320) = v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO33IncomingGroupNameProcessedContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO33IncomingGroupNameProcessedContextVy_10Foundation4DataVGMR);
  v29 = swift_task_alloc();
  *(v0 + 328) = v29;
  *(v29 + 16) = v0 + 144;
  *(v29 + 24) = v22;
  v30 = swift_task_alloc();
  *(v0 + 336) = v30;
  *(v30 + 16) = v37;
  *(v30 + 32) = v38;
  *(v30 + 40) = v40;
  v31 = *(*v27 + 360);

  v39 = v31 + *v31;
  v32 = swift_task_alloc();
  *(v0 + 344) = v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataV_ACtMd, &_s10Foundation4DataV_ACtMR);
  v34 = lazy protocol witness table accessor for type MLS.KeyPackageRetrievalResult<MLS.AllMember> and conformance MLS.KeyPackageRetrievalResult<A>(&lazy protocol witness table cache variable for type MLS.IncomingGroupNameProcessedContext<Data> and conformance MLS.IncomingGroupNameProcessedContext<A>, &_s15SecureMessaging3MLSO33IncomingGroupNameProcessedContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO33IncomingGroupNameProcessedContextVy_10Foundation4DataVGMR, &protocol conformance descriptor for MLS.IncomingGroupNameProcessedContext<A>);
  v35 = lazy protocol witness table accessor for type MLS.KeyPackageRetrievalResult<MLS.AllMember> and conformance MLS.KeyPackageRetrievalResult<A>(&lazy protocol witness table cache variable for type MLS.IncomingGroupNameProcessedContext<Data> and conformance MLS.IncomingGroupNameProcessedContext<A>, &_s15SecureMessaging3MLSO33IncomingGroupNameProcessedContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO33IncomingGroupNameProcessedContextVy_10Foundation4DataVGMR, &protocol conformance descriptor for MLS.IncomingGroupNameProcessedContext<A>);
  v36 = lazy protocol witness table accessor for type MLS.IncomingMessageError and conformance MLS.IncomingMessageError();
  *v32 = v0;
  v32[1] = MLS.XPCClientCoordinator.processIncoming(groupName:forGroup:context:);
  v50 = v35;
  v51 = v36;
  v48 = v33;
  v49 = v34;
  v46 = v28;
  v47 = &type metadata for MLS.IncomingMessageError;
  v44 = partial apply for closure #3 in MLS.XPCClientCoordinator.processIncoming(groupName:forGroup:context:);
  v45 = v30;

  __asm { BRAA            X8, X16 }
}

uint64_t MLS.XPCClientCoordinator.processIncoming(groupName:forGroup:context:)()
{
  v2 = *v1;
  *(*v1 + 352) = v0;

  if (v0)
  {
    v3 = *(v2 + 296);

    v4 = MLS.XPCClientCoordinator.processIncoming(groupName:forGroup:context:);
    v5 = v3;
  }

  else
  {
    v6 = *(v2 + 296);

    v4 = MLS.XPCClientCoordinator.processIncoming(groupName:forGroup:context:);
    v5 = v6;
  }

  return MEMORY[0x2822009F8](v4, v5, 0);
}

{
  v2 = *(v0 + 272);
  v1 = *(v0 + 280);
  v3 = *(v0 + 184);

  outlined consume of Data?(v2, v1);

  v4 = *(v0 + 16);
  v5 = *(v0 + 32);
  v6 = *(v0 + 64);
  v3[2] = *(v0 + 48);
  v3[3] = v6;
  *v3 = v4;
  v3[1] = v5;
  v7 = *(v0 + 80);
  v8 = *(v0 + 96);
  v9 = *(v0 + 128);
  v3[6] = *(v0 + 112);
  v3[7] = v9;
  v3[4] = v7;
  v3[5] = v8;

  v10 = *(v0 + 8);

  return v10();
}

{
  v24 = v0;
  v1 = v0[44];
  v2 = v0[35];
  v3 = v0[34];

  outlined consume of Data?(v3, v2);

  outlined copy of Data?(v3, v2);

  v4 = v1;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  outlined consume of Data?(v3, v2);

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[44];
    v9 = v0[32];
    v8 = v0[33];
    v10 = v0[28];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v22 = v13;
    *v11 = 136315650;

    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v8, &v22);

    *(v11 + 4) = v14;
    *(v11 + 12) = 2112;
    v15 = v7;
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 14) = v16;
    *v12 = v16;
    *(v11 + 22) = 2080;
    v17 = *(v10 + direct field offset for MLS.XPCClientCoordinator.uniqueClientIdentifier);
    v18 = *(v10 + direct field offset for MLS.XPCClientCoordinator.uniqueClientIdentifier + 8);

    strcpy(v23, "EncryptedRCS.");
    HIWORD(v23[1]) = -4864;
    MEMORY[0x2667545A0](v17, v18);

    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23[0], v23[1], &v22);

    *(v11 + 24) = v19;
    _os_log_impl(&dword_264F1F000, v5, v6, "XPCClientCoordinator processIncoming groupName failed { identifier: %s, error: %@, client: %s }", v11, 0x20u);
    outlined destroy of NSObject?(v12, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x266755550](v12, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x266755550](v13, -1, -1);
    MEMORY[0x266755550](v11, -1, -1);
  }

  else
  {
  }

  swift_willThrow();

  v20 = v0[1];

  return v20();
}

uint64_t closure #3 in MLS.XPCClientCoordinator.applicationEncrypt(data:withGroup:context:)(void **a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t (*a9)(uint64_t, uint64_t), uint64_t a10, SEL *a11)
{
  v26 = *a1;
  v16 = a2[1];
  v17 = a2[2];
  v18 = a2[3];
  v27 = *a2;
  outlined copy of Data._Representation(*a2, v16);
  outlined copy of Data._Representation(v17, v18);
  isa = Data._bridgeToObjectiveC()().super.isa;
  v20 = a9(a5, a6);
  v21 = MEMORY[0x266754510](a7, a8);
  v22 = Data._bridgeToObjectiveC()().super.isa;
  aBlock[4] = a3;
  aBlock[5] = a4;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Data?, @guaranteed Data?) -> ();
  aBlock[3] = a10;
  v23 = _Block_copy(aBlock);

  [v26 *a11];
  _Block_release(v23);

  outlined consume of Data._Representation(v17, v18);
  return outlined consume of Data._Representation(v27, v16);
}

uint64_t MLS.XPCClientCoordinator.processIncoming(message:forGroup:context:)(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 1568) = v5;
  *(v6 + 1560) = a4;
  *(v6 + 1552) = a3;
  *(v6 + 1544) = a1;
  *(v6 + 1576) = type metadata accessor for MetricCollector.Event(0);
  *(v6 + 1584) = swift_task_alloc();
  *(v6 + 1592) = swift_task_alloc();
  v9 = a2[1];
  *(v6 + 1480) = *a2;
  *(v6 + 1496) = v9;
  *(v6 + 1512) = a2[2];
  *(v6 + 1522) = *(a2 + 42);
  v10 = *(a5 + 144);
  *(v6 + 144) = *(a5 + 128);
  *(v6 + 160) = v10;
  *(v6 + 176) = *(a5 + 160);
  v11 = *(a5 + 80);
  *(v6 + 80) = *(a5 + 64);
  *(v6 + 96) = v11;
  v12 = *(a5 + 112);
  *(v6 + 112) = *(a5 + 96);
  *(v6 + 128) = v12;
  v13 = *(a5 + 16);
  *(v6 + 16) = *a5;
  *(v6 + 32) = v13;
  v14 = *(a5 + 48);
  *(v6 + 48) = *(a5 + 32);
  *(v6 + 64) = v14;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v15 = static MLSActor.shared;
  *(v6 + 1600) = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.XPCClientCoordinator.processIncoming(message:forGroup:context:), v15, 0);
}

void MLS.XPCClientCoordinator.processIncoming(message:forGroup:context:)()
{
  *(v0 + 1608) = direct field offset for MLS.XPCClientCoordinator.logger;
  outlined init with copy of MLS.OutgoingEventState?(v0 + 16, v0 + 352, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  outlined destroy of NSObject?(v0 + 16, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 1568);
  if (v3)
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v46 = v6;
    *v5 = 136315394;
    v7 = *(v0 + 16);
    v8 = *(v0 + 24);

    v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v8, &v46);

    *(v5 + 4) = v9;
    *(v5 + 12) = 2080;
    v10 = *(v4 + direct field offset for MLS.XPCClientCoordinator.uniqueClientIdentifier);
    v11 = *(v4 + direct field offset for MLS.XPCClientCoordinator.uniqueClientIdentifier + 8);
    strcpy(v47, "EncryptedRCS.");
    HIWORD(v47[1]) = -4864;

    MEMORY[0x2667545A0](v10, v11);

    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v47[0], v47[1], &v46);

    *(v5 + 14) = v12;
    _os_log_impl(&dword_264F1F000, v1, v2, "XPCClientCoordinator processIncoming { identifier: %s, client: %s }", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v6, -1, -1);
    MEMORY[0x266755550](v5, -1, -1);
  }

  else
  {
  }

  v13 = *(v0 + 1592);
  v14 = *(v0 + 1584);
  v15 = *(v0 + 1576);
  v16 = *(v0 + 1568);
  v45 = *(v0 + 1560);
  v17 = *(v0 + 1552);
  v18 = *(v0 + 128);
  *(v0 + 1288) = *(v0 + 112);
  *(v0 + 1304) = v18;
  v19 = *(v0 + 160);
  *(v0 + 1320) = *(v0 + 144);
  *(v0 + 1336) = v19;
  v20 = *(v0 + 64);
  *(v0 + 1224) = *(v0 + 48);
  *(v0 + 1240) = v20;
  v21 = *(v0 + 96);
  *(v0 + 1256) = *(v0 + 80);
  *(v0 + 1272) = v21;
  v22 = *(v0 + 32);
  *(v0 + 1192) = *(v0 + 16);
  *(v0 + 1208) = v22;
  v23 = *(v0 + 176);
  outlined init with copy of MLS.OutgoingEventState?(v0 + 16, v0 + 520, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
  Date.init()();
  v24 = *(v15 + 20);
  v25 = type metadata accessor for Date();
  (*(*(v25 - 8) + 56))(v13 + v24, 1, 1, v25);
  outlined init with take of MetricCollector.Event(v13, v14);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v47[0] = v23;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v14, 0x5864726177726F46, 0xEA00000000004350, isUniquelyReferenced_nonNull_native);
  v27 = v47[0];
  *(v0 + 1616) = v47[0];

  v28 = *(v0 + 1288);
  v29 = *(v0 + 1320);
  v30 = *(v0 + 1336);
  *(v0 + 296) = *(v0 + 1304);
  *(v0 + 312) = v29;
  *(v0 + 328) = v30;
  v31 = *(v0 + 1240);
  *(v0 + 216) = *(v0 + 1224);
  *(v0 + 232) = v31;
  v32 = *(v0 + 1272);
  *(v0 + 248) = *(v0 + 1256);
  *(v0 + 264) = v32;
  *(v0 + 280) = v28;
  v33 = *(v0 + 1208);
  *(v0 + 184) = *(v0 + 1192);
  *(v0 + 200) = v33;
  *(v0 + 344) = v27;
  v34 = *(*(v16 + direct field offset for MLS.XPCClientCoordinator.xpcClient) + OBJC_IVAR____TtCO15SecureMessaging8XPCUtils9XPCClient_deliveryInterface);
  *(v0 + 1624) = v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO31IncomingMessageProcessedContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO31IncomingMessageProcessedContextVy_10Foundation4DataVGMR);
  v36 = swift_task_alloc();
  *(v0 + 1632) = v36;
  v36[2] = v0 + 1480;
  v36[3] = v0 + 184;
  v36[4] = v16;
  v37 = swift_task_alloc();
  *(v0 + 1640) = v37;
  *(v37 + 16) = v17;
  *(v37 + 24) = v45;
  v38 = *(*v34 + 360);

  v44 = v38 + *v38;
  v39 = swift_task_alloc();
  *(v0 + 1648) = v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataV_A2CtMd, &_s10Foundation4DataV_A2CtMR);
  v41 = lazy protocol witness table accessor for type MLS.KeyPackageRetrievalResult<MLS.AllMember> and conformance MLS.KeyPackageRetrievalResult<A>(&lazy protocol witness table cache variable for type MLS.IncomingMessageProcessedContext<Data> and conformance MLS.IncomingMessageProcessedContext<A>, &_s15SecureMessaging3MLSO31IncomingMessageProcessedContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO31IncomingMessageProcessedContextVy_10Foundation4DataVGMR, &protocol conformance descriptor for MLS.IncomingMessageProcessedContext<A>);
  v42 = lazy protocol witness table accessor for type MLS.KeyPackageRetrievalResult<MLS.AllMember> and conformance MLS.KeyPackageRetrievalResult<A>(&lazy protocol witness table cache variable for type MLS.IncomingMessageProcessedContext<Data> and conformance MLS.IncomingMessageProcessedContext<A>, &_s15SecureMessaging3MLSO31IncomingMessageProcessedContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO31IncomingMessageProcessedContextVy_10Foundation4DataVGMR, &protocol conformance descriptor for MLS.IncomingMessageProcessedContext<A>);
  v43 = lazy protocol witness table accessor for type MLS.IncomingMessageError and conformance MLS.IncomingMessageError();
  *v39 = v0;
  v39[1] = MLS.XPCClientCoordinator.processIncoming(message:forGroup:context:);
  v55 = v42;
  v56 = v43;
  v53 = v40;
  v54 = v41;
  v51 = v35;
  v52 = &type metadata for MLS.IncomingMessageError;
  v49 = partial apply for closure #3 in MLS.XPCClientCoordinator.processIncoming(message:forGroup:context:);
  v50 = v37;

  __asm { BRAA            X8, X16 }
}

uint64_t MLS.XPCClientCoordinator.processIncoming(message:forGroup:context:)()
{
  v2 = *v1;
  *(*v1 + 1656) = v0;

  v3 = *(v2 + 1600);

  if (v0)
  {
    v4 = MLS.XPCClientCoordinator.processIncoming(message:forGroup:context:);
  }

  else
  {
    v4 = MLS.XPCClientCoordinator.processIncoming(message:forGroup:context:);
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{
  v1 = *(v0 + 1304);
  *(v0 + 1120) = *(v0 + 1288);
  *(v0 + 1136) = v1;
  v2 = *(v0 + 1336);
  *(v0 + 1152) = *(v0 + 1320);
  *(v0 + 1168) = v2;
  v3 = *(v0 + 1240);
  *(v0 + 1056) = *(v0 + 1224);
  *(v0 + 1072) = v3;
  v4 = *(v0 + 1272);
  *(v0 + 1088) = *(v0 + 1256);
  *(v0 + 1104) = v4;
  v5 = *(v0 + 1208);
  *(v0 + 1024) = *(v0 + 1192);
  v6 = *(v0 + 1616);
  v7 = *(v0 + 1544);
  *(v0 + 1040) = v5;
  *(v0 + 1184) = v6;
  outlined destroy of NSObject?(v0 + 1024, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
  v8 = *(v0 + 1400);
  v10 = *(v0 + 1352);
  v9 = *(v0 + 1368);
  v7[2] = *(v0 + 1384);
  v7[3] = v8;
  *v7 = v10;
  v7[1] = v9;
  v11 = *(v0 + 1464);
  v13 = *(v0 + 1416);
  v12 = *(v0 + 1432);
  v7[6] = *(v0 + 1448);
  v7[7] = v11;
  v7[4] = v13;
  v7[5] = v12;

  v14 = *(v0 + 8);

  return v14();
}

{
  v28 = v0;
  v1 = *(v0 + 1656);
  v2 = *(v0 + 1616);
  v3 = *(v0 + 1304);
  *(v0 + 784) = *(v0 + 1288);
  *(v0 + 800) = v3;
  v4 = *(v0 + 1336);
  *(v0 + 816) = *(v0 + 1320);
  *(v0 + 832) = v4;
  v5 = *(v0 + 1240);
  *(v0 + 720) = *(v0 + 1224);
  *(v0 + 736) = v5;
  v6 = *(v0 + 1272);
  *(v0 + 752) = *(v0 + 1256);
  *(v0 + 768) = v6;
  v7 = *(v0 + 1208);
  *(v0 + 688) = *(v0 + 1192);
  *(v0 + 704) = v7;
  *(v0 + 848) = v2;
  outlined destroy of NSObject?(v0 + 688, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);

  outlined init with copy of MLS.OutgoingEventState?(v0 + 16, v0 + 856, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);

  v8 = v1;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();
  outlined destroy of NSObject?(v0 + 16, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);

  if (os_log_type_enabled(v9, v10))
  {
    v11 = *(v0 + 1656);
    v12 = *(v0 + 1568);
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v26 = v15;
    *v13 = 136315650;
    v16 = *(v0 + 16);
    v17 = *(v0 + 24);

    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, &v26);

    *(v13 + 4) = v18;
    *(v13 + 12) = 2112;
    v19 = v11;
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 14) = v20;
    *v14 = v20;
    *(v13 + 22) = 2080;
    v21 = *(v12 + direct field offset for MLS.XPCClientCoordinator.uniqueClientIdentifier);
    v22 = *(v12 + direct field offset for MLS.XPCClientCoordinator.uniqueClientIdentifier + 8);

    strcpy(v27, "EncryptedRCS.");
    HIWORD(v27[1]) = -4864;
    MEMORY[0x2667545A0](v21, v22);

    v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27[0], v27[1], &v26);

    *(v13 + 24) = v23;
    _os_log_impl(&dword_264F1F000, v9, v10, "XPCClientCoordinator processIncoming failed { identifier: %s, error: %@, client: %s }", v13, 0x20u);
    outlined destroy of NSObject?(v14, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x266755550](v14, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x266755550](v15, -1, -1);
    MEMORY[0x266755550](v13, -1, -1);
  }

  else
  {
  }

  swift_willThrow();

  v24 = *(v0 + 8);

  return v24();
}

uint64_t MLS.XPCClientCoordinator.processIncoming(message:context:)(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  *(v4 + 1552) = v3;
  *(v4 + 1544) = a1;
  *(v4 + 1560) = type metadata accessor for MetricCollector.Event(0);
  *(v4 + 1568) = swift_task_alloc();
  *(v4 + 1576) = swift_task_alloc();
  v7 = a2[1];
  *(v4 + 1480) = *a2;
  *(v4 + 1496) = v7;
  *(v4 + 1512) = a2[2];
  *(v4 + 1522) = *(a2 + 42);
  v8 = *(a3 + 144);
  *(v4 + 144) = *(a3 + 128);
  *(v4 + 160) = v8;
  *(v4 + 176) = *(a3 + 160);
  v9 = *(a3 + 80);
  *(v4 + 80) = *(a3 + 64);
  *(v4 + 96) = v9;
  v10 = *(a3 + 112);
  *(v4 + 112) = *(a3 + 96);
  *(v4 + 128) = v10;
  v11 = *(a3 + 16);
  *(v4 + 16) = *a3;
  *(v4 + 32) = v11;
  v12 = *(a3 + 48);
  *(v4 + 48) = *(a3 + 32);
  *(v4 + 64) = v12;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v13 = static MLSActor.shared;
  *(v4 + 1584) = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.XPCClientCoordinator.processIncoming(message:context:), v13, 0);
}

void MLS.XPCClientCoordinator.processIncoming(message:context:)()
{
  *(v0 + 1592) = direct field offset for MLS.XPCClientCoordinator.logger;
  outlined init with copy of MLS.OutgoingEventState?(v0 + 16, v0 + 352, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  outlined destroy of NSObject?(v0 + 16, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 1552);
  if (v3)
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v43 = v6;
    *v5 = 136315394;
    v7 = *(v0 + 16);
    v8 = *(v0 + 24);

    v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v8, &v43);

    *(v5 + 4) = v9;
    *(v5 + 12) = 2080;
    v10 = *(v4 + direct field offset for MLS.XPCClientCoordinator.uniqueClientIdentifier);
    v11 = *(v4 + direct field offset for MLS.XPCClientCoordinator.uniqueClientIdentifier + 8);
    strcpy(v44, "EncryptedRCS.");
    HIWORD(v44[1]) = -4864;

    MEMORY[0x2667545A0](v10, v11);

    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v44[0], v44[1], &v43);

    *(v5 + 14) = v12;
    _os_log_impl(&dword_264F1F000, v1, v2, "XPCClientCoordinator processIncoming { identifier: %s, client: %s }", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v6, -1, -1);
    MEMORY[0x266755550](v5, -1, -1);
  }

  else
  {
  }

  v13 = *(v0 + 1576);
  v14 = *(v0 + 1568);
  v15 = *(v0 + 1560);
  v16 = *(v0 + 1552);
  v17 = *(v0 + 128);
  *(v0 + 1288) = *(v0 + 112);
  *(v0 + 1304) = v17;
  v18 = *(v0 + 160);
  *(v0 + 1320) = *(v0 + 144);
  *(v0 + 1336) = v18;
  v19 = *(v0 + 64);
  *(v0 + 1224) = *(v0 + 48);
  *(v0 + 1240) = v19;
  v20 = *(v0 + 96);
  *(v0 + 1256) = *(v0 + 80);
  *(v0 + 1272) = v20;
  v21 = *(v0 + 32);
  *(v0 + 1192) = *(v0 + 16);
  *(v0 + 1208) = v21;
  v22 = *(v0 + 176);
  outlined init with copy of MLS.OutgoingEventState?(v0 + 16, v0 + 520, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
  Date.init()();
  v23 = *(v15 + 20);
  v24 = type metadata accessor for Date();
  (*(*(v24 - 8) + 56))(v13 + v23, 1, 1, v24);
  outlined init with take of MetricCollector.Event(v13, v14);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v44[0] = v22;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v14, 0x5864726177726F46, 0xEA00000000004350, isUniquelyReferenced_nonNull_native);
  v26 = v44[0];
  *(v0 + 1600) = v44[0];

  v27 = *(v0 + 1288);
  v28 = *(v0 + 1320);
  v29 = *(v0 + 1336);
  *(v0 + 296) = *(v0 + 1304);
  *(v0 + 312) = v28;
  *(v0 + 328) = v29;
  v30 = *(v0 + 1240);
  *(v0 + 216) = *(v0 + 1224);
  *(v0 + 232) = v30;
  v31 = *(v0 + 1272);
  *(v0 + 248) = *(v0 + 1256);
  *(v0 + 264) = v31;
  *(v0 + 280) = v27;
  v32 = *(v0 + 1208);
  *(v0 + 184) = *(v0 + 1192);
  *(v0 + 200) = v32;
  *(v0 + 344) = v26;
  v33 = *(*(v16 + direct field offset for MLS.XPCClientCoordinator.xpcClient) + OBJC_IVAR____TtCO15SecureMessaging8XPCUtils9XPCClient_deliveryInterface);
  *(v0 + 1608) = v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO31IncomingMessageProcessedContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO31IncomingMessageProcessedContextVy_10Foundation4DataVGMR);
  v35 = swift_task_alloc();
  *(v0 + 1616) = v35;
  v35[2] = v0 + 1480;
  v35[3] = v0 + 184;
  v35[4] = v16;
  v36 = *(*v33 + 360);

  v42 = v36 + *v36;
  v37 = swift_task_alloc();
  *(v0 + 1624) = v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataV_A2CtMd, &_s10Foundation4DataV_A2CtMR);
  v39 = lazy protocol witness table accessor for type MLS.KeyPackageRetrievalResult<MLS.AllMember> and conformance MLS.KeyPackageRetrievalResult<A>(&lazy protocol witness table cache variable for type MLS.IncomingMessageProcessedContext<Data> and conformance MLS.IncomingMessageProcessedContext<A>, &_s15SecureMessaging3MLSO31IncomingMessageProcessedContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO31IncomingMessageProcessedContextVy_10Foundation4DataVGMR, &protocol conformance descriptor for MLS.IncomingMessageProcessedContext<A>);
  v40 = lazy protocol witness table accessor for type MLS.KeyPackageRetrievalResult<MLS.AllMember> and conformance MLS.KeyPackageRetrievalResult<A>(&lazy protocol witness table cache variable for type MLS.IncomingMessageProcessedContext<Data> and conformance MLS.IncomingMessageProcessedContext<A>, &_s15SecureMessaging3MLSO31IncomingMessageProcessedContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO31IncomingMessageProcessedContextVy_10Foundation4DataVGMR, &protocol conformance descriptor for MLS.IncomingMessageProcessedContext<A>);
  v41 = lazy protocol witness table accessor for type MLS.IncomingMessageError and conformance MLS.IncomingMessageError();
  *v37 = v0;
  v37[1] = MLS.XPCClientCoordinator.processIncoming(message:context:);
  v52 = v40;
  v53 = v41;
  v50 = v38;
  v51 = v39;
  v48 = v34;
  v49 = &type metadata for MLS.IncomingMessageError;
  v46 = closure #3 in MLS.XPCClientCoordinator.processIncoming(message:context:);
  v47 = 0;

  __asm { BRAA            X8, X16 }
}

uint64_t MLS.XPCClientCoordinator.processIncoming(message:context:)()
{
  v2 = *v1;
  *(*v1 + 1632) = v0;

  v3 = *(v2 + 1584);

  if (v0)
  {
    v4 = MLS.XPCClientCoordinator.processIncoming(message:context:);
  }

  else
  {
    v4 = MLS.XPCClientCoordinator.processIncoming(message:context:);
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{
  v1 = *(v0 + 1304);
  *(v0 + 1120) = *(v0 + 1288);
  *(v0 + 1136) = v1;
  v2 = *(v0 + 1336);
  *(v0 + 1152) = *(v0 + 1320);
  *(v0 + 1168) = v2;
  v3 = *(v0 + 1240);
  *(v0 + 1056) = *(v0 + 1224);
  *(v0 + 1072) = v3;
  v4 = *(v0 + 1272);
  *(v0 + 1088) = *(v0 + 1256);
  *(v0 + 1104) = v4;
  v5 = *(v0 + 1208);
  *(v0 + 1024) = *(v0 + 1192);
  v6 = *(v0 + 1600);
  v7 = *(v0 + 1544);
  *(v0 + 1040) = v5;
  *(v0 + 1184) = v6;
  outlined destroy of NSObject?(v0 + 1024, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
  v8 = *(v0 + 1400);
  v10 = *(v0 + 1352);
  v9 = *(v0 + 1368);
  v7[2] = *(v0 + 1384);
  v7[3] = v8;
  *v7 = v10;
  v7[1] = v9;
  v11 = *(v0 + 1464);
  v13 = *(v0 + 1416);
  v12 = *(v0 + 1432);
  v7[6] = *(v0 + 1448);
  v7[7] = v11;
  v7[4] = v13;
  v7[5] = v12;

  v14 = *(v0 + 8);

  return v14();
}

{
  v28 = v0;
  v1 = *(v0 + 1632);
  v2 = *(v0 + 1600);
  v3 = *(v0 + 1304);
  *(v0 + 784) = *(v0 + 1288);
  *(v0 + 800) = v3;
  v4 = *(v0 + 1336);
  *(v0 + 816) = *(v0 + 1320);
  *(v0 + 832) = v4;
  v5 = *(v0 + 1240);
  *(v0 + 720) = *(v0 + 1224);
  *(v0 + 736) = v5;
  v6 = *(v0 + 1272);
  *(v0 + 752) = *(v0 + 1256);
  *(v0 + 768) = v6;
  v7 = *(v0 + 1208);
  *(v0 + 688) = *(v0 + 1192);
  *(v0 + 704) = v7;
  *(v0 + 848) = v2;
  outlined destroy of NSObject?(v0 + 688, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);

  outlined init with copy of MLS.OutgoingEventState?(v0 + 16, v0 + 856, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);

  v8 = v1;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();
  outlined destroy of NSObject?(v0 + 16, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);

  if (os_log_type_enabled(v9, v10))
  {
    v11 = *(v0 + 1632);
    v12 = *(v0 + 1552);
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v26 = v15;
    *v13 = 136315650;
    v16 = *(v0 + 16);
    v17 = *(v0 + 24);

    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, &v26);

    *(v13 + 4) = v18;
    *(v13 + 12) = 2112;
    v19 = v11;
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 14) = v20;
    *v14 = v20;
    *(v13 + 22) = 2080;
    v21 = *(v12 + direct field offset for MLS.XPCClientCoordinator.uniqueClientIdentifier);
    v22 = *(v12 + direct field offset for MLS.XPCClientCoordinator.uniqueClientIdentifier + 8);

    strcpy(v27, "EncryptedRCS.");
    HIWORD(v27[1]) = -4864;
    MEMORY[0x2667545A0](v21, v22);

    v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27[0], v27[1], &v26);

    *(v13 + 24) = v23;
    _os_log_impl(&dword_264F1F000, v9, v10, "XPCClientCoordinator processIncoming failed { identifier: %s, error: %@, client: %s }", v13, 0x20u);
    outlined destroy of NSObject?(v14, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x266755550](v14, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x266755550](v15, -1, -1);
    MEMORY[0x266755550](v13, -1, -1);
  }

  else
  {
  }

  swift_willThrow();

  v24 = *(v0 + 8);

  return v24();
}

uint64_t closure #1 in MLS.XPCClientCoordinator.processIncoming(message:forGroup:context:)@<X0>(uint64_t *a4@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO15IncomingMessageVy_AC9AllMemberOGMd, &_s15SecureMessaging3MLSO15IncomingMessageVy_AC9AllMemberOGMR);
  lazy protocol witness table accessor for type MLS.KeyPackageRetrievalResult<MLS.AllMember> and conformance MLS.KeyPackageRetrievalResult<A>(&lazy protocol witness table cache variable for type MLS.IncomingMessage<MLS.AllMember> and conformance MLS.IncomingMessage<A>, &_s15SecureMessaging3MLSO15IncomingMessageVy_AC9AllMemberOGMd, &_s15SecureMessaging3MLSO15IncomingMessageVy_AC9AllMemberOGMR, &protocol conformance descriptor for MLS.IncomingMessage<A>);
  result = dispatch thunk of JSONEncoder.encode<A>(_:)();
  if (!v4)
  {
    v8 = result;
    v9 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    lazy protocol witness table accessor for type MLS.KeyPackageRetrievalResult<MLS.AllMember> and conformance MLS.KeyPackageRetrievalResult<A>(&lazy protocol witness table cache variable for type MLS.IncomingMessageContext<Data> and conformance MLS.IncomingMessageContext<A>, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR, &protocol conformance descriptor for MLS.IncomingMessageContext<A>);
    v10 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    v12 = v11;
    lazy protocol witness table accessor for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier();

    v13 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    v15 = v14;

    *a4 = v13;
    a4[1] = v15;
    a4[2] = v8;
    a4[3] = v9;
    a4[4] = v10;
    a4[5] = v12;
  }

  return result;
}

uint64_t closure #3 in MLS.XPCClientCoordinator.processIncoming(message:context:)(id *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v15 = *a1;
  v5 = a2[2];
  v6 = a2[3];
  v7 = a2[4];
  v8 = a2[5];
  v16 = a2[1];
  v17 = *a2;
  outlined copy of Data._Representation(*a2, v16);
  outlined copy of Data._Representation(v5, v6);
  outlined copy of Data._Representation(v7, v8);
  isa = Data._bridgeToObjectiveC()().super.isa;
  v10 = Data._bridgeToObjectiveC()().super.isa;
  v11 = Data._bridgeToObjectiveC()().super.isa;
  aBlock[4] = a3;
  aBlock[5] = a4;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Data?, @guaranteed Data?) -> ();
  aBlock[3] = &block_descriptor_234;
  v12 = _Block_copy(aBlock);

  [v15 processIncomingWithUniqueClientIdentifier:isa message:v10 incomingMessageContext:v11 completion:v12];
  _Block_release(v12);

  outlined consume of Data._Representation(v7, v8);
  outlined consume of Data._Representation(v5, v6);
  return outlined consume of Data._Representation(v17, v16);
}

uint64_t MLS.XPCClientCoordinator.processIncoming(failureToDecrypt:withGroup:context:)(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 1568) = v5;
  *(v6 + 1560) = a4;
  *(v6 + 1552) = a3;
  *(v6 + 1544) = a1;
  *(v6 + 1576) = type metadata accessor for MetricCollector.Event(0);
  *(v6 + 1584) = swift_task_alloc();
  *(v6 + 1592) = swift_task_alloc();
  v9 = a2[1];
  *(v6 + 1432) = *a2;
  *(v6 + 1448) = v9;
  *(v6 + 1464) = a2[2];
  *(v6 + 1473) = *(a2 + 41);
  v10 = *(a5 + 144);
  *(v6 + 144) = *(a5 + 128);
  *(v6 + 160) = v10;
  *(v6 + 176) = *(a5 + 160);
  v11 = *(a5 + 80);
  *(v6 + 80) = *(a5 + 64);
  *(v6 + 96) = v11;
  v12 = *(a5 + 112);
  *(v6 + 112) = *(a5 + 96);
  *(v6 + 128) = v12;
  v13 = *(a5 + 16);
  *(v6 + 16) = *a5;
  *(v6 + 32) = v13;
  v14 = *(a5 + 48);
  *(v6 + 48) = *(a5 + 32);
  *(v6 + 64) = v14;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v15 = static MLSActor.shared;
  *(v6 + 1600) = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.XPCClientCoordinator.processIncoming(failureToDecrypt:withGroup:context:), v15, 0);
}

void MLS.XPCClientCoordinator.processIncoming(failureToDecrypt:withGroup:context:)()
{
  *(v0 + 1608) = direct field offset for MLS.XPCClientCoordinator.logger;
  outlined init with copy of MLS.OutgoingEventState?(v0 + 16, v0 + 352, &_s15SecureMessaging3MLSO31IncomingFailureToDecryptContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO31IncomingFailureToDecryptContextVy_10Foundation4DataVGMR);

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  outlined destroy of NSObject?(v0 + 16, &_s15SecureMessaging3MLSO31IncomingFailureToDecryptContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO31IncomingFailureToDecryptContextVy_10Foundation4DataVGMR);
  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 1568);
  if (v3)
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v46 = v6;
    *v5 = 136315394;
    v7 = *(v0 + 16);
    v8 = *(v0 + 24);

    v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v8, &v46);

    *(v5 + 4) = v9;
    *(v5 + 12) = 2080;
    v10 = *(v4 + direct field offset for MLS.XPCClientCoordinator.uniqueClientIdentifier);
    v11 = *(v4 + direct field offset for MLS.XPCClientCoordinator.uniqueClientIdentifier + 8);
    strcpy(v47, "EncryptedRCS.");
    HIWORD(v47[1]) = -4864;

    MEMORY[0x2667545A0](v10, v11);

    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v47[0], v47[1], &v46);

    *(v5 + 14) = v12;
    _os_log_impl(&dword_264F1F000, v1, v2, "XPCClientCoordinator processIncomingFTD { identifier: %s, client: %s }", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v6, -1, -1);
    MEMORY[0x266755550](v5, -1, -1);
  }

  else
  {
  }

  v13 = *(v0 + 1592);
  v14 = *(v0 + 1584);
  v15 = *(v0 + 1576);
  v16 = *(v0 + 1568);
  v43 = *(v0 + 1552);
  v45 = *(v0 + 1560);
  v17 = *(v0 + 96);
  *(v0 + 1384) = *(v0 + 80);
  *(v0 + 1400) = v17;
  *(v0 + 1416) = *(v0 + 112);
  v18 = *(v0 + 32);
  *(v0 + 1320) = *(v0 + 16);
  *(v0 + 1336) = v18;
  v19 = *(v0 + 64);
  *(v0 + 1352) = *(v0 + 48);
  *(v0 + 1368) = v19;
  v20 = *(v0 + 128);
  v21 = *(v0 + 168);
  v22 = *(v0 + 136);
  *(v0 + 1512) = *(v0 + 152);
  *(v0 + 1528) = v21;
  *(v0 + 1496) = v22;
  outlined init with copy of MLS.OutgoingEventState?(v0 + 16, v0 + 520, &_s15SecureMessaging3MLSO31IncomingFailureToDecryptContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO31IncomingFailureToDecryptContextVy_10Foundation4DataVGMR);
  Date.init()();
  v23 = *(v15 + 20);
  v24 = type metadata accessor for Date();
  (*(*(v24 - 8) + 56))(v13 + v23, 1, 1, v24);
  outlined init with take of MetricCollector.Event(v13, v14);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v47[0] = v20;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v14, 0x5864726177726F46, 0xEA00000000004350, isUniquelyReferenced_nonNull_native);
  v26 = v47[0];
  *(v0 + 1616) = v47[0];

  v27 = *(v0 + 1352);
  *(v0 + 232) = *(v0 + 1368);
  v28 = *(v0 + 1400);
  *(v0 + 248) = *(v0 + 1384);
  v29 = *(v0 + 1416);
  *(v0 + 264) = v28;
  *(v0 + 280) = v29;
  v30 = *(v0 + 1336);
  *(v0 + 184) = *(v0 + 1320);
  *(v0 + 200) = v30;
  *(v0 + 216) = v27;
  *(v0 + 296) = v26;
  v31 = *(v0 + 1496);
  v32 = *(v0 + 1528);
  *(v0 + 320) = *(v0 + 1512);
  *(v0 + 336) = v32;
  *(v0 + 304) = v31;
  v33 = *(*(v16 + direct field offset for MLS.XPCClientCoordinator.xpcClient) + OBJC_IVAR____TtCO15SecureMessaging8XPCUtils9XPCClient_deliveryInterface);
  *(v0 + 1624) = v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO40IncomingFailureToDecryptProcessedContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO40IncomingFailureToDecryptProcessedContextVy_10Foundation4DataVGMR);
  v35 = swift_task_alloc();
  *(v0 + 1632) = v35;
  v35[2] = v0 + 1432;
  v35[3] = v0 + 184;
  v35[4] = v16;
  v36 = swift_task_alloc();
  *(v0 + 1640) = v36;
  *(v36 + 16) = v43;
  *(v36 + 24) = v45;
  v37 = *(*v33 + 360);

  v44 = v37 + *v37;
  v38 = swift_task_alloc();
  *(v0 + 1648) = v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataV_A2CtMd, &_s10Foundation4DataV_A2CtMR);
  v40 = lazy protocol witness table accessor for type MLS.KeyPackageRetrievalResult<MLS.AllMember> and conformance MLS.KeyPackageRetrievalResult<A>(&lazy protocol witness table cache variable for type MLS.IncomingFailureToDecryptProcessedContext<Data> and conformance MLS.IncomingFailureToDecryptProcessedContext<A>, &_s15SecureMessaging3MLSO40IncomingFailureToDecryptProcessedContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO40IncomingFailureToDecryptProcessedContextVy_10Foundation4DataVGMR, &protocol conformance descriptor for MLS.IncomingFailureToDecryptProcessedContext<A>);
  v41 = lazy protocol witness table accessor for type MLS.KeyPackageRetrievalResult<MLS.AllMember> and conformance MLS.KeyPackageRetrievalResult<A>(&lazy protocol witness table cache variable for type MLS.IncomingFailureToDecryptProcessedContext<Data> and conformance MLS.IncomingFailureToDecryptProcessedContext<A>, &_s15SecureMessaging3MLSO40IncomingFailureToDecryptProcessedContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO40IncomingFailureToDecryptProcessedContextVy_10Foundation4DataVGMR, &protocol conformance descriptor for MLS.IncomingFailureToDecryptProcessedContext<A>);
  v42 = lazy protocol witness table accessor for type MLS.IncomingMessageError and conformance MLS.IncomingMessageError();
  *v38 = v0;
  v38[1] = MLS.XPCClientCoordinator.processIncoming(failureToDecrypt:withGroup:context:);
  v55 = v41;
  v56 = v42;
  v53 = v39;
  v54 = v40;
  v51 = v34;
  v52 = &type metadata for MLS.IncomingMessageError;
  v49 = partial apply for closure #3 in MLS.XPCClientCoordinator.processIncoming(failureToDecrypt:withGroup:context:);
  v50 = v36;

  __asm { BRAA            X8, X16 }
}

uint64_t MLS.XPCClientCoordinator.processIncoming(failureToDecrypt:withGroup:context:)()
{
  v2 = *v1;
  *(*v1 + 1656) = v0;

  v3 = *(v2 + 1600);

  if (v0)
  {
    v4 = MLS.XPCClientCoordinator.processIncoming(failureToDecrypt:withGroup:context:);
  }

  else
  {
    v4 = MLS.XPCClientCoordinator.processIncoming(failureToDecrypt:withGroup:context:);
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{
  v1 = *(v0 + 1352);
  *(v0 + 1072) = *(v0 + 1368);
  v2 = *(v0 + 1400);
  *(v0 + 1088) = *(v0 + 1384);
  *(v0 + 1104) = v2;
  *(v0 + 1120) = *(v0 + 1416);
  v3 = *(v0 + 1336);
  *(v0 + 1024) = *(v0 + 1320);
  v4 = *(v0 + 1616);
  v5 = *(v0 + 1544);
  *(v0 + 1040) = v3;
  *(v0 + 1056) = v1;
  *(v0 + 1136) = v4;
  v6 = *(v0 + 1528);
  *(v0 + 1160) = *(v0 + 1512);
  *(v0 + 1176) = v6;
  *(v0 + 1144) = *(v0 + 1496);
  outlined destroy of NSObject?(v0 + 1024, &_s15SecureMessaging3MLSO31IncomingFailureToDecryptContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO31IncomingFailureToDecryptContextVy_10Foundation4DataVGMR);
  v7 = *(v0 + 1240);
  v9 = *(v0 + 1192);
  v8 = *(v0 + 1208);
  v5[2] = *(v0 + 1224);
  v5[3] = v7;
  *v5 = v9;
  v5[1] = v8;
  v10 = *(v0 + 1304);
  v12 = *(v0 + 1256);
  v11 = *(v0 + 1272);
  v5[6] = *(v0 + 1288);
  v5[7] = v10;
  v5[4] = v12;
  v5[5] = v11;

  v13 = *(v0 + 8);

  return v13();
}

{
  v27 = v0;
  v1 = *(v0 + 1656);
  v2 = *(v0 + 1616);
  v3 = *(v0 + 1400);
  *(v0 + 752) = *(v0 + 1384);
  *(v0 + 768) = v3;
  *(v0 + 784) = *(v0 + 1416);
  v4 = *(v0 + 1336);
  *(v0 + 688) = *(v0 + 1320);
  *(v0 + 704) = v4;
  v5 = *(v0 + 1368);
  *(v0 + 720) = *(v0 + 1352);
  *(v0 + 736) = v5;
  *(v0 + 800) = v2;
  v6 = *(v0 + 1528);
  *(v0 + 824) = *(v0 + 1512);
  *(v0 + 840) = v6;
  *(v0 + 808) = *(v0 + 1496);
  outlined destroy of NSObject?(v0 + 688, &_s15SecureMessaging3MLSO31IncomingFailureToDecryptContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO31IncomingFailureToDecryptContextVy_10Foundation4DataVGMR);

  outlined init with copy of MLS.OutgoingEventState?(v0 + 16, v0 + 856, &_s15SecureMessaging3MLSO31IncomingFailureToDecryptContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO31IncomingFailureToDecryptContextVy_10Foundation4DataVGMR);

  v7 = v1;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();
  outlined destroy of NSObject?(v0 + 16, &_s15SecureMessaging3MLSO31IncomingFailureToDecryptContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO31IncomingFailureToDecryptContextVy_10Foundation4DataVGMR);

  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 1656);
    v11 = *(v0 + 1568);
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v25 = v14;
    *v12 = 136315650;
    v15 = *(v0 + 16);
    v16 = *(v0 + 24);

    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, &v25);

    *(v12 + 4) = v17;
    *(v12 + 12) = 2112;
    v18 = v10;
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 14) = v19;
    *v13 = v19;
    *(v12 + 22) = 2080;
    v20 = *(v11 + direct field offset for MLS.XPCClientCoordinator.uniqueClientIdentifier);
    v21 = *(v11 + direct field offset for MLS.XPCClientCoordinator.uniqueClientIdentifier + 8);

    strcpy(v26, "EncryptedRCS.");
    HIWORD(v26[1]) = -4864;
    MEMORY[0x2667545A0](v20, v21);

    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26[0], v26[1], &v25);

    *(v12 + 24) = v22;
    _os_log_impl(&dword_264F1F000, v8, v9, "XPCClientCoordinator processIncomingFTD failed { identifier: %s, error: %@, client: %s }", v12, 0x20u);
    outlined destroy of NSObject?(v13, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x266755550](v13, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x266755550](v14, -1, -1);
    MEMORY[0x266755550](v12, -1, -1);
  }

  else
  {
  }

  swift_willThrow();

  v23 = *(v0 + 8);

  return v23();
}

uint64_t closure #1 in MLS.XPCClientCoordinator.processIncoming(failureToDecrypt:withGroup:context:)@<X0>(uint64_t *a4@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO24IncomingFailureToDecryptVy_AC9AllMemberOGMd, &_s15SecureMessaging3MLSO24IncomingFailureToDecryptVy_AC9AllMemberOGMR);
  lazy protocol witness table accessor for type MLS.KeyPackageRetrievalResult<MLS.AllMember> and conformance MLS.KeyPackageRetrievalResult<A>(&lazy protocol witness table cache variable for type MLS.IncomingFailureToDecrypt<MLS.AllMember> and conformance MLS.IncomingFailureToDecrypt<A>, &_s15SecureMessaging3MLSO24IncomingFailureToDecryptVy_AC9AllMemberOGMd, &_s15SecureMessaging3MLSO24IncomingFailureToDecryptVy_AC9AllMemberOGMR, &protocol conformance descriptor for MLS.IncomingFailureToDecrypt<A>);
  result = dispatch thunk of JSONEncoder.encode<A>(_:)();
  if (!v4)
  {
    v8 = result;
    v9 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO31IncomingFailureToDecryptContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO31IncomingFailureToDecryptContextVy_10Foundation4DataVGMR);
    lazy protocol witness table accessor for type MLS.KeyPackageRetrievalResult<MLS.AllMember> and conformance MLS.KeyPackageRetrievalResult<A>(&lazy protocol witness table cache variable for type MLS.IncomingFailureToDecryptContext<Data> and conformance MLS.IncomingFailureToDecryptContext<A>, &_s15SecureMessaging3MLSO31IncomingFailureToDecryptContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO31IncomingFailureToDecryptContextVy_10Foundation4DataVGMR, &protocol conformance descriptor for MLS.IncomingFailureToDecryptContext<A>);
    v10 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    v12 = v11;
    lazy protocol witness table accessor for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier();

    v13 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    v15 = v14;

    *a4 = v13;
    a4[1] = v15;
    a4[2] = v8;
    a4[3] = v9;
    a4[4] = v10;
    a4[5] = v12;
  }

  return result;
}

uint64_t MLS.XPCClientCoordinator.processIncoming(errorMessage:withGroup:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  *(v6 + 96) = a4;
  *(v6 + 104) = v5;
  *(v6 + 80) = a1;
  *(v6 + 88) = a3;
  *(v6 + 112) = type metadata accessor for MetricCollector.Event(0);
  *(v6 + 120) = swift_task_alloc();
  v9 = swift_task_alloc();
  v10 = *(a2 + 16);
  *(v6 + 16) = *a2;
  *(v6 + 32) = v10;
  *(v6 + 48) = *(a2 + 32);
  v11 = *a5;
  *(v6 + 128) = v9;
  *(v6 + 136) = v11;
  *(v6 + 144) = *(a5 + 1);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v12 = static MLSActor.shared;
  *(v6 + 160) = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.XPCClientCoordinator.processIncoming(errorMessage:withGroup:context:), v12, 0);
}

void MLS.XPCClientCoordinator.processIncoming(errorMessage:withGroup:context:)()
{
  v0[21] = direct field offset for MLS.XPCClientCoordinator.logger;

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v4 = v0[17];
    v3 = v0[18];
    v5 = v0[13];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v35 = v7;
    *v6 = 136315394;
    *(v6 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v4, v3, &v35);
    *(v6 + 12) = 2080;
    v8 = *(v5 + direct field offset for MLS.XPCClientCoordinator.uniqueClientIdentifier);
    v9 = *(v5 + direct field offset for MLS.XPCClientCoordinator.uniqueClientIdentifier + 8);
    strcpy(v36, "EncryptedRCS.");
    HIWORD(v36[1]) = -4864;

    MEMORY[0x2667545A0](v8, v9);

    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36[0], v36[1], &v35);

    *(v6 + 14) = v10;
    _os_log_impl(&dword_264F1F000, v1, v2, "XPCClientCoordinator processIncoming errorMessage { identifier: %s, client: %s }", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v7, -1, -1);
    MEMORY[0x266755550](v6, -1, -1);
  }

  else
  {
  }

  v12 = v0[18];
  v11 = v0[19];
  v13 = v0[16];
  v14 = v0[17];
  v16 = v0[14];
  v15 = v0[15];
  v17 = v0[13];
  v34 = v0[12];
  v32 = v0[11];

  Date.init()();
  v18 = *(v16 + 20);
  v19 = type metadata accessor for Date();
  (*(*(v19 - 8) + 56))(v13 + v18, 1, 1, v19);
  outlined init with take of MetricCollector.Event(v13, v15);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v36[0] = v11;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v15, 0x5864726177726F46, 0xEA00000000004350, isUniquelyReferenced_nonNull_native);
  v21 = v36[0];
  v0[22] = v36[0];

  v22 = *(*(v17 + direct field offset for MLS.XPCClientCoordinator.xpcClient) + OBJC_IVAR____TtCO15SecureMessaging8XPCUtils9XPCClient_deliveryInterface);
  v0[23] = v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO36IncomingErrorMessageProcessedContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO36IncomingErrorMessageProcessedContextVy_10Foundation4DataVGMR);
  v24 = swift_task_alloc();
  v0[24] = v24;
  v24[2] = v0 + 2;
  v24[3] = v14;
  v24[4] = v12;
  v24[5] = v21;
  v24[6] = v17;
  v25 = swift_task_alloc();
  v0[25] = v25;
  *(v25 + 16) = v32;
  *(v25 + 24) = v34;
  v26 = *(*v22 + 360);

  v33 = v26 + *v26;
  v27 = swift_task_alloc();
  v0[26] = v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataV_A2CtMd, &_s10Foundation4DataV_A2CtMR);
  v29 = lazy protocol witness table accessor for type MLS.KeyPackageRetrievalResult<MLS.AllMember> and conformance MLS.KeyPackageRetrievalResult<A>(&lazy protocol witness table cache variable for type MLS.IncomingErrorMessageProcessedContext<Data> and conformance MLS.IncomingErrorMessageProcessedContext<A>, &_s15SecureMessaging3MLSO36IncomingErrorMessageProcessedContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO36IncomingErrorMessageProcessedContextVy_10Foundation4DataVGMR, &protocol conformance descriptor for MLS.IncomingErrorMessageProcessedContext<A>);
  v30 = lazy protocol witness table accessor for type MLS.KeyPackageRetrievalResult<MLS.AllMember> and conformance MLS.KeyPackageRetrievalResult<A>(&lazy protocol witness table cache variable for type MLS.IncomingErrorMessageProcessedContext<Data> and conformance MLS.IncomingErrorMessageProcessedContext<A>, &_s15SecureMessaging3MLSO36IncomingErrorMessageProcessedContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO36IncomingErrorMessageProcessedContextVy_10Foundation4DataVGMR, &protocol conformance descriptor for MLS.IncomingErrorMessageProcessedContext<A>);
  v31 = lazy protocol witness table accessor for type MLS.IncomingMessageError and conformance MLS.IncomingMessageError();
  *v27 = v0;
  v27[1] = MLS.XPCClientCoordinator.processIncoming(errorMessage:withGroup:context:);
  v44 = v30;
  v45 = v31;
  v42 = v28;
  v43 = v29;
  v40 = v23;
  v41 = &type metadata for MLS.IncomingMessageError;
  v38 = partial apply for closure #3 in MLS.XPCClientCoordinator.processIncoming(errorMessage:withGroup:context:);
  v39 = v25;

  __asm { BRAA            X8, X16 }
}

uint64_t MLS.XPCClientCoordinator.processIncoming(errorMessage:withGroup:context:)()
{
  v2 = *v1;
  *(*v1 + 216) = v0;

  if (v0)
  {
    v3 = *(v2 + 160);
    v4 = MLS.XPCClientCoordinator.processIncoming(errorMessage:withGroup:context:);
  }

  else
  {
    v5 = *(v2 + 160);

    v4 = MLS.XPCClientCoordinator.processIncoming(errorMessage:withGroup:context:);
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  *v1 = *(v0 + 56);
  *(v1 + 16) = v2;

  v3 = *(v0 + 8);

  return v3();
}

{
  v21 = v0;
  v1 = v0[27];

  swift_retain_n();

  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[27];
    v7 = v0[17];
    v6 = v0[18];
    v8 = v0[13];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v19 = v11;
    *v9 = 136315650;
    *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v6, &v19);
    *(v9 + 12) = 2112;
    v12 = v5;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v13;
    *v10 = v13;
    *(v9 + 22) = 2080;
    v14 = *(v8 + direct field offset for MLS.XPCClientCoordinator.uniqueClientIdentifier);
    v15 = *(v8 + direct field offset for MLS.XPCClientCoordinator.uniqueClientIdentifier + 8);

    strcpy(v20, "EncryptedRCS.");
    HIWORD(v20[1]) = -4864;
    MEMORY[0x2667545A0](v14, v15);

    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20[0], v20[1], &v19);

    *(v9 + 24) = v16;
    _os_log_impl(&dword_264F1F000, v3, v4, "XPCClientCoordinator processIncomingFTD failed { identifier: %s, error: %@, client: %s }", v9, 0x20u);
    outlined destroy of NSObject?(v10, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x266755550](v10, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x266755550](v11, -1, -1);
    MEMORY[0x266755550](v9, -1, -1);
  }

  else
  {
  }

  swift_willThrow();

  v17 = v0[1];

  return v17();
}

uint64_t closure #1 in MLS.XPCClientCoordinator.processIncoming(errorMessage:withGroup:context:)@<X0>(uint64_t *a6@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO20IncomingErrorMessageVy_AC9AllMemberOGMd, &_s15SecureMessaging3MLSO20IncomingErrorMessageVy_AC9AllMemberOGMR);
  lazy protocol witness table accessor for type MLS.KeyPackageRetrievalResult<MLS.AllMember> and conformance MLS.KeyPackageRetrievalResult<A>(&lazy protocol witness table cache variable for type MLS.IncomingErrorMessage<MLS.AllMember> and conformance MLS.IncomingErrorMessage<A>, &_s15SecureMessaging3MLSO20IncomingErrorMessageVy_AC9AllMemberOGMd, &_s15SecureMessaging3MLSO20IncomingErrorMessageVy_AC9AllMemberOGMR, &protocol conformance descriptor for MLS.IncomingErrorMessage<A>);
  result = dispatch thunk of JSONEncoder.encode<A>(_:)();
  if (!v6)
  {
    v18 = a6;
    v10 = result;
    v11 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO27IncomingErrorMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO27IncomingErrorMessageContextVy_10Foundation4DataVGMR);
    lazy protocol witness table accessor for type MLS.KeyPackageRetrievalResult<MLS.AllMember> and conformance MLS.KeyPackageRetrievalResult<A>(&lazy protocol witness table cache variable for type MLS.IncomingErrorMessageContext<Data> and conformance MLS.IncomingErrorMessageContext<A>, &_s15SecureMessaging3MLSO27IncomingErrorMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO27IncomingErrorMessageContextVy_10Foundation4DataVGMR, &protocol conformance descriptor for MLS.IncomingErrorMessageContext<A>);
    v12 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    v14 = v13;
    lazy protocol witness table accessor for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier();

    v15 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    v17 = v16;

    *v18 = v15;
    v18[1] = v17;
    v18[2] = v10;
    v18[3] = v11;
    v18[4] = v12;
    v18[5] = v14;
  }

  return result;
}

uint64_t closure #2 in MLS.XPCClientCoordinator.keyPackage.getter@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t *a3@<X8>)
{
  v6 = type metadata accessor for MLS.XPCRequest(0);
  a3[3] = v6;
  a3[4] = &protocol witness table for MLS.XPCRequest;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy10Foundation4DataVs5Error_pGMd, &_sScCy10Foundation4DataVs5Error_pGMR);
  result = (*(*(v8 - 8) + 16))(boxed_opaque_existential_1, a1, v8);
  *(boxed_opaque_existential_1 + *(v6 + 20)) = a2;
  return result;
}

uint64_t closure #3 in MLS.XPCClientCoordinator.add(members:toGroup:context:)(id *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, SEL *a8)
{
  v23 = *a1;
  v11 = a2[2];
  v12 = a2[3];
  v13 = a2[4];
  v14 = a2[5];
  v27 = *a2;
  v26 = a2[1];
  outlined copy of Data._Representation(*a2, v26);
  v24 = v11;
  outlined copy of Data._Representation(v11, v12);
  outlined copy of Data._Representation(v13, v14);
  isa = Data._bridgeToObjectiveC()().super.isa;
  v16 = Data._bridgeToObjectiveC()().super.isa;
  v17 = MEMORY[0x266754510](a5, a6);
  v18 = Data._bridgeToObjectiveC()().super.isa;
  aBlock[4] = a3;
  aBlock[5] = a4;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Data?, @guaranteed Data?) -> ();
  aBlock[3] = a7;
  v19 = _Block_copy(aBlock);

  [v23 *a8];
  _Block_release(v19);

  outlined consume of Data._Representation(v13, v14);
  outlined consume of Data._Representation(v24, v12);
  return outlined consume of Data._Representation(v27, v26);
}

uint64_t MLS.XPCClientCoordinator.send(event:forGroup:completion:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v45 = a3;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v41 - v14;
  swift_retain_n();
  outlined copy of Data._Representation(a1, a2);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  outlined consume of Data._Representation(a1, a2);
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v43 = v15;
    v19 = v18;
    v20 = swift_slowAlloc();
    v44 = a6;
    v41 = v20;
    v47 = v20;
    *v19 = 136315394;
    v21 = Data.description.getter();
    v23 = a5;
    v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, &v47);

    *(v19 + 4) = v24;
    *(v19 + 12) = 2080;
    v42 = a4;
    v26 = *(v6 + direct field offset for MLS.XPCClientCoordinator.uniqueClientIdentifier);
    v25 = *(v6 + direct field offset for MLS.XPCClientCoordinator.uniqueClientIdentifier + 8);

    strcpy(v46, "EncryptedRCS.");
    HIWORD(v46[1]) = -4864;
    v27 = v26;
    a5 = v23;
    MEMORY[0x2667545A0](v27, v25);

    v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46[0], v46[1], &v47);

    *(v19 + 14) = v28;
    a4 = v42;
    _os_log_impl(&dword_264F1F000, v16, v17, "XPCClientCoordinator sendEvent { eventBlob: %s, client: %s }", v19, 0x16u);
    v29 = v41;
    swift_arrayDestroy();
    a6 = v44;
    MEMORY[0x266755550](v29, -1, -1);
    v30 = v19;
    v15 = v43;
    MEMORY[0x266755550](v30, -1, -1);
  }

  else
  {
  }

  v31 = swift_allocObject();
  v31[2] = a1;
  v31[3] = a2;
  v32 = v45;
  v31[4] = v45;
  v31[5] = a4;
  v33 = swift_allocObject();
  *(v33 + 16) = &async function pointer to partial apply for closure #2 in MLS.XPCClientCoordinator.send(event:forGroup:completion:);
  *(v33 + 24) = v7;
  v34 = type metadata accessor for TaskPriority();
  (*(*(v34 - 8) + 56))(v15, 1, 1, v34);

  outlined copy of Data._Representation(a1, a2);
  outlined copy of Data._Representation(v32, a4);
  v35 = one-time initialization token for shared;

  v36 = v15;
  if (v35 != -1)
  {
    swift_once();
  }

  v37 = static XPCActor.shared;
  v38 = _s15SecureMessaging8XPCActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type XPCActor and conformance XPCActor, type metadata accessor for XPCActor, &protocol conformance descriptor for XPCActor);
  v39 = swift_allocObject();
  v39[2] = v37;
  v39[3] = v38;
  v39[4] = partial apply for closure #1 in MLS.XPCClientCoordinator.send(event:forGroup:completion:);
  v39[5] = v31;
  v39[6] = &async function pointer to partial apply for thunk for @escaping @callee_guaranteed @Sendable @async (@in_guaranteed MLS.OutgoingEventType<MLS.AllMember, Data>, @in_guaranteed MLS.Group) -> (@out MLS.SendResult, @error @owned Error);
  v39[7] = v33;
  v39[8] = a5;
  v39[9] = a6;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v36, &async function pointer to partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:), v39);
}

uint64_t closure #1 in MLS.XPCClientCoordinator.send(event:forGroup:completion:)@<X0>(uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v42 = a4;
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
  lazy protocol witness table accessor for type MLS.KeyPackageRetrievalResult<MLS.AllMember> and conformance MLS.KeyPackageRetrievalResult<A>(&lazy protocol witness table cache variable for type MLS.OutgoingEventType<MLS.AllMember, Data> and conformance MLS.OutgoingEventType<A, B>, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR, &protocol conformance descriptor for MLS.OutgoingEventType<A, B>);
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  if (v5)
  {
  }

  v28 = v40;
  v29 = v41;
  v24 = v34;
  v25 = v35;
  v26 = v36;
  v27 = v37;
  v20 = v30;
  v21 = v31;
  v22 = v32;
  v23 = v33;
  swift_allocObject();
  JSONDecoder.init()();
  lazy protocol witness table accessor for type MLS.Group and conformance MLS.Group();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();

  v8 = v39;
  *(a5 + 128) = v38;
  *(a5 + 144) = v8;
  *(a5 + 160) = v28;
  v9 = v25;
  *(a5 + 64) = v24;
  *(a5 + 80) = v9;
  v10 = v27;
  *(a5 + 96) = v26;
  *(a5 + 112) = v10;
  v11 = v21;
  *a5 = v20;
  *(a5 + 16) = v11;
  v12 = v23;
  *(a5 + 32) = v22;
  *(a5 + 48) = v12;
  *(a5 + 232) = v16;
  *(a5 + 248) = v17;
  *(a5 + 264) = v18;
  *(a5 + 184) = v13;
  *(a5 + 200) = v14;
  *(a5 + 176) = v29;
  *(a5 + 280) = v19;
  *(a5 + 216) = v15;
  return result;
}

uint64_t closure #2 in MLS.XPCClientCoordinator.send(event:forGroup:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 784) = a4;
  *(v4 + 776) = a1;
  v5 = *(a2 + 144);
  *(v4 + 144) = *(a2 + 128);
  *(v4 + 160) = v5;
  *(v4 + 176) = *(a2 + 160);
  *(v4 + 192) = *(a2 + 176);
  v6 = *(a2 + 80);
  *(v4 + 80) = *(a2 + 64);
  *(v4 + 96) = v6;
  v7 = *(a2 + 112);
  *(v4 + 112) = *(a2 + 96);
  *(v4 + 128) = v7;
  v8 = *(a2 + 16);
  *(v4 + 16) = *a2;
  *(v4 + 32) = v8;
  v9 = *(a2 + 48);
  *(v4 + 48) = *(a2 + 32);
  *(v4 + 64) = v9;
  v10 = *(a3 + 80);
  *(v4 + 632) = *(a3 + 64);
  *(v4 + 648) = v10;
  *(v4 + 664) = *(a3 + 96);
  v11 = *(a3 + 16);
  *(v4 + 568) = *a3;
  *(v4 + 584) = v11;
  v12 = *(a3 + 48);
  *(v4 + 600) = *(a3 + 32);
  *(v4 + 616) = v12;
  return MEMORY[0x2822009F8](closure #2 in MLS.XPCClientCoordinator.send(event:forGroup:completion:), 0, 0);
}

uint64_t closure #2 in MLS.XPCClientCoordinator.send(event:forGroup:completion:)()
{
  v29 = v0;

  outlined init with copy of MLS.OutgoingEventState?(v0 + 16, v0 + 200, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  outlined destroy of NSObject?(v0 + 16, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 784);
  if (v3)
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v27 = v6;
    *v5 = 136315394;
    v7 = specialized MLS.OutgoingEventType.identifier.getter();
    v9 = v8;

    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v9, &v27);

    *(v5 + 4) = v10;
    *(v5 + 12) = 2080;
    v11 = *(v4 + direct field offset for MLS.XPCClientCoordinator.uniqueClientIdentifier);
    v12 = *(v4 + direct field offset for MLS.XPCClientCoordinator.uniqueClientIdentifier + 8);
    strcpy(v28, "EncryptedRCS.");
    HIWORD(v28[1]) = -4864;

    MEMORY[0x2667545A0](v11, v12);

    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28[0], v28[1], &v27);

    *(v5 + 14) = v13;
    _os_log_impl(&dword_264F1F000, v1, v2, "XPCClientCoordinator delivering sendEvent { eventIdentifier: %s, client: %s }", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v6, -1, -1);
    MEMORY[0x266755550](v5, -1, -1);
  }

  else
  {
  }

  v14 = *(*(v0 + 784) + 16);
  v15 = *(v0 + 160);
  *(v0 + 512) = *(v0 + 144);
  *(v0 + 528) = v15;
  *(v0 + 544) = *(v0 + 176);
  *(v0 + 560) = *(v0 + 192);
  v16 = *(v0 + 96);
  *(v0 + 448) = *(v0 + 80);
  *(v0 + 464) = v16;
  v17 = *(v0 + 128);
  *(v0 + 480) = *(v0 + 112);
  *(v0 + 496) = v17;
  v18 = *(v0 + 32);
  *(v0 + 384) = *(v0 + 16);
  *(v0 + 400) = v18;
  v19 = *(v0 + 64);
  *(v0 + 416) = *(v0 + 48);
  *(v0 + 432) = v19;
  v20 = *(v0 + 584);
  *(v0 + 672) = *(v0 + 568);
  *(v0 + 688) = v20;
  *(v0 + 768) = *(v0 + 664);
  v21 = *(v0 + 648);
  *(v0 + 736) = *(v0 + 632);
  *(v0 + 752) = v21;
  v22 = *(v0 + 616);
  *(v0 + 704) = *(v0 + 600);
  *(v0 + 720) = v22;
  v26 = (*(*v14 + 224) + **(*v14 + 224));
  v23 = swift_task_alloc();
  *(v0 + 792) = v23;
  *v23 = v0;
  v23[1] = closure #2 in MLS.XPCClientCoordinator.send(event:forGroup:completion:);
  v24 = *(v0 + 776);

  return v26(v24, v0 + 384, v0 + 672);
}

{
  v2 = *v1;
  *(v2 + 800) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](closure #2 in MLS.XPCClientCoordinator.send(event:forGroup:completion:), 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

{
  return (*(v0 + 8))();
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable @async (@in_guaranteed MLS.OutgoingEventType<MLS.AllMember, Data>, @in_guaranteed MLS.Group) -> (@out MLS.SendResult, @error @owned Error)(uint64_t a1, uint64_t a2, int *a3)
{
  v8 = (a3 + *a3);
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v8(a1, a2, a2 + 184);
}

uint64_t MLS.XPCClientCoordinator.receive(event:forGroup:completion:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v45 = a3;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v41 - v14;
  swift_retain_n();
  outlined copy of Data._Representation(a1, a2);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  outlined consume of Data._Representation(a1, a2);
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v43 = v15;
    v19 = v18;
    v20 = swift_slowAlloc();
    v44 = a6;
    v41 = v20;
    v47 = v20;
    *v19 = 136315394;
    v21 = Data.description.getter();
    v23 = a5;
    v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, &v47);

    *(v19 + 4) = v24;
    *(v19 + 12) = 2080;
    v42 = a4;
    v26 = *(v6 + direct field offset for MLS.XPCClientCoordinator.uniqueClientIdentifier);
    v25 = *(v6 + direct field offset for MLS.XPCClientCoordinator.uniqueClientIdentifier + 8);

    strcpy(v46, "EncryptedRCS.");
    HIWORD(v46[1]) = -4864;
    v27 = v26;
    a5 = v23;
    MEMORY[0x2667545A0](v27, v25);

    v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46[0], v46[1], &v47);

    *(v19 + 14) = v28;
    a4 = v42;
    _os_log_impl(&dword_264F1F000, v16, v17, "XPCClientCoordinator receiveEvent { eventBlob: %s, client: %s }", v19, 0x16u);
    v29 = v41;
    swift_arrayDestroy();
    a6 = v44;
    MEMORY[0x266755550](v29, -1, -1);
    v30 = v19;
    v15 = v43;
    MEMORY[0x266755550](v30, -1, -1);
  }

  else
  {
  }

  v31 = swift_allocObject();
  v31[2] = a1;
  v31[3] = a2;
  v32 = v45;
  v31[4] = v45;
  v31[5] = a4;
  v33 = swift_allocObject();
  *(v33 + 16) = &async function pointer to partial apply for closure #2 in MLS.XPCClientCoordinator.receive(event:forGroup:completion:);
  *(v33 + 24) = v7;
  v34 = type metadata accessor for TaskPriority();
  (*(*(v34 - 8) + 56))(v15, 1, 1, v34);

  outlined copy of Data._Representation(a1, a2);
  outlined copy of Data._Representation(v32, a4);
  v35 = one-time initialization token for shared;

  v36 = v15;
  if (v35 != -1)
  {
    swift_once();
  }

  v37 = static XPCActor.shared;
  v38 = _s15SecureMessaging8XPCActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type XPCActor and conformance XPCActor, type metadata accessor for XPCActor, &protocol conformance descriptor for XPCActor);
  v39 = swift_allocObject();
  v39[2] = v37;
  v39[3] = v38;
  v39[4] = partial apply for closure #1 in MLS.XPCClientCoordinator.receive(event:forGroup:completion:);
  v39[5] = v31;
  v39[6] = &async function pointer to partial apply for thunk for @escaping @callee_guaranteed @Sendable @async (@in_guaranteed MLS.IncomingEventType<MLS.AllMember, Data>, @in_guaranteed MLS.Group) -> (@out MLS.ReceiveResult, @error @owned Error);
  v39[7] = v33;
  v39[8] = a5;
  v39[9] = a6;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v36, &async function pointer to partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:), v39);
}

uint64_t closure #1 in MLS.XPCClientCoordinator.receive(event:forGroup:completion:)@<X0>(uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v30 = a4;
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
  lazy protocol witness table accessor for type MLS.KeyPackageRetrievalResult<MLS.AllMember> and conformance MLS.KeyPackageRetrievalResult<A>(&lazy protocol witness table cache variable for type MLS.IncomingEventType<MLS.AllMember, Data> and conformance MLS.IncomingEventType<A, B>, &_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR, &protocol conformance descriptor for MLS.IncomingEventType<A, B>);
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  if (v5)
  {
  }

  v22 = v29;
  v18 = v23;
  v19 = v24;
  v20 = v25;
  v21 = v26;
  swift_allocObject();
  JSONDecoder.init()();
  lazy protocol witness table accessor for type MLS.Group and conformance MLS.Group();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();

  v8 = v28;
  *(a5 + 64) = v27;
  *(a5 + 80) = v8;
  *(a5 + 96) = v22;
  v9 = v19;
  *a5 = v18;
  *(a5 + 16) = v9;
  v10 = v21;
  *(a5 + 32) = v20;
  *(a5 + 48) = v10;
  *(a5 + 104) = v11;
  *(a5 + 120) = v12;
  *(a5 + 136) = v13;
  *(a5 + 200) = v17;
  *(a5 + 184) = v16;
  *(a5 + 168) = v15;
  *(a5 + 152) = v14;
  return result;
}

uint64_t closure #2 in MLS.XPCClientCoordinator.receive(event:forGroup:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 544) = a4;
  *(v4 + 536) = a1;
  v5 = *(a2 + 80);
  *(v4 + 288) = *(a2 + 64);
  *(v4 + 304) = v5;
  *(v4 + 320) = *(a2 + 96);
  v6 = *(a2 + 16);
  *(v4 + 224) = *a2;
  *(v4 + 240) = v6;
  v7 = *(a2 + 48);
  *(v4 + 256) = *(a2 + 32);
  *(v4 + 272) = v7;
  v8 = *(a3 + 16);
  *(v4 + 16) = *a3;
  *(v4 + 32) = v8;
  v9 = *(a3 + 32);
  v10 = *(a3 + 48);
  v11 = *(a3 + 64);
  v12 = *(a3 + 80);
  *(v4 + 112) = *(a3 + 96);
  *(v4 + 80) = v11;
  *(v4 + 96) = v12;
  *(v4 + 48) = v9;
  *(v4 + 64) = v10;
  return MEMORY[0x2822009F8](closure #2 in MLS.XPCClientCoordinator.receive(event:forGroup:completion:), 0, 0);
}

uint64_t closure #2 in MLS.XPCClientCoordinator.receive(event:forGroup:completion:)()
{
  v28 = v0;

  outlined init with copy of MLS.OutgoingEventState?(v0 + 224, v0 + 328, &_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  outlined destroy of NSObject?(v0 + 224, &_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 544);
  if (v3)
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v26 = v6;
    *v5 = 136315394;
    v7 = specialized MLS.IncomingEventType.identifier.getter();
    v9 = v8;

    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v9, &v26);

    *(v5 + 4) = v10;
    *(v5 + 12) = 2080;
    v11 = *(v4 + direct field offset for MLS.XPCClientCoordinator.uniqueClientIdentifier);
    v12 = *(v4 + direct field offset for MLS.XPCClientCoordinator.uniqueClientIdentifier + 8);
    strcpy(v27, "EncryptedRCS.");
    HIWORD(v27[1]) = -4864;

    MEMORY[0x2667545A0](v11, v12);

    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27[0], v27[1], &v26);

    *(v5 + 14) = v13;
    _os_log_impl(&dword_264F1F000, v1, v2, "XPCClientCoordinator delivering receiveEvent { eventIdentifier: %s, client: %s }", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v6, -1, -1);
    MEMORY[0x266755550](v5, -1, -1);
  }

  else
  {
  }

  v14 = *(*(v0 + 544) + 16);
  v15 = *(v0 + 304);
  *(v0 + 496) = *(v0 + 288);
  *(v0 + 512) = v15;
  *(v0 + 528) = *(v0 + 320);
  v16 = *(v0 + 240);
  *(v0 + 432) = *(v0 + 224);
  *(v0 + 448) = v16;
  v17 = *(v0 + 272);
  *(v0 + 464) = *(v0 + 256);
  *(v0 + 480) = v17;
  v18 = *(v0 + 64);
  *(v0 + 152) = *(v0 + 48);
  v19 = *(v0 + 16);
  *(v0 + 136) = *(v0 + 32);
  *(v0 + 120) = v19;
  v20 = *(v0 + 80);
  v21 = *(v0 + 96);
  *(v0 + 216) = *(v0 + 112);
  *(v0 + 200) = v21;
  *(v0 + 184) = v20;
  *(v0 + 168) = v18;
  v25 = (*(*v14 + 232) + **(*v14 + 232));
  v22 = swift_task_alloc();
  *(v0 + 552) = v22;
  *v22 = v0;
  v22[1] = closure #2 in MLS.XPCClientCoordinator.receive(event:forGroup:completion:);
  v23 = *(v0 + 536);

  return v25(v23, v0 + 432, v0 + 120);
}

{
  v2 = *v1;
  *(v2 + 560) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](closure #2 in MLS.XPCClientCoordinator.receive(event:forGroup:completion:), 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

{
  return (*(v0 + 8))();
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable @async (@in_guaranteed MLS.IncomingEventType<MLS.AllMember, Data>, @in_guaranteed MLS.Group) -> (@out MLS.ReceiveResult, @error @owned Error)(uint64_t a1, uint64_t a2, int *a3)
{
  v8 = (a3 + *a3);
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v8(a1, a2, a2 + 104);
}

uint64_t @objc MLS.XPCClientCoordinator.send(event:forGroup:completion:)(uint64_t a1, int a2, void *a3, void *a4, void *aBlock, uint64_t a6, uint64_t a7, void (*a8)(uint64_t, unint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v12 = _Block_copy(aBlock);
  v13 = a3;
  v14 = a4;

  v15 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;

  v18 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;

  v21 = swift_allocObject();
  *(v21 + 16) = v12;
  a8(v15, v17, v18, v20, a7, v21);

  outlined consume of Data._Representation(v18, v20);
  outlined consume of Data._Representation(v15, v17);
}

uint64_t closure #1 in MLS.XPCClientCoordinator.fetchGroupRecoveryInfo(group:context:completion:)@<X0>(uint64_t a3@<X8>)
{
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  lazy protocol witness table accessor for type MLS.Group and conformance MLS.Group();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  if (v3)
  {
  }

  v14 = v21;
  v10 = v15;
  v11 = v16;
  v12 = v17;
  v13 = v18;
  swift_allocObject();
  JSONDecoder.init()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO29FetchGroupRecoveryInfoContextVSgMd, &_s15SecureMessaging3MLSO29FetchGroupRecoveryInfoContextVSgMR);
  lazy protocol witness table accessor for type MLS.FetchGroupRecoveryInfoContext? and conformance <A> A?();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();

  v6 = v20;
  *(a3 + 64) = v19;
  *(a3 + 80) = v6;
  *(a3 + 96) = v14;
  v7 = v11;
  *a3 = v10;
  *(a3 + 16) = v7;
  v8 = v13;
  *(a3 + 32) = v12;
  *(a3 + 48) = v8;
  *(a3 + 104) = v9;
  return result;
}

uint64_t closure #2 in MLS.XPCClientCoordinator.fetchGroupRecoveryInfo(group:context:completion:)(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4)
{
  *(v4 + 544) = a4;
  *(v4 + 536) = a1;
  v5 = *(a2 + 80);
  *(v4 + 80) = *(a2 + 64);
  *(v4 + 96) = v5;
  *(v4 + 112) = *(a2 + 96);
  v6 = *(a2 + 16);
  *(v4 + 16) = *a2;
  *(v4 + 32) = v6;
  v7 = *(a2 + 48);
  *(v4 + 48) = *(a2 + 32);
  *(v4 + 64) = v7;
  *(v4 + 569) = *a3;
  return MEMORY[0x2822009F8](closure #2 in MLS.XPCClientCoordinator.fetchGroupRecoveryInfo(group:context:completion:), 0, 0);
}

uint64_t closure #2 in MLS.XPCClientCoordinator.fetchGroupRecoveryInfo(group:context:completion:)()
{
  v36 = v0;
  swift_retain_n();
  outlined init with copy of MLS.Group(v0 + 16, v0 + 120);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  outlined destroy of MLS.Group(v0 + 16);
  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 544);
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v28 = v5;
    *v4 = 136315394;
    v6 = *(v0 + 96);
    v33 = *(v0 + 80);
    v34 = v6;
    v35 = *(v0 + 112);
    v7 = *(v0 + 32);
    v29 = *(v0 + 16);
    v30 = v7;
    v8 = *(v0 + 64);
    v31 = *(v0 + 48);
    v32 = v8;
    outlined init with copy of MLS.Group(v0 + 16, v0 + 432);
    v9 = MLS.Group.description.getter();
    v11 = v10;
    v12 = v34;
    *(v0 + 392) = v33;
    *(v0 + 408) = v12;
    *(v0 + 424) = v35;
    v13 = v30;
    *(v0 + 328) = v29;
    *(v0 + 344) = v13;
    v14 = v32;
    *(v0 + 360) = v31;
    *(v0 + 376) = v14;
    outlined destroy of MLS.Group(v0 + 328);
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v11, &v28);

    *(v4 + 4) = v15;
    *(v4 + 12) = 2080;
    v16 = *(v3 + direct field offset for MLS.XPCClientCoordinator.uniqueClientIdentifier);
    v17 = *(v3 + direct field offset for MLS.XPCClientCoordinator.uniqueClientIdentifier + 8);

    strcpy(&v29, "EncryptedRCS.");
    HIWORD(v29) = -4864;
    MEMORY[0x2667545A0](v16, v17);

    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, *(&v29 + 1), &v28);

    *(v4 + 14) = v18;
    _os_log_impl(&dword_264F1F000, v1, v2, "XPCClientCoordinator delivering fetchGroupRecoveryInfo { group: %s, client: %s }", v4, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v5, -1, -1);
    MEMORY[0x266755550](v4, -1, -1);
  }

  else
  {
  }

  v19 = *(v0 + 569);
  v20 = *(*(v0 + 544) + 16);
  v21 = *(v0 + 96);
  *(v0 + 288) = *(v0 + 80);
  *(v0 + 304) = v21;
  *(v0 + 320) = *(v0 + 112);
  v22 = *(v0 + 32);
  *(v0 + 224) = *(v0 + 16);
  *(v0 + 240) = v22;
  v23 = *(v0 + 64);
  *(v0 + 256) = *(v0 + 48);
  *(v0 + 272) = v23;
  *(v0 + 568) = v19;
  v27 = (*(*v20 + 240) + **(*v20 + 240));
  v24 = swift_task_alloc();
  *(v0 + 552) = v24;
  *v24 = v0;
  v24[1] = closure #2 in MLS.XPCClientCoordinator.receive(event:forGroup:completion:);
  v25 = *(v0 + 536);

  return v27(v25, v0 + 224, v0 + 568);
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable @async (@in_guaranteed MLS.Group, @in_guaranteed MLS.FetchGroupRecoveryInfoContext?) -> (@out MLS.FetchGroupRecoveryInfoResult, @error @owned Error)(uint64_t a1, uint64_t a2, int *a3)
{
  v8 = (a3 + *a3);
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v8(a1, a2, a2 + 104);
}

uint64_t @objc MLS.XPCClientCoordinator.fetchGroupRecoveryInfo(group:context:completion:)(uint64_t a1, int a2, void *a3, void *a4, void *aBlock)
{
  v7 = _Block_copy(aBlock);
  v8 = a3;
  v9 = a4;

  v10 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  v13 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  v16 = swift_allocObject();
  *(v16 + 16) = v7;
  specialized MLS.XPCClientCoordinator.fetchGroupRecoveryInfo(group:context:completion:)(v10, v12, thunk for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSData?, @unowned NSData?) -> ()partial apply, v16);

  outlined consume of Data._Representation(v13, v15);
  outlined consume of Data._Representation(v10, v12);
}

uint64_t MLS.XPCClientCoordinator.fetchMember(uri:context:completion:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v45 = a3;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v41 - v14;
  swift_retain_n();
  outlined copy of Data._Representation(a1, a2);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  outlined consume of Data._Representation(a1, a2);
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v43 = v15;
    v19 = v18;
    v20 = swift_slowAlloc();
    v44 = a6;
    v41 = v20;
    v47 = v20;
    *v19 = 136315394;
    v21 = Data.description.getter();
    v23 = a5;
    v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, &v47);

    *(v19 + 4) = v24;
    *(v19 + 12) = 2080;
    v42 = a4;
    v26 = *(v6 + direct field offset for MLS.XPCClientCoordinator.uniqueClientIdentifier);
    v25 = *(v6 + direct field offset for MLS.XPCClientCoordinator.uniqueClientIdentifier + 8);

    strcpy(v46, "EncryptedRCS.");
    HIWORD(v46[1]) = -4864;
    v27 = v26;
    a5 = v23;
    MEMORY[0x2667545A0](v27, v25);

    v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46[0], v46[1], &v47);

    *(v19 + 14) = v28;
    a4 = v42;
    _os_log_impl(&dword_264F1F000, v16, v17, "XPCClientCoordinator fetchMember { uriBlob: %s, client: %s }", v19, 0x16u);
    v29 = v41;
    swift_arrayDestroy();
    a6 = v44;
    MEMORY[0x266755550](v29, -1, -1);
    v30 = v19;
    v15 = v43;
    MEMORY[0x266755550](v30, -1, -1);
  }

  else
  {
  }

  v31 = swift_allocObject();
  v31[2] = a1;
  v31[3] = a2;
  v32 = v45;
  v31[4] = v45;
  v31[5] = a4;
  v33 = swift_allocObject();
  *(v33 + 16) = &async function pointer to partial apply for closure #2 in MLS.XPCClientCoordinator.fetchMember(uri:context:completion:);
  *(v33 + 24) = v7;
  v34 = type metadata accessor for TaskPriority();
  (*(*(v34 - 8) + 56))(v15, 1, 1, v34);

  outlined copy of Data._Representation(a1, a2);
  outlined copy of Data._Representation(v32, a4);
  v35 = one-time initialization token for shared;

  v36 = v15;
  if (v35 != -1)
  {
    swift_once();
  }

  v37 = static XPCActor.shared;
  v38 = _s15SecureMessaging8XPCActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type XPCActor and conformance XPCActor, type metadata accessor for XPCActor, &protocol conformance descriptor for XPCActor);
  v39 = swift_allocObject();
  v39[2] = v37;
  v39[3] = v38;
  v39[4] = partial apply for closure #1 in MLS.XPCClientCoordinator.fetchMember(uri:context:completion:);
  v39[5] = v31;
  v39[6] = &async function pointer to partial apply for thunk for @escaping @callee_guaranteed @Sendable @async (@in_guaranteed URI, @in_guaranteed MLS.FetchMemberContext?) -> (@out MLS.FetchMemberResult<MLS.AllMember>, @error @owned Error);
  v39[7] = v33;
  v39[8] = a5;
  v39[9] = a6;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v36, &async function pointer to partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:), v39);
}

uint64_t closure #1 in MLS.XPCClientCoordinator.fetchMember(uri:context:completion:)@<X0>(uint64_t a5@<X8>)
{
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  lazy protocol witness table accessor for type URI and conformance URI();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();

  if (!v5)
  {
    swift_allocObject();
    JSONDecoder.init()();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO18FetchMemberContextVSgMd, &_s15SecureMessaging3MLSO18FetchMemberContextVSgMR);
    lazy protocol witness table accessor for type MLS.FetchMemberContext? and conformance <A> A?();
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();

    *a5 = v8;
    *(a5 + 8) = v9;
    *(a5 + 16) = v8;
  }

  return result;
}

uint64_t closure #2 in MLS.XPCClientCoordinator.fetchMember(uri:context:completion:)(uint64_t a1, void *a2, _BYTE *a3, uint64_t a4)
{
  *(v4 + 32) = a1;
  *(v4 + 40) = a4;
  v5 = a2[1];
  *(v4 + 48) = *a2;
  *(v4 + 56) = v5;
  *(v4 + 81) = *a3;
  return MEMORY[0x2822009F8](closure #2 in MLS.XPCClientCoordinator.fetchMember(uri:context:completion:), 0, 0);
}

uint64_t closure #2 in MLS.XPCClientCoordinator.fetchMember(uri:context:completion:)()
{
  v19 = v0;

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v4 = *(v0 + 48);
    v3 = *(v0 + 56);
    v5 = *(v0 + 40);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v17 = v7;
    *v6 = 136315394;
    *(v6 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v4, v3, &v17);
    *(v6 + 12) = 2080;
    v8 = *(v5 + direct field offset for MLS.XPCClientCoordinator.uniqueClientIdentifier);
    v9 = *(v5 + direct field offset for MLS.XPCClientCoordinator.uniqueClientIdentifier + 8);
    strcpy(v18, "EncryptedRCS.");
    HIWORD(v18[1]) = -4864;

    MEMORY[0x2667545A0](v8, v9);

    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18[0], v18[1], &v17);

    *(v6 + 14) = v10;
    _os_log_impl(&dword_264F1F000, v1, v2, "XPCClientCoordinator delivering fetchMember { uri: %s, client: %s }", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v7, -1, -1);
    MEMORY[0x266755550](v6, -1, -1);
  }

  else
  {
  }

  v11 = *(v0 + 81);
  v12 = *(*(v0 + 40) + 16);
  *(v0 + 16) = *(v0 + 48);
  *(v0 + 24) = *(v0 + 56);
  *(v0 + 80) = v11;
  v16 = (*(*v12 + 248) + **(*v12 + 248));
  v13 = swift_task_alloc();
  *(v0 + 64) = v13;
  *v13 = v0;
  v13[1] = closure #2 in MLS.XPCClientCoordinator.fetchMember(uri:context:completion:);
  v14 = *(v0 + 32);

  return v16(v14, v0 + 16, v0 + 80);
}

{
  v2 = *v1;
  *(v2 + 72) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](closure #1 in MLS.Client.keyPackage.getter, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable @async (@in_guaranteed URI, @in_guaranteed MLS.FetchMemberContext?) -> (@out MLS.FetchMemberResult<MLS.AllMember>, @error @owned Error)(uint64_t a1, uint64_t a2, int *a3)
{
  v8 = (a3 + *a3);
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v8(a1, a2, a2 + 16);
}

uint64_t MLS.XPCClientCoordinator.retrieveKeyPackage(members:context:completion:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v45 = a3;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v41 - v14;
  swift_retain_n();
  outlined copy of Data._Representation(a1, a2);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  outlined consume of Data._Representation(a1, a2);
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v43 = v15;
    v19 = v18;
    v20 = swift_slowAlloc();
    v44 = a6;
    v41 = v20;
    v47 = v20;
    *v19 = 136315394;
    v21 = Data.description.getter();
    v23 = a5;
    v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, &v47);

    *(v19 + 4) = v24;
    *(v19 + 12) = 2080;
    v42 = a4;
    v26 = *(v6 + direct field offset for MLS.XPCClientCoordinator.uniqueClientIdentifier);
    v25 = *(v6 + direct field offset for MLS.XPCClientCoordinator.uniqueClientIdentifier + 8);

    strcpy(v46, "EncryptedRCS.");
    HIWORD(v46[1]) = -4864;
    v27 = v26;
    a5 = v23;
    MEMORY[0x2667545A0](v27, v25);

    v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46[0], v46[1], &v47);

    *(v19 + 14) = v28;
    a4 = v42;
    _os_log_impl(&dword_264F1F000, v16, v17, "XPCClientCoordinator retrieveKeyPackage { membersBlob: %s, client: %s }", v19, 0x16u);
    v29 = v41;
    swift_arrayDestroy();
    a6 = v44;
    MEMORY[0x266755550](v29, -1, -1);
    v30 = v19;
    v15 = v43;
    MEMORY[0x266755550](v30, -1, -1);
  }

  else
  {
  }

  v31 = swift_allocObject();
  v31[2] = a1;
  v31[3] = a2;
  v32 = v45;
  v31[4] = v45;
  v31[5] = a4;
  v33 = swift_allocObject();
  *(v33 + 16) = &async function pointer to partial apply for closure #2 in MLS.XPCClientCoordinator.retrieveKeyPackage(members:context:completion:);
  *(v33 + 24) = v7;
  v34 = type metadata accessor for TaskPriority();
  (*(*(v34 - 8) + 56))(v15, 1, 1, v34);

  outlined copy of Data._Representation(a1, a2);
  outlined copy of Data._Representation(v32, a4);
  v35 = one-time initialization token for shared;

  v36 = v15;
  if (v35 != -1)
  {
    swift_once();
  }

  v37 = static XPCActor.shared;
  v38 = _s15SecureMessaging8XPCActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type XPCActor and conformance XPCActor, type metadata accessor for XPCActor, &protocol conformance descriptor for XPCActor);
  v39 = swift_allocObject();
  v39[2] = v37;
  v39[3] = v38;
  v39[4] = partial apply for closure #1 in MLS.XPCClientCoordinator.retrieveKeyPackage(members:context:completion:);
  v39[5] = v31;
  v39[6] = &async function pointer to partial apply for thunk for @escaping @callee_guaranteed @Sendable @async (@guaranteed [MLS.AllMember], @in_guaranteed MLS.KeyPackageRetrievalContext?) -> (@out MLS.KeyPackageRetrievalResult<MLS.AllMember>, @error @owned Error);
  v39[7] = v33;
  v39[8] = a5;
  v39[9] = a6;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v36, &async function pointer to partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:), v39);
}

uint64_t closure #1 in MLS.XPCClientCoordinator.retrieveKeyPackage(members:context:completion:)@<X0>(uint64_t a5@<X8>)
{
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay15SecureMessaging3MLSO9AllMemberOGMd, &_sSay15SecureMessaging3MLSO9AllMemberOGMR);
  lazy protocol witness table accessor for type [MLS.AllMember] and conformance <A> [A]();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();

  if (!v5)
  {
    swift_allocObject();
    JSONDecoder.init()();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO26KeyPackageRetrievalContextVSgMd, &_s15SecureMessaging3MLSO26KeyPackageRetrievalContextVSgMR);
    lazy protocol witness table accessor for type MLS.KeyPackageRetrievalContext? and conformance <A> A?();
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();

    *a5 = v9;
    *(a5 + 8) = v8;
  }

  return result;
}

uint64_t closure #2 in MLS.XPCClientCoordinator.retrieveKeyPackage(members:context:completion:)(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = a4;
  *(v4 + 16) = a1;
  *(v4 + 57) = *a3;
  return MEMORY[0x2822009F8](closure #2 in MLS.XPCClientCoordinator.retrieveKeyPackage(members:context:completion:), 0, 0);
}

uint64_t closure #2 in MLS.XPCClientCoordinator.retrieveKeyPackage(members:context:completion:)()
{
  v22 = v0;
  swift_retain_n();

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 32);
  if (v3)
  {
    v5 = *(v0 + 24);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v20 = v7;
    *v6 = 136315394;
    v8 = MEMORY[0x266754630](v5, &type metadata for MLS.AllMember);
    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, &v20);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2080;
    v11 = *(v4 + direct field offset for MLS.XPCClientCoordinator.uniqueClientIdentifier);
    v12 = *(v4 + direct field offset for MLS.XPCClientCoordinator.uniqueClientIdentifier + 8);

    strcpy(v21, "EncryptedRCS.");
    HIWORD(v21[1]) = -4864;
    MEMORY[0x2667545A0](v11, v12);

    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21[0], v21[1], &v20);

    *(v6 + 14) = v13;
    _os_log_impl(&dword_264F1F000, v1, v2, "XPCClientCoordinator delivering retrieveKeyPackage { members: %s, client: %s }", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v7, -1, -1);
    MEMORY[0x266755550](v6, -1, -1);
  }

  else
  {
  }

  v14 = *(*(v0 + 32) + 16);
  *(v0 + 56) = *(v0 + 57);
  v19 = (*(*v14 + 256) + **(*v14 + 256));
  v15 = swift_task_alloc();
  *(v0 + 40) = v15;
  *v15 = v0;
  v15[1] = _s15SecureMessaging3MLSO17KeyPackageFetcherC05fetchD8Packages9operation11loadedGroupAE11FetchResultVx_AC0K6LoaderC06LoadedK12AndOperationOtYa9ErrorTypeQzYKAC0kQ0RzlFAC0de9RetrievalM0Vy_AC9AllMemberOGyYaYbKXEfu1_TQ1_;
  v16 = *(v0 + 16);
  v17 = *(v0 + 24);

  return v19(v16, v17, v0 + 56);
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable @async (@guaranteed [MLS.AllMember], @in_guaranteed MLS.KeyPackageRetrievalContext?) -> (@out MLS.KeyPackageRetrievalResult<MLS.AllMember>, @error @owned Error)(uint64_t a1, uint64_t *a2, int *a3)
{
  v5 = a2 + 1;
  v6 = *a2;
  v9 = (a3 + *a3);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v9(a1, v6, v5);
}

uint64_t MLS.XPCClientCoordinator.deinit()
{

  v1 = direct field offset for MLS.XPCClientCoordinator.logger;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  outlined consume of MLS.AllMember(*(v0 + direct field offset for MLS.XPCClientCoordinator.selfMember), *(v0 + direct field offset for MLS.XPCClientCoordinator.selfMember + 8));

  return v0;
}

uint64_t MLS.XPCClientCoordinator.__deallocating_deinit()
{
  MLS.XPCClientCoordinator.deinit();

  return swift_deallocClassInstance();
}

uint64_t protocol witness for MLS.ClientCoordinator.keyPackage.getter in conformance MLS.XPCClientCoordinator<A, B>(uint64_t a1)
{
  v6 = (*(**v1 + 168) + **(**v1 + 168));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v6(a1);
}

uint64_t protocol witness for MLS.ClientCoordinator.createGroup(identifier:otherMembers:context:) in conformance MLS.XPCClientCoordinator<A, B>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = (*(**v5 + 192) + **(**v5 + 192));
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  *v12 = v6;
  v12[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v14(a1, a2, a3, a4, a5);
}

uint64_t protocol witness for MLS.ClientCoordinator.joinGroup(identifier:otherMembers:welcome:context:) in conformance MLS.XPCClientCoordinator<A, B>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v16 = (*(**v6 + 200) + **(**v6 + 200));
  v14 = swift_task_alloc();
  *(v7 + 16) = v14;
  *v14 = v7;
  v14[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v16(a1, a2, a3, a4, a5, a6);
}

uint64_t protocol witness for MLS.ClientCoordinator.delete(group:context:) in conformance MLS.XPCClientCoordinator<A, B>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = (*(**v4 + 208) + **(**v4 + 208));
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v12(a1, a2, a3, a4);
}

uint64_t protocol witness for MLS.ClientCoordinator.group(identifier:context:) in conformance MLS.XPCClientCoordinator<A, B>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = (*(**v4 + 216) + **(**v4 + 216));
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v12(a1, a2, a3, a4);
}

uint64_t protocol witness for MLS.ClientCoordinator.update(groupDetails:forGroup:) in conformance MLS.XPCClientCoordinator<A, B>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(**v3 + 224) + **(**v3 + 224));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v10(a1, a2, a3);
}

uint64_t protocol witness for MLS.ClientCoordinator.otherMembers(group:context:) in conformance MLS.XPCClientCoordinator<A, B>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(**v3 + 232) + **(**v3 + 232));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = protocol witness for MLS.Persister.loadClientIdentifiersWithEvents() in conformance MLS.InMemoryPersister;

  return v10(a1, a2, a3);
}

uint64_t protocol witness for MLS.ClientCoordinator.add(members:toGroup:context:) in conformance MLS.XPCClientCoordinator<A, B>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = (*(**v5 + 240) + **(**v5 + 240));
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  *v12 = v6;
  v12[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v14(a1, a2, a3, a4, a5);
}

uint64_t protocol witness for MLS.ClientCoordinator.kick(members:fromGroup:context:) in conformance MLS.XPCClientCoordinator<A, B>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = (*(**v5 + 248) + **(**v5 + 248));
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  *v12 = v6;
  v12[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v14(a1, a2, a3, a4, a5);
}

uint64_t protocol witness for MLS.ClientCoordinator.leave(group:context:) in conformance MLS.XPCClientCoordinator<A, B>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = (*(**v4 + 256) + **(**v4 + 256));
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v12(a1, a2, a3, a4);
}

uint64_t protocol witness for MLS.ClientCoordinator.downgrade(group:context:) in conformance MLS.XPCClientCoordinator<A, B>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = (*(**v4 + 264) + **(**v4 + 264));
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v12(a1, a2, a3, a4);
}

uint64_t protocol witness for MLS.ClientCoordinator.applicationEncrypt(data:withGroup:context:) in conformance MLS.XPCClientCoordinator<A, B>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v16 = (*(**v6 + 272) + **(**v6 + 272));
  v14 = swift_task_alloc();
  *(v7 + 16) = v14;
  *v14 = v7;
  v14[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v16(a1, a2, a3, a4, a5, a6);
}

uint64_t protocol witness for MLS.ClientCoordinator.applicationEncrypt(groupName:withGroup:context:) in conformance MLS.XPCClientCoordinator<A, B>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v16 = (*(**v6 + 288) + **(**v6 + 288));
  v14 = swift_task_alloc();
  *(v7 + 16) = v14;
  *v14 = v7;
  v14[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v16(a1, a2, a3, a4, a5, a6);
}

uint64_t protocol witness for MLS.ClientCoordinator.applicationSign(input:withGroup:context:) in conformance MLS.XPCClientCoordinator<A, B>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = (*(**v5 + 280) + **(**v5 + 280));
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  *v12 = v6;
  v12[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v14(a1, a2, a3, a4, a5);
}

uint64_t protocol witness for MLS.ClientCoordinator.processIncoming(message:forGroup:context:) in conformance MLS.XPCClientCoordinator<A, B>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = (*(**v5 + 304) + **(**v5 + 304));
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  *v12 = v6;
  v12[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v14(a1, a2, a3, a4, a5);
}

uint64_t protocol witness for MLS.ClientCoordinator.processIncoming(message:context:) in conformance MLS.XPCClientCoordinator<A, B>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(**v3 + 312) + **(**v3 + 312));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v10(a1, a2, a3);
}

uint64_t protocol witness for MLS.ClientCoordinator.processIncoming(failureToDecrypt:withGroup:context:) in conformance MLS.XPCClientCoordinator<A, B>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = (*(**v5 + 320) + **(**v5 + 320));
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  *v12 = v6;
  v12[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v14(a1, a2, a3, a4, a5);
}

uint64_t protocol witness for MLS.ClientCoordinator.processIncoming(errorMessage:withGroup:context:) in conformance MLS.XPCClientCoordinator<A, B>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = (*(**v5 + 328) + **(**v5 + 328));
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  *v12 = v6;
  v12[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v14(a1, a2, a3, a4, a5);
}

uint64_t protocol witness for MLS.ClientCoordinator.processIncoming(groupName:forGroup:context:) in conformance MLS.XPCClientCoordinator<A, B>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v16 = (*(**v6 + 296) + **(**v6 + 296));
  v14 = swift_task_alloc();
  *(v7 + 16) = v14;
  *v14 = v7;
  v14[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v16(a1, a2, a3, a4, a5, a6);
}

Swift::Int MLS.XPCRequest.RequestType.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x266754DE0](a1);
  return Hasher._finalize()();
}

uint64_t MLS.XPCRequest.continuation.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy10Foundation4DataVs5Error_pGMd, &_sScCy10Foundation4DataVs5Error_pGMR);
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t MLS.XPCRequest.resume(returning:)(uint64_t a1, unint64_t a2)
{
  outlined copy of Data._Representation(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy10Foundation4DataVs5Error_pGMd, &_sScCy10Foundation4DataVs5Error_pGMR);
  return CheckedContinuation.resume(returning:)();
}

uint64_t MLS.XPCRequest.resume(throwing:)(void *a1)
{
  v3 = *(v1 + *(type metadata accessor for MLS.XPCRequest(0) + 20));
  if (v3 <= 4)
  {
    if (v3 <= 1)
    {
      if (!v3)
      {
        v15 = a1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
        if (swift_dynamicCast())
        {
          goto LABEL_33;
        }

        lazy protocol witness table accessor for type MLS.ClientCreationError and conformance MLS.ClientCreationError();
        swift_allocError();
        v6 = v16;
        swift_getErrorValue();
        v17 = Error.readableDescription.getter(v36, v37);
        v19 = 4;
LABEL_36:
        *v6 = v19;
        *(v6 + 8) = v17;
        *(v6 + 16) = v18;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy10Foundation4DataVs5Error_pGMd, &_sScCy10Foundation4DataVs5Error_pGMR);
        return CheckedContinuation.resume(throwing:)();
      }

      v28 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      if (swift_dynamicCast())
      {
        goto LABEL_33;
      }

      lazy protocol witness table accessor for type MLS.SelfKeyPackageError and conformance MLS.SelfKeyPackageError();
      swift_allocError();
      v6 = v29;
      swift_getErrorValue();
      v11 = v38;
      v12 = v39;
    }

    else
    {
      if (v3 == 2)
      {
        v20 = a1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
        if (!swift_dynamicCast())
        {
          lazy protocol witness table accessor for type MLS.GroupCreationError and conformance MLS.GroupCreationError();
          swift_allocError();
          v6 = v21;
          swift_getErrorValue();
          v7 = v40;
          v8 = v41;
          goto LABEL_35;
        }

        goto LABEL_33;
      }

      if (v3 != 3)
      {
        v26 = a1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
        if (!swift_dynamicCast())
        {
          lazy protocol witness table accessor for type MLS.GroupOperationError and conformance MLS.GroupOperationError();
          swift_allocError();
          v6 = v27;
          swift_getErrorValue();
          v7 = v44;
          v8 = v45;
          goto LABEL_35;
        }

        goto LABEL_33;
      }

      v9 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      if (swift_dynamicCast())
      {
        goto LABEL_33;
      }

      lazy protocol witness table accessor for type MLS.GroupDeletionError and conformance MLS.GroupDeletionError();
      swift_allocError();
      v6 = v10;
      swift_getErrorValue();
      v11 = v42;
      v12 = v43;
    }

    v17 = Error.readableDescription.getter(v11, v12);
    v19 = 2;
    goto LABEL_36;
  }

  if (v3 > 7)
  {
    if (v3 == 8)
    {
      v24 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      if (!swift_dynamicCast())
      {
        lazy protocol witness table accessor for type MLS.EncryptionError and conformance MLS.EncryptionError();
        swift_allocError();
        v6 = v25;
        swift_getErrorValue();
        v7 = v52;
        v8 = v53;
        goto LABEL_35;
      }
    }

    else if (v3 == 9)
    {
      v13 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      if (!swift_dynamicCast())
      {
        lazy protocol witness table accessor for type MLS.IncomingMessageError and conformance MLS.IncomingMessageError();
        swift_allocError();
        v6 = v14;
        swift_getErrorValue();
        v7 = v54;
        v8 = v55;
        goto LABEL_35;
      }
    }

    else
    {
      v32 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      if (!swift_dynamicCast())
      {
        lazy protocol witness table accessor for type MLS.DowngradeError and conformance MLS.DowngradeError();
        swift_allocError();
        v6 = v34;
        swift_getErrorValue();
        v7 = v56;
        v8 = v57;
        goto LABEL_35;
      }
    }
  }

  else if (v3 == 5)
  {
    v22 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    if (!swift_dynamicCast())
    {
      lazy protocol witness table accessor for type MLS.GroupFetchError and conformance MLS.GroupFetchError();
      swift_allocError();
      v6 = v23;
      swift_getErrorValue();
      v7 = v46;
      v8 = v47;
      goto LABEL_35;
    }
  }

  else if (v3 == 6)
  {
    v4 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    if (!swift_dynamicCast())
    {
      lazy protocol witness table accessor for type MLS.GroupMembersError and conformance MLS.GroupMembersError();
      swift_allocError();
      v6 = v5;
      swift_getErrorValue();
      v7 = v50;
      v8 = v51;
LABEL_35:
      v17 = Error.readableDescription.getter(v7, v8);
      v19 = 1;
      goto LABEL_36;
    }
  }

  else
  {
    v30 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    if (!swift_dynamicCast())
    {
      lazy protocol witness table accessor for type MLS.GroupUpdateError and conformance MLS.GroupUpdateError();
      swift_allocError();
      v6 = v31;
      swift_getErrorValue();
      v7 = v48;
      v8 = v49;
      goto LABEL_35;
    }
  }

LABEL_33:

  v33 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy10Foundation4DataVs5Error_pGMd, &_sScCy10Foundation4DataVs5Error_pGMR);
  return CheckedContinuation.resume(throwing:)();
}

unint64_t lazy protocol witness table accessor for type MLS.UniqueClientIdentifier.CodingKeys and conformance MLS.UniqueClientIdentifier.CodingKeys()
{
  result = lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier.CodingKeys and conformance MLS.UniqueClientIdentifier.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier.CodingKeys and conformance MLS.UniqueClientIdentifier.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier.CodingKeys and conformance MLS.UniqueClientIdentifier.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier.CodingKeys and conformance MLS.UniqueClientIdentifier.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier.CodingKeys and conformance MLS.UniqueClientIdentifier.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier.CodingKeys and conformance MLS.UniqueClientIdentifier.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier.CodingKeys and conformance MLS.UniqueClientIdentifier.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier.CodingKeys and conformance MLS.UniqueClientIdentifier.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier.CodingKeys and conformance MLS.UniqueClientIdentifier.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier.CodingKeys and conformance MLS.UniqueClientIdentifier.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier.CodingKeys and conformance MLS.UniqueClientIdentifier.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier.CodingKeys and conformance MLS.UniqueClientIdentifier.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.ClientIdentifier and conformance MLS.ClientIdentifier()
{
  result = lazy protocol witness table cache variable for type MLS.ClientIdentifier and conformance MLS.ClientIdentifier;
  if (!lazy protocol witness table cache variable for type MLS.ClientIdentifier and conformance MLS.ClientIdentifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.ClientIdentifier and conformance MLS.ClientIdentifier);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.ClientIdentifier and conformance MLS.ClientIdentifier;
  if (!lazy protocol witness table cache variable for type MLS.ClientIdentifier and conformance MLS.ClientIdentifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.ClientIdentifier and conformance MLS.ClientIdentifier);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.ClientIdentifier and conformance MLS.ClientIdentifier;
  if (!lazy protocol witness table cache variable for type MLS.ClientIdentifier and conformance MLS.ClientIdentifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.ClientIdentifier and conformance MLS.ClientIdentifier);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.ClientIdentifier and conformance MLS.ClientIdentifier;
  if (!lazy protocol witness table cache variable for type MLS.ClientIdentifier and conformance MLS.ClientIdentifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.ClientIdentifier and conformance MLS.ClientIdentifier);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.SelfKeyPackageError and conformance MLS.SelfKeyPackageError()
{
  result = lazy protocol witness table cache variable for type MLS.SelfKeyPackageError and conformance MLS.SelfKeyPackageError;
  if (!lazy protocol witness table cache variable for type MLS.SelfKeyPackageError and conformance MLS.SelfKeyPackageError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.SelfKeyPackageError and conformance MLS.SelfKeyPackageError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.SelfKeyPackageError and conformance MLS.SelfKeyPackageError;
  if (!lazy protocol witness table cache variable for type MLS.SelfKeyPackageError and conformance MLS.SelfKeyPackageError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.SelfKeyPackageError and conformance MLS.SelfKeyPackageError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.SelfKeyPackageError and conformance MLS.SelfKeyPackageError;
  if (!lazy protocol witness table cache variable for type MLS.SelfKeyPackageError and conformance MLS.SelfKeyPackageError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.SelfKeyPackageError and conformance MLS.SelfKeyPackageError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.SelfKeyPackageError and conformance MLS.SelfKeyPackageError;
  if (!lazy protocol witness table cache variable for type MLS.SelfKeyPackageError and conformance MLS.SelfKeyPackageError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.SelfKeyPackageError and conformance MLS.SelfKeyPackageError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.SelfKeyPackageError and conformance MLS.SelfKeyPackageError;
  if (!lazy protocol witness table cache variable for type MLS.SelfKeyPackageError and conformance MLS.SelfKeyPackageError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.SelfKeyPackageError and conformance MLS.SelfKeyPackageError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.SelfKeyPackageError and conformance MLS.SelfKeyPackageError;
  if (!lazy protocol witness table cache variable for type MLS.SelfKeyPackageError and conformance MLS.SelfKeyPackageError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.SelfKeyPackageError and conformance MLS.SelfKeyPackageError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.SelfKeyPackageError and conformance MLS.SelfKeyPackageError;
  if (!lazy protocol witness table cache variable for type MLS.SelfKeyPackageError and conformance MLS.SelfKeyPackageError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.SelfKeyPackageError and conformance MLS.SelfKeyPackageError);
  }

  return result;
}

uint64_t type metadata accessor for MLS.XPCRequest(uint64_t a1)
{
  result = type metadata singleton initialization cache for MLS.XPCRequest;
  if (!type metadata singleton initialization cache for MLS.XPCRequest)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26513B210()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_26513B248()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t partial apply for closure #1 in MLS.XPCClientCoordinator.init(clientIdentifier:selfMember:clientEventDeliverer:)()
{
  v2 = *(v0 + 48);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return closure #1 in MLS.XPCClientCoordinator.init(clientIdentifier:selfMember:clientEventDeliverer:)(v2);
}

uint64_t sub_26513B33C()
{

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

unint64_t lazy protocol witness table accessor for type Set<MLS.AllMember> and conformance <> Set<A>()
{
  result = lazy protocol witness table cache variable for type Set<MLS.AllMember> and conformance <> Set<A>;
  if (!lazy protocol witness table cache variable for type Set<MLS.AllMember> and conformance <> Set<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sShy15SecureMessaging3MLSO9AllMemberOGMd, &_sShy15SecureMessaging3MLSO9AllMemberOGMR);
    lazy protocol witness table accessor for type MLS.AllMember and conformance MLS.AllMember();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Set<MLS.AllMember> and conformance <> Set<A>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Set<MLS.AllMember> and conformance <> Set<A>;
  if (!lazy protocol witness table cache variable for type Set<MLS.AllMember> and conformance <> Set<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sShy15SecureMessaging3MLSO9AllMemberOGMd, &_sShy15SecureMessaging3MLSO9AllMemberOGMR);
    lazy protocol witness table accessor for type MLS.AllMember and conformance MLS.AllMember();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Set<MLS.AllMember> and conformance <> Set<A>);
  }

  return result;
}

uint64_t partial apply for closure #2 in MLS.XPCClientCoordinator.send(event:forGroup:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return closure #2 in MLS.XPCClientCoordinator.send(event:forGroup:completion:)(a1, a2, a3, v3);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed @Sendable @async (@in_guaranteed MLS.OutgoingEventType<MLS.AllMember, Data>, @in_guaranteed MLS.Group) -> (@out MLS.SendResult, @error @owned Error)(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return thunk for @escaping @callee_guaranteed @Sendable @async (@in_guaranteed MLS.OutgoingEventType<MLS.AllMember, Data>, @in_guaranteed MLS.Group) -> (@out MLS.SendResult, @error @owned Error)(a1, a2, v6);
}

uint64_t partial apply for closure #2 in MLS.XPCClientCoordinator.receive(event:forGroup:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return closure #2 in MLS.XPCClientCoordinator.receive(event:forGroup:completion:)(a1, a2, a3, v3);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed @Sendable @async (@in_guaranteed MLS.IncomingEventType<MLS.AllMember, Data>, @in_guaranteed MLS.Group) -> (@out MLS.ReceiveResult, @error @owned Error)(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return thunk for @escaping @callee_guaranteed @Sendable @async (@in_guaranteed MLS.IncomingEventType<MLS.AllMember, Data>, @in_guaranteed MLS.Group) -> (@out MLS.ReceiveResult, @error @owned Error)(a1, a2, v6);
}

uint64_t specialized MLS.XPCClientCoordinator.fetchGroupRecoveryInfo(group:context:completion:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v34 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v9 - 8);
  v33 = &v32 - v10;
  swift_retain_n();
  outlined copy of Data._Representation(a1, a2);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  outlined consume of Data._Representation(a1, a2);
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v32 = a4;
    v14 = v13;
    v15 = swift_slowAlloc();
    v36 = v15;
    *v14 = 136315394;
    v16 = Data.description.getter();
    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, &v36);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2080;
    v19 = *(v4 + direct field offset for MLS.XPCClientCoordinator.uniqueClientIdentifier);
    v20 = *(v4 + direct field offset for MLS.XPCClientCoordinator.uniqueClientIdentifier + 8);

    strcpy(v35, "EncryptedRCS.");
    HIWORD(v35[1]) = -4864;
    MEMORY[0x2667545A0](v19, v20);

    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35[0], v35[1], &v36);

    *(v14 + 14) = v21;
    _os_log_impl(&dword_264F1F000, v11, v12, "XPCClientCoordinator fetchGroupRecoveryInfo { groupBlob: %s, client: %s }", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v15, -1, -1);
    v22 = v14;
    a4 = v32;
    MEMORY[0x266755550](v22, -1, -1);
  }

  else
  {
  }

  v23 = swift_allocObject();
  *(v23 + 16) = a1;
  *(v23 + 24) = a2;
  v24 = swift_allocObject();
  *(v24 + 16) = &async function pointer to partial apply for closure #2 in MLS.XPCClientCoordinator.fetchGroupRecoveryInfo(group:context:completion:);
  *(v24 + 24) = v5;
  v25 = type metadata accessor for TaskPriority();
  v26 = v33;
  (*(*(v25 - 8) + 56))(v33, 1, 1, v25);

  outlined copy of Data._Representation(a1, a2);
  v27 = one-time initialization token for shared;

  if (v27 != -1)
  {
    swift_once();
  }

  v28 = static XPCActor.shared;
  v29 = _s15SecureMessaging8XPCActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type XPCActor and conformance XPCActor, type metadata accessor for XPCActor, &protocol conformance descriptor for XPCActor);
  v30 = swift_allocObject();
  v30[2] = v28;
  v30[3] = v29;
  v30[4] = partial apply for closure #1 in MLS.XPCClientCoordinator.fetchGroupRecoveryInfo(group:context:completion:);
  v30[5] = v23;
  v30[6] = &async function pointer to partial apply for thunk for @escaping @callee_guaranteed @Sendable @async (@in_guaranteed MLS.Group, @in_guaranteed MLS.FetchGroupRecoveryInfoContext?) -> (@out MLS.FetchGroupRecoveryInfoResult, @error @owned Error);
  v30[7] = v24;
  v30[8] = v34;
  v30[9] = a4;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v26, &async function pointer to partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:), v30);
}

uint64_t partial apply for closure #2 in MLS.XPCClientCoordinator.fetchMember(uri:context:completion:)(uint64_t a1, void *a2, _BYTE *a3)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return closure #2 in MLS.XPCClientCoordinator.fetchMember(uri:context:completion:)(a1, a2, a3, v3);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed @Sendable @async (@in_guaranteed URI, @in_guaranteed MLS.FetchMemberContext?) -> (@out MLS.FetchMemberResult<MLS.AllMember>, @error @owned Error)(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return thunk for @escaping @callee_guaranteed @Sendable @async (@in_guaranteed URI, @in_guaranteed MLS.FetchMemberContext?) -> (@out MLS.FetchMemberResult<MLS.AllMember>, @error @owned Error)(a1, a2, v6);
}

uint64_t objectdestroy_55Tm()
{
  outlined consume of Data._Representation(*(v0 + 16), *(v0 + 24));
  outlined consume of Data._Representation(*(v0 + 32), *(v0 + 40));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t partial apply for closure #2 in MLS.XPCClientCoordinator.retrieveKeyPackage(members:context:completion:)(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return closure #2 in MLS.XPCClientCoordinator.retrieveKeyPackage(members:context:completion:)(a1, a2, a3, v3);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed @Sendable @async (@guaranteed [MLS.AllMember], @in_guaranteed MLS.KeyPackageRetrievalContext?) -> (@out MLS.KeyPackageRetrievalResult<MLS.AllMember>, @error @owned Error)(uint64_t a1, uint64_t *a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return thunk for @escaping @callee_guaranteed @Sendable @async (@guaranteed [MLS.AllMember], @in_guaranteed MLS.KeyPackageRetrievalContext?) -> (@out MLS.KeyPackageRetrievalResult<MLS.AllMember>, @error @owned Error)(a1, a2, v6);
}

unint64_t lazy protocol witness table accessor for type MLS.XPCRequest.RequestType and conformance MLS.XPCRequest.RequestType()
{
  result = lazy protocol witness table cache variable for type MLS.XPCRequest.RequestType and conformance MLS.XPCRequest.RequestType;
  if (!lazy protocol witness table cache variable for type MLS.XPCRequest.RequestType and conformance MLS.XPCRequest.RequestType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.XPCRequest.RequestType and conformance MLS.XPCRequest.RequestType);
  }

  return result;
}

uint64_t type metadata completion function for MLS.XPCClientCoordinator(uint64_t a1)
{
  result = type metadata accessor for Logger();
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

uint64_t dispatch thunk of MLS.XPCClientCoordinator.keyPackage.getter(uint64_t a1)
{
  v6 = (*(*v1 + 168) + **(*v1 + 168));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v6(a1);
}

uint64_t dispatch thunk of MLS.XPCClientCoordinator.__allocating_init(clientIdentifier:selfMember:clientEventDeliverer:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(v3 + 176) + **(v3 + 176));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = dispatch thunk of MLS.RequiresGroupGroupOperation.membersRequiringKeyPackages(swiftMLSGroup:);

  return v10(a1, a2, a3);
}

uint64_t dispatch thunk of MLS.XPCClientCoordinator.setupXPCConnection()()
{
  v4 = (*(*v0 + 184) + **(*v0 + 184));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v4();
}

uint64_t dispatch thunk of MLS.XPCClientCoordinator.createGroup(identifier:otherMembers:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = (*(*v5 + 192) + **(*v5 + 192));
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  *v12 = v6;
  v12[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v14(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of MLS.XPCClientCoordinator.joinGroup(identifier:otherMembers:welcome:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v16 = (*(*v6 + 200) + **(*v6 + 200));
  v14 = swift_task_alloc();
  *(v7 + 16) = v14;
  *v14 = v7;
  v14[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v16(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of MLS.XPCClientCoordinator.delete(group:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = (*(*v4 + 208) + **(*v4 + 208));
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v12(a1, a2, a3, a4);
}

uint64_t dispatch thunk of MLS.XPCClientCoordinator.group(identifier:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = (*(*v4 + 216) + **(*v4 + 216));
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v12(a1, a2, a3, a4);
}

uint64_t dispatch thunk of MLS.XPCClientCoordinator.update(groupDetails:forGroup:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 224) + **(*v3 + 224));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v10(a1, a2, a3);
}

uint64_t dispatch thunk of MLS.XPCClientCoordinator.otherMembers(group:context:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 232) + **(*v3 + 232));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = dispatch thunk of KDSRegistration.XPCCoordinator.__allocating_init(clientIdentifier:provider:simUniqueID:simLabelID:supportedState:testPhoneNumberURI:);

  return v10(a1, a2, a3);
}