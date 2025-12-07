BOOL sub_2489771C4(void *a1, uint64_t *a2)
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

void *sub_248977234@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_248977254@<X0>(uint64_t *a1@<X8>)
{
  result = sub_248A12B60();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_248977280()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2489772C0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_248977308()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_248977340()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_248977380()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2489773C0()
{
  swift_unknownObjectRelease();

  v1 = *(v0 + 56);
  if (v1 >> 60 != 15)
  {
    sub_24898C4FC(*(v0 + 48), v1);
  }

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_248977428()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_248977460()
{
  _Block_release(*(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2489774AC()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_248977500()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_24897754C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_248977584()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2489775C4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_248977604()
{
  v1 = *(type metadata accessor for GuestUserAccessPeerConnectionServiceMessage.Request(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  swift_unknownObjectRelease();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    v6 = sub_248A11E40();
  }

  else if (EnumCaseMultiPayload == 1)
  {
    v6 = sub_248A12010();
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      goto LABEL_8;
    }

    v6 = sub_248A11FF0();
  }

  (*(*(v6 - 8) + 8))(v0 + v3, v6);
LABEL_8:

  return MEMORY[0x2821FE8E8](v0, ((((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_24897773C()
{
  v1 = *(sub_248A11F40() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  swift_unknownObjectRelease();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_248A11F00();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
    v6 = sub_248A11E60();
    v7 = *(v6 - 8);
    if (!(*(v7 + 48))(v0 + v3, 1, v6))
    {
      (*(v7 + 8))(v0 + v3, v6);
    }
  }

  return MEMORY[0x2821FE8E8](v0, ((((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_2489778E4@<X0>(_BYTE *a2@<X8>)
{

  *a2 = 1;
  return result;
}

uint64_t sub_248977928()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

id sub_248977968@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___DSNotificationController_activeNotification;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_2489779D4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR___DSNotificationController_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_248977A30(uint64_t *a1, void *a2)
{
  v2 = a1[1];
  v3 = *a2 + OBJC_IVAR___DSNotificationController_delegate;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_248977A94()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_248977ACC()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_248977B18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_248A12540();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_248977BC4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_248A12540();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_248977C68(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = type metadata accessor for NearbyDeviceProviderState(0);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

void *sub_248977D20(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v7 = type metadata accessor for NearbyDeviceProviderState(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_248977DC4()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_248977DFC()
{

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_248977E3C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_248977E74()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_248977EB0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5C08, &qword_248A16978);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 4)
  {
    return v5 - 3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_248977F28(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 3);
  }

  else
  {
    v5 = 0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5C08, &qword_248A16978);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_248977FB8()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5A50, &unk_248A16450) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 56) & ~v2;
  v4 = *(v1 + 64);
  swift_unknownObjectRelease();

  v5 = type metadata accessor for NearbyDevice(0);
  if (!(*(*(v5 - 8) + 48))(v0 + v3, 1, v5))
  {

    v6 = *(v5 + 24);
    v7 = sub_248A12540();
    (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);
  }

  return MEMORY[0x2821FE8E8](v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_248978110()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_248978148()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_248978190()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2489781D8()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_248978210()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_248978258()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2489782AC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24897831C()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_24897836C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2489783B4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_248978414()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_248978450()
{
  _Block_release(*(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_24897849C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2489784D4()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_248978534()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24897856C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2489785A8()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 24));
  __swift_destroy_boxed_opaque_existential_0((v0 + 64));

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

uint64_t sub_248978608()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_248978640@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 24);
}

uint64_t sub_2489786B0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2489786E8()
{
  swift_unknownObjectRelease();

  v1 = *(v0 + 56);
  if (v1 >> 60 != 15)
  {
    sub_24898C4FC(*(v0 + 48), v1);
  }

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_248978750()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_248978788()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 41, 7);
}

uint64_t sub_2489787C8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_248A0CB38();
  *a1 = 0;
  return result;
}

uint64_t sub_2489787F8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_248978840(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 16) = v2;
  return result;
}

uint64_t sub_248978884()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2489788CC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24897890C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_248978948(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_2489789C8(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

Swift::Bool_optional __swiftcall EnrollmentAssetServer.getCloudDataExistsKVS()()
{
  v1 = v0;
  v2 = sub_248A121B0();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v26 - v7;
  v9 = v0[32];
  v10 = v0[33];
  __swift_project_boxed_opaque_existential_1(v0 + 29, v9);
  (*(v10 + 8))(v9, v10);
  if (qword_28150F5E0 != -1)
  {
    swift_once();
  }

  v11 = sub_248A122D0();
  __swift_project_value_buffer(v11, qword_2815105A8);
  (*(v3 + 16))(v6, v8, v2);
  v12 = sub_248A122B0();
  v13 = sub_248A12E80();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v29 = v27;
    *v14 = 136446210;
    v15 = sub_248A12160();
    v28 = v1;
    v16 = v2;
    v18 = v17;
    v19 = v6;
    v20 = *(v3 + 8);
    v20(v19, v16);
    v21 = sub_24897BC00(v15, v18, &v29);
    v2 = v16;

    *(v14 + 4) = v21;
    _os_log_impl(&dword_248975000, v12, v13, "Cloud data KVS state: %{public}s", v14, 0xCu);
    v22 = v27;
    __swift_destroy_boxed_opaque_existential_0(v27);
    MEMORY[0x24C1E0A80](v22, -1, -1);
    MEMORY[0x24C1E0A80](v14, -1, -1);
  }

  else
  {

    v23 = v6;
    v20 = *(v3 + 8);
    v20(v23, v2);
  }

  sub_248A12180();
  sub_248A12050();
  v24.value = sub_248A12170();
  v20(v8, v2);
  return v24;
}

uint64_t sub_248978CE4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_248978D74;

  return sub_2489F1598();
}

uint64_t sub_248978D74()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void sub_248978E68()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEB52D0, &qword_248A14980);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v17 - v3;
  if (qword_28150F5E0 != -1)
  {
    swift_once();
  }

  v5 = sub_248A122D0();
  __swift_project_value_buffer(v5, qword_2815105A8);
  sub_2489BDB14(0xD000000000000075, 0x8000000248A18980, 0xD000000000000027, 0x8000000248A18A60);
  v6 = v0[32];
  v7 = v0[33];
  __swift_project_boxed_opaque_existential_1(v0 + 29, v6);
  v8 = (*(v7 + 48))(v6, v7);
  if (v9)
  {
    v10 = v8;
    v11 = v9;
    v12 = sub_248A12D40();
    (*(*(v12 - 8) + 56))(v4, 1, 1, v12);
    v13 = swift_allocObject();
    v13[2] = 0;
    v13[3] = 0;
    v13[4] = v1;
    v13[5] = v10;
    v13[6] = v11;

    sub_2489E5FD4(0, 0, v4, &unk_248A149A0, v13);
  }

  else
  {
    v18 = sub_248A122B0();
    v14 = sub_248A12E80();
    if (os_log_type_enabled(v18, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_248975000, v18, v14, "deleteEventKVS is nil. No delete from iCloud event received, do not disable syncing.", v15, 2u);
      MEMORY[0x24C1E0A80](v15, -1, -1);
    }

    v16 = v18;
  }
}

Swift::Void __swiftcall EnrollmentAssetServer.registerForKVSNotification()()
{
  v1 = v0;
  if (qword_28150F5E0 != -1)
  {
    swift_once();
  }

  v2 = sub_248A122D0();
  __swift_project_value_buffer(v2, qword_2815105A8);
  sub_2489BDB14(0xD000000000000075, 0x8000000248A18980, 0xD00000000000001CLL, 0x8000000248A18A00);
  v3 = [objc_opt_self() defaultCenter];
  [v3 addObserver:v1 selector:sel_handleKVSUpdate_ name:*MEMORY[0x277CCA7C0] object:0];

  v4 = v1[32];
  v5 = v1[33];
  __swift_project_boxed_opaque_existential_1(v1 + 29, v4);
  (*(v5 + 56))(v4, v5);
}

uint64_t sub_248979258(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = sub_248A123B0();
  v6[5] = v7;
  v6[6] = *(v7 - 8);
  v6[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24897931C, 0, 0);
}

uint64_t sub_24897931C()
{
  v1 = *(v0 + 16);
  v2 = v1[6];
  v3 = v1[7];
  __swift_project_boxed_opaque_existential_1(v1 + 3, v2);
  v6 = (*(v3 + 40) + **(v3 + 40));
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  *v4 = v0;
  v4[1] = sub_248979444;

  return v6(v2, v3);
}

uint64_t sub_248979444(char a1)
{
  v4 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v5 = sub_248979DC8;
  }

  else
  {
    *(v4 + 112) = a1 & 1;
    v5 = sub_248979570;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_248979570()
{
  if (*(v0 + 112))
  {
    if (qword_28150F5E0 != -1)
    {
      swift_once();
    }

    v1 = sub_248A122D0();
    __swift_project_value_buffer(v1, qword_2815105A8);
    v2 = sub_248A122B0();
    v3 = sub_248A12E80();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_248975000, v2, v3, "CloudDataExists = true. This indicates that data has not been deleted from iCloud. Do not proceed with disabling syncing.", v4, 2u);
      MEMORY[0x24C1E0A80](v4, -1, -1);
    }

    v5 = sub_248A122B0();
    v6 = sub_248A12E80();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_248975000, v5, v6, "Found previous delete event string upon log in, but cloud data exists now. Setting user default on this device to match the delete UUID stored in KVS.", v7, 2u);
      MEMORY[0x24C1E0A80](v7, -1, -1);
    }

    sub_248A120B0();
LABEL_30:

    v24 = *(v0 + 8);

    return v24();
  }

  *(v0 + 80) = *(*(v0 + 16) + 328);
  v8 = sub_248A12080();
  if (v9)
  {
    if (v8 == *(v0 + 24) && v9 == *(v0 + 32))
    {
    }

    else
    {
      v11 = sub_248A13340();

      if ((v11 & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    if (qword_28150F5E0 != -1)
    {
      swift_once();
    }

    v20 = sub_248A122D0();
    __swift_project_value_buffer(v20, qword_2815105A8);
    v21 = sub_248A122B0();
    v22 = sub_248A12E80();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_248975000, v21, v22, "previousDeleteEvent == currentDeleteEvent. Not a new unique delete from iCLoud event. Do not proceed with disabling syncing.", v23, 2u);
      MEMORY[0x24C1E0A80](v23, -1, -1);
    }

    goto LABEL_30;
  }

LABEL_15:
  if (qword_28150F5E0 != -1)
  {
    swift_once();
  }

  v12 = sub_248A122D0();
  __swift_project_value_buffer(v12, qword_2815105A8);
  v13 = sub_248A122B0();
  v14 = sub_248A12E80();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_248975000, v13, v14, "New delete event occurred on a different device logged into this account. Disabling sync. Deleting local data (on iOS only)", v15, 2u);
    MEMORY[0x24C1E0A80](v15, -1, -1);
  }

  if (qword_28150F5D8 != -1)
  {
    swift_once();
  }

  v16 = *(v0 + 16);
  __swift_project_value_buffer(v12, qword_281510590);
  sub_2489BDB14(0xD000000000000071, 0x8000000248A18A90, 0xD00000000000001BLL, 0x8000000248A18B10);
  v17 = v16[27];
  v18 = v16[28];
  __swift_project_boxed_opaque_existential_1(v16 + 24, v17);
  v19 = swift_task_alloc();
  *(v0 + 88) = v19;
  *v19 = v0;
  v19[1] = sub_2489799E0;

  return MEMORY[0x28215AB98](0, v17, v18);
}

uint64_t sub_2489799E0()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_248979B2C, 0, 0);
  }
}

uint64_t sub_248979B2C()
{
  (*(v0[6] + 104))(v0[7], *MEMORY[0x277D04E98], v0[5]);
  v1 = swift_task_alloc();
  v0[12] = v1;
  *v1 = v0;
  v1[1] = sub_248979BE8;
  v2 = v0[7];

  return sub_2489EE214(v2);
}

uint64_t sub_248979BE8()
{
  v2 = *(*v1 + 56);
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 40);
  *(*v1 + 104) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_24897A374;
  }

  else
  {
    v5 = sub_248979D58;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_248979D58()
{
  sub_248A120B0();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_248979DC8()
{
  if (qword_28150F5E0 != -1)
  {
    swift_once();
  }

  v1 = v0[9];
  v2 = sub_248A122D0();
  __swift_project_value_buffer(v2, qword_2815105A8);
  v3 = v1;
  v4 = sub_248A122B0();
  v5 = sub_248A12E60();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[9];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_248975000, v4, v5, "ManagedAssets was unable to check for cloud zones. Error: %@", v7, 0xCu);
    sub_24897CA88(v8);
    MEMORY[0x24C1E0A80](v8, -1, -1);
    MEMORY[0x24C1E0A80](v7, -1, -1);
  }

  v11 = v0[9];

  v12.value = EnrollmentAssetServer.getCloudDataExistsKVS()().value;
  if (v12.value != 2 && v12.value)
  {
    if (qword_28150F5E0 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v2, qword_2815105A8);
    v13 = sub_248A122B0();
    v14 = sub_248A12E80();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_248975000, v13, v14, "CloudDataExists = true. This indicates that data has not been deleted from iCloud. Do not proceed with disabling syncing.", v15, 2u);
      MEMORY[0x24C1E0A80](v15, -1, -1);
    }

    v16 = sub_248A122B0();
    v17 = sub_248A12E80();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_248975000, v16, v17, "Found previous delete event string upon log in, but cloud data exists now. Setting user default on this device to match the delete UUID stored in KVS.", v18, 2u);
      MEMORY[0x24C1E0A80](v18, -1, -1);
    }

    sub_248A120B0();
LABEL_24:

    v25 = v0[1];

    return v25();
  }

  v0[10] = *(v0[2] + 328);
  v19 = sub_248A12080();
  if (v20)
  {
    if (v19 == v0[3] && v20 == v0[4])
    {

LABEL_19:
      if (qword_28150F5E0 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v2, qword_2815105A8);
      v22 = sub_248A122B0();
      v23 = sub_248A12E80();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 0;
        _os_log_impl(&dword_248975000, v22, v23, "previousDeleteEvent == currentDeleteEvent. Not a new unique delete from iCLoud event. Do not proceed with disabling syncing.", v24, 2u);
        MEMORY[0x24C1E0A80](v24, -1, -1);
      }

      goto LABEL_24;
    }

    v21 = sub_248A13340();

    if (v21)
    {
      goto LABEL_19;
    }
  }

  if (qword_28150F5E0 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v2, qword_2815105A8);
  v27 = sub_248A122B0();
  v28 = sub_248A12E80();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&dword_248975000, v27, v28, "New delete event occurred on a different device logged into this account. Disabling sync. Deleting local data (on iOS only)", v29, 2u);
    MEMORY[0x24C1E0A80](v29, -1, -1);
  }

  if (qword_28150F5D8 != -1)
  {
    swift_once();
  }

  v30 = v0[2];
  __swift_project_value_buffer(v2, qword_281510590);
  sub_2489BDB14(0xD000000000000071, 0x8000000248A18A90, 0xD00000000000001BLL, 0x8000000248A18B10);
  v31 = v30[27];
  v32 = v30[28];
  __swift_project_boxed_opaque_existential_1(v30 + 24, v31);
  v33 = swift_task_alloc();
  v0[11] = v33;
  *v33 = v0;
  v33[1] = sub_2489799E0;

  return MEMORY[0x28215AB98](0, v31, v32);
}

uint64_t sub_24897A374()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t EnrollmentAssetServer.setCloudDataExistsKVS(value:)(char a1)
{
  *(v2 + 24) = v1;
  *(v2 + 96) = a1;
  v3 = sub_248A121B0();
  *(v2 + 32) = v3;
  *(v2 + 40) = *(v3 - 8);
  *(v2 + 48) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24897A49C, 0, 0);
}

uint64_t sub_24897A49C()
{
  v1 = v0[3];
  v0[7] = *(v1 + 312);
  v2 = *(v1 + 320);
  v0[8] = v2;
  v0[9] = swift_getObjectType();
  v0[10] = *(v2 + 16);
  v0[11] = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0x5508000000000000;
  v4 = sub_248A12CD0();

  return MEMORY[0x2822009F8](sub_24897A53C, v4, v3);
}

uint64_t sub_24897A53C()
{
  (*(v0 + 80))(*(v0 + 72), *(v0 + 64));

  return MEMORY[0x2822009F8](sub_24897A5B0, 0, 0);
}

uint64_t sub_24897A5B0()
{
  v25 = v0;
  if ((*(v0 + 16) & 2) != 0)
  {
    if (qword_28150F5E0 != -1)
    {
      swift_once();
    }

    v17 = sub_248A122D0();
    __swift_project_value_buffer(v17, qword_2815105A8);
    v18 = sub_248A122B0();
    v19 = sub_248A12E80();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_248975000, v18, v19, "First unlock has not occured yet.", v20, 2u);
      MEMORY[0x24C1E0A80](v20, -1, -1);
    }

    v21 = sub_248A12350();
    sub_24897C55C(&qword_27EEB51C0, MEMORY[0x277D04E68], MEMORY[0x277D04E70]);
    swift_allocError();
    (*(*(v21 - 8) + 104))(v22, *MEMORY[0x277D04E50], v21);
    swift_willThrow();

    v16 = *(v0 + 8);
  }

  else
  {
    if (qword_28150F5E0 != -1)
    {
      swift_once();
    }

    v1 = sub_248A122D0();
    __swift_project_value_buffer(v1, qword_2815105A8);
    v2 = sub_248A122B0();
    v3 = sub_248A12E80();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = *(v0 + 96);
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v24 = v6;
      *v5 = 136446210;
      if (v4)
      {
        v7 = 1702195828;
      }

      else
      {
        v7 = 0x65736C6166;
      }

      if (v4)
      {
        v8 = 0xE400000000000000;
      }

      else
      {
        v8 = 0xE500000000000000;
      }

      v9 = sub_24897BC00(v7, v8, &v24);

      *(v5 + 4) = v9;
      _os_log_impl(&dword_248975000, v2, v3, "Setting cloud data KVS state: %{public}s", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v6);
      MEMORY[0x24C1E0A80](v6, -1, -1);
      MEMORY[0x24C1E0A80](v5, -1, -1);
    }

    v11 = *(v0 + 40);
    v10 = *(v0 + 48);
    v13 = *(v0 + 24);
    v12 = *(v0 + 32);
    v14 = v13[32];
    v15 = v13[33];
    __swift_project_boxed_opaque_existential_1(v13 + 29, v14);
    sub_248A121C0();
    (*(v15 + 16))(v10, v14, v15);
    (*(v11 + 8))(v10, v12);
    sub_248A12050();

    v16 = *(v0 + 8);
  }

  return v16();
}

uint64_t EnrollmentAssetServer.setAssociatedAVPKVS(value:)(char a1)
{
  *(v2 + 24) = v1;
  *(v2 + 96) = a1;
  v3 = sub_248A121B0();
  *(v2 + 32) = v3;
  *(v2 + 40) = *(v3 - 8);
  *(v2 + 48) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24897AA04, 0, 0);
}

uint64_t sub_24897AA04()
{
  v1 = v0[3];
  v0[7] = *(v1 + 312);
  v2 = *(v1 + 320);
  v0[8] = v2;
  v0[9] = swift_getObjectType();
  v0[10] = *(v2 + 16);
  v0[11] = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0x5508000000000000;
  v4 = sub_248A12CD0();

  return MEMORY[0x2822009F8](sub_24897AAA4, v4, v3);
}

uint64_t sub_24897AAA4()
{
  (*(v0 + 80))(*(v0 + 72), *(v0 + 64));

  return MEMORY[0x2822009F8](sub_24897AB18, 0, 0);
}

uint64_t sub_24897AB18()
{
  v25 = v0;
  if ((*(v0 + 16) & 2) != 0)
  {
    if (qword_28150F5E0 != -1)
    {
      swift_once();
    }

    v17 = sub_248A122D0();
    __swift_project_value_buffer(v17, qword_2815105A8);
    v18 = sub_248A122B0();
    v19 = sub_248A12E80();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_248975000, v18, v19, "First unlock has not occured yet.", v20, 2u);
      MEMORY[0x24C1E0A80](v20, -1, -1);
    }

    v21 = sub_248A12350();
    sub_24897C55C(&qword_27EEB51C0, MEMORY[0x277D04E68], MEMORY[0x277D04E70]);
    swift_allocError();
    (*(*(v21 - 8) + 104))(v22, *MEMORY[0x277D04E50], v21);
    swift_willThrow();

    v16 = *(v0 + 8);
  }

  else
  {
    if (qword_28150F5E0 != -1)
    {
      swift_once();
    }

    v1 = sub_248A122D0();
    __swift_project_value_buffer(v1, qword_2815105A8);
    v2 = sub_248A122B0();
    v3 = sub_248A12E80();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = *(v0 + 96);
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v24 = v6;
      *v5 = 136446210;
      if (v4)
      {
        v7 = 1702195828;
      }

      else
      {
        v7 = 0x65736C6166;
      }

      if (v4)
      {
        v8 = 0xE400000000000000;
      }

      else
      {
        v8 = 0xE500000000000000;
      }

      v9 = sub_24897BC00(v7, v8, &v24);

      *(v5 + 4) = v9;
      _os_log_impl(&dword_248975000, v2, v3, "Setting associated AVP KVS state: %{public}s", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v6);
      MEMORY[0x24C1E0A80](v6, -1, -1);
      MEMORY[0x24C1E0A80](v5, -1, -1);
    }

    v11 = *(v0 + 40);
    v10 = *(v0 + 48);
    v13 = *(v0 + 24);
    v12 = *(v0 + 32);
    v14 = v13[32];
    v15 = v13[33];
    __swift_project_boxed_opaque_existential_1(v13 + 29, v14);
    sub_248A121C0();
    (*(v15 + 32))(v10, v14, v15);
    (*(v11 + 8))(v10, v12);
    sub_248A12020();

    v16 = *(v0 + 8);
  }

  return v16();
}

