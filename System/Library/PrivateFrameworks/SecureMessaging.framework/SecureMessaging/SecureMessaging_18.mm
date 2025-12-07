uint64_t closure #1 in MLS.SwiftMLSClientCoordinator.retry(eventState:forGroupIdentifier:)(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 7832) = a1;
  *(v3 + 7840) = a2;

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.retry(eventState:forGroupIdentifier:), 0, 0);
}

{
  v6 = *v3;
  *(v6 + 7856) = v2;

  if (v2)
  {
    *(v6 + 928) = *(v6 + 1112);
    v7 = *(v6 + 1080);
    *(v6 + 880) = *(v6 + 1064);
    *(v6 + 896) = v7;
    *(v6 + 912) = *(v6 + 1096);
    v8 = *(v6 + 1016);
    *(v6 + 816) = *(v6 + 1000);
    *(v6 + 832) = v8;
    v9 = *(v6 + 1048);
    *(v6 + 848) = *(v6 + 1032);
    *(v6 + 864) = v9;
    v10 = *(v6 + 952);
    *(v6 + 752) = *(v6 + 936);
    *(v6 + 768) = v10;
    v11 = *(v6 + 984);
    *(v6 + 784) = *(v6 + 968);
    *(v6 + 800) = v11;
    outlined destroy of NSObject?(v6 + 752, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);

    return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.retry(eventState:forGroupIdentifier:), 0, 0);
  }

  else
  {
    v12 = *(v6 + 7744);
    v13 = *(v6 + 7736);
    v21 = *(v6 + 7728);
    *(v6 + 7864) = a2;
    *(v6 + 7872) = a1;
    ObjectType = swift_getObjectType();
    *(v6 + 7168) = v13;
    *(v6 + 7176) = v12;
    v20 = (*(v21 + 64) + **(v21 + 64));
    v15 = swift_task_alloc();
    *(v6 + 7880) = v15;
    *v15 = v6;
    v15[1] = closure #1 in MLS.SwiftMLSClientCoordinator.retry(eventState:forGroupIdentifier:);
    v16 = *(v6 + 7728);
    v17 = *(v6 + 7424);
    v18 = *(v6 + 7416);

    return v20(v18, v17, v6 + 7168, ObjectType, v16);
  }
}

{
  v6 = *v3;
  *(*v3 + 7888) = v2;

  if (v2)
  {
    *(v6 + 744) = *(v6 + 1112);
    v7 = *(v6 + 1080);
    *(v6 + 696) = *(v6 + 1064);
    *(v6 + 712) = v7;
    *(v6 + 728) = *(v6 + 1096);
    v8 = *(v6 + 1016);
    *(v6 + 632) = *(v6 + 1000);
    *(v6 + 648) = v8;
    v9 = *(v6 + 1048);
    *(v6 + 664) = *(v6 + 1032);
    *(v6 + 680) = v9;
    v10 = *(v6 + 952);
    *(v6 + 568) = *(v6 + 936);
    *(v6 + 584) = v10;
    v11 = *(v6 + 984);
    *(v6 + 600) = *(v6 + 968);
    *(v6 + 616) = v11;
    outlined destroy of NSObject?(v6 + 568, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
    v12 = closure #1 in MLS.SwiftMLSClientCoordinator.retry(eventState:forGroupIdentifier:);
  }

  else
  {
    *(v6 + 7896) = a2;
    *(v6 + 7904) = a1;
    v12 = closure #1 in MLS.SwiftMLSClientCoordinator.retry(eventState:forGroupIdentifier:);
  }

  return MEMORY[0x2822009F8](v12, 0, 0);
}

uint64_t closure #1 in closure #1 in MLS.SwiftMLSClientCoordinator.retry(eventState:forGroupIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[86] = a4;
  v4[85] = a3;
  v4[84] = a2;
  v4[83] = a1;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v5 = static MLSActor.shared;
  v4[87] = static MLSActor.shared;

  return MEMORY[0x2822009F8](closure #1 in closure #1 in MLS.SwiftMLSClientCoordinator.retry(eventState:forGroupIdentifier:), v5, 0);
}

uint64_t closure #1 in closure #1 in MLS.SwiftMLSClientCoordinator.retry(eventState:forGroupIdentifier:)()
{
  v21 = v0;
  v1 = v0[83];
  v2 = v1[1];
  v0[2] = *v1;
  v0[88] = v2;
  v0[3] = v2;
  _s15SecureMessaging3MLSO19OutgoingEventUpdateOWOi0_((v0 + 2));

  outlined init with copy of MLS.OutgoingEventState(v1, (v0 + 72));

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  outlined destroy of MLS.OutgoingEventState(v1);

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[86];
    v6 = v0[85];
    v7 = v0[83];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v20 = v9;
    *v8 = 136315394;
    *(v8 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v7 + 40), *(v7 + 48), &v20);
    *(v8 + 12) = 2080;
    *(v8 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v5, &v20);
    _os_log_impl(&dword_264F1F000, v3, v4, "SwiftMLSClientCoordinator retry called on missing group { identifier: %s, group: %s }", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v9, -1, -1);
    MEMORY[0x266755550](v8, -1, -1);
  }

  v10 = v0[84];
  v11 = *(v10 + 88);
  ObjectType = swift_getObjectType();
  memcpy(v0 + 37, v0 + 2, 0x118uLL);
  v13 = *(v10 + direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier + 8);
  v0[81] = *(v10 + direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier);
  v0[82] = v13;
  v14 = *(v11 + 112);

  v19 = (v14 + *v14);
  v15 = swift_task_alloc();
  v0[89] = v15;
  *v15 = v0;
  v15[1] = closure #1 in closure #1 in MLS.SwiftMLSClientCoordinator.retry(eventState:forGroupIdentifier:);
  v16 = v0[86];
  v17 = v0[85];

  return (v19)(v0 + 37, v17, v16, v0 + 81, ObjectType, v11);
}

{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 696);

    v4 = v3;
  }

  else
  {
    v5 = *(v2 + 696);

    v4 = v5;
  }

  return MEMORY[0x2822009F8](closure #1 in closure #1 in MLS.SwiftMLSClientCoordinator.retry(eventState:forGroupIdentifier:), v4, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t closure #3 in closure #1 in MLS.SwiftMLSClientCoordinator.retry(eventState:forGroupIdentifier:)()
{
  v0 = type metadata accessor for MLS.Identity.Credential();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  MLS.Identity.SigningIdentity.credential.getter();
  v4 = MLS.Identity.Credential.isExpired.getter();
  (*(v1 + 8))(v3, v0);
  return v4 & 1;
}

uint64_t MLS.SwiftMLSClientCoordinator.sendSelfHeal(groupIdentifier:eventIdentifier:swiftMLSGroup:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[70] = v6;
  v7[69] = a6;
  v7[68] = a5;
  v7[67] = a4;
  v7[66] = a3;
  v7[65] = a2;
  v7[64] = a1;
  type metadata accessor for MLS.KeyPackageProvider(0);
  v7[71] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v8 = static MLSActor.shared;
  v7[72] = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.SwiftMLSClientCoordinator.sendSelfHeal(groupIdentifier:eventIdentifier:swiftMLSGroup:), v8, 0);
}

uint64_t MLS.SwiftMLSClientCoordinator.sendSelfHeal(groupIdentifier:eventIdentifier:swiftMLSGroup:)()
{
  v39 = v0;

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 544);
    v4 = *(v0 + 536);
    v5 = *(v0 + 528);
    v6 = *(v0 + 520);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v38 = v8;
    *v7 = 136315394;
    *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v4, v3, &v38);
    *(v7 + 12) = 2080;
    *(v7 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v5, &v38);
    _os_log_impl(&dword_264F1F000, v1, v2, "SwiftMLSClientCoordinator sendSelfHeal { identifier: %s, groupIdentifier: %s }", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v8, -1, -1);
    MEMORY[0x266755550](v7, -1, -1);
  }

  v9 = *(v0 + 568);
  v10 = *(v0 + 560);
  v26 = *(v0 + 544);
  v33 = *(v0 + 536);
  v31 = v9;
  v32 = *(v0 + 528);
  v30 = *(v0 + 520);
  v27 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_15SecureMessaging15MetricCollectorV5EventVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  *(v0 + 584) = v27;
  outlined init with copy of MLS.SwiftMLSClientPicker(v10 + 16, v0 + 360);
  v25 = *(v10 + direct field offset for MLS.SwiftMLSClientCoordinator.groupLoader);
  v28 = *(v10 + 96);
  v37 = *(v10 + 80);
  outlined init with copy of MLS.KeyPackageProvider(v10 + direct field offset for MLS.SwiftMLSClientCoordinator.keyPackageProvider, v9);
  outlined init with copy of ServerBag.MLS(v10 + 104, v0 + 408);
  v11 = *(v10 + direct field offset for MLS.SwiftMLSClientCoordinator.selfMember);
  v12 = *(v10 + direct field offset for MLS.SwiftMLSClientCoordinator.selfMember + 8);
  v13 = *(v10 + direct field offset for MLS.SwiftMLSClientCoordinator.selfMember + 16);
  v35 = *(v10 + direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier);
  v29 = *(v10 + direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier + 8);
  v14 = *(v10 + direct field offset for MLS.SwiftMLSClientCoordinator.selfMember + 24);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO17SelfHealOperationCy_AC05GroupF5ErrorVAC0gF7ContextVy_10Foundation4DataVGAC0gf9ProcessedI0Vy_ALGGMd, &_s15SecureMessaging3MLSO17SelfHealOperationCy_AC05GroupF5ErrorVAC0gF7ContextVy_10Foundation4DataVGAC0gf9ProcessedI0Vy_ALGGMR);
  v15 = swift_allocObject();
  *(v0 + 592) = v15;

  swift_unknownObjectRetain();

  outlined copy of MLS.AllMember(v11, v12);

  Logger.init(subsystem:category:)();
  *(v15 + 48) = xmmword_2651B5F50;
  v16 = *(v0 + 376);
  *(v15 + 72) = *(v0 + 360);
  *(v15 + 16) = v30;
  *(v15 + 24) = v32;
  *(v15 + 32) = v33;
  *(v15 + 40) = v26;
  *(v15 + 64) = v27;
  *(v15 + 88) = v16;
  *(v15 + 97) = *(v0 + 385);
  *(v15 + 120) = v25;
  *(v15 + 128) = v37;
  *(v15 + 144) = v28;
  *(v15 + 152) = &protocol witness table for MLS.EventSender<A, B>;
  outlined init with take of MLS.KeyPackageProvider(v31, v15 + *(*v15 + 176), type metadata accessor for MLS.KeyPackageProvider);
  outlined init with take of MLS.KeyUpdatePolicy((v0 + 408), v15 + *(*v15 + 184));
  v17 = v15 + *(*v15 + 192);
  *v17 = v11;
  *(v17 + 8) = v12;
  *(v17 + 16) = v13;
  *(v17 + 24) = v14;
  v18 = (v15 + *(*v15 + 200));
  *v18 = v35;
  v18[1] = v29;
  v19 = *(v10 + direct field offset for MLS.SwiftMLSClientCoordinator.runner);
  *(v0 + 496) = v15;
  *(v0 + 504) = v27;
  *(v0 + 456) = 0;
  *(v0 + 464) = 0;
  *(v0 + 448) = 0;
  v20 = *(*v19 + 224);

  v36 = (v20 + *v20);
  v21 = swift_task_alloc();
  *(v0 + 600) = v21;
  v22 = lazy protocol witness table accessor for type MLS.KeyPackageRetrievalResult<MLS.AllMember> and conformance MLS.KeyPackageRetrievalResult<A>(&lazy protocol witness table cache variable for type MLS.SelfHealOperation<MLS.GroupOperationError, MLS.GroupOperationContext<Data>, MLS.GroupOperationProcessedContext<Data>> and conformance MLS.SelfHealOperation<A, B, C>, &_s15SecureMessaging3MLSO17SelfHealOperationCy_AC05GroupF5ErrorVAC0gF7ContextVy_10Foundation4DataVGAC0gf9ProcessedI0Vy_ALGGMd, &_s15SecureMessaging3MLSO17SelfHealOperationCy_AC05GroupF5ErrorVAC0gF7ContextVy_10Foundation4DataVGAC0gf9ProcessedI0Vy_ALGGMR, &protocol conformance descriptor for MLS.SelfHealOperation<A, B, C>);
  *v21 = v0;
  v21[1] = MLS.SwiftMLSClientCoordinator.sendSelfHeal(groupIdentifier:eventIdentifier:swiftMLSGroup:);
  v23 = *(v0 + 552);

  return v36(v0 + 16, v0 + 496, v0 + 504, v23, v0 + 448, v34, v22, v0 + 472);
}

{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 576);
    v4 = MLS.SwiftMLSClientCoordinator.sendSelfHeal(groupIdentifier:eventIdentifier:swiftMLSGroup:);
  }

  else
  {
    v5 = *(v2 + 576);

    v4 = MLS.SwiftMLSClientCoordinator.sendSelfHeal(groupIdentifier:eventIdentifier:swiftMLSGroup:);
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{
  v1 = *(v0 + 512);

  v2 = *(v0 + 96);
  *(v0 + 200) = *(v0 + 80);
  *(v0 + 216) = v2;
  *(v0 + 232) = *(v0 + 112);
  v3 = *(v0 + 32);
  *(v0 + 136) = *(v0 + 16);
  *(v0 + 152) = v3;
  v4 = *(v0 + 64);
  *(v0 + 168) = *(v0 + 48);
  *(v0 + 248) = *(v0 + 128);
  *(v0 + 184) = v4;
  outlined init with copy of MLS.EventQueue.Result(v0 + 144, v0 + 256);
  outlined destroy of MLS.OperationRunner.OnQueueRunResult(v0 + 136);
  v6 = *(v0 + 160);
  v5 = *(v0 + 176);
  *v1 = *(v0 + 144);
  *(v1 + 16) = v6;
  *(v1 + 32) = v5;
  v8 = *(v0 + 208);
  v7 = *(v0 + 224);
  v9 = *(v0 + 192);
  *(v1 + 96) = *(v0 + 240);
  *(v1 + 64) = v8;
  *(v1 + 80) = v7;
  *(v1 + 48) = v9;

  v10 = *(v0 + 8);

  return v10();
}

{
  v1 = *(v0 + 472);
  v2 = *(v0 + 480);
  v3 = *(v0 + 488);
  lazy protocol witness table accessor for type MLS.GroupOperationError and conformance MLS.GroupOperationError();
  swift_allocError();
  *v4 = v1;
  *(v4 + 8) = v2;
  *(v4 + 16) = v3;

  v5 = *(v0 + 8);

  return v5();
}

uint64_t MLS.SwiftMLSClientCoordinator.sendNewEra(groupIdentifier:eventIdentifier:swiftMLSGroup:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[63] = a6;
  v7[64] = v6;
  v7[61] = a4;
  v7[62] = a5;
  v7[59] = a2;
  v7[60] = a3;
  v7[58] = a1;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v8 = static MLSActor.shared;
  v7[65] = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.SwiftMLSClientCoordinator.sendNewEra(groupIdentifier:eventIdentifier:swiftMLSGroup:), v8, 0);
}

uint64_t MLS.SwiftMLSClientCoordinator.sendNewEra(groupIdentifier:eventIdentifier:swiftMLSGroup:)()
{
  v29 = v0;

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v4 = v0[61];
    v3 = v0[62];
    v6 = v0[59];
    v5 = v0[60];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v28 = v8;
    *v7 = 136315394;
    *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v4, v3, &v28);
    *(v7 + 12) = 2080;
    *(v7 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v5, &v28);
    _os_log_impl(&dword_264F1F000, v1, v2, "SwiftMLSClientCoordinator sendNewEra { identifier: %s, groupIdentifier: %s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v8, -1, -1);
    MEMORY[0x266755550](v7, -1, -1);
  }

  v9 = v0[64];
  v10 = v0[62];
  v25 = v0[61];
  v27 = v0[63];
  v24 = v0[60];
  v22 = v0[59];
  v11 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_15SecureMessaging15MetricCollectorV5EventVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v0[66] = v11;
  v12 = *(v9 + 96);
  v13 = *(v9 + direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier + 8);
  v23 = *(v9 + direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO23EraAdvancementOperationCy_AC05GroupF5ErrorVAC0gF7ContextVy_10Foundation4DataVGAC0gf9ProcessedI0Vy_ALGGMd, &_s15SecureMessaging3MLSO23EraAdvancementOperationCy_AC05GroupF5ErrorVAC0gF7ContextVy_10Foundation4DataVGAC0gf9ProcessedI0Vy_ALGGMR);
  v15 = swift_allocObject();

  v21 = *(v9 + 80);
  v0[67] = v15;
  swift_unknownObjectRetain();

  Logger.init(subsystem:category:)();
  *(v15 + 16) = v22;
  *(v15 + 24) = v24;
  *(v15 + 32) = v25;
  *(v15 + 40) = v10;
  *(v15 + 48) = xmmword_2651B5F50;
  *(v15 + 64) = v11;
  *(v15 + 72) = v21;
  *(v15 + 88) = v12;
  *(v15 + 96) = &protocol witness table for MLS.EventSender<A, B>;
  *(v15 + 104) = v23;
  *(v15 + 112) = v13;
  v16 = *(v9 + direct field offset for MLS.SwiftMLSClientCoordinator.runner);
  v0[56] = v15;
  v0[57] = v11;
  outlined init with copy of ServerBag.MLS(v27, (v0 + 45));
  v0[51] = 0;
  v0[52] = 0;
  v0[50] = 0;
  v17 = *(*v16 + 224);

  v26 = (v17 + *v17);
  v18 = swift_task_alloc();
  v0[68] = v18;
  v19 = lazy protocol witness table accessor for type MLS.KeyPackageRetrievalResult<MLS.AllMember> and conformance MLS.KeyPackageRetrievalResult<A>(&lazy protocol witness table cache variable for type MLS.EraAdvancementOperation<MLS.GroupOperationError, MLS.GroupOperationContext<Data>, MLS.GroupOperationProcessedContext<Data>> and conformance MLS.EraAdvancementOperation<A, B, C>, &_s15SecureMessaging3MLSO23EraAdvancementOperationCy_AC05GroupF5ErrorVAC0gF7ContextVy_10Foundation4DataVGAC0gf9ProcessedI0Vy_ALGGMd, &_s15SecureMessaging3MLSO23EraAdvancementOperationCy_AC05GroupF5ErrorVAC0gF7ContextVy_10Foundation4DataVGAC0gf9ProcessedI0Vy_ALGGMR, &protocol conformance descriptor for MLS.EraAdvancementOperation<A, B, C>);
  *v18 = v0;
  v18[1] = MLS.SwiftMLSClientCoordinator.sendNewEra(groupIdentifier:eventIdentifier:swiftMLSGroup:);

  return (v26)(v0 + 2, v0 + 56, v0 + 57, v0 + 45, v0 + 50, v14, v19, v0 + 53);
}

{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 520);
    outlined destroy of NSObject?(v2 + 360, &_s15SecureMessaging3MLSO21SwiftMLSGroupProtocol_pSgMd, &_s15SecureMessaging3MLSO21SwiftMLSGroupProtocol_pSgMR);
    v4 = MLS.SwiftMLSClientCoordinator.sendNewEra(groupIdentifier:eventIdentifier:swiftMLSGroup:);
    v5 = v3;
  }

  else
  {
    v6 = *(v2 + 520);
    outlined destroy of NSObject?(v2 + 360, &_s15SecureMessaging3MLSO21SwiftMLSGroupProtocol_pSgMd, &_s15SecureMessaging3MLSO21SwiftMLSGroupProtocol_pSgMR);

    v4 = MLS.SwiftMLSClientCoordinator.sendNewEra(groupIdentifier:eventIdentifier:swiftMLSGroup:);
    v5 = v6;
  }

  return MEMORY[0x2822009F8](v4, v5, 0);
}

{
  v1 = *(v0 + 464);

  v2 = *(v0 + 96);
  *(v0 + 200) = *(v0 + 80);
  *(v0 + 216) = v2;
  *(v0 + 232) = *(v0 + 112);
  v3 = *(v0 + 32);
  *(v0 + 136) = *(v0 + 16);
  *(v0 + 152) = v3;
  v4 = *(v0 + 64);
  *(v0 + 168) = *(v0 + 48);
  *(v0 + 248) = *(v0 + 128);
  *(v0 + 184) = v4;
  outlined init with copy of MLS.EventQueue.Result(v0 + 144, v0 + 256);
  outlined destroy of MLS.OperationRunner.OnQueueRunResult(v0 + 136);
  v6 = *(v0 + 160);
  v5 = *(v0 + 176);
  *v1 = *(v0 + 144);
  *(v1 + 16) = v6;
  *(v1 + 32) = v5;
  v8 = *(v0 + 208);
  v7 = *(v0 + 224);
  v9 = *(v0 + 192);
  *(v1 + 96) = *(v0 + 240);
  *(v1 + 64) = v8;
  *(v1 + 80) = v7;
  *(v1 + 48) = v9;
  v10 = *(v0 + 8);

  return v10();
}

{
  v1 = *(v0 + 424);
  v2 = *(v0 + 432);
  v3 = *(v0 + 440);
  lazy protocol witness table accessor for type MLS.GroupOperationError and conformance MLS.GroupOperationError();
  swift_allocError();
  *v4 = v1;
  *(v4 + 8) = v2;
  *(v4 + 16) = v3;

  v5 = *(v0 + 8);

  return v5();
}

uint64_t MLS.SwiftMLSClientCoordinator.sendFailureToDecrypt(groupIdentifier:ftdInfo:)(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  *(v5 + 2816) = v4;
  *(v5 + 2808) = a3;
  *(v5 + 2800) = a2;
  *(v5 + 2792) = a1;
  v7 = type metadata accessor for MLS.Group.GroupInfo();
  *(v5 + 2824) = v7;
  *(v5 + 2832) = *(v7 - 8);
  *(v5 + 2840) = swift_task_alloc();
  v8 = a4[1];
  *(v5 + 2480) = *a4;
  *(v5 + 2496) = v8;
  v9 = a4[3];
  *(v5 + 2512) = a4[2];
  *(v5 + 2528) = v9;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v10 = static MLSActor.shared;
  *(v5 + 2848) = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.SwiftMLSClientCoordinator.sendFailureToDecrypt(groupIdentifier:ftdInfo:), v10, 0);
}

void MLS.SwiftMLSClientCoordinator.sendFailureToDecrypt(groupIdentifier:ftdInfo:)(uint64_t a1)
{
  *(v1 + 2856) = direct field offset for MLS.SwiftMLSClientCoordinator.logger;
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_264F1F000, v2, v3, "SwiftMLSClientCoordinator sendFailureToDecrypt", v4, 2u);
    MEMORY[0x266755550](v4, -1, -1);
  }

  v25 = *(v1 + 2816);

  v5 = [objc_allocWithZone(MEMORY[0x277CCAD78]) init];
  v6 = [v5 UUIDString];

  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  *(v1 + 2864) = v7;
  *(v1 + 2872) = v9;
  v10 = *(v1 + 2528);
  v11 = *(v1 + 2536);
  swift_bridgeObjectRetain_n();
  outlined copy of Data?(v10, v11);
  v12 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_15SecureMessaging15MetricCollectorV5EventVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v13 = *(v1 + 2480);
  v21 = *(v1 + 2488);
  v22 = v12;
  v14 = *(v1 + 2496);
  v15 = *(v1 + 2512);
  v16 = *(v1 + 2520);
  v17 = *(v1 + 2504);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_2651D82E0;
  *(v18 + 32) = v15;
  *(v18 + 40) = v16;
  *(v1 + 1488) = v7;
  *(v1 + 1496) = v9;
  *(v1 + 1504) = v7;
  *(v1 + 1512) = v9;
  *(v1 + 1520) = v10;
  *(v1 + 1528) = v11;
  *(v1 + 1536) = v22;
  *(v1 + 1544) = v13;
  *(v1 + 1552) = v21;
  *(v1 + 1560) = v14;
  *(v1 + 1568) = v17;
  *(v1 + 1576) = v15;
  *(v1 + 1584) = v16;
  *(v1 + 1592) = v18;
  v19 = *(**(v25 + direct field offset for MLS.SwiftMLSClientCoordinator.groupLoader) + 192);
  swift_bridgeObjectRetain_n();
  outlined copy of MLS.AllMember(v13, v21);
  v23 = v19 + *v19;
  v20 = swift_task_alloc();
  *(v1 + 2880) = v20;
  lazy protocol witness table accessor for type MLS.GroupOperationError and conformance MLS.GroupOperationError();
  *v20 = v1;
  v20[1] = MLS.SwiftMLSClientCoordinator.sendFailureToDecrypt(groupIdentifier:ftdInfo:);

  __asm { BRAA            X8, X16 }
}

uint64_t MLS.SwiftMLSClientCoordinator.sendFailureToDecrypt(groupIdentifier:ftdInfo:)()
{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 2848);

    v4 = MLS.SwiftMLSClientCoordinator.sendFailureToDecrypt(groupIdentifier:ftdInfo:);
    v5 = v3;
  }

  else
  {
    v5 = *(v2 + 2848);
    v4 = MLS.SwiftMLSClientCoordinator.sendFailureToDecrypt(groupIdentifier:ftdInfo:);
  }

  return MEMORY[0x2822009F8](v4, v5, 0);
}

{
  v23 = v0;

  outlined init with copy of MLS.QueuedFTDInfo(v0 + 2480, v0 + 2544);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  outlined destroy of MLS.QueuedFTDInfo(v0 + 2480);
  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 2872);
    v4 = *(v0 + 2864);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v22 = v6;
    *v5 = 136315394;
    v7 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v4, v3, &v22);

    *(v5 + 4) = v7;
    *(v5 + 12) = 2080;
    v8 = *(v0 + 2496);
    *(v0 + 2608) = *(v0 + 2480);
    *(v0 + 2624) = v8;
    v9 = *(v0 + 2528);
    *(v0 + 2640) = *(v0 + 2512);
    *(v0 + 2656) = v9;
    outlined init with copy of MLS.QueuedFTDInfo(v0 + 2480, v0 + 2416);
    v10 = String.init<A>(describing:)();
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v22);

    *(v5 + 14) = v12;
    _os_log_impl(&dword_264F1F000, v1, v2, "SwiftMLSClientCoordinator sendFailureToDecrypt sending outgoing event { eventUUID: %s, ftdInfo: %s }", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v6, -1, -1);
    MEMORY[0x266755550](v5, -1, -1);
  }

  else
  {
  }

  v13 = *(v0 + 2816);
  *(v0 + 2888) = v13[12];
  *(v0 + 248) = *(v0 + 1536);
  v14 = *(v0 + 1568);
  *(v0 + 264) = *(v0 + 1552);
  *(v0 + 280) = v14;
  *(v0 + 296) = *(v0 + 1584);
  *(v0 + 200) = *(v0 + 1488);
  *(v0 + 216) = *(v0 + 1504);
  *(v0 + 232) = *(v0 + 1520);
  _s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGWOi5_(v0 + 200);
  v15 = *(v0 + 344);
  *(v0 + 512) = *(v0 + 328);
  *(v0 + 528) = v15;
  *(v0 + 544) = *(v0 + 360);
  *(v0 + 560) = *(v0 + 376);
  v16 = *(v0 + 280);
  *(v0 + 448) = *(v0 + 264);
  *(v0 + 464) = v16;
  v17 = *(v0 + 312);
  *(v0 + 480) = *(v0 + 296);
  *(v0 + 496) = v17;
  v18 = *(v0 + 216);
  *(v0 + 384) = *(v0 + 200);
  *(v0 + 400) = v18;
  v19 = *(v0 + 248);
  *(v0 + 416) = *(v0 + 232);
  *(v0 + 432) = v19;
  outlined init with copy of ServerBag.MLS(v0 + 2712, v0 + 2672);
  *(v0 + 2896) = v13[10];
  *(v0 + 2904) = v13[11];
  v20 = v13 + direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier;
  *(v0 + 2912) = *(v13 + direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier);
  *(v0 + 2920) = *(v20 + 1);
  outlined init with copy of MLS.OutgoingEventState?(v0 + 1488, v0 + 1600, &_s15SecureMessaging3MLSO27OutgoingFailureToDecrypt_v2Vy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO27OutgoingFailureToDecrypt_v2Vy_AC9AllMemberO10Foundation4DataVGMR);

  return MEMORY[0x2822009F8](MLS.SwiftMLSClientCoordinator.sendFailureToDecrypt(groupIdentifier:ftdInfo:), 0, 0);
}

{
  v1 = v0[337];
  v2 = v0[338];
  __swift_project_boxed_opaque_existential_1(v0 + 334, v1);
  v3 = *(v2 + 32);

  v6 = (v3 + *v3);
  v4 = swift_task_alloc();
  v0[366] = v4;
  *v4 = v0;
  v4[1] = MLS.SwiftMLSClientCoordinator.sendFailureToDecrypt(groupIdentifier:ftdInfo:);

  return v6(v1, v2);
}

