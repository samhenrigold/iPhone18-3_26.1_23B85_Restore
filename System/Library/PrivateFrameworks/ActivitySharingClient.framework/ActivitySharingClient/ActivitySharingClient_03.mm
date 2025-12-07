uint64_t sub_23E5B463C()
{

  sub_23E56121C(v0[18], v0[19]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_23E5B46BC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_23E55FD64;

  return XPCClient.invalidate()();
}

uint64_t sub_23E5B474C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_23E55FD60;

  return XPCClient.sendItem(_:)(a1);
}

uint64_t sub_23E5B47E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_23E55FD60;

  return XPCClient.sendItem<A>(_:payload:)(a1, a2, a3, a4);
}

uint64_t sub_23E5B48A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_23E55FD60;

  return XPCClient.sendItem<A>(_:)(a1, a2, a3, a4);
}

uint64_t sub_23E5B4968(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_23E55FD60;

  return XPCClient.sendItem<A>(_:)(a1, a2, a3, a4);
}

uint64_t sub_23E5B4A2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_23E55FD60;

  return XPCClient.sendItem<A, B>(_:payload:)(a1, a2, a3, a4, a5, a6, a7);
}

unint64_t sub_23E5B4B54()
{
  result = qword_27E346A38;
  if (!qword_27E346A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E346A38);
  }

  return result;
}

uint64_t sub_23E5B4BA8(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3465E8, qword_23E5CCBD0);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);

  return sub_23E5B2A88(a1, v3, v4);
}

uint64_t sub_23E5B4C28(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_23E55FD64;

  return sub_23E5B2FBC(a1, v4, v5, v6);
}

uint64_t SecureCloudPingResponseProtobuf.identifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for SecureCloudPingResponseProtobuf(0) + 20));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t type metadata accessor for SecureCloudPingResponseProtobuf(uint64_t a1)
{
  result = qword_27E346A70;
  if (!qword_27E346A70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SecureCloudPingResponseProtobuf.requestIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for SecureCloudPingResponseProtobuf(0) + 24));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t SecureCloudPingResponseProtobuf.identifier.getter()
{
  v1 = (v0 + *(type metadata accessor for SecureCloudPingResponseProtobuf(0) + 20));
  if (v1[1])
  {
    v2 = *v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t SecureCloudPingResponseProtobuf.requestIdentifier.getter()
{
  v1 = (v0 + *(type metadata accessor for SecureCloudPingResponseProtobuf(0) + 24));
  if (v1[1])
  {
    v2 = *v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_23E5B4E64@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for SecureCloudPingResponseProtobuf(0) + 20));
  v4 = v3[1];
  if (v4)
  {
    v5 = *v3;
    v6 = v4;
  }

  else
  {
    v5 = 0;
    v6 = 0xE000000000000000;
  }

  *a2 = v5;
  a2[1] = v6;
}

uint64_t sub_23E5B4EC8(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (a2 + *(type metadata accessor for SecureCloudPingResponseProtobuf(0) + 20));

  *v4 = v3;
  v4[1] = v2;
  return result;
}

void (*SecureCloudPingResponseProtobuf.identifier.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for SecureCloudPingResponseProtobuf(0) + 20);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_23E569B50;
}

Swift::Void __swiftcall SecureCloudPingResponseProtobuf.clearIdentifier()()
{
  v1 = (v0 + *(type metadata accessor for SecureCloudPingResponseProtobuf(0) + 20));

  *v1 = 0;
  v1[1] = 0;
}

uint64_t sub_23E5B5034@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for SecureCloudPingResponseProtobuf(0) + 24));
  v4 = v3[1];
  if (v4)
  {
    v5 = *v3;
    v6 = v4;
  }

  else
  {
    v5 = 0;
    v6 = 0xE000000000000000;
  }

  *a2 = v5;
  a2[1] = v6;
}

uint64_t sub_23E5B5098(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (a2 + *(type metadata accessor for SecureCloudPingResponseProtobuf(0) + 24));

  *v4 = v3;
  v4[1] = v2;
  return result;
}

void (*SecureCloudPingResponseProtobuf.requestIdentifier.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for SecureCloudPingResponseProtobuf(0) + 24);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_23E56BC24;
}

Swift::Void __swiftcall SecureCloudPingResponseProtobuf.clearRequestIdentifier()()
{
  v1 = (v0 + *(type metadata accessor for SecureCloudPingResponseProtobuf(0) + 24));

  *v1 = 0;
  v1[1] = 0;
}

uint64_t SecureCloudPingResponseProtobuf.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_23E5C8CD0();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t SecureCloudPingResponseProtobuf.unknownFields.setter(uint64_t a1)
{
  v3 = sub_23E5C8CD0();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t SecureCloudPingResponseProtobuf.init()@<X0>(uint64_t a2@<X8>)
{
  sub_23E5C8CC0();
  result = type metadata accessor for SecureCloudPingResponseProtobuf(0);
  v4 = (a2 + *(result + 20));
  *v4 = 0;
  v4[1] = 0;
  v5 = (a2 + *(result + 24));
  *v5 = 0;
  v5[1] = 0;
  return result;
}

uint64_t sub_23E5B5354()
{
  v0 = sub_23E5C8E80();
  __swift_allocate_value_buffer(v0, qword_27E346A48);
  __swift_project_value_buffer(v0, qword_27E346A48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E346158, &unk_23E5CA8A0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E346160, "Xh") - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23E5CB3D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "identifier";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23E5C8E60();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "requestIdentifier";
  *(v10 + 1) = 17;
  v10[16] = 2;
  v9();
  return sub_23E5C8E70();
}

uint64_t static SecureCloudPingResponseProtobuf._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27E346108 != -1)
  {
    swift_once();
  }

  v2 = sub_23E5C8E80();
  v3 = __swift_project_value_buffer(v2, qword_27E346A48);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t SecureCloudPingResponseProtobuf.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_23E5C8D30();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 1 || result == 2)
    {
      type metadata accessor for SecureCloudPingResponseProtobuf(0);
      sub_23E5C8D70();
    }
  }

  return result;
}

uint64_t SecureCloudPingResponseProtobuf.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for SecureCloudPingResponseProtobuf(0);
  if (!*(v3 + *(v5 + 20) + 8) || (result = sub_23E5C8E30(), !v4))
  {
    if (!*(v3 + *(v5 + 24) + 8))
    {
      return sub_23E5C8CB0();
    }

    result = sub_23E5C8E30();
    if (!v4)
    {
      return sub_23E5C8CB0();
    }
  }

  return result;
}

uint64_t SecureCloudPingResponseProtobuf.hashValue.getter()
{
  sub_23E5C94D0();
  type metadata accessor for SecureCloudPingResponseProtobuf(0);
  sub_23E5B5D44(&qword_27E346A60, type metadata accessor for SecureCloudPingResponseProtobuf, &protocol conformance descriptor for SecureCloudPingResponseProtobuf);
  sub_23E5C8F10();
  return sub_23E5C94F0();
}

uint64_t sub_23E5B57B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_23E5C8CC0();
  v5 = *(a1 + 24);
  v6 = (a2 + *(a1 + 20));
  *v6 = 0;
  v6[1] = 0;
  v7 = (a2 + v5);
  *v7 = 0;
  v7[1] = 0;
  return result;
}

uint64_t sub_23E5B583C(uint64_t a1, uint64_t a2)
{
  v4 = sub_23E5B5D44(&unk_27E346A80, type metadata accessor for SecureCloudPingResponseProtobuf, &protocol conformance descriptor for SecureCloudPingResponseProtobuf);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23E5B58B8@<X0>(uint64_t a1@<X8>)
{
  if (qword_27E346108 != -1)
  {
    swift_once();
  }

  v2 = sub_23E5C8E80();
  v3 = __swift_project_value_buffer(v2, qword_27E346A48);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_23E5B5960(uint64_t a1)
{
  v2 = sub_23E5B5D44(&qword_27E3462C8, type metadata accessor for SecureCloudPingResponseProtobuf, &protocol conformance descriptor for SecureCloudPingResponseProtobuf);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_23E5B59CC(uint64_t a1, uint64_t a2)
{
  sub_23E5B5D44(&qword_27E3462C8, type metadata accessor for SecureCloudPingResponseProtobuf, &protocol conformance descriptor for SecureCloudPingResponseProtobuf);

  return sub_23E5C8DE0();
}

uint64_t _s21ActivitySharingClient31SecureCloudPingResponseProtobufV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SecureCloudPingResponseProtobuf(0);
  v5 = *(v4 + 20);
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v8[1];
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }

    if (*v6 != *v8 || v7 != v9)
    {
      v11 = v4;
      v12 = sub_23E5C9430();
      v4 = v11;
      if ((v12 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v9)
  {
    return 0;
  }

  v13 = *(v4 + 24);
  v14 = (a1 + v13);
  v15 = *(a1 + v13 + 8);
  v16 = (a2 + v13);
  v17 = v16[1];
  if (v15)
  {
    if (v17)
    {
      v18 = *v14 == *v16 && v15 == v17;
      if (v18 || (sub_23E5C9430() & 1) != 0)
      {
        goto LABEL_17;
      }
    }
  }

  else if (!v17)
  {
LABEL_17:
    sub_23E5C8CD0();
    sub_23E5B5D44(&qword_27E346150, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    return sub_23E5C8F20() & 1;
  }

  return 0;
}

void sub_23E5B5CC0(uint64_t a1)
{
  sub_23E5C8CD0();
  if (v1 <= 0x3F)
  {
    sub_23E56735C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_23E5B5D44(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

char *ActivitySharingFriendQuery.__allocating_init(activitySharingClient:updateHandler:)(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = sub_23E5B6AA8(a1, a2, a3);

  return v8;
}

char *ActivitySharingFriendQuery.init(activitySharingClient:updateHandler:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_23E5B6AA8(a1, a2, a3);

  return v4;
}

void sub_23E5B5E30(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (qword_280C09100 != -1)
    {
      swift_once();
    }

    v4 = sub_23E5C8EB0();
    __swift_project_value_buffer(v4, qword_280C09128);
    sub_23E560890(0xD00000000000006CLL, 0x800000023E5D0AC0, 0xD000000000000018, 0x800000023E5D0B30);
    _s21ActivitySharingClient0aB11FriendQueryC24fitnessAppsStateObserver_018applicationInstallH29DidChangeForBundleIdentifiersySo09FIFitnessghI0C_SaySSGtF_0();
  }
}

void sub_23E5B5F94(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  if (a1)
  {
    sub_23E593770(0, &qword_280C08FE8, 0x277CE90F8);
    sub_23E5B70BC(&qword_280C08FE0, &qword_280C08FE8, 0x277CE90F8, MEMORY[0x277D85378]);
    v5 = sub_23E5C9120();
  }

  if (a2)
  {
    v6 = sub_23E5C8B80();
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  (*(a3 + 16))(a3, v5);
}

void _s21ActivitySharingClient0aB11FriendQueryC24fitnessAppsStateObserver_018applicationInstallH29DidChangeForBundleIdentifiersySo09FIFitnessghI0C_SaySSGtF_0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E3466E0, &qword_23E5CE510);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v21 - v2;
  if (qword_280C09100 != -1)
  {
    swift_once();
  }

  v4 = sub_23E5C8EB0();
  __swift_project_value_buffer(v4, qword_280C09128);
  sub_23E560890(0xD00000000000006CLL, 0x800000023E5D0AC0, 0xD000000000000011, 0x800000023E5D0B50);
  v5 = [objc_opt_self() sharedBehavior];
  if (v5)
  {
    v6 = v5;
    [v5 isAppleWatch];

    v7 = sub_23E5C8F40();
    v9 = v8;
    v10 = *(v0 + OBJC_IVAR____ASActivitySharingFriendQuery_fitnessAppsStateObserver);
    v11 = sub_23E5C8F30();
    v12 = [v10 installStateForBundleIdentifier_];

    if (v12 == 1)
    {

      v13 = sub_23E5C9110();
      (*(*(v13 - 8) + 56))(v3, 1, 1, v13);
      v14 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v15 = swift_allocObject();
      v15[2] = 0;
      v15[3] = 0;
      v15[4] = v14;
      sub_23E59D0CC(0, 0, v3, &unk_23E5CE520, v15);
    }

    else
    {

      v21 = sub_23E5C8E90();
      v16 = sub_23E5C9170();

      if (os_log_type_enabled(v21, v16))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v22 = v18;
        *v17 = 136315138;
        v19 = sub_23E560AF0(v7, v9, &v22);

        *(v17 + 4) = v19;
        _os_log_impl(&dword_23E55E000, v21, v16, "App with bundle id %s not installed, not updating friend list", v17, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v18);
        MEMORY[0x23EF0DE00](v18, -1, -1);
        MEMORY[0x23EF0DE00](v17, -1, -1);
      }

      else
      {

        v20 = v21;
      }
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_23E5B64D8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = *(Strong + OBJC_IVAR____ASActivitySharingFriendQuery_activitySharingClient);
    v0[12] = v2;
    v3 = Strong;
    v2;

    v4 = swift_task_alloc();
    v0[13] = v4;
    *v4 = v0;
    v4[1] = sub_23E5B6650;

    return sub_23E59019C();
  }

  else
  {
    swift_beginAccess();
    v6 = swift_unknownObjectWeakLoadStrong();
    if (v6)
    {
      v7 = *(v6 + OBJC_IVAR____ASActivitySharingFriendQuery_updateHandler);
      v8 = v6;

      v7(0, 0);
    }

    else
    {
    }

    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_23E5B6650(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 112) = v1;

  if (v1)
  {
    v5 = sub_23E5B6848;
  }

  else
  {

    *(v4 + 120) = a1;
    v5 = sub_23E5B6780;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_23E5B6780()
{
  v1 = *(v0 + 120);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = *(Strong + OBJC_IVAR____ASActivitySharingFriendQuery_updateHandler);
    v4 = Strong;

    v3(v1, 0);
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_23E5B6848()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v2 = *(v0 + 112);
  if (Strong)
  {
    v3 = *(Strong + OBJC_IVAR____ASActivitySharingFriendQuery_updateHandler);
    v4 = Strong;

    v5 = v2;
    v3(0, v2);
  }

  v6 = *(v0 + 8);

  return v6();
}

id ActivitySharingFriendQuery.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ActivitySharingFriendQuery.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ActivitySharingFriendQuery();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *sub_23E5B6AA8(void *a1, uint64_t a2, uint64_t a3)
{
  v30 = sub_23E5C91A0();
  v7 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E346B20, &qword_23E5CE528);
  v11 = *(v10 - 8);
  v31 = v10;
  v32 = v11;
  MEMORY[0x28223BE20](v10);
  v13 = &v29 - v12;
  v29 = sub_23E5C91C0();
  v33 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v3[OBJC_IVAR____ASActivitySharingFriendQuery_cancellable] = MEMORY[0x277D84F90];
  *&v3[OBJC_IVAR____ASActivitySharingFriendQuery_activitySharingClient] = a1;
  v16 = &v3[OBJC_IVAR____ASActivitySharingFriendQuery_updateHandler];
  *v16 = a2;
  *(v16 + 1) = a3;
  v17 = objc_allocWithZone(MEMORY[0x277D09598]);
  v18 = a1;

  v19 = [v17 init];
  *&v3[OBJC_IVAR____ASActivitySharingFriendQuery_fitnessAppsStateObserver] = v19;
  v20 = type metadata accessor for ActivitySharingFriendQuery();
  v35.receiver = v3;
  v35.super_class = v20;
  v21 = objc_msgSendSuper2(&v35, sel_init);
  v22 = *&v21[OBJC_IVAR____ASActivitySharingFriendQuery_fitnessAppsStateObserver];
  v23 = v21;
  [v22 setDelegate_];
  _s21ActivitySharingClient0aB11FriendQueryC24fitnessAppsStateObserver_018applicationInstallH29DidChangeForBundleIdentifiersySo09FIFitnessghI0C_SaySSGtF_0();
  v24 = [objc_opt_self() defaultCenter];
  sub_23E5C91D0();

  sub_23E5C9190();
  sub_23E593770(0, &unk_280C08D38, 0x277D85C78);
  v25 = sub_23E5C91B0();
  v34 = v25;
  sub_23E5B7064();
  sub_23E5B70BC(&qword_280C08D48, &unk_280C08D38, 0x277D85C78, MEMORY[0x277D85228]);
  v26 = v29;
  sub_23E5C8ED0();

  (*(v7 + 8))(v9, v30);
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_23E5B7108(qword_280C08D60, &qword_27E346B20, &qword_23E5CE528, MEMORY[0x277CBCD20]);
  v27 = v31;
  sub_23E5C8EE0();

  (*(v32 + 8))(v13, v27);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E346B28, &unk_23E5CE530);
  sub_23E5B7108(&unk_280C08D50, &qword_27E346B28, &unk_23E5CE530, MEMORY[0x277D83990]);
  sub_23E5C8EC0();
  swift_endAccess();

  (*(v33 + 8))(v15, v26);
  return v23;
}

uint64_t sub_23E5B6FB0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_23E55FD64;

  return sub_23E5B64B8(a1, v4, v5, v6);
}

unint64_t sub_23E5B7064()
{
  result = qword_280C08D30;
  if (!qword_280C08D30)
  {
    sub_23E5C91C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C08D30);
  }

  return result;
}

uint64_t sub_23E5B70BC(unint64_t *a1, unint64_t *a2, void *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_23E593770(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_23E5B7108(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void __swiftcall SendFriendInviteTransportItem.init(destination:callerID:serviceIdentifier:)(ActivitySharingClient::SendFriendInviteTransportItem *__return_ptr retstr, Swift::String destination, Swift::String callerID, Swift::String serviceIdentifier)
{
  retstr->destination = destination;
  retstr->callerID = callerID;
  retstr->serviceIdentifier = serviceIdentifier;
}

uint64_t SendFriendInviteTransportItem.destination.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t SendFriendInviteTransportItem.callerID.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t SendFriendInviteTransportItem.serviceIdentifier.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t SendFriendInviteTransportItem.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  sub_23E5C92D0();
  MEMORY[0x23EF0D190](0xD00000000000001DLL, 0x800000023E5CE520);
  MEMORY[0x23EF0D190](0x616E697473656428, 0xEE00203A6E6F6974);
  MEMORY[0x23EF0D190](v1, v2);
  MEMORY[0x23EF0D190](0x4972656C6C616320, 0xEB00000000203A44);
  MEMORY[0x23EF0D190](v3, v4);
  MEMORY[0x23EF0D190](0xD000000000000014, 0x800000023E5D0B70);
  MEMORY[0x23EF0D190](v5, v6);
  MEMORY[0x23EF0D190](41, 0xE100000000000000);
  return 0;
}

unint64_t sub_23E5B732C()
{
  v1 = 0x444972656C6C6163;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000011;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x74616E6974736564;
  }
}

uint64_t sub_23E5B7394@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_23E5B7AB4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_23E5B73BC(uint64_t a1)
{
  v2 = sub_23E5B75F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23E5B73F8(uint64_t a1)
{
  v2 = sub_23E5B75F8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SendFriendInviteTransportItem.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E346B30, "\n7");
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v11 - v5;
  v7 = v1[2];
  v11[3] = v1[3];
  v11[4] = v7;
  v8 = v1[4];
  v11[1] = v1[5];
  v11[2] = v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23E5B75F8();
  sub_23E5C9510();
  v14 = 0;
  v9 = v11[5];
  sub_23E5C93C0();
  if (v9)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v13 = 1;
  sub_23E5C93C0();
  v12 = 2;
  sub_23E5C93C0();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_23E5B75F8()
{
  result = qword_27E346B38;
  if (!qword_27E346B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E346B38);
  }

  return result;
}

uint64_t SendFriendInviteTransportItem.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E346B40, &qword_23E5CE568);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23E5B75F8();
  sub_23E5C9500();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v25 = 0;
  v9 = sub_23E5C9380();
  v11 = v10;
  v22 = v9;
  v24 = 1;
  v20 = sub_23E5C9380();
  v21 = v12;
  v23 = 2;
  v13 = sub_23E5C9380();
  v15 = v14;
  v16 = v13;
  (*(v6 + 8))(v8, v5);
  v17 = v21;
  *a2 = v22;
  a2[1] = v11;
  a2[2] = v20;
  a2[3] = v17;
  a2[4] = v16;
  a2[5] = v15;

  __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_23E5B78F8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_23E5B7940(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_23E5B79B0()
{
  result = qword_27E346B48;
  if (!qword_27E346B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E346B48);
  }

  return result;
}

unint64_t sub_23E5B7A08()
{
  result = qword_27E346B50;
  if (!qword_27E346B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E346B50);
  }

  return result;
}

unint64_t sub_23E5B7A60()
{
  result = qword_27E346B58;
  if (!qword_27E346B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E346B58);
  }

  return result;
}

uint64_t sub_23E5B7AB4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x74616E6974736564 && a2 == 0xEB000000006E6F69;
  if (v4 || (sub_23E5C9430() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x444972656C6C6163 && a2 == 0xE800000000000000 || (sub_23E5C9430() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x800000023E5CFEB0 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_23E5C9430();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_23E5B7BF4@<X0>(_BYTE *a2@<X8>)
{

  *a2 = 1;
  return result;
}

uint64_t sub_23E5B7C30(uint64_t a1)
{
  v2 = sub_23E5B7DE4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23E5B7C6C(uint64_t a1)
{
  v2 = sub_23E5B7DE4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23E5B7CD0(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E346B60, &qword_23E5CE810);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23E5B7DE4();
  sub_23E5C9510();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_23E5B7DE4()
{
  result = qword_27E346B68;
  if (!qword_27E346B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E346B68);
  }

  return result;
}

unint64_t sub_23E5B7E4C()
{
  result = qword_27E346B70;
  if (!qword_27E346B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E346B70);
  }

  return result;
}

unint64_t sub_23E5B7EA4()
{
  result = qword_27E346B78;
  if (!qword_27E346B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E346B78);
  }

  return result;
}

ActivitySharingClient::SetMuteEnabledTransportItem __swiftcall SetMuteEnabledTransportItem.init(isMuteEnabled:friendUUID:)(Swift::Bool isMuteEnabled, Swift::String friendUUID)
{
  *v2 = isMuteEnabled;
  *(v2 + 8) = friendUUID;
  result.friendUUID = friendUUID;
  result.isMuteEnabled = isMuteEnabled;
  return result;
}

uint64_t SetMuteEnabledTransportItem.friendUUID.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

unint64_t SetMuteEnabledTransportItem.description.getter()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 2);
  sub_23E5C92D0();

  if (v1)
  {
    v4 = 1702195828;
  }

  else
  {
    v4 = 0x65736C6166;
  }

  if (v1)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  MEMORY[0x23EF0D190](v4, v5);

  MEMORY[0x23EF0D190](0x55646E6569726620, 0xED0000203A444955);
  MEMORY[0x23EF0D190](v2, v3);
  MEMORY[0x23EF0D190](41, 0xE100000000000000);
  return 0xD00000000000002BLL;
}

uint64_t sub_23E5B8030()
{
  if (*v0)
  {
    return 0x5555646E65697266;
  }

  else
  {
    return 0x6E456574754D7369;
  }
}

uint64_t sub_23E5B807C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E456574754D7369 && a2 == 0xED000064656C6261;
  if (v6 || (sub_23E5C9430() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x5555646E65697266 && a2 == 0xEA00000000004449)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_23E5C9430();

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

uint64_t sub_23E5B8168(uint64_t a1)
{
  v2 = sub_23E5B8370();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23E5B81A4(uint64_t a1)
{
  v2 = sub_23E5B8370();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SetMuteEnabledTransportItem.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E346B80, &qword_23E5CE8E0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v10 - v6;
  v8 = *(v1 + 8);
  v10[0] = *(v1 + 16);
  v10[1] = v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23E5B8370();
  sub_23E5C9510();
  v12 = 0;
  sub_23E5C93D0();
  if (!v2)
  {
    v11 = 1;
    sub_23E5C93C0();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_23E5B8370()
{
  result = qword_27E346B88;
  if (!qword_27E346B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E346B88);
  }

  return result;
}

uint64_t SetMuteEnabledTransportItem.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E346B90, &qword_23E5CE8E8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23E5B8370();
  sub_23E5C9500();
  if (!v2)
  {
    v16 = 0;
    v9 = sub_23E5C9390();
    v15 = 1;
    v11 = sub_23E5C9380();
    v13 = v12;
    (*(v6 + 8))(v8, v5);
    *a2 = v9 & 1;
    *(a2 + 8) = v11;
    *(a2 + 16) = v13;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

unint64_t sub_23E5B85C8()
{
  result = qword_27E346B98;
  if (!qword_27E346B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E346B98);
  }

  return result;
}

unint64_t sub_23E5B8620()
{
  result = qword_27E346BA0;
  if (!qword_27E346BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E346BA0);
  }

  return result;
}

unint64_t sub_23E5B8678()
{
  result = qword_27E346BA8;
  if (!qword_27E346BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E346BA8);
  }

  return result;
}

uint64_t sub_23E5B86CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 8) + **(a5 + 8));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_23E594A1C;

  return v13(a1, a2, a3, a4, a5);
}