Swift::Bool_optional __swiftcall EnrollmentAssetServer.getAssociatedAVPKVS()()
{
  v1 = v0;
  v2 = sub_248A121B0();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v36 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = &v36 - v10;
  v12 = v0[32];
  v13 = v0[33];
  __swift_project_boxed_opaque_existential_1(v0 + 29, v12);
  (*(v13 + 24))(v12, v13);
  if (qword_28150F5E0 != -1)
  {
    swift_once();
  }

  v14 = sub_248A122D0();
  v15 = __swift_project_value_buffer(v14, qword_2815105A8);
  v41 = *(v3 + 16);
  v41(v9, v11, v2);
  v42 = v15;
  v16 = sub_248A122B0();
  v17 = sub_248A12E80();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v40 = v1;
    v19 = v18;
    v37 = swift_slowAlloc();
    v38 = v6;
    v43 = v37;
    *v19 = 136446210;
    v20 = sub_248A12160();
    v39 = v11;
    v21 = v2;
    v22 = v3;
    v24 = v23;
    v25 = *(v22 + 8);
    v25(v9, v21);
    v26 = v25;
    v27 = sub_24897BC00(v20, v24, &v43);
    v2 = v21;
    v11 = v39;

    *(v19 + 4) = v27;
    _os_log_impl(&dword_248975000, v16, v17, "Associated AVP KVS state: %{public}s", v19, 0xCu);
    v28 = v37;
    __swift_destroy_boxed_opaque_existential_0(v37);
    v6 = v38;
    MEMORY[0x24C1E0A80](v28, -1, -1);
    MEMORY[0x24C1E0A80](v19, -1, -1);

    v29 = v26;
  }

  else
  {

    v29 = *(v3 + 8);
    v29(v9, v2);
  }

  v41(v6, v11, v2);
  v30 = sub_248A122B0();
  v31 = sub_248A12E80();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 67240192;
    v33 = sub_248A12180() & 1;
    v29(v6, v2);
    *(v32 + 4) = v33;
    _os_log_impl(&dword_248975000, v30, v31, "Setting associated AVP user default to: %{BOOL,public}d.", v32, 8u);
    MEMORY[0x24C1E0A80](v32, -1, -1);
  }

  else
  {
    v29(v6, v2);
  }

  sub_248A12180();
  sub_248A12020();
  v34.value = sub_248A12170();
  v29(v11, v2);
  return v34;
}

uint64_t sub_24897B2C8()
{
  v1 = v0[3];
  v0[4] = *(v1 + 312);
  v2 = *(v1 + 320);
  v0[5] = v2;
  v0[6] = swift_getObjectType();
  v0[7] = *(v2 + 16);
  v0[8] = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0x5508000000000000;
  v4 = sub_248A12CD0();

  return MEMORY[0x2822009F8](sub_24897B368, v4, v3);
}

uint64_t sub_24897B368()
{
  (*(v0 + 56))(*(v0 + 48), *(v0 + 40));

  return MEMORY[0x2822009F8](sub_24897B3DC, 0, 0);
}

uint64_t sub_24897B3DC()
{
  if ((*(v0 + 16) & 2) != 0)
  {
    if (qword_28150F5E0 != -1)
    {
      swift_once();
    }

    v5 = sub_248A122D0();
    __swift_project_value_buffer(v5, qword_2815105A8);
    v6 = sub_248A122B0();
    v7 = sub_248A12E80();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_248975000, v6, v7, "First unlock has not occured yet.", v8, 2u);
      MEMORY[0x24C1E0A80](v8, -1, -1);
    }

    v9 = sub_248A12350();
    sub_24897C55C(&qword_27EEB51C0, MEMORY[0x277D04E68], MEMORY[0x277D04E70]);
    swift_allocError();
    (*(*(v9 - 8) + 104))(v10, *MEMORY[0x277D04E50], v9);
    swift_willThrow();
    v4 = *(v0 + 8);
  }

  else
  {
    v1 = *(v0 + 24);
    v2 = v1[32];
    v3 = v1[33];
    __swift_project_boxed_opaque_existential_1(v1 + 29, v2);
    (*(v3 + 40))(v2, v3);
    v4 = *(v0 + 8);
  }

  return v4();
}

uint64_t sub_24897B5DC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
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

uint64_t sub_24897B634()
{
  v0 = sub_248A12B60();
  v1 = MEMORY[0x24C1DF8E0](v0);

  return v1;
}

uint64_t sub_24897B670(uint64_t a1)
{
  sub_248A12B60();
  sub_248A12BB0();
}

uint64_t sub_24897B6C4(uint64_t a1)
{
  sub_248A12B60();
  sub_248A13430();
  sub_248A12BB0();
  v1 = sub_248A13460();

  return v1;
}

uint64_t sub_24897B738(uint64_t a1, id *a2)
{
  result = sub_248A12B40();
  *a2 = 0;
  return result;
}

uint64_t sub_24897B7B0(uint64_t a1, id *a2)
{
  v3 = sub_248A12B50();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_24897B830@<X0>(uint64_t *a2@<X8>)
{
  sub_248A12B60();
  v3 = sub_248A12B30();

  *a2 = v3;
  return result;
}

void *sub_24897B89C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
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

uint64_t *sub_24897B8C8@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t sub_24897B978(void *a1, uint64_t *a2)
{
  v2 = sub_248A12B60();
  v4 = v3;
  if (v2 == sub_248A12B60() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_248A13340();
  }

  return v7 & 1;
}

uint64_t sub_24897BA00@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_24897C82C(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_24897BA40(uint64_t a1)
{
  v2 = sub_24897C55C(&qword_27EEB5670, type metadata accessor for AVOutputContextSetOutputDeviceOptionsKey, &unk_248A14934);
  v3 = sub_24897C55C(&qword_27EEB52C0, type metadata accessor for AVOutputContextSetOutputDeviceOptionsKey, &unk_248A145A0);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_24897BAFC@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_248A12B30();

  *a2 = v3;
  return result;
}

uint64_t sub_24897BB44(uint64_t a1)
{
  v2 = sub_24897C55C(&qword_27EEB52A8, type metadata accessor for FileAttributeKey, &unk_248A148F0);
  v3 = sub_24897C55C(&unk_27EEB52B0, type metadata accessor for FileAttributeKey, &unk_248A146B4);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

unint64_t sub_24897BC00(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_24897BCCC(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_24897C864(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_24897BCCC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_24897BDD8(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_248A13160();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *sub_24897BDD8(uint64_t a1, unint64_t a2)
{
  v3 = sub_24897BE24(a1, a2);
  sub_24897BF54(&unk_285B60640);
  return v3;
}

void *sub_24897BE24(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_24897C040(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_248A13160();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_248A12C10();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_24897C040(v10, 0);
        result = sub_248A130F0();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_24897BF54(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_24897C0B4(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_24897C040(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB52C8, &qword_248A14978);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_24897C0B4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB52C8, &qword_248A14978);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

void _s13DeviceSharing21EnrollmentAssetServerC15handleKVSUpdateyySo17OS_os_transaction_pYbF_0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEB52D0, &qword_248A14980);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v12 - v3;
  if (qword_28150F5E0 != -1)
  {
    swift_once();
  }

  v5 = sub_248A122D0();
  __swift_project_value_buffer(v5, qword_2815105A8);
  sub_2489BDB14(0xD000000000000075, 0x8000000248A18980, 0xD000000000000013, 0x8000000248A18A40);
  v6.value = EnrollmentAssetServer.getCloudDataExistsKVS()().value;
  v7 = sub_248A122B0();
  v8 = sub_248A12E80();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 67240192;
    *(v9 + 4) = v6.value;
    _os_log_impl(&dword_248975000, v7, v8, "Cloud data KVS was updated to: %{BOOL,public}d. Set CloudDataExists user default following a KVS notification.", v9, 8u);
    MEMORY[0x24C1E0A80](v9, -1, -1);
  }

  v10 = sub_248A12D40();
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = v1;

  sub_2489AC334(0, 0, v4, &unk_248A14990, v11);

  sub_248978E68();
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_24897C55C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24897C82C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t sub_24897C864(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_24897C90C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_248978D74;

  return sub_248978CE4();
}

uint64_t sub_24897C9C0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_248978D74;

  return sub_248979258(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_24897CA88(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5600, &unk_248A15210);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_24897CB18(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_24897CBB4()
{
  v1 = [v0 availableOutputDevices];
  sub_24897CCE8();
  v2 = sub_248A12C90();

  return v2;
}

id (*sub_24897CC30(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = [v1 discoveryMode];
  return sub_24897CC84;
}

unint64_t sub_24897CCE8()
{
  result = qword_27EEB5350;
  if (!qword_27EEB5350)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EEB5350);
  }

  return result;
}

id static NSBundle.deviceSharingFramework.getter()
{
  _s30DeviceSharingFrameworkSentinelCMa();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];

  return v1;
}

uint64_t (*sub_24897CDD4(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_248A12930();
  return sub_24897CE44;
}

uint64_t (*sub_24897CE50(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_248A12960();
  return sub_24897D440;
}

void sub_24897CEC0(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t sub_24897CFD8()
{
  v0 = sub_248A128D0();
  MEMORY[0x28223BE20](v0);
  v1 = sub_248A128F0();
  MEMORY[0x28223BE20](v1 - 8);
  v2 = sub_248A12910();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = (v12 - v7);
  v12[0] = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5358, &qword_248A14B18) + 48);
  *v8 = 0xD000000000000025;
  v8[1] = 0x8000000248A18BA0;
  sub_248A128C0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5360, &qword_248A14B20);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_248A14AE0;
  sub_248A128C0();
  sub_248A128B0();
  v12[1] = v9;
  sub_24897D33C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5370, &qword_248A14B28);
  sub_24897D394();
  sub_248A12FA0();
  sub_248A12900();
  (*(v3 + 104))(v8, *MEMORY[0x277CD90A8], v2);
  sub_248A127B0();
  sub_248A12760();
  sub_248A12740();
  sub_248A127A0();
  nw_parameters_set_include_ble();
  swift_unknownObjectRelease();
  (*(v3 + 16))(v6, v8, v2);
  sub_248A12A00();
  swift_allocObject();
  v10 = sub_248A12990();
  (*(v3 + 8))(v8, v2);
  return v10;
}

unint64_t sub_24897D33C()
{
  result = qword_27EEB5368;
  if (!qword_27EEB5368)
  {
    sub_248A128D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEB5368);
  }

  return result;
}

unint64_t sub_24897D394()
{
  result = qword_27EEB5378;
  if (!qword_27EEB5378)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EEB5370, &qword_248A14B28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEB5378);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_24897D44C()
{
  sub_248A13430();
  MEMORY[0x24C1E0100](0);
  return sub_248A13460();
}

uint64_t sub_24897D4B8(uint64_t a1)
{
  sub_248A13430();
  MEMORY[0x24C1E0100](0);
  return sub_248A13460();
}

uint64_t sub_24897D4F8(uint64_t a1, uint64_t a2)
{
  *(v2 + 224) = a1;
  *(v2 + 232) = a2;
  return MEMORY[0x2822009F8](sub_24897D518, 0, 0);
}

uint64_t sub_24897D518()
{
  v17 = v0;
  if (qword_28150F5E0 != -1)
  {
    swift_once();
  }

  v1 = sub_248A122D0();
  __swift_project_value_buffer(v1, qword_2815105A8);
  sub_2489BDB14(0xD00000000000007CLL, 0x8000000248A18BD0, 0xD00000000000001BLL, 0x8000000248A18CD0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEB59B0, &qword_248A14CA8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_248A14B30;
  *(inited + 32) = sub_248A12B60();
  *(inited + 40) = v3;
  v4 = sub_24897DA4C();
  *(inited + 72) = MEMORY[0x277D83E88];
  *(inited + 48) = v4;
  sub_248990FB8(inited);
  swift_setDeallocating();
  sub_248983734(inited + 32, &qword_27EEB56C0, &qword_248A14CB0);
  v5 = sub_248A122B0();
  v6 = sub_248A12E80();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16 = v8;
    *v7 = 136446210;
    v9 = sub_248A12AB0();
    v11 = sub_24897BC00(v9, v10, &v16);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_248975000, v5, v6, "Delete options: %{public}s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x24C1E0A80](v8, -1, -1);
    MEMORY[0x24C1E0A80](v7, -1, -1);
  }

  v12 = v0[29];
  v13 = sub_248A12A80();
  v0[30] = v13;

  v0[2] = v0;
  v0[3] = sub_24897D868;
  v14 = swift_continuation_init();
  v0[27] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB53C0, &qword_248A14D08);
  v0[20] = MEMORY[0x277D85DD0];
  v0[21] = 1107296256;
  v0[22] = sub_24897DC14;
  v0[23] = &block_descriptor_21;
  v0[24] = v14;
  [v12 deleteAllAssetsWithOptions:v13 completion:v0 + 20];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_24897D868()
{
  v1 = *(*v0 + 48);
  *(*v0 + 248) = v1;
  if (v1)
  {
    v2 = sub_24897D9DC;
  }

  else
  {
    v2 = sub_24897D978;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24897D978()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24897D9DC(uint64_t a1)
{
  v2 = *(v1 + 240);
  swift_willThrow();

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_24897DA4C()
{
  v1 = v0;
  v2 = sub_248A123B0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, v1, v2);
  v6 = (*(v3 + 88))(v5, v2);
  if (v6 == *MEMORY[0x277D04E98])
  {
    return 4;
  }

  if (v6 == *MEMORY[0x277D04E90])
  {
    return 8;
  }

  if (v6 == *MEMORY[0x277D04E88])
  {
    return 16;
  }

  v8[0] = 0;
  v8[1] = 0xE000000000000000;
  sub_248A13100();
  MEMORY[0x24C1DF8B0](0xD000000000000020, 0x8000000248A18D40);
  sub_248A131F0();
  result = sub_248A13200();
  __break(1u);
  return result;
}

uint64_t sub_24897DC14(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEB5EB0, &qword_248A15C20);
    v5 = swift_allocError();
    *v6 = a2;
    v7 = a2;

    return MEMORY[0x282200958](v4, v5);
  }

  else
  {
    v8 = *v3;

    return MEMORY[0x282200950](v8);
  }
}

uint64_t sub_24897DCE0()
{
  v1 = v0[18];
  v0[2] = v0;
  v0[7] = v0 + 20;
  v0[3] = sub_24897DDFC;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB53B8, &qword_248A14CF8);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_24897E0A8;
  v0[13] = &block_descriptor_15;
  v0[14] = v2;
  [v1 checkIfCloudZonesWithCompletionHandler_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_24897DDFC()
{
  v1 = *(*v0 + 48);
  *(*v0 + 152) = v1;
  if (v1)
  {
    v2 = sub_24897E038;
  }

  else
  {
    v2 = sub_24897DF0C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24897DF0C()
{
  v1 = *(v0 + 160);
  if (qword_28150F5E0 != -1)
  {
    swift_once();
  }

  v2 = sub_248A122D0();
  __swift_project_value_buffer(v2, qword_2815105A8);
  v3 = sub_248A122B0();
  v4 = sub_248A12E80();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 67240192;
    *(v5 + 4) = v1;
    _os_log_impl(&dword_248975000, v3, v4, "Zones exist: %{BOOL,public}d", v5, 8u);
    MEMORY[0x24C1E0A80](v5, -1, -1);
  }

  v6 = *(v0 + 8);

  return v6(v1);
}

uint64_t sub_24897E038(uint64_t a1)
{
  swift_willThrow();
  v2 = *(v1 + 8);

  return v2(0);
}

uint64_t sub_24897E0A8(uint64_t a1, char a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEB5EB0, &qword_248A15C20);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x282200958](v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;

    return MEMORY[0x282200950](v5);
  }
}

uint64_t sub_24897E174(void *a1)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v8 = 0;
  v9[0] = 0;
  v1 = [a1 getAllProfilesWith:v9 error:&v8];
  v2 = v8;
  if (!v1)
  {
    v6 = v8;
    sub_248A11A40();

LABEL_6:
    swift_willThrow();

    return v2;
  }

  v3 = v1;
  v4 = v8;

  v5 = v9[0];
  if (!v9[0])
  {
    sub_248983634();
    swift_allocError();
    goto LABEL_6;
  }

  v2 = sub_248A12B60();

  return v2;
}

unint64_t sub_24897E27C(uint64_t a1, void *a2)
{
  v5 = sub_248A12480();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_24897E58C(a2);
  if (!v2)
  {
    v10 = result;
    v11 = sub_248991224(MEMORY[0x277D84F90]);
    (*(v6 + 16))(v8, a1, v5);
    v45 = v11;
    v12 = *(v10 + 16);
    if (v12)
    {
      v13 = 0;
      v14 = (v10 + 48);
      while (v13 < *(v10 + 16))
      {
        ++v13;
        v15 = *(v14 - 1);
        v16 = *v14;
        v38 = *(v14 - 2);
        v39 = v15;
        v40 = v16;

        v17 = v16;
        sub_248981B24(&v45, &v38, v8);

        v14 += 3;
        if (v12 == v13)
        {
          goto LABEL_6;
        }
      }
    }

    else
    {
LABEL_6:
      (*(v6 + 8))(v8, v5);

      v18 = v45;
      v45 = sub_24899137C(MEMORY[0x277D84F90]);
      v19 = 1 << *(v18 + 32);
      v20 = -1;
      if (v19 < 64)
      {
        v20 = ~(-1 << v19);
      }

      v21 = v20 & *(v18 + 64);
      v22 = (v19 + 63) >> 6;

      for (i = 0; v21; i = v24)
      {
        v24 = i;
LABEL_13:
        v25 = __clz(__rbit64(v21)) | (v24 << 6);
        v26 = *(v18 + 48) + 32 * v25;
        v27 = *(v26 + 8);
        v28 = *(v26 + 16);
        v29 = (*(v18 + 56) + 24 * v25);
        v30 = *v29;
        v31 = v29[1];
        v32 = v29[2];
        v33 = *(v26 + 24);
        v38 = *v26;
        v39 = v27;
        v40 = v28;
        v41 = v33;
        v42 = v30;
        v43 = v31;
        v44 = v32;
        sub_2489837A4(v38, v27, v28, v33);

        v34 = v32;
        sub_24897E7A8(&v45, &v38);
        v21 &= v21 - 1;
        v35 = v44;
        sub_2489837C4(v38, v39, v40, v41);
      }

      while (1)
      {
        v24 = i + 1;
        if (__OFADD__(i, 1))
        {
          break;
        }

        if (v24 >= v22)
        {

          return v45;
        }

        v21 = *(v18 + 64 + 8 * v24);
        ++i;
        if (v21)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
    }

    __break(1u);

    v36 = v44;
    sub_2489837C4(v38, v39, v40, v41);

    __break(1u);
  }

  return result;
}

id sub_24897E58C(id a1)
{
  v14[15] = *MEMORY[0x277D85DE8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB53A0, &qword_248A14CE0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_248A14B30;
  v14[0] = sub_248A12B60();
  v14[1] = v4;
  v5 = MEMORY[0x277D837D0];
  sub_248A130A0();
  v6 = sub_24897E174(a1);
  if (v1)
  {
    sub_248983688(inited + 32);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB53A8, &qword_248A14CE8);
    swift_arrayDestroy();
  }

  else
  {
    *(inited + 96) = v5;
    *(inited + 72) = v6;
    *(inited + 80) = v7;
    sub_2489910E8(inited);
    swift_setDeallocating();
    sub_248983734(inited + 32, &qword_27EEB53A8, &qword_248A14CE8);
    v8 = sub_248A12A80();

    v14[0] = 0;
    v9 = [a1 queryAssetMetaDataWithOptions:v8 error:v14];

    v10 = v14[0];
    if (v9)
    {
      sub_2489836DC();
      v11 = sub_248A12AA0();
      v12 = v10;

      a1 = sub_24897EB48(v11);
    }

    else
    {
      a1 = v14[0];
      sub_248A11A40();

      swift_willThrow();
    }
  }

  return a1;
}

uint64_t sub_24897E7A8(uint64_t *a1, uint64_t *a2)
{
  v46 = a1;
  v45 = sub_248A12480();
  v3 = *(v45 - 8);
  v4 = MEMORY[0x28223BE20](v45);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v41 = &v40 - v8;
  MEMORY[0x28223BE20](v7);
  v10 = &v40 - v9;
  v11 = *a2;
  v12 = a2[1];
  v13 = a2[2];
  v14 = *(a2 + 24);
  v15 = a2[4];
  v16 = a2[5];
  v17 = a2[6];
  v18 = v14 < 2 || (v13 | v12 | v11) == 0;
  v42 = v15;
  v43 = v17;
  if (v18)
  {
    sub_2489837A4(v11, v12, v13, v14);

    v19 = v17;
    sub_248A12440();
  }

  else
  {
    sub_2489837A4(v11, v12, v13, 2u);

    v20 = v17;
    sub_248A12460();
  }

  v21 = *v46;
  if (*(*v46 + 16) && (v22 = sub_2489A7DFC(v10), (v23 & 1) != 0))
  {
    v24 = *(*(v21 + 56) + 8 * v22);
    v25 = *(v3 + 8);

    v26 = v10;
    v27 = v45;
    v44 = v3 + 8;
    v25(v26, v45);
    if (v14 >= 2 && v13 | v12 | v11)
    {
      v28 = v41;
      sub_248A12460();
      LOBYTE(v14) = 2;
    }

    else
    {
      v28 = v41;
      sub_248A12440();
    }

    sub_2489837C4(v11, v12, v13, v14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB53E0, &qword_248A14D30);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_248A14B30;
    *(inited + 32) = v42;
    *(inited + 40) = v16;
    v47 = v24;

    sub_2489C8D4C(inited);
    v37 = v47;
    v34 = v46;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v47 = *v34;
    sub_2489B02E8(v37, v28, isUniquelyReferenced_nonNull_native);
    v25(v28, v27);
  }

  else
  {
    v29 = v3 + 8;
    v30 = *(v3 + 8);
    v31 = v10;
    v32 = v45;
    v44 = v29;
    v30(v31, v45);
    if (v14 >= 2 && v13 | v12 | v11)
    {
      sub_248A12460();
      LOBYTE(v14) = 2;
    }

    else
    {
      sub_248A12440();
    }

    sub_2489837C4(v11, v12, v13, v14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB53E0, &qword_248A14D30);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_248A14B30;
    *(v33 + 32) = v42;
    *(v33 + 40) = v16;

    v34 = v46;
    v35 = swift_isUniquelyReferenced_nonNull_native();
    v47 = *v34;
    sub_2489B02E8(v33, v6, v35);
    v30(v6, v32);
  }

  *v34 = v47;
  return result;
}

id sub_24897EB48(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v29 = MEMORY[0x277D84F90];
  sub_2489CE5AC(0, v1, 0);
  v2 = v29;
  v4 = a1 + 64;
  result = sub_248A12FB0();
  v6 = result;
  v7 = 0;
  v8 = *(a1 + 36);
  v25 = v1;
  v26 = v8;
  while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(a1 + 32))
  {
    v10 = v6 >> 6;
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
      goto LABEL_22;
    }

    if (v8 != *(a1 + 36))
    {
      goto LABEL_23;
    }

    v27 = v7;
    v11 = (*(a1 + 48) + 16 * v6);
    v12 = v11[1];
    v28 = *v11;
    v13 = *(*(a1 + 56) + 8 * v6);
    v14 = *(v29 + 16);
    v15 = *(v29 + 24);

    result = v13;
    if (v14 >= v15 >> 1)
    {
      v24 = result;
      sub_2489CE5AC((v15 > 1), v14 + 1, 1);
      result = v24;
    }

    *(v29 + 16) = v14 + 1;
    v16 = (v29 + 24 * v14);
    v16[4] = v28;
    v16[5] = v12;
    v16[6] = result;
    v9 = 1 << *(a1 + 32);
    if (v6 >= v9)
    {
      goto LABEL_24;
    }

    v4 = a1 + 64;
    v17 = *(a1 + 64 + 8 * v10);
    if ((v17 & (1 << v6)) == 0)
    {
      goto LABEL_25;
    }

    v8 = v26;
    if (v26 != *(a1 + 36))
    {
      goto LABEL_26;
    }

    v18 = v17 & (-2 << (v6 & 0x3F));
    if (v18)
    {
      v9 = __clz(__rbit64(v18)) | v6 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v19 = v10 << 6;
      v20 = v10 + 1;
      v21 = (a1 + 72 + 8 * v10);
      while (v20 < (v9 + 63) >> 6)
      {
        v23 = *v21++;
        v22 = v23;
        v19 += 64;
        ++v20;
        if (v23)
        {
          result = sub_248983728(v6, v26, 0);
          v9 = __clz(__rbit64(v22)) + v19;
          goto LABEL_4;
        }
      }

      result = sub_248983728(v6, v26, 0);
    }

LABEL_4:
    v7 = v27 + 1;
    v6 = v9;
    if (v27 + 1 == v25)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_24897EDA8(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v4 + 224) = a2;
  *(v4 + 232) = a4;
  *(v4 + 280) = a3;
  *(v4 + 216) = a1;
  v5 = sub_248A11AC0();
  *(v4 + 240) = v5;
  *(v4 + 248) = *(v5 - 8);
  *(v4 + 256) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24897EE9C, 0, 0);
}

uint64_t sub_24897EE9C()
{
  v36 = v0;
  v35[1] = *MEMORY[0x277D85DE8];
  if (qword_28150F5E0 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 248);
  v1 = *(v0 + 256);
  v3 = *(v0 + 240);
  v4 = *(v0 + 224);
  v5 = sub_248A122D0();
  __swift_project_value_buffer(v5, qword_2815105A8);
  (*(v2 + 16))(v1, v4, v3);

  v6 = sub_248A122B0();
  v7 = sub_248A12E80();

  v8 = os_log_type_enabled(v6, v7);
  v10 = *(v0 + 248);
  v9 = *(v0 + 256);
  v11 = *(v0 + 240);
  if (v8)
  {
    v12 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v35[0] = v34;
    *v12 = 136315394;
    sub_248A12480();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5380, &qword_248A14CC0);
    sub_2489837E4(&unk_27EEB61C0, MEMORY[0x277D04ED0], MEMORY[0x277D04ED8]);
    v13 = sub_248A12AB0();
    v15 = sub_24897BC00(v13, v14, v35);

    *(v12 + 4) = v15;
    *(v12 + 12) = 2080;
    sub_2489837E4(&qword_27EEB53D0, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v16 = sub_248A132F0();
    v18 = v17;
    (*(v10 + 8))(v9, v11);
    v19 = sub_24897BC00(v16, v18, v35);

    *(v12 + 14) = v19;
    _os_log_impl(&dword_248975000, v6, v7, "Attempting to export: %s to: %s", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1E0A80](v34, -1, -1);
    MEMORY[0x24C1E0A80](v12, -1, -1);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v20 = *(v0 + 280);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEB59B0, &qword_248A14CA8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_248A14AE0;
  *(inited + 32) = sub_248A12B60();
  *(inited + 40) = v22;
  v23 = sub_248A12AC0();
  *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5380, &qword_248A14CC0);
  *(inited + 48) = v23;
  *(inited + 80) = sub_248A12B60();
  *(inited + 88) = v24;
  v25 = MEMORY[0x277D839B0];
  *(inited + 120) = MEMORY[0x277D839B0];
  *(inited + 96) = 1;
  v26 = sub_248990FB8(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB56C0, &qword_248A14CB0);
  swift_arrayDestroy();
  if (v20 == 1)
  {
    v27 = sub_248A12B60();
    v29 = v28;
    *(v0 + 168) = v25;
    *(v0 + 144) = 1;
    sub_248983794((v0 + 144), (v0 + 176));
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v35[0] = v26;
    sub_2489B04B4((v0 + 176), v27, v29, isUniquelyReferenced_nonNull_native);

    v26 = v35[0];
  }

  *(v0 + 264) = v26;
  v31 = swift_task_alloc();
  *(v0 + 272) = v31;
  *v31 = v0;
  v31[1] = sub_24897F34C;
  v32 = *(v0 + 232);

  return sub_24897F638(0x652065726F666542, 0xED000074726F7078, v32);
}

uint64_t sub_24897F34C()
{

  return MEMORY[0x2822009F8](sub_24897F474, 0, 0);
}

uint64_t sub_24897F474()
{
  v1 = v0[29];
  sub_248A11AA0();
  v2 = sub_248A12B30();

  v3 = sub_248A12A80();

  sub_24897E174(v1);
  v4 = v0[29];
  v5 = sub_248A12B30();

  v0[26] = 0;
  LODWORD(v4) = [v4 exportAssetsToPath:v2 option:v3 profile:v5 error:v0 + 26];

  v6 = v0[26];
  if (v4)
  {
    v7 = v6;
  }

  else
  {
    v9 = v6;
    sub_248A11A40();

    swift_willThrow();
  }

  v8 = v0[1];

  return v8();
}

uint64_t sub_24897F638(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[7] = a2;
  v3[8] = a3;
  v3[6] = a1;
  return MEMORY[0x2822009F8](sub_24897F65C, 0, 0);
}

uint64_t sub_24897F65C()
{
  v17 = v0;
  v1 = sub_24897E58C(*(v0 + 64));
  if (qword_28150F5E0 != -1)
  {
    swift_once();
  }

  v2 = sub_248A122D0();
  *(v0 + 72) = __swift_project_value_buffer(v2, qword_2815105A8);

  v3 = sub_248A122B0();
  v4 = sub_248A12E80();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = *(v0 + 48);
    v5 = *(v0 + 56);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16[0] = v8;
    *v7 = 136446466;
    *(v7 + 4) = sub_24897BC00(v6, v5, v16);
    *(v7 + 12) = 2082;
    v16[1] = v1;
    v9 = AllAssetsRepresentation.description.getter();
    v11 = v10;

    v12 = sub_24897BC00(v9, v11, v16);

    *(v7 + 14) = v12;
    _os_log_impl(&dword_248975000, v3, v4, "[MA State] %{public}s - %{public}s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1E0A80](v8, -1, -1);
    MEMORY[0x24C1E0A80](v7, -1, -1);
  }

  else
  {
  }

  v13 = swift_task_alloc();
  *(v0 + 80) = v13;
  *v13 = v0;
  v13[1] = sub_24897FA68;
  v14 = *(v0 + 64);

  return sub_248980DB4(v14);
}

uint64_t sub_24897FA68(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 88) = a1;
  *(v3 + 96) = v1;

  if (v1)
  {
    v4 = sub_24897FD3C;
  }

  else
  {
    v4 = sub_24897FB7C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_24897FB7C()
{
  v16 = v0;

  v1 = sub_248A122B0();
  v2 = sub_248A12E80();

  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[11];
  if (v3)
  {
    v6 = v0[6];
    v5 = v0[7];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v15 = v8;
    *v7 = 136446466;
    *(v7 + 4) = sub_24897BC00(v6, v5, &v15);
    *(v7 + 12) = 2082;
    v9 = MEMORY[0x24C1DF960](v4, &type metadata for RXUUIDInfo);
    v11 = v10;

    v12 = sub_24897BC00(v9, v11, &v15);

    *(v7 + 14) = v12;
    _os_log_impl(&dword_248975000, v1, v2, "[RX State] %{public}s - %{public}s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1E0A80](v8, -1, -1);
    MEMORY[0x24C1E0A80](v7, -1, -1);
  }

  else
  {
  }

  v13 = v0[1];

  return v13();
}

uint64_t sub_24897FD3C()
{
  v16 = v0;
  v1 = v0[12];
  if (qword_28150F5E0 != -1)
  {
    swift_once();
  }

  v2 = sub_248A122D0();
  __swift_project_value_buffer(v2, qword_2815105A8);

  v3 = v1;
  v4 = sub_248A122B0();
  v5 = sub_248A12E60();

  if (os_log_type_enabled(v4, v5))
  {
    v7 = v0[6];
    v6 = v0[7];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v8 = 136446466;
    *(v8 + 4) = sub_24897BC00(v7, v6, &v15);
    *(v8 + 12) = 2082;
    swift_getErrorValue();
    v10 = sub_248A133C0();
    v12 = sub_24897BC00(v10, v11, &v15);

    *(v8 + 14) = v12;
    _os_log_impl(&dword_248975000, v4, v5, "%{public}s - Unable to get currentstate: %{public}s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1E0A80](v9, -1, -1);
    MEMORY[0x24C1E0A80](v8, -1, -1);
  }

  else
  {
  }

  v13 = v0[1];

  return v13();
}

uint64_t sub_24897FF3C(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v4 + 432) = a2;
  *(v4 + 440) = a4;
  *(v4 + 552) = a3;
  *(v4 + 424) = a1;
  v5 = sub_248A12480();
  *(v4 + 448) = v5;
  *(v4 + 456) = *(v5 - 8);
  *(v4 + 464) = swift_task_alloc();
  v6 = sub_248A11AC0();
  *(v4 + 472) = v6;
  *(v4 + 480) = *(v6 - 8);
  *(v4 + 488) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_248980060, 0, 0);
}

uint64_t sub_248980060()
{
  v52 = v0;
  if (qword_28150F5E0 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 480);
  v1 = *(v0 + 488);
  v4 = *(v0 + 464);
  v3 = *(v0 + 472);
  v5 = *(v0 + 448);
  v6 = *(v0 + 456);
  v8 = *(v0 + 424);
  v7 = *(v0 + 432);
  v9 = sub_248A122D0();
  *(v0 + 496) = __swift_project_value_buffer(v9, qword_2815105A8);
  (*(v2 + 16))(v1, v8, v3);
  (*(v6 + 16))(v4, v7, v5);
  v10 = sub_248A122B0();
  v11 = sub_248A12E80();
  v12 = os_log_type_enabled(v10, v11);
  v13 = *(v0 + 480);
  v14 = *(v0 + 488);
  v15 = *(v0 + 464);
  v16 = *(v0 + 472);
  v18 = *(v0 + 448);
  v17 = *(v0 + 456);
  if (v12)
  {
    log = v10;
    v19 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v51[0] = v50;
    *v19 = 136446466;
    sub_2489837E4(&qword_27EEB53D0, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v20 = sub_248A132F0();
    v48 = v11;
    v22 = v21;
    (*(v13 + 8))(v14, v16);
    v23 = sub_24897BC00(v20, v22, v51);

    *(v19 + 4) = v23;
    *(v19 + 12) = 2082;
    sub_2489837E4(&qword_27EEB53D8, MEMORY[0x277D04ED0], MEMORY[0x277D04EF8]);
    v24 = sub_248A132F0();
    v26 = v25;
    (*(v17 + 8))(v15, v18);
    v27 = sub_24897BC00(v24, v26, v51);

    *(v19 + 14) = v27;
    _os_log_impl(&dword_248975000, log, v48, "Attempting to import: %{public}s, expected assets: %{public}s", v19, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1E0A80](v50, -1, -1);
    MEMORY[0x24C1E0A80](v19, -1, -1);
  }

  else
  {

    (*(v17 + 8))(v15, v18);
    (*(v13 + 8))(v14, v16);
  }

  v28 = *(v0 + 440);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEB59B0, &qword_248A14CA8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_248A14AE0;
  *(inited + 32) = sub_248A12B60();
  *(inited + 40) = v30;
  v31 = sub_24897E174(v28);
  v32 = *(v0 + 552);
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v31;
  *(inited + 56) = v33;
  *(inited + 80) = sub_248A12B60();
  *(inited + 88) = v34;
  v35 = MEMORY[0x277D839B0];
  *(inited + 120) = MEMORY[0x277D839B0];
  *(inited + 96) = 1;
  v36 = sub_248990FB8(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB56C0, &qword_248A14CB0);
  swift_arrayDestroy();
  if (v32 == 1)
  {
    v37 = sub_248A12B60();
    v39 = v38;
    *(v0 + 360) = v35;
    *(v0 + 336) = 1;
    sub_248983794((v0 + 336), (v0 + 368));
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v51[0] = v36;
    sub_2489B04B4((v0 + 368), v37, v39, isUniquelyReferenced_nonNull_native);

    v36 = v51[0];
  }

  v41 = sub_248A12B60();
  v43 = v42;
  *(v0 + 296) = v35;
  *(v0 + 272) = 1;
  sub_248983794((v0 + 272), (v0 + 304));
  v44 = swift_isUniquelyReferenced_nonNull_native();
  v51[0] = v36;
  sub_2489B04B4((v0 + 304), v41, v43, v44);

  *(v0 + 504) = v51[0];
  v45 = swift_task_alloc();
  *(v0 + 512) = v45;
  *v45 = v0;
  v45[1] = sub_2489805FC;
  v46 = *(v0 + 440);

  return sub_24897F638(0x692065726F666542, 0xED000074726F706DLL, v46);
}

uint64_t sub_2489805FC()
{

  return MEMORY[0x2822009F8](sub_2489806F8, 0, 0);
}

uint64_t sub_2489806F8()
{
  v1 = v0[55];
  sub_248A11AA0();
  v2 = sub_248A12B30();
  v0[65] = v2;

  v3 = sub_248A12A80();
  v0[66] = v3;

  v0[2] = v0;
  v0[7] = v0 + 50;
  v0[3] = sub_248980888;
  v4 = swift_continuation_init();
  v0[33] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB53C8, &qword_248A14D20);
  v0[26] = MEMORY[0x277D85DD0];
  v0[27] = 1107296256;
  v0[28] = sub_248980CD8;
  v0[29] = &block_descriptor_28;
  v0[30] = v4;
  [v1 importAssetsFromPath:v2 option:v3 completion:v0 + 26];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_248980888()
{
  v1 = *(*v0 + 48);
  *(*v0 + 536) = v1;
  if (v1)
  {
    v2 = sub_248980C48;
  }

  else
  {
    v2 = sub_248980998;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_248980998()
{
  v1 = v0[66];
  v2 = v0[65];

  v3 = swift_task_alloc();
  v0[68] = v3;
  *v3 = v0;
  v3[1] = sub_248980A60;
  v4 = v0[55];

  return sub_24897F638(0x6D69207265746641, 0xEC00000074726F70, v4);
}

uint64_t sub_248980A60()
{

  return MEMORY[0x2822009F8](sub_248980B5C, 0, 0);
}

uint64_t sub_248980B5C(uint64_t a1)
{
  v2 = sub_248A122B0();
  v3 = sub_248A12E80();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_248975000, v2, v3, "Import successful", v4, 2u);
    MEMORY[0x24C1E0A80](v4, -1, -1);
  }

  v5 = *(v1 + 8);

  return v5();
}

uint64_t sub_248980C48(uint64_t a1)
{
  v2 = v1[66];
  v3 = v1[65];
  swift_willThrow();

  v4 = v1[1];

  return v4();
}

uint64_t sub_248980CD8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEB5EB0, &qword_248A15C20);
    v7 = swift_allocError();
    *v8 = a4;
    v9 = a4;

    return MEMORY[0x282200958](v6, v7);
  }

  else
  {
    v10 = sub_248A12B60();
    v11 = *(*(v6 + 64) + 40);
    *v11 = v10;
    v11[1] = v12;
    v11[2] = a3;

    return MEMORY[0x282200950](v6);
  }
}

uint64_t sub_248980DD4()
{
  if (qword_28150F5E0 != -1)
  {
    swift_once();
  }

  v1 = v0[41];
  v2 = sub_248A122D0();
  __swift_project_value_buffer(v2, qword_2815105A8);
  sub_2489BDB14(0xD00000000000007CLL, 0x8000000248A18BD0, 0xD000000000000016, 0x8000000248A18C70);
  v3 = sub_248981580(v1);
  v0[42] = 0;
  if (v3)
  {
    v23 = v0[41];
    v4 = sub_248A12B30();
    v0[43] = v4;
    sub_248990FB8(MEMORY[0x277D84F90]);
    v5 = MEMORY[0x277D837D0];
    v6 = sub_248A12A80();
    v0[44] = v6;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEB59B0, &qword_248A14CA8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_248A14B40;
    *(inited + 32) = sub_248A12B60();
    *(inited + 40) = v8;
    *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5380, &qword_248A14CC0);
    *(inited + 48) = &unk_285B606A8;
    *(inited + 80) = sub_248A12B60();
    *(inited + 88) = v9;
    v10 = sub_248A12B60();
    *(inited + 120) = v5;
    *(inited + 96) = v10;
    *(inited + 104) = v11;
    *(inited + 128) = sub_248A12B60();
    *(inited + 136) = v12;
    v13 = sub_248A12B60();
    *(inited + 168) = v5;
    *(inited + 144) = v13;
    *(inited + 152) = v14;
    sub_248990FB8(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB56C0, &qword_248A14CB0);
    swift_arrayDestroy();
    v15 = sub_248A12A80();
    v0[45] = v15;

    v0[2] = v0;
    v0[7] = v0 + 40;
    v0[3] = sub_248981248;
    v16 = swift_continuation_init();
    v0[39] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5388, &qword_248A14CC8);
    v0[32] = MEMORY[0x277D85DD0];
    v0[33] = 1107296256;
    v0[34] = sub_248981748;
    v0[35] = &block_descriptor;
    v0[36] = v16;
    [v23 queryDataInStore:v4 keys:v6 attributes:v15 completion:v0 + 32];

    return MEMORY[0x282200938](v0 + 2);
  }

  else
  {
    v17 = sub_248A122B0();
    v18 = sub_248A12E80();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_248975000, v17, v18, "No CoreRX data exists. Do not query for it.", v19, 2u);
      MEMORY[0x24C1E0A80](v19, -1, -1);
    }

    v20 = v0[1];
    v21 = MEMORY[0x277D84F90];

    return v20(v21);
  }
}

