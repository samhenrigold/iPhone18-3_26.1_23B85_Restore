unint64_t sub_1DAE3CBA4()
{
  result = qword_1ECC09998;
  if (!qword_1ECC09998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC09998);
  }

  return result;
}

uint64_t sub_1DAE3CC00(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x54746E65746E6F63;
    }

    else
    {
      v3 = 0x4B6E6F6973736573;
    }

    if (v2)
    {
      v4 = 0xEB00000000657079;
    }

    else
    {
      v4 = 0xEA00000000007965;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0xE800000000000000;
    v3 = 0x797469726F697270;
  }

  else if (a1 == 3)
  {
    v3 = 0xD000000000000014;
    v4 = 0x80000001DAEE0250;
  }

  else
  {
    v3 = 0x53796C6269736976;
    v4 = 0xEE0064656C747465;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v6 = 0x54746E65746E6F63;
    }

    else
    {
      v6 = 0x4B6E6F6973736573;
    }

    if (a2)
    {
      v5 = 0xEB00000000657079;
    }

    else
    {
      v5 = 0xEA00000000007965;
    }

    if (v3 != v6)
    {
      goto LABEL_31;
    }
  }

  else if (a2 == 2)
  {
    v5 = 0xE800000000000000;
    if (v3 != 0x797469726F697270)
    {
      goto LABEL_31;
    }
  }

  else if (a2 == 3)
  {
    v5 = 0x80000001DAEE0250;
    if (v3 != 0xD000000000000014)
    {
      goto LABEL_31;
    }
  }

  else
  {
    v5 = 0xEE0064656C747465;
    if (v3 != 0x53796C6269736976)
    {
LABEL_31:
      v7 = sub_1DAED289C();
      goto LABEL_32;
    }
  }

  if (v4 != v5)
  {
    goto LABEL_31;
  }

  v7 = 1;
LABEL_32:

  return v7 & 1;
}

uint64_t WidgetRendererSessionSubscriptionRequest.__allocating_init(sessionKey:contentType:priority:environmentModifiers:visiblySettled:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  v11 = OBJC_IVAR____TtC14WidgetRenderer40WidgetRendererSessionSubscriptionRequest_priority;
  v12 = sub_1DAECE20C();
  (*(*(v12 - 8) + 32))(v10 + v11, a3, v12);
  v13 = OBJC_IVAR____TtC14WidgetRenderer40WidgetRendererSessionSubscriptionRequest_environmentModifiers;
  v14 = sub_1DAED10DC();
  (*(*(v14 - 8) + 32))(v10 + v13, a4, v14);
  *(v10 + OBJC_IVAR____TtC14WidgetRenderer40WidgetRendererSessionSubscriptionRequest_visiblySettled) = a5;
  return v10;
}

uint64_t sub_1DAE3CF4C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, uint64_t (*a3)(void)@<X4>, uint64_t a4@<X8>)
{
  v6 = *a1;
  v7 = *a2;
  swift_beginAccess();
  v8 = a3(0);
  return (*(*(v8 - 8) + 16))(a4, v6 + v7, v8);
}

uint64_t sub_1DAE3CFDC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t *a6)
{
  v9 = (a5)(0, a2, a3, a4);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v17 - v12;
  (*(v10 + 16))(&v17 - v12, a1, v9, v11);
  v14 = *a2;
  v15 = *a6;
  swift_beginAccess();
  (*(v10 + 40))(v14 + v15, v13, v9);
  return swift_endAccess();
}

uint64_t sub_1DAE3D114(uint64_t a1, uint64_t *a2, uint64_t (*a3)(void))
{
  v6 = *a2;
  swift_beginAccess();
  v7 = a3(0);
  (*(*(v7 - 8) + 40))(v3 + v6, a1, v7);
  return swift_endAccess();
}

uint64_t sub_1DAE3D208(char a1)
{
  v3 = OBJC_IVAR____TtC14WidgetRenderer40WidgetRendererSessionSubscriptionRequest_visiblySettled;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t WidgetRendererSessionSubscriptionRequest.init(sessionKey:contentType:priority:environmentModifiers:visiblySettled:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v9 = OBJC_IVAR____TtC14WidgetRenderer40WidgetRendererSessionSubscriptionRequest_priority;
  v10 = sub_1DAECE20C();
  (*(*(v10 - 8) + 32))(v5 + v9, a3, v10);
  v11 = OBJC_IVAR____TtC14WidgetRenderer40WidgetRendererSessionSubscriptionRequest_environmentModifiers;
  v12 = sub_1DAED10DC();
  (*(*(v12 - 8) + 32))(v5 + v11, a4, v12);
  *(v5 + OBJC_IVAR____TtC14WidgetRenderer40WidgetRendererSessionSubscriptionRequest_visiblySettled) = a5;
  return v5;
}

uint64_t sub_1DAE3D398()
{
  sub_1DAED294C();
  sub_1DAED1D9C();

  return sub_1DAED297C();
}

uint64_t sub_1DAE3D498(uint64_t a1)
{
  sub_1DAED1D9C();
}

uint64_t sub_1DAE3D584(uint64_t a1)
{
  sub_1DAED294C();
  sub_1DAED1D9C();

  return sub_1DAED297C();
}

unint64_t sub_1DAE3D680@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DAE3DB38(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1DAE3D6B0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEA00000000007965;
  v4 = 0x4B6E6F6973736573;
  v5 = 0xE800000000000000;
  v6 = 0x797469726F697270;
  v7 = 0x80000001DAEE0250;
  v8 = 0xD000000000000014;
  if (v2 != 3)
  {
    v8 = 0x53796C6269736976;
    v7 = 0xEE0064656C747465;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x54746E65746E6F63;
    v3 = 0xEB00000000657079;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

unint64_t sub_1DAE3D76C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DAE3DB38(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DAE3D7A0(uint64_t a1)
{
  v2 = sub_1DADA64C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DAE3D7DC(uint64_t a1)
{
  v2 = sub_1DADA64C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t WidgetRendererSessionSubscriptionRequest.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  WidgetRendererSessionSubscriptionRequest.init(from:)(a1);
  return v2;
}

unint64_t sub_1DAE3D868()
{
  result = qword_1ECC099B0;
  if (!qword_1ECC099B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC099A8, &qword_1DAEDACF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC099B0);
  }

  return result;
}

uint64_t WidgetRendererSessionSubscriptionRequest.deinit()
{
  v1 = OBJC_IVAR____TtC14WidgetRenderer40WidgetRendererSessionSubscriptionRequest_priority;
  v2 = sub_1DAECE20C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC14WidgetRenderer40WidgetRendererSessionSubscriptionRequest_environmentModifiers;
  v4 = sub_1DAED10DC();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

unint64_t sub_1DAE3DAE4()
{
  result = qword_1ECC099B8;
  if (!qword_1ECC099B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC099B8);
  }

  return result;
}

unint64_t sub_1DAE3DB38(uint64_t a1, uint64_t a2)
{
  v2 = sub_1DAED27CC();

  if (v2 >= 5)
  {
    return 5;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1DAE3DC38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 80) + **(a4 + 80));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1DAE03864;

  return v11(a1, a2, a3, a4);
}

void sub_1DAE3DD7C(uint64_t a1, uint64_t a2)
{
  v2 = sub_1DAED0B1C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &aBlock[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    sub_1DAD648F8(Strong + OBJC_IVAR____TtC14WidgetRenderer31_DefaultActivityRendererSession__client, aBlock);
    __swift_project_boxed_opaque_existential_1(aBlock, v15);
    if (sub_1DAED12EC())
    {
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A9C0, &unk_1DAED8030);
      MEMORY[0x1E127CAC0](v8);
      v9 = sub_1DAED103C();

      (*(v3 + 8))(v5, v2);
    }

    else
    {
      v9 = 0;
    }

    __swift_destroy_boxed_opaque_existential_1Tm(aBlock);
    v10 = swift_allocObject();
    *(v10 + 16) = v7;
    *(v10 + 24) = v9;
    v16 = sub_1DAE3FE88;
    v17 = v10;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1DAD751C0;
    v15 = &block_descriptor_11;
    v11 = _Block_copy(aBlock);
    v12 = v9;

    BSDispatchMain();
    _Block_release(v11);
  }
}

uint64_t sub_1DAE3DFB8()
{
  v1 = v0;
  if (qword_1EE005E70 != -1)
  {
    swift_once();
  }

  v2 = sub_1DAECEDEC();
  __swift_project_value_buffer(v2, qword_1EE011790);

  v3 = sub_1DAECEDCC();
  v4 = sub_1DAED200C();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13 = v6;
    *v5 = 136446210;
    v7 = *(v1 + OBJC_IVAR____TtC14WidgetRenderer31_DefaultActivityRendererSession_logIdentifier);
    v8 = *(v1 + OBJC_IVAR____TtC14WidgetRenderer31_DefaultActivityRendererSession_logIdentifier + 8);

    v9 = sub_1DAD6482C(v7, v8, &v13);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_1DAD61000, v3, v4, "[%{public}s] Destroyed", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x1E127F100](v6, -1, -1);
    MEMORY[0x1E127F100](v5, -1, -1);
  }

  v10 = OBJC_IVAR____TtC14WidgetRenderer31_DefaultActivityRendererSession_taskPriority;
  v11 = sub_1DAECE20C();
  (*(*(v11 - 8) + 8))(v1 + v10, v11);
  sub_1DAD64398(v1 + OBJC_IVAR____TtC14WidgetRenderer31_DefaultActivityRendererSession_environmentProvider, &qword_1ECC099D0, &qword_1DAEDB028);
  __swift_destroy_boxed_opaque_existential_1Tm((v1 + OBJC_IVAR____TtC14WidgetRenderer31_DefaultActivityRendererSession__baseEnvironmentProvider));
  sub_1DAD64398(v1 + OBJC_IVAR____TtC14WidgetRenderer31_DefaultActivityRendererSession__activityEntryAssertion, &qword_1ECC099C0, &qword_1DAEDCB90);

  __swift_destroy_boxed_opaque_existential_1Tm((v1 + OBJC_IVAR____TtC14WidgetRenderer31_DefaultActivityRendererSession__client));

  __swift_destroy_boxed_opaque_existential_1Tm((v1 + OBJC_IVAR____TtC14WidgetRenderer31_DefaultActivityRendererSession__keybagStateProvider));
  __swift_destroy_boxed_opaque_existential_1Tm((v1 + OBJC_IVAR____TtC14WidgetRenderer31_DefaultActivityRendererSession__dataProtectionMonitor));

  return v1;
}

uint64_t sub_1DAE3E22C()
{
  sub_1DAE3DFB8();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for _DefaultActivityRendererSession(uint64_t a1)
{
  result = qword_1EE00A308;
  if (!qword_1EE00A308)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DAE3E2D8(uint64_t a1)
{
  result = sub_1DAECE20C();
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_1DAE3E3BC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC099C8, &qword_1DAEDB020);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v38 - v2;
  v4 = sub_1DAECE20C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A9C0, &unk_1DAED8030);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v38 - v10;
  result = BSDispatchQueueAssertMain();
  if ((*(v0 + OBJC_IVAR____TtC14WidgetRenderer31_DefaultActivityRendererSession__invalidated) & 1) == 0 && (*(v0 + OBJC_IVAR____TtC14WidgetRenderer31_DefaultActivityRendererSession__started) & 1) == 0)
  {
    v38 = v7;
    v41 = v3;
    if (qword_1EE005E70 != -1)
    {
      swift_once();
    }

    v39 = v5;
    v40 = v4;
    v13 = sub_1DAECEDEC();
    __swift_project_value_buffer(v13, qword_1EE011790);

    v14 = sub_1DAECEDCC();
    v15 = sub_1DAED203C();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v43[0] = v17;
      *v16 = 136446210;
      v18 = *(v0 + OBJC_IVAR____TtC14WidgetRenderer31_DefaultActivityRendererSession_logIdentifier);
      v19 = *(v0 + OBJC_IVAR____TtC14WidgetRenderer31_DefaultActivityRendererSession_logIdentifier + 8);

      v20 = sub_1DAD6482C(v18, v19, v43);

      *(v16 + 4) = v20;
      _os_log_impl(&dword_1DAD61000, v14, v15, "[%{public}s] Subscribing", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v17);
      MEMORY[0x1E127F100](v17, -1, -1);
      MEMORY[0x1E127F100](v16, -1, -1);
    }

    sub_1DAD648F8(v0 + OBJC_IVAR____TtC14WidgetRenderer31_DefaultActivityRendererSession__baseEnvironmentProvider, v43);
    v21 = OBJC_IVAR____TtC14WidgetRenderer31_DefaultActivityRendererSession_environmentProvider;
    swift_beginAccess();
    sub_1DAD94438(v43, v0 + v21, &qword_1ECC099D0, &qword_1DAEDB028);
    swift_endAccess();
    v22 = *(v0 + OBJC_IVAR____TtC14WidgetRenderer31_DefaultActivityRendererSession__archiveService);
    v23 = *(v0 + 16);
    (*(v9 + 16))(v11, v23 + OBJC_IVAR____TtC14WidgetRenderer26ActivityRendererSessionKey_contentKey, v8);
    v24 = *(v22 + 56);
    v25 = *&v24[OBJC_IVAR____TtC14WidgetRenderer27ActivityArchiveServiceStore__lock];
    v26 = *(v25 + 16);

    os_unfair_lock_lock(v26);
    sub_1DAE10FC0(v24, v11, 0xD000000000000025, 0x80000001DAEE3690, v43);
    os_unfair_lock_unlock(*(v25 + 16));

    (*(v9 + 8))(v11, v8);

    sub_1DAD648F8(v43, v42);
    v27 = OBJC_IVAR____TtC14WidgetRenderer31_DefaultActivityRendererSession__activityEntryAssertion;
    swift_beginAccess();
    sub_1DAD94438(v42, v0 + v27, &qword_1ECC099C0, &qword_1DAEDCB90);
    swift_endAccess();
    v29 = v38;
    v28 = v39;
    v30 = v40;
    (*(v39 + 16))(v38, v0 + OBJC_IVAR____TtC14WidgetRenderer31_DefaultActivityRendererSession_taskPriority, v40);
    type metadata accessor for ActivityRendererSessionSubscriptionRequest(0);
    v31 = swift_allocObject();
    *(v31 + 16) = v23;
    (*(v28 + 32))(v31 + OBJC_IVAR____TtC14WidgetRenderer42ActivityRendererSessionSubscriptionRequest_priority, v29, v30);
    v32 = sub_1DAED1F2C();
    v33 = v41;
    (*(*(v32 - 8) + 56))(v41, 1, 1, v32);
    sub_1DAD648F8(v43, v42);
    sub_1DAED1F0C();

    v34 = v0;
    v35 = sub_1DAED1EFC();
    v36 = swift_allocObject();
    v37 = MEMORY[0x1E69E85E0];
    v36[2] = v35;
    v36[3] = v37;
    v36[4] = v34;
    v36[5] = v31;
    sub_1DAD657D8(v42, (v36 + 6));
    sub_1DAE61C60(0, 0, v33, &unk_1DAEDB038, v36);

    return __swift_destroy_boxed_opaque_existential_1Tm(v43);
  }

  return result;
}

uint64_t sub_1DAE3E99C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[29] = a5;
  v6[30] = a6;
  v6[28] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08D68, &unk_1DAED8020);
  v6[31] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A9C0, &unk_1DAED8030);
  v6[32] = v7;
  v6[33] = *(v7 - 8);
  v6[34] = swift_task_alloc();
  sub_1DAED1F0C();
  v6[35] = sub_1DAED1EFC();
  v9 = sub_1DAED1ECC();
  v6[36] = v9;
  v6[37] = v8;

  return MEMORY[0x1EEE6DFA0](sub_1DAE3EAD8, v9, v8);
}

uint64_t sub_1DAE3EAD8()
{
  v1 = v0[28];
  v2 = OBJC_IVAR____TtC14WidgetRenderer31_DefaultActivityRendererSession__started;
  v0[38] = OBJC_IVAR____TtC14WidgetRenderer31_DefaultActivityRendererSession__started;
  *(v1 + v2) = 1;
  sub_1DAD648F8(v1 + OBJC_IVAR____TtC14WidgetRenderer31_DefaultActivityRendererSession__client, (v0 + 2));
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  v3 = sub_1DAE40000(&qword_1EE008C60, type metadata accessor for ActivityRendererClient, &unk_1DAEDD7D8);
  v4 = *(v3 + 64);
  v5 = type metadata accessor for ActivityRendererClient(0);
  v9 = (v4 + *v4);
  v6 = swift_task_alloc();
  v0[39] = v6;
  *v6 = v0;
  v6[1] = sub_1DAE3EC7C;
  v7 = v0[29];

  return (v9)(v0 + 41, v7, v5, v3);
}

uint64_t sub_1DAE3EC7C()
{
  v2 = *v1;
  *(*v1 + 320) = v0;

  v3 = *(v2 + 296);
  v4 = *(v2 + 288);
  if (v0)
  {
    v5 = sub_1DAE3F1DC;
  }

  else
  {
    v5 = sub_1DAE3EDB8;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1DAE3EDB8()
{
  v32 = v0;
  v1 = *(v0 + 224);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  if (*(v1 + OBJC_IVAR____TtC14WidgetRenderer31_DefaultActivityRendererSession__invalidated) == 1)
  {
    if (qword_1EE005E70 != -1)
    {
      swift_once();
    }

    v2 = sub_1DAECEDEC();
    __swift_project_value_buffer(v2, qword_1EE011790);

    v3 = sub_1DAECEDCC();
    v4 = sub_1DAED203C();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = *(v0 + 224);
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v31 = v7;
      *v6 = 136446210;
      v8 = v5 + OBJC_IVAR____TtC14WidgetRenderer31_DefaultActivityRendererSession_logIdentifier;
      v9 = *(v5 + OBJC_IVAR____TtC14WidgetRenderer31_DefaultActivityRendererSession_logIdentifier);
      v10 = *(v8 + 8);

      v11 = sub_1DAD6482C(v9, v10, &v31);

      *(v6 + 4) = v11;
      v12 = "[%{public}s] Ignoring subscription result; we were invalidated while subscribing.";
LABEL_10:
      _os_log_impl(&dword_1DAD61000, v3, v4, v12, v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v7);
      MEMORY[0x1E127F100](v7, -1, -1);
      MEMORY[0x1E127F100](v6, -1, -1);
    }
  }

  else
  {
    v14 = *(v0 + 264);
    v13 = *(v0 + 272);
    v16 = *(v0 + 248);
    v15 = *(v0 + 256);
    v17 = *(v0 + 232);
    v18 = *(v0 + 224);
    __swift_project_boxed_opaque_existential_1(*(v0 + 240), *(*(v0 + 240) + 24));

    sub_1DAED0D0C();

    v19 = *(v18 + OBJC_IVAR____TtC14WidgetRenderer31_DefaultActivityRendererSession__archiveService);
    (*(v14 + 16))(v13, *(v17 + 16) + OBJC_IVAR____TtC14WidgetRenderer26ActivityRendererSessionKey_contentKey, v15);
    v20 = *(*(v19 + 56) + OBJC_IVAR____TtC14WidgetRenderer27ActivityArchiveServiceStore__lock);
    v21 = *(v20 + 16);

    os_unfair_lock_lock(v21);
    v22 = type metadata accessor for ActivityContentDidChangeEvent(0);
    (*(*(v22 - 8) + 56))(v16, 1, 1, v22);
    sub_1DAE13360(v13, v16);
    sub_1DAD64398(v16, &qword_1ECC08D68, &unk_1DAED8020);
    os_unfair_lock_unlock(*(v20 + 16));

    (*(v14 + 8))(v13, v15);

    if (qword_1EE005E70 != -1)
    {
      swift_once();
    }

    v23 = sub_1DAECEDEC();
    __swift_project_value_buffer(v23, qword_1EE011790);

    v3 = sub_1DAECEDCC();
    v4 = sub_1DAED203C();

    if (os_log_type_enabled(v3, v4))
    {
      v24 = *(v0 + 224);
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v31 = v7;
      *v6 = 136446210;
      v25 = v24 + OBJC_IVAR____TtC14WidgetRenderer31_DefaultActivityRendererSession_logIdentifier;
      v26 = *(v24 + OBJC_IVAR____TtC14WidgetRenderer31_DefaultActivityRendererSession_logIdentifier);
      v27 = *(v25 + 8);

      v28 = sub_1DAD6482C(v26, v27, &v31);

      *(v6 + 4) = v28;
      v12 = "[%{public}s] Subscribed";
      goto LABEL_10;
    }
  }

  v29 = *(v0 + 8);

  return v29();
}

uint64_t sub_1DAE3F1DC()
{
  v24 = v0;
  v1 = *(v0 + 304);
  v2 = *(v0 + 224);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  *(v2 + v1) = 0;
  v3 = OBJC_IVAR____TtC14WidgetRenderer31_DefaultActivityRendererSession__activityEntryAssertion;
  swift_beginAccess();
  sub_1DAE3FECC(v2 + v3, v0 + 56);
  if (*(v0 + 80))
  {
    sub_1DAD648F8(v0 + 56, v0 + 136);
    sub_1DAD64398(v0 + 56, &qword_1ECC099C0, &qword_1DAEDCB90);
    __swift_project_boxed_opaque_existential_1((v0 + 136), *(v0 + 160));
    sub_1DAED144C();
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 136));
  }

  else
  {
    sub_1DAD64398(v0 + 56, &qword_1ECC099C0, &qword_1DAEDCB90);
  }

  *(v0 + 128) = 0;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0u;
  swift_beginAccess();
  sub_1DAD94438(v0 + 96, v2 + v3, &qword_1ECC099C0, &qword_1DAEDCB90);
  swift_endAccess();
  if (qword_1EE005E70 != -1)
  {
    swift_once();
  }

  v4 = *(v0 + 320);
  v5 = sub_1DAECEDEC();
  __swift_project_value_buffer(v5, qword_1EE011790);

  v6 = v4;
  v7 = sub_1DAECEDCC();
  v8 = sub_1DAED201C();

  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 320);
  if (v9)
  {
    v11 = *(v0 + 224);
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v23 = v14;
    *v12 = 136446466;
    v15 = v11 + OBJC_IVAR____TtC14WidgetRenderer31_DefaultActivityRendererSession_logIdentifier;
    v16 = *(v11 + OBJC_IVAR____TtC14WidgetRenderer31_DefaultActivityRendererSession_logIdentifier);
    v17 = *(v15 + 8);

    v18 = sub_1DAD6482C(v16, v17, &v23);

    *(v12 + 4) = v18;
    *(v12 + 12) = 2114;
    v19 = v10;
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 14) = v20;
    *v13 = v20;
    _os_log_impl(&dword_1DAD61000, v7, v8, "[%{public}s] Error subscribing to session: %{public}@", v12, 0x16u);
    sub_1DAD64398(v13, &qword_1ECC07CF0, &qword_1DAED57A0);
    MEMORY[0x1E127F100](v13, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v14);
    MEMORY[0x1E127F100](v14, -1, -1);
    MEMORY[0x1E127F100](v12, -1, -1);
  }

  else
  {
  }

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_1DAE3F520(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  sub_1DAED1F0C();
  v3[5] = sub_1DAED1EFC();
  v5 = sub_1DAED1ECC();
  v3[6] = v5;
  v3[7] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1DAE3F5BC, v5, v4);
}

uint64_t sub_1DAE3F5BC(uint64_t a1)
{
  v21 = v1;
  v2 = v1[4];
  BSDispatchQueueAssertMain();
  if (*(v2 + OBJC_IVAR____TtC14WidgetRenderer31_DefaultActivityRendererSession__invalidated) == 1)
  {

    v3 = v1[1];

    return v3();
  }

  else
  {
    if (qword_1EE005E70 != -1)
    {
      swift_once();
    }

    v5 = sub_1DAECEDEC();
    __swift_project_value_buffer(v5, qword_1EE011790);

    v6 = sub_1DAECEDCC();
    v7 = sub_1DAED203C();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = v1[4];
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v20 = v10;
      *v9 = 136446210;
      v11 = v8 + OBJC_IVAR____TtC14WidgetRenderer31_DefaultActivityRendererSession_logIdentifier;
      v12 = *(v8 + OBJC_IVAR____TtC14WidgetRenderer31_DefaultActivityRendererSession_logIdentifier);
      v13 = *(v11 + 8);

      v14 = sub_1DAD6482C(v12, v13, &v20);

      *(v9 + 4) = v14;
      _os_log_impl(&dword_1DAD61000, v6, v7, "[%{public}s] Handle action", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v10);
      MEMORY[0x1E127F100](v10, -1, -1);
      MEMORY[0x1E127F100](v9, -1, -1);
    }

    v15 = v1[4];
    __swift_project_boxed_opaque_existential_1((v15 + OBJC_IVAR____TtC14WidgetRenderer31_DefaultActivityRendererSession__client), *(v15 + OBJC_IVAR____TtC14WidgetRenderer31_DefaultActivityRendererSession__client + 24));
    v16 = *(v15 + 16);
    v17 = swift_task_alloc();
    v1[8] = v17;
    *v17 = v1;
    v17[1] = sub_1DAE3F824;
    v19 = v1[2];
    v18 = v1[3];

    return sub_1DAE809AC(v16, v18, v19);
  }
}

uint64_t sub_1DAE3F824()
{
  v2 = *v1;
  *(*v1 + 72) = v0;

  v3 = *(v2 + 56);
  v4 = *(v2 + 48);
  if (v0)
  {
    v5 = sub_1DAE3F9C4;
  }

  else
  {
    v5 = sub_1DAE3F960;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1DAE3F960()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DAE3F9C4()
{

  v1 = *(v0 + 8);

  return v1();
}

double sub_1DAE3FA28()
{
  v1 = v0;
  if (qword_1EE005E70 == -1)
  {
    goto LABEL_2;
  }

  while (1)
  {
    swift_once();
LABEL_2:
    v2 = sub_1DAECEDEC();
    __swift_project_value_buffer(v2, qword_1EE011790);

    v3 = sub_1DAECEDCC();
    v4 = sub_1DAED203C();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v32[0] = v6;
      *v5 = 136446210;
      v7 = *(v1 + OBJC_IVAR____TtC14WidgetRenderer31_DefaultActivityRendererSession_logIdentifier);
      v8 = *(v1 + OBJC_IVAR____TtC14WidgetRenderer31_DefaultActivityRendererSession_logIdentifier + 8);

      v9 = sub_1DAD6482C(v7, v8, v32);

      *(v5 + 4) = v9;
      _os_log_impl(&dword_1DAD61000, v3, v4, "[%{public}s] Invalidated", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v6);
      MEMORY[0x1E127F100](v6, -1, -1);
      MEMORY[0x1E127F100](v5, -1, -1);
    }

    BSDispatchQueueAssertMain();
    v11 = OBJC_IVAR____TtC14WidgetRenderer31_DefaultActivityRendererSession__invalidated;
    if (*(v1 + OBJC_IVAR____TtC14WidgetRenderer31_DefaultActivityRendererSession__invalidated))
    {
      return result;
    }

    v12 = OBJC_IVAR____TtC14WidgetRenderer31_DefaultActivityRendererSession__activityEntryAssertion;
    swift_beginAccess();
    sub_1DAE3FECC(v1 + v12, v32);
    if (v33)
    {
      sub_1DAD648F8(v32, v31);
      sub_1DAD64398(v32, &qword_1ECC099C0, &qword_1DAEDCB90);
      __swift_project_boxed_opaque_existential_1(v31, v31[3]);
      sub_1DAED144C();
      __swift_destroy_boxed_opaque_existential_1Tm(v31);
    }

    else
    {
      sub_1DAD64398(v32, &qword_1ECC099C0, &qword_1DAEDCB90);
    }

    *(v1 + OBJC_IVAR____TtC14WidgetRenderer31_DefaultActivityRendererSession__started) = 0;
    *(v1 + v11) = 1;
    v13 = OBJC_IVAR____TtC14WidgetRenderer31_DefaultActivityRendererSession__cancellables;
    swift_beginAccess();
    v30 = v13;
    v14 = *(v1 + v13);
    if ((v14 & 0xC000000000000001) != 0)
    {

      swift_unknownObjectRetain();
      sub_1DAED242C();
      sub_1DAECEE3C();
      sub_1DAE40000(&qword_1EE005C50, MEMORY[0x1E695BF10], MEMORY[0x1E695BF18]);
      sub_1DAED1F9C();
      v16 = v32[0];
      v15 = v32[1];
      v17 = v32[2];
      v18 = v33;
      v19 = v34;
    }

    else
    {
      v20 = -1 << *(v14 + 32);
      v15 = v14 + 56;
      v17 = ~v20;
      v21 = -v20;
      if (v21 < 64)
      {
        v22 = ~(-1 << v21);
      }

      else
      {
        v22 = -1;
      }

      v19 = v22 & *(v14 + 56);
      swift_bridgeObjectRetain_n();
      v18 = 0;
      v16 = v14;
    }

    for (i = (v17 + 64) >> 6; v16 < 0; v19 = v27)
    {
      v29 = sub_1DAED24BC();
      if (!v29)
      {
        goto LABEL_25;
      }

      v31[5] = v29;
      sub_1DAECEE3C();
      swift_dynamicCast();
      v26 = v18;
      v27 = v19;
      if (!v31[6])
      {
        goto LABEL_25;
      }

LABEL_23:
      sub_1DAECEE2C();

      v18 = v26;
    }

    v24 = v18;
    v25 = v19;
    v26 = v18;
    if (v19)
    {
LABEL_19:
      v27 = (v25 - 1) & v25;
      v28 = *(*(v16 + 48) + ((v26 << 9) | (8 * __clz(__rbit64(v25)))));

      if (v28)
      {
        goto LABEL_23;
      }

LABEL_25:
      sub_1DAD70B20(v16);

      *(v1 + v30) = MEMORY[0x1E69E7CD0];

      __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC14WidgetRenderer31_DefaultActivityRendererSession__client), *(v1 + OBJC_IVAR____TtC14WidgetRenderer31_DefaultActivityRendererSession__client + 24));
      return sub_1DAE7FBA4(*(v1 + 16));
    }

    while (1)
    {
      v26 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v26 >= i)
      {
        goto LABEL_25;
      }

      v25 = *(v15 + 8 * v26);
      ++v24;
      if (v25)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
  }
}

void sub_1DAE3FE88()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = *(v1 + 24);
  *(v1 + 24) = v2;
  v3 = v2;
}

uint64_t sub_1DAE3FECC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC099C0, &qword_1DAEDCB90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DAE3FF3C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1DAE03864;

  return sub_1DAE3E99C(a1, v4, v5, v6, v7, (v1 + 6));
}

