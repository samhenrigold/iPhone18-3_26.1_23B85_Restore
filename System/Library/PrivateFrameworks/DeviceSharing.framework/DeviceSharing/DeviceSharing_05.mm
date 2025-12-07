uint64_t sub_248A01030(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  ObjectType = swift_getObjectType();
  v11[3] = type metadata accessor for GuestUserAccessResponsePeerConnectionService(0);
  v11[4] = &protocol witness table for GuestUserAccessResponsePeerConnectionService;
  v11[0] = a3;
  v10 = a4 & 1;
  v8 = *(a2 + 16);

  v8(v11, &v10, ObjectType, a2);
  return __swift_destroy_boxed_opaque_existential_0(v11);
}

uint64_t sub_248A010E0(uint64_t a1, uint64_t a2)
{
  if (qword_27EEB51A0 != -1)
  {
    swift_once();
  }

  v2 = sub_248A122D0();
  __swift_project_value_buffer(v2, qword_27EEB9DC8);
  swift_unknownObjectRetain();
  v3 = sub_248A122B0();
  v4 = sub_248A12E80();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v14 = v6;
    *v5 = 136446722;
    v7 = sub_248A13570();
    v9 = sub_24897BC00(v7, v8, &v14);

    *(v5 + 4) = v9;
    *(v5 + 12) = 2082;
    *(v5 + 14) = sub_24897BC00(0xD000000000000012, 0x8000000248A1B040, &v14);
    *(v5 + 22) = 2082;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB58B8, &qword_248A15CB0);
    v10 = sub_248A12B80();
    v12 = sub_24897BC00(v10, v11, &v14);

    *(v5 + 24) = v12;
    _os_log_impl(&dword_248975000, v3, v4, "%{public}s %{public}s: %{public}s", v5, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C1E0A80](v6, -1, -1);
    MEMORY[0x24C1E0A80](v5, -1, -1);
  }

  return sub_248A11DB0();
}

uint64_t sub_248A01314(uint64_t a1, void (*a2)(uint64_t, uint64_t))
{
  swift_unknownObjectRetain();
  swift_getObjectType();
  v4 = swift_conformsToProtocol2();
  if (v4 && a1)
  {
    a2(a1, v4);
  }

  return swift_unknownObjectRelease();
}

uint64_t sub_248A01390(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5400, &unk_248A14E10);
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();
  v4 = sub_248A11BC0();
  v3[10] = v4;
  v3[11] = *(v4 - 8);
  v3[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_248A01498, 0, 0);
}

uint64_t sub_248A01498()
{
  if (qword_27EEB51A0 != -1)
  {
    swift_once();
  }

  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[9];
  v4 = sub_248A122D0();
  __swift_project_value_buffer(v4, qword_27EEB9DC8);
  sub_2489BDB14(0xD000000000000093, 0x8000000248A1AFA0, 0xD000000000000019, 0x8000000248A1B0D0);
  sub_248A11B80();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_248983734(v0[9], &qword_27EEB5400, &unk_248A14E10);
    v5 = sub_248A122B0();
    v6 = sub_248A12E60();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_248975000, v5, v6, "Peer identifier is not a valid UUID", v7, 2u);
      MEMORY[0x24C1E0A80](v7, -1, -1);
    }

    v8 = v0[1];

    return v8();
  }

  else
  {
    v10 = v0[7];
    (*(v0[11] + 32))(v0[12], v0[9], v0[10]);
    v0[13] = *(v10 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5898, &qword_248A15C28);
    sub_248A02C08(&qword_27EEB5EC0, &protocol conformance descriptor for PeerConnection<A>);
    v12 = sub_248A12CD0();

    return MEMORY[0x2822009F8](sub_248A01714, v12, v11);
  }
}

uint64_t sub_248A01714()
{
  v1 = v0[13];
  v2 = v0[10];
  v3 = v0[11];
  v4 = v0[8];
  (*(v3 + 16))(v4, v0[12], v2);
  (*(v3 + 56))(v4, 0, 1, v2);
  v5 = qword_27EEB5408;
  swift_beginAccess();
  sub_24898D194(v4, v1 + v5, &qword_27EEB5400, &unk_248A14E10);
  swift_endAccess();

  return MEMORY[0x2822009F8](sub_248A01804, 0, 0);
}

uint64_t sub_248A01804()
{
  (*(v0[11] + 8))(v0[12], v0[10]);

  v1 = v0[1];

  return v1();
}

uint64_t GuestUserAccessResponsePeerConnectionService.deinit()
{

  v1 = OBJC_IVAR____TtC13DeviceSharing44GuestUserAccessResponsePeerConnectionService_observers;
  v2 = sub_248A11E00();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t GuestUserAccessResponsePeerConnectionService.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC13DeviceSharing44GuestUserAccessResponsePeerConnectionService_observers;
  v2 = sub_248A11E00();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_248A019E0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2489839A0;

  return sub_2489FFB8C(a1);
}

uint64_t sub_248A01A78(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2489839A0;

  return sub_2489FCB90(a1);
}

uint64_t sub_248A01B34()
{
  if (qword_27EEB51A0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  v2 = sub_248A122D0();
  __swift_project_value_buffer(v2, qword_27EEB9DC8);
  sub_2489BDB14(0xD000000000000093, 0x8000000248A1AFA0, 0x6164696C61766E69, 0xEC00000029286574);
  sub_2489FAEBC();
  *(v0 + 24) = *(v1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5898, &qword_248A15C28);
  sub_248A02C08(&qword_27EEB5EC0, &protocol conformance descriptor for PeerConnection<A>);
  v4 = sub_248A12CD0();

  return MEMORY[0x2822009F8](sub_248A01C74, v4, v3);
}

uint64_t sub_248A01C74()
{
  sub_248A03118(*(v0 + 16), *(v0 + 24), &off_285B62EC8, "[%{public}s] Remove observer %{public}s", MEMORY[0x277D04F50]);

  return MEMORY[0x2822009F8](sub_248A01D00, 0, 0);
}

uint64_t sub_248A01D00()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_248A0427C;

  return sub_2489F6784();
}

uint64_t sub_248A01DA8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2489839A0;

  return GuestUserAccessResponsePeerConnectionService.sendHeartbeat()();
}

uint64_t GuestUserAccessResponsePeerConnectionService.sendHeartbeat()()
{
  v1[2] = v0;
  v1[3] = *v0;
  v2 = sub_248A11F10();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_248A01F20, 0, 0);
}

uint64_t sub_248A01F20()
{
  v13 = v0;
  if (qword_27EEB51A0 != -1)
  {
    swift_once();
  }

  v1 = sub_248A122D0();
  __swift_project_value_buffer(v1, qword_27EEB9DC8);
  v2 = sub_248A122B0();
  v3 = sub_248A12E80();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v12 = v5;
    *v4 = 136446210;
    v6 = sub_248A13570();
    v8 = sub_24897BC00(v6, v7, &v12);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_248975000, v2, v3, "[%{public}s] Sending heartbeat", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x24C1E0A80](v5, -1, -1);
    MEMORY[0x24C1E0A80](v4, -1, -1);
  }

  (*(v0[5] + 104))(v0[6], *MEMORY[0x277D04FF8], v0[4]);
  v9 = swift_task_alloc();
  v0[7] = v9;
  *v9 = v0;
  v9[1] = sub_248A02120;
  v10 = v0[6];

  return sub_2489FA5E8(v10);
}

uint64_t sub_248A02120()
{
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 32);
  v5 = *v1;
  *(v5 + 64) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2489E3118, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_248A022C8(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 40) = a1;
  *(v2 + 48) = v3;
  return MEMORY[0x2822009F8](sub_248A022EC, 0, 0);
}

uint64_t sub_248A022EC()
{
  *(v0 + 56) = *(*(v0 + 48) + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5898, &qword_248A15C28);
  sub_248A02C08(&qword_27EEB5EC0, &protocol conformance descriptor for PeerConnection<A>);
  v2 = sub_248A12CD0();

  return MEMORY[0x2822009F8](sub_248A04278, v2, v1);
}

uint64_t GuestUserAccessResponsePeerConnectionService.description.getter()
{
  v2 = sub_248A13570();
  MEMORY[0x24C1DF8B0](10272, 0xE200000000000000);
  v0 = sub_2489FA2C8();
  MEMORY[0x24C1DF8B0](v0);

  MEMORY[0x24C1DF8B0](41, 0xE100000000000000);
  return v2;
}

uint64_t sub_248A024B4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_248978D74;

  return GuestUserAccessResponsePeerConnectionService.sendHeartbeat()();
}

uint64_t sub_248A02540()
{
  if (qword_27EEB51A0 != -1)
  {
    swift_once();
  }

  v0 = sub_248A122D0();
  __swift_project_value_buffer(v0, qword_27EEB9DC8);

  v1 = sub_248A122B0();
  v2 = sub_248A12E80();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v12 = v4;
    *v3 = 136446466;
    v5 = sub_248A13570();
    v7 = sub_24897BC00(v5, v6, &v12);

    *(v3 + 4) = v7;
    *(v3 + 12) = 2082;
    v8 = sub_2489FA2C8();
    v10 = sub_24897BC00(v8, v9, &v12);

    *(v3 + 14) = v10;
    _os_log_impl(&dword_248975000, v1, v2, "[%{public}s] Peer connection %{public}s did establish", v3, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1E0A80](v4, -1, -1);
    MEMORY[0x24C1E0A80](v3, -1, -1);
  }

  sub_2489FAC1C();
  v13 = 0;
  return sub_248A00D94(&v13);
}

uint64_t sub_248A02718(void *a1)
{
  if (qword_27EEB51A0 != -1)
  {
    swift_once();
  }

  v2 = sub_248A122D0();
  __swift_project_value_buffer(v2, qword_27EEB9DC8);

  v3 = a1;
  v4 = sub_248A122B0();
  v5 = sub_248A12E60();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v18 = v8;
    *v6 = 136446722;
    v9 = sub_248A13570();
    v11 = sub_24897BC00(v9, v10, &v18);

    *(v6 + 4) = v11;
    *(v6 + 12) = 2082;
    v12 = sub_2489FA2C8();
    v14 = sub_24897BC00(v12, v13, &v18);

    *(v6 + 14) = v14;
    *(v6 + 22) = 2114;
    v15 = a1;
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 24) = v16;
    *v7 = v16;
    _os_log_impl(&dword_248975000, v4, v5, "[%{public}s] Peer connection %{public}s did fail with error: %{public}@", v6, 0x20u);
    sub_248983734(v7, &qword_27EEB5600, &unk_248A15210);
    MEMORY[0x24C1E0A80](v7, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x24C1E0A80](v8, -1, -1);
    MEMORY[0x24C1E0A80](v6, -1, -1);
  }

  sub_2489FAEBC();
  v19 = 1;
  return sub_248A00D94(&v19);
}

uint64_t sub_248A02968()
{
  if (qword_27EEB51A0 != -1)
  {
    swift_once();
  }

  v0 = sub_248A122D0();
  __swift_project_value_buffer(v0, qword_27EEB9DC8);

  v1 = sub_248A122B0();
  v2 = sub_248A12E80();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v12 = v4;
    *v3 = 136446466;
    v5 = sub_248A13570();
    v7 = sub_24897BC00(v5, v6, &v12);

    *(v3 + 4) = v7;
    *(v3 + 12) = 2082;
    v8 = sub_2489FA2C8();
    v10 = sub_24897BC00(v8, v9, &v12);

    *(v3 + 14) = v10;
    _os_log_impl(&dword_248975000, v1, v2, "[%{public}s] Peer connection %{public}s did cancel", v3, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1E0A80](v4, -1, -1);
    MEMORY[0x24C1E0A80](v3, -1, -1);
  }

  return sub_2489FAEBC();
}

uint64_t sub_248A02B70(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2489839A0;

  return sub_2489FE980(a1, v1);
}

uint64_t sub_248A02C08(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EEB5898, &qword_248A15C28);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_248A02C58(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2489839A0;

  return sub_2489FEB28(a1, v1);
}

uint64_t sub_248A02CF0()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_2489839A0;

  return sub_2489FECD0(v0);
}

uint64_t sub_248A02D80()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_2489839A0;

  return sub_2489FEE2C(v0);
}

uint64_t sub_248A02E10()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_2489839A0;

  return sub_2489FEF88(v0);
}

uint64_t sub_248A02EA0()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_2489839A0;

  return sub_2489FF0E4(v0);
}

uint64_t sub_248A02F30(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2489839A0;

  return sub_2489FF240(a1, v1);
}

uint64_t sub_248A02FC8(uint64_t *a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2489839A0;

  return sub_2489FF3E8(a1, v1);
}

uint64_t sub_248A03060()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_2489839A0;

  return sub_2489FF63C(v0);
}

uint64_t sub_248A03118(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t (*a5)(void))
{
  if (qword_27EEB51A0 != -1)
  {
    swift_once();
  }

  v8 = sub_248A122D0();
  __swift_project_value_buffer(v8, qword_27EEB9DC8);

  v9 = sub_248A122B0();
  v10 = sub_248A12E80();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v24 = v12;
    *v11 = 136446466;
    v13 = sub_2489FA2C8();
    v23 = a5;
    v14 = a4;
    v16 = v15;

    v17 = sub_24897BC00(v13, v16, &v24);

    *(v11 + 4) = v17;
    *(v11 + 12) = 2082;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB55F0, &qword_248A150F0);
    v18 = sub_248A12B80();
    v20 = sub_24897BC00(v18, v19, &v24);

    *(v11 + 14) = v20;
    v21 = v14;
    a5 = v23;
    _os_log_impl(&dword_248975000, v9, v10, v21, v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1E0A80](v12, -1, -1);
    MEMORY[0x24C1E0A80](v11, -1, -1);
  }

  else
  {
  }

  return a5(a1);
}