uint64_t sub_248981248()
{
  v1 = *(*v0 + 48);
  *(*v0 + 368) = v1;
  if (v1)
  {
    v2 = sub_2489814FC;
  }

  else
  {
    v2 = sub_248981358;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

void sub_248981358()
{
  v22 = v0;
  v1 = *(v0 + 320);
  v16 = *(v1 + 16);
  if (v16)
  {
    v2 = 0;
    v3 = MEMORY[0x277D84F90];
    while (v2 < *(v1 + 16))
    {
      v17 = *(v1 + 32 + 8 * v2);
      sub_248981834(&v17, &v18);
      v4 = v19;
      if (v19)
      {
        v5 = v18;
        v6 = v20;
        v7 = v21;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v3 = sub_2489C9A28(0, *(v3 + 2) + 1, 1, v3);
        }

        v9 = *(v3 + 2);
        v8 = *(v3 + 3);
        if (v9 >= v8 >> 1)
        {
          v3 = sub_2489C9A28((v8 > 1), v9 + 1, 1, v3);
        }

        *(v3 + 2) = v9 + 1;
        v10 = &v3[32 * v9];
        *(v10 + 4) = v5;
        *(v10 + 5) = v4;
        *(v10 + 6) = v6;
        v10[56] = v7 & 1;
      }

      else
      {
      }

      if (v16 == ++v2)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
LABEL_13:
    v11 = v15[44];
    v12 = v15[45];
    v13 = v15[43];

    v14 = v15[1];

    v14(v3);
  }
}

uint64_t sub_2489814FC(uint64_t a1)
{
  v2 = v1[45];
  v4 = v1[43];
  v3 = v1[44];
  swift_willThrow();

  v5 = v1[1];

  return v5();
}

uint64_t sub_248981580(void *a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v16 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEB59B0, &qword_248A14CA8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_248A14AE0;
  *(inited + 32) = sub_248A12B60();
  *(inited + 40) = v3;
  v4 = sub_248A12B60();
  v5 = MEMORY[0x277D837D0];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v4;
  *(inited + 56) = v6;
  *(inited + 80) = sub_248A12B60();
  *(inited + 88) = v7;
  v8 = sub_248A12B60();
  *(inited + 120) = v5;
  *(inited + 96) = v8;
  *(inited + 104) = v9;
  sub_248990FB8(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB56C0, &qword_248A14CB0);
  swift_arrayDestroy();
  v10 = sub_248A12A80();

  v15 = 0;
  v11 = [a1 checkIfKVStoreGroupExistUsing:v10 exist:&v16 error:&v15];

  if (v11)
  {
    LOBYTE(v12) = v16;
    v13 = v15;
  }

  else
  {
    v12 = v15;
    sub_248A11A40();

    swift_willThrow();
  }

  return v12 & 1;
}

uint64_t sub_248981748(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEB5EB0, &qword_248A15C20);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return MEMORY[0x282200958](v4, v5);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5390, &unk_248A14CD0);
    **(*(v4 + 64) + 40) = sub_248A12C90();

    return MEMORY[0x282200950](v4);
  }
}

void sub_248981834(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  if (qword_28150F5E0 != -1)
  {
    swift_once();
  }

  v4 = sub_248A122D0();
  __swift_project_value_buffer(v4, qword_2815105A8);

  v5 = sub_248A122B0();
  v6 = sub_248A12E80();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v22[0] = v8;
    *v7 = 136315138;
    v9 = sub_248A12AB0();
    v11 = sub_24897BC00(v9, v10, v22);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_248975000, v5, v6, "CoreRX info: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x24C1E0A80](v8, -1, -1);
    MEMORY[0x24C1E0A80](v7, -1, -1);
  }

  if (*(v3 + 16) && (v12 = sub_2489A7D40(0x444955557872, 0xE600000000000000), (v13 & 1) != 0) && (sub_24897C864(*(v3 + 56) + 32 * v12, v22), (swift_dynamicCast() & 1) != 0))
  {
    if (*(v3 + 16) && (v14 = sub_2489A7D40(0x79536B635F414D5FLL, 0xEF6574617453636ELL), (v15 & 1) != 0) && (sub_24897C864(*(v3 + 56) + 32 * v14, v22), swift_dynamicCast()))
    {
      v16 = v20;
    }

    else
    {
      v16 = 0;
    }

    v19 = !*(v3 + 16) || (v17 = sub_2489A7D40(0x676174735F414D5FLL, 0xEF6D6F7246676E69), (v18 & 1) == 0) || (sub_24897C864(*(v3 + 56) + 32 * v17, v22), !swift_dynamicCast()) || v20 == 0;
    *a2 = v20;
    *(a2 + 8) = v21;
    *(a2 + 16) = v16;
    *(a2 + 24) = v19;
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 24) = 0;
    *(a2 + 16) = 0;
  }
}