uint64_t sub_1DAE40000(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1DAE4005C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v89 = a2;
  v4 = sub_1DAED0B1C();
  v81 = *(v4 - 8);
  v82 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v80 = &v80 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1DAECDD3C();
  v85 = *(v6 - 8);
  v86 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v80 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A9C0, &unk_1DAED8030);
  v91 = *(v9 - 8);
  v10 = v91;
  MEMORY[0x1EEE9AC00](v9);
  v84 = &v80 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v80 - v14;
  v83 = *(v10 + 16);
  v83(&v80 - v14, a1, v9, v13);
  sub_1DAD648F8(v2 + 16, v98);
  v90 = *(v2 + 56);
  sub_1DAD648F8(v2 + 64, v97);
  sub_1DAD648F8(v2 + 104, v96);
  sub_1DAD648F8(v2 + 144, v95);
  v16 = __swift_mutable_project_boxed_opaque_existential_1(v98, v98[3]);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = (&v80 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v20 + 16))(v19, v17);
  v21 = *v19;
  v22 = type metadata accessor for ActivityRendererClient(0);
  v94[3] = v22;
  v23 = sub_1DAE40B24();
  v94[4] = v23;
  v94[0] = v21;
  v87 = type metadata accessor for _DefaultActivityRendererSession(0);
  v24 = swift_allocObject();
  v25 = __swift_mutable_project_boxed_opaque_existential_1(v94, v22);
  v26 = MEMORY[0x1EEE9AC00](v25);
  v28 = (&v80 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v29 + 16))(v28, v26);
  v30 = *v28;
  v93[3] = v22;
  v93[4] = v23;
  v93[0] = v30;
  *(v24 + 24) = 0;
  v31 = OBJC_IVAR____TtC14WidgetRenderer31_DefaultActivityRendererSession_taskPriority;
  v32 = *MEMORY[0x1E6993F90];
  v33 = sub_1DAECE20C();
  (*(*(v33 - 8) + 104))(v24 + v31, v32, v33);
  v34 = v24 + OBJC_IVAR____TtC14WidgetRenderer31_DefaultActivityRendererSession_environmentProvider;
  *v34 = 0u;
  *(v34 + 16) = 0u;
  *(v34 + 32) = 0;
  v35 = v24 + OBJC_IVAR____TtC14WidgetRenderer31_DefaultActivityRendererSession__activityEntryAssertion;
  *(v35 + 32) = 0;
  *v35 = 0u;
  *(v35 + 16) = 0u;
  *(v24 + OBJC_IVAR____TtC14WidgetRenderer31_DefaultActivityRendererSession__invalidated) = 0;
  *(v24 + OBJC_IVAR____TtC14WidgetRenderer31_DefaultActivityRendererSession__cancellables) = MEMORY[0x1E69E7CD0];
  *(v24 + OBJC_IVAR____TtC14WidgetRenderer31_DefaultActivityRendererSession__started) = 0;
  v36 = v84;
  v88 = v15;
  (v83)(v84, v15, v9);
  type metadata accessor for ActivityRendererSessionKey(0);
  v37 = swift_allocObject();
  v38 = v90;

  sub_1DAECDD2C();
  v39 = sub_1DAECDCFC();
  v41 = v40;
  (*(v85 + 8))(v8, v86);
  *(v37 + 16) = v39;
  *(v37 + 24) = v41;
  (*(v91 + 32))(v37 + OBJC_IVAR____TtC14WidgetRenderer26ActivityRendererSessionKey_contentKey, v36, v9);
  v42 = sub_1DAE93AA4();
  v43 = (v24 + OBJC_IVAR____TtC14WidgetRenderer31_DefaultActivityRendererSession_logIdentifier);
  *v43 = v42;
  v43[1] = v44;
  *(v24 + 16) = v37;
  sub_1DAD648F8(v93, v24 + OBJC_IVAR____TtC14WidgetRenderer31_DefaultActivityRendererSession__client);
  *(v24 + OBJC_IVAR____TtC14WidgetRenderer31_DefaultActivityRendererSession__archiveService) = v38;
  sub_1DAD648F8(v97, v24 + OBJC_IVAR____TtC14WidgetRenderer31_DefaultActivityRendererSession__keybagStateProvider);
  sub_1DAD648F8(v96, v24 + OBJC_IVAR____TtC14WidgetRenderer31_DefaultActivityRendererSession__dataProtectionMonitor);
  sub_1DAD648F8(v95, v24 + OBJC_IVAR____TtC14WidgetRenderer31_DefaultActivityRendererSession__baseEnvironmentProvider);
  v45 = *(v24 + 24);
  *(v24 + 24) = 0;

  v46 = sub_1DAE93AA4();
  v47 = (v24 + OBJC_IVAR____TtC14WidgetRenderer31_DefaultActivityRendererSession_logIdentifier);
  *v47 = v46;
  v47[1] = v48;

  if (qword_1EE005E70 != -1)
  {
    swift_once();
  }

  v49 = sub_1DAECEDEC();
  __swift_project_value_buffer(v49, qword_1EE011790);

  v50 = sub_1DAECEDCC();
  v51 = sub_1DAED203C();

  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v92[0] = v53;
    *v52 = 136446210;
    v54 = v9;
    v56 = *v47;
    v55 = v47[1];

    v57 = sub_1DAD6482C(v56, v55, v92);

    *(v52 + 4) = v57;
    v9 = v54;
    _os_log_impl(&dword_1DAD61000, v50, v51, "[%{public}s] Created", v52, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v53);
    MEMORY[0x1E127F100](v53, -1, -1);
    MEMORY[0x1E127F100](v52, -1, -1);
  }

  v58 = (v24 + OBJC_IVAR____TtC14WidgetRenderer31_DefaultActivityRendererSession__client);
  v59 = *(v24 + OBJC_IVAR____TtC14WidgetRenderer31_DefaultActivityRendererSession__client + 24);
  v60 = __swift_project_boxed_opaque_existential_1((v24 + OBJC_IVAR____TtC14WidgetRenderer31_DefaultActivityRendererSession__client), v59);
  v61 = *(v59 - 8);
  v62 = MEMORY[0x1EEE9AC00](v60);
  v64 = &v80 - v63;
  (*(v61 + 16))(&v80 - v63, v62);
  v65 = sub_1DAED12EC();
  (*(v61 + 8))(v64, v59);
  if (v65)
  {
    v66 = v80;
    MEMORY[0x1E127CAC0](v9);
    v67 = sub_1DAED103C();

    (*(v81 + 8))(v66, v82);
  }

  else
  {
    v67 = 0;
  }

  v68 = *(v24 + 24);
  *(v24 + 24) = v67;

  v69 = v58[3];
  v70 = __swift_project_boxed_opaque_existential_1(v58, v69);
  v71 = *(v69 - 8);
  v72 = MEMORY[0x1EEE9AC00](v70);
  v74 = &v80 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v71 + 16))(v74, v72);
  v75 = sub_1DAED0F8C();
  (*(v71 + 8))(v74, v69);
  v92[0] = v75;
  v76 = swift_allocObject();
  swift_weakInit();
  v77 = swift_allocObject();
  *(v77 + 16) = v76;
  *(v77 + 24) = v37;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08178, &qword_1DAED6490);
  sub_1DAE40B84();
  sub_1DAECF00C();

  swift_beginAccess();
  sub_1DAECEE0C();
  swift_endAccess();

  __swift_destroy_boxed_opaque_existential_1Tm(v95);
  __swift_destroy_boxed_opaque_existential_1Tm(v96);
  __swift_destroy_boxed_opaque_existential_1Tm(v97);
  (*(v91 + 8))(v88, v9);
  __swift_destroy_boxed_opaque_existential_1Tm(v93);
  __swift_destroy_boxed_opaque_existential_1Tm(v94);
  result = __swift_destroy_boxed_opaque_existential_1Tm(v98);
  v79 = v89;
  v89[3] = v87;
  v79[4] = &off_1F56B3600;
  *v79 = v24;
  return result;
}

uint64_t sub_1DAE40AA8()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 8);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 13);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 18);

  return swift_deallocClassInstance();
}

unint64_t sub_1DAE40B24()
{
  result = qword_1EE008C60;
  if (!qword_1EE008C60)
  {
    type metadata accessor for ActivityRendererClient(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE008C60);
  }

  return result;
}

unint64_t sub_1DAE40B84()
{
  result = qword_1EE005C68;
  if (!qword_1EE005C68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC08178, &qword_1DAED6490);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE005C68);
  }

  return result;
}

uint64_t TintedWidgetViewModel.__allocating_init(tintParameters:)(uint64_t a1)
{
  v1 = swift_allocObject();
  swift_beginAccess();
  sub_1DADA657C();
  sub_1DAECEEFC();
  swift_endAccess();
  return v1;
}

uint64_t TintedWidgetView.init(fullColorView:tintedView:tintedWidgetViewModel:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X8>)
{
  v22[0] = a4;
  v22[1] = a5;
  v22[2] = a6;
  v22[3] = a7;
  v11 = type metadata accessor for TintedWidgetView(0, v22);
  v12 = *(v11 + 52);
  v13 = sub_1DAED233C();
  v14 = *(v13 - 8);
  (*(v14 + 16))(a8 + v12, a1, v13);
  v15 = *(v11 + 56);
  v16 = sub_1DAED233C();
  v17 = *(v16 - 8);
  (*(v17 + 16))(a8 + v15, a2, v16);
  type metadata accessor for TintedWidgetViewModel(0);
  sub_1DADABB28();
  v18 = sub_1DAECF21C();
  v20 = v19;
  (*(v17 + 8))(a2, v16);
  result = (*(v14 + 8))(a1, v13);
  *a8 = v18;
  a8[1] = v20;
  return result;
}

uint64_t sub_1DAE40E2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v32 = a4;
  v28 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v27 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v27 - v9;
  v11 = sub_1DAECF2AC();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v27 - v16;
  v18 = sub_1DAECFB2C();
  v19 = *(v18 - 8);
  v30 = v18;
  v31 = v19;
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v27 - v20;
  if (a1)
  {

    sub_1DAED046C();
    v33 = a3;
    v34 = MEMORY[0x1E697FAF8];
    swift_getWitnessTable();
    sub_1DADB6258(v14, v11, v17);
    v22 = *(v12 + 8);
    v22(v14, v11);
    sub_1DADB6258(v17, v11, v14);
    sub_1DAE26A88(v14, v11);

    v22(v14, v11);
    v22(v17, v11);
  }

  else
  {
    sub_1DADB6258(v29, a2, v10);
    v23 = v27;
    sub_1DADB6258(v10, a2, v27);
    v39 = a3;
    v40 = MEMORY[0x1E697FAF8];
    swift_getWitnessTable();
    sub_1DAE26B80(v23, v11, a2);
    v24 = *(v28 + 8);
    v24(v23, a2);
    v24(v10, a2);
  }

  v37 = a3;
  v38 = MEMORY[0x1E697FAF8];
  WitnessTable = swift_getWitnessTable();
  v36 = a3;
  v25 = v30;
  swift_getWitnessTable();
  sub_1DADB6258(v21, v25, v32);
  return (*(v31 + 8))(v21, v25);
}

uint64_t sub_1DAE41244()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09A68, &qword_1DAEDB600);
  sub_1DAED077C();
  return v1;
}

uint64_t sub_1DAE412E8(uint64_t a1, unint64_t a2)
{
  v17[1] = *MEMORY[0x1E69E9840];
  v4 = sub_1DAED05EC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v9 = v6;
    if (sub_1DAED1DFC())
    {
      v10 = sub_1DAED1DCC();
      v11 = sub_1DAD8D2CC(v10, a1, a2);
      MEMORY[0x1E127DA00](v11);

      if (sub_1DAED1DAC() == 8)
      {
        v12 = objc_allocWithZone(MEMORY[0x1E696AE88]);
        v13 = sub_1DAED1CBC();

        v14 = [v12 initWithString_];

        v17[0] = 0;
        if ([v14 scanHexLongLong_])
        {
          (*(v5 + 104))(v8, *MEMORY[0x1E69814D8], v9);
          v15 = sub_1DAED06EC();

          return v15;
        }
      }

      else
      {
      }
    }
  }

  return 0;
}

uint64_t sub_1DAE41540()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09A68, &qword_1DAEDB600);
  sub_1DAED077C();
  return v1;
}

float sub_1DAE415E4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09A60, &unk_1DAEDB5F0);
  sub_1DAED077C();
  return v1;
}

double sub_1DAE41694()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09A58, &qword_1DAEDB5E8);
  sub_1DAED077C();
  return v1;
}

uint64_t sub_1DAE41744()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08BB8, &unk_1DAED7960);
  sub_1DAED077C();
  return v1;
}

uint64_t sub_1DAE417F8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08BB8, &unk_1DAED7960);
  sub_1DAED077C();
  return v1;
}

void *sub_1DAE41850()
{
  v1 = sub_1DAECF8EC();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 176);
  if (*(v0 + 184) == 1)
  {
    v6 = v5;
  }

  else
  {

    sub_1DAED202C();
    v7 = sub_1DAED001C();
    sub_1DAECECEC();

    sub_1DAECF8DC();
    swift_getAtKeyPath();
    v8 = sub_1DAE48184(v5, 0);
    (*(v2 + 8))(v4, v1, v8);
    return v10[1];
  }

  return v5;
}

uint64_t sub_1DAE419A0()
{
  v1 = sub_1DAECF8EC();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *(v0 + 192);
  if (*(v0 + 200) != 1)
  {

    sub_1DAED202C();
    v6 = sub_1DAED001C();
    sub_1DAECECEC();

    sub_1DAECF8DC();
    swift_getAtKeyPath();
    v7 = sub_1DAE48190(v5, 0);
    (*(v2 + 8))(v4, v1, v7);
    LOBYTE(v5) = v9[15];
  }

  return v5 & 1;
}

uint64_t sub_1DAE41AE8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = sub_1DAECF8EC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09A10, &qword_1DAEDB488);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v14 - v10;
  sub_1DAD6495C(v2 + *(a1 + 84), &v14 - v10, &qword_1ECC09A10, &qword_1DAEDB488);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return (*(v6 + 32))(a2, v11, v5);
  }

  sub_1DAED202C();
  v13 = sub_1DAED001C();
  sub_1DAECECEC();

  sub_1DAECF8DC();
  swift_getAtKeyPath();

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1DAE41CCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v125 = a1;
  v118 = a2;
  v134 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v133 = v3;
  v131 = v95 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = *(v4 + 16);
  sub_1DAECF2AC();
  sub_1DAECF2AC();
  sub_1DAECF2AC();
  v113 = sub_1DAECFB2C();
  v117 = sub_1DAECF2AC();
  v114 = sub_1DAECF2AC();
  v120 = sub_1DAECF2AC();
  v122 = sub_1DAECFB2C();
  v119 = sub_1DAECFB2C();
  sub_1DAECFFFC();
  v128 = sub_1DAECF2AC();
  v95[0] = sub_1DAECFB2C();
  v5 = sub_1DAED072C();
  v124 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v123 = v95 - v6;
  v7 = sub_1DAECF2AC();
  v116 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v115 = v95 - v8;
  v127 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC09A40, &unk_1DAEDB5C8);
  v121 = MEMORY[0x1E695BED8];
  v126 = sub_1DAD64B94(&unk_1EE005C90, &qword_1ECC09A40, &unk_1DAEDB5C8, MEMORY[0x1E695BED8]);
  v9 = *(a1 + 24);
  v165 = v9;
  v166 = MEMORY[0x1E69802C0];
  v130 = v9;
  WitnessTable = swift_getWitnessTable();
  v11 = MEMORY[0x1E6980AC8];
  v163 = WitnessTable;
  v164 = MEMORY[0x1E6980AC8];
  v12 = swift_getWitnessTable();
  v13 = MEMORY[0x1E697FAF8];
  v161 = v12;
  v162 = MEMORY[0x1E697FAF8];
  v159 = swift_getWitnessTable();
  v160 = v12;
  v14 = swift_getWitnessTable();
  v157 = WitnessTable;
  v158 = MEMORY[0x1E6980308];
  v155 = swift_getWitnessTable();
  v156 = v11;
  v15 = swift_getWitnessTable();
  v153 = v15;
  v154 = v13;
  v16 = v129;
  v151 = swift_getWitnessTable();
  v152 = v15;
  v17 = swift_getWitnessTable();
  v149 = v14;
  v150 = v17;
  v18 = swift_getWitnessTable();
  v147 = v9;
  v148 = MEMORY[0x1E6980C38];
  v19 = swift_getWitnessTable();
  v145 = v18;
  v146 = v19;
  v144 = swift_getWitnessTable();
  v128 = v5;
  v122 = swift_getWitnessTable();
  v142 = v122;
  v143 = MEMORY[0x1E697E5C0];
  v20 = swift_getWitnessTable();
  v21 = v127;
  v138 = v127;
  v139 = v7;
  v117 = v7;
  v22 = v126;
  v140 = v126;
  v141 = v20;
  v95[1] = v20;
  v23 = sub_1DAECF34C();
  v100 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v96 = v95 - v24;
  v25 = swift_getWitnessTable();
  v138 = v21;
  v139 = v23;
  v103 = v23;
  v140 = v22;
  v141 = v25;
  v95[2] = v25;
  v26 = sub_1DAECF34C();
  v107 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v119 = v95 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC08898, &qword_1DAED8240);
  v29 = v121;
  v30 = sub_1DAD64B94(&qword_1EE00AC00, &qword_1ECC08898, &qword_1DAED8240, v121);
  v31 = swift_getWitnessTable();
  v95[6] = v28;
  v138 = v28;
  v139 = v26;
  v109 = v26;
  v95[3] = v31;
  v95[4] = v30;
  v140 = v30;
  v141 = v31;
  v32 = sub_1DAECF34C();
  v111 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v120 = v95 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC09A48, &qword_1DAEDB5D8);
  v35 = sub_1DAD64B94(&qword_1EE005C70, &qword_1ECC09A48, &qword_1DAEDB5D8, v29);
  v36 = swift_getWitnessTable();
  v99 = v34;
  v138 = v34;
  v139 = v32;
  v112 = v32;
  v97 = v35;
  v140 = v35;
  v141 = v36;
  v95[5] = v36;
  v37 = sub_1DAECF34C();
  v113 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v110 = v95 - v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC09A50, &qword_1DAEDB5E0);
  v40 = v123;
  v41 = sub_1DAD64B94(&qword_1EE005C78, &qword_1ECC09A50, &qword_1DAEDB5E0, v29);
  v42 = swift_getWitnessTable();
  v105 = v39;
  v138 = v39;
  v139 = v37;
  v114 = v37;
  v102 = v41;
  v140 = v41;
  v141 = v42;
  v98 = v42;
  v108 = sub_1DAECF34C();
  v106 = *(v108 - 8);
  MEMORY[0x1EEE9AC00](v108);
  v101 = v95 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v44);
  v104 = v95 - v45;
  v46 = v130;
  v135 = v132;
  v136 = v130;
  v137 = v16;
  sub_1DAED071C();
  v47 = v125;
  if (sub_1DAE44A24())
  {
    sub_1DAE41694();
  }

  v48 = v115;
  v49 = v128;
  sub_1DAED056C();
  (*(v124 + 1))(v40, v49);
  v122 = sub_1DAECE1DC();
  sub_1DAECE1AC();
  v50 = sub_1DAECE13C();

  v138 = v50;
  v51 = v134;
  v52 = *(v134 + 16);
  v128 = v134 + 16;
  v124 = v52;
  v53 = v131;
  v54 = v47;
  v52(v131, v16, v47);
  v123 = *(v51 + 80);
  v55 = (v123 + 32) & ~v123;
  v56 = swift_allocObject();
  *(v56 + 16) = v132;
  *(v56 + 24) = v46;
  v57 = *(v51 + 32);
  v134 = v51 + 32;
  v121 = v57;
  v57(v56 + v55, v53, v47);
  v58 = v96;
  v59 = v117;
  sub_1DAED05CC();

  (*(v116 + 8))(v48, v59);
  sub_1DAECE1AC();
  v60 = sub_1DAECE15C();

  v138 = v60;
  v61 = v131;
  v62 = v129;
  v63 = v54;
  v124(v131, v129, v54);
  v64 = swift_allocObject();
  v65 = v132;
  v66 = v130;
  *(v64 + 16) = v132;
  *(v64 + 24) = v66;
  v121(v64 + v55, v61, v63);
  v67 = v103;
  sub_1DAED05CC();

  (*(v100 + 8))(v58, v67);
  sub_1DAECE1AC();
  v68 = sub_1DAECE18C();

  v138 = v68;
  v69 = v131;
  v71 = v124;
  v70 = v125;
  v124(v131, v62, v125);
  v95[0] = v55;
  v72 = swift_allocObject();
  v73 = v130;
  *(v72 + 16) = v65;
  *(v72 + 24) = v73;
  v74 = v121;
  v121(v72 + v55, v69, v70);
  v75 = v119;
  v76 = v109;
  sub_1DAED05CC();

  (*(v107 + 8))(v75, v76);
  sub_1DAECE1AC();
  v77 = sub_1DAECE1CC();

  v138 = v77;
  v78 = v131;
  v79 = v125;
  v71(v131, v129, v125);
  v80 = v95[0];
  v81 = swift_allocObject();
  *(v81 + 16) = v132;
  *(v81 + 24) = v73;
  v82 = v79;
  v74(v81 + v80, v78, v79);
  v83 = v110;
  v84 = v112;
  v85 = v120;
  sub_1DAED05CC();

  (*(v111 + 8))(v85, v84);
  sub_1DAECE1AC();
  v86 = sub_1DAECE04C();

  v138 = v86;
  v124(v78, v129, v82);
  v87 = swift_allocObject();
  v88 = v130;
  *(v87 + 16) = v132;
  *(v87 + 24) = v88;
  v121(v87 + v80, v78, v82);
  v89 = v101;
  v90 = v114;
  sub_1DAED05CC();

  (*(v113 + 8))(v83, v90);
  v91 = v108;
  swift_getWitnessTable();
  v92 = v104;
  sub_1DADB6258(v89, v91, v104);
  v93 = *(v106 + 8);
  v93(v89, v91);
  sub_1DADB6258(v92, v91, v118);
  return (v93)(v92, v91);
}

uint64_t sub_1DAE42BA4@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v111 = a4;
  v7 = sub_1DAECFFFC();
  v101 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v99 = &v96 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = v9;
  v10 = sub_1DAECF2AC();
  v103 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v107 = &v96 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v100 = &v96 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v106 = &v96 - v15;
  v105 = *(a2 - 1);
  MEMORY[0x1EEE9AC00](v16);
  v104 = &v96 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v96 = &v96 - v19;
  v20 = sub_1DAECF2AC();
  v21 = sub_1DAECF2AC();
  v22 = sub_1DAECF2AC();
  v113 = v21;
  v114 = v22;
  v23 = sub_1DAECFB2C();
  v116 = sub_1DAECF2AC();
  v24 = sub_1DAECF2AC();
  v25 = sub_1DAECF2AC();
  v118 = v24;
  v119 = v25;
  v26 = sub_1DAECFB2C();
  v115 = v23;
  v120 = v26;
  v27 = sub_1DAECFB2C();
  v98 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v96 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v97 = &v96 - v31;
  v110 = v10;
  v32 = sub_1DAECFB2C();
  v108 = *(v32 - 8);
  v109 = v32;
  MEMORY[0x1EEE9AC00](v32);
  v117 = &v96 - v33;
  v34 = a3;
  v36 = type metadata accessor for TintedWidgetAccentedView(0, a2, a3, v35);
  v37 = sub_1DAE437E4();
  v38 = *(a1 + 8);
  v112 = v20;
  if (v37)
  {
    v39 = v96;
    v38();
    v40 = v36;
    v41 = v34;
    sub_1DAE439D4(v39, v40, a2, v34, v29);
    (*(v105 + 8))(v39, a2);
    v139 = v34;
    v140 = MEMORY[0x1E69802C0];
    WitnessTable = swift_getWitnessTable();
    v137 = WitnessTable;
    v43 = MEMORY[0x1E6980AC8];
    v138 = MEMORY[0x1E6980AC8];
    v44 = swift_getWitnessTable();
    v135 = v44;
    v45 = MEMORY[0x1E697FAF8];
    v136 = MEMORY[0x1E697FAF8];
    v133 = swift_getWitnessTable();
    v134 = v44;
    v46 = swift_getWitnessTable();
    v131 = WitnessTable;
    v132 = MEMORY[0x1E6980308];
    v129 = swift_getWitnessTable();
    v130 = v43;
    v47 = swift_getWitnessTable();
    v127 = v47;
    v128 = v45;
    v125 = swift_getWitnessTable();
    v126 = v47;
    v48 = swift_getWitnessTable();
    v123 = v46;
    v124 = v48;
    swift_getWitnessTable();
    v49 = v97;
    sub_1DADB6258(v29, v27, v97);
    v50 = *(v98 + 8);
    v50(v29, v27);
    sub_1DADB6258(v49, v27, v29);
    v121 = v41;
    v122 = MEMORY[0x1E6980C38];
    swift_getWitnessTable();
    sub_1DAE26A88(v29, v27);
    v50(v29, v27);
    v50(v49, v27);
  }

  else
  {
    v96 = a2;
    v97 = v27;
    v98 = v34;
    v38();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC09A70, &qword_1DAEDB608);
    v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08118, qword_1DAEDB610);
    v52 = *(*(v51 - 8) + 72);
    v53 = (*(*(v51 - 8) + 80) + 32) & ~*(*(v51 - 8) + 80);
    v54 = 2 * v52;
    v55 = swift_allocObject();
    *(v55 + 16) = xmmword_1DAED8CA0;
    v56 = v55 + v53;
    v57 = (v56 + *(v51 + 48));
    sub_1DAECFB5C();
    sub_1DAE445AC(v36, v183);
    v58 = v183[3];
    v57[2] = v183[2];
    v57[3] = v58;
    v57[4] = v183[4];
    v59 = v183[1];
    *v57 = v183[0];
    v57[1] = v59;
    v60 = (v56 + v52 + *(v51 + 48));
    sub_1DAECFB6C();
    sub_1DAE44778(v36, v184);
    v61 = v184[3];
    v60[2] = v184[2];
    v60[3] = v61;
    v60[4] = v184[4];
    v62 = v184[1];
    *v60 = v184[0];
    v60[1] = v62;
    v63 = v56 + v54 + *(v51 + 48);
    sub_1DAECFB7C();
    *v63 = 1065353216;
    *(v63 + 12) = 0;
    *(v63 + 4) = 0;
    *(v63 + 20) = 0x3F80000000000000;
    *(v63 + 36) = 0;
    *(v63 + 28) = 0;
    *(v63 + 44) = 0x3F80000000000000;
    *(v63 + 60) = 0;
    *(v63 + 52) = 0;
    *(v63 + 68) = 0;
    *(v63 + 72) = 1065353216;
    sub_1DADDCAA0(v55);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    if (sub_1DAE41744())
    {
      sub_1DAECFFEC();
    }

    else
    {
      sub_1DAECFFDC();
    }

    v41 = v98;
    v64 = v99;
    v65 = v110;
    v66 = MEMORY[0x1E6980C38];
    v67 = v96;
    sub_1DAED000C();
    v68 = v100;
    v69 = v102;
    v70 = v104;
    MEMORY[0x1E127C210](v64, v67, v102, v41);
    (*(v101 + 8))(v64, v69);
    (*(v105 + 8))(v70, v67);
    v181 = v41;
    v182 = v66;
    v71 = swift_getWitnessTable();
    v72 = v106;
    v105 = v71;
    sub_1DADB6258(v68, v65, v106);
    v110 = *(v103 + 8);
    v110(v68, v65);
    sub_1DADB6258(v72, v65, v107);
    v179 = v41;
    v180 = MEMORY[0x1E69802C0];
    v73 = swift_getWitnessTable();
    v177 = v73;
    v74 = MEMORY[0x1E6980AC8];
    v178 = MEMORY[0x1E6980AC8];
    v75 = swift_getWitnessTable();
    v175 = v75;
    v76 = MEMORY[0x1E697FAF8];
    v176 = MEMORY[0x1E697FAF8];
    v173 = swift_getWitnessTable();
    v174 = v75;
    v77 = swift_getWitnessTable();
    v171 = v73;
    v172 = MEMORY[0x1E6980308];
    v169 = swift_getWitnessTable();
    v170 = v74;
    v78 = swift_getWitnessTable();
    v167 = v78;
    v168 = v76;
    v165 = swift_getWitnessTable();
    v166 = v78;
    v79 = swift_getWitnessTable();
    v163 = v77;
    v164 = v79;
    v80 = v97;
    swift_getWitnessTable();
    v81 = v107;
    sub_1DAE26B80(v107, v80, v65);
    v82 = v81;
    v83 = v110;
    v110(v82, v65);
    v83(v106, v65);
  }

  v161 = v41;
  v162 = MEMORY[0x1E69802C0];
  v84 = swift_getWitnessTable();
  v159 = v84;
  v85 = MEMORY[0x1E6980AC8];
  v160 = MEMORY[0x1E6980AC8];
  v86 = swift_getWitnessTable();
  v157 = v86;
  v87 = MEMORY[0x1E697FAF8];
  v158 = MEMORY[0x1E697FAF8];
  v155 = swift_getWitnessTable();
  v156 = v86;
  v88 = swift_getWitnessTable();
  v153 = v84;
  v154 = MEMORY[0x1E6980308];
  v151 = swift_getWitnessTable();
  v152 = v85;
  v89 = swift_getWitnessTable();
  v149 = v89;
  v150 = v87;
  v147 = swift_getWitnessTable();
  v148 = v89;
  v90 = swift_getWitnessTable();
  v145 = v88;
  v146 = v90;
  v91 = swift_getWitnessTable();
  v143 = v41;
  v144 = MEMORY[0x1E6980C38];
  v92 = swift_getWitnessTable();
  v141 = v91;
  v142 = v92;
  v93 = v109;
  swift_getWitnessTable();
  v94 = v117;
  sub_1DADB6258(v117, v93, v111);
  return (*(v108 + 8))(v94, v93);
}

uint64_t sub_1DAE437E4()
{
  v1 = v0;
  v2 = sub_1DAE41850();
  if (v2)
  {
    v3 = v2;
    v4 = [v2 extensionIdentity];

    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC08390, &unk_1DAED7DA0);
    sub_1DAECE26C();
    v6 = v5;
    swift_endAccess();
  }

  else
  {
    v6 = 0;
  }

  v7 = sub_1DAE41850();
  if (!v7 || (v8 = v7, v9 = [v7 supportsAccentedContent], v8, (v9 & 1) != 0) || !objc_msgSend(*v1, sel_wantsGlassMaterial))
  {
    if (sub_1DAE417F8())
    {
      if (v6)
      {

        v10 = sub_1DAED1DFC();

        if ((v10 & 1) == 0)
        {

          v11 = sub_1DAED1DFC();

          if ((v11 & 1) == 0)
          {
            v12 = sub_1DAED1DFC();

            return v12 & 1;
          }
        }

        goto LABEL_11;
      }
    }

    else
    {
    }

    v12 = 0;
    return v12 & 1;
  }

LABEL_11:

  v12 = 1;
  return v12 & 1;
}