uint64_t sub_248A03334(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (qword_27EEB51A0 != -1)
  {
    swift_once();
  }

  v4 = sub_248A122D0();
  __swift_project_value_buffer(v4, qword_27EEB9DC8);
  swift_unknownObjectRetain();
  v5 = sub_248A122B0();
  v6 = sub_248A12E80();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16 = v8;
    *v7 = 136446722;
    v9 = sub_248A13570();
    v11 = sub_24897BC00(v9, v10, &v16);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2082;
    *(v7 + 14) = sub_24897BC00(0x726573624F646461, 0xEF293A5F28726576, &v16);
    *(v7 + 22) = 2082;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB58B8, &qword_248A15CB0);
    v12 = sub_248A12B80();
    v14 = sub_24897BC00(v12, v13, &v16);

    *(v7 + 24) = v14;
    _os_log_impl(&dword_248975000, v5, v6, "%{public}s %{public}s: %{public}s", v7, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C1E0A80](v8, -1, -1);
    MEMORY[0x24C1E0A80](v7, -1, -1);
  }

  return sub_248A11DA0();
}

uint64_t dispatch thunk of GuestUserAccessResponsePeerConnectionServiceProviding.sendMessage(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 32) + **(a3 + 32));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2489839A0;

  return v9(a1, a2, a3);
}

uint64_t type metadata accessor for GuestUserAccessResponsePeerConnectionService(uint64_t a1)
{
  result = qword_27EEB6210;
  if (!qword_27EEB6210)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_248A0373C(uint64_t a1)
{
  result = sub_248A11E00();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t dispatch thunk of GuestUserAccessResponsePeerConnectionService.activate(transaction:)(uint64_t a1)
{
  v6 = (*(*v1 + 136) + **(*v1 + 136));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2489839A0;

  return v6(a1);
}

uint64_t dispatch thunk of GuestUserAccessResponsePeerConnectionService.invalidate()()
{
  v4 = (*(*v0 + 144) + **(*v0 + 144));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_2489839A0;

  return v4();
}

uint64_t dispatch thunk of GuestUserAccessResponsePeerConnectionService.peerIdentifier()(uint64_t a1)
{
  v6 = (*(*v1 + 152) + **(*v1 + 152));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2489839A0;

  return v6(a1);
}

uint64_t dispatch thunk of GuestUserAccessResponsePeerConnectionService.sendMessage(_:)(uint64_t a1)
{
  v6 = (*(*v1 + 160) + **(*v1 + 160));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2489839A0;

  return v6(a1);
}

uint64_t sub_248A03D4C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_248A03DB4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_248A03E1C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2489839A0;

  return sub_2489FB0B8(a1, v4, v5, v6);
}

uint64_t objectdestroy_48Tm(uint64_t a1)
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

uint64_t sub_248A03F34(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_248978D74;

  return sub_2489F9748(a1, v4, v5, v7, v6);
}

uint64_t sub_248A04028(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_248A040B8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v9 = *(v1 + 48);
  v8 = *(v1 + 56);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_248978D74;

  return sub_2489F896C(a1, v4, v5, v6, v7, v9, v8);
}

void sub_248A04190()
{
  if (qword_27EEB51A0 != -1)
  {
    swift_once();
  }

  v0 = sub_248A122D0();
  __swift_project_value_buffer(v0, qword_27EEB9DC8);
  oslog = sub_248A122B0();
  v1 = sub_248A12E80();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_248975000, oslog, v1, "Received heartbeat.", v2, 2u);
    MEMORY[0x24C1E0A80](v2, -1, -1);
  }
}

uint64_t sub_248A04288(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_248A042AC, 0, 0);
}

uint64_t sub_248A042AC(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB6228, &qword_248A182C8);
  v3 = swift_dynamicCastClass();
  if (v3)
  {
    v4 = v3;
    v8 = (v2[3] + *v2[3]);
    v5 = swift_task_alloc();
    v2[5] = v5;
    *v5 = v2;
    v5[1] = sub_248A04418;

    return v8(v4);
  }

  else
  {
    swift_unknownObjectRelease();
    v7 = v2[1];

    return v7();
  }
}

uint64_t sub_248A04418()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_248A0452C;
  }

  else
  {
    v2 = sub_2489E341C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_248A0452C()
{
  swift_unknownObjectRelease();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_248A04590()
{
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_248A045C0()
{
  *(v1 + 16) = v0;
  *(v1 + 24) = *v0;
  return MEMORY[0x2822009F8](sub_248A04608, 0, 0);
}

uint64_t sub_248A04608()
{
  v12 = v0;
  if (qword_28150F5F0 != -1)
  {
    swift_once();
  }

  v1 = sub_248A122D0();
  __swift_project_value_buffer(v1, qword_2815105C0);
  v2 = sub_248A122B0();
  v3 = sub_248A12E80();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136446466;
    v6 = sub_248A13570();
    v8 = sub_24897BC00(v6, v7, &v11);

    *(v4 + 4) = v8;
    *(v4 + 12) = 2082;
    *(v4 + 14) = sub_24897BC00(0xD000000000000014, 0x8000000248A1B430, &v11);
    _os_log_impl(&dword_248975000, v2, v3, "%{public}s %{public}s", v4, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1E0A80](v5, -1, -1);
    MEMORY[0x24C1E0A80](v4, -1, -1);
  }

  v9 = *(*(v0 + 16) + 56);
  *(v0 + 32) = v9;

  return MEMORY[0x2822009F8](sub_248A047D8, v9, 0);
}

uint64_t sub_248A047FC()
{
  *(v1 + 16) = v0;
  *(v1 + 24) = *v0;
  return MEMORY[0x2822009F8](sub_248A04844, 0, 0);
}

uint64_t sub_248A04844()
{
  v12 = v0;
  if (qword_28150F5F0 != -1)
  {
    swift_once();
  }

  v1 = sub_248A122D0();
  __swift_project_value_buffer(v1, qword_2815105C0);
  v2 = sub_248A122B0();
  v3 = sub_248A12E80();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136446466;
    v6 = sub_248A13570();
    v8 = sub_24897BC00(v6, v7, &v11);

    *(v4 + 4) = v8;
    *(v4 + 12) = 2082;
    *(v4 + 14) = sub_24897BC00(0xD000000000000017, 0x8000000248A1B410, &v11);
    _os_log_impl(&dword_248975000, v2, v3, "%{public}s %{public}s", v4, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1E0A80](v5, -1, -1);
    MEMORY[0x24C1E0A80](v4, -1, -1);
  }

  v9 = *(*(v0 + 16) + 56);
  *(v0 + 32) = v9;

  return MEMORY[0x2822009F8](sub_248A04A14, v9, 0);
}

uint64_t sub_248A04A34(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = *v2;
  return MEMORY[0x2822009F8](sub_248A04A80, 0, 0);
}

uint64_t sub_248A04A80()
{
  v12 = v0;
  if (qword_28150F5F0 != -1)
  {
    swift_once();
  }

  v1 = sub_248A122D0();
  v0[6] = __swift_project_value_buffer(v1, qword_2815105C0);
  v2 = sub_248A122B0();
  v3 = sub_248A12E80();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136446466;
    v6 = sub_248A13570();
    v8 = sub_24897BC00(v6, v7, &v11);

    *(v4 + 4) = v8;
    *(v4 + 12) = 2082;
    *(v4 + 14) = sub_24897BC00(0xD00000000000001CLL, 0x8000000248A1B3F0, &v11);
    _os_log_impl(&dword_248975000, v2, v3, "%{public}s %{public}s", v4, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1E0A80](v5, -1, -1);
    MEMORY[0x24C1E0A80](v4, -1, -1);
  }

  v9 = *(v0[4] + 56);
  v0[7] = v9;

  return MEMORY[0x2822009F8](sub_248A04C54, v9, 0);
}

uint64_t sub_248A04C7C(uint64_t a1)
{
  v15 = v1;
  if (*(v1 + 72) == 1)
  {
    v2 = *(*(v1 + 32) + 16);
    v13 = (*(v1 + 16) + **(v1 + 16));
    v3 = swift_task_alloc();
    *(v1 + 64) = v3;
    *v3 = v1;
    v3[1] = sub_248A04EE4;

    return v13(v2);
  }

  else
  {
    v5 = sub_248A122B0();
    v6 = sub_248A12E80();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v14 = v8;
      *v7 = 136446466;
      v9 = sub_248A13570();
      v11 = sub_24897BC00(v9, v10, &v14);

      *(v7 + 4) = v11;
      *(v7 + 12) = 2082;
      *(v7 + 14) = sub_24897BC00(0xD00000000000001CLL, 0x8000000248A1B3F0, &v14);
      _os_log_impl(&dword_248975000, v5, v6, "%{public}s %{public}s: no observer to notify", v7, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1E0A80](v8, -1, -1);
      MEMORY[0x24C1E0A80](v7, -1, -1);
    }

    v12 = *(v1 + 8);

    return v12();
  }
}

uint64_t sub_248A04EE4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_248A04FD8()
{

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_248A05070()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_248978D74;

  return sub_248A05100();
}

uint64_t sub_248A05100()
{
  v1[14] = v0;
  v2 = sub_248A11F10();
  v1[15] = v2;
  v1[16] = *(v2 - 8);
  v1[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_248A051C0, 0, 0);
}

uint64_t sub_248A051C0()
{
  if (qword_28150F5F0 != -1)
  {
    swift_once();
  }

  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[14];
  v4 = v0[15];
  v5 = sub_248A122D0();
  __swift_project_value_buffer(v5, qword_2815105C0);
  sub_2489BDB14(0xD00000000000007ELL, 0x8000000248A1B280, 0x6574617669746361, 0xEA00000000002928);
  v6 = *(v3 + 16);
  v0[18] = v6;
  v0[2] = v6;
  v7 = *MEMORY[0x277D04FB8];
  v8 = *(v2 + 104);
  v0[19] = v8;
  v0[20] = (v2 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v8(v1, v7, v4);
  v9 = swift_allocObject();
  v0[21] = v9;
  swift_weakInit();
  swift_retain_n();
  v10 = swift_task_alloc();
  v0[22] = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5D58, &qword_248A181B0);
  v0[23] = v11;
  v12 = sub_248A11F40();
  v13 = sub_248A079A8();
  v0[24] = v13;
  v14 = sub_248A095F0(&qword_28150F600, MEMORY[0x277D05078], MEMORY[0x277D05070]);
  *v10 = v0;
  v10[1] = sub_248A053F4;
  v15 = v0[17];

  return MEMORY[0x28215ABC8](v15, &unk_248A181A8, v9, v11, v12, v13, v14);
}

uint64_t sub_248A053F4()
{
  v1 = *v0;
  v2 = *(*v0 + 136);
  v3 = *(*v0 + 128);
  v4 = *(*v0 + 120);

  v5 = *(v3 + 8);
  *(v1 + 200) = v5;
  *(v1 + 208) = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v2, v4);

  return MEMORY[0x2822009F8](sub_248A05598, 0, 0);
}

uint64_t sub_248A05598()
{
  v1 = v0[19];
  v2 = v0[17];
  v3 = v0[15];
  v0[3] = v0[18];
  v1(v2, *MEMORY[0x277D05030], v3);
  v4 = swift_allocObject();
  v0[27] = v4;
  swift_weakInit();

  v5 = swift_task_alloc();
  v0[28] = v5;
  *v5 = v0;
  v5[1] = sub_248A056B4;
  v6 = v0[23];
  v7 = v0[24];
  v8 = v0[17];

  return MEMORY[0x28215ABD0](v8, &unk_248A181C0, v4, v6, v7);
}

uint64_t sub_248A056B4()
{
  v1 = *(*v0 + 200);
  v2 = *(*v0 + 136);
  v3 = *(*v0 + 120);

  v1(v2, v3);

  return MEMORY[0x2822009F8](sub_248A0585C, 0, 0);
}

uint64_t sub_248A0585C()
{
  v1 = v0[19];
  v2 = v0[17];
  v3 = v0[15];
  v0[4] = v0[18];
  v1(v2, *MEMORY[0x277D05038], v3);
  v4 = swift_allocObject();
  v0[29] = v4;
  swift_weakInit();

  v5 = swift_task_alloc();
  v0[30] = v5;
  *v5 = v0;
  v5[1] = sub_248A05978;
  v6 = v0[23];
  v7 = v0[24];
  v8 = v0[17];

  return MEMORY[0x28215ABD0](v8, &unk_248A181D0, v4, v6, v7);
}

uint64_t sub_248A05978()
{
  v1 = *(*v0 + 200);
  v2 = *(*v0 + 136);
  v3 = *(*v0 + 120);

  v1(v2, v3);

  return MEMORY[0x2822009F8](sub_248A05B20, 0, 0);
}

uint64_t sub_248A05B20()
{
  v1 = v0[19];
  v2 = v0[17];
  v3 = v0[15];
  v0[5] = v0[18];
  v1(v2, *MEMORY[0x277D04FE8], v3);
  v4 = swift_allocObject();
  v0[31] = v4;
  swift_weakInit();

  v5 = swift_task_alloc();
  v0[32] = v5;
  *v5 = v0;
  v5[1] = sub_248A05C3C;
  v6 = v0[23];
  v7 = v0[24];
  v8 = v0[17];

  return MEMORY[0x28215ABD0](v8, &unk_248A181E0, v4, v6, v7);
}

