uint64_t closure #1 in MLS.SwiftMLSClientCoordinator.joinGroup(identifier:otherMembers:welcome:context:)(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 3808);
  *(v3 + 3848) = a1;
  *(v3 + 3856) = a2;

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.joinGroup(identifier:otherMembers:welcome:context:), v4, 0);
}

{
  v3 = *v2;
  *(v3 + 4184) = a1;
  *(v3 + 4192) = a2;

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.joinGroup(identifier:otherMembers:welcome:context:), 0, 0);
}

{
  v6 = *v3;
  v6[526] = v2;

  if (v2)
  {

    return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.joinGroup(identifier:otherMembers:welcome:context:), 0, 0);
  }

  else
  {
    v7 = v6[510];
    v8 = v6[509];
    v9 = v6[497];
    v6[527] = a2;
    v6[528] = a1;
    v6[440] = v8;
    v6[441] = v7;
    v10 = *(v9 + 64);
    v6[529] = v10;
    v6[530] = (v9 + 64) & 0xFFFFFFFFFFFFLL | 0x5374000000000000;
    v17 = (v10 + *v10);
    v11 = swift_task_alloc();
    v6[531] = v11;
    *v11 = v6;
    v11[1] = closure #1 in MLS.SwiftMLSClientCoordinator.joinGroup(identifier:otherMembers:welcome:context:);
    v12 = v6[500];
    v13 = v6[497];
    v14 = v6[460];
    v15 = v6[459];

    return (v17)(v15, v14, v6 + 440, v12, v13);
  }
}

{
  v6 = *v3;
  *(*v3 + 4256) = v2;

  if (v2)
  {
    v7 = closure #1 in MLS.SwiftMLSClientCoordinator.joinGroup(identifier:otherMembers:welcome:context:);
  }

  else
  {
    *(v6 + 4264) = a2;
    *(v6 + 4272) = a1;
    v7 = closure #1 in MLS.SwiftMLSClientCoordinator.joinGroup(identifier:otherMembers:welcome:context:);
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

{
  v3 = *v2;
  *(v3 + 4424) = a1;
  *(v3 + 4432) = a2;

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.joinGroup(identifier:otherMembers:welcome:context:), 0, 0);
}

{
  v6 = *v3;
  *(v6 + 4448) = v2;

  if (v2)
  {
    *(v6 + 1464) = *(v6 + 1672);
    v7 = *(v6 + 1656);
    *(v6 + 1432) = *(v6 + 1640);
    *(v6 + 1448) = v7;
    v8 = *(v6 + 1592);
    *(v6 + 1368) = *(v6 + 1576);
    *(v6 + 1384) = v8;
    v9 = *(v6 + 1624);
    *(v6 + 1400) = *(v6 + 1608);
    *(v6 + 1416) = v9;
    outlined destroy of NSObject?(v6 + 1368, &_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);

    return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.joinGroup(identifier:otherMembers:welcome:context:), 0, 0);
  }

  else
  {
    v10 = *(v6 + 4336);
    v11 = *(v6 + 4328);
    v12 = *(v6 + 4232);
    *(v6 + 4456) = a2;
    *(v6 + 4464) = a1;
    *(v6 + 3504) = v11;
    *(v6 + 3512) = v10;
    v19 = (v12 + *v12);
    v13 = swift_task_alloc();
    *(v6 + 4472) = v13;
    *v13 = v6;
    v13[1] = closure #1 in MLS.SwiftMLSClientCoordinator.joinGroup(identifier:otherMembers:welcome:context:);
    v14 = *(v6 + 4000);
    v15 = *(v6 + 3976);
    v16 = *(v6 + 3680);
    v17 = *(v6 + 3672);

    return v19(v17, v16, v6 + 3504, v14, v15);
  }
}

{
  v6 = *v3;
  *(*v3 + 4480) = v2;

  if (v2)
  {
    v7 = *(v6 + 1608);
    *(v6 + 1312) = *(v6 + 1624);
    v8 = *(v6 + 1656);
    *(v6 + 1328) = *(v6 + 1640);
    *(v6 + 1344) = v8;
    v9 = *(v6 + 1592);
    *(v6 + 1264) = *(v6 + 1576);
    *(v6 + 1280) = v9;
    *(v6 + 1360) = *(v6 + 1672);
    *(v6 + 1296) = v7;
    outlined destroy of NSObject?(v6 + 1264, &_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);

    v10 = closure #1 in MLS.SwiftMLSClientCoordinator.joinGroup(identifier:otherMembers:welcome:context:);
  }

  else
  {
    *(v6 + 4488) = a2;
    *(v6 + 4496) = a1;
    v10 = closure #1 in MLS.SwiftMLSClientCoordinator.joinGroup(identifier:otherMembers:welcome:context:);
  }

  return MEMORY[0x2822009F8](v10, 0, 0);
}

uint64_t closure #1 in MLS.SwiftMLSClientCoordinator.joinGroup(identifier:otherMembers:welcome:context:)(uint64_t a1)
{
  LODWORD(v2) = *(v1 + 3400);
  if (v2 == 2)
  {
    v2 = *(v1 + 3744);
    v3 = *(v1 + 3736);
    v4 = *(v1 + 3728);
    Date.init()();
    Date.timeIntervalSince1970.getter();
    v6 = v5;
    (*(v3 + 8))(v2, v4);
    __swift_destroy_boxed_opaque_existential_1Tm((v1 + 2840));
    v7 = 0;
    LOBYTE(v2) = 1;
  }

  else
  {
    v6 = *(v1 + 3392);
    v7 = *(v1 + 3384);
    __swift_destroy_boxed_opaque_existential_1Tm((v1 + 2840));
  }

  v8 = *(v1 + 3992);
  *(v8 + 64) = v7;
  *(v8 + 72) = v6;
  *(v8 + 80) = v2 & 1;

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.joinGroup(identifier:otherMembers:welcome:context:), 0, 0);
}

{
  v4 = *v2;
  *(*v2 + 4096) = v1;

  if (v1)
  {
    v5 = closure #1 in MLS.SwiftMLSClientCoordinator.joinGroup(identifier:otherMembers:welcome:context:);
  }

  else
  {
    *(v4 + 4104) = a1;
    v5 = closure #1 in MLS.SwiftMLSClientCoordinator.joinGroup(identifier:otherMembers:welcome:context:);
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

{
  *(*v1 + 4120) = a1;

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.joinGroup(identifier:otherMembers:welcome:context:), 0, 0);
}

{
  v2 = v1[465];
  v3 = v1[463];
  v4 = v1[462];
  v1[518] = MLS.Group.GroupInfo.rawRepresentation.getter();
  v1[519] = v5;
  v6 = *(v3 + 8);
  v1[520] = v6;
  v1[521] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v2, v4);
  v7 = v1[363];
  v8 = v1[364];
  __swift_project_boxed_opaque_existential_1(v1 + 360, v7);
  v11 = (*(v8 + 56) + **(v8 + 56));
  v9 = swift_task_alloc();
  v1[522] = v9;
  *v9 = v1;
  v9[1] = closure #1 in MLS.SwiftMLSClientCoordinator.joinGroup(identifier:otherMembers:welcome:context:);

  return v11(v7, v8);
}

{
  v4 = *v2;
  *(*v2 + 4352) = v1;

  if (v1)
  {
    v5 = *(v4 + 1608);
    *(v4 + 1520) = *(v4 + 1624);
    v6 = *(v4 + 1656);
    *(v4 + 1536) = *(v4 + 1640);
    *(v4 + 1552) = v6;
    v7 = *(v4 + 1592);
    *(v4 + 1472) = *(v4 + 1576);
    *(v4 + 1488) = v7;
    *(v4 + 1568) = *(v4 + 1672);
    *(v4 + 1504) = v5;
    outlined destroy of NSObject?(v4 + 1472, &_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);

    v8 = closure #1 in MLS.SwiftMLSClientCoordinator.joinGroup(identifier:otherMembers:welcome:context:);
  }

  else
  {
    *(v4 + 4360) = a1;
    v8 = closure #1 in MLS.SwiftMLSClientCoordinator.joinGroup(identifier:otherMembers:welcome:context:);
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

{
  *(*v1 + 4376) = a1;

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.joinGroup(identifier:otherMembers:welcome:context:), 0, 0);
}

{
  v2 = v1[520];
  v3 = v1[464];
  v4 = v1[462];
  v1[550] = MLS.Group.GroupInfo.rawRepresentation.getter();
  v1[551] = v5;
  v2(v3, v4);
  v6 = v1[373];
  v7 = v1[374];
  __swift_project_boxed_opaque_existential_1(v1 + 370, v6);
  v10 = (*(v7 + 56) + **(v7 + 56));
  v8 = swift_task_alloc();
  v1[552] = v8;
  *v8 = v1;
  v8[1] = closure #1 in MLS.SwiftMLSClientCoordinator.joinGroup(identifier:otherMembers:welcome:context:);

  return v10(v6, v7);
}

void closure #1 in MLS.SwiftMLSClientCoordinator.joinGroup(identifier:otherMembers:welcome:context:)()
{
  if ((v0[515] & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v1 = v0[363];
    v2 = v0[364];
    __swift_project_boxed_opaque_existential_1(v0 + 360, v1);
    v5 = (*(v2 + 80) + **(v2 + 80));
    v3 = swift_task_alloc();
    v0[516] = v3;
    *v3 = v0;
    v3[1] = closure #1 in MLS.SwiftMLSClientCoordinator.joinGroup(identifier:otherMembers:welcome:context:);
    v4 = v0[465];

    v5(v4, v1, v2);
  }
}

{
  if ((v0[547] & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v1 = v0[373];
    v2 = v0[374];
    __swift_project_boxed_opaque_existential_1(v0 + 370, v1);
    v5 = (*(v2 + 80) + **(v2 + 80));
    v3 = swift_task_alloc();
    v0[548] = v3;
    *v3 = v0;
    v3[1] = closure #1 in MLS.SwiftMLSClientCoordinator.joinGroup(identifier:otherMembers:welcome:context:);
    v4 = v0[464];

    v5(v4, v1, v2);
  }
}

uint64_t MLS.SwiftMLSClientCoordinator.delete(group:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 32) = a3;
  *(v5 + 40) = v4;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v6 = *(a4 + 8);
  *(v5 + 48) = *a4;
  *(v5 + 56) = v6;
  *(v5 + 64) = *(a4 + 16);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v7 = static MLSActor.shared;
  *(v5 + 80) = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.SwiftMLSClientCoordinator.delete(group:context:), v7, 0);
}

uint64_t MLS.SwiftMLSClientCoordinator.delete(group:context:)()
{
  v25 = v0;
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);

  outlined copy of Data?(v2, v1);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  outlined consume of Data?(v2, v1);
  if (os_log_type_enabled(v3, v4))
  {
    v6 = *(v0 + 48);
    v5 = *(v0 + 56);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v24 = v8;
    *v7 = 136315138;

    v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v5, &v24);

    *(v7 + 4) = v9;
    _os_log_impl(&dword_264F1F000, v3, v4, "SwiftMLSClientCoordinator delete deleting group { identifier: %s }", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x266755550](v8, -1, -1);
    MEMORY[0x266755550](v7, -1, -1);
  }

  v11 = *(v0 + 64);
  v10 = *(v0 + 72);
  v12 = *(v0 + 40);
  v21 = *(v0 + 24);
  v22 = *(v0 + 48);
  v13 = *(v12 + direct field offset for MLS.SwiftMLSClientCoordinator.groupLoader);
  v14 = swift_task_alloc();
  *(v0 + 88) = v14;
  *(v14 + 16) = v12;
  *(v14 + 24) = v21;
  *(v14 + 40) = v22;
  *(v14 + 56) = v11;
  *(v14 + 64) = v10;
  v23 = (*(*v13 + 152) + **(*v13 + 152));
  v15 = swift_task_alloc();
  *(v0 + 96) = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO29GroupDeletionProcessedContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO29GroupDeletionProcessedContextVy_10Foundation4DataVGMR);
  *v15 = v0;
  v15[1] = MLS.SwiftMLSClientCoordinator.delete(group:context:);
  v17 = *(v0 + 48);
  v18 = *(v0 + 56);
  v19 = *(v0 + 16);

  return v23(v19, v17, v18, &async function pointer to partial apply for closure #1 in MLS.SwiftMLSClientCoordinator.delete(group:context:), v14, v16);
}

{
  v2 = *v1;
  v2[13] = v0;

  if (v0)
  {
    v3 = v2[10];

    return MEMORY[0x2822009F8](MLS.SwiftMLSClientCoordinator.delete(group:context:), v3, 0);
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

uint64_t closure #1 in MLS.SwiftMLSClientCoordinator.delete(group:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[13] = a7;
  v8[14] = a8;
  v8[11] = a5;
  v8[12] = a6;
  v8[9] = a3;
  v8[10] = a4;
  v8[7] = a1;
  v8[8] = a2;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v9 = static MLSActor.shared;
  v8[15] = static MLSActor.shared;

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.delete(group:context:), v9, 0);
}

uint64_t closure #1 in MLS.SwiftMLSClientCoordinator.delete(group:context:)()
{
  v1 = *(*(v0 + 64) + direct field offset for MLS.SwiftMLSClientCoordinator.groupLoader);
  *(v0 + 40) = &type metadata for MLS.GroupDeletionError;
  *(v0 + 48) = lazy protocol witness table accessor for type MLS.GroupDeletionError and conformance MLS.GroupDeletionError();
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  v8 = (*(*v1 + 168) + **(*v1 + 168));
  v2 = swift_task_alloc();
  *(v0 + 128) = v2;
  *v2 = v0;
  v2[1] = closure #1 in MLS.SwiftMLSClientCoordinator.delete(group:context:);
  v3 = *(v0 + 88);
  v4 = *(v0 + 96);
  v6 = *(v0 + 72);
  v5 = *(v0 + 80);

  return v8(v6, v5, v0 + 16, v3, v4);
}

{
  v2 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v3 = *(v2 + 120);
    v4 = closure #1 in MLS.SwiftMLSClientCoordinator.delete(group:context:);
  }

  else
  {
    v5 = *(v2 + 120);
    __swift_destroy_boxed_opaque_existential_1Tm((v2 + 16));
    v4 = closure #1 in MLS.SwiftMLSClientCoordinator.delete(group:context:);
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{
  v15 = v0;
  v2 = v0[13];
  v1 = v0[14];

  outlined copy of Data?(v2, v1);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  outlined consume of Data?(v2, v1);
  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[11];
    v5 = v0[12];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v14 = v8;
    *v7 = 136315138;
    *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v5, &v14);
    _os_log_impl(&dword_264F1F000, v3, v4, "SwiftMLSClientCoordinator delete deleted group. Returning processedContext to caller { identifier: %s }", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x266755550](v8, -1, -1);
    MEMORY[0x266755550](v7, -1, -1);
  }

  v9 = v0[13];
  v10 = v0[14];
  v11 = v0[7];
  *v11 = v9;
  v11[1] = v10;
  outlined copy of Data?(v9, v10);
  v12 = v0[1];

  return v12();
}

{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t MLS.SwiftMLSClientCoordinator.group(identifier:context:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5[4] = a3;
  v5[5] = v4;
  v5[2] = a1;
  v5[3] = a2;
  v6 = a4[1];
  v5[6] = *a4;
  v5[7] = v6;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v7 = static MLSActor.shared;
  v5[8] = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.SwiftMLSClientCoordinator.group(identifier:context:), v7, 0);
}

uint64_t MLS.SwiftMLSClientCoordinator.group(identifier:context:)()
{
  v22 = v0;

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v4 = v0[6];
    v3 = v0[7];
    v6 = v0[3];
    v5 = v0[4];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v21 = v8;
    *v7 = 136315394;
    *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v4, v3, &v21);
    *(v7 + 12) = 2080;
    *(v7 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v5, &v21);
    _os_log_impl(&dword_264F1F000, v1, v2, "SwiftMLSClientCoordinator group called { identifier: %s, group: %s }", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v8, -1, -1);
    MEMORY[0x266755550](v7, -1, -1);
  }

  v10 = v0[6];
  v9 = v0[7];
  v11 = v0[5];
  v19 = *(v0 + 3);
  v12 = *(v11 + direct field offset for MLS.SwiftMLSClientCoordinator.groupLoader);
  v13 = swift_task_alloc();
  v0[9] = v13;
  *(v13 + 16) = v11;
  *(v13 + 24) = v19;
  *(v13 + 40) = v10;
  *(v13 + 48) = v9;
  v20 = (*(*v12 + 152) + **(*v12 + 152));
  v14 = swift_task_alloc();
  v0[10] = v14;
  *v14 = v0;
  v14[1] = MLS.SwiftMLSClientCoordinator.group(identifier:context:);
  v15 = v0[6];
  v16 = v0[7];
  v17 = v0[2];

  return v20(v17, v15, v16, &async function pointer to partial apply for closure #1 in MLS.SwiftMLSClientCoordinator.group(identifier:context:), v13, &type metadata for MLS.Group);
}

{
  v2 = *v1;
  v2[11] = v0;

  if (v0)
  {
    v3 = v2[8];

    return MEMORY[0x2822009F8](MLS.SwiftMLSClientCoordinator.group(identifier:context:), v3, 0);
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

uint64_t closure #1 in MLS.SwiftMLSClientCoordinator.group(identifier:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[122] = a6;
  v6[121] = a5;
  v6[120] = a4;
  v6[119] = a3;
  v6[118] = a2;
  v6[117] = a1;
  v7 = type metadata accessor for MLS.Group.GroupInfo();
  v6[123] = v7;
  v6[124] = *(v7 - 8);
  v6[125] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v8 = static MLSActor.shared;
  v6[126] = static MLSActor.shared;

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.group(identifier:context:), v8, 0);
}

void closure #1 in MLS.SwiftMLSClientCoordinator.group(identifier:context:)()
{
  v3 = *(**(*(v0 + 944) + direct field offset for MLS.SwiftMLSClientCoordinator.groupLoader) + 192) + **(**(*(v0 + 944) + direct field offset for MLS.SwiftMLSClientCoordinator.groupLoader) + 192);
  v1 = swift_task_alloc();
  *(v0 + 1016) = v1;
  lazy protocol witness table accessor for type MLS.GroupFetchError and conformance MLS.GroupFetchError();
  *v1 = v0;
  v1[1] = closure #1 in MLS.SwiftMLSClientCoordinator.group(identifier:context:);

  __asm { BRAA            X8, X16 }
}

{
  if ((v0[141] & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v1 = v0[88];
    v2 = v0[89];
    __swift_project_boxed_opaque_existential_1(v0 + 85, v1);
    v5 = (*(v2 + 80) + **(v2 + 80));
    v3 = swift_task_alloc();
    v0[142] = v3;
    *v3 = v0;
    v3[1] = closure #1 in MLS.SwiftMLSClientCoordinator.group(identifier:context:);
    v4 = v0[125];

    v5(v4, v1, v2);
  }
}

uint64_t closure #1 in MLS.SwiftMLSClientCoordinator.group(identifier:context:)()
{
  v2 = *v1;

  v3 = *(v2 + 1008);
  if (v0)
  {
    v4 = closure #1 in MLS.SwiftMLSClientCoordinator.group(identifier:context:);
  }

  else
  {
    v4 = closure #1 in MLS.SwiftMLSClientCoordinator.group(identifier:context:);
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{
  swift_retain_n();
  swift_bridgeObjectRetain_n();

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.group(identifier:context:), 0, 0);
}

{
  v1 = v0[83];
  v2 = v0[84];
  __swift_project_boxed_opaque_existential_1(v0 + 80, v1);
  v5 = (*(v2 + 40) + **(v2 + 40));
  v3 = swift_task_alloc();
  v0[128] = v3;
  *v3 = v0;
  v3[1] = closure #1 in MLS.SwiftMLSClientCoordinator.group(identifier:context:);

  return v5(v1, v2);
}

{
  v1 = *(v0 + 1008);

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.group(identifier:context:), v1, 0);
}

{
  v13 = v0;
  if (*(v0 + 1280) == 1)
  {

    v1 = Logger.logObject.getter();
    v2 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v1, v2))
    {
      v3 = *(v0 + 976);
      v4 = *(v0 + 968);
      v5 = *(v0 + 960);
      v6 = *(v0 + 952);
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v12[0] = v8;
      *v7 = 136315394;
      *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v4, v3, v12);
      *(v7 + 12) = 2080;
      *(v7 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v5, v12);
      _os_log_impl(&dword_264F1F000, v1, v2, "SwiftMLSClientCoordinator group fetching downgraded group { identifier: %s, group: %s }", v7, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266755550](v8, -1, -1);
      MEMORY[0x266755550](v7, -1, -1);
    }

    lazy protocol witness table accessor for type MLS.GroupFetchError and conformance MLS.GroupFetchError();
    swift_allocError();
    *v9 = 7;
    *(v9 + 8) = 0;
    *(v9 + 16) = 0;
    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 640));

    v10 = *(v0 + 8);

    return v10();
  }

  else
  {
    swift_retain_n();
    swift_bridgeObjectRetain_n();

    return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.group(identifier:context:), 0, 0);
  }
}

{
  v1 = *(v0 + 1032);
  v2 = *(v0 + 1008);
  v3 = *(v0 + 976);
  v4 = *(v0 + 968);
  v5 = *(v0 + 944);
  swift_getErrorValue();
  v6 = Error.readableDescription.getter(*(v0 + 752), *(v0 + 760));
  closure #9 in closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:)(v6, v7, v5, v4, v3, "SwiftMLSClientCoordinator group failed obtaining endMLS state { identifier: %s, error: %s }");

  swift_getErrorValue();
  v8 = Error.readableDescription.getter(*(v0 + 776), *(v0 + 784));
  *(v0 + 1040) = v8;
  *(v0 + 1048) = v9;
  *(v0 + 792) = 5;
  *(v0 + 800) = v8;
  *(v0 + 808) = v9;
  *(v0 + 1056) = lazy protocol witness table accessor for type MLS.GroupFetchError and conformance MLS.GroupFetchError();
  swift_willThrowTypedImpl();

  swift_bridgeObjectRelease_n();

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.group(identifier:context:), v2, 0);
}

{
  v1 = v0[131];
  v2 = v0[130];
  swift_allocError();
  *v3 = 5;
  *(v3 + 8) = v2;
  *(v3 + 16) = v1;
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 80);

  v4 = v0[1];

  return v4();
}

{
  v1 = v0[118];
  outlined init with copy of ServerBag.MLS((v0 + 80), (v0 + 85));
  v0[133] = *(v1 + 80);
  v0[134] = *(v1 + 88);
  v2 = v1 + direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier;
  v0[135] = *(v1 + direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier);
  v0[136] = *(v2 + 8);
  v3 = v0[88];
  v4 = v0[89];
  __swift_project_boxed_opaque_existential_1(v0 + 85, v3);
  v5 = *(v4 + 32);

  v8 = (v5 + *v5);
  v6 = swift_task_alloc();
  v0[137] = v6;
  *v6 = v0;
  v6[1] = closure #1 in MLS.SwiftMLSClientCoordinator.group(identifier:context:);

  return v8(v3, v4);
}

{
  v1 = v0[88];
  v2 = v0[89];
  __swift_project_boxed_opaque_existential_1(v0 + 85, v1);
  v5 = (*(v2 + 24) + **(v2 + 24));
  v3 = swift_task_alloc();
  v0[140] = v3;
  *v3 = v0;
  v3[1] = closure #1 in MLS.SwiftMLSClientCoordinator.group(identifier:context:);

  return v5(v1, v2);
}

{
  v1 = *(v0 + 1104);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 680));

  v2 = *(v0 + 1008);
  v3 = *(v0 + 976);
  v4 = *(v0 + 968);
  v5 = *(v0 + 944);
  swift_getErrorValue();
  v6 = Error.readableDescription.getter(*(v0 + 824), *(v0 + 832));
  closure #9 in closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:)(v6, v7, v5, v4, v3, "SwiftMLSClientCoordinator group failed obtaining group information { identifier: %s, error: %s }");

  swift_getErrorValue();
  v8 = Error.readableDescription.getter(*(v0 + 848), *(v0 + 856));
  *(v0 + 1256) = v8;
  *(v0 + 1264) = v9;
  *(v0 + 864) = 5;
  *(v0 + 872) = v8;
  *(v0 + 880) = v9;
  *(v0 + 1272) = lazy protocol witness table accessor for type MLS.GroupFetchError and conformance MLS.GroupFetchError();
  swift_willThrowTypedImpl();

  swift_bridgeObjectRelease_n();

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.group(identifier:context:), v2, 0);
}

{
  *(*v1 + 1144) = v0;

  if (v0)
  {
    v2 = closure #1 in MLS.SwiftMLSClientCoordinator.group(identifier:context:);
  }

  else
  {
    v2 = closure #1 in MLS.SwiftMLSClientCoordinator.group(identifier:context:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v1 = v0[88];
  v2 = v0[89];
  __swift_project_boxed_opaque_existential_1(v0 + 85, v1);
  v5 = (*(v2 + 64) + **(v2 + 64));
  v3 = swift_task_alloc();
  v0[149] = v3;
  *v3 = v0;
  v3[1] = closure #1 in MLS.SwiftMLSClientCoordinator.group(identifier:context:);

  return v5(v1, v2);
}

{
  v1 = *(v0 + 1144);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 680));

  v2 = *(v0 + 1008);
  v3 = *(v0 + 976);
  v4 = *(v0 + 968);
  v5 = *(v0 + 944);
  swift_getErrorValue();
  v6 = Error.readableDescription.getter(*(v0 + 824), *(v0 + 832));
  closure #9 in closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:)(v6, v7, v5, v4, v3, "SwiftMLSClientCoordinator group failed obtaining group information { identifier: %s, error: %s }");

  swift_getErrorValue();
  v8 = Error.readableDescription.getter(*(v0 + 848), *(v0 + 856));
  *(v0 + 1256) = v8;
  *(v0 + 1264) = v9;
  *(v0 + 864) = 5;
  *(v0 + 872) = v8;
  *(v0 + 880) = v9;
  *(v0 + 1272) = lazy protocol witness table accessor for type MLS.GroupFetchError and conformance MLS.GroupFetchError();
  swift_willThrowTypedImpl();

  swift_bridgeObjectRelease_n();

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.group(identifier:context:), v2, 0);
}

{
  v1 = *(v0 + 1200);
  v2 = *(v0 + 1184);
  v3 = *(v0 + 1160);
  v4 = *(v0 + 1152);
  if (v2 >> 60 == 15)
  {
    v5 = 0xC000000000000000;
  }

  else
  {
    v5 = *(v0 + 1184);
  }

  if (v2 >> 60 == 15)
  {
    v6 = 0;
  }

  else
  {
    v6 = *(v0 + 1176);
  }

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 680));

  outlined consume of Data._Representation(v4, v3);
  outlined consume of Data._Representation(v6, v5);
  v7 = *(v0 + 1008);
  v8 = *(v0 + 976);
  v9 = *(v0 + 968);
  v10 = *(v0 + 944);
  swift_getErrorValue();
  v11 = Error.readableDescription.getter(*(v0 + 824), *(v0 + 832));
  closure #9 in closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:)(v11, v12, v10, v9, v8, "SwiftMLSClientCoordinator group failed obtaining group information { identifier: %s, error: %s }");

  swift_getErrorValue();
  v13 = Error.readableDescription.getter(*(v0 + 848), *(v0 + 856));
  *(v0 + 1256) = v13;
  *(v0 + 1264) = v14;
  *(v0 + 864) = 5;
  *(v0 + 872) = v13;
  *(v0 + 880) = v14;
  *(v0 + 1272) = lazy protocol witness table accessor for type MLS.GroupFetchError and conformance MLS.GroupFetchError();
  swift_willThrowTypedImpl();

  swift_bridgeObjectRelease_n();

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.group(identifier:context:), v7, 0);
}

{
  v1 = *(v0 + 1248);
  v2 = *(v0 + 1240);
  v3 = *(v0 + 1208);
  v4 = *(v0 + 1184);
  v5 = *(v0 + 1160);
  v6 = *(v0 + 1152);
  v18 = v6;
  v19 = v5;
  v7 = *(v0 + 1128);
  v17 = v7;
  v8 = *(v0 + 1112);
  v20 = *(v0 + 1008);
  v9 = *(v0 + 960);
  v10 = *(v0 + 952);
  if (v3 >> 60 == 15)
  {
    v11 = 0xC000000000000000;
  }

  else
  {
    v11 = *(v0 + 1208);
  }

  if (v3 >> 60 == 15)
  {
    v12 = 0;
  }

  else
  {
    v12 = *(v0 + 1216);
  }

  if (v4 >> 60 == 15)
  {
    v13 = 0xC000000000000000;
  }

  else
  {
    v13 = *(v0 + 1184);
  }

  if (v4 >> 60 == 15)
  {
    v14 = 0;
  }

  else
  {
    v14 = *(v0 + 1176);
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
  outlined init with copy of MLS.Group(v0 + 120, v0 + 224);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 680));
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

  swift_bridgeObjectRelease_n();

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.group(identifier:context:), v20, 0);
}

{
  v33 = v0;

  outlined init with copy of MLS.Group(v0 + 120, v0 + 328);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  outlined destroy of MLS.Group(v0 + 120);
  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 976);
    v4 = *(v0 + 968);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v25 = v6;
    *v5 = 136315394;
    *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v4, v3, &v25);
    *(v5 + 12) = 2080;
    v7 = *(v0 + 168);
    v8 = *(v0 + 200);
    v30 = *(v0 + 184);
    v31 = v8;
    v32 = *(v0 + 216);
    v9 = *(v0 + 136);
    v26 = *(v0 + 120);
    v27 = v9;
    v28 = *(v0 + 152);
    v29 = v7;
    outlined init with copy of MLS.Group(v0 + 120, v0 + 536);
    v10 = MLS.Group.description.getter();
    v12 = v11;
    v13 = v31;
    *(v0 + 496) = v30;
    *(v0 + 512) = v13;
    *(v0 + 528) = v32;
    v14 = v27;
    *(v0 + 432) = v26;
    *(v0 + 448) = v14;
    v15 = v29;
    *(v0 + 464) = v28;
    *(v0 + 480) = v15;
    outlined destroy of MLS.Group(v0 + 432);
    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v12, &v25);

    *(v5 + 14) = v16;
    _os_log_impl(&dword_264F1F000, v1, v2, "SwiftMLSClientCoordinator group returning group to caller { identifier: %s, group: %s }", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v6, -1, -1);
    MEMORY[0x266755550](v5, -1, -1);
  }

  v17 = *(v0 + 936);
  v18 = *(v0 + 184);
  v19 = *(v0 + 200);
  v20 = *(v0 + 168);
  *(v17 + 96) = *(v0 + 216);
  *(v17 + 64) = v18;
  *(v17 + 80) = v19;
  *(v17 + 48) = v20;
  v21 = *(v0 + 120);
  v22 = *(v0 + 152);
  *(v17 + 16) = *(v0 + 136);
  *(v17 + 32) = v22;
  *v17 = v21;
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 640));

  v23 = *(v0 + 8);

  return v23();
}

{
  v1 = *(v0 + 1232);
  v2 = *(v0 + 1208);
  v3 = *(v0 + 1184);
  v4 = *(v0 + 1160);
  v5 = *(v0 + 1152);
  if (v2 >> 60 == 15)
  {
    v6 = 0xC000000000000000;
  }

  else
  {
    v6 = *(v0 + 1208);
  }

  if (v2 >> 60 == 15)
  {
    v7 = 0;
  }

  else
  {
    v7 = *(v0 + 1216);
  }

  if (v3 >> 60 == 15)
  {
    v8 = 0xC000000000000000;
  }

  else
  {
    v8 = *(v0 + 1184);
  }

  if (v3 >> 60 == 15)
  {
    v9 = 0;
  }

  else
  {
    v9 = *(v0 + 1176);
  }

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 680));

  outlined consume of Data._Representation(v5, v4);
  outlined consume of Data._Representation(v9, v8);
  outlined consume of Data._Representation(v7, v6);
  v10 = *(v0 + 1008);
  v11 = *(v0 + 976);
  v12 = *(v0 + 968);
  v13 = *(v0 + 944);
  swift_getErrorValue();
  v14 = Error.readableDescription.getter(*(v0 + 824), *(v0 + 832));
  closure #9 in closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:)(v14, v15, v13, v12, v11, "SwiftMLSClientCoordinator group failed obtaining group information { identifier: %s, error: %s }");

  swift_getErrorValue();
  v16 = Error.readableDescription.getter(*(v0 + 848), *(v0 + 856));
  *(v0 + 1256) = v16;
  *(v0 + 1264) = v17;
  *(v0 + 864) = 5;
  *(v0 + 872) = v16;
  *(v0 + 880) = v17;
  *(v0 + 1272) = lazy protocol witness table accessor for type MLS.GroupFetchError and conformance MLS.GroupFetchError();
  swift_willThrowTypedImpl();

  swift_bridgeObjectRelease_n();

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.group(identifier:context:), v10, 0);
}

{
  v1 = v0[158];
  v2 = v0[157];
  swift_allocError();
  *v3 = 5;
  *(v3 + 8) = v2;
  *(v3 + 16) = v1;
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 80);

  v4 = v0[1];

  return v4();
}

{
  v1 = *(v0 + 720);
  v2 = *(v0 + 728);
  v3 = *(v0 + 736);
  lazy protocol witness table accessor for type MLS.GroupFetchError and conformance MLS.GroupFetchError();
  swift_allocError();
  *v4 = v1;
  *(v4 + 8) = v2;
  *(v4 + 16) = v3;

  v5 = *(v0 + 8);

  return v5();
}

uint64_t closure #1 in MLS.SwiftMLSClientCoordinator.group(identifier:context:)(char a1)
{
  v4 = *v2;
  *(*v2 + 1032) = v1;

  if (v1)
  {
    v5 = closure #1 in MLS.SwiftMLSClientCoordinator.group(identifier:context:);
  }

  else
  {

    *(v4 + 1280) = a1 & 1;
    v5 = closure #1 in MLS.SwiftMLSClientCoordinator.group(identifier:context:);
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t closure #1 in MLS.SwiftMLSClientCoordinator.group(identifier:context:)(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 1104) = v1;

  if (v1)
  {
    v5 = closure #1 in MLS.SwiftMLSClientCoordinator.group(identifier:context:);
  }

  else
  {
    *(v4 + 1112) = a1;
    v5 = closure #1 in MLS.SwiftMLSClientCoordinator.group(identifier:context:);
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

{
  *(*v1 + 1128) = a1;

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.group(identifier:context:), 0, 0);
}

{
  v2 = v1[125];
  v3 = v1[124];
  v4 = v1[123];
  v1[144] = MLS.Group.GroupInfo.rawRepresentation.getter();
  v1[145] = v5;
  (*(v3 + 8))(v2, v4);
  v6 = v1[88];
  v7 = v1[89];
  __swift_project_boxed_opaque_existential_1(v1 + 85, v6);
  v10 = (*(v7 + 56) + **(v7 + 56));
  v8 = swift_task_alloc();
  v1[146] = v8;
  *v8 = v1;
  v8[1] = closure #1 in MLS.SwiftMLSClientCoordinator.group(identifier:context:);

  return v10(v6, v7);
}

uint64_t closure #1 in MLS.SwiftMLSClientCoordinator.group(identifier:context:)(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 1176) = a1;
  *(v3 + 1184) = a2;

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.group(identifier:context:), 0, 0);
}

{
  v6 = *v3;
  v6[150] = v2;

  if (v2)
  {

    return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.group(identifier:context:), 0, 0);
  }

  else
  {
    v7 = v6[136];
    v8 = v6[135];
    v16 = v6[134];
    v6[151] = a2;
    v6[152] = a1;
    ObjectType = swift_getObjectType();
    v6[111] = v8;
    v6[112] = v7;
    v15 = (*(v16 + 64) + **(v16 + 64));
    v10 = swift_task_alloc();
    v6[153] = v10;
    *v10 = v6;
    v10[1] = closure #1 in MLS.SwiftMLSClientCoordinator.group(identifier:context:);
    v11 = v6[134];
    v12 = v6[120];
    v13 = v6[119];

    return v15(v13, v12, v6 + 111, ObjectType, v11);
  }
}

{
  v6 = *v3;
  *(*v3 + 1232) = v2;

  if (v2)
  {
    v7 = closure #1 in MLS.SwiftMLSClientCoordinator.group(identifier:context:);
  }

  else
  {
    *(v6 + 1240) = a2;
    *(v6 + 1248) = a1;
    v7 = closure #1 in MLS.SwiftMLSClientCoordinator.group(identifier:context:);
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t MLS.SwiftMLSClientCoordinator.update(groupDetails:forGroup:)(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 128) = a3;
  *(v4 + 136) = v3;
  *(v4 + 120) = a2;
  *(v4 + 144) = *a1;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v5 = static MLSActor.shared;
  *(v4 + 160) = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.SwiftMLSClientCoordinator.update(groupDetails:forGroup:), v5, 0);
}

uint64_t MLS.SwiftMLSClientCoordinator.update(groupDetails:forGroup:)()
{
  v18 = v0;
  v0[21] = direct field offset for MLS.SwiftMLSClientCoordinator.logger;

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v4 = v0[15];
    v3 = v0[16];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v17 = v6;
    *v5 = 136315138;
    *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v4, v3, &v17);
    _os_log_impl(&dword_264F1F000, v1, v2, "SwiftMLSClientCoordinator updateGroupDetails called { group: %s }", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x266755550](v6, -1, -1);
    MEMORY[0x266755550](v5, -1, -1);
  }

  v7 = v0[19];
  if (v7 >> 60 == 15)
  {

    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v11 = v0[15];
      v10 = v0[16];
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v17 = v13;
      *v12 = 136315138;
      *(v12 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v10, &v17);
      _os_log_impl(&dword_264F1F000, v8, v9, "SwiftMLSClientCoordinator updateGroupDetails returning to caller { group: %s }", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v13);
      MEMORY[0x266755550](v13, -1, -1);
      MEMORY[0x266755550](v12, -1, -1);
    }

    v14 = v0[1];

    return v14();
  }

  else
  {
    v16 = v0[18];
    swift_bridgeObjectRetain_n();
    swift_retain_n();
    outlined copy of Data?(v16, v7);

    return MEMORY[0x2822009F8](MLS.SwiftMLSClientCoordinator.update(groupDetails:forGroup:), 0, 0);
  }
}

{
  v1 = v0[17];
  v2 = *(v1 + 88);
  ObjectType = swift_getObjectType();
  v4 = *(v1 + direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier + 8);
  v0[11] = *(v1 + direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier);
  v0[12] = v4;
  v5 = *(v2 + 56);

  v12 = (v5 + *v5);
  v6 = swift_task_alloc();
  v0[22] = v6;
  *v6 = v0;
  v6[1] = MLS.SwiftMLSClientCoordinator.update(groupDetails:forGroup:);
  v7 = v0[19];
  v8 = v0[15];
  v9 = v0[16];
  v10 = v0[18];

  return (v12)(v10, v7, v8, v9, v0 + 11, ObjectType, v2);
}

{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = MLS.SwiftMLSClientCoordinator.update(groupDetails:forGroup:);
  }

  else
  {
    v2 = MLS.SwiftMLSClientCoordinator.update(groupDetails:forGroup:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v1 = *(v0 + 160);

  swift_bridgeObjectRelease_n();

  return MEMORY[0x2822009F8](MLS.SwiftMLSClientCoordinator.update(groupDetails:forGroup:), v1, 0);
}

{
  v10 = v0;
  outlined consume of Data?(v0[18], v0[19]);

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v4 = v0[15];
    v3 = v0[16];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v9 = v6;
    *v5 = 136315138;
    *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v4, v3, &v9);
    _os_log_impl(&dword_264F1F000, v1, v2, "SwiftMLSClientCoordinator updateGroupDetails returning to caller { group: %s }", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x266755550](v6, -1, -1);
    MEMORY[0x266755550](v5, -1, -1);
  }

  v7 = v0[1];

  return v7();
}

{
  v1 = *(v0 + 184);
  v2 = *(v0 + 160);
  v3 = *(v0 + 128);
  v4 = *(v0 + 136);
  v5 = *(v0 + 120);
  swift_getErrorValue();
  v6 = Error.readableDescription.getter(*(v0 + 24), *(v0 + 32));
  closure #9 in closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:)(v6, v7, v4, v5, v3, "SwiftMLSClientCoordinator updateGroupDetails failed saving groupClientContextBlob { group: %s, error: %s }");

  swift_getErrorValue();
  v8 = Error.readableDescription.getter(*(v0 + 48), *(v0 + 56));
  *(v0 + 192) = v8;
  *(v0 + 200) = v9;
  *(v0 + 64) = 4;
  *(v0 + 72) = v8;
  *(v0 + 80) = v9;
  *(v0 + 208) = lazy protocol witness table accessor for type MLS.GroupUpdateError and conformance MLS.GroupUpdateError();
  swift_willThrowTypedImpl();

  swift_bridgeObjectRelease_n();

  return MEMORY[0x2822009F8](MLS.SwiftMLSClientCoordinator.update(groupDetails:forGroup:), v2, 0);
}

{
  v1 = v0[25];
  v2 = v0[24];
  v3 = v0[18];
  v4 = v0[19];
  swift_allocError();
  *v5 = 4;
  *(v5 + 8) = v2;
  *(v5 + 16) = v1;
  outlined consume of Data?(v3, v4);
  v6 = v0[1];

  return v6();
}

void closure #9 in closure #1 in MLS.SwiftMLSClientCoordinator.createGroup(identifier:otherMembers:context:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, const char *a6)
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

uint64_t MLS.SwiftMLSClientCoordinator.otherMembers(group:context:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  *(v4 + 120) = a1;
  *(v4 + 128) = a2;
  v5 = *a3;
  v6 = a3[1];
  *(v4 + 136) = v3;
  *(v4 + 144) = v5;
  *(v4 + 152) = v6;
  *(v4 + 224) = *(a3 + 16);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v7 = static MLSActor.shared;
  *(v4 + 160) = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.SwiftMLSClientCoordinator.otherMembers(group:context:), v7, 0);
}

uint64_t MLS.SwiftMLSClientCoordinator.otherMembers(group:context:)()
{
  v11 = v0;
  v0[21] = direct field offset for MLS.SwiftMLSClientCoordinator.logger;

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v4 = v0[18];
    v3 = v0[19];
    v6 = v0[15];
    v5 = v0[16];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v10 = v8;
    *v7 = 136315394;
    *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v4, v3, &v10);
    *(v7 + 12) = 2080;
    *(v7 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v5, &v10);
    _os_log_impl(&dword_264F1F000, v1, v2, "SwiftMLSClientCoordinator otherMembers called { identifier: %s, group: %s }", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v8, -1, -1);
    MEMORY[0x266755550](v7, -1, -1);
  }

  swift_bridgeObjectRetain_n();
  swift_retain_n();

  return MEMORY[0x2822009F8](MLS.SwiftMLSClientCoordinator.otherMembers(group:context:), 0, 0);
}

{
  v1 = *(v0 + 136);
  v2 = *(v1 + 88);
  ObjectType = swift_getObjectType();
  v4 = *(v1 + direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier + 8);
  *(v0 + 88) = *(v1 + direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier);
  *(v0 + 96) = v4;
  v5 = *(v2 + 72);

  v11 = (v5 + *v5);
  v6 = swift_task_alloc();
  *(v0 + 176) = v6;
  *v6 = v0;
  v6[1] = MLS.SwiftMLSClientCoordinator.otherMembers(group:context:);
  v7 = *(v0 + 224);
  v9 = *(v0 + 120);
  v8 = *(v0 + 128);

  return v11(v9, v8, v7, v0 + 88, ObjectType, v2);
}

{
  v1 = *(v0 + 160);

  swift_bridgeObjectRelease_n();

  return MEMORY[0x2822009F8](MLS.SwiftMLSClientCoordinator.otherMembers(group:context:), v1, 0);
}

{
  v27 = v0;

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 184);
    v4 = *(v0 + 224);
    v6 = *(v0 + 144);
    v5 = *(v0 + 152);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v26 = v8;
    *v7 = 136315650;
    *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v5, &v26);
    *(v7 + 12) = 1024;
    *(v7 + 14) = v4;

    *(v7 + 18) = 2080;
    v9 = MEMORY[0x266754630](v3, &type metadata for MLS.PersistedMember);
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v26);

    *(v7 + 20) = v11;
    _os_log_impl(&dword_264F1F000, v1, v2, "SwiftMLSClientCoordinator otherMembers returning members to caller { identifier: %s, includePendingMembers: %{BOOL}d, members: %s }", v7, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x266755550](v8, -1, -1);
    MEMORY[0x266755550](v7, -1, -1);
  }

  else
  {
  }

  v12 = *(v0 + 184);
  v13 = *(v12 + 16);
  if (v13)
  {
    v26 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v13, 0);
    v14 = v26;
    v15 = (v12 + 56);
    do
    {
      v16 = *(v15 - 3);
      v17 = *(v15 - 2);
      v18 = *(v15 - 1);
      v19 = *v15;
      outlined copy of MLS.AllMember(v16, v17);
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v26 = v14;
      v21 = *(v14 + 16);
      v20 = *(v14 + 24);
      if (v21 >= v20 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v21 + 1, 1);
        v14 = v26;
      }

      v15 += 32;
      *(v14 + 16) = v21 + 1;
      v22 = v14 + 32 * v21;
      *(v22 + 32) = v16;
      *(v22 + 40) = v17;
      *(v22 + 48) = v18;
      *(v22 + 56) = v19;
      --v13;
    }

    while (v13);
  }

  else
  {

    v14 = MEMORY[0x277D84F90];
  }

  v23 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC15SecureMessaging3MLSO9AllMemberO_SayAHGTt0g5Tf4g_n(v14);

  v24 = *(v0 + 8);

  return v24(v23);
}

{
  v1 = *(v0 + 192);
  v3 = *(v0 + 152);
  v2 = *(v0 + 160);
  v4 = *(v0 + 136);
  v5 = *(v0 + 144);
  swift_getErrorValue();
  v6 = Error.readableDescription.getter(*(v0 + 24), *(v0 + 32));
  closure #1 in MLS.SwiftMLSClientCoordinator.otherMembers(group:context:)(v6, v7, v4, v5, v3);

  swift_getErrorValue();
  v8 = Error.readableDescription.getter(*(v0 + 48), *(v0 + 56));
  *(v0 + 200) = v8;
  *(v0 + 208) = v9;
  *(v0 + 64) = 4;
  *(v0 + 72) = v8;
  *(v0 + 80) = v9;
  *(v0 + 216) = lazy protocol witness table accessor for type MLS.GroupMembersError and conformance MLS.GroupMembersError();
  swift_willThrowTypedImpl();

  swift_bridgeObjectRelease_n();

  return MEMORY[0x2822009F8](MLS.SwiftMLSClientCoordinator.otherMembers(group:context:), v2, 0);
}

{
  v1 = v0[26];
  v2 = v0[25];
  swift_allocError();
  *v3 = 4;
  *(v3 + 8) = v2;
  *(v3 + 16) = v1;
  v4 = v0[1];

  return v4();
}

uint64_t MLS.SwiftMLSClientCoordinator.otherMembers(group:context:)(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 184) = a1;
  *(v3 + 192) = v1;

  if (v1)
  {
    v4 = MLS.SwiftMLSClientCoordinator.otherMembers(group:context:);
  }

  else
  {
    v4 = MLS.SwiftMLSClientCoordinator.otherMembers(group:context:);
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

void closure #1 in MLS.SwiftMLSClientCoordinator.otherMembers(group:context:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
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
    _os_log_impl(&dword_264F1F000, oslog, v9, "SwiftMLSClientCoordinator otherMembers failed to load group members { identifier: %s, error: %s }", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v11, -1, -1);
    MEMORY[0x266755550](v10, -1, -1);
  }
}

uint64_t MLS.SwiftMLSClientCoordinator.version(group:)(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v3 = static MLSActor.shared;
  v2[7] = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.SwiftMLSClientCoordinator.version(group:), v3, 0);
}

uint64_t MLS.SwiftMLSClientCoordinator.version(group:)()
{
  v1 = *(v0 + 48);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v6 = (*(v3 + 32) + **(v3 + 32));
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  *v4 = v0;
  v4[1] = MLS.SwiftMLSClientCoordinator.version(group:);

  return v6(v2, v3);
}

{
  v1 = *(v0 + 48);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v6 = (*(v3 + 24) + **(v3 + 24));
  v4 = swift_task_alloc();
  *(v0 + 72) = v4;
  *v4 = v0;
  v4[1] = MLS.SwiftMLSClientCoordinator.version(group:);

  return v6(v2, v3);
}

{
  v1 = *(v0 + 80);
  if (v1 < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = *(v0 + 24);
    v3 = *(v0 + 40);
    if ((v2 & 0x100000000) != 0)
    {
      v2 = 1;
    }

    else
    {
      v2 = v2;
    }

    *v3 = v2;
    *(v3 + 8) = v2;
    *(v3 + 16) = v1;
    return (*(v0 + 8))();
  }

  return result;
}

uint64_t MLS.SwiftMLSClientCoordinator.version(group:)(uint64_t a1)
{
  v3 = *v2;
  v3[2] = v2;
  v3[3] = a1;
  v3[4] = v1;
  v4 = *v2;

  if (v1)
  {
    v5 = v4[1];

    return v5();
  }

  else
  {
    v7 = v3[7];

    return MEMORY[0x2822009F8](MLS.SwiftMLSClientCoordinator.version(group:), v7, 0);
  }
}

{
  v2 = *(*v1 + 56);
  *(*v1 + 80) = a1;

  return MEMORY[0x2822009F8](MLS.SwiftMLSClientCoordinator.version(group:), v2, 0);
}

uint64_t MLS.SwiftMLSClientCoordinator.addMessages(group:commitOutput:)(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v47 = a1;
  v48 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8SwiftMLS0B0O5GroupO7MessageVSgMd, &_s8SwiftMLS0B0O5GroupO7MessageVSgMR);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v43 - v7;
  v9 = type metadata accessor for MLS.Group.Message();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v43 - v14;
  v16 = a5[3];
  v17 = a5[4];
  __swift_project_boxed_opaque_existential_1(a5, v16);
  (*(v17 + 16))(v16, v17);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    outlined destroy of NSObject?(v8, &_s8SwiftMLS0B0O5GroupO7MessageVSgMd, &_s8SwiftMLS0B0O5GroupO7MessageVSgMR);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_264F1F000, v18, v19, "SwiftMLSClientCoordinator addMessages missing welcome message", v20, 2u);
      MEMORY[0x266755550](v20, -1, -1);
    }

    lazy protocol witness table accessor for type MLS.GroupOperationError and conformance MLS.GroupOperationError();
    swift_allocError();
    *v21 = 4;
    *(v21 + 8) = 0;
    *(v21 + 16) = 0;
    return swift_willThrow();
  }

  else
  {
    v23 = v15;
    (*(v10 + 32))(v15, v8, v9);
    v24 = a5[3];
    v25 = a5[4];
    __swift_project_boxed_opaque_existential_1(a5, v24);
    (*(v25 + 8))(v24, v25);
    v26 = MLS.Group.GroupInfo.rawRepresentation.getter();
    v45 = v27;
    v46 = v26;
    v44 = *(v10 + 8);
    v44(v13, v9);
    v28 = [objc_allocWithZone(MEMORY[0x277CCAD78]) init];
    v29 = [v28 UUIDString];

    v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v31 = v30;

    v32 = MLS.Group.GroupInfo.rawRepresentation.getter();
    v34 = v33;
    v35 = [objc_allocWithZone(MEMORY[0x277CCAD78]) init];
    v36 = [v35 UUIDString];

    v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v39 = v38;

    result = (v44)(v23, v9);
    v41 = v47;
    v40 = v48;
    *v47 = v43;
    v41[1] = v31;
    v42 = v45;
    v41[2] = v46;
    v41[3] = v42;
    *v40 = v37;
    v40[1] = v39;
    v40[2] = v32;
    v40[3] = v34;
  }

  return result;
}

uint64_t MLS.SwiftMLSClientCoordinator.getContextAfterCommit(_:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v41 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8SwiftMLS0B0O5GroupO0C4InfoVSgMd, &_s8SwiftMLS0B0O5GroupO0C4InfoVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v39 - v5;
  v42 = v2;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_264F1F000, v7, v8, "SwiftMLSClientCoordinator getContextAfterCommit accessing data from commitOutput }", v9, 2u);
    MEMORY[0x266755550](v9, -1, -1);
  }

  v10 = a1[3];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v10);
  v43 = (*(v11 + 40))(v10, v11);
  v13 = v12;
  v14 = a1[3];
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v14);
  (*(v15 + 24))(v14, v15);
  v16 = type metadata accessor for MLS.Group.GroupInfo();
  v17 = *(v16 - 8);
  if ((*(v17 + 48))(v6, 1, v16) == 1)
  {
    outlined destroy of NSObject?(v6, &_s8SwiftMLS0B0O5GroupO0C4InfoVSgMd, &_s8SwiftMLS0B0O5GroupO0C4InfoVSgMR);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_264F1F000, v18, v19, "SwiftMLSClientCoordinator getContextAfterCommit commitOutput missing nextGroupInfo", v20, 2u);
      MEMORY[0x266755550](v20, -1, -1);
    }

    lazy protocol witness table accessor for type MLS.GroupOperationError and conformance MLS.GroupOperationError();
    swift_allocError();
    *v21 = 19;
    *(v21 + 8) = 0;
    *(v21 + 16) = 0;
    swift_willThrow();
    return outlined consume of Data?(v43, v13);
  }

  v40 = v13;
  v22 = MLS.Group.GroupInfo.rawRepresentation.getter();
  v24 = v23;
  (*(v17 + 8))(v6, v16);
  v25 = a1[3];
  v26 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v25);
  v27 = *(v26 + 32);
  outlined copy of Data._Representation(v22, v24);
  v28 = v27(v25, v26);
  if (v29 >> 60 == 15)
  {
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_264F1F000, v30, v31, "SwiftMLSClientCoordinator getContextAfterCommit commitOutput missing epochAuthenticator", v32, 2u);
      MEMORY[0x266755550](v32, -1, -1);
    }

    lazy protocol witness table accessor for type MLS.GroupOperationError and conformance MLS.GroupOperationError();
    swift_allocError();
    *v33 = 18;
    *(v33 + 8) = 0;
    *(v33 + 16) = 0;
    swift_willThrow();
    outlined consume of Data._Representation(v22, v24);
    outlined consume of Data._Representation(v22, v24);
    v13 = v40;
    return outlined consume of Data?(v43, v13);
  }

  v35 = v28;
  v36 = v29;
  result = outlined consume of Data._Representation(v22, v24);
  v37 = v41;
  *v41 = v35;
  v37[1] = v36;
  v38 = v40;
  v37[2] = v43;
  v37[3] = v38;
  v37[4] = v22;
  v37[5] = v24;
  return result;
}

uint64_t MLS.SwiftMLSClientCoordinator.add(members:toGroup:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  *(v6 + 64) = a3;
  *(v6 + 72) = a4;
  *(v6 + 48) = a1;
  *(v6 + 56) = a2;
  v7 = *a5;
  v8 = a5[1];
  *(v6 + 80) = v5;
  *(v6 + 88) = v7;
  *(v6 + 96) = v8;
  *(v6 + 104) = *(a5 + 1);
  *(v6 + 120) = a5[4];
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v9 = static MLSActor.shared;
  *(v6 + 128) = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.SwiftMLSClientCoordinator.add(members:toGroup:context:), v9, 0);
}

uint64_t MLS.SwiftMLSClientCoordinator.add(members:toGroup:context:)()
{
  v2 = v0[14];
  v1 = v0[15];
  v4 = v0[12];
  v3 = v0[13];
  v5 = v0[10];
  v15 = v0[8];
  v16 = v0[9];
  v14 = v0[7];
  v6 = *(v5 + direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier + 8);
  v17 = *(v5 + direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier);
  v18 = v0[11];
  v20 = type metadata accessor for MLS.AddMembersOperation(0);
  v7 = swift_allocObject();

  v21 = *(v5 + 80);
  v0[17] = v7;
  outlined copy of Data?(v3, v2);

  swift_unknownObjectRetain();

  Logger.init(subsystem:category:)();
  *(v7 + 16) = v14;
  *(v7 + 24) = v15;
  *(v7 + 32) = v16;
  *(v7 + 40) = v18;
  *(v7 + 48) = v4;
  *(v7 + 56) = v3;
  *(v7 + 64) = v2;
  *(v7 + 72) = v1;
  *(v7 + 80) = v21;
  *(v7 + 96) = v17;
  *(v7 + 104) = v6;
  v8 = *(v5 + direct field offset for MLS.SwiftMLSClientCoordinator.runner);
  v0[5] = v7;
  v9 = *(*v8 + 216);

  v19 = (v9 + *v9);
  v10 = swift_task_alloc();
  v0[18] = v10;
  v11 = lazy protocol witness table accessor for type MLS.AddMembersOperation and conformance MLS.AddMembersOperation(&lazy protocol witness table cache variable for type MLS.AddMembersOperation and conformance MLS.AddMembersOperation, type metadata accessor for MLS.AddMembersOperation, &protocol conformance descriptor for MLS.AddMembersOperation);
  *v10 = v0;
  v10[1] = MLS.SwiftMLSClientCoordinator.add(members:toGroup:context:);
  v12 = v0[6];

  return (v19)(v12, v0 + 5, v20, v11, v0 + 2);
}

{
  v2 = *v1;

  v3 = *(v2 + 128);
  if (v0)
  {
    v4 = MLS.SwiftMLSClientCoordinator.add(members:toGroup:context:);
  }

  else
  {
    v4 = MLS.SwiftMLSClientCoordinator.add(members:toGroup:context:);
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  lazy protocol witness table accessor for type MLS.GroupOperationError and conformance MLS.GroupOperationError();
  swift_allocError();
  *v4 = v1;
  *(v4 + 8) = v2;
  *(v4 + 16) = v3;

  v5 = *(v0 + 8);

  return v5();
}

uint64_t MLS.SwiftMLSClientCoordinator.kick(members:fromGroup:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  *(v6 + 104) = a3;
  *(v6 + 112) = a4;
  *(v6 + 88) = a1;
  *(v6 + 96) = a2;
  v7 = *a5;
  v8 = a5[1];
  *(v6 + 120) = v5;
  *(v6 + 128) = v7;
  *(v6 + 136) = v8;
  *(v6 + 144) = *(a5 + 1);
  *(v6 + 160) = a5[4];
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v9 = static MLSActor.shared;
  *(v6 + 168) = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.SwiftMLSClientCoordinator.kick(members:fromGroup:context:), v9, 0);
}

uint64_t MLS.SwiftMLSClientCoordinator.kick(members:fromGroup:context:)()
{
  v2 = *(v0 + 152);
  v1 = *(v0 + 160);
  v3 = *(v0 + 136);
  v4 = *(v0 + 144);
  v5 = *(v0 + 120);
  v18 = *(v0 + 128);
  v15 = *(v0 + 104);
  v16 = *(v0 + 112);
  v14 = *(v0 + 96);
  outlined init with copy of ServerBag.MLS(v5 + 104, v0 + 16);
  v6 = *(v5 + direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier + 8);
  v17 = *(v5 + direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier);
  v20 = type metadata accessor for MLS.KickMembersOperation(0);
  v7 = swift_allocObject();

  v21 = *(v5 + 80);
  *(v0 + 176) = v7;
  outlined copy of Data?(v4, v2);

  swift_unknownObjectRetain();

  Logger.init(subsystem:category:)();
  *(v7 + 16) = v14;
  *(v7 + 24) = v15;
  *(v7 + 32) = v16;
  *(v7 + 40) = v18;
  *(v7 + 48) = v3;
  *(v7 + 56) = v4;
  *(v7 + 64) = v2;
  *(v7 + 72) = v1;
  outlined init with take of MLS.KeyUpdatePolicy((v0 + 16), v7 + 80);
  *(v7 + 120) = v21;
  *(v7 + 136) = v17;
  *(v7 + 144) = v6;
  v8 = *(v5 + direct field offset for MLS.SwiftMLSClientCoordinator.runner);
  *(v0 + 80) = v7;
  v9 = *(*v8 + 216);

  v19 = (v9 + *v9);
  v10 = swift_task_alloc();
  *(v0 + 184) = v10;
  v11 = lazy protocol witness table accessor for type MLS.AddMembersOperation and conformance MLS.AddMembersOperation(&lazy protocol witness table cache variable for type MLS.KickMembersOperation and conformance MLS.KickMembersOperation, type metadata accessor for MLS.KickMembersOperation, &protocol conformance descriptor for MLS.KickMembersOperation);
  *v10 = v0;
  v10[1] = MLS.SwiftMLSClientCoordinator.kick(members:fromGroup:context:);
  v12 = *(v0 + 88);

  return v19(v12, v0 + 80, v20, v11, v0 + 56);
}

{
  v2 = *v1;

  v3 = *(v2 + 168);
  if (v0)
  {
    v4 = MLS.SwiftMLSClientCoordinator.kick(members:fromGroup:context:);
  }

  else
  {
    v4 = MLS.SwiftMLSClientCoordinator.kick(members:fromGroup:context:);
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  v3 = *(v0 + 72);
  lazy protocol witness table accessor for type MLS.GroupOperationError and conformance MLS.GroupOperationError();
  swift_allocError();
  *v4 = v1;
  *(v4 + 8) = v2;
  *(v4 + 16) = v3;

  v5 = *(v0 + 8);

  return v5();
}

uint64_t MLS.SwiftMLSClientCoordinator.downgrade(group:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 64) = a3;
  *(v5 + 72) = v4;
  *(v5 + 48) = a1;
  *(v5 + 56) = a2;
  v6 = *(a4 + 8);
  *(v5 + 80) = *a4;
  *(v5 + 88) = v6;
  *(v5 + 96) = *(a4 + 16);
  *(v5 + 112) = *(a4 + 32);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v7 = static MLSActor.shared;
  *(v5 + 120) = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.SwiftMLSClientCoordinator.downgrade(group:context:), v7, 0);
}

uint64_t MLS.SwiftMLSClientCoordinator.downgrade(group:context:)()
{
  v2 = v0[13];
  v1 = v0[14];
  v4 = v0[11];
  v3 = v0[12];
  v17 = v0[10];
  v19 = v0[9];
  v14 = v0[7];
  v15 = v0[8];
  v5 = *(v19 + direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier + 8);
  v16 = *(v19 + direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO18DowngradeOperationCy_AC0D5ErrorVAC0D7ContextVy_10Foundation4DataVGAC0d9ProcessedG0Vy_ALGGMd, &_s15SecureMessaging3MLSO18DowngradeOperationCy_AC0D5ErrorVAC0D7ContextVy_10Foundation4DataVGAC0d9ProcessedG0Vy_ALGGMR);
  v7 = swift_allocObject();
  v0[16] = v7;

  outlined copy of Data?(v3, v2);

  Logger.init(subsystem:category:)();
  *(v7 + 16) = v14;
  *(v7 + 24) = v15;
  *(v7 + 32) = v17;
  *(v7 + 40) = v4;
  *(v7 + 48) = v3;
  *(v7 + 56) = v2;
  *(v7 + 64) = v1;
  *(v7 + 72) = v16;
  *(v7 + 80) = v5;
  *(v7 + 88) = 1;
  v8 = *(v19 + direct field offset for MLS.SwiftMLSClientCoordinator.runner);
  v0[5] = v7;
  v9 = *(*v8 + 216);

  v18 = (v9 + *v9);
  v10 = swift_task_alloc();
  v0[17] = v10;
  v11 = lazy protocol witness table accessor for type MLS.KeyPackageRetrievalResult<MLS.AllMember> and conformance MLS.KeyPackageRetrievalResult<A>(&lazy protocol witness table cache variable for type MLS.DowngradeOperation<MLS.DowngradeError, MLS.DowngradeContext<Data>, MLS.DowngradeProcessedContext<Data>> and conformance MLS.DowngradeOperation<A, B, C>, &_s15SecureMessaging3MLSO18DowngradeOperationCy_AC0D5ErrorVAC0D7ContextVy_10Foundation4DataVGAC0d9ProcessedG0Vy_ALGGMd, &_s15SecureMessaging3MLSO18DowngradeOperationCy_AC0D5ErrorVAC0D7ContextVy_10Foundation4DataVGAC0d9ProcessedG0Vy_ALGGMR, &protocol conformance descriptor for MLS.DowngradeOperation<A, B, C>);
  *v10 = v0;
  v10[1] = MLS.SwiftMLSClientCoordinator.downgrade(group:context:);
  v12 = v0[6];

  return (v18)(v12, v0 + 5, v6, v11, v0 + 2);
}

{
  v2 = *v1;

  v3 = *(v2 + 120);
  if (v0)
  {
    v4 = MLS.SwiftMLSClientCoordinator.downgrade(group:context:);
  }

  else
  {
    v4 = MLS.SwiftMLSClientCoordinator.downgrade(group:context:);
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  lazy protocol witness table accessor for type MLS.DowngradeError and conformance MLS.DowngradeError();
  swift_allocError();
  *v4 = v1;
  *(v4 + 8) = v2;
  *(v4 + 16) = v3;

  v5 = *(v0 + 8);

  return v5();
}

uint64_t MLS.SwiftMLSClientCoordinator.leave(group:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  *(v5 + 96) = a3;
  *(v5 + 104) = v4;
  *(v5 + 80) = a1;
  *(v5 + 88) = a2;
  v6 = *a4;
  v7 = a4[1];
  *(v5 + 112) = *v4;
  *(v5 + 120) = v6;
  *(v5 + 128) = v7;
  *(v5 + 136) = *(a4 + 1);
  *(v5 + 152) = a4[4];
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v8 = static MLSActor.shared;
  *(v5 + 160) = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.SwiftMLSClientCoordinator.leave(group:context:), v8, 0);
}

uint64_t MLS.SwiftMLSClientCoordinator.leave(group:context:)()
{
  v29 = v0;
  v2 = *(v0 + 144);
  v1 = *(v0 + 152);
  v4 = *(v0 + 128);
  v3 = *(v0 + 136);
  v5 = *(v0 + 120);
  v20 = *(v0 + 112);
  v7 = *(v0 + 96);
  v6 = *(v0 + 104);
  v22 = *(v0 + 88);
  v21 = type metadata accessor for MLS.LeaveGroupOperation(0);
  *&v24 = v5;
  *(&v24 + 1) = v4;
  v25 = v3;
  v26 = v2;
  v8 = *(v6 + direct field offset for MLS.SwiftMLSClientCoordinator.groupLoader);
  v9 = *(v6 + 96);
  v10 = *(v6 + direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier);
  v11 = *(v6 + direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier + 8);
  v27 = v1;
  v28[0] = v10;
  v28[1] = v11;

  outlined copy of Data?(v3, v2);

  v12 = *(v20 + 96);
  *(v0 + 16) = *(v20 + 80);
  *(v0 + 32) = v12;
  v13 = type metadata accessor for MLS.EventSender(0, v0 + 16);
  v14 = specialized MLS.LeaveGroupOperation.__allocating_init(group:context:groupLoader:eventSender:clientIdentifier:)(v22, v7, &v24, v8, v9, v28, v21, v13, &protocol witness table for MLS.EventSender<A, B>);
  *(v0 + 168) = v14;
  v15 = *(v6 + direct field offset for MLS.SwiftMLSClientCoordinator.runner);
  *(v0 + 72) = v14;
  v23 = (*(*v15 + 216) + **(*v15 + 216));
  v16 = swift_task_alloc();
  *(v0 + 176) = v16;
  v17 = lazy protocol witness table accessor for type MLS.AddMembersOperation and conformance MLS.AddMembersOperation(&lazy protocol witness table cache variable for type MLS.LeaveGroupOperation and conformance MLS.LeaveGroupOperation, type metadata accessor for MLS.LeaveGroupOperation, &protocol conformance descriptor for MLS.LeaveGroupOperation);
  *v16 = v0;
  v16[1] = MLS.SwiftMLSClientCoordinator.leave(group:context:);
  v18 = *(v0 + 80);

  return v23(v18, v0 + 72, v21, v17, v0 + 48);
}

{
  v2 = *v1;

  v3 = *(v2 + 160);
  if (v0)
  {
    v4 = MLS.SwiftMLSClientCoordinator.leave(group:context:);
  }

  else
  {
    v4 = MLS.SwiftMLSClientCoordinator.leave(group:context:);
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  v3 = *(v0 + 64);
  lazy protocol witness table accessor for type MLS.GroupOperationError and conformance MLS.GroupOperationError();
  swift_allocError();
  *v4 = v1;
  *(v4 + 8) = v2;
  *(v4 + 16) = v3;

  v5 = *(v0 + 8);

  return v5();
}

uint64_t MLS.SwiftMLSClientCoordinator.updateKeyPackageIfNeeded<A>(group:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[25] = a5;
  v6[26] = v5;
  v6[23] = a3;
  v6[24] = a4;
  v6[21] = a1;
  v6[22] = a2;
  type metadata accessor for MLS.KeyPackageProvider(0);
  v6[27] = swift_task_alloc();
  v6[28] = *(a4 - 8);
  v6[29] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v8 = static MLSActor.shared;
  v6[30] = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.SwiftMLSClientCoordinator.updateKeyPackageIfNeeded<A>(group:context:), v8, 0);
}

uint64_t MLS.SwiftMLSClientCoordinator.updateKeyPackageIfNeeded<A>(group:context:)()
{
  v27 = v0;
  v1 = *(v0 + 224);
  v2 = *(v0 + 232);
  v3 = *(v0 + 208);
  v4 = *(v0 + 216);
  v5 = *(v0 + 192);
  v6 = *(v0 + 200);
  v7 = *(v0 + 176);
  v8 = *(v0 + 184);
  v22 = v2;
  v23 = *(v0 + 168);
  v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s15SecureMessaging3MLSO30GroupOperationProcessedContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO30GroupOperationProcessedContextVy_10Foundation4DataVGMR);
  v10 = lazy protocol witness table accessor for type MLS.GroupOperationError and conformance MLS.GroupOperationError();
  *(v0 + 16) = &type metadata for MLS.GroupOperationError;
  *(v0 + 24) = v5;
  *(v0 + 32) = v9;
  *(v0 + 40) = v10;
  *(v0 + 48) = v6;
  *(v0 + 56) = &protocol witness table for <> MLS.GroupOperationProcessedContext<A>;
  v11 = type metadata accessor for MLS.CheckKeyPackageExpirationOperation(0, v0 + 16);
  (*(v1 + 16))(v2, v8, v5);
  v12 = v3[10];
  v13 = v3[11];
  v14 = v3[12];
  outlined init with copy of ServerBag.MLS((v3 + 13), v0 + 64);
  outlined init with copy of MLS.KeyPackageProvider(v3 + direct field offset for MLS.SwiftMLSClientCoordinator.keyPackageProvider, v4);
  v15 = *(v3 + direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier);
  v16 = *(v3 + direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier + 8);
  v25 = *(v3 + direct field offset for MLS.SwiftMLSClientCoordinator.featureFlagsStore);
  v26[0] = v15;
  v26[1] = v16;

  swift_unknownObjectRetain();

  v17 = MLS.CheckKeyPackageExpirationOperation.__allocating_init(group:context:persister:eventSender:credentialProvider:keyPackageProvider:featureFlagsStore:clientIdentifier:)(v23, v7, v22, v12, v13, v14, &protocol witness table for MLS.EventSender<A, B>, (v0 + 64), v4, &v25, v26);
  *(v0 + 248) = v17;
  v18 = *(v3 + direct field offset for MLS.SwiftMLSClientCoordinator.runner);
  *(v0 + 160) = v17;
  v24 = (*(*v18 + 216) + **(*v18 + 216));
  v19 = swift_task_alloc();
  *(v0 + 256) = v19;
  WitnessTable = swift_getWitnessTable();
  *v19 = v0;
  v19[1] = MLS.SwiftMLSClientCoordinator.updateKeyPackageIfNeeded<A>(group:context:);

  return v24(v0 + 104, v0 + 160, v11, WitnessTable, v0 + 136);
}

{
  v2 = *v1;

  if (v0)
  {
    v3 = v2[30];
    v4 = MLS.SwiftMLSClientCoordinator.updateKeyPackageIfNeeded<A>(group:context:);
  }

  else
  {
    v5 = v2[30];
    outlined consume of Data?(v2[13], v2[14]);

    v4 = MLS.SwiftMLSClientCoordinator.updateKeyPackageIfNeeded<A>(group:context:);
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

{
  v1 = *(v0 + 136);
  v2 = *(v0 + 144);
  v3 = *(v0 + 152);
  lazy protocol witness table accessor for type MLS.GroupOperationError and conformance MLS.GroupOperationError();
  swift_allocError();
  *v4 = v1;
  *(v4 + 8) = v2;
  *(v4 + 16) = v3;

  v5 = *(v0 + 8);

  return v5();
}

uint64_t MLS.SwiftMLSClientCoordinator.applicationEncrypt(data:withGroup:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 384) = a5;
  *(v7 + 392) = v6;
  *(v7 + 368) = a3;
  *(v7 + 376) = a4;
  *(v7 + 352) = a1;
  *(v7 + 360) = a2;
  v8 = *(a6 + 112);
  *(v7 + 112) = *(a6 + 96);
  *(v7 + 128) = v8;
  *(v7 + 144) = *(a6 + 128);
  *(v7 + 160) = *(a6 + 144);
  v9 = *(a6 + 48);
  *(v7 + 48) = *(a6 + 32);
  *(v7 + 64) = v9;
  v10 = *(a6 + 80);
  *(v7 + 80) = *(a6 + 64);
  *(v7 + 96) = v10;
  v11 = *(a6 + 16);
  *(v7 + 16) = *a6;
  *(v7 + 32) = v11;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v12 = static MLSActor.shared;
  *(v7 + 400) = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.SwiftMLSClientCoordinator.applicationEncrypt(data:withGroup:context:), v12, 0);
}

uint64_t MLS.SwiftMLSClientCoordinator.applicationEncrypt(data:withGroup:context:)()
{
  v1 = *(v0 + 384);
  v2 = *(v0 + 392);
  v3 = *(v0 + 368);
  v4 = *(v0 + 376);
  v5 = *(v0 + 360);
  v6 = type metadata accessor for MLS.EncryptOperation(0);
  v7 = swift_allocObject();
  *(v0 + 408) = v7;
  outlined init with copy of MLS.OutgoingEventState?(v0 + 16, v0 + 168, &_s15SecureMessaging3MLSO17EncryptionContextVy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17EncryptionContextVy_AC9AllMemberO10Foundation4DataVGMR);
  Logger.init(subsystem:category:)();
  *(v7 + 16) = v5;
  *(v7 + 24) = v3;
  *(v7 + 32) = v4;
  *(v7 + 40) = v1;
  v8 = *(v0 + 96);
  *(v7 + 112) = *(v0 + 80);
  *(v7 + 128) = v8;
  v9 = *(v0 + 64);
  *(v7 + 80) = *(v0 + 48);
  *(v7 + 96) = v9;
  *(v7 + 192) = *(v0 + 160);
  v10 = *(v0 + 144);
  *(v7 + 160) = *(v0 + 128);
  *(v7 + 176) = v10;
  *(v7 + 144) = *(v0 + 112);
  v11 = *(v0 + 32);
  *(v7 + 48) = *(v0 + 16);
  *(v7 + 64) = v11;
  v12 = *(v2 + direct field offset for MLS.SwiftMLSClientCoordinator.runner);
  *(v0 + 344) = v7;
  v13 = *(*v12 + 216);
  outlined copy of Data._Representation(v5, v3);

  v18 = (v13 + *v13);
  v14 = swift_task_alloc();
  *(v0 + 416) = v14;
  v15 = lazy protocol witness table accessor for type MLS.AddMembersOperation and conformance MLS.AddMembersOperation(&lazy protocol witness table cache variable for type MLS.EncryptOperation and conformance MLS.EncryptOperation, type metadata accessor for MLS.EncryptOperation, &protocol conformance descriptor for MLS.EncryptOperation);
  *v14 = v0;
  v14[1] = MLS.SwiftMLSClientCoordinator.applicationEncrypt(data:withGroup:context:);
  v16 = *(v0 + 352);

  return v18(v16, v0 + 344, v6, v15, v0 + 320);
}

{
  v2 = *v1;

  v3 = *(v2 + 400);
  if (v0)
  {
    v4 = MLS.SwiftMLSClientCoordinator.applicationEncrypt(data:withGroup:context:);
  }

  else
  {
    v4 = MLS.SwiftMLSClientCoordinator.applicationEncrypt(data:withGroup:context:);
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

{
  v1 = *(v0 + 320);
  v2 = *(v0 + 328);
  v3 = *(v0 + 336);
  lazy protocol witness table accessor for type MLS.EncryptionError and conformance MLS.EncryptionError();
  swift_allocError();
  *v4 = v1;
  *(v4 + 8) = v2;
  *(v4 + 16) = v3;

  v5 = *(v0 + 8);

  return v5();
}

uint64_t MLS.SwiftMLSClientCoordinator.applicationSign(input:withGroup:context:)(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 192) = a4;
  *(v6 + 200) = v5;
  *(v6 + 176) = a1;
  *(v6 + 184) = a3;
  v7 = a2[1];
  *(v6 + 16) = *a2;
  *(v6 + 32) = v7;
  *(v6 + 48) = a2[2];
  *(v6 + 60) = *(a2 + 44);
  v8 = *(a5 + 8);
  *(v6 + 208) = *a5;
  *(v6 + 216) = v8;
  *(v6 + 224) = *(a5 + 16);
  *(v6 + 240) = *(a5 + 32);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v9 = static MLSActor.shared;
  *(v6 + 248) = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.SwiftMLSClientCoordinator.applicationSign(input:withGroup:context:), v9, 0);
}

uint64_t MLS.SwiftMLSClientCoordinator.applicationSign(input:withGroup:context:)()
{
  v2 = *(v0 + 232);
  v1 = *(v0 + 240);
  v4 = *(v0 + 216);
  v3 = *(v0 + 224);
  v16 = *(v0 + 208);
  v18 = *(v0 + 200);
  v5 = *(v0 + 192);
  v15 = *(v0 + 184);
  v6 = type metadata accessor for MLS.SignOperation(0);
  v7 = swift_allocObject();
  *(v0 + 256) = v7;
  outlined init with copy of MLS.SigningInput(v0 + 16, v0 + 80);

  outlined copy of Data?(v3, v2);

  Logger.init(subsystem:category:)();
  v8 = *(v0 + 32);
  *(v7 + 16) = *(v0 + 16);
  *(v7 + 32) = v8;
  *(v7 + 48) = *(v0 + 48);
  *(v7 + 60) = *(v0 + 60);
  *(v7 + 80) = v15;
  *(v7 + 88) = v5;
  *(v7 + 96) = v16;
  *(v7 + 104) = v4;
  *(v7 + 112) = v3;
  *(v7 + 120) = v2;
  *(v7 + 128) = v1;
  v9 = *(v18 + direct field offset for MLS.SwiftMLSClientCoordinator.runner);
  *(v0 + 168) = v7;
  v10 = *(*v9 + 216);

  v17 = (v10 + *v10);
  v11 = swift_task_alloc();
  *(v0 + 264) = v11;
  v12 = lazy protocol witness table accessor for type MLS.AddMembersOperation and conformance MLS.AddMembersOperation(&lazy protocol witness table cache variable for type MLS.SignOperation and conformance MLS.SignOperation, type metadata accessor for MLS.SignOperation, &protocol conformance descriptor for MLS.SignOperation);
  *v11 = v0;
  v11[1] = MLS.SwiftMLSClientCoordinator.applicationSign(input:withGroup:context:);
  v13 = *(v0 + 176);

  return v17(v13, v0 + 168, v6, v12, v0 + 144);
}

{
  v2 = *v1;

  v3 = *(v2 + 248);
  if (v0)
  {
    v4 = MLS.SwiftMLSClientCoordinator.applicationSign(input:withGroup:context:);
  }

  else
  {
    v4 = MLS.SwiftMLSClientCoordinator.applicationSign(input:withGroup:context:);
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

{
  v1 = *(v0 + 144);
  v2 = *(v0 + 152);
  v3 = *(v0 + 160);
  lazy protocol witness table accessor for type MLS.SigningError and conformance MLS.SigningError();
  swift_allocError();
  *v4 = v1;
  *(v4 + 8) = v2;
  *(v4 + 16) = v3;

  v5 = *(v0 + 8);

  return v5();
}

uint64_t MLS.SwiftMLSClientCoordinator.applicationEncrypt(groupName:withGroup:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 80) = a5;
  *(v7 + 88) = v6;
  *(v7 + 64) = a3;
  *(v7 + 72) = a4;
  *(v7 + 48) = a1;
  *(v7 + 56) = a2;
  v8 = *(a6 + 8);
  *(v7 + 96) = *a6;
  *(v7 + 104) = v8;
  *(v7 + 112) = *(a6 + 16);
  *(v7 + 128) = *(a6 + 32);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v9 = static MLSActor.shared;
  *(v7 + 136) = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.SwiftMLSClientCoordinator.applicationEncrypt(groupName:withGroup:context:), v9, 0);
}

uint64_t MLS.SwiftMLSClientCoordinator.applicationEncrypt(groupName:withGroup:context:)()
{
  v2 = v0[15];
  v1 = v0[16];
  v4 = v0[13];
  v3 = v0[14];
  v17 = v0[12];
  v19 = v0[11];
  v15 = v0[9];
  v16 = v0[10];
  v5 = v0[8];
  v14 = v0[7];
  v6 = type metadata accessor for MLS.EncryptGroupNameOperation(0);
  v7 = swift_allocObject();
  v0[18] = v7;

  outlined copy of Data?(v3, v2);

  Logger.init(subsystem:category:)();
  v7[2] = v14;
  v7[3] = v5;
  v7[4] = v15;
  v7[5] = v16;
  v7[6] = v17;
  v7[7] = v4;
  v7[8] = v3;
  v7[9] = v2;
  v7[10] = v1;
  v8 = *(v19 + direct field offset for MLS.SwiftMLSClientCoordinator.runner);
  v0[5] = v7;
  v9 = *(*v8 + 216);

  v18 = (v9 + *v9);
  v10 = swift_task_alloc();
  v0[19] = v10;
  v11 = lazy protocol witness table accessor for type MLS.AddMembersOperation and conformance MLS.AddMembersOperation(&lazy protocol witness table cache variable for type MLS.EncryptGroupNameOperation and conformance MLS.EncryptGroupNameOperation, type metadata accessor for MLS.EncryptGroupNameOperation, &protocol conformance descriptor for MLS.EncryptGroupNameOperation);
  *v10 = v0;
  v10[1] = MLS.SwiftMLSClientCoordinator.applicationEncrypt(groupName:withGroup:context:);
  v12 = v0[6];

  return (v18)(v12, v0 + 5, v6, v11, v0 + 2);
}

{
  v2 = *v1;

  v3 = *(v2 + 136);
  if (v0)
  {
    v4 = MLS.SwiftMLSClientCoordinator.applicationEncrypt(groupName:withGroup:context:);
  }

  else
  {
    v4 = MLS.SwiftMLSClientCoordinator.applicationEncrypt(groupName:withGroup:context:);
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  lazy protocol witness table accessor for type MLS.EncryptionError and conformance MLS.EncryptionError();
  swift_allocError();
  *v4 = v1;
  *(v4 + 8) = v2;
  *(v4 + 16) = v3;

  v5 = *(v0 + 8);

  return v5();
}

uint64_t MLS.SwiftMLSClientCoordinator.processIncoming(groupName:forGroup:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 936) = v6;
  *(v7 + 928) = a5;
  *(v7 + 920) = a4;
  *(v7 + 912) = a3;
  *(v7 + 904) = a2;
  *(v7 + 896) = a1;
  v9 = type metadata accessor for MLS.Group.GroupInfo();
  *(v7 + 944) = v9;
  *(v7 + 952) = *(v9 - 8);
  *(v7 + 960) = swift_task_alloc();
  v10 = type metadata accessor for MLS.MLSError();
  *(v7 + 968) = v10;
  *(v7 + 976) = *(v10 - 8);
  *(v7 + 984) = swift_task_alloc();
  *(v7 + 992) = swift_task_alloc();
  *(v7 + 1000) = swift_task_alloc();
  *(v7 + 1008) = swift_task_alloc();
  *(v7 + 1016) = swift_task_alloc();
  v11 = *(a6 + 16);
  *(v7 + 456) = *a6;
  *(v7 + 472) = v11;
  *(v7 + 488) = *(a6 + 32);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v12 = static MLSActor.shared;
  *(v7 + 1024) = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.SwiftMLSClientCoordinator.processIncoming(groupName:forGroup:context:), v12, 0);
}

void MLS.SwiftMLSClientCoordinator.processIncoming(groupName:forGroup:context:)()
{
  v1 = v0[114];
  v2 = v0[113];
  v3 = v0[61];
  v0[108] = v3;
  v0[109] = v3;
  v0[129] = direct field offset for MLS.SwiftMLSClientCoordinator.logger;
  outlined init with copy of MetricCollector((v0 + 108), (v0 + 110));
  outlined init with copy of MLS.OutgoingEventState?((v0 + 57), (v0 + 62), &_s15SecureMessaging3MLSO24IncomingGroupNameContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO24IncomingGroupNameContextVy_10Foundation4DataVGMR);
  outlined copy of Data._Representation(v2, v1);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  outlined destroy of NSObject?((v0 + 57), &_s15SecureMessaging3MLSO24IncomingGroupNameContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO24IncomingGroupNameContextVy_10Foundation4DataVGMR);
  outlined consume of Data._Representation(v2, v1);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v19 = v7;
    *v6 = 136315394;
    v8 = v0[57];
    v9 = v0[58];

    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, &v19);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2080;
    v11 = Data.description.getter();
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v19);

    *(v6 + 14) = v13;
    _os_log_impl(&dword_264F1F000, v4, v5, "SwiftMLSClientCoordinator processIncoming groupName enqueueing event { identifier: %s, groupName: %s }", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v7, -1, -1);
    MEMORY[0x266755550](v6, -1, -1);
  }

  v14 = *(v0[117] + direct field offset for MLS.SwiftMLSClientCoordinator.groupLoader);
  v0[130] = v14;
  v15 = v0[58];
  v0[131] = v0[57];
  v0[132] = v15;
  v18 = *(*v14 + 192) + **(*v14 + 192);
  v16 = swift_task_alloc();
  v0[133] = v16;
  v17 = lazy protocol witness table accessor for type MLS.IncomingMessageError and conformance MLS.IncomingMessageError();
  *v16 = v0;
  v16[1] = MLS.SwiftMLSClientCoordinator.processIncoming(groupName:forGroup:context:);
  v21 = 0;
  v22 = 0;
  v25 = v0 + 97;
  v23 = &type metadata for MLS.IncomingMessageError;
  v24 = v17;

  __asm { BRAA            X8, X16 }
}

{
  if ((v0[151] & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v1 = v0[85];
    v2 = v0[86];
    __swift_project_boxed_opaque_existential_1(v0 + 82, v1);
    v5 = (*(v2 + 80) + **(v2 + 80));
    v3 = swift_task_alloc();
    v0[152] = v3;
    *v3 = v0;
    v3[1] = MLS.SwiftMLSClientCoordinator.processIncoming(groupName:forGroup:context:);
    v4 = v0[120];

    v5(v4, v1, v2);
  }
}

uint64_t MLS.SwiftMLSClientCoordinator.processIncoming(groupName:forGroup:context:)()
{
  v2 = *v1;

  v3 = *(v2 + 1024);
  if (v0)
  {
    v4 = MLS.SwiftMLSClientCoordinator.processIncoming(groupName:forGroup:context:);
  }

  else
  {
    v4 = MLS.SwiftMLSClientCoordinator.processIncoming(groupName:forGroup:context:);
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{
  v1 = v0[130];
  v2 = v0[117];
  v3 = v0[116];
  v4 = v0[115];
  v5 = v0[114];
  v6 = v0[113];
  v7 = swift_task_alloc();
  v0[134] = v7;
  v7[2] = v0 + 109;
  v7[3] = v2;
  v7[4] = v0 + 57;
  v7[5] = v6;
  v7[6] = v5;
  v7[7] = v0 + 67;
  v7[8] = v4;
  v7[9] = v3;
  v14 = (*(*v1 + 152) + **(*v1 + 152));
  v8 = swift_task_alloc();
  v0[135] = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO33IncomingGroupNameProcessedContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO33IncomingGroupNameProcessedContextVy_10Foundation4DataVGMR);
  *v8 = v0;
  v8[1] = MLS.SwiftMLSClientCoordinator.processIncoming(groupName:forGroup:context:);
  v10 = v0[132];
  v11 = v0[131];
  v12 = v0[112];

  return v14(v12, v11, v10, &async function pointer to partial apply for closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(groupName:forGroup:context:), v7, v9);
}

{
  v2 = *v1;
  *(*v1 + 1088) = v0;

  if (v0)
  {
    v3 = *(v2 + 1024);
    v4 = MLS.SwiftMLSClientCoordinator.processIncoming(groupName:forGroup:context:);
  }

  else
  {
    v5 = *(v2 + 1024);

    v4 = MLS.SwiftMLSClientCoordinator.processIncoming(groupName:forGroup:context:);
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 536));

  v1 = *(v0 + 8);

  return v1();
}

{
  v1 = *(v0 + 776);
  v2 = *(v0 + 784);
  v3 = *(v0 + 792);
  lazy protocol witness table accessor for type MLS.IncomingMessageError and conformance MLS.IncomingMessageError();
  swift_allocError();
  *v4 = v1;
  *(v4 + 8) = v2;
  *(v4 + 16) = v3;

  v5 = *(v0 + 8);

  return v5();
}

{
  v77 = v0;
  v1 = *(v0 + 1088);

  *(v0 + 888) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 1016);
    v4 = *(v0 + 1008);
    v5 = *(v0 + 976);
    v6 = *(v0 + 968);

    (*(v5 + 32))(v4, v3, v6);
    if (MLS.SwiftMLSClientCoordinator.healingMethod(error:)() == 1)
    {
      v7 = *(*(v0 + 976) + 16);
      v7(*(v0 + 1000), *(v0 + 1008), *(v0 + 968));
      outlined init with copy of MLS.OutgoingEventState?(v0 + 456, v0 + 696, &_s15SecureMessaging3MLSO24IncomingGroupNameContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO24IncomingGroupNameContextVy_10Foundation4DataVGMR);
      v8 = Logger.logObject.getter();
      v9 = static os_log_type_t.error.getter();
      outlined destroy of NSObject?(v0 + 456, &_s15SecureMessaging3MLSO24IncomingGroupNameContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO24IncomingGroupNameContextVy_10Foundation4DataVGMR);
      if (os_log_type_enabled(v8, v9))
      {
        v66 = *(v0 + 1056);
        v10 = *(v0 + 1048);
        v11 = *(v0 + 1000);
        v12 = *(v0 + 976);
        v13 = *(v0 + 968);
        v14 = swift_slowAlloc();
        v69 = swift_slowAlloc();
        v72 = swift_slowAlloc();
        v75 = v72;
        *v14 = 136315394;
        *(v14 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v66, &v75);
        *(v14 + 12) = 2112;
        lazy protocol witness table accessor for type MLS.AddMembersOperation and conformance MLS.AddMembersOperation(&lazy protocol witness table cache variable for type MLS.MLSError and conformance MLS.MLSError, MEMORY[0x277D6AEB0], MEMORY[0x277D6AEB8]);
        swift_allocError();
        v7(v15, v11, v13);
        v16 = _swift_stdlib_bridgeErrorToNSError();
        v17 = *(v12 + 8);
        v17(v11, v13);
        *(v14 + 14) = v16;
        *v69 = v16;
        _os_log_impl(&dword_264F1F000, v8, v9, "SwiftMLSClientCoordinator processIncoming groupName performing self heal { identifier: %s, error: %@ }", v14, 0x16u);
        outlined destroy of NSObject?(v69, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        MEMORY[0x266755550](v69, -1, -1);
        __swift_destroy_boxed_opaque_existential_1Tm(v72);
        MEMORY[0x266755550](v72, -1, -1);
        MEMORY[0x266755550](v14, -1, -1);
      }

      else
      {
        v35 = *(v0 + 1000);
        v36 = *(v0 + 976);
        v37 = *(v0 + 968);

        v17 = *(v36 + 8);
        v17(v35, v37);
      }

      *(v0 + 1096) = v17;
      outlined init with copy of ServerBag.MLS(v0 + 536, v0 + 736);
      *(v0 + 392) = 0u;
      *(v0 + 408) = 0u;
      *(v0 + 424) = 0u;
      *(v0 + 440) = 0u;
      v38 = swift_task_alloc();
      *(v0 + 1104) = v38;
      *v38 = v0;
      v38[1] = MLS.SwiftMLSClientCoordinator.processIncoming(groupName:forGroup:context:);
      v39 = *(v0 + 928);
      v40 = *(v0 + 920);

      return MLS.SwiftMLSClientCoordinator.performSelfHeal(groupIdentifier:swiftMLSGroup:ftdInfo:isWithinPersisterTransaction:)(v40, v39, v0 + 736, (v0 + 392), 0);
    }

    v20 = *(v0 + 976);
    v21 = MLS.SwiftMLSClientCoordinator.healingMethod(error:)();
    v22 = *(v20 + 16);
    v23 = *(v0 + 1008);
    v24 = *(v0 + 968);
    if (v21 == 2)
    {
      v22(*(v0 + 992), v23, v24);
      outlined init with copy of MLS.OutgoingEventState?(v0 + 456, v0 + 616, &_s15SecureMessaging3MLSO24IncomingGroupNameContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO24IncomingGroupNameContextVy_10Foundation4DataVGMR);
      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.error.getter();
      outlined destroy of NSObject?(v0 + 456, &_s15SecureMessaging3MLSO24IncomingGroupNameContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO24IncomingGroupNameContextVy_10Foundation4DataVGMR);
      if (os_log_type_enabled(v25, v26))
      {
        v67 = *(v0 + 1056);
        v27 = *(v0 + 1048);
        v28 = *(v0 + 992);
        v29 = *(v0 + 976);
        v30 = *(v0 + 968);
        v31 = swift_slowAlloc();
        v70 = swift_slowAlloc();
        v73 = swift_slowAlloc();
        v75 = v73;
        *v31 = 136315394;
        *(v31 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v67, &v75);
        *(v31 + 12) = 2112;
        lazy protocol witness table accessor for type MLS.AddMembersOperation and conformance MLS.AddMembersOperation(&lazy protocol witness table cache variable for type MLS.MLSError and conformance MLS.MLSError, MEMORY[0x277D6AEB0], MEMORY[0x277D6AEB8]);
        swift_allocError();
        v22(v32, v28, v30);
        v33 = _swift_stdlib_bridgeErrorToNSError();
        v34 = *(v29 + 8);
        v34(v28, v30);
        *(v31 + 14) = v33;
        *v70 = v33;
        _os_log_impl(&dword_264F1F000, v25, v26, "SwiftMLSClientCoordinator processIncoming groupName performing era advancement { identifier: %s, error: %@ }", v31, 0x16u);
        outlined destroy of NSObject?(v70, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        MEMORY[0x266755550](v70, -1, -1);
        __swift_destroy_boxed_opaque_existential_1Tm(v73);
        MEMORY[0x266755550](v73, -1, -1);
        MEMORY[0x266755550](v31, -1, -1);
      }

      else
      {
        v51 = *(v0 + 992);
        v52 = *(v0 + 976);
        v53 = *(v0 + 968);

        v34 = *(v52 + 8);
        v34(v51, v53);
      }

      *(v0 + 1120) = v34;
      *(v0 + 328) = 0u;
      *(v0 + 344) = 0u;
      *(v0 + 360) = 0u;
      *(v0 + 376) = 0u;
      v54 = swift_task_alloc();
      *(v0 + 1128) = v54;
      *v54 = v0;
      v54[1] = MLS.SwiftMLSClientCoordinator.processIncoming(groupName:forGroup:context:);
      v55 = *(v0 + 928);
      v56 = *(v0 + 920);

      return MLS.SwiftMLSClientCoordinator.performEraAdvancement(groupIdentifier:swiftMLSGroup:ftdInfo:isWithinPersisterTransaction:)(v56, v55, v0 + 536, (v0 + 328), 0);
    }

    v22(*(v0 + 984), v23, v24);
    outlined init with copy of MLS.OutgoingEventState?(v0 + 456, v0 + 576, &_s15SecureMessaging3MLSO24IncomingGroupNameContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO24IncomingGroupNameContextVy_10Foundation4DataVGMR);
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.error.getter();
    outlined destroy of NSObject?(v0 + 456, &_s15SecureMessaging3MLSO24IncomingGroupNameContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO24IncomingGroupNameContextVy_10Foundation4DataVGMR);
    if (os_log_type_enabled(v41, v42))
    {
      v68 = *(v0 + 1056);
      v43 = *(v0 + 1048);
      v44 = *(v0 + 984);
      v45 = *(v0 + 976);
      v46 = *(v0 + 968);
      v47 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      v75 = v74;
      *v47 = 136315394;
      *(v47 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v43, v68, &v75);
      *(v47 + 12) = 2112;
      lazy protocol witness table accessor for type MLS.AddMembersOperation and conformance MLS.AddMembersOperation(&lazy protocol witness table cache variable for type MLS.MLSError and conformance MLS.MLSError, MEMORY[0x277D6AEB0], MEMORY[0x277D6AEB8]);
      swift_allocError();
      v22(v48, v44, v46);
      v49 = _swift_stdlib_bridgeErrorToNSError();
      v50 = *(v45 + 8);
      v50(v44, v46);
      *(v47 + 14) = v49;
      *v71 = v49;
      _os_log_impl(&dword_264F1F000, v41, v42, "SwiftMLSClientCoordinator processIncoming groupName SwiftMLS failed with unhealable error { identifier: %s, error: %@ }", v47, 0x16u);
      outlined destroy of NSObject?(v71, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x266755550](v71, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v74);
      MEMORY[0x266755550](v74, -1, -1);
      MEMORY[0x266755550](v47, -1, -1);
    }

    else
    {
      v57 = *(v0 + 984);
      v58 = *(v0 + 976);
      v59 = *(v0 + 968);

      v50 = *(v58 + 8);
      v50(v57, v59);
    }

    v60 = *(v0 + 1008);
    v61 = *(v0 + 968);
    v75 = 0;
    v76 = 0xE000000000000000;
    _StringGuts.grow(_:)(16);
    v62 = v76;
    *(v0 + 816) = v75;
    *(v0 + 824) = v62;
    MEMORY[0x2667545A0](0x534C4D7466697753, 0xEE002E726F727245);
    _print_unlocked<A, B>(_:_:)();
    v63 = *(v0 + 816);
    v64 = *(v0 + 824);
    lazy protocol witness table accessor for type MLS.IncomingMessageError and conformance MLS.IncomingMessageError();
    swift_allocError();
    *v65 = 9;
    *(v65 + 8) = v63;
    *(v65 + 16) = v64;
    swift_willThrow();
    v50(v60, v61);

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 536));
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 536));
  }

  v18 = *(v0 + 8);

  return v18();
}

{
  v2 = *v1;
  *(*v1 + 1112) = v0;

  if (v0)
  {
    v3 = *(v2 + 1024);
    outlined destroy of NSObject?(v2 + 736, &_s15SecureMessaging3MLSO21SwiftMLSGroupProtocol_pSgMd, &_s15SecureMessaging3MLSO21SwiftMLSGroupProtocol_pSgMR);
    v4 = MLS.SwiftMLSClientCoordinator.processIncoming(groupName:forGroup:context:);
  }

  else
  {
    v3 = *(v2 + 1024);
    outlined destroy of NSObject?(v2 + 736, &_s15SecureMessaging3MLSO21SwiftMLSGroupProtocol_pSgMd, &_s15SecureMessaging3MLSO21SwiftMLSGroupProtocol_pSgMR);
    v4 = MLS.SwiftMLSClientCoordinator.processIncoming(groupName:forGroup:context:);
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{
  v2 = *v1;
  *(*v1 + 1136) = v0;

  v3 = *(v2 + 1024);
  if (v0)
  {
    v4 = MLS.SwiftMLSClientCoordinator.processIncoming(groupName:forGroup:context:);
  }

  else
  {
    v4 = MLS.SwiftMLSClientCoordinator.processIncoming(groupName:forGroup:context:);
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{
  v1 = *(v0 + 936);
  *(v0 + 800) = *(v0 + 472);
  outlined init with copy of ServerBag.MLS(v0 + 536, v0 + 656);
  *(v0 + 1144) = *(v1 + 80);
  *(v0 + 1152) = *(v1 + 88);
  v2 = v1 + direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier;
  *(v0 + 1160) = *(v1 + direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier);
  *(v0 + 1168) = *(v2 + 8);
  outlined init with copy of MLS.OutgoingEventState?(v0 + 800, v0 + 832, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);

  return MEMORY[0x2822009F8](MLS.SwiftMLSClientCoordinator.processIncoming(groupName:forGroup:context:), 0, 0);
}

{
  v1 = v0[85];
  v2 = v0[86];
  __swift_project_boxed_opaque_existential_1(v0 + 82, v1);
  v3 = *(v2 + 32);

  v6 = (v3 + *v3);
  v4 = swift_task_alloc();
  v0[147] = v4;
  *v4 = v0;
  v4[1] = MLS.SwiftMLSClientCoordinator.processIncoming(groupName:forGroup:context:);

  return v6(v1, v2);
}

{
  v1 = v0[85];
  v2 = v0[86];
  __swift_project_boxed_opaque_existential_1(v0 + 82, v1);
  v5 = (*(v2 + 24) + **(v2 + 24));
  v3 = swift_task_alloc();
  v0[150] = v3;
  *v3 = v0;
  v3[1] = MLS.SwiftMLSClientCoordinator.processIncoming(groupName:forGroup:context:);

  return v5(v1, v2);
}

{
  v0[167] = v0[148];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 82);

  v1 = v0[128];

  return MEMORY[0x2822009F8](MLS.SwiftMLSClientCoordinator.processIncoming(groupName:forGroup:context:), v1, 0);
}

{
  v2 = *v1;
  *(*v1 + 1224) = v0;

  if (v0)
  {
    outlined destroy of NSObject?(v2 + 800, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
    v3 = MLS.SwiftMLSClientCoordinator.processIncoming(groupName:forGroup:context:);
  }

  else
  {
    v3 = MLS.SwiftMLSClientCoordinator.processIncoming(groupName:forGroup:context:);
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  v1 = v0[85];
  v2 = v0[86];
  __swift_project_boxed_opaque_existential_1(v0 + 82, v1);
  v5 = (*(v2 + 64) + **(v2 + 64));
  v3 = swift_task_alloc();
  v0[159] = v3;
  *v3 = v0;
  v3[1] = MLS.SwiftMLSClientCoordinator.processIncoming(groupName:forGroup:context:);

  return v5(v1, v2);
}

{
  v0[167] = v0[153];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 82);

  v1 = v0[128];

  return MEMORY[0x2822009F8](MLS.SwiftMLSClientCoordinator.processIncoming(groupName:forGroup:context:), v1, 0);
}

{
  v1 = v0[158];
  v2 = v0[155];
  v3 = v0[154];
  if (v1 >> 60 == 15)
  {
    v4 = 0xC000000000000000;
  }

  else
  {
    v4 = v0[158];
  }

  if (v1 >> 60 == 15)
  {
    v5 = 0;
  }

  else
  {
    v5 = v0[157];
  }

  v0[167] = v0[160];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 82);

  outlined consume of Data._Representation(v3, v2);
  outlined consume of Data._Representation(v5, v4);
  v6 = v0[128];

  return MEMORY[0x2822009F8](MLS.SwiftMLSClientCoordinator.processIncoming(groupName:forGroup:context:), v6, 0);
}

{
  v1 = *(v0 + 1328);
  v2 = *(v0 + 1320);
  v3 = *(v0 + 1288);
  v4 = *(v0 + 1264);
  v5 = *(v0 + 1240);
  v6 = *(v0 + 1232);
  v18 = v6;
  v19 = v5;
  v7 = *(v0 + 1208);
  v17 = v7;
  v8 = *(v0 + 1192);
  v20 = *(v0 + 1024);
  v9 = *(v0 + 928);
  v10 = *(v0 + 920);
  if (v3 >> 60 == 15)
  {
    v11 = 0xC000000000000000;
  }

  else
  {
    v11 = *(v0 + 1288);
  }

  if (v3 >> 60 == 15)
  {
    v12 = 0;
  }

  else
  {
    v12 = *(v0 + 1296);
  }

  if (v4 >> 60 == 15)
  {
    v13 = 0xC000000000000000;
  }

  else
  {
    v13 = *(v0 + 1264);
  }

  if (v4 >> 60 == 15)
  {
    v14 = 0;
  }

  else
  {
    v14 = *(v0 + 1256);
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
  outlined init with copy of MLS.Group(v0 + 120, v0 + 224);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 656));
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

  return MEMORY[0x2822009F8](MLS.SwiftMLSClientCoordinator.processIncoming(groupName:forGroup:context:), v20, 0);
}

{
  v1 = *(v0 + 896);
  (*(*(v0 + 976) + 8))(*(v0 + 1008), *(v0 + 968));
  v2 = *(v0 + 872);
  *v1 = *(v0 + 800);
  v3 = *(v0 + 216);
  v4 = *(v0 + 168);
  v5 = *(v0 + 200);
  *(v1 + 80) = *(v0 + 184);
  *(v1 + 96) = v5;
  *(v1 + 64) = v4;
  v6 = *(v0 + 152);
  v7 = *(v0 + 120);
  *(v1 + 32) = *(v0 + 136);
  *(v1 + 48) = v6;
  *(v1 + 16) = v7;
  *(v1 + 112) = v3;
  *(v1 + 120) = v2;
  v8 = *(v0 + 888);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 536));

  v9 = *(v0 + 8);

  return v9();
}

{
  v1 = v0[161];
  v2 = v0[158];
  v3 = v0[155];
  v4 = v0[154];
  if (v1 >> 60 == 15)
  {
    v5 = 0xC000000000000000;
  }

  else
  {
    v5 = v0[161];
  }

  if (v1 >> 60 == 15)
  {
    v6 = 0;
  }

  else
  {
    v6 = v0[162];
  }

  if (v2 >> 60 == 15)
  {
    v7 = 0xC000000000000000;
  }

  else
  {
    v7 = v0[158];
  }

  if (v2 >> 60 == 15)
  {
    v8 = 0;
  }

  else
  {
    v8 = v0[157];
  }

  v0[167] = v0[164];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 82);

  outlined consume of Data._Representation(v4, v3);
  outlined consume of Data._Representation(v8, v7);
  outlined consume of Data._Representation(v6, v5);
  v9 = v0[128];

  return MEMORY[0x2822009F8](MLS.SwiftMLSClientCoordinator.processIncoming(groupName:forGroup:context:), v9, 0);
}

{
  (*(*(v0 + 976) + 8))(*(v0 + 1008), *(v0 + 968));

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 536));

  v1 = *(v0 + 8);

  return v1();
}

{
  (*(v0 + 1096))(*(v0 + 1008), *(v0 + 968));

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 536));

  v1 = *(v0 + 8);

  return v1();
}

{
  (*(v0 + 1120))(*(v0 + 1008), *(v0 + 968));

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 536));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t MLS.SwiftMLSClientCoordinator.processIncoming(groupName:forGroup:context:)(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 1184) = v1;

  if (v1)
  {
    outlined destroy of NSObject?(v4 + 800, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
    v5 = MLS.SwiftMLSClientCoordinator.processIncoming(groupName:forGroup:context:);
  }

  else
  {
    *(v4 + 1192) = a1;
    v5 = MLS.SwiftMLSClientCoordinator.processIncoming(groupName:forGroup:context:);
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

{
  *(*v1 + 1208) = a1;

  return MEMORY[0x2822009F8](MLS.SwiftMLSClientCoordinator.processIncoming(groupName:forGroup:context:), 0, 0);
}

{
  v2 = v1[120];
  v3 = v1[119];
  v4 = v1[118];
  v1[154] = MLS.Group.GroupInfo.rawRepresentation.getter();
  v1[155] = v5;
  (*(v3 + 8))(v2, v4);
  v6 = v1[85];
  v7 = v1[86];
  __swift_project_boxed_opaque_existential_1(v1 + 82, v6);
  v10 = (*(v7 + 56) + **(v7 + 56));
  v8 = swift_task_alloc();
  v1[156] = v8;
  *v8 = v1;
  v8[1] = MLS.SwiftMLSClientCoordinator.processIncoming(groupName:forGroup:context:);

  return v10(v6, v7);
}

uint64_t MLS.SwiftMLSClientCoordinator.processIncoming(groupName:forGroup:context:)(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 1256) = a1;
  *(v3 + 1264) = a2;

  return MEMORY[0x2822009F8](MLS.SwiftMLSClientCoordinator.processIncoming(groupName:forGroup:context:), 0, 0);
}

{
  v6 = *v3;
  v6[160] = v2;

  if (v2)
  {
    outlined destroy of NSObject?((v6 + 100), &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);

    return MEMORY[0x2822009F8](MLS.SwiftMLSClientCoordinator.processIncoming(groupName:forGroup:context:), 0, 0);
  }

  else
  {
    v7 = v6[146];
    v8 = v6[145];
    v16 = v6[144];
    v6[161] = a2;
    v6[162] = a1;
    ObjectType = swift_getObjectType();
    v6[106] = v8;
    v6[107] = v7;
    v15 = (*(v16 + 64) + **(v16 + 64));
    v10 = swift_task_alloc();
    v6[163] = v10;
    *v10 = v6;
    v10[1] = MLS.SwiftMLSClientCoordinator.processIncoming(groupName:forGroup:context:);
    v11 = v6[144];
    v12 = v6[116];
    v13 = v6[115];

    return v15(v13, v12, v6 + 106, ObjectType, v11);
  }
}

{
  v6 = *v3;
  *(*v3 + 1312) = v2;

  if (v2)
  {
    outlined destroy of NSObject?(v6 + 800, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
    v7 = MLS.SwiftMLSClientCoordinator.processIncoming(groupName:forGroup:context:);
  }

  else
  {
    *(v6 + 1320) = a2;
    *(v6 + 1328) = a1;
    v7 = MLS.SwiftMLSClientCoordinator.processIncoming(groupName:forGroup:context:);
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(groupName:forGroup:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[224] = v15;
  v8[223] = a8;
  v8[222] = a7;
  v8[221] = a6;
  v8[220] = a5;
  v8[219] = a4;
  v8[218] = a3;
  v8[217] = a2;
  v8[216] = a1;
  v9 = type metadata accessor for MLS.Group.GroupInfo();
  v8[225] = v9;
  v8[226] = *(v9 - 8);
  v8[227] = swift_task_alloc();
  v8[228] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8SwiftMLS0B0O8IdentityO07SigningC0VSgMd, &_s8SwiftMLS0B0O8IdentityO07SigningC0VSgMR);
  v8[229] = swift_task_alloc();
  v10 = type metadata accessor for MLS.Identity.SigningIdentity();
  v8[230] = v10;
  v8[231] = *(v10 - 8);
  v8[232] = swift_task_alloc();
  v8[233] = swift_task_alloc();
  v11 = type metadata accessor for MLS.Group.Group.DecryptNameInput();
  v8[234] = v11;
  v8[235] = *(v11 - 8);
  v8[236] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging15MetricCollectorV5EventVSgMd, &_s15SecureMessaging15MetricCollectorV5EventVSgMR);
  v8[237] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v12 = static MLSActor.shared;
  v8[238] = static MLSActor.shared;

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(groupName:forGroup:context:), v12, 0);
}

uint64_t closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(groupName:forGroup:context:)(uint64_t a1)
{
  v20 = v1;
  v2 = v1[237];
  v3 = v1[219];
  Date.init()();
  v4 = type metadata accessor for MetricCollector.Event(0);
  v5 = *(v4 + 20);
  v6 = type metadata accessor for Date();
  (*(*(v6 - 8) + 56))(v2 + v5, 1, 1, v6);
  (*(*(v4 - 8) + 56))(v2, 0, 1, v4);
  specialized Dictionary.subscript.setter(v2, 0x534C4D7466697753, 0xEE0074696D6D6F43);
  v1[239] = direct field offset for MLS.SwiftMLSClientCoordinator.logger;
  outlined init with copy of MLS.OutgoingEventState?(v3, (v1 + 194), &_s15SecureMessaging3MLSO24IncomingGroupNameContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO24IncomingGroupNameContextVy_10Foundation4DataVGMR);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  outlined destroy of NSObject?(v3, &_s15SecureMessaging3MLSO24IncomingGroupNameContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO24IncomingGroupNameContextVy_10Foundation4DataVGMR);
  if (os_log_type_enabled(v7, v8))
  {
    v9 = v1[219];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v19 = v11;
    *v10 = 136315138;
    *(v10 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*v9, *(v9 + 8), &v19);
    _os_log_impl(&dword_264F1F000, v7, v8, "SwiftMLSClientCoordinator processIncoming processing groupName { identifier: %s }", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    MEMORY[0x266755550](v11, -1, -1);
    MEMORY[0x266755550](v10, -1, -1);
  }

  v12 = v1[222];
  outlined copy of Data._Representation(v1[220], v1[221]);
  MLS.Group.Group.DecryptNameInput.init(encryptedName:)();
  v13 = v12[3];
  v14 = v12[4];
  __swift_project_boxed_opaque_existential_1(v12, v13);
  v18 = (*(v14 + 232) + **(v14 + 232));
  v15 = swift_task_alloc();
  v1[240] = v15;
  *v15 = v1;
  v15[1] = closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(groupName:forGroup:context:);
  v16 = v1[236];

  return v18(v1 + 189, v16, v13, v14);
}

{
  v4 = *v2;
  *(*v2 + 2008) = v1;

  if (v1)
  {
    outlined destroy of NSObject?(v4 + 1712, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
    v5 = closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(groupName:forGroup:context:);
  }

  else
  {
    *(v4 + 2016) = a1;
    v5 = closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(groupName:forGroup:context:);
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

{
  *(*v1 + 2032) = a1;

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(groupName:forGroup:context:), 0, 0);
}

{
  v2 = v1[228];
  v3 = v1[226];
  v4 = v1[225];
  v1[257] = MLS.Group.GroupInfo.rawRepresentation.getter();
  v1[258] = v5;
  v6 = *(v3 + 8);
  v1[259] = v6;
  v1[260] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v2, v4);
  v7 = v1[157];
  v8 = v1[158];
  __swift_project_boxed_opaque_existential_1(v1 + 154, v7);
  v11 = (*(v8 + 56) + **(v8 + 56));
  v9 = swift_task_alloc();
  v1[261] = v9;
  *v9 = v1;
  v9[1] = closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(groupName:forGroup:context:);

  return v11(v7, v8);
}

{
  v3 = *v2;
  v3[203] = v2;
  v3[204] = a1;
  v3[205] = v1;
  v3[281] = v1;

  if (v1)
  {
    outlined destroy of NSObject?((v3 + 214), &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
    v4 = closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(groupName:forGroup:context:);
  }

  else
  {
    v4 = closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(groupName:forGroup:context:);
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

{
  *(*v1 + 2264) = a1;

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(groupName:forGroup:context:), 0, 0);
}

{
  v2 = v1[259];
  v3 = v1[227];
  v4 = v1[225];
  v1[286] = MLS.Group.GroupInfo.rawRepresentation.getter();
  v1[287] = v5;
  v2(v3, v4);
  v6 = v1[187];
  v7 = v1[188];
  __swift_project_boxed_opaque_existential_1(v1 + 184, v6);
  v10 = (*(v7 + 56) + **(v7 + 56));
  v8 = swift_task_alloc();
  v1[288] = v8;
  *v8 = v1;
  v8[1] = closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(groupName:forGroup:context:);

  return v10(v6, v7);
}

uint64_t closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(groupName:forGroup:context:)()
{
  v2 = *v1;
  *(*v1 + 1928) = v0;

  v3 = *(v2 + 1904);
  if (v0)
  {
    v4 = closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(groupName:forGroup:context:);
  }

  else
  {
    v4 = closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(groupName:forGroup:context:);
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{
  v111 = v0;
  v1 = *(v0 + 1768);
  v2 = *(v0 + 1760);
  v3 = *(v0 + 1752);
  v4._countAndFlagsBits = 0x534C4D7466697753;
  v4._object = 0xEE0074696D6D6F43;
  MetricCollector.end(label:)(v4);
  outlined init with copy of MLS.OutgoingEventState?(v3, v0 + 1392, &_s15SecureMessaging3MLSO24IncomingGroupNameContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO24IncomingGroupNameContextVy_10Foundation4DataVGMR);
  outlined copy of Data._Representation(v2, v1);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  outlined destroy of NSObject?(v3, &_s15SecureMessaging3MLSO24IncomingGroupNameContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO24IncomingGroupNameContextVy_10Foundation4DataVGMR);
  outlined consume of Data._Representation(v2, v1);
  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 1752);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v109 = v9;
    *v8 = 136315394;
    *(v8 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*v7, *(v7 + 8), v109);
    *(v8 + 12) = 2080;
    v10 = Data.description.getter();
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, v109);

    *(v8 + 14) = v12;
    _os_log_impl(&dword_264F1F000, v5, v6, "SwiftMLSClientCoordinator processIncoming processed groupName { identifier: %s, groupName: %s }", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v9, -1, -1);
    MEMORY[0x266755550](v8, -1, -1);
  }

  v13 = *(v0 + 1536);
  v14 = *(v0 + 1544);
  __swift_project_boxed_opaque_existential_1((v0 + 1512), v13);
  v15 = (*(v14 + 8))(v13, v14);
  if (!v16)
  {
    goto LABEL_6;
  }

  v17 = v16;
  log = v15;
  v18 = *(v0 + 1848);
  v19 = *(v0 + 1840);
  v20 = *(v0 + 1832);
  v21 = *(v0 + 1536);
  v22 = *(v0 + 1544);
  __swift_project_boxed_opaque_existential_1((v0 + 1512), v21);
  (*(v22 + 16))(v21, v22);
  if ((*(v18 + 48))(v20, 1, v19) == 1)
  {
    v23 = *(v0 + 1832);

    outlined destroy of NSObject?(v23, &_s8SwiftMLS0B0O8IdentityO07SigningC0VSgMd, &_s8SwiftMLS0B0O8IdentityO07SigningC0VSgMR);
LABEL_6:
    v24 = *(v0 + 1752);
    outlined init with copy of MLS.OutgoingEventState?(v24, v0 + 1352, &_s15SecureMessaging3MLSO24IncomingGroupNameContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO24IncomingGroupNameContextVy_10Foundation4DataVGMR);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();
    outlined destroy of NSObject?(v24, &_s15SecureMessaging3MLSO24IncomingGroupNameContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO24IncomingGroupNameContextVy_10Foundation4DataVGMR);
    if (os_log_type_enabled(v25, v26))
    {
      v27 = *(v0 + 1752);
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      *v109 = v29;
      *v28 = 136315138;
      *(v28 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*v27, *(v27 + 8), v109);
      _os_log_impl(&dword_264F1F000, v25, v26, "SwiftMLSClientCoordinator processIncoming groupName failed to decrypt groupName { identifier: %s }", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v29);
      MEMORY[0x266755550](v29, -1, -1);
      MEMORY[0x266755550](v28, -1, -1);
    }

    v30 = *(v0 + 1888);
    v31 = *(v0 + 1880);
    v32 = *(v0 + 1872);
    lazy protocol witness table accessor for type MLS.IncomingMessageError and conformance MLS.IncomingMessageError();
    swift_allocError();
    *v33 = 9;
    *(v33 + 8) = 0;
    *(v33 + 16) = 0;
    swift_willThrow();
    (*(v31 + 8))(v30, v32);
    goto LABEL_18;
  }

  v104 = *(v0 + 1928);
  v34 = *(v0 + 1744);
  (*(*(v0 + 1848) + 32))(*(v0 + 1864), *(v0 + 1832), *(v0 + 1840));
  v35 = v34[16];
  v36 = v34[17];
  __swift_project_boxed_opaque_existential_1(v34 + 13, v35);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy8SwiftMLS0E0O8IdentityO10CredentialOGMd, &_ss23_ContiguousArrayStorageCy8SwiftMLS0E0O8IdentityO10CredentialOGMR);
  v37 = type metadata accessor for MLS.Identity.Credential();
  v38 = *(v37 - 8);
  v39 = (*(v38 + 80) + 32) & ~*(v38 + 80);
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_2651D82E0;
  MLS.Identity.SigningIdentity.credential.getter();
  v41 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC8SwiftMLS0F0O8IdentityO10CredentialO_Tt0g5Tf4g_n(v40);
  swift_setDeallocating();
  (*(v38 + 8))(v40 + v39, v37);
  swift_deallocClassInstance();
  v42 = (*(v36 + 8))(v41, v35, v36);
  if (v104)
  {
    v43 = *(v0 + 1888);
    v44 = *(v0 + 1880);
    v45 = *(v0 + 1872);
    v46 = *(v0 + 1864);
    v47 = *(v0 + 1848);
    v48 = *(v0 + 1840);

    (*(v47 + 8))(v46, v48);
    (*(v44 + 8))(v43, v45);
LABEL_18:
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 1512));

    v92 = *(v0 + 8);

    return v92();
  }

  v49 = v42;

  specialized Collection.first.getter(v49, v0 + 1592);

  v50 = *(v0 + 1616);
  if (v50 > 0xFD)
  {
    v51 = *(v0 + 1864);
    v52 = *(v0 + 1856);
    v53 = *(v0 + 1848);
    v54 = *(v0 + 1840);
    v55 = *(v0 + 1752);

    (*(v53 + 16))(v52, v51, v54);
    outlined init with copy of MLS.OutgoingEventState?(v55, v0 + 1312, &_s15SecureMessaging3MLSO24IncomingGroupNameContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO24IncomingGroupNameContextVy_10Foundation4DataVGMR);
    v56 = Logger.logObject.getter();
    v57 = static os_log_type_t.error.getter();
    outlined destroy of NSObject?(v55, &_s15SecureMessaging3MLSO24IncomingGroupNameContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO24IncomingGroupNameContextVy_10Foundation4DataVGMR);
    v58 = os_log_type_enabled(v56, v57);
    v59 = *(v0 + 1856);
    v60 = *(v0 + 1848);
    v61 = *(v0 + 1840);
    if (v58)
    {
      v62 = *(v0 + 1752);
      v63 = swift_slowAlloc();
      v105 = swift_slowAlloc();
      *v109 = v105;
      *v63 = 136315394;
      *(v63 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*v62, *(v62 + 8), v109);
      *(v63 + 12) = 2080;
      lazy protocol witness table accessor for type MLS.AddMembersOperation and conformance MLS.AddMembersOperation(&lazy protocol witness table cache variable for type MLS.Identity.SigningIdentity and conformance MLS.Identity.SigningIdentity, MEMORY[0x277D6AC60], MEMORY[0x277D6AC78]);
      v64 = dispatch thunk of CustomStringConvertible.description.getter();
      v66 = v65;
      v67 = *(v60 + 8);
      v67(v59, v61);
      v68 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v64, v66, v109);

      *(v63 + 14) = v68;
      _os_log_impl(&dword_264F1F000, v56, v57, "SwiftMLSClientCoordinator processIncoming groupName failed to find the sender member { identifier: %s, sender: %s }", v63, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266755550](v105, -1, -1);
      MEMORY[0x266755550](v63, -1, -1);
    }

    else
    {

      v67 = *(v60 + 8);
      v67(v59, v61);
    }

    v86 = *(v0 + 1888);
    v87 = *(v0 + 1880);
    v88 = *(v0 + 1872);
    v89 = *(v0 + 1864);
    v90 = *(v0 + 1840);
    lazy protocol witness table accessor for type MLS.IncomingMessageError and conformance MLS.IncomingMessageError();
    swift_allocError();
    *v91 = 4;
    *(v91 + 8) = 0;
    *(v91 + 16) = 0;
    swift_willThrow();
    v67(v89, v90);
    (*(v87 + 8))(v86, v88);
    goto LABEL_18;
  }

  v69 = *(v0 + 1592);
  v70 = *(v0 + 1600);
  v71 = *(v0 + 1608);
  v72 = *(v0 + 1752);
  v73 = *v72;
  *(v0 + 1936) = *v72;
  v74 = *(v72 + 8);
  *(v0 + 1944) = v74;
  *(v0 + 1712) = *(v72 + 16);
  *&v109[7] = *(v72 + 16);
  v102 = v73;
  *(v0 + 1152) = v73;
  *(v0 + 1160) = v74;
  *(v0 + 1168) = v69;
  *(v0 + 1176) = v70;
  *(v0 + 1184) = v71;
  *(v0 + 1192) = v50;
  *(v0 + 1208) = *&v109[15];
  *(v0 + 1193) = *v109;
  *(v0 + 1216) = log;
  *(v0 + 1224) = v17;
  v75 = *(v0 + 1200);
  *(v0 + 1088) = *(v0 + 1184);
  *(v0 + 1104) = v75;
  *(v0 + 1120) = *(v0 + 1216);
  v76 = *(v0 + 1168);
  *(v0 + 1056) = *(v0 + 1152);
  *(v0 + 1072) = v76;
  outlined copy of MLS.AllMember?(v69, v70, v71, v50);
  outlined init with copy of MLS.OutgoingEventState?(v0 + 1712, v0 + 1680, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);

  outlined init with copy of MLS.OutgoingEventState?(v72, v0 + 1272, &_s15SecureMessaging3MLSO24IncomingGroupNameContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO24IncomingGroupNameContextVy_10Foundation4DataVGMR);
  outlined init with copy of MLS.OutgoingEventState?(v0 + 1712, v0 + 1648, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);

  outlined copy of MLS.AllMember?(v69, v70, v71, v50);
  v101 = v74;

  v77 = Logger.logObject.getter();
  v78 = static os_log_type_t.default.getter();
  outlined destroy of NSObject?(v72, &_s15SecureMessaging3MLSO24IncomingGroupNameContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO24IncomingGroupNameContextVy_10Foundation4DataVGMR);

  outlined consume of MLS.AllMember?(v69, v70, v71, v50);
  if (os_log_type_enabled(v77, v78))
  {
    v79 = swift_slowAlloc();
    v103 = swift_slowAlloc();
    v108 = v103;
    *v79 = 136315650;
    *(v79 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v102, v101, &v108);
    *(v79 + 12) = 2080;
    v80 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(log, v17, &v108);
    loga = v77;
    v81 = v80;

    *(v79 + 14) = v81;
    *(v79 + 22) = 2080;
    *v109 = v69;
    *&v109[8] = v70;
    *&v109[16] = v71;
    v110 = v50;
    v82 = MLS.AllMember.description.getter();
    v84 = v83;
    outlined consume of MLS.AllMember(*v109, *&v109[8]);
    v85 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v82, v84, &v108);

    *(v79 + 24) = v85;
    _os_log_impl(&dword_264F1F000, loga, v78, "SwiftMLSClientCoordinator processIncoming groupName sending incoming groupNameChange event { identifier: %s, groupName: %s, sender: %s }", v79, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v103, -1, -1);
    MEMORY[0x266755550](v79, -1, -1);
  }

  else
  {

    outlined consume of MLS.AllMember?(v69, v70, v71, v50);
  }

  v94 = *(v0 + 1776);
  v95 = *(v0 + 1744);
  *(v0 + 1952) = v95[12];
  v96 = *(v0 + 1104);
  *(v0 + 984) = *(v0 + 1088);
  *(v0 + 1000) = v96;
  v97 = *(v0 + 1136);
  *(v0 + 1016) = *(v0 + 1120);
  *(v0 + 1032) = v97;
  v98 = *(v0 + 1072);
  *(v0 + 952) = *(v0 + 1056);
  *(v0 + 968) = v98;
  *(v0 + 1048) = 6;
  outlined init with copy of ServerBag.MLS(v94, v0 + 1232);
  *(v0 + 1960) = v95[10];
  *(v0 + 1968) = v95[11];
  v99 = direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier;
  *(v0 + 1976) = direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier;
  v100 = (v95 + v99);
  *(v0 + 1984) = *v100;
  *(v0 + 1992) = v100[1];

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(groupName:forGroup:context:), 0, 0);
}

{
  v1 = v0[157];
  v2 = v0[158];
  __swift_project_boxed_opaque_existential_1(v0 + 154, v1);
  v3 = *(v2 + 32);

  v6 = (v3 + *v3);
  v4 = swift_task_alloc();
  v0[250] = v4;
  *v4 = v0;
  v4[1] = closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(groupName:forGroup:context:);

  return v6(v1, v2);
}

{
  v1 = v0[157];
  v2 = v0[158];
  __swift_project_boxed_opaque_existential_1(v0 + 154, v1);
  v5 = (*(v2 + 24) + **(v2 + 24));
  v3 = swift_task_alloc();
  v0[253] = v3;
  *v3 = v0;
  v3[1] = closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(groupName:forGroup:context:);

  return v5(v1, v2);
}

{
  v0[277] = v0[251];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 154);

  v1 = v0[238];

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(groupName:forGroup:context:), v1, 0);
}

{
  v2 = *v1;
  *(*v1 + 2048) = v0;

  if (v0)
  {
    outlined destroy of NSObject?(v2 + 1712, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
    v3 = closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(groupName:forGroup:context:);
  }

  else
  {
    v3 = closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(groupName:forGroup:context:);
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  v1 = v0[157];
  v2 = v0[158];
  __swift_project_boxed_opaque_existential_1(v0 + 154, v1);
  v5 = (*(v2 + 64) + **(v2 + 64));
  v3 = swift_task_alloc();
  v0[264] = v3;
  *v3 = v0;
  v3[1] = closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(groupName:forGroup:context:);

  return v5(v1, v2);
}

{
  v0[277] = v0[256];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 154);

  v1 = v0[238];

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(groupName:forGroup:context:), v1, 0);
}

{
  v1 = v0[263];
  v2 = v0[258];
  v3 = v0[257];
  if (v1 >> 60 == 15)
  {
    v4 = 0xC000000000000000;
  }

  else
  {
    v4 = v0[263];
  }

  if (v1 >> 60 == 15)
  {
    v5 = 0;
  }

  else
  {
    v5 = v0[262];
  }

  v0[277] = v0[265];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 154);

  outlined consume of Data._Representation(v3, v2);
  outlined consume of Data._Representation(v5, v4);
  v6 = v0[238];

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(groupName:forGroup:context:), v6, 0);
}

{
  v1 = *(v0 + 2192);
  v2 = *(v0 + 2184);
  v3 = *(v0 + 2128);
  v4 = *(v0 + 2104);
  v5 = *(v0 + 2064);
  v6 = *(v0 + 2056);
  v22 = v6;
  v23 = v5;
  v7 = *(v0 + 2032);
  v21 = v7;
  v8 = *(v0 + 2016);
  v24 = *(v0 + 1952);
  v9 = *(v0 + 1792);
  v10 = *(v0 + 1784);
  if (v3 >> 60 == 15)
  {
    v11 = 0xC000000000000000;
  }

  else
  {
    v11 = *(v0 + 2128);
  }

  if (v3 >> 60 == 15)
  {
    v12 = 0;
  }

  else
  {
    v12 = *(v0 + 2136);
  }

  if (v4 >> 60 == 15)
  {
    v13 = 0xC000000000000000;
  }

  else
  {
    v13 = *(v0 + 2104);
  }

  if (v4 >> 60 == 15)
  {
    v14 = 0;
  }

  else
  {
    v14 = *(v0 + 2096);
  }

  if ((v8 & 0x100000000) != 0)
  {
    v15 = 1;
  }

  else
  {
    v15 = v8;
  }

  *(v0 + 640) = v10;
  *(v0 + 648) = v9;
  *(v0 + 656) = v15;
  *(v0 + 664) = v15;
  *(v0 + 672) = v7;
  *(v0 + 680) = v6;
  *(v0 + 688) = v5;
  *(v0 + 696) = v14;
  *(v0 + 704) = v13;
  *(v0 + 712) = v12;
  *(v0 + 720) = v11;
  *(v0 + 728) = v1;
  *(v0 + 736) = v2;
  outlined init with copy of MLS.Group(v0 + 640, v0 + 536);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 1232));
  *(v0 + 744) = v10;
  *(v0 + 752) = v9;
  *(v0 + 760) = v15;
  *(v0 + 768) = v15;
  *(v0 + 776) = v21;
  *(v0 + 784) = v22;
  *(v0 + 792) = v23;
  *(v0 + 800) = v14;
  *(v0 + 808) = v13;
  *(v0 + 816) = v12;
  *(v0 + 824) = v11;
  *(v0 + 832) = v1;
  *(v0 + 840) = v2;
  outlined destroy of MLS.Group(v0 + 744);
  v16 = *(v0 + 656);
  *(v0 + 432) = *(v0 + 640);
  *(v0 + 448) = v16;
  *(v0 + 528) = *(v0 + 736);
  v17 = *(v0 + 720);
  *(v0 + 496) = *(v0 + 704);
  *(v0 + 512) = v17;
  v18 = *(v0 + 688);
  *(v0 + 464) = *(v0 + 672);
  *(v0 + 480) = v18;
  v25 = (*(*v24 + 384) + **(*v24 + 384));
  v19 = swift_task_alloc();
  *(v0 + 2200) = v19;
  *v19 = v0;
  v19[1] = closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(groupName:forGroup:context:);

  return v25(v0 + 952, v0 + 432, 1, 1);
}

{
  v2 = *v1;
  v3 = *v1 + 432;
  *(*v1 + 2208) = v0;

  if (v0)
  {
    v4 = *(v2 + 1904);
    outlined destroy of NSObject?(v2 + 1712, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
    v6 = *(v3 + 16);
    v5 = *(v3 + 32);
    *(v2 + 328) = *v3;
    *(v2 + 344) = v6;
    *(v2 + 360) = v5;
    v8 = *(v3 + 64);
    v7 = *(v3 + 80);
    v9 = *(v3 + 48);
    *(v2 + 424) = *(v3 + 96);
    *(v2 + 392) = v8;
    *(v2 + 408) = v7;
    *(v2 + 376) = v9;
    outlined destroy of MLS.Group(v2 + 328);
    v10 = closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(groupName:forGroup:context:);
    v11 = v4;
  }

  else
  {
    v12 = *(v2 + 1904);
    v14 = *(v3 + 16);
    v13 = *(v3 + 32);
    *(v2 + 224) = *v3;
    *(v2 + 240) = v14;
    *(v2 + 256) = v13;
    v16 = *(v3 + 64);
    v15 = *(v3 + 80);
    v17 = *(v3 + 48);
    *(v2 + 320) = *(v3 + 96);
    *(v2 + 288) = v16;
    *(v2 + 304) = v15;
    *(v2 + 272) = v17;
    outlined destroy of MLS.Group(v2 + 224);
    v10 = closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(groupName:forGroup:context:);
    v11 = v12;
  }

  return MEMORY[0x2822009F8](v10, v11, 0);
}

{
  v1 = v0[266];
  v2 = v0[263];
  v3 = v0[258];
  v4 = v0[257];
  if (v1 >> 60 == 15)
  {
    v5 = 0xC000000000000000;
  }

  else
  {
    v5 = v0[266];
  }

  if (v1 >> 60 == 15)
  {
    v6 = 0;
  }

  else
  {
    v6 = v0[267];
  }

  if (v2 >> 60 == 15)
  {
    v7 = 0xC000000000000000;
  }

  else
  {
    v7 = v0[263];
  }

  if (v2 >> 60 == 15)
  {
    v8 = 0;
  }

  else
  {
    v8 = v0[262];
  }

  v0[277] = v0[272];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 154);

  outlined consume of Data._Representation(v4, v3);
  outlined consume of Data._Representation(v8, v7);
  outlined consume of Data._Representation(v6, v5);
  v9 = v0[238];

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(groupName:forGroup:context:), v9, 0);
}

{
  v1 = v0[236];
  v2 = v0[235];
  v3 = v0[234];
  (*(v0[231] + 8))(v0[233], v0[230]);
  (*(v2 + 8))(v1, v3);
  outlined destroy of NSObject?((v0 + 144), &_s15SecureMessaging3MLSO23IncomingGroupNameChangeVy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO23IncomingGroupNameChangeVy_AC9AllMemberO10Foundation4DataVGMR);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 189);

  v4 = v0[1];

  return v4();
}

{
  v11 = v0;
  v1 = v0[219];
  outlined init with copy of MLS.OutgoingEventState?(v1, (v0 + 179), &_s15SecureMessaging3MLSO24IncomingGroupNameContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO24IncomingGroupNameContextVy_10Foundation4DataVGMR);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  outlined destroy of NSObject?(v1, &_s15SecureMessaging3MLSO24IncomingGroupNameContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO24IncomingGroupNameContextVy_10Foundation4DataVGMR);
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[243];
    v5 = v0[242];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v10 = v7;
    *v6 = 136315138;
    *(v6 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v4, &v10);
    _os_log_impl(&dword_264F1F000, v2, v3, "SwiftMLSClientCoordinator processIncoming groupName returning processedContext to caller { identifier: %s }", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x266755550](v7, -1, -1);
    MEMORY[0x266755550](v6, -1, -1);
  }

  v8 = (v0[218] + v0[247]);
  outlined init with copy of ServerBag.MLS(v0[222], (v0 + 184));
  v0[278] = *v8;
  v0[279] = v8[1];

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(groupName:forGroup:context:), 0, 0);
}

{
  v1 = v0[187];
  v2 = v0[188];
  __swift_project_boxed_opaque_existential_1(v0 + 184, v1);
  v3 = *(v2 + 32);

  v6 = (v3 + *v3);
  v4 = swift_task_alloc();
  v0[280] = v4;
  *v4 = v0;
  v4[1] = closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(groupName:forGroup:context:);

  return v6(v1, v2);
}

{
  v1 = v0[187];
  v2 = v0[188];
  __swift_project_boxed_opaque_existential_1(v0 + 184, v1);
  v5 = (*(v2 + 24) + **(v2 + 24));
  v3 = swift_task_alloc();
  v0[282] = v3;
  *v3 = v0;
  v3[1] = closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(groupName:forGroup:context:);

  return v5(v1, v2);
}

{
  v0[300] = v0[281];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 184);

  v1 = v0[238];

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(groupName:forGroup:context:), v1, 0);
}

{
  v2 = *v1;
  *(*v1 + 2280) = v0;

  if (v0)
  {
    outlined destroy of NSObject?(v2 + 1712, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
    v3 = closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(groupName:forGroup:context:);
  }

  else
  {
    v3 = closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(groupName:forGroup:context:);
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  v1 = v0[187];
  v2 = v0[188];
  __swift_project_boxed_opaque_existential_1(v0 + 184, v1);
  v5 = (*(v2 + 64) + **(v2 + 64));
  v3 = swift_task_alloc();
  v0[291] = v3;
  *v3 = v0;
  v3[1] = closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(groupName:forGroup:context:);

  return v5(v1, v2);
}

{
  v0[300] = v0[285];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 184);

  v1 = v0[238];

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(groupName:forGroup:context:), v1, 0);
}

{
  v1 = v0[290];
  v2 = v0[287];
  v3 = v0[286];
  if (v1 >> 60 == 15)
  {
    v4 = 0xC000000000000000;
  }

  else
  {
    v4 = v0[290];
  }

  if (v1 >> 60 == 15)
  {
    v5 = 0;
  }

  else
  {
    v5 = v0[289];
  }

  v0[300] = v0[292];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 184);

  outlined consume of Data._Representation(v3, v2);
  outlined consume of Data._Representation(v5, v4);
  v6 = v0[238];

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(groupName:forGroup:context:), v6, 0);
}

{
  v1 = *(v0 + 2392);
  v2 = *(v0 + 2384);
  v3 = *(v0 + 2376);
  v4 = *(v0 + 2344);
  v5 = *(v0 + 2320);
  v6 = *(v0 + 2296);
  v18 = v6;
  v19 = v2;
  v7 = *(v0 + 2288);
  v17 = v7;
  v8 = *(v0 + 2264);
  v20 = *(v0 + 1904);
  v9 = *(v0 + 1792);
  v10 = *(v0 + 1784);
  if ((v3 & 0x100000000) != 0)
  {
    v11 = 1;
  }

  else
  {
    v11 = v3;
  }

  if (v4 >> 60 == 15)
  {
    v12 = 0xC000000000000000;
  }

  else
  {
    v12 = *(v0 + 2344);
  }

  if (v4 >> 60 == 15)
  {
    v13 = 0;
  }

  else
  {
    v13 = *(v0 + 2352);
  }

  if (v5 >> 60 == 15)
  {
    v14 = 0xC000000000000000;
  }

  else
  {
    v14 = *(v0 + 2320);
  }

  if (v5 >> 60 == 15)
  {
    v15 = 0;
  }

  else
  {
    v15 = *(v0 + 2312);
  }

  *(v0 + 16) = v10;
  *(v0 + 24) = v9;
  *(v0 + 32) = v11;
  *(v0 + 40) = v11;
  *(v0 + 48) = v8;
  *(v0 + 56) = v7;
  *(v0 + 64) = v6;
  *(v0 + 72) = v15;
  *(v0 + 80) = v14;
  *(v0 + 88) = v13;
  *(v0 + 96) = v12;
  *(v0 + 104) = v1;
  *(v0 + 112) = v2;
  outlined init with copy of MLS.Group(v0 + 16, v0 + 848);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 1472));
  *(v0 + 120) = v10;
  *(v0 + 128) = v9;
  *(v0 + 136) = v11;
  *(v0 + 144) = v11;
  *(v0 + 152) = v8;
  *(v0 + 160) = v17;
  *(v0 + 168) = v18;
  *(v0 + 176) = v15;
  *(v0 + 184) = v14;
  *(v0 + 192) = v13;
  *(v0 + 200) = v12;
  *(v0 + 208) = v1;
  *(v0 + 216) = v19;
  outlined destroy of MLS.Group(v0 + 120);

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(groupName:forGroup:context:), v20, 0);
}

{
  v1 = *(v0 + 1888);
  v2 = *(v0 + 1880);
  v3 = *(v0 + 1872);
  v4 = *(v0 + 1864);
  v5 = *(v0 + 1848);
  v6 = *(v0 + 1840);
  v7 = *(v0 + 1736);
  v8 = *(v0 + 1728);
  outlined destroy of NSObject?(v0 + 1152, &_s15SecureMessaging3MLSO23IncomingGroupNameChangeVy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO23IncomingGroupNameChangeVy_AC9AllMemberO10Foundation4DataVGMR);
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);
  v9 = *v7;
  *v8 = *(v0 + 1712);
  v10 = *(v0 + 112);
  v11 = *(v0 + 64);
  v12 = *(v0 + 96);
  *(v8 + 80) = *(v0 + 80);
  *(v8 + 96) = v12;
  *(v8 + 64) = v11;
  v13 = *(v0 + 48);
  v14 = *(v0 + 16);
  *(v8 + 32) = *(v0 + 32);
  *(v8 + 48) = v13;
  *(v8 + 16) = v14;
  *(v8 + 112) = v10;
  *(v8 + 120) = v9;

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 1512));

  v15 = *(v0 + 8);

  return v15();
}

{
  v1 = v0[293];
  v2 = v0[290];
  v3 = v0[287];
  v4 = v0[286];
  if (v1 >> 60 == 15)
  {
    v5 = 0xC000000000000000;
  }

  else
  {
    v5 = v0[293];
  }

  if (v1 >> 60 == 15)
  {
    v6 = 0;
  }

  else
  {
    v6 = v0[294];
  }

  if (v2 >> 60 == 15)
  {
    v7 = 0xC000000000000000;
  }

  else
  {
    v7 = v0[290];
  }

  if (v2 >> 60 == 15)
  {
    v8 = 0;
  }

  else
  {
    v8 = v0[289];
  }

  v0[300] = v0[296];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 184);

  outlined consume of Data._Representation(v4, v3);
  outlined consume of Data._Representation(v8, v7);
  outlined consume of Data._Representation(v6, v5);
  v9 = v0[238];

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(groupName:forGroup:context:), v9, 0);
}

{
  v1 = v0[236];
  v2 = v0[235];
  v3 = v0[234];
  v4 = v0[233];
  v5 = v0[231];
  v6 = v0[230];
  outlined destroy of NSObject?((v0 + 144), &_s15SecureMessaging3MLSO23IncomingGroupNameChangeVy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO23IncomingGroupNameChangeVy_AC9AllMemberO10Foundation4DataVGMR);
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 189);

  v7 = v0[1];

  return v7();
}

{
  (*(v0[235] + 8))(v0[236], v0[234]);

  v1 = v0[1];

  return v1();
}

{
  v1 = v0[236];
  v2 = v0[235];
  v3 = v0[234];
  (*(v0[231] + 8))(v0[233], v0[230]);
  (*(v2 + 8))(v1, v3);
  outlined destroy of NSObject?((v0 + 144), &_s15SecureMessaging3MLSO23IncomingGroupNameChangeVy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO23IncomingGroupNameChangeVy_AC9AllMemberO10Foundation4DataVGMR);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 189);

  v4 = v0[1];

  return v4();
}

void closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(groupName:forGroup:context:)()
{
  if ((v0[254] & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v1 = v0[157];
    v2 = v0[158];
    __swift_project_boxed_opaque_existential_1(v0 + 154, v1);
    v5 = (*(v2 + 80) + **(v2 + 80));
    v3 = swift_task_alloc();
    v0[255] = v3;
    *v3 = v0;
    v3[1] = closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(groupName:forGroup:context:);
    v4 = v0[228];

    v5(v4, v1, v2);
  }
}

{
  if ((v0[283] & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v1 = v0[187];
    v2 = v0[188];
    __swift_project_boxed_opaque_existential_1(v0 + 184, v1);
    v5 = (*(v2 + 80) + **(v2 + 80));
    v3 = swift_task_alloc();
    v0[284] = v3;
    *v3 = v0;
    v3[1] = closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(groupName:forGroup:context:);
    v4 = v0[227];

    v5(v4, v1, v2);
  }
}

uint64_t closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(groupName:forGroup:context:)(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 2096) = a1;
  *(v3 + 2104) = a2;

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(groupName:forGroup:context:), 0, 0);
}

{
  v6 = *v3;
  v6[265] = v2;

  if (v2)
  {
    outlined destroy of NSObject?((v6 + 214), &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);

    return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(groupName:forGroup:context:), 0, 0);
  }

  else
  {
    v7 = v6[249];
    v8 = v6[248];
    v17 = v6[246];
    v6[266] = a2;
    v6[267] = a1;
    ObjectType = swift_getObjectType();
    v6[268] = ObjectType;
    v6[208] = v8;
    v6[209] = v7;
    v10 = *(v17 + 64);
    v6[269] = v10;
    v6[270] = (v17 + 64) & 0xFFFFFFFFFFFFLL | 0x5374000000000000;
    v16 = (v10 + *v10);
    v11 = swift_task_alloc();
    v6[271] = v11;
    *v11 = v6;
    v11[1] = closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(groupName:forGroup:context:);
    v12 = v6[246];
    v13 = v6[224];
    v14 = v6[223];

    return (v16)(v14, v13, v6 + 208, ObjectType, v12);
  }
}

{
  v6 = *v3;
  *(*v3 + 2176) = v2;

  if (v2)
  {
    outlined destroy of NSObject?(v6 + 1712, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
    v7 = closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(groupName:forGroup:context:);
  }

  else
  {
    *(v6 + 2184) = a2;
    *(v6 + 2192) = a1;
    v7 = closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(groupName:forGroup:context:);
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

{
  v3 = *v2;
  *(v3 + 2312) = a1;
  *(v3 + 2320) = a2;

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(groupName:forGroup:context:), 0, 0);
}

{
  v6 = *v3;
  v6[292] = v2;

  if (v2)
  {
    outlined destroy of NSObject?((v6 + 214), &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);

    return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(groupName:forGroup:context:), 0, 0);
  }

  else
  {
    v7 = v6[279];
    v8 = v6[278];
    v9 = v6[269];
    v6[293] = a2;
    v6[294] = a1;
    v6[212] = v8;
    v6[213] = v7;
    v16 = (v9 + *v9);
    v10 = swift_task_alloc();
    v6[295] = v10;
    *v10 = v6;
    v10[1] = closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(groupName:forGroup:context:);
    v11 = v6[268];
    v12 = v6[246];
    v13 = v6[224];
    v14 = v6[223];

    return (v16)(v14, v13, v6 + 212, v11, v12);
  }
}

{
  v6 = *v3;
  *(*v3 + 2368) = v2;

  if (v2)
  {
    outlined destroy of NSObject?((v6 + 214), &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
    v7 = closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(groupName:forGroup:context:);
  }

  else
  {
    v6[297] = v6[204];
    v6[298] = a2;
    v6[299] = a1;
    v7 = closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(groupName:forGroup:context:);
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t MLS.SwiftMLSClientCoordinator.processIncoming(message:context:)(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  *(v4 + 1072) = v3;
  *(v4 + 1064) = a1;
  v7 = type metadata accessor for MLS.MLSMessage();
  *(v4 + 1080) = v7;
  *(v4 + 1088) = *(v7 - 8);
  *(v4 + 1096) = swift_task_alloc();
  v8 = a2[1];
  *(v4 + 856) = *a2;
  *(v4 + 872) = v8;
  *(v4 + 888) = a2[2];
  *(v4 + 898) = *(a2 + 42);
  v9 = *(a3 + 144);
  *(v4 + 144) = *(a3 + 128);
  *(v4 + 160) = v9;
  *(v4 + 176) = *(a3 + 160);
  v10 = *(a3 + 80);
  *(v4 + 80) = *(a3 + 64);
  *(v4 + 96) = v10;
  v11 = *(a3 + 112);
  *(v4 + 112) = *(a3 + 96);
  *(v4 + 128) = v11;
  v12 = *(a3 + 16);
  *(v4 + 16) = *a3;
  *(v4 + 32) = v12;
  v13 = *(a3 + 48);
  *(v4 + 48) = *(a3 + 32);
  *(v4 + 64) = v13;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v14 = static MLSActor.shared;
  *(v4 + 1104) = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.SwiftMLSClientCoordinator.processIncoming(message:context:), v14, 0);
}

uint64_t MLS.SwiftMLSClientCoordinator.processIncoming(message:context:)()
{
  v36 = v0;
  v0[139] = direct field offset for MLS.SwiftMLSClientCoordinator.logger;
  outlined init with copy of MLS.OutgoingEventState?((v0 + 2), (v0 + 23), &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
  outlined init with copy of MLS.OutgoingEventState?((v0 + 107), (v0 + 115), &_s15SecureMessaging3MLSO15IncomingMessageVy_AC9AllMemberOGMd, &_s15SecureMessaging3MLSO15IncomingMessageVy_AC9AllMemberOGMR);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();
  outlined destroy of NSObject?((v0 + 2), &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
  outlined destroy of NSObject?((v0 + 107), &_s15SecureMessaging3MLSO15IncomingMessageVy_AC9AllMemberOGMd, &_s15SecureMessaging3MLSO15IncomingMessageVy_AC9AllMemberOGMR);
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v35[0] = v4;
    *v3 = 136315394;
    v5 = v0[2];
    v6 = v0[3];

    v7 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v6, v35);

    *(v3 + 4) = v7;
    *(v3 + 12) = 2080;
    v8 = specialized MLS.IncomingMessage.description.getter();
    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, v35);

    *(v3 + 14) = v10;
    _os_log_impl(&dword_264F1F000, v1, v2, "SwiftMLSClientCoordinator processIncoming deprecated version called { identifier: %s, message: %s }", v3, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v4, -1, -1);
    MEMORY[0x266755550](v3, -1, -1);
  }

  static MLS.parseMLSMessage(data:)();
  v11 = MLS.MLSMessage.groupID.getter();
  v0[140] = v11;
  v0[141] = v12;
  if (v12 >> 60 == 15)
  {
    outlined init with copy of MLS.OutgoingEventState?((v0 + 2), (v0 + 44), &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    outlined destroy of NSObject?((v0 + 2), &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v35[0] = v16;
      *v15 = 136315138;
      v17 = v0[2];
      v18 = v0[3];

      v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, v35);

      *(v15 + 4) = v19;
      _os_log_impl(&dword_264F1F000, v13, v14, "SwiftMLSClientCoordinator processIncoming failed to find group ID in message { identifier: %s }", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v16);
      MEMORY[0x266755550](v16, -1, -1);
      MEMORY[0x266755550](v15, -1, -1);
    }

    v20 = v0[137];
    v21 = v0[136];
    v22 = v0[135];
    lazy protocol witness table accessor for type MLS.IncomingMessageError and conformance MLS.IncomingMessageError();
    swift_allocError();
    *v23 = 18;
    *(v23 + 8) = 0;
    *(v23 + 16) = 0;
    swift_willThrow();
    (*(v21 + 8))(v20, v22);

    v24 = v0[1];

    return v24();
  }

  else
  {
    v26 = v0[134];
    v27 = *(v26 + 88);
    v28 = v11;
    v29 = v12;
    ObjectType = swift_getObjectType();
    v31 = *(v26 + direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier + 8);
    v0[131] = *(v26 + direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier);
    v0[132] = v31;
    v32 = *(v27 + 48);

    v34 = (v32 + *v32);
    v33 = swift_task_alloc();
    v0[142] = v33;
    *v33 = v0;
    v33[1] = MLS.SwiftMLSClientCoordinator.processIncoming(message:context:);

    return (v34)(v28, v29, v0 + 131, ObjectType, v27);
  }
}

{
  v37 = v0;
  v1 = *(v0 + 1152);
  if (v1)
  {
    v2 = *(v0 + 1072);
    v3 = *(v0 + 872);
    *(v0 + 984) = *(v0 + 856);
    *(v0 + 1000) = v3;
    *(v0 + 1016) = *(v0 + 888);
    *(v0 + 1026) = *(v0 + 898);
    v4 = *(v0 + 96);
    *(v0 + 752) = *(v0 + 80);
    *(v0 + 768) = v4;
    *(v0 + 848) = *(v0 + 176);
    v5 = *(v0 + 160);
    *(v0 + 816) = *(v0 + 144);
    *(v0 + 832) = v5;
    v6 = *(v0 + 128);
    *(v0 + 784) = *(v0 + 112);
    *(v0 + 800) = v6;
    v7 = *(v0 + 32);
    *(v0 + 688) = *(v0 + 16);
    *(v0 + 704) = v7;
    v8 = *(v0 + 64);
    *(v0 + 720) = *(v0 + 48);
    *(v0 + 736) = v8;
    v35 = (*(*v2 + 448) + **(*v2 + 448));
    v9 = swift_task_alloc();
    *(v0 + 1168) = v9;
    *v9 = v0;
    v9[1] = MLS.SwiftMLSClientCoordinator.processIncoming(message:context:);
    v10 = *(v0 + 1144);
    v11 = *(v0 + 1064);

    return v35(v11, v0 + 984, v10, v1, v0 + 688);
  }

  else
  {
    v13 = *(v0 + 1128);
    v14 = *(v0 + 1120);
    outlined init with copy of MLS.OutgoingEventState?(v0 + 16, v0 + 520, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    outlined copy of Data?(v14, v13);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    outlined destroy of NSObject?(v0 + 16, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    outlined consume of Data?(v14, v13);
    if (os_log_type_enabled(v15, v16))
    {
      v17 = *(v0 + 1128);
      v18 = *(v0 + 1120);
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v36[0] = v20;
      *v19 = 136315394;
      v21 = *(v0 + 16);
      v22 = *(v0 + 24);

      v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, v36);

      *(v19 + 4) = v23;
      *(v19 + 12) = 2080;
      outlined copy of Data._Representation(v18, v17);
      v24 = Data.description.getter();
      v26 = v25;
      outlined consume of Data?(v18, v17);
      v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v26, v36);

      *(v19 + 14) = v27;
      _os_log_impl(&dword_264F1F000, v15, v16, "SwiftMLSClientCoordinator processIncoming failed to find group id with swiftMLS ID { identifier: %s, swiftMLSGroupID: %s }", v19, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266755550](v20, -1, -1);
      MEMORY[0x266755550](v19, -1, -1);
    }

    v28 = *(v0 + 1128);
    v29 = *(v0 + 1120);
    v30 = *(v0 + 1096);
    v31 = *(v0 + 1088);
    v32 = *(v0 + 1080);
    lazy protocol witness table accessor for type MLS.SwiftMLSClientCoordinatorError and conformance MLS.SwiftMLSClientCoordinatorError();
    swift_allocError();
    *v33 = 0;
    *(v33 + 8) = 0;
    *(v33 + 16) = 0;
    swift_willThrow();
    outlined consume of Data?(v29, v28);
    (*(v31 + 8))(v30, v32);

    v34 = *(v0 + 8);

    return v34();
  }
}

{
  v2 = *v1;
  *(*v1 + 1176) = v0;

  if (v0)
  {
    v3 = *(v2 + 1104);

    v4 = MLS.SwiftMLSClientCoordinator.processIncoming(message:context:);
  }

  else
  {
    v3 = *(v2 + 1104);

    v4 = MLS.SwiftMLSClientCoordinator.processIncoming(message:context:);
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{
  v1 = v0[137];
  v2 = v0[136];
  v3 = v0[135];
  outlined consume of Data?(v0[140], v0[141]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

{
  v1 = v0[137];
  v2 = v0[136];
  v3 = v0[135];
  outlined consume of Data?(v0[140], v0[141]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

{
  v1 = v0[137];
  v2 = v0[136];
  v3 = v0[135];
  outlined consume of Data?(v0[140], v0[141]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t MLS.SwiftMLSClientCoordinator.processIncoming(message:context:)(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[143] = a1;
  v4[144] = a2;
  v4[145] = v2;

  if (v2)
  {
    v5 = v4[138];

    v6 = MLS.SwiftMLSClientCoordinator.processIncoming(message:context:);
  }

  else
  {
    v5 = v4[138];

    v6 = MLS.SwiftMLSClientCoordinator.processIncoming(message:context:);
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:)(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 864) = v5;
  *(v6 + 856) = a4;
  *(v6 + 848) = a3;
  *(v6 + 840) = a1;
  v9 = type metadata accessor for MLS.MLSError();
  *(v6 + 872) = v9;
  *(v6 + 880) = *(v9 - 8);
  *(v6 + 888) = swift_task_alloc();
  *(v6 + 896) = swift_task_alloc();
  v10 = a2[1];
  *(v6 + 520) = *a2;
  *(v6 + 536) = v10;
  *(v6 + 552) = a2[2];
  *(v6 + 562) = *(a2 + 42);
  v11 = *(a5 + 144);
  *(v6 + 144) = *(a5 + 128);
  *(v6 + 160) = v11;
  *(v6 + 176) = *(a5 + 160);
  v12 = *(a5 + 80);
  *(v6 + 80) = *(a5 + 64);
  *(v6 + 96) = v12;
  v13 = *(a5 + 112);
  *(v6 + 112) = *(a5 + 96);
  *(v6 + 128) = v13;
  v14 = *(a5 + 16);
  *(v6 + 16) = *a5;
  *(v6 + 32) = v14;
  v15 = *(a5 + 48);
  *(v6 + 48) = *(a5 + 32);
  *(v6 + 64) = v15;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v16 = static MLSActor.shared;
  *(v6 + 904) = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:), v16, 0);
}

void MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:)()
{
  v1 = swift_allocObject();
  v0[114] = v1;
  v2 = v0[22];
  v0[102] = v2;
  *(v1 + 16) = v2;
  v0[115] = direct field offset for MLS.SwiftMLSClientCoordinator.logger;
  outlined init with copy of MetricCollector((v0 + 102), (v0 + 103));
  outlined init with copy of MLS.OutgoingEventState?((v0 + 2), (v0 + 23), &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
  outlined init with copy of MLS.OutgoingEventState?((v0 + 65), (v0 + 73), &_s15SecureMessaging3MLSO15IncomingMessageVy_AC9AllMemberOGMd, &_s15SecureMessaging3MLSO15IncomingMessageVy_AC9AllMemberOGMR);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  outlined destroy of NSObject?((v0 + 2), &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
  outlined destroy of NSObject?((v0 + 65), &_s15SecureMessaging3MLSO15IncomingMessageVy_AC9AllMemberOGMd, &_s15SecureMessaging3MLSO15IncomingMessageVy_AC9AllMemberOGMR);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v18 = v6;
    *v5 = 136315394;
    v7 = v0[2];
    v8 = v0[3];

    v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v8, &v18);

    *(v5 + 4) = v9;
    *(v5 + 12) = 2080;
    v10 = specialized MLS.IncomingMessage.description.getter();
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v18);

    *(v5 + 14) = v12;
    _os_log_impl(&dword_264F1F000, v3, v4, "SwiftMLSClientCoordinator processIncoming enqueueing event { identifier: %s, message: %s }", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v6, -1, -1);
    MEMORY[0x266755550](v5, -1, -1);
  }

  v13 = *(v0[108] + direct field offset for MLS.SwiftMLSClientCoordinator.groupLoader);
  v0[116] = v13;
  v14 = v0[3];
  v0[117] = v0[2];
  v0[118] = v14;
  v16 = *(*v13 + 192) + **(*v13 + 192);
  v15 = swift_task_alloc();
  v0[119] = v15;
  lazy protocol witness table accessor for type MLS.IncomingMessageError and conformance MLS.IncomingMessageError();
  *v15 = v0;
  v15[1] = MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);

  __asm { BRAA            X8, X16 }
}

uint64_t MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:)()
{
  v2 = *v1;

  v3 = *(v2 + 904);
  if (v0)
  {
    v4 = MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
  }

  else
  {
    v4 = MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{
  v1 = *(v0 + 928);
  v2 = *(v0 + 912);
  v3 = *(v0 + 864);
  v13 = *(v0 + 848);
  outlined init with take of MLS.KeyUpdatePolicy((v0 + 752), v0 + 712);
  v4 = swift_task_alloc();
  *(v0 + 960) = v4;
  *(v4 + 16) = v0 + 520;
  *(v4 + 24) = v3;
  *(v4 + 32) = v0 + 16;
  *(v4 + 40) = v0 + 712;
  *(v4 + 48) = v13;
  *(v4 + 64) = v2;
  v5 = *(*v1 + 152);
  v6 = *v1 + 152;
  *(v0 + 968) = v5;
  *(v0 + 976) = v6 & 0xFFFFFFFFFFFFLL | 0xA800000000000000;
  v14 = (v5 + *v5);
  v7 = swift_task_alloc();
  *(v0 + 984) = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO31IncomingMessageProcessedContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO31IncomingMessageProcessedContextVy_10Foundation4DataVGMR);
  *(v0 + 992) = v8;
  *v7 = v0;
  v7[1] = MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
  v9 = *(v0 + 944);
  v10 = *(v0 + 936);
  v11 = *(v0 + 840);

  return v14(v11, v10, v9, &async function pointer to partial apply for closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:), v4, v8);
}

{
  v2 = *v1;
  *(*v1 + 1000) = v0;

  if (v0)
  {
    v3 = *(v2 + 904);
    v4 = MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
  }

  else
  {
    v5 = *(v2 + 904);

    v4 = MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 712));

  v1 = *(v0 + 8);

  return v1();
}

{
  v29 = v0;
  v1 = *(v0 + 792);
  v2 = *(v0 + 800);
  v3 = *(v0 + 808);
  outlined init with copy of MLS.OutgoingEventState?(v0 + 16, v0 + 352, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();
  outlined destroy of NSObject?(v0 + 16, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);

  if (os_log_type_enabled(v4, v5))
  {
    v26 = v2;
    v6 = *(v0 + 944);
    v7 = *(v0 + 936);
    v8 = swift_slowAlloc();
    v25 = v1;
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v28 = v10;
    *v8 = 136315394;
    *(v8 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v6, &v28);
    *(v8 + 12) = 2112;
    lazy protocol witness table accessor for type MLS.IncomingMessageError and conformance MLS.IncomingMessageError();
    swift_allocError();
    *v11 = v25;
    *(v11 + 8) = v26;
    *(v11 + 16) = v3;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v12;
    *v9 = v12;
    _os_log_impl(&dword_264F1F000, v4, v5, "SwiftMLSClientCoordinator processIncoming performing self heal due to missing group { identifier: %s, error: %@ }", v8, 0x16u);
    outlined destroy of NSObject?(v9, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x266755550](v9, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x266755550](v10, -1, -1);
    MEMORY[0x266755550](v8, -1, -1);
  }

  else
  {
  }

  v13 = *(v0 + 928);
  v14 = *(v0 + 864);
  v15 = *(v0 + 856);
  v16 = *(v0 + 848);
  v17 = *(v0 + 912) + 16;
  v18 = swift_task_alloc();
  *(v0 + 1008) = v18;
  v18[2] = v0 + 520;
  v18[3] = v0 + 16;
  v18[4] = v14;
  v18[5] = v16;
  v18[6] = v15;
  v18[7] = v17;
  v27 = (*(*v13 + 152) + **(*v13 + 152));
  v19 = swift_task_alloc();
  *(v0 + 1016) = v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO31IncomingMessageProcessedContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO31IncomingMessageProcessedContextVy_10Foundation4DataVGMR);
  *v19 = v0;
  v19[1] = MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
  v21 = *(v0 + 944);
  v22 = *(v0 + 936);
  v23 = *(v0 + 840);

  return v27(v23, v22, v21, &async function pointer to partial apply for closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:), v18, v20);
}

{
  v2 = *v1;
  *(*v1 + 1024) = v0;

  if (v0)
  {
    v3 = *(v2 + 904);
    v4 = MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
  }

  else
  {
    v5 = *(v2 + 904);

    v4 = MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
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

{
  v1 = *(v0 + 1000);

  *(v0 + 832) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if (swift_dynamicCast())
  {
    v3 = (v0 + 520);
    v4 = *(v0 + 896);
    v5 = *(v0 + 888);
    v6 = *(v0 + 880);
    v7 = *(v0 + 872);

    (*(v6 + 32))(v5, v4, v7);
    if (*(v0 + 577) == 2)
    {
      v8 = *(v0 + 536);
      *(v0 + 648) = *v3;
      *(v0 + 664) = v8;
      *(v0 + 680) = *(v0 + 552);
      *(v0 + 690) = *(v0 + 562);
      v9 = swift_task_alloc();
      *(v0 + 1032) = v9;
      *v9 = v0;
      v9[1] = MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
      v10 = *(v0 + 944);
      v11 = *(v0 + 936);
      v12 = *(v0 + 888);
      v13 = *(v0 + 856);
      v14 = *(v0 + 848);

      return MLS.SwiftMLSClientCoordinator.sendNegativeDelivery(message:group:originalEventIdentifier:swiftMLSError:)((v0 + 648), v14, v13, v11, v10, v12);
    }

    else
    {
      v17 = *(v0 + 968);
      v18 = *(v0 + 888);
      v19 = *(v0 + 864);
      v20 = *(v0 + 856);
      v21 = *(v0 + 848);
      v28 = *(v0 + 912) + 16;
      v22 = swift_task_alloc();
      *(v0 + 1040) = v22;
      v22[2] = v3;
      v22[3] = v0 + 16;
      v22[4] = v19;
      v22[5] = v18;
      v22[6] = v21;
      v22[7] = v20;
      v22[8] = v0 + 712;
      v22[9] = v28;
      v29 = (v17 + *v17);
      v23 = swift_task_alloc();
      *(v0 + 1048) = v23;
      *v23 = v0;
      v23[1] = MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
      v24 = *(v0 + 992);
      v25 = *(v0 + 944);
      v26 = *(v0 + 936);
      v27 = *(v0 + 840);

      return (v29)(v27, v26, v25, &async function pointer to partial apply for closure #3 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:), v22, v24);
    }
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 712));

    v16 = *(v0 + 8);

    return v16();
  }
}

{
  v1 = *(*v0 + 904);

  return MEMORY[0x2822009F8](MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:), v1, 0);
}

{
  v1 = v0[121];
  v2 = v0[111];
  v3 = v0[108];
  v4 = v0[107];
  v5 = v0[106];
  v6 = v0[114] + 16;
  v7 = swift_task_alloc();
  v0[130] = v7;
  v7[2] = v0 + 65;
  v7[3] = v0 + 2;
  v7[4] = v3;
  v7[5] = v2;
  v7[6] = v5;
  v7[7] = v4;
  v7[8] = v0 + 89;
  v7[9] = v6;
  v14 = (v1 + *v1);
  v8 = swift_task_alloc();
  v0[131] = v8;
  *v8 = v0;
  v8[1] = MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
  v9 = v0[124];
  v10 = v0[118];
  v11 = v0[117];
  v12 = v0[105];

  return (v14)(v12, v11, v10, &async function pointer to partial apply for closure #3 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:), v7, v9);
}

{
  v2 = *v1;
  *(*v1 + 1056) = v0;

  if (v0)
  {
    v3 = *(v2 + 904);
    v4 = MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
  }

  else
  {
    v5 = *(v2 + 904);

    v4 = MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{
  (*(*(v0 + 880) + 8))(*(v0 + 888), *(v0 + 872));

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 712));

  v1 = *(v0 + 8);

  return v1();
}

{
  v1 = *(v0 + 888);
  v2 = *(v0 + 880);
  v3 = *(v0 + 872);

  (*(v2 + 8))(v1, v3);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 712));

  v4 = *(v0 + 8);

  return v4();
}

uint64_t closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[214] = a7;
  v7[213] = a6;
  v7[212] = a5;
  v7[211] = a4;
  v7[210] = a3;
  v7[209] = a2;
  v7[208] = a1;
  v8 = type metadata accessor for MLS.Group.GroupInfo();
  v7[215] = v8;
  v7[216] = *(v8 - 8);
  v7[217] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v9 = static MLSActor.shared;
  v7[218] = static MLSActor.shared;

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:), v9, 0);
}

uint64_t closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:)()
{
  v1 = (v0 + 968);
  v2 = *(v0 + 1672);
  if (*(v2 + 57) == 1)
  {
    v3 = *(v0 + 1680);
    v4 = *(v2 + 41);
    *(v0 + 1344) = *(v2 + 32);
    *(v0 + 1353) = v4;
    *(v0 + 1584) = *(v2 + 16);
    *(v0 + 1568) = *(v3 + 16);
    *v6 = *(v2 + 32);
    *&v6[9] = *(v2 + 41);
    v7 = *(v2 + 16);
    v8 = *(v3 + 16);
    outlined init with copy of MLS.AllMember(v0 + 1344, v0 + 1376);
    outlined init with copy of String(v0 + 1584, v0 + 1616);
    outlined init with copy of MLS.OutgoingEventState?(v0 + 1568, v0 + 1632, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
    *v1 = *v6;
    *(v0 + 984) = *&v6[16];
    *(v0 + 1000) = v7;
    *(v0 + 1016) = v8;
  }

  else
  {
    *(v0 + 1000) = 0u;
    *(v0 + 1016) = 0u;
    *v1 = 0u;
    *(v0 + 984) = 0u;
  }

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:), 0, 0);
}

{
  *(v0 + 1272) = 0;
  *(v0 + 1240) = 0u;
  *(v0 + 1256) = 0u;
  v1 = *(v0 + 984);
  *(v0 + 1096) = *(v0 + 968);
  *(v0 + 1112) = v1;
  v2 = *(v0 + 1016);
  *(v0 + 1128) = *(v0 + 1000);
  *(v0 + 1144) = v2;
  v3 = swift_task_alloc();
  *(v0 + 1752) = v3;
  *v3 = v0;
  v3[1] = closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
  v4 = *(v0 + 1704);
  v5 = *(v0 + 1696);

  return MLS.SwiftMLSClientCoordinator.performSelfHeal(groupIdentifier:swiftMLSGroup:ftdInfo:isWithinPersisterTransaction:)(v5, v4, v0 + 1240, (v0 + 1096), 1);
}

{
  v2 = *v1;
  *(v2 + 1760) = v0;

  outlined destroy of NSObject?(v2 + 1240, &_s15SecureMessaging3MLSO21SwiftMLSGroupProtocol_pSgMd, &_s15SecureMessaging3MLSO21SwiftMLSGroupProtocol_pSgMR);
  if (v0)
  {
    v3 = closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
  }

  else
  {
    v3 = closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  v1 = *(v0 + 1760);
  v2 = *(v0 + 1744);
  swift_getErrorValue();
  Error.readableDescription.getter(*(v0 + 1488), *(v0 + 1496));

  swift_getErrorValue();
  v3 = Error.readableDescription.getter(*(v0 + 1416), *(v0 + 1424));
  *(v0 + 1768) = v3;
  *(v0 + 1776) = v4;
  *(v0 + 1432) = 25;
  *(v0 + 1440) = v3;
  *(v0 + 1448) = v4;
  *(v0 + 1784) = lazy protocol witness table accessor for type MLS.IncomingMessageError and conformance MLS.IncomingMessageError();
  swift_willThrowTypedImpl();

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:), v2, 0);
}

{
  v1 = v0[222];
  v2 = v0[221];
  swift_allocError();
  *v3 = 25;
  *(v3 + 8) = v2;
  *(v3 + 16) = v1;
  outlined destroy of NSObject?((v0 + 121), &_s15SecureMessaging3MLSO13QueuedFTDInfoVSgMd, &_s15SecureMessaging3MLSO13QueuedFTDInfoVSgMR);

  v4 = v0[1];

  return v4();
}

{
  v1 = *(v0 + 1744);

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:), v1, 0);
}

{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 1744);

    v4 = closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
    v5 = v3;
  }

  else
  {
    v5 = *(v2 + 1744);
    v4 = closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
  }

  return MEMORY[0x2822009F8](v4, v5, 0);
}

{
  v1 = v0[211];
  outlined init with copy of ServerBag.MLS((v0 + 150), (v0 + 145));
  v0[227] = *(v1 + 80);
  v0[228] = *(v1 + 88);
  v2 = v1 + direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier;
  v0[229] = *(v1 + direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier);
  v0[230] = *(v2 + 8);

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:), 0, 0);
}

{
  v1 = v0[148];
  v2 = v0[149];
  __swift_project_boxed_opaque_existential_1(v0 + 145, v1);
  v3 = *(v2 + 32);

  v6 = (v3 + *v3);
  v4 = swift_task_alloc();
  v0[231] = v4;
  *v4 = v0;
  v4[1] = closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);

  return v6(v1, v2);
}

{
  v1 = v0[148];
  v2 = v0[149];
  __swift_project_boxed_opaque_existential_1(v0 + 145, v1);
  v5 = (*(v2 + 24) + **(v2 + 24));
  v3 = swift_task_alloc();
  v0[234] = v3;
  *v3 = v0;
  v3[1] = closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);

  return v5(v1, v2);
}

{
  v0[251] = v0[232];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 145);

  v1 = v0[218];

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:), v1, 0);
}

{
  *(*v1 + 1896) = v0;

  if (v0)
  {

    v2 = closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
  }

  else
  {
    v2 = closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v1 = v0[148];
  v2 = v0[149];
  __swift_project_boxed_opaque_existential_1(v0 + 145, v1);
  v5 = (*(v2 + 64) + **(v2 + 64));
  v3 = swift_task_alloc();
  v0[243] = v3;
  *v3 = v0;
  v3[1] = closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);

  return v5(v1, v2);
}

{
  v0[251] = v0[237];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 145);

  v1 = v0[218];

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:), v1, 0);
}

{
  v1 = v0[242];
  v2 = v0[239];
  v3 = v0[238];
  if (v1 >> 60 == 15)
  {
    v4 = 0xC000000000000000;
  }

  else
  {
    v4 = v0[242];
  }

  if (v1 >> 60 == 15)
  {
    v5 = 0;
  }

  else
  {
    v5 = v0[241];
  }

  v0[251] = v0[244];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 145);

  outlined consume of Data._Representation(v3, v2);
  outlined consume of Data._Representation(v5, v4);
  v6 = v0[218];

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:), v6, 0);
}

{
  v1 = *(v0 + 2000);
  v2 = *(v0 + 1992);
  v3 = *(v0 + 1960);
  v4 = *(v0 + 1936);
  v5 = *(v0 + 1912);
  v6 = *(v0 + 1904);
  v18 = v6;
  v19 = v5;
  v7 = *(v0 + 1880);
  v17 = v7;
  v8 = *(v0 + 1864);
  v20 = *(v0 + 1744);
  v9 = *(v0 + 1704);
  v10 = *(v0 + 1696);
  if (v3 >> 60 == 15)
  {
    v11 = 0xC000000000000000;
  }

  else
  {
    v11 = *(v0 + 1960);
  }

  if (v3 >> 60 == 15)
  {
    v12 = 0;
  }

  else
  {
    v12 = *(v0 + 1968);
  }

  if (v4 >> 60 == 15)
  {
    v13 = 0xC000000000000000;
  }

  else
  {
    v13 = *(v0 + 1936);
  }

  if (v4 >> 60 == 15)
  {
    v14 = 0;
  }

  else
  {
    v14 = *(v0 + 1928);
  }

  if ((v8 & 0x100000000) != 0)
  {
    v15 = 1;
  }

  else
  {
    v15 = v8;
  }

  *(v0 + 560) = v10;
  *(v0 + 568) = v9;
  *(v0 + 576) = v15;
  *(v0 + 584) = v15;
  *(v0 + 592) = v7;
  *(v0 + 600) = v6;
  *(v0 + 608) = v5;
  *(v0 + 616) = v14;
  *(v0 + 624) = v13;
  *(v0 + 632) = v12;
  *(v0 + 640) = v11;
  *(v0 + 648) = v1;
  *(v0 + 656) = v2;
  outlined init with copy of MLS.Group(v0 + 560, v0 + 456);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 1160));
  *(v0 + 664) = v10;
  *(v0 + 672) = v9;
  *(v0 + 680) = v15;
  *(v0 + 688) = v15;
  *(v0 + 696) = v17;
  *(v0 + 704) = v18;
  *(v0 + 712) = v19;
  *(v0 + 720) = v14;
  *(v0 + 728) = v13;
  *(v0 + 736) = v12;
  *(v0 + 744) = v11;
  *(v0 + 752) = v1;
  *(v0 + 760) = v2;
  outlined destroy of MLS.Group(v0 + 664);

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:), v20, 0);
}

{
  v42 = v0;
  v1 = (v0 + 560);
  if (*(v0 + 1008))
  {

    outlined destroy of NSObject?(v0 + 968, &_s15SecureMessaging3MLSO13QueuedFTDInfoVSgMd, &_s15SecureMessaging3MLSO13QueuedFTDInfoVSgMR);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 1200));
    v2 = *(v0 + 1712);
    v3 = *(v0 + 1680);
    v4 = *(v0 + 1664);
    *(v0 + 1520) = *(v3 + 16);
    v5 = *v2;
    *v4 = *(v3 + 16);
    v6 = *(v0 + 592);
    v7 = *v1;
    *(v4 + 32) = *(v0 + 576);
    *(v4 + 48) = v6;
    *(v4 + 16) = v7;
    v8 = *(v0 + 608);
    v9 = *(v0 + 640);
    v10 = *(v0 + 656);
    *(v4 + 80) = *(v0 + 624);
    *(v4 + 96) = v9;
    *(v4 + 64) = v8;
    *(v4 + 112) = v10;
    *(v4 + 120) = v5;
    outlined init with copy of MLS.OutgoingEventState?(v0 + 1520, v0 + 1600, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);

    v11 = *(v0 + 8);

    return v11();
  }

  else
  {
    v13 = *(v0 + 1800);
    v14 = *(v0 + 1792);
    v15 = *(v0 + 1680);
    v16 = *(v0 + 1672);
    v17 = *(v16 + 32);
    *(v0 + 1321) = *(v16 + 41);
    *(v0 + 1312) = v17;
    *(v0 + 1536) = *(v15 + 16);
    v18 = *(v16 + 32);
    *(v0 + 1057) = *(v16 + 41);
    *(v0 + 1048) = v18;
    *(v41 + 7) = *(v15 + 16);
    *(v0 + 1032) = v14;
    *(v0 + 1040) = v13;
    *(v0 + 1088) = *(&v41[1] + 7);
    *(v0 + 1073) = *v41;
    v19 = *(v0 + 1048);
    *(v0 + 872) = *(v0 + 1032);
    *(v0 + 888) = v19;
    v20 = *(v0 + 1080);
    *(v0 + 904) = *(v0 + 1064);
    *(v0 + 920) = v20;
    *(v0 + 2016) = direct field offset for MLS.SwiftMLSClientCoordinator.logger;
    outlined init with copy of MLS.AllMember(v0 + 1312, v0 + 1280);
    outlined init with copy of MLS.OutgoingEventState?(v0 + 1536, v0 + 1552, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
    outlined init with copy of MLS.OutgoingEventState?(v15, v0 + 184, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();
    outlined destroy of NSObject?(v15, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    if (os_log_type_enabled(v21, v22))
    {
      v23 = *(v0 + 1800);
      v24 = *(v0 + 1792);
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v41[0] = v26;
      *v25 = 136315138;
      *(v25 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v23, v41);
      _os_log_impl(&dword_264F1F000, v21, v22, "SwiftMLSClientCoordinator processIncoming sending internal message event after self heal { identifier: %s }", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v26);
      MEMORY[0x266755550](v26, -1, -1);
      MEMORY[0x266755550](v25, -1, -1);
    }

    v27 = *(v0 + 1688);
    v28 = *(v27 + 96);
    v29 = *(v0 + 920);
    *(v0 + 800) = *(v0 + 904);
    *(v0 + 816) = v29;
    v30 = *(v0 + 952);
    *(v0 + 832) = *(v0 + 936);
    *(v0 + 848) = v30;
    v31 = *(v0 + 888);
    *(v0 + 768) = *(v0 + 872);
    *(v0 + 784) = v31;
    *(v0 + 864) = 9;
    v32 = *(v0 + 576);
    *(v0 + 352) = *v1;
    *(v0 + 368) = v32;
    v33 = *(v0 + 592);
    v34 = *(v0 + 608);
    v35 = *(v0 + 624);
    v36 = *(v0 + 640);
    *(v0 + 448) = *(v0 + 656);
    *(v0 + 416) = v35;
    *(v0 + 432) = v36;
    *(v0 + 384) = v33;
    *(v0 + 400) = v34;
    v37 = (v27 + direct field offset for MLS.SwiftMLSClientCoordinator.selfMember);
    if (*(v0 + 1312) == *v37 && *(v0 + 1320) == v37[1])
    {
      v38 = 1;
    }

    else
    {
      v38 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    v40 = (*(*v28 + 384) + **(*v28 + 384));
    v39 = swift_task_alloc();
    *(v0 + 2024) = v39;
    *v39 = v0;
    v39[1] = closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);

    return v40(v0 + 768, v0 + 352, 1, v38 & 1);
  }
}

{
  v1 = v0[245];
  v2 = v0[242];
  v3 = v0[239];
  v4 = v0[238];
  if (v1 >> 60 == 15)
  {
    v5 = 0xC000000000000000;
  }

  else
  {
    v5 = v0[245];
  }

  if (v1 >> 60 == 15)
  {
    v6 = 0;
  }

  else
  {
    v6 = v0[246];
  }

  if (v2 >> 60 == 15)
  {
    v7 = 0xC000000000000000;
  }

  else
  {
    v7 = v0[242];
  }

  if (v2 >> 60 == 15)
  {
    v8 = 0;
  }

  else
  {
    v8 = v0[241];
  }

  v0[251] = v0[248];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 145);

  outlined consume of Data._Representation(v4, v3);
  outlined consume of Data._Representation(v8, v7);
  outlined consume of Data._Representation(v6, v5);
  v9 = v0[218];

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:), v9, 0);
}

{
  outlined destroy of NSObject?(v0 + 968, &_s15SecureMessaging3MLSO13QueuedFTDInfoVSgMd, &_s15SecureMessaging3MLSO13QueuedFTDInfoVSgMR);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 1200));

  v1 = *(v0 + 8);

  return v1();
}

{
  v2 = *v1;
  *(*v1 + 2032) = v0;

  v3 = *(v2 + 1744);
  if (v0)
  {
    v4 = closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
  }

  else
  {
    v4 = closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{
  v20 = v0;
  v1 = *(v0 + 1680);
  outlined init with copy of MLS.OutgoingEventState?(v1, v0 + 16, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  outlined destroy of NSObject?(v1, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 1800);
    v5 = *(v0 + 1792);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v19 = v7;
    *v6 = 136315138;
    *(v6 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v4, &v19);
    _os_log_impl(&dword_264F1F000, v2, v3, "SwiftMLSClientCoordinator processIncoming internal message returning processedContext to caller after self heal { identifier: %s }", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x266755550](v7, -1, -1);
    MEMORY[0x266755550](v6, -1, -1);
  }

  outlined destroy of NSObject?(v0 + 1032, &_s15SecureMessaging3MLSO28IncomingInternalStateUpdatedVy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO28IncomingInternalStateUpdatedVy_AC9AllMemberO10Foundation4DataVGMR);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 1200));
  v8 = *(v0 + 1712);
  v9 = *(v0 + 1680);
  v10 = *(v0 + 1664);
  *(v0 + 1520) = *(v9 + 16);
  v11 = *v8;
  *v10 = *(v9 + 16);
  v12 = *(v0 + 592);
  v13 = *(v0 + 560);
  *(v10 + 32) = *(v0 + 576);
  *(v10 + 48) = v12;
  *(v10 + 16) = v13;
  v14 = *(v0 + 608);
  v15 = *(v0 + 640);
  v16 = *(v0 + 656);
  *(v10 + 80) = *(v0 + 624);
  *(v10 + 96) = v15;
  *(v10 + 64) = v14;
  *(v10 + 112) = v16;
  *(v10 + 120) = v11;
  outlined init with copy of MLS.OutgoingEventState?(v0 + 1520, v0 + 1600, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);

  v17 = *(v0 + 8);

  return v17();
}

{
  v1 = *(v0 + 1456);
  v2 = *(v0 + 1464);
  v3 = *(v0 + 1472);
  lazy protocol witness table accessor for type MLS.IncomingMessageError and conformance MLS.IncomingMessageError();
  swift_allocError();
  *v4 = v1;
  *(v4 + 8) = v2;
  *(v4 + 16) = v3;
  outlined destroy of NSObject?(v0 + 968, &_s15SecureMessaging3MLSO13QueuedFTDInfoVSgMd, &_s15SecureMessaging3MLSO13QueuedFTDInfoVSgMR);

  v5 = *(v0 + 8);

  return v5();
}

{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 1200));
  outlined destroy of MLS.Group(v0 + 560);
  outlined destroy of NSObject?(v0 + 1032, &_s15SecureMessaging3MLSO28IncomingInternalStateUpdatedVy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO28IncomingInternalStateUpdatedVy_AC9AllMemberO10Foundation4DataVGMR);

  v1 = *(v0 + 8);

  return v1();
}

void closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:)()
{
  v1 = v0[210];
  v2 = *(v0[211] + direct field offset for MLS.SwiftMLSClientCoordinator.groupLoader);
  v0[224] = *v1;
  v0[225] = v1[1];
  v3 = *(*v2 + 192);

  v5 = v3 + *v3;
  v4 = swift_task_alloc();
  v0[226] = v4;
  lazy protocol witness table accessor for type MLS.IncomingMessageError and conformance MLS.IncomingMessageError();
  *v4 = v0;
  v4[1] = closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);

  __asm { BRAA            X8, X16 }
}

{
  if ((v0[235] & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v1 = v0[148];
    v2 = v0[149];
    __swift_project_boxed_opaque_existential_1(v0 + 145, v1);
    v5 = (*(v2 + 80) + **(v2 + 80));
    v3 = swift_task_alloc();
    v0[236] = v3;
    *v3 = v0;
    v3[1] = closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
    v4 = v0[217];

    v5(v4, v1, v2);
  }
}

uint64_t closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:)(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 1856) = v1;

  if (v1)
  {

    v5 = closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
  }

  else
  {
    *(v4 + 1864) = a1;
    v5 = closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

{
  *(*v1 + 1880) = a1;

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:), 0, 0);
}

{
  v2 = v1[217];
  v3 = v1[216];
  v4 = v1[215];
  v1[238] = MLS.Group.GroupInfo.rawRepresentation.getter();
  v1[239] = v5;
  (*(v3 + 8))(v2, v4);
  v6 = v1[148];
  v7 = v1[149];
  __swift_project_boxed_opaque_existential_1(v1 + 145, v6);
  v10 = (*(v7 + 56) + **(v7 + 56));
  v8 = swift_task_alloc();
  v1[240] = v8;
  *v8 = v1;
  v8[1] = closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);

  return v10(v6, v7);
}

uint64_t closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:)(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 1928) = a1;
  *(v3 + 1936) = a2;

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:), 0, 0);
}

{
  v6 = *v3;
  v6[244] = v2;

  if (v2)
  {

    return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:), 0, 0);
  }

  else
  {
    v7 = v6[230];
    v8 = v6[229];
    v16 = v6[228];
    v6[245] = a2;
    v6[246] = a1;
    ObjectType = swift_getObjectType();
    v6[188] = v8;
    v6[189] = v7;
    v15 = (*(v16 + 64) + **(v16 + 64));
    v10 = swift_task_alloc();
    v6[247] = v10;
    *v10 = v6;
    v10[1] = closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
    v11 = v6[228];
    v12 = v6[213];
    v13 = v6[212];

    return v15(v13, v12, v6 + 188, ObjectType, v11);
  }
}

{
  v6 = *v3;
  *(*v3 + 1984) = v2;

  if (v2)
  {

    v7 = closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
  }

  else
  {
    *(v6 + 1992) = a2;
    *(v6 + 2000) = a1;
    v7 = closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[2600] = a8;
  v8[2599] = a7;
  v8[2598] = a6;
  v8[2597] = a5;
  v8[2596] = a4;
  v8[2595] = a3;
  v8[2594] = a2;
  v8[2593] = a1;
  v8[2601] = *a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8SwiftMLS0B0O5GroupO6MemberVSgMd, &_s8SwiftMLS0B0O5GroupO6MemberVSgMR);
  v8[2602] = swift_task_alloc();
  v9 = type metadata accessor for MLS.MLSError();
  v8[2603] = v9;
  v8[2604] = *(v9 - 8);
  v8[2605] = swift_task_alloc();
  v10 = type metadata accessor for MLS.Group.IncomingSignedMessage();
  v8[2606] = v10;
  v8[2607] = *(v10 - 8);
  v8[2608] = swift_task_alloc();
  v11 = type metadata accessor for MLS.Group.CommitOutput();
  v8[2609] = v11;
  v12 = *(v11 - 8);
  v8[2610] = v12;
  v8[2611] = *(v12 + 64);
  v8[2612] = swift_task_alloc();
  v8[2613] = swift_task_alloc();
  v8[2614] = swift_task_alloc();
  v8[2615] = swift_task_alloc();
  v13 = type metadata accessor for MLS.Group.Group.DecryptNameKeysInput();
  v8[2616] = v13;
  v8[2617] = *(v13 - 8);
  v8[2618] = swift_task_alloc();
  v14 = type metadata accessor for MLS.Group.RosterUpdate();
  v8[2619] = v14;
  v8[2620] = *(v14 - 8);
  v8[2621] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8SwiftMLS0B0O5GroupO11StateUpdateVSgMd, &_s8SwiftMLS0B0O5GroupO11StateUpdateVSgMR);
  v8[2622] = swift_task_alloc();
  v8[2623] = swift_task_alloc();
  v8[2624] = swift_task_alloc();
  v8[2625] = swift_task_alloc();
  v8[2626] = swift_task_alloc();
  v15 = type metadata accessor for MLS.Group.IncomingApplicationMessageDetails();
  v8[2627] = v15;
  v8[2628] = *(v15 - 8);
  v8[2629] = swift_task_alloc();
  v8[2630] = swift_task_alloc();
  v8[2631] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8SwiftMLS0B0O5GroupO15ReceivedMessageOSgMd, &_s8SwiftMLS0B0O5GroupO15ReceivedMessageOSgMR);
  v8[2632] = swift_task_alloc();
  v8[2633] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8SwiftMLS0B0O5GroupO7MessageVSgMd, &_s8SwiftMLS0B0O5GroupO7MessageVSgMR);
  v8[2634] = swift_task_alloc();
  v16 = type metadata accessor for MLS.Group.Message();
  v8[2635] = v16;
  v8[2636] = *(v16 - 8);
  v8[2637] = swift_task_alloc();
  v8[2638] = swift_task_alloc();
  v8[2639] = swift_task_alloc();
  v17 = type metadata accessor for MLS.Group.ReceivedMessage();
  v8[2640] = v17;
  v8[2641] = *(v17 - 8);
  v8[2642] = swift_task_alloc();
  v8[2643] = swift_task_alloc();
  v8[2644] = swift_task_alloc();
  v8[2645] = swift_task_alloc();
  v8[2646] = swift_task_alloc();
  v8[2647] = swift_task_alloc();
  v8[2648] = swift_task_alloc();
  v8[2649] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging15MetricCollectorV5EventVSgMd, &_s15SecureMessaging15MetricCollectorV5EventVSgMR);
  v8[2650] = swift_task_alloc();
  v18 = type metadata accessor for MLS.Group.GroupInfo();
  v8[2651] = v18;
  v8[2652] = *(v18 - 8);
  v8[2653] = swift_task_alloc();
  v8[2654] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8SwiftMLS0B0O10MLSMessageVSgMd, &_s8SwiftMLS0B0O10MLSMessageVSgMR);
  v8[2655] = swift_task_alloc();
  v8[2656] = swift_task_alloc();
  v19 = type metadata accessor for MLS.MLSMessage();
  v8[2657] = v19;
  v8[2658] = *(v19 - 8);
  v8[2659] = swift_task_alloc();
  v8[2660] = swift_task_alloc();
  v8[2661] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v20 = static MLSActor.shared;
  v8[2662] = static MLSActor.shared;

  return MEMORY[0x2822009F8](closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:), v20, 0);
}

uint64_t closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:)()
{
  v64 = v0;
  v1 = *(*(v0 + 20752) + 57);
  *(v0 + 15569) = v1;
  if (v1 <= 1)
  {
    static MLS.parseMLSMessage(data:)();
    if (v1)
    {
      v4 = 21272;
    }

    else
    {
      v4 = 21280;
    }

    v9 = (v0 + v4);
    goto LABEL_14;
  }

  if (v1 == 2)
  {
    v5 = static MLS.parseCommitList(data:)();
    if (*(v5 + 16))
    {
      (*(*(v0 + 21264) + 16))(*(v0 + 21248), v5 + ((*(*(v0 + 21264) + 80) + 32) & ~*(*(v0 + 21264) + 80)), *(v0 + 21256));
      v6 = 0;
    }

    else
    {
      v6 = 1;
    }

    v47 = *(v0 + 21264);
    v48 = *(v0 + 21256);
    v9 = (v0 + 21248);
    v49 = *(v0 + 21248);
    (*(v47 + 56))(v49, v6, 1, v48);

    if ((*(v47 + 48))(v49, 1, v48) != 1)
    {
      goto LABEL_14;
    }

    outlined destroy of NSObject?(*v9, &_s8SwiftMLS0B0O10MLSMessageVSgMd, &_s8SwiftMLS0B0O10MLSMessageVSgMR);
    lazy protocol witness table accessor for type MLS.IncomingMessageError and conformance MLS.IncomingMessageError();
    swift_allocError();
    v8 = 24;
LABEL_11:
    *v7 = v8;
    *(v7 + 8) = 0;
    *(v7 + 16) = 0;
    swift_willThrow();
LABEL_23:

    v29 = *(v0 + 8);

    return v29();
  }

  if (v1 != 3)
  {
    lazy protocol witness table accessor for type MLS.IncomingMessageError and conformance MLS.IncomingMessageError();
    swift_allocError();
    v8 = 22;
    goto LABEL_11;
  }

  v2 = static MLS.parseProposalList(data:)();
  if (*(v2 + 16))
  {
    (*(*(v0 + 21264) + 16))(*(v0 + 21240), v2 + ((*(*(v0 + 21264) + 80) + 32) & ~*(*(v0 + 21264) + 80)), *(v0 + 21256));
    v3 = 0;
  }

  else
  {
    v3 = 1;
  }

  v58 = *(v0 + 21264);
  v59 = *(v0 + 21256);
  v9 = (v0 + 21240);
  v60 = *(v0 + 21240);
  (*(v58 + 56))(v60, v3, 1, v59);

  if ((*(v58 + 48))(v60, 1, v59) == 1)
  {
    outlined destroy of NSObject?(*v9, &_s8SwiftMLS0B0O10MLSMessageVSgMd, &_s8SwiftMLS0B0O10MLSMessageVSgMR);
    lazy protocol witness table accessor for type MLS.IncomingMessageError and conformance MLS.IncomingMessageError();
    swift_allocError();
    v8 = 23;
    goto LABEL_11;
  }

LABEL_14:
  (*(*(v0 + 21264) + 32))(*(v0 + 21288), *v9, *(v0 + 21256));
  v10 = MLS.MLSMessage.groupID.getter();
  v12 = *(v0 + 20768);
  if (v11 >> 60 == 15)
  {
    outlined init with copy of MLS.OutgoingEventState?(*(v0 + 20768), v0 + 688, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    outlined init with copy of MLS.OutgoingEventState?(v12, v0 + 8584, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    v15 = os_log_type_enabled(v13, v14);
    v16 = *(v0 + 20768);
    if (v15)
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v63[0] = v18;
      *v17 = 136315138;
      v19 = *v16;
      v20 = v16[1];

      v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v20, v63);

      *(v17 + 4) = v21;
      outlined destroy of NSObject?(v16, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
      outlined destroy of NSObject?(v16, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
      _os_log_impl(&dword_264F1F000, v13, v14, "SwiftMLSClientCoordinator processIncoming failed to find group ID in message { identifier: %s }", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v18);
      MEMORY[0x266755550](v18, -1, -1);
      MEMORY[0x266755550](v17, -1, -1);
    }

    else
    {

      outlined destroy of NSObject?(v16, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
      outlined destroy of NSObject?(v16, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    }

    v24 = *(v0 + 21288);
    v25 = *(v0 + 21264);
    v26 = *(v0 + 21256);
    lazy protocol witness table accessor for type MLS.IncomingMessageError and conformance MLS.IncomingMessageError();
    swift_allocError();
    v28 = 18;
    goto LABEL_22;
  }

  outlined consume of Data?(v10, v11);
  *(v0 + 21304) = *v12;
  *(v0 + 21312) = v12[1];
  if (v1 == 2)
  {
    *(v0 + 21320) = MLS.MLSMessage.messageEra.getter();
    result = MLS.MLSMessage.epoch.getter();
    *(v0 + 21328) = result;
    if (v23)
    {
      v24 = *(v0 + 21288);
      v25 = *(v0 + 21264);
      v26 = *(v0 + 21256);
      lazy protocol witness table accessor for type MLS.IncomingMessageError and conformance MLS.IncomingMessageError();
      swift_allocError();
      v28 = 19;
LABEL_22:
      *v27 = v28;
      *(v27 + 8) = 0;
      *(v27 + 16) = 0;
      swift_willThrow();
      (*(v25 + 8))(v24, v26);
      goto LABEL_23;
    }

    if (result < 0)
    {
      __break(1u);
    }

    else
    {
      v50 = *(**(v0 + 20760) + 344);
      v61 = (v50 + *v50);
      v51 = swift_task_alloc();
      *(v0 + 21336) = v51;
      *v51 = v0;
      v51[1] = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
      v52 = *(v0 + 20776);

      return v61(v0 + 19728, v52);
    }
  }

  else
  {
    v30 = *(v0 + 21200);
    v31 = *(v0 + 20768);
    swift_beginAccess();
    Date.init()();
    v32 = type metadata accessor for MetricCollector.Event(0);
    *(v0 + 21576) = v32;
    v33 = *(v32 + 20);
    v34 = type metadata accessor for Date();
    *(v0 + 21584) = v34;
    v35 = *(v34 - 8);
    v36 = *(v35 + 56);
    *(v0 + 21592) = v36;
    *(v0 + 21600) = (v35 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v36(v30 + v33, 1, 1, v34);
    v37 = *(v32 - 8);
    v38 = *(v37 + 56);
    *(v0 + 21608) = v38;
    *(v0 + 21616) = (v37 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v38(v30, 0, 1, v32);
    specialized Dictionary.subscript.setter(v30, 0x534C4D7466697753, 0xEE0074696D6D6F43);
    swift_endAccess();
    *(v0 + 21624) = direct field offset for MLS.SwiftMLSClientCoordinator.logger;
    outlined init with copy of MLS.OutgoingEventState?(v31, v0 + 8416, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    outlined init with copy of MLS.OutgoingEventState?(v31, v0 + 1024, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = *(v0 + 21312);
      v42 = *(v0 + 21304);
      v43 = *(v0 + 20768);
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v63[0] = v45;
      *v44 = 136315138;

      v46 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, v41, v63);

      *(v44 + 4) = v46;
      outlined destroy of NSObject?(v43, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
      outlined destroy of NSObject?(v43, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
      _os_log_impl(&dword_264F1F000, v39, v40, "SwiftMLSClientCoordinator processIncoming processing message { identifier: %s }", v44, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v45);
      MEMORY[0x266755550](v45, -1, -1);
      MEMORY[0x266755550](v44, -1, -1);
    }

    else
    {
      v53 = *(v0 + 20768);

      outlined destroy of NSObject?(v53, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
      outlined destroy of NSObject?(v53, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    }

    v54 = *(v0 + 20776);
    v55 = v54[3];
    v56 = v54[4];
    __swift_project_boxed_opaque_existential_1(v54, v55);
    v62 = (*(v56 + 24) + **(v56 + 24));
    v57 = swift_task_alloc();
    *(v0 + 21632) = v57;
    *v57 = v0;
    v57[1] = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);

    return v62(v55, v56);
  }

  return result;
}

{
  v2 = *v1;
  *(*v1 + 21344) = v0;

  v3 = *(v2 + 21296);
  if (v0)
  {
    v4 = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
  }

  else
  {
    v4 = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{
  v76 = v0;
  v1 = *(v0 + 21320);
  if ((v1 & 0x100000000) != 0)
  {
    LODWORD(v1) = 1;
  }

  v2 = *(v0 + 19736);
  v3 = *(v0 + 19744);
  v4 = *(v0 + 21328) < v3;
  v5 = v1 == v2;
  v6 = v1 < v2;
  if (!v5)
  {
    v4 = v6;
  }

  if (v4)
  {
    v7 = (v0 + 19464);
    v8 = *(v0 + 20768);
    *(v0 + 21352) = direct field offset for MLS.SwiftMLSClientCoordinator.logger;
    outlined init with copy of MLS.OutgoingEventState?(v8, v0 + 8080, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);

    outlined init with copy of MLS.OutgoingEventState?(v8, v0 + 3040, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);

    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v70 = *(v0 + 21328);
      v11 = *(v0 + 21320);
      v12 = *(v0 + 21312);
      v13 = *(v0 + 21304);
      v72 = v10;
      v14 = *(v0 + 20792);
      v15 = *(v0 + 20784);
      v16 = *(v0 + 20768);
      if ((v11 & 0x100000000) != 0)
      {
        LODWORD(v11) = 1;
      }

      v69 = v11;
      v17 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      v75 = v71;
      *v17 = 136315906;

      v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v12, &v75);

      *(v17 + 4) = v18;
      outlined destroy of NSObject?(v16, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
      outlined destroy of NSObject?(v16, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
      *(v17 + 12) = 2080;

      v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v14, &v75);

      *(v17 + 14) = v19;
      swift_bridgeObjectRelease_n();
      *(v17 + 22) = 2080;
      *(v0 + 15572) = v69;
      v74[0] = dispatch thunk of CustomStringConvertible.description.getter();
      v74[1] = v20;
      MEMORY[0x2667545A0](46, 0xE100000000000000);
      *(v0 + 20728) = v70;
      v21 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x2667545A0](v21);

      v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v74[0], v74[1], &v75);

      *(v17 + 24) = v22;
      *(v17 + 32) = 2080;
      *(v0 + 15676) = v2;
      v74[0] = dispatch thunk of CustomStringConvertible.description.getter();
      v74[1] = v23;
      MEMORY[0x2667545A0](46, 0xE100000000000000);
      *(v0 + 20736) = v3;
      v7 = (v0 + 19464);
      v24 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x2667545A0](v24);

      v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v74[0], v74[1], &v75);

      *(v17 + 34) = v25;
      _os_log_impl(&dword_264F1F000, v9, v72, "SwiftMLSClientCoordinator processIncoming received commit for past epoch { identifier: %s, groupID: %s, mlsMessageVersion: %s, groupVersion: %s }", v17, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x266755550](v71, -1, -1);
      MEMORY[0x266755550](v17, -1, -1);
    }

    else
    {
      v43 = *(v0 + 20768);

      outlined destroy of NSObject?(v43, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
      outlined destroy of NSObject?(v43, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
      swift_bridgeObjectRelease_n();
    }

    v44 = *(v0 + 21312);
    v45 = *(v0 + 21304);
    v46 = *(v0 + 20768);
    v47 = *(v0 + 20752);
    v48 = *(v47 + 32);
    *(v7 + 9) = *(v47 + 41);
    *v7 = v48;
    *(v0 + 20608) = *(v46 + 16);
    v49 = *(v47 + 32);
    *(v0 + 18097) = *(v47 + 41);
    *(v0 + 18088) = v49;
    *(v74 + 7) = *(v46 + 16);
    *(v0 + 18072) = v45;
    *(v0 + 18080) = v44;
    *(v0 + 18113) = *v74;
    *(v0 + 18128) = *(&v74[1] + 7);
    v50 = *(v0 + 18088);
    *(v0 + 16888) = *(v0 + 18072);
    *(v0 + 16904) = v50;
    v51 = *(v0 + 18120);
    *(v0 + 16920) = *(v0 + 18104);
    *(v0 + 16936) = v51;
    outlined init with copy of MLS.OutgoingEventState?(v46, v0 + 1528, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    outlined init with copy of MLS.OutgoingEventState?(v0 + 20608, v0 + 20560, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
    outlined init with copy of MLS.OutgoingEventState?(v46, v0 + 1192, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);

    outlined init with copy of MLS.OutgoingEventState?(v0 + 20608, v0 + 20592, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
    outlined init with copy of MLS.AllMember(v7, v0 + 19336);
    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = *(v0 + 21312);
      v55 = *(v0 + 21304);
      v56 = *(v0 + 20768);
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v74[0] = v58;
      *v57 = 136315138;

      v59 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v55, v54, v74);

      *(v57 + 4) = v59;
      outlined destroy of NSObject?(v56, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
      outlined destroy of NSObject?(v56, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
      _os_log_impl(&dword_264F1F000, v52, v53, "SwiftMLSClientCoordinator processIncoming sending internal message event { identifier: %s }", v57, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v58);
      MEMORY[0x266755550](v58, -1, -1);
      MEMORY[0x266755550](v57, -1, -1);
    }

    else
    {
      v66 = *(v0 + 20768);

      outlined destroy of NSObject?(v66, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
      outlined destroy of NSObject?(v66, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    }

    v67 = *(v0 + 20760);
    outlined init with copy of ServerBag.MLS(*(v0 + 20776), v0 + 18624);
    *(v0 + 21360) = *(v67 + 80);
    *(v0 + 21368) = *(v67 + 88);
    v68 = v67 + direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier;
    *(v0 + 21376) = *(v67 + direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier);
    *(v0 + 21384) = *(v68 + 8);

    swift_unknownObjectRetain();

    return MEMORY[0x2822009F8](closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:), 0, 0);
  }

  else
  {
    v26 = *(v0 + 21200);
    v27 = *(v0 + 20768);
    swift_beginAccess();
    Date.init()();
    v28 = type metadata accessor for MetricCollector.Event(0);
    *(v0 + 21576) = v28;
    v29 = *(v28 + 20);
    v30 = type metadata accessor for Date();
    *(v0 + 21584) = v30;
    v31 = *(v30 - 8);
    v32 = *(v31 + 56);
    *(v0 + 21592) = v32;
    *(v0 + 21600) = (v31 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v32(v26 + v29, 1, 1, v30);
    v33 = *(v28 - 8);
    v34 = *(v33 + 56);
    *(v0 + 21608) = v34;
    *(v0 + 21616) = (v33 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v34(v26, 0, 1, v28);
    specialized Dictionary.subscript.setter(v26, 0x534C4D7466697753, 0xEE0074696D6D6F43);
    swift_endAccess();
    *(v0 + 21624) = direct field offset for MLS.SwiftMLSClientCoordinator.logger;
    outlined init with copy of MLS.OutgoingEventState?(v27, v0 + 8416, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    outlined init with copy of MLS.OutgoingEventState?(v27, v0 + 1024, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = *(v0 + 21312);
      v38 = *(v0 + 21304);
      v39 = *(v0 + 20768);
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v74[0] = v41;
      *v40 = 136315138;

      v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v37, v74);

      *(v40 + 4) = v42;
      outlined destroy of NSObject?(v39, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
      outlined destroy of NSObject?(v39, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
      _os_log_impl(&dword_264F1F000, v35, v36, "SwiftMLSClientCoordinator processIncoming processing message { identifier: %s }", v40, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v41);
      MEMORY[0x266755550](v41, -1, -1);
      MEMORY[0x266755550](v40, -1, -1);
    }

    else
    {
      v60 = *(v0 + 20768);

      outlined destroy of NSObject?(v60, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
      outlined destroy of NSObject?(v60, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    }

    v61 = *(v0 + 20776);
    v62 = v61[3];
    v63 = v61[4];
    __swift_project_boxed_opaque_existential_1(v61, v62);
    v73 = (*(v63 + 24) + **(v63 + 24));
    v64 = swift_task_alloc();
    *(v0 + 21632) = v64;
    *v64 = v0;
    v64[1] = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);

    return v73(v62, v63);
  }
}

{
  v1 = v0[2331];
  v2 = v0[2332];
  __swift_project_boxed_opaque_existential_1(v0 + 2328, v1);
  v3 = *(v2 + 32);

  v6 = (v3 + *v3);
  v4 = swift_task_alloc();
  v0[2674] = v4;
  *v4 = v0;
  v4[1] = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);

  return v6(v1, v2);
}

{
  v1 = v0[2331];
  v2 = v0[2332];
  __swift_project_boxed_opaque_existential_1(v0 + 2328, v1);
  v5 = (*(v2 + 24) + **(v2 + 24));
  v3 = swift_task_alloc();
  v0[2677] = v3;
  *v3 = v0;
  v3[1] = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);

  return v5(v1, v2);
}

{
  swift_unknownObjectRelease();
  v0[2694] = v0[2675];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2328);

  v1 = v0[2662];
  outlined destroy of NSObject?((v0 + 2576), &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);

  return MEMORY[0x2822009F8](closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:), v1, 0);
}

{
  *(*v1 + 21440) = v0;

  if (v0)
  {

    v2 = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
  }

  else
  {
    v2 = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v1 = v0[2331];
  v2 = v0[2332];
  __swift_project_boxed_opaque_existential_1(v0 + 2328, v1);
  v5 = (*(v2 + 64) + **(v2 + 64));
  v3 = swift_task_alloc();
  v0[2686] = v3;
  *v3 = v0;
  v3[1] = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);

  return v5(v1, v2);
}

{
  swift_unknownObjectRelease();
  v0[2694] = v0[2680];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2328);

  v1 = v0[2662];
  outlined destroy of NSObject?((v0 + 2576), &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);

  return MEMORY[0x2822009F8](closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:), v1, 0);
}

{
  swift_unknownObjectRelease();
  v1 = v0[2685];
  v2 = v0[2682];
  v3 = v0[2681];
  if (v1 >> 60 == 15)
  {
    v4 = 0xC000000000000000;
  }

  else
  {
    v4 = v0[2685];
  }

  if (v1 >> 60 == 15)
  {
    v5 = 0;
  }

  else
  {
    v5 = v0[2684];
  }

  v0[2694] = v0[2687];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2328);

  outlined consume of Data._Representation(v3, v2);
  outlined consume of Data._Representation(v5, v4);
  v6 = v0[2662];
  outlined destroy of NSObject?((v0 + 2576), &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);

  return MEMORY[0x2822009F8](closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:), v6, 0);
}

{
  v16 = *(v0 + 21536);
  v17 = *(v0 + 21544);
  v1 = *(v0 + 21512);
  v2 = *(v0 + 21504);
  v3 = *(v0 + 21480);
  v4 = *(v0 + 21456);
  v5 = *(v0 + 21448);
  v6 = *(v0 + 21424);
  v7 = *(v0 + 21408);
  v18 = *(v0 + 21296);
  v8 = *(v0 + 20792);
  v13 = v8;
  v9 = *(v0 + 20784);
  v14 = v9;
  v15 = *(v0 + 21472);
  swift_unknownObjectRelease();
  *(v0 + 15264) = v9;
  *(v0 + 15272) = v8;
  if (v2 >> 60 == 15)
  {
    v2 = 0xC000000000000000;
    v10 = 0;
  }

  else
  {
    v10 = v1;
  }

  if (v3 >> 60 == 15)
  {
    v3 = 0xC000000000000000;
    v11 = 0;
  }

  else
  {
    v11 = v15;
  }

  if ((v7 & 0x100000000) != 0)
  {
    v7 = 1;
  }

  else
  {
    v7 = v7;
  }

  *(v0 + 15280) = v7;
  *(v0 + 15288) = v7;
  *(v0 + 15296) = v6;
  *(v0 + 15304) = v5;
  *(v0 + 15312) = v4;
  *(v0 + 15320) = v11;
  *(v0 + 15328) = v3;
  *(v0 + 15336) = v10;
  *(v0 + 15344) = v2;
  *(v0 + 15352) = v17;
  *(v0 + 15360) = v16;
  outlined init with copy of MLS.Group(v0 + 15264, v0 + 15160);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 18624));
  *(v0 + 14952) = v14;
  *(v0 + 14960) = v13;
  *(v0 + 14968) = v7;
  *(v0 + 14976) = v7;
  *(v0 + 14984) = v6;
  *(v0 + 14992) = v5;
  *(v0 + 15000) = v4;
  *(v0 + 15008) = v11;
  *(v0 + 15016) = v3;
  *(v0 + 15024) = v10;
  *(v0 + 15032) = v2;
  *(v0 + 15040) = v17;
  *(v0 + 15048) = v16;
  outlined destroy of MLS.Group(v0 + 14952);

  return MEMORY[0x2822009F8](closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:), v18, 0);
}

{
  v1 = *(v0 + 20760);
  v2 = *(v1 + 96);
  v3 = *(v0 + 16936);
  *(v0 + 15816) = *(v0 + 16920);
  *(v0 + 15832) = v3;
  v4 = *(v0 + 16968);
  *(v0 + 15848) = *(v0 + 16952);
  *(v0 + 15864) = v4;
  v5 = *(v0 + 16904);
  *(v0 + 15784) = *(v0 + 16888);
  *(v0 + 15800) = v5;
  *(v0 + 15880) = 9;
  v6 = *(v0 + 15264);
  v7 = *(v0 + 15280);
  *(v0 + 13008) = *(v0 + 15296);
  *(v0 + 12992) = v7;
  *(v0 + 12976) = v6;
  v8 = *(v0 + 15312);
  v9 = *(v0 + 15328);
  v10 = *(v0 + 15344);
  *(v0 + 13072) = *(v0 + 15360);
  *(v0 + 13056) = v10;
  *(v0 + 13040) = v9;
  *(v0 + 13024) = v8;
  v11 = (v1 + direct field offset for MLS.SwiftMLSClientCoordinator.selfMember);
  if (*(v0 + 19464) == *v11 && *(v0 + 19472) == v11[1])
  {
    v12 = 1;
  }

  else
  {
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v15 = (*(*v2 + 384) + **(*v2 + 384));
  v13 = swift_task_alloc();
  *(v0 + 21560) = v13;
  *v13 = v0;
  v13[1] = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);

  return v15(v0 + 15784, v0 + 12976, 1, v12 & 1);
}

{
  swift_unknownObjectRelease();

  v1 = v0[2688];
  v2 = v0[2685];
  v3 = v0[2682];
  v4 = v0[2681];
  if (v1 >> 60 == 15)
  {
    v5 = 0xC000000000000000;
  }

  else
  {
    v5 = v0[2688];
  }

  if (v1 >> 60 == 15)
  {
    v6 = 0;
  }

  else
  {
    v6 = v0[2689];
  }

  if (v2 >> 60 == 15)
  {
    v7 = 0xC000000000000000;
  }

  else
  {
    v7 = v0[2685];
  }

  if (v2 >> 60 == 15)
  {
    v8 = 0;
  }

  else
  {
    v8 = v0[2684];
  }

  v0[2694] = v0[2691];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2328);

  outlined consume of Data._Representation(v4, v3);
  outlined consume of Data._Representation(v8, v7);
  outlined consume of Data._Representation(v6, v5);
  v9 = v0[2662];
  outlined destroy of NSObject?((v0 + 2576), &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);

  return MEMORY[0x2822009F8](closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:), v9, 0);
}

{
  v1 = v0[2661];
  v2 = v0[2658];
  v3 = v0[2657];
  outlined destroy of NSObject?((v0 + 2259), &_s15SecureMessaging3MLSO28IncomingInternalStateUpdatedVy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO28IncomingInternalStateUpdatedVy_AC9AllMemberO10Foundation4DataVGMR);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

{
  v2 = *v1;
  *(*v1 + 21568) = v0;

  if (v0)
  {
    v3 = *(v2 + 21296);
    outlined destroy of NSObject?(v2 + 20608, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
    v4 = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
    v5 = v3;
  }

  else
  {
    v5 = *(v2 + 21296);
    v4 = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
  }

  return MEMORY[0x2822009F8](v4, v5, 0);
}

{
  v26 = v0;
  outlined init with copy of MLS.OutgoingEventState?(*(v0 + 20768), v0 + 8752, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 21312);
    v4 = *(v0 + 21304);
    v24 = *(v0 + 21288);
    v5 = *(v0 + 21264);
    v6 = *(v0 + 21256);
    v7 = *(v0 + 20768);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v25 = v9;
    *v8 = 136315138;

    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v4, v3, &v25);

    *(v8 + 4) = v10;
    outlined destroy of NSObject?(v7, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    _os_log_impl(&dword_264F1F000, v1, v2, "SwiftMLSClientCoordinator processIncoming internal message returning processedContext to caller { identifier: %s }", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x266755550](v9, -1, -1);
    MEMORY[0x266755550](v8, -1, -1);
    outlined destroy of NSObject?(v0 + 18072, &_s15SecureMessaging3MLSO28IncomingInternalStateUpdatedVy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO28IncomingInternalStateUpdatedVy_AC9AllMemberO10Foundation4DataVGMR);

    (*(v5 + 8))(v24, v6);
  }

  else
  {
    v11 = *(v0 + 21288);
    v12 = *(v0 + 21264);
    v13 = *(v0 + 21256);
    outlined destroy of NSObject?(*(v0 + 20768), &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    outlined destroy of NSObject?(v0 + 18072, &_s15SecureMessaging3MLSO28IncomingInternalStateUpdatedVy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO28IncomingInternalStateUpdatedVy_AC9AllMemberO10Foundation4DataVGMR);

    (*(v12 + 8))(v11, v13);
  }

  v14 = *(v0 + 20800);
  v15 = *(v0 + 20744);
  swift_beginAccess();
  v16 = *(v14 + 16);
  *v15 = *(v0 + 20608);
  v17 = *(v0 + 15360);
  v18 = *(v0 + 15312);
  v19 = *(v0 + 15344);
  *(v15 + 80) = *(v0 + 15328);
  *(v15 + 96) = v19;
  *(v15 + 64) = v18;
  v20 = *(v0 + 15296);
  v21 = *(v0 + 15264);
  *(v15 + 32) = *(v0 + 15280);
  *(v15 + 48) = v20;
  *(v15 + 16) = v21;
  *(v15 + 112) = v17;
  *(v15 + 120) = v16;

  v22 = *(v0 + 8);

  return v22();
}

{
  v93 = v0;
  v1 = *(v0 + 21656);
  outlined copy of Data._Representation(**(v0 + 20752), *(*(v0 + 20752) + 8));
  MLS.Group.Message.init(fromRaw:)();
  if (v1)
  {
    *(v0 + 22584) = v1;
    *(v0 + 20688) = v1;
    v2 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    if (swift_dynamicCast())
    {
      v3 = (*(*(v0 + 20832) + 88))(*(v0 + 20840), *(v0 + 20824));
      v4 = *(v0 + 20840);
      v5 = *(v0 + 20832);
      v6 = *(v0 + 20824);
      if (v3 == *MEMORY[0x277D6AD10])
      {
        v82 = *(v0 + 21312);
        v81 = *(v0 + 21304);
        v7 = *(v0 + 20816);
        v8 = *(v0 + 20768);
        v9 = *(v0 + 20760);
        v10 = *(v0 + 20752);
        (*(v5 + 96))(v4, v6);
        v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8SwiftMLS0B0O5GroupO6MemberVSg9committer_AH8proposertMd, &_s8SwiftMLS0B0O5GroupO6MemberVSg9committer_AH8proposertMR);
        outlined init with take of MLS.Group.Member?(v4 + *(v11 + 48), v7, &_s8SwiftMLS0B0O5GroupO6MemberVSgMd, &_s8SwiftMLS0B0O5GroupO6MemberVSgMR);
        closure #1 in closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:)(v7, v9, v8, v10, v91);
        v13 = *v91;
        v12 = *&v91[8];
        *(v0 + 22592) = *v91;
        *(v0 + 22600) = v12;
        v14 = *&v91[16];
        *(v0 + 22608) = *&v91[16];
        v15 = v92;
        *(v0 + 15673) = v92;
        *(v0 + 20064) = *(v8 + 16);
        *&v91[7] = *(v8 + 16);
        *(v0 + 17560) = v81;
        *(v0 + 17568) = v82;
        *(v0 + 17576) = v13;
        *(v0 + 17584) = v12;
        *(v0 + 17592) = v14;
        *(v0 + 17600) = v15;
        *(v0 + 17601) = *v91;
        *(v0 + 17616) = *&v91[15];
        v16 = *(v0 + 17576);
        *(v0 + 16792) = *(v0 + 17560);
        *(v0 + 16808) = v16;
        v17 = *(v0 + 17608);
        *(v0 + 16824) = *(v0 + 17592);
        *(v0 + 16840) = v17;
        outlined copy of MLS.AllMember(v13, v12);
        outlined init with copy of MLS.OutgoingEventState?(v8, v0 + 1360, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);

        outlined copy of MLS.AllMember(v13, v12);
        outlined init with copy of MLS.OutgoingEventState?(v0 + 20064, v0 + 20544, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
        outlined init with copy of MLS.OutgoingEventState?(v8, v0 + 1696, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);

        v83 = v13;
        v18 = v13;
        v19 = v12;
        outlined copy of MLS.AllMember(v18, v12);
        outlined init with copy of MLS.OutgoingEventState?(v0 + 20064, v0 + 20528, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
        v20 = Logger.logObject.getter();
        v21 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v20, v21))
        {
          v80 = v21;
          v22 = *(v0 + 21312);
          v23 = *(v0 + 21304);
          v24 = v15;
          v25 = *(v0 + 20768);
          log = v20;
          v26 = *(v0 + 20760);
          v27 = swift_slowAlloc();
          v79 = swift_slowAlloc();
          v89[0] = v79;
          *v27 = 136315650;

          v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v22, v89);

          *(v27 + 4) = v28;
          outlined destroy of NSObject?(v25, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
          outlined destroy of NSObject?(v25, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
          *(v27 + 12) = 2080;
          *v91 = v83;
          *&v91[8] = v19;
          *&v91[16] = v14;
          v92 = v24;
          outlined copy of MLS.AllMember(v83, v19);
          v29 = MLS.AllMember.description.getter();
          v31 = v30;
          outlined consume of MLS.AllMember(*v91, *&v91[8]);
          v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v31, v89);

          *(v27 + 14) = v32;
          outlined consume of MLS.AllMember(v83, v19);
          v15 = v24;
          outlined consume of MLS.AllMember(v83, v19);
          *(v27 + 22) = 2080;
          v33 = *(v26 + direct field offset for MLS.SwiftMLSClientCoordinator.selfMember + 8);
          v34 = *(v26 + direct field offset for MLS.SwiftMLSClientCoordinator.selfMember + 16);
          v35 = *(v26 + direct field offset for MLS.SwiftMLSClientCoordinator.selfMember + 24);
          *v91 = *(v26 + direct field offset for MLS.SwiftMLSClientCoordinator.selfMember);
          *&v91[8] = v33;
          *&v91[16] = v34;
          v92 = v35;
          outlined copy of MLS.AllMember(*v91, v33);
          v36 = MLS.AllMember.description.getter();
          v38 = v37;
          outlined consume of MLS.AllMember(*v91, *&v91[8]);
          v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v38, v89);

          *(v27 + 24) = v39;

          _os_log_impl(&dword_264F1F000, log, v80, "SwiftMLSClientCoordinator processIncoming received removedFromGroup error. Delivering self kicked event { identifier: %s, sender: %s, selfMember: %s }", v27, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x266755550](v79, -1, -1);
          MEMORY[0x266755550](v27, -1, -1);
        }

        else
        {
          v59 = *(v0 + 20768);

          outlined destroy of NSObject?(v59, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
          outlined destroy of NSObject?(v59, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
          outlined consume of MLS.AllMember(v83, v12);
          outlined consume of MLS.AllMember(v83, v12);
        }

        v60 = *(v0 + 21664);
        v61 = *(v0 + 20792);
        v62 = *(v0 + 20760);
        if ((v60 & 0x100000000) != 0)
        {
          v60 = 1;
        }

        else
        {
          v60 = v60;
        }

        v63 = *(v0 + 21640) + 1;
        *(v0 + 14536) = *(v0 + 20784);
        *(v0 + 14544) = v61;
        *(v0 + 14552) = v60;
        *(v0 + 14560) = v60;
        *(v0 + 14568) = v63;
        *(v0 + 14576) = xmmword_2651B68A0;
        *(v0 + 14592) = xmmword_2651B68A0;
        *(v0 + 14608) = xmmword_2651B68A0;
        *(v0 + 14624) = xmmword_2651B5F50;
        v64 = *(v62 + 96);
        v65 = *(v0 + 16840);
        *(v0 + 15920) = *(v0 + 16824);
        *(v0 + 15936) = v65;
        v66 = *(v0 + 16872);
        *(v0 + 15952) = *(v0 + 16856);
        *(v0 + 15968) = v66;
        v67 = *(v0 + 16808);
        *(v0 + 15888) = *(v0 + 16792);
        *(v0 + 15904) = v67;
        v68 = *(v0 + 14584);
        *(v0 + 13424) = *(v0 + 14568);
        *(v0 + 13440) = v68;
        v69 = *(v0 + 14616);
        *(v0 + 13456) = *(v0 + 14600);
        *(v0 + 13472) = v69;
        v70 = *(v0 + 14536);
        *(v0 + 13408) = *(v0 + 14552);
        *(v0 + 15984) = 4;
        *(v0 + 13488) = *(v0 + 14632);
        *(v0 + 13392) = v70;
        v89[0] = v83;
        v89[1] = v19;
        v89[2] = v14;
        v90 = v15;
        v71 = v62 + direct field offset for MLS.SwiftMLSClientCoordinator.selfMember;
        v73 = *(v71 + 8);
        v74 = *(v71 + 16);
        v75 = *(v71 + 24);
        *v91 = *v71;
        v72 = *v91;
        *&v91[8] = v73;
        *&v91[16] = v74;
        v92 = v75;

        outlined copy of MLS.AllMember(v72, v73);
        v76 = specialized static MLS.AllMember.== infix(_:_:)(v89, v91);
        outlined consume of MLS.AllMember(*v91, *&v91[8]);
        v88 = (*(*v64 + 384) + **(*v64 + 384));
        v77 = swift_task_alloc();
        *(v0 + 22616) = v77;
        *v77 = v0;
        v77[1] = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);

        return v88(v0 + 15888, v0 + 13392, 1, v76);
      }

      (*(*(v0 + 21264) + 8))(*(v0 + 21288), *(v0 + 21256));
      (*(v5 + 8))(v4, v6);
    }

    else
    {
      (*(*(v0 + 21264) + 8))(*(v0 + 21288), *(v0 + 21256));
    }

    v54 = *(v0 + 8);

    return v54();
  }

  else
  {
    v40 = *(v0 + 15569);
    v41 = *(v0 + 20776);
    v43 = v41[3];
    v42 = v41[4];
    __swift_project_boxed_opaque_existential_1(v41, v43);
    if (v40 > 1)
    {
      if (v40 == 2)
      {
        v85 = (v42[18] + *v42[18]);
        v49 = swift_task_alloc();
        *(v0 + 21704) = v49;
        *v49 = v0;
        v49[1] = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
        v50 = *(v0 + 21112);
        v51 = v43;
        v52 = v42;
        v53 = v85;
      }

      else
      {
        v87 = (v42[19] + *v42[19]);
        v58 = swift_task_alloc();
        *(v0 + 21728) = v58;
        *v58 = v0;
        v58[1] = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
        v50 = *(v0 + 21112);
        v51 = v43;
        v52 = v42;
        v53 = v87;
      }

      return v53(v50, v51, v52);
    }

    else if (v40)
    {
      v86 = (v42[17] + *v42[17]);
      v55 = swift_task_alloc();
      *(v0 + 21688) = v55;
      *v55 = v0;
      v55[1] = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
      v56 = *(v0 + 21176);
      v57 = *(v0 + 21112);

      return v86(v56, v57, v43, v42);
    }

    else
    {
      (*(*(v0 + 21088) + 56))(*(v0 + 21072), 1, 1, *(v0 + 21080));
      v84 = (v42[16] + *v42[16]);
      v44 = swift_task_alloc();
      *(v0 + 21672) = v44;
      *v44 = v0;
      v44[1] = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
      v45 = *(v0 + 21184);
      v46 = *(v0 + 21112);
      v47 = *(v0 + 21072);

      return v84(v45, v46, v47, v43, v42);
    }
  }
}

{
  v2 = *v1;
  *(*v1 + 21680) = v0;

  v3 = *(v2 + 21296);
  outlined destroy of NSObject?(*(v2 + 21072), &_s8SwiftMLS0B0O5GroupO7MessageVSgMd, &_s8SwiftMLS0B0O5GroupO7MessageVSgMR);
  if (v0)
  {
    v4 = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
  }

  else
  {
    v4 = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{
  v481 = v0;
  v1 = *(v0 + 21184);
  v455 = *(v0 + 21680);
  v2 = *(v0 + 21192);
  v3 = *(v0 + 21168);
  v4 = *(v0 + 21128);
  v5 = *(v0 + 21120);
  v6 = *(v0 + 21112);
  v7 = *(v0 + 21080);
  v8 = *(v0 + 20768);
  v9 = *(*(v0 + 21088) + 8);
  *(v0 + 21752) = v9;
  v9(v6, v7);
  (*(v4 + 32))(v2, v1, v5);
  v474[0] = 7;
  swift_beginAccess();
  MetricCollector.end(metric:)(v474);
  swift_endAccess();
  v10 = *(v4 + 16);
  v10(v3, v2, v5);
  outlined init with copy of MLS.OutgoingEventState?(v8, v0 + 2200, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
  outlined init with copy of MLS.OutgoingEventState?(v8, v0 + 2368, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = *(v0 + 21312);
    v14 = *(v0 + 21304);
    v439 = *(v0 + 21160);
    v446 = *(v0 + 21168);
    v15 = *(v0 + 21128);
    v16 = *(v0 + 21120);
    v17 = *(v0 + 20768);
    v18 = swift_slowAlloc();
    v462 = swift_slowAlloc();
    *v474 = v462;
    *v18 = 136315394;

    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v13, v474);

    *(v18 + 4) = v19;
    outlined destroy of NSObject?(v17, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    outlined destroy of NSObject?(v17, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    *(v18 + 12) = 2080;
    v10(v439, v446, v16);
    v20 = String.init<A>(describing:)();
    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, v474);

    *(v18 + 14) = v22;
    v23 = *(v15 + 8);
    v23(v446, v16);
    _os_log_impl(&dword_264F1F000, v11, v12, "SwiftMLSClientCoordinator processIncoming processed message { identifier: %s, message: %s }", v18, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v462, -1, -1);
    MEMORY[0x266755550](v18, -1, -1);
  }

  else
  {
    v24 = *(v0 + 21168);
    v25 = *(v0 + 21128);
    v26 = *(v0 + 21120);
    v27 = *(v0 + 20768);

    outlined destroy of NSObject?(v27, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    outlined destroy of NSObject?(v27, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    v23 = *(v25 + 8);
    v23(v24, v26);
  }

  *(v0 + 21760) = v23;
  v28 = *(v0 + 21152);
  v29 = *(v0 + 21128);
  v30 = *(v0 + 21120);
  v10(v28, *(v0 + 21192), v30);
  v31 = (*(v29 + 88))(v28, v30);
  if (v31 == *MEMORY[0x277D6AAA8])
  {
    v32 = *(v0 + 21152);
    v33 = *(v0 + 20768);
    (*(*(v0 + 21128) + 96))(v32, *(v0 + 21120));
    v34 = (v32 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8SwiftMLS0B0O8IdentityO07SigningC0VSg6sender_10Foundation4DataV4datatMd, &_s8SwiftMLS0B0O8IdentityO07SigningC0VSg6sender_10Foundation4DataV4datatMR) + 48));
    v35 = *v34;
    *(v0 + 21768) = *v34;
    v36 = v34[1];
    *(v0 + 21776) = v36;
    v37 = *(v0 + 20768);
    if (*(v33 + 104) >> 60 == 15)
    {
      v38 = *(v0 + 20800);
      v39 = *(v0 + 20752);
      v41 = v39[1];
      v40 = v39[2];
      v42 = *v39;
      *(v0 + 18498) = *(v39 + 42);
      *(v0 + 18472) = v41;
      *(v0 + 18488) = v40;
      *(v0 + 18456) = v42;
      swift_beginAccess();
      *(v0 + 20712) = *(v38 + 16);
      v43 = *v37;
      v44 = *(v37 + 16);
      *(v0 + 9792) = *(v37 + 32);
      *(v0 + 9776) = v44;
      *(v0 + 9760) = v43;
      v45 = *(v37 + 48);
      v46 = *(v37 + 64);
      v47 = *(v37 + 80);
      *(v0 + 9856) = *(v37 + 96);
      *(v0 + 9840) = v47;
      *(v0 + 9824) = v46;
      *(v0 + 9808) = v45;
      v48 = *(v37 + 112);
      v49 = *(v37 + 128);
      v50 = *(v37 + 144);
      *(v0 + 9920) = *(v37 + 160);
      *(v0 + 9904) = v50;
      *(v0 + 9888) = v49;
      *(v0 + 9872) = v48;

      v51 = swift_task_alloc();
      *(v0 + 21784) = v51;
      *v51 = v0;
      v51[1] = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
      v52 = *(v0 + 21312);
      v53 = *(v0 + 21304);
      v54 = *(v0 + 20792);
      v55 = *(v0 + 20784);
      v56 = *(v0 + 20776);
      v57 = *(v0 + 20744);
      v484 = v0 + 20712;
      v485 = v0 + 9760;
      v483 = v56;
      v58 = v0 + 18456;
      v59 = v35;
      v60 = v36;
LABEL_68:

      return MLS.SwiftMLSClientCoordinator.handleIncomingApplicationMessage(eventIdentifier:message:applicationMessageData:group:swiftMLSGroup:metricCollector:context:)(v57, v53, v52, v58, v59, v60, v55, v54);
    }

    v447 = v36;
    v456 = v35;
    v10(*(v0 + 21144), *(v0 + 21192), *(v0 + 21120));
    outlined init with copy of MLS.OutgoingEventState?(v37, v0 + 10264, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    outlined init with copy of MLS.OutgoingEventState?(v37, v0 + 10600, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    v69 = Logger.logObject.getter();
    v70 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v69, v70))
    {
      v71 = *(v0 + 21312);
      v72 = *(v0 + 21304);
      v463 = v23;
      v73 = *(v0 + 21160);
      v74 = *(v0 + 21144);
      v427 = *(v0 + 21120);
      v75 = *(v0 + 20768);
      v76 = swift_slowAlloc();
      v440 = swift_slowAlloc();
      *v474 = v440;
      *v76 = 136315394;

      v77 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v72, v71, v474);

      *(v76 + 4) = v77;
      outlined destroy of NSObject?(v75, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
      outlined destroy of NSObject?(v75, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
      *(v76 + 12) = 2080;
      v10(v73, v74, v427);
      v23 = v463;
      v78 = String.init<A>(describing:)();
      v80 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v78, v79, v474);

      *(v76 + 14) = v80;
      v463(v74, v427);
      _os_log_impl(&dword_264F1F000, v69, v70, "SwiftMLSClientCoordinator processIncoming processed message had no AAD { identifier: %s, message: %s }", v76, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266755550](v440, -1, -1);
      MEMORY[0x266755550](v76, -1, -1);
    }

    else
    {
      v105 = *(v0 + 21144);
      v106 = *(v0 + 21120);
      v107 = *(v0 + 20768);

      outlined destroy of NSObject?(v107, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
      outlined destroy of NSObject?(v107, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
      v23(v105, v106);
    }

    v108 = *(v0 + 21288);
    v109 = *(v0 + 21264);
    v110 = *(v0 + 21256);
    v111 = *(v0 + 21192);
    v112 = *(v0 + 21152);
    v113 = *(v0 + 21120);
    lazy protocol witness table accessor for type MLS.IncomingMessageError and conformance MLS.IncomingMessageError();
    swift_allocError();
    *v114 = 14;
    *(v114 + 8) = 0;
    *(v114 + 16) = 0;
    swift_willThrow();
    outlined consume of Data._Representation(v456, v447);
    v23(v111, v113);
    (*(v109 + 8))(v108, v110);
    outlined destroy of NSObject?(v112, &_s8SwiftMLS0B0O8IdentityO07SigningC0VSgMd, &_s8SwiftMLS0B0O8IdentityO07SigningC0VSgMR);
    goto LABEL_114;
  }

  if (v31 == *MEMORY[0x277D6AAB0])
  {
    v61 = *(v0 + 21152);
    v62 = *(v0 + 21048);
    v63 = *(v0 + 21024);
    v64 = *(v0 + 21016);
    (*(*(v0 + 21128) + 96))(v61, *(v0 + 21120));
    (*(v63 + 32))(v62, v61, v64);
    v65 = MLS.Group.IncomingApplicationMessageDetails.messageID.getter();
    v67 = v66 >> 62;
    if ((v66 >> 62) > 1)
    {
      if (v67 != 2)
      {
        outlined consume of Data._Representation(v65, v66);
        goto LABEL_39;
      }

      v100 = *(v65 + 16);
      v101 = *(v65 + 24);
      v102 = outlined consume of Data._Representation(v65, v66);
      if (!__OFSUB__(v101, v100))
      {
        if (v101 != v100)
        {
          goto LABEL_52;
        }

LABEL_39:
        v136 = MLS.Group.IncomingApplicationMessageDetails.originalMessageID.getter();
        v138 = v137 >> 62;
        if ((v137 >> 62) <= 1)
        {
          if (!v138)
          {
            v139 = BYTE6(v137);
            outlined consume of Data._Representation(v136, v137);
            if (!v139)
            {
              goto LABEL_67;
            }

            goto LABEL_52;
          }

          v151 = HIDWORD(v136);
          v152 = v136;
          v102 = outlined consume of Data._Representation(v136, v137);
          if (!__OFSUB__(v151, v152))
          {
            if (v151 == v152)
            {
              goto LABEL_67;
            }

            goto LABEL_52;
          }

          goto LABEL_120;
        }

        if (v138 != 2)
        {
          outlined consume of Data._Representation(v136, v137);
          goto LABEL_67;
        }

        v140 = *(v136 + 16);
        v141 = *(v136 + 24);
        v102 = outlined consume of Data._Representation(v136, v137);
        if (!__OFSUB__(v141, v140))
        {
          if (v141 == v140)
          {
            goto LABEL_67;
          }

          goto LABEL_52;
        }

LABEL_119:
        __break(1u);
LABEL_120:
        __break(1u);
        return MEMORY[0x2822009F8](v102, v103, v104);
      }

      __break(1u);
    }

    else
    {
      if (!v67)
      {
        v68 = BYTE6(v66);
        outlined consume of Data._Representation(v65, v66);
        if (!v68)
        {
          goto LABEL_39;
        }

LABEL_52:
        v153 = *(v0 + 20768);
        v154 = v153[13];
        if (v154 >> 60 == 15)
        {
          v10(*(v0 + 21136), *(v0 + 21192), *(v0 + 21120));
          outlined init with copy of MLS.OutgoingEventState?(v153, v0 + 4720, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
          outlined init with copy of MLS.OutgoingEventState?(v153, v0 + 4888, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
          v155 = Logger.logObject.getter();
          v156 = static os_log_type_t.default.getter();
          v465 = v23;
          if (os_log_type_enabled(v155, v156))
          {
            v449 = v10;
            v157 = *(v0 + 21312);
            v158 = *(v0 + 21304);
            v159 = *(v0 + 21160);
            v442 = *(v0 + 21136);
            v160 = *(v0 + 21120);
            v161 = *(v0 + 20768);
            v162 = swift_slowAlloc();
            v163 = swift_slowAlloc();
            *v474 = v163;
            *v162 = 136315394;

            v164 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v158, v157, v474);

            *(v162 + 4) = v164;
            outlined destroy of NSObject?(v161, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
            outlined destroy of NSObject?(v161, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
            *(v162 + 12) = 2080;
            v449(v159, v442, v160);
            v165 = String.init<A>(describing:)();
            v167 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v165, v166, v474);

            *(v162 + 14) = v167;
            v465(v442, v160);
            _os_log_impl(&dword_264F1F000, v155, v156, "SwiftMLSClientCoordinator processIncoming processed message had unexpected AAD { identifier: %s, message: %s }", v162, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x266755550](v163, -1, -1);
            MEMORY[0x266755550](v162, -1, -1);
          }

          else
          {
            v183 = *(v0 + 21136);
            v184 = *(v0 + 21120);
            v185 = *(v0 + 20768);

            outlined destroy of NSObject?(v185, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
            outlined destroy of NSObject?(v185, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
            v23(v183, v184);
          }

          v458 = *(v0 + 21288);
          v186 = *(v0 + 21264);
          v187 = *(v0 + 21256);
          v188 = *(v0 + 21192);
          v189 = *(v0 + 21120);
          v190 = *(v0 + 21048);
          v191 = *(v0 + 21024);
          v192 = *(v0 + 21016);
          lazy protocol witness table accessor for type MLS.IncomingMessageError and conformance MLS.IncomingMessageError();
          swift_allocError();
          *v193 = 15;
          *(v193 + 8) = 0;
          *(v193 + 16) = 0;
          swift_willThrow();
          (*(v191 + 8))(v190, v192);
          v465(v188, v189);
          (*(v186 + 8))(v458, v187);
          goto LABEL_114;
        }

        v168 = v153[12];
        v169 = v153[14];
        v170 = v153[15];
        v172 = v153[16];
        v171 = v153[17];
        outlined copy of MLS.AdditionalAuthenticatedData?(v168, v154, v169, v170, v172, v171);
        outlined copy of Data._Representation(v168, v154);
        v457 = v171;
        outlined copy of Data?(v172, v171);
        v173 = MLS.Group.IncomingApplicationMessageDetails.messageID.getter();
        v175 = v174;
        v176 = specialized static Data.== infix(_:_:)(v168, v154, v173, v174);
        outlined consume of Data._Representation(v173, v175);
        if (!v176)
        {
          v466 = v23;
          v194 = *(v0 + 20768);
          (*(*(v0 + 21024) + 16))(*(v0 + 21040), *(v0 + 21048), *(v0 + 21016));
          outlined init with copy of MLS.OutgoingEventState?(v194, v0 + 5392, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
          outlined copy of MLS.AdditionalAuthenticatedData?(v168, v154, v169, v170, v172, v457);
          outlined init with copy of MLS.OutgoingEventState?(v194, v0 + 5560, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
          v429 = v154;
          v443 = v170;
          v451 = v169;
          v435 = v172;
          outlined copy of MLS.AdditionalAuthenticatedData?(v168, v154, v169, v170, v172, v457);
          v195 = Logger.logObject.getter();
          v196 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v195, v196))
          {
            v470 = v196;
            v197 = *(v0 + 21312);
            v198 = *(v0 + 21304);
            v407 = *(v0 + 21040);
            v417 = *(v0 + 21024);
            v423 = *(v0 + 21016);
            v199 = *(v0 + 20768);
            v200 = swift_slowAlloc();
            v411 = swift_slowAlloc();
            *v474 = v411;
            *v200 = 136315650;

            v201 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v198, v197, v474);

            *(v200 + 4) = v201;
            outlined destroy of NSObject?(v199, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
            outlined destroy of NSObject?(v199, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
            log = v195;
            *(v200 + 12) = 2080;
            outlined copy of Data._Representation(v168, v429);
            v202 = Data.description.getter();
            v204 = v203;
            outlined consume of Data._Representation(v168, v429);
            v205 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v202, v204, v474);

            *(v200 + 14) = v205;
            v206 = v457;
            outlined consume of MLS.AdditionalAuthenticatedData?(v168, v429, v169, v170, v435, v457);
            outlined consume of MLS.AdditionalAuthenticatedData?(v168, v429, v169, v170, v435, v457);
            *(v200 + 22) = 2080;
            v207 = MLS.Group.IncomingApplicationMessageDetails.messageID.getter();
            v209 = v208;
            v210 = Data.description.getter();
            v212 = v211;
            outlined consume of Data._Representation(v207, v209);
            v213 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v210, v212, v474);

            *(v200 + 24) = v213;
            v214 = v423;
            v424 = *(v417 + 8);
            v424(v407, v214);
            _os_log_impl(&dword_264F1F000, log, v470, "SwiftMLSClientCoordinator processIncoming processed message had mismatched AAD messageID { identifier: %s, clientMessageID: %s, messageID: %s }", v200, 0x20u);
            swift_arrayDestroy();
            MEMORY[0x266755550](v411, -1, -1);
            MEMORY[0x266755550](v200, -1, -1);
          }

          else
          {
            v260 = *(v0 + 21040);
            v261 = *(v0 + 21024);
            v262 = *(v0 + 21016);
            v263 = *(v0 + 20768);

            outlined destroy of NSObject?(v263, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
            outlined destroy of NSObject?(v263, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
            v206 = v457;
            outlined consume of MLS.AdditionalAuthenticatedData?(v168, v429, v451, v170, v435, v457);
            outlined consume of MLS.AdditionalAuthenticatedData?(v168, v429, v451, v170, v435, v457);
            v424 = *(v261 + 8);
            v424(v260, v262);
          }

          v264 = *(v0 + 21264);
          v408 = *(v0 + 21256);
          v412 = *(v0 + 21288);
          v401 = *(v0 + 21120);
          loga = *(v0 + 21192);
          v265 = *(v0 + 21048);
          v266 = *(v0 + 21016);
          lazy protocol witness table accessor for type MLS.IncomingMessageError and conformance MLS.IncomingMessageError();
          swift_allocError();
          *v267 = 16;
          *(v267 + 8) = 0;
          *(v267 + 16) = 0;
          swift_willThrow();
          outlined consume of MLS.AdditionalAuthenticatedData?(v168, v429, v451, v443, v435, v206);
          outlined consume of MLS.AdditionalAuthenticatedData?(v168, v429, v451, v443, v435, v206);
          v424(v265, v266);
          v466(loga, v401);
          (*(v264 + 8))(v412, v408);
          goto LABEL_114;
        }

        v422 = v168;
        v177 = v457;
        if (v457 >> 60 != 15)
        {
          v450 = v169;
          outlined copy of Data._Representation(v172, v457);
          v178 = MLS.Group.IncomingApplicationMessageDetails.originalMessageID.getter();
          v180 = v179;
          v181 = specialized static Data.== infix(_:_:)(v172, v457, v178, v179);
          outlined consume of Data._Representation(v178, v180);
          if (!v181)
          {
            v430 = v154;
            v467 = v23;
            v292 = *(v0 + 20768);
            (*(*(v0 + 21024) + 16))(*(v0 + 21032), *(v0 + 21048), *(v0 + 21016));
            outlined init with copy of MLS.OutgoingEventState?(v292, v0 + 520, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
            outlined copy of Data?(v172, v457);
            outlined init with copy of MLS.OutgoingEventState?(v292, v0 + 9256, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
            outlined copy of Data?(v172, v457);
            v293 = Logger.logObject.getter();
            v294 = static os_log_type_t.error.getter();
            v295 = v172;
            v436 = v172;
            if (os_log_type_enabled(v293, v294))
            {
              v296 = *(v0 + 21312);
              v297 = *(v0 + 21304);
              v298 = *(v0 + 21032);
              v413 = *(v0 + 21024);
              v418 = *(v0 + 21016);
              v299 = *(v0 + 20768);
              v300 = swift_slowAlloc();
              v473 = swift_slowAlloc();
              *v474 = v473;
              *v300 = 136315650;

              v301 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v297, v296, v474);

              *(v300 + 4) = v301;
              outlined destroy of NSObject?(v299, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
              outlined destroy of NSObject?(v299, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
              v409 = v294;
              *(v300 + 12) = 2080;
              outlined copy of Data._Representation(v295, v457);
              v302 = Data.description.getter();
              v304 = v303;
              outlined consume of Data?(v295, v457);
              v305 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v302, v304, v474);

              *(v300 + 14) = v305;
              outlined consume of Data?(v295, v457);
              outlined consume of Data?(v295, v457);
              *(v300 + 22) = 2080;
              v306 = MLS.Group.IncomingApplicationMessageDetails.originalMessageID.getter();
              v308 = v307;
              v309 = Data.description.getter();
              v311 = v310;
              outlined consume of Data._Representation(v306, v308);
              v312 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v309, v311, v474);

              *(v300 + 24) = v312;
              v313 = v418;
              v419 = *(v413 + 8);
              v419(v298, v313);
              _os_log_impl(&dword_264F1F000, v293, v409, "SwiftMLSClientCoordinator processIncoming processed message had mismatched AAD originalMessageID { identifier: %s, clientOriginalMessageID: %s, originalMessageID: %s }", v300, 0x20u);
              swift_arrayDestroy();
              MEMORY[0x266755550](v473, -1, -1);
              MEMORY[0x266755550](v300, -1, -1);
            }

            else
            {
              v387 = *(v0 + 21032);
              v388 = *(v0 + 21024);
              v389 = *(v0 + 21016);
              v390 = *(v0 + 20768);

              outlined destroy of NSObject?(v390, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
              outlined destroy of NSObject?(v390, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
              outlined consume of Data?(v172, v457);
              outlined consume of Data?(v172, v457);
              v419 = *(v388 + 8);
              v419(v387, v389);
            }

            v391 = *(v0 + 21264);
            v410 = *(v0 + 21256);
            v415 = *(v0 + 21288);
            v402 = *(v0 + 21120);
            logb = *(v0 + 21192);
            v400 = *(v0 + 21048);
            v392 = *(v0 + 21016);
            lazy protocol witness table accessor for type MLS.IncomingMessageError and conformance MLS.IncomingMessageError();
            swift_allocError();
            *v393 = 16;
            *(v393 + 8) = 0;
            *(v393 + 16) = 0;
            swift_willThrow();
            outlined consume of Data?(v436, v457);
            outlined consume of MLS.AdditionalAuthenticatedData?(v422, v430, v450, v170, v436, v457);
            outlined consume of MLS.AdditionalAuthenticatedData?(v422, v430, v450, v170, v436, v457);
            v419(v400, v392);
            v467(logb, v402);
            (*(v391 + 8))(v415, v410);
            goto LABEL_114;
          }

          outlined consume of Data?(v172, v457);
          v169 = v450;
        }

        v182 = MLS.Group.IncomingApplicationMessageDetails.era.getter();
        if ((v182 & 0x100000000) == 0 && v169 != v182)
        {
          v468 = v23;
          v432 = v182;
          v359 = *(v0 + 20768);
          outlined init with copy of MLS.OutgoingEventState?(v359, v0 + 6736, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
          outlined init with copy of MLS.OutgoingEventState?(v359, v0 + 6904, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
          v445 = v170;
          v454 = v169;
          outlined copy of MLS.AdditionalAuthenticatedData?(v422, v154, v169, v170, v172, v457);
          v360 = Logger.logObject.getter();
          v361 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v360, v361))
          {
            v362 = *(v0 + 21312);
            v438 = v172;
            v363 = *(v0 + 21304);
            v364 = *(v0 + 20768);
            v365 = swift_slowAlloc();
            v366 = swift_slowAlloc();
            *v474 = v366;
            *v365 = 136315650;

            v367 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v363, v362, v474);

            *(v365 + 4) = v367;
            outlined destroy of NSObject?(v364, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
            outlined destroy of NSObject?(v364, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
            v368 = v154;
            *(v365 + 12) = 1024;
            *(v365 + 14) = v454;
            v369 = v422;
            v370 = v438;
            v177 = v457;
            outlined consume of MLS.AdditionalAuthenticatedData?(v422, v154, v454, v445, v438, v457);
            *(v365 + 18) = 1024;
            *(v365 + 20) = v432;
            _os_log_impl(&dword_264F1F000, v360, v361, "SwiftMLSClientCoordinator processIncoming processed message had mismatched AAD era { identifier: %s, clientEra: %u, era: %u }", v365, 0x18u);
            __swift_destroy_boxed_opaque_existential_1Tm(v366);
            MEMORY[0x266755550](v366, -1, -1);
            MEMORY[0x266755550](v365, -1, -1);
          }

          else
          {
            v394 = *(v0 + 20768);

            outlined destroy of NSObject?(v394, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
            outlined destroy of NSObject?(v394, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
            outlined consume of MLS.AdditionalAuthenticatedData?(v422, v154, v169, v170, v172, v457);
            v370 = v172;
            v368 = v154;
            v369 = v422;
          }

          v395 = *(v0 + 21264);
          v426 = *(v0 + 21256);
          v433 = *(v0 + 21288);
          v416 = *(v0 + 21120);
          v421 = *(v0 + 21192);
          logc = *(v0 + 21048);
          v396 = *(v0 + 21024);
          v397 = *(v0 + 21016);
          lazy protocol witness table accessor for type MLS.IncomingMessageError and conformance MLS.IncomingMessageError();
          swift_allocError();
          *v398 = 16;
          *(v398 + 8) = 0;
          *(v398 + 16) = 0;
          swift_willThrow();
          outlined consume of MLS.AdditionalAuthenticatedData?(v369, v368, v454, v445, v370, v177);
          outlined consume of MLS.AdditionalAuthenticatedData?(v369, v368, v454, v445, v370, v177);
          (*(v396 + 8))(logc, v397);
          v468(v421, v416);
          (*(v395 + 8))(v433, v426);
          goto LABEL_114;
        }

        outlined consume of MLS.AdditionalAuthenticatedData?(v422, v154, v169, v170, v172, v457);
        outlined consume of MLS.AdditionalAuthenticatedData?(v422, v154, v169, v170, v172, v457);
LABEL_67:
        v215 = *(v0 + 20800);
        v216 = *(v0 + 20768);
        v217 = *(v0 + 20752);
        v219 = v217[1];
        v218 = v217[2];
        v220 = *v217;
        *(v0 + 18562) = *(v217 + 42);
        *(v0 + 18536) = v219;
        *(v0 + 18552) = v218;
        *(v0 + 18520) = v220;
        v221 = MLS.Group.IncomingApplicationMessageDetails.data.getter();
        v223 = v222;
        *(v0 + 21800) = v221;
        *(v0 + 21808) = v222;
        swift_beginAccess();
        *(v0 + 20720) = *(v215 + 16);
        v224 = *v216;
        v225 = v216[1];
        *(v0 + 6432) = v216[2];
        *(v0 + 6416) = v225;
        *(v0 + 6400) = v224;
        v226 = v216[3];
        v227 = v216[4];
        v228 = v216[5];
        *(v0 + 6496) = v216[6];
        *(v0 + 6480) = v228;
        *(v0 + 6464) = v227;
        *(v0 + 6448) = v226;
        v229 = v216[7];
        v230 = v216[8];
        v231 = v216[9];
        *(v0 + 6560) = *(v216 + 20);
        *(v0 + 6544) = v231;
        *(v0 + 6528) = v230;
        *(v0 + 6512) = v229;

        v232 = swift_task_alloc();
        *(v0 + 21816) = v232;
        *v232 = v0;
        v232[1] = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
        v52 = *(v0 + 21312);
        v53 = *(v0 + 21304);
        v54 = *(v0 + 20792);
        v55 = *(v0 + 20784);
        v233 = *(v0 + 20776);
        v57 = *(v0 + 20744);
        v484 = v0 + 20720;
        v485 = v0 + 6400;
        v483 = v233;
        v58 = v0 + 18520;
        v59 = v221;
        v60 = v223;
        goto LABEL_68;
      }

      v134 = HIDWORD(v65);
      v135 = v65;
      v102 = outlined consume of Data._Representation(v65, v66);
      if (!__OFSUB__(v134, v135))
      {
        if (v134 != v135)
        {
          goto LABEL_52;
        }

        goto LABEL_39;
      }
    }

    __break(1u);
    goto LABEL_119;
  }

  if (v31 == *MEMORY[0x277D6AAC0])
  {
    v464 = v23;
    v81 = *(v0 + 21152);
    v82 = *(v0 + 20864);
    v83 = *(v0 + 20856);
    v84 = *(v0 + 20848);
    v85 = *(v0 + 20768);
    (*(*(v0 + 21128) + 96))(v81, *(v0 + 21120));
    (*(v83 + 32))(v82, v81, v84);
    v87 = v85[3];
    v86 = v85[4];
    v88 = v85[2];
    *(v0 + 18180) = *(v85 + 76);
    *(v0 + 18152) = v87;
    *(v0 + 18168) = v86;
    *(v0 + 18136) = v88;
    v89 = *(v0 + 18152);
    v90 = *(v0 + 18168);
    if (v89 >> 16 == 0xFFFFFFFF && (v90 & 0x3000000000000000) == 0)
    {
      v91 = *(v0 + 20768);
      outlined init with copy of MLS.OutgoingEventState?(v91, v0 + 856, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
      outlined init with copy of MLS.OutgoingEventState?(v91, v0 + 10936, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
      v92 = Logger.logObject.getter();
      v93 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v92, v93))
      {
        v94 = *(v0 + 21312);
        v95 = *(v0 + 21304);
        v96 = *(v0 + 20768);
        v97 = swift_slowAlloc();
        v98 = swift_slowAlloc();
        *v474 = v98;
        *v97 = 136315138;

        v99 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v95, v94, v474);

        *(v97 + 4) = v99;
        outlined destroy of NSObject?(v96, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
        outlined destroy of NSObject?(v96, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
        _os_log_impl(&dword_264F1F000, v92, v93, "SwiftMLSClientCoordinator processIncoming signed message was not given expected data { identifier: %s }", v97, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v98);
        MEMORY[0x266755550](v98, -1, -1);
        MEMORY[0x266755550](v97, -1, -1);
      }

      else
      {
        v251 = *(v0 + 20768);

        outlined destroy of NSObject?(v251, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
        outlined destroy of NSObject?(v251, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
      }

      v252 = *(v0 + 21288);
      v253 = *(v0 + 21264);
      v254 = *(v0 + 21256);
      v255 = *(v0 + 21192);
      v256 = *(v0 + 21120);
      v459 = *(v0 + 20864);
      v257 = *(v0 + 20856);
      v258 = *(v0 + 20848);
      lazy protocol witness table accessor for type MLS.IncomingMessageError and conformance MLS.IncomingMessageError();
      swift_allocError();
      *v259 = 12;
      *(v259 + 8) = 0;
      *(v259 + 16) = 0;
      swift_willThrow();
      v464(v255, v256);
      (*(v253 + 8))(v252, v254);
      (*(v257 + 8))(v459, v258);
      goto LABEL_114;
    }

    v434 = *(v0 + 18192);
    v441 = *(v0 + 18184);
    v448 = *(v0 + 18176);
    v469 = *(v0 + 18160);
    v428 = *(v0 + 18136);
    v127 = v85[3];
    v126 = v85[4];
    v128 = v85[2];
    *(v0 + 18244) = *(v85 + 76);
    *(v0 + 18216) = v127;
    *(v0 + 18232) = v126;
    *(v0 + 18200) = v128;
    outlined init with copy of MLS.OutgoingEventState?(v0 + 18136, v0 + 18264, &_s15SecureMessaging3MLSO12SigningInputVSgMd, &_s15SecureMessaging3MLSO12SigningInputVSgMR);
    outlined init with copy of MLS.OutgoingEventState?(v0 + 18136, v0 + 18328, &_s15SecureMessaging3MLSO12SigningInputVSgMd, &_s15SecureMessaging3MLSO12SigningInputVSgMR);
    outlined init with copy of MLS.SigningInput(v0 + 18200, v0 + 18392);
    v129 = Logger.logObject.getter();
    v130 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v129, v130))
    {
      v131 = swift_slowAlloc();
      v132 = swift_slowAlloc();
      v480 = v132;
      *v131 = 136315138;
      v133 = (v90 >> 60) & 3;
      if (v133)
      {
        *v474 = v89;
        *&v474[8] = v469;
        *&v474[16] = v90 & 0xCFFFFFFFFFFFFFFFLL;
        if (v133 == 1)
        {
          v475 = v448;
          v476 = v441;
          LOWORD(v477) = v434;
          v314 = MLS.EncryptedRCS.DisplayIMDNSigningInput.description.getter();
        }

        else
        {
          v314 = MLS.EncryptedRCS.FileTransferSigningInput.description.getter();
        }
      }

      else
      {
        *v474 = v89;
        *&v474[8] = v469;
        *&v474[16] = v90;
        v475 = v448;
        v476 = v441;
        LODWORD(v477) = v434;
        v314 = MLS.EncryptedRCS.DeliveryIMDNSigningInput.description.getter();
      }

      v316 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v314, v315, &v480);

      *(v131 + 4) = v316;
      outlined destroy of NSObject?(v0 + 18136, &_s15SecureMessaging3MLSO12SigningInputVSgMd, &_s15SecureMessaging3MLSO12SigningInputVSgMR);
      outlined destroy of NSObject?(v0 + 18136, &_s15SecureMessaging3MLSO12SigningInputVSgMd, &_s15SecureMessaging3MLSO12SigningInputVSgMR);
      _os_log_impl(&dword_264F1F000, v129, v130, "SwiftMLSClientCoordinator processIncoming signed data. { expectedSignedData: %s }", v131, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v132);
      MEMORY[0x266755550](v132, -1, -1);
      MEMORY[0x266755550](v131, -1, -1);
    }

    else
    {

      outlined destroy of NSObject?(v0 + 18136, &_s15SecureMessaging3MLSO12SigningInputVSgMd, &_s15SecureMessaging3MLSO12SigningInputVSgMR);
      outlined destroy of NSObject?(v0 + 18136, &_s15SecureMessaging3MLSO12SigningInputVSgMd, &_s15SecureMessaging3MLSO12SigningInputVSgMR);
    }

    v317 = *(v0 + 20768);
    *v474 = v428;
    *&v474[16] = v89;
    v475 = v469;
    v476 = v90;
    v477 = v448;
    v478 = v441;
    v479 = v434;
    outlined init with copy of MLS.OutgoingEventState?(v317, v0 + 10768, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);

    outlined init with copy of MLS.OutgoingEventState?(v317, v0 + 10432, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);

    MLS.EncryptedRCS.SigningInput.verifiableDerivedContent.getter((v0 + 18824));
    __swift_project_boxed_opaque_existential_1((v0 + 18824), *(v0 + 18848));
    v318 = MLS.Group.IncomingSignedMessage.verifiableDerivedContentData.getter();
    v320 = v319;
    MLS.VerifiableDerivedContent.verifyEquals(_:)();
    if (v455)
    {
      v321 = v455;
      v460 = *(v0 + 21288);
      v431 = *(v0 + 21264);
      v437 = *(v0 + 21256);
      v414 = *(v0 + 21120);
      v420 = *(v0 + 21192);
      v452 = *(v0 + 20864);
      v425 = *(v0 + 20856);
      v444 = *(v0 + 20848);
      v322 = *(v0 + 20768);
      v323 = *(v0 + 20760);
      outlined consume of Data._Representation(v318, v320);
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 18824));
      swift_getErrorValue();
      v324 = Error.readableDescription.getter(*(v0 + 19784), *(v0 + 19792));
      closure #8 in closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:)(v324, v325, v323, v322);

      swift_getErrorValue();
      v326 = Error.readableDescription.getter(*(v0 + 19760), *(v0 + 19768));
      v328 = v327;
      *(v0 + 19704) = 13;
      *(v0 + 19712) = v326;
      *(v0 + 19720) = v327;
      lazy protocol witness table accessor for type MLS.IncomingMessageError and conformance MLS.IncomingMessageError();
      swift_willThrowTypedImpl();

      outlined destroy of NSObject?(v322, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);

      outlined destroy of NSObject?(v322, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);

      swift_allocError();
      *v329 = 13;
      *(v329 + 8) = v326;
      *(v329 + 16) = v328;
      outlined destroy of NSObject?(v0 + 18136, &_s15SecureMessaging3MLSO12SigningInputVSgMd, &_s15SecureMessaging3MLSO12SigningInputVSgMR);
      v464(v420, v414);
      (*(v431 + 8))(v460, v437);
      (*(v425 + 8))(v452, v444);
LABEL_114:

      v399 = *(v0 + 8);

      return v399();
    }

    v461 = *(v0 + 21312);
    v453 = *(v0 + 21304);
    v330 = *(v0 + 20768);
    v331 = *(v0 + 20752);

    outlined destroy of NSObject?(v330, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);

    outlined destroy of NSObject?(v330, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);

    outlined consume of Data._Representation(v318, v320);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 18824));
    v332 = *(v331 + 32);
    *(v0 + 19249) = *(v331 + 41);
    *(v0 + 19240) = v332;
    *(v0 + 20272) = *(v330 + 16);
    v333 = *(v331 + 32);
    *(v0 + 17905) = *(v331 + 41);
    *(v0 + 17896) = v333;
    *&v474[7] = *(v330 + 16);
    *(v0 + 17880) = v453;
    *(v0 + 17888) = v461;
    *(v0 + 17921) = *v474;
    *(v0 + 17936) = *&v474[15];
    v334 = *(v0 + 17896);
    *(v0 + 16696) = *(v0 + 17880);
    *(v0 + 16712) = v334;
    v335 = *(v0 + 17928);
    *(v0 + 16728) = *(v0 + 17912);
    *(v0 + 16744) = v335;
    outlined init with copy of MLS.OutgoingEventState?(v330, v0 + 9592, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    outlined init with copy of MLS.OutgoingEventState?(v0 + 20272, v0 + 20384, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
    outlined init with copy of MLS.OutgoingEventState?(v330, v0 + 9424, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);

    outlined init with copy of MLS.OutgoingEventState?(v0 + 20272, v0 + 20368, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
    outlined init with copy of MLS.AllMember(v0 + 19240, v0 + 19624);
    v336 = Logger.logObject.getter();
    v337 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v336, v337))
    {
      v338 = *(v0 + 21312);
      v339 = *(v0 + 21304);
      v340 = *(v0 + 20768);
      v341 = swift_slowAlloc();
      v342 = swift_slowAlloc();
      *v474 = v342;
      *v341 = 136315138;

      v343 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v339, v338, v474);

      *(v341 + 4) = v343;
      outlined destroy of NSObject?(v340, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
      outlined destroy of NSObject?(v340, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
      _os_log_impl(&dword_264F1F000, v336, v337, "SwiftMLSClientCoordinator processIncoming sending signature verified event { identifier: %s }", v341, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v342);
      MEMORY[0x266755550](v342, -1, -1);
      MEMORY[0x266755550](v341, -1, -1);
    }

    else
    {
      v344 = *(v0 + 20768);

      outlined destroy of NSObject?(v344, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
      outlined destroy of NSObject?(v344, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    }

    v345 = *(v0 + 20760);
    v346 = v345[12];
    v347 = *(v0 + 16744);
    *(v0 + 15712) = *(v0 + 16728);
    *(v0 + 15728) = v347;
    v348 = *(v0 + 16776);
    *(v0 + 15744) = *(v0 + 16760);
    *(v0 + 15760) = v348;
    v349 = *(v0 + 16712);
    *(v0 + 15680) = *(v0 + 16696);
    v350 = *(v0 + 20776);
    *(v0 + 22256) = v346;
    *(v0 + 15696) = v349;
    *(v0 + 15776) = 7;
    outlined init with copy of ServerBag.MLS(v350, v0 + 18944);
    v351 = v345[10];
    *(v0 + 22264) = v351;
    v352 = v345[11];
    *(v0 + 22272) = v352;
    v353 = direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier;
    *(v0 + 22280) = direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier;
    v354 = (v345 + v353);
    v355 = v354[1];
    *(v0 + 20352) = *v354;
    *(v0 + 20360) = v355;

    swift_unknownObjectRetain();

    v356 = swift_task_alloc();
    *(v0 + 22288) = v356;
    *v356 = v0;
    v356[1] = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
    v357 = *(v0 + 20792);
    v358 = *(v0 + 20784);

    return MLS.Group.init(identifier:swiftMLSGroup:persister:clientIdentifier:)(v0 + 13496, v358, v357, v0 + 18944, v351, v352, (v0 + 20352));
  }

  else if (v31 == *MEMORY[0x277D6AAC8])
  {
    v115 = *(v0 + 21152);
    v116 = *(v0 + 21008);
    v117 = *(v0 + 21000);
    (*(*(v0 + 21128) + 96))(v115, *(v0 + 21120));
    outlined init with take of MLS.Group.Member?(v115, v116, &_s8SwiftMLS0B0O5GroupO11StateUpdateVSgMd, &_s8SwiftMLS0B0O5GroupO11StateUpdateVSgMR);
    outlined init with copy of MLS.OutgoingEventState?(v116, v117, &_s8SwiftMLS0B0O5GroupO11StateUpdateVSgMd, &_s8SwiftMLS0B0O5GroupO11StateUpdateVSgMR);
    v118 = type metadata accessor for MLS.Group.StateUpdate();
    *(v0 + 21832) = v118;
    v119 = *(v118 - 8);
    *(v0 + 21840) = v119;
    v120 = *(v119 + 48);
    *(v0 + 21848) = v120;
    *(v0 + 21856) = (v119 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
    v121 = v120(v117, 1, v118);
    v122 = *(v0 + 21000);
    if (v121 == 1)
    {
      v123 = *(v0 + 20760);
      v124 = *(v0 + 20752);
      outlined destroy of NSObject?(*(v0 + 21000), &_s8SwiftMLS0B0O5GroupO11StateUpdateVSgMd, &_s8SwiftMLS0B0O5GroupO11StateUpdateVSgMR);
      if (*(v124 + 32) == *(v123 + direct field offset for MLS.SwiftMLSClientCoordinator.selfMember) && *(v124 + 40) == *(v123 + direct field offset for MLS.SwiftMLSClientCoordinator.selfMember + 8))
      {
        v125 = 1;
      }

      else
      {
        v125 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }
    }

    else
    {
      v125 = MLS.Group.StateUpdate.committerWasSelf.getter();
      (*(v119 + 8))(v122, v118);
    }

    *(v0 + 15570) = v125 & 1;
    v268 = *(v0 + 20776);
    v269 = v268[3];
    v270 = v268[4];
    __swift_project_boxed_opaque_existential_1(v268, v269);
    v471 = (*(v270 + 40) + **(v270 + 40));
    v271 = swift_task_alloc();
    *(v0 + 21864) = v271;
    *v271 = v0;
    v271[1] = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);

    return (v471)(v269, v270);
  }

  else
  {
    if (v31 != *MEMORY[0x277D6AAD0])
    {
      if (v31 != *MEMORY[0x277D6AAB8])
      {
        v283 = *(v0 + 20768);
        outlined init with copy of MLS.OutgoingEventState?(v283, v0 + 2536, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
        outlined init with copy of MLS.OutgoingEventState?(v283, v0 + 2704, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
        v284 = Logger.logObject.getter();
        v285 = static os_log_type_t.fault.getter();
        if (os_log_type_enabled(v284, v285))
        {
          v286 = *(v0 + 21312);
          v287 = *(v0 + 21304);
          v288 = *(v0 + 20768);
          v289 = swift_slowAlloc();
          v290 = swift_slowAlloc();
          *v474 = v290;
          *v289 = 136315138;

          v291 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v287, v286, v474);

          *(v289 + 4) = v291;
          outlined destroy of NSObject?(v288, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
          outlined destroy of NSObject?(v288, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
          _os_log_impl(&dword_264F1F000, v284, v285, "SwiftMLSClientCoordinator processIncoming missing SwiftMLS incoming message type { identifier: %s }", v289, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v290);
          MEMORY[0x266755550](v290, -1, -1);
          MEMORY[0x266755550](v289, -1, -1);
        }

        else
        {
          v379 = *(v0 + 20768);

          outlined destroy of NSObject?(v379, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
          outlined destroy of NSObject?(v379, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
        }

        v380 = *(v0 + 21288);
        v381 = *(v0 + 21264);
        v382 = *(v0 + 21256);
        v383 = *(v0 + 21192);
        v384 = *(v0 + 21152);
        v385 = *(v0 + 21120);
        lazy protocol witness table accessor for type MLS.IncomingMessageError and conformance MLS.IncomingMessageError();
        swift_allocError();
        *v386 = 6;
        *(v386 + 8) = 0;
        *(v386 + 16) = 0;
        swift_willThrow();
        v23(v383, v385);
        (*(v381 + 8))(v380, v382);
        v23(v384, v385);
        goto LABEL_114;
      }

      v235 = *(v0 + 21312);
      v236 = *(v0 + 21304);
      v237 = *(v0 + 20768);
      v238 = *(v0 + 20752);
      v239 = *(v238 + 32);
      *(v0 + 19505) = *(v238 + 41);
      *(v0 + 19496) = v239;
      *(v0 + 20288) = *(v237 + 16);
      v240 = *(v238 + 32);
      *(v0 + 18033) = *(v238 + 41);
      *(v0 + 18024) = v240;
      *&v474[7] = *(v237 + 16);
      *(v0 + 18008) = v236;
      *(v0 + 18016) = v235;
      *(v0 + 18049) = *v474;
      *(v0 + 18064) = *&v474[15];
      v241 = *(v0 + 18024);
      *(v0 + 17080) = *(v0 + 18008);
      *(v0 + 17096) = v241;
      v242 = *(v0 + 18056);
      *(v0 + 17112) = *(v0 + 18040);
      *(v0 + 17128) = v242;
      outlined init with copy of MLS.OutgoingEventState?(v237, v0 + 2872, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
      outlined init with copy of MLS.OutgoingEventState?(v0 + 20288, v0 + 20496, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
      outlined init with copy of MLS.OutgoingEventState?(v237, v0 + 3208, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);

      outlined init with copy of MLS.OutgoingEventState?(v0 + 20288, v0 + 20480, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
      outlined init with copy of MLS.AllMember(v0 + 19496, v0 + 19432);
      v243 = Logger.logObject.getter();
      v244 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v243, v244))
      {
        v245 = *(v0 + 21312);
        v246 = *(v0 + 21304);
        v247 = *(v0 + 20768);
        v248 = swift_slowAlloc();
        v249 = swift_slowAlloc();
        *v474 = v249;
        *v248 = 136315138;

        v250 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v246, v245, v474);

        *(v248 + 4) = v250;
        outlined destroy of NSObject?(v247, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
        outlined destroy of NSObject?(v247, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
        _os_log_impl(&dword_264F1F000, v243, v244, "SwiftMLSClientCoordinator processIncoming sending internal message event { identifier: %s }", v248, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v249);
        MEMORY[0x266755550](v249, -1, -1);
        MEMORY[0x266755550](v248, -1, -1);
      }

      else
      {
        v371 = *(v0 + 20768);

        outlined destroy of NSObject?(v371, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
        outlined destroy of NSObject?(v371, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
      }

      v372 = *(v0 + 20776);
      v373 = *(v0 + 20760);
      *(v0 + 22336) = v373[12];
      v374 = *(v0 + 17128);
      *(v0 + 15608) = *(v0 + 17112);
      *(v0 + 15624) = v374;
      v375 = *(v0 + 17160);
      *(v0 + 15640) = *(v0 + 17144);
      *(v0 + 15656) = v375;
      v376 = *(v0 + 17096);
      *(v0 + 15576) = *(v0 + 17080);
      *(v0 + 15592) = v376;
      *(v0 + 15672) = 9;
      outlined init with copy of ServerBag.MLS(v372, v0 + 18984);
      *(v0 + 22344) = v373[10];
      *(v0 + 22352) = v373[11];
      v377 = direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier;
      *(v0 + 22360) = direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier;
      v378 = (v373 + v377);
      *(v0 + 22368) = *v378;
      *(v0 + 22376) = v378[1];

      swift_unknownObjectRetain();

      v102 = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
      v103 = 0;
      v104 = 0;

      return MEMORY[0x2822009F8](v102, v103, v104);
    }

    v142 = *(v0 + 20768);
    outlined init with copy of MLS.OutgoingEventState?(v142, v0 + 8248, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    outlined init with copy of MLS.OutgoingEventState?(v142, v0 + 7912, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    v143 = Logger.logObject.getter();
    v144 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v143, v144))
    {
      v145 = *(v0 + 21312);
      v146 = *(v0 + 21304);
      v147 = *(v0 + 20768);
      v148 = swift_slowAlloc();
      v149 = swift_slowAlloc();
      *v474 = v149;
      *v148 = 136315138;

      v150 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v146, v145, v474);

      *(v148 + 4) = v150;
      outlined destroy of NSObject?(v147, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
      outlined destroy of NSObject?(v147, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
      _os_log_impl(&dword_264F1F000, v143, v144, "SwiftMLSClientCoordinator processIncoming committing proposal { identifier: %s }", v148, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v149);
      MEMORY[0x266755550](v149, -1, -1);
      MEMORY[0x266755550](v148, -1, -1);
    }

    else
    {
      v272 = *(v0 + 20768);

      outlined destroy of NSObject?(v272, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
      outlined destroy of NSObject?(v272, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    }

    v273 = *(v0 + 21608);
    v274 = *(v0 + 21592);
    v275 = *(v0 + 21584);
    v276 = *(v0 + 21576);
    v277 = *(v0 + 21200);
    v278 = *(v0 + 20776);
    swift_beginAccess();
    Date.init()();
    v274(v277 + *(v276 + 20), 1, 1, v275);
    v273(v277, 0, 1, v276);
    specialized Dictionary.subscript.setter(v277, 0xD000000000000016, 0x80000002651E7960);
    swift_endAccess();
    v279 = v278[3];
    v280 = v278[4];
    __swift_project_boxed_opaque_existential_1(v278, v279);
    v472 = (*(v280 + 248) + **(v280 + 248));
    v281 = swift_task_alloc();
    *(v0 + 22200) = v281;
    *v281 = v0;
    v281[1] = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
    v282 = *(v0 + 20920);

    return (v472)(v282, v279, v280);
  }
}

{
  v2 = *v1;
  *(*v1 + 21696) = v0;

  v3 = *(v2 + 21296);
  if (v0)
  {
    v4 = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
  }

  else
  {
    v4 = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{
  v481 = v0;
  v1 = *(v0 + 21176);
  v455 = *(v0 + 21696);
  v2 = *(v0 + 21192);
  v3 = *(v0 + 21168);
  v4 = *(v0 + 21128);
  v5 = *(v0 + 21120);
  v6 = *(v0 + 21112);
  v7 = *(v0 + 21080);
  v8 = *(v0 + 20768);
  v9 = *(*(v0 + 21088) + 8);
  *(v0 + 21752) = v9;
  v9(v6, v7);
  (*(v4 + 32))(v2, v1, v5);
  v474[0] = 7;
  swift_beginAccess();
  MetricCollector.end(metric:)(v474);
  swift_endAccess();
  v10 = *(v4 + 16);
  v10(v3, v2, v5);
  outlined init with copy of MLS.OutgoingEventState?(v8, v0 + 2200, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
  outlined init with copy of MLS.OutgoingEventState?(v8, v0 + 2368, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = *(v0 + 21312);
    v14 = *(v0 + 21304);
    v439 = *(v0 + 21160);
    v446 = *(v0 + 21168);
    v15 = *(v0 + 21128);
    v16 = *(v0 + 21120);
    v17 = *(v0 + 20768);
    v18 = swift_slowAlloc();
    v462 = swift_slowAlloc();
    *v474 = v462;
    *v18 = 136315394;

    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v13, v474);

    *(v18 + 4) = v19;
    outlined destroy of NSObject?(v17, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    outlined destroy of NSObject?(v17, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    *(v18 + 12) = 2080;
    v10(v439, v446, v16);
    v20 = String.init<A>(describing:)();
    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, v474);

    *(v18 + 14) = v22;
    v23 = *(v15 + 8);
    v23(v446, v16);
    _os_log_impl(&dword_264F1F000, v11, v12, "SwiftMLSClientCoordinator processIncoming processed message { identifier: %s, message: %s }", v18, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v462, -1, -1);
    MEMORY[0x266755550](v18, -1, -1);
  }

  else
  {
    v24 = *(v0 + 21168);
    v25 = *(v0 + 21128);
    v26 = *(v0 + 21120);
    v27 = *(v0 + 20768);

    outlined destroy of NSObject?(v27, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    outlined destroy of NSObject?(v27, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    v23 = *(v25 + 8);
    v23(v24, v26);
  }

  *(v0 + 21760) = v23;
  v28 = *(v0 + 21152);
  v29 = *(v0 + 21128);
  v30 = *(v0 + 21120);
  v10(v28, *(v0 + 21192), v30);
  v31 = (*(v29 + 88))(v28, v30);
  if (v31 == *MEMORY[0x277D6AAA8])
  {
    v32 = *(v0 + 21152);
    v33 = *(v0 + 20768);
    (*(*(v0 + 21128) + 96))(v32, *(v0 + 21120));
    v34 = (v32 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8SwiftMLS0B0O8IdentityO07SigningC0VSg6sender_10Foundation4DataV4datatMd, &_s8SwiftMLS0B0O8IdentityO07SigningC0VSg6sender_10Foundation4DataV4datatMR) + 48));
    v35 = *v34;
    *(v0 + 21768) = *v34;
    v36 = v34[1];
    *(v0 + 21776) = v36;
    v37 = *(v0 + 20768);
    if (*(v33 + 104) >> 60 == 15)
    {
      v38 = *(v0 + 20800);
      v39 = *(v0 + 20752);
      v41 = v39[1];
      v40 = v39[2];
      v42 = *v39;
      *(v0 + 18498) = *(v39 + 42);
      *(v0 + 18472) = v41;
      *(v0 + 18488) = v40;
      *(v0 + 18456) = v42;
      swift_beginAccess();
      *(v0 + 20712) = *(v38 + 16);
      v43 = *v37;
      v44 = *(v37 + 16);
      *(v0 + 9792) = *(v37 + 32);
      *(v0 + 9776) = v44;
      *(v0 + 9760) = v43;
      v45 = *(v37 + 48);
      v46 = *(v37 + 64);
      v47 = *(v37 + 80);
      *(v0 + 9856) = *(v37 + 96);
      *(v0 + 9840) = v47;
      *(v0 + 9824) = v46;
      *(v0 + 9808) = v45;
      v48 = *(v37 + 112);
      v49 = *(v37 + 128);
      v50 = *(v37 + 144);
      *(v0 + 9920) = *(v37 + 160);
      *(v0 + 9904) = v50;
      *(v0 + 9888) = v49;
      *(v0 + 9872) = v48;

      v51 = swift_task_alloc();
      *(v0 + 21784) = v51;
      *v51 = v0;
      v51[1] = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
      v52 = *(v0 + 21312);
      v53 = *(v0 + 21304);
      v54 = *(v0 + 20792);
      v55 = *(v0 + 20784);
      v56 = *(v0 + 20776);
      v57 = *(v0 + 20744);
      v484 = v0 + 20712;
      v485 = v0 + 9760;
      v483 = v56;
      v58 = v0 + 18456;
      v59 = v35;
      v60 = v36;
LABEL_68:

      return MLS.SwiftMLSClientCoordinator.handleIncomingApplicationMessage(eventIdentifier:message:applicationMessageData:group:swiftMLSGroup:metricCollector:context:)(v57, v53, v52, v58, v59, v60, v55, v54);
    }

    v447 = v36;
    v456 = v35;
    v10(*(v0 + 21144), *(v0 + 21192), *(v0 + 21120));
    outlined init with copy of MLS.OutgoingEventState?(v37, v0 + 10264, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    outlined init with copy of MLS.OutgoingEventState?(v37, v0 + 10600, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    v69 = Logger.logObject.getter();
    v70 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v69, v70))
    {
      v71 = *(v0 + 21312);
      v72 = *(v0 + 21304);
      v463 = v23;
      v73 = *(v0 + 21160);
      v74 = *(v0 + 21144);
      v427 = *(v0 + 21120);
      v75 = *(v0 + 20768);
      v76 = swift_slowAlloc();
      v440 = swift_slowAlloc();
      *v474 = v440;
      *v76 = 136315394;

      v77 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v72, v71, v474);

      *(v76 + 4) = v77;
      outlined destroy of NSObject?(v75, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
      outlined destroy of NSObject?(v75, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
      *(v76 + 12) = 2080;
      v10(v73, v74, v427);
      v23 = v463;
      v78 = String.init<A>(describing:)();
      v80 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v78, v79, v474);

      *(v76 + 14) = v80;
      v463(v74, v427);
      _os_log_impl(&dword_264F1F000, v69, v70, "SwiftMLSClientCoordinator processIncoming processed message had no AAD { identifier: %s, message: %s }", v76, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266755550](v440, -1, -1);
      MEMORY[0x266755550](v76, -1, -1);
    }

    else
    {
      v105 = *(v0 + 21144);
      v106 = *(v0 + 21120);
      v107 = *(v0 + 20768);

      outlined destroy of NSObject?(v107, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
      outlined destroy of NSObject?(v107, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
      v23(v105, v106);
    }

    v108 = *(v0 + 21288);
    v109 = *(v0 + 21264);
    v110 = *(v0 + 21256);
    v111 = *(v0 + 21192);
    v112 = *(v0 + 21152);
    v113 = *(v0 + 21120);
    lazy protocol witness table accessor for type MLS.IncomingMessageError and conformance MLS.IncomingMessageError();
    swift_allocError();
    *v114 = 14;
    *(v114 + 8) = 0;
    *(v114 + 16) = 0;
    swift_willThrow();
    outlined consume of Data._Representation(v456, v447);
    v23(v111, v113);
    (*(v109 + 8))(v108, v110);
    outlined destroy of NSObject?(v112, &_s8SwiftMLS0B0O8IdentityO07SigningC0VSgMd, &_s8SwiftMLS0B0O8IdentityO07SigningC0VSgMR);
    goto LABEL_114;
  }

  if (v31 == *MEMORY[0x277D6AAB0])
  {
    v61 = *(v0 + 21152);
    v62 = *(v0 + 21048);
    v63 = *(v0 + 21024);
    v64 = *(v0 + 21016);
    (*(*(v0 + 21128) + 96))(v61, *(v0 + 21120));
    (*(v63 + 32))(v62, v61, v64);
    v65 = MLS.Group.IncomingApplicationMessageDetails.messageID.getter();
    v67 = v66 >> 62;
    if ((v66 >> 62) > 1)
    {
      if (v67 != 2)
      {
        outlined consume of Data._Representation(v65, v66);
        goto LABEL_39;
      }

      v100 = *(v65 + 16);
      v101 = *(v65 + 24);
      v102 = outlined consume of Data._Representation(v65, v66);
      if (!__OFSUB__(v101, v100))
      {
        if (v101 != v100)
        {
          goto LABEL_52;
        }

LABEL_39:
        v136 = MLS.Group.IncomingApplicationMessageDetails.originalMessageID.getter();
        v138 = v137 >> 62;
        if ((v137 >> 62) <= 1)
        {
          if (!v138)
          {
            v139 = BYTE6(v137);
            outlined consume of Data._Representation(v136, v137);
            if (!v139)
            {
              goto LABEL_67;
            }

            goto LABEL_52;
          }

          v151 = HIDWORD(v136);
          v152 = v136;
          v102 = outlined consume of Data._Representation(v136, v137);
          if (!__OFSUB__(v151, v152))
          {
            if (v151 == v152)
            {
              goto LABEL_67;
            }

            goto LABEL_52;
          }

          goto LABEL_120;
        }

        if (v138 != 2)
        {
          outlined consume of Data._Representation(v136, v137);
          goto LABEL_67;
        }

        v140 = *(v136 + 16);
        v141 = *(v136 + 24);
        v102 = outlined consume of Data._Representation(v136, v137);
        if (!__OFSUB__(v141, v140))
        {
          if (v141 == v140)
          {
            goto LABEL_67;
          }

          goto LABEL_52;
        }

LABEL_119:
        __break(1u);
LABEL_120:
        __break(1u);
        return MEMORY[0x2822009F8](v102, v103, v104);
      }

      __break(1u);
    }

    else
    {
      if (!v67)
      {
        v68 = BYTE6(v66);
        outlined consume of Data._Representation(v65, v66);
        if (!v68)
        {
          goto LABEL_39;
        }

LABEL_52:
        v153 = *(v0 + 20768);
        v154 = v153[13];
        if (v154 >> 60 == 15)
        {
          v10(*(v0 + 21136), *(v0 + 21192), *(v0 + 21120));
          outlined init with copy of MLS.OutgoingEventState?(v153, v0 + 4720, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
          outlined init with copy of MLS.OutgoingEventState?(v153, v0 + 4888, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
          v155 = Logger.logObject.getter();
          v156 = static os_log_type_t.default.getter();
          v465 = v23;
          if (os_log_type_enabled(v155, v156))
          {
            v449 = v10;
            v157 = *(v0 + 21312);
            v158 = *(v0 + 21304);
            v159 = *(v0 + 21160);
            v442 = *(v0 + 21136);
            v160 = *(v0 + 21120);
            v161 = *(v0 + 20768);
            v162 = swift_slowAlloc();
            v163 = swift_slowAlloc();
            *v474 = v163;
            *v162 = 136315394;

            v164 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v158, v157, v474);

            *(v162 + 4) = v164;
            outlined destroy of NSObject?(v161, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
            outlined destroy of NSObject?(v161, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
            *(v162 + 12) = 2080;
            v449(v159, v442, v160);
            v165 = String.init<A>(describing:)();
            v167 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v165, v166, v474);

            *(v162 + 14) = v167;
            v465(v442, v160);
            _os_log_impl(&dword_264F1F000, v155, v156, "SwiftMLSClientCoordinator processIncoming processed message had unexpected AAD { identifier: %s, message: %s }", v162, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x266755550](v163, -1, -1);
            MEMORY[0x266755550](v162, -1, -1);
          }

          else
          {
            v183 = *(v0 + 21136);
            v184 = *(v0 + 21120);
            v185 = *(v0 + 20768);

            outlined destroy of NSObject?(v185, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
            outlined destroy of NSObject?(v185, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
            v23(v183, v184);
          }

          v458 = *(v0 + 21288);
          v186 = *(v0 + 21264);
          v187 = *(v0 + 21256);
          v188 = *(v0 + 21192);
          v189 = *(v0 + 21120);
          v190 = *(v0 + 21048);
          v191 = *(v0 + 21024);
          v192 = *(v0 + 21016);
          lazy protocol witness table accessor for type MLS.IncomingMessageError and conformance MLS.IncomingMessageError();
          swift_allocError();
          *v193 = 15;
          *(v193 + 8) = 0;
          *(v193 + 16) = 0;
          swift_willThrow();
          (*(v191 + 8))(v190, v192);
          v465(v188, v189);
          (*(v186 + 8))(v458, v187);
          goto LABEL_114;
        }

        v168 = v153[12];
        v169 = v153[14];
        v170 = v153[15];
        v172 = v153[16];
        v171 = v153[17];
        outlined copy of MLS.AdditionalAuthenticatedData?(v168, v154, v169, v170, v172, v171);
        outlined copy of Data._Representation(v168, v154);
        v457 = v171;
        outlined copy of Data?(v172, v171);
        v173 = MLS.Group.IncomingApplicationMessageDetails.messageID.getter();
        v175 = v174;
        v176 = specialized static Data.== infix(_:_:)(v168, v154, v173, v174);
        outlined consume of Data._Representation(v173, v175);
        if (!v176)
        {
          v466 = v23;
          v194 = *(v0 + 20768);
          (*(*(v0 + 21024) + 16))(*(v0 + 21040), *(v0 + 21048), *(v0 + 21016));
          outlined init with copy of MLS.OutgoingEventState?(v194, v0 + 5392, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
          outlined copy of MLS.AdditionalAuthenticatedData?(v168, v154, v169, v170, v172, v457);
          outlined init with copy of MLS.OutgoingEventState?(v194, v0 + 5560, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
          v429 = v154;
          v443 = v170;
          v451 = v169;
          v435 = v172;
          outlined copy of MLS.AdditionalAuthenticatedData?(v168, v154, v169, v170, v172, v457);
          v195 = Logger.logObject.getter();
          v196 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v195, v196))
          {
            v470 = v196;
            v197 = *(v0 + 21312);
            v198 = *(v0 + 21304);
            v407 = *(v0 + 21040);
            v417 = *(v0 + 21024);
            v423 = *(v0 + 21016);
            v199 = *(v0 + 20768);
            v200 = swift_slowAlloc();
            v411 = swift_slowAlloc();
            *v474 = v411;
            *v200 = 136315650;

            v201 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v198, v197, v474);

            *(v200 + 4) = v201;
            outlined destroy of NSObject?(v199, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
            outlined destroy of NSObject?(v199, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
            log = v195;
            *(v200 + 12) = 2080;
            outlined copy of Data._Representation(v168, v429);
            v202 = Data.description.getter();
            v204 = v203;
            outlined consume of Data._Representation(v168, v429);
            v205 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v202, v204, v474);

            *(v200 + 14) = v205;
            v206 = v457;
            outlined consume of MLS.AdditionalAuthenticatedData?(v168, v429, v169, v170, v435, v457);
            outlined consume of MLS.AdditionalAuthenticatedData?(v168, v429, v169, v170, v435, v457);
            *(v200 + 22) = 2080;
            v207 = MLS.Group.IncomingApplicationMessageDetails.messageID.getter();
            v209 = v208;
            v210 = Data.description.getter();
            v212 = v211;
            outlined consume of Data._Representation(v207, v209);
            v213 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v210, v212, v474);

            *(v200 + 24) = v213;
            v214 = v423;
            v424 = *(v417 + 8);
            v424(v407, v214);
            _os_log_impl(&dword_264F1F000, log, v470, "SwiftMLSClientCoordinator processIncoming processed message had mismatched AAD messageID { identifier: %s, clientMessageID: %s, messageID: %s }", v200, 0x20u);
            swift_arrayDestroy();
            MEMORY[0x266755550](v411, -1, -1);
            MEMORY[0x266755550](v200, -1, -1);
          }

          else
          {
            v260 = *(v0 + 21040);
            v261 = *(v0 + 21024);
            v262 = *(v0 + 21016);
            v263 = *(v0 + 20768);

            outlined destroy of NSObject?(v263, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
            outlined destroy of NSObject?(v263, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
            v206 = v457;
            outlined consume of MLS.AdditionalAuthenticatedData?(v168, v429, v451, v170, v435, v457);
            outlined consume of MLS.AdditionalAuthenticatedData?(v168, v429, v451, v170, v435, v457);
            v424 = *(v261 + 8);
            v424(v260, v262);
          }

          v264 = *(v0 + 21264);
          v408 = *(v0 + 21256);
          v412 = *(v0 + 21288);
          v401 = *(v0 + 21120);
          loga = *(v0 + 21192);
          v265 = *(v0 + 21048);
          v266 = *(v0 + 21016);
          lazy protocol witness table accessor for type MLS.IncomingMessageError and conformance MLS.IncomingMessageError();
          swift_allocError();
          *v267 = 16;
          *(v267 + 8) = 0;
          *(v267 + 16) = 0;
          swift_willThrow();
          outlined consume of MLS.AdditionalAuthenticatedData?(v168, v429, v451, v443, v435, v206);
          outlined consume of MLS.AdditionalAuthenticatedData?(v168, v429, v451, v443, v435, v206);
          v424(v265, v266);
          v466(loga, v401);
          (*(v264 + 8))(v412, v408);
          goto LABEL_114;
        }

        v422 = v168;
        v177 = v457;
        if (v457 >> 60 != 15)
        {
          v450 = v169;
          outlined copy of Data._Representation(v172, v457);
          v178 = MLS.Group.IncomingApplicationMessageDetails.originalMessageID.getter();
          v180 = v179;
          v181 = specialized static Data.== infix(_:_:)(v172, v457, v178, v179);
          outlined consume of Data._Representation(v178, v180);
          if (!v181)
          {
            v430 = v154;
            v467 = v23;
            v292 = *(v0 + 20768);
            (*(*(v0 + 21024) + 16))(*(v0 + 21032), *(v0 + 21048), *(v0 + 21016));
            outlined init with copy of MLS.OutgoingEventState?(v292, v0 + 520, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
            outlined copy of Data?(v172, v457);
            outlined init with copy of MLS.OutgoingEventState?(v292, v0 + 9256, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
            outlined copy of Data?(v172, v457);
            v293 = Logger.logObject.getter();
            v294 = static os_log_type_t.error.getter();
            v295 = v172;
            v436 = v172;
            if (os_log_type_enabled(v293, v294))
            {
              v296 = *(v0 + 21312);
              v297 = *(v0 + 21304);
              v298 = *(v0 + 21032);
              v413 = *(v0 + 21024);
              v418 = *(v0 + 21016);
              v299 = *(v0 + 20768);
              v300 = swift_slowAlloc();
              v473 = swift_slowAlloc();
              *v474 = v473;
              *v300 = 136315650;

              v301 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v297, v296, v474);

              *(v300 + 4) = v301;
              outlined destroy of NSObject?(v299, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
              outlined destroy of NSObject?(v299, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
              v409 = v294;
              *(v300 + 12) = 2080;
              outlined copy of Data._Representation(v295, v457);
              v302 = Data.description.getter();
              v304 = v303;
              outlined consume of Data?(v295, v457);
              v305 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v302, v304, v474);

              *(v300 + 14) = v305;
              outlined consume of Data?(v295, v457);
              outlined consume of Data?(v295, v457);
              *(v300 + 22) = 2080;
              v306 = MLS.Group.IncomingApplicationMessageDetails.originalMessageID.getter();
              v308 = v307;
              v309 = Data.description.getter();
              v311 = v310;
              outlined consume of Data._Representation(v306, v308);
              v312 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v309, v311, v474);

              *(v300 + 24) = v312;
              v313 = v418;
              v419 = *(v413 + 8);
              v419(v298, v313);
              _os_log_impl(&dword_264F1F000, v293, v409, "SwiftMLSClientCoordinator processIncoming processed message had mismatched AAD originalMessageID { identifier: %s, clientOriginalMessageID: %s, originalMessageID: %s }", v300, 0x20u);
              swift_arrayDestroy();
              MEMORY[0x266755550](v473, -1, -1);
              MEMORY[0x266755550](v300, -1, -1);
            }

            else
            {
              v387 = *(v0 + 21032);
              v388 = *(v0 + 21024);
              v389 = *(v0 + 21016);
              v390 = *(v0 + 20768);

              outlined destroy of NSObject?(v390, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
              outlined destroy of NSObject?(v390, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
              outlined consume of Data?(v172, v457);
              outlined consume of Data?(v172, v457);
              v419 = *(v388 + 8);
              v419(v387, v389);
            }

            v391 = *(v0 + 21264);
            v410 = *(v0 + 21256);
            v415 = *(v0 + 21288);
            v402 = *(v0 + 21120);
            logb = *(v0 + 21192);
            v400 = *(v0 + 21048);
            v392 = *(v0 + 21016);
            lazy protocol witness table accessor for type MLS.IncomingMessageError and conformance MLS.IncomingMessageError();
            swift_allocError();
            *v393 = 16;
            *(v393 + 8) = 0;
            *(v393 + 16) = 0;
            swift_willThrow();
            outlined consume of Data?(v436, v457);
            outlined consume of MLS.AdditionalAuthenticatedData?(v422, v430, v450, v170, v436, v457);
            outlined consume of MLS.AdditionalAuthenticatedData?(v422, v430, v450, v170, v436, v457);
            v419(v400, v392);
            v467(logb, v402);
            (*(v391 + 8))(v415, v410);
            goto LABEL_114;
          }

          outlined consume of Data?(v172, v457);
          v169 = v450;
        }

        v182 = MLS.Group.IncomingApplicationMessageDetails.era.getter();
        if ((v182 & 0x100000000) == 0 && v169 != v182)
        {
          v468 = v23;
          v432 = v182;
          v359 = *(v0 + 20768);
          outlined init with copy of MLS.OutgoingEventState?(v359, v0 + 6736, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
          outlined init with copy of MLS.OutgoingEventState?(v359, v0 + 6904, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
          v445 = v170;
          v454 = v169;
          outlined copy of MLS.AdditionalAuthenticatedData?(v422, v154, v169, v170, v172, v457);
          v360 = Logger.logObject.getter();
          v361 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v360, v361))
          {
            v362 = *(v0 + 21312);
            v438 = v172;
            v363 = *(v0 + 21304);
            v364 = *(v0 + 20768);
            v365 = swift_slowAlloc();
            v366 = swift_slowAlloc();
            *v474 = v366;
            *v365 = 136315650;

            v367 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v363, v362, v474);

            *(v365 + 4) = v367;
            outlined destroy of NSObject?(v364, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
            outlined destroy of NSObject?(v364, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
            v368 = v154;
            *(v365 + 12) = 1024;
            *(v365 + 14) = v454;
            v369 = v422;
            v370 = v438;
            v177 = v457;
            outlined consume of MLS.AdditionalAuthenticatedData?(v422, v154, v454, v445, v438, v457);
            *(v365 + 18) = 1024;
            *(v365 + 20) = v432;
            _os_log_impl(&dword_264F1F000, v360, v361, "SwiftMLSClientCoordinator processIncoming processed message had mismatched AAD era { identifier: %s, clientEra: %u, era: %u }", v365, 0x18u);
            __swift_destroy_boxed_opaque_existential_1Tm(v366);
            MEMORY[0x266755550](v366, -1, -1);
            MEMORY[0x266755550](v365, -1, -1);
          }

          else
          {
            v394 = *(v0 + 20768);

            outlined destroy of NSObject?(v394, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
            outlined destroy of NSObject?(v394, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
            outlined consume of MLS.AdditionalAuthenticatedData?(v422, v154, v169, v170, v172, v457);
            v370 = v172;
            v368 = v154;
            v369 = v422;
          }

          v395 = *(v0 + 21264);
          v426 = *(v0 + 21256);
          v433 = *(v0 + 21288);
          v416 = *(v0 + 21120);
          v421 = *(v0 + 21192);
          logc = *(v0 + 21048);
          v396 = *(v0 + 21024);
          v397 = *(v0 + 21016);
          lazy protocol witness table accessor for type MLS.IncomingMessageError and conformance MLS.IncomingMessageError();
          swift_allocError();
          *v398 = 16;
          *(v398 + 8) = 0;
          *(v398 + 16) = 0;
          swift_willThrow();
          outlined consume of MLS.AdditionalAuthenticatedData?(v369, v368, v454, v445, v370, v177);
          outlined consume of MLS.AdditionalAuthenticatedData?(v369, v368, v454, v445, v370, v177);
          (*(v396 + 8))(logc, v397);
          v468(v421, v416);
          (*(v395 + 8))(v433, v426);
          goto LABEL_114;
        }

        outlined consume of MLS.AdditionalAuthenticatedData?(v422, v154, v169, v170, v172, v457);
        outlined consume of MLS.AdditionalAuthenticatedData?(v422, v154, v169, v170, v172, v457);
LABEL_67:
        v215 = *(v0 + 20800);
        v216 = *(v0 + 20768);
        v217 = *(v0 + 20752);
        v219 = v217[1];
        v218 = v217[2];
        v220 = *v217;
        *(v0 + 18562) = *(v217 + 42);
        *(v0 + 18536) = v219;
        *(v0 + 18552) = v218;
        *(v0 + 18520) = v220;
        v221 = MLS.Group.IncomingApplicationMessageDetails.data.getter();
        v223 = v222;
        *(v0 + 21800) = v221;
        *(v0 + 21808) = v222;
        swift_beginAccess();
        *(v0 + 20720) = *(v215 + 16);
        v224 = *v216;
        v225 = v216[1];
        *(v0 + 6432) = v216[2];
        *(v0 + 6416) = v225;
        *(v0 + 6400) = v224;
        v226 = v216[3];
        v227 = v216[4];
        v228 = v216[5];
        *(v0 + 6496) = v216[6];
        *(v0 + 6480) = v228;
        *(v0 + 6464) = v227;
        *(v0 + 6448) = v226;
        v229 = v216[7];
        v230 = v216[8];
        v231 = v216[9];
        *(v0 + 6560) = *(v216 + 20);
        *(v0 + 6544) = v231;
        *(v0 + 6528) = v230;
        *(v0 + 6512) = v229;

        v232 = swift_task_alloc();
        *(v0 + 21816) = v232;
        *v232 = v0;
        v232[1] = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
        v52 = *(v0 + 21312);
        v53 = *(v0 + 21304);
        v54 = *(v0 + 20792);
        v55 = *(v0 + 20784);
        v233 = *(v0 + 20776);
        v57 = *(v0 + 20744);
        v484 = v0 + 20720;
        v485 = v0 + 6400;
        v483 = v233;
        v58 = v0 + 18520;
        v59 = v221;
        v60 = v223;
        goto LABEL_68;
      }

      v134 = HIDWORD(v65);
      v135 = v65;
      v102 = outlined consume of Data._Representation(v65, v66);
      if (!__OFSUB__(v134, v135))
      {
        if (v134 != v135)
        {
          goto LABEL_52;
        }

        goto LABEL_39;
      }
    }

    __break(1u);
    goto LABEL_119;
  }

  if (v31 == *MEMORY[0x277D6AAC0])
  {
    v464 = v23;
    v81 = *(v0 + 21152);
    v82 = *(v0 + 20864);
    v83 = *(v0 + 20856);
    v84 = *(v0 + 20848);
    v85 = *(v0 + 20768);
    (*(*(v0 + 21128) + 96))(v81, *(v0 + 21120));
    (*(v83 + 32))(v82, v81, v84);
    v87 = v85[3];
    v86 = v85[4];
    v88 = v85[2];
    *(v0 + 18180) = *(v85 + 76);
    *(v0 + 18152) = v87;
    *(v0 + 18168) = v86;
    *(v0 + 18136) = v88;
    v89 = *(v0 + 18152);
    v90 = *(v0 + 18168);
    if (v89 >> 16 == 0xFFFFFFFF && (v90 & 0x3000000000000000) == 0)
    {
      v91 = *(v0 + 20768);
      outlined init with copy of MLS.OutgoingEventState?(v91, v0 + 856, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
      outlined init with copy of MLS.OutgoingEventState?(v91, v0 + 10936, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
      v92 = Logger.logObject.getter();
      v93 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v92, v93))
      {
        v94 = *(v0 + 21312);
        v95 = *(v0 + 21304);
        v96 = *(v0 + 20768);
        v97 = swift_slowAlloc();
        v98 = swift_slowAlloc();
        *v474 = v98;
        *v97 = 136315138;

        v99 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v95, v94, v474);

        *(v97 + 4) = v99;
        outlined destroy of NSObject?(v96, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
        outlined destroy of NSObject?(v96, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
        _os_log_impl(&dword_264F1F000, v92, v93, "SwiftMLSClientCoordinator processIncoming signed message was not given expected data { identifier: %s }", v97, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v98);
        MEMORY[0x266755550](v98, -1, -1);
        MEMORY[0x266755550](v97, -1, -1);
      }

      else
      {
        v251 = *(v0 + 20768);

        outlined destroy of NSObject?(v251, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
        outlined destroy of NSObject?(v251, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
      }

      v252 = *(v0 + 21288);
      v253 = *(v0 + 21264);
      v254 = *(v0 + 21256);
      v255 = *(v0 + 21192);
      v256 = *(v0 + 21120);
      v459 = *(v0 + 20864);
      v257 = *(v0 + 20856);
      v258 = *(v0 + 20848);
      lazy protocol witness table accessor for type MLS.IncomingMessageError and conformance MLS.IncomingMessageError();
      swift_allocError();
      *v259 = 12;
      *(v259 + 8) = 0;
      *(v259 + 16) = 0;
      swift_willThrow();
      v464(v255, v256);
      (*(v253 + 8))(v252, v254);
      (*(v257 + 8))(v459, v258);
      goto LABEL_114;
    }

    v434 = *(v0 + 18192);
    v441 = *(v0 + 18184);
    v448 = *(v0 + 18176);
    v469 = *(v0 + 18160);
    v428 = *(v0 + 18136);
    v127 = v85[3];
    v126 = v85[4];
    v128 = v85[2];
    *(v0 + 18244) = *(v85 + 76);
    *(v0 + 18216) = v127;
    *(v0 + 18232) = v126;
    *(v0 + 18200) = v128;
    outlined init with copy of MLS.OutgoingEventState?(v0 + 18136, v0 + 18264, &_s15SecureMessaging3MLSO12SigningInputVSgMd, &_s15SecureMessaging3MLSO12SigningInputVSgMR);
    outlined init with copy of MLS.OutgoingEventState?(v0 + 18136, v0 + 18328, &_s15SecureMessaging3MLSO12SigningInputVSgMd, &_s15SecureMessaging3MLSO12SigningInputVSgMR);
    outlined init with copy of MLS.SigningInput(v0 + 18200, v0 + 18392);
    v129 = Logger.logObject.getter();
    v130 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v129, v130))
    {
      v131 = swift_slowAlloc();
      v132 = swift_slowAlloc();
      v480 = v132;
      *v131 = 136315138;
      v133 = (v90 >> 60) & 3;
      if (v133)
      {
        *v474 = v89;
        *&v474[8] = v469;
        *&v474[16] = v90 & 0xCFFFFFFFFFFFFFFFLL;
        if (v133 == 1)
        {
          v475 = v448;
          v476 = v441;
          LOWORD(v477) = v434;
          v314 = MLS.EncryptedRCS.DisplayIMDNSigningInput.description.getter();
        }

        else
        {
          v314 = MLS.EncryptedRCS.FileTransferSigningInput.description.getter();
        }
      }

      else
      {
        *v474 = v89;
        *&v474[8] = v469;
        *&v474[16] = v90;
        v475 = v448;
        v476 = v441;
        LODWORD(v477) = v434;
        v314 = MLS.EncryptedRCS.DeliveryIMDNSigningInput.description.getter();
      }

      v316 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v314, v315, &v480);

      *(v131 + 4) = v316;
      outlined destroy of NSObject?(v0 + 18136, &_s15SecureMessaging3MLSO12SigningInputVSgMd, &_s15SecureMessaging3MLSO12SigningInputVSgMR);
      outlined destroy of NSObject?(v0 + 18136, &_s15SecureMessaging3MLSO12SigningInputVSgMd, &_s15SecureMessaging3MLSO12SigningInputVSgMR);
      _os_log_impl(&dword_264F1F000, v129, v130, "SwiftMLSClientCoordinator processIncoming signed data. { expectedSignedData: %s }", v131, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v132);
      MEMORY[0x266755550](v132, -1, -1);
      MEMORY[0x266755550](v131, -1, -1);
    }

    else
    {

      outlined destroy of NSObject?(v0 + 18136, &_s15SecureMessaging3MLSO12SigningInputVSgMd, &_s15SecureMessaging3MLSO12SigningInputVSgMR);
      outlined destroy of NSObject?(v0 + 18136, &_s15SecureMessaging3MLSO12SigningInputVSgMd, &_s15SecureMessaging3MLSO12SigningInputVSgMR);
    }

    v317 = *(v0 + 20768);
    *v474 = v428;
    *&v474[16] = v89;
    v475 = v469;
    v476 = v90;
    v477 = v448;
    v478 = v441;
    v479 = v434;
    outlined init with copy of MLS.OutgoingEventState?(v317, v0 + 10768, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);

    outlined init with copy of MLS.OutgoingEventState?(v317, v0 + 10432, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);

    MLS.EncryptedRCS.SigningInput.verifiableDerivedContent.getter((v0 + 18824));
    __swift_project_boxed_opaque_existential_1((v0 + 18824), *(v0 + 18848));
    v318 = MLS.Group.IncomingSignedMessage.verifiableDerivedContentData.getter();
    v320 = v319;
    MLS.VerifiableDerivedContent.verifyEquals(_:)();
    if (v455)
    {
      v321 = v455;
      v460 = *(v0 + 21288);
      v431 = *(v0 + 21264);
      v437 = *(v0 + 21256);
      v414 = *(v0 + 21120);
      v420 = *(v0 + 21192);
      v452 = *(v0 + 20864);
      v425 = *(v0 + 20856);
      v444 = *(v0 + 20848);
      v322 = *(v0 + 20768);
      v323 = *(v0 + 20760);
      outlined consume of Data._Representation(v318, v320);
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 18824));
      swift_getErrorValue();
      v324 = Error.readableDescription.getter(*(v0 + 19784), *(v0 + 19792));
      closure #8 in closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:)(v324, v325, v323, v322);

      swift_getErrorValue();
      v326 = Error.readableDescription.getter(*(v0 + 19760), *(v0 + 19768));
      v328 = v327;
      *(v0 + 19704) = 13;
      *(v0 + 19712) = v326;
      *(v0 + 19720) = v327;
      lazy protocol witness table accessor for type MLS.IncomingMessageError and conformance MLS.IncomingMessageError();
      swift_willThrowTypedImpl();

      outlined destroy of NSObject?(v322, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);

      outlined destroy of NSObject?(v322, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);

      swift_allocError();
      *v329 = 13;
      *(v329 + 8) = v326;
      *(v329 + 16) = v328;
      outlined destroy of NSObject?(v0 + 18136, &_s15SecureMessaging3MLSO12SigningInputVSgMd, &_s15SecureMessaging3MLSO12SigningInputVSgMR);
      v464(v420, v414);
      (*(v431 + 8))(v460, v437);
      (*(v425 + 8))(v452, v444);
LABEL_114:

      v399 = *(v0 + 8);

      return v399();
    }

    v461 = *(v0 + 21312);
    v453 = *(v0 + 21304);
    v330 = *(v0 + 20768);
    v331 = *(v0 + 20752);

    outlined destroy of NSObject?(v330, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);

    outlined destroy of NSObject?(v330, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);

    outlined consume of Data._Representation(v318, v320);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 18824));
    v332 = *(v331 + 32);
    *(v0 + 19249) = *(v331 + 41);
    *(v0 + 19240) = v332;
    *(v0 + 20272) = *(v330 + 16);
    v333 = *(v331 + 32);
    *(v0 + 17905) = *(v331 + 41);
    *(v0 + 17896) = v333;
    *&v474[7] = *(v330 + 16);
    *(v0 + 17880) = v453;
    *(v0 + 17888) = v461;
    *(v0 + 17921) = *v474;
    *(v0 + 17936) = *&v474[15];
    v334 = *(v0 + 17896);
    *(v0 + 16696) = *(v0 + 17880);
    *(v0 + 16712) = v334;
    v335 = *(v0 + 17928);
    *(v0 + 16728) = *(v0 + 17912);
    *(v0 + 16744) = v335;
    outlined init with copy of MLS.OutgoingEventState?(v330, v0 + 9592, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    outlined init with copy of MLS.OutgoingEventState?(v0 + 20272, v0 + 20384, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
    outlined init with copy of MLS.OutgoingEventState?(v330, v0 + 9424, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);

    outlined init with copy of MLS.OutgoingEventState?(v0 + 20272, v0 + 20368, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
    outlined init with copy of MLS.AllMember(v0 + 19240, v0 + 19624);
    v336 = Logger.logObject.getter();
    v337 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v336, v337))
    {
      v338 = *(v0 + 21312);
      v339 = *(v0 + 21304);
      v340 = *(v0 + 20768);
      v341 = swift_slowAlloc();
      v342 = swift_slowAlloc();
      *v474 = v342;
      *v341 = 136315138;

      v343 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v339, v338, v474);

      *(v341 + 4) = v343;
      outlined destroy of NSObject?(v340, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
      outlined destroy of NSObject?(v340, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
      _os_log_impl(&dword_264F1F000, v336, v337, "SwiftMLSClientCoordinator processIncoming sending signature verified event { identifier: %s }", v341, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v342);
      MEMORY[0x266755550](v342, -1, -1);
      MEMORY[0x266755550](v341, -1, -1);
    }

    else
    {
      v344 = *(v0 + 20768);

      outlined destroy of NSObject?(v344, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
      outlined destroy of NSObject?(v344, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    }

    v345 = *(v0 + 20760);
    v346 = v345[12];
    v347 = *(v0 + 16744);
    *(v0 + 15712) = *(v0 + 16728);
    *(v0 + 15728) = v347;
    v348 = *(v0 + 16776);
    *(v0 + 15744) = *(v0 + 16760);
    *(v0 + 15760) = v348;
    v349 = *(v0 + 16712);
    *(v0 + 15680) = *(v0 + 16696);
    v350 = *(v0 + 20776);
    *(v0 + 22256) = v346;
    *(v0 + 15696) = v349;
    *(v0 + 15776) = 7;
    outlined init with copy of ServerBag.MLS(v350, v0 + 18944);
    v351 = v345[10];
    *(v0 + 22264) = v351;
    v352 = v345[11];
    *(v0 + 22272) = v352;
    v353 = direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier;
    *(v0 + 22280) = direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier;
    v354 = (v345 + v353);
    v355 = v354[1];
    *(v0 + 20352) = *v354;
    *(v0 + 20360) = v355;

    swift_unknownObjectRetain();

    v356 = swift_task_alloc();
    *(v0 + 22288) = v356;
    *v356 = v0;
    v356[1] = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
    v357 = *(v0 + 20792);
    v358 = *(v0 + 20784);

    return MLS.Group.init(identifier:swiftMLSGroup:persister:clientIdentifier:)(v0 + 13496, v358, v357, v0 + 18944, v351, v352, (v0 + 20352));
  }

  else if (v31 == *MEMORY[0x277D6AAC8])
  {
    v115 = *(v0 + 21152);
    v116 = *(v0 + 21008);
    v117 = *(v0 + 21000);
    (*(*(v0 + 21128) + 96))(v115, *(v0 + 21120));
    outlined init with take of MLS.Group.Member?(v115, v116, &_s8SwiftMLS0B0O5GroupO11StateUpdateVSgMd, &_s8SwiftMLS0B0O5GroupO11StateUpdateVSgMR);
    outlined init with copy of MLS.OutgoingEventState?(v116, v117, &_s8SwiftMLS0B0O5GroupO11StateUpdateVSgMd, &_s8SwiftMLS0B0O5GroupO11StateUpdateVSgMR);
    v118 = type metadata accessor for MLS.Group.StateUpdate();
    *(v0 + 21832) = v118;
    v119 = *(v118 - 8);
    *(v0 + 21840) = v119;
    v120 = *(v119 + 48);
    *(v0 + 21848) = v120;
    *(v0 + 21856) = (v119 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
    v121 = v120(v117, 1, v118);
    v122 = *(v0 + 21000);
    if (v121 == 1)
    {
      v123 = *(v0 + 20760);
      v124 = *(v0 + 20752);
      outlined destroy of NSObject?(*(v0 + 21000), &_s8SwiftMLS0B0O5GroupO11StateUpdateVSgMd, &_s8SwiftMLS0B0O5GroupO11StateUpdateVSgMR);
      if (*(v124 + 32) == *(v123 + direct field offset for MLS.SwiftMLSClientCoordinator.selfMember) && *(v124 + 40) == *(v123 + direct field offset for MLS.SwiftMLSClientCoordinator.selfMember + 8))
      {
        v125 = 1;
      }

      else
      {
        v125 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }
    }

    else
    {
      v125 = MLS.Group.StateUpdate.committerWasSelf.getter();
      (*(v119 + 8))(v122, v118);
    }

    *(v0 + 15570) = v125 & 1;
    v268 = *(v0 + 20776);
    v269 = v268[3];
    v270 = v268[4];
    __swift_project_boxed_opaque_existential_1(v268, v269);
    v471 = (*(v270 + 40) + **(v270 + 40));
    v271 = swift_task_alloc();
    *(v0 + 21864) = v271;
    *v271 = v0;
    v271[1] = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);

    return (v471)(v269, v270);
  }

  else
  {
    if (v31 != *MEMORY[0x277D6AAD0])
    {
      if (v31 != *MEMORY[0x277D6AAB8])
      {
        v283 = *(v0 + 20768);
        outlined init with copy of MLS.OutgoingEventState?(v283, v0 + 2536, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
        outlined init with copy of MLS.OutgoingEventState?(v283, v0 + 2704, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
        v284 = Logger.logObject.getter();
        v285 = static os_log_type_t.fault.getter();
        if (os_log_type_enabled(v284, v285))
        {
          v286 = *(v0 + 21312);
          v287 = *(v0 + 21304);
          v288 = *(v0 + 20768);
          v289 = swift_slowAlloc();
          v290 = swift_slowAlloc();
          *v474 = v290;
          *v289 = 136315138;

          v291 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v287, v286, v474);

          *(v289 + 4) = v291;
          outlined destroy of NSObject?(v288, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
          outlined destroy of NSObject?(v288, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
          _os_log_impl(&dword_264F1F000, v284, v285, "SwiftMLSClientCoordinator processIncoming missing SwiftMLS incoming message type { identifier: %s }", v289, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v290);
          MEMORY[0x266755550](v290, -1, -1);
          MEMORY[0x266755550](v289, -1, -1);
        }

        else
        {
          v379 = *(v0 + 20768);

          outlined destroy of NSObject?(v379, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
          outlined destroy of NSObject?(v379, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
        }

        v380 = *(v0 + 21288);
        v381 = *(v0 + 21264);
        v382 = *(v0 + 21256);
        v383 = *(v0 + 21192);
        v384 = *(v0 + 21152);
        v385 = *(v0 + 21120);
        lazy protocol witness table accessor for type MLS.IncomingMessageError and conformance MLS.IncomingMessageError();
        swift_allocError();
        *v386 = 6;
        *(v386 + 8) = 0;
        *(v386 + 16) = 0;
        swift_willThrow();
        v23(v383, v385);
        (*(v381 + 8))(v380, v382);
        v23(v384, v385);
        goto LABEL_114;
      }

      v235 = *(v0 + 21312);
      v236 = *(v0 + 21304);
      v237 = *(v0 + 20768);
      v238 = *(v0 + 20752);
      v239 = *(v238 + 32);
      *(v0 + 19505) = *(v238 + 41);
      *(v0 + 19496) = v239;
      *(v0 + 20288) = *(v237 + 16);
      v240 = *(v238 + 32);
      *(v0 + 18033) = *(v238 + 41);
      *(v0 + 18024) = v240;
      *&v474[7] = *(v237 + 16);
      *(v0 + 18008) = v236;
      *(v0 + 18016) = v235;
      *(v0 + 18049) = *v474;
      *(v0 + 18064) = *&v474[15];
      v241 = *(v0 + 18024);
      *(v0 + 17080) = *(v0 + 18008);
      *(v0 + 17096) = v241;
      v242 = *(v0 + 18056);
      *(v0 + 17112) = *(v0 + 18040);
      *(v0 + 17128) = v242;
      outlined init with copy of MLS.OutgoingEventState?(v237, v0 + 2872, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
      outlined init with copy of MLS.OutgoingEventState?(v0 + 20288, v0 + 20496, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
      outlined init with copy of MLS.OutgoingEventState?(v237, v0 + 3208, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);

      outlined init with copy of MLS.OutgoingEventState?(v0 + 20288, v0 + 20480, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
      outlined init with copy of MLS.AllMember(v0 + 19496, v0 + 19432);
      v243 = Logger.logObject.getter();
      v244 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v243, v244))
      {
        v245 = *(v0 + 21312);
        v246 = *(v0 + 21304);
        v247 = *(v0 + 20768);
        v248 = swift_slowAlloc();
        v249 = swift_slowAlloc();
        *v474 = v249;
        *v248 = 136315138;

        v250 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v246, v245, v474);

        *(v248 + 4) = v250;
        outlined destroy of NSObject?(v247, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
        outlined destroy of NSObject?(v247, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
        _os_log_impl(&dword_264F1F000, v243, v244, "SwiftMLSClientCoordinator processIncoming sending internal message event { identifier: %s }", v248, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v249);
        MEMORY[0x266755550](v249, -1, -1);
        MEMORY[0x266755550](v248, -1, -1);
      }

      else
      {
        v371 = *(v0 + 20768);

        outlined destroy of NSObject?(v371, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
        outlined destroy of NSObject?(v371, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
      }

      v372 = *(v0 + 20776);
      v373 = *(v0 + 20760);
      *(v0 + 22336) = v373[12];
      v374 = *(v0 + 17128);
      *(v0 + 15608) = *(v0 + 17112);
      *(v0 + 15624) = v374;
      v375 = *(v0 + 17160);
      *(v0 + 15640) = *(v0 + 17144);
      *(v0 + 15656) = v375;
      v376 = *(v0 + 17096);
      *(v0 + 15576) = *(v0 + 17080);
      *(v0 + 15592) = v376;
      *(v0 + 15672) = 9;
      outlined init with copy of ServerBag.MLS(v372, v0 + 18984);
      *(v0 + 22344) = v373[10];
      *(v0 + 22352) = v373[11];
      v377 = direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier;
      *(v0 + 22360) = direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier;
      v378 = (v373 + v377);
      *(v0 + 22368) = *v378;
      *(v0 + 22376) = v378[1];

      swift_unknownObjectRetain();

      v102 = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
      v103 = 0;
      v104 = 0;

      return MEMORY[0x2822009F8](v102, v103, v104);
    }

    v142 = *(v0 + 20768);
    outlined init with copy of MLS.OutgoingEventState?(v142, v0 + 8248, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    outlined init with copy of MLS.OutgoingEventState?(v142, v0 + 7912, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    v143 = Logger.logObject.getter();
    v144 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v143, v144))
    {
      v145 = *(v0 + 21312);
      v146 = *(v0 + 21304);
      v147 = *(v0 + 20768);
      v148 = swift_slowAlloc();
      v149 = swift_slowAlloc();
      *v474 = v149;
      *v148 = 136315138;

      v150 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v146, v145, v474);

      *(v148 + 4) = v150;
      outlined destroy of NSObject?(v147, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
      outlined destroy of NSObject?(v147, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
      _os_log_impl(&dword_264F1F000, v143, v144, "SwiftMLSClientCoordinator processIncoming committing proposal { identifier: %s }", v148, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v149);
      MEMORY[0x266755550](v149, -1, -1);
      MEMORY[0x266755550](v148, -1, -1);
    }

    else
    {
      v272 = *(v0 + 20768);

      outlined destroy of NSObject?(v272, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
      outlined destroy of NSObject?(v272, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    }

    v273 = *(v0 + 21608);
    v274 = *(v0 + 21592);
    v275 = *(v0 + 21584);
    v276 = *(v0 + 21576);
    v277 = *(v0 + 21200);
    v278 = *(v0 + 20776);
    swift_beginAccess();
    Date.init()();
    v274(v277 + *(v276 + 20), 1, 1, v275);
    v273(v277, 0, 1, v276);
    specialized Dictionary.subscript.setter(v277, 0xD000000000000016, 0x80000002651E7960);
    swift_endAccess();
    v279 = v278[3];
    v280 = v278[4];
    __swift_project_boxed_opaque_existential_1(v278, v279);
    v472 = (*(v280 + 248) + **(v280 + 248));
    v281 = swift_task_alloc();
    *(v0 + 22200) = v281;
    *v281 = v0;
    v281[1] = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
    v282 = *(v0 + 20920);

    return (v472)(v282, v279, v280);
  }
}

{
  v554 = v0;
  v1 = *(v0 + 21712);
  if (*(v1 + 16))
  {
    (*(*(v0 + 21128) + 16))(*(v0 + 21064), v1 + ((*(*(v0 + 21128) + 80) + 32) & ~*(*(v0 + 21128) + 80)), *(v0 + 21120));
    v2 = 0;
  }

  else
  {
    v2 = 1;
  }

  v3 = *(v0 + 21128);
  v4 = *(v0 + 21120);
  v5 = *(v0 + 21064);
  (*(v3 + 56))(v5, v2, 1, v4);

  if ((*(v3 + 48))(v5, 1, v4) == 1)
  {
    v6 = *(v0 + 21112);
    v7 = *(v0 + 21088);
    v8 = *(v0 + 21080);
    outlined destroy of NSObject?(*(v0 + 21064), &_s8SwiftMLS0B0O5GroupO15ReceivedMessageOSgMd, &_s8SwiftMLS0B0O5GroupO15ReceivedMessageOSgMR);
    lazy protocol witness table accessor for type MLS.IncomingMessageError and conformance MLS.IncomingMessageError();
    v9 = swift_allocError();
    *v10 = 24;
    *(v10 + 8) = 0;
    *(v10 + 16) = 0;
    swift_willThrow();
    (*(v7 + 8))(v6, v8);
    *(v0 + 22584) = v9;
    *(v0 + 20688) = v9;
    v11 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    if (swift_dynamicCast())
    {
      v12 = (*(*(v0 + 20832) + 88))(*(v0 + 20840), *(v0 + 20824));
      v13 = *(v0 + 20840);
      v14 = *(v0 + 20832);
      v15 = *(v0 + 20824);
      if (v12 == *MEMORY[0x277D6AD10])
      {
        v530 = *(v0 + 21304);
        v538 = *(v0 + 21312);
        v16 = *(v0 + 20816);
        v17 = *(v0 + 20768);
        v18 = *(v0 + 20760);
        v524 = *(v0 + 20752);
        (*(v14 + 96))(v13, v15);
        v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8SwiftMLS0B0O5GroupO6MemberVSg9committer_AH8proposertMd, &_s8SwiftMLS0B0O5GroupO6MemberVSg9committer_AH8proposertMR);
        outlined init with take of MLS.Group.Member?(v13 + *(v19 + 48), v16, &_s8SwiftMLS0B0O5GroupO6MemberVSgMd, &_s8SwiftMLS0B0O5GroupO6MemberVSgMR);
        closure #1 in closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:)(v16, v18, v17, v524, v548);
        v21 = *v548;
        v20 = *&v548[8];
        *(v0 + 22592) = *v548;
        *(v0 + 22600) = v20;
        v22 = *&v548[16];
        *(v0 + 22608) = *&v548[16];
        v23 = v549;
        *(v0 + 15673) = v549;
        *(v0 + 20064) = *(v17 + 16);
        *&v548[7] = *(v17 + 16);
        *(v0 + 17560) = v530;
        *(v0 + 17568) = v538;
        *(v0 + 17576) = v21;
        *(v0 + 17584) = v20;
        *(v0 + 17592) = v22;
        *(v0 + 17600) = v23;
        *(v0 + 17601) = *v548;
        *(v0 + 17616) = *&v548[15];
        v24 = *(v0 + 17576);
        *(v0 + 16792) = *(v0 + 17560);
        *(v0 + 16808) = v24;
        v25 = *(v0 + 17608);
        *(v0 + 16824) = *(v0 + 17592);
        *(v0 + 16840) = v25;
        outlined copy of MLS.AllMember(v21, v20);
        outlined init with copy of MLS.OutgoingEventState?(v17, v0 + 1360, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);

        outlined copy of MLS.AllMember(v21, v20);
        outlined init with copy of MLS.OutgoingEventState?(v0 + 20064, v0 + 20544, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
        outlined init with copy of MLS.OutgoingEventState?(v17, v0 + 1696, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);

        v539 = v21;
        v26 = v21;
        v27 = v20;
        outlined copy of MLS.AllMember(v26, v20);
        outlined init with copy of MLS.OutgoingEventState?(v0 + 20064, v0 + 20528, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
        v28 = Logger.logObject.getter();
        v29 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v28, v29))
        {
          v30 = *(v0 + 21312);
          v31 = *(v0 + 21304);
          v32 = *(v0 + 20768);
          v506 = *(v0 + 20760);
          v33 = swift_slowAlloc();
          v515 = swift_slowAlloc();
          v546[0] = v515;
          *v33 = 136315650;

          v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v30, v546);

          *(v33 + 4) = v34;
          outlined destroy of NSObject?(v32, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
          outlined destroy of NSObject?(v32, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
          *(v33 + 12) = 2080;
          *v548 = v539;
          *&v548[8] = v27;
          *&v548[16] = v22;
          LOBYTE(v549) = v23;
          outlined copy of MLS.AllMember(v539, v27);
          v35 = MLS.AllMember.description.getter();
          v37 = v36;
          outlined consume of MLS.AllMember(*v548, *&v548[8]);
          v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v37, v546);

          *(v33 + 14) = v38;
          outlined consume of MLS.AllMember(v539, v27);
          outlined consume of MLS.AllMember(v539, v27);
          *(v33 + 22) = 2080;
          v39 = *(v506 + direct field offset for MLS.SwiftMLSClientCoordinator.selfMember + 8);
          v40 = *(v506 + direct field offset for MLS.SwiftMLSClientCoordinator.selfMember + 16);
          v41 = *(v506 + direct field offset for MLS.SwiftMLSClientCoordinator.selfMember + 24);
          *v548 = *(v506 + direct field offset for MLS.SwiftMLSClientCoordinator.selfMember);
          *&v548[8] = v39;
          *&v548[16] = v40;
          LOBYTE(v549) = v41;
          outlined copy of MLS.AllMember(*v548, v39);
          v42 = MLS.AllMember.description.getter();
          v44 = v43;
          outlined consume of MLS.AllMember(*v548, *&v548[8]);
          v45 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, v44, v546);

          *(v33 + 24) = v45;

          _os_log_impl(&dword_264F1F000, v28, v29, "SwiftMLSClientCoordinator processIncoming received removedFromGroup error. Delivering self kicked event { identifier: %s, sender: %s, selfMember: %s }", v33, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x266755550](v515, -1, -1);
          MEMORY[0x266755550](v33, -1, -1);
        }

        else
        {
          v145 = *(v0 + 20768);

          outlined destroy of NSObject?(v145, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
          outlined destroy of NSObject?(v145, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
          outlined consume of MLS.AllMember(v539, v20);
          outlined consume of MLS.AllMember(v539, v20);
        }

        v146 = *(v0 + 21664);
        v147 = *(v0 + 20792);
        v148 = *(v0 + 20760);
        if ((v146 & 0x100000000) != 0)
        {
          v146 = 1;
        }

        else
        {
          v146 = v146;
        }

        v149 = *(v0 + 21640) + 1;
        *(v0 + 14536) = *(v0 + 20784);
        *(v0 + 14544) = v147;
        *(v0 + 14552) = v146;
        *(v0 + 14560) = v146;
        *(v0 + 14568) = v149;
        *(v0 + 14576) = xmmword_2651B68A0;
        *(v0 + 14592) = xmmword_2651B68A0;
        *(v0 + 14608) = xmmword_2651B68A0;
        *(v0 + 14624) = xmmword_2651B5F50;
        v150 = *(v148 + 96);
        v151 = *(v0 + 16840);
        *(v0 + 15920) = *(v0 + 16824);
        *(v0 + 15936) = v151;
        v152 = *(v0 + 16872);
        *(v0 + 15952) = *(v0 + 16856);
        *(v0 + 15968) = v152;
        v153 = *(v0 + 16808);
        *(v0 + 15888) = *(v0 + 16792);
        *(v0 + 15904) = v153;
        v154 = *(v0 + 14584);
        *(v0 + 13424) = *(v0 + 14568);
        *(v0 + 13440) = v154;
        v155 = *(v0 + 14616);
        *(v0 + 13456) = *(v0 + 14600);
        *(v0 + 13472) = v155;
        v156 = *(v0 + 14536);
        *(v0 + 13408) = *(v0 + 14552);
        *(v0 + 15984) = 4;
        *(v0 + 13488) = *(v0 + 14632);
        *(v0 + 13392) = v156;
        v546[0] = v539;
        v546[1] = v27;
        v546[2] = v22;
        v547 = v23;
        v157 = v148 + direct field offset for MLS.SwiftMLSClientCoordinator.selfMember;
        v159 = *(v157 + 8);
        v160 = *(v157 + 16);
        v161 = *(v157 + 24);
        *v548 = *v157;
        v158 = *v548;
        *&v548[8] = v159;
        *&v548[16] = v160;
        LOBYTE(v549) = v161;

        outlined copy of MLS.AllMember(v158, v159);
        v162 = specialized static MLS.AllMember.== infix(_:_:)(v546, v548);
        outlined consume of MLS.AllMember(*v548, *&v548[8]);
        v540 = (*(*v150 + 384) + **(*v150 + 384));
        v163 = swift_task_alloc();
        *(v0 + 22616) = v163;
        *v163 = v0;
        v163[1] = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);

        return (v540)(v0 + 15888, v0 + 13392, 1, v162);
      }

      (*(*(v0 + 21264) + 8))(*(v0 + 21288), *(v0 + 21256));
      (*(v14 + 8))(v13, v15);
    }

    else
    {
      (*(*(v0 + 21264) + 8))(*(v0 + 21288), *(v0 + 21256));
    }

    goto LABEL_132;
  }

  v516 = *(v0 + 21720);
  v46 = *(v0 + 21064);
  v47 = *(v0 + 21192);
  v48 = *(v0 + 21168);
  v49 = *(v0 + 21128);
  v50 = *(v0 + 21120);
  v51 = *(v0 + 21112);
  v52 = *(v0 + 21080);
  v53 = *(v0 + 20768);
  v54 = *(*(v0 + 21088) + 8);
  *(v0 + 21752) = v54;
  v54(v51, v52);
  (*(v49 + 32))(v47, v46, v50);
  v548[0] = 7;
  swift_beginAccess();
  MetricCollector.end(metric:)(v548);
  swift_endAccess();
  v55 = *(v49 + 16);
  v55(v48, v47, v50);
  outlined init with copy of MLS.OutgoingEventState?(v53, v0 + 2200, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
  outlined init with copy of MLS.OutgoingEventState?(v53, v0 + 2368, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
  v56 = Logger.logObject.getter();
  v57 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v56, v57))
  {
    v58 = *(v0 + 21312);
    v59 = *(v0 + 21304);
    v500 = *(v0 + 21160);
    v507 = *(v0 + 21168);
    v60 = *(v0 + 21128);
    v61 = *(v0 + 21120);
    v62 = *(v0 + 20768);
    v63 = swift_slowAlloc();
    v531 = swift_slowAlloc();
    *v548 = v531;
    *v63 = 136315394;

    v64 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v59, v58, v548);

    *(v63 + 4) = v64;
    outlined destroy of NSObject?(v62, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    outlined destroy of NSObject?(v62, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    *(v63 + 12) = 2080;
    v55(v500, v507, v61);
    v65 = String.init<A>(describing:)();
    v67 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v65, v66, v548);

    *(v63 + 14) = v67;
    v68 = *(v60 + 8);
    v68(v507, v61);
    _os_log_impl(&dword_264F1F000, v56, v57, "SwiftMLSClientCoordinator processIncoming processed message { identifier: %s, message: %s }", v63, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v531, -1, -1);
    MEMORY[0x266755550](v63, -1, -1);
  }

  else
  {
    v69 = *(v0 + 21168);
    v70 = *(v0 + 21128);
    v71 = *(v0 + 21120);
    v72 = *(v0 + 20768);

    outlined destroy of NSObject?(v72, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    outlined destroy of NSObject?(v72, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    v68 = *(v70 + 8);
    v68(v69, v71);
  }

  *(v0 + 21760) = v68;
  v73 = *(v0 + 21152);
  v74 = *(v0 + 21128);
  v75 = *(v0 + 21120);
  v55(v73, *(v0 + 21192), v75);
  v76 = (*(v74 + 88))(v73, v75);
  if (v76 == *MEMORY[0x277D6AAA8])
  {
    v77 = *(v0 + 21152);
    v78 = *(v0 + 20768);
    (*(*(v0 + 21128) + 96))(v77, *(v0 + 21120));
    v79 = (v77 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8SwiftMLS0B0O8IdentityO07SigningC0VSg6sender_10Foundation4DataV4datatMd, &_s8SwiftMLS0B0O8IdentityO07SigningC0VSg6sender_10Foundation4DataV4datatMR) + 48));
    v80 = *v79;
    *(v0 + 21768) = *v79;
    v81 = v79[1];
    *(v0 + 21776) = v81;
    v82 = *(v0 + 20768);
    if (*(v78 + 104) >> 60 == 15)
    {
      v83 = *(v0 + 20800);
      v84 = *(v0 + 20752);
      v86 = v84[1];
      v85 = v84[2];
      v87 = *v84;
      *(v0 + 18498) = *(v84 + 42);
      *(v0 + 18472) = v86;
      *(v0 + 18488) = v85;
      *(v0 + 18456) = v87;
      swift_beginAccess();
      *(v0 + 20712) = *(v83 + 16);
      v88 = *v82;
      v89 = *(v82 + 16);
      *(v0 + 9792) = *(v82 + 32);
      *(v0 + 9776) = v89;
      *(v0 + 9760) = v88;
      v90 = *(v82 + 48);
      v91 = *(v82 + 64);
      v92 = *(v82 + 80);
      *(v0 + 9856) = *(v82 + 96);
      *(v0 + 9840) = v92;
      *(v0 + 9824) = v91;
      *(v0 + 9808) = v90;
      v93 = *(v82 + 112);
      v94 = *(v82 + 128);
      v95 = *(v82 + 144);
      *(v0 + 9920) = *(v82 + 160);
      *(v0 + 9904) = v95;
      *(v0 + 9888) = v94;
      *(v0 + 9872) = v93;

      v96 = swift_task_alloc();
      *(v0 + 21784) = v96;
      *v96 = v0;
      v96[1] = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
      v97 = *(v0 + 21312);
      v98 = *(v0 + 21304);
      v99 = *(v0 + 20792);
      v100 = *(v0 + 20784);
      v101 = *(v0 + 20776);
      v102 = *(v0 + 20744);
      v557 = v0 + 20712;
      v558 = v0 + 9760;
      v556 = v101;
      v103 = v0 + 18456;
      v104 = v80;
      v105 = v81;
LABEL_86:

      return MLS.SwiftMLSClientCoordinator.handleIncomingApplicationMessage(eventIdentifier:message:applicationMessageData:group:swiftMLSGroup:metricCollector:context:)(v102, v98, v97, v103, v104, v105, v100, v99);
    }

    v517 = v81;
    v525 = v80;
    v55(*(v0 + 21144), *(v0 + 21192), *(v0 + 21120));
    outlined init with copy of MLS.OutgoingEventState?(v82, v0 + 10264, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    outlined init with copy of MLS.OutgoingEventState?(v82, v0 + 10600, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    v114 = Logger.logObject.getter();
    v115 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v114, v115))
    {
      v116 = *(v0 + 21312);
      v117 = *(v0 + 21304);
      v532 = v68;
      v118 = *(v0 + 21160);
      v119 = *(v0 + 21144);
      v493 = *(v0 + 21120);
      v120 = *(v0 + 20768);
      v121 = swift_slowAlloc();
      v508 = swift_slowAlloc();
      *v548 = v508;
      *v121 = 136315394;

      v122 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v117, v116, v548);

      *(v121 + 4) = v122;
      outlined destroy of NSObject?(v120, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
      outlined destroy of NSObject?(v120, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
      *(v121 + 12) = 2080;
      v55(v118, v119, v493);
      v68 = v532;
      v123 = String.init<A>(describing:)();
      v125 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v123, v124, v548);

      *(v121 + 14) = v125;
      v532(v119, v493);
      _os_log_impl(&dword_264F1F000, v114, v115, "SwiftMLSClientCoordinator processIncoming processed message had no AAD { identifier: %s, message: %s }", v121, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266755550](v508, -1, -1);
      MEMORY[0x266755550](v121, -1, -1);
    }

    else
    {
      v170 = *(v0 + 21144);
      v171 = *(v0 + 21120);
      v172 = *(v0 + 20768);

      outlined destroy of NSObject?(v172, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
      outlined destroy of NSObject?(v172, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
      v68(v170, v171);
    }

    v173 = *(v0 + 21288);
    v174 = *(v0 + 21264);
    v175 = *(v0 + 21256);
    v176 = *(v0 + 21192);
    v177 = *(v0 + 21152);
    v178 = *(v0 + 21120);
    lazy protocol witness table accessor for type MLS.IncomingMessageError and conformance MLS.IncomingMessageError();
    swift_allocError();
    *v179 = 14;
    *(v179 + 8) = 0;
    *(v179 + 16) = 0;
    swift_willThrow();
    outlined consume of Data._Representation(v525, v517);
    v68(v176, v178);
    (*(v174 + 8))(v173, v175);
    outlined destroy of NSObject?(v177, &_s8SwiftMLS0B0O8IdentityO07SigningC0VSgMd, &_s8SwiftMLS0B0O8IdentityO07SigningC0VSgMR);
LABEL_132:

    v464 = *(v0 + 8);

    return v464();
  }

  if (v76 == *MEMORY[0x277D6AAB0])
  {
    v106 = *(v0 + 21152);
    v107 = *(v0 + 21048);
    v108 = *(v0 + 21024);
    v109 = *(v0 + 21016);
    (*(*(v0 + 21128) + 96))(v106, *(v0 + 21120));
    (*(v108 + 32))(v107, v106, v109);
    v110 = MLS.Group.IncomingApplicationMessageDetails.messageID.getter();
    v112 = v111 >> 62;
    if ((v111 >> 62) > 1)
    {
      if (v112 != 2)
      {
        outlined consume of Data._Representation(v110, v111);
LABEL_57:
        v201 = MLS.Group.IncomingApplicationMessageDetails.originalMessageID.getter();
        v203 = v202 >> 62;
        if ((v202 >> 62) <= 1)
        {
          if (!v203)
          {
            v204 = BYTE6(v202);
            outlined consume of Data._Representation(v201, v202);
            v205 = v204;
            goto LABEL_69;
          }

          v217 = HIDWORD(v201);
          v218 = v201;
          v167 = outlined consume of Data._Representation(v201, v202);
          LODWORD(v205) = v217 - v218;
          if (!__OFSUB__(v217, v218))
          {
            v205 = v205;
            goto LABEL_69;
          }

          goto LABEL_137;
        }

        if (v203 != 2)
        {
          outlined consume of Data._Representation(v201, v202);
          goto LABEL_85;
        }

        v206 = *(v201 + 16);
        v207 = *(v201 + 24);
        v76 = outlined consume of Data._Representation(v201, v202);
        v205 = v207 - v206;
        if (!__OFSUB__(v207, v206))
        {
LABEL_69:
          if (!v205)
          {
            goto LABEL_85;
          }

          goto LABEL_70;
        }

        __break(1u);
        goto LABEL_64;
      }

      v165 = *(v110 + 16);
      v166 = *(v110 + 24);
      v167 = outlined consume of Data._Representation(v110, v111);
      if (!__OFSUB__(v166, v165))
      {
        if (v166 == v165)
        {
          goto LABEL_57;
        }

        goto LABEL_70;
      }

      __break(1u);
    }

    else
    {
      if (!v112)
      {
        v113 = BYTE6(v111);
        outlined consume of Data._Representation(v110, v111);
        if (!v113)
        {
          goto LABEL_57;
        }

LABEL_70:
        v219 = *(v0 + 20768);
        v220 = v219[13];
        if (v220 >> 60 == 15)
        {
          v55(*(v0 + 21136), *(v0 + 21192), *(v0 + 21120));
          outlined init with copy of MLS.OutgoingEventState?(v219, v0 + 4720, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
          outlined init with copy of MLS.OutgoingEventState?(v219, v0 + 4888, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
          v221 = Logger.logObject.getter();
          v222 = static os_log_type_t.default.getter();
          v534 = v68;
          if (os_log_type_enabled(v221, v222))
          {
            v518 = v55;
            v223 = *(v0 + 21312);
            v224 = *(v0 + 21304);
            v225 = *(v0 + 21160);
            v510 = *(v0 + 21136);
            v226 = *(v0 + 21120);
            v227 = *(v0 + 20768);
            v228 = swift_slowAlloc();
            v229 = swift_slowAlloc();
            *v548 = v229;
            *v228 = 136315394;

            v230 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v224, v223, v548);

            *(v228 + 4) = v230;
            outlined destroy of NSObject?(v227, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
            outlined destroy of NSObject?(v227, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
            *(v228 + 12) = 2080;
            v518(v225, v510, v226);
            v231 = String.init<A>(describing:)();
            v233 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v231, v232, v548);

            *(v228 + 14) = v233;
            v534(v510, v226);
            _os_log_impl(&dword_264F1F000, v221, v222, "SwiftMLSClientCoordinator processIncoming processed message had unexpected AAD { identifier: %s, message: %s }", v228, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x266755550](v229, -1, -1);
            MEMORY[0x266755550](v228, -1, -1);
          }

          else
          {
            v249 = *(v0 + 21136);
            v250 = *(v0 + 21120);
            v251 = *(v0 + 20768);

            outlined destroy of NSObject?(v251, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
            outlined destroy of NSObject?(v251, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
            v68(v249, v250);
          }

          v527 = *(v0 + 21288);
          v252 = *(v0 + 21264);
          v253 = *(v0 + 21256);
          v254 = *(v0 + 21192);
          v255 = *(v0 + 21120);
          v256 = *(v0 + 21048);
          v257 = *(v0 + 21024);
          v258 = *(v0 + 21016);
          lazy protocol witness table accessor for type MLS.IncomingMessageError and conformance MLS.IncomingMessageError();
          swift_allocError();
          *v259 = 15;
          *(v259 + 8) = 0;
          *(v259 + 16) = 0;
          swift_willThrow();
          (*(v257 + 8))(v256, v258);
          v534(v254, v255);
          (*(v252 + 8))(v527, v253);
          goto LABEL_132;
        }

        v234 = v219[12];
        v235 = v219[14];
        v236 = v219[15];
        v238 = v219[16];
        v237 = v219[17];
        outlined copy of MLS.AdditionalAuthenticatedData?(v234, v220, v235, v236, v238, v237);
        outlined copy of Data._Representation(v234, v220);
        v526 = v237;
        outlined copy of Data?(v238, v237);
        v239 = MLS.Group.IncomingApplicationMessageDetails.messageID.getter();
        v241 = v240;
        v242 = specialized static Data.== infix(_:_:)(v234, v220, v239, v240);
        outlined consume of Data._Representation(v239, v241);
        if (!v242)
        {
          v535 = v68;
          v260 = *(v0 + 20768);
          (*(*(v0 + 21024) + 16))(*(v0 + 21040), *(v0 + 21048), *(v0 + 21016));
          outlined init with copy of MLS.OutgoingEventState?(v260, v0 + 5392, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
          outlined copy of MLS.AdditionalAuthenticatedData?(v234, v220, v235, v236, v238, v526);
          outlined init with copy of MLS.OutgoingEventState?(v260, v0 + 5560, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
          v495 = v220;
          v520 = v235;
          v502 = v238;
          v511 = v236;
          outlined copy of MLS.AdditionalAuthenticatedData?(v234, v220, v235, v236, v238, v526);
          v261 = Logger.logObject.getter();
          v262 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v261, v262))
          {
            v542 = v262;
            v263 = *(v0 + 21312);
            v264 = *(v0 + 21304);
            v472 = *(v0 + 21040);
            v482 = *(v0 + 21024);
            v489 = *(v0 + 21016);
            v265 = *(v0 + 20768);
            v266 = swift_slowAlloc();
            v476 = swift_slowAlloc();
            *v548 = v476;
            *v266 = 136315650;

            v267 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v264, v263, v548);

            *(v266 + 4) = v267;
            outlined destroy of NSObject?(v265, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
            outlined destroy of NSObject?(v265, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
            log = v261;
            *(v266 + 12) = 2080;
            outlined copy of Data._Representation(v234, v495);
            v268 = Data.description.getter();
            v270 = v269;
            outlined consume of Data._Representation(v234, v495);
            v271 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v268, v270, v548);

            *(v266 + 14) = v271;
            v272 = v526;
            outlined consume of MLS.AdditionalAuthenticatedData?(v234, v495, v235, v236, v502, v526);
            outlined consume of MLS.AdditionalAuthenticatedData?(v234, v495, v235, v236, v502, v526);
            *(v266 + 22) = 2080;
            v273 = MLS.Group.IncomingApplicationMessageDetails.messageID.getter();
            v275 = v274;
            v276 = Data.description.getter();
            v278 = v277;
            outlined consume of Data._Representation(v273, v275);
            v279 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v276, v278, v548);

            *(v266 + 24) = v279;
            v280 = v489;
            v490 = *(v482 + 8);
            v490(v472, v280);
            _os_log_impl(&dword_264F1F000, log, v542, "SwiftMLSClientCoordinator processIncoming processed message had mismatched AAD messageID { identifier: %s, clientMessageID: %s, messageID: %s }", v266, 0x20u);
            swift_arrayDestroy();
            MEMORY[0x266755550](v476, -1, -1);
            MEMORY[0x266755550](v266, -1, -1);
          }

          else
          {
            v325 = *(v0 + 21040);
            v326 = *(v0 + 21024);
            v327 = *(v0 + 21016);
            v328 = *(v0 + 20768);

            outlined destroy of NSObject?(v328, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
            outlined destroy of NSObject?(v328, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
            v272 = v526;
            outlined consume of MLS.AdditionalAuthenticatedData?(v234, v495, v520, v236, v502, v526);
            outlined consume of MLS.AdditionalAuthenticatedData?(v234, v495, v520, v236, v502, v526);
            v490 = *(v326 + 8);
            v490(v325, v327);
          }

          v329 = *(v0 + 21264);
          v473 = *(v0 + 21256);
          v477 = *(v0 + 21288);
          v466 = *(v0 + 21120);
          loga = *(v0 + 21192);
          v330 = *(v0 + 21048);
          v331 = *(v0 + 21016);
          lazy protocol witness table accessor for type MLS.IncomingMessageError and conformance MLS.IncomingMessageError();
          swift_allocError();
          *v332 = 16;
          *(v332 + 8) = 0;
          *(v332 + 16) = 0;
          swift_willThrow();
          outlined consume of MLS.AdditionalAuthenticatedData?(v234, v495, v520, v511, v502, v272);
          outlined consume of MLS.AdditionalAuthenticatedData?(v234, v495, v520, v511, v502, v272);
          v490(v330, v331);
          v535(loga, v466);
          (*(v329 + 8))(v477, v473);
          goto LABEL_132;
        }

        v488 = v234;
        v243 = v526;
        if (v526 >> 60 != 15)
        {
          v519 = v235;
          outlined copy of Data._Representation(v238, v526);
          v244 = MLS.Group.IncomingApplicationMessageDetails.originalMessageID.getter();
          v246 = v245;
          v247 = specialized static Data.== infix(_:_:)(v238, v526, v244, v245);
          outlined consume of Data._Representation(v244, v246);
          if (!v247)
          {
            v496 = v220;
            v536 = v68;
            v357 = *(v0 + 20768);
            (*(*(v0 + 21024) + 16))(*(v0 + 21032), *(v0 + 21048), *(v0 + 21016));
            outlined init with copy of MLS.OutgoingEventState?(v357, v0 + 520, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
            outlined copy of Data?(v238, v526);
            outlined init with copy of MLS.OutgoingEventState?(v357, v0 + 9256, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
            outlined copy of Data?(v238, v526);
            v358 = Logger.logObject.getter();
            v359 = static os_log_type_t.error.getter();
            v360 = v238;
            v503 = v238;
            if (os_log_type_enabled(v358, v359))
            {
              v361 = *(v0 + 21312);
              v362 = *(v0 + 21304);
              v363 = *(v0 + 21032);
              v478 = *(v0 + 21024);
              v483 = *(v0 + 21016);
              v364 = *(v0 + 20768);
              v365 = swift_slowAlloc();
              v545 = swift_slowAlloc();
              *v548 = v545;
              *v365 = 136315650;

              v366 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v362, v361, v548);

              *(v365 + 4) = v366;
              outlined destroy of NSObject?(v364, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
              outlined destroy of NSObject?(v364, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
              v474 = v359;
              *(v365 + 12) = 2080;
              outlined copy of Data._Representation(v360, v526);
              v367 = Data.description.getter();
              v369 = v368;
              outlined consume of Data?(v360, v526);
              v370 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v367, v369, v548);

              *(v365 + 14) = v370;
              outlined consume of Data?(v360, v526);
              outlined consume of Data?(v360, v526);
              *(v365 + 22) = 2080;
              v371 = MLS.Group.IncomingApplicationMessageDetails.originalMessageID.getter();
              v373 = v372;
              v374 = Data.description.getter();
              v376 = v375;
              outlined consume of Data._Representation(v371, v373);
              v377 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v374, v376, v548);

              *(v365 + 24) = v377;
              v378 = v483;
              v484 = *(v478 + 8);
              v484(v363, v378);
              _os_log_impl(&dword_264F1F000, v358, v474, "SwiftMLSClientCoordinator processIncoming processed message had mismatched AAD originalMessageID { identifier: %s, clientOriginalMessageID: %s, originalMessageID: %s }", v365, 0x20u);
              swift_arrayDestroy();
              MEMORY[0x266755550](v545, -1, -1);
              MEMORY[0x266755550](v365, -1, -1);
            }

            else
            {
              v452 = *(v0 + 21032);
              v453 = *(v0 + 21024);
              v454 = *(v0 + 21016);
              v455 = *(v0 + 20768);

              outlined destroy of NSObject?(v455, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
              outlined destroy of NSObject?(v455, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
              outlined consume of Data?(v238, v526);
              outlined consume of Data?(v238, v526);
              v484 = *(v453 + 8);
              v484(v452, v454);
            }

            v456 = *(v0 + 21264);
            v475 = *(v0 + 21256);
            v480 = *(v0 + 21288);
            v467 = *(v0 + 21120);
            logb = *(v0 + 21192);
            v465 = *(v0 + 21048);
            v457 = *(v0 + 21016);
            lazy protocol witness table accessor for type MLS.IncomingMessageError and conformance MLS.IncomingMessageError();
            swift_allocError();
            *v458 = 16;
            *(v458 + 8) = 0;
            *(v458 + 16) = 0;
            swift_willThrow();
            outlined consume of Data?(v503, v526);
            outlined consume of MLS.AdditionalAuthenticatedData?(v488, v496, v519, v236, v503, v526);
            outlined consume of MLS.AdditionalAuthenticatedData?(v488, v496, v519, v236, v503, v526);
            v484(v465, v457);
            v536(logb, v467);
            (*(v456 + 8))(v480, v475);
            goto LABEL_132;
          }

          outlined consume of Data?(v238, v526);
          v235 = v519;
        }

        v248 = MLS.Group.IncomingApplicationMessageDetails.era.getter();
        if ((v248 & 0x100000000) == 0 && v235 != v248)
        {
          v537 = v68;
          v498 = v248;
          v424 = *(v0 + 20768);
          outlined init with copy of MLS.OutgoingEventState?(v424, v0 + 6736, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
          outlined init with copy of MLS.OutgoingEventState?(v424, v0 + 6904, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
          v523 = v235;
          v514 = v236;
          outlined copy of MLS.AdditionalAuthenticatedData?(v488, v220, v235, v236, v238, v526);
          v425 = Logger.logObject.getter();
          v426 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v425, v426))
          {
            v427 = *(v0 + 21312);
            v505 = v238;
            v428 = *(v0 + 21304);
            v429 = *(v0 + 20768);
            v430 = swift_slowAlloc();
            v431 = swift_slowAlloc();
            *v548 = v431;
            *v430 = 136315650;

            v432 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v428, v427, v548);

            *(v430 + 4) = v432;
            outlined destroy of NSObject?(v429, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
            outlined destroy of NSObject?(v429, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
            v433 = v220;
            *(v430 + 12) = 1024;
            *(v430 + 14) = v523;
            v434 = v488;
            v435 = v505;
            v243 = v526;
            outlined consume of MLS.AdditionalAuthenticatedData?(v488, v220, v523, v514, v505, v526);
            *(v430 + 18) = 1024;
            *(v430 + 20) = v498;
            _os_log_impl(&dword_264F1F000, v425, v426, "SwiftMLSClientCoordinator processIncoming processed message had mismatched AAD era { identifier: %s, clientEra: %u, era: %u }", v430, 0x18u);
            __swift_destroy_boxed_opaque_existential_1Tm(v431);
            MEMORY[0x266755550](v431, -1, -1);
            MEMORY[0x266755550](v430, -1, -1);
          }

          else
          {
            v459 = *(v0 + 20768);

            outlined destroy of NSObject?(v459, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
            outlined destroy of NSObject?(v459, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
            outlined consume of MLS.AdditionalAuthenticatedData?(v488, v220, v235, v236, v238, v526);
            v435 = v238;
            v433 = v220;
            v434 = v488;
          }

          v499 = *(v0 + 21288);
          v460 = *(v0 + 21264);
          v486 = *(v0 + 21192);
          v492 = *(v0 + 21256);
          v481 = *(v0 + 21120);
          logc = *(v0 + 21048);
          v461 = *(v0 + 21024);
          v462 = *(v0 + 21016);
          lazy protocol witness table accessor for type MLS.IncomingMessageError and conformance MLS.IncomingMessageError();
          swift_allocError();
          *v463 = 16;
          *(v463 + 8) = 0;
          *(v463 + 16) = 0;
          swift_willThrow();
          outlined consume of MLS.AdditionalAuthenticatedData?(v434, v433, v523, v514, v435, v243);
          outlined consume of MLS.AdditionalAuthenticatedData?(v434, v433, v523, v514, v435, v243);
          (*(v461 + 8))(logc, v462);
          v537(v486, v481);
          (*(v460 + 8))(v499, v492);
          goto LABEL_132;
        }

        outlined consume of MLS.AdditionalAuthenticatedData?(v488, v220, v235, v236, v238, v526);
        outlined consume of MLS.AdditionalAuthenticatedData?(v488, v220, v235, v236, v238, v526);
LABEL_85:
        v281 = *(v0 + 20800);
        v282 = *(v0 + 20768);
        v283 = *(v0 + 20752);
        v285 = v283[1];
        v284 = v283[2];
        v286 = *v283;
        *(v0 + 18562) = *(v283 + 42);
        *(v0 + 18536) = v285;
        *(v0 + 18552) = v284;
        *(v0 + 18520) = v286;
        v287 = MLS.Group.IncomingApplicationMessageDetails.data.getter();
        v289 = v288;
        *(v0 + 21800) = v287;
        *(v0 + 21808) = v288;
        swift_beginAccess();
        *(v0 + 20720) = *(v281 + 16);
        v290 = *v282;
        v291 = v282[1];
        *(v0 + 6432) = v282[2];
        *(v0 + 6416) = v291;
        *(v0 + 6400) = v290;
        v292 = v282[3];
        v293 = v282[4];
        v294 = v282[5];
        *(v0 + 6496) = v282[6];
        *(v0 + 6480) = v294;
        *(v0 + 6464) = v293;
        *(v0 + 6448) = v292;
        v295 = v282[7];
        v296 = v282[8];
        v297 = v282[9];
        *(v0 + 6560) = *(v282 + 20);
        *(v0 + 6544) = v297;
        *(v0 + 6528) = v296;
        *(v0 + 6512) = v295;

        v298 = swift_task_alloc();
        *(v0 + 21816) = v298;
        *v298 = v0;
        v298[1] = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
        v97 = *(v0 + 21312);
        v98 = *(v0 + 21304);
        v99 = *(v0 + 20792);
        v100 = *(v0 + 20784);
        v299 = *(v0 + 20776);
        v102 = *(v0 + 20744);
        v557 = v0 + 20720;
        v558 = v0 + 6400;
        v556 = v299;
        v103 = v0 + 18520;
        v104 = v287;
        v105 = v289;
        goto LABEL_86;
      }

      v199 = HIDWORD(v110);
      v200 = v110;
      v167 = outlined consume of Data._Representation(v110, v111);
      if (!__OFSUB__(v199, v200))
      {
        if (v199 == v200)
        {
          goto LABEL_57;
        }

        goto LABEL_70;
      }
    }

    __break(1u);
LABEL_137:
    __break(1u);
    return MEMORY[0x2822009F8](v167, v168, v169);
  }

  if (v76 == *MEMORY[0x277D6AAC0])
  {
    v533 = v68;
    v126 = *(v0 + 21152);
    v127 = *(v0 + 20864);
    v128 = *(v0 + 20856);
    v129 = *(v0 + 20848);
    v130 = *(v0 + 20768);
    (*(*(v0 + 21128) + 96))(v126, *(v0 + 21120));
    (*(v128 + 32))(v127, v126, v129);
    v132 = v130[3];
    v131 = v130[4];
    v133 = v130[2];
    *(v0 + 18180) = *(v130 + 76);
    *(v0 + 18152) = v132;
    *(v0 + 18168) = v131;
    *(v0 + 18136) = v133;
    v134 = *(v0 + 18152);
    v135 = *(v0 + 18168);
    if (v134 >> 16 == 0xFFFFFFFF && (v135 & 0x3000000000000000) == 0)
    {
      v136 = *(v0 + 20768);
      outlined init with copy of MLS.OutgoingEventState?(v136, v0 + 856, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
      outlined init with copy of MLS.OutgoingEventState?(v136, v0 + 10936, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
      v137 = Logger.logObject.getter();
      v138 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v137, v138))
      {
        v139 = *(v0 + 21312);
        v140 = *(v0 + 21304);
        v141 = *(v0 + 20768);
        v142 = swift_slowAlloc();
        v143 = swift_slowAlloc();
        *v548 = v143;
        *v142 = 136315138;

        v144 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v140, v139, v548);

        *(v142 + 4) = v144;
        outlined destroy of NSObject?(v141, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
        outlined destroy of NSObject?(v141, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
        _os_log_impl(&dword_264F1F000, v137, v138, "SwiftMLSClientCoordinator processIncoming signed message was not given expected data { identifier: %s }", v142, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v143);
        MEMORY[0x266755550](v143, -1, -1);
        MEMORY[0x266755550](v142, -1, -1);
      }

      else
      {
        v316 = *(v0 + 20768);

        outlined destroy of NSObject?(v316, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
        outlined destroy of NSObject?(v316, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
      }

      v317 = *(v0 + 21288);
      v318 = *(v0 + 21264);
      v319 = *(v0 + 21256);
      v320 = *(v0 + 21192);
      v321 = *(v0 + 21120);
      v528 = *(v0 + 20864);
      v322 = *(v0 + 20856);
      v323 = *(v0 + 20848);
      lazy protocol witness table accessor for type MLS.IncomingMessageError and conformance MLS.IncomingMessageError();
      swift_allocError();
      *v324 = 12;
      *(v324 + 8) = 0;
      *(v324 + 16) = 0;
      swift_willThrow();
      v533(v320, v321);
      (*(v318 + 8))(v317, v319);
      (*(v322 + 8))(v528, v323);
      goto LABEL_132;
    }

    v494 = *(v0 + 18192);
    v501 = *(v0 + 18184);
    v509 = *(v0 + 18176);
    v541 = *(v0 + 18160);
    v487 = *(v0 + 18136);
    v192 = v130[3];
    v191 = v130[4];
    v193 = v130[2];
    *(v0 + 18244) = *(v130 + 76);
    *(v0 + 18216) = v192;
    *(v0 + 18232) = v191;
    *(v0 + 18200) = v193;
    outlined init with copy of MLS.OutgoingEventState?(v0 + 18136, v0 + 18264, &_s15SecureMessaging3MLSO12SigningInputVSgMd, &_s15SecureMessaging3MLSO12SigningInputVSgMR);
    outlined init with copy of MLS.OutgoingEventState?(v0 + 18136, v0 + 18328, &_s15SecureMessaging3MLSO12SigningInputVSgMd, &_s15SecureMessaging3MLSO12SigningInputVSgMR);
    outlined init with copy of MLS.SigningInput(v0 + 18200, v0 + 18392);
    v194 = Logger.logObject.getter();
    v195 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v194, v195))
    {
      v196 = swift_slowAlloc();
      v197 = swift_slowAlloc();
      v546[0] = v197;
      *v196 = 136315138;
      v198 = (v135 >> 60) & 3;
      if (v198)
      {
        *v548 = v134;
        *&v548[8] = v541;
        *&v548[16] = v135 & 0xCFFFFFFFFFFFFFFFLL;
        if (v198 == 1)
        {
          v549 = v509;
          v550 = v501;
          LOWORD(v551) = v494;
          v379 = MLS.EncryptedRCS.DisplayIMDNSigningInput.description.getter();
        }

        else
        {
          v379 = MLS.EncryptedRCS.FileTransferSigningInput.description.getter();
        }
      }

      else
      {
        *v548 = v134;
        *&v548[8] = v541;
        *&v548[16] = v135;
        v549 = v509;
        v550 = v501;
        LODWORD(v551) = v494;
        v379 = MLS.EncryptedRCS.DeliveryIMDNSigningInput.description.getter();
      }

      v381 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v379, v380, v546);

      *(v196 + 4) = v381;
      outlined destroy of NSObject?(v0 + 18136, &_s15SecureMessaging3MLSO12SigningInputVSgMd, &_s15SecureMessaging3MLSO12SigningInputVSgMR);
      outlined destroy of NSObject?(v0 + 18136, &_s15SecureMessaging3MLSO12SigningInputVSgMd, &_s15SecureMessaging3MLSO12SigningInputVSgMR);
      _os_log_impl(&dword_264F1F000, v194, v195, "SwiftMLSClientCoordinator processIncoming signed data. { expectedSignedData: %s }", v196, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v197);
      MEMORY[0x266755550](v197, -1, -1);
      MEMORY[0x266755550](v196, -1, -1);
    }

    else
    {

      outlined destroy of NSObject?(v0 + 18136, &_s15SecureMessaging3MLSO12SigningInputVSgMd, &_s15SecureMessaging3MLSO12SigningInputVSgMR);
      outlined destroy of NSObject?(v0 + 18136, &_s15SecureMessaging3MLSO12SigningInputVSgMd, &_s15SecureMessaging3MLSO12SigningInputVSgMR);
    }

    v382 = *(v0 + 20768);
    *v548 = v487;
    *&v548[16] = v134;
    v549 = v541;
    v550 = v135;
    v551 = v509;
    v552 = v501;
    v553 = v494;
    outlined init with copy of MLS.OutgoingEventState?(v382, v0 + 10768, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);

    outlined init with copy of MLS.OutgoingEventState?(v382, v0 + 10432, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);

    MLS.EncryptedRCS.SigningInput.verifiableDerivedContent.getter((v0 + 18824));
    __swift_project_boxed_opaque_existential_1((v0 + 18824), *(v0 + 18848));
    v383 = MLS.Group.IncomingSignedMessage.verifiableDerivedContentData.getter();
    v385 = v384;
    MLS.VerifiableDerivedContent.verifyEquals(_:)();
    if (v516)
    {
      v386 = v516;
      v529 = *(v0 + 21288);
      v497 = *(v0 + 21264);
      v504 = *(v0 + 21256);
      v479 = *(v0 + 21120);
      v485 = *(v0 + 21192);
      v521 = *(v0 + 20864);
      v491 = *(v0 + 20856);
      v512 = *(v0 + 20848);
      v387 = *(v0 + 20768);
      v388 = *(v0 + 20760);
      outlined consume of Data._Representation(v383, v385);
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 18824));
      swift_getErrorValue();
      v389 = Error.readableDescription.getter(*(v0 + 19784), *(v0 + 19792));
      closure #8 in closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:)(v389, v390, v388, v387);

      swift_getErrorValue();
      v391 = Error.readableDescription.getter(*(v0 + 19760), *(v0 + 19768));
      v393 = v392;
      *(v0 + 19704) = 13;
      *(v0 + 19712) = v391;
      *(v0 + 19720) = v392;
      lazy protocol witness table accessor for type MLS.IncomingMessageError and conformance MLS.IncomingMessageError();
      swift_willThrowTypedImpl();

      outlined destroy of NSObject?(v387, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);

      outlined destroy of NSObject?(v387, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);

      swift_allocError();
      *v394 = 13;
      *(v394 + 8) = v391;
      *(v394 + 16) = v393;
      outlined destroy of NSObject?(v0 + 18136, &_s15SecureMessaging3MLSO12SigningInputVSgMd, &_s15SecureMessaging3MLSO12SigningInputVSgMR);
      v533(v485, v479);
      (*(v497 + 8))(v529, v504);
      (*(v491 + 8))(v521, v512);
      goto LABEL_132;
    }

    v522 = *(v0 + 21312);
    v513 = *(v0 + 21304);
    v395 = *(v0 + 20768);
    v396 = *(v0 + 20752);

    outlined destroy of NSObject?(v395, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);

    outlined destroy of NSObject?(v395, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);

    outlined consume of Data._Representation(v383, v385);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 18824));
    v397 = *(v396 + 32);
    *(v0 + 19249) = *(v396 + 41);
    *(v0 + 19240) = v397;
    *(v0 + 20272) = *(v395 + 16);
    v398 = *(v396 + 32);
    *(v0 + 17905) = *(v396 + 41);
    *(v0 + 17896) = v398;
    *&v548[7] = *(v395 + 16);
    *(v0 + 17880) = v513;
    *(v0 + 17888) = v522;
    *(v0 + 17921) = *v548;
    *(v0 + 17936) = *&v548[15];
    v399 = *(v0 + 17896);
    *(v0 + 16696) = *(v0 + 17880);
    *(v0 + 16712) = v399;
    v400 = *(v0 + 17928);
    *(v0 + 16728) = *(v0 + 17912);
    *(v0 + 16744) = v400;
    outlined init with copy of MLS.OutgoingEventState?(v395, v0 + 9592, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    outlined init with copy of MLS.OutgoingEventState?(v0 + 20272, v0 + 20384, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
    outlined init with copy of MLS.OutgoingEventState?(v395, v0 + 9424, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);

    outlined init with copy of MLS.OutgoingEventState?(v0 + 20272, v0 + 20368, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
    outlined init with copy of MLS.AllMember(v0 + 19240, v0 + 19624);
    v401 = Logger.logObject.getter();
    v402 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v401, v402))
    {
      v403 = *(v0 + 21312);
      v404 = *(v0 + 21304);
      v405 = *(v0 + 20768);
      v406 = swift_slowAlloc();
      v407 = swift_slowAlloc();
      *v548 = v407;
      *v406 = 136315138;

      v408 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v404, v403, v548);

      *(v406 + 4) = v408;
      outlined destroy of NSObject?(v405, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
      outlined destroy of NSObject?(v405, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
      _os_log_impl(&dword_264F1F000, v401, v402, "SwiftMLSClientCoordinator processIncoming sending signature verified event { identifier: %s }", v406, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v407);
      MEMORY[0x266755550](v407, -1, -1);
      MEMORY[0x266755550](v406, -1, -1);
    }

    else
    {
      v409 = *(v0 + 20768);

      outlined destroy of NSObject?(v409, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
      outlined destroy of NSObject?(v409, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    }

    v410 = *(v0 + 20760);
    v411 = v410[12];
    v412 = *(v0 + 16744);
    *(v0 + 15712) = *(v0 + 16728);
    *(v0 + 15728) = v412;
    v413 = *(v0 + 16776);
    *(v0 + 15744) = *(v0 + 16760);
    *(v0 + 15760) = v413;
    v414 = *(v0 + 16712);
    *(v0 + 15680) = *(v0 + 16696);
    v415 = *(v0 + 20776);
    *(v0 + 22256) = v411;
    *(v0 + 15696) = v414;
    *(v0 + 15776) = 7;
    outlined init with copy of ServerBag.MLS(v415, v0 + 18944);
    v416 = v410[10];
    *(v0 + 22264) = v416;
    v417 = v410[11];
    *(v0 + 22272) = v417;
    v418 = direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier;
    *(v0 + 22280) = direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier;
    v419 = (v410 + v418);
    v420 = v419[1];
    *(v0 + 20352) = *v419;
    *(v0 + 20360) = v420;

    swift_unknownObjectRetain();

    v421 = swift_task_alloc();
    *(v0 + 22288) = v421;
    *v421 = v0;
    v421[1] = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
    v422 = *(v0 + 20792);
    v423 = *(v0 + 20784);

    return MLS.Group.init(identifier:swiftMLSGroup:persister:clientIdentifier:)(v0 + 13496, v423, v422, v0 + 18944, v416, v417, (v0 + 20352));
  }

  if (v76 == *MEMORY[0x277D6AAC8])
  {
    v180 = *(v0 + 21152);
    v181 = *(v0 + 21008);
    v182 = *(v0 + 21000);
    (*(*(v0 + 21128) + 96))(v180, *(v0 + 21120));
    outlined init with take of MLS.Group.Member?(v180, v181, &_s8SwiftMLS0B0O5GroupO11StateUpdateVSgMd, &_s8SwiftMLS0B0O5GroupO11StateUpdateVSgMR);
    outlined init with copy of MLS.OutgoingEventState?(v181, v182, &_s8SwiftMLS0B0O5GroupO11StateUpdateVSgMd, &_s8SwiftMLS0B0O5GroupO11StateUpdateVSgMR);
    v183 = type metadata accessor for MLS.Group.StateUpdate();
    *(v0 + 21832) = v183;
    v184 = *(v183 - 8);
    *(v0 + 21840) = v184;
    v185 = *(v184 + 48);
    *(v0 + 21848) = v185;
    *(v0 + 21856) = (v184 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
    v186 = v185(v182, 1, v183);
    v187 = *(v0 + 21000);
    if (v186 == 1)
    {
      v188 = *(v0 + 20760);
      v189 = *(v0 + 20752);
      outlined destroy of NSObject?(*(v0 + 21000), &_s8SwiftMLS0B0O5GroupO11StateUpdateVSgMd, &_s8SwiftMLS0B0O5GroupO11StateUpdateVSgMR);
      if (*(v189 + 32) == *(v188 + direct field offset for MLS.SwiftMLSClientCoordinator.selfMember) && *(v189 + 40) == *(v188 + direct field offset for MLS.SwiftMLSClientCoordinator.selfMember + 8))
      {
        v190 = 1;
      }

      else
      {
        v190 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }
    }

    else
    {
      v190 = MLS.Group.StateUpdate.committerWasSelf.getter();
      (*(v184 + 8))(v187, v183);
    }

    *(v0 + 15570) = v190 & 1;
    v333 = *(v0 + 20776);
    v334 = v333[3];
    v335 = v333[4];
    __swift_project_boxed_opaque_existential_1(v333, v334);
    v543 = (*(v335 + 40) + **(v335 + 40));
    v336 = swift_task_alloc();
    *(v0 + 21864) = v336;
    *v336 = v0;
    v336[1] = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);

    return (v543)(v334, v335);
  }

LABEL_64:
  if (v76 != *MEMORY[0x277D6AAD0])
  {
    if (v76 != *MEMORY[0x277D6AAB8])
    {
      v348 = *(v0 + 20768);
      outlined init with copy of MLS.OutgoingEventState?(v348, v0 + 2536, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
      outlined init with copy of MLS.OutgoingEventState?(v348, v0 + 2704, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
      v349 = Logger.logObject.getter();
      v350 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v349, v350))
      {
        v351 = *(v0 + 21312);
        v352 = *(v0 + 21304);
        v353 = *(v0 + 20768);
        v354 = swift_slowAlloc();
        v355 = swift_slowAlloc();
        *v548 = v355;
        *v354 = 136315138;

        v356 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v352, v351, v548);

        *(v354 + 4) = v356;
        outlined destroy of NSObject?(v353, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
        outlined destroy of NSObject?(v353, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
        _os_log_impl(&dword_264F1F000, v349, v350, "SwiftMLSClientCoordinator processIncoming missing SwiftMLS incoming message type { identifier: %s }", v354, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v355);
        MEMORY[0x266755550](v355, -1, -1);
        MEMORY[0x266755550](v354, -1, -1);
      }

      else
      {
        v444 = *(v0 + 20768);

        outlined destroy of NSObject?(v444, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
        outlined destroy of NSObject?(v444, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
      }

      v445 = *(v0 + 21288);
      v446 = *(v0 + 21264);
      v447 = *(v0 + 21256);
      v448 = *(v0 + 21192);
      v449 = *(v0 + 21152);
      v450 = *(v0 + 21120);
      lazy protocol witness table accessor for type MLS.IncomingMessageError and conformance MLS.IncomingMessageError();
      swift_allocError();
      *v451 = 6;
      *(v451 + 8) = 0;
      *(v451 + 16) = 0;
      swift_willThrow();
      v68(v448, v450);
      (*(v446 + 8))(v445, v447);
      v68(v449, v450);
      goto LABEL_132;
    }

    v300 = *(v0 + 21312);
    v301 = *(v0 + 21304);
    v302 = *(v0 + 20768);
    v303 = *(v0 + 20752);
    v304 = *(v303 + 32);
    *(v0 + 19505) = *(v303 + 41);
    *(v0 + 19496) = v304;
    *(v0 + 20288) = *(v302 + 16);
    v305 = *(v303 + 32);
    *(v0 + 18033) = *(v303 + 41);
    *(v0 + 18024) = v305;
    *&v548[7] = *(v302 + 16);
    *(v0 + 18008) = v301;
    *(v0 + 18016) = v300;
    *(v0 + 18049) = *v548;
    *(v0 + 18064) = *&v548[15];
    v306 = *(v0 + 18024);
    *(v0 + 17080) = *(v0 + 18008);
    *(v0 + 17096) = v306;
    v307 = *(v0 + 18056);
    *(v0 + 17112) = *(v0 + 18040);
    *(v0 + 17128) = v307;
    outlined init with copy of MLS.OutgoingEventState?(v302, v0 + 2872, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    outlined init with copy of MLS.OutgoingEventState?(v0 + 20288, v0 + 20496, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
    outlined init with copy of MLS.OutgoingEventState?(v302, v0 + 3208, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);

    outlined init with copy of MLS.OutgoingEventState?(v0 + 20288, v0 + 20480, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
    outlined init with copy of MLS.AllMember(v0 + 19496, v0 + 19432);
    v308 = Logger.logObject.getter();
    v309 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v308, v309))
    {
      v310 = *(v0 + 21312);
      v311 = *(v0 + 21304);
      v312 = *(v0 + 20768);
      v313 = swift_slowAlloc();
      v314 = swift_slowAlloc();
      *v548 = v314;
      *v313 = 136315138;

      v315 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v311, v310, v548);

      *(v313 + 4) = v315;
      outlined destroy of NSObject?(v312, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
      outlined destroy of NSObject?(v312, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
      _os_log_impl(&dword_264F1F000, v308, v309, "SwiftMLSClientCoordinator processIncoming sending internal message event { identifier: %s }", v313, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v314);
      MEMORY[0x266755550](v314, -1, -1);
      MEMORY[0x266755550](v313, -1, -1);
    }

    else
    {
      v436 = *(v0 + 20768);

      outlined destroy of NSObject?(v436, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
      outlined destroy of NSObject?(v436, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    }

    v437 = *(v0 + 20776);
    v438 = *(v0 + 20760);
    *(v0 + 22336) = v438[12];
    v439 = *(v0 + 17128);
    *(v0 + 15608) = *(v0 + 17112);
    *(v0 + 15624) = v439;
    v440 = *(v0 + 17160);
    *(v0 + 15640) = *(v0 + 17144);
    *(v0 + 15656) = v440;
    v441 = *(v0 + 17096);
    *(v0 + 15576) = *(v0 + 17080);
    *(v0 + 15592) = v441;
    *(v0 + 15672) = 9;
    outlined init with copy of ServerBag.MLS(v437, v0 + 18984);
    *(v0 + 22344) = v438[10];
    *(v0 + 22352) = v438[11];
    v442 = direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier;
    *(v0 + 22360) = direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier;
    v443 = (v438 + v442);
    *(v0 + 22368) = *v443;
    *(v0 + 22376) = v443[1];

    swift_unknownObjectRetain();

    v167 = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
    v168 = 0;
    v169 = 0;

    return MEMORY[0x2822009F8](v167, v168, v169);
  }

  v208 = *(v0 + 20768);
  outlined init with copy of MLS.OutgoingEventState?(v208, v0 + 8248, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
  outlined init with copy of MLS.OutgoingEventState?(v208, v0 + 7912, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
  v209 = Logger.logObject.getter();
  v210 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v209, v210))
  {
    v211 = *(v0 + 21312);
    v212 = *(v0 + 21304);
    v213 = *(v0 + 20768);
    v214 = swift_slowAlloc();
    v215 = swift_slowAlloc();
    *v548 = v215;
    *v214 = 136315138;

    v216 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v212, v211, v548);

    *(v214 + 4) = v216;
    outlined destroy of NSObject?(v213, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    outlined destroy of NSObject?(v213, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    _os_log_impl(&dword_264F1F000, v209, v210, "SwiftMLSClientCoordinator processIncoming committing proposal { identifier: %s }", v214, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v215);
    MEMORY[0x266755550](v215, -1, -1);
    MEMORY[0x266755550](v214, -1, -1);
  }

  else
  {
    v337 = *(v0 + 20768);

    outlined destroy of NSObject?(v337, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    outlined destroy of NSObject?(v337, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
  }

  v338 = *(v0 + 21608);
  v339 = *(v0 + 21592);
  v340 = *(v0 + 21584);
  v341 = *(v0 + 21576);
  v342 = *(v0 + 21200);
  v343 = *(v0 + 20776);
  swift_beginAccess();
  Date.init()();
  v339(v342 + *(v341 + 20), 1, 1, v340);
  v338(v342, 0, 1, v341);
  specialized Dictionary.subscript.setter(v342, 0xD000000000000016, 0x80000002651E7960);
  swift_endAccess();
  v344 = v343[3];
  v345 = v343[4];
  __swift_project_boxed_opaque_existential_1(v343, v344);
  v544 = (*(v345 + 248) + **(v345 + 248));
  v346 = swift_task_alloc();
  *(v0 + 22200) = v346;
  *v346 = v0;
  v346[1] = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
  v347 = *(v0 + 20920);

  return (v544)(v347, v344, v345);
}

{
  v554 = v0;
  v1 = *(v0 + 21736);
  if (*(v1 + 16))
  {
    (*(*(v0 + 21128) + 16))(*(v0 + 21056), v1 + ((*(*(v0 + 21128) + 80) + 32) & ~*(*(v0 + 21128) + 80)), *(v0 + 21120));
    v2 = 0;
  }

  else
  {
    v2 = 1;
  }

  v3 = *(v0 + 21128);
  v4 = *(v0 + 21120);
  v5 = *(v0 + 21056);
  (*(v3 + 56))(v5, v2, 1, v4);

  if ((*(v3 + 48))(v5, 1, v4) == 1)
  {
    v6 = *(v0 + 21112);
    v7 = *(v0 + 21088);
    v8 = *(v0 + 21080);
    outlined destroy of NSObject?(*(v0 + 21056), &_s8SwiftMLS0B0O5GroupO15ReceivedMessageOSgMd, &_s8SwiftMLS0B0O5GroupO15ReceivedMessageOSgMR);
    lazy protocol witness table accessor for type MLS.IncomingMessageError and conformance MLS.IncomingMessageError();
    v9 = swift_allocError();
    *v10 = 23;
    *(v10 + 8) = 0;
    *(v10 + 16) = 0;
    swift_willThrow();
    (*(v7 + 8))(v6, v8);
    *(v0 + 22584) = v9;
    *(v0 + 20688) = v9;
    v11 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    if (swift_dynamicCast())
    {
      v12 = (*(*(v0 + 20832) + 88))(*(v0 + 20840), *(v0 + 20824));
      v13 = *(v0 + 20840);
      v14 = *(v0 + 20832);
      v15 = *(v0 + 20824);
      if (v12 == *MEMORY[0x277D6AD10])
      {
        v530 = *(v0 + 21304);
        v538 = *(v0 + 21312);
        v16 = *(v0 + 20816);
        v17 = *(v0 + 20768);
        v18 = *(v0 + 20760);
        v524 = *(v0 + 20752);
        (*(v14 + 96))(v13, v15);
        v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8SwiftMLS0B0O5GroupO6MemberVSg9committer_AH8proposertMd, &_s8SwiftMLS0B0O5GroupO6MemberVSg9committer_AH8proposertMR);
        outlined init with take of MLS.Group.Member?(v13 + *(v19 + 48), v16, &_s8SwiftMLS0B0O5GroupO6MemberVSgMd, &_s8SwiftMLS0B0O5GroupO6MemberVSgMR);
        closure #1 in closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:)(v16, v18, v17, v524, v548);
        v21 = *v548;
        v20 = *&v548[8];
        *(v0 + 22592) = *v548;
        *(v0 + 22600) = v20;
        v22 = *&v548[16];
        *(v0 + 22608) = *&v548[16];
        v23 = v549;
        *(v0 + 15673) = v549;
        *(v0 + 20064) = *(v17 + 16);
        *&v548[7] = *(v17 + 16);
        *(v0 + 17560) = v530;
        *(v0 + 17568) = v538;
        *(v0 + 17576) = v21;
        *(v0 + 17584) = v20;
        *(v0 + 17592) = v22;
        *(v0 + 17600) = v23;
        *(v0 + 17601) = *v548;
        *(v0 + 17616) = *&v548[15];
        v24 = *(v0 + 17576);
        *(v0 + 16792) = *(v0 + 17560);
        *(v0 + 16808) = v24;
        v25 = *(v0 + 17608);
        *(v0 + 16824) = *(v0 + 17592);
        *(v0 + 16840) = v25;
        outlined copy of MLS.AllMember(v21, v20);
        outlined init with copy of MLS.OutgoingEventState?(v17, v0 + 1360, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);

        outlined copy of MLS.AllMember(v21, v20);
        outlined init with copy of MLS.OutgoingEventState?(v0 + 20064, v0 + 20544, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
        outlined init with copy of MLS.OutgoingEventState?(v17, v0 + 1696, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);

        v539 = v21;
        v26 = v21;
        v27 = v20;
        outlined copy of MLS.AllMember(v26, v20);
        outlined init with copy of MLS.OutgoingEventState?(v0 + 20064, v0 + 20528, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
        v28 = Logger.logObject.getter();
        v29 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v28, v29))
        {
          v30 = *(v0 + 21312);
          v31 = *(v0 + 21304);
          v32 = *(v0 + 20768);
          v506 = *(v0 + 20760);
          v33 = swift_slowAlloc();
          v515 = swift_slowAlloc();
          v546[0] = v515;
          *v33 = 136315650;

          v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v30, v546);

          *(v33 + 4) = v34;
          outlined destroy of NSObject?(v32, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
          outlined destroy of NSObject?(v32, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
          *(v33 + 12) = 2080;
          *v548 = v539;
          *&v548[8] = v27;
          *&v548[16] = v22;
          LOBYTE(v549) = v23;
          outlined copy of MLS.AllMember(v539, v27);
          v35 = MLS.AllMember.description.getter();
          v37 = v36;
          outlined consume of MLS.AllMember(*v548, *&v548[8]);
          v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v37, v546);

          *(v33 + 14) = v38;
          outlined consume of MLS.AllMember(v539, v27);
          outlined consume of MLS.AllMember(v539, v27);
          *(v33 + 22) = 2080;
          v39 = *(v506 + direct field offset for MLS.SwiftMLSClientCoordinator.selfMember + 8);
          v40 = *(v506 + direct field offset for MLS.SwiftMLSClientCoordinator.selfMember + 16);
          v41 = *(v506 + direct field offset for MLS.SwiftMLSClientCoordinator.selfMember + 24);
          *v548 = *(v506 + direct field offset for MLS.SwiftMLSClientCoordinator.selfMember);
          *&v548[8] = v39;
          *&v548[16] = v40;
          LOBYTE(v549) = v41;
          outlined copy of MLS.AllMember(*v548, v39);
          v42 = MLS.AllMember.description.getter();
          v44 = v43;
          outlined consume of MLS.AllMember(*v548, *&v548[8]);
          v45 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, v44, v546);

          *(v33 + 24) = v45;

          _os_log_impl(&dword_264F1F000, v28, v29, "SwiftMLSClientCoordinator processIncoming received removedFromGroup error. Delivering self kicked event { identifier: %s, sender: %s, selfMember: %s }", v33, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x266755550](v515, -1, -1);
          MEMORY[0x266755550](v33, -1, -1);
        }

        else
        {
          v145 = *(v0 + 20768);

          outlined destroy of NSObject?(v145, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
          outlined destroy of NSObject?(v145, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
          outlined consume of MLS.AllMember(v539, v20);
          outlined consume of MLS.AllMember(v539, v20);
        }

        v146 = *(v0 + 21664);
        v147 = *(v0 + 20792);
        v148 = *(v0 + 20760);
        if ((v146 & 0x100000000) != 0)
        {
          v146 = 1;
        }

        else
        {
          v146 = v146;
        }

        v149 = *(v0 + 21640) + 1;
        *(v0 + 14536) = *(v0 + 20784);
        *(v0 + 14544) = v147;
        *(v0 + 14552) = v146;
        *(v0 + 14560) = v146;
        *(v0 + 14568) = v149;
        *(v0 + 14576) = xmmword_2651B68A0;
        *(v0 + 14592) = xmmword_2651B68A0;
        *(v0 + 14608) = xmmword_2651B68A0;
        *(v0 + 14624) = xmmword_2651B5F50;
        v150 = *(v148 + 96);
        v151 = *(v0 + 16840);
        *(v0 + 15920) = *(v0 + 16824);
        *(v0 + 15936) = v151;
        v152 = *(v0 + 16872);
        *(v0 + 15952) = *(v0 + 16856);
        *(v0 + 15968) = v152;
        v153 = *(v0 + 16808);
        *(v0 + 15888) = *(v0 + 16792);
        *(v0 + 15904) = v153;
        v154 = *(v0 + 14584);
        *(v0 + 13424) = *(v0 + 14568);
        *(v0 + 13440) = v154;
        v155 = *(v0 + 14616);
        *(v0 + 13456) = *(v0 + 14600);
        *(v0 + 13472) = v155;
        v156 = *(v0 + 14536);
        *(v0 + 13408) = *(v0 + 14552);
        *(v0 + 15984) = 4;
        *(v0 + 13488) = *(v0 + 14632);
        *(v0 + 13392) = v156;
        v546[0] = v539;
        v546[1] = v27;
        v546[2] = v22;
        v547 = v23;
        v157 = v148 + direct field offset for MLS.SwiftMLSClientCoordinator.selfMember;
        v159 = *(v157 + 8);
        v160 = *(v157 + 16);
        v161 = *(v157 + 24);
        *v548 = *v157;
        v158 = *v548;
        *&v548[8] = v159;
        *&v548[16] = v160;
        LOBYTE(v549) = v161;

        outlined copy of MLS.AllMember(v158, v159);
        v162 = specialized static MLS.AllMember.== infix(_:_:)(v546, v548);
        outlined consume of MLS.AllMember(*v548, *&v548[8]);
        v540 = (*(*v150 + 384) + **(*v150 + 384));
        v163 = swift_task_alloc();
        *(v0 + 22616) = v163;
        *v163 = v0;
        v163[1] = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);

        return (v540)(v0 + 15888, v0 + 13392, 1, v162);
      }

      (*(*(v0 + 21264) + 8))(*(v0 + 21288), *(v0 + 21256));
      (*(v14 + 8))(v13, v15);
    }

    else
    {
      (*(*(v0 + 21264) + 8))(*(v0 + 21288), *(v0 + 21256));
    }

    goto LABEL_132;
  }

  v516 = *(v0 + 21744);
  v46 = *(v0 + 21056);
  v47 = *(v0 + 21192);
  v48 = *(v0 + 21168);
  v49 = *(v0 + 21128);
  v50 = *(v0 + 21120);
  v51 = *(v0 + 21112);
  v52 = *(v0 + 21080);
  v53 = *(v0 + 20768);
  v54 = *(*(v0 + 21088) + 8);
  *(v0 + 21752) = v54;
  v54(v51, v52);
  (*(v49 + 32))(v47, v46, v50);
  v548[0] = 7;
  swift_beginAccess();
  MetricCollector.end(metric:)(v548);
  swift_endAccess();
  v55 = *(v49 + 16);
  v55(v48, v47, v50);
  outlined init with copy of MLS.OutgoingEventState?(v53, v0 + 2200, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
  outlined init with copy of MLS.OutgoingEventState?(v53, v0 + 2368, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
  v56 = Logger.logObject.getter();
  v57 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v56, v57))
  {
    v58 = *(v0 + 21312);
    v59 = *(v0 + 21304);
    v500 = *(v0 + 21160);
    v507 = *(v0 + 21168);
    v60 = *(v0 + 21128);
    v61 = *(v0 + 21120);
    v62 = *(v0 + 20768);
    v63 = swift_slowAlloc();
    v531 = swift_slowAlloc();
    *v548 = v531;
    *v63 = 136315394;

    v64 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v59, v58, v548);

    *(v63 + 4) = v64;
    outlined destroy of NSObject?(v62, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    outlined destroy of NSObject?(v62, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    *(v63 + 12) = 2080;
    v55(v500, v507, v61);
    v65 = String.init<A>(describing:)();
    v67 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v65, v66, v548);

    *(v63 + 14) = v67;
    v68 = *(v60 + 8);
    v68(v507, v61);
    _os_log_impl(&dword_264F1F000, v56, v57, "SwiftMLSClientCoordinator processIncoming processed message { identifier: %s, message: %s }", v63, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v531, -1, -1);
    MEMORY[0x266755550](v63, -1, -1);
  }

  else
  {
    v69 = *(v0 + 21168);
    v70 = *(v0 + 21128);
    v71 = *(v0 + 21120);
    v72 = *(v0 + 20768);

    outlined destroy of NSObject?(v72, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    outlined destroy of NSObject?(v72, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    v68 = *(v70 + 8);
    v68(v69, v71);
  }

  *(v0 + 21760) = v68;
  v73 = *(v0 + 21152);
  v74 = *(v0 + 21128);
  v75 = *(v0 + 21120);
  v55(v73, *(v0 + 21192), v75);
  v76 = (*(v74 + 88))(v73, v75);
  if (v76 == *MEMORY[0x277D6AAA8])
  {
    v77 = *(v0 + 21152);
    v78 = *(v0 + 20768);
    (*(*(v0 + 21128) + 96))(v77, *(v0 + 21120));
    v79 = (v77 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8SwiftMLS0B0O8IdentityO07SigningC0VSg6sender_10Foundation4DataV4datatMd, &_s8SwiftMLS0B0O8IdentityO07SigningC0VSg6sender_10Foundation4DataV4datatMR) + 48));
    v80 = *v79;
    *(v0 + 21768) = *v79;
    v81 = v79[1];
    *(v0 + 21776) = v81;
    v82 = *(v0 + 20768);
    if (*(v78 + 104) >> 60 == 15)
    {
      v83 = *(v0 + 20800);
      v84 = *(v0 + 20752);
      v86 = v84[1];
      v85 = v84[2];
      v87 = *v84;
      *(v0 + 18498) = *(v84 + 42);
      *(v0 + 18472) = v86;
      *(v0 + 18488) = v85;
      *(v0 + 18456) = v87;
      swift_beginAccess();
      *(v0 + 20712) = *(v83 + 16);
      v88 = *v82;
      v89 = *(v82 + 16);
      *(v0 + 9792) = *(v82 + 32);
      *(v0 + 9776) = v89;
      *(v0 + 9760) = v88;
      v90 = *(v82 + 48);
      v91 = *(v82 + 64);
      v92 = *(v82 + 80);
      *(v0 + 9856) = *(v82 + 96);
      *(v0 + 9840) = v92;
      *(v0 + 9824) = v91;
      *(v0 + 9808) = v90;
      v93 = *(v82 + 112);
      v94 = *(v82 + 128);
      v95 = *(v82 + 144);
      *(v0 + 9920) = *(v82 + 160);
      *(v0 + 9904) = v95;
      *(v0 + 9888) = v94;
      *(v0 + 9872) = v93;

      v96 = swift_task_alloc();
      *(v0 + 21784) = v96;
      *v96 = v0;
      v96[1] = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
      v97 = *(v0 + 21312);
      v98 = *(v0 + 21304);
      v99 = *(v0 + 20792);
      v100 = *(v0 + 20784);
      v101 = *(v0 + 20776);
      v102 = *(v0 + 20744);
      v557 = v0 + 20712;
      v558 = v0 + 9760;
      v556 = v101;
      v103 = v0 + 18456;
      v104 = v80;
      v105 = v81;
LABEL_86:

      return MLS.SwiftMLSClientCoordinator.handleIncomingApplicationMessage(eventIdentifier:message:applicationMessageData:group:swiftMLSGroup:metricCollector:context:)(v102, v98, v97, v103, v104, v105, v100, v99);
    }

    v517 = v81;
    v525 = v80;
    v55(*(v0 + 21144), *(v0 + 21192), *(v0 + 21120));
    outlined init with copy of MLS.OutgoingEventState?(v82, v0 + 10264, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    outlined init with copy of MLS.OutgoingEventState?(v82, v0 + 10600, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    v114 = Logger.logObject.getter();
    v115 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v114, v115))
    {
      v116 = *(v0 + 21312);
      v117 = *(v0 + 21304);
      v532 = v68;
      v118 = *(v0 + 21160);
      v119 = *(v0 + 21144);
      v493 = *(v0 + 21120);
      v120 = *(v0 + 20768);
      v121 = swift_slowAlloc();
      v508 = swift_slowAlloc();
      *v548 = v508;
      *v121 = 136315394;

      v122 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v117, v116, v548);

      *(v121 + 4) = v122;
      outlined destroy of NSObject?(v120, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
      outlined destroy of NSObject?(v120, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
      *(v121 + 12) = 2080;
      v55(v118, v119, v493);
      v68 = v532;
      v123 = String.init<A>(describing:)();
      v125 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v123, v124, v548);

      *(v121 + 14) = v125;
      v532(v119, v493);
      _os_log_impl(&dword_264F1F000, v114, v115, "SwiftMLSClientCoordinator processIncoming processed message had no AAD { identifier: %s, message: %s }", v121, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266755550](v508, -1, -1);
      MEMORY[0x266755550](v121, -1, -1);
    }

    else
    {
      v170 = *(v0 + 21144);
      v171 = *(v0 + 21120);
      v172 = *(v0 + 20768);

      outlined destroy of NSObject?(v172, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
      outlined destroy of NSObject?(v172, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
      v68(v170, v171);
    }

    v173 = *(v0 + 21288);
    v174 = *(v0 + 21264);
    v175 = *(v0 + 21256);
    v176 = *(v0 + 21192);
    v177 = *(v0 + 21152);
    v178 = *(v0 + 21120);
    lazy protocol witness table accessor for type MLS.IncomingMessageError and conformance MLS.IncomingMessageError();
    swift_allocError();
    *v179 = 14;
    *(v179 + 8) = 0;
    *(v179 + 16) = 0;
    swift_willThrow();
    outlined consume of Data._Representation(v525, v517);
    v68(v176, v178);
    (*(v174 + 8))(v173, v175);
    outlined destroy of NSObject?(v177, &_s8SwiftMLS0B0O8IdentityO07SigningC0VSgMd, &_s8SwiftMLS0B0O8IdentityO07SigningC0VSgMR);
LABEL_132:

    v464 = *(v0 + 8);

    return v464();
  }

  if (v76 == *MEMORY[0x277D6AAB0])
  {
    v106 = *(v0 + 21152);
    v107 = *(v0 + 21048);
    v108 = *(v0 + 21024);
    v109 = *(v0 + 21016);
    (*(*(v0 + 21128) + 96))(v106, *(v0 + 21120));
    (*(v108 + 32))(v107, v106, v109);
    v110 = MLS.Group.IncomingApplicationMessageDetails.messageID.getter();
    v112 = v111 >> 62;
    if ((v111 >> 62) > 1)
    {
      if (v112 != 2)
      {
        outlined consume of Data._Representation(v110, v111);
LABEL_57:
        v201 = MLS.Group.IncomingApplicationMessageDetails.originalMessageID.getter();
        v203 = v202 >> 62;
        if ((v202 >> 62) <= 1)
        {
          if (!v203)
          {
            v204 = BYTE6(v202);
            outlined consume of Data._Representation(v201, v202);
            v205 = v204;
            goto LABEL_69;
          }

          v217 = HIDWORD(v201);
          v218 = v201;
          v167 = outlined consume of Data._Representation(v201, v202);
          LODWORD(v205) = v217 - v218;
          if (!__OFSUB__(v217, v218))
          {
            v205 = v205;
            goto LABEL_69;
          }

          goto LABEL_137;
        }

        if (v203 != 2)
        {
          outlined consume of Data._Representation(v201, v202);
          goto LABEL_85;
        }

        v206 = *(v201 + 16);
        v207 = *(v201 + 24);
        v76 = outlined consume of Data._Representation(v201, v202);
        v205 = v207 - v206;
        if (!__OFSUB__(v207, v206))
        {
LABEL_69:
          if (!v205)
          {
            goto LABEL_85;
          }

          goto LABEL_70;
        }

        __break(1u);
        goto LABEL_64;
      }

      v165 = *(v110 + 16);
      v166 = *(v110 + 24);
      v167 = outlined consume of Data._Representation(v110, v111);
      if (!__OFSUB__(v166, v165))
      {
        if (v166 == v165)
        {
          goto LABEL_57;
        }

        goto LABEL_70;
      }

      __break(1u);
    }

    else
    {
      if (!v112)
      {
        v113 = BYTE6(v111);
        outlined consume of Data._Representation(v110, v111);
        if (!v113)
        {
          goto LABEL_57;
        }

LABEL_70:
        v219 = *(v0 + 20768);
        v220 = v219[13];
        if (v220 >> 60 == 15)
        {
          v55(*(v0 + 21136), *(v0 + 21192), *(v0 + 21120));
          outlined init with copy of MLS.OutgoingEventState?(v219, v0 + 4720, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
          outlined init with copy of MLS.OutgoingEventState?(v219, v0 + 4888, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
          v221 = Logger.logObject.getter();
          v222 = static os_log_type_t.default.getter();
          v534 = v68;
          if (os_log_type_enabled(v221, v222))
          {
            v518 = v55;
            v223 = *(v0 + 21312);
            v224 = *(v0 + 21304);
            v225 = *(v0 + 21160);
            v510 = *(v0 + 21136);
            v226 = *(v0 + 21120);
            v227 = *(v0 + 20768);
            v228 = swift_slowAlloc();
            v229 = swift_slowAlloc();
            *v548 = v229;
            *v228 = 136315394;

            v230 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v224, v223, v548);

            *(v228 + 4) = v230;
            outlined destroy of NSObject?(v227, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
            outlined destroy of NSObject?(v227, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
            *(v228 + 12) = 2080;
            v518(v225, v510, v226);
            v231 = String.init<A>(describing:)();
            v233 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v231, v232, v548);

            *(v228 + 14) = v233;
            v534(v510, v226);
            _os_log_impl(&dword_264F1F000, v221, v222, "SwiftMLSClientCoordinator processIncoming processed message had unexpected AAD { identifier: %s, message: %s }", v228, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x266755550](v229, -1, -1);
            MEMORY[0x266755550](v228, -1, -1);
          }

          else
          {
            v249 = *(v0 + 21136);
            v250 = *(v0 + 21120);
            v251 = *(v0 + 20768);

            outlined destroy of NSObject?(v251, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
            outlined destroy of NSObject?(v251, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
            v68(v249, v250);
          }

          v527 = *(v0 + 21288);
          v252 = *(v0 + 21264);
          v253 = *(v0 + 21256);
          v254 = *(v0 + 21192);
          v255 = *(v0 + 21120);
          v256 = *(v0 + 21048);
          v257 = *(v0 + 21024);
          v258 = *(v0 + 21016);
          lazy protocol witness table accessor for type MLS.IncomingMessageError and conformance MLS.IncomingMessageError();
          swift_allocError();
          *v259 = 15;
          *(v259 + 8) = 0;
          *(v259 + 16) = 0;
          swift_willThrow();
          (*(v257 + 8))(v256, v258);
          v534(v254, v255);
          (*(v252 + 8))(v527, v253);
          goto LABEL_132;
        }

        v234 = v219[12];
        v235 = v219[14];
        v236 = v219[15];
        v238 = v219[16];
        v237 = v219[17];
        outlined copy of MLS.AdditionalAuthenticatedData?(v234, v220, v235, v236, v238, v237);
        outlined copy of Data._Representation(v234, v220);
        v526 = v237;
        outlined copy of Data?(v238, v237);
        v239 = MLS.Group.IncomingApplicationMessageDetails.messageID.getter();
        v241 = v240;
        v242 = specialized static Data.== infix(_:_:)(v234, v220, v239, v240);
        outlined consume of Data._Representation(v239, v241);
        if (!v242)
        {
          v535 = v68;
          v260 = *(v0 + 20768);
          (*(*(v0 + 21024) + 16))(*(v0 + 21040), *(v0 + 21048), *(v0 + 21016));
          outlined init with copy of MLS.OutgoingEventState?(v260, v0 + 5392, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
          outlined copy of MLS.AdditionalAuthenticatedData?(v234, v220, v235, v236, v238, v526);
          outlined init with copy of MLS.OutgoingEventState?(v260, v0 + 5560, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
          v495 = v220;
          v520 = v235;
          v502 = v238;
          v511 = v236;
          outlined copy of MLS.AdditionalAuthenticatedData?(v234, v220, v235, v236, v238, v526);
          v261 = Logger.logObject.getter();
          v262 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v261, v262))
          {
            v542 = v262;
            v263 = *(v0 + 21312);
            v264 = *(v0 + 21304);
            v472 = *(v0 + 21040);
            v482 = *(v0 + 21024);
            v489 = *(v0 + 21016);
            v265 = *(v0 + 20768);
            v266 = swift_slowAlloc();
            v476 = swift_slowAlloc();
            *v548 = v476;
            *v266 = 136315650;

            v267 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v264, v263, v548);

            *(v266 + 4) = v267;
            outlined destroy of NSObject?(v265, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
            outlined destroy of NSObject?(v265, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
            log = v261;
            *(v266 + 12) = 2080;
            outlined copy of Data._Representation(v234, v495);
            v268 = Data.description.getter();
            v270 = v269;
            outlined consume of Data._Representation(v234, v495);
            v271 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v268, v270, v548);

            *(v266 + 14) = v271;
            v272 = v526;
            outlined consume of MLS.AdditionalAuthenticatedData?(v234, v495, v235, v236, v502, v526);
            outlined consume of MLS.AdditionalAuthenticatedData?(v234, v495, v235, v236, v502, v526);
            *(v266 + 22) = 2080;
            v273 = MLS.Group.IncomingApplicationMessageDetails.messageID.getter();
            v275 = v274;
            v276 = Data.description.getter();
            v278 = v277;
            outlined consume of Data._Representation(v273, v275);
            v279 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v276, v278, v548);

            *(v266 + 24) = v279;
            v280 = v489;
            v490 = *(v482 + 8);
            v490(v472, v280);
            _os_log_impl(&dword_264F1F000, log, v542, "SwiftMLSClientCoordinator processIncoming processed message had mismatched AAD messageID { identifier: %s, clientMessageID: %s, messageID: %s }", v266, 0x20u);
            swift_arrayDestroy();
            MEMORY[0x266755550](v476, -1, -1);
            MEMORY[0x266755550](v266, -1, -1);
          }

          else
          {
            v325 = *(v0 + 21040);
            v326 = *(v0 + 21024);
            v327 = *(v0 + 21016);
            v328 = *(v0 + 20768);

            outlined destroy of NSObject?(v328, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
            outlined destroy of NSObject?(v328, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
            v272 = v526;
            outlined consume of MLS.AdditionalAuthenticatedData?(v234, v495, v520, v236, v502, v526);
            outlined consume of MLS.AdditionalAuthenticatedData?(v234, v495, v520, v236, v502, v526);
            v490 = *(v326 + 8);
            v490(v325, v327);
          }

          v329 = *(v0 + 21264);
          v473 = *(v0 + 21256);
          v477 = *(v0 + 21288);
          v466 = *(v0 + 21120);
          loga = *(v0 + 21192);
          v330 = *(v0 + 21048);
          v331 = *(v0 + 21016);
          lazy protocol witness table accessor for type MLS.IncomingMessageError and conformance MLS.IncomingMessageError();
          swift_allocError();
          *v332 = 16;
          *(v332 + 8) = 0;
          *(v332 + 16) = 0;
          swift_willThrow();
          outlined consume of MLS.AdditionalAuthenticatedData?(v234, v495, v520, v511, v502, v272);
          outlined consume of MLS.AdditionalAuthenticatedData?(v234, v495, v520, v511, v502, v272);
          v490(v330, v331);
          v535(loga, v466);
          (*(v329 + 8))(v477, v473);
          goto LABEL_132;
        }

        v488 = v234;
        v243 = v526;
        if (v526 >> 60 != 15)
        {
          v519 = v235;
          outlined copy of Data._Representation(v238, v526);
          v244 = MLS.Group.IncomingApplicationMessageDetails.originalMessageID.getter();
          v246 = v245;
          v247 = specialized static Data.== infix(_:_:)(v238, v526, v244, v245);
          outlined consume of Data._Representation(v244, v246);
          if (!v247)
          {
            v496 = v220;
            v536 = v68;
            v357 = *(v0 + 20768);
            (*(*(v0 + 21024) + 16))(*(v0 + 21032), *(v0 + 21048), *(v0 + 21016));
            outlined init with copy of MLS.OutgoingEventState?(v357, v0 + 520, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
            outlined copy of Data?(v238, v526);
            outlined init with copy of MLS.OutgoingEventState?(v357, v0 + 9256, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
            outlined copy of Data?(v238, v526);
            v358 = Logger.logObject.getter();
            v359 = static os_log_type_t.error.getter();
            v360 = v238;
            v503 = v238;
            if (os_log_type_enabled(v358, v359))
            {
              v361 = *(v0 + 21312);
              v362 = *(v0 + 21304);
              v363 = *(v0 + 21032);
              v478 = *(v0 + 21024);
              v483 = *(v0 + 21016);
              v364 = *(v0 + 20768);
              v365 = swift_slowAlloc();
              v545 = swift_slowAlloc();
              *v548 = v545;
              *v365 = 136315650;

              v366 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v362, v361, v548);

              *(v365 + 4) = v366;
              outlined destroy of NSObject?(v364, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
              outlined destroy of NSObject?(v364, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
              v474 = v359;
              *(v365 + 12) = 2080;
              outlined copy of Data._Representation(v360, v526);
              v367 = Data.description.getter();
              v369 = v368;
              outlined consume of Data?(v360, v526);
              v370 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v367, v369, v548);

              *(v365 + 14) = v370;
              outlined consume of Data?(v360, v526);
              outlined consume of Data?(v360, v526);
              *(v365 + 22) = 2080;
              v371 = MLS.Group.IncomingApplicationMessageDetails.originalMessageID.getter();
              v373 = v372;
              v374 = Data.description.getter();
              v376 = v375;
              outlined consume of Data._Representation(v371, v373);
              v377 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v374, v376, v548);

              *(v365 + 24) = v377;
              v378 = v483;
              v484 = *(v478 + 8);
              v484(v363, v378);
              _os_log_impl(&dword_264F1F000, v358, v474, "SwiftMLSClientCoordinator processIncoming processed message had mismatched AAD originalMessageID { identifier: %s, clientOriginalMessageID: %s, originalMessageID: %s }", v365, 0x20u);
              swift_arrayDestroy();
              MEMORY[0x266755550](v545, -1, -1);
              MEMORY[0x266755550](v365, -1, -1);
            }

            else
            {
              v452 = *(v0 + 21032);
              v453 = *(v0 + 21024);
              v454 = *(v0 + 21016);
              v455 = *(v0 + 20768);

              outlined destroy of NSObject?(v455, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
              outlined destroy of NSObject?(v455, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
              outlined consume of Data?(v238, v526);
              outlined consume of Data?(v238, v526);
              v484 = *(v453 + 8);
              v484(v452, v454);
            }

            v456 = *(v0 + 21264);
            v475 = *(v0 + 21256);
            v480 = *(v0 + 21288);
            v467 = *(v0 + 21120);
            logb = *(v0 + 21192);
            v465 = *(v0 + 21048);
            v457 = *(v0 + 21016);
            lazy protocol witness table accessor for type MLS.IncomingMessageError and conformance MLS.IncomingMessageError();
            swift_allocError();
            *v458 = 16;
            *(v458 + 8) = 0;
            *(v458 + 16) = 0;
            swift_willThrow();
            outlined consume of Data?(v503, v526);
            outlined consume of MLS.AdditionalAuthenticatedData?(v488, v496, v519, v236, v503, v526);
            outlined consume of MLS.AdditionalAuthenticatedData?(v488, v496, v519, v236, v503, v526);
            v484(v465, v457);
            v536(logb, v467);
            (*(v456 + 8))(v480, v475);
            goto LABEL_132;
          }

          outlined consume of Data?(v238, v526);
          v235 = v519;
        }

        v248 = MLS.Group.IncomingApplicationMessageDetails.era.getter();
        if ((v248 & 0x100000000) == 0 && v235 != v248)
        {
          v537 = v68;
          v498 = v248;
          v424 = *(v0 + 20768);
          outlined init with copy of MLS.OutgoingEventState?(v424, v0 + 6736, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
          outlined init with copy of MLS.OutgoingEventState?(v424, v0 + 6904, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
          v523 = v235;
          v514 = v236;
          outlined copy of MLS.AdditionalAuthenticatedData?(v488, v220, v235, v236, v238, v526);
          v425 = Logger.logObject.getter();
          v426 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v425, v426))
          {
            v427 = *(v0 + 21312);
            v505 = v238;
            v428 = *(v0 + 21304);
            v429 = *(v0 + 20768);
            v430 = swift_slowAlloc();
            v431 = swift_slowAlloc();
            *v548 = v431;
            *v430 = 136315650;

            v432 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v428, v427, v548);

            *(v430 + 4) = v432;
            outlined destroy of NSObject?(v429, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
            outlined destroy of NSObject?(v429, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
            v433 = v220;
            *(v430 + 12) = 1024;
            *(v430 + 14) = v523;
            v434 = v488;
            v435 = v505;
            v243 = v526;
            outlined consume of MLS.AdditionalAuthenticatedData?(v488, v220, v523, v514, v505, v526);
            *(v430 + 18) = 1024;
            *(v430 + 20) = v498;
            _os_log_impl(&dword_264F1F000, v425, v426, "SwiftMLSClientCoordinator processIncoming processed message had mismatched AAD era { identifier: %s, clientEra: %u, era: %u }", v430, 0x18u);
            __swift_destroy_boxed_opaque_existential_1Tm(v431);
            MEMORY[0x266755550](v431, -1, -1);
            MEMORY[0x266755550](v430, -1, -1);
          }

          else
          {
            v459 = *(v0 + 20768);

            outlined destroy of NSObject?(v459, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
            outlined destroy of NSObject?(v459, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
            outlined consume of MLS.AdditionalAuthenticatedData?(v488, v220, v235, v236, v238, v526);
            v435 = v238;
            v433 = v220;
            v434 = v488;
          }

          v499 = *(v0 + 21288);
          v460 = *(v0 + 21264);
          v486 = *(v0 + 21192);
          v492 = *(v0 + 21256);
          v481 = *(v0 + 21120);
          logc = *(v0 + 21048);
          v461 = *(v0 + 21024);
          v462 = *(v0 + 21016);
          lazy protocol witness table accessor for type MLS.IncomingMessageError and conformance MLS.IncomingMessageError();
          swift_allocError();
          *v463 = 16;
          *(v463 + 8) = 0;
          *(v463 + 16) = 0;
          swift_willThrow();
          outlined consume of MLS.AdditionalAuthenticatedData?(v434, v433, v523, v514, v435, v243);
          outlined consume of MLS.AdditionalAuthenticatedData?(v434, v433, v523, v514, v435, v243);
          (*(v461 + 8))(logc, v462);
          v537(v486, v481);
          (*(v460 + 8))(v499, v492);
          goto LABEL_132;
        }

        outlined consume of MLS.AdditionalAuthenticatedData?(v488, v220, v235, v236, v238, v526);
        outlined consume of MLS.AdditionalAuthenticatedData?(v488, v220, v235, v236, v238, v526);
LABEL_85:
        v281 = *(v0 + 20800);
        v282 = *(v0 + 20768);
        v283 = *(v0 + 20752);
        v285 = v283[1];
        v284 = v283[2];
        v286 = *v283;
        *(v0 + 18562) = *(v283 + 42);
        *(v0 + 18536) = v285;
        *(v0 + 18552) = v284;
        *(v0 + 18520) = v286;
        v287 = MLS.Group.IncomingApplicationMessageDetails.data.getter();
        v289 = v288;
        *(v0 + 21800) = v287;
        *(v0 + 21808) = v288;
        swift_beginAccess();
        *(v0 + 20720) = *(v281 + 16);
        v290 = *v282;
        v291 = v282[1];
        *(v0 + 6432) = v282[2];
        *(v0 + 6416) = v291;
        *(v0 + 6400) = v290;
        v292 = v282[3];
        v293 = v282[4];
        v294 = v282[5];
        *(v0 + 6496) = v282[6];
        *(v0 + 6480) = v294;
        *(v0 + 6464) = v293;
        *(v0 + 6448) = v292;
        v295 = v282[7];
        v296 = v282[8];
        v297 = v282[9];
        *(v0 + 6560) = *(v282 + 20);
        *(v0 + 6544) = v297;
        *(v0 + 6528) = v296;
        *(v0 + 6512) = v295;

        v298 = swift_task_alloc();
        *(v0 + 21816) = v298;
        *v298 = v0;
        v298[1] = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
        v97 = *(v0 + 21312);
        v98 = *(v0 + 21304);
        v99 = *(v0 + 20792);
        v100 = *(v0 + 20784);
        v299 = *(v0 + 20776);
        v102 = *(v0 + 20744);
        v557 = v0 + 20720;
        v558 = v0 + 6400;
        v556 = v299;
        v103 = v0 + 18520;
        v104 = v287;
        v105 = v289;
        goto LABEL_86;
      }

      v199 = HIDWORD(v110);
      v200 = v110;
      v167 = outlined consume of Data._Representation(v110, v111);
      if (!__OFSUB__(v199, v200))
      {
        if (v199 == v200)
        {
          goto LABEL_57;
        }

        goto LABEL_70;
      }
    }

    __break(1u);
LABEL_137:
    __break(1u);
    return MEMORY[0x2822009F8](v167, v168, v169);
  }

  if (v76 == *MEMORY[0x277D6AAC0])
  {
    v533 = v68;
    v126 = *(v0 + 21152);
    v127 = *(v0 + 20864);
    v128 = *(v0 + 20856);
    v129 = *(v0 + 20848);
    v130 = *(v0 + 20768);
    (*(*(v0 + 21128) + 96))(v126, *(v0 + 21120));
    (*(v128 + 32))(v127, v126, v129);
    v132 = v130[3];
    v131 = v130[4];
    v133 = v130[2];
    *(v0 + 18180) = *(v130 + 76);
    *(v0 + 18152) = v132;
    *(v0 + 18168) = v131;
    *(v0 + 18136) = v133;
    v134 = *(v0 + 18152);
    v135 = *(v0 + 18168);
    if (v134 >> 16 == 0xFFFFFFFF && (v135 & 0x3000000000000000) == 0)
    {
      v136 = *(v0 + 20768);
      outlined init with copy of MLS.OutgoingEventState?(v136, v0 + 856, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
      outlined init with copy of MLS.OutgoingEventState?(v136, v0 + 10936, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
      v137 = Logger.logObject.getter();
      v138 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v137, v138))
      {
        v139 = *(v0 + 21312);
        v140 = *(v0 + 21304);
        v141 = *(v0 + 20768);
        v142 = swift_slowAlloc();
        v143 = swift_slowAlloc();
        *v548 = v143;
        *v142 = 136315138;

        v144 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v140, v139, v548);

        *(v142 + 4) = v144;
        outlined destroy of NSObject?(v141, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
        outlined destroy of NSObject?(v141, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
        _os_log_impl(&dword_264F1F000, v137, v138, "SwiftMLSClientCoordinator processIncoming signed message was not given expected data { identifier: %s }", v142, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v143);
        MEMORY[0x266755550](v143, -1, -1);
        MEMORY[0x266755550](v142, -1, -1);
      }

      else
      {
        v316 = *(v0 + 20768);

        outlined destroy of NSObject?(v316, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
        outlined destroy of NSObject?(v316, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
      }

      v317 = *(v0 + 21288);
      v318 = *(v0 + 21264);
      v319 = *(v0 + 21256);
      v320 = *(v0 + 21192);
      v321 = *(v0 + 21120);
      v528 = *(v0 + 20864);
      v322 = *(v0 + 20856);
      v323 = *(v0 + 20848);
      lazy protocol witness table accessor for type MLS.IncomingMessageError and conformance MLS.IncomingMessageError();
      swift_allocError();
      *v324 = 12;
      *(v324 + 8) = 0;
      *(v324 + 16) = 0;
      swift_willThrow();
      v533(v320, v321);
      (*(v318 + 8))(v317, v319);
      (*(v322 + 8))(v528, v323);
      goto LABEL_132;
    }

    v494 = *(v0 + 18192);
    v501 = *(v0 + 18184);
    v509 = *(v0 + 18176);
    v541 = *(v0 + 18160);
    v487 = *(v0 + 18136);
    v192 = v130[3];
    v191 = v130[4];
    v193 = v130[2];
    *(v0 + 18244) = *(v130 + 76);
    *(v0 + 18216) = v192;
    *(v0 + 18232) = v191;
    *(v0 + 18200) = v193;
    outlined init with copy of MLS.OutgoingEventState?(v0 + 18136, v0 + 18264, &_s15SecureMessaging3MLSO12SigningInputVSgMd, &_s15SecureMessaging3MLSO12SigningInputVSgMR);
    outlined init with copy of MLS.OutgoingEventState?(v0 + 18136, v0 + 18328, &_s15SecureMessaging3MLSO12SigningInputVSgMd, &_s15SecureMessaging3MLSO12SigningInputVSgMR);
    outlined init with copy of MLS.SigningInput(v0 + 18200, v0 + 18392);
    v194 = Logger.logObject.getter();
    v195 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v194, v195))
    {
      v196 = swift_slowAlloc();
      v197 = swift_slowAlloc();
      v546[0] = v197;
      *v196 = 136315138;
      v198 = (v135 >> 60) & 3;
      if (v198)
      {
        *v548 = v134;
        *&v548[8] = v541;
        *&v548[16] = v135 & 0xCFFFFFFFFFFFFFFFLL;
        if (v198 == 1)
        {
          v549 = v509;
          v550 = v501;
          LOWORD(v551) = v494;
          v379 = MLS.EncryptedRCS.DisplayIMDNSigningInput.description.getter();
        }

        else
        {
          v379 = MLS.EncryptedRCS.FileTransferSigningInput.description.getter();
        }
      }

      else
      {
        *v548 = v134;
        *&v548[8] = v541;
        *&v548[16] = v135;
        v549 = v509;
        v550 = v501;
        LODWORD(v551) = v494;
        v379 = MLS.EncryptedRCS.DeliveryIMDNSigningInput.description.getter();
      }

      v381 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v379, v380, v546);

      *(v196 + 4) = v381;
      outlined destroy of NSObject?(v0 + 18136, &_s15SecureMessaging3MLSO12SigningInputVSgMd, &_s15SecureMessaging3MLSO12SigningInputVSgMR);
      outlined destroy of NSObject?(v0 + 18136, &_s15SecureMessaging3MLSO12SigningInputVSgMd, &_s15SecureMessaging3MLSO12SigningInputVSgMR);
      _os_log_impl(&dword_264F1F000, v194, v195, "SwiftMLSClientCoordinator processIncoming signed data. { expectedSignedData: %s }", v196, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v197);
      MEMORY[0x266755550](v197, -1, -1);
      MEMORY[0x266755550](v196, -1, -1);
    }

    else
    {

      outlined destroy of NSObject?(v0 + 18136, &_s15SecureMessaging3MLSO12SigningInputVSgMd, &_s15SecureMessaging3MLSO12SigningInputVSgMR);
      outlined destroy of NSObject?(v0 + 18136, &_s15SecureMessaging3MLSO12SigningInputVSgMd, &_s15SecureMessaging3MLSO12SigningInputVSgMR);
    }

    v382 = *(v0 + 20768);
    *v548 = v487;
    *&v548[16] = v134;
    v549 = v541;
    v550 = v135;
    v551 = v509;
    v552 = v501;
    v553 = v494;
    outlined init with copy of MLS.OutgoingEventState?(v382, v0 + 10768, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);

    outlined init with copy of MLS.OutgoingEventState?(v382, v0 + 10432, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);

    MLS.EncryptedRCS.SigningInput.verifiableDerivedContent.getter((v0 + 18824));
    __swift_project_boxed_opaque_existential_1((v0 + 18824), *(v0 + 18848));
    v383 = MLS.Group.IncomingSignedMessage.verifiableDerivedContentData.getter();
    v385 = v384;
    MLS.VerifiableDerivedContent.verifyEquals(_:)();
    if (v516)
    {
      v386 = v516;
      v529 = *(v0 + 21288);
      v497 = *(v0 + 21264);
      v504 = *(v0 + 21256);
      v479 = *(v0 + 21120);
      v485 = *(v0 + 21192);
      v521 = *(v0 + 20864);
      v491 = *(v0 + 20856);
      v512 = *(v0 + 20848);
      v387 = *(v0 + 20768);
      v388 = *(v0 + 20760);
      outlined consume of Data._Representation(v383, v385);
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 18824));
      swift_getErrorValue();
      v389 = Error.readableDescription.getter(*(v0 + 19784), *(v0 + 19792));
      closure #8 in closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:)(v389, v390, v388, v387);

      swift_getErrorValue();
      v391 = Error.readableDescription.getter(*(v0 + 19760), *(v0 + 19768));
      v393 = v392;
      *(v0 + 19704) = 13;
      *(v0 + 19712) = v391;
      *(v0 + 19720) = v392;
      lazy protocol witness table accessor for type MLS.IncomingMessageError and conformance MLS.IncomingMessageError();
      swift_willThrowTypedImpl();

      outlined destroy of NSObject?(v387, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);

      outlined destroy of NSObject?(v387, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);

      swift_allocError();
      *v394 = 13;
      *(v394 + 8) = v391;
      *(v394 + 16) = v393;
      outlined destroy of NSObject?(v0 + 18136, &_s15SecureMessaging3MLSO12SigningInputVSgMd, &_s15SecureMessaging3MLSO12SigningInputVSgMR);
      v533(v485, v479);
      (*(v497 + 8))(v529, v504);
      (*(v491 + 8))(v521, v512);
      goto LABEL_132;
    }

    v522 = *(v0 + 21312);
    v513 = *(v0 + 21304);
    v395 = *(v0 + 20768);
    v396 = *(v0 + 20752);

    outlined destroy of NSObject?(v395, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);

    outlined destroy of NSObject?(v395, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);

    outlined consume of Data._Representation(v383, v385);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 18824));
    v397 = *(v396 + 32);
    *(v0 + 19249) = *(v396 + 41);
    *(v0 + 19240) = v397;
    *(v0 + 20272) = *(v395 + 16);
    v398 = *(v396 + 32);
    *(v0 + 17905) = *(v396 + 41);
    *(v0 + 17896) = v398;
    *&v548[7] = *(v395 + 16);
    *(v0 + 17880) = v513;
    *(v0 + 17888) = v522;
    *(v0 + 17921) = *v548;
    *(v0 + 17936) = *&v548[15];
    v399 = *(v0 + 17896);
    *(v0 + 16696) = *(v0 + 17880);
    *(v0 + 16712) = v399;
    v400 = *(v0 + 17928);
    *(v0 + 16728) = *(v0 + 17912);
    *(v0 + 16744) = v400;
    outlined init with copy of MLS.OutgoingEventState?(v395, v0 + 9592, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    outlined init with copy of MLS.OutgoingEventState?(v0 + 20272, v0 + 20384, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
    outlined init with copy of MLS.OutgoingEventState?(v395, v0 + 9424, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);

    outlined init with copy of MLS.OutgoingEventState?(v0 + 20272, v0 + 20368, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
    outlined init with copy of MLS.AllMember(v0 + 19240, v0 + 19624);
    v401 = Logger.logObject.getter();
    v402 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v401, v402))
    {
      v403 = *(v0 + 21312);
      v404 = *(v0 + 21304);
      v405 = *(v0 + 20768);
      v406 = swift_slowAlloc();
      v407 = swift_slowAlloc();
      *v548 = v407;
      *v406 = 136315138;

      v408 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v404, v403, v548);

      *(v406 + 4) = v408;
      outlined destroy of NSObject?(v405, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
      outlined destroy of NSObject?(v405, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
      _os_log_impl(&dword_264F1F000, v401, v402, "SwiftMLSClientCoordinator processIncoming sending signature verified event { identifier: %s }", v406, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v407);
      MEMORY[0x266755550](v407, -1, -1);
      MEMORY[0x266755550](v406, -1, -1);
    }

    else
    {
      v409 = *(v0 + 20768);

      outlined destroy of NSObject?(v409, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
      outlined destroy of NSObject?(v409, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    }

    v410 = *(v0 + 20760);
    v411 = v410[12];
    v412 = *(v0 + 16744);
    *(v0 + 15712) = *(v0 + 16728);
    *(v0 + 15728) = v412;
    v413 = *(v0 + 16776);
    *(v0 + 15744) = *(v0 + 16760);
    *(v0 + 15760) = v413;
    v414 = *(v0 + 16712);
    *(v0 + 15680) = *(v0 + 16696);
    v415 = *(v0 + 20776);
    *(v0 + 22256) = v411;
    *(v0 + 15696) = v414;
    *(v0 + 15776) = 7;
    outlined init with copy of ServerBag.MLS(v415, v0 + 18944);
    v416 = v410[10];
    *(v0 + 22264) = v416;
    v417 = v410[11];
    *(v0 + 22272) = v417;
    v418 = direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier;
    *(v0 + 22280) = direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier;
    v419 = (v410 + v418);
    v420 = v419[1];
    *(v0 + 20352) = *v419;
    *(v0 + 20360) = v420;

    swift_unknownObjectRetain();

    v421 = swift_task_alloc();
    *(v0 + 22288) = v421;
    *v421 = v0;
    v421[1] = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
    v422 = *(v0 + 20792);
    v423 = *(v0 + 20784);

    return MLS.Group.init(identifier:swiftMLSGroup:persister:clientIdentifier:)(v0 + 13496, v423, v422, v0 + 18944, v416, v417, (v0 + 20352));
  }

  if (v76 == *MEMORY[0x277D6AAC8])
  {
    v180 = *(v0 + 21152);
    v181 = *(v0 + 21008);
    v182 = *(v0 + 21000);
    (*(*(v0 + 21128) + 96))(v180, *(v0 + 21120));
    outlined init with take of MLS.Group.Member?(v180, v181, &_s8SwiftMLS0B0O5GroupO11StateUpdateVSgMd, &_s8SwiftMLS0B0O5GroupO11StateUpdateVSgMR);
    outlined init with copy of MLS.OutgoingEventState?(v181, v182, &_s8SwiftMLS0B0O5GroupO11StateUpdateVSgMd, &_s8SwiftMLS0B0O5GroupO11StateUpdateVSgMR);
    v183 = type metadata accessor for MLS.Group.StateUpdate();
    *(v0 + 21832) = v183;
    v184 = *(v183 - 8);
    *(v0 + 21840) = v184;
    v185 = *(v184 + 48);
    *(v0 + 21848) = v185;
    *(v0 + 21856) = (v184 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
    v186 = v185(v182, 1, v183);
    v187 = *(v0 + 21000);
    if (v186 == 1)
    {
      v188 = *(v0 + 20760);
      v189 = *(v0 + 20752);
      outlined destroy of NSObject?(*(v0 + 21000), &_s8SwiftMLS0B0O5GroupO11StateUpdateVSgMd, &_s8SwiftMLS0B0O5GroupO11StateUpdateVSgMR);
      if (*(v189 + 32) == *(v188 + direct field offset for MLS.SwiftMLSClientCoordinator.selfMember) && *(v189 + 40) == *(v188 + direct field offset for MLS.SwiftMLSClientCoordinator.selfMember + 8))
      {
        v190 = 1;
      }

      else
      {
        v190 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }
    }

    else
    {
      v190 = MLS.Group.StateUpdate.committerWasSelf.getter();
      (*(v184 + 8))(v187, v183);
    }

    *(v0 + 15570) = v190 & 1;
    v333 = *(v0 + 20776);
    v334 = v333[3];
    v335 = v333[4];
    __swift_project_boxed_opaque_existential_1(v333, v334);
    v543 = (*(v335 + 40) + **(v335 + 40));
    v336 = swift_task_alloc();
    *(v0 + 21864) = v336;
    *v336 = v0;
    v336[1] = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);

    return (v543)(v334, v335);
  }

LABEL_64:
  if (v76 != *MEMORY[0x277D6AAD0])
  {
    if (v76 != *MEMORY[0x277D6AAB8])
    {
      v348 = *(v0 + 20768);
      outlined init with copy of MLS.OutgoingEventState?(v348, v0 + 2536, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
      outlined init with copy of MLS.OutgoingEventState?(v348, v0 + 2704, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
      v349 = Logger.logObject.getter();
      v350 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v349, v350))
      {
        v351 = *(v0 + 21312);
        v352 = *(v0 + 21304);
        v353 = *(v0 + 20768);
        v354 = swift_slowAlloc();
        v355 = swift_slowAlloc();
        *v548 = v355;
        *v354 = 136315138;

        v356 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v352, v351, v548);

        *(v354 + 4) = v356;
        outlined destroy of NSObject?(v353, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
        outlined destroy of NSObject?(v353, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
        _os_log_impl(&dword_264F1F000, v349, v350, "SwiftMLSClientCoordinator processIncoming missing SwiftMLS incoming message type { identifier: %s }", v354, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v355);
        MEMORY[0x266755550](v355, -1, -1);
        MEMORY[0x266755550](v354, -1, -1);
      }

      else
      {
        v444 = *(v0 + 20768);

        outlined destroy of NSObject?(v444, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
        outlined destroy of NSObject?(v444, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
      }

      v445 = *(v0 + 21288);
      v446 = *(v0 + 21264);
      v447 = *(v0 + 21256);
      v448 = *(v0 + 21192);
      v449 = *(v0 + 21152);
      v450 = *(v0 + 21120);
      lazy protocol witness table accessor for type MLS.IncomingMessageError and conformance MLS.IncomingMessageError();
      swift_allocError();
      *v451 = 6;
      *(v451 + 8) = 0;
      *(v451 + 16) = 0;
      swift_willThrow();
      v68(v448, v450);
      (*(v446 + 8))(v445, v447);
      v68(v449, v450);
      goto LABEL_132;
    }

    v300 = *(v0 + 21312);
    v301 = *(v0 + 21304);
    v302 = *(v0 + 20768);
    v303 = *(v0 + 20752);
    v304 = *(v303 + 32);
    *(v0 + 19505) = *(v303 + 41);
    *(v0 + 19496) = v304;
    *(v0 + 20288) = *(v302 + 16);
    v305 = *(v303 + 32);
    *(v0 + 18033) = *(v303 + 41);
    *(v0 + 18024) = v305;
    *&v548[7] = *(v302 + 16);
    *(v0 + 18008) = v301;
    *(v0 + 18016) = v300;
    *(v0 + 18049) = *v548;
    *(v0 + 18064) = *&v548[15];
    v306 = *(v0 + 18024);
    *(v0 + 17080) = *(v0 + 18008);
    *(v0 + 17096) = v306;
    v307 = *(v0 + 18056);
    *(v0 + 17112) = *(v0 + 18040);
    *(v0 + 17128) = v307;
    outlined init with copy of MLS.OutgoingEventState?(v302, v0 + 2872, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    outlined init with copy of MLS.OutgoingEventState?(v0 + 20288, v0 + 20496, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
    outlined init with copy of MLS.OutgoingEventState?(v302, v0 + 3208, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);

    outlined init with copy of MLS.OutgoingEventState?(v0 + 20288, v0 + 20480, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
    outlined init with copy of MLS.AllMember(v0 + 19496, v0 + 19432);
    v308 = Logger.logObject.getter();
    v309 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v308, v309))
    {
      v310 = *(v0 + 21312);
      v311 = *(v0 + 21304);
      v312 = *(v0 + 20768);
      v313 = swift_slowAlloc();
      v314 = swift_slowAlloc();
      *v548 = v314;
      *v313 = 136315138;

      v315 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v311, v310, v548);

      *(v313 + 4) = v315;
      outlined destroy of NSObject?(v312, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
      outlined destroy of NSObject?(v312, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
      _os_log_impl(&dword_264F1F000, v308, v309, "SwiftMLSClientCoordinator processIncoming sending internal message event { identifier: %s }", v313, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v314);
      MEMORY[0x266755550](v314, -1, -1);
      MEMORY[0x266755550](v313, -1, -1);
    }

    else
    {
      v436 = *(v0 + 20768);

      outlined destroy of NSObject?(v436, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
      outlined destroy of NSObject?(v436, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    }

    v437 = *(v0 + 20776);
    v438 = *(v0 + 20760);
    *(v0 + 22336) = v438[12];
    v439 = *(v0 + 17128);
    *(v0 + 15608) = *(v0 + 17112);
    *(v0 + 15624) = v439;
    v440 = *(v0 + 17160);
    *(v0 + 15640) = *(v0 + 17144);
    *(v0 + 15656) = v440;
    v441 = *(v0 + 17096);
    *(v0 + 15576) = *(v0 + 17080);
    *(v0 + 15592) = v441;
    *(v0 + 15672) = 9;
    outlined init with copy of ServerBag.MLS(v437, v0 + 18984);
    *(v0 + 22344) = v438[10];
    *(v0 + 22352) = v438[11];
    v442 = direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier;
    *(v0 + 22360) = direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier;
    v443 = (v438 + v442);
    *(v0 + 22368) = *v443;
    *(v0 + 22376) = v443[1];

    swift_unknownObjectRetain();

    v167 = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
    v168 = 0;
    v169 = 0;

    return MEMORY[0x2822009F8](v167, v168, v169);
  }

  v208 = *(v0 + 20768);
  outlined init with copy of MLS.OutgoingEventState?(v208, v0 + 8248, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
  outlined init with copy of MLS.OutgoingEventState?(v208, v0 + 7912, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
  v209 = Logger.logObject.getter();
  v210 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v209, v210))
  {
    v211 = *(v0 + 21312);
    v212 = *(v0 + 21304);
    v213 = *(v0 + 20768);
    v214 = swift_slowAlloc();
    v215 = swift_slowAlloc();
    *v548 = v215;
    *v214 = 136315138;

    v216 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v212, v211, v548);

    *(v214 + 4) = v216;
    outlined destroy of NSObject?(v213, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    outlined destroy of NSObject?(v213, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    _os_log_impl(&dword_264F1F000, v209, v210, "SwiftMLSClientCoordinator processIncoming committing proposal { identifier: %s }", v214, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v215);
    MEMORY[0x266755550](v215, -1, -1);
    MEMORY[0x266755550](v214, -1, -1);
  }

  else
  {
    v337 = *(v0 + 20768);

    outlined destroy of NSObject?(v337, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    outlined destroy of NSObject?(v337, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
  }

  v338 = *(v0 + 21608);
  v339 = *(v0 + 21592);
  v340 = *(v0 + 21584);
  v341 = *(v0 + 21576);
  v342 = *(v0 + 21200);
  v343 = *(v0 + 20776);
  swift_beginAccess();
  Date.init()();
  v339(v342 + *(v341 + 20), 1, 1, v340);
  v338(v342, 0, 1, v341);
  specialized Dictionary.subscript.setter(v342, 0xD000000000000016, 0x80000002651E7960);
  swift_endAccess();
  v344 = v343[3];
  v345 = v343[4];
  __swift_project_boxed_opaque_existential_1(v343, v344);
  v544 = (*(v345 + 248) + **(v345 + 248));
  v346 = swift_task_alloc();
  *(v0 + 22200) = v346;
  *v346 = v0;
  v346[1] = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
  v347 = *(v0 + 20920);

  return (v544)(v347, v344, v345);
}

{
  v2 = *v1;
  *(*v1 + 21792) = v0;

  if (v0)
  {
    v3 = *(v2 + 21296);

    v4 = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
  }

  else
  {
    v3 = *(v2 + 21296);

    v4 = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{
  v1 = v0[2720];
  v2 = v0[2661];
  v3 = v0[2658];
  v4 = v0[2657];
  v5 = v0[2649];
  v6 = v0[2644];
  v7 = v0[2640];
  outlined consume of Data._Representation(v0[2721], v0[2722]);
  v1(v5, v7);
  (*(v3 + 8))(v2, v4);
  outlined destroy of NSObject?(v6, &_s8SwiftMLS0B0O8IdentityO07SigningC0VSgMd, &_s8SwiftMLS0B0O8IdentityO07SigningC0VSgMR);

  v8 = v0[1];

  return v8();
}

{
  v2 = *v1;
  *(*v1 + 21824) = v0;

  if (v0)
  {
    v3 = v2[2726];
    v4 = v2[2725];
    v5 = v2[2662];

    outlined consume of Data._Representation(v4, v3);
    v6 = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
  }

  else
  {
    v7 = v2[2726];
    v8 = v2[2725];
    v5 = v2[2662];

    outlined consume of Data._Representation(v8, v7);
    v6 = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

{
  v1 = v0[2720];
  v2 = v0[2661];
  v3 = v0[2658];
  v4 = v0[2657];
  v5 = v0[2649];
  v6 = v0[2640];
  (*(v0[2628] + 8))(v0[2631], v0[2627]);
  v1(v5, v6);
  (*(v3 + 8))(v2, v4);

  v7 = v0[1];

  return v7();
}

{
  v240 = v0;
  if (*(v0 + 15571) == 1)
  {
    v1 = (v0 + 17176);
    v2 = *(v0 + 21664);
    v3 = *(v0 + 21640);
    v4 = *(v0 + 21312);
    v5 = *(v0 + 21304);
    v6 = *(v0 + 20792);
    v7 = *(v0 + 20768);
    v8 = *(v0 + 20752);
    if ((v2 & 0x100000000) != 0)
    {
      v2 = 1;
    }

    else
    {
      v2 = v2;
    }

    *(v0 + 11312) = *(v0 + 20784);
    *(v0 + 11320) = v6;
    *(v0 + 11328) = v2;
    *(v0 + 11336) = v2;
    *(v0 + 11344) = v3 + 1;
    *(v0 + 11352) = 0;
    *(v0 + 11360) = xmmword_2651CBF00;
    *(v0 + 11376) = xmmword_2651CBF00;
    *(v0 + 11392) = xmmword_2651CBF00;
    *(v0 + 11408) = 0xF000000000000000;
    v9 = *(v8 + 32);
    *(v0 + 19601) = *(v8 + 41);
    *(v0 + 19592) = v9;
    *(v0 + 20624) = *(v7 + 16);
    v10 = *(v8 + 32);
    *(v0 + 17713) = *(v8 + 41);
    *(v0 + 17704) = v10;
    *&v239[7] = *(v7 + 16);
    *(v0 + 17688) = v5;
    *(v0 + 17696) = v4;
    *(v0 + 17729) = *v239;
    *(v0 + 17744) = *&v239[15];
    v11 = *(v0 + 17704);
    *v1 = *(v0 + 17688);
    *(v0 + 17192) = v11;
    v12 = *(v0 + 17736);
    *(v0 + 17208) = *(v0 + 17720);
    *(v0 + 17224) = v12;
    outlined init with copy of MLS.OutgoingEventState?(v7, v0 + 184, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    outlined init with copy of MLS.OutgoingEventState?(v0 + 20624, v0 + 20672, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
    outlined init with copy of MLS.OutgoingEventState?(v7, v0 + 8920, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);

    outlined init with copy of MLS.OutgoingEventState?(v0 + 20624, v0 + 20096, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
    outlined init with copy of MLS.AllMember(v0 + 19592, v0 + 19400);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = *(v0 + 21312);
      v16 = *(v0 + 21304);
      v17 = *(v0 + 20768);
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v239 = v19;
      *v18 = 136315138;

      v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v15, v239);

      *(v18 + 4) = v20;
      outlined destroy of NSObject?(v17, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
      outlined destroy of NSObject?(v17, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
      _os_log_impl(&dword_264F1F000, v13, v14, "SwiftMLSClientCoordinator processIncoming sending incoming downgrade recommended event { identifier: %s }", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v19);
      MEMORY[0x266755550](v19, -1, -1);
      MEMORY[0x266755550](v18, -1, -1);
    }

    else
    {
      v26 = *(v0 + 20768);

      outlined destroy of NSObject?(v26, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
      outlined destroy of NSObject?(v26, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    }

    v27 = *(*(v0 + 20760) + 96);
    v28 = *(v0 + 17224);
    *(v0 + 16024) = *(v0 + 17208);
    *(v0 + 16040) = v28;
    v29 = *(v0 + 17256);
    *(v0 + 16056) = *(v0 + 17240);
    *(v0 + 16072) = v29;
    v30 = *(v0 + 17192);
    *(v0 + 15992) = *v1;
    *(v0 + 16008) = v30;
    *(v0 + 16088) = 5;
    v31 = *(v0 + 11328);
    *(v0 + 14744) = *(v0 + 11312);
    *(v0 + 14760) = v31;
    v32 = *(v0 + 11344);
    v33 = *(v0 + 11360);
    v34 = *(v0 + 11376);
    v35 = *(v0 + 11392);
    *(v0 + 14840) = *(v0 + 11408);
    *(v0 + 14808) = v34;
    *(v0 + 14824) = v35;
    *(v0 + 14776) = v32;
    *(v0 + 14792) = v33;
    v237 = (*(*v27 + 384) + **(*v27 + 384));
    v36 = swift_task_alloc();
    *(v0 + 21880) = v36;
    *v36 = v0;
    v36[1] = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
    v37 = *(v0 + 15570);

    return v237(v0 + 15992, v0 + 14744, 1, v37);
  }

  v21 = *(v0 + 21848);
  v22 = *(v0 + 21832);
  v23 = *(v0 + 20992);
  outlined init with copy of MLS.OutgoingEventState?(*(v0 + 21008), v23, &_s8SwiftMLS0B0O5GroupO11StateUpdateVSgMd, &_s8SwiftMLS0B0O5GroupO11StateUpdateVSgMR);
  if (v21(v23, 1, v22) == 1)
  {
    outlined destroy of NSObject?(*(v0 + 20992), &_s8SwiftMLS0B0O5GroupO11StateUpdateVSgMd, &_s8SwiftMLS0B0O5GroupO11StateUpdateVSgMR);
    v24 = *(v0 + 21872);
    v25 = MEMORY[0x277D84F90];
  }

  else
  {
    v24 = *(v0 + 21872);
    v39 = *(v0 + 21840);
    v40 = *(v0 + 21832);
    v41 = *(v0 + 20992);
    v42 = *(v0 + 20968);
    v43 = *(v0 + 20960);
    v44 = *(v0 + 20952);
    MLS.Group.StateUpdate.rosterUpdate.getter();
    (*(v39 + 8))(v41, v40);
    v45 = MLS.Group.RosterUpdate.removed.getter();
    (*(v43 + 8))(v42, v44);
    v25 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay8SwiftMLS0E0O5GroupO6MemberVG_AH8IdentityO10CredentialOs5NeverOTg5026_s15SecureMessaging3MLSO25d120MLSClientCoordinatorC15processIncoming7message8forGroup7contextAC0H23MessageProcessedContextVy_10Foundation4DataVGAC0hM0y7_AC9Allg12OG_SSAC0hmO0y45_ANGtYaKFAOyYaYbKAA8MLSActorCYcXEfU0_0dC0ABO8h3O10I17OA_0K0O0S0VXEfU0_Tf1cn_nTm(v45, 973);
  }

  v46 = *(v0 + 21848);
  v47 = *(v0 + 21832);
  v48 = *(v0 + 21008);
  v49 = *(v0 + 20984);
  v234 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC8SwiftMLS0C0O8IdentityO10CredentialO_SayAJGTt0g5Tf4g_n(v25);
  *(v0 + 21896) = v234;

  outlined init with copy of MLS.OutgoingEventState?(v48, v49, &_s8SwiftMLS0B0O5GroupO11StateUpdateVSgMd, &_s8SwiftMLS0B0O5GroupO11StateUpdateVSgMR);
  if (v46(v49, 1, v47) == 1)
  {
    outlined destroy of NSObject?(*(v0 + 20984), &_s8SwiftMLS0B0O5GroupO11StateUpdateVSgMd, &_s8SwiftMLS0B0O5GroupO11StateUpdateVSgMR);
    v50 = MEMORY[0x277D84F90];
  }

  else
  {
    v51 = *(v0 + 21840);
    v52 = *(v0 + 21832);
    v53 = *(v0 + 20984);
    v54 = *(v0 + 20968);
    v55 = *(v0 + 20960);
    v56 = *(v0 + 20952);
    MLS.Group.StateUpdate.rosterUpdate.getter();
    (*(v51 + 8))(v53, v52);
    v57 = MLS.Group.RosterUpdate.added.getter();
    (*(v55 + 8))(v54, v56);
    v50 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay8SwiftMLS0E0O5GroupO6MemberVG_AH8IdentityO10CredentialOs5NeverOTg5026_s15SecureMessaging3MLSO25d120MLSClientCoordinatorC15processIncoming7message8forGroup7contextAC0H23MessageProcessedContextVy_10Foundation4DataVGAC0hM0y7_AC9Allg12OG_SSAC0hmO0y45_ANGtYaKFAOyYaYbKAA8MLSActorCYcXEfU0_0dC0ABO8h3O10I17OA_0K0O0S0VXEfU0_Tf1cn_nTm(v57, 974);
  }

  v58 = *(v0 + 21848);
  v59 = *(v0 + 21832);
  v60 = *(v0 + 21008);
  v61 = *(v0 + 20976);
  v62 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC8SwiftMLS0C0O8IdentityO10CredentialO_SayAJGTt0g5Tf4g_n(v50);
  *(v0 + 21904) = v62;

  outlined init with copy of MLS.OutgoingEventState?(v60, v61, &_s8SwiftMLS0B0O5GroupO11StateUpdateVSgMd, &_s8SwiftMLS0B0O5GroupO11StateUpdateVSgMR);
  if (v58(v61, 1, v59) == 1)
  {
    outlined destroy of NSObject?(*(v0 + 20976), &_s8SwiftMLS0B0O5GroupO11StateUpdateVSgMd, &_s8SwiftMLS0B0O5GroupO11StateUpdateVSgMR);
    updated = MEMORY[0x277D84F90];
  }

  else
  {
    v64 = *(v0 + 21840);
    v65 = *(v0 + 21832);
    v66 = *(v0 + 20976);
    v67 = *(v0 + 20968);
    v68 = *(v0 + 20960);
    v69 = *(v0 + 20952);
    MLS.Group.StateUpdate.rosterUpdate.getter();
    (*(v64 + 8))(v66, v65);
    v70 = MLS.Group.RosterUpdate.updated.getter();
    (*(v68 + 8))(v67, v69);
    updated = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay8SwiftMLS0E0O5GroupO12MemberUpdateVG_AH8IdentityO10CredentialOs5NeverOTg5026_s15SecureMessaging3MLSO25d120MLSClientCoordinatorC15processIncoming7message8forGroup7contextAC0H23MessageProcessedContextVy_10Foundation4DataVGAC0hM0z7_AC9Allg12OG_SSAC0hmO0z45_ANGtYaKFAOyYaYbKAA8MLSActorCYcXEfU0_0dC0ABO8i3O10j10OA_0K0O0S6H7VXEfU2_Tf1cn_n(v70);
  }

  v71 = *(v0 + 20760);
  v72 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC8SwiftMLS0C0O8IdentityO10CredentialO_SayAJGTt0g5Tf4g_n(updated);
  *(v0 + 21912) = v72;

  v73 = v71[16];
  v74 = v71[17];
  __swift_project_boxed_opaque_existential_1(v71 + 13, v73);
  v75 = (*(v74 + 8))(v62, v73, v74);
  *(v0 + 21920) = v75;
  if (v24)
  {
    v76 = *(v0 + 21760);
    v236 = *(v0 + 21288);
    v77 = *(v0 + 21264);
    v78 = *(v0 + 21256);
    v79 = *(v0 + 21192);
    v80 = *(v0 + 21120);
    v81 = *(v0 + 21008);

    outlined destroy of NSObject?(v81, &_s8SwiftMLS0B0O5GroupO11StateUpdateVSgMd, &_s8SwiftMLS0B0O5GroupO11StateUpdateVSgMR);
    v76(v79, v80);
    (*(v77 + 8))(v236, v78);

    v88 = *(v0 + 8);

    return v88();
  }

  v233 = v75;
  v82 = v71[16];
  v83 = v71[17];
  __swift_project_boxed_opaque_existential_1(v71 + 13, v82);
  v84 = (*(v83 + 8))(v234, v82, v83);
  *(v0 + 21928) = v84;
  v85 = v84;
  v86 = v71[16];
  v87 = v71[17];
  __swift_project_boxed_opaque_existential_1(v71 + 13, v86);
  *(v0 + 21936) = (*(v87 + 8))(v72, v86, v87);
  v89 = *(v0 + 20768);

  v91 = specialized _NativeSet.filter(_:)(v90, v85, 982);
  *(v0 + 21944) = v91;

  v92 = specialized _NativeSet.filter(_:)(v85, v233, 983);
  *(v0 + 21952) = v92;

  outlined init with copy of MLS.OutgoingEventState?(v89, v0 + 6568, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);

  outlined init with copy of MLS.OutgoingEventState?(v89, v0 + 352, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);

  v93 = Logger.logObject.getter();
  v94 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v93, v94))
  {
    v95 = *(v0 + 21312);
    v96 = *(v0 + 21304);
    v97 = *(v0 + 20768);
    v235 = v94;
    v98 = swift_slowAlloc();
    v238 = swift_slowAlloc();
    *v239 = v238;
    *v98 = 136315906;

    v99 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v96, v95, v239);

    *(v98 + 4) = v99;
    outlined destroy of NSObject?(v97, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    outlined destroy of NSObject?(v97, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    *(v98 + 12) = 2080;
    lazy protocol witness table accessor for type MLS.AllMember and conformance MLS.AllMember();

    v100 = Set.description.getter();
    v102 = v101;

    v103 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v100, v102, v239);

    *(v98 + 14) = v103;

    *(v98 + 22) = 2080;

    v104 = Set.description.getter();
    v106 = v105;

    v107 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v104, v106, v239);

    *(v98 + 24) = v107;

    *(v98 + 32) = 2080;

    v108 = Set.description.getter();
    v110 = v109;

    v111 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v108, v110, v239);

    *(v98 + 34) = v111;
    swift_bridgeObjectRelease_n();
    _os_log_impl(&dword_264F1F000, v93, v235, "SwiftMLSClientCoordinator processIncoming processed commit { identifier: %s, removedMembers: %s, addedMembers: %s, updatedMembers: %s }", v98, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x266755550](v238, -1, -1);
    MEMORY[0x266755550](v98, -1, -1);
  }

  else
  {
    v112 = *(v0 + 20768);

    outlined destroy of NSObject?(v112, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    outlined destroy of NSObject?(v112, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);

    swift_bridgeObjectRelease_n();
  }

  if (specialized Set.contains(_:)(*(*(v0 + 20760) + direct field offset for MLS.SwiftMLSClientCoordinator.selfMember), *(*(v0 + 20760) + direct field offset for MLS.SwiftMLSClientCoordinator.selfMember + 8), *(*(v0 + 20760) + direct field offset for MLS.SwiftMLSClientCoordinator.selfMember + 16), *(*(v0 + 20760) + direct field offset for MLS.SwiftMLSClientCoordinator.selfMember + 24), v92))
  {
    v113 = *(v0 + 21312);
    v114 = *(v0 + 21304);
    v115 = *(v0 + 20768);
    v116 = *(v0 + 20752);
    v117 = *(v116 + 32);
    *(v0 + 19185) = *(v116 + 41);
    *(v0 + 19176) = v117;
    *(v0 + 20080) = *(v115 + 16);
    v118 = *(v116 + 32);
    *(v0 + 17841) = *(v116 + 41);
    *(v0 + 17832) = v118;
    *&v239[7] = *(v115 + 16);
    *(v0 + 17816) = v114;
    *(v0 + 17824) = v113;
    *(v0 + 17857) = *v239;
    *(v0 + 17872) = *&v239[15];
    v119 = *(v0 + 17832);
    *(v0 + 16504) = *(v0 + 17816);
    *(v0 + 16520) = v119;
    v120 = *(v0 + 17864);
    *(v0 + 16536) = *(v0 + 17848);
    *(v0 + 16552) = v120;
    outlined init with copy of MLS.OutgoingEventState?(v115, v0 + 3544, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    outlined init with copy of MLS.OutgoingEventState?(v115, v0 + 3376, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);

    outlined init with copy of MLS.AllMember(v0 + 19176, v0 + 19560);
    outlined init with copy of MLS.OutgoingEventState?(v0 + 20080, v0 + 20128, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
    outlined init with copy of MLS.OutgoingEventState?(v0 + 17816, v0 + 17944, &_s15SecureMessaging3MLSO18IncomingSelfKickedVy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO18IncomingSelfKickedVy_AC9AllMemberO10Foundation4DataVGMR);
    v121 = Logger.logObject.getter();
    v122 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v121, v122))
    {
      v123 = *(v0 + 21312);
      v124 = *(v0 + 21304);
      v125 = *(v0 + 20768);
      v126 = swift_slowAlloc();
      v127 = swift_slowAlloc();
      *v239 = v127;
      *v126 = 136315138;

      v128 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v124, v123, v239);

      *(v126 + 4) = v128;
      outlined destroy of NSObject?(v125, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
      outlined destroy of NSObject?(v125, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
      _os_log_impl(&dword_264F1F000, v121, v122, "SwiftMLSClientCoordinator processIncoming sending incoming self kick event { identifier: %s }", v126, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v127);
      MEMORY[0x266755550](v127, -1, -1);
      MEMORY[0x266755550](v126, -1, -1);
    }

    else
    {
      v151 = *(v0 + 20768);

      outlined destroy of NSObject?(v151, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
      outlined destroy of NSObject?(v151, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    }

    v152 = 20112;
    v153 = 18784;
    v154 = *(v0 + 20776);
    v155 = *(v0 + 20760);
    *(v0 + 21960) = v155[12];
    v156 = *(v0 + 16552);
    *(v0 + 16232) = *(v0 + 16536);
    *(v0 + 16248) = v156;
    v157 = *(v0 + 16584);
    *(v0 + 16264) = *(v0 + 16568);
    *(v0 + 16280) = v157;
    v158 = *(v0 + 16520);
    *(v0 + 16200) = *(v0 + 16504);
    *(v0 + 16216) = v158;
    *(v0 + 16296) = 4;
    outlined init with copy of ServerBag.MLS(v154, v0 + 18784);
    v159 = v155[10];
    v160 = v155[11];
    v161 = *(v155 + direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier);
    v162 = *(v155 + direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier + 8);
    *(v0 + 20112) = v161;
    *(v0 + 20120) = v162;

    swift_unknownObjectRetain();

    v163 = swift_task_alloc();
    *(v0 + 21968) = v163;
    *v163 = v0;
    v163[1] = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
    v164 = *(v0 + 20792);
    v165 = *(v0 + 20784);
    v166 = v0 + 11832;
    goto LABEL_50;
  }

  v129 = *(v91 + 16);
  if (!*(v92 + 16))
  {
    if (!v129)
    {
      v199 = *(v0 + 21312);
      v200 = *(v0 + 21304);
      v201 = *(v0 + 20768);
      v202 = *(v0 + 20752);
      v203 = *(v202 + 32);
      *(v0 + 19537) = *(v202 + 41);
      *(v0 + 19528) = v203;
      *(v0 + 20576) = *(v201 + 16);
      v204 = *(v202 + 32);
      *(v0 + 17649) = *(v202 + 41);
      *(v0 + 17640) = v204;
      *&v239[7] = *(v201 + 16);
      *(v0 + 17624) = v200;
      *(v0 + 17632) = v199;
      *(v0 + 17665) = *v239;
      *(v0 + 17680) = *&v239[15];
      v205 = *(v0 + 17640);
      *(v0 + 16408) = *(v0 + 17624);
      *(v0 + 16424) = v205;
      v206 = *(v0 + 17672);
      *(v0 + 16440) = *(v0 + 17656);
      *(v0 + 16456) = v206;
      outlined init with copy of MLS.OutgoingEventState?(v201, v0 + 3880, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
      outlined init with copy of MLS.OutgoingEventState?(v201, v0 + 3712, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);

      outlined init with copy of MLS.AllMember(v0 + 19528, v0 + 19304);
      outlined init with copy of MLS.OutgoingEventState?(v0 + 20576, v0 + 20160, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
      outlined init with copy of MLS.OutgoingEventState?(v0 + 17624, v0 + 17752, &_s15SecureMessaging3MLSO28IncomingInternalStateUpdatedVy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO28IncomingInternalStateUpdatedVy_AC9AllMemberO10Foundation4DataVGMR);
      v207 = Logger.logObject.getter();
      v208 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v207, v208))
      {
        v209 = *(v0 + 21312);
        v210 = *(v0 + 21304);
        v211 = *(v0 + 20768);
        v212 = swift_slowAlloc();
        v213 = swift_slowAlloc();
        *v239 = v213;
        *v212 = 136315138;

        v214 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v210, v209, v239);

        *(v212 + 4) = v214;
        outlined destroy of NSObject?(v211, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
        outlined destroy of NSObject?(v211, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
        _os_log_impl(&dword_264F1F000, v207, v208, "SwiftMLSClientCoordinator processIncoming sending incoming internal state updated event { identifier: %s }", v212, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v213);
        MEMORY[0x266755550](v213, -1, -1);
        MEMORY[0x266755550](v212, -1, -1);
      }

      else
      {
        v224 = *(v0 + 20768);

        outlined destroy of NSObject?(v224, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
        outlined destroy of NSObject?(v224, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
      }

      v225 = *(v0 + 20760);
      v226 = v225[12];
      v227 = *(v0 + 16456);
      *(v0 + 15504) = *(v0 + 16440);
      *(v0 + 15520) = v227;
      v228 = *(v0 + 16488);
      *(v0 + 15536) = *(v0 + 16472);
      *(v0 + 15552) = v228;
      v229 = *(v0 + 16424);
      *(v0 + 15472) = *(v0 + 16408);
      v152 = 20144;
      v153 = 19064;
      v193 = 14848;
      v230 = *(v0 + 20776);
      *(v0 + 22000) = v226;
      *(v0 + 15488) = v229;
      *(v0 + 15568) = 9;
      outlined init with copy of ServerBag.MLS(v230, v0 + 19064);
      v159 = v225[10];
      v160 = v225[11];
      v231 = *(v225 + direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier);
      v232 = *(v225 + direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier + 8);
      *(v0 + 20144) = v231;
      *(v0 + 20152) = v232;

      swift_unknownObjectRetain();

      v197 = swift_task_alloc();
      *(v0 + 22008) = v197;
      *v197 = v0;
      v198 = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
      goto LABEL_49;
    }

    goto LABEL_39;
  }

  if (v129)
  {
LABEL_39:
    v167 = *(v0 + 21312);
    v168 = *(v0 + 21304);
    v169 = *(v0 + 20768);
    v170 = *(v0 + 20752);
    v171 = *(v170 + 32);
    *(v0 + 19281) = *(v170 + 41);
    *(v0 + 19272) = v171;
    *(v0 + 20416) = *(v169 + 16);
    v172 = *(v170 + 32);
    *(v0 + 17441) = *(v170 + 41);
    *(v0 + 17432) = v172;
    *&v239[7] = *(v169 + 16);
    *(v0 + 17416) = v168;
    *(v0 + 17424) = v167;
    *(v0 + 17457) = *v239;
    *(v0 + 17472) = *&v239[15];
    *(v0 + 17480) = v91;
    v173 = *(v0 + 17464);
    *(v0 + 17016) = *(v0 + 17448);
    *(v0 + 17032) = v173;
    *(v0 + 17048) = *(v0 + 17480);
    v174 = *(v0 + 17432);
    *(v0 + 16984) = *(v0 + 17416);
    *(v0 + 17000) = v174;

    outlined init with copy of MLS.OutgoingEventState?(v169, v0 + 6232, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);

    outlined init with copy of MLS.OutgoingEventState?(v169, v0 + 6064, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);

    outlined init with copy of MLS.AllMember(v0 + 19272, v0 + 19208);
    outlined init with copy of MLS.OutgoingEventState?(v0 + 20416, v0 + 20256, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
    outlined init with copy of MLS.OutgoingEventState?(v0 + 17416, v0 + 17344, &_s15SecureMessaging3MLSO19IncomingMemberAddedVy_AC03AllE0O10Foundation4DataVGMd, &_s15SecureMessaging3MLSO19IncomingMemberAddedVy_AC03AllE0O10Foundation4DataVGMR);
    v175 = Logger.logObject.getter();
    v176 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v175, v176))
    {
      v177 = *(v0 + 21312);
      v178 = *(v0 + 21304);
      v179 = *(v0 + 20768);
      v180 = swift_slowAlloc();
      v181 = swift_slowAlloc();
      *v239 = v181;
      *v180 = 136315394;

      v182 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v178, v177, v239);

      *(v180 + 4) = v182;
      outlined destroy of NSObject?(v179, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
      outlined destroy of NSObject?(v179, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
      *(v180 + 12) = 2080;
      lazy protocol witness table accessor for type MLS.AllMember and conformance MLS.AllMember();

      v183 = Set.description.getter();
      v185 = v184;

      v186 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v183, v185, v239);

      *(v180 + 14) = v186;

      _os_log_impl(&dword_264F1F000, v175, v176, "SwiftMLSClientCoordinator processIncoming sending incoming member added event { identifier: %s, addedMembers: %s }", v180, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266755550](v181, -1, -1);
      MEMORY[0x266755550](v180, -1, -1);
    }

    else
    {
      v187 = *(v0 + 20768);

      outlined destroy of NSObject?(v187, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
      outlined destroy of NSObject?(v187, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    }

    v188 = *(v0 + 20760);
    v189 = v188[12];
    v190 = *(v0 + 17032);
    *(v0 + 16336) = *(v0 + 17016);
    *(v0 + 16352) = v190;
    v191 = *(v0 + 17064);
    *(v0 + 16368) = *(v0 + 17048);
    *(v0 + 0x4000) = v191;
    v192 = *(v0 + 17000);
    *(v0 + 16304) = *(v0 + 16984);
    v152 = 20240;
    v153 = 18664;
    v193 = 15368;
    v194 = *(v0 + 20776);
    *(v0 + 22040) = v189;
    *(v0 + 16320) = v192;
    *(v0 + 16400) = 2;
    outlined init with copy of ServerBag.MLS(v194, v0 + 18664);
    v159 = v188[10];
    v160 = v188[11];
    v195 = *(v188 + direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier);
    v196 = *(v188 + direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier + 8);
    *(v0 + 20240) = v195;
    *(v0 + 20248) = v196;

    swift_unknownObjectRetain();

    v197 = swift_task_alloc();
    *(v0 + 22048) = v197;
    *v197 = v0;
    v198 = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
    goto LABEL_49;
  }

  v130 = *(v0 + 21952);
  v131 = *(v0 + 21312);
  v132 = *(v0 + 21304);
  v133 = *(v0 + 20768);
  v134 = *(v0 + 20752);
  v135 = *(v134 + 32);
  *(v0 + 19377) = *(v134 + 41);
  *(v0 + 19368) = v135;
  *(v0 + 20432) = *(v133 + 16);
  v136 = *(v134 + 32);
  *(v0 + 17513) = *(v134 + 41);
  *(v0 + 17504) = v136;
  *&v239[7] = *(v133 + 16);
  *(v0 + 17488) = v132;
  *(v0 + 17496) = v131;
  *(v0 + 17529) = *v239;
  *(v0 + 17544) = *&v239[15];
  *(v0 + 17552) = v130;
  v137 = *(v0 + 17536);
  *(v0 + 16632) = *(v0 + 17520);
  *(v0 + 16648) = v137;
  *(v0 + 16664) = *(v0 + 17552);
  v138 = *(v0 + 17504);
  *(v0 + 16600) = *(v0 + 17488);
  *(v0 + 16616) = v138;

  outlined init with copy of MLS.OutgoingEventState?(v133, v0 + 5896, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);

  outlined init with copy of MLS.OutgoingEventState?(v133, v0 + 5728, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);

  outlined init with copy of MLS.AllMember(v0 + 19368, v0 + 19144);
  outlined init with copy of MLS.OutgoingEventState?(v0 + 20432, v0 + 20224, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
  outlined init with copy of MLS.OutgoingEventState?(v0 + 17488, v0 + 17272, &_s15SecureMessaging3MLSO20IncomingMemberKickedVy_AC03AllE0O10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20IncomingMemberKickedVy_AC03AllE0O10Foundation4DataVGMR);
  v139 = Logger.logObject.getter();
  v140 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v139, v140))
  {
    v141 = *(v0 + 21312);
    v142 = *(v0 + 21304);
    v143 = *(v0 + 20768);
    v144 = swift_slowAlloc();
    v145 = swift_slowAlloc();
    *v239 = v145;
    *v144 = 136315394;

    v146 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v142, v141, v239);

    *(v144 + 4) = v146;
    outlined destroy of NSObject?(v143, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    outlined destroy of NSObject?(v143, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    *(v144 + 12) = 2080;
    lazy protocol witness table accessor for type MLS.AllMember and conformance MLS.AllMember();

    v147 = Set.description.getter();
    v149 = v148;

    v150 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v147, v149, v239);

    *(v144 + 14) = v150;

    _os_log_impl(&dword_264F1F000, v139, v140, "SwiftMLSClientCoordinator processIncoming sending incoming member removed event { identifier: %s, removedMembers: %s }", v144, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v145, -1, -1);
    MEMORY[0x266755550](v144, -1, -1);
  }

  else
  {
    v215 = *(v0 + 20768);

    outlined destroy of NSObject?(v215, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    outlined destroy of NSObject?(v215, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
  }

  v216 = *(v0 + 20760);
  v217 = v216[12];
  v218 = *(v0 + 16648);
  *(v0 + 16128) = *(v0 + 16632);
  *(v0 + 16144) = v218;
  v219 = *(v0 + 16680);
  *(v0 + 16160) = *(v0 + 16664);
  *(v0 + 16176) = v219;
  v220 = *(v0 + 16616);
  *(v0 + 16096) = *(v0 + 16600);
  v152 = 20208;
  v153 = 18704;
  v193 = 11208;
  v221 = *(v0 + 20776);
  *(v0 + 22096) = v217;
  *(v0 + 16112) = v220;
  *(v0 + 16192) = 3;
  outlined init with copy of ServerBag.MLS(v221, v0 + 18704);
  v159 = v216[10];
  v160 = v216[11];
  v222 = *(v216 + direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier);
  v223 = *(v216 + direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier + 8);
  *(v0 + 20208) = v222;
  *(v0 + 20216) = v223;

  swift_unknownObjectRetain();

  v197 = swift_task_alloc();
  *(v0 + 22104) = v197;
  *v197 = v0;
  v198 = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
LABEL_49:
  v197[1] = v198;
  v164 = *(v0 + 20792);
  v165 = *(v0 + 20784);
  v166 = v0 + v193;
LABEL_50:

  return MLS.Group.init(identifier:swiftMLSGroup:persister:clientIdentifier:)(v166, v165, v164, v0 + v153, v159, v160, (v0 + v152));
}

{
  v2 = *v1;
  *(*v1 + 21888) = v0;

  if (v0)
  {
    v3 = *(v2 + 21296);
    outlined destroy of NSObject?(v2 + 20624, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
    v4 = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
    v5 = v3;
  }

  else
  {
    v5 = *(v2 + 21296);
    v4 = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
  }

  return MEMORY[0x2822009F8](v4, v5, 0);
}

{
  v1 = *(v0 + 21760);
  v17 = *(v0 + 21288);
  v2 = *(v0 + 21264);
  v3 = *(v0 + 21256);
  v4 = *(v0 + 21192);
  v5 = *(v0 + 21120);
  v6 = *(v0 + 21008);
  v7 = *(v0 + 20800);
  v8 = *(v0 + 20744);
  outlined destroy of NSObject?(v0 + 17688, &_s15SecureMessaging3MLSO28IncomingDowngradeRecommendedVy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO28IncomingDowngradeRecommendedVy_AC9AllMemberO10Foundation4DataVGMR);
  outlined destroy of NSObject?(v6, &_s8SwiftMLS0B0O5GroupO11StateUpdateVSgMd, &_s8SwiftMLS0B0O5GroupO11StateUpdateVSgMR);
  v1(v4, v5);
  (*(v2 + 8))(v17, v3);
  swift_beginAccess();
  v9 = *(v7 + 16);
  *v8 = *(v0 + 20624);
  v10 = *(v0 + 11408);
  v11 = *(v0 + 11360);
  v12 = *(v0 + 11392);
  *(v8 + 80) = *(v0 + 11376);
  *(v8 + 96) = v12;
  *(v8 + 64) = v11;
  v13 = *(v0 + 11344);
  v14 = *(v0 + 11312);
  *(v8 + 32) = *(v0 + 11328);
  *(v8 + 48) = v13;
  *(v8 + 16) = v14;
  *(v8 + 112) = v10;
  *(v8 + 120) = v9;

  v15 = *(v0 + 8);

  return v15();
}

{
  v2 = *v1;
  *(v2 + 21976) = v0;

  if (v0)
  {
    v10 = *(v2 + 21296);
    outlined destroy of NSObject?(v2 + 17816, &_s15SecureMessaging3MLSO18IncomingSelfKickedVy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO18IncomingSelfKickedVy_AC9AllMemberO10Foundation4DataVGMR);

    return MEMORY[0x2822009F8](closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:), v10, 0);
  }

  else
  {
    v3 = *(v2 + 11848);
    *(v2 + 11728) = *(v2 + 11832);
    *(v2 + 11744) = v3;
    v4 = *(v2 + 11880);
    *(v2 + 11760) = *(v2 + 11864);
    v5 = *(v2 + 11896);
    *(v2 + 11808) = *(v2 + 11912);
    *(v2 + 11792) = v5;
    v6 = *(v2 + 21960);
    *(v2 + 11824) = *(v2 + 11928);
    *(v2 + 11776) = v4;
    v11 = (*(*v6 + 384) + **(*v6 + 384));
    v7 = swift_task_alloc();
    *(v2 + 21984) = v7;
    *v7 = v2;
    v7[1] = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
    v8 = *(v2 + 15570);

    return v11(v2 + 16200, v2 + 11728, 1, v8);
  }
}

{
  v2 = *v1 + 11728;
  v3 = *v1;
  *(v3 + 21992) = v0;

  if (v0)
  {
    v18 = *(v3 + 21296);
    outlined destroy of NSObject?(v3 + 17816, &_s15SecureMessaging3MLSO18IncomingSelfKickedVy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO18IncomingSelfKickedVy_AC9AllMemberO10Foundation4DataVGMR);

    v4 = *v2;
    v5 = *(v2 + 32);
    *(v3 + 11640) = *(v2 + 16);
    *(v3 + 11656) = v5;
    *(v3 + 11624) = v4;
    v6 = *(v2 + 48);
    v7 = *(v2 + 64);
    v8 = *(v2 + 80);
    *(v3 + 11720) = *(v2 + 96);
    *(v3 + 11688) = v7;
    *(v3 + 11704) = v8;
    *(v3 + 11672) = v6;
    outlined destroy of MLS.Group(v3 + 11624);
    v9 = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
    v10 = v18;
  }

  else
  {
    v11 = *(v3 + 21296);
    v13 = *(v2 + 16);
    v12 = *(v2 + 32);
    *(v3 + 11520) = *v2;
    *(v3 + 11536) = v13;
    *(v3 + 11552) = v12;
    v15 = *(v2 + 64);
    v14 = *(v2 + 80);
    v16 = *(v2 + 96);
    *(v3 + 11568) = *(v2 + 48);
    *(v3 + 11616) = v16;
    *(v3 + 11600) = v14;
    *(v3 + 11584) = v15;
    outlined destroy of MLS.Group(v3 + 11520);
    v9 = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
    v10 = v11;
  }

  return MEMORY[0x2822009F8](v9, v10, 0);
}

{
  v58 = v0;
  outlined destroy of NSObject?(v0 + 17816, &_s15SecureMessaging3MLSO18IncomingSelfKickedVy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO18IncomingSelfKickedVy_AC9AllMemberO10Foundation4DataVGMR);
  outlined destroy of NSObject?(v0 + 17816, &_s15SecureMessaging3MLSO18IncomingSelfKickedVy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO18IncomingSelfKickedVy_AC9AllMemberO10Foundation4DataVGMR);
  v1 = *(v0 + 21992);
  v2 = *(v0 + 20768);
  v3 = *(v2 + 144);
  *(v0 + 22152) = v3;
  v4 = *(v2 + 152);
  *(v0 + 22160) = v4;
  if (v4 >> 60 == 15)
  {
    outlined init with copy of MLS.OutgoingEventState?(v2, v0 + 5224, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    outlined init with copy of MLS.OutgoingEventState?(v2, v0 + 5056, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = *(v0 + 21312);
      v8 = *(v0 + 21304);
      v50 = *(v0 + 20768);
      v52 = v5;
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v57[0] = v10;
      *v9 = 136315138;

      v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v7, v57);

      *(v9 + 4) = v11;

      outlined destroy of NSObject?(v50, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
      outlined destroy of NSObject?(v50, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
      _os_log_impl(&dword_264F1F000, v52, v6, "SwiftMLSClientCoordinator processIncoming commit returning processedContext to caller { identifier: %s }", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v10);
      MEMORY[0x266755550](v10, -1, -1);
      MEMORY[0x266755550](v9, -1, -1);
    }

    else
    {
      v24 = *(v0 + 20768);

      outlined destroy of NSObject?(v24, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
      outlined destroy of NSObject?(v24, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    }

    v25 = *(v0 + 20776);
    v26 = *(v0 + 20760);
    *(v0 + 20656) = *(*(v0 + 20768) + 16);
    outlined init with copy of ServerBag.MLS(v25, v0 + 18864);
    v28 = *(v26 + 80);
    v27 = *(v26 + 88);
    v29 = *(v26 + direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier);
    v30 = *(v26 + direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier + 8);
    *(v0 + 20192) = v29;
    *(v0 + 20200) = v30;

    outlined init with copy of MLS.OutgoingEventState?(v0 + 20656, v0 + 20176, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
    swift_unknownObjectRetain();

    v31 = swift_task_alloc();
    *(v0 + 22184) = v31;
    *v31 = v0;
    v31[1] = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
    v32 = *(v0 + 20792);
    v33 = *(v0 + 20784);

    return MLS.Group.init(identifier:swiftMLSGroup:persister:clientIdentifier:)(v0 + 12456, v33, v32, v0 + 18864, v28, v27, (v0 + 20192));
  }

  else
  {
    v55 = v1;
    outlined copy of Data?(v3, v4);
    outlined init with copy of MLS.OutgoingEventState?(v2, v0 + 4552, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    outlined copy of Data?(v3, v4);
    outlined init with copy of MLS.OutgoingEventState?(v2, v0 + 4384, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    outlined copy of Data?(v3, v4);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = *(v0 + 21312);
      v15 = *(v0 + 21304);
      v16 = *(v0 + 20768);
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v57[0] = v18;
      *v17 = 136315394;

      v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v14, v57);

      *(v17 + 4) = v19;
      outlined destroy of NSObject?(v16, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
      outlined destroy of NSObject?(v16, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
      *(v17 + 12) = 2080;
      outlined copy of Data._Representation(v3, v4);
      v20 = Data.description.getter();
      v22 = v21;
      outlined consume of Data?(v3, v4);
      v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v22, v57);

      *(v17 + 14) = v23;
      outlined consume of Data?(v3, v4);
      outlined consume of Data?(v3, v4);
      _os_log_impl(&dword_264F1F000, v12, v13, "SwiftMLSClientCoordinator processIncoming updating encryptedGroupNameKey { identifier: %s, encryptedGroupNameKey: %s }", v17, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266755550](v18, -1, -1);
      MEMORY[0x266755550](v17, -1, -1);
    }

    else
    {
      v35 = *(v0 + 20768);

      outlined destroy of NSObject?(v35, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
      outlined destroy of NSObject?(v35, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
      outlined consume of Data?(v3, v4);
      outlined consume of Data?(v3, v4);
    }

    outlined copy of Data._Representation(v3, v4);
    MLS.Group.Message.init(fromRaw:)();
    if (v55)
    {
      v54 = *(v0 + 21288);
      v36 = *(v0 + 21264);
      v51 = *(v0 + 21760);
      v53 = *(v0 + 21256);
      v48 = *(v0 + 21120);
      v49 = *(v0 + 21192);
      v37 = *(v0 + 21008);

      outlined consume of Data?(v3, v4);

      outlined destroy of NSObject?(v37, &_s8SwiftMLS0B0O5GroupO11StateUpdateVSgMd, &_s8SwiftMLS0B0O5GroupO11StateUpdateVSgMR);
      v51(v49, v48);
      (*(v36 + 8))(v54, v53);

      v38 = *(v0 + 8);

      return v38();
    }

    else
    {
      v39 = *(v0 + 21104);
      v40 = *(v0 + 21096);
      v41 = *(v0 + 21088);
      v42 = *(v0 + 21080);
      v43 = *(v0 + 20776);
      v44 = v43[3];
      v45 = v43[4];
      __swift_project_boxed_opaque_existential_1(v43, v44);
      (*(v41 + 16))(v40, v39, v42);
      MLS.Group.Group.DecryptNameKeysInput.init(privateMessage:)();
      v56 = (*(v45 + 240) + **(v45 + 240));
      v46 = swift_task_alloc();
      *(v0 + 22168) = v46;
      *v46 = v0;
      v46[1] = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
      v47 = *(v0 + 20944);

      return v56(v0 + 19104, v47, v44, v45);
    }
  }
}

{
  v2 = *v1;
  *(v2 + 22016) = v0;

  if (v0)
  {
    v7 = *(v2 + 21296);
    outlined destroy of NSObject?(v2 + 17624, &_s15SecureMessaging3MLSO28IncomingInternalStateUpdatedVy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO28IncomingInternalStateUpdatedVy_AC9AllMemberO10Foundation4DataVGMR);

    return MEMORY[0x2822009F8](closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:), v7, 0);
  }

  else
  {
    v3 = *(v2 + 22000);
    *(v2 + 14432) = *(v2 + 14848);
    *(v2 + 14448) = *(v2 + 14864);
    *(v2 + 14464) = *(v2 + 14880);
    *(v2 + 14528) = *(v2 + 14944);
    *(v2 + 14512) = *(v2 + 14928);
    *(v2 + 14496) = *(v2 + 14912);
    *(v2 + 14480) = *(v2 + 14896);
    v8 = (*(*v3 + 384) + **(*v3 + 384));
    v4 = swift_task_alloc();
    *(v2 + 22024) = v4;
    *v4 = v2;
    v4[1] = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
    v5 = *(v2 + 15570);

    return v8(v2 + 15472, v2 + 14432, 1, v5);
  }
}

{
  v2 = *v1 + 14432;
  v3 = *v1;
  *(v3 + 22032) = v0;

  if (v0)
  {
    v18 = *(v3 + 21296);
    outlined destroy of NSObject?(v3 + 17624, &_s15SecureMessaging3MLSO28IncomingInternalStateUpdatedVy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO28IncomingInternalStateUpdatedVy_AC9AllMemberO10Foundation4DataVGMR);

    v4 = *v2;
    v5 = *(v2 + 32);
    *(v3 + 14344) = *(v2 + 16);
    *(v3 + 14360) = v5;
    *(v3 + 14328) = v4;
    v6 = *(v2 + 48);
    v7 = *(v2 + 64);
    v8 = *(v2 + 80);
    *(v3 + 14424) = *(v2 + 96);
    *(v3 + 14392) = v7;
    *(v3 + 14408) = v8;
    *(v3 + 14376) = v6;
    outlined destroy of MLS.Group(v3 + 14328);
    v9 = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
    v10 = v18;
  }

  else
  {
    v11 = *(v3 + 21296);
    v13 = *(v2 + 16);
    v12 = *(v2 + 32);
    *(v3 + 13600) = *v2;
    *(v3 + 13616) = v13;
    *(v3 + 13632) = v12;
    v15 = *(v2 + 64);
    v14 = *(v2 + 80);
    v16 = *(v2 + 96);
    *(v3 + 13648) = *(v2 + 48);
    *(v3 + 13696) = v16;
    *(v3 + 13680) = v14;
    *(v3 + 13664) = v15;
    outlined destroy of MLS.Group(v3 + 13600);
    v9 = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
    v10 = v11;
  }

  return MEMORY[0x2822009F8](v9, v10, 0);
}

{
  v58 = v0;
  outlined destroy of NSObject?(v0 + 17624, &_s15SecureMessaging3MLSO28IncomingInternalStateUpdatedVy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO28IncomingInternalStateUpdatedVy_AC9AllMemberO10Foundation4DataVGMR);
  outlined destroy of NSObject?(v0 + 17624, &_s15SecureMessaging3MLSO28IncomingInternalStateUpdatedVy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO28IncomingInternalStateUpdatedVy_AC9AllMemberO10Foundation4DataVGMR);
  v1 = *(v0 + 22032);
  v2 = *(v0 + 20768);
  v3 = *(v2 + 144);
  *(v0 + 22152) = v3;
  v4 = *(v2 + 152);
  *(v0 + 22160) = v4;
  if (v4 >> 60 == 15)
  {
    outlined init with copy of MLS.OutgoingEventState?(v2, v0 + 5224, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    outlined init with copy of MLS.OutgoingEventState?(v2, v0 + 5056, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = *(v0 + 21312);
      v8 = *(v0 + 21304);
      v50 = *(v0 + 20768);
      v52 = v5;
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v57[0] = v10;
      *v9 = 136315138;

      v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v7, v57);

      *(v9 + 4) = v11;

      outlined destroy of NSObject?(v50, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
      outlined destroy of NSObject?(v50, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
      _os_log_impl(&dword_264F1F000, v52, v6, "SwiftMLSClientCoordinator processIncoming commit returning processedContext to caller { identifier: %s }", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v10);
      MEMORY[0x266755550](v10, -1, -1);
      MEMORY[0x266755550](v9, -1, -1);
    }

    else
    {
      v24 = *(v0 + 20768);

      outlined destroy of NSObject?(v24, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
      outlined destroy of NSObject?(v24, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    }

    v25 = *(v0 + 20776);
    v26 = *(v0 + 20760);
    *(v0 + 20656) = *(*(v0 + 20768) + 16);
    outlined init with copy of ServerBag.MLS(v25, v0 + 18864);
    v28 = *(v26 + 80);
    v27 = *(v26 + 88);
    v29 = *(v26 + direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier);
    v30 = *(v26 + direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier + 8);
    *(v0 + 20192) = v29;
    *(v0 + 20200) = v30;

    outlined init with copy of MLS.OutgoingEventState?(v0 + 20656, v0 + 20176, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
    swift_unknownObjectRetain();

    v31 = swift_task_alloc();
    *(v0 + 22184) = v31;
    *v31 = v0;
    v31[1] = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
    v32 = *(v0 + 20792);
    v33 = *(v0 + 20784);

    return MLS.Group.init(identifier:swiftMLSGroup:persister:clientIdentifier:)(v0 + 12456, v33, v32, v0 + 18864, v28, v27, (v0 + 20192));
  }

  else
  {
    v55 = v1;
    outlined copy of Data?(v3, v4);
    outlined init with copy of MLS.OutgoingEventState?(v2, v0 + 4552, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    outlined copy of Data?(v3, v4);
    outlined init with copy of MLS.OutgoingEventState?(v2, v0 + 4384, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    outlined copy of Data?(v3, v4);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = *(v0 + 21312);
      v15 = *(v0 + 21304);
      v16 = *(v0 + 20768);
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v57[0] = v18;
      *v17 = 136315394;

      v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v14, v57);

      *(v17 + 4) = v19;
      outlined destroy of NSObject?(v16, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
      outlined destroy of NSObject?(v16, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
      *(v17 + 12) = 2080;
      outlined copy of Data._Representation(v3, v4);
      v20 = Data.description.getter();
      v22 = v21;
      outlined consume of Data?(v3, v4);
      v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v22, v57);

      *(v17 + 14) = v23;
      outlined consume of Data?(v3, v4);
      outlined consume of Data?(v3, v4);
      _os_log_impl(&dword_264F1F000, v12, v13, "SwiftMLSClientCoordinator processIncoming updating encryptedGroupNameKey { identifier: %s, encryptedGroupNameKey: %s }", v17, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266755550](v18, -1, -1);
      MEMORY[0x266755550](v17, -1, -1);
    }

    else
    {
      v35 = *(v0 + 20768);

      outlined destroy of NSObject?(v35, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
      outlined destroy of NSObject?(v35, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
      outlined consume of Data?(v3, v4);
      outlined consume of Data?(v3, v4);
    }

    outlined copy of Data._Representation(v3, v4);
    MLS.Group.Message.init(fromRaw:)();
    if (v55)
    {
      v54 = *(v0 + 21288);
      v36 = *(v0 + 21264);
      v51 = *(v0 + 21760);
      v53 = *(v0 + 21256);
      v48 = *(v0 + 21120);
      v49 = *(v0 + 21192);
      v37 = *(v0 + 21008);

      outlined consume of Data?(v3, v4);

      outlined destroy of NSObject?(v37, &_s8SwiftMLS0B0O5GroupO11StateUpdateVSgMd, &_s8SwiftMLS0B0O5GroupO11StateUpdateVSgMR);
      v51(v49, v48);
      (*(v36 + 8))(v54, v53);

      v38 = *(v0 + 8);

      return v38();
    }

    else
    {
      v39 = *(v0 + 21104);
      v40 = *(v0 + 21096);
      v41 = *(v0 + 21088);
      v42 = *(v0 + 21080);
      v43 = *(v0 + 20776);
      v44 = v43[3];
      v45 = v43[4];
      __swift_project_boxed_opaque_existential_1(v43, v44);
      (*(v41 + 16))(v40, v39, v42);
      MLS.Group.Group.DecryptNameKeysInput.init(privateMessage:)();
      v56 = (*(v45 + 240) + **(v45 + 240));
      v46 = swift_task_alloc();
      *(v0 + 22168) = v46;
      *v46 = v0;
      v46[1] = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
      v47 = *(v0 + 20944);

      return v56(v0 + 19104, v47, v44, v45);
    }
  }
}

{
  v2 = *v1;
  *(v2 + 22056) = v0;

  if (v0)
  {
    v10 = *(v2 + 21296);
    outlined destroy of NSObject?(v2 + 17416, &_s15SecureMessaging3MLSO19IncomingMemberAddedVy_AC03AllE0O10Foundation4DataVGMd, &_s15SecureMessaging3MLSO19IncomingMemberAddedVy_AC03AllE0O10Foundation4DataVGMR);

    return MEMORY[0x2822009F8](closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:), v10, 0);
  }

  else
  {
    v3 = *(v2 + 15384);
    *(v2 + 15056) = *(v2 + 15368);
    *(v2 + 15072) = v3;
    v4 = *(v2 + 15416);
    *(v2 + 15088) = *(v2 + 15400);
    v5 = *(v2 + 15432);
    *(v2 + 15136) = *(v2 + 15448);
    *(v2 + 15120) = v5;
    v6 = *(v2 + 22040);
    *(v2 + 15152) = *(v2 + 15464);
    *(v2 + 15104) = v4;
    v11 = (*(*v6 + 384) + **(*v6 + 384));
    v7 = swift_task_alloc();
    *(v2 + 22064) = v7;
    *v7 = v2;
    v7[1] = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
    v8 = *(v2 + 15570);

    return v11(v2 + 16304, v2 + 15056, 1, v8);
  }
}

{
  v2 = *v1 + 15056;
  v3 = *v1;
  *(v3 + 22072) = v0;

  if (v0)
  {
    v19 = *(v3 + 21296);
    outlined destroy of NSObject?(v3 + 17416, &_s15SecureMessaging3MLSO19IncomingMemberAddedVy_AC03AllE0O10Foundation4DataVGMd, &_s15SecureMessaging3MLSO19IncomingMemberAddedVy_AC03AllE0O10Foundation4DataVGMR);

    v4 = *v2;
    v5 = *(v2 + 16);
    *(v3 + 14672) = *(v2 + 32);
    *(v3 + 14656) = v5;
    *(v3 + 14640) = v4;
    v6 = *(v2 + 48);
    v7 = *(v2 + 64);
    v8 = *(v2 + 80);
    *(v3 + 14736) = *(v2 + 96);
    *(v3 + 14720) = v8;
    *(v3 + 14704) = v7;
    *(v3 + 14688) = v6;
    outlined destroy of MLS.Group(v3 + 14640);

    return MEMORY[0x2822009F8](closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:), v19, 0);
  }

  else
  {
    v9 = *v2;
    v10 = *(v2 + 16);
    *(v3 + 13216) = *(v2 + 32);
    *(v3 + 13200) = v10;
    *(v3 + 13184) = v9;
    v11 = *(v2 + 48);
    v12 = *(v2 + 64);
    v13 = *(v2 + 80);
    *(v3 + 13280) = *(v2 + 96);
    *(v3 + 13264) = v13;
    *(v3 + 13248) = v12;
    *(v3 + 13232) = v11;
    outlined destroy of MLS.Group(v3 + 13184);
    v14 = swift_task_alloc();
    *(v3 + 22080) = v14;
    *v14 = v3;
    v14[1] = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
    v15 = *(v3 + 21944);
    v16 = *(v3 + 20792);
    v17 = *(v3 + 20784);

    return MLS.SwiftMLSClientCoordinator.addMembers(identifier:otherMembers:)(v17, v16, v15);
  }
}

{
  v2 = *v1;
  *(*v1 + 22088) = v0;

  if (v0)
  {
    v6 = *(v2 + 21296);
    outlined destroy of NSObject?(v2 + 17416, &_s15SecureMessaging3MLSO19IncomingMemberAddedVy_AC03AllE0O10Foundation4DataVGMd, &_s15SecureMessaging3MLSO19IncomingMemberAddedVy_AC03AllE0O10Foundation4DataVGMR);

    v3 = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
    v4 = v6;
  }

  else
  {
    v4 = *(v2 + 21296);
    v3 = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
  }

  return MEMORY[0x2822009F8](v3, v4, 0);
}

{
  v97 = v0;
  v1 = *(v0 + 21952);
  outlined destroy of NSObject?(v0 + 17416, &_s15SecureMessaging3MLSO19IncomingMemberAddedVy_AC03AllE0O10Foundation4DataVGMd, &_s15SecureMessaging3MLSO19IncomingMemberAddedVy_AC03AllE0O10Foundation4DataVGMR);
  outlined destroy of NSObject?(v0 + 17416, &_s15SecureMessaging3MLSO19IncomingMemberAddedVy_AC03AllE0O10Foundation4DataVGMd, &_s15SecureMessaging3MLSO19IncomingMemberAddedVy_AC03AllE0O10Foundation4DataVGMR);
  if (*(v1 + 16))
  {
    v2 = *(v0 + 21952);
    v3 = *(v0 + 21312);
    v4 = *(v0 + 21304);
    v5 = *(v0 + 20768);
    v6 = *(v0 + 20752);
    v7 = *(v6 + 32);
    *(v0 + 19377) = *(v6 + 41);
    *(v0 + 19368) = v7;
    *(v0 + 20432) = *(v5 + 16);
    v8 = *(v6 + 32);
    *(v0 + 17513) = *(v6 + 41);
    *(v0 + 17504) = v8;
    *&v96[7] = *(v5 + 16);
    *(v0 + 17488) = v4;
    *(v0 + 17496) = v3;
    *(v0 + 17529) = *v96;
    *(v0 + 17544) = *&v96[15];
    *(v0 + 17552) = v2;
    v9 = *(v0 + 17504);
    v10 = *(v0 + 17536);
    *(v0 + 16632) = *(v0 + 17520);
    *(v0 + 16648) = v10;
    *(v0 + 16664) = v2;
    *(v0 + 16600) = *(v0 + 17488);
    *(v0 + 16616) = v9;

    outlined init with copy of MLS.OutgoingEventState?(v5, v0 + 5896, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);

    outlined init with copy of MLS.OutgoingEventState?(v5, v0 + 5728, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);

    outlined init with copy of MLS.AllMember(v0 + 19368, v0 + 19144);
    outlined init with copy of MLS.OutgoingEventState?(v0 + 20432, v0 + 20224, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
    outlined init with copy of MLS.OutgoingEventState?(v0 + 17488, v0 + 17272, &_s15SecureMessaging3MLSO20IncomingMemberKickedVy_AC03AllE0O10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20IncomingMemberKickedVy_AC03AllE0O10Foundation4DataVGMR);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = *(v0 + 21312);
      v14 = *(v0 + 21304);
      v15 = *(v0 + 20768);
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v96 = v17;
      *v16 = 136315394;

      v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v13, v96);

      *(v16 + 4) = v18;
      outlined destroy of NSObject?(v15, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
      outlined destroy of NSObject?(v15, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
      *(v16 + 12) = 2080;
      lazy protocol witness table accessor for type MLS.AllMember and conformance MLS.AllMember();

      v19 = Set.description.getter();
      v21 = v20;

      v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v21, v96);

      *(v16 + 14) = v22;

      _os_log_impl(&dword_264F1F000, v11, v12, "SwiftMLSClientCoordinator processIncoming sending incoming member removed event { identifier: %s, removedMembers: %s }", v16, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266755550](v17, -1, -1);
      MEMORY[0x266755550](v16, -1, -1);
    }

    else
    {
      v34 = *(v0 + 20768);

      outlined destroy of NSObject?(v34, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
      outlined destroy of NSObject?(v34, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    }

    v35 = *(v0 + 20760);
    v36 = v35[12];
    v37 = *(v0 + 16648);
    *(v0 + 16128) = *(v0 + 16632);
    *(v0 + 16144) = v37;
    v38 = *(v0 + 16680);
    *(v0 + 16160) = *(v0 + 16664);
    *(v0 + 16176) = v38;
    v39 = *(v0 + 16616);
    *(v0 + 16096) = *(v0 + 16600);
    v40 = *(v0 + 20776);
    *(v0 + 22096) = v36;
    *(v0 + 16112) = v39;
    *(v0 + 16192) = 3;
    outlined init with copy of ServerBag.MLS(v40, v0 + 18704);
    v41 = v35[10];
    v42 = v35[11];
    v43 = *(v35 + direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier);
    v44 = *(v35 + direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier + 8);
    *(v0 + 20208) = v43;
    *(v0 + 20216) = v44;

    swift_unknownObjectRetain();

    v45 = swift_task_alloc();
    *(v0 + 22104) = v45;
    *v45 = v0;
    v45[1] = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
    v46 = *(v0 + 20792);
    v47 = *(v0 + 20784);
    v48 = v0 + 11208;
    v49 = v0 + 18704;
    v50 = (v0 + 20208);
    v51 = v41;
    v52 = v42;
LABEL_13:

    return MLS.Group.init(identifier:swiftMLSGroup:persister:clientIdentifier:)(v48, v47, v46, v49, v51, v52, v50);
  }

  v23 = *(v0 + 22088);
  v24 = *(v0 + 20768);
  v25 = *(v24 + 144);
  *(v0 + 22152) = v25;
  v26 = *(v24 + 152);
  *(v0 + 22160) = v26;
  if (v26 >> 60 == 15)
  {
    outlined init with copy of MLS.OutgoingEventState?(v24, v0 + 5224, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    outlined init with copy of MLS.OutgoingEventState?(v24, v0 + 5056, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = *(v0 + 21312);
      v30 = *(v0 + 21304);
      v89 = *(v0 + 20768);
      v91 = v27;
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      *v96 = v32;
      *v31 = 136315138;

      v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v29, v96);

      *(v31 + 4) = v33;

      outlined destroy of NSObject?(v89, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
      outlined destroy of NSObject?(v89, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
      _os_log_impl(&dword_264F1F000, v91, v28, "SwiftMLSClientCoordinator processIncoming commit returning processedContext to caller { identifier: %s }", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v32);
      MEMORY[0x266755550](v32, -1, -1);
      MEMORY[0x266755550](v31, -1, -1);
    }

    else
    {
      v65 = *(v0 + 20768);

      outlined destroy of NSObject?(v65, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
      outlined destroy of NSObject?(v65, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    }

    v66 = *(v0 + 20776);
    v67 = *(v0 + 20760);
    *(v0 + 20656) = *(*(v0 + 20768) + 16);
    outlined init with copy of ServerBag.MLS(v66, v0 + 18864);
    v69 = *(v67 + 80);
    v68 = *(v67 + 88);
    v70 = *(v67 + direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier);
    v71 = *(v67 + direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier + 8);
    *(v0 + 20192) = v70;
    *(v0 + 20200) = v71;

    outlined init with copy of MLS.OutgoingEventState?(v0 + 20656, v0 + 20176, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
    swift_unknownObjectRetain();

    v72 = swift_task_alloc();
    *(v0 + 22184) = v72;
    *v72 = v0;
    v72[1] = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
    v46 = *(v0 + 20792);
    v47 = *(v0 + 20784);
    v48 = v0 + 12456;
    v49 = v0 + 18864;
    v50 = (v0 + 20192);
    v51 = v69;
    v52 = v68;
    goto LABEL_13;
  }

  v94 = v23;
  outlined copy of Data?(v25, v26);
  outlined init with copy of MLS.OutgoingEventState?(v24, v0 + 4552, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
  outlined copy of Data?(v25, v26);
  outlined init with copy of MLS.OutgoingEventState?(v24, v0 + 4384, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
  outlined copy of Data?(v25, v26);
  v53 = Logger.logObject.getter();
  v54 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v53, v54))
  {
    v55 = *(v0 + 21312);
    v56 = *(v0 + 21304);
    v57 = *(v0 + 20768);
    v58 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    *v96 = v59;
    *v58 = 136315394;

    v60 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v56, v55, v96);

    *(v58 + 4) = v60;
    outlined destroy of NSObject?(v57, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    outlined destroy of NSObject?(v57, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    *(v58 + 12) = 2080;
    outlined copy of Data._Representation(v25, v26);
    v61 = Data.description.getter();
    v63 = v62;
    outlined consume of Data?(v25, v26);
    v64 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v61, v63, v96);

    *(v58 + 14) = v64;
    outlined consume of Data?(v25, v26);
    outlined consume of Data?(v25, v26);
    _os_log_impl(&dword_264F1F000, v53, v54, "SwiftMLSClientCoordinator processIncoming updating encryptedGroupNameKey { identifier: %s, encryptedGroupNameKey: %s }", v58, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v59, -1, -1);
    MEMORY[0x266755550](v58, -1, -1);
  }

  else
  {
    v74 = *(v0 + 20768);

    outlined destroy of NSObject?(v74, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    outlined destroy of NSObject?(v74, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    outlined consume of Data?(v25, v26);
    outlined consume of Data?(v25, v26);
  }

  outlined copy of Data._Representation(v25, v26);
  MLS.Group.Message.init(fromRaw:)();
  if (v94)
  {
    v93 = *(v0 + 21288);
    v75 = *(v0 + 21264);
    v90 = *(v0 + 21760);
    v92 = *(v0 + 21256);
    v87 = *(v0 + 21120);
    v88 = *(v0 + 21192);
    v76 = *(v0 + 21008);

    outlined consume of Data?(v25, v26);

    outlined destroy of NSObject?(v76, &_s8SwiftMLS0B0O5GroupO11StateUpdateVSgMd, &_s8SwiftMLS0B0O5GroupO11StateUpdateVSgMR);
    v90(v88, v87);
    (*(v75 + 8))(v93, v92);

    v77 = *(v0 + 8);

    return v77();
  }

  else
  {
    v78 = *(v0 + 21104);
    v79 = *(v0 + 21096);
    v80 = *(v0 + 21088);
    v81 = *(v0 + 21080);
    v82 = *(v0 + 20776);
    v83 = v82[3];
    v84 = v82[4];
    __swift_project_boxed_opaque_existential_1(v82, v83);
    (*(v80 + 16))(v79, v78, v81);
    MLS.Group.Group.DecryptNameKeysInput.init(privateMessage:)();
    v95 = (*(v84 + 240) + **(v84 + 240));
    v85 = swift_task_alloc();
    *(v0 + 22168) = v85;
    *v85 = v0;
    v85[1] = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
    v86 = *(v0 + 20944);

    return v95(v0 + 19104, v86, v83, v84);
  }
}

{
  v2 = *v1;
  *(v2 + 22112) = v0;

  if (v0)
  {
    v10 = *(v2 + 21296);
    outlined destroy of NSObject?(v2 + 17488, &_s15SecureMessaging3MLSO20IncomingMemberKickedVy_AC03AllE0O10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20IncomingMemberKickedVy_AC03AllE0O10Foundation4DataVGMR);

    return MEMORY[0x2822009F8](closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:), v10, 0);
  }

  else
  {
    v3 = *(v2 + 22096);
    *(v2 + 11512) = *(v2 + 11304);
    v4 = *(v2 + 11224);
    *(v2 + 11416) = *(v2 + 11208);
    *(v2 + 11432) = v4;
    v5 = *(v2 + 11288);
    *(v2 + 11480) = *(v2 + 11272);
    *(v2 + 11496) = v5;
    v6 = *(v2 + 11256);
    *(v2 + 11448) = *(v2 + 11240);
    *(v2 + 11464) = v6;
    v11 = (*(*v3 + 384) + **(*v3 + 384));
    v7 = swift_task_alloc();
    *(v2 + 22120) = v7;
    *v7 = v2;
    v7[1] = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
    v8 = *(v2 + 15570);

    return v11(v2 + 16096, v2 + 11416, 1, v8);
  }
}

{
  v2 = *v1 + 11416;
  v3 = *v1;
  *(v3 + 22128) = v0;

  if (v0)
  {
    v19 = *(v3 + 21296);
    outlined destroy of NSObject?(v3 + 17488, &_s15SecureMessaging3MLSO20IncomingMemberKickedVy_AC03AllE0O10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20IncomingMemberKickedVy_AC03AllE0O10Foundation4DataVGMR);

    v4 = *v2;
    v5 = *(v2 + 32);
    *(v3 + 12056) = *(v2 + 16);
    *(v3 + 12072) = v5;
    *(v3 + 12040) = v4;
    v6 = *(v2 + 48);
    v7 = *(v2 + 64);
    v8 = *(v2 + 80);
    *(v3 + 12136) = *(v2 + 96);
    *(v3 + 12104) = v7;
    *(v3 + 12120) = v8;
    *(v3 + 12088) = v6;
    outlined destroy of MLS.Group(v3 + 12040);

    return MEMORY[0x2822009F8](closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:), v19, 0);
  }

  else
  {
    v9 = *(v2 + 48);
    v10 = *(v2 + 64);
    v11 = *(v2 + 80);
    *(v3 + 12344) = *(v2 + 96);
    v12 = *(v2 + 16);
    v13 = *(v2 + 32);
    *(v3 + 12248) = *v2;
    *(v3 + 12264) = v12;
    *(v3 + 12312) = v10;
    *(v3 + 12328) = v11;
    *(v3 + 12280) = v13;
    *(v3 + 12296) = v9;
    outlined destroy of MLS.Group(v3 + 12248);
    v14 = swift_task_alloc();
    *(v3 + 22136) = v14;
    *v14 = v3;
    v14[1] = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
    v15 = *(v3 + 21952);
    v16 = *(v3 + 20792);
    v17 = *(v3 + 20784);

    return MLS.SwiftMLSClientCoordinator.removeMembers(identifier:otherMembers:)(v17, v16, v15);
  }
}

{
  v2 = *v1;
  *(*v1 + 22144) = v0;

  if (v0)
  {
    v6 = *(v2 + 21296);
    outlined destroy of NSObject?(v2 + 17488, &_s15SecureMessaging3MLSO20IncomingMemberKickedVy_AC03AllE0O10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20IncomingMemberKickedVy_AC03AllE0O10Foundation4DataVGMR);

    v3 = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
    v4 = v6;
  }

  else
  {
    v4 = *(v2 + 21296);
    v3 = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
  }

  return MEMORY[0x2822009F8](v3, v4, 0);
}

{
  v58 = v0;
  outlined destroy of NSObject?(v0 + 17488, &_s15SecureMessaging3MLSO20IncomingMemberKickedVy_AC03AllE0O10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20IncomingMemberKickedVy_AC03AllE0O10Foundation4DataVGMR);
  outlined destroy of NSObject?(v0 + 17488, &_s15SecureMessaging3MLSO20IncomingMemberKickedVy_AC03AllE0O10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20IncomingMemberKickedVy_AC03AllE0O10Foundation4DataVGMR);
  v1 = *(v0 + 22144);
  v2 = *(v0 + 20768);
  v3 = *(v2 + 144);
  *(v0 + 22152) = v3;
  v4 = *(v2 + 152);
  *(v0 + 22160) = v4;
  if (v4 >> 60 == 15)
  {
    outlined init with copy of MLS.OutgoingEventState?(v2, v0 + 5224, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    outlined init with copy of MLS.OutgoingEventState?(v2, v0 + 5056, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = *(v0 + 21312);
      v8 = *(v0 + 21304);
      v50 = *(v0 + 20768);
      v52 = v5;
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v57[0] = v10;
      *v9 = 136315138;

      v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v7, v57);

      *(v9 + 4) = v11;

      outlined destroy of NSObject?(v50, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
      outlined destroy of NSObject?(v50, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
      _os_log_impl(&dword_264F1F000, v52, v6, "SwiftMLSClientCoordinator processIncoming commit returning processedContext to caller { identifier: %s }", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v10);
      MEMORY[0x266755550](v10, -1, -1);
      MEMORY[0x266755550](v9, -1, -1);
    }

    else
    {
      v24 = *(v0 + 20768);

      outlined destroy of NSObject?(v24, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
      outlined destroy of NSObject?(v24, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    }

    v25 = *(v0 + 20776);
    v26 = *(v0 + 20760);
    *(v0 + 20656) = *(*(v0 + 20768) + 16);
    outlined init with copy of ServerBag.MLS(v25, v0 + 18864);
    v28 = *(v26 + 80);
    v27 = *(v26 + 88);
    v29 = *(v26 + direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier);
    v30 = *(v26 + direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier + 8);
    *(v0 + 20192) = v29;
    *(v0 + 20200) = v30;

    outlined init with copy of MLS.OutgoingEventState?(v0 + 20656, v0 + 20176, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
    swift_unknownObjectRetain();

    v31 = swift_task_alloc();
    *(v0 + 22184) = v31;
    *v31 = v0;
    v31[1] = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
    v32 = *(v0 + 20792);
    v33 = *(v0 + 20784);

    return MLS.Group.init(identifier:swiftMLSGroup:persister:clientIdentifier:)(v0 + 12456, v33, v32, v0 + 18864, v28, v27, (v0 + 20192));
  }

  else
  {
    v55 = v1;
    outlined copy of Data?(v3, v4);
    outlined init with copy of MLS.OutgoingEventState?(v2, v0 + 4552, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    outlined copy of Data?(v3, v4);
    outlined init with copy of MLS.OutgoingEventState?(v2, v0 + 4384, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    outlined copy of Data?(v3, v4);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = *(v0 + 21312);
      v15 = *(v0 + 21304);
      v16 = *(v0 + 20768);
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v57[0] = v18;
      *v17 = 136315394;

      v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v14, v57);

      *(v17 + 4) = v19;
      outlined destroy of NSObject?(v16, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
      outlined destroy of NSObject?(v16, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
      *(v17 + 12) = 2080;
      outlined copy of Data._Representation(v3, v4);
      v20 = Data.description.getter();
      v22 = v21;
      outlined consume of Data?(v3, v4);
      v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v22, v57);

      *(v17 + 14) = v23;
      outlined consume of Data?(v3, v4);
      outlined consume of Data?(v3, v4);
      _os_log_impl(&dword_264F1F000, v12, v13, "SwiftMLSClientCoordinator processIncoming updating encryptedGroupNameKey { identifier: %s, encryptedGroupNameKey: %s }", v17, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266755550](v18, -1, -1);
      MEMORY[0x266755550](v17, -1, -1);
    }

    else
    {
      v35 = *(v0 + 20768);

      outlined destroy of NSObject?(v35, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
      outlined destroy of NSObject?(v35, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
      outlined consume of Data?(v3, v4);
      outlined consume of Data?(v3, v4);
    }

    outlined copy of Data._Representation(v3, v4);
    MLS.Group.Message.init(fromRaw:)();
    if (v55)
    {
      v54 = *(v0 + 21288);
      v36 = *(v0 + 21264);
      v51 = *(v0 + 21760);
      v53 = *(v0 + 21256);
      v48 = *(v0 + 21120);
      v49 = *(v0 + 21192);
      v37 = *(v0 + 21008);

      outlined consume of Data?(v3, v4);

      outlined destroy of NSObject?(v37, &_s8SwiftMLS0B0O5GroupO11StateUpdateVSgMd, &_s8SwiftMLS0B0O5GroupO11StateUpdateVSgMR);
      v51(v49, v48);
      (*(v36 + 8))(v54, v53);

      v38 = *(v0 + 8);

      return v38();
    }

    else
    {
      v39 = *(v0 + 21104);
      v40 = *(v0 + 21096);
      v41 = *(v0 + 21088);
      v42 = *(v0 + 21080);
      v43 = *(v0 + 20776);
      v44 = v43[3];
      v45 = v43[4];
      __swift_project_boxed_opaque_existential_1(v43, v44);
      (*(v41 + 16))(v40, v39, v42);
      MLS.Group.Group.DecryptNameKeysInput.init(privateMessage:)();
      v56 = (*(v45 + 240) + **(v45 + 240));
      v46 = swift_task_alloc();
      *(v0 + 22168) = v46;
      *v46 = v0;
      v46[1] = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
      v47 = *(v0 + 20944);

      return v56(v0 + 19104, v47, v44, v45);
    }
  }
}

{
  v2 = *v1;
  *(*v1 + 22176) = v0;

  if (v0)
  {
    v7 = v2[2662];
    (*(v2[2617] + 8))(v2[2618], v2[2616]);

    v3 = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
    v4 = v7;
  }

  else
  {
    v5 = v2[2662];
    (*(v2[2617] + 8))(v2[2618], v2[2616]);
    __swift_destroy_boxed_opaque_existential_1Tm(v2 + 2388);
    v3 = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
    v4 = v5;
  }

  return MEMORY[0x2822009F8](v3, v4, 0);
}

{
  v49 = v0;
  v1 = *(v0 + 22160);
  v2 = *(v0 + 22152);
  v3 = *(v0 + 20768);
  outlined init with copy of MLS.OutgoingEventState?(v3, v0 + 4216, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
  outlined copy of Data?(v2, v1);
  outlined init with copy of MLS.OutgoingEventState?(v3, v0 + 4048, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
  outlined copy of Data?(v2, v1);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 22160);
  v8 = *(v0 + 22152);
  v47 = *(v0 + 21752);
  if (v6)
  {
    v9 = *(v0 + 21312);
    v10 = *(v0 + 21304);
    log = *(v0 + 21080);
    v46 = *(v0 + 21104);
    v11 = *(v0 + 20768);
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v48 = v13;
    *v12 = 136315394;

    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v9, &v48);

    *(v12 + 4) = v14;
    outlined destroy of NSObject?(v11, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    outlined destroy of NSObject?(v11, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    *(v12 + 12) = 2080;
    outlined copy of Data._Representation(v8, v7);
    v15 = Data.description.getter();
    v17 = v16;
    outlined consume of Data?(v8, v7);
    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v17, &v48);

    *(v12 + 14) = v18;
    outlined consume of Data?(v8, v7);
    outlined consume of Data?(v8, v7);
    _os_log_impl(&dword_264F1F000, v4, v5, "SwiftMLSClientCoordinator processIncoming updated encryptedGroupNameKey { identifier: %s, encryptedGroupNameKey: %s }", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v13, -1, -1);
    MEMORY[0x266755550](v12, -1, -1);

    outlined consume of Data?(v8, v7);
    v19 = log;
    v20 = v46;
  }

  else
  {
    v21 = *(v0 + 21104);
    v22 = *(v0 + 21080);
    v23 = *(v0 + 20768);
    outlined consume of Data?(v8, v7);
    outlined destroy of NSObject?(v23, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    outlined destroy of NSObject?(v23, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    outlined consume of Data?(v8, v7);
    outlined consume of Data?(v8, v7);

    v20 = v21;
    v19 = v22;
  }

  v47(v20, v19);
  v24 = *(v0 + 20768);
  outlined init with copy of MLS.OutgoingEventState?(v24, v0 + 5224, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
  outlined init with copy of MLS.OutgoingEventState?(v24, v0 + 5056, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = *(v0 + 21312);
    v28 = *(v0 + 21304);
    v43 = *(v0 + 20768);
    loga = v25;
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v48 = v30;
    *v29 = 136315138;

    v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v27, &v48);

    *(v29 + 4) = v31;

    outlined destroy of NSObject?(v43, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    outlined destroy of NSObject?(v43, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    _os_log_impl(&dword_264F1F000, loga, v26, "SwiftMLSClientCoordinator processIncoming commit returning processedContext to caller { identifier: %s }", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v30);
    MEMORY[0x266755550](v30, -1, -1);
    MEMORY[0x266755550](v29, -1, -1);
  }

  else
  {
    v32 = *(v0 + 20768);

    outlined destroy of NSObject?(v32, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    outlined destroy of NSObject?(v32, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
  }

  v33 = *(v0 + 20776);
  v34 = *(v0 + 20760);
  *(v0 + 20656) = *(*(v0 + 20768) + 16);
  outlined init with copy of ServerBag.MLS(v33, v0 + 18864);
  v36 = *(v34 + 80);
  v35 = *(v34 + 88);
  v37 = *(v34 + direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier);
  v38 = *(v34 + direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier + 8);
  *(v0 + 20192) = v37;
  *(v0 + 20200) = v38;

  outlined init with copy of MLS.OutgoingEventState?(v0 + 20656, v0 + 20176, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
  swift_unknownObjectRetain();

  v39 = swift_task_alloc();
  *(v0 + 22184) = v39;
  *v39 = v0;
  v39[1] = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
  v40 = *(v0 + 20792);
  v41 = *(v0 + 20784);

  return MLS.Group.init(identifier:swiftMLSGroup:persister:clientIdentifier:)(v0 + 12456, v41, v40, v0 + 18864, v36, v35, (v0 + 20192));
}

{
  v2 = *v1;
  *(v2 + 22192) = v0;

  v3 = *(v2 + 21296);
  if (v0)
  {
    outlined destroy of NSObject?(v2 + 20656, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
    v4 = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
  }

  else
  {
    v4 = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{
  v1 = *(v0 + 21760);
  v2 = *(v0 + 21288);
  v3 = *(v0 + 21264);
  v4 = *(v0 + 21256);
  v5 = *(v0 + 21192);
  v6 = *(v0 + 21120);
  v19 = *(v0 + 20800);
  v7 = *(v0 + 20744);
  outlined destroy of NSObject?(*(v0 + 21008), &_s8SwiftMLS0B0O5GroupO11StateUpdateVSgMd, &_s8SwiftMLS0B0O5GroupO11StateUpdateVSgMR);
  v1(v5, v6);
  (*(v3 + 8))(v2, v4);
  v8 = *(v0 + 12488);
  *(v0 + 12816) = *(v0 + 12504);
  v9 = *(v0 + 12536);
  *(v0 + 12832) = *(v0 + 12520);
  *(v0 + 12848) = v9;
  *(v0 + 12864) = *(v0 + 12552);
  v10 = *(v0 + 12472);
  *(v0 + 12768) = *(v0 + 12456);
  *(v0 + 12784) = v10;
  *(v0 + 12800) = v8;
  swift_beginAccess();
  v11 = *(v19 + 16);
  *v7 = *(v0 + 20656);
  v12 = *(v0 + 12864);
  v13 = *(v0 + 12816);
  v14 = *(v0 + 12848);
  *(v7 + 80) = *(v0 + 12832);
  *(v7 + 96) = v14;
  *(v7 + 64) = v13;
  v15 = *(v0 + 12800);
  v16 = *(v0 + 12768);
  *(v7 + 32) = *(v0 + 12784);
  *(v7 + 48) = v15;
  *(v7 + 16) = v16;
  *(v7 + 112) = v12;
  *(v7 + 120) = v11;

  v17 = *(v0 + 8);

  return v17();
}

{
  v2 = *v1;
  *(*v1 + 22208) = v0;

  v3 = *(v2 + 21296);
  if (v0)
  {
    v4 = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
  }

  else
  {
    v4 = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{
  v66 = v0;
  v1 = *(v0 + 20920);
  v2 = *(v0 + 20912);
  v3 = *(v0 + 20880);
  v4 = *(v0 + 20872);
  v5 = *(v0 + 20768);
  v64 = 9;
  swift_beginAccess();
  MetricCollector.end(metric:)(&v64);
  swift_endAccess();
  v6 = *(v3 + 16);
  v6(v2, v1, v4);
  outlined init with copy of MLS.OutgoingEventState?(v5, v0 + 7744, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
  outlined init with copy of MLS.OutgoingEventState?(v5, v0 + 7576, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = *(v0 + 21312);
    v60 = v6;
    v10 = *(v0 + 21304);
    v56 = *(v0 + 20912);
    v11 = *(v0 + 20904);
    v12 = *(v0 + 20880);
    v13 = *(v0 + 20872);
    v14 = *(v0 + 20768);
    v15 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    v65 = v58;
    *v15 = 136315394;

    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v9, &v65);

    *(v15 + 4) = v16;
    outlined destroy of NSObject?(v14, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    v6 = v60;
    outlined destroy of NSObject?(v14, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    *(v15 + 12) = 2080;
    v60(v11, v56, v13);
    v17 = String.init<A>(describing:)();
    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, &v65);

    *(v15 + 14) = v19;
    (*(v12 + 8))(v56, v13);
    _os_log_impl(&dword_264F1F000, v7, v8, "SwiftMLSClientCoordinator processIncoming enqueueing committed proposal { identifier: %s, commitOutput: %s }", v15, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v58, -1, -1);
    MEMORY[0x266755550](v15, -1, -1);
  }

  else
  {
    v20 = *(v0 + 20912);
    v21 = *(v0 + 20880);
    v22 = *(v0 + 20872);
    v23 = *(v0 + 20768);

    outlined destroy of NSObject?(v23, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    outlined destroy of NSObject?(v23, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    (*(v21 + 8))(v20, v22);
  }

  v61 = *(v0 + 21312);
  v63 = *(v0 + 21304);
  v24 = *(v0 + 20888);
  v25 = *(v0 + 20880);
  v52 = *(v0 + 20872);
  v53 = *(v0 + 20896);
  v26 = *(v0 + 20808);
  v54 = *(v0 + 20800);
  v55 = *(v0 + 20784);
  v27 = *(v0 + 20776);
  v28 = *(v0 + 20768);
  v51 = *(v0 + 20760);
  v57 = *(v0 + 20792);
  v59 = *(v51 + 96);
  (v6)();
  outlined init with copy of ServerBag.MLS(v27, v0 + 18584);
  v29 = (*(v25 + 80) + 224) & ~*(v25 + 80);
  v30 = (v24 + v29 + 7) & 0xFFFFFFFFFFFFFFF8;
  v31 = (v30 + 23) & 0xFFFFFFFFFFFFFFF8;
  v32 = (v31 + 15) & 0xFFFFFFFFFFFFFFF8;
  v33 = swift_allocObject();
  *(v0 + 22216) = v33;
  *(v33 + 16) = *(v26 + 80);
  *(v33 + 24) = *(v26 + 88);
  *(v33 + 40) = *(v26 + 104);
  *(v33 + 48) = v51;
  v35 = *(v28 + 16);
  v34 = *(v28 + 32);
  *(v33 + 56) = *v28;
  *(v33 + 88) = v34;
  *(v33 + 72) = v35;
  v37 = *(v28 + 80);
  v36 = *(v28 + 96);
  v38 = *(v28 + 64);
  *(v33 + 104) = *(v28 + 48);
  *(v33 + 136) = v37;
  *(v33 + 120) = v38;
  *(v33 + 152) = v36;
  v39 = *(v28 + 160);
  v41 = *(v28 + 128);
  v40 = *(v28 + 144);
  *(v33 + 168) = *(v28 + 112);
  *(v33 + 200) = v40;
  *(v33 + 184) = v41;
  *(v33 + 216) = v39;
  (*(v25 + 32))(v33 + v29, v53, v52);
  v42 = (v33 + v30);
  *v42 = v63;
  v42[1] = v61;
  *(v33 + v31) = v54;
  v43 = (v33 + v32);
  *v43 = v55;
  v43[1] = v57;
  outlined init with take of MLS.KeyUpdatePolicy((v0 + 18584), v33 + ((v32 + 23) & 0xFFFFFFFFFFFFFFF8));
  v44 = *(*v59 + 320);
  outlined init with copy of MLS.OutgoingEventState?(v28, v0 + 7408, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);

  v62 = (v44 + *v44);
  v45 = swift_task_alloc();
  *(v0 + 22224) = v45;
  *v45 = v0;
  v45[1] = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
  v46 = *(v0 + 21312);
  v47 = *(v0 + 21304);
  v48 = *(v0 + 20792);
  v49 = *(v0 + 20784);

  return v62(v49, v48, v47, v46, 1, &async function pointer to partial apply for closure #7 in closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:), v33);
}

{
  v2 = *v1;
  *(*v1 + 22232) = v0;

  if (v0)
  {
    v3 = *(v2 + 21296);

    v4 = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
  }

  else
  {
    v3 = *(v2 + 21296);

    v4 = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{
  v22 = v0;
  v1 = *(v0 + 20768);
  outlined init with copy of MLS.OutgoingEventState?(v1, v0 + 7240, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
  outlined init with copy of MLS.OutgoingEventState?(v1, v0 + 7072, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 21312);
    v5 = *(v0 + 21304);
    v6 = *(v0 + 20768);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v21 = v8;
    *v7 = 136315138;

    v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v4, &v21);

    *(v7 + 4) = v9;
    outlined destroy of NSObject?(v6, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    outlined destroy of NSObject?(v6, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    _os_log_impl(&dword_264F1F000, v2, v3, "SwiftMLSClientCoordinator processIncoming proposal returning processedContext to caller { identifier: %s }", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x266755550](v8, -1, -1);
    MEMORY[0x266755550](v7, -1, -1);
  }

  else
  {
    v10 = *(v0 + 20768);

    outlined destroy of NSObject?(v10, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    outlined destroy of NSObject?(v10, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
  }

  v11 = *(v0 + 20776);
  v12 = *(v0 + 20760);
  *(v0 + 20400) = *(*(v0 + 20768) + 16);
  outlined init with copy of ServerBag.MLS(v11, v0 + 19024);
  v14 = *(v12 + 80);
  v13 = *(v12 + 88);
  v15 = *(v12 + direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier);
  v16 = *(v12 + direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier + 8);
  *(v0 + 20320) = v15;
  *(v0 + 20328) = v16;

  outlined init with copy of MLS.OutgoingEventState?(v0 + 20400, v0 + 20304, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
  swift_unknownObjectRetain();

  v17 = swift_task_alloc();
  *(v0 + 22240) = v17;
  *v17 = v0;
  v17[1] = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
  v18 = *(v0 + 20792);
  v19 = *(v0 + 20784);

  return MLS.Group.init(identifier:swiftMLSGroup:persister:clientIdentifier:)(v0 + 13288, v19, v18, v0 + 19024, v14, v13, (v0 + 20320));
}

{
  v2 = *v1;
  *(v2 + 22248) = v0;

  v3 = *(v2 + 21296);
  if (v0)
  {
    outlined destroy of NSObject?(v2 + 20400, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
    v4 = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
  }

  else
  {
    v4 = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{
  v19 = *(v0 + 21288);
  v1 = *(v0 + 21264);
  v2 = *(v0 + 21256);
  v3 = *(v0 + 21192);
  v4 = *(v0 + 21128);
  v5 = *(v0 + 21120);
  v6 = *(v0 + 20800);
  v7 = *(v0 + 20744);
  (*(*(v0 + 20880) + 8))(*(v0 + 20920), *(v0 + 20872));
  (*(v4 + 8))(v3, v5);
  (*(v1 + 8))(v19, v2);
  v8 = *(v0 + 13368);
  *(v0 + 12728) = *(v0 + 13352);
  *(v0 + 12744) = v8;
  *(v0 + 12760) = *(v0 + 13384);
  v9 = *(v0 + 13304);
  *(v0 + 12664) = *(v0 + 13288);
  *(v0 + 12680) = v9;
  v10 = *(v0 + 13336);
  *(v0 + 12696) = *(v0 + 13320);
  *(v0 + 12712) = v10;
  swift_beginAccess();
  v11 = *(v6 + 16);
  *v7 = *(v0 + 20400);
  v12 = *(v0 + 12712);
  v13 = *(v0 + 12744);
  v14 = *(v0 + 12760);
  *(v7 + 80) = *(v0 + 12728);
  *(v7 + 96) = v13;
  *(v7 + 64) = v12;
  v15 = *(v0 + 12696);
  v16 = *(v0 + 12664);
  *(v7 + 32) = *(v0 + 12680);
  *(v7 + 48) = v15;
  *(v7 + 16) = v16;
  *(v7 + 112) = v14;
  *(v7 + 120) = v11;

  v17 = *(v0 + 8);

  return v17();
}

{
  v2 = *v1;
  *(v2 + 22296) = v0;

  if (v0)
  {
    v3 = *(v2 + 21296);
    outlined destroy of NSObject?(v2 + 20272, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);

    return MEMORY[0x2822009F8](closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:), v3, 0);
  }

  else
  {
    v4 = *(v2 + 13512);
    *(v2 + 13808) = *(v2 + 13496);
    *(v2 + 13824) = v4;
    v5 = *(v2 + 13544);
    *(v2 + 13840) = *(v2 + 13528);
    v6 = *(v2 + 13560);
    *(v2 + 13888) = *(v2 + 13576);
    *(v2 + 13872) = v6;
    v7 = *(v2 + 22256);
    *(v2 + 13904) = *(v2 + 13592);
    *(v2 + 13856) = v5;
    v10 = (*(*v7 + 384) + **(*v7 + 384));
    v8 = swift_task_alloc();
    *(v2 + 22304) = v8;
    *v8 = v2;
    v8[1] = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);

    return v10(v2 + 15680, v2 + 13808, 1, 0);
  }
}

{
  v2 = *v1;
  v3 = *v1 + 13808;
  *(*v1 + 22312) = v0;

  if (v0)
  {
    v4 = *(v2 + 21296);
    outlined destroy of NSObject?(v2 + 20272, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
    v6 = *(v3 + 16);
    v5 = *(v3 + 32);
    *(v2 + 13912) = *v3;
    *(v2 + 13928) = v6;
    *(v2 + 13944) = v5;
    v8 = *(v3 + 64);
    v7 = *(v3 + 80);
    v9 = *(v3 + 48);
    *(v2 + 14008) = *(v3 + 96);
    *(v2 + 13976) = v8;
    *(v2 + 13992) = v7;
    *(v2 + 13960) = v9;
    outlined destroy of MLS.Group(v2 + 13912);
    v10 = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
    v11 = v4;
  }

  else
  {
    v12 = *(v2 + 21296);
    v14 = *(v3 + 16);
    v13 = *(v3 + 32);
    *(v2 + 14016) = *v3;
    *(v2 + 14032) = v14;
    *(v2 + 14048) = v13;
    v16 = *(v3 + 64);
    v15 = *(v3 + 80);
    v17 = *(v3 + 96);
    *(v2 + 14064) = *(v3 + 48);
    *(v2 + 14112) = v17;
    *(v2 + 14096) = v15;
    *(v2 + 14080) = v16;
    outlined destroy of MLS.Group(v2 + 14016);
    v10 = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
    v11 = v12;
  }

  return MEMORY[0x2822009F8](v10, v11, 0);
}

{
  v21 = v0;
  v1 = v0[2596];
  outlined init with copy of MLS.OutgoingEventState?(v1, (v0 + 1136), &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
  outlined init with copy of MLS.OutgoingEventState?(v1, (v0 + 2), &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[2664];
    v5 = v0[2663];
    v6 = v0[2596];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v20 = v8;
    *v7 = 136315138;

    v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v4, &v20);

    *(v7 + 4) = v9;
    outlined destroy of NSObject?(v6, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    outlined destroy of NSObject?(v6, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    _os_log_impl(&dword_264F1F000, v2, v3, "SwiftMLSClientCoordinator processIncoming signature verified returning processedContext to caller { identifier: %s }", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x266755550](v8, -1, -1);
    MEMORY[0x266755550](v7, -1, -1);
  }

  else
  {
    v10 = v0[2596];

    outlined destroy of NSObject?(v10, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    outlined destroy of NSObject?(v10, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
  }

  v11 = (v0[2595] + v0[2785]);
  outlined init with copy of ServerBag.MLS(v0[2597], (v0 + 2343));
  v12 = *v11;
  v13 = v11[1];
  v0[2542] = v12;
  v0[2543] = v13;

  swift_unknownObjectRetain();

  v14 = swift_task_alloc();
  v0[2790] = v14;
  *v14 = v0;
  v14[1] = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
  v15 = v0[2784];
  v16 = v0[2783];
  v17 = v0[2599];
  v18 = v0[2598];

  return MLS.Group.init(identifier:swiftMLSGroup:persister:clientIdentifier:)((v0 + 1570), v18, v17, (v0 + 2343), v16, v15, v0 + 2542);
}

{
  v2 = *v1;
  *(v2 + 22328) = v0;

  v3 = *(v2 + 21296);
  if (v0)
  {
    outlined destroy of NSObject?(v2 + 20272, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
    v4 = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
  }

  else
  {
    v4 = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{
  v1 = *(v0 + 21760);
  v2 = *(v0 + 21264);
  v3 = *(v0 + 21256);
  v4 = *(v0 + 21192);
  v5 = *(v0 + 21120);
  v20 = *(v0 + 20864);
  v6 = *(v0 + 20856);
  v18 = *(v0 + 21288);
  v19 = *(v0 + 20848);
  v7 = *(v0 + 20800);
  v8 = *(v0 + 20744);
  outlined destroy of NSObject?(v0 + 17880, &_s15SecureMessaging3MLSO36IncomingApplicationSignatureVerifiedVy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO36IncomingApplicationSignatureVerifiedVy_AC9AllMemberO10Foundation4DataVGMR);
  outlined destroy of NSObject?(v0 + 18136, &_s15SecureMessaging3MLSO12SigningInputVSgMd, &_s15SecureMessaging3MLSO12SigningInputVSgMR);
  v1(v4, v5);
  (*(v2 + 8))(v18, v3);
  *(v0 + 11152) = *(v0 + 12608);
  *(v0 + 11168) = *(v0 + 12624);
  *(v0 + 11184) = *(v0 + 12640);
  *(v0 + 11200) = *(v0 + 12656);
  *(v0 + 11104) = *(v0 + 12560);
  *(v0 + 11120) = *(v0 + 12576);
  *(v0 + 11136) = *(v0 + 12592);
  swift_beginAccess();
  v9 = *(v7 + 16);
  *v8 = *(v0 + 20272);
  v10 = *(v0 + 11200);
  v11 = *(v0 + 11152);
  v12 = *(v0 + 11184);
  *(v8 + 80) = *(v0 + 11168);
  *(v8 + 96) = v12;
  *(v8 + 64) = v11;
  v13 = *(v0 + 11136);
  v14 = *(v0 + 11104);
  *(v8 + 32) = *(v0 + 11120);
  *(v8 + 48) = v13;
  *(v8 + 16) = v14;
  *(v8 + 112) = v10;
  *(v8 + 120) = v9;
  v15 = *(v6 + 8);

  v15(v20, v19);

  v16 = *(v0 + 8);

  return v16();
}

{
  v1 = v0[2376];
  v2 = v0[2377];
  __swift_project_boxed_opaque_existential_1(v0 + 2373, v1);
  v3 = *(v2 + 32);

  v6 = (v3 + *v3);
  v4 = swift_task_alloc();
  v0[2798] = v4;
  *v4 = v0;
  v4[1] = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);

  return v6(v1, v2);
}

{
  v1 = v0[2376];
  v2 = v0[2377];
  __swift_project_boxed_opaque_existential_1(v0 + 2373, v1);
  v5 = (*(v2 + 24) + **(v2 + 24));
  v3 = swift_task_alloc();
  v0[2801] = v3;
  *v3 = v0;
  v3[1] = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);

  return v5(v1, v2);
}

{
  swift_unknownObjectRelease();
  v0[2818] = v0[2799];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2373);

  v1 = v0[2662];
  outlined destroy of NSObject?((v0 + 2536), &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);

  return MEMORY[0x2822009F8](closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:), v1, 0);
}

{
  *(*v1 + 22432) = v0;

  if (v0)
  {

    v2 = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
  }

  else
  {
    v2 = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v1 = v0[2376];
  v2 = v0[2377];
  __swift_project_boxed_opaque_existential_1(v0 + 2373, v1);
  v5 = (*(v2 + 64) + **(v2 + 64));
  v3 = swift_task_alloc();
  v0[2810] = v3;
  *v3 = v0;
  v3[1] = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);

  return v5(v1, v2);
}

{
  swift_unknownObjectRelease();
  v0[2818] = v0[2804];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2373);

  v1 = v0[2662];
  outlined destroy of NSObject?((v0 + 2536), &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);

  return MEMORY[0x2822009F8](closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:), v1, 0);
}

{
  swift_unknownObjectRelease();
  v1 = v0[2809];
  v2 = v0[2806];
  v3 = v0[2805];
  if (v1 >> 60 == 15)
  {
    v4 = 0xC000000000000000;
  }

  else
  {
    v4 = v0[2809];
  }

  if (v1 >> 60 == 15)
  {
    v5 = 0;
  }

  else
  {
    v5 = v0[2808];
  }

  v0[2818] = v0[2811];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2373);

  outlined consume of Data._Representation(v3, v2);
  outlined consume of Data._Representation(v5, v4);
  v6 = v0[2662];
  outlined destroy of NSObject?((v0 + 2536), &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);

  return MEMORY[0x2822009F8](closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:), v6, 0);
}

{
  v16 = *(v0 + 22528);
  v17 = *(v0 + 22536);
  v1 = *(v0 + 22504);
  v2 = *(v0 + 22496);
  v3 = *(v0 + 22472);
  v4 = *(v0 + 22448);
  v5 = *(v0 + 22440);
  v6 = *(v0 + 22416);
  v7 = *(v0 + 22400);
  v18 = *(v0 + 21296);
  v8 = *(v0 + 20792);
  v13 = v8;
  v9 = *(v0 + 20784);
  v14 = v9;
  v15 = *(v0 + 22464);
  swift_unknownObjectRelease();
  *(v0 + 14120) = v9;
  *(v0 + 14128) = v8;
  if (v2 >> 60 == 15)
  {
    v2 = 0xC000000000000000;
    v10 = 0;
  }

  else
  {
    v10 = v1;
  }

  if (v3 >> 60 == 15)
  {
    v3 = 0xC000000000000000;
    v11 = 0;
  }

  else
  {
    v11 = v15;
  }

  if ((v7 & 0x100000000) != 0)
  {
    v7 = 1;
  }

  else
  {
    v7 = v7;
  }

  *(v0 + 14136) = v7;
  *(v0 + 14144) = v7;
  *(v0 + 14152) = v6;
  *(v0 + 14160) = v5;
  *(v0 + 14168) = v4;
  *(v0 + 14176) = v11;
  *(v0 + 14184) = v3;
  *(v0 + 14192) = v10;
  *(v0 + 14200) = v2;
  *(v0 + 14208) = v17;
  *(v0 + 14216) = v16;
  outlined init with copy of MLS.Group(v0 + 14120, v0 + 13704);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 18984));
  *(v0 + 14224) = v14;
  *(v0 + 14232) = v13;
  *(v0 + 14240) = v7;
  *(v0 + 14248) = v7;
  *(v0 + 14256) = v6;
  *(v0 + 14264) = v5;
  *(v0 + 14272) = v4;
  *(v0 + 14280) = v11;
  *(v0 + 14288) = v3;
  *(v0 + 14296) = v10;
  *(v0 + 14304) = v2;
  *(v0 + 14312) = v17;
  *(v0 + 14320) = v16;
  outlined destroy of MLS.Group(v0 + 14224);

  return MEMORY[0x2822009F8](closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:), v18, 0);
}

{
  v1 = *(v0 + 20760);
  *(v0 + 13176) = *(v0 + 14216);
  v2 = *(v0 + 14136);
  *(v0 + 13080) = *(v0 + 14120);
  *(v0 + 13096) = v2;
  v3 = *(v0 + 14200);
  *(v0 + 13144) = *(v0 + 14184);
  *(v0 + 13160) = v3;
  v4 = *(v0 + 14168);
  *(v0 + 13112) = *(v0 + 14152);
  *(v0 + 13128) = v4;
  if (*(v0 + 19496) == *(v1 + direct field offset for MLS.SwiftMLSClientCoordinator.selfMember) && *(v0 + 19504) == *(v1 + direct field offset for MLS.SwiftMLSClientCoordinator.selfMember + 8))
  {
    v6 = 1;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v7 = *(**(v0 + 22336) + 384);
  v10 = (v7 + *v7);
  v8 = swift_task_alloc();
  *(v0 + 22552) = v8;
  *v8 = v0;
  v8[1] = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);

  return (v10)(v0 + 15576, v0 + 13080, 1, v6 & 1);
}

{
  swift_unknownObjectRelease();

  v1 = v0[2812];
  v2 = v0[2809];
  v3 = v0[2806];
  v4 = v0[2805];
  if (v1 >> 60 == 15)
  {
    v5 = 0xC000000000000000;
  }

  else
  {
    v5 = v0[2812];
  }

  if (v1 >> 60 == 15)
  {
    v6 = 0;
  }

  else
  {
    v6 = v0[2813];
  }

  if (v2 >> 60 == 15)
  {
    v7 = 0xC000000000000000;
  }

  else
  {
    v7 = v0[2809];
  }

  if (v2 >> 60 == 15)
  {
    v8 = 0;
  }

  else
  {
    v8 = v0[2808];
  }

  v0[2818] = v0[2815];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2373);

  outlined consume of Data._Representation(v4, v3);
  outlined consume of Data._Representation(v8, v7);
  outlined consume of Data._Representation(v6, v5);
  v9 = v0[2662];
  outlined destroy of NSObject?((v0 + 2536), &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);

  return MEMORY[0x2822009F8](closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:), v9, 0);
}

{
  v1 = v0[2661];
  v2 = v0[2658];
  v3 = v0[2657];
  (*(v0[2641] + 8))(v0[2649], v0[2640]);
  (*(v2 + 8))(v1, v3);
  outlined destroy of NSObject?((v0 + 2251), &_s15SecureMessaging3MLSO28IncomingInternalStateUpdatedVy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO28IncomingInternalStateUpdatedVy_AC9AllMemberO10Foundation4DataVGMR);

  v4 = v0[1];

  return v4();
}

{
  v2 = *v1;
  v3 = *v1 + 13080;
  *(*v1 + 22560) = v0;

  if (v0)
  {
    v4 = *(v2 + 21296);
    outlined destroy of NSObject?(v2 + 20288, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
    v6 = *(v3 + 16);
    v5 = *(v3 + 32);
    *(v2 + 12872) = *v3;
    *(v2 + 12888) = v6;
    *(v2 + 12904) = v5;
    v8 = *(v3 + 64);
    v7 = *(v3 + 80);
    v9 = *(v3 + 48);
    *(v2 + 12968) = *(v3 + 96);
    *(v2 + 12936) = v8;
    *(v2 + 12952) = v7;
    *(v2 + 12920) = v9;
    outlined destroy of MLS.Group(v2 + 12872);
    v10 = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
    v11 = v4;
  }

  else
  {
    v12 = *(v2 + 21296);
    v14 = *(v3 + 16);
    v13 = *(v3 + 32);
    *(v2 + 12352) = *v3;
    *(v2 + 12368) = v14;
    *(v2 + 12384) = v13;
    v16 = *(v3 + 64);
    v15 = *(v3 + 80);
    v17 = *(v3 + 96);
    *(v2 + 12400) = *(v3 + 48);
    *(v2 + 12448) = v17;
    *(v2 + 12432) = v15;
    *(v2 + 12416) = v16;
    outlined destroy of MLS.Group(v2 + 12352);
    v10 = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
    v11 = v12;
  }

  return MEMORY[0x2822009F8](v10, v11, 0);
}

{
  v21 = v0;
  v1 = v0[2596];
  outlined init with copy of MLS.OutgoingEventState?(v1, (v0 + 1241), &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
  outlined init with copy of MLS.OutgoingEventState?(v1, (v0 + 1262), &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[2664];
    v5 = v0[2663];
    v6 = v0[2596];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v20 = v8;
    *v7 = 136315138;

    v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v4, &v20);

    *(v7 + 4) = v9;
    outlined destroy of NSObject?(v6, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    outlined destroy of NSObject?(v6, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    _os_log_impl(&dword_264F1F000, v2, v3, "SwiftMLSClientCoordinator processIncoming internal message returning processedContext to caller { identifier: %s }", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x266755550](v8, -1, -1);
    MEMORY[0x266755550](v7, -1, -1);
  }

  else
  {
    v10 = v0[2596];

    outlined destroy of NSObject?(v10, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    outlined destroy of NSObject?(v10, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
  }

  v11 = (v0[2595] + v0[2795]);
  outlined init with copy of ServerBag.MLS(v0[2597], (v0 + 2363));
  v12 = *v11;
  v13 = v11[1];
  v0[2556] = v12;
  v0[2557] = v13;

  swift_unknownObjectRetain();

  v14 = swift_task_alloc();
  v0[2821] = v14;
  *v14 = v0;
  v14[1] = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
  v15 = v0[2794];
  v16 = v0[2793];
  v17 = v0[2599];
  v18 = v0[2598];

  return MLS.Group.init(identifier:swiftMLSGroup:persister:clientIdentifier:)((v0 + 1518), v18, v17, (v0 + 2363), v16, v15, v0 + 2556);
}

{
  v2 = *v1;
  *(v2 + 22576) = v0;

  v3 = *(v2 + 21296);
  if (v0)
  {
    outlined destroy of NSObject?(v2 + 20288, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
    v4 = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
  }

  else
  {
    v4 = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{
  v1 = *(v0 + 21288);
  v2 = *(v0 + 21264);
  v3 = *(v0 + 21256);
  v4 = *(v0 + 21192);
  v5 = *(v0 + 21128);
  v6 = *(v0 + 21120);
  v7 = *(v0 + 20800);
  v8 = *(v0 + 20744);
  outlined destroy of NSObject?(v0 + 18008, &_s15SecureMessaging3MLSO28IncomingInternalStateUpdatedVy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO28IncomingInternalStateUpdatedVy_AC9AllMemberO10Foundation4DataVGMR);
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);
  *(v0 + 11984) = *(v0 + 12192);
  *(v0 + 12000) = *(v0 + 12208);
  *(v0 + 12016) = *(v0 + 12224);
  *(v0 + 12032) = *(v0 + 12240);
  *(v0 + 11936) = *(v0 + 12144);
  *(v0 + 11952) = *(v0 + 12160);
  *(v0 + 11968) = *(v0 + 12176);
  swift_beginAccess();
  v9 = *(v7 + 16);
  *v8 = *(v0 + 20288);
  v10 = *(v0 + 12032);
  v11 = *(v0 + 11984);
  v12 = *(v0 + 12016);
  *(v8 + 80) = *(v0 + 12000);
  *(v8 + 96) = v12;
  *(v8 + 64) = v11;
  v13 = *(v0 + 11968);
  v14 = *(v0 + 11936);
  *(v8 + 32) = *(v0 + 11952);
  *(v8 + 48) = v13;
  *(v8 + 16) = v14;
  *(v8 + 112) = v10;
  *(v8 + 120) = v9;

  v15 = *(v0 + 8);

  return v15();
}

{
  (*(v0[2658] + 8))(v0[2661], v0[2657]);

  v1 = v0[1];

  return v1();
}

{
  (*(v0[2658] + 8))(v0[2661], v0[2657]);
  outlined destroy of MLS.Group((v0 + 1908));
  outlined destroy of NSObject?((v0 + 2259), &_s15SecureMessaging3MLSO28IncomingInternalStateUpdatedVy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO28IncomingInternalStateUpdatedVy_AC9AllMemberO10Foundation4DataVGMR);

  v1 = v0[1];

  return v1();
}

{
  (*(v0[2658] + 8))(v0[2661], v0[2657]);

  v1 = v0[1];

  return v1();
}

{
  v2 = *v1;
  *(*v1 + 22624) = v0;

  if (v0)
  {
    v3 = v2[2825];
    v4 = v2[2824];
    v5 = v2[2823];
    v6 = v2[2662];
    outlined destroy of NSObject?((v2 + 2508), &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);

    outlined consume of MLS.AllMember(v4, v3);
    v7 = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
    v8 = v6;
  }

  else
  {
    v8 = v2[2662];
    v7 = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
  }

  return MEMORY[0x2822009F8](v7, v8, 0);
}

{
  v30 = v0;
  v1 = v0[2596];
  outlined init with copy of MLS.OutgoingEventState?(v1, (v0 + 233), &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);

  outlined init with copy of MLS.OutgoingEventState?(v1, (v0 + 254), &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[2825];
  v6 = v0[2824];
  v7 = v0[2823];
  if (v4)
  {
    v8 = v0[2664];
    v26 = v0[2825];
    v9 = v0[2663];
    v10 = v0[2599];
    v25 = v0[2598];
    v11 = v0[2596];
    v12 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v29 = v28;
    *v12 = 136315394;

    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v8, &v29);

    *(v12 + 4) = v13;
    outlined destroy of NSObject?(v11, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    outlined destroy of NSObject?(v11, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    *(v12 + 12) = 2080;

    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v10, &v29);

    *(v12 + 14) = v14;

    outlined consume of MLS.AllMember(v6, v26);
    swift_bridgeObjectRelease_n();
    _os_log_impl(&dword_264F1F000, v2, v3, "SwiftMLSClientCoordinator processIncoming deleting group { identifier: %s, group: %s }", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v28, -1, -1);
    MEMORY[0x266755550](v12, -1, -1);
  }

  else
  {
    v15 = v0[2596];

    outlined consume of MLS.AllMember(v6, v5);
    outlined destroy of NSObject?(v15, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    outlined destroy of NSObject?(v15, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    swift_bridgeObjectRelease_n();
  }

  v16 = v0[2595];
  v17 = *(v16 + 88);
  ObjectType = swift_getObjectType();
  v19 = *(v16 + direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier + 8);
  v0[2564] = *(v16 + direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier);
  v0[2565] = v19;
  v20 = *(v17 + 96);

  v27 = (v20 + *v20);
  v21 = swift_task_alloc();
  v0[2829] = v21;
  *v21 = v0;
  v21[1] = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
  v22 = v0[2599];
  v23 = v0[2598];

  return (v27)(v23, v22, v0 + 2564, ObjectType, v17);
}

{
  v2 = *v1;
  *(v2 + 22640) = v0;

  v3 = *(v2 + 21296);
  if (v0)
  {
    outlined destroy of NSObject?(v2 + 20064, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);

    v4 = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
  }

  else
  {

    v4 = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{
  v1 = *(v0 + 21288);
  v2 = *(v0 + 21264);
  v3 = *(v0 + 21256);
  v4 = *(v0 + 20840);
  v5 = *(v0 + 20816);
  v6 = *(v0 + 20800);
  v7 = *(v0 + 20744);
  outlined destroy of NSObject?(v0 + 17560, &_s15SecureMessaging3MLSO18IncomingSelfKickedVy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO18IncomingSelfKickedVy_AC9AllMemberO10Foundation4DataVGMR);
  outlined destroy of NSObject?(v5, &_s8SwiftMLS0B0O5GroupO6MemberVSgMd, &_s8SwiftMLS0B0O5GroupO6MemberVSgMR);
  (*(v2 + 8))(v1, v3);
  swift_beginAccess();
  v8 = *(v6 + 16);
  *v7 = *(v0 + 20064);
  v9 = *(v0 + 14584);
  v10 = *(v0 + 14616);
  v11 = *(v0 + 14632);
  *(v7 + 80) = *(v0 + 14600);
  *(v7 + 96) = v10;
  *(v7 + 64) = v9;
  v12 = *(v0 + 14568);
  v13 = *(v0 + 14536);
  *(v7 + 32) = *(v0 + 14552);
  *(v7 + 48) = v12;
  *(v7 + 16) = v13;
  *(v7 + 112) = v11;
  *(v7 + 120) = v8;

  outlined destroy of NSObject?(v4, &_s8SwiftMLS0B0O5GroupO6MemberVSgMd, &_s8SwiftMLS0B0O5GroupO6MemberVSgMR);

  v14 = *(v0 + 8);

  return v14();
}

{
  v70 = v0;
  (*(*(v0 + 21088) + 8))(*(v0 + 21112), *(v0 + 21080));
  v1 = *(v0 + 21680);
  *(v0 + 22584) = v1;
  *(v0 + 20688) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if (swift_dynamicCast())
  {
    v3 = (*(*(v0 + 20832) + 88))(*(v0 + 20840), *(v0 + 20824));
    v4 = *(v0 + 20840);
    v5 = *(v0 + 20832);
    v6 = *(v0 + 20824);
    if (v3 == *MEMORY[0x277D6AD10])
    {
      v62 = *(v0 + 21304);
      v63 = *(v0 + 21312);
      v7 = *(v0 + 20816);
      v8 = *(v0 + 20768);
      v9 = *(v0 + 20760);
      v61 = *(v0 + 20752);
      (*(v5 + 96))(v4, v6);
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8SwiftMLS0B0O5GroupO6MemberVSg9committer_AH8proposertMd, &_s8SwiftMLS0B0O5GroupO6MemberVSg9committer_AH8proposertMR);
      outlined init with take of MLS.Group.Member?(v4 + *(v10 + 48), v7, &_s8SwiftMLS0B0O5GroupO6MemberVSgMd, &_s8SwiftMLS0B0O5GroupO6MemberVSgMR);
      closure #1 in closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:)(v7, v9, v8, v61, v68);
      v12 = *v68;
      v11 = *&v68[8];
      *(v0 + 22592) = *v68;
      *(v0 + 22600) = v11;
      v13 = *&v68[16];
      *(v0 + 22608) = *&v68[16];
      v14 = v69;
      *(v0 + 15673) = v69;
      *(v0 + 20064) = *(v8 + 16);
      *&v68[7] = *(v8 + 16);
      *(v0 + 17560) = v62;
      *(v0 + 17568) = v63;
      *(v0 + 17576) = v12;
      *(v0 + 17584) = v11;
      *(v0 + 17592) = v13;
      *(v0 + 17600) = v14;
      *(v0 + 17601) = *v68;
      *(v0 + 17616) = *&v68[15];
      v15 = *(v0 + 17576);
      *(v0 + 16792) = *(v0 + 17560);
      *(v0 + 16808) = v15;
      v16 = *(v0 + 17608);
      *(v0 + 16824) = *(v0 + 17592);
      *(v0 + 16840) = v16;
      outlined copy of MLS.AllMember(v12, v11);
      outlined init with copy of MLS.OutgoingEventState?(v8, v0 + 1360, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);

      outlined copy of MLS.AllMember(v12, v11);
      outlined init with copy of MLS.OutgoingEventState?(v0 + 20064, v0 + 20544, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
      outlined init with copy of MLS.OutgoingEventState?(v8, v0 + 1696, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);

      v64 = v12;
      v17 = v12;
      v18 = v11;
      outlined copy of MLS.AllMember(v17, v11);
      outlined init with copy of MLS.OutgoingEventState?(v0 + 20064, v0 + 20528, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v19, v20))
      {
        v59 = v20;
        v21 = *(v0 + 21312);
        v22 = *(v0 + 21304);
        v23 = *(v0 + 20768);
        v24 = *(v0 + 20760);
        v25 = swift_slowAlloc();
        v60 = swift_slowAlloc();
        v66[0] = v60;
        *v25 = 136315650;

        v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v21, v66);

        *(v25 + 4) = v26;
        outlined destroy of NSObject?(v23, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
        outlined destroy of NSObject?(v23, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
        *(v25 + 12) = 2080;
        *v68 = v64;
        *&v68[8] = v18;
        *&v68[16] = v13;
        v69 = v14;
        outlined copy of MLS.AllMember(v64, v18);
        v27 = MLS.AllMember.description.getter();
        v29 = v28;
        outlined consume of MLS.AllMember(*v68, *&v68[8]);
        v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v29, v66);

        *(v25 + 14) = v30;
        outlined consume of MLS.AllMember(v64, v18);
        outlined consume of MLS.AllMember(v64, v18);
        *(v25 + 22) = 2080;
        v31 = *(v24 + direct field offset for MLS.SwiftMLSClientCoordinator.selfMember + 8);
        v32 = *(v24 + direct field offset for MLS.SwiftMLSClientCoordinator.selfMember + 16);
        v33 = *(v24 + direct field offset for MLS.SwiftMLSClientCoordinator.selfMember + 24);
        *v68 = *(v24 + direct field offset for MLS.SwiftMLSClientCoordinator.selfMember);
        *&v68[8] = v31;
        *&v68[16] = v32;
        v69 = v33;
        outlined copy of MLS.AllMember(*v68, v31);
        v34 = MLS.AllMember.description.getter();
        v36 = v35;
        outlined consume of MLS.AllMember(*v68, *&v68[8]);
        v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v36, v66);

        *(v25 + 24) = v37;

        _os_log_impl(&dword_264F1F000, v19, v59, "SwiftMLSClientCoordinator processIncoming received removedFromGroup error. Delivering self kicked event { identifier: %s, sender: %s, selfMember: %s }", v25, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x266755550](v60, -1, -1);
        MEMORY[0x266755550](v25, -1, -1);
      }

      else
      {
        v40 = *(v0 + 20768);

        outlined destroy of NSObject?(v40, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
        outlined destroy of NSObject?(v40, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
        outlined consume of MLS.AllMember(v64, v11);
        outlined consume of MLS.AllMember(v64, v11);
      }

      v41 = *(v0 + 21664);
      v42 = *(v0 + 20792);
      v43 = *(v0 + 20760);
      if ((v41 & 0x100000000) != 0)
      {
        v41 = 1;
      }

      else
      {
        v41 = v41;
      }

      v44 = *(v0 + 21640) + 1;
      *(v0 + 14536) = *(v0 + 20784);
      *(v0 + 14544) = v42;
      *(v0 + 14552) = v41;
      *(v0 + 14560) = v41;
      *(v0 + 14568) = v44;
      *(v0 + 14576) = xmmword_2651B68A0;
      *(v0 + 14592) = xmmword_2651B68A0;
      *(v0 + 14608) = xmmword_2651B68A0;
      *(v0 + 14624) = xmmword_2651B5F50;
      v45 = *(v43 + 96);
      v46 = *(v0 + 16840);
      *(v0 + 15920) = *(v0 + 16824);
      *(v0 + 15936) = v46;
      v47 = *(v0 + 16872);
      *(v0 + 15952) = *(v0 + 16856);
      *(v0 + 15968) = v47;
      v48 = *(v0 + 16808);
      *(v0 + 15888) = *(v0 + 16792);
      *(v0 + 15904) = v48;
      v49 = *(v0 + 14584);
      *(v0 + 13424) = *(v0 + 14568);
      *(v0 + 13440) = v49;
      v50 = *(v0 + 14616);
      *(v0 + 13456) = *(v0 + 14600);
      *(v0 + 13472) = v50;
      v51 = *(v0 + 14536);
      *(v0 + 13408) = *(v0 + 14552);
      *(v0 + 15984) = 4;
      *(v0 + 13488) = *(v0 + 14632);
      *(v0 + 13392) = v51;
      v66[0] = v64;
      v66[1] = v18;
      v66[2] = v13;
      v67 = v14;
      v52 = v43 + direct field offset for MLS.SwiftMLSClientCoordinator.selfMember;
      v54 = *(v52 + 8);
      v55 = *(v52 + 16);
      v56 = *(v52 + 24);
      *v68 = *v52;
      v53 = *v68;
      *&v68[8] = v54;
      *&v68[16] = v55;
      v69 = v56;

      outlined copy of MLS.AllMember(v53, v54);
      v57 = specialized static MLS.AllMember.== infix(_:_:)(v66, v68);
      outlined consume of MLS.AllMember(*v68, *&v68[8]);
      v65 = (*(*v45 + 384) + **(*v45 + 384));
      v58 = swift_task_alloc();
      *(v0 + 22616) = v58;
      *v58 = v0;
      v58[1] = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);

      return v65(v0 + 15888, v0 + 13392, 1, v57);
    }

    (*(*(v0 + 21264) + 8))(*(v0 + 21288), *(v0 + 21256));
    (*(v5 + 8))(v4, v6);
  }

  else
  {
    (*(*(v0 + 21264) + 8))(*(v0 + 21288), *(v0 + 21256));
  }

  v38 = *(v0 + 8);

  return v38();
}

{
  v70 = v0;
  (*(*(v0 + 21088) + 8))(*(v0 + 21112), *(v0 + 21080));
  v1 = *(v0 + 21696);
  *(v0 + 22584) = v1;
  *(v0 + 20688) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if (swift_dynamicCast())
  {
    v3 = (*(*(v0 + 20832) + 88))(*(v0 + 20840), *(v0 + 20824));
    v4 = *(v0 + 20840);
    v5 = *(v0 + 20832);
    v6 = *(v0 + 20824);
    if (v3 == *MEMORY[0x277D6AD10])
    {
      v62 = *(v0 + 21304);
      v63 = *(v0 + 21312);
      v7 = *(v0 + 20816);
      v8 = *(v0 + 20768);
      v9 = *(v0 + 20760);
      v61 = *(v0 + 20752);
      (*(v5 + 96))(v4, v6);
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8SwiftMLS0B0O5GroupO6MemberVSg9committer_AH8proposertMd, &_s8SwiftMLS0B0O5GroupO6MemberVSg9committer_AH8proposertMR);
      outlined init with take of MLS.Group.Member?(v4 + *(v10 + 48), v7, &_s8SwiftMLS0B0O5GroupO6MemberVSgMd, &_s8SwiftMLS0B0O5GroupO6MemberVSgMR);
      closure #1 in closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:)(v7, v9, v8, v61, v68);
      v12 = *v68;
      v11 = *&v68[8];
      *(v0 + 22592) = *v68;
      *(v0 + 22600) = v11;
      v13 = *&v68[16];
      *(v0 + 22608) = *&v68[16];
      v14 = v69;
      *(v0 + 15673) = v69;
      *(v0 + 20064) = *(v8 + 16);
      *&v68[7] = *(v8 + 16);
      *(v0 + 17560) = v62;
      *(v0 + 17568) = v63;
      *(v0 + 17576) = v12;
      *(v0 + 17584) = v11;
      *(v0 + 17592) = v13;
      *(v0 + 17600) = v14;
      *(v0 + 17601) = *v68;
      *(v0 + 17616) = *&v68[15];
      v15 = *(v0 + 17576);
      *(v0 + 16792) = *(v0 + 17560);
      *(v0 + 16808) = v15;
      v16 = *(v0 + 17608);
      *(v0 + 16824) = *(v0 + 17592);
      *(v0 + 16840) = v16;
      outlined copy of MLS.AllMember(v12, v11);
      outlined init with copy of MLS.OutgoingEventState?(v8, v0 + 1360, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);

      outlined copy of MLS.AllMember(v12, v11);
      outlined init with copy of MLS.OutgoingEventState?(v0 + 20064, v0 + 20544, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
      outlined init with copy of MLS.OutgoingEventState?(v8, v0 + 1696, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);

      v64 = v12;
      v17 = v12;
      v18 = v11;
      outlined copy of MLS.AllMember(v17, v11);
      outlined init with copy of MLS.OutgoingEventState?(v0 + 20064, v0 + 20528, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v19, v20))
      {
        v59 = v20;
        v21 = *(v0 + 21312);
        v22 = *(v0 + 21304);
        v23 = *(v0 + 20768);
        v24 = *(v0 + 20760);
        v25 = swift_slowAlloc();
        v60 = swift_slowAlloc();
        v66[0] = v60;
        *v25 = 136315650;

        v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v21, v66);

        *(v25 + 4) = v26;
        outlined destroy of NSObject?(v23, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
        outlined destroy of NSObject?(v23, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
        *(v25 + 12) = 2080;
        *v68 = v64;
        *&v68[8] = v18;
        *&v68[16] = v13;
        v69 = v14;
        outlined copy of MLS.AllMember(v64, v18);
        v27 = MLS.AllMember.description.getter();
        v29 = v28;
        outlined consume of MLS.AllMember(*v68, *&v68[8]);
        v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v29, v66);

        *(v25 + 14) = v30;
        outlined consume of MLS.AllMember(v64, v18);
        outlined consume of MLS.AllMember(v64, v18);
        *(v25 + 22) = 2080;
        v31 = *(v24 + direct field offset for MLS.SwiftMLSClientCoordinator.selfMember + 8);
        v32 = *(v24 + direct field offset for MLS.SwiftMLSClientCoordinator.selfMember + 16);
        v33 = *(v24 + direct field offset for MLS.SwiftMLSClientCoordinator.selfMember + 24);
        *v68 = *(v24 + direct field offset for MLS.SwiftMLSClientCoordinator.selfMember);
        *&v68[8] = v31;
        *&v68[16] = v32;
        v69 = v33;
        outlined copy of MLS.AllMember(*v68, v31);
        v34 = MLS.AllMember.description.getter();
        v36 = v35;
        outlined consume of MLS.AllMember(*v68, *&v68[8]);
        v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v36, v66);

        *(v25 + 24) = v37;

        _os_log_impl(&dword_264F1F000, v19, v59, "SwiftMLSClientCoordinator processIncoming received removedFromGroup error. Delivering self kicked event { identifier: %s, sender: %s, selfMember: %s }", v25, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x266755550](v60, -1, -1);
        MEMORY[0x266755550](v25, -1, -1);
      }

      else
      {
        v40 = *(v0 + 20768);

        outlined destroy of NSObject?(v40, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
        outlined destroy of NSObject?(v40, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
        outlined consume of MLS.AllMember(v64, v11);
        outlined consume of MLS.AllMember(v64, v11);
      }

      v41 = *(v0 + 21664);
      v42 = *(v0 + 20792);
      v43 = *(v0 + 20760);
      if ((v41 & 0x100000000) != 0)
      {
        v41 = 1;
      }

      else
      {
        v41 = v41;
      }

      v44 = *(v0 + 21640) + 1;
      *(v0 + 14536) = *(v0 + 20784);
      *(v0 + 14544) = v42;
      *(v0 + 14552) = v41;
      *(v0 + 14560) = v41;
      *(v0 + 14568) = v44;
      *(v0 + 14576) = xmmword_2651B68A0;
      *(v0 + 14592) = xmmword_2651B68A0;
      *(v0 + 14608) = xmmword_2651B68A0;
      *(v0 + 14624) = xmmword_2651B5F50;
      v45 = *(v43 + 96);
      v46 = *(v0 + 16840);
      *(v0 + 15920) = *(v0 + 16824);
      *(v0 + 15936) = v46;
      v47 = *(v0 + 16872);
      *(v0 + 15952) = *(v0 + 16856);
      *(v0 + 15968) = v47;
      v48 = *(v0 + 16808);
      *(v0 + 15888) = *(v0 + 16792);
      *(v0 + 15904) = v48;
      v49 = *(v0 + 14584);
      *(v0 + 13424) = *(v0 + 14568);
      *(v0 + 13440) = v49;
      v50 = *(v0 + 14616);
      *(v0 + 13456) = *(v0 + 14600);
      *(v0 + 13472) = v50;
      v51 = *(v0 + 14536);
      *(v0 + 13408) = *(v0 + 14552);
      *(v0 + 15984) = 4;
      *(v0 + 13488) = *(v0 + 14632);
      *(v0 + 13392) = v51;
      v66[0] = v64;
      v66[1] = v18;
      v66[2] = v13;
      v67 = v14;
      v52 = v43 + direct field offset for MLS.SwiftMLSClientCoordinator.selfMember;
      v54 = *(v52 + 8);
      v55 = *(v52 + 16);
      v56 = *(v52 + 24);
      *v68 = *v52;
      v53 = *v68;
      *&v68[8] = v54;
      *&v68[16] = v55;
      v69 = v56;

      outlined copy of MLS.AllMember(v53, v54);
      v57 = specialized static MLS.AllMember.== infix(_:_:)(v66, v68);
      outlined consume of MLS.AllMember(*v68, *&v68[8]);
      v65 = (*(*v45 + 384) + **(*v45 + 384));
      v58 = swift_task_alloc();
      *(v0 + 22616) = v58;
      *v58 = v0;
      v58[1] = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);

      return v65(v0 + 15888, v0 + 13392, 1, v57);
    }

    (*(*(v0 + 21264) + 8))(*(v0 + 21288), *(v0 + 21256));
    (*(v5 + 8))(v4, v6);
  }

  else
  {
    (*(*(v0 + 21264) + 8))(*(v0 + 21288), *(v0 + 21256));
  }

  v38 = *(v0 + 8);

  return v38();
}

{
  v70 = v0;
  (*(*(v0 + 21088) + 8))(*(v0 + 21112), *(v0 + 21080));
  v1 = *(v0 + 21720);
  *(v0 + 22584) = v1;
  *(v0 + 20688) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if (swift_dynamicCast())
  {
    v3 = (*(*(v0 + 20832) + 88))(*(v0 + 20840), *(v0 + 20824));
    v4 = *(v0 + 20840);
    v5 = *(v0 + 20832);
    v6 = *(v0 + 20824);
    if (v3 == *MEMORY[0x277D6AD10])
    {
      v62 = *(v0 + 21304);
      v63 = *(v0 + 21312);
      v7 = *(v0 + 20816);
      v8 = *(v0 + 20768);
      v9 = *(v0 + 20760);
      v61 = *(v0 + 20752);
      (*(v5 + 96))(v4, v6);
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8SwiftMLS0B0O5GroupO6MemberVSg9committer_AH8proposertMd, &_s8SwiftMLS0B0O5GroupO6MemberVSg9committer_AH8proposertMR);
      outlined init with take of MLS.Group.Member?(v4 + *(v10 + 48), v7, &_s8SwiftMLS0B0O5GroupO6MemberVSgMd, &_s8SwiftMLS0B0O5GroupO6MemberVSgMR);
      closure #1 in closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:)(v7, v9, v8, v61, v68);
      v12 = *v68;
      v11 = *&v68[8];
      *(v0 + 22592) = *v68;
      *(v0 + 22600) = v11;
      v13 = *&v68[16];
      *(v0 + 22608) = *&v68[16];
      v14 = v69;
      *(v0 + 15673) = v69;
      *(v0 + 20064) = *(v8 + 16);
      *&v68[7] = *(v8 + 16);
      *(v0 + 17560) = v62;
      *(v0 + 17568) = v63;
      *(v0 + 17576) = v12;
      *(v0 + 17584) = v11;
      *(v0 + 17592) = v13;
      *(v0 + 17600) = v14;
      *(v0 + 17601) = *v68;
      *(v0 + 17616) = *&v68[15];
      v15 = *(v0 + 17576);
      *(v0 + 16792) = *(v0 + 17560);
      *(v0 + 16808) = v15;
      v16 = *(v0 + 17608);
      *(v0 + 16824) = *(v0 + 17592);
      *(v0 + 16840) = v16;
      outlined copy of MLS.AllMember(v12, v11);
      outlined init with copy of MLS.OutgoingEventState?(v8, v0 + 1360, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);

      outlined copy of MLS.AllMember(v12, v11);
      outlined init with copy of MLS.OutgoingEventState?(v0 + 20064, v0 + 20544, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
      outlined init with copy of MLS.OutgoingEventState?(v8, v0 + 1696, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);

      v64 = v12;
      v17 = v12;
      v18 = v11;
      outlined copy of MLS.AllMember(v17, v11);
      outlined init with copy of MLS.OutgoingEventState?(v0 + 20064, v0 + 20528, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v19, v20))
      {
        v59 = v20;
        v21 = *(v0 + 21312);
        v22 = *(v0 + 21304);
        v23 = *(v0 + 20768);
        v24 = *(v0 + 20760);
        v25 = swift_slowAlloc();
        v60 = swift_slowAlloc();
        v66[0] = v60;
        *v25 = 136315650;

        v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v21, v66);

        *(v25 + 4) = v26;
        outlined destroy of NSObject?(v23, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
        outlined destroy of NSObject?(v23, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
        *(v25 + 12) = 2080;
        *v68 = v64;
        *&v68[8] = v18;
        *&v68[16] = v13;
        v69 = v14;
        outlined copy of MLS.AllMember(v64, v18);
        v27 = MLS.AllMember.description.getter();
        v29 = v28;
        outlined consume of MLS.AllMember(*v68, *&v68[8]);
        v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v29, v66);

        *(v25 + 14) = v30;
        outlined consume of MLS.AllMember(v64, v18);
        outlined consume of MLS.AllMember(v64, v18);
        *(v25 + 22) = 2080;
        v31 = *(v24 + direct field offset for MLS.SwiftMLSClientCoordinator.selfMember + 8);
        v32 = *(v24 + direct field offset for MLS.SwiftMLSClientCoordinator.selfMember + 16);
        v33 = *(v24 + direct field offset for MLS.SwiftMLSClientCoordinator.selfMember + 24);
        *v68 = *(v24 + direct field offset for MLS.SwiftMLSClientCoordinator.selfMember);
        *&v68[8] = v31;
        *&v68[16] = v32;
        v69 = v33;
        outlined copy of MLS.AllMember(*v68, v31);
        v34 = MLS.AllMember.description.getter();
        v36 = v35;
        outlined consume of MLS.AllMember(*v68, *&v68[8]);
        v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v36, v66);

        *(v25 + 24) = v37;

        _os_log_impl(&dword_264F1F000, v19, v59, "SwiftMLSClientCoordinator processIncoming received removedFromGroup error. Delivering self kicked event { identifier: %s, sender: %s, selfMember: %s }", v25, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x266755550](v60, -1, -1);
        MEMORY[0x266755550](v25, -1, -1);
      }

      else
      {
        v40 = *(v0 + 20768);

        outlined destroy of NSObject?(v40, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
        outlined destroy of NSObject?(v40, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
        outlined consume of MLS.AllMember(v64, v11);
        outlined consume of MLS.AllMember(v64, v11);
      }

      v41 = *(v0 + 21664);
      v42 = *(v0 + 20792);
      v43 = *(v0 + 20760);
      if ((v41 & 0x100000000) != 0)
      {
        v41 = 1;
      }

      else
      {
        v41 = v41;
      }

      v44 = *(v0 + 21640) + 1;
      *(v0 + 14536) = *(v0 + 20784);
      *(v0 + 14544) = v42;
      *(v0 + 14552) = v41;
      *(v0 + 14560) = v41;
      *(v0 + 14568) = v44;
      *(v0 + 14576) = xmmword_2651B68A0;
      *(v0 + 14592) = xmmword_2651B68A0;
      *(v0 + 14608) = xmmword_2651B68A0;
      *(v0 + 14624) = xmmword_2651B5F50;
      v45 = *(v43 + 96);
      v46 = *(v0 + 16840);
      *(v0 + 15920) = *(v0 + 16824);
      *(v0 + 15936) = v46;
      v47 = *(v0 + 16872);
      *(v0 + 15952) = *(v0 + 16856);
      *(v0 + 15968) = v47;
      v48 = *(v0 + 16808);
      *(v0 + 15888) = *(v0 + 16792);
      *(v0 + 15904) = v48;
      v49 = *(v0 + 14584);
      *(v0 + 13424) = *(v0 + 14568);
      *(v0 + 13440) = v49;
      v50 = *(v0 + 14616);
      *(v0 + 13456) = *(v0 + 14600);
      *(v0 + 13472) = v50;
      v51 = *(v0 + 14536);
      *(v0 + 13408) = *(v0 + 14552);
      *(v0 + 15984) = 4;
      *(v0 + 13488) = *(v0 + 14632);
      *(v0 + 13392) = v51;
      v66[0] = v64;
      v66[1] = v18;
      v66[2] = v13;
      v67 = v14;
      v52 = v43 + direct field offset for MLS.SwiftMLSClientCoordinator.selfMember;
      v54 = *(v52 + 8);
      v55 = *(v52 + 16);
      v56 = *(v52 + 24);
      *v68 = *v52;
      v53 = *v68;
      *&v68[8] = v54;
      *&v68[16] = v55;
      v69 = v56;

      outlined copy of MLS.AllMember(v53, v54);
      v57 = specialized static MLS.AllMember.== infix(_:_:)(v66, v68);
      outlined consume of MLS.AllMember(*v68, *&v68[8]);
      v65 = (*(*v45 + 384) + **(*v45 + 384));
      v58 = swift_task_alloc();
      *(v0 + 22616) = v58;
      *v58 = v0;
      v58[1] = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);

      return v65(v0 + 15888, v0 + 13392, 1, v57);
    }

    (*(*(v0 + 21264) + 8))(*(v0 + 21288), *(v0 + 21256));
    (*(v5 + 8))(v4, v6);
  }

  else
  {
    (*(*(v0 + 21264) + 8))(*(v0 + 21288), *(v0 + 21256));
  }

  v38 = *(v0 + 8);

  return v38();
}

{
  v70 = v0;
  (*(*(v0 + 21088) + 8))(*(v0 + 21112), *(v0 + 21080));
  v1 = *(v0 + 21744);
  *(v0 + 22584) = v1;
  *(v0 + 20688) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if (swift_dynamicCast())
  {
    v3 = (*(*(v0 + 20832) + 88))(*(v0 + 20840), *(v0 + 20824));
    v4 = *(v0 + 20840);
    v5 = *(v0 + 20832);
    v6 = *(v0 + 20824);
    if (v3 == *MEMORY[0x277D6AD10])
    {
      v62 = *(v0 + 21304);
      v63 = *(v0 + 21312);
      v7 = *(v0 + 20816);
      v8 = *(v0 + 20768);
      v9 = *(v0 + 20760);
      v61 = *(v0 + 20752);
      (*(v5 + 96))(v4, v6);
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8SwiftMLS0B0O5GroupO6MemberVSg9committer_AH8proposertMd, &_s8SwiftMLS0B0O5GroupO6MemberVSg9committer_AH8proposertMR);
      outlined init with take of MLS.Group.Member?(v4 + *(v10 + 48), v7, &_s8SwiftMLS0B0O5GroupO6MemberVSgMd, &_s8SwiftMLS0B0O5GroupO6MemberVSgMR);
      closure #1 in closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:)(v7, v9, v8, v61, v68);
      v12 = *v68;
      v11 = *&v68[8];
      *(v0 + 22592) = *v68;
      *(v0 + 22600) = v11;
      v13 = *&v68[16];
      *(v0 + 22608) = *&v68[16];
      v14 = v69;
      *(v0 + 15673) = v69;
      *(v0 + 20064) = *(v8 + 16);
      *&v68[7] = *(v8 + 16);
      *(v0 + 17560) = v62;
      *(v0 + 17568) = v63;
      *(v0 + 17576) = v12;
      *(v0 + 17584) = v11;
      *(v0 + 17592) = v13;
      *(v0 + 17600) = v14;
      *(v0 + 17601) = *v68;
      *(v0 + 17616) = *&v68[15];
      v15 = *(v0 + 17576);
      *(v0 + 16792) = *(v0 + 17560);
      *(v0 + 16808) = v15;
      v16 = *(v0 + 17608);
      *(v0 + 16824) = *(v0 + 17592);
      *(v0 + 16840) = v16;
      outlined copy of MLS.AllMember(v12, v11);
      outlined init with copy of MLS.OutgoingEventState?(v8, v0 + 1360, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);

      outlined copy of MLS.AllMember(v12, v11);
      outlined init with copy of MLS.OutgoingEventState?(v0 + 20064, v0 + 20544, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
      outlined init with copy of MLS.OutgoingEventState?(v8, v0 + 1696, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);

      v64 = v12;
      v17 = v12;
      v18 = v11;
      outlined copy of MLS.AllMember(v17, v11);
      outlined init with copy of MLS.OutgoingEventState?(v0 + 20064, v0 + 20528, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v19, v20))
      {
        v59 = v20;
        v21 = *(v0 + 21312);
        v22 = *(v0 + 21304);
        v23 = *(v0 + 20768);
        v24 = *(v0 + 20760);
        v25 = swift_slowAlloc();
        v60 = swift_slowAlloc();
        v66[0] = v60;
        *v25 = 136315650;

        v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v21, v66);

        *(v25 + 4) = v26;
        outlined destroy of NSObject?(v23, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
        outlined destroy of NSObject?(v23, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
        *(v25 + 12) = 2080;
        *v68 = v64;
        *&v68[8] = v18;
        *&v68[16] = v13;
        v69 = v14;
        outlined copy of MLS.AllMember(v64, v18);
        v27 = MLS.AllMember.description.getter();
        v29 = v28;
        outlined consume of MLS.AllMember(*v68, *&v68[8]);
        v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v29, v66);

        *(v25 + 14) = v30;
        outlined consume of MLS.AllMember(v64, v18);
        outlined consume of MLS.AllMember(v64, v18);
        *(v25 + 22) = 2080;
        v31 = *(v24 + direct field offset for MLS.SwiftMLSClientCoordinator.selfMember + 8);
        v32 = *(v24 + direct field offset for MLS.SwiftMLSClientCoordinator.selfMember + 16);
        v33 = *(v24 + direct field offset for MLS.SwiftMLSClientCoordinator.selfMember + 24);
        *v68 = *(v24 + direct field offset for MLS.SwiftMLSClientCoordinator.selfMember);
        *&v68[8] = v31;
        *&v68[16] = v32;
        v69 = v33;
        outlined copy of MLS.AllMember(*v68, v31);
        v34 = MLS.AllMember.description.getter();
        v36 = v35;
        outlined consume of MLS.AllMember(*v68, *&v68[8]);
        v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v36, v66);

        *(v25 + 24) = v37;

        _os_log_impl(&dword_264F1F000, v19, v59, "SwiftMLSClientCoordinator processIncoming received removedFromGroup error. Delivering self kicked event { identifier: %s, sender: %s, selfMember: %s }", v25, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x266755550](v60, -1, -1);
        MEMORY[0x266755550](v25, -1, -1);
      }

      else
      {
        v40 = *(v0 + 20768);

        outlined destroy of NSObject?(v40, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
        outlined destroy of NSObject?(v40, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
        outlined consume of MLS.AllMember(v64, v11);
        outlined consume of MLS.AllMember(v64, v11);
      }

      v41 = *(v0 + 21664);
      v42 = *(v0 + 20792);
      v43 = *(v0 + 20760);
      if ((v41 & 0x100000000) != 0)
      {
        v41 = 1;
      }

      else
      {
        v41 = v41;
      }

      v44 = *(v0 + 21640) + 1;
      *(v0 + 14536) = *(v0 + 20784);
      *(v0 + 14544) = v42;
      *(v0 + 14552) = v41;
      *(v0 + 14560) = v41;
      *(v0 + 14568) = v44;
      *(v0 + 14576) = xmmword_2651B68A0;
      *(v0 + 14592) = xmmword_2651B68A0;
      *(v0 + 14608) = xmmword_2651B68A0;
      *(v0 + 14624) = xmmword_2651B5F50;
      v45 = *(v43 + 96);
      v46 = *(v0 + 16840);
      *(v0 + 15920) = *(v0 + 16824);
      *(v0 + 15936) = v46;
      v47 = *(v0 + 16872);
      *(v0 + 15952) = *(v0 + 16856);
      *(v0 + 15968) = v47;
      v48 = *(v0 + 16808);
      *(v0 + 15888) = *(v0 + 16792);
      *(v0 + 15904) = v48;
      v49 = *(v0 + 14584);
      *(v0 + 13424) = *(v0 + 14568);
      *(v0 + 13440) = v49;
      v50 = *(v0 + 14616);
      *(v0 + 13456) = *(v0 + 14600);
      *(v0 + 13472) = v50;
      v51 = *(v0 + 14536);
      *(v0 + 13408) = *(v0 + 14552);
      *(v0 + 15984) = 4;
      *(v0 + 13488) = *(v0 + 14632);
      *(v0 + 13392) = v51;
      v66[0] = v64;
      v66[1] = v18;
      v66[2] = v13;
      v67 = v14;
      v52 = v43 + direct field offset for MLS.SwiftMLSClientCoordinator.selfMember;
      v54 = *(v52 + 8);
      v55 = *(v52 + 16);
      v56 = *(v52 + 24);
      *v68 = *v52;
      v53 = *v68;
      *&v68[8] = v54;
      *&v68[16] = v55;
      v69 = v56;

      outlined copy of MLS.AllMember(v53, v54);
      v57 = specialized static MLS.AllMember.== infix(_:_:)(v66, v68);
      outlined consume of MLS.AllMember(*v68, *&v68[8]);
      v65 = (*(*v45 + 384) + **(*v45 + 384));
      v58 = swift_task_alloc();
      *(v0 + 22616) = v58;
      *v58 = v0;
      v58[1] = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);

      return v65(v0 + 15888, v0 + 13392, 1, v57);
    }

    (*(*(v0 + 21264) + 8))(*(v0 + 21288), *(v0 + 21256));
    (*(v5 + 8))(v4, v6);
  }

  else
  {
    (*(*(v0 + 21264) + 8))(*(v0 + 21288), *(v0 + 21256));
  }

  v38 = *(v0 + 8);

  return v38();
}

{
  v1 = *(v0 + 21288);
  v2 = *(v0 + 21264);
  v3 = *(v0 + 21256);
  v4 = *(v0 + 20840);
  outlined destroy of NSObject?(*(v0 + 20816), &_s8SwiftMLS0B0O5GroupO6MemberVSgMd, &_s8SwiftMLS0B0O5GroupO6MemberVSgMR);
  (*(v2 + 8))(v1, v3);
  outlined destroy of MLS.Group(v0 + 14536);
  outlined destroy of NSObject?(v0 + 17560, &_s15SecureMessaging3MLSO18IncomingSelfKickedVy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO18IncomingSelfKickedVy_AC9AllMemberO10Foundation4DataVGMR);
  outlined destroy of NSObject?(v4, &_s8SwiftMLS0B0O5GroupO6MemberVSgMd, &_s8SwiftMLS0B0O5GroupO6MemberVSgMR);

  v5 = *(v0 + 8);

  return v5();
}

{
  v1 = *(v0 + 21288);
  v2 = *(v0 + 21264);
  v3 = *(v0 + 21256);
  v4 = *(v0 + 20840);
  v5 = *(v0 + 20816);
  outlined destroy of NSObject?(v0 + 17560, &_s15SecureMessaging3MLSO18IncomingSelfKickedVy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO18IncomingSelfKickedVy_AC9AllMemberO10Foundation4DataVGMR);
  outlined destroy of MLS.Group(v0 + 14536);
  outlined destroy of NSObject?(v5, &_s8SwiftMLS0B0O5GroupO6MemberVSgMd, &_s8SwiftMLS0B0O5GroupO6MemberVSgMR);
  (*(v2 + 8))(v1, v3);
  outlined destroy of NSObject?(v4, &_s8SwiftMLS0B0O5GroupO6MemberVSgMd, &_s8SwiftMLS0B0O5GroupO6MemberVSgMR);

  v6 = *(v0 + 8);

  return v6();
}

{
  v1 = v0[2720];
  v2 = v0[2661];
  v3 = v0[2658];
  v4 = v0[2657];
  v5 = v0[2649];
  v6 = v0[2644];
  v7 = v0[2640];
  outlined consume of Data._Representation(v0[2721], v0[2722]);
  v1(v5, v7);
  (*(v3 + 8))(v2, v4);
  outlined destroy of NSObject?(v6, &_s8SwiftMLS0B0O8IdentityO07SigningC0VSgMd, &_s8SwiftMLS0B0O8IdentityO07SigningC0VSgMR);

  v8 = v0[1];

  return v8();
}

{
  v1 = v0[2720];
  v2 = v0[2661];
  v3 = v0[2658];
  v4 = v0[2657];
  v5 = v0[2649];
  v6 = v0[2640];
  (*(v0[2628] + 8))(v0[2631], v0[2627]);
  v1(v5, v6);
  (*(v3 + 8))(v2, v4);

  v7 = v0[1];

  return v7();
}

{
  v1 = v0[2720];
  v2 = v0[2661];
  v3 = v0[2658];
  v4 = v0[2657];
  v5 = v0[2649];
  v6 = v0[2640];
  outlined destroy of NSObject?(v0[2626], &_s8SwiftMLS0B0O5GroupO11StateUpdateVSgMd, &_s8SwiftMLS0B0O5GroupO11StateUpdateVSgMR);
  v1(v5, v6);
  (*(v3 + 8))(v2, v4);

  v7 = v0[1];

  return v7();
}

{
  v1 = v0[2720];
  v2 = v0[2661];
  v3 = v0[2658];
  v4 = v0[2657];
  v5 = v0[2649];
  v6 = v0[2640];
  outlined destroy of NSObject?(v0[2626], &_s8SwiftMLS0B0O5GroupO11StateUpdateVSgMd, &_s8SwiftMLS0B0O5GroupO11StateUpdateVSgMR);
  v1(v5, v6);
  (*(v3 + 8))(v2, v4);
  outlined destroy of MLS.Group((v0 + 1414));
  outlined destroy of NSObject?((v0 + 2211), &_s15SecureMessaging3MLSO28IncomingDowngradeRecommendedVy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO28IncomingDowngradeRecommendedVy_AC9AllMemberO10Foundation4DataVGMR);

  v7 = v0[1];

  return v7();
}

{
  v1 = v0[2720];
  v2 = v0[2661];
  v3 = v0[2658];
  v4 = v0[2657];
  v5 = v0[2649];
  v6 = v0[2640];
  outlined destroy of NSObject?(v0[2626], &_s8SwiftMLS0B0O5GroupO11StateUpdateVSgMd, &_s8SwiftMLS0B0O5GroupO11StateUpdateVSgMR);
  v1(v5, v6);
  (*(v3 + 8))(v2, v4);
  outlined destroy of NSObject?((v0 + 2227), &_s15SecureMessaging3MLSO18IncomingSelfKickedVy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO18IncomingSelfKickedVy_AC9AllMemberO10Foundation4DataVGMR);

  v7 = v0[1];

  return v7();
}

{
  v1 = v0[2720];
  v2 = v0[2661];
  v3 = v0[2658];
  v4 = v0[2657];
  v5 = v0[2649];
  v6 = v0[2640];
  outlined destroy of NSObject?(v0[2626], &_s8SwiftMLS0B0O5GroupO11StateUpdateVSgMd, &_s8SwiftMLS0B0O5GroupO11StateUpdateVSgMR);
  v1(v5, v6);
  (*(v3 + 8))(v2, v4);
  outlined destroy of NSObject?((v0 + 2227), &_s15SecureMessaging3MLSO18IncomingSelfKickedVy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO18IncomingSelfKickedVy_AC9AllMemberO10Foundation4DataVGMR);

  v7 = v0[1];

  return v7();
}

{
  v1 = v0[2720];
  v2 = v0[2661];
  v3 = v0[2658];
  v4 = v0[2657];
  v5 = v0[2649];
  v6 = v0[2640];
  outlined destroy of NSObject?(v0[2626], &_s8SwiftMLS0B0O5GroupO11StateUpdateVSgMd, &_s8SwiftMLS0B0O5GroupO11StateUpdateVSgMR);
  v1(v5, v6);
  (*(v3 + 8))(v2, v4);
  outlined destroy of NSObject?((v0 + 2203), &_s15SecureMessaging3MLSO28IncomingInternalStateUpdatedVy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO28IncomingInternalStateUpdatedVy_AC9AllMemberO10Foundation4DataVGMR);

  v7 = v0[1];

  return v7();
}

{
  v1 = v0[2720];
  v2 = v0[2661];
  v3 = v0[2658];
  v4 = v0[2657];
  v5 = v0[2649];
  v6 = v0[2640];
  outlined destroy of NSObject?(v0[2626], &_s8SwiftMLS0B0O5GroupO11StateUpdateVSgMd, &_s8SwiftMLS0B0O5GroupO11StateUpdateVSgMR);
  v1(v5, v6);
  (*(v3 + 8))(v2, v4);
  outlined destroy of NSObject?((v0 + 2203), &_s15SecureMessaging3MLSO28IncomingInternalStateUpdatedVy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO28IncomingInternalStateUpdatedVy_AC9AllMemberO10Foundation4DataVGMR);

  v7 = v0[1];

  return v7();
}

{
  v1 = v0[2720];
  v2 = v0[2661];
  v3 = v0[2658];
  v4 = v0[2657];
  v5 = v0[2649];
  v6 = v0[2640];
  outlined destroy of NSObject?(v0[2626], &_s8SwiftMLS0B0O5GroupO11StateUpdateVSgMd, &_s8SwiftMLS0B0O5GroupO11StateUpdateVSgMR);
  v1(v5, v6);
  (*(v3 + 8))(v2, v4);
  outlined destroy of NSObject?((v0 + 2177), &_s15SecureMessaging3MLSO19IncomingMemberAddedVy_AC03AllE0O10Foundation4DataVGMd, &_s15SecureMessaging3MLSO19IncomingMemberAddedVy_AC03AllE0O10Foundation4DataVGMR);

  v7 = v0[1];

  return v7();
}

{
  v1 = v0[2720];
  v2 = v0[2661];
  v3 = v0[2658];
  v4 = v0[2657];
  v5 = v0[2649];
  v6 = v0[2640];
  outlined destroy of NSObject?(v0[2626], &_s8SwiftMLS0B0O5GroupO11StateUpdateVSgMd, &_s8SwiftMLS0B0O5GroupO11StateUpdateVSgMR);
  v1(v5, v6);
  (*(v3 + 8))(v2, v4);
  outlined destroy of NSObject?((v0 + 2177), &_s15SecureMessaging3MLSO19IncomingMemberAddedVy_AC03AllE0O10Foundation4DataVGMd, &_s15SecureMessaging3MLSO19IncomingMemberAddedVy_AC03AllE0O10Foundation4DataVGMR);

  v7 = v0[1];

  return v7();
}

{
  v1 = v0[2720];
  v2 = v0[2661];
  v3 = v0[2658];
  v4 = v0[2657];
  v5 = v0[2649];
  v6 = v0[2640];
  v7 = v0[2626];
  outlined destroy of NSObject?((v0 + 2177), &_s15SecureMessaging3MLSO19IncomingMemberAddedVy_AC03AllE0O10Foundation4DataVGMd, &_s15SecureMessaging3MLSO19IncomingMemberAddedVy_AC03AllE0O10Foundation4DataVGMR);
  outlined destroy of NSObject?(v7, &_s8SwiftMLS0B0O5GroupO11StateUpdateVSgMd, &_s8SwiftMLS0B0O5GroupO11StateUpdateVSgMR);
  v1(v5, v6);
  (*(v3 + 8))(v2, v4);

  v8 = v0[1];

  return v8();
}

{
  v1 = v0[2720];
  v2 = v0[2661];
  v3 = v0[2658];
  v4 = v0[2657];
  v5 = v0[2649];
  v6 = v0[2640];
  outlined destroy of NSObject?(v0[2626], &_s8SwiftMLS0B0O5GroupO11StateUpdateVSgMd, &_s8SwiftMLS0B0O5GroupO11StateUpdateVSgMR);
  v1(v5, v6);
  (*(v3 + 8))(v2, v4);
  outlined destroy of NSObject?((v0 + 2186), &_s15SecureMessaging3MLSO20IncomingMemberKickedVy_AC03AllE0O10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20IncomingMemberKickedVy_AC03AllE0O10Foundation4DataVGMR);

  v7 = v0[1];

  return v7();
}

{
  v1 = v0[2720];
  v2 = v0[2661];
  v3 = v0[2658];
  v4 = v0[2657];
  v5 = v0[2649];
  v6 = v0[2640];
  outlined destroy of NSObject?(v0[2626], &_s8SwiftMLS0B0O5GroupO11StateUpdateVSgMd, &_s8SwiftMLS0B0O5GroupO11StateUpdateVSgMR);
  v1(v5, v6);
  (*(v3 + 8))(v2, v4);
  outlined destroy of NSObject?((v0 + 2186), &_s15SecureMessaging3MLSO20IncomingMemberKickedVy_AC03AllE0O10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20IncomingMemberKickedVy_AC03AllE0O10Foundation4DataVGMR);

  v7 = v0[1];

  return v7();
}

{
  v1 = v0[2720];
  v2 = v0[2661];
  v3 = v0[2658];
  v4 = v0[2657];
  v5 = v0[2649];
  v6 = v0[2640];
  v7 = v0[2626];
  outlined destroy of NSObject?((v0 + 2186), &_s15SecureMessaging3MLSO20IncomingMemberKickedVy_AC03AllE0O10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20IncomingMemberKickedVy_AC03AllE0O10Foundation4DataVGMR);
  outlined destroy of NSObject?(v7, &_s8SwiftMLS0B0O5GroupO11StateUpdateVSgMd, &_s8SwiftMLS0B0O5GroupO11StateUpdateVSgMR);
  v1(v5, v6);
  (*(v3 + 8))(v2, v4);

  v8 = v0[1];

  return v8();
}

{
  v1 = v0[2719];
  v12 = v0[2661];
  v2 = v0[2658];
  v10 = v0[2720];
  v11 = v0[2657];
  v3 = v0[2649];
  v4 = v0[2640];
  v5 = v0[2638];
  v6 = v0[2635];
  v7 = v0[2626];
  outlined consume of Data?(v0[2769], v0[2770]);
  v1(v5, v6);
  outlined destroy of NSObject?(v7, &_s8SwiftMLS0B0O5GroupO11StateUpdateVSgMd, &_s8SwiftMLS0B0O5GroupO11StateUpdateVSgMR);
  v10(v3, v4);
  (*(v2 + 8))(v12, v11);

  v8 = v0[1];

  return v8();
}

{
  v1 = v0[2720];
  v2 = v0[2661];
  v3 = v0[2658];
  v4 = v0[2657];
  v5 = v0[2649];
  v6 = v0[2640];
  outlined destroy of NSObject?(v0[2626], &_s8SwiftMLS0B0O5GroupO11StateUpdateVSgMd, &_s8SwiftMLS0B0O5GroupO11StateUpdateVSgMR);
  v1(v5, v6);
  (*(v3 + 8))(v2, v4);

  v7 = v0[1];

  return v7();
}

{
  v1 = *(v0 + 21288);
  v2 = *(v0 + 21264);
  v3 = *(v0 + 21256);
  (*(v0 + 21760))(*(v0 + 21192), *(v0 + 21120));
  (*(v2 + 8))(v1, v3);

  v4 = *(v0 + 8);

  return v4();
}

{
  v1 = v0[2661];
  v2 = v0[2658];
  v3 = v0[2657];
  v4 = v0[2649];
  v5 = v0[2641];
  v6 = v0[2640];
  (*(v0[2610] + 8))(v0[2615], v0[2609]);
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);

  v7 = v0[1];

  return v7();
}

{
  v1 = v0[2661];
  v2 = v0[2658];
  v3 = v0[2657];
  v4 = v0[2649];
  v5 = v0[2641];
  v6 = v0[2640];
  (*(v0[2610] + 8))(v0[2615], v0[2609]);
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);

  v7 = v0[1];

  return v7();
}

{
  v1 = v0[2720];
  v2 = v0[2661];
  v3 = v0[2658];
  v4 = v0[2657];
  v5 = v0[2649];
  v6 = v0[2640];
  v11 = v0[2608];
  v7 = v0[2607];
  v8 = v0[2606];
  outlined destroy of NSObject?((v0 + 2267), &_s15SecureMessaging3MLSO12SigningInputVSgMd, &_s15SecureMessaging3MLSO12SigningInputVSgMR);
  v1(v5, v6);
  (*(v3 + 8))(v2, v4);
  outlined destroy of NSObject?((v0 + 2235), &_s15SecureMessaging3MLSO36IncomingApplicationSignatureVerifiedVy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO36IncomingApplicationSignatureVerifiedVy_AC9AllMemberO10Foundation4DataVGMR);
  (*(v7 + 8))(v11, v8);

  v9 = v0[1];

  return v9();
}

{
  v1 = v0[2720];
  v2 = v0[2661];
  v3 = v0[2658];
  v4 = v0[2657];
  v5 = v0[2649];
  v6 = v0[2640];
  v11 = v0[2608];
  v7 = v0[2607];
  v8 = v0[2606];
  outlined destroy of NSObject?((v0 + 2267), &_s15SecureMessaging3MLSO12SigningInputVSgMd, &_s15SecureMessaging3MLSO12SigningInputVSgMR);
  v1(v5, v6);
  (*(v3 + 8))(v2, v4);
  outlined destroy of NSObject?((v0 + 2235), &_s15SecureMessaging3MLSO36IncomingApplicationSignatureVerifiedVy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO36IncomingApplicationSignatureVerifiedVy_AC9AllMemberO10Foundation4DataVGMR);
  (*(v7 + 8))(v11, v8);

  v9 = v0[1];

  return v9();
}

{
  v1 = v0[2720];
  v2 = v0[2661];
  v3 = v0[2658];
  v4 = v0[2657];
  v5 = v0[2649];
  v6 = v0[2640];
  v11 = v0[2608];
  v7 = v0[2607];
  v8 = v0[2606];
  outlined destroy of NSObject?((v0 + 2235), &_s15SecureMessaging3MLSO36IncomingApplicationSignatureVerifiedVy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO36IncomingApplicationSignatureVerifiedVy_AC9AllMemberO10Foundation4DataVGMR);
  outlined destroy of NSObject?((v0 + 2267), &_s15SecureMessaging3MLSO12SigningInputVSgMd, &_s15SecureMessaging3MLSO12SigningInputVSgMR);
  v1(v5, v6);
  (*(v3 + 8))(v2, v4);
  (*(v7 + 8))(v11, v8);

  v9 = v0[1];

  return v9();
}

{
  v1 = v0[2661];
  v2 = v0[2658];
  v3 = v0[2657];
  (*(v0[2641] + 8))(v0[2649], v0[2640]);
  (*(v2 + 8))(v1, v3);
  outlined destroy of NSObject?((v0 + 2251), &_s15SecureMessaging3MLSO28IncomingInternalStateUpdatedVy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO28IncomingInternalStateUpdatedVy_AC9AllMemberO10Foundation4DataVGMR);

  v4 = v0[1];

  return v4();
}

{
  v1 = v0[2661];
  v2 = v0[2658];
  v3 = v0[2657];
  v4 = v0[2649];
  v5 = v0[2641];
  v6 = v0[2640];
  outlined destroy of NSObject?((v0 + 2251), &_s15SecureMessaging3MLSO28IncomingInternalStateUpdatedVy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO28IncomingInternalStateUpdatedVy_AC9AllMemberO10Foundation4DataVGMR);
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);

  v7 = v0[1];

  return v7();
}