uint64_t closure #1 in closure #1 in MLS.EventSender.enqueueSelfHeal(groupIdentifier:identifier:ftdInfo:isWithinPersisterTransaction:sendBlock:)(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = v6;
  if (one-time initialization token for shared != -1)
  {
    v17 = a4;
    swift_once();
    a4 = v17;
  }

  v12 = static MLSActor.shared;
  *(v10 + 80) = *(a4 + 64);
  *(v10 + 88) = v12;
  v13 = *(a4 + 48);
  *(v10 + 48) = *(a4 + 32);
  *(v10 + 64) = v13;
  v14 = *(a4 + 16);
  *(v10 + 16) = *a4;
  *(v10 + 32) = v14;
  v18 = (a2 + *a2);
  v15 = swift_task_alloc();
  *(v10 + 96) = v15;
  *v15 = v10;
  v15[1] = closure #1 in closure #1 in MLS.EventSender.enqueueSelfHeal(groupIdentifier:identifier:ftdInfo:isWithinPersisterTransaction:sendBlock:);

  return v18(a1, v10 + 16, a5, a6);
}

uint64_t closure #1 in closure #1 in MLS.EventSender.enqueueSelfHeal(groupIdentifier:identifier:ftdInfo:isWithinPersisterTransaction:sendBlock:)()
{
  v2 = *v1;
  v2[13] = v0;

  if (v0)
  {
    v3 = v2[11];

    return MEMORY[0x2822009F8](closure #1 in closure #1 in MLS.EventSender.enqueueSelfHeal(groupIdentifier:identifier:ftdInfo:isWithinPersisterTransaction:sendBlock:), v3, 0);
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

uint64_t MLS.EventSender.reenqueueMatchingEventBehindSelfHeal(groupIdentifier:identifierWaitingReflection:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v6 = static MLSActor.shared;
  v5[7] = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.EventSender.reenqueueMatchingEventBehindSelfHeal(groupIdentifier:identifierWaitingReflection:), v6, 0);
}

uint64_t MLS.EventSender.reenqueueMatchingEventBehindSelfHeal(groupIdentifier:identifierWaitingReflection:)()
{
  v1 = v0[6];
  v2 = MLS.EventSender.eventQueue(groupIdentifier:)(v0[2], v0[3]);
  v0[8] = v2;
  v3 = (*(*v1 + 256))();
  v5 = v4;
  v0[9] = v4;
  v6 = (*(*v1 + 232))();
  v8 = v7;
  v0[10] = v7;
  v13 = (*(*v2 + 304) + **(*v2 + 304));
  v9 = swift_task_alloc();
  v0[11] = v9;
  *v9 = v0;
  v9[1] = MLS.EventSender.reenqueueMatchingEventBehindSelfHeal(groupIdentifier:identifierWaitingReflection:);
  v11 = v0[4];
  v10 = v0[5];

  return v13(v11, v10, v3, v5, v6, v8);
}

{
  v2 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = *(v2 + 56);
    v4 = MLS.EventSender.reenqueueMatchingEventBehindSelfHeal(groupIdentifier:identifierWaitingReflection:);
  }

  else
  {
    v5 = *(v2 + 56);

    v4 = MLS.EventSender.reenqueueMatchingEventBehindSelfHeal(groupIdentifier:identifierWaitingReflection:);
    v3 = v5;
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

uint64_t MLS.EventSender.reenqueueMatchingEvent(groupIdentifier:identifierWaitingReflection:sendBlockOverride:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[7] = a6;
  v7[8] = v6;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v8 = static MLSActor.shared;
  v7[9] = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.EventSender.reenqueueMatchingEvent(groupIdentifier:identifierWaitingReflection:sendBlockOverride:), v8, 0);
}

uint64_t MLS.EventSender.reenqueueMatchingEvent(groupIdentifier:identifierWaitingReflection:sendBlockOverride:)()
{
  v1 = *(v0 + 48);
  v2 = MLS.EventSender.eventQueue(groupIdentifier:)(*(v0 + 16), *(v0 + 24));
  *(v0 + 80) = v2;
  if (v1)
  {
    v4 = *(v0 + 48);
    v3 = *(v0 + 56);
    v5 = &thunk for @escaping @callee_guaranteed @Sendable @async (@in_guaranteed MLS.OutgoingEventState?, @guaranteed String) -> (@out MLS.EventQueue.Result, @error @owned Error)partial apply;
    v6 = v4;
    v7 = v3;
  }

  else
  {
    v6 = (*(**(v0 + 64) + 232))();
    v7 = v8;
    v4 = *(v0 + 48);
    v3 = *(v0 + 56);
    v5 = &async function pointer to partial apply for thunk for @escaping @callee_guaranteed @Sendable @async (@in_guaranteed MLS.OutgoingEventState?, @guaranteed String) -> (@out MLS.EventQueue.Result, @error @owned Error);
  }

  v9 = swift_allocObject();
  *(v9 + 16) = v6;
  *(v9 + 24) = v7;
  v10 = swift_allocObject();
  *(v0 + 88) = v10;
  *(v10 + 16) = v5;
  *(v10 + 24) = v9;
  v11 = *(*v2 + 312);
  _sxSbs5Error_pRi_zRi0_zlyxIseghndzo_Sgs8SendableRzlWOy(v4, v3);
  v16 = (v11 + *v11);
  v12 = swift_task_alloc();
  *(v0 + 96) = v12;
  *v12 = v0;
  v12[1] = MLS.EventSender.reenqueueMatchingEvent(groupIdentifier:identifierWaitingReflection:sendBlockOverride:);
  v14 = *(v0 + 32);
  v13 = *(v0 + 40);

  return v16(v14, v13, &async function pointer to partial apply for thunk for @escaping @callee_guaranteed @Sendable @async (@in_guaranteed MLS.OutgoingEventState?, @in_guaranteed String) -> (@out MLS.EventQueue.Result, @error @owned Error), v10);
}

{
  v2 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = *(v2 + 72);
    v4 = MLS.EventSender.reenqueueMatchingEvent(groupIdentifier:identifierWaitingReflection:sendBlockOverride:);
  }

  else
  {
    v5 = *(v2 + 72);

    v4 = MLS.EventSender.reenqueueMatchingEvent(groupIdentifier:identifierWaitingReflection:sendBlockOverride:);
    v3 = v5;
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

uint64_t MLS.EventSender.enqueuePersisted(eventState:groupIdentifier:sendBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 480) = a5;
  *(v6 + 488) = v5;
  *(v6 + 464) = a3;
  *(v6 + 472) = a4;
  *(v6 + 448) = a1;
  *(v6 + 456) = a2;
  v7 = *(a1 + 48);
  *(v6 + 48) = *(a1 + 32);
  *(v6 + 64) = v7;
  *(v6 + 80) = *(a1 + 64);
  v8 = *(a1 + 16);
  *(v6 + 16) = *a1;
  *(v6 + 32) = v8;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v9 = static MLSActor.shared;
  *(v6 + 496) = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.EventSender.enqueuePersisted(eventState:groupIdentifier:sendBlock:), v9, 0);
}

uint64_t MLS.EventSender.enqueuePersisted(eventState:groupIdentifier:sendBlock:)()
{
  v1 = *(v0 + 480);
  v2 = *(v0 + 488);
  v3 = *(v0 + 472);
  v4 = *(v0 + 448);
  v5 = MLS.EventSender.eventQueue(groupIdentifier:)(*(v0 + 456), *(v0 + 464));
  *(v0 + 504) = v5;
  v6 = *(v0 + 56);
  v7 = *(v0 + 64);
  v9 = *(v4 + 32);
  v8 = *(v4 + 48);
  v10 = *(v4 + 16);
  *(v0 + 152) = *(v4 + 64);
  *(v0 + 120) = v9;
  *(v0 + 136) = v8;
  *(v0 + 104) = v10;
  *(v0 + 88) = *v4;
  v11 = swift_allocObject();
  *(v0 + 512) = v11;
  *(v11 + 16) = v2;
  v13 = *(v4 + 32);
  v12 = *(v4 + 48);
  v14 = *(v4 + 16);
  *(v11 + 88) = *(v4 + 64);
  *(v11 + 40) = v14;
  *(v11 + 56) = v13;
  *(v11 + 72) = v12;
  *(v11 + 24) = *v4;
  *(v11 + 96) = v3;
  *(v11 + 104) = v1;
  v15 = *(*v5 + 280);
  outlined init with copy of MLS.OutgoingEventState(v0 + 16, v0 + 160);
  outlined init with copy of MLS.OutgoingEventState(v0 + 16, v0 + 232);

  v18 = (v15 + *v15);
  v16 = swift_task_alloc();
  *(v0 + 520) = v16;
  *v16 = v0;
  v16[1] = MLS.EventSender.enqueuePersisted(eventState:groupIdentifier:sendBlock:);

  return v18(v6, v7, v0 + 88, &async function pointer to partial apply for closure #1 in MLS.EventSender.enqueuePersisted(eventState:groupIdentifier:sendBlock:), v11);
}

{
  v2 = *v1;
  *(v2 + 528) = v0;

  v3 = *(v2 + 496);
  if (v0)
  {
    v4 = *(v2 + 88);
    v5 = *(v2 + 104);
    v6 = *(v2 + 120);
    v7 = *(v2 + 136);
    *(v2 + 368) = *(v2 + 152);
    *(v2 + 336) = v6;
    *(v2 + 352) = v7;
    *(v2 + 304) = v4;
    *(v2 + 320) = v5;
    outlined destroy of NSObject?(v2 + 304, &_s15SecureMessaging3MLSO18OutgoingEventStateVSgMd, &_s15SecureMessaging3MLSO18OutgoingEventStateVSgMR);

    v8 = MLS.EventSender.enqueuePersisted(eventState:groupIdentifier:sendBlock:);
  }

  else
  {
    *(v2 + 376) = *(v2 + 88);
    v9 = *(v2 + 104);
    v10 = *(v2 + 120);
    v11 = *(v2 + 136);
    *(v2 + 440) = *(v2 + 152);
    *(v2 + 408) = v10;
    *(v2 + 424) = v11;
    *(v2 + 392) = v9;
    outlined destroy of NSObject?(v2 + 376, &_s15SecureMessaging3MLSO18OutgoingEventStateVSgMd, &_s15SecureMessaging3MLSO18OutgoingEventStateVSgMR);

    v8 = MLS.EventSender.enqueuePersisted(eventState:groupIdentifier:sendBlock:);
  }

  return MEMORY[0x2822009F8](v8, v3, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t closure #1 in MLS.EventSender.enqueuePersisted(eventState:groupIdentifier:sendBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 128) = a7;
  *(v8 + 136) = a8;
  *(v8 + 112) = a5;
  *(v8 + 120) = a6;
  *(v8 + 96) = a3;
  *(v8 + 104) = a4;
  v9 = *(a2 + 48);
  *(v8 + 48) = *(a2 + 32);
  *(v8 + 64) = v9;
  *(v8 + 80) = *(a2 + 64);
  *(v8 + 88) = a1;
  v10 = *(a2 + 16);
  *(v8 + 16) = *a2;
  *(v8 + 32) = v10;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v11 = static MLSActor.shared;
  *(v8 + 144) = static MLSActor.shared;

  return MEMORY[0x2822009F8](closure #1 in MLS.EventSender.enqueuePersisted(eventState:groupIdentifier:sendBlock:), v11, 0);
}

uint64_t closure #1 in MLS.EventSender.enqueuePersisted(eventState:groupIdentifier:sendBlock:)()
{
  v1 = *(v0 + 120);
  v3 = *(v0 + 96);
  v2 = *(v0 + 104);
  v4 = *(*(v0 + 112) + 48);
  v5 = *(v1 + 40);
  v6 = *(v1 + 48);
  v7 = swift_task_alloc();
  *(v0 + 152) = v7;
  *(v7 + 16) = *(v0 + 128);
  *(v7 + 32) = v0 + 16;
  *(v7 + 40) = v3;
  *(v7 + 48) = v2;
  v11 = (*(*v4 + 152) + **(*v4 + 152));
  v8 = swift_task_alloc();
  *(v0 + 160) = v8;
  *v8 = v0;
  v8[1] = closure #1 in MLS.EventSender.enqueuePersisted(eventState:groupIdentifier:sendBlock:);
  v9 = *(v0 + 88);

  return v11(v9, v5, v6, &async function pointer to partial apply for closure #1 in closure #1 in MLS.EventSender.enqueuePersisted(eventState:groupIdentifier:sendBlock:), v7, &type metadata for MLS.EventQueue.Result);
}

{
  v2 = *v1;
  v2[21] = v0;

  if (v0)
  {
    v3 = v2[18];

    return MEMORY[0x2822009F8](MLS.EventQueue.reenqueueAtFrontBehindSelfHeal(identifier:eventState:selfHealBlock:sendBlock:), v3, 0);
  }

  else
  {

    v4 = v2[1];

    return v4();
  }
}

uint64_t MLS.EventSender.dequeue(groupVersion:groupIdentifier:identifier:dueToReflection:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = *(a1 + 2);
  v10 = a1[2];
  v13 = *a1;
  v14 = v9;
  v15 = v10;
  v11 = *MLS.EventSender.eventQueue(groupIdentifier:)(a2, a3);
  (*(v11 + 328))(&v13, a4, a5, a6);
}

uint64_t MLS.EventSender.send(outgoingEvent:forGroup:retryBehavior:shouldPersistNewEvent:acknowledgementBlock:)(__int128 *a1, uint64_t a2, __int128 *a3, char a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 2744) = v6;
  *(v7 + 2736) = a6;
  *(v7 + 2728) = a5;
  *(v7 + 1033) = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v11 = swift_task_alloc();
  v12 = a1[7];
  *(v7 + 1168) = a1[8];
  v13 = a1[8];
  *(v7 + 1184) = a1[9];
  v14 = a1[9];
  *(v7 + 1200) = a1[10];
  v15 = a1[3];
  *(v7 + 1104) = a1[4];
  v16 = a1[4];
  *(v7 + 1120) = a1[5];
  v17 = a1[5];
  *(v7 + 1136) = a1[6];
  v18 = a1[6];
  *(v7 + 1152) = a1[7];
  v19 = a1[1];
  *(v7 + 1040) = *a1;
  v20 = *a1;
  *(v7 + 1056) = a1[1];
  *(v7 + 1072) = a1[2];
  v21 = a1[2];
  *(v7 + 1088) = a1[3];
  *(v7 + 984) = v13;
  *(v7 + 1000) = v14;
  *(v7 + 1016) = a1[10];
  *(v7 + 920) = v16;
  *(v7 + 936) = v17;
  *(v7 + 2752) = v11;
  *(v7 + 1216) = *(a1 + 176);
  *(v7 + 1032) = *(a1 + 176);
  *(v7 + 952) = v18;
  *(v7 + 968) = v12;
  *(v7 + 856) = v20;
  *(v7 + 872) = v19;
  *(v7 + 888) = v21;
  *(v7 + 904) = v15;
  v22 = *(a2 + 80);
  *(v7 + 2024) = *(a2 + 64);
  *(v7 + 2040) = v22;
  *(v7 + 2056) = *(a2 + 96);
  v23 = *(a2 + 16);
  *(v7 + 1960) = *a2;
  *(v7 + 1976) = v23;
  v24 = *(a2 + 48);
  *(v7 + 1992) = *(a2 + 32);
  *(v7 + 2008) = v24;
  v25 = *a3;
  v26 = a3[1];
  *(v7 + 2305) = *(a3 + 57);
  v28 = a3[2];
  v27 = a3[3];
  *(v7 + 2280) = v28;
  *(v7 + 2296) = v27;
  v30 = *a3;
  v29 = a3[1];
  *(v7 + 2248) = v25;
  *(v7 + 2264) = v29;
  *(v7 + 2225) = *(a3 + 57);
  v31 = a3[3];
  *(v7 + 2200) = v28;
  *(v7 + 2216) = v31;
  *(v7 + 2168) = v30;
  *(v7 + 2184) = v26;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v32 = static MLSActor.shared;
  *(v7 + 2760) = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.EventSender.send(outgoingEvent:forGroup:retryBehavior:shouldPersistNewEvent:acknowledgementBlock:), v32, 0);
}

uint64_t MLS.EventSender.send(outgoingEvent:forGroup:retryBehavior:shouldPersistNewEvent:acknowledgementBlock:)()
{
  v68 = v0;
  *(v0 + 2768) = direct field offset for MLS.EventSender.logger;
  outlined init with copy of MLS.OutgoingEventState?(v0 + 1040, v0 + 1224, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  outlined destroy of NSObject?(v0 + 1040, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v67 = v4;
    *v3 = 136315138;
    v5 = specialized MLS.OutgoingEventType.identifier.getter();
    v7 = v6;

    v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v7, &v67);

    *(v3 + 4) = v8;
    _os_log_impl(&dword_264F1F000, v1, v2, "EventSender told to send outgoing event { identifier: %s }", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v4);
    MEMORY[0x266755550](v4, -1, -1);
    MEMORY[0x266755550](v3, -1, -1);
  }

  v9 = (v0 + 2248);
  if (*(v0 + 1033) == 1)
  {
    v10 = (v0 + 2168);
    v11 = *(v0 + 2312);
    if (*(v0 + 2320) == 1)
    {
      v61 = *(v0 + 2296);
      v62 = *(v0 + 2280);
      v63 = *(v0 + 2264);
      v65 = *v9;
      v12 = v0 + 2408;
      v38 = *(v0 + 2216);
      *(v0 + 2440) = *(v0 + 2200);
      *(v0 + 2456) = v38;
      *(v0 + 2465) = *(v0 + 2225);
      v39 = *(v0 + 2184);
      *(v0 + 2408) = *v10;
      *(v0 + 2424) = v39;
      v15 = v0 + 2568;
    }

    else
    {
      if (*(v0 + 2320))
      {
        v11 = 0;
        v40 = 0uLL;
        v41 = 0uLL;
        v42 = 0uLL;
        v43 = 0uLL;
        goto LABEL_13;
      }

      v61 = *(v0 + 2296);
      v62 = *(v0 + 2280);
      v63 = *(v0 + 2264);
      v65 = *v9;
      v12 = v0 + 2488;
      v13 = *(v0 + 2216);
      *(v0 + 2520) = *(v0 + 2200);
      *(v0 + 2536) = v13;
      *(v0 + 2545) = *(v0 + 2225);
      v14 = *(v0 + 2184);
      *(v0 + 2488) = *v10;
      *(v0 + 2504) = v14;
      v15 = v0 + 2640;
    }

    outlined init with copy of MLS.OutgoingEventState?(v12, v15, &_s15SecureMessaging3MLSO18OutgoingEventStateV05eventF0_tMd, &_s15SecureMessaging3MLSO18OutgoingEventStateV05eventF0_tMR);
    v41 = v63;
    v40 = v65;
    v43 = v61;
    v42 = v62;
LABEL_13:
    v44 = *(v0 + 2744);
    v45 = *(v0 + 1976);
    v46 = *(v0 + 1984);
    v47 = *(v0 + 1992);
    v48 = *(v0 + 1000);
    *(v0 + 424) = *(v0 + 984);
    *(v0 + 440) = v48;
    *(v0 + 456) = *(v0 + 1016);
    *(v0 + 472) = *(v0 + 1032);
    v49 = *(v0 + 936);
    *(v0 + 360) = *(v0 + 920);
    *(v0 + 376) = v49;
    v50 = *(v0 + 968);
    *(v0 + 392) = *(v0 + 952);
    *(v0 + 408) = v50;
    v51 = *(v0 + 872);
    *(v0 + 296) = *(v0 + 856);
    *(v0 + 312) = v51;
    v52 = *(v0 + 904);
    *(v0 + 328) = *(v0 + 888);
    *(v0 + 344) = v52;
    *(v0 + 480) = v40;
    *(v0 + 496) = v41;
    *(v0 + 512) = v42;
    *(v0 + 528) = v43;
    *(v0 + 544) = v11;
    *(v0 + 552) = v45;
    *(v0 + 560) = v46;
    *(v0 + 568) = v47;
    memcpy((v0 + 16), (v0 + 296), 0x118uLL);
    _s15SecureMessaging3MLSO19OutgoingEventUpdateOWOi_(v0 + 16);
    v53 = *(v44 + 40);
    ObjectType = swift_getObjectType();
    memcpy((v0 + 576), (v0 + 16), 0x118uLL);
    v55 = *(v0 + 1960);
    v56 = *(v0 + 1968);
    v57 = *(v44 + direct field offset for MLS.EventSender.clientIdentifier);
    v58 = *(v44 + direct field offset for MLS.EventSender.clientIdentifier + 8);
    *(v0 + 2712) = v57;
    *(v0 + 2720) = v58;
    v59 = *(v53 + 112);
    outlined init with copy of MLS.OutgoingEventState?(v0 + 1040, v0 + 1592, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);

    v64 = (v59 + *v59);
    v60 = swift_task_alloc();
    *(v0 + 2776) = v60;
    *v60 = v0;
    v60[1] = MLS.EventSender.send(outgoingEvent:forGroup:retryBehavior:shouldPersistNewEvent:acknowledgementBlock:);

    return v64(v0 + 576, v55, v56, v0 + 2712, ObjectType, v53);
  }

  v16 = *(v0 + 2760);
  v17 = *(v0 + 2752);
  v18 = *(v0 + 2744);
  v66 = *(v0 + 2736);
  v19 = *(v0 + 2728);
  v20 = type metadata accessor for TaskPriority();
  (*(*(v20 - 8) + 56))(v17, 1, 1, v20);
  v21 = lazy protocol witness table accessor for type MLSActor and conformance MLSActor();
  v22 = swift_allocObject();
  *(v22 + 16) = v16;
  *(v22 + 24) = v21;
  *(v22 + 32) = v18;
  v23 = *(v0 + 1184);
  *(v22 + 168) = *(v0 + 1168);
  *(v22 + 184) = v23;
  *(v22 + 200) = *(v0 + 1200);
  *(v22 + 216) = *(v0 + 1216);
  v24 = *(v0 + 1120);
  *(v22 + 104) = *(v0 + 1104);
  *(v22 + 120) = v24;
  v25 = *(v0 + 1152);
  *(v22 + 136) = *(v0 + 1136);
  *(v22 + 152) = v25;
  v26 = *(v0 + 1056);
  *(v22 + 40) = *(v0 + 1040);
  *(v22 + 56) = v26;
  v27 = *(v0 + 1088);
  *(v22 + 72) = *(v0 + 1072);
  *(v22 + 88) = v27;
  v28 = *(v0 + 2040);
  *(v22 + 288) = *(v0 + 2024);
  *(v22 + 304) = v28;
  v29 = *(v0 + 2056);
  v30 = *(v0 + 1976);
  *(v22 + 224) = *(v0 + 1960);
  *(v22 + 240) = v30;
  v31 = *(v0 + 2008);
  *(v22 + 256) = *(v0 + 1992);
  *(v22 + 272) = v31;
  *(v22 + 320) = v29;
  *(v22 + 328) = v19;
  *(v22 + 336) = v66;
  v32 = *v9;
  v33 = *(v0 + 2264);
  *(v22 + 401) = *(v0 + 2305);
  v34 = *(v0 + 2296);
  *(v22 + 376) = *(v0 + 2280);
  *(v22 + 392) = v34;
  *(v22 + 344) = v32;
  *(v22 + 360) = v33;
  outlined init with copy of MLS.OutgoingEventState?(v0 + 1040, v0 + 1408, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
  outlined init with copy of MLS.RetryAfterGroupVersionBehavior(v0 + 2248, v0 + 2328);

  outlined init with copy of MLS.Group(v0 + 1960, v0 + 2064);
  _sxSbs5Error_pRi_zRi0_zlyxIseghndzo_Sgs8SendableRzlWOy(v19, v66);

  v35 = _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v17, &async function pointer to partial apply for closure #1 in MLS.EventSender.send(outgoingEvent:forGroup:retryBehavior:shouldPersistNewEvent:acknowledgementBlock:), v22);

  v36 = *(v0 + 8);

  return v36(v35);
}

{
  v2 = *v1;
  *(*v1 + 2784) = v0;

  v3 = *(v2 + 2760);
  if (v0)
  {
    v4 = MLS.EventSender.send(outgoingEvent:forGroup:retryBehavior:shouldPersistNewEvent:acknowledgementBlock:);
  }

  else
  {
    v4 = MLS.EventSender.send(outgoingEvent:forGroup:retryBehavior:shouldPersistNewEvent:acknowledgementBlock:);
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{
  v33 = v0;
  outlined init with copy of MLS.OutgoingEventState?(v0 + 1040, v0 + 1776, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  outlined destroy of NSObject?(v0 + 1040, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v32 = v4;
    *v3 = 136315138;
    v5 = specialized MLS.OutgoingEventType.identifier.getter();
    v7 = v6;

    v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v7, &v32);

    *(v3 + 4) = v8;
    _os_log_impl(&dword_264F1F000, v1, v2, "EventSender persisted outgoing event { identifier: %s }", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v4);
    MEMORY[0x266755550](v4, -1, -1);
    MEMORY[0x266755550](v3, -1, -1);
  }

  outlined destroy of NSObject?(v0 + 296, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVG_AC0dE5StateVSgAC12GroupVersionVtMd, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVG_AC0dE5StateVSgAC12GroupVersionVtMR);

  v9 = *(v0 + 2760);
  v10 = *(v0 + 2752);
  v11 = *(v0 + 2744);
  v31 = *(v0 + 2736);
  v12 = *(v0 + 2728);
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = lazy protocol witness table accessor for type MLSActor and conformance MLSActor();
  v15 = swift_allocObject();
  *(v15 + 16) = v9;
  *(v15 + 24) = v14;
  *(v15 + 32) = v11;
  v16 = *(v0 + 1184);
  *(v15 + 168) = *(v0 + 1168);
  *(v15 + 184) = v16;
  *(v15 + 200) = *(v0 + 1200);
  *(v15 + 216) = *(v0 + 1216);
  v17 = *(v0 + 1120);
  *(v15 + 104) = *(v0 + 1104);
  *(v15 + 120) = v17;
  v18 = *(v0 + 1152);
  *(v15 + 136) = *(v0 + 1136);
  *(v15 + 152) = v18;
  v19 = *(v0 + 1056);
  *(v15 + 40) = *(v0 + 1040);
  *(v15 + 56) = v19;
  v20 = *(v0 + 1088);
  *(v15 + 72) = *(v0 + 1072);
  *(v15 + 88) = v20;
  v21 = *(v0 + 2040);
  *(v15 + 288) = *(v0 + 2024);
  *(v15 + 304) = v21;
  v22 = *(v0 + 2056);
  v23 = *(v0 + 1976);
  *(v15 + 224) = *(v0 + 1960);
  *(v15 + 240) = v23;
  v24 = *(v0 + 2008);
  *(v15 + 256) = *(v0 + 1992);
  *(v15 + 272) = v24;
  *(v15 + 320) = v22;
  *(v15 + 328) = v12;
  *(v15 + 336) = v31;
  v25 = *(v0 + 2248);
  v26 = *(v0 + 2264);
  *(v15 + 401) = *(v0 + 2305);
  v27 = *(v0 + 2296);
  *(v15 + 376) = *(v0 + 2280);
  *(v15 + 392) = v27;
  *(v15 + 344) = v25;
  *(v15 + 360) = v26;
  outlined init with copy of MLS.OutgoingEventState?(v0 + 1040, v0 + 1408, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
  outlined init with copy of MLS.RetryAfterGroupVersionBehavior(v0 + 2248, v0 + 2328);

  outlined init with copy of MLS.Group(v0 + 1960, v0 + 2064);
  _sxSbs5Error_pRi_zRi0_zlyxIseghndzo_Sgs8SendableRzlWOy(v12, v31);

  v28 = _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v10, &async function pointer to partial apply for closure #1 in MLS.EventSender.send(outgoingEvent:forGroup:retryBehavior:shouldPersistNewEvent:acknowledgementBlock:), v15);

  v29 = *(v0 + 8);

  return v29(v28);
}

{
  outlined destroy of NSObject?(v0 + 296, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVG_AC0dE5StateVSgAC12GroupVersionVtMd, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVG_AC0dE5StateVSgAC12GroupVersionVtMR);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t closure #1 in MLS.EventSender.send(outgoingEvent:forGroup:retryBehavior:shouldPersistNewEvent:acknowledgementBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[112] = v12;
  v8[111] = a8;
  v8[110] = a7;
  v8[109] = a6;
  v8[108] = a5;
  v8[107] = a4;
  v8[113] = *a4;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v9 = static MLSActor.shared;
  v8[114] = static MLSActor.shared;

  return MEMORY[0x2822009F8](closure #1 in MLS.EventSender.send(outgoingEvent:forGroup:retryBehavior:shouldPersistNewEvent:acknowledgementBlock:), v9, 0);
}

uint64_t closure #1 in MLS.EventSender.send(outgoingEvent:forGroup:retryBehavior:shouldPersistNewEvent:acknowledgementBlock:)()
{
  v1 = v0[108];
  outlined init with copy of MLS.OutgoingEventState?(v1, (v0 + 2), &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  outlined destroy of NSObject?(v1, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v65 = v5;
    *v4 = 136315138;
    v6 = specialized MLS.OutgoingEventType.identifier.getter();
    v8 = v7;

    v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v8, &v65);

    *(v4 + 4) = v9;
    _os_log_impl(&dword_264F1F000, v2, v3, "EventSender on MLS actor { identifier: %s }", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    MEMORY[0x266755550](v5, -1, -1);
    MEMORY[0x266755550](v4, -1, -1);
  }

  v10 = v0[113];
  v11 = v0[112];
  v12 = v0[111];
  v63 = v0[110];
  v13 = v0[109];
  v14 = v0[108];
  v60 = v12;
  v15 = specialized MLS.OutgoingEventType.identifier.getter();
  v61 = v16;
  v62 = v15;
  v0[115] = v16;
  v17 = swift_allocObject();
  swift_weakInit();
  v18 = swift_allocObject();
  v0[116] = v18;
  v59 = v10[10];
  *(v18 + 16) = v59;
  v58 = v10[11];
  *(v18 + 24) = v58;
  v19 = v10[12];
  *(v18 + 32) = v19;
  v20 = v10[13];
  *(v18 + 40) = v20;
  *(v18 + 48) = v17;
  v21 = *(v14 + 32);
  v22 = *(v14 + 48);
  v23 = *(v14 + 16);
  *(v18 + 56) = *v14;
  *(v18 + 104) = v22;
  *(v18 + 88) = v21;
  *(v18 + 72) = v23;
  v24 = *(v14 + 96);
  v25 = *(v14 + 112);
  v26 = *(v14 + 80);
  *(v18 + 120) = *(v14 + 64);
  *(v18 + 168) = v25;
  *(v18 + 152) = v24;
  *(v18 + 136) = v26;
  v28 = *(v14 + 144);
  v27 = *(v14 + 160);
  v29 = *(v14 + 176);
  *(v18 + 184) = *(v14 + 128);
  *(v18 + 232) = v29;
  *(v18 + 216) = v27;
  *(v18 + 200) = v28;
  v30 = *v13;
  v31 = *(v13 + 32);
  *(v18 + 256) = *(v13 + 16);
  *(v18 + 272) = v31;
  *(v18 + 240) = v30;
  v32 = *(v13 + 48);
  v33 = *(v13 + 80);
  v34 = *(v13 + 96);
  *(v18 + 304) = *(v13 + 64);
  *(v18 + 320) = v33;
  *(v18 + 288) = v32;
  *(v18 + 336) = v34;
  *(v18 + 344) = v63;
  *(v18 + 352) = v12;
  *(v18 + 360) = *v11;
  v35 = v11[1];
  v36 = v11[2];
  v37 = v11[3];
  *(v18 + 417) = *(v11 + 57);
  *(v18 + 392) = v36;
  *(v18 + 408) = v37;
  *(v18 + 376) = v35;
  v38 = swift_allocObject();
  swift_weakInit();
  v39 = swift_allocObject();
  *&v40 = v59;
  *(&v40 + 1) = v58;
  *&v41 = v19;
  *(&v41 + 1) = v20;
  v0[117] = v39;
  *(v39 + 16) = v40;
  *(v39 + 32) = v41;
  *(v39 + 48) = v38;
  v42 = *(v14 + 128);
  v43 = *(v14 + 144);
  v44 = *(v14 + 160);
  *(v39 + 232) = *(v14 + 176);
  *(v39 + 216) = v44;
  *(v39 + 200) = v43;
  *(v39 + 184) = v42;
  v45 = *(v14 + 64);
  v46 = *(v14 + 80);
  v47 = *(v14 + 96);
  *(v39 + 168) = *(v14 + 112);
  *(v39 + 152) = v47;
  *(v39 + 136) = v46;
  *(v39 + 120) = v45;
  v48 = *v14;
  v49 = *(v14 + 16);
  v50 = *(v14 + 32);
  *(v39 + 104) = *(v14 + 48);
  *(v39 + 88) = v50;
  *(v39 + 72) = v49;
  *(v39 + 56) = v48;
  v51 = *v13;
  v52 = *(v13 + 32);
  *(v39 + 256) = *(v13 + 16);
  *(v39 + 272) = v52;
  *(v39 + 240) = v51;
  v53 = *(v13 + 48);
  v54 = *(v13 + 64);
  v55 = *(v13 + 80);
  *(v39 + 336) = *(v13 + 96);
  *(v39 + 304) = v54;
  *(v39 + 320) = v55;
  *(v39 + 288) = v53;
  outlined init with copy of MLS.OutgoingEventState?(v14, (v0 + 25), &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
  outlined init with copy of MLS.Group(v13, (v0 + 71));
  outlined init with copy of MLS.OutgoingEventState?(v14, (v0 + 48), &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
  outlined init with copy of MLS.Group(v13, (v0 + 84));

  _sxSbs5Error_pRi_zRi0_zlyxIseghndzo_Sgs8SendableRzlWOy(v63, v60);
  outlined init with copy of MLS.RetryAfterGroupVersionBehavior(v11, (v0 + 97));
  v56 = swift_task_alloc();
  v0[118] = v56;
  *v56 = v0;
  v56[1] = closure #1 in MLS.EventSender.send(outgoingEvent:forGroup:retryBehavior:shouldPersistNewEvent:acknowledgementBlock:);

  return MLS.EventSender.performWithRetry<A>(identifier:retryPolicy:work:failureBlock:)(v0 + 193, v62, v61, 0, &async function pointer to partial apply for closure #1 in closure #1 in MLS.EventSender.send(outgoingEvent:forGroup:retryBehavior:shouldPersistNewEvent:acknowledgementBlock:), v18, &async function pointer to partial apply for closure #2 in closure #1 in MLS.EventSender.send(outgoingEvent:forGroup:retryBehavior:shouldPersistNewEvent:acknowledgementBlock:), v39);
}

{
  v1 = *(*v0 + 912);

  return MEMORY[0x2822009F8](closure #1 in MLS.EventSender.send(outgoingEvent:forGroup:retryBehavior:shouldPersistNewEvent:acknowledgementBlock:), v1, 0);
}

{
  return (*(v0 + 8))();
}

uint64_t closure #1 in closure #1 in MLS.EventSender.send(outgoingEvent:forGroup:retryBehavior:shouldPersistNewEvent:acknowledgementBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[222] = a7;
  v7[221] = a6;
  v7[220] = a5;
  v7[219] = a4;
  v7[218] = a3;
  v7[217] = a2;
  v7[216] = a1;
  return MEMORY[0x2822009F8](closure #1 in closure #1 in MLS.EventSender.send(outgoingEvent:forGroup:retryBehavior:shouldPersistNewEvent:acknowledgementBlock:), 0, 0);
}

uint64_t closure #1 in closure #1 in MLS.EventSender.send(outgoingEvent:forGroup:retryBehavior:shouldPersistNewEvent:acknowledgementBlock:)()
{
  v35 = v0;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 1784) = Strong;
  if (Strong)
  {
    v2 = Strong;
    v3 = *(v0 + 1744);
    *(v0 + 1792) = direct field offset for MLS.EventSender.logger;
    outlined init with copy of MLS.OutgoingEventState?(v3, v0 + 16, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    outlined destroy of NSObject?(v3, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v34 = v7;
      *v6 = 136315138;
      v8 = specialized MLS.OutgoingEventType.identifier.getter();
      v10 = v9;

      v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v10, &v34);

      *(v6 + 4) = v11;
      _os_log_impl(&dword_264F1F000, v4, v5, "EventSender sending event { identifier: %s }", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v7);
      MEMORY[0x266755550](v7, -1, -1);
      MEMORY[0x266755550](v6, -1, -1);
    }

    v12 = *(v0 + 1752);
    v13 = *(v0 + 1744);
    v14 = *(v2 + 24);
    ObjectType = swift_getObjectType();
    v16 = *(v13 + 32);
    v17 = *(v13 + 48);
    v18 = *(v13 + 16);
    *(v0 + 200) = *v13;
    *(v0 + 248) = v17;
    *(v0 + 232) = v16;
    *(v0 + 216) = v18;
    v19 = *(v13 + 112);
    v21 = *(v13 + 64);
    v20 = *(v13 + 80);
    *(v0 + 296) = *(v13 + 96);
    *(v0 + 312) = v19;
    *(v0 + 264) = v21;
    *(v0 + 280) = v20;
    v23 = *(v13 + 144);
    v22 = *(v13 + 160);
    v24 = *(v13 + 128);
    *(v0 + 376) = *(v13 + 176);
    *(v0 + 344) = v23;
    *(v0 + 360) = v22;
    *(v0 + 328) = v24;
    v26 = *(v12 + 16);
    v25 = *(v12 + 32);
    *(v0 + 1120) = *v12;
    *(v0 + 1136) = v26;
    *(v0 + 1152) = v25;
    v27 = *(v12 + 48);
    v28 = *(v12 + 64);
    v29 = *(v12 + 80);
    *(v0 + 1216) = *(v12 + 96);
    *(v0 + 1200) = v29;
    *(v0 + 1184) = v28;
    *(v0 + 1168) = v27;
    v33 = (*(v14 + 8) + **(v14 + 8));
    v30 = swift_task_alloc();
    *(v0 + 1800) = v30;
    *v30 = v0;
    v30[1] = closure #1 in closure #1 in MLS.EventSender.send(outgoingEvent:forGroup:retryBehavior:shouldPersistNewEvent:acknowledgementBlock:);

    return v33(v0 + 1592, v0 + 200, v0 + 1120, ObjectType, v14);
  }

  else
  {
    **(v0 + 1728) = 0;
    v32 = *(v0 + 8);

    return v32();
  }
}

{
  *(*v1 + 1808) = v0;

  if (v0)
  {
    v2 = closure #1 in closure #1 in MLS.EventSender.send(outgoingEvent:forGroup:retryBehavior:shouldPersistNewEvent:acknowledgementBlock:);
  }

  else
  {
    v2 = closure #1 in closure #1 in MLS.EventSender.send(outgoingEvent:forGroup:retryBehavior:shouldPersistNewEvent:acknowledgementBlock:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  *(*v1 + 1848) = v0;

  if (v0)
  {
    v2 = closure #1 in closure #1 in MLS.EventSender.send(outgoingEvent:forGroup:retryBehavior:shouldPersistNewEvent:acknowledgementBlock:);
  }

  else
  {
    v2 = closure #1 in closure #1 in MLS.EventSender.send(outgoingEvent:forGroup:retryBehavior:shouldPersistNewEvent:acknowledgementBlock:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  *(*v1 + 1864) = v0;

  if (v0)
  {
    v2 = closure #1 in closure #1 in MLS.EventSender.send(outgoingEvent:forGroup:retryBehavior:shouldPersistNewEvent:acknowledgementBlock:);
  }

  else
  {
    v2 = closure #1 in closure #1 in MLS.EventSender.send(outgoingEvent:forGroup:retryBehavior:shouldPersistNewEvent:acknowledgementBlock:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{

  return MEMORY[0x2822009F8](closure #1 in closure #1 in MLS.EventSender.send(outgoingEvent:forGroup:retryBehavior:shouldPersistNewEvent:acknowledgementBlock:), 0, 0);
}

{
  outlined consume of MLS.SendResult(*(v0 + 1816), *(v0 + 1824), *(v0 + 1832), 2);

  **(v0 + 1728) = 0;
  v1 = *(v0 + 8);

  return v1();
}

{

  return MEMORY[0x2822009F8](closure #1 in closure #1 in MLS.EventSender.send(outgoingEvent:forGroup:retryBehavior:shouldPersistNewEvent:acknowledgementBlock:), 0, 0);
}

{
  *(*v1 + 1944) = v0;

  if (v0)
  {
    v2 = closure #1 in closure #1 in MLS.EventSender.send(outgoingEvent:forGroup:retryBehavior:shouldPersistNewEvent:acknowledgementBlock:);
  }

  else
  {
    v2 = closure #1 in closure #1 in MLS.EventSender.send(outgoingEvent:forGroup:retryBehavior:shouldPersistNewEvent:acknowledgementBlock:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v1 = *(v0 + 1832);
  v2 = *(v0 + 1824);
  v3 = *(v0 + 1816);
  outlined consume of MLS.SendResult(v3, v2, v1, 0);

  outlined consume of MLS.SendResult(v3, v2, v1, 0);
  **(v0 + 1728) = 0;
  v4 = *(v0 + 8);

  return v4();
}

{
  *(*v1 + 1960) = v0;

  if (v0)
  {
    v2 = closure #1 in closure #1 in MLS.EventSender.send(outgoingEvent:forGroup:retryBehavior:shouldPersistNewEvent:acknowledgementBlock:);
  }

  else
  {
    v2 = closure #1 in closure #1 in MLS.EventSender.send(outgoingEvent:forGroup:retryBehavior:shouldPersistNewEvent:acknowledgementBlock:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{

  **(v0 + 1728) = 0;
  v1 = *(v0 + 8);

  return v1();
}

{

  v1 = *(v0 + 8);

  return v1();
}

{
  v1 = *(v0 + 1832);
  v2 = *(v0 + 1824);
  v3 = *(v0 + 1816);
  v4 = *(v0 + 193);

  outlined consume of MLS.SendResult(v3, v2, v1, v4);
  v5 = *(v0 + 8);

  return v5();
}

{
  v1 = v0[229];
  v2 = v0[228];
  v3 = v0[227];
  outlined consume of MLS.SendResult(v3, v2, v1, 0);
  outlined consume of MLS.SendResult(v3, v2, v1, 0);

  v4 = v0[1];

  return v4();
}

{

  v1 = *(v0 + 8);

  return v1();
}

{

  v1 = *(v0 + 8);

  return v1();
}

void closure #1 in closure #1 in MLS.EventSender.send(outgoingEvent:forGroup:retryBehavior:shouldPersistNewEvent:acknowledgementBlock:)()
{
  v97 = v0;
  v1 = *(v0 + 1744);
  v2 = *(v0 + 1592);
  *(v0 + 1816) = v2;
  v3 = *(v0 + 1600);
  *(v0 + 1824) = v3;
  v4 = *(v0 + 1608);
  *(v0 + 1832) = v4;
  v5 = *(v0 + 1616);
  *(v0 + 193) = v5;
  outlined init with copy of MLS.OutgoingEventState?(v1, v0 + 384, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
  outlined copy of MLS.SendResult(v2, v3, v4, v5);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  outlined destroy of NSObject?(v1, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
  outlined consume of MLS.SendResult(v2, v3, v4, v5);
  if (os_log_type_enabled(v6, v7))
  {
    v90 = v7;
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v92 = v9;
    *v8 = 136315394;
    v10 = specialized MLS.OutgoingEventType.identifier.getter();
    v12 = v11;

    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v12, &v92);

    *(v8 + 4) = v13;
    *(v8 + 12) = 2080;
    v93 = v2;
    v94 = v3;
    v95 = v4;
    v96 = v5;
    outlined copy of MLS.SendResult(v2, v3, v4, v5);
    v14 = MLS.SendResult.description.getter();
    v16 = v15;
    outlined consume of MLS.SendResult(v93, v94, v95, v96);
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v16, &v92);

    *(v8 + 14) = v17;
    _os_log_impl(&dword_264F1F000, v6, v90, "EventSender sent event { identifier: %s, result: %s }", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v9, -1, -1);
    MEMORY[0x266755550](v8, -1, -1);
  }

  v18 = *(v0 + 1760);
  if (v18)
  {
    *(v0 + 1624) = v2;
    *(v0 + 1632) = v3;
    *(v0 + 1640) = v4;
    *(v0 + 1648) = v5;
    v91 = (v18 + *v18);
    v19 = swift_task_alloc();
    *(v0 + 1840) = v19;
    *v19 = v0;
    v19[1] = closure #1 in closure #1 in MLS.EventSender.send(outgoingEvent:forGroup:retryBehavior:shouldPersistNewEvent:acknowledgementBlock:);

    v91(v0 + 1624);
    return;
  }

  if (*(v0 + 193))
  {
    if (*(v0 + 193) == 1)
    {
      v20 = *(v0 + 1832);
      v21 = *(v0 + 1824);
      v22 = *(v0 + 1816);
      v23 = *(v0 + 1776);
      v24 = *(v0 + 1752);
      v25 = *(v0 + 1744);
      *(v0 + 1432) = *v23;
      v27 = v23[2];
      v26 = v23[3];
      v28 = v23[1];
      *(v0 + 1489) = *(v23 + 57);
      *(v0 + 1464) = v27;
      *(v0 + 1480) = v26;
      *(v0 + 1448) = v28;
      v30 = v25[9];
      v29 = v25[10];
      v31 = v25[8];
      *(v0 + 744) = *(v25 + 176);
      *(v0 + 712) = v30;
      *(v0 + 728) = v29;
      *(v0 + 696) = v31;
      v33 = v25[4];
      v32 = v25[5];
      v34 = v25[7];
      *(v0 + 664) = v25[6];
      *(v0 + 680) = v34;
      *(v0 + 632) = v33;
      *(v0 + 648) = v32;
      v35 = *v25;
      v36 = v25[1];
      v37 = v25[3];
      *(v0 + 600) = v25[2];
      *(v0 + 616) = v37;
      *(v0 + 568) = v35;
      *(v0 + 584) = v36;
      v38 = *v24;
      v39 = v24[2];
      *(v0 + 1240) = v24[1];
      *(v0 + 1256) = v39;
      *(v0 + 1224) = v38;
      v40 = v24[3];
      v41 = v24[4];
      v42 = v24[5];
      *(v0 + 1320) = *(v24 + 12);
      *(v0 + 1288) = v41;
      *(v0 + 1304) = v42;
      *(v0 + 1272) = v40;
      *(v0 + 1680) = v22;
      *(v0 + 1688) = v21;
      *(v0 + 1696) = v20;
      v43 = swift_task_alloc();
      *(v0 + 1856) = v43;
      *v43 = v0;
      v43[1] = closure #1 in closure #1 in MLS.EventSender.send(outgoingEvent:forGroup:retryBehavior:shouldPersistNewEvent:acknowledgementBlock:);
      v44 = v0 + 1680;
      v45 = (v0 + 1432);
      v46 = v0 + 568;
      v47 = v0 + 1224;
LABEL_10:

      MLS.EventSender.reenqueueAfterGroupVersion(retryBehavior:outgoingEvent:forGroup:futureGroupVersion:)(v45, v46, v47, v44);
      return;
    }

    v59 = *(v0 + 1816);
    if (*(v0 + 1824) | *(v0 + 1832) | v59)
    {
      if (v59 == 1 && *(v0 + 1824) == 0)
      {
        lazy protocol witness table accessor for type MLS.EventSenderError and conformance MLS.EventSenderError();
        swift_allocError();
        *v60 = 0;
        *(v60 + 8) = 0;
        *(v60 + 16) = 0;
        swift_willThrow();

        v61 = *(v0 + 8);

        v61();
        return;
      }

      if (v59 == 2 && *(v0 + 1824) == 0)
      {
        v62 = *(v0 + 1752);
        v63 = *(v62 + 4);
        v64 = __CFADD__(v63, 1);
        v65 = v63 + 1;
        if (v64)
        {
          __break(1u);
          return;
        }

        v66 = *(v0 + 1776);
        v67 = *(v0 + 1744);
        v68 = *(v62 + 6);
        *(v0 + 1512) = *v66;
        v70 = v66[2];
        v69 = v66[3];
        v71 = v66[1];
        *(v0 + 1569) = *(v66 + 57);
        *(v0 + 1544) = v70;
        *(v0 + 1560) = v69;
        *(v0 + 1528) = v71;
        v73 = v67[9];
        v72 = v67[10];
        v74 = v67[8];
        *(v0 + 928) = *(v67 + 176);
        *(v0 + 896) = v73;
        *(v0 + 912) = v72;
        *(v0 + 880) = v74;
        v76 = v67[4];
        v75 = v67[5];
        v77 = v67[7];
        *(v0 + 848) = v67[6];
        *(v0 + 864) = v77;
        *(v0 + 816) = v76;
        *(v0 + 832) = v75;
        v78 = *v67;
        v79 = v67[1];
        v80 = v67[3];
        *(v0 + 784) = v67[2];
        *(v0 + 800) = v80;
        *(v0 + 752) = v78;
        *(v0 + 768) = v79;
        v81 = *v62;
        v82 = v62[1];
        *(v0 + 1360) = v62[2];
        *(v0 + 1344) = v82;
        *(v0 + 1328) = v81;
        v83 = v62[3];
        v84 = v62[4];
        v85 = v62[5];
        *(v0 + 1424) = *(v62 + 12);
        *(v0 + 1408) = v85;
        *(v0 + 1392) = v84;
        *(v0 + 1376) = v83;
        *(v0 + 1704) = v68;
        *(v0 + 1712) = v68;
        *(v0 + 1720) = v65;
        v86 = swift_task_alloc();
        *(v0 + 1952) = v86;
        *v86 = v0;
        v86[1] = closure #1 in closure #1 in MLS.EventSender.send(outgoingEvent:forGroup:retryBehavior:shouldPersistNewEvent:acknowledgementBlock:);
        v46 = v0 + 752;
        v47 = v0 + 1328;
        v44 = v0 + 1704;
        v45 = (v0 + 1512);
        goto LABEL_10;
      }
    }

    v87 = *(v0 + 1752);
    v49 = specialized MLS.OutgoingEventType.identifier.getter();
    v51 = v88;
    *(v0 + 1872) = v88;
    v52 = specialized MLS.OutgoingEventType.storageIdentifier.getter();
    v54 = v89;
    *(v0 + 1880) = v89;
    v55 = *v87;
    v56 = v87[1];

    v57 = swift_task_alloc();
    *(v0 + 1888) = v57;
    *v57 = v0;
    v58 = closure #1 in closure #1 in MLS.EventSender.send(outgoingEvent:forGroup:retryBehavior:shouldPersistNewEvent:acknowledgementBlock:);
  }

  else
  {
    v48 = *(v0 + 1752);
    v49 = specialized MLS.OutgoingEventType.identifier.getter();
    v51 = v50;
    *(v0 + 1896) = v49;
    *(v0 + 1904) = v50;
    v52 = specialized MLS.OutgoingEventType.storageIdentifier.getter();
    v54 = v53;
    *(v0 + 1912) = v53;
    v55 = *v48;
    v56 = v48[1];

    v57 = swift_task_alloc();
    *(v0 + 1920) = v57;
    *v57 = v0;
    v58 = closure #1 in closure #1 in MLS.EventSender.send(outgoingEvent:forGroup:retryBehavior:shouldPersistNewEvent:acknowledgementBlock:);
  }

  v57[1] = v58;

  MLS.EventSender.completeEvent(identifier:storageIdentifier:groupIdentifier:)(v49, v51, v52, v54, v55, v56);
}

{
  if (!*(v0 + 193))
  {
    v29 = *(v0 + 1752);
    v30 = specialized MLS.OutgoingEventType.identifier.getter();
    v32 = v31;
    *(v0 + 1896) = v30;
    *(v0 + 1904) = v31;
    v33 = specialized MLS.OutgoingEventType.storageIdentifier.getter();
    v35 = v34;
    *(v0 + 1912) = v34;
    v36 = *v29;
    v37 = v29[1];

    v38 = swift_task_alloc();
    *(v0 + 1920) = v38;
    *v38 = v0;
    v39 = closure #1 in closure #1 in MLS.EventSender.send(outgoingEvent:forGroup:retryBehavior:shouldPersistNewEvent:acknowledgementBlock:);
LABEL_18:
    v38[1] = v39;

    MLS.EventSender.completeEvent(identifier:storageIdentifier:groupIdentifier:)(v30, v32, v33, v35, v36, v37);
    return;
  }

  if (*(v0 + 193) == 1)
  {
    v1 = *(v0 + 1832);
    v2 = *(v0 + 1824);
    v3 = *(v0 + 1816);
    v4 = *(v0 + 1776);
    v5 = *(v0 + 1752);
    v6 = *(v0 + 1744);
    *(v0 + 1432) = *v4;
    v8 = v4[2];
    v7 = v4[3];
    v9 = v4[1];
    *(v0 + 1489) = *(v4 + 57);
    *(v0 + 1464) = v8;
    *(v0 + 1480) = v7;
    *(v0 + 1448) = v9;
    v11 = v6[9];
    v10 = v6[10];
    v12 = v6[8];
    *(v0 + 744) = *(v6 + 176);
    *(v0 + 712) = v11;
    *(v0 + 728) = v10;
    *(v0 + 696) = v12;
    v14 = v6[4];
    v13 = v6[5];
    v15 = v6[7];
    *(v0 + 664) = v6[6];
    *(v0 + 680) = v15;
    *(v0 + 632) = v14;
    *(v0 + 648) = v13;
    v16 = *v6;
    v17 = v6[1];
    v18 = v6[3];
    *(v0 + 600) = v6[2];
    *(v0 + 616) = v18;
    *(v0 + 568) = v16;
    *(v0 + 584) = v17;
    v19 = *v5;
    v20 = v5[2];
    *(v0 + 1240) = v5[1];
    *(v0 + 1256) = v20;
    *(v0 + 1224) = v19;
    v21 = v5[3];
    v22 = v5[4];
    v23 = v5[5];
    *(v0 + 1320) = *(v5 + 12);
    *(v0 + 1288) = v22;
    *(v0 + 1304) = v23;
    *(v0 + 1272) = v21;
    *(v0 + 1680) = v3;
    *(v0 + 1688) = v2;
    *(v0 + 1696) = v1;
    v24 = swift_task_alloc();
    *(v0 + 1856) = v24;
    *v24 = v0;
    v24[1] = closure #1 in closure #1 in MLS.EventSender.send(outgoingEvent:forGroup:retryBehavior:shouldPersistNewEvent:acknowledgementBlock:);
    v25 = v0 + 1680;
    v26 = (v0 + 1432);
    v27 = v0 + 568;
    v28 = v0 + 1224;
LABEL_4:

    MLS.EventSender.reenqueueAfterGroupVersion(retryBehavior:outgoingEvent:forGroup:futureGroupVersion:)(v26, v27, v28, v25);
    return;
  }

  v40 = *(v0 + 1816);
  if (!(*(v0 + 1824) | *(v0 + 1832) | v40))
  {
LABEL_17:
    v67 = *(v0 + 1752);
    v30 = specialized MLS.OutgoingEventType.identifier.getter();
    v32 = v68;
    *(v0 + 1872) = v68;
    v33 = specialized MLS.OutgoingEventType.storageIdentifier.getter();
    v35 = v69;
    *(v0 + 1880) = v69;
    v36 = *v67;
    v37 = v67[1];

    v38 = swift_task_alloc();
    *(v0 + 1888) = v38;
    *v38 = v0;
    v39 = closure #1 in closure #1 in MLS.EventSender.send(outgoingEvent:forGroup:retryBehavior:shouldPersistNewEvent:acknowledgementBlock:);
    goto LABEL_18;
  }

  if (v40 != 1 || *(v0 + 1824) != 0)
  {
    if (v40 == 2 && *(v0 + 1824) == 0)
    {
      v42 = *(v0 + 1752);
      v43 = *(v42 + 4);
      v44 = __CFADD__(v43, 1);
      v45 = v43 + 1;
      if (v44)
      {
        __break(1u);
        return;
      }

      v46 = *(v0 + 1776);
      v47 = *(v0 + 1744);
      v48 = *(v42 + 6);
      *(v0 + 1512) = *v46;
      v50 = v46[2];
      v49 = v46[3];
      v51 = v46[1];
      *(v0 + 1569) = *(v46 + 57);
      *(v0 + 1544) = v50;
      *(v0 + 1560) = v49;
      *(v0 + 1528) = v51;
      v53 = v47[9];
      v52 = v47[10];
      v54 = v47[8];
      *(v0 + 928) = *(v47 + 176);
      *(v0 + 896) = v53;
      *(v0 + 912) = v52;
      *(v0 + 880) = v54;
      v56 = v47[4];
      v55 = v47[5];
      v57 = v47[7];
      *(v0 + 848) = v47[6];
      *(v0 + 864) = v57;
      *(v0 + 816) = v56;
      *(v0 + 832) = v55;
      v58 = *v47;
      v59 = v47[1];
      v60 = v47[3];
      *(v0 + 784) = v47[2];
      *(v0 + 800) = v60;
      *(v0 + 752) = v58;
      *(v0 + 768) = v59;
      v61 = *v42;
      v62 = v42[1];
      *(v0 + 1360) = v42[2];
      *(v0 + 1344) = v62;
      *(v0 + 1328) = v61;
      v63 = v42[3];
      v64 = v42[4];
      v65 = v42[5];
      *(v0 + 1424) = *(v42 + 12);
      *(v0 + 1408) = v65;
      *(v0 + 1392) = v64;
      *(v0 + 1376) = v63;
      *(v0 + 1704) = v48;
      *(v0 + 1712) = v48;
      *(v0 + 1720) = v45;
      v66 = swift_task_alloc();
      *(v0 + 1952) = v66;
      *v66 = v0;
      v66[1] = closure #1 in closure #1 in MLS.EventSender.send(outgoingEvent:forGroup:retryBehavior:shouldPersistNewEvent:acknowledgementBlock:);
      v27 = v0 + 752;
      v28 = v0 + 1328;
      v25 = v0 + 1704;
      v26 = (v0 + 1512);
      goto LABEL_4;
    }

    goto LABEL_17;
  }

  lazy protocol witness table accessor for type MLS.EventSenderError and conformance MLS.EventSenderError();
  swift_allocError();
  *v70 = 0;
  *(v70 + 8) = 0;
  *(v70 + 16) = 0;
  swift_willThrow();

  v71 = *(v0 + 8);

  v71();
}

{
  v32 = v0;
  v1 = *(v0 + 1824);
  if (v1 >> 60 == 15)
  {
    v2 = *(v0 + 1832);
    v3 = *(v0 + 1816);

    outlined consume of MLS.SendResult(v3, v1, v2, 0);

    **(v0 + 1728) = 0;
    v4 = *(v0 + 8);

    v4();
  }

  else
  {
    v5 = *(v0 + 1832);
    v6 = *(v0 + 1816);
    v7 = *(v0 + 1744);
    outlined copy of MLS.SendResult(v6, *(v0 + 1824), v5, 0);
    outlined init with copy of MLS.OutgoingEventState?(v7, v0 + 936, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
    outlined copy of MLS.SendResult(v6, v1, v5, 0);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    outlined destroy of NSObject?(v7, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
    outlined consume of MLS.SendResult(v6, v1, v5, 0);
    if (os_log_type_enabled(v8, v9))
    {
      v10 = *(v0 + 1904);
      v11 = *(v0 + 1896);
      v12 = *(v0 + 1832);
      v13 = *(v0 + 1824);
      v14 = *(v0 + 1816);
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v31 = v16;
      *v15 = 136315394;
      *(v15 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v10, &v31);
      *(v15 + 12) = 2080;
      outlined copy of Data?(v14, v13);
      v17 = Data.description.getter();
      v19 = v18;
      outlined consume of MLS.SendResult(v14, v13, v12, 0);
      v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v19, &v31);

      *(v15 + 14) = v20;
      _os_log_impl(&dword_264F1F000, v8, v9, "EventSender persisting groupClientContextBlob { identifier: %s, result: %s }", v15, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266755550](v16, -1, -1);
      MEMORY[0x266755550](v15, -1, -1);
    }

    v30 = *(v0 + 1816);
    v21 = *(v0 + 1784);
    v22 = *(v0 + 1752);
    v23 = *(v21 + 40);
    ObjectType = swift_getObjectType();
    v25 = swift_task_alloc();
    *(v0 + 1928) = v25;
    *(v25 + 16) = v21;
    *(v25 + 24) = v30;
    *(v25 + 40) = v22;
    v26 = swift_task_alloc();
    *(v0 + 1936) = v26;
    *v26 = v0;
    v26[1] = closure #1 in closure #1 in MLS.EventSender.send(outgoingEvent:forGroup:retryBehavior:shouldPersistNewEvent:acknowledgementBlock:);
    v27 = *(v0 + 1904);
    v28 = *(v0 + 1896);
    v29 = MEMORY[0x277D84F78] + 8;

    MLS.Persister.atomically<A>(with:do:)(v26, v28, v27, &async function pointer to partial apply for closure #1 in closure #1 in closure #1 in MLS.EventSender.send(outgoingEvent:forGroup:retryBehavior:shouldPersistNewEvent:acknowledgementBlock:), v25, ObjectType, v29, v23);
  }
}

uint64_t closure #1 in closure #1 in closure #1 in MLS.EventSender.send(outgoingEvent:forGroup:retryBehavior:shouldPersistNewEvent:acknowledgementBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[4] = a2;
  v5[5] = a3;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v6 = static MLSActor.shared;
  v5[8] = static MLSActor.shared;

  return MEMORY[0x2822009F8](closure #1 in closure #1 in closure #1 in MLS.EventSender.send(outgoingEvent:forGroup:retryBehavior:shouldPersistNewEvent:acknowledgementBlock:), v6, 0);
}

uint64_t closure #1 in closure #1 in closure #1 in MLS.EventSender.send(outgoingEvent:forGroup:retryBehavior:shouldPersistNewEvent:acknowledgementBlock:)()
{
  v1 = v0[7];
  v2 = v0[4];
  v3 = *(v2 + 40);
  ObjectType = swift_getObjectType();
  v5 = *v1;
  v6 = v1[1];
  v7 = *(v2 + direct field offset for MLS.EventSender.clientIdentifier + 8);
  v0[2] = *(v2 + direct field offset for MLS.EventSender.clientIdentifier);
  v0[3] = v7;
  v8 = *(v3 + 56);

  v13 = (v8 + *v8);
  v9 = swift_task_alloc();
  v0[9] = v9;
  *v9 = v0;
  v9[1] = closure #1 in closure #1 in closure #1 in MLS.EventSender.send(outgoingEvent:forGroup:retryBehavior:shouldPersistNewEvent:acknowledgementBlock:);
  v10 = v0[6];
  v11 = v0[5];

  return (v13)(v11, v10, v5, v6, v0 + 2, ObjectType, v3);
}

{
  v2 = *v1;
  v3 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v4 = *(v2 + 64);

    return MEMORY[0x2822009F8](closure #1 in XPCUtils.XPCClient.init(machServiceName:listenerEndpoint:), v4, 0);
  }

  else
  {
    v5 = *(v3 + 8);

    return v5();
  }
}

uint64_t closure #2 in closure #1 in MLS.EventSender.send(outgoingEvent:forGroup:retryBehavior:shouldPersistNewEvent:acknowledgementBlock:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[29] = a2;
  v3[30] = a3;
  v3[28] = a1;
  return MEMORY[0x2822009F8](closure #2 in closure #1 in MLS.EventSender.send(outgoingEvent:forGroup:retryBehavior:shouldPersistNewEvent:acknowledgementBlock:), 0, 0);
}

uint64_t closure #2 in closure #1 in MLS.EventSender.send(outgoingEvent:forGroup:retryBehavior:shouldPersistNewEvent:acknowledgementBlock:)()
{
  v24 = v0;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[31] = Strong;
  if (Strong)
  {
    v2 = v0[29];
    outlined init with copy of MLS.OutgoingEventState?(v2, (v0 + 2), &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    outlined destroy of NSObject?(v2, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v23 = v6;
      *v5 = 136315138;
      v7 = specialized MLS.OutgoingEventType.identifier.getter();
      v9 = v8;

      v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v9, &v23);

      *(v5 + 4) = v10;
      _os_log_impl(&dword_264F1F000, v3, v4, "EventSender failing event due to max retries { identifier: %s }", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v6);
      MEMORY[0x266755550](v6, -1, -1);
      MEMORY[0x266755550](v5, -1, -1);
    }

    v11 = v0[30];
    v12 = specialized MLS.OutgoingEventType.identifier.getter();
    v14 = v13;
    v0[32] = v13;
    v15 = specialized MLS.OutgoingEventType.storageIdentifier.getter();
    v17 = v16;
    v0[33] = v16;
    v18 = *v11;
    v19 = v11[1];

    v20 = swift_task_alloc();
    v0[34] = v20;
    *v20 = v0;
    v20[1] = closure #2 in closure #1 in MLS.EventSender.send(outgoingEvent:forGroup:retryBehavior:shouldPersistNewEvent:acknowledgementBlock:);

    return MLS.EventSender.completeEvent(identifier:storageIdentifier:groupIdentifier:)(v12, v14, v15, v17, v18, v19);
  }

  else
  {
    v22 = v0[1];

    return v22();
  }
}

{

  return MEMORY[0x2822009F8](closure #2 in closure #1 in MLS.EventSender.send(outgoingEvent:forGroup:retryBehavior:shouldPersistNewEvent:acknowledgementBlock:), 0, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t MLS.EventSender.reenqueueAfterGroupVersion(retryBehavior:outgoingEvent:forGroup:futureGroupVersion:)(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a1[3];
  *(v5 + 1624) = a1[2];
  *(v5 + 1640) = v6;
  *(v5 + 1649) = *(a1 + 57);
  v7 = a1[1];
  *(v5 + 1592) = *a1;
  *(v5 + 1608) = v7;
  v8 = *(a2 + 144);
  *(v5 + 328) = *(a2 + 128);
  *(v5 + 344) = v8;
  *(v5 + 360) = *(a2 + 160);
  v9 = *(a2 + 80);
  *(v5 + 264) = *(a2 + 64);
  *(v5 + 280) = v9;
  v10 = *(a2 + 112);
  *(v5 + 296) = *(a2 + 96);
  *(v5 + 312) = v10;
  v11 = *(a2 + 16);
  *(v5 + 200) = *a2;
  *(v5 + 216) = v11;
  v12 = *(a2 + 48);
  *(v5 + 232) = *(a2 + 32);
  *(v5 + 248) = v12;
  v13 = *(a3 + 32);
  *(v5 + 1536) = *(a3 + 48);
  v14 = *(a3 + 80);
  *(v5 + 1552) = *(a3 + 64);
  *(v5 + 1568) = v14;
  v15 = *(a3 + 16);
  *(v5 + 1488) = *a3;
  *(v5 + 1504) = v15;
  *(v5 + 2384) = v4;
  *(v5 + 376) = *(a2 + 176);
  *(v5 + 1584) = *(a3 + 96);
  *(v5 + 1520) = v13;
  *(v5 + 2392) = *a4;
  *(v5 + 380) = *(a4 + 8);
  *(v5 + 2400) = *(a4 + 16);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v16 = static MLSActor.shared;
  *(v5 + 2408) = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.EventSender.reenqueueAfterGroupVersion(retryBehavior:outgoingEvent:forGroup:futureGroupVersion:), v16, 0);
}

uint64_t MLS.EventSender.reenqueueAfterGroupVersion(retryBehavior:outgoingEvent:forGroup:futureGroupVersion:)()
{
  v92 = v0;
  v1 = *(v0 + 1592);
  v2 = v0 + 200;
  *(v0 + 2416) = v1;
  v3 = *(v0 + 1600);
  *(v0 + 2424) = v3;
  v4 = *(v0 + 1608);
  *(v0 + 2432) = v4;
  v5 = *(v0 + 1616);
  *(v0 + 2440) = v5;
  v6 = *(v0 + 1624);
  *(v0 + 2448) = v6;
  v7 = *(v0 + 1632);
  *(v0 + 2456) = v7;
  v8 = *(v0 + 1640);
  *(v0 + 2464) = v8;
  v9 = *(v0 + 1648);
  *(v0 + 2472) = v9;
  v10 = *(v0 + 1656);
  *(v0 + 2480) = v10;
  if (*(v0 + 1664))
  {
    if (*(v0 + 1664) == 1)
    {
      v82 = v6;
      v83 = v3;
      v84 = v1;
      v11 = *(v0 + 1488);
      *(v0 + 2584) = v11;
      v12 = *(v0 + 1496);
      *(v0 + 2592) = v12;
      v86 = MLS.EventSender.eventQueue(groupIdentifier:)(v11, v12);
      *(v0 + 2600) = v86;
      *(v0 + 2608) = direct field offset for MLS.EventSender.logger;
      outlined init with copy of MLS.OutgoingEventState?(v0 + 200, v0 + 752, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.default.getter();
      outlined destroy of NSObject?(v0 + 200, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
      if (os_log_type_enabled(v13, v14))
      {
        buf = swift_slowAlloc();
        v81 = swift_slowAlloc();
        v90 = v81;
        *buf = 136315138;
        v15 = specialized MLS.OutgoingEventType.identifier.getter();
        v80 = v14;
        v17 = v16;

        v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v17, &v90);

        *(buf + 4) = v18;
        _os_log_impl(&dword_264F1F000, v13, v80, "EventSender reenqueueing event at front behind self heal { identifier: %s }", buf, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v81);
        MEMORY[0x266755550](v81, -1, -1);
        MEMORY[0x266755550](buf, -1, -1);
      }

      else
      {
      }

      v50 = *(v0 + 2384);
      v88 = specialized MLS.OutgoingEventType.identifier.getter();
      v52 = v51;
      *(v0 + 2192) = v84;
      *(v0 + 2616) = v88;
      *(v0 + 2624) = v51;
      *(v0 + 2200) = v83;
      *(v0 + 2208) = v4;
      *(v0 + 2216) = v5;
      *(v0 + 2224) = v82;
      *(v0 + 2232) = v7;
      *(v0 + 2240) = v8;
      *(v0 + 2248) = v9;
      *(v0 + 2256) = v10;
      v53 = *(*v50 + 256);
      outlined init with copy of MLS.RetryAfterGroupVersionBehavior(v0 + 1592, v0 + 1672);

      v55 = v53(v54);
      v57 = v56;
      *(v0 + 2632) = v56;
      v58 = (*(*v50 + 232))();
      v60 = v59;
      *(v0 + 2640) = v59;
      v85 = (*(*v86 + 296) + **(*v86 + 296));
      v61 = swift_task_alloc();
      *(v0 + 2648) = v61;
      *v61 = v0;
      v61[1] = MLS.EventSender.reenqueueAfterGroupVersion(retryBehavior:outgoingEvent:forGroup:futureGroupVersion:);

      return v85(v88, v52, v0 + 2192, v55, v57, v58, v60);
    }

    else if (v4 | v3 | v1 | v5 | v6 | v7 | v8 | v9 | v10)
    {
      outlined init with copy of MLS.OutgoingEventState?(v0 + 200, v0 + 384, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
      v40 = Logger.logObject.getter();
      v41 = static os_log_type_t.default.getter();
      outlined destroy of NSObject?(v0 + 200, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        v90 = v43;
        *v42 = 136315138;
        v44 = specialized MLS.OutgoingEventType.identifier.getter();
        v46 = v45;

        v47 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v44, v46, &v90);

        *(v42 + 4) = v47;
        _os_log_impl(&dword_264F1F000, v40, v41, "EventSender completing retrying event immediately after receiving retry after epoch { identifier: %s }", v42, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v43);
        MEMORY[0x266755550](v43, -1, -1);
        MEMORY[0x266755550](v42, -1, -1);
      }

      lazy protocol witness table accessor for type MLS.EventSenderError and conformance MLS.EventSenderError();
      swift_allocError();
      *v48 = 1;
      *(v48 + 8) = 0;
      *(v48 + 16) = 0;
      swift_willThrow();
      v49 = *(v0 + 8);

      return v49();
    }

    else
    {
      outlined init with copy of MLS.OutgoingEventState?(v0 + 200, v0 + 568, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
      v62 = Logger.logObject.getter();
      v63 = static os_log_type_t.default.getter();
      outlined destroy of NSObject?(v0 + 200, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
      if (os_log_type_enabled(v62, v63))
      {
        v64 = swift_slowAlloc();
        v65 = swift_slowAlloc();
        v90 = v65;
        *v64 = 136315138;
        v66 = specialized MLS.OutgoingEventType.identifier.getter();
        v68 = v67;

        v69 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v66, v68, &v90);

        *(v64 + 4) = v69;
        _os_log_impl(&dword_264F1F000, v62, v63, "EventSender completing unretriable event after receiving retry after epoch { identifier: %s }", v64, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v65);
        MEMORY[0x266755550](v65, -1, -1);
        MEMORY[0x266755550](v64, -1, -1);
      }

      v70 = specialized MLS.OutgoingEventType.identifier.getter();
      v72 = v71;
      *(v0 + 2664) = v71;
      v73 = specialized MLS.OutgoingEventType.storageIdentifier.getter();
      v75 = v74;
      *(v0 + 2672) = v74;
      v76 = *(v0 + 1488);
      v77 = *(v0 + 1496);

      v78 = swift_task_alloc();
      *(v0 + 2680) = v78;
      *v78 = v0;
      v78[1] = MLS.EventSender.reenqueueAfterGroupVersion(retryBehavior:outgoingEvent:forGroup:futureGroupVersion:);

      return MLS.EventSender.completeEvent(identifier:storageIdentifier:groupIdentifier:)(v70, v72, v73, v75, v76, v77);
    }
  }

  else
  {
    v19 = v0 + 1488;
    *(v0 + 2488) = direct field offset for MLS.EventSender.logger;
    outlined init with copy of MLS.OutgoingEventState?(v0 + 200, v0 + 1304, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();
    outlined destroy of NSObject?(v0 + 200, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
    if (os_log_type_enabled(v20, v21))
    {
      v22 = *(v0 + 2400);
      v23 = *(v0 + 380);
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v89 = v25;
      *v24 = 136315394;
      v26 = specialized MLS.OutgoingEventType.identifier.getter();
      v28 = v27;

      v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v28, &v89);

      *(v24 + 4) = v29;
      *(v24 + 12) = 2080;
      *(v0 + 196) = v23;
      v90 = dispatch thunk of CustomStringConvertible.description.getter();
      v91 = v30;
      MEMORY[0x2667545A0](46, 0xE100000000000000);
      *(v0 + 2376) = v22;
      v31 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x2667545A0](v31);

      v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v90, v91, &v89);

      *(v24 + 14) = v32;
      v2 = v0 + 200;
      v19 = v0 + 1488;
      _os_log_impl(&dword_264F1F000, v20, v21, "EventSender persisting epoch to retry { identifier: %s, futureGroupVersion: %s }", v24, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266755550](v25, -1, -1);
      MEMORY[0x266755550](v24, -1, -1);
    }

    v33 = *(v0 + 2384);
    v34 = *(v33 + 48);
    *(v0 + 2496) = specialized MLS.OutgoingEventType.identifier.getter();
    *(v0 + 2504) = v35;
    v36 = swift_task_alloc();
    *(v0 + 2512) = v36;
    v36[2] = v33;
    v36[3] = v2;
    v36[4] = v19;
    v37 = *(*v34 + 152);

    v87 = (v37 + *v37);
    v38 = swift_task_alloc();
    *(v0 + 2520) = v38;
    *v38 = v0;
    v38[1] = MLS.EventSender.reenqueueAfterGroupVersion(retryBehavior:outgoingEvent:forGroup:futureGroupVersion:);

    return v87();
  }
}

{
  v2 = *v1;
  *(*v1 + 2528) = v0;

  if (v0)
  {
    v3 = *(v2 + 2408);

    v4 = MLS.EventSender.reenqueueAfterGroupVersion(retryBehavior:outgoingEvent:forGroup:futureGroupVersion:);
  }

  else
  {
    v3 = *(v2 + 2408);

    v4 = MLS.EventSender.reenqueueAfterGroupVersion(retryBehavior:outgoingEvent:forGroup:futureGroupVersion:);
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{
  v31 = v0;
  v1 = (v0 + 1976);
  v2 = *(v0 + 1488);
  *(v0 + 2536) = v2;
  v3 = *(v0 + 1496);
  *(v0 + 2544) = v3;
  v4 = MLS.EventSender.eventQueue(groupIdentifier:)(v2, v3);
  *(v0 + 2552) = v4;
  outlined init with copy of MLS.OutgoingEventState?(v0 + 200, v0 + 1120, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  outlined destroy of NSObject?(v0 + 200, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 2504);
    v8 = *(v0 + 2496);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v30 = v10;
    *v9 = 136315138;
    *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v7, &v30);
    _os_log_impl(&dword_264F1F000, v5, v6, "EventSender reenqueueing event at front { identifier: %s }", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x266755550](v10, -1, -1);
    MEMORY[0x266755550](v9, -1, -1);
  }

  v11 = *(v0 + 2480);
  v12 = *(v0 + 2400);
  v13 = *(v0 + 380);
  v14 = *(v0 + 2392);
  v15 = *(v0 + 2384);
  v16 = *(v0 + 2432);
  *v1 = *(v0 + 2416);
  *(v0 + 1992) = v16;
  v17 = *(v0 + 2464);
  *(v0 + 2008) = *(v0 + 2448);
  *(v0 + 2024) = v17;
  *(v0 + 2040) = v11;
  *(v0 + 2336) = v14;
  *(v0 + 2344) = v13;
  *(v0 + 2352) = v12;
  v18 = *(*v15 + 232);
  *(v0 + 1809) = *(v0 + 1649);
  v19 = *(v0 + 1640);
  *(v0 + 1784) = *(v0 + 1624);
  *(v0 + 1800) = v19;
  v20 = *(v0 + 1608);
  *(v0 + 1752) = *(v0 + 1592);
  *(v0 + 1768) = v20;
  v21 = outlined init with copy of MLS.OutgoingEventState?(v0 + 1752, v0 + 2048, &_s15SecureMessaging3MLSO18OutgoingEventStateV05eventF0_tMd, &_s15SecureMessaging3MLSO18OutgoingEventStateV05eventF0_tMR);
  v22 = v18(v21);
  v24 = v23;
  *(v0 + 2560) = v23;
  v29 = (*(*v4 + 288) + **(*v4 + 288));
  v25 = swift_task_alloc();
  *(v0 + 2568) = v25;
  *v25 = v0;
  v25[1] = MLS.EventSender.reenqueueAfterGroupVersion(retryBehavior:outgoingEvent:forGroup:futureGroupVersion:);
  v26 = *(v0 + 2504);
  v27 = *(v0 + 2496);

  return v29(v27, v26, v1, v0 + 2336, v22, v24);
}

{
  v2 = *v1;
  v3 = (*v1 + 1976);
  *(*v1 + 2576) = v0;

  if (v0)
  {
    v4 = *(v2 + 2408);
    *(v2 + 2120) = *v3;
    v6 = *(v2 + 2008);
    v5 = *(v2 + 2024);
    v7 = *(v2 + 1992);
    *(v2 + 2184) = *(v2 + 2040);
    *(v2 + 2152) = v6;
    *(v2 + 2168) = v5;
    *(v2 + 2136) = v7;
    outlined destroy of NSObject?(v2 + 2120, &_s15SecureMessaging3MLSO18OutgoingEventStateVSgMd, &_s15SecureMessaging3MLSO18OutgoingEventStateVSgMR);

    v8 = MLS.EventSender.reenqueueAfterGroupVersion(retryBehavior:outgoingEvent:forGroup:futureGroupVersion:);
    v9 = v4;
  }

  else
  {
    v10 = *(v2 + 2408);

    *(v2 + 2264) = *v3;
    v11 = *(v2 + 1992);
    v12 = *(v2 + 2008);
    v13 = *(v2 + 2024);
    *(v2 + 2328) = *(v2 + 2040);
    *(v2 + 2296) = v12;
    *(v2 + 2312) = v13;
    *(v2 + 2280) = v11;
    outlined destroy of NSObject?(v2 + 2264, &_s15SecureMessaging3MLSO18OutgoingEventStateVSgMd, &_s15SecureMessaging3MLSO18OutgoingEventStateVSgMR);
    v8 = MLS.EventSender.reenqueueAfterGroupVersion(retryBehavior:outgoingEvent:forGroup:futureGroupVersion:);
    v9 = v10;
  }

  return MEMORY[0x2822009F8](v8, v9, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

{
  v2 = *v1;
  v3 = (*v1 + 2192);
  *(*v1 + 2656) = v0;

  if (v0)
  {
    v4 = *(v2 + 2408);

    *(v2 + 1904) = *v3;
    v5 = *(v2 + 2208);
    v6 = *(v2 + 2224);
    v7 = *(v2 + 2240);
    *(v2 + 1968) = *(v2 + 2256);
    *(v2 + 1952) = v7;
    *(v2 + 1936) = v6;
    *(v2 + 1920) = v5;
    outlined destroy of NSObject?(v2 + 1904, &_s15SecureMessaging3MLSO18OutgoingEventStateVSgMd, &_s15SecureMessaging3MLSO18OutgoingEventStateVSgMR);
    v8 = MLS.EventSender.reenqueueAfterGroupVersion(retryBehavior:outgoingEvent:forGroup:futureGroupVersion:);
    v9 = v4;
  }

  else
  {
    v10 = *(v2 + 2408);

    *(v2 + 1832) = *v3;
    v11 = *(v2 + 2208);
    v12 = *(v2 + 2224);
    v13 = *(v2 + 2240);
    *(v2 + 1896) = *(v2 + 2256);
    *(v2 + 1864) = v12;
    *(v2 + 1880) = v13;
    *(v2 + 1848) = v11;
    outlined destroy of NSObject?(v2 + 1832, &_s15SecureMessaging3MLSO18OutgoingEventStateVSgMd, &_s15SecureMessaging3MLSO18OutgoingEventStateVSgMR);
    v8 = MLS.EventSender.reenqueueAfterGroupVersion(retryBehavior:outgoingEvent:forGroup:futureGroupVersion:);
    v9 = v10;
  }

  return MEMORY[0x2822009F8](v8, v9, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

{
  return (*(v0 + 8))();
}

{
  v22 = v0;
  v1 = *(v0 + 2576);
  *(v0 + 2368) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if (!swift_dynamicCast() || ((v3 = *(v0 + 194), v3 <= 3) ? (v4 = v3 == 2) : (v4 = 1), v4))
  {

    v20 = *(v0 + 8);

    return v20();
  }

  else
  {

    outlined init with copy of MLS.OutgoingEventState?(v0 + 200, v0 + 936, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    outlined destroy of NSObject?(v0 + 200, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
    if (os_log_type_enabled(v5, v6))
    {
      v7 = *(v0 + 2504);
      v8 = *(v0 + 2496);
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v21 = v10;
      *v9 = 136315138;
      *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v7, &v21);
      _os_log_impl(&dword_264F1F000, v5, v6, "EventSender hit fatal error retrying { identifier: %s }", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v10);
      MEMORY[0x266755550](v10, -1, -1);
      MEMORY[0x266755550](v9, -1, -1);
    }

    v11 = specialized MLS.OutgoingEventType.storageIdentifier.getter();
    v13 = v12;
    *(v0 + 2688) = v12;

    v14 = swift_task_alloc();
    *(v0 + 2696) = v14;
    *v14 = v0;
    v14[1] = MLS.EventSender.reenqueueAfterGroupVersion(retryBehavior:outgoingEvent:forGroup:futureGroupVersion:);
    v15 = *(v0 + 2544);
    v16 = *(v0 + 2536);
    v17 = *(v0 + 2504);
    v18 = *(v0 + 2496);

    return MLS.EventSender.completeEvent(identifier:storageIdentifier:groupIdentifier:)(v18, v17, v11, v13, v16, v15);
  }
}

{
  v1 = *(*v0 + 2408);

  return MEMORY[0x2822009F8](MLS.EventSender.reenqueueAfterGroupVersion(retryBehavior:outgoingEvent:forGroup:futureGroupVersion:), v1, 0);
}

{
  v22 = v0;
  v1 = *(v0 + 2656);
  *(v0 + 2360) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if (!swift_dynamicCast() || ((v3 = *(v0 + 193), v3 <= 3) ? (v4 = v3 == 2) : (v4 = 1), v4))
  {

    v20 = *(v0 + 8);

    return v20();
  }

  else
  {

    outlined init with copy of MLS.OutgoingEventState?(v0 + 200, v0 + 16, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    outlined destroy of NSObject?(v0 + 200, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
    if (os_log_type_enabled(v5, v6))
    {
      v7 = *(v0 + 2624);
      v8 = *(v0 + 2616);
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v21 = v10;
      *v9 = 136315138;
      *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v7, &v21);
      _os_log_impl(&dword_264F1F000, v5, v6, "EventSender hit fatal error retrying { identifier: %s }", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v10);
      MEMORY[0x266755550](v10, -1, -1);
      MEMORY[0x266755550](v9, -1, -1);
    }

    v11 = specialized MLS.OutgoingEventType.storageIdentifier.getter();
    v13 = v12;
    *(v0 + 2704) = v12;

    v14 = swift_task_alloc();
    *(v0 + 2712) = v14;
    *v14 = v0;
    v14[1] = MLS.EventSender.reenqueueAfterGroupVersion(retryBehavior:outgoingEvent:forGroup:futureGroupVersion:);
    v15 = *(v0 + 2624);
    v16 = *(v0 + 2616);
    v17 = *(v0 + 2592);
    v18 = *(v0 + 2584);

    return MLS.EventSender.completeEvent(identifier:storageIdentifier:groupIdentifier:)(v16, v15, v11, v13, v18, v17);
  }
}

{
  v1 = *(*v0 + 2408);

  return MEMORY[0x2822009F8](MLS.EventSender.reenqueueAfterGroupVersion(retryBehavior:outgoingEvent:forGroup:futureGroupVersion:), v1, 0);
}

uint64_t closure #1 in MLS.EventSender.reenqueueAfterGroupVersion(retryBehavior:outgoingEvent:forGroup:futureGroupVersion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[146] = a4;
  v4[145] = a3;
  v4[144] = a2;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v5 = static MLSActor.shared;
  v4[147] = static MLSActor.shared;

  return MEMORY[0x2822009F8](closure #1 in MLS.EventSender.reenqueueAfterGroupVersion(retryBehavior:outgoingEvent:forGroup:futureGroupVersion:), v5, 0);
}

uint64_t closure #1 in MLS.EventSender.reenqueueAfterGroupVersion(retryBehavior:outgoingEvent:forGroup:futureGroupVersion:)()
{
  v1 = v0[146];
  v2 = v0[144];
  v3 = *(v2 + 40);
  ObjectType = swift_getObjectType();
  v0[2] = specialized MLS.OutgoingEventType.storageIdentifier.getter();
  v0[3] = v5;
  _s15SecureMessaging3MLSO19OutgoingEventUpdateOWOi1_((v0 + 2));
  memcpy(v0 + 37, v0 + 2, 0x118uLL);
  v6 = *v1;
  v7 = v1[1];
  v8 = *(v2 + direct field offset for MLS.EventSender.clientIdentifier);
  v9 = *(v2 + direct field offset for MLS.EventSender.clientIdentifier + 8);
  v0[142] = v8;
  v0[143] = v9;
  v10 = *(v3 + 112);

  v13 = (v10 + *v10);
  v11 = swift_task_alloc();
  v0[148] = v11;
  *v11 = v0;
  v11[1] = closure #1 in MLS.EventSender.reenqueueAfterGroupVersion(retryBehavior:outgoingEvent:forGroup:futureGroupVersion:);

  return (v13)(v0 + 37, v6, v7, v0 + 142, ObjectType, v3);
}

{
  v2 = *v1;
  v2[149] = v0;

  if (v0)
  {
    v3 = v2[147];

    memcpy(v2 + 72, v2 + 37, 0x118uLL);
    outlined destroy of MLS.OutgoingEventUpdate((v2 + 72));

    return MEMORY[0x2822009F8](closure #1 in MLS.EventSender.reenqueueAfterGroupVersion(retryBehavior:outgoingEvent:forGroup:futureGroupVersion:), v3, 0);
  }

  else
  {

    memcpy(v2 + 107, v2 + 37, 0x118uLL);
    outlined destroy of MLS.OutgoingEventUpdate((v2 + 107));
    v4 = v2[1];

    return v4();
  }
}

{
  return (*(v0 + 8))();
}

uint64_t MLS.EventSender.send(incomingEvent:forGroup:shouldPersistNewEvent:isReflectionEvent:)(uint64_t a1, uint64_t a2, char a3, char a4)
{
  *(v5 + 760) = v4;
  *(v5 + 322) = a4;
  *(v5 + 321) = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  *(v5 + 768) = swift_task_alloc();
  v8 = *(a1 + 80);
  *(v5 + 288) = *(a1 + 64);
  *(v5 + 304) = v8;
  *(v5 + 320) = *(a1 + 96);
  v9 = *(a1 + 16);
  *(v5 + 224) = *a1;
  *(v5 + 240) = v9;
  v10 = *(a1 + 48);
  *(v5 + 256) = *(a1 + 32);
  *(v5 + 272) = v10;
  v11 = *(a2 + 16);
  *(v5 + 16) = *a2;
  *(v5 + 32) = v11;
  v12 = *(a2 + 32);
  v13 = *(a2 + 48);
  v14 = *(a2 + 64);
  v15 = *(a2 + 80);
  *(v5 + 112) = *(a2 + 96);
  *(v5 + 80) = v14;
  *(v5 + 96) = v15;
  *(v5 + 48) = v12;
  *(v5 + 64) = v13;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v16 = static MLSActor.shared;
  *(v5 + 776) = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.EventSender.send(incomingEvent:forGroup:shouldPersistNewEvent:isReflectionEvent:), v16, 0);
}

uint64_t MLS.EventSender.send(incomingEvent:forGroup:shouldPersistNewEvent:isReflectionEvent:)()
{
  v45 = v0;
  outlined init with copy of MLS.OutgoingEventState?(v0 + 224, v0 + 328, &_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  outlined destroy of NSObject?(v0 + 224, &_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v44 = v4;
    *v3 = 136315138;
    v5 = specialized MLS.IncomingEventType.identifier.getter();
    v7 = v6;

    v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v7, &v44);

    *(v3 + 4) = v8;
    _os_log_impl(&dword_264F1F000, v1, v2, "EventSender told to send incoming event { identifier: %s }", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v4);
    MEMORY[0x266755550](v4, -1, -1);
    MEMORY[0x266755550](v3, -1, -1);
  }

  if (*(v0 + 321) == 1)
  {
    outlined init with copy of MLS.OutgoingEventState?(v0 + 224, v0 + 536, &_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    outlined destroy of NSObject?(v0 + 224, &_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v44 = v12;
      *v11 = 136315138;
      v13 = specialized MLS.IncomingEventType.identifier.getter();
      v15 = v14;

      v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v15, &v44);

      *(v11 + 4) = v16;
      _os_log_impl(&dword_264F1F000, v9, v10, "EventSender persisted incoming event { identifier: %s }", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v12);
      MEMORY[0x266755550](v12, -1, -1);
      MEMORY[0x266755550](v11, -1, -1);
    }

    v17 = *(v0 + 760);
    v18 = *(v17 + 40);
    ObjectType = swift_getObjectType();
    v20 = *(v0 + 304);
    *(v0 + 704) = *(v0 + 288);
    *(v0 + 720) = v20;
    *(v0 + 736) = *(v0 + 320);
    v21 = *(v0 + 240);
    *(v0 + 640) = *(v0 + 224);
    *(v0 + 656) = v21;
    v22 = *(v0 + 272);
    *(v0 + 672) = *(v0 + 256);
    *(v0 + 688) = v22;
    v23 = *(v0 + 16);
    v24 = *(v0 + 24);
    v25 = *(v17 + direct field offset for MLS.EventSender.clientIdentifier + 8);
    *(v0 + 744) = *(v17 + direct field offset for MLS.EventSender.clientIdentifier);
    *(v0 + 752) = v25;
    v26 = *(v18 + 120);

    v43 = (v26 + *v26);
    v27 = swift_task_alloc();
    *(v0 + 784) = v27;
    *v27 = v0;
    v27[1] = MLS.EventSender.send(incomingEvent:forGroup:shouldPersistNewEvent:isReflectionEvent:);

    return v43(v0 + 640, v23, v24, v0 + 744, ObjectType, v18);
  }

  else
  {
    v29 = *(v0 + 776);
    v30 = *(v0 + 768);
    v31 = *(v0 + 760);
    v32 = *(v0 + 322);
    v33 = type metadata accessor for TaskPriority();
    (*(*(v33 - 8) + 56))(v30, 1, 1, v33);
    v34 = lazy protocol witness table accessor for type MLSActor and conformance MLSActor();
    v35 = swift_allocObject();
    v36 = *(v0 + 256);
    *(v35 + 88) = *(v0 + 272);
    v37 = *(v0 + 304);
    *(v35 + 104) = *(v0 + 288);
    *(v35 + 120) = v37;
    v38 = *(v0 + 240);
    *(v35 + 40) = *(v0 + 224);
    *(v35 + 16) = v29;
    *(v35 + 24) = v34;
    *(v35 + 32) = v31;
    *(v35 + 136) = *(v0 + 320);
    *(v35 + 56) = v38;
    *(v35 + 72) = v36;
    v39 = *(v0 + 96);
    *(v35 + 208) = *(v0 + 80);
    *(v35 + 224) = v39;
    *(v35 + 240) = *(v0 + 112);
    v40 = *(v0 + 32);
    *(v35 + 144) = *(v0 + 16);
    *(v35 + 160) = v40;
    v41 = *(v0 + 64);
    *(v35 + 176) = *(v0 + 48);
    *(v35 + 192) = v41;
    *(v35 + 248) = v32;
    outlined init with copy of MLS.OutgoingEventState?(v0 + 224, v0 + 432, &_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);

    outlined init with copy of MLS.Group(v0 + 16, v0 + 120);

    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v30, &async function pointer to partial apply for closure #1 in MLS.EventSender.send(incomingEvent:forGroup:shouldPersistNewEvent:isReflectionEvent:), v35);

    v42 = *(v0 + 8);

    return v42();
  }
}

{
  v2 = *v1;
  *(*v1 + 792) = v0;

  v3 = *(v2 + 776);
  if (v0)
  {
    v4 = MLS.EventSender.send(incomingEvent:forGroup:shouldPersistNewEvent:isReflectionEvent:);
  }

  else
  {
    v4 = MLS.EventSender.send(incomingEvent:forGroup:shouldPersistNewEvent:isReflectionEvent:);
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{
  v1 = *(v0 + 776);
  v2 = *(v0 + 768);
  v3 = *(v0 + 760);
  v4 = *(v0 + 322);
  v5 = type metadata accessor for TaskPriority();
  (*(*(v5 - 8) + 56))(v2, 1, 1, v5);
  v6 = lazy protocol witness table accessor for type MLSActor and conformance MLSActor();
  v7 = swift_allocObject();
  v8 = *(v0 + 256);
  *(v7 + 88) = *(v0 + 272);
  v9 = *(v0 + 304);
  *(v7 + 104) = *(v0 + 288);
  *(v7 + 120) = v9;
  v10 = *(v0 + 240);
  *(v7 + 40) = *(v0 + 224);
  *(v7 + 16) = v1;
  *(v7 + 24) = v6;
  *(v7 + 32) = v3;
  *(v7 + 136) = *(v0 + 320);
  *(v7 + 56) = v10;
  *(v7 + 72) = v8;
  v11 = *(v0 + 96);
  *(v7 + 208) = *(v0 + 80);
  *(v7 + 224) = v11;
  *(v7 + 240) = *(v0 + 112);
  v12 = *(v0 + 32);
  *(v7 + 144) = *(v0 + 16);
  *(v7 + 160) = v12;
  v13 = *(v0 + 64);
  *(v7 + 176) = *(v0 + 48);
  *(v7 + 192) = v13;
  *(v7 + 248) = v4;
  outlined init with copy of MLS.OutgoingEventState?(v0 + 224, v0 + 432, &_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);

  outlined init with copy of MLS.Group(v0 + 16, v0 + 120);

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v2, &async function pointer to partial apply for closure #1 in MLS.EventSender.send(incomingEvent:forGroup:shouldPersistNewEvent:isReflectionEvent:), v7);

  v14 = *(v0 + 8);

  return v14();
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t closure #1 in MLS.EventSender.send(incomingEvent:forGroup:shouldPersistNewEvent:isReflectionEvent:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, char a7)
{
  *(v7 + 322) = a7;
  *(v7 + 560) = a6;
  *(v7 + 552) = a5;
  *(v7 + 544) = a4;
  *(v7 + 568) = *a4;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v8 = static MLSActor.shared;
  *(v7 + 576) = static MLSActor.shared;

  return MEMORY[0x2822009F8](closure #1 in MLS.EventSender.send(incomingEvent:forGroup:shouldPersistNewEvent:isReflectionEvent:), v8, 0);
}

uint64_t closure #1 in MLS.EventSender.send(incomingEvent:forGroup:shouldPersistNewEvent:isReflectionEvent:)()
{
  v31 = v0;
  v1 = v0[69];
  v0[73] = direct field offset for MLS.EventSender.logger;
  outlined init with copy of MLS.OutgoingEventState?(v1, (v0 + 28), &_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  outlined destroy of NSObject?(v1, &_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v30 = v5;
    *v4 = 136315138;
    v6 = specialized MLS.IncomingEventType.identifier.getter();
    v8 = v7;

    v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v8, &v30);

    *(v4 + 4) = v9;
    _os_log_impl(&dword_264F1F000, v2, v3, "EventSender on MLS actor { identifier: %s }", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    MEMORY[0x266755550](v5, -1, -1);
    MEMORY[0x266755550](v4, -1, -1);
  }

  v10 = v0[71];
  v11 = v0[70];
  v12 = v0[69];
  v13 = specialized MLS.IncomingEventType.identifier.getter();
  v15 = v14;
  v0[74] = v13;
  v0[75] = v14;
  v16 = swift_allocObject();
  swift_weakInit();
  v17 = swift_allocObject();
  v0[76] = v17;
  *(v17 + 16) = *(v10 + 80);
  *(v17 + 24) = *(v10 + 88);
  *(v17 + 40) = *(v10 + 104);
  *(v17 + 48) = v16;
  v19 = *(v12 + 16);
  v18 = *(v12 + 32);
  *(v17 + 56) = *v12;
  *(v17 + 72) = v19;
  *(v17 + 88) = v18;
  v21 = *(v12 + 64);
  v20 = *(v12 + 80);
  v22 = *(v12 + 96);
  *(v17 + 104) = *(v12 + 48);
  *(v17 + 152) = v22;
  *(v17 + 136) = v20;
  *(v17 + 120) = v21;
  v24 = *(v11 + 64);
  v23 = *(v11 + 80);
  v25 = *(v11 + 48);
  *(v17 + 256) = *(v11 + 96);
  *(v17 + 224) = v24;
  *(v17 + 240) = v23;
  *(v17 + 208) = v25;
  v26 = *v11;
  v27 = *(v11 + 32);
  *(v17 + 176) = *(v11 + 16);
  *(v17 + 192) = v27;
  *(v17 + 160) = v26;
  outlined init with copy of MLS.OutgoingEventState?(v12, (v0 + 41), &_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);

  outlined init with copy of MLS.Group(v11, (v0 + 2));
  v28 = swift_task_alloc();
  v0[77] = v28;
  *v28 = v0;
  v28[1] = closure #1 in MLS.EventSender.send(incomingEvent:forGroup:shouldPersistNewEvent:isReflectionEvent:);
  v33 = MEMORY[0x277D84F78] + 8;

  return MLS.EventSender.performWithRetry<A>(identifier:retryPolicy:work:failureBlock:)(v0 + 321, v13, v15, 0, &async function pointer to partial apply for closure #1 in closure #1 in MLS.EventSender.send(incomingEvent:forGroup:shouldPersistNewEvent:isReflectionEvent:), v17, 0, 0);
}

{
  v1 = *(*v0 + 576);

  return MEMORY[0x2822009F8](closure #1 in MLS.EventSender.send(incomingEvent:forGroup:shouldPersistNewEvent:isReflectionEvent:), v1, 0);
}

{
  v25 = v0;
  v1 = *(v0 + 560);
  v2 = *(v0 + 552);
  outlined init with copy of MLS.OutgoingEventState?(v2, v0 + 432, &_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
  outlined init with copy of MLS.Group(v1, v0 + 120);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  outlined destroy of NSObject?(v2, &_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
  outlined destroy of MLS.Group(v1);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 600);
    v6 = *(v0 + 592);
    v7 = *(v0 + 322);
    v8 = *(v0 + 560);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v24 = v10;
    *v9 = 136315650;
    *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v5, &v24);
    *(v9 + 12) = 2080;
    v11 = *(v8 + 32);
    *(v0 + 324) = *(v8 + 24);
    *&v22 = dispatch thunk of CustomStringConvertible.description.getter();
    *(&v22 + 1) = v12;
    MEMORY[0x2667545A0](46, 0xE100000000000000);
    *(v0 + 536) = v11;
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2667545A0](v13);

    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, *(&v22 + 1), &v24);

    *(v9 + 14) = v14;
    *(v9 + 22) = 1024;
    *(v9 + 24) = v7;
    _os_log_impl(&dword_264F1F000, v3, v4, "EventSender acknowledging epoch advancement { identifier: %s, version: %s, isReflectionEvent: %{BOOL}d }", v9, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x266755550](v10, -1, -1);
    MEMORY[0x266755550](v9, -1, -1);
  }

  v15 = *(v0 + 600);
  v16 = *(v0 + 592);
  v17 = *(v0 + 322);
  v18 = *(v0 + 560);
  v19 = MLS.EventSender.eventQueue(groupIdentifier:)(*v18, *(v18 + 8));
  v22 = *(v18 + 16);
  v23 = *(v18 + 32);
  (*(*v19 + 328))(&v22, v16, v15, v17);

  v20 = *(v0 + 8);

  return v20();
}

uint64_t closure #1 in closure #1 in MLS.EventSender.send(incomingEvent:forGroup:shouldPersistNewEvent:isReflectionEvent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[103] = a8;
  v8[102] = a7;
  v8[101] = a6;
  v8[100] = a5;
  v8[99] = a4;
  v8[98] = a3;
  v8[97] = a2;
  v8[96] = a1;
  return MEMORY[0x2822009F8](closure #1 in closure #1 in MLS.EventSender.send(incomingEvent:forGroup:shouldPersistNewEvent:isReflectionEvent:), 0, 0);
}

uint64_t closure #1 in closure #1 in MLS.EventSender.send(incomingEvent:forGroup:shouldPersistNewEvent:isReflectionEvent:)()
{
  v31 = v0;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 832) = Strong;
  if (Strong)
  {
    v2 = Strong;
    v3 = *(v0 + 784);
    *(v0 + 840) = direct field offset for MLS.EventSender.logger;
    outlined init with copy of MLS.OutgoingEventState?(v3, v0 + 224, &_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    outlined destroy of NSObject?(v3, &_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v30 = v7;
      *v6 = 136315138;
      v8 = specialized MLS.IncomingEventType.identifier.getter();
      v10 = v9;

      v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v10, &v30);

      *(v6 + 4) = v11;
      _os_log_impl(&dword_264F1F000, v4, v5, "EventSender sending event { identifier: %s }", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v7);
      MEMORY[0x266755550](v7, -1, -1);
      MEMORY[0x266755550](v6, -1, -1);
    }

    v12 = *(v0 + 792);
    v13 = *(v0 + 784);
    v14 = *(v2 + 24);
    ObjectType = swift_getObjectType();
    v16 = *v13;
    v17 = v13[2];
    *(v0 + 344) = v13[1];
    *(v0 + 360) = v17;
    *(v0 + 328) = v16;
    v18 = v13[3];
    v19 = v13[4];
    v20 = v13[5];
    *(v0 + 424) = *(v13 + 96);
    *(v0 + 392) = v19;
    *(v0 + 408) = v20;
    *(v0 + 376) = v18;
    v22 = v12[4];
    v21 = v12[5];
    v23 = v12[3];
    *(v0 + 112) = *(v12 + 12);
    *(v0 + 80) = v22;
    *(v0 + 96) = v21;
    *(v0 + 64) = v23;
    v24 = v12[2];
    v25 = *v12;
    *(v0 + 32) = v12[1];
    *(v0 + 48) = v24;
    *(v0 + 16) = v25;
    v29 = (*(v14 + 16) + **(v14 + 16));
    v26 = swift_task_alloc();
    *(v0 + 848) = v26;
    *v26 = v0;
    v26[1] = closure #1 in closure #1 in MLS.EventSender.send(incomingEvent:forGroup:shouldPersistNewEvent:isReflectionEvent:);

    return v29(v0 + 321, v0 + 328, v0 + 16, ObjectType, v14);
  }

  else
  {
    **(v0 + 768) = 0;
    v28 = *(v0 + 8);

    return v28();
  }
}

{
  *(*v1 + 856) = v0;

  if (v0)
  {
    v2 = closure #1 in closure #1 in MLS.EventSender.send(incomingEvent:forGroup:shouldPersistNewEvent:isReflectionEvent:);
  }

  else
  {
    v2 = closure #1 in closure #1 in MLS.EventSender.send(incomingEvent:forGroup:shouldPersistNewEvent:isReflectionEvent:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v49 = v0;
  v1 = *(v0 + 784);
  v2 = *(v0 + 321);
  outlined init with copy of MLS.OutgoingEventState?(v1, v0 + 432, &_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  outlined destroy of NSObject?(v1, &_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v48 = v6;
    *v5 = 136315394;
    v7 = specialized MLS.IncomingEventType.identifier.getter();
    v9 = v8;

    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v9, &v48);

    *(v5 + 4) = v10;
    *(v5 + 12) = 2080;
    v11 = 0xEF79616C65447265;
    v12 = 0x7466417972746552;
    if (v2 != 1)
    {
      v12 = 0x746552746F4E6F44;
      v11 = 0xEA00000000007972;
    }

    if (v2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0x73736563637553;
    }

    if (v2)
    {
      v14 = v11;
    }

    else
    {
      v14 = 0xE700000000000000;
    }

    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v48);

    *(v5 + 14) = v15;
    _os_log_impl(&dword_264F1F000, v3, v4, "EventSender sent event { identifier: %s, result: %s }", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v6, -1, -1);
    MEMORY[0x266755550](v5, -1, -1);
  }

  if (v2 == 1)
  {
    v16 = *(v0 + 784);
    outlined init with copy of MLS.OutgoingEventState?(v16, v0 + 536, &_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();
    outlined destroy of NSObject?(v16, &_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v48 = v20;
      *v19 = 136315138;
      v21 = specialized MLS.IncomingEventType.identifier.getter();
      v23 = v22;

      v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v23, &v48);

      *(v19 + 4) = v24;
      _os_log_impl(&dword_264F1F000, v17, v18, "EventSender told to retry event after delay { identifier: %s }", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v20);
      MEMORY[0x266755550](v20, -1, -1);
      MEMORY[0x266755550](v19, -1, -1);
    }

    lazy protocol witness table accessor for type MLS.EventSenderError and conformance MLS.EventSenderError();
    swift_allocError();
    *v25 = 0;
    *(v25 + 8) = 0;
    *(v25 + 16) = 0;
    swift_willThrow();

    v26 = *(v0 + 8);

    return v26();
  }

  else
  {
    v28 = *(v0 + 792);
    v29 = *(v0 + 784);
    v46 = *(v0 + 816);
    v47 = *(v0 + 800);
    v30 = specialized MLS.IncomingEventType.identifier.getter();
    v32 = v31;
    *(v0 + 864) = v31;
    v33 = swift_allocObject();
    swift_weakInit();
    v34 = swift_allocObject();
    *(v0 + 872) = v34;
    *(v34 + 16) = v47;
    *(v34 + 32) = v46;
    *(v34 + 48) = v33;
    v35 = *(v29 + 48);
    v36 = *(v29 + 64);
    v37 = *(v29 + 80);
    *(v34 + 152) = *(v29 + 96);
    *(v34 + 136) = v37;
    *(v34 + 120) = v36;
    *(v34 + 104) = v35;
    v39 = *v29;
    v38 = *(v29 + 16);
    *(v34 + 88) = *(v29 + 32);
    *(v34 + 56) = v39;
    *(v34 + 72) = v38;
    v41 = *(v28 + 64);
    v40 = *(v28 + 80);
    v42 = *(v28 + 48);
    *(v34 + 256) = *(v28 + 96);
    *(v34 + 224) = v41;
    *(v34 + 240) = v40;
    *(v34 + 208) = v42;
    v43 = *v28;
    v44 = *(v28 + 32);
    *(v34 + 176) = *(v28 + 16);
    *(v34 + 192) = v44;
    *(v34 + 160) = v43;
    outlined init with copy of MLS.OutgoingEventState?(v29, v0 + 640, &_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);

    outlined init with copy of MLS.Group(v28, v0 + 120);
    v45 = swift_task_alloc();
    *(v0 + 880) = v45;
    *v45 = v0;
    v45[1] = closure #1 in closure #1 in MLS.EventSender.send(incomingEvent:forGroup:shouldPersistNewEvent:isReflectionEvent:);
    v51 = MEMORY[0x277D84F78] + 8;

    return MLS.EventSender.performWithRetry<A>(identifier:retryPolicy:work:failureBlock:)(v0 + 322, v30, v32, 1, &async function pointer to partial apply for closure #1 in closure #1 in closure #1 in MLS.EventSender.send(incomingEvent:forGroup:shouldPersistNewEvent:isReflectionEvent:), v34, 0, 0);
  }
}

{

  return MEMORY[0x2822009F8](closure #1 in closure #1 in MLS.EventSender.send(incomingEvent:forGroup:shouldPersistNewEvent:isReflectionEvent:), 0, 0);
}

{

  **(v0 + 768) = 0;
  v1 = *(v0 + 8);

  return v1();
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t closure #1 in closure #1 in closure #1 in MLS.EventSender.send(incomingEvent:forGroup:shouldPersistNewEvent:isReflectionEvent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[20] = a3;
  v4[21] = a4;
  v4[18] = a1;
  v4[19] = a2;
  return MEMORY[0x2822009F8](closure #1 in closure #1 in closure #1 in MLS.EventSender.send(incomingEvent:forGroup:shouldPersistNewEvent:isReflectionEvent:), 0, 0);
}

void closure #1 in closure #1 in closure #1 in MLS.EventSender.send(incomingEvent:forGroup:shouldPersistNewEvent:isReflectionEvent:)()
{
  v23 = v0;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 176) = Strong;
  if (Strong)
  {
    v2 = Strong;
    v3 = *(v0 + 160);
    outlined init with copy of MLS.OutgoingEventState?(v3, v0 + 16, &_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    outlined destroy of NSObject?(v3, &_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v22 = v7;
      *v6 = 136315138;
      v8 = specialized MLS.IncomingEventType.identifier.getter();
      v10 = v9;

      v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v10, &v22);

      *(v6 + 4) = v11;
      _os_log_impl(&dword_264F1F000, v4, v5, "EventSender completing and deleting event { identifier: %s }", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v7);
      MEMORY[0x266755550](v7, -1, -1);
      MEMORY[0x266755550](v6, -1, -1);
    }

    v12 = *(v2 + 40);
    ObjectType = swift_getObjectType();
    v21 = *(v0 + 160);
    v14 = specialized MLS.IncomingEventType.identifier.getter();
    v16 = v15;
    *(v0 + 184) = v15;
    v17 = swift_task_alloc();
    *(v0 + 192) = v17;
    *(v17 + 16) = v2;
    *(v17 + 24) = v21;

    v18 = swift_task_alloc();
    *(v0 + 200) = v18;
    *v18 = v0;
    v18[1] = closure #1 in closure #1 in closure #1 in MLS.EventSender.send(incomingEvent:forGroup:shouldPersistNewEvent:isReflectionEvent:);
    v19 = MEMORY[0x277D84F78] + 8;

    MLS.Persister.atomically<A>(with:do:)(v18, v14, v16, &async function pointer to partial apply for closure #1 in closure #1 in closure #1 in closure #1 in MLS.EventSender.send(incomingEvent:forGroup:shouldPersistNewEvent:isReflectionEvent:), v17, ObjectType, v19, v12);
  }

  else
  {
    **(v0 + 144) = 0;
    v20 = *(v0 + 8);

    v20();
  }
}

uint64_t closure #1 in closure #1 in closure #1 in MLS.EventSender.send(incomingEvent:forGroup:shouldPersistNewEvent:isReflectionEvent:)()
{
  *(*v1 + 208) = v0;

  if (v0)
  {
    v2 = closure #1 in closure #1 in closure #1 in MLS.EventSender.send(incomingEvent:forGroup:shouldPersistNewEvent:isReflectionEvent:);
  }

  else
  {
    v2 = closure #1 in closure #1 in closure #1 in MLS.EventSender.send(incomingEvent:forGroup:shouldPersistNewEvent:isReflectionEvent:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{

  **(v0 + 144) = 0;
  v1 = *(v0 + 8);

  return v1();
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t closure #1 in closure #1 in closure #1 in closure #1 in MLS.EventSender.send(incomingEvent:forGroup:shouldPersistNewEvent:isReflectionEvent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[18] = a3;
  v4[19] = a4;
  v4[17] = a2;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v5 = static MLSActor.shared;
  v4[20] = static MLSActor.shared;

  return MEMORY[0x2822009F8](closure #1 in closure #1 in closure #1 in closure #1 in MLS.EventSender.send(incomingEvent:forGroup:shouldPersistNewEvent:isReflectionEvent:), v5, 0);
}

uint64_t closure #1 in closure #1 in closure #1 in closure #1 in MLS.EventSender.send(incomingEvent:forGroup:shouldPersistNewEvent:isReflectionEvent:)()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 152);
  v3 = *(v0 + 136);
  v4 = *(v3 + 40);
  ObjectType = swift_getObjectType();
  v7 = *(v1 + 16);
  v6 = *(v1 + 32);
  *(v0 + 16) = *v1;
  *(v0 + 32) = v7;
  *(v0 + 48) = v6;
  v9 = *(v1 + 64);
  v8 = *(v1 + 80);
  v10 = *(v1 + 48);
  *(v0 + 112) = *(v1 + 96);
  *(v0 + 80) = v9;
  *(v0 + 96) = v8;
  *(v0 + 64) = v10;
  v11 = *v2;
  v12 = v2[1];
  v13 = *(v3 + direct field offset for MLS.EventSender.clientIdentifier + 8);
  *(v0 + 120) = *(v3 + direct field offset for MLS.EventSender.clientIdentifier);
  *(v0 + 128) = v13;
  v14 = *(v4 + 128);

  v17 = (v14 + *v14);
  v15 = swift_task_alloc();
  *(v0 + 168) = v15;
  *v15 = v0;
  v15[1] = closure #1 in closure #1 in closure #1 in closure #1 in MLS.EventSender.send(incomingEvent:forGroup:shouldPersistNewEvent:isReflectionEvent:);

  return v17(v0 + 16, v11, v12, v0 + 120, ObjectType, v4);
}

{
  v2 = *v1;
  v3 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v4 = *(v2 + 160);

    return MEMORY[0x2822009F8](closure #1 in closure #1 in closure #1 in closure #1 in MLS.EventSender.send(incomingEvent:forGroup:shouldPersistNewEvent:isReflectionEvent:), v4, 0);
  }

  else
  {
    v5 = *(v3 + 8);

    return v5();
  }
}

{
  return (*(v0 + 8))();
}

uint64_t MLS.EventSender.fetchGroupRecoveryInfo(group:)(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  *(v3 + 920) = v4;
  *(v3 + 912) = a1;
  *(v3 + 928) = *v4;
  v6 = type metadata accessor for UUID();
  *(v3 + 936) = v6;
  *(v3 + 944) = *(v6 - 8);
  *(v3 + 952) = swift_task_alloc();
  v7 = *(a2 + 80);
  *(v3 + 80) = *(a2 + 64);
  *(v3 + 96) = v7;
  *(v3 + 112) = *(a2 + 96);
  v8 = *(a2 + 16);
  *(v3 + 16) = *a2;
  *(v3 + 32) = v8;
  v9 = *(a2 + 48);
  *(v3 + 48) = *(a2 + 32);
  *(v3 + 64) = v9;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v10 = static MLSActor.shared;
  *(v3 + 960) = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.EventSender.fetchGroupRecoveryInfo(group:), v10, 0);
}

uint64_t MLS.EventSender.fetchGroupRecoveryInfo(group:)(uint64_t a1)
{
  v40 = v1;
  v2 = *(v1 + 952);
  v3 = *(v1 + 944);
  v4 = *(v1 + 936);
  UUID.init()();
  v5 = UUID.uuidString.getter();
  v7 = v6;
  *(v1 + 968) = v5;
  *(v1 + 976) = v6;
  (*(v3 + 8))(v2, v4);
  *(v1 + 984) = direct field offset for MLS.EventSender.logger;
  outlined init with copy of MLS.Group(v1 + 16, v1 + 120);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  outlined destroy of MLS.Group(v1 + 16);

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v32 = v11;
    *v10 = 136315394;
    v12 = *(v1 + 96);
    v37 = *(v1 + 80);
    v38 = v12;
    v39 = *(v1 + 112);
    v13 = *(v1 + 32);
    v33 = *(v1 + 16);
    v34 = v13;
    v14 = *(v1 + 64);
    v35 = *(v1 + 48);
    v36 = v14;
    outlined init with copy of MLS.Group(v1 + 16, v1 + 744);
    v15 = MLS.Group.description.getter();
    v17 = v16;
    v18 = v38;
    *(v1 + 704) = v37;
    *(v1 + 720) = v18;
    *(v1 + 736) = v39;
    v19 = v34;
    *(v1 + 640) = v33;
    *(v1 + 656) = v19;
    v20 = v36;
    *(v1 + 672) = v35;
    *(v1 + 688) = v20;
    outlined destroy of MLS.Group(v1 + 640);
    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v17, &v32);

    *(v10 + 4) = v21;
    *(v10 + 12) = 2080;
    *(v10 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v7, &v32);
    _os_log_impl(&dword_264F1F000, v8, v9, "EventSender told to fetch group info { group: %s, fetchIdentifier: %s }", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v11, -1, -1);
    MEMORY[0x266755550](v10, -1, -1);
  }

  v22 = *(v1 + 928);
  v23 = swift_allocObject();
  swift_weakInit();
  v24 = swift_allocObject();
  *(v1 + 992) = v24;
  *(v24 + 16) = *(v22 + 80);
  *(v24 + 24) = *(v22 + 88);
  v25 = *(v22 + 104);
  v26 = *(v1 + 48);
  *(v24 + 104) = *(v1 + 64);
  v27 = *(v1 + 96);
  *(v24 + 120) = *(v1 + 80);
  *(v24 + 136) = v27;
  v28 = *(v1 + 32);
  *(v24 + 56) = *(v1 + 16);
  *(v24 + 72) = v28;
  *(v24 + 40) = v25;
  *(v24 + 48) = v23;
  v29 = *(v1 + 112);
  *(v24 + 88) = v26;
  *(v24 + 152) = v29;
  *(v24 + 160) = v5;
  *(v24 + 168) = v7;
  outlined init with copy of MLS.Group(v1 + 16, v1 + 224);

  v30 = swift_task_alloc();
  *(v1 + 1000) = v30;
  *v30 = v1;
  v30[1] = MLS.EventSender.fetchGroupRecoveryInfo(group:);
  v42 = &type metadata for MLS.GroupRecoveryInfo;

  return MLS.EventSender.performWithRetry<A>(identifier:retryPolicy:work:failureBlock:)(v1 + 848, v5, v7, 0, &async function pointer to partial apply for closure #1 in MLS.EventSender.fetchGroupRecoveryInfo(group:), v24, 0, 0);
}

uint64_t MLS.EventSender.fetchGroupRecoveryInfo(group:)()
{
  v1 = *(*v0 + 960);

  return MEMORY[0x2822009F8](MLS.EventSender.fetchGroupRecoveryInfo(group:), v1, 0);
}

{
  v37 = v0;
  v1 = *(v0 + 848);
  v2 = *(v0 + 856);
  v3 = *(v0 + 864);
  v4 = *(v0 + 872);
  outlined init with copy of MLS.Group(v0 + 16, v0 + 328);

  outlined copy of MLS.GroupRecoveryInfo?(v1, v2, v3, v4);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  outlined destroy of MLS.Group(v0 + 16);

  outlined consume of MLS.GroupRecoveryInfo?(v1, v2, v3, v4);
  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 976);
    v26 = *(v0 + 968);
    v8 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v29 = v28;
    *v8 = 136315650;
    v9 = *(v0 + 96);
    v34 = *(v0 + 80);
    v35 = v9;
    v36 = *(v0 + 112);
    v10 = *(v0 + 32);
    v30 = *(v0 + 16);
    v31 = v10;
    v11 = *(v0 + 64);
    v32 = *(v0 + 48);
    v33 = v11;
    outlined init with copy of MLS.Group(v0 + 16, v0 + 536);
    v27 = v6;
    v12 = MLS.Group.description.getter();
    v14 = v13;
    v15 = v35;
    *(v0 + 496) = v34;
    *(v0 + 512) = v15;
    *(v0 + 528) = v36;
    v16 = v31;
    *(v0 + 432) = v30;
    *(v0 + 448) = v16;
    v17 = v33;
    *(v0 + 464) = v32;
    *(v0 + 480) = v17;
    outlined destroy of MLS.Group(v0 + 432);
    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v14, &v29);

    *(v8 + 4) = v18;
    *(v8 + 12) = 2080;
    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v7, &v29);

    *(v8 + 14) = v19;
    *(v8 + 22) = 2080;
    *(v0 + 880) = v1;
    *(v0 + 888) = v2;
    *(v0 + 896) = v3;
    *(v0 + 904) = v4;
    outlined copy of MLS.GroupRecoveryInfo?(v1, v2, v3, v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO17GroupRecoveryInfoVSgMd, &_s15SecureMessaging3MLSO17GroupRecoveryInfoVSgMR);
    v20 = String.init<A>(describing:)();
    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, &v29);

    *(v8 + 24) = v22;
    _os_log_impl(&dword_264F1F000, v5, v27, "EventSender returning group info { group: %s, fetchIdentifier: %s, groupInfo: %s }", v8, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v28, -1, -1);
    MEMORY[0x266755550](v8, -1, -1);
  }

  else
  {
  }

  v23 = *(v0 + 912);
  *v23 = v1;
  v23[1] = v2;
  v23[2] = v3;
  v23[3] = v4;

  v24 = *(v0 + 8);

  return v24();
}

uint64_t closure #1 in MLS.EventSender.fetchGroupRecoveryInfo(group:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[184] = a5;
  v5[183] = a4;
  v5[182] = a3;
  v5[181] = a2;
  v5[180] = a1;
  return MEMORY[0x2822009F8](closure #1 in MLS.EventSender.fetchGroupRecoveryInfo(group:), 0, 0);
}

uint64_t closure #1 in MLS.EventSender.fetchGroupRecoveryInfo(group:)()
{
  v42 = v0;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 1480) = Strong;
  if (Strong)
  {
    v2 = Strong;
    v3 = *(v0 + 1456);
    *(v0 + 1488) = direct field offset for MLS.EventSender.logger;
    outlined init with copy of MLS.Group(v3, v0 + 16);

    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    outlined destroy of MLS.Group(v3);

    if (os_log_type_enabled(v4, v5))
    {
      v32 = *(v0 + 1472);
      v6 = *(v0 + 1464);
      v7 = *(v0 + 1456);
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v34 = v9;
      *v8 = 136315394;
      v10 = *(v7 + 80);
      v39 = *(v7 + 64);
      v40 = v10;
      v41 = *(v7 + 96);
      v11 = *(v7 + 16);
      v35 = *v7;
      v36 = v11;
      v12 = *(v7 + 48);
      v37 = *(v7 + 32);
      v38 = v12;
      outlined init with copy of MLS.Group(v7, v0 + 1264);
      v13 = MLS.Group.description.getter();
      v15 = v14;
      v16 = v40;
      *(v0 + 1224) = v39;
      *(v0 + 1240) = v16;
      *(v0 + 1256) = v41;
      v17 = v36;
      *(v0 + 1160) = v35;
      *(v0 + 1176) = v17;
      v18 = v38;
      *(v0 + 1192) = v37;
      *(v0 + 1208) = v18;
      outlined destroy of MLS.Group(v0 + 1160);
      v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v15, &v34);

      *(v8 + 4) = v19;
      *(v8 + 12) = 2080;
      *(v8 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v32, &v34);
      _os_log_impl(&dword_264F1F000, v4, v5, "EventSender fetching group info { group: %s, fetchIdentifier: %s }", v8, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266755550](v9, -1, -1);
      MEMORY[0x266755550](v8, -1, -1);
    }

    v20 = *(v0 + 1456);
    v21 = *(v2 + 24);
    ObjectType = swift_getObjectType();
    v23 = *v20;
    v24 = v20[1];
    *(v0 + 152) = v20[2];
    *(v0 + 136) = v24;
    *(v0 + 120) = v23;
    v25 = v20[3];
    v26 = v20[4];
    v27 = v20[5];
    *(v0 + 216) = *(v20 + 12);
    *(v0 + 200) = v27;
    *(v0 + 184) = v26;
    *(v0 + 168) = v25;
    *(v0 + 1512) = 1;
    v33 = (*(v21 + 24) + **(v21 + 24));
    v28 = swift_task_alloc();
    *(v0 + 1496) = v28;
    *v28 = v0;
    v28[1] = closure #1 in MLS.EventSender.fetchGroupRecoveryInfo(group:);

    return v33(v0 + 1368, v0 + 120, v0 + 1512, ObjectType, v21);
  }

  else
  {
    v30 = *(v0 + 1440);
    *v30 = xmmword_2651B5F50;
    *(v30 + 16) = 0;
    *(v30 + 24) = 0;
    v31 = *(v0 + 8);

    return v31();
  }
}

{
  *(*v1 + 1504) = v0;

  if (v0)
  {
    v2 = closure #1 in MLS.EventSender.fetchGroupRecoveryInfo(group:);
  }

  else
  {
    v2 = closure #1 in MLS.EventSender.fetchGroupRecoveryInfo(group:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v89 = v0;
  v1 = *(v0 + 1456);
  v2 = *(v0 + 1368);
  v3 = *(v0 + 1376);
  v4 = *(v0 + 1384);
  v5 = *(v0 + 1392);
  outlined init with copy of MLS.Group(v1, v0 + 224);

  outlined copy of MLS.FetchGroupRecoveryInfoResult(v2, v3, v4, v5, outlined copy of Data._Representation, outlined copy of Data?);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  v8 = v1;
  v9 = v5;
  outlined destroy of MLS.Group(v8);

  outlined copy of MLS.FetchGroupRecoveryInfoResult(v2, v3, v4, v5, outlined consume of Data._Representation, outlined consume of Data?);
  v10 = v3 >> 60;
  if (os_log_type_enabled(v6, v7))
  {
    v74 = v7;
    v75 = v9;
    v76 = v2;
    v77 = v4;
    v11 = *(v0 + 1472);
    v12 = *(v0 + 1464);
    v13 = *(v0 + 1456);
    v14 = swift_slowAlloc();
    v73 = swift_slowAlloc();
    v79 = v73;
    *v14 = 136315650;
    v15 = *(v13 + 80);
    v84 = *(v13 + 64);
    v85 = v15;
    v86 = *(v13 + 96);
    v16 = *(v13 + 16);
    v80 = *v13;
    v81 = v16;
    v17 = *(v13 + 48);
    v82 = *(v13 + 32);
    v83 = v17;
    outlined init with copy of MLS.Group(v13, v0 + 1056);
    v18 = MLS.Group.description.getter();
    v20 = v19;
    v21 = v85;
    *(v0 + 1016) = v84;
    *(v0 + 1032) = v21;
    *(v0 + 1048) = v86;
    v22 = v81;
    *(v0 + 952) = v80;
    *(v0 + 968) = v22;
    v23 = v83;
    *(v0 + 984) = v82;
    *(v0 + 1000) = v23;
    outlined destroy of MLS.Group(v0 + 952);
    v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v20, &v79);

    *(v14 + 4) = v24;
    *(v14 + 12) = 2080;
    *(v14 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v11, &v79);
    *(v14 + 22) = 2080;
    if (v3 >> 60 == 15)
    {
      v25 = 0xEF79616C65447265;
      v26 = 0x7466417972746552;
      v9 = v75;
      v2 = v76;
    }

    else
    {
      v9 = v75;
      v2 = v76;
      if (v10 == 11)
      {
        v25 = 0xEA00000000007972;
        v26 = 0x746552746F4E6F44;
      }

      else
      {
        *&v80 = 0;
        *(&v80 + 1) = 0xE000000000000000;
        outlined copy of Data._Representation(v76, v3);
        outlined copy of Data?(v77, v75);
        _StringGuts.grow(_:)(22);

        v87 = 0xD000000000000013;
        v88 = 0x80000002651E9AF0;
        *&v80 = 0;
        *(&v80 + 1) = 0xE000000000000000;
        _StringGuts.grow(_:)(31);

        *&v80 = 0x666E4970756F7247;
        *(&v80 + 1) = 0xEB00000000203A6FLL;
        countAndFlagsBits = Data.base64EncodedString(options:)(0)._countAndFlagsBits;
        MEMORY[0x2667545A0](countAndFlagsBits);

        MEMORY[0x2667545A0](0xD000000000000010, 0x80000002651E9AD0);
        v48 = 0;
        object = 0;
        if (v75 >> 60 != 15)
        {
          v50 = Data.base64EncodedString(options:)(0);
          object = v50._object;
          v48 = v50._countAndFlagsBits;
        }

        *(v0 + 1424) = v48;
        *(v0 + 1432) = object;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
        v51 = String.init<A>(describing:)();
        MEMORY[0x2667545A0](v51);

        MEMORY[0x2667545A0](v80, *(&v80 + 1));

        MEMORY[0x2667545A0](41, 0xE100000000000000);
        outlined copy of MLS.FetchGroupRecoveryInfoResult(v76, v3, v77, v75, outlined consume of Data._Representation, outlined consume of Data?);
        v26 = v87;
        v25 = v88;
      }
    }

    v52 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v25, &v79);

    *(v14 + 24) = v52;
    _os_log_impl(&dword_264F1F000, v6, v74, "EventSender fetched group info { group: %s, fetchIdentifier: %s, result: %s }", v14, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v73, -1, -1);
    MEMORY[0x266755550](v14, -1, -1);

    v4 = v77;
    if (v3 >> 60 == 15)
    {
      goto LABEL_17;
    }
  }

  else
  {

    if (v3 >> 60 == 15)
    {
LABEL_17:
      v53 = *(v0 + 1456);
      outlined init with copy of MLS.Group(v53, v0 + 328);

      v54 = Logger.logObject.getter();
      v55 = static os_log_type_t.default.getter();
      outlined destroy of MLS.Group(v53);

      if (os_log_type_enabled(v54, v55))
      {
        v56 = *(v0 + 1472);
        v57 = *(v0 + 1464);
        v58 = *(v0 + 1456);
        v59 = swift_slowAlloc();
        v60 = swift_slowAlloc();
        v87 = v60;
        *v59 = 136315394;
        v61 = *(v58 + 80);
        v84 = *(v58 + 64);
        v85 = v61;
        v86 = *(v58 + 96);
        v62 = *(v58 + 16);
        v80 = *v58;
        v81 = v62;
        v63 = *(v58 + 48);
        v82 = *(v58 + 32);
        v83 = v63;
        outlined init with copy of MLS.Group(v58, v0 + 536);
        v64 = MLS.Group.description.getter();
        v66 = v65;
        v67 = v85;
        *(v0 + 496) = v84;
        *(v0 + 512) = v67;
        *(v0 + 528) = v86;
        v68 = v81;
        *(v0 + 432) = v80;
        *(v0 + 448) = v68;
        v69 = v83;
        *(v0 + 464) = v82;
        *(v0 + 480) = v69;
        outlined destroy of MLS.Group(v0 + 432);
        v70 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v64, v66, &v87);

        *(v59 + 4) = v70;
        *(v59 + 12) = 2080;
        *(v59 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v57, v56, &v87);
        _os_log_impl(&dword_264F1F000, v54, v55, "EventSender told to retry group info fetch { group: %s, fetchIdentifier: %s }", v59, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x266755550](v60, -1, -1);
        MEMORY[0x266755550](v59, -1, -1);
      }

      lazy protocol witness table accessor for type MLS.EventSenderError and conformance MLS.EventSenderError();
      swift_allocError();
      *v71 = 0;
      *(v71 + 8) = 0;
      *(v71 + 16) = 0;
      swift_willThrow();

      v46 = *(v0 + 8);
      goto LABEL_20;
    }
  }

  if (v10 == 11)
  {
    v27 = *(v0 + 1456);
    outlined init with copy of MLS.Group(v27, v0 + 640);

    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();
    outlined destroy of MLS.Group(v27);

    if (os_log_type_enabled(v28, v29))
    {
      v78 = *(v0 + 1472);
      v30 = *(v0 + 1464);
      v31 = *(v0 + 1456);
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v87 = v33;
      *v32 = 136315394;
      v34 = *(v31 + 80);
      v84 = *(v31 + 64);
      v85 = v34;
      v86 = *(v31 + 96);
      v35 = *(v31 + 16);
      v80 = *v31;
      v81 = v35;
      v36 = *(v31 + 48);
      v82 = *(v31 + 32);
      v83 = v36;
      outlined init with copy of MLS.Group(v31, v0 + 848);
      v37 = MLS.Group.description.getter();
      v39 = v38;
      v40 = v85;
      *(v0 + 808) = v84;
      *(v0 + 824) = v40;
      *(v0 + 840) = v86;
      v41 = v81;
      *(v0 + 744) = v80;
      *(v0 + 760) = v41;
      v42 = v83;
      *(v0 + 776) = v82;
      *(v0 + 792) = v42;
      outlined destroy of MLS.Group(v0 + 744);
      v43 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v39, &v87);

      *(v32 + 4) = v43;
      *(v32 + 12) = 2080;
      *(v32 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v78, &v87);
      _os_log_impl(&dword_264F1F000, v28, v29, "EventSender told to not retry group info fetch { group: %s, fetchIdentifier: %s }", v32, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266755550](v33, -1, -1);
      MEMORY[0x266755550](v32, -1, -1);
    }

    v44 = *(v0 + 1440);
    *v44 = xmmword_2651B5F50;
    *(v44 + 16) = 0;
    *(v44 + 24) = 0;
  }

  else
  {
    v45 = *(v0 + 1440);

    *v45 = v2;
    v45[1] = v3;
    v45[2] = v4;
    v45[3] = v9;
  }

  v46 = *(v0 + 8);
LABEL_20:

  return v46();
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t MLS.EventSender.fetchMembers(uris:)(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  v2[8] = *v1;
  v3 = type metadata accessor for UUID();
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v4 = static MLSActor.shared;
  v2[12] = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.EventSender.fetchMembers(uris:), v4, 0);
}

{
  v49 = v1;
  v3 = v1[10];
  v2 = v1[11];
  v4 = v1[9];
  UUID.init()();
  v5 = UUID.uuidString.getter();
  v7 = v6;
  v1[13] = v5;
  v1[14] = v6;
  (*(v3 + 8))(v2, v4);
  v1[15] = direct field offset for MLS.EventSender.logger;

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = v1[6];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v48 = v12;
    *v11 = 136315394;
    v13 = MEMORY[0x266754630](v10, &type metadata for URI);
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v48);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2080;
    *(v11 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v7, &v48);
    _os_log_impl(&dword_264F1F000, v8, v9, "EventSender told to fetch members { uris: %s, fetchIdentifier: %s }", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v12, -1, -1);
    MEMORY[0x266755550](v11, -1, -1);
  }

  v16 = v1[6];
  v17 = v16[2];
  v1[16] = v17;
  if (v17)
  {
    v1[17] = MEMORY[0x277D84F90];
    v1[18] = 0;
    v19 = v1[13];
    v18 = v1[14];
    v20 = v1[8];
    v22 = v16[4];
    v21 = v16[5];
    v23 = swift_allocObject();
    swift_weakInit();
    v24 = swift_allocObject();
    v1[19] = v24;
    *(v24 + 16) = *(v20 + 80);
    *(v24 + 24) = *(v20 + 88);
    *(v24 + 40) = *(v20 + 104);
    *(v24 + 48) = v23;
    *(v24 + 56) = v22;
    *(v24 + 64) = v21;
    *(v24 + 72) = v19;
    *(v24 + 80) = v18;

    v25 = swift_task_alloc();
    v1[20] = v25;
    *v25 = v1;
    v25[1] = MLS.EventSender.fetchMembers(uris:);
    v26 = v1[13];
    v27 = v1[14];
    v51 = &type metadata for MLS.AllMember;

    return MLS.EventSender.performWithRetry<A>(identifier:retryPolicy:work:failureBlock:)((v1 + 2), v26, v27, 0, &async function pointer to partial apply for closure #1 in MLS.EventSender.fetchMembers(uris:), v24, 0, 0);
  }

  else
  {

    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.default.getter();

    v31 = os_log_type_enabled(v29, v30);
    v32 = v1[14];
    if (v31)
    {
      v33 = v1[13];
      v34 = v1[6];
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v48 = v36;
      *v35 = 136315650;
      v37 = MEMORY[0x266754630](v34, &type metadata for URI);
      v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v38, &v48);

      *(v35 + 4) = v39;
      *(v35 + 12) = 2080;
      v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v32, &v48);

      *(v35 + 14) = v40;
      *(v35 + 22) = 2080;

      v42 = MEMORY[0x266754630](v41, &type metadata for MLS.AllMember);
      v44 = v43;

      v45 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, v44, &v48);

      *(v35 + 24) = v45;
      _os_log_impl(&dword_264F1F000, v29, v30, "EventSender returning members { uris: %s, fetchIdentifier: %s, members: %s }", v35, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x266755550](v36, -1, -1);
      MEMORY[0x266755550](v35, -1, -1);
    }

    else
    {
    }

    v46 = v1[1];
    v47 = MEMORY[0x277D84F90];

    return v46(v47);
  }
}

uint64_t MLS.EventSender.fetchMembers(uris:)()
{
  v1 = *(*v0 + 96);

  return MEMORY[0x2822009F8](MLS.EventSender.fetchMembers(uris:), v1, 0);
}

{
  v47 = v0;
  v1 = *(v0 + 40);
  if (v1 <= 0xFD)
  {
    v45 = *(v0 + 16);
    v5 = *(v0 + 32);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v0 + 136);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v7 + 2) + 1, 1, *(v0 + 136));
    }

    v9 = *(v7 + 2);
    v8 = *(v7 + 3);
    v10 = v45;
    if (v9 >= v8 >> 1)
    {
      v44 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v9 + 1, 1, v7);
      v10 = v45;
      v7 = v44;
    }

    v11 = *(v0 + 128);
    v12 = *(v0 + 144) + 1;
    *(v7 + 2) = v9 + 1;
    v13 = &v7[32 * v9];
    *(v13 + 2) = v10;
    *(v13 + 6) = v5;
    v13[56] = v1;
    if (v12 == v11)
    {

      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.default.getter();

      v16 = os_log_type_enabled(v14, v15);
      v17 = *(v0 + 112);
      if (v16)
      {
        v18 = *(v0 + 104);
        v19 = *(v0 + 48);
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v46 = v21;
        *v20 = 136315650;
        v22 = MEMORY[0x266754630](v19, &type metadata for URI);
        v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v23, &v46);

        *(v20 + 4) = v24;
        *(v20 + 12) = 2080;
        v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v17, &v46);

        *(v20 + 14) = v25;
        *(v20 + 22) = 2080;

        v27 = MEMORY[0x266754630](v26, &type metadata for MLS.AllMember);
        v29 = v28;

        v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v29, &v46);

        *(v20 + 24) = v30;
        _os_log_impl(&dword_264F1F000, v14, v15, "EventSender returning members { uris: %s, fetchIdentifier: %s, members: %s }", v20, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x266755550](v21, -1, -1);
        MEMORY[0x266755550](v20, -1, -1);
      }

      else
      {
      }

      v43 = *(v0 + 8);

      return v43(v7);
    }

    else
    {
      v31 = *(v0 + 144) + 1;
      *(v0 + 136) = v7;
      *(v0 + 144) = v31;
      v32 = *(v0 + 104);
      v33 = *(v0 + 112);
      v34 = *(v0 + 64);
      v35 = *(v0 + 48) + 16 * v31;
      v37 = *(v35 + 32);
      v36 = *(v35 + 40);
      v38 = swift_allocObject();
      swift_weakInit();
      v39 = swift_allocObject();
      *(v0 + 152) = v39;
      *(v39 + 16) = *(v34 + 80);
      *(v39 + 24) = *(v34 + 88);
      *(v39 + 40) = *(v34 + 104);
      *(v39 + 48) = v38;
      *(v39 + 56) = v37;
      *(v39 + 64) = v36;
      *(v39 + 72) = v32;
      *(v39 + 80) = v33;

      v40 = swift_task_alloc();
      *(v0 + 160) = v40;
      *v40 = v0;
      v40[1] = MLS.EventSender.fetchMembers(uris:);
      v41 = *(v0 + 104);
      v42 = *(v0 + 112);
      v49 = &type metadata for MLS.AllMember;

      return MLS.EventSender.performWithRetry<A>(identifier:retryPolicy:work:failureBlock:)(v0 + 16, v41, v42, 0, &async function pointer to partial apply for closure #1 in MLS.EventSender.fetchMembers(uris:), v39, 0, 0);
    }
  }

  else
  {

    lazy protocol witness table accessor for type MLS.EventSenderError and conformance MLS.EventSenderError();
    swift_allocError();
    *v2 = 3;
    *(v2 + 8) = 0;
    *(v2 + 16) = 0;
    swift_willThrow();

    v3 = *(v0 + 8);

    return v3();
  }
}

uint64_t closure #1 in MLS.EventSender.fetchMembers(uris:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[21] = a5;
  v6[22] = a6;
  v6[19] = a3;
  v6[20] = a4;
  v6[17] = a1;
  v6[18] = a2;
  return MEMORY[0x2822009F8](closure #1 in MLS.EventSender.fetchMembers(uris:), 0, 0);
}

uint64_t closure #1 in MLS.EventSender.fetchMembers(uris:)()
{
  v21 = v0;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 184) = Strong;
  if (Strong)
  {
    v2 = Strong;
    *(v0 + 192) = direct field offset for MLS.EventSender.logger;

    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v3, v4))
    {
      v6 = *(v0 + 168);
      v5 = *(v0 + 176);
      v8 = *(v0 + 152);
      v7 = *(v0 + 160);
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v20 = v10;
      *v9 = 136315394;
      *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v7, &v20);
      *(v9 + 12) = 2080;
      *(v9 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v5, &v20);
      _os_log_impl(&dword_264F1F000, v3, v4, "EventSender fetching uri { uri: %s, fetchIdentifier: %s }", v9, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266755550](v10, -1, -1);
      MEMORY[0x266755550](v9, -1, -1);
    }

    v12 = *(v0 + 152);
    v11 = *(v0 + 160);
    v13 = *(v2 + 24);
    ObjectType = swift_getObjectType();
    *(v0 + 104) = v12;
    *(v0 + 112) = v11;
    *(v0 + 41) = 1;
    v19 = (*(v13 + 32) + **(v13 + 32));
    v15 = swift_task_alloc();
    *(v0 + 200) = v15;
    *v15 = v0;
    v15[1] = closure #1 in MLS.EventSender.fetchMembers(uris:);

    return v19(v0 + 16, v0 + 104, v0 + 41, ObjectType, v13);
  }

  else
  {
    v17 = *(v0 + 136);
    *v17 = 0;
    v17[1] = 0;
    v17[2] = 0;
    *(*(v0 + 136) + 24) = -2;
    v18 = *(v0 + 8);

    return v18();
  }
}

{
  *(*v1 + 208) = v0;

  if (v0)
  {
    v2 = closure #1 in MLS.EventSender.fetchMembers(uris:);
  }

  else
  {
    v2 = closure #1 in MLS.EventSender.fetchMembers(uris:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v43 = v0;
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);

  outlined copy of MLS.FetchMemberResult<MLS.AllMember>(v1, v2, v3, v4);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  v41 = v2;
  v7 = v2;
  v8 = v3;
  outlined consume of MLS.FetchMemberResult<MLS.AllMember>(v1, v7, v3, v4);
  if (os_log_type_enabled(v5, v6))
  {
    v39 = v6;
    v40 = v1;
    v10 = *(v0 + 168);
    v9 = *(v0 + 176);
    v12 = *(v0 + 152);
    v11 = *(v0 + 160);
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v42[0] = v14;
    *v13 = 136315650;
    *(v13 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v11, v42);
    *(v13 + 12) = 2080;
    *(v13 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v9, v42);
    *(v13 + 22) = 2080;
    if (v4 <= 0xFD)
    {
      v1 = v40;
      if ((v4 & 0xFE) == 0x7E)
      {
        v15 = 0xEA00000000007972;
        v16 = 0x746552746F4E6F44;
      }

      else
      {
        *(v0 + 120) = 0;
        *(v0 + 128) = 0xE000000000000000;
        MEMORY[0x2667545A0](0x2873736563637553, 0xE800000000000000);
        *(v0 + 48) = v40;
        *(v0 + 56) = v41;
        *(v0 + 64) = v8;
        *(v0 + 72) = v4;
        _print_unlocked<A, B>(_:_:)();
        MEMORY[0x2667545A0](41, 0xE100000000000000);
        v16 = *(v0 + 120);
        v15 = *(v0 + 128);
      }
    }

    else
    {
      v15 = 0xEF79616C65447265;
      v16 = 0x7466417972746552;
      v1 = v40;
    }

    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v15, v42);

    *(v13 + 24) = v17;
    _os_log_impl(&dword_264F1F000, v5, v39, "EventSender fetched uri { uri: %s, fetchIdentifier: %s, result: %s }", v13, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v14, -1, -1);
    MEMORY[0x266755550](v13, -1, -1);
  }

  if (v4 <= 0xFD)
  {
    if ((v4 & 0xFE) == 0x7E)
    {

      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v28, v29))
      {
        v31 = *(v0 + 168);
        v30 = *(v0 + 176);
        v33 = *(v0 + 152);
        v32 = *(v0 + 160);
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v42[0] = v35;
        *v34 = 136315394;
        *(v34 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v32, v42);
        *(v34 + 12) = 2080;
        *(v34 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v30, v42);
        _os_log_impl(&dword_264F1F000, v28, v29, "EventSender told to not retry member fetch { uri: %s, fetchIdentifier: %s }", v34, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x266755550](v35, -1, -1);
        MEMORY[0x266755550](v34, -1, -1);
      }

      v36 = *(v0 + 136);
      *v36 = 0;
      v36[1] = 0;
      v36[2] = 0;
      LOBYTE(v4) = -2;
    }

    else
    {
      v37 = *(v0 + 136);

      *v37 = v1;
      v37[1] = v41;
      v37[2] = v8;
    }

    *(*(v0 + 136) + 24) = v4;
    v27 = *(v0 + 8);
  }

  else
  {

    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v21 = *(v0 + 168);
      v20 = *(v0 + 176);
      v23 = *(v0 + 152);
      v22 = *(v0 + 160);
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v42[0] = v25;
      *v24 = 136315394;
      *(v24 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v22, v42);
      *(v24 + 12) = 2080;
      *(v24 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v20, v42);
      _os_log_impl(&dword_264F1F000, v18, v19, "EventSender told to retry member fetch { uri: %s, fetchIdentifier: %s }", v24, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266755550](v25, -1, -1);
      MEMORY[0x266755550](v24, -1, -1);
    }

    lazy protocol witness table accessor for type MLS.EventSenderError and conformance MLS.EventSenderError();
    swift_allocError();
    *v26 = 0;
    *(v26 + 8) = 0;
    *(v26 + 16) = 0;
    swift_willThrow();

    v27 = *(v0 + 8);
  }

  return v27();
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t MLS.EventSender.completeEvent(identifier:storageIdentifier:groupIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[7] = a6;
  v7[8] = v6;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  v7[9] = *v6;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v8 = static MLSActor.shared;
  v7[10] = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.EventSender.completeEvent(identifier:storageIdentifier:groupIdentifier:), v8, 0);
}

uint64_t MLS.EventSender.completeEvent(identifier:storageIdentifier:groupIdentifier:)()
{
  v1 = MLS.EventSender.eventQueue(groupIdentifier:)(*(v0 + 48), *(v0 + 56));
  *(v0 + 88) = v1;

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = *(v0 + 32);
    v4 = *(v0 + 40);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v32 = v7;
    *v6 = 136315138;
    *(v6 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v4, &v32);
    _os_log_impl(&dword_264F1F000, v2, v3, "EventSender acknowledging ack { storageIdentifier: %s }", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x266755550](v7, -1, -1);
    MEMORY[0x266755550](v6, -1, -1);
  }

  v9 = *(v0 + 16);
  v8 = *(v0 + 24);
  v10 = (*(**(v0 + 64) + 256))();
  (*(*v1 + 336))(v9, v8, v10, v11);

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v15 = *(v0 + 32);
    v14 = *(v0 + 40);
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v32 = v17;
    *v16 = 136315138;
    *(v16 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v14, &v32);
    _os_log_impl(&dword_264F1F000, v12, v13, "EventSender enqueuing deletion of event { storageIdentifier: %s }", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v17);
    MEMORY[0x266755550](v17, -1, -1);
    MEMORY[0x266755550](v16, -1, -1);
  }

  v18 = *(v0 + 72);
  v19 = *(v0 + 56);
  v30 = *(v0 + 48);
  v21 = *(v0 + 32);
  v20 = *(v0 + 40);
  v23 = *(v0 + 16);
  v22 = *(v0 + 24);
  v24 = swift_allocObject();
  swift_weakInit();
  v25 = swift_allocObject();
  *(v0 + 96) = v25;
  *(v25 + 16) = *(v18 + 80);
  *(v25 + 24) = *(v18 + 88);
  *(v25 + 40) = *(v18 + 104);
  *(v25 + 48) = v24;
  *(v25 + 56) = v21;
  *(v25 + 64) = v20;
  *(v25 + 72) = v23;
  *(v25 + 80) = v22;
  *(v25 + 88) = v30;
  *(v25 + 96) = v19;

  v26 = swift_task_alloc();
  *(v0 + 104) = v26;
  *v26 = v0;
  v26[1] = MLS.EventSender.completeEvent(identifier:storageIdentifier:groupIdentifier:);
  v27 = *(v0 + 32);
  v28 = *(v0 + 40);

  return MLS.EventSender.performWithRetry<A>(identifier:retryPolicy:work:failureBlock:)(v0 + 112, v27, v28, 1, &async function pointer to partial apply for closure #1 in MLS.EventSender.completeEvent(identifier:storageIdentifier:groupIdentifier:), v25, 0, 0);
}

{
  v1 = *(*v0 + 80);

  return MEMORY[0x2822009F8](MLS.EventSender.completeEvent(identifier:storageIdentifier:groupIdentifier:), v1, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t closure #1 in MLS.EventSender.completeEvent(identifier:storageIdentifier:groupIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[11] = a7;
  v8[12] = a8;
  v8[9] = a5;
  v8[10] = a6;
  v8[7] = a3;
  v8[8] = a4;
  v8[5] = a1;
  v8[6] = a2;
  return MEMORY[0x2822009F8](closure #1 in MLS.EventSender.completeEvent(identifier:storageIdentifier:groupIdentifier:), 0, 0);
}

void closure #1 in MLS.EventSender.completeEvent(identifier:storageIdentifier:groupIdentifier:)()
{
  v21 = v0;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 104) = Strong;
  if (Strong)
  {
    v2 = Strong;

    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v3, v4))
    {
      v6 = *(v0 + 56);
      v5 = *(v0 + 64);
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v20 = v8;
      *v7 = 136315138;
      *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v5, &v20);
      _os_log_impl(&dword_264F1F000, v3, v4, "EventSender deleting event { storageIdentifier: %s }", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v8);
      MEMORY[0x266755550](v8, -1, -1);
      MEMORY[0x266755550](v7, -1, -1);
    }

    v10 = *(v0 + 88);
    v9 = *(v0 + 96);
    v19 = *(v0 + 56);
    v11 = *(v2 + 40);
    ObjectType = swift_getObjectType();
    v13 = swift_task_alloc();
    *(v0 + 112) = v13;
    *(v13 + 16) = v2;
    *(v13 + 24) = v19;
    *(v13 + 40) = v10;
    *(v13 + 48) = v9;
    v14 = swift_task_alloc();
    *(v0 + 120) = v14;
    *v14 = v0;
    v14[1] = closure #1 in MLS.EventSender.completeEvent(identifier:storageIdentifier:groupIdentifier:);
    v15 = *(v0 + 72);
    v16 = *(v0 + 80);
    v17 = MEMORY[0x277D84F78] + 8;

    MLS.Persister.atomically<A>(with:do:)(v14, v15, v16, &async function pointer to partial apply for closure #1 in closure #1 in MLS.EventSender.completeEvent(identifier:storageIdentifier:groupIdentifier:), v13, ObjectType, v17, v11);
  }

  else
  {
    **(v0 + 40) = 0;
    v18 = *(v0 + 8);

    v18();
  }
}

uint64_t closure #1 in MLS.EventSender.completeEvent(identifier:storageIdentifier:groupIdentifier:)()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = closure #1 in MLS.EventSender.completeEvent(identifier:storageIdentifier:groupIdentifier:);
  }

  else
  {
    v2 = closure #1 in MLS.EventSender.completeEvent(identifier:storageIdentifier:groupIdentifier:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{

  **(v0 + 40) = 0;
  v1 = *(v0 + 8);

  return v1();
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t closure #1 in closure #1 in MLS.EventSender.completeEvent(identifier:storageIdentifier:groupIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[148] = a6;
  v6[147] = a5;
  v6[146] = a4;
  v6[145] = a3;
  v6[144] = a2;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v7 = static MLSActor.shared;
  v6[149] = static MLSActor.shared;

  return MEMORY[0x2822009F8](closure #1 in closure #1 in MLS.EventSender.completeEvent(identifier:storageIdentifier:groupIdentifier:), v7, 0);
}

uint64_t closure #1 in closure #1 in MLS.EventSender.completeEvent(identifier:storageIdentifier:groupIdentifier:)()
{
  v1 = v0[146];
  v2 = v0[145];
  v3 = v0[144];
  v4 = *(v3 + 40);
  ObjectType = swift_getObjectType();
  v0[2] = v2;
  v0[3] = v1;
  _s15SecureMessaging3MLSO19OutgoingEventUpdateOWOi0_((v0 + 2));
  memcpy(v0 + 37, v0 + 2, 0x118uLL);
  v6 = *(v3 + direct field offset for MLS.EventSender.clientIdentifier + 8);
  v0[142] = *(v3 + direct field offset for MLS.EventSender.clientIdentifier);
  v0[143] = v6;
  v7 = *(v4 + 112);

  v12 = (v7 + *v7);
  v8 = swift_task_alloc();
  v0[150] = v8;
  *v8 = v0;
  v8[1] = closure #1 in closure #1 in MLS.EventSender.completeEvent(identifier:storageIdentifier:groupIdentifier:);
  v9 = v0[148];
  v10 = v0[147];

  return (v12)(v0 + 37, v10, v9, v0 + 142, ObjectType, v4);
}

{
  v2 = *v1;
  v2[151] = v0;

  if (v0)
  {
    v3 = v2[149];

    memcpy(v2 + 72, v2 + 37, 0x118uLL);
    outlined destroy of MLS.OutgoingEventUpdate((v2 + 72));

    return MEMORY[0x2822009F8](closure #1 in closure #1 in MLS.EventSender.completeEvent(identifier:storageIdentifier:groupIdentifier:), v3, 0);
  }

  else
  {

    memcpy(v2 + 107, v2 + 37, 0x118uLL);
    outlined destroy of MLS.OutgoingEventUpdate((v2 + 107));
    v4 = v2[1];

    return v4();
  }
}

{
  return (*(v0 + 8))();
}

uint64_t MLS.EventSender.performWithRetry<A>(identifier:retryPolicy:work:failureBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 72) = v13;
  *(v9 + 80) = v8;
  *(v9 + 56) = a7;
  *(v9 + 64) = a8;
  *(v9 + 40) = a5;
  *(v9 + 48) = a6;
  *(v9 + 104) = a4;
  *(v9 + 24) = a2;
  *(v9 + 32) = a3;
  *(v9 + 16) = a1;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v10 = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.EventSender.performWithRetry<A>(identifier:retryPolicy:work:failureBlock:), v10, 0);
}

uint64_t MLS.EventSender.performWithRetry<A>(identifier:retryPolicy:work:failureBlock:)()
{
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  if (*(v0 + 104))
  {
    v3 = closure #1 in variable initialization expression of MLS.EventSender.deletionRetryPolicy;
  }

  else
  {
    v3 = closure #1 in variable initialization expression of MLS.EventSender.eventRetryPolicy;
  }

  v4 = swift_allocObject();
  *(v0 + 88) = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;

  v5 = swift_task_alloc();
  *(v0 + 96) = v5;
  *v5 = v0;
  v5[1] = MLS.EventSender.performWithRetry<A>(identifier:retryPolicy:work:failureBlock:);
  v6 = *(v0 + 40);
  v7 = *(v0 + 48);
  v8 = *(v0 + 24);
  v9 = *(v0 + 32);
  v10 = *(v0 + 16);

  return performWithRetry<A>(attempt:identifier:retryPolicy:work:errorBlock:failureBlock:)(v10, 1, v8, v9, v3, 0, v6, v7);
}

{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t closure #1 in MLS.EventSender.performWithRetry<A>(identifier:retryPolicy:work:failureBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](closure #1 in MLS.EventSender.performWithRetry<A>(identifier:retryPolicy:work:failureBlock:), 0, 0);
}

uint64_t closure #1 in MLS.EventSender.performWithRetry<A>(identifier:retryPolicy:work:failureBlock:)()
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
    _os_log_impl(&dword_264F1F000, v3, v4, "EventSender performWithRetry threw error { identifier: %s, attempt: %lu, error: %@ }", v9, 0x20u);
    outlined destroy of NSObject?(v10, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x266755550](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    MEMORY[0x266755550](v11, -1, -1);
    MEMORY[0x266755550](v9, -1, -1);
  }

  v14 = v0[1];

  return v14();
}

char *MLS.EventSender.deinit()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
  v1 = direct field offset for MLS.EventSender.logger;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t MLS.EventSender.__deallocating_deinit()
{
  MLS.EventSender.deinit();

  return swift_deallocClassInstance();
}

uint64_t protocol witness for MLS.EventSenderProtocol.enqueue(groupIdentifier:identifier:isWithinPersisterTransaction:sendBlock:) in conformance MLS.EventSender<A, B>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v18 = (*(*v7 + 320) + **(*v7 + 320));
  v16 = swift_task_alloc();
  *(v8 + 16) = v16;
  *v16 = v8;
  v16[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v18(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t protocol witness for MLS.EventSenderProtocol.enqueueSelfHeal(groupIdentifier:identifier:ftdInfo:isWithinPersisterTransaction:sendBlock:) in conformance MLS.EventSender<A, B>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v20 = (*(*v8 + 328) + **(*v8 + 328));
  v18 = swift_task_alloc();
  *(v9 + 16) = v18;
  *v18 = v9;
  v18[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v20(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t protocol witness for MLS.EventSenderProtocol.dequeue(groupVersion:groupIdentifier:identifier:dueToReflection:) in conformance MLS.EventSender<A, B>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v7 + 64) = a6;
  *(v7 + 48) = a5;
  *(v7 + 56) = v6;
  *(v7 + 32) = a3;
  *(v7 + 40) = a4;
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v8 = static MLSActor.shared;

  return MEMORY[0x2822009F8](protocol witness for MLS.EventSenderProtocol.dequeue(groupVersion:groupIdentifier:identifier:dueToReflection:) in conformance MLS.EventSender<A, B>, v8, 0);
}

uint64_t protocol witness for MLS.EventSenderProtocol.dequeue(groupVersion:groupIdentifier:identifier:dueToReflection:) in conformance MLS.EventSender<A, B>()
{
  (*(**(v0 + 56) + 360))(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 64));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t protocol witness for MLS.EventSenderProtocol.send(outgoingEvent:forGroup:retryBehavior:shouldPersistNewEvent:acknowledgementBlock:) in conformance MLS.EventSender<A, B>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v16 = (*(*v6 + 368) + **(*v6 + 368));
  v14 = swift_task_alloc();
  *(v7 + 16) = v14;
  *v14 = v7;
  v14[1] = protocol witness for MLS.Persister.loadClientIdentifiersWithEvents() in conformance MLS.InMemoryPersister;

  return v16(a1, a2, a3, a4, a5, a6);
}

uint64_t protocol witness for MLS.EventSenderProtocol.send(incomingEvent:forGroup:shouldPersistNewEvent:isReflectionEvent:) in conformance MLS.EventSender<A, B>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = (*(*v4 + 384) + **(*v4 + 384));
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v12(a1, a2, a3, a4);
}

uint64_t protocol witness for MLS.EventSenderProtocol.fetchGroupRecoveryInfo(group:) in conformance MLS.EventSender<A, B>(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 392) + **(*v2 + 392));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v8(a1, a2);
}