uint64_t sub_248A05C3C()
{
  v1 = *(*v0 + 200);
  v2 = *(*v0 + 136);
  v3 = *(*v0 + 120);

  v1(v2, v3);

  return MEMORY[0x2822009F8](sub_248A05DE4, 0, 0);
}

uint64_t sub_248A05DE4()
{
  v1 = v0[19];
  v2 = v0[17];
  v3 = v0[15];
  v0[6] = v0[18];
  v1(v2, *MEMORY[0x277D05028], v3);
  v4 = swift_allocObject();
  v0[33] = v4;
  swift_weakInit();

  v5 = swift_task_alloc();
  v0[34] = v5;
  v6 = sub_248A11E60();
  v7 = sub_248A095F0(&qword_28150F608, MEMORY[0x277D04F88], MEMORY[0x277D04F80]);
  *v5 = v0;
  v5[1] = sub_248A05F40;
  v8 = v0[23];
  v9 = v0[24];
  v10 = v0[17];

  return MEMORY[0x28215ABC8](v10, &unk_248A181F0, v4, v8, v6, v9, v7);
}

uint64_t sub_248A05F40()
{
  v1 = *(*v0 + 200);
  v2 = *(*v0 + 136);
  v3 = *(*v0 + 120);

  v1(v2, v3);

  return MEMORY[0x2822009F8](sub_248A060E0, 0, 0);
}

uint64_t sub_248A060E0()
{
  v1 = v0[19];
  v2 = v0[17];
  v3 = v0[15];
  v0[7] = v0[18];
  v1(v2, *MEMORY[0x277D04FF0], v3);
  v4 = swift_allocObject();
  v0[35] = v4;
  swift_weakInit();

  v5 = swift_task_alloc();
  v0[36] = v5;
  v6 = sub_248A11FF0();
  v7 = sub_248A095F0(&qword_27EEB61F8, MEMORY[0x277D050B0], MEMORY[0x277D050A8]);
  *v5 = v0;
  v5[1] = sub_248A0623C;
  v8 = v0[23];
  v9 = v0[24];
  v10 = v0[17];

  return MEMORY[0x28215ABC8](v10, &unk_248A18200, v4, v8, v6, v9, v7);
}

uint64_t sub_248A0623C()
{
  v1 = *(*v0 + 200);
  v2 = *(*v0 + 136);
  v3 = *(*v0 + 120);

  v1(v2, v3);

  return MEMORY[0x2822009F8](sub_248A063DC, 0, 0);
}

uint64_t sub_248A063DC()
{
  v1 = v0[19];
  v2 = v0[17];
  v3 = v0[15];
  v0[8] = v0[18];
  v1(v2, *MEMORY[0x277D05020], v3);
  v4 = swift_allocObject();
  v0[37] = v4;
  swift_weakInit();

  v5 = swift_task_alloc();
  v0[38] = v5;
  v6 = sub_248A12010();
  v7 = sub_248A095F0(&qword_27EEB6200, MEMORY[0x277D050C8], MEMORY[0x277D050C0]);
  *v5 = v0;
  v5[1] = sub_248A06538;
  v8 = v0[23];
  v9 = v0[24];
  v10 = v0[17];

  return MEMORY[0x28215ABC8](v10, &unk_248A18210, v4, v8, v6, v9, v7);
}

uint64_t sub_248A06538()
{
  v1 = *(*v0 + 200);
  v2 = *(*v0 + 136);
  v3 = *(*v0 + 120);

  v1(v2, v3);

  return MEMORY[0x2822009F8](sub_248A066D8, 0, 0);
}

uint64_t sub_248A066D8()
{
  v1 = v0[19];
  v2 = v0[17];
  v3 = v0[15];
  v0[9] = v0[18];
  v1(v2, *MEMORY[0x277D05000], v3);
  v4 = swift_allocObject();
  v0[39] = v4;
  swift_weakInit();

  v5 = swift_task_alloc();
  v0[40] = v5;
  *v5 = v0;
  v5[1] = sub_248A067F4;
  v6 = v0[23];
  v7 = v0[24];
  v8 = v0[17];

  return MEMORY[0x28215ABD0](v8, &unk_248A18220, v4, v6, v7);
}

uint64_t sub_248A067F4()
{
  v1 = *(*v0 + 200);
  v2 = *(*v0 + 136);
  v3 = *(*v0 + 120);

  v1(v2, v3);

  return MEMORY[0x2822009F8](sub_248A0699C, 0, 0);
}

uint64_t sub_248A0699C()
{
  v1 = v0[19];
  v2 = v0[17];
  v3 = v0[15];
  v0[10] = v0[18];
  v1(v2, *MEMORY[0x277D05058], v3);
  v4 = swift_allocObject();
  v0[41] = v4;
  swift_weakInit();

  v5 = swift_task_alloc();
  v0[42] = v5;
  v6 = sub_248A11E40();
  v7 = sub_248A095F0(&qword_28150F610, MEMORY[0x277D04F78], MEMORY[0x277D04F70]);
  *v5 = v0;
  v5[1] = sub_248A06AF8;
  v8 = v0[23];
  v9 = v0[24];
  v10 = v0[17];

  return MEMORY[0x28215ABC8](v10, &unk_248A18230, v4, v8, v6, v9, v7);
}

uint64_t sub_248A06AF8()
{
  v1 = *(*v0 + 200);
  v2 = *(*v0 + 136);
  v3 = *(*v0 + 120);

  v1(v2, v3);

  return MEMORY[0x2822009F8](sub_248A06C98, 0, 0);
}

uint64_t sub_248A06C98()
{
  v1 = v0[19];
  v2 = v0[17];
  v3 = v0[15];
  v0[11] = v0[18];
  v1(v2, *MEMORY[0x277D05048], v3);
  v4 = swift_allocObject();
  v0[43] = v4;
  swift_weakInit();

  v5 = swift_task_alloc();
  v0[44] = v5;
  *v5 = v0;
  v5[1] = sub_248A06DBC;
  v6 = v0[23];
  v7 = v0[24];
  v8 = v0[17];
  v9 = MEMORY[0x277D839B0];
  v10 = MEMORY[0x277D05190];

  return MEMORY[0x28215ABC0](v8, &unk_248A18240, v4, v6, v9, v7, v10);
}

uint64_t sub_248A06DBC()
{
  v1 = *(*v0 + 200);
  v2 = *(*v0 + 136);
  v3 = *(*v0 + 120);

  v1(v2, v3);

  return MEMORY[0x2822009F8](sub_248A06F5C, 0, 0);
}

uint64_t sub_248A06F5C()
{
  v1 = v0[19];
  v2 = v0[17];
  v3 = v0[15];
  v0[12] = v0[18];
  v1(v2, *MEMORY[0x277D04FD8], v3);
  v4 = swift_allocObject();
  v0[45] = v4;
  swift_weakInit();

  v5 = swift_task_alloc();
  v0[46] = v5;
  *v5 = v0;
  v5[1] = sub_248A07070;
  v6 = v0[23];
  v7 = v0[24];
  v8 = v0[17];

  return MEMORY[0x28215ABD0](v8, &unk_248A18250, v4, v6, v7);
}

uint64_t sub_248A07070()
{
  v1 = *(*v0 + 200);
  v2 = *(*v0 + 136);
  v3 = *(*v0 + 120);

  v1(v2, v3);

  return MEMORY[0x2822009F8](sub_248A07218, 0, 0);
}

uint64_t sub_248A07218()
{
  v1 = v0[19];
  v2 = v0[17];
  v3 = v0[15];
  v0[13] = v0[18];
  v1(v2, *MEMORY[0x277D05008], v3);
  v4 = swift_allocObject();
  v0[47] = v4;
  swift_weakInit();

  v5 = swift_task_alloc();
  v0[48] = v5;
  *v5 = v0;
  v5[1] = sub_248A0732C;
  v6 = v0[23];
  v7 = v0[24];
  v8 = v0[17];

  return MEMORY[0x28215ABD0](v8, &unk_248A18260, v4, v6, v7);
}

uint64_t sub_248A0732C()
{
  v1 = *(*v0 + 200);
  v2 = *(*v0 + 136);
  v3 = *(*v0 + 120);

  v1(v2, v3);

  return MEMORY[0x2822009F8](sub_248A074D4, 0, 0);
}

uint64_t sub_248A074D4()
{
  v1 = *(*(v0 + 112) + 48);
  ObjectType = swift_getObjectType();
  v3 = swift_allocObject();
  swift_weakInit();
  v4 = *(v1 + 16);

  v4(&unk_248A18270, v3, ObjectType, v1);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_248A075D0(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return MEMORY[0x2822009F8](sub_248A075F0, 0, 0);
}

uint64_t sub_248A075F0()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[7] = Strong;
  if (Strong)
  {
    v2 = Strong;
    if (qword_28150F5F0 != -1)
    {
      swift_once();
    }

    v3 = sub_248A122D0();
    __swift_project_value_buffer(v3, qword_2815105C0);
    sub_2489BDB14(0xD00000000000007ELL, 0x8000000248A1B280, 0xD00000000000001FLL, 0x8000000248A19630);
    v4 = *(v2 + 32);
    ObjectType = swift_getObjectType();
    v10 = (*(v4 + 24) + **(v4 + 24));
    v6 = swift_task_alloc();
    v0[8] = v6;
    *v6 = v0;
    v6[1] = sub_248A077FC;
    v7 = v0[5];

    return v10(v7, ObjectType, v4);
  }

  else
  {
    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_248A077FC()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_2489F4ECC;
  }

  else
  {
    v2 = sub_248A0AC8C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_248A07910(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2489839A0;

  return sub_248A075D0(a1, v1);
}

unint64_t sub_248A079A8()
{
  result = qword_28150F618;
  if (!qword_28150F618)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EEB5D58, &qword_248A181B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28150F618);
  }

  return result;
}

uint64_t sub_248A07A2C()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[6] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[7] = v2;
    *v2 = v0;
    v2[1] = sub_248A07B14;

    return sub_248A07CE0();
  }

  else
  {
    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_248A07B14()
{
  v2 = *v1;
  *(v2 + 64) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2489ECD28, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_248A07C50()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_2489839A0;

  return sub_248A07A0C(v0);
}

uint64_t sub_248A07CE0()
{
  v1[2] = v0;
  v2 = sub_248A11D50();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_248A07DA0, 0, 0);
}

uint64_t sub_248A07DA0()
{
  if (qword_28150F5F0 != -1)
  {
    swift_once();
  }

  v1 = v0[2];
  v2 = sub_248A122D0();
  __swift_project_value_buffer(v2, qword_2815105C0);
  sub_2489BDB14(0xD00000000000007ELL, 0x8000000248A1B280, 0xD00000000000001ALL, 0x8000000248A1B3D0);
  v3 = *(v1 + 32);
  ObjectType = swift_getObjectType();
  sub_248A11D30();
  v8 = (*(v3 + 32) + **(v3 + 32));
  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = sub_248A07F64;
  v6 = v0[5];

  return v8(v6, ObjectType, v3);
}

