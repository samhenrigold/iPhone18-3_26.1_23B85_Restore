uint64_t MLS.UpdateOtherExpiredKeyPackagesOperation.logger.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 144);
  v4 = type metadata accessor for Logger();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MLS.UpdateOtherExpiredKeyPackagesOperation.clientIdentifier.getter@<X0>(void *a1@<X8>)
{
  v2 = (v1 + *(*v1 + 176));
  v3 = v2[1];
  *a1 = *v2;
  a1[1] = v3;
}

uint64_t outlined init with copy of MLS.KeyPackageProvider(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MLS.KeyPackageProvider(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t MLS.UpdateOtherExpiredKeyPackagesOperation.__allocating_init(group:context:identitiesNeedingUpdate:credentialProvider:eventSender:clientIdentifier:keyPackageProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int128 *a5, uint64_t a6, uint64_t a7, uint64_t *a8, uint64_t a9)
{
  v17 = swift_allocObject();
  MLS.UpdateOtherExpiredKeyPackagesOperation.init(group:context:identitiesNeedingUpdate:credentialProvider:eventSender:clientIdentifier:keyPackageProvider:)(a1, a2, a3, a4, a5, a6, a7, a8, a9);
  return v17;
}

char *MLS.UpdateOtherExpiredKeyPackagesOperation.init(group:context:identitiesNeedingUpdate:credentialProvider:eventSender:clientIdentifier:keyPackageProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int128 *a5, uint64_t a6, uint64_t a7, uint64_t *a8, uint64_t a9)
{
  v16 = *v9;
  v17 = *a8;
  v18 = a8[1];
  Logger.init(subsystem:category:)();
  *(v9 + 2) = a1;
  *(v9 + 3) = a2;
  (*(*(*(v16 + 88) - 8) + 32))(&v9[*(*v9 + 136)], a3);
  *&v9[*(*v9 + 152)] = a4;
  outlined init with take of MLS.KeyUpdatePolicy(a5, &v9[*(*v9 + 160)]);
  v19 = &v9[*(*v9 + 168)];
  *v19 = a6;
  *(v19 + 1) = a7;
  v20 = &v9[*(*v9 + 176)];
  *v20 = v17;
  *(v20 + 1) = v18;
  outlined init with take of MLS.KeyPackageProvider(a9, &v9[*(*v9 + 184)], type metadata accessor for MLS.KeyPackageProvider);
  return v9;
}

uint64_t MLS.UpdateOtherExpiredKeyPackagesOperation.membersRequiringKeyPackages(swiftMLSGroup:)()
{
  v1[3] = v0;
  v2 = *v0;
  v3 = *(*v0 + 104);
  v1[4] = v3;
  v1[5] = *(*(v3 + 8) + 8);
  v4 = *(v2 + 80);
  v1[6] = v4;
  v1[7] = swift_getAssociatedTypeWitness();
  v1[8] = swift_task_alloc();
  v1[9] = *(v4 - 8);
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v5 = static MLSActor.shared;
  v1[13] = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.UpdateOtherExpiredKeyPackagesOperation.membersRequiringKeyPackages(swiftMLSGroup:), v5, 0);
}

{
  v32 = v0;
  v1 = v0[3];
  updated = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy8SwiftMLS0E0O8IdentityO07SigningF0VG_AJ10CredentialOs5NeverOTg50123_s15SecureMessaging3MLSO38UpdateOtherExpiredKeyPackagesOperationC016membersRequiringgH013swiftMLSGroupSayAC9AllMemberOGAC05d26M8Protocol_p_tYaKF0pC0ABO8f3O10h5OAO07G8R0VXEfU_Tf1cn_n(*(v1 + *(*v1 + 152)));
  v3 = (v1 + *(*v1 + 160));
  v4 = v3[3];
  v5 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v4);
  v6 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC8SwiftMLS0C0O8IdentityO10CredentialO_SayAJGTt0g5Tf4g_n(updated);

  v7 = (*(v5 + 8))(v6, v4, v5);

  v8 = *(v7 + 16);
  if (v8)
  {
    v9 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC15SecureMessaging3MLSO9AllMemberO_Tt1g5(*(v7 + 16), 0);
    v10 = specialized Sequence._copySequenceContents(initializing:)(&v31, (v9 + 4), v8, v7);
    result = outlined consume of Set<MLS.UniqueClientIdentifier>.Iterator._Variant(v31);
    if (v10 != v8)
    {
      __break(1u);
      return result;
    }

    v12 = v9[2];
    if (v12)
    {
      goto LABEL_4;
    }
  }

  else
  {

    v9 = MEMORY[0x277D84F90];
    v12 = *(MEMORY[0x277D84F90] + 16);
    if (v12)
    {
LABEL_4:
      v31 = MEMORY[0x277D84F90];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v12, 0);
      v13 = v31;
      v14 = v9 + 7;
      do
      {
        v15 = *(v14 - 3);
        v16 = *(v14 - 2);
        outlined copy of MLS.AllMember(v15, v16);
        if ((swift_task_isCurrentExecutor() & 1) == 0)
        {
          swift_task_reportUnexpectedExecutor();
        }

        v31 = v13;
        v18 = *(v13 + 16);
        v17 = *(v13 + 24);
        if (v18 >= v17 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1);
          v13 = v31;
        }

        v14 += 4;
        *(v13 + 16) = v18 + 1;
        v19 = v13 + 16 * v18;
        *(v19 + 32) = v15;
        *(v19 + 40) = v16;
        --v12;
      }

      while (v12);

      goto LABEL_13;
    }
  }

  v13 = MEMORY[0x277D84F90];
LABEL_13:
  v0[14] = v13;
  v20 = v0[7];
  v21 = v0[8];
  v23 = v0[5];
  v22 = v0[6];
  v24 = v0[3];
  v25 = swift_task_alloc();
  v0[15] = v25;
  *(v25 + 16) = v24;
  *(v25 + 24) = v13;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 32))(v20, AssociatedConformanceWitness);
  VersatileError.init(type:)(v21, v22, v23);
  v27 = swift_task_alloc();
  v0[16] = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay15SecureMessaging3MLSO9AllMemberOGMd, &_sSay15SecureMessaging3MLSO9AllMemberOGMR);
  *v27 = v0;
  v27[1] = MLS.UpdateOtherExpiredKeyPackagesOperation.membersRequiringKeyPackages(swiftMLSGroup:);
  v29 = v0[11];
  v28 = v0[12];
  v30 = v0[6];
  v34 = v0[5];
  v35 = v29;

  return _s15SecureMessaging12asyncRethrow_2as3logq_q_yYaYbKXK_xySSYbcSgtYaxYKAA14VersatileErrorRzr0_lF((v0 + 2), async function pointer to partial apply for implicit closure #1 in MLS.UpdateOtherExpiredKeyPackagesOperation.membersRequiringKeyPackages(swiftMLSGroup:), v25, v28, 0, 0, v30);
}

{
  v2 = *v1;

  if (v0)
  {
    v3 = v2[13];
    v4 = v2[12];
    v5 = v2[9];
    v6 = v2[6];
    v7 = *(v5 + 8);
    v2[17] = v7;
    v2[18] = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v7(v4, v6);

    v8 = MLS.UpdateOtherExpiredKeyPackagesOperation.membersRequiringKeyPackages(swiftMLSGroup:);
    v9 = v3;
  }

  else
  {
    v10 = v2[13];
    (*(v2[9] + 8))(v2[12], v2[6]);

    v8 = MLS.UpdateOtherExpiredKeyPackagesOperation.membersRequiringKeyPackages(swiftMLSGroup:);
    v9 = v10;
  }

  return MEMORY[0x2822009F8](v8, v9, 0);
}

{
  v1 = *(v0 + 16);

  v2 = *(v0 + 8);

  return v2(v1);
}

{
  v1 = *(*(v0 + 72) + 32);
  v1(*(v0 + 80), *(v0 + 88), *(v0 + 48));
  if (_getErrorEmbeddedNSError<A>(_:)())
  {
    (*(v0 + 136))(*(v0 + 80), *(v0 + 48));
  }

  else
  {
    v2 = *(v0 + 80);
    v3 = *(v0 + 48);
    swift_allocError();
    v1(v4, v2, v3);
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t implicit closure #1 in MLS.UpdateOtherExpiredKeyPackagesOperation.membersRequiringKeyPackages(swiftMLSGroup:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](implicit closure #1 in MLS.UpdateOtherExpiredKeyPackagesOperation.membersRequiringKeyPackages(swiftMLSGroup:), 0, 0);
}

uint64_t implicit closure #1 in MLS.UpdateOtherExpiredKeyPackagesOperation.membersRequiringKeyPackages(swiftMLSGroup:)()
{
  v1 = *(v0[3] + *(*v0[3] + 168) + 8);
  ObjectType = swift_getObjectType();
  v6 = (*(v1 + 56) + **(v1 + 56));
  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  v3[1] = implicit closure #1 in MLS.UpdateOtherExpiredKeyPackagesOperation.membersRequiringKeyPackages(swiftMLSGroup:);
  v4 = v0[4];

  return v6(v4, ObjectType, v1);
}

{
  **(v0 + 16) = *(v0 + 48);
  return (*(v0 + 8))();
}

uint64_t implicit closure #1 in MLS.UpdateOtherExpiredKeyPackagesOperation.membersRequiringKeyPackages(swiftMLSGroup:)(uint64_t a1)
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
    *(v4 + 48) = a1;

    return MEMORY[0x2822009F8](implicit closure #1 in MLS.UpdateOtherExpiredKeyPackagesOperation.membersRequiringKeyPackages(swiftMLSGroup:), 0, 0);
  }
}

uint64_t MLS.UpdateOtherExpiredKeyPackagesOperation.perform(on:metricCollector:keyPackageResult:)(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v5[122] = v4;
  v5[121] = a2;
  v5[120] = a1;
  v8 = *v4;
  v5[123] = *v4;
  v9 = *(v8 + 104);
  v5[124] = v9;
  v5[125] = *(*(v9 + 8) + 8);
  v10 = *(v8 + 80);
  v5[126] = v10;
  v5[127] = swift_getAssociatedTypeWitness();
  v5[128] = swift_task_alloc();
  v5[129] = *(v10 - 8);
  v5[130] = swift_task_alloc();
  v5[131] = swift_task_alloc();
  v5[132] = swift_task_alloc();
  v5[133] = swift_task_alloc();
  v11 = type metadata accessor for MLS.Group.Group.ReplaceExpiredCredentialInput();
  v5[134] = v11;
  v5[135] = *(v11 - 8);
  v5[136] = swift_task_alloc();
  v5[137] = type metadata accessor for MetricCollector.Event(0);
  v5[138] = swift_task_alloc();
  v5[139] = swift_task_alloc();
  v5[140] = *a3;
  v5[141] = *a4;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v12 = static MLSActor.shared;
  v5[142] = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.UpdateOtherExpiredKeyPackagesOperation.perform(on:metricCollector:keyPackageResult:), v12, 0);
}

uint64_t MLS.UpdateOtherExpiredKeyPackagesOperation.perform(on:metricCollector:keyPackageResult:)()
{
  v1 = v0[140];
  v2 = v0[139];
  v19 = v0[138];
  v20 = v0[141];
  v18 = v0[137];
  v3 = v0[123];
  v4 = v0[122];
  v5 = v0[121];
  v0[143] = *(*v4 + 136);
  v6 = *(v3 + 112);
  v0[144] = v6;
  v7 = *(v6 + 16);
  v8 = *(v3 + 88);
  v0[145] = v8;

  v0[146] = v7(v8, v6);
  v0[147] = v9;
  Date.init()();
  v10 = *(v18 + 20);
  v11 = type metadata accessor for Date();
  (*(*(v11 - 8) + 56))(v2 + v10, 1, 1, v11);
  outlined init with take of MLS.KeyPackageProvider(v2, v19, type metadata accessor for MetricCollector.Event);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v19, 0x534C4D7466697753, 0xEE0074696D6D6F43, isUniquelyReferenced_nonNull_native);

  v0[117] = v1;
  v13 = v5[3];
  v0[148] = v13;
  v0[149] = v5[4];
  v0[150] = __swift_project_boxed_opaque_existential_1(v5, v13);
  v0[118] = v20;
  v14 = (v4 + *(*v4 + 176));
  v15 = v14[1];
  v0[111] = *v14;
  v0[112] = v15;

  v16 = swift_task_alloc();
  v0[151] = v16;
  *v16 = v0;
  v16[1] = MLS.UpdateOtherExpiredKeyPackagesOperation.perform(on:metricCollector:keyPackageResult:);

  return MLS.KeyPackageProvider.keyPackage(isWithinPersisterTransaction:)((v0 + 113), 1);
}

{
  v2 = *v1;
  *(v2 + 1216) = v0;

  if (v0)
  {
    v3 = *(v2 + 1136);

    return MEMORY[0x2822009F8](MLS.UpdateOtherExpiredKeyPackagesOperation.perform(on:metricCollector:keyPackageResult:), v3, 0);
  }

  else
  {
    v4 = *(v2 + 912);
    *(v2 + 920) = *(v2 + 904);
    *(v2 + 928) = v4;
    v5 = swift_task_alloc();
    *(v2 + 1224) = v5;
    v6 = lazy protocol witness table accessor for type MLS.AllMember and conformance MLS.AllMember();
    *v5 = v2;
    v5[1] = MLS.UpdateOtherExpiredKeyPackagesOperation.perform(on:metricCollector:keyPackageResult:);
    v7 = *(v2 + 1192);
    v8 = *(v2 + 1184);

    return MLS.SwiftMLSGroupProtocol.expiredCredentialReplacements<A>(keyPackageResult:selfURI:selfKeyPackage:)((v2 + 944), (v2 + 888), (v2 + 920), v8, &type metadata for MLS.AllMember, v7, v6);
  }
}

{
  v1 = v0[154];
  v2 = v0[121];
  v3 = v2[3];
  v4 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v3);
  MLS.Group.Group.ReplaceExpiredCredentialInput.init(replacements:)();
  if (v1)
  {

    v5 = v0[1];

    return v5();
  }

  else
  {
    v9 = (*(v4 + 216) + **(v4 + 216));
    v7 = swift_task_alloc();
    v0[156] = v7;
    *v7 = v0;
    v7[1] = MLS.UpdateOtherExpiredKeyPackagesOperation.perform(on:metricCollector:keyPackageResult:);
    v8 = v0[136];

    return v9(v0 + 98, v8, v3, v4);
  }
}

{
  v2 = *v1;
  *(*v1 + 1256) = v0;

  if (v0)
  {
    v3 = v2[142];
    (*(v2[135] + 8))(v2[136], v2[134]);

    v4 = MLS.UpdateOtherExpiredKeyPackagesOperation.perform(on:metricCollector:keyPackageResult:);
    v5 = v3;
  }

  else
  {
    v6 = v2[142];
    (*(v2[135] + 8))(v2[136], v2[134]);
    v4 = MLS.UpdateOtherExpiredKeyPackagesOperation.perform(on:metricCollector:keyPackageResult:);
    v5 = v6;
  }

  return MEMORY[0x2822009F8](v4, v5, 0);
}

{
  v131 = v0;
  v1 = *(v0 + 808);
  v2 = *(v0 + 816);
  __swift_project_boxed_opaque_existential_1((v0 + 784), v1);
  (*(v2 + 8))(v1, v2);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 784));
  v3._countAndFlagsBits = 0x534C4D7466697753;
  v3._object = 0xEE0074696D6D6F43;
  MetricCollector.end(label:)(v3);
  outlined init with copy of ServerBag.MLS(v0 + 744, v0 + 824);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 1176);
    v7 = *(v0 + 1168);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v125 = v9;
    *v8 = 136315394;
    *(v8 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v6, &v125);
    *(v8 + 12) = 2080;
    v10 = *(v0 + 848);
    __swift_project_boxed_opaque_existential_1((v0 + 824), v10);
    v11 = *(v10 - 8);
    swift_task_alloc();
    (*(v11 + 16))();
    v12 = String.init<A>(describing:)();
    v14 = v13;

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 824));
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v14, &v125);

    *(v8 + 14) = v15;
    _os_log_impl(&dword_264F1F000, v4, v5, "UpdateExpiredKeyPackageOperation generated commit for key package updates  { identifier: %s, commitOutput: %s }", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v9, -1, -1);
    MEMORY[0x266755550](v8, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 824));
  }

  v16 = *(v0 + 1128);
  v17 = *(v16 + 16);
  if (v17)
  {
    v123 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC15SecureMessaging3MLSO9AllMemberO_Tt1g5(v17, 0);
    v18 = specialized Sequence._copySequenceContents(initializing:)(&v125, (v123 + 4), v17, v16);
    v19 = v125;

    result = outlined consume of Set<MLS.UniqueClientIdentifier>.Iterator._Variant(v19);
    if (v18 != v17)
    {
      __break(1u);
      return result;
    }
  }

  else
  {
    v123 = MEMORY[0x277D84F90];
  }

  v21 = *(v0 + 768);
  v22 = *(v0 + 776);
  __swift_project_boxed_opaque_existential_1((v0 + 744), v21);

  MLS.SwiftMLSCommitOutputProtocol.outgoingCommit.getter(v21, v22, &v125);
  v23 = v125;
  v120 = v126;
  *(v0 + 1264) = v126;
  v24 = v128;
  v119 = v127;
  *(v0 + 1272) = v127;
  *(v0 + 1280) = v24;
  v25 = *(v0 + 768);
  v26 = *(v0 + 776);
  __swift_project_boxed_opaque_existential_1((v0 + 744), v25);
  MLS.SwiftMLSCommitOutputProtocol.outgoingWelcome.getter(v25, v26, &v125);
  v27 = v125;
  v28 = v126;
  *(v0 + 1288) = v125;
  *(v0 + 1296) = v28;
  v30 = v127;
  v29 = v128;
  *(v0 + 1304) = v127;
  *(v0 + 1312) = v29;
  if (!v28)
  {

    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.error.getter();

    v51 = os_log_type_enabled(v49, v50);
    v52 = *(v0 + 1176);
    v53 = v24;
    if (v51)
    {
      v54 = *(v0 + 1168);
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v125 = v56;
      *v55 = 136315138;
      v57 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v54, v52, &v125);

      *(v55 + 4) = v57;
      _os_log_impl(&dword_264F1F000, v49, v50, "UpdateExpiredKeyPackageOperation missing welcome message { identifier: %s }", v55, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v56);
      MEMORY[0x266755550](v56, -1, -1);
      MEMORY[0x266755550](v55, -1, -1);
    }

    else
    {
    }

    v93 = *(v0 + 1024);
    v94 = *(v0 + 1016);
    v95 = *(v0 + 1008);
    v96 = *(v0 + 1000);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    (*(AssociatedConformanceWitness + 64))(v94, AssociatedConformanceWitness);
    VersatileError.init(type:)(v93, v95, v96);
    v98 = _getErrorEmbeddedNSError<A>(_:)();
    v99 = *(v0 + 1048);
    v100 = *(v0 + 1032);
    if (v98)
    {
      (*(v100 + 8))(*(v0 + 1048), *(v0 + 1008));
    }

    else
    {
      v101 = *(v0 + 1008);
      swift_allocError();
      (*(v100 + 32))(v102, v99, v101);
    }

    swift_willThrow();

    outlined consume of Data._Representation(v119, v53);
    goto LABEL_23;
  }

  v118 = v23;
  v31 = *(v0 + 1256);
  v32 = *(v0 + 1160);
  v33 = *(v0 + 1152);
  v34 = *(v0 + 1008);
  v35 = *(v0 + 992);
  v36 = *(v0 + 984);
  *(v0 + 952) = *(v0 + 976);
  v37 = *(v36 + 96);
  v38 = *(v36 + 120);
  *(v0 + 696) = v34;
  *(v0 + 704) = v32;
  *(v0 + 712) = v37;
  *(v0 + 720) = v35;
  *(v0 + 728) = v33;
  *(v0 + 736) = v38;
  updated = type metadata accessor for MLS.UpdateOtherExpiredKeyPackagesOperation(0, v0 + 696);
  WitnessTable = swift_getWitnessTable();
  MLS.GroupOperation.context(commitOutput:)((v0 + 744), updated, WitnessTable, &v125);
  v41 = v31;
  v42 = v125;
  v43 = v126;
  *(v0 + 1320) = v125;
  *(v0 + 1328) = v43;
  v44 = v127;
  v45 = v128;
  *(v0 + 1336) = v127;
  *(v0 + 1344) = v45;
  v46 = v129;
  v47 = v130;
  *(v0 + 1352) = v129;
  *(v0 + 1360) = v47;
  v48 = *(v0 + 1176);
  if (v41)
  {

    outlined consume of Data._Representation(v119, v24);
    outlined consume of MLS.OutgoingMessage?(v27, v28, v30, v29);

LABEL_23:
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 744));

    v103 = *(v0 + 8);

    return v103();
  }

  v117 = *(v0 + 1168);
  v113 = *(v0 + 1160);
  v111 = v46;
  v112 = *(v0 + 1152);
  v114 = *(v0 + 1128);
  v107 = v45;
  v108 = v42;
  v109 = v47;
  v110 = v44;
  v106 = v43;
  v58 = objc_allocWithZone(MEMORY[0x277CCAD78]);

  v59 = [v58 init];
  v60 = [v59 UUIDString];

  v61 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v115 = v62;
  v116 = v61;

  v105 = *(v0 + 936);

  outlined copy of Data._Representation(v119, v24);
  outlined copy of MLS.OutgoingMessage?(v27, v28, v30, v29);

  v104 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC15SecureMessaging3MLSO9AllMemberO_SayAHGTt0g5Tf4g_n(v63);

  *(v0 + 200) = v117;
  *(v0 + 208) = v48;
  *(v0 + 216) = v116;
  *(v0 + 224) = v115;
  *(v0 + 232) = xmmword_2651B5F50;
  *(v0 + 248) = v105;
  *(v0 + 256) = v118;
  *(v0 + 264) = v120;
  *(v0 + 272) = v119;
  *(v0 + 280) = v24;
  *(v0 + 288) = v27;
  *(v0 + 296) = v28;
  *(v0 + 304) = v30;
  *(v0 + 312) = v29;
  *(v0 + 320) = v104;
  *(v0 + 328) = v108;
  *(v0 + 336) = v106;
  *(v0 + 344) = v110;
  *(v0 + 352) = v107;
  *(v0 + 360) = v111;
  *(v0 + 368) = v109;
  v64 = *(v0 + 280);
  *(v0 + 80) = *(v0 + 264);
  *(v0 + 96) = v64;
  v65 = *(v0 + 200);
  v66 = *(v0 + 216);
  v67 = *(v0 + 248);
  *(v0 + 48) = *(v0 + 232);
  *(v0 + 64) = v67;
  *(v0 + 16) = v65;
  *(v0 + 32) = v66;
  v68 = *(v0 + 296);
  v69 = *(v0 + 312);
  v70 = *(v0 + 360);
  *(v0 + 160) = *(v0 + 344);
  *(v0 + 176) = v70;
  v71 = *(v0 + 328);
  *(v0 + 128) = v69;
  *(v0 + 144) = v71;
  *(v0 + 112) = v68;
  _s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGWOi12_(v0 + 16);
  v121 = *(v112 + 8);
  outlined copy of Data._Representation(v108, v106);
  outlined copy of Data?(v110, v107);
  outlined copy of Data._Representation(v111, v109);
  outlined init with copy of MLS.OutgoingEventState?(v0 + 200, v0 + 376, &_s15SecureMessaging3MLSO33OutgoingReplaceExpiredCredentialsVy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO33OutgoingReplaceExpiredCredentialsVy_AC9AllMemberO10Foundation4DataVGMR);

  v72 = v121(v113, v112);
  *(v0 + 552) = v116;
  *(v0 + 560) = v115;
  *(v0 + 568) = v114;
  *(v0 + 576) = v123;
  *(v0 + 584) = 7;
  *(v0 + 592) = v117;
  *(v0 + 600) = v48;
  *(v0 + 608) = v72;
  *(v0 + 616) = v73;

  v74 = Logger.logObject.getter();
  v75 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v74, v75))
  {
    v76 = *(v0 + 1176);
    v77 = *(v0 + 1168);
    v78 = swift_slowAlloc();
    v79 = swift_slowAlloc();
    v125 = v79;
    *v78 = 136315138;
    *(v78 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v77, v76, &v125);
    _os_log_impl(&dword_264F1F000, v74, v75, "UpdateExpiredKeyPackageOperation returning operation result { identifier: %s }", v78, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v79);
    MEMORY[0x266755550](v79, -1, -1);
    MEMORY[0x266755550](v78, -1, -1);
  }

  v122 = *(v0 + 1168);
  v124 = *(v0 + 1176);
  v80 = *(v0 + 1024);
  v81 = *(v0 + 1016);
  v82 = *(v0 + 1008);
  v83 = *(v0 + 1000);
  v84 = *(v0 + 976);
  v85 = *(v0 + 968);
  v86 = swift_task_alloc();
  *(v0 + 1368) = v86;
  *(v86 + 16) = v85;
  v87 = swift_getAssociatedConformanceWitness();
  (*(v87 + 56))(v81, v87);
  VersatileError.init(type:)(v80, v82, v83);
  v88 = swift_allocObject();
  *(v0 + 1376) = v88;
  v88[2] = v84;
  v88[3] = v122;
  v88[4] = v124;

  v89 = swift_task_alloc();
  *(v0 + 1384) = v89;
  *v89 = v0;
  v89[1] = MLS.UpdateOtherExpiredKeyPackagesOperation.perform(on:metricCollector:keyPackageResult:);
  v90 = *(v0 + 1064);
  v91 = *(v0 + 1056);
  v92 = *(v0 + 1008);
  v133 = *(v0 + 1000);
  v134 = v91;

  return _s15SecureMessaging12asyncRethrow_2as3logq_q_yYaYbKXK_xySSYbcSgtYaxYKAA14VersatileErrorRzr0_lF(v0 + 864, &async function pointer to partial apply for implicit closure #5 in MLS.UpdateOtherExpiredKeyPackagesOperation.perform(on:metricCollector:keyPackageResult:), v86, v90, partial apply for closure #1 in MLS.UpdateOtherExpiredKeyPackagesOperation.perform(on:metricCollector:keyPackageResult:), v88, v92);
}

{
  v2 = *v1;

  v3 = v2[142];
  if (v0)
  {
    v4 = v2[133];
    v5 = v2[129];
    v6 = v2[126];
    v7 = *(v5 + 8);
    v2[174] = v7;
    v2[175] = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v7(v4, v6);

    v8 = MLS.UpdateOtherExpiredKeyPackagesOperation.perform(on:metricCollector:keyPackageResult:);
  }

  else
  {
    (*(v2[129] + 8))(v2[133], v2[126]);

    v8 = MLS.UpdateOtherExpiredKeyPackagesOperation.perform(on:metricCollector:keyPackageResult:);
  }

  return MEMORY[0x2822009F8](v8, v3, 0);
}

{
  v1 = *(v0 + 1360);
  v2 = *(v0 + 1352);
  v3 = *(v0 + 1344);
  v4 = *(v0 + 1336);
  v5 = *(v0 + 1328);
  v6 = *(v0 + 1320);
  v30 = *(v0 + 1304);
  v31 = *(v0 + 1312);
  v7 = *(v0 + 1288);
  v32 = *(v0 + 1272);
  v33 = *(v0 + 1280);
  v29 = *(v0 + 1296);
  v34 = *(v0 + 968);
  v8 = *(v0 + 960);
  outlined destroy of NSObject?(v0 + 200, &_s15SecureMessaging3MLSO33OutgoingReplaceExpiredCredentialsVy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO33OutgoingReplaceExpiredCredentialsVy_AC9AllMemberO10Foundation4DataVGMR);
  outlined consume of Data._Representation(v2, v1);
  outlined consume of Data?(v4, v3);
  outlined consume of Data._Representation(v6, v5);
  outlined consume of MLS.OutgoingMessage?(v7, v29, v30, v31);

  outlined consume of Data._Representation(v32, v33);
  v9 = *(v0 + 864);
  v10 = *(v0 + 872);
  v11 = *(v0 + 880);
  v12 = *(v0 + 128);
  v14 = *(v0 + 80);
  v13 = *(v0 + 96);
  *(v8 + 96) = *(v0 + 112);
  *(v8 + 112) = v12;
  *(v8 + 64) = v14;
  *(v8 + 80) = v13;
  v16 = *(v0 + 160);
  v15 = *(v0 + 176);
  v17 = *(v0 + 144);
  *(v8 + 176) = *(v0 + 192);
  *(v8 + 144) = v16;
  *(v8 + 160) = v15;
  *(v8 + 128) = v17;
  v18 = *(v0 + 16);
  v19 = *(v0 + 32);
  v20 = *(v0 + 64);
  *(v8 + 32) = *(v0 + 48);
  *(v8 + 48) = v20;
  *v8 = v18;
  *(v8 + 16) = v19;
  *(v8 + 184) = *(v0 + 552);
  v21 = *(v0 + 568);
  v22 = *(v0 + 584);
  v23 = *(v0 + 600);
  *(v8 + 248) = *(v0 + 616);
  *(v8 + 232) = v23;
  *(v8 + 216) = v22;
  *(v8 + 200) = v21;
  *(v8 + 256) = 0;
  *(v8 + 264) = v9;
  *(v8 + 272) = v10;
  *(v8 + 280) = v11;
  *(v8 + 288) = *(v0 + 552);
  v24 = *(v0 + 568);
  v25 = *(v0 + 584);
  v26 = *(v0 + 600);
  *(v8 + 352) = *(v0 + 616);
  *(v8 + 320) = v25;
  *(v8 + 336) = v26;
  *(v8 + 304) = v24;
  *(v8 + 360) = 0;
  outlined init with copy of ServerBag.MLS(v34, v8 + 368);
  *(v8 + 408) = 0;
  *(v8 + 416) = *(v0 + 936);
  *(v8 + 424) = 0;
  *(v8 + 432) = 0;
  outlined init with copy of MLS.OutgoingEventState(v0 + 552, v0 + 624);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 744));

  v27 = *(v0 + 8);

  return v27();
}

{

  v1 = *(v0 + 8);

  return v1();
}

{

  v1 = *(v0 + 8);

  return v1();
}

{

  v1 = *(v0 + 8);

  return v1();
}

{
  v1 = *(*(v0 + 1032) + 32);
  v1(*(v0 + 1040), *(v0 + 1056), *(v0 + 1008));
  if (_getErrorEmbeddedNSError<A>(_:)())
  {
    (*(v0 + 1392))(*(v0 + 1040), *(v0 + 1008));
  }

  else
  {
    v2 = *(v0 + 1040);
    v3 = *(v0 + 1008);
    swift_allocError();
    v1(v4, v2, v3);
  }

  v18 = *(v0 + 1360);
  v16 = *(v0 + 1344);
  v17 = *(v0 + 1352);
  v5 = *(v0 + 1336);
  v6 = *(v0 + 1328);
  v7 = *(v0 + 1320);
  v8 = *(v0 + 1312);
  v9 = *(v0 + 1304);
  v10 = *(v0 + 1296);
  v11 = *(v0 + 1288);
  v12 = *(v0 + 1280);
  v13 = *(v0 + 1272);

  outlined consume of Data._Representation(v13, v12);
  outlined consume of MLS.OutgoingMessage?(v11, v10, v9, v8);
  outlined consume of Data._Representation(v7, v6);
  outlined consume of Data?(v5, v16);
  outlined consume of Data._Representation(v17, v18);
  outlined destroy of NSObject?(v0 + 200, &_s15SecureMessaging3MLSO33OutgoingReplaceExpiredCredentialsVy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO33OutgoingReplaceExpiredCredentialsVy_AC9AllMemberO10Foundation4DataVGMR);
  outlined destroy of MLS.OutgoingEventState(v0 + 552);
  outlined destroy of NSObject?(v0 + 200, &_s15SecureMessaging3MLSO33OutgoingReplaceExpiredCredentialsVy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO33OutgoingReplaceExpiredCredentialsVy_AC9AllMemberO10Foundation4DataVGMR);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 744));

  v14 = *(v0 + 8);

  return v14();
}

uint64_t MLS.UpdateOtherExpiredKeyPackagesOperation.perform(on:metricCollector:keyPackageResult:)(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 1232) = v1;

  if (v1)
  {
    v5 = v4[142];

    outlined consume of Data._Representation(v4[115], v4[116]);

    v6 = MLS.UpdateOtherExpiredKeyPackagesOperation.perform(on:metricCollector:keyPackageResult:);
  }

  else
  {
    v5 = v4[142];
    v4[155] = a1;
    outlined consume of Data._Representation(v4[115], v4[116]);

    v6 = MLS.UpdateOtherExpiredKeyPackagesOperation.perform(on:metricCollector:keyPackageResult:);
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t implicit closure #5 in MLS.UpdateOtherExpiredKeyPackagesOperation.perform(on:metricCollector:keyPackageResult:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return MEMORY[0x2822009F8](implicit closure #5 in MLS.UpdateOtherExpiredKeyPackagesOperation.perform(on:metricCollector:keyPackageResult:), 0, 0);
}

