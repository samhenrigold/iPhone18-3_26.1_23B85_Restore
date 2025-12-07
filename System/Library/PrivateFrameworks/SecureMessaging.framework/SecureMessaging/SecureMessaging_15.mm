uint64_t MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:)(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 7296) = a1;
  *(v3 + 7304) = a2;

  return MEMORY[0x2822009F8](MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:), 0, 0);
}

{
  v6 = *v3;
  v6[915] = v2;

  if (v2)
  {

    return MEMORY[0x2822009F8](MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:), 0, 0);
  }

  else
  {
    v7 = v6[901];
    v8 = v6[900];
    v16 = v6[899];
    v6[916] = a2;
    v6[917] = a1;
    ObjectType = swift_getObjectType();
    v6[818] = v8;
    v6[819] = v7;
    v15 = (*(v16 + 64) + **(v16 + 64));
    v10 = swift_task_alloc();
    v6[918] = v10;
    *v10 = v6;
    v10[1] = MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:);
    v11 = v6[899];
    v12 = v6[880];
    v13 = v6[879];

    return v15(v13, v12, v6 + 818, ObjectType, v11);
  }
}

{
  v6 = *v3;
  *(*v3 + 7352) = v2;

  if (v2)
  {

    v7 = MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:);
  }

  else
  {
    *(v6 + 7360) = a2;
    *(v6 + 7368) = a1;
    v7 = MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:);
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t closure #1 in MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:)(uint64_t a1, uint64_t a2)
{
  v2[109] = a2;
  v2[108] = a1;
  v3 = type metadata accessor for UUID();
  v2[110] = v3;
  v2[111] = *(v3 - 8);
  v2[112] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v4 = static MLSActor.shared;
  v2[113] = static MLSActor.shared;

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:), v4, 0);
}

uint64_t closure #1 in MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:)()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 912) = Strong;
  if (Strong)
  {
    v2 = Strong;
    v3 = *(v0 + 896);
    v4 = *(v0 + 888);
    v5 = *(v0 + 880);
    v6 = *(v0 + 864);
    v8 = v6[1];
    v7 = v6[2];
    v9 = *v6;
    *(v0 + 818) = *(v6 + 42);
    *(v0 + 792) = v8;
    *(v0 + 808) = v7;
    *(v0 + 776) = v9;
    UUID.init()();
    v10 = UUID.uuidString.getter();
    v12 = v11;
    (*(v4 + 8))(v3, v5);
    v13 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_15SecureMessaging15MetricCollectorV5EventVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    *(v0 + 16) = v10;
    *(v0 + 24) = v12;
    *(v0 + 32) = xmmword_2651B5F50;
    *(v0 + 48) = 0;
    *(v0 + 56) = 0;
    *(v0 + 64) = 0xFFFFFFFF0000;
    *(v0 + 72) = 0u;
    *(v0 + 88) = 0u;
    *(v0 + 104) = 0;
    *(v0 + 112) = xmmword_2651B5F50;
    *(v0 + 128) = 0u;
    *(v0 + 144) = 0u;
    *(v0 + 160) = 0;
    *(v0 + 168) = 0xF000000000000000;
    *(v0 + 176) = v13;
    v17 = (*(*v2 + 440) + **(*v2 + 440));
    v14 = swift_task_alloc();
    *(v0 + 920) = v14;
    *v14 = v0;
    v14[1] = closure #1 in MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:);

    return v17(v0 + 520, v0 + 776, v0 + 16);
  }

  else
  {

    v16 = *(v0 + 8);

    return v16();
  }
}

{
  v2 = *v1;
  *(*v1 + 928) = v0;

  v3 = *(v2 + 904);
  if (v0)
  {
    v4 = *(v2 + 32);
    *(v2 + 184) = *(v2 + 16);
    *(v2 + 200) = v4;
    v5 = *(v2 + 64);
    *(v2 + 216) = *(v2 + 48);
    v6 = *(v2 + 80);
    v7 = *(v2 + 96);
    v8 = *(v2 + 112);
    *(v2 + 232) = v5;
    *(v2 + 264) = v7;
    *(v2 + 280) = v8;
    *(v2 + 248) = v6;
    v10 = *(v2 + 144);
    v9 = *(v2 + 160);
    v11 = *(v2 + 128);
    *(v2 + 344) = *(v2 + 176);
    *(v2 + 312) = v10;
    *(v2 + 328) = v9;
    *(v2 + 296) = v11;
    outlined destroy of NSObject?(v2 + 184, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);

    v12 = closure #1 in MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:);
  }

  else
  {

    v13 = *(v2 + 32);
    *(v2 + 352) = *(v2 + 16);
    *(v2 + 368) = v13;
    v14 = *(v2 + 48);
    v15 = *(v2 + 64);
    v16 = *(v2 + 96);
    *(v2 + 416) = *(v2 + 80);
    *(v2 + 432) = v16;
    *(v2 + 384) = v14;
    *(v2 + 400) = v15;
    v17 = *(v2 + 112);
    v18 = *(v2 + 128);
    v19 = *(v2 + 144);
    v20 = *(v2 + 160);
    *(v2 + 512) = *(v2 + 176);
    *(v2 + 480) = v19;
    *(v2 + 496) = v20;
    *(v2 + 448) = v17;
    *(v2 + 464) = v18;
    outlined destroy of NSObject?(v2 + 352, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    v21 = *(v2 + 600);
    *(v2 + 712) = *(v2 + 584);
    *(v2 + 728) = v21;
    v22 = *(v2 + 632);
    *(v2 + 744) = *(v2 + 616);
    *(v2 + 760) = v22;
    v23 = *(v2 + 536);
    *(v2 + 648) = *(v2 + 520);
    *(v2 + 664) = v23;
    v24 = *(v2 + 568);
    *(v2 + 680) = *(v2 + 552);
    *(v2 + 696) = v24;
    outlined destroy of NSObject?(v2 + 648, &_s15SecureMessaging3MLSO31IncomingMessageProcessedContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO31IncomingMessageProcessedContextVy_10Foundation4DataVGMR);
    v12 = closure #1 in MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:);
  }

  return MEMORY[0x2822009F8](v12, v3, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t closure #2 in MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 552) = a5;
  *(v5 + 544) = a4;
  *(v5 + 536) = a3;
  *(v5 + 528) = a1;
  v7 = type metadata accessor for Logger();
  *(v5 + 560) = v7;
  *(v5 + 568) = *(v7 - 8);
  *(v5 + 576) = swift_task_alloc();
  v8 = *(a2 + 48);
  *(v5 + 48) = *(a2 + 32);
  *(v5 + 64) = v8;
  *(v5 + 80) = *(a2 + 64);
  v9 = *(a2 + 16);
  *(v5 + 16) = *a2;
  *(v5 + 32) = v9;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v10 = static MLSActor.shared;
  *(v5 + 584) = static MLSActor.shared;

  return MEMORY[0x2822009F8](closure #2 in MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:), v10, 0);
}

uint64_t closure #2 in MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:)()
{
  v42 = v0;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 592) = Strong;
  if (Strong)
  {
    v2 = *(v0 + 16);
    v3 = *(v0 + 24);
    v4 = *(v0 + 48);
    *(v0 + 448) = *(v0 + 32);
    *(v0 + 464) = v4;
    *(v0 + 480) = *(v0 + 64);
    *(v0 + 496) = *(v0 + 80);
    if (v3)
    {
      outlined init with copy of MLS.OutgoingEventState?(v0 + 16, v0 + 88, &_s15SecureMessaging3MLSO18OutgoingEventStateVSgMd, &_s15SecureMessaging3MLSO18OutgoingEventStateVSgMR);

      v5 = Logger.logObject.getter();
      v6 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v5, v6))
      {
        v7 = *(v0 + 544);
        v8 = *(v0 + 536);
        v9 = swift_slowAlloc();
        v35 = v2;
        v36 = swift_slowAlloc();
        v10 = v36;
        *v9 = 136315394;
        *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v7, &v36);
        *(v9 + 12) = 2080;
        *&v37 = v35;
        *(&v37 + 1) = v3;
        v11 = *(v0 + 464);
        v38 = *(v0 + 448);
        v39 = v11;
        v40 = *(v0 + 480);
        v41 = *(v0 + 496);
        v12 = *(v0 + 64);
        *(v0 + 336) = *(v0 + 48);
        *(v0 + 352) = v12;
        *(v0 + 368) = *(v0 + 80);
        v13 = *(v0 + 32);
        *(v0 + 304) = *(v0 + 16);
        *(v0 + 320) = v13;
        outlined init with copy of MLS.OutgoingEventState(v0 + 304, v0 + 376);
        v14 = MLS.OutgoingEventState.description.getter();
        v16 = v15;
        v17 = v40;
        *(v0 + 264) = v39;
        *(v0 + 280) = v17;
        *(v0 + 296) = v41;
        v18 = v38;
        *(v0 + 232) = v37;
        *(v0 + 248) = v18;
        outlined destroy of MLS.OutgoingEventState(v0 + 232);
        v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v16, &v36);

        *(v9 + 14) = v19;
        _os_log_impl(&dword_264F1F000, v5, v6, "SwiftMLSClientCoordinator retryBlock triggered { groupIdentifier: %s, eventState: %s }", v9, 0x16u);
        swift_arrayDestroy();
        v20 = v10;
        v2 = v35;
        MEMORY[0x266755550](v20, -1, -1);
        MEMORY[0x266755550](v9, -1, -1);
      }

      *(v0 + 160) = v2;
      *(v0 + 168) = v3;
      v21 = *(v0 + 464);
      *(v0 + 176) = *(v0 + 448);
      *(v0 + 192) = v21;
      *(v0 + 208) = *(v0 + 480);
      *(v0 + 224) = *(v0 + 496);
      v22 = swift_task_alloc();
      *(v0 + 600) = v22;
      *v22 = v0;
      v22[1] = closure #2 in MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:);
      v23 = *(v0 + 544);
      v24 = *(v0 + 536);
      v25 = *(v0 + 528);

      return MLS.SwiftMLSClientCoordinator.retry(eventState:forGroupIdentifier:)(v25, v0 + 160, v24, v23);
    }
  }

  Logger.init(subsystem:category:)();
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&dword_264F1F000, v27, v28, "SwiftMLSClientCoordinator retryBlock lost context to retry", v29, 2u);
    MEMORY[0x266755550](v29, -1, -1);
  }

  v30 = *(v0 + 576);
  v31 = *(v0 + 568);
  v32 = *(v0 + 560);

  lazy protocol witness table accessor for type MLS.SwiftMLSClientCoordinatorError and conformance MLS.SwiftMLSClientCoordinatorError();
  swift_allocError();
  *v33 = 1;
  *(v33 + 8) = 0;
  *(v33 + 16) = 0;
  swift_willThrow();
  (*(v31 + 8))(v30, v32);

  v34 = *(v0 + 8);

  return v34();
}

{
  v2 = *v1;
  *(*v1 + 608) = v0;

  v3 = *(v2 + 584);
  if (v0)
  {
    v4 = closure #2 in MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:);
  }

  else
  {
    v4 = closure #2 in MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:);
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{
  outlined destroy of NSObject?(v0 + 16, &_s15SecureMessaging3MLSO18OutgoingEventStateVSgMd, &_s15SecureMessaging3MLSO18OutgoingEventStateVSgMR);

  v1 = *(v0 + 8);

  return v1();
}

{

  outlined destroy of NSObject?(v0 + 16, &_s15SecureMessaging3MLSO18OutgoingEventStateVSgMd, &_s15SecureMessaging3MLSO18OutgoingEventStateVSgMR);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t closure #3 in MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[15] = a3;
  v4[16] = a4;
  v4[13] = a1;
  v4[14] = a2;
  v5 = type metadata accessor for Logger();
  v4[17] = v5;
  v4[18] = *(v5 - 8);
  v4[19] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v6 = static MLSActor.shared;
  v4[20] = static MLSActor.shared;

  return MEMORY[0x2822009F8](closure #3 in MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:), v6, 0);
}

uint64_t closure #3 in MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:)()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 168) = Strong;
  if (Strong)
  {
    v2 = *(v0 + 120);
    v3 = v2[3];
    v5 = *v2;
    v4 = v2[1];
    *(v0 + 48) = v2[2];
    *(v0 + 64) = v3;
    *(v0 + 16) = v5;
    *(v0 + 32) = v4;
    v6 = swift_task_alloc();
    *(v0 + 176) = v6;
    *v6 = v0;
    v6[1] = closure #3 in MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:);
    v8 = *(v0 + 104);
    v7 = *(v0 + 112);

    return MLS.SwiftMLSClientCoordinator.performFailureToDecrypt(groupIdentifier:ftdInfo:isWithinPersisterTransaction:)(v8, v7, (v0 + 16), 0);
  }

  else
  {
    Logger.init(subsystem:category:)();
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_264F1F000, v10, v11, "SwiftMLSClientCoordinator enqueueFTDBlock lost context to send FTD", v12, 2u);
      MEMORY[0x266755550](v12, -1, -1);
    }

    v14 = *(v0 + 144);
    v13 = *(v0 + 152);
    v15 = *(v0 + 136);

    lazy protocol witness table accessor for type MLS.SwiftMLSClientCoordinatorError and conformance MLS.SwiftMLSClientCoordinatorError();
    swift_allocError();
    *v16 = 2;
    *(v16 + 8) = 0;
    *(v16 + 16) = 0;
    swift_willThrow();
    (*(v14 + 8))(v13, v15);

    v17 = *(v0 + 8);

    return v17();
  }
}

{
  v2 = *v1;
  *(*v1 + 184) = v0;

  v3 = *(v2 + 160);
  if (v0)
  {
    v4 = closure #3 in MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:);
  }

  else
  {
    v4 = closure #3 in MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:);
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

uint64_t closure #4 in MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  v4 = type metadata accessor for Logger();
  v3[8] = v4;
  v3[9] = *(v4 - 8);
  v3[10] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v5 = static MLSActor.shared;
  v3[11] = static MLSActor.shared;

  return MEMORY[0x2822009F8](closure #4 in MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:), v5, 0);
}

uint64_t closure #4 in MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:)()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[12] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[13] = v2;
    *v2 = v0;
    v2[1] = closure #4 in MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:);
    v4 = v0[5];
    v3 = v0[6];

    return MLS.SwiftMLSClientCoordinator.performSelfHeal(groupIdentifier:)(v4, v3);
  }

  else
  {
    Logger.init(subsystem:category:)();
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_264F1F000, v6, v7, "SwiftMLSClientCoordinator selfHealBlock lost context to enqueue self ehal", v8, 2u);
      MEMORY[0x266755550](v8, -1, -1);
    }

    v10 = v0[9];
    v9 = v0[10];
    v11 = v0[8];

    lazy protocol witness table accessor for type MLS.SwiftMLSClientCoordinatorError and conformance MLS.SwiftMLSClientCoordinatorError();
    swift_allocError();
    *v12 = 2;
    *(v12 + 8) = 0;
    *(v12 + 16) = 0;
    swift_willThrow();
    (*(v10 + 8))(v9, v11);

    v13 = v0[1];

    return v13();
  }
}

{
  v2 = *v1;
  *(*v1 + 112) = v0;

  v3 = *(v2 + 88);
  if (v0)
  {
    v4 = closure #4 in MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:);
  }

  else
  {
    v4 = closure #4 in MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:);
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

uint64_t closure #5 in MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *v15;
  *(v8 + 1472) = v15[1];
  v10 = v15[3];
  *(v8 + 1488) = v15[2];
  *(v8 + 1504) = v10;
  *(v8 + 1944) = v20;
  *(v8 + 1936) = v19;
  *(v8 + 1928) = v18;
  *(v8 + 196) = v17;
  *(v8 + 1920) = v16;
  *(v8 + 1912) = v15;
  *(v8 + 1904) = a8;
  *(v8 + 1896) = a7;
  *(v8 + 1888) = a6;
  *(v8 + 1880) = a5;
  *(v8 + 1872) = a1;
  *(v8 + 1520) = *(v15 + 8);
  *(v8 + 1456) = v9;
  v11 = type metadata accessor for MLS.Group.GroupInfo();
  *(v8 + 1952) = v11;
  *(v8 + 1960) = *(v11 - 8);
  *(v8 + 1968) = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v12 = static MLSActor.shared;
  *(v8 + 1976) = static MLSActor.shared;

  return MEMORY[0x2822009F8](closure #5 in MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:), v12, 0);
}

uint64_t closure #5 in MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:)()
{
  v54 = v0;
  v1 = *(v0 + 1888);
  outlined init with copy of MLS.OutgoingEventState?(v1, v0 + 200, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  outlined destroy of NSObject?(v1, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 1904);
    v5 = *(v0 + 1896);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v50 = v7;
    *v6 = 136315650;
    *(v6 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x6574707972636E45, 0xEC00000053435264, &v50);
    *(v6 + 12) = 2080;
    v8 = specialized MLS.OutgoingEventType.identifier.getter();
    v10 = v9;

    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v10, &v50);

    *(v6 + 14) = v11;
    *(v6 + 22) = 2080;
    *(v6 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v4, &v50);
    _os_log_impl(&dword_264F1F000, v2, v3, "SwiftMLSClientCoordinator resending loaded outgoing event { clientIdentifier: %s, event: %s, group: %s }", v6, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v7, -1, -1);
    MEMORY[0x266755550](v6, -1, -1);
  }

  specialized MLS.OutgoingEventType.commit.getter(&v50);
  if (!v51 || (v12 = *(v0 + 1912), outlined consume of MLS.OutgoingMessage?(v50, v51, v52, v53), (v13 = v12[1]) == 0))
  {
    *(v0 + 1296) = 1;
    *(v0 + 1304) = 0u;
    *(v0 + 1320) = 0u;
    *(v0 + 1336) = 0u;
    *(v0 + 1352) = 0u;
    goto LABEL_9;
  }

  v14 = (v0 + 1456);
  v15 = *v12;
  v16 = *(v12 + 32);
  if (!v16)
  {
    v41 = *(v0 + 1504);
    *(v0 + 1704) = *(v0 + 1488);
    *(v0 + 1720) = v41;
    *(v0 + 1736) = *(v0 + 1520);
    v42 = *(v0 + 1472);
    *(v0 + 1672) = *v14;
    *(v0 + 1688) = v42;
    outlined init with copy of MLS.OutgoingEventState(v0 + 1672, v0 + 1744);
    *(v0 + 1296) = v15;
    *(v0 + 1304) = v13;
    *(v0 + 1312) = *(v12 + 1);
    *(v0 + 1328) = 0;
    v43 = *(v12 + 49);
    v44 = *(v12 + 33);
    *(v0 + 1360) = v12[8];
    *(v0 + 1329) = v44;
    *(v0 + 1345) = v43;
    v27 = 1;
    goto LABEL_10;
  }

  v17 = *(v0 + 1888);
  v18 = v17[3];
  v20 = *v17;
  v19 = v17[1];
  *(v0 + 48) = v17[2];
  *(v0 + 64) = v18;
  *(v0 + 16) = v20;
  *(v0 + 32) = v19;
  v21 = v17[7];
  v23 = v17[4];
  v22 = v17[5];
  *(v0 + 112) = v17[6];
  *(v0 + 128) = v21;
  *(v0 + 80) = v23;
  *(v0 + 96) = v22;
  v25 = v17[9];
  v24 = v17[10];
  v26 = v17[8];
  *(v0 + 192) = *(v17 + 176);
  *(v0 + 160) = v25;
  *(v0 + 176) = v24;
  *(v0 + 144) = v26;
  if (_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGWOg(v0 + 16) == 14)
  {
    destructiveProjectEnumData for KDSRegistration.XPCRequest.RequestType();
    *(v0 + 1296) = 0u;
    *(v0 + 1312) = 0u;
    *(v0 + 1328) = 0u;
    *(v0 + 1344) = 0u;
    *(v0 + 1360) = 0;
LABEL_9:
    v27 = 2;
LABEL_10:
    *(v0 + 1368) = v27;
    goto LABEL_11;
  }

  v45 = *(v0 + 1504);
  *(v0 + 1560) = *(v0 + 1488);
  *(v0 + 1576) = v45;
  *(v0 + 1592) = *(v0 + 1520);
  v46 = *(v0 + 1472);
  *(v0 + 1528) = *v14;
  *(v0 + 1544) = v46;
  outlined init with copy of MLS.OutgoingEventState(v0 + 1528, v0 + 1600);
  *(v0 + 1296) = v15;
  *(v0 + 1304) = v13;
  *(v0 + 1312) = *(v12 + 1);
  *(v0 + 1328) = v16;
  v47 = *(v12 + 49);
  v48 = *(v12 + 33);
  *(v0 + 1360) = v12[8];
  *(v0 + 1329) = v48;
  *(v0 + 1345) = v47;
  *(v0 + 1368) = 0;
LABEL_11:
  v28 = *(v0 + 1944);
  v29 = *(v0 + 1936);
  v30 = *(v0 + 1888);
  closure #2 in closure #5 in MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:)(v30, *(v0 + 196), *(v0 + 1928), *(v0 + 1912), v0 + 1192);
  *(v0 + 1984) = v29[12];
  v31 = *v30;
  v32 = *(v30 + 16);
  v33 = *(v30 + 48);
  *(v0 + 416) = *(v30 + 32);
  *(v0 + 432) = v33;
  *(v0 + 384) = v31;
  *(v0 + 400) = v32;
  v34 = *(v30 + 64);
  v35 = *(v30 + 80);
  v36 = *(v30 + 112);
  *(v0 + 480) = *(v30 + 96);
  *(v0 + 496) = v36;
  *(v0 + 448) = v34;
  *(v0 + 464) = v35;
  v37 = *(v30 + 128);
  v38 = *(v30 + 144);
  v39 = *(v30 + 160);
  *(v0 + 560) = *(v30 + 176);
  *(v0 + 528) = v38;
  *(v0 + 544) = v39;
  *(v0 + 512) = v37;
  outlined init with copy of ServerBag.MLS(v28, v0 + 1816);
  *(v0 + 1992) = v29[10];
  *(v0 + 2000) = v29[11];
  v40 = v29 + direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier;
  *(v0 + 2008) = *(v29 + direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier);
  *(v0 + 2016) = *(v40 + 1);

  return MEMORY[0x2822009F8](closure #5 in MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:), 0, 0);
}

{
  v1 = v0[230];
  v2 = v0[231];
  __swift_project_boxed_opaque_existential_1(v0 + 227, v1);
  v3 = *(v2 + 32);

  v6 = (v3 + *v3);
  v4 = swift_task_alloc();
  v0[253] = v4;
  *v4 = v0;
  v4[1] = closure #5 in MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:);

  return v6(v1, v2);
}

{
  v1 = v0[230];
  v2 = v0[231];
  __swift_project_boxed_opaque_existential_1(v0 + 227, v1);
  v5 = (*(v2 + 24) + **(v2 + 24));
  v3 = swift_task_alloc();
  v0[256] = v3;
  *v3 = v0;
  v3[1] = closure #5 in MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:);

  return v5(v1, v2);
}

{
  v0[275] = v0[254];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 227);

  v1 = v0[247];

  return MEMORY[0x2822009F8](closure #5 in MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:), v1, 0);
}

{
  *(*v1 + 2072) = v0;

  if (v0)
  {
    v2 = closure #5 in MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:);
  }

  else
  {
    v2 = closure #5 in MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v1 = v0[230];
  v2 = v0[231];
  __swift_project_boxed_opaque_existential_1(v0 + 227, v1);
  v5 = (*(v2 + 64) + **(v2 + 64));
  v3 = swift_task_alloc();
  v0[265] = v3;
  *v3 = v0;
  v3[1] = closure #5 in MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:);

  return v5(v1, v2);
}

{
  v0[275] = v0[259];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 227);

  v1 = v0[247];

  return MEMORY[0x2822009F8](closure #5 in MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:), v1, 0);
}

{
  v1 = v0[264];
  v2 = v0[261];
  v3 = v0[260];
  if (v1 >> 60 == 15)
  {
    v4 = 0xC000000000000000;
  }

  else
  {
    v4 = v0[264];
  }

  if (v1 >> 60 == 15)
  {
    v5 = 0;
  }

  else
  {
    v5 = v0[263];
  }

  v0[275] = v0[266];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 227);

  outlined consume of Data._Representation(v3, v2);
  outlined consume of Data._Representation(v5, v4);
  v6 = v0[247];

  return MEMORY[0x2822009F8](closure #5 in MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:), v6, 0);
}

{
  v1 = *(v0 + 2176);
  v2 = *(v0 + 2168);
  v3 = *(v0 + 2136);
  v4 = *(v0 + 2112);
  v5 = *(v0 + 2088);
  v6 = *(v0 + 2080);
  v25 = v6;
  v26 = v5;
  v7 = *(v0 + 2056);
  v24 = v7;
  v8 = *(v0 + 2040);
  v27 = *(v0 + 1984);
  v9 = *(v0 + 1904);
  v10 = *(v0 + 1896);
  if (v3 >> 60 == 15)
  {
    v11 = 0xC000000000000000;
  }

  else
  {
    v11 = *(v0 + 2136);
  }

  if (v3 >> 60 == 15)
  {
    v12 = 0;
  }

  else
  {
    v12 = *(v0 + 2144);
  }

  if (v4 >> 60 == 15)
  {
    v13 = 0xC000000000000000;
  }

  else
  {
    v13 = *(v0 + 2112);
  }

  if (v4 >> 60 == 15)
  {
    v14 = 0;
  }

  else
  {
    v14 = *(v0 + 2104);
  }

  if ((v8 & 0x100000000) != 0)
  {
    v15 = 1;
  }

  else
  {
    v15 = v8;
  }

  *(v0 + 672) = v10;
  *(v0 + 680) = v9;
  *(v0 + 688) = v15;
  *(v0 + 696) = v15;
  *(v0 + 704) = v7;
  *(v0 + 712) = v6;
  *(v0 + 720) = v5;
  *(v0 + 728) = v14;
  *(v0 + 736) = v13;
  *(v0 + 744) = v12;
  *(v0 + 752) = v11;
  *(v0 + 760) = v1;
  *(v0 + 768) = v2;
  outlined init with copy of MLS.Group(v0 + 672, v0 + 776);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 1816));
  *(v0 + 568) = v10;
  *(v0 + 576) = v9;
  *(v0 + 584) = v15;
  *(v0 + 592) = v15;
  *(v0 + 600) = v24;
  *(v0 + 608) = v25;
  *(v0 + 616) = v26;
  *(v0 + 624) = v14;
  *(v0 + 632) = v13;
  *(v0 + 640) = v12;
  *(v0 + 648) = v11;
  *(v0 + 656) = v1;
  *(v0 + 664) = v2;
  outlined destroy of MLS.Group(v0 + 568);
  v16 = *(v0 + 752);
  *(v0 + 944) = *(v0 + 736);
  *(v0 + 960) = v16;
  *(v0 + 976) = *(v0 + 768);
  v17 = *(v0 + 688);
  *(v0 + 880) = *(v0 + 672);
  *(v0 + 896) = v17;
  v18 = *(v0 + 720);
  *(v0 + 912) = *(v0 + 704);
  *(v0 + 928) = v18;
  *(v0 + 1376) = *(v0 + 1296);
  v19 = *(v0 + 1312);
  v20 = *(v0 + 1328);
  v21 = *(v0 + 1344);
  *(v0 + 1433) = *(v0 + 1353);
  *(v0 + 1424) = v21;
  *(v0 + 1408) = v20;
  *(v0 + 1392) = v19;
  v28 = (*(*v27 + 368) + **(*v27 + 368));
  v22 = swift_task_alloc();
  *(v0 + 2184) = v22;
  *v22 = v0;
  v22[1] = closure #5 in MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:);

  return v28(v0 + 384, v0 + 880, v0 + 1376, 0, 0, 0);
}

{
  v1 = v0[267];
  v2 = v0[264];
  v3 = v0[261];
  v4 = v0[260];
  if (v1 >> 60 == 15)
  {
    v5 = 0xC000000000000000;
  }

  else
  {
    v5 = v0[267];
  }

  if (v1 >> 60 == 15)
  {
    v6 = 0;
  }

  else
  {
    v6 = v0[268];
  }

  if (v2 >> 60 == 15)
  {
    v7 = 0xC000000000000000;
  }

  else
  {
    v7 = v0[264];
  }

  if (v2 >> 60 == 15)
  {
    v8 = 0;
  }

  else
  {
    v8 = v0[263];
  }

  v0[275] = v0[270];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 227);

  outlined consume of Data._Representation(v4, v3);
  outlined consume of Data._Representation(v8, v7);
  outlined consume of Data._Representation(v6, v5);
  v9 = v0[247];

  return MEMORY[0x2822009F8](closure #5 in MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:), v9, 0);
}

{
  outlined destroy of MLS.EventQueue.Result(v0 + 1192);
  outlined destroy of MLS.RetryAfterGroupVersionBehavior(v0 + 1296);

  v1 = *(v0 + 8);

  return v1();
}

{
  v1 = *(v0 + 1872);
  outlined destroy of MLS.RetryAfterGroupVersionBehavior(v0 + 1296);
  v3 = *(v0 + 1208);
  v2 = *(v0 + 1224);
  *v1 = *(v0 + 1192);
  *(v1 + 16) = v3;
  *(v1 + 32) = v2;
  v5 = *(v0 + 1256);
  v4 = *(v0 + 1272);
  v6 = *(v0 + 1240);
  *(v1 + 96) = *(v0 + 1288);
  *(v1 + 64) = v5;
  *(v1 + 80) = v4;
  *(v1 + 48) = v6;

  v7 = *(v0 + 8);

  return v7();
}

{
  outlined destroy of MLS.EventQueue.Result(v0 + 1192);
  outlined destroy of MLS.RetryAfterGroupVersionBehavior(v0 + 1296);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t closure #5 in MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:)(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 2032) = v1;

  if (v1)
  {
    v5 = closure #5 in MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:);
  }

  else
  {
    *(v4 + 2040) = a1;
    v5 = closure #5 in MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:);
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

{
  *(*v1 + 2056) = a1;

  return MEMORY[0x2822009F8](closure #5 in MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:), 0, 0);
}

{
  v2 = v1[246];
  v3 = v1[245];
  v4 = v1[244];
  v1[260] = MLS.Group.GroupInfo.rawRepresentation.getter();
  v1[261] = v5;
  (*(v3 + 8))(v2, v4);
  v6 = v1[230];
  v7 = v1[231];
  __swift_project_boxed_opaque_existential_1(v1 + 227, v6);
  v10 = (*(v7 + 56) + **(v7 + 56));
  v8 = swift_task_alloc();
  v1[262] = v8;
  *v8 = v1;
  v8[1] = closure #5 in MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:);

  return v10(v6, v7);
}

{
  v3 = *v2;
  v4 = *v2;
  v5 = *v2 + 880;
  *(*v2 + 2192) = v1;

  v6 = *(v3 + 1976);
  if (v1)
  {
    v7 = *v5;
    v8 = *(v5 + 32);
    *(v4 + 1000) = *(v5 + 16);
    *(v4 + 1016) = v8;
    *(v4 + 984) = v7;
    v9 = *(v5 + 48);
    v10 = *(v5 + 64);
    v11 = *(v5 + 80);
    *(v4 + 1080) = *(v5 + 96);
    *(v4 + 1048) = v10;
    *(v4 + 1064) = v11;
    *(v4 + 1032) = v9;
    outlined destroy of MLS.Group(v4 + 984);
    v12 = closure #5 in MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:);
  }

  else
  {

    v13 = *v5;
    v14 = *(v5 + 16);
    *(v4 + 1120) = *(v5 + 32);
    *(v4 + 1104) = v14;
    *(v4 + 1088) = v13;
    v15 = *(v5 + 48);
    v16 = *(v5 + 64);
    v17 = *(v5 + 80);
    *(v4 + 1184) = *(v5 + 96);
    *(v4 + 1168) = v17;
    *(v4 + 1152) = v16;
    *(v4 + 1136) = v15;
    outlined destroy of MLS.Group(v4 + 1088);
    v12 = closure #5 in MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:);
  }

  return MEMORY[0x2822009F8](v12, v6, 0);
}

void closure #5 in MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:)()
{
  if ((v0[257] & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v1 = v0[230];
    v2 = v0[231];
    __swift_project_boxed_opaque_existential_1(v0 + 227, v1);
    v5 = (*(v2 + 80) + **(v2 + 80));
    v3 = swift_task_alloc();
    v0[258] = v3;
    *v3 = v0;
    v3[1] = closure #5 in MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:);
    v4 = v0[246];

    v5(v4, v1, v2);
  }
}

uint64_t closure #5 in MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:)(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 2104) = a1;
  *(v3 + 2112) = a2;

  return MEMORY[0x2822009F8](closure #5 in MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:), 0, 0);
}

{
  v6 = *v3;
  v6[266] = v2;

  if (v2)
  {

    return MEMORY[0x2822009F8](closure #5 in MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:), 0, 0);
  }

  else
  {
    v7 = v6[252];
    v8 = v6[251];
    v16 = v6[250];
    v6[267] = a2;
    v6[268] = a1;
    ObjectType = swift_getObjectType();
    v6[232] = v8;
    v6[233] = v7;
    v15 = (*(v16 + 64) + **(v16 + 64));
    v10 = swift_task_alloc();
    v6[269] = v10;
    *v10 = v6;
    v10[1] = closure #5 in MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:);
    v11 = v6[250];
    v12 = v6[238];
    v13 = v6[237];

    return v15(v13, v12, v6 + 232, ObjectType, v11);
  }
}

{
  v6 = *v3;
  *(*v3 + 2160) = v2;

  if (v2)
  {
    v7 = closure #5 in MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:);
  }

  else
  {
    *(v6 + 2168) = a2;
    *(v6 + 2176) = a1;
    v7 = closure #5 in MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:);
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

void closure #2 in closure #5 in MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:)(__int128 *a1@<X0>, unsigned int a2@<W2>, uint64_t a3@<X3>, __int128 *a4@<X4>, uint64_t a5@<X8>)
{
  v10 = a4[3];
  v54 = a4[2];
  v55 = v10;
  v56 = *(a4 + 8);
  v11 = a4[1];
  v52 = *a4;
  v53 = v11;
  specialized MLS.OutgoingEventType.commit.getter(&v40);
  if (!*(&v40 + 1))
  {
    v21 = a1[9];
    v48 = a1[8];
    v49 = v21;
    v50 = a1[10];
    v51 = *(a1 + 176);
    v22 = a1[5];
    v44 = a1[4];
    v45 = v22;
    v23 = a1[7];
    v46 = a1[6];
    v47 = v23;
    v24 = a1[1];
    v40 = *a1;
    v41 = v24;
    v25 = a1[3];
    v42 = a1[2];
    v43 = v25;
    if (_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGWOg(&v40) != 3)
    {
      *a5 = 1;
      *(a5 + 8) = 0u;
      *(a5 + 24) = 0u;
      *(a5 + 40) = 0u;
      *(a5 + 56) = 0u;
      *(a5 + 72) = 0u;
      *(a5 + 88) = 0;
      *(a5 + 96) = 3;
      return;
    }

    destructiveProjectEnumData for KDSRegistration.XPCRequest.RequestType();
    v20 = a3 + 1;
    if (a3 != -1)
    {
      v18 = v52;
      *(a5 + 40) = v53;
      v26 = v55;
      *(a5 + 56) = v54;
      *(a5 + 72) = v26;
      *a5 = a2;
      *(a5 + 8) = a2;
      goto LABEL_8;
    }

    goto LABEL_19;
  }

  outlined consume of MLS.OutgoingMessage?(v40, *(&v40 + 1), v41, *(&v41 + 1));
  v12 = a1[9];
  v48 = a1[8];
  v49 = v12;
  v50 = a1[10];
  v51 = *(a1 + 176);
  v13 = a1[5];
  v44 = a1[4];
  v45 = v13;
  v14 = a1[7];
  v46 = a1[6];
  v47 = v14;
  v15 = a1[1];
  v40 = *a1;
  v41 = v15;
  v16 = a1[3];
  v42 = a1[2];
  v43 = v16;
  if (_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGWOg(&v40) != 9)
  {
    v28 = a1[9];
    v38[8] = a1[8];
    v38[9] = v28;
    v38[10] = a1[10];
    v39 = *(a1 + 176);
    v29 = a1[5];
    v38[4] = a1[4];
    v38[5] = v29;
    v30 = a1[7];
    v38[6] = a1[6];
    v38[7] = v30;
    v31 = a1[1];
    v38[0] = *a1;
    v38[1] = v31;
    v32 = a1[3];
    v38[2] = a1[2];
    v38[3] = v32;
    if (_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGWOg(v38) == 14)
    {
      destructiveProjectEnumData for KDSRegistration.XPCRequest.RequestType();
      if (a3 == -1)
      {
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      v33 = v52;
      *(a5 + 40) = v53;
      v34 = v55;
      *(a5 + 56) = v54;
      *(a5 + 72) = v34;
      *a5 = a2;
      *(a5 + 8) = a2;
      *(a5 + 16) = a3 + 1;
      *(a5 + 88) = v56;
      *(a5 + 24) = v33;
      *(a5 + 96) = 1;
    }

    else
    {
      if (a3 == -1)
      {
LABEL_21:
        __break(1u);
        return;
      }

      v35 = v52;
      *(a5 + 40) = v53;
      v36 = v55;
      *(a5 + 56) = v54;
      *(a5 + 72) = v36;
      *a5 = a2;
      *(a5 + 8) = a2;
      *(a5 + 16) = a3 + 1;
      *(a5 + 88) = v56;
      *(a5 + 24) = v35;
      *(a5 + 96) = 0;
    }

    v27 = &v37;
    goto LABEL_16;
  }

  destructiveProjectEnumData for KDSRegistration.XPCRequest.RequestType();
  v17 = a2 + 1;
  if (a2 == -1)
  {
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v18 = v52;
  *(a5 + 40) = v53;
  v19 = v55;
  *(a5 + 56) = v54;
  *(a5 + 72) = v19;
  *a5 = v17;
  *(a5 + 8) = v17;
  v20 = 1;
LABEL_8:
  *(a5 + 16) = v20;
  *(a5 + 88) = v56;
  *(a5 + 24) = v18;
  *(a5 + 96) = 0;
  v27 = v38;
LABEL_16:
  outlined init with copy of MLS.OutgoingEventState?(a4, v27, &_s15SecureMessaging3MLSO18OutgoingEventStateVSgMd, &_s15SecureMessaging3MLSO18OutgoingEventStateVSgMR);
}

uint64_t closure #6 in MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[24] = a8;
  v8[25] = v12;
  v8[22] = a6;
  v8[23] = a7;
  v8[20] = a1;
  v8[21] = a5;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v9 = static MLSActor.shared;
  v8[26] = static MLSActor.shared;

  return MEMORY[0x2822009F8](closure #6 in MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:), v9, 0);
}

uint64_t closure #6 in MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:)()
{
  v19 = v0;
  v1 = *(v0 + 176);
  outlined init with copy of MLS.OutgoingEventState(v1, v0 + 16);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  outlined destroy of MLS.OutgoingEventState(v1);

  if (os_log_type_enabled(v2, v3))
  {
    v5 = *(v0 + 184);
    v4 = *(v0 + 192);
    v6 = *(v0 + 176);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v18 = v8;
    *v7 = 136315650;
    *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x6574707972636E45, 0xEC00000053435264, &v18);
    *(v7 + 12) = 2080;
    *(v7 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v6 + 40), *(v6 + 48), &v18);
    *(v7 + 22) = 2080;
    *(v7 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v4, &v18);
    _os_log_impl(&dword_264F1F000, v2, v3, "SwiftMLSClientCoordinator queued loaded outgoing event state firing retry { clientIdentifier: %s, event: %s, group: %s }", v7, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v8, -1, -1);
    MEMORY[0x266755550](v7, -1, -1);
  }

  v9 = *(v0 + 176);
  *(v0 + 88) = *v9;
  v11 = *(v9 + 32);
  v10 = *(v9 + 48);
  v12 = *(v9 + 64);
  *(v0 + 104) = *(v9 + 16);
  *(v0 + 152) = v12;
  *(v0 + 136) = v10;
  *(v0 + 120) = v11;
  v13 = swift_task_alloc();
  *(v0 + 216) = v13;
  *v13 = v0;
  v13[1] = closure #6 in MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:);
  v14 = *(v0 + 192);
  v15 = *(v0 + 184);
  v16 = *(v0 + 160);

  return MLS.SwiftMLSClientCoordinator.retry(eventState:forGroupIdentifier:)(v16, v0 + 88, v15, v14);
}

{
  v2 = *v1;
  v2[28] = v0;

  if (v0)
  {
    v3 = v2[26];

    return MEMORY[0x2822009F8](closure #6 in MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:), v3, 0);
  }

  else
  {
    v4 = v2[1];

    return v4();
  }
}

{
  return (*(v0 + 8))();
}

uint64_t MLS.SwiftMLSClientCoordinator.retrieveKeyPackages(otherMembers:eventIdentifier:functionName:keyPackageError:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[9] = a7;
  v8[10] = v7;
  v8[7] = a5;
  v8[8] = a6;
  v8[5] = a3;
  v8[6] = a4;
  v8[3] = a1;
  v8[4] = a2;
  v9 = type metadata accessor for MLS.Client.KeyPackage();
  v8[11] = v9;
  v8[12] = *(v9 - 8);
  v8[13] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v10 = static MLSActor.shared;
  v8[14] = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.SwiftMLSClientCoordinator.retrieveKeyPackages(otherMembers:eventIdentifier:functionName:keyPackageError:), v10, 0);
}

uint64_t MLS.SwiftMLSClientCoordinator.retrieveKeyPackages(otherMembers:eventIdentifier:functionName:keyPackageError:)()
{
  v1 = v0[9];
  v2 = v0[10];
  v4 = v0[7];
  v3 = v0[8];
  v6 = v0[5];
  v5 = v0[6];
  v7 = v0[4];
  v8 = v1[3];
  v0[15] = v8;
  v0[16] = v1[4];
  v14 = __swift_project_boxed_opaque_existential_1(v1, v8);
  v9 = swift_task_alloc();
  v0[17] = v9;
  *(v9 + 16) = v2;
  *(v9 + 24) = v7;
  v10 = swift_allocObject();
  v0[18] = v10;
  v10[2] = v2;
  v10[3] = v4;
  v10[4] = v3;
  v10[5] = v6;
  v10[6] = v5;
  v11 = *(v8 - 8);
  v0[19] = v11;
  v0[20] = *(v11 + 64);
  v0[21] = swift_task_alloc();

  v12 = swift_task_alloc();
  v0[22] = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO25KeyPackageRetrievalResultVy_AC9AllMemberOGMd, &_s15SecureMessaging3MLSO25KeyPackageRetrievalResultVy_AC9AllMemberOGMR);
  *v12 = v0;
  v12[1] = MLS.SwiftMLSClientCoordinator.retrieveKeyPackages(otherMembers:eventIdentifier:functionName:keyPackageError:);

  return _s15SecureMessaging12asyncRethrow_2as3logq_q_yYaYbKXK_xySSYbcSgtYaxYKAA14VersatileErrorRzr0_lF((v0 + 2), &async function pointer to partial apply for implicit closure #1 in MLS.SwiftMLSClientCoordinator.retrieveKeyPackages(otherMembers:eventIdentifier:functionName:keyPackageError:), v9, v14, partial apply for closure #1 in MLS.SwiftMLSClientCoordinator.retrieveKeyPackages(otherMembers:eventIdentifier:functionName:keyPackageError:), v10, v8);
}

{
  v2 = *v1;
  *(*v1 + 184) = v0;

  if (v0)
  {
    v3 = *(v2 + 112);

    v4 = MLS.SwiftMLSClientCoordinator.retrieveKeyPackages(otherMembers:eventIdentifier:functionName:keyPackageError:);
    v5 = v3;
  }

  else
  {
    v6 = *(v2 + 112);

    v4 = MLS.SwiftMLSClientCoordinator.retrieveKeyPackages(otherMembers:eventIdentifier:functionName:keyPackageError:);
    v5 = v6;
  }

  return MEMORY[0x2822009F8](v4, v5, 0);
}

{
  v95 = v0;
  v1 = *(v0 + 80);
  v2 = *(v0 + 64);
  v3 = *(v0 + 48);
  v4 = *(v0 + 16);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  v89 = v4;
  if (os_log_type_enabled(v5, v6))
  {
    v83 = v1;
    v8 = *(v0 + 56);
    v7 = *(v0 + 64);
    v10 = *(v0 + 40);
    v9 = *(v0 + 48);
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v91 = v3;
    *v2 = 136315650;
    *(v2 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v7, &v91);
    *(v2 + 12) = 2080;
    *(v2 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v9, &v91);
    *(v2 + 22) = 2080;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay15SecureMessaging3MLSO14KeyPackageInfoVGMd, &_sSay15SecureMessaging3MLSO14KeyPackageInfoVGMR);
    lazy protocol witness table accessor for type MLS.AllMember and conformance MLS.AllMember();
    v11 = Dictionary.description.getter();
    v13 = v12;

    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v13, &v91);

    *(v2 + 24) = v14;
    v1 = v83;
    _os_log_impl(&dword_264F1F000, v5, v6, "SwiftMLSClientCoordinator %s retrieved KeyPackages { identifier: %s, keyPackages: %s }", v2, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v3, -1, -1);
    MEMORY[0x266755550](v2, -1, -1);
  }

  v15 = *(*(v0 + 32) + 16);
  if (*(v4 + 16) < v15)
  {

    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v19 = *(v0 + 56);
      v18 = *(v0 + 64);
      v20 = *(v0 + 40);
      v86 = *(v0 + 48);
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v91 = v22;
      *v21 = 136315906;
      *(v21 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v18, &v91);
      *(v21 + 12) = 2080;
      *(v21 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v86, &v91);
      *(v21 + 22) = 2048;
      v23 = *(v4 + 16);

      *(v21 + 24) = v23;

      *(v21 + 32) = 2048;
      *(v21 + 34) = v15;

      _os_log_impl(&dword_264F1F000, v16, v17, "SwiftMLSClientCoordinator %s missing KeyPackage { identifier: %s, keyPackageCount: %ld, otherMembersCount: %ld }", v21, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x266755550](v22, -1, -1);
      MEMORY[0x266755550](v21, -1, -1);
    }

    else
    {
      swift_bridgeObjectRelease_n();
    }

    v58 = *(v0 + 72);
    v59 = v58[3];
    v60 = __swift_project_boxed_opaque_existential_1(v58, v59);
    v61 = *(v59 - 8);
    v62 = swift_task_alloc();
    (*(v61 + 16))(v62, v60, v59);
    if (_getErrorEmbeddedNSError<A>(_:)())
    {
      (*(v61 + 8))(v62, v59);
    }

    else
    {
      swift_allocError();
      (*(v61 + 32))(v63, v62, v59);
    }

    swift_willThrow();
    goto LABEL_50;
  }

  v24 = 0;
  v26 = v4 + 64;
  v25 = *(v4 + 64);
  v27 = -1;
  v28 = -1 << *(v4 + 32);
  if (-v28 < 64)
  {
    v27 = ~(-1 << -v28);
  }

  v29 = v27 & v25;
  v30 = (63 - v28) >> 6;
  v31 = v27 & v25;
LABEL_9:
  if (v31)
  {
    v32 = v24;
    goto LABEL_15;
  }

  while (1)
  {
    v32 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      __break(1u);
LABEL_73:
      __break(1u);
LABEL_74:
      __break(1u);
LABEL_75:
      __break(1u);
LABEL_76:
      __break(1u);
      goto LABEL_77;
    }

    if (v32 >= v30)
    {
      break;
    }

    v31 = *(v26 + 8 * v32);
    ++v24;
    if (v31)
    {
      v24 = v32;
LABEL_15:
      v33 = __clz(__rbit64(v31));
      v31 &= v31 - 1;
      v34 = v33 | (v32 << 6);
      if (!*(*(*(v4 + 56) + 8 * v34) + 16))
      {
        v35 = *(v4 + 48) + 32 * v34;
        v36 = *v35;
        v37 = *(v35 + 8);
        v38 = *(v35 + 16);
        v39 = *(v35 + 24);
        outlined copy of MLS.AllMember(*v35, v37);

        outlined copy of MLS.AllMember(v36, v37);
        v40 = Logger.logObject.getter();
        v41 = static os_log_type_t.error.getter();

        outlined consume of MLS.AllMember(v36, v37);
        if (os_log_type_enabled(v40, v41))
        {
          v43 = *(v0 + 56);
          v42 = *(v0 + 64);
          v81 = *(v0 + 40);
          v84 = *(v0 + 48);
          v44 = swift_slowAlloc();
          v87 = swift_slowAlloc();
          v90 = v87;
          *v44 = 136315650;
          *(v44 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v43, v42, &v90);
          *(v44 + 12) = 2080;
          *(v44 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v81, v84, &v90);
          *(v44 + 22) = 2080;
          v91 = v36;
          v92 = v37;
          v93 = v38;
          v94 = v39;
          v45 = MLS.AllMember.description.getter();
          v47 = v46;
          outlined consume of MLS.AllMember(v91, v92);
          v48 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v45, v47, &v90);

          *(v44 + 24) = v48;
          _os_log_impl(&dword_264F1F000, v40, v41, "SwiftMLSClientCoordinator %s missing KeyPackage for member { identifier: %s, member: %s }", v44, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x266755550](v87, -1, -1);
          MEMORY[0x266755550](v44, -1, -1);
        }

        else
        {

          outlined consume of MLS.AllMember(v36, v37);
        }

        v75 = *(v0 + 72);
        v76 = v75[3];
        v77 = __swift_project_boxed_opaque_existential_1(v75, v76);
        v78 = *(v76 - 8);
        v79 = swift_task_alloc();
        (*(v78 + 16))(v79, v77, v76);
        if (_getErrorEmbeddedNSError<A>(_:)())
        {
          (*(v78 + 8))(v79, v76);
        }

        else
        {
          swift_allocError();
          (*(v78 + 32))(v80, v79, v76);
        }

        swift_willThrow();

LABEL_50:

LABEL_51:

        v64 = *(v0 + 8);

        return v64();
      }

      goto LABEL_9;
    }
  }

  swift_bridgeObjectRetain_n();
  v6 = 0;
  v2 = MEMORY[0x277D84F90];
  do
  {
    while (1)
    {
LABEL_20:
      if (v29)
      {
        goto LABEL_25;
      }

      do
      {
        v24 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          goto LABEL_73;
        }

        if (v24 >= v30)
        {

          v6 = *(v2 + 16);
          v54 = MEMORY[0x277D84F90];
          if (!v6)
          {
            goto LABEL_56;
          }

          v3 = *(v0 + 96);
          v91 = MEMORY[0x277D84F90];
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6, 0);
          v24 = *(v2 + 16);
          if (!v24)
          {
            goto LABEL_77;
          }

          v89 = v6;
          v54 = v91;
          v55 = *(v0 + 184);
          v56 = *(v2 + 32);
          v57 = *(v2 + 40);
          outlined copy of Data._Representation(v56, v57);
          if ((swift_task_isCurrentExecutor() & 1) == 0)
          {
            swift_task_reportUnexpectedExecutor();
          }

          outlined copy of Data._Representation(v56, v57);
          MLS.Client.KeyPackage.init(fromRaw:)();
          if (!v55)
          {
            outlined consume of Data._Representation(v56, v57);
            v1 = *(v54 + 16);
            v24 = *(v54 + 24);
            v6 = v1 + 1;
            if (v1 >= v24 >> 1)
            {
              goto LABEL_79;
            }

            goto LABEL_55;
          }

          outlined consume of Data._Representation(v56, v57);

          goto LABEL_51;
        }

        v29 = *(v26 + 8 * v24);
        ++v6;
      }

      while (!v29);
      v6 = v24;
LABEL_25:
      v3 = *(*(v4 + 56) + ((v6 << 9) | (8 * __clz(__rbit64(v29)))));

      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v1 = *(v3 + 16);
      v49 = *(v2 + 16);
      v4 = v49 + v1;
      if (__OFADD__(v49, v1))
      {
        goto LABEL_74;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || v4 > *(v2 + 24) >> 1)
      {
        if (v49 <= v4)
        {
          v51 = v49 + v1;
        }

        else
        {
          v51 = v49;
        }

        v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v51, 1, v2);
      }

      v4 = v89;
      v29 &= v29 - 1;
      if (*(v3 + 16))
      {
        break;
      }

      if (v1)
      {
        goto LABEL_75;
      }
    }

    v24 = *(v2 + 16);
    if (((*(v2 + 24) >> 1) - v24) < v1)
    {
      goto LABEL_76;
    }

    swift_arrayInitWithCopy();
  }

  while (!v1);
  v52 = *(v2 + 16);
  v53 = __OFADD__(v52, v1);
  v24 = v52 + v1;
  if (!v53)
  {
    *(v2 + 16) = v24;
    goto LABEL_20;
  }

  while (1)
  {
    __break(1u);
LABEL_79:
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v24 > 1), v6, 1);
    v54 = v91;