uint64_t sub_248A07F64()
{
  v2 = *(*v1 + 40);
  v3 = *(*v1 + 32);
  v4 = *(*v1 + 24);
  v5 = *v1;
  *(v5 + 56) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_248A0810C, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_248A0810C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_248A08190()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[6] = Strong;
  if (Strong)
  {
    v2 = Strong;
    if (qword_28150F5F0 != -1)
    {
      swift_once();
    }

    v3 = sub_248A122D0();
    __swift_project_value_buffer(v3, qword_2815105C0);
    sub_2489BDB14(0xD00000000000007ELL, 0x8000000248A1B280, 0xD000000000000014, 0x8000000248A195F0);
    v4 = *(v2 + 32);
    ObjectType = swift_getObjectType();
    v9 = (*(v4 + 40) + **(v4 + 40));
    v6 = swift_task_alloc();
    v0[7] = v6;
    *v6 = v0;
    v6[1] = sub_248A08398;

    return v9(ObjectType, v4);
  }

  else
  {
    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_248A08398()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_2489F4EC8;
  }

  else
  {
    v2 = sub_2489ECCC4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_248A084AC()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_2489839A0;

  return sub_248A08170(v0);
}

uint64_t sub_248A0855C()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[6] = Strong;
  if (Strong)
  {
    v2 = Strong;
    if (qword_28150F5F0 != -1)
    {
      swift_once();
    }

    v3 = sub_248A122D0();
    __swift_project_value_buffer(v3, qword_2815105C0);
    sub_2489BDB14(0xD00000000000007ELL, 0x8000000248A1B280, 0xD000000000000012, 0x8000000248A195D0);
    v4 = *(v2 + 32);
    ObjectType = swift_getObjectType();
    v9 = (*(v4 + 48) + **(v4 + 48));
    v6 = swift_task_alloc();
    v0[7] = v6;
    *v6 = v0;
    v6[1] = sub_248A08764;

    return v9(ObjectType, v4);
  }

  else
  {
    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_248A08764()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_2489F4EC8;
  }

  else
  {
    v2 = sub_248A0AC88;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_248A08878()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_2489839A0;

  return sub_248A0853C(v0);
}

uint64_t sub_248A08908(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return MEMORY[0x2822009F8](sub_248A08928, 0, 0);
}

uint64_t sub_248A08928()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[7] = Strong;
  if (Strong)
  {
    v2 = Strong;
    if (qword_28150F5F0 != -1)
    {
      swift_once();
    }

    v3 = sub_248A122D0();
    __swift_project_value_buffer(v3, qword_2815105C0);
    sub_2489BDB14(0xD00000000000007ELL, 0x8000000248A1B280, 0xD000000000000019, 0x8000000248A19520);
    v4 = *(v2 + 32);
    ObjectType = swift_getObjectType();
    v10 = (*(v4 + 56) + **(v4 + 56));
    v6 = swift_task_alloc();
    v0[8] = v6;
    *v6 = v0;
    v6[1] = sub_248A08B34;
    v7 = v0[5];

    return v10(v7, ObjectType, v4);
  }

  else
  {
    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_248A08B34()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_2489F4ECC;
  }

  else
  {
    v2 = sub_248A08C48;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_248A08C48()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_248A08CAC(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2489839A0;

  return sub_248A08908(a1, v1);
}

uint64_t sub_248A08D44(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return MEMORY[0x2822009F8](sub_248A08D64, 0, 0);
}

uint64_t sub_248A08D64()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    if (qword_28150F5F0 != -1)
    {
      swift_once();
    }

    v3 = *(v0 + 40);
    v4 = sub_248A122D0();
    __swift_project_value_buffer(v4, qword_2815105C0);
    sub_2489BDB14(0xD00000000000007ELL, 0x8000000248A1B280, 0xD000000000000011, 0x8000000248A1B3B0);
    v5 = *(v2 + 32);
    ObjectType = swift_getObjectType();
    (*(v5 + 64))(v3, ObjectType, v5);
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_248A08EA8(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2489839A0;

  return sub_248A08D44(a1, v1);
}

uint64_t sub_248A08F40(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return MEMORY[0x2822009F8](sub_248A08F60, 0, 0);
}

uint64_t sub_248A08F60()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    if (qword_28150F5F0 != -1)
    {
      swift_once();
    }

    v3 = *(v0 + 40);
    v4 = sub_248A122D0();
    __swift_project_value_buffer(v4, qword_2815105C0);
    sub_2489BDB14(0xD00000000000007ELL, 0x8000000248A1B280, 0xD000000000000015, 0x8000000248A1B390);
    v5 = *(v2 + 32);
    ObjectType = swift_getObjectType();
    (*(v5 + 72))(v3, ObjectType, v5);
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_248A090A4(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2489839A0;

  return sub_248A08F40(a1, v1);
}

uint64_t sub_248A0915C()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    if (qword_28150F5F0 != -1)
    {
      swift_once();
    }

    v3 = sub_248A122D0();
    __swift_project_value_buffer(v3, qword_2815105C0);
    sub_2489BDB14(0xD00000000000007ELL, 0x8000000248A1B280, 0xD000000000000010, 0x8000000248A194D0);
    v4 = *(v2 + 32);
    ObjectType = swift_getObjectType();
    (*(v4 + 80))(ObjectType, v4);
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_248A09298()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_2489839A0;

  return sub_248A0913C(v0);
}

uint64_t sub_248A09328(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return MEMORY[0x2822009F8](sub_248A09348, 0, 0);
}

uint64_t sub_248A09348()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[7] = Strong;
  if (Strong)
  {
    v2 = Strong;
    if (qword_28150F5F0 != -1)
    {
      swift_once();
    }

    v3 = sub_248A122D0();
    __swift_project_value_buffer(v3, qword_2815105C0);
    sub_2489BDB14(0xD00000000000007ELL, 0x8000000248A1B280, 0xD000000000000014, 0x8000000248A1B370);
    v4 = *(v2 + 32);
    ObjectType = swift_getObjectType();
    v10 = (*(v4 + 88) + **(v4 + 88));
    v6 = swift_task_alloc();
    v0[8] = v6;
    *v6 = v0;
    v6[1] = sub_248A077FC;
    v7 = v0[5];

    return v10(v7, ObjectType, v4);
  }

  else
  {
    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_248A09558(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2489839A0;

  return sub_248A09328(a1, v1);
}

uint64_t sub_248A095F0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_248A09638(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return MEMORY[0x2822009F8](sub_248A09658, 0, 0);
}

uint64_t sub_248A09658()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {
    v2 = Strong;
    if (qword_28150F5F0 != -1)
    {
      swift_once();
    }

    v3 = sub_248A122D0();
    __swift_project_value_buffer(v3, qword_2815105C0);
    sub_2489BDB14(0xD00000000000007ELL, 0x8000000248A1B280, 0xD000000000000021, 0x8000000248A1B340);
    v4 = *(v2 + 48);
    ObjectType = swift_getObjectType();
    v9 = (*(v4 + 32) + **(v4 + 32));
    v6 = swift_task_alloc();
    *(v0 + 64) = v6;
    *v6 = v0;
    v6[1] = sub_248A09868;

    return v9(ObjectType, v4);
  }

  else
  {
    **(v0 + 40) = 2;
    v8 = *(v0 + 8);

    return v8();
  }
}

uint64_t sub_248A09868(char a1)
{
  v4 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v5 = sub_2489EDBB4;
  }

  else
  {
    *(v4 + 80) = a1 & 1;
    v5 = sub_248A09994;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_248A09994()
{
  v1 = *(v0 + 80);

  **(v0 + 40) = v1;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_248A09A04(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2489839A0;

  return sub_248A09638(a1, v1);
}

uint64_t sub_248A09AC0()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[6] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[7] = v2;
    *v2 = v0;
    v2[1] = sub_2489ECEA8;

    return sub_248A045C0();
  }

  else
  {
    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_248A09BA8()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_2489839A0;

  return sub_248A09AA0(v0);
}

uint64_t sub_248A09C58()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[6] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[7] = v2;
    *v2 = v0;
    v2[1] = sub_2489ECEA8;

    return sub_248A047FC();
  }

  else
  {
    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_248A09D40()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_2489839A0;

  return sub_248A09C38(v0);
}

uint64_t sub_248A09DD0(char a1, uint64_t a2)
{
  *(v2 + 16) = a2;
  *(v2 + 32) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEB52D0, &qword_248A14980);
  *(v2 + 24) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_248A09E70, 0, 0);
}

uint64_t sub_248A09E70()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = sub_248A12D40();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v5 + 24) = 0;
  *(v5 + 32) = v1;
  *(v5 + 40) = v3;

  sub_2489E6270(0, 0, v2, &unk_248A18288, v5);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_248A09F7C(char a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2489839A0;

  return sub_248A09DD0(a1, v1);
}

uint64_t sub_248A0A014(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 80) = a5;
  *(v5 + 40) = a1;
  *(v5 + 48) = a4;
  return MEMORY[0x2822009F8](sub_248A0A038, 0, 0);
}

uint64_t sub_248A0A038()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    *(v0 + 64) = v2;
    *v2 = v0;
    v2[1] = sub_248A0A134;
    v3 = *(v0 + 80);

    return sub_248A0A340(v3);
  }

  else
  {
    **(v0 + 40) = 1;
    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_248A0A134()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_2489F4ECC;
  }

  else
  {

    v2 = sub_248A0A250;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_248A0A27C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2489839A0;

  return sub_248A0A014(a1, v4, v5, v6, v7);
}

uint64_t sub_248A0A340(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 56) = a1;
  *(v2 + 24) = *v1;
  return MEMORY[0x2822009F8](sub_248A0A38C, 0, 0);
}

uint64_t sub_248A0A38C()
{
  v15 = v0;
  if (qword_28150F5F0 != -1)
  {
    swift_once();
  }

  v1 = sub_248A122D0();
  __swift_project_value_buffer(v1, qword_2815105C0);
  v2 = sub_248A122B0();
  v3 = sub_248A12E80();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 56);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v14 = v6;
    *v5 = 136446722;
    v7 = sub_248A13570();
    v9 = sub_24897BC00(v7, v8, &v14);

    *(v5 + 4) = v9;
    *(v5 + 12) = 2082;
    *(v5 + 14) = sub_24897BC00(0xD000000000000039, 0x8000000248A1B300, &v14);
    *(v5 + 22) = 1026;
    *(v5 + 24) = v4;
    _os_log_impl(&dword_248975000, v2, v3, "%{public}s %{public}s: %{BOOL,public}d", v5, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x24C1E0A80](v6, -1, -1);
    MEMORY[0x24C1E0A80](v5, -1, -1);
  }

  v10 = *(v0 + 56);
  v11 = swift_task_alloc();
  *(v0 + 32) = v11;
  *(v11 + 16) = v10;
  v12 = swift_task_alloc();
  *(v0 + 40) = v12;
  *v12 = v0;
  v12[1] = sub_2489E3FF8;

  return sub_248A04A34(&unk_248A182A0, v11);
}

uint64_t sub_248A0A5C4(uint64_t a1, char a2)
{
  *(v2 + 81) = a2;
  *(v2 + 16) = a1;
  v3 = sub_248A11F10();
  *(v2 + 24) = v3;
  *(v2 + 32) = *(v3 - 8);
  *(v2 + 40) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_248A0A688, 0, 0);
}

uint64_t sub_248A0A688()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 81);
  (*(*(v0 + 32) + 104))(v1, *MEMORY[0x277D05040], *(v0 + 24));
  *(v0 + 80) = v2;
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v0 + 80;
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *(v4 + 16) = &unk_248A182B0;
  *(v4 + 24) = v3;
  v5 = swift_task_alloc();
  *(v0 + 64) = v5;
  *v5 = v0;
  v5[1] = sub_248A0A7B0;

  return MEMORY[0x28215A940](&unk_248A182C0, v4);
}

uint64_t sub_248A0A7B0()
{
  v2 = *v1;
  v2[9] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_248A0A92C, 0, 0);
  }

  else
  {
    v4 = v2[4];
    v3 = v2[5];
    v5 = v2[3];

    (*(v4 + 8))(v3, v5);

    v6 = v2[1];

    return v6();
  }
}

uint64_t sub_248A0A92C()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_248A0A9C8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_248978D74;

  return sub_248A0A5C4(a1, v4);
}

uint64_t sub_248A0AA64(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  *(v3 + 24) = *a3;
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_248978D74;
  v6 = MEMORY[0x277D839B0];
  v7 = MEMORY[0x277D05190];

  return MEMORY[0x28215AB10](a2, v3 + 24, v6, v7);
}

uint64_t sub_248A0AB2C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2489839A0;

  return sub_248A0AA64(a1, v5, v4);
}

uint64_t sub_248A0ABE0(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2489839A0;

  return sub_248A04288(a1, v5, v4);
}

uint64_t sub_248A0AC90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_248A12EF0();
  if (swift_task_isCurrentExecutor())
  {
    v10 = swift_allocObject();
    *(v10 + 16) = a1;
    *(v10 + 24) = a2;
    v11 = swift_allocObject();
    *(v11 + 16) = sub_248A0D528;
    *(v11 + 24) = v10;

    v15[0] = v6;
    sub_248A0D56C(v15, &v16);

    if (v7)
    {
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        return v11;
      }

      __break(1u);
    }

    v11 = v16;
    v13 = swift_isEscapingClosureAtFileLocation();

    if ((v13 & 1) == 0)
    {
      return v11;
    }

    __break(1u);
  }

  v15[0] = 0;
  v15[1] = 0xE000000000000000;
  sub_248A13100();
  MEMORY[0x24C1DF8B0](0xD00000000000003FLL, 0x8000000248A18FE0);
  v16 = v6;
  type metadata accessor for LockoutObserverManager(0);
  sub_248A131F0();
  MEMORY[0x24C1DF8B0](46, 0xE100000000000000);
  result = sub_248A13200();
  __break(1u);
  return result;
}

uint64_t sub_248A0AE98()
{
  v0 = sub_248A122D0();
  __swift_allocate_value_buffer(v0, qword_27EEB6230);
  __swift_project_value_buffer(v0, qword_27EEB6230);
  return sub_248A122C0();
}

uint64_t static LockoutState.makeLockoutState(passcodeDisabled:beforeFirstUnlock:inPasscodeLockout:inBioLockout:isKeyBagLocked:)@<X0>(uint64_t result@<X0>, char a2@<W1>, char a3@<W2>, char a4@<W3>, char a5@<W4>, uint64_t *a6@<X8>)
{
  v6 = result & 1;
  if (a2)
  {
    v6 = result & 1 | 2;
  }

  if (a3)
  {
    v6 |= 4uLL;
  }

  if (a4)
  {
    v6 |= 8uLL;
  }

  if (a5)
  {
    v6 |= 0x10uLL;
  }

  *a6 = v6;
  return result;
}