id sub_248981B24(void *a1, uint64_t *a2, uint64_t a3)
{
  v6 = sub_248A12480();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a2;
  v10 = a2[1];
  v12 = a2[2];
  result = [v12 label];
  if (result)
  {
    v64 = v7;
    v14 = result;
    v63 = sub_248A12B60();
    v16 = v15;

    v69 = v11;
    v70 = v10;
    v71 = v12;
    sub_2489CBC2C(&v65);
    if (v68 == 255)
    {
    }

    v57 = a3;
    v58 = v6;
    v62 = v68;
    v59 = v65;
    v60 = v66;
    v61 = v67;
    v65 = 0;
    v66 = 0xE000000000000000;
    v69 = [v12 type];
    type metadata accessor for MASDAssetType(0);
    sub_248A131F0();
    v17 = v66;
    v56 = v65;
    if (qword_28150F5E0 != -1)
    {
      swift_once();
    }

    v18 = sub_248A122D0();
    __swift_project_value_buffer(v18, qword_2815105A8);

    v19 = v12;

    v20 = sub_248A122B0();
    v21 = sub_248A12E50();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v54 = v19;
      v23 = v22;
      v24 = swift_slowAlloc();
      v65 = v24;
      *v23 = 136315650;

      v25 = sub_24897BC00(v11, v10, &v65);
      v55 = a1;
      v26 = v25;

      *(v23 + 4) = v26;
      *(v23 + 12) = 2080;
      v27 = sub_24897BC00(v63, v16, &v65);

      *(v23 + 14) = v27;
      *(v23 + 22) = 2080;
      v28 = sub_24897BC00(v56, v17, &v65);

      *(v23 + 24) = v28;
      a1 = v55;
      _os_log_impl(&dword_248975000, v20, v21, "%s | %s | %s ", v23, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x24C1E0A80](v24, -1, -1);
      v29 = v23;
      v19 = v54;
      MEMORY[0x24C1E0A80](v29, -1, -1);
    }

    else
    {
    }

    v30 = v62;
    v65 = v11;
    v66 = v10;
    v67 = v19;
    sub_2489CC220();
    sub_2489837E4(&qword_27EEB53E8, MEMORY[0x277D04ED0], MEMORY[0x277D04EF0]);
    v31 = v58;
    v32 = v19;
    v33 = sub_248A12F80();
    v64[1](v9, v31);
    v34 = v60;
    if (v33)
    {
      v35 = v11;
      v36 = [v32 assetState];
      v37 = v61;
      v38 = v59;
      if (v36)
      {
        v42 = v32;
        v43 = *a1;
        if (!*(*a1 + 16) || (v44 = sub_2489A7ED0(v59, v34, v61, v30), (v45 & 1) == 0))
        {

          v52 = v42;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v65 = *a1;
          sub_2489B0604(v35, v10, v52, v38, v34, v37, v30, isUniquelyReferenced_nonNull_native);
          result = sub_24898382C(v38, v34, v37, v30);
          *a1 = v65;
          return result;
        }

        v46 = (*(v43 + 56) + 24 * v44);
        v47 = *v46;
        v48 = v46[1];
        v49 = v46[2];
        v65 = v35;
        v66 = v10;
        v67 = v42;
        v69 = v47;
        v70 = v48;
        v71 = v49;

        v50 = v49;
        if (_s13DeviceSharing31AssetIntermediaryRepresentationV1loiySbAC_ACtFZ_0(&v65, &v69))
        {

          v64 = v42;
          v51 = swift_isUniquelyReferenced_nonNull_native();
          v65 = *a1;
          sub_2489B0604(v35, v10, v64, v38, v34, v37, v30, v51);
          sub_24898382C(v38, v34, v37, v30);

          *a1 = v65;
          return result;
        }
      }

      v39 = v38;
      v40 = v34;
      v41 = v37;
    }

    else
    {
      v39 = v59;
      v40 = v60;
      v41 = v61;
    }

    return sub_24898382C(v39, v40, v41, v30);
  }

  return result;
}

id sub_2489820BC(uint64_t a1, void *a2)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v4 = sub_248A12490();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28150F5E0 != -1)
  {
    swift_once();
  }

  v8 = sub_248A122D0();
  __swift_project_value_buffer(v8, qword_2815105A8);
  sub_2489BDB14(0xD00000000000007CLL, 0x8000000248A18BD0, 0xD00000000000001CLL, 0x8000000248A18C50);
  (*(v5 + 16))(v7, a1, v4);
  v9 = (*(v5 + 88))(v7, v4);
  if (v9 == *MEMORY[0x277D04F10])
  {
    v10 = 1;
  }

  else if (v9 == *MEMORY[0x277D04F20])
  {
    v10 = 2;
  }

  else if (v9 == *MEMORY[0x277D04F18])
  {
    v10 = 3;
  }

  else
  {
    (*(v5 + 8))(v7, v4);
    v10 = 0;
  }

  v13[0] = 0;
  if ([a2 saveAVPSetupUserOption:v10 error:v13])
  {
    return v13[0];
  }

  v12 = v13[0];
  sub_248A11A40();

  return swift_willThrow();
}

uint64_t sub_24898233C(uint64_t a1, uint64_t a2, char a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_2489839A0;

  return sub_24897EDA8(a1, a2, a3, v8);
}

uint64_t sub_2489823F0(uint64_t a1, uint64_t a2, char a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_248978D74;

  return sub_24897FF3C(a1, a2, a3, v8);
}

uint64_t sub_2489824A4(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2489839A0;

  return sub_24897D4F8(a1, v4);
}

uint64_t sub_248982540()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2489825D4;

  return sub_24897DCC0(v2);
}

uint64_t sub_2489825D4(char a1)
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

uint64_t sub_2489826DC(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_248982700, 0, 0);
}

uint64_t sub_248982700()
{
  **(v0 + 16) = sub_24897E58C(*(v0 + 24));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2489827A8()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_24898283C;

  return sub_248980DB4(v2);
}

uint64_t sub_24898283C(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t sub_248982978()
{
  v1 = sub_248A11990();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);
  v15[0] = 0;
  v15[1] = 0xE000000000000000;
  if (v6)
  {
    v7 = 8756450;
  }

  else
  {
    v7 = 0;
  }

  if (v6)
  {
    v8 = 0xA300000000000000;
  }

  else
  {
    v8 = 0xE000000000000000;
  }

  MEMORY[0x24C1DF8B0](v7, v8);

  MEMORY[0x24C1DF8B0](32, 0xE100000000000000);
  if ((v5 & 0x40) != 0)
  {
    v9 = 0xA400000000000000;
  }

  else
  {
    v9 = 0xE000000000000000;
  }

  MEMORY[0x24C1DF8B0]((v5 << 57 >> 63) & 0x9DA49FF0, v9);

  MEMORY[0x24C1DF8B0](32, 0xE100000000000000);
  if ((v5 & 0x20) != 0)
  {
    v10 = 0xA600000000000000;
  }

  else
  {
    v10 = 0xE000000000000000;
  }

  MEMORY[0x24C1DF8B0]((v5 << 58 >> 63) & 0x8FB8EF8198E2, v10);

  MEMORY[0x24C1DF8B0](32, 0xE100000000000000);
  if ((v5 & 0x7E20) == 0x7E20)
  {
    v11 = 0x8FB8EF86ACE2;
  }

  else
  {
    v11 = 0;
  }

  if ((v5 & 0x7E20) == 0x7E20)
  {
    v12 = 0xA600000000000000;
  }

  else
  {
    v12 = 0xE000000000000000;
  }

  MEMORY[0x24C1DF8B0](v11, v12);

  sub_248A11980();
  sub_2489835B8();
  v13 = sub_248A12F40();
  (*(v2 + 8))(v4, v1);

  return v13;
}

uint64_t RXUUIDInfo.description.getter()
{
  v1 = *v0;
  v2 = v0[1];

  v3 = sub_2489CF4FC(8, v1, v2);
  v5 = v4;
  v7 = v6;
  v9 = v8;

  v10 = MEMORY[0x24C1DF860](v3, v5, v7, v9);

  MEMORY[0x24C1DF8B0](2629690, 0xE300000000000000);
  v11 = sub_248982978();
  MEMORY[0x24C1DF8B0](v11);

  MEMORY[0x24C1DF8B0](41, 0xE100000000000000);
  return v10;
}

uint64_t dispatch thunk of ManagedAssetsBYOEProtocol.export(assets:to:includeAccessibility:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 16) + **(a5 + 16));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_2489839A0;

  return v13(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of ManagedAssetsBYOEProtocol.importAssets(from:expectedAssets:includeAccessibility:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 24) + **(a5 + 24));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_2489839A0;

  return v13(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of ManagedAssetsBYOEProtocol.deleteEnrollmentData(from:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 32) + **(a3 + 32));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2489839A0;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of ManagedAssetsBYOEProtocol.checkCloudZonesExist()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 40) + **(a2 + 40));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24898314C;

  return v7(a1, a2);
}

uint64_t sub_24898314C(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t dispatch thunk of ManagedAssetsBYOEProtocol.getAllAssets()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 48) + **(a3 + 48));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_248978D74;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of ManagedAssetsBYOEProtocol.getRXUUIDsFromCoreRX()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 64) + **(a2 + 64));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24898314C;

  return v7(a1, a2);
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_24898351C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_248983564(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2489835B8()
{
  result = qword_28150F590;
  if (!qword_28150F590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28150F590);
  }

  return result;
}

unint64_t sub_248983634()
{
  result = qword_27EEB5398;
  if (!qword_27EEB5398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEB5398);
  }

  return result;
}

unint64_t sub_2489836DC()
{
  result = qword_27EEB53B0;
  if (!qword_27EEB53B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EEB53B0);
  }

  return result;
}

uint64_t sub_248983728(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

uint64_t sub_248983734(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

_OWORD *sub_248983794(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_2489837A4(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 <= 1u)
  {
  }

  return result;
}

uint64_t sub_2489837C4(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 <= 1u)
  {
  }

  return result;
}

uint64_t sub_2489837E4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24898382C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 != 0xFF)
  {
    return sub_2489837C4(a1, a2, a3, a4);
  }

  return a1;
}

uint64_t getEnumTagSinglePayload for ManagedAssetsBYOE.Error(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for ManagedAssetsBYOE.Error(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_248983934()
{
  result = qword_27EEB53F0;
  if (!qword_27EEB53F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEB53F0);
  }

  return result;
}

uint64_t PeerConnection.transportDispatchService.getter()
{
  sub_24898C374();
}

uint64_t sub_248983A28@<X0>(uint64_t a1@<X8>)
{
  v3 = qword_27EEB5408;
  swift_beginAccess();
  return sub_24898D610(v1 + v3, a1, &qword_27EEB5400, &unk_248A14E10);
}

unint64_t sub_248983A90(uint64_t a1)
{
  v2 = *(v1 + qword_27EEB5448);
  *(v1 + qword_27EEB5448) = a1;
  return sub_24898C42C(v2);
}

uint64_t sub_248983AC4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *a1;
  swift_beginAccess();
  return sub_24898D610(v4 + v8, a4, a2, a3);
}

uint64_t sub_248983B4C(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v8 = *a2;
  swift_beginAccess();
  sub_24898D194(a1, v4 + v8, a3, a4);
  return swift_endAccess();
}

uint64_t PeerConnection.__allocating_init(endpoint:)(uint64_t a1)
{
  v2 = sub_248A12540();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_248A116D0();
  (*(v3 + 16))(v5, a1, v2);
  sub_248A12720();
  swift_allocObject();

  v6 = sub_248A126D0();
  v7 = swift_allocObject();
  PeerConnection.init(networkConnection:)(v6, &protocol witness table for NWConnection);

  (*(v3 + 8))(a1, v2);
  return v7;
}

uint64_t PeerConnection.__allocating_init(networkConnection:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  PeerConnection.init(networkConnection:)(a1, a2);
  return v4;
}

uint64_t PeerConnection.init(networkConnection:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v27 = a1;
  v28 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5400, &unk_248A14E10);
  MEMORY[0x28223BE20](v4 - 8);
  v29 = &v25 - v5;
  v26 = sub_248A12EA0();
  v6 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_248A12ED0();
  MEMORY[0x28223BE20](v9);
  v10 = sub_248A12A40();
  MEMORY[0x28223BE20](v10 - 8);
  sub_24898C37C();
  sub_248A12A20();
  v30 = MEMORY[0x277D84F90];
  sub_24898D594(&unk_28150F570, MEMORY[0x277D852D8], MEMORY[0x277D852E0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEB5F20, &unk_248A16460);
  sub_24898C3C8();
  sub_248A12FA0();
  (*(v6 + 104))(v8, *MEMORY[0x277D85268], v26);
  *(v2 + 24) = sub_248A12EE0();
  v11 = qword_27EEB5408;
  v12 = sub_248A11BC0();
  (*(*(v12 - 8) + 56))(v3 + v11, 1, 1, v12);
  sub_248A11DF0();
  v13 = qword_27EEB5418;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5420, &qword_248A14E20);
  (*(*(v14 - 8) + 56))(v3 + v13, 1, 1, v14);
  v15 = qword_27EEB5428;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5430, &qword_248A14E28);
  (*(*(v16 - 8) + 56))(v3 + v15, 1, 1, v16);
  *(v3 + qword_27EEB5438) = 0;
  v17 = (v3 + qword_27EEB5440);
  v18 = v28;
  *v17 = v27;
  v17[1] = v18;
  *(v3 + qword_27EEB5448) = 0;
  sub_248A122A0();
  swift_unknownObjectRetain();
  *(v3 + 16) = sub_248A12290();
  ObjectType = swift_getObjectType();
  v20 = v18;
  v21 = *(v18 + 80);
  v22 = v29;
  v21(ObjectType, v20);
  swift_unknownObjectRelease();
  v23 = qword_27EEB5408;
  swift_beginAccess();
  sub_24898D194(v22, v3 + v23, &qword_27EEB5400, &unk_248A14E10);
  swift_endAccess();
  return v3;
}

uint64_t PeerConnection.deinit()
{
  v1 = v0;
  v2 = *(v0 + qword_27EEB5440 + 8);
  ObjectType = swift_getObjectType();
  v4 = *(v2 + 56);
  swift_unknownObjectRetain();
  v4(ObjectType, v2);
  swift_unknownObjectRelease();

  sub_248983734(v0 + qword_27EEB5408, &qword_27EEB5400, &unk_248A14E10);
  swift_unknownObjectRelease();
  v5 = qword_27EEB5410;
  v6 = sub_248A11E00();
  (*(*(v6 - 8) + 8))(v1 + v5, v6);
  sub_24898C42C(*(v1 + qword_27EEB5448));
  sub_248983734(v1 + qword_27EEB5418, &qword_27EEB5450, qword_248A14E30);
  sub_248983734(v1 + qword_27EEB5428, &qword_27EEB5458, &unk_248A180A0);

  return v1;
}

uint64_t PeerConnection.__deallocating_deinit()
{
  PeerConnection.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_2489843BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[4] = a1;
  v5[5] = v4;
  v6 = *v4;
  v7 = *(*v4 + 80);
  v5[6] = v7;
  v8 = *(v6 + 88);
  v5[7] = v8;
  type metadata accessor for PeerConnection(0, v7, v8, a4);
  v5[8] = swift_getWitnessTable();
  v10 = sub_248A12CD0();
  v5[9] = v10;
  v5[10] = v9;

  return MEMORY[0x2822009F8](sub_248984494, v10, v9);
}

uint64_t sub_248984494()
{
  v35 = v0;
  if (qword_27EEB51A0 != -1)
  {
    swift_once();
  }

  v1 = sub_248A122D0();
  __swift_project_value_buffer(v1, qword_27EEB9DC8);

  v2 = sub_248A122B0();
  v3 = sub_248A12E80();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 40);
  if (v4)
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v34 = v7;
    *v6 = 136446466;
    v8 = PeerConnection.description.getter();
    v10 = v9;

    v11 = sub_24897BC00(v8, v10, &v34);

    *(v6 + 4) = v11;
    *(v6 + 12) = 2082;
    *(v0 + 16) = *(v5 + qword_27EEB5440);
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5460, &qword_248A14E48);
    v12 = sub_248A12B80();
    v14 = sub_24897BC00(v12, v13, &v34);

    *(v6 + 14) = v14;
    _os_log_impl(&dword_248975000, v2, v3, "[%{public}s] Activate peer connection: %{public}s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1E0A80](v7, -1, -1);
    MEMORY[0x24C1E0A80](v6, -1, -1);
  }

  else
  {
  }

  v15 = *(v0 + 40);
  if (*(v15 + qword_27EEB5448))
  {

    v16 = sub_248A122B0();
    v17 = sub_248A12E80();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v34 = v19;
      *v18 = 136446210;
      v20 = PeerConnection.description.getter();
      v22 = v21;

      v23 = sub_24897BC00(v20, v22, &v34);

      *(v18 + 4) = v23;
      _os_log_impl(&dword_248975000, v16, v17, "[%{public}s] Peer connection was already active", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v19);
      MEMORY[0x24C1E0A80](v19, -1, -1);
      MEMORY[0x24C1E0A80](v18, -1, -1);
    }

    else
    {
    }

    v31 = *(v0 + 8);

    return v31();
  }

  else
  {
    v24 = *(v15 + qword_27EEB5440 + 8);
    ObjectType = swift_getObjectType();
    v26 = swift_allocObject();
    v33 = *(v0 + 48);
    swift_weakInit();
    v27 = swift_allocObject();
    *(v27 + 16) = v33;
    *(v27 + 32) = v26;
    v28 = *(v24 + 24);
    sub_24898C460(0, v29);

    v28(sub_24898C454, v27, ObjectType, v24);

    v30 = swift_task_alloc();
    *(v0 + 88) = v30;
    *v30 = v0;
    v30[1] = sub_24898493C;

    return MEMORY[0x2822008A0]();
  }
}

uint64_t sub_24898493C()
{
  v2 = *v1;
  *(*v1 + 96) = v0;

  v3 = *(v2 + 80);
  v4 = *(v2 + 72);
  if (v0)
  {
    v5 = sub_248984AF8;
  }

  else
  {
    v5 = sub_248984A78;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_248984A78(uint64_t a1, uint64_t a2)
{
  v3 = v2[5];
  v4 = *(v3 + qword_27EEB5448);
  *(v3 + qword_27EEB5448) = v2[4];
  swift_unknownObjectRetain();
  sub_24898C42C(v4);
  sub_248988920();
  v5 = v2[1];

  return v5();
}

uint64_t sub_248984AF8(uint64_t a1)
{
  sub_248988920();
  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_248984B5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    MEMORY[0x28223BE20](result);
    v11[2] = a1;
    v9 = type metadata accessor for PeerConnection(0, a3, a4, v8);
    WitnessTable = swift_getWitnessTable();
    sub_248984C74(sub_24898D5DC, v11, "DeviceSharing/PeerConnection.swift", 34, 2u, 96, v9, MEMORY[0x277D84F78] + 8, WitnessTable);
  }

  return result;
}

uint64_t sub_248984C74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_248A12CD0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    goto LABEL_8;
  }

  v15 = swift_allocObject();
  v15[2] = a7;
  v15[3] = a8;
  v15[4] = a9;
  v15[5] = a1;
  v15[6] = a2;
  sub_24898BE78(sub_24898D130, v15, v9, a7, a8, a9);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (v10)
  {
    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_8:
    sub_248A13100();
    MEMORY[0x24C1DF8B0](0xD00000000000003FLL, 0x8000000248A18FE0);
    sub_248A13320();
    MEMORY[0x24C1DF8B0](46, 0xE100000000000000);
    result = sub_248A13200();
    __break(1u);
  }

  return result;
}

uint64_t sub_248984E28(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5450, qword_248A14E30);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v21 - v5;
  if (qword_27EEB51A0 != -1)
  {
    swift_once();
  }

  v7 = sub_248A122D0();
  __swift_project_value_buffer(v7, qword_27EEB9DC8);

  v8 = sub_248A122B0();
  v9 = sub_248A12E80();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v22 = v11;
    *v10 = 136446210;

    v12 = PeerConnection.description.getter();
    v14 = v13;

    v15 = sub_24897BC00(v12, v14, &v22);

    *(v10 + 4) = v15;
    _os_log_impl(&dword_248975000, v8, v9, "[%{public}s] Starting connection and waiting until ready", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x24C1E0A80](v11, -1, -1);
    MEMORY[0x24C1E0A80](v10, -1, -1);
  }

  else
  {
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5420, &qword_248A14E20);
  v17 = *(v16 - 8);
  (*(v17 + 16))(v6, a1, v16);
  (*(v17 + 56))(v6, 0, 1, v16);
  sub_248983B30(v6);
  v18 = *(a2 + qword_27EEB5440 + 8);
  ObjectType = swift_getObjectType();
  (*(v18 + 40))(*(a2 + 24), ObjectType, v18);
  return sub_248987FF4();
}

uint64_t sub_2489850E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[2] = v4;
  type metadata accessor for PeerConnection(0, *(*v4 + 80), *(*v4 + 88), a4);
  v5[3] = swift_getWitnessTable();
  v7 = sub_248A12CD0();
  v5[4] = v7;
  v5[5] = v6;

  return MEMORY[0x2822009F8](sub_2489851B4, v7, v6);
}

uint64_t sub_2489851B4()
{
  v23 = v0;
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
    v22 = v5;
    *v4 = 136446210;

    v6 = PeerConnection.description.getter();
    v8 = v7;

    v9 = sub_24897BC00(v6, v8, &v22);

    *(v4 + 4) = v9;
    _os_log_impl(&dword_248975000, v2, v3, "[%{public}s] Invalidating peer connection", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x24C1E0A80](v5, -1, -1);
    MEMORY[0x24C1E0A80](v4, -1, -1);
  }

  else
  {
  }

  if (*(v0[2] + qword_27EEB5448) == 1)
  {

    sub_24898C460(1uLL, v10);
    v11 = sub_248A122B0();
    v12 = sub_248A12E80();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v22 = v14;
      *v13 = 136446210;

      v15 = PeerConnection.description.getter();
      v17 = v16;

      v18 = sub_24897BC00(v15, v17, &v22);

      *(v13 + 4) = v18;
      _os_log_impl(&dword_248975000, v11, v12, "[%{public}s] Peer connection already invalided", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v14);
      MEMORY[0x24C1E0A80](v14, -1, -1);
      MEMORY[0x24C1E0A80](v13, -1, -1);
    }

    else
    {
    }

    v20 = v0[1];

    return v20();
  }

  else
  {
    v19 = swift_task_alloc();
    v0[6] = v19;
    *v19 = v0;
    v19[1] = sub_24898555C;

    return MEMORY[0x2822007B8]();
  }
}

uint64_t sub_24898555C()
{
  v1 = *v0;

  v2 = *(v1 + 40);
  v3 = *(v1 + 32);

  return MEMORY[0x2822009F8](sub_24898567C, v3, v2);
}

