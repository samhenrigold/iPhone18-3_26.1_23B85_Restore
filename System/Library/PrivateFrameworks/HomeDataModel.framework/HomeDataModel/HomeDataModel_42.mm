uint64_t sub_1D1A79D70()
{
  v2 = v0[18];
  v1 = v0[19];
  v0[2] = v0;
  v0[3] = sub_1D1A7CC68;
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643C90, &qword_1D1E74590);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1D17B04C8;
  v0[13] = &block_descriptor_71;
  v0[14] = v3;
  [v2 removeRoom:v1 completionHandler:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

id sub_1D1A79E90@<X0>(void *a1@<X8>)
{
  result = [v1 roomForEntireHome];
  *a1 = result;
  return result;
}

uint64_t sub_1D1A79ECC(uint64_t a1, void *a2)
{
  v3[18] = a1;
  v3[19] = v2;
  v3[20] = *a2;
  return MEMORY[0x1EEE6DFA0](sub_1D1A79EF4, 0, 0);
}

uint64_t sub_1D1A79EF4()
{
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[18];
  v0[2] = v0;
  v0[3] = sub_1D1A7CC68;
  v4 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643C90, &qword_1D1E74590);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1D17B04C8;
  v0[13] = &block_descriptor_67;
  v0[14] = v4;
  [v2 assignAccessory:v3 toRoom:v1 completionHandler:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1D1A7A01C(uint64_t a1)
{
  *(v2 + 144) = a1;
  *(v2 + 152) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1D1A7A03C, 0, 0);
}

uint64_t sub_1D1A7A03C()
{
  v2 = v0[18];
  v1 = v0[19];
  v0[2] = v0;
  v0[3] = sub_1D1A7CC68;
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643C90, &qword_1D1E74590);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1D17B04C8;
  v0[13] = &block_descriptor_63_0;
  v0[14] = v3;
  [v1 unblockAccessory:v2 completionHandler:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1D1A7A15C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[21] = a3;
  v4[22] = v3;
  v4[19] = a1;
  v4[20] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D1A7A180, 0, 0);
}

uint64_t sub_1D1A7A180()
{
  v1 = v0[22];
  v2 = sub_1D1E677EC();
  v0[23] = v2;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1D1A7CC1C;
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649B60, &qword_1D1E959B8);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1D19F40C0;
  v0[13] = &block_descriptor_59;
  v0[14] = v3;
  [v1 addZoneWithName:v2 completionHandler:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1D1A7A2B8(uint64_t *a1)
{
  v3 = *a1;
  *(v2 + 144) = v1;
  *(v2 + 152) = v3;
  return MEMORY[0x1EEE6DFA0](sub_1D1A7A2DC, 0, 0);
}

uint64_t sub_1D1A7A2DC()
{
  v2 = v0[18];
  v1 = v0[19];
  v0[2] = v0;
  v0[3] = sub_1D1A7CC68;
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643C90, &qword_1D1E74590);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1D17B04C8;
  v0[13] = &block_descriptor_55;
  v0[14] = v3;
  [v2 removeZone:v1 completionHandler:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1D1A7A3FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[21] = a3;
  v4[22] = v3;
  v4[19] = a1;
  v4[20] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D1A7A420, 0, 0);
}

uint64_t sub_1D1A7A420()
{
  v1 = v0[22];
  v2 = sub_1D1E677EC();
  v0[23] = v2;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1D1A7CC1C;
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649B58, &qword_1D1E959B0);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1D19F40C0;
  v0[13] = &block_descriptor_51;
  v0[14] = v3;
  [v1 addServiceGroupWithName:v2 completionHandler:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1D1A7A558(uint64_t *a1)
{
  v3 = *a1;
  *(v2 + 144) = v1;
  *(v2 + 152) = v3;
  return MEMORY[0x1EEE6DFA0](sub_1D1A7A57C, 0, 0);
}

uint64_t sub_1D1A7A57C()
{
  v2 = v0[18];
  v1 = v0[19];
  v0[2] = v0;
  v0[3] = sub_1D1A7CC68;
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643C90, &qword_1D1E74590);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1D17B04C8;
  v0[13] = &block_descriptor_47;
  v0[14] = v3;
  [v2 removeServiceGroup:v1 completionHandler:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1D1A7A6BC()
{
  v1 = v0[18];
  v0[2] = v0;
  v0[3] = sub_1D1A7CC68;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643C90, &qword_1D1E74590);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1D17B04C8;
  v0[13] = &block_descriptor_43_0;
  v0[14] = v2;
  [v1 manageUsersWithCompletionHandler_];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

id sub_1D1A7A7D0()
{
  v1 = [v0 userActionPredictionController];

  return v1;
}

uint64_t sub_1D1A7A808(char a1, char a2)
{
  *(v3 + 152) = v2;
  *(v3 + 161) = a2;
  *(v3 + 160) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D1A7A830, 0, 0);
}

uint64_t sub_1D1A7A830()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 161);
  v3 = *(v0 + 160);
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 144;
  *(v0 + 24) = sub_1D1A740FC;
  v4 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649B50, &qword_1D1EB26F0);
  *(v0 + 80) = MEMORY[0x1E69E9820];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_1D1A7A964;
  *(v0 + 104) = &block_descriptor_40;
  *(v0 + 112) = v4;
  [v1 enableNotifications:v3 includeAppleMediaAccessoryNotifications:v2 completionHandler:v0 + 80];

  return MEMORY[0x1EEE6DEC8](v0 + 16);
}

uint64_t sub_1D1A7A964(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v4 = *v3;
  **(*(*v3 + 64) + 40) = a2;
  v5 = a2;

  return MEMORY[0x1EEE6DED8](v4);
}

uint64_t sub_1D1A7AA00(uint64_t a1, uint64_t a2, SEL *a3, unint64_t *a4, void *a5)
{
  v8 = [*v5 *a3];
  sub_1D1741B10(0, a4, a5);
  v9 = sub_1D1E67C1C();

  return v9;
}

uint64_t sub_1D1A7AA6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[19] = a1;
  v4[20] = a2;
  v5 = *v3;
  v4[21] = a3;
  v4[22] = v5;
  return MEMORY[0x1EEE6DFA0](sub_1D1A7AA94, 0, 0);
}

uint64_t sub_1D1A7AA94()
{
  v1 = v0[22];
  v2 = sub_1D1E677EC();
  v0[23] = v2;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1D1A7ABCC;
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649B48, &qword_1D1E959A8);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1D19F40C0;
  v0[13] = &block_descriptor_36_0;
  v0[14] = v3;
  [v1 addActionSetWithName:v2 completionHandler:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1D1A7ABCC()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *v0;
  v4 = *(*v0 + 184);
  if (*(v1 + 48))
  {
    swift_willThrow();
  }

  else
  {
    v7 = *(v2 + 144);
    v6 = *(v2 + 152);

    *v6 = v7;
  }

  v5 = *(v3 + 8);

  return v5();
}

uint64_t sub_1D1A7AD0C(void *a1)
{
  v3 = *v1;
  *(v2 + 144) = *a1;
  *(v2 + 152) = v3;
  return MEMORY[0x1EEE6DFA0](sub_1D1A7AD34, 0, 0);
}

uint64_t sub_1D1A7AD34()
{
  v2 = v0[18];
  v1 = v0[19];
  v0[2] = v0;
  v0[3] = sub_1D1A7CC68;
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643C90, &qword_1D1E74590);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1D17B04C8;
  v0[13] = &block_descriptor_32_2;
  v0[14] = v3;
  [v1 removeActionSet:v2 completionHandler:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1D1A7AE54(void *a1)
{
  v3 = *v1;
  *(v2 + 144) = *a1;
  *(v2 + 152) = v3;
  return MEMORY[0x1EEE6DFA0](sub_1D1A7AE7C, 0, 0);
}

uint64_t sub_1D1A7AE7C()
{
  v2 = v0[18];
  v1 = v0[19];
  v0[2] = v0;
  v0[3] = sub_1D1A7CC68;
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643C90, &qword_1D1E74590);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1D17B04C8;
  v0[13] = &block_descriptor_28_1;
  v0[14] = v3;
  [v1 executeActionSet:v2 completionHandler:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

void sub_1D1A7AF9C(void *a3@<X8>)
{
  v5 = *v3;
  v6 = sub_1D1E677EC();
  v7 = [v5 builtinActionSetOfType_];

  *a3 = v7;
}

uint64_t sub_1D1A7AFF8(void *a1)
{
  v3 = *v1;
  *(v2 + 144) = *a1;
  *(v2 + 152) = v3;
  return MEMORY[0x1EEE6DFA0](sub_1D1A7B020, 0, 0);
}

uint64_t sub_1D1A7B020()
{
  v2 = v0[18];
  v1 = v0[19];
  v0[2] = v0;
  v0[3] = sub_1D1A77AD8;
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643C90, &qword_1D1E74590);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1D17B04C8;
  v0[13] = &block_descriptor_24_1;
  v0[14] = v3;
  [v1 addTrigger:v2 completionHandler:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1D1A7B140(void *a1)
{
  v3 = *v1;
  *(v2 + 144) = *a1;
  *(v2 + 152) = v3;
  return MEMORY[0x1EEE6DFA0](sub_1D1A7B168, 0, 0);
}

uint64_t sub_1D1A7B168()
{
  v2 = v0[18];
  v1 = v0[19];
  v0[2] = v0;
  v0[3] = sub_1D1A7CC68;
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643C90, &qword_1D1E74590);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1D17B04C8;
  v0[13] = &block_descriptor_39;
  v0[14] = v3;
  [v1 removeTrigger:v2 completionHandler:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1D1A7B288()
{
  v1 = [*v0 matterControllerID];
  v2 = sub_1D1E6781C();

  return v2;
}

uint64_t sub_1D1A7B2E0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6460A8, &qword_1D1E7E4F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D1A7B3D0(void *a1)
{
  a1[2] = sub_1D174A5B8(&qword_1EE079C20, &qword_1EE07B620, 0x1E696CB98, &protocol conformance descriptor for HMHome);
  a1[3] = sub_1D174A5B8(&qword_1EE079C18, &qword_1EE07B620, 0x1E696CB98, &protocol conformance descriptor for HMHome);
  result = sub_1D174A5B8(&qword_1EE079C08, &qword_1EE07B620, 0x1E696CB98, MEMORY[0x1E69E81B8]);
  a1[4] = result;
  return result;
}

uint64_t sub_1D1A7B588(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();

  return swift_getAssociatedConformanceWitness();
}

uint64_t dispatch thunk of BasicHomeProtocol.updateName(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 232) + **(a4 + 232));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1D17C4CF0;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of BasicHomeProtocol.addRoom(named:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 240) + **(a5 + 240));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1D17C4CF0;

  return v13(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of BasicHomeProtocol.removeRoom(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 248) + **(a3 + 248));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1D17C4CF0;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of BasicHomeProtocol.assignAccessory(_:to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 264) + **(a4 + 264));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1D17C4CF0;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of BasicHomeProtocol.unblockAccessory(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 272) + **(a3 + 272));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1D17C4CF0;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of BasicHomeProtocol.addZone(named:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 280) + **(a5 + 280));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1D17C4CF0;

  return v13(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of BasicHomeProtocol.removeZone(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 288) + **(a3 + 288));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1D17C4CF0;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of BasicHomeProtocol.addServiceGroup(named:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 296) + **(a5 + 296));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1D17C4CF0;

  return v13(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of BasicHomeProtocol.removeServiceGroup(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 304) + **(a3 + 304));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1D17C4CF0;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of BasicHomeProtocol.manageUsers()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 312) + **(a2 + 312));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D17C4CF0;

  return v7(a1, a2);
}

uint64_t dispatch thunk of BasicHomeProtocol.enableNotifications(_:includeAppleMediaAccessoryNotifications:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 328) + **(a4 + 328));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1D19C8EA0;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of AutomationHomeProtocol.addActionSet(named:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 56) + **(a5 + 56));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1D17C4CF0;

  return v13(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of AutomationHomeProtocol.removeActionSet(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 64) + **(a3 + 64));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1D17C4CF0;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of AutomationHomeProtocol.executeActionSet(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 72) + **(a3 + 72));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1D17C4CF0;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of AutomationHomeProtocol.addTrigger(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 88) + **(a3 + 88));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1D17C4BFC;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of AutomationHomeProtocol.removeTrigger(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 96) + **(a3 + 96));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1D17C4CF0;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of MatterHomeProtocol.device(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return (*(a3 + 48))(a1, a2);
}

{
  return (*(a3 + 56))(a1, a2);
}

uint64_t block_copy_helper_81(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroyTm_6()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

unint64_t sub_1D1A7CC6C(uint64_t a1)
{
  result = sub_1D1791558();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D1A7CCC4()
{
  v1 = [v0 mediaUniqueIdentifier];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1D1E6781C();

  return v3;
}

id sub_1D1A7CD3C()
{
  v1 = [v0 audioControl];

  return v1;
}

uint64_t sub_1D1A7CD74()
{
  v1 = [v0 playbackStateDescription];
  v2 = sub_1D1E6781C();

  return v2;
}

uint64_t sub_1D1A7CDF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, SEL *a6)
{
  v10[4] = a1;
  v10[5] = a2;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1D1C40BA8;
  v10[3] = a5;
  v8 = _Block_copy(v10);

  [v6 *a6];
  _Block_release(v8);
}

uint64_t sub_1D1A7CEBC()
{
  v1 = v0[18];
  v0[2] = v0;
  v0[3] = sub_1D1A7CC68;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643C90, &qword_1D1E74590);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1D17B04C8;
  v0[13] = &block_descriptor_6_5;
  v0[14] = v2;
  [v1 resumeWithCompletionHandler_];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1D1A7CFF0()
{
  v1 = v0[18];
  v0[2] = v0;
  v0[3] = sub_1D1A77AD8;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643C90, &qword_1D1E74590);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1D17B04C8;
  v0[13] = &block_descriptor_40;
  v0[14] = v2;
  [v1 pauseWithCompletionHandler_];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t dispatch thunk of MediaSessionProtocol.resume()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 112) + **(a2 + 112));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D17C4CF0;

  return v7(a1, a2);
}

uint64_t dispatch thunk of MediaSessionProtocol.pause()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 120) + **(a2 + 120));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D17C4BFC;

  return v7(a1, a2);
}

uint64_t block_copy_helper_11_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_1D1A7D484()
{
  v1 = [*v0 mediaSession];

  return v1;
}

unint64_t sub_1D1A7D4E8()
{
  result = qword_1EC6497F0;
  if (!qword_1EC6497F0)
  {
    sub_1D190A1D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6497F0);
  }

  return result;
}

uint64_t sub_1D1A7D540()
{
  v1 = [*v0 name];
  v2 = sub_1D1E6781C();

  return v2;
}

uint64_t sub_1D1A7D598()
{
  v1 = [*v0 accessories];
  sub_1D190A1D0();
  v2 = sub_1D1E67C1C();

  return v2;
}

unint64_t sub_1D1A7D6B0()
{
  result = qword_1EC649B78;
  if (!qword_1EC649B78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC649B80, &unk_1D1E95B60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC649B78);
  }

  return result;
}

id sub_1D1A7D72C()
{
  v1 = [*v0 accessory];

  return v1;
}

uint64_t sub_1D1A7D770(uint64_t a1, uint64_t a2, SEL *a3)
{
  v4 = [*v3 *a3];
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = sub_1D1E6781C();

  return v6;
}

void sub_1D1A7D7D4(uint64_t *a1@<X8>)
{
  v3 = [*v1 characteristics];
  sub_1D1741B10(0, &qword_1EE079CD0, 0x1E696CB38);
  v4 = sub_1D1E67C1C();

  *a1 = v4;
}

uint64_t sub_1D1A7D920()
{
  v1 = [*v0 actionSets];
  sub_1D1A7DA80();
  v2 = sub_1D1E67C1C();

  return v2;
}

uint64_t sub_1D1A7D978@<X0>(uint64_t a1@<X8>)
{
  v3 = [*v1 lastFireDate];
  if (v3)
  {
    v4 = v3;
    sub_1D1E669BC();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_1D1E669FC();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, 1, v6);
}

unint64_t sub_1D1A7DA80()
{
  result = qword_1EE07B680;
  if (!qword_1EE07B680)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE07B680);
  }

  return result;
}

void sub_1D1A7DACC()
{
  v1 = [v0 predictionTargetUUID];
  sub_1D1E66A5C();
}

uint64_t sub_1D1A7DB2C@<X0>(uint64_t a1@<X8>)
{
  v3 = [v1 targetServiceUUID];
  if (v3)
  {
    v4 = v3;
    sub_1D1E66A5C();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_1D1E66A7C();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, 1, v6);
}

unint64_t sub_1D1A7DBF0(uint64_t a1)
{
  result = sub_1D1A7DC18();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D1A7DC18()
{
  result = qword_1EE079CB0;
  if (!qword_1EE079CB0)
  {
    sub_1D1A7DC70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE079CB0);
  }

  return result;
}

unint64_t sub_1D1A7DC70()
{
  result = qword_1EE07B650;
  if (!qword_1EE07B650)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE07B650);
  }

  return result;
}

uint64_t dispatch thunk of UserActionPredictionControllerProtocol.fetchPredictions()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 56) + **(a2 + 56));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D19C8EA0;

  return v7(a1, a2);
}

unint64_t sub_1D1A7DE8C()
{
  result = qword_1EC6497E8;
  if (!qword_1EC6497E8)
  {
    sub_1D1A7DEE4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6497E8);
  }

  return result;
}

unint64_t sub_1D1A7DEE4()
{
  result = qword_1EE079C00;
  if (!qword_1EE079C00)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE079C00);
  }

  return result;
}

uint64_t sub_1D1A7DF30()
{
  v1 = [*v0 rooms];
  sub_1D1A7DEE4();
  v2 = sub_1D1E67C1C();

  return v2;
}

id sub_1D1A7DFC4()
{
  [v0 mutableCopy];
  sub_1D1E6866C();
  swift_unknownObjectRelease();
  sub_1D1741B10(0, &qword_1EC64F3D0, 0x1E696CC08);
  if (swift_dynamicCast())
  {
    return v5;
  }

  v2 = [v0 options];
  v3 = [v0 cachePolicy];
  v4 = [objc_allocWithZone(MEMORY[0x1E696CC08]) initWithOptions:v2 cachePolicy:v3];
  [v4 setInactiveUpdatingLevel_];
  return v4;
}

uint64_t HomeState.ClientError.hashValue.getter()
{
  v1 = *v0;
  sub_1D1E6920C();
  MEMORY[0x1D3892850](v1);
  return sub_1D1E6926C();
}

uint64_t sub_1D1A7E158()
{
  type metadata accessor for HomeState._Client(0);
  v0 = swift_allocObject();
  result = sub_1D1A7EE10();
  off_1EC649B88 = v0;
  return result;
}

uint64_t static HomeState._Client.shared.getter()
{
  if (qword_1EC642300 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1D1A7E1F4@<X0>(void *a1@<X8>)
{
  if (qword_1EC642300 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = off_1EC649B88;
}

uint64_t sub_1D1A7E264(void **a1)
{
  v1 = *a1;
  v2 = qword_1EC642300;

  if (v2 != -1)
  {
    swift_once();
  }

  off_1EC649B88 = v1;
}

void *HomeState._Client.homeManager.getter()
{
  swift_getKeyPath();
  sub_1D1A7E408();
  sub_1D1E66CAC();

  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

id sub_1D1A7E350@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D1A7E408();
  sub_1D1E66CAC();

  v4 = *(v3 + 16);
  *a2 = v4;

  return v4;
}

void sub_1D1A7E3D8(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1D1A7E4AC(v1);
}

unint64_t sub_1D1A7E408()
{
  result = qword_1EC649B98;
  if (!qword_1EC649B98)
  {
    type metadata accessor for HomeState._Client(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC649B98);
  }

  return result;
}

uint64_t type metadata accessor for HomeState._Client(uint64_t a1)
{
  result = qword_1EC649BA8;
  if (!qword_1EC649BA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D1A7E4AC(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 16);
  if (!v4)
  {
    if (!a1)
    {
      v8 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D1A7E408();
    sub_1D1E66C9C();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_1D1741B10(0, &unk_1EC649E60, 0x1E696CBA0);
  v5 = v4;
  v6 = a1;
  v7 = sub_1D1E684FC();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(v2 + 16);
LABEL_8:
  *(v2 + 16) = a1;
}

id HomeState._Client.createHomeManagerIfNecessary(configuration:)(uint64_t a1)
{
  v2 = v1;
  v29 = a1;
  v3 = sub_1D1E6701C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D1E6709C();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v26 - v12;
  swift_getKeyPath();
  v32 = v1;
  sub_1D1A7E408();
  sub_1D1E66CAC();

  v14 = *(v1 + 16);
  if (v14)
  {
    v15 = *(v1 + 16);
  }

  else
  {
    v27 = v3;
    *&v28 = v4;
    if (qword_1EE07A098 != -1)
    {
      swift_once();
    }

    v16 = __swift_project_value_buffer(v7, qword_1EE0813C8);
    v17 = *(v8 + 16);
    v17(v13, v16, v7);
    type metadata accessor for OSActivityInSwift(0);
    v18 = swift_allocObject();
    *(v18 + 16) = CreateDefaultOSActivity(&dword_1D16EC000, "HomeState._Client.Bind");
    v17((v18 + OBJC_IVAR____TtC13HomeDataModel17OSActivityInSwift_logger), v13, v7);
    v17(v11, v13, v7);
    sub_1D1E66FEC();
    (*(v8 + 8))(v13, v7);
    (*(v28 + 32))(v18 + OBJC_IVAR____TtC13HomeDataModel17OSActivityInSwift_signposter, v6, v27);
    v19 = v18 + OBJC_IVAR____TtC13HomeDataModel17OSActivityInSwift_name;
    *v19 = "HomeState._Client.Bind";
    *(v19 + 8) = 22;
    *(v19 + 16) = 2;
    v32 = v18;

    sub_1D1D9AE58(&v30);

    v28 = v30;
    v20 = v31;
    sub_1D1A7EEDC(0);
    v33 = v28;
    v34 = v20;
    v21 = sub_1D1A7DFC4();
    [v21 setDelegateQueue_];
    v22 = [objc_allocWithZone(MEMORY[0x1E696CBA0]) initWithConfiguration_];

    v15 = v22;
    sub_1D1A7E4AC(v22);
    sub_1D1D9B220(&v33);
    v23 = v33;

    sub_1D1A7EEDC(v23);
    v14 = 0;
  }

  v24 = v14;
  return v15;
}

id HomeState._Client.bindConfiguredHomeManager(_:)(uint64_t (*a1)(uint64_t), uint64_t a2)
{
  v24 = a1;
  v23 = a2;
  *&v22 = sub_1D1E6701C();
  v2 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D1E6709C();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v22 - v10;
  if (qword_1EE07A098 != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v5, qword_1EE0813C8);
  v13 = *(v6 + 16);
  v13(v11, v12, v5);
  type metadata accessor for OSActivityInSwift(0);
  v14 = swift_allocObject();
  *(v14 + 16) = CreateDefaultOSActivity(&dword_1D16EC000, "HomeState._Client.Bind");
  v13((v14 + OBJC_IVAR____TtC13HomeDataModel17OSActivityInSwift_logger), v11, v5);
  v13(v9, v11, v5);
  sub_1D1E66FEC();
  (*(v6 + 8))(v11, v5);
  (*(v2 + 32))(v14 + OBJC_IVAR____TtC13HomeDataModel17OSActivityInSwift_signposter, v4, v22);
  v15 = v14 + OBJC_IVAR____TtC13HomeDataModel17OSActivityInSwift_name;
  *v15 = "HomeState._Client.Bind";
  *(v15 + 8) = 22;
  *(v15 + 16) = 2;
  v27 = v14;

  sub_1D1D9AE58(&v25);

  v22 = v25;
  v16 = v26;
  v17 = sub_1D1A7EEDC(0);
  v28 = v22;
  v29 = v16;
  v18 = v24(v17);
  v19 = v18;
  sub_1D1A7E4AC(v18);
  sub_1D1D9B220(&v28);
  v20 = v28;

  sub_1D1A7EEDC(v20);
  return v19;
}

uint64_t HomeState._Client.deinit()
{
  v1 = OBJC_IVAR____TtCV13HomeDataModel9HomeState7_Client___observationRegistrar;
  v2 = sub_1D1E66CEC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t HomeState._Client.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtCV13HomeDataModel9HomeState7_Client___observationRegistrar;
  v2 = sub_1D1E66CEC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1D1A7EE10()
{
  *(v0 + 16) = 0;
  v1 = [objc_allocWithZone(MEMORY[0x1E696ADC8]) init];
  [v1 setQualityOfService_];
  v2 = sub_1D1E677EC();
  [v1 setName_];

  [v1 setMaxConcurrentOperationCount_];
  *(v0 + 24) = v1;
  sub_1D1E66CDC();
  return v0;
}

uint64_t sub_1D1A7EEDC(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_1D1A7EEEC()
{
  result = qword_1EC649BA0;
  if (!qword_1EC649BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC649BA0);
  }

  return result;
}

uint64_t sub_1D1A7EF58(uint64_t a1)
{
  result = sub_1D1E66CEC();
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

void sub_1D1A7F028()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 16);
  *(v1 + 16) = v2;
  v4 = v2;
}

void HomeState.Stream.config.getter(_BYTE *a1@<X8>)
{
  os_unfair_lock_lock((v1 + 16));
  v3 = *(v1 + 21);
  v4 = *(v1 + 22);
  v5 = *(v1 + 23);
  *a1 = *(v1 + 20);
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;

  os_unfair_lock_unlock((v1 + 16));
}

void HomeState.Stream.config.setter(char *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  os_unfair_lock_lock((v1 + 16));
  *(v1 + 20) = v2;
  *(v1 + 21) = v3;
  *(v1 + 22) = v4;
  *(v1 + 23) = v5;

  os_unfair_lock_unlock((v1 + 16));
}

void (*HomeState.Stream.config.modify(uint64_t a1))(os_unfair_lock_s **a1)
{
  *a1 = v1;
  os_unfair_lock_lock((v1 + 16));
  v3 = *(v1 + 21);
  v4 = *(v1 + 22);
  v5 = *(v1 + 23);
  *(a1 + 8) = *(v1 + 20);
  *(a1 + 9) = v3;
  *(a1 + 10) = v4;
  *(a1 + 11) = v5;
  os_unfair_lock_unlock((v1 + 16));
  return sub_1D1A7F1A4;
}

void sub_1D1A7F1A4(os_unfair_lock_s **a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = *(a1 + 9);
  v4 = *(a1 + 10);
  v5 = *(a1 + 11);
  os_unfair_lock_lock(*a1 + 4);
  *(v1 + 20) = v2;
  *(v1 + 21) = v3;
  *(v1 + 22) = v4;
  *(v1 + 23) = v5;

  os_unfair_lock_unlock((v1 + 16));
}

unint64_t HomeState.Stream.stateSubscriptionConfig.getter@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 56);
  *a1 = *(v1 + 32);
  v5 = *(v1 + 40);
  *(a1 + 8) = v5;
  *(a1 + 24) = v3;

  return sub_1D1A82B50(v5);
}

void *HomeState.Stream.homeManager.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 64);
  v2 = v1;
  return v1;
}

void HomeState.Stream.homeManager.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 64);
  *(v1 + 64) = a1;
}