uint64_t LockoutState.description.getter()
{
  v1 = *v0;
  sub_248A13100();

  v16[0] = 0xD000000000000012;
  v16[1] = 0x8000000248A1B450;
  if (v1)
  {
    v2 = 1702195828;
  }

  else
  {
    v2 = 0x65736C6166;
  }

  if (v1)
  {
    v3 = 0xE400000000000000;
  }

  else
  {
    v3 = 0xE500000000000000;
  }

  v4 = 0xE500000000000000;
  MEMORY[0x24C1DF8B0](v2, v3);

  MEMORY[0x24C1DF8B0](32, 0xE100000000000000);
  v5 = v16[0];
  v6 = v16[1];
  strcpy(v16, "LockoutState(");
  MEMORY[0x24C1DF8B0](v5, v6);

  v7 = v16[0];
  sub_248A13100();

  v16[0] = 0xD000000000000013;
  v16[1] = 0x8000000248A1B470;
  if ((v1 & 2) != 0)
  {
    v8 = 1702195828;
  }

  else
  {
    v8 = 0x65736C6166;
  }

  if ((v1 & 2) != 0)
  {
    v4 = 0xE400000000000000;
  }

  MEMORY[0x24C1DF8B0](v8, v4);

  MEMORY[0x24C1DF8B0](32, 0xE100000000000000);

  MEMORY[0x24C1DF8B0](v16[0], v16[1]);

  sub_248A13100();

  v16[0] = 0xD000000000000013;
  v16[1] = 0x8000000248A1B490;
  if ((v1 & 4) != 0)
  {
    v9 = 1702195828;
  }

  else
  {
    v9 = 0x65736C6166;
  }

  if ((v1 & 4) != 0)
  {
    v10 = 0xE400000000000000;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  MEMORY[0x24C1DF8B0](v9, v10);

  MEMORY[0x24C1DF8B0](32, 0xE100000000000000);

  MEMORY[0x24C1DF8B0](v16[0], v16[1]);

  sub_248A13100();

  strcpy(v16, "inBioLockout: ");
  HIBYTE(v16[1]) = -18;
  if ((v1 & 8) != 0)
  {
    v11 = 1702195828;
  }

  else
  {
    v11 = 0x65736C6166;
  }

  if ((v1 & 8) != 0)
  {
    v12 = 0xE400000000000000;
  }

  else
  {
    v12 = 0xE500000000000000;
  }

  MEMORY[0x24C1DF8B0](v11, v12);

  MEMORY[0x24C1DF8B0](32, 0xE100000000000000);

  MEMORY[0x24C1DF8B0](v16[0], v16[1]);

  sub_248A13100();

  v16[0] = 0xD000000000000010;
  v16[1] = 0x8000000248A1B4B0;
  if ((v1 & 0x10) != 0)
  {
    v13 = 1702195828;
  }

  else
  {
    v13 = 0x65736C6166;
  }

  if ((v1 & 0x10) != 0)
  {
    v14 = 0xE400000000000000;
  }

  else
  {
    v14 = 0xE500000000000000;
  }

  MEMORY[0x24C1DF8B0](v13, v14);

  MEMORY[0x24C1DF8B0](41, 0xE100000000000000);

  MEMORY[0x24C1DF8B0](v16[0], v16[1]);

  return v7;
}

uint64_t sub_248A0B38C@<X0>(void *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = *(v1 + 16);
  return result;
}

void sub_248A0B3D0(uint64_t *a1@<X8>)
{
  sub_248991AE8(&unk_285B60748);
  sub_248983734(&unk_285B60768, &qword_27EEB6290, &unk_248A185C0);
  v2 = sub_248A12A80();

  v3 = sub_248A0C490();
  v4 = sub_248A0C590();
  sub_248A0C6FC();
  v6 = v5;
  if (!*MEMORY[0x277D28AF8])
  {
    __break(1u);
    goto LABEL_39;
  }

  v7 = sub_248A12B60();
  if (*(v4 + 16))
  {
    v9 = sub_2489A7D40(v7, v8);
    v11 = v10;

    if (v11)
    {
      sub_24897C864(*(v4 + 56) + 32 * v9, v32);
      if (swift_dynamicCast())
      {
        v12 = v31;
        goto LABEL_8;
      }
    }
  }

  else
  {
  }

  v12 = 0;
LABEL_8:
  if (!*MEMORY[0x277D28B08])
  {
LABEL_39:
    __break(1u);
    return;
  }

  v13 = sub_248A12B60();
  if (!*(v4 + 16))
  {

    goto LABEL_14;
  }

  v15 = sub_2489A7D40(v13, v14);
  v17 = v16;

  if ((v17 & 1) == 0)
  {
LABEL_14:

    goto LABEL_15;
  }

  sub_24897C864(*(v4 + 56) + 32 * v15, v32);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_15:
    v18 = 1;
    goto LABEL_16;
  }

  v18 = v31 ^ 1;
LABEL_16:
  v19 = MKBDeviceUnlockedSinceBoot();
  v20 = sub_248A0CFCC();
  if ((v18 & 1) == 0 || v12 >= v6)
  {
    if (v3 == 3)
    {
      v21 = 3;
      if (v19)
      {
        v21 = 1;
      }
    }

    else
    {
      v21 = 2 * (v19 == 0);
    }

    goto LABEL_27;
  }

  v21 = v3 == 3;
  if (v19)
  {
    if ((v20 & 1) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  v21 |= 2uLL;
  if (v20)
  {
LABEL_27:
    v21 |= 4uLL;
  }

LABEL_28:
  if (v20)
  {
    v21 |= 8uLL;
  }

  if (((v3 < 8u) & (0xB9u >> v3)) != 0)
  {
    v22 = v21;
  }

  else
  {
    v22 = v21 | 0x10;
  }

  if (qword_27EEB51B8 != -1)
  {
    swift_once();
  }

  v23 = sub_248A122D0();
  __swift_project_value_buffer(v23, qword_27EEB6230);
  v24 = sub_248A122B0();
  v25 = sub_248A12E80();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v32[0] = v27;
    *v26 = 136446210;
    v28 = LockoutState.description.getter();
    v30 = sub_24897BC00(v28, v29, v32);

    *(v26 + 4) = v30;
    _os_log_impl(&dword_248975000, v24, v25, "%{public}s", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v27);
    MEMORY[0x24C1E0A80](v27, -1, -1);
    MEMORY[0x24C1E0A80](v26, -1, -1);
  }

  *a1 = v22;
}

uint64_t sub_248A0B768()
{
  v1 = v0;
  if (qword_27EEB51B8 != -1)
  {
    swift_once();
  }

  v2 = sub_248A122D0();
  __swift_project_value_buffer(v2, qword_27EEB6230);
  v3 = sub_248A122B0();
  v4 = sub_248A12E80();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_248975000, v3, v4, "Begin observing Key Bag lockout state changes", v5, 2u);
    MEMORY[0x24C1E0A80](v5, -1, -1);
  }

  v6 = *(v1 + 32);
  v7 = swift_allocObject();
  swift_weakInit();

  v8 = sub_2489D5C78(0xD000000000000024, 0x8000000248A1B680, v6, sub_248A0D5B4, v7);

  *(v1 + 40) = v8;
  *(v1 + 44) = BYTE4(v8) & 1;
  return result;
}

uint64_t sub_248A0B8C8()
{
  v1 = v0;
  if (qword_27EEB51B8 != -1)
  {
    swift_once();
  }

  v2 = sub_248A122D0();
  __swift_project_value_buffer(v2, qword_27EEB6230);
  v3 = sub_248A122B0();
  v4 = sub_248A12E80();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_248975000, v3, v4, "Begin observing Biometrics lockout state changes", v5, 2u);
    MEMORY[0x24C1E0A80](v5, -1, -1);
  }

  v6 = *(v1 + 32);
  v7 = swift_allocObject();
  swift_weakInit();

  v8 = sub_2489D5C78(0xD000000000000031, 0x8000000248A1B610, v6, sub_248A0D4F4, v7);

  *(v1 + 48) = v8;
  *(v1 + 52) = BYTE4(v8) & 1;
  return result;
}

uint64_t LockoutObserverManager.deinit()
{
  sub_248A0BAA0();
  sub_248A0BBA8();

  v1 = OBJC_IVAR____TtC13DeviceSharing22LockoutObserverManager_observers;
  v2 = sub_248A11E00();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

void sub_248A0BAA0()
{
  v1 = v0;
  if (qword_27EEB51B8 != -1)
  {
    swift_once();
  }

  v2 = sub_248A122D0();
  __swift_project_value_buffer(v2, qword_27EEB6230);
  v3 = sub_248A122B0();
  v4 = sub_248A12E80();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_248975000, v3, v4, "End observing Key Bag lockout state changes", v5, 2u);
    MEMORY[0x24C1E0A80](v5, -1, -1);
  }

  if ((*(v1 + 44) & 1) == 0)
  {
    v6 = *(v1 + 40);

    sub_2489D5EF4(v6);
  }
}

void sub_248A0BBA8()
{
  v1 = v0;
  if (qword_27EEB51B8 != -1)
  {
    swift_once();
  }

  v2 = sub_248A122D0();
  __swift_project_value_buffer(v2, qword_27EEB6230);
  v3 = sub_248A122B0();
  v4 = sub_248A12E80();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_248975000, v3, v4, "End observing Biometrics lockout state changes", v5, 2u);
    MEMORY[0x24C1E0A80](v5, -1, -1);
  }

  if ((*(v1 + 52) & 1) == 0)
  {
    v6 = *(v1 + 48);

    sub_2489D5EF4(v6);
  }
}

uint64_t LockoutObserverManager.__deallocating_deinit()
{
  sub_248A0BAA0();
  sub_248A0BBA8();

  v1 = OBJC_IVAR____TtC13DeviceSharing22LockoutObserverManager_observers;
  v2 = sub_248A11E00();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_248A0BD64(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (qword_27EEB51B8 != -1)
  {
    swift_once();
  }

  v6 = sub_248A122D0();
  __swift_project_value_buffer(v6, qword_27EEB6230);
  swift_unknownObjectRetain();
  v7 = sub_248A122B0();
  v8 = sub_248A12E80();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v17[0] = v10;
    v17[1] = a1;
    *v9 = 136446210;
    v17[2] = a2;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB6250, &qword_248A182E0);
    v11 = sub_248A12B80();
    v13 = sub_24897BC00(v11, v12, v17);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_248975000, v7, v8, "Adding observer: %{public}s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x24C1E0A80](v10, -1, -1);
    MEMORY[0x24C1E0A80](v9, -1, -1);
  }

  ObjectType = swift_getObjectType();
  sub_248A11DA0();
  v15 = sub_248A0D4AC(&qword_27EEB61D0, type metadata accessor for LockoutObserverManager, &protocol conformance descriptor for LockoutObserverManager);
  swift_beginAccess();
  v17[0] = *(v3 + 16);
  return (*(a2 + 8))(v3, v15, v17, ObjectType, a2);
}

uint64_t type metadata accessor for LockoutObserverManager(uint64_t a1)
{
  result = qword_27EEB6280;
  if (!qword_27EEB6280)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_248A0BFE0(uint64_t a1, uint64_t a2)
{
  if (qword_27EEB51B8 != -1)
  {
    swift_once();
  }

  v2 = sub_248A122D0();
  __swift_project_value_buffer(v2, qword_27EEB6230);
  swift_unknownObjectRetain();
  v3 = sub_248A122B0();
  v4 = sub_248A12E80();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136446210;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB6250, &qword_248A182E0);
    v7 = sub_248A12B80();
    v9 = sub_24897BC00(v7, v8, &v11);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_248975000, v3, v4, "Removing observer: %{public}s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x24C1E0A80](v6, -1, -1);
    MEMORY[0x24C1E0A80](v5, -1, -1);
  }

  return sub_248A11DB0();
}

uint64_t sub_248A0C17C(uint64_t a1, void (*a2)(uint64_t, uint64_t))
{
  swift_unknownObjectRetain();
  swift_getObjectType();
  v4 = swift_conformsToProtocol2();
  if (v4 && a1)
  {
    a2(a1, v4);
  }

  return swift_unknownObjectRelease();
}

uint64_t sub_248A0C1F8()
{
  v1 = v0;
  if (qword_27EEB51B8 != -1)
  {
    swift_once();
  }

  v2 = sub_248A122D0();
  __swift_project_value_buffer(v2, qword_27EEB6230);
  v3 = sub_248A122B0();
  v4 = sub_248A12E80();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_248975000, v3, v4, "Refreshing lockout state", v5, 2u);
    MEMORY[0x24C1E0A80](v5, -1, -1);
  }

  sub_248A0B3D0(&v9);
  v6 = v9;
  swift_beginAccess();
  *(v1 + 16) = v6;
  sub_2489BDB14(0xD00000000000006FLL, 0x8000000248A1B560, 0xD000000000000013, 0x8000000248A1B0F0);
  MEMORY[0x28223BE20](v7);
  return sub_248A11DC0();
}

uint64_t sub_248A0C3CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v6 = sub_248A0D4AC(&qword_27EEB61D0, type metadata accessor for LockoutObserverManager, &protocol conformance descriptor for LockoutObserverManager);
  swift_beginAccess();
  v8 = *(a3 + 16);
  return (*(a2 + 8))(a3, v6, &v8, ObjectType, a2);
}

uint64_t sub_248A0C490()
{
  v0 = MKBGetDeviceLockState();
  v1 = v0;
  result = sub_248A0CFBC(v0);
  if (result == 8)
  {
    if (qword_27EEB51B8 != -1)
    {
      swift_once();
    }

    v3 = sub_248A122D0();
    __swift_project_value_buffer(v3, qword_27EEB6230);
    v4 = sub_248A122B0();
    v5 = sub_248A12E70();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 67240192;
      *(v6 + 4) = v1;
      _os_log_impl(&dword_248975000, v4, v5, "Unexpected lock state: %{public}d!", v6, 8u);
      MEMORY[0x24C1E0A80](v6, -1, -1);
    }

    return 1;
  }

  return result;
}