{
  v1 = v0[337];
  v2 = v0[338];
  __swift_project_boxed_opaque_existential_1(v0 + 334, v1);
  v5 = (*(v2 + 24) + **(v2 + 24));
  v3 = swift_task_alloc();
  v0[369] = v3;
  *v3 = v0;
  v3[1] = MLS.SwiftMLSClientCoordinator.sendFailureToDecrypt(groupIdentifier:ftdInfo:);

  return v5(v1, v2);
}

{
  v0[388] = v0[367];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 334);

  v1 = v0[356];

  return MEMORY[0x2822009F8](MLS.SwiftMLSClientCoordinator.sendFailureToDecrypt(groupIdentifier:ftdInfo:), v1, 0);
}

{
  v2 = *v1;
  *(*v1 + 2976) = v0;

  if (v0)
  {
    v3 = *(v2 + 528);
    *(v2 + 1064) = *(v2 + 512);
    *(v2 + 1080) = v3;
    *(v2 + 1096) = *(v2 + 544);
    *(v2 + 1112) = *(v2 + 560);
    v4 = *(v2 + 464);
    *(v2 + 1000) = *(v2 + 448);
    *(v2 + 1016) = v4;
    v5 = *(v2 + 496);
    *(v2 + 1032) = *(v2 + 480);
    *(v2 + 1048) = v5;
    v6 = *(v2 + 400);
    *(v2 + 936) = *(v2 + 384);
    *(v2 + 952) = v6;
    v7 = *(v2 + 432);
    *(v2 + 968) = *(v2 + 416);
    *(v2 + 984) = v7;
    outlined destroy of NSObject?(v2 + 936, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
    v8 = MLS.SwiftMLSClientCoordinator.sendFailureToDecrypt(groupIdentifier:ftdInfo:);
  }

  else
  {
    v8 = MLS.SwiftMLSClientCoordinator.sendFailureToDecrypt(groupIdentifier:ftdInfo:);
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

{
  v1 = v0[337];
  v2 = v0[338];
  __swift_project_boxed_opaque_existential_1(v0 + 334, v1);
  v5 = (*(v2 + 64) + **(v2 + 64));
  v3 = swift_task_alloc();
  v0[378] = v3;
  *v3 = v0;
  v3[1] = MLS.SwiftMLSClientCoordinator.sendFailureToDecrypt(groupIdentifier:ftdInfo:);

  return v5(v1, v2);
}

{
  v0[388] = v0[372];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 334);

  v1 = v0[356];

  return MEMORY[0x2822009F8](MLS.SwiftMLSClientCoordinator.sendFailureToDecrypt(groupIdentifier:ftdInfo:), v1, 0);
}

{
  v1 = v0[377];
  v2 = v0[374];
  v3 = v0[373];
  if (v1 >> 60 == 15)
  {
    v4 = 0xC000000000000000;
  }

  else
  {
    v4 = v0[377];
  }

  if (v1 >> 60 == 15)
  {
    v5 = 0;
  }

  else
  {
    v5 = v0[376];
  }

  v0[388] = v0[379];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 334);

  outlined consume of Data._Representation(v3, v2);
  outlined consume of Data._Representation(v5, v4);
  v6 = v0[356];

  return MEMORY[0x2822009F8](MLS.SwiftMLSClientCoordinator.sendFailureToDecrypt(groupIdentifier:ftdInfo:), v6, 0);
}

{
  v1 = *(v0 + 3080);
  v2 = *(v0 + 3072);
  v3 = *(v0 + 3040);
  v4 = *(v0 + 3016);
  v5 = *(v0 + 2992);
  v6 = *(v0 + 2984);
  v19 = v6;
  v20 = v5;
  v7 = *(v0 + 2960);
  v18 = v7;
  v8 = *(v0 + 2944);
  v21 = *(v0 + 2888);
  v9 = *(v0 + 2808);
  v10 = *(v0 + 2800);
  if (v3 >> 60 == 15)
  {
    v11 = 0xC000000000000000;
  }

  else
  {
    v11 = *(v0 + 3040);
  }

  if (v3 >> 60 == 15)
  {
    v12 = 0;
  }

  else
  {
    v12 = *(v0 + 3048);
  }

  if (v4 >> 60 == 15)
  {
    v13 = 0xC000000000000000;
  }

  else
  {
    v13 = *(v0 + 3016);
  }

  if (v4 >> 60 == 15)
  {
    v14 = 0;
  }

  else
  {
    v14 = *(v0 + 3008);
  }

  if ((v8 & 0x100000000) != 0)
  {
    v15 = 1;
  }

  else
  {
    v15 = v8;
  }

  *(v0 + 2128) = v10;
  *(v0 + 2136) = v9;
  *(v0 + 2144) = v15;
  *(v0 + 2152) = v15;
  *(v0 + 2160) = v7;
  *(v0 + 2168) = v6;
  *(v0 + 2176) = v5;
  *(v0 + 2184) = v14;
  *(v0 + 2192) = v13;
  *(v0 + 2200) = v12;
  *(v0 + 2208) = v11;
  *(v0 + 2216) = v1;
  *(v0 + 2224) = v2;
  outlined init with copy of MLS.Group(v0 + 2128, v0 + 2232);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 2672));
  *(v0 + 2024) = v10;
  *(v0 + 2032) = v9;
  *(v0 + 2040) = v15;
  *(v0 + 2048) = v15;
  *(v0 + 2056) = v18;
  *(v0 + 2064) = v19;
  *(v0 + 2072) = v20;
  *(v0 + 2080) = v14;
  *(v0 + 2088) = v13;
  *(v0 + 2096) = v12;
  *(v0 + 2104) = v11;
  *(v0 + 2112) = v1;
  *(v0 + 2120) = v2;
  outlined destroy of MLS.Group(v0 + 2024);
  *(v0 + 1760) = *(v0 + 2176);
  *(v0 + 1776) = *(v0 + 2192);
  *(v0 + 1792) = *(v0 + 2208);
  *(v0 + 1808) = *(v0 + 2224);
  *(v0 + 1712) = *(v0 + 2128);
  *(v0 + 1728) = *(v0 + 2144);
  *(v0 + 1744) = *(v0 + 2160);
  *(v0 + 2336) = 1;
  *(v0 + 2344) = 0u;
  *(v0 + 2360) = 0u;
  *(v0 + 2376) = 0u;
  *(v0 + 2392) = 0u;
  *(v0 + 2408) = 2;
  v22 = (*(*v21 + 368) + **(*v21 + 368));
  v16 = swift_task_alloc();
  *(v0 + 3088) = v16;
  *v16 = v0;
  v16[1] = MLS.SwiftMLSClientCoordinator.sendFailureToDecrypt(groupIdentifier:ftdInfo:);

  return v22(v0 + 384, v0 + 1712, v0 + 2336, 1, 0, 0);
}

{
  v1 = v0[380];
  v2 = v0[377];
  v3 = v0[374];
  v4 = v0[373];
  if (v1 >> 60 == 15)
  {
    v5 = 0xC000000000000000;
  }

  else
  {
    v5 = v0[380];
  }

  if (v1 >> 60 == 15)
  {
    v6 = 0;
  }

  else
  {
    v6 = v0[381];
  }

  if (v2 >> 60 == 15)
  {
    v7 = 0xC000000000000000;
  }

  else
  {
    v7 = v0[377];
  }

  if (v2 >> 60 == 15)
  {
    v8 = 0;
  }

  else
  {
    v8 = v0[376];
  }

  v0[388] = v0[383];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 334);

  outlined consume of Data._Representation(v4, v3);
  outlined consume of Data._Representation(v8, v7);
  outlined consume of Data._Representation(v6, v5);
  v9 = v0[356];

  return MEMORY[0x2822009F8](MLS.SwiftMLSClientCoordinator.sendFailureToDecrypt(groupIdentifier:ftdInfo:), v9, 0);
}

{
  outlined destroy of NSObject?(v0 + 1488, &_s15SecureMessaging3MLSO27OutgoingFailureToDecrypt_v2Vy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO27OutgoingFailureToDecrypt_v2Vy_AC9AllMemberO10Foundation4DataVGMR);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 2712));

  v1 = *(v0 + 8);

  return v1();
}

{
  v1 = v0[349];
  outlined destroy of NSObject?((v0 + 186), &_s15SecureMessaging3MLSO27OutgoingFailureToDecrypt_v2Vy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO27OutgoingFailureToDecrypt_v2Vy_AC9AllMemberO10Foundation4DataVGMR);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 339);
  *v1 = 1;
  *(v1 + 8) = 0u;
  *(v1 + 24) = 0u;
  *(v1 + 40) = 0u;
  *(v1 + 56) = 0u;
  *(v1 + 72) = 0u;
  *(v1 + 88) = 0;
  *(v1 + 96) = 3;

  v2 = v0[1];

  return v2();
}

{
  v1 = *(v0 + 2752);
  v2 = *(v0 + 2760);
  v3 = *(v0 + 2768);
  lazy protocol witness table accessor for type MLS.GroupOperationError and conformance MLS.GroupOperationError();
  swift_allocError();
  *v4 = v1;
  *(v4 + 8) = v2;
  *(v4 + 16) = v3;
  outlined destroy of NSObject?(v0 + 1488, &_s15SecureMessaging3MLSO27OutgoingFailureToDecrypt_v2Vy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO27OutgoingFailureToDecrypt_v2Vy_AC9AllMemberO10Foundation4DataVGMR);

  v5 = *(v0 + 8);

  return v5();
}

{
  outlined destroy of NSObject?(v0 + 1488, &_s15SecureMessaging3MLSO27OutgoingFailureToDecrypt_v2Vy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO27OutgoingFailureToDecrypt_v2Vy_AC9AllMemberO10Foundation4DataVGMR);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 2712));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t MLS.SwiftMLSClientCoordinator.sendFailureToDecrypt(groupIdentifier:ftdInfo:)(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 2936) = v1;

  if (v1)
  {
    v5 = *(v4 + 528);
    *(v4 + 880) = *(v4 + 512);
    *(v4 + 896) = v5;
    *(v4 + 912) = *(v4 + 544);
    *(v4 + 928) = *(v4 + 560);
    v6 = *(v4 + 464);
    *(v4 + 816) = *(v4 + 448);
    *(v4 + 832) = v6;
    v7 = *(v4 + 496);
    *(v4 + 848) = *(v4 + 480);
    *(v4 + 864) = v7;
    v8 = *(v4 + 400);
    *(v4 + 752) = *(v4 + 384);
    *(v4 + 768) = v8;
    v9 = *(v4 + 432);
    *(v4 + 784) = *(v4 + 416);
    *(v4 + 800) = v9;
    outlined destroy of NSObject?(v4 + 752, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
    v10 = MLS.SwiftMLSClientCoordinator.sendFailureToDecrypt(groupIdentifier:ftdInfo:);
  }

  else
  {
    *(v4 + 2944) = a1;
    v10 = MLS.SwiftMLSClientCoordinator.sendFailureToDecrypt(groupIdentifier:ftdInfo:);
  }

  return MEMORY[0x2822009F8](v10, 0, 0);
}

{
  *(*v1 + 2960) = a1;

  return MEMORY[0x2822009F8](MLS.SwiftMLSClientCoordinator.sendFailureToDecrypt(groupIdentifier:ftdInfo:), 0, 0);
}

{
  v2 = v1[355];
  v3 = v1[354];
  v4 = v1[353];
  v1[373] = MLS.Group.GroupInfo.rawRepresentation.getter();
  v1[374] = v5;
  (*(v3 + 8))(v2, v4);
  v6 = v1[337];
  v7 = v1[338];
  __swift_project_boxed_opaque_existential_1(v1 + 334, v6);
  v10 = (*(v7 + 56) + **(v7 + 56));
  v8 = swift_task_alloc();
  v1[375] = v8;
  *v8 = v1;
  v8[1] = MLS.SwiftMLSClientCoordinator.sendFailureToDecrypt(groupIdentifier:ftdInfo:);

  return v10(v6, v7);
}

{
  v3 = *v2;
  v4 = *v2;
  v5 = (*v2 + 1712);
  *(*v2 + 3096) = v1;

  v6 = *(v3 + 2848);
  if (v1)
  {
    v7 = *v5;
    v8 = *(v4 + 1728);
    *(v4 + 1952) = *(v4 + 1744);
    *(v4 + 1936) = v8;
    *(v4 + 1920) = v7;
    v9 = *(v4 + 1760);
    v10 = *(v4 + 1776);
    v11 = *(v4 + 1792);
    *(v4 + 2016) = *(v4 + 1808);
    *(v4 + 2000) = v11;
    *(v4 + 1984) = v10;
    *(v4 + 1968) = v9;
    outlined destroy of MLS.Group(v4 + 1920);
    v12 = *(v4 + 432);
    v14 = *(v4 + 384);
    v13 = *(v4 + 400);
    *(v4 + 600) = *(v4 + 416);
    *(v4 + 616) = v12;
    *(v4 + 568) = v14;
    *(v4 + 584) = v13;
    v15 = *(v4 + 496);
    v17 = *(v4 + 448);
    v16 = *(v4 + 464);
    *(v4 + 664) = *(v4 + 480);
    *(v4 + 680) = v15;
    *(v4 + 632) = v17;
    *(v4 + 648) = v16;
    v19 = *(v4 + 528);
    v18 = *(v4 + 544);
    v20 = *(v4 + 512);
    *(v4 + 744) = *(v4 + 560);
    *(v4 + 712) = v19;
    *(v4 + 728) = v18;
    *(v4 + 696) = v20;
    outlined destroy of NSObject?(v4 + 568, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
    v21 = MLS.SwiftMLSClientCoordinator.sendFailureToDecrypt(groupIdentifier:ftdInfo:);
  }

  else
  {

    v22 = *v5;
    v23 = *(v4 + 1744);
    *(v4 + 1832) = *(v4 + 1728);
    *(v4 + 1848) = v23;
    *(v4 + 1816) = v22;
    v24 = *(v4 + 1760);
    v25 = *(v4 + 1776);
    v26 = *(v4 + 1792);
    *(v4 + 1912) = *(v4 + 1808);
    *(v4 + 1880) = v25;
    *(v4 + 1896) = v26;
    *(v4 + 1864) = v24;
    outlined destroy of MLS.Group(v4 + 1816);
    v27 = *(v4 + 432);
    v29 = *(v4 + 384);
    v28 = *(v4 + 400);
    *(v4 + 48) = *(v4 + 416);
    *(v4 + 64) = v27;
    *(v4 + 16) = v29;
    *(v4 + 32) = v28;
    v30 = *(v4 + 496);
    v32 = *(v4 + 448);
    v31 = *(v4 + 464);
    *(v4 + 112) = *(v4 + 480);
    *(v4 + 128) = v30;
    *(v4 + 80) = v32;
    *(v4 + 96) = v31;
    v34 = *(v4 + 528);
    v33 = *(v4 + 544);
    v35 = *(v4 + 512);
    *(v4 + 192) = *(v4 + 560);
    *(v4 + 160) = v34;
    *(v4 + 176) = v33;
    *(v4 + 144) = v35;
    outlined destroy of NSObject?(v4 + 16, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
    v21 = MLS.SwiftMLSClientCoordinator.sendFailureToDecrypt(groupIdentifier:ftdInfo:);
  }

  return MEMORY[0x2822009F8](v21, v6, 0);
}

void MLS.SwiftMLSClientCoordinator.sendFailureToDecrypt(groupIdentifier:ftdInfo:)()
{
  if ((v0[370] & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v1 = v0[337];
    v2 = v0[338];
    __swift_project_boxed_opaque_existential_1(v0 + 334, v1);
    v5 = (*(v2 + 80) + **(v2 + 80));
    v3 = swift_task_alloc();
    v0[371] = v3;
    *v3 = v0;
    v3[1] = MLS.SwiftMLSClientCoordinator.sendFailureToDecrypt(groupIdentifier:ftdInfo:);
    v4 = v0[355];

    v5(v4, v1, v2);
  }
}

uint64_t MLS.SwiftMLSClientCoordinator.sendFailureToDecrypt(groupIdentifier:ftdInfo:)(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 3008) = a1;
  *(v3 + 3016) = a2;

  return MEMORY[0x2822009F8](MLS.SwiftMLSClientCoordinator.sendFailureToDecrypt(groupIdentifier:ftdInfo:), 0, 0);
}

{
  v6 = *v3;
  *(v6 + 3032) = v2;

  if (v2)
  {
    v7 = *(v6 + 528);
    *(v6 + 1248) = *(v6 + 512);
    *(v6 + 1264) = v7;
    *(v6 + 1280) = *(v6 + 544);
    v8 = *(v6 + 464);
    *(v6 + 1184) = *(v6 + 448);
    *(v6 + 1200) = v8;
    v9 = *(v6 + 496);
    *(v6 + 1216) = *(v6 + 480);
    *(v6 + 1232) = v9;
    v10 = *(v6 + 400);
    *(v6 + 1120) = *(v6 + 384);
    *(v6 + 1136) = v10;
    v11 = *(v6 + 432);
    *(v6 + 1152) = *(v6 + 416);
    *(v6 + 1296) = *(v6 + 560);
    *(v6 + 1168) = v11;
    outlined destroy of NSObject?(v6 + 1120, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);

    return MEMORY[0x2822009F8](MLS.SwiftMLSClientCoordinator.sendFailureToDecrypt(groupIdentifier:ftdInfo:), 0, 0);
  }

  else
  {
    v12 = *(v6 + 2920);
    v13 = *(v6 + 2912);
    v21 = *(v6 + 2904);
    *(v6 + 3040) = a2;
    *(v6 + 3048) = a1;
    ObjectType = swift_getObjectType();
    *(v6 + 2776) = v13;
    *(v6 + 2784) = v12;
    v20 = (*(v21 + 64) + **(v21 + 64));
    v15 = swift_task_alloc();
    *(v6 + 3056) = v15;
    *v15 = v6;
    v15[1] = MLS.SwiftMLSClientCoordinator.sendFailureToDecrypt(groupIdentifier:ftdInfo:);
    v16 = *(v6 + 2904);
    v17 = *(v6 + 2808);
    v18 = *(v6 + 2800);

    return v20(v18, v17, v6 + 2776, ObjectType, v16);
  }
}

{
  v6 = *v3;
  *(*v3 + 3064) = v2;

  if (v2)
  {
    v7 = *(v6 + 528);
    *(v6 + 1432) = *(v6 + 512);
    *(v6 + 1448) = v7;
    *(v6 + 1464) = *(v6 + 544);
    *(v6 + 1480) = *(v6 + 560);
    v8 = *(v6 + 464);
    *(v6 + 1368) = *(v6 + 448);
    *(v6 + 1384) = v8;
    v9 = *(v6 + 496);
    *(v6 + 1400) = *(v6 + 480);
    *(v6 + 1416) = v9;
    v10 = *(v6 + 400);
    *(v6 + 1304) = *(v6 + 384);
    *(v6 + 1320) = v10;
    v11 = *(v6 + 432);
    *(v6 + 1336) = *(v6 + 416);
    *(v6 + 1352) = v11;
    outlined destroy of NSObject?(v6 + 1304, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
    v12 = MLS.SwiftMLSClientCoordinator.sendFailureToDecrypt(groupIdentifier:ftdInfo:);
  }

  else
  {
    *(v6 + 3072) = a2;
    *(v6 + 3080) = a1;
    v12 = MLS.SwiftMLSClientCoordinator.sendFailureToDecrypt(groupIdentifier:ftdInfo:);
  }

  return MEMORY[0x2822009F8](v12, 0, 0);
}

uint64_t MLS.SwiftMLSClientCoordinator.performFailureToDecrypt(groupIdentifier:ftdInfo:isWithinPersisterTransaction:)(uint64_t a1, uint64_t a2, _OWORD *a3, char a4)
{
  *(v5 + 344) = a2;
  *(v5 + 352) = v4;
  *(v5 + 424) = a4;
  *(v5 + 336) = a1;
  v7 = type metadata accessor for UUID();
  *(v5 + 360) = v7;
  *(v5 + 368) = *(v7 - 8);
  *(v5 + 376) = swift_task_alloc();
  v8 = a3[1];
  *(v5 + 16) = *a3;
  *(v5 + 32) = v8;
  v9 = a3[3];
  *(v5 + 48) = a3[2];
  *(v5 + 64) = v9;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v10 = static MLSActor.shared;
  *(v5 + 384) = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.SwiftMLSClientCoordinator.performFailureToDecrypt(groupIdentifier:ftdInfo:isWithinPersisterTransaction:), v10, 0);
}

uint64_t MLS.SwiftMLSClientCoordinator.performFailureToDecrypt(groupIdentifier:ftdInfo:isWithinPersisterTransaction:)(uint64_t a1)
{
  v34 = v1;
  v3 = *(v1 + 368);
  v2 = *(v1 + 376);
  v4 = *(v1 + 360);
  UUID.init()();
  v5 = UUID.uuidString.getter();
  v7 = v6;
  *(v1 + 392) = v6;
  (*(v3 + 8))(v2, v4);

  outlined init with copy of MLS.QueuedFTDInfo(v1 + 16, v1 + 80);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  outlined destroy of MLS.QueuedFTDInfo(v1 + 16);
  if (os_log_type_enabled(v8, v9))
  {
    v11 = *(v1 + 336);
    v10 = *(v1 + 344);
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v33 = v13;
    *v12 = 136315650;
    *(v12 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v7, &v33);
    *(v12 + 12) = 2080;
    *(v12 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v10, &v33);
    *(v12 + 22) = 2080;
    v14 = *(v1 + 32);
    *(v1 + 208) = *(v1 + 16);
    *(v1 + 224) = v14;
    v15 = *(v1 + 64);
    *(v1 + 240) = *(v1 + 48);
    *(v1 + 256) = v15;
    outlined init with copy of MLS.QueuedFTDInfo(v1 + 16, v1 + 272);
    v16 = String.init<A>(describing:)();
    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, &v33);

    *(v12 + 24) = v18;
    _os_log_impl(&dword_264F1F000, v8, v9, "performFailureToDecrypt generated identifier { identifier: %s, group: %s, ftdInfo: %s }", v12, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v13, -1, -1);
    MEMORY[0x266755550](v12, -1, -1);
  }

  v20 = *(v1 + 344);
  v19 = *(v1 + 352);
  v21 = *(v1 + 336);
  v22 = *(v19 + 96);
  v23 = swift_allocObject();
  v24 = *(v1 + 32);
  *(v23 + 40) = *(v1 + 16);
  *(v23 + 56) = v24;
  v25 = *(v1 + 64);
  *(v23 + 72) = *(v1 + 48);
  *(v1 + 400) = v23;
  *(v23 + 16) = v19;
  *(v23 + 24) = v21;
  *(v23 + 32) = v20;
  *(v23 + 88) = v25;
  v26 = *(*v22 + 320);

  outlined init with copy of MLS.QueuedFTDInfo(v1 + 16, v1 + 144);

  v32 = (v26 + *v26);
  v27 = swift_task_alloc();
  *(v1 + 408) = v27;
  *v27 = v1;
  v27[1] = MLS.SwiftMLSClientCoordinator.performFailureToDecrypt(groupIdentifier:ftdInfo:isWithinPersisterTransaction:);
  v28 = *(v1 + 424);
  v29 = *(v1 + 344);
  v30 = *(v1 + 336);

  return v32(v30, v29, v5, v7, v28, &async function pointer to partial apply for closure #1 in MLS.SwiftMLSClientCoordinator.performFailureToDecrypt(groupIdentifier:ftdInfo:isWithinPersisterTransaction:), v23);
}

uint64_t MLS.SwiftMLSClientCoordinator.performFailureToDecrypt(groupIdentifier:ftdInfo:isWithinPersisterTransaction:)()
{
  v2 = *v1;
  v2[52] = v0;

  if (v0)
  {
    v3 = v2[48];

    return MEMORY[0x2822009F8](MLS.SwiftMLSClientCoordinator.performFailureToDecrypt(groupIdentifier:ftdInfo:isWithinPersisterTransaction:), v3, 0);
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

uint64_t closure #1 in MLS.SwiftMLSClientCoordinator.performFailureToDecrypt(groupIdentifier:ftdInfo:isWithinPersisterTransaction:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, _OWORD *a8)
{
  v11 = v8;
  if (one-time initialization token for shared != -1)
  {
    v17 = a8;
    swift_once();
    a8 = v17;
  }

  *(v11 + 80) = static MLSActor.shared;
  v13 = a8[1];
  *(v11 + 16) = *a8;
  *(v11 + 32) = v13;
  v14 = a8[3];
  *(v11 + 48) = a8[2];
  *(v11 + 64) = v14;
  v15 = swift_task_alloc();
  *(v11 + 88) = v15;
  *v15 = v11;
  v15[1] = closure #1 in MLS.SwiftMLSClientCoordinator.performFailureToDecrypt(groupIdentifier:ftdInfo:isWithinPersisterTransaction:);

  return MLS.SwiftMLSClientCoordinator.sendFailureToDecrypt(groupIdentifier:ftdInfo:)(a1, a6, a7, (v11 + 16));
}

uint64_t closure #1 in MLS.SwiftMLSClientCoordinator.performFailureToDecrypt(groupIdentifier:ftdInfo:isWithinPersisterTransaction:)()
{
  v2 = *v1;
  v2[12] = v0;

  if (v0)
  {
    v3 = v2[10];

    return MEMORY[0x2822009F8](MLS.SwiftMLSPersister.readGroupState(groupID:), v3, 0);
  }

  else
  {
    v4 = v2[1];

    return v4();
  }
}

uint64_t MLS.SwiftMLSClientCoordinator.performSelfHeal(groupIdentifier:)(uint64_t a1, uint64_t a2)
{
  v3[24] = a2;
  v3[25] = v2;
  v3[23] = a1;
  v4 = type metadata accessor for UUID();
  v3[26] = v4;
  v3[27] = *(v4 - 8);
  v3[28] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v5 = static MLSActor.shared;
  v3[29] = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.SwiftMLSClientCoordinator.performSelfHeal(groupIdentifier:), v5, 0);
}

void MLS.SwiftMLSClientCoordinator.performSelfHeal(groupIdentifier:)(uint64_t a1)
{
  v3 = v1[27];
  v2 = v1[28];
  v4 = v1[26];
  v5 = *(v1[25] + direct field offset for MLS.SwiftMLSClientCoordinator.groupLoader);
  UUID.init()();
  UUID.uuidString.getter();
  v1[30] = v6;
  (*(v3 + 8))(v2, v4);
  v9 = *(*v5 + 192) + **(*v5 + 192);
  v7 = swift_task_alloc();
  v1[31] = v7;
  lazy protocol witness table accessor for type MLS.GroupOperationError and conformance MLS.GroupOperationError();
  *v7 = v1;
  v7[1] = MLS.SwiftMLSClientCoordinator.performSelfHeal(groupIdentifier:);

  __asm { BRAA            X8, X16 }
}

uint64_t MLS.SwiftMLSClientCoordinator.performSelfHeal(groupIdentifier:)()
{
  v2 = *v1;

  v3 = *(v2 + 232);
  if (v0)
  {
    v4 = MLS.SwiftMLSClientCoordinator.performSelfHeal(groupIdentifier:);
  }

  else
  {
    v4 = MLS.SwiftMLSClientCoordinator.performSelfHeal(groupIdentifier:);
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{
  outlined init with copy of ServerBag.MLS(v0 + 80, v0 + 120);
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 16) = 0u;
  v1 = swift_task_alloc();
  *(v0 + 256) = v1;
  *v1 = v0;
  v1[1] = MLS.SwiftMLSClientCoordinator.performSelfHeal(groupIdentifier:);
  v2 = *(v0 + 192);
  v3 = *(v0 + 184);

  return MLS.SwiftMLSClientCoordinator.performSelfHeal(groupIdentifier:swiftMLSGroup:ftdInfo:isWithinPersisterTransaction:)(v3, v2, v0 + 120, (v0 + 16), 0);
}

{
  v2 = *v1;
  *(v2 + 264) = v0;

  outlined destroy of NSObject?(v2 + 120, &_s15SecureMessaging3MLSO21SwiftMLSGroupProtocol_pSgMd, &_s15SecureMessaging3MLSO21SwiftMLSGroupProtocol_pSgMR);
  v3 = *(v2 + 232);
  if (v0)
  {
    v4 = MLS.SwiftMLSClientCoordinator.performSelfHeal(groupIdentifier:);
  }

  else
  {
    v4 = MLS.SwiftMLSClientCoordinator.performSelfHeal(groupIdentifier:);
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 80));

  v1 = *(v0 + 8);

  return v1();
}

{
  v1 = *(v0 + 160);
  v2 = *(v0 + 168);
  v3 = *(v0 + 176);
  lazy protocol witness table accessor for type MLS.GroupOperationError and conformance MLS.GroupOperationError();
  swift_allocError();
  *v4 = v1;
  *(v4 + 8) = v2;
  *(v4 + 16) = v3;

  v5 = *(v0 + 8);

  return v5();
}

{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 80));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t MLS.SwiftMLSClientCoordinator.performSelfHeal(groupIdentifier:swiftMLSGroup:ftdInfo:isWithinPersisterTransaction:)(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, char a5)
{
  *(v6 + 296) = a5;
  *(v6 + 200) = a3;
  *(v6 + 208) = v5;
  *(v6 + 184) = a1;
  *(v6 + 192) = a2;
  v8 = type metadata accessor for UUID();
  *(v6 + 216) = v8;
  *(v6 + 224) = *(v8 - 8);
  *(v6 + 232) = swift_task_alloc();
  v9 = a4[1];
  *(v6 + 16) = *a4;
  *(v6 + 32) = v9;
  v10 = a4[3];
  *(v6 + 48) = a4[2];
  *(v6 + 64) = v10;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v11 = static MLSActor.shared;
  *(v6 + 240) = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.SwiftMLSClientCoordinator.performSelfHeal(groupIdentifier:swiftMLSGroup:ftdInfo:isWithinPersisterTransaction:), v11, 0);
}

uint64_t MLS.SwiftMLSClientCoordinator.performSelfHeal(groupIdentifier:swiftMLSGroup:ftdInfo:isWithinPersisterTransaction:)(uint64_t a1)
{
  v31 = v1;
  v3 = *(v1 + 224);
  v2 = *(v1 + 232);
  v4 = *(v1 + 216);
  UUID.init()();
  v5 = UUID.uuidString.getter();
  v7 = v6;
  *(v1 + 248) = v5;
  *(v1 + 256) = v6;
  (*(v3 + 8))(v2, v4);
  *(v1 + 264) = direct field offset for MLS.SwiftMLSClientCoordinator.logger;

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v11 = *(v1 + 184);
    v10 = *(v1 + 192);
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v30 = v13;
    *v12 = 136315394;
    *(v12 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v7, &v30);
    *(v12 + 12) = 2080;
    *(v12 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v10, &v30);
    _os_log_impl(&dword_264F1F000, v8, v9, "performSelfHeal generated identifier { identifier: %s, group: %s", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v13, -1, -1);
    MEMORY[0x266755550](v12, -1, -1);
  }

  v14 = *(v1 + 200);
  v15 = *(v1 + 208);
  v17 = *(v1 + 184);
  v16 = *(v1 + 192);
  v18 = *(v15 + 96);
  v19 = *(v1 + 32);
  *(v1 + 80) = *(v1 + 16);
  *(v1 + 96) = v19;
  v20 = *(v1 + 64);
  *(v1 + 112) = *(v1 + 48);
  *(v1 + 128) = v20;
  outlined init with copy of MLS.OutgoingEventState?(v14, v1 + 144, &_s15SecureMessaging3MLSO21SwiftMLSGroupProtocol_pSgMd, &_s15SecureMessaging3MLSO21SwiftMLSGroupProtocol_pSgMR);
  v21 = swift_allocObject();
  v22 = *(v1 + 160);
  *(v21 + 56) = *(v1 + 144);
  *(v1 + 272) = v21;
  *(v21 + 16) = v15;
  *(v21 + 24) = v17;
  *(v21 + 32) = v16;
  *(v21 + 40) = v5;
  *(v21 + 48) = v7;
  *(v21 + 72) = v22;
  *(v21 + 88) = *(v1 + 176);
  v23 = *(*v18 + 328);

  v29 = (v23 + *v23);
  v24 = swift_task_alloc();
  *(v1 + 280) = v24;
  *v24 = v1;
  v24[1] = MLS.SwiftMLSClientCoordinator.performSelfHeal(groupIdentifier:swiftMLSGroup:ftdInfo:isWithinPersisterTransaction:);
  v25 = *(v1 + 296);
  v26 = *(v1 + 192);
  v27 = *(v1 + 184);

  return v29(v27, v26, v5, v7, v1 + 80, v25, &async function pointer to partial apply for closure #1 in MLS.SwiftMLSClientCoordinator.performSelfHeal(groupIdentifier:swiftMLSGroup:ftdInfo:isWithinPersisterTransaction:), v21);
}

uint64_t MLS.SwiftMLSClientCoordinator.performSelfHeal(groupIdentifier:swiftMLSGroup:ftdInfo:isWithinPersisterTransaction:)()
{
  v2 = *v1;
  v2[36] = v0;

  if (v0)
  {
    v3 = v2[30];

    return MEMORY[0x2822009F8](MLS.SwiftMLSClientCoordinator.performSelfHeal(groupIdentifier:swiftMLSGroup:ftdInfo:isWithinPersisterTransaction:), v3, 0);
  }

  else
  {

    v4 = v2[1];

    return v4();
  }
}

{
  v19 = v0;
  v1 = v0[36];

  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[36];
    v7 = v0[31];
    v6 = v0[32];
    v8 = v0[23];
    v17 = v0[24];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v18[0] = v11;
    *v9 = 136315650;
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v6, v18);

    *(v9 + 4) = v12;
    *(v9 + 12) = 2080;
    *(v9 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v17, v18);
    *(v9 + 22) = 2112;
    v13 = v5;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 24) = v14;
    *v10 = v14;
    _os_log_impl(&dword_264F1F000, v3, v4, "performSelfHeal enqueueSelfHeal failed { identifier: %s, group: %s, error: %@", v9, 0x20u);
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

  v15 = v0[1];

  return v15();
}