uint64_t sub_23E5B880C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[29] = a2;
  v3[30] = a3;
  v3[28] = a1;
  return MEMORY[0x2822009F8](sub_23E5B8830, 0, 0);
}

uint64_t sub_23E5B8830()
{
  v1 = v0[30];
  v2 = v1[2];
  v0[31] = v2;
  if (v2)
  {
    v3 = v0[28];
    v0[32] = MEMORY[0x277D84F90];
    v4 = v1[5];
    v0[33] = v4;
    v0[34] = 1;
    v0[26] = v1[4];
    v0[27] = v4;

    v9 = (v3 + *v3);
    v5 = swift_task_alloc();
    v0[35] = v5;
    *v5 = v0;
    v5[1] = sub_23E5B89A8;

    return (v9)(v0 + 2, v0 + 26);
  }

  else
  {
    v7 = v0[1];
    v8 = MEMORY[0x277D84F90];

    return v7(v8);
  }
}

uint64_t sub_23E5B89A8()
{
  *(*v1 + 288) = v0;

  if (v0)
  {

    v2 = sub_23E5B8D38;
  }

  else
  {
    v2 = sub_23E5B8AC4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_23E5B8AC4()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 32);
    *(v0 + 144) = *(v0 + 16);
    *(v0 + 160) = v1;
    v2 = *(v0 + 64);
    *(v0 + 176) = *(v0 + 48);
    *(v0 + 192) = v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v4 = *(v0 + 256);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v4 = sub_23E5C2BCC(0, *(v4 + 2) + 1, 1, *(v0 + 256));
    }

    v6 = *(v4 + 2);
    v5 = *(v4 + 3);
    if (v6 >= v5 >> 1)
    {
      v4 = sub_23E5C2BCC((v5 > 1), v6 + 1, 1, v4);
    }

    v7 = *(v0 + 272);
    v8 = *(v0 + 248);

    *(v4 + 2) = v6 + 1;
    v10 = &v4[64 * v6];
    v11 = *(v0 + 144);
    v12 = *(v0 + 160);
    v13 = *(v0 + 192);
    *(v10 + 4) = *(v0 + 176);
    *(v10 + 5) = v13;
    *(v10 + 2) = v11;
    *(v10 + 3) = v12;
    if (v7 != v8)
    {
      v14 = *(v0 + 272);
      *(v0 + 256) = v4;
      goto LABEL_14;
    }
  }

  else
  {
    v15 = *(v0 + 272);
    v16 = *(v0 + 248);

    v17 = *(v0 + 32);
    *(v0 + 80) = *(v0 + 16);
    *(v0 + 96) = v17;
    v18 = *(v0 + 64);
    *(v0 + 112) = *(v0 + 48);
    *(v0 + 128) = v18;
    result = sub_23E562510(v0 + 80, &qword_27E346BD0, &qword_23E5CEBE0);
    if (v15 != v16)
    {
      v14 = *(v0 + 272);
LABEL_14:
      if (v14 >= *(v0 + 248))
      {
        __break(1u);
      }

      else
      {
        v20 = *(v0 + 240) + 16 * v14;
        result = *(v20 + 40);
        *(v0 + 264) = result;
        *(v0 + 272) = v14 + 1;
        if (!__OFADD__(v14, 1))
        {
          v21 = *(v0 + 224);
          *(v0 + 208) = *(v20 + 32);
          *(v0 + 216) = result;

          v23 = (v21 + *v21);
          v22 = swift_task_alloc();
          *(v0 + 280) = v22;
          *v22 = v0;
          v22[1] = sub_23E5B89A8;

          return v23(v0 + 16, v0 + 208);
        }
      }

      __break(1u);
      return result;
    }

    v4 = *(v0 + 256);
  }

  v19 = *(v0 + 8);

  return v19(v4);
}

uint64_t sub_23E5B8D38()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23E5B8D9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[43] = a2;
  v3[44] = a3;
  v3[42] = a1;
  return MEMORY[0x2822009F8](sub_23E5B8DC0, 0, 0);
}

uint64_t sub_23E5B8DC0()
{
  v1 = *(v0 + 352);
  v2 = *(v1 + 16);
  *(v0 + 360) = v2;
  if (v2)
  {
    v3 = *(v0 + 336);
    *(v0 + 368) = 0;
    v4 = *(v1 + 80);
    v6 = *(v1 + 32);
    v5 = *(v1 + 48);
    *(v0 + 48) = *(v1 + 64);
    *(v0 + 64) = v4;
    *(v0 + 16) = v6;
    *(v0 + 32) = v5;
    v8 = *(v1 + 64);
    v7 = *(v1 + 80);
    v9 = *(v1 + 48);
    *(v0 + 80) = *(v1 + 32);
    *(v0 + 96) = v9;
    *(v0 + 112) = v8;
    *(v0 + 128) = v7;
    sub_23E57EA28(v0 + 16, v0 + 144);
    v13 = (v3 + *v3);
    v10 = swift_task_alloc();
    *(v0 + 376) = v10;
    *v10 = v0;
    v10[1] = sub_23E5B8F28;

    return v13(v0 + 80);
  }

  else
  {
    v12 = *(v0 + 8);

    return v12();
  }
}

uint64_t sub_23E5B8F28()
{
  *(*v1 + 384) = v0;

  if (v0)
  {
    v2 = sub_23E5B91D4;
  }

  else
  {
    v2 = sub_23E5B903C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_23E5B903C()
{
  v1 = *(v0 + 360);
  v2 = *(v0 + 368) + 1;
  v3 = *(v0 + 96);
  *(v0 + 272) = *(v0 + 80);
  *(v0 + 288) = v3;
  v4 = *(v0 + 128);
  *(v0 + 304) = *(v0 + 112);
  *(v0 + 320) = v4;
  sub_23E587D58(v0 + 272);
  if (v2 == v1)
  {
    v5 = *(v0 + 8);

    return v5();
  }

  else
  {
    v7 = *(v0 + 368) + 1;
    *(v0 + 368) = v7;
    v8 = *(v0 + 336);
    v9 = (*(v0 + 352) + (v7 << 6));
    v10 = v9[5];
    v12 = v9[2];
    v11 = v9[3];
    *(v0 + 48) = v9[4];
    *(v0 + 64) = v10;
    *(v0 + 16) = v12;
    *(v0 + 32) = v11;
    v14 = v9[4];
    v13 = v9[5];
    v15 = v9[3];
    *(v0 + 80) = v9[2];
    *(v0 + 96) = v15;
    *(v0 + 112) = v14;
    *(v0 + 128) = v13;
    sub_23E57EA28(v0 + 16, v0 + 144);
    v17 = (v8 + *v8);
    v16 = swift_task_alloc();
    *(v0 + 376) = v16;
    *v16 = v0;
    v16[1] = sub_23E5B8F28;

    return v17(v0 + 80);
  }
}

uint64_t sub_23E5B91D4()
{
  v1 = *(v0 + 96);
  *(v0 + 208) = *(v0 + 80);
  *(v0 + 224) = v1;
  v2 = *(v0 + 128);
  *(v0 + 240) = *(v0 + 112);
  *(v0 + 256) = v2;
  sub_23E587D58(v0 + 208);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_23E5B9248(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a2;
  v3[6] = a3;
  v3[4] = a1;
  return MEMORY[0x2822009F8](sub_23E5B926C, 0, 0);
}

uint64_t sub_23E5B926C()
{
  v1 = v0[6];
  v2 = v1[2];
  v0[7] = v2;
  if (v2)
  {
    v3 = v0[4];
    v0[8] = MEMORY[0x277D84F90];
    v0[9] = 0;
    v4 = v1[4];
    v0[10] = v4;
    v5 = v1[5];
    v0[11] = v5;
    v0[2] = v4;
    v0[3] = v5;

    v10 = (v3 + *v3);
    v6 = swift_task_alloc();
    v0[12] = v6;
    *v6 = v0;
    v6[1] = sub_23E5B93DC;

    return v10(v0 + 2);
  }

  else
  {
    v8 = v0[1];
    v9 = MEMORY[0x277D84F90];

    return v8(v9);
  }
}

uint64_t sub_23E5B93DC(char a1)
{
  v4 = *v2;
  *(*v2 + 104) = v1;

  if (v1)
  {

    v5 = sub_23E5B9724;
  }

  else
  {
    *(v4 + 112) = a1 & 1;
    v5 = sub_23E5B9510;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_23E5B9510()
{
  if (*(v0 + 112))
  {

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v2 = *(v0 + 64);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v2 = sub_23E5C2AC0(0, *(v2 + 2) + 1, 1, *(v0 + 64));
    }

    v4 = *(v2 + 2);
    v3 = *(v2 + 3);
    if (v4 >= v3 >> 1)
    {
      v2 = sub_23E5C2AC0((v3 > 1), v4 + 1, 1, v2);
    }

    v6 = *(v0 + 80);
    v5 = *(v0 + 88);

    *(v2 + 2) = v4 + 1;
    v7 = &v2[16 * v4];
    *(v7 + 4) = v6;
    *(v7 + 5) = v5;
  }

  else
  {

    v2 = *(v0 + 64);
  }

  v8 = *(v0 + 72) + 1;
  if (v8 == *(v0 + 56))
  {
    v9 = *(v0 + 8);

    return v9(v2);
  }

  else
  {
    *(v0 + 64) = v2;
    *(v0 + 72) = v8;
    v11 = *(v0 + 32);
    v12 = *(v0 + 48) + 16 * v8;
    v13 = *(v12 + 32);
    *(v0 + 80) = v13;
    v14 = *(v12 + 40);
    *(v0 + 88) = v14;
    *(v0 + 16) = v13;
    *(v0 + 24) = v14;

    v16 = (v11 + *v11);
    v15 = swift_task_alloc();
    *(v0 + 96) = v15;
    *v15 = v0;
    v15[1] = sub_23E5B93DC;

    return v16(v0 + 16);
  }
}

uint64_t sub_23E5B9724()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23E5B9788(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  return MEMORY[0x2822009F8](sub_23E5B97AC, 0, 0);
}

uint64_t sub_23E5B97AC()
{
  v1 = v0[3];
  if (*(v1 + 16))
  {
    v3 = v0[5];
    v2 = v0[6];
    v4 = v0[4];
    v5 = swift_task_alloc();
    *(v5 + 16) = v2;
    v6 = sub_23E5B9D64(MEMORY[0x277D84F98], sub_23E5BCDC8, v5, v1);
    v0[7] = v6;

    v7 = swift_task_alloc();
    v0[8] = v7;
    v7[2] = v6;
    v7[3] = v4;
    v7[4] = v3;
    v8 = swift_task_alloc();
    v0[9] = v8;
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E346BB0, &qword_23E5CEBC0);
    *v8 = v0;
    v8[1] = sub_23E5B9960;

    return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0xD00000000000001DLL, 0x800000023E5D0BC0, sub_23E5BCDE4, v7, v9);
  }

  else
  {
    v10 = v0[1];
    v11 = MEMORY[0x277D84F90];

    return v10(v11);
  }
}

uint64_t sub_23E5B9960()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_23E5B9A84;
  }

  else
  {

    v2 = sub_23E592820;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_23E5B9A84()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23E5B9AF0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  result = sub_23E5B9B94(*a2, v4);
  if (v6)
  {
    v7 = result;
    v8 = v6;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *a1;
    sub_23E571CEC(v3, v4, v7, v8, isUniquelyReferenced_nonNull_native);

    *a1 = v10;
  }

  return result;
}

uint64_t sub_23E5B9B94(uint64_t a1, unint64_t a2)
{
  v4 = sub_23E5C8F30();
  IsEmail = ASDestinationIsEmail();

  v6 = sub_23E5C8F30();
  if (IsEmail)
  {
    v7 = MEMORY[0x23EF0D790]();
  }

  else
  {
    IsPhoneNumber = ASDestinationIsPhoneNumber();

    if (!IsPhoneNumber)
    {
      if (qword_280C088F8 != -1)
      {
        swift_once();
      }

      v12 = sub_23E5C8EB0();
      __swift_project_value_buffer(v12, qword_280C09108);

      v13 = sub_23E5C8E90();
      v14 = sub_23E5C9160();

      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v17 = v16;
        *v15 = 136315138;
        *(v15 + 4) = sub_23E560AF0(a1, a2, &v17);
        _os_log_impl(&dword_23E55E000, v13, v14, "Unknown destination type %s", v15, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v16);
        MEMORY[0x23EF0DE00](v16, -1, -1);
        MEMORY[0x23EF0DE00](v15, -1, -1);
      }

      return 0;
    }

    v6 = sub_23E5C8F30();
    v7 = IDSCopyIDForPhoneNumber();
  }

  v9 = v7;

  if (v9)
  {
    v10 = sub_23E5C8F40();

    return v10;
  }

  return 0;
}

uint64_t sub_23E5B9D64(uint64_t result, void (*a2)(uint64_t *, void *), uint64_t a3, uint64_t a4)
{
  v10 = result;
  v5 = *(a4 + 16);
  if (v5)
  {
    for (i = (a4 + 40); ; i += 2)
    {
      v8 = *i;
      v9[0] = *(i - 1);
      v9[1] = v8;

      a2(&v10, v9);
      if (v4)
      {
        break;
      }

      if (!--v5)
      {
        return v10;
      }
    }
  }

  return result;
}

void sub_23E5B9E0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v46 = a3;
  v48 = a1;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E346BB8, &qword_23E5CEBC8);
  v6 = *(v47 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v47);
  v9 = &v37 - v8;
  v10 = [objc_opt_self() sharedInstance];
  if (!v10)
  {
    __break(1u);
    return;
  }

  v42 = v9;
  v43 = v10;
  v44 = a2;
  v45 = a4;
  v11 = *(a2 + 16);
  if (v11)
  {
    v12 = sub_23E5BCB34(*(a2 + 16), 0);
    v13 = sub_23E5BCDF0(aBlock, v12 + 4, v11, a2);
    v14 = aBlock[0];

    sub_23E5BCF48(v14);
    if (v13 == v11)
    {
      goto LABEL_6;
    }

    __break(1u);
  }

  v12 = MEMORY[0x277D84F90];
LABEL_6:
  sub_23E5BA288(v12);

  v41 = sub_23E5C9040();

  v15 = v45;
  v16 = v46;
  v40 = sub_23E5C8F30();
  v39 = [objc_opt_self() refreshIDInfo];
  v38 = sub_23E5C8F30();
  sub_23E593770(0, &unk_280C08D38, 0x277D85C78);
  v17 = sub_23E5C91B0();
  v18 = v42;
  v19 = v47;
  (*(v6 + 16))(v42, v48, v47);
  v20 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v21 = (v7 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  (*(v6 + 32))(v22 + v20, v18, v19);
  *(v22 + v21) = v44;
  v23 = (v22 + ((v21 + 15) & 0xFFFFFFFFFFFFFFF8));
  *v23 = v16;
  v23[1] = v15;
  aBlock[4] = sub_23E5BCF50;
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23E5BB480;
  aBlock[3] = &block_descriptor_4;
  v24 = _Block_copy(aBlock);

  v25 = v43;
  v27 = v40;
  v26 = v41;
  v29 = v38;
  v28 = v39;
  v30 = [v43 idInfoForDestinations:v41 service:v40 infoTypes:1 options:v39 listenerID:v38 queue:v17 completionBlock:v24];
  _Block_release(v24);

  if ((v30 & 1) == 0)
  {
    if (qword_280C088F8 != -1)
    {
      swift_once();
    }

    v31 = sub_23E5C8EB0();
    __swift_project_value_buffer(v31, qword_280C09108);
    v32 = sub_23E5C8E90();
    v33 = sub_23E5C9160();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_23E55E000, v32, v33, "IDS identity query failed to initiate", v34, 2u);
      MEMORY[0x23EF0DE00](v34, -1, -1);
    }

    sub_23E5BD018();
    v35 = swift_allocError();
    *v36 = 0;
    aBlock[0] = v35;
    sub_23E5C90E0();
  }
}

uint64_t sub_23E5BA288(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v9 = MEMORY[0x277D84F90];
    sub_23E5864CC(0, v1, 0);
    v2 = v9;
    v4 = a1 + 40;
    do
    {

      swift_dynamicCast();
      v9 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_23E5864CC((v5 > 1), v6 + 1, 1);
        v2 = v9;
      }

      *(v2 + 16) = v6 + 1;
      sub_23E5BD3F4(&v8, (v2 + 32 * v6 + 32));
      v4 += 16;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_23E5BA388(uint64_t a1, id a2)
{
  if (a2)
  {
    v3 = a2;
    if (qword_280C088F8 != -1)
    {
      swift_once();
    }

    v4 = sub_23E5C8EB0();
    __swift_project_value_buffer(v4, qword_280C09108);
    v5 = a2;
    v6 = sub_23E5C8E90();
    v7 = sub_23E5C9160();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138412290;
      v10 = a2;
      v11 = _swift_stdlib_bridgeErrorToNSError();
      *(v8 + 4) = v11;
      *v9 = v11;
      _os_log_impl(&dword_23E55E000, v6, v7, "IDS identity query returned an error: %@", v8, 0xCu);
      sub_23E562510(v9, &qword_27E346750, &qword_23E5CD2A0);
      MEMORY[0x23EF0DE00](v9, -1, -1);
      MEMORY[0x23EF0DE00](v8, -1, -1);
    }

    v26 = a2;
  }

  else
  {
    if (a1)
    {
      sub_23E5BA72C(a1);
      if (v12)
      {
        v13 = MEMORY[0x28223BE20](v12);
        v14 = sub_23E5BD078(v13, sub_23E5BD06C);

        v26 = v14;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E346BB8, &qword_23E5CEBC8);
        return sub_23E5C90F0();
      }
    }

    if (qword_280C088F8 != -1)
    {
      swift_once();
    }

    v16 = sub_23E5C8EB0();
    __swift_project_value_buffer(v16, qword_280C09108);

    v17 = sub_23E5C8E90();
    v18 = sub_23E5C9160();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v26 = v20;
      *v19 = 136315138;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E346BC8, &unk_23E5CEBD0);
      v21 = sub_23E5C8F50();
      v23 = sub_23E560AF0(v21, v22, &v26);

      *(v19 + 4) = v23;
      _os_log_impl(&dword_23E55E000, v17, v18, "Invalid results from IDS identity query: %s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v20);
      MEMORY[0x23EF0DE00](v20, -1, -1);
      MEMORY[0x23EF0DE00](v19, -1, -1);
    }

    sub_23E5BD018();
    v24 = swift_allocError();
    *v25 = 1;
    v26 = v24;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E346BB8, &qword_23E5CEBC8);
  return sub_23E5C90E0();
}