uint64_t implicit closure #5 in MLS.UpdateOtherExpiredKeyPackagesOperation.perform(on:metricCollector:keyPackageResult:)()
{
  v1 = *(v0 + 48);
  v3 = v1[3];
  v2 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *v4 = v0;
  v4[1] = implicit closure #5 in MLS.UpdateOtherExpiredKeyPackagesOperation.perform(on:metricCollector:keyPackageResult:);

  return MLS.SwiftMLSGroupProtocol.groupVersion.getter(v0 + 16, v3, v2);
}

{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = implicit closure #5 in MLS.UpdateOtherExpiredKeyPackagesOperation.perform(on:metricCollector:keyPackageResult:);
  }

  else
  {
    v2 = implicit closure #5 in MLS.UpdateOtherExpiredKeyPackagesOperation.perform(on:metricCollector:keyPackageResult:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v1 = *(v0 + 32);
  v2 = __CFADD__(v1, 1);
  v3 = v1 + 1;
  if (v2)
  {
    __break(1u);
  }

  else
  {
    v4 = *(v0 + 40);
    v5 = *(v0 + 24);
    *v4 = v5;
    *(v4 + 8) = v5;
    *(v4 + 16) = v3;
    return (*(v0 + 8))();
  }

  return result;
}

{
  return (*(v0 + 8))();
}

void closure #1 in MLS.UpdateOtherExpiredKeyPackagesOperation.perform(on:metricCollector:keyPackageResult:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{

  oslog = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(oslog, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v13 = v11;
    *v10 = 136315394;
    *(v10 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a4, a5, &v13);
    *(v10 + 12) = 2080;
    *(v10 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v13);
    _os_log_impl(&dword_264F1F000, oslog, v9, "UpdateExpiredKeyPackageOperation failed to obtain era { identifier: %s, error: %s }", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v11, -1, -1);
    MEMORY[0x266755550](v10, -1, -1);
  }
}

char *MLS.UpdateOtherExpiredKeyPackagesOperation.deinit()
{
  v1 = *v0;

  (*(*(*(v1 + 88) - 8) + 8))(v0 + *(*v0 + 136));
  v2 = *(*v0 + 144);
  v3 = type metadata accessor for Logger();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + *(*v0 + 160)));
  swift_unknownObjectRelease();

  outlined destroy of MLS.KeyPackageProvider(v0 + *(*v0 + 184));
  return v0;
}

uint64_t MLS.UpdateOtherExpiredKeyPackagesOperation.__deallocating_deinit()
{
  MLS.UpdateOtherExpiredKeyPackagesOperation.deinit();

  return swift_deallocClassInstance();
}

uint64_t protocol witness for MLS.RequiresGroupGroupOperation.membersRequiringKeyPackages(swiftMLSGroup:) in conformance MLS.UpdateOtherExpiredKeyPackagesOperation<A, B, C>(uint64_t a1)
{
  v6 = (*(**v1 + 248) + **(**v1 + 248));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = specialized KDSRegistration.XPCCoordinator.__allocating_init(clientIdentifier:provider:simUniqueID:simLabelID:supportedState:testPhoneNumberURI:);

  return v6(a1);
}

uint64_t protocol witness for MLS.RequiresGroupGroupOperation.perform(on:metricCollector:keyPackageResult:) in conformance MLS.UpdateOtherExpiredKeyPackagesOperation<A, B, C>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = (*(**v4 + 256) + **(**v4 + 256));
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v12(a1, a2, a3, a4);
}

uint64_t protocol witness for MLS.GroupOperation.group.getter in conformance MLS.UpdateOtherExpiredKeyPackagesOperation<A, B, C>()
{
  v1 = *(*v0 + 16);

  return v1;
}

uint64_t protocol witness for MLS.GroupOperation.logger.getter in conformance MLS.UpdateOtherExpiredKeyPackagesOperation<A, B, C>@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v3 + 144);
  v5 = type metadata accessor for Logger();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC15SecureMessaging3MLSO9AllMemberO_Tt1g5(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15SecureMessaging3MLSO9AllMemberOGMd, &_ss23_ContiguousArrayStorageCy15SecureMessaging3MLSO9AllMemberOGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 1;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 5);
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC8SwiftMLS0I0O8IdentityO07SigningJ0V_Tt1g5(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy8SwiftMLS0E0O8IdentityO07SigningF0VGMd, &_ss23_ContiguousArrayStorageCy8SwiftMLS0E0O8IdentityO07SigningF0VGMR);
  v4 = *(type metadata accessor for MLS.Identity.SigningIdentity() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if ((result - v6) != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC15SecureMessaging3MLSO22UniqueClientIdentifierV_Tt1g5(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15SecureMessaging3MLSO22UniqueClientIdentifierVGMd, &_ss23_ContiguousArrayStorageCy15SecureMessaging3MLSO22UniqueClientIdentifierVGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

char *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(char *a1, uint64_t a2, uint64_t a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy15SecureMessaging3MLSO9AllMemberOGMd, &_ss23_ContiguousArrayStorageCy15SecureMessaging3MLSO9AllMemberOGMR, &type metadata for MLS.AllMember);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy15SecureMessaging3MLSO15PersistedMemberVGMd, &_ss23_ContiguousArrayStorageCy15SecureMessaging3MLSO15PersistedMemberVGMR, &type metadata for MLS.PersistedMember);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(void *a1, uint64_t a2, uint64_t a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy8SwiftMLS0E0O8IdentityO10CredentialOGMd, &_ss23_ContiguousArrayStorageCy8SwiftMLS0E0O8IdentityO10CredentialOGMR, MEMORY[0x277D6AC88]);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy8SwiftMLS0E0O8IdentityO07SigningF0VGMd, &_ss23_ContiguousArrayStorageCy8SwiftMLS0E0O8IdentityO07SigningF0VGMR, MEMORY[0x277D6AC60]);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy8SwiftMLS0E0O6ClientO10KeyPackageVGMd, &_ss23_ContiguousArrayStorageCy8SwiftMLS0E0O6ClientO10KeyPackageVGMR, MEMORY[0x277D6AC08]);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15SecureMessaging3URIVGMd, &_ss23_ContiguousArrayStorageCy15SecureMessaging3URIVGMR);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15SecureMessaging3MLSO8EpochKeyVGMd, &_ss23_ContiguousArrayStorageCy15SecureMessaging3MLSO8EpochKeyVGMR);
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
    memcpy(v13, v14, 16 * v8);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15SecureMessaging3MLSO6RecordVGMd, &_ss23_ContiguousArrayStorageCy15SecureMessaging3MLSO6RecordVGMR);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15SecureMessaging3MLSO22UniqueClientIdentifierVGMd, &_ss23_ContiguousArrayStorageCy15SecureMessaging3MLSO22UniqueClientIdentifierVGMR);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15SecureMessaging3MLSO17InMemoryPersisterC18OutgoingEventEntryVGMd, &_ss23_ContiguousArrayStorageCy15SecureMessaging3MLSO17InMemoryPersisterC18OutgoingEventEntryVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 296);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[296 * v8])
    {
      memmove(v12, v13, 296 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15SecureMessaging3MLSO17InMemoryPersisterC18IncomingEventEntryVGMd, &_ss23_ContiguousArrayStorageCy15SecureMessaging3MLSO17InMemoryPersisterC18IncomingEventEntryVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 112);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[112 * v8])
    {
      memmove(v12, v13, 112 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15SecureMessaging3MLSO18OutgoingEventStateVGMd, &_ss23_ContiguousArrayStorageCy15SecureMessaging3MLSO18OutgoingEventStateVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[72 * v8])
    {
      memmove(v12, v13, 72 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6, uint64_t a7)
{
  v8 = result;
  if (a3)
  {
    v9 = *(a4 + 3);
    v10 = v9 >> 1;
    if ((v9 >> 1) < a2)
    {
      if (v10 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
      if ((v9 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v10 = a2;
      }
    }
  }

  else
  {
    v10 = a2;
  }

  v11 = *(a4 + 2);
  if (v10 <= v11)
  {
    v12 = *(a4 + 2);
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v13 = swift_allocObject();
    v14 = _swift_stdlib_malloc_size(v13);
    v15 = v14 - 32;
    if (v14 < 32)
    {
      v15 = v14 - 1;
    }

    *(v13 + 2) = v11;
    *(v13 + 3) = 2 * (v15 >> 5);
  }

  else
  {
    v13 = MEMORY[0x277D84F90];
  }

  v16 = v13 + 32;
  v17 = a4 + 32;
  if (v8)
  {
    if (v13 != a4 || v16 >= &v17[32 * v11])
    {
      memmove(v16, v17, 32 * v11);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15SecureMessaging3MLSO17OutgoingEventTypeOy_AE9AllMemberO10Foundation4DataVG_AE0gH5StateVSgAE12GroupVersionVtGMd, &_ss23_ContiguousArrayStorageCy15SecureMessaging3MLSO17OutgoingEventTypeOy_AE9AllMemberO10Foundation4DataVG_AE0gH5StateVSgAE12GroupVersionVtGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 280);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[35 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 280 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVG_AC0dE5StateVSgAC12GroupVersionVtMd, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVG_AC0dE5StateVSgAC12GroupVersionVtMR);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15SecureMessaging3MLSO17IncomingEventTypeOy_AE9AllMemberO10Foundation4DataVGGMd, &_ss23_ContiguousArrayStorageCy15SecureMessaging3MLSO17IncomingEventTypeOy_AE9AllMemberO10Foundation4DataVGGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 104);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[13 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 104 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *specialized Sequence._copySequenceContents(initializing:)(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = *(a4 + 48) + ((v12 << 11) | (32 * v17));
      v19 = *v18;
      v20 = *(v18 + 8);
      v21 = *(v18 + 16);
      v22 = *(v18 + 24);
      *v11 = *v18;
      *(v11 + 8) = v20;
      *(v11 + 16) = v21;
      *(v11 + 24) = v22;
      if (v14 == v10)
      {
        outlined copy of MLS.AllMember(v19, v20);
        goto LABEL_24;
      }

      v11 += 32;
      outlined copy of MLS.AllMember(v19, v20);
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v24 = v12 + 1;
    }

    else
    {
      v24 = (63 - v7) >> 6;
    }

    v12 = v24 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = *(a4 + 48) + ((v12 << 11) | (32 * v17));
      v19 = *v18;
      v20 = *(v18 + 8);
      v21 = *(v18 + 16);
      v22 = *(v18 + 24);
      *v11 = *v18;
      *(v11 + 8) = v20;
      *(v11 + 16) = v21;
      *(v11 + 24) = v22;
      if (v14 == v10)
      {
        outlined copy of MLS.AllMember(v19, v20);
        goto LABEL_24;
      }

      v11 += 32;
      outlined copy of MLS.AllMember(v19, v20);
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v24 = v12 + 1;
    }

    else
    {
      v24 = (63 - v7) >> 6;
    }

    v12 = v24 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t specialized Sequence._copySequenceContents(initializing:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v40 = type metadata accessor for MLS.Identity.SigningIdentity();
  v42 = *(v40 - 8);
  v8 = MEMORY[0x28223BE20](v40);
  v41 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v8);
  v39 = &v33 - v11;
  v12 = a4 + 56;
  v13 = -1 << *(a4 + 32);
  if (-v13 < 64)
  {
    v14 = ~(-1 << -v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(a4 + 56);
  if (!a2)
  {
LABEL_19:
    v31 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v12;
    *(a1 + 16) = ~v13;
    *(a1 + 24) = v31;
    *(a1 + 32) = v15;
    return a3;
  }

  if (!a3)
  {
    v31 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v33 = -1 << *(a4 + 32);
    v34 = a1;
    result = 0;
    v16 = 0;
    v17 = (63 - v13) >> 6;
    v35 = v42 + 32;
    v36 = v42 + 16;
    a1 = 1;
    v37 = a4 + 56;
    v38 = a3;
    v18 = v39;
    while (v15)
    {
      v44 = a2;
LABEL_15:
      v21 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v43 = v16;
      v22 = a4;
      v23 = *(a4 + 48);
      v24 = v41;
      v25 = v42;
      v26 = *(v42 + 72);
      v27 = v40;
      (*(v42 + 16))(v41, v23 + v26 * (v21 | (v16 << 6)), v40);
      v28 = *(v25 + 32);
      v28(v18, v24, v27);
      v29 = v44;
      v28(v44, v18, v27);
      a3 = v38;
      if (a1 == v38)
      {
        v13 = v33;
        a1 = v34;
        a4 = v22;
        v31 = v43;
        v12 = v37;
        goto LABEL_25;
      }

      a2 = &v29[v26];
      result = a1;
      v30 = __OFADD__(a1++, 1);
      a4 = v22;
      v16 = v43;
      v12 = v37;
      if (v30)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v19 = v16;
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v20 >= v17)
      {
        break;
      }

      v15 = *(v12 + 8 * v20);
      ++v19;
      if (v15)
      {
        v44 = a2;
        v16 = v20;
        goto LABEL_15;
      }
    }

    v15 = 0;
    if (v17 <= v16 + 1)
    {
      v32 = v16 + 1;
    }

    else
    {
      v32 = v17;
    }

    v31 = v32 - 1;
    a3 = result;
    v13 = v33;
    a1 = v34;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

void *specialized Sequence._copySequenceContents(initializing:)(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t partial apply for implicit closure #1 in MLS.UpdateOtherExpiredKeyPackagesOperation.membersRequiringKeyPackages(swiftMLSGroup:)(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return implicit closure #1 in MLS.UpdateOtherExpiredKeyPackagesOperation.membersRequiringKeyPackages(swiftMLSGroup:)(a1, v5, v4);
}

uint64_t outlined init with take of MLS.KeyPackageProvider(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void outlined consume of MLS.OutgoingMessage?(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2)
  {

    outlined consume of Data._Representation(a3, a4);
  }
}

void outlined copy of MLS.OutgoingMessage?(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2)
  {

    outlined copy of Data._Representation(a3, a4);
  }
}

uint64_t partial apply for implicit closure #5 in MLS.UpdateOtherExpiredKeyPackagesOperation.perform(on:metricCollector:keyPackageResult:)(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return implicit closure #5 in MLS.UpdateOtherExpiredKeyPackagesOperation.perform(on:metricCollector:keyPackageResult:)(a1, v4);
}

uint64_t sub_264F6C56C()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t outlined destroy of MLS.KeyPackageProvider(uint64_t a1)
{
  v2 = type metadata accessor for MLS.KeyPackageProvider(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t instantiation function for generic protocol witness table for MLS.UpdateOtherExpiredKeyPackagesOperation<A, B, C>(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata completion function for MLS.UpdateOtherExpiredKeyPackagesOperation(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Logger();
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for MLS.KeyPackageProvider(319);
      if (v4 <= 0x3F)
      {
        return swift_initClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t dispatch thunk of MLS.UpdateOtherExpiredKeyPackagesOperation.membersRequiringKeyPackages(swiftMLSGroup:)(uint64_t a1)
{
  v6 = (*(*v1 + 248) + **(*v1 + 248));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = dispatch thunk of KDSRegistration.XPCCoordinator.__allocating_init(clientIdentifier:provider:simUniqueID:simLabelID:supportedState:testPhoneNumberURI:);

  return v6(a1);
}

uint64_t dispatch thunk of MLS.UpdateOtherExpiredKeyPackagesOperation.perform(on:metricCollector:keyPackageResult:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = (*(*v4 + 256) + **(*v4 + 256));
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v12(a1, a2, a3, a4);
}

uint64_t outlined consume of Set<MLS.Identity.SigningIdentity>.Index._Variant(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

uint64_t _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v22 - v9;
  outlined init with copy of MLS.OutgoingEventState?(a3, v22 - v9, &_sScPSgMd, &_sScPSgMR);
  v11 = type metadata accessor for TaskPriority();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    outlined destroy of NSObject?(v10, &_sScPSgMd, &_sScPSgMR);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = dispatch thunk of Actor.unownedExecutor.getter();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = String.utf8CString.getter() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      outlined destroy of NSObject?(a3, &_sScPSgMd, &_sScPSgMR);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  outlined destroy of NSObject?(a3, &_sScPSgMd, &_sScPSgMR);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfC15SecureMessaging3MLSO14KeyPackageInfoV_Tt2g5Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v23 - v10;
  outlined init with copy of MLS.OutgoingEventState?(a3, v23 - v10, &_sScPSgMd, &_sScPSgMR);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    outlined destroy of NSObject?(v11, &_sScPSgMd, &_sScPSgMR);
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
      v23[0] = a2;
      v19 = String.utf8CString.getter() + 32;

      if (v18 | v16)
      {
        v24[0] = 0;
        v24[1] = 0;
        v20 = v24;
        v24[2] = v16;
        v24[3] = v18;
      }

      else
      {
        v20 = 0;
      }

      v23[1] = 7;
      v23[2] = v20;
      v23[3] = v19;
      v21 = swift_task_create();

      outlined destroy of NSObject?(a3, &_sScPSgMd, &_sScPSgMR);

      return v21;
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

  outlined destroy of NSObject?(a3, &_sScPSgMd, &_sScPSgMR);
  if (v18 | v16)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v16;
    v24[7] = v18;
  }

  return swift_task_create();
}

uint64_t _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v24[-1] - v11;
  v24[5] = a4;
  v24[6] = a5;
  outlined init with copy of MLS.OutgoingEventState?(a3, &v24[-1] - v11, &_sScPSgMd, &_sScPSgMR);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    outlined destroy of NSObject?(v12, &_sScPSgMd, &_sScPSgMR);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v14 + 8))(v12, v13);
  }

  v16 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = dispatch thunk of Actor.unownedExecutor.getter();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = String.utf8CString.getter();
      _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfcBoSRys4Int8VGXEfU_(v20 + 32, v24);

      v21 = v24[0];
      outlined destroy of NSObject?(a3, &_sScPSgMd, &_sScPSgMR);

      return v21;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  outlined destroy of NSObject?(a3, &_sScPSgMd, &_sScPSgMR);
  if (v19 | v17)
  {
    v24[1] = 0;
    v24[2] = 0;
    v24[3] = v17;
    v24[4] = v19;
  }

  return swift_task_create();
}

uint64_t MLS.Client.keyPackage.getter(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v2[4] = swift_task_alloc();

  return MEMORY[0x2822009F8](MLS.Client.keyPackage.getter, v1, 0);
}

uint64_t MLS.Client.keyPackage.getter()
{
  v1 = v0[4];
  v2 = type metadata accessor for TaskPriority();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = one-time initialization token for shared;

  if (v3 != -1)
  {
    swift_once();
  }

  v5 = v0[3];
  v4 = v0[4];
  v6 = static MLSActor.shared;
  v7 = lazy protocol witness table accessor for type MLSActor and conformance MLSActor();
  v8 = swift_allocObject();
  v8[2] = v6;
  v8[3] = v7;
  v8[4] = v5;

  v9 = _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfC15SecureMessaging3MLSO14KeyPackageInfoV_Tt2g5Tm(0, 0, v4, &async function pointer to partial apply for closure #1 in MLS.Client.keyPackage.getter, v8, &type metadata for MLS.KeyPackageInfo);
  v0[5] = v9;
  v10 = swift_task_alloc();
  v0[6] = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  *v10 = v0;
  v10[1] = MLS.Client.keyPackage.getter;
  v12 = v0[2];
  v13 = MEMORY[0x277D84950];

  return MEMORY[0x282200430](v12, v9, &type metadata for MLS.KeyPackageInfo, v11, v13);
}

{
  v2 = *v1;
  *(*v1 + 56) = v0;

  v3 = *(v2 + 24);
  if (v0)
  {
    v4 = MLS.Client.keyPackage.getter;
  }

  else
  {
    v4 = MLS.Client.keyPackage.getter;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t closure #1 in MLS.Client.keyPackage.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a1;
  v4[5] = a4;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v5 = static MLSActor.shared;
  v4[6] = static MLSActor.shared;

  return MEMORY[0x2822009F8](closure #1 in MLS.Client.keyPackage.getter, v5, 0);
}

uint64_t closure #1 in MLS.Client.keyPackage.getter(uint64_t a1)
{
  v1[7] = direct field offset for MLS.Client.logger;
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_264F1F000, v2, v3, "keyPackage called", v4, 2u);
    MEMORY[0x266755550](v4, -1, -1);
  }

  v5 = v1[5];

  v6 = v5[17];
  v7 = v5[18];
  __swift_project_boxed_opaque_existential_1(v5 + 14, v6);
  v10 = (*(v7 + 8) + **(v7 + 8));
  v8 = swift_task_alloc();
  v1[8] = v8;
  *v8 = v1;
  v8[1] = closure #1 in MLS.Client.keyPackage.getter;

  return v10(v1 + 2, v6, v7);
}

uint64_t closure #1 in MLS.Client.keyPackage.getter()
{
  v2 = *v1;
  *(*v1 + 72) = v0;

  v3 = *(v2 + 48);
  if (v0)
  {
    v4 = closure #1 in MLS.Client.keyPackage.getter;
  }

  else
  {
    v4 = closure #1 in MLS.Client.keyPackage.getter;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{
  v17 = v0;
  v1 = v0[2];
  v2 = v0[3];
  outlined copy of Data._Representation(v1, v2);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  outlined consume of Data._Representation(v1, v2);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v16 = v6;
    *v5 = 136315138;
    outlined copy of Data._Representation(v1, v2);
    isa = Data._bridgeToObjectiveC()().super.isa;
    v8 = [(objc_class *)isa description];

    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    outlined consume of Data._Representation(v1, v2);
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v11, &v16);

    *(v5 + 4) = v12;
    _os_log_impl(&dword_264F1F000, v3, v4, "keyPackage finished { result: %s }", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x266755550](v6, -1, -1);
    MEMORY[0x266755550](v5, -1, -1);
  }

  v13 = v0[4];
  *v13 = v1;
  v13[1] = v2;
  v14 = v0[1];

  return v14();
}

{
  return (*(v0 + 8))();
}

uint64_t MLS.Client.__allocating_init(coordinator:logger:)(__int128 *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  MLS.Client.init(coordinator:logger:)(a1, a2);
  return v4;
}

uint64_t MLS.Client.init(coordinator:logger:)(__int128 *a1, uint64_t a2)
{
  swift_defaultActor_initialize();
  outlined init with take of MLS.KeyUpdatePolicy(a1, v2 + 112);
  v5 = direct field offset for MLS.Client.logger;
  v6 = type metadata accessor for Logger();
  (*(*(v6 - 8) + 32))(v2 + v5, a2, v6);
  return v2;
}

uint64_t MLS.Client.__allocating_init(configuration:)(uint64_t a1)
{
  *(v2 + 184) = a1;
  *(v2 + 192) = v1;
  v3 = v1[10];
  *(v2 + 200) = v3;
  v4 = type metadata accessor for Optional();
  *(v2 + 208) = v4;
  *(v2 + 216) = *(v4 - 8);
  *(v2 + 224) = swift_task_alloc();
  v5 = v1[11];
  *(v2 + 232) = v5;
  v6 = v1[12];
  *(v2 + 240) = v6;
  v7 = v1[13];
  *(v2 + 248) = v7;
  *&v8 = v3;
  *(&v8 + 1) = v5;
  *&v9 = v6;
  *(&v9 + 1) = v7;
  *(v2 + 72) = v9;
  *(v2 + 56) = v8;
  v10 = type metadata accessor for MLS.Configuration(0, v2 + 56);
  *(v2 + 256) = v10;
  *(v2 + 264) = *(v10 - 8);
  *(v2 + 272) = swift_task_alloc();
  v11 = type metadata accessor for Logger();
  *(v2 + 280) = v11;
  *(v2 + 288) = *(v11 - 8);
  *(v2 + 296) = swift_task_alloc();
  *(v2 + 304) = swift_task_alloc();

  return MEMORY[0x2822009F8](MLS.Client.__allocating_init(configuration:), 0, 0);
}

{
  v4 = *v2;
  v5 = *v2;
  v4[54] = a1;
  v4[55] = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](MLS.Client.__allocating_init(configuration:), 0, 0);
  }

  else
  {
    v8 = (*(*a1 + 184) + **(*a1 + 184));
    v6 = swift_task_alloc();
    v4[56] = v6;
    *v6 = v5;
    v6[1] = MLS.Client.__allocating_init(configuration:);

    return v8();
  }
}

uint64_t MLS.Client.__allocating_init(configuration:)()
{
  v32 = v0;
  v2 = *(v0 + 264);
  v1 = *(v0 + 272);
  v3 = *(v0 + 256);
  v4 = *(v0 + 184);
  Logger.init(subsystem:category:)();
  (*(v2 + 16))(v1, v4, v3);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  v7 = os_log_type_enabled(v5, v6);
  v9 = *(v0 + 264);
  v8 = *(v0 + 272);
  v10 = *(v0 + 256);
  if (v7)
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v31 = v12;
    *v11 = 136315394;
    *(v11 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x6574707972636E45, 0xEC00000053435264, &v31);
    *(v11 + 12) = 1024;
    v13 = *(v8 + 64);
    v14 = *(v9 + 8);
    v14(v8, v10);
    *(v11 + 14) = v13;
    _os_log_impl(&dword_264F1F000, v5, v6, "Initializing MLS Client { client: %s, runInDaemon: %{BOOL}d }", v11, 0x12u);
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    MEMORY[0x266755550](v12, -1, -1);
    MEMORY[0x266755550](v11, -1, -1);
  }

  else
  {
    v14 = *(v9 + 8);
    v14(*(v0 + 272), *(v0 + 256));
  }

  *(v0 + 312) = v14;
  v15 = *(v0 + 184);
  if (*(v15 + 64) == 1)
  {
    v16 = *(v0 + 248);
    v17 = *(v0 + 200);
    *(v0 + 320) = *v15;
    *(v0 + 328) = *(v15 + 8);
    *(v0 + 336) = swift_getObjectType();
    *(v0 + 344) = *(v15 + 16);
    *(v0 + 352) = *(v15 + 24);
    *(v0 + 360) = swift_getObjectType();
    *(v0 + 368) = *(v15 + 32);
    *(v0 + 376) = *(v15 + 40);
    *(v0 + 384) = swift_getObjectType();
    *(v0 + 88) = v17;
    *(v0 + 96) = *(v0 + 232);
    *(v0 + 112) = v16;
    *(v0 + 392) = type metadata accessor for MLS.ClientEventDeliverer(0, v0 + 88);
    v18 = one-time initialization token for shared;
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    if (v18 != -1)
    {
      swift_once();
    }

    v19 = static MLSActor.shared;
    *(v0 + 400) = static MLSActor.shared;

    return MEMORY[0x2822009F8](MLS.Client.__allocating_init(configuration:), v19, 0);
  }

  else
  {
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_264F1F000, v20, v21, "Initializing in process client is not supported", v22, 2u);
      MEMORY[0x266755550](v22, -1, -1);
    }

    v23 = *(v0 + 304);
    v24 = *(v0 + 280);
    v25 = *(v0 + 288);
    v26 = *(v0 + 256);
    v27 = *(v0 + 184);

    lazy protocol witness table accessor for type MLS.ClientCreationError and conformance MLS.ClientCreationError();
    swift_allocError();
    *v28 = 0;
    *(v28 + 8) = 0;
    *(v28 + 16) = 0;
    swift_willThrow();
    v14(v27, v26);
    (*(v25 + 8))(v23, v24);

    v29 = *(v0 + 8);

    return v29();
  }
}

{
  v0[51] = specialized MLS.ClientEventDeliverer.__allocating_init<A, B, C>(communicator:delegate:keyPackageExchanger:)(v0[40], v0[43], v0[46], v0[42], v0[45], v0[48], v0[41], v0[44], v0[47]);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return MEMORY[0x2822009F8](MLS.Client.__allocating_init(configuration:), 0, 0);
}

{
  v16 = v0;
  v1 = *(v0 + 224);
  v2 = *(v0 + 200);
  (*(*(v0 + 216) + 16))(v1, *(v0 + 184) + *(*(v0 + 256) + 72), *(v0 + 208));
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    (*(*(v0 + 216) + 8))(*(v0 + 224), *(v0 + 208));
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = -2;
  }

  else
  {
    v8 = *(v0 + 224);
    v9 = *(v0 + 200);
    (*(*(v0 + 240) + 40))(v14, v9);
    v4 = v14[0];
    v5 = v14[1];
    v6 = v14[2];
    v7 = v15;
    (*(v3 + 8))(v8, v9);
  }

  v10 = *(v0 + 248);
  *(v0 + 120) = *(v0 + 200);
  *(v0 + 128) = *(v0 + 232);
  *(v0 + 144) = v10;
  *(v0 + 416) = type metadata accessor for MLS.XPCClientCoordinator(0, v0 + 120);
  *(v0 + 152) = v4;
  *(v0 + 160) = v5;
  *(v0 + 168) = v6;
  *(v0 + 176) = v7;

  v11 = swift_task_alloc();
  *(v0 + 424) = v11;
  *v11 = v0;
  v11[1] = MLS.Client.__allocating_init(configuration:);
  v12 = *(v0 + 408);

  return MLS.XPCClientCoordinator.__allocating_init(clientIdentifier:selfMember:clientEventDeliverer:)(v11, v0 + 152, v12);
}

{
  *(*v1 + 456) = v0;

  if (v0)
  {
    v2 = MLS.Client.__allocating_init(configuration:);
  }

  else
  {
    v2 = MLS.Client.__allocating_init(configuration:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v1 = v0[54];
  v2 = v0[50];
  v3 = v0[37];
  v4 = v0[38];
  v5 = v0[35];
  v6 = v0[36];
  v0[5] = v0[52];
  v0[6] = &protocol witness table for MLS.XPCClientCoordinator<A, B>;
  v0[2] = v1;
  (*(v6 + 16))(v3, v4, v5);

  return MEMORY[0x2822009F8](MLS.Client.__allocating_init(configuration:), v2, 0);
}

{
  v1 = *(v0 + 296);
  v2 = swift_allocObject();
  MLS.Client.init(coordinator:logger:)((v0 + 16), v1);
  *(v0 + 464) = v2;

  return MEMORY[0x2822009F8](MLS.Client.__allocating_init(configuration:), v2, 0);
}

{
  v1 = v0[38];
  v2 = v0[39];
  v3 = v0[36];
  v4 = v0[35];
  v5 = v0[32];
  v6 = v0[23];

  v2(v6, v5);
  (*(v3 + 8))(v1, v4);

  v7 = v0[1];
  v8 = v0[58];

  return v7(v8);
}

{
  v1 = v0[38];
  v2 = v0[39];
  v3 = v0[35];
  v4 = v0[36];
  v5 = v0[32];
  v6 = v0[23];

  v2(v6, v5);
  (*(v4 + 8))(v1, v3);

  v7 = v0[1];

  return v7();
}

{
  v1 = v0[38];
  v2 = v0[39];
  v3 = v0[35];
  v4 = v0[36];
  v5 = v0[32];
  v6 = v0[23];

  v2(v6, v5);
  (*(v4 + 8))(v1, v3);

  v7 = v0[1];

  return v7();
}

uint64_t MLS.Client.createGroup(identifier:otherMembers:contextV2:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v7 = *v5;
  v8 = *(*v5 + 88);
  v6[8] = v8;
  v9 = type metadata accessor for Optional();
  v6[9] = v9;
  v6[10] = *(v9 - 8);
  v6[11] = swift_task_alloc();
  v10 = *(v7 + 104);
  v6[12] = v10;
  v6[13] = type metadata accessor for MLS.GroupCreationContext_v2(255, v8, v10, v11);
  v12 = type metadata accessor for Optional();
  v6[14] = v12;
  v6[15] = *(v12 - 8);
  v6[16] = swift_task_alloc();
  v6[17] = swift_task_alloc();
  v6[18] = swift_task_alloc();
  v6[19] = swift_task_alloc();
  v6[20] = type metadata accessor for MLS.GroupCreationContext(255, v8, v10, v13);
  v14 = type metadata accessor for Optional();
  v6[21] = v14;
  v6[22] = *(v14 - 8);
  v6[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](MLS.Client.createGroup(identifier:otherMembers:contextV2:), v5, 0);
}

uint64_t MLS.Client.createGroup(identifier:otherMembers:contextV2:)()
{
  v62 = v0;

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v4 = v0[3];
    v3 = v0[4];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v61 = v6;
    *v5 = 136315138;
    *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v4, v3, &v61);
    _os_log_impl(&dword_264F1F000, v1, v2, "legacy createGroupV2 called { groupIdentifier: %s }", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x266755550](v6, -1, -1);
    MEMORY[0x266755550](v5, -1, -1);
  }

  v7 = v0 + 14;
  v8 = v0[19];
  v10 = v0 + 13;
  v9 = v0[13];
  v60 = *(v0[15] + 16);
  v60(v8, v0[6], v0[14]);
  v11 = *(v9 - 8);
  v59 = *(v11 + 48);
  v12 = v59(v8, 1, v9);
  v13 = v0[19];
  if (v12 == 1)
  {
    (*(v0[15] + 8))(v13, v0[14]);
    v57 = 0;
    v58 = 0;
  }

  else
  {
    v14 = *v10;
    v57 = v13[1];
    v58 = *v13;
    v15 = *(v11 + 8);

    v15(v13, v14);
    v10 = v0 + 13;
  }

  v16 = v11;
  v17 = v0[18];
  v18 = v0[13];
  v19 = v60;
  v60(v17, v0[6], v0[14]);
  v20 = v59;
  v21 = v59(v17, 1, v18);
  v22 = v0[18];
  if (v21 == 1)
  {
    v23 = v0[11];
    v24 = v0[8];
    (*(v0[15] + 8))(v22, v0[14]);
    (*(*(v24 - 8) + 56))(v23, 1, 1, v24);
  }

  else
  {
    v25 = v0[13];
    v26 = v0[18];
    (*(v0[10] + 16))(v0[11], v22 + *(v25 + 36), v0[9]);
    (*(v16 + 8))(v26, v25);
  }

  v27 = v0[17];
  v28 = v0[13];
  v60(v27, v0[6], v0[14]);
  v29 = v59(v27, 1, v28);
  v30 = v0[17];
  if (v29 == 1)
  {
    (*(v0[15] + 8))(v30, v0[14]);
    v31 = 0;
  }

  else
  {
    v32 = *v10;
    v31 = *(v30 + *(*v10 + 40));
    v33 = v16;
    v34 = *(v16 + 8);
    v35 = v0[17];

    v34(v35, v32);
    v16 = v33;
    v20 = v59;
    v19 = v60;
  }

  v36 = v0[16];
  v38 = v0[13];
  v37 = v0[14];
  v39 = v0[6];
  v61 = v31;
  v19(v36, v39, v37);
  if (v20(v36, 1, v38) == 1)
  {
    v40 = 0;
    v16 = v0[15];
    v41 = 0xF000000000000000;
  }

  else
  {
    v42 = (v0[16] + *(v0[13] + 44));
    v40 = *v42;
    v41 = v42[1];
    outlined copy of Data?(*v42, v41);
    v7 = v0 + 13;
  }

  v43 = *v7;
  v44 = v0[23];
  v45 = v0[20];
  v47 = v0[11];
  v46 = v0[12];
  v48 = v0[8];
  (*(v16 + 8))(v0[16], v43);
  v49 = MLS.GroupCreationContext.init(identifier:clientContext:metricCollector:groupClientContextBlob:)(v58, v57, v47, &v61, v40, v41, v48, v46, v44);
  (*(*(v45 - 8) + 56))(v44, 0, 1, v45, v49);
  v50 = swift_task_alloc();
  v0[24] = v50;
  *v50 = v0;
  v50[1] = MLS.Client.createGroup(identifier:otherMembers:contextV2:);
  v51 = v0[23];
  v52 = v0[4];
  v53 = v0[5];
  v54 = v0[2];
  v55 = v0[3];

  return MLS.Client.createGroup(identifier:otherMembers:context:)(v54, v55, v52, v53, v51);
}