uint64_t protocol witness for MLS.EventSenderProtocol.fetchMembers(uris:) in conformance MLS.EventSender<A, B>(uint64_t a1)
{
  v6 = (*(*v1 + 400) + **(*v1 + 400));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = specialized KDSRegistration.XPCCoordinator.__allocating_init(clientIdentifier:provider:simUniqueID:simLabelID:supportedState:testPhoneNumberURI:);

  return v6(a1);
}

uint64_t specialized MLS.OutgoingEventType.identifier.getter()
{
  v1 = *(v0 + 144);
  v8[8] = *(v0 + 128);
  v8[9] = v1;
  v8[10] = *(v0 + 160);
  v9 = *(v0 + 176);
  v2 = *(v0 + 80);
  v8[4] = *(v0 + 64);
  v8[5] = v2;
  v3 = *(v0 + 112);
  v8[6] = *(v0 + 96);
  v8[7] = v3;
  v4 = *(v0 + 16);
  v8[0] = *v0;
  v8[1] = v4;
  v5 = *(v0 + 48);
  v8[2] = *(v0 + 32);
  v8[3] = v5;
  _s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGWOg(v8);
  destructiveProjectEnumData for KDSRegistration.XPCRequest.RequestType();
  destructiveProjectEnumData for KDSRegistration.XPCRequest.RequestType();
  return *v6;
}