LABEL_55:
    v66 = *(v0 + 104);
    v67 = *(v0 + 88);
    *(v54 + 16) = v6;
    v88 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v82 = *(v3 + 32);
    v85 = *(v3 + 72);
    v82(v54 + v88 + v85 * v1, v66, v67);
    if (v89 == 1)
    {
      break;
    }

    v69 = (v2 + 56);
    v3 = 1;
    while (1)
    {
      v24 = *(v2 + 16);
      if (v3 >= v24)
      {
        break;
      }

      v70 = *(v69 - 1);
      v71 = *v69;
      outlined copy of Data._Representation(v70, *v69);
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      outlined copy of Data._Representation(v70, v71);
      MLS.Client.KeyPackage.init(fromRaw:)();
      outlined consume of Data._Representation(v70, v71);
      v91 = v54;
      v1 = *(v54 + 16);
      v72 = *(v54 + 24);
      v6 = v1 + 1;
      if (v1 >= v72 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v72 > 1), v1 + 1, 1);
        v54 = v91;
      }

      ++v3;
      v73 = *(v0 + 104);
      v74 = *(v0 + 88);
      *(v54 + 16) = v6;
      v82(v54 + v88 + v85 * v1, v73, v74);
      v69 += 2;
      if (v89 == v3)
      {
        goto LABEL_56;
      }
    }

LABEL_77:
    __break(1u);
  }

LABEL_56:
  **(v0 + 24) = v4;

  v68 = *(v0 + 8);

  return v68(v2, v54);
}

{
  v1 = v0[21];
  v2 = v0[19];
  v3 = v0[15];
  v4 = swift_task_alloc();
  v5 = *(v2 + 32);
  v5(v4, v1, v3);
  if (_getErrorEmbeddedNSError<A>(_:)())
  {
    (*(v0[19] + 8))(v4, v0[15]);
  }

  else
  {
    v6 = v0[15];
    swift_allocError();
    v5(v7, v4, v6);
  }

  v8 = v0[1];

  return v8();
}

uint64_t implicit closure #1 in MLS.SwiftMLSClientCoordinator.retrieveKeyPackages(otherMembers:eventIdentifier:functionName:keyPackageError:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](implicit closure #1 in MLS.SwiftMLSClientCoordinator.retrieveKeyPackages(otherMembers:eventIdentifier:functionName:keyPackageError:), 0, 0);
}

uint64_t implicit closure #1 in MLS.SwiftMLSClientCoordinator.retrieveKeyPackages(otherMembers:eventIdentifier:functionName:keyPackageError:)()
{
  v1 = *(*(v0 + 24) + 72);
  ObjectType = swift_getObjectType();
  *(v0 + 56) = 1;
  v7 = (*(v1 + 40) + **(v1 + 40));
  v3 = swift_task_alloc();
  *(v0 + 40) = v3;
  *v3 = v0;
  v3[1] = _s15SecureMessaging3MLSO17KeyPackageFetcherC05fetchD8Packages9operation11loadedGroupAE11FetchResultVx_AC0K6LoaderC06LoadedK12AndOperationOtYa9ErrorTypeQzYKAC0kQ0RzlFAC0de9RetrievalM0Vy_AC9AllMemberOGyYaYbKXEfu1_TQ1_;
  v4 = *(v0 + 32);
  v5 = *(v0 + 16);

  return v7(v5, v4, v0 + 56, ObjectType, v1);
}

void closure #1 in MLS.SwiftMLSClientCoordinator.retrieveKeyPackages(otherMembers:eventIdentifier:functionName:keyPackageError:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, unint64_t a7)
{

  oslog = Logger.logObject.getter();
  v13 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(oslog, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v17 = v15;
    *v14 = 136315650;
    *(v14 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a4, a5, &v17);
    *(v14 + 12) = 2080;
    *(v14 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a6, a7, &v17);
    *(v14 + 22) = 2080;
    *(v14 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v17);
    _os_log_impl(&dword_264F1F000, oslog, v13, "SwiftMLSClientCoordinator %s failed to retrieve KeyPackages { identifier: %s, error: %s }", v14, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v15, -1, -1);
    MEMORY[0x266755550](v14, -1, -1);
  }
}

uint64_t MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 800) = v5;
  *(v6 + 792) = a4;
  *(v6 + 784) = a3;
  *(v6 + 776) = a2;
  *(v6 + 768) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging15MetricCollectorV5EventVSgMd, &_s15SecureMessaging15MetricCollectorV5EventVSgMR);
  *(v6 + 808) = swift_task_alloc();
  v8 = *(a5 + 48);
  *(v6 + 344) = *(a5 + 32);
  *(v6 + 360) = v8;
  *(v6 + 376) = *(a5 + 64);
  v9 = *(a5 + 16);
  *(v6 + 312) = *a5;
  *(v6 + 328) = v9;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v10 = static MLSActor.shared;
  *(v6 + 816) = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:), v10, 0);
}

uint64_t MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:)()
{
  v40 = v0;
  v1 = swift_allocObject();
  *(v0 + 824) = v1;
  v2 = *(v0 + 344);
  v37 = v1;
  *(v1 + 16) = v2;
  *(v0 + 752) = v2;
  v3 = swift_allocObject();
  *(v0 + 832) = v3;
  *(v3 + 16) = 0u;
  *(v3 + 32) = 0u;
  *(v3 + 48) = 0u;
  *(v3 + 64) = 0u;
  *(v3 + 80) = 0u;
  *(v3 + 96) = 0u;
  *(v3 + 112) = 0;
  *(v0 + 840) = direct field offset for MLS.SwiftMLSClientCoordinator.logger;
  outlined init with copy of MetricCollector(v0 + 752, v0 + 760);
  outlined init with copy of MLS.OutgoingEventState?(v0 + 312, v0 + 384, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  outlined destroy of NSObject?(v0 + 312, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

  if (os_log_type_enabled(v4, v5))
  {
    v33 = *(v0 + 784);
    v35 = *(v0 + 792);
    v31 = *(v0 + 776);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v39 = v7;
    *v6 = 136315650;
    v9 = *(v0 + 312);
    v8 = *(v0 + 320);

    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v8, &v39);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2080;
    *(v6 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v33, &v39);
    *(v6 + 22) = 2080;
    v11 = MEMORY[0x266754630](v35, &type metadata for MLS.AllMember);
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v39);

    *(v6 + 24) = v13;
    _os_log_impl(&dword_264F1F000, v4, v5, "SwiftMLSClientCoordinator createGroup enqueueing event { identifier: %s, group: %s, otherMembers: %s }", v6, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v7, -1, -1);
    MEMORY[0x266755550](v6, -1, -1);
  }

  v14 = *(v0 + 808);
  v15 = *(v0 + 800);
  v32 = *(v0 + 792);
  v16 = *(v0 + 784);
  v17 = *(v0 + 776);
  Date.init()();
  v18 = type metadata accessor for MetricCollector.Event(0);
  v19 = *(v18 + 20);
  v20 = type metadata accessor for Date();
  (*(*(v20 - 8) + 56))(v14 + v19, 1, 1, v20);
  (*(*(v18 - 8) + 56))(v14, 0, 1, v18);
  specialized Dictionary.subscript.setter(v14, 0x676E6975657551, 0xE700000000000000);
  v21 = *(v15 + 96);
  v34 = *(v0 + 320);
  v36 = *(v0 + 312);
  *(v0 + 848) = v36;
  *(v0 + 856) = v34;
  v22 = swift_allocObject();
  v23 = *(v0 + 328);
  *(v22 + 24) = *(v0 + 312);
  v24 = *(v0 + 344);
  *(v22 + 72) = *(v0 + 360);
  *(v22 + 56) = v24;
  *(v0 + 864) = v22;
  *(v22 + 16) = v15;
  v25 = *(v0 + 376);
  *(v22 + 40) = v23;
  *(v22 + 88) = v25;
  *(v22 + 96) = v37;
  *(v22 + 104) = v17;
  *(v22 + 112) = v16;
  *(v22 + 120) = v32;
  *(v22 + 128) = v3;
  v26 = *(*v21 + 320);
  outlined init with copy of MLS.OutgoingEventState?(v0 + 312, v0 + 456, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

  v38 = (v26 + *v26);
  v27 = swift_task_alloc();
  *(v0 + 872) = v27;
  *v27 = v0;
  v27[1] = MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:);
  v28 = *(v0 + 784);
  v29 = *(v0 + 776);

  return (v38)(v29, v28, v36, v34, 0, &async function pointer to partial apply for closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:), v22);
}

{
  v2 = *v1;
  *(*v1 + 880) = v0;

  if (v0)
  {
    v3 = *(v2 + 816);
    v4 = MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:);
  }

  else
  {
    v5 = *(v2 + 816);

    v4 = MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:);
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{
  v36 = v0;
  v1 = *(v0 + 832);
  swift_beginAccess();
  v2 = *(v1 + 48);
  v3 = *(v1 + 16);
  *(v0 + 32) = *(v1 + 32);
  *(v0 + 48) = v2;
  *(v0 + 16) = v3;
  v4 = *(v1 + 64);
  v5 = *(v1 + 80);
  v6 = *(v1 + 96);
  *(v0 + 112) = *(v1 + 112);
  *(v0 + 80) = v5;
  *(v0 + 96) = v6;
  *(v0 + 64) = v4;
  v8 = *(v0 + 16);
  v7 = *(v0 + 24);
  v9 = *(v1 + 48);
  *(v0 + 224) = *(v1 + 32);
  *(v0 + 240) = v9;
  v11 = *(v1 + 80);
  v10 = *(v1 + 96);
  v12 = *(v1 + 64);
  *(v0 + 304) = *(v1 + 112);
  *(v0 + 272) = v11;
  *(v0 + 288) = v10;
  *(v0 + 256) = v12;
  if (v7)
  {
    outlined init with copy of MLS.OutgoingEventState?(v0 + 312, v0 + 600, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);
    outlined init with copy of MLS.OutgoingEventState?(v0 + 16, v0 + 120, &_s15SecureMessaging3MLSO5GroupVSgMd, &_s15SecureMessaging3MLSO5GroupVSgMR);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    outlined destroy of NSObject?(v0 + 312, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);
    if (os_log_type_enabled(v13, v14))
    {
      v15 = *(v0 + 856);
      v16 = *(v0 + 848);
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v35[0] = v18;
      *v17 = 136315138;
      *(v17 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v15, v35);
      _os_log_impl(&dword_264F1F000, v13, v14, "SwiftMLSClientCoordinator createGroup returning processedContext to caller { identifier: %s }", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v18);
      MEMORY[0x266755550](v18, -1, -1);
      MEMORY[0x266755550](v17, -1, -1);
    }

    v19 = *(v0 + 824);
    v20 = *(v0 + 768);
    *(v0 + 720) = *(v0 + 328);
    swift_beginAccess();
    v21 = *(v19 + 16);
    outlined init with copy of MLS.OutgoingEventState?(v0 + 720, v0 + 736, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);

    *v20 = *(v0 + 720);
    *(v20 + 16) = v8;
    *(v20 + 24) = v7;
    v22 = *(v0 + 240);
    *(v20 + 32) = *(v0 + 224);
    *(v20 + 48) = v22;
    v23 = *(v0 + 256);
    v24 = *(v0 + 288);
    v25 = *(v0 + 304);
    *(v20 + 80) = *(v0 + 272);
    *(v20 + 96) = v24;
    *(v20 + 64) = v23;
    *(v20 + 112) = v25;
    *(v20 + 120) = v21;

    v26 = *(v0 + 8);
  }

  else
  {
    outlined init with copy of MLS.OutgoingEventState?(v0 + 312, v0 + 528, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.fault.getter();
    outlined destroy of NSObject?(v0 + 312, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);
    if (os_log_type_enabled(v27, v28))
    {
      v29 = *(v0 + 856);
      v30 = *(v0 + 848);
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v35[0] = v32;
      *v31 = 136315138;
      *(v31 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v29, v35);
      _os_log_impl(&dword_264F1F000, v27, v28, "SwiftMLSClientCoordinator performed queue operation, but no group returned { identifier: %s }", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v32);
      MEMORY[0x266755550](v32, -1, -1);
      MEMORY[0x266755550](v31, -1, -1);
    }

    lazy protocol witness table accessor for type MLS.GroupCreationError and conformance MLS.GroupCreationError();
    swift_allocError();
    *v33 = 4;
    *(v33 + 8) = 0;
    *(v33 + 16) = 0;
    swift_willThrow();

    v26 = *(v0 + 8);
  }

  return v26();
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 8072) = v19;
  *(v8 + 8088) = v20;
  *(v8 + 8064) = a8;
  *(v8 + 8056) = a7;
  *(v8 + 8048) = a6;
  *(v8 + 8040) = a5;
  *(v8 + 8032) = a1;
  v9 = type metadata accessor for MLS.MLSError();
  *(v8 + 8096) = v9;
  *(v8 + 8104) = *(v9 - 8);
  *(v8 + 8112) = swift_task_alloc();
  *(v8 + 8120) = swift_task_alloc();
  *(v8 + 8128) = swift_task_alloc();
  *(v8 + 8136) = swift_task_alloc();
  *(v8 + 8144) = swift_task_alloc();
  *(v8 + 8152) = swift_task_alloc();
  *(v8 + 8160) = swift_task_alloc();
  *(v8 + 8168) = swift_task_alloc();
  *(v8 + 8176) = swift_task_alloc();
  v10 = type metadata accessor for MLS.Group.GroupInfo();
  *(v8 + 8184) = v10;
  *(v8 + 0x2000) = *(v10 - 8);
  *(v8 + 8200) = swift_task_alloc();
  v11 = type metadata accessor for UUID();
  *(v8 + 8208) = v11;
  *(v8 + 8216) = *(v11 - 8);
  *(v8 + 8224) = swift_task_alloc();
  v12 = type metadata accessor for MLS.Group.Group.ResurrectionInput();
  *(v8 + 8232) = v12;
  *(v8 + 8240) = *(v12 - 8);
  *(v8 + 8248) = swift_task_alloc();
  *(v8 + 8256) = swift_task_alloc();
  v13 = type metadata accessor for MLS.Group.Group.ReplaceExpiredCredentialInput();
  *(v8 + 8264) = v13;
  *(v8 + 8272) = *(v13 - 8);
  *(v8 + 8280) = swift_task_alloc();
  *(v8 + 8288) = swift_task_alloc();
  *(v8 + 8296) = swift_task_alloc();
  NewEraInput = type metadata accessor for MLS.Group.Group.CreateNewEraInput();
  *(v8 + 8304) = NewEraInput;
  *(v8 + 8312) = *(NewEraInput - 8);
  *(v8 + 8320) = swift_task_alloc();
  *(v8 + 8328) = swift_task_alloc();
  v15 = type metadata accessor for Date();
  *(v8 + 8336) = v15;
  *(v8 + 8344) = *(v15 - 8);
  *(v8 + 8352) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging15MetricCollectorV5EventVSgMd, &_s15SecureMessaging15MetricCollectorV5EventVSgMR);
  *(v8 + 8360) = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v16 = static MLSActor.shared;
  *(v8 + 8368) = static MLSActor.shared;

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:), v16, 0);
}

void closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:)()
{
  v1 = v0[1006];
  v0[1047] = direct field offset for MLS.SwiftMLSClientCoordinator.logger;
  outlined init with copy of MLS.OutgoingEventState?(v1, (v0 + 452), &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  outlined destroy of NSObject?(v1, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[1006];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v14 = v6;
    *v5 = 136315138;
    *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*v4, *(v4 + 8), &v14);
    _os_log_impl(&dword_264F1F000, v2, v3, "SwiftMLSClientCoordinator createGroup event dequeued { identifier: %s }", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x266755550](v6, -1, -1);
    MEMORY[0x266755550](v5, -1, -1);
  }

  v7 = v0[1006];
  v8 = v0[1005];
  swift_beginAccess();
  v9._countAndFlagsBits = 0x676E6975657551;
  v9._object = 0xE700000000000000;
  MetricCollector.end(label:)(v9);
  swift_endAccess();
  v10 = *(v8 + direct field offset for MLS.SwiftMLSClientCoordinator.groupLoader);
  v0[1048] = v10;
  v0[1049] = *v7;
  v0[1050] = v7[1];
  v13 = *(*v10 + 192) + **(*v10 + 192);
  v11 = swift_task_alloc();
  v0[1051] = v11;
  v12 = lazy protocol witness table accessor for type MLS.GroupOperationError and conformance MLS.GroupOperationError();
  *v11 = v0;
  v11[1] = closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:);
  v16 = 0;
  v17 = 0;
  v19 = v12;
  v20 = v0 + 792;
  v18 = &type metadata for MLS.GroupOperationError;

  __asm { BRAA            X8, X16 }
}

{
  if ((v0[1117] & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v1 = v0[750];
    v2 = v0[751];
    __swift_project_boxed_opaque_existential_1(v0 + 747, v1);
    v5 = (*(v2 + 80) + **(v2 + 80));
    v3 = swift_task_alloc();
    v0[1118] = v3;
    *v3 = v0;
    v3[1] = closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:);
    v4 = v0[1025];

    v5(v4, v1, v2);
  }
}

uint64_t closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:)()
{
  v2 = *v1;
  *(*v1 + 8416) = v0;

  if (v0)
  {
    v3 = *(v2 + 8368);

    v4 = closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:);
    v5 = v3;
  }

  else
  {
    v5 = *(v2 + 8368);
    v4 = closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:);
  }

  return MEMORY[0x2822009F8](v4, v5, 0);
}

{
  v9 = *(v0 + 8392);
  v10 = *(v0 + 8400);
  v1 = *(v0 + 8360);
  v2 = *(v0 + 8344);
  v3 = *(v0 + 8336);
  v4 = *(v0 + 8072);
  v5 = *(v0 + 8064);
  *(v0 + 5456) = 0u;
  *(v0 + 5472) = 0u;
  *(v0 + 5488) = 0;
  outlined destroy of NSObject?(v0 + 5456, &_s15SecureMessaging3MLSO21SwiftMLSGroupProtocol_pSgMd, &_s15SecureMessaging3MLSO21SwiftMLSGroupProtocol_pSgMR);
  swift_beginAccess();
  Date.init()();
  v6 = type metadata accessor for MetricCollector.Event(0);
  (*(v2 + 56))(v1 + *(v6 + 20), 1, 1, v3);
  (*(*(v6 - 8) + 56))(v1, 0, 1, v6);
  specialized Dictionary.subscript.setter(v1, 0xD000000000000010, 0x80000002651E7900);
  swift_endAccess();
  *(v0 + 8424) = MLS.SwiftMLSClientCoordinator.uuidToUse(identifier:eventIdentifier:)(v5, v4, v9, v10);
  *(v0 + 8432) = v7;
  swift_retain_n();

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:), 0, 0);
}

{
  outlined init with copy of MLS.SwiftMLSClientPicker(*(v0 + 8040) + 16, v0 + 5128);
  if (*(v0 + 5168))
  {
    outlined init with take of MLS.KeyUpdatePolicy((v0 + 5128), v0 + 5776);
  }

  else
  {
    outlined init with take of MLS.KeyUpdatePolicy((v0 + 5128), v0 + 5216);
    v1 = *(v0 + 5240);
    v2 = *(v0 + 5248);
    v3 = __swift_project_boxed_opaque_existential_1((v0 + 5216), v1);
    *(v0 + 5800) = v1;
    *(v0 + 5808) = *(v2 + 8);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 5776));
    (*(*(v1 - 8) + 16))(boxed_opaque_existential_1, v3, v1);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 5216));
  }

  v5 = *(v0 + 5800);
  v6 = *(v0 + 5808);
  __swift_project_boxed_opaque_existential_1((v0 + 5776), v5);
  v11 = (*(v6 + 64) + **(v6 + 64));
  v7 = swift_task_alloc();
  *(v0 + 8440) = v7;
  *v7 = v0;
  v7[1] = closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:);
  v8 = *(v0 + 8432);
  v9 = *(v0 + 8424);

  return v11(v0 + 5736, v9, v8, v5, v6);
}

{
  *(*v1 + 8448) = v0;

  if (v0)
  {
    v2 = closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:);
  }

  else
  {
    v2 = closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v1 = *(v0 + 8368);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 5776));

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:), v1, 0);
}

{
  v1 = *(v0 + 8384);
  outlined init with take of MLS.KeyUpdatePolicy((v0 + 5736), v0 + 5696);
  swift_beginAccess();
  v2._object = 0x80000002651E7900;
  v2._countAndFlagsBits = 0xD000000000000010;
  MetricCollector.end(label:)(v2);
  swift_endAccess();
  v7 = (*(*v1 + 160) + **(*v1 + 160));
  v3 = swift_task_alloc();
  *(v0 + 8456) = v3;
  *v3 = v0;
  v3[1] = closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:);
  v4 = *(v0 + 8072);
  v5 = *(v0 + 8064);

  return v7(v0 + 5696, v5, v4);
}

{
  v2 = *v1;
  *(*v1 + 8464) = v0;

  v3 = *(v2 + 8368);
  if (v0)
  {
    v4 = closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:);
  }

  else
  {
    v4 = closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:);
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{
  v1 = *(v0 + 8448);
  v2 = *(v0 + 8368);
  v3 = *(v0 + 8040);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 5776));
  swift_getErrorValue();
  v4 = Error.readableDescription.getter(*(v0 + 6488), *(v0 + 6496));
  closure #2 in closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:)(v4, v5, v3, "SwiftMLS failed to create group: %s");

  swift_getErrorValue();
  v6 = Error.readableDescription.getter(*(v0 + 6536), *(v0 + 6544));
  *(v0 + 8472) = v6;
  *(v0 + 8480) = v7;
  *(v0 + 6624) = 4;
  *(v0 + 6632) = v6;
  *(v0 + 6640) = v7;
  *(v0 + 8488) = lazy protocol witness table accessor for type MLS.GroupCreationError and conformance MLS.GroupCreationError();
  swift_willThrowTypedImpl();

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:), v2, 0);
}

{
  v1 = v0[1060];
  v2 = v0[1059];
  v3 = v0[1054];
  v4 = v0[1053];
  swift_allocError();
  *v5 = 4;
  *(v5 + 8) = v2;
  *(v5 + 16) = v1;
  outlined consume of Data?(v4, v3);

  v6 = v0[1];

  return v6();
}