{
  v2 = *(*v1 + 184);
  v3 = *(*v1 + 176);
  v4 = *(*v1 + 168);
  v5 = *v1;
  v5[25] = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v6 = v5[7];

    return MEMORY[0x2822009F8](MLS.Client.createGroup(identifier:otherMembers:contextV2:), v6, 0);
  }

  else
  {

    v7 = v5[1];

    return v7();
  }
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t MLS.Client.createGroup(identifier:otherMembers:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[31] = a5;
  v6[32] = v5;
  v6[29] = a3;
  v6[30] = a4;
  v6[27] = a1;
  v6[28] = a2;
  v7 = *v5;
  v6[33] = *v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v6[34] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging15MetricCollectorV5EventVSgMd, &_s15SecureMessaging15MetricCollectorV5EventVSgMR);
  v6[35] = swift_task_alloc();
  v8 = type metadata accessor for UUID();
  v6[36] = v8;
  v6[37] = *(v8 - 8);
  v6[38] = swift_task_alloc();
  v9 = *(v7 + 88);
  v6[39] = v9;
  v10 = *(v7 + 104);
  v6[40] = v10;
  v6[41] = type metadata accessor for MLS.GroupCreationContext(255, v9, v10, v11);
  v12 = type metadata accessor for Optional();
  v6[42] = v12;
  v6[43] = *(v12 - 8);
  v6[44] = swift_task_alloc();

  return MEMORY[0x2822009F8](MLS.Client.createGroup(identifier:otherMembers:context:), v5, 0);
}

uint64_t MLS.Client.createGroup(identifier:otherMembers:context:)()
{
  v80 = v0;
  *(v0 + 208) = *(v0 + 240);
  v1 = *(*(v0 + 264) + 80);
  type metadata accessor for Array();
  swift_getWitnessTable();
  if (Collection.isEmpty.getter())
  {

    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();

    v4 = os_log_type_enabled(v2, v3);
    v5 = *(v0 + 240);
    if (v4)
    {
      v7 = *(v0 + 224);
      v6 = *(v0 + 232);
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v79[0] = v9;
      *v8 = 136315394;
      *(v8 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v6, v79);
      *(v8 + 12) = 2080;
      v10 = MEMORY[0x266754630](v5, v1);
      v12 = v11;

      v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v12, v79);

      *(v8 + 14) = v13;
      _os_log_impl(&dword_264F1F000, v2, v3, "createGroup failed: no other members specified { groupIdentifier: %s, otherMembers: %s }", v8, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266755550](v9, -1, -1);
      MEMORY[0x266755550](v8, -1, -1);
    }

    else
    {
    }

    lazy protocol witness table accessor for type MLS.GroupCreationError and conformance MLS.GroupCreationError();
    swift_allocError();
    *v28 = 12;
    *(v28 + 8) = 0;
    *(v28 + 16) = 0;
    swift_willThrow();

    v29 = *(v0 + 8);

    return v29();
  }

  else
  {
    v15 = *(v0 + 344);
    v14 = *(v0 + 352);
    v17 = *(v0 + 328);
    v16 = *(v0 + 336);
    v18 = *(v0 + 248);
    v19 = swift_allocObject();
    *(v0 + 360) = v19;
    (*(v15 + 16))(v14, v18, v16);
    v20 = *(v17 - 8);
    if ((*(v20 + 48))(v14, 1, v17) == 1)
    {
      v22 = *(v0 + 296);
      v21 = *(v0 + 304);
      v23 = *(v0 + 288);
      (*(*(v0 + 344) + 8))(*(v0 + 352), *(v0 + 336));
      UUID.init()();
      v24 = UUID.uuidString.getter();
      v26 = v25;
      (*(v22 + 8))(v21, v23);
      v27 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_15SecureMessaging15MetricCollectorV5EventVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
      *(v19 + 16) = v24;
      *(v19 + 24) = v26;
      *(v19 + 32) = xmmword_2651B5F50;
      *(v19 + 48) = v27;
      *(v19 + 56) = xmmword_2651B5F50;
      *(v19 + 72) = xmmword_2651B5F50;
    }

    else
    {
      MLS.GroupCreationContext.dataContext.getter(*(v0 + 328), v77);
      (*(v20 + 8))(*(v0 + 352), *(v0 + 328));
      v31 = v77[3];
      *(v19 + 48) = v77[2];
      *(v19 + 64) = v31;
      *(v19 + 80) = v78;
      v32 = v77[1];
      *(v19 + 16) = v77[0];
      *(v19 + 32) = v32;
    }

    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.default.getter();

    v35 = os_log_type_enabled(v33, v34);
    v36 = *(v0 + 240);
    if (v35)
    {
      v38 = *(v0 + 224);
      v37 = *(v0 + 232);
      v39 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      v79[0] = v74;
      *v39 = 136315650;
      *(v39 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v37, v79);
      *(v39 + 12) = 2080;
      v40 = MEMORY[0x266754630](v36, v1);
      v42 = v41;

      v43 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v42, v79);

      *(v39 + 14) = v43;
      *(v39 + 22) = 2080;
      swift_beginAccess();
      v44 = *(v19 + 64);
      *(v0 + 48) = *(v19 + 48);
      *(v0 + 64) = v44;
      *(v0 + 80) = *(v19 + 80);
      v45 = *(v19 + 32);
      *(v0 + 16) = *(v19 + 16);
      *(v0 + 32) = v45;
      outlined init with copy of MLS.OutgoingEventState?(v0 + 16, v0 + 88, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);
      v46 = specialized MLS.GroupCreationContext.description.getter();
      v48 = v47;
      outlined destroy of NSObject?(v0 + 16, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);
      v49 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46, v48, v79);

      *(v39 + 24) = v49;
      _os_log_impl(&dword_264F1F000, v33, v34, "createGroup called { groupIdentifier: %s, otherMembers: %s, context: %s }", v39, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x266755550](v74, -1, -1);
      MEMORY[0x266755550](v39, -1, -1);
    }

    else
    {
    }

    v50 = *(v0 + 280);
    v73 = *(v0 + 272);
    swift_beginAccess();
    Date.init()();
    v51 = type metadata accessor for MetricCollector.Event(0);
    v52 = *(v51 + 20);
    v53 = type metadata accessor for Date();
    v54 = *(*(v53 - 8) + 56);
    v54(v50 + v52, 1, 1, v53);
    v55 = *(*(v51 - 8) + 56);
    v55(v50, 0, 1, v51);
    specialized Dictionary.subscript.setter(v50, 0x646E456F54646E45, 0xE800000000000000);
    Date.init()();
    v54(v50 + *(v51 + 20), 1, 1, v53);
    v55(v50, 0, 1, v51);
    specialized Dictionary.subscript.setter(v50, 0x6E61487473726946, 0xEE00656B61687364);
    Date.init()();
    v54(v50 + *(v51 + 20), 1, 1, v53);
    v55(v50, 0, 1, v51);
    specialized Dictionary.subscript.setter(v50, 0x6341746E65696C43, 0xEB00000000726F74);
    swift_endAccess();
    v56 = type metadata accessor for TaskPriority();
    (*(*(v56 - 8) + 56))(v73, 1, 1, v56);
    v57 = one-time initialization token for shared;

    if (v57 != -1)
    {
      swift_once();
    }

    v58 = *(v0 + 312);
    v75 = *(v0 + 320);
    v76 = *(v0 + 272);
    v59 = *(v0 + 256);
    v60 = *(v0 + 232);
    v61 = *(v0 + 240);
    v62 = *(v0 + 224);
    v63 = static MLSActor.shared;
    v64 = lazy protocol witness table accessor for type MLSActor and conformance MLSActor();
    v65 = swift_allocObject();
    v65[2] = v63;
    v65[3] = v64;
    v65[4] = v19;
    v65[5] = v61;
    v65[6] = v59;
    v65[7] = v62;
    v65[8] = v60;
    v67 = type metadata accessor for MLS.GroupCreationProcessedContext(0, v58, v75, v66);

    v68 = _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfC(0, 0, v76, &async function pointer to partial apply for closure #1 in MLS.Client.createGroup(identifier:otherMembers:context:), v65, v67);
    *(v0 + 368) = v68;
    v69 = swift_task_alloc();
    *(v0 + 376) = v69;
    v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    *v69 = v0;
    v69[1] = MLS.Client.createGroup(identifier:otherMembers:context:);
    v71 = *(v0 + 216);
    v72 = MEMORY[0x277D84950];

    return MEMORY[0x282200430](v71, v68, v67, v70, v72);
  }
}

{
  v2 = *v1;
  *(*v1 + 384) = v0;

  v3 = *(v2 + 256);
  if (v0)
  {
    v4 = MLS.Client.createGroup(identifier:otherMembers:context:);
  }

  else
  {
    v4 = MLS.Client.createGroup(identifier:otherMembers:context:);
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t closure #1 in MLS.Client.createGroup(identifier:otherMembers:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  v8[142] = a8;
  v8[141] = a7;
  v8[140] = a6;
  v8[139] = a5;
  v8[138] = a4;
  v8[137] = a1;
  v8[143] = *a6;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v9 = static MLSActor.shared;
  v8[144] = static MLSActor.shared;

  return MEMORY[0x2822009F8](closure #1 in MLS.Client.createGroup(identifier:otherMembers:context:), v9, 0);
}

uint64_t closure #1 in MLS.Client.createGroup(identifier:otherMembers:context:)()
{
  v1 = *(v0 + 1144);
  v2 = *(v0 + 1120);
  v3 = *(v0 + 1112);
  v4 = *(v0 + 1104);
  swift_beginAccess();
  v5._countAndFlagsBits = 0x6341746E65696C43;
  v5._object = 0xEB00000000726F74;
  MetricCollector.end(label:)(v5);
  swift_endAccess();
  *(v0 + 1088) = v3;
  v6 = swift_task_alloc();
  v6[2] = v1[10];
  v7 = v1[11];
  *(v0 + 1160) = v7;
  v6[3] = v7;
  v6[4] = v1[12];
  v8 = v1[13];
  *(v0 + 1168) = v8;
  v6[5] = v8;
  v9 = type metadata accessor for Array();
  WitnessTable = swift_getWitnessTable();
  v12 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #1 in closure #1 in MLS.Client.createGroup(identifier:otherMembers:context:), v6, v9, &type metadata for MLS.AllMember, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v11);
  *(v0 + 1176) = v12;

  v13 = v2[17];
  v14 = v2[18];
  __swift_project_boxed_opaque_existential_1(v2 + 14, v13);
  swift_beginAccess();
  *(v0 + 656) = *(v4 + 16);
  v15 = *(v4 + 32);
  v16 = *(v4 + 48);
  v17 = *(v4 + 64);
  *(v0 + 720) = *(v4 + 80);
  *(v0 + 688) = v16;
  *(v0 + 704) = v17;
  *(v0 + 672) = v15;
  v19 = *(v4 + 48);
  v18 = *(v4 + 64);
  v20 = *(v4 + 32);
  *(v0 + 792) = *(v4 + 80);
  *(v0 + 760) = v19;
  *(v0 + 776) = v18;
  *(v0 + 744) = v20;
  *(v0 + 728) = *(v4 + 16);
  v21 = *(v14 + 16);
  outlined init with copy of MLS.OutgoingEventState?(v0 + 656, v0 + 800, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);
  v26 = (v21 + *v21);
  v22 = swift_task_alloc();
  *(v0 + 1184) = v22;
  *v22 = v0;
  v22[1] = closure #1 in MLS.Client.createGroup(identifier:otherMembers:context:);
  v23 = *(v0 + 1136);
  v24 = *(v0 + 1128);

  return v26(v0 + 16, v24, v23, v12, v0 + 728, v13, v14);
}

{
  v2 = *v1;
  v3 = *v1;
  v4 = *v1 + 728;
  *(*v1 + 1192) = v0;

  v5 = *(v2 + 1152);
  if (v0)
  {
    *(v3 + 872) = *v4;
    v6 = *(v4 + 16);
    v7 = *(v4 + 32);
    v8 = *(v4 + 48);
    *(v3 + 936) = *(v4 + 64);
    *(v3 + 904) = v7;
    *(v3 + 920) = v8;
    *(v3 + 888) = v6;
    outlined destroy of NSObject?(v3 + 872, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

    v9 = closure #1 in MLS.Client.createGroup(identifier:otherMembers:context:);
  }

  else
  {
    *(v3 + 944) = *v4;
    v10 = *(v4 + 16);
    v11 = *(v4 + 32);
    v12 = *(v4 + 48);
    *(v3 + 1008) = *(v4 + 64);
    *(v3 + 976) = v11;
    *(v3 + 992) = v12;
    *(v3 + 960) = v10;
    outlined destroy of NSObject?(v3 + 944, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

    v9 = closure #1 in MLS.Client.createGroup(identifier:otherMembers:context:);
  }

  return MEMORY[0x2822009F8](v9, v5, 0);
}

{
  v36 = v0;

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 1104);
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *&v35[0] = v5;
    *v4 = 136315138;
    swift_beginAccess();
    v6 = *(v3 + 16);
    v7 = *(v3 + 24);

    v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v7, v35);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_264F1F000, v1, v2, "createGroup finished { identifier: %s }", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    MEMORY[0x266755550](v5, -1, -1);
    MEMORY[0x266755550](v4, -1, -1);
  }

  v9 = *(v0 + 1192);
  v10 = *(v0 + 1168);
  v11 = *(v0 + 1160);
  v12 = *(v0 + 1096);
  v13._countAndFlagsBits = 0x6E61487473726946;
  v13._object = 0xEE00656B61687364;
  MetricCollector.end(label:)(v13);
  v15 = *(v0 + 80);
  v14 = *(v0 + 96);
  v16 = *(v0 + 64);
  *(v0 + 208) = v15;
  *(v0 + 224) = v14;
  v17 = *(v0 + 96);
  v19 = *(v0 + 112);
  v18 = *(v0 + 128);
  *(v0 + 240) = v19;
  *(v0 + 256) = v18;
  v20 = *(v0 + 32);
  *(v0 + 144) = *(v0 + 16);
  *(v0 + 160) = v20;
  v21 = *(v0 + 64);
  v23 = *(v0 + 16);
  v22 = *(v0 + 32);
  v24 = *(v0 + 48);
  *(v0 + 176) = v24;
  *(v0 + 192) = v21;
  v35[4] = v15;
  v35[5] = v17;
  v25 = *(v0 + 128);
  v35[6] = v19;
  v35[7] = v25;
  v35[0] = v23;
  v35[1] = v22;
  v35[2] = v24;
  v35[3] = v16;
  outlined init with copy of MLS.OutgoingEventState?(v0 + 144, v0 + 272, &_s15SecureMessaging3MLSO29GroupCreationProcessedContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO29GroupCreationProcessedContextVy_10Foundation4DataVGMR);
  MLS.GroupCreationProcessedContext.init(dataContext:)(v35, v11, v10, v12);
  v26 = *(v0 + 96);
  if (v9)
  {
    *(v0 + 464) = *(v0 + 80);
    *(v0 + 480) = v26;
    v27 = *(v0 + 128);
    *(v0 + 496) = *(v0 + 112);
    *(v0 + 512) = v27;
    v28 = *(v0 + 32);
    *(v0 + 400) = *(v0 + 16);
    *(v0 + 416) = v28;
    v29 = *(v0 + 64);
    *(v0 + 432) = *(v0 + 48);
    *(v0 + 448) = v29;
    outlined destroy of NSObject?(v0 + 400, &_s15SecureMessaging3MLSO29GroupCreationProcessedContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO29GroupCreationProcessedContextVy_10Foundation4DataVGMR);
  }

  else
  {
    *(v0 + 592) = *(v0 + 80);
    *(v0 + 608) = v26;
    v31 = *(v0 + 128);
    *(v0 + 624) = *(v0 + 112);
    *(v0 + 640) = v31;
    v32 = *(v0 + 32);
    *(v0 + 528) = *(v0 + 16);
    *(v0 + 544) = v32;
    v33 = *(v0 + 64);
    *(v0 + 560) = *(v0 + 48);
    *(v0 + 576) = v33;
    outlined destroy of NSObject?(v0 + 528, &_s15SecureMessaging3MLSO29GroupCreationProcessedContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO29GroupCreationProcessedContextVy_10Foundation4DataVGMR);
  }

  v30 = *(v0 + 8);

  return v30();
}

{
  return (*(v0 + 8))();
}

uint64_t MLS.Client.joinGroup(identifier:otherMembers:welcome:contextV2:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[7] = a6;
  v7[8] = v6;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  v8 = *v6;
  v9 = *(*v6 + 88);
  v7[9] = v9;
  v10 = type metadata accessor for Optional();
  v7[10] = v10;
  v7[11] = *(v10 - 8);
  v7[12] = swift_task_alloc();
  v11 = *(v8 + 104);
  v7[13] = v11;
  v7[14] = type metadata accessor for MLS.GroupCreationContext_v2(255, v9, v11, v12);
  v13 = type metadata accessor for Optional();
  v7[15] = v13;
  v7[16] = *(v13 - 8);
  v7[17] = swift_task_alloc();
  v7[18] = swift_task_alloc();
  v7[19] = swift_task_alloc();
  v7[20] = swift_task_alloc();
  v7[21] = type metadata accessor for MLS.GroupCreationContext(255, v9, v11, v14);
  v15 = type metadata accessor for Optional();
  v7[22] = v15;
  v7[23] = *(v15 - 8);
  v7[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](MLS.Client.joinGroup(identifier:otherMembers:welcome:contextV2:), v6, 0);
}

uint64_t MLS.Client.joinGroup(identifier:otherMembers:welcome:contextV2:)()
{
  v63 = v0;

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v4 = v0[3];
    v3 = v0[4];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v62 = v6;
    *v5 = 136315138;
    *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v4, v3, &v62);
    _os_log_impl(&dword_264F1F000, v1, v2, "legacy joinGroupV2 called { groupIdentifier: %s }", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x266755550](v6, -1, -1);
    MEMORY[0x266755550](v5, -1, -1);
  }

  v7 = v0 + 15;
  v8 = v0[20];
  v10 = v0 + 14;
  v9 = v0[14];
  v61 = *(v0[16] + 16);
  v61(v8, v0[7], v0[15]);
  v11 = *(v9 - 8);
  v60 = *(v11 + 48);
  v12 = v60(v8, 1, v9);
  v13 = v0[20];
  if (v12 == 1)
  {
    (*(v0[16] + 8))(v13, v0[15]);
    v58 = 0;
    v59 = 0;
  }

  else
  {
    v14 = *v10;
    v58 = v13[1];
    v59 = *v13;
    v15 = *(v11 + 8);

    v15(v13, v14);
    v10 = v0 + 14;
  }

  v16 = v11;
  v17 = v0[19];
  v18 = v0[14];
  v19 = v61;
  v61(v17, v0[7], v0[15]);
  v20 = v60;
  v21 = v60(v17, 1, v18);
  v22 = v0[19];
  if (v21 == 1)
  {
    v23 = v0[12];
    v24 = v0[9];
    (*(v0[16] + 8))(v22, v0[15]);
    (*(*(v24 - 8) + 56))(v23, 1, 1, v24);
  }

  else
  {
    v25 = v0[14];
    v26 = v0[19];
    (*(v0[11] + 16))(v0[12], v22 + *(v25 + 36), v0[10]);
    (*(v16 + 8))(v26, v25);
  }

  v27 = v0[18];
  v28 = v0[14];
  v61(v27, v0[7], v0[15]);
  v29 = v60(v27, 1, v28);
  v30 = v0[18];
  if (v29 == 1)
  {
    (*(v0[16] + 8))(v30, v0[15]);
    v31 = 0;
  }

  else
  {
    v32 = *v10;
    v31 = *(v30 + *(*v10 + 40));
    v33 = v16;
    v34 = *(v16 + 8);
    v35 = v0[18];

    v34(v35, v32);
    v16 = v33;
    v20 = v60;
    v19 = v61;
  }

  v36 = v0[17];
  v38 = v0[14];
  v37 = v0[15];
  v39 = v0[7];
  v62 = v31;
  v19(v36, v39, v37);
  if (v20(v36, 1, v38) == 1)
  {
    v40 = 0;
    v16 = v0[16];
    v41 = 0xF000000000000000;
  }

  else
  {
    v42 = (v0[17] + *(v0[14] + 44));
    v40 = *v42;
    v41 = v42[1];
    outlined copy of Data?(*v42, v41);
    v7 = v0 + 14;
  }

  v43 = *v7;
  v44 = v0[24];
  v45 = v0[21];
  v47 = v0[12];
  v46 = v0[13];
  v48 = v0[9];
  (*(v16 + 8))(v0[17], v43);
  v49 = MLS.GroupCreationContext.init(identifier:clientContext:metricCollector:groupClientContextBlob:)(v59, v58, v47, &v62, v40, v41, v48, v46, v44);
  (*(*(v45 - 8) + 56))(v44, 0, 1, v45, v49);
  v50 = swift_task_alloc();
  v0[25] = v50;
  *v50 = v0;
  v50[1] = MLS.Client.joinGroup(identifier:otherMembers:welcome:contextV2:);
  v51 = v0[24];
  v52 = v0[5];
  v53 = v0[6];
  v54 = v0[3];
  v55 = v0[4];
  v56 = v0[2];

  return MLS.Client.joinGroup(identifier:otherMembers:welcome:context:)(v56, v54, v55, v52, v53, v51);
}

{
  v2 = *(*v1 + 192);
  v3 = *(*v1 + 184);
  v4 = *(*v1 + 176);
  v5 = *v1;
  v5[26] = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v6 = v5[8];

    return MEMORY[0x2822009F8](MLS.Client.joinGroup(identifier:otherMembers:welcome:contextV2:), v6, 0);
  }

  else
  {

    v7 = v5[1];

    return v7();
  }
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t MLS.Client.joinGroup(identifier:otherMembers:welcome:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[32] = a6;
  v7[33] = v6;
  v7[30] = a4;
  v7[31] = a5;
  v7[28] = a2;
  v7[29] = a3;
  v7[27] = a1;
  v8 = *v6;
  v9 = *(*v6 + 80);
  v7[34] = v9;
  v10 = v8[12];
  v7[35] = v10;
  v11 = type metadata accessor for MLS.IncomingMessage(0, v9, v10, a4);
  v7[36] = v11;
  v12 = *(v11 - 8);
  v7[37] = v12;
  v7[38] = *(v12 + 64);
  v7[39] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v7[40] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging15MetricCollectorV5EventVSgMd, &_s15SecureMessaging15MetricCollectorV5EventVSgMR);
  v7[41] = swift_task_alloc();
  v13 = type metadata accessor for UUID();
  v7[42] = v13;
  v7[43] = *(v13 - 8);
  v7[44] = swift_task_alloc();
  v14 = v8[11];
  v7[45] = v14;
  v15 = v8[13];
  v7[46] = v15;
  v7[47] = type metadata accessor for MLS.GroupCreationContext(255, v14, v15, v16);
  v17 = type metadata accessor for Optional();
  v7[48] = v17;
  v7[49] = *(v17 - 8);
  v7[50] = swift_task_alloc();

  return MEMORY[0x2822009F8](MLS.Client.joinGroup(identifier:otherMembers:welcome:context:), v6, 0);
}

uint64_t MLS.Client.joinGroup(identifier:otherMembers:welcome:context:)()
{
  v94 = v0;
  *(v0 + 208) = *(v0 + 240);
  type metadata accessor for Array();
  swift_getWitnessTable();
  if (Collection.isEmpty.getter())
  {

    v1 = Logger.logObject.getter();
    v2 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v1, v2))
    {
      v3 = *(v0 + 272);
      v5 = *(v0 + 232);
      v4 = *(v0 + 240);
      v6 = *(v0 + 224);
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v93[0] = v8;
      *v7 = 136315394;
      *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v5, v93);
      *(v7 + 12) = 2080;
      v9 = MEMORY[0x266754630](v4, v3);
      v11 = v10;

      v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v11, v93);

      *(v7 + 14) = v12;
      _os_log_impl(&dword_264F1F000, v1, v2, "joinGroup failed: no other members specified { groupIdentifier: %s, otherMembers: %s }", v7, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266755550](v8, -1, -1);
      MEMORY[0x266755550](v7, -1, -1);
    }

    else
    {
    }

    lazy protocol witness table accessor for type MLS.GroupCreationError and conformance MLS.GroupCreationError();
    swift_allocError();
    *v27 = 12;
    *(v27 + 8) = 0;
    *(v27 + 16) = 0;
    swift_willThrow();

    v28 = *(v0 + 8);

    return v28();
  }

  else
  {
    v14 = *(v0 + 392);
    v13 = *(v0 + 400);
    v16 = *(v0 + 376);
    v15 = *(v0 + 384);
    v17 = *(v0 + 256);
    v18 = swift_allocObject();
    *(v0 + 408) = v18;
    (*(v14 + 16))(v13, v17, v15);
    v19 = *(v16 - 8);
    if ((*(v19 + 48))(v13, 1, v16) == 1)
    {
      v21 = *(v0 + 344);
      v20 = *(v0 + 352);
      v22 = *(v0 + 336);
      (*(*(v0 + 392) + 8))(*(v0 + 400), *(v0 + 384));
      UUID.init()();
      v23 = UUID.uuidString.getter();
      v25 = v24;
      (*(v21 + 8))(v20, v22);
      v26 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_15SecureMessaging15MetricCollectorV5EventVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
      *(v18 + 16) = v23;
      *(v18 + 24) = v25;
      *(v18 + 32) = xmmword_2651B5F50;
      *(v18 + 48) = v26;
      *(v18 + 56) = xmmword_2651B5F50;
      *(v18 + 72) = xmmword_2651B5F50;
    }

    else
    {
      MLS.GroupCreationContext.dataContext.getter(*(v0 + 376), v91);
      (*(v19 + 8))(*(v0 + 400), *(v0 + 376));
      v30 = v91[3];
      *(v18 + 48) = v91[2];
      *(v18 + 64) = v30;
      *(v18 + 80) = v92;
      v31 = v91[1];
      *(v18 + 16) = v91[0];
      *(v18 + 32) = v31;
    }

    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v32, v33))
    {
      v88 = v33;
      v34 = *(v0 + 272);
      v36 = *(v0 + 232);
      v35 = *(v0 + 240);
      v37 = *(v0 + 224);
      v38 = swift_slowAlloc();
      v86 = swift_slowAlloc();
      v93[0] = v86;
      *v38 = 136315650;
      *(v38 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v36, v93);
      *(v38 + 12) = 2080;
      v39 = MEMORY[0x266754630](v35, v34);
      v41 = v40;

      v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v41, v93);

      *(v38 + 14) = v42;
      *(v38 + 22) = 2080;
      swift_beginAccess();
      v43 = *(v18 + 64);
      *(v0 + 48) = *(v18 + 48);
      *(v0 + 64) = v43;
      *(v0 + 80) = *(v18 + 80);
      v44 = *(v18 + 32);
      *(v0 + 16) = *(v18 + 16);
      *(v0 + 32) = v44;
      outlined init with copy of MLS.OutgoingEventState?(v0 + 16, v0 + 88, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);
      v45 = specialized MLS.GroupCreationContext.description.getter();
      v47 = v46;
      outlined destroy of NSObject?(v0 + 16, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);
      v48 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v45, v47, v93);

      *(v38 + 24) = v48;
      _os_log_impl(&dword_264F1F000, v32, v88, "joinGroup called { groupIdentifier: %s, otherMembers: %s, context: %s }", v38, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x266755550](v86, -1, -1);
      MEMORY[0x266755550](v38, -1, -1);
    }

    else
    {
    }

    v49 = *(v0 + 328);
    v75 = *(v0 + 320);
    v77 = *(v0 + 296);
    v81 = *(v0 + 288);
    v83 = *(v0 + 312);
    v79 = *(v0 + 248);
    swift_beginAccess();
    Date.init()();
    v50 = type metadata accessor for MetricCollector.Event(0);
    v51 = *(v50 + 20);
    v52 = type metadata accessor for Date();
    v53 = *(*(v52 - 8) + 56);
    v53(v49 + v51, 1, 1, v52);
    v54 = *(*(v50 - 8) + 56);
    v54(v49, 0, 1, v50);
    specialized Dictionary.subscript.setter(v49, 0x646E456F54646E45, 0xE800000000000000);
    Date.init()();
    v53(v49 + *(v50 + 20), 1, 1, v52);
    v54(v49, 0, 1, v50);
    specialized Dictionary.subscript.setter(v49, 0x6E61487473726946, 0xEE00656B61687364);
    Date.init()();
    v53(v49 + *(v50 + 20), 1, 1, v52);
    v54(v49, 0, 1, v50);
    specialized Dictionary.subscript.setter(v49, 0x6341746E65696C43, 0xEB00000000726F74);
    swift_endAccess();
    v55 = type metadata accessor for TaskPriority();
    (*(*(v55 - 8) + 56))(v75, 1, 1, v55);
    (*(v77 + 16))(v83, v79, v81);
    v56 = one-time initialization token for shared;

    v89 = v18;
    if (v56 != -1)
    {
      swift_once();
    }

    v57 = *(v0 + 360);
    v90 = *(v0 + 320);
    v58 = *(v0 + 296);
    v59 = *(v0 + 304);
    v76 = *(v0 + 280);
    v78 = *(v0 + 368);
    v60 = *(v0 + 272);
    v82 = *(v0 + 264);
    v84 = *(v0 + 288);
    v74 = *(v0 + 240);
    v85 = *(v0 + 232);
    v87 = *(v0 + 312);
    v80 = *(v0 + 224);
    v61 = static MLSActor.shared;
    v62 = lazy protocol witness table accessor for type MLSActor and conformance MLSActor();
    v63 = (*(v58 + 80) + 80) & ~*(v58 + 80);
    v64 = (v59 + v63 + 7) & 0xFFFFFFFFFFFFFFF8;
    v65 = swift_allocObject();
    *(v65 + 2) = v61;
    *(v65 + 3) = v62;
    *(v65 + 4) = v60;
    *(v65 + 5) = v57;
    *(v65 + 6) = v76;
    *(v65 + 7) = v78;
    *(v65 + 8) = v89;
    *(v65 + 9) = v74;
    (*(v58 + 32))(&v65[v63], v87, v84);
    *&v65[v64] = v82;
    v66 = &v65[(v64 + 15) & 0xFFFFFFFFFFFFFFF8];
    *v66 = v80;
    *(v66 + 1) = v85;
    v68 = type metadata accessor for MLS.GroupCreationProcessedContext(0, v57, v78, v67);

    v69 = _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfC(0, 0, v90, &async function pointer to partial apply for closure #1 in MLS.Client.joinGroup(identifier:otherMembers:welcome:context:), v65, v68);
    *(v0 + 416) = v69;
    v70 = swift_task_alloc();
    *(v0 + 424) = v70;
    v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    *v70 = v0;
    v70[1] = MLS.Client.joinGroup(identifier:otherMembers:welcome:context:);
    v72 = *(v0 + 216);
    v73 = MEMORY[0x277D84950];

    return MEMORY[0x282200430](v72, v69, v68, v71, v73);
  }
}