uint64_t sub_1DAE439D4@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t, uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v98 = a4;
  v83 = a3;
  v84 = a1;
  v92 = a5;
  v93 = a2;
  v5 = sub_1DAECF2AC();
  v6 = sub_1DAECF2AC();
  v77 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v75 = &v71 - v7;
  v8 = sub_1DAECF2AC();
  v79 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v73 = &v71 - v9;
  v99 = sub_1DAECF2AC();
  v100 = v8;
  v10 = sub_1DAECFB2C();
  v82 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v81 = &v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v78 = &v71 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v80 = &v71 - v15;
  v16 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v71 - v18;
  v20 = sub_1DAECF2AC();
  v72 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v71 - v21;
  v23 = sub_1DAECF2AC();
  v96 = v20;
  v24 = sub_1DAECFB2C();
  v76 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v74 = &v71 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v71 = &v71 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v85 = &v71 - v30;
  v86 = v29;
  v90 = v10;
  v31 = sub_1DAECFB2C();
  v87 = *(v31 - 8);
  v88 = v31;
  MEMORY[0x1EEE9AC00](v31);
  v97 = &v71 - v32;
  LOBYTE(v10) = sub_1DAE41744();
  v33 = v98;
  sub_1DAED04BC();
  v91 = v6;
  v89 = v5;
  v94 = v23;
  if (v10)
  {
    v115 = v33;
    v116 = MEMORY[0x1E69802C0];
    WitnessTable = swift_getWitnessTable();
    v151 = xmmword_1DAEDB130;
    v152 = xmmword_1DAEDB140;
    v153 = xmmword_1DAEDB150;
    v154 = xmmword_1DAEDB160;
    v155 = xmmword_1DAEDB170;
    MEMORY[0x1E127C210](&v151, v5, MEMORY[0x1E6980AD0], WitnessTable);
    (*(v16 + 8))(v19, v5);
    if ([*v95 filterStyle] == 6)
    {
      v35 = sub_1DAE44C8C(v93);
    }

    else
    {
      v35 = 0;
    }

    v42 = v96;
    v43 = MEMORY[0x1E697FAF8];
    v113 = WitnessTable;
    v114 = MEMORY[0x1E6980AC8];
    v44 = swift_getWitnessTable();
    v84 = WitnessTable;
    v45 = v71;
    sub_1DAE40E2C(v35, v42, v44, v71);

    (*(v72 + 8))(v22, v42);
    v111 = v44;
    v112 = v43;
    v109 = swift_getWitnessTable();
    v110 = v44;
    v95 = MEMORY[0x1E697F968];
    v46 = v86;
    swift_getWitnessTable();
    v47 = v85;
    sub_1DADB6258(v45, v46, v85);
    v93 = *(v76 + 8);
    v93(v45, v46);
    v48 = v74;
    sub_1DADB6258(v47, v46, v74);
    v107 = v84;
    v108 = MEMORY[0x1E6980308];
    v105 = swift_getWitnessTable();
    v106 = MEMORY[0x1E6980AC8];
    v49 = swift_getWitnessTable();
    v103 = v49;
    v104 = v43;
    v101 = swift_getWitnessTable();
    v102 = v49;
    swift_getWitnessTable();
    sub_1DAE26A88(v48, v46);
    v50 = v48;
    v51 = v93;
    v93(v50, v46);
    v51(v85, v46);
  }

  else
  {
    v149 = v33;
    v150 = MEMORY[0x1E69802C0];
    v36 = MEMORY[0x1E6980308];
    v37 = swift_getWitnessTable();
    v38 = v75;
    sub_1DAED04CC();
    (*(v16 + 8))(v19, v5);
    v85 = v37;
    v147 = v37;
    v148 = v36;
    v39 = swift_getWitnessTable();
    v151 = xmmword_1DAEDB0E0;
    v152 = xmmword_1DAEDB0F0;
    v153 = xmmword_1DAEDB100;
    v154 = xmmword_1DAEDB110;
    v155 = xmmword_1DAEDB120;
    v40 = v73;
    MEMORY[0x1E127C210](&v151, v6, MEMORY[0x1E6980AD0], v39);
    (*(v77 + 8))(v38, v6);
    if ([*v95 filterStyle] == 6)
    {
      v41 = sub_1DAE44C8C(v93);
    }

    else
    {
      v41 = 0;
    }

    v52 = v100;
    v53 = v90;
    v145 = v39;
    v146 = MEMORY[0x1E6980AC8];
    v54 = swift_getWitnessTable();
    v55 = v78;
    sub_1DAE40E2C(v41, v52, v54, v78);

    (*(v79 + 8))(v40, v52);
    v143 = v54;
    v144 = MEMORY[0x1E697FAF8];
    v141 = swift_getWitnessTable();
    v142 = v54;
    swift_getWitnessTable();
    v56 = v80;
    sub_1DADB6258(v55, v53, v80);
    v57 = *(v82 + 8);
    v57(v55, v53);
    v58 = v81;
    sub_1DADB6258(v56, v53, v81);
    v139 = v85;
    v140 = MEMORY[0x1E6980AC8];
    v59 = swift_getWitnessTable();
    v137 = v59;
    v138 = MEMORY[0x1E697FAF8];
    v135 = swift_getWitnessTable();
    v136 = v59;
    v60 = v86;
    swift_getWitnessTable();
    sub_1DAE26B80(v58, v60, v53);
    v57(v58, v53);
    v57(v56, v53);
  }

  v133 = v98;
  v134 = MEMORY[0x1E69802C0];
  v61 = swift_getWitnessTable();
  v131 = v61;
  v62 = MEMORY[0x1E6980AC8];
  v132 = MEMORY[0x1E6980AC8];
  v63 = swift_getWitnessTable();
  v129 = v63;
  v64 = MEMORY[0x1E697FAF8];
  v130 = MEMORY[0x1E697FAF8];
  v127 = swift_getWitnessTable();
  v128 = v63;
  v65 = swift_getWitnessTable();
  v125 = v61;
  v126 = MEMORY[0x1E6980308];
  v123 = swift_getWitnessTable();
  v124 = v62;
  v66 = swift_getWitnessTable();
  v121 = v66;
  v122 = v64;
  v119 = swift_getWitnessTable();
  v120 = v66;
  v67 = swift_getWitnessTable();
  v117 = v65;
  v118 = v67;
  v68 = v88;
  swift_getWitnessTable();
  v69 = v97;
  sub_1DADB6258(v97, v68, v92);
  return (*(v87 + 8))(v69, v68);
}

double sub_1DAE445AC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1DAECF8EC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v21 - v10);
  if (!sub_1DAE41540() && !sub_1DAE41244())
  {
    sub_1DAE452F0(a1);
  }

  [*v2 fraction];
  v13 = v12;
  sub_1DAE41AE8(a1, v11);
  (*(v6 + 16))(v8, v11, v5);
  sub_1DAECF14C();
  (*(v6 + 8))(v11, v5);
  v14 = v22;
  v15 = v23;
  v16 = v25;
  v17 = v21 * v13;
  v18 = v24 * v13;
  v19 = v28 * v13;
  *a2 = 0;
  *(a2 + 4) = v14;
  *(a2 + 12) = v17;
  *(a2 + 16) = v15;
  *(a2 + 24) = 0;
  *(a2 + 28) = v16;
  *(a2 + 32) = v18;
  *(a2 + 36) = v26;
  *(a2 + 44) = v27;
  *(a2 + 48) = 0;
  *(a2 + 52) = v19;
  *(a2 + 72) = v30;
  result = *&v29;
  *(a2 + 56) = v29;
  return result;
}

void sub_1DAE44778(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1DAECF8EC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v10 = MEMORY[0x1EEE9AC00](v9).n128_u64[0];
  v12 = (&v24 - v11);
  v13 = *v2;
  if (([*v2 isClearGlass] & 1) != 0 || objc_msgSend(v13, sel_isAccentedGlass))
  {
    sub_1DAE44C8C(a1);
    sub_1DAE41AE8(a1, v12);
    (*(v6 + 16))(v8, v12, v5);
    sub_1DAECF14C();
    (*(v6 + 8))(v12, v5);
    v14 = v31;
    v15 = v24;
    v16 = v25;
    v17 = v26;
    v19 = v27;
    v18 = v28;
    v36 = v29;
    v37 = v30;
    v35 = v32;
    v20 = v34;
    v21 = sub_1DAE415E4();
  }

  else
  {
    sub_1DAE44C8C(a1);
    [v13 fraction];
    v23 = v22;
    sub_1DAE41AE8(a1, v12);
    (*(v6 + 16))(v8, v12, v5);
    sub_1DAECF14C();
    (*(v6 + 8))(v12, v5);
    v16 = v25;
    v17 = v26;
    v18 = v28;
    v36 = v29;
    v37 = v30;
    v35 = v32;
    v15 = v24 * v23;
    v19 = v27 * v23;
    v14 = v31 * v23;
    v21 = v33;
    v20 = v34;
  }

  *a2 = 0;
  *(a2 + 4) = v16;
  *(a2 + 12) = v15;
  *(a2 + 16) = v17;
  *(a2 + 24) = 0;
  *(a2 + 28) = v18;
  *(a2 + 32) = v19;
  *(a2 + 36) = v36;
  *(a2 + 44) = v37;
  *(a2 + 52) = v14;
  *(a2 + 56) = v35;
  *(a2 + 72) = v21;
  *(a2 + 76) = v20;
}

id sub_1DAE44A24()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09A28, &qword_1DAEDB500);
  sub_1DAECF04C();
  if (v3 == 2 || (v3 & 1) == 0)
  {
    v1 = *v0;
    result = [*v0 wantsSubduedGlass];
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v1 = *v0;
  }

  return [v1 wantsGlassMaterial];
}

uint64_t sub_1DAE44AB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v8 = sub_1DAE412E8(*a1, *(a1 + 8));
  v10 = type metadata accessor for TintedWidgetAccentedView(0, a3, a4, v9);
  return a5(v8, v10);
}

uint64_t sub_1DAE44B20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1DAECE1DC();
  sub_1DAECE1AC();
  v6 = sub_1DAECE17C();

  type metadata accessor for TintedWidgetAccentedView(0, a3, a4, v7);
  return sub_1DAE4179C(v6 & 1);
}

uint64_t sub_1DAE44B9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1DAECE1DC();
  sub_1DAECE1AC();
  sub_1DAECE1BC();
  v7 = v6;

  type metadata accessor for TintedWidgetAccentedView(0, a3, a4, v8);
  return sub_1DAE4163C(v7);
}

uint64_t sub_1DAE44C14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1DAECE1DC();
  sub_1DAECE1AC();
  sub_1DAECE03C();
  v7 = v6;

  type metadata accessor for TintedWidgetAccentedView(0, a3, a4, v8);
  return sub_1DAE416EC(v7);
}

uint64_t sub_1DAE44C8C(uint64_t a1)
{
  v3 = sub_1DAECF8EC();
  v34 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = (&v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_1DAED05EC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1DAE419A0();
  v11 = *v1;
  if (v10)
  {
    if (![*v1 secondaryTintColor])
    {
      if ([v11 filterStyle] == 1)
      {
        (*(v7 + 104))(v9, *MEMORY[0x1E69814D8], v6);
        v12 = sub_1DAED06FC();
        goto LABEL_8;
      }

      goto LABEL_7;
    }

LABEL_6:
    v12 = sub_1DAED06DC();
    goto LABEL_8;
  }

  if ([*v1 primaryTintColor])
  {
    goto LABEL_6;
  }

LABEL_7:
  v12 = sub_1DAED066C();
LABEL_8:
  v35 = v12;
  v13 = [v11 filterStyle];
  if ((v13 - 3) >= 3)
  {
    if (v13 == 6)
    {
      v16 = [v11 primaryTintColor];
      v33 = v7;
      if (v16)
      {
        v17 = sub_1DAED06DC();
      }

      else
      {
        v17 = sub_1DAED066C();
      }

      v20 = v17;
      sub_1DAE41AE8(a1, v5);
      sub_1DAED068C();
      v31 = v3;
      v32 = v20;
      v21 = *(v34 + 8);
      v21(v5, v3);
      sub_1DAED06AC();
      sub_1DAED06CC();
      sub_1DAED06BC();
      LODWORD(v34) = *MEMORY[0x1E69814D8];
      v33 = *(v33 + 104);
      (v33)(v9);
      sub_1DAED06EC();
      sub_1DAE41AE8(a1, v5);
      sub_1DAED068C();
      v23 = v22;
      v24 = v31;
      v21(v5, v31);
      sub_1DAE41AE8(a1, v5);
      sub_1DAED068C();
      sub_1DAE47778(v23, v25, v26, v27, v28);
      sub_1DAED06AC();
      sub_1DAED06CC();
      sub_1DAED06BC();
      (v33)(v9, v34, v6);
      v29 = sub_1DAED06EC();

      v21(v5, v24);
      return v29;
    }

    else
    {
      v18 = sub_1DAE41244();
      if (v18)
      {
        v19 = v18;

        return v19;
      }

      else
      {
        return v35;
      }
    }
  }

  else
  {
    sub_1DAED066C();
    v14 = sub_1DAED067C();

    return v14;
  }
}

uint64_t CHSWidgetTintParameters.resolvedPrimaryTintColor.getter()
{
  if ([v0 primaryTintColor])
  {

    return sub_1DAED06DC();
  }

  else
  {

    return sub_1DAED066C();
  }
}

uint64_t CHSWidgetTintParameters.resolvedSecondaryTintColor.getter()
{
  v1 = v0;
  v2 = sub_1DAED05EC();
  v3 = *(v2 - 8);
  *&v4 = MEMORY[0x1EEE9AC00](v2).n128_u64[0];
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([v1 secondaryTintColor])
  {

    return sub_1DAED06DC();
  }

  else if ([v1 filterStyle] == 1)
  {
    (*(v3 + 104))(v6, *MEMORY[0x1E69814D8], v2);
    return sub_1DAED06FC();
  }

  else
  {

    return sub_1DAED066C();
  }
}

uint64_t sub_1DAE452F0(uint64_t a1)
{
  v3 = sub_1DAED05EC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1DAE419A0();
  v8 = *v1;
  if (v7)
  {
    if (![*v1 primaryTintColor])
    {
      goto LABEL_8;
    }

LABEL_5:
    v9 = sub_1DAED06DC();
    goto LABEL_9;
  }

  if ([*v1 secondaryTintColor])
  {
    goto LABEL_5;
  }

  if ([v8 filterStyle] == 1)
  {
    (*(v4 + 104))(v6, *MEMORY[0x1E69814D8], v3);
    v9 = sub_1DAED06FC();
    goto LABEL_9;
  }

LABEL_8:
  v9 = sub_1DAED066C();
LABEL_9:
  v10 = v9;
  v11 = [v8 filterStyle];
  if ((v11 - 3) < 3)
  {
    v12 = sub_1DAED066C();
LABEL_13:
    v13 = v12;

    return v13;
  }

  if (v11 == 6)
  {
    v12 = sub_1DAE44C8C(a1);
    goto LABEL_13;
  }

  return v10;
}

uint64_t sub_1DAE454A4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = sub_1DAECF8EC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09A10, &qword_1DAEDB488);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v14 - v10;
  sub_1DAD6495C(v2 + *(a1 + 52), &v14 - v10, &qword_1ECC09A10, &qword_1DAEDB488);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return (*(v6 + 32))(a2, v11, v5);
  }

  sub_1DAED202C();
  v13 = sub_1DAED001C();
  sub_1DAECECEC();

  sub_1DAECF8DC();
  swift_getAtKeyPath();

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1DAE45688@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v74 = a2;
  v3 = *(a1 + 16);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v58[0] = v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = v6;
  v7 = *(v6 + 24);
  *&v84 = v3;
  *(&v84 + 1) = v7;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v65 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v66 = v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v64 = v58 - v11;
  v63 = sub_1DAECF90C();
  v60 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v62 = v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = v3;
  *&v84 = v3;
  *(&v84 + 1) = v7;
  v69 = v7;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1DAECF36C();
  v13 = sub_1DAECF2AC();
  v61 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v58 - v14;
  WitnessTable = swift_getWitnessTable();
  v82 = MEMORY[0x1E6981580];
  v83 = WitnessTable;
  v17 = swift_getWitnessTable();
  *&v84 = v13;
  *(&v84 + 1) = v17;
  v18 = swift_getOpaqueTypeMetadata2();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v59 = v58 - v20;
  *&v84 = v13;
  *(&v84 + 1) = v17;
  v58[1] = v17;
  v21 = swift_getOpaqueTypeConformance2();
  v77 = v18;
  *&v84 = v18;
  *(&v84 + 1) = v21;
  v73 = v21;
  v22 = swift_getOpaqueTypeMetadata2();
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v25 = v58 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = v58 - v27;
  v68 = v29;
  v76 = OpaqueTypeMetadata2;
  v30 = sub_1DAECFB2C();
  v72 = *(v30 - 8);
  v31 = MEMORY[0x1EEE9AC00](v30);
  v70 = v58 - v32;
  if (*(v2 + 8) == 1)
  {
    v33 = sub_1DAED063C();
    v65 = v19;
    *&v84 = v33;
    MEMORY[0x1EEE9AC00](v33);
    v66 = v30;
    v34 = v69;
    v58[-4] = v71;
    v58[-3] = v34;
    v58[-2] = v2;
    sub_1DAED091C();
    v69 = v2;
    sub_1DAED057C();
    v71 = v28;
    v35 = v77;

    v36 = v60;
    v37 = v23;
    v38 = v62;
    v39 = v63;
    (*(v60 + 104))(v62, *MEMORY[0x1E697F3A0], v63);
    v40 = v59;
    sub_1DAED044C();
    (*(v36 + 8))(v38, v39);
    (*(v61 + 8))(v15, v13);
    sub_1DAE46344(v67, &v84);
    v41 = v73;
    sub_1DAED041C();
    v42 = v40;
    v43 = OpaqueTypeConformance2;
    (*(v65 + 8))(v42, v35);
    v80 = v35;
    v81 = v41;
    swift_getOpaqueTypeConformance2();
    v44 = v71;
    v45 = v68;
    sub_1DADB6258(v25, v68, v71);
    v46 = *(v37 + 8);
    v46(v25, v45);
    sub_1DADB6258(v44, v45, v25);
    v47 = v70;
    v30 = v66;
    sub_1DAE26A88(v25, v45);
    v46(v25, v45);
    v46(v44, v45);
  }

  else
  {
    v48 = v58[0];
    (*(v2 + 24))(v31);
    v49 = *(v2 + 16);
    v50 = *(v2 + 12);
    v51 = *(v2 + 20) - v49;
    *&v84 = (1.0 - v50) + (v50 * (v51 * 0.21265));
    *(&v84 + 4) = vmul_n_f32(vmul_n_f32(0x3D93E0013F371FFFLL, v51), v50);
    HIDWORD(v84) = 0;
    v85 = v49 * v50;
    v86 = v50 * (v51 * 0.21265);
    v88 = DWORD2(v84);
    v87 = (1.0 - v50) + *(&v84 + 1);
    v89 = 0;
    v90 = v49 * v50;
    v91 = v86;
    v92 = DWORD1(v84);
    v93 = (1.0 - v50) + *(&v84 + 2);
    v94 = 0;
    v95 = v49 * v50;
    v96 = xmmword_1DAEDB180;
    v97 = 0;
    v52 = v66;
    v53 = v71;
    sub_1DAED041C();
    (*(v4 + 8))(v48, v53);
    v54 = v64;
    v43 = OpaqueTypeConformance2;
    v55 = v76;
    sub_1DADB6258(v52, v76, v64);
    v56 = *(v65 + 8);
    v56(v52, v55);
    sub_1DADB6258(v54, v55, v52);
    v41 = v73;
    v80 = v77;
    v81 = v73;
    swift_getOpaqueTypeConformance2();
    v47 = v70;
    sub_1DAE26B80(v52, v68, v55);
    v56(v52, v55);
    v56(v54, v55);
  }

  v80 = v77;
  v81 = v41;
  v78 = swift_getOpaqueTypeConformance2();
  v79 = v43;
  swift_getWitnessTable();
  sub_1DADB6258(v47, v30, v74);
  return (*(v72 + 8))(v47, v30);
}

uint64_t sub_1DAE4608C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v26 = a4;
  v7 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v29 = v10;
  *(&v29 + 1) = v11;
  v25 = MEMORY[0x1E69811F8];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v13 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v25 - v18;
  (*(a1 + 24))(v17);
  v20 = *(a1 + 16);
  v21 = *(a1 + 12);
  v22 = *(a1 + 20) - v20;
  *&v29 = (1.0 - v21) + (v21 * (v22 * 0.21265));
  *(&v29 + 4) = vmul_n_f32(vmul_n_f32(0x3D93E0013F371FFFLL, v22), v21);
  HIDWORD(v29) = 0;
  v30 = v20 * v21;
  v31 = v21 * (v22 * 0.21265);
  v33 = DWORD2(v29);
  v32 = (1.0 - v21) + *(&v29 + 1);
  v34 = 0;
  v35 = v20 * v21;
  v36 = v31;
  v37 = DWORD1(v29);
  v38 = (1.0 - v21) + *(&v29 + 2);
  v39 = 0;
  v40 = v20 * v21;
  v41 = xmmword_1DAEDB180;
  v42 = 0;
  sub_1DAED041C();
  (*(v7 + 8))(v9, a2);
  v27 = a2;
  v28 = a3;
  swift_getOpaqueTypeConformance2();
  sub_1DADB6258(v15, OpaqueTypeMetadata2, v19);
  v23 = *(v13 + 8);
  v23(v15, OpaqueTypeMetadata2);
  sub_1DADB6258(v19, OpaqueTypeMetadata2, v26);
  return (v23)(v19, OpaqueTypeMetadata2);
}

double sub_1DAE46344@<D0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = sub_1DAECF8EC();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = (&v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));

  sub_1DAE454A4(a2, v7);
  sub_1DAECF14C();
  v8 = v18;
  v9 = v20;
  v10 = v19;
  v12 = v21;
  v11 = v22;
  v13 = v23;
  v14 = v24;
  v15 = v26;
  v16 = v25;
  *a3 = 0;
  *(a3 + 4) = v10;
  *(a3 + 12) = v9;
  *(a3 + 16) = v8;
  *(a3 + 20) = v12;
  *(a3 + 24) = 0;
  *(a3 + 28) = v13;
  *(a3 + 36) = v11;
  *(a3 + 40) = v14;
  *(a3 + 48) = 0;
  *(a3 + 52) = vrev64_s32(v16);
  result = 0.000352859321;
  *(a3 + 60) = xmmword_1DAEDB190;
  *(a3 + 76) = v15;
  return result;
}

uint64_t sub_1DAE46454@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v30 = a1;
  v5 = sub_1DAED05EC();
  v28 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09A08, &qword_1DAEDB400);
  v9 = *(v8 - 8);
  *&v10 = MEMORY[0x1EEE9AC00](v8).n128_u64[0];
  v12 = &v27 - v11;
  v13 = [a2 filterStyle];
  v14 = [a2 primaryTintColor];
  if (v13 == 2)
  {
    if (v14)
    {
      v16 = sub_1DAED06DC();
      v29 = 1;
    }

    else
    {
      v29 = 1;
      v16 = sub_1DAED066C();
    }
  }

  else
  {
    if (v14)
    {
      v15 = sub_1DAED06DC();
    }

    else
    {
      v15 = sub_1DAED066C();
    }

    v16 = v15;
    v29 = 0;
  }

  if ([a2 primaryTintColor])
  {
    sub_1DAED06DC();
  }

  else
  {
    sub_1DAED066C();
  }

  v17 = sub_1DAE46CE4();

  if ([a2 secondaryTintColor])
  {
    sub_1DAED06DC();
  }

  else if ([a2 filterStyle] == 1)
  {
    (*(v28 + 104))(v7, *MEMORY[0x1E69814D8], v5);
    sub_1DAED06FC();
  }

  else
  {
    sub_1DAED066C();
  }

  v18 = v17;
  v19 = sub_1DAE46CE4();

  v20 = v19;
  [a2 fraction];
  v22 = v21;

  (*(v9 + 16))(v12, v30, v8);
  v23 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v24 = swift_allocObject();
  (*(v9 + 32))(v24 + v23, v12, v8);
  KeyPath = swift_getKeyPath();
  *(a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC099E0, &qword_1DAEDB3D8) + 52)) = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09A10, &qword_1DAEDB488);
  result = swift_storeEnumTagMultiPayload();
  *a3 = v16;
  *(a3 + 8) = v29;
  *&v22 = v22;
  *(a3 + 12) = LODWORD(v22);
  *(a3 + 16) = v20;
  *(a3 + 20) = v18;
  *(a3 + 24) = sub_1DAE485B4;
  *(a3 + 32) = v24;
  return result;
}

void *sub_1DAE46804@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09A08, &qword_1DAEDB400);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v41 - v9;
  (*(v7 + 16))(&v41 - v9, a1, v6, v8);
  v11 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v12 = swift_allocObject();
  (*(v7 + 32))(v12 + v11, v10, v6);
  sub_1DAECE1DC();
  v46 = a2;
  sub_1DAECE1AC();
  v13 = sub_1DAECE12C();
  v42 = v14;
  v43 = v13;

  sub_1DAECE1AC();
  v15 = sub_1DAECE12C();
  v17 = v16;

  v41 = sub_1DAE412E8(v15, v17);

  sub_1DAECE1AC();
  v18 = sub_1DAECE14C();
  v44 = v19;
  v45 = v18;

  sub_1DAECE1AC();
  v20 = sub_1DAECE14C();
  v22 = v21;

  v23 = sub_1DAE412E8(v20, v22);

  sub_1DAECE1AC();
  sub_1DAECE1BC();
  v25 = v24;

  sub_1DAECE1AC();
  sub_1DAECE03C();
  v27 = v26;

  sub_1DAECE1AC();
  LOBYTE(v20) = sub_1DAECE17C();

  sub_1DAECE1AC();
  LOBYTE(a2) = sub_1DAECE10C();

  v28 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v29 = sub_1DAED1CBC();
  [v28 initWithSuiteName_];

  v30 = sub_1DAECF05C();
  KeyPath = swift_getKeyPath();
  v32 = swift_getKeyPath();
  v33 = swift_getKeyPath();
  *(a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09A00, &qword_1DAEDB3F8) + 84)) = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09A10, &qword_1DAEDB488);
  swift_storeEnumTagMultiPayload();
  *a3 = v46;
  *(a3 + 8) = sub_1DAE4801C;
  *(a3 + 16) = v12;
  v47 = v43;
  v48 = v42;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09A18, &unk_1DAEDB490);
  sub_1DAED076C();
  v34 = v50;
  *(a3 + 24) = v49;
  *(a3 + 40) = v34;
  v47 = v41;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08678, &qword_1DAED6CB8);
  sub_1DAED076C();
  *(a3 + 48) = v49;
  v47 = v45;
  v48 = v44;
  sub_1DAED076C();
  v35 = v50;
  *(a3 + 64) = v49;
  *(a3 + 80) = v35;
  v47 = v23;
  sub_1DAED076C();
  *(a3 + 88) = v49;
  LODWORD(v47) = v25;
  sub_1DAED076C();
  v36 = *(&v49 + 1);
  *(a3 + 104) = v49;
  *(a3 + 112) = v36;
  v47 = v27;
  sub_1DAED076C();
  v37 = *(&v49 + 1);
  *(a3 + 120) = v49;
  *(a3 + 128) = v37;
  LOBYTE(v47) = v20 & 1;
  sub_1DAED076C();
  v38 = *(&v49 + 1);
  *(a3 + 136) = v49;
  *(a3 + 144) = v38;
  LOBYTE(v47) = a2 & 1;
  result = sub_1DAED076C();
  v40 = *(&v49 + 1);
  *(a3 + 152) = v49;
  *(a3 + 160) = v40;
  *(a3 + 168) = v30;
  *(a3 + 176) = KeyPath;
  *(a3 + 184) = 0;
  *(a3 + 192) = v32;
  *(a3 + 200) = 0;
  return result;
}

double sub_1DAE46CE4()
{
  v7[1] = *MEMORY[0x1E69E9840];
  v0 = sub_1DAED05DC();
  if (!v0)
  {
    return 0.0;
  }

  v1 = v0;
  v6 = 0.0;
  v7[0] = 0.0;
  v4 = 0.0;
  v5 = 0.0;
  v2 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithCGColor_];
  [v2 getRed:v7 green:&v6 blue:&v5 alpha:&v4];

  return v7[0] * v4 * 0.212646 + v4 * v6 * 0.715332 + v4 * v5 * 0.0722046;
}

uint64_t sub_1DAE46DDC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1DAECEF3C();

  return v1;
}

uint64_t sub_1DAE46E50(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1DAECEF4C();
}

uint64_t (*sub_1DAE46EC0(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_1DAECEF2C();
  return sub_1DAE46F64;
}

void sub_1DAE46F64(void *a1)
{
  v1 = *a1;
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t sub_1DAE46FCC(void *a1)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08930, qword_1DAED73A8);
  sub_1DAECEF0C();
  return swift_endAccess();
}

uint64_t sub_1DAE47044(_BYTE *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08928, &qword_1DAED73A0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v13 - v9;
  v11 = *(v4 + 16);
  (v11)(&v13 - v9, a1, v3, v8);
  v11(v6, v10, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08930, qword_1DAED73A8);
  sub_1DAECEF1C();
  swift_endAccess();
  return (*(v4 + 8))(v10, v3);
}

uint64_t sub_1DAE471C8()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08930, qword_1DAED73A8);
  sub_1DAECEF0C();
  return swift_endAccess();
}

uint64_t sub_1DAE4723C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08928, &qword_1DAED73A0);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08930, qword_1DAED73A8);
  sub_1DAECEF1C();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*sub_1DAE47374(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08928, &qword_1DAED73A0);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC14WidgetRenderer21TintedWidgetViewModel__tintParameters;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08930, qword_1DAED73A8);
  sub_1DAECEF0C();
  swift_endAccess();
  return sub_1DAE474E4;
}

void sub_1DAE474E4(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*(*a1 + 88) + 16);
  v4(*(*a1 + 104), v3[14], v3[10]);
  v5 = v3[13];
  v11 = v3[14];
  v7 = v3[11];
  v6 = v3[12];
  v8 = v3[10];
  if (a2)
  {
    v4(v3[12], v5, v3[10]);
    swift_beginAccess();
    sub_1DAECEF1C();
    swift_endAccess();
    v9 = *(v7 + 8);
    v9(v5, v8);
    v10 = v11;
    v9(v11, v8);
  }

  else
  {
    swift_beginAccess();
    sub_1DAECEF1C();
    swift_endAccess();
    v10 = v11;
    (*(v7 + 8))(v11, v8);
  }

  free(v10);
  free(v5);
  free(v6);

  free(v3);
}

uint64_t TintedWidgetViewModel.init(tintParameters:)(uint64_t a1)
{
  swift_beginAccess();
  sub_1DADA657C();
  sub_1DAECEEFC();
  swift_endAccess();
  return v1;
}

uint64_t TintedWidgetViewModel.deinit()
{
  v1 = OBJC_IVAR____TtC14WidgetRenderer21TintedWidgetViewModel__tintParameters;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08930, qword_1DAED73A8);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_1DAE4772C(uint64_t a1)
{
  type metadata accessor for TintedWidgetViewModel(0);
  sub_1DADABB28();

  return sub_1DAECF21C();
}

uint64_t sub_1DAE47778(float a1, float a2, float a3, float a4, float a5)
{
  v5 = sub_1DAED05EC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAED06AC();
  sub_1DAED06CC();
  sub_1DAED06BC();
  (*(v6 + 104))(v8, *MEMORY[0x1E69814D8], v5);
  return sub_1DAED069C();
}