unint64_t sub_248A0C590()
{
  v0 = MKBGetDeviceLockStateInfo();
  if (v0)
  {
    v1 = v0;
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      sub_248A12A90();
    }
  }

  if (qword_27EEB51B8 != -1)
  {
    swift_once();
  }

  v2 = sub_248A122D0();
  __swift_project_value_buffer(v2, qword_27EEB6230);
  v3 = sub_248A122B0();
  v4 = sub_248A12E70();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_248975000, v3, v4, "Unable to query lock state info!", v5, 2u);
    MEMORY[0x24C1E0A80](v5, -1, -1);
  }

  v6 = MEMORY[0x277D84F90];

  return sub_248990FB8(v6);
}

void sub_248A0C6FC()
{
  v0 = MKBGetDeviceConfigurations();
  if (v0)
  {
    v1 = v0;
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      sub_248A12A90();
    }
  }

  if (qword_27EEB51B8 != -1)
  {
    swift_once();
  }

  v2 = sub_248A122D0();
  __swift_project_value_buffer(v2, qword_27EEB6230);
  v3 = sub_248A122B0();
  v4 = sub_248A12E60();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_248975000, v3, v4, "Unable to query lock state configuration!", v5, 2u);
    MEMORY[0x24C1E0A80](v5, -1, -1);
  }
}

uint64_t sub_248A0CAAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_248A0AC90(a3, 0, "DeviceSharing/LockoutObserverManager.swift", 42, 2, a4);
  }

  return result;
}

uint64_t sub_248A0CB38()
{
  if (qword_27EEB51B8 != -1)
  {
    swift_once();
  }

  v0 = sub_248A122D0();
  __swift_project_value_buffer(v0, qword_27EEB6230);
  v1 = sub_248A122B0();
  v2 = sub_248A12E80();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_248975000, v1, v2, "Key Bag state changed", v3, 2u);
    MEMORY[0x24C1E0A80](v3, -1, -1);
  }

  return sub_248A0C1F8();
}

unint64_t sub_248A0CC20()
{
  result = qword_27EEB6258;
  if (!qword_27EEB6258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEB6258);
  }

  return result;
}

unint64_t sub_248A0CC78()
{
  result = qword_27EEB6260;
  if (!qword_27EEB6260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEB6260);
  }

  return result;
}

unint64_t sub_248A0CCD0()
{
  result = qword_27EEB6268;
  if (!qword_27EEB6268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEB6268);
  }

  return result;
}

unint64_t sub_248A0CD28()
{
  result = qword_27EEB6270;
  if (!qword_27EEB6270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEB6270);
  }

  return result;
}

uint64_t sub_248A0CD7C(uint64_t a1)
{
  result = sub_248A0D4AC(&qword_27EEB6278, type metadata accessor for LockoutObserverManager, &protocol conformance descriptor for LockoutObserverManager);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_248A0CE3C(uint64_t a1)
{
  result = sub_248A11E00();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_248A0CFBC(uint64_t result)
{
  if (result >= 8)
  {
    return 8;
  }

  else
  {
    return result;
  }
}

id sub_248A0CFCC()
{
  v0 = [objc_opt_self() currentUser];
  v1 = [v0 state];

  v2 = [v1 biometry];
  if (!v2)
  {
    if (qword_27EEB51B8 != -1)
    {
      swift_once();
    }

    v4 = sub_248A122D0();
    __swift_project_value_buffer(v4, qword_27EEB6230);
    v2 = sub_248A122B0();
    v5 = sub_248A12E60();
    if (os_log_type_enabled(v2, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_248975000, v2, v5, "Could not get biometry.", v6, 2u);
      MEMORY[0x24C1E0A80](v6, -1, -1);
    }

    goto LABEL_13;
  }

  if (![v2 isEnrolled])
  {
    if (qword_27EEB51B8 != -1)
    {
      swift_once();
    }

    v7 = sub_248A122D0();
    __swift_project_value_buffer(v7, qword_27EEB6230);
    v8 = sub_248A122B0();
    v9 = sub_248A12E80();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_248975000, v8, v9, "Biometric authentication is not enrolled.", v10, 2u);
      MEMORY[0x24C1E0A80](v10, -1, -1);
    }

LABEL_13:
    v3 = 0;
    goto LABEL_14;
  }

  v3 = [v2 isLockedOut];
LABEL_14:

  return v3;
}

uint64_t *sub_248A0D1F4(uint64_t a1)
{
  v11 = *v1;
  v10 = sub_248A12EA0();
  v3 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_248A12ED0();
  MEMORY[0x28223BE20](v6);
  v7 = sub_248A12A40();
  MEMORY[0x28223BE20](v7 - 8);
  *(v1 + 10) = 0;
  *(v1 + 44) = 1;
  *(v1 + 12) = 0;
  *(v1 + 52) = 1;
  sub_248A11DF0();
  v1[3] = a1;
  sub_24898C37C();

  sub_248A12A10();
  v12 = MEMORY[0x277D84F90];
  sub_248A0D4AC(&unk_28150F570, MEMORY[0x277D852D8], MEMORY[0x277D852E0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEB5F20, &unk_248A16460);
  sub_24898C3C8();
  sub_248A12FA0();
  (*(v3 + 104))(v5, *MEMORY[0x277D85268], v10);
  v1[4] = sub_248A12EE0();
  sub_248A0B3D0(&v12);
  v1[2] = v12;
  sub_248A0B768();
  sub_248A0B8C8();
  return v1;
}

uint64_t sub_248A0D4AC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *sub_248A0D528@<X0>(_BYTE *a1@<X8>)
{
  result = (*(v1 + 16))(&v5);
  if (!v2)
  {
    *a1 = v5;
  }

  return result;
}

void *sub_248A0D56C@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(v2 + 16))(&v6, *a1);
  if (!v3)
  {
    *a2 = v6;
  }

  return result;
}

double GuestUserAccessPeerConnectionServiceMessage.Response.transportPayload.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_248A11E60();
  v24 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_248A11D50();
  v23 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_248A11F40();
  MEMORY[0x28223BE20](v10);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for GuestUserAccessPeerConnectionServiceMessage.Response(0);
  MEMORY[0x28223BE20](v13);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_248A03D4C(v2, v15, type metadata accessor for GuestUserAccessPeerConnectionServiceMessage.Response);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v19 = *(v24 + 32);
      v19(v6, v15, v4);
      *(a1 + 24) = v4;
      *(a1 + 32) = sub_248A0F148(&qword_28150F608, MEMORY[0x277D04F88], MEMORY[0x277D04F80]);
      boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(a1);
      v19(boxed_opaque_existential_1Tm, v6, v4);
    }

    else
    {
      *(a1 + 32) = 0;
      result = 0.0;
      *a1 = 0u;
      *(a1 + 16) = 0u;
    }
  }

  else if (EnumCaseMultiPayload)
  {
    v21 = *(v23 + 32);
    v21(v9, v15, v7);
    *(a1 + 24) = v7;
    *(a1 + 32) = sub_248A0F148(&qword_27EEB6298, MEMORY[0x277D04F38], MEMORY[0x277D04F30]);
    v22 = __swift_allocate_boxed_opaque_existential_1Tm(a1);
    v21(v22, v9, v7);
  }

  else
  {
    sub_248A0D998(v15, v12);
    *(a1 + 24) = v10;
    *(a1 + 32) = sub_248A0F148(&qword_28150F600, MEMORY[0x277D05078], MEMORY[0x277D05070]);
    v17 = __swift_allocate_boxed_opaque_existential_1Tm(a1);
    sub_248A0D998(v12, v17);
  }

  return result;
}

uint64_t sub_248A0D998(uint64_t a1, uint64_t a2)
{
  v4 = sub_248A11F40();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t GuestUserAccessPeerConnectionServiceMessage.Response.transportItem.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for GuestUserAccessPeerConnectionServiceMessage.Response(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_248A03D4C(v2, v6, type metadata accessor for GuestUserAccessPeerConnectionServiceMessage.Response);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v8 = sub_248A11F10();
  v9 = *(*(v8 - 8) + 104);
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v10 = MEMORY[0x277D05030];
    }

    else
    {
      v10 = MEMORY[0x277D04FB8];
    }

    goto LABEL_7;
  }

  if (EnumCaseMultiPayload == 2)
  {
    v10 = MEMORY[0x277D05028];
LABEL_7:
    v9(a1, *v10, v8);
    return sub_2489A43BC(v6, type metadata accessor for GuestUserAccessPeerConnectionServiceMessage.Response);
  }

  return (v9)(a1, *MEMORY[0x277D05038], v8);
}

unint64_t GuestUserAccessPeerConnectionServiceMessage.Request.description.getter()
{
  v1 = sub_248A11E40();
  v26 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v3 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_248A12010();
  v25 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_248A11FF0();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for GuestUserAccessPeerConnectionServiceMessage.Request(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_248A03D4C(v0, v13, type metadata accessor for GuestUserAccessPeerConnectionServiceMessage.Request);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    v16 = v8;
    v17 = v4;
    v18 = v25;
    v19 = v26;
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v20 = v17;
        (*(v25 + 32))(v6, v13, v17);
        v27 = 0;
        v28 = 0xE000000000000000;
        sub_248A13100();

        v27 = 0xD00000000000001BLL;
        v28 = 0x8000000248A1B730;
        sub_248A0F148(&qword_27EEB5860, MEMORY[0x277D050C8], MEMORY[0x277D050D0]);
        v21 = sub_248A132F0();
        MEMORY[0x24C1DF8B0](v21);

        v15 = v27;
        (*(v18 + 8))(v6, v20);
      }

      else
      {
        (*(v26 + 32))(v3, v13, v1);
        v27 = 0;
        v28 = 0xE000000000000000;
        sub_248A13100();
        MEMORY[0x24C1DF8B0](0xD000000000000011, 0x8000000248A1B6B0);
        sub_248A131F0();
        MEMORY[0x24C1DF8B0](41, 0xE100000000000000);
        v15 = v27;
        (*(v19 + 8))(v3, v1);
      }
    }

    else
    {
      v22 = v16;
      (*(v16 + 32))(v10, v13, v7);
      v27 = 0;
      v28 = 0xE000000000000000;
      sub_248A13100();

      v27 = 0xD000000000000017;
      v28 = 0x8000000248A1B750;
      sub_248A0F148(&qword_27EEB5868, MEMORY[0x277D050B0], MEMORY[0x277D050B8]);
      v23 = sub_248A132F0();
      MEMORY[0x24C1DF8B0](v23);

      v15 = v27;
      (*(v22 + 8))(v10, v7);
    }
  }

  else if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload == 5)
    {
      return 0xD000000000000011;
    }

    else
    {
      return 0xD000000000000010;
    }
  }

  else if (EnumCaseMultiPayload == 3)
  {
    return 0xD00000000000001CLL;
  }

  else
  {
    return 0x6E5565746F6D6572;
  }

  return v15;
}

uint64_t GuestUserAccessPeerConnectionServiceMessage.Request.transportItem.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for GuestUserAccessPeerConnectionServiceMessage.Request(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_248A03D4C(v2, v6, type metadata accessor for GuestUserAccessPeerConnectionServiceMessage.Request);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v8 = sub_248A11F10();
  v9 = *(*(v8 - 8) + 104);
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v11 = MEMORY[0x277D04FC8];
      }

      else
      {
        v11 = MEMORY[0x277D05058];
      }
    }

    else
    {
      v11 = MEMORY[0x277D04FB0];
    }

    v9(a1, *v11, v8);
    return sub_2489A43BC(v6, type metadata accessor for GuestUserAccessPeerConnectionServiceMessage.Request);
  }

  else
  {
    if (EnumCaseMultiPayload > 4)
    {
      if (EnumCaseMultiPayload == 5)
      {
        v10 = MEMORY[0x277D05018];
      }

      else
      {
        v10 = MEMORY[0x277D05010];
      }
    }

    else if (EnumCaseMultiPayload == 3)
    {
      v10 = MEMORY[0x277D04FC0];
    }

    else
    {
      v10 = MEMORY[0x277D04FD0];
    }

    return (v9)(a1, *v10, v8);
  }
}

uint64_t GuestUserAccessPeerConnectionServiceMessage.Request.transportPayload.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v31 = a1;
  v3 = sub_248A11E40();
  v30 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_248A12010();
  v29 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_248A11FF0();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for GuestUserAccessPeerConnectionServiceMessage.Request(0);
  MEMORY[0x28223BE20](v13);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_248A03D4C(v2, v15, type metadata accessor for GuestUserAccessPeerConnectionServiceMessage.Request);
  result = swift_getEnumCaseMultiPayload();
  if (result <= 2)
  {
    if (result)
    {
      if (result == 1)
      {
        v17 = *(v29 + 32);
        v17(v8, v15, v6);
        v18 = v31;
        v31[3] = v6;
        v18[4] = sub_248A0F148(&qword_27EEB6200, MEMORY[0x277D050C8], MEMORY[0x277D050C0]);
        boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v18);
        return (v17)(boxed_opaque_existential_1Tm, v8, v6);
      }

      else
      {
        v24 = *(v30 + 32);
        v25 = v5;
        v24(v5, v15, v3);
        v26 = v31;
        v31[3] = v3;
        v26[4] = sub_248A0F148(&qword_28150F610, MEMORY[0x277D04F78], MEMORY[0x277D04F70]);
        v27 = __swift_allocate_boxed_opaque_existential_1Tm(v26);
        return (v24)(v27, v25, v3);
      }
    }

    else
    {
      v21 = *(v10 + 32);
      v21(v12, v15, v9);
      v22 = v31;
      v31[3] = v9;
      v22[4] = sub_248A0F148(&qword_27EEB61F8, MEMORY[0x277D050B0], MEMORY[0x277D050A8]);
      v23 = __swift_allocate_boxed_opaque_existential_1Tm(v22);
      return (v21)(v23, v12, v9);
    }
  }

  else
  {
    v20 = v31;
    v31[4] = 0;
    *v20 = 0u;
    *(v20 + 1) = 0u;
  }

  return result;
}