void *HomeState.Stream.currentHome.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 72);
  v2 = v1;
  return v1;
}

void sub_1D1A7F3A0(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 72);
  v5 = v4;
  sub_1D1A7F4A4(v2);
  v6 = *(v3 + 72);
  *(v3 + 72) = v2;
  v7 = v2;

  sub_1D1A7FCA4(v4);
}

void HomeState.Stream.currentHome.setter(void *a1)
{
  swift_beginAccess();
  v3 = *(v1 + 72);
  v4 = v3;
  sub_1D1A7F4A4(a1);
  v5 = *(v1 + 72);
  *(v1 + 72) = a1;
  v6 = a1;

  sub_1D1A7FCA4(v3);
}

void sub_1D1A7F4A4(uint64_t a1)
{
  v3 = sub_1D1E66A7C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v56 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642980, &unk_1D1E6E6E0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v54 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v9 = MEMORY[0x1EEE9AC00](a1);
  v11 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v54 - v13;
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v54 - v16;
  if (v15)
  {
    v18 = [v15 uniqueIdentifier];
    sub_1D1E66A5C();

    v19 = *(v4 + 56);
    v19(v17, 0, 1, v3);
  }

  else
  {
    v19 = *(v4 + 56);
    v19(&v54 - v16, 1, 1, v3);
  }

  swift_beginAccess();
  v20 = *(v1 + 72);
  if (v20)
  {
    v21 = [v20 uniqueIdentifier];
    sub_1D1E66A5C();

    v22 = 0;
  }

  else
  {
    v22 = 1;
  }

  v19(v14, v22, 1, v3);
  v23 = *(v6 + 48);
  sub_1D1741C08(v17, v8, &qword_1EC642590, qword_1D1E71260);
  sub_1D1741C08(v14, &v8[v23], &qword_1EC642590, qword_1D1E71260);
  v57 = v4;
  v24 = *(v4 + 48);
  if (v24(v8, 1, v3) == 1)
  {
    sub_1D1741A30(v14, &qword_1EC642590, qword_1D1E71260);
    sub_1D1741A30(v17, &qword_1EC642590, qword_1D1E71260);
    if (v24(&v8[v23], 1, v3) == 1)
    {
      sub_1D1741A30(v8, &qword_1EC642590, qword_1D1E71260);
      return;
    }
  }

  else
  {
    sub_1D1741C08(v8, v11, &qword_1EC642590, qword_1D1E71260);
    if (v24(&v8[v23], 1, v3) != 1)
    {
      v52 = v56;
      v51 = v57;
      (*(v57 + 32))(v56, &v8[v23], v3);
      sub_1D1A83110(&qword_1EE07D170, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
      LODWORD(v55) = sub_1D1E6775C();
      v53 = *(v51 + 8);
      v53(v52, v3);
      sub_1D1741A30(v14, &qword_1EC642590, qword_1D1E71260);
      sub_1D1741A30(v17, &qword_1EC642590, qword_1D1E71260);
      v53(v11, v3);
      sub_1D1741A30(v8, &qword_1EC642590, qword_1D1E71260);
      if (v55)
      {
        return;
      }

      goto LABEL_13;
    }

    sub_1D1741A30(v14, &qword_1EC642590, qword_1D1E71260);
    sub_1D1741A30(v17, &qword_1EC642590, qword_1D1E71260);
    (*(v57 + 8))(v11, v3);
  }

  sub_1D1741A30(v8, &qword_1EC642980, &unk_1D1E6E6E0);
LABEL_13:
  if (qword_1EE07AF78 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_1EE07AF80);
  v25 = byte_1EE07AF84;
  os_unfair_lock_unlock(&dword_1EE07AF80);
  if (v25 != 2 && (v25 & 1) != 0)
  {
    v26 = *(v1 + 72);
    if (v26)
    {
      v55 = v1;
      v27 = qword_1EC642328;
      v28 = v26;
      if (v27 != -1)
      {
        swift_once();
      }

      v29 = sub_1D1E6709C();
      __swift_project_value_buffer(v29, qword_1EC64A290);
      v30 = v28;
      v31 = sub_1D1E6707C();
      v32 = sub_1D1E6835C();

      v33 = os_log_type_enabled(v31, v32);
      v34 = v57;
      if (v33)
      {
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        v58[0] = v36;
        *v35 = 136315394;
        v37 = [v30 name];
        v38 = sub_1D1E6781C();
        v40 = v39;

        v41 = sub_1D1B1312C(v38, v40, v58);

        *(v35 + 4) = v41;
        *(v35 + 12) = 2082;
        v42 = [v30 uniqueIdentifier];
        v43 = v56;
        sub_1D1E66A5C();

        sub_1D1A83110(&qword_1EE07B250, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
        v44 = sub_1D1E68FAC();
        v46 = v45;
        (*(v34 + 8))(v43, v3);
        v47 = sub_1D1B1312C(v44, v46, v58);

        *(v35 + 14) = v47;
        _os_log_impl(&dword_1D16EC000, v31, v32, "willSetCurrentHome: previously '%s' (%{public}s)", v35, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1D3893640](v36, -1, -1);
        MEMORY[0x1D3893640](v35, -1, -1);
      }

      v48 = v55;
      swift_beginAccess();
      if (*(*(v48 + 32) + 16))
      {
        v49 = *(v48 + 40);
        if (v49 == 1)
        {
          sub_1D1A82B60(1uLL);
          sub_1D1A82B60(1uLL);
          os_unfair_lock_lock((v48 + 16));
          v50 = *(v48 + 22);
          os_unfair_lock_unlock((v48 + 16));
          if (v50 == 1)
          {
            sub_1D1ADC8D4(v30);
            HMHome.homeDelegate.setter(0, 0);
          }

          sub_1D1AB1A6C(v30);
        }

        else
        {
          sub_1D1A82B50(*(v48 + 40));
          sub_1D1A82B60(v49);
          sub_1D1A82B60(1uLL);
        }
      }
    }
  }
}

void sub_1D1A7FCA4(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v86 - v4;
  v6 = sub_1D1E66A7C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v88 = &v86 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642980, &unk_1D1E6E6E0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v86 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v87 = &v86 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v90 = &v86 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v86 - v18;
  v20 = MEMORY[0x1EEE9AC00](v17);
  v22 = &v86 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v86 - v23;
  if (a1)
  {
    v25 = [a1 uniqueIdentifier];
    sub_1D1E66A5C();

    v26 = *(v7 + 56);
    v27 = v24;
    v28 = 0;
  }

  else
  {
    v26 = *(v7 + 56);
    v27 = &v86 - v23;
    v28 = 1;
  }

  v93 = v26;
  v26(v27, v28, 1, v6);
  swift_beginAccess();
  v29 = *(v1 + 72);
  v91 = v5;
  v92 = v1;
  if (v29)
  {
    v30 = [v29 uniqueIdentifier];
    sub_1D1E66A5C();

    v31 = 0;
  }

  else
  {
    v31 = 1;
  }

  v86 = v7 + 56;
  v93(v22, v31, 1, v6);
  v32 = *(v9 + 48);
  sub_1D1741C08(v24, v11, &qword_1EC642590, qword_1D1E71260);
  sub_1D1741C08(v22, &v11[v32], &qword_1EC642590, qword_1D1E71260);
  v89 = v7;
  v33 = *(v7 + 48);
  if (v33(v11, 1, v6) == 1)
  {
    sub_1D1741A30(v22, &qword_1EC642590, qword_1D1E71260);
    sub_1D1741A30(v24, &qword_1EC642590, qword_1D1E71260);
    if (v33(&v11[v32], 1, v6) == 1)
    {
      sub_1D1741A30(v11, &qword_1EC642590, qword_1D1E71260);
      return;
    }
  }

  else
  {
    sub_1D1741C08(v11, v19, &qword_1EC642590, qword_1D1E71260);
    if (v33(&v11[v32], 1, v6) != 1)
    {
      v41 = v88;
      v42 = v89;
      (*(v89 + 32))(v88, &v11[v32], v6);
      sub_1D1A83110(&qword_1EE07D170, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
      v43 = sub_1D1E6775C();
      v44 = *(v42 + 8);
      v44(v41, v6);
      sub_1D1741A30(v22, &qword_1EC642590, qword_1D1E71260);
      sub_1D1741A30(v24, &qword_1EC642590, qword_1D1E71260);
      v44(v19, v6);
      sub_1D1741A30(v11, &qword_1EC642590, qword_1D1E71260);
      v35 = v91;
      v34 = v92;
      v36 = v90;
      if (v43)
      {
        return;
      }

      goto LABEL_13;
    }

    sub_1D1741A30(v22, &qword_1EC642590, qword_1D1E71260);
    sub_1D1741A30(v24, &qword_1EC642590, qword_1D1E71260);
    (*(v89 + 8))(v19, v6);
  }

  sub_1D1741A30(v11, &qword_1EC642980, &unk_1D1E6E6E0);
  v35 = v91;
  v34 = v92;
  v36 = v90;
LABEL_13:
  if (qword_1EE07AF78 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_1EE07AF80);
  v37 = byte_1EE07AF84;
  os_unfair_lock_unlock(&dword_1EE07AF80);
  if (v37 != 2 && (v37 & 1) != 0)
  {
    v38 = *(v34 + 72);
    if (v38)
    {
      v39 = [v38 uniqueIdentifier];
      sub_1D1E66A5C();

      v40 = 0;
    }

    else
    {
      v40 = 1;
    }

    v93(v36, v40, 1, v6);
    v45 = v87;
    sub_1D1741C08(v36, v87, &qword_1EC642590, qword_1D1E71260);
    HomeState.AllHomesModel.currentHomeID.setter(v45);
    sub_1D1741A30(v36, &qword_1EC642590, qword_1D1E71260);
    v46 = *(v34 + 72);
    if (v46)
    {
      v47 = qword_1EC642328;
      v48 = v46;
      if (v47 != -1)
      {
        swift_once();
      }

      v49 = sub_1D1E6709C();
      __swift_project_value_buffer(v49, qword_1EC64A290);
      v50 = v48;
      v51 = sub_1D1E6707C();
      v52 = sub_1D1E6835C();

      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        v54 = swift_slowAlloc();
        v94[0] = v54;
        *v53 = 136315394;
        v55 = [v50 name];
        v56 = sub_1D1E6781C();
        v58 = v57;

        v59 = sub_1D1B1312C(v56, v58, v94);

        *(v53 + 4) = v59;
        *(v53 + 12) = 2080;
        v60 = [v50 uniqueIdentifier];
        v61 = v88;
        sub_1D1E66A5C();

        sub_1D1A83110(&qword_1EE07B250, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
        v62 = sub_1D1E68FAC();
        v64 = v63;
        (*(v89 + 8))(v61, v6);
        v65 = sub_1D1B1312C(v62, v64, v94);

        *(v53 + 14) = v65;
        _os_log_impl(&dword_1D16EC000, v51, v52, "didSetCurrentHome: current home is now '%s' (%s)", v53, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1D3893640](v54, -1, -1);
        v34 = v92;
        MEMORY[0x1D3893640](v53, -1, -1);
      }

      swift_beginAccess();
      if (*(*(v34 + 32) + 16))
      {
        v66 = *(v34 + 40);
        if (v66 == 1)
        {
          sub_1D1A82B60(1uLL);
          sub_1D1A82B60(1uLL);
          os_unfair_lock_lock((v34 + 16));
          v67 = *(v34 + 22);
          os_unfair_lock_unlock((v34 + 16));
          if (v67 == 1)
          {
            sub_1D1ADC8C4(v50);
            v68 = sub_1D1A830C0(&qword_1EC649E80, &unk_1D1E96434);

            HMHome.homeDelegate.setter(v69, v68);
          }

          if ((*(v34 + 48) & 2) != 0)
          {
            sub_1D1AB1598(v50);
          }
        }

        else
        {
          sub_1D1A82B50(*(v34 + 40));
          sub_1D1A82B60(v66);
          sub_1D1A82B60(1uLL);
        }
      }

      os_unfair_lock_lock((v34 + 16));
      v73 = *(v34 + 22);
      os_unfair_lock_unlock((v34 + 16));
      if ((v73 & 1) == 0)
      {
        if (qword_1EE07AE38 != -1)
        {
          swift_once();
        }

        if (qword_1EE07AE40 != 4)
        {
          v74 = sub_1D1E67E7C();
          (*(*(v74 - 8) + 56))(v35, 1, 1, v74);
          v75 = qword_1EC642358;
          v50 = v50;

          if (v75 != -1)
          {
            swift_once();
          }

          v76 = qword_1EC64ABE8;
          v77 = sub_1D1A83110(&qword_1EC649DA0, type metadata accessor for HomeDataActor, &protocol conformance descriptor for HomeDataActor);
          v78 = swift_allocObject();
          v78[2] = v76;
          v78[3] = v77;
          v78[4] = v34;
          v78[5] = v50;

          sub_1D17C6EF0(0xD000000000000026, 0x80000001D1EC3E20, v35, &unk_1D1E96078, v78);
        }
      }
    }

    else
    {
      if (qword_1EC642328 != -1)
      {
        swift_once();
      }

      v70 = sub_1D1E6709C();
      __swift_project_value_buffer(v70, qword_1EC64A290);
      v50 = sub_1D1E6707C();
      v71 = sub_1D1E6835C();
      if (os_log_type_enabled(v50, v71))
      {
        v72 = swift_slowAlloc();
        *v72 = 0;
        _os_log_impl(&dword_1D16EC000, v50, v71, "didSetCurrentHome: current home is now nil", v72, 2u);
        MEMORY[0x1D3893640](v72, -1, -1);
      }
    }

    os_unfair_lock_lock((v34 + 16));
    v79 = *(v34 + 23);
    os_unfair_lock_unlock((v34 + 16));
    if (v79 == 1)
    {
      v80 = *(v34 + 72);
      v81 = sub_1D1E67E7C();
      (*(*(v81 - 8) + 56))(v35, 1, 1, v81);
      sub_1D1E67E1C();
      v82 = v80;
      v83 = sub_1D1E67E0C();
      v84 = swift_allocObject();
      v85 = MEMORY[0x1E69E85E0];
      v84[2] = v83;
      v84[3] = v85;
      v84[4] = v80;
      sub_1D17C6EF0(0, 0, v35, &unk_1D1E96068, v84);
    }
  }
}

void (*HomeState.Stream.currentHome.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_beginAccess();
  v5 = *(v1 + 72);
  *(v4 + 24) = v5;
  v6 = v5;
  return sub_1D1A80988;
}

void sub_1D1A80988(uint64_t a1, char a2)
{
  v2 = *a1;
  v4 = (*a1 + 24);
  v3 = *v4;
  v5 = *(*a1 + 32);
  v6 = *(v5 + 72);
  if (a2)
  {
    v7 = v6;
    v8 = v3;
    sub_1D1A7F4A4(v3);
    v9 = *(v5 + 72);
    *(v5 + 72) = v3;
    v10 = v8;

    sub_1D1A7FCA4(v6);
    v11 = *v4;
  }

  else
  {
    v12 = v6;
    sub_1D1A7F4A4(v3);
    v13 = *(v5 + 72);
    *(v5 + 72) = v3;
    v11 = v3;

    sub_1D1A7FCA4(v6);
  }

  free(v2);
}

__n128 HomeState.Stream.accessorySettingsDataSource.getter@<Q0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  if (*(v1 + 104))
  {
    sub_1D17419CC(v1 + 80, a1);
  }

  else
  {
    result = *(v1 + 80);
    v4 = *(v1 + 96);
    *a1 = result;
    *(a1 + 16) = v4;
    *(a1 + 32) = *(v1 + 112);
  }

  return result;
}

uint64_t HomeState.Stream.accessorySettingsDataSource.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(a1 + 24);
  if (!*(v1 + 104))
  {
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_5:
    v4 = *(a1 + 16);
    *(v1 + 80) = *a1;
    *(v1 + 96) = v4;
    *(v1 + 112) = *(a1 + 32);
    return swift_endAccess();
  }

  __swift_destroy_boxed_opaque_existential_1((v1 + 80));
  if (!v3)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_1D16EEE20(a1, v1 + 80);
  return swift_endAccess();
}

uint64_t HomeState.Stream.__allocating_init()()
{
  v0 = swift_allocObject();
  HomeState.Stream.init()();
  return v0;
}

void *HomeState.Stream.init()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649BE8, &unk_1D1EB1A10);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v26.receiver - v4);
  *(v0 + 16) = 0;
  v6 = MEMORY[0x1E69E7CD0];
  *(v0 + 22) = 257;
  *(v0 + 32) = v6;
  *(v0 + 40) = xmmword_1D1E95F10;
  *(v0 + 56) = 0;
  type metadata accessor for HomeState.AllHomesModel(0);
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0u;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0;
  swift_allocObject();
  *(v0 + 24) = sub_1D1AFF8C8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649BF0, &qword_1D1E95F20);
  v7 = swift_allocObject();
  v8 = qword_1EC6BE170;
  *v5 = 1;
  (*(v3 + 104))(v5, *MEMORY[0x1E69E8640], v2);
  type metadata accessor for SnapshotModerator(0);
  swift_allocObject();
  *(v7 + v8) = sub_1D1E5BA08(0, v5);
  v9 = sub_1D1A821BC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649BF8, &qword_1D1E95F28);
  swift_allocObject();
  v10 = sub_1D1A82764();
  v1[18] = v9;
  v1[19] = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649C00, &qword_1D1E95F30);
  v11 = swift_allocObject();

  swift_defaultActor_initialize();
  v11[15] = 0;
  swift_unknownObjectWeakInit();
  v12 = MEMORY[0x1E69E7CC0];
  v11[16] = sub_1D18D4DA0(MEMORY[0x1E69E7CC0]);
  v11[17] = sub_1D18D4D58(v12);
  v11[18] = sub_1D18D4D7C(v12);
  v1[20] = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649C08, &qword_1D1E95F38);
  v13 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649C10, &qword_1D1E95F40);
  v14 = swift_allocObject();
  swift_weakInit();
  swift_weakAssign();
  *(v13 + 16) = 0;
  *(v13 + 24) = v14;
  *(v13 + 32) = v9;
  *(v13 + 40) = v10;
  *(v13 + 48) = v11;
  v1[15] = v13;
  v15 = _s14MatterDelegateCMa();
  swift_retain_n();

  v16 = objc_allocWithZone(v15);
  v17 = &v16[OBJC_IVAR____TtCCV13HomeDataModel9HomeState6Stream14MatterDelegate__stream];
  v18 = swift_allocObject();
  swift_weakInit();
  swift_weakAssign();
  *v17 = 0;
  *(v17 + 1) = v18;
  *&v16[OBJC_IVAR____TtCCV13HomeDataModel9HomeState6Stream14MatterDelegate_matterSnapshotUpdateController] = v10;
  v27.receiver = v16;
  v27.super_class = v15;

  v1[16] = objc_msgSendSuper2(&v27, sel_init);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649C18, &qword_1D1E95F48);
  v19 = swift_allocObject();

  swift_defaultActor_initialize();
  if (v12 >> 62 && sub_1D1E6873C())
  {
    sub_1D179CED0(MEMORY[0x1E69E7CC0]);
    v6 = v25;
  }

  v19[15] = v6;
  v19[16] = 0;
  v19[17] = sub_1D18DAA14(MEMORY[0x1E69E7CC0]);
  v19[14] = v9;
  v1[21] = v19;
  v20 = _s24UngenericHomeKitDelegateCMa();
  v21 = objc_allocWithZone(v20);
  *&v21[OBJC_IVAR____TtCCV13HomeDataModel9HomeState6Stream24UngenericHomeKitDelegate_stateSnapshotUpdateController] = v9;
  v26.receiver = v21;
  v26.super_class = v20;

  v1[17] = objc_msgSendSuper2(&v26, sel_init);
  v22 = v1[15];
  swift_retain_n();
  os_unfair_lock_lock(v22 + 4);
  swift_weakLoadStrong();
  swift_weakAssign();

  os_unfair_lock_unlock(v22 + 4);

  v23 = (v1[16] + OBJC_IVAR____TtCCV13HomeDataModel9HomeState6Stream14MatterDelegate__stream);
  os_unfair_lock_lock(v23);
  swift_weakLoadStrong();
  swift_weakAssign();

  os_unfair_lock_unlock(v23);

  return v1;
}

uint64_t HomeState.Stream.deinit()
{

  v1 = *(v0 + 40);

  sub_1D1A82B60(v1);

  if (*(v0 + 104))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 80));
  }

  return v0;
}

uint64_t HomeState.Stream.__deallocating_deinit()
{
  HomeState.Stream.deinit();

  return swift_deallocClassInstance();
}

void sub_1D1A81190()
{
  v1 = v0;
  swift_beginAccess();
  v2 = *(v0 + 64);
  if (v2)
  {
    v3 = v2;
    v4 = sub_1D1AD7C00();
  }

  else
  {
    v4 = 0;
  }

  swift_beginAccess();
  v5 = *(v1 + 72);
  v6 = v5;
  sub_1D1A7F4A4(v4);
  v7 = *(v1 + 72);
  *(v1 + 72) = v4;
  v8 = v4;

  sub_1D1A7FCA4(v5);
}

uint64_t sub_1D1A81254(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (qword_1EC642358 != -1)
  {
    swift_once();
  }

  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_1D17C4BFC;

  return sub_1D1AB5240(a5);
}

uint64_t sub_1D1A8131C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a4;
  sub_1D1E67E1C();
  *(v4 + 48) = sub_1D1E67E0C();
  v6 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D1A813B4, v6, v5);
}

uint64_t sub_1D1A813B4()
{

  if (qword_1EE07B1D8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 40);
  v2 = qword_1EE07B1E0;
  v3 = OBJC_IVAR____TtC13HomeDataModel21CoordinationDataModel_currentHome;
  swift_beginAccess();
  v4 = *(v2 + v3);
  *(v2 + v3) = v1;
  v5 = v1;

  sub_1D18731C0();
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1D1A8148C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649C58, &qword_1D1E96080);
  swift_allocObject();
  result = sub_1D1E693EC();
  qword_1EC649BB8 = result;
  return result;
}

void static HomeState.Stream.homeManagerConfiguration.setter(uint64_t a1)
{
  if (qword_1EC642318 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_1EC649BD0);

  qword_1EC649BD8 = a1;

  os_unfair_lock_unlock(&dword_1EC649BD0);
}

uint64_t static HomeState.Stream.homeManagerConfiguration.getter()
{
  if (qword_1EC642318 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_1EC649BD0);
  v0 = qword_1EC649BD8;
  v1 = qword_1EC649BD8;
  os_unfair_lock_unlock(&dword_1EC649BD0);
  return v0;
}

void sub_1D1A815F0(uint64_t *a1@<X8>)
{
  if (qword_1EC642318 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_1EC649BD0);
  v2 = qword_1EC649BD8;
  v3 = qword_1EC649BD8;
  os_unfair_lock_unlock(&dword_1EC649BD0);
  *a1 = v2;
}

void sub_1D1A8166C(void **a1)
{
  v1 = *a1;
  if (qword_1EC642318 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_1EC649BD0);

  qword_1EC649BD8 = v1;
  v2 = v1;

  os_unfair_lock_unlock(&dword_1EC649BD0);
}

void (*static HomeState.Stream.homeManagerConfiguration.modify(uint64_t *a1))(void **a1, char a2)
{
  if (qword_1EC642318 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_1EC649BD0);
  v2 = qword_1EC649BD8;
  v3 = qword_1EC649BD8;
  os_unfair_lock_unlock(&dword_1EC649BD0);
  *a1 = v2;
  return sub_1D1A81788;
}

void sub_1D1A81788(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2;
    os_unfair_lock_lock(&dword_1EC649BD0);

    qword_1EC649BD8 = v2;
    os_unfair_lock_unlock(&dword_1EC649BD0);
  }

  else
  {
    os_unfair_lock_lock(&dword_1EC649BD0);

    qword_1EC649BD8 = v2;

    os_unfair_lock_unlock(&dword_1EC649BD0);
  }
}

id sub_1D1A81848()
{
  v1 = sub_1D1E6702C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v75 = &v59 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D1E66FDC();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v59 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v59 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  v15 = MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v59 - v18;
  if (*(v0 + 57))
  {
    return 0;
  }

  v73 = v8;
  v76 = v5;
  v65 = v2;
  v66 = v1;
  atomic_store(1u, (v0 + 57));
  v21 = *(v0 + 24);
  v22 = sub_1D1E67E7C();
  v23 = *(v22 - 8);
  v70 = *(v23 + 56);
  v71 = v22;
  v69 = v23 + 56;
  v70(v19, 1, 1);
  v24 = swift_allocObject();
  *(v24 + 16) = v21;
  *(v24 + 24) = 1;
  sub_1D1741C08(v19, v17, &unk_1EC6442C0, &qword_1D1E741A0);
  v25 = qword_1EC642358;
  v72 = v21;

  if (v25 != -1)
  {
    swift_once();
  }

  v26 = qword_1EC64ABE8;
  v27 = sub_1D1A83110(&qword_1EC649DA0, type metadata accessor for HomeDataActor, &protocol conformance descriptor for HomeDataActor);
  v28 = swift_allocObject();
  v28[2] = v26;
  v28[3] = v27;
  v67 = v27;
  v68 = v26;
  v28[4] = sub_1D1A82E34;
  v28[5] = v24;

  sub_1D17C6EF0(0, 0, v17, &unk_1D1E96480, v28);

  sub_1D1741A30(v19, &unk_1EC6442C0, &qword_1D1E741A0);
  if (qword_1EC642318 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_1EC649BD0);
  v20 = qword_1EC649BD8;
  v74 = qword_1EC649BD8;
  os_unfair_lock_unlock(&dword_1EC649BD0);
  v29 = v76;
  if (v20)
  {
    v64 = v0;
    if (qword_1EC642330 != -1)
    {
      swift_once();
    }

    v30 = sub_1D1E6701C();
    v31 = __swift_project_value_buffer(v30, qword_1EC64A2A8);
    sub_1D1E66FCC();
    v62 = v31;
    v32 = sub_1D1E66FFC();
    v33 = sub_1D1E683EC();
    v34 = sub_1D1E6855C();
    v35 = v73;
    if (v34)
    {
      v36 = v29;
      v37 = v4;
      v38 = swift_slowAlloc();
      *v38 = 0;
      v39 = sub_1D1E66FBC();
      _os_signpost_emit_with_name_impl(&dword_1D16EC000, v32, v33, v39, "HomeKitDataLoad", "", v38, 2u);
      v40 = v38;
      v4 = v37;
      v29 = v36;
      v35 = v73;
      MEMORY[0x1D3893640](v40, -1, -1);
    }

    (*(v29 + 16))(v11, v13, v4);
    sub_1D1E6705C();
    swift_allocObject();
    v61 = sub_1D1E6704C();
    v41 = *(v29 + 8);
    v73 = v4;
    v76 = v29 + 8;
    v63 = v41;
    v41(v13, v4);
    [v74 mutableCopy];
    sub_1D1E6866C();
    swift_unknownObjectRelease();
    sub_1D1A82E40();
    swift_dynamicCast();
    v42 = v77;
    if (qword_1EC642320 != -1)
    {
      swift_once();
    }

    [v42 setDelegateQueue_];
    v20 = [objc_allocWithZone(MEMORY[0x1E696CBA0]) initWithConfiguration_];
    v60 = v42;
    v43 = sub_1D1A830C0(&unk_1EC649E70, &unk_1D1E96450);

    HMHomeManager.homeManagerDelegate.setter(v44, v43);
    (v70)(v19, 1, 1, v71);
    v45 = swift_allocObject();
    *(v45 + 16) = v72;
    *(v45 + 24) = 2;
    sub_1D1741C08(v19, v17, &unk_1EC6442C0, &qword_1D1E741A0);
    v46 = swift_allocObject();
    v47 = v67;
    v46[2] = v68;
    v46[3] = v47;
    v46[4] = sub_1D1A83158;
    v46[5] = v45;

    sub_1D17C6EF0(0, 0, v17, &unk_1D1E96040, v46);

    sub_1D1741A30(v19, &unk_1EC6442C0, &qword_1D1E741A0);
    v48 = sub_1D1E66FFC();
    sub_1D1E6703C();
    v49 = sub_1D1E683DC();
    if (sub_1D1E6855C())
    {
      v50 = v60;

      v51 = v75;
      sub_1D1E6706C();

      v53 = v65;
      v52 = v66;
      if ((*(v65 + 88))(v51, v66) == *MEMORY[0x1E69E93E8])
      {
        v54 = "[Error] Interval already ended";
      }

      else
      {
        (*(v53 + 8))(v51, v52);
        v54 = "";
      }

      v55 = v73;
      v56 = swift_slowAlloc();
      *v56 = 0;
      v57 = sub_1D1E66FBC();
      _os_signpost_emit_with_name_impl(&dword_1D16EC000, v48, v49, v57, "HomeKitDataLoad", v54, v56, 2u);
      MEMORY[0x1D3893640](v56, -1, -1);
    }

    else
    {

      v55 = v73;
    }

    v63(v35, v55);
  }

  return v20;
}