{
  v13 = v0;
  v1 = *(v0 + 8048);
  outlined init with take of MLS.KeyUpdatePolicy((v0 + 5456), v0 + 5496);
  outlined init with copy of MLS.OutgoingEventState?(v1, v0 + 3544, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  outlined destroy of NSObject?(v1, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 8400);
    v5 = *(v0 + 8392);
    v6 = *(v0 + 8072);
    v7 = *(v0 + 8064);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v12 = v9;
    *v8 = 136315394;
    *(v8 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v4, &v12);
    *(v8 + 12) = 2080;
    *(v8 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v6, &v12);
    _os_log_impl(&dword_264F1F000, v2, v3, "SwiftMLSClientCoordinator createGroup found existing group { identifier: %s, group: %s }", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v9, -1, -1);
    MEMORY[0x266755550](v8, -1, -1);
  }

  v10 = *(v0 + 8048);
  outlined init with copy of MLS.OutgoingEventState?(v10, v0 + 4912, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

  outlined init with copy of MLS.OutgoingEventState?(v10, v0 + 3472, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:), 0, 0);
}

{
  v1 = v0[690];
  v2 = v0[691];
  __swift_project_boxed_opaque_existential_1(v0 + 687, v1);
  v5 = (*(v2 + 40) + **(v2 + 40));
  v3 = swift_task_alloc();
  v0[1062] = v3;
  *v3 = v0;
  v3[1] = closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:);

  return v5(v1, v2);
}

{
  v1 = *(v0 + 8368);
  v2 = *(v0 + 8048);

  outlined destroy of NSObject?(v2, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:), v1, 0);
}

{
  v35 = v0;
  v1 = *(v0 + 8048);
  if (*(v0 + 193))
  {
    outlined init with copy of MLS.OutgoingEventState?(*(v0 + 8048), v0 + 2896, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    outlined destroy of NSObject?(v1, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

    if (os_log_type_enabled(v2, v3))
    {
      v4 = *(v0 + 8400);
      v5 = *(v0 + 8392);
      v6 = *(v0 + 8072);
      v7 = *(v0 + 8064);
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v34[0] = v9;
      *v8 = 136315394;
      *(v8 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v4, v34);
      *(v8 + 12) = 2080;
      *(v8 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v6, v34);
      _os_log_impl(&dword_264F1F000, v2, v3, "SwiftMLSClientCoordinator createGroup resurrect group { identifier: %s, group: %s }", v8, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266755550](v9, -1, -1);
      MEMORY[0x266755550](v8, -1, -1);
    }

    outlined init with take of MLS.KeyUpdatePolicy((v0 + 5496), v0 + 5696);
    v10 = *(v0 + 8360);
    v11 = *(v0 + 8344);
    v12 = *(v0 + 8336);
    swift_beginAccess();
    Date.init()();
    v13 = type metadata accessor for MetricCollector.Event(0);
    *(v0 + 8624) = v13;
    v14 = *(v13 + 20);
    v15 = *(v11 + 56);
    *(v0 + 8632) = v15;
    *(v0 + 8640) = (v11 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v15(v10 + v14, 1, 1, v12);
    v16 = *(v13 - 8);
    v17 = *(v16 + 56);
    *(v0 + 8648) = v17;
    *(v0 + 8656) = (v16 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v17(v10, 0, 1, v13);
    specialized Dictionary.subscript.setter(v10, 0xD000000000000013, 0x80000002651E7920);
    swift_endAccess();
    *(v0 + 5680) = &type metadata for MLS.GroupCreationError;
    v18 = lazy protocol witness table accessor for type MLS.GroupCreationError and conformance MLS.GroupCreationError();
    *(v0 + 8664) = v18;
    *(v0 + 5688) = v18;
    *(v0 + 5656) = 5;
    *(v0 + 5664) = 0u;
    v19 = swift_task_alloc();
    *(v0 + 8672) = v19;
    *v19 = v0;
    v19[1] = closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:);
    v20 = *(v0 + 8400);
    v21 = *(v0 + 8392);
    v22 = *(v0 + 8080);

    return MLS.SwiftMLSClientCoordinator.retrieveKeyPackages(otherMembers:eventIdentifier:functionName:keyPackageError:)(v0 + 7872, v22, v21, v20, 0x7247657461657263, 0xEB0000000070756FLL, v0 + 5656);
  }

  else
  {
    outlined init with copy of MLS.OutgoingEventState?(*(v0 + 8048), v0 + 4984, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();
    outlined destroy of NSObject?(v1, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

    if (os_log_type_enabled(v24, v25))
    {
      v26 = *(v0 + 8400);
      v27 = *(v0 + 8392);
      v28 = *(v0 + 8072);
      v29 = *(v0 + 8064);
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v34[0] = v31;
      *v30 = 136315394;
      *(v30 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v26, v34);
      *(v30 + 12) = 2080;
      *(v30 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v28, v34);
      _os_log_impl(&dword_264F1F000, v24, v25, "SwiftMLSClientCoordinator createGroup failed because group already exists { identifier: %s, group: %s }", v30, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266755550](v31, -1, -1);
      MEMORY[0x266755550](v30, -1, -1);
    }

    lazy protocol witness table accessor for type MLS.GroupCreationError and conformance MLS.GroupCreationError();
    swift_allocError();
    *v32 = 13;
    *(v32 + 8) = 0;
    *(v32 + 16) = 0;
    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 5496));

    v33 = *(v0 + 8);

    return v33();
  }
}

{
  v1 = *(v0 + 8504);
  v2 = *(v0 + 8368);
  v3 = *(v0 + 8072);
  v4 = *(v0 + 8064);
  v5 = *(v0 + 8048);
  v6 = *(v0 + 8040);
  swift_getErrorValue();
  v7 = Error.readableDescription.getter(*(v0 + 6272), *(v0 + 6280));
  closure #1 in closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:)(v7, v8, v6, v5, v4, v3);

  swift_getErrorValue();
  v9 = Error.readableDescription.getter(*(v0 + 6224), *(v0 + 6232));
  *(v0 + 8512) = v9;
  *(v0 + 8520) = v10;
  *(v0 + 6168) = 16;
  *(v0 + 6176) = v9;
  *(v0 + 6184) = v10;
  *(v0 + 8528) = lazy protocol witness table accessor for type MLS.GroupCreationError and conformance MLS.GroupCreationError();
  swift_willThrowTypedImpl();

  outlined destroy of NSObject?(v5, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

  outlined destroy of NSObject?(v5, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:), v2, 0);
}

{
  v1 = v0[1065];
  v2 = v0[1064];
  swift_allocError();
  *v3 = 16;
  *(v3 + 8) = v2;
  *(v3 + 16) = v1;
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 687);

  v4 = v0[1];

  return v4();
}

{
  swift_retain_n();

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:), 0, 0);
}

{
  v1 = v0[1046];
  v2 = v0[1005];
  v3 = v2 + direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier;
  v0[1067] = *(v2 + direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier);
  v0[1068] = *(v3 + 8);
  v0[1069] = *(v2 + 80);
  v0[1070] = *(v2 + 88);
  outlined init with copy of ServerBag.MLS(v2 + 144, (v0 + 732));
  v0[1071] = type metadata accessor for MLS.KeyUpdateTracker();
  v0[1072] = swift_allocObject();

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:), v1, 0);
}

{
  v1 = v0[1072];
  v14 = v0[1070];
  v2 = v0[1069];
  v3 = v0[1068];
  v4 = v0[1067];
  v5 = v0[1009];
  v1[6] = v0[1008];
  v1[7] = v5;
  v1[4] = v4;
  v1[5] = v3;
  v1[2] = v2;
  v1[3] = v14;
  outlined init with copy of ServerBag.MLS((v0 + 732), (v1 + 11));
  ObjectType = swift_getObjectType();
  v0[965] = v4;
  v0[966] = v3;
  v7 = *(v14 + 144);

  swift_unknownObjectRetain();
  v13 = (v7 + *v7);
  v8 = swift_task_alloc();
  v0[1073] = v8;
  *v8 = v0;
  v8[1] = closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:);
  v9 = v0[1070];
  v10 = v0[1009];
  v11 = v0[1008];

  return (v13)(v0 + 936, v11, v10, v0 + 965, ObjectType, v9);
}

{
  v2 = *v1;
  *(*v1 + 8592) = v0;

  v3 = *(v2 + 8368);
  if (v0)
  {
    v4 = closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:);
  }

  else
  {
    v4 = closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:);
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{
  v1 = *(v0 + 8576);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 5856));
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1Tm((v1 + 88));
  swift_deallocPartialClassInstance();

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:), 0, 0);
}

{
  v1 = *(v0 + 8592);
  v2 = *(v0 + 8368);
  v3 = *(v0 + 8040);
  swift_getErrorValue();
  v4 = Error.readableDescription.getter(*(v0 + 6776), *(v0 + 6784));
  closure #2 in closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:)(v4, v5, v3, "Failed to load in KeyUpdateTracker: %s");

  swift_getErrorValue();
  v6 = Error.readableDescription.getter(*(v0 + 7160), *(v0 + 7168));
  *(v0 + 8600) = v6;
  *(v0 + 8608) = v7;
  *(v0 + 7296) = 10;
  *(v0 + 7304) = v6;
  *(v0 + 7312) = v7;
  *(v0 + 8616) = lazy protocol witness table accessor for type MLS.GroupCreationError and conformance MLS.GroupCreationError();
  swift_willThrowTypedImpl();

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:), v2, 0);
}

{
  v1 = v0[1076];
  v2 = v0[1075];
  v3 = v0[1054];
  v4 = v0[1053];
  swift_allocError();
  *v5 = 10;
  *(v5 + 8) = v2;
  *(v5 + 16) = v1;
  outlined consume of Data?(v4, v3);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 712);

  v6 = v0[1];

  return v6();
}

{
  v1 = *(v0 + 8368);

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:), v1, 0);
}

{
  v1 = *(v0 + 8576);
  v2 = *(v0 + 8432);
  v3 = *(v0 + 8424);
  v4 = *(v0 + 8072);
  v5 = *(v0 + 8064);
  v6 = *(**(v0 + 8040) + 256);

  v7 = v6(v0 + 6136);
  v9 = v8;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v25 = *v9;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v1, v5, v4, isUniquelyReferenced_nonNull_native);

  *v9 = v25;
  v7(v0 + 6136, 0);
  outlined consume of Data?(v3, v2);
  v11 = *(v0 + 8360);
  v12 = *(v0 + 8344);
  v13 = *(v0 + 8336);
  swift_beginAccess();
  Date.init()();
  v14 = type metadata accessor for MetricCollector.Event(0);
  *(v0 + 8624) = v14;
  v15 = *(v14 + 20);
  v16 = *(v12 + 56);
  *(v0 + 8632) = v16;
  *(v0 + 8640) = (v12 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v16(v11 + v15, 1, 1, v13);
  v17 = *(v14 - 8);
  v18 = *(v17 + 56);
  *(v0 + 8648) = v18;
  *(v0 + 8656) = (v17 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v18(v11, 0, 1, v14);
  specialized Dictionary.subscript.setter(v11, 0xD000000000000013, 0x80000002651E7920);
  swift_endAccess();
  *(v0 + 5680) = &type metadata for MLS.GroupCreationError;
  v19 = lazy protocol witness table accessor for type MLS.GroupCreationError and conformance MLS.GroupCreationError();
  *(v0 + 8664) = v19;
  *(v0 + 5688) = v19;
  *(v0 + 5656) = 5;
  *(v0 + 5664) = 0u;
  v20 = swift_task_alloc();
  *(v0 + 8672) = v20;
  *v20 = v0;
  v20[1] = closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:);
  v21 = *(v0 + 8400);
  v22 = *(v0 + 8392);
  v23 = *(v0 + 8080);

  return MLS.SwiftMLSClientCoordinator.retrieveKeyPackages(otherMembers:eventIdentifier:functionName:keyPackageError:)(v0 + 7872, v23, v22, v21, 0x7247657461657263, 0xEB0000000070756FLL, v0 + 5656);
}

{
  v42 = v0;
  v1 = *(v0 + 8416);
  v2 = *(v0 + 8048);
  v3 = *(v0 + 7872);
  *(v0 + 8704) = v3;
  swift_beginAccess();
  v4._object = 0x80000002651E7920;
  v4._countAndFlagsBits = 0xD000000000000013;
  MetricCollector.end(label:)(v4);
  swift_endAccess();
  *(v0 + 7560) = *(v2 + 16);
  if (v1)
  {
    v5 = *(v0 + 8048);
    outlined init with copy of MLS.OutgoingEventState?(v0 + 7560, v0 + 7624, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);

    outlined init with copy of MLS.OutgoingEventState?(v5, v0 + 3760, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    outlined destroy of NSObject?(v5, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);
    if (os_log_type_enabled(v6, v7))
    {
      v8 = *(v0 + 8400);
      v9 = *(v0 + 8392);
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v41 = v11;
      *v10 = 136315138;
      *(v10 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v8, &v41);
      _os_log_impl(&dword_264F1F000, v6, v7, "SwiftMLSClientCoordinator createGroup adding KeyPackages to group { identifier: %s }", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v11);
      MEMORY[0x266755550](v11, -1, -1);
      MEMORY[0x266755550](v10, -1, -1);
    }

    v12 = *(v0 + 8648);
    v13 = *(v0 + 8632);
    v14 = *(v0 + 8624);
    v15 = *(v0 + 8360);
    v16 = *(v0 + 8336);
    swift_beginAccess();
    Date.init()();
    v13(v15 + *(v14 + 20), 1, 1, v16);
    v12(v15, 0, 1, v14);
    specialized Dictionary.subscript.setter(v15, 0x534C4D7466697753, 0xEE0074696D6D6F43);
    swift_endAccess();
    v17 = *(v0 + 5720);
    v18 = *(v0 + 5728);
    __swift_project_boxed_opaque_existential_1((v0 + 5696), v17);
    v39 = (*(v18 + 184) + **(v18 + 184));
    v19 = swift_task_alloc();
    *(v0 + 8832) = v19;
    *v19 = v0;
    v19[1] = closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:);
    v20 = *(v0 + 8688);

    return v39(v0 + 5376, v20, v17, v18);
  }

  else
  {
    v22 = *(v0 + 8048);
    outlined init with copy of MLS.OutgoingEventState?(v0 + 7560, v0 + 7512, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);

    outlined init with copy of MLS.OutgoingEventState?(v22, v0 + 4840, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();
    outlined destroy of NSObject?(v22, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);
    if (os_log_type_enabled(v23, v24))
    {
      v25 = *(v0 + 8400);
      v26 = *(v0 + 8392);
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v41 = v28;
      *v27 = 136315138;
      *(v27 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v25, &v41);
      _os_log_impl(&dword_264F1F000, v23, v24, "SwiftMLSClientCoordinator createGroup resurrecting group { identifier: %s }", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v28);
      MEMORY[0x266755550](v28, -1, -1);
      MEMORY[0x266755550](v27, -1, -1);
    }

    v29 = *(v0 + 8648);
    v30 = *(v0 + 8632);
    v31 = *(v0 + 8624);
    v32 = *(v0 + 8360);
    v33 = *(v0 + 8336);
    v40 = *(v0 + 8040);
    swift_beginAccess();
    Date.init()();
    v30(v32 + *(v31 + 20), 1, 1, v33);
    v29(v32, 0, 1, v31);
    specialized Dictionary.subscript.setter(v32, 0x534C4D7466697753, 0xEE0074696D6D6F43);
    swift_endAccess();
    outlined init with copy of ServerBag.MLS(v0 + 5696, v0 + 5296);
    v34 = *(v0 + 5320);
    *(v0 + 8712) = v34;
    *(v0 + 8720) = *(v0 + 5328);
    *(v0 + 8728) = __swift_project_boxed_opaque_existential_1((v0 + 5296), v34);
    *(v0 + 7856) = v3;
    v35 = direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier;
    *(v0 + 8736) = direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier;
    v36 = (v40 + v35);
    v37 = v36[1];
    *(v0 + 7688) = *v36;
    *(v0 + 7696) = v37;
    *(v0 + 8744) = direct field offset for MLS.SwiftMLSClientCoordinator.keyPackageProvider;

    v38 = swift_task_alloc();
    *(v0 + 8752) = v38;
    *v38 = v0;
    v38[1] = closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:);

    return MLS.KeyPackageProvider.keyPackage(isWithinPersisterTransaction:)(v0 + 7672, 1);
  }
}

{
  v2 = *v1;
  *(v2 + 8760) = v0;

  if (v0)
  {
    v3 = *(v2 + 8368);

    outlined destroy of NSObject?(v2 + 7560, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);

    return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:), v3, 0);
  }

  else
  {
    v4 = *(v2 + 7680);
    *(v2 + 7640) = *(v2 + 7672);
    *(v2 + 7648) = v4;
    v5 = swift_task_alloc();
    *(v2 + 8768) = v5;
    v6 = lazy protocol witness table accessor for type MLS.AllMember and conformance MLS.AllMember();
    *(v2 + 8776) = v6;
    *v5 = v2;
    v5[1] = closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:);
    v7 = *(v2 + 8720);
    v8 = *(v2 + 8712);

    return MLS.SwiftMLSGroupProtocol.expiredCredentialReplacements<A>(keyPackageResult:selfURI:selfKeyPackage:)((v2 + 7856), (v2 + 7688), (v2 + 7640), v8, &type metadata for MLS.AllMember, v7, v6);
  }
}

{
  v99 = v0;
  v1 = *(v0 + 194);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 5296));
  if (v1 == 1)
  {
    v2 = *(v0 + 8048);

    outlined init with copy of MLS.OutgoingEventState?(v2, v0 + 2824, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    outlined destroy of NSObject?(v2, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);
    if (os_log_type_enabled(v3, v4))
    {
      v5 = *(v0 + 8400);
      v6 = *(v0 + 8392);
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v98[0] = v8;
      *v7 = 136315138;
      *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v5, v98);
      _os_log_impl(&dword_264F1F000, v3, v4, "SwiftMLSClientCoordinator createGroup detected replacement of own and other key package. Advancing era instead { identifier: %s }", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v8);
      MEMORY[0x266755550](v8, -1, -1);
      MEMORY[0x266755550](v7, -1, -1);
    }

    v9 = *(v0 + 8792);
    specialized MLS.KeyPackageRetrievalResult.uriToSwiftMLSKeyPackage.getter(*(v0 + 8704));
    if (v9)
    {
      v10 = v9;
      v11 = (v0 + 7896);

      *(v0 + 7896) = v10;
      v12 = v10;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      if (swift_dynamicCast())
      {
        (*(*(v0 + 8104) + 32))(*(v0 + 8168), *(v0 + 8176), *(v0 + 8096));
        if (MLS.SwiftMLSClientCoordinator.healingMethod(error:)() == 5)
        {
          v13 = *(v0 + 8168);
          v14 = *(v0 + 8160);
          v15 = *(v0 + 8104);
          v16 = *(v0 + 8096);
          v17 = *(v0 + 8048);

          v95 = *(v15 + 16);
          v95(v14, v13, v16);
          outlined init with copy of MLS.OutgoingEventState?(v17, v0 + 3904, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);
          v18 = Logger.logObject.getter();
          v19 = static os_log_type_t.error.getter();
          outlined destroy of NSObject?(v17, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);
          if (os_log_type_enabled(v18, v19))
          {
            v89 = *(v0 + 8400);
            v20 = *(v0 + 8392);
            v21 = *(v0 + 8160);
            v22 = *(v0 + 8104);
            v23 = *(v0 + 8096);
            v24 = swift_slowAlloc();
            v91 = swift_slowAlloc();
            v93 = swift_slowAlloc();
            v98[0] = v93;
            *v24 = 136315394;
            *(v24 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v89, v98);
            *(v24 + 12) = 2112;
            lazy protocol witness table accessor for type MLS.AddMembersOperation and conformance MLS.AddMembersOperation(&lazy protocol witness table cache variable for type MLS.MLSError and conformance MLS.MLSError, MEMORY[0x277D6AEB0], MEMORY[0x277D6AEB8]);
            swift_allocError();
            v95(v25, v21, v23);
            v26 = _swift_stdlib_bridgeErrorToNSError();
            v27 = *(v22 + 8);
            v27(v21, v23);
            *(v24 + 14) = v26;
            *v91 = v26;
            _os_log_impl(&dword_264F1F000, v18, v19, "SwiftMLSClientCoordinator createGroup era advancement failed. Refetching KeyPackage { identifier: %s, error: %@ }", v24, 0x16u);
            outlined destroy of NSObject?(v91, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
            MEMORY[0x266755550](v91, -1, -1);
            __swift_destroy_boxed_opaque_existential_1Tm(v93);
            MEMORY[0x266755550](v93, -1, -1);
            MEMORY[0x266755550](v24, -1, -1);
          }

          else
          {
            v74 = *(v0 + 8160);
            v75 = *(v0 + 8104);
            v76 = *(v0 + 8096);

            v27 = *(v75 + 8);
            v27(v74, v76);
          }

          *(v0 + 9264) = v27;
          v77 = *(v0 + 8664);
          *(v0 + 5920) = &type metadata for MLS.GroupCreationError;
          *(v0 + 5928) = v77;
          *(v0 + 5896) = 5;
          *(v0 + 5904) = 0u;
          v78 = swift_task_alloc();
          *(v0 + 9272) = v78;
          *v78 = v0;
          v78[1] = closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:);
          v79 = *(v0 + 8400);
          v80 = *(v0 + 8392);
          v81 = *(v0 + 8080);
          v82 = v0 + 7912;
          v83 = v0 + 5896;
LABEL_32:

          return MLS.SwiftMLSClientCoordinator.retrieveKeyPackages(otherMembers:eventIdentifier:functionName:keyPackageError:)(v82, v81, v80, v79, 0x7247657461657263, 0xEB0000000070756FLL, v83);
        }

        v31 = *(v0 + 8168);
LABEL_22:
        v56 = *(v0 + 8104);
        v57 = *(v0 + 8096);

        outlined destroy of NSObject?(v0 + 7560, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
        (*(v56 + 8))(v31, v57);
        goto LABEL_23;
      }

      goto LABEL_14;
    }

    MLS.Group.Group.CreateNewEraInput.init(packages:)();
    v47 = *(v0 + 5720);
    v48 = *(v0 + 5728);
    __swift_project_boxed_opaque_existential_1((v0 + 5696), v47);
    v96 = (*(v48 + 168) + **(v48 + 168));
    v49 = swift_task_alloc();
    *(v0 + 8800) = v49;
    *v49 = v0;
    v49[1] = closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:);
    v50 = *(v0 + 8328);

    return v96(v0 + 6016, v50, v47, v48);
  }

  else
  {
    v28 = *(v0 + 8792);

    MLS.Group.Group.ReplaceExpiredCredentialInput.init(replacements:)();
    if (v28)
    {
      v10 = v28;
      v11 = (v0 + 7760);
      *(v0 + 7760) = v10;
      v29 = v10;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      if (swift_dynamicCast())
      {
        (*(*(v0 + 8104) + 32))(*(v0 + 8144), *(v0 + 8152), *(v0 + 8096));
        v30 = MLS.SwiftMLSClientCoordinator.healingMethod(error:)();
        v31 = *(v0 + 8144);
        if (v30 == 5)
        {
          v32 = *(v0 + 8136);
          v33 = *(v0 + 8104);
          v34 = *(v0 + 8096);
          v35 = *(v0 + 8048);

          v94 = *(v33 + 16);
          v94(v32, v31, v34);
          outlined init with copy of MLS.OutgoingEventState?(v35, v0 + 4552, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);
          v36 = Logger.logObject.getter();
          v37 = static os_log_type_t.error.getter();
          outlined destroy of NSObject?(v35, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);
          if (os_log_type_enabled(v36, v37))
          {
            v90 = *(v0 + 8400);
            v38 = *(v0 + 8392);
            v39 = *(v0 + 8136);
            v40 = *(v0 + 8104);
            v41 = *(v0 + 8096);
            v42 = swift_slowAlloc();
            v43 = swift_slowAlloc();
            v92 = swift_slowAlloc();
            v98[0] = v92;
            *v42 = 136315394;
            *(v42 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v90, v98);
            *(v42 + 12) = 2112;
            lazy protocol witness table accessor for type MLS.AddMembersOperation and conformance MLS.AddMembersOperation(&lazy protocol witness table cache variable for type MLS.MLSError and conformance MLS.MLSError, MEMORY[0x277D6AEB0], MEMORY[0x277D6AEB8]);
            swift_allocError();
            v94(v44, v39, v41);
            v45 = _swift_stdlib_bridgeErrorToNSError();
            v46 = *(v40 + 8);
            v46(v39, v41);
            *(v42 + 14) = v45;
            *v43 = v45;
            _os_log_impl(&dword_264F1F000, v36, v37, "SwiftMLSClientCoordinator createGroup resurrection failed. Refetching KeyPackage { identifier: %s, error: %@ }", v42, 0x16u);
            outlined destroy of NSObject?(v43, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
            MEMORY[0x266755550](v43, -1, -1);
            __swift_destroy_boxed_opaque_existential_1Tm(v92);
            MEMORY[0x266755550](v92, -1, -1);
            MEMORY[0x266755550](v42, -1, -1);
          }

          else
          {
            v84 = *(v0 + 8136);
            v85 = *(v0 + 8104);
            v86 = *(v0 + 8096);

            v46 = *(v85 + 8);
            v46(v84, v86);
          }

          *(v0 + 9304) = v46;
          v87 = *(v0 + 8664);
          *(v0 + 5360) = &type metadata for MLS.GroupCreationError;
          *(v0 + 5368) = v87;
          *(v0 + 5336) = 5;
          *(v0 + 5344) = 0u;
          v88 = swift_task_alloc();
          *(v0 + 9312) = v88;
          *v88 = v0;
          v88[1] = closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:);
          v79 = *(v0 + 8400);
          v80 = *(v0 + 8392);
          v81 = *(v0 + 8080);
          v82 = v0 + 7752;
          v83 = v0 + 5336;
          goto LABEL_32;
        }

        goto LABEL_22;
      }

LABEL_14:
      outlined destroy of NSObject?(v0 + 7560, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);

LABEL_23:

      v58 = *(v0 + 8048);
      outlined init with copy of MLS.OutgoingEventState?(v58, v0 + 4264, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);
      v59 = v10;
      v60 = Logger.logObject.getter();
      v61 = static os_log_type_t.error.getter();
      outlined destroy of NSObject?(v58, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

      if (os_log_type_enabled(v60, v61))
      {
        v62 = *(v0 + 8400);
        v63 = *(v0 + 8392);
        v64 = swift_slowAlloc();
        v65 = swift_slowAlloc();
        v66 = swift_slowAlloc();
        v98[0] = v66;
        *v64 = 136315394;
        *(v64 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v63, v62, v98);
        *(v64 + 12) = 2112;
        v67 = v10;
        v68 = _swift_stdlib_bridgeErrorToNSError();
        *(v64 + 14) = v68;
        *v65 = v68;
        _os_log_impl(&dword_264F1F000, v60, v61, "SwiftMLSClientCoordinator createGroup failed to resurrect to group { identifier: %s, error: %@ }", v64, 0x16u);
        outlined destroy of NSObject?(v65, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        MEMORY[0x266755550](v65, -1, -1);
        __swift_destroy_boxed_opaque_existential_1Tm(v66);
        MEMORY[0x266755550](v66, -1, -1);
        MEMORY[0x266755550](v64, -1, -1);
      }

      swift_getErrorValue();
      v69 = Error.readableDescription.getter(*(v0 + 7400), *(v0 + 7408));
      v71 = v70;
      lazy protocol witness table accessor for type MLS.GroupCreationError and conformance MLS.GroupCreationError();
      swift_allocError();
      *v72 = 15;
      *(v72 + 8) = v69;
      *(v72 + 16) = v71;
      swift_willThrow();

      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 5696));

      v73 = *(v0 + 8);

      return v73();
    }

    (*(*(v0 + 8272) + 16))(*(v0 + 8288), *(v0 + 8296), *(v0 + 8264));
    MLS.Group.Group.ResurrectionInput.init(replaceExpired:)();
    v52 = *(v0 + 5720);
    v53 = *(v0 + 5728);
    __swift_project_boxed_opaque_existential_1((v0 + 5696), v52);
    v97 = (*(v53 + 176) + **(v53 + 176));
    v54 = swift_task_alloc();
    *(v0 + 8816) = v54;
    *v54 = v0;
    v54[1] = closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:);
    v55 = *(v0 + 8256);

    return v97(v0 + 5816, v55, v52, v53);
  }
}