unint64_t lazy protocol witness table accessor for type MLS.EventSenderError.CodingKeys and conformance MLS.EventSenderError.CodingKeys()
{
  result = lazy protocol witness table cache variable for type MLS.EventSenderError.CodingKeys and conformance MLS.EventSenderError.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.EventSenderError.CodingKeys and conformance MLS.EventSenderError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EventSenderError.CodingKeys and conformance MLS.EventSenderError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.EventSenderError.CodingKeys and conformance MLS.EventSenderError.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.EventSenderError.CodingKeys and conformance MLS.EventSenderError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EventSenderError.CodingKeys and conformance MLS.EventSenderError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.EventSenderError.CodingKeys and conformance MLS.EventSenderError.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.EventSenderError.CodingKeys and conformance MLS.EventSenderError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EventSenderError.CodingKeys and conformance MLS.EventSenderError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.EventSenderError.CodingKeys and conformance MLS.EventSenderError.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.EventSenderError.CodingKeys and conformance MLS.EventSenderError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EventSenderError.CodingKeys and conformance MLS.EventSenderError.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.EventSenderError.ErrorType and conformance MLS.EventSenderError.ErrorType()
{
  result = lazy protocol witness table cache variable for type MLS.EventSenderError.ErrorType and conformance MLS.EventSenderError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.EventSenderError.ErrorType and conformance MLS.EventSenderError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EventSenderError.ErrorType and conformance MLS.EventSenderError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.EventSenderError.ErrorType and conformance MLS.EventSenderError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.EventSenderError.ErrorType and conformance MLS.EventSenderError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EventSenderError.ErrorType and conformance MLS.EventSenderError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.EventSenderError.ErrorType and conformance MLS.EventSenderError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.EventSenderError.ErrorType and conformance MLS.EventSenderError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EventSenderError.ErrorType and conformance MLS.EventSenderError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.EventSenderError.ErrorType and conformance MLS.EventSenderError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.EventSenderError.ErrorType and conformance MLS.EventSenderError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EventSenderError.ErrorType and conformance MLS.EventSenderError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.EventSenderError.ErrorType and conformance MLS.EventSenderError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.EventSenderError.ErrorType and conformance MLS.EventSenderError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EventSenderError.ErrorType and conformance MLS.EventSenderError.ErrorType);
  }

  return result;
}