void sub_1D1A82128()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E696ADC8]) init];
  v1 = sub_1D1E677EC();
  [v0 setName_];

  [v0 setMaxConcurrentOperationCount_];
  qword_1EC649BE0 = v0;
}

uint64_t sub_1D1A821BC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649C48, &qword_1D1E96050);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v13 - v3;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC649DD0, &qword_1D1E96510);
  v5 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v7 = &v13 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649C50, &qword_1D1E96058);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v13 - v10;
  swift_weakInit();
  *(v0 + *(*v0 + 128)) = 0;
  *(v0 + *(*v0 + 136)) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A270, &qword_1D1E71780);
  (*(v2 + 104))(v4, *MEMORY[0x1E69E8650], v1);
  sub_1D1E67E8C();
  (*(v2 + 8))(v4, v1);
  (*(v9 + 32))(v0 + *(*v0 + 112), v11, v8);
  (*(v5 + 32))(v0 + *(*v0 + 120), v7, v14);
  return v0;
}

uint64_t sub_1D1A82490()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649C38, &qword_1D1E96048);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v13 - v3;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649DF0, &qword_1D1E7C018);
  v5 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v7 = &v13 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649C40, qword_1D1E968E0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v13 - v10;
  swift_weakInit();
  *(v0 + *(*v0 + 128)) = 0;
  *(v0 + *(*v0 + 136)) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643318, &qword_1D1E71770);
  (*(v2 + 104))(v4, *MEMORY[0x1E69E8650], v1);
  sub_1D1E67E8C();
  (*(v2 + 8))(v4, v1);
  (*(v9 + 32))(v0 + *(*v0 + 112), v11, v8);
  (*(v5 + 32))(v0 + *(*v0 + 120), v7, v14);
  return v0;
}

uint64_t sub_1D1A82764()
{
  v14[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6491A8, &unk_1D1EB1930);
  v0 = *(v14[0] - 8);
  MEMORY[0x1EEE9AC00](v14[0]);
  v2 = v14 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6491A0, &unk_1D1E92AF0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v14 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649C30, &qword_1D1EB1940);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v14 - v9;
  v11 = qword_1EC6BE178;
  *(v14 - v9) = 1;
  (*(v8 + 104))(v14 - v9, *MEMORY[0x1E69E8640], v7);
  type metadata accessor for MatterSnapshotModerator(0);
  v12 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v12 + 112) = sub_1D18D72DC(MEMORY[0x1E69E7CC0]);
  *(v12 + OBJC_IVAR____TtC13HomeDataModel23MatterSnapshotModerator_forDataModel) = 0;
  type metadata accessor for MatterStateSnapshot(0);
  sub_1D1E67E8C();
  (*(v8 + 8))(v10, v7);
  (*(v4 + 32))(v12 + OBJC_IVAR____TtC13HomeDataModel23MatterSnapshotModerator_snapshotsStream, v6, v3);
  (*(v0 + 32))(v12 + OBJC_IVAR____TtC13HomeDataModel23MatterSnapshotModerator_snapshotsContinuation, v2, v14[0]);
  *(v14[1] + v11) = v12;
  return sub_1D1A82490();
}

void *_s13HomeDataModel0A5StateV6StreamC17sharedIfAvailableAESgvgZ_0()
{
  if (qword_1EE07AF78 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_1EE07AF80);
  v0 = byte_1EE07AF84;
  os_unfair_lock_unlock(&dword_1EE07AF80);
  if (v0 == 2 || (v0 & 1) == 0)
  {
    return 0;
  }

  if (qword_1EC642308 != -1)
  {
    swift_once();
  }

  sub_1D1E693FC();
  result = v3;
  if (!v3)
  {
    if (qword_1EC642310 != -1)
    {
      swift_once();
    }

    os_unfair_lock_lock(&dword_1EC649BC0);
    v2 = off_1EC649BC8;

    os_unfair_lock_unlock(&dword_1EC649BC0);
    return v2;
  }

  return result;
}

unint64_t sub_1D1A82B50(unint64_t result)
{
  if (result >= 3)
  {
  }

  return result;
}

unint64_t sub_1D1A82B60(unint64_t result)
{
  if (result >= 3)
  {
  }

  return result;
}

void *_s13HomeDataModel15StaticActionSetV6toggle4withAA13StateSnapshotVSg010optimisticJ0_ScTyAHs5Error_pG14completionTasktSgAA0aI0V6StreamC_tYaKFfA__0()
{
  if (qword_1EE07AF78 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_1EE07AF80);
  v0 = byte_1EE07AF84;
  os_unfair_lock_unlock(&dword_1EE07AF80);
  if (v0 == 2 || (v0 & 1) == 0)
  {
    type metadata accessor for HomeState.Stream();
    v1 = swift_allocObject();
    HomeState.Stream.init()();
  }

  else
  {
    if (qword_1EC642308 != -1)
    {
      swift_once();
    }

    sub_1D1E693FC();
    v1 = v3;
    if (!v3)
    {
      if (qword_1EC642310 != -1)
      {
        swift_once();
      }

      os_unfair_lock_lock(&dword_1EC649BC0);
      if (off_1EC649BC8)
      {
        v1 = off_1EC649BC8;
      }

      else
      {
        type metadata accessor for HomeState.Stream();
        v1 = swift_allocObject();
        HomeState.Stream.init()();
        off_1EC649BC8 = v1;
      }

      os_unfair_lock_unlock(&dword_1EC649BC0);
    }
  }

  return v1;
}

void sub_1D1A82D30(void *a1)
{
  if (qword_1EE07AF78 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_1EE07AF80);
  v2 = byte_1EE07AF84;
  os_unfair_lock_unlock(&dword_1EE07AF80);
  if (v2 == 2 || (v2 & 1) == 0)
  {
  }

  else
  {
    if (qword_1EC642310 != -1)
    {
      swift_once();
    }

    os_unfair_lock_lock(&dword_1EC649BC0);

    off_1EC649BC8 = a1;

    os_unfair_lock_unlock(&dword_1EC649BC0);
  }
}

unint64_t sub_1D1A82E40()
{
  result = qword_1EC64F3D0;
  if (!qword_1EC64F3D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC64F3D0);
  }

  return result;
}

uint64_t sub_1D1A82E8C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D17C4CF0;

  return sub_1D1B14AE8(a1, v4, v5, v7, v6);
}

uint64_t sub_1D1A82F4C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D17C4BFC;

  return sub_1D1A8131C(a1, v4, v5, v6);
}

uint64_t sub_1D1A83000(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D17C4CF0;

  return sub_1D1A81254(a1, v4, v5, v7, v6);
}

uint64_t sub_1D1A830C0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC649C08, &qword_1D1E95F38);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D1A83110(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *HomeState.Stream.home(for:)(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 64);
  if (v3)
  {
    v4 = [v3 homes];
    sub_1D1741B10(0, &qword_1EE07B620, 0x1E696CB98);
    sub_1D1E67C1C();

    v10 = sub_1D1749970(v5);
    sub_1D1747DDC(&v10);

    v6 = v10;
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC0];
  }

  MEMORY[0x1EEE9AC00](v3);
  v9[2] = a1;
  v7 = sub_1D174A6C4(sub_1D1A8D280, v9, v6);

  return v7;
}

void *HomeState.Stream.service(for:)(uint64_t a1)
{
  v4 = 0;
  v83 = sub_1D1E66A7C();
  v5 = *(v83 - 8);
  v6 = MEMORY[0x1EEE9AC00](v83);
  v72 = &v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v69 = &v69 - v9;
  v10 = MEMORY[0x1EEE9AC00](v8);
  v88 = &v69 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v69 - v13;
  v15 = MEMORY[0x1EEE9AC00](v12);
  v84 = &v69 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v71 = &v69 - v17;
  swift_beginAccess();
  v18 = *(v1 + 64);
  if (v18)
  {
    v19 = [v18 homes];
    sub_1D1741B10(0, &qword_1EE07B620, 0x1E696CB98);
    sub_1D1E67C1C();

    v89 = sub_1D1749970(v20);
    sub_1D1747DDC(&v89);

    v21 = v89;
  }

  else
  {
    v21 = MEMORY[0x1E69E7CC0];
  }

  v22 = *(v5 + 16);
  v23 = v83;
  (v22)(v71, a1, v83);
  v24 = a1;
  v25 = v23;
  v77 = v22;
  v78 = v5 + 16;
  (v22)(v84, v24, v23);
  v70 = v21 >> 62;
  if (v21 >> 62)
  {
LABEL_75:
    v82 = v21 & 0xFFFFFFFFFFFFFF8;
    v81 = sub_1D1E6873C();
  }

  else
  {
    v82 = v21 & 0xFFFFFFFFFFFFFF8;
    v81 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v26 = 0;
  v75 = v21;
  v76 = v21 + 32;
  v5 += 8;
  v79 = v21 & 0xC000000000000001;
  v80 = v5;
  v74 = v14;
  while (1)
  {
    if (v26 == v81)
    {
      v39 = v81;
      goto LABEL_39;
    }

    v87 = v26;
    if (v79)
    {
      v27 = MEMORY[0x1D3891EF0]();
    }

    else
    {
      if (v26 >= *(v82 + 16))
      {
LABEL_71:
        __break(1u);
LABEL_72:
        __break(1u);
LABEL_73:
        __break(1u);
LABEL_74:
        __break(1u);
        goto LABEL_75;
      }

      v27 = *(v76 + 8 * v26);
    }

    v85 = v27;
    v28 = [v27 accessories];
    sub_1D1741B10(0, &qword_1EE07B690, 0x1E696CAC8);
    v22 = sub_1D1E67C1C();

    v29 = v84;
    v30 = v77;
    v77(v14, v84, v25);
    v30(v88, v29, v25);
    v86 = v22 >> 62;
    v25 = v22 & 0xFFFFFFFFFFFFFF8;
    v2 = v22 >> 62 ? sub_1D1E6873C() : *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5 = 0;
    v21 = v22 & 0xC000000000000001;
    v73 = v22 + 32;
    while (v2 != v5)
    {
      if (v21)
      {
        v31 = MEMORY[0x1D3891EF0](v5, v22);
      }

      else
      {
        if (v5 >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_70:
          __break(1u);
          goto LABEL_71;
        }

        v31 = *(v22 + 8 * v5 + 32);
      }

      v32 = v31;
      v33 = [v31 services];
      sub_1D1741B10(0, &qword_1EE079BD0, 0x1E696CC40);
      v34 = sub_1D1E67C1C();

      v14 = &v69;
      MEMORY[0x1EEE9AC00](v35);
      *(&v69 - 2) = v88;
      v36 = sub_1D174A6C4(sub_1D1A8D280, (&v69 - 4), v34);

      if (v36)
      {
        v2 = v5;
        break;
      }

      v37 = __OFADD__(v5++, 1);
      if (v37)
      {
        goto LABEL_70;
      }
    }

    v5 = v80;
    if (!v86)
    {
      break;
    }

    if (v2 != sub_1D1E6873C())
    {
      goto LABEL_34;
    }

LABEL_28:
    v38 = *v5;
    v14 = v74;
    v25 = v83;
    (*v5)(v74, v83);

    v38(v88, v25);

    v26 = (v87 + 1);
    v21 = v75;
    if (__OFADD__(v87, 1))
    {
      goto LABEL_72;
    }
  }

  if (v2 == *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_28;
  }

LABEL_34:
  if (v21)
  {
    goto LABEL_81;
  }

  if (v2 < *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    for (i = *(v73 + 8 * v2); ; i = MEMORY[0x1D3891EF0](v2, v22))
    {
      v41 = i;
      v42 = [i services];
      sub_1D1741B10(0, &qword_1EE079BD0, 0x1E696CC40);
      v43 = sub_1D1E67C1C();

      MEMORY[0x1EEE9AC00](v44);
      v45 = v74;
      *(&v69 - 2) = v74;
      v46 = sub_1D174A6C4(sub_1D1A8D280, (&v69 - 4), v43);

      v47 = v80;
      v25 = *v80;
      v5 = v83;
      (*v80)(v45, v83);

      if (!v46)
      {
        goto LABEL_85;
      }

      (v25)(v88, v5);

      v25 = v5;
      v21 = v75;
      v5 = v47;
      v39 = v87;
LABEL_39:
      if (v70)
      {
        if (v39 == sub_1D1E6873C())
        {
LABEL_57:
          v4 = *v5;
          (*v5)(v71, v25);

          v58 = 0;
          goto LABEL_68;
        }
      }

      else if (v39 == *(v82 + 16))
      {
        goto LABEL_57;
      }

      if (v79)
      {
        v48 = MEMORY[0x1D3891EF0](v39, v21);
      }

      else
      {
        if (v39 >= *(v82 + 16))
        {
          __break(1u);
LABEL_79:
          v60 = MEMORY[0x1D3891EF0](v21, v5);
LABEL_66:
          v61 = v60;
          v62 = [v60 services];
          sub_1D1741B10(0, &qword_1EE079BD0, 0x1E696CC40);
          v63 = sub_1D1E67C1C();

          MEMORY[0x1EEE9AC00](v64);
          v65 = v69;
          *(&v69 - 2) = v69;
          v58 = sub_1D174A6C4(sub_1D1A8D280, (&v69 - 4), v63);

          v4 = *v80;
          v25 = v83;
          (*v80)(v65, v83);

          if (!v58)
          {
            goto LABEL_84;
          }

          v4(v72, v25);
          v4(v71, v25);

LABEL_68:
          v4(v84, v25);
          return v58;
        }

        v48 = *(v76 + 8 * v39);
      }

      v87 = v48;
      v49 = [v48 accessories];
      sub_1D1741B10(0, &qword_1EE07B690, 0x1E696CAC8);
      v5 = sub_1D1E67C1C();

      v50 = v71;
      v51 = v77;
      v77(v69, v71, v25);
      v51(v72, v50, v25);
      v88 = (v5 >> 62);
      v14 = (v5 & 0xFFFFFFFFFFFFFF8);
      if (v5 >> 62)
      {
        v21 = sub_1D1E6873C();
      }

      else
      {
        v21 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v25 = 0;
      v52 = v5 & 0xC000000000000001;
      v86 = v5 + 32;
      while (v21 != v25)
      {
        if (v52)
        {
          v53 = MEMORY[0x1D3891EF0](v25, v5);
        }

        else
        {
          if (v25 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_73;
          }

          v53 = *(v5 + 8 * v25 + 32);
        }

        v54 = v53;
        v55 = [v53 services];
        sub_1D1741B10(0, &qword_1EE079BD0, 0x1E696CC40);
        v56 = sub_1D1E67C1C();

        v22 = &v69;
        MEMORY[0x1EEE9AC00](v57);
        *(&v69 - 2) = v72;
        v2 = sub_1D174A6C4(sub_1D1A8D280, (&v69 - 4), v56);

        if (v2)
        {
          v21 = v25;
          break;
        }

        v37 = __OFADD__(v25++, 1);
        if (v37)
        {
          goto LABEL_74;
        }
      }

      if (v88)
      {
        v59 = sub_1D1E6873C();
      }

      else
      {
        v59 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v21 == v59)
      {
        goto LABEL_83;
      }

      if (v52)
      {
        goto LABEL_79;
      }

      if (v21 < *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v60 = *(v86 + 8 * v21);
        goto LABEL_66;
      }

      __break(1u);
LABEL_81:
      ;
    }
  }

  __break(1u);
LABEL_83:
  v4 = v80;
  v67 = *v80;
  v68 = v83;
  (*v80)(v69, v83);

  v67(v72, v68);
  v67(v71, v68);

  v67(v84, v68);
  __break(1u);
LABEL_84:
  v4(v72, v25);
  __break(1u);
LABEL_85:
  (v25)(v88, v5);
  __break(1u);

  __break(1u);
  return result;
}

void *HomeState.Stream.accessory(with:inHomeWithID:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 64);
  if (v5)
  {
    v6 = [v5 homes];
    sub_1D1741B10(0, &qword_1EE07B620, 0x1E696CB98);
    sub_1D1E67C1C();

    v21 = sub_1D1749970(v7);
    sub_1D1747DDC(&v21);

    v8 = v21;
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC0];
  }

  MEMORY[0x1EEE9AC00](v5);
  v20[2] = a2;
  v9 = sub_1D174A6C4(sub_1D1A8D280, v20, v8);

  if (v9)
  {
    v10 = [v9 accessories];
    sub_1D1741B10(0, &qword_1EE07B690, 0x1E696CAC8);
    v11 = sub_1D1E67C1C();

    if (v11 >> 62)
    {
      goto LABEL_19;
    }

    for (i = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D1E6873C())
    {
      v13 = 0;
      while (1)
      {
        if ((v11 & 0xC000000000000001) != 0)
        {
          v14 = MEMORY[0x1D3891EF0](v13, v11);
        }

        else
        {
          if (v13 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_18;
          }

          v14 = *(v11 + 8 * v13 + 32);
        }

        v15 = v14;
        v16 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        v17 = sub_1D1E682DC();
        if ((v18 & 1) == 0 && v17 == a1)
        {

          return v15;
        }

        ++v13;
        if (v16 == i)
        {
          goto LABEL_20;
        }
      }

      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      ;
    }

LABEL_20:
  }

  return 0;
}

id sub_1D1A84004(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = [*a1 isPrimary];
  if (v4 != [v3 isPrimary])
  {
    return [v2 isPrimary];
  }

  v6 = [v2 name];
  v7 = sub_1D1E6781C();
  v9 = v8;

  v10 = [v3 name];
  v11 = sub_1D1E6781C();
  v13 = v12;

  if (v7 == v11 && v9 == v13)
  {

    return 0;
  }

  else
  {
    v15 = sub_1D1E6904C();

    return (v15 & 1);
  }
}

void *HomeState.Stream.accessory(for:in:)(uint64_t a1, id a2)
{
  v3 = [a2 accessories];
  sub_1D1741B10(0, &qword_1EE07B690, 0x1E696CAC8);
  v4 = sub_1D1E67C1C();

  v7[2] = a1;
  v5 = sub_1D174A6C4(sub_1D1A8CCC8, v7, v4);

  return v5;
}

uint64_t sub_1D1A841D4(id *a1, uint64_t a2)
{
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642980, &unk_1D1E6E6E0);
  v9 = v8 - 8;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v24 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v24 - v16;
  v18 = [*a1 uniqueIdentifier];
  sub_1D1E66A5C();

  (*(v5 + 56))(v17, 0, 1, v4);
  v19 = *(v9 + 56);
  sub_1D17783E0(v17, v11);
  sub_1D17783E0(a2, &v11[v19]);
  v20 = *(v5 + 48);
  if (v20(v11, 1, v4) != 1)
  {
    sub_1D17783E0(v11, v15);
    if (v20(&v11[v19], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v11[v19], v4);
      sub_1D1797998();
      v21 = sub_1D1E6775C();
      v22 = *(v5 + 8);
      v22(v7, v4);
      sub_1D1741A30(v17, &qword_1EC642590, qword_1D1E71260);
      v22(v15, v4);
      sub_1D1741A30(v11, &qword_1EC642590, qword_1D1E71260);
      return v21 & 1;
    }

    sub_1D1741A30(v17, &qword_1EC642590, qword_1D1E71260);
    (*(v5 + 8))(v15, v4);
    goto LABEL_6;
  }

  sub_1D1741A30(v17, &qword_1EC642590, qword_1D1E71260);
  if (v20(&v11[v19], 1, v4) != 1)
  {
LABEL_6:
    sub_1D1741A30(v11, &qword_1EC642980, &unk_1D1E6E6E0);
    v21 = 0;
    return v21 & 1;
  }

  sub_1D1741A30(v11, &qword_1EC642590, qword_1D1E71260);
  v21 = 1;
  return v21 & 1;
}