uint64_t sub_24898567C()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + qword_27EEB5448);
  *(v1 + qword_27EEB5448) = 1;
  sub_24898C42C(v2);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_2489856F0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5458, &unk_248A180A0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v21 - v5;
  if (qword_27EEB51A0 != -1)
  {
    swift_once();
  }

  v7 = sub_248A122D0();
  __swift_project_value_buffer(v7, qword_27EEB9DC8);

  v8 = sub_248A122B0();
  v9 = sub_248A12E80();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v22 = v11;
    *v10 = 136446210;

    v12 = PeerConnection.description.getter();
    v14 = v13;

    v15 = sub_24897BC00(v12, v14, &v22);

    *(v10 + 4) = v15;
    _os_log_impl(&dword_248975000, v8, v9, "[%{public}s] Cancelling connection and waiting until done", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x24C1E0A80](v11, -1, -1);
    MEMORY[0x24C1E0A80](v10, -1, -1);
  }

  else
  {
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5430, &qword_248A14E28);
  v17 = *(v16 - 8);
  (*(v17 + 16))(v6, a1, v16);
  (*(v17 + 56))(v6, 0, 1, v16);
  sub_248983BDC(v6);
  v18 = *(a2 + qword_27EEB5440 + 8);
  ObjectType = swift_getObjectType();
  return (*(v18 + 48))(ObjectType, v18);
}

uint64_t sub_24898599C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5400, &unk_248A14E10);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v8 - v3;
  v5 = sub_248A11BC0();
  v6 = *(v5 - 8);
  (*(v6 + 16))(v4, a1, v5);
  (*(v6 + 56))(v4, 0, 1, v5);
  return sub_248983A0C(v4);
}

uint64_t sub_248985A98(void (*a1)(uint64_t *, char *, uint64_t))
{
  v2 = v1;
  v93 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5430, &qword_248A14E28);
  v83 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v79 = &v78 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5458, &unk_248A180A0);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v82 = &v78 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v81 = &v78 - v8;
  v9 = sub_248A128A0();
  v86 = *(v9 - 8);
  v87 = v9;
  v10 = MEMORY[0x28223BE20](v9);
  v84 = &v78 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v90 = (&v78 - v13);
  MEMORY[0x28223BE20](v12);
  v91 = &v78 - v14;
  v15 = sub_248A126F0();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v89 = &v78 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v78 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v78 - v22;
  v24 = sub_248A12A50();
  v25 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v27 = (&v78 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = *(v2 + 24);
  *v27 = v28;
  (*(v25 + 104))(v27, *MEMORY[0x277D85200], v24);
  v29 = v28;
  LOBYTE(v28) = sub_248A12A60();
  (*(v25 + 8))(v27, v24);
  if (v28)
  {
    v80 = v3;
    if (qword_27EEB51A0 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v30 = sub_248A122D0();
  v31 = __swift_project_value_buffer(v30, qword_27EEB9DC8);
  v32 = v23;
  v92 = *(v16 + 16);
  (v92)(v23, v93, v15);

  v85 = v31;
  v33 = sub_248A122B0();
  v34 = sub_248A12E80();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v88 = v2;
    v36 = v35;
    v78 = swift_slowAlloc();
    v94[0] = v78;
    *v36 = 136446466;
    v37 = PeerConnection.description.getter();
    v39 = v38;

    v40 = sub_24897BC00(v37, v39, v94);

    *(v36 + 4) = v40;
    *(v36 + 12) = 2082;
    (v92)(v21, v32, v15);
    v41 = sub_248A12B80();
    v43 = v42;
    v44 = *(v16 + 8);
    v44(v32, v15);
    v45 = sub_24897BC00(v41, v43, v94);

    *(v36 + 14) = v45;
    _os_log_impl(&dword_248975000, v33, v34, "[%{public}s] Connection state did update: %{public}s", v36, 0x16u);
    v46 = v78;
    swift_arrayDestroy();
    MEMORY[0x24C1E0A80](v46, -1, -1);
    v47 = v36;
    v2 = v88;
    MEMORY[0x24C1E0A80](v47, -1, -1);
  }

  else
  {

    v44 = *(v16 + 8);
    v44(v32, v15);
  }

  v49 = v89;
  v48 = v90;
  (v92)(v89, v93, v15);
  result = (*(v16 + 88))(v49, v15);
  v51 = v91;
  if (result == *MEMORY[0x277CD8DE8])
  {
    (*(v16 + 96))(v49, v15);
    v53 = v86;
    v52 = v87;
    (*(v86 + 32))(v51, v49, v87);
    v93 = *(v53 + 16);
    v93(v48, v51, v52);

    v54 = sub_248A122B0();
    v55 = sub_248A12E60();
    v56 = v48;
    if (os_log_type_enabled(v54, v55))
    {
      v57 = swift_slowAlloc();
      v90 = swift_slowAlloc();
      v92 = swift_slowAlloc();
      v94[0] = v92;
      *v57 = 136446466;
      v58 = PeerConnection.description.getter();
      v60 = v59;

      v61 = sub_24897BC00(v58, v60, v94);

      *(v57 + 4) = v61;
      *(v57 + 12) = 2114;
      sub_24898D594(&qword_27EEB5620, MEMORY[0x277CD8FC0], MEMORY[0x277CD8FD0]);
      swift_allocError();
      v93(v62, v56, v52);
      v63 = _swift_stdlib_bridgeErrorToNSError();
      v64 = *(v53 + 8);
      v64(v56, v52);
      *(v57 + 14) = v63;
      v65 = v90;
      *v90 = v63;
      _os_log_impl(&dword_248975000, v54, v55, "[%{public}s] Connection waiting with error: %{public}@", v57, 0x16u);
      sub_248983734(v65, &qword_27EEB5600, &unk_248A15210);
      MEMORY[0x24C1E0A80](v65, -1, -1);
      v66 = v92;
      __swift_destroy_boxed_opaque_existential_0(v92);
      MEMORY[0x24C1E0A80](v66, -1, -1);
      MEMORY[0x24C1E0A80](v57, -1, -1);

      return (v64)(v91, v52);
    }

    else
    {

      v71 = *(v53 + 8);
      v71(v48, v52);
      return (v71)(v51, v52);
    }
  }

  else if (result == *MEMORY[0x277CD8DE0])
  {
    (*(v16 + 96))(v49, v15);
    v68 = v86;
    v67 = v87;
    v69 = v84;
    v70 = (*(v86 + 32))(v84, v49, v87);
    MEMORY[0x28223BE20](v70);
    *(&v78 - 2) = v69;
    sub_2489865D8(sub_24898D184, (&v78 - 4));
    return (*(v68 + 8))(v69, v67);
  }

  else if (result != *MEMORY[0x277CD8DD8] && result != *MEMORY[0x277CD8DF8])
  {
    if (result == *MEMORY[0x277CD8DD0])
    {
      sub_248987988(0);
      sub_2489865D8(sub_248986598, 0);
      return sub_248986928();
    }

    else if (result == *MEMORY[0x277CD8DF0])
    {
      v72 = qword_27EEB5428;
      swift_beginAccess();
      v73 = v81;
      sub_24898D610(v2 + v72, v81, &qword_27EEB5458, &unk_248A180A0);
      v74 = v83;
      v75 = v80;
      if ((*(v83 + 48))(v73, 1, v80))
      {
        sub_248983734(v73, &qword_27EEB5458, &unk_248A180A0);
      }

      else
      {
        v76 = v79;
        (*(v74 + 16))(v79, v73, v75);
        sub_248983734(v73, &qword_27EEB5458, &unk_248A180A0);
        sub_248A12CF0();
        (*(v74 + 8))(v76, v75);
      }

      v77 = v82;
      (*(v74 + 56))(v82, 1, 1, v75);
      sub_248983BDC(v77);
      return sub_2489865D8(sub_2489868E8, 0);
    }

    else
    {
      return (v44)(v49, v15);
    }
  }

  return result;
}

uint64_t sub_2489865D8(uint64_t a1, uint64_t a2)
{
  if (qword_27EEB51A0 != -1)
  {
    swift_once();
  }

  v2 = sub_248A122D0();
  __swift_project_value_buffer(v2, qword_27EEB9DC8);
  swift_retain_n();
  v3 = sub_248A122B0();
  v4 = sub_248A12E80();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v14 = v6;
    *v5 = 136446466;

    v7 = PeerConnection.description.getter();
    v9 = v8;

    v10 = sub_24897BC00(v7, v9, &v14);

    *(v5 + 4) = v10;
    *(v5 + 12) = 2050;
    v11 = sub_248A11D90();

    *(v5 + 14) = v11;

    _os_log_impl(&dword_248975000, v3, v4, "[%{public}s] Notify %{public}ld observers", v5, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x24C1E0A80](v6, -1, -1);
    MEMORY[0x24C1E0A80](v5, -1, -1);
  }

  else
  {
  }

  MEMORY[0x28223BE20](v12);
  return sub_248A11DC0();
}

void sub_2489867E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v6 = sub_248A128A0();
  sub_24898D594(&qword_27EEB5620, MEMORY[0x277CD8FC0], MEMORY[0x277CD8FD0]);
  v7 = swift_allocError();
  (*(*(v6 - 8) + 16))(v8, a3, v6);
  (*(a2 + 16))(v7, ObjectType, a2);
}

uint64_t sub_248986928()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_248A12A50();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = (&v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = v1[3];
  *v6 = v7;
  (*(v4 + 104))(v6, *MEMORY[0x277D85200], v3);
  v8 = v7;
  LOBYTE(v7) = sub_248A12A60();
  (*(v4 + 8))(v6, v3);
  if (v7)
  {
    if (qword_27EEB51A0 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v9 = sub_248A122D0();
  __swift_project_value_buffer(v9, qword_27EEB9DC8);

  v10 = sub_248A122B0();
  v11 = sub_248A12E80();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v25 = v13;
    *v12 = 136446210;

    v14 = PeerConnection.description.getter();
    v16 = v15;

    v17 = sub_24897BC00(v14, v16, &v25);

    *(v12 + 4) = v17;
    _os_log_impl(&dword_248975000, v10, v11, "[%{public}s] Receive next message", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x24C1E0A80](v13, -1, -1);
    MEMORY[0x24C1E0A80](v12, -1, -1);
  }

  else
  {
  }

  v18 = *(v1 + qword_27EEB5440 + 8);
  ObjectType = swift_getObjectType();
  v20 = swift_allocObject();
  swift_weakInit();
  v21 = swift_allocObject();
  v21[2] = *(v2 + 80);
  v21[3] = *(v2 + 88);
  v21[4] = v20;
  v22 = *(v18 + 72);

  v22(sub_24898D0E4, v21, ObjectType, v18);
}

uint64_t sub_248986C5C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    MEMORY[0x28223BE20](result);
    v19[2] = a1;
    v19[3] = a2;
    v19[4] = a3;
    v20 = a4 & 1;
    v21 = a5;
    v17 = type metadata accessor for PeerConnection(0, a7, a8, v16);
    WitnessTable = swift_getWitnessTable();
    sub_248984C74(sub_24898D0F0, v19, "DeviceSharing/PeerConnection.swift", 34, 2u, 171, v17, MEMORY[0x277D84F78] + 8, WitnessTable);
  }

  return result;
}

uint64_t sub_248986DA4(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v6 = v5;
  v58 = a4;
  v55 = a1;
  v56 = a2;
  v53 = *v5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEB52D0, &qword_248A14980);
  MEMORY[0x28223BE20](v9 - 8);
  v54 = &v52 - v10;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5608, &qword_248A15110);
  v11 = MEMORY[0x28223BE20](v57);
  v13 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v52 - v14;
  v16 = sub_248A12A50();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = (&v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = v6[3];
  *v19 = v20;
  (*(v17 + 104))(v19, *MEMORY[0x277D85200], v16);
  v21 = v20;
  v22 = sub_248A12A60();
  (*(v17 + 8))(v19, v16);
  if (v22)
  {
    if (qword_27EEB51A0 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v23 = sub_248A122D0();
  __swift_project_value_buffer(v23, qword_27EEB9DC8);
  v59 = a5;
  sub_24898D610(a5, v15, &qword_27EEB5608, &qword_248A15110);

  v24 = sub_248A122B0();
  v25 = sub_248A12E80();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v60 = v6;
    v28 = v27;
    v62[0] = v27;
    *v26 = 136446978;
    v29 = PeerConnection.description.getter();
    v31 = v30;

    v32 = sub_24897BC00(v29, v31, v62);

    *(v26 + 4) = v32;
    *(v26 + 12) = 2082;
    v61 = a3;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5618, &qword_248A15130);
    v33 = sub_248A12B80();
    v35 = sub_24897BC00(v33, v34, v62);

    *(v26 + 14) = v35;
    *(v26 + 22) = 1026;
    *(v26 + 24) = v58 & 1;
    *(v26 + 28) = 2082;
    sub_24898D610(v15, v13, &qword_27EEB5608, &qword_248A15110);
    v36 = sub_248A12B80();
    v38 = v37;
    sub_248983734(v15, &qword_27EEB5608, &qword_248A15110);
    v39 = sub_24897BC00(v36, v38, v62);

    *(v26 + 30) = v39;
    _os_log_impl(&dword_248975000, v24, v25, "[%{public}s] Handle next message (context: %{public}s, isComplete: %{BOOL,public}d), error: %{public}s)", v26, 0x26u);
    swift_arrayDestroy();
    v40 = v28;
    v6 = v60;
    MEMORY[0x24C1E0A80](v40, -1, -1);
    MEMORY[0x24C1E0A80](v26, -1, -1);

    v41 = v59;
    if (!a3)
    {
      goto LABEL_16;
    }
  }

  else
  {

    sub_248983734(v15, &qword_27EEB5608, &qword_248A15110);
    v41 = v59;
    if (!a3)
    {
      goto LABEL_16;
    }
  }

  if (qword_27EEB5180 != -1)
  {
    swift_once();
  }

  if (sub_248A12650())
  {
    sub_248A12800();
    if (swift_dynamicCastClass())
    {
      sub_248A12810();
      if (!v62[3])
      {

        sub_248983734(v62, &qword_27EEB5610, &qword_248A15118);
        goto LABEL_16;
      }

      if (swift_dynamicCast())
      {
        v42 = v61;
        v43 = sub_248A12D40();
        v44 = v54;
        (*(*(v43 - 8) + 56))(v54, 1, 1, v43);
        type metadata accessor for PeerConnection(255, *(v53 + 80), *(v53 + 88), v45);
        WitnessTable = swift_getWitnessTable();
        v47 = swift_allocObject();
        *(v47 + 16) = v6;
        *(v47 + 24) = WitnessTable;
        *(v47 + 32) = v6;
        *(v47 + 40) = v42;
        v49 = v55;
        v48 = v56;
        *(v47 + 48) = v55;
        *(v47 + 56) = v48;
        swift_retain_n();
        sub_24898C480(v49, v48);
        sub_2489AC334(0, 0, v44, &unk_248A15128, v47);
      }
    }
  }

LABEL_16:
  v50 = sub_248A128A0();
  result = (*(*(v50 - 8) + 48))(v41, 1, v50);
  if (result == 1)
  {
    return sub_248986928();
  }

  return result;
}

uint64_t sub_248987450(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = a5;
  v7[3] = a6;
  v7[4] = a7;
  v7[2] = a4;
  v7[5] = *a4;
  v11 = swift_task_alloc();
  v7[6] = v11;
  *v11 = v7;
  v11[1] = sub_248987534;

  return sub_24898926C(v10, a6, a7, v12);
}

uint64_t sub_248987534(uint64_t a1, unint64_t a2)
{
  v6 = *v3;
  v6[7] = v2;

  if (v2)
  {
    type metadata accessor for PeerConnection(0, *(v6[5] + 80), *(v6[5] + 88), v7);
    swift_getWitnessTable();
    v9 = sub_248A12CD0();

    return MEMORY[0x2822009F8](sub_2489876D0, v9, v8);
  }

  else
  {
    sub_24898C4E8(a1, a2);
    v10 = v6[1];

    return v10();
  }
}

uint64_t sub_2489876D0()
{
  v27 = v0;
  if (qword_27EEB51A0 != -1)
  {
    swift_once();
  }

  v1 = v0[7];
  v3 = v0[3];
  v2 = v0[4];
  v4 = sub_248A122D0();
  __swift_project_value_buffer(v4, qword_27EEB9DC8);

  sub_24898C480(v3, v2);
  v5 = v1;
  v6 = sub_248A122B0();
  v7 = sub_248A12E60();
  sub_24898C4E8(v3, v2);

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[4];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v26 = v11;
    *v9 = 136446722;
    v12 = PeerConnection.description.getter();
    v14 = v13;

    v15 = sub_24897BC00(v12, v14, &v26);

    *(v9 + 4) = v15;
    *(v9 + 12) = 2082;
    if (v8 >> 60 == 15)
    {
      v16 = 0xE300000000000000;
      v17 = 7104878;
    }

    else
    {
      v17 = sub_248A11AD0();
      v16 = v19;
    }

    v20 = v0[7];
    v21 = sub_24897BC00(v17, v16, &v26);

    *(v9 + 14) = v21;
    *(v9 + 22) = 2114;
    v22 = v20;
    v23 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 24) = v23;
    *v10 = v23;
    _os_log_impl(&dword_248975000, v6, v7, "[%{public}s] Failed to parse message: %{public}s; error: %{public}@", v9, 0x20u);
    sub_248983734(v10, &qword_27EEB5600, &unk_248A15210);
    MEMORY[0x24C1E0A80](v10, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x24C1E0A80](v11, -1, -1);
    MEMORY[0x24C1E0A80](v9, -1, -1);
  }

  else
  {
    v18 = v0[7];
  }

  v24 = v0[1];

  return v24();
}

void sub_248987988(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5450, qword_248A14E30);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = (&v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v5);
  v9 = &v48 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5420, &qword_248A14E20);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v48 - v12;
  v14 = qword_27EEB5418;
  swift_beginAccess();
  sub_24898D610(v2 + v14, v9, &qword_27EEB5450, qword_248A14E30);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_248983734(v9, &qword_27EEB5450, qword_248A14E30);
    if (qword_27EEB51A0 != -1)
    {
      swift_once();
    }

    v15 = sub_248A122D0();
    __swift_project_value_buffer(v15, qword_27EEB9DC8);

    v16 = sub_248A122B0();
    v17 = sub_248A12E60();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v52 = v19;
      *v18 = 136446210;
      v20 = PeerConnection.description.getter();
      v22 = v21;

      v23 = sub_24897BC00(v20, v22, &v52);

      *(v18 + 4) = v23;
      _os_log_impl(&dword_248975000, v16, v17, "[%{public}s] Ready continuation already resumed", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v19);
      MEMORY[0x24C1E0A80](v19, -1, -1);
      MEMORY[0x24C1E0A80](v18, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    (*(v11 + 32))(v13, v9, v10);
    if (a1)
    {
      v24 = a1;
      if (qword_27EEB51A0 != -1)
      {
        swift_once();
      }

      v25 = sub_248A122D0();
      __swift_project_value_buffer(v25, qword_27EEB9DC8);
      v26 = a1;

      v27 = sub_248A122B0();
      v28 = sub_248A12E80();

      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v50 = swift_slowAlloc();
        v51 = swift_slowAlloc();
        v52 = v51;
        *v29 = 136446466;
        v49 = v27;
        v30 = PeerConnection.description.getter();
        v31 = v7;
        v33 = v32;

        v34 = sub_24897BC00(v30, v33, &v52);
        v7 = v31;

        *(v29 + 4) = v34;
        *(v29 + 12) = 2114;
        v35 = a1;
        v36 = _swift_stdlib_bridgeErrorToNSError();
        *(v29 + 14) = v36;
        v27 = v49;
        v37 = v50;
        *v50 = v36;
        _os_log_impl(&dword_248975000, v27, v28, "[%{public}s] Resuming ready continuation with error: %{public}@", v29, 0x16u);
        sub_248983734(v37, &qword_27EEB5600, &unk_248A15210);
        MEMORY[0x24C1E0A80](v37, -1, -1);
        v38 = v51;
        __swift_destroy_boxed_opaque_existential_0(v51);
        MEMORY[0x24C1E0A80](v38, -1, -1);
        MEMORY[0x24C1E0A80](v29, -1, -1);
      }

      else
      {
      }

      v52 = a1;
      sub_248A12CE0();
    }

    else
    {
      if (qword_27EEB51A0 != -1)
      {
        swift_once();
      }

      v39 = sub_248A122D0();
      __swift_project_value_buffer(v39, qword_27EEB9DC8);

      v40 = sub_248A122B0();
      v41 = sub_248A12E80();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        v52 = v43;
        *v42 = 136446210;
        v44 = PeerConnection.description.getter();
        v51 = v7;
        v46 = v45;

        v47 = sub_24897BC00(v44, v46, &v52);
        v7 = v51;

        *(v42 + 4) = v47;
        _os_log_impl(&dword_248975000, v40, v41, "[%{public}s] Resuming ready continuation with success", v42, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v43);
        MEMORY[0x24C1E0A80](v43, -1, -1);
        MEMORY[0x24C1E0A80](v42, -1, -1);
      }

      else
      {
      }

      sub_248A12CF0();
    }

    (*(v11 + 56))(v7, 1, 1, v10);
    sub_248983B30(v7);
    (*(v11 + 8))(v13, v10);
  }
}

uint64_t sub_248987FF4()
{
  v1 = v0;
  v2 = *v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEB52D0, &qword_248A14980);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v12 - v4;
  sub_248988920();
  if (qword_27EEB51A0 != -1)
  {
    swift_once();
  }

  v6 = sub_248A122D0();
  __swift_project_value_buffer(v6, qword_27EEB9DC8);
  sub_2489BDB14(0xD000000000000062, 0x8000000248A18F40, 0x6D69547472617473, 0xEE00292874756F65);
  v7 = sub_248A12D40();
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  type metadata accessor for PeerConnection(255, *(v2 + 80), *(v2 + 88), v8);
  WitnessTable = swift_getWitnessTable();
  v10 = swift_allocObject();
  v10[2] = v1;
  v10[3] = WitnessTable;
  v10[4] = v1;
  v10[5] = v2;
  swift_retain_n();
  *(v1 + qword_27EEB5438) = sub_2489E5FD4(0, 0, v5, &unk_248A15100, v10);
}

uint64_t sub_2489881FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = *a4;
  v7 = sub_248A131D0();
  v5[4] = v7;
  v5[5] = *(v7 - 8);
  v5[6] = swift_task_alloc();
  type metadata accessor for PeerConnection(0, *(v6 + 80), *(v6 + 88), v8);
  swift_getWitnessTable();
  v10 = sub_248A12CD0();
  v5[7] = v10;
  v5[8] = v9;

  return MEMORY[0x2822009F8](sub_248988328, v10, v9);
}

uint64_t sub_248988328()
{
  v12 = v0;
  if (qword_27EEB51A0 != -1)
  {
    swift_once();
  }

  v1 = sub_248A122D0();
  *(v0 + 72) = __swift_project_value_buffer(v1, qword_27EEB9DC8);
  v2 = sub_248A122B0();
  v3 = sub_248A12E80();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136446210;
    v6 = sub_248A13570();
    v8 = sub_24897BC00(v6, v7, &v11);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_248975000, v2, v3, "[%{public}s] Peer connection activation timeout started", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x24C1E0A80](v5, -1, -1);
    MEMORY[0x24C1E0A80](v4, -1, -1);
  }

  sub_248A133B0();
  v9 = swift_task_alloc();
  *(v0 + 80) = v9;
  *v9 = v0;
  v9[1] = sub_248988524;

  return sub_248996414(0x8AC7230489E80000, 0, 0, 0, 1);
}