uint64_t sub_1DAE47A60(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (v5)
  {
    v6 = v5 - 1;
  }

  else
  {
    v6 = 0;
  }

  v7 = *(a3 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = v9 - 1;
  if (!v9)
  {
    v10 = 0;
  }

  if (v6 <= v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = v6;
  }

  if (v11 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  else
  {
    v12 = v11;
  }

  v13 = *(*(*(a3 + 16) - 8) + 64);
  if (!v5)
  {
    ++v13;
  }

  v14 = *(v4 + 80);
  v15 = *(v8 + 80);
  v16 = *(*(v7 - 8) + 64);
  if (!v9)
  {
    ++v16;
  }

  if (!a2)
  {
    return 0;
  }

  v17 = a2 - v12;
  if (a2 <= v12)
  {
    goto LABEL_39;
  }

  v18 = v16 + ((v13 + v15 + ((v14 + 16) & ~v14)) & ~v15);
  v19 = 8 * v18;
  if (v18 <= 3)
  {
    v21 = ((v17 + ~(-1 << v19)) >> v19) + 1;
    if (HIWORD(v21))
    {
      v20 = *(a1 + v18);
      if (!v20)
      {
        goto LABEL_39;
      }

      goto LABEL_26;
    }

    if (v21 > 0xFF)
    {
      v20 = *(a1 + v18);
      if (!*(a1 + v18))
      {
        goto LABEL_39;
      }

      goto LABEL_26;
    }

    if (v21 < 2)
    {
LABEL_39:
      if ((v11 & 0x80000000) == 0)
      {
        v25 = *(a1 + 1);
        if (v25 >= 0xFFFFFFFF)
        {
          LODWORD(v25) = -1;
        }

        return (v25 + 1);
      }

      v27 = (a1 + v14 + 16) & ~v14;
      if (v6 == v12)
      {
        if (v5 < 2)
        {
          return 0;
        }

        v28 = (*(v4 + 48))(v27);
      }

      else
      {
        v28 = (*(v8 + 48))((v27 + v13 + v15) & ~v15, v9, v7);
      }

      if (v28 >= 2)
      {
        return v28 - 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v20 = *(a1 + v18);
  if (!*(a1 + v18))
  {
    goto LABEL_39;
  }

LABEL_26:
  v22 = (v20 - 1) << v19;
  if (v18 > 3)
  {
    v22 = 0;
  }

  if (v18)
  {
    if (v18 <= 3)
    {
      v23 = v18;
    }

    else
    {
      v23 = 4;
    }

    if (v23 > 2)
    {
      if (v23 == 3)
      {
        v24 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v24 = *a1;
      }
    }

    else if (v23 == 1)
    {
      v24 = *a1;
    }

    else
    {
      v24 = *a1;
    }
  }

  else
  {
    v24 = 0;
  }

  return v12 + (v24 | v22) + 1;
}

void sub_1DAE47CDC(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(*(a4 + 16) - 8);
  v8 = *(v7 + 84);
  v9 = *(a4 + 24);
  v10 = *(v9 - 8);
  if (v8)
  {
    v11 = v8 - 1;
  }

  else
  {
    v11 = 0;
  }

  v12 = *(v9 - 8);
  v13 = *(v10 + 84);
  v14 = *(v7 + 80);
  v15 = *(v10 + 80);
  v16 = *(v10 + 64);
  v17 = v13 - 1;
  if (!v13)
  {
    v17 = 0;
  }

  if (v11 <= v17)
  {
    v18 = v17;
  }

  else
  {
    v18 = v11;
  }

  if (v18 <= 0x7FFFFFFF)
  {
    v19 = 0x7FFFFFFF;
  }

  else
  {
    v19 = v18;
  }

  if (v8)
  {
    v20 = *(*(*(a4 + 16) - 8) + 64);
  }

  else
  {
    v20 = *(*(*(a4 + 16) - 8) + 64) + 1;
  }

  if (v13)
  {
    v21 = v16;
  }

  else
  {
    v21 = v16 + 1;
  }

  v22 = ((v20 + v15 + ((v14 + 16) & ~v14)) & ~v15) + v21;
  v23 = a3 >= v19;
  v24 = a3 - v19;
  if (v24 == 0 || !v23)
  {
LABEL_30:
    if (v19 < a2)
    {
      goto LABEL_31;
    }

    goto LABEL_40;
  }

  if (v22 > 3)
  {
    v6 = 1;
    if (v19 < a2)
    {
      goto LABEL_31;
    }

    goto LABEL_40;
  }

  v25 = ((v24 + ~(-1 << (8 * v22))) >> (8 * v22)) + 1;
  if (!HIWORD(v25))
  {
    if (v25 < 0x100)
    {
      v26 = 1;
    }

    else
    {
      v26 = 2;
    }

    if (v25 >= 2)
    {
      v6 = v26;
    }

    else
    {
      v6 = 0;
    }

    goto LABEL_30;
  }

  v6 = 4;
  if (v19 < a2)
  {
LABEL_31:
    v27 = ~v19 + a2;
    if (v22 < 4)
    {
      v28 = (v27 >> (8 * v22)) + 1;
      if (v22)
      {
        v29 = v27 & ~(-1 << (8 * v22));
        bzero(a1, v22);
        if (v22 != 3)
        {
          if (v22 == 2)
          {
            *a1 = v29;
            if (v6 > 1)
            {
LABEL_66:
              if (v6 == 2)
              {
                *&a1[v22] = v28;
              }

              else
              {
                *&a1[v22] = v28;
              }

              return;
            }
          }

          else
          {
            *a1 = v27;
            if (v6 > 1)
            {
              goto LABEL_66;
            }
          }

          goto LABEL_63;
        }

        *a1 = v29;
        a1[2] = BYTE2(v29);
      }

      if (v6 > 1)
      {
        goto LABEL_66;
      }
    }

    else
    {
      bzero(a1, v22);
      *a1 = v27;
      v28 = 1;
      if (v6 > 1)
      {
        goto LABEL_66;
      }
    }

LABEL_63:
    if (v6)
    {
      a1[v22] = v28;
    }

    return;
  }

LABEL_40:
  if (v6 > 1)
  {
    if (v6 != 2)
    {
      *&a1[v22] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_47;
    }

    *&a1[v22] = 0;
  }

  else if (v6)
  {
    a1[v22] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_47;
  }

  if (!a2)
  {
    return;
  }

LABEL_47:
  if ((v18 & 0x80000000) != 0)
  {
    v30 = &a1[v14 + 16] & ~v14;
    if (v11 == v19)
    {
      if (v8 >= 2)
      {
        v31 = *(v7 + 56);
        v32 = a2 + 1;

        v31(v30, v32);
      }
    }

    else
    {
      v33 = *(v12 + 56);
      v34 = (v30 + v20 + v15) & ~v15;
      v35 = a2 + 1;

      v33(v34, v35, v13, v9);
    }
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *a1 = a2 & 0x7FFFFFFF;
    *(a1 + 1) = 0;
  }

  else
  {
    *(a1 + 1) = a2 - 1;
  }
}

uint64_t sub_1DAE48020@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09A08, &qword_1DAEDB400);
  v4 = *(v3 - 8);
  v5 = *(v4 + 16);
  v6 = v1 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return v5(a1, v6, v3);
}

double sub_1DAE48184(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }

  return result;
}

double sub_1DAE48190(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_1DAE481CC(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t), uint64_t a3, uint64_t a4)
{
  v7 = *(v4 + 16);
  v8 = *(v4 + 24);
  v9 = *(type metadata accessor for TintedWidgetAccentedView(0, v7, v8, a4) - 8);
  return sub_1DAE44AB0(a1, v4 + ((*(v9 + 80) + 32) & ~*(v9 + 80)), v7, v8, a2);
}

uint64_t sub_1DAE4825C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 16);
  v7 = *(v4 + 24);
  v8 = *(type metadata accessor for TintedWidgetAccentedView(0, v6, v7, a4) - 8);
  v9 = v4 + ((*(v8 + 80) + 32) & ~*(v8 + 80));

  return sub_1DAE44B20(a1, v9, v6, v7);
}

uint64_t sub_1DAE482E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 16);
  v7 = *(v4 + 24);
  v8 = *(type metadata accessor for TintedWidgetAccentedView(0, v6, v7, a4) - 8);
  v9 = v4 + ((*(v8 + 80) + 32) & ~*(v8 + 80));

  return sub_1DAE44B9C(a1, v9, v6, v7);
}

uint64_t objectdestroy_43Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = (type metadata accessor for TintedWidgetAccentedView(0, *(v4 + 16), *(v4 + 24), a4) - 8);
  v6 = v4 + ((*(*v5 + 80) + 32) & ~*(*v5 + 80));

  sub_1DAE48184(*(v6 + 176), *(v6 + 184));
  sub_1DAE48190(*(v6 + 192), *(v6 + 200));
  v7 = v5[23];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09A10, &qword_1DAEDB488);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_1DAECF8EC();
    (*(*(v8 - 8) + 8))(v6 + v7, v8);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1DAE4851C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 16);
  v7 = *(v4 + 24);
  v8 = *(type metadata accessor for TintedWidgetAccentedView(0, v6, v7, a4) - 8);
  v9 = v4 + ((*(v8 + 80) + 32) & ~*(v8 + 80));

  return sub_1DAE44C14(a1, v9, v6, v7);
}

uint64_t sub_1DAE485B8(void *a1, char *a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = sub_1DAE4A0F8(a1, a2);

  return v6;
}

void sub_1DAE48610(uint64_t a1, uint64_t a2)
{
  BSDispatchQueueAssertMain();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + OBJC_IVAR____TtC14WidgetRenderer50WatchComplicationsWidgetSceneContentViewController__watchViewModel);
    v5 = [*(Strong + OBJC_IVAR____TtC14WidgetRenderer50WatchComplicationsWidgetSceneContentViewController__watchScene) cornerPosition];
    if (v5 > 2)
    {
      if (v5 == 3)
      {
        v6 = 0;
        v7 = 2;
        goto LABEL_12;
      }

      if (v5 == 4)
      {
        v6 = 0;
        v7 = 3;
        goto LABEL_12;
      }
    }

    else
    {
      if (v5 == 1)
      {
        v7 = 0;
        v6 = 0;
        goto LABEL_12;
      }

      if (v5 == 2)
      {
        v6 = 0;
        v7 = 1;
LABEL_12:
        v8 = v4 + OBJC_IVAR____TtC14WidgetRenderer33WatchComplicationsWidgetViewModel_cornerPosition;
        v9 = swift_beginAccess();
        *v8 = v7;
        *(v8 + 8) = v6;
        sub_1DAEAFEE0(v9);

        return;
      }
    }

    v7 = 0;
    v6 = 1;
    goto LABEL_12;
  }
}

void sub_1DAE48728(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC088F8, &qword_1DAEDE860);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v14[-v3];
  BSDispatchQueueAssertMain();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = *(Strong + OBJC_IVAR____TtC14WidgetRenderer50WatchComplicationsWidgetSceneContentViewController__watchViewModel);
    v8 = [*(Strong + OBJC_IVAR____TtC14WidgetRenderer50WatchComplicationsWidgetSceneContentViewController__watchScene) curvedLabelMetrics];
    if (v8)
    {
      v9 = v8;
      CHSWatchComplicationsCurvedLabelMetrics.complicationCurvedTextConfiguration.getter();

      v10 = 0;
    }

    else
    {
      v10 = 1;
    }

    v11 = sub_1DAECEC2C();
    (*(*(v11 - 8) + 56))(v4, v10, 1, v11);
    v12 = OBJC_IVAR____TtC14WidgetRenderer33WatchComplicationsWidgetViewModel_curvedTextConfiguration;
    swift_beginAccess();
    sub_1DAE4AC34(v4, v7 + v12);
    v13 = swift_endAccess();
    sub_1DAEAFEE0(v13);
    sub_1DAE4ACA4(v4);
  }
}

void sub_1DAE488A0(uint64_t a1, uint64_t a2)
{
  BSDispatchQueueAssertMain();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = *(Strong + OBJC_IVAR____TtC14WidgetRenderer50WatchComplicationsWidgetSceneContentViewController__watchViewModel);
    v4 = *(Strong + OBJC_IVAR____TtC14WidgetRenderer50WatchComplicationsWidgetSceneContentViewController__watchScene);
    v5 = Strong;

    [v4 bezelContentCenter];
    v7 = v6;
    v9 = v8;
    v10 = v3 + OBJC_IVAR____TtC14WidgetRenderer33WatchComplicationsWidgetViewModel_bezelContentCenter;
    v11 = swift_beginAccess();
    *v10 = v7;
    *(v10 + 8) = v9;
    *(v10 + 16) = 0;
    sub_1DAEAFEE0(v11);
  }
}

void sub_1DAE48974(uint64_t a1, uint64_t a2)
{
  BSDispatchQueueAssertMain();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = [*(Strong + OBJC_IVAR____TtC14WidgetRenderer50WatchComplicationsWidgetSceneContentViewController__watchScene) includeAccessoryViews];
    v3[OBJC_IVAR____TtC14WidgetRenderer50WatchComplicationsWidgetSceneContentViewController__useWatchContentView] = v4;
    sub_1DAE4945C();
  }
}

void sub_1DAE489F0(uint64_t a1, uint64_t a2)
{
  BSDispatchQueueAssertMain();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_1DAE48C94();
  }
}

id sub_1DAE48A48(uint64_t a1)
{
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {

    return [result setCurvedTextAngularWidth_];
  }

  return result;
}

void sub_1DAE48AAC(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

void sub_1DAE48AF8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_1DAE48C94();
  }
}

void sub_1DAE48B4C(uint64_t a1)
{
  v2 = sub_1DAE0DC6C(a1);
  v3 = OBJC_IVAR____TtC14WidgetRenderer50WatchComplicationsWidgetSceneContentViewController__sceneSettingsDiffInspector;
  if (*(v1 + OBJC_IVAR____TtC14WidgetRenderer50WatchComplicationsWidgetSceneContentViewController__sceneSettingsDiffInspector))
  {
    [*(v1 + OBJC_IVAR____TtC14WidgetRenderer32WidgetSceneContentViewController_scene) _unregisterSettingsDiffActionArrayForKey_];
    v4 = *(v1 + v3);
    *(v1 + v3) = 0;
  }
}

uint64_t sub_1DAE48C94()
{
  v1 = sub_1DAED09DC();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1DAED0A3C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = BSDispatchQueueAssertMain();
  if ((*(v0 + OBJC_IVAR____TtC14WidgetRenderer50WatchComplicationsWidgetSceneContentViewController__snapshotMetadataDirty) & 1) == 0)
  {
    *(v0 + OBJC_IVAR____TtC14WidgetRenderer50WatchComplicationsWidgetSceneContentViewController__snapshotMetadataDirty) = 1;
    sub_1DAD674D4(0, &qword_1EE00AA30, 0x1E69E9610);
    v14 = v5;
    v13 = sub_1DAED20EC();
    v10 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_1DAE4AE64;
    aBlock[5] = v10;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1DAD751C0;
    aBlock[3] = &block_descriptor_85;
    v11 = _Block_copy(aBlock);

    _s14WidgetRenderer16LayerSnapshotterC8snapshot7request16qualityOfService17completionHandleryAA15SnapshotRequestVyAC09SupportedC0OG_8Dispatch0O3QoSVyAC6ResultOctFfA0__0();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1DAE4AD2C(&qword_1EE00AB70, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC08340, &unk_1DAED6550);
    sub_1DAD64B94(&qword_1EE00AAA0, &unk_1ECC08340, &unk_1DAED6550, MEMORY[0x1E69E6328]);
    sub_1DAED23CC();
    v12 = v13;
    MEMORY[0x1E127DD70](0, v8, v4, v11);
    _Block_release(v11);

    (*(v2 + 8))(v4, v1);
    return (*(v6 + 8))(v8, v14);
  }

  return result;
}

void sub_1DAE48FA8(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_1DAE48FFC(Strong);
  }
}

void sub_1DAE48FFC(uint64_t a1)
{
  BSDispatchQueueAssertMain();
  if (*(v1 + OBJC_IVAR____TtC14WidgetRenderer50WatchComplicationsWidgetSceneContentViewController__snapshotMetadataDirty) != 1)
  {
    return;
  }

  *(v1 + OBJC_IVAR____TtC14WidgetRenderer50WatchComplicationsWidgetSceneContentViewController__snapshotMetadataDirty) = 0;
  if (![*(v1 + OBJC_IVAR____TtC14WidgetRenderer50WatchComplicationsWidgetSceneContentViewController__watchScene) generateSnapshotMetadata])
  {
    return;
  }

  v2 = *(v1 + OBJC_IVAR____TtC14WidgetRenderer50WatchComplicationsWidgetSceneContentViewController__watchViewModel);
  v3 = OBJC_IVAR____TtC14WidgetRenderer37WatchComplicationsLiveWidgetViewModel__snapshotMetadata;
  v4 = *(v2 + OBJC_IVAR____TtC14WidgetRenderer37WatchComplicationsLiveWidgetViewModel__snapshotMetadata);
  if (v4)
  {
    v5 = *(v2 + OBJC_IVAR____TtC14WidgetRenderer37WatchComplicationsLiveWidgetViewModel__snapshotMetadata);
  }

  else
  {
    v6 = sub_1DADFF0CC();
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;
  }

  v8 = OBJC_IVAR____TtC14WidgetRenderer50WatchComplicationsWidgetSceneContentViewController__lastSnapshotMetadata;
  v9 = *(v1 + OBJC_IVAR____TtC14WidgetRenderer50WatchComplicationsWidgetSceneContentViewController__lastSnapshotMetadata);
  if (!v9)
  {
    v14 = v4;
    v15 = v5;
    v16 = 0;
LABEL_13:
    *(v1 + v8) = v5;

    v17 = [objc_allocWithZone(MEMORY[0x1E69944F8]) initWithMetadata:v5 completion:0];
    v18 = [*(v1 + OBJC_IVAR____TtC14WidgetRenderer32WidgetSceneContentViewController_scene) _FBSScene];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08350, &unk_1DAED7DB0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DAED64D0;
    *(inited + 32) = v17;
    v20 = v17;
    sub_1DAE89C08(inited);
    swift_setDeallocating();
    swift_arrayDestroy();
    sub_1DAD674D4(0, &unk_1EE00A880, 0x1E698E5F0);
    sub_1DAE4ADFC();
    v21 = sub_1DAED1F5C();

    [v18 sendActions_];

    return;
  }

  v10 = v1;
  sub_1DAD674D4(0, &qword_1ECC08918, 0x1E6994520);
  v11 = v4;
  v22 = v5;
  v12 = v9;
  v13 = sub_1DAED228C();

  if ((v13 & 1) == 0)
  {
    v1 = v10;
    v16 = *(v10 + v8);
    goto LABEL_13;
  }
}

uint64_t sub_1DAE49274(uint64_t a1, uint64_t (*a2)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_1DAE48FFC(Strong);
  }

  return a2();
}

void sub_1DAE4945C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09AE8, &qword_1DAEDFB80);
  MEMORY[0x1EEE9AC00](v1);
  v4 = (&v18[-2] - v3);
  v5 = *(v0 + OBJC_IVAR____TtC14WidgetRenderer31LiveWidgetContentViewController_viewModel);
  if (*(v0 + OBJC_IVAR____TtC14WidgetRenderer50WatchComplicationsWidgetSceneContentViewController__useWatchContentView) == 1)
  {

    sub_1DAE497FC(v5, v18);
    type metadata accessor for _RootContentViewModel(0);
    sub_1DAE4AD2C(&qword_1EE006B90, type metadata accessor for _RootContentViewModel, &unk_1DAEDFD48);
    *&v17 = sub_1DAECF21C();
    *(&v17 + 1) = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09B00, &qword_1DAEDB698);
    sub_1DAD64B94(&qword_1ECC09B08, &qword_1ECC09B00, &qword_1DAEDB698, &unk_1DAEDFCF8);
  }

  else
  {
    v7 = v4 + *(v2 + 36);
    v19 = 0;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC09AF0, &unk_1DAED7740);
    sub_1DAED076C();
    *(v7 + 1) = v17;
    v19 = 0;
    sub_1DAED076C();
    *(v7 + 2) = v17;
    v7[48] = 0;
    *(v7 + 7) = 0;
    v8 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_logger;
    v9 = *(type metadata accessor for LiveWidgetEntryView(0) + 36);
    v10 = sub_1DAECEDEC();
    (*(*(v10 - 8) + 16))(&v7[v9], v5 + v8, v10);
    type metadata accessor for LiveWidgetEntryViewModel(0);
    sub_1DAE4AD2C(&qword_1EE009E48, type metadata accessor for LiveWidgetEntryViewModel, &protocol conformance descriptor for LiveWidgetEntryViewModel);
    *v7 = sub_1DAECF21C();
    *(v7 + 1) = v11;
    type metadata accessor for _RootContentViewModel(0);
    sub_1DAE4AD2C(&qword_1EE006B90, type metadata accessor for _RootContentViewModel, &unk_1DAEDFD48);
    *v4 = sub_1DAECF21C();
    v4[1] = v12;
    sub_1DAD64B94(qword_1EE0078A8, &qword_1ECC09AE8, &qword_1DAEDFB80, &unk_1DAEDFCF8);
  }

  v13 = sub_1DAED087C();
  v14 = OBJC_IVAR____TtC14WidgetRenderer31BaseWidgetContentViewController_hostingController;
  swift_beginAccess();
  v15 = *(v0 + v14);
  v19 = v13;
  v16 = v15;

  sub_1DAECFABC();
}

uint64_t sub_1DAE497FC@<X0>(uint64_t a2@<X1>, uint64_t *a4@<X8>)
{
  type metadata accessor for WatchComplicationsWidgetViewModel(0);
  sub_1DAE4AD2C(&qword_1ECC09B10, type metadata accessor for WatchComplicationsWidgetViewModel, &protocol conformance descriptor for WatchComplicationsWidgetViewModel);

  v6 = sub_1DAECF21C();
  v8 = v7;
  type metadata accessor for LiveWidgetEntryViewModel(0);
  sub_1DAE4AD2C(&qword_1EE009E48, type metadata accessor for LiveWidgetEntryViewModel, &protocol conformance descriptor for LiveWidgetEntryViewModel);

  v9 = sub_1DAECF21C();
  v11 = v10;
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13 = swift_allocObject();
  result = swift_unknownObjectWeakInit();
  *a4 = v6;
  a4[1] = v8;
  a4[2] = sub_1DAE4AD74;
  a4[3] = a2;
  a4[4] = v9;
  a4[5] = v11;
  a4[6] = sub_1DAE4AD7C;
  a4[7] = v12;
  a4[8] = sub_1DAE4AD84;
  a4[9] = v13;
  return result;
}

uint64_t sub_1DAE4999C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC09AF0, &unk_1DAED7740);
  sub_1DAED076C();
  *(a2 + 16) = v9;
  sub_1DAED076C();
  *(a2 + 32) = v9;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  v4 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_logger;
  v5 = *(type metadata accessor for LiveWidgetEntryView(0) + 36);
  v6 = sub_1DAECEDEC();
  (*(*(v6 - 8) + 16))(a2 + v5, a1 + v4, v6);
  type metadata accessor for LiveWidgetEntryViewModel(0);
  sub_1DAE4AD2C(&qword_1EE009E48, type metadata accessor for LiveWidgetEntryViewModel, &protocol conformance descriptor for LiveWidgetEntryViewModel);

  result = sub_1DAECF21C();
  *a2 = result;
  *(a2 + 8) = v8;
  return result;
}

void sub_1DAE49AD8(uint64_t a1, uint64_t a2)
{
  v3 = sub_1DAECEBAC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  BSDispatchQueueAssertMain();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = [*(Strong + OBJC_IVAR____TtC14WidgetRenderer32WidgetSceneContentViewController_scene) _FBSScene];
    (*(v4 + 16))(&aBlock[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
    v9 = (*(v4 + 80) + 16) & ~*(v4 + 80);
    v10 = swift_allocObject();
    (*(v4 + 32))(v10 + v9, &aBlock[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
    v11 = swift_allocObject();
    *(v11 + 16) = sub_1DAE4AD8C;
    *(v11 + 24) = v10;
    aBlock[4] = sub_1DAD93F90;
    aBlock[5] = v11;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1DAE48AAC;
    aBlock[3] = &block_descriptor_81;
    v12 = _Block_copy(aBlock);

    [v8 updateClientSettingsWithBlock_];

    _Block_release(v12);
    LOBYTE(v8) = swift_isEscapingClosureAtFileLocation();

    if (v8)
    {
      __break(1u);
    }
  }
}

void sub_1DAE49D4C(void *a1)
{
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    v3 = v2;
    v7 = a1;
    sub_1DAECEB9C();
    v5 = v4;
    sub_1DAECEB9C();
    [v3 setCurvedTextAngularWidth_];
  }
}

void sub_1DAE49E00(__int128 *a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  BSDispatchQueueAssertMain();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = Strong;
    if (v2 == 255)
    {
      v6 = 0;
    }

    else
    {
      v6 = sub_1DAED01EC();
    }

    v7 = OBJC_IVAR____TtC14WidgetRenderer31BaseWidgetContentViewController_contentShape;
    swift_beginAccess();
    v8 = *&v4[v7];
    *&v4[v7] = v6;
    v9 = v6;
    sub_1DAECCA24(v8);
  }
}

uint64_t sub_1DAE49EE4()
{
}

id sub_1DAE49F64(__n128 a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for WatchComplicationsWidgetSceneContentViewController(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t type metadata accessor for WatchComplicationsWidgetSceneContentViewController(uint64_t a1)
{
  result = qword_1ECC09AB8;
  if (!qword_1ECC09AB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DAE4A0F8(void *a1, char *a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC088F8, &qword_1DAEDE860);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v77[-v7];
  v9 = sub_1DAECDD3C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v77[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = OBJC_IVAR____TtC14WidgetRenderer50WatchComplicationsWidgetSceneContentViewController__sceneSettingsDiffInspector;
  *(v3 + OBJC_IVAR____TtC14WidgetRenderer50WatchComplicationsWidgetSceneContentViewController__sceneSettingsDiffInspector) = 0;
  *(v3 + OBJC_IVAR____TtC14WidgetRenderer50WatchComplicationsWidgetSceneContentViewController__lastSnapshotMetadata) = 0;
  *(v3 + OBJC_IVAR____TtC14WidgetRenderer50WatchComplicationsWidgetSceneContentViewController__snapshotMetadataDirty) = 1;
  *(v3 + OBJC_IVAR____TtC14WidgetRenderer50WatchComplicationsWidgetSceneContentViewController__useWatchContentView) = 0;
  *(v3 + OBJC_IVAR____TtC14WidgetRenderer50WatchComplicationsWidgetSceneContentViewController__subscriptions) = MEMORY[0x1E69E7CD0];
  objc_opt_self();
  *(v3 + OBJC_IVAR____TtC14WidgetRenderer50WatchComplicationsWidgetSceneContentViewController__watchScene) = swift_dynamicCastObjCClassUnconditional();
  v14 = a1;

  v15 = [v14 metrics];
  type metadata accessor for WatchComplicationsLiveWidgetViewModel(0);
  swift_allocObject();
  *(v3 + OBJC_IVAR____TtC14WidgetRenderer50WatchComplicationsWidgetSceneContentViewController__watchViewModel) = WatchComplicationsLiveWidgetViewModel.init(widgetViewModel:metrics:)(a2, v15);
  aBlock = 0;
  v79 = 0xE000000000000000;
  sub_1DAED256C();
  MEMORY[0x1E127DA50](0xD000000000000033, 0x80000001DAEE38F0);
  sub_1DAECDD2C();
  sub_1DAE4AD2C(&unk_1ECC09AD0, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
  v16 = sub_1DAED287C();
  MEMORY[0x1E127DA50](v16);

  (*(v10 + 8))(v12, v9);
  MEMORY[0x1E127DA50](41, 0xE100000000000000);
  v17 = sub_1DAED1CBC();

  *(v3 + OBJC_IVAR____TtC14WidgetRenderer50WatchComplicationsWidgetSceneContentViewController__uniqueSceneDiffActionKey) = v17;
  v18 = [objc_allocWithZone(MEMORY[0x1E6994518]) init];
  v19 = *(v3 + v13);
  *(v3 + v13) = v18;

  v20 = v14;

  v21 = sub_1DADA38A8(v20, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08350, &unk_1DAED7DB0);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1DAED64D0;
  *(v22 + 32) = v21;
  v23 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09AE0, &unk_1DAED67B0);
  v24 = sub_1DAED1E6C();

  [v20 _registerSettingsDiffActionArray_forKey_];

  v25 = OBJC_IVAR____TtC14WidgetRenderer50WatchComplicationsWidgetSceneContentViewController__sceneSettingsDiffInspector;
  v26 = *&v23[OBJC_IVAR____TtC14WidgetRenderer50WatchComplicationsWidgetSceneContentViewController__sceneSettingsDiffInspector];
  if (v26)
  {
    v27 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v82 = sub_1DAE4AC24;
    v83 = v27;
    aBlock = MEMORY[0x1E69E9820];
    v79 = 1107296256;
    v80 = sub_1DAD69AE8;
    v81 = &block_descriptor_12;
    v28 = _Block_copy(&aBlock);
    v29 = v26;

    [v29 observeCornerPositionWithBlock_];
    _Block_release(v28);
  }

  v30 = OBJC_IVAR____TtC14WidgetRenderer50WatchComplicationsWidgetSceneContentViewController__watchViewModel;
  v31 = *&v23[OBJC_IVAR____TtC14WidgetRenderer50WatchComplicationsWidgetSceneContentViewController__watchViewModel];
  v32 = OBJC_IVAR____TtC14WidgetRenderer50WatchComplicationsWidgetSceneContentViewController__watchScene;
  v33 = [*&v23[OBJC_IVAR____TtC14WidgetRenderer50WatchComplicationsWidgetSceneContentViewController__watchScene] cornerPosition];
  if (v33 > 2)
  {
    if (v33 != 3)
    {
      if (v33 == 4)
      {
        v34 = 0;
        v35 = 3;
        goto LABEL_13;
      }

      goto LABEL_10;
    }

    v34 = 0;
    v35 = 2;
  }

  else
  {
    if (v33 != 1)
    {
      if (v33 == 2)
      {
        v34 = 0;
        v35 = 1;
        goto LABEL_13;
      }

LABEL_10:
      v35 = 0;
      v34 = 1;
      goto LABEL_13;
    }

    v35 = 0;
    v34 = 0;
  }

LABEL_13:
  v36 = v31 + OBJC_IVAR____TtC14WidgetRenderer33WatchComplicationsWidgetViewModel_cornerPosition;
  v37 = swift_beginAccess();
  *v36 = v35;
  *(v36 + 8) = v34;
  sub_1DAEAFEE0(v37);
  v38 = *&v23[v25];
  if (v38)
  {
    v39 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v82 = sub_1DAE4AC2C;
    v83 = v39;
    aBlock = MEMORY[0x1E69E9820];
    v79 = 1107296256;
    v80 = sub_1DAD69AE8;
    v81 = &block_descriptor_54_1;
    v40 = _Block_copy(&aBlock);
    v41 = v38;

    [v41 observeCurvedLabelMetricsWithBlock_];
    _Block_release(v40);
  }

  v42 = *&v23[v30];
  v43 = *&v23[v32];

  v44 = [v43 curvedLabelMetrics];
  if (v44)
  {
    v45 = v44;
    CHSWatchComplicationsCurvedLabelMetrics.complicationCurvedTextConfiguration.getter();

    v46 = 0;
  }

  else
  {
    v46 = 1;
  }

  v47 = sub_1DAECEC2C();
  (*(*(v47 - 8) + 56))(v8, v46, 1, v47);
  v48 = OBJC_IVAR____TtC14WidgetRenderer33WatchComplicationsWidgetViewModel_curvedTextConfiguration;
  swift_beginAccess();
  sub_1DAE4AC34(v8, v42 + v48);
  v49 = swift_endAccess();
  sub_1DAEAFEE0(v49);

  sub_1DAE4ACA4(v8);
  v50 = *&v23[v25];
  if (v50)
  {
    v51 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v82 = sub_1DAE4AD0C;
    v83 = v51;
    aBlock = MEMORY[0x1E69E9820];
    v79 = 1107296256;
    v80 = sub_1DAD69AE8;
    v81 = &block_descriptor_58;
    v52 = _Block_copy(&aBlock);
    v53 = v50;

    [v53 observeBezelContentCenterWithBlock_];
    _Block_release(v52);
  }

  v54 = *&v23[v30];
  v55 = *&v23[v32];

  [v55 bezelContentCenter];
  v57 = v56;
  v59 = v58;
  v60 = v54 + OBJC_IVAR____TtC14WidgetRenderer33WatchComplicationsWidgetViewModel_bezelContentCenter;
  v61 = swift_beginAccess();
  *v60 = v57;
  *(v60 + 8) = v59;
  *(v60 + 16) = 0;
  sub_1DAEAFEE0(v61);

  v62 = *&v23[v25];
  if (v62)
  {
    v63 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v82 = sub_1DAE4AD14;
    v83 = v63;
    aBlock = MEMORY[0x1E69E9820];
    v79 = 1107296256;
    v80 = sub_1DAD69AE8;
    v81 = &block_descriptor_62;
    v64 = _Block_copy(&aBlock);
    v65 = v62;

    [v65 observeIncludeAccessoryViewsWithBlock_];
    _Block_release(v64);
  }

  v66 = [*&v23[v32] includeAccessoryViews];
  v23[OBJC_IVAR____TtC14WidgetRenderer50WatchComplicationsWidgetSceneContentViewController__useWatchContentView] = v66;
  v67 = *&v23[v25];
  if (v67)
  {
    v68 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v82 = sub_1DAE4AD1C;
    v83 = v68;
    aBlock = MEMORY[0x1E69E9820];
    v79 = 1107296256;
    v80 = sub_1DAD69AE8;
    v81 = &block_descriptor_66;
    v69 = _Block_copy(&aBlock);
    v70 = v67;

    [v70 observeGenerateSnapshotMetadataWithBlock_];
    _Block_release(v69);
  }

  v71 = *&v23[OBJC_IVAR____TtC14WidgetRenderer32WidgetSceneContentViewController_scene];
  v72 = v23;
  v73 = [v71 _FBSScene];
  v82 = sub_1DAE48A48;
  v83 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v79 = 1107296256;
  v80 = sub_1DAE48AAC;
  v81 = &block_descriptor_69;
  v74 = _Block_copy(&aBlock);

  [v73 updateClientSettingsWithBlock_];

  _Block_release(v74);
  result = swift_isEscapingClosureAtFileLocation();
  if (result)
  {
    __break(1u);
  }

  else
  {
    aBlock = *(*&v23[v30] + OBJC_IVAR____TtC14WidgetRenderer37WatchComplicationsLiveWidgetViewModel_snapshotMetadataPublisher);
    swift_allocObject();
    swift_unknownObjectWeakInit();

    sub_1DAECEEDC();
    sub_1DAECF00C();

    swift_beginAccess();
    sub_1DAECEE0C();
    swift_endAccess();

    sub_1DAE48FFC(v76);
    sub_1DAE4945C();
    return v72;
  }

  return result;
}

uint64_t sub_1DAE4AC34(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC088F8, &qword_1DAEDE860);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DAE4ACA4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC088F8, &qword_1DAEDE860);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DAE4AD2C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1DAE4AD8C(void *a1)
{
  sub_1DAECEBAC();

  sub_1DAE49D4C(a1);
}

unint64_t sub_1DAE4ADFC()
{
  result = qword_1EE00A870;
  if (!qword_1EE00A870)
  {
    sub_1DAD674D4(255, &unk_1EE00A880, 0x1E698E5F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE00A870);
  }

  return result;
}

void sub_1DAE4AE78(void *a1, void *a2, void *a3, uint64_t a4)
{
  if (a3)
  {
    objc_opt_self();
    v9 = swift_dynamicCastObjCClass();
    if (v9)
    {
      v18 = v9;
      v10 = a3;
      v9 = v18;
    }
  }

  else
  {
    v9 = 0;
  }

  v11 = *(v4 + OBJC_IVAR____TtC14WidgetRenderer50WatchComplicationsWidgetSceneContentViewController__sceneSettingsDiffInspector);
  if (v11)
  {
    v12 = a2 == 0;
  }

  else
  {
    v12 = 1;
  }

  if (!v12)
  {
    v19 = v9;
    if (!a1)
    {
      __break(1u);
      return;
    }

    v13 = v11;
    v14 = a2;
    v15 = [a1 settings];
    objc_opt_self();
    v16 = swift_dynamicCastObjCClass();
    if (v16)
    {
      v17 = [objc_allocWithZone(MEMORY[0x1E6994510]) initWithPreviousSettings:v19 currentSettings:v16 transitionContext:a4];
      [v13 inspectDiff:v14 withContext:v17];

      v13 = v15;
      v14 = v17;
    }

    else
    {
      v17 = v19;
      v19 = v15;
    }

    v9 = v19;
  }
}

uint64_t sub_1DAE4B018()
{
  v1 = v0;
  v2 = sub_1DAECE85C();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 != *MEMORY[0x1E6989BA0])
  {
    if (v7 == *MEMORY[0x1E6989BB8])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC08C70, qword_1DAED7AD8);
      v8 = sub_1DAED182C();
      v9 = *(v8 - 8);
      v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v11 = swift_allocObject();
      v12 = v11;
      *(v11 + 16) = xmmword_1DAED6200;
      v13 = 2;
      goto LABEL_5;
    }

    if (v7 == *MEMORY[0x1E6989B98])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC08C70, qword_1DAED7AD8);
      v15 = sub_1DAED182C();
      v16 = *(v15 - 8);
      v17 = *(v16 + 72);
      v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_1DAED64C0;
      v19 = (v12 + v18);
      *v19 = 1;
      v20 = *MEMORY[0x1E6985910];
      v21 = *(v16 + 104);
      v21(v19, v20, v15);
      v19[v17] = 2;
      v21(&v19[v17], v20, v15);
      return v12;
    }

    if (v7 == *MEMORY[0x1E6989BA8])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC08C70, qword_1DAED7AD8);
      v8 = sub_1DAED182C();
      v9 = *(v8 - 8);
      v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v11 = swift_allocObject();
      v12 = v11;
      *(v11 + 16) = xmmword_1DAED6200;
      v13 = 3;
      goto LABEL_5;
    }

    if (v7 == *MEMORY[0x1E6989BB0])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC08C70, qword_1DAED7AD8);
      v8 = sub_1DAED182C();
      v9 = *(v8 - 8);
      v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v11 = swift_allocObject();
      v12 = v11;
      *(v11 + 16) = xmmword_1DAED6200;
      *(v11 + v10) = 0;
      goto LABEL_6;
    }

    (*(v3 + 8))(v6, v2);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC08C70, qword_1DAED7AD8);
  v8 = sub_1DAED182C();
  v9 = *(v8 - 8);
  v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v11 = swift_allocObject();
  v12 = v11;
  *(v11 + 16) = xmmword_1DAED6200;
  v13 = 1;