void sub_23E5BA72C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E346BD8, &qword_23E5CEBE8);
    v2 = sub_23E5C9360();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = sub_23E593770(0, &qword_280C088A0, 0x277CCACA8);
  v4 = a1 + 64;
  v5 = 1 << *(a1 + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a1 + 64);
  v8 = v5 + 63;
  if (v3 == MEMORY[0x277D837D0])
  {
    v26 = v8 >> 6;

    v27 = 0;
    if (v7)
    {
      goto LABEL_30;
    }

LABEL_31:
    while (1)
    {
      v33 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        break;
      }

      if (v33 >= v26)
      {
        goto LABEL_46;
      }

      v7 = *(v4 + 8 * v33);
      ++v27;
      if (v7)
      {
        while (1)
        {
          v34 = __clz(__rbit64(v7)) | (v33 << 6);
          sub_23E5BD398(*(a1 + 48) + 40 * v34, &v48);
          sub_23E560BBC(*(a1 + 56) + 32 * v34, &v50 + 8);
          v45 = v50;
          v46 = v51;
          v47 = v52;
          v43 = v48;
          v44 = v49;
          v35 = sub_23E5C9290();
          objc_opt_self();
          v36 = swift_dynamicCastObjCClass();
          if (!v36)
          {
            break;
          }

          v37 = v36;
          sub_23E560BBC(&v45 + 8, v42);
          sub_23E562510(&v43, &qword_27E346BE0, &unk_23E5CEBF0);
          sub_23E593770(0, &qword_280C088D8, 0x277D189D0);
          if ((swift_dynamicCast() & 1) == 0)
          {

            goto LABEL_46;
          }

          v7 &= v7 - 1;
          v38 = sub_23E57C6D4(v37);
          if (v39)
          {
            v28 = *(v2 + 48);
            v29 = *(v28 + 8 * v38);
            *(v28 + 8 * v38) = v37;
            v30 = v38;

            v31 = *(v2 + 56);
            v32 = *(v31 + 8 * v30);
            *(v31 + 8 * v30) = v41;

            v27 = v33;
            if (!v7)
            {
              goto LABEL_31;
            }
          }

          else
          {
            v40 = *(v2 + 16);
            if (v40 >= *(v2 + 24))
            {
              goto LABEL_50;
            }

            *(v2 + 64 + ((v38 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v38;
            *(*(v2 + 48) + 8 * v38) = v37;
            *(*(v2 + 56) + 8 * v38) = v41;
            *(v2 + 16) = v40 + 1;
            v27 = v33;
            if (!v7)
            {
              goto LABEL_31;
            }
          }

LABEL_30:
          v33 = v27;
        }

LABEL_44:
        sub_23E562510(&v43, &qword_27E346BE0, &unk_23E5CEBF0);
LABEL_46:

        return;
      }
    }
  }

  else
  {
    v9 = v8 >> 6;
    v10 = v2 + 64;

    v11 = 0;
    while (v7)
    {
LABEL_16:
      v14 = __clz(__rbit64(v7)) | (v11 << 6);
      sub_23E5BD398(*(a1 + 48) + 40 * v14, &v48);
      sub_23E560BBC(*(a1 + 56) + 32 * v14, &v50 + 8);
      v45 = v50;
      v46 = v51;
      v47 = v52;
      v43 = v48;
      v44 = v49;
      v15 = sub_23E5C9290();
      objc_opt_self();
      v16 = swift_dynamicCastObjCClass();
      if (!v16)
      {

        goto LABEL_44;
      }

      v17 = v16;
      sub_23E560BBC(&v45 + 8, v42);
      sub_23E562510(&v43, &qword_27E346BE0, &unk_23E5CEBF0);
      sub_23E593770(0, &qword_280C088D8, 0x277D189D0);
      if ((swift_dynamicCast() & 1) == 0)
      {

        goto LABEL_46;
      }

      v18 = sub_23E5C91F0();
      v19 = -1 << *(v2 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v10 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v10 + 8 * v21);
          if (v25 != -1)
          {
            v12 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_10;
          }
        }

        goto LABEL_48;
      }

      v12 = __clz(__rbit64((-1 << v20) & ~*(v10 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_10:
      v7 &= v7 - 1;
      *(v10 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v2 + 48) + 8 * v12) = v17;
      *(*(v2 + 56) + 8 * v12) = v41;
      ++*(v2 + 16);
    }

    while (1)
    {
      v13 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v13 >= v9)
      {
        goto LABEL_46;
      }

      v7 = *(v4 + 8 * v13);
      ++v11;
      if (v7)
      {
        v11 = v13;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_48:
    __break(1u);
  }

  __break(1u);
LABEL_50:
  __break(1u);
}

double sub_23E5BAC20@<D0>(void *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _OWORD *a6@<X8>)
{
  v11 = sub_23E5C8F40();
  v13 = v11;
  v14 = v12;
  if (!*(a3 + 16) || (v15 = sub_23E57C65C(v11, v12), (v16 & 1) == 0))
  {
    if (qword_280C088F8 != -1)
    {
      goto LABEL_42;
    }

    goto LABEL_20;
  }

  v17 = (*(a3 + 56) + 16 * v15);
  v19 = *v17;
  v18 = v17[1];

  v20 = [a2 status];
  if (v20 > 2)
  {

    if (qword_280C088F8 != -1)
    {
      swift_once();
    }

    v55 = sub_23E5C8EB0();
    __swift_project_value_buffer(v55, qword_280C09108);
    v56 = a2;
    v46 = sub_23E5C8E90();
    v57 = sub_23E5C9160();
    if (!os_log_type_enabled(v46, v57))
    {

      v46 = v56;
      goto LABEL_33;
    }

    v58 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    *v58 = 134218242;
    *(v58 + 4) = [v56 status];

    *(v58 + 12) = 2112;
    *(v58 + 14) = v56;
    *v59 = v56;
    v60 = v56;
    _os_log_impl(&dword_23E55E000, v46, v57, "Failed to parse reachability %ld, %@", v58, 0x16u);
    sub_23E562510(v59, &qword_27E346750, &qword_23E5CD2A0);
    v61 = v59;
LABEL_31:
    MEMORY[0x23EF0DE00](v61, -1, -1);
    v54 = v58;
LABEL_32:
    MEMORY[0x23EF0DE00](v54, -1, -1);
    goto LABEL_33;
  }

  v84 = v20;
  v21 = [a2 endpoints];
  if (!v21)
  {

    if (qword_280C088F8 == -1)
    {
LABEL_29:
      v62 = sub_23E5C8EB0();
      __swift_project_value_buffer(v62, qword_280C09108);
      v63 = a2;
      v46 = sub_23E5C8E90();
      v64 = sub_23E5C9160();

      if (!os_log_type_enabled(v46, v64))
      {
        goto LABEL_33;
      }

      v58 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      *v58 = 138412290;
      *(v58 + 4) = v63;
      *v65 = v63;
      v66 = v63;
      _os_log_impl(&dword_23E55E000, v46, v64, "IDS identity query didn't return any endpoints: %@", v58, 0xCu);
      sub_23E562510(v65, &qword_27E346750, &qword_23E5CD2A0);
      v61 = v65;
      goto LABEL_31;
    }

LABEL_45:
    swift_once();
    goto LABEL_29;
  }

  v22 = v21;
  sub_23E593770(0, &qword_280C088E8, 0x277D189C0);
  v23 = sub_23E5C9050();

  v24 = v23;
  if (v23 >> 62)
  {
    v78 = v23;
    v25 = sub_23E5C9330();
    v24 = v78;
  }

  else
  {
    v25 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *(&v82 + 1) = v14;
  v83 = a6;
  *(&v81 + 1) = a5;
  *&v82 = v13;
  *&v81 = a4;
  if (!v25)
  {

    v28 = MEMORY[0x277D84F90];
LABEL_35:
    v92 = v82;
    *&v93 = v19;
    *(&v93 + 1) = v18;
    *&v94 = v28;
    BYTE8(v94) = v84;
    v95 = v81;
    v68 = qword_280C088F8;

    if (v68 != -1)
    {
      swift_once();
    }

    v69 = sub_23E5C8EB0();
    __swift_project_value_buffer(v69, qword_280C09108);
    sub_23E57EA28(&v92, &v91);
    v70 = sub_23E5C8E90();
    v71 = sub_23E5C9170();
    sub_23E587D58(&v92);
    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      v90 = v73;
      *v72 = 136315138;
      v74 = v95;
      v91 = v93;

      MEMORY[0x23EF0D190](8250, 0xE200000000000000);
      MEMORY[0x23EF0D190](v74, *(&v74 + 1));
      v75 = sub_23E560AF0(v91, *(&v91 + 1), &v90);

      *(v72 + 4) = v75;
      _os_log_impl(&dword_23E55E000, v70, v71, "Found invitation destination: %s", v72, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v73);
      MEMORY[0x23EF0DE00](v73, -1, -1);
      MEMORY[0x23EF0DE00](v72, -1, -1);
    }

    v76 = v93;
    *v83 = v92;
    v83[1] = v76;
    result = *&v94;
    v77 = v95;
    v83[2] = v94;
    v83[3] = v77;
    return result;
  }

  v26 = v24;
  v79 = v19;
  v80 = v18;
  *&v92 = MEMORY[0x277D84F90];
  sub_23E5864EC(0, v25 & ~(v25 >> 63), 0);
  if (v25 < 0)
  {
    __break(1u);
    goto LABEL_45;
  }

  v27 = 0;
  v28 = v92;
  v29 = v26;
  v89 = v26 & 0xC000000000000001;
  v85 = v26 & 0xFFFFFFFFFFFFFF8;
  v86 = *MEMORY[0x277D188B8];
  v87 = v25;
  v88 = v26;
  while (1)
  {
    if (v89)
    {
      v30 = MEMORY[0x23EF0D4D0](v27, v29);
      goto LABEL_15;
    }

    if ((v27 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v27 >= *(v85 + 16))
    {
      goto LABEL_41;
    }

    v30 = *(v29 + 8 * v27 + 32);
LABEL_15:
    v31 = v30;
    v32 = [v30 capabilities];
    v33 = [v32 valueForCapability_];

    v14 = v33 == 1;
    v34 = [v31 pushToken];
    v35 = sub_23E5C8BB0();
    v37 = v36;

    v38 = [v31 URI];
    v39 = [v38 prefixedURI];

    v13 = sub_23E5C8F40();
    v41 = v40;

    *&v92 = v28;
    v43 = *(v28 + 16);
    v42 = *(v28 + 24);
    a6 = (v43 + 1);
    if (v43 >= v42 >> 1)
    {
      sub_23E5864EC((v42 > 1), v43 + 1, 1);
      v28 = v92;
    }

    ++v27;
    *(v28 + 16) = a6;
    v44 = (v28 + 40 * v43);
    v44[4] = v14;
    v44[5] = v35;
    v44[6] = v37;
    v44[7] = v13;
    v44[8] = v41;
    v29 = v88;
    if (v87 == v27)
    {

      v19 = v79;
      v18 = v80;
      goto LABEL_35;
    }
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  swift_once();
LABEL_20:
  v45 = sub_23E5C8EB0();
  __swift_project_value_buffer(v45, qword_280C09108);

  v46 = sub_23E5C8E90();
  v47 = sub_23E5C9160();

  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    *&v92 = v49;
    *v48 = 136315394;
    v50 = sub_23E560AF0(v13, v14, &v92);

    *(v48 + 4) = v50;
    *(v48 + 12) = 2080;
    v51 = sub_23E5C8F00();
    v53 = sub_23E560AF0(v51, v52, &v92);

    *(v48 + 14) = v53;
    _os_log_impl(&dword_23E55E000, v46, v47, "Failed to map result destination to raw destination %s, %s", v48, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23EF0DE00](v49, -1, -1);
    v54 = v48;
    goto LABEL_32;
  }

LABEL_33:

  result = 0.0;
  a6[2] = 0u;
  a6[3] = 0u;
  *a6 = 0u;
  a6[1] = 0u;
  return result;
}

uint64_t sub_23E5BB480(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  if (a2)
  {
    v5 = sub_23E5C8EF0();
  }

  else
  {
    v5 = 0;
  }

  v6 = a3;
  v4(v5, a3);
}

uint64_t sub_23E5BB52C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_23E5BB550, 0, 0);
}

uint64_t sub_23E5BB550()
{
  v20 = v0;
  if (qword_280C09100 != -1)
  {
    swift_once();
  }

  v1 = sub_23E5C8EB0();
  v0[6] = __swift_project_value_buffer(v1, qword_280C09128);

  v2 = sub_23E5C8E90();
  v3 = sub_23E5C9170();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[3];
    v4 = v0[4];
    v6 = v0[2];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v19 = v8;
    *v7 = 136315394;
    v9 = MEMORY[0x23EF0D250](v6, MEMORY[0x277D837D0]);
    v11 = sub_23E560AF0(v9, v10, &v19);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2080;
    *(v7 + 14) = sub_23E560AF0(v5, v4, &v19);
    _os_log_impl(&dword_23E55E000, v2, v3, "Querying destinations %s on service %s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23EF0DE00](v8, -1, -1);
    MEMORY[0x23EF0DE00](v7, -1, -1);
  }

  v13 = v0[4];
  v12 = v0[5];
  v14 = v0[3];
  v15 = swift_task_alloc();
  v0[7] = v15;
  v15[2] = v12;
  v15[3] = v14;
  v15[4] = v13;
  v16 = swift_task_alloc();
  v0[8] = v16;
  *v16 = v0;
  v16[1] = sub_23E5BB7C0;
  v17 = v0[2];

  return sub_23E5B880C(&unk_23E5CEB78, v15, v17);
}

void sub_23E5BB7C0(uint64_t a1)
{
  *(*v2 + 72) = a1;

  if (v1)
  {
  }

  else
  {

    MEMORY[0x2822009F8](sub_23E5BB900, 0, 0);
  }
}

uint64_t sub_23E5BB900()
{
  v38 = v0;

  v1 = sub_23E5C8E90();
  v2 = sub_23E5C9170();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[9];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v6 = v5;
    v34 = v5;
    *v4 = 136315138;
    v7 = *(v3 + 16);
    v8 = MEMORY[0x277D84F90];
    if (v7)
    {
      v30 = v5;
      v31 = v4;
      v32 = v2;
      v33 = v1;
      v9 = v0[9];
      v35 = MEMORY[0x277D84F90];
      sub_23E5864AC(0, v7, 0);
      v8 = v35;
      v10 = (v9 + 48);
      do
      {
        v11 = v10[1];
        v12 = v10[4];
        v13 = v10[5];
        v36 = *v10;
        v37 = v11;

        swift_bridgeObjectRetain_n();

        MEMORY[0x23EF0D190](8250, 0xE200000000000000);
        MEMORY[0x23EF0D190](v12, v13);
        MEMORY[0x23EF0D190](10, 0xE100000000000000);

        v14 = v36;
        v15 = v37;
        v35 = v8;
        v17 = *(v8 + 16);
        v16 = *(v8 + 24);
        if (v17 >= v16 >> 1)
        {
          sub_23E5864AC((v16 > 1), v17 + 1, 1);
          v8 = v35;
        }

        *(v8 + 16) = v17 + 1;
        v18 = v8 + 16 * v17;
        *(v18 + 32) = v14;
        *(v18 + 40) = v15;
        v10 += 8;
        --v7;
      }

      while (v7);
      v1 = v33;
      v2 = v32;
      v6 = v30;
      v4 = v31;
    }

    v19 = MEMORY[0x23EF0D250](v8, MEMORY[0x277D837D0]);
    v21 = v20;

    v22 = sub_23E560AF0(v19, v21, &v34);

    *(v4 + 4) = v22;
    _os_log_impl(&dword_23E55E000, v1, v2, "Found cached results %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x23EF0DE00](v6, -1, -1);
    MEMORY[0x23EF0DE00](v4, -1, -1);
  }

  v24 = v0[4];
  v23 = v0[5];
  v25 = v0[3];
  v26 = swift_task_alloc();
  v0[10] = v26;
  v26[2] = v23;
  v26[3] = v25;
  v26[4] = v24;
  v27 = swift_task_alloc();
  v0[11] = v27;
  *v27 = v0;
  v27[1] = sub_23E5BBC24;
  v28 = v0[2];

  return sub_23E5B9248(&unk_23E5CEB90, v26, v28);
}

void sub_23E5BBC24(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 96) = a1;

  if (v1)
  {
  }

  else
  {

    v6 = swift_task_alloc();
    v4[13] = v6;
    *v6 = v5;
    v6[1] = sub_23E5BBD9C;
    v7 = v4[4];
    v8 = v4[3];

    sub_23E5B9788(a1, v8, v7);
  }
}

uint64_t sub_23E5BBD9C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 112) = a1;
  *(v3 + 120) = v1;

  if (v1)
  {
    v4 = sub_23E5BC384;
  }

  else
  {

    v4 = sub_23E5BBEB8;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_23E5BBEB8()
{
  v36 = v0;

  v1 = sub_23E5C8E90();
  v2 = sub_23E5C9170();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[14];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v6 = v5;
    v32 = v5;
    *v4 = 136315138;
    v7 = *(v3 + 16);
    v8 = MEMORY[0x277D84F90];
    if (v7)
    {
      v28 = v5;
      v29 = v4;
      v30 = v2;
      v31 = v1;
      v9 = v0[14];
      v33 = MEMORY[0x277D84F90];
      sub_23E5864AC(0, v7, 0);
      v8 = v33;
      v10 = (v9 + 48);
      do
      {
        v11 = v10[1];
        v12 = v10[4];
        v13 = v10[5];
        v34 = *v10;
        v35 = v11;

        swift_bridgeObjectRetain_n();

        MEMORY[0x23EF0D190](8250, 0xE200000000000000);
        MEMORY[0x23EF0D190](v12, v13);
        MEMORY[0x23EF0D190](10, 0xE100000000000000);

        v14 = v34;
        v15 = v35;
        v33 = v8;
        v17 = *(v8 + 16);
        v16 = *(v8 + 24);
        if (v17 >= v16 >> 1)
        {
          sub_23E5864AC((v16 > 1), v17 + 1, 1);
          v8 = v33;
        }

        *(v8 + 16) = v17 + 1;
        v18 = v8 + 16 * v17;
        *(v18 + 32) = v14;
        *(v18 + 40) = v15;
        v10 += 8;
        --v7;
      }

      while (v7);
      v1 = v31;
      v2 = v30;
      v6 = v28;
      v4 = v29;
    }

    v19 = MEMORY[0x23EF0D250](v8, MEMORY[0x277D837D0]);
    v21 = v20;

    v22 = sub_23E560AF0(v19, v21, &v32);

    *(v4 + 4) = v22;
    _os_log_impl(&dword_23E55E000, v1, v2, "Fetched new results %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x23EF0DE00](v6, -1, -1);
    MEMORY[0x23EF0DE00](v4, -1, -1);
  }

  v23 = v0[5];
  v24 = swift_task_alloc();
  v0[16] = v24;
  *(v24 + 16) = v23;
  v25 = swift_task_alloc();
  v0[17] = v25;
  *v25 = v0;
  v25[1] = sub_23E5BC1D4;
  v26 = v0[14];

  return sub_23E5B8D9C(&unk_23E5CEBB0, v24, v26);
}

void sub_23E5BC1D4()
{

  if (v0)
  {
  }

  else
  {

    MEMORY[0x2822009F8](sub_23E5BC310, 0, 0);
  }
}

uint64_t sub_23E5BC310()
{
  v3 = v0[9];
  sub_23E585D88(v0[14]);
  v1 = v0[1];

  return v1(v3);
}

uint64_t sub_23E5BC384()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23E5BC3F4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v5[2] = a1;
  v5[3] = a3;
  v6 = a2[1];
  v5[6] = *a2;
  v5[7] = v6;
  return MEMORY[0x2822009F8](sub_23E5BC420, 0, 0);
}

uint64_t sub_23E5BC420()
{
  v1 = v0[3];
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v11 = (*(v3 + 16) + **(v3 + 16));
  v4 = swift_task_alloc();
  v0[8] = v4;
  *v4 = v0;
  v4[1] = sub_23E5BC554;
  v5 = v0[6];
  v6 = v0[7];
  v7 = v0[4];
  v8 = v0[5];
  v9 = v0[2];

  return v11(v9, v5, v6, v7, v8, v2, v3);
}

uint64_t sub_23E5BC554()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_23E5BC64C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a2;
  v4[3] = a3;
  v5 = *a1;
  v6 = a1[1];
  v4[4] = a4;
  v4[5] = v5;
  v4[6] = v6;
  return MEMORY[0x2822009F8](sub_23E5BC678, 0, 0);
}

uint64_t sub_23E5BC678()
{
  v1 = v0[2];
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v10 = (*(v3 + 24) + **(v3 + 24));
  v4 = swift_task_alloc();
  v0[7] = v4;
  *v4 = v0;
  v4[1] = sub_23E5BC7A8;
  v6 = v0[5];
  v5 = v0[6];
  v7 = v0[3];
  v8 = v0[4];

  return v10(v6, v5, v7, v8, v2, v3);
}

uint64_t sub_23E5BC7A8(char a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3((a1 & 1) == 0);
}

uint64_t sub_23E5BC8AC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  *(v2 + 16) = *a1;
  *(v2 + 80) = a2;
  *(v2 + 88) = v3;
  *(v2 + 48) = *(a1 + 32);
  v4 = *(a1 + 56);
  *(v2 + 104) = *(a1 + 48);
  *(v2 + 112) = v4;
  return MEMORY[0x2822009F8](sub_23E5BC8E8, 0, 0);
}

uint64_t sub_23E5BC8E8()
{
  v2 = v0[13];
  v1 = v0[14];
  v4 = v0[11];
  v3 = v0[12];
  v5 = v0[10];
  v6 = v5[3];
  v7 = v5[4];
  __swift_project_boxed_opaque_existential_1(v5, v6);
  v0[4] = v4;
  v0[5] = v3;
  v0[8] = v2;
  v0[9] = v1;
  v14 = (*(v7 + 8) + **(v7 + 8));
  v8 = swift_task_alloc();
  v0[15] = v8;
  *v8 = v0;
  v8[1] = sub_23E5BCA3C;
  v9 = v0[13];
  v10 = v0[14];
  v11 = v0[11];
  v12 = v0[12];

  return v14(v0 + 2, v11, v12, v9, v10, v6, v7);
}

uint64_t sub_23E5BCA3C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void *sub_23E5BCB34(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3466D0, &qword_23E5CA670);
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

uint64_t sub_23E5BCBB8(uint64_t a1, void *a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_23E55FD64;

  return sub_23E5BC3F4(a1, a2, v6, v7, v8);
}

uint64_t sub_23E5BCC7C(uint64_t *a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_23E594A1C;

  return sub_23E5BC64C(a1, v4, v5, v6);
}

uint64_t sub_23E5BCD2C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_23E55FD60;

  return sub_23E5BC8AC(a1, v4);
}

void *sub_23E5BCDF0(void *result, void *a2, uint64_t a3, uint64_t a4)
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

uint64_t sub_23E5BCF50(uint64_t a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E346BB8, &qword_23E5CEBC8);

  return sub_23E5BA388(a1, a2);
}

unint64_t sub_23E5BD018()
{
  result = qword_27E346BC0;
  if (!qword_27E346BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E346BC0);
  }

  return result;
}

uint64_t sub_23E5BD078(unint64_t a1, void (*a2)(__int128 *__return_ptr, id, id))
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = 0;
    v3 = 0;
    v4 = 0;
    v5 = sub_23E5C9310() | 0x8000000000000000;
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v3 = ~v6;
    v2 = a1 + 64;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v4 = v8 & *(a1 + 64);
    v5 = a1;
  }

  v10 = 0;
  v27 = MEMORY[0x277D84F90];
  v40 = v5;
LABEL_8:
  v11 = v10;
  v12 = v4;
  if ((v5 & 0x8000000000000000) != 0)
  {
    do
    {
      v19 = sub_23E5C9320();
      if (!v19)
      {
        goto LABEL_25;
      }

      v21 = v20;
      *&v32 = v19;
      sub_23E593770(0, &qword_280C088A0, 0x277CCACA8);
      swift_dynamicCast();
      v17 = v36;
      *&v32 = v21;
      sub_23E593770(0, &qword_280C088D8, 0x277D189D0);
      swift_dynamicCast();
      v18 = v36;
      v10 = v11;
      v4 = v12;
      if (!v17)
      {
        goto LABEL_25;
      }

LABEL_17:
      a2(&v36, v17, v18);

      if (*(&v36 + 1))
      {
        v32 = v36;
        v33 = v37;
        v34 = v38;
        v35 = v39;
        v22 = v27;
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_23E5C2BCC(0, *(v27 + 16) + 1, 1, v27);
          v22 = result;
        }

        v5 = v40;
        v24 = *(v22 + 16);
        v23 = *(v22 + 24);
        if (v24 >= v23 >> 1)
        {
          result = sub_23E5C2BCC((v23 > 1), v24 + 1, 1, v22);
          v22 = result;
        }

        v30 = v34;
        v31 = v35;
        v25 = v32;
        v29 = v33;
        *(v22 + 16) = v24 + 1;
        v27 = v22;
        v26 = (v22 + (v24 << 6));
        v26[4] = v30;
        v26[5] = v31;
        v26[2] = v25;
        v26[3] = v29;
        goto LABEL_8;
      }

      v32 = v36;
      v33 = v37;
      v34 = v38;
      v35 = v39;
      result = sub_23E562510(&v32, &qword_27E346BD0, &qword_23E5CEBE0);
      v11 = v10;
      v12 = v4;
      v5 = v40;
    }

    while ((v40 & 0x8000000000000000) != 0);
  }

  v13 = v11;
  v14 = v12;
  v10 = v11;
  if (v12)
  {
LABEL_13:
    v4 = (v14 - 1) & v14;
    v15 = (v10 << 9) | (8 * __clz(__rbit64(v14)));
    v16 = *(*(v5 + 56) + v15);
    v17 = *(*(v5 + 48) + v15);
    v18 = v16;
    if (v17)
    {
      goto LABEL_17;
    }

LABEL_25:
    sub_23E5BCF48(v40);
    return v27;
  }

  while (1)
  {
    v10 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v10 >= ((v3 + 64) >> 6))
    {
      goto LABEL_25;
    }

    v14 = *(v2 + 8 * v10);
    ++v13;
    if (v14)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