uint64_t specialized MLS.EventSenderError.init(from:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO16EventSenderErrorV10CodingKeys33_CD9D9A573DA392194EC02FE56EA74BE1LLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO16EventSenderErrorV10CodingKeys33_CD9D9A573DA392194EC02FE56EA74BE1LLOGMR);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9[-v5];
  v7 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  lazy protocol witness table accessor for type MLS.EventSenderError.CodingKeys and conformance MLS.EventSenderError.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v9[14] = 0;
    lazy protocol witness table accessor for type MLS.EventSenderError.ErrorType and conformance MLS.EventSenderError.ErrorType();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v7 = v9[15];
    v9[13] = 1;
    KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    (*(v4 + 8))(v6, v3);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v7;
}

uint64_t partial apply for closure #1 in MLS.EventSender.enqueue(groupIdentifier:identifier:isWithinPersisterTransaction:sendBlock:)(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + 16);
  v10 = *(v4 + 24);
  v11 = *(v4 + 32);
  v12 = *(v4 + 40);
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return closure #1 in MLS.EventSender.enqueue(groupIdentifier:identifier:isWithinPersisterTransaction:sendBlock:)(a1, a2, a3, a4, v9, v10, v11, v12);
}

uint64_t objectdestroyTm_1()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t partial apply for closure #1 in MLS.EventSender.enqueueSelfHeal(groupIdentifier:identifier:ftdInfo:isWithinPersisterTransaction:sendBlock:)(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + 16);
  v10 = *(v4 + 24);
  v11 = *(v4 + 32);
  v12 = *(v4 + 40);
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return closure #1 in MLS.EventSender.enqueueSelfHeal(groupIdentifier:identifier:ftdInfo:isWithinPersisterTransaction:sendBlock:)(a1, a2, a3, a4, v9, v10, v11, v12);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed @Sendable @async (@in_guaranteed MLS.OutgoingEventState?, @guaranteed String) -> (@out MLS.EventQueue.Result, @error @owned Error)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v8 = *(v3 + 16);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return thunk for @escaping @callee_guaranteed @Sendable @async (@in_guaranteed MLS.OutgoingEventState?, @guaranteed String) -> (@out MLS.EventQueue.Result, @error @owned Error)(a1, a2, a3, v8);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed @Sendable @async (@in_guaranteed MLS.OutgoingEventState?, @in_guaranteed String) -> (@out MLS.EventQueue.Result, @error @owned Error)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(v4 + 16);
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return thunk for @escaping @callee_guaranteed @Sendable @async (@in_guaranteed MLS.OutgoingEventState?, @in_guaranteed String) -> (@out MLS.EventQueue.Result, @error @owned Error)(a1, a2, a3, a4, v10);
}