LABEL_5:
  *(v11 + v10) = v13;
LABEL_6:
  (*(v9 + 104))(v11 + v10, *MEMORY[0x1E6985910], v8);
  return v12;
}

uint64_t InProcessJindoActivityInstanceView.init(instance:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = swift_getKeyPath();
  *a2 = result;
  *(a2 + 8) = 0;
  *(a2 + 16) = a1;
  return result;
}

uint64_t InProcessJindoActivityInstanceView.body.getter@<X0>(void *a1@<X8>)
{
  sub_1DAE4B5D8(*v1, *(v1 + 8), *(v1 + 16), a1);
  v3 = sub_1DAE4C194();
  v4 = sub_1DAED004C();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09B18, &qword_1DAEDB6D0);
  v6 = a1 + *(result + 36);
  *v6 = v3;
  v6[8] = v4;
  return result;
}

uint64_t sub_1DAE4B5D8@<X0>(char *a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v54 = a2;
  v55 = a1;
  v60 = a4;
  v48 = sub_1DAECDD3C();
  v46 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v45 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_1DAED182C();
  v49 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v47 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = type metadata accessor for _InProcessActivityInstanceView(0);
  MEMORY[0x1EEE9AC00](v59);
  v44 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v44 - v9;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09B70, &qword_1DAEDB808);
  MEMORY[0x1EEE9AC00](v56);
  v58 = &v44 - v11;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09B50, &qword_1DAEDB7F8);
  MEMORY[0x1EEE9AC00](v57);
  v53 = (&v44 - v12);
  v13 = sub_1DAECE85C();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v44 - v18;
  swift_getKeyPath();
  v20 = OBJC_IVAR____TtC14WidgetRenderer30InProcessJindoActivityInstance___observationRegistrar;
  v66 = a3;
  v21 = sub_1DAE4C68C(&qword_1ECC08C40, type metadata accessor for InProcessJindoActivityInstance, &protocol conformance descriptor for InProcessActivityInstanceBase);

  v51 = v21;
  v52 = v20;
  sub_1DAECDEFC();

  v22 = OBJC_IVAR____TtC14WidgetRenderer30InProcessJindoActivityInstance__jindoState;
  swift_beginAccess();
  v23 = *(v14 + 16);
  v61 = a3;
  v23(v19, a3 + v22, v13);
  (*(v14 + 104))(v16, *MEMORY[0x1E6989B98], v13);
  LOBYTE(v20) = sub_1DAECE84C();
  v24 = *(v14 + 8);
  v24(v16, v13);
  v24(v19, v13);
  if (v20)
  {
    v25 = v61;

    v26 = sub_1DAECF8FC();
    v27 = v53;
    *v53 = v26;
    *(v27 + 8) = 0;
    *(v27 + 16) = 1;
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09B78, &qword_1DAEDB868);
    sub_1DAE4BD64(v25, v27 + *(v28 + 44));
    sub_1DAE4C794(v27, v58);
    swift_storeEnumTagMultiPayload();
    sub_1DAD64B94(&qword_1ECC09B48, &qword_1ECC09B50, &qword_1DAEDB7F8, MEMORY[0x1E69817F8]);
    sub_1DAE4C68C(&qword_1ECC09B58, type metadata accessor for _InProcessActivityInstanceView, &unk_1DAED6DC0);
    sub_1DAECFB1C();
    return sub_1DAE4C804(v27);
  }

  else
  {
    v55 = v10;
    swift_getKeyPath();
    v30 = v61;
    *&v64 = v61;
    sub_1DAECDEFC();

    v23(v19, v30 + v22, v13);
    v31 = sub_1DAE4B018();
    v24(v19, v13);
    if (*(v31 + 16))
    {
      v32 = v49;
      v33 = v47;
      v34 = v50;
      (*(v49 + 16))(v47, v31 + ((*(v32 + 80) + 32) & ~*(v32 + 80)), v50);

      v35 = v45;
      sub_1DAECDD2C();
      v36 = sub_1DAECDCFC();
      v38 = v37;
      (*(v46 + 8))(v35, v48);
      v62 = v36;
      v63 = v38;
      sub_1DAED076C();
      v39 = v65;
      v40 = v44;
      *(v44 + 2) = v64;
      *(v40 + 48) = v39;
      v41 = v59;
      v42 = v61;
      *(v40 + *(v59 + 28)) = v61;
      *v40 = swift_getKeyPath();
      *(v40 + 8) = 0;
      *(v40 + 16) = 0;
      *(v40 + 24) = v42;
      (*(v32 + 32))(v40 + *(v41 + 24), v33, v34);
      v43 = v55;
      sub_1DADF714C(v40, v55);
      sub_1DAE4C6D4(v43, v58);
      swift_storeEnumTagMultiPayload();
      sub_1DAD64B94(&qword_1ECC09B48, &qword_1ECC09B50, &qword_1DAEDB7F8, MEMORY[0x1E69817F8]);
      sub_1DAE4C68C(&qword_1ECC09B58, type metadata accessor for _InProcessActivityInstanceView, &unk_1DAED6DC0);

      sub_1DAECFB1C();
      return sub_1DAE4C738(v43);
    }

    else
    {

      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1DAE4BD64@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v48 = a2;
  v3 = sub_1DAECDD3C();
  v4 = *(v3 - 8);
  v49 = v3;
  v50 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for _InProcessActivityInstanceView(0);
  v8 = v7 - 8;
  MEMORY[0x1EEE9AC00](v7);
  v47 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v46 = &v40 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v40 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v40 - v16;
  v18 = *(v8 + 32);
  *(&v40 + v18 - v16) = 1;
  v44 = *MEMORY[0x1E6985910];
  v19 = v44;
  v20 = sub_1DAED182C();
  v21 = *(v20 - 8);
  v43 = *(v21 + 104);
  v45 = v21 + 104;
  v43(&v17[v18], v19, v20);
  swift_retain_n();
  sub_1DAECDD2C();
  v22 = sub_1DAECDCFC();
  v24 = v23;
  v25 = *(v50 + 8);
  v50 += 8;
  v25(v6, v49);
  *&v53 = v22;
  *(&v53 + 1) = v24;
  sub_1DAED076C();
  v26 = v56;
  *(v17 + 2) = v55;
  *(v17 + 6) = v26;
  *&v17[*(v8 + 36)] = a1;
  *v17 = swift_getKeyPath();
  *(v17 + 1) = 0;
  v17[16] = 0;
  *(v17 + 3) = a1;

  sub_1DAED091C();
  sub_1DAECF15C();
  v27 = v55;
  v42 = v56;
  v41 = v58;
  v40 = v59;
  v62 = 1;
  v61 = BYTE8(v55);
  v60 = v57;
  v28 = *(v8 + 32);
  v14[v28] = 2;
  v43(&v14[v28], v44, v20);
  sub_1DAECDD2C();
  v29 = sub_1DAECDCFC();
  v31 = v30;
  v25(v6, v49);
  v51 = v29;
  v52 = v31;
  sub_1DAED076C();
  v32 = v54;
  *(v14 + 2) = v53;
  *(v14 + 6) = v32;
  *&v14[*(v8 + 36)] = a1;
  *v14 = swift_getKeyPath();
  *(v14 + 1) = 0;
  v14[16] = 0;
  *(v14 + 3) = a1;
  v33 = v46;
  sub_1DAE4C6D4(v17, v46);
  LOBYTE(v6) = v62;
  LOBYTE(v29) = v61;
  LOBYTE(v31) = v60;
  v34 = v47;
  sub_1DAE4C6D4(v14, v47);
  v35 = v48;
  sub_1DAE4C6D4(v33, v48);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09B80, &qword_1DAEDB870);
  v37 = v35 + *(v36 + 48);
  *v37 = 0;
  *(v37 + 8) = v6;
  *(v37 + 16) = v27;
  *(v37 + 24) = v29;
  *(v37 + 32) = v42;
  *(v37 + 40) = v31;
  v38 = v40;
  *(v37 + 48) = v41;
  *(v37 + 56) = v38;
  sub_1DAE4C6D4(v34, v35 + *(v36 + 64));

  sub_1DAE4C738(v14);
  sub_1DAE4C738(v17);
  sub_1DAE4C738(v34);
  return sub_1DAE4C738(v33);
}

uint64_t sub_1DAE4C194()
{
  v1 = sub_1DAECF8EC();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  v6 = *(v0 + 8);

  if ((v6 & 1) == 0)
  {
    sub_1DAED202C();
    v7 = sub_1DAED001C();
    sub_1DAECECEC();

    sub_1DAECF8DC();
    swift_getAtKeyPath();
    v8 = j__swift_release(v5);
    (*(v2 + 8))(v4, v1, v8);
    v5 = v11;
  }

  if (!v5)
  {
    v11 = sub_1DAED063C();
    return sub_1DAECF16C();
  }

  return v5;
}

uint64_t sub_1DAE4C300@<X0>(void *a1@<X8>)
{
  sub_1DAE4B5D8(*v1, *(v1 + 8), *(v1 + 16), a1);
  v3 = sub_1DAE4C194();
  v4 = sub_1DAED004C();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09B18, &qword_1DAEDB6D0);
  v6 = a1 + *(result + 36);
  *v6 = v3;
  v6[8] = v4;
  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1DAE4C3CC(uint64_t a1, int a2)
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

uint64_t sub_1DAE4C414(uint64_t result, int a2, int a3)
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

unint64_t sub_1DAE4C464()
{
  result = qword_1ECC09B20;
  if (!qword_1ECC09B20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC09B18, &qword_1DAEDB6D0);
    sub_1DAE4C51C();
    sub_1DAD64B94(&qword_1ECC09B60, &qword_1ECC09B68, &qword_1DAEDB800, MEMORY[0x1E6980468]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC09B20);
  }

  return result;
}

unint64_t sub_1DAE4C51C()
{
  result = qword_1ECC09B28;
  if (!qword_1ECC09B28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC09B30, &qword_1DAEDB7E8);
    sub_1DAE4C5A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC09B28);
  }

  return result;
}

unint64_t sub_1DAE4C5A0()
{
  result = qword_1ECC09B38;
  if (!qword_1ECC09B38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC09B40, &qword_1DAEDB7F0);
    sub_1DAD64B94(&qword_1ECC09B48, &qword_1ECC09B50, &qword_1DAEDB7F8, MEMORY[0x1E69817F8]);
    sub_1DAE4C68C(&qword_1ECC09B58, type metadata accessor for _InProcessActivityInstanceView, &unk_1DAED6DC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC09B38);
  }

  return result;
}

uint64_t sub_1DAE4C68C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1DAE4C6D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for _InProcessActivityInstanceView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DAE4C738(uint64_t a1)
{
  v2 = type metadata accessor for _InProcessActivityInstanceView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DAE4C794(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09B50, &qword_1DAEDB7F8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DAE4C804(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09B50, &qword_1DAEDB7F8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t WidgetActivityInstanceContentConfiguration.preferredColorScheme.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for WidgetActivityInstanceContentConfiguration(0) + 24);

  return sub_1DAD69C4C(v3, a1);
}

uint64_t type metadata accessor for WidgetActivityInstanceContentConfiguration(uint64_t a1)
{
  result = qword_1ECC09B88;
  if (!qword_1ECC09B88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t WidgetActivityInstanceContentConfiguration.preferredColorScheme.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for WidgetActivityInstanceContentConfiguration(0) + 24);

  return sub_1DAD69CBC(a1, v3);
}

uint64_t WidgetActivityInstanceContentConfiguration.inheritedColorScheme.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for WidgetActivityInstanceContentConfiguration(0) + 28);

  return sub_1DAD69C4C(v3, a1);
}

uint64_t WidgetActivityInstanceContentConfiguration.inheritedColorScheme.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for WidgetActivityInstanceContentConfiguration(0) + 28);

  return sub_1DAD69CBC(a1, v3);
}

uint64_t WidgetActivityInstanceContentConfiguration.init()@<X0>(char *a1@<X8>)
{
  *a1 = 0;
  v2 = type metadata accessor for WidgetActivityInstanceContentConfiguration(0);
  v3 = *(v2 + 24);
  v4 = sub_1DAECF0AC();
  v7 = *(*(v4 - 8) + 56);
  (v7)((v4 - 8), &a1[v3], 1, 1, v4);
  v5 = &a1[*(v2 + 28)];

  return v7(v5, 1, 1, v4);
}

void sub_1DAE4CBA0(uint64_t a1)
{
  sub_1DAD69A3C(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_1DAE4CC1C()
{
  v1 = *(v0 + OBJC_IVAR____TtC14WidgetRenderer31DataProtectionSuspensionMonitor_lock);

  os_unfair_lock_lock(v1 + 4);
  sub_1DADBD36C();
  os_unfair_lock_unlock(v1 + 4);

  if (qword_1EE00AC70 != -1)
  {
    swift_once();
  }

  v2 = sub_1DAECEDEC();
  __swift_project_value_buffer(v2, qword_1EE011BA0);
  v3 = sub_1DAECEDCC();
  v4 = sub_1DAED203C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1DAD61000, v3, v4, "Application suspending", v5, 2u);
    MEMORY[0x1E127F100](v5, -1, -1);
  }

  return sub_1DAD66680();
}

id sub_1DAE4CDD4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DataProtectionSuspensionMonitor();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *LayerSnapshotter.__allocating_init(renderBoxFormat:coreAnimationFormat:logger:screenshotManager:dataProtectionMonitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v39 = a4;
  v40 = a5;
  v8 = sub_1DAECEDEC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v35 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v34 - v12;
  v14 = type metadata accessor for RBImageSnapshotter(0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for RBLayer.SnapshotFormat(0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = a1;
  sub_1DAD932D0(a1, v19, type metadata accessor for RBLayer.SnapshotFormat);
  sub_1DAD933A0(v19, v16, type metadata accessor for RBImageSnapshotter.RBImageOptions);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08148, &unk_1DAEDB950);
  v20 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08150, &unk_1DAED6460);
  v21 = swift_allocObject();
  sub_1DAD933A0(v16, v21 + *(*v21 + 128), type metadata accessor for RBImageSnapshotter);
  *(v20 + 16) = v21;
  v37 = a2;
  v34 = sub_1DAD93568();
  v22 = *(v9 + 16);
  v36 = a3;
  v22(v13, a3, v8);
  sub_1DAD648F8(v40, v41);
  if (qword_1EE00B1D0 != -1)
  {
    swift_once();
  }

  v23 = qword_1EE011BC8;
  type metadata accessor for LayerSnapshotter(0);
  v24 = swift_allocObject();
  *(v24 + 5) = MEMORY[0x1E69E7CD0];
  type metadata accessor for UnfairLock();
  v25 = swift_allocObject();
  v26 = v23;
  v27 = swift_slowAlloc();
  *v27 = 0;
  *(v25 + 16) = v27;
  *(v24 + 6) = v25;
  v28 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08158, &unk_1DAEDB960);
  v29 = swift_allocObject();
  *(v29 + 16) = v20;
  *(v28 + 16) = v29;
  *(v24 + 3) = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08160, &unk_1DAED6470);
  v30 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08168, &unk_1DAEDB970);
  v31 = swift_allocObject();
  *(v31 + 16) = v34;
  *(v30 + 16) = v31;
  *(v24 + 2) = v30;
  v22(&v24[OBJC_IVAR____TtC14WidgetRenderer16LayerSnapshotter_logger], v13, v8);
  v22(v35, v13, v8);
  sub_1DAECED4C();
  __swift_destroy_boxed_opaque_existential_1Tm(v40);
  v32 = *(v9 + 8);
  v32(v36, v8);
  sub_1DAE4D868(v37, type metadata accessor for CALayer.SnapshotFormat);
  sub_1DAE4D868(v38, type metadata accessor for RBLayer.SnapshotFormat);
  v32(v13, v8);
  *(v24 + 4) = v39;
  sub_1DADD7B84(v41, &v24[OBJC_IVAR____TtC14WidgetRenderer16LayerSnapshotter_dataProtectionMonitor]);
  *(v24 + 7) = v26;
  return v24;
}

uint64_t static RBImageSnapshotter.RBImageOptions.default.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EE00B170 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for RBImageSnapshotter.RBImageOptions(0);
  v3 = __swift_project_value_buffer(v2, qword_1EE00B178);
  swift_beginAccess();
  return sub_1DAD932D0(v3, a1, type metadata accessor for RBImageSnapshotter.RBImageOptions);
}

uint64_t static RBImageSnapshotter.RBImageOptions.default.setter(uint64_t a1)
{
  if (qword_1EE00B170 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for RBImageSnapshotter.RBImageOptions(0);
  v3 = __swift_project_value_buffer(v2, qword_1EE00B178);
  swift_beginAccess();
  sub_1DAE4D8C8(a1, v3);
  swift_endAccess();
  return sub_1DAE4D868(a1, type metadata accessor for RBImageSnapshotter.RBImageOptions);
}

uint64_t (*static RBImageSnapshotter.RBImageOptions.default.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_1EE00B170 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for RBImageSnapshotter.RBImageOptions(0);
  __swift_project_value_buffer(v1, qword_1EE00B178);
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_1DAE4D508()
{
  v0 = sub_1DAECDFCC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = (&v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = type metadata accessor for CAMLSnapshotter.CAMLOptions(0);
  __swift_allocate_value_buffer(v4, qword_1ECC09BD8);
  v5 = __swift_project_value_buffer(v4, qword_1ECC09BD8);
  *v3 = 0x3FE999999999999ALL;
  (*(v1 + 104))(v3, *MEMORY[0x1E6993F68], v0);
  v6 = sub_1DADDC83C(MEMORY[0x1E69E7CC0]);
  *v5 = 1;
  result = (*(v1 + 32))(&v5[*(v4 + 20)], v3, v0);
  *&v5[*(v4 + 24)] = v6;
  return result;
}

uint64_t static CAMLSnapshotter.CAMLOptions.default.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ECC07A28 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for CAMLSnapshotter.CAMLOptions(0);
  v3 = __swift_project_value_buffer(v2, qword_1ECC09BD8);
  return sub_1DAD932D0(v3, a1, type metadata accessor for CAMLSnapshotter.CAMLOptions);
}

uint64_t static RBLayer.SnapshotFormat.default.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EE00A940 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for RBLayer.SnapshotFormat(0);
  v3 = __swift_project_value_buffer(v2, qword_1EE00A948);
  return sub_1DAD932D0(v3, a1, type metadata accessor for RBLayer.SnapshotFormat);
}

uint64_t sub_1DAE4D754()
{
  v0 = type metadata accessor for CALayer.SnapshotFormat(0);
  __swift_allocate_value_buffer(v0, qword_1ECC09BF0);
  v1 = __swift_project_value_buffer(v0, qword_1ECC09BF0);
  v2 = type metadata accessor for CAMLSnapshotter.CAMLOptions(0);
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 1, 1, v2);
}

uint64_t static CALayer.SnapshotFormat.default.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ECC07A38 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for CALayer.SnapshotFormat(0);
  v3 = __swift_project_value_buffer(v2, qword_1ECC09BF0);
  return sub_1DAD932D0(v3, a1, type metadata accessor for CALayer.SnapshotFormat);
}

uint64_t sub_1DAE4D868(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1DAE4D8C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RBImageSnapshotter.RBImageOptions(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void sub_1DAE4D92C(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 32);
  *(v3 + 32) = v2;
  v5 = v2;
}

id sub_1DAE4D984()
{
  swift_beginAccess();
  v1 = *(v0 + 32);

  return v1;
}

void sub_1DAE4D9C8(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 32);
  *(v1 + 32) = a1;
}

uint64_t sub_1DAE4DB00@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, uint64_t (*a3)(void)@<X4>, uint64_t a4@<X8>)
{
  v6 = *a1;
  v7 = *a2;
  swift_beginAccess();
  v8 = a3(0);
  return (*(*(v8 - 8) + 16))(a4, v6 + v7, v8);
}

uint64_t sub_1DAE4DB90(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t *a6)
{
  v9 = (a5)(0, a2, a3, a4);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v17 - v12;
  (*(v10 + 16))(&v17 - v12, a1, v9, v11);
  v14 = *a2;
  v15 = *a6;
  swift_beginAccess();
  (*(v10 + 40))(v14 + v15, v13, v9);
  return swift_endAccess();
}

uint64_t sub_1DAE4DCC8@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *a1;
  swift_beginAccess();
  v7 = a2(0);
  return (*(*(v7 - 8) + 16))(a3, v3 + v6, v7);
}

uint64_t sub_1DAE4DD74(uint64_t a1, uint64_t *a2, uint64_t (*a3)(void))
{
  v6 = *a2;
  swift_beginAccess();
  v7 = a3(0);
  (*(*(v7 - 8) + 40))(v3 + v6, a1, v7);
  return swift_endAccess();
}

uint64_t sub_1DAE4DE68(uint64_t a1, uint64_t *a2)
{
  sub_1DAD648F8(a1, v6);
  v3 = *a2;
  v4 = OBJC_IVAR____TtC14WidgetRenderer16LayerSnapshotter_dataProtectionMonitor;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1Tm((v3 + v4));
  sub_1DADD7B84(v6, v3 + v4);
  return swift_endAccess();
}

uint64_t sub_1DAE4DED4@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC14WidgetRenderer16LayerSnapshotter_dataProtectionMonitor;
  swift_beginAccess();
  return sub_1DAD648F8(v1 + v3, a1);
}

uint64_t sub_1DAE4DF2C(__int128 *a1)
{
  v3 = OBJC_IVAR____TtC14WidgetRenderer16LayerSnapshotter_dataProtectionMonitor;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1Tm((v1 + v3));
  sub_1DADD7B84(a1, v1 + v3);
  return swift_endAccess();
}

unint64_t LayerSnapshotter.Result.description.getter()
{
  v1 = *v0;
  if (!*(v0 + 16))
  {
    v5 = 0;
    sub_1DAED256C();
    MEMORY[0x1E127DA50](0xD000000000000022, 0x80000001DAEE3B60);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC087B8, &unk_1DAED7200);
    sub_1DAED264C();
LABEL_7:
    MEMORY[0x1E127DA50](41, 0xE100000000000000);
    return v5;
  }

  v2 = *(v0 + 8);
  if (*(v0 + 16) != 1)
  {
    sub_1DAED256C();

    v5 = 0xD000000000000020;
    MEMORY[0x1E127DA50](v1, v2);
    goto LABEL_7;
  }

  result = 0xD00000000000001BLL;
  if (!v1)
  {
    return result;
  }

  v5 = 0;
  v4 = v1;
  sub_1DAED256C();
  MEMORY[0x1E127DA50](0xD000000000000034, 0x80000001DAEE3B20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC087B8, &unk_1DAED7200);
  sub_1DAED264C();
  MEMORY[0x1E127DA50](41, 0xE100000000000000);
  sub_1DADE62C4(v1, v2, 1u);
  return v5;
}

uint64_t sub_1DAE4E1DC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t *), uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = sub_1DAECDBFC();
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v48 = a1;
    v49 = 0;
    v50 = 0;
    v21 = a1;
    sub_1DAE50204(&v48, a3, a4, a5, a6);
    sub_1DADE62C4(v48, v49, v50);
  }

  else
  {
    v44 = v18;
    v45 = v17;
    v46 = a6;
    v47 = a2;
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08338, &unk_1DAEDB980);
    v23 = 16;
    if (*(a7 + *(v22 + 44) + 8))
    {
      v23 = 24;
    }

    v24 = (*(**(*(a3 + v23) + 16) + 96))();
    sub_1DAE4E5F4(v24, v25);

    sub_1DAE4E8F8(*(a7 + 16), *(a7 + 24));
    v26 = [objc_opt_self() defaultManager];
    v27 = sub_1DAED188C();
    sub_1DAEBC784(v27);

    if (qword_1EE005E48 != -1)
    {
      swift_once();
    }

    v29 = sub_1DAECEDEC();
    __swift_project_value_buffer(v29, qword_1EE011748);
    v30 = v44;
    (*(v44 + 16))(v20, a8, v45);
    v31 = sub_1DAECEDCC();
    v32 = sub_1DAED200C();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v42 = v33;
      v43 = swift_slowAlloc();
      v48 = v43;
      *v33 = 136315138;
      sub_1DAD8E24C(&qword_1EE00BD10, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
      v34 = v45;
      v35 = sub_1DAED287C();
      v37 = v36;
      (*(v30 + 8))(v20, v34);
      v38 = sub_1DAD6482C(v35, v37, &v48);

      v39 = v42;
      *(v42 + 1) = v38;
      v40 = v39;
      _os_log_impl(&dword_1DAD61000, v31, v32, "Saved snapshot to URL: %s", v39, 0xCu);
      v41 = v43;
      __swift_destroy_boxed_opaque_existential_1Tm(v43);
      MEMORY[0x1E127F100](v41, -1, -1);
      MEMORY[0x1E127F100](v40, -1, -1);
    }

    else
    {

      (*(v30 + 8))(v20, v45);
    }

    v48 = 0;
    v49 = 0;
    v50 = 1;
    sub_1DAE50204(&v48, a3, a4, a5, v46);
  }

  return sub_1DAED0D4C();
}