_OWORD *sub_23E5BD3F4(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

ActivitySharingClient::InvitationDestinationReachability_optional __swiftcall InvitationDestinationReachability.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_23E5BD434()
{
  result = qword_27E346BE8;
  if (!qword_27E346BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E346BE8);
  }

  return result;
}

unint64_t sub_23E5BD550()
{
  result = qword_27E346BF0;
  if (!qword_27E346BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E346BF0);
  }

  return result;
}

uint64_t SecureCloudClient.acceptInvite(from:)(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  return MEMORY[0x2822009F8](sub_23E5BD5C8, 0, 0);
}

uint64_t sub_23E5BD5C8()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  v4 = v1[3];
  v5 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v4);
  v0[2] = v3;
  v0[3] = v2;
  v9 = (*(v5 + 32) + **(v5 + 32));
  v6 = swift_task_alloc();
  v0[7] = v6;
  *v6 = v0;
  v6[1] = sub_23E5BD724;
  v7 = MEMORY[0x277D837D0];

  return v9(1105, v0 + 2, v7, &protocol witness table for String, v4, v5);
}

uint64_t sub_23E5BD724()
{
  v2 = *v1;
  *(v2 + 64) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_23E575B50, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t SecureCloudClient.withdrawInvite(to:)(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  return MEMORY[0x2822009F8](sub_23E5BD87C, 0, 0);
}

uint64_t sub_23E5BD87C()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  v4 = v1[3];
  v5 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v4);
  v0[2] = v3;
  v0[3] = v2;
  v9 = (*(v5 + 32) + **(v5 + 32));
  v6 = swift_task_alloc();
  v0[7] = v6;
  *v6 = v0;
  v6[1] = sub_23E5BD9D8;
  v7 = MEMORY[0x277D837D0];

  return v9(1106, v0 + 2, v7, &protocol witness table for String, v4, v5);
}

uint64_t sub_23E5BD9D8()
{
  v2 = *v1;
  *(v2 + 64) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_23E576438, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t SecureCloudClient.ignoreInvite(from:)(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  return MEMORY[0x2822009F8](sub_23E5BDB30, 0, 0);
}

uint64_t sub_23E5BDB30()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  v4 = v1[3];
  v5 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v4);
  v0[2] = v3;
  v0[3] = v2;
  v9 = (*(v5 + 32) + **(v5 + 32));
  v6 = swift_task_alloc();
  v0[7] = v6;
  *v6 = v0;
  v6[1] = sub_23E5BD9D8;
  v7 = MEMORY[0x277D837D0];

  return v9(1107, v0 + 2, v7, &protocol witness table for String, v4, v5);
}

uint64_t SecureCloudClient.setMuteEnabled(setMuteEnabledTransportItem:)(uint64_t a1)
{
  *(v2 + 80) = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  *(v2 + 40) = v1;
  *(v2 + 48) = v3;
  *(v2 + 56) = v4;
  return MEMORY[0x2822009F8](sub_23E5BDCBC, 0, 0);
}

uint64_t sub_23E5BDCBC()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = *(v0 + 80);
  v4 = *(v0 + 40);
  v5 = v4[3];
  v6 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v5);
  *(v0 + 16) = v3;
  *(v0 + 24) = v2;
  *(v0 + 32) = v1;
  v7 = *(v6 + 32);

  v10 = (v7 + *v7);
  v8 = swift_task_alloc();
  *(v0 + 64) = v8;
  *v8 = v0;
  v8[1] = sub_23E5BDE2C;

  return (v10)(1158, v0 + 16, &type metadata for SetMuteEnabledTransportItem, &protocol witness table for SetMuteEnabledTransportItem, v5, v6);
}

uint64_t sub_23E5BDE2C()
{
  v2 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_23E57643C, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t SecureCloudClient.setActivityDataVisible(setActivityDataVisibleTransportItem:)(uint64_t a1)
{
  *(v2 + 80) = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  *(v2 + 40) = v1;
  *(v2 + 48) = v3;
  *(v2 + 56) = v4;
  return MEMORY[0x2822009F8](sub_23E5BDFB8, 0, 0);
}

uint64_t sub_23E5BDFB8()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = *(v0 + 80);
  v4 = *(v0 + 40);
  v5 = v4[3];
  v6 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v5);
  *(v0 + 16) = v3;
  *(v0 + 24) = v2;
  *(v0 + 32) = v1;
  v7 = *(v6 + 32);

  v10 = (v7 + *v7);
  v8 = swift_task_alloc();
  *(v0 + 64) = v8;
  *v8 = v0;
  v8[1] = sub_23E5BE128;

  return (v10)(1159, v0 + 16, &type metadata for SetActivityDataVisibleTransportItem, &protocol witness table for SetActivityDataVisibleTransportItem, v5, v6);
}

uint64_t sub_23E5BE128()
{
  v2 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_23E5760D0, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t SecureCloudClient.removeFriend(_:)(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  return MEMORY[0x2822009F8](sub_23E5BE2A8, 0, 0);
}

uint64_t sub_23E5BE2A8()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  v4 = v1[3];
  v5 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v4);
  v0[2] = v3;
  v0[3] = v2;
  v9 = (*(v5 + 32) + **(v5 + 32));
  v6 = swift_task_alloc();
  v0[7] = v6;
  *v6 = v0;
  v6[1] = sub_23E5BD9D8;
  v7 = MEMORY[0x277D837D0];

  return v9(1157, v0 + 2, v7, &protocol witness table for String, v4, v5);
}

uint64_t sub_23E5BE444()
{
  v1 = *(v0 + 16);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v6 = (*(v3 + 24) + **(v3 + 24));
  v4 = swift_task_alloc();
  *(v0 + 24) = v4;
  *v4 = v0;
  v4[1] = sub_23E574BCC;

  return v6(1101, v2, v3);
}

uint64_t sub_23E5BE58C()
{
  v1 = *(v0 + 16);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v6 = (*(v3 + 24) + **(v3 + 24));
  v4 = swift_task_alloc();
  *(v0 + 24) = v4;
  *v4 = v0;
  v4[1] = sub_23E576440;

  return v6(1102, v2, v3);
}

uint64_t SecureCloudClient.sendInvitation(destination:callerIdentifier:serviceIdentifier:additionalServiceIdentifiers:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[15] = a7;
  v8[16] = v7;
  v8[13] = a5;
  v8[14] = a6;
  v8[11] = a3;
  v8[12] = a4;
  v8[9] = a1;
  v8[10] = a2;
  return MEMORY[0x2822009F8](sub_23E5BE6E0, 0, 0);
}

uint64_t sub_23E5BE6E0()
{
  v2 = v0[15];
  v1 = v0[16];
  v4 = v0[13];
  v3 = v0[14];
  v5 = v0[11];
  v6 = v0[12];
  v7 = v0[9];
  v8 = v0[10];
  v9 = v1[4];
  v14 = v1[3];
  __swift_project_boxed_opaque_existential_1(v1, v14);
  v0[2] = v7;
  v0[3] = v8;
  v0[4] = v5;
  v0[5] = v6;
  v0[6] = v4;
  v0[7] = v3;
  v0[8] = v2;
  v10 = *(v9 + 32);

  v13 = (v10 + *v10);
  v11 = swift_task_alloc();
  v0[17] = v11;
  *v11 = v0;
  v11[1] = sub_23E5BE87C;

  return (v13)(1103, v0 + 2, &type metadata for InvitationRequestItem, &protocol witness table for InvitationRequestItem, v14, v9);
}

uint64_t sub_23E5BE87C()
{
  v2 = *v1;
  v2[18] = v0;

  sub_23E5BE9DC(v2[2], v2[3], v2[4], v2[5], v2[6], v2[7], v2[8]);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_23E5BE9C4, 0, 0);
  }

  else
  {
    v3 = v2[1];

    return v3();
  }
}

void sub_23E5BE9DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a2)
  {
  }
}

uint64_t SecureCloudClient.pingDestination(_:)(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  return MEMORY[0x2822009F8](sub_23E5BEA64, 0, 0);
}

uint64_t sub_23E5BEA64()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  v4 = v1[3];
  v5 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v4);
  v0[2] = v3;
  v0[3] = v2;
  v9 = (*(v5 + 32) + **(v5 + 32));
  v6 = swift_task_alloc();
  v0[7] = v6;
  *v6 = v0;
  v6[1] = sub_23E5BD9D8;
  v7 = MEMORY[0x277D837D0];

  return v9(1150, v0 + 2, v7, &protocol witness table for String, v4, v5);
}

uint64_t SecureCloudClient.upgradeFriend(friendIdentifier:)(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  return MEMORY[0x2822009F8](sub_23E5BEBE4, 0, 0);
}

uint64_t sub_23E5BEBE4()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  v4 = v1[3];
  v5 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v4);
  v0[2] = v3;
  v0[3] = v2;
  v9 = (*(v5 + 32) + **(v5 + 32));
  v6 = swift_task_alloc();
  v0[7] = v6;
  *v6 = v0;
  v6[1] = sub_23E5BD9D8;
  v7 = MEMORY[0x277D837D0];

  return v9(1108, v0 + 2, v7, &protocol witness table for String, v4, v5);
}

uint64_t SecureCloudClient.migrateFriend(friendIdentifier:)(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  return MEMORY[0x2822009F8](sub_23E5BED64, 0, 0);
}

uint64_t sub_23E5BED64()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  v4 = v1[3];
  v5 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v4);
  v0[2] = v3;
  v0[3] = v2;
  v9 = (*(v5 + 32) + **(v5 + 32));
  v6 = swift_task_alloc();
  v0[7] = v6;
  *v6 = v0;
  v6[1] = sub_23E5BD9D8;
  v7 = MEMORY[0x277D837D0];

  return v9(1110, v0 + 2, v7, &protocol witness table for String, v4, v5);
}

uint64_t sub_23E5BEEE0()
{
  v1 = *(v0 + 24);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v8 = (*(v3 + 48) + **(v3 + 48));
  v4 = swift_task_alloc();
  *(v0 + 32) = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E346BF8, &qword_23E5CEE18);
  v6 = sub_23E5BF150();
  *v4 = v0;
  v4[1] = sub_23E5BF03C;

  return v8(v0 + 16, 1111, v5, v6, v2, v3);
}

uint64_t sub_23E5BF03C()
{
  *(*v1 + 40) = v0;

  if (v0)
  {
    v2 = sub_23E590504;
  }

  else
  {
    v2 = sub_23E592820;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

unint64_t sub_23E5BF150()
{
  result = qword_280C088F0;
  if (!qword_280C088F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E346BF8, &qword_23E5CEE18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C088F0);
  }

  return result;
}

uint64_t SecureCloudClient.requestDowngrade(friendIdentifier:)(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  return MEMORY[0x2822009F8](sub_23E5BF1F0, 0, 0);
}

uint64_t sub_23E5BF1F0()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  v4 = v1[3];
  v5 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v4);
  v0[2] = v3;
  v0[3] = v2;
  v9 = (*(v5 + 32) + **(v5 + 32));
  v6 = swift_task_alloc();
  v0[7] = v6;
  *v6 = v0;
  v6[1] = sub_23E5BD9D8;
  v7 = MEMORY[0x277D837D0];

  return v9(1153, v0 + 2, v7, &protocol witness table for String, v4, v5);
}

uint64_t SecureCloudClient.acknowledgeDowngradeRequest(friendIdentifier:)(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  return MEMORY[0x2822009F8](sub_23E5BF370, 0, 0);
}

uint64_t sub_23E5BF370()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  v4 = v1[3];
  v5 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v4);
  v0[2] = v3;
  v0[3] = v2;
  v9 = (*(v5 + 32) + **(v5 + 32));
  v6 = swift_task_alloc();
  v0[7] = v6;
  *v6 = v0;
  v6[1] = sub_23E5BD9D8;
  v7 = MEMORY[0x277D837D0];

  return v9(1156, v0 + 2, v7, &protocol witness table for String, v4, v5);
}

uint64_t SecureCloudClient.repairFriend(_:)(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  return MEMORY[0x2822009F8](sub_23E5BF4F0, 0, 0);
}

uint64_t sub_23E5BF4F0()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  v4 = v1[3];
  v5 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v4);
  v0[2] = v3;
  v0[3] = v2;
  v9 = (*(v5 + 32) + **(v5 + 32));
  v6 = swift_task_alloc();
  v0[7] = v6;
  *v6 = v0;
  v6[1] = sub_23E5BD9D8;
  v7 = MEMORY[0x277D837D0];

  return v9(1160, v0 + 2, v7, &protocol witness table for String, v4, v5);
}

void __swiftcall InvitationRequestItem.init(destination:localCallerIdentifier:preferredServiceIdentifier:additionalServiceIdentifiers:)(ActivitySharingClient::InvitationRequestItem *__return_ptr retstr, Swift::String destination, Swift::String localCallerIdentifier, Swift::String preferredServiceIdentifier, Swift::OpaquePointer additionalServiceIdentifiers)
{
  retstr->destination = destination;
  retstr->localCallerIdentifier = localCallerIdentifier;
  retstr->preferredServiceIdentifier = preferredServiceIdentifier;
  retstr->additionalServiceIdentifiers = additionalServiceIdentifiers;
}

uint64_t InvitationRequestItem.destination.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t InvitationRequestItem.localCallerIdentifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t InvitationRequestItem.preferredServiceIdentifier.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

unint64_t sub_23E5BF6F8()
{
  v1 = 0x74616E6974736564;
  v2 = 0xD00000000000001CLL;
  if (*v0 == 2)
  {
    v2 = 0xD00000000000001ALL;
  }

  if (*v0)
  {
    v1 = 0xD000000000000015;
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

uint64_t sub_23E5BF788@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_23E5C0028(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_23E5BF7BC(uint64_t a1)
{
  v2 = sub_23E5BFA98();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23E5BF7F8(uint64_t a1)
{
  v2 = sub_23E5BFA98();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t InvitationRequestItem.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E346C00, &unk_23E5CEEC0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v12 - v5;
  v7 = v1[2];
  v16 = v1[3];
  v17 = v7;
  v8 = v1[4];
  v14 = v1[5];
  v15 = v8;
  v13 = v1[6];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23E5BFA98();
  sub_23E5C9510();
  v23 = 0;
  v9 = v18;
  sub_23E5C93C0();
  if (!v9)
  {
    v10 = v13;
    v22 = 1;
    sub_23E5C93C0();
    v21 = 2;
    sub_23E5C93C0();
    v19 = v10;
    v20 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3464F0, &qword_23E5CBE80);
    sub_23E586C78(&qword_27E346520, MEMORY[0x277D837D8], MEMORY[0x277D83948]);
    sub_23E5C93E0();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_23E5BFA98()
{
  result = qword_27E346C08;
  if (!qword_27E346C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E346C08);
  }

  return result;
}

uint64_t InvitationRequestItem.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E346C10, &qword_23E5CEED0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v20 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23E5BFA98();
  sub_23E5C9500();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v29 = 0;
  v9 = sub_23E5C9380();
  v24 = v10;
  v28 = 1;
  v11 = sub_23E5C9380();
  v23 = v12;
  v21 = v11;
  v27 = 2;
  v20 = sub_23E5C9380();
  v22 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3464F0, &qword_23E5CBE80);
  v26 = 3;
  sub_23E586C78(&qword_27E3464F8, MEMORY[0x277D83808], MEMORY[0x277D83978]);
  sub_23E5C93A0();
  (*(v6 + 8))(v8, v5);
  v16 = v24;
  v15 = v25;
  *a2 = v9;
  a2[1] = v16;
  v17 = v20;
  v19 = v22;
  v18 = v23;
  a2[2] = v21;
  a2[3] = v18;
  a2[4] = v17;
  a2[5] = v19;
  a2[6] = v15;

  __swift_destroy_boxed_opaque_existential_0(a1);
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_23E5BFE6C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_23E5BFEB4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_23E5BFF24()
{
  result = qword_27E346C18;
  if (!qword_27E346C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E346C18);
  }

  return result;
}

unint64_t sub_23E5BFF7C()
{
  result = qword_27E346C20;
  if (!qword_27E346C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E346C20);
  }

  return result;
}

unint64_t sub_23E5BFFD4()
{
  result = qword_27E346C28;
  if (!qword_27E346C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E346C28);
  }

  return result;
}

uint64_t sub_23E5C0028(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x74616E6974736564 && a2 == 0xEB000000006E6F69;
  if (v4 || (sub_23E5C9430() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000015 && 0x800000023E5D0C40 == a2 || (sub_23E5C9430() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD00000000000001ALL && 0x800000023E5D0C60 == a2 || (sub_23E5C9430() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD00000000000001CLL && 0x800000023E5D0C80 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_23E5C9430();

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

uint64_t sub_23E5C0198@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

unint64_t sub_23E5C0204()
{
  result = qword_27E346C30;
  if (!qword_27E346C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E346C30);
  }

  return result;
}

unint64_t sub_23E5C025C()
{
  result = qword_27E346C38;
  if (!qword_27E346C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E346C38);
  }

  return result;
}

unint64_t sub_23E5C02B4()
{
  result = qword_27E346C40;
  if (!qword_27E346C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E346C40);
  }

  return result;
}

unint64_t sub_23E5C030C()
{
  result = qword_27E346C48;
  if (!qword_27E346C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E346C48);
  }

  return result;
}

BOOL sub_23E5C039C(void *a1, uint64_t *a2)
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

void *sub_23E5C03CC@<X0>(void *result@<X0>, uint64_t a2@<X8>)
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

uint64_t *sub_23E5C03F8@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

void *sub_23E5C04D0@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t getEnumTagSinglePayload for InvitationDestinationEndpointCapabilities(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for InvitationDestinationEndpointCapabilities(uint64_t result, int a2, int a3)
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

uint64_t sub_23E5C05F0(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  if (v5)
  {
    v6 = result;
    v7 = 0;
    v8 = MEMORY[0x277D84F90];
    v9 = 32;
    v19 = result;
    while (v7 < *(a3 + 16))
    {
      v10 = *(a3 + v9 + 16);
      v24[0] = *(a3 + v9);
      v24[1] = v10;
      v11 = *(a3 + v9 + 48);
      v25 = *(a3 + v9 + 32);
      v26 = v11;
      v27 = v24[0];
      v28 = v10;
      v29 = v25;
      v30 = v11;
      sub_23E57EA28(v24, &v20);
      v12 = v6(&v27);
      if (v3)
      {
        v20 = v27;
        v21 = v28;
        v22 = v29;
        v23 = v30;
        sub_23E587D58(&v20);

        goto LABEL_15;
      }

      if (v12)
      {
        v20 = v27;
        v21 = v28;
        v22 = v29;
        v23 = v30;
        result = swift_isUniquelyReferenced_nonNull_native();
        v31 = v8;
        if ((result & 1) == 0)
        {
          result = sub_23E58650C(0, *(v8 + 16) + 1, 1);
          v8 = v31;
        }

        v14 = *(v8 + 16);
        v13 = *(v8 + 24);
        if (v14 >= v13 >> 1)
        {
          result = sub_23E58650C((v13 > 1), v14 + 1, 1);
          v8 = v31;
        }

        *(v8 + 16) = v14 + 1;
        v15 = (v8 + (v14 << 6));
        v16 = v20;
        v17 = v21;
        v18 = v23;
        v15[4] = v22;
        v15[5] = v18;
        v15[2] = v16;
        v15[3] = v17;
        v6 = v19;
      }

      else
      {
        v20 = v27;
        v21 = v28;
        v22 = v29;
        v23 = v30;
        result = sub_23E587D58(&v20);
      }

      ++v7;
      v9 += 64;
      if (v5 == v7)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
LABEL_15:

    return v8;
  }

  return result;
}

uint64_t sub_23E5C07A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  return MEMORY[0x2822009F8](sub_23E5C07CC, 0, 0);
}

uint64_t sub_23E5C07CC()
{
  v1 = v0[7];
  v2 = v1[2];
  v0[8] = v2;
  if (v2)
  {
    v3 = v0[5];
    v0[9] = MEMORY[0x277D84F90];
    v0[10] = 0;
    v4 = v1[5];
    v0[11] = v4;
    v0[2] = v1[4];
    v0[3] = v4;

    v9 = (v3 + *v3);
    v5 = swift_task_alloc();
    v0[12] = v5;
    *v5 = v0;
    v5[1] = sub_23E5C0940;

    return (v9)(v0 + 4, v0 + 2);
  }

  else
  {
    v7 = v0[1];
    v8 = MEMORY[0x277D84F90];

    return v7(v8);
  }
}

uint64_t sub_23E5C0940()
{
  *(*v1 + 104) = v0;

  if (v0)
  {

    v2 = sub_23E5B9724;
  }

  else
  {
    v2 = sub_23E5C0A5C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_23E5C0A5C()
{
  v1 = v0[4];
  result = v0[9];
  v3 = *(v1 + 16);
  v4 = *(result + 16);
  v5 = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
    goto LABEL_22;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  v6 = v0[9];
  if (result && (v7 = *(v6 + 24) >> 1, v7 >= v5))
  {
    if (*(v1 + 16))
    {
      goto LABEL_5;
    }
  }

  else
  {
    if (v4 <= v5)
    {
      v11 = v4 + v3;
    }

    else
    {
      v11 = v4;
    }

    result = sub_23E5C2BCC(result, v11, 1, v0[9]);
    v6 = result;
    v7 = *(result + 24) >> 1;
    if (*(v1 + 16))
    {
LABEL_5:
      if (v7 - *(v6 + 16) >= v3)
      {
        swift_arrayInitWithCopy();

        if (!v3)
        {
          goto LABEL_14;
        }

        v8 = *(v6 + 16);
        v9 = __OFADD__(v8, v3);
        v10 = v8 + v3;
        if (!v9)
        {
          *(v6 + 16) = v10;
          goto LABEL_14;
        }

LABEL_24:
        __break(1u);
        return result;
      }

LABEL_23:
      __break(1u);
      goto LABEL_24;
    }
  }

  if (v3)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

LABEL_14:
  v12 = v0[10];
  v13 = v0[8];

  if (v12 + 1 == v13)
  {
    v14 = v0[1];

    return v14(v6);
  }

  else
  {
    v15 = v0[10] + 1;
    v0[9] = v6;
    v0[10] = v15;
    v16 = v0[5];
    v17 = v0[7] + 16 * v15;
    v18 = *(v17 + 40);
    v0[11] = v18;
    v0[2] = *(v17 + 32);
    v0[3] = v18;

    v20 = (v16 + *v16);
    v19 = swift_task_alloc();
    v0[12] = v19;
    *v19 = v0;
    v19[1] = sub_23E5C0940;

    return (v20)(v0 + 4, v0 + 2);
  }
}

uint64_t sub_23E5C0CC0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a1;
  v4[8] = a3;
  v5 = *a2;
  v6 = a2[1];
  v4[9] = a4;
  v4[10] = v5;
  v4[11] = v6;
  return MEMORY[0x2822009F8](sub_23E5C0CEC, 0, 0);
}

uint64_t sub_23E5C0CEC()
{
  sub_23E5C6C54(v0[8], (v0 + 2));
  v1 = swift_task_alloc();
  v0[12] = v1;
  *v1 = v0;
  v1[1] = sub_23E5C0D94;
  v2 = v0[10];
  v3 = v0[11];
  v4 = v0[9];

  return sub_23E5BB52C(v4, v2, v3);
}

uint64_t sub_23E5C0D94(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 104) = v1;

  if (v1)
  {
    v5 = sub_23E5C0F2C;
  }

  else
  {
    *(v4 + 112) = a1;
    v5 = sub_23E5C0EBC;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_23E5C0EBC()
{
  v1 = v0[14];
  v2 = v0[7];
  sub_23E5C6CB8((v0 + 2));
  *v2 = v1;
  v3 = v0[1];

  return v3();
}

uint64_t sub_23E5C0F2C()
{
  v22 = v0;
  sub_23E5C6CB8(v0 + 16);
  if (qword_280C088F8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 104);
  v2 = sub_23E5C8EB0();
  __swift_project_value_buffer(v2, qword_280C09108);

  v3 = v1;
  v4 = sub_23E5C8E90();
  v5 = sub_23E5C9160();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 104);
    v7 = *(v0 + 80);
    v20 = *(v0 + 88);
    v8 = *(v0 + 72);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v21 = v11;
    *v9 = 136315650;
    v12 = MEMORY[0x23EF0D250](v8, MEMORY[0x277D837D0]);
    v14 = sub_23E560AF0(v12, v13, &v21);

    *(v9 + 4) = v14;
    *(v9 + 12) = 2080;
    *(v9 + 14) = sub_23E560AF0(v7, v20, &v21);
    *(v9 + 22) = 2112;
    v15 = v6;
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 24) = v16;
    *v10 = v16;
    _os_log_impl(&dword_23E55E000, v4, v5, "Failed to query destinations %s on service identifier %s, error: %@", v9, 0x20u);
    sub_23E586568(v10);
    MEMORY[0x23EF0DE00](v10, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x23EF0DE00](v11, -1, -1);
    MEMORY[0x23EF0DE00](v9, -1, -1);
  }

  v17 = *(v0 + 56);
  *v17 = MEMORY[0x277D84F90];
  v18 = *(v0 + 8);

  return v18();
}

char *sub_23E5C119C(uint64_t a1)
{
  v27 = a1;
  v1 = a1 + 64;
  v2 = 1 << *(a1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;

  v7 = 0;
  v25 = MEMORY[0x277D84F90];
  while (1)
  {
    v8 = v7;
    if (!v4)
    {
      break;
    }

LABEL_8:
    v9 = __clz(__rbit64(v4)) | (v7 << 6);
    v10 = (*(v27 + 48) + 16 * v9);
    v11 = *v10;
    v12 = v10[1];
    v13 = *(*(v27 + 56) + 8 * v9);
    MEMORY[0x28223BE20](isUniquelyReferenced_nonNull_native);
    v24[2] = v13;
    v24[3] = v26;
    swift_bridgeObjectRetain_n();

    *&v32 = sub_23E5C05F0(sub_23E5C3B84, v24, v13);

    sub_23E5C40F8(&v32);
    v4 &= v4 - 1;

    if (*(v32 + 16))
    {
      v14 = *(v32 + 48);
      v28 = *(v32 + 32);
      v29 = v14;
      v15 = *(v32 + 80);
      v30 = *(v32 + 64);
      v31 = v15;
      sub_23E57EA28(&v28, &v32);

      v32 = v28;
      v33 = v29;
      v34 = v30;
      v35 = v31;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        isUniquelyReferenced_nonNull_native = sub_23E5C2CD8(0, *(v25 + 2) + 1, 1, v25);
        v25 = isUniquelyReferenced_nonNull_native;
      }

      v17 = *(v25 + 2);
      v16 = *(v25 + 3);
      if (v17 >= v16 >> 1)
      {
        isUniquelyReferenced_nonNull_native = sub_23E5C2CD8((v16 > 1), v17 + 1, 1, v25);
        v25 = isUniquelyReferenced_nonNull_native;
      }

      v18 = v25;
      *(v25 + 2) = v17 + 1;
      v19 = &v18[88 * v17];
      *(v19 + 4) = v11;
      *(v19 + 5) = v12;
      v20 = v32;
      v21 = v33;
      v22 = v35;
      *(v19 + 5) = v34;
      *(v19 + 6) = v22;
      *(v19 + 3) = v20;
      *(v19 + 4) = v21;
      *(v19 + 14) = v13;
    }

    else
    {
    }
  }

  while (1)
  {
    v7 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v7 >= v5)
    {

      return v25;
    }

    v4 = *(v1 + 8 * v7);
    ++v8;
    if (v4)
    {
      goto LABEL_8;
    }
  }

  __break(1u);

  __break(1u);
  return result;
}