unint64_t GuestUserAccessPeerConnectionServiceMessage.Response.description.getter()
{
  v1 = sub_248A11E60();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_248A11D50();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_248A11F40();
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for GuestUserAccessPeerConnectionServiceMessage.Response(0);
  MEMORY[0x28223BE20](v12);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_248A03D4C(v0, v14, type metadata accessor for GuestUserAccessPeerConnectionServiceMessage.Response);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      (*(v2 + 32))(v4, v14, v1);
      v20 = 0;
      v21 = 0xE000000000000000;
      MEMORY[0x24C1DF8B0](0x28726F727265, 0xE600000000000000);
      sub_248A131F0();
      MEMORY[0x24C1DF8B0](41, 0xE100000000000000);
      v17 = v20;
      (*(v2 + 8))(v4, v1);
    }

    else
    {
      return 0xD000000000000012;
    }
  }

  else if (EnumCaseMultiPayload)
  {
    (*(v6 + 32))(v8, v14, v5);
    v20 = 0;
    v21 = 0xE000000000000000;
    sub_248A13100();

    v20 = 0xD000000000000013;
    v21 = 0x8000000248A1B790;
    sub_248A0F148(&qword_27EEB5888, MEMORY[0x277D04F38], MEMORY[0x277D04F40]);
    v18 = sub_248A132F0();
    MEMORY[0x24C1DF8B0](v18);

    MEMORY[0x24C1DF8B0](41, 0xE100000000000000);
    v17 = v20;
    (*(v6 + 8))(v8, v5);
  }

  else
  {
    sub_248A0D998(v14, v11);
    v20 = 0;
    v21 = 0xE000000000000000;
    sub_248A13100();

    v20 = 0xD000000000000018;
    v21 = 0x8000000248A1B7B0;
    v16 = sub_248A11F20();
    MEMORY[0x24C1DF8B0](v16);

    MEMORY[0x24C1DF8B0](41, 0xE100000000000000);
    v17 = v20;
    sub_2489A43BC(v11, MEMORY[0x277D05078]);
  }

  return v17;
}

unint64_t GuestUserAccessPeerConnectionServiceMessage.PeerConnectionStatusUpdate.description.getter()
{
  if (*v0)
  {
    return 0xD000000000000015;
  }

  else
  {
    return 0xD00000000000001ALL;
  }
}

uint64_t GuestUserAccessPeerConnectionServiceMessage.PeerConnectionStatusUpdate.hashValue.getter()
{
  v1 = *v0;
  sub_248A13430();
  MEMORY[0x24C1E0100](v1);
  return sub_248A13460();
}

unint64_t sub_248A0EB30()
{
  if (*v0)
  {
    return 0xD000000000000015;
  }

  else
  {
    return 0xD00000000000001ALL;
  }
}

uint64_t _s13DeviceSharing43GuestUserAccessPeerConnectionServiceMessageO7RequestO2eeoiySbAE_AEtFZ_0(uint64_t a1, char *a2)
{
  v48 = a1;
  v49 = a2;
  v2 = sub_248A11E40();
  v46 = *(v2 - 8);
  v47 = v2;
  MEMORY[0x28223BE20](v2);
  v42 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_248A12010();
  v5 = *(v4 - 8);
  v43 = v4;
  v44 = v5;
  MEMORY[0x28223BE20](v4);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_248A11FF0();
  v45 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for GuestUserAccessPeerConnectionServiceMessage.Request(0);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v42 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v42 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB62D0, &qword_248A187B0);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v23 = &v42 - v22;
  v24 = *(v21 + 56);
  sub_248A03D4C(v48, &v42 - v22, type metadata accessor for GuestUserAccessPeerConnectionServiceMessage.Request);
  sub_248A03D4C(v49, &v23[v24], type metadata accessor for GuestUserAccessPeerConnectionServiceMessage.Request);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    v26 = v14;
    v27 = v45;
    v28 = v46;
    v49 = v7;
    v29 = v47;
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        sub_248A03D4C(v23, v17, type metadata accessor for GuestUserAccessPeerConnectionServiceMessage.Request);
        if (swift_getEnumCaseMultiPayload() != 1)
        {
          (*(v44 + 8))(v17, v43);
          goto LABEL_23;
        }

        v31 = v43;
        v30 = v44;
        v32 = &v23[v24];
        v33 = v49;
        (*(v44 + 32))(v49, v32, v43);
        v34 = sub_248A12000();
        v35 = *(v30 + 8);
        v35(v33, v31);
        v35(v17, v31);
      }

      else
      {
        v36 = v26;
        sub_248A03D4C(v23, v26, type metadata accessor for GuestUserAccessPeerConnectionServiceMessage.Request);
        if (swift_getEnumCaseMultiPayload() != 2)
        {
          (*(v28 + 8))(v36, v29);
          goto LABEL_23;
        }

        v37 = &v23[v24];
        v38 = v42;
        (*(v28 + 32))(v42, v37, v29);
        v34 = MEMORY[0x24C1DEAF0](v36, v38);
        v39 = *(v28 + 8);
        v39(v38, v29);
        v39(v36, v29);
      }
    }

    else
    {
      sub_248A03D4C(v23, v19, type metadata accessor for GuestUserAccessPeerConnectionServiceMessage.Request);
      if (swift_getEnumCaseMultiPayload())
      {
        (*(v27 + 8))(v19, v8);
        goto LABEL_23;
      }

      (*(v27 + 32))(v10, &v23[v24], v8);
      v34 = sub_248A11FE0();
      v40 = *(v27 + 8);
      v40(v10, v8);
      v40(v19, v8);
    }

    sub_2489A43BC(v23, type metadata accessor for GuestUserAccessPeerConnectionServiceMessage.Request);
    return v34 & 1;
  }

  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload == 5)
    {
      if (swift_getEnumCaseMultiPayload() != 5)
      {
        goto LABEL_23;
      }

      goto LABEL_20;
    }

    if (swift_getEnumCaseMultiPayload() == 6)
    {
      goto LABEL_20;
    }

LABEL_23:
    sub_248983734(v23, &qword_27EEB62D0, &qword_248A187B0);
    v34 = 0;
    return v34 & 1;
  }

  if (EnumCaseMultiPayload == 3)
  {
    if (swift_getEnumCaseMultiPayload() != 3)
    {
      goto LABEL_23;
    }
  }

  else if (swift_getEnumCaseMultiPayload() != 4)
  {
    goto LABEL_23;
  }

LABEL_20:
  sub_2489A43BC(v23, type metadata accessor for GuestUserAccessPeerConnectionServiceMessage.Request);
  v34 = 1;
  return v34 & 1;
}

uint64_t sub_248A0F148(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t _s13DeviceSharing43GuestUserAccessPeerConnectionServiceMessageO8ResponseO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v42 = a2;
  v3 = sub_248A11E60();
  v40 = *(v3 - 8);
  v41 = v3;
  MEMORY[0x28223BE20](v3);
  v37 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_248A11D50();
  v38 = *(v5 - 8);
  v39 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_248A11F40();
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for GuestUserAccessPeerConnectionServiceMessage.Response(0);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v37 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB62C8, &qword_248A187A8);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v23 = &v37 - v22;
  v24 = *(v21 + 56);
  sub_248A03D4C(a1, &v37 - v22, type metadata accessor for GuestUserAccessPeerConnectionServiceMessage.Response);
  sub_248A03D4C(v42, &v23[v24], type metadata accessor for GuestUserAccessPeerConnectionServiceMessage.Response);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      sub_248A03D4C(v23, v17, type metadata accessor for GuestUserAccessPeerConnectionServiceMessage.Response);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        (*(v38 + 8))(v17, v39);
        goto LABEL_14;
      }

      v33 = v38;
      v32 = v39;
      (*(v38 + 32))(v7, &v23[v24], v39);
      v30 = sub_248A11D40();
      v34 = *(v33 + 8);
      v34(v7, v32);
      v34(v17, v32);
    }

    else
    {
      sub_248A03D4C(v23, v19, type metadata accessor for GuestUserAccessPeerConnectionServiceMessage.Response);
      if (swift_getEnumCaseMultiPayload())
      {
        sub_2489A43BC(v19, MEMORY[0x277D05078]);
LABEL_14:
        sub_248983734(v23, &qword_27EEB62C8, &qword_248A187A8);
        v30 = 0;
        return v30 & 1;
      }

      sub_248A0D998(&v23[v24], v10);
      v30 = MEMORY[0x24C1DEBF0](v19, v10);
      v35 = MEMORY[0x277D05078];
      sub_2489A43BC(v10, MEMORY[0x277D05078]);
      sub_2489A43BC(v19, v35);
    }

LABEL_16:
    sub_2489A43BC(v23, type metadata accessor for GuestUserAccessPeerConnectionServiceMessage.Response);
    return v30 & 1;
  }

  if (EnumCaseMultiPayload == 2)
  {
    sub_248A03D4C(v23, v14, type metadata accessor for GuestUserAccessPeerConnectionServiceMessage.Response);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      (*(v40 + 8))(v14, v41);
      goto LABEL_14;
    }

    v26 = v40;
    v27 = &v23[v24];
    v28 = v37;
    v29 = v41;
    (*(v40 + 32))(v37, v27, v41);
    v30 = sub_248A11E50();
    v31 = *(v26 + 8);
    v31(v28, v29);
    v31(v14, v29);
    goto LABEL_16;
  }

  if (swift_getEnumCaseMultiPayload() != 3)
  {
    goto LABEL_14;
  }

  sub_2489A43BC(v23, type metadata accessor for GuestUserAccessPeerConnectionServiceMessage.Response);
  v30 = 1;
  return v30 & 1;
}

unint64_t sub_248A0F6B0()
{
  result = qword_27EEB62A0;
  if (!qword_27EEB62A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEB62A0);
  }

  return result;
}

uint64_t sub_248A0F794(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(uint64_t), uint64_t (*a6)(uint64_t))
{
  result = a4(319, a2, a3);
  if (v9 <= 0x3F)
  {
    result = a5(319);
    if (v10 <= 0x3F)
    {
      result = a6(319);
      if (v11 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

id sub_248A0F854(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  if (v3)
  {
    sub_2489CF8E4();
    v4 = sub_248A12A80();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t sub_248A0F8E0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB62D8, &qword_248A187D0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = aBlock - v3;
  v5 = sub_248A11B70();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = aBlock - v10;
  if (qword_27EEB51B0 != -1)
  {
    swift_once();
  }

  v12 = sub_248A122D0();
  __swift_project_value_buffer(v12, qword_27EEB9DF8);
  sub_2489BDB14(0xD000000000000074, 0x8000000248A1B7D0, 0xD00000000000001BLL, 0x8000000248A1B850);
  sub_248A11B60();
  v13 = OBJC_IVAR____TtC13DeviceSharing24EnrollmentAssetTelemetry_requestTime;
  swift_beginAccess();
  sub_248A11090(v1 + v13, v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_248A11100(v4);
    v14 = sub_248A122B0();
    v15 = sub_248A12E60();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_248975000, v14, v15, "Request time was not set.", v16, 2u);
      MEMORY[0x24C1E0A80](v16, -1, -1);
    }
  }

  else
  {
    (*(v6 + 32))(v9, v4, v5);
    sub_248A11B20();
    v18 = v17;
    v19 = sub_248A122B0();
    v20 = sub_248A12E80();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 134217984;
      *(v21 + 4) = v18;
      _os_log_impl(&dword_248975000, v19, v20, "assetTransferDuration (seconds): %f", v21, 0xCu);
      MEMORY[0x24C1E0A80](v21, -1, -1);
    }

    (*(v6 + 8))(v9, v5);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB62E0, &qword_248A187D8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_248A14AE0;
  *(inited + 32) = 0x73734164696C6176;
  *(inited + 40) = 0xEF73657079547465;
  sub_248A12470();
  *(inited + 48) = sub_248A12E20();
  *(inited + 56) = 0xD000000000000015;
  *(inited + 64) = 0x8000000248A1B870;
  *(inited + 72) = sub_248A12DB0();
  v23 = sub_248991D00(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB62E8, &qword_248A187E0);
  swift_arrayDestroy();
  v24 = sub_248A12B30();
  v25 = swift_allocObject();
  *(v25 + 16) = v23;
  aBlock[4] = sub_248A11168;
  aBlock[5] = v25;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_248A0F854;
  aBlock[3] = &block_descriptor_9;
  v26 = _Block_copy(aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v26);

  return (*(v6 + 8))(v11, v5);
}

uint64_t sub_248A0FDCC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB62D8, &qword_248A187D0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v9 - v3;
  if (qword_27EEB51B0 != -1)
  {
    swift_once();
  }

  v5 = sub_248A122D0();
  __swift_project_value_buffer(v5, qword_27EEB9DF8);
  sub_2489BDB14(0xD000000000000074, 0x8000000248A1B7D0, 0xD000000000000010, 0x8000000248A1B8E0);
  sub_248A11B60();
  v6 = sub_248A11B70();
  (*(*(v6 - 8) + 56))(v4, 0, 1, v6);
  v7 = OBJC_IVAR____TtC13DeviceSharing24EnrollmentAssetTelemetry_requestTime;
  swift_beginAccess();
  sub_248A11188(v4, v1 + v7);
  return swift_endAccess();
}

uint64_t EnrollmentAssetTelemetry.__deallocating_deinit()
{
  sub_248A11100(v0 + OBJC_IVAR____TtC13DeviceSharing24EnrollmentAssetTelemetry_requestTime);

  return swift_deallocClassInstance();
}

uint64_t sub_248A0FFD0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB62D8, &qword_248A187D0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9 - v2;
  v4 = *v0;
  if (qword_27EEB51B0 != -1)
  {
    swift_once();
  }

  v5 = sub_248A122D0();
  __swift_project_value_buffer(v5, qword_27EEB9DF8);
  sub_2489BDB14(0xD000000000000074, 0x8000000248A1B7D0, 0xD000000000000010, 0x8000000248A1B8E0);
  sub_248A11B60();
  v6 = sub_248A11B70();
  (*(*(v6 - 8) + 56))(v3, 0, 1, v6);
  v7 = OBJC_IVAR____TtC13DeviceSharing24EnrollmentAssetTelemetry_requestTime;
  swift_beginAccess();
  sub_248A11188(v3, v4 + v7);
  return swift_endAccess();
}

unint64_t sub_248A1016C@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return MEMORY[0x277D84F90];
    }

    v7 = sub_248A12C40();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = sub_2489C9EA4(0, 1, 1, MEMORY[0x277D84F90]);
    v9 = *(v14 + 16);
    a7 = *(v14 + 24);