{
  v2 = *v1;
  *(*v1 + 8808) = v0;

  v3 = *(v2 + 8368);
  if (v0)
  {
    v4 = closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:);
  }

  else
  {
    v4 = closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:);
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{
  v129 = v0;
  v1 = *(v0 + 8328);
  v2 = *(v0 + 8312);
  v3 = *(v0 + 8304);
  v4 = *(v0 + 6040);
  v5 = *(v0 + 6048);
  __swift_project_boxed_opaque_existential_1((v0 + 6016), v4);
  (*(v5 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 6016));
  v114 = *(v0 + 8808);
  v6 = *(v0 + 8048);
  swift_beginAccess();
  v7._countAndFlagsBits = 0x534C4D7466697753;
  v7._object = 0xEE0074696D6D6F43;
  MetricCollector.end(label:)(v7);
  swift_endAccess();
  outlined init with copy of ServerBag.MLS(v0 + 6096, v0 + 5616);
  outlined init with copy of MLS.OutgoingEventState?(v6, v0 + 3400, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  outlined destroy of NSObject?(v6, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);
  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 8400);
    v11 = *(v0 + 8392);
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *&v117 = v13;
    *v12 = 136315394;
    *(v12 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v10, &v117);
    *(v12 + 12) = 2080;
    v14 = *(v0 + 5640);
    __swift_project_boxed_opaque_existential_1((v0 + 5616), v14);
    v15 = *(v14 - 8);
    swift_task_alloc();
    (*(v15 + 16))();
    v16 = String.init<A>(describing:)();
    v18 = v17;

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 5616));
    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v18, &v117);

    *(v12 + 14) = v19;
    _os_log_impl(&dword_264F1F000, v8, v9, "SwiftMLSClientCoordinator createGroup resurrected to group { identifier: %s, commitOutput: %s }", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v13, -1, -1);
    MEMORY[0x266755550](v12, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 5616));
  }

  v20 = *(v0 + 8072);
  v21 = *(v0 + 8064);
  v22 = *(v0 + 8048);
  v23 = *(**(v0 + 8040) + 352);
  outlined init with copy of MLS.OutgoingEventState?(v22, v0 + 3328, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

  outlined init with copy of MLS.OutgoingEventState?(v22, v0 + 3184, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

  v23(v116, &v117, v21, v20, v0 + 6096);
  if (v114)
  {
    v24 = *(v0 + 8048);
    v25 = *(v0 + 8040);
    outlined destroy of NSObject?(v0 + 7560, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);

    swift_getErrorValue();
    v26 = Error.readableDescription.getter(*(v0 + 7280), *(v0 + 7288));
    closure #4 in closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:)(v26, v27, v25, v24, "SwiftMLSClientCoordinator createGroup resurrect commit yielded unexpected output { identifier: %s, error: %s }");

    swift_getErrorValue();
    v28 = Error.readableDescription.getter(*(v0 + 7256), *(v0 + 7264));
    v30 = v29;
    *(v0 + 7224) = 8;
    *(v0 + 7232) = v28;
    *(v0 + 7240) = v29;
    lazy protocol witness table accessor for type MLS.GroupCreationError and conformance MLS.GroupCreationError();
    swift_willThrowTypedImpl();

    outlined destroy of NSObject?(v24, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

    outlined destroy of NSObject?(v24, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

    swift_allocError();
    *v31 = 8;
    *(v31 + 8) = v28;
    *(v31 + 16) = v30;
    v37 = (v0 + 6096);
LABEL_7:
    __swift_destroy_boxed_opaque_existential_1Tm(v37);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 5696));

    v38 = *(v0 + 8);

    return v38();
  }

  v32 = *(v0 + 8048);
  v33 = *(v0 + 8040);

  outlined destroy of NSObject?(v32, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

  outlined destroy of NSObject?(v32, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

  v34 = v116[2];
  v112 = v116[1];
  v113 = v116[3];
  v115 = v117;
  v109 = v116[0];
  v110 = *(&v117 + 1);
  v111 = v118;
  v35 = *(*v33 + 360);
  outlined init with copy of MLS.OutgoingEventState?(v32, v0 + 3112, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

  outlined init with copy of MLS.OutgoingEventState?(v32, v0 + 3040, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

  v35(&v117, v0 + 6096);
  v36 = *(v0 + 8048);
  v40 = *(&v117 + 1);
  v105 = v118;
  v106 = v117;
  v108 = *(&v118 + 1);
  v41 = v119;
  v42 = *(v0 + 194);

  outlined destroy of NSObject?(v36, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

  outlined destroy of NSObject?(v36, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

  v107 = v40;
  if (v42)
  {
    if (v108 >> 60 == 15)
    {
      v43 = *(v0 + 8048);
      v44 = v34;
      outlined copy of Data._Representation(v34, v113);
      outlined destroy of NSObject?(v0 + 7560, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);

      outlined init with copy of MLS.OutgoingEventState?(v43, v0 + 5056, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

      v45 = Logger.logObject.getter();
      v46 = static os_log_type_t.error.getter();
      outlined destroy of NSObject?(v43, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

      if (os_log_type_enabled(v45, v46))
      {
        v47 = *(v0 + 8400);
        v48 = *(v0 + 8392);
        v49 = *(v0 + 8072);
        v50 = *(v0 + 8064);
        v51 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        v116[0] = v52;
        *v51 = 136315394;
        *(v51 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v48, v47, v116);
        *(v51 + 12) = 2080;
        *(v51 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v50, v49, v116);
        _os_log_impl(&dword_264F1F000, v45, v46, "SwiftMLSClientCoordinator createGroup resurrect commit yielded unexpected output { identifier: %s, group: %s }", v51, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x266755550](v52, -1, -1);
        MEMORY[0x266755550](v51, -1, -1);
      }

      lazy protocol witness table accessor for type MLS.GroupCreationError and conformance MLS.GroupCreationError();
      swift_allocError();
      *v53 = 19;
      *(v53 + 8) = 0;
      *(v53 + 16) = 0;
      swift_willThrow();
      outlined consume of Data._Representation(v44, v113);

      outlined consume of Data._Representation(v111, *(&v111 + 1));
      outlined consume of Data._Representation(v106, v107);
      outlined consume of Data._Representation(v41, *(&v41 + 1));

      outlined consume of Data._Representation(v44, v113);
      v37 = (v0 + 6096);
      goto LABEL_7;
    }

    v54 = (v0 + 16);
    v67 = *(v0 + 8400);
    v104 = *(v0 + 8392);
    v68 = *(v0 + 8224);
    v69 = *(v0 + 8216);
    v70 = *(v0 + 8208);
    v71 = *(v0 + 8056);
    outlined copy of Data._Representation(v34, v113);

    UUID.init()();
    v72 = UUID.uuidString.getter();
    v100 = v73;
    v102 = v72;
    (*(v69 + 8))(v68, v70);
    swift_beginAccess();
    v74 = *(v71 + 16);
    v65 = v113;
    outlined init with copy of MLS.OutgoingEventState?(v0 + 7560, v0 + 7656, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);

    v76 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC15SecureMessaging3MLSO9AllMemberO_SayAHGTt0g5Tf4g_n(v75);

    *(v0 + 48) = *(v0 + 7560);
    *(v0 + 16) = v104;
    *(v0 + 24) = v67;
    *(v0 + 32) = v102;
    *(v0 + 40) = v100;
    *(v0 + 64) = v74;
    *(v0 + 72) = v109;
    *(v0 + 80) = v112;
    *(v0 + 88) = v34;
    *(v0 + 96) = v113;
    *(v0 + 104) = v115;
    *(v0 + 112) = v110;
    *(v0 + 120) = v111;
    *(v0 + 136) = v76;
    *(v0 + 144) = v106;
    *(v0 + 152) = v40;
    *(v0 + 160) = v105;
    *(v0 + 168) = v108;
    *(v0 + 176) = v41;
    _s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGWOi8_(v0 + 16);
  }

  else
  {
    v54 = (v0 + 1672);
    v55 = *(v0 + 8400);
    v103 = *(v0 + 8392);
    v56 = *(v0 + 8224);
    v57 = *(v0 + 8216);
    v58 = *(v0 + 8208);
    v59 = *(v0 + 8080);
    v60 = v34;
    v61 = *(v0 + 8056);
    outlined copy of Data._Representation(v60, v113);

    UUID.init()();
    v62 = UUID.uuidString.getter();
    v99 = v63;
    v101 = v62;
    (*(v57 + 8))(v56, v58);
    swift_beginAccess();
    v64 = *(v61 + 16);
    v34 = v60;
    v65 = v113;
    outlined init with copy of MLS.OutgoingEventState?(v0 + 7560, v0 + 7736, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);

    v66 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC15SecureMessaging3MLSO9AllMemberO_SayAHGTt0g5Tf4g_n(v59);

    *(v0 + 1704) = *(v0 + 7560);
    *(v0 + 1672) = v103;
    *(v0 + 1680) = v55;
    *(v0 + 1688) = v101;
    *(v0 + 1696) = v99;
    *(v0 + 1720) = v64;
    *(v0 + 1728) = v109;
    *(v0 + 1736) = v112;
    *(v0 + 1744) = v34;
    *(v0 + 1752) = v113;
    *(v0 + 1760) = v115;
    *(v0 + 1768) = v110;
    *(v0 + 1776) = v111;
    *(v0 + 1792) = v66;
    *(v0 + 1800) = v106;
    *(v0 + 1808) = v40;
    *(v0 + 1816) = v105;
    *(v0 + 1824) = v108;
    *(v0 + 1832) = v41;
    _s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGWOi7_(v0 + 1672);
  }

  v77 = v54[9];
  v125 = v54[8];
  v126 = v77;
  v127 = v54[10];
  v128 = *(v54 + 176);
  v78 = v54[5];
  v121 = v54[4];
  v122 = v78;
  v79 = v54[7];
  v123 = v54[6];
  v124 = v79;
  v80 = v54[1];
  v117 = *v54;
  v118 = v80;
  v81 = v54[3];
  v119 = v54[2];
  v120 = v81;
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 6096));
  v82 = v126;
  *(v0 + 1616) = v125;
  *(v0 + 1632) = v82;
  *(v0 + 1648) = v127;
  *(v0 + 1664) = v128;
  v83 = v122;
  *(v0 + 1552) = v121;
  *(v0 + 1568) = v83;
  v84 = v124;
  *(v0 + 1584) = v123;
  *(v0 + 1600) = v84;
  v85 = v118;
  *(v0 + 1488) = v117;
  *(v0 + 1504) = v85;
  v86 = v120;
  *(v0 + 1520) = v119;
  *(v0 + 1536) = v86;
  *(v0 + 8856) = v65;
  *(v0 + 8848) = v34;
  v87 = *(v0 + 8680);
  v88 = *(v0 + 8080);
  v89 = *(v0 + 1632);
  *(v0 + 1064) = *(v0 + 1616);
  *(v0 + 1080) = v89;
  *(v0 + 1096) = *(v0 + 1648);
  *(v0 + 1112) = *(v0 + 1664);
  v90 = *(v0 + 1568);
  *(v0 + 1000) = *(v0 + 1552);
  *(v0 + 1016) = v90;
  v91 = *(v0 + 1600);
  *(v0 + 1032) = *(v0 + 1584);
  *(v0 + 1048) = v91;
  v92 = *(v0 + 1504);
  *(v0 + 936) = *(v0 + 1488);
  *(v0 + 952) = v92;
  v93 = *(v0 + 1536);
  *(v0 + 968) = *(v0 + 1520);
  *(v0 + 984) = v93;
  v94 = specialized MLS.OutgoingEventType.storageIdentifier.getter();
  v96 = v95;
  v97 = specialized MLS.OutgoingEventType.identifier.getter();
  *(v0 + 4248) = *(v0 + 7560);
  *(v0 + 4192) = v94;
  *(v0 + 4200) = v96;
  *(v0 + 4208) = v87;
  *(v0 + 4216) = v88;
  *(v0 + 4224) = 0;
  *(v0 + 4232) = v97;
  *(v0 + 4240) = v98;
  swift_retain_n();
  swift_bridgeObjectRetain_n();

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:), 0, 0);
}

{
  v2 = *v1;
  *(*v1 + 8824) = v0;

  v3 = *(v2 + 8368);
  if (v0)
  {
    v4 = closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:);
  }

  else
  {
    v4 = closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:);
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{
  v132 = v0;
  v1 = *(v0 + 8296);
  v2 = *(v0 + 8272);
  v3 = *(v0 + 8264);
  v4 = *(v0 + 8256);
  v5 = *(v0 + 8240);
  v6 = *(v0 + 8232);
  v7 = *(v0 + 5840);
  v8 = *(v0 + 5848);
  __swift_project_boxed_opaque_existential_1((v0 + 5816), v7);
  (*(v8 + 8))(v7, v8);
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 5816));
  v117 = *(v0 + 8824);
  v9 = *(v0 + 8048);
  swift_beginAccess();
  v10._countAndFlagsBits = 0x534C4D7466697753;
  v10._object = 0xEE0074696D6D6F43;
  MetricCollector.end(label:)(v10);
  swift_endAccess();
  outlined init with copy of ServerBag.MLS(v0 + 6096, v0 + 5616);
  outlined init with copy of MLS.OutgoingEventState?(v9, v0 + 3400, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  outlined destroy of NSObject?(v9, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);
  if (os_log_type_enabled(v11, v12))
  {
    v13 = *(v0 + 8400);
    v14 = *(v0 + 8392);
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *&v120 = v16;
    *v15 = 136315394;
    *(v15 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v13, &v120);
    *(v15 + 12) = 2080;
    v17 = *(v0 + 5640);
    __swift_project_boxed_opaque_existential_1((v0 + 5616), v17);
    v18 = *(v17 - 8);
    swift_task_alloc();
    (*(v18 + 16))();
    v19 = String.init<A>(describing:)();
    v21 = v20;

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 5616));
    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v21, &v120);

    *(v15 + 14) = v22;
    _os_log_impl(&dword_264F1F000, v11, v12, "SwiftMLSClientCoordinator createGroup resurrected to group { identifier: %s, commitOutput: %s }", v15, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v16, -1, -1);
    MEMORY[0x266755550](v15, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 5616));
  }

  v23 = *(v0 + 8072);
  v24 = *(v0 + 8064);
  v25 = *(v0 + 8048);
  v26 = *(**(v0 + 8040) + 352);
  outlined init with copy of MLS.OutgoingEventState?(v25, v0 + 3328, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

  outlined init with copy of MLS.OutgoingEventState?(v25, v0 + 3184, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

  v26(v119, &v120, v24, v23, v0 + 6096);
  if (v117)
  {
    v27 = *(v0 + 8048);
    v28 = *(v0 + 8040);
    outlined destroy of NSObject?(v0 + 7560, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);

    swift_getErrorValue();
    v29 = Error.readableDescription.getter(*(v0 + 7280), *(v0 + 7288));
    closure #4 in closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:)(v29, v30, v28, v27, "SwiftMLSClientCoordinator createGroup resurrect commit yielded unexpected output { identifier: %s, error: %s }");

    swift_getErrorValue();
    v31 = Error.readableDescription.getter(*(v0 + 7256), *(v0 + 7264));
    v33 = v32;
    *(v0 + 7224) = 8;
    *(v0 + 7232) = v31;
    *(v0 + 7240) = v32;
    lazy protocol witness table accessor for type MLS.GroupCreationError and conformance MLS.GroupCreationError();
    swift_willThrowTypedImpl();

    outlined destroy of NSObject?(v27, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

    outlined destroy of NSObject?(v27, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

    swift_allocError();
    *v34 = 8;
    *(v34 + 8) = v31;
    *(v34 + 16) = v33;
    v40 = (v0 + 6096);
LABEL_7:
    __swift_destroy_boxed_opaque_existential_1Tm(v40);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 5696));

    v41 = *(v0 + 8);

    return v41();
  }

  v35 = *(v0 + 8048);
  v36 = *(v0 + 8040);

  outlined destroy of NSObject?(v35, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

  outlined destroy of NSObject?(v35, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

  v37 = v119[2];
  v115 = v119[1];
  v116 = v119[3];
  v118 = v120;
  v112 = v119[0];
  v113 = *(&v120 + 1);
  v114 = v121;
  v38 = *(*v36 + 360);
  outlined init with copy of MLS.OutgoingEventState?(v35, v0 + 3112, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

  outlined init with copy of MLS.OutgoingEventState?(v35, v0 + 3040, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

  v38(&v120, v0 + 6096);
  v39 = *(v0 + 8048);
  v43 = *(&v120 + 1);
  v108 = v121;
  v109 = v120;
  v111 = *(&v121 + 1);
  v44 = v122;
  v45 = *(v0 + 194);

  outlined destroy of NSObject?(v39, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

  outlined destroy of NSObject?(v39, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

  v110 = v43;
  if (v45)
  {
    if (v111 >> 60 == 15)
    {
      v46 = *(v0 + 8048);
      v47 = v37;
      outlined copy of Data._Representation(v37, v116);
      outlined destroy of NSObject?(v0 + 7560, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);

      outlined init with copy of MLS.OutgoingEventState?(v46, v0 + 5056, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

      v48 = Logger.logObject.getter();
      v49 = static os_log_type_t.error.getter();
      outlined destroy of NSObject?(v46, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

      if (os_log_type_enabled(v48, v49))
      {
        v50 = *(v0 + 8400);
        v51 = *(v0 + 8392);
        v52 = *(v0 + 8072);
        v53 = *(v0 + 8064);
        v54 = swift_slowAlloc();
        v55 = swift_slowAlloc();
        v119[0] = v55;
        *v54 = 136315394;
        *(v54 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v51, v50, v119);
        *(v54 + 12) = 2080;
        *(v54 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v53, v52, v119);
        _os_log_impl(&dword_264F1F000, v48, v49, "SwiftMLSClientCoordinator createGroup resurrect commit yielded unexpected output { identifier: %s, group: %s }", v54, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x266755550](v55, -1, -1);
        MEMORY[0x266755550](v54, -1, -1);
      }

      lazy protocol witness table accessor for type MLS.GroupCreationError and conformance MLS.GroupCreationError();
      swift_allocError();
      *v56 = 19;
      *(v56 + 8) = 0;
      *(v56 + 16) = 0;
      swift_willThrow();
      outlined consume of Data._Representation(v47, v116);

      outlined consume of Data._Representation(v114, *(&v114 + 1));
      outlined consume of Data._Representation(v109, v110);
      outlined consume of Data._Representation(v44, *(&v44 + 1));

      outlined consume of Data._Representation(v47, v116);
      v40 = (v0 + 6096);
      goto LABEL_7;
    }

    v57 = (v0 + 16);
    v70 = *(v0 + 8400);
    v107 = *(v0 + 8392);
    v71 = *(v0 + 8224);
    v72 = *(v0 + 8216);
    v73 = *(v0 + 8208);
    v74 = *(v0 + 8056);
    outlined copy of Data._Representation(v37, v116);

    UUID.init()();
    v75 = UUID.uuidString.getter();
    v103 = v76;
    v105 = v75;
    (*(v72 + 8))(v71, v73);
    swift_beginAccess();
    v77 = *(v74 + 16);
    v68 = v116;
    outlined init with copy of MLS.OutgoingEventState?(v0 + 7560, v0 + 7656, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);

    v79 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC15SecureMessaging3MLSO9AllMemberO_SayAHGTt0g5Tf4g_n(v78);

    *(v0 + 48) = *(v0 + 7560);
    *(v0 + 16) = v107;
    *(v0 + 24) = v70;
    *(v0 + 32) = v105;
    *(v0 + 40) = v103;
    *(v0 + 64) = v77;
    *(v0 + 72) = v112;
    *(v0 + 80) = v115;
    *(v0 + 88) = v37;
    *(v0 + 96) = v116;
    *(v0 + 104) = v118;
    *(v0 + 112) = v113;
    *(v0 + 120) = v114;
    *(v0 + 136) = v79;
    *(v0 + 144) = v109;
    *(v0 + 152) = v43;
    *(v0 + 160) = v108;
    *(v0 + 168) = v111;
    *(v0 + 176) = v44;
    _s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGWOi8_(v0 + 16);
  }

  else
  {
    v57 = (v0 + 1672);
    v58 = *(v0 + 8400);
    v106 = *(v0 + 8392);
    v59 = *(v0 + 8224);
    v60 = *(v0 + 8216);
    v61 = *(v0 + 8208);
    v62 = *(v0 + 8080);
    v63 = v37;
    v64 = *(v0 + 8056);
    outlined copy of Data._Representation(v63, v116);

    UUID.init()();
    v65 = UUID.uuidString.getter();
    v102 = v66;
    v104 = v65;
    (*(v60 + 8))(v59, v61);
    swift_beginAccess();
    v67 = *(v64 + 16);
    v37 = v63;
    v68 = v116;
    outlined init with copy of MLS.OutgoingEventState?(v0 + 7560, v0 + 7736, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);

    v69 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC15SecureMessaging3MLSO9AllMemberO_SayAHGTt0g5Tf4g_n(v62);

    *(v0 + 1704) = *(v0 + 7560);
    *(v0 + 1672) = v106;
    *(v0 + 1680) = v58;
    *(v0 + 1688) = v104;
    *(v0 + 1696) = v102;
    *(v0 + 1720) = v67;
    *(v0 + 1728) = v112;
    *(v0 + 1736) = v115;
    *(v0 + 1744) = v37;
    *(v0 + 1752) = v116;
    *(v0 + 1760) = v118;
    *(v0 + 1768) = v113;
    *(v0 + 1776) = v114;
    *(v0 + 1792) = v69;
    *(v0 + 1800) = v109;
    *(v0 + 1808) = v43;
    *(v0 + 1816) = v108;
    *(v0 + 1824) = v111;
    *(v0 + 1832) = v44;
    _s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGWOi7_(v0 + 1672);
  }

  v80 = v57[9];
  v128 = v57[8];
  v129 = v80;
  v130 = v57[10];
  v131 = *(v57 + 176);
  v81 = v57[5];
  v124 = v57[4];
  v125 = v81;
  v82 = v57[7];
  v126 = v57[6];
  v127 = v82;
  v83 = v57[1];
  v120 = *v57;
  v121 = v83;
  v84 = v57[3];
  v122 = v57[2];
  v123 = v84;
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 6096));
  v85 = v129;
  *(v0 + 1616) = v128;
  *(v0 + 1632) = v85;
  *(v0 + 1648) = v130;
  *(v0 + 1664) = v131;
  v86 = v125;
  *(v0 + 1552) = v124;
  *(v0 + 1568) = v86;
  v87 = v127;
  *(v0 + 1584) = v126;
  *(v0 + 1600) = v87;
  v88 = v121;
  *(v0 + 1488) = v120;
  *(v0 + 1504) = v88;
  v89 = v123;
  *(v0 + 1520) = v122;
  *(v0 + 1536) = v89;
  *(v0 + 8856) = v68;
  *(v0 + 8848) = v37;
  v90 = *(v0 + 8680);
  v91 = *(v0 + 8080);
  v92 = *(v0 + 1632);
  *(v0 + 1064) = *(v0 + 1616);
  *(v0 + 1080) = v92;
  *(v0 + 1096) = *(v0 + 1648);
  *(v0 + 1112) = *(v0 + 1664);
  v93 = *(v0 + 1568);
  *(v0 + 1000) = *(v0 + 1552);
  *(v0 + 1016) = v93;
  v94 = *(v0 + 1600);
  *(v0 + 1032) = *(v0 + 1584);
  *(v0 + 1048) = v94;
  v95 = *(v0 + 1504);
  *(v0 + 936) = *(v0 + 1488);
  *(v0 + 952) = v95;
  v96 = *(v0 + 1536);
  *(v0 + 968) = *(v0 + 1520);
  *(v0 + 984) = v96;
  v97 = specialized MLS.OutgoingEventType.storageIdentifier.getter();
  v99 = v98;
  v100 = specialized MLS.OutgoingEventType.identifier.getter();
  *(v0 + 4248) = *(v0 + 7560);
  *(v0 + 4192) = v97;
  *(v0 + 4200) = v99;
  *(v0 + 4208) = v90;
  *(v0 + 4216) = v91;
  *(v0 + 4224) = 0;
  *(v0 + 4232) = v100;
  *(v0 + 4240) = v101;
  swift_retain_n();
  swift_bridgeObjectRetain_n();

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:), 0, 0);
}

{
  v2 = *v1;
  *(*v1 + 8840) = v0;

  v3 = *(v2 + 8368);

  if (v0)
  {
    v4 = closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:);
  }

  else
  {
    v4 = closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:);
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{
  v99 = v0;
  outlined init with take of MLS.KeyUpdatePolicy((v0 + 5376), v0 + 5536);
  swift_beginAccess();
  v1._countAndFlagsBits = 0x534C4D7466697753;
  v1._object = 0xEE0074696D6D6F43;
  MetricCollector.end(label:)(v1);
  swift_endAccess();
  v90 = *(v0 + 8840);
  v2 = *(v0 + 8048);
  outlined init with copy of ServerBag.MLS(v0 + 5536, v0 + 5176);
  outlined init with copy of MLS.OutgoingEventState?(v2, v0 + 4768, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  outlined destroy of NSObject?(v2, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 8400);
    v6 = *(v0 + 8392);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v93 = v8;
    *v7 = 136315394;
    *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v5, &v93);
    *(v7 + 12) = 2080;
    v9 = *(v0 + 5200);
    __swift_project_boxed_opaque_existential_1((v0 + 5176), v9);
    v10 = *(v9 - 8);
    swift_task_alloc();
    (*(v10 + 16))();
    v11 = String.init<A>(describing:)();
    v13 = v12;

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 5176));
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v13, &v93);

    *(v7 + 14) = v14;
    _os_log_impl(&dword_264F1F000, v3, v4, "SwiftMLSClientCoordinator createGroup added KeyPackages to group { identifier: %s, commitOutput: %s }", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v8, -1, -1);
    MEMORY[0x266755550](v7, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 5176));
  }

  v15 = *(v0 + 8072);
  v16 = *(v0 + 8064);
  v17 = *(v0 + 8048);
  v18 = *(**(v0 + 8040) + 352);
  outlined init with copy of MLS.OutgoingEventState?(v17, v0 + 4480, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

  outlined init with copy of MLS.OutgoingEventState?(v17, v0 + 4408, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

  v18(v92, &v93, v16, v15, v0 + 5536);
  if (v90)
  {
    v19 = *(v0 + 8048);
    v20 = *(v0 + 8040);
    outlined destroy of NSObject?(v0 + 7560, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);

    swift_getErrorValue();
    v21 = Error.readableDescription.getter(*(v0 + 6656), *(v0 + 6664));
    closure #4 in closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:)(v21, v22, v20, v19, "SwiftMLSClientCoordinator createGroup add member commit yielded unexpected output { identifier: %s, error: %s }");

    swift_getErrorValue();
    v23 = Error.readableDescription.getter(*(v0 + 6608), *(v0 + 6616));
    v25 = v24;
    *(v0 + 6504) = 8;
    *(v0 + 6512) = v23;
    *(v0 + 6520) = v24;
    lazy protocol witness table accessor for type MLS.GroupCreationError and conformance MLS.GroupCreationError();
    swift_willThrowTypedImpl();

    outlined destroy of NSObject?(v19, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

    outlined destroy of NSObject?(v19, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

    swift_allocError();
    *v26 = 8;
    *(v26 + 8) = v23;
    *(v26 + 16) = v25;
LABEL_10:
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 5536));
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 5696));

    v46 = *(v0 + 8);

    return v46();
  }

  v27 = *(v0 + 8048);
  v28 = *(v0 + 8040);

  outlined destroy of NSObject?(v27, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

  outlined destroy of NSObject?(v27, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

  v87 = v92[1];
  v88 = v92[2];
  v89 = v92[3];
  v91 = v92[0];
  v29 = v93;
  v84 = v94;
  v85 = v95;
  v86 = v96;
  v30 = *(*v28 + 360);
  outlined init with copy of MLS.OutgoingEventState?(v27, v0 + 3832, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

  outlined init with copy of MLS.OutgoingEventState?(v27, v0 + 3688, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

  v30(&v93, v0 + 5536);
  v79 = v29;
  v80 = v93;
  v81 = v94;
  v32 = v95;
  v31 = v96;
  v34 = v97;
  v33 = v98;
  v35 = *(v0 + 8048);

  outlined destroy of NSObject?(v35, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

  outlined destroy of NSObject?(v35, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

  v82 = v34;
  v83 = v33;
  if (v31 >> 60 == 15)
  {
    v36 = *(v0 + 8048);
    outlined copy of Data._Representation(v88, v89);
    outlined destroy of NSObject?(v0 + 7560, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);

    outlined init with copy of MLS.OutgoingEventState?(v36, v0 + 2968, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();
    outlined destroy of NSObject?(v36, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

    if (os_log_type_enabled(v37, v38))
    {
      v39 = *(v0 + 8400);
      v40 = *(v0 + 8392);
      v41 = *(v0 + 8072);
      v42 = *(v0 + 8064);
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v93 = v44;
      *v43 = 136315394;
      *(v43 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v39, &v93);
      *(v43 + 12) = 2080;
      *(v43 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, v41, &v93);
      _os_log_impl(&dword_264F1F000, v37, v38, "SwiftMLSClientCoordinator createGroup add member commit yielded unexpected output { identifier: %s, group: %s }", v43, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266755550](v44, -1, -1);
      MEMORY[0x266755550](v43, -1, -1);
    }

    lazy protocol witness table accessor for type MLS.GroupCreationError and conformance MLS.GroupCreationError();
    swift_allocError();
    *v45 = 19;
    *(v45 + 8) = 0;
    *(v45 + 16) = 0;
    swift_willThrow();
    outlined consume of Data._Representation(v88, v89);

    outlined consume of Data._Representation(v85, v86);
    outlined consume of Data._Representation(v80, v81);
    outlined consume of Data._Representation(v82, v83);

    outlined consume of Data._Representation(v88, v89);
    goto LABEL_10;
  }

  v76 = *(v0 + 8400);
  v77 = *(v0 + 8392);
  v48 = *(v0 + 8224);
  v49 = *(v0 + 8216);
  v50 = *(v0 + 8208);
  v51 = *(v0 + 8080);
  v78 = v32;
  v52 = *(v0 + 8056);

  outlined copy of Data._Representation(v88, v89);
  UUID.init()();
  v53 = UUID.uuidString.getter();
  v74 = v54;
  v75 = v53;
  (*(v49 + 8))(v48, v50);
  swift_beginAccess();
  v55 = *(v52 + 16);
  outlined init with copy of MLS.OutgoingEventState?(v0 + 7560, v0 + 7544, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);

  v56 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC15SecureMessaging3MLSO9AllMemberO_SayAHGTt0g5Tf4g_n(v51);

  *(v0 + 600) = *(v0 + 7560);
  *(v0 + 568) = v77;
  *(v0 + 576) = v76;
  *(v0 + 584) = v75;
  *(v0 + 592) = v74;
  *(v0 + 616) = v55;
  *(v0 + 624) = v91;
  *(v0 + 632) = v87;
  *(v0 + 640) = v88;
  *(v0 + 648) = v89;
  *(v0 + 656) = v79;
  *(v0 + 664) = v84;
  *(v0 + 672) = v85;
  *(v0 + 680) = v86;
  *(v0 + 688) = v56;
  *(v0 + 696) = v80;
  *(v0 + 704) = v81;
  *(v0 + 712) = v78;
  *(v0 + 720) = v31;
  *(v0 + 728) = v34;
  *(v0 + 736) = v83;
  _s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGWOi_(v0 + 568);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 5536));
  v57 = *(v0 + 712);
  *(v0 + 1616) = *(v0 + 696);
  *(v0 + 1632) = v57;
  *(v0 + 1648) = *(v0 + 728);
  *(v0 + 1664) = *(v0 + 744);
  v58 = *(v0 + 648);
  *(v0 + 1552) = *(v0 + 632);
  *(v0 + 1568) = v58;
  v59 = *(v0 + 680);
  *(v0 + 1584) = *(v0 + 664);
  *(v0 + 1600) = v59;
  v60 = *(v0 + 584);
  *(v0 + 1488) = *(v0 + 568);
  *(v0 + 1504) = v60;
  v61 = *(v0 + 616);
  *(v0 + 1520) = *(v0 + 600);
  *(v0 + 1536) = v61;
  *(v0 + 8856) = v89;
  *(v0 + 8848) = v88;
  v62 = *(v0 + 8680);
  v63 = *(v0 + 8080);
  v64 = *(v0 + 1632);
  *(v0 + 1064) = *(v0 + 1616);
  *(v0 + 1080) = v64;
  *(v0 + 1096) = *(v0 + 1648);
  *(v0 + 1112) = *(v0 + 1664);
  v65 = *(v0 + 1568);
  *(v0 + 1000) = *(v0 + 1552);
  *(v0 + 1016) = v65;
  v66 = *(v0 + 1600);
  *(v0 + 1032) = *(v0 + 1584);
  *(v0 + 1048) = v66;
  v67 = *(v0 + 1504);
  *(v0 + 936) = *(v0 + 1488);
  *(v0 + 952) = v67;
  v68 = *(v0 + 1536);
  *(v0 + 968) = *(v0 + 1520);
  *(v0 + 984) = v68;
  v69 = specialized MLS.OutgoingEventType.storageIdentifier.getter();
  v71 = v70;
  v72 = specialized MLS.OutgoingEventType.identifier.getter();
  *(v0 + 4248) = *(v0 + 7560);
  *(v0 + 4192) = v69;
  *(v0 + 4200) = v71;
  *(v0 + 4208) = v62;
  *(v0 + 4216) = v63;
  *(v0 + 4224) = 0;
  *(v0 + 4232) = v72;
  *(v0 + 4240) = v73;
  swift_retain_n();
  swift_bridgeObjectRetain_n();

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:), 0, 0);
}

{
  v1 = v0[1005];
  outlined init with copy of ServerBag.MLS((v0 + 712), (v0 + 747));
  v0[1108] = *(v1 + 80);
  v0[1109] = *(v1 + 88);
  v2 = direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier;
  v0[1110] = direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier;
  v3 = (v1 + v2);
  v0[1111] = *v3;
  v0[1112] = v3[1];
  v4 = v0[750];
  v5 = v0[751];
  __swift_project_boxed_opaque_existential_1(v0 + 747, v4);
  v6 = *(v5 + 32);

  v9 = (v6 + *v6);
  v7 = swift_task_alloc();
  v0[1113] = v7;
  *v7 = v0;
  v7[1] = closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:);

  return v9(v4, v5);
}

{
  v1 = v0[750];
  v2 = v0[751];
  __swift_project_boxed_opaque_existential_1(v0 + 747, v1);
  v5 = (*(v2 + 24) + **(v2 + 24));
  v3 = swift_task_alloc();
  v0[1116] = v3;
  *v3 = v0;
  v3[1] = closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:);

  return v5(v1, v2);
}

{
  v1 = *(v0 + 8912);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 5976));

  v2 = *(v0 + 8400);
  v3 = *(v0 + 8392);
  v4 = *(v0 + 8368);
  v5 = *(v0 + 8040);
  swift_getErrorValue();
  v6 = Error.readableDescription.getter(*(v0 + 6296), *(v0 + 6304));
  closure #9 in closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:)(v6, v7, v5, v3, v2, "SwiftMLSClientCoordinator createGroup failed obtaining group information { identifier: %s, error: %s }");

  swift_getErrorValue();
  v8 = Error.readableDescription.getter(*(v0 + 6248), *(v0 + 6256));
  *(v0 + 9072) = v8;
  *(v0 + 9080) = v9;
  *(v0 + 7440) = 9;
  *(v0 + 7448) = v8;
  *(v0 + 7456) = v9;
  *(v0 + 9088) = lazy protocol witness table accessor for type MLS.GroupCreationError and conformance MLS.GroupCreationError();
  swift_willThrowTypedImpl();

  swift_bridgeObjectRelease_n();

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:), v4, 0);
}

{
  *(*v1 + 8952) = v0;

  if (v0)
  {
    v2 = closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:);
  }

  else
  {
    v2 = closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v1 = v0[750];
  v2 = v0[751];
  __swift_project_boxed_opaque_existential_1(v0 + 747, v1);
  v5 = (*(v2 + 64) + **(v2 + 64));
  v3 = swift_task_alloc();
  v0[1125] = v3;
  *v3 = v0;
  v3[1] = closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:);

  return v5(v1, v2);
}

{
  v1 = *(v0 + 8952);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 5976));

  v2 = *(v0 + 8400);
  v3 = *(v0 + 8392);
  v4 = *(v0 + 8368);
  v5 = *(v0 + 8040);
  swift_getErrorValue();
  v6 = Error.readableDescription.getter(*(v0 + 6296), *(v0 + 6304));
  closure #9 in closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:)(v6, v7, v5, v3, v2, "SwiftMLSClientCoordinator createGroup failed obtaining group information { identifier: %s, error: %s }");

  swift_getErrorValue();
  v8 = Error.readableDescription.getter(*(v0 + 6248), *(v0 + 6256));
  *(v0 + 9072) = v8;
  *(v0 + 9080) = v9;
  *(v0 + 7440) = 9;
  *(v0 + 7448) = v8;
  *(v0 + 7456) = v9;
  *(v0 + 9088) = lazy protocol witness table accessor for type MLS.GroupCreationError and conformance MLS.GroupCreationError();
  swift_willThrowTypedImpl();

  swift_bridgeObjectRelease_n();

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:), v4, 0);
}

{
  v1 = *(v0 + 9008);
  v2 = *(v0 + 8992);
  v3 = *(v0 + 8968);
  v4 = *(v0 + 8960);
  if (v2 >> 60 == 15)
  {
    v5 = 0xC000000000000000;
  }

  else
  {
    v5 = *(v0 + 8992);
  }

  if (v2 >> 60 == 15)
  {
    v6 = 0;
  }

  else
  {
    v6 = *(v0 + 8984);
  }

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 5976));

  outlined consume of Data._Representation(v4, v3);
  outlined consume of Data._Representation(v6, v5);
  v7 = *(v0 + 8400);
  v8 = *(v0 + 8392);
  v9 = *(v0 + 8368);
  v10 = *(v0 + 8040);
  swift_getErrorValue();
  v11 = Error.readableDescription.getter(*(v0 + 6296), *(v0 + 6304));
  closure #9 in closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:)(v11, v12, v10, v8, v7, "SwiftMLSClientCoordinator createGroup failed obtaining group information { identifier: %s, error: %s }");

  swift_getErrorValue();
  v13 = Error.readableDescription.getter(*(v0 + 6248), *(v0 + 6256));
  *(v0 + 9072) = v13;
  *(v0 + 9080) = v14;
  *(v0 + 7440) = 9;
  *(v0 + 7448) = v13;
  *(v0 + 7456) = v14;
  *(v0 + 9088) = lazy protocol witness table accessor for type MLS.GroupCreationError and conformance MLS.GroupCreationError();
  swift_willThrowTypedImpl();

  swift_bridgeObjectRelease_n();

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:), v9, 0);
}

{
  v1 = *(v0 + 9064);
  v2 = *(v0 + 9056);
  v3 = *(v0 + 9016);
  v4 = *(v0 + 8992);
  v5 = *(v0 + 8968);
  v6 = *(v0 + 8960);
  v18 = v6;
  v19 = v5;
  v7 = *(v0 + 8936);
  v17 = v7;
  v8 = *(v0 + 8920);
  v20 = *(v0 + 8368);
  v9 = *(v0 + 8072);
  v10 = *(v0 + 8064);
  if (v3 >> 60 == 15)
  {
    v11 = 0xC000000000000000;
  }

  else
  {
    v11 = *(v0 + 9016);
  }

  if (v3 >> 60 == 15)
  {
    v12 = 0;
  }

  else
  {
    v12 = *(v0 + 9024);
  }

  if (v4 >> 60 == 15)
  {
    v13 = 0xC000000000000000;
  }

  else
  {
    v13 = *(v0 + 8992);
  }

  if (v4 >> 60 == 15)
  {
    v14 = 0;
  }

  else
  {
    v14 = *(v0 + 8984);
  }

  if ((v8 & 0x100000000) != 0)
  {
    v15 = 1;
  }

  else
  {
    v15 = v8;
  }

  *(v0 + 1856) = v10;
  *(v0 + 1864) = v9;
  *(v0 + 1872) = v15;
  *(v0 + 1880) = v15;
  *(v0 + 1888) = v7;
  *(v0 + 1896) = v6;
  *(v0 + 1904) = v5;
  *(v0 + 1912) = v14;
  *(v0 + 1920) = v13;
  *(v0 + 1928) = v12;
  *(v0 + 1936) = v11;
  *(v0 + 1944) = v1;
  *(v0 + 1952) = v2;
  outlined init with copy of MLS.Group(v0 + 1856, v0 + 2064);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 5976));
  *(v0 + 2272) = v10;
  *(v0 + 2280) = v9;
  *(v0 + 2288) = v15;
  *(v0 + 2296) = v15;
  *(v0 + 2304) = v17;
  *(v0 + 2312) = v18;
  *(v0 + 2320) = v19;
  *(v0 + 2328) = v14;
  *(v0 + 2336) = v13;
  *(v0 + 2344) = v12;
  *(v0 + 2352) = v11;
  *(v0 + 2360) = v1;
  *(v0 + 2368) = v2;
  outlined destroy of MLS.Group(v0 + 2272);

  swift_bridgeObjectRelease_n();

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:), v20, 0);
}

{
  v9 = v0;

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 8400);
    v4 = *(v0 + 8392);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v8 = v6;
    *v5 = 136315138;
    *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v4, v3, &v8);
    _os_log_impl(&dword_264F1F000, v1, v2, "SwiftMLSClientCoordinator createGroup sending event { identifier: %s }", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x266755550](v6, -1, -1);
    MEMORY[0x266755550](v5, -1, -1);
  }

  swift_retain_n();
  swift_bridgeObjectRetain_n();
  outlined init with copy of MLS.OutgoingEventState?(v0 + 1488, v0 + 200, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:), 0, 0);
}

{
  v1 = *(v0 + 9048);
  v2 = *(v0 + 9016);
  v3 = *(v0 + 8992);
  v4 = *(v0 + 8968);
  v5 = *(v0 + 8960);
  if (v2 >> 60 == 15)
  {
    v6 = 0xC000000000000000;
  }

  else
  {
    v6 = *(v0 + 9016);
  }

  if (v2 >> 60 == 15)
  {
    v7 = 0;
  }

  else
  {
    v7 = *(v0 + 9024);
  }

  if (v3 >> 60 == 15)
  {
    v8 = 0xC000000000000000;
  }

  else
  {
    v8 = *(v0 + 8992);
  }

  if (v3 >> 60 == 15)
  {
    v9 = 0;
  }

  else
  {
    v9 = *(v0 + 8984);
  }

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 5976));

  outlined consume of Data._Representation(v5, v4);
  outlined consume of Data._Representation(v9, v8);
  outlined consume of Data._Representation(v7, v6);
  v10 = *(v0 + 8400);
  v11 = *(v0 + 8392);
  v12 = *(v0 + 8368);
  v13 = *(v0 + 8040);
  swift_getErrorValue();
  v14 = Error.readableDescription.getter(*(v0 + 6296), *(v0 + 6304));
  closure #9 in closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:)(v14, v15, v13, v11, v10, "SwiftMLSClientCoordinator createGroup failed obtaining group information { identifier: %s, error: %s }");

  swift_getErrorValue();
  v16 = Error.readableDescription.getter(*(v0 + 6248), *(v0 + 6256));
  *(v0 + 9072) = v16;
  *(v0 + 9080) = v17;
  *(v0 + 7440) = 9;
  *(v0 + 7448) = v16;
  *(v0 + 7456) = v17;
  *(v0 + 9088) = lazy protocol witness table accessor for type MLS.GroupCreationError and conformance MLS.GroupCreationError();
  swift_willThrowTypedImpl();

  swift_bridgeObjectRelease_n();

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:), v12, 0);
}

{
  v1 = v0[1135];
  v2 = v0[1134];
  v3 = v0[1107];
  v4 = v0[1106];
  swift_allocError();
  *v5 = 9;
  *(v5 + 8) = v2;
  *(v5 + 16) = v1;
  outlined consume of Data._Representation(v4, v3);
  outlined destroy of MLS.OutgoingEventState((v0 + 524));
  outlined destroy of NSObject?((v0 + 186), &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 712);

  v6 = v0[1];

  return v6();
}

{
  v1 = *(*(v0 + 8040) + 96);
  v2 = *(v0 + 1080);
  *(v0 + 512) = *(v0 + 1064);
  *(v0 + 528) = v2;
  *(v0 + 544) = *(v0 + 1096);
  *(v0 + 560) = *(v0 + 1112);
  v3 = *(v0 + 1016);
  *(v0 + 448) = *(v0 + 1000);
  *(v0 + 464) = v3;
  v4 = *(v0 + 1048);
  *(v0 + 480) = *(v0 + 1032);
  *(v0 + 496) = v4;
  v5 = *(v0 + 952);
  *(v0 + 384) = *(v0 + 936);
  *(v0 + 400) = v5;
  v6 = *(v0 + 984);
  *(v0 + 416) = *(v0 + 968);
  *(v0 + 432) = v6;
  v7 = *(v0 + 1904);
  v8 = *(v0 + 1936);
  *(v0 + 2024) = *(v0 + 1920);
  *(v0 + 2040) = v8;
  *(v0 + 2056) = *(v0 + 1952);
  v9 = *(v0 + 1872);
  *(v0 + 1960) = *(v0 + 1856);
  *(v0 + 1976) = v9;
  *(v0 + 1992) = *(v0 + 1888);
  *(v0 + 2008) = v7;
  v10 = *(v0 + 4192);
  v11 = *(v0 + 4208);
  v12 = *(v0 + 4224);
  v13 = *(v0 + 4240);
  *(v0 + 2648) = *(v0 + 4256);
  *(v0 + 2616) = v12;
  *(v0 + 2632) = v13;
  *(v0 + 2584) = v10;
  *(v0 + 2600) = v11;
  *(v0 + 2656) = 1;
  v14 = *(*v1 + 368);
  outlined init with copy of MLS.OutgoingEventState(v0 + 4192, v0 + 3256);
  v17 = (v14 + *v14);
  v15 = swift_task_alloc();
  *(v0 + 9096) = v15;
  *v15 = v0;
  v15[1] = closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:);

  return (v17)(v0 + 384, v0 + 1960, v0 + 2584, 1, 0, 0);
}