{
  v2 = *v1;
  *(*v1 + 432) = v0;

  v3 = *(v2 + 264);
  if (v0)
  {
    v4 = MLS.Client.joinGroup(identifier:otherMembers:welcome:context:);
  }

  else
  {
    v4 = MLS.Client.joinGroup(identifier:otherMembers:welcome:context:);
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t closure #1 in MLS.Client.joinGroup(identifier:otherMembers:welcome:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8)
{
  v8[159] = v12;
  v8[158] = a8;
  v8[157] = a7;
  v8[156] = a6;
  v8[155] = a5;
  v8[154] = a4;
  v8[153] = a1;
  v8[160] = *a7;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v9 = static MLSActor.shared;
  v8[161] = static MLSActor.shared;

  return MEMORY[0x2822009F8](closure #1 in MLS.Client.joinGroup(identifier:otherMembers:welcome:context:), v9, 0);
}

uint64_t closure #1 in MLS.Client.joinGroup(identifier:otherMembers:welcome:context:)()
{
  v1 = *(v0 + 1280);
  v2 = *(v0 + 1256);
  v3 = *(v0 + 1240);
  v4 = *(v0 + 1232);
  swift_beginAccess();
  v5._countAndFlagsBits = 0x6341746E65696C43;
  v5._object = 0xEB00000000726F74;
  MetricCollector.end(label:)(v5);
  swift_endAccess();
  *(v0 + 1216) = v3;
  v6 = swift_task_alloc();
  v7 = v1[10];
  v6[2] = v7;
  v8 = v1[11];
  *(v0 + 1296) = v8;
  v6[3] = v8;
  v9 = v1[12];
  v6[4] = v9;
  v10 = v1[13];
  *(v0 + 1304) = v10;
  v6[5] = v10;
  v11 = type metadata accessor for Array();
  WitnessTable = swift_getWitnessTable();
  v14 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #1 in closure #1 in MLS.Client.joinGroup(identifier:otherMembers:welcome:context:), v6, v11, &type metadata for MLS.AllMember, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v13);
  *(v0 + 1312) = v14;

  v16 = type metadata accessor for MLS.IncomingMessage(0, v7, v9, v15);
  MLS.IncomingMessage.allMemberIncomingMessage.getter(v16, v0 + 1016);
  v18 = v2[17];
  v17 = v2[18];
  __swift_project_boxed_opaque_existential_1(v2 + 14, v18);
  v19 = *(v0 + 1032);
  *(v0 + 1080) = *(v0 + 1016);
  *(v0 + 1096) = v19;
  *(v0 + 1112) = *(v0 + 1048);
  *(v0 + 1122) = *(v0 + 1058);
  swift_beginAccess();
  *(v0 + 656) = *(v4 + 16);
  v20 = *(v4 + 32);
  v21 = *(v4 + 48);
  v22 = *(v4 + 64);
  *(v0 + 720) = *(v4 + 80);
  *(v0 + 688) = v21;
  *(v0 + 704) = v22;
  *(v0 + 672) = v20;
  v24 = *(v4 + 48);
  v23 = *(v4 + 64);
  v25 = *(v4 + 32);
  *(v0 + 792) = *(v4 + 80);
  *(v0 + 760) = v24;
  *(v0 + 776) = v23;
  *(v0 + 744) = v25;
  *(v0 + 728) = *(v4 + 16);
  v26 = *(v17 + 24);
  outlined init with copy of MLS.OutgoingEventState?(v0 + 656, v0 + 800, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);
  v31 = (v26 + *v26);
  v27 = swift_task_alloc();
  *(v0 + 1320) = v27;
  *v27 = v0;
  v27[1] = closure #1 in MLS.Client.joinGroup(identifier:otherMembers:welcome:context:);
  v28 = *(v0 + 1272);
  v29 = *(v0 + 1264);

  return v31(v0 + 16, v29, v28, v14, v0 + 1080, v0 + 728, v18, v17);
}

{
  v2 = *v1;
  v3 = *v1;
  v4 = *v1 + 728;
  *(*v1 + 1328) = v0;

  v5 = *(v2 + 1288);
  if (v0)
  {
    *(v3 + 872) = *v4;
    v6 = *(v4 + 16);
    v7 = *(v4 + 32);
    v8 = *(v4 + 48);
    *(v3 + 936) = *(v4 + 64);
    *(v3 + 904) = v7;
    *(v3 + 920) = v8;
    *(v3 + 888) = v6;
    outlined destroy of NSObject?(v3 + 872, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

    v9 = closure #1 in MLS.Client.joinGroup(identifier:otherMembers:welcome:context:);
  }

  else
  {
    *(v3 + 944) = *v4;
    v10 = *(v4 + 16);
    v11 = *(v4 + 32);
    v12 = *(v4 + 48);
    *(v3 + 1008) = *(v4 + 64);
    *(v3 + 976) = v11;
    *(v3 + 992) = v12;
    *(v3 + 960) = v10;
    outlined destroy of NSObject?(v3 + 944, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

    v9 = closure #1 in MLS.Client.joinGroup(identifier:otherMembers:welcome:context:);
  }

  return MEMORY[0x2822009F8](v9, v5, 0);
}

{
  v36 = v0;

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 1232);
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *&v35[0] = v5;
    *v4 = 136315138;
    swift_beginAccess();
    v6 = *(v3 + 16);
    v7 = *(v3 + 24);

    v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v7, v35);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_264F1F000, v1, v2, "joinGroup finished { identifier: %s }", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    MEMORY[0x266755550](v5, -1, -1);
    MEMORY[0x266755550](v4, -1, -1);
  }

  v9 = *(v0 + 1328);
  v10 = *(v0 + 1304);
  v11 = *(v0 + 1296);
  v12 = *(v0 + 1224);
  v13._countAndFlagsBits = 0x6E61487473726946;
  v13._object = 0xEE00656B61687364;
  MetricCollector.end(label:)(v13);
  v15 = *(v0 + 80);
  v14 = *(v0 + 96);
  v16 = *(v0 + 64);
  *(v0 + 208) = v15;
  *(v0 + 224) = v14;
  v17 = *(v0 + 96);
  v19 = *(v0 + 112);
  v18 = *(v0 + 128);
  *(v0 + 240) = v19;
  *(v0 + 256) = v18;
  v20 = *(v0 + 32);
  *(v0 + 144) = *(v0 + 16);
  *(v0 + 160) = v20;
  v21 = *(v0 + 64);
  v23 = *(v0 + 16);
  v22 = *(v0 + 32);
  v24 = *(v0 + 48);
  *(v0 + 176) = v24;
  *(v0 + 192) = v21;
  v35[4] = v15;
  v35[5] = v17;
  v25 = *(v0 + 128);
  v35[6] = v19;
  v35[7] = v25;
  v35[0] = v23;
  v35[1] = v22;
  v35[2] = v24;
  v35[3] = v16;
  outlined init with copy of MLS.OutgoingEventState?(v0 + 144, v0 + 272, &_s15SecureMessaging3MLSO29GroupCreationProcessedContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO29GroupCreationProcessedContextVy_10Foundation4DataVGMR);
  MLS.GroupCreationProcessedContext.init(dataContext:)(v35, v11, v10, v12);
  v26 = *(v0 + 96);
  if (v9)
  {
    *(v0 + 464) = *(v0 + 80);
    *(v0 + 480) = v26;
    v27 = *(v0 + 128);
    *(v0 + 496) = *(v0 + 112);
    *(v0 + 512) = v27;
    v28 = *(v0 + 32);
    *(v0 + 400) = *(v0 + 16);
    *(v0 + 416) = v28;
    v29 = *(v0 + 64);
    *(v0 + 432) = *(v0 + 48);
    *(v0 + 448) = v29;
    outlined destroy of NSObject?(v0 + 400, &_s15SecureMessaging3MLSO29GroupCreationProcessedContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO29GroupCreationProcessedContextVy_10Foundation4DataVGMR);
  }

  else
  {
    *(v0 + 592) = *(v0 + 80);
    *(v0 + 608) = v26;
    v31 = *(v0 + 128);
    *(v0 + 624) = *(v0 + 112);
    *(v0 + 640) = v31;
    v32 = *(v0 + 32);
    *(v0 + 528) = *(v0 + 16);
    *(v0 + 544) = v32;
    v33 = *(v0 + 64);
    *(v0 + 560) = *(v0 + 48);
    *(v0 + 576) = v33;
    outlined destroy of NSObject?(v0 + 528, &_s15SecureMessaging3MLSO29GroupCreationProcessedContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO29GroupCreationProcessedContextVy_10Foundation4DataVGMR);
  }

  outlined destroy of NSObject?(v0 + 1016, &_s15SecureMessaging3MLSO15IncomingMessageVy_AC9AllMemberOGMd, &_s15SecureMessaging3MLSO15IncomingMessageVy_AC9AllMemberOGMR);
  v30 = *(v0 + 8);

  return v30();
}

{
  outlined destroy of NSObject?(v0 + 1016, &_s15SecureMessaging3MLSO15IncomingMessageVy_AC9AllMemberOGMd, &_s15SecureMessaging3MLSO15IncomingMessageVy_AC9AllMemberOGMR);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t MLS.Client.delete(group:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v5[7] = swift_task_alloc();
  v7 = type metadata accessor for UUID();
  v5[8] = v7;
  v5[9] = *(v7 - 8);
  v5[10] = swift_task_alloc();
  v8 = *(v6 + 88);
  v5[11] = v8;
  v9 = *(v6 + 104);
  v5[12] = v9;
  v5[13] = type metadata accessor for MLS.GroupDeletionContext(255, v8, v9, v10);
  v11 = type metadata accessor for Optional();
  v5[14] = v11;
  v5[15] = *(v11 - 8);
  v5[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](MLS.Client.delete(group:context:), v4, 0);
}

uint64_t MLS.Client.delete(group:context:)()
{
  v49 = v0;
  v1 = v0[16];
  v2 = v0[13];
  (*(v0[15] + 16))(v1, v0[5], v0[14]);
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = v0[9];
    v5 = v0[10];
    v6 = v0[8];
    (*(v0[15] + 8))(v0[16], v0[14]);
    UUID.init()();
    v7 = UUID.uuidString.getter();
    v8 = v5;
    v10 = v9;
    (*(v4 + 8))(v8, v6);
    v11 = 0;
    v12 = 0xF000000000000000;
  }

  else
  {
    MLS.GroupDeletionContext.dataContext.getter(v0[13], v48);
    v7 = v48[0];
    v10 = v48[1];
    v11 = v48[2];
    v12 = v48[3];
    (*(v3 + 8))(v0[16], v0[13]);
  }

  v0[18] = v11;
  v0[19] = v12;
  v0[17] = v10;

  outlined copy of Data?(v11, v12);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();

  outlined consume of Data?(v11, v12);
  v47 = v7;
  if (os_log_type_enabled(v13, v14))
  {
    v15 = v0[3];
    v16 = v0[4];
    v17 = swift_slowAlloc();
    v18 = v12;
    v19 = swift_slowAlloc();
    v48[0] = v19;
    *v17 = 136315394;
    *(v17 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, v48);
    *(v17 + 12) = 2080;
    v20 = specialized MLS.GroupDeletionContext.description.getter(v47, v10, v11, v18);
    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, v48);

    *(v17 + 14) = v22;
    _os_log_impl(&dword_264F1F000, v13, v14, "delete called { groupIdentifier: %s, context: %s }", v17, 0x16u);
    swift_arrayDestroy();
    v23 = v19;
    v12 = v18;
    MEMORY[0x266755550](v23, -1, -1);
    MEMORY[0x266755550](v17, -1, -1);
  }

  v45 = v12;
  v24 = v0[7];
  v25 = type metadata accessor for TaskPriority();
  (*(*(v25 - 8) + 56))(v24, 1, 1, v25);

  outlined copy of Data?(v11, v12);
  v26 = one-time initialization token for shared;

  v27 = v10;
  v44 = v11;
  if (v26 != -1)
  {
    swift_once();
  }

  v28 = v0[11];
  v29 = v0[12];
  v30 = v0[6];
  v46 = v0[7];
  v32 = v0[3];
  v31 = v0[4];
  v33 = static MLSActor.shared;
  v34 = lazy protocol witness table accessor for type MLSActor and conformance MLSActor();
  v35 = swift_allocObject();
  v35[2] = v33;
  v35[3] = v34;
  v35[4] = v30;
  v35[5] = v32;
  v35[6] = v31;
  v35[7] = v47;
  v35[8] = v27;
  v35[9] = v44;
  v35[10] = v45;
  v37 = type metadata accessor for MLS.GroupDeletionProcessedContext(0, v28, v29, v36);

  v38 = _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfC(0, 0, v46, &async function pointer to partial apply for closure #1 in MLS.Client.delete(group:context:), v35, v37);
  v0[20] = v38;
  v39 = swift_task_alloc();
  v0[21] = v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  *v39 = v0;
  v39[1] = MLS.Client.delete(group:context:);
  v41 = v0[2];
  v42 = MEMORY[0x277D84950];

  return MEMORY[0x282200430](v41, v38, v37, v40, v42);
}

{
  v2 = *v1;
  *(*v1 + 176) = v0;

  v3 = *(v2 + 48);
  if (v0)
  {
    v4 = MLS.Client.delete(group:context:);
  }

  else
  {
    v4 = MLS.Client.delete(group:context:);
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{
  v1 = v0[19];
  v2 = v0[18];

  outlined consume of Data?(v2, v1);

  v3 = v0[1];

  return v3();
}

{
  v1 = v0[19];
  v2 = v0[18];

  outlined consume of Data?(v2, v1);

  v3 = v0[1];

  return v3();
}

uint64_t closure #1 in MLS.Client.delete(group:context:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[14] = v12;
  v8[15] = v13;
  v8[12] = a7;
  v8[13] = a8;
  v8[10] = a5;
  v8[11] = a6;
  v8[8] = a1;
  v8[9] = a4;
  v8[16] = *a4;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v9 = static MLSActor.shared;
  v8[17] = static MLSActor.shared;

  return MEMORY[0x2822009F8](closure #1 in MLS.Client.delete(group:context:), v9, 0);
}

uint64_t closure #1 in MLS.Client.delete(group:context:)()
{
  v2 = *(v0 + 112);
  v1 = *(v0 + 120);
  v10 = *(v0 + 96);
  v3 = *(v0 + 72);
  v4 = v3[17];
  v5 = v3[18];
  __swift_project_boxed_opaque_existential_1(v3 + 14, v4);
  *(v0 + 16) = v10;
  *(v0 + 32) = v2;
  *(v0 + 40) = v1;
  v11 = (*(v5 + 32) + **(v5 + 32));
  v6 = swift_task_alloc();
  *(v0 + 144) = v6;
  *v6 = v0;
  v6[1] = closure #1 in MLS.Client.delete(group:context:);
  v7 = *(v0 + 80);
  v8 = *(v0 + 88);

  return v11(v0 + 48, v7, v8, v0 + 16, v4, v5);
}

{
  v2 = *v1;
  *(*v1 + 152) = v0;

  v3 = *(v2 + 136);
  if (v0)
  {
    v4 = closure #1 in MLS.Client.delete(group:context:);
  }

  else
  {
    v4 = closure #1 in MLS.Client.delete(group:context:);
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{
  v16 = v0;
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[6];
  v4 = v0[7];

  outlined copy of Data?(v2, v1);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  outlined consume of Data?(v2, v1);
  if (os_log_type_enabled(v5, v6))
  {
    v8 = v0[12];
    v7 = v0[13];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v15[0] = v10;
    *v9 = 136315138;
    *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v7, v15);
    _os_log_impl(&dword_264F1F000, v5, v6, "delete finished { identifier: %s }", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x266755550](v10, -1, -1);
    MEMORY[0x266755550](v9, -1, -1);
  }

  v11 = v0[16];
  v12 = v0[8];
  v15[0] = v3;
  v15[1] = v4;
  MLS.GroupDeletionProcessedContext.init(dataContext:)(v15, *(v11 + 88), *(v11 + 104), v12);
  v13 = v0[1];

  return v13();
}

{
  return (*(v0 + 8))();
}

uint64_t MLS.Client.group(identifier:context:)(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  *(v5 + 32) = a3;
  *(v5 + 40) = v4;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  *(v5 + 48) = swift_task_alloc();
  v7 = type metadata accessor for UUID();
  *(v5 + 56) = v7;
  *(v5 + 64) = *(v7 - 8);
  *(v5 + 72) = swift_task_alloc();
  *(v5 + 80) = *a4;

  return MEMORY[0x2822009F8](MLS.Client.group(identifier:context:), v4, 0);
}

uint64_t MLS.Client.group(identifier:context:)()
{
  v33 = v0;
  if (v0[11])
  {
    v1 = v0[10];
    v2 = v0[11];
  }

  else
  {
    v4 = v0[8];
    v3 = v0[9];
    v5 = v0[7];
    UUID.init()();
    v1 = UUID.uuidString.getter();
    v2 = v6;
    (*(v4 + 8))(v3, v5);
  }

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v10 = v0[3];
    v9 = v0[4];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v30 = v12;
    *v11 = 136315394;
    *(v11 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v9, &v30);
    *(v11 + 12) = 2080;
    v31 = 0;
    v32 = 0xE000000000000000;

    _StringGuts.grow(_:)(33);

    v31 = 0xD00000000000001ELL;
    v32 = 0x80000002651E89B0;
    MEMORY[0x2667545A0](v1, v2);
    MEMORY[0x2667545A0](41, 0xE100000000000000);

    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v32, &v30);

    *(v11 + 14) = v13;
    _os_log_impl(&dword_264F1F000, v7, v8, "group called { groupIdentifier: %s, context: %s }", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v12, -1, -1);
    MEMORY[0x266755550](v11, -1, -1);
  }

  v14 = v0[6];
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  v16 = one-time initialization token for shared;

  if (v16 != -1)
  {
    swift_once();
  }

  v18 = v0[5];
  v17 = v0[6];
  v20 = v0[3];
  v19 = v0[4];
  v21 = static MLSActor.shared;
  v22 = lazy protocol witness table accessor for type MLSActor and conformance MLSActor();
  v23 = swift_allocObject();
  v23[2] = v21;
  v23[3] = v22;
  v23[4] = v18;
  v23[5] = v20;
  v23[6] = v19;
  v23[7] = v1;
  v23[8] = v2;

  v24 = _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfC15SecureMessaging3MLSO14KeyPackageInfoV_Tt2g5Tm(0, 0, v17, &async function pointer to partial apply for closure #1 in MLS.Client.group(identifier:context:), v23, &type metadata for MLS.Group);
  v0[12] = v24;
  v25 = swift_task_alloc();
  v0[13] = v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  *v25 = v0;
  v25[1] = MLS.Client.group(identifier:context:);
  v27 = v0[2];
  v28 = MEMORY[0x277D84950];

  return MEMORY[0x282200430](v27, v24, &type metadata for MLS.Group, v26, v28);
}

{
  v2 = *v1;
  *(*v1 + 112) = v0;

  v3 = *(v2 + 40);
  if (v0)
  {
    v4 = MLS.Client.group(identifier:context:);
  }

  else
  {
    v4 = MLS.Client.group(identifier:context:);
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t closure #1 in MLS.Client.group(identifier:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[74] = a8;
  v8[73] = a7;
  v8[72] = a6;
  v8[71] = a5;
  v8[70] = a4;
  v8[69] = a1;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v9 = static MLSActor.shared;
  v8[75] = static MLSActor.shared;

  return MEMORY[0x2822009F8](closure #1 in MLS.Client.group(identifier:context:), v9, 0);
}

uint64_t closure #1 in MLS.Client.group(identifier:context:)()
{
  v1 = v0[74];
  v2 = v0[73];
  v3 = v0[70];
  v4 = v3[17];
  v5 = v3[18];
  __swift_project_boxed_opaque_existential_1(v3 + 14, v4);
  v0[67] = v2;
  v0[68] = v1;
  v10 = (*(v5 + 40) + **(v5 + 40));
  v6 = swift_task_alloc();
  v0[76] = v6;
  *v6 = v0;
  v6[1] = closure #1 in MLS.Client.group(identifier:context:);
  v7 = v0[72];
  v8 = v0[71];

  return v10(v0 + 2, v8, v7, v0 + 67, v4, v5);
}

{
  v2 = *v1;
  *(*v1 + 616) = v0;

  v3 = *(v2 + 600);
  if (v0)
  {
    v4 = closure #1 in MLS.Client.group(identifier:context:);
  }

  else
  {
    v4 = closure #1 in MLS.Client.group(identifier:context:);
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{
  v36 = v0;
  v1 = *(v0 + 48);
  *(v0 + 168) = *(v0 + 64);
  v2 = *(v0 + 96);
  *(v0 + 184) = *(v0 + 80);
  *(v0 + 200) = v2;
  v3 = *(v0 + 32);
  *(v0 + 120) = *(v0 + 16);
  *(v0 + 136) = v3;
  *(v0 + 216) = *(v0 + 112);
  *(v0 + 152) = v1;

  outlined init with copy of MLS.Group(v0 + 120, v0 + 224);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  outlined destroy of MLS.Group(v0 + 120);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 592);
    v7 = *(v0 + 584);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v28 = v9;
    *v8 = 136315394;
    *(v8 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v6, &v28);
    *(v8 + 12) = 2080;
    v10 = *(v0 + 168);
    v11 = *(v0 + 200);
    v33 = *(v0 + 184);
    v34 = v11;
    v35 = *(v0 + 216);
    v12 = *(v0 + 136);
    v29 = *(v0 + 120);
    v30 = v12;
    v31 = *(v0 + 152);
    v32 = v10;
    outlined init with copy of MLS.Group(v0 + 120, v0 + 432);
    v13 = MLS.Group.description.getter();
    v15 = v14;
    v16 = v34;
    *(v0 + 392) = v33;
    *(v0 + 408) = v16;
    *(v0 + 424) = v35;
    v17 = v30;
    *(v0 + 328) = v29;
    *(v0 + 344) = v17;
    v18 = v32;
    *(v0 + 360) = v31;
    *(v0 + 376) = v18;
    outlined destroy of MLS.Group(v0 + 328);
    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v15, &v28);

    *(v8 + 14) = v19;
    _os_log_impl(&dword_264F1F000, v4, v5, "group finished { identifier: %s, group: %s }", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v9, -1, -1);
    MEMORY[0x266755550](v8, -1, -1);
  }

  v20 = *(v0 + 552);
  v21 = *(v0 + 120);
  v22 = *(v0 + 152);
  *(v20 + 16) = *(v0 + 136);
  *(v20 + 32) = v22;
  *v20 = v21;
  v23 = *(v0 + 168);
  v24 = *(v0 + 184);
  v25 = *(v0 + 200);
  *(v20 + 96) = *(v0 + 216);
  *(v20 + 64) = v24;
  *(v20 + 80) = v25;
  *(v20 + 48) = v23;
  v26 = *(v0 + 8);

  return v26();
}

{
  return (*(v0 + 8))();
}

uint64_t MLS.Client.update(groupDetails:forGroup:)(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = v3;
  *(v4 + 16) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  *(v4 + 40) = swift_task_alloc();
  *(v4 + 48) = *a1;

  return MEMORY[0x2822009F8](MLS.Client.update(groupDetails:forGroup:), v3, 0);
}

uint64_t MLS.Client.update(groupDetails:forGroup:)()
{
  v38 = v0;
  v2 = v0[6];
  v1 = v0[7];

  outlined copy of Data?(v2, v1);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  outlined consume of Data?(v2, v1);
  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[6];
    v5 = v0[7];
    v8 = v0[2];
    v7 = v0[3];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v35 = v10;
    *v9 = 136315394;
    *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v7, &v35);
    *(v9 + 12) = 2080;
    v36 = v6;
    v37 = v5;
    outlined copy of Data?(v6, v5);
    v11 = MLS.GroupDetails.description.getter();
    v13 = v12;
    outlined consume of Data?(v36, v37);
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v13, &v35);

    *(v9 + 14) = v14;
    _os_log_impl(&dword_264F1F000, v3, v4, "updateGroupDetails called { groupIdentifier: %s, groupDetails: %s }", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v10, -1, -1);
    MEMORY[0x266755550](v9, -1, -1);
  }

  v15 = v0[6];
  v16 = v0[7];
  v17 = v0[5];
  v18 = type metadata accessor for TaskPriority();
  (*(*(v18 - 8) + 56))(v17, 1, 1, v18);

  outlined copy of Data?(v15, v16);
  v19 = one-time initialization token for shared;

  if (v19 != -1)
  {
    swift_once();
  }

  v21 = v0[6];
  v20 = v0[7];
  v23 = v0[4];
  v22 = v0[5];
  v25 = v0[2];
  v24 = v0[3];
  v26 = static MLSActor.shared;
  v27 = lazy protocol witness table accessor for type MLSActor and conformance MLSActor();
  v28 = swift_allocObject();
  v28[2] = v26;
  v28[3] = v27;
  v28[4] = v23;
  v28[5] = v21;
  v28[6] = v20;
  v28[7] = v25;
  v28[8] = v24;

  v29 = _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v22, &async function pointer to partial apply for closure #1 in MLS.Client.update(groupDetails:forGroup:), v28);
  v0[8] = v29;
  v30 = swift_task_alloc();
  v0[9] = v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  *v30 = v0;
  v30[1] = MLS.Client.update(groupDetails:forGroup:);
  v32 = MEMORY[0x277D84950];
  v33 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282200430](v31, v29, v33, v31, v32);
}

{
  v2 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = *(v2 + 32);

    v4 = MLS.Client.update(groupDetails:forGroup:);
    v5 = v3;
  }

  else
  {
    v5 = *(v2 + 32);
    v4 = MLS.Client.update(groupDetails:forGroup:);
  }

  return MEMORY[0x2822009F8](v4, v5, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t closure #1 in MLS.Client.update(groupDetails:forGroup:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[7] = a7;
  v8[8] = a8;
  v8[5] = a5;
  v8[6] = a6;
  v8[4] = a4;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v9 = static MLSActor.shared;
  v8[9] = static MLSActor.shared;

  return MEMORY[0x2822009F8](closure #1 in MLS.Client.update(groupDetails:forGroup:), v9, 0);
}

uint64_t closure #1 in MLS.Client.update(groupDetails:forGroup:)()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  v4 = v3[17];
  v5 = v3[18];
  __swift_project_boxed_opaque_existential_1(v3 + 14, v4);
  v0[2] = v2;
  v0[3] = v1;
  v10 = (*(v5 + 48) + **(v5 + 48));
  v6 = swift_task_alloc();
  v0[10] = v6;
  *v6 = v0;
  v6[1] = closure #1 in MLS.Client.update(groupDetails:forGroup:);
  v7 = v0[7];
  v8 = v0[8];

  return v10(v0 + 2, v7, v8, v4, v5);
}

{
  v2 = *v1;
  *(*v1 + 88) = v0;

  v3 = *(v2 + 72);
  if (v0)
  {
    v4 = closure #1 in MLS.Client.update(groupDetails:forGroup:);
  }

  else
  {
    v4 = closure #1 in MLS.Client.update(groupDetails:forGroup:);
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{
  v10 = v0;

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v4 = v0[7];
    v3 = v0[8];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v9 = v6;
    *v5 = 136315138;
    *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v4, v3, &v9);
    _os_log_impl(&dword_264F1F000, v1, v2, "updateGroupDetails finished { identifier: %s }", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x266755550](v6, -1, -1);
    MEMORY[0x266755550](v5, -1, -1);
  }

  v7 = v0[1];

  return v7();
}

{
  return (*(v0 + 8))();
}

uint64_t MLS.Client.otherMembers(group:context:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 32) = a2;
  *(v4 + 40) = v3;
  *(v4 + 24) = a1;
  *(v4 + 48) = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  *(v4 + 56) = swift_task_alloc();
  v6 = type metadata accessor for UUID();
  *(v4 + 64) = v6;
  *(v4 + 72) = *(v6 - 8);
  *(v4 + 80) = swift_task_alloc();
  *(v4 + 88) = *a3;
  *(v4 + 128) = *(a3 + 16);

  return MEMORY[0x2822009F8](MLS.Client.otherMembers(group:context:), v3, 0);
}