BOOL sub_23E5C1410(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 56);
  v4 = *(a2 + 48);
  v5 = *(a2 + 56);
  if (qword_280C08900 != -1)
  {
    swift_once();
  }

  v6 = qword_280C09120;
  v7 = *(qword_280C09120 + 16);
  if (!v7)
  {
    return 0;
  }

  v8 = 0;
  for (i = (qword_280C09120 + 40); ; i += 2)
  {
    v10 = *(i - 1) == v2 && *i == v3;
    if (v10 || (sub_23E5C9430() & 1) != 0)
    {
      break;
    }

    if (v7 == ++v8)
    {
      return 0;
    }
  }

  v11 = 0;
  for (j = (v6 + 40); ; j += 2)
  {
    v13 = *(j - 1) == v4 && *j == v5;
    if (v13 || (sub_23E5C9430() & 1) != 0)
    {
      break;
    }

    if (v7 == ++v11)
    {
      return 0;
    }
  }

  return v11 >= v8;
}

uint64_t sub_23E5C1528(__int128 *a1, uint64_t a2)
{
  v3 = v2;
  v4 = a1[1];
  v51 = *a1;
  v52 = v4;
  v5 = a1[3];
  v53 = a1[2];
  v54 = v5;
  if (BYTE8(v53) != 1)
  {
    goto LABEL_38;
  }

  v7 = *(&v54 + 1);
  v6 = v54;
  if (__PAIR128__(0x800000023E5CFB50, 0xD00000000000002ELL) != v54)
  {
    v8 = a2;
    v9 = sub_23E5C9430();
    a2 = v8;
    v3 = v2;
    if ((v9 & 1) == 0)
    {
      if (sub_23E5C8F40() == v54 && v25 == *(&v54 + 1))
      {
        goto LABEL_40;
      }

      v27 = sub_23E5C9430();

      if (v27)
      {
LABEL_28:
        v24 = 1;
        return v24 & 1;
      }

      if (sub_23E5C8F40() == v54 && v28 == *(&v54 + 1))
      {
LABEL_40:

        v24 = 1;
        return v24 & 1;
      }

      v30 = sub_23E5C9430();

      if (v30)
      {
        goto LABEL_28;
      }

      if (qword_280C088F8 != -1)
      {
LABEL_43:
        swift_once();
      }

      v31 = sub_23E5C8EB0();
      __swift_project_value_buffer(v31, qword_280C09108);
      sub_23E57EA28(&v51, &v47);
      v32 = sub_23E5C8E90();
      v33 = sub_23E5C9160();
      sub_23E587D58(&v51);
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v55 = v35;
        *v34 = 136315394;
        *(v34 + 4) = sub_23E560AF0(v6, v7, &v55);
        *(v34 + 12) = 2080;
        v43 = v51;
        v44 = v52;
        v45 = v53;
        v46 = v54;
        sub_23E57EA28(&v51, &v47);
        v36 = InvitationDestination.description.getter();
        v38 = v37;
        v47 = v43;
        v48 = v44;
        v49 = v45;
        v50 = v46;
        sub_23E587D58(&v47);
        v39 = sub_23E560AF0(v36, v38, &v55);

        *(v34 + 14) = v39;
        _os_log_impl(&dword_23E55E000, v32, v33, "Unexpected service %s for %s", v34, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x23EF0DE00](v35, -1, -1);
        MEMORY[0x23EF0DE00](v34, -1, -1);
      }

LABEL_38:
      v24 = 0;
      return v24 & 1;
    }
  }

  v10 = *(a2 + 16);
  if (v10)
  {
    v11 = 0;
    v12 = a2 + 32;
    v6 = MEMORY[0x277D84F90];
    v42 = a2 + 32;
    do
    {
      v13 = (v12 + (v11 << 6));
      v7 = v11;
      while (1)
      {
        if (v7 >= v10)
        {
          __break(1u);
LABEL_42:
          __break(1u);
          goto LABEL_43;
        }

        v14 = v13[1];
        v47 = *v13;
        v48 = v14;
        v15 = v13[3];
        v49 = v13[2];
        v50 = v15;
        v11 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          goto LABEL_42;
        }

        v16 = v50 == 0xD00000000000002ELL && 0x800000023E5CFB50 == *(&v50 + 1);
        if (!v16 && (sub_23E5C9430() & 1) == 0)
        {
          break;
        }

        ++v7;
        v13 += 4;
        if (v11 == v10)
        {
          goto LABEL_22;
        }
      }

      sub_23E57EA28(&v47, &v43);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v55 = v6;
      v41 = v3;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_23E58650C(0, *(v6 + 16) + 1, 1);
        v6 = v55;
      }

      v19 = *(v6 + 16);
      v18 = *(v6 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_23E58650C((v18 > 1), v19 + 1, 1);
        v6 = v55;
      }

      *(v6 + 16) = v19 + 1;
      v20 = (v6 + (v19 << 6));
      v21 = v47;
      v22 = v48;
      v23 = v50;
      v20[4] = v49;
      v20[5] = v23;
      v20[2] = v21;
      v20[3] = v22;
      v3 = v41;
      v12 = v42;
    }

    while (v11 != v10);
  }

  else
  {
    v6 = MEMORY[0x277D84F90];
  }

LABEL_22:
  v47 = v51;
  v48 = v52;
  v49 = v53;
  v50 = v54;
  v24 = sub_23E5C1970(&v47, v6);

  return v24 & 1;
}

uint64_t sub_23E5C1970(__int128 *a1, uint64_t a2)
{
  v2 = a2;
  v3 = a1[3];
  v47 = a1[2];
  v48 = v3;
  v4 = a1[1];
  v45 = *a1;
  v46 = v4;
  v5 = *(v47 + 16);
  v6 = (v47 + 32);
  v7 = v5 + 1;
  while (--v7)
  {
    v8 = *v6;
    v6 += 5;
    if ((qword_2850DED38 & ~v8) != 0)
    {
      if (qword_280C088F8 != -1)
      {
        swift_once();
      }

      v9 = sub_23E5C8EB0();
      __swift_project_value_buffer(v9, qword_280C09108);
      sub_23E57EA28(&v45, &v41);
      v10 = sub_23E5C8E90();
      v11 = sub_23E5C9160();
      sub_23E587D58(&v45);
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        *&v36[0] = v13;
        *v12 = 136315138;
        v37 = v45;
        v38 = v46;
        v39 = v47;
        v40 = v48;
        sub_23E57EA28(&v45, &v41);
        v14 = InvitationDestination.description.getter();
        v16 = v15;
        v41 = v37;
        v42 = v38;
        v43 = v39;
        v44 = v40;
        sub_23E587D58(&v41);
        v17 = sub_23E560AF0(v14, v16, v36);

        *(v12 + 4) = v17;
        _os_log_impl(&dword_23E55E000, v10, v11, "Some endpoints on invitation destination are missing capabilities %s", v12, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v13);
        MEMORY[0x23EF0DE00](v13, -1, -1);
        MEMORY[0x23EF0DE00](v12, -1, -1);
      }

      return 0;
    }
  }

  v18 = MEMORY[0x277D84F90];
  if (v5)
  {
    *&v41 = MEMORY[0x277D84F90];
    sub_23E58652C(0, v5, 0);
    v18 = v41;
    v19 = (v47 + 48);
    do
    {
      v20 = *(v19 - 1);
      v21 = *v19;
      sub_23E561880(v20, *v19);
      *&v41 = v18;
      v23 = *(v18 + 16);
      v22 = *(v18 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_23E58652C((v22 > 1), v23 + 1, 1);
        v18 = v41;
      }

      v19 += 5;
      *(v18 + 16) = v23 + 1;
      v24 = v18 + 16 * v23;
      *(v24 + 32) = v20;
      *(v24 + 40) = v21;
      --v5;
    }

    while (v5);
    v2 = a2;
  }

  v25 = sub_23E5C6B64(v18);

  v26 = *(v2 + 16);
  if (!v26)
  {
LABEL_19:

    return 1;
  }

  v27 = (v2 + 32);
  while (1)
  {
    v28 = v27[1];
    v41 = *v27;
    v42 = v28;
    v29 = v27[3];
    v31 = *v27;
    v30 = v27[1];
    v43 = v27[2];
    v44 = v29;
    v37 = v31;
    v38 = v30;
    v32 = v27[3];
    v39 = v27[2];
    v40 = v32;
    sub_23E57EA28(&v41, v36);
    v33 = sub_23E5C1CC0(&v37, v25, &v45);
    v36[0] = v37;
    v36[1] = v38;
    v36[2] = v39;
    v36[3] = v40;
    sub_23E587D58(v36);
    if ((v33 & 1) == 0)
    {
      break;
    }

    v27 += 4;
    if (!--v26)
    {
      goto LABEL_19;
    }
  }

  return 0;
}

uint64_t sub_23E5C1CC0(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v5 = a1[3];
  v37 = a1[2];
  v38 = v5;
  v6 = a1[1];
  v35 = *a1;
  v36 = v6;
  v7 = *(v37 + 16);
  v8 = MEMORY[0x277D84F90];
  v39 = v37;
  if (v7)
  {
    v34[0] = MEMORY[0x277D84F90];
    sub_23E58652C(0, v7, 0);
    v8 = v34[0];
    v9 = (v37 + 48);
    do
    {
      v10 = *(v9 - 1);
      v11 = *v9;
      sub_23E561880(v10, *v9);
      v34[0] = v8;
      v13 = *(v8 + 16);
      v12 = *(v8 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_23E58652C((v12 > 1), v13 + 1, 1);
        v8 = v34[0];
      }

      v9 += 5;
      *(v8 + 16) = v13 + 1;
      v14 = v8 + 16 * v13;
      *(v14 + 32) = v10;
      *(v14 + 40) = v11;
      --v7;
    }

    while (v7);
    v3 = a3;
  }

  v15 = sub_23E5C6B64(v8);

  v16 = sub_23E5C60B4(a2, v15);

  if ((v16 & 1) == 0)
  {
    if (qword_280C088F8 != -1)
    {
      swift_once();
    }

    v17 = sub_23E5C8EB0();
    __swift_project_value_buffer(v17, qword_280C09108);
    sub_23E57EA28(&v35, v34);
    v18 = sub_23E5C8E90();
    v19 = sub_23E5C9170();
    sub_23E587D58(&v35);
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v34[0] = v21;
      *v20 = 136315394;
      *(v20 + 4) = sub_23E560AF0(v36, *(&v36 + 1), v34);
      *(v20 + 12) = 2080;
      *(v20 + 14) = sub_23E560AF0(v38, *(&v38 + 1), v34);
      _os_log_impl(&dword_23E55E000, v18, v19, "Invite service missing endpoints from %s - %s", v20, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23EF0DE00](v21, -1, -1);
      MEMORY[0x23EF0DE00](v20, -1, -1);
    }

    sub_23E57EA28(&v35, v34);
    sub_23E57EA28(v3, v34);
    v22 = sub_23E5C8E90();
    v23 = sub_23E5C9170();
    sub_23E587D58(v3);
    sub_23E587D58(&v35);
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v34[0] = v25;
      *v24 = 136315394;
      v26 = MEMORY[0x23EF0D250](*(v3 + 32), &type metadata for InvitationDestinationEndpoint);
      v28 = sub_23E560AF0(v26, v27, v34);

      *(v24 + 4) = v28;
      *(v24 + 12) = 2080;
      v29 = MEMORY[0x23EF0D250](v39, &type metadata for InvitationDestinationEndpoint);
      v31 = sub_23E560AF0(v29, v30, v34);

      *(v24 + 14) = v31;
      _os_log_impl(&dword_23E55E000, v22, v23, "Invite service endpoints: %s, other endpoints: %s", v24, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23EF0DE00](v25, -1, -1);
      MEMORY[0x23EF0DE00](v24, -1, -1);
    }
  }

  return v16 & 1;
}

uint64_t InvitationDestinationService.fetchInvitationDestinationGroups(for:)(uint64_t a1)
{
  *(v2 + 368) = a1;
  *(v2 + 376) = v1;
  return MEMORY[0x2822009F8](sub_23E5C2090, 0, 0);
}

uint64_t sub_23E5C2090()
{
  if (qword_280C09100 != -1)
  {
    swift_once();
  }

  v1 = sub_23E5C8EB0();
  __swift_project_value_buffer(v1, qword_280C09128);
  sub_23E560890(0xD00000000000007ALL, 0x800000023E5D0CA0, 0xD000000000000026, 0x800000023E5D0D20);
  if (qword_280C08900 != -1)
  {
    swift_once();
  }

  v2 = qword_280C09120;
  v6 = v0[23];
  sub_23E560890(0xD00000000000007ALL, 0x800000023E5D0CA0, 0xD000000000000033, 0x800000023E5D0D50);
  v3 = swift_task_alloc();
  v0[24].i64[0] = v3;
  v3[1] = vextq_s8(v6, v6, 8uLL);
  v4 = swift_task_alloc();
  v0[24].i64[1] = v4;
  *v4 = v0;
  v4[1] = sub_23E5C225C;

  return sub_23E5C07A8(&unk_23E5CF360, v3, v2);
}

void sub_23E5C225C(uint64_t a1)
{
  *(*v2 + 400) = a1;

  if (v1)
  {
  }

  else
  {

    MEMORY[0x2822009F8](sub_23E5C239C, 0, 0);
  }
}

void sub_23E5C239C()
{
  v1 = *(v0 + 400);
  v41 = *(v1 + 16);
  if (v41)
  {
    v2 = 0;
    v3 = MEMORY[0x277D84F98];
    v4 = (v1 + 32);
    v40 = *(v0 + 400);
    while (1)
    {
      if (v2 >= *(v1 + 16))
      {
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
        return;
      }

      v5 = *v4;
      v6 = v4[1];
      v7 = v4[3];
      *(v0 + 144) = v4[2];
      *(v0 + 160) = v7;
      *(v0 + 112) = v5;
      *(v0 + 128) = v6;
      v9 = *(v0 + 128);
      v8 = *(v0 + 136);
      if (!v3[2])
      {
        break;
      }

      sub_23E57EA28(v0 + 112, v0 + 176);

      v10 = sub_23E57C65C(v9, v8);
      v11 = MEMORY[0x277D84F90];
      if (v12)
      {
        v11 = *(v3[7] + 8 * v10);
LABEL_10:
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E346C50, &qword_23E5CF370);
      inited = swift_initStackObject();
      inited[1] = xmmword_23E5CA3C0;
      v14 = *(v0 + 160);
      v16 = *(v0 + 112);
      v15 = *(v0 + 128);
      inited[4] = *(v0 + 144);
      inited[5] = v14;
      inited[2] = v16;
      inited[3] = v15;
      v17 = *(v11 + 2);
      sub_23E57EA28(v0 + 112, v0 + 240);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || (v19 = *(v11 + 3) >> 1, v19 <= v17))
      {
        v11 = sub_23E5C2BCC(isUniquelyReferenced_nonNull_native, v17 + 1, 1, v11);
        v19 = *(v11 + 3) >> 1;
      }

      if (v19 <= *(v11 + 2))
      {
        goto LABEL_35;
      }

      v42 = v2;
      swift_arrayInitWithCopy();

      ++*(v11 + 2);
      v20 = swift_isUniquelyReferenced_nonNull_native();
      v21 = v8;
      v22 = v20;
      v23 = v9;
      v24 = v9;
      v25 = v21;
      v27 = sub_23E57C65C(v24, v21);
      v28 = v3[2];
      v29 = (v26 & 1) == 0;
      v30 = v28 + v29;
      if (__OFADD__(v28, v29))
      {
        goto LABEL_36;
      }

      v31 = v26;
      if (v3[3] >= v30)
      {
        if (v22)
        {
          if (v26)
          {
            goto LABEL_3;
          }
        }

        else
        {
          sub_23E57E868();
          if (v31)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
        sub_23E5C37BC(v30, v22, &qword_27E3463E8, &unk_23E5CF440);
        v32 = sub_23E57C65C(v23, v25);
        if ((v31 & 1) != (v33 & 1))
        {

          sub_23E5C9470();
          return;
        }

        v27 = v32;
        if (v31)
        {
LABEL_3:

          *(v3[7] + 8 * v27) = v11;

          sub_23E587D58(v0 + 112);
          goto LABEL_4;
        }
      }

      v3[(v27 >> 6) + 8] |= 1 << v27;
      v34 = (v3[6] + 16 * v27);
      *v34 = v23;
      v34[1] = v25;
      *(v3[7] + 8 * v27) = v11;
      sub_23E587D58(v0 + 112);
      v35 = v3[2];
      v36 = __OFADD__(v35, 1);
      v37 = v35 + 1;
      if (v36)
      {
        goto LABEL_37;
      }

      v3[2] = v37;
LABEL_4:
      v2 = v42 + 1;
      v4 += 4;
      v1 = v40;
      if (v41 == v42 + 1)
      {
        goto LABEL_28;
      }
    }

    sub_23E57EA28(v0 + 112, v0 + 304);
    v11 = MEMORY[0x277D84F90];
    goto LABEL_10;
  }

  v3 = MEMORY[0x277D84F98];
LABEL_28:

  v38 = sub_23E5C119C(v3);

  v39 = *(v0 + 8);

  v39(v38);
}

uint64_t sub_23E5C2748(uint64_t a1, uint64_t *a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_23E55FD64;

  return sub_23E5C0CC0(a1, a2, v7, v6);
}

uint64_t sub_23E5C27FC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_23E5AFA94;

  return InvitationDestinationService.fetchInvitationDestinationGroups(for:)(a1);
}

uint64_t sub_23E5C2890@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = sub_23E5C8B50();
    if (v10)
    {
      v11 = sub_23E5C8B70();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = sub_23E5C8B60();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v20 = a3;
    v21 = BYTE2(a3);
    v22 = BYTE3(a3);
    v23 = BYTE4(a3);
    v24 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = sub_23E5C8B50();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_23E5C8B70();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_23E5C8B60();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

char *sub_23E5C2AC0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3466D0, &qword_23E5CA670);
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