uint64_t sub_248988524()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 40);
  v5 = *(*v1 + 32);
  *(*v1 + 88) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 64);
  v7 = *(v2 + 56);
  if (v0)
  {
    v8 = sub_2489888BC;
  }

  else
  {
    v8 = sub_2489886BC;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_2489886BC()
{
  v14 = v0;
  v1 = v0[11];
  sub_248A12D90();
  if (v1)
  {

    v3 = v0[1];
  }

  else
  {
    if (!*(v0[2] + qword_27EEB5448))
    {
      sub_24898C460(0, v2);
      v4 = sub_248A122B0();
      v5 = sub_248A12E80();
      if (os_log_type_enabled(v4, v5))
      {
        v6 = swift_slowAlloc();
        v7 = swift_slowAlloc();
        v13 = v7;
        *v6 = 136446210;
        v8 = sub_248A13570();
        v10 = sub_24897BC00(v8, v9, &v13);

        *(v6 + 4) = v10;
        _os_log_impl(&dword_248975000, v4, v5, "[%{public}s] Peer connection activation timeout hit", v6, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v7);
        MEMORY[0x24C1E0A80](v7, -1, -1);
        MEMORY[0x24C1E0A80](v6, -1, -1);
      }

      sub_248A12D00();
      sub_24898D594(&qword_27EEB55F8, MEMORY[0x277D85678], MEMORY[0x277D85680]);
      v11 = swift_allocError();
      sub_248A12A70();
      sub_248987988(v11);
    }

    v3 = v0[1];
  }

  return v3();
}

uint64_t sub_2489888BC()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_248988920()
{
  if (*(v0 + qword_27EEB5438))
  {
    if (qword_27EEB51A0 != -1)
    {
      swift_once();
    }

    v1 = sub_248A122D0();
    __swift_project_value_buffer(v1, qword_27EEB9DC8);
    sub_2489BDB14(0xD000000000000062, 0x8000000248A18F40, 0x656D6954706F7473, 0xED0000292874756FLL);
    v2 = qword_27EEB5438;
    if (*(v0 + qword_27EEB5438))
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEB5EB0, &qword_248A15C20);
      sub_248A12D70();

      v2 = qword_27EEB5438;
    }

    *(v0 + v2) = 0;
  }
}

uint64_t sub_248988A60(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 16) = v4;
  *(v5 + 32) = a1;
  type metadata accessor for PeerConnection(0, *(*v4 + 80), *(*v4 + 88), a4);
  swift_getWitnessTable();
  v7 = sub_248A12CD0();

  return MEMORY[0x2822009F8](sub_248988B30, v7, v6);
}

uint64_t sub_248988B30()
{
  v16 = v0;
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
    v4 = *(v0 + 32);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v15 = v6;
    *v5 = 136446466;

    v7 = PeerConnection.description.getter();
    v9 = v8;

    v10 = sub_24897BC00(v7, v9, &v15);

    *(v5 + 4) = v10;
    *(v5 + 12) = 1026;
    *(v5 + 14) = v4;
    _os_log_impl(&dword_248975000, v2, v3, "[%{public}s] Transport item %{public}u", v5, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x24C1E0A80](v6, -1, -1);
    MEMORY[0x24C1E0A80](v5, -1, -1);
  }

  else
  {
  }

  v14 = (*MEMORY[0x277D05180] + MEMORY[0x277D05180]);
  v11 = swift_task_alloc();
  *(v0 + 24) = v11;
  *v11 = v0;
  v11[1] = sub_248988D64;
  v12 = *(v0 + 32);

  return v14(v12, 0, 0xF000000000000000);
}

uint64_t sub_248988D64(uint64_t a1, uint64_t a2)
{
  v10 = *v3;

  v8 = *(v10 + 8);
  if (!v2)
  {
    v6 = a1;
    v7 = a2;
  }

  return v8(v6, v7);
}

uint64_t sub_248988E74(uint64_t a1, uint64_t a2, int a3, const void *a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEB52D0, &qword_248A14980);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(a4);
  v11 = swift_allocObject();
  *(v11 + 16) = a3;
  *(v11 + 24) = v10;
  *(v11 + 32) = a1;
  v12 = sub_248A12D40();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_248A15160;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_248A15168;
  v14[5] = v13;

  sub_2489E4DAC(0, 0, v9, &unk_248A15170, v14);
}

uint64_t sub_248988FFC(int a1, void *aBlock, uint64_t a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);

  v5 = swift_task_alloc();
  v3[4] = v5;
  *v5 = v3;
  v5[1] = sub_2489890B8;

  return sub_248988A60(a1, v6, v7, v8);
}

uint64_t sub_2489890B8(uint64_t a1, unint64_t a2)
{
  v4 = v2;
  v7 = *v3;
  v8 = *v3;

  if (v4)
  {
    v9 = sub_248A11A30();

    v10 = v9;
    v11 = 0;
  }

  else if (a2 >> 60 == 15)
  {
    v10 = 0;
    v11 = 0;
    v9 = 0;
  }

  else
  {
    v12 = sub_248A11AF0();
    sub_24898C4E8(a1, a2);
    v11 = v12;
    v10 = 0;
    v9 = v12;
  }

  v13 = *(v7 + 24);
  (v13)[2](v13, v11, v10);

  _Block_release(v13);
  v14 = *(v8 + 8);

  return v14();
}

uint64_t sub_24898926C(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 32) = a3;
  *(v5 + 40) = v4;
  *(v5 + 24) = a2;
  *(v5 + 56) = a1;
  type metadata accessor for PeerConnection(0, *(*v4 + 80), *(*v4 + 88), a4);
  swift_getWitnessTable();
  v7 = sub_248A12CD0();

  return MEMORY[0x2822009F8](sub_248989340, v7, v6);
}

uint64_t sub_248989340()
{
  v32 = v0;
  if (qword_27EEB51A0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 32);
  v2 = *(v0 + 24);
  v3 = sub_248A122D0();
  __swift_project_value_buffer(v3, qword_27EEB9DC8);

  sub_24898C480(v2, v1);
  v4 = sub_248A122B0();
  v5 = sub_248A12E80();
  sub_24898C4E8(v2, v1);
  if (!os_log_type_enabled(v4, v5))
  {

    goto LABEL_8;
  }

  v6 = *(v0 + 32);
  v7 = *(v0 + 56);
  v8 = swift_slowAlloc();
  v9 = swift_slowAlloc();
  v31 = v9;
  *v8 = 136446722;
  v10 = PeerConnection.description.getter();
  v12 = v11;

  v13 = sub_24897BC00(v10, v12, &v31);

  *(v8 + 4) = v13;
  *(v8 + 12) = 1026;
  *(v8 + 14) = v7;
  *(v8 + 18) = 2082;
  if (v6 >> 60 == 15)
  {
    goto LABEL_5;
  }

  v23 = *(v0 + 32);
  v24 = v23 >> 62;
  if ((v23 >> 62) <= 1)
  {
    if (!v24)
    {
      v15 = BYTE6(v23);
      goto LABEL_6;
    }

LABEL_18:
    v28 = *(v0 + 24);
    v29 = *(v0 + 28);
    v27 = __OFSUB__(v29, v28);
    LODWORD(v15) = v29 - v28;
    if (v27)
    {
      __break(1u);
      return result;
    }

    v15 = v15;
    goto LABEL_6;
  }

  if (v24 == 2)
  {
    v25 = *(*(v0 + 24) + 16);
    v26 = *(*(v0 + 24) + 24);
    v27 = __OFSUB__(v26, v25);
    v15 = v26 - v25;
    if (!v27)
    {
      goto LABEL_6;
    }

    __break(1u);
    goto LABEL_18;
  }

LABEL_5:
  v15 = 0;
LABEL_6:
  *(v0 + 16) = v15;
  v16 = sub_248A132F0();
  v18 = sub_24897BC00(v16, v17, &v31);

  *(v8 + 20) = v18;
  _os_log_impl(&dword_248975000, v4, v5, "[%{public}s] Transport item %{public}u with data %{public}s", v8, 0x1Cu);
  swift_arrayDestroy();
  MEMORY[0x24C1E0A80](v9, -1, -1);
  MEMORY[0x24C1E0A80](v8, -1, -1);

LABEL_8:
  v30 = (*MEMORY[0x277D05180] + MEMORY[0x277D05180]);
  v19 = swift_task_alloc();
  *(v0 + 48) = v19;
  *v19 = v0;
  v19[1] = sub_248989634;
  v20 = *(v0 + 24);
  v21 = *(v0 + 32);
  v22 = *(v0 + 56);

  return v30(v22, v20, v21);
}

uint64_t sub_248989634(uint64_t a1, uint64_t a2)
{
  v10 = *v3;

  v8 = *(v10 + 8);
  if (!v2)
  {
    v6 = a1;
    v7 = a2;
  }

  return v8(v6, v7);
}

uint64_t sub_248989744(uint64_t a1, uint64_t a2, int a3, void *a4, const void *a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEB52D0, &qword_248A14980);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v19 - v10;
  v12 = _Block_copy(a5);
  v13 = swift_allocObject();
  *(v13 + 16) = a3;
  *(v13 + 24) = a4;
  *(v13 + 32) = v12;
  *(v13 + 40) = a1;
  v14 = sub_248A12D40();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_248A15140;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_248A15148;
  v16[5] = v15;
  v17 = a4;

  sub_2489E4DAC(0, 0, v11, &unk_248A15150, v16);
}

uint64_t sub_2489898D8(int a1, void *a2, void *aBlock, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  if (a2)
  {
    v7 = a2;

    a2 = sub_248A11B00();
    v9 = v8;
  }

  else
  {

    v9 = 0xF000000000000000;
  }

  v4[4] = a2;
  v4[5] = v9;
  v10 = swift_task_alloc();
  v4[6] = v10;
  *v10 = v4;
  v10[1] = sub_2489899D8;

  return sub_24898926C(a1, a2, v9, v11);
}

uint64_t sub_2489899D8(uint64_t a1, unint64_t a2)
{
  v4 = v2;
  v7 = *v3;
  v8 = *(*v3 + 40);
  v9 = *(*v3 + 32);
  v10 = *v3;

  sub_24898C4E8(v9, v8);
  if (v4)
  {
    v11 = sub_248A11A30();

    v12 = v11;
    v13 = 0;
  }

  else if (a2 >> 60 == 15)
  {
    v12 = 0;
    v13 = 0;
    v11 = 0;
  }

  else
  {
    v14 = sub_248A11AF0();
    sub_24898C4E8(a1, a2);
    v13 = v14;
    v12 = 0;
    v11 = v14;
  }

  v15 = *(v7 + 24);
  (v15)[2](v15, v13, v12);

  _Block_release(v15);
  v16 = *(v10 + 8);

  return v16();
}

uint64_t sub_248989BCC()
{
  sub_24898C374();
}

uint64_t PeerConnection.description.getter()
{
  v1 = v0;
  v2 = sub_248A11BC0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5400, &unk_248A14E10);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v21 - v7;
  v24 = 0;
  v25 = 0xE000000000000000;
  sub_248A13100();
  v9 = sub_248A13570();
  v11 = v10;

  v22 = v9;
  v23 = v11;
  MEMORY[0x24C1DF8B0](0x63656E6E6F432820, 0xEE00203A6E6F6974);
  v12 = *(v0 + qword_27EEB5440 + 8);
  ObjectType = swift_getObjectType();
  v24 = (*(v12 + 8))(ObjectType, v12);
  v14 = sub_248A132F0();
  MEMORY[0x24C1DF8B0](v14);

  MEMORY[0x24C1DF8B0](0x656369766544202CLL, 0xEA0000000000203ALL);
  v15 = qword_27EEB5408;
  swift_beginAccess();
  sub_24898D610(v1 + v15, v8, &qword_27EEB5400, &unk_248A14E10);
  if ((*(v3 + 48))(v8, 1, v2))
  {
    sub_248983734(v8, &qword_27EEB5400, &unk_248A14E10);
    v16 = 0xE500000000000000;
    v17 = 0x4449206F4ELL;
  }

  else
  {
    (*(v3 + 16))(v5, v8, v2);
    sub_248983734(v8, &qword_27EEB5400, &unk_248A14E10);
    v18 = sub_248A11B90();
    v16 = v19;
    (*(v3 + 8))(v5, v2);
    v17 = v18;
  }

  MEMORY[0x24C1DF8B0](v17, v16);

  MEMORY[0x24C1DF8B0](41, 0xE100000000000000);
  return v22;
}

uint64_t PeerConnection.send(_:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = *v1;
  v4 = sub_248A12670();
  v2[4] = v4;
  v2[5] = *(v4 - 8);
  v2[6] = swift_task_alloc();
  v5 = *(v3 + 80);
  v2[7] = v5;
  v2[8] = *(v5 - 8);
  v2[9] = swift_task_alloc();
  v6 = *(v3 + 88);
  v2[10] = v6;
  type metadata accessor for PeerConnection(0, v5, v6, v7);
  swift_getWitnessTable();
  v9 = sub_248A12CD0();

  return MEMORY[0x2822009F8](sub_24898A0D4, v9, v8);
}

uint64_t sub_24898A0D4()
{
  v30 = v0;
  if (qword_27EEB51A0 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  v3 = *(v0 + 56);
  v4 = *(v0 + 16);
  v5 = sub_248A122D0();
  __swift_project_value_buffer(v5, qword_27EEB9DC8);
  (*(v2 + 16))(v1, v4, v3);

  v6 = sub_248A122B0();
  v7 = sub_248A12E80();
  if (os_log_type_enabled(v6, v7))
  {
    v28 = *(v0 + 72);
    v9 = *(v0 + 56);
    v8 = *(v0 + 64);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v29[0] = v11;
    *v10 = 136446466;
    v12 = PeerConnection.description.getter();
    v14 = v13;

    v15 = sub_24897BC00(v12, v14, v29);

    *(v10 + 4) = v15;
    *(v10 + 12) = 1026;
    sub_248A13110();
    LODWORD(v15) = *(v0 + 100);
    (*(v8 + 8))(v28, v9);
    *(v10 + 14) = v15;
    _os_log_impl(&dword_248975000, v6, v7, "[%{public}s] Send item %{public}u", v10, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x24C1E0A80](v11, -1, -1);
    MEMORY[0x24C1E0A80](v10, -1, -1);
  }

  else
  {
    (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));
  }

  sub_248A12800();
  sub_248A13110();
  v16 = *(v0 + 88);
  if (qword_27EEB5180 != -1)
  {
    swift_once();
  }

  v17 = *(v0 + 48);
  v18 = *(v0 + 40);
  v27 = *(v0 + 32);
  v26 = *(v0 + 24);

  v19 = sub_248A127F0();
  v29[3] = MEMORY[0x277D84CC0];
  LODWORD(v29[0]) = v16;
  sub_248A12820();
  sub_248A13110();
  *(v0 + 96) = *(v0 + 92);
  sub_248A132F0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5468, &qword_248A14E70);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_248A14E00;
  *(v20 + 32) = v19;
  sub_248A12660();
  swift_allocObject();

  v21 = sub_248A12640();
  v22 = *(v26 + qword_27EEB5440 + 8);
  ObjectType = swift_getObjectType();
  (*(v18 + 104))(v17, *MEMORY[0x277CD8DA8], v27);
  (*(v22 + 64))(0, 0xF000000000000000, v21, 1, v17, ObjectType, v22);

  (*(v18 + 8))(v17, v27);

  v24 = *(v0 + 8);

  return v24();
}

uint64_t PeerConnection.send<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for PeerConnection(0, *(*v4 + 80), *(*v4 + 88), a4);
  swift_getWitnessTable();
  v6 = sub_248A12CD0();

  return MEMORY[0x2822009F8](sub_24898D6AC, v6, v5);
}

{
  type metadata accessor for PeerConnection(0, *(*v4 + 80), *(*v4 + 88), a4);
  swift_getWitnessTable();
  v6 = sub_248A12CD0();

  return MEMORY[0x2822009F8](sub_24898D6AC, v6, v5);
}

uint64_t PeerConnection.send<A>(_:payload:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = *v4;
  v7 = sub_248A12670();
  v5[7] = v7;
  v5[8] = *(v7 - 8);
  v5[9] = swift_task_alloc();
  v8 = sub_248A12F20();
  v5[10] = v8;
  v5[11] = *(v8 - 8);
  v5[12] = swift_task_alloc();
  v5[13] = swift_task_alloc();
  v5[14] = swift_task_alloc();
  v9 = *(v6 + 80);
  v5[15] = v9;
  v5[16] = *(v9 - 8);
  v5[17] = swift_task_alloc();
  v10 = *(v6 + 88);
  v5[18] = v10;
  type metadata accessor for PeerConnection(0, v9, v10, v11);
  swift_getWitnessTable();
  v13 = sub_248A12CD0();

  return MEMORY[0x2822009F8](sub_24898A8EC, v13, v12);
}

uint64_t sub_24898A8EC()
{
  v61 = v0;
  if (qword_27EEB51A0 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 128);
  v1 = *(v0 + 136);
  v4 = *(v0 + 112);
  v3 = *(v0 + 120);
  v5 = *(v0 + 80);
  v6 = *(v0 + 88);
  v8 = *(v0 + 16);
  v7 = *(v0 + 24);
  v9 = sub_248A122D0();
  __swift_project_value_buffer(v9, qword_27EEB9DC8);
  (*(v2 + 16))(v1, v8, v3);
  v10 = *(v6 + 16);
  v10(v4, v7, v5);

  v11 = sub_248A122B0();
  v12 = sub_248A12E80();
  if (os_log_type_enabled(v11, v12))
  {
    v51 = *(v0 + 136);
    v14 = *(v0 + 120);
    v13 = *(v0 + 128);
    v53 = *(v0 + 104);
    v54 = *(v0 + 112);
    v58 = v10;
    v16 = *(v0 + 80);
    v15 = *(v0 + 88);
    v57 = v12;
    v17 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v60[0] = v55;
    *v17 = 136446722;
    v18 = PeerConnection.description.getter();
    v20 = v19;

    v21 = sub_24897BC00(v18, v20, v60);

    *(v17 + 4) = v21;
    *(v17 + 12) = 1026;
    sub_248A13110();
    LODWORD(v21) = *(v0 + 164);
    (*(v13 + 8))(v51, v14);
    *(v17 + 14) = v21;
    *(v17 + 18) = 2082;
    v58(v53, v54, v16);
    v22 = sub_248A12B80();
    v24 = v23;
    v25 = *(v15 + 8);
    v26 = v16;
    v10 = v58;
    v25(v54, v26);
    v27 = sub_24897BC00(v22, v24, v60);

    *(v17 + 20) = v27;
    _os_log_impl(&dword_248975000, v11, v57, "[%{public}s] Send item %{public}u with payload %{public}s", v17, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x24C1E0A80](v55, -1, -1);
    MEMORY[0x24C1E0A80](v17, -1, -1);
  }

  else
  {
    v28 = *(v0 + 112);
    v29 = *(v0 + 80);
    v30 = *(v0 + 88);
    (*(*(v0 + 128) + 8))(*(v0 + 136), *(v0 + 120));

    v25 = *(v30 + 8);
    v25(v28, v29);
  }

  v31 = *(v0 + 96);
  v32 = *(v0 + 32);
  v10(v31, *(v0 + 24), *(v0 + 80));
  v33 = *(v32 - 8);
  if ((*(v33 + 48))(v31, 1, v32) == 1)
  {
    v25(*(v0 + 96), *(v0 + 80));
    v34 = 0;
    v35 = 0xF000000000000000;
  }

  else
  {
    v36 = sub_248A12280();
    v38 = v37;
    (*(v33 + 8))(*(v0 + 96), *(v0 + 32));
    v34 = v36;
    v35 = v38;
  }

  v56 = v34;
  v59 = v35;
  sub_24898AFDC(v34, v35);
  sub_248A12800();
  sub_248A13110();
  v39 = *(v0 + 152);
  if (qword_27EEB5180 != -1)
  {
    swift_once();
  }

  v40 = *(v0 + 64);
  v41 = *(v0 + 56);
  v50 = *(v0 + 48);
  v52 = *(v0 + 72);

  v42 = sub_248A127F0();
  v60[3] = MEMORY[0x277D84CC0];
  LODWORD(v60[0]) = v39;
  v43 = v42;
  sub_248A12820();
  sub_248A13110();
  *(v0 + 160) = *(v0 + 156);
  sub_248A132F0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5468, &qword_248A14E70);
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_248A14E00;
  *(v44 + 32) = v43;
  sub_248A12660();
  swift_allocObject();

  v45 = sub_248A12640();
  v46 = *(v50 + qword_27EEB5440 + 8);
  ObjectType = swift_getObjectType();
  (*(v40 + 104))(v52, *MEMORY[0x277CD8DA8], v41);
  (*(v46 + 64))(v56, v59, v45, 1, v52, ObjectType, v46);

  sub_24898C4E8(v56, v59);

  (*(v40 + 8))(v52, v41);

  v48 = *(v0 + 8);

  return v48();
}

void sub_24898AFDC(uint64_t a1, unint64_t a2)
{
  v37 = a1;
  v3 = sub_248A11A10();
  v35 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_248A119F0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_248A11A20();
  v36 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_248A120F0();
  v13 = sub_248A120E0();
  v14 = sub_248A12070();

  if ((v14 & 1) == 0)
  {
    return;
  }

  if (a2 >> 60 != 15)
  {
    v17 = a2 >> 62;
    v34 = a2;
    if ((a2 >> 62) > 1)
    {
      if (v17 != 2)
      {
        v18 = 0;
        goto LABEL_14;
      }

      v20 = *(v37 + 16);
      v19 = *(v37 + 24);
      v18 = v19 - v20;
      if (!__OFSUB__(v19, v20))
      {
        v21 = v37;
        v22 = a2;
        v23 = v37;
LABEL_12:
        sub_24898C494(v21, v22);
LABEL_15:
        v38 = v18;
        (*(v7 + 104))(v9, *MEMORY[0x277CC8DE8], v6);
        sub_248A11A00();
        sub_248A11960();
        (*(v35 + 8))(v5, v3);
        (*(v7 + 8))(v9, v6);
        sub_24898D540();
        sub_24898D594(&unk_27EEB5630, MEMORY[0x277CC8DF8], MEMORY[0x277CC8DF0]);
        sub_248A12F60();
        sub_24898C4E8(v23, v34);
        (*(v36 + 8))(v12, v10);
        v16 = v39[0];
        v15 = v39[1];
        goto LABEL_16;
      }

      __break(1u);
    }

    else
    {
      if (!v17)
      {
        v18 = BYTE6(a2);
LABEL_14:
        v23 = v37;
        goto LABEL_15;
      }

      if (!__OFSUB__(HIDWORD(v37), v37))
      {
        v18 = HIDWORD(v37) - v37;
        v21 = v37;
        v22 = a2;
        v23 = v37;
        goto LABEL_12;
      }
    }

    __break(1u);
    return;
  }

  v15 = 0xE400000000000000;
  v16 = 1701736302;
LABEL_16:
  if (qword_27EEB51A0 != -1)
  {
    swift_once();
  }

  v24 = sub_248A122D0();
  __swift_project_value_buffer(v24, qword_27EEB9DC8);

  v25 = sub_248A122B0();
  v26 = sub_248A12E80();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v39[0] = v28;
    *v27 = 136446466;
    v29 = PeerConnection.description.getter();
    v31 = v30;

    v32 = sub_24897BC00(v29, v31, v39);

    *(v27 + 4) = v32;
    *(v27 + 12) = 2082;
    v33 = sub_24897BC00(v16, v15, v39);

    *(v27 + 14) = v33;
    _os_log_impl(&dword_248975000, v25, v26, "[%{public}s] Payload size: %{public}s", v27, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1E0A80](v28, -1, -1);
    MEMORY[0x24C1E0A80](v27, -1, -1);
  }

  else
  {
  }
}