double sub_1DAE4E5F4(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC09EC0, &qword_1DAED7970);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v19 - v4;
  v20 = sub_1DAECD9BC();
  v6 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1DAED1D3C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAED1D2C();
  v13 = sub_1DAED1CFC();
  v15 = v14;
  (*(v10 + 8))(v12, v9);
  if (v15 >> 60 == 15)
  {
    sub_1DAECD9AC();
    v16 = sub_1DAECDBFC();
    v17 = *(v16 - 8);
    (*(v17 + 16))(v5, v2, v16);
    (*(v17 + 56))(v5, 0, 1, v16);
    sub_1DAECD9CC();
    sub_1DAD64398(v5, &unk_1ECC09EC0, &qword_1DAED7970);
    (*(v6 + 8))(v8, v20);
    swift_willThrow();
  }

  else
  {
    v19[2] = v13;
    v19[3] = v15;
    sub_1DADA7F5C();
    sub_1DAECDB5C();
    return sub_1DADAF698(v13, v15);
  }

  return result;
}

double sub_1DAE4E8F8(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC09EC0, &qword_1DAED7970);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v20 - v6;
  v24 = sub_1DAECD9BC();
  v21 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1DAED1D3C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v20 = v3;
    sub_1DAED1D2C();
    v14 = sub_1DAED1CFC();
    v16 = v15;
    (*(v11 + 8))(v13, v10);
    if (v16 >> 60 == 15)
    {
      sub_1DAECD9AC();
      v17 = sub_1DAECDBFC();
      v18 = *(v17 - 8);
      (*(v18 + 16))(v7, v2, v17);
      (*(v18 + 56))(v7, 0, 1, v17);
      sub_1DAECD9CC();
      sub_1DAD64398(v7, &unk_1ECC09EC0, &qword_1DAED7970);
      (*(v21 + 8))(v9, v24);
      swift_willThrow();
    }

    else
    {
      v22 = v14;
      v23 = v16;
      sub_1DADA7F5C();
      sub_1DAECDB5C();
      return sub_1DADAF698(v14, v16);
    }
  }

  else
  {
    sub_1DAECDB6C();
  }

  return result;
}

uint64_t sub_1DAE4EC30@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = v4;
  v56 = a1;
  v47 = a4;
  v53 = sub_1DAECED2C();
  v8 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v55 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = a2;
  v49 = a3;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  MEMORY[0x1EEE9AC00](v58);
  v57 = &v46 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08330, &unk_1DAED6540);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v52 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v46 - v14;
  v16 = sub_1DAED18CC();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(v7 + 8);
  v59 = *v7;
  v21 = *(v7 + 24);
  v50 = *(v7 + 16);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08338, &unk_1DAEDB980);
  v23 = *(v22 + 36);
  v54 = v17;
  v24 = *(v17 + 16);
  v24(v19, v7 + v23, v16);
  v25 = v7 + *(v22 + 40);
  v26 = v53;
  (*(v8 + 16))(v15, v25, v53);
  v27 = v8;
  v28 = v8;
  v29 = v20;
  v30 = v57;
  (*(v27 + 56))(v15, 0, 1, v26);
  *v30 = v59;
  *(v30 + 1) = v29;
  v51 = v29;
  *(v30 + 2) = v50;
  *(v30 + 3) = v21;
  v24(&v30[*(v58 + 36)], v19, v16);
  v31 = v52;
  v32 = v15;
  sub_1DAD6495C(v15, v52, &qword_1ECC08330, &unk_1DAED6540);
  v33 = *(v28 + 48);
  if (v33(v31, 1, v26) == 1)
  {
    v50 = v16;
    sub_1DAED298C();

    v34 = v59;
    v35 = v51;
    sub_1DAED229C();

    v36 = sub_1DAED296C();
    v38 = v54;
    v37 = v55;
    if ((v36 & 0x8000000000000000) == 0)
    {
      goto LABEL_5;
    }

    v39 = __OFSUB__(0, v36);
    result = -v36;
    if (!v39)
    {
      if ((result & 0x8000000000000000) == 0)
      {
LABEL_5:
        sub_1DAECED3C();
        sub_1DAD64398(v32, &qword_1ECC08330, &unk_1DAED6540);
        (*(v38 + 8))(v19, v50);
        if (v33(v31, 1, v26) != 1)
        {
          sub_1DAD64398(v31, &qword_1ECC08330, &unk_1DAED6540);
        }

        goto LABEL_8;
      }

      __break(1u);
    }

    __break(1u);
    return result;
  }

  v41 = v59;
  v42 = v51;
  sub_1DAD64398(v15, &qword_1ECC08330, &unk_1DAED6540);
  (*(v54 + 8))(v19, v16);
  v37 = v55;
  (*(v28 + 32))(v55, v31, v26);
LABEL_8:
  v44 = v57;
  v43 = v58;
  (*(v28 + 32))(&v57[*(v58 + 40)], v37, v26);
  *(v44 + *(v43 + 44)) = v56;
  sub_1DAD7C48C(v44, v47, v48, v49);
  v45 = v56;

  return v45;
}

uint64_t sub_1DAE4F10C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v40 = a7;
  v41 = a8;
  v38 = a5;
  v39 = a6;
  v36 = a3;
  v42 = a9;
  v43 = a4;
  v11 = sub_1DAECDBFC();
  v32 = v11;
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v34 = v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08338, &unk_1DAEDB980);
  v33 = *(v14 - 8);
  v15 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = v31 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09180, &qword_1DAEDBB90);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v37 = v31 - v19;
  v35 = *(a1 + 24);
  sub_1DAE4EC30(v36, &qword_1ECC09180, &qword_1DAEDBB90, v31 - v19);
  v36 = *(a1 + 56);
  v31[1] = a1;
  sub_1DAD6495C(a2, v17, &qword_1ECC08338, &unk_1DAEDB980);
  v20 = v34;
  (*(v12 + 16))(v34, v43, v11);
  v21 = (*(v33 + 80) + 56) & ~*(v33 + 80);
  v22 = (v15 + *(v12 + 80) + v21) & ~*(v12 + 80);
  v23 = (v13 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  v25 = v39;
  *(v24 + 2) = v38;
  *(v24 + 3) = a1;
  v26 = v40;
  v27 = v41;
  *(v24 + 4) = v25;
  *(v24 + 5) = v26;
  *(v24 + 6) = v27;
  sub_1DAD7C48C(v17, &v24[v21], &qword_1ECC08338, &unk_1DAEDB980);
  (*(v12 + 32))(&v24[v22], v20, v32);
  *&v24[v23] = v42;
  v28 = *(**(v35 + 16) + 104);

  v29 = v37;
  v28(v37, v43, v36, sub_1DAE50C88, v24);

  return sub_1DAD64398(v29, &qword_1ECC09180, &qword_1DAEDBB90);
}

uint64_t sub_1DAE4F450(uint64_t a1, uint64_t a2)
{
  v5 = sub_1DAECDBFC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v18[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  v9 = *(v2 + 32);
  v10 = *a1;
  v11 = v9;
  v12 = [v10 widget];
  v13 = [v10 metrics];
  v14 = [v11 URLForWidget:v12 metrics:v13 attributes:*(a1 + 8) createIntermediateDirectories:0];

  sub_1DAECDBBC();
  v19 = v8;
  type metadata accessor for SnapshotRequest(0, a2, v15, v16);
  LOBYTE(v13) = sub_1DAEC94AC(sub_1DAE4F708);
  (*(v6 + 8))(v8, v5);
  return v13 & 1;
}

uint64_t sub_1DAE4F60C()
{
  v0 = sub_1DAED1D3C();
  MEMORY[0x1EEE9AC00](v0 - 8);
  sub_1DADBCF28();
  sub_1DAECDB4C();
  sub_1DAED1D2C();
  v1 = sub_1DAED1D0C();
  sub_1DAD70BB4(v3, v4);
  return v1;
}

uint64_t sub_1DAE4F710@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v33[0] = a2;
  v34[5] = *MEMORY[0x1E69E9840];
  v4 = sub_1DAED1D3C();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = sub_1DAECDBFC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v33 - v10;
  swift_beginAccess();
  v12 = *(v2 + 32);
  v13 = *a1;
  v14 = v12;
  v15 = [v13 widget];
  v16 = [v13 metrics];
  v17 = [v14 URLForWidget:v15 metrics:v16 attributes:*(a1 + 8) createIntermediateDirectories:0];

  sub_1DAECDBBC();
  sub_1DADBCF28();
  sub_1DAECDB4C();
  v24 = v34[0];
  v25 = v34[1];
  sub_1DAED1D2C();
  v26 = sub_1DAED1D0C();
  v28 = v27;
  sub_1DAD70BB4(v24, v25);
  v29 = *(a1 + 24);
  if (!v29)
  {
    if (v28)
    {
LABEL_12:

LABEL_13:
      v31 = v33[0];
      (*(v6 + 32))(v33[0], v11, v5);
      v30 = 0;
      return (*(v6 + 56))(v31, v30, 1, v5);
    }

LABEL_2:
    v18 = [objc_opt_self() defaultManager];
    sub_1DAECDB9C();
    v19 = sub_1DAECDB8C();
    (*(v6 + 8))(v8, v5);
    v34[0] = 0;
    v20 = [v18 createDirectoryAtURL:v19 withIntermediateDirectories:1 attributes:0 error:v34];

    if (v20)
    {
      v21 = v34[0];
    }

    else
    {
      v22 = v34[0];
      v23 = sub_1DAECDB1C();

      swift_willThrow();
    }

    goto LABEL_13;
  }

  if (!v28)
  {
    goto LABEL_2;
  }

  if ((v26 != *(a1 + 16) || v28 != v29) && (sub_1DAED289C() & 1) == 0)
  {
    goto LABEL_12;
  }

  (*(v6 + 8))(v11, v5);

  v30 = 1;
  v31 = v33[0];
  return (*(v6 + 56))(v31, v30, 1, v5);
}

uint64_t sub_1DAE4FAF8(void *a1)
{
  v2 = v1;
  v4 = *(v2 + 48);
  os_unfair_lock_lock(*(v4 + 16));
  swift_beginAccess();
  v5 = a1;
  LOBYTE(a1) = sub_1DAE87E8C(&v10, v5);
  v6 = v10;
  swift_endAccess();

  os_unfair_lock_unlock(*(v4 + 16));
  result = 0;
  if (a1)
  {
    v8 = swift_allocObject();
    *(v8 + 16) = v2;
    *(v8 + 24) = v5;
    sub_1DAED0D5C();
    v9 = v5;

    return sub_1DAED0D6C();
  }

  return result;
}

void sub_1DAE4FBE4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 48);
  os_unfair_lock_lock(*(v3 + 16));
  swift_beginAccess();
  v4 = sub_1DAEC50B0(a2);
  swift_endAccess();

  os_unfair_lock_unlock(*(v3 + 16));
}

uint64_t LayerSnapshotter.deinit()
{

  v1 = OBJC_IVAR____TtC14WidgetRenderer16LayerSnapshotter_logger;
  v2 = sub_1DAECEDEC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC14WidgetRenderer16LayerSnapshotter_signposter;
  v4 = sub_1DAECED6C();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC14WidgetRenderer16LayerSnapshotter_dataProtectionMonitor));
  return v0;
}

uint64_t LayerSnapshotter.__deallocating_deinit()
{
  LayerSnapshotter.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1DAE4FD94(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RBImageSnapshotter.RBImageOptions(0);

  return MEMORY[0x1EEE6BEB8](a1, a2, v4, sub_1DADD0D70);
}

uint64_t sub_1DAE4FDEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for RBImageSnapshotter.RBImageOptions(0);

  return MEMORY[0x1EEE6C118](a1, a2, a3, v6, sub_1DADD0DE8);
}

uint64_t sub_1DAE500B4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_1DAE500FC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

uint64_t sub_1DAE50158(uint64_t a1, unsigned int a2)
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

uint64_t sub_1DAE501A0(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1DAE50204(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t *), uint64_t a5)
{
  v64 = a5;
  v65 = a4;
  v7 = sub_1DAECED7C();
  v56 = *(v7 - 8);
  v57 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v55 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_1DAECED2C();
  v61 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v10 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1DAECED6C();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a1;
  v16 = *(a1 + 8);
  LODWORD(v17) = *(a1 + 16);
  v18 = OBJC_IVAR____TtC14WidgetRenderer16LayerSnapshotter_signposter;
  swift_beginAccess();
  (*(v12 + 16))(v14, a2 + v18, v11);
  sub_1DADE629C(v15, v16, v17);
  sub_1DADE629C(v15, v16, v17);
  v19 = sub_1DAECED5C();
  sub_1DAECED8C();
  v58 = sub_1DAED219C();
  v62 = v19;
  if (sub_1DAED230C())
  {
    v54 = v14;
    v52 = v10;
    v51 = v12;
    v53 = v11;
    v20 = v61;
    sub_1DADE62C4(v15, v16, v17);
    v59 = v15;
    v60 = v17;
    sub_1DADE62C4(v15, v16, v17);

    v21 = v55;
    sub_1DAECEDBC();

    v23 = v56;
    v22 = v57;
    if ((*(v56 + 88))(v21, v57) == *MEMORY[0x1E69E93E8])
    {
      v24 = 0;
      v25 = "[Error] Interval already ended";
    }

    else
    {
      (*(v23 + 8))(v21, v22);
      v25 = "<snapshotTaken?>=%{name=snapshotTaken,public}s <error?>=%{name=error,public}s";
      v24 = 2;
    }

    v26 = v20;
    v27 = v54;
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v68 = v29;
    *v28 = v24;
    *(v28 + 1) = v24;
    *(v28 + 2) = 2082;
    v30 = v53;
    v61 = v29;
    if (v60 != 2)
    {
      if (v60 == 1)
      {
        v31 = 0xE300000000000000;
        v32 = sub_1DAD6482C(5457241, 0xE300000000000000, &v68);

        *(v28 + 4) = v32;
        *(v28 + 12) = 2082;
        if (!v59)
        {
          v33 = 7104878;
LABEL_13:
          v45 = sub_1DAD6482C(v33, v31, &v68);

          *(v28 + 14) = v45;
          v46 = v52;
          v47 = sub_1DAECED0C();
          v48 = v62;
          _os_signpost_emit_with_name_impl(&dword_1DAD61000, v62, v58, v47, "LayerSnapshotting", v25, v28, 0x16u);
          v17 = v61;
          swift_arrayDestroy();
          MEMORY[0x1E127F100](v17, -1, -1);
          MEMORY[0x1E127F100](v28, -1, -1);

          (*(v26 + 8))(v46, v63);
          (*(v51 + 8))(v27, v30);
          v15 = v59;
          LOBYTE(v17) = v60;
          goto LABEL_14;
        }
      }

      else
      {
        v35 = sub_1DAD6482C(20302, 0xE200000000000000, &v68);

        *(v28 + 4) = v35;
        *(v28 + 12) = 2082;
      }

      v36 = v59;
      swift_getErrorValue();
      v37 = v66;
      v38 = v67;
      v39 = v25;
      v40 = v30;
      v41 = v60;
      sub_1DADE629C(v36, v16, v60);
      v33 = sub_1DADBBC8C(v37, v38);
      v31 = v42;
      v43 = v36;
      v27 = v54;
      v44 = v41;
      v30 = v40;
      v25 = v39;
      v26 = v20;
      sub_1DADE62C4(v43, v16, v44);
      goto LABEL_13;
    }

    v33 = 7104878;
    v69 = 673206094;
    v70 = 0xE400000000000000;
    MEMORY[0x1E127DA50](v59, v16);
    MEMORY[0x1E127DA50](41, 0xE100000000000000);
    v34 = sub_1DAD6482C(v69, v70, &v68);

    *(v28 + 4) = v34;
    *(v28 + 12) = 2082;
    v31 = 0xE300000000000000;
    goto LABEL_13;
  }

  sub_1DADE62C4(v15, v16, v17);
  sub_1DADE62C4(v15, v16, v17);
  (*(v61 + 8))(v10, v63);
  (*(v12 + 8))(v14, v11);
LABEL_14:
  v69 = v15;
  v70 = v16;
  v71 = v17;
  return v65(&v69);
}

uint64_t sub_1DAE50820()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08338, &unk_1DAEDB980) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(sub_1DAECDBFC() - 8);
  v5 = (v3 + *(v4 + 80) + 8) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  return sub_1DAE4F10C(*(v0 + 16), v0 + v2, *(v0 + v3), v0 + v5, *(v0 + v6), *(v0 + v7), *(v0 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), *(v0 + ((((v7 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t objectdestroy_46Tm()
{
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08338, &unk_1DAEDB980) - 8);
  v2 = (*(*v1 + 80) + 56) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = sub_1DAECDBFC();
  v5 = *(v4 - 8);
  v6 = (v2 + v3 + *(v5 + 80)) & ~*(v5 + 80);

  v7 = (v0 + v2);

  v8 = v1[11];
  v9 = sub_1DAED18CC();
  (*(*(v9 - 8) + 8))(v7 + v8, v9);
  v10 = v1[12];
  v11 = sub_1DAECED2C();
  (*(*(v11 - 8) + 8))(v7 + v10, v11);

  (*(v5 + 8))(v0 + v6, v4);

  return swift_deallocObject();
}

uint64_t sub_1DAE50B68(void *a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08338, &unk_1DAEDB980) - 8);
  v4 = (*(v3 + 80) + 56) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_1DAECDBFC() - 8);
  return sub_1DAE4E1DC(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48), v1 + v4, v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80)));
}

uint64_t sub_1DAE50CB0()
{
  [objc_allocWithZone(MEMORY[0x1E69E58C0]) init];
  type metadata accessor for WidgetSceneContentViewController(0);

  return swift_dynamicCastClassUnconditional();
}

uint64_t sub_1DAE50D14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v223 = a2;
  v224 = sub_1DAECE43C();
  v5 = *(v224 - 8);
  MEMORY[0x1EEE9AC00](v224);
  v7 = &v211 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v211 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC09EC0, &qword_1DAED7970);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v222 = (&v211 - v12);
  v13 = sub_1DAECDBFC();
  v226 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v216 = &v211 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v229 = &v211 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v225 = &v211 - v18;
  v19 = sub_1DAED1F2C();
  v219 = *(v19 - 8);
  v220 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v211 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07CD0, &qword_1DAED6560);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v24 = &v211 - v23;
  v25 = *(a1 + 56);
  if (v25)
  {
    v26 = v25;
    if (![v26 supportsInteraction])
    {
      if (qword_1EE005E88 != -1)
      {
        swift_once();
      }

      v77 = sub_1DAECEDEC();
      __swift_project_value_buffer(v77, qword_1EE0117D8);

      v78 = sub_1DAECEDCC();
      v79 = sub_1DAED201C();

      if (os_log_type_enabled(v78, v79))
      {
        v80 = swift_slowAlloc();
        v81 = swift_slowAlloc();
        v230[0] = v81;
        *v80 = 136446210;
        v82 = *(a1 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession_logIdentifier);
        v83 = *(a1 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession_logIdentifier + 8);

        v84 = sub_1DAD6482C(v82, v83, v230);

        *(v80 + 4) = v84;
        _os_log_impl(&dword_1DAD61000, v78, v79, "[%{public}s] launch request ignored; doesn't support interaction", v80, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v81);
        MEMORY[0x1E127F100](v81, -1, -1);
        MEMORY[0x1E127F100](v80, -1, -1);
      }

      goto LABEL_27;
    }
  }

  v215 = v7;
  v218 = v5;
  v27 = qword_1EE005E88;
  v28 = *(a1 + 32);
  if (v27 != -1)
  {
    swift_once();
  }

  v29 = sub_1DAECEDEC();
  v30 = __swift_project_value_buffer(v29, qword_1EE0117D8);

  v31 = v28;
  v227 = v30;
  v32 = sub_1DAECEDCC();
  v33 = sub_1DAED203C();

  v34 = os_log_type_enabled(v32, v33);
  v228 = a1;
  v221 = v13;
  v214 = v21;
  if (v34)
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v217 = v10;
    v37 = a3;
    v38 = v36;
    v230[0] = v36;
    *v35 = 136446466;
    v39 = *(a1 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession_logIdentifier);
    v40 = *(a1 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession_logIdentifier + 8);

    v41 = sub_1DAD6482C(v39, v40, v230);

    *(v35 + 4) = v41;
    *(v35 + 12) = 2082;
    v42 = sub_1DAED22BC();
    v44 = sub_1DAD6482C(v42, v43, v230);

    *(v35 + 14) = v44;
    _os_log_impl(&dword_1DAD61000, v32, v33, "[%{public}s] Widget launch request: %{public}s", v35, 0x16u);
    swift_arrayDestroy();
    v45 = v38;
    a3 = v37;
    v10 = v217;
    MEMORY[0x1E127F100](v45, -1, -1);
    MEMORY[0x1E127F100](v35, -1, -1);
  }

  v46 = v229;
  v47 = [v31 containerBundleIdentifier];
  if (v47)
  {
    v48 = v47;
    v212 = sub_1DAED1CEC();
    v213 = v49;

    v50 = OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession_visibility;
    v51 = v228;
    swift_beginAccess();
    sub_1DAD6495C(v51 + v50, v24, &qword_1ECC07CD0, &qword_1DAED6560);
    v52 = sub_1DAECE55C();
    LODWORD(v50) = (*(*(v52 - 8) + 48))(v24, 1, v52);
    sub_1DAD64398(v24, &qword_1ECC07CD0, &qword_1DAED6560);
    if (v50 == 1)
    {

      v53 = v31;
      v54 = sub_1DAECEDCC();
      v55 = sub_1DAED201C();

      if (os_log_type_enabled(v54, v55))
      {
        v56 = swift_slowAlloc();
        v57 = v31;
        v58 = a3;
        v59 = swift_slowAlloc();
        v230[0] = v59;
        *v56 = 136446466;
        v60 = *(v51 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession_logIdentifier);
        v61 = *(v51 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession_logIdentifier + 8);

        v62 = sub_1DAD6482C(v60, v61, v230);

        *(v56 + 4) = v62;
        *(v56 + 12) = 2082;
        v63 = sub_1DAED22BC();
        v65 = sub_1DAD6482C(v63, v64, v230);

        *(v56 + 14) = v65;
        _os_log_impl(&dword_1DAD61000, v54, v55, "[%{public}s] Tapped widget was not flagged as visible: %{public}s", v56, 0x16u);
        swift_arrayDestroy();
        v66 = v59;
        a3 = v58;
        v31 = v57;
        MEMORY[0x1E127F100](v66, -1, -1);
        MEMORY[0x1E127F100](v56, -1, -1);
      }

      v67 = v214;
      sub_1DAED0ABC();
      v230[0] = 0x3A746567646957;
      v230[1] = 0xE700000000000000;
      v68 = sub_1DAED22BC();
      MEMORY[0x1E127DA50](v68);

      sub_1DAED0AAC();
      sub_1DAED0A9C();

      (*(v219 + 8))(v67, v220);
      v51 = v228;
      v46 = v229;
    }

    v69 = v222;
    sub_1DAD6495C(v223, v222, &unk_1ECC09EC0, &qword_1DAED7970);
    v70 = v226;
    v71 = v221;
    if ((*(v226 + 48))(v69, 1, v221) == 1)
    {
      sub_1DAD64398(v69, &unk_1ECC09EC0, &qword_1DAED7970);
      v72 = [v31 sourceDeviceIdentifier];
      if (v72)
      {
        v73 = v72;

        (*(v218 + 104))(v10, *MEMORY[0x1E6994440], v224);
LABEL_16:
        sub_1DAECE44C();
        v74 = sub_1DAECE47C();
        v75 = *(*(v74 - 8) + 56);
        v76 = a3;
LABEL_77:
        v182 = 0;
        return v75(v76, v182, 1, v74);
      }

      v132 = v213;

      v133 = sub_1DAECEDCC();
      v134 = sub_1DAED203C();

      if (os_log_type_enabled(v133, v134))
      {
        v135 = v31;
        v136 = swift_slowAlloc();
        v137 = swift_slowAlloc();
        v230[0] = v137;
        *v136 = 136446466;
        v138 = *(v228 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession_logIdentifier);
        v139 = *(v228 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession_logIdentifier + 8);

        v140 = sub_1DAD6482C(v138, v139, v230);

        *(v136 + 4) = v140;
        *(v136 + 12) = 2082;
        v141 = sub_1DAD6482C(v212, v132, v230);

        *(v136 + 14) = v141;
        _os_log_impl(&dword_1DAD61000, v133, v134, "[%{public}s] Open application from tap requested: %{public}s", v136, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1E127F100](v137, -1, -1);
        v142 = v136;
        v31 = v135;
        v51 = v228;
        MEMORY[0x1E127F100](v142, -1, -1);
      }

      else
      {
      }

      v170 = MEMORY[0x1E127A0E0](v31);
      v171 = sub_1DAE52778(v51);
      v172 = v31;
      if (!v171)
      {
        *v10 = v170;
        (*(v218 + 104))(v10, *MEMORY[0x1E6994448], v224);
        goto LABEL_16;
      }

      v173 = v171;
      v174 = v172;

      v175 = sub_1DAECEDCC();
      v176 = sub_1DAED203C();

      if (os_log_type_enabled(v175, v176))
      {
        v177 = swift_slowAlloc();
        v178 = swift_slowAlloc();
        v230[0] = v178;
        *v177 = 136446210;
        v179 = *(v51 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession_logIdentifier);
        v180 = *(v51 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession_logIdentifier + 8);

        v181 = sub_1DAD6482C(v179, v180, v230);

        *(v177 + 4) = v181;
        _os_log_impl(&dword_1DAD61000, v175, v176, "[%{public}s] Handled with event publisher.", v177, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v178);
        MEMORY[0x1E127F100](v178, -1, -1);
        MEMORY[0x1E127F100](v177, -1, -1);
      }

      [v173 publishOpenEventWithUserActivity_];
      [v173 deactivate];

      v74 = sub_1DAECE47C();
      v75 = *(*(v74 - 8) + 56);
      v76 = a3;
LABEL_56:
      v182 = 1;
      return v75(v76, v182, 1, v74);
    }

    v217 = v10;
    v229 = v31;
    v223 = a3;
    v95 = v225;
    (*(v70 + 32))(v225, v69, v71);
    v222 = *(v70 + 16);
    v220 = v70 + 16;
    (v222)(v46, v95, v71);

    v96 = v213;

    v97 = sub_1DAECEDCC();
    v98 = sub_1DAED203C();

    if (os_log_type_enabled(v97, v98))
    {
      v99 = v70;
      v100 = swift_slowAlloc();
      v101 = swift_slowAlloc();
      v230[0] = v101;
      *v100 = 136446723;
      v102 = *(v228 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession_logIdentifier);
      v103 = *(v228 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession_logIdentifier + 8);

      v104 = sub_1DAD6482C(v102, v103, v230);

      *(v100 + 4) = v104;
      *(v100 + 12) = 2082;
      v105 = sub_1DAD6482C(v212, v96, v230);

      *(v100 + 14) = v105;
      *(v100 + 22) = 2085;
      sub_1DAE23DD8();
      v106 = sub_1DAED287C();
      v108 = v107;
      v109 = *(v99 + 8);
      v109(v46, v71);
      v110 = sub_1DAD6482C(v106, v108, v230);

      *(v100 + 24) = v110;
      _os_log_impl(&dword_1DAD61000, v97, v98, "[%{public}s] Open application from openURL requested: %{public}s url: %{sensitive}s", v100, 0x20u);
      swift_arrayDestroy();
      v111 = v101;
      v51 = v228;
      MEMORY[0x1E127F100](v111, -1, -1);
      MEMORY[0x1E127F100](v100, -1, -1);
    }

    else
    {

      v109 = *(v70 + 8);
      v109(v46, v71);
    }

    v115 = v215;
    v116 = sub_1DAE52778(v51);
    if (v116)
    {
      v117 = v116;

      v118 = sub_1DAECEDCC();
      v119 = sub_1DAED203C();

      v120 = os_log_type_enabled(v118, v119);
      v121 = v51;
      v122 = v223;
      if (v120)
      {
        v123 = swift_slowAlloc();
        v124 = swift_slowAlloc();
        v230[0] = v124;
        *v123 = 136446210;
        v125 = *(v121 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession_logIdentifier);
        v126 = *(v121 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession_logIdentifier + 8);

        v127 = sub_1DAD6482C(v125, v126, v230);

        *(v123 + 4) = v127;
        _os_log_impl(&dword_1DAD61000, v118, v119, "[%{public}s] Handled with event publisher.", v123, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v124);
        MEMORY[0x1E127F100](v124, -1, -1);
        v128 = v123;
        v71 = v221;
        MEMORY[0x1E127F100](v128, -1, -1);
      }

      v129 = v217;
      v130 = v229;
      v131 = [v229 sourceDeviceIdentifier];
      if (v131)
      {

        (*(v218 + 104))(v129, *MEMORY[0x1E6994440], v224);
        sub_1DAECE44C();

        v109(v225, v71);
        v74 = sub_1DAECE47C();
        v75 = *(*(v74 - 8) + 56);
        v76 = v122;
        goto LABEL_77;
      }

      v168 = v225;
      v169 = sub_1DAECDB8C();
      [v117 publishOpenEventWithURL_];

      [v117 deactivate];
      v109(v168, v71);
      v74 = sub_1DAECE47C();
      v75 = *(*(v74 - 8) + 56);
      v76 = v122;
      goto LABEL_56;
    }

    (v222)(v115, v225, v71);
    v143 = *(v218 + 104);
    v143(v115, *MEMORY[0x1E6994438], v224);
    v144 = OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession__client;
    sub_1DAD648F8(v51 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession__client, v230);
    v145 = v231;
    v146 = v232;
    __swift_project_boxed_opaque_existential_1(v230, v231);
    v147 = (*(v146 + 56))(v229, v145, v146);
    __swift_destroy_boxed_opaque_existential_1Tm(v230);
    if (v147)
    {
      v148 = [v147 entitlements];

      if (v148)
      {
        v149 = [v148 canOpenSystemURLs];

        if (v149)
        {
          v150 = v216;
          sub_1DAED148C();
          v151 = sub_1DAECDBAC();
          v109(v150, v221);
          if (v151)
          {

            v152 = sub_1DAECEDCC();
            v153 = sub_1DAED203C();

            if (os_log_type_enabled(v152, v153))
            {
              v154 = swift_slowAlloc();
              v155 = swift_slowAlloc();
              v230[0] = v155;
              *v154 = 136446210;
              v156 = *(v51 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession_logIdentifier);
              v157 = *(v51 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession_logIdentifier + 8);

              v158 = sub_1DAD6482C(v156, v157, v230);

              *(v154 + 4) = v158;
              _os_log_impl(&dword_1DAD61000, v152, v153, "[%{public}s] Open URL ignored for no-op URL.", v154, 0xCu);
              __swift_destroy_boxed_opaque_existential_1Tm(v155);
              MEMORY[0x1E127F100](v155, -1, -1);
              MEMORY[0x1E127F100](v154, -1, -1);
            }

            (*(v218 + 8))(v215, v224);
            v109(v225, v221);
            v159 = v223;
            v74 = sub_1DAECE47C();
            v75 = *(*(v74 - 8) + 56);
            v76 = v159;
            goto LABEL_56;
          }
        }
      }
    }

    v160 = v229;
    v161 = [v229 sourceDeviceIdentifier];
    if (v161)
    {

      sub_1DAECDBDC();
      v162 = v221;
      v163 = v215;
      if (v164)
      {
        v165 = sub_1DAED1D5C();
        v167 = v166;

        if (v165 == 1886680168 && v167 == 0xE400000000000000)
        {

          v162 = v221;
        }

        else
        {
          v192 = sub_1DAED289C();
          v162 = v221;
          if ((v192 & 1) != 0 || v165 == 0x7370747468 && v167 == 0xE500000000000000)
          {
          }

          else
          {
            v210 = sub_1DAED289C();

            if ((v210 & 1) == 0)
            {
              goto LABEL_76;
            }
          }
        }

        v193 = sub_1DAECEDCC();
        v194 = sub_1DAED203C();

        if (os_log_type_enabled(v193, v194))
        {
          v195 = swift_slowAlloc();
          v196 = swift_slowAlloc();
          v230[0] = v196;
          *v195 = 136446210;
          v197 = *(v51 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession_logIdentifier);
          v198 = *(v51 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession_logIdentifier + 8);

          v199 = sub_1DAD6482C(v197, v198, v230);
          v200 = v224;

          *(v195 + 4) = v199;
          v163 = v215;
          v201 = "[%{public}s] Remote launch http/https launch request.";
LABEL_73:
          _os_log_impl(&dword_1DAD61000, v193, v194, v201, v195, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v196);
          v206 = v196;
          v162 = v221;
          MEMORY[0x1E127F100](v206, -1, -1);
          MEMORY[0x1E127F100](v195, -1, -1);

          (*(v218 + 8))(v163, v200);
LABEL_75:
          (v222)(v163, v225, v162);
          v143(v163, *MEMORY[0x1E6994430], v224);
          goto LABEL_76;
        }

        goto LABEL_74;
      }

LABEL_76:
      v207 = v218;
      v208 = v224;
      (*(v218 + 16))(v217, v163, v224);
      v209 = v223;
      sub_1DAECE44C();
      (*(v207 + 8))(v163, v208);
      v109(v225, v162);
      v74 = sub_1DAECE47C();
      v75 = *(*(v74 - 8) + 56);
      v76 = v209;
      goto LABEL_77;
    }

    sub_1DAD648F8(v51 + v144, v230);
    v183 = v231;
    v184 = v232;
    __swift_project_boxed_opaque_existential_1(v230, v231);
    v185 = (*(v184 + 56))(v160, v183, v184);
    __swift_destroy_boxed_opaque_existential_1Tm(v230);
    v162 = v221;
    v163 = v215;
    if (!v185 || (v186 = [v185 entitlements], v185, !v186) || (v187 = objc_msgSend(v186, sel_canOpenSystemURLs), v186, (v187 & 1) == 0))
    {
      v188 = sub_1DAECDB7C();
      v190 = v189;
      if (v188 == sub_1DAED1CEC() && v190 == v191)
      {
      }

      else
      {
        v202 = sub_1DAED289C();

        if ((v202 & 1) == 0)
        {
          goto LABEL_76;
        }
      }
    }

    v193 = sub_1DAECEDCC();
    v194 = sub_1DAED203C();

    if (os_log_type_enabled(v193, v194))
    {
      v195 = swift_slowAlloc();
      v196 = swift_slowAlloc();
      v230[0] = v196;
      *v195 = 136446210;
      v203 = *(v51 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession_logIdentifier);
      v204 = *(v51 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession_logIdentifier + 8);

      v205 = sub_1DAD6482C(v203, v204, v230);
      v200 = v224;

      *(v195 + 4) = v205;
      v163 = v215;
      v201 = "[%{public}s] Entitled url launch (can open system URLs) requested.";
      goto LABEL_73;
    }

LABEL_74:

    (*(v218 + 8))(v163, v224);
    goto LABEL_75;
  }

  v85 = v228;

  v86 = sub_1DAECEDCC();
  v87 = sub_1DAED201C();

  if (os_log_type_enabled(v86, v87))
  {
    v88 = v31;
    v89 = swift_slowAlloc();
    v90 = swift_slowAlloc();
    v230[0] = v90;
    *v89 = 136446210;
    v91 = v85 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession_logIdentifier;
    v92 = *(v85 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession_logIdentifier);
    v93 = *(v91 + 8);

    v94 = sub_1DAD6482C(v92, v93, v230);

    *(v89 + 4) = v94;
    _os_log_impl(&dword_1DAD61000, v86, v87, "[%{public}s] failed to find containing bundle", v89, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v90);
    MEMORY[0x1E127F100](v90, -1, -1);
    MEMORY[0x1E127F100](v89, -1, -1);
  }

  else
  {
  }