uint64_t sub_26516EE20()
{

  outlined consume of MLS.OutgoingEventState.EventSpecificState(*(v0 + 40), *(v0 + 48), *(v0 + 56));

  v1 = *(v0 + 88);
  if (v1 >> 60 != 15)
  {
    outlined consume of Data._Representation(*(v0 + 80), v1);
  }

  return MEMORY[0x2821FE8E8](v0, 112, 7);
}

uint64_t partial apply for closure #1 in MLS.EventSender.enqueuePersisted(eventState:groupIdentifier:sendBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = v4[2];
  v11 = v4[12];
  v12 = v4[13];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return closure #1 in MLS.EventSender.enqueuePersisted(eventState:groupIdentifier:sendBlock:)(a1, a2, a3, a4, v10, (v4 + 3), v11, v12);
}

uint64_t sub_26516EF74()
{
  swift_unknownObjectRelease();

  outlined consume of MLS.OutgoingEventType<MLS.AllMember, Data>(*(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136), *(v0 + 144), *(v0 + 152), *(v0 + 160), *(v0 + 168), *(v0 + 176), *(v0 + 184), *(v0 + 192), *(v0 + 200), *(v0 + 208), *(v0 + 216));

  outlined consume of Data._Representation(*(v0 + 264), *(v0 + 272));
  outlined consume of Data._Representation(*(v0 + 280), *(v0 + 288));
  outlined consume of Data._Representation(*(v0 + 296), *(v0 + 304));
  v1 = *(v0 + 320);
  if (v1 >> 60 != 15)
  {
    outlined consume of Data._Representation(*(v0 + 312), v1);
  }

  if (*(v0 + 328))
  {
  }

  outlined consume of MLS.RetryAfterGroupVersionBehavior(*(v0 + 344), *(v0 + 352), *(v0 + 360), *(v0 + 368), *(v0 + 376), *(v0 + 384), *(v0 + 392), *(v0 + 400), *(v0 + 408), *(v0 + 416));

  return MEMORY[0x2821FE8E8](v0, 417, 7);
}

void outlined consume of MLS.RetryAfterGroupVersionBehavior(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9, unsigned __int8 a10)
{
  if (a10 <= 1u)
  {

    outlined consume of MLS.OutgoingEventState.EventSpecificState(a3, a4, a5);

    outlined consume of Data?(a8, a9);
  }
}

uint64_t partial apply for closure #1 in MLS.EventSender.send(outgoingEvent:forGroup:retryBehavior:shouldPersistNewEvent:acknowledgementBlock:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[41];
  v8 = v1[42];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return closure #1 in MLS.EventSender.send(outgoingEvent:forGroup:retryBehavior:shouldPersistNewEvent:acknowledgementBlock:)(a1, v4, v5, v6, (v1 + 5), (v1 + 28), v7, v8);
}

uint64_t _s15SecureMessaging3MLSO19OutgoingEventUpdateOWOi_(uint64_t result)
{
  v1 = *(result + 264);
  *(result + 176) &= 0x1FuLL;
  *(result + 264) = v1;
  return result;
}

uint64_t sub_26516F208()
{
  swift_unknownObjectRelease();

  outlined consume of MLS.IncomingEventType<MLS.AllMember, Data>(*(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136));

  outlined consume of Data._Representation(*(v0 + 184), *(v0 + 192));
  outlined consume of Data._Representation(*(v0 + 200), *(v0 + 208));
  outlined consume of Data._Representation(*(v0 + 216), *(v0 + 224));
  v1 = *(v0 + 240);
  if (v1 >> 60 != 15)
  {
    outlined consume of Data._Representation(*(v0 + 232), v1);
  }

  return MEMORY[0x2821FE8E8](v0, 249, 7);
}