uint64_t MLS.Client.otherMembers(group:context:)()
{
  v39 = v0;
  if (*(v0 + 96))
  {
    v1 = *(v0 + 128);
    v2 = *(v0 + 88);
    v3 = *(v0 + 96);
  }

  else
  {
    v5 = *(v0 + 72);
    v4 = *(v0 + 80);
    v6 = *(v0 + 64);
    UUID.init()();
    v2 = UUID.uuidString.getter();
    v3 = v7;
    (*(v5 + 8))(v4, v6);
    v1 = 0;
  }

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  v35 = v3;
  if (os_log_type_enabled(v8, v9))
  {
    v11 = *(v0 + 24);
    v10 = *(v0 + 32);
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v36 = v13;
    *v12 = 136315394;
    *(v12 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v10, &v36);
    *(v12 + 12) = 2080;
    v37 = 0;
    v38 = 0xE000000000000000;

    _StringGuts.grow(_:)(62);
    MEMORY[0x2667545A0](0xD000000000000020, 0x80000002651E89D0);
    MEMORY[0x2667545A0](v2, v3);
    MEMORY[0x2667545A0](0xD000000000000019, 0x80000002651E8A00);
    if (v1)
    {
      v14 = 1702195828;
    }

    else
    {
      v14 = 0x65736C6166;
    }

    if (v1)
    {
      v15 = 0xE400000000000000;
    }

    else
    {
      v15 = 0xE500000000000000;
    }

    MEMORY[0x2667545A0](v14, v15);

    MEMORY[0x2667545A0](41, 0xE100000000000000);

    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v38, &v36);

    *(v12 + 14) = v16;
    _os_log_impl(&dword_264F1F000, v8, v9, "otherMembers called { group: %s, context: %s }", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v13, -1, -1);
    MEMORY[0x266755550](v12, -1, -1);
  }

  v34 = v1;
  v17 = v2;
  v18 = *(v0 + 56);
  v19 = type metadata accessor for TaskPriority();
  (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
  v20 = one-time initialization token for shared;

  if (v20 != -1)
  {
    swift_once();
  }

  v21 = *(v0 + 56);
  v22 = *(v0 + 32);
  v23 = *(v0 + 40);
  v24 = *(v0 + 24);
  v25 = static MLSActor.shared;
  v26 = lazy protocol witness table accessor for type MLSActor and conformance MLSActor();
  v27 = swift_allocObject();
  *(v27 + 16) = v25;
  *(v27 + 24) = v26;
  *(v27 + 32) = v23;
  *(v27 + 40) = v24;
  *(v27 + 48) = v22;
  *(v27 + 56) = v17;
  *(v27 + 64) = v35;
  *(v27 + 72) = v34 & 1;
  v28 = type metadata accessor for Set();

  v29 = _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfC(0, 0, v21, &async function pointer to partial apply for closure #1 in MLS.Client.otherMembers(group:context:), v27, v28);
  *(v0 + 104) = v29;
  v30 = swift_task_alloc();
  *(v0 + 112) = v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  *v30 = v0;
  v30[1] = MLS.Client.otherMembers(group:context:);
  v32 = MEMORY[0x277D84950];

  return MEMORY[0x282200430](v0 + 16, v29, v28, v31, v32);
}

{
  v2 = *v1;
  *(*v1 + 120) = v0;

  v3 = *(v2 + 40);
  if (v0)
  {
    v4 = MLS.Client.otherMembers(group:context:);
  }

  else
  {
    v4 = MLS.Client.otherMembers(group:context:);
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
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

uint64_t closure #1 in MLS.Client.otherMembers(group:context:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 33) = v12;
  *(v8 + 96) = a7;
  *(v8 + 104) = a8;
  *(v8 + 80) = a5;
  *(v8 + 88) = a6;
  *(v8 + 64) = a1;
  *(v8 + 72) = a4;
  *(v8 + 112) = *a4;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v9 = static MLSActor.shared;
  *(v8 + 120) = static MLSActor.shared;

  return MEMORY[0x2822009F8](closure #1 in MLS.Client.otherMembers(group:context:), v9, 0);
}

uint64_t closure #1 in MLS.Client.otherMembers(group:context:)()
{
  v1 = *(v0 + 33);
  v3 = *(v0 + 96);
  v2 = *(v0 + 104);
  v4 = *(v0 + 72);
  v5 = v4[17];
  v6 = v4[18];
  __swift_project_boxed_opaque_existential_1(v4 + 14, v5);
  *(v0 + 16) = v3;
  *(v0 + 24) = v2;
  *(v0 + 32) = v1;
  v11 = (*(v6 + 56) + **(v6 + 56));
  v7 = swift_task_alloc();
  *(v0 + 128) = v7;
  *v7 = v0;
  v7[1] = closure #1 in MLS.Client.otherMembers(group:context:);
  v9 = *(v0 + 80);
  v8 = *(v0 + 88);

  return v11(v9, v8, v0 + 16, v5, v6);
}

{
  v23 = v0;

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v4 = v0[12];
    v3 = v0[13];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v22[0] = v6;
    *v5 = 136315394;
    *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v4, v3, v22);
    *(v5 + 12) = 2080;
    lazy protocol witness table accessor for type MLS.AllMember and conformance MLS.AllMember();
    v7 = Set.description.getter();
    v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v8, v22);

    *(v5 + 14) = v9;
    _os_log_impl(&dword_264F1F000, v1, v2, "otherMembers finished { identifier: %s, allMembers: %s }", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v6, -1, -1);
    MEMORY[0x266755550](v5, -1, -1);
  }

  v10 = v0[18];
  v11 = v0[14];
  v0[5] = v0[17];
  v12 = swift_task_alloc();
  v13 = v11[10];
  v12[2] = v13;
  v12[3] = v11[11];
  v12[4] = v11[12];
  v12[5] = v11[13];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sShy15SecureMessaging3MLSO9AllMemberOGMd, &_sShy15SecureMessaging3MLSO9AllMemberOGMR);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v16 = lazy protocol witness table accessor for type Set<MLS.AllMember> and conformance Set<A>();
  v17 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #1 in closure #1 in MLS.Client.otherMembers(group:context:), v12, v14, v13, v15, v16, MEMORY[0x277D84950], (v0 + 6));
  if (v10)
  {
  }

  else
  {
    v19 = v17;
    v20 = v0[8];

    v0[7] = v19;
    type metadata accessor for Array();
    swift_getWitnessTable();
    *v20 = Set.init<A>(_:)();
  }

  v18 = v0[1];

  return v18();
}

{
  return (*(v0 + 8))();
}

uint64_t closure #1 in MLS.Client.otherMembers(group:context:)(uint64_t a1)
{
  v3 = *v2;
  v3[17] = a1;
  v3[18] = v1;

  v4 = v3[15];
  if (v1)
  {
    v5 = closure #1 in MLS.Client.otherMembers(group:context:);
  }

  else
  {
    v5 = closure #1 in MLS.Client.otherMembers(group:context:);
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t closure #1 in closure #1 in MLS.Client.otherMembers(group:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v8 = *a1;
  v9 = *(a1 + 8);
  v10 = *(a1 + 16);
  v11 = *(a1 + 24);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v16[0] = v8;
  v16[1] = v9;
  v16[2] = v10;
  v17 = v11;
  v12 = *(a4 + 48);
  outlined copy of MLS.AllMember(v8, v9);
  v13 = v18;
  result = v12(v16, a2, a4);
  if (v13)
  {
    *a6 = v13;
  }

  return result;
}

uint64_t MLS.Client.add(members:toGroup:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[23] = a5;
  v6[24] = v5;
  v6[21] = a3;
  v6[22] = a4;
  v6[19] = a1;
  v6[20] = a2;
  v7 = *v5;
  v6[25] = *v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v6[26] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging15MetricCollectorV5EventVSgMd, &_s15SecureMessaging15MetricCollectorV5EventVSgMR);
  v6[27] = swift_task_alloc();
  v8 = type metadata accessor for UUID();
  v6[28] = v8;
  v6[29] = *(v8 - 8);
  v6[30] = swift_task_alloc();
  v9 = *(v7 + 88);
  v6[31] = v9;
  v10 = *(v7 + 104);
  v6[32] = v10;
  v6[33] = type metadata accessor for MLS.GroupOperationContext(255, v9, v10, v11);
  v12 = type metadata accessor for Optional();
  v6[34] = v12;
  v6[35] = *(v12 - 8);
  v6[36] = swift_task_alloc();

  return MEMORY[0x2822009F8](MLS.Client.add(members:toGroup:context:), v5, 0);
}

uint64_t MLS.Client.add(members:toGroup:context:)()
{
  v77 = v0;
  *(v0 + 144) = *(v0 + 160);
  v1 = *(*(v0 + 200) + 80);
  type metadata accessor for Array();
  swift_getWitnessTable();
  if (Collection.isEmpty.getter())
  {

    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v2, v3))
    {
      v5 = *(v0 + 168);
      v4 = *(v0 + 176);
      v6 = *(v0 + 160);
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v74[0] = v8;
      *v7 = 136315394;
      *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v4, v74);
      *(v7 + 12) = 2080;
      v9 = MEMORY[0x266754630](v6, v1);
      v11 = v10;

      v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v11, v74);

      *(v7 + 14) = v12;
      _os_log_impl(&dword_264F1F000, v2, v3, "addMembers failed: no target members specified { groupIdentifier: %s, otherMembers: %s }", v7, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266755550](v8, -1, -1);
      MEMORY[0x266755550](v7, -1, -1);
    }

    else
    {
    }

    lazy protocol witness table accessor for type MLS.GroupOperationError and conformance MLS.GroupOperationError();
    swift_allocError();
    *v27 = 16;
    *(v27 + 8) = 0;
    *(v27 + 16) = 0;
    swift_willThrow();

    v28 = *(v0 + 8);

    return v28();
  }

  else
  {
    v14 = *(v0 + 280);
    v13 = *(v0 + 288);
    v16 = *(v0 + 264);
    v15 = *(v0 + 272);
    v17 = *(v0 + 184);
    v18 = swift_allocObject();
    *(v0 + 296) = v18;
    (*(v14 + 16))(v13, v17, v15);
    v19 = *(v16 - 8);
    if ((*(v19 + 48))(v13, 1, v16) == 1)
    {
      v21 = *(v0 + 232);
      v20 = *(v0 + 240);
      v22 = *(v0 + 224);
      (*(*(v0 + 280) + 8))(*(v0 + 288), *(v0 + 272));
      UUID.init()();
      v23 = UUID.uuidString.getter();
      v25 = v24;
      (*(v21 + 8))(v20, v22);
      v71 = xmmword_2651B5F50;
      v26 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_15SecureMessaging15MetricCollectorV5EventVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    }

    else
    {
      MLS.GroupOperationContext.dataContext.getter(*(v0 + 264), v74);
      v23 = v74[0];
      v25 = v74[1];
      v71 = v75;
      v26 = v76;
      (*(v19 + 8))(*(v0 + 288), *(v0 + 264));
    }

    *(v18 + 16) = v23;
    *(v18 + 24) = v25;
    *(v18 + 32) = v71;
    *(v18 + 48) = v26;

    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v30, v31))
    {
      v69 = *(v0 + 176);
      v67 = *(v0 + 168);
      v32 = *(v0 + 160);
      v33 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      v74[0] = v70;
      *v33 = 136315650;
      v34 = MEMORY[0x266754630](v32, v1);
      v36 = v35;

      v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v36, v74);

      *(v33 + 4) = v37;
      *(v33 + 12) = 2080;
      *(v33 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v67, v69, v74);
      *(v33 + 22) = 2080;
      swift_beginAccess();
      v38 = *(v18 + 32);
      *(v0 + 16) = *(v18 + 16);
      *(v0 + 32) = v38;
      *(v0 + 48) = *(v18 + 48);
      outlined init with copy of MLS.OutgoingEventState?(v0 + 16, v0 + 56, &_s15SecureMessaging3MLSO21GroupOperationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO21GroupOperationContextVy_10Foundation4DataVGMR);
      v39 = specialized MLS.GroupOperationContext.description.getter();
      v41 = v40;
      outlined destroy of NSObject?(v0 + 16, &_s15SecureMessaging3MLSO21GroupOperationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO21GroupOperationContextVy_10Foundation4DataVGMR);
      v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v41, v74);

      *(v33 + 24) = v42;
      _os_log_impl(&dword_264F1F000, v30, v31, "add called { members: %s, group: %s, context: %s }", v33, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x266755550](v70, -1, -1);
      MEMORY[0x266755550](v33, -1, -1);
    }

    else
    {
    }

    v43 = *(v0 + 216);
    v68 = *(v0 + 208);
    swift_beginAccess();
    Date.init()();
    v44 = type metadata accessor for MetricCollector.Event(0);
    v45 = *(v44 + 20);
    v46 = type metadata accessor for Date();
    v47 = *(*(v46 - 8) + 56);
    v47(v43 + v45, 1, 1, v46);
    v48 = *(*(v44 - 8) + 56);
    v48(v43, 0, 1, v44);
    specialized Dictionary.subscript.setter(v43, 0x646E456F54646E45, 0xE800000000000000);
    Date.init()();
    v47(v43 + *(v44 + 20), 1, 1, v46);
    v48(v43, 0, 1, v44);
    specialized Dictionary.subscript.setter(v43, 0x6E61487473726946, 0xEE00656B61687364);
    Date.init()();
    v47(v43 + *(v44 + 20), 1, 1, v46);
    v48(v43, 0, 1, v44);
    specialized Dictionary.subscript.setter(v43, 0x6341746E65696C43, 0xEB00000000726F74);
    swift_endAccess();
    v49 = type metadata accessor for TaskPriority();
    (*(*(v49 - 8) + 56))(v68, 1, 1, v49);
    v50 = one-time initialization token for shared;

    v72 = v18;
    if (v50 != -1)
    {
      swift_once();
    }

    v52 = *(v0 + 248);
    v51 = *(v0 + 256);
    v73 = *(v0 + 208);
    v53 = *(v0 + 192);
    v54 = *(v0 + 168);
    v55 = *(v0 + 176);
    v56 = *(v0 + 160);
    v57 = static MLSActor.shared;
    v58 = lazy protocol witness table accessor for type MLSActor and conformance MLSActor();
    v59 = swift_allocObject();
    v59[2] = v57;
    v59[3] = v58;
    v59[4] = v72;
    v59[5] = v56;
    v59[6] = v53;
    v59[7] = v54;
    v59[8] = v55;
    v61 = type metadata accessor for MLS.GroupOperationProcessedContext(0, v52, v51, v60);

    v62 = _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfC(0, 0, v73, &async function pointer to partial apply for closure #1 in MLS.Client.add(members:toGroup:context:), v59, v61);
    *(v0 + 304) = v62;
    v63 = swift_task_alloc();
    *(v0 + 312) = v63;
    v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    *v63 = v0;
    v63[1] = MLS.Client.add(members:toGroup:context:);
    v65 = *(v0 + 152);
    v66 = MEMORY[0x277D84950];

    return MEMORY[0x282200430](v65, v62, v61, v64, v66);
  }
}

{
  v2 = *v1;
  *(*v1 + 320) = v0;

  v3 = *(v2 + 192);
  if (v0)
  {
    v4 = MLS.Client.add(members:toGroup:context:);
  }

  else
  {
    v4 = MLS.Client.add(members:toGroup:context:);
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t closure #1 in MLS.Client.add(members:toGroup:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  v8[25] = a7;
  v8[26] = a8;
  v8[23] = a5;
  v8[24] = a6;
  v8[21] = a1;
  v8[22] = a4;
  v8[27] = *a6;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v9 = static MLSActor.shared;
  v8[28] = static MLSActor.shared;

  return MEMORY[0x2822009F8](closure #1 in MLS.Client.add(members:toGroup:context:), v9, 0);
}

uint64_t closure #1 in MLS.Client.add(members:toGroup:context:)()
{
  v1 = v0[27];
  v2 = v0[23];
  v3 = v0[24];
  v4 = v0[22];
  swift_beginAccess();
  v5._countAndFlagsBits = 0x6341746E65696C43;
  v5._object = 0xEB00000000726F74;
  MetricCollector.end(label:)(v5);
  swift_endAccess();
  v0[20] = v2;
  v6 = swift_task_alloc();
  v6[2] = v1[10];
  v7 = v1[11];
  v0[29] = v7;
  v6[3] = v7;
  v6[4] = v1[12];
  v8 = v1[13];
  v0[30] = v8;
  v6[5] = v8;
  v9 = type metadata accessor for Array();
  WitnessTable = swift_getWitnessTable();
  v12 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #1 in closure #1 in MLS.Client.add(members:toGroup:context:), v6, v9, &type metadata for MLS.AllMember, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v11);
  v0[31] = v12;

  v13 = v3[17];
  v14 = v3[18];
  __swift_project_boxed_opaque_existential_1(v3 + 14, v13);
  swift_beginAccess();
  v15 = v4[3];
  v16 = v4[4];
  v17 = v4[5];
  v18 = v4[6];
  v0[2] = v4[2];
  v0[3] = v15;
  v0[4] = v16;
  v0[5] = v17;
  v0[6] = v18;
  v19 = *(v14 + 64);

  outlined copy of Data?(v16, v17);

  v24 = (v19 + *v19);
  v20 = swift_task_alloc();
  v0[32] = v20;
  *v20 = v0;
  v20[1] = closure #1 in MLS.Client.add(members:toGroup:context:);
  v21 = v0[25];
  v22 = v0[26];

  return (v24)(v0 + 7, v12, v21, v22, v0 + 2, v13, v14);
}

{
  v2 = *v1;
  *(*v1 + 264) = v0;

  v3 = v2[28];
  v4 = v2[4];
  v5 = v2[5];

  outlined consume of Data?(v4, v5);

  if (v0)
  {
    v6 = closure #1 in MLS.Client.add(members:toGroup:context:);
  }

  else
  {
    v6 = closure #1 in MLS.Client.add(members:toGroup:context:);
  }

  return MEMORY[0x2822009F8](v6, v3, 0);
}

{
  v19 = v0;

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[22];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v18[0] = v5;
    *v4 = 136315138;
    swift_beginAccess();
    v6 = *(v3 + 16);
    v7 = *(v3 + 24);

    v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v7, v18);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_264F1F000, v1, v2, "add finished { identifier: %s }", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    MEMORY[0x266755550](v5, -1, -1);
    MEMORY[0x266755550](v4, -1, -1);
  }

  v10 = v0[29];
  v9 = v0[30];
  v11 = v0[21];
  v12._countAndFlagsBits = 0x6E61487473726946;
  v12._object = 0xEE00656B61687364;
  MetricCollector.end(label:)(v12);
  v13 = v0[8];
  v14 = v0[9];
  v15 = v0[10];
  v18[0] = v0[7];
  v18[1] = v13;
  v18[2] = v14;
  v18[3] = v15;
  outlined copy of Data?(v18[0], v13);

  MLS.GroupOperationProcessedContext.init(dataContext:)(v18, v10, v9, v11);
  outlined consume of Data?(v0[7], v0[8]);

  v16 = v0[1];

  return v16();
}

{
  return (*(v0 + 8))();
}

uint64_t MLS.Client.kick(members:fromGroup:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[23] = a5;
  v6[24] = v5;
  v6[21] = a3;
  v6[22] = a4;
  v6[19] = a1;
  v6[20] = a2;
  v7 = *v5;
  v6[25] = *v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v6[26] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging15MetricCollectorV5EventVSgMd, &_s15SecureMessaging15MetricCollectorV5EventVSgMR);
  v6[27] = swift_task_alloc();
  v8 = type metadata accessor for UUID();
  v6[28] = v8;
  v6[29] = *(v8 - 8);
  v6[30] = swift_task_alloc();
  v9 = *(v7 + 88);
  v6[31] = v9;
  v10 = *(v7 + 104);
  v6[32] = v10;
  v6[33] = type metadata accessor for MLS.GroupOperationContext(255, v9, v10, v11);
  v12 = type metadata accessor for Optional();
  v6[34] = v12;
  v6[35] = *(v12 - 8);
  v6[36] = swift_task_alloc();

  return MEMORY[0x2822009F8](MLS.Client.kick(members:fromGroup:context:), v5, 0);
}

uint64_t MLS.Client.kick(members:fromGroup:context:)()
{
  v77 = v0;
  *(v0 + 144) = *(v0 + 160);
  v1 = *(*(v0 + 200) + 80);
  type metadata accessor for Array();
  swift_getWitnessTable();
  if (Collection.isEmpty.getter())
  {

    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v2, v3))
    {
      v5 = *(v0 + 168);
      v4 = *(v0 + 176);
      v6 = *(v0 + 160);
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v74[0] = v8;
      *v7 = 136315394;
      *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v4, v74);
      *(v7 + 12) = 2080;
      v9 = MEMORY[0x266754630](v6, v1);
      v11 = v10;

      v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v11, v74);

      *(v7 + 14) = v12;
      _os_log_impl(&dword_264F1F000, v2, v3, "kickMembers failed: no target members specified { groupIdentifier: %s, otherMembers: %s }", v7, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266755550](v8, -1, -1);
      MEMORY[0x266755550](v7, -1, -1);
    }

    else
    {
    }

    lazy protocol witness table accessor for type MLS.GroupOperationError and conformance MLS.GroupOperationError();
    swift_allocError();
    *v27 = 16;
    *(v27 + 8) = 0;
    *(v27 + 16) = 0;
    swift_willThrow();

    v28 = *(v0 + 8);

    return v28();
  }

  else
  {
    v14 = *(v0 + 280);
    v13 = *(v0 + 288);
    v16 = *(v0 + 264);
    v15 = *(v0 + 272);
    v17 = *(v0 + 184);
    v18 = swift_allocObject();
    *(v0 + 296) = v18;
    (*(v14 + 16))(v13, v17, v15);
    v19 = *(v16 - 8);
    if ((*(v19 + 48))(v13, 1, v16) == 1)
    {
      v21 = *(v0 + 232);
      v20 = *(v0 + 240);
      v22 = *(v0 + 224);
      (*(*(v0 + 280) + 8))(*(v0 + 288), *(v0 + 272));
      UUID.init()();
      v23 = UUID.uuidString.getter();
      v25 = v24;
      (*(v21 + 8))(v20, v22);
      v71 = xmmword_2651B5F50;
      v26 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_15SecureMessaging15MetricCollectorV5EventVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    }

    else
    {
      MLS.GroupOperationContext.dataContext.getter(*(v0 + 264), v74);
      v23 = v74[0];
      v25 = v74[1];
      v71 = v75;
      v26 = v76;
      (*(v19 + 8))(*(v0 + 288), *(v0 + 264));
    }

    *(v18 + 16) = v23;
    *(v18 + 24) = v25;
    *(v18 + 32) = v71;
    *(v18 + 48) = v26;

    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v30, v31))
    {
      v69 = *(v0 + 176);
      v67 = *(v0 + 168);
      v32 = *(v0 + 160);
      v33 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      v74[0] = v70;
      *v33 = 136315650;
      v34 = MEMORY[0x266754630](v32, v1);
      v36 = v35;

      v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v36, v74);

      *(v33 + 4) = v37;
      *(v33 + 12) = 2080;
      *(v33 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v67, v69, v74);
      *(v33 + 22) = 2080;
      swift_beginAccess();
      v38 = *(v18 + 32);
      *(v0 + 16) = *(v18 + 16);
      *(v0 + 32) = v38;
      *(v0 + 48) = *(v18 + 48);
      outlined init with copy of MLS.OutgoingEventState?(v0 + 16, v0 + 56, &_s15SecureMessaging3MLSO21GroupOperationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO21GroupOperationContextVy_10Foundation4DataVGMR);
      v39 = specialized MLS.GroupOperationContext.description.getter();
      v41 = v40;
      outlined destroy of NSObject?(v0 + 16, &_s15SecureMessaging3MLSO21GroupOperationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO21GroupOperationContextVy_10Foundation4DataVGMR);
      v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v41, v74);

      *(v33 + 24) = v42;
      _os_log_impl(&dword_264F1F000, v30, v31, "kick called { members: %s, group: %s, context: %s }", v33, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x266755550](v70, -1, -1);
      MEMORY[0x266755550](v33, -1, -1);
    }

    else
    {
    }

    v43 = *(v0 + 216);
    v68 = *(v0 + 208);
    swift_beginAccess();
    Date.init()();
    v44 = type metadata accessor for MetricCollector.Event(0);
    v45 = *(v44 + 20);
    v46 = type metadata accessor for Date();
    v47 = *(*(v46 - 8) + 56);
    v47(v43 + v45, 1, 1, v46);
    v48 = *(*(v44 - 8) + 56);
    v48(v43, 0, 1, v44);
    specialized Dictionary.subscript.setter(v43, 0x646E456F54646E45, 0xE800000000000000);
    Date.init()();
    v47(v43 + *(v44 + 20), 1, 1, v46);
    v48(v43, 0, 1, v44);
    specialized Dictionary.subscript.setter(v43, 0x6E61487473726946, 0xEE00656B61687364);
    Date.init()();
    v47(v43 + *(v44 + 20), 1, 1, v46);
    v48(v43, 0, 1, v44);
    specialized Dictionary.subscript.setter(v43, 0x6341746E65696C43, 0xEB00000000726F74);
    swift_endAccess();
    v49 = type metadata accessor for TaskPriority();
    (*(*(v49 - 8) + 56))(v68, 1, 1, v49);
    v50 = one-time initialization token for shared;

    v72 = v18;
    if (v50 != -1)
    {
      swift_once();
    }

    v52 = *(v0 + 248);
    v51 = *(v0 + 256);
    v73 = *(v0 + 208);
    v53 = *(v0 + 192);
    v54 = *(v0 + 168);
    v55 = *(v0 + 176);
    v56 = *(v0 + 160);
    v57 = static MLSActor.shared;
    v58 = lazy protocol witness table accessor for type MLSActor and conformance MLSActor();
    v59 = swift_allocObject();
    v59[2] = v57;
    v59[3] = v58;
    v59[4] = v72;
    v59[5] = v56;
    v59[6] = v53;
    v59[7] = v54;
    v59[8] = v55;
    v61 = type metadata accessor for MLS.GroupOperationProcessedContext(0, v52, v51, v60);

    v62 = _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfC(0, 0, v73, &async function pointer to partial apply for closure #1 in MLS.Client.kick(members:fromGroup:context:), v59, v61);
    *(v0 + 304) = v62;
    v63 = swift_task_alloc();
    *(v0 + 312) = v63;
    v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    *v63 = v0;
    v63[1] = MLS.Client.kick(members:fromGroup:context:);
    v65 = *(v0 + 152);
    v66 = MEMORY[0x277D84950];

    return MEMORY[0x282200430](v65, v62, v61, v64, v66);
  }
}

{
  v2 = *v1;
  *(*v1 + 320) = v0;

  v3 = *(v2 + 192);
  if (v0)
  {
    v4 = MLS.Client.kick(members:fromGroup:context:);
  }

  else
  {
    v4 = MLS.Client.kick(members:fromGroup:context:);
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t closure #1 in MLS.Client.kick(members:fromGroup:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  v8[25] = a7;
  v8[26] = a8;
  v8[23] = a5;
  v8[24] = a6;
  v8[21] = a1;
  v8[22] = a4;
  v8[27] = *a6;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v9 = static MLSActor.shared;
  v8[28] = static MLSActor.shared;

  return MEMORY[0x2822009F8](closure #1 in MLS.Client.kick(members:fromGroup:context:), v9, 0);
}

uint64_t closure #1 in MLS.Client.kick(members:fromGroup:context:)()
{
  v1 = v0[27];
  v2 = v0[23];
  v3 = v0[24];
  v4 = v0[22];
  swift_beginAccess();
  v5._countAndFlagsBits = 0x6341746E65696C43;
  v5._object = 0xEB00000000726F74;
  MetricCollector.end(label:)(v5);
  swift_endAccess();
  v0[20] = v2;
  v6 = swift_task_alloc();
  v6[2] = v1[10];
  v7 = v1[11];
  v0[29] = v7;
  v6[3] = v7;
  v6[4] = v1[12];
  v8 = v1[13];
  v0[30] = v8;
  v6[5] = v8;
  v9 = type metadata accessor for Array();
  WitnessTable = swift_getWitnessTable();
  v12 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #1 in closure #1 in MLS.Client.kick(members:fromGroup:context:), v6, v9, &type metadata for MLS.AllMember, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v11);
  v0[31] = v12;

  v13 = v3[17];
  v14 = v3[18];
  __swift_project_boxed_opaque_existential_1(v3 + 14, v13);
  swift_beginAccess();
  v15 = v4[3];
  v16 = v4[4];
  v17 = v4[5];
  v18 = v4[6];
  v0[2] = v4[2];
  v0[3] = v15;
  v0[4] = v16;
  v0[5] = v17;
  v0[6] = v18;
  v19 = *(v14 + 72);

  outlined copy of Data?(v16, v17);

  v24 = (v19 + *v19);
  v20 = swift_task_alloc();
  v0[32] = v20;
  *v20 = v0;
  v20[1] = closure #1 in MLS.Client.kick(members:fromGroup:context:);
  v21 = v0[25];
  v22 = v0[26];

  return (v24)(v0 + 7, v12, v21, v22, v0 + 2, v13, v14);
}

{
  v2 = *v1;
  *(*v1 + 264) = v0;

  v3 = v2[28];
  v4 = v2[4];
  v5 = v2[5];

  outlined consume of Data?(v4, v5);

  if (v0)
  {
    v6 = closure #1 in MLS.Client.kick(members:fromGroup:context:);
  }

  else
  {
    v6 = closure #1 in MLS.Client.kick(members:fromGroup:context:);
  }

  return MEMORY[0x2822009F8](v6, v3, 0);
}

{
  v19 = v0;

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[22];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v18[0] = v5;
    *v4 = 136315138;
    swift_beginAccess();
    v6 = *(v3 + 16);
    v7 = *(v3 + 24);

    v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v7, v18);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_264F1F000, v1, v2, "kick finished { identifier: %s }", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    MEMORY[0x266755550](v5, -1, -1);
    MEMORY[0x266755550](v4, -1, -1);
  }

  v10 = v0[29];
  v9 = v0[30];
  v11 = v0[21];
  v12._countAndFlagsBits = 0x6E61487473726946;
  v12._object = 0xEE00656B61687364;
  MetricCollector.end(label:)(v12);
  v13 = v0[8];
  v14 = v0[9];
  v15 = v0[10];
  v18[0] = v0[7];
  v18[1] = v13;
  v18[2] = v14;
  v18[3] = v15;
  outlined copy of Data?(v18[0], v13);

  MLS.GroupOperationProcessedContext.init(dataContext:)(v18, v10, v9, v11);
  outlined consume of Data?(v0[7], v0[8]);

  v16 = v0[1];

  return v16();
}

uint64_t closure #1 in closure #1 in MLS.Client.createGroup(identifier:otherMembers:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  return (*(a4 + 40))(a2, a4);
}

uint64_t MLS.Client.leave(group:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[21] = a4;
  v5[22] = v4;
  v5[19] = a2;
  v5[20] = a3;
  v5[18] = a1;
  v6 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v5[23] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging15MetricCollectorV5EventVSgMd, &_s15SecureMessaging15MetricCollectorV5EventVSgMR);
  v5[24] = swift_task_alloc();
  v7 = type metadata accessor for UUID();
  v5[25] = v7;
  v5[26] = *(v7 - 8);
  v5[27] = swift_task_alloc();
  v8 = *(v6 + 88);
  v5[28] = v8;
  v9 = *(v6 + 104);
  v5[29] = v9;
  v5[30] = type metadata accessor for MLS.GroupOperationContext(255, v8, v9, v10);
  v11 = type metadata accessor for Optional();
  v5[31] = v11;
  v5[32] = *(v11 - 8);
  v5[33] = swift_task_alloc();

  return MEMORY[0x2822009F8](MLS.Client.leave(group:context:), v4, 0);
}

uint64_t MLS.Client.leave(group:context:)()
{
  v57 = v0;
  v2 = *(v0 + 256);
  v1 = *(v0 + 264);
  v4 = *(v0 + 240);
  v3 = *(v0 + 248);
  v5 = *(v0 + 168);
  v6 = swift_allocObject();
  *(v0 + 272) = v6;
  (*(v2 + 16))(v1, v5, v3);
  v7 = *(v4 - 8);
  if ((*(v7 + 48))(v1, 1, v4) == 1)
  {
    v9 = *(v0 + 208);
    v8 = *(v0 + 216);
    v10 = *(v0 + 200);
    (*(*(v0 + 256) + 8))(*(v0 + 264), *(v0 + 248));
    UUID.init()();
    v11 = UUID.uuidString.getter();
    v13 = v12;
    (*(v9 + 8))(v8, v10);
    v52 = xmmword_2651B5F50;
    v14 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_15SecureMessaging15MetricCollectorV5EventVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  }

  else
  {
    MLS.GroupOperationContext.dataContext.getter(*(v0 + 240), v54);
    v11 = v54[0];
    v13 = v54[1];
    v52 = v55;
    v14 = v56;
    (*(v7 + 8))(*(v0 + 264), *(v0 + 240));
  }

  *(v6 + 16) = v11;
  *(v6 + 24) = v13;
  *(v6 + 32) = v52;
  *(v6 + 48) = v14;

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v18 = *(v0 + 152);
    v17 = *(v0 + 160);
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v54[0] = v20;
    *v19 = 136315394;
    *(v19 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v17, v54);
    *(v19 + 12) = 2080;
    swift_beginAccess();
    v21 = *(v6 + 32);
    *(v0 + 16) = *(v6 + 16);
    *(v0 + 32) = v21;
    *(v0 + 48) = *(v6 + 48);
    outlined init with copy of MLS.OutgoingEventState?(v0 + 16, v0 + 56, &_s15SecureMessaging3MLSO21GroupOperationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO21GroupOperationContextVy_10Foundation4DataVGMR);
    v22 = specialized MLS.GroupOperationContext.description.getter();
    v24 = v23;
    outlined destroy of NSObject?(v0 + 16, &_s15SecureMessaging3MLSO21GroupOperationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO21GroupOperationContextVy_10Foundation4DataVGMR);
    v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v24, v54);

    *(v19 + 14) = v25;
    _os_log_impl(&dword_264F1F000, v15, v16, "leave called { group: %s, context: %s }", v19, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v20, -1, -1);
    MEMORY[0x266755550](v19, -1, -1);
  }

  v26 = *(v0 + 192);
  v51 = *(v0 + 184);
  swift_beginAccess();
  Date.init()();
  v27 = type metadata accessor for MetricCollector.Event(0);
  v28 = *(v27 + 20);
  v29 = type metadata accessor for Date();
  v30 = *(*(v29 - 8) + 56);
  v30(v26 + v28, 1, 1, v29);
  v31 = *(*(v27 - 8) + 56);
  v31(v26, 0, 1, v27);
  specialized Dictionary.subscript.setter(v26, 0x646E456F54646E45, 0xE800000000000000);
  Date.init()();
  v30(v26 + *(v27 + 20), 1, 1, v29);
  v31(v26, 0, 1, v27);
  specialized Dictionary.subscript.setter(v26, 0x6E61487473726946, 0xEE00656B61687364);
  Date.init()();
  v30(v26 + *(v27 + 20), 1, 1, v29);
  v31(v26, 0, 1, v27);
  specialized Dictionary.subscript.setter(v26, 0x6341746E65696C43, 0xEB00000000726F74);
  swift_endAccess();
  v32 = type metadata accessor for TaskPriority();
  (*(*(v32 - 8) + 56))(v51, 1, 1, v32);
  v33 = one-time initialization token for shared;

  v34 = v6;
  if (v33 != -1)
  {
    swift_once();
  }

  v36 = *(v0 + 224);
  v35 = *(v0 + 232);
  v37 = *(v0 + 176);
  v53 = *(v0 + 184);
  v38 = *(v0 + 152);
  v39 = *(v0 + 160);
  v40 = static MLSActor.shared;
  v41 = lazy protocol witness table accessor for type MLSActor and conformance MLSActor();
  v42 = swift_allocObject();
  v42[2] = v40;
  v42[3] = v41;
  v42[4] = v34;
  v42[5] = v37;
  v42[6] = v38;
  v42[7] = v39;
  v44 = type metadata accessor for MLS.GroupOperationProcessedContext(0, v36, v35, v43);

  v45 = _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfC(0, 0, v53, &async function pointer to partial apply for closure #1 in MLS.Client.leave(group:context:), v42, v44);
  *(v0 + 280) = v45;
  v46 = swift_task_alloc();
  *(v0 + 288) = v46;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  *v46 = v0;
  v46[1] = MLS.Client.leave(group:context:);
  v48 = *(v0 + 144);
  v49 = MEMORY[0x277D84950];

  return MEMORY[0x282200430](v48, v45, v44, v47, v49);
}