uint64_t PeerConnection.send<A, B>(_:payload:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for PeerConnection(0, *(*v4 + 80), *(*v4 + 88), a4);
  swift_getWitnessTable();
  v6 = sub_248A12CD0();

  return MEMORY[0x2822009F8](sub_24898D6AC, v6, v5);
}

{
  type metadata accessor for PeerConnection(0, *(*v4 + 80), *(*v4 + 88), a4);
  swift_getWitnessTable();
  v6 = sub_248A12CD0();

  return MEMORY[0x2822009F8](sub_24898B670, v6, v5);
}

uint64_t sub_24898B670()
{
  v1 = sub_248A12150();
  sub_24898D594(qword_27EEB5470, MEMORY[0x277D05138], MEMORY[0x277D05140]);
  swift_allocError();
  (*(*(v1 - 8) + 104))(v2, *MEMORY[0x277D05128], v1);
  swift_willThrow();
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_24898B770()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_248978D74;

  return sub_2489850E4(v1, v2, v3, v4);
}

uint64_t sub_24898B800(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2489839A0;

  return PeerConnection.send(_:)(a1);
}

uint64_t sub_24898B898()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2489839A0;

  return PeerConnection.send<A>(_:)(v1, v2, v3, v4);
}

uint64_t sub_24898B928()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2489839A0;

  return PeerConnection.send<A>(_:)(v1, v2, v3, v4);
}

uint64_t sub_24898B9B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_2489839A0;

  return PeerConnection.send<A>(_:payload:)(a1, a2, a3, a4);
}

uint64_t sub_24898BA78()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_248978D74;

  return PeerConnection.send<A, B>(_:payload:)(v1, v2, v3, v4);
}

uint64_t sub_24898BB0C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2489839A0;

  return PeerConnection.send<A, B>(_:payload:)(v1, v2, v3, v4);
}

uint64_t sub_24898BBE0(uint64_t a1, uint64_t a2, const char *a3, uint64_t (*a4)(void))
{
  if (qword_27EEB51A0 != -1)
  {
    swift_once();
  }

  v7 = sub_248A122D0();
  __swift_project_value_buffer(v7, qword_27EEB9DC8);

  swift_unknownObjectRetain();
  v8 = sub_248A122B0();
  v9 = sub_248A12E80();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v23 = v11;
    *v10 = 136446466;
    v12 = PeerConnection.description.getter();
    v22 = a4;
    v13 = a3;
    v15 = v14;

    v16 = sub_24897BC00(v12, v15, &v23);

    *(v10 + 4) = v16;
    *(v10 + 12) = 2082;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB55F0, &qword_248A150F0);
    v17 = sub_248A12B80();
    v19 = sub_24897BC00(v17, v18, &v23);

    *(v10 + 14) = v19;
    v20 = v13;
    a4 = v22;
    _os_log_impl(&dword_248975000, v8, v9, v20, v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1E0A80](v11, -1, -1);
    MEMORY[0x24C1E0A80](v10, -1, -1);
  }

  else
  {
  }

  return a4(a1);
}

uint64_t sub_24898BDFC(uint64_t a1, void (*a2)(uint64_t, uint64_t))
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

uint64_t sub_24898BE78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_allocObject();
  v12[2] = a4;
  v12[3] = a5;
  v12[4] = a6;
  v12[5] = a1;
  v12[6] = a2;

  v14 = a3;
  sub_24898D158(&v14);
}

uint64_t sub_24898BF28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28 = a4;
  v29 = a3;
  v26 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5400, &unk_248A14E10);
  MEMORY[0x28223BE20](v5 - 8);
  v27 = &v25 - v6;
  v25 = sub_248A12EA0();
  v7 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_248A12ED0();
  MEMORY[0x28223BE20](v10);
  v11 = sub_248A12A40();
  MEMORY[0x28223BE20](v11 - 8);
  sub_24898C37C();
  sub_248A12A20();
  v30 = MEMORY[0x277D84F90];
  sub_24898D594(&unk_28150F570, MEMORY[0x277D852D8], MEMORY[0x277D852E0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEB5F20, &unk_248A16460);
  sub_24898C3C8();
  sub_248A12FA0();
  (*(v7 + 104))(v9, *MEMORY[0x277D85268], v25);
  *(a2 + 24) = sub_248A12EE0();
  v12 = qword_27EEB5408;
  v13 = sub_248A11BC0();
  (*(*(v13 - 8) + 56))(a2 + v12, 1, 1, v13);
  sub_248A11DF0();
  v14 = qword_27EEB5418;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5420, &qword_248A14E20);
  (*(*(v15 - 8) + 56))(a2 + v14, 1, 1, v15);
  v16 = qword_27EEB5428;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5430, &qword_248A14E28);
  (*(*(v17 - 8) + 56))(a2 + v16, 1, 1, v17);
  *(a2 + qword_27EEB5438) = 0;
  v18 = (a2 + qword_27EEB5440);
  v19 = v28;
  *v18 = v26;
  v18[1] = v19;
  *(a2 + qword_27EEB5448) = 0;
  sub_248A122A0();
  swift_unknownObjectRetain();
  *(a2 + 16) = sub_248A12290();
  v20 = v19;
  v21 = *(v19 + 80);
  v22 = v27;
  v21(v29, v20);
  swift_unknownObjectRelease();
  v23 = qword_27EEB5408;
  swift_beginAccess();
  sub_24898D194(v22, a2 + v23, &qword_27EEB5400, &unk_248A14E10);
  swift_endAccess();
  return a2;
}

unint64_t sub_24898C37C()
{
  result = qword_28150F560;
  if (!qword_28150F560)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28150F560);
  }

  return result;
}

unint64_t sub_24898C3C8()
{
  result = qword_28150F580;
  if (!qword_28150F580)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27EEB5F20, &unk_248A16460);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28150F580);
  }

  return result;
}

unint64_t sub_24898C42C(unint64_t result)
{
  if (result >= 2)
  {
    return swift_unknownObjectRelease();
  }

  return result;
}

unint64_t sub_24898C460(unint64_t result, uint64_t a2)
{
  if (result >= 2)
  {
    return swift_unknownObjectRetain();
  }

  return result;
}

uint64_t sub_24898C480(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_24898C494(result, a2);
  }

  return result;
}

uint64_t sub_24898C494(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_24898C4E8(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_24898C4FC(result, a2);
  }

  return result;
}

uint64_t sub_24898C4FC(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

void sub_24898C554(uint64_t a1)
{
  sub_24898CD4C(319);
  if (v1 <= 0x3F)
  {
    sub_248A11E00();
    if (v2 <= 0x3F)
    {
      sub_24898CDA4(319, &qword_27EEB5500, &qword_27EEB5420, &qword_248A14E20);
      if (v3 <= 0x3F)
      {
        sub_24898CDA4(319, qword_27EEB5508, &qword_27EEB5430, &qword_248A14E28);
        if (v4 <= 0x3F)
        {
          swift_initClassMetadata2();
        }
      }
    }
  }
}

uint64_t dispatch thunk of PeerConnection.activate(transaction:)(uint64_t a1)
{
  v6 = (*(*v1 + 312) + **(*v1 + 312));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2489839A0;

  return v6(a1);
}

uint64_t dispatch thunk of PeerConnection.invalidate()()
{
  v4 = (*(*v0 + 320) + **(*v0 + 320));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_248978D74;

  return v4();
}

uint64_t dispatch thunk of PeerConnection.transport(_:)(uint64_t a1)
{
  v6 = (*(*v1 + 384) + **(*v1 + 384));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_24898D6B0;

  return v6(a1);
}

uint64_t dispatch thunk of PeerConnection.transport(_:data:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 392) + **(*v3 + 392));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_24898CC40;

  return v10(a1, a2, a3);
}

uint64_t sub_24898CC40(uint64_t a1, uint64_t a2)
{
  v7 = *v2;

  v5 = *(v7 + 8);

  return v5(a1, a2);
}

void sub_24898CD4C(uint64_t a1)
{
  if (!qword_27EEB54F8)
  {
    sub_248A11BC0();
    v1 = sub_248A12F20();
    if (!v2)
    {
      atomic_store(v1, &qword_27EEB54F8);
    }
  }
}

void sub_24898CDA4(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_248A12F20();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_24898CDF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_13DeviceSharing14PeerConnectionC16TransactionState33_28ACC8F9FF5F3BF728214C4F28B8E499LLOyx_G(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_24898CE64(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24898CEB8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void *sub_24898CF14(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

uint64_t sub_24898CF4C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_248978D74;

  return sub_2489881FC(a1, v4, v5, v7, v6);
}

uint64_t sub_24898D00C(uint64_t a1)
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
  v10[1] = sub_2489839A0;

  return sub_248987450(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_24898D194(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_24898D1FC()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_2489839A0;

  return sub_2489898D8(v2, v3, v4, v5);
}

uint64_t sub_24898D2C0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_2489839A0;

  return sub_2489E4BDC(v2, v3, v4);
}

uint64_t sub_24898D380(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2489839A0;

  return sub_2489E4CC4(a1, v4, v5, v6);
}

uint64_t sub_24898D44C()
{
  v2 = *(v0 + 16);
  v4 = *(v0 + 24);
  v3 = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_2489839A0;

  return sub_248988FFC(v2, v4, v3);
}

uint64_t objectdestroy_43Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

unint64_t sub_24898D540()
{
  result = qword_27EEB5628;
  if (!qword_27EEB5628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEB5628);
  }

  return result;
}

uint64_t sub_24898D594(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24898D610(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t EnrollmentAssetServer.storeEnrollmentAssets(assets:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_248A12480();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v4 = sub_248A11AC0();
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v5 = sub_248A12400();
  v2[15] = v5;
  v2[16] = *(v5 - 8);
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24898D874, 0, 0);
}

uint64_t sub_24898D874()
{
  v66 = v0;
  if (qword_28150F5E0 != -1)
  {
    swift_once();
  }

  v1 = v0[18];
  v3 = v0[15];
  v2 = v0[16];
  v4 = v0[2];
  v5 = sub_248A122D0();
  v0[19] = __swift_project_value_buffer(v5, qword_2815105A8);
  buf = *(v2 + 16);
  (buf)(v1, v4, v3);
  v6 = sub_248A122B0();
  v7 = sub_248A12E80();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[18];
  v11 = v0[15];
  v10 = v0[16];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v65[0] = v13;
    *v12 = 136446210;
    sub_24898F3E4(&unk_27EEB61B0, MEMORY[0x277D04EB8], MEMORY[0x277D04EC8]);
    v14 = sub_248A132F0();
    v16 = v15;
    v60 = *(v10 + 8);
    v60(v9, v11);
    v17 = sub_24897BC00(v14, v16, v65);

    *(v12 + 4) = v17;
    _os_log_impl(&dword_248975000, v6, v7, "storeEnrollmentAssets: %{public}s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x24C1E0A80](v13, -1, -1);
    MEMORY[0x24C1E0A80](v12, -1, -1);
  }

  else
  {

    v60 = *(v10 + 8);
    v60(v9, v11);
  }

  v18 = v0[14];
  v19 = v0[8];
  v20 = v0[9];
  v21 = v0[3];
  v22 = v21[11];
  v23 = v21[12];
  __swift_project_boxed_opaque_existential_1(v21 + 8, v22);
  sub_248A123F0();
  v24 = (*(v23 + 40))(v18, v22, v23);
  v25 = *(v20 + 8);
  v0[20] = v25;
  v0[21] = (v20 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v25(v18, v19);
  if (v24)
  {
    v26 = v21[11];
    v27 = v21[12];
    __swift_project_boxed_opaque_existential_1(v21 + 8, v26);
    (*(v27 + 32))(v26, v27);
    v29 = v0[12];
    v28 = v0[13];
    v30 = v0[3];
    v61 = v30[16];
    v62 = v0[8];
    v58 = v30[17];
    __swift_project_boxed_opaque_existential_1(v30 + 13, v61);
    sub_248A123F0();
    v32 = v21[11];
    v31 = v21[12];
    __swift_project_boxed_opaque_existential_1(v21 + 8, v32);
    (*(v31 + 8))(v32, v31);
    (*(v58 + 16))(v28, v29, v61);
    v25(v29, v62);
    v25(v28, v62);
    v33 = v21[11];
    v34 = v21[12];
    __swift_project_boxed_opaque_existential_1(v21 + 8, v33);
    v35 = v21[11];
    v36 = v21[12];
    __swift_project_boxed_opaque_existential_1(v21 + 8, v35);
    (*(v36 + 8))(v35, v36);
    v63 = (*(v34 + 80) + **(v34 + 80));
    v37 = swift_task_alloc();
    v0[22] = v37;
    *v37 = v0;
    v37[1] = sub_24898E028;
    v38 = v0[11];

    return v63(v38, v33, v34);
  }

  else
  {
    (buf)(v0[17], v0[2], v0[15]);
    v40 = sub_248A122B0();
    v41 = sub_248A12E60();
    v42 = os_log_type_enabled(v40, v41);
    v43 = v0[17];
    v44 = v0[15];
    if (v42)
    {
      v45 = v0[14];
      v46 = v0[8];
      v55 = v0[15];
      bufa = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v65[0] = v64;
      *bufa = 136446210;
      v59 = v41;
      sub_248A123F0();
      sub_24898F3E4(&qword_27EEB53D0, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
      v47 = v46;
      v48 = sub_248A132F0();
      v50 = v49;
      v25(v45, v47);
      v60(v43, v55);
      v51 = sub_24897BC00(v48, v50, v65);

      *(bufa + 4) = v51;
      _os_log_impl(&dword_248975000, v40, v59, "%{public}s does not exist", bufa, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v64);
      MEMORY[0x24C1E0A80](v64, -1, -1);
      MEMORY[0x24C1E0A80](bufa, -1, -1);
    }

    else
    {

      v60(v43, v44);
    }

    v52 = sub_248A12350();
    sub_24898F3E4(&qword_27EEB51C0, MEMORY[0x277D04E68], MEMORY[0x277D04E70]);
    swift_allocError();
    (*(*(v52 - 8) + 104))(v53, *MEMORY[0x277D04E60], v52);
    swift_willThrow();

    v54 = v0[1];

    return v54();
  }
}

uint64_t sub_24898E028(char a1)
{
  v4 = *v2;
  *(v4 + 184) = v1;

  v5 = *(v4 + 160);
  v6 = *(v4 + 88);
  v7 = *(v4 + 64);
  if (v1)
  {
    v5(v6, v7);
    v8 = sub_24898EA94;
  }

  else
  {
    *(v4 + 232) = a1 & 1;
    v5(v6, v7);
    v8 = sub_24898E1B0;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_24898E1B0(uint64_t a1)
{
  if (*(v1 + 232) == 1)
  {
    v2 = *(v1 + 24);
    v3 = v2[6];
    v4 = v2[7];
    __swift_project_boxed_opaque_existential_1(v2 + 3, v3);
    v5 = v2[11];
    v6 = v2[12];
    __swift_project_boxed_opaque_existential_1(v2 + 8, v5);
    (*(v6 + 8))(v5, v6);
    sub_248A123E0();
    sub_248A12AD0();

    v19 = (*(v4 + 24) + **(v4 + 24));
    v7 = swift_task_alloc();
    *(v1 + 192) = v7;
    *v7 = v1;
    v7[1] = sub_24898E51C;
    v8 = *(v1 + 80);
    v9 = *(v1 + 56);

    return v19(v8, v9, 1, v3, v4);
  }

  else
  {
    v11 = sub_248A122B0();
    v12 = sub_248A12E60();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_248975000, v11, v12, "Disk space is low. Cannot store BYOE assets on iOS device.", v13, 2u);
      MEMORY[0x24C1E0A80](v13, -1, -1);
    }

    v15 = *(v1 + 16);
    v14 = *(v1 + 24);

    v16 = sub_248A12350();
    sub_24898F3E4(&qword_27EEB51C0, MEMORY[0x277D04E68], MEMORY[0x277D04E70]);
    swift_allocError();
    (*(*(v16 - 8) + 104))(v17, *MEMORY[0x277D04E48], v16);
    swift_willThrow();
    sub_24898EC4C(v14, v15);

    v18 = *(v1 + 8);

    return v18();
  }
}

uint64_t sub_24898E51C()
{
  v2 = *v1;
  v3 = *(*v1 + 160);
  v4 = *(*v1 + 80);
  v5 = *(*v1 + 64);
  v6 = *(*v1 + 56);
  v7 = *(*v1 + 40);
  v8 = *(*v1 + 32);
  v2[25] = v0;

  v9 = *(v7 + 8);
  v2[26] = v9;
  v2[27] = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v9(v6, v8);
  v3(v4, v5);
  if (v0)
  {
    v10 = sub_24898EB70;
  }

  else
  {
    v10 = sub_24898E70C;
  }

  return MEMORY[0x2822009F8](v10, 0, 0);
}

uint64_t sub_24898E70C()
{
  v1 = v0[3];
  sub_248A12060();
  v2 = v1[22];
  v3 = v1[23];
  __swift_project_boxed_opaque_existential_1(v1 + 19, v2);
  v8 = (*(v3 + 8) + **(v3 + 8));
  v4 = swift_task_alloc();
  v0[28] = v4;
  *v4 = v0;
  v4[1] = sub_24898E854;
  v5 = v0[6];
  v6 = v0[2];

  return v8(v5, v6, v2, v3);
}

uint64_t sub_24898E854()
{
  v1 = *(*v0 + 208);
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 32);

  v1(v2, v3);

  return MEMORY[0x2822009F8](sub_24898E9B4, 0, 0);
}

uint64_t sub_24898E9B4()
{
  sub_24898EC4C(*(v0 + 24), *(v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24898EA94()
{
  sub_24898EC4C(*(v0 + 24), *(v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24898EB70()
{
  sub_24898EC4C(*(v0 + 24), *(v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

void sub_24898EC4C(void *a1, uint64_t a2)
{
  v28 = a2;
  v3 = sub_248A12400();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v27 = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_248A11AC0();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = v25 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = v25 - v14;
  sub_248A120F0();
  v16 = sub_248A120E0();
  v17 = sub_248A120C0();

  if (v17)
  {
    v25[4] = v10;
    v25[5] = v4;
    v25[6] = v3;
    v26 = v7;
    v19 = a1[11];
    v18 = a1[12];
    __swift_project_boxed_opaque_existential_1(a1 + 8, v19);
    v21 = a1[11];
    v20 = a1[12];
    __swift_project_boxed_opaque_existential_1(a1 + 8, v21);
    (*(v20 + 8))(v21, v20);
    (*(v18 + 56))(v15, v19, v18);
    v22 = *(v26 + 8);
    v22(v15, v6);
    v23 = a1[11];
    v24 = a1[12];
    __swift_project_boxed_opaque_existential_1(a1 + 8, v23);
    sub_248A123F0();
    (*(v24 + 56))(v13, v23, v24);
    v22(v13, v6);
  }
}

uint64_t EnrollmentAssetServer.localDataExists()()
{
  v1[2] = v0;
  v2 = sub_248A12480();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24898F244, 0, 0);
}

uint64_t sub_24898F244()
{
  if (qword_28150F5E0 != -1)
  {
    swift_once();
  }

  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[2];
  v4 = v0[3];
  v5 = sub_248A122D0();
  __swift_project_value_buffer(v5, qword_2815105A8);
  sub_2489BDB14(0xD000000000000075, 0x8000000248A19090, 0xD000000000000011, 0x8000000248A19110);
  v6 = v3[6];
  v7 = v3[7];
  __swift_project_boxed_opaque_existential_1(v3 + 3, v6);
  sub_248A12430();
  v8 = (*(v7 + 8))(v1, v6, v7);
  (*(v2 + 8))(v1, v4);
  v9 = *(v8 + 16);

  v10 = v0[1];

  return v10(v9 != 0);
}

uint64_t sub_24898F3E4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24898F42C()
{
  type metadata accessor for PeerProtocolFramer();
  sub_24898FB7C();
  sub_248A127D0();
  swift_allocObject();
  result = sub_248A127C0();
  qword_27EEB9D90 = result;
  return result;
}

uint64_t sub_24898F4AC()
{
  v0 = qword_27EEB5640;

  return v0;
}

uint64_t sub_24898F4E4(uint64_t a1)
{

  type metadata accessor for PeerProtocolFramer();

  return swift_allocObject();
}

uint64_t sub_24898F518@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CD8EB8];
  v3 = sub_248A127E0();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_24898F594()
{
  MEMORY[0x28223BE20](qword_27EEB5FC0);
  sub_248A12850();
  return qword_27EEB5FC0;
}

void sub_24898F70C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v33 = *MEMORY[0x277D85DE8];
  sub_248A12810();
  if (!v32)
  {
    sub_248983734(&v30, &qword_27EEB5610, &qword_248A15118);
    goto LABEL_9;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    if (qword_27EEB51A0 != -1)
    {
      swift_once();
    }

    v20 = sub_248A122D0();
    __swift_project_value_buffer(v20, qword_27EEB9DC8);

    v21 = sub_248A122B0();
    v22 = sub_248A12E60();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v30 = v24;
      *v23 = 136446466;
      *(v23 + 4) = sub_24897BC00(0xD000000000000036, 0x8000000248A19160, &v30);
      *(v23 + 12) = 2082;
      v29 = a2;
      sub_248A12800();

      v25 = sub_248A12B80();
      v27 = sub_24897BC00(v25, v26, &v30);

      *(v23 + 14) = v27;
      _os_log_impl(&dword_248975000, v21, v22, "%{public}s invalid message transport item %{public}s", v23, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1E0A80](v24, -1, -1);
      MEMORY[0x24C1E0A80](v23, -1, -1);
    }

    return;
  }

  if ((a3 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (!HIDWORD(a3))
  {
    v28 = a3;
    v30 = sub_2489D7B18(&v29, 4uLL);
    v31 = v5;
    v6 = sub_2489D7B18(&v28, 4uLL);
    v8 = v7;
    sub_248A11B10();
    sub_24898C4FC(v6, v8);
    v9 = v30;
    v10 = v31;
    sub_248A12860();
    sub_24898C4FC(v9, v10);
    sub_248A12870();
    return;
  }

  __break(1u);
  swift_once();
  v11 = sub_248A122D0();
  __swift_project_value_buffer(v11, qword_27EEB9DC8);
  v12 = a3;
  v13 = sub_248A122B0();
  v14 = sub_248A12E60();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v30 = v17;
    *v15 = 136446466;
    *(v15 + 4) = sub_24897BC00(0xD000000000000036, 0x8000000248A19160, &v30);
    *(v15 + 12) = 2114;
    v18 = a3;
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v15 + 14) = v19;
    *v16 = v19;
    _os_log_impl(&dword_248975000, v13, v14, "%{public}s failed to write output: %{public}@", v15, 0x16u);
    sub_248983734(v16, &qword_27EEB5600, &unk_248A15210);
    MEMORY[0x24C1E0A80](v16, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v17);
    MEMORY[0x24C1E0A80](v17, -1, -1);
    MEMORY[0x24C1E0A80](v15, -1, -1);
  }

  else
  {
  }
}

unint64_t sub_24898FB7C()
{
  result = qword_27EEB5650;
  if (!qword_27EEB5650)
  {
    type metadata accessor for PeerProtocolFramer();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEB5650);
  }

  return result;
}

uint64_t NSUbiquitousKeyValueStore.cloudDataExists()@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5658, &qword_248A15220);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v12 - v5;
  v7 = sub_248A12B30();
  [v2 longLongForKey_];

  sub_248A12190();
  v8 = sub_248A121B0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  if (v10(v6, 1, v8) != 1)
  {
    return (*(v9 + 32))(a1, v6, v8);
  }

  (*(v9 + 104))(a1, *MEMORY[0x277D05148], v8);
  result = (v10)(v6, 1, v8);
  if (result != 1)
  {
    return sub_24898FD6C(v6);
  }

  return result;
}

uint64_t sub_24898FD6C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5658, &qword_248A15220);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void NSUbiquitousKeyValueStore.setCloudDataExists(_:)()
{
  v1 = v0;
  v2 = sub_248A121A0();
  v3 = sub_248A12B30();
  [v1 setLongLong:v2 forKey:v3];
}

uint64_t NSUbiquitousKeyValueStore.associatedAVP()@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5658, &qword_248A15220);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v12 - v5;
  v7 = sub_248A12B30();
  [v2 longLongForKey_];

  sub_248A12190();
  v8 = sub_248A121B0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  if (v10(v6, 1, v8) != 1)
  {
    return (*(v9 + 32))(a1, v6, v8);
  }

  (*(v9 + 104))(a1, *MEMORY[0x277D05148], v8);
  result = (v10)(v6, 1, v8);
  if (result != 1)
  {
    return sub_24898FD6C(v6);
  }

  return result;
}

void NSUbiquitousKeyValueStore.setAssociatedAVP(_:)()
{
  v1 = v0;
  v2 = sub_248A121A0();
  v3 = sub_248A12B30();
  [v1 setLongLong:v2 forKey:v3];
}

Swift::Void __swiftcall NSUbiquitousKeyValueStore.createUniqueDeleteFromCloudEvent()()
{
  v1 = v0;
  v2 = sub_248A11BC0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_248A11BB0();
  v6 = sub_248A11B90();
  v8 = v7;
  (*(v3 + 8))(v5, v2);
  if (qword_28150F5E0 != -1)
  {
    swift_once();
  }

  v9 = sub_248A122D0();
  __swift_project_value_buffer(v9, qword_2815105A8);

  v10 = sub_248A122B0();
  v11 = sub_248A12E80();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v17 = v13;
    *v12 = 136446210;
    *(v12 + 4) = sub_24897BC00(v6, v8, &v17);
    _os_log_impl(&dword_248975000, v10, v11, "Setting deleteString to %{public}s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x24C1E0A80](v13, -1, -1);
    MEMORY[0x24C1E0A80](v12, -1, -1);
  }

  v14 = sub_248A12B30();

  v15 = sub_248A12B30();
  [v1 setString:v14 forKey:v15];
}

Swift::String_optional __swiftcall NSUbiquitousKeyValueStore.getUniqueDeleteFromCloudEvent()()
{
  v1 = sub_248A12B30();
  v2 = [v0 stringForKey_];

  if (v2)
  {
    v3 = sub_248A12B60();
    v5 = v4;

    if (qword_28150F5E0 != -1)
    {
      swift_once();
    }

    v6 = sub_248A122D0();
    __swift_project_value_buffer(v6, qword_2815105A8);

    v7 = sub_248A122B0();
    v8 = sub_248A12E80();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v14 = v10;
      *v9 = 136446210;
      *(v9 + 4) = sub_24897BC00(v3, v5, &v14);
      _os_log_impl(&dword_248975000, v7, v8, "Fetched deleteString KVS: %{public}s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x24C1E0A80](v10, -1, -1);
      MEMORY[0x24C1E0A80](v9, -1, -1);
    }
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  v11 = v3;
  v12 = v5;
  result.value._object = v12;
  result.value._countAndFlagsBits = v11;
  return result;
}

uint64_t sub_248990468@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5658, &qword_248A15220);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v12 - v4;
  v6 = *v1;
  v7 = sub_248A12B30();
  [v6 longLongForKey_];

  sub_248A12190();
  v8 = sub_248A121B0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  if (v10(v5, 1, v8) != 1)
  {
    return (*(v9 + 32))(a1, v5, v8);
  }

  (*(v9 + 104))(a1, *MEMORY[0x277D05148], v8);
  result = (v10)(v5, 1, v8);
  if (result != 1)
  {
    return sub_24898FD6C(v5);
  }

  return result;
}

void sub_248990604()
{
  v1 = *v0;
  v2 = sub_248A121A0();
  v3 = sub_248A12B30();
  [v1 setLongLong:v2 forKey:v3];
}

void sub_2489906B0()
{
  v1 = *v0;
  v2 = sub_248A121A0();
  v3 = sub_248A12B30();
  [v1 setLongLong:v2 forKey:v3];
}

void AVOutputContext.setOutputDevice(_:completionHandler:)(uint64_t a1, void *a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5660, &qword_248A15280);
  inited = swift_initStackObject();
  v8 = *MEMORY[0x277CB8640];
  *(inited + 32) = *MEMORY[0x277CB8640];
  *(inited + 16) = xmmword_248A14B30;
  *(inited + 64) = MEMORY[0x277D839B0];
  *(inited + 40) = 1;
  v9 = v8;
  sub_248991564(inited);
  swift_setDeallocating();
  sub_24899168C(inited + 32);
  type metadata accessor for AVOutputContextSetOutputDeviceOptionsKey(0);
  sub_2489916F4();
  v10 = sub_248A12A80();

  if (a2)
  {
    aBlock[4] = a2;
    aBlock[5] = a3;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2489909B0;
    aBlock[3] = &block_descriptor_0;
    a2 = _Block_copy(aBlock);
  }

  [v3 setOutputDevice:a1 options:v10 completionHandler:a2];
  _Block_release(a2);
}

void sub_2489909B0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t AVOutputContext.setOutputDevice(_:)(uint64_t a1)
{
  *(v2 + 224) = a1;
  *(v2 + 232) = v1;
  return MEMORY[0x2822009F8](sub_248990A38, 0, 0);
}

uint64_t sub_248990A38()
{
  v1 = v0[28];
  v2 = v0[29];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5660, &qword_248A15280);
  inited = swift_initStackObject();
  v4 = *MEMORY[0x277CB8640];
  *(inited + 32) = *MEMORY[0x277CB8640];
  *(inited + 16) = xmmword_248A14B30;
  *(inited + 64) = MEMORY[0x277D839B0];
  *(inited + 40) = 1;
  v5 = v4;
  sub_248991564(inited);
  swift_setDeallocating();
  sub_24899168C(inited + 32);
  type metadata accessor for AVOutputContextSetOutputDeviceOptionsKey(0);
  sub_2489916F4();
  v6 = sub_248A12A80();
  v0[30] = v6;

  v0[2] = v0;
  v0[7] = v0 + 27;
  v0[3] = sub_248990C1C;
  v7 = swift_continuation_init();
  v0[26] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5678, &qword_248A15298);
  v0[19] = MEMORY[0x277D85DD0];
  v0[20] = 1107296256;
  v0[21] = sub_248990D64;
  v0[22] = &block_descriptor_3;
  v0[23] = v7;
  [v2 setOutputDevice:v1 options:v6 completionHandler:v0 + 19];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_248990C1C()
{

  return MEMORY[0x2822009F8](sub_248990CFC, 0, 0);
}