void outlined consume of MLS.IncomingEventType<MLS.AllMember, Data>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, unint64_t a10, uint64_t a11, unint64_t a12, unsigned __int8 a13)
{
  if (a13 > 4u)
  {
    if (a13 <= 6u)
    {
      if (a13 != 5)
      {
        if (a13 != 6)
        {
          return;
        }

        goto LABEL_16;
      }
    }

    else if (a13 != 7)
    {
      if (a13 != 8)
      {
        if (a13 != 9)
        {
          return;
        }

        goto LABEL_17;
      }

      goto LABEL_16;
    }

LABEL_17:

    outlined consume of MLS.AllMember(a3, a4);

    outlined consume of Data?(a7, a8);
    return;
  }

  if (a13 <= 1u)
  {
    if (!a13)
    {

      outlined consume of MLS.AllMember(a3, a4);
      outlined consume of Data?(a7, a8);
      outlined consume of Data._Representation(a9, a10);
      goto LABEL_21;
    }
  }

  else if (a13 != 2 && a13 != 3)
  {
    if (a13 != 4)
    {
      return;
    }

    goto LABEL_17;
  }

LABEL_16:

  outlined consume of MLS.AllMember(a3, a4);
  outlined consume of Data?(a7, a8);
LABEL_21:
}

uint64_t partial apply for closure #1 in MLS.EventSender.send(incomingEvent:forGroup:shouldPersistNewEvent:isReflectionEvent:)(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 248);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return closure #1 in MLS.EventSender.send(incomingEvent:forGroup:shouldPersistNewEvent:isReflectionEvent:)(a1, v4, v5, v6, v1 + 40, v1 + 144, v7);
}

uint64_t sub_26516F564()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_26516F59C()
{

  outlined consume of Data._Representation(v0[12], v0[13]);
  outlined consume of Data._Representation(v0[14], v0[15]);
  outlined consume of Data._Representation(v0[16], v0[17]);
  v1 = v0[19];
  if (v1 >> 60 != 15)
  {
    outlined consume of Data._Representation(v0[18], v1);
  }

  return MEMORY[0x2821FE8E8](v0, 176, 7);
}

uint64_t partial apply for closure #1 in MLS.EventSender.fetchGroupRecoveryInfo(group:)(uint64_t a1)
{
  v4 = v1[6];
  v5 = v1[20];
  v6 = v1[21];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return closure #1 in MLS.EventSender.fetchGroupRecoveryInfo(group:)(a1, v4, (v1 + 7), v5, v6);
}

void outlined copy of MLS.GroupRecoveryInfo?(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2 >> 60 != 15)
  {
    outlined copy of Data._Representation(a1, a2);

    outlined copy of Data?(a3, a4);
  }
}

uint64_t sub_26516F750()
{

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t partial apply for closure #1 in MLS.EventSender.fetchMembers(uris:)(uint64_t a1)
{
  v4 = v1[6];
  v5 = v1[7];
  v6 = v1[8];
  v7 = v1[9];
  v8 = v1[10];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return closure #1 in MLS.EventSender.fetchMembers(uris:)(a1, v4, v5, v6, v7, v8);
}

unint64_t lazy protocol witness table accessor for type MLS.EventSenderError and conformance MLS.EventSenderError()
{
  result = lazy protocol witness table cache variable for type MLS.EventSenderError and conformance MLS.EventSenderError;
  if (!lazy protocol witness table cache variable for type MLS.EventSenderError and conformance MLS.EventSenderError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EventSenderError and conformance MLS.EventSenderError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.EventSenderError and conformance MLS.EventSenderError;
  if (!lazy protocol witness table cache variable for type MLS.EventSenderError and conformance MLS.EventSenderError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EventSenderError and conformance MLS.EventSenderError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.EventSenderError and conformance MLS.EventSenderError;
  if (!lazy protocol witness table cache variable for type MLS.EventSenderError and conformance MLS.EventSenderError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EventSenderError and conformance MLS.EventSenderError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.EventSenderError and conformance MLS.EventSenderError;
  if (!lazy protocol witness table cache variable for type MLS.EventSenderError and conformance MLS.EventSenderError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EventSenderError and conformance MLS.EventSenderError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.EventSenderError and conformance MLS.EventSenderError;
  if (!lazy protocol witness table cache variable for type MLS.EventSenderError and conformance MLS.EventSenderError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EventSenderError and conformance MLS.EventSenderError);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for MLS.EventSenderError(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type MLS.EventSenderError and conformance MLS.EventSenderError();
  a1[2] = lazy protocol witness table accessor for type MLS.EventSenderError and conformance MLS.EventSenderError();
  a1[3] = lazy protocol witness table accessor for type MLS.EventSenderError and conformance MLS.EventSenderError();
  result = lazy protocol witness table accessor for type MLS.EventSenderError and conformance MLS.EventSenderError();
  a1[4] = result;
  return result;
}

uint64_t sub_26516FBD8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 208))();
  *a2 = result;
  return result;
}

uint64_t sub_26516FC24(void *a1, uint64_t a2)
{
  v2 = *(**a2 + 216);

  return v2(v3);
}

__n128 sub_26516FC84(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t sub_26516FC90@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (*(**a1 + 232))();
  v5 = v4;
  result = swift_allocObject();
  *(result + 16) = v3;
  *(result + 24) = v5;
  *a2 = &thunk for @escaping @callee_guaranteed @Sendable @async (@in_guaranteed MLS.OutgoingEventState?, @guaranteed String) -> (@out MLS.EventQueue.Result, @error @owned Error)partial apply;
  a2[1] = result;
  return result;
}

uint64_t sub_26516FD24@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (*(**a1 + 256))();
  v5 = v4;
  result = swift_allocObject();
  *(result + 16) = v3;
  *(result + 24) = v5;
  *a2 = &async function pointer to partial apply for thunk for @escaping @callee_guaranteed @Sendable @async (@guaranteed String) -> (@error @owned Error);
  a2[1] = result;
  return result;
}

uint64_t sub_26516FDC0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (*(**a1 + 280))();
  v5 = v4;
  result = swift_allocObject();
  *(result + 16) = v3;
  *(result + 24) = v5;
  *a2 = &async function pointer to partial apply for thunk for @escaping @callee_guaranteed @Sendable @async (@guaranteed String, @in_guaranteed MLS.QueuedFTDInfo) -> (@error @owned Error);
  a2[1] = result;
  return result;
}

__n128 __swift_memcpy73_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for MLS.RetryAfterGroupVersionBehavior(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 73))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 72);
  if (v3 >= 3)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for MLS.RetryAfterGroupVersionBehavior(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 57) = 0u;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 73) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 73) = 0;
    }

    if (a2)
    {
      *(result + 72) = -a2;
    }
  }

  return result;
}

uint64_t destructiveInjectEnumTag for MLS.RetryAfterGroupVersionBehavior(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 64) = 0;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 72) = a2;
  return result;
}

uint64_t dispatch thunk of MLS.EventSenderProtocol.enqueue(groupIdentifier:identifier:isWithinPersisterTransaction:sendBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v19 = (*(a9 + 8) + **(a9 + 8));
  v17 = swift_task_alloc();
  *(v9 + 16) = v17;
  *v17 = v9;
  v17[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v19(a1, a2, a3, a4, a5, a6, a7, a8, a9);
}

uint64_t dispatch thunk of MLS.EventSenderProtocol.enqueueSelfHeal(groupIdentifier:identifier:ftdInfo:isWithinPersisterTransaction:sendBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v20 = (*(a10 + 16) + **(a10 + 16));
  v18 = swift_task_alloc();
  *(v10 + 16) = v18;
  *v18 = v10;
  v18[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v20(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
}

uint64_t dispatch thunk of MLS.EventSenderProtocol.dequeue(groupVersion:groupIdentifier:identifier:dueToReflection:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v19 = (*(a8 + 24) + **(a8 + 24));
  v17 = swift_task_alloc();
  *(v8 + 16) = v17;
  *v17 = v8;
  v17[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v19(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t dispatch thunk of MLS.EventSenderProtocol.send(outgoingEvent:forGroup:retryBehavior:shouldPersistNewEvent:acknowledgementBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v19 = (*(a8 + 32) + **(a8 + 32));
  v17 = swift_task_alloc();
  *(v8 + 16) = v17;
  *v17 = v8;
  v17[1] = dispatch thunk of MLS.RequiresGroupGroupOperation.membersRequiringKeyPackages(swiftMLSGroup:);

  return v19(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t dispatch thunk of MLS.EventSenderProtocol.send(incomingEvent:forGroup:shouldPersistNewEvent:isReflectionEvent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = (*(a6 + 40) + **(a6 + 40));
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v15(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of MLS.EventSenderProtocol.fetchGroupRecoveryInfo(group:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 48) + **(a4 + 48));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of MLS.EventSenderProtocol.fetchMembers(uris:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 56) + **(a3 + 56));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = dispatch thunk of MLS.RequiresGroupGroupOperation.membersRequiringKeyPackages(swiftMLSGroup:);

  return v9(a1, a2, a3);
}

uint64_t type metadata completion function for MLS.EventSender(uint64_t a1)
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

uint64_t dispatch thunk of MLS.EventSender.enqueue(groupIdentifier:identifier:isWithinPersisterTransaction:sendBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v18 = (*(*v7 + 320) + **(*v7 + 320));
  v16 = swift_task_alloc();
  *(v8 + 16) = v16;
  *v16 = v8;
  v16[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v18(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t dispatch thunk of MLS.EventSender.enqueueSelfHeal(groupIdentifier:identifier:ftdInfo:isWithinPersisterTransaction:sendBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v20 = (*(*v8 + 328) + **(*v8 + 328));
  v18 = swift_task_alloc();
  *(v9 + 16) = v18;
  *v18 = v9;
  v18[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v20(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t dispatch thunk of MLS.EventSender.reenqueueMatchingEventBehindSelfHeal(groupIdentifier:identifierWaitingReflection:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = (*(*v4 + 336) + **(*v4 + 336));
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v12(a1, a2, a3, a4);
}

uint64_t dispatch thunk of MLS.EventSender.reenqueueMatchingEvent(groupIdentifier:identifierWaitingReflection:sendBlockOverride:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v16 = (*(*v6 + 344) + **(*v6 + 344));
  v14 = swift_task_alloc();
  *(v7 + 16) = v14;
  *v14 = v7;
  v14[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v16(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of MLS.EventSender.enqueuePersisted(eventState:groupIdentifier:sendBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = (*(*v5 + 352) + **(*v5 + 352));
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  *v12 = v6;
  v12[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v14(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of MLS.EventSender.send(outgoingEvent:forGroup:retryBehavior:shouldPersistNewEvent:acknowledgementBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v16 = (*(*v6 + 368) + **(*v6 + 368));
  v14 = swift_task_alloc();
  *(v7 + 16) = v14;
  *v14 = v7;
  v14[1] = dispatch thunk of MLS.RequiresGroupGroupOperation.membersRequiringKeyPackages(swiftMLSGroup:);

  return v16(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of MLS.EventSender.send(incomingEvent:forGroup:shouldPersistNewEvent:isReflectionEvent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = (*(*v4 + 384) + **(*v4 + 384));
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v12(a1, a2, a3, a4);
}

uint64_t dispatch thunk of MLS.EventSender.fetchGroupRecoveryInfo(group:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 392) + **(*v2 + 392));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v8(a1, a2);
}

uint64_t dispatch thunk of MLS.EventSender.fetchMembers(uris:)(uint64_t a1)
{
  v6 = (*(*v1 + 400) + **(*v1 + 400));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = dispatch thunk of KDSRegistration.XPCCoordinator.__allocating_init(clientIdentifier:provider:simUniqueID:simLabelID:supportedState:testPhoneNumberURI:);

  return v6(a1);
}

uint64_t sub_2651718C8()
{

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

uint64_t partial apply for closure #1 in MLS.EventSender.completeEvent(identifier:storageIdentifier:groupIdentifier:)(uint64_t a1)
{
  v3 = v1[6];
  v4 = v1[7];
  v5 = v1[8];
  v6 = v1[9];
  v7 = v1[10];
  v8 = v1[11];
  v9 = v1[12];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return closure #1 in MLS.EventSender.completeEvent(identifier:storageIdentifier:groupIdentifier:)(a1, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t partial apply for closure #1 in closure #1 in MLS.EventSender.completeEvent(identifier:storageIdentifier:groupIdentifier:)(uint64_t a1)
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

  return closure #1 in closure #1 in MLS.EventSender.completeEvent(identifier:storageIdentifier:groupIdentifier:)(a1, v4, v5, v6, v7, v8);
}

uint64_t partial apply for closure #1 in MLS.EventSender.reenqueueAfterGroupVersion(retryBehavior:outgoingEvent:forGroup:futureGroupVersion:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return closure #1 in MLS.EventSender.reenqueueAfterGroupVersion(retryBehavior:outgoingEvent:forGroup:futureGroupVersion:)(a1, v4, v5, v6);
}

uint64_t _s15SecureMessaging3MLSO19OutgoingEventUpdateOWOi1_(uint64_t result)
{
  *(result + 176) &= 0x1FuLL;
  *(result + 268) = 0x80000000;
  return result;
}

uint64_t sub_265171C00()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed @Sendable @async (@in_guaranteed String, @in_guaranteed MLS.QueuedFTDInfo) -> (@out (), @error @owned Error)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + 16);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return thunk for @escaping @callee_guaranteed @Sendable @async (@in_guaranteed String, @in_guaranteed MLS.QueuedFTDInfo) -> (@out (), @error @owned Error)(a1, a2, a3, v8);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed @Sendable @async (@guaranteed String, @in_guaranteed MLS.QueuedFTDInfo) -> (@error @owned Error)(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v8 = *(v3 + 16);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return thunk for @escaping @callee_guaranteed @Sendable @async (@guaranteed String, @in_guaranteed MLS.QueuedFTDInfo) -> (@error @owned Error)(a1, a2, a3, v8);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed @Sendable @async (@in_guaranteed String) -> (@out (), @error @owned Error)(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return thunk for @escaping @callee_guaranteed @Sendable @async (@in_guaranteed String) -> (@out (), @error @owned Error)(a1, a2, v6);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed @Sendable @async (@guaranteed String) -> (@error @owned Error)(uint64_t a1, uint64_t *a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return thunk for @escaping @callee_guaranteed @Sendable @async (@guaranteed String) -> (@error @owned Error)(a1, a2, v6);
}

uint64_t outlined copy of MLS.FetchMemberResult<MLS.AllMember>(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 - 126 >= 2 && a4 - 254 >= 2)
  {
    return outlined copy of MLS.AllMember(a1, a2);
  }

  return a1;
}

uint64_t partial apply for closure #1 in MLS.EventSender.performWithRetry<A>(identifier:retryPolicy:work:failureBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(v4 + 24);
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return closure #1 in MLS.EventSender.performWithRetry<A>(identifier:retryPolicy:work:failureBlock:)(a1, a2, a3, a4, v10);
}

void outlined copy of MLS.FetchGroupRecoveryInfoResult(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t), void (*a6)(uint64_t, uint64_t))
{
  if (a2 >> 60 != 15 && (a2 & 0xF000000000000000) != 0xB000000000000000)
  {
    a5(a1);

    a6(a3, a4);
  }
}

uint64_t partial apply for closure #1 in closure #1 in MLS.EventSender.send(incomingEvent:forGroup:shouldPersistNewEvent:isReflectionEvent:)(uint64_t a1)
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

  return closure #1 in closure #1 in MLS.EventSender.send(incomingEvent:forGroup:shouldPersistNewEvent:isReflectionEvent:)(a1, v8, (v1 + 7), (v1 + 20), v4, v5, v6, v7);
}

uint64_t objectdestroy_180Tm()
{

  outlined consume of MLS.IncomingEventType<MLS.AllMember, Data>(*(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136), *(v0 + 144), *(v0 + 152));

  outlined consume of Data._Representation(*(v0 + 200), *(v0 + 208));
  outlined consume of Data._Representation(*(v0 + 216), *(v0 + 224));
  outlined consume of Data._Representation(*(v0 + 232), *(v0 + 240));
  v1 = *(v0 + 256);
  if (v1 >> 60 != 15)
  {
    outlined consume of Data._Representation(*(v0 + 248), v1);
  }

  return MEMORY[0x2821FE8E8](v0, 264, 7);
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in MLS.EventSender.send(incomingEvent:forGroup:shouldPersistNewEvent:isReflectionEvent:)(uint64_t a1)
{
  v4 = *(v1 + 48);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return closure #1 in closure #1 in closure #1 in MLS.EventSender.send(incomingEvent:forGroup:shouldPersistNewEvent:isReflectionEvent:)(a1, v4, v1 + 56, v1 + 160);
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in closure #1 in MLS.EventSender.send(incomingEvent:forGroup:shouldPersistNewEvent:isReflectionEvent:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return closure #1 in closure #1 in closure #1 in closure #1 in MLS.EventSender.send(incomingEvent:forGroup:shouldPersistNewEvent:isReflectionEvent:)(a1, v4, v5, v6);
}

uint64_t sub_2651723D0()
{

  outlined consume of MLS.OutgoingEventType<MLS.AllMember, Data>(*(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136), *(v0 + 144), *(v0 + 152), *(v0 + 160), *(v0 + 168), *(v0 + 176), *(v0 + 184), *(v0 + 192), *(v0 + 200), *(v0 + 208), *(v0 + 216), *(v0 + 224), *(v0 + 232));

  outlined consume of Data._Representation(*(v0 + 280), *(v0 + 288));
  outlined consume of Data._Representation(*(v0 + 296), *(v0 + 304));
  outlined consume of Data._Representation(*(v0 + 312), *(v0 + 320));
  v1 = *(v0 + 336);
  if (v1 >> 60 != 15)
  {
    outlined consume of Data._Representation(*(v0 + 328), v1);
  }

  if (*(v0 + 344))
  {
  }

  outlined consume of MLS.RetryAfterGroupVersionBehavior(*(v0 + 360), *(v0 + 368), *(v0 + 376), *(v0 + 384), *(v0 + 392), *(v0 + 400), *(v0 + 408), *(v0 + 416), *(v0 + 424), *(v0 + 432));

  return MEMORY[0x2821FE8E8](v0, 433, 7);
}

uint64_t partial apply for closure #1 in closure #1 in MLS.EventSender.send(outgoingEvent:forGroup:retryBehavior:shouldPersistNewEvent:acknowledgementBlock:)(uint64_t a1)
{
  v4 = v1[6];
  v5 = v1[43];
  v6 = v1[44];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return closure #1 in closure #1 in MLS.EventSender.send(outgoingEvent:forGroup:retryBehavior:shouldPersistNewEvent:acknowledgementBlock:)(a1, v4, (v1 + 7), (v1 + 30), v5, v6, (v1 + 45));
}

uint64_t sub_2651725B4()
{

  outlined consume of MLS.OutgoingEventType<MLS.AllMember, Data>(*(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136), *(v0 + 144), *(v0 + 152), *(v0 + 160), *(v0 + 168), *(v0 + 176), *(v0 + 184), *(v0 + 192), *(v0 + 200), *(v0 + 208), *(v0 + 216), *(v0 + 224), *(v0 + 232));

  outlined consume of Data._Representation(*(v0 + 280), *(v0 + 288));
  outlined consume of Data._Representation(*(v0 + 296), *(v0 + 304));
  outlined consume of Data._Representation(*(v0 + 312), *(v0 + 320));
  v1 = *(v0 + 336);
  if (v1 >> 60 != 15)
  {
    outlined consume of Data._Representation(*(v0 + 328), v1);
  }

  return MEMORY[0x2821FE8E8](v0, 344, 7);
}

uint64_t partial apply for closure #2 in closure #1 in MLS.EventSender.send(outgoingEvent:forGroup:retryBehavior:shouldPersistNewEvent:acknowledgementBlock:)()
{
  v2 = *(v0 + 48);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return closure #2 in closure #1 in MLS.EventSender.send(outgoingEvent:forGroup:retryBehavior:shouldPersistNewEvent:acknowledgementBlock:)(v2, v0 + 56, v0 + 240);
}

void outlined copy of MLS.SendResult(uint64_t a1, unint64_t a2, uint64_t a3, char a4)
{
  if (!a4)
  {
    outlined copy of Data?(a1, a2);
  }
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in MLS.EventSender.send(outgoingEvent:forGroup:retryBehavior:shouldPersistNewEvent:acknowledgementBlock:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return closure #1 in closure #1 in closure #1 in MLS.EventSender.send(outgoingEvent:forGroup:retryBehavior:shouldPersistNewEvent:acknowledgementBlock:)(a1, v4, v5, v7, v6);
}

uint64_t partial apply for closure #1 in closure #1 in MLS.EventSender.enqueuePersisted(eventState:groupIdentifier:sendBlock:)(uint64_t a1)
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

  return closure #1 in closure #1 in MLS.EventSender.enqueue(groupIdentifier:identifier:isWithinPersisterTransaction:sendBlock:)(a1, v4, v5, v6, v7, v8);
}

uint64_t partial apply for closure #1 in closure #1 in MLS.EventSender.enqueueSelfHeal(groupIdentifier:identifier:ftdInfo:isWithinPersisterTransaction:sendBlock:)(uint64_t a1)
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

  return closure #1 in closure #1 in MLS.EventSender.enqueueSelfHeal(groupIdentifier:identifier:ftdInfo:isWithinPersisterTransaction:sendBlock:)(a1, v4, v5, v6, v7, v8);
}

uint64_t partial apply for closure #1 in closure #1 in MLS.EventSender.enqueue(groupIdentifier:identifier:isWithinPersisterTransaction:sendBlock:)(uint64_t a1)
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

  return closure #1 in closure #1 in MLS.EventSender.enqueue(groupIdentifier:identifier:isWithinPersisterTransaction:sendBlock:)(a1, v4, v5, v6, v7, v8);
}

uint64_t MLS.AllMember.uri.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  *a1 = *v1;
  a1[1] = v3;
  return outlined copy of MLS.AllMember(v2, v3);
}

__n128 MLS.AllMember.init(allMember:)@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  v2 = a1[1].n128_u64[0];
  v3 = a1[1].n128_u8[8];
  result = *a1;
  *a2 = *a1;
  a2[1].n128_u64[0] = v2;
  a2[1].n128_u8[8] = v3;
  return result;
}

uint64_t protocol witness for Error._code.getter in conformance MLS.MemberError.ErrorType(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type MLS.MemberError.ErrorType and conformance MLS.MemberError.ErrorType();
  v5 = lazy protocol witness table accessor for type Int and conformance Int();

  return MEMORY[0x2821FE2D0](a1, a2, v4, v5);
}

uint64_t static MLS.MemberError.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    if (a4)
    {
      if (a1 == a3 && a2 == a4)
      {
        return 1;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        return 1;
      }
    }
  }

  else if (!a4)
  {
    return 1;
  }

  return 0;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.MemberError.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.MemberError.CodingKeys and conformance MLS.MemberError.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.MemberError.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.MemberError.CodingKeys and conformance MLS.MemberError.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MLS.MemberError.encode(to:)(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO11MemberErrorV10CodingKeys33_8B9661A580315150AD239B9FFE032C0ELLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO11MemberErrorV10CodingKeys33_8B9661A580315150AD239B9FFE032C0ELLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MLS.MemberError.CodingKeys and conformance MLS.MemberError.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v12 = 0;
  lazy protocol witness table accessor for type MLS.MemberError.ErrorType and conformance MLS.MemberError.ErrorType();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v3)
  {
    v11 = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t lazy protocol witness table accessor for type MLS.MemberError.CodingKeys and conformance MLS.MemberError.CodingKeys()
{
  result = lazy protocol witness table cache variable for type MLS.MemberError.CodingKeys and conformance MLS.MemberError.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.MemberError.CodingKeys and conformance MLS.MemberError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.MemberError.CodingKeys and conformance MLS.MemberError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.MemberError.CodingKeys and conformance MLS.MemberError.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.MemberError.CodingKeys and conformance MLS.MemberError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.MemberError.CodingKeys and conformance MLS.MemberError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.MemberError.CodingKeys and conformance MLS.MemberError.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.MemberError.CodingKeys and conformance MLS.MemberError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.MemberError.CodingKeys and conformance MLS.MemberError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.MemberError.CodingKeys and conformance MLS.MemberError.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.MemberError.CodingKeys and conformance MLS.MemberError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.MemberError.CodingKeys and conformance MLS.MemberError.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.MemberError.ErrorType and conformance MLS.MemberError.ErrorType()
{
  result = lazy protocol witness table cache variable for type MLS.MemberError.ErrorType and conformance MLS.MemberError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.MemberError.ErrorType and conformance MLS.MemberError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.MemberError.ErrorType and conformance MLS.MemberError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.MemberError.ErrorType and conformance MLS.MemberError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.MemberError.ErrorType and conformance MLS.MemberError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.MemberError.ErrorType and conformance MLS.MemberError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.MemberError.ErrorType and conformance MLS.MemberError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.MemberError.ErrorType and conformance MLS.MemberError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.MemberError.ErrorType and conformance MLS.MemberError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.MemberError.ErrorType and conformance MLS.MemberError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.MemberError.ErrorType and conformance MLS.MemberError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.MemberError.ErrorType and conformance MLS.MemberError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.MemberError.ErrorType and conformance MLS.MemberError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.MemberError.ErrorType and conformance MLS.MemberError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.MemberError.ErrorType and conformance MLS.MemberError.ErrorType);
  }

  return result;
}

uint64_t protocol witness for Error._domain.getter in conformance MLS.MemberError(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.MemberError and conformance MLS.MemberError();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t protocol witness for Error._code.getter in conformance MLS.MemberError(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.MemberError and conformance MLS.MemberError();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t protocol witness for Decodable.init(from:) in conformance MLS.MemberError@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = specialized MLS.MemberError.init(from:)(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
  }

  return result;
}

uint64_t MLS.AllMember.allMember.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = *(v1 + 24);
  return outlined copy of MLS.AllMember(v2, v3);
}

uint64_t MLS.AllMember.dataRepresentation.getter()
{
  v0 = type metadata accessor for JSONEncoder.OutputFormatting();
  MEMORY[0x28223BE20](v0 - 8);
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  static JSONEncoder.OutputFormatting.sortedKeys.getter();
  dispatch thunk of JSONEncoder.outputFormatting.setter();
  lazy protocol witness table accessor for type MLS.AllMember and conformance MLS.AllMember();
  v1 = dispatch thunk of JSONEncoder.encode<A>(_:)();

  return v1;
}

double MLS.AllMember.init(dataRepresentation:)@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  lazy protocol witness table accessor for type MLS.AllMember and conformance MLS.AllMember();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  outlined consume of Data._Representation(a1, a2);

  if (!v3)
  {
    result = *&v8;
    *a3 = v8;
    *(a3 + 16) = v9;
    *(a3 + 24) = v10;
  }

  return result;
}

uint64_t MLS.AllMember.description.getter()
{
  if (*(v0 + 24) < 0)
  {
    MEMORY[0x2667545A0](778857569, 0xE400000000000000);
    _print_unlocked<A, B>(_:_:)();
    return 0;
  }

  else
  {
    MEMORY[0x2667545A0](*v0, *(v0 + 8));
    MEMORY[0x2667545A0](778662517, 0xE400000000000000);

    return 778857569;
  }
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance MLS.AllMember.CodingKeys()
{
  if (*v0)
  {
    return 0x65626D654D736372;
  }

  else
  {
    return 0x65626D654D697275;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance MLS.AllMember.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x65626D654D697275 && a2 == 0xE900000000000072;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x65626D654D736372 && a2 == 0xE900000000000072)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.AllMember.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.AllMember.CodingKeys and conformance MLS.AllMember.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.AllMember.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.AllMember.CodingKeys and conformance MLS.AllMember.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance MLS.AllMember.RcsMemberCodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x65626D654D736372 && a2 == 0xE900000000000072)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.AllMember.RcsMemberCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.AllMember.RcsMemberCodingKeys and conformance MLS.AllMember.RcsMemberCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.AllMember.RcsMemberCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.AllMember.RcsMemberCodingKeys and conformance MLS.AllMember.RcsMemberCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance MLS.AllMember.UriMemberCodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x65626D654D697275 && a2 == 0xE900000000000072)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.AllMember.UriMemberCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.AllMember.UriMemberCodingKeys and conformance MLS.AllMember.UriMemberCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.AllMember.UriMemberCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.AllMember.UriMemberCodingKeys and conformance MLS.AllMember.UriMemberCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MLS.AllMember.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO9AllMemberO03RcsH10CodingKeys33_8B9661A580315150AD239B9FFE032C0ELLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO9AllMemberO03RcsH10CodingKeys33_8B9661A580315150AD239B9FFE032C0ELLOGMR);
  v20 = *(v3 - 8);
  v21 = v3;
  MEMORY[0x28223BE20](v3);
  v19 = &v18 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO9AllMemberO03UriH10CodingKeys33_8B9661A580315150AD239B9FFE032C0ELLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO9AllMemberO03UriH10CodingKeys33_8B9661A580315150AD239B9FFE032C0ELLOGMR);
  v22 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v18 - v6;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO9AllMemberO10CodingKeys33_8B9661A580315150AD239B9FFE032C0ELLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO9AllMemberO10CodingKeys33_8B9661A580315150AD239B9FFE032C0ELLOGMR);
  v8 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v10 = &v18 - v9;
  v11 = v1[1];
  v23 = *v1;
  v24 = v11;
  v18 = v1[2];
  v12 = *(v1 + 24);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MLS.AllMember.CodingKeys and conformance MLS.AllMember.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (v12 < 0)
  {
    LOBYTE(v26) = 1;
    lazy protocol witness table accessor for type MLS.AllMember.RcsMemberCodingKeys and conformance MLS.AllMember.RcsMemberCodingKeys();
    v15 = v19;
    v16 = v25;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v26 = v23;
    v27 = v24;
    v28 = v18;
    v29 = v12 & 1;
    lazy protocol witness table accessor for type MLS.EncryptedRCS.Member and conformance MLS.EncryptedRCS.Member();
    v17 = v21;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v20 + 8))(v15, v17);
    return (*(v8 + 8))(v10, v16);
  }

  else
  {
    LOBYTE(v26) = 0;
    lazy protocol witness table accessor for type MLS.AllMember.UriMemberCodingKeys and conformance MLS.AllMember.UriMemberCodingKeys();
    v13 = v25;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v26 = v23;
    v27 = v24;
    lazy protocol witness table accessor for type MLS.URIMember and conformance MLS.URIMember();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v22 + 8))(v7, v5);
    return (*(v8 + 8))(v10, v13);
  }
}

void MLS.AllMember.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 24);
  if (v2 < 0)
  {
    v4 = *(v1 + 16);
    MEMORY[0x266754DE0](1);
    String.hash(into:)();
    MEMORY[0x266754DE0](0);
    if (v2)
    {
      Hasher._combine(_:)(0);
      return;
    }

    Hasher._combine(_:)(1u);
    v3 = v4;
  }

  else
  {
    MEMORY[0x266754DE0](0);
    String.hash(into:)();
    v3 = 0;
  }

  MEMORY[0x266754DE0](v3);
}

Swift::Int MLS.AllMember.hashValue.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  Hasher.init(_seed:)();
  if ((v2 & 0x80000000) == 0)
  {
    MEMORY[0x266754DE0](0);
    String.hash(into:)();
    v3 = 0;
LABEL_6:
    MEMORY[0x266754DE0](v3);
    return Hasher._finalize()();
  }

  MEMORY[0x266754DE0](1);
  String.hash(into:)();
  MEMORY[0x266754DE0](0);
  if ((v2 & 1) == 0)
  {
    Hasher._combine(_:)(1u);
    v3 = v1;
    goto LABEL_6;
  }

  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

uint64_t MLS.AllMember.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO9AllMemberO03RcsH10CodingKeys33_8B9661A580315150AD239B9FFE032C0ELLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO9AllMemberO03RcsH10CodingKeys33_8B9661A580315150AD239B9FFE032C0ELLOGMR);
  v4 = *(v3 - 8);
  v34 = v3;
  v35 = v4;
  MEMORY[0x28223BE20](v3);
  v6 = &v32 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO9AllMemberO03UriH10CodingKeys33_8B9661A580315150AD239B9FFE032C0ELLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO9AllMemberO03UriH10CodingKeys33_8B9661A580315150AD239B9FFE032C0ELLOGMR);
  v33 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v32 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO9AllMemberO10CodingKeys33_8B9661A580315150AD239B9FFE032C0ELLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO9AllMemberO10CodingKeys33_8B9661A580315150AD239B9FFE032C0ELLOGMR);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v32 - v12;
  v14 = a1[3];
  v46 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  lazy protocol witness table accessor for type MLS.AllMember.CodingKeys and conformance MLS.AllMember.CodingKeys();
  v15 = v37;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v15)
  {
    v37 = v11;
    v16 = v36;
    v17 = KeyedDecodingContainer.allKeys.getter();
    v18 = (2 * *(v17 + 16)) | 1;
    v42 = v17;
    v43 = v17 + 32;
    v44 = 0;
    v45 = v18;
    v19 = specialized Collection<>.popFirst()();
    v20 = v10;
    if (v19 == 2 || v44 != v45 >> 1)
    {
      v22 = type metadata accessor for DecodingError();
      swift_allocError();
      v24 = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR);
      *v24 = &type metadata for MLS.AllMember;
      KeyedDecodingContainer.codingPath.getter();
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v22 - 8) + 104))(v24, *MEMORY[0x277D84160], v22);
      swift_willThrow();
      (*(v37 + 8))(v13, v10);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v19)
      {
        LOBYTE(v38) = 1;
        lazy protocol witness table accessor for type MLS.AllMember.RcsMemberCodingKeys and conformance MLS.AllMember.RcsMemberCodingKeys();
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v21 = v37;
        lazy protocol witness table accessor for type MLS.EncryptedRCS.Member and conformance MLS.EncryptedRCS.Member();
        v27 = v34;
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        (*(v35 + 8))(v6, v27);
        (*(v21 + 8))(v13, v20);
        swift_unknownObjectRelease();
        v28 = v38;
        v29 = v39;
        v30 = v40;
        v31 = v41 | 0x80;
      }

      else
      {
        LOBYTE(v38) = 0;
        lazy protocol witness table accessor for type MLS.AllMember.UriMemberCodingKeys and conformance MLS.AllMember.UriMemberCodingKeys();
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v26 = v37;
        lazy protocol witness table accessor for type MLS.URIMember and conformance MLS.URIMember();
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        (*(v33 + 8))(v9, v7);
        (*(v26 + 8))(v13, v10);
        swift_unknownObjectRelease();
        v30 = 0;
        v31 = 0;
        v28 = v38;
        v29 = v39;
      }

      *v16 = v28;
      *(v16 + 8) = v29;
      *(v16 + 16) = v30;
      *(v16 + 24) = v31;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v46);
}