{
  v1 = *(v0 + 8368);

  swift_bridgeObjectRelease_n();

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:), v1, 0);
}

{
  v1 = *(v0 + 8048);
  outlined init with copy of MLS.OutgoingEventState?(v1, v0 + 3976, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

  outlined init with copy of MLS.OutgoingEventState?(v1, v0 + 4048, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:), 0, 0);
}

{
  v1 = v0[1109];
  v2 = (v0[1005] + v0[1110]);
  v3 = v2[1];
  v0[963] = *v2;
  v0[964] = v3;
  v4 = *(v1 + 104);

  v11 = (v4 + *v4);
  v5 = swift_task_alloc();
  v0[1140] = v5;
  *v5 = v0;
  v5[1] = closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:);
  v6 = v0[1129];
  v7 = v0[1109];
  v8 = v0[1009];
  v9 = v0[1008];

  return (v11)(v9, v8, v0 + 963, v6, v7);
}

{
  *(*v1 + 9128) = v0;

  if (v0)
  {
    v2 = closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:);
  }

  else
  {
    v2 = closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v1 = *(v0 + 9104);
  v2 = *(v0 + 8400);
  v3 = *(v0 + 8392);
  v4 = *(v0 + 8368);
  v5 = *(v0 + 8040);
  swift_getErrorValue();
  v6 = Error.readableDescription.getter(*(v0 + 7472), *(v0 + 7480));
  closure #9 in closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:)(v6, v7, v5, v3, v2, "SwiftMLSClientCoordinator createGroup failed to save event { identifier: %s, error: %s }");

  swift_getErrorValue();
  v8 = Error.readableDescription.getter(*(v0 + 6560), *(v0 + 6568));
  *(v0 + 9136) = v8;
  *(v0 + 9144) = v9;
  *(v0 + 6576) = 11;
  *(v0 + 6584) = v8;
  *(v0 + 6592) = v9;
  *(v0 + 9152) = lazy protocol witness table accessor for type MLS.GroupCreationError and conformance MLS.GroupCreationError();
  swift_willThrowTypedImpl();

  swift_bridgeObjectRelease_n();

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:), v4, 0);
}

{
  v1 = v0[1143];
  v2 = v0[1142];
  v3 = v0[1107];
  v4 = v0[1106];
  swift_allocError();
  *v5 = 11;
  *(v5 + 8) = v2;
  *(v5 + 16) = v1;
  outlined consume of Data._Representation(v4, v3);
  outlined destroy of MLS.Group((v0 + 232));
  outlined destroy of MLS.OutgoingEventState((v0 + 524));
  outlined destroy of NSObject?((v0 + 186), &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 712);

  v6 = v0[1];

  return v6();
}

{
  v1 = *(v0 + 8368);
  v2 = *(v0 + 8048);

  outlined destroy of NSObject?(v2, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

  outlined destroy of NSObject?(v2, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:), v1, 0);
}

{
  swift_retain_n();
  swift_bridgeObjectRetain_n();

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:), 0, 0);
}

{

  v2 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC15SecureMessaging3MLSO9AllMemberO_SayAHGTt0g5Tf4g_n(v1);
  v0[1145] = v2;

  v3 = swift_task_alloc();
  v0[1146] = v3;
  *v3 = v0;
  v3[1] = closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:);
  v4 = v0[1009];
  v5 = v0[1008];

  return MLS.SwiftMLSClientCoordinator.addPendingMembers(identifier:otherMembers:)(v5, v4, v2);
}

{
  *(*v1 + 9176) = v0;

  if (v0)
  {
    v2 = closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:);
  }

  else
  {

    v2 = closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v1 = *(v0 + 9128);
  v2 = *(v0 + 8368);
  v3 = *(v0 + 8048);
  v4 = *(v0 + 8040);
  swift_getErrorValue();
  v5 = Error.readableDescription.getter(*(v0 + 6752), *(v0 + 6760));
  closure #4 in closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:)(v5, v6, v4, v3, "SwiftMLSClientCoordinator createGroup failed to reset group persist state { identifier: %s, error: %s }");

  swift_getErrorValue();
  v7 = Error.readableDescription.getter(*(v0 + 6800), *(v0 + 6808));
  *(v0 + 9184) = v7;
  *(v0 + 9192) = v8;
  *(v0 + 6816) = 11;
  *(v0 + 6824) = v7;
  *(v0 + 6832) = v8;
  *(v0 + 9200) = lazy protocol witness table accessor for type MLS.GroupCreationError and conformance MLS.GroupCreationError();
  swift_willThrowTypedImpl();

  outlined destroy of NSObject?(v3, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

  outlined destroy of NSObject?(v3, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:), v2, 0);
}

{
  v1 = v0[1149];
  v2 = v0[1148];
  v3 = v0[1107];
  v4 = v0[1106];
  swift_allocError();
  *v5 = 11;
  *(v5 + 8) = v2;
  *(v5 + 16) = v1;
  outlined consume of Data._Representation(v4, v3);
  outlined destroy of MLS.Group((v0 + 232));
  outlined destroy of MLS.OutgoingEventState((v0 + 524));
  outlined destroy of NSObject?((v0 + 186), &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 712);

  v6 = v0[1];

  return v6();
}

{
  v1 = *(v0 + 8368);

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:), v1, 0);
}

{
  v31 = v0;
  v1 = *(v0 + 8088);
  *(v0 + 2528) = *(v0 + 1904);
  *(v0 + 2544) = *(v0 + 1920);
  *(v0 + 2560) = *(v0 + 1936);
  *(v0 + 2576) = *(v0 + 1952);
  *(v0 + 2480) = *(v0 + 1856);
  *(v0 + 2496) = *(v0 + 1872);
  *(v0 + 2512) = *(v0 + 1888);
  swift_beginAccess();
  v2 = *(v1 + 16);
  v3 = *(v1 + 48);
  *(v0 + 2392) = *(v1 + 32);
  *(v0 + 2408) = v3;
  *(v0 + 2376) = v2;
  v4 = *(v1 + 64);
  v5 = *(v1 + 80);
  v6 = *(v1 + 96);
  *(v0 + 2472) = *(v1 + 112);
  *(v0 + 2440) = v5;
  *(v0 + 2456) = v6;
  *(v0 + 2424) = v4;
  v7 = *(v0 + 2544);
  v8 = *(v0 + 2560);
  v9 = *(v0 + 2528);
  *(v1 + 112) = *(v0 + 2576);
  *(v1 + 80) = v7;
  *(v1 + 96) = v8;
  *(v1 + 64) = v9;
  v10 = *(v0 + 2480);
  v11 = *(v0 + 2512);
  *(v1 + 32) = *(v0 + 2496);
  *(v1 + 48) = v11;
  *(v1 + 16) = v10;
  outlined init with copy of MLS.Group(v0 + 1856, v0 + 2168);
  outlined destroy of NSObject?(v0 + 2376, &_s15SecureMessaging3MLSO5GroupVSgMd, &_s15SecureMessaging3MLSO5GroupVSgMR);

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = *(v0 + 8400);
    v15 = *(v0 + 8392);
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v30 = v17;
    *v16 = 136315138;
    *(v16 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v14, &v30);
    _os_log_impl(&dword_264F1F000, v12, v13, "SwiftMLSClientCoordinator createGroup returning from queue operation { identifier: %s }", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v17);
    MEMORY[0x266755550](v17, -1, -1);
    MEMORY[0x266755550](v16, -1, -1);
  }

  v18 = *(v0 + 1632);
  *(v0 + 1432) = *(v0 + 1616);
  *(v0 + 1448) = v18;
  *(v0 + 1464) = *(v0 + 1648);
  *(v0 + 1480) = *(v0 + 1664);
  v19 = *(v0 + 1568);
  *(v0 + 1368) = *(v0 + 1552);
  *(v0 + 1384) = v19;
  v20 = *(v0 + 1600);
  *(v0 + 1400) = *(v0 + 1584);
  *(v0 + 1416) = v20;
  v21 = *(v0 + 1504);
  *(v0 + 1304) = *(v0 + 1488);
  *(v0 + 1320) = v21;
  v22 = *(v0 + 1536);
  *(v0 + 1336) = *(v0 + 1520);
  *(v0 + 1352) = v22;
  v23 = _s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGWOg(v0 + 1304);
  v24 = *(v0 + 8040);
  if (v23 == 9)
  {
    destructiveProjectEnumData for KDSRegistration.XPCRequest.RequestType();
    v29 = (*(*v24 + 344) + **(*v24 + 344));
    v25 = swift_task_alloc();
    *(v0 + 9248) = v25;
    *v25 = v0;
    v25[1] = closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:);
    v26 = v0 + 7104;
  }

  else
  {
    v29 = (*(*v24 + 344) + **(*v24 + 344));
    v27 = swift_task_alloc();
    *(v0 + 9232) = v27;
    *v27 = v0;
    v27[1] = closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:);
    v26 = v0 + 7080;
  }

  return v29(v26, v0 + 5696);
}

{
  v1 = *(v0 + 9176);
  v2 = *(v0 + 8400);
  v3 = *(v0 + 8392);
  v4 = *(v0 + 8368);
  v5 = *(v0 + 8040);

  swift_getErrorValue();
  v6 = Error.readableDescription.getter(*(v0 + 6872), *(v0 + 6880));
  closure #9 in closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:)(v6, v7, v5, v3, v2, "SwiftMLSClientCoordinator createGroup failed to save pending members { identifier: %s, error: %s }");

  swift_getErrorValue();
  v8 = Error.readableDescription.getter(*(v0 + 6920), *(v0 + 6928));
  *(v0 + 9208) = v8;
  *(v0 + 9216) = v9;
  *(v0 + 6936) = 11;
  *(v0 + 6944) = v8;
  *(v0 + 6952) = v9;
  *(v0 + 9224) = lazy protocol witness table accessor for type MLS.GroupCreationError and conformance MLS.GroupCreationError();
  swift_willThrowTypedImpl();

  swift_bridgeObjectRelease_n();

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:), v4, 0);
}

{
  v1 = v0[1152];
  v2 = v0[1151];
  v3 = v0[1107];
  v4 = v0[1106];
  swift_allocError();
  *v5 = 11;
  *(v5 + 8) = v2;
  *(v5 + 16) = v1;
  outlined consume of Data._Representation(v4, v3);
  outlined destroy of MLS.Group((v0 + 232));
  outlined destroy of MLS.OutgoingEventState((v0 + 524));
  outlined destroy of NSObject?((v0 + 186), &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 712);

  v6 = v0[1];

  return v6();
}

{
  v2 = *v1;
  *(*v1 + 9240) = v0;

  v3 = *(v2 + 8368);
  if (v0)
  {
    v4 = closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:);
  }

  else
  {
    v4 = closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:);
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{
  v2 = *v1;
  *(*v1 + 9256) = v0;

  v3 = *(v2 + 8368);
  if (v0)
  {
    v4 = closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:);
  }

  else
  {
    v4 = closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:);
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{
  v1 = *(v0 + 8856);
  v2 = *(v0 + 8848);
  outlined destroy of NSObject?(v0 + 1488, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
  outlined consume of Data._Representation(v2, v1);
  result = outlined destroy of MLS.Group(v0 + 1856);
  v4 = *(v0 + 7112);
  v5 = __CFADD__(v4, 1);
  v6 = (v4 + 1);
  if (v5)
  {
    __break(1u);
  }

  else
  {
    v7 = *(v0 + 8032);
    *v7 = v6;
    *(v7 + 8) = v6;
    *(v7 + 16) = 1;
    *(v7 + 24) = *(v0 + 4192);
    v8 = *(v0 + 4208);
    v9 = *(v0 + 4224);
    v10 = *(v0 + 4240);
    *(v7 + 88) = *(v0 + 4256);
    *(v7 + 72) = v10;
    *(v7 + 56) = v9;
    *(v7 + 40) = v8;
    *(v7 + 96) = 0;
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 5696));

    v11 = *(v0 + 8);

    return v11();
  }

  return result;
}

{
  v1 = *(v0 + 8856);
  v2 = *(v0 + 8848);
  outlined destroy of NSObject?(v0 + 1488, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
  outlined consume of Data._Representation(v2, v1);
  result = outlined destroy of MLS.Group(v0 + 1856);
  v4 = *(v0 + 7096);
  v5 = __CFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    v7 = *(v0 + 8032);
    v8 = *(v0 + 7088);
    *v7 = v8;
    *(v7 + 8) = v8;
    *(v7 + 16) = v6;
    *(v7 + 24) = *(v0 + 4192);
    v9 = *(v0 + 4208);
    v10 = *(v0 + 4224);
    v11 = *(v0 + 4240);
    *(v7 + 88) = *(v0 + 4256);
    *(v7 + 72) = v11;
    *(v7 + 56) = v10;
    *(v7 + 40) = v9;
    *(v7 + 96) = 0;
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 5696));

    v12 = *(v0 + 8);

    return v12();
  }

  return result;
}

{
  outlined consume of Data?(v0[1053], v0[1054]);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 712);

  v1 = v0[1];

  return v1();
}

{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 707);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 712);

  v1 = v0[1];

  return v1();
}

{
  v20 = v0;

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 662);
  v1 = v0[1095];
  v2 = v0[1006];
  outlined init with copy of MLS.OutgoingEventState?(v2, (v0 + 533), &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();
  outlined destroy of NSObject?(v2, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[1050];
    v7 = v0[1049];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v19 = v10;
    *v8 = 136315394;
    *(v8 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v6, &v19);
    *(v8 + 12) = 2112;
    v11 = v1;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v12;
    *v9 = v12;
    _os_log_impl(&dword_264F1F000, v4, v5, "SwiftMLSClientCoordinator createGroup failed to resurrect to group { identifier: %s, error: %@ }", v8, 0x16u);
    outlined destroy of NSObject?(v9, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x266755550](v9, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x266755550](v10, -1, -1);
    MEMORY[0x266755550](v8, -1, -1);
  }

  swift_getErrorValue();
  v13 = Error.readableDescription.getter(v0[925], v0[926]);
  v15 = v14;
  lazy protocol witness table accessor for type MLS.GroupCreationError and conformance MLS.GroupCreationError();
  swift_allocError();
  *v16 = 15;
  *(v16 + 8) = v13;
  *(v16 + 16) = v15;
  swift_willThrow();

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 712);

  v17 = v0[1];

  return v17();
}

{
  v20 = v0;

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 662);
  v1 = v0[1099];
  v2 = v0[1006];
  outlined init with copy of MLS.OutgoingEventState?(v2, (v0 + 533), &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();
  outlined destroy of NSObject?(v2, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[1050];
    v7 = v0[1049];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v19 = v10;
    *v8 = 136315394;
    *(v8 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v6, &v19);
    *(v8 + 12) = 2112;
    v11 = v1;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v12;
    *v9 = v12;
    _os_log_impl(&dword_264F1F000, v4, v5, "SwiftMLSClientCoordinator createGroup failed to resurrect to group { identifier: %s, error: %@ }", v8, 0x16u);
    outlined destroy of NSObject?(v9, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x266755550](v9, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x266755550](v10, -1, -1);
    MEMORY[0x266755550](v8, -1, -1);
  }

  swift_getErrorValue();
  v13 = Error.readableDescription.getter(v0[925], v0[926]);
  v15 = v14;
  lazy protocol witness table accessor for type MLS.GroupCreationError and conformance MLS.GroupCreationError();
  swift_allocError();
  *v16 = 15;
  *(v16 + 8) = v13;
  *(v16 + 16) = v15;
  swift_willThrow();

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 712);

  v17 = v0[1];

  return v17();
}

{
  v29 = v0;
  v1 = *(v0 + 9280);
  specialized MLS.KeyPackageRetrievalResult.uriToSwiftMLSKeyPackage.getter(*(v0 + 7912));
  if (v1)
  {
    v2 = v1;
    v3 = *(v0 + 9264);
    v4 = *(v0 + 8168);
    v5 = *(v0 + 8096);

    outlined destroy of NSObject?(v0 + 7560, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
    v3(v4, v5);

    v6 = *(v0 + 8048);
    outlined init with copy of MLS.OutgoingEventState?(v6, v0 + 4264, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);
    v7 = v2;
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    outlined destroy of NSObject?(v6, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

    if (os_log_type_enabled(v8, v9))
    {
      v10 = *(v0 + 8400);
      v11 = *(v0 + 8392);
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v28 = v14;
      *v12 = 136315394;
      *(v12 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v10, &v28);
      *(v12 + 12) = 2112;
      v15 = v2;
      v16 = _swift_stdlib_bridgeErrorToNSError();
      *(v12 + 14) = v16;
      *v13 = v16;
      _os_log_impl(&dword_264F1F000, v8, v9, "SwiftMLSClientCoordinator createGroup failed to resurrect to group { identifier: %s, error: %@ }", v12, 0x16u);
      outlined destroy of NSObject?(v13, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x266755550](v13, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v14);
      MEMORY[0x266755550](v14, -1, -1);
      MEMORY[0x266755550](v12, -1, -1);
    }

    swift_getErrorValue();
    v17 = Error.readableDescription.getter(*(v0 + 7400), *(v0 + 7408));
    v19 = v18;
    lazy protocol witness table accessor for type MLS.GroupCreationError and conformance MLS.GroupCreationError();
    swift_allocError();
    *v20 = 15;
    *(v20 + 8) = v17;
    *(v20 + 16) = v19;
    swift_willThrow();

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 5696));

    v21 = *(v0 + 8);

    return v21();
  }

  else
  {

    MLS.Group.Group.CreateNewEraInput.init(packages:)();
    v23 = *(v0 + 5720);
    v24 = *(v0 + 5728);
    __swift_project_boxed_opaque_existential_1((v0 + 5696), v23);
    v27 = (*(v24 + 168) + **(v24 + 168));
    v25 = swift_task_alloc();
    *(v0 + 9288) = v25;
    *v25 = v0;
    v25[1] = closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:);
    v26 = *(v0 + 8320);

    return v27(v0 + 5936, v26, v23, v24);
  }
}

{
  v2 = *v1;
  *(*v1 + 9296) = v0;

  if (v0)
  {
    v3 = *(v2 + 8368);
    outlined destroy of NSObject?(v2 + 7560, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);

    v4 = closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:);
    v5 = v3;
  }

  else
  {
    v5 = *(v2 + 8368);
    v4 = closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:);
  }

  return MEMORY[0x2822009F8](v4, v5, 0);
}

{
  v132 = v0;
  v116 = *(v0 + 9264);
  v1 = *(v0 + 8320);
  v2 = *(v0 + 8312);
  v3 = *(v0 + 8304);
  v4 = *(v0 + 8168);
  v5 = *(v0 + 8096);
  v6 = *(v0 + 5960);
  v7 = *(v0 + 5968);
  __swift_project_boxed_opaque_existential_1((v0 + 5936), v6);
  (*(v7 + 8))(v6, v7);
  (*(v2 + 8))(v1, v3);
  v116(v4, v5);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 5936));

  v117 = *(v0 + 9296);
  v8 = *(v0 + 8048);
  swift_beginAccess();
  v9._countAndFlagsBits = 0x534C4D7466697753;
  v9._object = 0xEE0074696D6D6F43;
  MetricCollector.end(label:)(v9);
  swift_endAccess();
  outlined init with copy of ServerBag.MLS(v0 + 6096, v0 + 5616);
  outlined init with copy of MLS.OutgoingEventState?(v8, v0 + 3400, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  outlined destroy of NSObject?(v8, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);
  if (os_log_type_enabled(v10, v11))
  {
    v12 = *(v0 + 8400);
    v13 = *(v0 + 8392);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *&v120 = v15;
    *v14 = 136315394;
    *(v14 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v12, &v120);
    *(v14 + 12) = 2080;
    v16 = *(v0 + 5640);
    __swift_project_boxed_opaque_existential_1((v0 + 5616), v16);
    v17 = *(v16 - 8);
    swift_task_alloc();
    (*(v17 + 16))();
    v18 = String.init<A>(describing:)();
    v20 = v19;

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 5616));
    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v20, &v120);

    *(v14 + 14) = v21;
    _os_log_impl(&dword_264F1F000, v10, v11, "SwiftMLSClientCoordinator createGroup resurrected to group { identifier: %s, commitOutput: %s }", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v15, -1, -1);
    MEMORY[0x266755550](v14, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 5616));
  }

  v22 = *(v0 + 8072);
  v23 = *(v0 + 8064);
  v24 = *(v0 + 8048);
  v25 = *(**(v0 + 8040) + 352);
  outlined init with copy of MLS.OutgoingEventState?(v24, v0 + 3328, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

  outlined init with copy of MLS.OutgoingEventState?(v24, v0 + 3184, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

  v25(v119, &v120, v23, v22, v0 + 6096);
  if (v117)
  {
    v26 = *(v0 + 8048);
    v27 = *(v0 + 8040);
    outlined destroy of NSObject?(v0 + 7560, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);

    swift_getErrorValue();
    v28 = Error.readableDescription.getter(*(v0 + 7280), *(v0 + 7288));
    closure #4 in closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:)(v28, v29, v27, v26, "SwiftMLSClientCoordinator createGroup resurrect commit yielded unexpected output { identifier: %s, error: %s }");

    swift_getErrorValue();
    v30 = Error.readableDescription.getter(*(v0 + 7256), *(v0 + 7264));
    v32 = v31;
    *(v0 + 7224) = 8;
    *(v0 + 7232) = v30;
    *(v0 + 7240) = v31;
    lazy protocol witness table accessor for type MLS.GroupCreationError and conformance MLS.GroupCreationError();
    swift_willThrowTypedImpl();

    outlined destroy of NSObject?(v26, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

    outlined destroy of NSObject?(v26, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

    swift_allocError();
    *v33 = 8;
    *(v33 + 8) = v30;
    *(v33 + 16) = v32;
    v39 = (v0 + 6096);
LABEL_7:
    __swift_destroy_boxed_opaque_existential_1Tm(v39);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 5696));

    v40 = *(v0 + 8);

    return v40();
  }

  v34 = *(v0 + 8048);
  v35 = *(v0 + 8040);

  outlined destroy of NSObject?(v34, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

  outlined destroy of NSObject?(v34, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

  v36 = v119[2];
  v114 = v119[1];
  v115 = v119[3];
  v118 = v120;
  v111 = v119[0];
  v112 = *(&v120 + 1);
  v113 = v121;
  v37 = *(*v35 + 360);
  outlined init with copy of MLS.OutgoingEventState?(v34, v0 + 3112, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

  outlined init with copy of MLS.OutgoingEventState?(v34, v0 + 3040, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

  v37(&v120, v0 + 6096);
  v38 = *(v0 + 8048);
  v42 = *(&v120 + 1);
  v107 = v121;
  v108 = v120;
  v110 = *(&v121 + 1);
  v43 = v122;
  v44 = *(v0 + 194);

  outlined destroy of NSObject?(v38, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

  outlined destroy of NSObject?(v38, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

  v109 = v42;
  if (v44)
  {
    if (v110 >> 60 == 15)
    {
      v45 = *(v0 + 8048);
      v46 = v36;
      outlined copy of Data._Representation(v36, v115);
      outlined destroy of NSObject?(v0 + 7560, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);

      outlined init with copy of MLS.OutgoingEventState?(v45, v0 + 5056, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

      v47 = Logger.logObject.getter();
      v48 = static os_log_type_t.error.getter();
      outlined destroy of NSObject?(v45, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

      if (os_log_type_enabled(v47, v48))
      {
        v49 = *(v0 + 8400);
        v50 = *(v0 + 8392);
        v51 = *(v0 + 8072);
        v52 = *(v0 + 8064);
        v53 = swift_slowAlloc();
        v54 = swift_slowAlloc();
        v119[0] = v54;
        *v53 = 136315394;
        *(v53 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v50, v49, v119);
        *(v53 + 12) = 2080;
        *(v53 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v52, v51, v119);
        _os_log_impl(&dword_264F1F000, v47, v48, "SwiftMLSClientCoordinator createGroup resurrect commit yielded unexpected output { identifier: %s, group: %s }", v53, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x266755550](v54, -1, -1);
        MEMORY[0x266755550](v53, -1, -1);
      }

      lazy protocol witness table accessor for type MLS.GroupCreationError and conformance MLS.GroupCreationError();
      swift_allocError();
      *v55 = 19;
      *(v55 + 8) = 0;
      *(v55 + 16) = 0;
      swift_willThrow();
      outlined consume of Data._Representation(v46, v115);

      outlined consume of Data._Representation(v113, *(&v113 + 1));
      outlined consume of Data._Representation(v108, v109);
      outlined consume of Data._Representation(v43, *(&v43 + 1));

      outlined consume of Data._Representation(v46, v115);
      v39 = (v0 + 6096);
      goto LABEL_7;
    }

    v56 = (v0 + 16);
    v69 = *(v0 + 8400);
    v106 = *(v0 + 8392);
    v70 = *(v0 + 8224);
    v71 = *(v0 + 8216);
    v72 = *(v0 + 8208);
    v73 = *(v0 + 8056);
    outlined copy of Data._Representation(v36, v115);

    UUID.init()();
    v74 = UUID.uuidString.getter();
    v102 = v75;
    v104 = v74;
    (*(v71 + 8))(v70, v72);
    swift_beginAccess();
    v76 = *(v73 + 16);
    v67 = v115;
    outlined init with copy of MLS.OutgoingEventState?(v0 + 7560, v0 + 7656, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);

    v78 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC15SecureMessaging3MLSO9AllMemberO_SayAHGTt0g5Tf4g_n(v77);

    *(v0 + 48) = *(v0 + 7560);
    *(v0 + 16) = v106;
    *(v0 + 24) = v69;
    *(v0 + 32) = v104;
    *(v0 + 40) = v102;
    *(v0 + 64) = v76;
    *(v0 + 72) = v111;
    *(v0 + 80) = v114;
    *(v0 + 88) = v36;
    *(v0 + 96) = v115;
    *(v0 + 104) = v118;
    *(v0 + 112) = v112;
    *(v0 + 120) = v113;
    *(v0 + 136) = v78;
    *(v0 + 144) = v108;
    *(v0 + 152) = v42;
    *(v0 + 160) = v107;
    *(v0 + 168) = v110;
    *(v0 + 176) = v43;
    _s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGWOi8_(v0 + 16);
  }

  else
  {
    v56 = (v0 + 1672);
    v57 = *(v0 + 8400);
    v105 = *(v0 + 8392);
    v58 = *(v0 + 8224);
    v59 = *(v0 + 8216);
    v60 = *(v0 + 8208);
    v61 = *(v0 + 8080);
    v62 = v36;
    v63 = *(v0 + 8056);
    outlined copy of Data._Representation(v62, v115);

    UUID.init()();
    v64 = UUID.uuidString.getter();
    v101 = v65;
    v103 = v64;
    (*(v59 + 8))(v58, v60);
    swift_beginAccess();
    v66 = *(v63 + 16);
    v36 = v62;
    v67 = v115;
    outlined init with copy of MLS.OutgoingEventState?(v0 + 7560, v0 + 7736, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);

    v68 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC15SecureMessaging3MLSO9AllMemberO_SayAHGTt0g5Tf4g_n(v61);

    *(v0 + 1704) = *(v0 + 7560);
    *(v0 + 1672) = v105;
    *(v0 + 1680) = v57;
    *(v0 + 1688) = v103;
    *(v0 + 1696) = v101;
    *(v0 + 1720) = v66;
    *(v0 + 1728) = v111;
    *(v0 + 1736) = v114;
    *(v0 + 1744) = v36;
    *(v0 + 1752) = v115;
    *(v0 + 1760) = v118;
    *(v0 + 1768) = v112;
    *(v0 + 1776) = v113;
    *(v0 + 1792) = v68;
    *(v0 + 1800) = v108;
    *(v0 + 1808) = v42;
    *(v0 + 1816) = v107;
    *(v0 + 1824) = v110;
    *(v0 + 1832) = v43;
    _s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGWOi7_(v0 + 1672);
  }

  v79 = v56[9];
  v128 = v56[8];
  v129 = v79;
  v130 = v56[10];
  v131 = *(v56 + 176);
  v80 = v56[5];
  v124 = v56[4];
  v125 = v80;
  v81 = v56[7];
  v126 = v56[6];
  v127 = v81;
  v82 = v56[1];
  v120 = *v56;
  v121 = v82;
  v83 = v56[3];
  v122 = v56[2];
  v123 = v83;
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 6096));
  v84 = v129;
  *(v0 + 1616) = v128;
  *(v0 + 1632) = v84;
  *(v0 + 1648) = v130;
  *(v0 + 1664) = v131;
  v85 = v125;
  *(v0 + 1552) = v124;
  *(v0 + 1568) = v85;
  v86 = v127;
  *(v0 + 1584) = v126;
  *(v0 + 1600) = v86;
  v87 = v121;
  *(v0 + 1488) = v120;
  *(v0 + 1504) = v87;
  v88 = v123;
  *(v0 + 1520) = v122;
  *(v0 + 1536) = v88;
  *(v0 + 8856) = v67;
  *(v0 + 8848) = v36;
  v89 = *(v0 + 8680);
  v90 = *(v0 + 8080);
  v91 = *(v0 + 1632);
  *(v0 + 1064) = *(v0 + 1616);
  *(v0 + 1080) = v91;
  *(v0 + 1096) = *(v0 + 1648);
  *(v0 + 1112) = *(v0 + 1664);
  v92 = *(v0 + 1568);
  *(v0 + 1000) = *(v0 + 1552);
  *(v0 + 1016) = v92;
  v93 = *(v0 + 1600);
  *(v0 + 1032) = *(v0 + 1584);
  *(v0 + 1048) = v93;
  v94 = *(v0 + 1504);
  *(v0 + 936) = *(v0 + 1488);
  *(v0 + 952) = v94;
  v95 = *(v0 + 1536);
  *(v0 + 968) = *(v0 + 1520);
  *(v0 + 984) = v95;
  v96 = specialized MLS.OutgoingEventType.storageIdentifier.getter();
  v98 = v97;
  v99 = specialized MLS.OutgoingEventType.identifier.getter();
  *(v0 + 4248) = *(v0 + 7560);
  *(v0 + 4192) = v96;
  *(v0 + 4200) = v98;
  *(v0 + 4208) = v89;
  *(v0 + 4216) = v90;
  *(v0 + 4224) = 0;
  *(v0 + 4232) = v99;
  *(v0 + 4240) = v100;
  swift_retain_n();
  swift_bridgeObjectRetain_n();

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:), 0, 0);
}

{
  v51 = v0;
  (*(*(v0 + 8312) + 8))(*(v0 + 8328), *(v0 + 8304));
  v1 = *(v0 + 8808);
  *(v0 + 7896) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if (swift_dynamicCast())
  {
    (*(*(v0 + 8104) + 32))(*(v0 + 8168), *(v0 + 8176), *(v0 + 8096));
    v3 = MLS.SwiftMLSClientCoordinator.healingMethod(error:)();
    v4 = *(v0 + 8168);
    if (v3 == 5)
    {
      v5 = *(v0 + 8160);
      v6 = *(v0 + 8104);
      v7 = *(v0 + 8096);
      v8 = *(v0 + 8048);

      v9 = *(v6 + 16);
      v9(v5, v4, v7);
      outlined init with copy of MLS.OutgoingEventState?(v8, v0 + 3904, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);
      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.error.getter();
      outlined destroy of NSObject?(v8, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);
      if (os_log_type_enabled(v10, v11))
      {
        v47 = *(v0 + 8400);
        v12 = *(v0 + 8392);
        v13 = *(v0 + 8160);
        v14 = *(v0 + 8104);
        v15 = *(v0 + 8096);
        v16 = swift_slowAlloc();
        v48 = swift_slowAlloc();
        v49 = swift_slowAlloc();
        v50[0] = v49;
        *v16 = 136315394;
        *(v16 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v47, v50);
        *(v16 + 12) = 2112;
        lazy protocol witness table accessor for type MLS.AddMembersOperation and conformance MLS.AddMembersOperation(&lazy protocol witness table cache variable for type MLS.MLSError and conformance MLS.MLSError, MEMORY[0x277D6AEB0], MEMORY[0x277D6AEB8]);
        swift_allocError();
        v9(v17, v13, v15);
        v18 = _swift_stdlib_bridgeErrorToNSError();
        v19 = *(v14 + 8);
        v19(v13, v15);
        *(v16 + 14) = v18;
        *v48 = v18;
        _os_log_impl(&dword_264F1F000, v10, v11, "SwiftMLSClientCoordinator createGroup era advancement failed. Refetching KeyPackage { identifier: %s, error: %@ }", v16, 0x16u);
        outlined destroy of NSObject?(v48, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        MEMORY[0x266755550](v48, -1, -1);
        __swift_destroy_boxed_opaque_existential_1Tm(v49);
        MEMORY[0x266755550](v49, -1, -1);
        MEMORY[0x266755550](v16, -1, -1);
      }

      else
      {
        v39 = *(v0 + 8160);
        v40 = *(v0 + 8104);
        v41 = *(v0 + 8096);

        v19 = *(v40 + 8);
        v19(v39, v41);
      }

      *(v0 + 9264) = v19;
      v42 = *(v0 + 8664);
      *(v0 + 5920) = &type metadata for MLS.GroupCreationError;
      *(v0 + 5928) = v42;
      *(v0 + 5896) = 5;
      *(v0 + 5904) = 0u;
      v43 = swift_task_alloc();
      *(v0 + 9272) = v43;
      *v43 = v0;
      v43[1] = closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:);
      v44 = *(v0 + 8400);
      v45 = *(v0 + 8392);
      v46 = *(v0 + 8080);

      return MLS.SwiftMLSClientCoordinator.retrieveKeyPackages(otherMembers:eventIdentifier:functionName:keyPackageError:)(v0 + 7912, v46, v45, v44, 0x7247657461657263, 0xEB0000000070756FLL, v0 + 5896);
    }

    v20 = *(v0 + 8104);
    v21 = *(v0 + 8096);

    outlined destroy of NSObject?(v0 + 7560, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
    (*(v20 + 8))(v4, v21);
  }

  else
  {
    outlined destroy of NSObject?(v0 + 7560, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
  }

  v22 = *(v0 + 8048);
  outlined init with copy of MLS.OutgoingEventState?(v22, v0 + 4264, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);
  v23 = v1;
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.error.getter();
  outlined destroy of NSObject?(v22, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

  if (os_log_type_enabled(v24, v25))
  {
    v26 = *(v0 + 8400);
    v27 = *(v0 + 8392);
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v50[0] = v30;
    *v28 = 136315394;
    *(v28 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v26, v50);
    *(v28 + 12) = 2112;
    v31 = v1;
    v32 = _swift_stdlib_bridgeErrorToNSError();
    *(v28 + 14) = v32;
    *v29 = v32;
    _os_log_impl(&dword_264F1F000, v24, v25, "SwiftMLSClientCoordinator createGroup failed to resurrect to group { identifier: %s, error: %@ }", v28, 0x16u);
    outlined destroy of NSObject?(v29, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x266755550](v29, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v30);
    MEMORY[0x266755550](v30, -1, -1);
    MEMORY[0x266755550](v28, -1, -1);
  }

  swift_getErrorValue();
  v33 = Error.readableDescription.getter(*(v0 + 7400), *(v0 + 7408));
  v35 = v34;
  lazy protocol witness table accessor for type MLS.GroupCreationError and conformance MLS.GroupCreationError();
  swift_allocError();
  *v36 = 15;
  *(v36 + 8) = v33;
  *(v36 + 16) = v35;
  swift_willThrow();

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 5696));

  v37 = *(v0 + 8);

  return v37();
}

{
  v20 = v0;
  (*(v0 + 9264))(*(v0 + 8168), *(v0 + 8096));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 5896));

  v1 = *(v0 + 9280);
  v2 = *(v0 + 8048);
  outlined init with copy of MLS.OutgoingEventState?(v2, v0 + 4264, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();
  outlined destroy of NSObject?(v2, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 8400);
    v7 = *(v0 + 8392);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v19 = v10;
    *v8 = 136315394;
    *(v8 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v6, &v19);
    *(v8 + 12) = 2112;
    v11 = v1;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v12;
    *v9 = v12;
    _os_log_impl(&dword_264F1F000, v4, v5, "SwiftMLSClientCoordinator createGroup failed to resurrect to group { identifier: %s, error: %@ }", v8, 0x16u);
    outlined destroy of NSObject?(v9, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x266755550](v9, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x266755550](v10, -1, -1);
    MEMORY[0x266755550](v8, -1, -1);
  }

  swift_getErrorValue();
  v13 = Error.readableDescription.getter(*(v0 + 7400), *(v0 + 7408));
  v15 = v14;
  lazy protocol witness table accessor for type MLS.GroupCreationError and conformance MLS.GroupCreationError();
  swift_allocError();
  *v16 = 15;
  *(v16 + 8) = v13;
  *(v16 + 16) = v15;
  swift_willThrow();

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 5696));

  v17 = *(v0 + 8);

  return v17();
}

{
  v23 = v0;
  v1 = *(v0 + 9264);
  v2 = *(v0 + 8168);
  v3 = *(v0 + 8096);
  (*(*(v0 + 8312) + 8))(*(v0 + 8320), *(v0 + 8304));
  v1(v2, v3);

  v4 = *(v0 + 9296);
  v5 = *(v0 + 8048);
  outlined init with copy of MLS.OutgoingEventState?(v5, v0 + 4264, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);
  v6 = v4;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();
  outlined destroy of NSObject?(v5, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

  if (os_log_type_enabled(v7, v8))
  {
    v9 = *(v0 + 8400);
    v10 = *(v0 + 8392);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v22 = v13;
    *v11 = 136315394;
    *(v11 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v9, &v22);
    *(v11 + 12) = 2112;
    v14 = v4;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 14) = v15;
    *v12 = v15;
    _os_log_impl(&dword_264F1F000, v7, v8, "SwiftMLSClientCoordinator createGroup failed to resurrect to group { identifier: %s, error: %@ }", v11, 0x16u);
    outlined destroy of NSObject?(v12, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x266755550](v12, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    MEMORY[0x266755550](v13, -1, -1);
    MEMORY[0x266755550](v11, -1, -1);
  }

  swift_getErrorValue();
  v16 = Error.readableDescription.getter(*(v0 + 7400), *(v0 + 7408));
  v18 = v17;
  lazy protocol witness table accessor for type MLS.GroupCreationError and conformance MLS.GroupCreationError();
  swift_allocError();
  *v19 = 15;
  *(v19 + 8) = v16;
  *(v19 + 16) = v18;
  swift_willThrow();

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 5696));

  v20 = *(v0 + 8);

  return v20();
}

{
  v1 = (*(v0 + 8040) + *(v0 + 8736));
  v2 = *(v0 + 7752);
  *(v0 + 9328) = v2;
  outlined init with copy of ServerBag.MLS(v0 + 5696, v0 + 5416);
  v3 = *(v0 + 5440);
  *(v0 + 9336) = v3;
  *(v0 + 9352) = __swift_project_boxed_opaque_existential_1((v0 + 5416), v3);
  *(v0 + 7920) = v2;
  v4 = v1[1];
  *(v0 + 7576) = *v1;
  *(v0 + 7584) = v4;

  v5 = swift_task_alloc();
  *(v0 + 9360) = v5;
  *v5 = v0;
  v5[1] = closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:);

  return MLS.KeyPackageProvider.keyPackage(isWithinPersisterTransaction:)(v0 + 7592, 1);
}