uint64_t closure #1 in MLS.SwiftMLSClientCoordinator.performSelfHeal(groupIdentifier:swiftMLSGroup:ftdInfo:isWithinPersisterTransaction:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = v8;
  v12[5] = a8;
  v12[6] = v17;
  v12[3] = a6;
  v12[4] = a7;
  v12[2] = a5;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v12[7] = static MLSActor.shared;
  v14 = swift_task_alloc();
  v12[8] = v14;
  *v14 = v12;
  v14[1] = closure #1 in MLS.SwiftMLSClientCoordinator.performSelfHeal(groupIdentifier:swiftMLSGroup:ftdInfo:isWithinPersisterTransaction:);

  return MLS.SwiftMLSClientCoordinator.sendSelfHeal(groupIdentifier:eventIdentifier:swiftMLSGroup:)(a1, a6, a7, a8, v17, v18);
}

uint64_t closure #1 in MLS.SwiftMLSClientCoordinator.performSelfHeal(groupIdentifier:swiftMLSGroup:ftdInfo:isWithinPersisterTransaction:)()
{
  v2 = *v1;
  v2[9] = v0;

  if (v0)
  {
    v3 = v2[7];

    return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.performSelfHeal(groupIdentifier:swiftMLSGroup:ftdInfo:isWithinPersisterTransaction:), v3, 0);
  }

  else
  {
    v4 = v2[1];

    return v4();
  }
}

{
  v18 = v0;
  v1 = v0[9];

  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[9];
    v7 = v0[5];
    v6 = v0[6];
    v8 = v0[3];
    v16 = v0[4];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v17[0] = v11;
    *v9 = 136315650;
    *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v6, v17);
    *(v9 + 12) = 2080;
    *(v9 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v16, v17);
    *(v9 + 22) = 2112;
    v12 = v5;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 24) = v13;
    *v10 = v13;
    _os_log_impl(&dword_264F1F000, v3, v4, "performSelfHeal sendSelfHeal failed { identifier: %s, group: %s, error: %@", v9, 0x20u);
    outlined destroy of NSObject?(v10, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x266755550](v10, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x266755550](v11, -1, -1);
    MEMORY[0x266755550](v9, -1, -1);
  }

  swift_willThrow();
  v14 = v0[1];

  return v14();
}

uint64_t MLS.SwiftMLSClientCoordinator.performEraAdvancement(groupIdentifier:swiftMLSGroup:ftdInfo:isWithinPersisterTransaction:)(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, char a5)
{
  *(v6 + 296) = a5;
  *(v6 + 200) = a3;
  *(v6 + 208) = v5;
  *(v6 + 184) = a1;
  *(v6 + 192) = a2;
  v8 = type metadata accessor for UUID();
  *(v6 + 216) = v8;
  *(v6 + 224) = *(v8 - 8);
  *(v6 + 232) = swift_task_alloc();
  v9 = a4[1];
  *(v6 + 16) = *a4;
  *(v6 + 32) = v9;
  v10 = a4[3];
  *(v6 + 48) = a4[2];
  *(v6 + 64) = v10;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v11 = static MLSActor.shared;
  *(v6 + 240) = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.SwiftMLSClientCoordinator.performEraAdvancement(groupIdentifier:swiftMLSGroup:ftdInfo:isWithinPersisterTransaction:), v11, 0);
}

uint64_t MLS.SwiftMLSClientCoordinator.performEraAdvancement(groupIdentifier:swiftMLSGroup:ftdInfo:isWithinPersisterTransaction:)(uint64_t a1)
{
  v30 = v1;
  v3 = *(v1 + 224);
  v2 = *(v1 + 232);
  v4 = *(v1 + 216);
  UUID.init()();
  v5 = UUID.uuidString.getter();
  v7 = v6;
  *(v1 + 248) = v5;
  *(v1 + 256) = v6;
  (*(v3 + 8))(v2, v4);
  *(v1 + 264) = direct field offset for MLS.SwiftMLSClientCoordinator.logger;

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v11 = *(v1 + 184);
    v10 = *(v1 + 192);
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v29 = v13;
    *v12 = 136315394;
    *(v12 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v7, &v29);
    *(v12 + 12) = 2080;
    *(v12 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v10, &v29);
    _os_log_impl(&dword_264F1F000, v8, v9, "performEraAdvancement generated identifier { identifier: %s, group: %s", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v13, -1, -1);
    MEMORY[0x266755550](v12, -1, -1);
  }

  v14 = *(v1 + 200);
  v15 = *(v1 + 208);
  v17 = *(v1 + 184);
  v16 = *(v1 + 192);
  v18 = *(v15 + 96);
  v19 = *(v1 + 32);
  *(v1 + 80) = *(v1 + 16);
  *(v1 + 96) = v19;
  v20 = *(v1 + 64);
  *(v1 + 112) = *(v1 + 48);
  *(v1 + 128) = v20;
  outlined init with copy of ServerBag.MLS(v14, v1 + 144);
  v21 = swift_allocObject();
  *(v1 + 272) = v21;
  v21[2] = v15;
  v21[3] = v17;
  v21[4] = v16;
  v21[5] = v5;
  v21[6] = v7;
  outlined init with take of MLS.KeyUpdatePolicy((v1 + 144), (v21 + 7));
  v22 = *(*v18 + 328);

  v28 = (v22 + *v22);
  v23 = swift_task_alloc();
  *(v1 + 280) = v23;
  *v23 = v1;
  v23[1] = MLS.SwiftMLSClientCoordinator.performEraAdvancement(groupIdentifier:swiftMLSGroup:ftdInfo:isWithinPersisterTransaction:);
  v24 = *(v1 + 296);
  v25 = *(v1 + 192);
  v26 = *(v1 + 184);

  return (v28)(v26, v25, v5, v7, v1 + 80, v24, &async function pointer to partial apply for closure #1 in MLS.SwiftMLSClientCoordinator.performEraAdvancement(groupIdentifier:swiftMLSGroup:ftdInfo:isWithinPersisterTransaction:), v21);
}

uint64_t MLS.SwiftMLSClientCoordinator.performEraAdvancement(groupIdentifier:swiftMLSGroup:ftdInfo:isWithinPersisterTransaction:)()
{
  v2 = *v1;
  v2[36] = v0;

  if (v0)
  {
    v3 = v2[30];

    return MEMORY[0x2822009F8](MLS.SwiftMLSClientCoordinator.performEraAdvancement(groupIdentifier:swiftMLSGroup:ftdInfo:isWithinPersisterTransaction:), v3, 0);
  }

  else
  {

    v4 = v2[1];

    return v4();
  }
}

{
  v19 = v0;
  v1 = v0[36];

  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[36];
    v7 = v0[31];
    v6 = v0[32];
    v8 = v0[23];
    v17 = v0[24];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v18[0] = v11;
    *v9 = 136315650;
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v6, v18);

    *(v9 + 4) = v12;
    *(v9 + 12) = 2080;
    *(v9 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v17, v18);
    *(v9 + 22) = 2112;
    v13 = v5;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 24) = v14;
    *v10 = v14;
    _os_log_impl(&dword_264F1F000, v3, v4, "performEraAdvancement enqueueSelfHeal failed { identifier: %s, group: %s, error: %@", v9, 0x20u);
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

  v15 = v0[1];

  return v15();
}

uint64_t closure #1 in MLS.SwiftMLSClientCoordinator.performEraAdvancement(groupIdentifier:swiftMLSGroup:ftdInfo:isWithinPersisterTransaction:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = v8;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v14 = swift_task_alloc();
  *(v12 + 16) = v14;
  *v14 = v12;
  v14[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return MLS.SwiftMLSClientCoordinator.sendNewEra(groupIdentifier:eventIdentifier:swiftMLSGroup:)(a1, a6, a7, a8, v17, v18);
}

uint64_t MLS.SwiftMLSClientCoordinator.healingMethod(error:)()
{
  v1 = MLS.MLSError.healingMethod.getter();
  v2 = *(v0 + direct field offset for MLS.SwiftMLSClientCoordinator.featureFlagsStore);
  if (*(v2 + 16) && (v3 = specialized __RawDictionaryStorage.find<A>(_:)(2), (v4 & 1) != 0))
  {
    v5 = *(*(v2 + 56) + v3);
  }

  else
  {
    v7[3] = &type metadata for SMAFeatureFlagsKey;
    v7[4] = lazy protocol witness table accessor for type SMAFeatureFlagsKey and conformance SMAFeatureFlagsKey();
    LOBYTE(v7[0]) = 2;

    v5 = isFeatureEnabled(_:)();
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
  }

  if (v5 & 1 | ((v1 - 3) < 0xFEu))
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t MLS.SwiftMLSClientCoordinator.uuidToUse(identifier:eventIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v73 = a4;
  v70 = a3;
  v8 = type metadata accessor for String.Encoding();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v72 = &v67 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v67 - v15;
  v74 = a1;
  UUID.init(uuidString:)();
  v17 = type metadata accessor for UUID();
  v18 = *(v17 - 8);
  v71 = *(v18 + 48);
  v19 = v71(v16, 1, v17);
  v75 = a2;
  v67 = v18;
  v68 = v11;
  if (v19 == 1)
  {
    outlined destroy of NSObject?(v16, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v20 = v8;
    v21 = v9;
    v22 = v17;
  }

  else
  {
    UUID.uuidString.getter();
    v69 = v8;
    String.uppercased()();
    v21 = v9;

    static String.Encoding.utf8.getter();
    v23 = String.data(using:allowLossyConversion:)();
    v25 = v24;
    a2 = v75;

    v26 = v11;
    v20 = v69;
    (*(v21 + 8))(v26, v69);
    (*(v18 + 8))(v16, v17);
    v22 = v17;
    if (v25 >> 60 != 15)
    {
      v46 = v73;

      outlined copy of Data?(v23, v25);
      v47 = Logger.logObject.getter();
      v48 = static os_log_type_t.default.getter();

      outlined consume of Data?(v23, v25);
      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        v50 = a2;
        v51 = swift_slowAlloc();
        v76 = v51;
        *v49 = 136315650;
        *(v49 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v70, v46, &v76);
        *(v49 + 12) = 2080;
        *(v49 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v74, v50, &v76);
        *(v49 + 22) = 2080;
        isa = Data._bridgeToObjectiveC()().super.isa;
        v53 = [(objc_class *)isa debugDescription];

        v54 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v56 = v55;

        v57 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v54, v56, &v76);

        *(v49 + 24) = v57;
        v58 = "SwiftMLSClientCoordinator uuidToUse detected client identifier is a UUID. Setting as SwiftMLS groupID { identifier: %s, group: %s, uuid: %s }";
LABEL_14:
        _os_log_impl(&dword_264F1F000, v47, v48, v58, v49, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x266755550](v51, -1, -1);
        MEMORY[0x266755550](v49, -1, -1);
      }

LABEL_15:

      return v23;
    }
  }

  v27 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_2651D82F0;
  *(v28 + 32) = v74;
  *(v28 + 40) = a2;
  v69 = v5;
  v29 = (v5 + direct field offset for MLS.SwiftMLSClientCoordinator.selfMember);
  v30 = *(v5 + direct field offset for MLS.SwiftMLSClientCoordinator.selfMember);
  v31 = v29[1];
  *(v28 + 48) = *v29;
  *(v28 + 56) = v31;

  outlined copy of MLS.AllMember(v30, v31);
  v32 = v72;
  static UUID.v5(customNamespace:inputs:)(v28, v72);

  if (v71(v32, 1, v22) != 1)
  {
    UUID.uuidString.getter();
    String.uppercased()();

    v34 = v68;
    static String.Encoding.utf8.getter();
    v23 = String.data(using:allowLossyConversion:)();
    v36 = v35;

    (*(v21 + 8))(v34, v27);
    (*(v67 + 8))(v32, v22);
    v33 = v73;
    if (v36 >> 60 == 15)
    {
      goto LABEL_7;
    }

    v59 = v75;

    outlined copy of Data?(v23, v36);
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.default.getter();

    outlined consume of Data?(v23, v36);
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v76 = v51;
      *v49 = 136315650;
      *(v49 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v70, v33, &v76);
      *(v49 + 12) = 2080;
      *(v49 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v74, v59, &v76);
      *(v49 + 22) = 2080;
      v60 = Data._bridgeToObjectiveC()().super.isa;
      v61 = [(objc_class *)v60 debugDescription];

      v62 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v64 = v63;

      v65 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v62, v64, &v76);

      *(v49 + 24) = v65;
      v58 = "SwiftMLSClientCoordinator uuidToUse created UUID out of SHA1 hash. Setting as SwiftMLS groupID { identifier: %s, group: %s, uuid: %s }";
      goto LABEL_14;
    }

    goto LABEL_15;
  }

  outlined destroy of NSObject?(v32, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v33 = v73;
LABEL_7:

  v37 = v75;

  v38 = v69;

  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v76 = v42;
    *v41 = 136315650;
    *(v41 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v70, v33, &v76);
    *(v41 + 12) = 2080;
    *(v41 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v74, v37, &v76);
    *(v41 + 22) = 2080;
    v43 = *(v38 + direct field offset for MLS.SwiftMLSClientCoordinator.selfMember);
    v44 = *(v38 + direct field offset for MLS.SwiftMLSClientCoordinator.selfMember + 8);
    outlined copy of MLS.AllMember(v43, v44);
    v45 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v43, v44, &v76);
    outlined consume of MLS.AllMember(v43, v44);
    *(v41 + 24) = v45;
    _os_log_impl(&dword_264F1F000, v39, v40, "SwiftMLSClientCoordinator uuidToUse failed to make custom ID for SwiftMLS { identifier: %s, group: %s, selfMember: %s }", v41, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v42, -1, -1);
    MEMORY[0x266755550](v41, -1, -1);
  }

  return 0;
}

char *MLS.SwiftMLSClientCoordinator.deinit()
{
  outlined destroy of MLS.SwiftMLSClientPicker(v0 + 16);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 104));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 144));
  v1 = direct field offset for MLS.SwiftMLSClientCoordinator.logger;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  outlined destroy of MLS.KeyPackageProvider(v0 + direct field offset for MLS.SwiftMLSClientCoordinator.keyPackageProvider);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + direct field offset for MLS.SwiftMLSClientCoordinator.bag));

  outlined consume of MLS.AllMember(*(v0 + direct field offset for MLS.SwiftMLSClientCoordinator.selfMember), *(v0 + direct field offset for MLS.SwiftMLSClientCoordinator.selfMember + 8));

  return v0;
}

uint64_t MLS.SwiftMLSClientCoordinator.__deallocating_deinit()
{
  MLS.SwiftMLSClientCoordinator.deinit();

  return swift_deallocClassInstance();
}

uint64_t protocol witness for MLS.ClientCoordinator.keyPackage.getter in conformance MLS.SwiftMLSClientCoordinator<A, B>(uint64_t a1)
{
  v6 = (*(**v1 + 264) + **(**v1 + 264));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v6(a1);
}

uint64_t protocol witness for MLS.ClientCoordinator.createGroup(identifier:otherMembers:context:) in conformance MLS.SwiftMLSClientCoordinator<A, B>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = (*(**v5 + 296) + **(**v5 + 296));
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  *v12 = v6;
  v12[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v14(a1, a2, a3, a4, a5);
}

uint64_t protocol witness for MLS.ClientCoordinator.joinGroup(identifier:otherMembers:welcome:context:) in conformance MLS.SwiftMLSClientCoordinator<A, B>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v16 = (*(**v6 + 304) + **(**v6 + 304));
  v14 = swift_task_alloc();
  *(v7 + 16) = v14;
  *v14 = v7;
  v14[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v16(a1, a2, a3, a4, a5, a6);
}

uint64_t protocol witness for MLS.ClientCoordinator.delete(group:context:) in conformance MLS.SwiftMLSClientCoordinator<A, B>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = (*(**v4 + 312) + **(**v4 + 312));
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v12(a1, a2, a3, a4);
}

uint64_t protocol witness for MLS.ClientCoordinator.group(identifier:context:) in conformance MLS.SwiftMLSClientCoordinator<A, B>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = (*(**v4 + 320) + **(**v4 + 320));
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v12(a1, a2, a3, a4);
}

uint64_t protocol witness for MLS.ClientCoordinator.update(groupDetails:forGroup:) in conformance MLS.SwiftMLSClientCoordinator<A, B>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(**v3 + 328) + **(**v3 + 328));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v10(a1, a2, a3);
}

uint64_t protocol witness for MLS.ClientCoordinator.otherMembers(group:context:) in conformance MLS.SwiftMLSClientCoordinator<A, B>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(**v3 + 336) + **(**v3 + 336));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = protocol witness for MLS.Persister.loadClientIdentifiersWithEvents() in conformance MLS.InMemoryPersister;

  return v10(a1, a2, a3);
}

uint64_t protocol witness for MLS.ClientCoordinator.add(members:toGroup:context:) in conformance MLS.SwiftMLSClientCoordinator<A, B>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = (*(**v5 + 368) + **(**v5 + 368));
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  *v12 = v6;
  v12[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v14(a1, a2, a3, a4, a5);
}

uint64_t protocol witness for MLS.ClientCoordinator.kick(members:fromGroup:context:) in conformance MLS.SwiftMLSClientCoordinator<A, B>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = (*(**v5 + 376) + **(**v5 + 376));
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  *v12 = v6;
  v12[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v14(a1, a2, a3, a4, a5);
}

uint64_t protocol witness for MLS.ClientCoordinator.leave(group:context:) in conformance MLS.SwiftMLSClientCoordinator<A, B>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = (*(**v4 + 392) + **(**v4 + 392));
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v12(a1, a2, a3, a4);
}

uint64_t protocol witness for MLS.ClientCoordinator.downgrade(group:context:) in conformance MLS.SwiftMLSClientCoordinator<A, B>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = (*(**v4 + 384) + **(**v4 + 384));
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v12(a1, a2, a3, a4);
}

uint64_t protocol witness for MLS.ClientCoordinator.applicationEncrypt(data:withGroup:context:) in conformance MLS.SwiftMLSClientCoordinator<A, B>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v16 = (*(**v6 + 408) + **(**v6 + 408));
  v14 = swift_task_alloc();
  *(v7 + 16) = v14;
  *v14 = v7;
  v14[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v16(a1, a2, a3, a4, a5, a6);
}

uint64_t protocol witness for MLS.ClientCoordinator.applicationEncrypt(groupName:withGroup:context:) in conformance MLS.SwiftMLSClientCoordinator<A, B>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v16 = (*(**v6 + 424) + **(**v6 + 424));
  v14 = swift_task_alloc();
  *(v7 + 16) = v14;
  *v14 = v7;
  v14[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v16(a1, a2, a3, a4, a5, a6);
}

uint64_t protocol witness for MLS.ClientCoordinator.applicationSign(input:withGroup:context:) in conformance MLS.SwiftMLSClientCoordinator<A, B>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = (*(**v5 + 416) + **(**v5 + 416));
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  *v12 = v6;
  v12[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v14(a1, a2, a3, a4, a5);
}

uint64_t protocol witness for MLS.ClientCoordinator.processIncoming(message:forGroup:context:) in conformance MLS.SwiftMLSClientCoordinator<A, B>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = (*(**v5 + 448) + **(**v5 + 448));
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  *v12 = v6;
  v12[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v14(a1, a2, a3, a4, a5);
}

uint64_t protocol witness for MLS.ClientCoordinator.processIncoming(message:context:) in conformance MLS.SwiftMLSClientCoordinator<A, B>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(**v3 + 440) + **(**v3 + 440));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v10(a1, a2, a3);
}

uint64_t protocol witness for MLS.ClientCoordinator.processIncoming(failureToDecrypt:withGroup:context:) in conformance MLS.SwiftMLSClientCoordinator<A, B>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = (*(**v5 + 472) + **(**v5 + 472));
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  *v12 = v6;
  v12[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v14(a1, a2, a3, a4, a5);
}

uint64_t protocol witness for MLS.ClientCoordinator.processIncoming(errorMessage:withGroup:context:) in conformance MLS.SwiftMLSClientCoordinator<A, B>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = (*(**v5 + 480) + **(**v5 + 480));
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  *v12 = v6;
  v12[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v14(a1, a2, a3, a4, a5);
}

uint64_t protocol witness for MLS.ClientCoordinator.processIncoming(groupName:forGroup:context:) in conformance MLS.SwiftMLSClientCoordinator<A, B>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v16 = (*(**v6 + 432) + **(**v6 + 432));
  v14 = swift_task_alloc();
  *(v7 + 16) = v14;
  *v14 = v7;
  v14[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v16(a1, a2, a3, a4, a5, a6);
}

void *_ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s10_NativeSetVy15SecureMessaging3MLSO9AllMemberOG_Tg506_ss10_gh28V6filteryAByxGSbxKXEKFADs13_ab9VKXEfU_15i15Messaging3MLSO9lM5O_TG5AMxSbs5Error_pRi_zRi0_zlyALIsgndzo_Tf1nc_n04_s15it137MLSO25SwiftMLSClientCoordinatorC15processIncoming7message8forGroup7contextAC0H23MessageProcessedContextVy_10Foundation4DataVGAC0hM0Vy_AC9lM61OG_SSAC0hmO0Vy_ANGtYaKFAOyYaYbKAA8MLSActorCYcXEfU0_SbASXEfU4_ShyALGTf1nnc_nTm(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v9 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v10 = specialized closure #1 in _NativeSet.filter(_:)(v9, a2, a3, a4, a5);
    swift_bridgeObjectRelease_n();

    return v10;
  }

  return result;
}