{
  v2 = *v1;
  *(*v1 + 296) = v0;

  v3 = *(v2 + 176);
  if (v0)
  {
    v4 = MLS.Client.leave(group:context:);
  }

  else
  {
    v4 = MLS.Client.leave(group:context:);
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t closure #1 in MLS.Client.leave(group:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v7[23] = a6;
  v7[24] = a7;
  v7[21] = a4;
  v7[22] = a5;
  v7[20] = a1;
  v7[25] = *a5;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v8 = static MLSActor.shared;
  v7[26] = static MLSActor.shared;

  return MEMORY[0x2822009F8](closure #1 in MLS.Client.leave(group:context:), v8, 0);
}

uint64_t closure #1 in MLS.Client.leave(group:context:)()
{
  v2 = v0[21];
  v1 = v0[22];
  swift_beginAccess();
  v3._countAndFlagsBits = 0x6341746E65696C43;
  v3._object = 0xEB00000000726F74;
  MetricCollector.end(label:)(v3);
  swift_endAccess();
  v4 = v1[17];
  v5 = v1[18];
  __swift_project_boxed_opaque_existential_1(v1 + 14, v4);
  swift_beginAccess();
  v7 = v2[2];
  v6 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v10 = v2[6];
  v0[2] = v7;
  v0[3] = v6;
  v0[4] = v8;
  v0[5] = v9;
  v0[6] = v10;
  v11 = *(v5 + 80);

  outlined copy of Data?(v8, v9);

  v16 = (v11 + *v11);
  v12 = swift_task_alloc();
  v0[27] = v12;
  *v12 = v0;
  v12[1] = closure #1 in MLS.Client.leave(group:context:);
  v13 = v0[23];
  v14 = v0[24];

  return (v16)(v0 + 7, v13, v14, v0 + 2, v4, v5);
}

{
  v2 = *v1;
  *(*v1 + 224) = v0;

  if (v0)
  {
    v3 = v2[26];
    v4 = v2[4];
    v5 = v2[5];

    outlined consume of Data?(v4, v5);

    v6 = closure #1 in MLS.Client.leave(group:context:);
  }

  else
  {
    v3 = v2[26];
    v7 = v2[4];
    v8 = v2[5];

    outlined consume of Data?(v7, v8);

    v6 = closure #1 in MLS.Client.leave(group:context:);
  }

  return MEMORY[0x2822009F8](v6, v3, 0);
}

{
  v20 = v0;

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[21];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v19[0] = v5;
    *v4 = 136315138;
    swift_beginAccess();
    v6 = *(v3 + 16);
    v7 = *(v3 + 24);

    v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v7, v19);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_264F1F000, v1, v2, "leave finished { identifier: %s }", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    MEMORY[0x266755550](v5, -1, -1);
    MEMORY[0x266755550](v4, -1, -1);
  }

  v9 = v0[25];
  v10 = v0[20];
  v11._countAndFlagsBits = 0x6E61487473726946;
  v11._object = 0xEE00656B61687364;
  MetricCollector.end(label:)(v11);
  v12 = v0[8];
  v13 = v0[9];
  v14 = v0[10];
  v19[0] = v0[7];
  v19[1] = v12;
  v19[2] = v13;
  v19[3] = v14;
  outlined copy of Data?(v19[0], v12);
  v15 = *(v9 + 88);
  v16 = *(v9 + 104);

  MLS.GroupOperationProcessedContext.init(dataContext:)(v19, v15, v16, v10);
  outlined consume of Data?(v0[7], v0[8]);

  v17 = v0[1];

  return v17();
}

{
  return (*(v0 + 8))();
}

uint64_t MLS.Client.applicationEncrypt(data:withGroup:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[27].i64[1] = a6;
  v7[28].i64[0] = v6;
  v7[26].i64[1] = a4;
  v7[27].i64[0] = a5;
  v7[25].i64[1] = a2;
  v7[26].i64[0] = a3;
  v7[25].i64[0] = a1;
  v8 = *v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v7[28].i64[1] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging15MetricCollectorV5EventVSgMd, &_s15SecureMessaging15MetricCollectorV5EventVSgMR);
  v7[29].i64[0] = swift_task_alloc();
  v9 = type metadata accessor for UUID();
  v7[29].i64[1] = v9;
  v7[30].i64[0] = *(v9 - 8);
  v7[30].i64[1] = swift_task_alloc();
  v10 = v8[5];
  v11 = v8[6];
  v7[31] = vzip2q_s64(v10, v11);
  v7[20] = v10;
  v7[21] = v11;
  v7[32].i64[0] = type metadata accessor for MLS.EncryptionContext(255, v7[20].i64);
  v12 = type metadata accessor for Optional();
  v7[32].i64[1] = v12;
  v7[33].i64[0] = *(v12 - 8);
  v7[33].i64[1] = swift_task_alloc();

  return MEMORY[0x2822009F8](MLS.Client.applicationEncrypt(data:withGroup:context:), v6, 0);
}

uint64_t MLS.Client.applicationEncrypt(data:withGroup:context:)()
{
  v80 = v0;
  v1 = *(v0 + 536);
  v2 = *(v0 + 528);
  v3 = *(v0 + 520);
  v4 = *(v0 + 512);
  v5 = *(v0 + 440);
  v6 = swift_allocObject();
  *(v0 + 544) = v6;
  (*(v2 + 16))(v1, v5, v3);
  v7 = *(v4 - 8);
  if ((*(v7 + 48))(v1, 1, v4) == 1)
  {
    v9 = *(v0 + 480);
    v8 = *(v0 + 488);
    v10 = *(v0 + 472);
    (*(*(v0 + 528) + 8))(*(v0 + 536), *(v0 + 520));
    UUID.init()();
    v11 = UUID.uuidString.getter();
    v13 = v12;
    (*(v9 + 8))(v8, v10);
    LOBYTE(v77) = 1;
    v14 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_15SecureMessaging15MetricCollectorV5EventVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    *(v6 + 16) = v11;
    *(v6 + 24) = v13;
    *(v6 + 32) = xmmword_2651B5F50;
    *(v6 + 48) = xmmword_2651B5F50;
    *(v6 + 64) = 0u;
    *(v6 + 80) = 0u;
    *(v6 + 96) = 0u;
    *(v6 + 112) = 0;
    *(v6 + 120) = -2;
    *(v6 + 136) = 0;
    *(v6 + 144) = 0;
    *(v6 + 128) = 0;
    *(v6 + 152) = 1;
    *(v6 + 160) = v14;
  }

  else
  {
    v15 = MLS.EncryptionContext.dataContext.getter(*(v0 + 512), v78);
    (*(v7 + 8))(*(v0 + 536), *(v0 + 512), v15);
    v16 = v78[7];
    *(v6 + 112) = v78[6];
    *(v6 + 128) = v16;
    *(v6 + 144) = v78[8];
    *(v6 + 160) = v79;
    v17 = v78[3];
    *(v6 + 48) = v78[2];
    *(v6 + 64) = v17;
    v18 = v78[5];
    *(v6 + 80) = v78[4];
    *(v6 + 96) = v18;
    v19 = v78[1];
    *(v6 + 16) = v78[0];
    *(v6 + 32) = v19;
  }

  outlined copy of Data._Representation(*(v0 + 408), *(v0 + 416));

  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();

  v22 = os_log_type_enabled(v20, v21);
  v23 = *(v0 + 416);
  if (v22)
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v30 = v25;
    v77 = v25;
    *v24 = 134218498;
    v31 = v23 >> 62;
    if ((v23 >> 62) > 1)
    {
      if (v31 != 2)
      {
        v32 = 0;
        goto LABEL_16;
      }

      v33 = *(*(v0 + 408) + 16);
      v34 = *(*(v0 + 408) + 24);
      v35 = __OFSUB__(v34, v33);
      v32 = v34 - v33;
      if (!v35)
      {
        goto LABEL_16;
      }

      __break(1u);
    }

    else if (!v31)
    {
      v32 = *(v0 + 422);
LABEL_16:
      v39 = *(v0 + 424);
      v38 = *(v0 + 432);
      v40 = *(v0 + 408);
      v41 = *(v0 + 416);
      *(v24 + 4) = v32;
      outlined consume of Data._Representation(v40, v41);
      *(v24 + 12) = 2080;
      *(v24 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v38, &v77);
      *(v24 + 22) = 2080;
      swift_beginAccess();
      v42 = *(v6 + 128);
      *(v0 + 112) = *(v6 + 112);
      *(v0 + 128) = v42;
      *(v0 + 144) = *(v6 + 144);
      *(v0 + 160) = *(v6 + 160);
      v43 = *(v6 + 64);
      *(v0 + 48) = *(v6 + 48);
      *(v0 + 64) = v43;
      v44 = *(v6 + 96);
      *(v0 + 80) = *(v6 + 80);
      *(v0 + 96) = v44;
      v45 = *(v6 + 32);
      *(v0 + 16) = *(v6 + 16);
      *(v0 + 32) = v45;
      outlined init with copy of MLS.OutgoingEventState?(v0 + 16, v0 + 168, &_s15SecureMessaging3MLSO17EncryptionContextVy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17EncryptionContextVy_AC9AllMemberO10Foundation4DataVGMR);
      v46 = specialized MLS.EncryptionContext.description.getter();
      v48 = v47;
      outlined destroy of NSObject?(v0 + 16, &_s15SecureMessaging3MLSO17EncryptionContextVy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17EncryptionContextVy_AC9AllMemberO10Foundation4DataVGMR);
      v49 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46, v48, &v77);

      *(v24 + 24) = v49;
      _os_log_impl(&dword_264F1F000, v20, v21, "applicationEncrypt called { data: %ld, group: %s, context: %s }", v24, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x266755550](v30, -1, -1);
      MEMORY[0x266755550](v24, -1, -1);
      goto LABEL_17;
    }

    v36 = *(v0 + 408);
    v37 = *(v0 + 412);
    v35 = __OFSUB__(v37, v36);
    LODWORD(v32) = v37 - v36;
    if (v35)
    {
      __break(1u);
      return MEMORY[0x282200430](v25, v26, v27, v28, v29);
    }

    v32 = v32;
    goto LABEL_16;
  }

  outlined consume of Data._Representation(*(v0 + 408), *(v0 + 416));
LABEL_17:

  v50 = *(v0 + 464);
  v73 = *(v0 + 416);
  v71 = *(v0 + 456);
  v72 = *(v0 + 408);
  swift_beginAccess();
  Date.init()();
  v51 = type metadata accessor for MetricCollector.Event(0);
  v52 = *(v51 + 20);
  v53 = type metadata accessor for Date();
  v54 = *(*(v53 - 8) + 56);
  v54(v50 + v52, 1, 1, v53);
  v55 = *(*(v51 - 8) + 56);
  v55(v50, 0, 1, v51);
  specialized Dictionary.subscript.setter(v50, 0x646E456F54646E45, 0xE800000000000000);
  Date.init()();
  v54(v50 + *(v51 + 20), 1, 1, v53);
  v55(v50, 0, 1, v51);
  specialized Dictionary.subscript.setter(v50, 0x6E61487473726946, 0xEE00656B61687364);
  Date.init()();
  v54(v50 + *(v51 + 20), 1, 1, v53);
  v55(v50, 0, 1, v51);
  specialized Dictionary.subscript.setter(v50, 0x6341746E65696C43, 0xEB00000000726F74);
  swift_endAccess();
  v56 = type metadata accessor for TaskPriority();
  (*(*(v56 - 8) + 56))(v71, 1, 1, v56);
  outlined copy of Data._Representation(v72, v73);
  v57 = one-time initialization token for shared;

  if (v57 != -1)
  {
    swift_once();
  }

  v74 = *(v0 + 496);
  v75 = *(v0 + 504);
  v58 = *(v0 + 448);
  v76 = *(v0 + 456);
  v59 = *(v0 + 424);
  v60 = *(v0 + 432);
  v62 = *(v0 + 408);
  v61 = *(v0 + 416);
  v63 = static MLSActor.shared;
  v64 = lazy protocol witness table accessor for type MLSActor and conformance MLSActor();
  v65 = swift_allocObject();
  v65[2] = v63;
  v65[3] = v64;
  v65[4] = v6;
  v65[5] = v58;
  v65[6] = v62;
  v65[7] = v61;
  v65[8] = v59;
  v65[9] = v60;
  v67 = type metadata accessor for MLS.EncryptionProcessedContext(0, v74, v75, v66);

  v68 = _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfC(0, 0, v76, &async function pointer to partial apply for closure #1 in MLS.Client.applicationEncrypt(data:withGroup:context:), v65, v67);
  *(v0 + 552) = v68;
  v69 = swift_task_alloc();
  *(v0 + 560) = v69;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  *v69 = v0;
  v69[1] = MLS.Client.applicationEncrypt(data:withGroup:context:);
  v25 = *(v0 + 400);
  v29 = MEMORY[0x277D84950];
  v26 = v68;
  v27 = v67;

  return MEMORY[0x282200430](v25, v26, v27, v28, v29);
}

{
  v2 = *v1;
  *(*v1 + 568) = v0;

  v3 = *(v2 + 448);
  if (v0)
  {
    v4 = MLS.Client.applicationEncrypt(data:withGroup:context:);
  }

  else
  {
    v4 = MLS.Client.applicationEncrypt(data:withGroup:context:);
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t closure #1 in MLS.Client.applicationEncrypt(data:withGroup:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[116] = v12;
  v8[115] = a8;
  v8[114] = a7;
  v8[113] = a6;
  v8[112] = a5;
  v8[111] = a4;
  v8[110] = a1;
  v8[117] = *a5;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v9 = static MLSActor.shared;
  v8[118] = static MLSActor.shared;

  return MEMORY[0x2822009F8](closure #1 in MLS.Client.applicationEncrypt(data:withGroup:context:), v9, 0);
}

uint64_t closure #1 in MLS.Client.applicationEncrypt(data:withGroup:context:)()
{
  v1 = *(v0 + 896);
  v2 = *(v0 + 888);
  swift_beginAccess();
  v3._countAndFlagsBits = 0x6341746E65696C43;
  v3._object = 0xEB00000000726F74;
  MetricCollector.end(label:)(v3);
  swift_endAccess();
  v4 = v1[17];
  v5 = v1[18];
  __swift_project_boxed_opaque_existential_1(v1 + 14, v4);
  swift_beginAccess();
  v6 = *(v2 + 32);
  *(v0 + 16) = *(v2 + 16);
  *(v0 + 32) = v6;
  v7 = *(v2 + 48);
  v8 = *(v2 + 64);
  v9 = *(v2 + 96);
  *(v0 + 80) = *(v2 + 80);
  *(v0 + 96) = v9;
  *(v0 + 48) = v7;
  *(v0 + 64) = v8;
  v10 = *(v2 + 112);
  v11 = *(v2 + 128);
  v12 = *(v2 + 144);
  *(v0 + 160) = *(v2 + 160);
  *(v0 + 128) = v11;
  *(v0 + 144) = v12;
  *(v0 + 112) = v10;
  v13 = *(v2 + 16);
  *(v0 + 184) = *(v2 + 32);
  *(v0 + 168) = v13;
  v14 = *(v2 + 48);
  v15 = *(v2 + 64);
  v16 = *(v2 + 80);
  *(v0 + 248) = *(v2 + 96);
  *(v0 + 232) = v16;
  *(v0 + 216) = v15;
  *(v0 + 200) = v14;
  v17 = *(v2 + 112);
  v18 = *(v2 + 128);
  v19 = *(v2 + 144);
  *(v0 + 312) = *(v2 + 160);
  *(v0 + 280) = v18;
  *(v0 + 296) = v19;
  *(v0 + 264) = v17;
  v20 = *(v5 + 96);
  outlined init with copy of MLS.OutgoingEventState?(v0 + 16, v0 + 320, &_s15SecureMessaging3MLSO17EncryptionContextVy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17EncryptionContextVy_AC9AllMemberO10Foundation4DataVGMR);
  v27 = (v20 + *v20);
  v21 = swift_task_alloc();
  *(v0 + 952) = v21;
  *v21 = v0;
  v21[1] = closure #1 in MLS.Client.applicationEncrypt(data:withGroup:context:);
  v22 = *(v0 + 928);
  v23 = *(v0 + 920);
  v24 = *(v0 + 912);
  v25 = *(v0 + 904);

  return v27(v0 + 776, v25, v24, v23, v22, v0 + 168, v4, v5);
}

{
  v2 = *v1;
  v3 = *v1;
  v4 = *v1 + 168;
  *(*v1 + 960) = v0;

  v5 = *(v2 + 944);
  v6 = *(v4 + 16);
  if (v0)
  {
    *(v3 + 472) = *v4;
    *(v3 + 488) = v6;
    v7 = *(v4 + 32);
    v8 = *(v4 + 48);
    v9 = *(v4 + 80);
    *(v3 + 536) = *(v4 + 64);
    *(v3 + 552) = v9;
    *(v3 + 504) = v7;
    *(v3 + 520) = v8;
    v10 = *(v4 + 96);
    v11 = *(v4 + 112);
    v12 = *(v4 + 128);
    *(v3 + 616) = *(v4 + 144);
    *(v3 + 584) = v11;
    *(v3 + 600) = v12;
    *(v3 + 568) = v10;
    outlined destroy of NSObject?(v3 + 472, &_s15SecureMessaging3MLSO17EncryptionContextVy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17EncryptionContextVy_AC9AllMemberO10Foundation4DataVGMR);
    v13 = closure #1 in MLS.Client.applicationEncrypt(data:withGroup:context:);
  }

  else
  {
    *(v3 + 624) = *v4;
    *(v3 + 640) = v6;
    v14 = *(v4 + 32);
    v15 = *(v4 + 48);
    v16 = *(v4 + 80);
    *(v3 + 688) = *(v4 + 64);
    *(v3 + 704) = v16;
    *(v3 + 656) = v14;
    *(v3 + 672) = v15;
    v17 = *(v4 + 96);
    v18 = *(v4 + 112);
    v19 = *(v4 + 128);
    *(v3 + 768) = *(v4 + 144);
    *(v3 + 736) = v18;
    *(v3 + 752) = v19;
    *(v3 + 720) = v17;
    outlined destroy of NSObject?(v3 + 624, &_s15SecureMessaging3MLSO17EncryptionContextVy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17EncryptionContextVy_AC9AllMemberO10Foundation4DataVGMR);
    v13 = closure #1 in MLS.Client.applicationEncrypt(data:withGroup:context:);
  }

  return MEMORY[0x2822009F8](v13, v5, 0);
}

{
  v20 = v0;

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[111];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v19[0] = v5;
    *v4 = 136315138;
    swift_beginAccess();
    v6 = *(v3 + 16);
    v7 = *(v3 + 24);

    v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v7, v19);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_264F1F000, v1, v2, "applicationEncrypt finished { identifier: %s }", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    MEMORY[0x266755550](v5, -1, -1);
    MEMORY[0x266755550](v4, -1, -1);
  }

  v9 = v0[117];
  v10 = v0[110];
  v11._countAndFlagsBits = 0x6E61487473726946;
  v11._object = 0xEE00656B61687364;
  MetricCollector.end(label:)(v11);
  v12 = v0[98];
  v13 = v0[99];
  v14 = v0[100];
  v19[0] = v0[97];
  v19[1] = v12;
  v19[2] = v13;
  v19[3] = v14;
  outlined copy of Data?(v19[0], v12);
  v15 = *(v9 + 88);
  v16 = *(v9 + 104);

  MLS.EncryptionProcessedContext.init(dataContext:)(v19, v15, v16, v10);
  outlined consume of Data?(v0[97], v0[98]);

  v17 = v0[1];

  return v17();
}

{
  return (*(v0 + 8))();
}

uint64_t MLS.Client.applicationEncrypt(groupName:withGroup:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[13].i64[1] = a6;
  v7[14].i64[0] = v6;
  v7[12].i64[1] = a4;
  v7[13].i64[0] = a5;
  v7[11].i64[1] = a2;
  v7[12].i64[0] = a3;
  v7[11].i64[0] = a1;
  v8 = *v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v7[14].i64[1] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging15MetricCollectorV5EventVSgMd, &_s15SecureMessaging15MetricCollectorV5EventVSgMR);
  v7[15].i64[0] = swift_task_alloc();
  v9 = type metadata accessor for UUID();
  v7[15].i64[1] = v9;
  v7[16].i64[0] = *(v9 - 8);
  v7[16].i64[1] = swift_task_alloc();
  v10 = v8[5];
  v11 = v8[6];
  v7[17] = vzip2q_s64(v10, v11);
  v7[7] = v11;
  v7[6] = v10;
  v7[18].i64[0] = type metadata accessor for MLS.GroupNameEncryptionContext(255, v7[6].i64);
  v12 = type metadata accessor for Optional();
  v7[18].i64[1] = v12;
  v7[19].i64[0] = *(v12 - 8);
  v7[19].i64[1] = swift_task_alloc();

  return MEMORY[0x2822009F8](MLS.Client.applicationEncrypt(groupName:withGroup:context:), v6, 0);
}

uint64_t MLS.Client.applicationEncrypt(groupName:withGroup:context:)()
{
  v61 = v0;
  v2 = *(v0 + 304);
  v1 = *(v0 + 312);
  v4 = *(v0 + 288);
  v3 = *(v0 + 296);
  v5 = *(v0 + 216);
  v6 = swift_allocObject();
  *(v0 + 320) = v6;
  (*(v2 + 16))(v1, v5, v3);
  v7 = *(v4 - 8);
  if ((*(v7 + 48))(v1, 1, v4) == 1)
  {
    v9 = *(v0 + 256);
    v8 = *(v0 + 264);
    v10 = *(v0 + 248);
    (*(*(v0 + 304) + 8))(*(v0 + 312), *(v0 + 296));
    UUID.init()();
    v11 = UUID.uuidString.getter();
    v13 = v12;
    (*(v9 + 8))(v8, v10);
    v56 = xmmword_2651B5F50;
    v14 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_15SecureMessaging15MetricCollectorV5EventVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  }

  else
  {
    MLS.GroupNameEncryptionContext.dataContext.getter(*(v0 + 288), v58);
    v11 = v58[0];
    v13 = v58[1];
    v56 = v59;
    v14 = v60;
    (*(v7 + 8))(*(v0 + 312), *(v0 + 288));
  }

  *(v6 + 16) = v11;
  *(v6 + 24) = v13;
  *(v6 + 32) = v56;
  *(v6 + 48) = v14;

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v18 = *(v0 + 200);
    v17 = *(v0 + 208);
    v19 = *(v0 + 184);
    v20 = *(v0 + 192);
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v58[0] = v22;
    *v21 = 136315650;
    *(v21 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v20, v58);
    *(v21 + 12) = 2080;
    *(v21 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v17, v58);
    *(v21 + 22) = 2080;
    swift_beginAccess();
    v23 = *(v6 + 32);
    *(v0 + 16) = *(v6 + 16);
    *(v0 + 32) = v23;
    *(v0 + 48) = *(v6 + 48);
    outlined init with copy of MLS.OutgoingEventState?(v0 + 16, v0 + 56, &_s15SecureMessaging3MLSO26GroupNameEncryptionContextVy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO26GroupNameEncryptionContextVy_AC9AllMemberO10Foundation4DataVGMR);
    v24 = specialized MLS.GroupNameEncryptionContext.description.getter();
    v26 = v25;
    outlined destroy of NSObject?(v0 + 16, &_s15SecureMessaging3MLSO26GroupNameEncryptionContextVy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO26GroupNameEncryptionContextVy_AC9AllMemberO10Foundation4DataVGMR);
    v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v26, v58);

    *(v21 + 24) = v27;
    _os_log_impl(&dword_264F1F000, v15, v16, "applicationEncrypt groupName called { groupName: %s, group: %s, context: %s }", v21, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v22, -1, -1);
    MEMORY[0x266755550](v21, -1, -1);
  }

  v28 = *(v0 + 240);
  v53 = *(v0 + 232);
  swift_beginAccess();
  Date.init()();
  v29 = type metadata accessor for MetricCollector.Event(0);
  v30 = *(v29 + 20);
  v31 = type metadata accessor for Date();
  v32 = *(*(v31 - 8) + 56);
  v32(v28 + v30, 1, 1, v31);
  v33 = *(*(v29 - 8) + 56);
  v33(v28, 0, 1, v29);
  specialized Dictionary.subscript.setter(v28, 0x646E456F54646E45, 0xE800000000000000);
  Date.init()();
  v32(v28 + *(v29 + 20), 1, 1, v31);
  v33(v28, 0, 1, v29);
  specialized Dictionary.subscript.setter(v28, 0x6E61487473726946, 0xEE00656B61687364);
  Date.init()();
  v32(v28 + *(v29 + 20), 1, 1, v31);
  v33(v28, 0, 1, v29);
  specialized Dictionary.subscript.setter(v28, 0x6341746E65696C43, 0xEB00000000726F74);
  swift_endAccess();
  v34 = type metadata accessor for TaskPriority();
  (*(*(v34 - 8) + 56))(v53, 1, 1, v34);
  v35 = one-time initialization token for shared;

  v55 = v6;
  if (v35 != -1)
  {
    swift_once();
  }

  v36 = *(v0 + 272);
  v54 = *(v0 + 280);
  v37 = *(v0 + 224);
  v57 = *(v0 + 232);
  v38 = *(v0 + 200);
  v39 = *(v0 + 208);
  v40 = *(v0 + 184);
  v41 = *(v0 + 192);
  v42 = static MLSActor.shared;
  v43 = lazy protocol witness table accessor for type MLSActor and conformance MLSActor();
  v44 = swift_allocObject();
  v44[2] = v42;
  v44[3] = v43;
  v44[4] = v55;
  v44[5] = v37;
  v44[6] = v40;
  v44[7] = v41;
  v44[8] = v38;
  v44[9] = v39;
  v46 = type metadata accessor for MLS.GroupNameEncryptionProcessedContext(0, v36, v54, v45);

  v47 = _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfC(0, 0, v57, &async function pointer to partial apply for closure #1 in MLS.Client.applicationEncrypt(groupName:withGroup:context:), v44, v46);
  *(v0 + 328) = v47;
  v48 = swift_task_alloc();
  *(v0 + 336) = v48;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  *v48 = v0;
  v48[1] = MLS.Client.applicationEncrypt(groupName:withGroup:context:);
  v50 = *(v0 + 176);
  v51 = MEMORY[0x277D84950];

  return MEMORY[0x282200430](v50, v47, v46, v49, v51);
}

{
  v2 = *v1;
  *(*v1 + 344) = v0;

  v3 = *(v2 + 224);
  if (v0)
  {
    v4 = MLS.Client.applicationEncrypt(groupName:withGroup:context:);
  }

  else
  {
    v4 = MLS.Client.applicationEncrypt(groupName:withGroup:context:);
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t closure #1 in MLS.Client.applicationEncrypt(groupName:withGroup:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[25] = a8;
  v8[26] = v12;
  v8[23] = a6;
  v8[24] = a7;
  v8[21] = a4;
  v8[22] = a5;
  v8[20] = a1;
  v8[27] = *a5;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v9 = static MLSActor.shared;
  v8[28] = static MLSActor.shared;

  return MEMORY[0x2822009F8](closure #1 in MLS.Client.applicationEncrypt(groupName:withGroup:context:), v9, 0);
}

uint64_t closure #1 in MLS.Client.applicationEncrypt(groupName:withGroup:context:)()
{
  v2 = v0[21];
  v1 = v0[22];
  swift_beginAccess();
  v3._countAndFlagsBits = 0x6341746E65696C43;
  v3._object = 0xEB00000000726F74;
  MetricCollector.end(label:)(v3);
  swift_endAccess();
  v4 = v1[17];
  v5 = v1[18];
  __swift_project_boxed_opaque_existential_1(v1 + 14, v4);
  swift_beginAccess();
  v7 = v2[2];
  v6 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v10 = v2[6];
  v0[2] = v7;
  v0[3] = v6;
  v0[4] = v8;
  v0[5] = v9;
  v0[6] = v10;
  v11 = *(v5 + 104);

  outlined copy of Data?(v8, v9);

  v18 = (v11 + *v11);
  v12 = swift_task_alloc();
  v0[29] = v12;
  *v12 = v0;
  v12[1] = closure #1 in MLS.Client.applicationEncrypt(groupName:withGroup:context:);
  v13 = v0[25];
  v14 = v0[26];
  v15 = v0[23];
  v16 = v0[24];

  return (v18)(v0 + 7, v15, v16, v13, v14, v0 + 2, v4, v5);
}

{
  v2 = *v1;
  *(*v1 + 240) = v0;

  if (v0)
  {
    v3 = v2[28];
    v4 = v2[4];
    v5 = v2[5];

    outlined consume of Data?(v4, v5);

    v6 = closure #1 in MLS.Client.applicationEncrypt(groupName:withGroup:context:);
  }

  else
  {
    v3 = v2[28];
    v7 = v2[4];
    v8 = v2[5];

    outlined consume of Data?(v7, v8);

    v6 = closure #1 in MLS.Client.applicationEncrypt(groupName:withGroup:context:);
  }

  return MEMORY[0x2822009F8](v6, v3, 0);
}

{
  v20 = v0;

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[21];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v19[0] = v5;
    *v4 = 136315138;
    swift_beginAccess();
    v6 = *(v3 + 16);
    v7 = *(v3 + 24);

    v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v7, v19);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_264F1F000, v1, v2, "applicationEncrypt groupName finished { identifier: %s }", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    MEMORY[0x266755550](v5, -1, -1);
    MEMORY[0x266755550](v4, -1, -1);
  }

  v9 = v0[27];
  v10 = v0[20];
  v11._countAndFlagsBits = 0x6E61487473726946;
  v11._object = 0xEE00656B61687364;
  MetricCollector.end(label:)(v11);
  v12 = v0[8];
  v13 = v0[9];
  v14 = v0[10];
  v19[0] = v0[7];
  v19[1] = v12;
  v19[2] = v13;
  v19[3] = v14;
  outlined copy of Data?(v19[0], v12);
  v15 = *(v9 + 88);
  v16 = *(v9 + 104);

  MLS.GroupNameEncryptionProcessedContext.init(dataContext:)(v19, v15, v16, v10);
  outlined consume of Data?(v0[7], v0[8]);

  v17 = v0[1];

  return v17();
}

{
  return (*(v0 + 8))();
}

uint64_t MLS.Client.applicationSign(input:withGroup:context:)(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 360) = a5;
  *(v6 + 368) = v5;
  *(v6 + 344) = a3;
  *(v6 + 352) = a4;
  *(v6 + 336) = a1;
  v8 = *v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  *(v6 + 376) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging15MetricCollectorV5EventVSgMd, &_s15SecureMessaging15MetricCollectorV5EventVSgMR);
  *(v6 + 384) = swift_task_alloc();
  v9 = type metadata accessor for UUID();
  *(v6 + 392) = v9;
  *(v6 + 400) = *(v9 - 8);
  *(v6 + 408) = swift_task_alloc();
  v10 = *(v8 + 88);
  *(v6 + 416) = v10;
  v11 = *(v8 + 104);
  *(v6 + 424) = v11;
  *(v6 + 432) = type metadata accessor for MLS.SigningContext(255, v10, v11, v12);
  v13 = type metadata accessor for Optional();
  *(v6 + 440) = v13;
  *(v6 + 448) = *(v13 - 8);
  *(v6 + 456) = swift_task_alloc();
  v14 = a2[1];
  *(v6 + 16) = *a2;
  *(v6 + 32) = v14;
  *(v6 + 48) = a2[2];
  *(v6 + 60) = *(a2 + 44);

  return MEMORY[0x2822009F8](MLS.Client.applicationSign(input:withGroup:context:), v5, 0);
}