{
  v2 = *v1;
  *(v2 + 9368) = v0;

  if (v0)
  {
    v3 = *(v2 + 8368);

    outlined destroy of NSObject?(v2 + 7560, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);

    return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:), v3, 0);
  }

  else
  {
    v4 = *(v2 + 7600);
    *(v2 + 7608) = *(v2 + 7592);
    *(v2 + 7616) = v4;
    v5 = swift_task_alloc();
    *(v2 + 9376) = v5;
    *v5 = v2;
    v5[1] = closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:);
    v6 = *(v2 + 9344);
    v7 = *(v2 + 9336);
    v8 = *(v2 + 8776);

    return MLS.SwiftMLSGroupProtocol.expiredCredentialReplacements<A>(keyPackageResult:selfURI:selfKeyPackage:)((v2 + 7920), (v2 + 7576), (v2 + 7608), v7, &type metadata for MLS.AllMember, v6, v8);
  }
}

{
  v29 = v0;
  v1 = *(v0 + 9384);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 5416));
  MLS.Group.Group.ReplaceExpiredCredentialInput.init(replacements:)();
  if (v1)
  {
    v2 = v1;
    v3 = *(v0 + 9304);
    v4 = *(v0 + 8144);
    v5 = *(v0 + 8096);

    outlined destroy of NSObject?(v0 + 7560, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
    v3(v4, v5);

    v6 = *(v0 + 8048);
    outlined init with copy of MLS.OutgoingEventState?(v6, v0 + 4264, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);
    v7 = v2;
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    outlined destroy of NSObject?(v6, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

    if (os_log_type_enabled(v8, v9))
    {
      v10 = *(v0 + 8400);
      v11 = *(v0 + 8392);
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v28 = v14;
      *v12 = 136315394;
      *(v12 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v10, &v28);
      *(v12 + 12) = 2112;
      v15 = v2;
      v16 = _swift_stdlib_bridgeErrorToNSError();
      *(v12 + 14) = v16;
      *v13 = v16;
      _os_log_impl(&dword_264F1F000, v8, v9, "SwiftMLSClientCoordinator createGroup failed to resurrect to group { identifier: %s, error: %@ }", v12, 0x16u);
      outlined destroy of NSObject?(v13, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x266755550](v13, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v14);
      MEMORY[0x266755550](v14, -1, -1);
      MEMORY[0x266755550](v12, -1, -1);
    }

    swift_getErrorValue();
    v17 = Error.readableDescription.getter(*(v0 + 7400), *(v0 + 7408));
    v19 = v18;
    lazy protocol witness table accessor for type MLS.GroupCreationError and conformance MLS.GroupCreationError();
    swift_allocError();
    *v20 = 15;
    *(v20 + 8) = v17;
    *(v20 + 16) = v19;
    swift_willThrow();

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 5696));

    v21 = *(v0 + 8);

    return v21();
  }

  else
  {
    (*(*(v0 + 8272) + 16))(*(v0 + 8288), *(v0 + 8280), *(v0 + 8264));
    MLS.Group.Group.ResurrectionInput.init(replaceExpired:)();
    v23 = *(v0 + 5720);
    v24 = *(v0 + 5728);
    __swift_project_boxed_opaque_existential_1((v0 + 5696), v23);
    v27 = (*(v24 + 176) + **(v24 + 176));
    v25 = swift_task_alloc();
    *(v0 + 9400) = v25;
    *v25 = v0;
    v25[1] = closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:);
    v26 = *(v0 + 8248);

    return v27(v0 + 5576, v26, v23, v24);
  }
}

{
  v2 = *v1;
  *(*v1 + 9408) = v0;

  if (v0)
  {
    v3 = *(v2 + 8368);
    outlined destroy of NSObject?(v2 + 7560, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);

    v4 = closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:);
    v5 = v3;
  }

  else
  {
    v5 = *(v2 + 8368);
    v4 = closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:);
  }

  return MEMORY[0x2822009F8](v4, v5, 0);
}

{
  v135 = v0;
  v117 = *(v0 + 8280);
  v119 = *(v0 + 9304);
  v1 = *(v0 + 8272);
  v2 = *(v0 + 8248);
  v3 = *(v0 + 8240);
  v4 = *(v0 + 8232);
  v114 = *(v0 + 8264);
  v115 = *(v0 + 8144);
  v5 = *(v0 + 8096);
  v6 = *(v0 + 5600);
  v7 = *(v0 + 5608);
  __swift_project_boxed_opaque_existential_1((v0 + 5576), v6);
  (*(v7 + 8))(v6, v7);
  (*(v3 + 8))(v2, v4);
  (*(v1 + 8))(v117, v114);
  v119(v115, v5);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 5576));

  v120 = *(v0 + 9408);
  v8 = *(v0 + 8048);
  swift_beginAccess();
  v9._countAndFlagsBits = 0x534C4D7466697753;
  v9._object = 0xEE0074696D6D6F43;
  MetricCollector.end(label:)(v9);
  swift_endAccess();
  outlined init with copy of ServerBag.MLS(v0 + 6096, v0 + 5616);
  outlined init with copy of MLS.OutgoingEventState?(v8, v0 + 3400, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  outlined destroy of NSObject?(v8, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);
  if (os_log_type_enabled(v10, v11))
  {
    v12 = *(v0 + 8400);
    v13 = *(v0 + 8392);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *&v123 = v15;
    *v14 = 136315394;
    *(v14 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v12, &v123);
    *(v14 + 12) = 2080;
    v16 = *(v0 + 5640);
    __swift_project_boxed_opaque_existential_1((v0 + 5616), v16);
    v17 = *(v16 - 8);
    swift_task_alloc();
    (*(v17 + 16))();
    v18 = String.init<A>(describing:)();
    v20 = v19;

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 5616));
    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v20, &v123);

    *(v14 + 14) = v21;
    _os_log_impl(&dword_264F1F000, v10, v11, "SwiftMLSClientCoordinator createGroup resurrected to group { identifier: %s, commitOutput: %s }", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v15, -1, -1);
    MEMORY[0x266755550](v14, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 5616));
  }

  v22 = *(v0 + 8072);
  v23 = *(v0 + 8064);
  v24 = *(v0 + 8048);
  v25 = *(**(v0 + 8040) + 352);
  outlined init with copy of MLS.OutgoingEventState?(v24, v0 + 3328, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

  outlined init with copy of MLS.OutgoingEventState?(v24, v0 + 3184, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

  v25(v122, &v123, v23, v22, v0 + 6096);
  if (v120)
  {
    v26 = *(v0 + 8048);
    v27 = *(v0 + 8040);
    outlined destroy of NSObject?(v0 + 7560, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);

    swift_getErrorValue();
    v28 = Error.readableDescription.getter(*(v0 + 7280), *(v0 + 7288));
    closure #4 in closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:)(v28, v29, v27, v26, "SwiftMLSClientCoordinator createGroup resurrect commit yielded unexpected output { identifier: %s, error: %s }");

    swift_getErrorValue();
    v30 = Error.readableDescription.getter(*(v0 + 7256), *(v0 + 7264));
    v32 = v31;
    *(v0 + 7224) = 8;
    *(v0 + 7232) = v30;
    *(v0 + 7240) = v31;
    lazy protocol witness table accessor for type MLS.GroupCreationError and conformance MLS.GroupCreationError();
    swift_willThrowTypedImpl();

    outlined destroy of NSObject?(v26, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

    outlined destroy of NSObject?(v26, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

    swift_allocError();
    *v33 = 8;
    *(v33 + 8) = v30;
    *(v33 + 16) = v32;
    v39 = (v0 + 6096);
LABEL_7:
    __swift_destroy_boxed_opaque_existential_1Tm(v39);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 5696));

    v40 = *(v0 + 8);

    return v40();
  }

  v34 = *(v0 + 8048);
  v35 = *(v0 + 8040);

  outlined destroy of NSObject?(v34, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

  outlined destroy of NSObject?(v34, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

  v36 = v122[2];
  v116 = v122[1];
  v118 = v122[3];
  v121 = v123;
  v111 = v122[0];
  v112 = *(&v123 + 1);
  v113 = v124;
  v37 = *(*v35 + 360);
  outlined init with copy of MLS.OutgoingEventState?(v34, v0 + 3112, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

  outlined init with copy of MLS.OutgoingEventState?(v34, v0 + 3040, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

  v37(&v123, v0 + 6096);
  v38 = *(v0 + 8048);
  v42 = *(&v123 + 1);
  v107 = v124;
  v108 = v123;
  v110 = *(&v124 + 1);
  v43 = v125;
  v44 = *(v0 + 194);

  outlined destroy of NSObject?(v38, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

  outlined destroy of NSObject?(v38, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

  v109 = v42;
  if (v44)
  {
    if (v110 >> 60 == 15)
    {
      v45 = *(v0 + 8048);
      v46 = v36;
      outlined copy of Data._Representation(v36, v118);
      outlined destroy of NSObject?(v0 + 7560, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);

      outlined init with copy of MLS.OutgoingEventState?(v45, v0 + 5056, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

      v47 = Logger.logObject.getter();
      v48 = static os_log_type_t.error.getter();
      outlined destroy of NSObject?(v45, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

      if (os_log_type_enabled(v47, v48))
      {
        v49 = *(v0 + 8400);
        v50 = *(v0 + 8392);
        v51 = *(v0 + 8072);
        v52 = *(v0 + 8064);
        v53 = swift_slowAlloc();
        v54 = swift_slowAlloc();
        v122[0] = v54;
        *v53 = 136315394;
        *(v53 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v50, v49, v122);
        *(v53 + 12) = 2080;
        *(v53 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v52, v51, v122);
        _os_log_impl(&dword_264F1F000, v47, v48, "SwiftMLSClientCoordinator createGroup resurrect commit yielded unexpected output { identifier: %s, group: %s }", v53, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x266755550](v54, -1, -1);
        MEMORY[0x266755550](v53, -1, -1);
      }

      lazy protocol witness table accessor for type MLS.GroupCreationError and conformance MLS.GroupCreationError();
      swift_allocError();
      *v55 = 19;
      *(v55 + 8) = 0;
      *(v55 + 16) = 0;
      swift_willThrow();
      outlined consume of Data._Representation(v46, v118);

      outlined consume of Data._Representation(v113, *(&v113 + 1));
      outlined consume of Data._Representation(v108, v109);
      outlined consume of Data._Representation(v43, *(&v43 + 1));

      outlined consume of Data._Representation(v46, v118);
      v39 = (v0 + 6096);
      goto LABEL_7;
    }

    v56 = (v0 + 16);
    v69 = *(v0 + 8400);
    v106 = *(v0 + 8392);
    v70 = *(v0 + 8224);
    v71 = *(v0 + 8216);
    v72 = *(v0 + 8208);
    v73 = *(v0 + 8056);
    outlined copy of Data._Representation(v36, v118);

    UUID.init()();
    v74 = UUID.uuidString.getter();
    v102 = v75;
    v104 = v74;
    (*(v71 + 8))(v70, v72);
    swift_beginAccess();
    v76 = *(v73 + 16);
    v67 = v118;
    outlined init with copy of MLS.OutgoingEventState?(v0 + 7560, v0 + 7656, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);

    v78 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC15SecureMessaging3MLSO9AllMemberO_SayAHGTt0g5Tf4g_n(v77);

    *(v0 + 48) = *(v0 + 7560);
    *(v0 + 16) = v106;
    *(v0 + 24) = v69;
    *(v0 + 32) = v104;
    *(v0 + 40) = v102;
    *(v0 + 64) = v76;
    *(v0 + 72) = v111;
    *(v0 + 80) = v116;
    *(v0 + 88) = v36;
    *(v0 + 96) = v118;
    *(v0 + 104) = v121;
    *(v0 + 112) = v112;
    *(v0 + 120) = v113;
    *(v0 + 136) = v78;
    *(v0 + 144) = v108;
    *(v0 + 152) = v42;
    *(v0 + 160) = v107;
    *(v0 + 168) = v110;
    *(v0 + 176) = v43;
    _s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGWOi8_(v0 + 16);
  }

  else
  {
    v56 = (v0 + 1672);
    v57 = *(v0 + 8400);
    v105 = *(v0 + 8392);
    v58 = *(v0 + 8224);
    v59 = *(v0 + 8216);
    v60 = *(v0 + 8208);
    v61 = *(v0 + 8080);
    v62 = v36;
    v63 = *(v0 + 8056);
    outlined copy of Data._Representation(v62, v118);

    UUID.init()();
    v64 = UUID.uuidString.getter();
    v101 = v65;
    v103 = v64;
    (*(v59 + 8))(v58, v60);
    swift_beginAccess();
    v66 = *(v63 + 16);
    v36 = v62;
    v67 = v118;
    outlined init with copy of MLS.OutgoingEventState?(v0 + 7560, v0 + 7736, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);

    v68 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC15SecureMessaging3MLSO9AllMemberO_SayAHGTt0g5Tf4g_n(v61);

    *(v0 + 1704) = *(v0 + 7560);
    *(v0 + 1672) = v105;
    *(v0 + 1680) = v57;
    *(v0 + 1688) = v103;
    *(v0 + 1696) = v101;
    *(v0 + 1720) = v66;
    *(v0 + 1728) = v111;
    *(v0 + 1736) = v116;
    *(v0 + 1744) = v36;
    *(v0 + 1752) = v118;
    *(v0 + 1760) = v121;
    *(v0 + 1768) = v112;
    *(v0 + 1776) = v113;
    *(v0 + 1792) = v68;
    *(v0 + 1800) = v108;
    *(v0 + 1808) = v42;
    *(v0 + 1816) = v107;
    *(v0 + 1824) = v110;
    *(v0 + 1832) = v43;
    _s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGWOi7_(v0 + 1672);
  }

  v79 = v56[9];
  v131 = v56[8];
  v132 = v79;
  v133 = v56[10];
  v134 = *(v56 + 176);
  v80 = v56[5];
  v127 = v56[4];
  v128 = v80;
  v81 = v56[7];
  v129 = v56[6];
  v130 = v81;
  v82 = v56[1];
  v123 = *v56;
  v124 = v82;
  v83 = v56[3];
  v125 = v56[2];
  v126 = v83;
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 6096));
  v84 = v132;
  *(v0 + 1616) = v131;
  *(v0 + 1632) = v84;
  *(v0 + 1648) = v133;
  *(v0 + 1664) = v134;
  v85 = v128;
  *(v0 + 1552) = v127;
  *(v0 + 1568) = v85;
  v86 = v130;
  *(v0 + 1584) = v129;
  *(v0 + 1600) = v86;
  v87 = v124;
  *(v0 + 1488) = v123;
  *(v0 + 1504) = v87;
  v88 = v126;
  *(v0 + 1520) = v125;
  *(v0 + 1536) = v88;
  *(v0 + 8856) = v67;
  *(v0 + 8848) = v36;
  v89 = *(v0 + 8680);
  v90 = *(v0 + 8080);
  v91 = *(v0 + 1632);
  *(v0 + 1064) = *(v0 + 1616);
  *(v0 + 1080) = v91;
  *(v0 + 1096) = *(v0 + 1648);
  *(v0 + 1112) = *(v0 + 1664);
  v92 = *(v0 + 1568);
  *(v0 + 1000) = *(v0 + 1552);
  *(v0 + 1016) = v92;
  v93 = *(v0 + 1600);
  *(v0 + 1032) = *(v0 + 1584);
  *(v0 + 1048) = v93;
  v94 = *(v0 + 1504);
  *(v0 + 936) = *(v0 + 1488);
  *(v0 + 952) = v94;
  v95 = *(v0 + 1536);
  *(v0 + 968) = *(v0 + 1520);
  *(v0 + 984) = v95;
  v96 = specialized MLS.OutgoingEventType.storageIdentifier.getter();
  v98 = v97;
  v99 = specialized MLS.OutgoingEventType.identifier.getter();
  *(v0 + 4248) = *(v0 + 7560);
  *(v0 + 4192) = v96;
  *(v0 + 4200) = v98;
  *(v0 + 4208) = v89;
  *(v0 + 4216) = v90;
  *(v0 + 4224) = 0;
  *(v0 + 4232) = v99;
  *(v0 + 4240) = v100;
  swift_retain_n();
  swift_bridgeObjectRetain_n();

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:), 0, 0);
}

{
  v54 = v0;
  v1 = *(v0 + 8296);
  v2 = *(v0 + 8272);
  v3 = *(v0 + 8264);
  (*(*(v0 + 8240) + 8))(*(v0 + 8256), *(v0 + 8232));
  (*(v2 + 8))(v1, v3);
  v4 = *(v0 + 8824);
  *(v0 + 7760) = v4;
  v5 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if (swift_dynamicCast())
  {
    (*(*(v0 + 8104) + 32))(*(v0 + 8144), *(v0 + 8152), *(v0 + 8096));
    v6 = MLS.SwiftMLSClientCoordinator.healingMethod(error:)();
    v7 = *(v0 + 8144);
    if (v6 == 5)
    {
      v8 = *(v0 + 8136);
      v9 = *(v0 + 8104);
      v10 = *(v0 + 8096);
      v11 = *(v0 + 8048);

      v52 = *(v9 + 16);
      v52(v8, v7, v10);
      outlined init with copy of MLS.OutgoingEventState?(v11, v0 + 4552, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);
      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.error.getter();
      outlined destroy of NSObject?(v11, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);
      if (os_log_type_enabled(v12, v13))
      {
        v50 = *(v0 + 8400);
        v14 = *(v0 + 8392);
        v15 = *(v0 + 8136);
        v16 = *(v0 + 8104);
        v17 = *(v0 + 8096);
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v51 = swift_slowAlloc();
        v53[0] = v51;
        *v18 = 136315394;
        *(v18 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v50, v53);
        *(v18 + 12) = 2112;
        lazy protocol witness table accessor for type MLS.AddMembersOperation and conformance MLS.AddMembersOperation(&lazy protocol witness table cache variable for type MLS.MLSError and conformance MLS.MLSError, MEMORY[0x277D6AEB0], MEMORY[0x277D6AEB8]);
        swift_allocError();
        v52(v20, v15, v17);
        v21 = _swift_stdlib_bridgeErrorToNSError();
        v22 = *(v16 + 8);
        v22(v15, v17);
        *(v18 + 14) = v21;
        *v19 = v21;
        _os_log_impl(&dword_264F1F000, v12, v13, "SwiftMLSClientCoordinator createGroup resurrection failed. Refetching KeyPackage { identifier: %s, error: %@ }", v18, 0x16u);
        outlined destroy of NSObject?(v19, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        MEMORY[0x266755550](v19, -1, -1);
        __swift_destroy_boxed_opaque_existential_1Tm(v51);
        MEMORY[0x266755550](v51, -1, -1);
        MEMORY[0x266755550](v18, -1, -1);
      }

      else
      {
        v42 = *(v0 + 8136);
        v43 = *(v0 + 8104);
        v44 = *(v0 + 8096);

        v22 = *(v43 + 8);
        v22(v42, v44);
      }

      *(v0 + 9304) = v22;
      v45 = *(v0 + 8664);
      *(v0 + 5360) = &type metadata for MLS.GroupCreationError;
      *(v0 + 5368) = v45;
      *(v0 + 5336) = 5;
      *(v0 + 5344) = 0u;
      v46 = swift_task_alloc();
      *(v0 + 9312) = v46;
      *v46 = v0;
      v46[1] = closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:);
      v47 = *(v0 + 8400);
      v48 = *(v0 + 8392);
      v49 = *(v0 + 8080);

      return MLS.SwiftMLSClientCoordinator.retrieveKeyPackages(otherMembers:eventIdentifier:functionName:keyPackageError:)(v0 + 7752, v49, v48, v47, 0x7247657461657263, 0xEB0000000070756FLL, v0 + 5336);
    }

    v23 = *(v0 + 8104);
    v24 = *(v0 + 8096);

    outlined destroy of NSObject?(v0 + 7560, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
    (*(v23 + 8))(v7, v24);
  }

  else
  {
    outlined destroy of NSObject?(v0 + 7560, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
  }

  v25 = *(v0 + 8048);
  outlined init with copy of MLS.OutgoingEventState?(v25, v0 + 4264, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);
  v26 = v4;
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.error.getter();
  outlined destroy of NSObject?(v25, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

  if (os_log_type_enabled(v27, v28))
  {
    v29 = *(v0 + 8400);
    v30 = *(v0 + 8392);
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v53[0] = v33;
    *v31 = 136315394;
    *(v31 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v29, v53);
    *(v31 + 12) = 2112;
    v34 = v4;
    v35 = _swift_stdlib_bridgeErrorToNSError();
    *(v31 + 14) = v35;
    *v32 = v35;
    _os_log_impl(&dword_264F1F000, v27, v28, "SwiftMLSClientCoordinator createGroup failed to resurrect to group { identifier: %s, error: %@ }", v31, 0x16u);
    outlined destroy of NSObject?(v32, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x266755550](v32, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v33);
    MEMORY[0x266755550](v33, -1, -1);
    MEMORY[0x266755550](v31, -1, -1);
  }

  swift_getErrorValue();
  v36 = Error.readableDescription.getter(*(v0 + 7400), *(v0 + 7408));
  v38 = v37;
  lazy protocol witness table accessor for type MLS.GroupCreationError and conformance MLS.GroupCreationError();
  swift_allocError();
  *v39 = 15;
  *(v39 + 8) = v36;
  *(v39 + 16) = v38;
  swift_willThrow();

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 5696));

  v40 = *(v0 + 8);

  return v40();
}

{
  v20 = v0;
  (*(v0 + 9304))(*(v0 + 8144), *(v0 + 8096));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 5336));

  v1 = *(v0 + 9320);
  v2 = *(v0 + 8048);
  outlined init with copy of MLS.OutgoingEventState?(v2, v0 + 4264, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();
  outlined destroy of NSObject?(v2, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 8400);
    v7 = *(v0 + 8392);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v19 = v10;
    *v8 = 136315394;
    *(v8 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v6, &v19);
    *(v8 + 12) = 2112;
    v11 = v1;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v12;
    *v9 = v12;
    _os_log_impl(&dword_264F1F000, v4, v5, "SwiftMLSClientCoordinator createGroup failed to resurrect to group { identifier: %s, error: %@ }", v8, 0x16u);
    outlined destroy of NSObject?(v9, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x266755550](v9, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x266755550](v10, -1, -1);
    MEMORY[0x266755550](v8, -1, -1);
  }

  swift_getErrorValue();
  v13 = Error.readableDescription.getter(*(v0 + 7400), *(v0 + 7408));
  v15 = v14;
  lazy protocol witness table accessor for type MLS.GroupCreationError and conformance MLS.GroupCreationError();
  swift_allocError();
  *v16 = 15;
  *(v16 + 8) = v13;
  *(v16 + 16) = v15;
  swift_willThrow();

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 5696));

  v17 = *(v0 + 8);

  return v17();
}

{
  v20 = v0;
  (*(v0 + 9304))(*(v0 + 8144), *(v0 + 8096));

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 5416));

  v1 = *(v0 + 9368);
  v2 = *(v0 + 8048);
  outlined init with copy of MLS.OutgoingEventState?(v2, v0 + 4264, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();
  outlined destroy of NSObject?(v2, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 8400);
    v7 = *(v0 + 8392);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v19 = v10;
    *v8 = 136315394;
    *(v8 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v6, &v19);
    *(v8 + 12) = 2112;
    v11 = v1;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v12;
    *v9 = v12;
    _os_log_impl(&dword_264F1F000, v4, v5, "SwiftMLSClientCoordinator createGroup failed to resurrect to group { identifier: %s, error: %@ }", v8, 0x16u);
    outlined destroy of NSObject?(v9, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x266755550](v9, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x266755550](v10, -1, -1);
    MEMORY[0x266755550](v8, -1, -1);
  }

  swift_getErrorValue();
  v13 = Error.readableDescription.getter(*(v0 + 7400), *(v0 + 7408));
  v15 = v14;
  lazy protocol witness table accessor for type MLS.GroupCreationError and conformance MLS.GroupCreationError();
  swift_allocError();
  *v16 = 15;
  *(v16 + 8) = v13;
  *(v16 + 16) = v15;
  swift_willThrow();

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 5696));

  v17 = *(v0 + 8);

  return v17();
}

{
  v20 = v0;
  (*(v0 + 9304))(*(v0 + 8144), *(v0 + 8096));

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 5416));

  v1 = *(v0 + 9384);
  v2 = *(v0 + 8048);
  outlined init with copy of MLS.OutgoingEventState?(v2, v0 + 4264, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();
  outlined destroy of NSObject?(v2, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 8400);
    v7 = *(v0 + 8392);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v19 = v10;
    *v8 = 136315394;
    *(v8 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v6, &v19);
    *(v8 + 12) = 2112;
    v11 = v1;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v12;
    *v9 = v12;
    _os_log_impl(&dword_264F1F000, v4, v5, "SwiftMLSClientCoordinator createGroup failed to resurrect to group { identifier: %s, error: %@ }", v8, 0x16u);
    outlined destroy of NSObject?(v9, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x266755550](v9, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x266755550](v10, -1, -1);
    MEMORY[0x266755550](v8, -1, -1);
  }

  swift_getErrorValue();
  v13 = Error.readableDescription.getter(*(v0 + 7400), *(v0 + 7408));
  v15 = v14;
  lazy protocol witness table accessor for type MLS.GroupCreationError and conformance MLS.GroupCreationError();
  swift_allocError();
  *v16 = 15;
  *(v16 + 8) = v13;
  *(v16 + 16) = v15;
  swift_willThrow();

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 5696));

  v17 = *(v0 + 8);

  return v17();
}

{
  v26 = v0;
  v1 = *(v0 + 9304);
  v2 = *(v0 + 8280);
  v3 = *(v0 + 8272);
  v4 = *(v0 + 8264);
  v5 = *(v0 + 8144);
  v6 = *(v0 + 8096);
  (*(*(v0 + 8240) + 8))(*(v0 + 8248), *(v0 + 8232));
  (*(v3 + 8))(v2, v4);
  v1(v5, v6);

  v7 = *(v0 + 9408);
  v8 = *(v0 + 8048);
  outlined init with copy of MLS.OutgoingEventState?(v8, v0 + 4264, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);
  v9 = v7;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();
  outlined destroy of NSObject?(v8, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

  if (os_log_type_enabled(v10, v11))
  {
    v12 = *(v0 + 8400);
    v13 = *(v0 + 8392);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v25 = v16;
    *v14 = 136315394;
    *(v14 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v12, &v25);
    *(v14 + 12) = 2112;
    v17 = v7;
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 14) = v18;
    *v15 = v18;
    _os_log_impl(&dword_264F1F000, v10, v11, "SwiftMLSClientCoordinator createGroup failed to resurrect to group { identifier: %s, error: %@ }", v14, 0x16u);
    outlined destroy of NSObject?(v15, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x266755550](v15, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v16);
    MEMORY[0x266755550](v16, -1, -1);
    MEMORY[0x266755550](v14, -1, -1);
  }

  swift_getErrorValue();
  v19 = Error.readableDescription.getter(*(v0 + 7400), *(v0 + 7408));
  v21 = v20;
  lazy protocol witness table accessor for type MLS.GroupCreationError and conformance MLS.GroupCreationError();
  swift_allocError();
  *v22 = 15;
  *(v22 + 8) = v19;
  *(v22 + 16) = v21;
  swift_willThrow();

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 5696));

  v23 = *(v0 + 8);

  return v23();
}

{
  v1 = *(v0 + 8048);
  outlined init with copy of MLS.OutgoingEventState?(v1, v0 + 4624, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

  outlined init with copy of MLS.OutgoingEventState?(v1, v0 + 4696, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:), 0, 0);
}

{
  v1 = v0[715];
  v2 = v0[716];
  __swift_project_boxed_opaque_existential_1(v0 + 712, v1);
  v6 = (*(v2 + 184) + **(v2 + 184));
  v3 = swift_task_alloc();
  v0[1181] = v3;
  *v3 = v0;
  v3[1] = closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:);
  v4 = v0[1179];

  return v6(v0 + 757, v4, v1, v2);
}

{
  v2 = *v1;
  *(*v1 + 9456) = v0;

  if (v0)
  {

    outlined destroy of NSObject?(v2 + 7560, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
    v3 = closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:);
  }

  else
  {
    v4 = *(v2 + 8048);

    outlined destroy of NSObject?(v4, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

    v3 = closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:);
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  v1 = *(v0 + 8368);
  v2 = *(v0 + 8048);

  outlined destroy of NSObject?(v2, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:), v1, 0);
}