uint64_t protocol witness for MLS.Member.uri.getter in conformance MLS.AllMember@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  *a1 = *v1;
  a1[1] = v3;
  return outlined copy of MLS.AllMember(v2, v3);
}

uint64_t protocol witness for MLS.Member.allMember.getter in conformance MLS.AllMember@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = *(v1 + 24);
  return outlined copy of MLS.AllMember(v2, v3);
}

__n128 protocol witness for MLS.Member.init(allMember:) in conformance MLS.AllMember@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  v2 = a1[1].n128_u64[0];
  v3 = a1[1].n128_u8[8];
  result = *a1;
  *a2 = *a1;
  a2[1].n128_u64[0] = v2;
  a2[1].n128_u8[8] = v3;
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance MLS.AllMember()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  Hasher.init(_seed:)();
  if ((v2 & 0x80000000) == 0)
  {
    MEMORY[0x266754DE0](0);
    String.hash(into:)();
    v3 = 0;
LABEL_6:
    MEMORY[0x266754DE0](v3);
    return Hasher._finalize()();
  }

  MEMORY[0x266754DE0](1);
  String.hash(into:)();
  MEMORY[0x266754DE0](0);
  if ((v2 & 1) == 0)
  {
    Hasher._combine(_:)(1u);
    v3 = v1;
    goto LABEL_6;
  }

  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance MLS.AllMember(uint64_t a1)
{
  v2 = *(v1 + 24);
  if (v2 < 0)
  {
    v4 = *(v1 + 16);
    MEMORY[0x266754DE0](1);
    String.hash(into:)();
    MEMORY[0x266754DE0](0);
    if (v2)
    {
      Hasher._combine(_:)(0);
      return;
    }

    Hasher._combine(_:)(1u);
    v3 = v4;
  }

  else
  {
    MEMORY[0x266754DE0](0);
    String.hash(into:)();
    v3 = 0;
  }

  MEMORY[0x266754DE0](v3);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance MLS.AllMember(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  Hasher.init(_seed:)();
  if ((v3 & 0x80000000) == 0)
  {
    MEMORY[0x266754DE0](0);
    String.hash(into:)();
    v4 = 0;
LABEL_6:
    MEMORY[0x266754DE0](v4);
    return Hasher._finalize()();
  }

  MEMORY[0x266754DE0](1);
  String.hash(into:)();
  MEMORY[0x266754DE0](0);
  if ((v3 & 1) == 0)
  {
    Hasher._combine(_:)(1u);
    v4 = v2;
    goto LABEL_6;
  }

  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

double MLS.URIMember.uri.getter@<D0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;

  return result;
}

void *MLS.URIMember.init(uri:)@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v2 = result[1];
  *a2 = *result;
  a2[1] = v2;
  return result;
}

double MLS.URIMember.allMember.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;

  return result;
}

uint64_t MLS.URIMember.init(allMember:)@<X0>(uint64_t result@<X0>, uint64_t *a2@<X8>)
{
  v3 = *result;
  v2 = *(result + 8);
  if (*(result + 24) < 0)
  {
    lazy protocol witness table accessor for type MLS.MemberError and conformance MLS.MemberError();
    swift_allocError();
    *v4 = 0;
    v4[1] = 0;
    swift_willThrow();
    return outlined consume of MLS.AllMember(v3, v2);
  }

  else
  {
    *a2 = v3;
    a2[1] = v2;
  }

  return result;
}

uint64_t static MLS.URIMember.== infix(_:_:)(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  v3 = _stringCompareWithSmolCheck(_:_:expecting:)();
  result = 0;
  if (v3)
  {
    return 1;
  }

  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance MLS.URIMember.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 6910581 && a2 == 0xE300000000000000)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.URIMember.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.URIMember.CodingKeys and conformance MLS.URIMember.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.URIMember.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.URIMember.CodingKeys and conformance MLS.URIMember.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MLS.URIMember.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO9URIMemberV10CodingKeys33_8B9661A580315150AD239B9FFE032C0ELLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO9URIMemberV10CodingKeys33_8B9661A580315150AD239B9FFE032C0ELLOGMR);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v10 - v5;
  v7 = *v1;
  v8 = v1[1];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MLS.URIMember.CodingKeys and conformance MLS.URIMember.CodingKeys();

  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10[0] = v7;
  v10[1] = v8;
  lazy protocol witness table accessor for type URI and conformance URI();
  KeyedEncodingContainer.encode<A>(_:forKey:)();

  return (*(v4 + 8))(v6, v3);
}

Swift::Int MLS.URIMember.hashValue.getter()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  MEMORY[0x266754DE0](0);
  return Hasher._finalize()();
}

uint64_t MLS.URIMember.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO9URIMemberV10CodingKeys33_8B9661A580315150AD239B9FFE032C0ELLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO9URIMemberV10CodingKeys33_8B9661A580315150AD239B9FFE032C0ELLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MLS.URIMember.CodingKeys and conformance MLS.URIMember.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    lazy protocol witness table accessor for type URI and conformance URI();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v6 + 8))(v8, v5);
    v9 = v11[1];
    *a2 = v11[0];
    a2[1] = v9;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

double protocol witness for MLS.Member.allMember.getter in conformance MLS.URIMember@<D0>(uint64_t a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;

  return result;
}

uint64_t protocol witness for MLS.Member.init(allMember:) in conformance MLS.URIMember@<X0>(uint64_t result@<X0>, uint64_t *a2@<X8>)
{
  v3 = *result;
  v2 = *(result + 8);
  if (*(result + 24) < 0)
  {
    lazy protocol witness table accessor for type MLS.MemberError and conformance MLS.MemberError();
    swift_allocError();
    *v4 = 0;
    v4[1] = 0;
    swift_willThrow();
    return outlined consume of MLS.AllMember(v3, v2);
  }

  else
  {
    *a2 = v3;
    a2[1] = v2;
  }

  return result;
}

BOOL specialized static MLS.AllMember.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v7 = *a2;
  v6 = *(a2 + 8);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  if ((v5 & 0x80000000) == 0)
  {
    if ((v9 & 0x80000000) == 0)
    {
      v10 = *a1;
      if (v3 != v7 || v2 != v6)
      {
        v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
        outlined copy of MLS.AllMember(v7, v6);
        outlined copy of MLS.AllMember(v3, v2);
        outlined consume of MLS.AllMember(v3, v2);
        outlined consume of MLS.AllMember(v7, v6);
        return v12 & 1;
      }

      outlined copy of MLS.AllMember(v10, v2);
      outlined copy of MLS.AllMember(v3, v2);
      outlined consume of MLS.AllMember(v3, v2);
      outlined consume of MLS.AllMember(v3, v2);
      return 1;
    }

    goto LABEL_9;
  }

  if ((v9 & 0x80000000) == 0)
  {
LABEL_9:
    outlined copy of MLS.AllMember(*a2, *(a2 + 8));
    outlined copy of MLS.AllMember(v3, v2);
    outlined consume of MLS.AllMember(v3, v2);
    outlined consume of MLS.AllMember(v7, v6);
    return 0;
  }

  v14 = *a1;
  if (v3 != v7 || v2 != v6)
  {
    v16 = _stringCompareWithSmolCheck(_:_:expecting:)();
    outlined copy of MLS.AllMember(v7, v6);
    outlined copy of MLS.AllMember(v3, v2);
    outlined consume of MLS.AllMember(v3, v2);
    outlined consume of MLS.AllMember(v7, v6);
    if ((v16 & 1) == 0)
    {
      return 0;
    }

    if (v5)
    {
      return (v9 & 1) != 0;
    }

    return (v9 & 1) == 0 && v4 == v8;
  }

  outlined copy of MLS.AllMember(v14, v2);
  outlined copy of MLS.AllMember(v3, v2);
  outlined consume of MLS.AllMember(v3, v2);
  outlined consume of MLS.AllMember(v3, v2);
  if ((v5 & 1) == 0)
  {
    return (v9 & 1) == 0 && v4 == v8;
  }

  return (v9 & 1) != 0;
}

uint64_t specialized MLS.MemberError.init(from:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO11MemberErrorV10CodingKeys33_8B9661A580315150AD239B9FFE032C0ELLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO11MemberErrorV10CodingKeys33_8B9661A580315150AD239B9FFE032C0ELLOGMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8[-v4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MLS.MemberError.CodingKeys and conformance MLS.MemberError.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  v8[15] = 0;
  lazy protocol witness table accessor for type MLS.MemberError.ErrorType and conformance MLS.MemberError.ErrorType();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v8[14] = 1;
  v6 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  (*(v3 + 8))(v5, v2);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v6;
}

unint64_t lazy protocol witness table accessor for type MLS.AllMember.CodingKeys and conformance MLS.AllMember.CodingKeys()
{
  result = lazy protocol witness table cache variable for type MLS.AllMember.CodingKeys and conformance MLS.AllMember.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.AllMember.CodingKeys and conformance MLS.AllMember.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.AllMember.CodingKeys and conformance MLS.AllMember.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.AllMember.CodingKeys and conformance MLS.AllMember.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.AllMember.CodingKeys and conformance MLS.AllMember.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.AllMember.CodingKeys and conformance MLS.AllMember.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.AllMember.CodingKeys and conformance MLS.AllMember.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.AllMember.CodingKeys and conformance MLS.AllMember.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.AllMember.CodingKeys and conformance MLS.AllMember.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.AllMember.CodingKeys and conformance MLS.AllMember.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.AllMember.CodingKeys and conformance MLS.AllMember.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.AllMember.CodingKeys and conformance MLS.AllMember.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.AllMember.RcsMemberCodingKeys and conformance MLS.AllMember.RcsMemberCodingKeys()
{
  result = lazy protocol witness table cache variable for type MLS.AllMember.RcsMemberCodingKeys and conformance MLS.AllMember.RcsMemberCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.AllMember.RcsMemberCodingKeys and conformance MLS.AllMember.RcsMemberCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.AllMember.RcsMemberCodingKeys and conformance MLS.AllMember.RcsMemberCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.AllMember.RcsMemberCodingKeys and conformance MLS.AllMember.RcsMemberCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.AllMember.RcsMemberCodingKeys and conformance MLS.AllMember.RcsMemberCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.AllMember.RcsMemberCodingKeys and conformance MLS.AllMember.RcsMemberCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.AllMember.RcsMemberCodingKeys and conformance MLS.AllMember.RcsMemberCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.AllMember.RcsMemberCodingKeys and conformance MLS.AllMember.RcsMemberCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.AllMember.RcsMemberCodingKeys and conformance MLS.AllMember.RcsMemberCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.AllMember.RcsMemberCodingKeys and conformance MLS.AllMember.RcsMemberCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.AllMember.RcsMemberCodingKeys and conformance MLS.AllMember.RcsMemberCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.AllMember.RcsMemberCodingKeys and conformance MLS.AllMember.RcsMemberCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.AllMember.UriMemberCodingKeys and conformance MLS.AllMember.UriMemberCodingKeys()
{
  result = lazy protocol witness table cache variable for type MLS.AllMember.UriMemberCodingKeys and conformance MLS.AllMember.UriMemberCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.AllMember.UriMemberCodingKeys and conformance MLS.AllMember.UriMemberCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.AllMember.UriMemberCodingKeys and conformance MLS.AllMember.UriMemberCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.AllMember.UriMemberCodingKeys and conformance MLS.AllMember.UriMemberCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.AllMember.UriMemberCodingKeys and conformance MLS.AllMember.UriMemberCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.AllMember.UriMemberCodingKeys and conformance MLS.AllMember.UriMemberCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.AllMember.UriMemberCodingKeys and conformance MLS.AllMember.UriMemberCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.AllMember.UriMemberCodingKeys and conformance MLS.AllMember.UriMemberCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.AllMember.UriMemberCodingKeys and conformance MLS.AllMember.UriMemberCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.AllMember.UriMemberCodingKeys and conformance MLS.AllMember.UriMemberCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.AllMember.UriMemberCodingKeys and conformance MLS.AllMember.UriMemberCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.AllMember.UriMemberCodingKeys and conformance MLS.AllMember.UriMemberCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.URIMember and conformance MLS.URIMember()
{
  result = lazy protocol witness table cache variable for type MLS.URIMember and conformance MLS.URIMember;
  if (!lazy protocol witness table cache variable for type MLS.URIMember and conformance MLS.URIMember)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.URIMember and conformance MLS.URIMember);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.URIMember and conformance MLS.URIMember;
  if (!lazy protocol witness table cache variable for type MLS.URIMember and conformance MLS.URIMember)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.URIMember and conformance MLS.URIMember);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.URIMember and conformance MLS.URIMember;
  if (!lazy protocol witness table cache variable for type MLS.URIMember and conformance MLS.URIMember)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.URIMember and conformance MLS.URIMember);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.URIMember and conformance MLS.URIMember;
  if (!lazy protocol witness table cache variable for type MLS.URIMember and conformance MLS.URIMember)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.URIMember and conformance MLS.URIMember);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.URIMember.CodingKeys and conformance MLS.URIMember.CodingKeys()
{
  result = lazy protocol witness table cache variable for type MLS.URIMember.CodingKeys and conformance MLS.URIMember.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.URIMember.CodingKeys and conformance MLS.URIMember.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.URIMember.CodingKeys and conformance MLS.URIMember.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.URIMember.CodingKeys and conformance MLS.URIMember.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.URIMember.CodingKeys and conformance MLS.URIMember.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.URIMember.CodingKeys and conformance MLS.URIMember.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.URIMember.CodingKeys and conformance MLS.URIMember.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.URIMember.CodingKeys and conformance MLS.URIMember.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.URIMember.CodingKeys and conformance MLS.URIMember.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.URIMember.CodingKeys and conformance MLS.URIMember.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.URIMember.CodingKeys and conformance MLS.URIMember.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.URIMember.CodingKeys and conformance MLS.URIMember.CodingKeys);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for MLS.MemberError(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type MLS.MemberError and conformance MLS.MemberError();
  a1[2] = lazy protocol witness table accessor for type MLS.MemberError and conformance MLS.MemberError();
  a1[3] = lazy protocol witness table accessor for type MLS.MemberError and conformance MLS.MemberError();
  result = lazy protocol witness table accessor for type MLS.MemberError and conformance MLS.MemberError();
  a1[4] = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for MLS.AllMember(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a1[1] = (a4)(a1, a2, a3);
  a1[2] = a5();
  result = a6();
  a1[3] = result;
  return result;
}

uint64_t getEnumTagSinglePayload for MLS.AllMember(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7F && *(a1 + 25))
  {
    return (*a1 + 127);
  }

  v3 = (*(a1 + 24) & 0x7E | (*(a1 + 24) >> 7)) ^ 0x7F;
  if (v3 >= 0x7E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for MLS.AllMember(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 127;
    if (a3 >= 0x7F)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 0;
      *(result + 24) = 2 * (((-a2 >> 1) & 0x3F) - (a2 << 6));
    }
  }

  return result;
}

uint64_t MLS.RCSClient._getCredentialSigningRequest(telURI:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8SwiftMLS0B0O9RCSClientC24CredentialSigningRequestVSgMd, &_s8SwiftMLS0B0O9RCSClientC24CredentialSigningRequestVSgMR);
  v6 = swift_task_alloc();
  v3[3] = v6;
  v9 = (*MEMORY[0x277D6AEC8] + MEMORY[0x277D6AEC8]);
  v7 = swift_task_alloc();
  v3[4] = v7;
  *v7 = v3;
  v7[1] = MLS.RCSClient._getCredentialSigningRequest(telURI:);

  return v9(v6, a2, a3);
}

uint64_t MLS.RCSClient._getCredentialSigningRequest(telURI:)()
{
  *(*v1 + 40) = v0;

  if (v0)
  {
    v2 = MLS.RCSClient._getCredentialSigningRequest(telURI:);
  }

  else
  {
    v2 = MLS.RCSClient._getCredentialSigningRequest(telURI:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v1 = v0[3];
  v2 = type metadata accessor for MLS.RCSClient.CredentialSigningRequest();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 48))(v1, 1, v2);
  v5 = v0[2];
  if (v4 == 1)
  {
    outlined destroy of NSObject?(v1, &_s8SwiftMLS0B0O9RCSClientC24CredentialSigningRequestVSgMd, &_s8SwiftMLS0B0O9RCSClientC24CredentialSigningRequestVSgMR);
    *v5 = 0u;
    *(v5 + 16) = 0u;
    *(v5 + 32) = 0;
  }

  else
  {
    *(v5 + 24) = v2;
    *(v5 + 32) = &protocol witness table for MLS.RCSClient.CredentialSigningRequest;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v5);
    (*(v3 + 32))(boxed_opaque_existential_1, v1, v2);
  }

  v7 = v0[1];

  return v7();
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t protocol witness for MLS.SwiftMLSRCSClientProtocol._getCredentialSigningRequest(telURI:) in conformance MLS.RCSClient(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return MLS.RCSClient._getCredentialSigningRequest(telURI:)(a1, a2, a3);
}

uint64_t protocol witness for MLS.SwiftMLSRCSClientProtocol.loadCredential(credential:telURI:) in conformance MLS.RCSClient(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*MEMORY[0x277D6AEC0] + MEMORY[0x277D6AEC0]);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v9(a1, a2, a3);
}

uint64_t protocol witness for MLS.SwiftMLSRCSClientProtocol.signNonceWithParticipantKey(_:) in conformance MLS.RCSClient(uint64_t a1, uint64_t a2)
{
  v7 = (*MEMORY[0x277D6AED0] + MEMORY[0x277D6AED0]);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v7(a1, a2);
}

uint64_t MLS.Client.Client._createGroup(groupID:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v8 = (*MEMORY[0x277D6AC18] + MEMORY[0x277D6AC18]);
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = MLS.Client.Client._createGroup(groupID:);

  return v8(a2, a3);
}

uint64_t MLS.Client.Client._createGroup(groupID:)(uint64_t a1)
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
    *(v4 + 32) = a1;

    return MEMORY[0x2822009F8](MLS.Client.Client._createGroup(groupID:), 0, 0);
  }
}

uint64_t MLS.Client.Client._joinGroup(welcome:ratchetTree:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v8 = (*MEMORY[0x277D6AC50] + MEMORY[0x277D6AC50]);
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = MLS.Client.Client._createGroup(groupID:);

  return v8(a2, a3);
}

uint64_t MLS.Client.Client._resync(_:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](MLS.Client.Client._resync(_:), 0, 0);
}

uint64_t MLS.Client.Client._resync(_:)()
{
  v1 = v0[2];
  v1[3] = type metadata accessor for MLS.Client.Client.ResyncOutput();
  v1[4] = &protocol witness table for MLS.Client.Client.ResyncOutput;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1);
  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  v3[1] = MLS.Client.Client._resync(_:);
  v4 = v0[3];

  return MEMORY[0x2821D00F0](boxed_opaque_existential_1, v4);
}

{
  v2 = *v1;
  *(v2 + 48) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](MLS.Client.Client._resync(_:), 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t __swift_deallocate_boxed_opaque_existential_1(uint64_t result)
{
  if ((*(*(*(result + 24) - 8) + 80) & 0x20000) != 0)
  {
    JUMPOUT(0x266755550);
  }

  return result;
}

uint64_t MLS.Client.Client._loadGroup(groupID:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v8 = (*MEMORY[0x277D6AC58] + MEMORY[0x277D6AC58]);
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = MLS.Client.Client._loadGroup(groupID:);

  return v8(a2, a3);
}

uint64_t MLS.Client.Client._loadGroup(groupID:)(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 32) = a1;

  if (v1)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x2822009F8](MLS.Client.Client._loadGroup(groupID:), 0, 0);
  }
}

uint64_t protocol witness for MLS.SwiftMLSClientProtocol.loadCredential(credential:) in conformance MLS.Client.Client(uint64_t a1)
{
  v5 = (*MEMORY[0x277D6AC30] + MEMORY[0x277D6AC30]);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v5(a1);
}

uint64_t protocol witness for MLS.SwiftMLSClientProtocol.listKeyPackages() in conformance MLS.Client.Client()
{
  v3 = (*MEMORY[0x277D6AC38] + MEMORY[0x277D6AC38]);
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = protocol witness for MLS.Persister.loadClientIdentifiersWithEvents() in conformance MLS.InMemoryPersister;

  return v3();
}

uint64_t protocol witness for MLS.SwiftMLSClientProtocol.generateKeyPackage() in conformance MLS.Client.Client(uint64_t a1)
{
  v5 = (*MEMORY[0x277D6AC40] + MEMORY[0x277D6AC40]);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v5(a1);
}

uint64_t protocol witness for MLS.SwiftMLSClientProtocol.changeClientUUID(newClientUUID:) in conformance MLS.Client.Client(uint64_t a1)
{
  v5 = (*MEMORY[0x277D6AC10] + MEMORY[0x277D6AC10]);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v5(a1);
}

uint64_t protocol witness for MLS.SwiftMLSClientProtocol._createGroup(groupID:) in conformance MLS.Client.Client(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v8 = (*MEMORY[0x277D6AC18] + MEMORY[0x277D6AC18]);
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = MLS.Client.Client._createGroup(groupID:);

  return v8(a2, a3);
}

uint64_t protocol witness for MLS.SwiftMLSClientProtocol._joinGroup(welcome:ratchetTree:) in conformance MLS.Client.Client(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v8 = (*MEMORY[0x277D6AC50] + MEMORY[0x277D6AC50]);
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = protocol witness for MLS.SwiftMLSClientProtocol._joinGroup(welcome:ratchetTree:) in conformance MLS.Client.Client;

  return v8(a2, a3);
}

uint64_t protocol witness for MLS.SwiftMLSClientProtocol._joinGroup(welcome:ratchetTree:) in conformance MLS.Client.Client(uint64_t a1)
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
    *(v4 + 32) = a1;

    return MEMORY[0x2822009F8](protocol witness for MLS.SwiftMLSClientProtocol._joinGroup(welcome:ratchetTree:) in conformance MLS.Client.Client, 0, 0);
  }
}

uint64_t protocol witness for MLS.SwiftMLSClientProtocol._joinGroup(welcome:ratchetTree:) in conformance MLS.Client.Client()
{
  v1 = v0[4];
  v2 = v0[2];
  v2[3] = type metadata accessor for MLS.Group.Group();
  v2[4] = &protocol witness table for MLS.Group.Group;
  *v2 = v1;
  v3 = v0[1];

  return v3();
}

uint64_t protocol witness for MLS.SwiftMLSClientProtocol._resync(_:) in conformance MLS.Client.Client(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = *v2;
  return MEMORY[0x2822009F8](MLS.Client.Client._resync(_:), 0, 0);
}

uint64_t protocol witness for MLS.SwiftMLSClientProtocol._loadGroup(groupID:) in conformance MLS.Client.Client(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v8 = (*MEMORY[0x277D6AC58] + MEMORY[0x277D6AC58]);
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = protocol witness for MLS.SwiftMLSClientProtocol._loadGroup(groupID:) in conformance MLS.Client.Client;

  return v8(a2, a3);
}

uint64_t protocol witness for MLS.SwiftMLSClientProtocol._loadGroup(groupID:) in conformance MLS.Client.Client(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 32) = a1;

  if (v1)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x2822009F8](protocol witness for MLS.SwiftMLSClientProtocol._loadGroup(groupID:) in conformance MLS.Client.Client, 0, 0);
  }
}

uint64_t protocol witness for MLS.SwiftMLSClientProtocol._loadGroup(groupID:) in conformance MLS.Client.Client()
{
  v1 = v0[4];
  if (v1)
  {
    v2 = type metadata accessor for MLS.Group.Group();
    v3 = &protocol witness table for MLS.Group.Group;
  }

  else
  {
    v2 = 0;
    v3 = 0;
    v4 = v0[2];
    *(v4 + 8) = 0;
    *(v4 + 16) = 0;
  }

  v5 = v0[2];
  *v5 = v1;
  v5[3] = v2;
  v5[4] = v3;
  v6 = v0[1];

  return v6();
}

uint64_t MLS.Group.Group._priorGroupMembership(_:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](MLS.Group.Group._priorGroupMembership(_:), 0, 0);
}

uint64_t MLS.Group.Group._priorGroupMembership(_:)()
{
  v1 = v0[2];
  v1[3] = type metadata accessor for MLS.Group.Group.PriorGroupMembershipOutput();
  v1[4] = &protocol witness table for MLS.Group.Group.PriorGroupMembershipOutput;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1);
  v6 = (*MEMORY[0x277D6AAE8] + MEMORY[0x277D6AAE8]);
  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  v3[1] = MLS.Client.Client._resync(_:);
  v4 = v0[3];

  return v6(boxed_opaque_existential_1, v4);
}

uint64_t MLS.Group.Group._createNewEra(_:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](MLS.Group.Group._createNewEra(_:), 0, 0);
}

uint64_t MLS.Group.Group._createNewEra(_:)()
{
  v1 = v0[2];
  v1[3] = type metadata accessor for MLS.Group.Group.CreateNewEraOutput();
  v1[4] = &protocol witness table for MLS.Group.Group.CreateNewEraOutput;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1);
  v6 = (*MEMORY[0x277D6AB30] + MEMORY[0x277D6AB30]);
  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  v3[1] = MLS.Client.Client._resync(_:);
  v4 = v0[3];

  return v6(boxed_opaque_existential_1, v4);
}

uint64_t MLS.Group.Group._performResurrection(_:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](MLS.Group.Group._performResurrection(_:), 0, 0);
}

uint64_t MLS.Group.Group._performResurrection(_:)()
{
  v1 = v0[2];
  v1[3] = type metadata accessor for MLS.Group.Group.ResurrectionOutput();
  v1[4] = &protocol witness table for MLS.Group.Group.ResurrectionOutput;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1);
  v6 = (*MEMORY[0x277D6AB78] + MEMORY[0x277D6AB78]);
  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  v3[1] = MLS.Client.Client._resync(_:);
  v4 = v0[3];

  return v6(boxed_opaque_existential_1, v4);
}

uint64_t MLS.Group.Group._addMembers(packages:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](MLS.Group.Group._addMembers(packages:), 0, 0);
}

uint64_t MLS.Group.Group._addMembers(packages:)()
{
  v1 = v0[2];
  v1[3] = type metadata accessor for MLS.Group.CommitOutput();
  v1[4] = &protocol witness table for MLS.Group.CommitOutput;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1);
  v6 = (*MEMORY[0x277D6AB00] + MEMORY[0x277D6AB00]);
  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  v3[1] = MLS.Client.Client._resync(_:);
  v4 = v0[3];

  return v6(boxed_opaque_existential_1, v4);
}

uint64_t MLS.Group.Group._removeMembers(signingIdentities:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](MLS.Group.Group._removeMembers(signingIdentities:), 0, 0);
}

uint64_t MLS.Group.Group._removeMembers(signingIdentities:)()
{
  v1 = v0[2];
  v1[3] = type metadata accessor for MLS.Group.CommitOutput();
  v1[4] = &protocol witness table for MLS.Group.CommitOutput;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1);
  v6 = (*MEMORY[0x277D6AB38] + MEMORY[0x277D6AB38]);
  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  v3[1] = MLS.Client.Client._resync(_:);
  v4 = v0[3];

  return v6(boxed_opaque_existential_1, v4, 0);
}

uint64_t MLS.Group.Group._performDowngradeToUnencrypted()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](MLS.Group.Group._performDowngradeToUnencrypted(), 0, 0);
}

uint64_t MLS.Group.Group._performDowngradeToUnencrypted()()
{
  v1 = *(v0 + 16);
  v1[3] = type metadata accessor for MLS.Group.Group.DowngradeOutput();
  v1[4] = &protocol witness table for MLS.Group.Group.DowngradeOutput;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1);
  v5 = (*MEMORY[0x277D6ABB8] + MEMORY[0x277D6ABB8]);
  v3 = swift_task_alloc();
  *(v0 + 32) = v3;
  *v3 = v0;
  v3[1] = MLS.Group.Group._performDowngradeToUnencrypted();

  return v5(boxed_opaque_existential_1);
}

{
  v2 = *v1;
  *(v2 + 40) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](MLS.Group.Group._performDowngradeToUnencrypted(), 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t MLS.Group.Group._selfUpdate()(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8SwiftMLS0B0O5GroupOADC15SelfUpdateInputVSgMd, &_s8SwiftMLS0B0O5GroupOADC15SelfUpdateInputVSgMR);
  v2[4] = swift_task_alloc();

  return MEMORY[0x2822009F8](MLS.Group.Group._selfUpdate(), 0, 0);
}

uint64_t MLS.Group.Group._selfUpdate()()
{
  v1 = v0[4];
  v2 = v0[2];
  updated = type metadata accessor for MLS.Group.Group.SelfUpdateInput();
  (*(*(updated - 8) + 56))(v1, 1, 1, updated);
  v2[3] = type metadata accessor for MLS.Group.CommitOutput();
  v2[4] = &protocol witness table for MLS.Group.CommitOutput;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v2);
  v8 = (*MEMORY[0x277D6AB18] + MEMORY[0x277D6AB18]);
  v5 = swift_task_alloc();
  v0[5] = v5;
  *v5 = v0;
  v5[1] = MLS.Group.Group._selfUpdate();
  v6 = v0[4];

  return v8(boxed_opaque_existential_1, v6);
}

{
  v2 = *(*v1 + 32);
  v3 = *v1;
  *(v3 + 48) = v0;

  outlined destroy of NSObject?(v2, &_s8SwiftMLS0B0O5GroupOADC15SelfUpdateInputVSgMd, &_s8SwiftMLS0B0O5GroupOADC15SelfUpdateInputVSgMR);
  if (v0)
  {

    return MEMORY[0x2822009F8](MLS.Group.Group._selfUpdate(), 0, 0);
  }

  else
  {

    v4 = *(v3 + 8);

    return v4();
  }
}

{
  __swift_deallocate_boxed_opaque_existential_1(*(v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t MLS.Group.Group._replaceExpiredCredential(_:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](MLS.Group.Group._replaceExpiredCredential(_:), 0, 0);
}

uint64_t MLS.Group.Group._replaceExpiredCredential(_:)()
{
  v1 = v0[2];
  v1[3] = type metadata accessor for MLS.Group.Group.ReplaceExpiredCredentialOutput();
  v1[4] = &protocol witness table for MLS.Group.Group.ReplaceExpiredCredentialOutput;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1);
  v6 = (*MEMORY[0x277D6AB88] + MEMORY[0x277D6AB88]);
  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  v3[1] = MLS.Client.Client._resync(_:);
  v4 = v0[3];

  return v6(boxed_opaque_existential_1, v4);
}

uint64_t MLS.Group.Group._changeRCSGroupName(_:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](MLS.Group.Group._changeRCSGroupName(_:), 0, 0);
}

uint64_t MLS.Group.Group._changeRCSGroupName(_:)()
{
  v1 = v0[2];
  v1[3] = type metadata accessor for MLS.Group.Group.ChangeRCSGroupNameOutput();
  v1[4] = &protocol witness table for MLS.Group.Group.ChangeRCSGroupNameOutput;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1);
  v6 = (*MEMORY[0x277D6AB68] + MEMORY[0x277D6AB68]);
  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  v3[1] = MLS.Client.Client._resync(_:);
  v4 = v0[3];

  return v6(boxed_opaque_existential_1, v4);
}

uint64_t MLS.Group.Group._decryptName(_:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](MLS.Group.Group._decryptName(_:), 0, 0);
}

uint64_t MLS.Group.Group._decryptName(_:)()
{
  v1 = v0[2];
  v1[3] = type metadata accessor for MLS.Group.Group.DecryptNameOutput();
  v1[4] = &protocol witness table for MLS.Group.Group.DecryptNameOutput;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1);
  v6 = (*MEMORY[0x277D6AB20] + MEMORY[0x277D6AB20]);
  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  v3[1] = MLS.Client.Client._resync(_:);
  v4 = v0[3];

  return v6(boxed_opaque_existential_1, v4);
}

uint64_t MLS.Group.Group._decryptNameKeys(_:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](MLS.Group.Group._decryptNameKeys(_:), 0, 0);
}

uint64_t MLS.Group.Group._decryptNameKeys(_:)()
{
  v1 = v0[2];
  v1[3] = type metadata accessor for MLS.Group.Group.DecryptNameKeysOutput();
  v1[4] = &protocol witness table for MLS.Group.Group.DecryptNameKeysOutput;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1);
  v6 = (*MEMORY[0x277D6AB48] + MEMORY[0x277D6AB48]);
  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  v3[1] = MLS.Client.Client._resync(_:);
  v4 = v0[3];

  return v6(boxed_opaque_existential_1, v4);
}

uint64_t MLS.Group.Group._commit()(uint64_t a1)
{
  v5 = (*MEMORY[0x277D6ABE0] + MEMORY[0x277D6ABE0]);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v5(a1);
}

uint64_t protocol witness for MLS.SwiftMLSGroupProtocol.groupID.getter in conformance MLS.Group.Group()
{
  v3 = (*MEMORY[0x277D6ABF8] + MEMORY[0x277D6ABF8]);
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = protocol witness for MLS.SwiftMLSGroupProtocol.groupID.getter in conformance MLS.Group.Group;

  return v3();
}

uint64_t protocol witness for MLS.SwiftMLSGroupProtocol.members.getter in conformance MLS.Group.Group()
{
  v3 = (*MEMORY[0x277D6AC00] + MEMORY[0x277D6AC00]);
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = protocol witness for MLS.Persister.loadClientIdentifiersWithEvents() in conformance MLS.InMemoryPersister;

  return v3();
}

uint64_t protocol witness for MLS.SwiftMLSGroupProtocol.epochID.getter in conformance MLS.Group.Group()
{
  v3 = (*MEMORY[0x277D6ABF0] + MEMORY[0x277D6ABF0]);
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = partial apply for closure #2 in KDSRegistration.XPCCoordinator.isRegisteredChanged(simUniqueID:isRegistered:context:completion:);

  return v3();
}