LABEL_39:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_40:
      *(v14 + 16) = v10;
      v36 = (v14 + 32 * v9);
      v36[4] = v7;
      v36[5] = v11;
      v36[6] = v12;
      v36[7] = v13;
      return v14;
    }

LABEL_43:
    v14 = sub_2489C9EA4((a7 > 1), v10, 1, v14);
    goto LABEL_40;
  }

  v7 = a4;
  v17 = 4 * v16;
  v14 = MEMORY[0x277D84F90];
  v18 = 15;
  while (1)
  {
    v13 = v18 >> 14;
    if (v18 >> 14 == v17)
    {
      goto LABEL_33;
    }

    v41 = v14;
    v39 = a1;
    while (2)
    {
      v42 = v18;
      v14 = v18;
      while (1)
      {
        v19 = sub_248A12C30();
        v12 = v20;
        v44[0] = v19;
        v44[1] = v20;
        v21 = v45(v44);
        if (v8)
        {

          return v14;
        }

        v22 = v21;

        if (v22)
        {
          break;
        }

        v14 = sub_248A12BD0();
        v13 = v14 >> 14;
        if (v14 >> 14 == v17)
        {
          v14 = v41;
          v18 = v42;
          goto LABEL_33;
        }
      }

      result = v42;
      if (v42 >> 14 == v13 && (a2 & 1) != 0)
      {
        v18 = sub_248A12BD0();
        v13 = v18 >> 14;
        if (v18 >> 14 != v17)
        {
          continue;
        }

        v14 = v41;
LABEL_33:
        if (v18 >> 14 == v17 && (a2 & 1) != 0)
        {

          return v14;
        }

        if (v17 < v18 >> 14)
        {
          __break(1u);
        }

        else
        {
          v7 = sub_248A12C40();
          v11 = v33;
          v12 = v34;
          v13 = v35;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_38:
            v9 = *(v14 + 16);
            a7 = *(v14 + 24);
            goto LABEL_39;
          }
        }

        v14 = sub_2489C9EA4(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = sub_248A12C40();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_2489C9EA4(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = sub_2489C9EA4((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = sub_248A12BD0();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_248A1052C(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    v6 = HIBYTE(a6) & 0xF;
  }

  else
  {
    v6 = a5 & 0xFFFFFFFFFFFFLL;
  }

  if (a3 == a5 && a4 == a6 && !(a1 >> 16) && a2 >> 16 == v6)
  {
    return 1;
  }

  else
  {
    return sub_248A132E0() & 1;
  }
}

uint64_t sub_248A105A4(uint64_t a1, unint64_t a2)
{
  if (qword_27EEB51B0 != -1)
  {
    swift_once();
  }

  v4 = sub_248A122D0();
  __swift_project_value_buffer(v4, qword_27EEB9DF8);

  v5 = sub_248A122B0();
  v6 = sub_248A12E80();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v27 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_24897BC00(a1, a2, &v27);
    _os_log_impl(&dword_248975000, v5, v6, "asset size: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x24C1E0A80](v8, -1, -1);
    MEMORY[0x24C1E0A80](v7, -1, -1);
  }

  v27 = a1;
  v28 = a2;
  v26[6] = 32;
  v26[7] = 0xE100000000000000;
  sub_2489835B8();
  v9 = sub_248A12F50();
  if ((v9 & 1) == 0)
  {
    v18 = sub_248A122B0();
    v19 = sub_248A12E60();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      v21 = "Unexpected size string. Expected format example: 100.2 KB";
      goto LABEL_14;
    }

LABEL_16:
    v22 = 0;
    goto LABEL_17;
  }

  v27 = 32;
  v28 = 0xE100000000000000;
  MEMORY[0x28223BE20](v9);
  v26[2] = &v27;

  v11 = sub_248A1016C(0x7FFFFFFFFFFFFFFFLL, 1, sub_2489DF090, v26, a1, a2, v10);
  if (v11[2] != 2)
  {

    v18 = sub_248A122B0();
    v19 = sub_248A12E60();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      v21 = "Unexpected size string. Expected format: 100.2 KB";
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v12 = v11[8];
  v13 = v11[9];
  v15 = v11[10];
  v14 = v11[11];

  *&result = COERCE_DOUBLE(sub_248A12DC0());
  if (v17)
  {

    v18 = sub_248A122B0();
    v19 = sub_248A12E60();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      v21 = "Could not interpret string as a double.";
LABEL_14:
      _os_log_impl(&dword_248975000, v18, v19, v21, v20, 2u);
      v22 = 0;
LABEL_15:
      MEMORY[0x24C1E0A80](v20, -1, -1);
LABEL_17:

      return v22;
    }

    goto LABEL_16;
  }

  if ((~result & 0x7FF0000000000000) == 0)
  {
    __break(1u);
    goto LABEL_26;
  }

  if (*&result <= -9.22337204e18)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (*&result >= 9.22337204e18)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v22 = *&result;
  v23 = sub_248A1052C(v12, v13, v15, v14, 16973, 0xE200000000000000);
  *&result = COERCE_DOUBLE();
  if ((v23 & 1) == 0 || (v24 = (v22 * 1000) >> 64, v22 *= 1000, v24 == v22 >> 63))
  {
    v18 = sub_248A122B0();
    v25 = sub_248A12E80();
    if (!os_log_type_enabled(v18, v25))
    {
      goto LABEL_17;
    }

    v20 = swift_slowAlloc();
    *v20 = 134217984;
    *(v20 + 4) = v22;
    _os_log_impl(&dword_248975000, v18, v25, "asset size (KB): %ld", v20, 0xCu);
    goto LABEL_15;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_248A10A10(uint64_t a1, uint64_t a2)
{
  v31 = sub_248A12300();
  v30 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v4 = v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_248A12480();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v26 - v10;
  v35 = sub_248A12230();
  v34 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v13 = v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27EEB51B0 != -1)
  {
    swift_once();
  }

  v14 = sub_248A122D0();
  __swift_project_value_buffer(v14, qword_27EEB9DF8);
  sub_2489BDB14(0xD000000000000074, 0x8000000248A1B7D0, 0xD000000000000036, 0x8000000248A1B940);
  sub_248A12220();
  v33 = sub_248A12210();
  v28 = v33 != 0;
  v15 = sub_248A123C0();
  v32 = v13;
  v29 = sub_248A105A4(v15, v16);

  sub_248A123E0();
  sub_248A12AD0();

  sub_248A12310();
  sub_2489CF9A8();
  v17 = sub_248A12B00();
  v27 = a2;
  v26[3] = v17;
  v18 = *(v6 + 8);
  v18(v9, v5);
  v18(v11, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB62E0, &qword_248A187D8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_248A187C0;
  *(inited + 32) = 0xD000000000000013;
  *(inited + 40) = 0x8000000248A1B980;
  sub_248A12310();
  sub_248A12470();
  v18(v11, v5);
  *(inited + 48) = sub_248A12E20();
  strcpy((inited + 56), "requestContext");
  *(inited + 71) = -18;
  sub_248A122E0();
  sub_248A122F0();
  (*(v30 + 8))(v4, v31);
  v20 = sub_248A12B30();

  *(inited + 72) = v20;
  strcpy((inited + 80), "accountStatus");
  *(inited + 94) = -4864;
  *(inited + 96) = sub_248A12CC0();
  *(inited + 104) = 0xD000000000000014;
  *(inited + 112) = 0x8000000248A1B9A0;
  *(inited + 120) = sub_248A12CC0();
  *(inited + 128) = 0xD000000000000012;
  *(inited + 136) = 0x8000000248A1B9C0;
  sub_248A123E0();
  sub_248A12AD0();

  sub_248A12470();
  v18(v9, v5);
  *(inited + 144) = sub_248A12E20();
  *(inited + 152) = 0x7A69537465737361;
  *(inited + 160) = 0xE900000000000065;
  *(inited + 168) = sub_248A12E20();
  v21 = sub_248991D00(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB62E8, &qword_248A187E0);
  swift_arrayDestroy();
  v22 = sub_248A12B30();
  v23 = swift_allocObject();
  *(v23 + 16) = v21;
  aBlock[4] = sub_248A1141C;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_248A0F854;
  aBlock[3] = &block_descriptor_11;
  v24 = _Block_copy(aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v24);

  return (*(v34 + 8))(v32, v35);
}

uint64_t sub_248A11090(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB62D8, &qword_248A187D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_248A11100(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB62D8, &qword_248A187D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_248A11188(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB62D8, &qword_248A187D0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for EnrollmentAssetTelemetry(uint64_t a1)
{
  result = qword_27EEB62F0;
  if (!qword_27EEB62F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_248A11288(uint64_t a1)
{
  sub_248A113C0(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_248A113C0(uint64_t a1)
{
  if (!qword_27EEB6300)
  {
    sub_248A11B70();
    v1 = sub_248A12F20();
    if (!v2)
    {
      atomic_store(v1, &qword_27EEB6300);
    }
  }
}

uint64_t sub_248A11424(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_248A13030();
LABEL_9:
  result = sub_248A13130();
  *v2 = result;
  return result;
}

uint64_t sub_248A114C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_21;
  }

  v8 = a4;
  v4 = a3;
  v7 = a2;
  v12 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v9 = v5 + 4;
  v6 = &v5[a1 + 4];
  sub_248A12890();
  result = swift_arrayDestroy();
  v14 = __OFSUB__(v4, v11);
  v11 = v4 - v11;
  if (v14)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v11)
  {
    v10 = v12 >> 62;
    if (!(v12 >> 62))
    {
      result = v5[2];
      v15 = result - v7;
      if (!__OFSUB__(result, v7))
      {
        goto LABEL_6;
      }

      goto LABEL_24;
    }

LABEL_22:
    result = sub_248A13030();
    v15 = result - v7;
    if (!__OFSUB__(result, v7))
    {
LABEL_6:
      v16 = &v6[v4];
      v17 = &v9[v7];
      if (v16 != v17 || v16 >= &v17[8 * v15])
      {
        memmove(v16, v17, 8 * v15);
      }

      if (v10)
      {
        result = sub_248A13030();
      }

      else
      {
        result = v5[2];
      }

      if (!__OFADD__(result, v11))
      {
        v5[2] = result + v11;
        goto LABEL_17;
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return result;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_17:
  if (v4 > 0)
  {
    *v6 = v8;

    if (v4 != 1)
    {
      goto LABEL_26;
    }
  }

  return result;
}

uint64_t sub_248A115E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = a3;
    v6 = a2;
    v7 = a1;
    v8 = *v5;
    v9 = *v5 >> 62;
    if (!v9)
    {
      result = *((*v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_248A13030();
  if (result < v6)
  {
    goto LABEL_15;
  }

LABEL_4:
  v11 = v6 - v7;
  if (__OFSUB__(v6, v7))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v12 = 1 - v11;
  if (__OFSUB__(1, v11))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v9)
  {
    v13 = sub_248A13030();
  }

  else
  {
    v13 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v14 = __OFADD__(v13, v12);
  result = v13 + v12;
  if (v14)
  {
    goto LABEL_18;
  }

  sub_248A11424(result, 1);

  return sub_248A114C4(v7, v6, 1, v4);
}

uint64_t sub_248A116D0()
{
  v13 = sub_248A12610();
  v0 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v2 = &v12 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_248A12600();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_248A127B0();
  v7 = sub_248A12760();
  sub_248A12770();
  if (qword_27EEB5180 != -1)
  {
    swift_once();
  }

  sub_248A12840();
  swift_allocObject();

  v8 = sub_248A12830();
  v9 = sub_248A12750();
  if (*v10 >> 62 && sub_248A13030() < 0)
  {
    __break(1u);
    return sub_248A11960();
  }

  else
  {
    sub_248A115E4(0, 0, v8);

    v9(v14, 0);

    sub_248A12730();
    (*(v4 + 104))(v6, *MEMORY[0x277CD8CA8], v3);
    sub_248A12780();
    (*(v0 + 104))(v2, *MEMORY[0x277CD8CE8], v13);
    sub_248A12790();
    return v7;
  }
}