{
  v102 = v0;
  v1 = *(v0 + 9416);
  v2 = *(v0 + 8128);
  v3 = *(v0 + 8096);
  outlined init with take of MLS.KeyUpdatePolicy((v0 + 6056), v0 + 5536);
  swift_beginAccess();
  v4._countAndFlagsBits = 0x534C4D7466697753;
  v4._object = 0xEE0074696D6D6F43;
  MetricCollector.end(label:)(v4);
  swift_endAccess();
  v1(v2, v3);

  v93 = *(v0 + 9456);
  v5 = *(v0 + 8048);
  outlined init with copy of ServerBag.MLS(v0 + 5536, v0 + 5176);
  outlined init with copy of MLS.OutgoingEventState?(v5, v0 + 4768, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  outlined destroy of NSObject?(v5, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);
  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v0 + 8400);
    v9 = *(v0 + 8392);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v96 = v11;
    *v10 = 136315394;
    *(v10 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v8, &v96);
    *(v10 + 12) = 2080;
    v12 = *(v0 + 5200);
    __swift_project_boxed_opaque_existential_1((v0 + 5176), v12);
    v13 = *(v12 - 8);
    swift_task_alloc();
    (*(v13 + 16))();
    v14 = String.init<A>(describing:)();
    v16 = v15;

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 5176));
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v16, &v96);

    *(v10 + 14) = v17;
    _os_log_impl(&dword_264F1F000, v6, v7, "SwiftMLSClientCoordinator createGroup added KeyPackages to group { identifier: %s, commitOutput: %s }", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v11, -1, -1);
    MEMORY[0x266755550](v10, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 5176));
  }

  v18 = *(v0 + 8072);
  v19 = *(v0 + 8064);
  v20 = *(v0 + 8048);
  v21 = *(**(v0 + 8040) + 352);
  outlined init with copy of MLS.OutgoingEventState?(v20, v0 + 4480, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

  outlined init with copy of MLS.OutgoingEventState?(v20, v0 + 4408, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

  v21(v95, &v96, v19, v18, v0 + 5536);
  if (v93)
  {
    v22 = *(v0 + 8048);
    v23 = *(v0 + 8040);
    outlined destroy of NSObject?(v0 + 7560, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);

    swift_getErrorValue();
    v24 = Error.readableDescription.getter(*(v0 + 6656), *(v0 + 6664));
    closure #4 in closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:)(v24, v25, v23, v22, "SwiftMLSClientCoordinator createGroup add member commit yielded unexpected output { identifier: %s, error: %s }");

    swift_getErrorValue();
    v26 = Error.readableDescription.getter(*(v0 + 6608), *(v0 + 6616));
    v28 = v27;
    *(v0 + 6504) = 8;
    *(v0 + 6512) = v26;
    *(v0 + 6520) = v27;
    lazy protocol witness table accessor for type MLS.GroupCreationError and conformance MLS.GroupCreationError();
    swift_willThrowTypedImpl();

    outlined destroy of NSObject?(v22, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

    outlined destroy of NSObject?(v22, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

    swift_allocError();
    *v29 = 8;
    *(v29 + 8) = v26;
    *(v29 + 16) = v28;
LABEL_10:
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 5536));
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 5696));

    v49 = *(v0 + 8);

    return v49();
  }

  v30 = *(v0 + 8048);
  v31 = *(v0 + 8040);

  outlined destroy of NSObject?(v30, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

  outlined destroy of NSObject?(v30, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

  v90 = v95[1];
  v91 = v95[2];
  v92 = v95[3];
  v94 = v95[0];
  v32 = v96;
  v87 = v97;
  v88 = v98;
  v89 = v99;
  v33 = *(*v31 + 360);
  outlined init with copy of MLS.OutgoingEventState?(v30, v0 + 3832, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

  outlined init with copy of MLS.OutgoingEventState?(v30, v0 + 3688, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

  v33(&v96, v0 + 5536);
  v82 = v32;
  v83 = v96;
  v84 = v97;
  v35 = v98;
  v34 = v99;
  v37 = v100;
  v36 = v101;
  v38 = *(v0 + 8048);

  outlined destroy of NSObject?(v38, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

  outlined destroy of NSObject?(v38, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

  v85 = v37;
  v86 = v36;
  if (v34 >> 60 == 15)
  {
    v39 = *(v0 + 8048);
    outlined copy of Data._Representation(v91, v92);
    outlined destroy of NSObject?(v0 + 7560, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);

    outlined init with copy of MLS.OutgoingEventState?(v39, v0 + 2968, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.error.getter();
    outlined destroy of NSObject?(v39, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

    if (os_log_type_enabled(v40, v41))
    {
      v42 = *(v0 + 8400);
      v43 = *(v0 + 8392);
      v44 = *(v0 + 8072);
      v45 = *(v0 + 8064);
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v96 = v47;
      *v46 = 136315394;
      *(v46 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v43, v42, &v96);
      *(v46 + 12) = 2080;
      *(v46 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v45, v44, &v96);
      _os_log_impl(&dword_264F1F000, v40, v41, "SwiftMLSClientCoordinator createGroup add member commit yielded unexpected output { identifier: %s, group: %s }", v46, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266755550](v47, -1, -1);
      MEMORY[0x266755550](v46, -1, -1);
    }

    lazy protocol witness table accessor for type MLS.GroupCreationError and conformance MLS.GroupCreationError();
    swift_allocError();
    *v48 = 19;
    *(v48 + 8) = 0;
    *(v48 + 16) = 0;
    swift_willThrow();
    outlined consume of Data._Representation(v91, v92);

    outlined consume of Data._Representation(v88, v89);
    outlined consume of Data._Representation(v83, v84);
    outlined consume of Data._Representation(v85, v86);

    outlined consume of Data._Representation(v91, v92);
    goto LABEL_10;
  }

  v79 = *(v0 + 8400);
  v80 = *(v0 + 8392);
  v51 = *(v0 + 8224);
  v52 = *(v0 + 8216);
  v53 = *(v0 + 8208);
  v54 = *(v0 + 8080);
  v81 = v35;
  v55 = *(v0 + 8056);

  outlined copy of Data._Representation(v91, v92);
  UUID.init()();
  v56 = UUID.uuidString.getter();
  v77 = v57;
  v78 = v56;
  (*(v52 + 8))(v51, v53);
  swift_beginAccess();
  v58 = *(v55 + 16);
  outlined init with copy of MLS.OutgoingEventState?(v0 + 7560, v0 + 7544, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);

  v59 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC15SecureMessaging3MLSO9AllMemberO_SayAHGTt0g5Tf4g_n(v54);

  *(v0 + 600) = *(v0 + 7560);
  *(v0 + 568) = v80;
  *(v0 + 576) = v79;
  *(v0 + 584) = v78;
  *(v0 + 592) = v77;
  *(v0 + 616) = v58;
  *(v0 + 624) = v94;
  *(v0 + 632) = v90;
  *(v0 + 640) = v91;
  *(v0 + 648) = v92;
  *(v0 + 656) = v82;
  *(v0 + 664) = v87;
  *(v0 + 672) = v88;
  *(v0 + 680) = v89;
  *(v0 + 688) = v59;
  *(v0 + 696) = v83;
  *(v0 + 704) = v84;
  *(v0 + 712) = v81;
  *(v0 + 720) = v34;
  *(v0 + 728) = v37;
  *(v0 + 736) = v86;
  _s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGWOi_(v0 + 568);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 5536));
  v60 = *(v0 + 712);
  *(v0 + 1616) = *(v0 + 696);
  *(v0 + 1632) = v60;
  *(v0 + 1648) = *(v0 + 728);
  *(v0 + 1664) = *(v0 + 744);
  v61 = *(v0 + 648);
  *(v0 + 1552) = *(v0 + 632);
  *(v0 + 1568) = v61;
  v62 = *(v0 + 680);
  *(v0 + 1584) = *(v0 + 664);
  *(v0 + 1600) = v62;
  v63 = *(v0 + 584);
  *(v0 + 1488) = *(v0 + 568);
  *(v0 + 1504) = v63;
  v64 = *(v0 + 616);
  *(v0 + 1520) = *(v0 + 600);
  *(v0 + 1536) = v64;
  *(v0 + 8856) = v92;
  *(v0 + 8848) = v91;
  v65 = *(v0 + 8680);
  v66 = *(v0 + 8080);
  v67 = *(v0 + 1632);
  *(v0 + 1064) = *(v0 + 1616);
  *(v0 + 1080) = v67;
  *(v0 + 1096) = *(v0 + 1648);
  *(v0 + 1112) = *(v0 + 1664);
  v68 = *(v0 + 1568);
  *(v0 + 1000) = *(v0 + 1552);
  *(v0 + 1016) = v68;
  v69 = *(v0 + 1600);
  *(v0 + 1032) = *(v0 + 1584);
  *(v0 + 1048) = v69;
  v70 = *(v0 + 1504);
  *(v0 + 936) = *(v0 + 1488);
  *(v0 + 952) = v70;
  v71 = *(v0 + 1536);
  *(v0 + 968) = *(v0 + 1520);
  *(v0 + 984) = v71;
  v72 = specialized MLS.OutgoingEventType.storageIdentifier.getter();
  v74 = v73;
  v75 = specialized MLS.OutgoingEventType.identifier.getter();
  *(v0 + 4248) = *(v0 + 7560);
  *(v0 + 4192) = v72;
  *(v0 + 4200) = v74;
  *(v0 + 4208) = v65;
  *(v0 + 4216) = v66;
  *(v0 + 4224) = 0;
  *(v0 + 4232) = v75;
  *(v0 + 4240) = v76;
  swift_retain_n();
  swift_bridgeObjectRetain_n();

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:), 0, 0);
}

{
  v1 = *(v0 + 9456);
  v2 = *(v0 + 8368);
  v3 = *(v0 + 8048);
  v4 = *(v0 + 8040);
  swift_getErrorValue();
  v5 = Error.readableDescription.getter(*(v0 + 7184), *(v0 + 7192));
  closure #4 in closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:)(v5, v6, v4, v3, "SwiftMLSClientCoordinator createGroup failed to add KeyPackages to group { identifier: %s, error: %s }");

  swift_getErrorValue();
  v7 = Error.readableDescription.getter(*(v0 + 7040), *(v0 + 7048));
  *(v0 + 9464) = v7;
  *(v0 + 9472) = v8;
  *(v0 + 6984) = 7;
  *(v0 + 6992) = v7;
  *(v0 + 7000) = v8;
  *(v0 + 9480) = lazy protocol witness table accessor for type MLS.GroupCreationError and conformance MLS.GroupCreationError();
  swift_willThrowTypedImpl();

  outlined destroy of NSObject?(v3, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

  outlined destroy of NSObject?(v3, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:), v2, 0);
}

{
  v1 = *(v0 + 9472);
  v2 = *(v0 + 9464);
  v3 = *(v0 + 9416);
  v4 = *(v0 + 8128);
  v5 = *(v0 + 8096);
  swift_allocError();
  *v6 = 7;
  *(v6 + 8) = v2;
  *(v6 + 16) = v1;
  v3(v4, v5);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 5696));

  v7 = *(v0 + 8);

  return v7();
}

{
  v54 = v0;
  v1 = *(v0 + 8840);
  *(v0 + 8000) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if (swift_dynamicCast())
  {
    (*(*(v0 + 8104) + 32))(*(v0 + 8128), *(v0 + 8112), *(v0 + 8096));
    if (MLS.SwiftMLSClientCoordinator.healingMethod(error:)() == 5)
    {
      v3 = *(v0 + 8128);
      v4 = *(v0 + 8120);
      v5 = *(v0 + 8104);
      v6 = *(v0 + 8096);
      v7 = *(v0 + 8048);

      v52 = *(v5 + 16);
      v52(v4, v3, v6);
      outlined init with copy of MLS.OutgoingEventState?(v7, v0 + 4336, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);
      v8 = Logger.logObject.getter();
      v9 = static os_log_type_t.error.getter();
      outlined destroy of NSObject?(v7, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);
      if (os_log_type_enabled(v8, v9))
      {
        v50 = *(v0 + 8400);
        v10 = *(v0 + 8392);
        v11 = *(v0 + 8120);
        v12 = *(v0 + 8104);
        v13 = *(v0 + 8096);
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v51 = swift_slowAlloc();
        v53[0] = v51;
        *v14 = 136315394;
        *(v14 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v50, v53);
        *(v14 + 12) = 2112;
        lazy protocol witness table accessor for type MLS.AddMembersOperation and conformance MLS.AddMembersOperation(&lazy protocol witness table cache variable for type MLS.MLSError and conformance MLS.MLSError, MEMORY[0x277D6AEB0], MEMORY[0x277D6AEB8]);
        swift_allocError();
        v52(v16, v11, v13);
        v17 = _swift_stdlib_bridgeErrorToNSError();
        v18 = *(v12 + 8);
        v18(v11, v13);
        *(v14 + 14) = v17;
        *v15 = v17;
        _os_log_impl(&dword_264F1F000, v8, v9, "SwiftMLSClientCoordinator createGroup failed to add KeyPackages to group. Refetching KeyPackages { identifier: %s, error: %@ }", v14, 0x16u);
        outlined destroy of NSObject?(v15, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        MEMORY[0x266755550](v15, -1, -1);
        __swift_destroy_boxed_opaque_existential_1Tm(v51);
        MEMORY[0x266755550](v51, -1, -1);
        MEMORY[0x266755550](v14, -1, -1);
      }

      else
      {
        v42 = *(v0 + 8120);
        v43 = *(v0 + 8104);
        v44 = *(v0 + 8096);

        v18 = *(v43 + 8);
        v18(v42, v44);
      }

      *(v0 + 9416) = v18;
      v45 = *(v0 + 8664);
      *(v0 + 5280) = &type metadata for MLS.GroupCreationError;
      *(v0 + 5288) = v45;
      *(v0 + 5256) = 5;
      *(v0 + 5264) = 0u;
      v46 = swift_task_alloc();
      *(v0 + 9424) = v46;
      *v46 = v0;
      v46[1] = closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:);
      v47 = *(v0 + 8400);
      v48 = *(v0 + 8392);
      v49 = *(v0 + 8080);

      return MLS.SwiftMLSClientCoordinator.retrieveKeyPackages(otherMembers:eventIdentifier:functionName:keyPackageError:)(v0 + 7768, v49, v48, v47, 0x7247657461657263, 0xEB0000000070756FLL, v0 + 5256);
    }

    v19 = *(v0 + 8128);
    v20 = *(v0 + 8104);
    v21 = *(v0 + 8096);

    outlined destroy of NSObject?(v0 + 7560, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
    (*(v20 + 8))(v19, v21);
  }

  else
  {
    outlined destroy of NSObject?(v0 + 7560, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
  }

  v22 = *(v0 + 8840);
  v23 = *(v0 + 8048);

  outlined init with copy of MLS.OutgoingEventState?(v23, v0 + 4120, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);
  v24 = v22;
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.error.getter();
  outlined destroy of NSObject?(v23, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

  if (os_log_type_enabled(v25, v26))
  {
    v27 = *(v0 + 8840);
    v28 = *(v0 + 8400);
    v29 = *(v0 + 8392);
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v53[0] = v32;
    *v30 = 136315394;
    *(v30 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v28, v53);
    *(v30 + 12) = 2112;
    v33 = v27;
    v34 = _swift_stdlib_bridgeErrorToNSError();
    *(v30 + 14) = v34;
    *v31 = v34;
    _os_log_impl(&dword_264F1F000, v25, v26, "SwiftMLSClientCoordinator createGroup failed to add KeyPackages to group { identifier: %s, error: %@ }", v30, 0x16u);
    outlined destroy of NSObject?(v31, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x266755550](v31, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v32);
    MEMORY[0x266755550](v32, -1, -1);
    MEMORY[0x266755550](v30, -1, -1);
  }

  v35 = *(v0 + 8840);
  swift_getErrorValue();
  v36 = Error.readableDescription.getter(*(v0 + 7352), *(v0 + 7360));
  v38 = v37;
  lazy protocol witness table accessor for type MLS.GroupCreationError and conformance MLS.GroupCreationError();
  swift_allocError();
  *v39 = 7;
  *(v39 + 8) = v36;
  *(v39 + 16) = v38;
  swift_willThrow();

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 5696));

  v40 = *(v0 + 8);

  return v40();
}

{
  (*(v0 + 9416))(*(v0 + 8128), *(v0 + 8096));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 5256));

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 5696));

  v1 = *(v0 + 8);

  return v1();
}

{
  outlined consume of Data._Representation(v0[1106], v0[1107]);
  outlined destroy of MLS.Group((v0 + 232));
  outlined destroy of MLS.OutgoingEventState((v0 + 524));
  outlined destroy of NSObject?((v0 + 186), &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 712);

  v1 = v0[1];

  return v1();
}

{
  outlined consume of Data._Representation(v0[1106], v0[1107]);
  outlined destroy of MLS.Group((v0 + 232));
  outlined destroy of MLS.OutgoingEventState((v0 + 524));
  outlined destroy of NSObject?((v0 + 186), &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 712);

  v1 = v0[1];

  return v1();
}

uint64_t closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:)(char a1)
{
  v4 = *v2;
  *(*v2 + 8504) = v1;

  if (v1)
  {
    v5 = closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:);
  }

  else
  {
    v6 = *(v4 + 8048);

    *(v4 + 193) = a1 & 1;
    outlined destroy of NSObject?(v6, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

    v5 = closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:);
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:)(uint64_t a1)
{
  LODWORD(v2) = *(v1 + 7504);
  if (v2 == 2)
  {
    v2 = *(v1 + 8352);
    v3 = *(v1 + 8344);
    v4 = *(v1 + 8336);
    Date.init()();
    Date.timeIntervalSince1970.getter();
    v6 = v5;
    (*(v3 + 8))(v2, v4);
    __swift_destroy_boxed_opaque_existential_1Tm((v1 + 5856));
    v7 = 0;
    LOBYTE(v2) = 1;
  }

  else
  {
    v6 = *(v1 + 7496);
    v7 = *(v1 + 7488);
    __swift_destroy_boxed_opaque_existential_1Tm((v1 + 5856));
  }

  v8 = *(v1 + 8576);
  *(v8 + 64) = v7;
  *(v8 + 72) = v6;
  *(v8 + 80) = v2 & 1;

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:), 0, 0);
}

{
  v4 = *v2;
  *(*v2 + 8912) = v1;

  if (v1)
  {
    v5 = closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:);
  }

  else
  {
    *(v4 + 8920) = a1;
    v5 = closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:);
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

{
  *(*v1 + 8936) = a1;

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:), 0, 0);
}

{
  v2 = v1[1025];
  v3 = v1[1024];
  v4 = v1[1023];
  v1[1120] = MLS.Group.GroupInfo.rawRepresentation.getter();
  v1[1121] = v5;
  (*(v3 + 8))(v2, v4);
  v6 = v1[750];
  v7 = v1[751];
  __swift_project_boxed_opaque_existential_1(v1 + 747, v6);
  v10 = (*(v7 + 56) + **(v7 + 56));
  v8 = swift_task_alloc();
  v1[1122] = v8;
  *v8 = v1;
  v8[1] = closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:);

  return v10(v6, v7);
}

{
  v4 = *v2;
  v5 = (*v2 + 2584);
  *(*v2 + 9104) = v1;

  if (v1)
  {
    *(v4 + 2744) = *v5;
    v6 = v5[1];
    v7 = v5[2];
    v8 = v5[3];
    *(v4 + 2801) = *(v5 + 57);
    *(v4 + 2776) = v7;
    *(v4 + 2792) = v8;
    *(v4 + 2760) = v6;
    outlined destroy of MLS.RetryAfterGroupVersionBehavior(v4 + 2744);
    v9 = *(v4 + 432);
    v11 = *(v4 + 384);
    v10 = *(v4 + 400);
    *(v4 + 784) = *(v4 + 416);
    *(v4 + 800) = v9;
    *(v4 + 752) = v11;
    *(v4 + 768) = v10;
    v12 = *(v4 + 496);
    v14 = *(v4 + 448);
    v13 = *(v4 + 464);
    *(v4 + 848) = *(v4 + 480);
    *(v4 + 864) = v12;
    *(v4 + 816) = v14;
    *(v4 + 832) = v13;
    v16 = *(v4 + 528);
    v15 = *(v4 + 544);
    v17 = *(v4 + 512);
    *(v4 + 928) = *(v4 + 560);
    *(v4 + 896) = v16;
    *(v4 + 912) = v15;
    *(v4 + 880) = v17;
    outlined destroy of NSObject?(v4 + 752, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
    v18 = closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:);
  }

  else
  {
    *(v4 + 9112) = a1;
    *(v4 + 2664) = *v5;
    v19 = v5[1];
    v20 = v5[2];
    v21 = v5[3];
    *(v4 + 2721) = *(v5 + 57);
    *(v4 + 2696) = v20;
    *(v4 + 2712) = v21;
    *(v4 + 2680) = v19;
    outlined destroy of MLS.RetryAfterGroupVersionBehavior(v4 + 2664);
    v22 = *(v4 + 416);
    v23 = *(v4 + 432);
    v24 = *(v4 + 400);
    *(v4 + 1120) = *(v4 + 384);
    *(v4 + 1168) = v23;
    *(v4 + 1152) = v22;
    *(v4 + 1136) = v24;
    v25 = *(v4 + 480);
    v26 = *(v4 + 496);
    v27 = *(v4 + 464);
    *(v4 + 1184) = *(v4 + 448);
    *(v4 + 1232) = v26;
    *(v4 + 1216) = v25;
    *(v4 + 1200) = v27;
    v29 = *(v4 + 528);
    v28 = *(v4 + 544);
    v30 = *(v4 + 560);
    *(v4 + 1248) = *(v4 + 512);
    *(v4 + 1296) = v30;
    *(v4 + 1280) = v28;
    *(v4 + 1264) = v29;
    outlined destroy of NSObject?(v4 + 1120, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
    v18 = closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:);
  }

  return MEMORY[0x2822009F8](v18, 0, 0);
}

{
  v4 = *v2;
  *(*v2 + 9384) = v1;

  if (v1)
  {
    v5 = v4[1046];
    outlined destroy of NSObject?((v4 + 945), &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);

    outlined consume of Data._Representation(v4[951], v4[952]);

    v6 = closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:);
    v7 = v5;
  }

  else
  {
    v8 = v4[1046];
    v4[1174] = a1;
    outlined consume of Data._Representation(v4[951], v4[952]);

    v6 = closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:);
    v7 = v8;
  }

  return MEMORY[0x2822009F8](v6, v7, 0);
}

uint64_t closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:)(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[1085] = a1;
  v4[1086] = a2;
  v4[1087] = v2;

  if (v2)
  {
    v5 = v4[1046];
    v6 = closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:);
  }

  else
  {
    v7 = v4[1046];
    __swift_destroy_boxed_opaque_existential_1Tm(v4 + 707);
    v6 = closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:);
    v5 = v7;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

{
  v3 = *v2;
  *(v3 + 8984) = a1;
  *(v3 + 8992) = a2;

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:), 0, 0);
}

{
  v6 = *v3;
  v6[1126] = v2;

  if (v2)
  {

    return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:), 0, 0);
  }

  else
  {
    v7 = v6[1112];
    v8 = v6[1111];
    v16 = v6[1109];
    v6[1127] = a2;
    v6[1128] = a1;
    ObjectType = swift_getObjectType();
    v6[1129] = ObjectType;
    v6[941] = v8;
    v6[942] = v7;
    v15 = (*(v16 + 64) + **(v16 + 64));
    v10 = swift_task_alloc();
    v6[1130] = v10;
    *v10 = v6;
    v10[1] = closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:);
    v11 = v6[1109];
    v12 = v6[1009];
    v13 = v6[1008];

    return v15(v13, v12, v6 + 941, ObjectType, v11);
  }
}

{
  v6 = *v3;
  *(*v3 + 9048) = v2;

  if (v2)
  {
    v7 = closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:);
  }

  else
  {
    *(v6 + 9056) = a2;
    *(v6 + 9064) = a1;
    v7 = closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:);
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

{
  v4 = *v3;
  *(*v3 + 9280) = v2;

  if (v2)
  {
    v5 = *(v4 + 8368);
    outlined destroy of NSObject?(v4 + 7560, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);

    v6 = closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:);
    v7 = v5;
  }

  else
  {
    v8 = *(v4 + 8368);

    __swift_destroy_boxed_opaque_existential_1Tm((v4 + 5896));
    v6 = closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:);
    v7 = v8;
  }

  return MEMORY[0x2822009F8](v6, v7, 0);
}

{
  v4 = *v3;
  *(*v3 + 9320) = v2;

  if (v2)
  {
    v5 = *(v4 + 8368);
    outlined destroy of NSObject?(v4 + 7560, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);

    v6 = closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:);
    v7 = v5;
  }

  else
  {
    v8 = *(v4 + 8368);

    __swift_destroy_boxed_opaque_existential_1Tm((v4 + 5336));
    v6 = closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:);
    v7 = v8;
  }

  return MEMORY[0x2822009F8](v6, v7, 0);
}

{
  v4 = *v3;
  v4[1179] = a2;
  v4[1180] = v2;

  if (v2)
  {
    v5 = v4[1046];
    outlined destroy of NSObject?((v4 + 945), &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);

    v6 = closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:);
    v7 = v5;
  }

  else
  {
    v8 = v4[1046];

    __swift_destroy_boxed_opaque_existential_1Tm(v4 + 657);

    v6 = closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:);
    v7 = v8;
  }

  return MEMORY[0x2822009F8](v6, v7, 0);
}

uint64_t closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:)(uint64_t a1, char a2)
{
  v4 = *v3;
  v5 = *v3;
  *(v5 + 8784) = a1;
  *(v5 + 194) = a2;
  *(v5 + 8792) = v2;

  v6 = *(v4 + 8368);
  if (v2)
  {
    outlined destroy of NSObject?(v5 + 7560, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);

    outlined consume of Data._Representation(*(v5 + 7640), *(v5 + 7648));

    v7 = closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:);
  }

  else
  {
    outlined consume of Data._Representation(*(v5 + 7640), *(v5 + 7648));

    v7 = closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:);
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

void closure #1 in closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, unint64_t a6)
{
  outlined init with copy of MLS.OutgoingEventState?(a4, v15, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.error.getter();
  outlined destroy of NSObject?(a4, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v15[0] = v14;
    *v13 = 136315650;
    *(v13 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*a4, a4[1], v15);
    *(v13 + 12) = 2080;
    *(v13 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a5, a6, v15);
    *(v13 + 22) = 2080;
    *(v13 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, v15);
    _os_log_impl(&dword_264F1F000, v11, v12, "SwiftMLSClientCoordinator createGroup failed to get endMLS state for existing group { identifier: %s, group: %s, error: %s }", v13, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v14, -1, -1);
    MEMORY[0x266755550](v13, -1, -1);
  }
}

void closure #2 in closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:)(uint64_t a1, unint64_t a2, uint64_t a3, const char *a4)
{

  oslog = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(oslog, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v11 = v9;
    *v8 = 136315138;
    *(v8 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v11);
    _os_log_impl(&dword_264F1F000, oslog, v7, a4, v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x266755550](v9, -1, -1);
    MEMORY[0x266755550](v8, -1, -1);
  }
}

void closure #4 in closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t *a4, const char *a5)
{
  outlined init with copy of MLS.OutgoingEventState?(a4, v13, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();
  outlined destroy of NSObject?(a4, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13[0] = v12;
    *v11 = 136315394;
    *(v11 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*a4, a4[1], v13);
    *(v11 + 12) = 2080;
    *(v11 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, v13);
    _os_log_impl(&dword_264F1F000, v9, v10, a5, v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v12, -1, -1);
    MEMORY[0x266755550](v11, -1, -1);
  }
}

uint64_t MLS.SwiftMLSClientCoordinator.joinGroup(identifier:otherMembers:welcome:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _OWORD *a5, uint64_t a6)
{
  *(v7 + 248) = a4;
  *(v7 + 256) = v6;
  *(v7 + 232) = a2;
  *(v7 + 240) = a3;
  *(v7 + 224) = a1;
  v8 = a5[1];
  *(v7 + 160) = *a5;
  *(v7 + 176) = v8;
  *(v7 + 192) = a5[2];
  *(v7 + 202) = *(a5 + 42);
  v9 = *(a6 + 48);
  *(v7 + 48) = *(a6 + 32);
  *(v7 + 64) = v9;
  *(v7 + 80) = *(a6 + 64);
  v10 = *(a6 + 16);
  *(v7 + 16) = *a6;
  *(v7 + 32) = v10;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v11 = static MLSActor.shared;
  *(v7 + 264) = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.SwiftMLSClientCoordinator.joinGroup(identifier:otherMembers:welcome:context:), v11, 0);
}

uint64_t MLS.SwiftMLSClientCoordinator.joinGroup(identifier:otherMembers:welcome:context:)()
{
  v27 = v0;
  outlined init with copy of MLS.OutgoingEventState?((v0 + 2), (v0 + 11), &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  outlined destroy of NSObject?((v0 + 2), &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[30];
    v24 = v0[31];
    v4 = v0[29];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v26 = v6;
    *v5 = 136315650;
    v8 = v0[2];
    v7 = v0[3];

    v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v7, &v26);

    *(v5 + 4) = v9;
    *(v5 + 12) = 2080;
    *(v5 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v4, v3, &v26);
    *(v5 + 22) = 2080;
    v10 = MEMORY[0x266754630](v24, &type metadata for MLS.AllMember);
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v26);

    *(v5 + 24) = v12;
    _os_log_impl(&dword_264F1F000, v1, v2, "SwiftMLSClientCoordinator joinGroup joining group { identifier: %s, group: %s, otherMembers: %s }", v5, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v6, -1, -1);
    MEMORY[0x266755550](v5, -1, -1);
  }

  v13 = v0[32];
  v14 = v0[29];
  v15 = *(v13 + direct field offset for MLS.SwiftMLSClientCoordinator.groupLoader);
  v16 = v0[2];
  v17 = v0[3];
  v18 = swift_task_alloc();
  v0[34] = v18;
  v19 = *(v0 + 15);
  *(v18 + 16) = v0 + 2;
  *(v18 + 24) = v13;
  *(v18 + 32) = v0 + 20;
  *(v18 + 40) = v14;
  *(v18 + 48) = v19;
  v25 = (*(*v15 + 152) + **(*v15 + 152));
  v20 = swift_task_alloc();
  v0[35] = v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO29GroupCreationProcessedContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO29GroupCreationProcessedContextVy_10Foundation4DataVGMR);
  *v20 = v0;
  v20[1] = MLS.SwiftMLSClientCoordinator.joinGroup(identifier:otherMembers:welcome:context:);
  v22 = v0[28];

  return v25(v22, v16, v17, &async function pointer to partial apply for closure #1 in MLS.SwiftMLSClientCoordinator.joinGroup(identifier:otherMembers:welcome:context:), v18, v21);
}

{
  v2 = *v1;
  v2[36] = v0;

  if (v0)
  {
    v3 = v2[33];

    return MEMORY[0x2822009F8](MLS.SwiftMLSClientCoordinator.joinGroup(identifier:otherMembers:welcome:context:), v3, 0);
  }

  else
  {

    v4 = v2[1];

    return v4();
  }
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t closure #1 in MLS.SwiftMLSClientCoordinator.joinGroup(identifier:otherMembers:welcome:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[461] = a7;
  v7[460] = a6;
  v7[459] = a5;
  v7[458] = a4;
  v7[457] = a3;
  v7[456] = a2;
  v7[455] = a1;
  v8 = type metadata accessor for MLS.Group.GroupInfo();
  v7[462] = v8;
  v7[463] = *(v8 - 8);
  v7[464] = swift_task_alloc();
  v7[465] = swift_task_alloc();
  v9 = type metadata accessor for Date();
  v7[466] = v9;
  v7[467] = *(v9 - 8);
  v7[468] = swift_task_alloc();
  v10 = type metadata accessor for MLS.Group.Message();
  v7[469] = v10;
  v7[470] = *(v10 - 8);
  v7[471] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8SwiftMLS0B0O5GroupO7MessageVSgMd, &_s8SwiftMLS0B0O5GroupO7MessageVSgMR);
  v7[472] = swift_task_alloc();
  v7[473] = type metadata accessor for MetricCollector.Event(0);
  v7[474] = swift_task_alloc();
  v7[475] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v11 = static MLSActor.shared;
  v7[476] = static MLSActor.shared;

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.joinGroup(identifier:otherMembers:welcome:context:), v11, 0);
}

uint64_t closure #1 in MLS.SwiftMLSClientCoordinator.joinGroup(identifier:otherMembers:welcome:context:)()
{
  v1 = v0[475];
  v2 = v0[474];
  v3 = v0[473];
  v4 = v0[467];
  v5 = v0[466];
  v6 = v0[456];
  v7 = *(v6 + 32);
  v0[454] = v7;
  v0[451] = v7;
  outlined init with copy of MetricCollector((v0 + 454), (v0 + 447));
  Date.init()();
  v8 = *(v3 + 20);
  v9 = 1;
  (*(v4 + 56))(v1 + v8, 1, 1, v5);
  outlined init with take of MLS.KeyPackageProvider(v1, v2, type metadata accessor for MetricCollector.Event);
  v10 = v0[451];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v2, 0x534C4D7466697753, 0xEE0074696D6D6F43, isUniquelyReferenced_nonNull_native);

  v0[451] = v10;
  if (*(v6 + 64) >> 60 != 15)
  {
    outlined copy of Data._Representation(*(v0[456] + 56), *(v6 + 64));
    MLS.Group.Message.init(fromRaw:)();
    v9 = 0;
  }

  v0[477] = 0;
  v12 = v0[456];
  (*(v0[470] + 56))(v0[472], v9, 1, v0[469]);

  outlined init with copy of MLS.OutgoingEventState?(v12, (v0 + 294), &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

  outlined init with copy of MLS.OutgoingEventState?(v12, (v0 + 276), &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.joinGroup(identifier:otherMembers:welcome:context:), 0, 0);
}

{
  outlined init with copy of MLS.SwiftMLSClientPicker(*(v0 + 3656) + 16, v0 + 2712);
  if (*(v0 + 2752))
  {
    outlined init with take of MLS.KeyUpdatePolicy((v0 + 2712), v0 + 2800);
  }

  else
  {
    outlined init with take of MLS.KeyUpdatePolicy((v0 + 2712), v0 + 2920);
    v1 = *(v0 + 2944);
    v2 = *(v0 + 2952);
    v3 = __swift_project_boxed_opaque_existential_1((v0 + 2920), v1);
    *(v0 + 2824) = v1;
    *(v0 + 2832) = *(v2 + 8);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 2800));
    (*(*(v1 - 8) + 16))(boxed_opaque_existential_1, v3, v1);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 2920));
  }

  v5 = *(v0 + 3816);
  v6 = *(v0 + 3664);
  v7 = *(v0 + 2824);
  v8 = *(v0 + 2832);
  __swift_project_boxed_opaque_existential_1((v0 + 2800), v7);
  outlined copy of Data._Representation(*v6, *(v6 + 8));
  MLS.Group.Message.init(fromRaw:)();
  if (v5)
  {
    v9 = *(v0 + 3808);
    v10 = *(v0 + 3656);
    v11 = *(v0 + 3648);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 2800));

    swift_getErrorValue();
    v12 = Error.readableDescription.getter(*(v0 + 3128), *(v0 + 3136));
    closure #4 in closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:)(v12, v13, v10, v11, "SwiftMLSClientCoordinator joinGroup failed to join group { identifier: %s, error: %s }");

    swift_getErrorValue();
    v14 = Error.readableDescription.getter(*(v0 + 3368), *(v0 + 3376));
    *(v0 + 3880) = v14;
    *(v0 + 3888) = v15;
    *(v0 + 3336) = 4;
    *(v0 + 3344) = v14;
    *(v0 + 3352) = v15;
    *(v0 + 3896) = lazy protocol witness table accessor for type MLS.GroupCreationError and conformance MLS.GroupCreationError();
    swift_willThrowTypedImpl();

    outlined destroy of NSObject?(v11, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

    outlined destroy of NSObject?(v11, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

    return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.joinGroup(identifier:otherMembers:welcome:context:), v9, 0);
  }

  else
  {
    v20 = (*(v8 + 72) + **(v8 + 72));
    v16 = swift_task_alloc();
    *(v0 + 3824) = v16;
    *v16 = v0;
    v16[1] = closure #1 in MLS.SwiftMLSClientCoordinator.joinGroup(identifier:otherMembers:welcome:context:);
    v17 = *(v0 + 3776);
    v18 = *(v0 + 3768);

    return v20(v0 + 2760, v18, v17, v7, v8);
  }
}

{
  v2 = *v1;
  *(*v1 + 3832) = v0;

  (*(v2[470] + 8))(v2[471], v2[469]);
  if (v0)
  {
    v3 = closure #1 in MLS.SwiftMLSClientCoordinator.joinGroup(identifier:otherMembers:welcome:context:);
  }

  else
  {
    v3 = closure #1 in MLS.SwiftMLSClientCoordinator.joinGroup(identifier:otherMembers:welcome:context:);
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  v1 = v0[476];
  v2 = v0[456];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 350);

  outlined destroy of NSObject?(v2, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

  outlined destroy of NSObject?(v2, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.joinGroup(identifier:otherMembers:welcome:context:), v1, 0);
}

{
  v1 = v0[348];
  v2 = v0[349];
  __swift_project_boxed_opaque_existential_1(v0 + 345, v1);
  v5 = (*(v2 + 8) + **(v2 + 8));
  v3 = swift_task_alloc();
  v0[480] = v3;
  *v3 = v0;
  v3[1] = closure #1 in MLS.SwiftMLSClientCoordinator.joinGroup(identifier:otherMembers:welcome:context:);

  return v5(v1, v2);
}

{
  v41 = v0;
  v1 = v0[460];
  v2 = v0[459];
  v3 = v0[456];
  v4 = *v3;
  v0[483] = *v3;
  v5 = v3[1];
  v0[484] = v5;

  v6 = MLS.SwiftMLSClientCoordinator.uuidToUse(identifier:eventIdentifier:)(v2, v1, v4, v5);
  if (v7 >> 60 != 15)
  {
    v8 = v6;
    v9 = v7;
    if (!specialized static Data.== infix(_:_:)(v6, v7, v0[481], v0[482]))
    {
      v10 = v0[482];
      v11 = v0[481];
      v37 = v10;
      v12 = v0[456];
      outlined init with copy of MLS.OutgoingEventState?(v12, (v0 + 330), &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

      outlined copy of Data?(v8, v9);
      outlined copy of Data._Representation(v11, v10);
      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.fault.getter();
      outlined destroy of NSObject?(v12, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

      outlined consume of Data?(v8, v9);
      outlined consume of Data._Representation(v11, v37);
      if (os_log_type_enabled(v13, v14))
      {
        v15 = v0[460];
        v16 = v0[459];
        v36 = v14;
        v17 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        v40 = v38;
        *v17 = 136315906;
        *(v17 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v4, v5, &v40);
        *(v17 + 12) = 2080;
        *(v17 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v15, &v40);
        *(v17 + 22) = 2080;
        isa = Data._bridgeToObjectiveC()().super.isa;
        v19 = [(objc_class *)isa debugDescription];

        v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v22 = v21;

        v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v22, &v40);

        *(v17 + 24) = v23;
        *(v17 + 32) = 2080;
        v24 = Data._bridgeToObjectiveC()().super.isa;
        v25 = [(objc_class *)v24 debugDescription];

        v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v28 = v27;

        v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v28, &v40);

        *(v17 + 34) = v29;
        _os_log_impl(&dword_264F1F000, v13, v36, "SwiftMLSClientCoordinator joinGroup given a mismatching identifier in welcome message { identifier: %s, groupIdentifier: %s, uuidToUse: %s, swiftMLSGroupID: %s }", v17, 0x2Au);
        swift_arrayDestroy();
        MEMORY[0x266755550](v38, -1, -1);
        MEMORY[0x266755550](v17, -1, -1);
        outlined consume of Data?(v8, v9);

        goto LABEL_7;
      }
    }

    outlined consume of Data?(v8, v9);
  }

LABEL_7:
  v30 = v0[457];
  v31._countAndFlagsBits = 0x534C4D7466697753;
  v31._object = 0xEE0074696D6D6F43;
  MetricCollector.end(label:)(v31);
  v39 = (*(**(v30 + direct field offset for MLS.SwiftMLSClientCoordinator.groupLoader) + 160) + **(**(v30 + direct field offset for MLS.SwiftMLSClientCoordinator.groupLoader) + 160));
  v32 = swift_task_alloc();
  v0[488] = v32;
  *v32 = v0;
  v32[1] = closure #1 in MLS.SwiftMLSClientCoordinator.joinGroup(identifier:otherMembers:welcome:context:);
  v33 = v0[460];
  v34 = v0[459];

  return v39(v0 + 345, v34, v33);
}

{
  v1 = *(v0 + 3832);
  v2 = *(v0 + 3808);
  v3 = *(v0 + 3656);
  v4 = *(v0 + 3648);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 2800));

  swift_getErrorValue();
  v5 = Error.readableDescription.getter(*(v0 + 3128), *(v0 + 3136));
  closure #4 in closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:)(v5, v6, v3, v4, "SwiftMLSClientCoordinator joinGroup failed to join group { identifier: %s, error: %s }");

  swift_getErrorValue();
  v7 = Error.readableDescription.getter(*(v0 + 3368), *(v0 + 3376));
  *(v0 + 3880) = v7;
  *(v0 + 3888) = v8;
  *(v0 + 3336) = 4;
  *(v0 + 3344) = v7;
  *(v0 + 3352) = v8;
  *(v0 + 3896) = lazy protocol witness table accessor for type MLS.GroupCreationError and conformance MLS.GroupCreationError();
  swift_willThrowTypedImpl();

  outlined destroy of NSObject?(v4, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

  outlined destroy of NSObject?(v4, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.joinGroup(identifier:otherMembers:welcome:context:), v2, 0);
}

{
  v1 = v0[486];
  v2 = v0[485];
  v3 = v0[472];
  swift_allocError();
  *v4 = 4;
  *(v4 + 8) = v2;
  *(v4 + 16) = v1;
  outlined destroy of NSObject?(v3, &_s8SwiftMLS0B0O5GroupO7MessageVSgMd, &_s8SwiftMLS0B0O5GroupO7MessageVSgMR);

  v5 = v0[1];

  return v5();
}

{
  v2 = *v1;
  *(*v1 + 3912) = v0;

  if (v0)
  {
    v3 = *(v2 + 3808);

    v4 = closure #1 in MLS.SwiftMLSClientCoordinator.joinGroup(identifier:otherMembers:welcome:context:);
    v5 = v3;
  }

  else
  {
    v5 = *(v2 + 3808);
    v4 = closure #1 in MLS.SwiftMLSClientCoordinator.joinGroup(identifier:otherMembers:welcome:context:);
  }

  return MEMORY[0x2822009F8](v4, v5, 0);
}

{
  v1 = *(v0 + 3648);

  outlined init with copy of MLS.OutgoingEventState?(v1, v0 + 2136, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

  outlined init with copy of MLS.OutgoingEventState?(v1, v0 + 2064, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.joinGroup(identifier:otherMembers:welcome:context:), 0, 0);
}

{

  v2 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC15SecureMessaging3MLSO9AllMemberO_SayAHGTt0g5Tf4g_n(v1);
  v0[490] = v2;

  v3 = swift_task_alloc();
  v0[491] = v3;
  *v3 = v0;
  v3[1] = closure #1 in MLS.SwiftMLSClientCoordinator.joinGroup(identifier:otherMembers:welcome:context:);
  v4 = v0[460];
  v5 = v0[459];

  return MLS.SwiftMLSClientCoordinator.replaceMembers(identifier:otherMembers:)(v5, v4, v2);
}

{
  v2 = *v1;
  *(*v1 + 3936) = v0;

  if (v0)
  {
    v3 = closure #1 in MLS.SwiftMLSClientCoordinator.joinGroup(identifier:otherMembers:welcome:context:);
  }

  else
  {
    v4 = *(v2 + 3648);

    outlined destroy of NSObject?(v4, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);
    v3 = closure #1 in MLS.SwiftMLSClientCoordinator.joinGroup(identifier:otherMembers:welcome:context:);
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  v1 = *(v0 + 3808);
  v2 = *(v0 + 3648);

  outlined destroy of NSObject?(v2, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.joinGroup(identifier:otherMembers:welcome:context:), v1, 0);
}

{
  swift_retain_n();

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.joinGroup(identifier:otherMembers:welcome:context:), 0, 0);
}

{
  v1 = v0[476];
  v2 = v0[457];
  v3 = direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier;
  v0[493] = direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier;
  v4 = (v2 + v3);
  v0[494] = *v4;
  v0[495] = v4[1];
  v0[496] = *(v2 + 80);
  v0[497] = *(v2 + 88);
  outlined init with copy of ServerBag.MLS(v2 + 144, (v0 + 355));
  v0[498] = type metadata accessor for MLS.KeyUpdateTracker();
  v0[499] = swift_allocObject();

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.joinGroup(identifier:otherMembers:welcome:context:), v1, 0);
}