uint64_t specialized Set.subscript.getter@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  if (result < 0 || (v4 = result, 1 << *(a3 + 32) <= result))
  {
    __break(1u);
    goto LABEL_9;
  }

  if (((*(a3 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(a3 + 36) != a2)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v6 = *(a3 + 48);
  v7 = type metadata accessor for MLS.Identity.SigningIdentity();
  v8 = *(v7 - 8);
  v9 = *(v8 + 16);
  v10 = v6 + *(v8 + 72) * v4;

  return v9(a4, v10, v7);
}

{
  if (result < 0 || 1 << *(a3 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a3 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a3 + 36) == a2)
  {
    v4 = *(a3 + 48) + 32 * result;
    v5 = *v4;
    v6 = *(v4 + 8);
    v7 = *(v4 + 16);
    *a4 = *v4;
    *(a4 + 8) = v6;
    *(a4 + 16) = v7;
    *(a4 + 24) = *(v4 + 24);
    return outlined copy of MLS.AllMember(v5, v6);
  }

LABEL_8:
  __break(1u);
  return result;
}

unint64_t specialized MLS.SwiftMLSClientCoordinatorError.ErrorType.init(rawValue:)(unint64_t result)
{
  if (result >= 8)
  {
    return 8;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.SwiftMLSClientCoordinatorError.CodingKeys and conformance MLS.SwiftMLSClientCoordinatorError.CodingKeys()
{
  result = lazy protocol witness table cache variable for type MLS.SwiftMLSClientCoordinatorError.CodingKeys and conformance MLS.SwiftMLSClientCoordinatorError.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.SwiftMLSClientCoordinatorError.CodingKeys and conformance MLS.SwiftMLSClientCoordinatorError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.SwiftMLSClientCoordinatorError.CodingKeys and conformance MLS.SwiftMLSClientCoordinatorError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.SwiftMLSClientCoordinatorError.CodingKeys and conformance MLS.SwiftMLSClientCoordinatorError.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.SwiftMLSClientCoordinatorError.CodingKeys and conformance MLS.SwiftMLSClientCoordinatorError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.SwiftMLSClientCoordinatorError.CodingKeys and conformance MLS.SwiftMLSClientCoordinatorError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.SwiftMLSClientCoordinatorError.CodingKeys and conformance MLS.SwiftMLSClientCoordinatorError.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.SwiftMLSClientCoordinatorError.CodingKeys and conformance MLS.SwiftMLSClientCoordinatorError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.SwiftMLSClientCoordinatorError.CodingKeys and conformance MLS.SwiftMLSClientCoordinatorError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.SwiftMLSClientCoordinatorError.CodingKeys and conformance MLS.SwiftMLSClientCoordinatorError.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.SwiftMLSClientCoordinatorError.CodingKeys and conformance MLS.SwiftMLSClientCoordinatorError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.SwiftMLSClientCoordinatorError.CodingKeys and conformance MLS.SwiftMLSClientCoordinatorError.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.SwiftMLSClientCoordinatorError.ErrorType and conformance MLS.SwiftMLSClientCoordinatorError.ErrorType()
{
  result = lazy protocol witness table cache variable for type MLS.SwiftMLSClientCoordinatorError.ErrorType and conformance MLS.SwiftMLSClientCoordinatorError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.SwiftMLSClientCoordinatorError.ErrorType and conformance MLS.SwiftMLSClientCoordinatorError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.SwiftMLSClientCoordinatorError.ErrorType and conformance MLS.SwiftMLSClientCoordinatorError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.SwiftMLSClientCoordinatorError.ErrorType and conformance MLS.SwiftMLSClientCoordinatorError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.SwiftMLSClientCoordinatorError.ErrorType and conformance MLS.SwiftMLSClientCoordinatorError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.SwiftMLSClientCoordinatorError.ErrorType and conformance MLS.SwiftMLSClientCoordinatorError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.SwiftMLSClientCoordinatorError.ErrorType and conformance MLS.SwiftMLSClientCoordinatorError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.SwiftMLSClientCoordinatorError.ErrorType and conformance MLS.SwiftMLSClientCoordinatorError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.SwiftMLSClientCoordinatorError.ErrorType and conformance MLS.SwiftMLSClientCoordinatorError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.SwiftMLSClientCoordinatorError.ErrorType and conformance MLS.SwiftMLSClientCoordinatorError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.SwiftMLSClientCoordinatorError.ErrorType and conformance MLS.SwiftMLSClientCoordinatorError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.SwiftMLSClientCoordinatorError.ErrorType and conformance MLS.SwiftMLSClientCoordinatorError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.SwiftMLSClientCoordinatorError.ErrorType and conformance MLS.SwiftMLSClientCoordinatorError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.SwiftMLSClientCoordinatorError.ErrorType and conformance MLS.SwiftMLSClientCoordinatorError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.SwiftMLSClientCoordinatorError.ErrorType and conformance MLS.SwiftMLSClientCoordinatorError.ErrorType);
  }

  return result;
}

uint64_t specialized MLS.SwiftMLSClientCoordinatorError.init(from:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO30SwiftMLSClientCoordinatorErrorV10CodingKeys33_4A5F1255AF5325EF77C6CF0723488492LLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO30SwiftMLSClientCoordinatorErrorV10CodingKeys33_4A5F1255AF5325EF77C6CF0723488492LLOGMR);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9[-v5];
  v7 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  lazy protocol witness table accessor for type MLS.SwiftMLSClientCoordinatorError.CodingKeys and conformance MLS.SwiftMLSClientCoordinatorError.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v9[14] = 0;
    lazy protocol witness table accessor for type MLS.SwiftMLSClientCoordinatorError.ErrorType and conformance MLS.SwiftMLSClientCoordinatorError.ErrorType();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v7 = v9[15];
    v9[13] = 1;
    KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    (*(v4 + 8))(v6, v3);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v7;
}

uint64_t partial apply for closure #1 in static MLS.SwiftMLSClientPicker.defaultPicker(persister:clientIdentifier:selfURI:testCertAnchors:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return closure #1 in static MLS.SwiftMLSClientPicker.defaultPicker(persister:clientIdentifier:selfURI:testCertAnchors:)(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_26510D0B4()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_26510D0EC()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t partial apply for closure #1 in MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:)(uint64_t a1)
{
  v4 = *(v1 + 48);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return closure #1 in MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:)(a1, v4);
}

uint64_t partial apply for closure #2 in MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(v4 + 48);
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return closure #2 in MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:)(a1, a2, a3, a4, v10);
}

uint64_t partial apply for closure #3 in MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + 48);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return closure #3 in MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:)(a1, a2, a3, v8);
}

uint64_t partial apply for closure #4 in MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:)(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 48);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return closure #4 in MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:)(a1, a2, v6);
}