uint64_t MLS.Client.applicationSign(input:withGroup:context:)()
{
  v71 = v0;
  v2 = *(v0 + 448);
  v1 = *(v0 + 456);
  v4 = *(v0 + 432);
  v3 = *(v0 + 440);
  v5 = *(v0 + 360);
  v6 = swift_allocObject();
  *(v0 + 464) = v6;
  (*(v2 + 16))(v1, v5, v3);
  v7 = *(v4 - 8);
  if ((*(v7 + 48))(v1, 1, v4) == 1)
  {
    v9 = *(v0 + 400);
    v8 = *(v0 + 408);
    v10 = *(v0 + 392);
    (*(*(v0 + 448) + 8))(*(v0 + 456), *(v0 + 440));
    UUID.init()();
    v11 = UUID.uuidString.getter();
    v13 = v12;
    (*(v9 + 8))(v8, v10);
    v63 = xmmword_2651B5F50;
    v14 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_15SecureMessaging15MetricCollectorV5EventVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  }

  else
  {
    MLS.SigningContext.dataContext.getter(*(v0 + 432), &v66);
    v11 = v66;
    v13 = v67;
    v63 = v68;
    v14 = v69;
    (*(v7 + 8))(*(v0 + 456), *(v0 + 432));
  }

  *(v6 + 16) = v11;
  *(v6 + 24) = v13;
  *(v6 + 32) = v63;
  *(v6 + 48) = v14;
  outlined init with copy of MLS.SigningInput(v0 + 16, v0 + 80);

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  outlined destroy of MLS.SigningInput(v0 + 16);

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v65 = v18;
    *v17 = 136315650;
    v19 = *(v0 + 40);
    v21 = *(v0 + 48);
    v20 = *(v0 + 56);
    v22 = *(v0 + 64);
    v23 = *(v0 + 72);
    v24 = (v21 >> 60) & 3;
    v62 = v18;
    if (v24)
    {
      LOWORD(v66) = *(v0 + 32);
      v67 = v19;
      *&v68 = v21 & 0xCFFFFFFFFFFFFFFFLL;
      if (v24 == 1)
      {
        *(&v68 + 1) = v20;
        v69 = v22;
        LOWORD(v70) = v23;
        v25 = MLS.EncryptedRCS.DisplayIMDNSigningInput.description.getter();
      }

      else
      {
        v25 = MLS.EncryptedRCS.FileTransferSigningInput.description.getter();
      }
    }

    else
    {
      LOWORD(v66) = *(v0 + 32);
      v67 = v19;
      *&v68 = v21;
      *(&v68 + 1) = v20;
      v69 = v22;
      v70 = v23;
      v25 = MLS.EncryptedRCS.DeliveryIMDNSigningInput.description.getter();
    }

    v28 = *(v0 + 344);
    v27 = *(v0 + 352);
    v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, &v65);

    *(v17 + 4) = v29;
    *(v17 + 12) = 2080;
    *(v17 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v27, &v65);
    *(v17 + 22) = 2080;
    swift_beginAccess();
    v30 = *(v6 + 32);
    *(v0 + 208) = *(v6 + 16);
    *(v0 + 224) = v30;
    *(v0 + 240) = *(v6 + 48);
    outlined init with copy of MLS.OutgoingEventState?(v0 + 208, v0 + 248, &_s15SecureMessaging3MLSO14SigningContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO14SigningContextVy_10Foundation4DataVGMR);
    v31 = specialized MLS.SigningContext.description.getter();
    v33 = v32;
    outlined destroy of NSObject?(v0 + 208, &_s15SecureMessaging3MLSO14SigningContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO14SigningContextVy_10Foundation4DataVGMR);
    v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v33, &v65);

    *(v17 + 24) = v34;
    _os_log_impl(&dword_264F1F000, v15, v16, "applicationSign called { input: %s, group: %s, context: %s }", v17, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v62, -1, -1);
    MEMORY[0x266755550](v17, -1, -1);
  }

  v35 = *(v0 + 384);
  v61 = *(v0 + 376);
  swift_beginAccess();
  Date.init()();
  v36 = type metadata accessor for MetricCollector.Event(0);
  v37 = *(v36 + 20);
  v38 = type metadata accessor for Date();
  v39 = *(*(v38 - 8) + 56);
  v39(v35 + v37, 1, 1, v38);
  v40 = *(*(v36 - 8) + 56);
  v40(v35, 0, 1, v36);
  specialized Dictionary.subscript.setter(v35, 0x646E456F54646E45, 0xE800000000000000);
  Date.init()();
  v39(v35 + *(v36 + 20), 1, 1, v38);
  v40(v35, 0, 1, v36);
  specialized Dictionary.subscript.setter(v35, 0x6E61487473726946, 0xEE00656B61687364);
  Date.init()();
  v39(v35 + *(v36 + 20), 1, 1, v38);
  v40(v35, 0, 1, v36);
  specialized Dictionary.subscript.setter(v35, 0x6341746E65696C43, 0xEB00000000726F74);
  swift_endAccess();
  v41 = type metadata accessor for TaskPriority();
  (*(*(v41 - 8) + 56))(v61, 1, 1, v41);
  outlined init with copy of MLS.SigningInput(v0 + 16, v0 + 144);
  v42 = one-time initialization token for shared;

  v43 = v6;
  if (v42 != -1)
  {
    swift_once();
  }

  v45 = *(v0 + 416);
  v44 = *(v0 + 424);
  v46 = *(v0 + 368);
  v64 = *(v0 + 376);
  v47 = *(v0 + 344);
  v48 = *(v0 + 352);
  v49 = static MLSActor.shared;
  v50 = lazy protocol witness table accessor for type MLSActor and conformance MLSActor();
  v51 = swift_allocObject();
  *(v51 + 16) = v49;
  *(v51 + 24) = v50;
  *(v51 + 32) = v43;
  *(v51 + 40) = v46;
  v52 = *(v0 + 32);
  *(v51 + 48) = *(v0 + 16);
  *(v51 + 64) = v52;
  *(v51 + 80) = *(v0 + 48);
  *(v51 + 92) = *(v0 + 60);
  *(v51 + 112) = v47;
  *(v51 + 120) = v48;
  v54 = type metadata accessor for MLS.SigningProcessedContext(0, v45, v44, v53);

  v55 = _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfC(0, 0, v64, &async function pointer to partial apply for closure #1 in MLS.Client.applicationSign(input:withGroup:context:), v51, v54);
  *(v0 + 472) = v55;
  v56 = swift_task_alloc();
  *(v0 + 480) = v56;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  *v56 = v0;
  v56[1] = MLS.Client.applicationSign(input:withGroup:context:);
  v58 = *(v0 + 336);
  v59 = MEMORY[0x277D84950];

  return MEMORY[0x282200430](v58, v55, v54, v57, v59);
}

{
  v2 = *v1;
  *(*v1 + 488) = v0;

  v3 = *(v2 + 368);
  if (v0)
  {
    v4 = MLS.Client.applicationSign(input:withGroup:context:);
  }

  else
  {
    v4 = MLS.Client.applicationSign(input:withGroup:context:);
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t closure #1 in MLS.Client.applicationSign(input:withGroup:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[32] = a7;
  v8[33] = a8;
  v8[30] = a5;
  v8[31] = a6;
  v8[28] = a1;
  v8[29] = a4;
  v8[34] = *a5;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v9 = static MLSActor.shared;
  v8[35] = static MLSActor.shared;

  return MEMORY[0x2822009F8](closure #1 in MLS.Client.applicationSign(input:withGroup:context:), v9, 0);
}

uint64_t closure #1 in MLS.Client.applicationSign(input:withGroup:context:)()
{
  v2 = *(v0 + 240);
  v1 = *(v0 + 248);
  v3 = *(v0 + 232);
  swift_beginAccess();
  v4._countAndFlagsBits = 0x6341746E65696C43;
  v4._object = 0xEB00000000726F74;
  MetricCollector.end(label:)(v4);
  swift_endAccess();
  v5 = v2[17];
  v6 = v2[18];
  __swift_project_boxed_opaque_existential_1(v2 + 14, v5);
  v8 = v1[1];
  v7 = v1[2];
  v9 = *v1;
  *(v0 + 60) = *(v1 + 44);
  *(v0 + 32) = v8;
  *(v0 + 48) = v7;
  *(v0 + 16) = v9;
  swift_beginAccess();
  v11 = v3[2];
  v10 = v3[3];
  v12 = v3[4];
  v13 = v3[5];
  v14 = v3[6];
  *(v0 + 80) = v11;
  *(v0 + 88) = v10;
  *(v0 + 96) = v12;
  *(v0 + 104) = v13;
  *(v0 + 112) = v14;
  v15 = *(v6 + 112);

  outlined copy of Data?(v12, v13);

  v20 = (v15 + *v15);
  v16 = swift_task_alloc();
  *(v0 + 288) = v16;
  *v16 = v0;
  v16[1] = closure #1 in MLS.Client.applicationSign(input:withGroup:context:);
  v17 = *(v0 + 256);
  v18 = *(v0 + 264);

  return v20(v0 + 120, v0 + 16, v17, v18, v0 + 80, v5, v6);
}

{
  v2 = *v1;
  *(*v1 + 296) = v0;

  if (v0)
  {
    v3 = v2[35];
    v4 = v2[12];
    v5 = v2[13];

    outlined consume of Data?(v4, v5);

    v6 = closure #1 in MLS.Client.applicationSign(input:withGroup:context:);
  }

  else
  {
    v3 = v2[35];
    v7 = v2[12];
    v8 = v2[13];

    outlined consume of Data?(v7, v8);

    v6 = closure #1 in MLS.Client.applicationSign(input:withGroup:context:);
  }

  return MEMORY[0x2822009F8](v6, v3, 0);
}

{
  v20 = v0;

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[29];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v19[0] = v5;
    *v4 = 136315138;
    swift_beginAccess();
    v6 = *(v3 + 16);
    v7 = *(v3 + 24);

    v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v7, v19);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_264F1F000, v1, v2, "applicationSign finished { identifier: %s }", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    MEMORY[0x266755550](v5, -1, -1);
    MEMORY[0x266755550](v4, -1, -1);
  }

  v9 = v0[34];
  v10 = v0[28];
  v11._countAndFlagsBits = 0x6E61487473726946;
  v11._object = 0xEE00656B61687364;
  MetricCollector.end(label:)(v11);
  v12 = v0[16];
  v13 = v0[17];
  v14 = v0[18];
  v19[0] = v0[15];
  v19[1] = v12;
  v19[2] = v13;
  v19[3] = v14;
  outlined copy of Data?(v19[0], v12);
  v15 = *(v9 + 88);
  v16 = *(v9 + 104);

  MLS.SigningProcessedContext.init(dataContext:)(v19, v15, v16, v10);
  outlined consume of Data?(v0[15], v0[16]);

  v17 = v0[1];

  return v17();
}

{
  return (*(v0 + 8))();
}

uint64_t MLS.Client.processIncoming(message:forGroup:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[54] = a5;
  v6[55] = v5;
  v6[52] = a3;
  v6[53] = a4;
  v6[50] = a1;
  v6[51] = a2;
  v7 = *v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v6[56] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging15MetricCollectorV5EventVSgMd, &_s15SecureMessaging15MetricCollectorV5EventVSgMR);
  v6[57] = swift_task_alloc();
  v8 = v7[10];
  v6[58] = v8;
  v9 = v7[12];
  v6[59] = v9;
  v11 = type metadata accessor for MLS.IncomingMessage(0, v8, v9, v10);
  v6[60] = v11;
  v12 = *(v11 - 8);
  v6[61] = v12;
  v6[62] = *(v12 + 64);
  v6[63] = swift_task_alloc();
  v6[64] = swift_task_alloc();
  v13 = type metadata accessor for UUID();
  v6[65] = v13;
  v6[66] = *(v13 - 8);
  v6[67] = swift_task_alloc();
  v14 = v7[11];
  v6[68] = v14;
  v15 = v7[13];
  v6[69] = v15;
  v6[70] = type metadata accessor for MLS.IncomingMessageContext(255, v14, v15, v16);
  v17 = type metadata accessor for Optional();
  v6[71] = v17;
  v6[72] = *(v17 - 8);
  v6[73] = swift_task_alloc();

  return MEMORY[0x2822009F8](MLS.Client.processIncoming(message:forGroup:context:), v5, 0);
}