{
  v1 = v0[499];
  v14 = v0[497];
  v2 = v0[496];
  v3 = v0[495];
  v4 = v0[494];
  v5 = v0[460];
  v1[6] = v0[459];
  v1[7] = v5;
  v1[4] = v4;
  v1[5] = v3;
  v1[2] = v2;
  v1[3] = v14;
  outlined init with copy of ServerBag.MLS((v0 + 355), (v1 + 11));
  ObjectType = swift_getObjectType();
  v0[500] = ObjectType;
  v0[436] = v4;
  v0[437] = v3;
  v7 = *(v14 + 144);

  swift_unknownObjectRetain();
  v13 = (v7 + *v7);
  v8 = swift_task_alloc();
  v0[501] = v8;
  *v8 = v0;
  v8[1] = closure #1 in MLS.SwiftMLSClientCoordinator.joinGroup(identifier:otherMembers:welcome:context:);
  v9 = v0[497];
  v10 = v0[460];
  v11 = v0[459];

  return (v13)(v0 + 423, v11, v10, v0 + 436, ObjectType, v9);
}

{
  v2 = *v1;
  *(*v1 + 4016) = v0;

  v3 = *(v2 + 3808);
  if (v0)
  {
    v4 = closure #1 in MLS.SwiftMLSClientCoordinator.joinGroup(identifier:otherMembers:welcome:context:);
  }

  else
  {
    v4 = closure #1 in MLS.SwiftMLSClientCoordinator.joinGroup(identifier:otherMembers:welcome:context:);
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{
  v1 = *(v0 + 3936);
  v2 = *(v0 + 3808);
  v3 = *(v0 + 3656);
  v4 = *(v0 + 3648);

  swift_getErrorValue();
  v5 = Error.readableDescription.getter(*(v0 + 3320), *(v0 + 3328));
  closure #4 in closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:)(v5, v6, v3, v4, "SwiftMLSClientCoordinator joinGroup failed to save members { identifier: %s, error: %s }");

  swift_getErrorValue();
  v7 = Error.readableDescription.getter(*(v0 + 3296), *(v0 + 3304));
  *(v0 + 4024) = v7;
  *(v0 + 4032) = v8;
  *(v0 + 3264) = 11;
  *(v0 + 3272) = v7;
  *(v0 + 3280) = v8;
  *(v0 + 4040) = lazy protocol witness table accessor for type MLS.GroupCreationError and conformance MLS.GroupCreationError();
  swift_willThrowTypedImpl();

  outlined destroy of NSObject?(v4, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

  outlined destroy of NSObject?(v4, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.joinGroup(identifier:otherMembers:welcome:context:), v2, 0);
}

{
  v1 = v0[504];
  v2 = v0[503];
  v3 = v0[482];
  v4 = v0[481];
  v5 = v0[472];
  swift_allocError();
  *v6 = 11;
  *(v6 + 8) = v2;
  *(v6 + 16) = v1;
  outlined consume of Data._Representation(v4, v3);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 345);
  outlined destroy of NSObject?(v5, &_s8SwiftMLS0B0O5GroupO7MessageVSgMd, &_s8SwiftMLS0B0O5GroupO7MessageVSgMR);

  v7 = v0[1];

  return v7();
}

{
  v1 = *(v0 + 3992);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 2840));
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1Tm((v1 + 88));
  swift_deallocPartialClassInstance();

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.joinGroup(identifier:otherMembers:welcome:context:), 0, 0);
}

{
  v1 = *(v0 + 4016);
  v2 = *(v0 + 3808);
  v3 = *(v0 + 3656);

  swift_getErrorValue();
  v4 = Error.readableDescription.getter(*(v0 + 3248), *(v0 + 3256));
  closure #2 in closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:)(v4, v5, v3, "Failed to load in KeyUpdateTracker: %s");

  swift_getErrorValue();
  v6 = Error.readableDescription.getter(*(v0 + 3224), *(v0 + 3232));
  *(v0 + 4048) = v6;
  *(v0 + 4056) = v7;
  *(v0 + 3192) = 10;
  *(v0 + 3200) = v6;
  *(v0 + 3208) = v7;
  *(v0 + 4064) = lazy protocol witness table accessor for type MLS.GroupCreationError and conformance MLS.GroupCreationError();
  swift_willThrowTypedImpl();

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.joinGroup(identifier:otherMembers:welcome:context:), v2, 0);
}

{
  v1 = v0[507];
  v2 = v0[506];
  v3 = v0[482];
  v4 = v0[481];
  v5 = v0[472];
  swift_allocError();
  *v6 = 10;
  *(v6 + 8) = v2;
  *(v6 + 16) = v1;
  outlined consume of Data._Representation(v4, v3);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 345);
  outlined destroy of NSObject?(v5, &_s8SwiftMLS0B0O5GroupO7MessageVSgMd, &_s8SwiftMLS0B0O5GroupO7MessageVSgMR);

  v7 = v0[1];

  return v7();
}

{
  v1 = *(v0 + 3808);

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.joinGroup(identifier:otherMembers:welcome:context:), v1, 0);
}

{
  v1 = *(v0 + 3992);
  v2 = *(v0 + 3680);
  v3 = *(v0 + 3672);
  v4 = *(v0 + 3648);
  v5 = *(**(v0 + 3656) + 256);

  v6 = v5(v0 + 3000);
  v8 = v7;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *v8;
  *v8 = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v1, v3, v2, isUniquelyReferenced_nonNull_native);

  *v8 = v11;
  v6(v0 + 3000, 0);

  outlined init with copy of MLS.OutgoingEventState?(v4, v0 + 2424, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

  outlined init with copy of MLS.OutgoingEventState?(v4, v0 + 2496, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.joinGroup(identifier:otherMembers:welcome:context:), 0, 0);
}

{
  v1 = (v0[457] + v0[493]);
  outlined init with copy of ServerBag.MLS((v0 + 345), (v0 + 360));
  v0[509] = *v1;
  v0[510] = v1[1];
  v2 = v0[363];
  v3 = v0[364];
  __swift_project_boxed_opaque_existential_1(v0 + 360, v2);
  v4 = *(v3 + 32);

  v7 = (v4 + *v4);
  v5 = swift_task_alloc();
  v0[511] = v5;
  *v5 = v0;
  v5[1] = closure #1 in MLS.SwiftMLSClientCoordinator.joinGroup(identifier:otherMembers:welcome:context:);

  return v7(v2, v3);
}

{
  v1 = v0[363];
  v2 = v0[364];
  __swift_project_boxed_opaque_existential_1(v0 + 360, v1);
  v5 = (*(v2 + 24) + **(v2 + 24));
  v3 = swift_task_alloc();
  v0[514] = v3;
  *v3 = v0;
  v3[1] = closure #1 in MLS.SwiftMLSClientCoordinator.joinGroup(identifier:otherMembers:welcome:context:);

  return v5(v1, v2);
}

{
  v1 = *(v0 + 4096);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 2880));

  v2 = *(v0 + 3808);
  v3 = *(v0 + 3656);
  v4 = *(v0 + 3648);

  swift_getErrorValue();
  v5 = Error.readableDescription.getter(*(v0 + 3104), *(v0 + 3112));
  closure #4 in closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:)(v5, v6, v3, v4, "SwiftMLSClientCoordinator joinGroup failed obtaining group information { identifier: %s, error: %s }");

  swift_getErrorValue();
  v7 = Error.readableDescription.getter(*(v0 + 3176), *(v0 + 3184));
  *(v0 + 4280) = v7;
  *(v0 + 4288) = v8;
  *(v0 + 3144) = 9;
  *(v0 + 3152) = v7;
  *(v0 + 3160) = v8;
  *(v0 + 4296) = lazy protocol witness table accessor for type MLS.GroupCreationError and conformance MLS.GroupCreationError();
  swift_willThrowTypedImpl();

  outlined destroy of NSObject?(v4, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

  outlined destroy of NSObject?(v4, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.joinGroup(identifier:otherMembers:welcome:context:), v2, 0);
}

{
  *(*v1 + 4136) = v0;

  if (v0)
  {
    v2 = closure #1 in MLS.SwiftMLSClientCoordinator.joinGroup(identifier:otherMembers:welcome:context:);
  }

  else
  {
    v2 = closure #1 in MLS.SwiftMLSClientCoordinator.joinGroup(identifier:otherMembers:welcome:context:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v1 = v0[363];
  v2 = v0[364];
  __swift_project_boxed_opaque_existential_1(v0 + 360, v1);
  v5 = (*(v2 + 64) + **(v2 + 64));
  v3 = swift_task_alloc();
  v0[525] = v3;
  *v3 = v0;
  v3[1] = closure #1 in MLS.SwiftMLSClientCoordinator.joinGroup(identifier:otherMembers:welcome:context:);

  return v5(v1, v2);
}

{
  v1 = *(v0 + 4136);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 2880));

  v2 = *(v0 + 3808);
  v3 = *(v0 + 3656);
  v4 = *(v0 + 3648);

  swift_getErrorValue();
  v5 = Error.readableDescription.getter(*(v0 + 3104), *(v0 + 3112));
  closure #4 in closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:)(v5, v6, v3, v4, "SwiftMLSClientCoordinator joinGroup failed obtaining group information { identifier: %s, error: %s }");

  swift_getErrorValue();
  v7 = Error.readableDescription.getter(*(v0 + 3176), *(v0 + 3184));
  *(v0 + 4280) = v7;
  *(v0 + 4288) = v8;
  *(v0 + 3144) = 9;
  *(v0 + 3152) = v7;
  *(v0 + 3160) = v8;
  *(v0 + 4296) = lazy protocol witness table accessor for type MLS.GroupCreationError and conformance MLS.GroupCreationError();
  swift_willThrowTypedImpl();

  outlined destroy of NSObject?(v4, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

  outlined destroy of NSObject?(v4, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.joinGroup(identifier:otherMembers:welcome:context:), v2, 0);
}

{
  v1 = *(v0 + 4208);
  v2 = *(v0 + 4192);
  v3 = *(v0 + 4152);
  v4 = *(v0 + 4144);
  if (v2 >> 60 == 15)
  {
    v5 = 0xC000000000000000;
  }

  else
  {
    v5 = *(v0 + 4192);
  }

  if (v2 >> 60 == 15)
  {
    v6 = 0;
  }

  else
  {
    v6 = *(v0 + 4184);
  }

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 2880));

  outlined consume of Data._Representation(v4, v3);
  outlined consume of Data._Representation(v6, v5);
  v7 = *(v0 + 3808);
  v8 = *(v0 + 3656);
  v9 = *(v0 + 3648);

  swift_getErrorValue();
  v10 = Error.readableDescription.getter(*(v0 + 3104), *(v0 + 3112));
  closure #4 in closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:)(v10, v11, v8, v9, "SwiftMLSClientCoordinator joinGroup failed obtaining group information { identifier: %s, error: %s }");

  swift_getErrorValue();
  v12 = Error.readableDescription.getter(*(v0 + 3176), *(v0 + 3184));
  *(v0 + 4280) = v12;
  *(v0 + 4288) = v13;
  *(v0 + 3144) = 9;
  *(v0 + 3152) = v12;
  *(v0 + 3160) = v13;
  *(v0 + 4296) = lazy protocol witness table accessor for type MLS.GroupCreationError and conformance MLS.GroupCreationError();
  swift_willThrowTypedImpl();

  outlined destroy of NSObject?(v9, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

  outlined destroy of NSObject?(v9, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.joinGroup(identifier:otherMembers:welcome:context:), v7, 0);
}

{
  v1 = *(v0 + 4272);
  v2 = *(v0 + 4264);
  v3 = *(v0 + 4216);
  v4 = *(v0 + 4192);
  v5 = *(v0 + 4152);
  v6 = *(v0 + 4144);
  v18 = v6;
  v19 = v5;
  v7 = *(v0 + 4120);
  v17 = v7;
  v8 = *(v0 + 4104);
  v9 = *(v0 + 3680);
  v10 = *(v0 + 3672);
  v20 = *(v0 + 3648);
  v21 = *(v0 + 3808);
  if (v3 >> 60 == 15)
  {
    v11 = 0xC000000000000000;
  }

  else
  {
    v11 = *(v0 + 4216);
  }

  if (v3 >> 60 == 15)
  {
    v12 = 0;
  }

  else
  {
    v12 = *(v0 + 4224);
  }

  if (v4 >> 60 == 15)
  {
    v13 = 0xC000000000000000;
  }

  else
  {
    v13 = *(v0 + 4192);
  }

  if (v4 >> 60 == 15)
  {
    v14 = 0;
  }

  else
  {
    v14 = *(v0 + 4184);
  }

  if ((v8 & 0x100000000) != 0)
  {
    v15 = 1;
  }

  else
  {
    v15 = v8;
  }

  *(v0 + 120) = v10;
  *(v0 + 128) = v9;
  *(v0 + 136) = v15;
  *(v0 + 144) = v15;
  *(v0 + 152) = v7;
  *(v0 + 160) = v6;
  *(v0 + 168) = v5;
  *(v0 + 176) = v14;
  *(v0 + 184) = v13;
  *(v0 + 192) = v12;
  *(v0 + 200) = v11;
  *(v0 + 208) = v1;
  *(v0 + 216) = v2;
  outlined init with copy of MLS.Group(v0 + 120, v0 + 1056);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 2880));
  *(v0 + 16) = v10;
  *(v0 + 24) = v9;
  *(v0 + 32) = v15;
  *(v0 + 40) = v15;
  *(v0 + 48) = v17;
  *(v0 + 56) = v18;
  *(v0 + 64) = v19;
  *(v0 + 72) = v14;
  *(v0 + 80) = v13;
  *(v0 + 88) = v12;
  *(v0 + 96) = v11;
  *(v0 + 104) = v1;
  *(v0 + 112) = v2;
  outlined destroy of MLS.Group(v0 + 16);

  outlined destroy of NSObject?(v20, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

  outlined destroy of NSObject?(v20, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.joinGroup(identifier:otherMembers:welcome:context:), v21, 0);
}

{
  v49 = v0;
  v1 = *(v0 + 3648);
  outlined init with copy of MLS.OutgoingEventState?(v1, v0 + 2568, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);
  outlined init with copy of MLS.Group(v0 + 120, v0 + 1160);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  outlined destroy of NSObject?(v1, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);
  outlined destroy of MLS.Group(v0 + 120);
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 3872);
    v5 = *(v0 + 3864);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v42 = v7;
    *v6 = 136315394;
    *(v6 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v4, &v42);
    *(v6 + 12) = 2080;
    v8 = *(v0 + 168);
    v9 = *(v0 + 200);
    v46 = *(v0 + 184);
    v47 = v9;
    v48 = *(v0 + 216);
    v10 = *(v0 + 136);
    *v43 = *(v0 + 120);
    *&v43[16] = v10;
    v44 = *(v0 + 152);
    v45 = v8;
    outlined init with copy of MLS.Group(v0 + 120, v0 + 952);
    v11 = MLS.Group.description.getter();
    v13 = v12;
    v14 = v47;
    *(v0 + 288) = v46;
    *(v0 + 304) = v14;
    *(v0 + 320) = v48;
    v15 = *&v43[16];
    *(v0 + 224) = *v43;
    *(v0 + 240) = v15;
    v16 = v45;
    *(v0 + 256) = v44;
    *(v0 + 272) = v16;
    outlined destroy of MLS.Group(v0 + 224);
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v13, &v42);

    *(v6 + 14) = v17;
    _os_log_impl(&dword_264F1F000, v2, v3, "SwiftMLSClientCoordinator joinGroup returning processedContext to caller { identifier: %s, group: %s }", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v7, -1, -1);
    MEMORY[0x266755550](v6, -1, -1);
  }

  v18 = *(v0 + 3648);
  *(v0 + 3408) = *(v18 + 40);
  v19 = *(v0 + 3416);
  if (v19 >> 60 == 15)
  {
    v20 = *(v0 + 3872);
    v21 = *(v0 + 3864);
    v22 = *(v0 + 3688);
    v23 = *(v0 + 3664);
    v24 = *(v0 + 3656);
    v25 = (v24 + *(v0 + 3944));
    *(v0 + 3424) = *(v18 + 16);
    v26 = *(v23 + 32);
    *(v0 + 3041) = *(v23 + 41);
    *(v0 + 3032) = v26;

    outlined init with copy of MLS.OutgoingEventState?(v0 + 3424, v0 + 3440, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
    outlined init with copy of MLS.AllMember(v0 + 3032, v0 + 3064);
    v27 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC15SecureMessaging3MLSO9AllMemberO_SayAHGTt0g5Tf4g_n(v22);

    *(v0 + 2296) = *(v0 + 3032);
    *(v0 + 2305) = *(v0 + 3041);
    *&v43[7] = *(v0 + 3424);
    *(v0 + 2280) = v21;
    *(v0 + 2288) = v20;
    *(v0 + 2321) = *v43;
    *(v0 + 2336) = *&v43[15];
    *(v0 + 2344) = v27;
    *(v0 + 4320) = *(v24 + 96);
    v28 = *(v0 + 2328);
    *(v0 + 1608) = *(v0 + 2312);
    *(v0 + 1624) = v28;
    *(v0 + 1640) = v27;
    v29 = *(v0 + 2296);
    *(v0 + 1576) = *(v0 + 2280);
    *(v0 + 1592) = v29;
    *(v0 + 1672) = 1;
    outlined init with copy of ServerBag.MLS(v0 + 2760, v0 + 2960);
    *(v0 + 4328) = *v25;
    *(v0 + 4336) = v25[1];
    outlined init with copy of MLS.OutgoingEventState?(v0 + 2280, v0 + 1992, &_s15SecureMessaging3MLSO20IncomingGroupCreatedVy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20IncomingGroupCreatedVy_AC9AllMemberO10Foundation4DataVGMR);

    return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.joinGroup(identifier:otherMembers:welcome:context:), 0, 0);
  }

  else
  {
    v30 = *(v0 + 3976);
    v31 = (*(v0 + 3656) + *(v0 + 3944));
    v32 = *(v0 + 3408);
    v33 = v31[1];
    *(v0 + 3472) = *v31;
    *(v0 + 3480) = v33;
    v34 = *(v30 + 56);
    outlined init with copy of MLS.OutgoingEventState?(v0 + 3408, v0 + 3456, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);

    v41 = (v34 + *v34);
    v35 = swift_task_alloc();
    *(v0 + 4304) = v35;
    *v35 = v0;
    v35[1] = closure #1 in MLS.SwiftMLSClientCoordinator.joinGroup(identifier:otherMembers:welcome:context:);
    v36 = *(v0 + 4000);
    v37 = *(v0 + 3976);
    v38 = *(v0 + 3680);
    v39 = *(v0 + 3672);

    return v41(v32, v19, v39, v38, v0 + 3472, v36, v37);
  }
}

{
  v1 = *(v0 + 4256);
  v2 = *(v0 + 4216);
  v3 = *(v0 + 4192);
  v4 = *(v0 + 4152);
  v5 = *(v0 + 4144);
  if (v2 >> 60 == 15)
  {
    v6 = 0xC000000000000000;
  }

  else
  {
    v6 = *(v0 + 4216);
  }

  if (v2 >> 60 == 15)
  {
    v7 = 0;
  }

  else
  {
    v7 = *(v0 + 4224);
  }

  if (v3 >> 60 == 15)
  {
    v8 = 0xC000000000000000;
  }

  else
  {
    v8 = *(v0 + 4192);
  }

  if (v3 >> 60 == 15)
  {
    v9 = 0;
  }

  else
  {
    v9 = *(v0 + 4184);
  }

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 2880));

  outlined consume of Data._Representation(v5, v4);
  outlined consume of Data._Representation(v9, v8);
  outlined consume of Data._Representation(v7, v6);
  v10 = *(v0 + 3808);
  v11 = *(v0 + 3656);
  v12 = *(v0 + 3648);

  swift_getErrorValue();
  v13 = Error.readableDescription.getter(*(v0 + 3104), *(v0 + 3112));
  closure #4 in closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:)(v13, v14, v11, v12, "SwiftMLSClientCoordinator joinGroup failed obtaining group information { identifier: %s, error: %s }");

  swift_getErrorValue();
  v15 = Error.readableDescription.getter(*(v0 + 3176), *(v0 + 3184));
  *(v0 + 4280) = v15;
  *(v0 + 4288) = v16;
  *(v0 + 3144) = 9;
  *(v0 + 3152) = v15;
  *(v0 + 3160) = v16;
  *(v0 + 4296) = lazy protocol witness table accessor for type MLS.GroupCreationError and conformance MLS.GroupCreationError();
  swift_willThrowTypedImpl();

  outlined destroy of NSObject?(v12, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

  outlined destroy of NSObject?(v12, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.joinGroup(identifier:otherMembers:welcome:context:), v10, 0);
}

{
  v1 = v0[536];
  v2 = v0[535];
  v3 = v0[482];
  v4 = v0[481];
  v5 = v0[472];
  swift_allocError();
  *v6 = 9;
  *(v6 + 8) = v2;
  *(v6 + 16) = v1;
  outlined consume of Data._Representation(v4, v3);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 345);
  outlined destroy of NSObject?(v5, &_s8SwiftMLS0B0O5GroupO7MessageVSgMd, &_s8SwiftMLS0B0O5GroupO7MessageVSgMR);

  v7 = v0[1];

  return v7();
}

{
  v2 = *v1;
  *(*v1 + 4312) = v0;

  if (v0)
  {
    v3 = *(v2 + 3808);

    v4 = closure #1 in MLS.SwiftMLSClientCoordinator.joinGroup(identifier:otherMembers:welcome:context:);
  }

  else
  {
    v3 = *(v2 + 3808);

    v4 = closure #1 in MLS.SwiftMLSClientCoordinator.joinGroup(identifier:otherMembers:welcome:context:);
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{
  outlined destroy of NSObject?(v0 + 3408, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
  v11 = *(v0 + 3872);
  v1 = *(v0 + 3864);
  v2 = *(v0 + 3688);
  v3 = *(v0 + 3664);
  v4 = *(v0 + 3656);
  v5 = (v4 + *(v0 + 3944));
  *(v0 + 3424) = *(*(v0 + 3648) + 16);
  v6 = *(v3 + 32);
  *(v0 + 3041) = *(v3 + 41);
  *(v0 + 3032) = v6;

  outlined init with copy of MLS.OutgoingEventState?(v0 + 3424, v0 + 3440, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
  outlined init with copy of MLS.AllMember(v0 + 3032, v0 + 3064);
  v7 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC15SecureMessaging3MLSO9AllMemberO_SayAHGTt0g5Tf4g_n(v2);

  *(v0 + 2296) = *(v0 + 3032);
  *(v0 + 2305) = *(v0 + 3041);
  *&v12[7] = *(v0 + 3424);
  *(v0 + 2280) = v1;
  *(v0 + 2288) = v11;
  *(v0 + 2321) = *v12;
  *(v0 + 2336) = *&v12[15];
  *(v0 + 2344) = v7;
  *(v0 + 4320) = *(v4 + 96);
  v8 = *(v0 + 2328);
  *(v0 + 1608) = *(v0 + 2312);
  *(v0 + 1624) = v8;
  *(v0 + 1640) = v7;
  v9 = *(v0 + 2296);
  *(v0 + 1576) = *(v0 + 2280);
  *(v0 + 1592) = v9;
  *(v0 + 1672) = 1;
  outlined init with copy of ServerBag.MLS(v0 + 2760, v0 + 2960);
  *(v0 + 4328) = *v5;
  *(v0 + 4336) = v5[1];
  outlined init with copy of MLS.OutgoingEventState?(v0 + 2280, v0 + 1992, &_s15SecureMessaging3MLSO20IncomingGroupCreatedVy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20IncomingGroupCreatedVy_AC9AllMemberO10Foundation4DataVGMR);

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.joinGroup(identifier:otherMembers:welcome:context:), 0, 0);
}

{
  v1 = v0[373];
  v2 = v0[374];
  __swift_project_boxed_opaque_existential_1(v0 + 370, v1);
  v3 = *(v2 + 32);

  v6 = (v3 + *v3);
  v4 = swift_task_alloc();
  v0[543] = v4;
  *v4 = v0;
  v4[1] = closure #1 in MLS.SwiftMLSClientCoordinator.joinGroup(identifier:otherMembers:welcome:context:);

  return v6(v1, v2);
}

{
  v1 = v0[373];
  v2 = v0[374];
  __swift_project_boxed_opaque_existential_1(v0 + 370, v1);
  v5 = (*(v2 + 24) + **(v2 + 24));
  v3 = swift_task_alloc();
  v0[546] = v3;
  *v3 = v0;
  v3[1] = closure #1 in MLS.SwiftMLSClientCoordinator.joinGroup(identifier:otherMembers:welcome:context:);

  return v5(v1, v2);
}

{
  v0[565] = v0[544];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 370);

  v1 = v0[476];

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.joinGroup(identifier:otherMembers:welcome:context:), v1, 0);
}

{
  v2 = *v1;
  *(*v1 + 4392) = v0;

  if (v0)
  {
    v3 = *(v2 + 1608);
    *(v2 + 1936) = *(v2 + 1624);
    v4 = *(v2 + 1656);
    *(v2 + 1952) = *(v2 + 1640);
    *(v2 + 1968) = v4;
    v5 = *(v2 + 1592);
    *(v2 + 1888) = *(v2 + 1576);
    *(v2 + 1904) = v5;
    *(v2 + 1984) = *(v2 + 1672);
    *(v2 + 1920) = v3;
    outlined destroy of NSObject?(v2 + 1888, &_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);

    v6 = closure #1 in MLS.SwiftMLSClientCoordinator.joinGroup(identifier:otherMembers:welcome:context:);
  }

  else
  {
    v6 = closure #1 in MLS.SwiftMLSClientCoordinator.joinGroup(identifier:otherMembers:welcome:context:);
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

{
  v1 = v0[373];
  v2 = v0[374];
  __swift_project_boxed_opaque_existential_1(v0 + 370, v1);
  v5 = (*(v2 + 64) + **(v2 + 64));
  v3 = swift_task_alloc();
  v0[555] = v3;
  *v3 = v0;
  v3[1] = closure #1 in MLS.SwiftMLSClientCoordinator.joinGroup(identifier:otherMembers:welcome:context:);

  return v5(v1, v2);
}

{
  v0[565] = v0[549];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 370);

  v1 = v0[476];

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.joinGroup(identifier:otherMembers:welcome:context:), v1, 0);
}

{
  v1 = v0[554];
  v2 = v0[551];
  v3 = v0[550];
  if (v1 >> 60 == 15)
  {
    v4 = 0xC000000000000000;
  }

  else
  {
    v4 = v0[554];
  }

  if (v1 >> 60 == 15)
  {
    v5 = 0;
  }

  else
  {
    v5 = v0[553];
  }

  v0[565] = v0[556];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 370);

  outlined consume of Data._Representation(v3, v2);
  outlined consume of Data._Representation(v5, v4);
  v6 = v0[476];

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.joinGroup(identifier:otherMembers:welcome:context:), v6, 0);
}

{
  v1 = *(v0 + 4496);
  v2 = (v0 + 536);
  v3 = *(v0 + 4488);
  v25 = v3;
  v26 = v1;
  v4 = *(v0 + 4456);
  v5 = *(v0 + 4432);
  v6 = *(v0 + 4408);
  v7 = *(v0 + 4400);
  v23 = v7;
  v24 = v6;
  v8 = *(v0 + 4376);
  v22 = v8;
  v9 = *(v0 + 4360);
  v27 = *(v0 + 4320);
  v10 = *(v0 + 3680);
  v11 = *(v0 + 3672);
  if (v4 >> 60 == 15)
  {
    v12 = 0xC000000000000000;
  }

  else
  {
    v12 = *(v0 + 4456);
  }

  if (v4 >> 60 == 15)
  {
    v13 = 0;
  }

  else
  {
    v13 = *(v0 + 4464);
  }

  if (v5 >> 60 == 15)
  {
    v14 = 0xC000000000000000;
  }

  else
  {
    v14 = *(v0 + 4432);
  }

  if (v5 >> 60 == 15)
  {
    v15 = 0;
  }

  else
  {
    v15 = *(v0 + 4424);
  }

  if ((v9 & 0x100000000) != 0)
  {
    v16 = 1;
  }

  else
  {
    v16 = v9;
  }

  *(v0 + 744) = v11;
  *(v0 + 752) = v10;
  *(v0 + 760) = v16;
  *(v0 + 768) = v16;
  *(v0 + 776) = v8;
  *(v0 + 784) = v7;
  *(v0 + 792) = v6;
  *(v0 + 800) = v15;
  *(v0 + 808) = v14;
  *(v0 + 816) = v13;
  *(v0 + 824) = v12;
  *(v0 + 832) = v1;
  *(v0 + 840) = v3;
  outlined init with copy of MLS.Group(v0 + 744, v0 + 640);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 2960));
  *(v0 + 848) = v11;
  *(v0 + 856) = v10;
  *(v0 + 864) = v16;
  *(v0 + 872) = v16;
  *(v0 + 880) = v22;
  *(v0 + 888) = v23;
  *(v0 + 896) = v24;
  *(v0 + 904) = v15;
  *(v0 + 912) = v14;
  *(v0 + 920) = v13;
  *(v0 + 928) = v12;
  *(v0 + 936) = v26;
  *(v0 + 944) = v25;
  outlined destroy of MLS.Group(v0 + 848);
  v17 = *(v0 + 760);
  *v2 = *(v0 + 744);
  *(v0 + 552) = v17;
  *(v0 + 632) = *(v0 + 840);
  v18 = *(v0 + 824);
  *(v0 + 600) = *(v0 + 808);
  *(v0 + 616) = v18;
  v19 = *(v0 + 792);
  *(v0 + 568) = *(v0 + 776);
  *(v0 + 584) = v19;
  v28 = (*(*v27 + 384) + **(*v27 + 384));
  v20 = swift_task_alloc();
  *(v0 + 4504) = v20;
  *v20 = v0;
  v20[1] = closure #1 in MLS.SwiftMLSClientCoordinator.joinGroup(identifier:otherMembers:welcome:context:);

  return v28(v0 + 1576, v2, 1, 0);
}

{
  v2 = *v1;
  v3 = *v1 + 536;
  v4 = *v1 + 1576;
  *(*v1 + 4512) = v0;

  if (v0)
  {
    v5 = *(v2 + 3808);
    v7 = *(v3 + 16);
    v6 = *(v3 + 32);
    *(v2 + 432) = *v3;
    *(v2 + 448) = v7;
    *(v2 + 464) = v6;
    v9 = *(v3 + 64);
    v8 = *(v3 + 80);
    v10 = *(v3 + 48);
    *(v2 + 528) = *(v3 + 96);
    *(v2 + 496) = v9;
    *(v2 + 512) = v8;
    *(v2 + 480) = v10;
    outlined destroy of MLS.Group(v2 + 432);
    v12 = *(v4 + 16);
    v11 = *(v4 + 32);
    *(v2 + 1784) = *v4;
    *(v2 + 1800) = v12;
    *(v2 + 1816) = v11;
    v14 = *(v4 + 64);
    v13 = *(v4 + 80);
    v15 = *(v4 + 48);
    *(v2 + 1880) = *(v4 + 96);
    *(v2 + 1848) = v14;
    *(v2 + 1864) = v13;
    *(v2 + 1832) = v15;
    outlined destroy of NSObject?(v2 + 1784, &_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);

    v16 = closure #1 in MLS.SwiftMLSClientCoordinator.joinGroup(identifier:otherMembers:welcome:context:);
    v17 = v5;
  }

  else
  {
    v18 = *(v2 + 3808);
    v20 = *(v3 + 16);
    v19 = *(v3 + 32);
    *(v2 + 328) = *v3;
    *(v2 + 344) = v20;
    *(v2 + 360) = v19;
    v22 = *(v3 + 64);
    v21 = *(v3 + 80);
    v23 = *(v3 + 48);
    *(v2 + 424) = *(v3 + 96);
    *(v2 + 392) = v22;
    *(v2 + 408) = v21;
    *(v2 + 376) = v23;
    outlined destroy of MLS.Group(v2 + 328);
    v25 = *(v4 + 16);
    v24 = *(v4 + 32);
    *(v2 + 1680) = *v4;
    *(v2 + 1696) = v25;
    *(v2 + 1712) = v24;
    v27 = *(v4 + 64);
    v26 = *(v4 + 80);
    v28 = *(v4 + 96);
    *(v2 + 1728) = *(v4 + 48);
    *(v2 + 1776) = v28;
    *(v2 + 1760) = v26;
    *(v2 + 1744) = v27;
    outlined destroy of NSObject?(v2 + 1680, &_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
    v16 = closure #1 in MLS.SwiftMLSClientCoordinator.joinGroup(identifier:otherMembers:welcome:context:);
    v17 = v18;
  }

  return MEMORY[0x2822009F8](v16, v17, 0);
}

{
  v1 = v0[557];
  v2 = v0[554];
  v3 = v0[551];
  v4 = v0[550];
  if (v1 >> 60 == 15)
  {
    v5 = 0xC000000000000000;
  }

  else
  {
    v5 = v0[557];
  }

  if (v1 >> 60 == 15)
  {
    v6 = 0;
  }

  else
  {
    v6 = v0[558];
  }

  if (v2 >> 60 == 15)
  {
    v7 = 0xC000000000000000;
  }

  else
  {
    v7 = v0[554];
  }

  if (v2 >> 60 == 15)
  {
    v8 = 0;
  }

  else
  {
    v8 = v0[553];
  }

  v0[565] = v0[560];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 370);

  outlined consume of Data._Representation(v4, v3);
  outlined consume of Data._Representation(v8, v7);
  outlined consume of Data._Representation(v6, v5);
  v9 = v0[476];

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.joinGroup(identifier:otherMembers:welcome:context:), v9, 0);
}

{
  v1 = v0[472];
  outlined consume of Data._Representation(v0[481], v0[482]);
  outlined destroy of MLS.Group((v0 + 15));
  outlined destroy of NSObject?((v0 + 285), &_s15SecureMessaging3MLSO20IncomingGroupCreatedVy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20IncomingGroupCreatedVy_AC9AllMemberO10Foundation4DataVGMR);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 345);
  outlined destroy of NSObject?(v1, &_s8SwiftMLS0B0O5GroupO7MessageVSgMd, &_s8SwiftMLS0B0O5GroupO7MessageVSgMR);

  v2 = v0[1];

  return v2();
}

{
  v1 = *(v0 + 3776);
  v2 = *(v0 + 3640);
  outlined consume of Data._Representation(*(v0 + 3848), *(v0 + 3856));
  outlined destroy of NSObject?(v0 + 2280, &_s15SecureMessaging3MLSO20IncomingGroupCreatedVy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20IncomingGroupCreatedVy_AC9AllMemberO10Foundation4DataVGMR);
  v3 = *(v0 + 3608);
  *v2 = *(v0 + 3424);
  v4 = *(v0 + 216);
  v5 = *(v0 + 200);
  v6 = *(v0 + 184);
  *(v2 + 64) = *(v0 + 168);
  *(v2 + 80) = v6;
  *(v2 + 96) = v5;
  *(v2 + 112) = v4;
  v7 = *(v0 + 152);
  v8 = *(v0 + 136);
  *(v2 + 16) = *(v0 + 120);
  *(v2 + 32) = v8;
  *(v2 + 48) = v7;
  *(v2 + 120) = v3;
  outlined init with copy of MLS.OutgoingEventState?(v0 + 3424, v0 + 3536, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 2760));
  outlined destroy of NSObject?(v1, &_s8SwiftMLS0B0O5GroupO7MessageVSgMd, &_s8SwiftMLS0B0O5GroupO7MessageVSgMR);

  v9 = *(v0 + 8);

  return v9();
}

{
  v1 = v0[472];
  outlined consume of Data._Representation(v0[481], v0[482]);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 345);
  outlined destroy of NSObject?(v1, &_s8SwiftMLS0B0O5GroupO7MessageVSgMd, &_s8SwiftMLS0B0O5GroupO7MessageVSgMR);

  v2 = v0[1];

  return v2();
}

{
  v1 = v0[472];
  outlined consume of Data._Representation(v0[481], v0[482]);
  outlined destroy of MLS.Group((v0 + 15));
  outlined destroy of NSObject?((v0 + 426), &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 345);
  outlined destroy of NSObject?(v1, &_s8SwiftMLS0B0O5GroupO7MessageVSgMd, &_s8SwiftMLS0B0O5GroupO7MessageVSgMR);

  v2 = v0[1];

  return v2();
}

{
  v1 = v0[472];
  outlined consume of Data._Representation(v0[481], v0[482]);
  outlined destroy of MLS.Group((v0 + 15));
  outlined destroy of NSObject?((v0 + 285), &_s15SecureMessaging3MLSO20IncomingGroupCreatedVy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20IncomingGroupCreatedVy_AC9AllMemberO10Foundation4DataVGMR);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 345);
  outlined destroy of NSObject?(v1, &_s8SwiftMLS0B0O5GroupO7MessageVSgMd, &_s8SwiftMLS0B0O5GroupO7MessageVSgMR);

  v2 = v0[1];

  return v2();
}