char *sub_23E5C2BCC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E346C50, &qword_23E5CF370);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_23E5C2CD8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E346C58, &qword_23E5CF420);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 88);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[88 * v8])
    {
      memmove(v12, v13, 88 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_23E5C2E00(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E346C60, &qword_23E5CF428);
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

uint64_t sub_23E5C2F04(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E346408, &unk_23E5CF470);
  result = sub_23E5C9350();
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
      v29 = *(*(v5 + 56) + 16 * v19);
      if ((v4 & 1) == 0)
      {
      }

      sub_23E5C94D0();
      MEMORY[0x23EF0D6D0](v20);
      result = sub_23E5C94F0();
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

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 16 * v15) = v29;
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

    if ((v4 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v28 = 1 << *(v5 + 32);
    v3 = v2;
    if (v28 >= 64)
    {
      bzero((v5 + 64), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_23E5C31A8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E346400, &unk_23E5CB930);
  v37 = v4;
  result = sub_23E5C9350();
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
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(v5 + 56) + (v21 << 6);
      if (v37)
      {
        v38 = *(v25 + 8);
        v40 = *v25;
        v41 = *(v25 + 16);
        v39 = *(v25 + 24);
        v43 = *(v25 + 40);
        v44 = *(v25 + 48);
        v42 = *(v25 + 56);
      }

      else
      {
        v26 = *v25;
        v27 = *(v25 + 16);
        v28 = *(v25 + 48);
        *&v46[16] = *(v25 + 32);
        v47 = v28;
        v45 = v26;
        *v46 = v27;
        v44 = v28;
        v43 = v46[24];
        v41 = v27;
        v42 = *(&v28 + 1);
        v39 = *&v46[8];
        v38 = *(&v26 + 1);
        v40 = v26;

        sub_23E57EA28(&v45, v48);
      }

      sub_23E5C94D0();
      sub_23E5C8F80();
      result = sub_23E5C94F0();
      v29 = -1 << *(v7 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v14 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v14 + 8 * v31);
          if (v35 != -1)
          {
            v15 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v30) & ~*(v14 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v23;
      v16[1] = v24;
      v17 = *(v7 + 56) + (v15 << 6);
      *v17 = v40;
      *(v17 + 8) = v38;
      *(v17 + 16) = v41;
      *(v17 + 24) = v39;
      *(v17 + 40) = v43;
      *(v17 + 48) = v44;
      *(v17 + 56) = v42;
      ++*(v7 + 16);
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v2;
    if (v36 >= 64)
    {
      bzero((v5 + 64), ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_23E5C34FC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3463F0, &unk_23E5CB920);
  v37 = v4;
  result = sub_23E5C9350();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v5;
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
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v5 + 56) + v22);
      v27 = v26[1];
      v38 = *v26;
      if ((v37 & 1) == 0)
      {
      }

      sub_23E5C94D0();
      sub_23E5C8F80();
      result = sub_23E5C94F0();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v7 + 56) + v16);
      *v18 = v38;
      v18[1] = v27;
      ++*(v7 + 16);
      v5 = v36;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_23E5C37BC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v36 = v6;
  result = sub_23E5C9350();
  v9 = result;
  if (*(v7 + 16))
  {
    v35 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = (*(v7 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(*(v7 + 56) + 8 * v22);
      if ((v36 & 1) == 0)
      {
      }

      sub_23E5C94D0();
      sub_23E5C8F80();
      result = sub_23E5C94F0();
      v27 = -1 << *(v9 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v16 + 8 * (v28 >> 6))) == 0)
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
          v33 = *(v16 + 8 * v29);
          if (v33 != -1)
          {
            v17 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v28) & ~*(v16 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v9 + 56) + 8 * v17) = v26;
      ++*(v9 + 16);
      v7 = v35;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v5 = v4;
      goto LABEL_33;
    }

    v34 = 1 << *(v7 + 32);
    v5 = v4;
    if (v34 >= 64)
    {
      bzero(v11, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v34;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
  return result;
}

uint64_t dispatch thunk of InvitationDestinationServiceProtocol.fetchInvitationDestinationGroups(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 8) + **(a3 + 8));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_23E594A1C;

  return v9(a1, a2, a3);
}

char *sub_23E5C3BA4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3466D0, &qword_23E5CA670);
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

char *sub_23E5C3CB0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E346C80, &qword_23E5CF640);
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

char *sub_23E5C3DC0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E346C78, &unk_23E5CF450);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_23E5C3EE0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E346C50, &qword_23E5CF370);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_23E5C3FEC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E346C70, &qword_23E5CF438);
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