uint64_t sub_26510D4E0()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = v4 + *(v2 + 64);
  v6 = (v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (((v5 + 191) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  outlined consume of MLS.OutgoingEventType<MLS.AllMember, Data>(*(v0 + v6), *(v0 + v6 + 8), *(v0 + v6 + 16), *(v0 + v6 + 24), *(v0 + v6 + 32), *(v0 + v6 + 40), *(v0 + v6 + 48), *(v0 + v6 + 56), *(v0 + v6 + 64), *(v0 + v6 + 72), *(v0 + v6 + 80), *(v0 + v6 + 88), *(v0 + v6 + 96), *(v0 + v6 + 104), *(v0 + v6 + 112), *(v0 + v6 + 120), *(v0 + v6 + 128), *(v0 + v6 + 136), *(v0 + v6 + 144), *(v0 + v6 + 152), *(v0 + v6 + 160), *(v0 + v6 + 168), *(v0 + v6 + 176));

  v8 = v0 + v7;
  if (*(v0 + v7 + 8))
  {

    outlined consume of MLS.OutgoingEventState.EventSpecificState(*(v8 + 16), *(v8 + 24), *(v8 + 32));

    v9 = *(v8 + 64);
    if (v9 >> 60 != 15)
    {
      outlined consume of Data._Representation(*(v8 + 56), v9);
    }
  }

  v10 = (((((v7 + 79) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + v10));

  return MEMORY[0x2821FE8E8](v0, v10 + 40, v3 | 7);
}

uint64_t outlined consume of MLS.OutgoingEventType<MLS.AllMember, Data>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10, unint64_t a11, uint64_t a12, unint64_t a13, unint64_t a14, unint64_t a15, unint64_t a16, unint64_t a17, unint64_t a18, uint64_t a19, unint64_t a20, unint64_t a21, unint64_t a22, char a23)
{
  result = a19;
  switch(a23)
  {
    case 0:
    case 1:
    case 8:
    case 9:
    case 13:

      outlined consume of Data?(a5, a6);

      outlined consume of Data._Representation(a10, a11);

      outlined consume of Data._Representation(a14, a15);

      outlined consume of Data._Representation(a17, a18);
      outlined consume of Data?(a19, a20);
      v28 = a21;
      goto LABEL_14;
    case 2:

      outlined consume of Data?(a5, a6);

      outlined consume of Data._Representation(a10, a11);

      outlined consume of Data._Representation(a13, a14);
      outlined consume of Data?(a15, a16);
      v28 = a17;
      a22 = a18;
      goto LABEL_14;
    case 3:
    case 10:

      outlined consume of Data?(a5, a6);

      v28 = a10;
      a22 = a11;
      goto LABEL_14;
    case 4:
    case 5:
    case 11:
    case 14:

      outlined consume of Data?(a5, a6);

      outlined consume of Data._Representation(a10, a11);
      outlined consume of Data._Representation(a12, a13);
      outlined consume of Data?(a14, a15);
      v28 = a16;
      a22 = a17;
      goto LABEL_14;
    case 6:

      outlined consume of Data?(a5, a6);

      outlined consume of MLS.AllMember(a8, a9);

      goto LABEL_10;
    case 7:

      outlined consume of Data?(a5, a6);

      goto LABEL_10;
    case 12:

      outlined consume of Data?(a5, a6);

      outlined consume of Data._Representation(a10, a11);
      outlined consume of Data._Representation(a12, a13);
      outlined consume of Data._Representation(a14, a15);
      outlined consume of Data._Representation(a16, a17);
      outlined consume of Data?(a18, a19);
      v28 = a20;
      a22 = a21;
LABEL_14:

      return outlined consume of Data._Representation(v28, a22);
    case 15:

      outlined consume of Data?(a5, a6);
      goto LABEL_10;
    case 16:

      outlined consume of MLS.OutgoingErrorOccurred<MLS.AllMember, Data>.Trigger(a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19);
      outlined consume of Data?(a20, a21);
LABEL_10:

      break;
    default:
      return result;
  }

  return result;
}

uint64_t outlined consume of MLS.OutgoingErrorOccurred<MLS.AllMember, Data>.Trigger(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9, uint64_t a10, unint64_t a11, uint64_t a12, uint64_t a13, unint64_t a14, char a15)
{
  if (a15 == 1)
  {
    outlined consume of MLS.AllMember(result, a2);
    outlined consume of Data._Representation(a5, a6);

    return outlined consume of MLS.EncryptedRCS.SigningInput.ContentType(a7, a8, a9, a10, a11);
  }

  else if (!a15)
  {
    outlined consume of MLS.AllMember(result, a2);
    outlined consume of Data._Representation(a5, a6);
    outlined consume of MLS.EncryptedRCS.SigningInput.ContentType(a7, a8, a9, a10, a11);

    return outlined consume of Data._Representation(a13, a14);
  }

  return result;
}

uint64_t partial apply for closure #5 in MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(type metadata accessor for Logger() - 8);
  v7 = (*(v6 + 80) + 48) & ~*(v6 + 80);
  v8 = v7 + *(v6 + 64);
  v14 = (v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v4 + ((v8 + 191) & 0xFFFFFFFFFFFFFFF8));
  v10 = v9[1];
  v13 = *v9;
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return closure #5 in MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:)(a1, a2, a3, a4, v4 + v7, v4 + v14, v13, v10);
}

uint64_t sub_26510DD78()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v6 = v0 + v5;

  outlined consume of MLS.OutgoingEventState.EventSpecificState(*(v6 + 16), *(v6 + 24), *(v6 + 32));

  v7 = *(v0 + v5 + 64);
  if (v7 >> 60 != 15)
  {
    outlined consume of Data._Representation(*(v6 + 56), v7);
  }

  return MEMORY[0x2821FE8E8](v0, ((((v5 + 79) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t partial apply for closure #6 in MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = v5;
  v10 = *(type metadata accessor for Logger() - 8);
  v11 = (*(v10 + 80) + 48) & ~*(v10 + 80);
  v12 = (*(v10 + 64) + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v4 + ((v12 + 79) & 0xFFFFFFFFFFFFFFF8));
  v14 = *v13;
  v15 = v13[1];
  v16 = swift_task_alloc();
  *(v8 + 16) = v16;
  *v16 = v8;
  v16[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return closure #6 in MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:)(a1, a2, a3, a4, v4 + v11, v4 + v12, v14, v15);
}

uint64_t sub_26510DFD0()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_26510E008()
{
  if (v0[3])
  {

    outlined consume of Data._Representation(v0[7], v0[8]);
    outlined consume of Data._Representation(v0[9], v0[10]);
    outlined consume of Data._Representation(v0[11], v0[12]);
    v1 = v0[14];
    if (v1 >> 60 != 15)
    {
      outlined consume of Data._Representation(v0[13], v1);
    }
  }

  return MEMORY[0x2821FE8E8](v0, 120, 7);
}

uint64_t sub_26510E0D0()
{

  v1 = v0[6];
  if (v1 >> 60 != 15)
  {
    outlined consume of Data._Representation(v0[5], v1);
  }

  v2 = v0[9];
  if (v2 >> 60 != 15)
  {
    outlined consume of Data._Representation(v0[8], v2);
  }

  v3 = v0[11];
  if (v3 >> 60 != 15)
  {
    outlined consume of Data._Representation(v0[10], v3);
  }

  return MEMORY[0x2821FE8E8](v0, 136, 7);
}

uint64_t partial apply for closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = v4[2];
  v11 = v4[12];
  v12 = v4[13];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:)(a1, a2, a3, a4, v10, (v4 + 3), v11, v12);
}

uint64_t partial apply for closure #1 in MLS.SwiftMLSClientCoordinator.joinGroup(identifier:otherMembers:welcome:context:)(uint64_t a1)
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
  v10[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return closure #1 in MLS.SwiftMLSClientCoordinator.joinGroup(identifier:otherMembers:welcome:context:)(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t partial apply for closure #1 in MLS.SwiftMLSClientCoordinator.delete(group:context:)(uint64_t a1)
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
  v11[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return closure #1 in MLS.SwiftMLSClientCoordinator.delete(group:context:)(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t partial apply for closure #1 in MLS.SwiftMLSClientCoordinator.group(identifier:context:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return closure #1 in MLS.SwiftMLSClientCoordinator.group(identifier:context:)(a1, v4, v5, v6, v7, v8);
}

unint64_t lazy protocol witness table accessor for type MLS.GroupUpdateError and conformance MLS.GroupUpdateError()
{
  result = lazy protocol witness table cache variable for type MLS.GroupUpdateError and conformance MLS.GroupUpdateError;
  if (!lazy protocol witness table cache variable for type MLS.GroupUpdateError and conformance MLS.GroupUpdateError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupUpdateError and conformance MLS.GroupUpdateError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.GroupUpdateError and conformance MLS.GroupUpdateError;
  if (!lazy protocol witness table cache variable for type MLS.GroupUpdateError and conformance MLS.GroupUpdateError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupUpdateError and conformance MLS.GroupUpdateError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.GroupUpdateError and conformance MLS.GroupUpdateError;
  if (!lazy protocol witness table cache variable for type MLS.GroupUpdateError and conformance MLS.GroupUpdateError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupUpdateError and conformance MLS.GroupUpdateError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.GroupUpdateError and conformance MLS.GroupUpdateError;
  if (!lazy protocol witness table cache variable for type MLS.GroupUpdateError and conformance MLS.GroupUpdateError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupUpdateError and conformance MLS.GroupUpdateError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.GroupUpdateError and conformance MLS.GroupUpdateError;
  if (!lazy protocol witness table cache variable for type MLS.GroupUpdateError and conformance MLS.GroupUpdateError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupUpdateError and conformance MLS.GroupUpdateError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.GroupUpdateError and conformance MLS.GroupUpdateError;
  if (!lazy protocol witness table cache variable for type MLS.GroupUpdateError and conformance MLS.GroupUpdateError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupUpdateError and conformance MLS.GroupUpdateError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.GroupUpdateError and conformance MLS.GroupUpdateError;
  if (!lazy protocol witness table cache variable for type MLS.GroupUpdateError and conformance MLS.GroupUpdateError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupUpdateError and conformance MLS.GroupUpdateError);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.GroupMembersError and conformance MLS.GroupMembersError()
{
  result = lazy protocol witness table cache variable for type MLS.GroupMembersError and conformance MLS.GroupMembersError;
  if (!lazy protocol witness table cache variable for type MLS.GroupMembersError and conformance MLS.GroupMembersError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupMembersError and conformance MLS.GroupMembersError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.GroupMembersError and conformance MLS.GroupMembersError;
  if (!lazy protocol witness table cache variable for type MLS.GroupMembersError and conformance MLS.GroupMembersError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupMembersError and conformance MLS.GroupMembersError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.GroupMembersError and conformance MLS.GroupMembersError;
  if (!lazy protocol witness table cache variable for type MLS.GroupMembersError and conformance MLS.GroupMembersError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupMembersError and conformance MLS.GroupMembersError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.GroupMembersError and conformance MLS.GroupMembersError;
  if (!lazy protocol witness table cache variable for type MLS.GroupMembersError and conformance MLS.GroupMembersError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupMembersError and conformance MLS.GroupMembersError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.GroupMembersError and conformance MLS.GroupMembersError;
  if (!lazy protocol witness table cache variable for type MLS.GroupMembersError and conformance MLS.GroupMembersError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupMembersError and conformance MLS.GroupMembersError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.GroupMembersError and conformance MLS.GroupMembersError;
  if (!lazy protocol witness table cache variable for type MLS.GroupMembersError and conformance MLS.GroupMembersError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupMembersError and conformance MLS.GroupMembersError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.GroupMembersError and conformance MLS.GroupMembersError;
  if (!lazy protocol witness table cache variable for type MLS.GroupMembersError and conformance MLS.GroupMembersError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupMembersError and conformance MLS.GroupMembersError);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.DowngradeError and conformance MLS.DowngradeError()
{
  result = lazy protocol witness table cache variable for type MLS.DowngradeError and conformance MLS.DowngradeError;
  if (!lazy protocol witness table cache variable for type MLS.DowngradeError and conformance MLS.DowngradeError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.DowngradeError and conformance MLS.DowngradeError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.DowngradeError and conformance MLS.DowngradeError;
  if (!lazy protocol witness table cache variable for type MLS.DowngradeError and conformance MLS.DowngradeError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.DowngradeError and conformance MLS.DowngradeError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.DowngradeError and conformance MLS.DowngradeError;
  if (!lazy protocol witness table cache variable for type MLS.DowngradeError and conformance MLS.DowngradeError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.DowngradeError and conformance MLS.DowngradeError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.DowngradeError and conformance MLS.DowngradeError;
  if (!lazy protocol witness table cache variable for type MLS.DowngradeError and conformance MLS.DowngradeError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.DowngradeError and conformance MLS.DowngradeError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.DowngradeError and conformance MLS.DowngradeError;
  if (!lazy protocol witness table cache variable for type MLS.DowngradeError and conformance MLS.DowngradeError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.DowngradeError and conformance MLS.DowngradeError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.DowngradeError and conformance MLS.DowngradeError;
  if (!lazy protocol witness table cache variable for type MLS.DowngradeError and conformance MLS.DowngradeError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.DowngradeError and conformance MLS.DowngradeError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.DowngradeError and conformance MLS.DowngradeError;
  if (!lazy protocol witness table cache variable for type MLS.DowngradeError and conformance MLS.DowngradeError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.DowngradeError and conformance MLS.DowngradeError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.DowngradeError and conformance MLS.DowngradeError;
  if (!lazy protocol witness table cache variable for type MLS.DowngradeError and conformance MLS.DowngradeError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.DowngradeError and conformance MLS.DowngradeError);
  }

  return result;
}

uint64_t partial apply for closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(groupName:forGroup:context:)(uint64_t a1)
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
  v11[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(groupName:forGroup:context:)(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t partial apply for closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:)(uint64_t a1)
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
  v10[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:)(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t partial apply for closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:)(uint64_t a1)
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
  v11[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:)(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t partial apply for closure #3 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:)(uint64_t a1)
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
  v11[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return closure #3 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:)(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t partial apply for closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(failureToDecrypt:withGroup:context:)(uint64_t a1)
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
  v10[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(failureToDecrypt:withGroup:context:)(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_26510EAA8()
{

  return MEMORY[0x2821FE8E8](v0, 81, 7);
}

uint64_t partial apply for closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(errorMessage:withGroup:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = v4[2];
  v11 = v4[3];
  v12 = v4[4];
  v13 = v4[5];
  v14 = swift_task_alloc();
  *(v5 + 16) = v14;
  *v14 = v5;
  v14[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(errorMessage:withGroup:context:)(a1, a2, a3, a4, v10, v11, v12, v13);
}

unint64_t instantiation function for generic protocol witness table for MLS.SwiftMLSClientCoordinatorError(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type MLS.SwiftMLSClientCoordinatorError and conformance MLS.SwiftMLSClientCoordinatorError();
  a1[2] = lazy protocol witness table accessor for type MLS.SwiftMLSClientCoordinatorError and conformance MLS.SwiftMLSClientCoordinatorError();
  a1[3] = lazy protocol witness table accessor for type MLS.SwiftMLSClientCoordinatorError and conformance MLS.SwiftMLSClientCoordinatorError();
  result = lazy protocol witness table accessor for type MLS.SwiftMLSClientCoordinatorError and conformance MLS.SwiftMLSClientCoordinatorError();
  a1[4] = result;
  return result;
}

uint64_t sub_26510EEEC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 240))();
  *a2 = result;
  return result;
}

uint64_t sub_26510EF38(void *a1, uint64_t a2)
{
  v2 = *(**a2 + 248);

  return v2(v3);
}

__n128 sub_26510EF98(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t type metadata completion function for MLS.SwiftMLSClientCoordinator(uint64_t a1)
{
  result = type metadata accessor for Logger();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for MLS.KeyPackageProvider(319);
    if (v3 <= 0x3F)
    {
      return swift_initClassMetadata2();
    }
  }

  return result;
}

uint64_t dispatch thunk of MLS.SwiftMLSClientCoordinator.keyPackage.getter(uint64_t a1)
{
  v6 = (*(*v1 + 264) + **(*v1 + 264));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v6(a1);
}

uint64_t dispatch thunk of MLS.SwiftMLSClientCoordinator.__allocating_init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v20 = (*(v11 + 280) + **(v11 + 280));
  v18 = swift_task_alloc();
  *(v12 + 16) = v18;
  *v18 = v12;
  v18[1] = dispatch thunk of MLS.RequiresGroupGroupOperation.membersRequiringKeyPackages(swiftMLSGroup:);

  return v20(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11);
}

uint64_t dispatch thunk of MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = (*(*v5 + 296) + **(*v5 + 296));
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  *v12 = v6;
  v12[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v14(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of MLS.SwiftMLSClientCoordinator.joinGroup(identifier:otherMembers:welcome:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v16 = (*(*v6 + 304) + **(*v6 + 304));
  v14 = swift_task_alloc();
  *(v7 + 16) = v14;
  *v14 = v7;
  v14[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v16(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of MLS.SwiftMLSClientCoordinator.delete(group:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = (*(*v4 + 312) + **(*v4 + 312));
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v12(a1, a2, a3, a4);
}

uint64_t dispatch thunk of MLS.SwiftMLSClientCoordinator.group(identifier:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = (*(*v4 + 320) + **(*v4 + 320));
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v12(a1, a2, a3, a4);
}

uint64_t dispatch thunk of MLS.SwiftMLSClientCoordinator.update(groupDetails:forGroup:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 328) + **(*v3 + 328));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v10(a1, a2, a3);
}

uint64_t dispatch thunk of MLS.SwiftMLSClientCoordinator.otherMembers(group:context:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 336) + **(*v3 + 336));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = dispatch thunk of KDSRegistration.XPCCoordinator.__allocating_init(clientIdentifier:provider:simUniqueID:simLabelID:supportedState:testPhoneNumberURI:);

  return v10(a1, a2, a3);
}

uint64_t dispatch thunk of MLS.SwiftMLSClientCoordinator.version(group:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 344) + **(*v2 + 344));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v8(a1, a2);
}

uint64_t dispatch thunk of MLS.SwiftMLSClientCoordinator.add(members:toGroup:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = (*(*v5 + 368) + **(*v5 + 368));
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  *v12 = v6;
  v12[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v14(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of MLS.SwiftMLSClientCoordinator.kick(members:fromGroup:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = (*(*v5 + 376) + **(*v5 + 376));
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  *v12 = v6;
  v12[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v14(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of MLS.SwiftMLSClientCoordinator.downgrade(group:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = (*(*v4 + 384) + **(*v4 + 384));
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v12(a1, a2, a3, a4);
}

uint64_t dispatch thunk of MLS.SwiftMLSClientCoordinator.leave(group:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = (*(*v4 + 392) + **(*v4 + 392));
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v12(a1, a2, a3, a4);
}

uint64_t dispatch thunk of MLS.SwiftMLSClientCoordinator.applicationEncrypt(data:withGroup:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v16 = (*(*v6 + 408) + **(*v6 + 408));
  v14 = swift_task_alloc();
  *(v7 + 16) = v14;
  *v14 = v7;
  v14[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v16(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of MLS.SwiftMLSClientCoordinator.applicationSign(input:withGroup:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = (*(*v5 + 416) + **(*v5 + 416));
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  *v12 = v6;
  v12[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v14(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of MLS.SwiftMLSClientCoordinator.applicationEncrypt(groupName:withGroup:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v16 = (*(*v6 + 424) + **(*v6 + 424));
  v14 = swift_task_alloc();
  *(v7 + 16) = v14;
  *v14 = v7;
  v14[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v16(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of MLS.SwiftMLSClientCoordinator.processIncoming(groupName:forGroup:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v16 = (*(*v6 + 432) + **(*v6 + 432));
  v14 = swift_task_alloc();
  *(v7 + 16) = v14;
  *v14 = v7;
  v14[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v16(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of MLS.SwiftMLSClientCoordinator.processIncoming(message:context:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 440) + **(*v3 + 440));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v10(a1, a2, a3);
}

uint64_t dispatch thunk of MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = (*(*v5 + 448) + **(*v5 + 448));
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  *v12 = v6;
  v12[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v14(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of MLS.SwiftMLSClientCoordinator.processIncoming(failureToDecrypt:withGroup:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = (*(*v5 + 472) + **(*v5 + 472));
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  *v12 = v6;
  v12[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v14(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of MLS.SwiftMLSClientCoordinator.processIncoming(errorMessage:withGroup:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = (*(*v5 + 480) + **(*v5 + 480));
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  *v12 = v6;
  v12[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v14(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of MLS.SwiftMLSClientCoordinator.getCredentialSigningRequest(telURI:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 528) + **(*v3 + 528));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v10(a1, a2, a3);
}

uint64_t dispatch thunk of MLS.SwiftMLSClientCoordinator.loadCredential(credential:telURI:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 536) + **(*v3 + 536));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v10(a1, a2, a3);
}

uint64_t sub_2651111C4()
{

  outlined consume of MLS.AllMember(v0[5], v0[6]);

  v1 = v0[12];
  if (v1 >> 60 != 15)
  {
    outlined consume of Data._Representation(v0[11], v1);
  }

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

uint64_t partial apply for closure #1 in MLS.SwiftMLSClientCoordinator.performFailureToDecrypt(groupIdentifier:ftdInfo:isWithinPersisterTransaction:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(v4 + 16);
  v11 = *(v4 + 24);
  v12 = *(v4 + 32);
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return closure #1 in MLS.SwiftMLSClientCoordinator.performFailureToDecrypt(groupIdentifier:ftdInfo:isWithinPersisterTransaction:)(a1, a2, a3, a4, v10, v11, v12, (v4 + 40));
}

uint64_t partial apply for closure #1 in MLS.SwiftMLSClientCoordinator.retry(eventState:forGroupIdentifier:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return closure #1 in MLS.SwiftMLSClientCoordinator.retry(eventState:forGroupIdentifier:)(a1, v4, v5, v7, v6);
}

uint64_t sub_265111428()
{

  outlined consume of MLS.OutgoingEventState.EventSpecificState(*(v0 + 32), *(v0 + 40), *(v0 + 48));

  v1 = *(v0 + 80);
  if (v1 >> 60 != 15)
  {
    outlined consume of Data._Representation(*(v0 + 72), v1);
  }

  return MEMORY[0x2821FE8E8](v0, 112, 7);
}

uint64_t partial apply for closure #1 in closure #1 in MLS.SwiftMLSClientCoordinator.retry(eventState:forGroupIdentifier:)()
{
  v2 = v0[11];
  v3 = v0[12];
  v4 = v0[13];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return closure #1 in closure #1 in MLS.SwiftMLSClientCoordinator.retry(eventState:forGroupIdentifier:)((v0 + 2), v2, v3, v4);
}

uint64_t outlined consume of MLS.KeyPackageFetcher.FetchResult?(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
  }

  return result;
}

uint64_t _s15SecureMessaging3MLSO19OutgoingEventUpdateOWOi0_(uint64_t result)
{
  *(result + 176) &= 0x1FuLL;
  *(result + 268) = 0x40000000;
  return result;
}

uint64_t sub_26511160C()
{
  swift_unknownObjectRelease();

  v1 = v0[8];
  if (v1 >> 60 != 15)
  {
    outlined consume of Data._Representation(v0[7], v1);
  }

  if (v0[11] >> 16 != 0xFFFFFFFFLL || (v0[13] & 0x3000000000000000) != 0)
  {
    outlined consume of Data._Representation(v0[9], v0[10]);
    outlined consume of MLS.EncryptedRCS.SigningInput.ContentType(v0[11], v0[12], v0[13], v0[14], v0[15]);
  }

  v3 = v0[18];
  if (v3 >> 60 != 15)
  {
    outlined consume of Data._Representation(v0[17], v3);
    v4 = v0[22];
    if (v4 >> 60 != 15)
    {
      outlined consume of Data._Representation(v0[21], v4);
    }
  }

  v5 = v0[24];
  if (v5 >> 60 != 15)
  {
    outlined consume of Data._Representation(v0[23], v5);
  }

  return MEMORY[0x2821FE8E8](v0, 224, 7);
}

uint64_t partial apply for closure #1 in MLS.SwiftMLSClientCoordinator.handleIncomingApplicationMessage(eventIdentifier:message:applicationMessageData:group:swiftMLSGroup:metricCollector:context:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[26];
  v8 = v1[27];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return closure #1 in MLS.SwiftMLSClientCoordinator.handleIncomingApplicationMessage(eventIdentifier:message:applicationMessageData:group:swiftMLSGroup:metricCollector:context:)(a1, v4, v5, v6, (v1 + 5), v7, v8);
}

uint64_t partial apply for implicit closure #1 in MLS.SwiftMLSClientCoordinator.retrieveKeyPackages(otherMembers:eventIdentifier:functionName:keyPackageError:)(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return implicit closure #1 in MLS.SwiftMLSClientCoordinator.retrieveKeyPackages(otherMembers:eventIdentifier:functionName:keyPackageError:)(a1, v5, v4);
}

uint64_t sub_26511187C()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t partial apply for closure #1 in closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(errorMessage:withGroup:context:)(uint64_t a1)
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
  v11[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return closure #1 in closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(errorMessage:withGroup:context:)(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_265111A1C()
{
  v1 = type metadata accessor for MLS.Group.CommitOutput();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = *(v2 + 64);

  v5 = *(v0 + 10);
  if (v5 >> 60 != 15)
  {
    outlined consume of Data._Representation(*(v0 + 9), v5);
  }

  if (*(v0 + 13) >> 16 != 0xFFFFFFFFLL || (*(v0 + 15) & 0x3000000000000000) != 0)
  {
    outlined consume of Data._Representation(*(v0 + 11), *(v0 + 12));
    outlined consume of MLS.EncryptedRCS.SigningInput.ContentType(*(v0 + 13), *(v0 + 14), *(v0 + 15), *(v0 + 16), *(v0 + 17));
  }

  v7 = *(v0 + 20);
  if (v7 >> 60 != 15)
  {
    outlined consume of Data._Representation(*(v0 + 19), v7);
    v8 = *(v0 + 24);
    if (v8 >> 60 != 15)
    {
      outlined consume of Data._Representation(*(v0 + 23), v8);
    }
  }

  v9 = *(v0 + 26);
  if (v9 >> 60 != 15)
  {
    outlined consume of Data._Representation(*(v0 + 25), v9);
  }

  v10 = (v3 + 224) & ~v3;
  v11 = (((((((v4 + v10 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(&v0[v10], v1);

  __swift_destroy_boxed_opaque_existential_1Tm(&v0[v11]);

  return MEMORY[0x2821FE8E8](v0, v11 + 40, v3 | 7);
}

uint64_t partial apply for closure #7 in closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(type metadata accessor for MLS.Group.CommitOutput() - 8);
  v7 = (*(v6 + 80) + 224) & ~*(v6 + 80);
  v8 = *(v4 + 48);
  v9 = *(v4 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return closure #7 in closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:)(a1, a2, a3, a4, v8, v4 + 56, v4 + v7, v9);
}

uint64_t outlined init with take of MLS.Group.Member?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC8SwiftMLS0F0O8IdentityO10CredentialO_Tt0g5Tf4g_n(uint64_t a1)
{
  v2 = type metadata accessor for MLS.Identity.Credential();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy8SwiftMLS0D0O8IdentityO10CredentialOGMd, &_ss11_SetStorageCy8SwiftMLS0D0O8IdentityO10CredentialOGMR);
    v9 = static _SetStorage.allocate(capacity:)();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      lazy protocol witness table accessor for type MLS.AddMembersOperation and conformance MLS.AddMembersOperation(&lazy protocol witness table cache variable for type MLS.Identity.Credential and conformance MLS.Identity.Credential, MEMORY[0x277D6AC88], MEMORY[0x277D6AC90]);
      v16 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v6, *(v9 + 48) + v18 * v14, v2);
          lazy protocol witness table accessor for type MLS.AddMembersOperation and conformance MLS.AddMembersOperation(&lazy protocol witness table cache variable for type MLS.Identity.Credential and conformance MLS.Identity.Credential, MEMORY[0x277D6AC88], MEMORY[0x277D6AC98]);
          v23 = dispatch thunk of static Equatable.== infix(_:_:)();
          v24 = *v15;
          (*v15)(v6, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

Swift::Int specialized closure #1 in _NativeSet.filter(_:)(Swift::Int result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v23 = 0;
  v22 = result;
  v5 = 0;
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v12 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_12:
    v24 = v12 | (v5 << 6);
    v15 = *(a3 + 48) + 32 * v24;
    v17 = *v15;
    v16 = *(v15 + 8);
    v18 = *(v15 + 16);
    v19 = *(v15 + 24);
    outlined copy of MLS.AllMember(*v15, v16);
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    v11 = specialized Set.contains(_:)(v17, v16, v18, v19, a4);
    result = outlined consume of MLS.AllMember(v17, v16);
    if ((v11 & 1) == 0)
    {
      *(v22 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
      if (__OFADD__(v23++, 1))
      {
        goto LABEL_21;
      }
    }
  }

  v13 = v5;
  while (1)
  {
    v5 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v5 >= v10)
    {

      return specialized _NativeSet.extractSubset(using:count:)(v22, a2, v23, a3);
    }

    v14 = *(v6 + 8 * v5);
    ++v13;
    if (v14)
    {
      v12 = __clz(__rbit64(v14));
      v9 = (v14 - 1) & v14;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

Swift::Int specialized _NativeSet.filter(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v35 = a3;
  v4 = v3;
  v5 = a1;
  v39 = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 32);
  v7 = v6 & 0x3F;
  v8 = ((1 << v6) + 63) >> 6;
  v9 = 8 * v8;
  v38 = a2;

  if (v7 > 0xD)
  {
    goto LABEL_23;
  }

  while (1)
  {
    v31 = v8;
    v32 = v4;
    v30 = &v30;
    MEMORY[0x28223BE20](v10);
    v33 = &v30 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v33, v9);
    v34 = 0;
    v11 = 0;
    v12 = v5 + 56;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 56);
    v4 = (v13 + 63) >> 6;
    v37 = v5;
    while (v15)
    {
      v16 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_13:
      v19 = v16 | (v11 << 6);
      v20 = *(v5 + 48);
      v36 = v19;
      v21 = v20 + 32 * v19;
      v22 = *v21;
      v9 = *(v21 + 8);
      v23 = *(v21 + 16);
      v24 = *(v21 + 24);
      outlined copy of MLS.AllMember(*v21, v9);
      if (one-time initialization token for shared != -1)
      {
        swift_once();
      }

      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v8 = specialized Set.contains(_:)(v22, v9, v23, v24, v38);
      outlined consume of MLS.AllMember(v22, v9);
      v5 = v37;
      if ((v8 & 1) == 0)
      {
        *&v33[(v36 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v36;
        if (__OFADD__(v34++, 1))
        {
          __break(1u);
        }
      }
    }

    v17 = v11;
    while (1)
    {
      v11 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v11 >= v4)
      {
        v26 = specialized _NativeSet.extractSubset(using:count:)(v33, v31, v34, v5);

        return v26;
      }

      v18 = *(v12 + 8 * v11);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v15 = (v18 - 1) & v18;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_23:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v28 = swift_slowAlloc();
  v29 = v38;

  v26 = _ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s10_NativeSetVy15SecureMessaging3MLSO9AllMemberOG_Tg506_ss10_gh28V6filteryAByxGSbxKXEKFADs13_ab9VKXEfU_15i15Messaging3MLSO9lM5O_TG5AMxSbs5Error_pRi_zRi0_zlyALIsgndzo_Tf1nc_n04_s15it137MLSO25SwiftMLSClientCoordinatorC15processIncoming7message8forGroup7contextAC0H23MessageProcessedContextVy_10Foundation4DataVGAC0hM0Vy_AC9lM61OG_SSAC0hmO0Vy_ANGtYaKFAOyYaYbKAA8MLSActorCYcXEfU0_SbASXEfU4_ShyALGTf1nnc_nTm(v28, v8, v5, v29, v35);

  MEMORY[0x266755550](v28, -1, -1);

  return v26;
}

uint64_t outlined copy of MLS.AllMember?(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 <= 0xFDu)
  {
    return outlined copy of MLS.AllMember(a1, a2);
  }

  return a1;
}

uint64_t sub_265112648()
{

  if (*(v0 + 80))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
  }

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t partial apply for closure #1 in MLS.SwiftMLSClientCoordinator.performSelfHeal(groupIdentifier:swiftMLSGroup:ftdInfo:isWithinPersisterTransaction:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = v4[2];
  v10 = v4[3];
  v11 = v4[4];
  v12 = v4[5];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return closure #1 in MLS.SwiftMLSClientCoordinator.performSelfHeal(groupIdentifier:swiftMLSGroup:ftdInfo:isWithinPersisterTransaction:)(a1, a2, a3, a4, v9, v10, v11, v12);
}

uint64_t sub_265112798()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t partial apply for closure #1 in MLS.SwiftMLSClientCoordinator.performEraAdvancement(groupIdentifier:swiftMLSGroup:ftdInfo:isWithinPersisterTransaction:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = v4[2];
  v10 = v4[3];
  v11 = v4[4];
  v12 = v4[5];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return closure #1 in MLS.SwiftMLSClientCoordinator.performEraAdvancement(groupIdentifier:swiftMLSGroup:ftdInfo:isWithinPersisterTransaction:)(a1, a2, a3, a4, v9, v10, v11, v12);
}

uint64_t lazy protocol witness table accessor for type MLS.AddMembersOperation and conformance MLS.AddMembersOperation(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t lazy protocol witness table accessor for type MLS.GroupFetchError and conformance MLS.GroupFetchError()
{
  result = lazy protocol witness table cache variable for type MLS.GroupFetchError and conformance MLS.GroupFetchError;
  if (!lazy protocol witness table cache variable for type MLS.GroupFetchError and conformance MLS.GroupFetchError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupFetchError and conformance MLS.GroupFetchError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.GroupFetchError and conformance MLS.GroupFetchError;
  if (!lazy protocol witness table cache variable for type MLS.GroupFetchError and conformance MLS.GroupFetchError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupFetchError and conformance MLS.GroupFetchError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.GroupFetchError and conformance MLS.GroupFetchError;
  if (!lazy protocol witness table cache variable for type MLS.GroupFetchError and conformance MLS.GroupFetchError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupFetchError and conformance MLS.GroupFetchError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.GroupFetchError and conformance MLS.GroupFetchError;
  if (!lazy protocol witness table cache variable for type MLS.GroupFetchError and conformance MLS.GroupFetchError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupFetchError and conformance MLS.GroupFetchError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.GroupFetchError and conformance MLS.GroupFetchError;
  if (!lazy protocol witness table cache variable for type MLS.GroupFetchError and conformance MLS.GroupFetchError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupFetchError and conformance MLS.GroupFetchError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.GroupFetchError and conformance MLS.GroupFetchError;
  if (!lazy protocol witness table cache variable for type MLS.GroupFetchError and conformance MLS.GroupFetchError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupFetchError and conformance MLS.GroupFetchError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.GroupFetchError and conformance MLS.GroupFetchError;
  if (!lazy protocol witness table cache variable for type MLS.GroupFetchError and conformance MLS.GroupFetchError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupFetchError and conformance MLS.GroupFetchError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.GroupFetchError and conformance MLS.GroupFetchError;
  if (!lazy protocol witness table cache variable for type MLS.GroupFetchError and conformance MLS.GroupFetchError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupFetchError and conformance MLS.GroupFetchError);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.GroupDeletionError and conformance MLS.GroupDeletionError()
{
  result = lazy protocol witness table cache variable for type MLS.GroupDeletionError and conformance MLS.GroupDeletionError;
  if (!lazy protocol witness table cache variable for type MLS.GroupDeletionError and conformance MLS.GroupDeletionError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupDeletionError and conformance MLS.GroupDeletionError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.GroupDeletionError and conformance MLS.GroupDeletionError;
  if (!lazy protocol witness table cache variable for type MLS.GroupDeletionError and conformance MLS.GroupDeletionError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupDeletionError and conformance MLS.GroupDeletionError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.GroupDeletionError and conformance MLS.GroupDeletionError;
  if (!lazy protocol witness table cache variable for type MLS.GroupDeletionError and conformance MLS.GroupDeletionError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupDeletionError and conformance MLS.GroupDeletionError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.GroupDeletionError and conformance MLS.GroupDeletionError;
  if (!lazy protocol witness table cache variable for type MLS.GroupDeletionError and conformance MLS.GroupDeletionError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupDeletionError and conformance MLS.GroupDeletionError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.GroupDeletionError and conformance MLS.GroupDeletionError;
  if (!lazy protocol witness table cache variable for type MLS.GroupDeletionError and conformance MLS.GroupDeletionError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupDeletionError and conformance MLS.GroupDeletionError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.GroupDeletionError and conformance MLS.GroupDeletionError;
  if (!lazy protocol witness table cache variable for type MLS.GroupDeletionError and conformance MLS.GroupDeletionError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupDeletionError and conformance MLS.GroupDeletionError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.GroupDeletionError and conformance MLS.GroupDeletionError;
  if (!lazy protocol witness table cache variable for type MLS.GroupDeletionError and conformance MLS.GroupDeletionError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupDeletionError and conformance MLS.GroupDeletionError);
  }

  return result;
}

unint64_t specialized MLS.KeyPackageRetrievalResult.uriToSwiftMLSKeyPackage.getter(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for MLS.Client.KeyPackage();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v70 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v71 = &v53 - v8;

  v9 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_8SwiftMLS0D0O6ClientO10KeyPackageVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v10 = v9;
  v11 = 0;
  v12 = a1 + 64;
  v13 = 1 << *(a1 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(a1 + 64);
  v16 = (v13 + 63) >> 6;
  v63 = v4;
  v64 = (v5 + 16);
  v60 = v5 + 32;
  v61 = v5 + 8;
  v62 = v5;
  v59 = v5 + 40;
  v17 = v9;
  v54 = a1 + 64;
  v55 = a1;
  v53 = v16;
  if (!v15)
  {
    while (1)
    {
LABEL_5:
      v18 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        goto LABEL_36;
      }

      if (v18 >= v16)
      {
        break;
      }

      v15 = *(v12 + 8 * v18);
      ++v11;
      if (v15)
      {
        v58 = v17;
        v11 = v18;
        goto LABEL_9;
      }
    }

LABEL_32:

    return v17;
  }

  while (1)
  {
    v58 = v17;
LABEL_9:
    v19 = __clz(__rbit64(v15)) | (v11 << 6);
    v20 = *(a1 + 48) + 32 * v19;
    v21 = *(v20 + 8);
    v22 = *(v20 + 16);
    v23 = *(v20 + 24);
    v24 = *(*(a1 + 56) + 8 * v19);
    v72 = *v20;
    v73 = v21;
    v67 = v22;
    v68 = v23;
    outlined copy of MLS.AllMember(v72, v21);

    if (!v24)
    {
      v17 = v58;
      goto LABEL_32;
    }

    v56 = v15;
    v57 = v11;
    v66 = *(v24 + 16);
    if (v66)
    {
      break;
    }

    v27 = v10;
    v30 = v58;
LABEL_28:
    v15 = (v56 - 1) & v56;
    outlined consume of MLS.AllMember(v72, v73);

    v10 = v27;
    v17 = v30;
    v12 = v54;
    a1 = v55;
    v11 = v57;
    v16 = v53;
    if (!v15)
    {
      goto LABEL_5;
    }
  }

  v25 = 0;
  v26 = (v24 + 40);
  v65 = v24;
  while (v25 < *(v24 + 16))
  {
    v31 = *(v26 - 1);
    v32 = *v26;
    outlined copy of Data._Representation(v31, *v26);
    outlined copy of Data._Representation(v31, v32);
    v33 = v71;
    MLS.Client.KeyPackage.init(fromRaw:)();
    if (v2)
    {
      outlined consume of MLS.AllMember(v72, v73);
      outlined consume of Data._Representation(v31, v32);

      return v58;
    }

    v69 = 0;
    (*v64)(v70, v33, v4);
    v35 = v72;
    v34 = v73;
    outlined copy of MLS.AllMember(v72, v73);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v74 = v10;
    v38 = specialized __RawDictionaryStorage.find<A>(_:)(v35, v34);
    v39 = v10[2];
    v40 = (v37 & 1) == 0;
    v41 = v39 + v40;
    if (__OFADD__(v39, v40))
    {
      goto LABEL_35;
    }

    v42 = v37;
    if (v10[3] >= v41)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if (v37)
        {
          goto LABEL_12;
        }
      }

      else
      {
        specialized _NativeDictionary.copy()();
        if (v42)
        {
          goto LABEL_12;
        }
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v41, isUniquelyReferenced_nonNull_native);
      v43 = specialized __RawDictionaryStorage.find<A>(_:)(v72, v73);
      if ((v42 & 1) != (v44 & 1))
      {
        goto LABEL_38;
      }

      v38 = v43;
      if (v42)
      {
LABEL_12:
        outlined consume of MLS.AllMember(v72, v73);
        v27 = v74;
        v28 = v62;
        v29 = v74[7] + *(v62 + 72) * v38;
        v4 = v63;
        (*(v62 + 40))(v29, v70, v63);
        outlined consume of Data._Representation(v31, v32);
        (*(v28 + 8))(v71, v4);
        goto LABEL_13;
      }
    }

    v27 = v74;
    v74[(v38 >> 6) + 8] |= 1 << v38;
    v45 = (v27[6] + 16 * v38);
    v46 = v73;
    *v45 = v72;
    v45[1] = v46;
    v47 = v62;
    v48 = v27[7] + *(v62 + 72) * v38;
    v4 = v63;
    (*(v62 + 32))(v48, v70, v63);
    outlined consume of Data._Representation(v31, v32);
    (*(v47 + 8))(v71, v4);
    v49 = v27[2];
    v50 = __OFADD__(v49, 1);
    v51 = v49 + 1;
    if (v50)
    {
      goto LABEL_37;
    }

    v27[2] = v51;
LABEL_13:
    ++v25;
    v26 += 2;
    v30 = v27;
    v10 = v27;
    v24 = v65;
    v2 = v69;
    if (v66 == v25)
    {
      goto LABEL_28;
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t MLS.EraAdvancementOperation.__allocating_init(group:context:persister:eventSender:clientIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t *a8)
{
  v16 = swift_allocObject();
  MLS.EraAdvancementOperation.init(group:context:persister:eventSender:clientIdentifier:)(a1, a2, a3, a4, a5, a6, a7, a8);
  return v16;
}

uint64_t closure #1 in MLS.EraAdvancementOperation.errorHandlingPolicy.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v5[10] = a3;
  v5[11] = a5;
  v5[8] = a1;
  v5[9] = a2;
  v7 = *a5;
  v5[12] = *a5;
  v8 = *(v7 + 88);
  v5[13] = v8;
  v5[14] = *(v8 - 8);
  v9 = swift_task_alloc();
  v10 = *a4;
  v5[15] = v9;
  v5[16] = v10;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v11 = static MLSActor.shared;

  return MEMORY[0x2822009F8](closure #1 in MLS.EraAdvancementOperation.errorHandlingPolicy.getter, v11, 0);
}

uint64_t closure #1 in MLS.EraAdvancementOperation.errorHandlingPolicy.getter()
{
  v37 = v0;
  v1 = *(v0 + 72);

  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 96);
    v34 = *(v0 + 104);
    v6 = *(v0 + 72);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v36[0] = v9;
    *v7 = 136315394;
    v10 = *(v5 + 112);
    v11 = (*(v10 + 16))(v34, v10);
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, v36);

    *(v7 + 4) = v13;
    *(v7 + 12) = 2112;
    v14 = v6;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v15;
    *v8 = v15;
    _os_log_impl(&dword_264F1F000, v3, v4, "EraAdvancementOperation hit error. Downgrading { identifier: %s, error: %@ }", v7, 0x16u);
    outlined destroy of NSObject?(v8, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x266755550](v8, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x266755550](v9, -1, -1);
    MEMORY[0x266755550](v7, -1, -1);
  }

  else
  {
    v16 = *(v0 + 96);

    v10 = *(v16 + 112);
  }

  v17 = *(v0 + 120);
  v18 = *(v0 + 128);
  v19 = *(v0 + 104);
  v20 = *(v0 + 112);
  v22 = *(v0 + 88);
  v21 = *(v0 + 96);
  v35 = *(v0 + 80);
  v23 = *(v0 + 64);
  v24 = *(v21 + 120);
  v25 = *(v21 + 96);
  *(v0 + 16) = *(v21 + 80);
  *(v0 + 24) = v19;
  *(v0 + 32) = v25;
  *(v0 + 48) = v10;
  *(v0 + 56) = v24;
  v26 = type metadata accessor for MLS.DowngradeOperation(0, v0 + 16);
  v27 = *(v22 + 2);
  v28 = *(v22 + 3);
  (*(v20 + 16))(v17, &v22[*(*v22 + 136)], v19);
  v29 = &v22[*(*v22 + 160)];
  v30 = v29[1];
  v36[0] = *v29;
  v36[1] = v30;

  v31 = MLS.DowngradeOperation.__allocating_init(group:context:clientIdentifier:shouldHeal:)(v27, v28, v17, v36, 0);
  *(v23 + 24) = v26;
  *(v23 + 32) = swift_getWitnessTable();
  *v23 = v31;
  outlined init with copy of MLS.OutgoingEventState?(v35, v23 + 40, &_s15SecureMessaging3MLSO21SwiftMLSGroupProtocol_pSgMd, &_s15SecureMessaging3MLSO21SwiftMLSGroupProtocol_pSgMR);
  *(v23 + 408) = 2;
  *(v23 + 424) = 0;
  *(v23 + 432) = 0;
  *(v23 + 416) = v18;

  v32 = *(v0 + 8);

  return v32();
}

uint64_t MLS.EraAdvancementOperation.group.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

double MLS.EraAdvancementOperation.clientIdentifier.getter@<D0>(void *a1@<X8>)
{
  v2 = (v1 + *(*v1 + 160));
  v3 = v2[1];
  *a1 = *v2;
  a1[1] = v3;

  return result;
}

uint64_t MLS.EraAdvancementOperation.logger.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 168);
  v4 = type metadata accessor for Logger();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

char *MLS.EraAdvancementOperation.init(group:context:persister:eventSender:clientIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t *a8)
{
  v15 = *v8;
  v17 = *a8;
  v16 = a8[1];
  Logger.init(subsystem:category:)();
  *(v8 + 2) = a1;
  *(v8 + 3) = a2;
  (*(*(*(v15 + 88) - 8) + 32))(&v8[*(*v8 + 136)], a3);
  v18 = &v8[*(*v8 + 144)];
  *v18 = a4;
  *(v18 + 1) = a5;
  v19 = &v8[*(*v8 + 152)];
  *v19 = a6;
  *(v19 + 1) = a7;
  v20 = &v8[*(*v8 + 160)];
  *v20 = v17;
  *(v20 + 1) = v16;
  return v8;
}

uint64_t partial apply for closure #1 in MLS.EraAdvancementOperation.errorHandlingPolicy.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return closure #1 in MLS.EraAdvancementOperation.errorHandlingPolicy.getter(a1, a2, a3, a4, v4);
}

uint64_t MLS.EraAdvancementOperation.membersRequiringKeyPackages(swiftMLSGroup:)()
{
  v1[4] = v0;
  v2 = *v0;
  v1[5] = *v0;
  v3 = *(v2 + 104);
  v1[6] = v3;
  v4 = *(v3 + 8);
  v1[7] = v4;
  v1[8] = *(v4 + 8);
  v5 = *(v2 + 80);
  v1[9] = v5;
  v1[10] = swift_getAssociatedTypeWitness();
  v1[11] = swift_task_alloc();
  v1[12] = *(v5 - 8);
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v6 = static MLSActor.shared;
  v1[19] = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.EraAdvancementOperation.membersRequiringKeyPackages(swiftMLSGroup:), v6, 0);
}

{
  v22 = v0;
  v0[20] = *(*v0[4] + 168);

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v4 = v0[4];
    v3 = v0[5];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v21 = v6;
    *v5 = 136315394;
    v7 = (*(*(v3 + 112) + 16))(*(v3 + 88));
    v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v8, &v21);

    *(v5 + 4) = v9;
    *(v5 + 12) = 2080;
    *(v5 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v4 + 16), *(v4 + 24), &v21);
    _os_log_impl(&dword_264F1F000, v1, v2, "EraAdvancementOperation loading known members { identifier: %s, group: %s }", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v6, -1, -1);
    MEMORY[0x266755550](v5, -1, -1);
  }

  v10 = v0[10];
  v11 = v0[11];
  v13 = v0[8];
  v12 = v0[9];
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 16))(v10, AssociatedConformanceWitness);
  VersatileError.init(type:)(v11, v12, v13);
  v15 = swift_task_alloc();
  v0[21] = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay15SecureMessaging3URIVGMd, &_sSay15SecureMessaging3URIVGMR);
  *v15 = v0;
  v15[1] = MLS.EraAdvancementOperation.membersRequiringKeyPackages(swiftMLSGroup:);
  v17 = v0[17];
  v16 = v0[18];
  v18 = v0[9];
  v19 = v0[4];
  v24 = v0[8];
  v25 = v17;

  return _s15SecureMessaging12asyncRethrow_2as3logq_q_yYaYbKXK_xySSYbcSgtYaxYKAA14VersatileErrorRzr0_lF((v0 + 2), &async function pointer to partial apply for implicit closure #3 in MLS.EraAdvancementOperation.membersRequiringKeyPackages(swiftMLSGroup:), v19, v16, 0, 0, v18);
}

{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v4 = *(*v1 + 96);
  v5 = *(*v1 + 72);

  v6 = *(v4 + 8);
  v2[22] = v6;
  v2[23] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v3, v5);
  v7 = v2[19];
  if (v0)
  {
    v8 = MLS.EraAdvancementOperation.membersRequiringKeyPackages(swiftMLSGroup:);
  }

  else
  {
    v8 = MLS.EraAdvancementOperation.membersRequiringKeyPackages(swiftMLSGroup:);
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

{
  v27 = v0;
  v1 = v0[2];
  v0[24] = v1;

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[4];
    v4 = v0[5];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v26 = v7;
    *v6 = 136315650;
    v8 = (*(*(v4 + 112) + 16))(*(v4 + 88));
    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, &v26);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2080;
    *(v6 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v5 + 16), *(v5 + 24), &v26);
    *(v6 + 22) = 2080;
    v11 = MEMORY[0x266754630](v1, &type metadata for URI);
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v26);

    *(v6 + 24) = v13;
    _os_log_impl(&dword_264F1F000, v2, v3, "EraAdvancementOperation fetching members { identifier: %s, group: %s, uris: %s }", v6, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v7, -1, -1);
    MEMORY[0x266755550](v6, -1, -1);
  }

  v14 = v0[10];
  v15 = v0[11];
  v17 = v0[8];
  v16 = v0[9];
  v18 = v0[4];
  v19 = swift_task_alloc();
  v0[25] = v19;
  *(v19 + 16) = v18;
  *(v19 + 24) = v1;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 32))(v14, AssociatedConformanceWitness);
  VersatileError.init(type:)(v15, v16, v17);
  v21 = swift_task_alloc();
  v0[26] = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay15SecureMessaging3MLSO9AllMemberOGMd, &_sSay15SecureMessaging3MLSO9AllMemberOGMR);
  *v21 = v0;
  v21[1] = MLS.EraAdvancementOperation.membersRequiringKeyPackages(swiftMLSGroup:);
  v23 = v0[15];
  v22 = v0[16];
  v24 = v0[9];
  v29 = v0[8];
  v30 = v23;

  return _s15SecureMessaging12asyncRethrow_2as3logq_q_yYaYbKXK_xySSYbcSgtYaxYKAA14VersatileErrorRzr0_lF((v0 + 3), &async function pointer to partial apply for implicit closure #7 in MLS.EraAdvancementOperation.membersRequiringKeyPackages(swiftMLSGroup:), v19, v22, 0, 0, v24);
}

{
  v2 = *v1;
  v3 = *(*v1 + 176);
  v4 = *(*v1 + 128);
  v5 = *(*v1 + 72);

  v3(v4, v5);

  if (v0)
  {
    v6 = *(v2 + 152);
    v7 = MLS.EraAdvancementOperation.membersRequiringKeyPackages(swiftMLSGroup:);
  }

  else
  {
    v8 = *(v2 + 152);

    v7 = MLS.EraAdvancementOperation.membersRequiringKeyPackages(swiftMLSGroup:);
    v6 = v8;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

{
  v1 = *(v0 + 24);

  v2 = *(v0 + 8);

  return v2(v1);
}

{
  v1 = *(*(v0 + 96) + 32);
  v1(*(v0 + 112), *(v0 + 136), *(v0 + 72));
  if (_getErrorEmbeddedNSError<A>(_:)())
  {
    (*(v0 + 176))(*(v0 + 112), *(v0 + 72));
  }

  else
  {
    v2 = *(v0 + 112);
    v3 = *(v0 + 72);
    swift_allocError();
    v1(v4, v2, v3);
  }

  v5 = *(v0 + 8);

  return v5();
}

{
  v1 = *(*(v0 + 96) + 32);
  v1(*(v0 + 104), *(v0 + 120), *(v0 + 72));
  if (_getErrorEmbeddedNSError<A>(_:)())
  {
    (*(v0 + 176))(*(v0 + 104), *(v0 + 72));
  }

  else
  {
    v2 = *(v0 + 104);
    v3 = *(v0 + 72);
    swift_allocError();
    v1(v4, v2, v3);
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t implicit closure #3 in MLS.EraAdvancementOperation.membersRequiringKeyPackages(swiftMLSGroup:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return MEMORY[0x2822009F8](implicit closure #3 in MLS.EraAdvancementOperation.membersRequiringKeyPackages(swiftMLSGroup:), 0, 0);
}

uint64_t implicit closure #3 in MLS.EraAdvancementOperation.membersRequiringKeyPackages(swiftMLSGroup:)()
{
  v1 = v0[5];
  v2 = *v1;
  v3 = *(v1 + *(*v1 + 144) + 8);
  ObjectType = swift_getObjectType();
  v5 = v2;
  v6 = v1[2];
  v7 = v1[3];
  v8 = (v1 + *(v5 + 160));
  v9 = v8[1];
  v0[2] = *v8;
  v0[3] = v9;
  v10 = *(v3 + 72);

  v13 = (v10 + *v10);
  v11 = swift_task_alloc();
  v0[6] = v11;
  *v11 = v0;
  v11[1] = implicit closure #3 in MLS.EraAdvancementOperation.membersRequiringKeyPackages(swiftMLSGroup:);

  return (v13)(v6, v7, 1, v0 + 2, ObjectType, v3);
}

{
  v1 = *(v0 + 56);
  v2 = *(v1 + 16);
  if (v2)
  {
    v12 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0);
    v3 = v12;
    v4 = v1 + 56;
    do
    {
      v5 = *(v4 - 24);
      v6 = *(v4 - 16);
      outlined copy of MLS.AllMember(v5, v6);
      v8 = *(v12 + 16);
      v7 = *(v12 + 24);
      if (v8 >= v7 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v7 > 1), v8 + 1, 1);
      }

      v4 += 32;
      *(v12 + 16) = v8 + 1;
      v9 = v12 + 16 * v8;
      *(v9 + 32) = v5;
      *(v9 + 40) = v6;
      --v2;
    }

    while (v2);
  }

  else
  {

    v3 = MEMORY[0x277D84F90];
  }

  **(v0 + 32) = v3;
  v10 = *(v0 + 8);

  return v10();
}

uint64_t implicit closure #3 in MLS.EraAdvancementOperation.membersRequiringKeyPackages(swiftMLSGroup:)(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 56) = a1;
  *(v3 + 64) = v1;

  if (v1)
  {
    v4 = implicit closure #5 in MLS.UpdateOtherExpiredKeyPackagesOperation.perform(on:metricCollector:keyPackageResult:);
  }

  else
  {
    v4 = implicit closure #3 in MLS.EraAdvancementOperation.membersRequiringKeyPackages(swiftMLSGroup:);
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t partial apply for implicit closure #3 in MLS.EraAdvancementOperation.membersRequiringKeyPackages(swiftMLSGroup:)(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return implicit closure #3 in MLS.EraAdvancementOperation.membersRequiringKeyPackages(swiftMLSGroup:)(a1, v1);
}

uint64_t implicit closure #7 in MLS.EraAdvancementOperation.membersRequiringKeyPackages(swiftMLSGroup:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](implicit closure #7 in MLS.EraAdvancementOperation.membersRequiringKeyPackages(swiftMLSGroup:), 0, 0);
}

uint64_t implicit closure #7 in MLS.EraAdvancementOperation.membersRequiringKeyPackages(swiftMLSGroup:)()
{
  v1 = *(v0[3] + *(*v0[3] + 152) + 8);
  ObjectType = swift_getObjectType();
  v6 = (*(v1 + 56) + **(v1 + 56));
  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  v3[1] = implicit closure #1 in MLS.UpdateOtherExpiredKeyPackagesOperation.membersRequiringKeyPackages(swiftMLSGroup:);
  v4 = v0[4];

  return v6(v4, ObjectType, v1);
}

uint64_t partial apply for implicit closure #7 in MLS.EraAdvancementOperation.membersRequiringKeyPackages(swiftMLSGroup:)(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return implicit closure #7 in MLS.EraAdvancementOperation.membersRequiringKeyPackages(swiftMLSGroup:)(a1, v5, v4);
}

uint64_t MLS.EraAdvancementOperation.perform(on:metricCollector:keyPackageResult:)(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v5[129] = v4;
  v5[128] = a2;
  v5[127] = a1;
  v8 = *v4;
  v5[130] = *v4;
  v9 = *(v8 + 104);
  v5[131] = v9;
  v5[132] = *(*(v9 + 8) + 8);
  v10 = *(v8 + 80);
  v5[133] = v10;
  v5[134] = swift_getAssociatedTypeWitness();
  v5[135] = swift_task_alloc();
  v5[136] = *(v10 - 8);
  v5[137] = swift_task_alloc();
  v5[138] = swift_task_alloc();
  v5[139] = swift_task_alloc();
  v5[140] = swift_task_alloc();
  v5[141] = swift_task_alloc();
  NewEraInput = type metadata accessor for MLS.Group.Group.CreateNewEraInput();
  v5[142] = NewEraInput;
  v5[143] = *(NewEraInput - 8);
  v5[144] = swift_task_alloc();
  v5[145] = type metadata accessor for MetricCollector.Event(0);
  v5[146] = swift_task_alloc();
  v5[147] = swift_task_alloc();
  v5[148] = *a3;
  v5[149] = *a4;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v12 = static MLSActor.shared;
  v5[150] = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.EraAdvancementOperation.perform(on:metricCollector:keyPackageResult:), v12, 0);
}

uint64_t MLS.EraAdvancementOperation.perform(on:metricCollector:keyPackageResult:)()
{
  v32 = v0;
  v1 = v0[130];
  v2 = v0[129];
  v0[125] = v0[148];
  v0[151] = *(*v2 + 136);
  v3 = *(v1 + 112);
  v0[152] = v3;
  v4 = *(v3 + 16);
  v5 = *(v1 + 88);
  v0[153] = v5;

  v6 = v4(v5, v3);
  v8 = v7;
  v0[154] = v6;
  v0[155] = v7;
  v0[156] = *(*v2 + 168);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = v0 + 125;
    v12 = v0[129];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v31[0] = v14;
    *v13 = 136315394;
    *(v13 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v8, v31);
    *(v13 + 12) = 2080;
    *(v13 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v12 + 16), *(v12 + 24), v31);
    _os_log_impl(&dword_264F1F000, v9, v10, "EraAdvancementOperation advancing era { identifier: %s, group: %s }", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v14, -1, -1);
    MEMORY[0x266755550](v13, -1, -1);
  }

  else
  {
    v11 = v0 + 148;
  }

  v15 = *v11;
  v16 = v0[149];
  v17 = v0[147];
  v18 = v0[146];
  v19 = v0[145];
  Date.init()();
  v20 = *(v19 + 20);
  v21 = type metadata accessor for Date();
  (*(*(v21 - 8) + 56))(v17 + v20, 1, 1, v21);
  outlined init with take of MetricCollector.Event(v17, v18);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v31[0] = v15;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v18, 0x534C4D7466697753, 0xEE0074696D6D6F43, isUniquelyReferenced_nonNull_native);
  v23 = v31[0];
  v0[157] = v31[0];

  v0[125] = v23;
  specialized MLS.KeyPackageRetrievalResult.uriToSwiftMLSKeyPackage.getter(v16);
  v24 = v0[128];
  MLS.Group.Group.CreateNewEraInput.init(packages:)();
  v25 = v24[3];
  v26 = v24[4];
  __swift_project_boxed_opaque_existential_1(v24, v25);
  v30 = (*(v26 + 168) + **(v26 + 168));
  v27 = swift_task_alloc();
  v0[158] = v27;
  *v27 = v0;
  v27[1] = MLS.EraAdvancementOperation.perform(on:metricCollector:keyPackageResult:);
  v28 = v0[144];

  return v30(v0 + 107, v28, v25, v26);
}

{
  v2 = *v1;
  *(*v1 + 1272) = v0;

  if (v0)
  {
    v3 = *(v2 + 1200);

    v4 = MLS.EraAdvancementOperation.perform(on:metricCollector:keyPackageResult:);
    v5 = v3;
  }

  else
  {
    v5 = *(v2 + 1200);
    v4 = MLS.EraAdvancementOperation.perform(on:metricCollector:keyPackageResult:);
  }

  return MEMORY[0x2822009F8](v4, v5, 0);
}

{
  v146 = v0;
  v1 = *(v0 + 880);
  v2 = *(v0 + 888);
  __swift_project_boxed_opaque_existential_1((v0 + 856), v1);
  (*(v2 + 8))(v1, v2);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 856));
  v3._countAndFlagsBits = 0x534C4D7466697753;
  v3._object = 0xEE0074696D6D6F43;
  MetricCollector.end(label:)(v3);
  outlined init with copy of ServerBag.MLS(v0 + 816, v0 + 896);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 1240);
    v7 = *(v0 + 1232);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v140 = v9;
    *v8 = 136315394;
    *(v8 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v6, &v140);
    *(v8 + 12) = 2080;
    v10 = *(v0 + 920);
    __swift_project_boxed_opaque_existential_1((v0 + 896), v10);
    v11 = *(v10 - 8);
    swift_task_alloc();
    (*(v11 + 16))();
    v12 = String.init<A>(describing:)();
    v14 = v13;

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 896));
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v14, &v140);

    *(v8 + 14) = v15;
    _os_log_impl(&dword_264F1F000, v4, v5, "EraAdvancementOperation creating event { identifier: %s, commitOutput: %s }", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v9, -1, -1);
    MEMORY[0x266755550](v8, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 896));
  }

  v16 = *(v0 + 840);
  v17 = *(v0 + 848);
  __swift_project_boxed_opaque_existential_1((v0 + 816), v16);
  MLS.SwiftMLSCommitOutputProtocol.outgoingCommit.getter(v16, v17, &v140);
  v18 = v140;
  v137 = v141;
  *(v0 + 1280) = v141;
  v134 = v142;
  v135 = v143;
  *(v0 + 1288) = v142;
  *(v0 + 1296) = v135;
  v19 = *(v0 + 840);
  v20 = *(v0 + 848);
  __swift_project_boxed_opaque_existential_1((v0 + 816), v19);
  MLS.SwiftMLSCommitOutputProtocol.outgoingWelcome.getter(v19, v20, &v140);
  v22 = v140;
  v21 = v141;
  *(v0 + 1304) = v140;
  *(v0 + 1312) = v21;
  v24 = v142;
  v23 = v143;
  *(v0 + 1320) = v142;
  *(v0 + 1328) = v23;
  if (!v21)
  {

    outlined init with copy of ServerBag.MLS(v0 + 816, v0 + 936);

    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.default.getter();

    v43 = os_log_type_enabled(v41, v42);
    v44 = *(v0 + 1240);
    if (v43)
    {
      v45 = *(v0 + 1232);
      v46 = *(v0 + 1032);
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v140 = v48;
      *v47 = 136315650;
      v49 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v45, v44, &v140);

      *(v47 + 4) = v49;
      *(v47 + 12) = 2080;
      *(v47 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v46 + 16), *(v46 + 24), &v140);
      *(v47 + 22) = 2080;
      v50 = *(v0 + 960);
      __swift_project_boxed_opaque_existential_1((v0 + 936), v50);
      v51 = *(v50 - 8);
      swift_task_alloc();
      (*(v51 + 16))();
      v52 = String.init<A>(describing:)();
      v54 = v53;

      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 936));
      v55 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v52, v54, &v140);

      *(v47 + 24) = v55;
      _os_log_impl(&dword_264F1F000, v41, v42, "EraAdvancementOperation missing welcome { identifier: %s, group: %s, commitOutput: %s }", v47, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x266755550](v48, -1, -1);
      MEMORY[0x266755550](v47, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 936));
    }

    v64 = *(v0 + 1080);
    v65 = *(v0 + 1072);
    v66 = *(v0 + 1064);
    v67 = *(v0 + 1056);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    (*(AssociatedConformanceWitness + 64))(v65, AssociatedConformanceWitness);
    VersatileError.init(type:)(v64, v66, v67);
    v69 = _getErrorEmbeddedNSError<A>(_:)();
    v70 = *(v0 + 1104);
    v71 = *(v0 + 1088);
    if (v69)
    {
      (*(v71 + 8))(*(v0 + 1104), *(v0 + 1064));
    }

    else
    {
      v72 = *(v0 + 1064);
      swift_allocError();
      (*(v71 + 32))(v73, v70, v72);
    }

    v74 = *(v0 + 1152);
    v75 = *(v0 + 1144);
    v76 = *(v0 + 1136);
    swift_willThrow();
    goto LABEL_27;
  }

  v132 = v18;
  v25 = *(v0 + 1272);
  v26 = *(v0 + 1224);
  v27 = *(v0 + 1216);
  v28 = *(v0 + 1064);
  v29 = *(v0 + 1048);
  v30 = *(v0 + 1040);
  *(v0 + 1008) = *(v0 + 1032);
  v31 = *(v30 + 96);
  v32 = *(v30 + 120);
  *(v0 + 768) = v28;
  *(v0 + 776) = v26;
  *(v0 + 784) = v31;
  *(v0 + 792) = v29;
  *(v0 + 800) = v27;
  *(v0 + 808) = v32;
  v33 = type metadata accessor for MLS.EraAdvancementOperation(0, v0 + 768);
  WitnessTable = swift_getWitnessTable();
  MLS.GroupOperation.context(commitOutput:)((v0 + 816), v33, WitnessTable, &v140);
  v35 = v140;
  v36 = v141;
  *(v0 + 1336) = v140;
  *(v0 + 1344) = v36;
  v37 = v142;
  v38 = v143;
  *(v0 + 1352) = v142;
  *(v0 + 1360) = v38;
  v39 = v144;
  v40 = v145;
  *(v0 + 1368) = v144;
  *(v0 + 1376) = v40;
  if (v25)
  {
    (*(*(v0 + 1144) + 8))(*(v0 + 1152), *(v0 + 1136));

    outlined consume of Data._Representation(v134, v135);
    outlined consume of MLS.OutgoingMessage?(v22, v21, v24, v23);

LABEL_28:
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 816));

    v121 = *(v0 + 8);

    return v121();
  }

  v128 = v40;
  v129 = v39;
  v130 = v36;
  v131 = v35;
  v56 = *(v0 + 1240);
  if (v38 >> 60 == 15)
  {

    v57 = Logger.logObject.getter();
    v58 = static os_log_type_t.error.getter();

    v59 = os_log_type_enabled(v57, v58);
    v60 = *(v0 + 1240);
    if (v59)
    {
      v61 = *(v0 + 1232);
      v126 = *(v0 + 1032);
      v62 = swift_slowAlloc();
      v133 = swift_slowAlloc();
      v140 = v133;
      *v62 = 136315394;
      v63 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v61, v60, &v140);

      *(v62 + 4) = v63;
      *(v62 + 12) = 2080;
      *(v62 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v126 + 16), *(v126 + 24), &v140);
      _os_log_impl(&dword_264F1F000, v57, v58, "EraAdvancementOperation missing ratchet tree { identifier: %s, group: %s }", v62, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266755550](v133, -1, -1);
      MEMORY[0x266755550](v62, -1, -1);
    }

    else
    {
    }

    v111 = *(v0 + 1080);
    v112 = *(v0 + 1072);
    v113 = *(v0 + 1064);
    v114 = *(v0 + 1056);
    v115 = swift_getAssociatedConformanceWitness();
    (*(v115 + 88))(v112, v115);
    VersatileError.init(type:)(v111, v113, v114);
    v116 = _getErrorEmbeddedNSError<A>(_:)();
    v117 = *(v0 + 1112);
    v118 = *(v0 + 1088);
    if (v116)
    {
      (*(v118 + 8))(*(v0 + 1112), *(v0 + 1064));
    }

    else
    {
      v119 = *(v0 + 1064);
      swift_allocError();
      (*(v118 + 32))(v120, v117, v119);
    }

    v74 = *(v0 + 1152);
    v75 = *(v0 + 1144);
    v76 = *(v0 + 1136);
    swift_willThrow();
    outlined consume of Data._Representation(v129, v128);
    outlined consume of Data._Representation(v131, v130);
    outlined consume of MLS.OutgoingMessage?(v22, v21, v24, v23);
LABEL_27:

    outlined consume of Data._Representation(v134, v135);
    (*(v75 + 8))(v74, v76);
    goto LABEL_28;
  }

  v127 = *(v0 + 1232);
  v124 = *(v0 + 1224);
  v125 = *(v0 + 1192);
  v123 = *(v0 + 1216);
  swift_bridgeObjectRetain_n();
  outlined copy of Data?(v37, v38);
  v122 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_15SecureMessaging15MetricCollectorV5EventVTt0g5Tf4g_n(MEMORY[0x277D84F90]);

  outlined copy of Data._Representation(v134, v135);
  outlined copy of MLS.OutgoingMessage?(v22, v21, v24, v23);

  v78 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC15SecureMessaging3MLSO9AllMemberO_SD4KeysVyAHSayAF14KeyPackageInfoVG_GTt0g5(v77);
  *(v0 + 200) = v127;
  *(v0 + 208) = v56;
  *(v0 + 216) = v127;
  *(v0 + 224) = v56;
  *(v0 + 232) = xmmword_2651B5F50;
  *(v0 + 248) = v122;
  *(v0 + 256) = v132;
  *(v0 + 264) = v137;
  *(v0 + 272) = v134;
  *(v0 + 280) = v135;
  *(v0 + 288) = v22;
  *(v0 + 296) = v21;
  *(v0 + 304) = v24;
  *(v0 + 312) = v23;
  *(v0 + 320) = v78;
  *(v0 + 328) = v131;
  *(v0 + 336) = v130;
  *(v0 + 344) = v37;
  *(v0 + 352) = v38;
  *(v0 + 360) = v129;
  *(v0 + 368) = v128;
  v79 = *(v0 + 280);
  *(v0 + 80) = *(v0 + 264);
  *(v0 + 96) = v79;
  v80 = *(v0 + 200);
  v81 = *(v0 + 216);
  v82 = *(v0 + 248);
  *(v0 + 48) = *(v0 + 232);
  *(v0 + 64) = v82;
  *(v0 + 16) = v80;
  *(v0 + 32) = v81;
  v83 = *(v0 + 296);
  v84 = *(v0 + 312);
  v85 = *(v0 + 360);
  *(v0 + 160) = *(v0 + 344);
  *(v0 + 176) = v85;
  v86 = *(v0 + 328);
  *(v0 + 128) = v84;
  *(v0 + 144) = v86;
  *(v0 + 112) = v83;
  _s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGWOi8_(v0 + 16);
  v138 = *(v123 + 8);
  outlined copy of Data?(v37, v38);

  outlined copy of Data._Representation(v131, v130);
  outlined copy of Data._Representation(v129, v128);
  outlined init with copy of MLS.OutgoingEventState?(v0 + 200, v0 + 376, &_s15SecureMessaging3MLSO21OutgoingRecreateGroupVy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO21OutgoingRecreateGroupVy_AC9AllMemberO10Foundation4DataVGMR);
  swift_bridgeObjectRetain_n();
  v87 = v138(v124, v123);
  *(v0 + 624) = v127;
  *(v0 + 632) = v56;
  *(v0 + 640) = v125;
  *(v0 + 648) = 0;
  *(v0 + 656) = 9;
  *(v0 + 664) = v127;
  *(v0 + 672) = v56;
  *(v0 + 680) = v87;
  *(v0 + 688) = v88;
  v89 = *(v0 + 672);
  *(v0 + 584) = *(v0 + 656);
  *(v0 + 600) = v89;
  *(v0 + 616) = *(v0 + 688);
  v90 = *(v0 + 640);
  *(v0 + 552) = *(v0 + 624);
  *(v0 + 568) = v90;

  outlined init with copy of MLS.OutgoingEventState(v0 + 624, v0 + 696);
  v91 = Logger.logObject.getter();
  v92 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v91, v92))
  {
    v93 = *(v0 + 1240);
    v94 = *(v0 + 1232);
    v95 = swift_slowAlloc();
    v96 = swift_slowAlloc();
    v140 = v96;
    *v95 = 136315138;
    *(v95 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v94, v93, &v140);
    _os_log_impl(&dword_264F1F000, v91, v92, "EraAdvancementOperation returning operation result { identifier: %s }", v95, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v96);
    MEMORY[0x266755550](v96, -1, -1);
    MEMORY[0x266755550](v95, -1, -1);
  }

  v136 = *(v0 + 1232);
  v139 = *(v0 + 1240);
  v97 = *(v0 + 1080);
  v98 = *(v0 + 1072);
  v99 = *(v0 + 1064);
  v100 = *(v0 + 1056);
  v101 = *(v0 + 1032);
  v102 = *(v0 + 1024);
  v103 = swift_task_alloc();
  *(v0 + 1384) = v103;
  *(v103 + 16) = v102;
  v104 = swift_getAssociatedConformanceWitness();
  (*(v104 + 56))(v98, v104);
  VersatileError.init(type:)(v97, v99, v100);
  v105 = swift_allocObject();
  *(v0 + 1392) = v105;
  v105[2] = v101;
  v105[3] = v136;
  v105[4] = v139;

  v106 = swift_task_alloc();
  *(v0 + 1400) = v106;
  *v106 = v0;
  v106[1] = MLS.EraAdvancementOperation.perform(on:metricCollector:keyPackageResult:);
  v107 = *(v0 + 1128);
  v108 = *(v0 + 1120);
  v109 = *(v0 + 1064);
  v148 = *(v0 + 1056);
  v149 = v108;

  return _s15SecureMessaging12asyncRethrow_2as3logq_q_yYaYbKXK_xySSYbcSgtYaxYKAA14VersatileErrorRzr0_lF(v0 + 976, &async function pointer to partial apply for implicit closure #11 in MLS.EraAdvancementOperation.perform(on:metricCollector:keyPackageResult:), v103, v107, partial apply for closure #1 in MLS.EraAdvancementOperation.perform(on:metricCollector:keyPackageResult:), v105, v109);
}

{
  v2 = *v1;

  v3 = v2[150];
  if (v0)
  {
    v4 = v2[141];
    v5 = v2[136];
    v6 = v2[133];
    outlined destroy of MLS.OutgoingEventState((v2 + 78));
    outlined destroy of NSObject?((v2 + 25), &_s15SecureMessaging3MLSO21OutgoingRecreateGroupVy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO21OutgoingRecreateGroupVy_AC9AllMemberO10Foundation4DataVGMR);

    v7 = *(v5 + 8);
    v2[176] = v7;
    v2[177] = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v7(v4, v6);

    v8 = MLS.EraAdvancementOperation.perform(on:metricCollector:keyPackageResult:);
  }

  else
  {
    (*(v2[136] + 8))(v2[141], v2[133]);

    v8 = MLS.EraAdvancementOperation.perform(on:metricCollector:keyPackageResult:);
  }

  return MEMORY[0x2822009F8](v8, v3, 0);
}

{
  v1 = *(v0 + 1376);
  v2 = *(v0 + 1368);
  v3 = *(v0 + 1360);
  v4 = *(v0 + 1352);
  v5 = *(v0 + 1336);
  v32 = *(v0 + 1320);
  v33 = *(v0 + 1328);
  v30 = *(v0 + 1344);
  v31 = *(v0 + 1312);
  v29 = *(v0 + 1304);
  v34 = *(v0 + 1288);
  v35 = *(v0 + 1296);
  v6 = *(v0 + 1152);
  v7 = *(v0 + 1144);
  v36 = *(v0 + 1136);
  v37 = *(v0 + 1024);
  v8 = *(v0 + 1016);
  outlined destroy of NSObject?(v0 + 200, &_s15SecureMessaging3MLSO21OutgoingRecreateGroupVy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO21OutgoingRecreateGroupVy_AC9AllMemberO10Foundation4DataVGMR);
  outlined consume of Data._Representation(v2, v1);
  outlined consume of Data?(v4, v3);
  outlined consume of Data._Representation(v5, v30);
  outlined consume of MLS.OutgoingMessage?(v29, v31, v32, v33);

  outlined consume of Data._Representation(v34, v35);
  outlined consume of Data?(v4, v3);
  (*(v7 + 8))(v6, v36);
  v9 = *(v0 + 976);
  v10 = *(v0 + 984);
  v11 = *(v0 + 992);
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
  *(v8 + 256) = 1;
  *(v8 + 264) = v9;
  *(v8 + 272) = v10;
  *(v8 + 280) = v11;
  *(v8 + 288) = *(v0 + 624);
  v24 = *(v0 + 640);
  v25 = *(v0 + 656);
  v26 = *(v0 + 672);
  *(v8 + 352) = *(v0 + 688);
  *(v8 + 320) = v25;
  *(v8 + 336) = v26;
  *(v8 + 304) = v24;
  *(v8 + 360) = 0;
  outlined init with copy of ServerBag.MLS(v37, v8 + 368);
  *(v8 + 408) = 0;
  *(v8 + 416) = *(v0 + 1000);
  *(v8 + 424) = 0;
  *(v8 + 432) = 0;
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 816));

  v27 = *(v0 + 8);

  return v27();
}

{
  (*(v0[143] + 8))(v0[144], v0[142]);

  v1 = v0[1];

  return v1();
}

{
  v1 = *(v0[136] + 32);
  v1(v0[137], v0[140], v0[133]);
  if (_getErrorEmbeddedNSError<A>(_:)())
  {
    v31 = v0[176];
    v2 = v0[172];
    v3 = v0[171];
    v4 = v0[170];
    v5 = v0[169];
    v6 = v0[168];
    v7 = v0[167];
    v8 = v0[165];
    v9 = v0[164];
    v10 = v0[163];
    v22 = v0[166];
    v24 = v0[161];
    v29 = v0[137];
    v26 = v0[162];
    v27 = v0[133];
    outlined destroy of MLS.OutgoingEventState((v0 + 78));
    outlined destroy of NSObject?((v0 + 25), &_s15SecureMessaging3MLSO21OutgoingRecreateGroupVy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO21OutgoingRecreateGroupVy_AC9AllMemberO10Foundation4DataVGMR);
    outlined consume of Data._Representation(v3, v2);
    outlined consume of Data?(v5, v4);
    outlined consume of Data._Representation(v7, v6);
    outlined consume of MLS.OutgoingMessage?(v10, v9, v8, v22);

    outlined consume of Data._Representation(v24, v26);
    outlined consume of Data?(v5, v4);
    v31(v29, v27);
  }

  else
  {
    v11 = v0[172];
    v12 = v0[171];
    v13 = v0[170];
    v14 = v0[169];
    v28 = v0[165];
    v30 = v0[166];
    v23 = v0[168];
    v25 = v0[164];
    v20 = v0[167];
    v21 = v0[163];
    v32 = v0[161];
    v33 = v0[162];
    v15 = v0[137];
    v16 = v0[133];
    swift_allocError();
    v1(v17, v15, v16);
    outlined destroy of MLS.OutgoingEventState((v0 + 78));
    outlined destroy of NSObject?((v0 + 25), &_s15SecureMessaging3MLSO21OutgoingRecreateGroupVy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO21OutgoingRecreateGroupVy_AC9AllMemberO10Foundation4DataVGMR);
    outlined consume of Data._Representation(v12, v11);
    outlined consume of Data?(v14, v13);
    outlined consume of Data._Representation(v20, v23);
    outlined consume of MLS.OutgoingMessage?(v21, v25, v28, v30);

    outlined consume of Data._Representation(v32, v33);
    outlined consume of Data?(v14, v13);
  }

  (*(v0[143] + 8))(v0[144], v0[142]);

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 102);

  v18 = v0[1];

  return v18();
}

uint64_t implicit closure #11 in MLS.EraAdvancementOperation.perform(on:metricCollector:keyPackageResult:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return MEMORY[0x2822009F8](implicit closure #11 in MLS.EraAdvancementOperation.perform(on:metricCollector:keyPackageResult:), 0, 0);
}

uint64_t implicit closure #11 in MLS.EraAdvancementOperation.perform(on:metricCollector:keyPackageResult:)()
{
  v1 = *(v0 + 48);
  v3 = v1[3];
  v2 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *v4 = v0;
  v4[1] = implicit closure #11 in MLS.EraAdvancementOperation.perform(on:metricCollector:keyPackageResult:);

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
    v2 = implicit closure #11 in MLS.EraAdvancementOperation.perform(on:metricCollector:keyPackageResult:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v1 = *(v0 + 24);
  v2 = __CFADD__(v1, 1);
  v3 = (v1 + 1);
  if (v2)
  {
    __break(1u);
  }

  else
  {
    v4 = *(v0 + 40);
    *v4 = v3;
    *(v4 + 8) = v3;
    *(v4 + 16) = 1;
    return (*(v0 + 8))();
  }

  return result;
}

void closure #1 in MLS.EraAdvancementOperation.perform(on:metricCollector:keyPackageResult:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
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
    _os_log_impl(&dword_264F1F000, oslog, v9, "EraAdvancementOperation failed to obtain era { identifier: %s, error: %s }", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v11, -1, -1);
    MEMORY[0x266755550](v10, -1, -1);
  }
}

char *MLS.EraAdvancementOperation.deinit()
{
  v1 = *v0;

  (*(*(*(v1 + 88) - 8) + 8))(v0 + *(*v0 + 136));
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  v2 = *(*v0 + 168);
  v3 = type metadata accessor for Logger();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  return v0;
}

uint64_t MLS.EraAdvancementOperation.__deallocating_deinit()
{
  MLS.EraAdvancementOperation.deinit();

  return swift_deallocClassInstance();
}

uint64_t protocol witness for MLS.RequiresGroupGroupOperation.membersRequiringKeyPackages(swiftMLSGroup:) in conformance MLS.EraAdvancementOperation<A, B, C>(uint64_t a1)
{
  v6 = (*(**v1 + 232) + **(**v1 + 232));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = specialized KDSRegistration.XPCCoordinator.__allocating_init(clientIdentifier:provider:simUniqueID:simLabelID:supportedState:testPhoneNumberURI:);

  return v6(a1);
}

uint64_t protocol witness for MLS.RequiresGroupGroupOperation.perform(on:metricCollector:keyPackageResult:) in conformance MLS.EraAdvancementOperation<A, B, C>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = (*(**v4 + 240) + **(**v4 + 240));
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v12(a1, a2, a3, a4);
}

uint64_t protocol witness for MLS.GroupOperation.logger.getter in conformance MLS.EraAdvancementOperation<A, B, C>@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v3 + 168);
  v5 = type metadata accessor for Logger();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t partial apply for implicit closure #11 in MLS.EraAdvancementOperation.perform(on:metricCollector:keyPackageResult:)(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return implicit closure #11 in MLS.EraAdvancementOperation.perform(on:metricCollector:keyPackageResult:)(a1, v4);
}

uint64_t sub_265117898()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t instantiation function for generic protocol witness table for MLS.EraAdvancementOperation<A, B, C>(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata completion function for MLS.EraAdvancementOperation(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Logger();
    if (v3 <= 0x3F)
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

uint64_t dispatch thunk of MLS.EraAdvancementOperation.membersRequiringKeyPackages(swiftMLSGroup:)(uint64_t a1)
{
  v6 = (*(*v1 + 232) + **(*v1 + 232));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = dispatch thunk of KDSRegistration.XPCCoordinator.__allocating_init(clientIdentifier:provider:simUniqueID:simLabelID:supportedState:testPhoneNumberURI:);

  return v6(a1);
}

uint64_t dispatch thunk of MLS.EraAdvancementOperation.perform(on:metricCollector:keyPackageResult:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = (*(*v4 + 240) + **(*v4 + 240));
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v12(a1, a2, a3, a4);
}

uint64_t MLS.MLSError.mlsClientFailureReason.getter()
{
  v1 = v0;
  v2 = type metadata accessor for MLS.MLSError();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, v1, v2);
  v6 = (*(v3 + 88))(v5, v2);
  if (v6 == *MEMORY[0x277D6ACF0])
  {
    (*(v3 + 8))(v5, v2);
    return static MLS.MlsClientFailureReason.messageFromNonMember.getter();
  }

  if (v6 == *MEMORY[0x277D6ACD0])
  {
    static MLS.MlsClientFailureReason.invalidCommit.getter();
    return (*(v3 + 8))(v5, v2);
  }

  if (v6 == *MEMORY[0x277D6AE00])
  {
    (*(v3 + 8))(v5, v2);
  }

  else if (v6 != *MEMORY[0x277D6ACA8])
  {
    if (v6 == *MEMORY[0x277D6ADC8])
    {
      return static MLS.MlsClientFailureReason.messageFromNonMember.getter();
    }

    if (v6 == *MEMORY[0x277D6AD18])
    {
      return static MLS.MlsClientFailureReason.invalidCredential.getter();
    }

    if (v6 != *MEMORY[0x277D6ADB8])
    {
      static MLS.MlsClientFailureReason.unset.getter();
      return (*(v3 + 8))(v5, v2);
    }
  }

  return static MLS.MlsClientFailureReason.failureToDecrypt.getter();
}

uint64_t MLS.MLSError.healingMethod.getter()
{
  v1 = v0;
  v2 = type metadata accessor for MLS.MLSError();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, v1, v2);
  v6 = (*(v3 + 88))(v5, v2);
  if (v6 == *MEMORY[0x277D6ACC8])
  {
    goto LABEL_2;
  }

  if (v6 == *MEMORY[0x277D6AD48] || v6 == *MEMORY[0x277D6AD50])
  {
    (*(v3 + 8))(v5, v2);
    return 0;
  }

  if (v6 == *MEMORY[0x277D6AD70] || v6 == *MEMORY[0x277D6AD20] || v6 == *MEMORY[0x277D6AD08] || v6 == *MEMORY[0x277D6ACF0] || v6 == *MEMORY[0x277D6ACD0] || v6 == *MEMORY[0x277D6AD68] || v6 == *MEMORY[0x277D6AE98])
  {
LABEL_2:
    (*(v3 + 8))(v5, v2);
    return 1;
  }

  if (v6 == *MEMORY[0x277D6AD60])
  {
    return 2;
  }

  if (v6 == *MEMORY[0x277D6AE48])
  {
    return 1;
  }

  if (v6 == *MEMORY[0x277D6AD58])
  {
    return 2;
  }

  if (v6 == *MEMORY[0x277D6AE70])
  {
    return 1;
  }

  if (v6 == *MEMORY[0x277D6AE00])
  {
    goto LABEL_2;
  }

  v8 = v6;
  if (v6 == *MEMORY[0x277D6AD00] || v6 == *MEMORY[0x277D6ADD0])
  {
    goto LABEL_2;
  }

  if (v6 == *MEMORY[0x277D6AD28])
  {
    return 1;
  }

  if (v6 == *MEMORY[0x277D6AE68])
  {
    return 2;
  }

  if (v6 == *MEMORY[0x277D6AE18])
  {
    (*(v3 + 96))(v5, v2);
    if ((v5[16] & 1) != 0 || *(v5 + 1) >= *v5)
    {
      return 1;
    }

    return 3;
  }

  if (v6 == *MEMORY[0x277D6ACE0])
  {
    (*(v3 + 96))(v5, v2);
    v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8SwiftMLS0B0O9LeafIndexVSg9committer_AF8proposerSbSg12shouldRejointMd, &_s8SwiftMLS0B0O9LeafIndexVSg9committer_AF8proposerSbSg12shouldRejointMR) + 48);
    v10 = &_s8SwiftMLS0B0O9LeafIndexVSgMd;
    v11 = &_s8SwiftMLS0B0O9LeafIndexVSgMR;
LABEL_34:
    outlined destroy of NSObject?(&v5[v9], v10, v11);
    outlined destroy of NSObject?(v5, v10, v11);
    return 0;
  }

  if (v6 == *MEMORY[0x277D6AD10])
  {
    (*(v3 + 96))(v5, v2);
    v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8SwiftMLS0B0O5GroupO6MemberVSg9committer_AH8proposertMd, &_s8SwiftMLS0B0O5GroupO6MemberVSg9committer_AH8proposertMR) + 48);
    v10 = &_s8SwiftMLS0B0O5GroupO6MemberVSgMd;
    v11 = &_s8SwiftMLS0B0O5GroupO6MemberVSgMR;
    goto LABEL_34;
  }

  if (v6 == *MEMORY[0x277D6AEA0])
  {
    (*(v3 + 96))(v5, v2);
    outlined destroy of NSObject?(v5, &_s8SwiftMLS0B0O5GroupO6MemberVSgMd, &_s8SwiftMLS0B0O5GroupO6MemberVSgMR);
    return 0;
  }

  if (v6 == *MEMORY[0x277D6AEA8])
  {
    return 0;
  }

  if (v6 == *MEMORY[0x277D6ADB0])
  {
    return 2;
  }

  result = 1;
  if (v8 == *MEMORY[0x277D6ADE0] || v8 == *MEMORY[0x277D6ACA8] || v8 == *MEMORY[0x277D6ACF8] || v8 == *MEMORY[0x277D6AE08] || v8 == *MEMORY[0x277D6ADE8] || v8 == *MEMORY[0x277D6ADF8] || v8 == *MEMORY[0x277D6AE10] || v8 == *MEMORY[0x277D6ADC8] || v8 == *MEMORY[0x277D6AE88] || v8 == *MEMORY[0x277D6AE80] || v8 == *MEMORY[0x277D6AE60] || v8 == *MEMORY[0x277D6AD40])
  {
    return result;
  }

  if (v8 == *MEMORY[0x277D6ADF0])
  {
    return 2;
  }

  if (v8 == *MEMORY[0x277D6ADD8])
  {
    return result;
  }

  if (v8 == *MEMORY[0x277D6ACE8])
  {
    return 2;
  }

  if (v8 != *MEMORY[0x277D6AD18] && v8 != *MEMORY[0x277D6AD78] && v8 != *MEMORY[0x277D6AE38])
  {
    if (v8 == *MEMORY[0x277D6ADA8])
    {
      return 4;
    }

    else if (v8 != *MEMORY[0x277D6AD80] && v8 != *MEMORY[0x277D6ADB8] && v8 != *MEMORY[0x277D6ADA0] && v8 != *MEMORY[0x277D6ACD8] && v8 != *MEMORY[0x277D6AD98] && v8 != *MEMORY[0x277D6AD88] && v8 != *MEMORY[0x277D6ACB0] && v8 != *MEMORY[0x277D6ACB8] && v8 != *MEMORY[0x277D6ACC0])
    {
      if (v8 == *MEMORY[0x277D6AE30])
      {
        return 5;
      }

      else if (v8 != *MEMORY[0x277D6AE90])
      {
        result = 0;
        if (v8 != *MEMORY[0x277D6AE78] && v8 != *MEMORY[0x277D6AE50])
        {
          if (v8 == *MEMORY[0x277D6AD38])
          {
            return 1;
          }

          result = 2;
          if (v8 != *MEMORY[0x277D6ADC0] && v8 != *MEMORY[0x277D6AD30])
          {
            result = 0;
            if (v8 != *MEMORY[0x277D6ACA0] && v8 != *MEMORY[0x277D6AE40] && v8 != *MEMORY[0x277D6AE20])
            {
              if (v8 == *MEMORY[0x277D6AE58])
              {
                return 1;
              }

              result = 0;
              if (v8 != *MEMORY[0x277D6AE28] && v8 != *MEMORY[0x277D6AD90])
              {
                goto LABEL_2;
              }
            }
          }
        }
      }
    }
  }

  return result;
}

Swift::Int HealingMethod.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x266754DE0](a1);
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type HealingMethod and conformance HealingMethod()
{
  result = lazy protocol witness table cache variable for type HealingMethod and conformance HealingMethod;
  if (!lazy protocol witness table cache variable for type HealingMethod and conformance HealingMethod)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HealingMethod and conformance HealingMethod);
  }

  return result;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy15SecureMessaging3MLSO9AllMemberOG_SSs5NeverOTg504_s15d121Messaging3MLSO30EncryptedRCSCredentialProviderC4find17signingIdentities2inShy05SwiftC0ABO8IdentityO07SigningL0VGAO_ShyAC9gH14OGtKFSSAQXEfU_Tf1cn_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v3 = a1;
  v27 = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
  v2 = v27;
  v26 = v3 + 56;
  result = _HashTable.startBucket.getter();
  v5 = result;
  v6 = 0;
  v22 = v3 + 64;
  v23 = v1;
  v24 = v3;
  while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(v3 + 32))
  {
    v8 = v5 >> 6;
    if ((*(v26 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
    {
      goto LABEL_25;
    }

    v25 = *(v3 + 36);
    v9 = (*(v3 + 48) + 32 * v5);
    v11 = *v9;
    v10 = v9[1];
    outlined copy of MLS.AllMember(*v9, v10);
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    result = swift_task_isCurrentExecutor();
    if ((result & 1) == 0)
    {
      result = swift_task_reportUnexpectedExecutor();
    }

    v13 = *(v27 + 16);
    v12 = *(v27 + 24);
    if (v13 >= v12 >> 1)
    {
      result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1);
    }

    *(v27 + 16) = v13 + 1;
    v14 = v27 + 16 * v13;
    *(v14 + 32) = v11;
    *(v14 + 40) = v10;
    v3 = v24;
    v7 = 1 << *(v24 + 32);
    if (v5 >= v7)
    {
      goto LABEL_26;
    }

    v15 = *(v26 + 8 * v8);
    if ((v15 & (1 << v5)) == 0)
    {
      goto LABEL_27;
    }

    if (v25 != *(v24 + 36))
    {
      goto LABEL_28;
    }

    v16 = v15 & (-2 << (v5 & 0x3F));
    if (v16)
    {
      v7 = __clz(__rbit64(v16)) | v5 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v17 = v8 << 6;
      v18 = v8 + 1;
      v19 = (v22 + 8 * v8);
      while (v18 < (v7 + 63) >> 6)
      {
        v21 = *v19++;
        v20 = v21;
        v17 += 64;
        ++v18;
        if (v21)
        {
          result = outlined consume of Set<MLS.Identity.SigningIdentity>.Index._Variant(v5, v25, 0);
          v7 = __clz(__rbit64(v20)) + v17;
          goto LABEL_4;
        }
      }

      result = outlined consume of Set<MLS.Identity.SigningIdentity>.Index._Variant(v5, v25, 0);
    }

LABEL_4:
    ++v6;
    v5 = v7;
    if (v6 == v23)
    {
      return v2;
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
  return result;
}

unint64_t MLS.EncryptedRCSMemberCredentialError.ErrorType.init(rawValue:)(unint64_t result)
{
  if (result >= 3)
  {
    return 3;
  }

  return result;
}

unint64_t *protocol witness for RawRepresentable.init(rawValue:) in conformance MLS.EncryptedRCSMemberCredentialError.ErrorType@<X0>(unint64_t *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if (*result >= 3)
  {
    LOBYTE(v2) = 3;
  }

  *a2 = v2;
  return result;
}

uint64_t protocol witness for Error._code.getter in conformance MLS.EncryptedRCSMemberCredentialError.ErrorType(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type MLS.EncryptedRCSMemberCredentialError.ErrorType and conformance MLS.EncryptedRCSMemberCredentialError.ErrorType();
  v5 = lazy protocol witness table accessor for type Int and conformance Int();

  return MEMORY[0x2821FE2D0](a1, a2, v4, v5);
}

uint64_t MLS.EncryptedRCSMemberCredentialError.underlyingErrorDescription.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.EncryptedRCSMemberCredentialError.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.EncryptedRCSMemberCredentialError.CodingKeys and conformance MLS.EncryptedRCSMemberCredentialError.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.EncryptedRCSMemberCredentialError.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.EncryptedRCSMemberCredentialError.CodingKeys and conformance MLS.EncryptedRCSMemberCredentialError.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MLS.EncryptedRCSMemberCredentialError.encode(to:)(void *a1, char a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO33EncryptedRCSMemberCredentialErrorV10CodingKeys33_46B7670155C48EB6C84CF9E06BC36E7BLLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO33EncryptedRCSMemberCredentialErrorV10CodingKeys33_46B7670155C48EB6C84CF9E06BC36E7BLLOGMR);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v12 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MLS.EncryptedRCSMemberCredentialError.CodingKeys and conformance MLS.EncryptedRCSMemberCredentialError.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15 = a2;
  v14 = 0;
  lazy protocol witness table accessor for type MLS.EncryptedRCSMemberCredentialError.ErrorType and conformance MLS.EncryptedRCSMemberCredentialError.ErrorType();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v4)
  {
    v13 = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t protocol witness for Error._domain.getter in conformance MLS.EncryptedRCSMemberCredentialError(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.EncryptedRCSMemberCredentialError and conformance MLS.EncryptedRCSMemberCredentialError();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t protocol witness for Error._code.getter in conformance MLS.EncryptedRCSMemberCredentialError(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.EncryptedRCSMemberCredentialError and conformance MLS.EncryptedRCSMemberCredentialError();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t protocol witness for Decodable.init(from:) in conformance MLS.EncryptedRCSMemberCredentialError@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = specialized MLS.EncryptedRCSMemberCredentialError.init(from:)(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5;
    *(a1 + 16) = v6;
  }

  return result;
}

uint64_t MLS.EncryptedRCSCredentialProvider.members(credentials:)(uint64_t a1)
{
  v2 = type metadata accessor for MLS.Identity.Credential();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = a1 + 56;
  v7 = 1 << *(a1 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v61 = v8 & *(a1 + 56);
  v9 = (v7 + 63) >> 6;
  v65 = v3 + 8;
  v66 = v3 + 16;

  v10 = 0;
  v63 = MEMORY[0x277D84FA0];
  v60 = MEMORY[0x277D84FA0];
  while (2)
  {
    v11 = v61;
    do
    {
      if (!v11)
      {
        while (1)
        {
          v14 = v10 + 1;
          if (__OFADD__(v10, 1))
          {
            break;
          }

          if (v14 >= v9)
          {

            return v60;
          }

          v11 = *(v6 + 8 * v14);
          ++v10;
          if (v11)
          {
            v10 = v14;
            goto LABEL_6;
          }
        }

        __break(1u);
LABEL_63:
        __break(1u);
LABEL_64:
        __break(1u);
LABEL_65:
        result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }

LABEL_6:
      v12 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      (*(v3 + 16))(v5, *(a1 + 48) + *(v3 + 72) * (v12 | (v10 << 6)), v2);
      v13 = MLS.Identity.Credential.telURI.getter();
      (*(v3 + 8))(v5, v2);
    }

    while (!v13);
    v61 = v11;
    v51 = v6;
    v52 = v5;
    v53 = v3;
    v54 = v2;
    v55 = a1;
    v59 = *(v13 + 16);
    if (!v59)
    {
      v16 = v63;
      v17 = v64;
      v18 = v60;
LABEL_58:
      v64 = v17;

      v63 = v16;
      v60 = v18;
      a1 = v55;
      v2 = v54;
      v3 = v53;
      v5 = v52;
      v6 = v51;
      continue;
    }

    break;
  }

  v15 = 0;
  v58 = v13 + 32;
  v16 = v60;
  v17 = v64;
  v56 = v9;
  v57 = v13;
  while (2)
  {
    v18 = v16;
    v68 = v16;
    v69 = v16 + 56;
LABEL_15:
    if (v15 >= *(v13 + 16))
    {
      goto LABEL_63;
    }

    v19 = (v58 + 16 * v15);
    v20 = *v19;
    v21 = v19[1];

    URI.init(prefixedURI:)(v20, v21, v71);
    if (!v17)
    {
      v64 = 0;
      v62 = v15 + 1;
      v22 = v71[0];
      v23 = v71[1];
      Hasher.init(_seed:)();
      MEMORY[0x266754DE0](1);
      String.hash(into:)();
      MEMORY[0x266754DE0](0);
      Hasher._combine(_:)(0);
      v24 = Hasher._finalize()();
      v67 = ~(-1 << *(v18 + 32));
      v25 = v24 & v67;
      v26 = *(v69 + (((v24 & v67) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v24 & v67);
      v70 = v22;
      if (v26)
      {
        do
        {
          v27 = *(v18 + 48) + 32 * v25;
          v29 = *v27;
          v28 = *(v27 + 8);
          v30 = *(v27 + 24);
          if (v30 < 0)
          {
            if (v29 == v22 && v28 == v23)
            {

              outlined copy of MLS.AllMember(v22, v23);
              outlined consume of MLS.AllMember(v22, v23);
              outlined consume of MLS.AllMember(v22, v23);
              if (v30)
              {
                goto LABEL_30;
              }
            }

            else
            {
              v32 = _stringCompareWithSmolCheck(_:_:expecting:)();

              outlined copy of MLS.AllMember(v29, v28);
              outlined consume of MLS.AllMember(v29, v28);
              outlined consume of MLS.AllMember(v22, v23);
              if (v32 & 1) != 0 && (v30)
              {
LABEL_30:

                v15 = v62;
                v17 = v64;
                v9 = v56;
                v13 = v57;
                v18 = v68;
                if (v62 == v59)
                {
                  v16 = v63;
                  goto LABEL_58;
                }

                goto LABEL_15;
              }
            }
          }

          else
          {

            outlined copy of MLS.AllMember(v29, v28);
            outlined consume of MLS.AllMember(v29, v28);
            outlined consume of MLS.AllMember(v22, v23);
          }

          v18 = v68;
          v25 = (v25 + 1) & v67;
          v22 = v70;
        }

        while (((*(v69 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25) & 1) != 0);
      }

      v33 = v63;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v72 = v33;
      v35 = *(v33 + 16);
      if (*(v33 + 24) <= v35)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          specialized _NativeSet.resize(capacity:)(v35 + 1);
        }

        else
        {
          specialized _NativeSet.copyAndResize(capacity:)(v35 + 1);
        }

        v16 = v72;
        Hasher.init(_seed:)();
        MEMORY[0x266754DE0](1);
        String.hash(into:)();
        MEMORY[0x266754DE0](0);
        Hasher._combine(_:)(0);
        v36 = Hasher._finalize()();
        v37 = v16 + 56;
        v38 = -1 << *(v16 + 32);
        v25 = v36 & ~v38;
        if ((*(v16 + 56 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25))
        {
          v68 = v16 + 56;
          v69 = ~v38;
          do
          {
            v39 = *(v16 + 48) + 32 * v25;
            v40 = *v39;
            v41 = *(v39 + 8);
            v42 = *(v39 + 24);
            if (v42 < 0)
            {
              v43 = v16;
              v44 = v70;
              if (v40 == v70 && v41 == v23)
              {
                outlined copy of MLS.AllMember(v70, v23);

                outlined consume of MLS.AllMember(v44, v23);
                outlined consume of MLS.AllMember(v44, v23);
                v16 = v43;
                v37 = v68;
                if (v42)
                {
                  goto LABEL_65;
                }
              }

              else
              {
                LODWORD(v67) = _stringCompareWithSmolCheck(_:_:expecting:)();
                outlined copy of MLS.AllMember(v40, v41);

                outlined consume of MLS.AllMember(v40, v41);
                outlined consume of MLS.AllMember(v44, v23);
                v16 = v43;
                v37 = v68;
                if (v67 & 1) != 0 && (v42)
                {
                  goto LABEL_65;
                }
              }
            }

            else
            {
              outlined copy of MLS.AllMember(*v39, *(v39 + 8));

              outlined consume of MLS.AllMember(v40, v41);
              outlined consume of MLS.AllMember(v70, v23);
            }

            v25 = (v25 + 1) & v69;
          }

          while (((*(v37 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25) & 1) != 0);
          v22 = v70;
        }
      }

      else if (isUniquelyReferenced_nonNull_native)
      {
        v16 = v63;
      }

      else
      {
        specialized _NativeSet.copy()();
        v16 = v72;
      }

      *(v16 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) |= 1 << v25;
      v46 = *(v16 + 48) + 32 * v25;
      *v46 = v22;
      *(v46 + 8) = v23;
      *(v46 + 16) = 0;
      *(v46 + 24) = -127;
      v47 = *(v16 + 16);
      v48 = __OFADD__(v47, 1);
      v49 = v47 + 1;
      if (!v48)
      {
        *(v16 + 16) = v49;
        v63 = v16;
        v18 = v16;
        v15 = v62;
        v17 = v64;
        v9 = v56;
        v13 = v57;
        if (v62 != v59)
        {
          continue;
        }

        goto LABEL_58;
      }

      goto LABEL_64;
    }

    break;
  }

  return v60;
}

void MLS.EncryptedRCSCredentialProvider.find(members:in:)(uint64_t a1, uint64_t a2)
{
  v48 = a1;
  v56 = type metadata accessor for MLS.Identity.Credential();
  v3 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v55 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = type metadata accessor for MLS.Identity.SigningIdentity();
  MEMORY[0x28223BE20](v54);
  v52 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = MEMORY[0x277D84FA0];
  v7 = a2 + 56;
  v8 = 1 << *(a2 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a2 + 56);
  v11 = (v8 + 63) >> 6;
  v53 = v5;
  v50 = v5 + 8;
  v51 = v5 + 16;
  v49 = (v3 + 8);

  v12 = 0;
  v47 = a2;
  while (v10)
  {
LABEL_9:
    v14 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    v15 = v52;
    v16 = v53;
    v17 = v54;
    (*(v53 + 16))(v52, *(a2 + 48) + *(v53 + 72) * (v14 | (v12 << 6)), v54);
    v18 = v55;
    MLS.Identity.SigningIdentity.credential.getter();
    (*(v16 + 8))(v15, v17);
    v19 = MLS.Identity.Credential.telURI.getter();
    (*v49)(v18, v56);
    if (v19)
    {
      v20 = *(v19 + 16);
      if (v20)
      {
        v21 = (v19 + 40);
        do
        {
          v23 = *(v21 - 1);
          v22 = *v21;

          specialized Set._Variant.insert(_:)(v57, v23, v22);

          v21 += 2;
          --v20;
        }

        while (v20);
      }

      a2 = v47;
    }
  }

  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
      goto LABEL_39;
    }

    if (v13 >= v11)
    {
      break;
    }

    v10 = *(v7 + 8 * v13);
    ++v12;
    if (v10)
    {
      v12 = v13;
      goto LABEL_9;
    }
  }

  v57[9] = MEMORY[0x277D84FA0];
  v24 = (v48 + 56);
  v25 = 1 << *(v48 + 32);
  if (v25 < 64)
  {
    v26 = ~(-1 << v25);
  }

  else
  {
    v26 = -1;
  }

  v27 = v26 & *(v48 + 56);
  v28 = (v25 + 63) >> 6;
  v29 = v58;
  v30 = v58 + 56;

  v31 = 0;
  v54 = v28;
  v55 = v24;
  while (v27)
  {
    if (!*(v29 + 16))
    {
      goto LABEL_36;
    }

LABEL_21:
    v33 = *(v48 + 48) + ((v31 << 11) | (32 * __clz(__rbit64(v27))));
    v34 = *v33;
    v35 = *(v33 + 8);
    v36 = *(v33 + 16);
    v37 = *(v33 + 24);
    Hasher.init(_seed:)();
    outlined copy of MLS.AllMember(v34, v35);
    v56 = v36;
    outlined copy of MLS.AllMember(v34, v35);
    String.hash(into:)();
    v38 = Hasher._finalize()();
    v39 = -1 << *(v29 + 32);
    v40 = v38 & ~v39;
    if (((*(v30 + ((v40 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v40) & 1) == 0)
    {
LABEL_35:
      outlined consume of MLS.AllMember(v34, v35);
      outlined consume of MLS.AllMember(v34, v35);
LABEL_36:

      lazy protocol witness table accessor for type MLS.EncryptedRCSMemberCredentialError and conformance MLS.EncryptedRCSMemberCredentialError();
      swift_allocError();
      *v45 = 2;
      *(v45 + 8) = 0;
      *(v45 + 16) = 0;
      swift_willThrow();

      return;
    }

    v27 &= v27 - 1;
    v41 = ~v39;
    while (1)
    {
      v42 = (*(v29 + 48) + 16 * v40);
      v43 = *v42 == v34 && v35 == v42[1];
      if (v43 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v40 = (v40 + 1) & v41;
      if (((*(v30 + ((v40 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v40) & 1) == 0)
      {
        goto LABEL_35;
      }
    }

    v32 = v56;
    outlined consume of MLS.AllMember(v34, v35);
    specialized Set._Variant.insert(_:)(v57, v34, v35, v32, v37);
    outlined consume of MLS.AllMember(v57[0], v57[1]);
    v28 = v54;
    v24 = v55;
  }

  while (1)
  {
    v44 = v31 + 1;
    if (__OFADD__(v31, 1))
    {
      break;
    }

    if (v44 >= v28)
    {

      return;
    }

    v27 = *&v24[8 * v44];
    ++v31;
    if (v27)
    {
      v31 = v44;
      if (*(v29 + 16))
      {
        goto LABEL_21;
      }

      goto LABEL_36;
    }
  }

LABEL_39:
  __break(1u);
}

void MLS.EncryptedRCSCredentialProvider.find(signingIdentities:in:)(uint64_t a1, uint64_t a2)
{
  v70 = type metadata accessor for MLS.Identity.Credential();
  v5 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v69 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for MLS.Identity.SigningIdentity();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v58 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v57 = &v55 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v55 - v14;
  MEMORY[0x28223BE20](v13);
  v67 = &v55 - v16;
  v17 = a2;
  v19 = v18;
  v20 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy15SecureMessaging3MLSO9AllMemberOG_SSs5NeverOTg504_s15d121Messaging3MLSO30EncryptedRCSCredentialProviderC4find17signingIdentities2inShy05SwiftC0ABO8IdentityO07SigningL0VGAO_ShyAC9gH14OGtKFSSAQXEfU_Tf1cn_n(v17);
  v56 = v2;
  v21 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(v20);

  v23 = a1 + 56;
  v22 = *(a1 + 56);
  v24 = 1 << *(a1 + 32);
  v77 = MEMORY[0x277D84FA0];
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  else
  {
    v25 = -1;
  }

  v76 = v21;
  v26 = v25 & v22;
  v27 = (v24 + 63) >> 6;
  v65 = (v5 + 8);
  v66 = v8 + 32;
  v74 = v8 + 16;
  v75 = v21 + 56;
  v68 = v8;
  v63 = (v8 + 8);

  v28 = 0;
  v64 = v27;
  v59 = a1;
  v62 = v19;
  v73 = v15;
  v61 = a1 + 56;
  if (!v26)
  {
    goto LABEL_7;
  }

  do
  {
LABEL_11:
    while (1)
    {
      v30 = __clz(__rbit64(v26));
      v26 &= v26 - 1;
      v32 = v67;
      v31 = v68;
      v33 = *(a1 + 48) + *(v68 + 72) * (v30 | (v28 << 6));
      v72 = *(v68 + 16);
      v72(v67, v33, v19);
      (*(v31 + 32))(v15, v32, v19);
      v34 = v69;
      MLS.Identity.SigningIdentity.credential.getter();
      v35 = v19;
      v36 = MLS.Identity.Credential.telURI.getter();
      (*v65)(v34, v70);
      if (v36)
      {
        break;
      }

      (*v63)(v15, v35);
      v27 = v64;
      v19 = v35;
      if (!v26)
      {
        goto LABEL_7;
      }
    }

    v37 = *(v36 + 16);
    if (v37)
    {
      v38 = 0;
      v71 = v36 + 32;
      v60 = v37;
      while (v38 < *(v36 + 16))
      {
        if (*(v21 + 16))
        {
          v39 = (v71 + 16 * v38);
          v41 = *v39;
          v40 = v39[1];
          Hasher.init(_seed:)();

          String.hash(into:)();
          v42 = Hasher._finalize()();
          v43 = -1 << *(v21 + 32);
          v44 = v42 & ~v43;
          if ((*(v75 + ((v44 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v44))
          {
            v45 = ~v43;
            while (1)
            {
              v46 = (*(v21 + 48) + 16 * v44);
              v47 = *v46 == v41 && v46[1] == v40;
              if (v47 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {
                break;
              }

              v44 = (v44 + 1) & v45;
              if (((*(v75 + ((v44 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v44) & 1) == 0)
              {
                goto LABEL_14;
              }
            }

            v48 = v58;
            v49 = v62;
            v72(v58, v73, v62);
            v50 = v57;
            specialized Set._Variant.insert(_:)(v57, v48);
            v51 = *v63;
            (*v63)(v50, v49);
            v52 = v41;
            v15 = v73;
            specialized Set._Variant.remove(_:)(v52, v40);

            v51(v15, v49);
            v19 = v49;
            a1 = v59;
            v23 = v61;
            goto LABEL_29;
          }

LABEL_14:

          v35 = v62;
          v15 = v73;
          v23 = v61;
          v37 = v60;
        }

        if (++v38 == v37)
        {
          goto LABEL_28;
        }
      }

LABEL_35:
      __break(1u);
      return;
    }

LABEL_28:

    v19 = v35;
    (*v63)(v15, v35);
    a1 = v59;
LABEL_29:
    v27 = v64;
  }

  while (v26);
  while (1)
  {
LABEL_7:
    v29 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      __break(1u);
      goto LABEL_35;
    }

    if (v29 >= v27)
    {
      break;
    }

    v26 = *(v23 + 8 * v29);
    ++v28;
    if (v26)
    {
      v28 = v29;
      goto LABEL_11;
    }
  }

  v53 = *(v76 + 16);

  if (v53)
  {

    lazy protocol witness table accessor for type MLS.EncryptedRCSMemberCredentialError and conformance MLS.EncryptedRCSMemberCredentialError();
    swift_allocError();
    *v54 = 2;
    *(v54 + 8) = 0;
    *(v54 + 16) = 0;
    swift_willThrow();
  }
}

uint64_t specialized Set._Variant.insert(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a5;
  v32 = *v5;
  Hasher.init(_seed:)();
  if ((v6 & 0x80) == 0)
  {
    MEMORY[0x266754DE0](0);
    String.hash(into:)();
    v9 = 0;
LABEL_6:
    MEMORY[0x266754DE0](v9);
    goto LABEL_7;
  }

  MEMORY[0x266754DE0](1);
  String.hash(into:)();
  MEMORY[0x266754DE0](0);
  if ((v6 & 1) == 0)
  {
    Hasher._combine(_:)(1u);
    v9 = a4;
    goto LABEL_6;
  }

  Hasher._combine(_:)(0);
LABEL_7:
  v10 = Hasher._finalize()();
  v11 = -1 << *(v32 + 32);
  v12 = v10 & ~v11;
  if (((*(v32 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
LABEL_32:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v34 = *v28;
    outlined copy of MLS.AllMember(a2, a3);
    specialized _NativeSet.insertNew(_:at:isUnique:)(a2, a3, a4, v6, v12, isUniquelyReferenced_nonNull_native);
    *v28 = v34;
    *a1 = a2;
    *(a1 + 8) = a3;
    *(a1 + 16) = a4;
    *(a1 + 24) = v6;
    return 1;
  }

  v31 = ~v11;
  v30 = v6;
  while (1)
  {
    v13 = *(v32 + 48) + 32 * v12;
    v14 = *v13;
    v15 = *(v13 + 8);
    v16 = *(v13 + 16);
    v17 = *(v13 + 24);
    if ((v17 & 0x80000000) == 0)
    {
      break;
    }

    if ((v6 & 0x80) == 0)
    {
      goto LABEL_10;
    }

    if (v14 == a2 && v15 == a3)
    {
      outlined copy of MLS.AllMember(a2, a3);
      outlined copy of MLS.AllMember(a2, a3);
      outlined consume of MLS.AllMember(a2, a3);
      outlined consume of MLS.AllMember(a2, a3);
      if (v17)
      {
        goto LABEL_26;
      }
    }

    else
    {
      v21 = _stringCompareWithSmolCheck(_:_:expecting:)();
      outlined copy of MLS.AllMember(a2, a3);
      outlined copy of MLS.AllMember(v14, v15);
      outlined consume of MLS.AllMember(v14, v15);
      v6 = v30;
      outlined consume of MLS.AllMember(a2, a3);
      if ((v21 & 1) == 0)
      {
        goto LABEL_11;
      }

      if (v17)
      {
LABEL_26:
        if (v6)
        {
          goto LABEL_34;
        }

        goto LABEL_11;
      }
    }

    if ((v6 & 1) == 0 && v16 == a4)
    {
      goto LABEL_34;
    }

LABEL_11:
    v12 = (v12 + 1) & v31;
    if (((*(v32 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      goto LABEL_32;
    }
  }

  if (v6 < 0)
  {
LABEL_10:
    outlined copy of MLS.AllMember(a2, a3);
    outlined copy of MLS.AllMember(v14, v15);
    outlined consume of MLS.AllMember(v14, v15);
    outlined consume of MLS.AllMember(a2, a3);
    goto LABEL_11;
  }

  if (v14 != a2 || v15 != a3)
  {
    v19 = _stringCompareWithSmolCheck(_:_:expecting:)();
    outlined copy of MLS.AllMember(a2, a3);
    outlined copy of MLS.AllMember(v14, v15);
    outlined consume of MLS.AllMember(v14, v15);
    v6 = v30;
    outlined consume of MLS.AllMember(a2, a3);
    if (v19)
    {
      goto LABEL_34;
    }

    goto LABEL_11;
  }

  outlined consume of MLS.AllMember(a2, a3);
LABEL_34:
  outlined consume of MLS.AllMember(a2, a3);
  v24 = *(v32 + 48) + 32 * v12;
  v25 = *v24;
  v26 = *(v24 + 8);
  v27 = *(v24 + 16);
  *a1 = *v24;
  *(a1 + 8) = v26;
  *(a1 + 16) = v27;
  *(a1 + 24) = *(v24 + 24);
  outlined copy of MLS.AllMember(v25, v26);
  return 0;
}

uint64_t specialized Set._Variant.insert(_:)(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = type metadata accessor for MLS.Identity.Credential();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  _s8SwiftMLS0B0O8IdentityO07SigningC0VAGSHAAWlTm_0(&lazy protocol witness table cache variable for type MLS.Identity.Credential and conformance MLS.Identity.Credential, MEMORY[0x277D6AC88], MEMORY[0x277D6AC90]);
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
      _s8SwiftMLS0B0O8IdentityO07SigningC0VAGSHAAWlTm_0(&lazy protocol witness table cache variable for type MLS.Identity.Credential and conformance MLS.Identity.Credential, MEMORY[0x277D6AC88], MEMORY[0x277D6AC98]);
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
  v6 = type metadata accessor for MLS.Identity.SigningIdentity();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  _s8SwiftMLS0B0O8IdentityO07SigningC0VAGSHAAWlTm_0(&lazy protocol witness table cache variable for type MLS.Identity.SigningIdentity and conformance MLS.Identity.SigningIdentity, MEMORY[0x277D6AC60], MEMORY[0x277D6AC68]);
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
      _s8SwiftMLS0B0O8IdentityO07SigningC0VAGSHAAWlTm_0(&lazy protocol witness table cache variable for type MLS.Identity.SigningIdentity and conformance MLS.Identity.SigningIdentity, MEMORY[0x277D6AC60], MEMORY[0x277D6AC70]);
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

{
  v7 = *v3;
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  MEMORY[0x266754DE0](0);
  v8 = Hasher._finalize()();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v12 = *(v7 + 48);
    while (1)
    {
      v13 = (v12 + 16 * v10);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v17 = (*(v7 + 48) + 16 * v10);
    v18 = v17[1];
    *a1 = *v17;
    a1[1] = v18;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v3;

    specialized _NativeSet.insertNew(_:at:isUnique:)(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v19;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

Swift::Int specialized _NativeSet.resize(capacity:)(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy15SecureMessaging3MLSO9AllMemberOGMd, &_ss11_SetStorageCy15SecureMessaging3MLSO9AllMemberOGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v31 = v3;
    v6 = 0;
    v7 = (v3 + 56);
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
    while (1)
    {
      if (!v10)
      {
        v16 = v6;
        while (1)
        {
          v6 = v16 + 1;
          if (__OFADD__(v16, 1))
          {
            __break(1u);
            goto LABEL_36;
          }

          if (v6 >= v11)
          {
            break;
          }

          v17 = v7[v6];
          ++v16;
          if (v17)
          {
            v15 = __clz(__rbit64(v17));
            v10 = (v17 - 1) & v17;
            goto LABEL_15;
          }
        }

        v30 = 1 << *(v3 + 32);
        if (v30 >= 64)
        {
          bzero(v7, ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
        }

        else
        {
          *v7 = -1 << v30;
        }

        v2 = v1;
        *(v3 + 16) = 0;
        break;
      }

      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = *(v3 + 48) + 32 * (v15 | (v6 << 6));
      v19 = *v18;
      v20 = *(v18 + 8);
      v32 = *(v18 + 16);
      v21 = *(v18 + 24);
      Hasher.init(_seed:)();
      if (v21 < 0)
      {
        MEMORY[0x266754DE0](1);
        String.hash(into:)();
        MEMORY[0x266754DE0](0);
        if (v21)
        {
          Hasher._combine(_:)(0);
          goto LABEL_21;
        }

        Hasher._combine(_:)(1u);
        v22 = v32;
      }

      else
      {
        MEMORY[0x266754DE0](0);
        String.hash(into:)();
        v22 = 0;
      }

      MEMORY[0x266754DE0](v22);
LABEL_21:
      result = Hasher._finalize()();
      v23 = -1 << *(v5 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v12 + 8 * (v24 >> 6))) == 0)
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
          v29 = *(v12 + 8 * v25);
          if (v29 != -1)
          {
            v13 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v24) & ~*(v12 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v5 + 48) + 32 * v13;
      *v14 = v19;
      *(v14 + 8) = v20;
      v3 = v31;
      *(v14 + 16) = v32;
      *(v14 + 24) = v21;
      ++*(v5 + 16);
    }
  }

  *v2 = v5;
  return result;
}

{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd, &_ss11_SetStorageCySSGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
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
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy15SecureMessaging3MLSO22UniqueClientIdentifierVGMd, &_ss11_SetStorageCy15SecureMessaging3MLSO22UniqueClientIdentifierVGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
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
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      Hasher.init(_seed:)();
      String.hash(into:)();
      String.hash(into:)();
      MEMORY[0x266754DE0](0);
      result = Hasher._finalize()();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t specialized _NativeSet.resize(capacity:)(uint64_t a1)
{
  v2 = v1;
  v36 = type metadata accessor for MLS.Identity.Credential();
  v3 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy8SwiftMLS0D0O8IdentityO10CredentialOGMd, &_ss11_SetStorageCy8SwiftMLS0D0O8IdentityO10CredentialOGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v1;
    v31 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v34 = v3 + 32;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v32 = *(v3 + 72);
      v33 = v20;
      v20(v35, v19, v36);
      _s8SwiftMLS0B0O8IdentityO07SigningC0VAGSHAAWlTm_0(&lazy protocol witness table cache variable for type MLS.Identity.Credential and conformance MLS.Identity.Credential, MEMORY[0x277D6AC88], MEMORY[0x277D6AC90]);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = v33(*(v7 + 48) + v15 * v32, v35, v36);
      ++*(v7 + 16);
      v5 = v31;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
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

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero(v9, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
  return result;
}

{
  v2 = v1;
  v36 = type metadata accessor for MLS.Identity.SigningIdentity();
  v3 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy8SwiftMLS0D0O8IdentityO07SigningE0VGMd, &_ss11_SetStorageCy8SwiftMLS0D0O8IdentityO07SigningE0VGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v1;
    v31 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v34 = v3 + 32;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v32 = *(v3 + 72);
      v33 = v20;
      v20(v35, v19, v36);
      _s8SwiftMLS0B0O8IdentityO07SigningC0VAGSHAAWlTm_0(&lazy protocol witness table cache variable for type MLS.Identity.SigningIdentity and conformance MLS.Identity.SigningIdentity, MEMORY[0x277D6AC60], MEMORY[0x277D6AC68]);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = v33(*(v7 + 48) + v15 * v32, v35, v36);
      ++*(v7 + 16);
      v5 = v31;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
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

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero(v9, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
  return result;
}

Swift::Int specialized _NativeSet.insertNew(_:at:isUnique:)(Swift::Int result, uint64_t a2, uint64_t a3, char a4, unint64_t a5, char a6)
{
  v11 = result;
  v12 = *(*v6 + 16);
  v13 = *(*v6 + 24);
  if (v13 > v12 && (a6 & 1) != 0)
  {
    goto LABEL_39;
  }

  if (a6)
  {
    specialized _NativeSet.resize(capacity:)(v12 + 1);
  }

  else
  {
    if (v13 > v12)
    {
      result = specialized _NativeSet.copy()();
      goto LABEL_39;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v12 + 1);
  }

  v32 = *v6;
  Hasher.init(_seed:)();
  if (a4 < 0)
  {
    MEMORY[0x266754DE0](1);
    String.hash(into:)();
    MEMORY[0x266754DE0](0);
    if (a4)
    {
      Hasher._combine(_:)(0);
      goto LABEL_14;
    }

    Hasher._combine(_:)(1u);
    v14 = a3;
  }

  else
  {
    MEMORY[0x266754DE0](0);
    String.hash(into:)();
    v14 = 0;
  }

  MEMORY[0x266754DE0](v14);
LABEL_14:
  result = Hasher._finalize()();
  v15 = -1 << *(v32 + 32);
  a5 = result & ~v15;
  if ((*(v32 + 56 + ((a5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a5))
  {
    v31 = ~v15;
    do
    {
      v16 = *(v32 + 48) + 32 * a5;
      v18 = *v16;
      v17 = *(v16 + 8);
      v19 = *(v16 + 16);
      v20 = *(v16 + 24);
      if (v20 < 0)
      {
        if ((a4 & 0x80) == 0)
        {
          goto LABEL_17;
        }

        if (v18 == v11 && v17 == a2)
        {
          outlined copy of MLS.AllMember(v11, a2);
          outlined copy of MLS.AllMember(v11, a2);
          outlined consume of MLS.AllMember(v11, a2);
          result = outlined consume of MLS.AllMember(v11, a2);
          if (v20)
          {
            goto LABEL_33;
          }
        }

        else
        {
          v24 = _stringCompareWithSmolCheck(_:_:expecting:)();
          outlined copy of MLS.AllMember(v11, a2);
          outlined copy of MLS.AllMember(v18, v17);
          outlined consume of MLS.AllMember(v18, v17);
          result = outlined consume of MLS.AllMember(v11, a2);
          if ((v24 & 1) == 0)
          {
            goto LABEL_18;
          }

          if (v20)
          {
LABEL_33:
            if (a4)
            {
              goto LABEL_43;
            }

            goto LABEL_18;
          }
        }

        if ((a4 & 1) == 0 && v19 == a3)
        {
          goto LABEL_43;
        }
      }

      else
      {
        if (a4 < 0)
        {
LABEL_17:
          outlined copy of MLS.AllMember(v11, a2);
          outlined copy of MLS.AllMember(v18, v17);
          outlined consume of MLS.AllMember(v18, v17);
          result = outlined consume of MLS.AllMember(v11, a2);
          goto LABEL_18;
        }

        if (v18 == v11 && v17 == a2)
        {
          goto LABEL_42;
        }

        v22 = _stringCompareWithSmolCheck(_:_:expecting:)();
        outlined copy of MLS.AllMember(v11, a2);
        outlined copy of MLS.AllMember(v18, v17);
        outlined consume of MLS.AllMember(v18, v17);
        result = outlined consume of MLS.AllMember(v11, a2);
        if (v22)
        {
          goto LABEL_43;
        }
      }

LABEL_18:
      a5 = (a5 + 1) & v31;
    }

    while (((*(v32 + 56 + ((a5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a5) & 1) != 0);
  }

LABEL_39:
  v25 = *v30;
  *(*v30 + 8 * (a5 >> 6) + 56) |= 1 << a5;
  v26 = *(v25 + 48) + 32 * a5;
  *v26 = v11;
  *(v26 + 8) = a2;
  *(v26 + 16) = a3;
  *(v26 + 24) = a4;
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (v28)
  {
    __break(1u);
LABEL_42:
    outlined copy of MLS.AllMember(v11, a2);
    outlined copy of MLS.AllMember(v11, a2);
    outlined consume of MLS.AllMember(v11, a2);
    outlined consume of MLS.AllMember(v11, a2);
LABEL_43:
    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v25 + 16) = v29;
  }

  return result;
}

uint64_t specialized _NativeSet.insertNew(_:at:isUnique:)(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = type metadata accessor for MLS.Identity.Credential();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
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
      specialized _NativeSet.copy()(MEMORY[0x277D6AC88], &_ss11_SetStorageCy8SwiftMLS0D0O8IdentityO10CredentialOGMd, &_ss11_SetStorageCy8SwiftMLS0D0O8IdentityO10CredentialOGMR);
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v10 + 1);
  }

  v12 = *v3;
  _s8SwiftMLS0B0O8IdentityO07SigningC0VAGSHAAWlTm_0(&lazy protocol witness table cache variable for type MLS.Identity.Credential and conformance MLS.Identity.Credential, MEMORY[0x277D6AC88], MEMORY[0x277D6AC90]);
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
      _s8SwiftMLS0B0O8IdentityO07SigningC0VAGSHAAWlTm_0(&lazy protocol witness table cache variable for type MLS.Identity.Credential and conformance MLS.Identity.Credential, MEMORY[0x277D6AC88], MEMORY[0x277D6AC98]);
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
  v31 = a1;
  v6 = type metadata accessor for MLS.Identity.SigningIdentity();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
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
      specialized _NativeSet.copy()(MEMORY[0x277D6AC60], &_ss11_SetStorageCy8SwiftMLS0D0O8IdentityO07SigningE0VGMd, &_ss11_SetStorageCy8SwiftMLS0D0O8IdentityO07SigningE0VGMR);
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v10 + 1);
  }

  v12 = *v3;
  _s8SwiftMLS0B0O8IdentityO07SigningC0VAGSHAAWlTm_0(&lazy protocol witness table cache variable for type MLS.Identity.SigningIdentity and conformance MLS.Identity.SigningIdentity, MEMORY[0x277D6AC60], MEMORY[0x277D6AC68]);
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
      _s8SwiftMLS0B0O8IdentityO07SigningC0VAGSHAAWlTm_0(&lazy protocol witness table cache variable for type MLS.Identity.SigningIdentity and conformance MLS.Identity.SigningIdentity, MEMORY[0x277D6AC60], MEMORY[0x277D6AC70]);
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

void specialized _NativeSet.insertNew(_:at:isUnique:)(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
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
      specialized _NativeSet.copy()();
      goto LABEL_16;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v8 + 1);
  }

  v10 = *v4;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v11 = Hasher._finalize()();
  v12 = -1 << *(v10 + 32);
  a3 = v11 & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      v15 = *v14 == result && v14[1] == a2;
      if (v15 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = result;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return;
  }

  __break(1u);
LABEL_19:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

{
  v5 = v4;
  v9 = *(*v4 + 16);
  v10 = *(*v4 + 24);
  if (v10 > v9 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    specialized _NativeSet.resize(capacity:)(v9 + 1);
  }

  else
  {
    if (v10 > v9)
    {
      specialized _NativeSet.copy()();
      goto LABEL_16;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v9 + 1);
  }

  v11 = *v4;
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  MEMORY[0x266754DE0](0);
  v12 = Hasher._finalize()();
  v13 = v11 + 56;
  v14 = -1 << *(v11 + 32);
  a3 = v12 & ~v14;
  if ((*(v11 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v15 = ~v14;
    v16 = *(v11 + 48);
    do
    {
      v17 = (v16 + 16 * a3);
      v18 = *v17 == result && v17[1] == a2;
      if (v18 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v15;
    }

    while (((*(v13 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v19 = *v5;
  *(*v5 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v20 = (*(v19 + 48) + 16 * a3);
  *v20 = result;
  v20[1] = a2;
  v21 = *(v19 + 16);
  v22 = __OFADD__(v21, 1);
  v23 = v21 + 1;
  if (!v22)
  {
    *(v19 + 16) = v23;
    return;
  }

  __break(1u);
LABEL_19:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void *specialized _NativeSet.copy()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy15SecureMessaging3MLSO9AllMemberOGMd, &_ss11_SetStorageCy15SecureMessaging3MLSO9AllMemberOGMR);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
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
        v17 = 32 * (v14 | (v8 << 6));
        v18 = *(v2 + 48) + v17;
        v19 = *v18;
        v20 = *(v18 + 8);
        v21 = *(v18 + 16);
        v22 = *(v4 + 48) + v17;
        v23 = *(v18 + 24);
        *v22 = *v18;
        *(v22 + 8) = v20;
        *(v22 + 16) = v21;
        *(v22 + 24) = v23;
        result = outlined copy of MLS.AllMember(v19, v20);
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

void *specialized _NativeSet.copy()(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  v6 = v3;
  v7 = a1(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v26 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v11 = *v3;
  v12 = static _SetStorage.copy(original:)();
  v13 = v12;
  if (*(v11 + 16))
  {
    v27 = v6;
    result = (v12 + 56);
    v15 = ((1 << *(v13 + 32)) + 63) >> 6;
    if (v13 != v11 || result >= v11 + 56 + 8 * v15)
    {
      result = memmove(result, (v11 + 56), 8 * v15);
    }

    v17 = 0;
    *(v13 + 16) = *(v11 + 16);
    v18 = 1 << *(v11 + 32);
    v19 = -1;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    v20 = v19 & *(v11 + 56);
    v21 = (v18 + 63) >> 6;
    v28 = v8 + 32;
    for (i = v8 + 16; v20; result = (*(v8 + 32))(*(v13 + 48) + v25, v10, v7))
    {
      v22 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
LABEL_17:
      v25 = *(v8 + 72) * (v22 | (v17 << 6));
      (*(v8 + 16))(v10, *(v11 + 48) + v25, v7);
    }

    v23 = v17;
    while (1)
    {
      v17 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v17 >= v21)
      {

        v6 = v27;
        goto LABEL_21;
      }

      v24 = *(v11 + 56 + 8 * v17);
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v20 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v6 = v13;
  }

  return result;
}

void specialized _NativeSet.copy()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd, &_ss11_SetStorageCySSGMR);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
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
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy15SecureMessaging3MLSO22UniqueClientIdentifierVGMd, &_ss11_SetStorageCy15SecureMessaging3MLSO22UniqueClientIdentifierVGMR);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
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
}

Swift::Int specialized _NativeSet.copyAndResize(capacity:)(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy15SecureMessaging3MLSO9AllMemberOGMd, &_ss11_SetStorageCy15SecureMessaging3MLSO9AllMemberOGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (!*(v3 + 16))
  {

LABEL_32:
    *v2 = v5;
    return result;
  }

  v30 = v3;
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
    v15 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_15:
    v18 = *(v3 + 48) + 32 * (v15 | (v6 << 6));
    v19 = *v18;
    v20 = *(v18 + 8);
    v31 = *(v18 + 16);
    v21 = *(v18 + 24);
    Hasher.init(_seed:)();
    if (v21 < 0)
    {
      MEMORY[0x266754DE0](1);

      String.hash(into:)();
      MEMORY[0x266754DE0](0);
      if (v21)
      {
        Hasher._combine(_:)(0);
        goto LABEL_21;
      }

      Hasher._combine(_:)(1u);
      v22 = v31;
    }

    else
    {
      MEMORY[0x266754DE0](0);

      String.hash(into:)();
      v22 = 0;
    }

    MEMORY[0x266754DE0](v22);
LABEL_21:
    result = Hasher._finalize()();
    v23 = -1 << *(v5 + 32);
    v24 = result & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v12 + 8 * (v24 >> 6))) == 0)
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
        v29 = *(v12 + 8 * v25);
        if (v29 != -1)
        {
          v13 = __clz(__rbit64(~v29)) + (v25 << 6);
          goto LABEL_7;
        }
      }

      goto LABEL_34;
    }

    v13 = __clz(__rbit64((-1 << v24) & ~*(v12 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
    *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
    v14 = *(v5 + 48) + 32 * v13;
    *v14 = v19;
    *(v14 + 8) = v20;
    v3 = v30;
    *(v14 + 16) = v31;
    *(v14 + 24) = v21;
    ++*(v5 + 16);
  }

  v16 = v6;
  while (1)
  {
    v6 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v6 >= v11)
    {

      v2 = v1;
      goto LABEL_32;
    }

    v17 = *(v7 + 8 * v6);
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v10 = (v17 - 1) & v17;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
  return result;
}

{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd, &_ss11_SetStorageCySSGMR);
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
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy15SecureMessaging3MLSO22UniqueClientIdentifierVGMd, &_ss11_SetStorageCy15SecureMessaging3MLSO22UniqueClientIdentifierVGMR);
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
      String.hash(into:)();
      MEMORY[0x266754DE0](0);
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

uint64_t specialized _NativeSet.copyAndResize(capacity:)(uint64_t a1)
{
  v2 = v1;
  v33 = type metadata accessor for MLS.Identity.Credential();
  v3 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy8SwiftMLS0D0O8IdentityO10CredentialOGMd, &_ss11_SetStorageCy8SwiftMLS0D0O8IdentityO10CredentialOGMR);
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
      _s8SwiftMLS0B0O8IdentityO07SigningC0VAGSHAAWlTm_0(&lazy protocol witness table cache variable for type MLS.Identity.Credential and conformance MLS.Identity.Credential, MEMORY[0x277D6AC88], MEMORY[0x277D6AC90]);
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
  v33 = type metadata accessor for MLS.Identity.SigningIdentity();
  v3 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy8SwiftMLS0D0O8IdentityO07SigningE0VGMd, &_ss11_SetStorageCy8SwiftMLS0D0O8IdentityO07SigningE0VGMR);
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
      _s8SwiftMLS0B0O8IdentityO07SigningC0VAGSHAAWlTm_0(&lazy protocol witness table cache variable for type MLS.Identity.SigningIdentity and conformance MLS.Identity.SigningIdentity, MEMORY[0x277D6AC60], MEMORY[0x277D6AC68]);
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