LABEL_27:
  v112 = sub_1DAECE47C();
  v113 = *(*(v112 - 8) + 56);

  return v113(a3, 1, 1, v112);
}

id sub_1DAE52778(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (!v1)
  {
    return 0;
  }

  v3 = v1;
  v4 = [v3 eventMachServiceName];
  if (v4)
  {
    v5 = v4;
    sub_1DAD648F8(a1 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession__client, v28);
    v6 = v29;
    v7 = v30;
    __swift_project_boxed_opaque_existential_1(v28, v29);
    v8 = *(a1 + 32);
    v9 = (*(v7 + 56))(v8, v6, v7);
    __swift_destroy_boxed_opaque_existential_1Tm(v28);
    if (v9)
    {
      v10 = [v9 entitlements];

      if (v10)
      {
        v11 = [v10 usesEventService];

        if (v11)
        {
          v12 = [objc_allocWithZone(MEMORY[0x1E69943A8]) initWithMachServiceName_];

          return v12;
        }
      }
    }

    if (qword_1EE005E88 != -1)
    {
      swift_once();
    }

    v14 = sub_1DAECEDEC();
    __swift_project_value_buffer(v14, qword_1EE0117D8);

    v15 = sub_1DAECEDCC();
    v16 = sub_1DAED201C();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v28[0] = v18;
      *v17 = 136446466;
      v19 = a1 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession_logIdentifier;
      v20 = *(a1 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession_logIdentifier);
      v21 = *(v19 + 8);

      v22 = sub_1DAD6482C(v20, v21, v28);

      *(v17 + 4) = v22;
      *(v17 + 12) = 2082;
      v23 = [v8 extensionBundleIdentifier];
      v24 = sub_1DAED1CEC();
      v26 = v25;

      v27 = sub_1DAD6482C(v24, v26, v28);

      *(v17 + 14) = v27;
      _os_log_impl(&dword_1DAD61000, v15, v16, "[%{public}s] missing entitlement for event service: %{public}s", v17, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E127F100](v18, -1, -1);
      MEMORY[0x1E127F100](v17, -1, -1);
    }
  }

  return 0;
}

uint64_t sub_1DAE52A84(uint64_t a1)
{
  v2 = sub_1DAECF0AC();
  v3 = MEMORY[0x1EEE9AC00](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_1DAECF3AC();
}

uint64_t sub_1DAE52B4C@<X0>(void *a1@<X8>)
{
  v3 = sub_1DAECF8EC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09C18, &qword_1DAEDBC50);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for InProcessListItemActivityInstanceView(0);
  sub_1DAE538B8(v1 + *(v10 + 20), v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1DAECF0AC();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_1DAED202C();
    v13 = sub_1DAED001C();
    sub_1DAECECEC();

    sub_1DAECF8DC();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t InProcessListItemActivityInstanceView.init(instance:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(type metadata accessor for InProcessListItemActivityInstanceView(0) + 20);
  *(a2 + v4) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09C18, &qword_1DAEDBC50);
  result = swift_storeEnumTagMultiPayload();
  *a2 = a1;
  return result;
}

uint64_t type metadata accessor for InProcessListItemActivityInstanceView(uint64_t a1)
{
  result = qword_1ECC09C28;
  if (!qword_1ECC09C28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t InProcessListItemActivityInstanceView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v36 = a1;
  v2 = type metadata accessor for InProcessListItemActivityInstanceView(0);
  v33 = *(v2 - 8);
  v32 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v31 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1DAECF0AC();
  v5 = *(v4 - 8);
  v34 = v4;
  v35 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_1DAECDD3C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for _InProcessActivityInstanceView(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v1;
  v17 = *(v16 + 24);
  v18 = *MEMORY[0x1E6985918];
  v19 = sub_1DAED182C();
  (*(*(v19 - 8) + 104))(&v14[v17], v18, v19);

  sub_1DAECDD2C();
  v20 = sub_1DAECDCFC();
  v22 = v21;
  (*(v9 + 8))(v11, v8);
  v37 = v20;
  v38 = v22;
  sub_1DAED076C();
  v23 = v40;
  *(v14 + 2) = v39;
  *(v14 + 6) = v23;
  *&v14[*(v12 + 28)] = v15;
  *v14 = swift_getKeyPath();
  *(v14 + 1) = 0;
  v14[16] = 0;
  *(v14 + 3) = v15;

  v24 = v30;
  sub_1DAE52B4C(v7);
  v25 = v31;
  sub_1DAE537F0(v24, v31, type metadata accessor for InProcessListItemActivityInstanceView);
  v26 = (*(v33 + 80) + 16) & ~*(v33 + 80);
  v27 = swift_allocObject();
  sub_1DAE535C4(v25, v27 + v26);
  sub_1DAE537A8(&qword_1ECC09B58, type metadata accessor for _InProcessActivityInstanceView, &unk_1DAED6DC0);
  sub_1DAE537A8(&qword_1EE00ABA8, MEMORY[0x1E697DBD0], MEMORY[0x1E697DBE8]);
  v28 = v34;
  sub_1DAED05AC();

  (*(v35 + 8))(v7, v28);
  return sub_1DAE53858(v14, type metadata accessor for _InProcessActivityInstanceView);
}

uint64_t sub_1DAE53220(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08370, &unk_1DAED6580);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v16[-v3];
  v5 = type metadata accessor for WidgetActivityInstanceContentConfiguration(0);
  v6 = v5 - 8;
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v16[-v10];
  v12 = *a1;
  swift_getKeyPath();
  v20 = v12;
  sub_1DAE537A8(&qword_1ECC085E0, type metadata accessor for InProcessActivityInstanceBase, &protocol conformance descriptor for InProcessActivityInstanceBase);
  sub_1DAECDEFC();

  v13 = OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase__contentConfiguration;
  swift_beginAccess();
  sub_1DAE537F0(v12 + v13, v11, type metadata accessor for WidgetActivityInstanceContentConfiguration);
  sub_1DAE52B4C(v4);
  v14 = sub_1DAECF0AC();
  (*(*(v14 - 8) + 56))(v4, 0, 1, v14);
  sub_1DAD69CBC(v4, &v11[*(v6 + 36)]);
  sub_1DAE537F0(v11, v8, type metadata accessor for WidgetActivityInstanceContentConfiguration);
  swift_getKeyPath();
  v17 = v12;
  v18 = v8;
  v19 = v12;
  sub_1DAECDEEC();

  sub_1DAE53858(v8, type metadata accessor for WidgetActivityInstanceContentConfiguration);
  return sub_1DAE53858(v11, type metadata accessor for WidgetActivityInstanceContentConfiguration);
}

uint64_t sub_1DAE534C8@<X0>(uint64_t (**a1)()@<X8>)
{
  result = sub_1DAECF49C();
  if (result)
  {
    v4 = result;
    v5 = v3;
    result = swift_allocObject();
    *(result + 16) = v4;
    *(result + 24) = v5;
    v6 = sub_1DAE53930;
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  a1[1] = result;
  return result;
}

uint64_t sub_1DAE53538(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
  }

  sub_1DADCA8EC(v1, v2);
  return sub_1DAECF4AC();
}

uint64_t sub_1DAE535C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InProcessListItemActivityInstanceView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DAE53628()
{
  v1 = *(type metadata accessor for InProcessListItemActivityInstanceView(0) - 8);
  v2 = (v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return sub_1DAE53220(v2);
}

void sub_1DAE536CC(uint64_t a1)
{
  type metadata accessor for InProcessListItemActivityInstance(319);
  if (v1 <= 0x3F)
  {
    sub_1DAE53750(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1DAE53750(uint64_t a1)
{
  if (!qword_1ECC09C38)
  {
    sub_1DAECF0AC();
    v1 = sub_1DAECF0BC();
    if (!v2)
    {
      atomic_store(v1, &qword_1ECC09C38);
    }
  }
}

uint64_t sub_1DAE537A8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1DAE537F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DAE53858(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1DAE538B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09C18, &qword_1DAEDBC50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DAE5396C(uint64_t a1)
{
  v24 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = sub_1DAED247C();
    result = MEMORY[0x1E69E7CC0];
    if (!v2)
    {
      return result;
    }

    v29 = MEMORY[0x1E69E7CC0];
    sub_1DAED25EC();
    result = sub_1DAED241C();
    v26 = result;
    v27 = v4;
    v28 = 1;
    if ((v2 & 0x8000000000000000) == 0)
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  v2 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    return result;
  }

  v29 = MEMORY[0x1E69E7CC0];
  sub_1DAED25EC();
  result = sub_1DAED23DC();
  v5 = *(a1 + 36);
  v26 = result;
  v27 = v5;
  v28 = 0;
LABEL_7:
  v6 = 0;
  while (v6 < v2)
  {
    if (__OFADD__(v6++, 1))
    {
      goto LABEL_31;
    }

    v10 = v26;
    v9 = v27;
    v11 = v28;
    sub_1DAE0C368(v26, v27, v28, a1);
    v13 = v12;
    v14 = [v12 identity];

    sub_1DAED25CC();
    sub_1DAED25FC();
    sub_1DAED260C();
    result = sub_1DAED25DC();
    if (v24)
    {
      if (!v11)
      {
        goto LABEL_35;
      }

      if (sub_1DAED243C())
      {
        swift_isUniquelyReferenced_nonNull_native();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09C40, &qword_1DAEDBDF8);
      v7 = sub_1DAED1F8C();
      sub_1DAED24EC();
      result = v7(v25, 0);
      if (v6 == v2)
      {
LABEL_28:
        sub_1DADAE050(v26, v27, v28);
        return v29;
      }
    }

    else
    {
      if (v11)
      {
        goto LABEL_36;
      }

      if ((v10 & 0x8000000000000000) != 0)
      {
        goto LABEL_32;
      }

      v15 = 1 << *(a1 + 32);
      if (v10 >= v15)
      {
        goto LABEL_32;
      }

      v16 = v10 >> 6;
      v17 = *(a1 + 56 + 8 * (v10 >> 6));
      if (((v17 >> v10) & 1) == 0)
      {
        goto LABEL_33;
      }

      if (*(a1 + 36) != v9)
      {
        goto LABEL_34;
      }

      v18 = v17 & (-2 << (v10 & 0x3F));
      if (v18)
      {
        v15 = __clz(__rbit64(v18)) | v10 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v19 = v16 << 6;
        v20 = v16 + 1;
        v21 = (a1 + 64 + 8 * v16);
        while (v20 < (v15 + 63) >> 6)
        {
          v23 = *v21++;
          v22 = v23;
          v19 += 64;
          ++v20;
          if (v23)
          {
            result = sub_1DADAE050(v10, v9, 0);
            v15 = __clz(__rbit64(v22)) + v19;
            goto LABEL_27;
          }
        }

        result = sub_1DADAE050(v10, v9, 0);
      }

LABEL_27:
      v26 = v15;
      v27 = v9;
      v28 = 0;
      if (v6 == v2)
      {
        goto LABEL_28;
      }
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
  return result;
}

double sub_1DAE53C84(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v4 = sub_1DAE5396C(v2);
    v5 = sub_1DADBEE50(v4);

    sub_1DAE11BE0(v5);
  }

  return result;
}

double sub_1DAE53D28(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v5 = *(Strong + 56);
    v6 = *(v5 + OBJC_IVAR____TtC14WidgetRenderer27ActivityArchiveServiceStore__lock);
    v7 = *(v6 + 16);

    os_unfair_lock_lock(v7);
    sub_1DAE12374(v5, a1);
    os_unfair_lock_unlock(*(v6 + 16));
  }

  return result;
}

void sub_1DAE53DEC()
{
  v1 = v0;
  swift_beginAccess();
  v2 = v0[28];
  if ((v2 & 0xC000000000000001) != 0)
  {

    swift_unknownObjectRetain();
    sub_1DAED242C();
    sub_1DAECEE3C();
    sub_1DAE5408C();
    sub_1DAED1F9C();
    v4 = v18;
    v3 = v19;
    v5 = v20;
    v6 = v21;
    v7 = v22;
  }

  else
  {
    v8 = -1 << *(v2 + 32);
    v3 = v2 + 56;
    v5 = ~v8;
    v9 = -v8;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v7 = v10 & *(v2 + 56);
    swift_bridgeObjectRetain_n();
    v6 = 0;
    v4 = v2;
  }

  v11 = (v5 + 64) >> 6;
  if (v4 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v12 = v6;
    v13 = v7;
    v14 = v6;
    if (!v7)
    {
      break;
    }

LABEL_12:
    v15 = (v13 - 1) & v13;
    v16 = *(*(v4 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v13)))));

    if (!v16)
    {
LABEL_18:
      sub_1DAD70B20(v4);

      v1[28] = MEMORY[0x1E69E7CD0];

      __swift_destroy_boxed_opaque_existential_1Tm(v1 + 2);

      __swift_destroy_boxed_opaque_existential_1Tm(v1 + 8);
      __swift_destroy_boxed_opaque_existential_1Tm(v1 + 13);
      __swift_destroy_boxed_opaque_existential_1Tm(v1 + 18);
      __swift_destroy_boxed_opaque_existential_1Tm(v1 + 23);

      return;
    }

    while (1)
    {
      sub_1DAECEE2C();

      v6 = v14;
      v7 = v15;
      if ((v4 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_1DAED24BC())
      {
        sub_1DAECEE3C();
        swift_dynamicCast();
        v14 = v6;
        v15 = v7;
        if (v17)
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v14 >= v11)
    {
      goto LABEL_18;
    }

    v13 = *(v3 + 8 * v14);
    ++v12;
    if (v13)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

uint64_t sub_1DAE54034()
{
  sub_1DAE53DEC();

  return swift_deallocClassInstance();
}

unint64_t sub_1DAE5408C()
{
  result = qword_1EE005C50;
  if (!qword_1EE005C50)
  {
    sub_1DAECEE3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE005C50);
  }

  return result;
}

uint64_t sub_1DAE540EC()
{
  sub_1DAD648F8(v0 + 16, v2);
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_1DAED144C();
  __swift_destroy_boxed_opaque_existential_1Tm(v2);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));

  return swift_deallocClassInstance();
}

uint64_t sub_1DAE54178(unint64_t a1)
{
  v2 = sub_1DAED1B8C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC09E40, &qword_1DAED68E0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v24 - v7;
  v9 = type metadata accessor for ActivityView(0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!(a1 >> 62))
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

    return 0;
  }

  result = sub_1DAED247C();
  if (!result)
  {
    return 0;
  }

LABEL_3:
  if ((a1 & 0xC000000000000001) != 0)
  {
    v14 = MEMORY[0x1E127E1F0](0, a1, v10);
    goto LABEL_6;
  }

  if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v14 = *(a1 + 32);

LABEL_6:
    v25 = 0;

    sub_1DAED076C();
    *(v12 + 2) = v24;
    v15 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_logger;
    v16 = *(v9 + 28);
    v17 = sub_1DAECEDEC();
    (*(*(v17 - 8) + 16))(&v12[v16], v14 + v15, v17);
    type metadata accessor for ActivityViewModel(0);
    sub_1DADE9A50(&qword_1EE007808, type metadata accessor for ActivityViewModel, &unk_1DAEDC81C);

    v18 = sub_1DAECF21C();
    v20 = v19;
    *v12 = v18;
    *(v12 + 1) = v19;
    *&v24 = sub_1DAED064C();
    *(v12 + 2) = sub_1DAED087C();
    *(v12 + 3) = 0;
    v21 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_viewEntry;
    swift_beginAccess();
    sub_1DAE54628(v20 + v21, v8);
    if ((*(v3 + 48))(v8, 1, v2))
    {
      sub_1DAE54698(v8);
      v22 = *(v20 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_defaultView);
    }

    else
    {
      (*(v3 + 16))(v5, v8, v2);
      sub_1DAE54698(v8);
      v22 = sub_1DAED1B5C();
      (*(v3 + 8))(v5, v2);
    }

    *(v12 + 2) = v22;
    *(v12 + 3) = 0;
    sub_1DADE9A50(qword_1EE007DA0, type metadata accessor for ActivityView, &unk_1DAEDCE94);
    v23 = sub_1DAED087C();

    return v23;
  }

  __break(1u);
  return result;
}

id sub_1DAE5459C(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for SingleActivitySceneDelegate(0);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t type metadata accessor for SingleActivitySceneDelegate(uint64_t a1)
{
  result = qword_1EE006338;
  if (!qword_1EE006338)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DAE54628(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC09E40, &qword_1DAED68E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DAE54698(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC09E40, &qword_1DAED68E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1DAE547A4(uint64_t a1, uint64_t a2, void *a3)
{
  if (*(a1 + *a3 + 8))
  {

    v3 = sub_1DAED1CBC();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t sub_1DAE5481C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3)
  {
    v6 = sub_1DAED1CEC();
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  v8 = (a1 + *a4);
  *v8 = v6;
  v8[1] = v7;
}

uint64_t sub_1DAE54BBC@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08D70, &unk_1DAED8710);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v10 - v4;
  if (!*(v1 + OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController_expandedUIHostingController))
  {
    goto LABEL_4;
  }

  sub_1DAE62330(v5);

  v6 = sub_1DAED1BEC();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_1DAD64398(v5, &qword_1ECC08D70, &unk_1DAED8710);
LABEL_4:
    v8 = sub_1DAECDBFC();
    return (*(*(v8 - 8) + 56))(a1, 1, 1, v8);
  }

  sub_1DAED1B4C();
  return (*(v7 + 8))(v5, v6);
}

void sub_1DAE54D9C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08D70, &unk_1DAED8710);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v12 - v2;
  v4 = *&v0[OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController_expandedUIHostingController];
  if (v4)
  {
    v5 = *(*(v4 + OBJC_IVAR____TtC14WidgetRenderer29_JindoAccessoryViewController__view) + OBJC_IVAR____TtC14WidgetRenderer19_JindoAccessoryView__model);

    if (v5)
    {
      v6 = v0;

      sub_1DAE62330(v3);

      v7 = sub_1DAED1BEC();
      v8 = *(v7 - 8);
      if ((*(v8 + 48))(v3, 1, v7) == 1)
      {
        sub_1DAD64398(v3, &qword_1ECC08D70, &unk_1DAED8710);
      }

      else
      {
        v9 = sub_1DAED1B9C();
        (*(v8 + 8))(v3, v7);
        if (v9)
        {
          sub_1DAD674D4(0, &qword_1ECC09E90, 0x1E69DC888);

          v10 = sub_1DAED226C();
          v11 = [v6 traitCollection];
          [v10 resolvedColorWithTraitCollection_];

          return;
        }
      }
    }
  }
}

void sub_1DAE54FAC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_1DAECEDEC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  BSDispatchQueueAssertMain();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    swift_beginAccess();
    if (*(a3 + 16))
    {

      sub_1DAECEE2C();
    }

    goto LABEL_12;
  }

  v11 = Strong;
  __swift_project_boxed_opaque_existential_1(a4, a4[3]);
  if (sub_1DAECE2BC())
  {
    (*(v7 + 16))(v9, &v11[OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController__logger], v6);
    v12 = sub_1DAECEDCC();
    v13 = sub_1DAED203C();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_1DAD61000, v12, v13, "Unlocked; allowing in coversheet.", v14, 2u);
      MEMORY[0x1E127F100](v14, -1, -1);
    }

    (*(v7 + 8))(v9, v6);
    v15 = *&v11[OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController_presentationBehaviors];
    *&v11[OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController_presentationBehaviors] = v15 | 8;
    if (v15 != (v15 | 8))
    {
      [objc_msgSend(v11 systemApertureElementContext)];
      swift_unknownObjectRelease();
    }

    swift_beginAccess();
    if (*(a3 + 16))
    {

      sub_1DAECEE2C();
    }

LABEL_12:
    swift_beginAccess();
    *(a3 + 16) = 0;

    return;
  }
}

void sub_1DAE55278()
{
  v1 = sub_1DAECEDEC();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v5, v0 + OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController__logger, v1, v3);
  v6 = v0;
  v7 = sub_1DAECEDCC();
  v8 = sub_1DAED200C();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v42 = v10;
    *v9 = 136446210;
    v11 = *&v6[OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController__logIdentifier];
    v12 = *&v6[OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController__logIdentifier + 8];

    v13 = sub_1DAD6482C(v11, v12, &v42);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_1DAD61000, v7, v8, "[%{public}s] Disabling RenderBox update interval because background.", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x1E127F100](v10, -1, -1);
    MEMORY[0x1E127F100](v9, -1, -1);
  }

  (*(v2 + 8))(v5, v1);
  v14 = *&v6[OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController_expandedUIHostingController];
  if (v14)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08350, &unk_1DAED7DB0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DAEDC070;
    *(inited + 32) = v14;
    v16 = *&v6[OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController_leadingUIHostingController];
    if (!v16)
    {
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    v17 = inited;
    *(inited + 40) = v16;
    v18 = *&v6[OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController_trailingUIHostingController];
    if (!v18)
    {
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    *(inited + 48) = v18;
    v19 = *&v6[OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController_minimalUIHostingController];
    if (!v19)
    {
LABEL_29:
      __break(1u);
      return;
    }

    *(inited + 56) = v19;
    v20 = inited & 0xC000000000000001;
    v21 = v14;
    v22 = v16;
    v23 = v18;
    v24 = v19;
    if (v20)
    {
      v25 = MEMORY[0x1E127E1F0](0, v17);
    }

    else
    {
      v25 = v21;
    }

    v26 = v25;
    v27 = *(*&v25[OBJC_IVAR____TtC14WidgetRenderer29_JindoAccessoryViewController__view] + OBJC_IVAR____TtC14WidgetRenderer19_JindoAccessoryView__hostController);
    swift_getObjectType();
    v28 = v27;
    swift_getWitnessTable();
    _UIHostingViewable.setBackgroundUpdateInterval()();

    if (v20)
    {
      v29 = MEMORY[0x1E127E1F0](1, v17);
    }

    else
    {
      if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
      {
        __break(1u);
        goto LABEL_25;
      }

      v29 = *(v17 + 40);
    }

    v30 = v29;
    v31 = *(*&v29[OBJC_IVAR____TtC14WidgetRenderer29_JindoAccessoryViewController__view] + OBJC_IVAR____TtC14WidgetRenderer19_JindoAccessoryView__hostController);
    swift_getObjectType();
    v32 = v31;
    swift_getWitnessTable();
    _UIHostingViewable.setBackgroundUpdateInterval()();

    if (v20)
    {
      v33 = MEMORY[0x1E127E1F0](2, v17);
LABEL_17:
      v34 = v33;
      v35 = *(*&v33[OBJC_IVAR____TtC14WidgetRenderer29_JindoAccessoryViewController__view] + OBJC_IVAR____TtC14WidgetRenderer19_JindoAccessoryView__hostController);
      swift_getObjectType();
      v36 = v35;
      swift_getWitnessTable();
      _UIHostingViewable.setBackgroundUpdateInterval()();

      if (v20)
      {
        v37 = MEMORY[0x1E127E1F0](3, v17);
LABEL_21:
        v38 = v37;

        v39 = *(*&v38[OBJC_IVAR____TtC14WidgetRenderer29_JindoAccessoryViewController__view] + OBJC_IVAR____TtC14WidgetRenderer19_JindoAccessoryView__hostController);
        swift_getObjectType();
        v40 = v39;
        swift_getWitnessTable();
        _UIHostingViewable.setBackgroundUpdateInterval()();

        return;
      }

      if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 4uLL)
      {
        v37 = *(v17 + 56);
        goto LABEL_21;
      }

      goto LABEL_26;
    }

    if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 3uLL)
    {
      v33 = *(v17 + 48);
      goto LABEL_17;
    }

LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }
}

void sub_1DAE5572C(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v74 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08D70, &unk_1DAED8710);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v65 - v6;
  v8 = sub_1DAED1BEC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1DAECF8EC();
  v72 = *(v12 - 8);
  v73 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1DAECEDEC();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v65 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v70 = v7;
  v71 = v14;
  v69 = a4;
  v67 = v11;
  v20 = Strong;
  (*(v16 + 16))(v18, Strong + OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController__logger, v15);
  v21 = v20;
  v22 = sub_1DAECEDCC();
  v23 = sub_1DAED200C();
  v24 = os_log_type_enabled(v22, v23);
  v68 = v9;
  if (v24)
  {
    v66 = v8;
    v25 = swift_slowAlloc();
    *v25 = 67240448;
    *(v25 + 4) = sub_1DAE5964C() & 1;
    *(v25 + 8) = 1026;
    v26 = [v21 view];
    if (!v26)
    {
LABEL_33:

      __break(1u);
      return;
    }

    v27 = v26;
    v28 = [v26 effectiveUserInterfaceLayoutDirection];

    *(v25 + 10) = v28 == 1;
    _os_log_impl(&dword_1DAD61000, v22, v23, "widgetSupportsRTL? %{BOOL,public}d, isRTLnatively? %{BOOL,public}d", v25, 0xEu);
    MEMORY[0x1E127F100](v25, -1, -1);
    v8 = v66;
  }

  else
  {

    v22 = v21;
  }

  v29 = v71;

  (*(v16 + 8))(v18, v15);
  v30 = sub_1DAE5964C();
  v31 = [v21 view];
  if (!v31)
  {
    __break(1u);
    goto LABEL_33;
  }

  v32 = v31;
  v33 = [v31 effectiveUserInterfaceLayoutDirection];

  v34 = v74;
  if ((v30 ^ (v33 != 1)))
  {
    v35 = *(&v21->isa + OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController_leadingUIHostingController);
    if (v35)
    {
      v36 = *(v35 + OBJC_IVAR____TtC14WidgetRenderer29_JindoAccessoryViewController__view);
      v37 = v36;
    }

    else
    {
      v36 = 0;
    }

    v41 = *(&v21->isa + OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController_leadingView);
    *(&v21->isa + OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController_leadingView) = v36;

    v42 = *(&v21->isa + OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController_trailingUIHostingController);
    if (v42)
    {
LABEL_14:
      v43 = *(v42 + OBJC_IVAR____TtC14WidgetRenderer29_JindoAccessoryViewController__view);
      v44 = v43;
      goto LABEL_18;
    }
  }

  else
  {
    v38 = *(&v21->isa + OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController_trailingUIHostingController);
    if (v38)
    {
      v39 = *(v38 + OBJC_IVAR____TtC14WidgetRenderer29_JindoAccessoryViewController__view);
      v40 = v39;
    }

    else
    {
      v39 = 0;
    }

    v45 = *(&v21->isa + OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController_leadingView);
    *(&v21->isa + OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController_leadingView) = v39;

    v42 = *(&v21->isa + OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController_leadingUIHostingController);
    if (v42)
    {
      goto LABEL_14;
    }
  }

  v43 = 0;
