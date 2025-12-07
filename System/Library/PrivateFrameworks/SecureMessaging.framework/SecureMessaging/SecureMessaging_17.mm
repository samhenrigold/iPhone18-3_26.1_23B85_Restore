uint64_t closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:)(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 21400) = v1;

  if (v1)
  {

    v5 = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
  }

  else
  {
    *(v4 + 21408) = a1;
    v5 = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

{
  *(*v1 + 21424) = a1;

  return MEMORY[0x2822009F8](closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:), 0, 0);
}

{
  v2 = v1[2654];
  v3 = v1[2652];
  v4 = v1[2651];
  v1[2681] = MLS.Group.GroupInfo.rawRepresentation.getter();
  v1[2682] = v5;
  (*(v3 + 8))(v2, v4);
  v6 = v1[2331];
  v7 = v1[2332];
  __swift_project_boxed_opaque_existential_1(v1 + 2328, v6);
  v10 = (*(v7 + 56) + **(v7 + 56));
  v8 = swift_task_alloc();
  v1[2683] = v8;
  *v8 = v1;
  v8[1] = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);

  return v10(v6, v7);
}

{
  v2 = *(*v1 + 21296);
  *(*v1 + 21640) = a1;

  return MEMORY[0x2822009F8](closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:), v2, 0);
}

{
  v4 = *v2;
  v4[2707] = v1;

  v5 = v4[2662];
  if (v1)
  {
    v6 = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
  }

  else
  {
    v4[2708] = a1;
    v6 = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 21712) = a1;
  *(v4 + 21720) = v1;

  v5 = *(v3 + 21296);
  if (v1)
  {
    v6 = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
  }

  else
  {
    v6 = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 21736) = a1;
  *(v4 + 21744) = v1;

  v5 = *(v3 + 21296);
  if (v1)
  {
    v6 = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
  }

  else
  {
    v6 = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

{
  v4 = *v2;
  *(*v2 + 22392) = v1;

  if (v1)
  {

    v5 = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
  }

  else
  {
    *(v4 + 22400) = a1;
    v5 = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

{
  *(*v1 + 22416) = a1;

  return MEMORY[0x2822009F8](closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:), 0, 0);
}

{
  v2 = v1[2653];
  v3 = v1[2652];
  v4 = v1[2651];
  v1[2805] = MLS.Group.GroupInfo.rawRepresentation.getter();
  v1[2806] = v5;
  (*(v3 + 8))(v2, v4);
  v6 = v1[2376];
  v7 = v1[2377];
  __swift_project_boxed_opaque_existential_1(v1 + 2373, v6);
  v10 = (*(v7 + 56) + **(v7 + 56));
  v8 = swift_task_alloc();
  v1[2807] = v8;
  *v8 = v1;
  v8[1] = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);

  return v10(v6, v7);
}

void closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:)()
{
  if ((v0[2678] & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v1 = v0[2331];
    v2 = v0[2332];
    __swift_project_boxed_opaque_existential_1(v0 + 2328, v1);
    v5 = (*(v2 + 80) + **(v2 + 80));
    v3 = swift_task_alloc();
    v0[2679] = v3;
    *v3 = v0;
    v3[1] = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
    v4 = v0[2654];

    v5(v4, v1, v2);
  }
}

{
  if ((v0[2705] & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v1 = v0[2597];
    v2 = v1[3];
    v3 = v1[4];
    __swift_project_boxed_opaque_existential_1(v1, v2);
    v5 = (*(v3 + 32) + **(v3 + 32));
    v4 = swift_task_alloc();
    v0[2706] = v4;
    *v4 = v0;
    v4[1] = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);

    v5(v2, v3);
  }
}

{
  if ((v0[2802] & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v1 = v0[2376];
    v2 = v0[2377];
    __swift_project_boxed_opaque_existential_1(v0 + 2373, v1);
    v5 = (*(v2 + 80) + **(v2 + 80));
    v3 = swift_task_alloc();
    v0[2803] = v3;
    *v3 = v0;
    v3[1] = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
    v4 = v0[2653];

    v5(v4, v1, v2);
  }
}

uint64_t closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:)(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 21472) = a1;
  *(v3 + 21480) = a2;

  return MEMORY[0x2822009F8](closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:), 0, 0);
}

{
  v6 = *v3;
  v6[2687] = v2;

  if (v2)
  {

    return MEMORY[0x2822009F8](closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:), 0, 0);
  }

  else
  {
    v7 = v6[2673];
    v8 = v6[2672];
    v16 = v6[2671];
    v6[2688] = a2;
    v6[2689] = a1;
    ObjectType = swift_getObjectType();
    v6[2580] = v8;
    v6[2581] = v7;
    v15 = (*(v16 + 64) + **(v16 + 64));
    v10 = swift_task_alloc();
    v6[2690] = v10;
    *v10 = v6;
    v10[1] = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
    v11 = v6[2671];
    v12 = v6[2599];
    v13 = v6[2598];

    return v15(v13, v12, v6 + 2580, ObjectType, v11);
  }
}

{
  v6 = *v3;
  *(*v3 + 21528) = v2;

  if (v2)
  {

    v7 = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
  }

  else
  {
    *(v6 + 21536) = a2;
    *(v6 + 21544) = a1;

    v7 = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

{
  v3 = *v2;
  *(v3 + 22464) = a1;
  *(v3 + 22472) = a2;

  return MEMORY[0x2822009F8](closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:), 0, 0);
}

{
  v6 = *v3;
  v6[2811] = v2;

  if (v2)
  {

    return MEMORY[0x2822009F8](closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:), 0, 0);
  }

  else
  {
    v7 = v6[2797];
    v8 = v6[2796];
    v16 = v6[2794];
    v6[2812] = a2;
    v6[2813] = a1;
    ObjectType = swift_getObjectType();
    v6[2558] = v8;
    v6[2559] = v7;
    v15 = (*(v16 + 64) + **(v16 + 64));
    v10 = swift_task_alloc();
    v6[2814] = v10;
    *v10 = v6;
    v10[1] = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
    v11 = v6[2794];
    v12 = v6[2599];
    v13 = v6[2598];

    return v15(v13, v12, v6 + 2558, ObjectType, v11);
  }
}

{
  v6 = *v3;
  *(*v3 + 22520) = v2;

  if (v2)
  {

    v7 = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
  }

  else
  {
    *(v6 + 22528) = a2;
    *(v6 + 22536) = a1;

    v7 = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:)(char a1)
{
  v4 = *v2;
  *(v4 + 21872) = v1;

  v5 = *(v4 + 21296);
  if (v1)
  {
    v6 = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
  }

  else
  {
    *(v4 + 15571) = a1 & 1;
    v6 = closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t closure #1 in closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X8>)
{
  v66 = a4;
  v67 = a3;
  v68 = a5;
  v65 = type metadata accessor for MLS.Identity.SigningIdentity();
  isa = v65[-1].isa;
  MEMORY[0x28223BE20](v65);
  v9 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8SwiftMLS0B0O5GroupO6MemberVSgMd, &_s8SwiftMLS0B0O5GroupO6MemberVSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v59 - v11;
  v13 = type metadata accessor for MLS.Group.Member();
  MEMORY[0x28223BE20](v13);
  v15 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1;
  v18 = v17;
  outlined init with copy of MLS.OutgoingEventState?(v16, v12, &_s8SwiftMLS0B0O5GroupO6MemberVSgMd, &_s8SwiftMLS0B0O5GroupO6MemberVSgMR);
  if ((*(v18 + 48))(v12, 1, v13) == 1)
  {
    outlined destroy of NSObject?(v12, &_s8SwiftMLS0B0O5GroupO6MemberVSgMd, &_s8SwiftMLS0B0O5GroupO6MemberVSgMR);
    v19 = v66;
    v20 = v67;
LABEL_5:
    outlined init with copy of MLS.OutgoingEventState?(v20, v71, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    outlined init with copy of MLS.OutgoingEventState?(v19, v71, &_s15SecureMessaging3MLSO15IncomingMessageVy_AC9AllMemberOGMd, &_s15SecureMessaging3MLSO15IncomingMessageVy_AC9AllMemberOGMR);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.default.getter();
    outlined destroy of NSObject?(v20, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    outlined destroy of NSObject?(v19, &_s15SecureMessaging3MLSO15IncomingMessageVy_AC9AllMemberOGMd, &_s15SecureMessaging3MLSO15IncomingMessageVy_AC9AllMemberOGMR);
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v69 = v32;
      *v31 = 136315394;
      *(v31 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*v20, *(v20 + 8), &v69);
      *(v31 + 12) = 2080;
      *v71 = *(v19 + 32);
      *&v71[9] = *(v19 + 41);
      *v72 = *(v19 + 32);
      *&v72[9] = *(v19 + 41);
      outlined init with copy of MLS.AllMember(v71, v70);
      v33 = MLS.AllMember.description.getter();
      v35 = v34;
      outlined consume of MLS.AllMember(*v72, *&v72[8]);
      v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v35, &v69);

      *(v31 + 14) = v36;
      _os_log_impl(&dword_264F1F000, v29, v30, "SwiftMLSClientCoordinator processIncoming failed to find member for proposer after removedFromGroup error. Returning message sender { identifier: %s, sender: %s }", v31, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266755550](v32, -1, -1);
      MEMORY[0x266755550](v31, -1, -1);
    }

    *v72 = *(v19 + 32);
    v37 = *v72;
    *&v72[9] = *(v19 + 41);
    v38 = *&v72[9];
    v39 = v68;
    *v68 = v37;
    *(v39 + 9) = v38;
    return outlined init with copy of MLS.AllMember(v72, v70);
  }

  v63 = v18;
  v64 = v13;
  (*(v18 + 32))(v15, v12, v13);
  v21 = a2[16];
  v59 = a2[17];
  v60 = v21;
  v61 = a2;
  __swift_project_boxed_opaque_existential_1(a2 + 13, v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy8SwiftMLS0E0O8IdentityO10CredentialOGMd, &_ss23_ContiguousArrayStorageCy8SwiftMLS0E0O8IdentityO10CredentialOGMR);
  v22 = type metadata accessor for MLS.Identity.Credential();
  v23 = *(v22 - 8);
  v24 = (*(v23 + 80) + 32) & ~*(v23 + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_2651D82E0;
  v62 = v15;
  MLS.Group.Member.identity.getter();
  MLS.Identity.SigningIdentity.credential.getter();
  (*(isa + 1))(v9, v65);
  v26 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC8SwiftMLS0F0O8IdentityO10CredentialO_Tt0g5Tf4g_n(v25);
  swift_setDeallocating();
  (*(v23 + 8))(v25 + v24, v22);
  swift_deallocClassInstance();
  v27 = (*(v59 + 8))(v26, v60);

  specialized Collection.first.getter(v27, v71);

  v28 = v71[24];
  v19 = v66;
  v20 = v67;
  if (v71[24] >= 0xFEu)
  {
    (*(v63 + 8))(v62, v64);
    goto LABEL_5;
  }

  v41 = *v71;
  v42 = *&v71[8];
  v43 = *&v71[16];
  outlined init with copy of MLS.OutgoingEventState?(v67, v71, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
  outlined copy of MLS.AllMember?(v41, v42, v43, v28);
  v44 = Logger.logObject.getter();
  v45 = static os_log_type_t.default.getter();
  outlined destroy of NSObject?(v20, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
  outlined consume of MLS.AllMember?(v41, v42, v43, v28);
  LODWORD(v66) = v45;
  v46 = os_log_type_enabled(v44, v45);
  v47 = v64;
  v48 = v62;
  if (v46)
  {
    v49 = swift_slowAlloc();
    v65 = v44;
    v50 = v20;
    v51 = v49;
    v52 = swift_slowAlloc();
    *v72 = v52;
    *v51 = 136315394;
    *(v51 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*v50, *(v50 + 8), v72);
    *(v51 + 12) = 2080;
    *v71 = v41;
    *&v71[8] = v42;
    *&v71[16] = v43;
    v71[24] = v28;
    outlined copy of MLS.AllMember(v41, v42);
    v53 = MLS.AllMember.description.getter();
    v55 = v54;
    outlined consume of MLS.AllMember(*v71, *&v71[8]);
    v56 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v53, v55, v72);

    *(v51 + 14) = v56;
    v57 = v65;
    _os_log_impl(&dword_264F1F000, v65, v66, "SwiftMLSClientCoordinator processIncoming found member for proposer after removedFromGroup error { identifier: %s, memberProposer: %s }", v51, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v52, -1, -1);
    MEMORY[0x266755550](v51, -1, -1);

    result = (*(v63 + 8))(v48, v64);
  }

  else
  {

    result = (*(v63 + 8))(v48, v47);
  }

  v58 = v68;
  *v68 = v41;
  *(v58 + 1) = v42;
  *(v58 + 2) = v43;
  *(v58 + 24) = v28;
  return result;
}

uint64_t specialized Set.contains(_:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  if (!*(a5 + 16))
  {
    return 0;
  }

  v5 = a5;
  Hasher.init(_seed:)();
  if ((a4 & 0x80) == 0)
  {
    MEMORY[0x266754DE0](0);
    String.hash(into:)();
    v10 = 0;
LABEL_8:
    MEMORY[0x266754DE0](v10);
    goto LABEL_9;
  }

  MEMORY[0x266754DE0](1);
  String.hash(into:)();
  MEMORY[0x266754DE0](0);
  if ((a4 & 1) == 0)
  {
    Hasher._combine(_:)(1u);
    v10 = a3;
    goto LABEL_8;
  }

  Hasher._combine(_:)(0);
LABEL_9:
  v12 = Hasher._finalize()();
  v13 = -1 << *(v5 + 32);
  v14 = v12 & ~v13;
  v26 = v5 + 56;
  if (((*(v5 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
  {
    return 0;
  }

  v24 = ~v13;
  v25 = v5;
  while (1)
  {
    v15 = *(v5 + 48) + 32 * v14;
    v17 = *v15;
    v16 = *(v15 + 8);
    v18 = *(v15 + 16);
    v19 = *(v15 + 24);
    if ((v19 & 0x80000000) == 0)
    {
      break;
    }

    if ((a4 & 0x80) == 0)
    {
      goto LABEL_12;
    }

    if (v17 == a1 && v16 == a2)
    {
      outlined copy of MLS.AllMember(a1, a2);
      outlined copy of MLS.AllMember(a1, a2);
      outlined consume of MLS.AllMember(a1, a2);
      outlined consume of MLS.AllMember(a1, a2);
      if (v19)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v23 = _stringCompareWithSmolCheck(_:_:expecting:)();
      outlined copy of MLS.AllMember(a1, a2);
      outlined copy of MLS.AllMember(v17, v16);
      outlined consume of MLS.AllMember(v17, v16);
      outlined consume of MLS.AllMember(a1, a2);
      if ((v23 & 1) == 0)
      {
        goto LABEL_13;
      }

      if (v19)
      {
LABEL_28:
        if (a4)
        {
          return 1;
        }

        goto LABEL_13;
      }
    }

    if ((a4 & 1) == 0 && v18 == a3)
    {
      return 1;
    }

LABEL_13:
    v5 = v25;
    v14 = (v14 + 1) & v24;
    if (((*(v26 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
    {
      return 0;
    }
  }

  if (a4 < 0)
  {
LABEL_12:
    outlined copy of MLS.AllMember(a1, a2);
    outlined copy of MLS.AllMember(v17, v16);
    outlined consume of MLS.AllMember(v17, v16);
    outlined consume of MLS.AllMember(a1, a2);
    goto LABEL_13;
  }

  if (v17 != a1 || v16 != a2)
  {
    v21 = _stringCompareWithSmolCheck(_:_:expecting:)();
    outlined copy of MLS.AllMember(a1, a2);
    outlined copy of MLS.AllMember(v17, v16);
    outlined consume of MLS.AllMember(v17, v16);
    outlined consume of MLS.AllMember(a1, a2);
    if (v21)
    {
      return 1;
    }

    goto LABEL_13;
  }

  outlined copy of MLS.AllMember(a1, a2);
  outlined copy of MLS.AllMember(a1, a2);
  outlined consume of MLS.AllMember(a1, a2);
  outlined consume of MLS.AllMember(a1, a2);
  return 1;
}

uint64_t closure #7 in closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 1432) = v16;
  *(v8 + 1416) = v15;
  *(v8 + 1400) = v14;
  *(v8 + 1392) = a8;
  *(v8 + 1384) = a7;
  *(v8 + 1376) = a6;
  *(v8 + 1368) = a5;
  *(v8 + 1360) = a1;
  v9 = type metadata accessor for MLS.Group.GroupInfo();
  *(v8 + 1440) = v9;
  *(v8 + 1448) = *(v9 - 8);
  *(v8 + 1456) = swift_task_alloc();
  v10 = type metadata accessor for MLS.Group.Message();
  *(v8 + 1464) = v10;
  *(v8 + 1472) = *(v10 - 8);
  *(v8 + 1480) = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v11 = static MLSActor.shared;
  *(v8 + 1488) = static MLSActor.shared;

  return MEMORY[0x2822009F8](closure #7 in closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:), v11, 0);
}

uint64_t closure #7 in closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:)()
{
  v58 = v0;
  v1 = *(v0 + 1376);
  *(v0 + 1496) = direct field offset for MLS.SwiftMLSClientCoordinator.logger;
  outlined init with copy of MLS.OutgoingEventState?(v1, v0 + 384, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  outlined destroy of NSObject?(v1, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 1376);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v53[0] = v6;
    *v5 = 136315138;
    *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*v4, *(v4 + 8), v53);
    _os_log_impl(&dword_264F1F000, v2, v3, "SwiftMLSClientCoordinator processIncoming sending committed proposal { identifier: %s }", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x266755550](v6, -1, -1);
    MEMORY[0x266755550](v5, -1, -1);
  }

  v7 = *(v0 + 1480);
  v8 = *(v0 + 1472);
  v9 = *(v0 + 1464);
  v10 = *(v0 + 1384);
  v11 = *(v0 + 1368);
  MLS.Group.CommitOutput.commitMessage.getter();
  v51 = MLS.Group.GroupInfo.rawRepresentation.getter();
  v52 = v12;
  *(v0 + 1504) = v51;
  *(v0 + 1512) = v12;
  (*(v8 + 8))(v7, v9);
  v13 = [objc_allocWithZone(MEMORY[0x277CCAD78]) init];
  v14 = [v13 UUIDString];

  v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  v50 = v16;
  *(v0 + 1520) = v16;
  v17 = type metadata accessor for MLS.Group.CommitOutput();
  *(v0 + 1208) = v17;
  *(v0 + 1216) = &protocol witness table for MLS.Group.CommitOutput;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 1184));
  (*(*(v17 - 8) + 16))(boxed_opaque_existential_1, v10, v17);
  (*(*v11 + 360))(v53, v0 + 1184);
  v19 = v53[0];
  v20 = v53[1];
  *(v0 + 1528) = v53[0];
  *(v0 + 1536) = v20;
  v21 = v54;
  v22 = v55;
  *(v0 + 1544) = v54;
  *(v0 + 1552) = v22;
  v23 = v56;
  v24 = v57;
  *(v0 + 1560) = v56;
  *(v0 + 1568) = v24;
  v47 = *(v0 + 1432);
  v25 = *(v0 + 1408);
  v42 = *(v0 + 1400);
  v43 = *(v0 + 1376);
  v45 = *(v0 + 1392);
  v46 = *(v0 + 1368);
  v48 = v19;
  v44 = v21;
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 1184));
  v26 = objc_allocWithZone(MEMORY[0x277CCAD78]);

  v27 = [v26 init];
  v28 = [v27 UUIDString];

  v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v31 = v30;

  *(v0 + 1312) = *(v43 + 16);
  swift_beginAccess();
  v32 = *(v25 + 16);
  *(v0 + 584) = *(v0 + 1312);
  *(v0 + 552) = v45;
  *(v0 + 560) = v42;
  *(v0 + 568) = v29;
  *(v0 + 576) = v31;
  *(v0 + 600) = v32;
  *(v0 + 608) = v49;
  *(v0 + 616) = v50;
  *(v0 + 624) = v51;
  *(v0 + 632) = v52;
  *(v0 + 640) = v48;
  *(v0 + 648) = v20;
  *(v0 + 656) = v44;
  *(v0 + 664) = v22;
  *(v0 + 672) = v23;
  *(v0 + 680) = v24;
  v33 = *(v0 + 552);
  v34 = *(v0 + 568);
  v35 = *(v0 + 600);
  *(v0 + 48) = *(v0 + 584);
  *(v0 + 64) = v35;
  *(v0 + 16) = v33;
  *(v0 + 32) = v34;
  v36 = *(v0 + 616);
  v37 = *(v0 + 632);
  v38 = *(v0 + 648);
  v39 = *(v0 + 664);
  *(v0 + 144) = v24;
  *(v0 + 112) = v38;
  *(v0 + 128) = v39;
  *(v0 + 80) = v36;
  *(v0 + 96) = v37;
  _s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGWOi13_(v0 + 16);
  outlined init with copy of ServerBag.MLS(v47, v0 + 1224);
  *(v0 + 1576) = *(v46 + 80);
  *(v0 + 1584) = *(v46 + 88);
  v40 = v46 + direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier;
  *(v0 + 1592) = *(v46 + direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier);
  *(v0 + 1600) = *(v40 + 8);
  outlined init with copy of MLS.OutgoingEventState?(v0 + 1312, v0 + 1328, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);

  outlined copy of Data._Representation(v51, v52);
  outlined copy of Data._Representation(v48, v20);
  outlined copy of Data?(v44, v22);
  outlined copy of Data._Representation(v23, v24);

  return MEMORY[0x2822009F8](closure #7 in closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:), 0, 0);
}

{
  v1 = v0[156];
  v2 = v0[157];
  __swift_project_boxed_opaque_existential_1(v0 + 153, v1);
  v3 = *(v2 + 32);

  v6 = (v3 + *v3);
  v4 = swift_task_alloc();
  v0[201] = v4;
  *v4 = v0;
  v4[1] = closure #7 in closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);

  return v6(v1, v2);
}

{
  v1 = v0[156];
  v2 = v0[157];
  __swift_project_boxed_opaque_existential_1(v0 + 153, v1);
  v5 = (*(v2 + 24) + **(v2 + 24));
  v3 = swift_task_alloc();
  v0[204] = v3;
  *v3 = v0;
  v3[1] = closure #7 in closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);

  return v5(v1, v2);
}

{
  v0[223] = v0[202];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 153);

  v1 = v0[186];

  return MEMORY[0x2822009F8](closure #7 in closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:), v1, 0);
}

{
  *(*v1 + 1656) = v0;

  if (v0)
  {
    v2 = closure #7 in closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
  }

  else
  {
    v2 = closure #7 in closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v1 = v0[156];
  v2 = v0[157];
  __swift_project_boxed_opaque_existential_1(v0 + 153, v1);
  v5 = (*(v2 + 64) + **(v2 + 64));
  v3 = swift_task_alloc();
  v0[213] = v3;
  *v3 = v0;
  v3[1] = closure #7 in closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);

  return v5(v1, v2);
}

{
  v0[223] = v0[207];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 153);

  v1 = v0[186];

  return MEMORY[0x2822009F8](closure #7 in closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:), v1, 0);
}

{
  v1 = v0[212];
  v2 = v0[209];
  v3 = v0[208];
  if (v1 >> 60 == 15)
  {
    v4 = 0xC000000000000000;
  }

  else
  {
    v4 = v0[212];
  }

  if (v1 >> 60 == 15)
  {
    v5 = 0;
  }

  else
  {
    v5 = v0[211];
  }

  v0[223] = v0[214];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 153);

  outlined consume of Data._Representation(v3, v2);
  outlined consume of Data._Representation(v5, v4);
  v6 = v0[186];

  return MEMORY[0x2822009F8](closure #7 in closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:), v6, 0);
}

{
  v1 = *(v0 + 1760);
  v2 = *(v0 + 1752);
  v3 = *(v0 + 1720);
  v4 = *(v0 + 1696);
  v5 = *(v0 + 1672);
  v6 = *(v0 + 1664);
  v18 = v6;
  v19 = v5;
  v7 = *(v0 + 1640);
  v17 = v7;
  v8 = *(v0 + 1624);
  v20 = *(v0 + 1488);
  v9 = *(v0 + 1424);
  v10 = *(v0 + 1416);
  if (v3 >> 60 == 15)
  {
    v11 = 0xC000000000000000;
  }

  else
  {
    v11 = *(v0 + 1720);
  }

  if (v3 >> 60 == 15)
  {
    v12 = 0;
  }

  else
  {
    v12 = *(v0 + 1728);
  }

  if (v4 >> 60 == 15)
  {
    v13 = 0xC000000000000000;
  }

  else
  {
    v13 = *(v0 + 1696);
  }

  if (v4 >> 60 == 15)
  {
    v14 = 0;
  }

  else
  {
    v14 = *(v0 + 1688);
  }

  if ((v8 & 0x100000000) != 0)
  {
    v15 = 1;
  }

  else
  {
    v15 = v8;
  }

  *(v0 + 792) = v10;
  *(v0 + 800) = v9;
  *(v0 + 808) = v15;
  *(v0 + 816) = v15;
  *(v0 + 824) = v7;
  *(v0 + 832) = v6;
  *(v0 + 840) = v5;
  *(v0 + 848) = v14;
  *(v0 + 856) = v13;
  *(v0 + 864) = v12;
  *(v0 + 872) = v11;
  *(v0 + 880) = v1;
  *(v0 + 888) = v2;
  outlined init with copy of MLS.Group(v0 + 792, v0 + 896);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 1224));
  *(v0 + 688) = v10;
  *(v0 + 696) = v9;
  *(v0 + 704) = v15;
  *(v0 + 712) = v15;
  *(v0 + 720) = v17;
  *(v0 + 728) = v18;
  *(v0 + 736) = v19;
  *(v0 + 744) = v14;
  *(v0 + 752) = v13;
  *(v0 + 760) = v12;
  *(v0 + 768) = v11;
  *(v0 + 776) = v1;
  *(v0 + 784) = v2;
  outlined destroy of MLS.Group(v0 + 688);

  return MEMORY[0x2822009F8](closure #7 in closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:), v20, 0);
}

{
  v1 = *(*(v0 + 1368) + 96);
  v2 = *(v0 + 160);
  *(v0 + 328) = *(v0 + 144);
  *(v0 + 344) = v2;
  *(v0 + 360) = *(v0 + 176);
  *(v0 + 376) = *(v0 + 192);
  v3 = *(v0 + 96);
  *(v0 + 264) = *(v0 + 80);
  *(v0 + 280) = v3;
  v4 = *(v0 + 128);
  *(v0 + 296) = *(v0 + 112);
  *(v0 + 312) = v4;
  v5 = *(v0 + 32);
  *(v0 + 200) = *(v0 + 16);
  *(v0 + 216) = v5;
  v6 = *(v0 + 64);
  *(v0 + 232) = *(v0 + 48);
  *(v0 + 248) = v6;
  v7 = *(v0 + 872);
  *(v0 + 1064) = *(v0 + 856);
  *(v0 + 1080) = v7;
  *(v0 + 1096) = *(v0 + 888);
  v8 = *(v0 + 808);
  *(v0 + 1000) = *(v0 + 792);
  *(v0 + 1016) = v8;
  v9 = *(v0 + 840);
  *(v0 + 1032) = *(v0 + 824);
  *(v0 + 1048) = v9;
  *(v0 + 1104) = 0u;
  *(v0 + 1120) = 0u;
  *(v0 + 1136) = 0u;
  *(v0 + 1152) = 0u;
  *(v0 + 1168) = 0;
  *(v0 + 1176) = 2;
  v12 = (*(*v1 + 368) + **(*v1 + 368));
  v10 = swift_task_alloc();
  *(v0 + 1768) = v10;
  *v10 = v0;
  v10[1] = closure #7 in closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);

  return v12(v0 + 200, v0 + 1000, v0 + 1104, 1, 0, 0);
}

{
  v1 = v0[215];
  v2 = v0[212];
  v3 = v0[209];
  v4 = v0[208];
  if (v1 >> 60 == 15)
  {
    v5 = 0xC000000000000000;
  }

  else
  {
    v5 = v0[215];
  }

  if (v1 >> 60 == 15)
  {
    v6 = 0;
  }

  else
  {
    v6 = v0[216];
  }

  if (v2 >> 60 == 15)
  {
    v7 = 0xC000000000000000;
  }

  else
  {
    v7 = v0[212];
  }

  if (v2 >> 60 == 15)
  {
    v8 = 0;
  }

  else
  {
    v8 = v0[211];
  }

  v0[223] = v0[218];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 153);

  outlined consume of Data._Representation(v4, v3);
  outlined consume of Data._Representation(v8, v7);
  outlined consume of Data._Representation(v6, v5);
  v9 = v0[186];

  return MEMORY[0x2822009F8](closure #7 in closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:), v9, 0);
}

{
  v1 = v0[196];
  v2 = v0[195];
  v3 = v0[194];
  v4 = v0[193];
  v5 = v0[192];
  v6 = v0[191];
  v7 = v0[189];
  v8 = v0[188];

  outlined consume of Data._Representation(v8, v7);
  outlined consume of Data._Representation(v6, v5);
  outlined consume of Data?(v4, v3);
  outlined consume of Data._Representation(v2, v1);
  outlined destroy of NSObject?((v0 + 69), &_s15SecureMessaging3MLSO25OutgoingProposalCommittedVy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO25OutgoingProposalCommittedVy_AC9AllMemberO10Foundation4DataVGMR);

  v9 = v0[1];

  return v9();
}

{
  v13 = v0;

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 1400);
    v4 = *(v0 + 1392);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136315138;
    *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v4, v3, &v12);
    _os_log_impl(&dword_264F1F000, v1, v2, "SwiftMLSClientCoordinator processIncoming sent committed proposal { identifier: %s }", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x266755550](v6, -1, -1);
    MEMORY[0x266755550](v5, -1, -1);
  }

  v7 = *(**(v0 + 1368) + 344);
  v11 = (v7 + *v7);
  v8 = swift_task_alloc();
  *(v0 + 1792) = v8;
  *v8 = v0;
  v8[1] = closure #7 in closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
  v9 = *(v0 + 1432);

  return v11(v0 + 1288, v9);
}

{
  v2 = *v1;
  *(*v1 + 1800) = v0;

  v3 = *(v2 + 1488);
  if (v0)
  {
    v4 = closure #7 in closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
  }

  else
  {
    v4 = closure #7 in closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{
  v1 = *(v0 + 1568);
  v2 = *(v0 + 1560);
  v3 = *(v0 + 1552);
  v4 = *(v0 + 1544);
  v5 = *(v0 + 1536);
  v6 = *(v0 + 1528);
  v7 = *(v0 + 1512);
  v8 = *(v0 + 1504);

  outlined consume of Data._Representation(v8, v7);
  outlined consume of Data._Representation(v6, v5);
  outlined consume of Data?(v4, v3);
  outlined consume of Data._Representation(v2, v1);
  outlined destroy of MLS.Group(v0 + 792);
  result = outlined destroy of NSObject?(v0 + 552, &_s15SecureMessaging3MLSO25OutgoingProposalCommittedVy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO25OutgoingProposalCommittedVy_AC9AllMemberO10Foundation4DataVGMR);
  v10 = *(v0 + 1304);
  v11 = __CFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    v13 = *(v0 + 1360);
    v14 = *(v0 + 1296);
    *v13 = v14;
    *(v13 + 8) = v14;
    *(v13 + 16) = v12;
    *(v13 + 24) = 0u;
    *(v13 + 40) = 0u;
    *(v13 + 56) = 0u;
    *(v13 + 72) = 0u;
    *(v13 + 88) = 0;
    *(v13 + 96) = 1;

    v15 = *(v0 + 8);

    return v15();
  }

  return result;
}

{
  v1 = v0[196];
  v2 = v0[195];
  v3 = v0[194];
  v4 = v0[193];
  v5 = v0[192];
  v6 = v0[191];
  v7 = v0[189];
  v8 = v0[188];

  outlined consume of Data._Representation(v8, v7);
  outlined consume of Data._Representation(v6, v5);
  outlined consume of Data?(v4, v3);
  outlined consume of Data._Representation(v2, v1);
  outlined destroy of MLS.Group((v0 + 99));
  outlined destroy of NSObject?((v0 + 69), &_s15SecureMessaging3MLSO25OutgoingProposalCommittedVy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO25OutgoingProposalCommittedVy_AC9AllMemberO10Foundation4DataVGMR);

  v9 = v0[1];

  return v9();
}

{
  v1 = v0[196];
  v2 = v0[195];
  v3 = v0[194];
  v4 = v0[193];
  v5 = v0[192];
  v6 = v0[191];
  v7 = v0[189];
  v8 = v0[188];

  outlined consume of Data._Representation(v8, v7);
  outlined consume of Data._Representation(v6, v5);
  outlined consume of Data?(v4, v3);
  outlined consume of Data._Representation(v2, v1);
  outlined destroy of MLS.Group((v0 + 99));
  outlined destroy of NSObject?((v0 + 69), &_s15SecureMessaging3MLSO25OutgoingProposalCommittedVy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO25OutgoingProposalCommittedVy_AC9AllMemberO10Foundation4DataVGMR);

  v9 = v0[1];

  return v9();
}

uint64_t closure #7 in closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:)(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 1616) = v1;

  if (v1)
  {
    v5 = closure #7 in closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
  }

  else
  {
    *(v4 + 1624) = a1;
    v5 = closure #7 in closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

{
  *(*v1 + 1640) = a1;

  return MEMORY[0x2822009F8](closure #7 in closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:), 0, 0);
}

{
  v2 = v1[182];
  v3 = v1[181];
  v4 = v1[180];
  v1[208] = MLS.Group.GroupInfo.rawRepresentation.getter();
  v1[209] = v5;
  (*(v3 + 8))(v2, v4);
  v6 = v1[156];
  v7 = v1[157];
  __swift_project_boxed_opaque_existential_1(v1 + 153, v6);
  v10 = (*(v7 + 56) + **(v7 + 56));
  v8 = swift_task_alloc();
  v1[210] = v8;
  *v8 = v1;
  v8[1] = closure #7 in closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);

  return v10(v6, v7);
}

{
  v3 = *v2;
  *(*v2 + 1776) = v1;

  if (v1)
  {
    v4 = *(v3 + 1488);
    v5 = closure #7 in closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
  }

  else
  {
    v6 = *(v3 + 1488);

    v5 = closure #7 in closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
    v4 = v6;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

void closure #7 in closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:)()
{
  if ((v0[205] & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v1 = v0[156];
    v2 = v0[157];
    __swift_project_boxed_opaque_existential_1(v0 + 153, v1);
    v5 = (*(v2 + 80) + **(v2 + 80));
    v3 = swift_task_alloc();
    v0[206] = v3;
    *v3 = v0;
    v3[1] = closure #7 in closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
    v4 = v0[182];

    v5(v4, v1, v2);
  }
}

uint64_t closure #7 in closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:)(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 1688) = a1;
  *(v3 + 1696) = a2;

  return MEMORY[0x2822009F8](closure #7 in closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:), 0, 0);
}

{
  v6 = *v3;
  v6[214] = v2;

  if (v2)
  {

    return MEMORY[0x2822009F8](closure #7 in closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:), 0, 0);
  }

  else
  {
    v7 = v6[200];
    v8 = v6[199];
    v16 = v6[198];
    v6[215] = a2;
    v6[216] = a1;
    ObjectType = swift_getObjectType();
    v6[168] = v8;
    v6[169] = v7;
    v15 = (*(v16 + 64) + **(v16 + 64));
    v10 = swift_task_alloc();
    v6[217] = v10;
    *v10 = v6;
    v10[1] = closure #7 in closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
    v11 = v6[198];
    v12 = v6[178];
    v13 = v6[177];

    return v15(v13, v12, v6 + 168, ObjectType, v11);
  }
}

{
  v6 = *v3;
  *(*v3 + 1744) = v2;

  if (v2)
  {
    v7 = closure #7 in closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
  }

  else
  {
    *(v6 + 1752) = a2;
    *(v6 + 1760) = a1;
    v7 = closure #7 in closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

void closure #8 in closure #2 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t *a4)
{
  outlined init with copy of MLS.OutgoingEventState?(a4, v11, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  outlined destroy of NSObject?(a4, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11[0] = v10;
    *v9 = 136315394;
    *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*a4, a4[1], v11);
    *(v9 + 12) = 2080;
    *(v9 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, v11);
    _os_log_impl(&dword_264F1F000, v7, v8, "SwiftMLSClientCoordinator processIncoming signed message does not match expected data { identifier: %s, error: %s }", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v10, -1, -1);
    MEMORY[0x266755550](v9, -1, -1);
  }
}

uint64_t closure #3 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[370] = v14;
  v8[369] = a8;
  v8[368] = a7;
  v8[367] = a6;
  v8[366] = a5;
  v8[365] = a4;
  v8[364] = a3;
  v8[363] = a2;
  v8[362] = a1;
  v9 = type metadata accessor for MLS.Group.GroupInfo();
  v8[371] = v9;
  v8[372] = *(v9 - 8);
  v8[373] = swift_task_alloc();
  v10 = type metadata accessor for MLS.MLSError();
  v8[374] = v10;
  v8[375] = *(v10 - 8);
  v8[376] = swift_task_alloc();
  v8[377] = swift_task_alloc();
  v8[378] = swift_task_alloc();
  v8[379] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v11 = static MLSActor.shared;
  v8[380] = static MLSActor.shared;

  return MEMORY[0x2822009F8](closure #3 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:), v11, 0);
}

uint64_t closure #3 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:)()
{
  v101 = v0;
  v1 = (v0 + 1808);
  v2 = *(v0 + 2904);
  if (*(v2 + 57) == 1)
  {
    v3 = *(v0 + 2912);
    v4 = *(v2 + 41);
    *(v0 + 2632) = *(v2 + 32);
    *(v0 + 2641) = v4;
    *(v0 + 2800) = *(v2 + 16);
    *(v0 + 2752) = *(v3 + 16);
    v5 = *(v2 + 41);
    v6 = *(v2 + 16);
    *v98 = *(v2 + 32);
    *&v98[9] = v5;
    v7 = *(v3 + 16);
    v99 = v6;
    v100 = v7;
    outlined init with copy of MLS.AllMember(v0 + 2632, v0 + 2664);
    outlined init with copy of String(v0 + 2800, v0 + 2864);
    outlined init with copy of MLS.OutgoingEventState?(v0 + 2752, v0 + 2880, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
    v8 = *&v98[16];
    *v1 = *v98;
    *(v0 + 1824) = v8;
    v9 = v100;
    *(v0 + 1840) = v99;
    *(v0 + 1856) = v9;
  }

  else
  {
    *(v0 + 1840) = 0u;
    *(v0 + 1856) = 0u;
    *v1 = 0u;
    *(v0 + 1824) = 0u;
  }

  if (MLS.SwiftMLSClientCoordinator.healingMethod(error:)() == 1)
  {
    v10 = *(v0 + 2912);
    v11 = *(*(v0 + 3000) + 16);
    v11(*(v0 + 3032), *(v0 + 2928), *(v0 + 2992));
    outlined init with copy of MLS.OutgoingEventState?(v10, v0 + 184, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    outlined destroy of NSObject?(v10, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    v14 = os_log_type_enabled(v12, v13);
    v15 = *(v0 + 3032);
    v16 = *(v0 + 3000);
    v17 = *(v0 + 2992);
    if (v14)
    {
      v88 = v11;
      v18 = *(v0 + 2912);
      v19 = swift_slowAlloc();
      log = swift_slowAlloc();
      v92 = swift_slowAlloc();
      v96 = v92;
      *v19 = 136315394;
      *(v19 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*v18, *(v18 + 8), &v96);
      *(v19 + 12) = 2112;
      lazy protocol witness table accessor for type MLS.AddMembersOperation and conformance MLS.AddMembersOperation(&lazy protocol witness table cache variable for type MLS.MLSError and conformance MLS.MLSError, MEMORY[0x277D6AEB0], MEMORY[0x277D6AEB8]);
      swift_allocError();
      v88(v20, v15, v17);
      v21 = _swift_stdlib_bridgeErrorToNSError();
      (*(v16 + 8))(v15, v17);
      *(v19 + 14) = v21;
      log->isa = v21;
      _os_log_impl(&dword_264F1F000, v12, v13, "SwiftMLSClientCoordinator processIncoming performing self heal { identifier: %s, error: %@ }", v19, 0x16u);
      outlined destroy of NSObject?(log, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x266755550](log, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v92);
      MEMORY[0x266755550](v92, -1, -1);
      MEMORY[0x266755550](v19, -1, -1);
    }

    else
    {

      (*(v16 + 8))(v15, v17);
    }

    outlined init with copy of ServerBag.MLS(*(v0 + 2952), v0 + 2488);
    v34 = *(v0 + 1824);
    *(v0 + 2064) = *v1;
    *(v0 + 2080) = v34;
    v35 = *(v0 + 1856);
    *(v0 + 2096) = *(v0 + 1840);
    *(v0 + 2112) = v35;
    v36 = swift_task_alloc();
    *(v0 + 3048) = v36;
    *v36 = v0;
    v36[1] = closure #3 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
    v37 = *(v0 + 2944);
    v38 = *(v0 + 2936);

    return MLS.SwiftMLSClientCoordinator.performSelfHeal(groupIdentifier:swiftMLSGroup:ftdInfo:isWithinPersisterTransaction:)(v38, v37, v0 + 2488, (v0 + 2064), 1);
  }

  if (MLS.SwiftMLSClientCoordinator.healingMethod(error:)() == 2)
  {
    v22 = *(v0 + 2912);
    v23 = *(*(v0 + 3000) + 16);
    v23(*(v0 + 3024), *(v0 + 2928), *(v0 + 2992));
    outlined init with copy of MLS.OutgoingEventState?(v22, v0 + 352, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();
    outlined destroy of NSObject?(v22, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    v26 = os_log_type_enabled(v24, v25);
    v27 = *(v0 + 3024);
    v28 = *(v0 + 3000);
    v29 = *(v0 + 2992);
    if (v26)
    {
      v89 = v23;
      v30 = *(v0 + 2912);
      v31 = swift_slowAlloc();
      loga = swift_slowAlloc();
      v93 = swift_slowAlloc();
      v96 = v93;
      *v31 = 136315394;
      *(v31 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*v30, *(v30 + 8), &v96);
      *(v31 + 12) = 2112;
      lazy protocol witness table accessor for type MLS.AddMembersOperation and conformance MLS.AddMembersOperation(&lazy protocol witness table cache variable for type MLS.MLSError and conformance MLS.MLSError, MEMORY[0x277D6AEB0], MEMORY[0x277D6AEB8]);
      swift_allocError();
      v89(v32, v27, v29);
      v33 = _swift_stdlib_bridgeErrorToNSError();
      (*(v28 + 8))(v27, v29);
      *(v31 + 14) = v33;
      loga->isa = v33;
      _os_log_impl(&dword_264F1F000, v24, v25, "SwiftMLSClientCoordinator processIncoming performing era advancement { identifier: %s, error: %@ }", v31, 0x16u);
      outlined destroy of NSObject?(loga, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x266755550](loga, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v93);
      MEMORY[0x266755550](v93, -1, -1);
      MEMORY[0x266755550](v31, -1, -1);
    }

    else
    {

      (*(v28 + 8))(v27, v29);
    }

    v55 = *(v0 + 1824);
    *(v0 + 2192) = *v1;
    *(v0 + 2208) = v55;
    v56 = *(v0 + 1856);
    *(v0 + 2224) = *(v0 + 1840);
    *(v0 + 2240) = v56;
    v57 = swift_task_alloc();
    *(v0 + 3064) = v57;
    *v57 = v0;
    v57[1] = closure #3 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
    v58 = *(v0 + 2952);
    v59 = *(v0 + 2944);
    v60 = *(v0 + 2936);

    return MLS.SwiftMLSClientCoordinator.performEraAdvancement(groupIdentifier:swiftMLSGroup:ftdInfo:isWithinPersisterTransaction:)(v60, v59, v58, (v0 + 2192), 1);
  }

  v40 = *(v0 + 1824);
  *(v0 + 2528) = *v1;
  *(v0 + 2544) = v40;
  *(v0 + 2560) = *(v0 + 1840);
  v41 = *(v0 + 1848);
  *(v0 + 2816) = *(v0 + 1856);
  if (v41)
  {
    v42 = *(v0 + 1824);
    *(v0 + 2128) = *v1;
    *(v0 + 2144) = v42;
    v43 = *(v0 + 1856);
    *(v0 + 2160) = *(v0 + 1840);
    *(v0 + 2176) = v43;
    outlined init with copy of MLS.QueuedFTDInfo(v0 + 2128, v0 + 1936);
    if (MLS.SwiftMLSClientCoordinator.healingMethod(error:)() == 3)
    {
      v44 = *(v0 + 2912);
      v94 = *(*(v0 + 3000) + 16);
      v94(*(v0 + 3016), *(v0 + 2928), *(v0 + 2992));
      outlined init with copy of MLS.OutgoingEventState?(v44, v0 + 16, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
      v45 = Logger.logObject.getter();
      v46 = static os_log_type_t.error.getter();
      outlined destroy of NSObject?(v44, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
      v90 = v46;
      v47 = os_log_type_enabled(v45, v46);
      v48 = *(v0 + 3016);
      v49 = *(v0 + 3000);
      v50 = *(v0 + 2992);
      if (v47)
      {
        logb = v45;
        v51 = *(v0 + 2912);
        v52 = swift_slowAlloc();
        v82 = swift_slowAlloc();
        v83 = swift_slowAlloc();
        v96 = v83;
        *v52 = 136315394;
        *(v52 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*v51, *(v51 + 8), &v96);
        *(v52 + 12) = 2112;
        lazy protocol witness table accessor for type MLS.AddMembersOperation and conformance MLS.AddMembersOperation(&lazy protocol witness table cache variable for type MLS.MLSError and conformance MLS.MLSError, MEMORY[0x277D6AEB0], MEMORY[0x277D6AEB8]);
        swift_allocError();
        v94(v53, v48, v50);
        v54 = _swift_stdlib_bridgeErrorToNSError();
        (*(v49 + 8))(v48, v50);
        *(v52 + 14) = v54;
        *v82 = v54;
        _os_log_impl(&dword_264F1F000, logb, v90, "SwiftMLSClientCoordinator processIncoming sending FTD without self healing { identifier: %s, error: %@ }", v52, 0x16u);
        outlined destroy of NSObject?(v82, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        MEMORY[0x266755550](v82, -1, -1);
        __swift_destroy_boxed_opaque_existential_1Tm(v83);
        MEMORY[0x266755550](v83, -1, -1);
        MEMORY[0x266755550](v52, -1, -1);
      }

      else
      {

        (*(v49 + 8))(v48, v50);
      }

      v78 = *(v0 + 2544);
      *(v0 + 1872) = *(v0 + 2528);
      *(v0 + 1888) = v78;
      *(v0 + 1904) = *(v0 + 2560);
      *(v0 + 1912) = v41;
      *(v0 + 1920) = *(v0 + 2816);
      v79 = swift_task_alloc();
      *(v0 + 3080) = v79;
      *v79 = v0;
      v79[1] = closure #3 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
      v80 = *(v0 + 2944);
      v81 = *(v0 + 2936);

      return MLS.SwiftMLSClientCoordinator.performFailureToDecrypt(groupIdentifier:ftdInfo:isWithinPersisterTransaction:)(v81, v80, (v0 + 1872), 1);
    }

    outlined destroy of NSObject?(v0 + 1808, &_s15SecureMessaging3MLSO13QueuedFTDInfoVSgMd, &_s15SecureMessaging3MLSO13QueuedFTDInfoVSgMR);
  }

  v61 = *(v0 + 2912);
  v62 = *(*(v0 + 3000) + 16);
  v62(*(v0 + 3008), *(v0 + 2928), *(v0 + 2992));
  outlined init with copy of MLS.OutgoingEventState?(v61, v0 + 856, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
  v63 = Logger.logObject.getter();
  v64 = static os_log_type_t.error.getter();
  outlined destroy of NSObject?(v61, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
  v65 = os_log_type_enabled(v63, v64);
  v66 = *(v0 + 3008);
  v67 = *(v0 + 3000);
  v68 = *(v0 + 2992);
  if (v65)
  {
    v91 = v62;
    v69 = *(v0 + 2912);
    v70 = swift_slowAlloc();
    logc = swift_slowAlloc();
    v95 = swift_slowAlloc();
    v96 = v95;
    *v70 = 136315394;
    *(v70 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*v69, *(v69 + 8), &v96);
    *(v70 + 12) = 2112;
    lazy protocol witness table accessor for type MLS.AddMembersOperation and conformance MLS.AddMembersOperation(&lazy protocol witness table cache variable for type MLS.MLSError and conformance MLS.MLSError, MEMORY[0x277D6AEB0], MEMORY[0x277D6AEB8]);
    swift_allocError();
    v91(v71, v66, v68);
    v72 = _swift_stdlib_bridgeErrorToNSError();
    (*(v67 + 8))(v66, v68);
    *(v70 + 14) = v72;
    logc->isa = v72;
    _os_log_impl(&dword_264F1F000, v63, v64, "SwiftMLSClientCoordinator processIncoming SwiftMLS failed with unhealable error { identifier: %s, error: %@ }", v70, 0x16u);
    outlined destroy of NSObject?(logc, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x266755550](logc, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v95);
    MEMORY[0x266755550](v95, -1, -1);
    MEMORY[0x266755550](v70, -1, -1);
  }

  else
  {

    (*(v67 + 8))(v66, v68);
  }

  v96 = 0;
  v97 = 0xE000000000000000;
  _StringGuts.grow(_:)(16);
  v73 = v97;
  *(v0 + 2832) = v96;
  *(v0 + 2840) = v73;
  MEMORY[0x2667545A0](0x534C4D7466697753, 0xEE002E726F727245);
  _print_unlocked<A, B>(_:_:)();
  v74 = *(v0 + 2832);
  v75 = *(v0 + 2840);
  lazy protocol witness table accessor for type MLS.IncomingMessageError and conformance MLS.IncomingMessageError();
  swift_allocError();
  *v76 = 9;
  *(v76 + 8) = v74;
  *(v76 + 16) = v75;
  swift_willThrow();
  outlined destroy of NSObject?(v0 + 1808, &_s15SecureMessaging3MLSO13QueuedFTDInfoVSgMd, &_s15SecureMessaging3MLSO13QueuedFTDInfoVSgMR);

  v77 = *(v0 + 8);

  return v77();
}

{
  v2 = *v1;
  *(*v1 + 3056) = v0;

  if (v0)
  {
    v3 = *(v2 + 3040);
    outlined destroy of NSObject?(v2 + 2488, &_s15SecureMessaging3MLSO21SwiftMLSGroupProtocol_pSgMd, &_s15SecureMessaging3MLSO21SwiftMLSGroupProtocol_pSgMR);
    v4 = closure #3 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
  }

  else
  {
    v3 = *(v2 + 3040);
    outlined destroy of NSObject?(v2 + 2488, &_s15SecureMessaging3MLSO21SwiftMLSGroupProtocol_pSgMd, &_s15SecureMessaging3MLSO21SwiftMLSGroupProtocol_pSgMR);
    v4 = closure #3 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{
  v18 = v0;
  v1 = *(v0 + 2912);
  *(v0 + 3096) = direct field offset for MLS.SwiftMLSClientCoordinator.logger;
  outlined init with copy of MLS.OutgoingEventState?(v1, v0 + 1024, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
  outlined init with copy of MLS.OutgoingEventState?(v0 + 1808, v0 + 2000, &_s15SecureMessaging3MLSO13QueuedFTDInfoVSgMd, &_s15SecureMessaging3MLSO13QueuedFTDInfoVSgMR);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  outlined destroy of NSObject?(v1, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);

  outlined destroy of NSObject?(v0 + 1808, &_s15SecureMessaging3MLSO13QueuedFTDInfoVSgMd, &_s15SecureMessaging3MLSO13QueuedFTDInfoVSgMR);
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 2944);
    v5 = *(v0 + 2936);
    v6 = *(v0 + 2912);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v17 = v8;
    *v7 = 136315650;
    *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*v6, *(v6 + 8), &v17);
    *(v7 + 12) = 2080;
    *(v7 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v4, &v17);
    *(v7 + 22) = 2080;
    v9 = *(v0 + 1824);
    *(v0 + 2384) = *(v0 + 1808);
    *(v0 + 2400) = v9;
    v10 = *(v0 + 1856);
    *(v0 + 2416) = *(v0 + 1840);
    *(v0 + 2432) = v10;
    outlined init with copy of MLS.OutgoingEventState?(v0 + 1808, v0 + 2320, &_s15SecureMessaging3MLSO13QueuedFTDInfoVSgMd, &_s15SecureMessaging3MLSO13QueuedFTDInfoVSgMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO13QueuedFTDInfoVSgMd, &_s15SecureMessaging3MLSO13QueuedFTDInfoVSgMR);
    v11 = String.init<A>(describing:)();
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v17);

    *(v7 + 24) = v13;
    _os_log_impl(&dword_264F1F000, v2, v3, "SwiftMLSClientCoordinator processIncoming healed successfully { identifier: %s, groupID: %s, ftdInfo: %s }", v7, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v8, -1, -1);
    MEMORY[0x266755550](v7, -1, -1);
  }

  v14 = *(v0 + 2920);
  outlined init with copy of ServerBag.MLS(*(v0 + 2952), v0 + 2448);
  *(v0 + 3104) = *(v14 + 80);
  *(v0 + 3112) = *(v14 + 88);
  v15 = v14 + direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier;
  *(v0 + 3120) = *(v14 + direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier);
  *(v0 + 3128) = *(v15 + 8);

  return MEMORY[0x2822009F8](closure #3 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:), 0, 0);
}

{
  v2 = *v1;
  *(*v1 + 3072) = v0;

  v3 = *(v2 + 3040);
  if (v0)
  {
    v4 = closure #3 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
  }

  else
  {
    v4 = closure #3 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{
  v2 = *v1;
  *(v2 + 3088) = v0;

  v3 = *(v2 + 3040);
  if (v0)
  {
    outlined destroy of NSObject?(v2 + 1808, &_s15SecureMessaging3MLSO13QueuedFTDInfoVSgMd, &_s15SecureMessaging3MLSO13QueuedFTDInfoVSgMR);
    v4 = closure #3 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
  }

  else
  {
    v4 = closure #3 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{
  v18 = v0;
  outlined destroy of NSObject?(v0 + 1808, &_s15SecureMessaging3MLSO13QueuedFTDInfoVSgMd, &_s15SecureMessaging3MLSO13QueuedFTDInfoVSgMR);
  v1 = *(v0 + 2912);
  *(v0 + 3096) = direct field offset for MLS.SwiftMLSClientCoordinator.logger;
  outlined init with copy of MLS.OutgoingEventState?(v1, v0 + 1024, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
  outlined init with copy of MLS.OutgoingEventState?(v0 + 1808, v0 + 2000, &_s15SecureMessaging3MLSO13QueuedFTDInfoVSgMd, &_s15SecureMessaging3MLSO13QueuedFTDInfoVSgMR);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  outlined destroy of NSObject?(v1, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);

  outlined destroy of NSObject?(v0 + 1808, &_s15SecureMessaging3MLSO13QueuedFTDInfoVSgMd, &_s15SecureMessaging3MLSO13QueuedFTDInfoVSgMR);
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 2944);
    v5 = *(v0 + 2936);
    v6 = *(v0 + 2912);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v17 = v8;
    *v7 = 136315650;
    *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*v6, *(v6 + 8), &v17);
    *(v7 + 12) = 2080;
    *(v7 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v4, &v17);
    *(v7 + 22) = 2080;
    v9 = *(v0 + 1824);
    *(v0 + 2384) = *(v0 + 1808);
    *(v0 + 2400) = v9;
    v10 = *(v0 + 1856);
    *(v0 + 2416) = *(v0 + 1840);
    *(v0 + 2432) = v10;
    outlined init with copy of MLS.OutgoingEventState?(v0 + 1808, v0 + 2320, &_s15SecureMessaging3MLSO13QueuedFTDInfoVSgMd, &_s15SecureMessaging3MLSO13QueuedFTDInfoVSgMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO13QueuedFTDInfoVSgMd, &_s15SecureMessaging3MLSO13QueuedFTDInfoVSgMR);
    v11 = String.init<A>(describing:)();
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v17);

    *(v7 + 24) = v13;
    _os_log_impl(&dword_264F1F000, v2, v3, "SwiftMLSClientCoordinator processIncoming healed successfully { identifier: %s, groupID: %s, ftdInfo: %s }", v7, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v8, -1, -1);
    MEMORY[0x266755550](v7, -1, -1);
  }

  v14 = *(v0 + 2920);
  outlined init with copy of ServerBag.MLS(*(v0 + 2952), v0 + 2448);
  *(v0 + 3104) = *(v14 + 80);
  *(v0 + 3112) = *(v14 + 88);
  v15 = v14 + direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier;
  *(v0 + 3120) = *(v14 + direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier);
  *(v0 + 3128) = *(v15 + 8);

  return MEMORY[0x2822009F8](closure #3 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:), 0, 0);
}

{
  v1 = v0[309];
  v2 = v0[310];
  __swift_project_boxed_opaque_existential_1(v0 + 306, v1);
  v3 = *(v2 + 32);

  v6 = (v3 + *v3);
  v4 = swift_task_alloc();
  v0[392] = v4;
  *v4 = v0;
  v4[1] = closure #3 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);

  return v6(v1, v2);
}

{
  v1 = v0[309];
  v2 = v0[310];
  __swift_project_boxed_opaque_existential_1(v0 + 306, v1);
  v5 = (*(v2 + 24) + **(v2 + 24));
  v3 = swift_task_alloc();
  v0[395] = v3;
  *v3 = v0;
  v3[1] = closure #3 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);

  return v5(v1, v2);
}

{
  v0[412] = v0[393];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 306);

  v1 = v0[380];

  return MEMORY[0x2822009F8](closure #3 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:), v1, 0);
}

{
  *(*v1 + 3184) = v0;

  if (v0)
  {
    v2 = closure #3 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
  }

  else
  {
    v2 = closure #3 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v1 = v0[309];
  v2 = v0[310];
  __swift_project_boxed_opaque_existential_1(v0 + 306, v1);
  v5 = (*(v2 + 64) + **(v2 + 64));
  v3 = swift_task_alloc();
  v0[404] = v3;
  *v3 = v0;
  v3[1] = closure #3 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);

  return v5(v1, v2);
}

{
  v0[412] = v0[398];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 306);

  v1 = v0[380];

  return MEMORY[0x2822009F8](closure #3 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:), v1, 0);
}

{
  v1 = v0[403];
  v2 = v0[400];
  v3 = v0[399];
  if (v1 >> 60 == 15)
  {
    v4 = 0xC000000000000000;
  }

  else
  {
    v4 = v0[403];
  }

  if (v1 >> 60 == 15)
  {
    v5 = 0;
  }

  else
  {
    v5 = v0[402];
  }

  v0[412] = v0[405];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 306);

  outlined consume of Data._Representation(v3, v2);
  outlined consume of Data._Representation(v5, v4);
  v6 = v0[380];

  return MEMORY[0x2822009F8](closure #3 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:), v6, 0);
}

{
  v1 = *(v0 + 3288);
  v2 = *(v0 + 3280);
  v3 = *(v0 + 3248);
  v4 = *(v0 + 3224);
  v5 = *(v0 + 3200);
  v6 = *(v0 + 3192);
  v18 = v6;
  v19 = v5;
  v7 = *(v0 + 3168);
  v17 = v7;
  v8 = *(v0 + 3152);
  v20 = *(v0 + 3040);
  v9 = *(v0 + 2944);
  v10 = *(v0 + 2936);
  if (v3 >> 60 == 15)
  {
    v11 = 0xC000000000000000;
  }

  else
  {
    v11 = *(v0 + 3248);
  }

  if (v3 >> 60 == 15)
  {
    v12 = 0;
  }

  else
  {
    v12 = *(v0 + 3256);
  }

  if (v4 >> 60 == 15)
  {
    v13 = 0xC000000000000000;
  }

  else
  {
    v13 = *(v0 + 3224);
  }

  if (v4 >> 60 == 15)
  {
    v14 = 0;
  }

  else
  {
    v14 = *(v0 + 3216);
  }

  if ((v8 & 0x100000000) != 0)
  {
    v15 = 1;
  }

  else
  {
    v15 = v8;
  }

  *(v0 + 1400) = v10;
  *(v0 + 1408) = v9;
  *(v0 + 1416) = v15;
  *(v0 + 1424) = v15;
  *(v0 + 1432) = v7;
  *(v0 + 1440) = v6;
  *(v0 + 1448) = v5;
  *(v0 + 1456) = v14;
  *(v0 + 1464) = v13;
  *(v0 + 1472) = v12;
  *(v0 + 1480) = v11;
  *(v0 + 1488) = v1;
  *(v0 + 1496) = v2;
  outlined init with copy of MLS.Group(v0 + 1400, v0 + 1296);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 2448));
  *(v0 + 1504) = v10;
  *(v0 + 1512) = v9;
  *(v0 + 1520) = v15;
  *(v0 + 1528) = v15;
  *(v0 + 1536) = v17;
  *(v0 + 1544) = v18;
  *(v0 + 1552) = v19;
  *(v0 + 1560) = v14;
  *(v0 + 1568) = v13;
  *(v0 + 1576) = v12;
  *(v0 + 1584) = v11;
  *(v0 + 1592) = v1;
  *(v0 + 1600) = v2;
  outlined destroy of MLS.Group(v0 + 1504);

  return MEMORY[0x2822009F8](closure #3 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:), v20, 0);
}

{
  v36 = v0;
  v1 = (v0 + 1400);
  if (*(v0 + 1848))
  {
    outlined destroy of NSObject?(v0 + 1808, &_s15SecureMessaging3MLSO13QueuedFTDInfoVSgMd, &_s15SecureMessaging3MLSO13QueuedFTDInfoVSgMR);
    v2 = *(v0 + 2960);
    v3 = *(v0 + 2896);
    *(v0 + 2784) = *(*(v0 + 2912) + 16);
    swift_beginAccess();
    v4 = *v2;
    *v3 = *(v0 + 2784);
    v5 = *(v0 + 1496);
    v6 = *(v0 + 1448);
    v7 = *(v0 + 1480);
    *(v3 + 80) = *(v0 + 1464);
    *(v3 + 96) = v7;
    *(v3 + 64) = v6;
    v8 = *(v0 + 1432);
    v9 = *v1;
    *(v3 + 32) = *(v0 + 1416);
    *(v3 + 48) = v8;
    *(v3 + 16) = v9;
    *(v3 + 112) = v5;
    *(v3 + 120) = v4;
    outlined init with copy of MLS.OutgoingEventState?(v0 + 2784, v0 + 2768, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);

    v10 = *(v0 + 8);

    return v10();
  }

  else
  {
    v12 = *(v0 + 2912);
    v13 = *(v0 + 2904);
    v14 = *v12;
    *(v0 + 3304) = *v12;
    v15 = *(v12 + 8);
    *(v0 + 3312) = v15;
    v16 = *(v13 + 32);
    *(v0 + 2577) = *(v13 + 41);
    *(v0 + 2568) = v16;
    *(v0 + 2720) = *(v12 + 16);
    v17 = *(v13 + 32);
    *(v0 + 2281) = *(v13 + 41);
    *(v0 + 2272) = v17;
    *(v35 + 7) = *(v12 + 16);
    *(v0 + 2256) = v14;
    *(v0 + 2264) = v15;
    *(v0 + 2312) = *(&v35[1] + 7);
    *(v0 + 2297) = *v35;
    v18 = *(v0 + 2272);
    *(v0 + 1712) = *(v0 + 2256);
    *(v0 + 1728) = v18;
    v19 = *(v0 + 2304);
    *(v0 + 1744) = *(v0 + 2288);
    *(v0 + 1760) = v19;
    outlined init with copy of MLS.OutgoingEventState?(v12, v0 + 688, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);

    outlined init with copy of MLS.AllMember(v0 + 2568, v0 + 2600);
    outlined init with copy of MLS.OutgoingEventState?(v0 + 2720, v0 + 2736, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();
    outlined destroy of NSObject?(v12, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v35[0] = v23;
      *v22 = 136315138;
      *(v22 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, v35);
      _os_log_impl(&dword_264F1F000, v20, v21, "SwiftMLSClientCoordinator processIncoming sending internal message event after self heal { identifier: %s }", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v23);
      MEMORY[0x266755550](v23, -1, -1);
      MEMORY[0x266755550](v22, -1, -1);
    }

    v24 = *(*(v0 + 2920) + 96);
    v25 = *(v0 + 1760);
    *(v0 + 1640) = *(v0 + 1744);
    *(v0 + 1656) = v25;
    v26 = *(v0 + 1792);
    *(v0 + 1672) = *(v0 + 1776);
    *(v0 + 1688) = v26;
    v27 = *(v0 + 1728);
    *(v0 + 1608) = *(v0 + 1712);
    *(v0 + 1624) = v27;
    *(v0 + 1704) = 9;
    v28 = *(v0 + 1416);
    *(v0 + 1192) = *v1;
    *(v0 + 1208) = v28;
    v29 = *(v0 + 1432);
    v30 = *(v0 + 1448);
    v31 = *(v0 + 1464);
    v32 = *(v0 + 1480);
    *(v0 + 1288) = *(v0 + 1496);
    *(v0 + 1256) = v31;
    *(v0 + 1272) = v32;
    *(v0 + 1224) = v29;
    *(v0 + 1240) = v30;
    v34 = (*(*v24 + 384) + **(*v24 + 384));
    v33 = swift_task_alloc();
    *(v0 + 3320) = v33;
    *v33 = v0;
    v33[1] = closure #3 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);

    return v34(v0 + 1608, v0 + 1192, 1, 0);
  }
}

{
  v1 = v0[406];
  v2 = v0[403];
  v3 = v0[400];
  v4 = v0[399];
  if (v1 >> 60 == 15)
  {
    v5 = 0xC000000000000000;
  }

  else
  {
    v5 = v0[406];
  }

  if (v1 >> 60 == 15)
  {
    v6 = 0;
  }

  else
  {
    v6 = v0[407];
  }

  if (v2 >> 60 == 15)
  {
    v7 = 0xC000000000000000;
  }

  else
  {
    v7 = v0[403];
  }

  if (v2 >> 60 == 15)
  {
    v8 = 0;
  }

  else
  {
    v8 = v0[402];
  }

  v0[412] = v0[409];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 306);

  outlined consume of Data._Representation(v4, v3);
  outlined consume of Data._Representation(v8, v7);
  outlined consume of Data._Representation(v6, v5);
  v9 = v0[380];

  return MEMORY[0x2822009F8](closure #3 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:), v9, 0);
}

{
  outlined destroy of NSObject?(v0 + 1808, &_s15SecureMessaging3MLSO13QueuedFTDInfoVSgMd, &_s15SecureMessaging3MLSO13QueuedFTDInfoVSgMR);

  v1 = *(v0 + 8);

  return v1();
}

{
  v2 = *v1;
  *(*v1 + 3328) = v0;

  v3 = *(v2 + 3040);
  if (v0)
  {
    v4 = closure #3 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
  }

  else
  {
    v4 = closure #3 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{
  v19 = v0;
  v1 = *(v0 + 2912);
  outlined init with copy of MLS.OutgoingEventState?(v1, v0 + 520, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  outlined destroy of NSObject?(v1, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 3312);
    v5 = *(v0 + 3304);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v18 = v7;
    *v6 = 136315138;
    *(v6 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v4, &v18);
    _os_log_impl(&dword_264F1F000, v2, v3, "SwiftMLSClientCoordinator processIncoming internal message returning processedContext to caller after self heal { identifier: %s }", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x266755550](v7, -1, -1);
    MEMORY[0x266755550](v6, -1, -1);
  }

  outlined destroy of NSObject?(v0 + 2256, &_s15SecureMessaging3MLSO28IncomingInternalStateUpdatedVy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO28IncomingInternalStateUpdatedVy_AC9AllMemberO10Foundation4DataVGMR);

  v8 = *(v0 + 2960);
  v9 = *(v0 + 2896);
  *(v0 + 2784) = *(*(v0 + 2912) + 16);
  swift_beginAccess();
  v10 = *v8;
  *v9 = *(v0 + 2784);
  v11 = *(v0 + 1496);
  v12 = *(v0 + 1448);
  v13 = *(v0 + 1480);
  *(v9 + 80) = *(v0 + 1464);
  *(v9 + 96) = v13;
  *(v9 + 64) = v12;
  v14 = *(v0 + 1432);
  v15 = *(v0 + 1400);
  *(v9 + 32) = *(v0 + 1416);
  *(v9 + 48) = v14;
  *(v9 + 16) = v15;
  *(v9 + 112) = v11;
  *(v9 + 120) = v10;
  outlined init with copy of MLS.OutgoingEventState?(v0 + 2784, v0 + 2768, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);

  v16 = *(v0 + 8);

  return v16();
}

{
  outlined destroy of NSObject?(v0 + 1808, &_s15SecureMessaging3MLSO13QueuedFTDInfoVSgMd, &_s15SecureMessaging3MLSO13QueuedFTDInfoVSgMR);

  v1 = *(v0 + 8);

  return v1();
}

{
  outlined destroy of NSObject?(v0 + 1808, &_s15SecureMessaging3MLSO13QueuedFTDInfoVSgMd, &_s15SecureMessaging3MLSO13QueuedFTDInfoVSgMR);

  v1 = *(v0 + 8);

  return v1();
}

{
  outlined destroy of NSObject?(v0 + 1808, &_s15SecureMessaging3MLSO13QueuedFTDInfoVSgMd, &_s15SecureMessaging3MLSO13QueuedFTDInfoVSgMR);

  v1 = *(v0 + 8);

  return v1();
}

{
  outlined destroy of MLS.Group(v0 + 1400);
  outlined destroy of NSObject?(v0 + 2256, &_s15SecureMessaging3MLSO28IncomingInternalStateUpdatedVy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO28IncomingInternalStateUpdatedVy_AC9AllMemberO10Foundation4DataVGMR);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t closure #3 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:)(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 3144) = v1;

  if (v1)
  {
    v5 = closure #3 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
  }

  else
  {
    *(v4 + 3152) = a1;
    v5 = closure #3 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

{
  *(*v1 + 3168) = a1;

  return MEMORY[0x2822009F8](closure #3 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:), 0, 0);
}

{
  v2 = v1[373];
  v3 = v1[372];
  v4 = v1[371];
  v1[399] = MLS.Group.GroupInfo.rawRepresentation.getter();
  v1[400] = v5;
  (*(v3 + 8))(v2, v4);
  v6 = v1[309];
  v7 = v1[310];
  __swift_project_boxed_opaque_existential_1(v1 + 306, v6);
  v10 = (*(v7 + 56) + **(v7 + 56));
  v8 = swift_task_alloc();
  v1[401] = v8;
  *v8 = v1;
  v8[1] = closure #3 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);

  return v10(v6, v7);
}

void closure #3 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:)()
{
  if ((v0[396] & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v1 = v0[309];
    v2 = v0[310];
    __swift_project_boxed_opaque_existential_1(v0 + 306, v1);
    v5 = (*(v2 + 80) + **(v2 + 80));
    v3 = swift_task_alloc();
    v0[397] = v3;
    *v3 = v0;
    v3[1] = closure #3 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
    v4 = v0[373];

    v5(v4, v1, v2);
  }
}

uint64_t closure #3 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:)(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 3216) = a1;
  *(v3 + 3224) = a2;

  return MEMORY[0x2822009F8](closure #3 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:), 0, 0);
}

{
  v6 = *v3;
  v6[405] = v2;

  if (v2)
  {

    return MEMORY[0x2822009F8](closure #3 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:), 0, 0);
  }

  else
  {
    v7 = v6[391];
    v8 = v6[390];
    v16 = v6[389];
    v6[406] = a2;
    v6[407] = a1;
    ObjectType = swift_getObjectType();
    v6[356] = v8;
    v6[357] = v7;
    v15 = (*(v16 + 64) + **(v16 + 64));
    v10 = swift_task_alloc();
    v6[408] = v10;
    *v10 = v6;
    v10[1] = closure #3 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
    v11 = v6[389];
    v12 = v6[368];
    v13 = v6[367];

    return v15(v13, v12, v6 + 356, ObjectType, v11);
  }
}

{
  v6 = *v3;
  *(*v3 + 3272) = v2;

  if (v2)
  {
    v7 = closure #3 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
  }

  else
  {
    *(v6 + 3280) = a2;
    *(v6 + 3288) = a1;
    v7 = closure #3 in MLS.SwiftMLSClientCoordinator.processIncoming(message:forGroup:context:);
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t MLS.SwiftMLSClientCoordinator.sendNegativeDelivery(message:group:originalEventIdentifier:swiftMLSError:)(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 240) = a6;
  *(v7 + 248) = v6;
  *(v7 + 224) = a4;
  *(v7 + 232) = a5;
  *(v7 + 208) = a2;
  *(v7 + 216) = a3;
  v9 = type metadata accessor for MLS.MLSError();
  *(v7 + 256) = v9;
  *(v7 + 264) = *(v9 - 8);
  *(v7 + 272) = swift_task_alloc();
  *(v7 + 280) = swift_task_alloc();
  v10 = type metadata accessor for UUID();
  *(v7 + 288) = v10;
  *(v7 + 296) = *(v10 - 8);
  *(v7 + 304) = swift_task_alloc();
  v11 = a1[1];
  *(v7 + 16) = *a1;
  *(v7 + 32) = v11;
  *(v7 + 48) = a1[2];
  *(v7 + 58) = *(a1 + 42);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v12 = static MLSActor.shared;
  *(v7 + 312) = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.SwiftMLSClientCoordinator.sendNegativeDelivery(message:group:originalEventIdentifier:swiftMLSError:), v12, 0);
}

uint64_t MLS.SwiftMLSClientCoordinator.sendNegativeDelivery(message:group:originalEventIdentifier:swiftMLSError:)(uint64_t a1)
{
  v50 = v1;
  v3 = *(v1 + 296);
  v2 = *(v1 + 304);
  v5 = *(v1 + 280);
  v4 = *(v1 + 288);
  v6 = *(v1 + 256);
  v7 = *(v1 + 264);
  v8 = *(v1 + 240);
  UUID.init()();
  v9 = UUID.uuidString.getter();
  v11 = v10;
  v48 = v9;
  *(v1 + 320) = v9;
  *(v1 + 328) = v10;
  (*(v3 + 8))(v2, v4);
  *(v1 + 336) = direct field offset for MLS.SwiftMLSClientCoordinator.logger;
  v12 = *(v7 + 16);
  v12(v5, v8, v6);

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();

  v15 = os_log_type_enabled(v13, v14);
  v16 = *(v1 + 280);
  v18 = *(v1 + 256);
  v17 = *(v1 + 264);
  if (v15)
  {
    v45 = v12;
    v20 = *(v1 + 224);
    v19 = *(v1 + 232);
    v41 = v14;
    v21 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v49 = v43;
    *v21 = 136315650;
    *(v21 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v19, &v49);
    *(v21 + 12) = 2080;
    *(v21 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v48, v11, &v49);
    *(v21 + 22) = 2112;
    lazy protocol witness table accessor for type MLS.AddMembersOperation and conformance MLS.AddMembersOperation(&lazy protocol witness table cache variable for type MLS.MLSError and conformance MLS.MLSError, MEMORY[0x277D6AEB0], MEMORY[0x277D6AEB8]);
    swift_allocError();
    v45(v22, v16, v18);
    v23 = _swift_stdlib_bridgeErrorToNSError();
    (*(v17 + 8))(v16, v18);
    *(v21 + 24) = v23;
    *v39 = v23;
    v12 = v45;
    _os_log_impl(&dword_264F1F000, v13, v41, "SwiftMLSClientCoordinator sendNegativeDelivery enqueueing a negative delivery for commit { identifier: %s, negativeDeliveryID: %s, error: %@ }", v21, 0x20u);
    outlined destroy of NSObject?(v39, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x266755550](v39, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x266755550](v43, -1, -1);
    MEMORY[0x266755550](v21, -1, -1);
  }

  else
  {

    (*(v17 + 8))(v16, v18);
  }

  v24 = *(v1 + 264);
  v25 = *(v1 + 272);
  v26 = *(v1 + 248);
  v27 = *(v1 + 256);
  v44 = *(v1 + 224);
  v46 = *(v1 + 232);
  v42 = *(v1 + 216);
  v40 = *(v1 + 208);
  v12(v25, *(v1 + 240), v27);

  outlined init with copy of MLS.OutgoingEventState?(v1 + 16, v1 + 80, &_s15SecureMessaging3MLSO15IncomingMessageVy_AC9AllMemberOGMd, &_s15SecureMessaging3MLSO15IncomingMessageVy_AC9AllMemberOGMR);
  v38 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_15SecureMessaging15MetricCollectorV5EventVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v28 = *(v26 + direct field offset for MLS.SwiftMLSClientCoordinator.featureFlagsStore);
  v29 = type metadata accessor for MLS.NegativeDeliveryOperation(0);
  v30 = swift_allocObject();
  *(v1 + 344) = v30;

  Logger.init(subsystem:category:)();
  v31 = *(v1 + 32);
  *(v30 + 16) = *(v1 + 16);
  *(v30 + 32) = v31;
  *(v30 + 48) = *(v1 + 48);
  *(v30 + 58) = *(v1 + 58);
  *(v30 + 80) = v40;
  *(v30 + 88) = v42;
  *(v30 + 96) = v44;
  *(v30 + 104) = v46;
  (*(v24 + 32))(v30 + OBJC_IVAR____TtCO15SecureMessaging3MLS25NegativeDeliveryOperation_triggeringError, v25, v27);
  v32 = v30 + OBJC_IVAR____TtCO15SecureMessaging3MLS25NegativeDeliveryOperation_context;
  *v32 = v48;
  *(v32 + 8) = v11;
  *(v32 + 16) = xmmword_2651B5F50;
  *(v32 + 32) = v38;
  *(v30 + OBJC_IVAR____TtCO15SecureMessaging3MLS25NegativeDeliveryOperation_featureFlagsStore) = v28;
  v33 = *(v26 + direct field offset for MLS.SwiftMLSClientCoordinator.runner);
  *(v1 + 200) = v30;
  v34 = *(*v33 + 216);

  v47 = (v34 + *v34);
  v35 = swift_task_alloc();
  *(v1 + 352) = v35;
  v36 = lazy protocol witness table accessor for type MLS.AddMembersOperation and conformance MLS.AddMembersOperation(&lazy protocol witness table cache variable for type MLS.NegativeDeliveryOperation and conformance MLS.NegativeDeliveryOperation, type metadata accessor for MLS.NegativeDeliveryOperation, &protocol conformance descriptor for MLS.NegativeDeliveryOperation);
  *v35 = v1;
  v35[1] = MLS.SwiftMLSClientCoordinator.sendNegativeDelivery(message:group:originalEventIdentifier:swiftMLSError:);

  return v47(v1 + 144, v1 + 200, v29, v36, v1 + 176);
}

uint64_t MLS.SwiftMLSClientCoordinator.sendNegativeDelivery(message:group:originalEventIdentifier:swiftMLSError:)()
{
  v2 = *v1;

  if (v0)
  {
    v3 = v2[39];
    v4 = MLS.SwiftMLSClientCoordinator.sendNegativeDelivery(message:group:originalEventIdentifier:swiftMLSError:);
  }

  else
  {
    v5 = v2[39];
    outlined consume of Data?(v2[18], v2[19]);

    v4 = MLS.SwiftMLSClientCoordinator.sendNegativeDelivery(message:group:originalEventIdentifier:swiftMLSError:);
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{
  v14 = v0;

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[41];
  if (v3)
  {
    v5 = v0[40];
    v7 = v0[28];
    v6 = v0[29];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v13 = v9;
    *v8 = 136315394;
    *(v8 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v6, &v13);
    *(v8 + 12) = 2080;
    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v4, &v13);

    *(v8 + 14) = v10;
    _os_log_impl(&dword_264F1F000, v1, v2, "SwiftMLSClientCoordinator sendNegativeDelivery finished sending negative delivery for commit { identifier: %s, negativeDeliveryID: %s }", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v9, -1, -1);
    MEMORY[0x266755550](v8, -1, -1);
  }

  else
  {
  }

  v11 = v0[1];

  return v11();
}

{
  v22 = v0;

  v1 = *(v0 + 176);
  v3 = *(v0 + 184);
  v2 = *(v0 + 192);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 328);
  if (v6)
  {
    v18 = *(v0 + 320);
    v20 = v3;
    v8 = *(v0 + 224);
    v9 = *(v0 + 232);
    v10 = swift_slowAlloc();
    v19 = v1;
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v21 = v12;
    *v10 = 136315650;
    *(v10 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, &v21);
    *(v10 + 12) = 2080;
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v7, &v21);

    *(v10 + 14) = v13;
    *(v10 + 22) = 2112;
    lazy protocol witness table accessor for type MLS.SigningError and conformance MLS.SigningError();
    swift_allocError();
    *v14 = v19;
    *(v14 + 8) = v20;
    *(v14 + 16) = v2;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 24) = v15;
    *v11 = v15;
    _os_log_impl(&dword_264F1F000, v4, v5, "SwiftMLSClientCoordinator sendNegativeDelivery failed to send a negative delivery for commit { identifier: %s, negativeDeliveryID: %s, error: %@ }", v10, 0x20u);
    outlined destroy of NSObject?(v11, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x266755550](v11, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x266755550](v12, -1, -1);
    MEMORY[0x266755550](v10, -1, -1);
  }

  else
  {
  }

  v16 = *(v0 + 8);

  return v16();
}

uint64_t MLS.SwiftMLSClientCoordinator.handleIncomingApplicationMessage(eventIdentifier:message:applicationMessageData:group:swiftMLSGroup:metricCollector:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 2176) = v8;
  *(v9 + 2168) = v28;
  *(v9 + 2160) = v26;
  *(v9 + 2152) = a8;
  *(v9 + 2144) = a7;
  *(v9 + 2136) = a6;
  *(v9 + 2128) = a5;
  *(v9 + 2120) = a3;
  *(v9 + 2112) = a2;
  *(v9 + 2104) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  *(v9 + 2184) = swift_task_alloc();
  v11 = type metadata accessor for MLS.Group.GroupInfo();
  *(v9 + 2192) = v11;
  *(v9 + 2200) = *(v11 - 8);
  *(v9 + 2208) = swift_task_alloc();
  *(v9 + 2216) = swift_task_alloc();
  v12 = *(a4 + 24);
  *(v9 + 2224) = *(a4 + 16);
  *(v9 + 2232) = v12;
  v13 = *(a4 + 32);
  v14 = *(a4 + 40);
  *(v9 + 2240) = v13;
  *(v9 + 2248) = v14;
  *(v9 + 2256) = *(a4 + 48);
  *(v9 + 1721) = *(a4 + 56);
  *(v9 + 2264) = *v27;
  v15 = *(v28 + 16);
  *(v9 + 16) = *v28;
  *(v9 + 32) = v15;
  v16 = *(v28 + 32);
  v17 = *(v28 + 48);
  v18 = *(v28 + 80);
  *(v9 + 80) = *(v28 + 64);
  *(v9 + 96) = v18;
  *(v9 + 48) = v16;
  *(v9 + 64) = v17;
  v19 = *(v28 + 96);
  v20 = *(v28 + 112);
  v21 = *(v28 + 128);
  v22 = *(v28 + 144);
  *(v9 + 176) = *(v28 + 160);
  *(v9 + 144) = v21;
  *(v9 + 160) = v22;
  *(v9 + 112) = v19;
  *(v9 + 128) = v20;

  outlined copy of MLS.AllMember(v13, v14);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v23 = static MLSActor.shared;
  *(v9 + 2272) = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.SwiftMLSClientCoordinator.handleIncomingApplicationMessage(eventIdentifier:message:applicationMessageData:group:swiftMLSGroup:metricCollector:context:), v23, 0);
}

uint64_t MLS.SwiftMLSClientCoordinator.handleIncomingApplicationMessage(eventIdentifier:message:applicationMessageData:group:swiftMLSGroup:metricCollector:context:)()
{
  v27 = v0;
  v1 = *(v0 + 1721);
  v2 = *(v0 + 2256);
  v3 = *(v0 + 2232);
  v4 = *(v0 + 2224);
  v5 = *(v0 + 2168);
  v6 = *(v0 + 2136);
  v7 = *(v0 + 2128);
  v8 = *(v0 + 2120);
  v9 = *(v0 + 2112);
  v10 = *(v0 + 2240);
  *(v0 + 2024) = *(v5 + 16);
  *&v26[7] = *(v5 + 16);
  *(v0 + 1824) = v9;
  *(v0 + 1832) = v8;
  *(v0 + 1840) = v10;
  *(v0 + 1856) = v2;
  *(v0 + 1864) = v1;
  *(v0 + 1865) = *v26;
  *(v0 + 1880) = *&v26[15];
  *(v0 + 1888) = v7;
  *(v0 + 1896) = v6;
  *(v0 + 1904) = v4;
  *(v0 + 1912) = v3;
  *(v0 + 1760) = *(v0 + 1856);
  *(v0 + 1776) = *(v0 + 1872);
  *(v0 + 1792) = *(v0 + 1888);
  *(v0 + 1808) = *(v0 + 1904);
  *(v0 + 1728) = *(v0 + 1824);
  *(v0 + 1744) = *(v0 + 1840);
  *(v0 + 2280) = direct field offset for MLS.SwiftMLSClientCoordinator.logger;
  outlined init with copy of MLS.OutgoingEventState?(v0 + 2024, v0 + 2040, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
  outlined init with copy of MLS.OutgoingEventState?(v0 + 2024, v0 + 2056, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);

  outlined copy of Data._Representation(v7, v6);
  outlined init with copy of MLS.OutgoingEventState?(v0 + 16, v0 + 184, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  outlined destroy of NSObject?(v0 + 16, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v26 = v14;
    *v13 = 136315138;
    v15 = *(v0 + 16);
    v16 = *(v0 + 24);

    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, v26);

    *(v13 + 4) = v17;
    _os_log_impl(&dword_264F1F000, v11, v12, "SwiftMLSClientCoordinator processIncoming sending incoming application message event { identifier: %s }", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v14);
    MEMORY[0x266755550](v14, -1, -1);
    MEMORY[0x266755550](v13, -1, -1);
  }

  v18 = *(v0 + 2176);
  v19 = *(v0 + 2160);
  *(v0 + 2288) = v18[12];
  v20 = *(v0 + 1776);
  *(v0 + 1656) = *(v0 + 1760);
  *(v0 + 1672) = v20;
  v21 = *(v0 + 1808);
  *(v0 + 1688) = *(v0 + 1792);
  *(v0 + 1704) = v21;
  v22 = *(v0 + 1744);
  *(v0 + 1624) = *(v0 + 1728);
  *(v0 + 1640) = v22;
  *(v0 + 1720) = 0;
  outlined init with copy of ServerBag.MLS(v19, v0 + 1920);
  *(v0 + 2296) = v18[10];
  *(v0 + 2304) = v18[11];
  v23 = direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier;
  *(v0 + 2312) = direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier;
  v24 = (v18 + v23);
  *(v0 + 2320) = *v24;
  *(v0 + 2328) = v24[1];

  return MEMORY[0x2822009F8](MLS.SwiftMLSClientCoordinator.handleIncomingApplicationMessage(eventIdentifier:message:applicationMessageData:group:swiftMLSGroup:metricCollector:context:), 0, 0);
}

{
  v1 = v0[243];
  v2 = v0[244];
  __swift_project_boxed_opaque_existential_1(v0 + 240, v1);
  v3 = *(v2 + 32);

  v6 = (v3 + *v3);
  v4 = swift_task_alloc();
  v0[292] = v4;
  *v4 = v0;
  v4[1] = MLS.SwiftMLSClientCoordinator.handleIncomingApplicationMessage(eventIdentifier:message:applicationMessageData:group:swiftMLSGroup:metricCollector:context:);

  return v6(v1, v2);
}

{
  v1 = v0[243];
  v2 = v0[244];
  __swift_project_boxed_opaque_existential_1(v0 + 240, v1);
  v5 = (*(v2 + 24) + **(v2 + 24));
  v3 = swift_task_alloc();
  v0[295] = v3;
  *v3 = v0;
  v3[1] = MLS.SwiftMLSClientCoordinator.handleIncomingApplicationMessage(eventIdentifier:message:applicationMessageData:group:swiftMLSGroup:metricCollector:context:);

  return v5(v1, v2);
}

{
  v0[319] = v0[293];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 240);

  v1 = v0[284];

  return MEMORY[0x2822009F8](MLS.SwiftMLSClientCoordinator.handleIncomingApplicationMessage(eventIdentifier:message:applicationMessageData:group:swiftMLSGroup:metricCollector:context:), v1, 0);
}

{
  v2 = *v1;
  *(*v1 + 2384) = v0;

  if (v0)
  {
    outlined destroy of NSObject?(v2 + 2024, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
    v3 = MLS.SwiftMLSClientCoordinator.handleIncomingApplicationMessage(eventIdentifier:message:applicationMessageData:group:swiftMLSGroup:metricCollector:context:);
  }

  else
  {
    v3 = MLS.SwiftMLSClientCoordinator.handleIncomingApplicationMessage(eventIdentifier:message:applicationMessageData:group:swiftMLSGroup:metricCollector:context:);
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  v1 = v0[243];
  v2 = v0[244];
  __swift_project_boxed_opaque_existential_1(v0 + 240, v1);
  v5 = (*(v2 + 64) + **(v2 + 64));
  v3 = swift_task_alloc();
  v0[306] = v3;
  *v3 = v0;
  v3[1] = MLS.SwiftMLSClientCoordinator.handleIncomingApplicationMessage(eventIdentifier:message:applicationMessageData:group:swiftMLSGroup:metricCollector:context:);

  return v5(v1, v2);
}

{
  v0[319] = v0[298];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 240);

  v1 = v0[284];

  return MEMORY[0x2822009F8](MLS.SwiftMLSClientCoordinator.handleIncomingApplicationMessage(eventIdentifier:message:applicationMessageData:group:swiftMLSGroup:metricCollector:context:), v1, 0);
}

{
  v1 = v0[305];
  v2 = v0[300];
  v3 = v0[299];
  if (v1 >> 60 == 15)
  {
    v4 = 0xC000000000000000;
  }

  else
  {
    v4 = v0[305];
  }

  if (v1 >> 60 == 15)
  {
    v5 = 0;
  }

  else
  {
    v5 = v0[304];
  }

  v0[319] = v0[307];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 240);

  outlined consume of Data._Representation(v3, v2);
  outlined consume of Data._Representation(v5, v4);
  v6 = v0[284];

  return MEMORY[0x2822009F8](MLS.SwiftMLSClientCoordinator.handleIncomingApplicationMessage(eventIdentifier:message:applicationMessageData:group:swiftMLSGroup:metricCollector:context:), v6, 0);
}

{
  v1 = *(v0 + 2528);
  v2 = (v0 + 1000);
  v3 = *(v0 + 2520);
  v25 = v3;
  v26 = v1;
  v4 = *(v0 + 2464);
  v5 = *(v0 + 2440);
  v6 = *(v0 + 2400);
  v7 = *(v0 + 2392);
  v23 = v7;
  v24 = v6;
  v8 = *(v0 + 2368);
  v22 = v8;
  v9 = *(v0 + 2352);
  v27 = *(v0 + 2288);
  v10 = *(v0 + 2152);
  v11 = *(v0 + 2144);
  if (v4 >> 60 == 15)
  {
    v12 = 0xC000000000000000;
  }

  else
  {
    v12 = *(v0 + 2464);
  }

  if (v4 >> 60 == 15)
  {
    v13 = 0;
  }

  else
  {
    v13 = *(v0 + 2472);
  }

  if (v5 >> 60 == 15)
  {
    v14 = 0xC000000000000000;
  }

  else
  {
    v14 = *(v0 + 2440);
  }

  if (v5 >> 60 == 15)
  {
    v15 = 0;
  }

  else
  {
    v15 = *(v0 + 2432);
  }

  if ((v9 & 0x100000000) != 0)
  {
    v16 = 1;
  }

  else
  {
    v16 = v9;
  }

  *(v0 + 792) = v11;
  *(v0 + 800) = v10;
  *(v0 + 808) = v16;
  *(v0 + 816) = v16;
  *(v0 + 824) = v8;
  *(v0 + 832) = v7;
  *(v0 + 840) = v6;
  *(v0 + 848) = v15;
  *(v0 + 856) = v14;
  *(v0 + 864) = v13;
  *(v0 + 872) = v12;
  *(v0 + 880) = v1;
  *(v0 + 888) = v3;
  outlined init with copy of MLS.Group(v0 + 792, v0 + 896);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 1920));
  *(v0 + 688) = v11;
  *(v0 + 696) = v10;
  *(v0 + 704) = v16;
  *(v0 + 712) = v16;
  *(v0 + 720) = v22;
  *(v0 + 728) = v23;
  *(v0 + 736) = v24;
  *(v0 + 744) = v15;
  *(v0 + 752) = v14;
  *(v0 + 760) = v13;
  *(v0 + 768) = v12;
  *(v0 + 776) = v26;
  *(v0 + 784) = v25;
  outlined destroy of MLS.Group(v0 + 688);
  v17 = *(v0 + 808);
  *v2 = *(v0 + 792);
  *(v0 + 1016) = v17;
  *(v0 + 1096) = *(v0 + 888);
  v18 = *(v0 + 872);
  *(v0 + 1064) = *(v0 + 856);
  *(v0 + 1080) = v18;
  v19 = *(v0 + 840);
  *(v0 + 1032) = *(v0 + 824);
  *(v0 + 1048) = v19;
  v28 = (*(*v27 + 384) + **(*v27 + 384));
  v20 = swift_task_alloc();
  *(v0 + 2536) = v20;
  *v20 = v0;
  v20[1] = MLS.SwiftMLSClientCoordinator.handleIncomingApplicationMessage(eventIdentifier:message:applicationMessageData:group:swiftMLSGroup:metricCollector:context:);

  return v28(v0 + 1624, v2, 1, 0);
}

{
  v2 = *v1;
  v3 = *v1 + 1000;
  *(*v1 + 2544) = v0;

  if (v0)
  {
    v4 = *(v2 + 2272);
    outlined destroy of NSObject?(v2 + 2024, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
    v6 = *(v3 + 16);
    v5 = *(v3 + 32);
    *(v2 + 1104) = *v3;
    *(v2 + 1120) = v6;
    *(v2 + 1136) = v5;
    v8 = *(v3 + 64);
    v7 = *(v3 + 80);
    v9 = *(v3 + 96);
    *(v2 + 1152) = *(v3 + 48);
    *(v2 + 1200) = v9;
    *(v2 + 1184) = v7;
    *(v2 + 1168) = v8;
    outlined destroy of MLS.Group(v2 + 1104);
    v10 = MLS.SwiftMLSClientCoordinator.handleIncomingApplicationMessage(eventIdentifier:message:applicationMessageData:group:swiftMLSGroup:metricCollector:context:);
  }

  else
  {
    v4 = *(v2 + 2272);
    v12 = *(v3 + 16);
    v11 = *(v3 + 32);
    *(v2 + 1208) = *v3;
    *(v2 + 1224) = v12;
    *(v2 + 1240) = v11;
    v14 = *(v3 + 64);
    v13 = *(v3 + 80);
    v15 = *(v3 + 48);
    *(v2 + 1304) = *(v3 + 96);
    *(v2 + 1272) = v14;
    *(v2 + 1288) = v13;
    *(v2 + 1256) = v15;
    outlined destroy of MLS.Group(v2 + 1208);
    v10 = MLS.SwiftMLSClientCoordinator.handleIncomingApplicationMessage(eventIdentifier:message:applicationMessageData:group:swiftMLSGroup:metricCollector:context:);
  }

  return MEMORY[0x2822009F8](v10, v4, 0);
}

{
  v1 = v0[308];
  v2 = v0[305];
  v3 = v0[300];
  v4 = v0[299];
  if (v1 >> 60 == 15)
  {
    v5 = 0xC000000000000000;
  }

  else
  {
    v5 = v0[308];
  }

  if (v1 >> 60 == 15)
  {
    v6 = 0;
  }

  else
  {
    v6 = v0[309];
  }

  if (v2 >> 60 == 15)
  {
    v7 = 0xC000000000000000;
  }

  else
  {
    v7 = v0[305];
  }

  if (v2 >> 60 == 15)
  {
    v8 = 0;
  }

  else
  {
    v8 = v0[304];
  }

  v0[319] = v0[314];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 240);

  outlined consume of Data._Representation(v4, v3);
  outlined consume of Data._Representation(v8, v7);
  outlined consume of Data._Representation(v6, v5);
  v9 = v0[284];

  return MEMORY[0x2822009F8](MLS.SwiftMLSClientCoordinator.handleIncomingApplicationMessage(eventIdentifier:message:applicationMessageData:group:swiftMLSGroup:metricCollector:context:), v9, 0);
}

{
  outlined destroy of NSObject?(v0 + 1824, &_s15SecureMessaging3MLSO26IncomingApplicationMessageVy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO26IncomingApplicationMessageVy_AC9AllMemberO10Foundation4DataVGMR);

  v1 = *(v0 + 8);

  return v1();
}

{
  v25 = v0;
  v1 = *(v0 + 2272);
  v2 = *(v0 + 2184);
  v3 = *(v0 + 2176);
  v4 = *(v0 + 2152);
  v5 = *(v0 + 2144);
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v2, 1, 1, v6);
  v7 = lazy protocol witness table accessor for type MLS.AddMembersOperation and conformance MLS.AddMembersOperation(&lazy protocol witness table cache variable for type MLSActor and conformance MLSActor, type metadata accessor for MLSActor, &protocol conformance descriptor for MLSActor);
  v8 = swift_allocObject();
  v9 = *(v0 + 112);
  *(v8 + 152) = *(v0 + 128);
  v10 = *(v0 + 160);
  *(v8 + 168) = *(v0 + 144);
  *(v8 + 184) = v10;
  v11 = *(v0 + 48);
  *(v8 + 88) = *(v0 + 64);
  v12 = *(v0 + 96);
  *(v8 + 104) = *(v0 + 80);
  *(v8 + 120) = v12;
  *(v8 + 136) = v9;
  v13 = *(v0 + 32);
  *(v8 + 40) = *(v0 + 16);
  *(v8 + 56) = v13;
  *(v8 + 16) = v1;
  *(v8 + 24) = v7;
  *(v8 + 32) = v3;
  v14 = *(v0 + 176);
  *(v8 + 72) = v11;
  *(v8 + 200) = v14;
  *(v8 + 208) = v5;
  *(v8 + 216) = v4;
  outlined init with copy of MLS.OutgoingEventState?(v0 + 16, v0 + 352, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);

  _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v2, &async function pointer to partial apply for closure #1 in MLS.SwiftMLSClientCoordinator.handleIncomingApplicationMessage(eventIdentifier:message:applicationMessageData:group:swiftMLSGroup:metricCollector:context:), v8);

  outlined init with copy of MLS.OutgoingEventState?(v0 + 16, v0 + 520, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  outlined destroy of NSObject?(v0 + 16, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v24 = v18;
    *v17 = 136315138;
    v19 = *(v0 + 16);
    v20 = *(v0 + 24);

    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v20, &v24);

    *(v17 + 4) = v21;
    _os_log_impl(&dword_264F1F000, v15, v16, "SwiftMLSClientCoordinator processIncoming application message returning processedContext to caller { identifier: %s }", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v18);
    MEMORY[0x266755550](v18, -1, -1);
    MEMORY[0x266755550](v17, -1, -1);
  }

  v22 = (*(v0 + 2176) + *(v0 + 2312));
  outlined init with copy of ServerBag.MLS(*(v0 + 2160), v0 + 1960);
  *(v0 + 2560) = *v22;
  *(v0 + 2568) = v22[1];

  return MEMORY[0x2822009F8](MLS.SwiftMLSClientCoordinator.handleIncomingApplicationMessage(eventIdentifier:message:applicationMessageData:group:swiftMLSGroup:metricCollector:context:), 0, 0);
}

{
  v1 = v0[248];
  v2 = v0[249];
  __swift_project_boxed_opaque_existential_1(v0 + 245, v1);
  v3 = *(v2 + 32);

  v6 = (v3 + *v3);
  v4 = swift_task_alloc();
  v0[322] = v4;
  *v4 = v0;
  v4[1] = MLS.SwiftMLSClientCoordinator.handleIncomingApplicationMessage(eventIdentifier:message:applicationMessageData:group:swiftMLSGroup:metricCollector:context:);

  return v6(v1, v2);
}

{
  v1 = v0[248];
  v2 = v0[249];
  __swift_project_boxed_opaque_existential_1(v0 + 245, v1);
  v5 = (*(v2 + 24) + **(v2 + 24));
  v3 = swift_task_alloc();
  v0[324] = v3;
  *v3 = v0;
  v3[1] = MLS.SwiftMLSClientCoordinator.handleIncomingApplicationMessage(eventIdentifier:message:applicationMessageData:group:swiftMLSGroup:metricCollector:context:);

  return v5(v1, v2);
}

{
  v0[342] = v0[323];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 245);

  v1 = v0[284];

  return MEMORY[0x2822009F8](MLS.SwiftMLSClientCoordinator.handleIncomingApplicationMessage(eventIdentifier:message:applicationMessageData:group:swiftMLSGroup:metricCollector:context:), v1, 0);
}

{
  v2 = *v1;
  *(*v1 + 2616) = v0;

  if (v0)
  {
    outlined destroy of NSObject?(v2 + 2024, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
    v3 = MLS.SwiftMLSClientCoordinator.handleIncomingApplicationMessage(eventIdentifier:message:applicationMessageData:group:swiftMLSGroup:metricCollector:context:);
  }

  else
  {
    v3 = MLS.SwiftMLSClientCoordinator.handleIncomingApplicationMessage(eventIdentifier:message:applicationMessageData:group:swiftMLSGroup:metricCollector:context:);
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  v1 = v0[248];
  v2 = v0[249];
  __swift_project_boxed_opaque_existential_1(v0 + 245, v1);
  v5 = (*(v2 + 64) + **(v2 + 64));
  v3 = swift_task_alloc();
  v0[333] = v3;
  *v3 = v0;
  v3[1] = MLS.SwiftMLSClientCoordinator.handleIncomingApplicationMessage(eventIdentifier:message:applicationMessageData:group:swiftMLSGroup:metricCollector:context:);

  return v5(v1, v2);
}

{
  v0[342] = v0[327];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 245);

  v1 = v0[284];

  return MEMORY[0x2822009F8](MLS.SwiftMLSClientCoordinator.handleIncomingApplicationMessage(eventIdentifier:message:applicationMessageData:group:swiftMLSGroup:metricCollector:context:), v1, 0);
}

{
  v1 = v0[332];
  v2 = v0[329];
  v3 = v0[328];
  if (v1 >> 60 == 15)
  {
    v4 = 0xC000000000000000;
  }

  else
  {
    v4 = v0[332];
  }

  if (v1 >> 60 == 15)
  {
    v5 = 0;
  }

  else
  {
    v5 = v0[331];
  }

  v0[342] = v0[334];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 245);

  outlined consume of Data._Representation(v3, v2);
  outlined consume of Data._Representation(v5, v4);
  v6 = v0[284];

  return MEMORY[0x2822009F8](MLS.SwiftMLSClientCoordinator.handleIncomingApplicationMessage(eventIdentifier:message:applicationMessageData:group:swiftMLSGroup:metricCollector:context:), v6, 0);
}

{
  v1 = *(v0 + 2728);
  v2 = *(v0 + 2720);
  v3 = *(v0 + 2712);
  v4 = *(v0 + 2680);
  v5 = *(v0 + 2656);
  v6 = *(v0 + 2632);
  v18 = v6;
  v19 = v2;
  v7 = *(v0 + 2624);
  v17 = v7;
  v8 = *(v0 + 2600);
  v20 = *(v0 + 2272);
  v9 = *(v0 + 2152);
  v10 = *(v0 + 2144);
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
    v12 = *(v0 + 2680);
  }

  if (v4 >> 60 == 15)
  {
    v13 = 0;
  }

  else
  {
    v13 = *(v0 + 2688);
  }

  if (v5 >> 60 == 15)
  {
    v14 = 0xC000000000000000;
  }

  else
  {
    v14 = *(v0 + 2656);
  }

  if (v5 >> 60 == 15)
  {
    v15 = 0;
  }

  else
  {
    v15 = *(v0 + 2648);
  }

  *(v0 + 1416) = v10;
  *(v0 + 1424) = v9;
  *(v0 + 1432) = v11;
  *(v0 + 1440) = v11;
  *(v0 + 1448) = v8;
  *(v0 + 1456) = v7;
  *(v0 + 1464) = v6;
  *(v0 + 1472) = v15;
  *(v0 + 1480) = v14;
  *(v0 + 1488) = v13;
  *(v0 + 1496) = v12;
  *(v0 + 1504) = v1;
  *(v0 + 1512) = v2;
  outlined init with copy of MLS.Group(v0 + 1416, v0 + 1520);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 1960));
  *(v0 + 1312) = v10;
  *(v0 + 1320) = v9;
  *(v0 + 1328) = v11;
  *(v0 + 1336) = v11;
  *(v0 + 1344) = v8;
  *(v0 + 1352) = v17;
  *(v0 + 1360) = v18;
  *(v0 + 1368) = v15;
  *(v0 + 1376) = v14;
  *(v0 + 1384) = v13;
  *(v0 + 1392) = v12;
  *(v0 + 1400) = v1;
  *(v0 + 1408) = v19;
  outlined destroy of MLS.Group(v0 + 1312);

  return MEMORY[0x2822009F8](MLS.SwiftMLSClientCoordinator.handleIncomingApplicationMessage(eventIdentifier:message:applicationMessageData:group:swiftMLSGroup:metricCollector:context:), v20, 0);
}

{
  v1 = *(v0 + 2264);
  v2 = *(v0 + 2104);
  outlined destroy of NSObject?(v0 + 1824, &_s15SecureMessaging3MLSO26IncomingApplicationMessageVy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO26IncomingApplicationMessageVy_AC9AllMemberO10Foundation4DataVGMR);
  *v2 = *(v0 + 2024);
  v3 = *(v0 + 1512);
  v5 = *(v0 + 1480);
  v4 = *(v0 + 1496);
  *(v2 + 64) = *(v0 + 1464);
  *(v2 + 80) = v5;
  *(v2 + 96) = v4;
  *(v2 + 112) = v3;
  v7 = *(v0 + 1432);
  v6 = *(v0 + 1448);
  *(v2 + 16) = *(v0 + 1416);
  *(v2 + 32) = v7;
  *(v2 + 48) = v6;
  *(v2 + 120) = v1;

  v8 = *(v0 + 8);

  return v8();
}

{
  v1 = v0[335];
  v2 = v0[332];
  v3 = v0[329];
  v4 = v0[328];
  if (v1 >> 60 == 15)
  {
    v5 = 0xC000000000000000;
  }

  else
  {
    v5 = v0[335];
  }

  if (v1 >> 60 == 15)
  {
    v6 = 0;
  }

  else
  {
    v6 = v0[336];
  }

  if (v2 >> 60 == 15)
  {
    v7 = 0xC000000000000000;
  }

  else
  {
    v7 = v0[332];
  }

  if (v2 >> 60 == 15)
  {
    v8 = 0;
  }

  else
  {
    v8 = v0[331];
  }

  v0[342] = v0[338];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 245);

  outlined consume of Data._Representation(v4, v3);
  outlined consume of Data._Representation(v8, v7);
  outlined consume of Data._Representation(v6, v5);
  v9 = v0[284];

  return MEMORY[0x2822009F8](MLS.SwiftMLSClientCoordinator.handleIncomingApplicationMessage(eventIdentifier:message:applicationMessageData:group:swiftMLSGroup:metricCollector:context:), v9, 0);
}

{
  outlined destroy of NSObject?(v0 + 1824, &_s15SecureMessaging3MLSO26IncomingApplicationMessageVy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO26IncomingApplicationMessageVy_AC9AllMemberO10Foundation4DataVGMR);

  v1 = *(v0 + 8);

  return v1();
}

{
  outlined destroy of NSObject?(v0 + 1824, &_s15SecureMessaging3MLSO26IncomingApplicationMessageVy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO26IncomingApplicationMessageVy_AC9AllMemberO10Foundation4DataVGMR);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t MLS.SwiftMLSClientCoordinator.handleIncomingApplicationMessage(eventIdentifier:message:applicationMessageData:group:swiftMLSGroup:metricCollector:context:)(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 2344) = v1;

  if (v1)
  {
    outlined destroy of NSObject?(v4 + 2024, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
    v5 = MLS.SwiftMLSClientCoordinator.handleIncomingApplicationMessage(eventIdentifier:message:applicationMessageData:group:swiftMLSGroup:metricCollector:context:);
  }

  else
  {
    *(v4 + 2352) = a1;
    v5 = MLS.SwiftMLSClientCoordinator.handleIncomingApplicationMessage(eventIdentifier:message:applicationMessageData:group:swiftMLSGroup:metricCollector:context:);
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

{
  *(*v1 + 2368) = a1;

  return MEMORY[0x2822009F8](MLS.SwiftMLSClientCoordinator.handleIncomingApplicationMessage(eventIdentifier:message:applicationMessageData:group:swiftMLSGroup:metricCollector:context:), 0, 0);
}

{
  v2 = v1[277];
  v3 = v1[275];
  v4 = v1[274];
  v1[299] = MLS.Group.GroupInfo.rawRepresentation.getter();
  v1[300] = v5;
  v6 = *(v3 + 8);
  v1[301] = v6;
  v1[302] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v2, v4);
  v7 = v1[243];
  v8 = v1[244];
  __swift_project_boxed_opaque_existential_1(v1 + 240, v7);
  v11 = (*(v8 + 56) + **(v8 + 56));
  v9 = swift_task_alloc();
  v1[303] = v9;
  *v9 = v1;
  v9[1] = MLS.SwiftMLSClientCoordinator.handleIncomingApplicationMessage(eventIdentifier:message:applicationMessageData:group:swiftMLSGroup:metricCollector:context:);

  return v11(v7, v8);
}

{
  v3 = *v2;
  v3[250] = v2;
  v3[251] = a1;
  v3[252] = v1;
  v3[323] = v1;

  if (v1)
  {
    outlined destroy of NSObject?((v3 + 253), &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
    v4 = MLS.SwiftMLSClientCoordinator.handleIncomingApplicationMessage(eventIdentifier:message:applicationMessageData:group:swiftMLSGroup:metricCollector:context:);
  }

  else
  {
    v4 = MLS.SwiftMLSClientCoordinator.handleIncomingApplicationMessage(eventIdentifier:message:applicationMessageData:group:swiftMLSGroup:metricCollector:context:);
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

{
  *(*v1 + 2600) = a1;

  return MEMORY[0x2822009F8](MLS.SwiftMLSClientCoordinator.handleIncomingApplicationMessage(eventIdentifier:message:applicationMessageData:group:swiftMLSGroup:metricCollector:context:), 0, 0);
}

{
  v2 = v1[301];
  v3 = v1[276];
  v4 = v1[274];
  v1[328] = MLS.Group.GroupInfo.rawRepresentation.getter();
  v1[329] = v5;
  v2(v3, v4);
  v6 = v1[248];
  v7 = v1[249];
  __swift_project_boxed_opaque_existential_1(v1 + 245, v6);
  v10 = (*(v7 + 56) + **(v7 + 56));
  v8 = swift_task_alloc();
  v1[330] = v8;
  *v8 = v1;
  v8[1] = MLS.SwiftMLSClientCoordinator.handleIncomingApplicationMessage(eventIdentifier:message:applicationMessageData:group:swiftMLSGroup:metricCollector:context:);

  return v10(v6, v7);
}

void MLS.SwiftMLSClientCoordinator.handleIncomingApplicationMessage(eventIdentifier:message:applicationMessageData:group:swiftMLSGroup:metricCollector:context:)()
{
  if ((v0[296] & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v1 = v0[243];
    v2 = v0[244];
    __swift_project_boxed_opaque_existential_1(v0 + 240, v1);
    v5 = (*(v2 + 80) + **(v2 + 80));
    v3 = swift_task_alloc();
    v0[297] = v3;
    *v3 = v0;
    v3[1] = MLS.SwiftMLSClientCoordinator.handleIncomingApplicationMessage(eventIdentifier:message:applicationMessageData:group:swiftMLSGroup:metricCollector:context:);
    v4 = v0[277];

    v5(v4, v1, v2);
  }
}

{
  if ((v0[325] & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v1 = v0[248];
    v2 = v0[249];
    __swift_project_boxed_opaque_existential_1(v0 + 245, v1);
    v5 = (*(v2 + 80) + **(v2 + 80));
    v3 = swift_task_alloc();
    v0[326] = v3;
    *v3 = v0;
    v3[1] = MLS.SwiftMLSClientCoordinator.handleIncomingApplicationMessage(eventIdentifier:message:applicationMessageData:group:swiftMLSGroup:metricCollector:context:);
    v4 = v0[276];

    v5(v4, v1, v2);
  }
}

uint64_t MLS.SwiftMLSClientCoordinator.handleIncomingApplicationMessage(eventIdentifier:message:applicationMessageData:group:swiftMLSGroup:metricCollector:context:)(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 2432) = a1;
  *(v3 + 2440) = a2;

  return MEMORY[0x2822009F8](MLS.SwiftMLSClientCoordinator.handleIncomingApplicationMessage(eventIdentifier:message:applicationMessageData:group:swiftMLSGroup:metricCollector:context:), 0, 0);
}

{
  v6 = *v3;
  v6[307] = v2;

  if (v2)
  {
    outlined destroy of NSObject?((v6 + 253), &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);

    return MEMORY[0x2822009F8](MLS.SwiftMLSClientCoordinator.handleIncomingApplicationMessage(eventIdentifier:message:applicationMessageData:group:swiftMLSGroup:metricCollector:context:), 0, 0);
  }

  else
  {
    v7 = v6[291];
    v8 = v6[290];
    v17 = v6[288];
    v6[308] = a2;
    v6[309] = a1;
    ObjectType = swift_getObjectType();
    v6[310] = ObjectType;
    v6[259] = v8;
    v6[260] = v7;
    v10 = *(v17 + 64);
    v6[311] = v10;
    v6[312] = (v17 + 64) & 0xFFFFFFFFFFFFLL | 0x5374000000000000;
    v16 = (v10 + *v10);
    v11 = swift_task_alloc();
    v6[313] = v11;
    *v11 = v6;
    v11[1] = MLS.SwiftMLSClientCoordinator.handleIncomingApplicationMessage(eventIdentifier:message:applicationMessageData:group:swiftMLSGroup:metricCollector:context:);
    v12 = v6[288];
    v13 = v6[269];
    v14 = v6[268];

    return (v16)(v14, v13, v6 + 259, ObjectType, v12);
  }
}

{
  v6 = *v3;
  *(*v3 + 2512) = v2;

  if (v2)
  {
    outlined destroy of NSObject?(v6 + 2024, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
    v7 = MLS.SwiftMLSClientCoordinator.handleIncomingApplicationMessage(eventIdentifier:message:applicationMessageData:group:swiftMLSGroup:metricCollector:context:);
  }

  else
  {
    *(v6 + 2520) = a2;
    *(v6 + 2528) = a1;
    v7 = MLS.SwiftMLSClientCoordinator.handleIncomingApplicationMessage(eventIdentifier:message:applicationMessageData:group:swiftMLSGroup:metricCollector:context:);
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

{
  v3 = *v2;
  *(v3 + 2648) = a1;
  *(v3 + 2656) = a2;

  return MEMORY[0x2822009F8](MLS.SwiftMLSClientCoordinator.handleIncomingApplicationMessage(eventIdentifier:message:applicationMessageData:group:swiftMLSGroup:metricCollector:context:), 0, 0);
}

{
  v6 = *v3;
  v6[334] = v2;

  if (v2)
  {
    outlined destroy of NSObject?((v6 + 253), &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);

    return MEMORY[0x2822009F8](MLS.SwiftMLSClientCoordinator.handleIncomingApplicationMessage(eventIdentifier:message:applicationMessageData:group:swiftMLSGroup:metricCollector:context:), 0, 0);
  }

  else
  {
    v7 = v6[321];
    v8 = v6[320];
    v9 = v6[311];
    v6[335] = a2;
    v6[336] = a1;
    v6[261] = v8;
    v6[262] = v7;
    v16 = (v9 + *v9);
    v10 = swift_task_alloc();
    v6[337] = v10;
    *v10 = v6;
    v10[1] = MLS.SwiftMLSClientCoordinator.handleIncomingApplicationMessage(eventIdentifier:message:applicationMessageData:group:swiftMLSGroup:metricCollector:context:);
    v11 = v6[310];
    v12 = v6[288];
    v13 = v6[269];
    v14 = v6[268];

    return (v16)(v14, v13, v6 + 261, v11, v12);
  }
}

{
  v6 = *v3;
  *(*v3 + 2704) = v2;

  if (v2)
  {
    outlined destroy of NSObject?((v6 + 253), &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
    v7 = MLS.SwiftMLSClientCoordinator.handleIncomingApplicationMessage(eventIdentifier:message:applicationMessageData:group:swiftMLSGroup:metricCollector:context:);
  }

  else
  {
    v6[339] = v6[251];
    v6[340] = a2;
    v6[341] = a1;
    v7 = MLS.SwiftMLSClientCoordinator.handleIncomingApplicationMessage(eventIdentifier:message:applicationMessageData:group:swiftMLSGroup:metricCollector:context:);
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t closure #1 in MLS.SwiftMLSClientCoordinator.handleIncomingApplicationMessage(eventIdentifier:message:applicationMessageData:group:swiftMLSGroup:metricCollector:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[81] = a7;
  v7[80] = a6;
  v7[79] = a5;
  v7[78] = a4;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v8 = static MLSActor.shared;
  v7[82] = static MLSActor.shared;

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.handleIncomingApplicationMessage(eventIdentifier:message:applicationMessageData:group:swiftMLSGroup:metricCollector:context:), v8, 0);
}

uint64_t closure #1 in MLS.SwiftMLSClientCoordinator.handleIncomingApplicationMessage(eventIdentifier:message:applicationMessageData:group:swiftMLSGroup:metricCollector:context:)()
{
  v32 = v0;
  v1 = *(v0 + 632);
  outlined init with copy of MLS.OutgoingEventState?(v1, v0 + 16, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  outlined destroy of NSObject?(v1, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 632);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v31 = v6;
    *v5 = 136315138;
    *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*v4, *(v4 + 8), &v31);
    _os_log_impl(&dword_264F1F000, v2, v3, "SwiftMLSClientCoordinator attempting key updates due to incoming application message { identifier: %s }", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x266755550](v6, -1, -1);
    MEMORY[0x266755550](v5, -1, -1);
  }

  v28 = *(v0 + 648);
  v7 = *(v0 + 640);
  v8 = *(v0 + 632);
  v9 = *(v0 + 624);
  outlined init with copy of ServerBag.MLS(v9 + 144, v0 + 520);
  v10 = *(v9 + direct field offset for MLS.SwiftMLSClientCoordinator.featureFlagsStore);
  v11 = *(v9 + direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier + 8);
  v30 = *(v9 + direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO18KeyUpdateOperationCy_AC05GroupF5ErrorVAC22IncomingMessageContextVy_10Foundation4DataVGAC0gf9ProcessedK0Vy_ALGGMd, &_s15SecureMessaging3MLSO18KeyUpdateOperationCy_AC05GroupF5ErrorVAC22IncomingMessageContextVy_10Foundation4DataVGAC0gf9ProcessedK0Vy_ALGGMR);
  v13 = swift_allocObject();

  v27 = *(v9 + 80);
  *(v0 + 664) = v13;
  swift_unknownObjectRetain();

  Logger.init(subsystem:category:)();
  *(v13 + 16) = v7;
  *(v13 + 24) = v28;
  *(v13 + 32) = 0;
  v14 = *v8;
  v15 = *(v8 + 16);
  *(v13 + 72) = *(v8 + 32);
  *(v13 + 56) = v15;
  *(v13 + 40) = v14;
  v16 = *(v8 + 48);
  v17 = *(v8 + 64);
  v18 = *(v8 + 80);
  *(v13 + 136) = *(v8 + 96);
  *(v13 + 120) = v18;
  *(v13 + 104) = v17;
  *(v13 + 88) = v16;
  v19 = *(v8 + 112);
  v20 = *(v8 + 128);
  v21 = *(v8 + 144);
  *(v13 + 200) = *(v8 + 160);
  *(v13 + 184) = v21;
  *(v13 + 168) = v20;
  *(v13 + 152) = v19;
  outlined init with take of MLS.KeyUpdatePolicy((v0 + 520), v13 + 208);
  *(v13 + 248) = v10;
  *(v13 + 256) = v27;
  *(v13 + 272) = v30;
  *(v13 + 280) = v11;
  v22 = *(v9 + direct field offset for MLS.SwiftMLSClientCoordinator.runner);
  *(v0 + 616) = v13;
  v23 = *(*v22 + 216);
  outlined init with copy of MLS.OutgoingEventState?(v8, v0 + 184, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);

  v29 = (v23 + *v23);
  v24 = swift_task_alloc();
  *(v0 + 672) = v24;
  v25 = lazy protocol witness table accessor for type MLS.KeyPackageRetrievalResult<MLS.AllMember> and conformance MLS.KeyPackageRetrievalResult<A>(&lazy protocol witness table cache variable for type MLS.KeyUpdateOperation<MLS.GroupOperationError, MLS.IncomingMessageContext<Data>, MLS.GroupOperationProcessedContext<Data>> and conformance MLS.KeyUpdateOperation<A, B, C>, &_s15SecureMessaging3MLSO18KeyUpdateOperationCy_AC05GroupF5ErrorVAC22IncomingMessageContextVy_10Foundation4DataVGAC0gf9ProcessedK0Vy_ALGGMd, &_s15SecureMessaging3MLSO18KeyUpdateOperationCy_AC05GroupF5ErrorVAC22IncomingMessageContextVy_10Foundation4DataVGAC0gf9ProcessedK0Vy_ALGGMR, &protocol conformance descriptor for MLS.KeyUpdateOperation<A, B, C>);
  *v24 = v0;
  v24[1] = closure #1 in MLS.SwiftMLSClientCoordinator.handleIncomingApplicationMessage(eventIdentifier:message:applicationMessageData:group:swiftMLSGroup:metricCollector:context:);

  return v29(v0 + 560, v0 + 616, v12, v25, v0 + 592);
}

{
  v2 = *v1;

  if (v0)
  {
    v3 = v2[82];
    v4 = closure #1 in MLS.SwiftMLSClientCoordinator.handleIncomingApplicationMessage(eventIdentifier:message:applicationMessageData:group:swiftMLSGroup:metricCollector:context:);
  }

  else
  {
    v5 = v2[82];
    outlined consume of Data?(v2[70], v2[71]);

    v4 = closure #1 in MLS.SwiftMLSClientCoordinator.handleIncomingApplicationMessage(eventIdentifier:message:applicationMessageData:group:swiftMLSGroup:metricCollector:context:);
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{
  v1 = *(v0 + 632);
  v3 = *(v1 + 16);
  v2 = *(v1 + 32);
  *(v0 + 352) = *v1;
  *(v0 + 368) = v3;
  *(v0 + 384) = v2;
  v4 = *(v1 + 96);
  v6 = *(v1 + 48);
  v5 = *(v1 + 64);
  *(v0 + 432) = *(v1 + 80);
  *(v0 + 448) = v4;
  *(v0 + 400) = v6;
  *(v0 + 416) = v5;
  v8 = *(v1 + 128);
  v7 = *(v1 + 144);
  v9 = *(v1 + 112);
  *(v0 + 512) = *(v1 + 160);
  *(v0 + 480) = v8;
  *(v0 + 496) = v7;
  *(v0 + 464) = v9;
  v10 = swift_task_alloc();
  *(v0 + 680) = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
  *v10 = v0;
  v10[1] = closure #1 in MLS.SwiftMLSClientCoordinator.handleIncomingApplicationMessage(eventIdentifier:message:applicationMessageData:group:swiftMLSGroup:metricCollector:context:);
  v12 = *(v0 + 648);
  v13 = *(v0 + 640);

  return MLS.SwiftMLSClientCoordinator.updateKeyPackageIfNeeded<A>(group:context:)(v13, v12, v0 + 352, v11, &protocol witness table for <> MLS.IncomingMessageContext<A>);
}

{
  v2 = *v1;
  *(*v1 + 688) = v0;

  v3 = *(v2 + 656);
  if (v0)
  {
    v4 = closure #1 in MLS.SwiftMLSClientCoordinator.handleIncomingApplicationMessage(eventIdentifier:message:applicationMessageData:group:swiftMLSGroup:metricCollector:context:);
  }

  else
  {
    v4 = closure #1 in MLS.SwiftMLSClientCoordinator.handleIncomingApplicationMessage(eventIdentifier:message:applicationMessageData:group:swiftMLSGroup:metricCollector:context:);
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

{
  v1 = *(v0 + 592);
  v2 = *(v0 + 600);
  v3 = *(v0 + 608);
  lazy protocol witness table accessor for type MLS.GroupOperationError and conformance MLS.GroupOperationError();
  swift_allocError();
  *v4 = v1;
  *(v4 + 8) = v2;
  *(v4 + 16) = v3;

  v5 = *(v0 + 8);

  return v5();
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t MLS.SwiftMLSClientCoordinator.processIncoming(failureToDecrypt:withGroup:context:)(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 2024) = v5;
  *(v6 + 2016) = a4;
  *(v6 + 2008) = a3;
  *(v6 + 2000) = a1;
  v9 = type metadata accessor for MLS.Group.GroupInfo();
  *(v6 + 2032) = v9;
  *(v6 + 2040) = *(v9 - 8);
  *(v6 + 2048) = swift_task_alloc();
  v10 = type metadata accessor for MLS.Group.IncomingSignedMessage();
  *(v6 + 2056) = v10;
  *(v6 + 2064) = *(v10 - 8);
  *(v6 + 2072) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8SwiftMLS0B0O5GroupO7MessageVSgMd, &_s8SwiftMLS0B0O5GroupO7MessageVSgMR);
  *(v6 + 2080) = swift_task_alloc();
  v11 = type metadata accessor for MLS.Group.Message();
  *(v6 + 2088) = v11;
  *(v6 + 2096) = *(v11 - 8);
  *(v6 + 2104) = swift_task_alloc();
  v12 = type metadata accessor for MLS.Group.ReceivedMessage();
  *(v6 + 2112) = v12;
  *(v6 + 2120) = *(v12 - 8);
  *(v6 + 2128) = swift_task_alloc();
  *(v6 + 2136) = swift_task_alloc();
  v13 = a2[1];
  *(v6 + 1656) = *a2;
  *(v6 + 1672) = v13;
  *(v6 + 1688) = a2[2];
  *(v6 + 1697) = *(a2 + 41);
  v14 = *(a5 + 144);
  *(v6 + 480) = *(a5 + 128);
  *(v6 + 496) = v14;
  *(v6 + 512) = *(a5 + 160);
  v15 = *(a5 + 80);
  *(v6 + 416) = *(a5 + 64);
  *(v6 + 432) = v15;
  v16 = *(a5 + 112);
  *(v6 + 448) = *(a5 + 96);
  *(v6 + 464) = v16;
  v17 = *(a5 + 16);
  *(v6 + 352) = *a5;
  *(v6 + 368) = v17;
  v18 = *(a5 + 48);
  *(v6 + 384) = *(a5 + 32);
  *(v6 + 400) = v18;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v19 = static MLSActor.shared;
  *(v6 + 2144) = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.SwiftMLSClientCoordinator.processIncoming(failureToDecrypt:withGroup:context:), v19, 0);
}

void MLS.SwiftMLSClientCoordinator.processIncoming(failureToDecrypt:withGroup:context:)()
{
  v0[269] = direct field offset for MLS.SwiftMLSClientCoordinator.logger;
  outlined init with copy of MLS.OutgoingEventState?((v0 + 44), (v0 + 86), &_s15SecureMessaging3MLSO31IncomingFailureToDecryptContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO31IncomingFailureToDecryptContextVy_10Foundation4DataVGMR);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  outlined destroy of NSObject?((v0 + 44), &_s15SecureMessaging3MLSO31IncomingFailureToDecryptContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO31IncomingFailureToDecryptContextVy_10Foundation4DataVGMR);
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v13 = v4;
    *v3 = 136315138;
    v5 = v0[44];
    v6 = v0[45];

    v7 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v6, &v13);

    *(v3 + 4) = v7;
    _os_log_impl(&dword_264F1F000, v1, v2, "SwiftMLSClientCoordinator processIncomingFTD called { identifier: %s }", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v4);
    MEMORY[0x266755550](v4, -1, -1);
    MEMORY[0x266755550](v3, -1, -1);
  }

  v8 = *(v0[253] + direct field offset for MLS.SwiftMLSClientCoordinator.groupLoader);
  v0[270] = v8;
  v9 = v0[45];
  v0[271] = v0[44];
  v0[272] = v9;
  v12 = *(*v8 + 192) + **(*v8 + 192);
  v10 = swift_task_alloc();
  v0[273] = v10;
  v11 = lazy protocol witness table accessor for type MLS.IncomingMessageError and conformance MLS.IncomingMessageError();
  *v10 = v0;
  v10[1] = MLS.SwiftMLSClientCoordinator.processIncoming(failureToDecrypt:withGroup:context:);
  v15 = 0;
  v16 = 0;
  v19 = v0 + 238;
  v17 = &type metadata for MLS.IncomingMessageError;
  v18 = v11;

  __asm { BRAA            X8, X16 }
}

{
  if ((v0[293] & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v1 = v0[223];
    v2 = v0[224];
    __swift_project_boxed_opaque_existential_1(v0 + 220, v1);
    v5 = (*(v2 + 80) + **(v2 + 80));
    v3 = swift_task_alloc();
    v0[294] = v3;
    *v3 = v0;
    v3[1] = MLS.SwiftMLSClientCoordinator.processIncoming(failureToDecrypt:withGroup:context:);
    v4 = v0[256];

    v5(v4, v1, v2);
  }
}

uint64_t MLS.SwiftMLSClientCoordinator.processIncoming(failureToDecrypt:withGroup:context:)()
{
  v2 = *v1;
  *(*v1 + 2192) = v0;

  v3 = *(v2 + 2144);
  if (v0)
  {
    v4 = MLS.SwiftMLSClientCoordinator.processIncoming(failureToDecrypt:withGroup:context:);
  }

  else
  {
    v4 = MLS.SwiftMLSClientCoordinator.processIncoming(failureToDecrypt:withGroup:context:);
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{
  v47 = v0;
  v2 = *(v0 + 384);
  v1 = *(v0 + 392);
  *(v0 + 2200) = v2;
  *(v0 + 2208) = v1;
  if (v1 >> 60 == 15)
  {
    outlined init with copy of MLS.OutgoingEventState?(v0 + 352, v0 + 856, &_s15SecureMessaging3MLSO31IncomingFailureToDecryptContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO31IncomingFailureToDecryptContextVy_10Foundation4DataVGMR);
    outlined init with copy of MLS.OutgoingEventState?(v0 + 1656, v0 + 1592, &_s15SecureMessaging3MLSO24IncomingFailureToDecryptVy_AC9AllMemberOGMd, &_s15SecureMessaging3MLSO24IncomingFailureToDecryptVy_AC9AllMemberOGMR);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    outlined destroy of NSObject?(v0 + 352, &_s15SecureMessaging3MLSO31IncomingFailureToDecryptContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO31IncomingFailureToDecryptContextVy_10Foundation4DataVGMR);
    outlined destroy of NSObject?(v0 + 1656, &_s15SecureMessaging3MLSO24IncomingFailureToDecryptVy_AC9AllMemberOGMd, &_s15SecureMessaging3MLSO24IncomingFailureToDecryptVy_AC9AllMemberOGMR);
    if (os_log_type_enabled(v3, v4))
    {
      v5 = *(v0 + 2176);
      v6 = *(v0 + 2168);
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v46[0] = v8;
      *v7 = 136315394;
      *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v5, v46);
      *(v7 + 12) = 2080;
      *(v7 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v0 + 1672), *(v0 + 1680), v46);
      _os_log_impl(&dword_264F1F000, v3, v4, "SwiftMLSClientCoordinator processIncomingFTD checking for loop { identifier: %s, message: %s }", v7, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266755550](v8, -1, -1);
      MEMORY[0x266755550](v7, -1, -1);
    }

    v9 = *(v0 + 2160);
    v10 = *(v0 + 2024);
    v11 = *(v0 + 2016);
    v12 = *(v0 + 2008);
    v13 = swift_task_alloc();
    *(v0 + 2232) = v13;
    v13[2] = v10;
    v13[3] = v12;
    v13[4] = v11;
    v13[5] = v0 + 1656;
    v13[6] = v0 + 1800;
    v13[7] = v0 + 352;
    v44 = (*(*v9 + 152) + **(*v9 + 152));
    v14 = swift_task_alloc();
    *(v0 + 2240) = v14;
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO40IncomingFailureToDecryptProcessedContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO40IncomingFailureToDecryptProcessedContextVy_10Foundation4DataVGMR);
    *v14 = v0;
    v14[1] = MLS.SwiftMLSClientCoordinator.processIncoming(failureToDecrypt:withGroup:context:);
    v16 = *(v0 + 2176);
    v17 = *(v0 + 2168);
    v18 = *(v0 + 2000);

    return v44(v18, v17, v16, &async function pointer to partial apply for closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(failureToDecrypt:withGroup:context:), v13, v15);
  }

  else
  {
    v20 = *(v0 + 2192);
    v21 = *(v0 + 1824);
    v22 = *(v0 + 1832);
    __swift_project_boxed_opaque_existential_1((v0 + 1800), v21);
    outlined copy of Data?(v2, v1);
    outlined copy of Data._Representation(v2, v1);
    MLS.Group.Message.init(fromRaw:)();
    if (v20)
    {
      *(v0 + 2256) = v20;
      *(v0 + 1976) = v20;
      v23 = v20;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      if (swift_dynamicCast())
      {
        v24 = *(v0 + 2208);
        v25 = *(v0 + 2200);

        v26 = *(v0 + 1880);
        v27 = *(v0 + 1888);
        v28 = *(v0 + 1896);
        lazy protocol witness table accessor for type MLS.IncomingMessageError and conformance MLS.IncomingMessageError();
        swift_allocError();
        *v29 = v26;
        *(v29 + 8) = v27;
        *(v29 + 16) = v28;
        swift_willThrow();
        outlined consume of Data?(v25, v24);

        __swift_destroy_boxed_opaque_existential_1Tm((v0 + 1800));

        v30 = *(v0 + 8);

        return v30();
      }

      else
      {

        outlined init with copy of MLS.OutgoingEventState?(v0 + 352, v0 + 16, &_s15SecureMessaging3MLSO31IncomingFailureToDecryptContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO31IncomingFailureToDecryptContextVy_10Foundation4DataVGMR);
        v35 = Logger.logObject.getter();
        v36 = static os_log_type_t.error.getter();
        outlined destroy of NSObject?(v0 + 352, &_s15SecureMessaging3MLSO31IncomingFailureToDecryptContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO31IncomingFailureToDecryptContextVy_10Foundation4DataVGMR);
        if (os_log_type_enabled(v35, v36))
        {
          v37 = *(v0 + 2176);
          v38 = *(v0 + 2168);
          v39 = swift_slowAlloc();
          v40 = swift_slowAlloc();
          v46[0] = v40;
          *v39 = 136315138;
          *(v39 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v37, v46);
          _os_log_impl(&dword_264F1F000, v35, v36, "SwiftMLSClientCoordinator processIncomingFTD failed to validate signature. Self healing { identifier: %s }", v39, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v40);
          MEMORY[0x266755550](v40, -1, -1);
          MEMORY[0x266755550](v39, -1, -1);
        }

        outlined init with copy of ServerBag.MLS(v0 + 1800, v0 + 1720);
        *(v0 + 1336) = 0u;
        *(v0 + 1352) = 0u;
        *(v0 + 1368) = 0u;
        *(v0 + 1384) = 0u;
        v41 = swift_task_alloc();
        *(v0 + 2264) = v41;
        *v41 = v0;
        v41[1] = MLS.SwiftMLSClientCoordinator.processIncoming(failureToDecrypt:withGroup:context:);
        v42 = *(v0 + 2016);
        v43 = *(v0 + 2008);

        return MLS.SwiftMLSClientCoordinator.performSelfHeal(groupIdentifier:swiftMLSGroup:ftdInfo:isWithinPersisterTransaction:)(v43, v42, v0 + 1720, (v0 + 1336), 0);
      }
    }

    else
    {
      (*(*(v0 + 2096) + 56))(*(v0 + 2080), 1, 1, *(v0 + 2088));
      v45 = (*(v22 + 128) + **(v22 + 128));
      v31 = swift_task_alloc();
      *(v0 + 2216) = v31;
      *v31 = v0;
      v31[1] = MLS.SwiftMLSClientCoordinator.processIncoming(failureToDecrypt:withGroup:context:);
      v32 = *(v0 + 2136);
      v33 = *(v0 + 2104);
      v34 = *(v0 + 2080);

      return v45(v32, v33, v34, v21, v22);
    }
  }
}

{
  v2 = *v1;
  (*v1)[278] = v0;

  v3 = v2[268];
  v4 = v2[263];
  v5 = v2[262];
  v6 = v2[261];
  outlined destroy of NSObject?(v2[260], &_s8SwiftMLS0B0O5GroupO7MessageVSgMd, &_s8SwiftMLS0B0O5GroupO7MessageVSgMR);
  (*(v5 + 8))(v4, v6);
  if (v0)
  {
    v7 = MLS.SwiftMLSClientCoordinator.processIncoming(failureToDecrypt:withGroup:context:);
  }

  else
  {
    v7 = MLS.SwiftMLSClientCoordinator.processIncoming(failureToDecrypt:withGroup:context:);
  }

  return MEMORY[0x2822009F8](v7, v3, 0);
}

{
  v102 = v0;
  v1 = v0 + 352;
  v2 = (v0 + 1800);
  v3 = *(v0 + 2128);
  v4 = *(v0 + 2120);
  v5 = *(v0 + 2112);
  (*(v4 + 16))(v3, *(v0 + 2136), v5);
  if ((*(v4 + 88))(v3, v5) != *MEMORY[0x277D6AAC0])
  {
    outlined init with copy of MLS.OutgoingEventState?(v0 + 352, v0 + 520, &_s15SecureMessaging3MLSO31IncomingFailureToDecryptContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO31IncomingFailureToDecryptContextVy_10Foundation4DataVGMR);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();
    outlined destroy of NSObject?(v0 + 352, &_s15SecureMessaging3MLSO31IncomingFailureToDecryptContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO31IncomingFailureToDecryptContextVy_10Foundation4DataVGMR);
    if (os_log_type_enabled(v27, v28))
    {
      v29 = *(v0 + 2176);
      v30 = *(v0 + 2168);
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      *&v96 = v32;
      *v31 = 136315138;
      *(v31 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v29, &v96);
      _os_log_impl(&dword_264F1F000, v27, v28, "SwiftMLSClientCoordinator processIncomingFTD given a non signed message { identifier: %s }", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v32);
      MEMORY[0x266755550](v32, -1, -1);
      MEMORY[0x266755550](v31, -1, -1);
    }

    v33 = *(v0 + 2136);
    v34 = *(v0 + 2128);
    v35 = *(v0 + 2120);
    v36 = *(v0 + 2112);
    lazy protocol witness table accessor for type MLS.IncomingMessageError and conformance MLS.IncomingMessageError();
    v25 = swift_allocError();
    *v37 = 6;
    *(v37 + 8) = 0;
    *(v37 + 16) = 0;
    swift_willThrow();
    v38 = *(v35 + 8);
    v38(v33, v36);
    v38(v34, v36);
    goto LABEL_12;
  }

  v6 = *(v0 + 2128);
  v7 = *(v0 + 2072);
  v8 = *(v0 + 2064);
  v9 = *(v0 + 2056);
  (*(*(v0 + 2120) + 96))(v6, *(v0 + 2112));
  (*(v8 + 32))(v7, v6, v9);
  *(v0 + 1508) = *(v0 + 444);
  v10 = *(v0 + 432);
  *(v0 + 1480) = *(v0 + 416);
  *(v0 + 1496) = v10;
  *(v0 + 1464) = *(v0 + 400);
  v11 = *(v0 + 1480);
  v12 = *(v0 + 1496);
  v94 = v0 + 352;
  if (v11 >> 16 == 0xFFFFFFFF && (v12 & 0x3000000000000000) == 0)
  {
    outlined init with copy of MLS.OutgoingEventState?(v0 + 352, v0 + 184, &_s15SecureMessaging3MLSO31IncomingFailureToDecryptContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO31IncomingFailureToDecryptContextVy_10Foundation4DataVGMR);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    outlined destroy of NSObject?(v0 + 352, &_s15SecureMessaging3MLSO31IncomingFailureToDecryptContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO31IncomingFailureToDecryptContextVy_10Foundation4DataVGMR);
    if (os_log_type_enabled(v13, v14))
    {
      v15 = *(v0 + 2176);
      v16 = *(v0 + 2168);
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *&v96 = v18;
      *v17 = 136315138;
      *(v17 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v15, &v96);
      _os_log_impl(&dword_264F1F000, v13, v14, "SwiftMLSClientCoordinator processIncomingFTD not given expectedSignedData { identifier: %s }", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v18);
      MEMORY[0x266755550](v18, -1, -1);
      MEMORY[0x266755550](v17, -1, -1);
    }

    v19 = *(v0 + 2136);
    v20 = *(v0 + 2120);
    v21 = *(v0 + 2112);
    v22 = *(v0 + 2072);
    v23 = *(v0 + 2064);
    v24 = *(v0 + 2056);
    lazy protocol witness table accessor for type MLS.IncomingMessageError and conformance MLS.IncomingMessageError();
    v25 = swift_allocError();
    *v26 = 12;
    *(v26 + 8) = 0;
    *(v26 + 16) = 0;
    swift_willThrow();
    (*(v23 + 8))(v22, v24);
    (*(v20 + 8))(v19, v21);
    v1 = v0 + 352;
    goto LABEL_12;
  }

  v39 = *(v0 + 2224);
  v91 = *(v0 + 2120);
  v40 = *(v0 + 2064);
  v41 = *(v0 + 1520);
  v42 = *(v0 + 1488);
  v96 = *(v0 + 1464);
  v97 = v11;
  v98 = v42;
  v99 = v12;
  v100 = *(v0 + 1504);
  v101 = v41;
  v43 = *(v0 + 416);
  *(v0 + 1528) = *(v0 + 400);
  *(v0 + 1544) = v43;
  *(v0 + 1560) = *(v0 + 432);
  *(v0 + 1572) = *(v0 + 444);
  outlined init with copy of MLS.SigningInput(v0 + 1528, v0 + 1400);
  MLS.EncryptedRCS.SigningInput.verifiableDerivedContent.getter((v0 + 1840));
  __swift_project_boxed_opaque_existential_1((v0 + 1840), *(v0 + 1864));
  v44 = MLS.Group.IncomingSignedMessage.verifiableDerivedContentData.getter();
  v46 = v45;
  MLS.VerifiableDerivedContent.verifyEquals(_:)();
  v47 = (v40 + 8);
  v48 = (v91 + 8);
  if (v39)
  {
    v25 = v39;
    v92 = *(v0 + 2136);
    v49 = *(v0 + 2112);
    v50 = *(v0 + 2072);
    v51 = *(v0 + 2056);
    outlined consume of Data._Representation(v44, v46);
    outlined destroy of NSObject?(v0 + 1464, &_s15SecureMessaging3MLSO12SigningInputVSgMd, &_s15SecureMessaging3MLSO12SigningInputVSgMR);
    (*v47)(v50, v51);
    (*v48)(v92, v49);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 1840));
    v2 = (v0 + 1800);
    v1 = v0 + 352;
LABEL_12:
    *(v0 + 2256) = v25;
    *(v0 + 1976) = v25;
    v52 = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    if (swift_dynamicCast())
    {
      v53 = *(v0 + 2208);
      v54 = *(v0 + 2200);

      v55 = *(v0 + 1880);
      v56 = *(v0 + 1888);
      v57 = *(v0 + 1896);
      lazy protocol witness table accessor for type MLS.IncomingMessageError and conformance MLS.IncomingMessageError();
      swift_allocError();
      *v58 = v55;
      *(v58 + 8) = v56;
      *(v58 + 16) = v57;
      swift_willThrow();
      outlined consume of Data?(v54, v53);

      __swift_destroy_boxed_opaque_existential_1Tm(v2);

      v59 = *(v0 + 8);

      return v59();
    }

    else
    {

      outlined init with copy of MLS.OutgoingEventState?(v1, v0 + 16, &_s15SecureMessaging3MLSO31IncomingFailureToDecryptContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO31IncomingFailureToDecryptContextVy_10Foundation4DataVGMR);
      v61 = Logger.logObject.getter();
      v62 = static os_log_type_t.error.getter();
      outlined destroy of NSObject?(v1, &_s15SecureMessaging3MLSO31IncomingFailureToDecryptContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO31IncomingFailureToDecryptContextVy_10Foundation4DataVGMR);
      if (os_log_type_enabled(v61, v62))
      {
        v63 = *(v0 + 2176);
        v64 = *(v0 + 2168);
        v65 = swift_slowAlloc();
        v66 = swift_slowAlloc();
        *&v96 = v66;
        *v65 = 136315138;
        *(v65 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v64, v63, &v96);
        _os_log_impl(&dword_264F1F000, v61, v62, "SwiftMLSClientCoordinator processIncomingFTD failed to validate signature. Self healing { identifier: %s }", v65, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v66);
        MEMORY[0x266755550](v66, -1, -1);
        MEMORY[0x266755550](v65, -1, -1);
      }

      outlined init with copy of ServerBag.MLS(v2, v0 + 1720);
      *(v0 + 1336) = 0u;
      *(v0 + 1352) = 0u;
      *(v0 + 1368) = 0u;
      *(v0 + 1384) = 0u;
      v67 = swift_task_alloc();
      *(v0 + 2264) = v67;
      *v67 = v0;
      v67[1] = MLS.SwiftMLSClientCoordinator.processIncoming(failureToDecrypt:withGroup:context:);
      v68 = *(v0 + 2016);
      v69 = *(v0 + 2008);

      return MLS.SwiftMLSClientCoordinator.performSelfHeal(groupIdentifier:swiftMLSGroup:ftdInfo:isWithinPersisterTransaction:)(v69, v68, v0 + 1720, (v0 + 1336), 0);
    }
  }

  v70 = *(v0 + 2208);
  v71 = *(v0 + 2200);
  v93 = *(v0 + 2136);
  v90 = *(v0 + 2112);
  v72 = *(v0 + 2072);
  v73 = *(v0 + 2056);
  outlined consume of Data._Representation(v44, v46);
  outlined destroy of NSObject?(v0 + 1464, &_s15SecureMessaging3MLSO12SigningInputVSgMd, &_s15SecureMessaging3MLSO12SigningInputVSgMR);
  outlined consume of Data?(v71, v70);
  (*v47)(v72, v73);
  (*v48)(v93, v90);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 1840));
  outlined init with copy of MLS.OutgoingEventState?(v94, v0 + 856, &_s15SecureMessaging3MLSO31IncomingFailureToDecryptContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO31IncomingFailureToDecryptContextVy_10Foundation4DataVGMR);
  outlined init with copy of MLS.OutgoingEventState?(v0 + 1656, v0 + 1592, &_s15SecureMessaging3MLSO24IncomingFailureToDecryptVy_AC9AllMemberOGMd, &_s15SecureMessaging3MLSO24IncomingFailureToDecryptVy_AC9AllMemberOGMR);
  v74 = Logger.logObject.getter();
  v75 = static os_log_type_t.error.getter();
  outlined destroy of NSObject?(v94, &_s15SecureMessaging3MLSO31IncomingFailureToDecryptContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO31IncomingFailureToDecryptContextVy_10Foundation4DataVGMR);
  outlined destroy of NSObject?(v0 + 1656, &_s15SecureMessaging3MLSO24IncomingFailureToDecryptVy_AC9AllMemberOGMd, &_s15SecureMessaging3MLSO24IncomingFailureToDecryptVy_AC9AllMemberOGMR);
  if (os_log_type_enabled(v74, v75))
  {
    v76 = *(v0 + 2176);
    v77 = *(v0 + 2168);
    v78 = swift_slowAlloc();
    v79 = swift_slowAlloc();
    *&v96 = v79;
    *v78 = 136315394;
    *(v78 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v77, v76, &v96);
    *(v78 + 12) = 2080;
    *(v78 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v0 + 1672), *(v0 + 1680), &v96);
    _os_log_impl(&dword_264F1F000, v74, v75, "SwiftMLSClientCoordinator processIncomingFTD checking for loop { identifier: %s, message: %s }", v78, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v79, -1, -1);
    MEMORY[0x266755550](v78, -1, -1);
  }

  v80 = *(v0 + 2160);
  v81 = *(v0 + 2024);
  v82 = *(v0 + 2016);
  v83 = *(v0 + 2008);
  v84 = swift_task_alloc();
  *(v0 + 2232) = v84;
  v84[2] = v81;
  v84[3] = v83;
  v84[4] = v82;
  v84[5] = v0 + 1656;
  v84[6] = v0 + 1800;
  v84[7] = v94;
  v95 = (*(*v80 + 152) + **(*v80 + 152));
  v85 = swift_task_alloc();
  *(v0 + 2240) = v85;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO40IncomingFailureToDecryptProcessedContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO40IncomingFailureToDecryptProcessedContextVy_10Foundation4DataVGMR);
  *v85 = v0;
  v85[1] = MLS.SwiftMLSClientCoordinator.processIncoming(failureToDecrypt:withGroup:context:);
  v87 = *(v0 + 2176);
  v88 = *(v0 + 2168);
  v89 = *(v0 + 2000);

  return v95(v89, v88, v87, &async function pointer to partial apply for closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(failureToDecrypt:withGroup:context:), v84, v86);
}

{
  v2 = *v1;
  *(*v1 + 2248) = v0;

  if (v0)
  {
    v3 = *(v2 + 2144);
    v4 = MLS.SwiftMLSClientCoordinator.processIncoming(failureToDecrypt:withGroup:context:);
  }

  else
  {
    v5 = *(v2 + 2144);

    v4 = MLS.SwiftMLSClientCoordinator.processIncoming(failureToDecrypt:withGroup:context:);
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 1800));

  v1 = *(v0 + 8);

  return v1();
}

{
  v1 = *(v0 + 1904);
  v2 = *(v0 + 1912);
  v3 = *(v0 + 1920);
  lazy protocol witness table accessor for type MLS.IncomingMessageError and conformance MLS.IncomingMessageError();
  swift_allocError();
  *v4 = v1;
  *(v4 + 8) = v2;
  *(v4 + 16) = v3;

  v5 = *(v0 + 8);

  return v5();
}

{
  v2 = *v1;
  *(*v1 + 2272) = v0;

  if (v0)
  {
    v3 = *(v2 + 2144);
    outlined destroy of NSObject?(v2 + 1720, &_s15SecureMessaging3MLSO21SwiftMLSGroupProtocol_pSgMd, &_s15SecureMessaging3MLSO21SwiftMLSGroupProtocol_pSgMR);
    v4 = MLS.SwiftMLSClientCoordinator.processIncoming(failureToDecrypt:withGroup:context:);
  }

  else
  {
    v3 = *(v2 + 2144);
    outlined destroy of NSObject?(v2 + 1720, &_s15SecureMessaging3MLSO21SwiftMLSGroupProtocol_pSgMd, &_s15SecureMessaging3MLSO21SwiftMLSGroupProtocol_pSgMR);
    v4 = MLS.SwiftMLSClientCoordinator.processIncoming(failureToDecrypt:withGroup:context:);
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{
  v1 = *(v0 + 2024);
  *(v0 + 1960) = *(v0 + 368);
  outlined init with copy of ServerBag.MLS(v0 + 1800, v0 + 1760);
  *(v0 + 2280) = *(v1 + 80);
  *(v0 + 2288) = *(v1 + 88);
  v2 = v1 + direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier;
  *(v0 + 2296) = *(v1 + direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier);
  *(v0 + 2304) = *(v2 + 8);
  outlined init with copy of MLS.OutgoingEventState?(v0 + 1960, v0 + 1928, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);

  return MEMORY[0x2822009F8](MLS.SwiftMLSClientCoordinator.processIncoming(failureToDecrypt:withGroup:context:), 0, 0);
}

{
  v1 = v0[223];
  v2 = v0[224];
  __swift_project_boxed_opaque_existential_1(v0 + 220, v1);
  v3 = *(v2 + 32);

  v6 = (v3 + *v3);
  v4 = swift_task_alloc();
  v0[289] = v4;
  *v4 = v0;
  v4[1] = MLS.SwiftMLSClientCoordinator.processIncoming(failureToDecrypt:withGroup:context:);

  return v6(v1, v2);
}

{
  v1 = v0[223];
  v2 = v0[224];
  __swift_project_boxed_opaque_existential_1(v0 + 220, v1);
  v5 = (*(v2 + 24) + **(v2 + 24));
  v3 = swift_task_alloc();
  v0[292] = v3;
  *v3 = v0;
  v3[1] = MLS.SwiftMLSClientCoordinator.processIncoming(failureToDecrypt:withGroup:context:);

  return v5(v1, v2);
}

{
  v0[309] = v0[290];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 220);

  v1 = v0[268];

  return MEMORY[0x2822009F8](MLS.SwiftMLSClientCoordinator.processIncoming(failureToDecrypt:withGroup:context:), v1, 0);
}

{
  v2 = *v1;
  *(*v1 + 2360) = v0;

  if (v0)
  {
    outlined destroy of NSObject?(v2 + 1960, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
    v3 = MLS.SwiftMLSClientCoordinator.processIncoming(failureToDecrypt:withGroup:context:);
  }

  else
  {
    v3 = MLS.SwiftMLSClientCoordinator.processIncoming(failureToDecrypt:withGroup:context:);
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  v1 = v0[223];
  v2 = v0[224];
  __swift_project_boxed_opaque_existential_1(v0 + 220, v1);
  v5 = (*(v2 + 64) + **(v2 + 64));
  v3 = swift_task_alloc();
  v0[301] = v3;
  *v3 = v0;
  v3[1] = MLS.SwiftMLSClientCoordinator.processIncoming(failureToDecrypt:withGroup:context:);

  return v5(v1, v2);
}

{
  v0[309] = v0[295];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 220);

  v1 = v0[268];

  return MEMORY[0x2822009F8](MLS.SwiftMLSClientCoordinator.processIncoming(failureToDecrypt:withGroup:context:), v1, 0);
}

{
  v1 = v0[300];
  v2 = v0[297];
  v3 = v0[296];
  if (v1 >> 60 == 15)
  {
    v4 = 0xC000000000000000;
  }

  else
  {
    v4 = v0[300];
  }

  if (v1 >> 60 == 15)
  {
    v5 = 0;
  }

  else
  {
    v5 = v0[299];
  }

  v0[309] = v0[302];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 220);

  outlined consume of Data._Representation(v3, v2);
  outlined consume of Data._Representation(v5, v4);
  v6 = v0[268];

  return MEMORY[0x2822009F8](MLS.SwiftMLSClientCoordinator.processIncoming(failureToDecrypt:withGroup:context:), v6, 0);
}

{
  v1 = *(v0 + 2464);
  v2 = *(v0 + 2456);
  v3 = *(v0 + 2424);
  v4 = *(v0 + 2400);
  v5 = *(v0 + 2376);
  v6 = *(v0 + 2368);
  v18 = v6;
  v19 = v5;
  v7 = *(v0 + 2344);
  v17 = v7;
  v8 = *(v0 + 2328);
  v20 = *(v0 + 2144);
  v9 = *(v0 + 2016);
  v10 = *(v0 + 2008);
  if (v3 >> 60 == 15)
  {
    v11 = 0xC000000000000000;
  }

  else
  {
    v11 = *(v0 + 2424);
  }

  if (v3 >> 60 == 15)
  {
    v12 = 0;
  }

  else
  {
    v12 = *(v0 + 2432);
  }

  if (v4 >> 60 == 15)
  {
    v13 = 0xC000000000000000;
  }

  else
  {
    v13 = *(v0 + 2400);
  }

  if (v4 >> 60 == 15)
  {
    v14 = 0;
  }

  else
  {
    v14 = *(v0 + 2392);
  }

  if ((v8 & 0x100000000) != 0)
  {
    v15 = 1;
  }

  else
  {
    v15 = v8;
  }

  *(v0 + 1128) = v10;
  *(v0 + 1136) = v9;
  *(v0 + 1144) = v15;
  *(v0 + 1152) = v15;
  *(v0 + 1160) = v7;
  *(v0 + 1168) = v6;
  *(v0 + 1176) = v5;
  *(v0 + 1184) = v14;
  *(v0 + 1192) = v13;
  *(v0 + 1200) = v12;
  *(v0 + 1208) = v11;
  *(v0 + 1216) = v1;
  *(v0 + 1224) = v2;
  outlined init with copy of MLS.Group(v0 + 1128, v0 + 1024);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 1760));
  *(v0 + 1232) = v10;
  *(v0 + 1240) = v9;
  *(v0 + 1248) = v15;
  *(v0 + 1256) = v15;
  *(v0 + 1264) = v17;
  *(v0 + 1272) = v18;
  *(v0 + 1280) = v19;
  *(v0 + 1288) = v14;
  *(v0 + 1296) = v13;
  *(v0 + 1304) = v12;
  *(v0 + 1312) = v11;
  *(v0 + 1320) = v1;
  *(v0 + 1328) = v2;
  outlined destroy of MLS.Group(v0 + 1232);

  return MEMORY[0x2822009F8](MLS.SwiftMLSClientCoordinator.processIncoming(failureToDecrypt:withGroup:context:), v20, 0);
}

{
  v1 = *(v0 + 2208);
  v2 = *(v0 + 2200);
  v3 = *(v0 + 2000);

  outlined consume of Data?(v2, v1);
  v4 = *(v0 + 464);
  *(v0 + 1992) = v4;
  *v3 = *(v0 + 1960);
  v5 = *(v0 + 1224);
  v6 = *(v0 + 1176);
  v7 = *(v0 + 1208);
  *(v3 + 80) = *(v0 + 1192);
  *(v3 + 96) = v7;
  *(v3 + 64) = v6;
  v8 = *(v0 + 1160);
  v9 = *(v0 + 1128);
  *(v3 + 32) = *(v0 + 1144);
  *(v3 + 48) = v8;
  *(v3 + 16) = v9;
  *(v3 + 112) = v5;
  *(v3 + 120) = v4;
  outlined init with copy of MetricCollector(v0 + 1992, v0 + 1984);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 1800));

  v10 = *(v0 + 8);

  return v10();
}

{
  v1 = v0[303];
  v2 = v0[300];
  v3 = v0[297];
  v4 = v0[296];
  if (v1 >> 60 == 15)
  {
    v5 = 0xC000000000000000;
  }

  else
  {
    v5 = v0[303];
  }

  if (v1 >> 60 == 15)
  {
    v6 = 0;
  }

  else
  {
    v6 = v0[304];
  }

  if (v2 >> 60 == 15)
  {
    v7 = 0xC000000000000000;
  }

  else
  {
    v7 = v0[300];
  }

  if (v2 >> 60 == 15)
  {
    v8 = 0;
  }

  else
  {
    v8 = v0[299];
  }

  v0[309] = v0[306];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 220);

  outlined consume of Data._Representation(v4, v3);
  outlined consume of Data._Representation(v8, v7);
  outlined consume of Data._Representation(v6, v5);
  v9 = v0[268];

  return MEMORY[0x2822009F8](MLS.SwiftMLSClientCoordinator.processIncoming(failureToDecrypt:withGroup:context:), v9, 0);
}

{
  v1 = v0[282];
  outlined consume of Data?(v0[275], v0[276]);

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 225);

  v2 = v0[1];

  return v2();
}

{
  v21 = v0;
  v1 = *(v0 + 2224);
  *(v0 + 2256) = v1;
  *(v0 + 1976) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 2208);
    v4 = *(v0 + 2200);

    v5 = *(v0 + 1880);
    v6 = *(v0 + 1888);
    v7 = *(v0 + 1896);
    lazy protocol witness table accessor for type MLS.IncomingMessageError and conformance MLS.IncomingMessageError();
    swift_allocError();
    *v8 = v5;
    *(v8 + 8) = v6;
    *(v8 + 16) = v7;
    swift_willThrow();
    outlined consume of Data?(v4, v3);

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 1800));

    v9 = *(v0 + 8);

    return v9();
  }

  else
  {

    outlined init with copy of MLS.OutgoingEventState?(v0 + 352, v0 + 16, &_s15SecureMessaging3MLSO31IncomingFailureToDecryptContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO31IncomingFailureToDecryptContextVy_10Foundation4DataVGMR);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    outlined destroy of NSObject?(v0 + 352, &_s15SecureMessaging3MLSO31IncomingFailureToDecryptContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO31IncomingFailureToDecryptContextVy_10Foundation4DataVGMR);
    if (os_log_type_enabled(v11, v12))
    {
      v13 = *(v0 + 2176);
      v14 = *(v0 + 2168);
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v20 = v16;
      *v15 = 136315138;
      *(v15 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v13, &v20);
      _os_log_impl(&dword_264F1F000, v11, v12, "SwiftMLSClientCoordinator processIncomingFTD failed to validate signature. Self healing { identifier: %s }", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v16);
      MEMORY[0x266755550](v16, -1, -1);
      MEMORY[0x266755550](v15, -1, -1);
    }

    outlined init with copy of ServerBag.MLS(v0 + 1800, v0 + 1720);
    *(v0 + 1336) = 0u;
    *(v0 + 1352) = 0u;
    *(v0 + 1368) = 0u;
    *(v0 + 1384) = 0u;
    v17 = swift_task_alloc();
    *(v0 + 2264) = v17;
    *v17 = v0;
    v17[1] = MLS.SwiftMLSClientCoordinator.processIncoming(failureToDecrypt:withGroup:context:);
    v18 = *(v0 + 2016);
    v19 = *(v0 + 2008);

    return MLS.SwiftMLSClientCoordinator.performSelfHeal(groupIdentifier:swiftMLSGroup:ftdInfo:isWithinPersisterTransaction:)(v19, v18, v0 + 1720, (v0 + 1336), 0);
  }
}

{
  v1 = v0[282];
  outlined consume of Data?(v0[275], v0[276]);

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 225);

  v2 = v0[1];

  return v2();
}

{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 1800));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t MLS.SwiftMLSClientCoordinator.processIncoming(failureToDecrypt:withGroup:context:)(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 2320) = v1;

  if (v1)
  {
    outlined destroy of NSObject?(v4 + 1960, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
    v5 = MLS.SwiftMLSClientCoordinator.processIncoming(failureToDecrypt:withGroup:context:);
  }

  else
  {
    *(v4 + 2328) = a1;
    v5 = MLS.SwiftMLSClientCoordinator.processIncoming(failureToDecrypt:withGroup:context:);
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

{
  *(*v1 + 2344) = a1;

  return MEMORY[0x2822009F8](MLS.SwiftMLSClientCoordinator.processIncoming(failureToDecrypt:withGroup:context:), 0, 0);
}

{
  v2 = v1[256];
  v3 = v1[255];
  v4 = v1[254];
  v1[296] = MLS.Group.GroupInfo.rawRepresentation.getter();
  v1[297] = v5;
  (*(v3 + 8))(v2, v4);
  v6 = v1[223];
  v7 = v1[224];
  __swift_project_boxed_opaque_existential_1(v1 + 220, v6);
  v10 = (*(v7 + 56) + **(v7 + 56));
  v8 = swift_task_alloc();
  v1[298] = v8;
  *v8 = v1;
  v8[1] = MLS.SwiftMLSClientCoordinator.processIncoming(failureToDecrypt:withGroup:context:);

  return v10(v6, v7);
}

uint64_t MLS.SwiftMLSClientCoordinator.processIncoming(failureToDecrypt:withGroup:context:)(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 2392) = a1;
  *(v3 + 2400) = a2;

  return MEMORY[0x2822009F8](MLS.SwiftMLSClientCoordinator.processIncoming(failureToDecrypt:withGroup:context:), 0, 0);
}

{
  v6 = *v3;
  v6[302] = v2;

  if (v2)
  {
    outlined destroy of NSObject?((v6 + 245), &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);

    return MEMORY[0x2822009F8](MLS.SwiftMLSClientCoordinator.processIncoming(failureToDecrypt:withGroup:context:), 0, 0);
  }

  else
  {
    v7 = v6[288];
    v8 = v6[287];
    v16 = v6[286];
    v6[303] = a2;
    v6[304] = a1;
    ObjectType = swift_getObjectType();
    v6[243] = v8;
    v6[244] = v7;
    v15 = (*(v16 + 64) + **(v16 + 64));
    v10 = swift_task_alloc();
    v6[305] = v10;
    *v10 = v6;
    v10[1] = MLS.SwiftMLSClientCoordinator.processIncoming(failureToDecrypt:withGroup:context:);
    v11 = v6[286];
    v12 = v6[252];
    v13 = v6[251];

    return v15(v13, v12, v6 + 243, ObjectType, v11);
  }
}

{
  v6 = *v3;
  *(*v3 + 2448) = v2;

  if (v2)
  {
    outlined destroy of NSObject?(v6 + 1960, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
    v7 = MLS.SwiftMLSClientCoordinator.processIncoming(failureToDecrypt:withGroup:context:);
  }

  else
  {
    *(v6 + 2456) = a2;
    *(v6 + 2464) = a1;
    v7 = MLS.SwiftMLSClientCoordinator.processIncoming(failureToDecrypt:withGroup:context:);
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(failureToDecrypt:withGroup:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[196] = a7;
  v7[195] = a6;
  v7[194] = a5;
  v7[193] = a4;
  v7[192] = a3;
  v7[191] = a2;
  v7[190] = a1;
  v8 = type metadata accessor for UUID();
  v7[197] = v8;
  v7[198] = *(v8 - 8);
  v7[199] = swift_task_alloc();
  v9 = type metadata accessor for MLS.Group.GroupInfo();
  v7[200] = v9;
  v7[201] = *(v9 - 8);
  v7[202] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v10 = static MLSActor.shared;
  v7[203] = static MLSActor.shared;

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(failureToDecrypt:withGroup:context:), v10, 0);
}

uint64_t closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(failureToDecrypt:withGroup:context:)()
{
  v1 = v0[194];
  v2 = v0[191];
  v0[204] = *(v2 + 80);
  v3 = *(v2 + 88);
  v0[205] = v3;
  ObjectType = swift_getObjectType();
  v0[206] = ObjectType;
  v5 = *(v1 + 16);
  v0[207] = v5;
  v6 = *(v1 + 24);
  v0[208] = v6;
  v7 = direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier;
  v0[209] = direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier;
  v8 = (v2 + v7);
  v9 = v8[1];
  v0[178] = *v8;
  v0[179] = v9;
  v10 = *(v3 + 216);

  v15 = (v10 + *v10);
  v11 = swift_task_alloc();
  v0[210] = v11;
  *v11 = v0;
  v11[1] = closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(failureToDecrypt:withGroup:context:);
  v12 = v0[193];
  v13 = v0[192];

  return (v15)(v13, v12, v5, v6, v0 + 178, ObjectType, v3);
}

{
  if (*(v0 + 865))
  {
    v1 = 0;
LABEL_4:
    v2 = *(v0 + 1640);
    v3 = (*(v0 + 1528) + *(v0 + 1672));
    v4 = v3[1];
    *(v0 + 1440) = *v3;
    *(v0 + 1448) = v4;
    v5 = *(v2 + 224);

    v16 = (v5 + *v5);
    v6 = swift_task_alloc();
    *(v0 + 1704) = v6;
    *v6 = v0;
    v6[1] = closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(failureToDecrypt:withGroup:context:);
    v7 = *(v0 + 1664);
    v8 = *(v0 + 1656);
    v9 = *(v0 + 1648);
    v10 = *(v0 + 1640);
    v11 = *(v0 + 1544);
    v12 = *(v0 + 1536);

    return v16(v1 + 1, v12, v11, v8, v7, v0 + 1440, v9, v10);
  }

  v1 = *(v0 + 1688);
  if (v1 < 5)
  {
    goto LABEL_4;
  }

  lazy protocol witness table accessor for type MLS.IncomingMessageError and conformance MLS.IncomingMessageError();
  swift_allocError();
  *v14 = 20;
  *(v14 + 8) = 0;
  *(v14 + 16) = 0;
  swift_willThrow();

  v15 = *(v0 + 8);

  return v15();
}

{
  v2 = *v1;
  *(*v1 + 1712) = v0;

  if (v0)
  {
    v3 = *(v2 + 1624);

    v4 = closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(failureToDecrypt:withGroup:context:);
  }

  else
  {
    v3 = *(v2 + 1624);

    v4 = closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(failureToDecrypt:withGroup:context:);
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{
  v1 = (v0[191] + v0[209]);
  outlined init with copy of ServerBag.MLS(v0[195], (v0 + 163));
  v0[215] = *v1;
  v0[216] = v1[1];

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(failureToDecrypt:withGroup:context:), 0, 0);
}

{
  v1 = v0[166];
  v2 = v0[167];
  __swift_project_boxed_opaque_existential_1(v0 + 163, v1);
  v3 = *(v2 + 32);

  v6 = (v3 + *v3);
  v4 = swift_task_alloc();
  v0[217] = v4;
  *v4 = v0;
  v4[1] = closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(failureToDecrypt:withGroup:context:);

  return v6(v1, v2);
}

{
  v1 = v0[166];
  v2 = v0[167];
  __swift_project_boxed_opaque_existential_1(v0 + 163, v1);
  v5 = (*(v2 + 24) + **(v2 + 24));
  v3 = swift_task_alloc();
  v0[220] = v3;
  *v3 = v0;
  v3[1] = closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(failureToDecrypt:withGroup:context:);

  return v5(v1, v2);
}

{
  v0[238] = v0[218];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 163);

  v1 = v0[203];

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(failureToDecrypt:withGroup:context:), v1, 0);
}

{
  *(*v1 + 1784) = v0;

  if (v0)
  {

    v2 = closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(failureToDecrypt:withGroup:context:);
  }

  else
  {
    v2 = closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(failureToDecrypt:withGroup:context:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v1 = v0[166];
  v2 = v0[167];
  __swift_project_boxed_opaque_existential_1(v0 + 163, v1);
  v5 = (*(v2 + 64) + **(v2 + 64));
  v3 = swift_task_alloc();
  v0[229] = v3;
  *v3 = v0;
  v3[1] = closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(failureToDecrypt:withGroup:context:);

  return v5(v1, v2);
}

{
  v0[238] = v0[223];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 163);

  v1 = v0[203];

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(failureToDecrypt:withGroup:context:), v1, 0);
}

{
  v1 = v0[228];
  v2 = v0[225];
  v3 = v0[224];
  if (v1 >> 60 == 15)
  {
    v4 = 0xC000000000000000;
  }

  else
  {
    v4 = v0[228];
  }

  if (v1 >> 60 == 15)
  {
    v5 = 0;
  }

  else
  {
    v5 = v0[227];
  }

  v0[238] = v0[230];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 163);

  outlined consume of Data._Representation(v3, v2);
  outlined consume of Data._Representation(v5, v4);
  v6 = v0[203];

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(failureToDecrypt:withGroup:context:), v6, 0);
}

{
  v1 = *(v0 + 1888);
  v2 = *(v0 + 1880);
  v3 = *(v0 + 1848);
  v4 = *(v0 + 1824);
  v5 = *(v0 + 1800);
  v6 = *(v0 + 1792);
  v18 = v6;
  v19 = v5;
  v7 = *(v0 + 1768);
  v17 = v7;
  v8 = *(v0 + 1752);
  v20 = *(v0 + 1624);
  v9 = *(v0 + 1544);
  v10 = *(v0 + 1536);
  if (v3 >> 60 == 15)
  {
    v11 = 0xC000000000000000;
  }

  else
  {
    v11 = *(v0 + 1848);
  }

  if (v3 >> 60 == 15)
  {
    v12 = 0;
  }

  else
  {
    v12 = *(v0 + 1856);
  }

  if (v4 >> 60 == 15)
  {
    v13 = 0xC000000000000000;
  }

  else
  {
    v13 = *(v0 + 1824);
  }

  if (v4 >> 60 == 15)
  {
    v14 = 0;
  }

  else
  {
    v14 = *(v0 + 1816);
  }

  if ((v8 & 0x100000000) != 0)
  {
    v15 = 1;
  }

  else
  {
    v15 = v8;
  }

  *(v0 + 456) = v10;
  *(v0 + 464) = v9;
  *(v0 + 472) = v15;
  *(v0 + 480) = v15;
  *(v0 + 488) = v7;
  *(v0 + 496) = v6;
  *(v0 + 504) = v5;
  *(v0 + 512) = v14;
  *(v0 + 520) = v13;
  *(v0 + 528) = v12;
  *(v0 + 536) = v11;
  *(v0 + 544) = v1;
  *(v0 + 552) = v2;
  outlined init with copy of MLS.Group(v0 + 456, v0 + 560);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 1304));
  *(v0 + 352) = v10;
  *(v0 + 360) = v9;
  *(v0 + 368) = v15;
  *(v0 + 376) = v15;
  *(v0 + 384) = v17;
  *(v0 + 392) = v18;
  *(v0 + 400) = v19;
  *(v0 + 408) = v14;
  *(v0 + 416) = v13;
  *(v0 + 424) = v12;
  *(v0 + 432) = v11;
  *(v0 + 440) = v1;
  *(v0 + 448) = v2;
  outlined destroy of MLS.Group(v0 + 352);

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(failureToDecrypt:withGroup:context:), v20, 0);
}

{
  v34 = v0;
  v1 = *(v0 + 1568);
  v2 = *(v0 + 1552);
  *(v0 + 1896) = direct field offset for MLS.SwiftMLSClientCoordinator.logger;
  outlined init with copy of MLS.OutgoingEventState?(v1, v0 + 16, &_s15SecureMessaging3MLSO31IncomingFailureToDecryptContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO31IncomingFailureToDecryptContextVy_10Foundation4DataVGMR);
  outlined init with copy of MLS.OutgoingEventState?(v2, v0 + 1240, &_s15SecureMessaging3MLSO24IncomingFailureToDecryptVy_AC9AllMemberOGMd, &_s15SecureMessaging3MLSO24IncomingFailureToDecryptVy_AC9AllMemberOGMR);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  outlined destroy of NSObject?(v1, &_s15SecureMessaging3MLSO31IncomingFailureToDecryptContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO31IncomingFailureToDecryptContextVy_10Foundation4DataVGMR);
  outlined destroy of NSObject?(v2, &_s15SecureMessaging3MLSO24IncomingFailureToDecryptVy_AC9AllMemberOGMd, &_s15SecureMessaging3MLSO24IncomingFailureToDecryptVy_AC9AllMemberOGMR);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 1664);
    v6 = *(v0 + 1656);
    v7 = *(v0 + 1568);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v33[0] = v9;
    *v8 = 136315394;
    *(v8 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*v7, *(v7 + 8), v33);
    *(v8 + 12) = 2080;
    *(v8 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v5, v33);
    _os_log_impl(&dword_264F1F000, v3, v4, "SwiftMLSClientCoordinator processIncomingFTD calling out to resend { identifier: %s, message: %s }", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v9, -1, -1);
    MEMORY[0x266755550](v8, -1, -1);
  }

  v30 = *(v0 + 1656);
  v32 = *(v0 + 1664);
  v10 = *(v0 + 1592);
  v11 = *(v0 + 1584);
  v12 = *(v0 + 1576);
  v13 = *(v0 + 1568);
  v14 = *(v0 + 1552);
  v29 = *(v0 + 1528);
  UUID.init()();
  v28 = UUID.uuidString.getter();
  v16 = v15;
  (*(v11 + 8))(v10, v12);
  v17 = *(v14 + 32);
  *(v0 + 1353) = *(v14 + 41);
  *(v0 + 1344) = v17;
  *(v0 + 1408) = *(v13 + 16);
  v18 = *(v14 + 32);
  *(v0 + 1105) = *(v14 + 41);
  *(v0 + 1096) = v18;
  *(v33 + 7) = *(v13 + 16);
  *(v0 + 1080) = v28;
  *(v0 + 1088) = v16;
  *(v0 + 1136) = *(&v33[1] + 7);
  *(v0 + 1121) = *v33;
  *(v0 + 1144) = v30;
  *(v0 + 1152) = v32;
  v19 = *(v29 + 96);
  v20 = *(v0 + 1128);
  *(v0 + 800) = *(v0 + 1112);
  *(v0 + 816) = v20;
  *(v0 + 832) = *(v0 + 1144);
  v21 = *(v0 + 1096);
  *(v0 + 768) = *(v0 + 1080);
  *(v0 + 784) = v21;
  *(v0 + 864) = 8;
  v22 = *(v0 + 472);
  *(v0 + 664) = *(v0 + 456);
  *(v0 + 680) = v22;
  *(v0 + 760) = *(v0 + 552);
  v23 = *(v0 + 536);
  *(v0 + 728) = *(v0 + 520);
  *(v0 + 744) = v23;
  v24 = *(v0 + 504);
  *(v0 + 696) = *(v0 + 488);
  *(v0 + 712) = v24;
  v25 = *(*v19 + 384);
  outlined init with copy of MLS.OutgoingEventState?(v0 + 1408, v0 + 1472, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
  outlined init with copy of MLS.OutgoingEventState?(v0 + 1408, v0 + 1488, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
  outlined init with copy of MLS.AllMember(v0 + 1344, v0 + 1376);
  outlined init with copy of MLS.OutgoingEventState?(v0 + 1080, v0 + 1160, &_s15SecureMessaging3MLSO32IncomingResendApplicationMessageVy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO32IncomingResendApplicationMessageVy_AC9AllMemberO10Foundation4DataVGMR);
  v31 = (v25 + *v25);
  v26 = swift_task_alloc();
  *(v0 + 1912) = v26;
  *v26 = v0;
  v26[1] = closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(failureToDecrypt:withGroup:context:);

  return (v31)(v0 + 768, v0 + 664, 1, 0);
}

{
  v1 = v0[231];
  v2 = v0[228];
  v3 = v0[225];
  v4 = v0[224];
  if (v1 >> 60 == 15)
  {
    v5 = 0xC000000000000000;
  }

  else
  {
    v5 = v0[231];
  }

  if (v1 >> 60 == 15)
  {
    v6 = 0;
  }

  else
  {
    v6 = v0[232];
  }

  if (v2 >> 60 == 15)
  {
    v7 = 0xC000000000000000;
  }

  else
  {
    v7 = v0[228];
  }

  if (v2 >> 60 == 15)
  {
    v8 = 0;
  }

  else
  {
    v8 = v0[227];
  }

  v0[238] = v0[234];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 163);

  outlined consume of Data._Representation(v4, v3);
  outlined consume of Data._Representation(v8, v7);
  outlined consume of Data._Representation(v6, v5);
  v9 = v0[203];

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(failureToDecrypt:withGroup:context:), v9, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

{
  v2 = *v1;
  *(*v1 + 1920) = v0;

  if (v0)
  {
    v3 = *(v2 + 1624);
    outlined destroy of NSObject?(v2 + 1408, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
    v5 = *(v2 + 784);
    v4 = *(v2 + 800);
    *(v2 + 872) = *(v2 + 768);
    *(v2 + 888) = v5;
    *(v2 + 904) = v4;
    v7 = *(v2 + 832);
    v6 = *(v2 + 848);
    v8 = *(v2 + 816);
    *(v2 + 968) = *(v2 + 864);
    *(v2 + 936) = v7;
    *(v2 + 952) = v6;
    *(v2 + 920) = v8;
    outlined destroy of NSObject?(v2 + 872, &_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
    v9 = closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(failureToDecrypt:withGroup:context:);
    v10 = v3;
  }

  else
  {
    v11 = *(v2 + 1624);
    v12 = *(v2 + 784);
    *(v2 + 976) = *(v2 + 768);
    *(v2 + 992) = v12;
    v13 = *(v2 + 832);
    v14 = *(v2 + 848);
    v15 = *(v2 + 864);
    v16 = *(v2 + 816);
    *(v2 + 1008) = *(v2 + 800);
    *(v2 + 1024) = v16;
    *(v2 + 1072) = v15;
    *(v2 + 1056) = v14;
    *(v2 + 1040) = v13;
    outlined destroy of NSObject?(v2 + 976, &_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
    v9 = closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(failureToDecrypt:withGroup:context:);
    v10 = v11;
  }

  return MEMORY[0x2822009F8](v9, v10, 0);
}

{
  v17 = v0;
  v1 = *(v0 + 1568);
  outlined init with copy of MLS.OutgoingEventState?(v1, v0 + 184, &_s15SecureMessaging3MLSO31IncomingFailureToDecryptContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO31IncomingFailureToDecryptContextVy_10Foundation4DataVGMR);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  outlined destroy of NSObject?(v1, &_s15SecureMessaging3MLSO31IncomingFailureToDecryptContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO31IncomingFailureToDecryptContextVy_10Foundation4DataVGMR);
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 1568);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v16 = v6;
    *v5 = 136315138;
    *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*v4, *(v4 + 8), &v16);
    _os_log_impl(&dword_264F1F000, v2, v3, "SwiftMLSClientCoordinator processIncomingFTD returning to client { identifier: %s }", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x266755550](v6, -1, -1);
    MEMORY[0x266755550](v5, -1, -1);
  }

  outlined destroy of NSObject?(v0 + 1080, &_s15SecureMessaging3MLSO32IncomingResendApplicationMessageVy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO32IncomingResendApplicationMessageVy_AC9AllMemberO10Foundation4DataVGMR);

  v7 = *(v0 + 1520);
  v8 = *(*(v0 + 1568) + 112);
  *(v0 + 1504) = v8;
  *v7 = *(v0 + 1408);
  v9 = *(v0 + 488);
  v10 = *(v0 + 456);
  *(v7 + 32) = *(v0 + 472);
  *(v7 + 48) = v9;
  *(v7 + 16) = v10;
  v11 = *(v0 + 504);
  v12 = *(v0 + 536);
  v13 = *(v0 + 552);
  *(v7 + 80) = *(v0 + 520);
  *(v7 + 96) = v12;
  *(v7 + 64) = v11;
  *(v7 + 112) = v13;
  *(v7 + 120) = v8;
  outlined init with copy of MetricCollector(v0 + 1504, v0 + 1512);

  v14 = *(v0 + 8);

  return v14();
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
  outlined destroy of NSObject?(v0 + 1080, &_s15SecureMessaging3MLSO32IncomingResendApplicationMessageVy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO32IncomingResendApplicationMessageVy_AC9AllMemberO10Foundation4DataVGMR);
  outlined destroy of MLS.Group(v0 + 456);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(failureToDecrypt:withGroup:context:)(uint64_t a1, char a2)
{
  v5 = *v3;
  *(v5 + 1688) = a1;
  *(v5 + 1696) = v2;

  if (v2)
  {
    v6 = *(v5 + 1624);

    v7 = closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(failureToDecrypt:withGroup:context:);
  }

  else
  {
    v6 = *(v5 + 1624);
    *(v5 + 865) = a2;

    v7 = closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(failureToDecrypt:withGroup:context:);
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

uint64_t closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(failureToDecrypt:withGroup:context:)(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 1744) = v1;

  if (v1)
  {

    v5 = closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(failureToDecrypt:withGroup:context:);
  }

  else
  {
    *(v4 + 1752) = a1;
    v5 = closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(failureToDecrypt:withGroup:context:);
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

{
  *(*v1 + 1768) = a1;

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(failureToDecrypt:withGroup:context:), 0, 0);
}

{
  v2 = v1[202];
  v3 = v1[201];
  v4 = v1[200];
  v1[224] = MLS.Group.GroupInfo.rawRepresentation.getter();
  v1[225] = v5;
  (*(v3 + 8))(v2, v4);
  v6 = v1[166];
  v7 = v1[167];
  __swift_project_boxed_opaque_existential_1(v1 + 163, v6);
  v10 = (*(v7 + 56) + **(v7 + 56));
  v8 = swift_task_alloc();
  v1[226] = v8;
  *v8 = v1;
  v8[1] = closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(failureToDecrypt:withGroup:context:);

  return v10(v6, v7);
}

void closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(failureToDecrypt:withGroup:context:)()
{
  if ((v0[221] & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v1 = v0[166];
    v2 = v0[167];
    __swift_project_boxed_opaque_existential_1(v0 + 163, v1);
    v5 = (*(v2 + 80) + **(v2 + 80));
    v3 = swift_task_alloc();
    v0[222] = v3;
    *v3 = v0;
    v3[1] = closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(failureToDecrypt:withGroup:context:);
    v4 = v0[202];

    v5(v4, v1, v2);
  }
}

uint64_t closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(failureToDecrypt:withGroup:context:)(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 1816) = a1;
  *(v3 + 1824) = a2;

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(failureToDecrypt:withGroup:context:), 0, 0);
}

{
  v6 = *v3;
  v6[230] = v2;

  if (v2)
  {

    return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(failureToDecrypt:withGroup:context:), 0, 0);
  }

  else
  {
    v7 = v6[216];
    v8 = v6[215];
    v9 = v6[205];
    v6[231] = a2;
    v6[232] = a1;
    v6[182] = v8;
    v6[183] = v7;
    v16 = (*(v9 + 64) + **(v9 + 64));
    v10 = swift_task_alloc();
    v6[233] = v10;
    *v10 = v6;
    v10[1] = closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(failureToDecrypt:withGroup:context:);
    v11 = v6[206];
    v12 = v6[205];
    v13 = v6[193];
    v14 = v6[192];

    return v16(v14, v13, v6 + 182, v11, v12);
  }
}

{
  v6 = *v3;
  *(*v3 + 1872) = v2;

  if (v2)
  {

    v7 = closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(failureToDecrypt:withGroup:context:);
  }

  else
  {
    *(v6 + 1880) = a2;
    *(v6 + 1888) = a1;
    v7 = closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(failureToDecrypt:withGroup:context:);
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t MLS.SwiftMLSClientCoordinator.processIncoming(errorMessage:withGroup:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 112) = a4;
  *(v6 + 120) = v5;
  *(v6 + 96) = a1;
  *(v6 + 104) = a3;
  v7 = *(a2 + 16);
  *(v6 + 16) = *a2;
  *(v6 + 32) = v7;
  *(v6 + 48) = *(a2 + 32);
  *(v6 + 128) = *a5;
  *(v6 + 136) = *(a5 + 8);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v8 = static MLSActor.shared;
  *(v6 + 152) = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.SwiftMLSClientCoordinator.processIncoming(errorMessage:withGroup:context:), v8, 0);
}

uint64_t MLS.SwiftMLSClientCoordinator.processIncoming(errorMessage:withGroup:context:)()
{
  v72 = v0;

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v4 = *(v0 + 128);
    v3 = *(v0 + 136);
    v6 = *(v0 + 104);
    v5 = *(v0 + 112);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v71 = v8;
    *v7 = 136315394;
    *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v4, v3, &v71);
    *(v7 + 12) = 2080;
    *(v7 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v5, &v71);
    _os_log_impl(&dword_264F1F000, v1, v2, "SwiftMLSClientCoordinator processIncoming errorMessage called { identifier: %s, group: %s }", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v8, -1, -1);
    MEMORY[0x266755550](v7, -1, -1);
  }

  v9 = *(v0 + 48);
  if (v9 <= 6)
  {
    if (*(v0 + 48) <= 3u)
    {
      if (v9 < 3)
      {
        goto LABEL_30;
      }

      goto LABEL_14;
    }

    if (v9 - 4 < 2)
    {
      goto LABEL_30;
    }
  }

  else
  {
    if (*(v0 + 48) > 0xAu)
    {
      if (*(v0 + 48) <= 0xDu)
      {
        if (v9 - 12 >= 2)
        {

          v10 = Logger.logObject.getter();
          v11 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v10, v11))
          {
            v13 = *(v0 + 128);
            v12 = *(v0 + 136);
            v14 = swift_slowAlloc();
            v15 = swift_slowAlloc();
            v71 = v15;
            *v14 = 136315138;
            *(v14 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v12, &v71);
            _os_log_impl(&dword_264F1F000, v10, v11, "SwiftMLSClientCoordinator processIncoming errorMessage detected error code that requires self heal { identifier: %s }", v14, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v15);
            MEMORY[0x266755550](v15, -1, -1);
            MEMORY[0x266755550](v14, -1, -1);
          }

          v16 = *(v0 + 32);
          v17 = *(v0 + 40);
          v69 = (*(**(*(v0 + 120) + 96) + 336) + **(**(*(v0 + 120) + 96) + 336));
          v18 = swift_task_alloc();
          *(v0 + 176) = v18;
          *v18 = v0;
          v19 = MLS.SwiftMLSClientCoordinator.processIncoming(errorMessage:withGroup:context:);
LABEL_33:
          v18[1] = v19;
          v67 = *(v0 + 104);
          v66 = *(v0 + 112);

          return v69(v67, v66, v16, v17);
        }

        goto LABEL_20;
      }

      if (v9 == 14)
      {

        v54 = Logger.logObject.getter();
        v55 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v54, v55))
        {
          v57 = *(v0 + 128);
          v56 = *(v0 + 136);
          v58 = swift_slowAlloc();
          v59 = swift_slowAlloc();
          v71 = v59;
          *v58 = 136315138;
          *(v58 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v57, v56, &v71);
          _os_log_impl(&dword_264F1F000, v54, v55, "SwiftMLSClientCoordinator processIncoming errorMessage detected error code that requires resurrection { identifier: %s }", v58, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v59);
          MEMORY[0x266755550](v59, -1, -1);
          MEMORY[0x266755550](v58, -1, -1);
        }

        v16 = *(v0 + 32);
        v17 = *(v0 + 40);
        v69 = (*(**(*(v0 + 120) + 96) + 336) + **(**(*(v0 + 120) + 96) + 336));
        v18 = swift_task_alloc();
        *(v0 + 184) = v18;
        *v18 = v0;
        v19 = MLS.SwiftMLSClientCoordinator.processIncoming(errorMessage:withGroup:context:);
        goto LABEL_33;
      }

LABEL_30:

      v60 = Logger.logObject.getter();
      v61 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v60, v61))
      {
        v63 = *(v0 + 128);
        v62 = *(v0 + 136);
        v64 = swift_slowAlloc();
        v65 = swift_slowAlloc();
        v71 = v65;
        *v64 = 136315138;
        *(v64 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v63, v62, &v71);
        _os_log_impl(&dword_264F1F000, v60, v61, "SwiftMLSClientCoordinator processIncoming errorMessage detected error code that requires self heal { identifier: %s }", v64, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v65);
        MEMORY[0x266755550](v65, -1, -1);
        MEMORY[0x266755550](v64, -1, -1);
      }

      v16 = *(v0 + 32);
      v17 = *(v0 + 40);
      v69 = (*(**(*(v0 + 120) + 96) + 336) + **(**(*(v0 + 120) + 96) + 336));
      v18 = swift_task_alloc();
      *(v0 + 160) = v18;
      *v18 = v0;
      v19 = MLS.SwiftMLSClientCoordinator.processIncoming(errorMessage:withGroup:context:);
      goto LABEL_33;
    }

    if (v9 - 7 < 2)
    {
LABEL_14:

      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v20, v21))
      {
        v23 = *(v0 + 128);
        v22 = *(v0 + 136);
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v71 = v25;
        *v24 = 136315138;
        *(v24 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v22, &v71);
        _os_log_impl(&dword_264F1F000, v20, v21, "SwiftMLSClientCoordinator processIncoming errorMessage detected error code that requires retry { identifier: %s }", v24, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v25);
        MEMORY[0x266755550](v25, -1, -1);
        MEMORY[0x266755550](v24, -1, -1);
      }

      v26 = *(v0 + 32);
      v27 = *(v0 + 40);
      v70 = (*(**(*(v0 + 120) + 96) + 344) + **(**(*(v0 + 120) + 96) + 344));
      v28 = swift_task_alloc();
      *(v0 + 168) = v28;
      *v28 = v0;
      v28[1] = MLS.SwiftMLSClientCoordinator.processIncoming(errorMessage:withGroup:context:);
      v29 = *(v0 + 112);
      v30 = *(v0 + 104);
      v31 = v26;
      v32 = v27;
      v33 = 0;
      v34 = 0;
      v35 = v70;
      goto LABEL_23;
    }

    if (v9 != 9)
    {
      goto LABEL_30;
    }
  }

LABEL_20:

  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v36, v37))
  {
    v39 = *(v0 + 128);
    v38 = *(v0 + 136);
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v71 = v41;
    *v40 = 136315138;
    *(v40 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v38, &v71);
    _os_log_impl(&dword_264F1F000, v36, v37, "SwiftMLSClientCoordinator processIncoming errorMessage detected error code that is fatal { identifier: %s }", v40, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v41);
    MEMORY[0x266755550](v41, -1, -1);
    MEMORY[0x266755550](v40, -1, -1);
  }

  v43 = *(v0 + 136);
  v42 = *(v0 + 144);
  v44 = *(v0 + 120);
  v45 = *(v0 + 128);
  v46 = *(v44 + 96);
  v47 = *(v0 + 32);
  v48 = *(v0 + 40);
  v49 = swift_allocObject();
  *(v0 + 192) = v49;
  *(v49 + 16) = v44;
  *(v49 + 24) = v45;
  *(v49 + 32) = v43;
  *(v49 + 40) = v42;
  v50 = *(v0 + 32);
  *(v49 + 48) = *(v0 + 16);
  *(v49 + 64) = v50;
  *(v49 + 80) = *(v0 + 48);
  v51 = *(*v46 + 344);

  outlined init with copy of MLS.OutgoingEventState?(v0 + 16, v0 + 56, &_s15SecureMessaging3MLSO20IncomingErrorMessageVy_AC9AllMemberOGMd, &_s15SecureMessaging3MLSO20IncomingErrorMessageVy_AC9AllMemberOGMR);
  v68 = (v51 + *v51);
  v52 = swift_task_alloc();
  *(v0 + 200) = v52;
  *v52 = v0;
  v52[1] = MLS.SwiftMLSClientCoordinator.processIncoming(errorMessage:withGroup:context:);
  v29 = *(v0 + 112);
  v33 = &async function pointer to partial apply for closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(errorMessage:withGroup:context:);
  v30 = *(v0 + 104);
  v31 = v47;
  v32 = v48;
  v34 = v49;
  v35 = v68;
LABEL_23:

  return v35(v30, v29, v31, v32, v33, v34);
}

{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {
    v6 = *(v2 + 152);

    return MEMORY[0x2822009F8](MLS.SwiftMLSClientCoordinator.processIncoming(errorMessage:withGroup:context:), v6, 0);
  }
}

{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {
    v6 = *(v2 + 152);

    return MEMORY[0x2822009F8](MLS.SwiftMLSClientCoordinator.processIncoming(errorMessage:withGroup:context:), v6, 0);
  }
}

{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {
    v6 = *(v2 + 152);

    return MEMORY[0x2822009F8](MLS.SwiftMLSClientCoordinator.processIncoming(errorMessage:withGroup:context:), v6, 0);
  }
}

{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {
    v6 = *(v2 + 152);

    return MEMORY[0x2822009F8](MLS.SwiftMLSClientCoordinator.processIncoming(errorMessage:withGroup:context:), v6, 0);
  }
}

{
  v2 = *v1;
  *(*v1 + 208) = v0;

  if (v0)
  {
    v3 = *(v2 + 152);
    v4 = MLS.SwiftMLSClientCoordinator.processIncoming(errorMessage:withGroup:context:);
  }

  else
  {
    v5 = *(v2 + 152);

    v4 = MLS.SwiftMLSClientCoordinator.processIncoming(errorMessage:withGroup:context:);
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{
  v1 = v0[18];
  v2 = v0[12];
  *v2 = xmmword_2651B5F50;
  *(v2 + 16) = v1;

  v3 = v0[1];

  return v3();
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(errorMessage:withGroup:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 136) = a8;
  *(v8 + 144) = v14;
  *(v8 + 120) = a6;
  *(v8 + 128) = a7;
  *(v8 + 104) = a4;
  *(v8 + 112) = a5;
  *(v8 + 88) = a1;
  *(v8 + 96) = a3;
  v9 = *(a2 + 48);
  *(v8 + 48) = *(a2 + 32);
  *(v8 + 64) = v9;
  *(v8 + 80) = *(a2 + 64);
  v10 = *(a2 + 16);
  *(v8 + 16) = *a2;
  *(v8 + 32) = v10;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v11 = static MLSActor.shared;
  *(v8 + 152) = static MLSActor.shared;

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(errorMessage:withGroup:context:), v11, 0);
}

uint64_t closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(errorMessage:withGroup:context:)()
{
  v1 = *(v0 + 144);
  v3 = *(v0 + 112);
  v2 = *(v0 + 120);
  v12 = *(v0 + 96);
  v4 = *(v3 + direct field offset for MLS.SwiftMLSClientCoordinator.groupLoader);
  v5 = swift_task_alloc();
  *(v0 + 160) = v5;
  v6 = *(v0 + 128);
  *(v5 + 16) = v3;
  *(v5 + 24) = v12;
  *(v5 + 40) = v2;
  *(v5 + 48) = v6;
  *(v5 + 64) = v1;
  *(v5 + 72) = v0 + 16;
  v13 = (*(*v4 + 152) + **(*v4 + 152));
  v7 = swift_task_alloc();
  *(v0 + 168) = v7;
  *v7 = v0;
  v7[1] = closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(errorMessage:withGroup:context:);
  v8 = *(v0 + 120);
  v9 = *(v0 + 128);
  v10 = *(v0 + 88);

  return v13(v10, v8, v9, &async function pointer to partial apply for closure #1 in closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(errorMessage:withGroup:context:), v5, &type metadata for MLS.EventQueue.Result);
}

{
  v2 = *v1;
  v2[22] = v0;

  if (v0)
  {
    v3 = v2[19];

    return MEMORY[0x2822009F8](MLS.EventQueue.reenqueueAtFront(identifier:eventState:andBlockOnVersion:sendBlock:), v3, 0);
  }

  else
  {

    v4 = v2[1];

    return v4();
  }
}

uint64_t closure #1 in closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(errorMessage:withGroup:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[341] = v14;
  v8[340] = a8;
  v8[339] = a7;
  v8[338] = a6;
  v8[337] = a5;
  v8[336] = a4;
  v8[335] = a3;
  v8[334] = a2;
  v8[333] = a1;
  v9 = type metadata accessor for MLS.Group.GroupInfo();
  v8[342] = v9;
  v8[343] = *(v9 - 8);
  v8[344] = swift_task_alloc();
  v10 = type metadata accessor for UUID();
  v8[345] = v10;
  v8[346] = *(v10 - 8);
  v8[347] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v11 = static MLSActor.shared;
  v8[348] = static MLSActor.shared;

  return MEMORY[0x2822009F8](closure #1 in closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(errorMessage:withGroup:context:), v11, 0);
}

void closure #1 in closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(errorMessage:withGroup:context:)()
{
  v2 = *(**(*(v0 + 2672) + direct field offset for MLS.SwiftMLSClientCoordinator.groupLoader) + 192) + **(**(*(v0 + 2672) + direct field offset for MLS.SwiftMLSClientCoordinator.groupLoader) + 192);
  v1 = swift_task_alloc();
  *(v0 + 2792) = v1;
  lazy protocol witness table accessor for type MLS.IncomingMessageError and conformance MLS.IncomingMessageError();
  *v1 = v0;
  v1[1] = closure #1 in closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(errorMessage:withGroup:context:);

  __asm { BRAA            X8, X16 }
}

{
  if ((v0[359] & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v1 = v0[326];
    v2 = v0[327];
    __swift_project_boxed_opaque_existential_1(v0 + 323, v1);
    v5 = (*(v2 + 80) + **(v2 + 80));
    v3 = swift_task_alloc();
    v0[360] = v3;
    *v3 = v0;
    v3[1] = closure #1 in closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(errorMessage:withGroup:context:);
    v4 = v0[344];

    v5(v4, v1, v2);
  }
}

uint64_t closure #1 in closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(errorMessage:withGroup:context:)()
{
  v2 = *v1;

  v3 = *(v2 + 2784);
  if (v0)
  {
    v4 = closure #1 in closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(errorMessage:withGroup:context:);
  }

  else
  {
    v4 = closure #1 in closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(errorMessage:withGroup:context:);
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{
  v1 = *(v0 + 2776);
  v2 = *(v0 + 2768);
  v3 = *(v0 + 2760);
  v4 = *(v0 + 2728);
  v5 = *(v0 + 2720);
  v7 = *(v5 + 16);
  v6 = *(v5 + 24);

  UUID.init()();
  v8 = UUID.uuidString.getter();
  v10 = v9;
  (*(v2 + 8))(v1, v3);
  if (*(v4 + 8))
  {
    v11 = *(v0 + 2728);
    v13 = *(v11 + 56);
    v12 = *(v11 + 64);
    outlined copy of Data?(v13, v12);
  }

  else
  {
    v13 = 0;
    v12 = 0xF000000000000000;
  }

  v14 = *(v0 + 2712);
  v15 = *(v0 + 2672);
  *(v0 + 1488) = v7;
  *(v0 + 1496) = v6;
  *(v0 + 1504) = v8;
  *(v0 + 1512) = v10;
  *(v0 + 1520) = 0u;
  *(v0 + 1536) = 0u;
  *(v0 + 1552) = 0u;
  *(v0 + 1568) = 0u;
  *(v0 + 1584) = 0u;
  *(v0 + 1600) = 0u;
  *(v0 + 1616) = 0u;
  *(v0 + 1632) = 2;
  *(v0 + 1633) = *(v0 + 193);
  *(v0 + 1636) = *(v0 + 196);
  *(v0 + 1640) = v13;
  *(v0 + 1648) = v12;
  *(v0 + 1656) = v14;
  *(v0 + 2800) = v15[12];
  v16 = *(v0 + 1600);
  v17 = *(v0 + 1632);
  *(v0 + 144) = *(v0 + 1616);
  *(v0 + 160) = v17;
  *(v0 + 176) = *(v0 + 1648);
  v18 = *(v0 + 1536);
  v19 = *(v0 + 1568);
  *(v0 + 80) = *(v0 + 1552);
  *(v0 + 96) = v19;
  *(v0 + 112) = *(v0 + 1584);
  *(v0 + 128) = v16;
  v20 = *(v0 + 1504);
  *(v0 + 16) = *(v0 + 1488);
  *(v0 + 32) = v20;
  *(v0 + 48) = *(v0 + 1520);
  *(v0 + 64) = v18;
  _s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGWOi15_(v0 + 16);
  v21 = *(v0 + 160);
  *(v0 + 328) = *(v0 + 144);
  *(v0 + 344) = v21;
  *(v0 + 360) = *(v0 + 176);
  v22 = *(v0 + 96);
  *(v0 + 264) = *(v0 + 80);
  *(v0 + 280) = v22;
  v23 = *(v0 + 128);
  *(v0 + 296) = *(v0 + 112);
  *(v0 + 312) = v23;
  v24 = *(v0 + 32);
  *(v0 + 200) = *(v0 + 16);
  *(v0 + 216) = v24;
  v25 = *(v0 + 64);
  *(v0 + 232) = *(v0 + 48);
  *(v0 + 376) = *(v0 + 192);
  *(v0 + 248) = v25;
  outlined init with copy of ServerBag.MLS(v0 + 2544, v0 + 2584);
  *(v0 + 2808) = v15[10];
  *(v0 + 2816) = v15[11];
  v26 = v15 + direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier;
  *(v0 + 2824) = *(v15 + direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier);
  *(v0 + 2832) = *(v26 + 1);

  outlined init with copy of MLS.OutgoingEventState?(v0 + 1488, v0 + 1664, &_s15SecureMessaging3MLSO21OutgoingErrorOccurredVy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO21OutgoingErrorOccurredVy_AC9AllMemberO10Foundation4DataVGMR);

  return MEMORY[0x2822009F8](closure #1 in closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(errorMessage:withGroup:context:), 0, 0);
}

{
  v1 = v0[326];
  v2 = v0[327];
  __swift_project_boxed_opaque_existential_1(v0 + 323, v1);
  v3 = *(v2 + 32);

  v6 = (v3 + *v3);
  v4 = swift_task_alloc();
  v0[355] = v4;
  *v4 = v0;
  v4[1] = closure #1 in closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(errorMessage:withGroup:context:);

  return v6(v1, v2);
}

{
  v1 = v0[326];
  v2 = v0[327];
  __swift_project_boxed_opaque_existential_1(v0 + 323, v1);
  v5 = (*(v2 + 24) + **(v2 + 24));
  v3 = swift_task_alloc();
  v0[358] = v3;
  *v3 = v0;
  v3[1] = closure #1 in closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(errorMessage:withGroup:context:);

  return v5(v1, v2);
}

{
  v0[377] = v0[356];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 323);

  v1 = v0[348];

  return MEMORY[0x2822009F8](closure #1 in closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(errorMessage:withGroup:context:), v1, 0);
}

{
  v2 = *v1;
  *(*v1 + 2888) = v0;

  if (v0)
  {
    *(v2 + 744) = *(v2 + 376);
    v3 = *(v2 + 216);
    *(v2 + 568) = *(v2 + 200);
    *(v2 + 584) = v3;
    v4 = *(v2 + 248);
    *(v2 + 600) = *(v2 + 232);
    *(v2 + 616) = v4;
    v5 = *(v2 + 344);
    *(v2 + 696) = *(v2 + 328);
    *(v2 + 712) = v5;
    *(v2 + 728) = *(v2 + 360);
    v6 = *(v2 + 280);
    *(v2 + 632) = *(v2 + 264);
    *(v2 + 648) = v6;
    v7 = *(v2 + 312);
    *(v2 + 664) = *(v2 + 296);
    *(v2 + 680) = v7;
    outlined destroy of NSObject?(v2 + 568, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
    v8 = closure #1 in closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(errorMessage:withGroup:context:);
  }

  else
  {
    v8 = closure #1 in closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(errorMessage:withGroup:context:);
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

{
  v1 = v0[326];
  v2 = v0[327];
  __swift_project_boxed_opaque_existential_1(v0 + 323, v1);
  v5 = (*(v2 + 64) + **(v2 + 64));
  v3 = swift_task_alloc();
  v0[367] = v3;
  *v3 = v0;
  v3[1] = closure #1 in closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(errorMessage:withGroup:context:);

  return v5(v1, v2);
}

{
  v0[377] = v0[361];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 323);

  v1 = v0[348];

  return MEMORY[0x2822009F8](closure #1 in closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(errorMessage:withGroup:context:), v1, 0);
}

{
  v1 = v0[366];
  v2 = v0[363];
  v3 = v0[362];
  if (v1 >> 60 == 15)
  {
    v4 = 0xC000000000000000;
  }

  else
  {
    v4 = v0[366];
  }

  if (v1 >> 60 == 15)
  {
    v5 = 0;
  }

  else
  {
    v5 = v0[365];
  }

  v0[377] = v0[368];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 323);

  outlined consume of Data._Representation(v3, v2);
  outlined consume of Data._Representation(v5, v4);
  v6 = v0[348];

  return MEMORY[0x2822009F8](closure #1 in closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(errorMessage:withGroup:context:), v6, 0);
}

{
  v1 = *(v0 + 2992);
  v2 = (v0 + 2152);
  v3 = *(v0 + 2984);
  v25 = v3;
  v26 = v1;
  v4 = *(v0 + 2952);
  v5 = *(v0 + 2928);
  v6 = *(v0 + 2904);
  v7 = *(v0 + 2896);
  v23 = v7;
  v24 = v6;
  v8 = *(v0 + 2872);
  v22 = v8;
  v9 = *(v0 + 2856);
  v27 = *(v0 + 2800);
  v10 = *(v0 + 2688);
  v11 = *(v0 + 2680);
  if (v4 >> 60 == 15)
  {
    v12 = 0xC000000000000000;
  }

  else
  {
    v12 = *(v0 + 2952);
  }

  if (v4 >> 60 == 15)
  {
    v13 = 0;
  }

  else
  {
    v13 = *(v0 + 2960);
  }

  if (v5 >> 60 == 15)
  {
    v14 = 0xC000000000000000;
  }

  else
  {
    v14 = *(v0 + 2928);
  }

  if (v5 >> 60 == 15)
  {
    v15 = 0;
  }

  else
  {
    v15 = *(v0 + 2920);
  }

  if ((v9 & 0x100000000) != 0)
  {
    v16 = 1;
  }

  else
  {
    v16 = v9;
  }

  *(v0 + 1944) = v11;
  *(v0 + 1952) = v10;
  *(v0 + 1960) = v16;
  *(v0 + 1968) = v16;
  *(v0 + 1976) = v8;
  *(v0 + 1984) = v7;
  *(v0 + 1992) = v6;
  *(v0 + 2000) = v15;
  *(v0 + 2008) = v14;
  *(v0 + 2016) = v13;
  *(v0 + 2024) = v12;
  *(v0 + 2032) = v1;
  *(v0 + 2040) = v3;
  outlined init with copy of MLS.Group(v0 + 1944, v0 + 2048);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 2584));
  *(v0 + 1840) = v11;
  *(v0 + 1848) = v10;
  *(v0 + 1856) = v16;
  *(v0 + 1864) = v16;
  *(v0 + 1872) = v22;
  *(v0 + 1880) = v23;
  *(v0 + 1888) = v24;
  *(v0 + 1896) = v15;
  *(v0 + 1904) = v14;
  *(v0 + 1912) = v13;
  *(v0 + 1920) = v12;
  *(v0 + 1928) = v26;
  *(v0 + 1936) = v25;
  outlined destroy of MLS.Group(v0 + 1840);
  v17 = *(v0 + 2024);
  *(v0 + 2216) = *(v0 + 2008);
  *(v0 + 2232) = v17;
  *(v0 + 2248) = *(v0 + 2040);
  v18 = *(v0 + 1960);
  *v2 = *(v0 + 1944);
  *(v0 + 2168) = v18;
  v19 = *(v0 + 1992);
  *(v0 + 2184) = *(v0 + 1976);
  *(v0 + 2200) = v19;
  *(v0 + 2464) = 1;
  *(v0 + 2472) = 0u;
  *(v0 + 2488) = 0u;
  *(v0 + 2504) = 0u;
  *(v0 + 2520) = 0u;
  *(v0 + 2536) = 2;
  v28 = (*(*v27 + 368) + **(*v27 + 368));
  v20 = swift_task_alloc();
  *(v0 + 3000) = v20;
  *v20 = v0;
  v20[1] = closure #1 in closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(errorMessage:withGroup:context:);

  return v28(v0 + 200, v2, v0 + 2464, 1, 0, 0);
}

{
  v1 = v0[369];
  v2 = v0[366];
  v3 = v0[363];
  v4 = v0[362];
  if (v1 >> 60 == 15)
  {
    v5 = 0xC000000000000000;
  }

  else
  {
    v5 = v0[369];
  }

  if (v1 >> 60 == 15)
  {
    v6 = 0;
  }

  else
  {
    v6 = v0[370];
  }

  if (v2 >> 60 == 15)
  {
    v7 = 0xC000000000000000;
  }

  else
  {
    v7 = v0[366];
  }

  if (v2 >> 60 == 15)
  {
    v8 = 0;
  }

  else
  {
    v8 = v0[365];
  }

  v0[377] = v0[372];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 323);

  outlined consume of Data._Representation(v4, v3);
  outlined consume of Data._Representation(v8, v7);
  outlined consume of Data._Representation(v6, v5);
  v9 = v0[348];

  return MEMORY[0x2822009F8](closure #1 in closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(errorMessage:withGroup:context:), v9, 0);
}

{
  outlined destroy of NSObject?(v0 + 1488, &_s15SecureMessaging3MLSO21OutgoingErrorOccurredVy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO21OutgoingErrorOccurredVy_AC9AllMemberO10Foundation4DataVGMR);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 2544));

  v1 = *(v0 + 8);

  return v1();
}

{
  v1 = v0[333];
  outlined destroy of NSObject?((v0 + 186), &_s15SecureMessaging3MLSO21OutgoingErrorOccurredVy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO21OutgoingErrorOccurredVy_AC9AllMemberO10Foundation4DataVGMR);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 318);
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
  v1 = *(v0 + 2624);
  v2 = *(v0 + 2632);
  v3 = *(v0 + 2640);
  lazy protocol witness table accessor for type MLS.IncomingMessageError and conformance MLS.IncomingMessageError();
  swift_allocError();
  *v4 = v1;
  *(v4 + 8) = v2;
  *(v4 + 16) = v3;

  v5 = *(v0 + 8);

  return v5();
}

{
  outlined destroy of NSObject?(v0 + 1488, &_s15SecureMessaging3MLSO21OutgoingErrorOccurredVy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO21OutgoingErrorOccurredVy_AC9AllMemberO10Foundation4DataVGMR);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 2544));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t closure #1 in closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(errorMessage:withGroup:context:)(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 2848) = v1;

  if (v1)
  {
    *(v4 + 560) = *(v4 + 376);
    v5 = *(v4 + 216);
    *(v4 + 384) = *(v4 + 200);
    *(v4 + 400) = v5;
    v6 = *(v4 + 248);
    *(v4 + 416) = *(v4 + 232);
    *(v4 + 432) = v6;
    v7 = *(v4 + 344);
    *(v4 + 512) = *(v4 + 328);
    *(v4 + 528) = v7;
    *(v4 + 544) = *(v4 + 360);
    v8 = *(v4 + 280);
    *(v4 + 448) = *(v4 + 264);
    *(v4 + 464) = v8;
    v9 = *(v4 + 312);
    *(v4 + 480) = *(v4 + 296);
    *(v4 + 496) = v9;
    outlined destroy of NSObject?(v4 + 384, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
    v10 = closure #1 in closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(errorMessage:withGroup:context:);
  }

  else
  {
    *(v4 + 2856) = a1;
    v10 = closure #1 in closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(errorMessage:withGroup:context:);
  }

  return MEMORY[0x2822009F8](v10, 0, 0);
}

{
  *(*v1 + 2872) = a1;

  return MEMORY[0x2822009F8](closure #1 in closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(errorMessage:withGroup:context:), 0, 0);
}

{
  v2 = v1[344];
  v3 = v1[343];
  v4 = v1[342];
  v1[362] = MLS.Group.GroupInfo.rawRepresentation.getter();
  v1[363] = v5;
  (*(v3 + 8))(v2, v4);
  v6 = v1[326];
  v7 = v1[327];
  __swift_project_boxed_opaque_existential_1(v1 + 323, v6);
  v10 = (*(v7 + 56) + **(v7 + 56));
  v8 = swift_task_alloc();
  v1[364] = v8;
  *v8 = v1;
  v8[1] = closure #1 in closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(errorMessage:withGroup:context:);

  return v10(v6, v7);
}

{
  v3 = *v2;
  v4 = *v2;
  v5 = (*v2 + 200);
  v6 = (*v2 + 2152);
  *(*v2 + 3008) = v1;

  v7 = *(v3 + 2784);
  if (v1)
  {
    v8 = *v6;
    v9 = *(v4 + 2168);
    *(v4 + 2288) = *(v4 + 2184);
    *(v4 + 2272) = v9;
    *(v4 + 2256) = v8;
    v10 = *(v4 + 2200);
    v11 = *(v4 + 2216);
    v12 = *(v4 + 2232);
    *(v4 + 2352) = *(v4 + 2248);
    *(v4 + 2336) = v12;
    *(v4 + 2320) = v11;
    *(v4 + 2304) = v10;
    outlined destroy of MLS.Group(v4 + 2256);
    v13 = *(v4 + 232);
    v14 = *(v4 + 248);
    v15 = *(v4 + 216);
    *(v4 + 1120) = *v5;
    *(v4 + 1168) = v14;
    *(v4 + 1152) = v13;
    *(v4 + 1136) = v15;
    v16 = *(v4 + 296);
    v17 = *(v4 + 312);
    v18 = *(v4 + 280);
    *(v4 + 1184) = *(v4 + 264);
    *(v4 + 1232) = v17;
    *(v4 + 1216) = v16;
    *(v4 + 1200) = v18;
    v20 = *(v4 + 344);
    v19 = *(v4 + 360);
    v21 = *(v4 + 376);
    *(v4 + 1248) = *(v4 + 328);
    *(v4 + 1296) = v21;
    *(v4 + 1280) = v19;
    *(v4 + 1264) = v20;
    outlined destroy of NSObject?(v4 + 1120, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
    v22 = closure #1 in closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(errorMessage:withGroup:context:);
  }

  else
  {

    v23 = *v6;
    v24 = *(v4 + 2184);
    *(v4 + 2376) = *(v4 + 2168);
    *(v4 + 2392) = v24;
    *(v4 + 2360) = v23;
    v25 = *(v4 + 2200);
    v26 = *(v4 + 2216);
    v27 = *(v4 + 2232);
    *(v4 + 2456) = *(v4 + 2248);
    *(v4 + 2424) = v26;
    *(v4 + 2440) = v27;
    *(v4 + 2408) = v25;
    outlined destroy of MLS.Group(v4 + 2360);
    v28 = *(v4 + 248);
    v30 = *v5;
    v29 = *(v4 + 216);
    *(v4 + 1336) = *(v4 + 232);
    *(v4 + 1352) = v28;
    *(v4 + 1304) = v30;
    *(v4 + 1320) = v29;
    v31 = *(v4 + 312);
    v33 = *(v4 + 264);
    v32 = *(v4 + 280);
    *(v4 + 1400) = *(v4 + 296);
    *(v4 + 1416) = v31;
    *(v4 + 1368) = v33;
    *(v4 + 1384) = v32;
    v35 = *(v4 + 344);
    v34 = *(v4 + 360);
    v36 = *(v4 + 328);
    *(v4 + 1480) = *(v4 + 376);
    *(v4 + 1448) = v35;
    *(v4 + 1464) = v34;
    *(v4 + 1432) = v36;
    outlined destroy of NSObject?(v4 + 1304, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
    v22 = closure #1 in closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(errorMessage:withGroup:context:);
  }

  return MEMORY[0x2822009F8](v22, v7, 0);
}

uint64_t closure #1 in closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(errorMessage:withGroup:context:)(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 2920) = a1;
  *(v3 + 2928) = a2;

  return MEMORY[0x2822009F8](closure #1 in closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(errorMessage:withGroup:context:), 0, 0);
}

{
  v6 = *v3;
  *(v6 + 2944) = v2;

  if (v2)
  {
    *(v6 + 928) = *(v6 + 376);
    v7 = *(v6 + 216);
    *(v6 + 752) = *(v6 + 200);
    *(v6 + 768) = v7;
    v8 = *(v6 + 248);
    *(v6 + 784) = *(v6 + 232);
    *(v6 + 800) = v8;
    v9 = *(v6 + 344);
    *(v6 + 880) = *(v6 + 328);
    *(v6 + 896) = v9;
    *(v6 + 912) = *(v6 + 360);
    v10 = *(v6 + 280);
    *(v6 + 816) = *(v6 + 264);
    *(v6 + 832) = v10;
    v11 = *(v6 + 312);
    *(v6 + 848) = *(v6 + 296);
    *(v6 + 864) = v11;
    outlined destroy of NSObject?(v6 + 752, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);

    return MEMORY[0x2822009F8](closure #1 in closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(errorMessage:withGroup:context:), 0, 0);
  }

  else
  {
    v12 = *(v6 + 2832);
    v13 = *(v6 + 2824);
    v21 = *(v6 + 2816);
    *(v6 + 2952) = a2;
    *(v6 + 2960) = a1;
    ObjectType = swift_getObjectType();
    *(v6 + 2648) = v13;
    *(v6 + 2656) = v12;
    v20 = (*(v21 + 64) + **(v21 + 64));
    v15 = swift_task_alloc();
    *(v6 + 2968) = v15;
    *v15 = v6;
    v15[1] = closure #1 in closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(errorMessage:withGroup:context:);
    v16 = *(v6 + 2816);
    v17 = *(v6 + 2688);
    v18 = *(v6 + 2680);

    return v20(v18, v17, v6 + 2648, ObjectType, v16);
  }
}

{
  v6 = *v3;
  *(*v3 + 2976) = v2;

  if (v2)
  {
    *(v6 + 1112) = *(v6 + 376);
    v7 = *(v6 + 216);
    *(v6 + 936) = *(v6 + 200);
    *(v6 + 952) = v7;
    v8 = *(v6 + 248);
    *(v6 + 968) = *(v6 + 232);
    *(v6 + 984) = v8;
    v9 = *(v6 + 344);
    *(v6 + 1064) = *(v6 + 328);
    *(v6 + 1080) = v9;
    *(v6 + 1096) = *(v6 + 360);
    v10 = *(v6 + 280);
    *(v6 + 1000) = *(v6 + 264);
    *(v6 + 1016) = v10;
    v11 = *(v6 + 312);
    *(v6 + 1032) = *(v6 + 296);
    *(v6 + 1048) = v11;
    outlined destroy of NSObject?(v6 + 936, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
    v12 = closure #1 in closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(errorMessage:withGroup:context:);
  }

  else
  {
    *(v6 + 2984) = a2;
    *(v6 + 2992) = a1;
    v12 = closure #1 in closure #1 in MLS.SwiftMLSClientCoordinator.processIncoming(errorMessage:withGroup:context:);
  }

  return MEMORY[0x2822009F8](v12, 0, 0);
}

uint64_t MLS.SwiftMLSClientCoordinator.addMembers(identifier:otherMembers:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[6] = a3;
  v4[7] = v3;
  v4[4] = a1;
  v4[5] = a2;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v5 = static MLSActor.shared;
  v4[8] = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.SwiftMLSClientCoordinator.addMembers(identifier:otherMembers:), v5, 0);
}

uint64_t MLS.SwiftMLSClientCoordinator.addMembers(identifier:otherMembers:)()
{
  v1 = v0[6];
  v2 = v0[7];
  v3 = *(v2 + 88);
  ObjectType = swift_getObjectType();
  v5 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy15SecureMessaging3MLSO9AllMemberOG_AH09PersistedH0Vs5NeverOTg504_s15d129Messaging3MLSO25SwiftMLSClientCoordinatorC17addPendingMembers33_4A5F1255AF5325EF77C6CF072348849210identifier05otherI0ySS_ShyAC9gh11OGtYaKFAC09I10S0VAKXEfU_Tf1cn_nTm(v1, 1294, 0);
  v0[9] = v5;
  v6 = *(v2 + direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier + 8);
  v0[2] = *(v2 + direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier);
  v0[3] = v6;
  v7 = *(v3 + 80);

  v13 = (v7 + *v7);
  v8 = swift_task_alloc();
  v0[10] = v8;
  *v8 = v0;
  v8[1] = MLS.SwiftMLSClientCoordinator.addMembers(identifier:otherMembers:);
  v9 = v0[5];
  v10 = MEMORY[0x277D84F90];
  v11 = v0[4];

  return (v13)(v11, v9, v5, v10, v0 + 2, ObjectType, v3);
}

{
  v2 = *v1;
  v2[11] = v0;

  if (v0)
  {
    v3 = v2[8];

    return MEMORY[0x2822009F8](closure #1 in MLS.Client.update(groupDetails:forGroup:), v3, 0);
  }

  else
  {

    v4 = v2[1];

    return v4();
  }
}

uint64_t MLS.SwiftMLSClientCoordinator.addPendingMembers(identifier:otherMembers:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[6] = a3;
  v4[7] = v3;
  v4[4] = a1;
  v4[5] = a2;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v5 = static MLSActor.shared;
  v4[8] = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.SwiftMLSClientCoordinator.addPendingMembers(identifier:otherMembers:), v5, 0);
}

uint64_t MLS.SwiftMLSClientCoordinator.addPendingMembers(identifier:otherMembers:)()
{
  v1 = v0[6];
  v2 = v0[7];
  v3 = *(v2 + 88);
  ObjectType = swift_getObjectType();
  v5 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy15SecureMessaging3MLSO9AllMemberOG_AH09PersistedH0Vs5NeverOTg504_s15d129Messaging3MLSO25SwiftMLSClientCoordinatorC17addPendingMembers33_4A5F1255AF5325EF77C6CF072348849210identifier05otherI0ySS_ShyAC9gh11OGtYaKFAC09I10S0VAKXEfU_Tf1cn_nTm(v1, 1298, 1);
  v0[9] = v5;
  v6 = *(v2 + direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier + 8);
  v0[2] = *(v2 + direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier);
  v0[3] = v6;
  v7 = *(v3 + 80);

  v13 = (v7 + *v7);
  v8 = swift_task_alloc();
  v0[10] = v8;
  *v8 = v0;
  v8[1] = MLS.SwiftMLSClientCoordinator.addPendingMembers(identifier:otherMembers:);
  v9 = v0[5];
  v10 = MEMORY[0x277D84F90];
  v11 = v0[4];

  return (v13)(v11, v9, v5, v10, v0 + 2, ObjectType, v3);
}

{
  v2 = *v1;
  v2[11] = v0;

  if (v0)
  {
    v3 = v2[8];

    return MEMORY[0x2822009F8](MLS.SwiftMLSClientCoordinator.addPendingMembers(identifier:otherMembers:), v3, 0);
  }

  else
  {

    v4 = v2[1];

    return v4();
  }
}

uint64_t MLS.SwiftMLSClientCoordinator.removeMembers(identifier:otherMembers:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[6] = a3;
  v4[7] = v3;
  v4[4] = a1;
  v4[5] = a2;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v5 = static MLSActor.shared;
  v4[8] = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.SwiftMLSClientCoordinator.removeMembers(identifier:otherMembers:), v5, 0);
}

uint64_t MLS.SwiftMLSClientCoordinator.removeMembers(identifier:otherMembers:)()
{
  v1 = v0[6];
  v2 = v0[7];
  v3 = *(v2 + 88);
  ObjectType = swift_getObjectType();
  v5 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy15SecureMessaging3MLSO9AllMemberOG_AH09PersistedH0Vs5NeverOTg504_s15d129Messaging3MLSO25SwiftMLSClientCoordinatorC17addPendingMembers33_4A5F1255AF5325EF77C6CF072348849210identifier05otherI0ySS_ShyAC9gh11OGtYaKFAC09I10S0VAKXEfU_Tf1cn_nTm(v1, 1302, 0);
  v0[9] = v5;
  v6 = *(v2 + direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier + 8);
  v0[2] = *(v2 + direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier);
  v0[3] = v6;
  v7 = *(v3 + 80);

  v13 = (v7 + *v7);
  v8 = swift_task_alloc();
  v0[10] = v8;
  *v8 = v0;
  v8[1] = MLS.SwiftMLSClientCoordinator.addPendingMembers(identifier:otherMembers:);
  v9 = v0[5];
  v10 = MEMORY[0x277D84F90];
  v11 = v0[4];

  return (v13)(v11, v9, v10, v5, v0 + 2, ObjectType, v3);
}

uint64_t MLS.SwiftMLSClientCoordinator.replaceMembers(identifier:otherMembers:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[6] = a3;
  v4[7] = v3;
  v4[4] = a1;
  v4[5] = a2;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v5 = static MLSActor.shared;
  v4[8] = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.SwiftMLSClientCoordinator.replaceMembers(identifier:otherMembers:), v5, 0);
}

uint64_t MLS.SwiftMLSClientCoordinator.replaceMembers(identifier:otherMembers:)()
{
  v1 = v0[6];
  v2 = v0[7];
  v3 = *(v2 + 88);
  ObjectType = swift_getObjectType();
  v5 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy15SecureMessaging3MLSO9AllMemberOG_AH09PersistedH0Vs5NeverOTg504_s15d129Messaging3MLSO25SwiftMLSClientCoordinatorC17addPendingMembers33_4A5F1255AF5325EF77C6CF072348849210identifier05otherI0ySS_ShyAC9gh11OGtYaKFAC09I10S0VAKXEfU_Tf1cn_nTm(v1, 1310, 0);
  v0[9] = v5;
  v6 = *(v2 + direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier + 8);
  v0[2] = *(v2 + direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier);
  v0[3] = v6;
  v7 = *(v3 + 88);

  v12 = (v7 + *v7);
  v8 = swift_task_alloc();
  v0[10] = v8;
  *v8 = v0;
  v8[1] = MLS.SwiftMLSClientCoordinator.addPendingMembers(identifier:otherMembers:);
  v10 = v0[4];
  v9 = v0[5];

  return (v12)(v10, v9, v5, v0 + 2, ObjectType, v3);
}

uint64_t MLS.SwiftMLSClientCoordinator.getCredentialSigningRequest(telURI:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[15] = a3;
  v4[16] = v3;
  v4[13] = a1;
  v4[14] = a2;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v5 = static MLSActor.shared;
  v4[17] = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.SwiftMLSClientCoordinator.getCredentialSigningRequest(telURI:), v5, 0);
}

uint64_t MLS.SwiftMLSClientCoordinator.getCredentialSigningRequest(telURI:)()
{
  outlined init with copy of MLS.SwiftMLSClientPicker(*(v0 + 128) + 16, v0 + 16);
  if (*(v0 + 56))
  {
    lazy protocol witness table accessor for type KDSRegistration.GetIdentityError and conformance KDSRegistration.GetIdentityError();
    swift_allocError();
    *v1 = 4;
    *(v1 + 8) = 0;
    *(v1 + 16) = 0;

    swift_willThrow();
    outlined destroy of MLS.SwiftMLSClientPicker(v0 + 16);
    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    outlined init with take of MLS.KeyUpdatePolicy((v0 + 16), v0 + 64);
    v4 = *(v0 + 88);
    v5 = *(v0 + 96);
    __swift_project_boxed_opaque_existential_1((v0 + 64), v4);
    v10 = (*(v5 + 16) + **(v5 + 16));
    v6 = swift_task_alloc();
    *(v0 + 144) = v6;
    *v6 = v0;
    v6[1] = MLS.SwiftMLSClientCoordinator.getCredentialSigningRequest(telURI:);
    v7 = *(v0 + 112);
    v8 = *(v0 + 120);
    v9 = *(v0 + 104);

    return v10(v9, v7, v8, v4, v5);
  }
}

{
  v2 = *v1;
  *(*v1 + 152) = v0;

  v3 = *(v2 + 136);
  if (v0)
  {
    v4 = MLS.SwiftMLSClientCoordinator.getCredentialSigningRequest(telURI:);
  }

  else
  {
    v4 = MLS.SwiftMLSClientCoordinator.getCredentialSigningRequest(telURI:);
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t MLS.SwiftMLSClientCoordinator.loadCredential(credential:telURI:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[15] = a3;
  v4[16] = v3;
  v4[13] = a1;
  v4[14] = a2;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v5 = static MLSActor.shared;
  v4[17] = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.SwiftMLSClientCoordinator.loadCredential(credential:telURI:), v5, 0);
}

uint64_t MLS.SwiftMLSClientCoordinator.loadCredential(credential:telURI:)()
{
  outlined init with copy of MLS.SwiftMLSClientPicker(*(v0 + 128) + 16, v0 + 16);
  if (*(v0 + 56))
  {
    lazy protocol witness table accessor for type KDSRegistration.GetIdentityError and conformance KDSRegistration.GetIdentityError();
    swift_allocError();
    *v1 = 4;
    *(v1 + 8) = 0;
    *(v1 + 16) = 0;

    swift_willThrow();
    outlined destroy of MLS.SwiftMLSClientPicker(v0 + 16);
    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    outlined init with take of MLS.KeyUpdatePolicy((v0 + 16), v0 + 64);
    v4 = *(v0 + 88);
    v5 = *(v0 + 96);
    __swift_project_boxed_opaque_existential_1((v0 + 64), v4);
    v10 = (*(v5 + 24) + **(v5 + 24));
    v6 = swift_task_alloc();
    *(v0 + 144) = v6;
    *v6 = v0;
    v6[1] = MLS.SwiftMLSClientCoordinator.loadCredential(credential:telURI:);
    v7 = *(v0 + 112);
    v8 = *(v0 + 120);
    v9 = *(v0 + 104);

    return v10(v9, v7, v8, v4, v5);
  }
}

{
  v2 = *v1;
  *(*v1 + 152) = v0;

  v3 = *(v2 + 136);
  if (v0)
  {
    v4 = MLS.SwiftMLSClientCoordinator.loadCredential(credential:telURI:);
  }

  else
  {
    v4 = MLS.SwiftMLSClientCoordinator.loadCredential(credential:telURI:);
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 64));
  v1 = *(v0 + 8);

  return v1();
}

{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 64));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t MLS.SwiftMLSClientCoordinator.retry(eventState:forGroupIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 104) = a4;
  *(v5 + 112) = v4;
  *(v5 + 88) = a1;
  *(v5 + 96) = a3;
  v6 = *(a2 + 48);
  *(v5 + 48) = *(a2 + 32);
  *(v5 + 64) = v6;
  *(v5 + 80) = *(a2 + 64);
  v7 = *(a2 + 16);
  *(v5 + 16) = *a2;
  *(v5 + 32) = v7;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v8 = static MLSActor.shared;
  *(v5 + 120) = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.SwiftMLSClientCoordinator.retry(eventState:forGroupIdentifier:), v8, 0);
}

uint64_t MLS.SwiftMLSClientCoordinator.retry(eventState:forGroupIdentifier:)()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];
  v4 = *(v1 + direct field offset for MLS.SwiftMLSClientCoordinator.groupLoader);
  v5 = v0[7];
  v6 = v0[8];
  v7 = swift_task_alloc();
  v0[16] = v7;
  v7[2] = v1;
  v7[3] = v0 + 2;
  v7[4] = v3;
  v7[5] = v2;
  v11 = (*(*v4 + 152) + **(*v4 + 152));
  v8 = swift_task_alloc();
  v0[17] = v8;
  *v8 = v0;
  v8[1] = MLS.SwiftMLSClientCoordinator.retry(eventState:forGroupIdentifier:);
  v9 = v0[11];

  return v11(v9, v5, v6, &async function pointer to partial apply for closure #1 in MLS.SwiftMLSClientCoordinator.retry(eventState:forGroupIdentifier:), v7, &type metadata for MLS.EventQueue.Result);
}

{
  v2 = *v1;
  v2[18] = v0;

  if (v0)
  {
    v3 = v2[15];

    return MEMORY[0x2822009F8](MLS.SwiftMLSClientCoordinator.retry(eventState:forGroupIdentifier:), v3, 0);
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

uint64_t closure #1 in MLS.SwiftMLSClientCoordinator.retry(eventState:forGroupIdentifier:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[928] = a5;
  v5[927] = a4;
  v5[926] = a3;
  v5[925] = a2;
  v5[924] = a1;
  v5[929] = *a2;
  type metadata accessor for MLS.KeyPackageProvider(0);
  v5[930] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v5[931] = swift_task_alloc();
  v5[932] = swift_task_alloc();
  v6 = type metadata accessor for Date();
  v5[933] = v6;
  v5[934] = *(v6 - 8);
  v5[935] = swift_task_alloc();
  v5[936] = swift_task_alloc();
  v5[937] = swift_task_alloc();
  v7 = type metadata accessor for MLS.Identity.Credential();
  v5[938] = v7;
  v5[939] = *(v7 - 8);
  v5[940] = swift_task_alloc();
  v8 = type metadata accessor for MLS.Identity.SigningIdentity();
  v5[941] = v8;
  v5[942] = *(v8 - 8);
  v5[943] = swift_task_alloc();
  v9 = type metadata accessor for MLS.Client.KeyPackage();
  v5[944] = v9;
  v5[945] = *(v9 - 8);
  v5[946] = swift_task_alloc();
  v10 = type metadata accessor for MLS.Group.GroupInfo();
  v5[947] = v10;
  v5[948] = *(v10 - 8);
  v5[949] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v11 = static MLSActor.shared;
  v5[950] = static MLSActor.shared;

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.retry(eventState:forGroupIdentifier:), v11, 0);
}

void closure #1 in MLS.SwiftMLSClientCoordinator.retry(eventState:forGroupIdentifier:)()
{
  v20[1] = *MEMORY[0x277D85DE8];
  v1 = v0[926];
  v0[951] = direct field offset for MLS.SwiftMLSClientCoordinator.logger;
  outlined init with copy of MLS.OutgoingEventState(v1, (v0 + 636));
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  outlined destroy of MLS.OutgoingEventState(v1);
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[926];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v20[0] = v6;
    *v5 = 136315138;
    *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v4 + 40), *(v4 + 48), v20);
    _os_log_impl(&dword_264F1F000, v2, v3, "SwiftMLSClientCoordinator retry called { identifier: %s }", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x266755550](v6, -1, -1);
    MEMORY[0x266755550](v5, -1, -1);
  }

  v7 = v0[928];
  v8 = v0[927];
  v9 = v0[925];
  v10 = *(v9 + direct field offset for MLS.SwiftMLSClientCoordinator.groupLoader);
  v11 = v0[926];
  v0[952] = v10;
  v0[953] = *(v11 + 40);
  v0[954] = *(v11 + 48);
  v12 = swift_allocObject();
  v0[955] = v12;
  *(v12 + 16) = *v11;
  v13 = *(v11 + 16);
  v14 = *(v11 + 48);
  v15 = *(v11 + 64);
  *(v12 + 48) = *(v11 + 32);
  *(v12 + 64) = v14;
  *(v12 + 32) = v13;
  *(v12 + 80) = v15;
  *(v12 + 88) = v9;
  *(v12 + 96) = v8;
  *(v12 + 104) = v7;
  v16 = *(*v10 + 192);
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  outlined init with copy of MLS.OutgoingEventState(v11, (v0 + 699));

  v19 = v16 + *v16;
  v17 = swift_task_alloc();
  v0[956] = v17;
  v18 = lazy protocol witness table accessor for type MLS.GroupOperationError and conformance MLS.GroupOperationError();
  *v17 = v0;
  v17[1] = closure #1 in MLS.SwiftMLSClientCoordinator.retry(eventState:forGroupIdentifier:);
  v25 = v18;
  v26 = v0 + 860;
  v23 = v12;
  v24 = &type metadata for MLS.GroupOperationError;
  v22 = &async function pointer to partial apply for closure #1 in closure #1 in MLS.SwiftMLSClientCoordinator.retry(eventState:forGroupIdentifier:);

  __asm { BRAA            X9, X16 }
}

uint64_t closure #1 in MLS.SwiftMLSClientCoordinator.retry(eventState:forGroupIdentifier:)()
{
  v2 = *v1;
  *(*v1 + 7656) = v0;

  if (v0)
  {
    v3 = *(v2 + 7600);
    swift_bridgeObjectRelease_n();

    v4 = closure #1 in MLS.SwiftMLSClientCoordinator.retry(eventState:forGroupIdentifier:);
  }

  else
  {
    v3 = *(v2 + 7600);

    v4 = closure #1 in MLS.SwiftMLSClientCoordinator.retry(eventState:forGroupIdentifier:);
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{
  v257 = v0;
  v256 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 7408);
  v2 = *(v1 + 16);
  *(v0 + 7664) = v2;
  v3 = *(v1 + 24);
  *(v0 + 7672) = v3;
  v4 = *(v1 + 32);
  if (v4 <= 4)
  {
    if (*(v1 + 32) > 1u)
    {
      if (v4 == 2)
      {

        swift_bridgeObjectRelease_n();
        outlined init with copy of MLS.OutgoingEventState(v1, v0 + 5376);
        v94 = Logger.logObject.getter();
        v95 = static os_log_type_t.default.getter();
        outlined destroy of MLS.OutgoingEventState(v1);
        if (os_log_type_enabled(v94, v95))
        {
          v96 = *(v0 + 7632);
          v97 = *(v0 + 7624);
          v98 = swift_slowAlloc();
          v99 = swift_slowAlloc();
          *&v254[0] = v99;
          *v98 = 136315138;
          *(v98 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v97, v96, v254);
          _os_log_impl(&dword_264F1F000, v94, v95, "SwiftMLSClientCoordinator retry retrying kick { identifier: %s }", v98, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v99);
          MEMORY[0x266755550](v99, -1, -1);
          MEMORY[0x266755550](v98, -1, -1);
        }

        v239 = *(v0 + 7624);
        v100 = *(v0 + 7424);
        v229 = *(v0 + 7416);
        v101 = *(v0 + 7408);
        v102 = *(v0 + 7400);
        v103 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_15SecureMessaging15MetricCollectorV5EventVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
        *(v0 + 7960) = v103;
        *(v0 + 7088) = *(v101 + 56);
        v216 = *(v0 + 7096);
        v221 = *(v0 + 7088);
        outlined init with copy of ServerBag.MLS(v102 + 104, v0 + 6000);
        v104 = *(v102 + direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier + 8);
        v212 = *(v102 + direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier);
        v105 = type metadata accessor for MLS.KickMembersOperation(0);
        v106 = swift_allocObject();
        v248 = *(v102 + 80);
        *(v0 + 7968) = v106;
        outlined init with copy of MLS.OutgoingEventState?(v0 + 7088, v0 + 6976, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);

        swift_unknownObjectRetain();

        Logger.init(subsystem:category:)();
        *(v106 + 16) = v2;
        *(v106 + 24) = v229;
        *(v106 + 32) = v100;
        *(v106 + 40) = v239;
        *(v106 + 56) = v221;
        *(v106 + 64) = v216;
        *(v106 + 72) = v103;
        outlined init with take of MLS.KeyUpdatePolicy((v0 + 6000), v106 + 80);
        *(v106 + 120) = v248;
        *(v106 + 136) = v212;
        *(v106 + 144) = v104;
        v107 = *(v102 + direct field offset for MLS.SwiftMLSClientCoordinator.runner);
        *(v0 + 7376) = v106;
        *(v0 + 7384) = v103;
        outlined init with copy of ServerBag.MLS(v0 + 6240, v0 + 6160);
        *(v0 + 6904) = 0;
        *(v0 + 6920) = 0;
        *(v0 + 6912) = 0;
        v108 = *(*v107 + 224);

        v237 = (v108 + *v108);
        v109 = swift_task_alloc();
        *(v0 + 7976) = v109;
        v110 = lazy protocol witness table accessor for type MLS.AddMembersOperation and conformance MLS.AddMembersOperation(&lazy protocol witness table cache variable for type MLS.KickMembersOperation and conformance MLS.KickMembersOperation, type metadata accessor for MLS.KickMembersOperation, &protocol conformance descriptor for MLS.KickMembersOperation);
        *v109 = v0;
        v109[1] = closure #1 in MLS.SwiftMLSClientCoordinator.retry(eventState:forGroupIdentifier:);
        v27 = v110;
        v28 = v0 + 1968;
        v29 = v0 + 7376;
        v30 = v0 + 7384;
        v31 = v0 + 6160;
        v32 = v0 + 6904;
        v33 = v0 + 6856;
        v34 = v105;
        goto LABEL_63;
      }

      if (v4 == 3)
      {
        swift_bridgeObjectRelease_n();
        outlined init with copy of MLS.OutgoingEventState(v1, v0 + 5664);
        v5 = Logger.logObject.getter();
        v6 = static os_log_type_t.default.getter();
        outlined destroy of MLS.OutgoingEventState(v1);
        if (os_log_type_enabled(v5, v6))
        {
          v7 = *(v0 + 7632);
          v8 = *(v0 + 7624);
          v9 = swift_slowAlloc();
          v10 = swift_slowAlloc();
          *&v254[0] = v10;
          *v9 = 136315138;
          *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v7, v254);
          _os_log_impl(&dword_264F1F000, v5, v6, "SwiftMLSClientCoordinator retry retrying leave { identifier: %s }", v9, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v10);
          MEMORY[0x266755550](v10, -1, -1);
          MEMORY[0x266755550](v9, -1, -1);
        }

        v11 = *(v0 + 7632);
        v12 = *(v0 + 7624);
        v13 = *(v0 + 7616);
        v14 = *(v0 + 7432);
        v15 = *(v0 + 7424);
        v245 = *(v0 + 7416);
        v16 = *(v0 + 7408);
        v17 = *(v0 + 7400);
        v18 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_15SecureMessaging15MetricCollectorV5EventVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
        *(v0 + 7984) = v18;
        v235 = type metadata accessor for MLS.LeaveGroupOperation(0);
        *(v0 + 7072) = *(v16 + 56);
        *&v254[0] = v12;
        *(&v254[0] + 1) = v11;
        v254[1] = *(v0 + 7072);
        v255 = v18;
        v19 = *(v17 + 96);
        v20 = *(v17 + direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier + 8);
        v253[0] = *(v17 + direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier);
        v253[1] = v20;

        outlined init with copy of MLS.OutgoingEventState?(v0 + 7072, v0 + 7024, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);

        v21 = *(v14 + 96);
        *(v0 + 6440) = *(v14 + 80);
        *(v0 + 6456) = v21;
        v22 = type metadata accessor for MLS.EventSender(0, v0 + 6440);
        v23 = specialized MLS.LeaveGroupOperation.__allocating_init(group:context:groupLoader:eventSender:clientIdentifier:)(v245, v15, v254, v13, v19, v253, v235, v22, &protocol witness table for MLS.EventSender<A, B>);
        *(v0 + 7992) = v23;
        v24 = *(v17 + direct field offset for MLS.SwiftMLSClientCoordinator.runner);
        *(v0 + 7360) = v23;
        *(v0 + 7368) = v18;
        outlined init with copy of ServerBag.MLS(v0 + 6240, v0 + 5880);
        *(v0 + 6712) = 0;
        *(v0 + 6728) = 0;
        *(v0 + 6720) = 0;
        v227 = (*(*v24 + 224) + **(*v24 + 224));
        v25 = swift_task_alloc();
        *(v0 + 8000) = v25;
        v26 = lazy protocol witness table accessor for type MLS.AddMembersOperation and conformance MLS.AddMembersOperation(&lazy protocol witness table cache variable for type MLS.LeaveGroupOperation and conformance MLS.LeaveGroupOperation, type metadata accessor for MLS.LeaveGroupOperation, &protocol conformance descriptor for MLS.LeaveGroupOperation);
        *v25 = v0;
        v25[1] = closure #1 in MLS.SwiftMLSClientCoordinator.retry(eventState:forGroupIdentifier:);
        v27 = v26;
        v28 = v0 + 1608;
        v29 = v0 + 7360;
        v30 = v0 + 7368;
        v31 = v0 + 5880;
        v32 = v0 + 6712;
        v33 = v0 + 6736;
        v34 = v235;
        v35 = v227;
        goto LABEL_64;
      }

      swift_bridgeObjectRelease_n();
      outlined init with copy of MLS.OutgoingEventState(v1, v0 + 5232);
      v120 = Logger.logObject.getter();
      v121 = static os_log_type_t.default.getter();
      outlined destroy of MLS.OutgoingEventState(v1);
      if (os_log_type_enabled(v120, v121))
      {
        v122 = *(v0 + 7632);
        v123 = *(v0 + 7624);
        v124 = swift_slowAlloc();
        v125 = swift_slowAlloc();
        *&v254[0] = v125;
        *v124 = 136315138;
        *(v124 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v123, v122, v254);
        _os_log_impl(&dword_264F1F000, v120, v121, "SwiftMLSClientCoordinator retry retrying keyUpdate { identifier: %s }", v124, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v125);
        MEMORY[0x266755550](v125, -1, -1);
        MEMORY[0x266755550](v124, -1, -1);
      }

      v240 = *(v0 + 7624);
      v126 = *(v0 + 7424);
      v230 = *(v0 + 7416);
      v127 = *(v0 + 7408);
      v128 = *(v0 + 7400);
      v129 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_15SecureMessaging15MetricCollectorV5EventVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
      *(v0 + 8008) = v129;
      *(v0 + 7056) = *(v127 + 56);
      v217 = *(v0 + 7064);
      v222 = *(v0 + 7056);
      outlined init with copy of ServerBag.MLS(v128 + 144, v0 + 6200);
      v130 = *(v128 + direct field offset for MLS.SwiftMLSClientCoordinator.featureFlagsStore);
      v131 = *(v128 + direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier + 8);
      v213 = *(v128 + direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier);
      v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO18KeyUpdateOperationCy_AC05GroupF5ErrorVAC0gF7ContextVy_10Foundation4DataVGAC0gf9ProcessedI0Vy_ALGGMd, &_s15SecureMessaging3MLSO18KeyUpdateOperationCy_AC05GroupF5ErrorVAC0gF7ContextVy_10Foundation4DataVGAC0gf9ProcessedI0Vy_ALGGMR);
      v133 = swift_allocObject();
      v249 = *(v128 + 80);
      *(v0 + 8016) = v133;
      outlined init with copy of MLS.OutgoingEventState?(v0 + 7056, v0 + 6928, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);

      swift_unknownObjectRetain();

      Logger.init(subsystem:category:)();
      *(v133 + 16) = v230;
      *(v133 + 24) = v126;
      *(v133 + 32) = 0;
      *(v133 + 40) = v240;
      *(v133 + 56) = v222;
      *(v133 + 64) = v217;
      *(v133 + 72) = v129;
      outlined init with take of MLS.KeyUpdatePolicy((v0 + 6200), v133 + 80);
      *(v133 + 120) = v130;
      *(v133 + 128) = v249;
      *(v133 + 144) = v213;
      *(v133 + 152) = v131;
      v134 = *(v128 + direct field offset for MLS.SwiftMLSClientCoordinator.runner);
      *(v0 + 7328) = v133;
      *(v0 + 7352) = v129;
      outlined init with copy of ServerBag.MLS(v0 + 6240, v0 + 6400);
      *(v0 + 6520) = 0;
      *(v0 + 6536) = 0;
      *(v0 + 6528) = 0;
      v135 = *(*v134 + 224);

      v237 = (v135 + *v135);
      v136 = swift_task_alloc();
      *(v0 + 8024) = v136;
      v137 = lazy protocol witness table accessor for type MLS.KeyPackageRetrievalResult<MLS.AllMember> and conformance MLS.KeyPackageRetrievalResult<A>(&lazy protocol witness table cache variable for type MLS.KeyUpdateOperation<MLS.GroupOperationError, MLS.GroupOperationContext<Data>, MLS.GroupOperationProcessedContext<Data>> and conformance MLS.KeyUpdateOperation<A, B, C>, &_s15SecureMessaging3MLSO18KeyUpdateOperationCy_AC05GroupF5ErrorVAC0gF7ContextVy_10Foundation4DataVGAC0gf9ProcessedI0Vy_ALGGMd, &_s15SecureMessaging3MLSO18KeyUpdateOperationCy_AC05GroupF5ErrorVAC0gF7ContextVy_10Foundation4DataVGAC0gf9ProcessedI0Vy_ALGGMR, &protocol conformance descriptor for MLS.KeyUpdateOperation<A, B, C>);
      *v136 = v0;
      v136[1] = closure #1 in MLS.SwiftMLSClientCoordinator.retry(eventState:forGroupIdentifier:);
      v27 = v137;
      v28 = v0 + 2088;
      v29 = v0 + 7328;
      v30 = v0 + 7352;
      v31 = v0 + 6400;
      v32 = v0 + 6520;
      v33 = v0 + 6496;
      goto LABEL_57;
    }

    if (!*(v1 + 32))
    {
      swift_bridgeObjectRelease_n();
      outlined init with copy of MLS.OutgoingEventState(v1, v0 + 5808);
      v52 = Logger.logObject.getter();
      v53 = static os_log_type_t.default.getter();
      outlined destroy of MLS.OutgoingEventState(v1);
      if (os_log_type_enabled(v52, v53))
      {
        v54 = *(v0 + 7632);
        v55 = *(v0 + 7624);
        v56 = swift_slowAlloc();
        v57 = swift_slowAlloc();
        *&v254[0] = v57;
        *v56 = 136315138;
        *(v56 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v55, v54, v254);
        _os_log_impl(&dword_264F1F000, v52, v53, "SwiftMLSClientCoordinator retry retrying create { identifier: %s }", v56, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v57);
        MEMORY[0x266755550](v57, -1, -1);
        MEMORY[0x266755550](v56, -1, -1);
      }

      v58 = *(v0 + 7408);
      *(v0 + 7120) = *v58;
      *(v0 + 7136) = *(v58 + 56);
      outlined init with copy of String(v0 + 7120, v0 + 7200);
      outlined init with copy of MLS.OutgoingEventState?(v0 + 7136, v0 + 7216, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
      v59 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_15SecureMessaging15MetricCollectorV5EventVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
      *(v0 + 7680) = v59;
      v60 = *(v0 + 7136);
      *(v0 + 7688) = v60;
      v61 = *(v0 + 7144);
      *(v0 + 7696) = v61;
      v247 = *(v0 + 7120);
      v62 = *(v0 + 7128);
      *(v0 + 7704) = v62;
      outlined init with copy of MLS.OutgoingEventState(v58, v0 + 5304);
      v63 = Logger.logObject.getter();
      v64 = static os_log_type_t.default.getter();
      outlined destroy of MLS.OutgoingEventState(v58);
      if (os_log_type_enabled(v63, v64))
      {
        v65 = *(v0 + 7632);
        v66 = *(v0 + 7624);
        v238 = v59;
        v67 = swift_slowAlloc();
        v68 = swift_slowAlloc();
        *&v254[0] = v68;
        *v67 = 136315138;
        *(v67 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v66, v65, v254);
        _os_log_impl(&dword_264F1F000, v63, v64, "SwiftMLSClientCoordinator sending repaired { identifier: %s }", v67, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v68);
        MEMORY[0x266755550](v68, -1, -1);
        v69 = v67;
        v59 = v238;
        MEMORY[0x266755550](v69, -1, -1);
      }

      v70 = *(v0 + 7632);
      v71 = *(v0 + 7624);
      v72 = *(v0 + 7400);
      *(v0 + 7712) = v72[12];
      *(v0 + 16) = v71;
      *(v0 + 24) = v70;
      *(v0 + 32) = v247;
      *(v0 + 40) = v62;
      *(v0 + 48) = v60;
      *(v0 + 56) = v61;
      *(v0 + 64) = v59;
      _s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGWOi14_(v0 + 16);
      v73 = *(v0 + 160);
      v74 = *(v0 + 176);
      v75 = *(v0 + 128);
      *(v0 + 1064) = *(v0 + 144);
      *(v0 + 1080) = v73;
      *(v0 + 1096) = v74;
      v76 = *(v0 + 96);
      v77 = *(v0 + 112);
      v78 = *(v0 + 64);
      *(v0 + 1000) = *(v0 + 80);
      *(v0 + 1016) = v76;
      *(v0 + 1032) = v77;
      *(v0 + 1048) = v75;
      v79 = *(v0 + 32);
      v80 = *(v0 + 48);
      *(v0 + 936) = *(v0 + 16);
      *(v0 + 952) = v79;
      *(v0 + 1112) = *(v0 + 192);
      *(v0 + 968) = v80;
      *(v0 + 984) = v78;
      outlined init with copy of ServerBag.MLS(v0 + 6240, v0 + 6120);
      *(v0 + 7720) = v72[10];
      *(v0 + 7728) = v72[11];
      v81 = v72 + direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier;
      *(v0 + 7736) = *(v72 + direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier);
      *(v0 + 7744) = *(v81 + 1);

      outlined copy of Data?(v60, v61);

      return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.retry(eventState:forGroupIdentifier:), 0, 0);
    }

    swift_bridgeObjectRelease_n();
    outlined init with copy of MLS.OutgoingEventState(v1, v0 + 5736);
    v151 = Logger.logObject.getter();
    v152 = static os_log_type_t.default.getter();
    outlined destroy of MLS.OutgoingEventState(v1);
    if (os_log_type_enabled(v151, v152))
    {
      v153 = *(v0 + 7632);
      v154 = *(v0 + 7624);
      v155 = swift_slowAlloc();
      v156 = swift_slowAlloc();
      *&v254[0] = v156;
      *v155 = 136315138;
      *(v155 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v154, v153, v254);
      _os_log_impl(&dword_264F1F000, v151, v152, "SwiftMLSClientCoordinator retry retrying add { identifier: %s }", v155, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v156);
      MEMORY[0x266755550](v156, -1, -1);
      MEMORY[0x266755550](v155, -1, -1);
    }

    v157 = MEMORY[0x277D84F90];
    v219 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC15SecureMessaging3MLSO9AllMemberO_SayAE14KeyPackageInfoVGTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    v158 = v2[2];
    if (v158)
    {
      v159 = *(v0 + 7560);
      *&v254[0] = v157;

      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v158, 0);
      v160 = *&v254[0];
      v161 = *(v0 + 7656);
      v162 = v2[4];
      v163 = v2[5];
      outlined copy of Data._Representation(v162, v163);
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      outlined copy of Data._Representation(v162, v163);
      MLS.Client.KeyPackage.init(fromRaw:)();
      if (v161)
      {

        outlined consume of MLS.OutgoingEventState.EventSpecificState(v2, v3, 1u);

        outlined consume of Data._Representation(v162, v163);

LABEL_50:
        __swift_destroy_boxed_opaque_existential_1Tm((v0 + 6240));

        v164 = *(v0 + 8);

        return v164();
      }

      outlined consume of Data._Representation(v162, v163);
      v186 = *(v160 + 16);
      v185 = *(v160 + 24);
      if (v186 >= v185 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v185 > 1), v186 + 1, 1);
        v160 = *&v254[0];
      }

      v187 = *(v0 + 7568);
      v188 = *(v0 + 7552);
      *(v160 + 16) = v186 + 1;
      v243 = (*(v159 + 80) + 32) & ~*(v159 + 80);
      v225 = *(v159 + 32);
      v233 = *(v159 + 72);
      v225(v160 + v243 + v233 * v186, v187, v188);
      v189 = v158 - 1;
      if (v189)
      {
        v199 = v2 + 7;
        do
        {
          v200 = *(v199 - 1);
          v201 = *v199;
          outlined copy of Data._Representation(v200, *v199);
          if ((swift_task_isCurrentExecutor() & 1) == 0)
          {
            swift_task_reportUnexpectedExecutor();
          }

          outlined copy of Data._Representation(v200, v201);
          MLS.Client.KeyPackage.init(fromRaw:)();
          outlined consume of Data._Representation(v200, v201);
          *&v254[0] = v160;
          v203 = *(v160 + 16);
          v202 = *(v160 + 24);
          if (v203 >= v202 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v202 > 1), v203 + 1, 1);
            v160 = *&v254[0];
          }

          v199 += 2;
          v204 = *(v0 + 7568);
          v205 = *(v0 + 7552);
          *(v160 + 16) = v203 + 1;
          v225(v160 + v243 + v233 * v203, v204, v205);
          --v189;
        }

        while (v189);
      }
    }

    else
    {

      v160 = MEMORY[0x277D84F90];
    }

    v244 = *(v0 + 7624);
    v226 = *(v0 + 7416);
    v234 = *(v0 + 7424);
    v190 = *(v0 + 7408);
    v191 = *(v0 + 7400);
    v192 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_15SecureMessaging15MetricCollectorV5EventVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    *(v0 + 7936) = v192;
    *(v0 + 7104) = *(v190 + 56);
    v211 = *(v0 + 7112);
    v215 = *(v0 + 7104);
    v193 = *(v191 + direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier + 8);
    v209 = *(v191 + direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier);
    v207 = type metadata accessor for MLS.AddMembersOperation(0);
    v194 = swift_allocObject();

    v252 = *(v191 + 80);
    *(v0 + 7944) = v194;
    outlined init with copy of MLS.OutgoingEventState?(v0 + 7104, v0 + 7040, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);

    swift_unknownObjectRetain();

    Logger.init(subsystem:category:)();
    *(v194 + 16) = v3;
    outlined consume of MLS.OutgoingEventState.EventSpecificState(v2, v3, 1u);
    *(v194 + 24) = v226;
    *(v194 + 32) = v234;
    *(v194 + 40) = v244;
    *(v194 + 56) = v215;
    *(v194 + 64) = v211;
    *(v194 + 72) = v192;
    *(v194 + 80) = v252;
    *(v194 + 96) = v209;
    *(v194 + 104) = v193;
    v195 = *(v191 + direct field offset for MLS.SwiftMLSClientCoordinator.runner);
    *(v0 + 7344) = v194;
    *(v0 + 7336) = v192;
    outlined init with copy of ServerBag.MLS(v0 + 6240, v0 + 6320);
    *(v0 + 6592) = v219;
    *(v0 + 6600) = v2;
    *(v0 + 6608) = v160;
    v196 = *(*v195 + 224);

    v237 = (v196 + *v196);
    v197 = swift_task_alloc();
    *(v0 + 7952) = v197;
    v198 = lazy protocol witness table accessor for type MLS.AddMembersOperation and conformance MLS.AddMembersOperation(&lazy protocol witness table cache variable for type MLS.AddMembersOperation and conformance MLS.AddMembersOperation, type metadata accessor for MLS.AddMembersOperation, &protocol conformance descriptor for MLS.AddMembersOperation);
    *v197 = v0;
    v197[1] = closure #1 in MLS.SwiftMLSClientCoordinator.retry(eventState:forGroupIdentifier:);
    v27 = v198;
    v28 = v0 + 3288;
    v29 = v0 + 7344;
    v30 = v0 + 7336;
    v31 = v0 + 6320;
    v32 = v0 + 6592;
    v33 = v0 + 6616;
    v34 = v207;
    goto LABEL_63;
  }

  if (*(v1 + 32) <= 6u)
  {
    if (v4 != 5)
    {
      swift_bridgeObjectRelease_n();
      outlined init with copy of MLS.OutgoingEventState(v1, v0 + 4944);
      v165 = Logger.logObject.getter();
      v166 = static os_log_type_t.default.getter();
      outlined destroy of MLS.OutgoingEventState(v1);
      if (os_log_type_enabled(v165, v166))
      {
        v167 = *(v0 + 7632);
        v168 = *(v0 + 7624);
        v169 = swift_slowAlloc();
        v170 = swift_slowAlloc();
        *&v254[0] = v170;
        *v169 = 136315138;
        *(v169 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v168, v167, v254);
        _os_log_impl(&dword_264F1F000, v165, v166, "SwiftMLSClientCoordinator retry retrying downgrade { identifier: %s }", v169, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v170);
        MEMORY[0x266755550](v170, -1, -1);
        MEMORY[0x266755550](v169, -1, -1);
      }

      v251 = *(v0 + 7624);
      v171 = *(v0 + 7424);
      v242 = *(v0 + 7416);
      v172 = *(v0 + 7408);
      v173 = *(v0 + 7400);
      v174 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_15SecureMessaging15MetricCollectorV5EventVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
      *(v0 + 8032) = v174;
      *(v0 + 7008) = *(v172 + 56);
      v224 = *(v0 + 7016);
      v232 = *(v0 + 7008);
      v176 = *(v173 + direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier);
      v175 = *(v173 + direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier + 8);
      v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO18DowngradeOperationCy_AC0D5ErrorVAC0D7ContextVy_10Foundation4DataVGAC0d9ProcessedG0Vy_ALGGMd, &_s15SecureMessaging3MLSO18DowngradeOperationCy_AC0D5ErrorVAC0D7ContextVy_10Foundation4DataVGAC0d9ProcessedG0Vy_ALGGMR);
      v178 = swift_allocObject();
      *(v0 + 8040) = v178;
      outlined init with copy of MLS.OutgoingEventState?(v0 + 7008, v0 + 7152, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);

      Logger.init(subsystem:category:)();
      *(v178 + 16) = v242;
      *(v178 + 24) = v171;
      *(v178 + 32) = v251;
      *(v178 + 48) = v232;
      *(v178 + 56) = v224;
      *(v178 + 64) = v174;
      *(v178 + 72) = v176;
      *(v178 + 80) = v175;
      *(v178 + 88) = 0;
      v179 = *(v173 + direct field offset for MLS.SwiftMLSClientCoordinator.runner);
      *(v0 + 7312) = v178;
      *(v0 + 7320) = v174;
      outlined init with copy of ServerBag.MLS(v0 + 6240, v0 + 5960);
      *(v0 + 6568) = 0;
      *(v0 + 6584) = 0;
      *(v0 + 6576) = 0;
      v180 = *(*v179 + 224);

      v237 = (v180 + *v180);
      v181 = swift_task_alloc();
      *(v0 + 8048) = v181;
      v182 = lazy protocol witness table accessor for type MLS.KeyPackageRetrievalResult<MLS.AllMember> and conformance MLS.KeyPackageRetrievalResult<A>(&lazy protocol witness table cache variable for type MLS.DowngradeOperation<MLS.DowngradeError, MLS.DowngradeContext<Data>, MLS.DowngradeProcessedContext<Data>> and conformance MLS.DowngradeOperation<A, B, C>, &_s15SecureMessaging3MLSO18DowngradeOperationCy_AC0D5ErrorVAC0D7ContextVy_10Foundation4DataVGAC0d9ProcessedG0Vy_ALGGMd, &_s15SecureMessaging3MLSO18DowngradeOperationCy_AC0D5ErrorVAC0D7ContextVy_10Foundation4DataVGAC0d9ProcessedG0Vy_ALGGMR, &protocol conformance descriptor for MLS.DowngradeOperation<A, B, C>);
      *v181 = v0;
      v181[1] = closure #1 in MLS.SwiftMLSClientCoordinator.retry(eventState:forGroupIdentifier:);
      v27 = v182;
      v28 = v0 + 2208;
      v29 = v0 + 7312;
      v30 = v0 + 7320;
      v31 = v0 + 5960;
      v32 = v0 + 6568;
      v33 = v0 + 6544;
      v34 = v177;
      goto LABEL_63;
    }

    swift_bridgeObjectRelease_n();
    outlined init with copy of MLS.OutgoingEventState(v1, v0 + 5520);
    v82 = Logger.logObject.getter();
    v83 = static os_log_type_t.default.getter();
    outlined destroy of MLS.OutgoingEventState(v1);
    if (os_log_type_enabled(v82, v83))
    {
      v84 = *(v0 + 7632);
      v85 = *(v0 + 7624);
      v86 = swift_slowAlloc();
      v87 = swift_slowAlloc();
      *&v254[0] = v87;
      *v86 = 136315138;
      *(v86 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v85, v84, v254);
      _os_log_impl(&dword_264F1F000, v82, v83, "SwiftMLSClientCoordinator retry retrying resync { identifier: %s }", v86, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v87);
      MEMORY[0x266755550](v87, -1, -1);
      MEMORY[0x266755550](v86, -1, -1);
    }

    outlined init with copy of ServerBag.MLS(v0 + 6240, v0 + 6080);
    v88 = swift_task_alloc();
    *(v0 + 8056) = v88;
    *v88 = v0;
    v88[1] = closure #1 in MLS.SwiftMLSClientCoordinator.retry(eventState:forGroupIdentifier:);
    v89 = *(v0 + 7632);
    v90 = *(v0 + 7624);
    v91 = *(v0 + 7424);
    v92 = *(v0 + 7416);
    v93 = *(v0 + 7392);

    return MLS.SwiftMLSClientCoordinator.sendSelfHeal(groupIdentifier:eventIdentifier:swiftMLSGroup:)(v93, v92, v91, v90, v89, v0 + 6080);
  }

  else
  {
    if (v4 != 7)
    {
      if (v4 == 8)
      {

        swift_bridgeObjectRelease_n();
        outlined init with copy of MLS.OutgoingEventState(v1, v0 + 5016);
        v36 = Logger.logObject.getter();
        v37 = static os_log_type_t.default.getter();
        outlined destroy of MLS.OutgoingEventState(v1);
        if (os_log_type_enabled(v36, v37))
        {
          v38 = *(v0 + 7632);
          v39 = *(v0 + 7624);
          v40 = swift_slowAlloc();
          v41 = swift_slowAlloc();
          *&v254[0] = v41;
          *v40 = 136315138;
          *(v40 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v38, v254);
          _os_log_impl(&dword_264F1F000, v36, v37, "SwiftMLSClientCoordinator retry retrying groupName change { identifier: %s }", v40, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v41);
          MEMORY[0x266755550](v41, -1, -1);
          MEMORY[0x266755550](v40, -1, -1);
        }

        v236 = *(v0 + 7624);
        v42 = *(v0 + 7424);
        v228 = *(v0 + 7416);
        v43 = *(v0 + 7408);
        v246 = *(v0 + 7400);
        v44 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_15SecureMessaging15MetricCollectorV5EventVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
        *(v0 + 8144) = v44;
        *(v0 + 7248) = *(v43 + 56);
        v45 = *(v0 + 7248);
        v220 = *(v0 + 7256);
        v46 = type metadata accessor for MLS.EncryptGroupNameOperation(0);
        v47 = swift_allocObject();
        *(v0 + 8152) = v47;
        outlined init with copy of MLS.OutgoingEventState?(v0 + 7248, v0 + 7184, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);

        Logger.init(subsystem:category:)();
        *(v47 + 16) = v2;
        *(v47 + 24) = v3;
        *(v47 + 32) = v228;
        *(v47 + 40) = v42;
        *(v47 + 48) = v236;
        *(v47 + 64) = v45;
        *(v47 + 72) = v220;
        *(v47 + 80) = v44;
        v48 = *(v246 + direct field offset for MLS.SwiftMLSClientCoordinator.runner);
        *(v0 + 7288) = v47;
        *(v0 + 7280) = v44;
        outlined init with copy of ServerBag.MLS(v0 + 6240, v0 + 5920);
        *(v0 + 6832) = 0;
        *(v0 + 6848) = 0;
        *(v0 + 6840) = 0;
        v49 = *(*v48 + 224);

        v237 = (v49 + *v49);
        v50 = swift_task_alloc();
        *(v0 + 8160) = v50;
        v51 = lazy protocol witness table accessor for type MLS.AddMembersOperation and conformance MLS.AddMembersOperation(&lazy protocol witness table cache variable for type MLS.EncryptGroupNameOperation and conformance MLS.EncryptGroupNameOperation, type metadata accessor for MLS.EncryptGroupNameOperation, &protocol conformance descriptor for MLS.EncryptGroupNameOperation);
        *v50 = v0;
        v50[1] = closure #1 in MLS.SwiftMLSClientCoordinator.retry(eventState:forGroupIdentifier:);
        v27 = v51;
        v28 = v0 + 1728;
        v29 = v0 + 7288;
        v30 = v0 + 7280;
        v31 = v0 + 5920;
        v32 = v0 + 6832;
        v33 = v0 + 6808;
        v34 = v46;
        goto LABEL_63;
      }

      swift_bridgeObjectRelease_n();
      outlined init with copy of MLS.OutgoingEventState(v1, v0 + 5448);
      v138 = Logger.logObject.getter();
      v139 = static os_log_type_t.default.getter();
      outlined destroy of MLS.OutgoingEventState(v1);
      if (os_log_type_enabled(v138, v139))
      {
        v140 = *(v0 + 7632);
        v141 = *(v0 + 7624);
        v142 = swift_slowAlloc();
        v143 = swift_slowAlloc();
        *&v254[0] = v143;
        *v142 = 136315138;
        *(v142 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v141, v140, v254);
        _os_log_impl(&dword_264F1F000, v138, v139, "SwiftMLSClientCoordinator retry retrying replaceExpiredCerts { identifier: %s }", v142, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v143);
        MEMORY[0x266755550](v143, -1, -1);
        MEMORY[0x266755550](v142, -1, -1);
      }

      v241 = *(v0 + 7656);
      v231 = *(v0 + 7624);
      v218 = *(v0 + 7416);
      v223 = *(v0 + 7424);
      v144 = *(v0 + 7408);
      v145 = *(v0 + 7400);
      v146 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_15SecureMessaging15MetricCollectorV5EventVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
      *(v0 + 8072) = v146;
      *(v0 + 6992) = *(v144 + 56);
      v208 = *(v0 + 7000);
      v210 = *(v0 + 6992);
      v147 = *(v145 + 96);
      v148 = *(v145 + direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier + 8);
      v214 = *(v145 + direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier);
      v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO23EraAdvancementOperationCy_AC05GroupF5ErrorVAC0gF7ContextVy_10Foundation4DataVGAC0gf9ProcessedI0Vy_ALGGMd, &_s15SecureMessaging3MLSO23EraAdvancementOperationCy_AC05GroupF5ErrorVAC0gF7ContextVy_10Foundation4DataVGAC0gf9ProcessedI0Vy_ALGGMR);
      v149 = swift_allocObject();
      v250 = *(v145 + 80);
      *(v0 + 8080) = v149;
      outlined init with copy of MLS.OutgoingEventState?(v0 + 6992, v0 + 7232, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);

      swift_unknownObjectRetain();

      Logger.init(subsystem:category:)();
      *(v149 + 16) = v218;
      *(v149 + 24) = v223;
      *(v149 + 32) = v231;
      *(v149 + 48) = v210;
      *(v149 + 56) = v208;
      *(v149 + 64) = v146;
      *(v149 + 72) = v250;
      *(v149 + 88) = v147;
      *(v149 + 96) = &protocol witness table for MLS.EventSender<A, B>;
      *(v149 + 104) = v214;
      *(v149 + 112) = v148;
      v150 = *(v145 + direct field offset for MLS.SwiftMLSClientCoordinator.runner);
      *(v0 + 7296) = v149;
      *(v0 + 7304) = v146;
      outlined init with copy of ServerBag.MLS(v0 + 6240, v0 + 6280);
      *&v254[0] = v2;

      MLS.KeyPackageFetcher.FetchResult.init(retrievalResult:)(v254, (v0 + 6664));
      if (!v241)
      {
        *(v0 + 6472) = *(v0 + 6664);
        *(v0 + 6480) = *(v0 + 6672);
        v237 = (*(*v150 + 224) + **(*v150 + 224));
        v183 = swift_task_alloc();
        *(v0 + 8088) = v183;
        v184 = lazy protocol witness table accessor for type MLS.KeyPackageRetrievalResult<MLS.AllMember> and conformance MLS.KeyPackageRetrievalResult<A>(&lazy protocol witness table cache variable for type MLS.EraAdvancementOperation<MLS.GroupOperationError, MLS.GroupOperationContext<Data>, MLS.GroupOperationProcessedContext<Data>> and conformance MLS.EraAdvancementOperation<A, B, C>, &_s15SecureMessaging3MLSO23EraAdvancementOperationCy_AC05GroupF5ErrorVAC0gF7ContextVy_10Foundation4DataVGAC0gf9ProcessedI0Vy_ALGGMd, &_s15SecureMessaging3MLSO23EraAdvancementOperationCy_AC05GroupF5ErrorVAC0gF7ContextVy_10Foundation4DataVGAC0gf9ProcessedI0Vy_ALGGMR, &protocol conformance descriptor for MLS.EraAdvancementOperation<A, B, C>);
        *v183 = v0;
        v183[1] = closure #1 in MLS.SwiftMLSClientCoordinator.retry(eventState:forGroupIdentifier:);
        v27 = v184;
        v28 = v0 + 2808;
        v29 = v0 + 7296;
        v30 = v0 + 7304;
        v31 = v0 + 6280;
        v32 = v0 + 6472;
        v33 = v0 + 6640;
LABEL_57:
        v34 = v132;
LABEL_63:
        v35 = v237;
LABEL_64:

        return v35(v28, v29, v30, v31, v32, v34, v27, v33);
      }

      outlined destroy of NSObject?(v0 + 6280, &_s15SecureMessaging3MLSO21SwiftMLSGroupProtocol_pSgMd, &_s15SecureMessaging3MLSO21SwiftMLSGroupProtocol_pSgMR);

      goto LABEL_50;
    }

    swift_bridgeObjectRelease_n();
    outlined init with copy of MLS.OutgoingEventState(v1, v0 + 5160);
    v111 = Logger.logObject.getter();
    v112 = static os_log_type_t.default.getter();
    outlined destroy of MLS.OutgoingEventState(v1);
    if (os_log_type_enabled(v111, v112))
    {
      v113 = *(v0 + 7632);
      v114 = *(v0 + 7624);
      v115 = swift_slowAlloc();
      v116 = swift_slowAlloc();
      *&v254[0] = v116;
      *v115 = 136315138;
      *(v115 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v114, v113, v254);
      _os_log_impl(&dword_264F1F000, v111, v112, "SwiftMLSClientCoordinator retry retrying replaceExpiredCerts { identifier: %s }", v115, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v116);
      MEMORY[0x266755550](v116, -1, -1);
      MEMORY[0x266755550](v115, -1, -1);
    }

    *(v0 + 8096) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_15SecureMessaging15MetricCollectorV5EventVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    v117 = *(v0 + 6264);
    v118 = *(v0 + 6272);
    __swift_project_boxed_opaque_existential_1((v0 + 6240), v117);
    v119 = swift_task_alloc();
    *(v0 + 8104) = v119;
    *v119 = v0;
    v119[1] = closure #1 in MLS.SwiftMLSClientCoordinator.retry(eventState:forGroupIdentifier:);

    return MLS.SwiftMLSGroupProtocol.memberSigningIdentities.getter(v117, v118);
  }
}

{
  v1 = v0[768];
  v2 = v0[769];
  __swift_project_boxed_opaque_existential_1(v0 + 765, v1);
  v3 = *(v2 + 32);

  v6 = (v3 + *v3);
  v4 = swift_task_alloc();
  v0[969] = v4;
  *v4 = v0;
  v4[1] = closure #1 in MLS.SwiftMLSClientCoordinator.retry(eventState:forGroupIdentifier:);

  return v6(v1, v2);
}

{
  v1 = v0[768];
  v2 = v0[769];
  __swift_project_boxed_opaque_existential_1(v0 + 765, v1);
  v5 = (*(v2 + 24) + **(v2 + 24));
  v3 = swift_task_alloc();
  v0[972] = v3;
  *v3 = v0;
  v3[1] = closure #1 in MLS.SwiftMLSClientCoordinator.retry(eventState:forGroupIdentifier:);

  return v5(v1, v2);
}

{
  if ((v0[973] & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  v1 = v0[768];
  v2 = v0[769];
  __swift_project_boxed_opaque_existential_1(v0 + 765, v1);
  v6 = (*(v2 + 80) + **(v2 + 80));
  v3 = swift_task_alloc();
  v0[974] = v3;
  *v3 = v0;
  v3[1] = closure #1 in MLS.SwiftMLSClientCoordinator.retry(eventState:forGroupIdentifier:);
  v4 = v0[949];

  return v6(v4, v1, v2);
}

{
  v0[991] = v0[970];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 765);

  v1 = v0[950];

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.retry(eventState:forGroupIdentifier:), v1, 0);
}

{
  v2 = *v1;
  *(*v1 + 7800) = v0;

  if (v0)
  {
    *(v2 + 1480) = *(v2 + 1112);
    v3 = *(v2 + 1080);
    *(v2 + 1432) = *(v2 + 1064);
    *(v2 + 1448) = v3;
    *(v2 + 1464) = *(v2 + 1096);
    v4 = *(v2 + 1016);
    *(v2 + 1368) = *(v2 + 1000);
    *(v2 + 1384) = v4;
    v5 = *(v2 + 1048);
    *(v2 + 1400) = *(v2 + 1032);
    *(v2 + 1416) = v5;
    v6 = *(v2 + 952);
    *(v2 + 1304) = *(v2 + 936);
    *(v2 + 1320) = v6;
    v7 = *(v2 + 984);
    *(v2 + 1336) = *(v2 + 968);
    *(v2 + 1352) = v7;
    outlined destroy of NSObject?(v2 + 1304, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
    v8 = closure #1 in MLS.SwiftMLSClientCoordinator.retry(eventState:forGroupIdentifier:);
  }

  else
  {
    v8 = closure #1 in MLS.SwiftMLSClientCoordinator.retry(eventState:forGroupIdentifier:);
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

{
  v1 = v0[768];
  v2 = v0[769];
  __swift_project_boxed_opaque_existential_1(v0 + 765, v1);
  v5 = (*(v2 + 64) + **(v2 + 64));
  v3 = swift_task_alloc();
  v0[981] = v3;
  *v3 = v0;
  v3[1] = closure #1 in MLS.SwiftMLSClientCoordinator.retry(eventState:forGroupIdentifier:);

  return v5(v1, v2);
}

{
  v0[991] = v0[975];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 765);

  v1 = v0[950];

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.retry(eventState:forGroupIdentifier:), v1, 0);
}

{
  v1 = v0[980];
  v2 = v0[977];
  v3 = v0[976];
  if (v1 >> 60 == 15)
  {
    v4 = 0xC000000000000000;
  }

  else
  {
    v4 = v0[980];
  }

  if (v1 >> 60 == 15)
  {
    v5 = 0;
  }

  else
  {
    v5 = v0[979];
  }

  v0[991] = v0[982];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 765);

  outlined consume of Data._Representation(v3, v2);
  outlined consume of Data._Representation(v5, v4);
  v6 = v0[950];

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.retry(eventState:forGroupIdentifier:), v6, 0);
}

{
  v1 = (v0 + 3512);
  v2 = *(v0 + 7904);
  v3 = *(v0 + 7896);
  v25 = v3;
  v26 = v2;
  v4 = *(v0 + 7864);
  v5 = *(v0 + 7840);
  v6 = *(v0 + 7816);
  v7 = *(v0 + 7808);
  v23 = v7;
  v24 = v6;
  v8 = *(v0 + 7784);
  v22 = v8;
  v9 = *(v0 + 7768);
  v28 = *(v0 + 7712);
  v10 = *(v0 + 7424);
  v11 = *(v0 + 7416);
  if (v4 >> 60 == 15)
  {
    v12 = 0xC000000000000000;
  }

  else
  {
    v12 = *(v0 + 7864);
  }

  if (v4 >> 60 == 15)
  {
    v13 = 0;
  }

  else
  {
    v13 = *(v0 + 7872);
  }

  if (v5 >> 60 == 15)
  {
    v14 = 0xC000000000000000;
  }

  else
  {
    v14 = *(v0 + 7840);
  }

  if (v5 >> 60 == 15)
  {
    v15 = 0;
  }

  else
  {
    v15 = *(v0 + 7832);
  }

  if ((v9 & 0x100000000) != 0)
  {
    v16 = 1;
  }

  else
  {
    v16 = v9;
  }

  *(v0 + 3720) = v11;
  *(v0 + 3728) = v10;
  *(v0 + 3736) = v16;
  *(v0 + 3744) = v16;
  *(v0 + 3752) = v8;
  *(v0 + 3760) = v7;
  *(v0 + 3768) = v6;
  *(v0 + 3776) = v15;
  *(v0 + 3784) = v14;
  *(v0 + 3792) = v13;
  *(v0 + 3800) = v12;
  *(v0 + 3808) = v2;
  *(v0 + 3816) = v3;
  outlined init with copy of MLS.Group(v0 + 3720, v0 + 3616);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 6120));
  *(v0 + 3928) = v11;
  *(v0 + 3936) = v10;
  *(v0 + 3944) = v16;
  *(v0 + 3952) = v16;
  *(v0 + 3960) = v22;
  *(v0 + 3968) = v23;
  *(v0 + 3976) = v24;
  *(v0 + 3984) = v15;
  *(v0 + 3992) = v14;
  *(v0 + 4000) = v13;
  *(v0 + 4008) = v12;
  *(v0 + 4016) = v26;
  *(v0 + 4024) = v25;
  outlined destroy of MLS.Group(v0 + 3928);
  v17 = *(v0 + 3800);
  *(v0 + 3576) = *(v0 + 3784);
  *(v0 + 3592) = v17;
  *(v0 + 3608) = *(v0 + 3816);
  v18 = *(v0 + 3736);
  *v1 = *(v0 + 3720);
  *(v0 + 3528) = v18;
  v19 = *(v0 + 3768);
  *(v0 + 3544) = *(v0 + 3752);
  *(v0 + 3560) = v19;
  *(v0 + 4864) = 1;
  *(v0 + 4872) = 0u;
  *(v0 + 4888) = 0u;
  *(v0 + 4904) = 0u;
  *(v0 + 4920) = 0u;
  *(v0 + 4936) = 2;
  v27 = (*(*v28 + 368) + **(*v28 + 368));
  v20 = swift_task_alloc();
  *(v0 + 7912) = v20;
  *v20 = v0;
  v20[1] = closure #1 in MLS.SwiftMLSClientCoordinator.retry(eventState:forGroupIdentifier:);

  return v27(v0 + 936, v1, v0 + 4864, 1, 0, 0);
}

{
  v1 = v0[983];
  v2 = v0[980];
  v3 = v0[977];
  v4 = v0[976];
  if (v1 >> 60 == 15)
  {
    v5 = 0xC000000000000000;
  }

  else
  {
    v5 = v0[983];
  }

  if (v1 >> 60 == 15)
  {
    v6 = 0;
  }

  else
  {
    v6 = v0[984];
  }

  if (v2 >> 60 == 15)
  {
    v7 = 0xC000000000000000;
  }

  else
  {
    v7 = v0[980];
  }

  if (v2 >> 60 == 15)
  {
    v8 = 0;
  }

  else
  {
    v8 = v0[979];
  }

  v0[991] = v0[986];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 765);

  outlined consume of Data._Representation(v4, v3);
  outlined consume of Data._Representation(v8, v7);
  outlined consume of Data._Representation(v6, v5);
  v9 = v0[950];

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.retry(eventState:forGroupIdentifier:), v9, 0);
}

{
  v1 = v0[962];
  v2 = v0[961];

  outlined consume of Data?(v2, v1);

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 780);

  v3 = v0[1];

  return v3();
}

{
  v1 = v0[962];
  v2 = v0[961];
  v3 = v0[924];

  outlined consume of Data?(v2, v1);

  *v3 = 1;
  *(v3 + 8) = 0u;
  *(v3 + 24) = 0u;
  *(v3 + 40) = 0u;
  *(v3 + 56) = 0u;
  *(v3 + 72) = 0u;
  *(v3 + 88) = 0;
  *(v3 + 96) = 3;
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 780);

  v4 = v0[1];

  return v4();
}

{
  v2 = *v1;

  v3 = v2[950];
  outlined consume of MLS.KeyPackageFetcher.FetchResult?(v2[824], v2[825], v2[826]);
  outlined destroy of NSObject?((v2 + 790), &_s15SecureMessaging3MLSO21SwiftMLSGroupProtocol_pSgMd, &_s15SecureMessaging3MLSO21SwiftMLSGroupProtocol_pSgMR);
  if (v0)
  {
    v4 = closure #1 in MLS.SwiftMLSClientCoordinator.retry(eventState:forGroupIdentifier:);
  }

  else
  {

    v4 = closure #1 in MLS.SwiftMLSClientCoordinator.retry(eventState:forGroupIdentifier:);
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{
  v1 = *(v0 + 7392);

  v2 = *(v0 + 3368);
  *(v0 + 2392) = *(v0 + 3352);
  *(v0 + 2408) = v2;
  *(v0 + 2424) = *(v0 + 3384);
  *(v0 + 2440) = *(v0 + 3400);
  v3 = *(v0 + 3304);
  *(v0 + 2328) = *(v0 + 3288);
  *(v0 + 2344) = v3;
  v4 = *(v0 + 3336);
  *(v0 + 2360) = *(v0 + 3320);
  *(v0 + 2376) = v4;
  outlined init with copy of MLS.EventQueue.Result(v0 + 2336, v0 + 4136);
  outlined destroy of MLS.OperationRunner.OnQueueRunResult(v0 + 2328);
  v5 = *(v0 + 2368);
  v6 = *(v0 + 2352);
  *v1 = *(v0 + 2336);
  *(v1 + 16) = v6;
  *(v1 + 32) = v5;
  v7 = *(v0 + 2400);
  v8 = *(v0 + 2416);
  v9 = *(v0 + 2384);
  *(v1 + 96) = *(v0 + 2432);
  *(v1 + 64) = v7;
  *(v1 + 80) = v8;
  *(v1 + 48) = v9;
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 6240));

  v10 = *(v0 + 8);

  return v10();
}

{
  v2 = *v1;

  v3 = *(v2 + 7600);
  outlined destroy of NSObject?(v2 + 6160, &_s15SecureMessaging3MLSO21SwiftMLSGroupProtocol_pSgMd, &_s15SecureMessaging3MLSO21SwiftMLSGroupProtocol_pSgMR);
  if (v0)
  {
    v4 = closure #1 in MLS.SwiftMLSClientCoordinator.retry(eventState:forGroupIdentifier:);
  }

  else
  {

    v4 = closure #1 in MLS.SwiftMLSClientCoordinator.retry(eventState:forGroupIdentifier:);
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{
  v1 = *(v0 + 7392);

  *(v0 + 2752) = *(v0 + 2032);
  *(v0 + 2768) = *(v0 + 2048);
  *(v0 + 2784) = *(v0 + 2064);
  *(v0 + 2800) = *(v0 + 2080);
  *(v0 + 2688) = *(v0 + 1968);
  *(v0 + 2704) = *(v0 + 1984);
  *(v0 + 2720) = *(v0 + 2000);
  *(v0 + 2736) = *(v0 + 2016);
  outlined init with copy of MLS.EventQueue.Result(v0 + 2696, v0 + 4656);
  outlined destroy of MLS.OperationRunner.OnQueueRunResult(v0 + 2688);
  v3 = *(v0 + 2712);
  v2 = *(v0 + 2728);
  *v1 = *(v0 + 2696);
  *(v1 + 16) = v3;
  *(v1 + 32) = v2;
  v5 = *(v0 + 2760);
  v4 = *(v0 + 2776);
  v6 = *(v0 + 2744);
  *(v1 + 96) = *(v0 + 2792);
  *(v1 + 64) = v5;
  *(v1 + 80) = v4;
  *(v1 + 48) = v6;
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 6240));

  v7 = *(v0 + 8);

  return v7();
}

{
  v2 = *v1;

  v3 = *(v2 + 7600);
  outlined destroy of NSObject?(v2 + 5880, &_s15SecureMessaging3MLSO21SwiftMLSGroupProtocol_pSgMd, &_s15SecureMessaging3MLSO21SwiftMLSGroupProtocol_pSgMR);
  if (v0)
  {
    v4 = closure #1 in MLS.SwiftMLSClientCoordinator.retry(eventState:forGroupIdentifier:);
  }

  else
  {

    v4 = closure #1 in MLS.SwiftMLSClientCoordinator.retry(eventState:forGroupIdentifier:);
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{
  v1 = *(v0 + 7392);

  v2 = *(v0 + 1688);
  *(v0 + 1552) = *(v0 + 1672);
  *(v0 + 1568) = v2;
  *(v0 + 1584) = *(v0 + 1704);
  v3 = *(v0 + 1624);
  *(v0 + 1488) = *(v0 + 1608);
  *(v0 + 1504) = v3;
  v4 = *(v0 + 1656);
  *(v0 + 1520) = *(v0 + 1640);
  *(v0 + 1600) = *(v0 + 1720);
  *(v0 + 1536) = v4;
  outlined init with copy of MLS.EventQueue.Result(v0 + 1496, v0 + 4344);
  outlined destroy of MLS.OperationRunner.OnQueueRunResult(v0 + 1488);
  v6 = *(v0 + 1512);
  v5 = *(v0 + 1528);
  *v1 = *(v0 + 1496);
  *(v1 + 16) = v6;
  *(v1 + 32) = v5;
  v8 = *(v0 + 1560);
  v7 = *(v0 + 1576);
  v9 = *(v0 + 1544);
  *(v1 + 96) = *(v0 + 1592);
  *(v1 + 64) = v8;
  *(v1 + 80) = v7;
  *(v1 + 48) = v9;
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 6240));

  v10 = *(v0 + 8);

  return v10();
}

{
  v2 = *v1;

  v3 = *(v2 + 7600);
  outlined destroy of NSObject?(v2 + 6400, &_s15SecureMessaging3MLSO21SwiftMLSGroupProtocol_pSgMd, &_s15SecureMessaging3MLSO21SwiftMLSGroupProtocol_pSgMR);
  if (v0)
  {
    v4 = closure #1 in MLS.SwiftMLSClientCoordinator.retry(eventState:forGroupIdentifier:);
  }

  else
  {

    v4 = closure #1 in MLS.SwiftMLSClientCoordinator.retry(eventState:forGroupIdentifier:);
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{
  v1 = *(v0 + 7392);

  v2 = *(v0 + 2168);
  *(v0 + 3112) = *(v0 + 2152);
  *(v0 + 3128) = v2;
  *(v0 + 3144) = *(v0 + 2184);
  *(v0 + 3160) = *(v0 + 2200);
  v3 = *(v0 + 2104);
  *(v0 + 3048) = *(v0 + 2088);
  *(v0 + 3064) = v3;
  v4 = *(v0 + 2136);
  *(v0 + 3080) = *(v0 + 2120);
  *(v0 + 3096) = v4;
  outlined init with copy of MLS.EventQueue.Result(v0 + 3056, v0 + 4032);
  outlined destroy of MLS.OperationRunner.OnQueueRunResult(v0 + 3048);
  v5 = *(v0 + 3088);
  v6 = *(v0 + 3072);
  *v1 = *(v0 + 3056);
  *(v1 + 16) = v6;
  *(v1 + 32) = v5;
  v7 = *(v0 + 3120);
  v8 = *(v0 + 3136);
  v9 = *(v0 + 3104);
  *(v1 + 96) = *(v0 + 3152);
  *(v1 + 64) = v7;
  *(v1 + 80) = v8;
  *(v1 + 48) = v9;
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 6240));

  v10 = *(v0 + 8);

  return v10();
}

{
  v2 = *v1;

  v3 = *(v2 + 7600);
  outlined destroy of NSObject?(v2 + 5960, &_s15SecureMessaging3MLSO21SwiftMLSGroupProtocol_pSgMd, &_s15SecureMessaging3MLSO21SwiftMLSGroupProtocol_pSgMR);
  if (v0)
  {
    v4 = closure #1 in MLS.SwiftMLSClientCoordinator.retry(eventState:forGroupIdentifier:);
  }

  else
  {

    v4 = closure #1 in MLS.SwiftMLSClientCoordinator.retry(eventState:forGroupIdentifier:);
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{
  v1 = *(v0 + 7392);

  v2 = *(v0 + 2288);
  *(v0 + 1912) = *(v0 + 2272);
  *(v0 + 1928) = v2;
  *(v0 + 1944) = *(v0 + 2304);
  *(v0 + 1960) = *(v0 + 2320);
  v3 = *(v0 + 2224);
  *(v0 + 1848) = *(v0 + 2208);
  *(v0 + 1864) = v3;
  v4 = *(v0 + 2256);
  *(v0 + 1880) = *(v0 + 2240);
  *(v0 + 1896) = v4;
  outlined init with copy of MLS.EventQueue.Result(v0 + 1856, v0 + 4240);
  outlined destroy of MLS.OperationRunner.OnQueueRunResult(v0 + 1848);
  v5 = *(v0 + 1888);
  v6 = *(v0 + 1872);
  *v1 = *(v0 + 1856);
  *(v1 + 16) = v6;
  *(v1 + 32) = v5;
  v7 = *(v0 + 1920);
  v8 = *(v0 + 1936);
  v9 = *(v0 + 1904);
  *(v1 + 96) = *(v0 + 1952);
  *(v1 + 64) = v7;
  *(v1 + 80) = v8;
  *(v1 + 48) = v9;
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 6240));

  v10 = *(v0 + 8);

  return v10();
}

{
  v2 = *v1;
  *(v2 + 8064) = v0;

  v3 = *(v2 + 7600);
  outlined destroy of NSObject?(v2 + 6080, &_s15SecureMessaging3MLSO21SwiftMLSGroupProtocol_pSgMd, &_s15SecureMessaging3MLSO21SwiftMLSGroupProtocol_pSgMR);
  if (v0)
  {
    v4 = closure #1 in MLS.SwiftMLSClientCoordinator.retry(eventState:forGroupIdentifier:);
  }

  else
  {
    v4 = closure #1 in MLS.SwiftMLSClientCoordinator.retry(eventState:forGroupIdentifier:);
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 6240));

  v1 = *(v0 + 8);

  return v1();
}

{
  v2 = *v1;

  v3 = v2[950];
  outlined consume of MLS.KeyPackageFetcher.FetchResult?(v2[809], v2[810], v2[811]);
  outlined destroy of NSObject?((v2 + 785), &_s15SecureMessaging3MLSO21SwiftMLSGroupProtocol_pSgMd, &_s15SecureMessaging3MLSO21SwiftMLSGroupProtocol_pSgMR);
  if (v0)
  {
    v4 = closure #1 in MLS.SwiftMLSClientCoordinator.retry(eventState:forGroupIdentifier:);
  }

  else
  {

    v4 = closure #1 in MLS.SwiftMLSClientCoordinator.retry(eventState:forGroupIdentifier:);
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{
  v1 = *(v0 + 7392);

  v2 = *(v0 + 2888);
  *(v0 + 2512) = *(v0 + 2872);
  *(v0 + 2528) = v2;
  *(v0 + 2544) = *(v0 + 2904);
  v3 = *(v0 + 2824);
  *(v0 + 2448) = *(v0 + 2808);
  *(v0 + 2464) = v3;
  v4 = *(v0 + 2856);
  *(v0 + 2480) = *(v0 + 2840);
  *(v0 + 2560) = *(v0 + 2920);
  *(v0 + 2496) = v4;
  outlined init with copy of MLS.EventQueue.Result(v0 + 2456, v0 + 4552);
  outlined destroy of MLS.OperationRunner.OnQueueRunResult(v0 + 2448);
  v6 = *(v0 + 2472);
  v5 = *(v0 + 2488);
  *v1 = *(v0 + 2456);
  *(v1 + 16) = v6;
  *(v1 + 32) = v5;
  v8 = *(v0 + 2520);
  v7 = *(v0 + 2536);
  v9 = *(v0 + 2504);
  *(v1 + 96) = *(v0 + 2552);
  *(v1 + 64) = v8;
  *(v1 + 80) = v7;
  *(v1 + 48) = v9;
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 6240));

  v10 = *(v0 + 8);

  return v10();
}

{
  v2 = *v1;

  v3 = v2[950];
  outlined consume of MLS.KeyPackageFetcher.FetchResult?(v2[845], v2[846], v2[847]);
  outlined destroy of NSObject?((v2 + 795), &_s15SecureMessaging3MLSO21SwiftMLSGroupProtocol_pSgMd, &_s15SecureMessaging3MLSO21SwiftMLSGroupProtocol_pSgMR);
  if (v0)
  {
    v4 = closure #1 in MLS.SwiftMLSClientCoordinator.retry(eventState:forGroupIdentifier:);
  }

  else
  {

    v4 = closure #1 in MLS.SwiftMLSClientCoordinator.retry(eventState:forGroupIdentifier:);
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{
  v1 = *(v0 + 7392);

  *(v0 + 2992) = *(v0 + 3232);
  *(v0 + 3008) = *(v0 + 3248);
  *(v0 + 3024) = *(v0 + 3264);
  *(v0 + 3040) = *(v0 + 3280);
  *(v0 + 2928) = *(v0 + 3168);
  *(v0 + 2944) = *(v0 + 3184);
  *(v0 + 2960) = *(v0 + 3200);
  *(v0 + 2976) = *(v0 + 3216);
  outlined init with copy of MLS.EventQueue.Result(v0 + 2936, v0 + 4448);
  outlined destroy of MLS.OperationRunner.OnQueueRunResult(v0 + 2928);
  v3 = *(v0 + 2952);
  v2 = *(v0 + 2968);
  *v1 = *(v0 + 2936);
  *(v1 + 16) = v3;
  *(v1 + 32) = v2;
  v5 = *(v0 + 3000);
  v4 = *(v0 + 3016);
  v6 = *(v0 + 2984);
  *(v1 + 96) = *(v0 + 3032);
  *(v1 + 64) = v5;
  *(v1 + 80) = v4;
  *(v1 + 48) = v6;
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 6240));

  v7 = *(v0 + 8);

  return v7();
}

{
  v2 = *v1;

  v3 = *(v2 + 7600);
  outlined destroy of NSObject?(v2 + 5920, &_s15SecureMessaging3MLSO21SwiftMLSGroupProtocol_pSgMd, &_s15SecureMessaging3MLSO21SwiftMLSGroupProtocol_pSgMR);
  if (v0)
  {
    v4 = closure #1 in MLS.SwiftMLSClientCoordinator.retry(eventState:forGroupIdentifier:);
  }

  else
  {

    v4 = closure #1 in MLS.SwiftMLSClientCoordinator.retry(eventState:forGroupIdentifier:);
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{
  v1 = *(v0 + 7392);

  v2 = *(v0 + 1808);
  *(v0 + 2632) = *(v0 + 1792);
  *(v0 + 2648) = v2;
  *(v0 + 2664) = *(v0 + 1824);
  *(v0 + 2680) = *(v0 + 1840);
  v3 = *(v0 + 1744);
  *(v0 + 2568) = *(v0 + 1728);
  *(v0 + 2584) = v3;
  v4 = *(v0 + 1776);
  *(v0 + 2600) = *(v0 + 1760);
  *(v0 + 2616) = v4;
  outlined init with copy of MLS.EventQueue.Result(v0 + 2576, v0 + 4760);
  outlined destroy of MLS.OperationRunner.OnQueueRunResult(v0 + 2568);
  v5 = *(v0 + 2608);
  v6 = *(v0 + 2592);
  *v1 = *(v0 + 2576);
  *(v1 + 16) = v6;
  *(v1 + 32) = v5;
  v7 = *(v0 + 2640);
  v8 = *(v0 + 2656);
  v9 = *(v0 + 2624);
  *(v1 + 96) = *(v0 + 2672);
  *(v1 + 64) = v7;
  *(v1 + 80) = v8;
  *(v1 + 48) = v9;
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 6240));

  v10 = *(v0 + 8);

  return v10();
}

{
  v1 = *(v0 + 6880);
  v2 = *(v0 + 6888);
  v3 = *(v0 + 6896);
  lazy protocol witness table accessor for type MLS.GroupOperationError and conformance MLS.GroupOperationError();
  swift_allocError();
  *v4 = v1;
  *(v4 + 8) = v2;
  *(v4 + 16) = v3;

  v5 = *(v0 + 8);

  return v5();
}

{
  v1 = v0[962];
  v2 = v0[961];

  outlined consume of Data?(v2, v1);

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 780);

  v3 = v0[1];

  return v3();
}

{
  v1 = *(v0 + 6616);
  v2 = *(v0 + 6624);
  v3 = *(v0 + 6632);
  lazy protocol witness table accessor for type MLS.GroupOperationError and conformance MLS.GroupOperationError();
  swift_allocError();
  *v4 = v1;
  *(v4 + 8) = v2;
  *(v4 + 16) = v3;

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 6240));

  v5 = *(v0 + 8);

  return v5();
}

{
  v1 = *(v0 + 6856);
  v2 = *(v0 + 6864);
  v3 = *(v0 + 6872);
  lazy protocol witness table accessor for type MLS.GroupOperationError and conformance MLS.GroupOperationError();
  swift_allocError();
  *v4 = v1;
  *(v4 + 8) = v2;
  *(v4 + 16) = v3;

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 6240));

  v5 = *(v0 + 8);

  return v5();
}

{
  v1 = *(v0 + 6736);
  v2 = *(v0 + 6744);
  v3 = *(v0 + 6752);
  lazy protocol witness table accessor for type MLS.GroupOperationError and conformance MLS.GroupOperationError();
  swift_allocError();
  *v4 = v1;
  *(v4 + 8) = v2;
  *(v4 + 16) = v3;

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 6240));

  v5 = *(v0 + 8);

  return v5();
}

{
  v1 = *(v0 + 6496);
  v2 = *(v0 + 6504);
  v3 = *(v0 + 6512);
  lazy protocol witness table accessor for type MLS.GroupOperationError and conformance MLS.GroupOperationError();
  swift_allocError();
  *v4 = v1;
  *(v4 + 8) = v2;
  *(v4 + 16) = v3;

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 6240));

  v5 = *(v0 + 8);

  return v5();
}

{
  v1 = *(v0 + 6544);
  v2 = *(v0 + 6552);
  v3 = *(v0 + 6560);
  lazy protocol witness table accessor for type MLS.DowngradeError and conformance MLS.DowngradeError();
  swift_allocError();
  *v4 = v1;
  *(v4 + 8) = v2;
  *(v4 + 16) = v3;

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 6240));

  v5 = *(v0 + 8);

  return v5();
}

{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 6240));

  v1 = *(v0 + 8);

  return v1();
}

{
  v1 = *(v0 + 6640);
  v2 = *(v0 + 6648);
  v3 = *(v0 + 6656);
  lazy protocol witness table accessor for type MLS.GroupOperationError and conformance MLS.GroupOperationError();
  swift_allocError();
  *v4 = v1;
  *(v4 + 8) = v2;
  *(v4 + 16) = v3;

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 6240));

  v5 = *(v0 + 8);

  return v5();
}

{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 6240));

  v1 = *(v0 + 8);

  return v1();
}

{
  v1 = *(v0 + 6688);
  v2 = *(v0 + 6696);
  v3 = *(v0 + 6704);
  lazy protocol witness table accessor for type MLS.GroupOperationError and conformance MLS.GroupOperationError();
  swift_allocError();
  *v4 = v1;
  *(v4 + 8) = v2;
  *(v4 + 16) = v3;

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 6240));

  v5 = *(v0 + 8);

  return v5();
}

{
  v1 = *(v0 + 6808);
  v2 = *(v0 + 6816);
  v3 = *(v0 + 6824);
  lazy protocol witness table accessor for type MLS.EncryptionError and conformance MLS.EncryptionError();
  swift_allocError();
  *v4 = v1;
  *(v4 + 8) = v2;
  *(v4 + 16) = v3;

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 6240));

  v5 = *(v0 + 8);

  return v5();
}

uint64_t closure #1 in MLS.SwiftMLSClientCoordinator.retry(eventState:forGroupIdentifier:)(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 7760) = v1;

  if (v1)
  {
    v5 = *(v4 + 1080);
    *(v4 + 1248) = *(v4 + 1064);
    *(v4 + 1264) = v5;
    *(v4 + 1280) = *(v4 + 1096);
    v6 = *(v4 + 1016);
    *(v4 + 1184) = *(v4 + 1000);
    *(v4 + 1200) = v6;
    v7 = *(v4 + 1048);
    *(v4 + 1216) = *(v4 + 1032);
    *(v4 + 1232) = v7;
    v8 = *(v4 + 952);
    *(v4 + 1120) = *(v4 + 936);
    *(v4 + 1136) = v8;
    v9 = *(v4 + 984);
    *(v4 + 1152) = *(v4 + 968);
    *(v4 + 1296) = *(v4 + 1112);
    *(v4 + 1168) = v9;
    outlined destroy of NSObject?(v4 + 1120, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
    v10 = closure #1 in MLS.SwiftMLSClientCoordinator.retry(eventState:forGroupIdentifier:);
  }

  else
  {
    *(v4 + 7768) = a1;
    v10 = closure #1 in MLS.SwiftMLSClientCoordinator.retry(eventState:forGroupIdentifier:);
  }

  return MEMORY[0x2822009F8](v10, 0, 0);
}

{
  *(*v1 + 7784) = a1;

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.retry(eventState:forGroupIdentifier:), 0, 0);
}

{
  v2 = v1[949];
  v3 = v1[948];
  v4 = v1[947];
  v1[976] = MLS.Group.GroupInfo.rawRepresentation.getter();
  v1[977] = v5;
  (*(v3 + 8))(v2, v4);
  v6 = v1[768];
  v7 = v1[769];
  __swift_project_boxed_opaque_existential_1(v1 + 765, v6);
  v10 = (*(v7 + 56) + **(v7 + 56));
  v8 = swift_task_alloc();
  v1[978] = v8;
  *v8 = v1;
  v8[1] = closure #1 in MLS.SwiftMLSClientCoordinator.retry(eventState:forGroupIdentifier:);

  return v10(v6, v7);
}

{
  v3 = *v2;
  v4 = *v2;
  v5 = (*v2 + 936);
  v6 = (*v2 + 3512);
  *(*v2 + 7920) = v1;

  v7 = *(v3 + 7600);
  if (v1)
  {
    v8 = *v6;
    v9 = *(v4 + 3528);
    *(v4 + 3440) = *(v4 + 3544);
    *(v4 + 3424) = v9;
    *(v4 + 3408) = v8;
    v10 = *(v4 + 3560);
    v11 = *(v4 + 3576);
    v12 = *(v4 + 3592);
    *(v4 + 3504) = *(v4 + 3608);
    *(v4 + 3488) = v12;
    *(v4 + 3472) = v11;
    *(v4 + 3456) = v10;
    outlined destroy of MLS.Group(v4 + 3408);
    v13 = *(v4 + 984);
    v15 = *v5;
    v14 = *(v4 + 952);
    *(v4 + 416) = *(v4 + 968);
    *(v4 + 432) = v13;
    *(v4 + 384) = v15;
    *(v4 + 400) = v14;
    v16 = *(v4 + 1048);
    v18 = *(v4 + 1000);
    v17 = *(v4 + 1016);
    *(v4 + 480) = *(v4 + 1032);
    *(v4 + 496) = v16;
    *(v4 + 448) = v18;
    *(v4 + 464) = v17;
    v20 = *(v4 + 1080);
    v19 = *(v4 + 1096);
    v21 = *(v4 + 1064);
    *(v4 + 560) = *(v4 + 1112);
    *(v4 + 528) = v20;
    *(v4 + 544) = v19;
    *(v4 + 512) = v21;
    outlined destroy of NSObject?(v4 + 384, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
    v22 = closure #1 in MLS.SwiftMLSClientCoordinator.retry(eventState:forGroupIdentifier:);
  }

  else
  {

    v23 = *v6;
    v24 = *(v4 + 3528);
    *(v4 + 3856) = *(v4 + 3544);
    *(v4 + 3840) = v24;
    *(v4 + 3824) = v23;
    v25 = *(v4 + 3560);
    v26 = *(v4 + 3576);
    v27 = *(v4 + 3592);
    *(v4 + 3920) = *(v4 + 3608);
    *(v4 + 3904) = v27;
    *(v4 + 3888) = v26;
    *(v4 + 3872) = v25;
    outlined destroy of MLS.Group(v4 + 3824);
    v28 = *(v4 + 968);
    v29 = *(v4 + 984);
    v30 = *(v4 + 952);
    *(v4 + 200) = *v5;
    *(v4 + 248) = v29;
    *(v4 + 232) = v28;
    *(v4 + 216) = v30;
    v31 = *(v4 + 1048);
    v33 = *(v4 + 1000);
    v32 = *(v4 + 1016);
    *(v4 + 296) = *(v4 + 1032);
    *(v4 + 312) = v31;
    *(v4 + 264) = v33;
    *(v4 + 280) = v32;
    v35 = *(v4 + 1080);
    v34 = *(v4 + 1096);
    v36 = *(v4 + 1064);
    *(v4 + 376) = *(v4 + 1112);
    *(v4 + 344) = v35;
    *(v4 + 360) = v34;
    *(v4 + 328) = v36;
    outlined destroy of NSObject?(v4 + 200, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
    v22 = closure #1 in MLS.SwiftMLSClientCoordinator.retry(eventState:forGroupIdentifier:);
  }

  return MEMORY[0x2822009F8](v22, v7, 0);
}

{
  v3 = *v2;
  v3[1014] = a1;
  v3[1015] = v1;

  if (v1)
  {
    v4 = v3[959];
    v5 = v3[958];
    v6 = v3[950];

    outlined consume of MLS.OutgoingEventState.EventSpecificState(v5, v4, 7u);

    v7 = closure #1 in MLS.SwiftMLSClientCoordinator.retry(eventState:forGroupIdentifier:);
    v8 = v6;
  }

  else
  {
    v8 = v3[950];
    v7 = closure #1 in MLS.SwiftMLSClientCoordinator.retry(eventState:forGroupIdentifier:);
  }

  return MEMORY[0x2822009F8](v7, v8, 0);
}

{
  v92 = v1;
  v91[2] = *MEMORY[0x277D85DE8];
  v2 = 6240;
  v3 = *(v1 + 8112);
  v4 = *(v3 + 32);
  v5 = ((1 << v4) + 63) >> 6;
  v6 = v3;
  if ((v4 & 0x3Fu) > 0xD)
  {
    goto LABEL_39;
  }

  while (2)
  {
    v74 = v5;
    v76 = &v73;
    v2 = *(v1 + 7536);
    v7 = *(v1 + 7512);
    v8 = *(v1 + 7472);
    MEMORY[0x28223BE20](a1);
    v75 = &v73 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v75, v9);
    v77 = 0;
    v10 = 0;
    v5 = v6 + 56;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v90 = (v8 + 48);
    v81 = (v8 + 8);
    v82 = (v8 + 32);
    v84 = v2 + 16;
    *&v85 = v7 + 8;
    v86 = (v2 + 8);
    v87 = v2;
    v15 = *(v1 + 8120);
    v83 = v6;
    v79 = v14;
    v80 = v6 + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v18 = (v13 - 1) & v13;
LABEL_14:
      v21 = v17 | (v10 << 6);
      v89 = v18;
      v22 = *(v1 + 7544);
      v23 = *(v1 + 7528);
      v24 = *(v6 + 48);
      v25 = *(v87 + 72);
      v78 = v21;
      (*(v87 + 16))(v22, v24 + v25 * v21, v23);
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v26 = *(v1 + 7464);
      v2 = *(v1 + 7456);
      MLS.Identity.SigningIdentity.credential.getter();
      MLS.Identity.Credential.credentialNotAfter.getter();
      v27 = *v90;
      if ((*v90)(v2, 1, v26) == 1)
      {
        outlined destroy of NSObject?(*(v1 + 7456), &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      }

      else
      {
        v28 = *(v1 + 7496);
        v29 = *(v1 + 7488);
        v2 = *(v1 + 7464);
        (*v82)(v28, *(v1 + 7456), v2);
        Date.init()();
        v30 = static Date.< infix(_:_:)();
        v31 = *v81;
        (*v81)(v29, v2);
        v31(v28, v2);
        v5 = v80;
        v6 = v83;
        if (v30)
        {
          v14 = v79;
          v13 = v89;
          goto LABEL_24;
        }
      }

      MLS.Identity.Credential.participantInfoNotAfter.getter();
      if (v15)
      {
        v65 = *(v1 + 7544);
        v66 = *(v1 + 7528);
        (*v85)(*(v1 + 7520), *(v1 + 7504));
        (*v86)(v65, v66);

        swift_willThrow();
        v2 = 6240;
        goto LABEL_37;
      }

      v32 = *(v1 + 7464);
      v33 = *(v1 + 7448);
      v34 = v27(v33, 1, v32);
      v88 = 0;
      if (v34 == 1)
      {
        outlined destroy of NSObject?(v33, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
        v14 = v79;
        v13 = v89;
        goto LABEL_6;
      }

      v35 = *(v1 + 7488);
      v2 = *(v1 + 7480);
      (*v82)(v2, v33, v32);
      Date.init()();
      v36 = static Date.< infix(_:_:)();
      v37 = *v81;
      (*v81)(v35, v32);
      v37(v2, v32);
      v14 = v79;
      v5 = v80;
      v6 = v83;
      v13 = v89;
      if (v36)
      {
        v15 = 0;
LABEL_24:
        v3 = *(v1 + 7544);
        v38 = *(v1 + 7528);
        (*v85)(*(v1 + 7520), *(v1 + 7504));
        (*v86)(v3, v38);
        *&v75[(v78 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v78;
        if (__OFADD__(v77++, 1))
        {
          __break(1u);
LABEL_27:
          v88 = specialized _NativeSet.extractSubset(using:count:)(v75, v74, v77, *(v1 + 8112));
          goto LABEL_28;
        }
      }

      else
      {
LABEL_6:
        v3 = *(v1 + 7544);
        v16 = *(v1 + 7528);
        (*v85)(*(v1 + 7520), *(v1 + 7504));
        (*v86)(v3, v16);
        v15 = 0;
      }
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v10 >= v14)
      {
        goto LABEL_27;
      }

      v20 = *(v5 + 8 * v10);
      ++v19;
      if (v20)
      {
        v17 = __clz(__rbit64(v20));
        v18 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_39:

    if (swift_stdlib_isStackAllocationSafe())
    {

      v6 = *(v1 + 8112);
      continue;
    }

    break;
  }

  v69 = *(v1 + 8120);
  v70 = *(v1 + 8112);
  v71 = swift_slowAlloc();
  v15 = v69;
  v72 = _ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s10_NativeSetVy8SwiftMLS0J0O8IdentityO07SigningK0VG_Tg506_ss10_gh28V6filteryAByxGSbxKXEKFADs13_ab8VKXEfU_8i8MLS0G0O8k3O07L7H0V_TG5AOxSbs5Error_pRi_zRi0_zlyANIsgndzo_Tf1nc_n(v71, v5, v70, closure #3 in closure #1 in MLS.SwiftMLSClientCoordinator.retry(eventState:forGroupIdentifier:));

  MEMORY[0x266755550](v71, -1, -1);
  if (v15)
  {
LABEL_37:
    v88 = v15;
    v67 = *(v1 + 7672);
    v68 = *(v1 + 7664);

    outlined consume of MLS.OutgoingEventState.EventSpecificState(v68, v67, 7u);
LABEL_30:
    __swift_destroy_boxed_opaque_existential_1Tm((v1 + v2));

    v57 = *(v1 + 8);

    return v57();
  }

  else
  {
    v88 = v72;
LABEL_28:
    v40 = *(v1 + 8096);
    v41 = *(v1 + 7672);
    v89 = *(v1 + 7664);
    v90 = v41;
    v85 = *(v1 + 7624);
    v87 = *(v1 + 7440);
    v42 = v87;
    v43 = *(v1 + 7424);
    v83 = *(v1 + 7416);
    v84 = v43;
    v44 = *(v1 + 7400);
    *(v1 + 6960) = *(*(v1 + 7408) + 56);
    v45 = *(v1 + 6960);
    v81 = *(v1 + 6968);
    v82 = v45;
    outlined init with copy of ServerBag.MLS(v44 + 104, v1 + 6040);
    v46 = *(v44 + 96);
    v47 = *(v44 + direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier + 8);
    v86 = *(v44 + direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier);
    outlined init with copy of MLS.KeyPackageProvider(v44 + direct field offset for MLS.SwiftMLSClientCoordinator.keyPackageProvider, v42);
    v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO38UpdateOtherExpiredKeyPackagesOperationCy_AC05GroupI5ErrorVAC0jI7ContextVy_10Foundation4DataVGAC0ji9ProcessedL0Vy_ALGGMd, &_s15SecureMessaging3MLSO38UpdateOtherExpiredKeyPackagesOperationCy_AC05GroupI5ErrorVAC0jI7ContextVy_10Foundation4DataVGAC0ji9ProcessedL0Vy_ALGGMR);
    v49 = swift_allocObject();
    *(v1 + 8128) = v49;
    outlined init with copy of MLS.OutgoingEventState?(v1 + 6960, v1 + 6944, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);

    Logger.init(subsystem:category:)();
    v50 = v84;
    *(v49 + 16) = v83;
    *(v49 + 24) = v50;
    *(v49 + 32) = v85;
    v51 = v81;
    *(v49 + 48) = v82;
    *(v49 + 56) = v51;
    *(v49 + 64) = v40;
    *(v49 + *(*v49 + 152)) = v88;
    outlined init with take of MLS.KeyUpdatePolicy((v1 + 6040), v49 + *(*v49 + 160));
    v52 = (v49 + *(*v49 + 168));
    *v52 = v46;
    v52[1] = &protocol witness table for MLS.EventSender<A, B>;
    v53 = (v49 + *(*v49 + 176));
    v54 = v87;
    *v53 = v86;
    v53[1] = v47;
    outlined init with take of MLS.KeyPackageProvider(v54, v49 + *(*v49 + 184), type metadata accessor for MLS.KeyPackageProvider);

    outlined consume of MLS.OutgoingEventState.EventSpecificState(v55, v90, 7u);
    v56 = *(v44 + direct field offset for MLS.SwiftMLSClientCoordinator.runner);
    *(v1 + 7264) = v49;
    *(v1 + 7272) = v40;
    v2 = 6240;
    outlined init with copy of ServerBag.MLS(v1 + 6240, v1 + 6360);
    v91[0] = v55;
    MLS.KeyPackageFetcher.FetchResult.init(retrievalResult:)(v91, (v1 + 6784));
    if (v15)
    {
      v88 = v15;
      outlined destroy of NSObject?(v1 + 6360, &_s15SecureMessaging3MLSO21SwiftMLSGroupProtocol_pSgMd, &_s15SecureMessaging3MLSO21SwiftMLSGroupProtocol_pSgMR);

      goto LABEL_30;
    }

    v59 = v48;
    v60 = *(v1 + 6800);
    *(v1 + 6760) = *(v1 + 6784);
    *(v1 + 6776) = v60;
    v61 = (*v56 + 224);
    v89 = (*v61 + **v61);
    v90 = v61;
    v62 = swift_task_alloc();
    *(v1 + 8136) = v62;
    v63 = lazy protocol witness table accessor for type MLS.KeyPackageRetrievalResult<MLS.AllMember> and conformance MLS.KeyPackageRetrievalResult<A>(&lazy protocol witness table cache variable for type MLS.UpdateOtherExpiredKeyPackagesOperation<MLS.GroupOperationError, MLS.GroupOperationContext<Data>, MLS.GroupOperationProcessedContext<Data>> and conformance MLS.UpdateOtherExpiredKeyPackagesOperation<A, B, C>, &_s15SecureMessaging3MLSO38UpdateOtherExpiredKeyPackagesOperationCy_AC05GroupI5ErrorVAC0jI7ContextVy_10Foundation4DataVGAC0ji9ProcessedL0Vy_ALGGMd, &_s15SecureMessaging3MLSO38UpdateOtherExpiredKeyPackagesOperationCy_AC05GroupI5ErrorVAC0jI7ContextVy_10Foundation4DataVGAC0ji9ProcessedL0Vy_ALGGMR, &protocol conformance descriptor for MLS.UpdateOtherExpiredKeyPackagesOperation<A, B, C>);
    *v62 = v1;
    v62[1] = closure #1 in MLS.SwiftMLSClientCoordinator.retry(eventState:forGroupIdentifier:);
    v64 = v89;

    return v64(v1 + 3168, v1 + 7264, v1 + 7272, v1 + 6360, v1 + 6760, v59, v63, v1 + 6688);
  }
}