void *HomeState.Stream.accessoryFromAnyHome(for:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v33 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v29 - v6;
  swift_beginAccess();
  v8 = *(v1 + 64);
  if (v8)
  {
    v9 = [v8 homes];
    sub_1D1741B10(0, &qword_1EE07B620, 0x1E696CB98);
    sub_1D1E67C1C();

    v34 = sub_1D1749970(v10);
    sub_1D1747DDC(&v34);

    v11 = v34;
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v30 = v7;
  sub_1D17783E0(a1, v7);
  sub_1D17783E0(a1, v33);
  v31 = v11 >> 62;
  v12 = (v11 & 0xFFFFFFFFFFFFFF8);
  if (v11 >> 62)
  {
LABEL_29:
    v13 = sub_1D1E6873C();
  }

  else
  {
    v13 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v14 = v11 & 0xC000000000000001;
  v29 = v11 + 32;
  v32 = v1;
  swift_retain_n();
  v15 = 0;
  while (v13 != v15)
  {
    if (v14)
    {
      v16 = MEMORY[0x1D3891EF0](v15, v11);
    }

    else
    {
      if (v15 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_28:
        __break(1u);
        goto LABEL_29;
      }

      v16 = *(v11 + 8 * v15 + 32);
    }

    v17 = v16;
    v18 = [v16 accessories];
    sub_1D1741B10(0, &qword_1EE07B690, 0x1E696CAC8);
    v1 = sub_1D1E67C1C();

    MEMORY[0x1EEE9AC00](v19);
    *(&v29 - 2) = v33;
    v20 = sub_1D174A6C4(sub_1D1A8D29C, (&v29 - 4), v1);

    if (v20)
    {
      v13 = v15;
      break;
    }

    if (__OFADD__(v15++, 1))
    {
      goto LABEL_28;
    }
  }

  if (v31)
  {
    goto LABEL_24;
  }

  if (v13 != *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    do
    {
      if (v14)
      {
        v22 = MEMORY[0x1D3891EF0](v13, v11);
      }

      else
      {
        if (v13 >= v12[2])
        {
          __break(1u);

          __break(1u);
          return result;
        }

        v22 = *(v29 + 8 * v13);
      }

      v13 = v22;
      v23 = [v22 accessories];
      sub_1D1741B10(0, &qword_1EE07B690, 0x1E696CAC8);
      v24 = sub_1D1E67C1C();

      v12 = &v29;
      MEMORY[0x1EEE9AC00](v25);
      v26 = v30;
      *(&v29 - 2) = v30;
      v27 = sub_1D174A6C4(sub_1D1A8D29C, (&v29 - 4), v24);

      sub_1D1741A30(v26, &qword_1EC642590, qword_1D1E71260);

      if (v27)
      {
        goto LABEL_26;
      }

      sub_1D1741A30(v33, &qword_1EC642590, qword_1D1E71260);
      __break(1u);
LABEL_24:
      ;
    }

    while (v13 != sub_1D1E6873C());
  }

  sub_1D1741A30(v30, &qword_1EC642590, qword_1D1E71260);
  v27 = 0;
LABEL_26:

  sub_1D1741A30(v33, &qword_1EC642590, qword_1D1E71260);
  return v27;
}

Swift::Bool __swiftcall HomeState.Stream.accessoryExists(for:in:)(HomeDataModel::ServiceKind a1, HMHome in)
{
  v2 = [(objc_class *)in.super.isa accessories];
  sub_1D1741B10(0, &qword_1EE07B690, 0x1E696CAC8);
  v3 = sub_1D1E67C1C();

  v4 = v3 >> 62;
  if (v3 >> 62)
  {
LABEL_23:
    v5 = sub_1D1E6873C();
  }

  else
  {
    v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = 0;
  v7 = v3 & 0xC000000000000001;
  while (1)
  {
    if (v5 == v6)
    {
      v6 = v5;
      if (v4)
      {
        goto LABEL_17;
      }

LABEL_14:
      v12 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v6 == v12)
      {
        goto LABEL_25;
      }

      goto LABEL_18;
    }

    if (v7)
    {
      v8 = MEMORY[0x1D3891EF0](v6, v3);
    }

    else
    {
      if (v6 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_21;
      }

      v8 = *(v3 + 8 * v6 + 32);
    }

    v9 = v8;
    v10 = HMAccessory.subscript.getter();

    if (v10)
    {
      break;
    }

    if (__OFADD__(v6++, 1))
    {
      goto LABEL_22;
    }
  }

  if (!v4)
  {
    goto LABEL_14;
  }

LABEL_17:
  v12 = sub_1D1E6873C();
  if (v6 == v12)
  {
    goto LABEL_25;
  }

LABEL_18:
  if (!v7)
  {
    v13 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v6 < v13)
    {
      return v6 != v12;
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  MEMORY[0x1D3891EF0](v6, v3);
  swift_unknownObjectRelease();
LABEL_25:

  return v6 != v12;
}

unint64_t HomeState.Stream.accessoriesFromAnyHome(for:)(char *a1)
{
  v2 = *a1;
  swift_beginAccess();
  v3 = *(v1 + 64);
  if (v3)
  {
    v4 = [v3 homes];
    sub_1D1741B10(0, &qword_1EE07B620, 0x1E696CB98);
    sub_1D1E67C1C();

    v9 = sub_1D1749970(v5);
    sub_1D1747DDC(&v9);

    v6 = v9;
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC0];
  }

  v7 = sub_1D1A8CE80(v6, v2);

  return v7;
}

void *HomeState.Stream.accessory(for:)(uint64_t a1)
{
  v3 = 0;
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v40 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v34 - v8;
  swift_beginAccess();
  v10 = *(v1 + 64);
  if (v10)
  {
    v11 = [v10 homes];
    sub_1D1741B10(0, &qword_1EE07B620, 0x1E696CB98);
    sub_1D1E67C1C();

    v41 = sub_1D1749970(v12);
    sub_1D1747DDC(&v41);

    v13 = v41;
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC0];
  }

  v14 = (v5 + 16);
  v15 = *(v5 + 16);
  v15(v9, a1, v4);
  v38 = v4;
  v15(v40, a1, v4);
  v39 = v13 >> 62;
  v36 = v9;
  v37 = v5;
  v16 = v13 & 0xFFFFFFFFFFFFFF8;
  if (v13 >> 62)
  {
LABEL_29:
    v17 = sub_1D1E6873C();
  }

  else
  {
    v17 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v18 = 0;
  v19 = v13 & 0xC000000000000001;
  v35 = v13 + 32;
  while (v17 != v18)
  {
    if (v19)
    {
      v20 = MEMORY[0x1D3891EF0](v18, v13);
    }

    else
    {
      if (v18 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_28:
        __break(1u);
        goto LABEL_29;
      }

      v20 = *(v13 + 8 * v18 + 32);
    }

    v21 = v20;
    v22 = [v20 accessories];
    sub_1D1741B10(0, &qword_1EE07B690, 0x1E696CAC8);
    v14 = sub_1D1E67C1C();

    MEMORY[0x1EEE9AC00](v23);
    *(&v34 - 2) = v40;
    v24 = sub_1D174A6C4(sub_1D1A8D280, (&v34 - 4), v14);

    if (v24)
    {
      v17 = v18;
      break;
    }

    if (__OFADD__(v18++, 1))
    {
      goto LABEL_28;
    }
  }

  if (!v39)
  {
    if (v17 != *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_19;
    }

LABEL_25:
    v14 = *(v37 + 8);
    v16 = v38;
    v14(v36, v38);
    v3 = 0;
LABEL_26:

    v14(v40, v16);
    return v3;
  }

  if (v17 == sub_1D1E6873C())
  {
    goto LABEL_25;
  }

LABEL_19:
  if (v19)
  {
    v26 = MEMORY[0x1D3891EF0](v17, v13);
  }

  else
  {
    if (v17 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_32;
    }

    v26 = *(v35 + 8 * v17);
  }

  v27 = v26;
  v28 = [v26 accessories];
  sub_1D1741B10(0, &qword_1EE07B690, 0x1E696CAC8);
  v29 = sub_1D1E67C1C();

  MEMORY[0x1EEE9AC00](v30);
  v31 = v36;
  *(&v34 - 2) = v36;
  v3 = sub_1D174A6C4(sub_1D1A8D280, (&v34 - 4), v29);

  v14 = *(v37 + 8);
  v32 = v31;
  v16 = v38;
  v14(v32, v38);

  if (v3)
  {
    goto LABEL_26;
  }

LABEL_32:
  v14(v40, v16);
  __break(1u);

  __break(1u);
  return result;
}

void *HomeState.Stream.actionSet(for:)(uint64_t a1)
{
  v3 = 0;
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v40 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v34 - v8;
  swift_beginAccess();
  v10 = *(v1 + 64);
  if (v10)
  {
    v11 = [v10 homes];
    sub_1D1741B10(0, &qword_1EE07B620, 0x1E696CB98);
    sub_1D1E67C1C();

    v41 = sub_1D1749970(v12);
    sub_1D1747DDC(&v41);

    v13 = v41;
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC0];
  }

  v14 = (v5 + 16);
  v15 = *(v5 + 16);
  v15(v9, a1, v4);
  v38 = v4;
  v15(v40, a1, v4);
  v39 = v13 >> 62;
  v36 = v9;
  v37 = v5;
  v16 = v13 & 0xFFFFFFFFFFFFFF8;
  if (v13 >> 62)
  {
LABEL_29:
    v17 = sub_1D1E6873C();
  }

  else
  {
    v17 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v18 = 0;
  v19 = v13 & 0xC000000000000001;
  v35 = v13 + 32;
  while (v17 != v18)
  {
    if (v19)
    {
      v20 = MEMORY[0x1D3891EF0](v18, v13);
    }

    else
    {
      if (v18 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_28:
        __break(1u);
        goto LABEL_29;
      }

      v20 = *(v13 + 8 * v18 + 32);
    }

    v21 = v20;
    v22 = [v20 actionSets];
    sub_1D1741B10(0, &qword_1EE07B680, 0x1E696CAF0);
    v14 = sub_1D1E67C1C();

    MEMORY[0x1EEE9AC00](v23);
    *(&v34 - 2) = v40;
    v24 = sub_1D174A6C4(sub_1D1A8D280, (&v34 - 4), v14);

    if (v24)
    {
      v17 = v18;
      break;
    }

    if (__OFADD__(v18++, 1))
    {
      goto LABEL_28;
    }
  }

  if (!v39)
  {
    if (v17 != *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_19;
    }

LABEL_25:
    v14 = *(v37 + 8);
    v16 = v38;
    v14(v36, v38);
    v3 = 0;
LABEL_26:

    v14(v40, v16);
    return v3;
  }

  if (v17 == sub_1D1E6873C())
  {
    goto LABEL_25;
  }

LABEL_19:
  if (v19)
  {
    v26 = MEMORY[0x1D3891EF0](v17, v13);
  }

  else
  {
    if (v17 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_32;
    }

    v26 = *(v35 + 8 * v17);
  }

  v27 = v26;
  v28 = [v26 actionSets];
  sub_1D1741B10(0, &qword_1EE07B680, 0x1E696CAF0);
  v29 = sub_1D1E67C1C();

  MEMORY[0x1EEE9AC00](v30);
  v31 = v36;
  *(&v34 - 2) = v36;
  v3 = sub_1D174A6C4(sub_1D1A8D280, (&v34 - 4), v29);

  v14 = *(v37 + 8);
  v32 = v31;
  v16 = v38;
  v14(v32, v38);

  if (v3)
  {
    goto LABEL_26;
  }

LABEL_32:
  v14(v40, v16);
  __break(1u);

  __break(1u);
  return result;
}

void *HomeState.Stream.cameraProfile(for:)(uint64_t a1)
{
  v4 = 0;
  v5 = sub_1D1E66A7C();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v74 = &v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v71 = &v71 - v10;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v90 = &v71 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v71 - v14;
  v16 = MEMORY[0x1EEE9AC00](v13);
  v86 = (&v71 - v17);
  MEMORY[0x1EEE9AC00](v16);
  v73 = &v71 - v18;
  swift_beginAccess();
  v19 = *(v1 + 64);
  v85 = v5;
  if (v19)
  {
    v20 = [v19 homes];
    sub_1D1741B10(0, &qword_1EE07B620, 0x1E696CB98);
    sub_1D1E67C1C();

    v91 = sub_1D1749970(v21);
    sub_1D1747DDC(&v91);

    v22 = v91;
    v5 = v85;
  }

  else
  {
    v22 = MEMORY[0x1E69E7CC0];
  }

  v23 = *(v6 + 2);
  (v23)(v73, a1, v5);
  v80 = v23;
  v81 = (v6 + 16);
  (v23)(v86, a1, v5);
  v72 = v22 >> 62;
  if (v22 >> 62)
  {
LABEL_77:
    v84 = v22 & 0xFFFFFFFFFFFFFF8;
    v83 = sub_1D1E6873C();
  }

  else
  {
    v84 = v22 & 0xFFFFFFFFFFFFFF8;
    v83 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v24 = 0;
  v82 = v22 & 0xC000000000000001;
  v78 = v22;
  v79 = v22 + 32;
  v25 = (v6 + 8);
  v76 = v15;
  v77 = (v6 + 8);
  while (1)
  {
    if (v24 == v83)
    {
      v36 = v83;
      goto LABEL_40;
    }

    v89 = v24;
    if (v82)
    {
      v26 = MEMORY[0x1D3891EF0]();
    }

    else
    {
      if (v24 >= *(v84 + 16))
      {
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

      v26 = *(v79 + 8 * v24);
    }

    v87 = v26;
    v27 = [v26 accessories];
    sub_1D1741B10(0, &qword_1EE07B690, 0x1E696CAC8);
    v23 = sub_1D1E67C1C();

    v6 = v86;
    v28 = v80;
    v80(v15, v86, v5);
    v28(v90, v6, v5);
    v88 = v23 >> 62;
    v2 = v23 >> 62 ? sub_1D1E6873C() : *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5 = 0;
    v22 = v23 & 0xC000000000000001;
    v75 = v23 + 32;
    while (v2 != v5)
    {
      if (v22)
      {
        v30 = MEMORY[0x1D3891EF0](v5, v23);
      }

      else
      {
        if (v5 >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_72:
          __break(1u);
          goto LABEL_73;
        }

        v30 = *(v23 + 8 * v5 + 32);
      }

      v6 = v30;
      v31 = [v30 cameraProfiles];
      if (v31)
      {
        v32 = v31;
        sub_1D1741B10(0, &qword_1EE079CD8, 0x1E696CB08);
        v33 = sub_1D1E67C1C();

        v15 = &v71;
        MEMORY[0x1EEE9AC00](v34);
        *(&v71 - 2) = v90;
        v35 = sub_1D174A6C4(sub_1D1A8D280, (&v71 - 4), v33);

        if (v35)
        {
          v2 = v5;
          break;
        }
      }

      else
      {
      }

      v29 = __OFADD__(v5++, 1);
      if (v29)
      {
        goto LABEL_72;
      }
    }

    v5 = v85;
    if (!v88)
    {
      break;
    }

    if (v2 != sub_1D1E6873C())
    {
      goto LABEL_34;
    }

LABEL_28:
    v15 = v76;
    v25 = v77;
    v6 = *v77;
    (*v77)(v76, v5);

    v6(v90, v5);

    v24 = (v89 + 1);
    v22 = v78;
    if (__OFADD__(v89, 1))
    {
      goto LABEL_74;
    }
  }

  if (v2 == *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_28;
  }

LABEL_34:
  if (v22)
  {
    goto LABEL_83;
  }

  if (v2 >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
LABEL_85:
    v68 = *v77;
    v38 = v85;
    (*v77)(v71, v85);

    v68(v74, v38);
    v68(v73, v38);

    v68(v86, v38);
    __break(1u);
LABEL_86:
    v66 = v77;
    v69 = *v77;
    v57 = v85;
    (*v77)(v74, v85);
    v69(v71, v57);

    __break(1u);
    goto LABEL_87;
  }

  for (i = *(v75 + 8 * v2); ; i = MEMORY[0x1D3891EF0](v2, v23))
  {
    v38 = i;
    v39 = [i cameraProfiles];
    v15 = v76;
    if (!v39)
    {
      goto LABEL_88;
    }

    v40 = v39;
    sub_1D1741B10(0, &qword_1EE079CD8, 0x1E696CB08);
    v41 = sub_1D1E67C1C();

    MEMORY[0x1EEE9AC00](v42);
    *(&v71 - 2) = v15;
    v43 = sub_1D174A6C4(sub_1D1A8D280, (&v71 - 4), v41);

    v44 = v77;
    v45 = *v77;
    v5 = v85;
    (*v77)(v15, v85);

    if (!v43)
    {
      goto LABEL_89;
    }

    v45(v90, v5);

    v22 = v78;
    v25 = v44;
    v36 = v89;
LABEL_40:
    if (v72)
    {
      if (v36 == sub_1D1E6873C())
      {
LABEL_59:
        v57 = *v25;
        (*v25)(v73, v5);

        v58 = 0;
LABEL_70:
        v57(v86, v5);
        return v58;
      }
    }

    else if (v36 == *(v84 + 16))
    {
      goto LABEL_59;
    }

    if (v82)
    {
      v46 = MEMORY[0x1D3891EF0](v36, v22);
      goto LABEL_45;
    }

    if (v36 >= *(v84 + 16))
    {
      break;
    }

    v46 = *(v79 + 8 * v36);
LABEL_45:
    v89 = v46;
    v47 = [v46 accessories];
    sub_1D1741B10(0, &qword_1EE07B690, 0x1E696CAC8);
    v5 = sub_1D1E67C1C();

    v48 = v73;
    v6 = v85;
    v49 = v80;
    v80(v71, v73, v85);
    v49(v74, v48, v6);
    v90 = (v5 >> 62);
    v15 = (v5 & 0xFFFFFFFFFFFFFF8);
    if (v5 >> 62)
    {
      v22 = sub_1D1E6873C();
    }

    else
    {
      v22 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v50 = 0;
    v51 = v5 & 0xC000000000000001;
    v88 = v5 + 32;
    while (v22 != v50)
    {
      if (v51)
      {
        v52 = MEMORY[0x1D3891EF0](v50, v5);
      }

      else
      {
        if (v50 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_75;
        }

        v52 = *(v5 + 8 * v50 + 32);
      }

      v6 = v52;
      v53 = [v52 cameraProfiles];
      if (v53)
      {
        v54 = v53;
        sub_1D1741B10(0, &qword_1EE079CD8, 0x1E696CB08);
        v55 = sub_1D1E67C1C();

        v23 = &v71;
        MEMORY[0x1EEE9AC00](v56);
        *(&v71 - 2) = v74;
        v2 = sub_1D174A6C4(sub_1D1A8D280, (&v71 - 4), v55);

        if (v2)
        {
          v22 = v50;
          break;
        }
      }

      else
      {
      }

      v29 = __OFADD__(v50++, 1);
      if (v29)
      {
        goto LABEL_76;
      }
    }

    if (v90)
    {
      v59 = sub_1D1E6873C();
    }

    else
    {
      v59 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v22 == v59)
    {
      goto LABEL_85;
    }

    if (v51)
    {
      goto LABEL_81;
    }

    if (v22 < *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v60 = *(v88 + 8 * v22);
      goto LABEL_67;
    }

    __break(1u);
LABEL_83:
    ;
  }

  __break(1u);
LABEL_81:
  v60 = MEMORY[0x1D3891EF0](v22, v5);
LABEL_67:
  v38 = v60;
  v61 = [v60 cameraProfiles];
  if (!v61)
  {
    goto LABEL_86;
  }

  v62 = v61;
  sub_1D1741B10(0, &qword_1EE079CD8, 0x1E696CB08);
  v63 = sub_1D1E67C1C();

  MEMORY[0x1EEE9AC00](v64);
  v65 = v71;
  *(&v71 - 2) = v71;
  v58 = sub_1D174A6C4(sub_1D1A8D280, (&v71 - 4), v63);

  v57 = *v77;
  v66 = v85;
  (*v77)(v65, v85);

  if (v58)
  {

    v57(v74, v66);
    v57(v73, v66);

    v5 = v66;
    goto LABEL_70;
  }

LABEL_87:
  v57(v74, v66);
  __break(1u);
LABEL_88:
  v45 = v77;
  v70 = *v77;
  v4 = v85;
  (*v77)(v90, v85);
  v70(v15, v4);

  __break(1u);
LABEL_89:
  v45(v90, v5);
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_1D1A86130@<X0>(id *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v38 = a3;
  v5 = sub_1D1E66A7C();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v37 - v10;
  v12 = [*a1 accessories];
  sub_1D1741B10(0, &qword_1EE07B690, 0x1E696CAC8);
  v13 = sub_1D1E67C1C();

  v14 = *(v6 + 2);
  v40 = v11;
  v14(v11, a2, v5);
  v43 = v9;
  v41 = v5;
  v14(v9, a2, v5);
  v42 = v13 >> 62;
  v39 = v6;
  v15 = v13 & 0xFFFFFFFFFFFFFF8;
  if (v13 >> 62)
  {
LABEL_27:
    v16 = sub_1D1E6873C();
  }

  else
  {
    v16 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v17 = 0;
  v18 = v13 & 0xC000000000000001;
  v37 = v13 + 32;
  while (v16 != v17)
  {
    if (v18)
    {
      v20 = MEMORY[0x1D3891EF0](v17, v13);
    }

    else
    {
      if (v17 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_26:
        __break(1u);
        goto LABEL_27;
      }

      v20 = *(v13 + 8 * v17 + 32);
    }

    v21 = v20;
    v22 = [v20 cameraProfiles];
    if (v22)
    {
      v23 = v22;
      sub_1D1741B10(0, &qword_1EE079CD8, 0x1E696CB08);
      v24 = sub_1D1E67C1C();

      MEMORY[0x1EEE9AC00](v25);
      *(&v37 - 2) = v43;
      v9 = sub_1D174A6C4(sub_1D1A8D280, (&v37 - 4), v24);

      if (v9)
      {
        v16 = v17;
        break;
      }
    }

    else
    {
    }

    if (__OFADD__(v17++, 1))
    {
      goto LABEL_26;
    }
  }

  if (!v42)
  {
    if (v16 != *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_16;
    }

LABEL_23:
    v33 = *(v39 + 1);
    v15 = v41;
    v33(v40, v41);
    v32 = 0;
LABEL_24:
    v34 = v38;

    result = (v33)(v43, v15);
    *v34 = v32;
    return result;
  }

  if (v16 == sub_1D1E6873C())
  {
    goto LABEL_23;
  }

LABEL_16:
  if (v18)
  {
    v26 = MEMORY[0x1D3891EF0](v16, v13);
  }

  else
  {
    if (v16 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_30;
    }

    v26 = *(v37 + 8 * v16);
  }

  v16 = v26;
  v27 = [v26 cameraProfiles];
  v9 = v39;
  if (!v27)
  {
LABEL_30:
    v33 = *(v9 + 1);
    v36 = v41;
    v33(v43, v41);
    v33(v40, v36);

    __break(1u);
    goto LABEL_31;
  }

  v28 = v27;
  sub_1D1741B10(0, &qword_1EE079CD8, 0x1E696CB08);
  v29 = sub_1D1E67C1C();

  MEMORY[0x1EEE9AC00](v30);
  v31 = v40;
  *(&v37 - 2) = v40;
  v32 = sub_1D174A6C4(sub_1D1A8D280, (&v37 - 4), v29);

  v33 = *(v9 + 1);
  v15 = v41;
  v33(v31, v41);

  if (v32)
  {
    goto LABEL_24;
  }

LABEL_31:
  result = (v33)(v43, v15);
  __break(1u);
  return result;
}

unint64_t HomeState.Stream.mediaProfile(for:)(uint64_t a1)
{
  v135 = a1;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642980, &unk_1D1E6E6E0);
  v2 = MEMORY[0x1EEE9AC00](v131);
  v108 = &v101 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v101 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v101 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v107 = &v101 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v115 = &v101 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v125 = &v101 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = (&v101 - v17);
  MEMORY[0x1EEE9AC00](v16);
  v20 = (&v101 - v19);
  v21 = sub_1D1E66A7C();
  v137 = *(v21 - 8);
  v22 = MEMORY[0x1EEE9AC00](v21);
  v109 = &v101 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v102 = &v101 - v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v122 = &v101 - v27;
  v28 = MEMORY[0x1EEE9AC00](v26);
  v136 = &v101 - v29;
  v30 = MEMORY[0x1EEE9AC00](v28);
  v120 = &v101 - v31;
  v32 = MEMORY[0x1EEE9AC00](v30);
  v116 = &v101 - v33;
  MEMORY[0x1EEE9AC00](v32);
  v35 = &v101 - v34;
  swift_beginAccess();
  v36 = *(v1 + 64);
  if (v36)
  {
    v37 = [v36 homes];
    sub_1D1741B10(0, &qword_1EE07B620, 0x1E696CB98);
    sub_1D1E67C1C();

    v139 = sub_1D1749970(v38);
    sub_1D1747DDC(&v139);
    v101 = 0;

    v39 = v139;
  }

  else
  {
    v101 = 0;
    v39 = MEMORY[0x1E69E7CC0];
  }

  v41 = v137 + 16;
  v40 = *(v137 + 16);
  v42 = v135;
  v40(v35, v135, v21);
  v133 = v40;
  v134 = v41;
  v40(v116, v42, v21);
  v104 = v35;
  v106 = v9;
  v103 = v39 >> 62;
  if (v39 >> 62)
  {
    goto LABEL_94;
  }

  v114 = v39 & 0xFFFFFFFFFFFFFF8;
  for (i = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1D1E6873C())
  {
    v43 = 0;
    v112 = v39 & 0xC000000000000001;
    v105 = v39;
    v111 = v39 + 32;
    v129 = (v137 + 48);
    v130 = (v137 + 56);
    v121 = (v137 + 32);
    v126 = (v137 + 8);
    v44 = qword_1D1E71260;
    v124 = v20;
LABEL_7:
    if (v43 == i)
    {
      v76 = i;
      v50 = v115;
      v18 = v129;
      goto LABEL_48;
    }

    v119 = v43;
    if (v112)
    {
      break;
    }

    if (v43 < *(v114 + 16))
    {
      v45 = *(v111 + 8 * v43);
      goto LABEL_11;
    }

    __break(1u);
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
LABEL_93:
    __break(1u);
LABEL_94:
    v114 = v39 & 0xFFFFFFFFFFFFFF8;
  }

  v45 = MEMORY[0x1D3891EF0]();
LABEL_11:
  v117 = v45;
  v46 = [v45 accessories];
  sub_1D1741B10(0, &qword_1EE07B690, 0x1E696CAC8);
  v47 = sub_1D1E67C1C();

  v48 = v116;
  v49 = v133;
  v50 = v134;
  v133(v120, v116, v21);
  v51 = v48;
  v52 = v47;
  v49(v136, v51, v21);
  v118 = v47 >> 62;
  v135 = v47 & 0xFFFFFFFFFFFFFF8;
  if (v47 >> 62)
  {
    v39 = sub_1D1E6873C();
  }

  else
  {
    v39 = *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v53 = 0;
  v132 = v52 & 0xC000000000000001;
  v110 = v52 + 32;
  v127 = v52;
  v128 = v39;
  while (1)
  {
    if (v39 == v53)
    {
      goto LABEL_33;
    }

    if (v132)
    {
      v57 = MEMORY[0x1D3891EF0](v53, v52);
    }

    else
    {
      if (v53 >= *(v135 + 16))
      {
        __break(1u);
LABEL_78:
        __break(1u);
LABEL_79:
        v39 = v53;
LABEL_80:
        v5 = v104;
        if (v127)
        {
          v96 = sub_1D1E6873C();
        }

        else
        {
          v96 = *(v137 + 16);
        }

        if (v39 == v96)
        {
          goto LABEL_102;
        }

        if (v136)
        {
LABEL_98:
          v97 = MEMORY[0x1D3891EF0](v39, v44);
          goto LABEL_87;
        }

        if (v39 < *(v137 + 16))
        {
          v97 = v124[v39];
LABEL_87:
          v98 = v97;
          v138 = v97;
          v50 = v102;
          sub_1D1A87F50(&v138, v102, &v139);
          v39 = *v126;
          (*v126)(v50, v21);

          v95 = v139;
          if (!v139)
          {
            goto LABEL_103;
          }

          (v39)(v109, v21);
          (v39)(v5, v21);

          goto LABEL_89;
        }

        __break(1u);
        goto LABEL_100;
      }

      v57 = *(v52 + 8 * v53 + 32);
    }

    v58 = v57;
    v59 = [v57 mediaProfile];
    v137 = v58;
    if (v59)
    {
      v60 = v59;
      v61 = [v59 uniqueIdentifier];

      sub_1D1E66A5C();
      v62 = 0;
    }

    else
    {
      v62 = 1;
    }

    v63 = *v130;
    (*v130)(v20, v62, 1, v21);
    v133(v18, v136, v21);
    v63(v18, 0, 1, v21);
    v64 = *(v131 + 48);
    sub_1D17783E0(v20, v5);
    sub_1D17783E0(v18, &v5[v64]);
    v65 = *v129;
    if ((*v129)(v5, 1, v21) == 1)
    {
      break;
    }

    v67 = v125;
    sub_1D17783E0(v5, v125);
    if (v65(&v5[v64], 1, v21) == 1)
    {
      sub_1D1741A30(v18, &qword_1EC642590, v44);
      v54 = v124;
      sub_1D1741A30(v124, &qword_1EC642590, v44);
      v55 = v67;
      v20 = v54;
      (*v126)(v55, v21);
      v50 = v137;
LABEL_15:
      sub_1D1741A30(v5, &qword_1EC642980, &unk_1D1E6E6E0);
      goto LABEL_16;
    }

    v68 = v126;
    v69 = v44;
    v70 = v122;
    (*v121)(v122, &v5[v64], v21);
    sub_1D1797998();
    v123 = sub_1D1E6775C();
    v71 = *v68;
    (*v68)(v70, v21);
    sub_1D1741A30(v18, &qword_1EC642590, v69);
    v72 = v124;
    sub_1D1741A30(v124, &qword_1EC642590, v69);
    v73 = v67;
    v20 = v72;
    v71(v73, v21);
    v44 = v69;
    v52 = v127;
    sub_1D1741A30(v5, &qword_1EC642590, v44);
    v50 = v137;
    if (v123)
    {
      goto LABEL_30;
    }

LABEL_16:

LABEL_17:
    v56 = __OFADD__(v53++, 1);
    v39 = v128;
    if (v56)
    {
      goto LABEL_78;
    }
  }

  sub_1D1741A30(v18, &qword_1EC642590, v44);
  v52 = v127;
  sub_1D1741A30(v20, &qword_1EC642590, v44);
  v66 = v65(&v5[v64], 1, v21);
  v50 = v137;
  if (v66 != 1)
  {
    goto LABEL_15;
  }

  sub_1D1741A30(v5, &qword_1EC642590, v44);
LABEL_30:
  v74 = [v50 mediaProfile];

  if (!v74)
  {
    goto LABEL_17;
  }

  v39 = v53;
LABEL_33:
  if (v118)
  {
    if (v39 != sub_1D1E6873C())
    {
      goto LABEL_43;
    }

LABEL_37:
    v39 = v126;
    v75 = *v126;
    (*v126)(v120, v21);

    v75(v136, v21);

    v43 = v119 + 1;
    if (__OFADD__(v119, 1))
    {
      goto LABEL_91;
    }

    goto LABEL_7;
  }

  if (v39 == *(v135 + 16))
  {
    goto LABEL_37;
  }

LABEL_43:
  if (v132)
  {
LABEL_100:
    v77 = MEMORY[0x1D3891EF0](v39, v52);
    v50 = v115;
    v18 = v129;
LABEL_46:
    v138 = v77;
    v5 = v120;
    sub_1D1A87F50(&v138, v120, &v139);
    v39 = *v126;
    (*v126)(v5, v21);

    v78 = v139;
    if (!v139)
    {
      goto LABEL_104;
    }

    (v39)(v136, v21);

    v76 = v119;
LABEL_48:
    if (v103)
    {
      if (v76 != sub_1D1E6873C())
      {
        goto LABEL_50;
      }
    }

    else if (v76 != *(v114 + 16))
    {
LABEL_50:
      if (v112)
      {
        v79 = MEMORY[0x1D3891EF0](v76, v105);
        goto LABEL_53;
      }

      if (v76 < *(v114 + 16))
      {
        v79 = *(v111 + 8 * v76);
LABEL_53:
        v80 = v79;
        v81 = [v79 accessories];
        sub_1D1741B10(0, &qword_1EE07B690, 0x1E696CAC8);
        v44 = sub_1D1E67C1C();

        v82 = v104;
        v83 = v133;
        v5 = v134;
        v133(v102, v104, v21);
        v83(v109, v82, v21);
        v127 = v44 >> 62;
        v125 = v80;
        v137 = v44 & 0xFFFFFFFFFFFFFF8;
        if (v44 >> 62)
        {
          v39 = sub_1D1E6873C();
        }

        else
        {
          v39 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v52 = v107;
        v53 = 0;
        v135 = v44;
        v136 = (v44 & 0xC000000000000001);
        v124 = (v44 + 32);
        v132 = v39;
        while (1)
        {
          if (v39 == v53)
          {
            goto LABEL_80;
          }

          if (v136)
          {
            v84 = MEMORY[0x1D3891EF0](v53, v44);
          }

          else
          {
            if (v53 >= *(v137 + 16))
            {
              goto LABEL_92;
            }

            v84 = *(v44 + 8 * v53 + 32);
          }

          v20 = v84;
          v85 = [v84 mediaProfile];
          if (v85)
          {
            v86 = v85;
            v87 = [v85 uniqueIdentifier];

            sub_1D1E66A5C();
            v18 = v129;
            v88 = 0;
          }

          else
          {
            v88 = 1;
          }

          v89 = *v130;
          (*v130)(v50, v88, 1, v21);
          v133(v52, v109, v21);
          v89(v52, 0, 1, v21);
          v90 = *(v131 + 48);
          v5 = v108;
          sub_1D17783E0(v50, v108);
          sub_1D17783E0(v52, &v5[v90]);
          v91 = *v18;
          if ((*v18)(v5, 1, v21) == 1)
          {
            sub_1D1741A30(v52, &qword_1EC642590, qword_1D1E71260);
            sub_1D1741A30(v50, &qword_1EC642590, qword_1D1E71260);
            if (v91(&v5[v90], 1, v21) != 1)
            {
              goto LABEL_57;
            }

            sub_1D1741A30(v5, &qword_1EC642590, qword_1D1E71260);
            v44 = v135;
          }

          else
          {
            v50 = v106;
            sub_1D17783E0(v5, v106);
            if (v91(&v5[v90], 1, v21) == 1)
            {
              v52 = v107;
              sub_1D1741A30(v107, &qword_1EC642590, qword_1D1E71260);
              sub_1D1741A30(v115, &qword_1EC642590, qword_1D1E71260);
              (*v126)(v50, v21);
LABEL_57:
              sub_1D1741A30(v5, &qword_1EC642980, &unk_1D1E6E6E0);
              v44 = v135;
LABEL_58:

              goto LABEL_59;
            }

            v92 = v122;
            (*v121)(v122, &v5[v90], v21);
            sub_1D1797998();
            LODWORD(v128) = sub_1D1E6775C();
            v93 = *v126;
            (*v126)(v92, v21);
            v52 = v107;
            sub_1D1741A30(v107, &qword_1EC642590, qword_1D1E71260);
            sub_1D1741A30(v115, &qword_1EC642590, qword_1D1E71260);
            v93(v50, v21);
            v44 = v135;
            v18 = v129;
            sub_1D1741A30(v5, &qword_1EC642590, qword_1D1E71260);
            if ((v128 & 1) == 0)
            {
              goto LABEL_58;
            }
          }

          v94 = [v20 mediaProfile];

          if (v94)
          {
            goto LABEL_79;
          }

LABEL_59:
          v56 = __OFADD__(v53++, 1);
          v50 = v115;
          v39 = v132;
          if (v56)
          {
            goto LABEL_93;
          }
        }
      }

      __break(1u);
      goto LABEL_98;
    }

    v39 = *v126;
    (*v126)(v104, v21);

    v95 = 0;
LABEL_89:
    (v39)(v116, v21);
    return v95;
  }

  v50 = v115;
  v18 = v129;
  if (v39 < *(v135 + 16))
  {
    v77 = *(v110 + 8 * v39);
    goto LABEL_46;
  }

  __break(1u);
LABEL_102:
  v39 = v126;
  v100 = *v126;
  (*v126)(v102, v21);

  v100(v109, v21);
  v100(v5, v21);

  v100(v116, v21);
  __break(1u);
LABEL_103:
  (v39)(v109, v21);
  __break(1u);
LABEL_104:
  (v39)(v136, v21);
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_1D1A877DC@<X0>(id *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642980, &unk_1D1E6E6E0);
  MEMORY[0x1EEE9AC00](v66);
  v7 = &v51 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v58 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v71 = &v51 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v60 = &v51 - v13;
  v14 = sub_1D1E66A7C();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v56 = &v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v51 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v51 - v21;
  v23 = [*a1 accessories];
  sub_1D1741B10(0, &qword_1EE07B690, 0x1E696CAC8);
  v24 = sub_1D1E67C1C();

  v25 = v15[2];
  v53 = v22;
  (v25)(v22, a2, v14);
  v68 = v20;
  v63 = v25;
  v64 = v15 + 2;
  (v25)(v20, a2, v14);
  v52 = a3;
  v54 = v24 >> 62;
  if (v24 >> 62)
  {
LABEL_35:
    v69 = v24 & 0xFFFFFFFFFFFFFF8;
    v70 = sub_1D1E6873C();
  }

  else
  {
    v69 = v24 & 0xFFFFFFFFFFFFFF8;
    v70 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v26 = 0;
  v67 = v24 & 0xC000000000000001;
  v51 = v24 + 32;
  v61 = v15 + 6;
  v62 = (v15 + 7);
  v55 = (v15 + 4);
  v59 = v15 + 1;
  v27 = v60;
  v65 = v24;
  while (v70 != v26)
  {
    if (v67)
    {
      v29 = MEMORY[0x1D3891EF0](v26, v24);
    }

    else
    {
      if (v26 >= *(v69 + 16))
      {
        __break(1u);
LABEL_34:
        __break(1u);
        goto LABEL_35;
      }

      v29 = *(v24 + 8 * v26 + 32);
    }

    v15 = v29;
    v30 = [v29 mediaProfile];
    if (v30)
    {
      v31 = v30;
      v32 = [v30 uniqueIdentifier];

      sub_1D1E66A5C();
      v33 = 0;
    }

    else
    {
      v33 = 1;
    }

    v34 = *v62;
    (*v62)(v27, v33, 1, v14);
    v35 = v71;
    (v63)(v71, v68, v14);
    v34(v35, 0, 1, v14);
    v36 = *(v66 + 48);
    sub_1D17783E0(v27, v7);
    sub_1D17783E0(v35, &v7[v36]);
    v25 = v61;
    v37 = *v61;
    if ((*v61)(v7, 1, v14) == 1)
    {
      sub_1D1741A30(v71, &qword_1EC642590, qword_1D1E71260);
      sub_1D1741A30(v27, &qword_1EC642590, qword_1D1E71260);
      v38 = v37(&v7[v36], 1, v14);
      v24 = v65;
      if (v38 == 1)
      {
        sub_1D1741A30(v7, &qword_1EC642590, qword_1D1E71260);
LABEL_20:
        v43 = [v15 mediaProfile];

        if (v43)
        {
          v70 = v26;
          break;
        }

        goto LABEL_7;
      }

      goto LABEL_5;
    }

    v39 = v71;
    v40 = v58;
    sub_1D17783E0(v7, v58);
    if (v37(&v7[v36], 1, v14) == 1)
    {
      v25 = qword_1D1E71260;
      sub_1D1741A30(v39, &qword_1EC642590, qword_1D1E71260);
      v27 = v60;
      sub_1D1741A30(v60, &qword_1EC642590, qword_1D1E71260);
      (*v59)(v40, v14);
      v24 = v65;
LABEL_5:
      sub_1D1741A30(v7, &qword_1EC642980, &unk_1D1E6E6E0);
      goto LABEL_6;
    }

    v41 = v56;
    (*v55)(v56, &v7[v36], v14);
    sub_1D1797998();
    v57 = sub_1D1E6775C();
    v25 = v59;
    v42 = *v59;
    (*v59)(v41, v14);
    sub_1D1741A30(v39, &qword_1EC642590, qword_1D1E71260);
    v27 = v60;
    sub_1D1741A30(v60, &qword_1EC642590, qword_1D1E71260);
    v42(v40, v14);
    sub_1D1741A30(v7, &qword_1EC642590, qword_1D1E71260);
    v24 = v65;
    if (v57)
    {
      goto LABEL_20;
    }

LABEL_6:

LABEL_7:
    if (__OFADD__(v26++, 1))
    {
      goto LABEL_34;
    }
  }

  v44 = v59;
  if (v54)
  {
    v45 = sub_1D1E6873C();
  }

  else
  {
    v45 = *(v69 + 16);
  }

  if (v70 == v45)
  {
    v25 = *v44;
    (*v44)(v53, v14);
    v46 = 0;
    goto LABEL_32;
  }

  if (v67)
  {
    v47 = MEMORY[0x1D3891EF0](v70, v24);
LABEL_31:
    v48 = v47;
    v72 = v47;
    v49 = v53;
    sub_1D1A87F50(&v72, v53, &v73);
    v25 = *v44;
    (*v44)(v49, v14);

    v46 = v73;
    if (!v73)
    {
      goto LABEL_38;
    }

LABEL_32:

    result = (v25)(v68, v14);
    *v52 = v46;
  }

  else
  {
    if (v70 < *(v69 + 16))
    {
      v47 = *(v51 + 8 * v70);
      goto LABEL_31;
    }

    __break(1u);
LABEL_38:
    result = (v25)(v68, v14);
    __break(1u);
  }

  return result;
}

id sub_1D1A87F50@<X0>(id *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v34 = a3;
  v5 = sub_1D1E66A7C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v31 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642980, &unk_1D1E6E6E0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v31 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v33 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v31 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v31 - v17;
  v32 = *a1;
  v19 = [v32 mediaProfile];
  if (v19)
  {
    v20 = v19;
    v21 = [v19 uniqueIdentifier];

    sub_1D1E66A5C();
    v22 = *(v6 + 56);
    v22(v18, 0, 1, v5);
  }

  else
  {
    v22 = *(v6 + 56);
    v22(v18, 1, 1, v5);
  }

  (*(v6 + 16))(v16, a2, v5);
  v22(v16, 0, 1, v5);
  v23 = *(v8 + 48);
  sub_1D17783E0(v18, v10);
  sub_1D17783E0(v16, &v10[v23]);
  v24 = *(v6 + 48);
  if (v24(v10, 1, v5) == 1)
  {
    sub_1D1741A30(v16, &qword_1EC642590, qword_1D1E71260);
    sub_1D1741A30(v18, &qword_1EC642590, qword_1D1E71260);
    if (v24(&v10[v23], 1, v5) == 1)
    {
      sub_1D1741A30(v10, &qword_1EC642590, qword_1D1E71260);
LABEL_12:
      result = [v32 mediaProfile];
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  v25 = v33;
  sub_1D17783E0(v10, v33);
  if (v24(&v10[v23], 1, v5) == 1)
  {
    sub_1D1741A30(v16, &qword_1EC642590, qword_1D1E71260);
    sub_1D1741A30(v18, &qword_1EC642590, qword_1D1E71260);
    (*(v6 + 8))(v25, v5);
LABEL_9:
    sub_1D1741A30(v10, &qword_1EC642980, &unk_1D1E6E6E0);
    goto LABEL_10;
  }

  v27 = v31;
  (*(v6 + 32))(v31, &v10[v23], v5);
  sub_1D1797998();
  v28 = v25;
  v29 = sub_1D1E6775C();
  v30 = *(v6 + 8);
  v30(v27, v5);
  sub_1D1741A30(v16, &qword_1EC642590, qword_1D1E71260);
  sub_1D1741A30(v18, &qword_1EC642590, qword_1D1E71260);
  v30(v28, v5);
  sub_1D1741A30(v10, &qword_1EC642590, qword_1D1E71260);
  if (v29)
  {
    goto LABEL_12;
  }

LABEL_10:
  result = 0;
LABEL_13:
  *v34 = result;
  return result;
}

void *HomeState.Stream.characteristic(for:)(uint64_t a1)
{
  v5 = 0;
  v6 = sub_1D1E66A7C();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v153 = &v146 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v147 = &v146 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v166 = &v146 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v156 = &v146 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v154 = &v146 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v150 = &v146 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v155 = &v146 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v148 = &v146 - v23;
  v24 = MEMORY[0x1EEE9AC00](v22);
  v183 = &v146 - v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v181 = &v146 - v27;
  v28 = MEMORY[0x1EEE9AC00](v26);
  v176 = &v146 - v29;
  v30 = MEMORY[0x1EEE9AC00](v28);
  v164 = &v146 - v31;
  v32 = MEMORY[0x1EEE9AC00](v30);
  v161 = &v146 - v33;
  MEMORY[0x1EEE9AC00](v32);
  v152 = &v146 - v34;
  swift_beginAccess();
  v35 = *(v1 + 64);
  if (v35)
  {
    v36 = [v35 homes];
    sub_1D1741B10(0, &qword_1EE07B620, 0x1E696CB98);
    sub_1D1E67C1C();

    v186 = sub_1D1749970(v37);
    sub_1D1747DDC(&v186);

    v38 = v186;
  }

  else
  {
    v38 = MEMORY[0x1E69E7CC0];
  }

  v39 = *(v7 + 16);
  v39(v152, a1, v6);
  v172 = v39;
  v173 = v7 + 16;
  v39(v161, a1, v6);
  v149 = v38 >> 62;
  if (v38 >> 62)
  {
    goto LABEL_169;
  }

  v160 = v38 & 0xFFFFFFFFFFFFFF8;
  v159 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_6:
  v40 = 0;
  v158 = v38 & 0xC000000000000001;
  v151 = v38;
  v157 = v38 + 32;
  v41 = v7 + 8;
  v177 = v6;
  v171 = (v7 + 8);
  while (v40 != v159)
  {
    v163 = v40;
    if (v158)
    {
      v42 = MEMORY[0x1D3891EF0]();
    }

    else
    {
      if (v40 >= *(v160 + 16))
      {
        goto LABEL_160;
      }

      v42 = *(v157 + 8 * v40);
    }

    v43 = v42;
    v2 = 0x1E696CB98uLL;
    v44 = sub_1D174A5B8(&qword_1EE079C20, &qword_1EE07B620, 0x1E696CB98, &protocol conformance descriptor for HMHome);
    v45 = *(v44 + 168);
    v46 = sub_1D1741B10(0, &qword_1EE07B620, 0x1E696CB98);
    v47 = v45(v46, v44);
    v7 = v161;
    v48 = v172;
    v38 = v173;
    v172(v164, v161, v6);
    v48(v176, v7, v6);
    v162 = v47 >> 62;
    v174 = v47 & 0xFFFFFFFFFFFFFF8;
    if (v47 >> 62)
    {
      v175 = sub_1D1E6873C();
    }

    else
    {
      v175 = *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v49 = v47;
    v41 = v171;
    v50 = 0;
    v170 = v49 & 0xC000000000000001;
    v165 = v49;
    v169 = v49 + 32;
    v168 = v43;
    while (1)
    {
      if (v50 == v175)
      {
        v7 = v175;
        goto LABEL_46;
      }

      v180 = v50;
      if (v170)
      {
        v51 = MEMORY[0x1D3891EF0]();
      }

      else
      {
        if (v50 >= *(v174 + 16))
        {
          __break(1u);
LABEL_157:
          __break(1u);
LABEL_158:
          __break(1u);
LABEL_159:
          __break(1u);
LABEL_160:
          __break(1u);
LABEL_161:
          __break(1u);
          goto LABEL_162;
        }

        v51 = *(v169 + 8 * v50);
      }

      v2 = v51;
      v52 = sub_1D174A5B8(&qword_1EC6497F0, &qword_1EE07B690, 0x1E696CAC8, &protocol conformance descriptor for HMAccessory);
      v53 = *(v52 + 240);
      v54 = sub_1D1741B10(0, &qword_1EE07B690, 0x1E696CAC8);
      v55 = v53(v54, v52);
      v56 = v176;
      v38 = v172;
      v7 = v173;
      v172(v181, v176, v6);
      (v38)(v183, v56, v6);
      v178 = v2;
      v179 = v55 >> 62;
      v184 = v55 & 0xFFFFFFFFFFFFFF8;
      if (v55 >> 62)
      {
        v41 = sub_1D1E6873C();
      }

      else
      {
        v41 = *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v57 = 0;
      v182 = v55 & 0xC000000000000001;
      v167 = v55 + 32;
      while (1)
      {
        if (v41 == v57)
        {
          goto LABEL_31;
        }

        if (v182)
        {
          v58 = v55;
          v59 = MEMORY[0x1D3891EF0](v57, v55);
        }

        else
        {
          if (v57 >= *(v184 + 16))
          {
            __break(1u);
LABEL_57:
            __break(1u);
            goto LABEL_58;
          }

          v58 = v55;
          v59 = *(v55 + 8 * v57 + 32);
        }

        v3 = v59;
        v186 = v59;
        v6 = 0x1E696CC40uLL;
        v2 = sub_1D174A5B8(&qword_1EC6497C0, &qword_1EE079BD0, 0x1E696CC40, &protocol conformance descriptor for HMService);
        v60 = *(v2 + 104);
        v61 = sub_1D1741B10(0, &qword_1EE079BD0, 0x1E696CC40);
        v62 = v60(&v185, v61, v2);
        v7 = &v146;
        MEMORY[0x1EEE9AC00](v62);
        *(&v146 - 2) = v183;
        v38 = v185;
        v63 = sub_1D174A6C4(sub_1D1A8D1DC, (&v146 - 4), v185);

        if (v63)
        {
          break;
        }

        v64 = __OFADD__(v57++, 1);
        v55 = v58;
        if (v64)
        {
          goto LABEL_57;
        }
      }

      v41 = v57;
      v55 = v58;
LABEL_31:
      if (v179)
      {
        if (v41 != sub_1D1E6873C())
        {
          break;
        }

        goto LABEL_35;
      }

      if (v41 != *(v184 + 16))
      {
        break;
      }

LABEL_35:
      v41 = v171;
      v7 = *v171;
      v6 = v177;
      (*v171)(v181, v177);

      (v7)(v183, v6);

      v50 = (v180 + 1);
      v43 = v168;
      if (__OFADD__(v180, 1))
      {
        goto LABEL_157;
      }
    }

    if (!v182)
    {
      if (v41 < *(v184 + 16))
      {
        v65 = *(v167 + 8 * v41);
        goto LABEL_44;
      }

LABEL_162:
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
      v160 = v38 & 0xFFFFFFFFFFFFFF8;
      v159 = sub_1D1E6873C();
      goto LABEL_6;
    }

    v65 = MEMORY[0x1D3891EF0](v41, v55);
LABEL_44:
    v66 = v65;
    v186 = v65;
    v67 = sub_1D174A5B8(&qword_1EC6497C0, &qword_1EE079BD0, 0x1E696CC40, &protocol conformance descriptor for HMService);
    v68 = *(v67 + 104);
    v69 = sub_1D1741B10(0, &qword_1EE079BD0, 0x1E696CC40);
    v70 = v68(&v185, v69, v67);
    MEMORY[0x1EEE9AC00](v70);
    v71 = v181;
    *(&v146 - 2) = v181;
    v38 = sub_1D174A6C4(sub_1D1A8D280, (&v146 - 4), v185);

    v72 = v171;
    v41 = *v171;
    v73 = v71;
    v6 = v177;
    (*v171)(v73, v177);

    v43 = v168;
    if (!v38)
    {
      goto LABEL_185;
    }

    (v41)(v183, v6);

    v41 = v72;
    v7 = v180;
LABEL_46:
    if (v162)
    {
      if (v7 != sub_1D1E6873C())
      {
LABEL_59:
        if (v170)
        {
          goto LABEL_173;
        }

        if (v7 < *(v174 + 16))
        {
          v75 = *(v169 + 8 * v7);
          goto LABEL_62;
        }

        __break(1u);
        goto LABEL_176;
      }
    }

    else if (v7 != *(v174 + 16))
    {
      goto LABEL_59;
    }

    v7 = *v41;
    (*v41)(v164, v6);

    (v7)(v176, v6);

    v40 = v163 + 1;
    if (__OFADD__(v163, 1))
    {
      goto LABEL_161;
    }
  }

LABEL_58:
  for (i = &v187; ; i = &v188)
  {
    v91 = *(i - 32);
    if (v149)
    {
      v7 = *(i - 32);
      v110 = sub_1D1E6873C();
      v91 = v7;
      if (v7 == v110)
      {
LABEL_119:
        v5 = *v41;
        (*v41)(v152, v6);

        v111 = 0;
LABEL_155:
        v5(v161, v6);
        return v111;
      }
    }

    else if (v91 == *(v160 + 16))
    {
      goto LABEL_119;
    }

    if (v158)
    {
      break;
    }

    if (v91 < *(v160 + 16))
    {
      v92 = *(v157 + 8 * v91);
      goto LABEL_89;
    }

    __break(1u);
LABEL_173:
    v75 = MEMORY[0x1D3891EF0](v7, v165);
LABEL_62:
    v43 = v75;
    v76 = sub_1D174A5B8(&qword_1EC6497F0, &qword_1EE07B690, 0x1E696CAC8, &protocol conformance descriptor for HMAccessory);
    v77 = *(v76 + 240);
    v78 = sub_1D1741B10(0, &qword_1EE07B690, 0x1E696CAC8);
    v3 = v77(v78, v76);
    v41 = v164;
    v7 = v177;
    v66 = v172;
    v172(v148, v164, v177);
    (v66)(v155, v41, v7);
    v181 = (v3 >> 62);
    v182 = v43;
    v184 = v3 & 0xFFFFFFFFFFFFFF8;
    if (v3 >> 62)
    {
      v38 = sub_1D1E6873C();
    }

    else
    {
      v38 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v6 = 0;
    v183 = (v3 & 0xC000000000000001);
    v180 = (v3 + 32);
    v2 = v38;
    while (v38 != v6)
    {
      if (v183)
      {
        v7 = v3;
        v79 = MEMORY[0x1D3891EF0](v6, v3);
      }

      else
      {
        if (v6 >= *(v184 + 16))
        {
          goto LABEL_163;
        }

        v7 = v3;
        v79 = *(v3 + 8 * v6 + 32);
      }

      v80 = v79;
      v186 = v79;
      v43 = sub_1D174A5B8(&qword_1EC6497C0, &qword_1EE079BD0, 0x1E696CC40, &protocol conformance descriptor for HMService);
      v81 = v43[13];
      v82 = sub_1D1741B10(0, &qword_1EE079BD0, 0x1E696CC40);
      v83 = v81(&v185, v82, v43);
      v41 = &v146;
      MEMORY[0x1EEE9AC00](v83);
      *(&v146 - 2) = v155;
      v66 = sub_1D174A6C4(sub_1D1A8D280, (&v146 - 4), v185);

      if (v66)
      {
        v38 = v6;
        v3 = v7;
        break;
      }

      v64 = __OFADD__(v6++, 1);
      v3 = v7;
      v38 = v2;
      if (v64)
      {
        goto LABEL_164;
      }
    }

    v2 = v182;
    if (v181)
    {
      v84 = sub_1D1E6873C();
    }

    else
    {
      v84 = *(v184 + 16);
    }

    if (v38 == v84)
    {
      goto LABEL_186;
    }

    if (v183)
    {
LABEL_176:
      v85 = MEMORY[0x1D3891EF0](v38, v3);
    }

    else
    {
      if (v38 >= *(v184 + 16))
      {
        __break(1u);
        goto LABEL_178;
      }

      v85 = v180[v38];
    }

    v7 = v85;
    v186 = v85;
    v86 = sub_1D174A5B8(&qword_1EC6497C0, &qword_1EE079BD0, 0x1E696CC40, &protocol conformance descriptor for HMService);
    v43 = *(v86 + 104);
    v87 = sub_1D1741B10(0, &qword_1EE079BD0, 0x1E696CC40);
    v88 = (v43)(&v185, v87, v86);
    MEMORY[0x1EEE9AC00](v88);
    v89 = v148;
    *(&v146 - 2) = v148;
    v38 = sub_1D174A6C4(sub_1D1A8D280, (&v146 - 4), v185);

    v41 = v171;
    v66 = *v171;
    v90 = v89;
    v6 = v177;
    (*v171)(v90, v177);

    if (!v38)
    {
      goto LABEL_187;
    }

    (v66)(v155, v6);
    (v66)(v164, v6);

    (v66)(v176, v6);
  }

  v92 = MEMORY[0x1D3891EF0](v91, v151);
LABEL_89:
  v43 = v92;
  v93 = sub_1D174A5B8(&qword_1EE079C20, &qword_1EE07B620, 0x1E696CB98, &protocol conformance descriptor for HMHome);
  v94 = *(v93 + 168);
  v95 = sub_1D1741B10(0, &qword_1EE07B620, 0x1E696CB98);
  v96 = v94(v95, v93);
  v7 = v152;
  v6 = v177;
  v66 = v172;
  v38 = v173;
  v172(v150, v152, v177);
  (v66)(v154, v7, v6);
  v168 = (v96 >> 62);
  v179 = v96 & 0xFFFFFFFFFFFFFF8;
  if (v96 >> 62)
  {
    v178 = sub_1D1E6873C();
  }

  else
  {
    v178 = *((v96 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v97 = v96;
  v41 = v171;
  v98 = 0;
  v176 = (v97 & 0xC000000000000001);
  v169 = v97;
  v174 = v43;
  v175 = v97 + 32;
  while (2)
  {
    if (v98 == v178)
    {
      v7 = v178;
      goto LABEL_126;
    }

    v182 = v98;
    if (v176)
    {
      v99 = MEMORY[0x1D3891EF0]();
    }

    else
    {
      if (v98 >= *(v179 + 16))
      {
        goto LABEL_165;
      }

      v99 = *(v175 + 8 * v98);
    }

    v100 = v99;
    v43 = &qword_1EE07B690;
    v101 = sub_1D174A5B8(&qword_1EC6497F0, &qword_1EE07B690, 0x1E696CAC8, &protocol conformance descriptor for HMAccessory);
    v41 = *(v101 + 240);
    v102 = sub_1D1741B10(0, &qword_1EE07B690, 0x1E696CAC8);
    v180 = v100;
    v103 = (v41)(v102, v101);
    v7 = v154;
    v104 = v172;
    v38 = v173;
    v172(v156, v154, v6);
    v104(v166, v7, v6);
    v181 = (v103 >> 62);
    v184 = v103 & 0xFFFFFFFFFFFFFF8;
    if (v103 >> 62)
    {
      v2 = sub_1D1E6873C();
    }

    else
    {
      v2 = *((v103 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v66 = 0;
    v183 = (v103 & 0xC000000000000001);
    v170 = v103 + 32;
    while (v2 != v66)
    {
      if (v183)
      {
        v41 = v103;
        v105 = MEMORY[0x1D3891EF0](v66, v103);
      }

      else
      {
        if (v66 >= *(v184 + 16))
        {
          goto LABEL_158;
        }

        v41 = v103;
        v105 = *(v103 + 8 * v66 + 32);
      }

      v43 = v105;
      v186 = v105;
      v7 = 0x1E696CC40uLL;
      v3 = sub_1D174A5B8(&qword_1EC6497C0, &qword_1EE079BD0, 0x1E696CC40, &protocol conformance descriptor for HMService);
      v106 = *(v3 + 104);
      v107 = sub_1D1741B10(0, &qword_1EE079BD0, 0x1E696CC40);
      v108 = v106(&v185, v107, v3);
      MEMORY[0x1EEE9AC00](v108);
      *(&v146 - 2) = v166;
      v38 = v185;
      v109 = sub_1D174A6C4(sub_1D1A8D280, (&v146 - 4), v185);

      if (v109)
      {
        v2 = v66;
        v6 = v177;
        v103 = v41;
        break;
      }

      v64 = __OFADD__(v66++, 1);
      v6 = v177;
      v103 = v41;
      if (v64)
      {
        goto LABEL_159;
      }
    }

    if (!v181)
    {
      if (v2 != *(v184 + 16))
      {
        break;
      }

      goto LABEL_113;
    }

    if (v2 == sub_1D1E6873C())
    {
LABEL_113:
      v41 = v171;
      v7 = *v171;
      (*v171)(v156, v6);

      (v7)(v166, v6);

      v98 = v182 + 1;
      v43 = v174;
      if (__OFADD__(v182, 1))
      {
        goto LABEL_167;
      }

      continue;
    }

    break;
  }

  if (v183)
  {
    goto LABEL_183;
  }

  if (v2 < *(v184 + 16))
  {
    for (j = *(v170 + 8 * v2); ; j = MEMORY[0x1D3891EF0](v2, v103))
    {
      v113 = j;
      v186 = j;
      v114 = sub_1D174A5B8(&qword_1EC6497C0, &qword_1EE079BD0, 0x1E696CC40, &protocol conformance descriptor for HMService);
      v115 = *(v114 + 104);
      v116 = sub_1D1741B10(0, &qword_1EE079BD0, 0x1E696CC40);
      v117 = v115(&v185, v116, v114);
      MEMORY[0x1EEE9AC00](v117);
      v118 = v156;
      *(&v146 - 2) = v156;
      v38 = sub_1D174A6C4(sub_1D1A8D280, (&v146 - 4), v185);

      v41 = v171;
      v66 = *v171;
      v119 = v118;
      v6 = v177;
      (*v171)(v119, v177);

      v43 = v174;
      v120 = v180;
      if (!v38)
      {
        goto LABEL_191;
      }

      (v66)(v166, v6);

      v7 = v182;
LABEL_126:
      if (v168)
      {
        v121 = sub_1D1E6873C();
      }

      else
      {
        v121 = *(v179 + 16);
      }

      if (v7 == v121)
      {
        goto LABEL_188;
      }

      if (v176)
      {
LABEL_178:
        v122 = MEMORY[0x1D3891EF0](v7, v169);
      }

      else
      {
        if (v7 >= *(v179 + 16))
        {
          __break(1u);
LABEL_181:
          v134 = MEMORY[0x1D3891EF0](v41, v3);
LABEL_153:
          v135 = v134;
          v186 = v134;
          v136 = sub_1D174A5B8(&qword_1EC6497C0, &qword_1EE079BD0, 0x1E696CC40, &protocol conformance descriptor for HMService);
          v137 = *(v136 + 104);
          v138 = sub_1D1741B10(0, &qword_1EE079BD0, 0x1E696CC40);
          v139 = v137(&v185, v138, v136);
          MEMORY[0x1EEE9AC00](v139);
          v140 = v147;
          *(&v146 - 2) = v147;
          v111 = sub_1D174A6C4(sub_1D1A8D280, (&v146 - 4), v185);

          v66 = v171;
          v5 = *v171;
          v141 = v140;
          v6 = v177;
          (*v171)(v141, v177);

          if (!v111)
          {
            goto LABEL_190;
          }

          v5(v153, v6);
          v5(v150, v6);

          v5(v154, v6);
          v5(v152, v6);

          goto LABEL_155;
        }

        v122 = *(v175 + 8 * v7);
      }

      v123 = v122;
      v124 = sub_1D174A5B8(&qword_1EC6497F0, &qword_1EE07B690, 0x1E696CAC8, &protocol conformance descriptor for HMAccessory);
      v6 = *(v124 + 240);
      v125 = sub_1D1741B10(0, &qword_1EE07B690, 0x1E696CAC8);
      v3 = (v6)(v125, v124);
      v7 = v150;
      v38 = v177;
      v126 = v172;
      v172(v147, v150, v177);
      v126(v153, v7, v38);
      v181 = v123;
      v182 = v3 >> 62;
      v184 = v3 & 0xFFFFFFFFFFFFFF8;
      if (v3 >> 62)
      {
        v41 = sub_1D1E6873C();
      }

      else
      {
        v41 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v66 = 0;
      v183 = (v3 & 0xC000000000000001);
      v180 = (v3 + 32);
      v103 = 0x1E696CC40uLL;
      v2 = v41;
      while (v41 != v66)
      {
        if (v183)
        {
          v7 = v3;
          v127 = MEMORY[0x1D3891EF0](v66, v3);
        }

        else
        {
          if (v66 >= *(v184 + 16))
          {
            goto LABEL_166;
          }

          v7 = v3;
          v127 = *(v3 + 8 * v66 + 32);
        }

        v128 = v127;
        v186 = v127;
        v129 = sub_1D174A5B8(&qword_1EC6497C0, &qword_1EE079BD0, 0x1E696CC40, &protocol conformance descriptor for HMService);
        v130 = *(v129 + 104);
        v131 = sub_1D1741B10(0, &qword_1EE079BD0, 0x1E696CC40);
        v132 = v130(&v185, v131, v129);
        MEMORY[0x1EEE9AC00](v132);
        *(&v146 - 2) = v153;
        v6 = sub_1D174A6C4(sub_1D1A8D280, (&v146 - 4), v185);

        if (v6)
        {
          v41 = v66;
          v38 = v177;
          v3 = v7;
          break;
        }

        v64 = __OFADD__(v66++, 1);
        v38 = v177;
        v3 = v7;
        v41 = v2;
        if (v64)
        {
          goto LABEL_168;
        }
      }

      v2 = v174;
      if (v182)
      {
        v133 = sub_1D1E6873C();
      }

      else
      {
        v133 = *(v184 + 16);
      }

      if (v41 == v133)
      {
        goto LABEL_189;
      }

      if (v183)
      {
        goto LABEL_181;
      }

      if (v41 < *(v184 + 16))
      {
        v134 = v180[v41];
        goto LABEL_153;
      }

      __break(1u);
LABEL_183:
      ;
    }
  }

  __break(1u);
LABEL_185:
  (v41)(v183, v6);
  __break(1u);
LABEL_186:
  v143 = *v171;
  v38 = v177;
  (*v171)(v148, v177);

  v143(v155, v38);
  v143(v164, v38);

  v143(v176, v38);
  __break(1u);
LABEL_187:
  (v66)(v155, v6);
  __break(1u);
LABEL_188:
  v144 = *v41;
  (*v41)(v150, v6);

  v144(v154, v6);
  v144(v152, v6);

  v144(v161, v6);
  __break(1u);
LABEL_189:
  v5 = v171;
  v145 = *v171;
  (*v171)(v147, v38);

  v145(v153, v38);
  v145(v150, v38);

  v145(v154, v38);
  __break(1u);
LABEL_190:
  v5(v153, v6);
  __break(1u);
LABEL_191:
  (v66)(v166, v6);
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_1D1A8A054@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v79 = a2;
  v3 = sub_1D1E66A7C();
  v99 = *(v3 - 8);
  v4 = MEMORY[0x1EEE9AC00](v3);
  v83 = &v77 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v78 = &v77 - v7;
  v8 = MEMORY[0x1EEE9AC00](v6);
  v100 = &v77 - v9;
  v10 = MEMORY[0x1EEE9AC00](v8);
  v97 = &v77 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v77 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v77 - v15;
  v17 = sub_1D174A5B8(&qword_1EE079C20, &qword_1EE07B620, 0x1E696CB98, &protocol conformance descriptor for HMHome);
  v18 = *(v17 + 168);
  v19 = sub_1D1741B10(0, &qword_1EE07B620, 0x1E696CB98);
  v20 = v17;
  v21 = v99;
  v22 = v18(v19, v20);
  v23 = *(v21 + 16);
  v81 = v16;
  v23(v16, a1, v3);
  v90 = v14;
  v87 = v23;
  v88 = v21 + 16;
  v23(v14, a1, v3);
  v80 = v22 >> 62;
  if (v22 >> 62)
  {
LABEL_72:
    v92 = v22 & 0xFFFFFFFFFFFFFF8;
    v91 = sub_1D1E6873C();
  }

  else
  {
    v92 = v22 & 0xFFFFFFFFFFFFFF8;
    v91 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v24 = 0;
  v25 = 0;
  v89 = v22 & 0xC000000000000001;
  v82 = v22;
  v85 = v3;
  v86 = v22 + 32;
  v26 = (v21 + 8);
  v93 = (v21 + 8);
  while (1)
  {
    if (v24 == v91)
    {
      v44 = v91;
      goto LABEL_36;
    }

    v96 = v24;
    if (v89)
    {
      v27 = MEMORY[0x1D3891EF0]();
    }

    else
    {
      if (v24 >= *(v92 + 16))
      {
LABEL_68:
        __break(1u);
LABEL_69:
        __break(1u);
LABEL_70:
        __break(1u);
LABEL_71:
        __break(1u);
        goto LABEL_72;
      }

      v27 = *(v86 + 8 * v24);
    }

    v28 = v27;
    v29 = sub_1D174A5B8(&qword_1EC6497F0, &qword_1EE07B690, 0x1E696CAC8, &protocol conformance descriptor for HMAccessory);
    v21 = *(v29 + 240);
    v30 = sub_1D1741B10(0, &qword_1EE07B690, 0x1E696CAC8);
    v94 = v28;
    v31 = (v21)(v30, v29);
    v32 = v90;
    v33 = v87;
    v22 = v88;
    v87(v97, v90, v3);
    v33(v100, v32, v3);
    v95 = v31 >> 62;
    v99 = v31 & 0xFFFFFFFFFFFFFF8;
    v34 = v31 >> 62 ? sub_1D1E6873C() : *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v35 = 0;
    v98 = (v31 & 0xC000000000000001);
    v84 = v31 + 32;
    while (v34 != v35)
    {
      if (v98)
      {
        v26 = v31;
        v36 = MEMORY[0x1D3891EF0](v35, v31);
      }

      else
      {
        if (v35 >= *(v99 + 16))
        {
          __break(1u);
LABEL_67:
          __break(1u);
          goto LABEL_68;
        }

        v26 = v31;
        v36 = *(v31 + 8 * v35 + 32);
      }

      v37 = v36;
      v102 = v36;
      v3 = 0x1E696CC40uLL;
      v38 = sub_1D174A5B8(&qword_1EC6497C0, &qword_1EE079BD0, 0x1E696CC40, &protocol conformance descriptor for HMService);
      v21 = *(v38 + 104);
      v39 = sub_1D1741B10(0, &qword_1EE079BD0, 0x1E696CC40);
      v40 = (v21)(&v101, v39, v38);
      v33 = &v77;
      MEMORY[0x1EEE9AC00](v40);
      *(&v77 - 2) = v100;
      v22 = v101;
      v41 = sub_1D174A6C4(sub_1D1A8D280, (&v77 - 4), v101);

      if (v41)
      {
        v34 = v35;
        v31 = v26;
        break;
      }

      v42 = __OFADD__(v35++, 1);
      v31 = v26;
      if (v42)
      {
        goto LABEL_67;
      }
    }

    if (!v95)
    {
      break;
    }

    if (v34 != sub_1D1E6873C())
    {
      goto LABEL_31;
    }

LABEL_25:
    v26 = v93;
    v43 = *v93;
    v3 = v85;
    (*v93)(v97, v85);

    v43(v100, v3);

    v24 = v96 + 1;
    if (__OFADD__(v96, 1))
    {
      goto LABEL_69;
    }
  }

  if (v34 == *(v99 + 16))
  {
    goto LABEL_25;
  }

LABEL_31:
  if (v98)
  {
    goto LABEL_78;
  }

  if (v34 < *(v99 + 16))
  {
    for (i = *(v84 + 8 * v34); ; i = MEMORY[0x1D3891EF0](v34, v31))
    {
      v46 = i;
      v102 = i;
      v47 = sub_1D174A5B8(&qword_1EC6497C0, &qword_1EE079BD0, 0x1E696CC40, &protocol conformance descriptor for HMService);
      v48 = *(v47 + 104);
      v49 = sub_1D1741B10(0, &qword_1EE079BD0, 0x1E696CC40);
      v50 = v48(&v101, v49, v47);
      MEMORY[0x1EEE9AC00](v50);
      v21 = v97;
      *(&v77 - 2) = v97;
      v22 = sub_1D174A6C4(sub_1D1A8D280, (&v77 - 4), v101);

      v26 = v93;
      v33 = *v93;
      v3 = v85;
      (*v93)(v21, v85);

      if (!v22)
      {
        goto LABEL_82;
      }

      (v33)(v100, v3);

      v44 = v96;
LABEL_36:
      if (v80)
      {
        if (v44 == sub_1D1E6873C())
        {
LABEL_54:
          v25 = *v26;
          (*v26)(v81, v3);

          v66 = 0;
          goto LABEL_65;
        }
      }

      else if (v44 == *(v92 + 16))
      {
        goto LABEL_54;
      }

      if (v89)
      {
        v51 = MEMORY[0x1D3891EF0](v44, v82);
      }

      else
      {
        if (v44 >= *(v92 + 16))
        {
          __break(1u);
LABEL_76:
          v68 = MEMORY[0x1D3891EF0](v22, v21);
LABEL_63:
          v69 = v68;
          v102 = v68;
          v70 = sub_1D174A5B8(&qword_1EC6497C0, &qword_1EE079BD0, 0x1E696CC40, &protocol conformance descriptor for HMService);
          v71 = *(v70 + 104);
          v72 = sub_1D1741B10(0, &qword_1EE079BD0, 0x1E696CC40);
          v73 = v71(&v101, v72, v70);
          MEMORY[0x1EEE9AC00](v73);
          v74 = v78;
          *(&v77 - 2) = v78;
          v33 = v101;
          v66 = sub_1D174A6C4(sub_1D1A8D280, (&v77 - 4), v101);

          v25 = *v26;
          (*v26)(v74, v3);

          if (!v66)
          {
            goto LABEL_81;
          }

          v25(v83, v3);
          v25(v81, v3);

LABEL_65:
          result = (v25)(v90, v3);
          *v79 = v66;
          return result;
        }

        v51 = *(v86 + 8 * v44);
      }

      v52 = v51;
      v34 = 0x1E696CAC8uLL;
      v53 = sub_1D174A5B8(&qword_1EC6497F0, &qword_1EE07B690, 0x1E696CAC8, &protocol conformance descriptor for HMAccessory);
      v54 = *(v53 + 240);
      v55 = sub_1D1741B10(0, &qword_1EE07B690, 0x1E696CAC8);
      v21 = v54(v55, v53);
      v56 = v81;
      v57 = v87;
      v87(v78, v81, v3);
      v57(v83, v56, v3);
      v97 = (v21 >> 62);
      v98 = v52;
      v100 = (v21 & 0xFFFFFFFFFFFFFF8);
      if (v21 >> 62)
      {
        v22 = sub_1D1E6873C();
      }

      else
      {
        v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v58 = 0;
      v99 = v21 & 0xC000000000000001;
      v96 = v21 + 32;
      v3 = 0x1E696CC40uLL;
      v31 = v22;
      while (v22 != v58)
      {
        if (v99)
        {
          v59 = v21;
          v60 = MEMORY[0x1D3891EF0](v58, v21);
        }

        else
        {
          if (v58 >= *(v100 + 2))
          {
            goto LABEL_70;
          }

          v59 = v21;
          v60 = *(v21 + 8 * v58 + 32);
        }

        v61 = v60;
        v102 = v60;
        v62 = sub_1D174A5B8(&qword_1EC6497C0, &qword_1EE079BD0, 0x1E696CC40, &protocol conformance descriptor for HMService);
        v34 = *(v62 + 104);
        v63 = sub_1D1741B10(0, &qword_1EE079BD0, 0x1E696CC40);
        v64 = (v34)(&v101, v63, v62);
        MEMORY[0x1EEE9AC00](v64);
        *(&v77 - 2) = v83;
        v65 = sub_1D174A6C4(sub_1D1A8D280, (&v77 - 4), v101);

        if (v65)
        {
          v22 = v58;
          v26 = v93;
          v21 = v59;
          break;
        }

        v42 = __OFADD__(v58++, 1);
        v26 = v93;
        v21 = v59;
        v22 = v31;
        if (v42)
        {
          goto LABEL_71;
        }
      }

      v3 = v85;
      v33 = v98;
      if (v97)
      {
        v67 = sub_1D1E6873C();
      }

      else
      {
        v67 = *(v100 + 2);
      }

      if (v22 == v67)
      {
        goto LABEL_80;
      }

      if (v99)
      {
        goto LABEL_76;
      }

      if (v22 < *(v100 + 2))
      {
        v68 = *(v96 + 8 * v22);
        goto LABEL_63;
      }

      __break(1u);
LABEL_78:
      ;
    }
  }

  __break(1u);
LABEL_80:
  v76 = *v26;
  (*v26)(v78, v3);

  v76(v83, v3);
  v76(v81, v3);

  v76(v90, v3);
  __break(1u);
LABEL_81:
  v25(v83, v3);
  __break(1u);
LABEL_82:
  result = (v33)(v100, v3);
  __break(1u);
  return result;
}

__objc2_prot **HomeState.Stream.room(for:)(char *a1)
{
  v3 = 0;
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v35 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v35 - v12;
  swift_beginAccess();
  v14 = *(v1 + 64);
  if (v14)
  {
    v15 = [v14 homes];
    sub_1D1741B10(0, &qword_1EE07B620, 0x1E696CB98);
    sub_1D1E67C1C();

    v44 = sub_1D1749970(v16);
    sub_1D1747DDC(&v44);

    v17 = v44;
  }

  else
  {
    v17 = MEMORY[0x1E69E7CC0];
  }

  v18 = (v5 + 16);
  v19 = *(v5 + 16);
  v19(v13, a1, v4);
  v19(v11, a1, v4);
  v41 = v11;
  v37 = v13;
  v38 = v17 >> 62;
  if (v17 >> 62)
  {
LABEL_35:
    v42 = v17 & 0xFFFFFFFFFFFFFF8;
    v40 = sub_1D1E6873C();
  }

  else
  {
    v42 = v17 & 0xFFFFFFFFFFFFFF8;
    v40 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v20 = 0;
  v39 = v17 & 0xC000000000000001;
  v43 = v17;
  v36 = (v17 + 32);
  v17 = v5 + 8;
  v21 = v4;
  while (v40 != v20)
  {
    if (v39)
    {
      v23 = MEMORY[0x1D3891EF0](v20, v43);
    }

    else
    {
      if (v20 >= *(v42 + 16))
      {
        __break(1u);
LABEL_34:
        __break(1u);
        goto LABEL_35;
      }

      v23 = *(v43 + 8 * v20 + 32);
    }

    a1 = v23;
    v24 = [v23 rooms];
    sub_1D1741B10(0, &qword_1EE079C00, 0x1E696CC38);
    v18 = sub_1D1E67C1C();

    MEMORY[0x1EEE9AC00](v25);
    *(&v35 - 2) = v41;
    v26 = sub_1D174A6C4(sub_1D1A8D280, (&v35 - 4), v18);

    if (v26)
    {

      v4 = v21;
      if (v38)
      {
        goto LABEL_27;
      }

LABEL_20:
      if (v20 != *(v42 + 16))
      {
        goto LABEL_21;
      }

LABEL_28:
      v18 = *v17;
      (*v17)(v37, v4);

      v3 = 0;
LABEL_32:
      v18(v41, v4);
      return v3;
    }

    v27 = [a1 roomForEntireHome];
    v18 = [v27 uniqueIdentifier];

    sub_1D1E66A5C();
    v5 = _s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0();
    v4 = v21;
    (*v17)(v8, v21);
    if (v5)
    {
      v5 = [a1 roomForEntireHome];

      if (v5)
      {
        goto LABEL_19;
      }
    }

    else
    {
    }

    if (__OFADD__(v20++, 1))
    {
      goto LABEL_34;
    }
  }

  v20 = v40;
LABEL_19:
  if (!v38)
  {
    goto LABEL_20;
  }

LABEL_27:
  if (v20 == sub_1D1E6873C())
  {
    goto LABEL_28;
  }

LABEL_21:
  if (v39)
  {
    v28 = MEMORY[0x1D3891EF0](v20, v43);
  }

  else
  {
    if (v20 >= *(v42 + 16))
    {
      __break(1u);
LABEL_38:
      v18(v41, v4);
      v18(a1, v4);

      __break(1u);
      goto LABEL_39;
    }

    v28 = v36[v20];
  }

  v20 = v28;
  v29 = [v28 rooms];
  sub_1D1741B10(0, &qword_1EE079C00, 0x1E696CC38);
  v30 = sub_1D1E67C1C();

  MEMORY[0x1EEE9AC00](v31);
  a1 = v37;
  *(&v35 - 2) = v37;
  v3 = sub_1D174A6C4(sub_1D1A8D280, (&v35 - 4), v30);

  if (v3)
  {
    v18 = *v17;
    (*v17)(a1, v4);

    goto LABEL_32;
  }

  v3 = &_OBJC_LABEL_PROTOCOL___HMUserActionPredictionControllerDelegate;
  v32 = [v20 roomForEntireHome];
  v33 = [v32 uniqueIdentifier];

  sub_1D1E66A5C();
  LOBYTE(v32) = _s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0();
  v18 = *v17;
  (*v17)(v8, v4);
  if ((v32 & 1) == 0)
  {
    goto LABEL_38;
  }

  v3 = [v20 roomForEntireHome];
  v18(a1, v4);

  if (v3)
  {

    goto LABEL_32;
  }

LABEL_39:
  v18(v41, v4);
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_1D1A8B334@<X0>(id *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v34 = a3;
  v5 = sub_1D1E66A7C();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v33 - v10;
  v12 = [*a1 accessories];
  sub_1D1741B10(0, &qword_1EE07B690, 0x1E696CAC8);
  v13 = sub_1D1E67C1C();

  v14 = *(v6 + 16);
  v35 = v11;
  v14(v11, a2, v5);
  v39 = v9;
  v37 = v5;
  v14(v9, a2, v5);
  v38 = v13 >> 62;
  v36 = v6;
  v15 = v13 & 0xFFFFFFFFFFFFFF8;
  if (v13 >> 62)
  {
LABEL_26:
    v16 = sub_1D1E6873C();
  }

  else
  {
    v16 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v17 = 0;
  v18 = v13 & 0xC000000000000001;
  v33 = v13 + 32;
  while (v16 != v17)
  {
    if (v18)
    {
      v19 = MEMORY[0x1D3891EF0](v17, v13);
    }

    else
    {
      if (v17 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      v19 = *(v13 + 8 * v17 + 32);
    }

    v20 = v19;
    v21 = [v19 services];
    sub_1D1741B10(0, &qword_1EE079BD0, 0x1E696CC40);
    v14 = sub_1D1E67C1C();

    MEMORY[0x1EEE9AC00](v22);
    *(&v33 - 2) = v39;
    v23 = sub_1D174A6C4(sub_1D1A8D280, (&v33 - 4), v14);

    if (v23)
    {
      v16 = v17;
      break;
    }

    if (__OFADD__(v17++, 1))
    {
      goto LABEL_25;
    }
  }

  if (!v38)
  {
    if (v16 != *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_16;
    }

LABEL_22:
    v14 = *(v36 + 8);
    v15 = v37;
    (v14)(v35, v37);
    v31 = 0;
LABEL_23:

    result = (v14)(v39, v15);
    *v34 = v31;
    return result;
  }

  if (v16 == sub_1D1E6873C())
  {
    goto LABEL_22;
  }

LABEL_16:
  if (v18)
  {
    v25 = MEMORY[0x1D3891EF0](v16, v13);
  }

  else
  {
    if (v16 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_29;
    }

    v25 = *(v33 + 8 * v16);
  }

  v26 = v25;
  v27 = [v25 services];
  sub_1D1741B10(0, &qword_1EE079BD0, 0x1E696CC40);
  v28 = sub_1D1E67C1C();

  MEMORY[0x1EEE9AC00](v29);
  v30 = v35;
  *(&v33 - 2) = v35;
  v31 = sub_1D174A6C4(sub_1D1A8D280, (&v33 - 4), v28);

  v15 = v37;
  v14 = *(v36 + 8);
  (v14)(v30, v37);

  if (v31)
  {
    goto LABEL_23;
  }

LABEL_29:
  result = (v14)(v39, v15);
  __break(1u);
  return result;
}

void *HomeState.Stream.serviceGroup(for:)(uint64_t a1)
{
  v3 = 0;
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v40 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v34 - v8;
  swift_beginAccess();
  v10 = *(v1 + 64);
  if (v10)
  {
    v11 = [v10 homes];
    sub_1D1741B10(0, &qword_1EE07B620, 0x1E696CB98);
    sub_1D1E67C1C();

    v41 = sub_1D1749970(v12);
    sub_1D1747DDC(&v41);

    v13 = v41;
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC0];
  }

  v14 = (v5 + 16);
  v15 = *(v5 + 16);
  v15(v9, a1, v4);
  v38 = v4;
  v15(v40, a1, v4);
  v39 = v13 >> 62;
  v36 = v9;
  v37 = v5;
  v16 = v13 & 0xFFFFFFFFFFFFFF8;
  if (v13 >> 62)
  {
LABEL_29:
    v17 = sub_1D1E6873C();
  }

  else
  {
    v17 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v18 = 0;
  v19 = v13 & 0xC000000000000001;
  v35 = v13 + 32;
  while (v17 != v18)
  {
    if (v19)
    {
      v20 = MEMORY[0x1D3891EF0](v18, v13);
    }

    else
    {
      if (v18 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_28:
        __break(1u);
        goto LABEL_29;
      }

      v20 = *(v13 + 8 * v18 + 32);
    }

    v21 = v20;
    v22 = [v20 serviceGroups];
    sub_1D1741B10(0, &qword_1EE079CE0, 0x1E696CC48);
    v14 = sub_1D1E67C1C();

    MEMORY[0x1EEE9AC00](v23);
    *(&v34 - 2) = v40;
    v24 = sub_1D174A6C4(sub_1D1A8D280, (&v34 - 4), v14);

    if (v24)
    {
      v17 = v18;
      break;
    }

    if (__OFADD__(v18++, 1))
    {
      goto LABEL_28;
    }
  }

  if (!v39)
  {
    if (v17 != *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_19;
    }

LABEL_25:
    v14 = *(v37 + 8);
    v16 = v38;
    v14(v36, v38);
    v3 = 0;
LABEL_26:

    v14(v40, v16);
    return v3;
  }

  if (v17 == sub_1D1E6873C())
  {
    goto LABEL_25;
  }

LABEL_19:
  if (v19)
  {
    v26 = MEMORY[0x1D3891EF0](v17, v13);
  }

  else
  {
    if (v17 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_32;
    }

    v26 = *(v35 + 8 * v17);
  }

  v27 = v26;
  v28 = [v26 serviceGroups];
  sub_1D1741B10(0, &qword_1EE079CE0, 0x1E696CC48);
  v29 = sub_1D1E67C1C();

  MEMORY[0x1EEE9AC00](v30);
  v31 = v36;
  *(&v34 - 2) = v36;
  v3 = sub_1D174A6C4(sub_1D1A8D280, (&v34 - 4), v29);

  v14 = *(v37 + 8);
  v32 = v31;
  v16 = v38;
  v14(v32, v38);

  if (v3)
  {
    goto LABEL_26;
  }

LABEL_32:
  v14(v40, v16);
  __break(1u);

  __break(1u);
  return result;
}

void *HomeState.Stream.mediaSystem(for:)(uint64_t a1)
{
  v3 = 0;
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v40 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v34 - v8;
  swift_beginAccess();
  v10 = *(v1 + 64);
  if (v10)
  {
    v11 = [v10 homes];
    sub_1D1741B10(0, &qword_1EE07B620, 0x1E696CB98);
    sub_1D1E67C1C();

    v41 = sub_1D1749970(v12);
    sub_1D1747DDC(&v41);

    v13 = v41;
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC0];
  }

  v14 = (v5 + 16);
  v15 = *(v5 + 16);
  v15(v9, a1, v4);
  v38 = v4;
  v15(v40, a1, v4);
  v39 = v13 >> 62;
  v36 = v9;
  v37 = v5;
  v16 = v13 & 0xFFFFFFFFFFFFFF8;
  if (v13 >> 62)
  {
LABEL_29:
    v17 = sub_1D1E6873C();
  }

  else
  {
    v17 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v18 = 0;
  v19 = v13 & 0xC000000000000001;
  v35 = v13 + 32;
  while (v17 != v18)
  {
    if (v19)
    {
      v20 = MEMORY[0x1D3891EF0](v18, v13);
    }

    else
    {
      if (v18 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_28:
        __break(1u);
        goto LABEL_29;
      }

      v20 = *(v13 + 8 * v18 + 32);
    }

    v21 = v20;
    v22 = [v20 mediaSystems];
    sub_1D1741B10(0, qword_1EE079CF8, 0x1E696CBF8);
    v14 = sub_1D1E67C1C();

    MEMORY[0x1EEE9AC00](v23);
    *(&v34 - 2) = v40;
    v24 = sub_1D174A6C4(sub_1D1A8D1DC, (&v34 - 4), v14);

    if (v24)
    {
      v17 = v18;
      break;
    }

    if (__OFADD__(v18++, 1))
    {
      goto LABEL_28;
    }
  }

  if (!v39)
  {
    if (v17 != *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_19;
    }

LABEL_25:
    v14 = *(v37 + 8);
    v16 = v38;
    v14(v36, v38);
    v3 = 0;
LABEL_26:

    v14(v40, v16);
    return v3;
  }

  if (v17 == sub_1D1E6873C())
  {
    goto LABEL_25;
  }

LABEL_19:
  if (v19)
  {
    v26 = MEMORY[0x1D3891EF0](v17, v13);
  }

  else
  {
    if (v17 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_32;
    }

    v26 = *(v35 + 8 * v17);
  }

  v27 = v26;
  v28 = [v26 mediaSystems];
  sub_1D1741B10(0, qword_1EE079CF8, 0x1E696CBF8);
  v29 = sub_1D1E67C1C();

  MEMORY[0x1EEE9AC00](v30);
  v31 = v36;
  *(&v34 - 2) = v36;
  v3 = sub_1D174A6C4(sub_1D1A8D280, (&v34 - 4), v29);

  v14 = *(v37 + 8);
  v32 = v31;
  v16 = v38;
  v14(v32, v38);

  if (v3)
  {
    goto LABEL_26;
  }

LABEL_32:
  v14(v40, v16);
  __break(1u);

  __break(1u);
  return result;
}

void *HomeState.Stream.user(for:)(uint64_t a1)
{
  v3 = 0;
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v43 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v36 - v8;
  swift_beginAccess();
  v10 = *(v1 + 64);
  if (v10)
  {
    v11 = [v10 homes];
    sub_1D1741B10(0, &qword_1EE07B620, 0x1E696CB98);
    sub_1D1E67C1C();

    v44 = sub_1D1749970(v12);
    sub_1D1747DDC(&v44);

    v13 = v44;
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC0];
  }

  v38 = v5;
  v14 = *(v5 + 16);
  v14(v9, a1, v4);
  v39 = v4;
  v14(v43, a1, v4);
  v40 = v13 >> 62;
  v41 = v9;
  if (v13 >> 62)
  {
LABEL_29:
    v15 = sub_1D1E6873C();
  }

  else
  {
    v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v16 = 0;
  v17 = v13 & 0xC000000000000001;
  v37 = v13 + 32;
  v42 = xmmword_1D1E73FA0;
  while (v15 != v16)
  {
    if (v17)
    {
      v18 = MEMORY[0x1D3891EF0](v16, v13);
    }

    else
    {
      if (v16 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_28:
        __break(1u);
        goto LABEL_29;
      }

      v18 = *(v13 + 8 * v16 + 32);
    }

    v14 = v18;
    v19 = [v18 users];
    sub_1D1741B10(0, &qword_1EE079BF8, 0x1E696CCA0);
    v20 = sub_1D1E67C1C();

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC649E10, &unk_1D1E76480);
    inited = swift_initStackObject();
    *(inited + 16) = v42;
    *(inited + 32) = [v14 currentUser];
    v44 = v20;
    v22 = sub_1D17A3D50(inited);
    v23 = v44;
    MEMORY[0x1EEE9AC00](v22);
    *(&v36 - 2) = v43;
    v24 = sub_1D174A6C4(sub_1D1A8D280, (&v36 - 4), v23);

    if (v24)
    {
      v15 = v16;
      break;
    }

    if (__OFADD__(v16++, 1))
    {
      goto LABEL_28;
    }
  }

  v26 = v41;
  if (!v40)
  {
    if (v15 != *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_19;
    }

LABEL_25:
    v3 = *(v38 + 8);
    v14 = v39;
    v3(v26, v39);
    v34 = 0;
LABEL_26:

    v3(v43, v14);
    return v34;
  }

  if (v15 == sub_1D1E6873C())
  {
    goto LABEL_25;
  }

LABEL_19:
  if (v17)
  {
    v27 = MEMORY[0x1D3891EF0](v15, v13);
  }

  else
  {
    if (v15 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_32;
    }

    v27 = *(v37 + 8 * v15);
  }

  v28 = v27;
  v29 = [v27 users];
  sub_1D1741B10(0, &qword_1EE079BF8, 0x1E696CCA0);
  v30 = sub_1D1E67C1C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC649E10, &unk_1D1E76480);
  v31 = swift_initStackObject();
  *(v31 + 16) = v42;
  *(v31 + 32) = [v28 currentUser];
  v44 = v30;
  v32 = sub_1D17A3D50(v31);
  v33 = v44;
  MEMORY[0x1EEE9AC00](v32);
  *(&v36 - 2) = v26;
  v34 = sub_1D174A6C4(sub_1D1A8D280, (&v36 - 4), v33);

  v3 = *(v38 + 8);
  v14 = v39;
  v3(v26, v39);

  if (v34)
  {
    goto LABEL_26;
  }

LABEL_32:
  v3(v43, v14);
  __break(1u);

  __break(1u);
  return result;
}

void *HomeState.Stream.resident(for:)(uint64_t a1)
{
  v3 = 0;
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v40 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v34 - v8;
  swift_beginAccess();
  v10 = *(v1 + 64);
  if (v10)
  {
    v11 = [v10 homes];
    sub_1D1741B10(0, &qword_1EE07B620, 0x1E696CB98);
    sub_1D1E67C1C();

    v41 = sub_1D1749970(v12);
    sub_1D1747DDC(&v41);

    v13 = v41;
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC0];
  }

  v14 = (v5 + 16);
  v15 = *(v5 + 16);
  v15(v9, a1, v4);
  v38 = v4;
  v15(v40, a1, v4);
  v39 = v13 >> 62;
  v36 = v9;
  v37 = v5;
  v16 = v13 & 0xFFFFFFFFFFFFFF8;
  if (v13 >> 62)
  {
LABEL_29:
    v17 = sub_1D1E6873C();
  }

  else
  {
    v17 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v18 = 0;
  v19 = v13 & 0xC000000000000001;
  v35 = v13 + 32;
  while (v17 != v18)
  {
    if (v19)
    {
      v20 = MEMORY[0x1D3891EF0](v18, v13);
    }

    else
    {
      if (v18 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_28:
        __break(1u);
        goto LABEL_29;
      }

      v20 = *(v13 + 8 * v18 + 32);
    }

    v21 = v20;
    v22 = [v20 residentDevices];
    sub_1D1741B10(0, &qword_1EE07B270, 0x1E696CC28);
    v14 = sub_1D1E67C1C();

    MEMORY[0x1EEE9AC00](v23);
    *(&v34 - 2) = v40;
    v24 = sub_1D174A6C4(sub_1D1A8D280, (&v34 - 4), v14);

    if (v24)
    {
      v17 = v18;
      break;
    }

    if (__OFADD__(v18++, 1))
    {
      goto LABEL_28;
    }
  }

  if (!v39)
  {
    if (v17 != *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_19;
    }

LABEL_25:
    v14 = *(v37 + 8);
    v16 = v38;
    v14(v36, v38);
    v3 = 0;
LABEL_26:

    v14(v40, v16);
    return v3;
  }

  if (v17 == sub_1D1E6873C())
  {
    goto LABEL_25;
  }

LABEL_19:
  if (v19)
  {
    v26 = MEMORY[0x1D3891EF0](v17, v13);
  }

  else
  {
    if (v17 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_32;
    }

    v26 = *(v35 + 8 * v17);
  }

  v27 = v26;
  v28 = [v26 residentDevices];
  sub_1D1741B10(0, &qword_1EE07B270, 0x1E696CC28);
  v29 = sub_1D1E67C1C();

  MEMORY[0x1EEE9AC00](v30);
  v31 = v36;
  *(&v34 - 2) = v36;
  v3 = sub_1D174A6C4(sub_1D1A8D280, (&v34 - 4), v29);

  v14 = *(v37 + 8);
  v32 = v31;
  v16 = v38;
  v14(v32, v38);

  if (v3)
  {
    goto LABEL_26;
  }

LABEL_32:
  v14(v40, v16);
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_1D1A8CA54(id *a1, uint64_t a2)
{
  v3 = sub_1D1E66A7C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [*a1 uniqueIdentifier];
  sub_1D1E66A5C();

  v8 = _s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0();
  (*(v4 + 8))(v6, v3);
  return v8 & 1;
}

uint64_t HomeState.Stream.matterDevice(with:inHomeWithID:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 64);
  if (v5)
  {
    v6 = [v5 homes];
    sub_1D1741B10(0, &qword_1EE07B620, 0x1E696CB98);
    sub_1D1E67C1C();

    v13 = sub_1D1749970(v7);
    sub_1D1747DDC(&v13);

    v8 = v13;
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC0];
  }

  MEMORY[0x1EEE9AC00](v5);
  v12[2] = a2;
  v9 = sub_1D174A6C4(sub_1D1A8D280, v12, v8);

  if (!v9)
  {
    return 0;
  }

  v10 = HMHome.device(for:)(a1);

  return v10;
}

uint64_t _s13HomeDataModel0A5StateV6StreamC11accessories3for2inSaySo11HMAccessoryCGAA11ServiceKindO_So6HMHomeCtF_0(int a1, id a2)
{
  v2 = [a2 accessories];
  sub_1D1741B10(0, &qword_1EE07B690, 0x1E696CAC8);
  v3 = sub_1D1E67C1C();

  v12 = MEMORY[0x1E69E7CC0];
  if (v3 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D1E6873C())
  {
    v5 = 0;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x1D3891EF0](v5, v3);
      }

      else
      {
        if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v6 = *(v3 + 8 * v5 + 32);
      }

      v7 = v6;
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      v9 = HMAccessory.subscript.getter();
      if (v9)
      {

        sub_1D1E6896C();
        sub_1D1E689AC();
        sub_1D1E689BC();
        sub_1D1E6897C();
      }

      else
      {
      }

      ++v5;
      if (v8 == i)
      {
        v10 = v12;
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  v10 = MEMORY[0x1E69E7CC0];
LABEL_18:

  return v10;
}

unint64_t sub_1D1A8CE80(unint64_t isUniquelyReferenced_nonNull_bridgeObject, char a2)
{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_45;
  }

  v2 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v2)
  {
    v3 = 0;
    v30 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v31 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v26 = isUniquelyReferenced_nonNull_bridgeObject;
    v29 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    v4 = MEMORY[0x1E69E7CC0];
    v27 = v2;
    while (1)
    {
      if (v31)
      {
        isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x1D3891EF0](v3, v26);
      }

      else
      {
        if (v3 >= *(v30 + 16))
        {
          goto LABEL_40;
        }

        isUniquelyReferenced_nonNull_bridgeObject = *(v29 + 8 * v3);
      }

      v5 = isUniquelyReferenced_nonNull_bridgeObject;
      v6 = __OFADD__(v3++, 1);
      if (v6)
      {
        break;
      }

      v34[0] = a2;
      v7 = _s13HomeDataModel0A5StateV6StreamC11accessories3for2inSaySo11HMAccessoryCGAA11ServiceKindO_So6HMHomeCtF_0(v34, isUniquelyReferenced_nonNull_bridgeObject);

      v8 = v7 >> 62;
      if (v7 >> 62)
      {
        v9 = sub_1D1E6873C();
      }

      else
      {
        v9 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v10 = v4 >> 62;
      if (v4 >> 62)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_1D1E6873C();
        v11 = isUniquelyReferenced_nonNull_bridgeObject + v9;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v9))
        {
LABEL_38:
          __break(1u);
          break;
        }
      }

      else
      {
        isUniquelyReferenced_nonNull_bridgeObject = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v11 = isUniquelyReferenced_nonNull_bridgeObject + v9;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v9))
        {
          goto LABEL_38;
        }
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      v35 = v9;
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (!v10)
        {
          v12 = v4 & 0xFFFFFFFFFFFFFF8;
          if (v11 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_21;
          }

          goto LABEL_20;
        }

LABEL_19:
        sub_1D1E6873C();
        goto LABEL_20;
      }

      if (v10)
      {
        goto LABEL_19;
      }

LABEL_20:
      isUniquelyReferenced_nonNull_bridgeObject = sub_1D1E688CC();
      v4 = isUniquelyReferenced_nonNull_bridgeObject;
      v12 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_21:
      v13 = *(v12 + 16);
      v14 = *(v12 + 24);
      if (v8)
      {
        v16 = v12;
        isUniquelyReferenced_nonNull_bridgeObject = sub_1D1E6873C();
        v12 = v16;
        v15 = isUniquelyReferenced_nonNull_bridgeObject;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_25:
          if (((v14 >> 1) - v13) < v35)
          {
            goto LABEL_42;
          }

          v33 = v4;
          v17 = v12 + 8 * v13 + 32;
          v28 = v12;
          if (v8)
          {
            if (v15 < 1)
            {
              goto LABEL_44;
            }

            sub_1D1A8D1FC();
            for (i = 0; i != v15; ++i)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646108, &qword_1D1E7E668);
              v19 = sub_1D1790D5C(v34, i, v7);
              v21 = *v20;
              (v19)(v34, 0);
              *(v17 + 8 * i) = v21;
            }
          }

          else
          {
            sub_1D1741B10(0, &qword_1EE07B690, 0x1E696CAC8);
            swift_arrayInitWithCopy();
          }

          v2 = v27;
          v4 = v33;
          if (v35 >= 1)
          {
            v22 = *(v28 + 16);
            v6 = __OFADD__(v22, v35);
            v23 = v22 + v35;
            if (v6)
            {
              goto LABEL_43;
            }

            *(v28 + 16) = v23;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v15 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v15)
        {
          goto LABEL_25;
        }
      }

      if (v35 > 0)
      {
        goto LABEL_41;
      }

LABEL_5:
      if (v3 == v2)
      {
        return v4;
      }
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    v24 = isUniquelyReferenced_nonNull_bridgeObject;
    v2 = sub_1D1E6873C();
    isUniquelyReferenced_nonNull_bridgeObject = v24;
  }

  return MEMORY[0x1E69E7CC0];
}

unint64_t sub_1D1A8D1FC()
{
  result = qword_1EC646110;
  if (!qword_1EC646110)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC646108, &qword_1D1E7E668);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC646110);
  }

  return result;
}

uint64_t sub_1D1A8D2B8(uint64_t a1)
{
  v42 = sub_1D1E66A7C();
  v3 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v41 = v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for WriteInProgressStatusViewModel.ID(0);
  v40 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  v9 = MEMORY[0x1E69E7CC0];
  if (!v8)
  {
    return v9;
  }

  v31[1] = v1;
  v46 = MEMORY[0x1E69E7CC0];
  sub_1D178D3D8(0, v8, 0);
  v9 = v46;
  v10 = a1 + 64;
  result = sub_1D1E6869C();
  v12 = result;
  v13 = 0;
  v38 = v3 + 16;
  v39 = v3;
  v36 = v7;
  v37 = v3 + 8;
  v32 = a1 + 72;
  v33 = v8;
  v34 = a1 + 64;
  v35 = a1;
  while ((v12 & 0x8000000000000000) == 0 && v12 < 1 << *(a1 + 32))
  {
    if ((*(v10 + 8 * (v12 >> 6)) & (1 << v12)) == 0)
    {
      goto LABEL_21;
    }

    v43 = v13;
    v44 = *(a1 + 36);
    v45 = v12 >> 6;
    v16 = v39;
    v17 = *(a1 + 48) + *(v39 + 72) * v12;
    v18 = *(v39 + 16);
    v19 = v41;
    v20 = v42;
    v18(v41, v17, v42);
    v18(v7, v19, v20);
    (*(v16 + 8))(v19, v20);
    v46 = v9;
    v22 = *(v9 + 16);
    v21 = *(v9 + 24);
    if (v22 >= v21 >> 1)
    {
      sub_1D178D3D8((v21 > 1), v22 + 1, 1);
      v9 = v46;
    }

    *(v9 + 16) = v22 + 1;
    v23 = v9 + ((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v22;
    v7 = v36;
    result = sub_1D1AA4538(v36, v23, type metadata accessor for WriteInProgressStatusViewModel.ID);
    a1 = v35;
    v14 = 1 << *(v35 + 32);
    if (v12 >= v14)
    {
      goto LABEL_22;
    }

    v10 = v34;
    v24 = *(v34 + 8 * v45);
    if ((v24 & (1 << v12)) == 0)
    {
      goto LABEL_23;
    }

    if (v44 != *(v35 + 36))
    {
      goto LABEL_24;
    }

    v25 = v24 & (-2 << (v12 & 0x3F));
    if (v25)
    {
      v14 = __clz(__rbit64(v25)) | v12 & 0x7FFFFFFFFFFFFFC0;
      v15 = v33;
    }

    else
    {
      v26 = v45 << 6;
      v27 = v45 + 1;
      v15 = v33;
      v28 = (v32 + 8 * v45);
      while (v27 < (v14 + 63) >> 6)
      {
        v30 = *v28++;
        v29 = v30;
        v26 += 64;
        ++v27;
        if (v30)
        {
          result = sub_1D1716920(v12, v44, 0);
          v14 = __clz(__rbit64(v29)) + v26;
          goto LABEL_4;
        }
      }

      result = sub_1D1716920(v12, v44, 0);
    }

LABEL_4:
    v13 = v43 + 1;
    v12 = v14;
    if (v43 + 1 == v15)
    {
      return v9;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

unint64_t sub_1D1A8D678(unint64_t isUniquelyReferenced_nonNull_bridgeObject)
{
  v2 = v1;
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_45;
  }

  v3 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v3)
  {
    v4 = 0;
    v33 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v34 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v30 = isUniquelyReferenced_nonNull_bridgeObject;
    v32 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    v5 = MEMORY[0x1E69E7CC0];
    v31 = v3;
    while (1)
    {
      if (v34)
      {
        isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x1D3891EF0](v4, v30);
      }

      else
      {
        if (v4 >= *(v33 + 16))
        {
          goto LABEL_40;
        }

        isUniquelyReferenced_nonNull_bridgeObject = *(v32 + 8 * v4);
      }

      v6 = isUniquelyReferenced_nonNull_bridgeObject;
      v7 = __OFADD__(v4, 1);
      v8 = v4 + 1;
      if (v7)
      {
        break;
      }

      v9 = [isUniquelyReferenced_nonNull_bridgeObject services];
      sub_1D1741B10(0, &qword_1EE079BD0, 0x1E696CC40);
      v10 = sub_1D1E67C1C();

      v11 = v2;
      v12 = sub_1D1A8DA3C(v10);

      v13 = v12 >> 62;
      v35 = v8;
      if (v12 >> 62)
      {
        v14 = sub_1D1E6873C();
      }

      else
      {
        v14 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v15 = v5 >> 62;
      if (v5 >> 62)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_1D1E6873C();
        v16 = isUniquelyReferenced_nonNull_bridgeObject + v14;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v14))
        {
LABEL_38:
          __break(1u);
          break;
        }
      }

      else
      {
        isUniquelyReferenced_nonNull_bridgeObject = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v16 = isUniquelyReferenced_nonNull_bridgeObject + v14;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v14))
        {
          goto LABEL_38;
        }
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (!v15)
        {
          v17 = v5 & 0xFFFFFFFFFFFFFF8;
          if (v16 <= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_21;
          }

          goto LABEL_20;
        }

LABEL_19:
        sub_1D1E6873C();
        goto LABEL_20;
      }

      if (v15)
      {
        goto LABEL_19;
      }

LABEL_20:
      isUniquelyReferenced_nonNull_bridgeObject = sub_1D1E688CC();
      v5 = isUniquelyReferenced_nonNull_bridgeObject;
      v17 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_21:
      v37 = v5;
      v18 = *(v17 + 16);
      v19 = *(v17 + 24);
      if (v13)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_1D1E6873C();
        v20 = isUniquelyReferenced_nonNull_bridgeObject;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_25:
          if (((v19 >> 1) - v18) < v14)
          {
            goto LABEL_42;
          }

          v21 = v17 + 8 * v18 + 32;
          if (v13)
          {
            if (v20 < 1)
            {
              goto LABEL_44;
            }

            sub_1D17D8EA8(&qword_1EC649B78, &qword_1EC649B80, &unk_1D1E95B60, MEMORY[0x1E69E6340]);
            for (i = 0; i != v20; ++i)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649B80, &unk_1D1E95B60);
              v23 = sub_1D1790CDC(v36, i, v12);
              v25 = *v24;
              (v23)(v36, 0);
              *(v21 + 8 * i) = v25;
            }
          }

          else
          {
            sub_1D1741B10(0, &qword_1EE079CD0, 0x1E696CB38);
            swift_arrayInitWithCopy();
          }

          v2 = v11;
          v3 = v31;
          v5 = v37;
          if (v14 >= 1)
          {
            v26 = *(v17 + 16);
            v7 = __OFADD__(v26, v14);
            v27 = v26 + v14;
            if (v7)
            {
              goto LABEL_43;
            }

            *(v17 + 16) = v27;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v20 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v20)
        {
          goto LABEL_25;
        }
      }

      v5 = v37;
      if (v14 > 0)
      {
        goto LABEL_41;
      }

LABEL_5:
      v4 = v35;
      if (v35 == v3)
      {
        return v5;
      }
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    v28 = isUniquelyReferenced_nonNull_bridgeObject;
    v3 = sub_1D1E6873C();
    isUniquelyReferenced_nonNull_bridgeObject = v28;
  }

  return MEMORY[0x1E69E7CC0];
}

unint64_t sub_1D1A8DA3C(unint64_t isUniquelyReferenced_nonNull_bridgeObject)
{
  v2 = v1;
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_47;
  }

  for (i = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10); i; isUniquelyReferenced_nonNull_bridgeObject = v27)
  {
    v4 = 0;
    v33 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v34 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v5 = MEMORY[0x1E69E7CC0];
    v29 = isUniquelyReferenced_nonNull_bridgeObject;
    v31 = i;
    v32 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    while (1)
    {
      if (v34)
      {
        isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x1D3891EF0](v4, v29);
      }

      else
      {
        if (v4 >= *(v33 + 16))
        {
          goto LABEL_42;
        }

        isUniquelyReferenced_nonNull_bridgeObject = *(v32 + 8 * v4);
      }

      v6 = isUniquelyReferenced_nonNull_bridgeObject;
      v7 = __OFADD__(v4++, 1);
      if (v7)
      {
        break;
      }

      v39 = isUniquelyReferenced_nonNull_bridgeObject;
      v8 = v2;
      sub_1D1A93EB8(&v39, &v38);
      if (v2)
      {
        goto LABEL_40;
      }

      v9 = v38;
      v6 = (v38 >> 62);
      if (v38 >> 62)
      {
        v10 = sub_1D1E6873C();
      }

      else
      {
        v10 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v11 = v5 >> 62;
      if (v5 >> 62)
      {
        v26 = sub_1D1E6873C();
        v13 = v26 + v10;
        if (__OFADD__(v26, v10))
        {
LABEL_39:
          __break(1u);
LABEL_40:

          return v5;
        }
      }

      else
      {
        v12 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v13 = v12 + v10;
        if (__OFADD__(v12, v10))
        {
          goto LABEL_39;
        }
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      v36 = v10;
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (!v11)
        {
          v14 = v5 & 0xFFFFFFFFFFFFFF8;
          if (v13 <= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_22;
          }

          goto LABEL_21;
        }

LABEL_20:
        sub_1D1E6873C();
        goto LABEL_21;
      }

      if (v11)
      {
        goto LABEL_20;
      }

LABEL_21:
      isUniquelyReferenced_nonNull_bridgeObject = sub_1D1E688CC();
      v5 = isUniquelyReferenced_nonNull_bridgeObject;
      v14 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_22:
      v15 = *(v14 + 16);
      v16 = *(v14 + 24);
      if (v6)
      {
        v18 = v14;
        isUniquelyReferenced_nonNull_bridgeObject = sub_1D1E6873C();
        v14 = v18;
        v17 = isUniquelyReferenced_nonNull_bridgeObject;
      }

      else
      {
        v17 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v17)
      {
        if (((v16 >> 1) - v15) < v36)
        {
          goto LABEL_44;
        }

        v35 = v5;
        v19 = v14 + 8 * v15 + 32;
        v30 = v14;
        if (v6)
        {
          if (v17 < 1)
          {
            goto LABEL_46;
          }

          sub_1D17D8EA8(&qword_1EC649B78, &qword_1EC649B80, &unk_1D1E95B60, MEMORY[0x1E69E6340]);
          for (j = 0; j != v17; ++j)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649B80, &unk_1D1E95B60);
            v21 = sub_1D1790CDC(v37, j, v9);
            v23 = *v22;
            (v21)(v37, 0);
            *(v19 + 8 * j) = v23;
          }
        }

        else
        {
          sub_1D1741B10(0, &qword_1EE079CD0, 0x1E696CB38);
          swift_arrayInitWithCopy();
        }

        v2 = v8;
        v5 = v35;
        if (v36 >= 1)
        {
          v24 = *(v30 + 16);
          v7 = __OFADD__(v24, v36);
          v25 = v24 + v36;
          if (v7)
          {
            goto LABEL_45;
          }

          *(v30 + 16) = v25;
        }
      }

      else
      {

        if (v36 > 0)
        {
          goto LABEL_43;
        }
      }

      if (v4 == v31)
      {
        return v5;
      }
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    v27 = isUniquelyReferenced_nonNull_bridgeObject;
    i = sub_1D1E6873C();
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1D1A8DDCC(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  *(v8 + 457) = a7;
  *(v8 + 192) = a6;
  *(v8 + 200) = v7;
  *(v8 + 176) = a4;
  *(v8 + 184) = a5;
  *(v8 + 456) = a3;
  *(v8 + 160) = a1;
  *(v8 + 168) = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649C98, &qword_1D1E96138);
  *(v8 + 208) = v9;
  *(v8 + 216) = *(v9 - 8);
  *(v8 + 224) = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649CA0, &qword_1D1E96140);
  *(v8 + 232) = v10;
  v11 = *(v10 - 8);
  *(v8 + 240) = v11;
  *(v8 + 248) = *(v11 + 64);
  *(v8 + 256) = swift_task_alloc();
  *(v8 + 264) = swift_task_alloc();
  *(v8 + 272) = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649C68, &qword_1D1E960B0);
  *(v8 + 280) = v12;
  v13 = *(v12 - 8);
  *(v8 + 288) = v13;
  *(v8 + 296) = *(v13 + 64);
  *(v8 + 304) = swift_task_alloc();
  *(v8 + 312) = swift_task_alloc();
  v14 = sub_1D1E66A7C();
  *(v8 + 320) = v14;
  *(v8 + 328) = *(v14 - 8);
  *(v8 + 336) = swift_task_alloc();
  *(v8 + 344) = swift_task_alloc();
  *(v8 + 352) = swift_task_alloc();
  *(v8 + 360) = swift_task_alloc();
  *(v8 + 368) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649C90, &qword_1D1E96120);
  *(v8 + 376) = swift_task_alloc();
  *(v8 + 384) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  *(v8 + 392) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC649E30, &unk_1D1E91250);
  *(v8 + 400) = swift_task_alloc();
  v15 = type metadata accessor for StateSnapshot(0);
  *(v8 + 408) = v15;
  v16 = *(v15 - 8);
  *(v8 + 416) = v16;
  *(v8 + 424) = *(v16 + 64);
  *(v8 + 432) = swift_task_alloc();
  *(v8 + 440) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1A8E15C, v7, 0);
}

uint64_t sub_1D1A8E15C()
{
  if (*(*(v0 + 168) + 16))
  {
    v1 = swift_task_alloc();
    *(v0 + 448) = v1;
    *v1 = v0;
    v1[1] = sub_1D1A8E378;
    v2 = *(v0 + 400);
    v3 = *(v0 + 176);
    v4 = *(v0 + 184);
    v5 = *(v0 + 456);
    v6 = *(v0 + 168);

    return sub_1D1A9DA48(v2, v6, v5, v3, v4);
  }

  else
  {
    v8 = *(v0 + 160);
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646088, &qword_1D1E7E4B8);
    (*(*(v9 - 8) + 56))(v8, 1, 1, v9);

    v10 = *(v0 + 8);

    return v10();
  }
}

uint64_t sub_1D1A8E378()
{
  v1 = *(*v0 + 200);

  return MEMORY[0x1EEE6DFA0](sub_1D1A8E488, v1, 0);
}

uint64_t sub_1D1A8E488()
{
  v192 = v0;
  v2 = *(v0 + 400);
  if ((*(*(v0 + 416) + 48))(v2, 1, *(v0 + 408)) == 1)
  {
    v3 = *(v0 + 160);
    sub_1D1741A30(v2, &unk_1EC649E30, &unk_1D1E91250);
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646088, &qword_1D1E7E4B8);
    (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
    goto LABEL_5;
  }

  v5 = *(v0 + 456);
  sub_1D1AA4538(v2, *(v0 + 440), type metadata accessor for StateSnapshot);
  v173 = v0;
  if (v5)
  {
    v7 = *(v0 + 432);
    v6 = *(v0 + 440);
    v8 = *(v0 + 416);
    v9 = *(v0 + 392);
    v10 = *(v0 + 160);
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646088, &qword_1D1E7E4B8);
    v12 = *(v11 + 48);
    sub_1D1AA43E0(v6, v10, type metadata accessor for StateSnapshot);
    v13 = sub_1D1E67E7C();
    (*(*(v13 - 8) + 56))(v9, 1, 1, v13);
    sub_1D1AA43E0(v6, v7, type metadata accessor for StateSnapshot);
    v14 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v15 = swift_allocObject();
    *(v15 + 16) = 0;
    *(v15 + 24) = 0;
    sub_1D1AA4538(v7, v15 + v14, type metadata accessor for StateSnapshot);
    v16 = sub_1D1B02614(0, 0, v9, &unk_1D1E96170, v15);
    sub_1D1AA3F34(v6, type metadata accessor for StateSnapshot);
    *(v10 + v12) = v16;
    (*(*(v11 - 8) + 56))(v10, 0, 1, v11);
    goto LABEL_5;
  }

  v19 = *(v0 + 200);
  v145 = *(v19 + 128);
  if (v145 == -1)
  {
    goto LABEL_105;
  }

  v20 = *(v0 + 328);
  v21 = *(v0 + 168);
  v148 = *(v0 + 200);
  *(v19 + 128) = v145 + 1;
  v137 = v21 + 64;
  v138 = v21;
  v22 = -1 << *(v21 + 32);
  if (-v22 < 64)
  {
    v23 = ~(-1 << -v22);
  }

  else
  {
    v23 = -1;
  }

  v2 = (v23 & *(v21 + 64));
  v136 = (63 - v22) >> 6;
  v157 = (v20 + 16);
  v141 = (v20 + 32);
  v143 = v20;
  v24 = (v20 + 8);

  v25 = 0;
  v153 = v24;
  if (!v2)
  {
    goto LABEL_14;
  }

LABEL_13:
  v26 = v2;
  v1 = v25;
LABEL_20:
  v28 = *(v0 + 368);
  v29 = *(v0 + 376);
  v30 = *(v0 + 320);
  v140 = (v26 - 1) & v26;
  v31 = __clz(__rbit64(v26)) | (v1 << 6);
  (*(v143 + 16))(v28, *(v138 + 48) + *(v143 + 72) * v31, v30);
  v32 = *(*(v138 + 56) + 8 * v31);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6430E0, &qword_1D1E71438);
  v34 = *(v33 + 48);
  (*(v143 + 32))(v29, v28, v30);
  *(v29 + v34) = v32;
  (*(*(v33 - 8) + 56))(v29, 0, 1, v33);

  v139 = v1;
  v24 = v153;
  while (1)
  {
    v35 = *(v0 + 384);
    sub_1D1741A90(*(v0 + 376), v35, &qword_1EC649C90, &qword_1D1E96120);
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6430E0, &qword_1D1E71438);
    if ((*(*(v36 - 8) + 48))(v35, 1, v36) == 1)
    {
      goto LABEL_96;
    }

    v37 = *(*(v0 + 384) + *(v36 + 48));
    (*v141)(*(v0 + 360));
    v38 = 0;
    v39 = v37 + 64;
    v146 = v37;
    v40 = -1 << *(v37 + 32);
    if (-v40 < 64)
    {
      v41 = ~(-1 << -v40);
    }

    else
    {
      v41 = -1;
    }

    v42 = v41 & *(v37 + 64);
    v43 = (63 - v40) >> 6;
    v150 = v43;
    v152 = v37 + 64;