uint64_t sub_248990CFC()
{
  v1 = *(v0 + 216);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_248990D64(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v4 = *v3;
  **(*(*v3 + 64) + 40) = a2;
  v5 = a2;

  return MEMORY[0x282200948](v4);
}

id sub_248990DC8()
{
  v1 = [*v0 outputDevice];

  return v1;
}

uint64_t sub_248990E24(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_248990EBC;

  return AVOutputContext.setOutputDevice(_:)(a1);
}

uint64_t sub_248990EBC(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

unint64_t sub_248990FB8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB56B8, &unk_248A16440);
    v3 = sub_248A13240();
    v4 = a1 + 32;

    while (1)
    {
      sub_24898D610(v4, &v13, &qword_27EEB56C0, &qword_248A14CB0);
      v5 = v13;
      v6 = v14;
      result = sub_2489A7D40(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_248983794(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2489910E8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEB56D0, &unk_248A15340);
    v3 = sub_248A13240();
    v4 = a1 + 32;

    while (1)
    {
      sub_24898D610(v4, v13, &qword_27EEB53A8, &qword_248A14CE8);
      result = sub_2489A7DB8(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_248983794(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_248991224(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27EEB56F0, &unk_248A15360);
    v3 = sub_248A13240();

    for (i = (a1 + 80); ; i += 7)
    {
      v5 = *(i - 6);
      v6 = *(i - 5);
      v7 = *(i - 4);
      v8 = *(i - 24);
      v10 = *(i - 2);
      v9 = *(i - 1);
      v11 = *i;
      sub_2489837A4(v5, v6, v7, *(i - 24));

      v12 = v11;
      result = sub_2489A7ED0(v5, v6, v7, v8);
      if (v14)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v3[6] + 32 * result;
      *v15 = v5;
      *(v15 + 8) = v6;
      *(v15 + 16) = v7;
      *(v15 + 24) = v8;
      v16 = (v3[7] + 24 * result);
      *v16 = v10;
      v16[1] = v9;
      v16[2] = v12;
      v17 = v3[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v3[2] = v19;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_24899137C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEB56E0, &qword_248A15350);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5A20, &qword_248A15358);
    v7 = sub_248A13240();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_24898D610(v9, v5, &unk_27EEB56E0, &qword_248A15350);
      result = sub_2489A7DFC(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_248A12480();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_248991564(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB56C8, &qword_248A15338);
    v3 = sub_248A13240();
    v4 = a1 + 32;

    while (1)
    {
      sub_24898D610(v4, &v11, &qword_27EEB5668, &qword_248A15288);
      v5 = v11;
      result = sub_2489A863C(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_248983794(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_24899168C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5668, &qword_248A15288);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2489916F4()
{
  result = qword_27EEB5670;
  if (!qword_27EEB5670)
  {
    type metadata accessor for AVOutputContextSetOutputDeviceOptionsKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEB5670);
  }

  return result;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  return sub_24897C864(a2 + 32, a1 + 32);
}

{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_destroy_helper_2(uint64_t a1)
{
  return __swift_destroy_boxed_opaque_existential_0((a1 + 32));
}

{
}

uint64_t dispatch thunk of ViewMirroringOutputCoordinating.setOutputDevice(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 24) + **(a3 + 24));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_248990EBC;

  return v9(a1, a2, a3);
}

unint64_t sub_2489918CC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5A40, &qword_248A16410);
    v3 = sub_248A13240();
    for (i = a1 + 32; ; i += 48)
    {
      sub_24898D610(i, &v11, &qword_27EEB56B0, &qword_248A15330);
      v5 = v11;
      result = sub_2489A86D0(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_248978948(&v12, v3[7] + 40 * result);
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      if (!--v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2489919EC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEB56A0, &unk_248A15320);
    v3 = sub_248A13240();

    for (i = (a1 + 40); ; i = (i + 24))
    {
      v5 = *(i - 8);
      v11 = *i;

      result = sub_2489A8714(v5);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + 16 * result) = v11;
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_248991AE8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5680, &qword_248A152F8);
    v3 = sub_248A13240();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_2489A7D40(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_248991BE4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5690, &qword_248A15308);
    v3 = sub_248A13240();
    for (i = a1 + 32; ; i += 40)
    {
      sub_24898D610(i, &v11, &qword_27EEB5698, &unk_248A15310);
      v5 = v11;
      result = sub_2489A87D4(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 4 * result) = v5;
      result = sub_248983794(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      if (!--v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_248991D00(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5688, &qword_248A15300);
    v3 = sub_248A13240();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_2489A7D40(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_248991E04(char a1)
{
  if (a1)
  {
    return 0x72656E657473696CLL;
  }

  else
  {
    return 0x726573776F7262;
  }
}

uint64_t sub_248991E3C(uint64_t a1, uint64_t a2)
{
  v2 = sub_248A13260();

  if (v2 == 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (v2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_248991E90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837F8];

  return MEMORY[0x2821FE040](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_248991F04(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A0](a1, a2, WitnessTable, v5);
}

uint64_t sub_248991F70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1B0](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_248991FE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A8](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_248992050@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_248991E3C(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_248992080@<X0>(uint64_t *a1@<X8>)
{
  result = sub_248991E04(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_2489920B4(uint64_t a1)
{
  (*(*(a1 - 8) + 16))(v12, v1, a1);
  if (v14)
  {
    if (v14 != 1)
    {
      return 0x6576697463616E49;
    }

    sub_248978948(v13, v11);
    sub_248A13100();
    v3 = 0x2820657669746341;
    v4 = 0xE800000000000000;
  }

  else
  {
    sub_248978948(v13, v11);
    sub_248A13100();
    v3 = 0x6974617669746341;
    v4 = 0xEC0000002820676ELL;
  }

  MEMORY[0x24C1DF8B0](v3, v4);
  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  type metadata accessor for PeerConnectionServiceCoordinator.Role(0, v6, v5, v7);
  swift_getWitnessTable();
  sub_248A13330();
  MEMORY[0x24C1DF8B0](8236, 0xE200000000000000);
  type metadata accessor for PeerConnection(0, v6, v5, v8);
  swift_getWitnessTable();
  sub_248A13330();
  MEMORY[0x24C1DF8B0](8236, 0xE200000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5780, &unk_248A155A8);
  sub_248A131F0();

  v9 = 0;
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v9;
}

uint64_t sub_2489922F4@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  swift_beginAccess();
  v5 = type metadata accessor for PeerConnectionServiceCoordinator.State(0, *(v3 + 80), *(v3 + 88), v4);
  return (*(*(v5 - 8) + 16))(a1, v1 + 14, v5);
}

uint64_t sub_2489923A4(uint64_t a1)
{
  v3 = *v1;
  swift_beginAccess();
  v5 = type metadata accessor for PeerConnectionServiceCoordinator.State(0, *(v3 + 80), *(v3 + 88), v4);
  (*(*(v5 - 8) + 40))(v1 + 14, a1, v5);
  return swift_endAccess();
}

uint64_t PeerConnectionServiceCoordinator.__allocating_init(nearbyDeviceProviding:rapportXPCEventServer:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_allocObject();
  v8 = sub_2489968CC(a1, a2, a3, a4);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v8;
}

uint64_t PeerConnectionServiceCoordinator.init(nearbyDeviceProviding:rapportXPCEventServer:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_2489968CC(a1, a2, a3, a4);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v4;
}

uint64_t sub_24899252C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x2822009F8](sub_248992550, 0, 0);
}

uint64_t sub_248992550()
{
  v1 = v0[3];
  v0[5] = swift_getObjectType();
  v0[6] = *(v1 + 24);
  v0[7] = (v1 + 24) & 0xFFFFFFFFFFFFLL | 0xCD1A000000000000;

  v3 = sub_248A12CD0();

  return MEMORY[0x2822009F8](sub_248992604, v3, v2);
}

uint64_t sub_248992604()
{
  (*(v0 + 48))(&unk_248A15610, *(v0 + 32), *(v0 + 40), *(v0 + 24));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24899268C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_248992728;

  return sub_2489929F0(1, a1);
}

uint64_t sub_248992728()
{
  v2 = *v1;
  *(v2 + 24) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_24899285C, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_24899285C()
{
  if (qword_28150F5F0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 24);
  v2 = sub_248A122D0();
  __swift_project_value_buffer(v2, qword_2815105C0);
  v3 = v1;
  v4 = sub_248A122B0();
  v5 = sub_248A12E60();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 24);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_248975000, v4, v5, "Error initiating peer connection: %@", v8, 0xCu);
    sub_24897CA88(v9);
    MEMORY[0x24C1E0A80](v9, -1, -1);
    MEMORY[0x24C1E0A80](v8, -1, -1);
  }

  else
  {
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_2489929F0(char a1, uint64_t a2)
{
  *(v3 + 344) = a2;
  *(v3 + 352) = v2;
  *(v3 + 73) = a1;
  *(v3 + 360) = *v2;
  *(v3 + 368) = *v2;
  v4 = sub_248A131D0();
  *(v3 + 376) = v4;
  *(v3 + 384) = *(v4 - 8);
  *(v3 + 392) = swift_task_alloc();
  v5 = sub_248A134B0();
  *(v3 + 400) = v5;
  *(v3 + 408) = *(v5 - 8);
  *(v3 + 416) = swift_task_alloc();
  v6 = sub_248A13310();
  *(v3 + 424) = v6;
  *(v3 + 432) = *(v6 - 8);
  *(v3 + 440) = swift_task_alloc();
  v7 = sub_248A134D0();
  *(v3 + 448) = v7;
  *(v3 + 456) = *(v7 - 8);
  *(v3 + 464) = swift_task_alloc();
  v8 = sub_248A13510();
  *(v3 + 472) = v8;
  *(v3 + 480) = *(v8 - 8);
  *(v3 + 488) = swift_task_alloc();
  v9 = sub_248A13520();
  *(v3 + 496) = v9;
  *(v3 + 504) = *(v9 - 8);
  *(v3 + 512) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_248992CD0, v2, 0);
}

uint64_t sub_248992CD0()
{
  v15 = v0;
  if (qword_27EEB51A0 != -1)
  {
    swift_once();
  }

  *(v0 + 76) = *MEMORY[0x277D84680];
  *(v0 + 520) = 1;
  v1 = sub_248A122D0();
  *(v0 + 528) = __swift_project_value_buffer(v1, qword_27EEB9DC8);
  v2 = sub_248A122B0();
  v3 = sub_248A12E80();
  if (os_log_type_enabled(v2, v3))
  {
    if (*(v0 + 73))
    {
      v4 = 0xE800000000000000;
    }

    else
    {
      v4 = 0xE700000000000000;
    }

    if (*(v0 + 73))
    {
      v5 = 0x72656E657473696CLL;
    }

    else
    {
      v5 = 0x726573776F7262;
    }

    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136446722;
    v8 = sub_248A13570();
    v10 = sub_24897BC00(v8, v9, &v14);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2082;
    v11 = sub_24897BC00(v5, v4, &v14);

    *(v6 + 14) = v11;
    *(v6 + 22) = 2050;
    *(v6 + 24) = 1;
    _os_log_impl(&dword_248975000, v2, v3, "[%{public}s] Initiating peer connection with role %{public}s (attempt #: %{public}ld)", v6, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C1E0A80](v7, -1, -1);
    MEMORY[0x24C1E0A80](v6, -1, -1);
  }

  v12 = swift_task_alloc();
  *(v0 + 536) = v12;
  *v12 = v0;
  v12[1] = sub_248992F30;

  return sub_2489954CC();
}

uint64_t sub_248992F30()
{
  v2 = *v1;
  v2[68] = v0;

  if (v0)
  {

    v3 = v2[1];

    return v3();
  }

  else
  {
    v5 = v2[44];

    return MEMORY[0x2822009F8](sub_2489930C0, v5, 0);
  }
}

uint64_t sub_2489930C0(uint64_t a1)
{
  v38 = v1;
  v2 = *(v1 + 73);
  v3 = sub_248A122B0();
  v4 = sub_248A12E80();
  v5 = os_log_type_enabled(v3, v4);
  if (v2)
  {
    if (v5)
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v37[0] = v7;
      *v6 = 136446210;
      v8 = sub_248A13570();
      v10 = sub_24897BC00(v8, v9, v37);

      *(v6 + 4) = v10;
      _os_log_impl(&dword_248975000, v3, v4, "[%{public}s] Initializing listener", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v7);
      MEMORY[0x24C1E0A80](v7, -1, -1);
      MEMORY[0x24C1E0A80](v6, -1, -1);
    }

    v11 = *(v1 + 544);
    v12 = *(v1 + 368);
    v13 = *(v12 + 80);
    *(v1 + 600) = v13;
    v14 = *(v12 + 88);
    *(v1 + 608) = v14;
    type metadata accessor for PeerListener(0, v13, v14, v15);
    *(v1 + 616) = sub_2489B7B98();
    sub_2489B7BD0();
    if (v11)
    {

      v16 = *(v1 + 8);

      return v16();
    }

    else
    {
      v36 = swift_task_alloc();
      *(v1 + 624) = v36;
      *v36 = v1;
      v36[1] = sub_2489939B4;

      return sub_2489B8100();
    }
  }

  else
  {
    if (v5)
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v37[0] = v19;
      *v18 = 136446210;
      v20 = sub_248A13570();
      v22 = sub_24897BC00(v20, v21, v37);

      *(v18 + 4) = v22;
      _os_log_impl(&dword_248975000, v3, v4, "[%{public}s] Initializing browser", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v19);
      MEMORY[0x24C1E0A80](v19, -1, -1);
      MEMORY[0x24C1E0A80](v18, -1, -1);
    }

    v23 = *(v1 + 368);
    v24 = *(v1 + 352);
    v25 = *(v23 + 80);
    *(v1 + 552) = v25;
    v26 = *(v23 + 88);
    *(v1 + 560) = v26;
    type metadata accessor for PeerBrowser(0, v25, v26, v27);
    *(v1 + 568) = PeerBrowser.__allocating_init(nearbyDeviceProvider:)(*(v24 + 184), *(v24 + 192));
    v28 = swift_unknownObjectRetain();
    sub_2489BACD0(v28, v29, v30, v31);
    v32 = swift_task_alloc();
    *(v1 + 576) = v32;
    *v32 = v1;
    v32[1] = sub_248993464;

    return sub_2489BB00C(v32, v33, v34, v35);
  }
}