LABEL_18:
  v46 = *(&v21->isa + OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController_trailingView);
  *(&v21->isa + OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController_trailingView) = v43;

  sub_1DAE584BC(v34);
  if (*(&v21->isa + OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController_expandedUIHostingController) && (, sub_1DAE684B0(v29), , v47 = sub_1DAECF4BC(), (*(v72 + 8))(v29, v73), (v47 & 1) != 0))
  {
    [-[NSObject systemApertureElementContext](v21 systemApertureElementContext)];
  }

  else
  {
    v48 = [v21 systemApertureElementContext];
    aBlock[4] = nullsub_1;
    aBlock[5] = 0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1DAD751C0;
    aBlock[3] = &block_descriptor_14;
    v49 = _Block_copy(aBlock);
    [v48 setElementNeedsUpdateWithCoordinatedAnimations_];
    _Block_release(v49);
  }

  swift_unknownObjectRelease();

  v50 = sub_1DAECEDCC();
  v51 = sub_1DAED203C();

  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    aBlock[0] = v53;
    *v52 = 136446210;
    *(v52 + 4) = sub_1DAD6482C(*(v34 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_logIdentifier), *(v34 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_logIdentifier + 8), aBlock);
    _os_log_impl(&dword_1DAD61000, v50, v51, "[%{public}s] view entry changed - aperture element needs update", v52, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v53);
    MEMORY[0x1E127F100](v53, -1, -1);
    MEMORY[0x1E127F100](v52, -1, -1);
  }

  v54 = v70;
  v77 = v69;
  v76 = 0;
  sub_1DAE5CE74();
  sub_1DAED1E4C();
  sub_1DAED1E4C();
  if (aBlock[0] == v75)
  {
    sub_1DAE62330(v54);
    v55 = v68;
    if ((*(v68 + 48))(v54, 1, v8) == 1)
    {
      sub_1DAD64398(v54, &qword_1ECC08D70, &unk_1DAED8710);
    }

    else
    {
      v56 = v67;
      (*(v55 + 32))(v67, v54, v8);
      v57 = sub_1DAED1BBC();
      v59 = v58;
      v60 = v34 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_handlePayloadUpdated;
      v61 = *(v34 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_handlePayloadUpdated);
      if (v61)
      {
        v62 = v57;
        v63 = v55;
        v64 = *(v60 + 8);

        v61(v62, v59);

        sub_1DAD660D8(v61, v64);
        (*(v63 + 8))(v56, v8);
      }

      else
      {
        (*(v55 + 8))(v56, v8);
      }
    }
  }

  sub_1DAE56438();
}

void sub_1DAE55F54()
{
  v1 = v0;
  swift_unknownObjectWeakAssign();
  v2 = *(v0 + OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController_expandedUIHostingController);
  if (v2)
  {
    v3 = *(*(v2 + OBJC_IVAR____TtC14WidgetRenderer29_JindoAccessoryViewController__view) + OBJC_IVAR____TtC14WidgetRenderer19_JindoAccessoryView__hostController);
    v28 = sub_1DAED087C();
    sub_1DAECFABC();
  }

  v4 = *(v1 + OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController_leadingUIHostingController);
  if (v4)
  {
    v5 = *(*(v4 + OBJC_IVAR____TtC14WidgetRenderer29_JindoAccessoryViewController__view) + OBJC_IVAR____TtC14WidgetRenderer19_JindoAccessoryView__hostController);
    v28 = sub_1DAED087C();
    sub_1DAECFABC();
  }

  v6 = *(v1 + OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController_trailingUIHostingController);
  if (v6)
  {
    v7 = *(*(v6 + OBJC_IVAR____TtC14WidgetRenderer29_JindoAccessoryViewController__view) + OBJC_IVAR____TtC14WidgetRenderer19_JindoAccessoryView__hostController);
    v28 = sub_1DAED087C();
    sub_1DAECFABC();
  }

  v8 = *(v1 + OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController_minimalUIHostingController);
  if (v8)
  {
    v9 = *(*(v8 + OBJC_IVAR____TtC14WidgetRenderer29_JindoAccessoryViewController__view) + OBJC_IVAR____TtC14WidgetRenderer19_JindoAccessoryView__hostController);
    v28 = sub_1DAED087C();
    sub_1DAECFABC();
  }

  v10 = OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController__cancellables;
  swift_beginAccess();
  v26 = v10;
  v11 = *(v1 + v10);
  if ((v11 & 0xC000000000000001) != 0)
  {

    swift_unknownObjectRetain();
    sub_1DAED242C();
    sub_1DAECEE3C();
    sub_1DAE5CE20(&qword_1EE005C50, MEMORY[0x1E695BF10], MEMORY[0x1E695BF18]);
    sub_1DAED1F9C();
    v13 = v28;
    v12 = v29;
    v14 = v30;
    v15 = v31;
    v16 = v32;
  }

  else
  {
    v17 = -1 << *(v11 + 32);
    v12 = v11 + 56;
    v14 = ~v17;
    v18 = -v17;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v16 = v19 & *(v11 + 56);
    swift_bridgeObjectRetain_n();
    v15 = 0;
    v13 = v11;
  }

  v20 = (v14 + 64) >> 6;
  if (v13 < 0)
  {
    goto LABEL_22;
  }

  while (1)
  {
    v21 = v15;
    v22 = v16;
    v23 = v15;
    if (!v16)
    {
      break;
    }

LABEL_20:
    v24 = (v22 - 1) & v22;
    v25 = *(*(v13 + 48) + ((v23 << 9) | (8 * __clz(__rbit64(v22)))));

    if (!v25)
    {
LABEL_26:
      sub_1DAD70B20(v13);

      *(v1 + v26) = MEMORY[0x1E69E7CD0];

      return;
    }

    while (1)
    {
      sub_1DAECEE2C();

      v15 = v23;
      v16 = v24;
      if ((v13 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_22:
      if (sub_1DAED24BC())
      {
        sub_1DAECEE3C();
        swift_dynamicCast();
        v23 = v15;
        v24 = v16;
        if (v27)
        {
          continue;
        }
      }

      goto LABEL_26;
    }
  }

  while (1)
  {
    v23 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v23 >= v20)
    {
      goto LABEL_26;
    }

    v22 = *(v12 + 8 * v23);
    ++v21;
    if (v22)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
}

uint64_t sub_1DAE56438()
{
  v1 = sub_1DAED09DC();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1DAED0A3C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07CE8, &qword_1DAED6F60);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v22 - v10;
  v12 = *&v0[OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController_expandedUIHostingController];
  if (v12)
  {
    v13 = *(*(v12 + OBJC_IVAR____TtC14WidgetRenderer29_JindoAccessoryViewController__view) + OBJC_IVAR____TtC14WidgetRenderer19_JindoAccessoryView__model);
    v14 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_overrideDate;
    swift_beginAccess();
    sub_1DAD6495C(v13 + v14, v11, &qword_1ECC07CE8, &qword_1DAED6F60);
    v15 = sub_1DAECDCEC();
    if ((*(*(v15 - 8) + 48))(v11, 1, v15) != 1)
    {
      sub_1DAD64398(v11, &qword_1ECC07CE8, &qword_1DAED6F60);
      sub_1DAD674D4(0, &qword_1EE00AA30, 0x1E69E9610);
      v24 = sub_1DAED20EC();
      v16 = swift_allocObject();
      *(v16 + 16) = v0;
      aBlock[4] = sub_1DAE5D430;
      aBlock[5] = v16;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1DAD751C0;
      aBlock[3] = &block_descriptor_100;
      v17 = _Block_copy(aBlock);
      v18 = v0;

      _s14WidgetRenderer16LayerSnapshotterC8snapshot7request16qualityOfService17completionHandleryAA15SnapshotRequestVyAC09SupportedC0OG_8Dispatch0O3QoSVyAC6ResultOctFfA0__0();
      aBlock[0] = MEMORY[0x1E69E7CC0];
      sub_1DAE5CE20(&qword_1EE00AB70, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC08340, &unk_1DAED6550);
      v23 = v5;
      sub_1DAD64B94(&qword_1EE00AAA0, &unk_1ECC08340, &unk_1DAED6550, MEMORY[0x1E69E6328]);
      sub_1DAED23CC();
      v19 = v24;
      MEMORY[0x1E127DD70](0, v8, v4, v17);
      _Block_release(v17);

      (*(v2 + 8))(v4, v1);
      return (*(v6 + 8))(v8, v23);
    }
  }

  else
  {
    v21 = sub_1DAECDCEC();
    (*(*(v21 - 8) + 56))(v11, 1, 1, v21);
  }

  return sub_1DAD64398(v11, &qword_1ECC07CE8, &qword_1DAED6F60);
}

void sub_1DAE56894(void *a1)
{
  if (qword_1EE005DF8 != -1)
  {
    swift_once();
  }

  v2 = sub_1DAECEDEC();
  __swift_project_value_buffer(v2, qword_1EE0116D0);
  v3 = a1;
  v4 = sub_1DAECEDCC();
  v5 = sub_1DAED203C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v15 = v7;
    *v6 = 136446210;
    v8 = *&v3[OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController__logIdentifier];
    v9 = *&v3[OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController__logIdentifier + 8];

    v10 = sub_1DAD6482C(v8, v9, &v15);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_1DAD61000, v4, v5, "[%{public}s] AOD timeline invalidated by host content change.", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x1E127F100](v7, -1, -1);
    MEMORY[0x1E127F100](v6, -1, -1);
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    v13 = [Strong _backlightSceneEnvironment];

    if (v13)
    {
      v14 = sub_1DAED1CBC();
      [v13 invalidateAllTimelinesForReason_];

      swift_unknownObjectRelease();
    }
  }
}

void sub_1DAE56AA0(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07CE8, &qword_1DAED6F60);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v63 - v4;
  v6 = sub_1DAECEDEC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v72 = &v63 - v11;
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v63 - v14;
  v16 = *(v7 + 16);
  v68 = OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController__logger;
  v70 = v16;
  v71 = v7 + 16;
  (v16)(&v63 - v14, &v1[OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController__logger], v6, v13);
  v69 = v1;
  v17 = v1;
  v18 = sub_1DAECEDCC();
  v19 = sub_1DAED200C();

  v20 = os_log_type_enabled(v18, v19);
  v66 = v9;
  v67 = v5;
  v73 = v17;
  if (v20)
  {
    v21 = swift_slowAlloc();
    v65 = v6;
    v22 = v21;
    v23 = swift_slowAlloc();
    v74[0] = v23;
    *v22 = 136446210;
    v24 = &v17[OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController__logIdentifier];
    v64 = a1;
    v26 = *&v17[OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController__logIdentifier];
    v25 = *(v24 + 1);

    v27 = sub_1DAD6482C(v26, v25, v74);

    *(v22 + 4) = v27;
    a1 = v64;
    _os_log_impl(&dword_1DAD61000, v18, v19, "[%{public}s] Trait collection did change.", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v23);
    MEMORY[0x1E127F100](v23, -1, -1);
    v28 = v22;
    v6 = v65;
    MEMORY[0x1E127F100](v28, -1, -1);
  }

  v29 = *(v7 + 8);
  v29(v15, v6);
  v30 = v73;
  if (a1 && [a1 _backlightLuminance] == 1)
  {
LABEL_9:
    if ([a1 _backlightLuminance] == 1)
    {
      v44 = [v30 traitCollection];
      v45 = [v44 _backlightLuminance];

      if (v45 != 1)
      {
        v46 = v66;
        v70(v66, &v69[v68], v6);
        v47 = v30;
        v48 = sub_1DAECEDCC();
        v49 = v6;
        v50 = sub_1DAED200C();

        if (os_log_type_enabled(v48, v50))
        {
          v51 = swift_slowAlloc();
          v52 = swift_slowAlloc();
          v74[0] = v52;
          *v51 = 136446210;
          v53 = *&v47[OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController__logIdentifier];
          v54 = *&v47[OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController__logIdentifier + 8];

          v55 = sub_1DAD6482C(v53, v54, v74);

          *(v51 + 4) = v55;
          _os_log_impl(&dword_1DAD61000, v48, v50, "[%{public}s] Trait collection: exiting AoD.", v51, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v52);
          MEMORY[0x1E127F100](v52, -1, -1);
          MEMORY[0x1E127F100](v51, -1, -1);
        }

        v29(v46, v49);
      }
    }

    return;
  }

  v31 = [v30 traitCollection];
  v32 = [v31 _backlightLuminance];

  if (v32 != 1)
  {
    if (!a1)
    {
      return;
    }

    goto LABEL_9;
  }

  v70(v72, &v69[v68], v6);
  v33 = v30;
  v34 = sub_1DAECEDCC();
  v35 = sub_1DAED200C();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = v6;
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v74[0] = v38;
    *v37 = 136446210;
    v39 = *&v33[OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController__logIdentifier];
    v40 = *&v33[OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController__logIdentifier + 8];

    v41 = sub_1DAD6482C(v39, v40, v74);

    *(v37 + 4) = v41;
    _os_log_impl(&dword_1DAD61000, v34, v35, "[%{public}s] Trait collection: entering AoD.", v37, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v38);
    MEMORY[0x1E127F100](v38, -1, -1);
    MEMORY[0x1E127F100](v37, -1, -1);

    v42 = v72;
    v43 = v36;
  }

  else
  {

    v42 = v72;
    v43 = v6;
  }

  v29(v42, v43);
  v56 = *&v33[OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController_expandedUIHostingController];
  if (v56)
  {
    v57 = *(*(v56 + OBJC_IVAR____TtC14WidgetRenderer29_JindoAccessoryViewController__view) + OBJC_IVAR____TtC14WidgetRenderer19_JindoAccessoryView__model);
    v58 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_overrideDate;
    swift_beginAccess();
    v59 = v57 + v58;
    v60 = v67;
    sub_1DAD6495C(v59, v67, &qword_1ECC07CE8, &qword_1DAED6F60);
    v61 = sub_1DAECDCEC();
    if ((*(*(v61 - 8) + 48))(v60, 1, v61) != 1)
    {
      sub_1DAD64398(v60, &qword_1ECC07CE8, &qword_1DAED6F60);
      return;
    }
  }

  else
  {
    v62 = sub_1DAECDCEC();
    v60 = v67;
    (*(*(v62 - 8) + 56))(v67, 1, 1, v62);
  }

  sub_1DAD64398(v60, &qword_1ECC07CE8, &qword_1DAED6F60);
  sub_1DAE5903C(v33);
}

uint64_t sub_1DAE57210(uint64_t a1)
{
  v3 = sub_1DAECDA2C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1DAECEDEC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  BSDispatchQueueAssertMain();
  v36 = MEMORY[0x1E69E7CC0];
  v33 = a1;
  v34 = &v36;
  sub_1DAE582C8(sub_1DAE5D440);
  (*(v8 + 16))(v10, v1 + OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController__logger, v7);
  (*(v4 + 16))(v6, a1, v3);
  v11 = v1;
  v12 = sub_1DAECEDCC();
  v13 = sub_1DAED200C();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v32 = v7;
    v15 = v14;
    v31 = swift_slowAlloc();
    v35[0] = v31;
    *v15 = 136446722;
    v16 = *&v11[OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController__logIdentifier];
    v17 = *&v11[OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController__logIdentifier + 8];

    v18 = sub_1DAD6482C(v16, v17, v35);

    *(v15 + 4) = v18;
    *(v15 + 12) = 2082;
    sub_1DAE5CE20(&qword_1ECC08D48, MEMORY[0x1E6968130], MEMORY[0x1E6968158]);
    v19 = sub_1DAED287C();
    v21 = v20;
    (*(v4 + 8))(v6, v3);
    v22 = sub_1DAD6482C(v19, v21, v35);

    *(v15 + 14) = v22;
    *(v15 + 22) = 2082;
    swift_beginAccess();
    v23 = sub_1DAD674D4(0, &qword_1ECC09EA0, 0x1E698E508);

    v25 = MEMORY[0x1E127DB00](v24, v23);
    v27 = v26;

    v28 = sub_1DAD6482C(v25, v27, v35);

    *(v15 + 24) = v28;
    _os_log_impl(&dword_1DAD61000, v12, v13, "[%{public}s] AoD timeline request with dateInterval: %{public}s - timelines: %{public}s", v15, 0x20u);
    v29 = v31;
    swift_arrayDestroy();
    MEMORY[0x1E127F100](v29, -1, -1);
    MEMORY[0x1E127F100](v15, -1, -1);

    (*(v8 + 8))(v10, v32);
  }

  else
  {

    (*(v4 + 8))(v6, v3);
    (*(v8 + 8))(v10, v7);
  }

  swift_beginAccess();
  return v36;
}

uint64_t sub_1DAE57628(uint64_t a1)
{
  v1 = *(*(a1 + OBJC_IVAR____TtC14WidgetRenderer29_JindoAccessoryViewController__view) + OBJC_IVAR____TtC14WidgetRenderer19_JindoAccessoryView__hostController);
  v2 = sub_1DAECD9DC();
  v3 = [v1 _timelinesForDateInterval_];

  sub_1DAD674D4(0, &qword_1ECC09EA0, 0x1E698E508);
  v4 = sub_1DAED1E7C();

  return sub_1DAE576DC(v4);
}

uint64_t sub_1DAE576DC(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_1DAED247C();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v1 >> 62))
  {
    v4 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5 = __OFADD__(v4, v3);
    result = v4 + v3;
    if (!v5)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = sub_1DAED247C();
  v5 = __OFADD__(v13, v3);
  result = v13 + v3;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_1DADF9CDC();
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_1DAE5B124(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 < 1)
  {
LABEL_9:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_1DAE578FC(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v74 = a2;
  v75 = a3;
  v6 = sub_1DAECEDEC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1DAECDA2C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07CE8, &qword_1DAED6F60);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v73 = &v64 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v76 = &v64 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v64 - v19;
  BSDispatchQueueAssertMain();
  if (a1)
  {
    v21 = [a1 presentationInterval];
    v22 = v20;
    v23 = a1;
    v24 = v9;
    v25 = v7;
    v26 = v21;
    sub_1DAECD9EC();

    v7 = v25;
    v9 = v24;
    a1 = v23;
    v20 = v22;
    sub_1DAECDA0C();
    (*(v11 + 8))(v13, v10);
    v27 = sub_1DAECDCEC();
    (*(*(v27 - 8) + 56))(v22, 0, 1, v27);
  }

  else
  {
    v28 = sub_1DAECDCEC();
    (*(*(v28 - 8) + 56))(v20, 1, 1, v28);
  }

  (*(v7 + 16))(v9, v4 + OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController__logger, v6);
  v29 = v76;
  sub_1DAD6495C(v20, v76, &qword_1ECC07CE8, &qword_1DAED6F60);
  v30 = v4;
  v31 = a1;
  v32 = v6;
  v33 = sub_1DAECEDCC();
  v34 = sub_1DAED200C();
  v72 = v31;

  if (os_log_type_enabled(v33, v34))
  {
    v65 = v33;
    v67 = v34;
    v69 = v9;
    v70 = v7;
    v71 = v32;
    v35 = 7104878;
    v36 = v29;
    v37 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    v77 = v66;
    *v37 = 136446722;
    v38 = *&v30[OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController__logIdentifier];
    v39 = *&v30[OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController__logIdentifier + 8];

    v40 = sub_1DAD6482C(v38, v39, &v77);

    *(v37 + 4) = v40;
    *(v37 + 12) = 2082;
    v41 = v73;
    sub_1DAD6495C(v36, v73, &qword_1ECC07CE8, &qword_1DAED6F60);
    v42 = sub_1DAECDCEC();
    v43 = *(v42 - 8);
    v44 = (*(v43 + 48))(v41, 1, v42);
    v68 = a1;
    if (v44 == 1)
    {
      sub_1DAD64398(v41, &qword_1ECC07CE8, &qword_1DAED6F60);
      v45 = 0xE300000000000000;
      v46 = 7104878;
    }

    else
    {
      if (qword_1EE00A700 != -1)
      {
        swift_once();
      }

      v48 = qword_1EE00A708;
      v49 = v41;
      v50 = sub_1DAECDC5C();
      v51 = [v48 stringFromDate_];

      v46 = sub_1DAED1CEC();
      v45 = v52;

      (*(v43 + 8))(v49, v42);
      v35 = 7104878;
    }

    sub_1DAD64398(v76, &qword_1ECC07CE8, &qword_1DAED6F60);
    v53 = sub_1DAD6482C(v46, v45, &v77);

    *(v37 + 14) = v53;
    *(v37 + 22) = 2082;
    v55 = v69;
    v54 = v70;
    if (v68)
    {
      v56 = [v72 description];
      v35 = sub_1DAED1CEC();
      v58 = v57;
    }

    else
    {
      v58 = 0xE300000000000000;
    }

    v59 = sub_1DAD6482C(v35, v58, &v77);

    *(v37 + 24) = v59;
    v60 = v65;
    _os_log_impl(&dword_1DAD61000, v65, v67, "[%{public}s] AoD update to override date: %{public}s with specifier: %{public}s", v37, 0x20u);
    v61 = v66;
    swift_arrayDestroy();
    MEMORY[0x1E127F100](v61, -1, -1);
    MEMORY[0x1E127F100](v37, -1, -1);

    v47 = (*(v54 + 8))(v55, v71);
  }

  else
  {

    sub_1DAD64398(v29, &qword_1ECC07CE8, &qword_1DAED6F60);
    v47 = (*(v7 + 8))(v9, v32);
  }

  MEMORY[0x1EEE9AC00](v47);
  *(&v64 - 2) = v20;
  sub_1DAE582C8(sub_1DAE5D438);
  sub_1DAD674D4(0, &qword_1EE00A850, 0x1E695DFD0);
  v62 = swift_allocObject();
  *(v62 + 16) = v74;
  *(v62 + 24) = v75;

  sub_1DAED22FC();

  return sub_1DAD64398(v20, &qword_1ECC07CE8, &qword_1DAED6F60);
}

uint64_t sub_1DAE58058(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07CE8, &qword_1DAED6F60);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v16[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v16[-v8];
  v10 = *(a1 + OBJC_IVAR____TtC14WidgetRenderer29_JindoAccessoryViewController__view);
  v11 = *(v10 + OBJC_IVAR____TtC14WidgetRenderer19_JindoAccessoryView__hostController);
  swift_getObjectType();
  v12 = v11;
  swift_getWitnessTable();
  _UIHostingViewable.setNeedsSynchronousUpdate()();

  v13 = *(v10 + OBJC_IVAR____TtC14WidgetRenderer19_JindoAccessoryView__model);
  sub_1DAD6495C(a2, v9, &qword_1ECC07CE8, &qword_1DAED6F60);
  v14 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_overrideDate;
  swift_beginAccess();
  sub_1DAD6495C(v13 + v14, v6, &qword_1ECC07CE8, &qword_1DAED6F60);
  swift_beginAccess();

  sub_1DAD901C4(v9, v13 + v14, &qword_1ECC07CE8, &qword_1DAED6F60);
  swift_endAccess();
  sub_1DAE64750(v6);

  sub_1DAD64398(v6, &qword_1ECC07CE8, &qword_1DAED6F60);
  return sub_1DAD64398(v9, &qword_1ECC07CE8, &qword_1DAED6F60);
}

void sub_1DAE582C8(void (*a1)(void *))
{
  v2 = *(v1 + OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController_expandedUIHostingController);
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08350, &unk_1DAED7DB0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DAEDC070;
    *(inited + 32) = v2;
    v5 = *(v1 + OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController_leadingUIHostingController);
    if (!v5)
    {
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    v6 = inited;
    *(inited + 40) = v5;
    v7 = *(v1 + OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController_trailingUIHostingController);
    if (!v7)
    {
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    *(inited + 48) = v7;
    v8 = *(v1 + OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController_minimalUIHostingController);
    if (!v8)
    {
LABEL_18:
      __break(1u);
      return;
    }

    *(inited + 56) = v8;
    v9 = v2;
    v10 = v5;
    v11 = v7;
    v12 = v8;
    if ((v6 & 0xC000000000000001) != 0)
    {
      v18 = MEMORY[0x1E127E1F0](0, v6);
      (a1)();

      v19 = MEMORY[0x1E127E1F0](1, v6);
      (a1)();

      v20 = MEMORY[0x1E127E1F0](2, v6);
      (a1)();

      v16 = MEMORY[0x1E127E1F0](3, v6);
      goto LABEL_10;
    }

    v13 = v9;
    (a1)();

    if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
    {
      __break(1u);
    }

    else
    {
      v14 = *(v6 + 40);
      (a1)();

      if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 3uLL)
      {
        v15 = *(v6 + 48);
        (a1)();

        if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 4uLL)
        {
          v16 = *(v6 + 56);
LABEL_10:
          v17 = v16;

          a1(v17);

          return;
        }

        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }
}

uint64_t sub_1DAE584BC(uint64_t a1)
{
  v105 = a1;
  v94 = sub_1DAED184C();
  v93 = *(v94 - 8);
  MEMORY[0x1EEE9AC00](v94);
  v92 = &v82 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v89 = &v82 - v4;
  v91 = sub_1DAED17EC();
  v90 = *(v91 - 8);
  MEMORY[0x1EEE9AC00](v91);
  v88 = &v82 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v82 - v7;
  v9 = sub_1DAECF9FC();
  v103 = *(v9 - 8);
  v104 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v102 = &v82 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1DAECF8EC();
  v100 = *(v11 - 8);
  v101 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v96 = &v82 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1DAED1ABC();
  v98 = *(v13 - 8);
  v99 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v95 = &v82 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC09E80, &qword_1DAED68D0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v97 = &v82 - v16;
  v17 = sub_1DAED19EC();
  v106 = *(v17 - 8);
  v107 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v87 = &v82 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1DAECEDEC();
  v86 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v85 = &v82 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1DAED187C();
  v82 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v82 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1DAED1B8C();
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v82 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC09E40, &qword_1DAED68E0);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v30 = &v82 - v29;
  v31 = OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController_expandedUIHostingController;
  v108 = v1;
  v32 = *&v1[OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController_expandedUIHostingController];
  if (v32)
  {
    v83 = v19;
    v84 = v8;
    v33 = *(*(v32 + OBJC_IVAR____TtC14WidgetRenderer29_JindoAccessoryViewController__view) + OBJC_IVAR____TtC14WidgetRenderer19_JindoAccessoryView__model);
    v34 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_viewEntry;
    swift_beginAccess();
    sub_1DAD6495C(v33 + v34, v30, &unk_1ECC09E40, &qword_1DAED68E0);
    if ((*(v25 + 48))(v30, 1, v24))
    {
      sub_1DAD64398(v30, &unk_1ECC09E40, &qword_1DAED68E0);
      v35 = 0.0;
    }

    else
    {
      (*(v25 + 16))(v27, v30, v24);
      sub_1DAD64398(v30, &unk_1ECC09E40, &qword_1DAED68E0);
      sub_1DAED1B6C();
      (*(v25 + 8))(v27, v24);
      sub_1DAED186C();
      v35 = v36;
      (*(v82 + 8))(v23, v21);
    }

    v37 = v86;
    v38 = v85;
    v39 = v107;
    v40 = *&v108[v31];
    v8 = v84;
    v41 = v83;
    if (!v40)
    {
      goto LABEL_14;
    }

    (*(v86 + 16))(v85, *(*(v40 + OBJC_IVAR____TtC14WidgetRenderer29_JindoAccessoryViewController__view) + OBJC_IVAR____TtC14WidgetRenderer19_JindoAccessoryView__model) + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_logger, v83);
    v42 = v108;
    v43 = sub_1DAECEDCC();
    v44 = sub_1DAED203C();

    if (!os_log_type_enabled(v43, v44))
    {

      (*(v37 + 8))(v38, v41);
      goto LABEL_14;
    }

    v45 = swift_slowAlloc();
    v86 = swift_slowAlloc();
    v109[0] = v86;
    *v45 = 136446466;
    v46 = *&v108[v31];
    if (v46)
    {
      v47 = (*(*(v46 + OBJC_IVAR____TtC14WidgetRenderer29_JindoAccessoryViewController__view) + OBJC_IVAR____TtC14WidgetRenderer19_JindoAccessoryView__model) + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_logIdentifier);
      v48 = *v47;
      v49 = v47[1];
    }

    else
    {
      v49 = 0xE300000000000000;
      v48 = 7104878;
    }

    v50 = sub_1DAD6482C(v48, v49, v109);

    *(v45 + 4) = v50;
    *(v45 + 12) = 2082;
    v51 = sub_1DAED225C();
    v53 = sub_1DAD6482C(v51, v52, v109);

    *(v45 + 14) = v53;
    _os_log_impl(&dword_1DAD61000, v43, v44, "[%{public}s]: expanded view bounds after view change: %{public}s", v45, 0x16u);
    v54 = v86;
    swift_arrayDestroy();
    MEMORY[0x1E127F100](v54, -1, -1);
    MEMORY[0x1E127F100](v45, -1, -1);

    (*(v37 + 8))(v38, v41);
  }

  else
  {
    v35 = 0.0;
  }

  v39 = v107;
LABEL_14:
  v56 = v98;
  v55 = v99;
  v57 = v105;
  v58 = v95;
  (*(v98 + 16))(v95, v105 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_metricsDefinition, v99);
  v59 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_rawEnvironmentValues;
  swift_beginAccess();
  v61 = v100;
  v60 = v101;
  v62 = v57 + v59;
  v63 = v96;
  (*(v100 + 16))(v96, v62, v101);
  v64 = v102;
  sub_1DAECF3EC();
  (*(v61 + 8))(v63, v60);
  v65 = v97;
  sub_1DAED1A7C();
  (*(v103 + 8))(v64, v104);
  (*(v56 + 8))(v58, v55);
  v66 = v106;
  result = (*(v106 + 48))(v65, 1, v39);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v68 = v87;
    (*(v66 + 32))(v87, v65, v39);
    sub_1DAED19BC();
    v69 = v89;
    sub_1DAED17CC();
    v70 = *(v90 + 8);
    v71 = v91;
    v70(v8, v91);
    sub_1DAED183C();
    v73 = v72;
    v74 = *(v93 + 8);
    v75 = v69;
    v76 = v94;
    v74(v75, v94);
    v77 = v88;
    sub_1DAED19BC();
    v78 = v92;
    sub_1DAED17DC();
    v70(v77, v71);
    sub_1DAED183C();
    v80 = v79;
    v74(v78, v76);
    if (v80 >= v35)
    {
      v81 = v35;
    }

    else
    {
      v81 = v80;
    }

    [v108 setPreferredContentSize_];
    return (*(v106 + 8))(v68, v107);
  }

  return result;
}