LABEL_28:
    if (v42)
    {
      v47 = v38;
      goto LABEL_38;
    }

    v48 = v43 <= v38 + 1 ? v38 + 1 : v43;
    v49 = v48 - 1;
    do
    {
      v47 = v38 + 1;
      if (__OFADD__(v38, 1))
      {
        __break(1u);
LABEL_96:
        v95 = *(v0 + 272);
        v168 = *(v0 + 264);
        v178 = *(v0 + 256);
        v97 = *(v0 + 232);
        v96 = *(v0 + 240);
        v98 = *(v0 + 216);
        v99 = *(v0 + 224);
        v100 = *(v0 + 208);
        v175 = *(v0 + 457);
        v181 = *(v0 + 168);
        v184 = *(v0 + 176);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643340, &qword_1D1E717A0);
        (*(v98 + 104))(v99, *MEMORY[0x1E69E8790], v100);
        sub_1D1E6804C();
        (*(v98 + 8))(v99, v100);
        v101 = swift_allocObject();
        *(v101 + 16) = 0;
        v102 = *(v96 + 16);
        v103 = v97;
        v102(v168, v95, v97);
        v104 = *(v96 + 80);
        v105 = (v104 + 24) & ~v104;
        v106 = swift_allocObject();
        *(v106 + 16) = v101;
        v107 = *(v96 + 32);
        v107(v106 + v105, v168, v103);
        v169 = v102;
        v102(v178, v95, v103);
        v162 = v104;
        v108 = swift_allocObject();
        *(v108 + 16) = v101;
        v165 = v107;
        v107(v108 + v105, v178, v103);
        v109 = v184;
        v185 = v101;
        v186 = v181;
        v187 = 0;
        v188 = v109;
        *&v189 = sub_1D1AA3F94;
        *(&v189 + 1) = v106;
        v190 = sub_1D1AA407C;
        v191 = v108;
        v0 = v173;
        swift_retain_n();
        HMHome.perform(batchWriteRequest:handlers:)(&v186, &v189);
        if ((v175 & 1) == 0)
        {
          v110 = v173[49];
          v112 = v173[33];
          v111 = v173[34];
          v113 = v173[29];
          v114 = v173[24];
          v115 = sub_1D1E67E7C();
          (*(*(v115 - 8) + 56))(v110, 1, 1, v115);
          v169(v112, v111, v113);
          v116 = swift_allocObject();
          *(v116 + 2) = 0;
          *(v116 + 3) = 0;
          *(v116 + 4) = v114;
          *(v116 + 5) = v185;
          v165(&v116[(v162 + 48) & ~v162], v112, v113);

          sub_1D1B1DFC0(0, 0, v110, &unk_1D1E96168, v116);

          sub_1D1741A30(v110, &unk_1EC6442C0, &qword_1D1E741A0);
        }

        v176 = v173[55];
        v117 = v173[49];
        v147 = v117;
        v119 = v173[38];
        v118 = v173[39];
        v120 = v173[36];
        v154 = v173[37];
        v121 = v173[35];
        v142 = v121;
        v144 = v119;
        v166 = v173[29];
        v170 = v173[34];
        v122 = v173[25];
        v160 = v173[23];
        v163 = v173[30];
        v156 = v173[21];
        v158 = v173[22];
        v172 = v173[20];
        *&v189 = 0;
        *(&v189 + 1) = 0xE000000000000000;
        sub_1D1E6884C();

        *&v189 = 0xD000000000000029;
        *(&v189 + 1) = 0x80000001D1EC3E50;
        v173[19] = v145;
        v123 = sub_1D1E68FAC();
        MEMORY[0x1D3890F70](v123);

        v149 = *(&v189 + 1);
        v151 = v189;
        v124 = sub_1D1E67E7C();
        (*(*(v124 - 8) + 56))(v117, 1, 1, v124);
        (*(v120 + 16))(v119, v118, v121);
        v125 = sub_1D17D8EA8(&qword_1EC649C70, &qword_1EC649C18, &qword_1D1E95F48, &protocol conformance descriptor for CharacteristicValueModerator<A>);
        v126 = (*(v120 + 80) + 32) & ~*(v120 + 80);
        v127 = (v154 + v126 + 7) & 0xFFFFFFFFFFFFFFF8;
        v128 = (v127 + 15) & 0xFFFFFFFFFFFFFFF8;
        v129 = (v128 + 15) & 0xFFFFFFFFFFFFFFF8;
        v130 = swift_allocObject();
        *(v130 + 16) = v122;
        *(v130 + 24) = v125;
        (*(v120 + 32))(v130 + v126, v144, v142);
        *(v130 + v127) = v145;
        *(v130 + v128) = v122;
        v131 = v130 + v129;
        *v131 = v156;
        *(v131 + 8) = 0;
        *(v131 + 16) = v158;
        *(v130 + ((v129 + 31) & 0xFFFFFFFFFFFFFFF8)) = v160;
        swift_retain_n();

        v132 = v160;
        v133 = sub_1D1B02614(v151, v149, v147, &unk_1D1E96158, v130);

        (*(v163 + 8))(v170, v166);
        (*(v120 + 8))(v118, v142);
        v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646088, &qword_1D1E7E4B8);
        v135 = *(v134 + 48);
        sub_1D1AA4538(v176, v172, type metadata accessor for StateSnapshot);
        *(v172 + v135) = v133;
        (*(*(v134 - 8) + 56))(v172, 0, 1, v134);