uint64_t sub_23E5C40F8(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_23E5C6B50(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_23E5C4164(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_23E5C4164(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_23E5C9400();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        v5 = sub_23E5C9080();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_23E5C43FC(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_23E5C425C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_23E5C425C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v5 = a3;
    v7 = *a4;
    v8 = *a4 + (a3 << 6);
    v9 = result - a3 + 1;
LABEL_4:
    v10 = v9;
    for (i = v8; ; i -= 4)
    {
      v12 = *i;
      v13 = i[1];
      v14 = i[3];
      v47[2] = i[2];
      v47[3] = v14;
      v47[0] = v12;
      v47[1] = v13;
      v15 = i[1];
      v43 = *i;
      v44 = v15;
      v16 = i[3];
      v45 = i[2];
      v46 = v16;
      v17 = *(i - 1);
      v19 = *(i - 4);
      v18 = *(i - 3);
      v48[2] = *(i - 2);
      v48[3] = v17;
      v48[0] = v19;
      v48[1] = v18;
      v20 = *(i - 3);
      v39 = *(i - 4);
      v40 = v20;
      v21 = *(i - 1);
      v41 = *(i - 2);
      v42 = v21;
      sub_23E57EA28(v47, &v35);
      sub_23E57EA28(v48, &v35);
      v22 = sub_23E5C1410(&v43, &v39);
      if (v4)
      {
        v31 = v39;
        v32 = v40;
        v33 = v41;
        v34 = v42;
        sub_23E587D58(&v31);
        v35 = v43;
        v36 = v44;
        v37 = v45;
        v38 = v46;
        return sub_23E587D58(&v35);
      }

      v23 = v22;
      v31 = v39;
      v32 = v40;
      v33 = v41;
      v34 = v42;
      sub_23E587D58(&v31);
      v35 = v43;
      v36 = v44;
      v37 = v45;
      v38 = v46;
      result = sub_23E587D58(&v35);
      if (!v23)
      {
LABEL_3:
        ++v5;
        v8 += 64;
        --v9;
        if (v5 == a2)
        {
          return result;
        }

        goto LABEL_4;
      }

      if (!v7)
      {
        break;
      }

      v24 = i - 4;
      v26 = i[2];
      v25 = i[3];
      v28 = *i;
      v27 = i[1];
      v29 = *(i - 3);
      *i = *(i - 4);
      i[1] = v29;
      v30 = *(i - 1);
      i[2] = *(i - 2);
      i[3] = v30;
      *v24 = v28;
      v24[1] = v27;
      v24[2] = v26;
      v24[3] = v25;
      if (!v10)
      {
        goto LABEL_3;
      }

      ++v10;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_23E5C43FC(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v133 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_110:
    v7 = v5;
    v5 = *v133;
    if (*v133)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        goto LABEL_140;
      }

      goto LABEL_112;
    }

    goto LABEL_149;
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7 + 1;
    v135 = v7;
    if (v7 + 1 >= v6)
    {
      ++v7;
      goto LABEL_18;
    }

    v10 = *a3;
    v11 = (*a3 + (v9 << 6));
    v12 = *v11;
    v13 = v11[1];
    v14 = v11[3];
    v170 = v11[2];
    v171 = v14;
    v168 = v12;
    v169 = v13;
    v164 = *v11;
    v165 = v11[1];
    v166 = v11[2];
    v167 = v11[3];
    v15 = (v10 + (v7 << 6));
    v16 = v15[3];
    v18 = *v15;
    v17 = v15[1];
    v174 = v15[2];
    v175 = v16;
    v172 = v18;
    v173 = v17;
    v19 = v15[1];
    v160 = *v15;
    v161 = v19;
    v20 = v15[3];
    v162 = v15[2];
    v163 = v20;
    sub_23E57EA28(&v168, &v156);
    sub_23E57EA28(&v172, &v156);
    v21 = sub_23E5C1410(&v164, &v160);
    if (v5)
    {
      v152 = v160;
      v153 = v161;
      v154 = v162;
      v155 = v163;
      sub_23E587D58(&v152);
      v156 = v164;
      v157 = v165;
      v158 = v166;
      v159 = v167;
      sub_23E587D58(&v156);
    }

    v22 = v21;
    v152 = v160;
    v153 = v161;
    v154 = v162;
    v155 = v163;
    sub_23E587D58(&v152);
    v156 = v164;
    v157 = v165;
    v158 = v166;
    v159 = v167;
    result = sub_23E587D58(&v156);
    v23 = v7 + 2;
    if (v7 + 2 >= v6)
    {
      v7 += 2;
      if (!v22)
      {
        goto LABEL_18;
      }

      goto LABEL_16;
    }

    v24 = v15 + 8;
    while (1)
    {
      v7 = v23;
      v25 = *v24;
      v26 = v24[1];
      v27 = v24[3];
      v150[2] = v24[2];
      v150[3] = v27;
      v150[0] = v25;
      v150[1] = v26;
      v28 = v24[1];
      v146 = *v24;
      v147 = v28;
      v29 = v24[3];
      v148 = v24[2];
      v149 = v29;
      v30 = *(v24 - 1);
      v32 = *(v24 - 4);
      v31 = *(v24 - 3);
      v151[2] = *(v24 - 2);
      v151[3] = v30;
      v151[0] = v32;
      v151[1] = v31;
      v33 = *(v24 - 3);
      v142 = *(v24 - 4);
      v143 = v33;
      v34 = *(v24 - 1);
      v144 = *(v24 - 2);
      v145 = v34;
      sub_23E57EA28(v150, v141);
      sub_23E57EA28(v151, v141);
      v35 = sub_23E5C1410(&v146, &v142);
      v140[0] = v142;
      v140[1] = v143;
      v140[2] = v144;
      v140[3] = v145;
      sub_23E587D58(v140);
      v141[0] = v146;
      v141[1] = v147;
      v141[2] = v148;
      v141[3] = v149;
      result = sub_23E587D58(v141);
      if ((v22 ^ v35))
      {
        break;
      }

      v23 = v7 + 1;
      v24 += 4;
      if (v6 == v7 + 1)
      {
        v9 = v7;
        v7 = v6;
        if (!v22)
        {
          goto LABEL_18;
        }

LABEL_16:
        v36 = v135;
        if (v7 >= v135)
        {
          if (v135 <= v9)
          {
            v113 = (v7 << 6) - 64;
            v114 = v135 << 6;
            v115 = v7;
            do
            {
              if (v36 != --v115)
              {
                v116 = *a3;
                if (!*a3)
                {
                  goto LABEL_147;
                }

                v117 = (v116 + v114);
                v118 = (v116 + v113);
                v120 = v117[2];
                v119 = v117[3];
                v122 = *v117;
                v121 = v117[1];
                v123 = v118[3];
                v125 = *v118;
                v124 = v118[1];
                v117[2] = v118[2];
                v117[3] = v123;
                *v117 = v125;
                v117[1] = v124;
                *v118 = v122;
                v118[1] = v121;
                v118[2] = v120;
                v118[3] = v119;
              }

              ++v36;
              v113 -= 64;
              v114 += 64;
            }

            while (v36 < v115);
          }

          goto LABEL_18;
        }

LABEL_143:
        __break(1u);
LABEL_144:
        __break(1u);
LABEL_145:
        __break(1u);
        goto LABEL_146;
      }
    }

    v9 = v7 - 1;
    if (v22)
    {
      goto LABEL_16;
    }

LABEL_18:
    v37 = a3[1];
    if (v7 < v37)
    {
      if (__OFSUB__(v7, v135))
      {
        goto LABEL_139;
      }

      if (v7 - v135 < a4)
      {
        v38 = v135 + a4;
        if (__OFADD__(v135, a4))
        {
          __break(1u);
LABEL_142:
          __break(1u);
          goto LABEL_143;
        }

        if (v38 >= v37)
        {
          v38 = a3[1];
        }

        if (v38 < v135)
        {
          goto LABEL_142;
        }

        if (v7 != v38)
        {
          v131 = v5;
          v137 = *a3;
          v134 = v38;
          do
          {
            v39 = v7;
            v138 = v7;
            while (1)
            {
              v40 = (v137 + (v39 << 6));
              v41 = v39 - 1;
              v42 = *v40;
              v43 = v40[1];
              v44 = v40[3];
              v170 = v40[2];
              v171 = v44;
              v168 = v42;
              v169 = v43;
              v45 = (v137 + ((v39 - 1) << 6));
              v46 = *v45;
              v47 = v45[1];
              v48 = v45[3];
              v174 = v45[2];
              v175 = v48;
              v172 = v46;
              v173 = v47;
              v49 = v171;
              sub_23E57EA28(&v168, &v164);
              sub_23E57EA28(&v172, &v164);
              if (qword_280C08900 != -1)
              {
                swift_once();
              }

              v50 = v8;
              v51 = *(qword_280C09120 + 16);
              if (!v51)
              {
                break;
              }

              v136 = v41;
              v52 = 0;
              v53 = (qword_280C09120 + 40);
              v54 = (qword_280C09120 + 40);
              while (1)
              {
                v55 = *(v54 - 1) == v49 && *v54 == *(&v49 + 1);
                if (v55 || (sub_23E5C9430() & 1) != 0)
                {
                  break;
                }

                ++v52;
                v54 += 2;
                if (v51 == v52)
                {
                  goto LABEL_51;
                }
              }

              v56 = 0;
              v57 = v175;
              while (1)
              {
                v58 = *(v53 - 1) == v57 && *v53 == *(&v57 + 1);
                if (v58 || (sub_23E5C9430() & 1) != 0)
                {
                  break;
                }

                ++v56;
                v53 += 2;
                if (v51 == v56)
                {
                  goto LABEL_51;
                }
              }

              sub_23E587D58(&v172);
              result = sub_23E587D58(&v168);
              v8 = v50;
              v59 = v138;
              if (v56 >= v52)
              {
                if (!v137)
                {
                  goto LABEL_145;
                }

                v61 = v40[2];
                v60 = v40[3];
                v63 = *v40;
                v62 = v40[1];
                v64 = v45[1];
                *v40 = *v45;
                v40[1] = v64;
                v65 = v45[3];
                v40[2] = v45[2];
                v40[3] = v65;
                *v45 = v63;
                v45[1] = v62;
                v45[2] = v61;
                v45[3] = v60;
                v39 = v136;
                if (v136 != v135)
                {
                  continue;
                }
              }

              goto LABEL_52;
            }

LABEL_51:
            sub_23E587D58(&v172);
            sub_23E587D58(&v168);
            v8 = v50;
            v59 = v138;
LABEL_52:
            v7 = v59 + 1;
          }

          while (v7 != v134);
          v7 = v134;
          v5 = v131;
        }
      }
    }

    if (v7 < v135)
    {
      goto LABEL_138;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_23E5C2E00(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v67 = *(v8 + 2);
    v66 = *(v8 + 3);
    v68 = v67 + 1;
    if (v67 >= v66 >> 1)
    {
      result = sub_23E5C2E00((v66 > 1), v67 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v68;
    v69 = &v8[16 * v67];
    *(v69 + 4) = v135;
    *(v69 + 5) = v7;
    v70 = *v133;
    if (!*v133)
    {
      goto LABEL_148;
    }

    if (v67)
    {
      break;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_110;
    }
  }

  while (1)
  {
    v71 = v68 - 1;
    if (v68 >= 4)
    {
      v76 = &v8[16 * v68 + 32];
      v77 = *(v76 - 64);
      v78 = *(v76 - 56);
      v82 = __OFSUB__(v78, v77);
      v79 = v78 - v77;
      if (v82)
      {
        goto LABEL_125;
      }

      v81 = *(v76 - 48);
      v80 = *(v76 - 40);
      v82 = __OFSUB__(v80, v81);
      v74 = v80 - v81;
      v75 = v82;
      if (v82)
      {
        goto LABEL_126;
      }

      v83 = &v8[16 * v68];
      v85 = *v83;
      v84 = *(v83 + 1);
      v82 = __OFSUB__(v84, v85);
      v86 = v84 - v85;
      if (v82)
      {
        goto LABEL_128;
      }

      v82 = __OFADD__(v74, v86);
      v87 = v74 + v86;
      if (v82)
      {
        goto LABEL_131;
      }

      if (v87 >= v79)
      {
        v105 = &v8[16 * v71 + 32];
        v107 = *v105;
        v106 = *(v105 + 1);
        v82 = __OFSUB__(v106, v107);
        v108 = v106 - v107;
        if (v82)
        {
          goto LABEL_137;
        }

        if (v74 < v108)
        {
          v71 = v68 - 2;
        }

        goto LABEL_95;
      }

      goto LABEL_74;
    }

    if (v68 == 3)
    {
      v72 = *(v8 + 4);
      v73 = *(v8 + 5);
      v82 = __OFSUB__(v73, v72);
      v74 = v73 - v72;
      v75 = v82;
LABEL_74:
      if (v75)
      {
        goto LABEL_127;
      }

      v88 = &v8[16 * v68];
      v90 = *v88;
      v89 = *(v88 + 1);
      v91 = __OFSUB__(v89, v90);
      v92 = v89 - v90;
      v93 = v91;
      if (v91)
      {
        goto LABEL_130;
      }

      v94 = &v8[16 * v71 + 32];
      v96 = *v94;
      v95 = *(v94 + 1);
      v82 = __OFSUB__(v95, v96);
      v97 = v95 - v96;
      if (v82)
      {
        goto LABEL_133;
      }

      if (__OFADD__(v92, v97))
      {
        goto LABEL_134;
      }

      if (v92 + v97 >= v74)
      {
        if (v74 < v97)
        {
          v71 = v68 - 2;
        }

        goto LABEL_95;
      }

      goto LABEL_88;
    }

    v98 = &v8[16 * v68];
    v100 = *v98;
    v99 = *(v98 + 1);
    v82 = __OFSUB__(v99, v100);
    v92 = v99 - v100;
    v93 = v82;
LABEL_88:
    if (v93)
    {
      goto LABEL_129;
    }

    v101 = &v8[16 * v71];
    v103 = *(v101 + 4);
    v102 = *(v101 + 5);
    v82 = __OFSUB__(v102, v103);
    v104 = v102 - v103;
    if (v82)
    {
      goto LABEL_132;
    }

    if (v104 < v92)
    {
      goto LABEL_3;
    }

LABEL_95:
    v109 = v71 - 1;
    if (v71 - 1 >= v68)
    {
      break;
    }

    if (!*a3)
    {
      goto LABEL_144;
    }

    v110 = *&v8[16 * v109 + 32];
    v111 = *&v8[16 * v71 + 40];
    sub_23E5C4CDC((*a3 + (v110 << 6)), (*a3 + (*&v8[16 * v71 + 32] << 6)), (*a3 + (v111 << 6)), v70);
    if (v5)
    {
    }

    if (v111 < v110)
    {
      goto LABEL_123;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_23E5C51A8(v8);
    }

    if (v109 >= *(v8 + 2))
    {
      goto LABEL_124;
    }

    v112 = &v8[16 * v109];
    *(v112 + 4) = v110;
    *(v112 + 5) = v111;
    v176 = v8;
    result = sub_23E5C511C(v71);
    v8 = v176;
    v68 = *(v176 + 2);
    if (v68 <= 1)
    {
      goto LABEL_3;
    }
  }

  __break(1u);
LABEL_123:
  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  result = sub_23E5C51A8(v8);
  v8 = result;
LABEL_112:
  v176 = v8;
  v126 = *(v8 + 2);
  if (v126 < 2)
  {
  }

  while (*a3)
  {
    v127 = v8;
    v8 = (v126 - 1);
    v128 = *&v127[16 * v126];
    v129 = *&v127[16 * v126 + 24];
    sub_23E5C4CDC((*a3 + (v128 << 6)), (*a3 + (*&v127[16 * v126 + 16] << 6)), (*a3 + (v129 << 6)), v5);
    if (v7)
    {
    }

    if (v129 < v128)
    {
      goto LABEL_135;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v127 = sub_23E5C51A8(v127);
    }

    if (v126 - 2 >= *(v127 + 2))
    {
      goto LABEL_136;
    }

    v130 = &v127[16 * v126];
    *v130 = v128;
    *(v130 + 1) = v129;
    v176 = v127;
    result = sub_23E5C511C(v126 - 1);
    v8 = v176;
    v126 = *(v176 + 2);
    if (v126 <= 1)
    {
    }
  }

LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
LABEL_148:
  __break(1u);
LABEL_149:
  __break(1u);
  return result;
}

uint64_t sub_23E5C4CDC(char *__src, char *a2, char *a3, char *__dst)
{
  v5 = __dst;
  v6 = a3;
  v7 = a2;
  v8 = __src;
  v9 = a2 - __src;
  v10 = a2 - __src + 63;
  if (a2 - __src >= 0)
  {
    v10 = a2 - __src;
  }

  v11 = v10 >> 6;
  v12 = a3 - a2;
  v13 = a3 - a2 + 63;
  if (a3 - a2 >= 0)
  {
    v13 = a3 - a2;
  }

  v14 = v13 >> 6;
  if (v11 < v13 >> 6)
  {
    if (__dst != __src || &__src[64 * v11] <= __dst)
    {
      memmove(__dst, __src, v11 << 6);
    }

    v15 = v5 + (v11 << 6);
    if (v9 < 64)
    {
LABEL_10:
      v7 = v8;
LABEL_52:
      v55 = v15 - v5 + 63;
      if ((v15 - v5) >= 0)
      {
        v55 = v15 - v5;
      }

      goto LABEL_54;
    }

    while (1)
    {
      if (v7 >= v6)
      {
        goto LABEL_10;
      }

      v21 = *v7;
      v22 = *(v7 + 1);
      v23 = *(v7 + 3);
      v78 = *(v7 + 2);
      v79 = v23;
      v76 = v21;
      v77 = v22;
      v24 = *v7;
      v25 = *(v7 + 1);
      v26 = *(v7 + 3);
      v74 = *(v7 + 2);
      v75 = v26;
      v72 = v24;
      v73 = v25;
      v27 = *v5;
      v28 = *(v5 + 16);
      v29 = *(v5 + 48);
      v82 = *(v5 + 32);
      v83 = v29;
      v80 = v27;
      v81 = v28;
      v30 = *v5;
      v31 = *(v5 + 16);
      v32 = *(v5 + 48);
      v70 = *(v5 + 32);
      v71 = v32;
      v68 = v30;
      v69 = v31;
      sub_23E57EA28(&v76, &v64);
      sub_23E57EA28(&v80, &v64);
      v33 = sub_23E5C1410(&v72, &v68);
      if (v4)
      {
        v60 = v68;
        v61 = v69;
        v62 = v70;
        v63 = v71;
        sub_23E587D58(&v60);
        v64 = v72;
        v65 = v73;
        v66 = v74;
        v67 = v75;
        sub_23E587D58(&v64);
        v56 = v15 - v5 + 63;
        if ((v15 - v5) >= 0)
        {
          v56 = v15 - v5;
        }

        if (v8 < v5 || v8 >= v5 + (v56 & 0xFFFFFFFFFFFFFFC0) || v8 != v5)
        {
          v57 = v56 >> 6 << 6;
          v58 = v8;
          goto LABEL_58;
        }

        return 1;
      }

      v34 = v33;
      v60 = v68;
      v61 = v69;
      v62 = v70;
      v63 = v71;
      sub_23E587D58(&v60);
      v64 = v72;
      v65 = v73;
      v66 = v74;
      v67 = v75;
      sub_23E587D58(&v64);
      if (v34)
      {
        break;
      }

      v16 = v5;
      v17 = v8 == v5;
      v5 += 64;
      if (!v17)
      {
        goto LABEL_12;
      }

LABEL_13:
      v8 += 64;
      if (v5 >= v15)
      {
        goto LABEL_10;
      }
    }

    v16 = v7;
    v17 = v8 == v7;
    v7 += 64;
    if (v17)
    {
      goto LABEL_13;
    }

LABEL_12:
    v18 = *v16;
    v19 = *(v16 + 1);
    v20 = *(v16 + 3);
    *(v8 + 2) = *(v16 + 2);
    *(v8 + 3) = v20;
    *v8 = v18;
    *(v8 + 1) = v19;
    goto LABEL_13;
  }

  if (__dst != a2 || &a2[64 * v14] <= __dst)
  {
    memmove(__dst, a2, v14 << 6);
  }

  v15 = v5 + (v14 << 6);
  if (v12 < 64 || v7 <= v8)
  {
    goto LABEL_52;
  }

  v35 = -v5;
  v84 = -v5;
LABEL_26:
  v36 = v7 - 64;
  v37 = v35 + v15;
  v6 -= 64;
  v38 = v15;
  while (1)
  {
    v15 = v38;
    v42 = *(v38 - 4);
    v43 = *(v38 - 3);
    v44 = *(v38 - 1);
    v78 = *(v38 - 2);
    v79 = v44;
    v76 = v42;
    v77 = v43;
    v45 = *(v38 - 4);
    v46 = *(v38 - 3);
    v47 = *(v38 - 1);
    v74 = *(v38 - 2);
    v75 = v47;
    v72 = v45;
    v73 = v46;
    v48 = *(v7 - 3);
    v80 = *v36;
    v81 = v48;
    v49 = *(v7 - 1);
    v82 = *(v7 - 2);
    v83 = v49;
    v68 = v80;
    v69 = v48;
    v70 = v82;
    v71 = v49;
    sub_23E57EA28(&v76, &v64);
    sub_23E57EA28(&v80, &v64);
    v50 = sub_23E5C1410(&v72, &v68);
    if (v4)
    {
      break;
    }

    v51 = v50;
    v60 = v68;
    v61 = v69;
    v62 = v70;
    v63 = v71;
    sub_23E587D58(&v60);
    v64 = v72;
    v65 = v73;
    v66 = v74;
    v67 = v75;
    sub_23E587D58(&v64);
    if (v51)
    {
      if (v6 + 64 < v7 || v6 >= v7 || v6 + 64 != v7)
      {
        v52 = *v36;
        v53 = *(v7 - 3);
        v54 = *(v7 - 1);
        *(v6 + 2) = *(v7 - 2);
        *(v6 + 3) = v54;
        *v6 = v52;
        *(v6 + 1) = v53;
      }

      v35 = v84;
      if (v15 <= v5 || (v7 -= 64, v36 <= v8))
      {
        v7 = v36;
        goto LABEL_52;
      }

      goto LABEL_26;
    }

    v38 = (v15 - 64);
    if ((v6 + 64) < v15 || v6 >= v15 || v6 + 64 != v15)
    {
      v39 = *v38;
      v40 = *(v15 - 48);
      v41 = *(v15 - 16);
      *(v6 + 2) = *(v15 - 32);
      *(v6 + 3) = v41;
      *v6 = v39;
      *(v6 + 1) = v40;
    }

    v37 -= 64;
    v6 -= 64;
    if (v38 <= v5)
    {
      v15 -= 64;
      goto LABEL_52;
    }
  }

  v60 = v68;
  v61 = v69;
  v62 = v70;
  v63 = v71;
  sub_23E587D58(&v60);
  v64 = v72;
  v65 = v73;
  v66 = v74;
  v67 = v75;
  sub_23E587D58(&v64);
  if (v37 >= 0)
  {
    v55 = v37;
  }

  else
  {
    v55 = v37 + 63;
  }

LABEL_54:
  if (v7 < v5 || v7 >= v5 + (v55 & 0xFFFFFFFFFFFFFFC0) || v7 != v5)
  {
    v57 = v55 >> 6 << 6;
    v58 = v7;
LABEL_58:
    memmove(v58, v5, v57);
  }

  return 1;
}

uint64_t sub_23E5C511C(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_23E5C51A8(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_23E5C51BC(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v51 = *MEMORY[0x277D85DE8];
  v6 = *v3;
  sub_23E5C94D0();
  sub_23E5C8BC0();
  v7 = sub_23E5C94F0();
  v8 = v6 + 56;
  v9 = -1 << *(v6 + 32);
  v10 = v7 & ~v9;
  if (((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
  {
LABEL_62:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v50 = *v40;
    sub_23E561880(a2, a3);
    sub_23E5C58A4(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v40 = *v50;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }

  v11 = ~v9;
  if (a2)
  {
    v12 = 0;
  }

  else
  {
    v12 = a3 == 0xC000000000000000;
  }

  v13 = !v12;
  v48 = v13;
  v14 = a3 >> 62;
  v15 = __OFSUB__(HIDWORD(a2), a2);
  v45 = v15;
  v44 = a3;
  v46 = v11;
  v47 = BYTE6(a3);
  v42 = v6 + 56;
  v43 = v6;
  while (1)
  {
    v16 = (*(v6 + 48) + 16 * v10);
    v18 = *v16;
    v17 = v16[1];
    v19 = v17 >> 62;
    if (v17 >> 62 == 3)
    {
      if (v18)
      {
        v20 = 0;
      }

      else
      {
        v20 = v17 == 0xC000000000000000;
      }

      v22 = !v20 || v14 < 3;
      if (((v22 | v48) & 1) == 0)
      {
        v37 = 0;
        v38 = 0xC000000000000000;
        goto LABEL_63;
      }

LABEL_36:
      v23 = 0;
      if (v14 <= 1)
      {
        goto LABEL_33;
      }

      goto LABEL_37;
    }

    if (v19 > 1)
    {
      if (v19 != 2)
      {
        goto LABEL_36;
      }

      v25 = *(v18 + 16);
      v24 = *(v18 + 24);
      v26 = __OFSUB__(v24, v25);
      v23 = v24 - v25;
      if (v26)
      {
        goto LABEL_65;
      }

      if (v14 <= 1)
      {
        goto LABEL_33;
      }
    }

    else if (v19)
    {
      LODWORD(v23) = HIDWORD(v18) - v18;
      if (__OFSUB__(HIDWORD(v18), v18))
      {
        goto LABEL_66;
      }

      v23 = v23;
      if (v14 <= 1)
      {
LABEL_33:
        v27 = v47;
        if (v14)
        {
          v27 = HIDWORD(a2) - a2;
          if (v45)
          {
            __break(1u);
LABEL_64:
            __break(1u);
LABEL_65:
            __break(1u);
LABEL_66:
            __break(1u);
LABEL_67:
            __break(1u);
LABEL_68:
            __break(1u);
LABEL_69:
            __break(1u);
LABEL_70:
            __break(1u);
          }
        }

        goto LABEL_39;
      }
    }

    else
    {
      v23 = BYTE6(v17);
      if (v14 <= 1)
      {
        goto LABEL_33;
      }
    }

LABEL_37:
    if (v14 != 2)
    {
      if (!v23)
      {
        goto LABEL_61;
      }

      goto LABEL_13;
    }

    v29 = *(a2 + 16);
    v28 = *(a2 + 24);
    v26 = __OFSUB__(v28, v29);
    v27 = v28 - v29;
    if (v26)
    {
      goto LABEL_64;
    }

LABEL_39:
    if (v23 != v27)
    {
      goto LABEL_13;
    }

    if (v23 < 1)
    {
      goto LABEL_61;
    }

    if (v19 <= 1)
    {
      if (!v19)
      {
        *v50 = v18;
        *&v50[8] = v17;
        v50[10] = BYTE2(v17);
        v50[11] = BYTE3(v17);
        v50[12] = BYTE4(v17);
        v50[13] = BYTE5(v17);
        sub_23E561880(v18, v17);
        v11 = v46;
        goto LABEL_60;
      }

      if (v18 >> 32 < v18)
      {
        goto LABEL_67;
      }

      sub_23E561880(v18, v17);
      v32 = sub_23E5C8B50();
      if (v32)
      {
        v34 = sub_23E5C8B70();
        if (__OFSUB__(v18, v34))
        {
          goto LABEL_70;
        }

        v32 += v18 - v34;
      }

      goto LABEL_57;
    }

    if (v19 != 2)
    {
      break;
    }

    v31 = *(v18 + 16);
    v30 = *(v18 + 24);
    sub_23E561880(v18, v17);
    v32 = sub_23E5C8B50();
    if (v32)
    {
      v33 = sub_23E5C8B70();
      if (__OFSUB__(v31, v33))
      {
        goto LABEL_69;
      }

      v32 += v31 - v33;
    }

    if (__OFSUB__(v30, v31))
    {
      goto LABEL_68;
    }

LABEL_57:
    sub_23E5C8B60();
    a3 = v44;
    sub_23E5C2890(v32, a2, v44, v50);
    sub_23E561230(v18, v17);
    v8 = v42;
    v6 = v43;
    v11 = v46;
    if (v50[0])
    {
      goto LABEL_61;
    }

LABEL_13:
    v10 = (v10 + 1) & v11;
    if (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
    {
      goto LABEL_62;
    }
  }

  *&v50[6] = 0;
  *v50 = 0;
  sub_23E561880(v18, v17);
LABEL_60:
  sub_23E5C2890(v50, a2, a3, &v49);
  sub_23E561230(v18, v17);
  if (!v49)
  {
    goto LABEL_13;
  }

LABEL_61:
  v37 = a2;
  v38 = a3;
LABEL_63:
  sub_23E561230(v37, v38);
  v39 = *(*(v6 + 48) + 16 * v10);
  *a1 = v39;
  sub_23E561880(v39, *(&v39 + 1));
  return 0;
}

uint64_t sub_23E5C5644(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E346C68, &qword_23E5CF430);
  result = sub_23E5C92B0();
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
      sub_23E5C94D0();
      sub_23E5C8BC0();
      result = sub_23E5C94F0();
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

uint64_t sub_23E5C58A4(uint64_t result, unint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v51 = *MEMORY[0x277D85DE8];
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_23E5C5644(v8 + 1);
    }

    else
    {
      if (v9 > v8)
      {
        result = sub_23E5C5D1C();
        goto LABEL_68;
      }

      sub_23E5C5E78(v8 + 1);
    }

    v10 = *v4;
    sub_23E5C94D0();
    sub_23E5C8BC0();
    result = sub_23E5C94F0();
    v11 = v10 + 56;
    v12 = -1 << *(v10 + 32);
    a3 = result & ~v12;
    if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
    {
      v13 = ~v12;
      if (v7)
      {
        v14 = 0;
      }

      else
      {
        v14 = a2 == 0xC000000000000000;
      }

      v15 = !v14;
      v48 = v15;
      v16 = a2 >> 62;
      v17 = __OFSUB__(HIDWORD(v7), v7);
      v45 = v17;
      v44 = HIDWORD(v7) - v7;
      v46 = v13;
      v47 = BYTE6(a2);
      v41 = v7;
      v42 = a2;
      while (1)
      {
        v18 = (*(v10 + 48) + 16 * a3);
        v20 = *v18;
        v19 = v18[1];
        v21 = v19 >> 62;
        if (v19 >> 62 == 3)
        {
          break;
        }

        if (v21 > 1)
        {
          if (v21 != 2)
          {
            goto LABEL_32;
          }

          v31 = *(v20 + 16);
          v30 = *(v20 + 24);
          v29 = __OFSUB__(v30, v31);
          v25 = v30 - v31;
          if (v29)
          {
            goto LABEL_73;
          }
        }

        else if (v21)
        {
          LODWORD(v25) = HIDWORD(v20) - v20;
          if (__OFSUB__(HIDWORD(v20), v20))
          {
            goto LABEL_74;
          }

          v25 = v25;
        }

        else
        {
          v25 = BYTE6(v19);
        }

LABEL_33:
        if (v16 > 1)
        {
          if (v16 != 2)
          {
            if (!v25)
            {
              goto LABEL_67;
            }

            goto LABEL_20;
          }

          v28 = *(v7 + 16);
          v27 = *(v7 + 24);
          v29 = __OFSUB__(v27, v28);
          v26 = v27 - v28;
          if (v29)
          {
            __break(1u);
LABEL_71:
            __break(1u);
            goto LABEL_72;
          }
        }

        else
        {
          v26 = v47;
          if (v16)
          {
            v26 = v44;
            if (v45)
            {
              goto LABEL_71;
            }
          }
        }

        if (v25 == v26)
        {
          if (v25 < 1)
          {
            goto LABEL_67;
          }

          if (v21 > 1)
          {
            if (v21 == 2)
            {
              v33 = *(v20 + 16);
              v32 = *(v20 + 24);
              sub_23E561880(v20, v19);
              v34 = sub_23E5C8B50();
              if (v34)
              {
                v35 = sub_23E5C8B70();
                if (__OFSUB__(v33, v35))
                {
                  goto LABEL_77;
                }

                v34 += v33 - v35;
              }

              if (__OFSUB__(v32, v33))
              {
                goto LABEL_76;
              }

              goto LABEL_63;
            }

            *&v50[6] = 0;
            *v50 = 0;
            sub_23E561880(v20, v19);
          }

          else
          {
            if (v21)
            {
              if (v20 >> 32 < v20)
              {
                goto LABEL_75;
              }

              sub_23E561880(v20, v19);
              v34 = sub_23E5C8B50();
              if (v34)
              {
                v36 = sub_23E5C8B70();
                if (__OFSUB__(v20, v36))
                {
                  goto LABEL_78;
                }

                v34 += v20 - v36;
              }

LABEL_63:
              sub_23E5C8B60();
              v7 = v41;
              a2 = v42;
              sub_23E5C2890(v34, v41, v42, v50);
              result = sub_23E561230(v20, v19);
              v11 = v10 + 56;
              v13 = v46;
              if (v50[0])
              {
                goto LABEL_67;
              }

              goto LABEL_20;
            }

            *v50 = v20;
            *&v50[8] = v19;
            v50[10] = BYTE2(v19);
            v50[11] = BYTE3(v19);
            v50[12] = BYTE4(v19);
            v50[13] = BYTE5(v19);
            sub_23E561880(v20, v19);
            v13 = v46;
          }

          sub_23E5C2890(v50, v7, a2, &v49);
          result = sub_23E561230(v20, v19);
          if (v49)
          {
            goto LABEL_67;
          }
        }

LABEL_20:
        a3 = (a3 + 1) & v13;
        if (((*(v11 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) == 0)
        {
          goto LABEL_68;
        }
      }

      if (v20)
      {
        v22 = 0;
      }

      else
      {
        v22 = v19 == 0xC000000000000000;
      }

      v24 = !v22 || v16 < 3;
      if (((v24 | v48) & 1) == 0)
      {
LABEL_67:
        result = sub_23E5C9460();
        __break(1u);
        goto LABEL_68;
      }

LABEL_32:
      v25 = 0;
      goto LABEL_33;
    }
  }

LABEL_68:
  v37 = *v43;
  *(*v43 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v38 = (*(v37 + 48) + 16 * a3);
  *v38 = v7;
  v38[1] = a2;
  v39 = *(v37 + 16);
  v29 = __OFADD__(v39, 1);
  v40 = v39 + 1;
  if (v29)
  {
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
  }

  *(v37 + 16) = v40;
  return result;
}

void *sub_23E5C5D1C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E346C68, &qword_23E5CF430);
  v2 = *v0;
  v3 = sub_23E5C92A0();
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = *(*(v2 + 48) + v17);
        *(*(v4 + 48) + v17) = v18;
        result = sub_23E561880(v18, *(&v18 + 1));
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

uint64_t sub_23E5C5E78(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E346C68, &qword_23E5CF430);
  result = sub_23E5C92B0();
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
      sub_23E5C94D0();
      sub_23E561880(v18, v19);
      sub_23E5C8BC0();
      result = sub_23E5C94F0();
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

uint64_t sub_23E5C60B4(uint64_t a1, uint64_t a2)
{
  v113 = *MEMORY[0x277D85DE8];
  if (*(a1 + 16) >= *(a2 + 16))
  {
    v2 = a2;
    v3 = a1;
    v4 = a2 + 56;
    v5 = 1 << *(a2 + 32);
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    else
    {
      v6 = -1;
    }

    v7 = v6 & *(a2 + 56);
    v8 = (v5 + 63) >> 6;
    v9 = a1 + 56;

    v10 = 0;
    v97 = v9;
    v98 = v3;
    v89 = v2;
    v85 = v8;
    v86 = v4;
    if (!v7)
    {
      goto LABEL_6;
    }

    while (*(v3 + 16))
    {
      v88 = v10;
      v12 = (*(v2 + 48) + ((v10 << 10) | (16 * __clz(__rbit64(v7)))));
      v13 = v9;
      v14 = *v12;
      v15 = v12[1];
      sub_23E5C94D0();
      sub_23E561880(v14, v15);
      sub_23E5C8BC0();
      v16 = sub_23E5C94F0();
      v17 = -1 << *(v3 + 32);
      v18 = v16 & ~v17;
      if (((*(v13 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {

        v82 = v14;
        v83 = v15;
LABEL_157:
        sub_23E561230(v82, v83);
        return 0;
      }

      v87 = (v7 - 1) & v7;
      v19 = ~v17;
      v20 = v15 >> 62;
      if (v14)
      {
        v21 = 0;
      }

      else
      {
        v21 = v15 == 0xC000000000000000;
      }

      v22 = !v21;
      v100 = v22;
      v92 = HIDWORD(v14);
      v23 = __OFSUB__(HIDWORD(v14), v14);
      v96 = v23;
      v94 = v14;
      v95 = HIDWORD(v14) - v14;
      v101 = v15;
      __n = BYTE6(v15);
      v93 = v14;
      v90 = (v14 >> 32) - v14;
      v91 = v14 >> 32;
      v99 = v19;
      v9 = v13;
      while (1)
      {
        v24 = (*(v3 + 48) + 16 * v18);
        v26 = *v24;
        v25 = v24[1];
        v27 = v25 >> 62;
        if (v25 >> 62 == 3)
        {
          if (v26)
          {
            v28 = 0;
          }

          else
          {
            v28 = v25 == 0xC000000000000000;
          }

          v30 = !v28 || v20 < 3;
          if (((v30 | v100) & 1) == 0)
          {
            v80 = 0;
            v81 = 0xC000000000000000;
LABEL_152:
            sub_23E561230(v80, v81);
            v2 = v89;
            v8 = v85;
            v4 = v86;
            goto LABEL_153;
          }

LABEL_47:
          v31 = 0;
          if (v20 <= 1)
          {
            goto LABEL_44;
          }

          goto LABEL_48;
        }

        if (v27 > 1)
        {
          if (v27 != 2)
          {
            goto LABEL_47;
          }

          v33 = *(v26 + 16);
          v32 = *(v26 + 24);
          v34 = __OFSUB__(v32, v33);
          v31 = v32 - v33;
          if (v34)
          {
            goto LABEL_166;
          }

          if (v20 <= 1)
          {
            goto LABEL_44;
          }
        }

        else if (v27)
        {
          LODWORD(v31) = HIDWORD(v26) - v26;
          if (__OFSUB__(HIDWORD(v26), v26))
          {
            goto LABEL_165;
          }

          v31 = v31;
          if (v20 <= 1)
          {
LABEL_44:
            v35 = __n;
            if (v20)
            {
              v35 = v95;
              if (v96)
              {
                goto LABEL_164;
              }
            }

            goto LABEL_50;
          }
        }

        else
        {
          v31 = BYTE6(v25);
          if (v20 <= 1)
          {
            goto LABEL_44;
          }
        }

LABEL_48:
        if (v20 != 2)
        {
          if (!v31)
          {
            goto LABEL_151;
          }

          goto LABEL_24;
        }

        v37 = *(v14 + 16);
        v36 = *(v14 + 24);
        v34 = __OFSUB__(v36, v37);
        v35 = v36 - v37;
        if (v34)
        {
          goto LABEL_163;
        }

LABEL_50:
        if (v31 != v35)
        {
          goto LABEL_24;
        }

        if (v31 < 1)
        {
          goto LABEL_151;
        }

        if (v27 <= 1)
        {
          if (v27)
          {
            if (v26 > v26 >> 32)
            {
              goto LABEL_167;
            }

            sub_23E561880(v26, v25);
            v48 = sub_23E5C8B50();
            if (v48)
            {
              v49 = v48;
              v50 = sub_23E5C8B70();
              if (__OFSUB__(v26, v50))
              {
                goto LABEL_169;
              }

              v47 = (v26 - v50 + v49);
            }

            else
            {
              v47 = 0;
            }

            result = sub_23E5C8B60();
            v9 = v97;
            v3 = v98;
            if (v20 == 2)
            {
              v76 = *(v14 + 16);
              v75 = *(v14 + 24);
              v58 = sub_23E5C8B50();
              if (v58)
              {
                v77 = sub_23E5C8B70();
                if (__OFSUB__(v76, v77))
                {
                  goto LABEL_183;
                }

                v58 += v76 - v77;
              }

              v14 = v94;
              v34 = __OFSUB__(v75, v76);
              v78 = v75 - v76;
              if (v34)
              {
                goto LABEL_179;
              }

              result = sub_23E5C8B60();
              if (result >= v78)
              {
                v60 = v78;
              }

              else
              {
                v60 = result;
              }

              if (!v47)
              {
                goto LABEL_192;
              }

              v3 = v98;
              if (!v58)
              {
                goto LABEL_191;
              }
            }

            else
            {
              if (v20 != 1)
              {
                *__s1 = v14;
                __s1[2] = BYTE2(v14);
                __s1[3] = BYTE3(v14);
                __s1[4] = v92;
                __s1[5] = BYTE5(v14);
                __s1[6] = BYTE6(v14);
                __s1[7] = HIBYTE(v14);
                *&__s1[8] = v101;
                *&__s1[12] = WORD2(v101);
                if (!v47)
                {
                  goto LABEL_194;
                }

LABEL_150:
                v79 = memcmp(v47, __s1, __n);
                sub_23E561230(v26, v25);
                v19 = v99;
                if (!v79)
                {
                  goto LABEL_151;
                }

                goto LABEL_24;
              }

              if (v91 < v93)
              {
                goto LABEL_178;
              }

              v58 = sub_23E5C8B50();
              if (v58)
              {
                v61 = sub_23E5C8B70();
                if (__OFSUB__(v93, v61))
                {
                  goto LABEL_185;
                }

                v58 += v93 - v61;
              }

              v14 = v94;
              result = sub_23E5C8B60();
              v60 = v90;
              if (result < v90)
              {
                v60 = result;
              }

              if (!v47)
              {
                goto LABEL_196;
              }

              if (!v58)
              {
                goto LABEL_195;
              }
            }

            goto LABEL_145;
          }

          *__s1 = v26;
          *&__s1[8] = v25;
          __s1[10] = BYTE2(v25);
          __s1[11] = BYTE3(v25);
          __s1[12] = BYTE4(v25);
          __s1[13] = BYTE5(v25);
          if (!v20)
          {
LABEL_80:
            __s2 = v14;
            v104 = BYTE2(v14);
            v105 = BYTE3(v14);
            v106 = v92;
            v107 = BYTE5(v14);
            v108 = BYTE6(v14);
            v109 = HIBYTE(v14);
            v110 = v101;
            v111 = WORD2(v101);
            v57 = memcmp(__s1, &__s2, __n);
            v19 = v99;
            if (!v57)
            {
              goto LABEL_151;
            }

            goto LABEL_24;
          }

          if (v20 != 1)
          {
            v63 = *(v14 + 16);
            v62 = *(v14 + 24);
            sub_23E561880(v26, v25);
            v53 = sub_23E5C8B50();
            if (v53)
            {
              v64 = sub_23E5C8B70();
              if (__OFSUB__(v63, v64))
              {
                goto LABEL_180;
              }

              v53 += v63 - v64;
            }

            v14 = v94;
            v34 = __OFSUB__(v62, v63);
            v55 = v62 - v63;
            if (v34)
            {
              goto LABEL_173;
            }

            v56 = sub_23E5C8B60();
            if (!v53)
            {
              goto LABEL_186;
            }

LABEL_111:
            if (v56 >= v55)
            {
              v65 = v55;
            }

            else
            {
              v65 = v56;
            }

            v66 = memcmp(__s1, v53, v65);
            sub_23E561230(v26, v25);
            v3 = v98;
LABEL_147:
            v9 = v97;
            v19 = v99;
            if (!v66)
            {
              goto LABEL_151;
            }

            goto LABEL_24;
          }

          if (v91 < v93)
          {
            goto LABEL_171;
          }

          sub_23E561880(v26, v25);
          v38 = sub_23E5C8B50();
          if (!v38)
          {
            goto LABEL_190;
          }

          v39 = v38;
          v40 = sub_23E5C8B70();
          if (__OFSUB__(v93, v40))
          {
            goto LABEL_175;
          }

          v41 = (v93 - v40 + v39);
          result = sub_23E5C8B60();
          if (!v41)
          {
            goto LABEL_193;
          }

          goto LABEL_119;
        }

        if (v27 == 2)
        {
          break;
        }

        *&__s1[6] = 0;
        *__s1 = 0;
        if (!v20)
        {
          goto LABEL_80;
        }

        if (v20 == 2)
        {
          v52 = *(v14 + 16);
          v51 = *(v14 + 24);
          sub_23E561880(v26, v25);
          v53 = sub_23E5C8B50();
          if (v53)
          {
            v54 = sub_23E5C8B70();
            if (__OFSUB__(v52, v54))
            {
              goto LABEL_181;
            }

            v53 += v52 - v54;
          }

          v14 = v94;
          v34 = __OFSUB__(v51, v52);
          v55 = v51 - v52;
          if (v34)
          {
            goto LABEL_174;
          }

          v56 = sub_23E5C8B60();
          if (!v53)
          {
            goto LABEL_189;
          }

          goto LABEL_111;
        }

        if (v91 < v93)
        {
          goto LABEL_170;
        }

        sub_23E561880(v26, v25);
        v67 = sub_23E5C8B50();
        if (!v67)
        {
          goto LABEL_187;
        }

        v68 = v67;
        v69 = sub_23E5C8B70();
        if (__OFSUB__(v93, v69))
        {
          goto LABEL_176;
        }

        v41 = (v93 - v69 + v68);
        result = sub_23E5C8B60();
        if (!v41)
        {
          goto LABEL_188;
        }

LABEL_119:
        if (result >= v90)
        {
          v70 = v90;
        }

        else
        {
          v70 = result;
        }

        v71 = memcmp(__s1, v41, v70);
        sub_23E561230(v26, v25);
        v3 = v98;
        v14 = v94;
        v19 = v99;
        if (!v71)
        {
LABEL_151:
          v80 = v14;
          v81 = v101;
          goto LABEL_152;
        }

LABEL_24:
        v18 = (v18 + 1) & v19;
        if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
        {

          v82 = v14;
          v83 = v101;
          goto LABEL_157;
        }
      }

      v43 = *(v26 + 16);
      sub_23E561880(v26, v25);
      v44 = sub_23E5C8B50();
      if (v44)
      {
        v45 = v44;
        v46 = sub_23E5C8B70();
        if (__OFSUB__(v43, v46))
        {
          goto LABEL_168;
        }

        v47 = (v43 - v46 + v45);
      }

      else
      {
        v47 = 0;
      }

      sub_23E5C8B60();
      v9 = v97;
      v3 = v98;
      if (v20 == 2)
      {
        v72 = *(v14 + 16);
        v84 = *(v14 + 24);
        v58 = sub_23E5C8B50();
        if (v58)
        {
          v73 = sub_23E5C8B70();
          if (__OFSUB__(v72, v73))
          {
            goto LABEL_182;
          }

          v58 += v72 - v73;
        }

        v14 = v94;
        v34 = __OFSUB__(v84, v72);
        v74 = v84 - v72;
        if (v34)
        {
          goto LABEL_177;
        }

        result = sub_23E5C8B60();
        if (result >= v74)
        {
          v60 = v74;
        }

        else
        {
          v60 = result;
        }

        if (!v47)
        {
          goto LABEL_200;
        }

        v3 = v98;
        if (!v58)
        {
          goto LABEL_199;
        }
      }

      else
      {
        if (v20 != 1)
        {
          *__s1 = v14;
          __s1[2] = BYTE2(v14);
          __s1[3] = BYTE3(v14);
          __s1[4] = v92;
          __s1[5] = BYTE5(v14);
          __s1[6] = BYTE6(v14);
          __s1[7] = HIBYTE(v14);
          *&__s1[8] = v101;
          *&__s1[12] = WORD2(v101);
          if (!v47)
          {
            __break(1u);
LABEL_186:
            __break(1u);
LABEL_187:
            sub_23E5C8B60();
LABEL_188:
            __break(1u);
LABEL_189:
            __break(1u);
LABEL_190:
            result = sub_23E5C8B60();
            __break(1u);
LABEL_191:
            __break(1u);
LABEL_192:
            __break(1u);
LABEL_193:
            __break(1u);
LABEL_194:
            __break(1u);
LABEL_195:
            __break(1u);
LABEL_196:
            __break(1u);
LABEL_197:
            __break(1u);
LABEL_198:
            __break(1u);
LABEL_199:
            __break(1u);
LABEL_200:
            __break(1u);
            return result;
          }

          goto LABEL_150;
        }

        if (v91 < v93)
        {
          goto LABEL_172;
        }

        v58 = sub_23E5C8B50();
        if (v58)
        {
          v59 = sub_23E5C8B70();
          if (__OFSUB__(v93, v59))
          {
            goto LABEL_184;
          }

          v58 += v93 - v59;
        }

        v14 = v94;
        result = sub_23E5C8B60();
        v60 = v90;
        if (result < v90)
        {
          v60 = result;
        }

        if (!v47)
        {
          goto LABEL_198;
        }

        if (!v58)
        {
          goto LABEL_197;
        }
      }

LABEL_145:
      if (v47 != v58)
      {
        v66 = memcmp(v47, v58, v60);
        sub_23E561230(v26, v25);
        goto LABEL_147;
      }

      sub_23E561230(v26, v25);
      sub_23E561230(v14, v101);
      v2 = v89;
      v8 = v85;
      v4 = v86;
      v9 = v97;
LABEL_153:
      v7 = v87;
      v10 = v88;
      if (v87)
      {
        continue;
      }

LABEL_6:
      while (2)
      {
        v11 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          __break(1u);
LABEL_163:
          __break(1u);
LABEL_164:
          __break(1u);
LABEL_165:
          __break(1u);
LABEL_166:
          __break(1u);
LABEL_167:
          __break(1u);
LABEL_168:
          __break(1u);
LABEL_169:
          __break(1u);
LABEL_170:
          __break(1u);
LABEL_171:
          __break(1u);
LABEL_172:
          __break(1u);
LABEL_173:
          __break(1u);
LABEL_174:
          __break(1u);
LABEL_175:
          __break(1u);
LABEL_176:
          __break(1u);
LABEL_177:
          __break(1u);
LABEL_178:
          __break(1u);
LABEL_179:
          __break(1u);
LABEL_180:
          __break(1u);
LABEL_181:
          __break(1u);
LABEL_182:
          __break(1u);
LABEL_183:
          __break(1u);
LABEL_184:
          __break(1u);
LABEL_185:
          __break(1u);
        }

        if (v11 >= v8)
        {

          return 1;
        }

        v7 = *(v4 + 8 * v11);
        ++v10;
        if (!v7)
        {
          continue;
        }

        break;
      }

      v10 = v11;
    }
  }

  return 0;
}

uint64_t sub_23E5C6B64(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_23E5C6C00();
  result = MEMORY[0x23EF0D340](v2, MEMORY[0x277CC9318], v3);
  v9 = result;
  if (v2)
  {
    v5 = (a1 + 40);
    do
    {
      v7 = *(v5 - 1);
      v6 = *v5;
      sub_23E561880(v7, *v5);
      sub_23E5C51BC(v8, v7, v6);
      sub_23E561230(v8[0], v8[1]);
      v5 += 2;
      --v2;
    }

    while (v2);
    return v9;
  }

  return result;
}

unint64_t sub_23E5C6C00()
{
  result = qword_280C08CE8;
  if (!qword_280C08CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C08CE8);
  }

  return result;
}

uint64_t sub_23E5C6C54(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t SecureCloudRepairMessage.MessageType.hashValue.getter()
{
  v1 = *v0;
  sub_23E5C94D0();
  MEMORY[0x23EF0D6D0](v1);
  return sub_23E5C94F0();
}

uint64_t SecureCloudRepairMessage.date.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_23E5C8C20();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t SecureCloudRepairMessage.identifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for SecureCloudRepairMessage(0) + 20));

  return v1;
}

uint64_t type metadata accessor for SecureCloudRepairMessage(uint64_t a1)
{
  result = qword_280C08C30;
  if (!qword_280C08C30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id SecureCloudRepairMessage.secureCloudShareItem.getter()
{
  v1 = *(v0 + *(type metadata accessor for SecureCloudRepairMessage(0) + 24));

  return v1;
}

uint64_t SecureCloudRepairMessage.type.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for SecureCloudRepairMessage(0);
  *a1 = *(v1 + *(result + 28));
  return result;
}

int *SecureCloudRepairMessage.init(date:identifier:secureCloudShareItem:type:version:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v13 = *a5;
  v14 = sub_23E5C8C20();
  (*(*(v14 - 8) + 32))(a7, a1, v14);
  result = type metadata accessor for SecureCloudRepairMessage(0);
  v16 = (a7 + result[5]);
  *v16 = a2;
  v16[1] = a3;
  *(a7 + result[6]) = a4;
  *(a7 + result[7]) = v13;
  *(a7 + result[8]) = a6;
  return result;
}

uint64_t SecureCloudRepairMessage.protobuf()()
{
  type metadata accessor for SecureCloudRepairMessageProtobuf(0);
  sub_23E5C7680(&qword_27E3462F8, &protocol conformance descriptor for SecureCloudRepairMessageProtobuf);
  return sub_23E5C8DF0();
}

uint64_t sub_23E5C7064(uint64_t a1, uint64_t a2)
{
  sub_23E5C8BE0();
  v5 = v4;
  v6 = type metadata accessor for SecureCloudRepairMessageProtobuf(0);
  v7 = a1 + v6[5];
  *v7 = v5;
  *(v7 + 8) = 0;
  v8 = type metadata accessor for SecureCloudRepairMessage(0);
  v9 = (a2 + v8[5]);
  v11 = *v9;
  v10 = v9[1];
  v12 = (a1 + v6[6]);

  *v12 = v11;
  v12[1] = v10;
  v13 = [*(a2 + v8[6]) codableShareItem];
  if (!v13 || (v14 = v13, v15 = [v13 data], v14, !v15))
  {
    sub_23E56D8C8();
    swift_allocError();
    *v24 = 1;
    return swift_willThrow();
  }

  v16 = sub_23E5C8BB0();
  v18 = v17;

  v19 = a1 + v6[7];
  result = sub_23E56121C(*v19, *(v19 + 8));
  *v19 = v16;
  *(v19 + 8) = v18;
  v21 = *(a2 + v8[8]);
  if ((v21 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (HIDWORD(v21))
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v22 = a1 + v6[9];
  *v22 = v21;
  *(v22 + 4) = 0;
  v23 = a1 + v6[8];
  *v23 = (*(a2 + v8[7]) & 1) != 0;
  *(v23 + 8) = 1;
  return result;
}

int *SecureCloudRepairMessage.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v35 = sub_23E5C8C20();
  v34 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SecureCloudRepairMessageProtobuf(0);
  sub_23E5C8BD0();
  v7 = (a1 + v6[6]);
  v8 = v7[1];
  v32 = v2;
  if (v8)
  {
    v30 = *v7;
    v33 = v8;
  }

  else
  {
    v30 = 0;
    v33 = 0xE000000000000000;
  }

  v9 = (a1 + v6[9]);
  if (*(v9 + 4))
  {
    v10 = 0;
  }

  else
  {
    v10 = *v9;
  }

  v29 = v10;
  v11 = (a1 + v6[7]);
  v13 = *v11;
  v12 = v11[1];
  if (v12 >> 60 == 15)
  {
    v14 = 0;
  }

  else
  {
    v14 = *v11;
  }

  if (v12 >> 60 == 15)
  {
    v15 = 0xC000000000000000;
  }

  else
  {
    v15 = v11[1];
  }

  v16 = objc_allocWithZone(MEMORY[0x277CE90C0]);

  sub_23E562570(v13, v12);
  v17 = sub_23E5C8BA0();
  sub_23E561230(v14, v15);
  v18 = [v16 initWithData_];

  if (!v18)
  {
    goto LABEL_18;
  }

  v19 = [objc_opt_self() shareItemWithCodableShareItem_];
  if (!v19)
  {

LABEL_18:

    sub_23E56D8C8();
    swift_allocError();
    *v23 = 1;
    swift_willThrow();
LABEL_19:
    sub_23E5C7564(a1);
    return (*(v34 + 8))(v5, v35);
  }

  v20 = v19;
  v21 = a1 + v6[8];
  if (*(v21 + 9))
  {
    goto LABEL_16;
  }

  if ((*(v21 + 8) & 1) == 0)
  {

    sub_23E56D8C8();
    swift_allocError();
    *v28 = 1;
    swift_willThrow();

    goto LABEL_19;
  }

  if (*v21)
  {
    sub_23E5C7564(a1);

    v22 = 1;
    goto LABEL_23;
  }

LABEL_16:

  sub_23E5C7564(a1);
  v22 = 0;
LABEL_23:
  v25 = v31;
  (*(v34 + 32))(v31, v5, v35);
  result = type metadata accessor for SecureCloudRepairMessage(0);
  v26 = (v25 + result[5]);
  v27 = v33;
  *v26 = v30;
  v26[1] = v27;
  *(v25 + result[6]) = v20;
  *(v25 + result[7]) = v22;
  *(v25 + result[8]) = v29;
  return result;
}

uint64_t sub_23E5C7564(uint64_t a1)
{
  v2 = type metadata accessor for SecureCloudRepairMessageProtobuf(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_23E5C75C4()
{
  result = qword_27E346C88;
  if (!qword_27E346C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E346C88);
  }

  return result;
}

uint64_t sub_23E5C7680(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SecureCloudRepairMessageProtobuf(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_23E5C76C4()
{
  type metadata accessor for SecureCloudRepairMessageProtobuf(0);
  sub_23E5C7680(&qword_27E3462F8, &protocol conformance descriptor for SecureCloudRepairMessageProtobuf);
  return sub_23E5C8DF0();
}

unint64_t sub_23E5C7798(uint64_t a1)
{
  result = sub_23E5C8C20();
  if (v2 <= 0x3F)
  {
    result = sub_23E56DBFC();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_23E5C7884(uint64_t a1, unsigned int a2)
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

uint64_t sub_23E5C78CC(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t CodableObjectArray.value.getter(uint64_t a1)
{
  v2 = *v1;
  sub_23E593770(0, &unk_280C088B0, 0x277CBEA60);
  sub_23E5C90B0();
  v3 = v2;
  if (swift_dynamicCast())
  {
    return v5;
  }

  else
  {
    return sub_23E5C9070();
  }
}

BOOL sub_23E5C79D8(uint64_t a1, uint64_t a2)
{
  v2 = sub_23E5C9370();

  return v2 != 0;
}

uint64_t sub_23E5C7A20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837F8];

  return MEMORY[0x2821FE040](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_23E5C7A94(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A0](a1, a2, WitnessTable, v5);
}

uint64_t sub_23E5C7B00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1B0](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_23E5C7B70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A8](a1, a2, a3, WitnessTable, v7);
}

BOOL sub_23E5C7BE0@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_23E5C79D8(*a1, a1[1]);
  *a2 = result;
  return result;
}

BOOL sub_23E5C7C14@<W0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23E5C79D8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23E5C7C40(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_23E5C7C94(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t CodableObject.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>, uint64_t a4@<X2>, uint64_t a5@<X3>)
{
  v35 = a3;
  v38[4] = *MEMORY[0x277D85DE8];
  type metadata accessor for CodableObject.CodingKeys(255, a2, a4, a5);
  swift_getWitnessTable();
  v8 = sub_23E5C93B0();
  v36 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v31 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23E5C9500();
  if (!v5)
  {
    v34 = a2;
    sub_23E568DB8();
    sub_23E5C93A0();
    v11 = v38[0];
    v12 = v38[1];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E346C80, &qword_23E5CF640);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_23E5CA3C0;
    v14 = v34;
    *(v13 + 56) = swift_getMetatypeMetadata();
    *(v13 + 32) = v14;
    sub_23E593770(0, &qword_280C088C0, 0x277CBEB98);
    v15 = MEMORY[0x23EF0D3D0](v13);
    v38[0] = 0;
    sub_23E5C9130();
    if (v38[0])
    {
      v32 = v15;
      v16 = v11;
      v17 = objc_opt_self();
      v18 = v12;
      v19 = sub_23E5C9120();

      v33 = v18;
      v20 = sub_23E5C8BA0();
      v38[0] = 0;
      v21 = [v17 _strictlyUnarchivedObjectOfClasses_fromData_error_];

      if (v21)
      {
        v22 = v38[0];
        sub_23E5C9260();
        swift_unknownObjectRelease();
        v23 = swift_dynamicCast();
        v24 = v36;
        if (v23)
        {
          (*(v36 + 8))(v10, v8);

          sub_23E561230(v16, v33);
          *v35 = v37;
        }

        else
        {
          sub_23E5B25B4();
          swift_allocError();
          *v30 = 1;
          swift_willThrow();

          sub_23E561230(v16, v33);
          (*(v24 + 8))(v10, v8);
        }

        return __swift_destroy_boxed_opaque_existential_0(a1);
      }

      v28 = v38[0];
      sub_23E5C8B90();

      swift_willThrow();
      v26 = v16;
      v27 = v33;
    }

    else
    {
      sub_23E5B25B4();
      swift_allocError();
      *v25 = 3;
      swift_willThrow();

      v26 = v11;
      v27 = v12;
    }

    sub_23E561230(v26, v27);
    (*(v36 + 8))(v10, v8);
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

BOOL sub_23E5C8198(uint64_t a1, uint64_t a2)
{
  v2 = sub_23E5C9370();

  return v2 != 0;
}

uint64_t sub_23E5C8214(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837F8];

  return MEMORY[0x2821FE040](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_23E5C8288(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A0](a1, a2, WitnessTable, v5);
}

uint64_t sub_23E5C82F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1B0](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_23E5C8364(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A8](a1, a2, a3, WitnessTable, v7);
}

BOOL sub_23E5C83D4@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_23E5C8198(*a1, a1[1]);
  *a2 = result;
  return result;
}

BOOL sub_23E5C8408@<W0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23E5C8198(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23E5C8434(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_23E5C8488(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t CodableObjectArray.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v36 = a5;
  v38[4] = *MEMORY[0x277D85DE8];
  type metadata accessor for CodableObjectArray.CodingKeys(255, a2, a3, a4);
  swift_getWitnessTable();
  v8 = sub_23E5C93B0();
  v37 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v30 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23E5C9500();
  if (!v5)
  {
    v35 = a1;
    sub_23E568DB8();
    sub_23E5C93A0();
    v13 = v38[0];
    v14 = v38[1];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E346C80, &qword_23E5CF640);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_23E5CB3D0;
    v16 = sub_23E593770(0, &unk_280C088B0, 0x277CBEA60);
    *(v15 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E346C90, &qword_23E5CF648);
    *(v15 + 32) = v16;
    *(v15 + 88) = swift_getMetatypeMetadata();
    *(v15 + 64) = a2;
    sub_23E593770(0, &qword_280C088C0, 0x277CBEB98);
    v17 = MEMORY[0x23EF0D3D0](v15);
    v38[0] = 0;
    sub_23E5C9130();
    if (v38[0])
    {
      v33 = v17;
      v34 = v8;
      v18 = objc_opt_self();
      v19 = v14;
      v20 = sub_23E5C9120();

      v21 = sub_23E5C8BA0();
      v38[0] = 0;
      v22 = [v18 _strictlyUnarchivedObjectOfClasses_fromData_error_];

      if (v22)
      {
        v31 = v13;
        v32 = v19;
        v23 = v38[0];
        sub_23E5C9260();
        swift_unknownObjectRelease();
        sub_23E5C90B0();
        if (swift_dynamicCast())
        {
          v24 = sub_23E5C9040();

          sub_23E561230(v31, v32);
          (*(v37 + 8))(v10, v34);
          v11 = v35;
          *v36 = v24;
          return __swift_destroy_boxed_opaque_existential_0(v11);
        }

        sub_23E5B25B4();
        swift_allocError();
        *v29 = 2;
        swift_willThrow();

        v27 = v31;
        v28 = v32;
      }

      else
      {
        v26 = v38[0];
        sub_23E5C8B90();

        swift_willThrow();
        v27 = v13;
        v28 = v19;
      }

      sub_23E561230(v27, v28);
      (*(v37 + 8))(v10, v34);
    }

    else
    {
      sub_23E5B25B4();
      swift_allocError();
      *v25 = 3;
      swift_willThrow();

      sub_23E561230(v13, v14);
      (*(v37 + 8))(v10, v8);
    }

    a1 = v35;
  }

  v11 = a1;
  return __swift_destroy_boxed_opaque_existential_0(v11);
}

uint64_t sub_23E5C8998(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_23E5C89EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}