uint64_t MLS.Client.processIncoming(message:forGroup:context:)()
{
  v89 = v0;
  v1 = *(v0 + 584);
  v2 = *(v0 + 576);
  v3 = *(v0 + 568);
  v4 = *(v0 + 560);
  v5 = *(v0 + 432);
  v6 = swift_allocObject();
  *(v0 + 592) = v6;
  (*(v2 + 16))(v1, v5, v3);
  v7 = *(v4 - 8);
  if ((*(v7 + 48))(v1, 1, v4) == 1)
  {
    v8 = *(v0 + 536);
    v9 = *(v0 + 528);
    v10 = *(v0 + 520);
    (*(*(v0 + 576) + 8))(*(v0 + 584), *(v0 + 568));
    UUID.init()();
    v11 = UUID.uuidString.getter();
    v13 = v12;
    (*(v9 + 8))(v8, v10);
    v14 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_15SecureMessaging15MetricCollectorV5EventVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    *(v6 + 16) = v11;
    *(v6 + 24) = v13;
    *(v6 + 32) = xmmword_2651B5F50;
    *(v6 + 48) = 0;
    *(v6 + 56) = 0;
    *(v6 + 64) = 0xFFFFFFFF0000;
    *(v6 + 72) = 0u;
    *(v6 + 88) = 0u;
    *(v6 + 104) = 0;
    *(v6 + 112) = xmmword_2651B5F50;
    *(v6 + 128) = 0u;
    *(v6 + 144) = 0u;
    *(v6 + 160) = 0;
    *(v6 + 168) = 0xF000000000000000;
    *(v6 + 176) = v14;
  }

  else
  {
    MLS.IncomingMessageContext.dataContext.getter(*(v0 + 560), v87);
    (*(v7 + 8))(*(v0 + 584), *(v0 + 560));
    v15 = v87[9];
    *(v6 + 144) = v87[8];
    *(v6 + 160) = v15;
    *(v6 + 176) = v88;
    v16 = v87[5];
    *(v6 + 80) = v87[4];
    *(v6 + 96) = v16;
    v17 = v87[7];
    *(v6 + 112) = v87[6];
    *(v6 + 128) = v17;
    v18 = v87[1];
    *(v6 + 16) = v87[0];
    *(v6 + 32) = v18;
    v19 = v87[3];
    *(v6 + 48) = v87[2];
    *(v6 + 64) = v19;
  }

  v20 = *(*(v0 + 488) + 16);
  v20(*(v0 + 512), *(v0 + 408), *(v0 + 480));

  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();

  v23 = os_log_type_enabled(v21, v22);
  v24 = *(v0 + 512);
  v83 = v20;
  if (v23)
  {
    v25 = *(v0 + 504);
    v81 = v22;
    v27 = *(v0 + 480);
    v26 = *(v0 + 488);
    v73 = *(v0 + 416);
    v76 = *(v0 + 424);
    v28 = swift_slowAlloc();
    v79 = swift_slowAlloc();
    v86 = v79;
    *v28 = 136315650;
    v20(v25, v24, v27);
    v29 = *(v26 + 8);
    v29(v24, v27);
    v30 = MLS.IncomingMessage.description.getter(v27);
    v32 = v31;
    v29(v25, v27);
    v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v32, &v86);

    *(v28 + 4) = v33;
    *(v28 + 12) = 2080;
    *(v28 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v73, v76, &v86);
    *(v28 + 22) = 2080;
    swift_beginAccess();
    v34 = *(v6 + 160);
    *(v0 + 144) = *(v6 + 144);
    *(v0 + 160) = v34;
    *(v0 + 176) = *(v6 + 176);
    v35 = *(v6 + 96);
    *(v0 + 80) = *(v6 + 80);
    *(v0 + 96) = v35;
    v36 = *(v6 + 128);
    *(v0 + 112) = *(v6 + 112);
    *(v0 + 128) = v36;
    v37 = *(v6 + 32);
    *(v0 + 16) = *(v6 + 16);
    *(v0 + 32) = v37;
    v38 = *(v6 + 64);
    *(v0 + 48) = *(v6 + 48);
    *(v0 + 64) = v38;
    outlined init with copy of MLS.OutgoingEventState?(v0 + 16, v0 + 184, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    v39 = specialized MLS.IncomingMessageContext.description.getter();
    v41 = v40;
    outlined destroy of NSObject?(v0 + 16, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v41, &v86);

    *(v28 + 24) = v42;
    _os_log_impl(&dword_264F1F000, v21, v81, "processIncoming called { message: %s, group: %s, context: %s }", v28, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v79, -1, -1);
    MEMORY[0x266755550](v28, -1, -1);
  }

  else
  {
    (*(*(v0 + 488) + 8))(v24, *(v0 + 480));
  }

  v74 = *(v0 + 504);
  v77 = *(v0 + 480);
  v43 = *(v0 + 456);
  v69 = *(v0 + 448);
  v71 = *(v0 + 408);
  swift_beginAccess();
  Date.init()();
  v44 = type metadata accessor for MetricCollector.Event(0);
  v45 = *(v44 + 20);
  v46 = type metadata accessor for Date();
  v47 = *(*(v46 - 8) + 56);
  v47(v43 + v45, 1, 1, v46);
  v48 = *(*(v44 - 8) + 56);
  v48(v43, 0, 1, v44);
  specialized Dictionary.subscript.setter(v43, 0x646E456F54646E45, 0xE800000000000000);
  Date.init()();
  v47(v43 + *(v44 + 20), 1, 1, v46);
  v48(v43, 0, 1, v44);
  specialized Dictionary.subscript.setter(v43, 0x6E61487473726946, 0xEE00656B61687364);
  Date.init()();
  v47(v43 + *(v44 + 20), 1, 1, v46);
  v48(v43, 0, 1, v44);
  specialized Dictionary.subscript.setter(v43, 0x6341746E65696C43, 0xEB00000000726F74);
  swift_endAccess();
  v49 = type metadata accessor for TaskPriority();
  (*(*(v49 - 8) + 56))(v69, 1, 1, v49);
  v83(v74, v71, v77);
  v50 = one-time initialization token for shared;

  if (v50 != -1)
  {
    swift_once();
  }

  v51 = *(v0 + 544);
  v52 = *(v0 + 496);
  v53 = *(v0 + 488);
  v70 = *(v0 + 472);
  v72 = *(v0 + 552);
  v68 = *(v0 + 464);
  v84 = *(v0 + 504);
  v85 = *(v0 + 448);
  v78 = *(v0 + 440);
  v80 = *(v0 + 480);
  v82 = *(v0 + 424);
  v75 = *(v0 + 416);
  v54 = static MLSActor.shared;
  v55 = lazy protocol witness table accessor for type MLSActor and conformance MLSActor();
  v56 = (*(v53 + 80) + 72) & ~*(v53 + 80);
  v57 = (v52 + v56 + 7) & 0xFFFFFFFFFFFFFFF8;
  v58 = swift_allocObject();
  *(v58 + 2) = v54;
  *(v58 + 3) = v55;
  *(v58 + 4) = v68;
  *(v58 + 5) = v51;
  *(v58 + 6) = v70;
  *(v58 + 7) = v72;
  *(v58 + 8) = v6;
  (*(v53 + 32))(&v58[v56], v84, v80);
  *&v58[v57] = v78;
  v59 = &v58[(v57 + 15) & 0xFFFFFFFFFFFFFFF8];
  *v59 = v75;
  *(v59 + 1) = v82;
  v61 = type metadata accessor for MLS.IncomingMessageProcessedContext(0, v51, v72, v60);

  v62 = _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfC(0, 0, v85, &async function pointer to partial apply for closure #1 in MLS.Client.processIncoming(message:forGroup:context:), v58, v61);
  *(v0 + 600) = v62;
  v63 = swift_task_alloc();
  *(v0 + 608) = v63;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  *v63 = v0;
  v63[1] = MLS.Client.processIncoming(message:forGroup:context:);
  v65 = *(v0 + 400);
  v66 = MEMORY[0x277D84950];

  return MEMORY[0x282200430](v65, v62, v61, v64, v66);
}

{
  v2 = *v1;
  *(*v1 + 616) = v0;

  v3 = *(v2 + 440);
  if (v0)
  {
    v4 = MLS.Client.processIncoming(message:forGroup:context:);
  }

  else
  {
    v4 = MLS.Client.processIncoming(message:forGroup:context:);
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t closure #1 in MLS.Client.processIncoming(message:forGroup:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  v8[217] = a8;
  v8[216] = a7;
  v8[215] = a6;
  v8[214] = a5;
  v8[213] = a4;
  v8[212] = a1;
  v8[218] = *a6;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v9 = static MLSActor.shared;
  v8[219] = static MLSActor.shared;

  return MEMORY[0x2822009F8](closure #1 in MLS.Client.processIncoming(message:forGroup:context:), v9, 0);
}

uint64_t closure #1 in MLS.Client.processIncoming(message:forGroup:context:)()
{
  v1 = *(v0 + 1744);
  v2 = *(v0 + 1720);
  v3 = *(v0 + 1704);
  swift_beginAccess();
  v4._countAndFlagsBits = 0x6341746E65696C43;
  v4._object = 0xEB00000000726F74;
  MetricCollector.end(label:)(v4);
  swift_endAccess();
  v6 = type metadata accessor for MLS.IncomingMessage(0, *(v1 + 80), *(v1 + 96), v5);
  MLS.IncomingMessage.allMemberIncomingMessage.getter(v6, v0 + 1496);
  v7 = v2[17];
  v8 = v2[18];
  __swift_project_boxed_opaque_existential_1(v2 + 14, v7);
  v9 = *(v0 + 1512);
  *(v0 + 1560) = *(v0 + 1496);
  *(v0 + 1576) = v9;
  *(v0 + 1592) = *(v0 + 1528);
  *(v0 + 1602) = *(v0 + 1538);
  swift_beginAccess();
  v10 = *(v3 + 16);
  v11 = *(v3 + 48);
  *(v0 + 32) = *(v3 + 32);
  *(v0 + 48) = v11;
  *(v0 + 16) = v10;
  v12 = *(v3 + 64);
  v13 = *(v3 + 80);
  v14 = *(v3 + 112);
  *(v0 + 96) = *(v3 + 96);
  *(v0 + 112) = v14;
  *(v0 + 64) = v12;
  *(v0 + 80) = v13;
  v15 = *(v3 + 128);
  v16 = *(v3 + 144);
  v17 = *(v3 + 160);
  *(v0 + 176) = *(v3 + 176);
  *(v0 + 144) = v16;
  *(v0 + 160) = v17;
  *(v0 + 128) = v15;
  v18 = *(v3 + 16);
  v19 = *(v3 + 32);
  *(v0 + 216) = *(v3 + 48);
  *(v0 + 200) = v19;
  *(v0 + 184) = v18;
  v20 = *(v3 + 64);
  v21 = *(v3 + 80);
  v22 = *(v3 + 112);
  *(v0 + 264) = *(v3 + 96);
  *(v0 + 280) = v22;
  *(v0 + 248) = v21;
  *(v0 + 232) = v20;
  v23 = *(v3 + 128);
  v24 = *(v3 + 144);
  v25 = *(v3 + 160);
  *(v0 + 344) = *(v3 + 176);
  *(v0 + 312) = v24;
  *(v0 + 328) = v25;
  *(v0 + 296) = v23;
  v26 = *(v8 + 120);
  outlined init with copy of MLS.OutgoingEventState?(v0 + 16, v0 + 352, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
  v31 = (v26 + *v26);
  v27 = swift_task_alloc();
  *(v0 + 1760) = v27;
  *v27 = v0;
  v27[1] = closure #1 in MLS.Client.processIncoming(message:forGroup:context:);
  v28 = *(v0 + 1736);
  v29 = *(v0 + 1728);

  return v31(v0 + 856, v0 + 1560, v29, v28, v0 + 184, v7, v8);
}

{
  v2 = *v1;
  v3 = *v1;
  v4 = *v1 + 184;
  *(*v1 + 1768) = v0;

  v5 = *(v2 + 1752);
  v6 = *v4;
  v7 = *(v4 + 32);
  if (v0)
  {
    *(v3 + 536) = *(v4 + 16);
    *(v3 + 552) = v7;
    *(v3 + 520) = v6;
    v8 = *(v4 + 48);
    v9 = *(v4 + 64);
    v10 = *(v4 + 96);
    *(v3 + 600) = *(v4 + 80);
    *(v3 + 616) = v10;
    *(v3 + 568) = v8;
    *(v3 + 584) = v9;
    v11 = *(v4 + 112);
    v12 = *(v4 + 128);
    v13 = *(v4 + 144);
    *(v3 + 680) = *(v4 + 160);
    *(v3 + 648) = v12;
    *(v3 + 664) = v13;
    *(v3 + 632) = v11;
    outlined destroy of NSObject?(v3 + 520, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    v14 = closure #1 in MLS.Client.processIncoming(message:forGroup:context:);
  }

  else
  {
    *(v3 + 704) = *(v4 + 16);
    *(v3 + 720) = v7;
    *(v3 + 688) = v6;
    v15 = *(v4 + 48);
    v16 = *(v4 + 64);
    v17 = *(v4 + 96);
    *(v3 + 768) = *(v4 + 80);
    *(v3 + 784) = v17;
    *(v3 + 736) = v15;
    *(v3 + 752) = v16;
    v18 = *(v4 + 112);
    v19 = *(v4 + 128);
    v20 = *(v4 + 144);
    *(v3 + 848) = *(v4 + 160);
    *(v3 + 816) = v19;
    *(v3 + 832) = v20;
    *(v3 + 800) = v18;
    outlined destroy of NSObject?(v3 + 688, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    v14 = closure #1 in MLS.Client.processIncoming(message:forGroup:context:);
  }

  return MEMORY[0x2822009F8](v14, v5, 0);
}

{
  v36 = v0;
  v1 = (v0 + 856);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 1704);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *&v35[0] = v6;
    *v5 = 136315138;
    swift_beginAccess();
    v7 = *(v4 + 16);
    v8 = *(v4 + 24);

    v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v8, v35);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_264F1F000, v2, v3, "processIncoming finished { identifier: %s }", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x266755550](v6, -1, -1);
    MEMORY[0x266755550](v5, -1, -1);
  }

  v10 = *(v0 + 1768);
  v11 = *(v0 + 1744);
  v12 = *(v0 + 1696);
  v13._countAndFlagsBits = 0x6E61487473726946;
  v13._object = 0xEE00656B61687364;
  MetricCollector.end(label:)(v13);
  v15 = *(v0 + 920);
  v14 = *(v0 + 936);
  v16 = *(v0 + 904);
  *(v0 + 1048) = v15;
  *(v0 + 1064) = v14;
  v17 = *(v0 + 936);
  v19 = *(v0 + 952);
  v18 = *(v0 + 968);
  *(v0 + 1080) = v19;
  *(v0 + 1096) = v18;
  v20 = *(v0 + 872);
  *(v0 + 984) = *v1;
  *(v0 + 1000) = v20;
  v21 = *(v0 + 904);
  v23 = *v1;
  v22 = *(v0 + 872);
  v24 = *(v0 + 888);
  *(v0 + 1016) = v24;
  *(v0 + 1032) = v21;
  v35[4] = v15;
  v35[5] = v17;
  v25 = *(v0 + 968);
  v35[6] = v19;
  v35[7] = v25;
  v35[0] = v23;
  v35[1] = v22;
  v35[2] = v24;
  v35[3] = v16;
  outlined init with copy of MLS.OutgoingEventState?(v0 + 984, v0 + 1112, &_s15SecureMessaging3MLSO31IncomingMessageProcessedContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO31IncomingMessageProcessedContextVy_10Foundation4DataVGMR);
  MLS.IncomingMessageProcessedContext.init(dataContext:)(v35, *(v11 + 88), *(v11 + 104), v12);
  v26 = *(v0 + 936);
  if (v10)
  {
    *(v0 + 1304) = *(v0 + 920);
    *(v0 + 1320) = v26;
    v27 = *(v0 + 968);
    *(v0 + 1336) = *(v0 + 952);
    *(v0 + 1352) = v27;
    v28 = *(v0 + 872);
    *(v0 + 1240) = *v1;
    *(v0 + 1256) = v28;
    v29 = *(v0 + 904);
    *(v0 + 1272) = *(v0 + 888);
    *(v0 + 1288) = v29;
    outlined destroy of NSObject?(v0 + 1240, &_s15SecureMessaging3MLSO31IncomingMessageProcessedContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO31IncomingMessageProcessedContextVy_10Foundation4DataVGMR);
  }

  else
  {
    *(v0 + 1432) = *(v0 + 920);
    *(v0 + 1448) = v26;
    v31 = *(v0 + 968);
    *(v0 + 1464) = *(v0 + 952);
    *(v0 + 1480) = v31;
    v32 = *(v0 + 872);
    *(v0 + 1368) = *v1;
    *(v0 + 1384) = v32;
    v33 = *(v0 + 904);
    *(v0 + 1400) = *(v0 + 888);
    *(v0 + 1416) = v33;
    outlined destroy of NSObject?(v0 + 1368, &_s15SecureMessaging3MLSO31IncomingMessageProcessedContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO31IncomingMessageProcessedContextVy_10Foundation4DataVGMR);
  }

  outlined destroy of NSObject?(v0 + 1496, &_s15SecureMessaging3MLSO15IncomingMessageVy_AC9AllMemberOGMd, &_s15SecureMessaging3MLSO15IncomingMessageVy_AC9AllMemberOGMR);
  v30 = *(v0 + 8);

  return v30();
}

{
  outlined destroy of NSObject?(v0 + 1496, &_s15SecureMessaging3MLSO15IncomingMessageVy_AC9AllMemberOGMd, &_s15SecureMessaging3MLSO15IncomingMessageVy_AC9AllMemberOGMR);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t MLS.Client.processIncoming(message:context:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[52] = a3;
  v4[53] = v3;
  v4[50] = a1;
  v4[51] = a2;
  v5 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v4[54] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging15MetricCollectorV5EventVSgMd, &_s15SecureMessaging15MetricCollectorV5EventVSgMR);
  v4[55] = swift_task_alloc();
  v6 = v5[10];
  v4[56] = v6;
  v7 = v5[12];
  v4[57] = v7;
  v9 = type metadata accessor for MLS.IncomingMessage(0, v6, v7, v8);
  v4[58] = v9;
  v10 = *(v9 - 8);
  v4[59] = v10;
  v4[60] = *(v10 + 64);
  v4[61] = swift_task_alloc();
  v4[62] = swift_task_alloc();
  v11 = type metadata accessor for UUID();
  v4[63] = v11;
  v4[64] = *(v11 - 8);
  v4[65] = swift_task_alloc();
  v12 = v5[11];
  v4[66] = v12;
  v13 = v5[13];
  v4[67] = v13;
  v4[68] = type metadata accessor for MLS.IncomingMessageContext(255, v12, v13, v14);
  v15 = type metadata accessor for Optional();
  v4[69] = v15;
  v4[70] = *(v15 - 8);
  v4[71] = swift_task_alloc();

  return MEMORY[0x2822009F8](MLS.Client.processIncoming(message:context:), v3, 0);
}

uint64_t MLS.Client.processIncoming(message:context:)()
{
  v84 = v0;
  v1 = *(v0 + 568);
  v2 = *(v0 + 560);
  v3 = *(v0 + 552);
  v4 = *(v0 + 544);
  v5 = *(v0 + 416);
  v6 = swift_allocObject();
  *(v0 + 576) = v6;
  (*(v2 + 16))(v1, v5, v3);
  v7 = *(v4 - 8);
  if ((*(v7 + 48))(v1, 1, v4) == 1)
  {
    v8 = *(v0 + 520);
    v9 = *(v0 + 504);
    v10 = *(v0 + 512);
    (*(*(v0 + 560) + 8))(*(v0 + 568), *(v0 + 552));
    UUID.init()();
    v11 = UUID.uuidString.getter();
    v13 = v12;
    (*(v10 + 8))(v8, v9);
    v14 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_15SecureMessaging15MetricCollectorV5EventVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    *(v6 + 16) = v11;
    *(v6 + 24) = v13;
    *(v6 + 32) = xmmword_2651B5F50;
    *(v6 + 48) = 0;
    *(v6 + 56) = 0;
    *(v6 + 64) = 0xFFFFFFFF0000;
    *(v6 + 72) = 0u;
    *(v6 + 88) = 0u;
    *(v6 + 104) = 0;
    *(v6 + 112) = xmmword_2651B5F50;
    *(v6 + 128) = 0u;
    *(v6 + 144) = 0u;
    *(v6 + 160) = 0;
    *(v6 + 168) = 0xF000000000000000;
    *(v6 + 176) = v14;
  }

  else
  {
    MLS.IncomingMessageContext.dataContext.getter(*(v0 + 544), v82);
    (*(v7 + 8))(*(v0 + 568), *(v0 + 544));
    v15 = v82[9];
    *(v6 + 144) = v82[8];
    *(v6 + 160) = v15;
    *(v6 + 176) = v83;
    v16 = v82[5];
    *(v6 + 80) = v82[4];
    *(v6 + 96) = v16;
    v17 = v82[7];
    *(v6 + 112) = v82[6];
    *(v6 + 128) = v17;
    v18 = v82[1];
    *(v6 + 16) = v82[0];
    *(v6 + 32) = v18;
    v19 = v82[3];
    *(v6 + 48) = v82[2];
    *(v6 + 64) = v19;
  }

  v20 = *(*(v0 + 472) + 16);
  v20(*(v0 + 496), *(v0 + 408), *(v0 + 464));

  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();

  v23 = os_log_type_enabled(v21, v22);
  v24 = *(v0 + 496);
  v78 = v20;
  if (v23)
  {
    v25 = *(v0 + 488);
    v27 = *(v0 + 464);
    v26 = *(v0 + 472);
    v73 = v22;
    v28 = swift_slowAlloc();
    v76 = swift_slowAlloc();
    v81 = v76;
    *v28 = 136315394;
    v20(v25, v24, v27);
    v29 = *(v26 + 8);
    v29(v24, v27);
    v30 = MLS.IncomingMessage.description.getter(v27);
    v32 = v31;
    v29(v25, v27);
    v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v32, &v81);

    *(v28 + 4) = v33;
    *(v28 + 12) = 2080;
    swift_beginAccess();
    v34 = *(v6 + 160);
    *(v0 + 144) = *(v6 + 144);
    *(v0 + 160) = v34;
    *(v0 + 176) = *(v6 + 176);
    v35 = *(v6 + 96);
    *(v0 + 80) = *(v6 + 80);
    *(v0 + 96) = v35;
    v36 = *(v6 + 128);
    *(v0 + 112) = *(v6 + 112);
    *(v0 + 128) = v36;
    v37 = *(v6 + 32);
    *(v0 + 16) = *(v6 + 16);
    *(v0 + 32) = v37;
    v38 = *(v6 + 64);
    *(v0 + 48) = *(v6 + 48);
    *(v0 + 64) = v38;
    outlined init with copy of MLS.OutgoingEventState?(v0 + 16, v0 + 184, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    v39 = specialized MLS.IncomingMessageContext.description.getter();
    v41 = v40;
    outlined destroy of NSObject?(v0 + 16, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v41, &v81);

    *(v28 + 14) = v42;
    _os_log_impl(&dword_264F1F000, v21, v73, "processIncoming called deprecated version { message: %s, context: %s }", v28, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v76, -1, -1);
    MEMORY[0x266755550](v28, -1, -1);
  }

  else
  {
    (*(*(v0 + 472) + 8))(v24, *(v0 + 464));
  }

  v71 = *(v0 + 488);
  v74 = *(v0 + 464);
  v43 = *(v0 + 440);
  v68 = *(v0 + 432);
  v69 = *(v0 + 408);
  swift_beginAccess();
  Date.init()();
  v44 = type metadata accessor for MetricCollector.Event(0);
  v45 = *(v44 + 20);
  v46 = type metadata accessor for Date();
  v47 = *(*(v46 - 8) + 56);
  v47(v43 + v45, 1, 1, v46);
  v48 = *(*(v44 - 8) + 56);
  v48(v43, 0, 1, v44);
  specialized Dictionary.subscript.setter(v43, 0x646E456F54646E45, 0xE800000000000000);
  Date.init()();
  v47(v43 + *(v44 + 20), 1, 1, v46);
  v48(v43, 0, 1, v44);
  specialized Dictionary.subscript.setter(v43, 0x6E61487473726946, 0xEE00656B61687364);
  Date.init()();
  v47(v43 + *(v44 + 20), 1, 1, v46);
  v48(v43, 0, 1, v44);
  specialized Dictionary.subscript.setter(v43, 0x6341746E65696C43, 0xEB00000000726F74);
  swift_endAccess();
  v49 = type metadata accessor for TaskPriority();
  (*(*(v49 - 8) + 56))(v68, 1, 1, v49);
  v78(v71, v69, v74);
  v50 = one-time initialization token for shared;

  if (v50 != -1)
  {
    swift_once();
  }

  v51 = *(v0 + 536);
  v52 = *(v0 + 528);
  v53 = *(v0 + 480);
  v54 = *(v0 + 472);
  v77 = *(v0 + 464);
  v79 = *(v0 + 488);
  v70 = *(v0 + 448);
  v72 = *(v0 + 456);
  v80 = *(v0 + 432);
  v75 = *(v0 + 424);
  v55 = static MLSActor.shared;
  v56 = lazy protocol witness table accessor for type MLSActor and conformance MLSActor();
  v57 = (*(v54 + 80) + 72) & ~*(v54 + 80);
  v58 = (v53 + v57 + 7) & 0xFFFFFFFFFFFFFFF8;
  v59 = swift_allocObject();
  *(v59 + 2) = v55;
  *(v59 + 3) = v56;
  *(v59 + 4) = v70;
  *(v59 + 5) = v52;
  *(v59 + 6) = v72;
  *(v59 + 7) = v51;
  *(v59 + 8) = v6;
  (*(v54 + 32))(&v59[v57], v79, v77);
  *&v59[v58] = v75;
  v61 = type metadata accessor for MLS.IncomingMessageProcessedContext(0, v52, v51, v60);

  v62 = _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfC(0, 0, v80, &async function pointer to partial apply for closure #1 in MLS.Client.processIncoming(message:context:), v59, v61);
  *(v0 + 584) = v62;
  v63 = swift_task_alloc();
  *(v0 + 592) = v63;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  *v63 = v0;
  v63[1] = MLS.Client.processIncoming(message:context:);
  v65 = *(v0 + 400);
  v66 = MEMORY[0x277D84950];

  return MEMORY[0x282200430](v65, v62, v61, v64, v66);
}

{
  v2 = *v1;
  *(*v1 + 600) = v0;

  v3 = *(v2 + 424);
  if (v0)
  {
    v4 = MLS.Client.processIncoming(message:context:);
  }

  else
  {
    v4 = MLS.Client.processIncoming(message:context:);
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t closure #1 in MLS.Client.processIncoming(message:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v6[214] = a5;
  v6[215] = a6;
  v6[213] = a4;
  v6[212] = a1;
  v6[216] = *a6;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v7 = static MLSActor.shared;
  v6[217] = static MLSActor.shared;

  return MEMORY[0x2822009F8](closure #1 in MLS.Client.processIncoming(message:context:), v7, 0);
}

uint64_t closure #1 in MLS.Client.processIncoming(message:context:)()
{
  v1 = *(v0 + 1728);
  v2 = *(v0 + 1720);
  v3 = *(v0 + 1704);
  swift_beginAccess();
  v4._countAndFlagsBits = 0x6341746E65696C43;
  v4._object = 0xEB00000000726F74;
  MetricCollector.end(label:)(v4);
  swift_endAccess();
  v6 = type metadata accessor for MLS.IncomingMessage(0, *(v1 + 80), *(v1 + 96), v5);
  MLS.IncomingMessage.allMemberIncomingMessage.getter(v6, v0 + 1496);
  v7 = v2[17];
  v8 = v2[18];
  __swift_project_boxed_opaque_existential_1(v2 + 14, v7);
  v9 = *(v0 + 1512);
  *(v0 + 1560) = *(v0 + 1496);
  *(v0 + 1576) = v9;
  *(v0 + 1592) = *(v0 + 1528);
  *(v0 + 1602) = *(v0 + 1538);
  swift_beginAccess();
  v10 = *(v3 + 16);
  v11 = *(v3 + 48);
  *(v0 + 32) = *(v3 + 32);
  *(v0 + 48) = v11;
  *(v0 + 16) = v10;
  v12 = *(v3 + 64);
  v13 = *(v3 + 80);
  v14 = *(v3 + 112);
  *(v0 + 96) = *(v3 + 96);
  *(v0 + 112) = v14;
  *(v0 + 64) = v12;
  *(v0 + 80) = v13;
  v15 = *(v3 + 128);
  v16 = *(v3 + 144);
  v17 = *(v3 + 160);
  *(v0 + 176) = *(v3 + 176);
  *(v0 + 144) = v16;
  *(v0 + 160) = v17;
  *(v0 + 128) = v15;
  v18 = *(v3 + 16);
  v19 = *(v3 + 32);
  *(v0 + 216) = *(v3 + 48);
  *(v0 + 200) = v19;
  *(v0 + 184) = v18;
  v20 = *(v3 + 64);
  v21 = *(v3 + 80);
  v22 = *(v3 + 112);
  *(v0 + 264) = *(v3 + 96);
  *(v0 + 280) = v22;
  *(v0 + 248) = v21;
  *(v0 + 232) = v20;
  v23 = *(v3 + 128);
  v24 = *(v3 + 144);
  v25 = *(v3 + 160);
  *(v0 + 344) = *(v3 + 176);
  *(v0 + 312) = v24;
  *(v0 + 328) = v25;
  *(v0 + 296) = v23;
  v26 = *(v8 + 128);
  outlined init with copy of MLS.OutgoingEventState?(v0 + 16, v0 + 352, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
  v29 = (v26 + *v26);
  v27 = swift_task_alloc();
  *(v0 + 1744) = v27;
  *v27 = v0;
  v27[1] = closure #1 in MLS.Client.processIncoming(message:context:);

  return v29(v0 + 856, v0 + 1560, v0 + 184, v7, v8);
}

{
  v2 = *v1;
  v3 = *v1;
  v4 = *v1 + 184;
  *(*v1 + 1752) = v0;

  v5 = *(v2 + 1736);
  v6 = *v4;
  v7 = *(v4 + 32);
  if (v0)
  {
    *(v3 + 536) = *(v4 + 16);
    *(v3 + 552) = v7;
    *(v3 + 520) = v6;
    v8 = *(v4 + 48);
    v9 = *(v4 + 64);
    v10 = *(v4 + 96);
    *(v3 + 600) = *(v4 + 80);
    *(v3 + 616) = v10;
    *(v3 + 568) = v8;
    *(v3 + 584) = v9;
    v11 = *(v4 + 112);
    v12 = *(v4 + 128);
    v13 = *(v4 + 144);
    *(v3 + 680) = *(v4 + 160);
    *(v3 + 648) = v12;
    *(v3 + 664) = v13;
    *(v3 + 632) = v11;
    outlined destroy of NSObject?(v3 + 520, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    v14 = closure #1 in MLS.Client.processIncoming(message:context:);
  }

  else
  {
    *(v3 + 704) = *(v4 + 16);
    *(v3 + 720) = v7;
    *(v3 + 688) = v6;
    v15 = *(v4 + 48);
    v16 = *(v4 + 64);
    v17 = *(v4 + 96);
    *(v3 + 768) = *(v4 + 80);
    *(v3 + 784) = v17;
    *(v3 + 736) = v15;
    *(v3 + 752) = v16;
    v18 = *(v4 + 112);
    v19 = *(v4 + 128);
    v20 = *(v4 + 144);
    *(v3 + 848) = *(v4 + 160);
    *(v3 + 816) = v19;
    *(v3 + 832) = v20;
    *(v3 + 800) = v18;
    outlined destroy of NSObject?(v3 + 688, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    v14 = closure #1 in MLS.Client.processIncoming(message:context:);
  }

  return MEMORY[0x2822009F8](v14, v5, 0);
}

{
  v36 = v0;
  v1 = (v0 + 856);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 1704);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *&v35[0] = v6;
    *v5 = 136315138;
    swift_beginAccess();
    v7 = *(v4 + 16);
    v8 = *(v4 + 24);

    v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v8, v35);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_264F1F000, v2, v3, "processIncoming finished { identifier: %s }", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x266755550](v6, -1, -1);
    MEMORY[0x266755550](v5, -1, -1);
  }

  v10 = *(v0 + 1752);
  v11 = *(v0 + 1728);
  v12 = *(v0 + 1696);
  v13._countAndFlagsBits = 0x6E61487473726946;
  v13._object = 0xEE00656B61687364;
  MetricCollector.end(label:)(v13);
  v15 = *(v0 + 920);
  v14 = *(v0 + 936);
  v16 = *(v0 + 904);
  *(v0 + 1048) = v15;
  *(v0 + 1064) = v14;
  v17 = *(v0 + 936);
  v19 = *(v0 + 952);
  v18 = *(v0 + 968);
  *(v0 + 1080) = v19;
  *(v0 + 1096) = v18;
  v20 = *(v0 + 872);
  *(v0 + 984) = *v1;
  *(v0 + 1000) = v20;
  v21 = *(v0 + 904);
  v23 = *v1;
  v22 = *(v0 + 872);
  v24 = *(v0 + 888);
  *(v0 + 1016) = v24;
  *(v0 + 1032) = v21;
  v35[4] = v15;
  v35[5] = v17;
  v25 = *(v0 + 968);
  v35[6] = v19;
  v35[7] = v25;
  v35[0] = v23;
  v35[1] = v22;
  v35[2] = v24;
  v35[3] = v16;
  outlined init with copy of MLS.OutgoingEventState?(v0 + 984, v0 + 1112, &_s15SecureMessaging3MLSO31IncomingMessageProcessedContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO31IncomingMessageProcessedContextVy_10Foundation4DataVGMR);
  MLS.IncomingMessageProcessedContext.init(dataContext:)(v35, *(v11 + 88), *(v11 + 104), v12);
  v26 = *(v0 + 936);
  if (v10)
  {
    *(v0 + 1304) = *(v0 + 920);
    *(v0 + 1320) = v26;
    v27 = *(v0 + 968);
    *(v0 + 1336) = *(v0 + 952);
    *(v0 + 1352) = v27;
    v28 = *(v0 + 872);
    *(v0 + 1240) = *v1;
    *(v0 + 1256) = v28;
    v29 = *(v0 + 904);
    *(v0 + 1272) = *(v0 + 888);
    *(v0 + 1288) = v29;
    outlined destroy of NSObject?(v0 + 1240, &_s15SecureMessaging3MLSO31IncomingMessageProcessedContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO31IncomingMessageProcessedContextVy_10Foundation4DataVGMR);
  }

  else
  {
    *(v0 + 1432) = *(v0 + 920);
    *(v0 + 1448) = v26;
    v31 = *(v0 + 968);
    *(v0 + 1464) = *(v0 + 952);
    *(v0 + 1480) = v31;
    v32 = *(v0 + 872);
    *(v0 + 1368) = *v1;
    *(v0 + 1384) = v32;
    v33 = *(v0 + 904);
    *(v0 + 1400) = *(v0 + 888);
    *(v0 + 1416) = v33;
    outlined destroy of NSObject?(v0 + 1368, &_s15SecureMessaging3MLSO31IncomingMessageProcessedContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO31IncomingMessageProcessedContextVy_10Foundation4DataVGMR);
  }

  outlined destroy of NSObject?(v0 + 1496, &_s15SecureMessaging3MLSO15IncomingMessageVy_AC9AllMemberOGMd, &_s15SecureMessaging3MLSO15IncomingMessageVy_AC9AllMemberOGMR);
  v30 = *(v0 + 8);

  return v30();
}

{
  outlined destroy of NSObject?(v0 + 1496, &_s15SecureMessaging3MLSO15IncomingMessageVy_AC9AllMemberOGMd, &_s15SecureMessaging3MLSO15IncomingMessageVy_AC9AllMemberOGMR);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t MLS.Client.processIncoming(failureToDecrypt:context:)()
{
  return MEMORY[0x2822009F8](MLS.Client.processIncoming(failureToDecrypt:context:), v0, 0);
}

{
  lazy protocol witness table accessor for type MLS.IncomingMessageError and conformance MLS.IncomingMessageError();
  swift_allocError();
  *v1 = 17;
  *(v1 + 8) = 0;
  *(v1 + 16) = 0;
  swift_willThrow();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t MLS.Client.processIncoming(failureToDecrypt:withGroup:contextV2:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[23] = a5;
  v6[24] = v5;
  v6[21] = a3;
  v6[22] = a4;
  v6[19] = a1;
  v6[20] = a2;
  v7 = *v5;
  v8 = *(*v5 + 88);
  v6[25] = v8;
  v9 = type metadata accessor for Optional();
  v6[26] = v9;
  v6[27] = *(v9 - 8);
  v6[28] = swift_task_alloc();
  v10 = *(v7 + 104);
  v6[29] = v10;
  v6[30] = type metadata accessor for MLS.IncomingFailureToDecryptContext_v2(255, v8, v10, v11);
  v12 = type metadata accessor for Optional();
  v6[31] = v12;
  v6[32] = *(v12 - 8);
  v6[33] = swift_task_alloc();
  v6[34] = swift_task_alloc();
  v6[35] = swift_task_alloc();
  v6[36] = swift_task_alloc();
  v6[37] = swift_task_alloc();
  v6[38] = type metadata accessor for MLS.IncomingFailureToDecryptContext(255, v8, v10, v13);
  v14 = type metadata accessor for Optional();
  v6[39] = v14;
  v6[40] = *(v14 - 8);
  v6[41] = swift_task_alloc();

  return MEMORY[0x2822009F8](MLS.Client.processIncoming(failureToDecrypt:withGroup:contextV2:), v5, 0);
}

uint64_t MLS.Client.processIncoming(failureToDecrypt:withGroup:contextV2:)()
{
  v74 = v0;
  v1 = (v0 + 248);
  v2 = *(v0 + 296);
  v4 = (v0 + 240);
  v3 = *(v0 + 240);
  v69 = (*(v0 + 256) + 16);
  v70 = *v69;
  (*v69)(v2, *(v0 + 184), *(v0 + 248));
  v5 = *(v3 - 8);
  v6 = v3;
  v7 = *(v5 + 48);
  v8 = v7(v2, 1, v6);
  v9 = *(v0 + 296);
  if (v8 == 1)
  {
    (*(*(v0 + 256) + 8))(*(v0 + 296), *(v0 + 248));
    v67 = 0;
    v68 = 0;
  }

  else
  {
    v10 = *v4;
    v67 = v9[1];
    v68 = *v9;
    v11 = *(v5 + 8);

    v11(v9, v10);
  }

  v12 = *(v0 + 288);
  v13 = *(v0 + 240);
  v70(v12, *(v0 + 184), *(v0 + 248));
  v14 = v7(v12, 1, v13);
  v15 = *(v0 + 288);
  if (v14 == 1)
  {
    v16 = *(v0 + 224);
    v17 = *(v0 + 200);
    (*(*(v0 + 256) + 8))(v15, *(v0 + 248));
    (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
  }

  else
  {
    v18 = *(v0 + 240);
    v19 = *(v0 + 288);
    (*(*(v0 + 216) + 16))(*(v0 + 224), v15 + *(v18 + 36), *(v0 + 208));
    (*(v5 + 8))(v19, v18);
  }

  v20 = *(v0 + 280);
  v21 = *(v0 + 240);
  v70(v20, *(v0 + 184), *(v0 + 248));
  v22 = v7(v20, 1, v21);
  v23 = *(v0 + 280);
  if (v22 == 1)
  {
    (*(*(v0 + 256) + 8))(v23, *(v0 + 248));
    v24 = 0;
  }

  else
  {
    v25 = *v4;
    v24 = *(v23 + *(*v4 + 48));
    v26 = *(v5 + 8);

    v26(v23, v25);
    v1 = (v0 + 248);
  }

  v27 = (v1 - 13);
  v28 = *(v0 + 272);
  v30 = *(v0 + 240);
  v29 = *(v0 + 248);
  v31 = *(v0 + 184);
  *(v0 + 144) = v24;
  v70(v28, v31, v29);
  if (v7(v28, 1, v30) == 1)
  {
    v32 = v5;
    v33 = 0;
    v34 = *(v0 + 256);
    v35 = 0xF000000000000000;
    v4 = v1;
  }

  else
  {
    v36 = (*(v0 + 272) + *(*(v0 + 240) + 40));
    v33 = *v36;
    v35 = v36[1];
    outlined copy of Data?(*v36, v35);
    v32 = v5;
    v34 = v5;
  }

  v37 = *v4;
  v38 = *(v0 + 264);
  v40 = *(v0 + 240);
  v39 = *(v0 + 248);
  v41 = *(v0 + 184);
  (*(v34 + 8))(*(v0 + 272), v37);
  v70(v38, v41, v39);
  v42 = v7(v38, 1, v40);
  v43 = *(v0 + 264);
  if (v42 == 1)
  {
    (*(*(v0 + 256) + 8))(*(v0 + 264), *(v0 + 248));
    v44 = 0;
    v45 = 0;
    v46 = xmmword_2651B6160;
    v47 = 0uLL;
    v48 = 0uLL;
  }

  else
  {
    v49 = *(v0 + 240);
    v50 = (v43 + *(v49 + 44));
    v52 = v50[1];
    v51 = v50[2];
    v53 = *v50;
    *(v0 + 60) = *(v50 + 44);
    *(v0 + 32) = v52;
    *(v0 + 48) = v51;
    *(v0 + 16) = v53;
    outlined init with copy of MLS.OutgoingEventState?(v0 + 16, v0 + 80, &_s15SecureMessaging3MLSO12SigningInputVSgMd, &_s15SecureMessaging3MLSO12SigningInputVSgMR);
    (*(v32 + 8))(v43, v49);
    v47 = *(v0 + 16);
    v46 = *(v0 + 32);
    v48 = *(v0 + 48);
    v44 = *(v0 + 64);
    v45 = *(v0 + 72);
  }

  v54 = *(v0 + 328);
  v55 = *(v0 + 304);
  v56 = *(v0 + 224);
  v57 = *(v0 + 232);
  v58 = *(v0 + 200);
  v71[0] = v47;
  v71[1] = v46;
  v71[2] = v48;
  v72 = v44;
  v73 = v45;
  v59 = MLS.IncomingFailureToDecryptContext.init(identifier:clientContext:metricCollector:signedData:expectedSignedData:)(v68, v67, v56, v27, v33, v35, v71, v58, v54, v57);
  (*(*(v55 - 8) + 56))(v54, 0, 1, v55, v59);
  v60 = swift_task_alloc();
  *(v0 + 336) = v60;
  *v60 = v0;
  v60[1] = MLS.Client.processIncoming(failureToDecrypt:withGroup:contextV2:);
  v61 = *(v0 + 328);
  v62 = *(v0 + 168);
  v63 = *(v0 + 176);
  v64 = *(v0 + 152);
  v65 = *(v0 + 160);

  return MLS.Client.processIncoming(failureToDecrypt:withGroup:context:)(v64, v65, v62, v63, v61);
}

{
  v2 = *(*v1 + 328);
  v3 = *(*v1 + 320);
  v4 = *(*v1 + 312);
  v5 = *v1;
  v5[43] = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v6 = v5[24];

    return MEMORY[0x2822009F8](MLS.Client.processIncoming(failureToDecrypt:withGroup:contextV2:), v6, 0);
  }

  else
  {

    v7 = v5[1];

    return v7();
  }
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t MLS.Client.processIncoming(failureToDecrypt:withGroup:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[54] = a5;
  v6[55] = v5;
  v6[52] = a3;
  v6[53] = a4;
  v6[50] = a1;
  v6[51] = a2;
  v7 = *v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v6[56] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging15MetricCollectorV5EventVSgMd, &_s15SecureMessaging15MetricCollectorV5EventVSgMR);
  v6[57] = swift_task_alloc();
  v8 = v7[10];
  v6[58] = v8;
  v9 = v7[12];
  v6[59] = v9;
  v11 = type metadata accessor for MLS.IncomingFailureToDecrypt(0, v8, v9, v10);
  v6[60] = v11;
  v12 = *(v11 - 8);
  v6[61] = v12;
  v6[62] = *(v12 + 64);
  v6[63] = swift_task_alloc();
  v6[64] = swift_task_alloc();
  v13 = type metadata accessor for UUID();
  v6[65] = v13;
  v6[66] = *(v13 - 8);
  v6[67] = swift_task_alloc();
  v14 = v7[11];
  v6[68] = v14;
  v15 = v7[13];
  v6[69] = v15;
  v6[70] = type metadata accessor for MLS.IncomingFailureToDecryptContext(255, v14, v15, v16);
  v17 = type metadata accessor for Optional();
  v6[71] = v17;
  v6[72] = *(v17 - 8);
  v6[73] = swift_task_alloc();

  return MEMORY[0x2822009F8](MLS.Client.processIncoming(failureToDecrypt:withGroup:context:), v5, 0);
}

uint64_t MLS.Client.processIncoming(failureToDecrypt:withGroup:context:)()
{
  v87 = v0;
  v1 = *(v0 + 584);
  v2 = *(v0 + 576);
  v3 = *(v0 + 568);
  v4 = *(v0 + 560);
  v5 = *(v0 + 432);
  v6 = swift_allocObject();
  *(v0 + 592) = v6;
  (*(v2 + 16))(v1, v5, v3);
  v7 = *(v4 - 8);
  if ((*(v7 + 48))(v1, 1, v4) == 1)
  {
    v8 = *(v0 + 536);
    v9 = *(v0 + 528);
    v10 = *(v0 + 520);
    (*(*(v0 + 576) + 8))(*(v0 + 584), *(v0 + 568));
    UUID.init()();
    v11 = UUID.uuidString.getter();
    v13 = v12;
    (*(v9 + 8))(v8, v10);
    v14 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_15SecureMessaging15MetricCollectorV5EventVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    *(v6 + 16) = v11;
    *(v6 + 24) = v13;
    *(v6 + 32) = xmmword_2651B5F50;
    *(v6 + 48) = xmmword_2651B5F50;
    *(v6 + 64) = 0;
    *(v6 + 72) = 0;
    *(v6 + 80) = 0xFFFFFFFF0000;
    *(v6 + 88) = 0u;
    *(v6 + 104) = 0u;
    *(v6 + 120) = 0;
    *(v6 + 128) = v14;
    *(v6 + 136) = xmmword_2651B5F50;
    *(v6 + 152) = 0u;
    *(v6 + 168) = 0u;
  }

  else
  {
    MLS.IncomingFailureToDecryptContext.dataContext.getter(*(v0 + 560), v85);
    (*(v7 + 8))(*(v0 + 584), *(v0 + 560));
    v15 = v85[9];
    *(v6 + 144) = v85[8];
    *(v6 + 160) = v15;
    *(v6 + 176) = v86;
    v16 = v85[5];
    *(v6 + 80) = v85[4];
    *(v6 + 96) = v16;
    v17 = v85[7];
    *(v6 + 112) = v85[6];
    *(v6 + 128) = v17;
    v18 = v85[1];
    *(v6 + 16) = v85[0];
    *(v6 + 32) = v18;
    v19 = v85[3];
    *(v6 + 48) = v85[2];
    *(v6 + 64) = v19;
  }

  v20 = *(*(v0 + 488) + 16);
  v20(*(v0 + 512), *(v0 + 408), *(v0 + 480));

  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();

  v23 = os_log_type_enabled(v21, v22);
  v24 = *(v0 + 512);
  v81 = v20;
  if (v23)
  {
    v25 = *(v0 + 504);
    v27 = *(v0 + 480);
    v26 = *(v0 + 488);
    v77 = v22;
    v28 = swift_slowAlloc();
    v79 = swift_slowAlloc();
    v84 = v79;
    *v28 = 136315394;
    v20(v25, v24, v27);
    v29 = *(v26 + 8);
    v29(v24, v27);
    v30 = MLS.IncomingFailureToDecrypt.description.getter(v27);
    v32 = v31;
    v29(v25, v27);
    v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v32, &v84);

    *(v28 + 4) = v33;
    *(v28 + 12) = 2080;
    swift_beginAccess();
    v34 = *(v6 + 160);
    *(v0 + 144) = *(v6 + 144);
    *(v0 + 160) = v34;
    *(v0 + 176) = *(v6 + 176);
    v35 = *(v6 + 96);
    *(v0 + 80) = *(v6 + 80);
    *(v0 + 96) = v35;
    v36 = *(v6 + 128);
    *(v0 + 112) = *(v6 + 112);
    *(v0 + 128) = v36;
    v37 = *(v6 + 32);
    *(v0 + 16) = *(v6 + 16);
    *(v0 + 32) = v37;
    v38 = *(v6 + 64);
    *(v0 + 48) = *(v6 + 48);
    *(v0 + 64) = v38;
    outlined init with copy of MLS.OutgoingEventState?(v0 + 16, v0 + 184, &_s15SecureMessaging3MLSO31IncomingFailureToDecryptContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO31IncomingFailureToDecryptContextVy_10Foundation4DataVGMR);
    v39 = specialized MLS.IncomingFailureToDecryptContext.description.getter();
    v41 = v40;
    outlined destroy of NSObject?(v0 + 16, &_s15SecureMessaging3MLSO31IncomingFailureToDecryptContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO31IncomingFailureToDecryptContextVy_10Foundation4DataVGMR);
    v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v41, &v84);

    *(v28 + 14) = v42;
    _os_log_impl(&dword_264F1F000, v21, v77, "processIncomingFTD called { ftd: %s, context: %s }", v28, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v79, -1, -1);
    MEMORY[0x266755550](v28, -1, -1);
  }

  else
  {
    (*(*(v0 + 488) + 8))(v24, *(v0 + 480));
  }

  v73 = *(v0 + 504);
  v75 = *(v0 + 480);
  v43 = *(v0 + 456);
  v69 = *(v0 + 448);
  v71 = *(v0 + 408);
  swift_beginAccess();
  Date.init()();
  v44 = type metadata accessor for MetricCollector.Event(0);
  v45 = *(v44 + 20);
  v46 = type metadata accessor for Date();
  v47 = *(*(v46 - 8) + 56);
  v47(v43 + v45, 1, 1, v46);
  v48 = *(*(v44 - 8) + 56);
  v48(v43, 0, 1, v44);
  specialized Dictionary.subscript.setter(v43, 0x646E456F54646E45, 0xE800000000000000);
  Date.init()();
  v47(v43 + *(v44 + 20), 1, 1, v46);
  v48(v43, 0, 1, v44);
  specialized Dictionary.subscript.setter(v43, 0x6E61487473726946, 0xEE00656B61687364);
  Date.init()();
  v47(v43 + *(v44 + 20), 1, 1, v46);
  v48(v43, 0, 1, v44);
  specialized Dictionary.subscript.setter(v43, 0x6341746E65696C43, 0xEB00000000726F74);
  swift_endAccess();
  v49 = type metadata accessor for TaskPriority();
  (*(*(v49 - 8) + 56))(v69, 1, 1, v49);
  v81(v73, v71, v75);
  v50 = one-time initialization token for shared;

  if (v50 != -1)
  {
    swift_once();
  }

  v51 = *(v0 + 544);
  v52 = *(v0 + 496);
  v53 = *(v0 + 488);
  v70 = *(v0 + 472);
  v72 = *(v0 + 552);
  v68 = *(v0 + 464);
  v82 = *(v0 + 504);
  v83 = *(v0 + 448);
  v76 = *(v0 + 440);
  v78 = *(v0 + 480);
  v80 = *(v0 + 424);
  v74 = *(v0 + 416);
  v54 = static MLSActor.shared;
  v55 = lazy protocol witness table accessor for type MLSActor and conformance MLSActor();
  v56 = (*(v53 + 80) + 72) & ~*(v53 + 80);
  v57 = (v52 + v56 + 7) & 0xFFFFFFFFFFFFFFF8;
  v58 = swift_allocObject();
  *(v58 + 2) = v54;
  *(v58 + 3) = v55;
  *(v58 + 4) = v68;
  *(v58 + 5) = v51;
  *(v58 + 6) = v70;
  *(v58 + 7) = v72;
  *(v58 + 8) = v6;
  (*(v53 + 32))(&v58[v56], v82, v78);
  *&v58[v57] = v76;
  v59 = &v58[(v57 + 15) & 0xFFFFFFFFFFFFFFF8];
  *v59 = v74;
  *(v59 + 1) = v80;
  v61 = type metadata accessor for MLS.IncomingFailureToDecryptProcessedContext(0, v51, v72, v60);

  v62 = _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfC(0, 0, v83, &async function pointer to partial apply for closure #1 in MLS.Client.processIncoming(failureToDecrypt:withGroup:context:), v58, v61);
  *(v0 + 600) = v62;
  v63 = swift_task_alloc();
  *(v0 + 608) = v63;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  *v63 = v0;
  v63[1] = MLS.Client.processIncoming(failureToDecrypt:withGroup:context:);
  v65 = *(v0 + 400);
  v66 = MEMORY[0x277D84950];

  return MEMORY[0x282200430](v65, v62, v61, v64, v66);
}

{
  v2 = *v1;
  *(*v1 + 616) = v0;

  v3 = *(v2 + 440);
  if (v0)
  {
    v4 = MLS.Client.processIncoming(failureToDecrypt:withGroup:context:);
  }

  else
  {
    v4 = MLS.Client.processIncoming(failureToDecrypt:withGroup:context:);
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

{

  v1 = *(v0 + 8);

  return v1();
}