uint64_t protocol witness for MLS.SwiftMLSGroupProtocol.currentEra.getter in conformance MLS.Group.Group()
{
  v3 = (*MEMORY[0x277D6AB10] + MEMORY[0x277D6AB10]);
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = protocol witness for MLS.SwiftMLSGroupProtocol.currentEra.getter in conformance MLS.Group.Group;

  return v3();
}

uint64_t protocol witness for MLS.SwiftMLSGroupProtocol.currentEra.getter in conformance MLS.Group.Group(unint64_t a1)
{
  v4 = *v2;

  if (v1)
  {
    v5 = *(v4 + 8);

    return v5();
  }

  else
  {
    v7 = *(v4 + 8);

    return v7(a1 | ((HIDWORD(a1) & 1) << 32));
  }
}

uint64_t protocol witness for MLS.SwiftMLSGroupProtocol.hasEndMLS.getter in conformance MLS.Group.Group()
{
  v3 = (*MEMORY[0x277D6AAF0] + MEMORY[0x277D6AAF0]);
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = protocol witness for MLS.SwiftMLSGroupProtocol.hasEndMLS.getter in conformance MLS.Group.Group;

  return v3();
}

uint64_t protocol witness for MLS.SwiftMLSGroupProtocol.hasEndMLS.getter in conformance MLS.Group.Group(char a1)
{
  v7 = *v2;

  v4 = *(v7 + 8);
  if (v1)
  {
    v5 = 0;
  }

  else
  {
    v5 = a1 & 1;
  }

  return v4(v5);
}

uint64_t protocol witness for MLS.SwiftMLSGroupProtocol.credential.getter in conformance MLS.Group.Group(uint64_t a1)
{
  v5 = (*MEMORY[0x277D6AB08] + MEMORY[0x277D6AB08]);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v5(a1);
}

uint64_t protocol witness for MLS.SwiftMLSGroupProtocol.epochAuthenticator.getter in conformance MLS.Group.Group()
{
  v3 = (*MEMORY[0x277D6AB70] + MEMORY[0x277D6AB70]);
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = protocol witness for MLS.SwiftMLSGroupProtocol.epochAuthenticator.getter in conformance MLS.Group.Group;

  return v3();
}

uint64_t protocol witness for MLS.SwiftMLSGroupProtocol.epochAuthenticator.getter in conformance MLS.Group.Group(uint64_t a1, uint64_t a2)
{
  v7 = *v2;

  v5 = *(v7 + 8);

  return v5(a1, a2);
}

uint64_t protocol witness for MLS.SwiftMLSGroupProtocol.ratchetTree.getter in conformance MLS.Group.Group()
{
  v3 = (*MEMORY[0x277D6AB28] + MEMORY[0x277D6AB28]);
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = protocol witness for MLS.Storage.GroupStateStorage.readGroupState(groupID:) in conformance MLS.SwiftMLSPersister;

  return v3();
}

uint64_t protocol witness for MLS.SwiftMLSGroupProtocol.delete() in conformance MLS.Group.Group()
{
  v3 = (*MEMORY[0x277D6ABE8] + MEMORY[0x277D6ABE8]);
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v3();
}

uint64_t protocol witness for MLS.SwiftMLSGroupProtocol.generateGroupInfo() in conformance MLS.Group.Group(uint64_t a1)
{
  v5 = (*MEMORY[0x277D6AAF8] + MEMORY[0x277D6AAF8]);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v5(a1);
}

uint64_t protocol witness for MLS.SwiftMLSGroupProtocol.proposeRemoveSelf() in conformance MLS.Group.Group(uint64_t a1)
{
  v5 = (*MEMORY[0x277D6AB50] + MEMORY[0x277D6AB50]);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v5(a1);
}

uint64_t protocol witness for MLS.SwiftMLSGroupProtocol.encryptWrappedApplicationMessage(_:) in conformance MLS.Group.Group(uint64_t a1, uint64_t a2)
{
  v7 = (*MEMORY[0x277D6ABD0] + MEMORY[0x277D6ABD0]);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v7(a1, a2);
}

uint64_t protocol witness for MLS.SwiftMLSGroupProtocol.encryptApplicationMessageWithAAD(_:) in conformance MLS.Group.Group(uint64_t a1, uint64_t a2)
{
  v7 = (*MEMORY[0x277D6ABC8] + MEMORY[0x277D6ABC8]);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v7(a1, a2);
}

uint64_t protocol witness for MLS.SwiftMLSGroupProtocol.encryptApplicationMessage(_:) in conformance MLS.Group.Group(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*MEMORY[0x277D6AB90] + MEMORY[0x277D6AB90]);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v9(a1, a2, a3);
}

uint64_t protocol witness for MLS.SwiftMLSGroupProtocol.signPublicApplicationMessage(_:) in conformance MLS.Group.Group(uint64_t a1, uint64_t a2)
{
  v7 = (*MEMORY[0x277D6ABA8] + MEMORY[0x277D6ABA8]);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v7(a1, a2);
}

uint64_t protocol witness for MLS.SwiftMLSGroupProtocol.processIncomingMessage(message:readdedWelcome:) in conformance MLS.Group.Group(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*MEMORY[0x277D6AB80] + MEMORY[0x277D6AB80]);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v9(a1, a2, a3);
}

uint64_t protocol witness for MLS.SwiftMLSGroupProtocol.processIncomingApplicationMessage(message:) in conformance MLS.Group.Group(uint64_t a1, uint64_t a2)
{
  v7 = (*MEMORY[0x277D6ABD8] + MEMORY[0x277D6ABD8]);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v7(a1, a2);
}

uint64_t protocol witness for MLS.SwiftMLSGroupProtocol.processIncomingCommitList(message:) in conformance MLS.Group.Group(uint64_t a1)
{
  v5 = (*MEMORY[0x277D6AB98] + MEMORY[0x277D6AB98]);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = specialized KDSRegistration.XPCCoordinator.__allocating_init(clientIdentifier:provider:simUniqueID:simLabelID:supportedState:testPhoneNumberURI:);

  return v5(a1);
}

uint64_t protocol witness for MLS.SwiftMLSGroupProtocol.processIncomingProposalList(message:) in conformance MLS.Group.Group(uint64_t a1)
{
  v5 = (*MEMORY[0x277D6ABA0] + MEMORY[0x277D6ABA0]);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = protocol witness for MLS.Persister.loadClientIdentifiersWithEvents() in conformance MLS.InMemoryPersister;

  return v5(a1);
}

uint64_t protocol witness for MLS.SwiftMLSGroupProtocol._priorGroupMembership(_:) in conformance MLS.Group.Group(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = *v2;
  return MEMORY[0x2822009F8](protocol witness for MLS.SwiftMLSGroupProtocol._priorGroupMembership(_:) in conformance MLS.Group.Group, 0, 0);
}

uint64_t protocol witness for MLS.SwiftMLSGroupProtocol._priorGroupMembership(_:) in conformance MLS.Group.Group()
{
  v1 = v0[2];
  v1[3] = type metadata accessor for MLS.Group.Group.PriorGroupMembershipOutput();
  v1[4] = &protocol witness table for MLS.Group.Group.PriorGroupMembershipOutput;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1);
  v6 = (*MEMORY[0x277D6AAE8] + MEMORY[0x277D6AAE8]);
  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  v3[1] = protocol witness for MLS.SwiftMLSGroupProtocol._priorGroupMembership(_:) in conformance MLS.Group.Group;
  v4 = v0[3];

  return v6(boxed_opaque_existential_1, v4);
}

{
  v2 = *v1;
  *(v2 + 48) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](protocol witness for MLS.SwiftMLSGroupProtocol._priorGroupMembership(_:) in conformance MLS.Group.Group, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

{
  __swift_deallocate_boxed_opaque_existential_1(*(v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t protocol witness for MLS.SwiftMLSGroupProtocol._createNewEra(_:) in conformance MLS.Group.Group(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = *v2;
  return MEMORY[0x2822009F8](MLS.Group.Group._createNewEra(_:), 0, 0);
}

uint64_t protocol witness for MLS.SwiftMLSGroupProtocol._performResurrection(_:) in conformance MLS.Group.Group(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = *v2;
  return MEMORY[0x2822009F8](MLS.Group.Group._performResurrection(_:), 0, 0);
}

uint64_t protocol witness for MLS.SwiftMLSGroupProtocol._addMembers(packages:) in conformance MLS.Group.Group(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = *v2;
  return MEMORY[0x2822009F8](MLS.Group.Group._addMembers(packages:), 0, 0);
}

uint64_t protocol witness for MLS.SwiftMLSGroupProtocol._removeMembers(signingIdentities:) in conformance MLS.Group.Group(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = *v2;
  return MEMORY[0x2822009F8](MLS.Group.Group._removeMembers(signingIdentities:), 0, 0);
}

uint64_t protocol witness for MLS.SwiftMLSGroupProtocol._performDowngradeToUnencrypted() in conformance MLS.Group.Group(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](protocol witness for MLS.SwiftMLSGroupProtocol._performDowngradeToUnencrypted() in conformance MLS.Group.Group, 0, 0);
}

uint64_t protocol witness for MLS.SwiftMLSGroupProtocol._performDowngradeToUnencrypted() in conformance MLS.Group.Group()
{
  v1 = *(v0 + 16);
  v1[3] = type metadata accessor for MLS.Group.Group.DowngradeOutput();
  v1[4] = &protocol witness table for MLS.Group.Group.DowngradeOutput;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1);
  v5 = (*MEMORY[0x277D6ABB8] + MEMORY[0x277D6ABB8]);
  v3 = swift_task_alloc();
  *(v0 + 32) = v3;
  *v3 = v0;
  v3[1] = protocol witness for MLS.SwiftMLSGroupProtocol._performDowngradeToUnencrypted() in conformance MLS.Group.Group;

  return v5(boxed_opaque_existential_1);
}

{
  v2 = *v1;
  *(v2 + 40) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](protocol witness for MLS.SwiftMLSGroupProtocol._performDowngradeToUnencrypted() in conformance MLS.Group.Group, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

{
  __swift_deallocate_boxed_opaque_existential_1(*(v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t protocol witness for MLS.SwiftMLSGroupProtocol._selfUpdate() in conformance MLS.Group.Group(uint64_t a1)
{
  v2[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8SwiftMLS0B0O5GroupOADC15SelfUpdateInputVSgMd, &_s8SwiftMLS0B0O5GroupOADC15SelfUpdateInputVSgMR);
  v3 = swift_task_alloc();
  v4 = *v1;
  v2[3] = v3;
  v2[4] = v4;

  return MEMORY[0x2822009F8](protocol witness for MLS.SwiftMLSGroupProtocol._selfUpdate() in conformance MLS.Group.Group, 0, 0);
}

uint64_t protocol witness for MLS.SwiftMLSGroupProtocol._selfUpdate() in conformance MLS.Group.Group()
{
  v1 = v0[2];
  v2 = v0[3];
  updated = type metadata accessor for MLS.Group.Group.SelfUpdateInput();
  (*(*(updated - 8) + 56))(v2, 1, 1, updated);
  v1[3] = type metadata accessor for MLS.Group.CommitOutput();
  v1[4] = &protocol witness table for MLS.Group.CommitOutput;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1);
  v8 = (*MEMORY[0x277D6AB18] + MEMORY[0x277D6AB18]);
  v5 = swift_task_alloc();
  v0[5] = v5;
  *v5 = v0;
  v5[1] = protocol witness for MLS.SwiftMLSGroupProtocol._selfUpdate() in conformance MLS.Group.Group;
  v6 = v0[3];

  return v8(boxed_opaque_existential_1, v6);
}

{
  v2 = *(*v1 + 24);
  v3 = *v1;
  *(v3 + 48) = v0;

  outlined destroy of NSObject?(v2, &_s8SwiftMLS0B0O5GroupOADC15SelfUpdateInputVSgMd, &_s8SwiftMLS0B0O5GroupOADC15SelfUpdateInputVSgMR);
  if (v0)
  {

    return MEMORY[0x2822009F8](protocol witness for MLS.SwiftMLSGroupProtocol._selfUpdate() in conformance MLS.Group.Group, 0, 0);
  }

  else
  {

    v4 = *(v3 + 8);

    return v4();
  }
}

{
  __swift_deallocate_boxed_opaque_existential_1(*(v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t protocol witness for MLS.SwiftMLSGroupProtocol._replaceExpiredCredential(_:) in conformance MLS.Group.Group(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = *v2;
  return MEMORY[0x2822009F8](MLS.Group.Group._replaceExpiredCredential(_:), 0, 0);
}

uint64_t protocol witness for MLS.SwiftMLSGroupProtocol._changeRCSGroupName(_:) in conformance MLS.Group.Group(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = *v2;
  return MEMORY[0x2822009F8](MLS.Group.Group._changeRCSGroupName(_:), 0, 0);
}

uint64_t protocol witness for MLS.SwiftMLSGroupProtocol._decryptName(_:) in conformance MLS.Group.Group(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = *v2;
  return MEMORY[0x2822009F8](MLS.Group.Group._decryptName(_:), 0, 0);
}

uint64_t protocol witness for MLS.SwiftMLSGroupProtocol._decryptNameKeys(_:) in conformance MLS.Group.Group(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = *v2;
  return MEMORY[0x2822009F8](MLS.Group.Group._decryptNameKeys(_:), 0, 0);
}

uint64_t protocol witness for MLS.SwiftMLSGroupProtocol._commit() in conformance MLS.Group.Group(uint64_t a1)
{
  v5 = (*MEMORY[0x277D6ABE0] + MEMORY[0x277D6ABE0]);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v5(a1);
}

uint64_t MLS.Client.Client.ResyncOutput._group.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = MLS.Client.Client.ResyncOutput.group.getter();
  result = type metadata accessor for MLS.Group.Group();
  a1[3] = result;
  a1[4] = &protocol witness table for MLS.Group.Group;
  *a1 = v2;
  return result;
}

uint64_t protocol witness for MLS.SwiftMLSResyncOutputProtocol._group.getter in conformance MLS.Client.Client.ResyncOutput@<X0>(uint64_t *a1@<X8>)
{
  v2 = MLS.Client.Client.ResyncOutput.group.getter();
  result = type metadata accessor for MLS.Group.Group();
  a1[3] = result;
  a1[4] = &protocol witness table for MLS.Group.Group;
  *a1 = v2;
  return result;
}

uint64_t MLS.Group.Group.CreateNewEraOutput._commitOutput.getter@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  a2[3] = type metadata accessor for MLS.Group.CommitOutput();
  a2[4] = &protocol witness table for MLS.Group.CommitOutput;
  __swift_allocate_boxed_opaque_existential_1(a2);
  return a1();
}

uint64_t protocol witness for MLS.SwiftMLSCreateNewEraOutputProtocol._commitOutput.getter in conformance MLS.Group.Group.CreateNewEraOutput@<X0>(uint64_t (*a1)(void)@<X2>, uint64_t *a2@<X8>)
{
  a2[3] = type metadata accessor for MLS.Group.CommitOutput();
  a2[4] = &protocol witness table for MLS.Group.CommitOutput;
  __swift_allocate_boxed_opaque_existential_1(a2);
  return a1();
}

uint64_t dispatch thunk of MLS.SwiftMLSRCSClientProtocol._getCredentialSigningRequest(telURI:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 16) + **(a5 + 16));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v13(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of MLS.SwiftMLSRCSClientProtocol.loadCredential(credential:telURI:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 24) + **(a5 + 24));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v13(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of MLS.SwiftMLSRCSClientProtocol.signNonceWithParticipantKey(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 32) + **(a4 + 32));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of MLS.SwiftMLSClientProtocol.loadCredential(credential:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 32) + **(a3 + 32));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of MLS.SwiftMLSClientProtocol.listKeyPackages()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 40) + **(a2 + 40));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = dispatch thunk of MLS.RequiresGroupGroupOperation.membersRequiringKeyPackages(swiftMLSGroup:);

  return v7(a1, a2);
}

uint64_t dispatch thunk of MLS.SwiftMLSClientProtocol.generateKeyPackage()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 48) + **(a3 + 48));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of MLS.SwiftMLSClientProtocol.changeClientUUID(newClientUUID:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 56) + **(a3 + 56));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of MLS.SwiftMLSClientProtocol._createGroup(groupID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 64) + **(a5 + 64));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v13(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of MLS.SwiftMLSClientProtocol._joinGroup(welcome:ratchetTree:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 72) + **(a5 + 72));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v13(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of MLS.SwiftMLSClientProtocol._resync(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 80) + **(a4 + 80));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of MLS.SwiftMLSClientProtocol._loadGroup(groupID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 88) + **(a5 + 88));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v13(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of MLS.SwiftMLSGroupProtocol.groupID.getter(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 8) + **(a2 + 8));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = protocol witness for MLS.SwiftMLSGroupProtocol.groupID.getter in conformance MLS.Group.Group;

  return v7(a1, a2);
}

uint64_t dispatch thunk of MLS.SwiftMLSGroupProtocol.members.getter(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 16) + **(a2 + 16));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = dispatch thunk of MLS.RequiresGroupGroupOperation.membersRequiringKeyPackages(swiftMLSGroup:);

  return v7(a1, a2);
}

uint64_t dispatch thunk of MLS.SwiftMLSGroupProtocol.epochID.getter(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 24) + **(a2 + 24));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for closure #2 in KDSRegistration.XPCCoordinator.isRegisteredChanged(simUniqueID:isRegistered:context:completion:);

  return v7(a1, a2);
}

uint64_t dispatch thunk of MLS.SwiftMLSGroupProtocol.currentEra.getter(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 32) + **(a2 + 32));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = dispatch thunk of MLS.SwiftMLSGroupProtocol.currentEra.getter;

  return v7(a1, a2);
}

uint64_t dispatch thunk of MLS.SwiftMLSGroupProtocol.currentEra.getter(unint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1 | ((HIDWORD(a1) & 1) << 32));
}

uint64_t dispatch thunk of MLS.SwiftMLSGroupProtocol.hasEndMLS.getter(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 40) + **(a2 + 40));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = dispatch thunk of KDSRegistration.XPCCoordinator.__allocating_init(clientIdentifier:provider:simUniqueID:simLabelID:supportedState:testPhoneNumberURI:);

  return v7(a1, a2);
}

uint64_t dispatch thunk of MLS.SwiftMLSGroupProtocol.credential.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 48) + **(a3 + 48));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of MLS.SwiftMLSGroupProtocol.epochAuthenticator.getter(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 56) + **(a2 + 56));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = protocol witness for MLS.SwiftMLSGroupProtocol.epochAuthenticator.getter in conformance MLS.Group.Group;

  return v7(a1, a2);
}

uint64_t dispatch thunk of MLS.SwiftMLSGroupProtocol.ratchetTree.getter(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 64) + **(a2 + 64));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = dispatch thunk of MLS.SwiftMLSPersister.readEpochData(groupID:epochID:);

  return v7(a1, a2);
}

uint64_t dispatch thunk of MLS.SwiftMLSGroupProtocol.delete()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 72) + **(a2 + 72));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v7(a1, a2);
}

uint64_t dispatch thunk of MLS.SwiftMLSGroupProtocol.generateGroupInfo()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 80) + **(a3 + 80));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of MLS.SwiftMLSGroupProtocol.proposeRemoveSelf()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 88) + **(a3 + 88));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of MLS.SwiftMLSGroupProtocol.encryptWrappedApplicationMessage(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 96) + **(a4 + 96));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of MLS.SwiftMLSGroupProtocol.encryptApplicationMessageWithAAD(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 104) + **(a4 + 104));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of MLS.SwiftMLSGroupProtocol.encryptApplicationMessage(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 112) + **(a5 + 112));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v13(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of MLS.SwiftMLSGroupProtocol.signPublicApplicationMessage(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 120) + **(a4 + 120));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of MLS.SwiftMLSGroupProtocol.processIncomingMessage(message:readdedWelcome:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 128) + **(a5 + 128));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v13(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of MLS.SwiftMLSGroupProtocol.processIncomingApplicationMessage(message:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 136) + **(a4 + 136));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of MLS.SwiftMLSGroupProtocol.processIncomingCommitList(message:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 144) + **(a3 + 144));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = dispatch thunk of KDSRegistration.XPCCoordinator.__allocating_init(clientIdentifier:provider:simUniqueID:simLabelID:supportedState:testPhoneNumberURI:);

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of MLS.SwiftMLSGroupProtocol.processIncomingProposalList(message:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 152) + **(a3 + 152));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = dispatch thunk of MLS.RequiresGroupGroupOperation.membersRequiringKeyPackages(swiftMLSGroup:);

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of MLS.SwiftMLSGroupProtocol._priorGroupMembership(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 160) + **(a4 + 160));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of MLS.SwiftMLSGroupProtocol._createNewEra(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 168) + **(a4 + 168));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of MLS.SwiftMLSGroupProtocol._performResurrection(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 176) + **(a4 + 176));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of MLS.SwiftMLSGroupProtocol._addMembers(packages:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 184) + **(a4 + 184));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of MLS.SwiftMLSGroupProtocol._removeMembers(signingIdentities:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 192) + **(a4 + 192));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of MLS.SwiftMLSGroupProtocol._performDowngradeToUnencrypted()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 200) + **(a3 + 200));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of MLS.SwiftMLSGroupProtocol._selfUpdate()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 208) + **(a3 + 208));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of MLS.SwiftMLSGroupProtocol._replaceExpiredCredential(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 216) + **(a4 + 216));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of MLS.SwiftMLSGroupProtocol._changeRCSGroupName(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 224) + **(a4 + 224));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of MLS.SwiftMLSGroupProtocol._decryptName(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 232) + **(a4 + 232));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of MLS.SwiftMLSGroupProtocol._decryptNameKeys(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 240) + **(a4 + 240));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of MLS.SwiftMLSGroupProtocol._commit()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 248) + **(a3 + 248));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v9(a1, a2, a3);
}

uint64_t XPCUtils.XPCNotifyListener.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = 0;
  return result;
}

uint64_t XPCUtils.XPCNotifyListener.notifyToken.setter(int a1)
{
  result = swift_beginAccess();
  *(v1 + 16) = a1;
  return result;
}

uint64_t XPCUtils.XPCNotifyListener.init()()
{
  result = v0;
  *(v0 + 16) = 0;
  return result;
}

void XPCUtils.XPCNotifyListener.setup(postIdentifier:notifyBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v26 = a4;
  v25 = a3;
  v35 = *MEMORY[0x277D85DE8];
  v6 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v23 = *(v6 - 8);
  v24 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for OS_dispatch_queue.Attributes();
  MEMORY[0x28223BE20](v9);
  v10 = type metadata accessor for DispatchQoS();
  MEMORY[0x28223BE20](v10 - 8);
  v11 = type metadata accessor for String.Encoding();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  aBlock = a1;
  v29 = a2;
  static String.Encoding.utf8.getter();
  lazy protocol witness table accessor for type String and conformance String();
  v15 = StringProtocol.cString(using:)();
  (*(v12 + 8))(v14, v11);
  type metadata accessor for OS_dispatch_queue();
  static DispatchQoS.unspecified.getter();
  aBlock = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v23 + 104))(v8, *MEMORY[0x277D85260], v24);
  v16 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  out_token = 0;
  v17 = swift_allocObject();
  v18 = v26;
  *(v17 + 16) = v25;
  *(v17 + 24) = v18;
  v32 = partial apply for thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v33 = v17;
  aBlock = MEMORY[0x277D85DD0];
  v29 = 1107296256;
  v30 = thunk for @escaping @callee_guaranteed (@unowned Int32) -> ();
  v31 = &block_descriptor_3;
  v19 = _Block_copy(&aBlock);
  v20 = v16;

  if (v15)
  {
    v21 = (v15 + 32);
  }

  else
  {
    v21 = 0;
  }

  notify_register_dispatch(v21, &out_token, v20, v19);

  _Block_release(v19);

  (*(*v27 + 96))(out_token);
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

unint64_t lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes()
{
  result = lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes;
  if (!lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes)
  {
    type metadata accessor for OS_dispatch_queue.Attributes();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A];
  if (!lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A]);
  }

  return result;
}

uint64_t sub_26517D9D4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t thunk for @escaping @callee_guaranteed (@unowned Int32) -> ()(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t XPCUtils.XPCNotifyListener.deinit()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  if (v1)
  {
    notify_cancel(v1);
  }

  return v0;
}

uint64_t XPCUtils.XPCNotifyListener.__deallocating_deinit()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  if (v1)
  {
    notify_cancel(v1);
  }

  return swift_deallocClassInstance();
}

uint64_t static XPCUtils.XPCNotifyPoster.post(postIdentifier:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for String.Encoding();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11[0] = a1;
  v11[1] = a2;
  static String.Encoding.utf8.getter();
  lazy protocol witness table accessor for type String and conformance String();
  v8 = StringProtocol.cString(using:)();
  (*(v5 + 8))(v7, v4);
  if (v8)
  {
    v9 = (v8 + 32);
  }

  else
  {
    v9 = 0;
  }

  notify_post(v9);
}

uint64_t sub_26517DC50@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  result = (*(**a1 + 88))();
  *a2 = result;
  return result;
}

unint64_t MLS.ClientCreationError.ErrorType.init(rawValue:)@<X0>(unint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 7;
  if (result < 7)
  {
    v2 = result;
  }

  *a2 = v2;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.ClientCreationError.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.ClientCreationError.CodingKeys and conformance MLS.ClientCreationError.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.ClientCreationError.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.ClientCreationError.CodingKeys and conformance MLS.ClientCreationError.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MLS.ClientCreationError.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO19ClientCreationErrorV10CodingKeys33_5309206B028A85FFD18B62942080C5A0LLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO19ClientCreationErrorV10CodingKeys33_5309206B028A85FFD18B62942080C5A0LLOGMR);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v11 - v6;
  v8 = *v1;
  v9 = *(v1 + 1);
  v11[0] = *(v1 + 2);
  v11[1] = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MLS.ClientCreationError.CodingKeys and conformance MLS.ClientCreationError.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = v8;
  v13 = 0;
  lazy protocol witness table accessor for type MLS.ClientCreationError.ErrorType and conformance MLS.ClientCreationError.ErrorType();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v12 = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t lazy protocol witness table accessor for type MLS.ClientCreationError.CodingKeys and conformance MLS.ClientCreationError.CodingKeys()
{
  result = lazy protocol witness table cache variable for type MLS.ClientCreationError.CodingKeys and conformance MLS.ClientCreationError.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.ClientCreationError.CodingKeys and conformance MLS.ClientCreationError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.ClientCreationError.CodingKeys and conformance MLS.ClientCreationError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.ClientCreationError.CodingKeys and conformance MLS.ClientCreationError.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.ClientCreationError.CodingKeys and conformance MLS.ClientCreationError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.ClientCreationError.CodingKeys and conformance MLS.ClientCreationError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.ClientCreationError.CodingKeys and conformance MLS.ClientCreationError.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.ClientCreationError.CodingKeys and conformance MLS.ClientCreationError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.ClientCreationError.CodingKeys and conformance MLS.ClientCreationError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.ClientCreationError.CodingKeys and conformance MLS.ClientCreationError.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.ClientCreationError.CodingKeys and conformance MLS.ClientCreationError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.ClientCreationError.CodingKeys and conformance MLS.ClientCreationError.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.ClientCreationError.ErrorType and conformance MLS.ClientCreationError.ErrorType()
{
  result = lazy protocol witness table cache variable for type MLS.ClientCreationError.ErrorType and conformance MLS.ClientCreationError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.ClientCreationError.ErrorType and conformance MLS.ClientCreationError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.ClientCreationError.ErrorType and conformance MLS.ClientCreationError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.ClientCreationError.ErrorType and conformance MLS.ClientCreationError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.ClientCreationError.ErrorType and conformance MLS.ClientCreationError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.ClientCreationError.ErrorType and conformance MLS.ClientCreationError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.ClientCreationError.ErrorType and conformance MLS.ClientCreationError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.ClientCreationError.ErrorType and conformance MLS.ClientCreationError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.ClientCreationError.ErrorType and conformance MLS.ClientCreationError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.ClientCreationError.ErrorType and conformance MLS.ClientCreationError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.ClientCreationError.ErrorType and conformance MLS.ClientCreationError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.ClientCreationError.ErrorType and conformance MLS.ClientCreationError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.ClientCreationError.ErrorType and conformance MLS.ClientCreationError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.ClientCreationError.ErrorType and conformance MLS.ClientCreationError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.ClientCreationError.ErrorType and conformance MLS.ClientCreationError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.ClientCreationError.ErrorType and conformance MLS.ClientCreationError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.ClientCreationError.ErrorType and conformance MLS.ClientCreationError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.ClientCreationError.ErrorType and conformance MLS.ClientCreationError.ErrorType);
  }

  return result;
}

uint64_t MLS.ClientCreationError.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO19ClientCreationErrorV10CodingKeys33_5309206B028A85FFD18B62942080C5A0LLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO19ClientCreationErrorV10CodingKeys33_5309206B028A85FFD18B62942080C5A0LLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MLS.ClientCreationError.CodingKeys and conformance MLS.ClientCreationError.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v16 = 0;
    lazy protocol witness table accessor for type MLS.ClientCreationError.ErrorType and conformance MLS.ClientCreationError.ErrorType();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v9 = v17;
    v15 = 1;
    v11 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v13 = v12;
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    *(a2 + 8) = v11;
    *(a2 + 16) = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t protocol witness for Error._domain.getter in conformance MLS.ClientCreationError(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.ClientCreationError and conformance MLS.ClientCreationError();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t protocol witness for Error._code.getter in conformance MLS.ClientCreationError(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.ClientCreationError and conformance MLS.ClientCreationError();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.SelfKeyPackageError.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.SelfKeyPackageError.CodingKeys and conformance MLS.SelfKeyPackageError.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.SelfKeyPackageError.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.SelfKeyPackageError.CodingKeys and conformance MLS.SelfKeyPackageError.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MLS.SelfKeyPackageError.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO19SelfKeyPackageErrorV10CodingKeys33_5309206B028A85FFD18B62942080C5A0LLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO19SelfKeyPackageErrorV10CodingKeys33_5309206B028A85FFD18B62942080C5A0LLOGMR);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v11 - v6;
  v8 = *v1;
  v9 = *(v1 + 1);
  v11[0] = *(v1 + 2);
  v11[1] = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MLS.SelfKeyPackageError.CodingKeys and conformance MLS.SelfKeyPackageError.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = v8;
  v13 = 0;
  lazy protocol witness table accessor for type MLS.SelfKeyPackageError.ErrorType and conformance MLS.SelfKeyPackageError.ErrorType();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v12 = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t lazy protocol witness table accessor for type MLS.SelfKeyPackageError.CodingKeys and conformance MLS.SelfKeyPackageError.CodingKeys()
{
  result = lazy protocol witness table cache variable for type MLS.SelfKeyPackageError.CodingKeys and conformance MLS.SelfKeyPackageError.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.SelfKeyPackageError.CodingKeys and conformance MLS.SelfKeyPackageError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.SelfKeyPackageError.CodingKeys and conformance MLS.SelfKeyPackageError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.SelfKeyPackageError.CodingKeys and conformance MLS.SelfKeyPackageError.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.SelfKeyPackageError.CodingKeys and conformance MLS.SelfKeyPackageError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.SelfKeyPackageError.CodingKeys and conformance MLS.SelfKeyPackageError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.SelfKeyPackageError.CodingKeys and conformance MLS.SelfKeyPackageError.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.SelfKeyPackageError.CodingKeys and conformance MLS.SelfKeyPackageError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.SelfKeyPackageError.CodingKeys and conformance MLS.SelfKeyPackageError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.SelfKeyPackageError.CodingKeys and conformance MLS.SelfKeyPackageError.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.SelfKeyPackageError.CodingKeys and conformance MLS.SelfKeyPackageError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.SelfKeyPackageError.CodingKeys and conformance MLS.SelfKeyPackageError.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.SelfKeyPackageError.ErrorType and conformance MLS.SelfKeyPackageError.ErrorType()
{
  result = lazy protocol witness table cache variable for type MLS.SelfKeyPackageError.ErrorType and conformance MLS.SelfKeyPackageError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.SelfKeyPackageError.ErrorType and conformance MLS.SelfKeyPackageError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.SelfKeyPackageError.ErrorType and conformance MLS.SelfKeyPackageError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.SelfKeyPackageError.ErrorType and conformance MLS.SelfKeyPackageError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.SelfKeyPackageError.ErrorType and conformance MLS.SelfKeyPackageError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.SelfKeyPackageError.ErrorType and conformance MLS.SelfKeyPackageError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.SelfKeyPackageError.ErrorType and conformance MLS.SelfKeyPackageError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.SelfKeyPackageError.ErrorType and conformance MLS.SelfKeyPackageError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.SelfKeyPackageError.ErrorType and conformance MLS.SelfKeyPackageError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.SelfKeyPackageError.ErrorType and conformance MLS.SelfKeyPackageError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.SelfKeyPackageError.ErrorType and conformance MLS.SelfKeyPackageError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.SelfKeyPackageError.ErrorType and conformance MLS.SelfKeyPackageError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.SelfKeyPackageError.ErrorType and conformance MLS.SelfKeyPackageError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.SelfKeyPackageError.ErrorType and conformance MLS.SelfKeyPackageError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.SelfKeyPackageError.ErrorType and conformance MLS.SelfKeyPackageError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.SelfKeyPackageError.ErrorType and conformance MLS.SelfKeyPackageError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.SelfKeyPackageError.ErrorType and conformance MLS.SelfKeyPackageError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.SelfKeyPackageError.ErrorType and conformance MLS.SelfKeyPackageError.ErrorType);
  }

  return result;
}

uint64_t MLS.SelfKeyPackageError.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO19SelfKeyPackageErrorV10CodingKeys33_5309206B028A85FFD18B62942080C5A0LLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO19SelfKeyPackageErrorV10CodingKeys33_5309206B028A85FFD18B62942080C5A0LLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MLS.SelfKeyPackageError.CodingKeys and conformance MLS.SelfKeyPackageError.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v16 = 0;
    lazy protocol witness table accessor for type MLS.SelfKeyPackageError.ErrorType and conformance MLS.SelfKeyPackageError.ErrorType();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v9 = v17;
    v15 = 1;
    v11 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v13 = v12;
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    *(a2 + 8) = v11;
    *(a2 + 16) = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}