LABEL_5:

        v17 = *(v0 + 8);

        return v17();
      }

      if (v47 >= v43)
      {
        v164 = 0;
        *(v0 + 88) = 0;
        *(v0 + 72) = 0u;
        v38 = v49;
        *(v0 + 56) = 0u;
        goto LABEL_39;
      }

      v42 = *(v39 + 8 * v47);
      ++v38;
    }

    while (!v42);
    v38 = v47;
LABEL_38:
    v164 = (v42 - 1) & v42;
    v50 = __clz(__rbit64(v42)) | (v47 << 6);
    v51 = *(*(v146 + 48) + v50);
    sub_1D1741970(*(v146 + 56) + 32 * v50, v0 + 96);
    *(v0 + 56) = v51;
    sub_1D1742194((v0 + 96), (v0 + 64));
LABEL_39:
    *(v0 + 48) = *(v0 + 88);
    v52 = *(v0 + 72);
    *(v0 + 16) = *(v0 + 56);
    *(v0 + 32) = v52;
    v53 = *(v0 + 360);
    if (*(v0 + 48))
    {
      break;
    }

    (*v24)(*(v0 + 360), *(v0 + 320));

    v25 = v139;
    v2 = v140;
    if (v140)
    {
      goto LABEL_13;
    }

LABEL_14:
    if (v136 <= v25 + 1)
    {
      v27 = v25 + 1;
    }

    else
    {
      v27 = v136;
    }

    while (1)
    {
      v1 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        goto LABEL_103;
      }

      if (v1 >= v136)
      {
        break;
      }

      v26 = *(v137 + 8 * v1);
      ++v25;
      if (v26)
      {
        goto LABEL_20;
      }
    }

    v139 = v27 - 1;
    v93 = *(v0 + 376);
    v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6430E0, &qword_1D1E71438);
    (*(*(v94 - 8) + 56))(v93, 1, 1, v94);
    v140 = 0;
  }

  v159 = v38;
  v179 = *(v0 + 352);
  v182 = *(v0 + 344);
  v54 = *(v0 + 320);
  v55 = *(v0 + 16);
  v56 = sub_1D174A5B8(&qword_1EE079C20, &qword_1EE07B620, 0x1E696CB98, &protocol conformance descriptor for HMHome);
  v57 = *(v56 + 168);
  v58 = sub_1D1741B10(0, &qword_1EE07B620, 0x1E696CB98);
  v59 = v57(v58, v56);
  v2 = v157;
  v60 = *v157;
  (*v157)(v179, v53, v54);
  v60(v182, v53, v54);
  v155 = v60;
  v161 = v59 >> 62;
  v1 = v59 & 0xFFFFFFFFFFFFFF8;
  if (v59 >> 62)
  {
    v174 = sub_1D1E6873C();
  }

  else
  {
    v174 = *((v59 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v61 = 0;
  v177 = v59 + 32;
  v180 = v59 & 0xC000000000000001;
  v0 = v173;
  v167 = v59 & 0xFFFFFFFFFFFFFF8;
  v171 = v59;
  while (1)
  {
    if (v61 == v174)
    {
      v61 = v174;
      if (!v161)
      {
        goto LABEL_65;
      }

LABEL_69:
      if (v61 == sub_1D1E6873C())
      {
        goto LABEL_26;
      }

LABEL_70:
      if (v180)
      {
        v73 = MEMORY[0x1D3891EF0](v61, v59);
      }

      else
      {
        if (v61 >= *(v1 + 16))
        {
          goto LABEL_101;
        }

        v73 = *(v177 + 8 * v61);
      }

      v74 = v73;
      v75 = *(v0 + 352);
      v76 = *(v0 + 320);
      v77 = sub_1D1A8F820(v73, v75, v55);
      v24 = v153;
      v1 = *v153;
      (*v153)(v75, v76);

      v2 = *(v0 + 344);
      if (!v77)
      {
        goto LABEL_106;
      }

      v78 = *(v0 + 320);

      (v1)(v2, v78);
      v79 = [v77 uniqueIdentifier];
      sub_1D1E66A5C();

      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v189 = *(v148 + 136);
      v2 = v189;
      *(v148 + 136) = 0x8000000000000000;
      v81 = sub_1D1742188();
      v83 = v2[2];
      v84 = (v82 & 1) == 0;
      v62 = __OFADD__(v83, v84);
      v85 = v83 + v84;
      if (v62)
      {
        goto LABEL_102;
      }

      v86 = v82;
      if (v2[3] >= v85)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v92 = v81;
          sub_1D1739E3C();
          v81 = v92;
          v2 = v189;
        }
      }

      else
      {
        sub_1D172A2D0(v85, isUniquelyReferenced_nonNull_native);
        v2 = v189;
        v81 = sub_1D1742188();
        if ((v86 & 1) != (v87 & 1))
        {
LABEL_92:

          return sub_1D1E690FC();
        }
      }

      v88 = v173[42];
      v89 = v173[40];
      if (v86)
      {
        *(v2[7] + 8 * v81) = v145;
        (v1)(v88, v89);
      }

      else
      {
        v2[(v81 >> 6) + 8] |= 1 << v81;
        v0 = v81;
        v155(v2[6] + *(v143 + 72) * v81, v88, v89);
        *(v2[7] + 8 * v0) = v145;
        (v1)(v88, v89);
        v90 = v2[2];
        v62 = __OFADD__(v90, 1);
        v91 = v90 + 1;
        if (v62)
        {
          goto LABEL_104;
        }

        v2[2] = v91;
      }

      *(v148 + 136) = v2;

      v0 = v173;
      swift_endAccess();

      goto LABEL_27;
    }

    if (!v180)
    {
      break;
    }

    v63 = MEMORY[0x1D3891EF0](v61, v59);
LABEL_49:
    v64 = *(v0 + 344);
    v183 = v63;
    v65 = [v63 services];
    sub_1D1741B10(0, &qword_1EE079BD0, 0x1E696CC40);
    v66 = sub_1D1E67C1C();

    v2 = swift_task_alloc();
    v2[2] = v64;
    v67 = sub_1D174A6C4(sub_1D1AA43C0, v2, v66);

    if (v67)
    {
      v2 = [v67 characteristics];
      sub_1D1741B10(0, &qword_1EE079CD0, 0x1E696CB38);
      v68 = sub_1D1E67C1C();

      if (v68 >> 62)
      {
        v69 = sub_1D1E6873C();
        if (v69)
        {
LABEL_52:
          v70 = 0;
          while (1)
          {
            if ((v68 & 0xC000000000000001) != 0)
            {
              v71 = MEMORY[0x1D3891EF0](v70, v68);
            }

            else
            {
              if (v70 >= *((v68 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_91;
              }

              v71 = *(v68 + 8 * v70 + 32);
            }

            v2 = v71;
            v72 = v70 + 1;
            if (__OFADD__(v70, 1))
            {
              __break(1u);
LABEL_91:
              __break(1u);
              goto LABEL_92;
            }

            if (sub_1D1A8FA9C(v71))
            {
              break;
            }

            ++v70;
            if (v72 == v69)
            {
              v59 = v171;
              v0 = v173;
              v1 = v167;
              goto LABEL_43;
            }
          }

          v59 = v171;
          v0 = v173;
          v1 = v167;
          if (v161)
          {
            goto LABEL_69;
          }

LABEL_65:
          if (v61 != *(v1 + 16))
          {
            goto LABEL_70;
          }

LABEL_26:
          v44 = *(v0 + 344);
          v45 = *(v0 + 320);
          v24 = v153;
          v46 = *v153;
          (*v153)(*(v0 + 352), v45);

          v46(v44, v45);
LABEL_27:
          v43 = v150;
          v39 = v152;
          v38 = v159;
          __swift_destroy_boxed_opaque_existential_1((v0 + 24));
          v42 = v164;
          goto LABEL_28;
        }
      }

      else
      {
        v69 = *((v68 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v69)
        {
          goto LABEL_52;
        }
      }

LABEL_43:
    }

    v62 = __OFADD__(v61++, 1);
    if (v62)
    {
      goto LABEL_100;
    }
  }

  if (v61 < *(v1 + 16))
  {
    v63 = *(v177 + 8 * v61);
    goto LABEL_49;
  }

  __break(1u);
LABEL_100:
  __break(1u);
LABEL_101:
  __break(1u);
LABEL_102:
  __break(1u);
LABEL_103:
  __break(1u);
LABEL_104:
  __break(1u);
LABEL_105:
  __break(1u);
LABEL_106:
  result = (v1)(v2, *(v0 + 320));
  __break(1u);
  return result;
}

void *sub_1D1A8F820(void *a1, uint64_t a2, char a3)
{
  v4 = [a1 services];
  sub_1D1741B10(0, &qword_1EE079BD0, 0x1E696CC40);
  v5 = sub_1D1E67C1C();

  v28 = a2;
  v6 = sub_1D174A6C4(sub_1D1AA5568, v27, v5);

  if (v6)
  {
    v7 = [v6 characteristics];
    sub_1D1741B10(0, &qword_1EE079CD0, 0x1E696CB38);
    v8 = sub_1D1E67C1C();

    if (v8 >> 62)
    {
      goto LABEL_21;
    }

    for (i = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D1E6873C())
    {
      v10 = 0;
      while (1)
      {
        if ((v8 & 0xC000000000000001) != 0)
        {
          v11 = MEMORY[0x1D3891EF0](v10, v8);
        }

        else
        {
          if (v10 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_20;
          }

          v11 = *(v8 + 8 * v10 + 32);
        }

        v12 = v11;
        v13 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          break;
        }

        v14 = [v11 characteristicType];
        v15 = sub_1D1E6781C();
        v17 = v16;

        v18._countAndFlagsBits = v15;
        v18._object = v17;
        CharacteristicKind.init(rawValue:)(v18);
        v19 = v30;
        if (v30 == 174)
        {
          v19 = 0;
        }

        v30 = v19;
        v29 = a3;
        v20 = CharacteristicKind.rawValue.getter();
        v22 = v21;
        if (v20 == CharacteristicKind.rawValue.getter() && v22 == v23)
        {

LABEL_18:

          return v12;
        }

        v24 = sub_1D1E6904C();

        if (v24)
        {
          goto LABEL_18;
        }

        ++v10;
        if (v13 == i)
        {
          goto LABEL_22;
        }
      }

      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      ;
    }

LABEL_22:
  }

  return 0;
}

uint64_t sub_1D1A8FA9C(void *a1)
{
  v1 = [a1 characteristicType];
  v2 = sub_1D1E6781C();
  v4 = v3;

  v5._countAndFlagsBits = v2;
  v5._object = v4;
  CharacteristicKind.init(rawValue:)(v5);
  v6 = CharacteristicKind.rawValue.getter();
  v8 = v7;
  if (v6 == CharacteristicKind.rawValue.getter() && v8 == v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_1D1E6904C();
  }

  return v10 & 1;
}

uint64_t HomeState.Stream.fetchAllCharacteristics(in:)(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  if (qword_1EC642358 != -1)
  {
    swift_once();
  }

  v3 = qword_1EC64ABE8;
  v2[8] = qword_1EC64ABE8;

  return MEMORY[0x1EEE6DFA0](sub_1D1A8FC20, v3, 0);
}

uint64_t sub_1D1A8FC20()
{
  v1 = v0[7];
  swift_beginAccess();
  v2 = *(v1 + 64);
  v0[9] = v2;
  if (v2)
  {
    v3 = v0[6];
    if (v3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC649E10, &unk_1D1E76480);
      v4 = swift_allocObject();
      *(v4 + 16) = xmmword_1D1E73FA0;
      *(v4 + 32) = v3;
      v5 = v2;
    }

    else
    {
      v9 = [v2 homes];
      sub_1D1741B10(0, &qword_1EE07B620, 0x1E696CB98);
      v4 = sub_1D1E67C1C();
    }

    v0[10] = v4;
    v11 = v0[7];
    v10 = v0[8];
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC649E20, &unk_1D1E717B0);
    v13 = sub_1D1AA3AF8(&qword_1EC649DA0, type metadata accessor for HomeDataActor, &protocol conformance descriptor for HomeDataActor);
    v14 = swift_task_alloc();
    v0[11] = v14;
    *(v14 + 16) = v4;
    *(v14 + 24) = v11;
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649C60, &qword_1D1E960A0);
    v16 = v3;
    v17 = swift_task_alloc();
    v0[12] = v17;
    *v17 = v0;
    v17[1] = sub_1D1A8FE88;

    return MEMORY[0x1EEE6DBF8](v0 + 5, v12, v15, v10, v13, &unk_1D1E96098, v14, v12);
  }

  else
  {
    v6 = sub_1D18DAA38(MEMORY[0x1E69E7CC0]);
    v7 = v0[1];

    return v7(v6);
  }
}