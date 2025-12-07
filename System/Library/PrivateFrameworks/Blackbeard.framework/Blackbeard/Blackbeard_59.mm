void sub_1E6581BDC(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  sub_1E65E6058();
  sub_1E65E6048();
  sub_1E65E5FC8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = a1;
  a4();
}

id StandardPlayerViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_1E65E5C48();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id StandardPlayerViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Void __swiftcall StandardPlayerViewController.configurePlayerItem(_:)(AVPlayerItem a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC20FitnessPlayerService28StandardPlayerViewController_playerViewController);
  v3 = [objc_allocWithZone(MEMORY[0x1E6988098]) initWithPlayerItem_];
  [v2 setPlayer_];
}

Swift::Void __swiftcall StandardPlayerViewController.beginPlayback()()
{
  v1 = [*(v0 + OBJC_IVAR____TtC20FitnessPlayerService28StandardPlayerViewController_playerViewController) player];
  [v1 play];
}

unint64_t sub_1E6581FAC()
{
  result = qword_1ED07B5E0;
  if (!qword_1ED07B5E0)
  {
    type metadata accessor for StandardPlayerPresenter(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED07B5E0);
  }

  return result;
}

uint64_t sub_1E6582004(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1E5DFE6BC;

  return sub_1E6579AEC(a1, v4, v5, v6);
}

uint64_t sub_1E65820BC(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B690, &qword_1E660CA10);
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6582188, v1, 0);
}

uint64_t sub_1E6582188()
{
  __swift_project_boxed_opaque_existential_1((*(v0 + 32) + 112), *(*(v0 + 32) + 136));
  sub_1E65DDB48();

  return MEMORY[0x1EEE6DFA0](sub_1E6582224, 0, 0);
}

uint64_t sub_1E6582224()
{
  v1 = v0[7];
  v2 = swift_task_alloc();
  v0[8] = v2;
  *(v2 + 16) = "BookmarkService/LiveBookmarkService.swift";
  *(v2 + 24) = 41;
  *(v2 + 32) = 2;
  *(v2 + 40) = 28;
  *(v2 + 48) = v1;
  v3 = swift_task_alloc();
  v0[9] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B698, &qword_1E660CA18);
  *v3 = v0;
  v3[1] = sub_1E6541C10;

  return MEMORY[0x1EEE6DE38](v0 + 2, 0, 0, 0xD000000000000013, 0x80000001E6610AC0, sub_1E658838C, v2, v4);
}

uint64_t sub_1E6582348(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B690, &qword_1E660CA10);
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6582414, v1, 0);
}

uint64_t sub_1E6582414()
{
  __swift_project_boxed_opaque_existential_1((*(v0 + 32) + 112), *(*(v0 + 32) + 136));
  sub_1E65DDB28();

  return MEMORY[0x1EEE6DFA0](sub_1E65824B0, 0, 0);
}

uint64_t sub_1E65824B0()
{
  v1 = v0[7];
  v2 = swift_task_alloc();
  v0[8] = v2;
  *(v2 + 16) = "BookmarkService/LiveBookmarkService.swift";
  *(v2 + 24) = 41;
  *(v2 + 32) = 2;
  *(v2 + 40) = 32;
  *(v2 + 48) = v1;
  v3 = swift_task_alloc();
  v0[9] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B698, &qword_1E660CA18);
  *v3 = v0;
  v3[1] = sub_1E6541C10;

  return MEMORY[0x1EEE6DE38](v0 + 2, 0, 0, 0xD000000000000013, 0x80000001E6610AC0, sub_1E658838C, v2, v4);
}

uint64_t sub_1E65825D4(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B690, &qword_1E660CA10);
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E65826A0, v1, 0);
}

uint64_t sub_1E65826A0()
{
  __swift_project_boxed_opaque_existential_1((*(v0 + 32) + 112), *(*(v0 + 32) + 136));
  sub_1E65DDB68();

  return MEMORY[0x1EEE6DFA0](sub_1E658273C, 0, 0);
}

uint64_t sub_1E658273C()
{
  v1 = v0[7];
  v2 = swift_task_alloc();
  v0[8] = v2;
  *(v2 + 16) = "BookmarkService/LiveBookmarkService.swift";
  *(v2 + 24) = 41;
  *(v2 + 32) = 2;
  *(v2 + 40) = 36;
  *(v2 + 48) = v1;
  v3 = swift_task_alloc();
  v0[9] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B698, &qword_1E660CA18);
  *v3 = v0;
  v3[1] = sub_1E6541C10;

  return MEMORY[0x1EEE6DE38](v0 + 2, 0, 0, 0xD000000000000013, 0x80000001E6610AC0, sub_1E658838C, v2, v4);
}

uint64_t sub_1E6582860(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B690, &qword_1E660CA10);
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E658292C, v1, 0);
}

uint64_t sub_1E658292C()
{
  __swift_project_boxed_opaque_existential_1((*(v0 + 32) + 112), *(*(v0 + 32) + 136));
  sub_1E65DDB38();

  return MEMORY[0x1EEE6DFA0](sub_1E65829C8, 0, 0);
}

uint64_t sub_1E65829C8()
{
  v1 = v0[7];
  v2 = swift_task_alloc();
  v0[8] = v2;
  *(v2 + 16) = "BookmarkService/LiveBookmarkService.swift";
  *(v2 + 24) = 41;
  *(v2 + 32) = 2;
  *(v2 + 40) = 40;
  *(v2 + 48) = v1;
  v3 = swift_task_alloc();
  v0[9] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B698, &qword_1E660CA18);
  *v3 = v0;
  v3[1] = sub_1E6541C10;

  return MEMORY[0x1EEE6DE38](v0 + 2, 0, 0, 0xD000000000000013, 0x80000001E6610AC0, sub_1E658810C, v2, v4);
}

uint64_t sub_1E6582AEC(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AC80, &unk_1E660A0E0);
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6582BB8, v1, 0);
}

uint64_t sub_1E6582BB8()
{
  __swift_project_boxed_opaque_existential_1((*(v0 + 32) + 112), *(*(v0 + 32) + 136));
  sub_1E65DDAC8();

  return MEMORY[0x1EEE6DFA0](sub_1E6582C54, 0, 0);
}

uint64_t sub_1E6582C54()
{
  v1 = v0[7];
  v2 = swift_task_alloc();
  v0[8] = v2;
  *(v2 + 16) = "BookmarkService/LiveBookmarkService.swift";
  *(v2 + 24) = 41;
  *(v2 + 32) = 2;
  *(v2 + 40) = 44;
  *(v2 + 48) = v1;
  v3 = swift_task_alloc();
  v0[9] = v3;
  *v3 = v0;
  v3[1] = sub_1E65234C4;
  v4 = MEMORY[0x1E69E6530];

  return MEMORY[0x1EEE6DE38](v0 + 2, 0, 0, 0xD000000000000013, 0x80000001E6610AC0, sub_1E6588384, v2, v4);
}

uint64_t sub_1E6582D68(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AC80, &unk_1E660A0E0);
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6582E34, v1, 0);
}

uint64_t sub_1E6582E34()
{
  __swift_project_boxed_opaque_existential_1((*(v0 + 32) + 112), *(*(v0 + 32) + 136));
  sub_1E65DDAE8();

  return MEMORY[0x1EEE6DFA0](sub_1E6582ED0, 0, 0);
}

uint64_t sub_1E6582ED0()
{
  v1 = v0[7];
  v2 = swift_task_alloc();
  v0[8] = v2;
  *(v2 + 16) = "BookmarkService/LiveBookmarkService.swift";
  *(v2 + 24) = 41;
  *(v2 + 32) = 2;
  *(v2 + 40) = 48;
  *(v2 + 48) = v1;
  v3 = swift_task_alloc();
  v0[9] = v3;
  *v3 = v0;
  v3[1] = sub_1E6541C10;
  v4 = MEMORY[0x1E69E6530];

  return MEMORY[0x1EEE6DE38](v0 + 2, 0, 0, 0xD000000000000013, 0x80000001E6610AC0, sub_1E6588384, v2, v4);
}

uint64_t sub_1E6582FE4(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AC80, &unk_1E660A0E0);
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E65830B0, v1, 0);
}

uint64_t sub_1E65830B0()
{
  __swift_project_boxed_opaque_existential_1((*(v0 + 32) + 112), *(*(v0 + 32) + 136));
  sub_1E65DDAD8();

  return MEMORY[0x1EEE6DFA0](sub_1E658314C, 0, 0);
}

uint64_t sub_1E658314C()
{
  v1 = v0[7];
  v2 = swift_task_alloc();
  v0[8] = v2;
  *(v2 + 16) = "BookmarkService/LiveBookmarkService.swift";
  *(v2 + 24) = 41;
  *(v2 + 32) = 2;
  *(v2 + 40) = 52;
  *(v2 + 48) = v1;
  v3 = swift_task_alloc();
  v0[9] = v3;
  *v3 = v0;
  v3[1] = sub_1E6541C10;
  v4 = MEMORY[0x1E69E6530];

  return MEMORY[0x1EEE6DE38](v0 + 2, 0, 0, 0xD000000000000013, 0x80000001E6610AC0, sub_1E6588384, v2, v4);
}

uint64_t sub_1E6583260(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07B6E0, &unk_1E6603F10);
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E658332C, v1, 0);
}

uint64_t sub_1E658332C()
{
  __swift_project_boxed_opaque_existential_1((*(v0 + 24) + 112), *(*(v0 + 24) + 136));
  sub_1E65DDB88();

  return MEMORY[0x1EEE6DFA0](sub_1E65833C8, 0, 0);
}

uint64_t sub_1E65833C8()
{
  v1 = v0[6];
  v2 = swift_task_alloc();
  v0[7] = v2;
  *(v2 + 16) = "BookmarkService/LiveBookmarkService.swift";
  *(v2 + 24) = 41;
  *(v2 + 32) = 2;
  *(v2 + 40) = 56;
  *(v2 + 48) = v1;
  v3 = swift_task_alloc();
  v0[8] = v3;
  *v3 = v0;
  v3[1] = sub_1E653C68C;
  v4 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v3, 0, 0, 0xD000000000000013, 0x80000001E6610AC0, sub_1E6588388, v2, v4);
}

uint64_t sub_1E65834D8(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07B6E0, &unk_1E6603F10);
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E65835A4, v1, 0);
}

uint64_t sub_1E65835A4()
{
  __swift_project_boxed_opaque_existential_1((*(v0 + 24) + 112), *(*(v0 + 24) + 136));
  sub_1E65DDB98();

  return MEMORY[0x1EEE6DFA0](sub_1E6583640, 0, 0);
}

uint64_t sub_1E6583640()
{
  v1 = v0[6];
  v2 = swift_task_alloc();
  v0[7] = v2;
  *(v2 + 16) = "BookmarkService/LiveBookmarkService.swift";
  *(v2 + 24) = 41;
  *(v2 + 32) = 2;
  *(v2 + 40) = 60;
  *(v2 + 48) = v1;
  v3 = swift_task_alloc();
  v0[8] = v3;
  *v3 = v0;
  v3[1] = sub_1E656FF20;
  v4 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v3, 0, 0, 0xD000000000000013, 0x80000001E6610AC0, sub_1E6588388, v2, v4);
}

uint64_t sub_1E6583750(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E6583770, 0, 0);
}

uint64_t sub_1E6583770()
{
  sub_1E65DDE48();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E65837D4()
{
  v1[3] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B678, &qword_1E660C9C8);
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E65838A0, v0, 0);
}

uint64_t sub_1E65838A0()
{
  __swift_project_boxed_opaque_existential_1((*(v0 + 24) + 112), *(*(v0 + 24) + 136));
  sub_1E65DDBA8();

  return MEMORY[0x1EEE6DFA0](sub_1E6583934, 0, 0);
}

uint64_t sub_1E6583934()
{
  v1 = v0[6];
  v2 = swift_task_alloc();
  v0[7] = v2;
  *(v2 + 16) = "BookmarkService/LiveBookmarkService.swift";
  *(v2 + 24) = 41;
  *(v2 + 32) = 2;
  *(v2 + 40) = 68;
  *(v2 + 48) = v1;
  v3 = swift_task_alloc();
  v0[8] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0743D0, &qword_1E660C9D0);
  *v3 = v0;
  v3[1] = sub_1E6522B9C;

  return MEMORY[0x1EEE6DE38](v0 + 2, 0, 0, 0xD000000000000013, 0x80000001E6610AC0, sub_1E6588380, v2, v4);
}

uint64_t sub_1E6583A58(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B678, &qword_1E660C9C8);
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6583B24, v1, 0);
}

uint64_t sub_1E6583B24()
{
  __swift_project_boxed_opaque_existential_1((*(v0 + 32) + 112), *(*(v0 + 32) + 136));
  sub_1E65DDB78();

  return MEMORY[0x1EEE6DFA0](sub_1E6583BC0, 0, 0);
}

uint64_t sub_1E6583BC0()
{
  v1 = v0[7];
  v2 = swift_task_alloc();
  v0[8] = v2;
  *(v2 + 16) = "BookmarkService/LiveBookmarkService.swift";
  *(v2 + 24) = 41;
  *(v2 + 32) = 2;
  *(v2 + 40) = 72;
  *(v2 + 48) = v1;
  v3 = swift_task_alloc();
  v0[9] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0743D0, &qword_1E660C9D0);
  *v3 = v0;
  v3[1] = sub_1E6541C10;

  return MEMORY[0x1EEE6DE38](v0 + 2, 0, 0, 0xD000000000000013, 0x80000001E6610AC0, sub_1E6588380, v2, v4);
}

uint64_t sub_1E6583CE4()
{
  v1[3] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AC80, &unk_1E660A0E0);
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6583DB0, v0, 0);
}

uint64_t sub_1E6583DB0()
{
  __swift_project_boxed_opaque_existential_1((*(v0 + 24) + 112), *(*(v0 + 24) + 136));
  sub_1E65DDBB8();

  return MEMORY[0x1EEE6DFA0](sub_1E6583E44, 0, 0);
}

uint64_t sub_1E6583E44()
{
  v1 = v0[6];
  v2 = swift_task_alloc();
  v0[7] = v2;
  *(v2 + 16) = "BookmarkService/LiveBookmarkService.swift";
  *(v2 + 24) = 41;
  *(v2 + 32) = 2;
  *(v2 + 40) = 76;
  *(v2 + 48) = v1;
  v3 = swift_task_alloc();
  v0[8] = v3;
  *v3 = v0;
  v3[1] = sub_1E652302C;
  v4 = MEMORY[0x1E69E6530];

  return MEMORY[0x1EEE6DE38](v0 + 2, 0, 0, 0xD000000000000013, 0x80000001E6610AC0, sub_1E6588384, v2, v4);
}

uint64_t sub_1E6583F58(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AC80, &unk_1E660A0E0);
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6584024, v1, 0);
}

uint64_t sub_1E6584024()
{
  __swift_project_boxed_opaque_existential_1((*(v0 + 32) + 112), *(*(v0 + 32) + 136));
  sub_1E65DDBC8();

  return MEMORY[0x1EEE6DFA0](sub_1E65840C0, 0, 0);
}

uint64_t sub_1E65840C0()
{
  v1 = v0[7];
  v2 = swift_task_alloc();
  v0[8] = v2;
  *(v2 + 16) = "BookmarkService/LiveBookmarkService.swift";
  *(v2 + 24) = 41;
  *(v2 + 32) = 2;
  *(v2 + 40) = 80;
  *(v2 + 48) = v1;
  v3 = swift_task_alloc();
  v0[9] = v3;
  *v3 = v0;
  v3[1] = sub_1E6541C10;
  v4 = MEMORY[0x1E69E6530];

  return MEMORY[0x1EEE6DE38](v0 + 2, 0, 0, 0xD000000000000013, 0x80000001E6610AC0, sub_1E65880F4, v2, v4);
}

uint64_t sub_1E65841D4(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B678, &qword_1E660C9C8);
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E65842A0, v1, 0);
}

uint64_t sub_1E65842A0()
{
  __swift_project_boxed_opaque_existential_1((*(v0 + 32) + 112), *(*(v0 + 32) + 136));
  sub_1E65DDB58();

  return MEMORY[0x1EEE6DFA0](sub_1E658433C, 0, 0);
}

uint64_t sub_1E658433C()
{
  v1 = v0[7];
  v2 = swift_task_alloc();
  v0[8] = v2;
  *(v2 + 16) = "BookmarkService/LiveBookmarkService.swift";
  *(v2 + 24) = 41;
  *(v2 + 32) = 2;
  *(v2 + 40) = 84;
  *(v2 + 48) = v1;
  v3 = swift_task_alloc();
  v0[9] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0743D0, &qword_1E660C9D0);
  *v3 = v0;
  v3[1] = sub_1E6541C10;

  return MEMORY[0x1EEE6DE38](v0 + 2, 0, 0, 0xD000000000000013, 0x80000001E6610AC0, sub_1E6588380, v2, v4);
}

uint64_t sub_1E6584460(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a3;
  v4[11] = a4;
  v4[9] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();
  v6 = sub_1E65DAEB8();
  v4[14] = v6;
  v7 = *(v6 - 8);
  v4[15] = v7;
  v4[16] = *(v7 + 64);
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6584580, a4, 0);
}

void sub_1E6584580()
{
  v1 = *(v0 + 80);
  v4 = *(v1 + 56);
  v3 = v1 + 56;
  v2 = v4;
  v5 = -1;
  v6 = -1 << *(*(v0 + 80) + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & v2;
  v8 = (63 - v6) >> 6;
  v38 = *(v0 + 120);
  v33 = *(v0 + 80);

  v9 = 0;
  v31 = v8;
  v32 = v3;
  while (v7)
  {
LABEL_11:
    v15 = *(v38 + 16);
    v15(*(v0 + 144), *(v33 + 48) + *(v38 + 72) * (__clz(__rbit64(v7)) | (v9 << 6)), *(v0 + 112));
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    v16 = *(v0 + 136);
    v17 = *(v0 + 144);
    v18 = *(v0 + 104);
    v19 = *(v0 + 112);
    v34 = v19;
    v35 = v16;
    v36 = *(v0 + 88);
    v37 = *(v0 + 96);
    v20 = sub_1E65E60A8();
    v21 = *(v20 - 8);
    (*(v21 + 56))(v18, 1, 1, v20);
    v15(v16, v17, v19);
    v22 = (*(v38 + 80) + 40) & ~*(v38 + 80);
    v23 = swift_allocObject();
    v23[2] = 0;
    v24 = v23 + 2;
    v23[3] = 0;
    v23[4] = v36;
    (*(v38 + 32))(v23 + v22, v35, v34);
    sub_1E5DF4C84(v18, v37);
    LODWORD(v22) = (*(v21 + 48))(v37, 1, v20);

    v25 = *(v0 + 96);
    if (v22 == 1)
    {
      sub_1E5DF4CF4(*(v0 + 96));
      if (*v24)
      {
        goto LABEL_15;
      }
    }

    else
    {
      sub_1E65E6098();
      (*(v21 + 8))(v25, v20);
      if (*v24)
      {
LABEL_15:
        swift_getObjectType();
        swift_unknownObjectRetain();
        v26 = sub_1E65E5FC8();
        v28 = v27;
        swift_unknownObjectRelease();
        goto LABEL_18;
      }
    }

    v26 = 0;
    v28 = 0;
LABEL_18:
    v29 = **(v0 + 72);

    if (v28 | v26)
    {
      v10 = v0 + 16;
      *(v0 + 16) = 0;
      *(v0 + 24) = 0;
      *(v0 + 32) = v26;
      *(v0 + 40) = v28;
    }

    else
    {
      v10 = 0;
    }

    v7 &= v7 - 1;
    v11 = *(v0 + 144);
    v13 = *(v0 + 104);
    v12 = *(v0 + 112);
    *(v0 + 48) = 1;
    *(v0 + 56) = v10;
    *(v0 + 64) = v29;
    swift_task_create();

    sub_1E5DF4CF4(v13);
    (*(v38 + 8))(v11, v12);
    v8 = v31;
    v3 = v32;
  }

  while (1)
  {
    v14 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
      return;
    }

    if (v14 >= v8)
    {
      break;
    }

    v7 = *(v3 + 8 * v14);
    ++v9;
    if (v7)
    {
      v9 = v14;
      goto LABEL_11;
    }
  }

  v30 = *(v0 + 8);

  v30();
}

uint64_t sub_1E65849A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07B6E0, &unk_1E6603F10);
  v5[5] = v6;
  v5[6] = *(v6 - 8);
  v5[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6584A74, 0, 0);
}

uint64_t sub_1E6584A74()
{
  v1 = v0[7];
  __swift_project_boxed_opaque_existential_1((v0[3] + 112), *(v0[3] + 136));
  sub_1E65DDB18();
  v2 = swift_task_alloc();
  v0[8] = v2;
  *(v2 + 16) = "BookmarkService/LiveBookmarkService.swift";
  *(v2 + 24) = 41;
  *(v2 + 32) = 2;
  *(v2 + 40) = 91;
  *(v2 + 48) = v1;
  v3 = swift_task_alloc();
  v0[9] = v3;
  *v3 = v0;
  v3[1] = sub_1E6584BBC;
  v4 = v0[2];
  v5 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v4, 0, 0, 0xD000000000000013, 0x80000001E6610AC0, sub_1E6588388, v2, v5);
}

uint64_t sub_1E6584BBC()
{
  v2 = *v1;
  v2[10] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E5FB32D0, 0, 0);
  }

  else
  {
    (*(v2[6] + 8))(v2[7], v2[5]);

    v3 = v2[1];

    return v3();
  }
}

uint64_t sub_1E6584D40(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B678, &qword_1E660C9C8);
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6584E0C, v1, 0);
}

uint64_t sub_1E6584E0C()
{
  __swift_project_boxed_opaque_existential_1((*(v0 + 32) + 112), *(*(v0 + 32) + 136));
  sub_1E65DDB58();

  return MEMORY[0x1EEE6DFA0](sub_1E6584EA8, 0, 0);
}

uint64_t sub_1E6584EA8()
{
  v1 = v0[7];
  v2 = swift_task_alloc();
  v0[8] = v2;
  *(v2 + 16) = "BookmarkService/LiveBookmarkService.swift";
  *(v2 + 24) = 41;
  *(v2 + 32) = 2;
  *(v2 + 40) = 98;
  *(v2 + 48) = v1;
  v3 = swift_task_alloc();
  v0[9] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0743D0, &qword_1E660C9D0);
  *v3 = v0;
  v3[1] = sub_1E6584FCC;

  return MEMORY[0x1EEE6DE38](v0 + 2, 0, 0, 0xD000000000000013, 0x80000001E6610AC0, sub_1E6587E98, v2, v4);
}

uint64_t sub_1E6584FCC()
{
  v2 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {

    v3 = sub_1E6523658;
    v4 = 0;
  }

  else
  {
    v6 = v2[6];
    v5 = v2[7];
    v8 = v2[4];
    v7 = v2[5];
    v2[11] = v2[2];

    (*(v6 + 8))(v5, v7);
    v3 = sub_1E6585140;
    v4 = v8;
  }

  return MEMORY[0x1EEE6DFA0](v3, v4, 0);
}

uint64_t sub_1E6585140()
{
  v1 = v0[11];
  v2 = v0[4];
  v3 = sub_1E6587EB0();
  v4 = swift_task_alloc();
  v0[12] = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  v5 = swift_task_alloc();
  v0[13] = v5;
  *v5 = v0;
  v5[1] = sub_1E6585238;
  v6 = MEMORY[0x1E69E7CA8] + 8;
  v7 = MEMORY[0x1E69E7CA8] + 8;
  v8 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DD58](v5, v6, v7, v2, v3, &unk_1E660C9E0, v4, v8);
}

void sub_1E6585238()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    v3 = *(v2 + 32);

    MEMORY[0x1EEE6DFA0](sub_1E654138C, v3, 0);
  }
}

uint64_t sub_1E6585380(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a3;
  v4[11] = a4;
  v4[9] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();
  v6 = sub_1E65DAEB8();
  v4[14] = v6;
  v7 = *(v6 - 8);
  v4[15] = v7;
  v4[16] = *(v7 + 64);
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E65854A0, a4, 0);
}

void sub_1E65854A0()
{
  v1 = *(v0 + 80);
  v4 = *(v1 + 56);
  v3 = v1 + 56;
  v2 = v4;
  v5 = -1;
  v6 = -1 << *(*(v0 + 80) + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & v2;
  v8 = (63 - v6) >> 6;
  v38 = *(v0 + 120);
  v33 = *(v0 + 80);

  v9 = 0;
  v31 = v8;
  v32 = v3;
  while (v7)
  {
LABEL_11:
    v15 = *(v38 + 16);
    v15(*(v0 + 144), *(v33 + 48) + *(v38 + 72) * (__clz(__rbit64(v7)) | (v9 << 6)), *(v0 + 112));
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    v16 = *(v0 + 136);
    v17 = *(v0 + 144);
    v18 = *(v0 + 104);
    v19 = *(v0 + 112);
    v34 = v19;
    v35 = v16;
    v36 = *(v0 + 88);
    v37 = *(v0 + 96);
    v20 = sub_1E65E60A8();
    v21 = *(v20 - 8);
    (*(v21 + 56))(v18, 1, 1, v20);
    v15(v16, v17, v19);
    v22 = (*(v38 + 80) + 40) & ~*(v38 + 80);
    v23 = swift_allocObject();
    v23[2] = 0;
    v24 = v23 + 2;
    v23[3] = 0;
    v23[4] = v36;
    (*(v38 + 32))(v23 + v22, v35, v34);
    sub_1E5DF4C84(v18, v37);
    LODWORD(v22) = (*(v21 + 48))(v37, 1, v20);

    v25 = *(v0 + 96);
    if (v22 == 1)
    {
      sub_1E5DF4CF4(*(v0 + 96));
      if (*v24)
      {
        goto LABEL_15;
      }
    }

    else
    {
      sub_1E65E6098();
      (*(v21 + 8))(v25, v20);
      if (*v24)
      {
LABEL_15:
        swift_getObjectType();
        swift_unknownObjectRetain();
        v26 = sub_1E65E5FC8();
        v28 = v27;
        swift_unknownObjectRelease();
        goto LABEL_18;
      }
    }

    v26 = 0;
    v28 = 0;
LABEL_18:
    v29 = **(v0 + 72);

    if (v28 | v26)
    {
      v10 = v0 + 16;
      *(v0 + 16) = 0;
      *(v0 + 24) = 0;
      *(v0 + 32) = v26;
      *(v0 + 40) = v28;
    }

    else
    {
      v10 = 0;
    }

    v7 &= v7 - 1;
    v11 = *(v0 + 144);
    v13 = *(v0 + 104);
    v12 = *(v0 + 112);
    *(v0 + 48) = 1;
    *(v0 + 56) = v10;
    *(v0 + 64) = v29;
    swift_task_create();

    sub_1E5DF4CF4(v13);
    (*(v38 + 8))(v11, v12);
    v8 = v31;
    v3 = v32;
  }

  while (1)
  {
    v14 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
      return;
    }

    if (v14 >= v8)
    {
      break;
    }

    v7 = *(v3 + 8 * v14);
    ++v9;
    if (v7)
    {
      v9 = v14;
      goto LABEL_11;
    }
  }

  v30 = *(v0 + 8);

  v30();
}

uint64_t sub_1E65858C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07B6E0, &unk_1E6603F10);
  v5[5] = v6;
  v5[6] = *(v6 - 8);
  v5[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6585994, 0, 0);
}

uint64_t sub_1E6585994()
{
  v1 = v0[7];
  __swift_project_boxed_opaque_existential_1((v0[3] + 112), *(v0[3] + 136));
  sub_1E65DDB08();
  v2 = swift_task_alloc();
  v0[8] = v2;
  *(v2 + 16) = "BookmarkService/LiveBookmarkService.swift";
  *(v2 + 24) = 41;
  *(v2 + 32) = 2;
  *(v2 + 40) = 102;
  *(v2 + 48) = v1;
  v3 = swift_task_alloc();
  v0[9] = v3;
  *v3 = v0;
  v3[1] = sub_1E6585ADC;
  v4 = v0[2];
  v5 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v4, 0, 0, 0xD000000000000013, 0x80000001E6610AC0, sub_1E65880B0, v2, v5);
}

uint64_t sub_1E6585ADC()
{
  v2 = *v1;
  v2[10] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E658837C, 0, 0);
  }

  else
  {
    (*(v2[6] + 8))(v2[7], v2[5]);

    v3 = v2[1];

    return v3();
  }
}

uint64_t sub_1E6585C60(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E6585C80, 0, 0);
}

uint64_t sub_1E6585C80()
{
  sub_1E65DDDC8();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E6585CE4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E60C34A4;

  return sub_1E65820BC(a1);
}

uint64_t sub_1E6585D7C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E60C34A4;

  return sub_1E6582348(a1);
}

uint64_t sub_1E6585E14(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E60ABB70;

  return sub_1E65825D4(a1);
}

uint64_t sub_1E6585EAC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E60C34A4;

  return sub_1E6582860(a1);
}

uint64_t sub_1E6585F44(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E60C34A4;

  return sub_1E6582AEC(a1);
}

uint64_t sub_1E6585FDC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E60C34A4;

  return sub_1E6582D68(a1);
}

uint64_t sub_1E6586074(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E60C34A4;

  return sub_1E6582FE4(a1);
}

uint64_t sub_1E658610C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E5DFA78C;

  return sub_1E6583260(a1);
}

uint64_t sub_1E65861A4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E5DFE6BC;

  return sub_1E65834D8(a1);
}

uint64_t sub_1E658623C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E6586258, a2, 0);
}

uint64_t sub_1E6586258()
{
  swift_getObjectType();
  sub_1E65DDDD8();
  sub_1E65D8C08();
  sub_1E65DDE28();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E6586328()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E60C34A4;

  return sub_1E65837D4();
}

uint64_t sub_1E65863B8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E60C34A4;

  return sub_1E6583A58(a1);
}

uint64_t sub_1E6586450()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E60C34A4;

  return sub_1E6583CE4();
}

uint64_t sub_1E65864E0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E60C34A4;

  return sub_1E6583F58(a1);
}

uint64_t sub_1E6586578(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E60C34A4;

  return sub_1E65841D4(a1);
}

uint64_t sub_1E6586610(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E658662C, a2, 0);
}

uint64_t sub_1E658662C()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = sub_1E6587EB0();
  v4 = swift_task_alloc();
  v0[4] = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;
  v5 = swift_task_alloc();
  v0[5] = v5;
  *v5 = v0;
  v5[1] = sub_1E6586720;
  v6 = MEMORY[0x1E69E7CA8] + 8;
  v7 = MEMORY[0x1E69E7CA8] + 8;
  v8 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DD58](v5, v6, v7, v1, v3, &unk_1E660CA38, v4, v8);
}

void sub_1E6586720()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    v3 = *(v2 + 24);

    MEMORY[0x1EEE6DFA0](sub_1E5E1CF6C, v3, 0);
  }
}

uint64_t sub_1E658685C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E5DFE6BC;

  return sub_1E6584D40(a1);
}

uint64_t sub_1E65868F4(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E6586910, a2, 0);
}

uint64_t sub_1E6586910()
{
  swift_getObjectType();
  sub_1E65DDE58();
  sub_1E65D8D78();
  sub_1E65DDE28();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E65869E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = a4;
  v42 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B6A0, &qword_1E660CA20);
  v45 = *(v11 - 8);
  v44 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v36 - v12;
  v14 = sub_1E65E3B68();
  v43 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_1E5FB8174(0x65uLL);
  sub_1E65DE338();
  v17 = sub_1E65E3B48();
  v40 = sub_1E65E6338();
  v41 = v17;
  if (os_log_type_enabled(v17, v40))
  {
    v18 = swift_slowAlloc();
    v39 = a6;
    v19 = v18;
    v37 = swift_slowAlloc();
    v47 = v37;
    *v19 = 134218498;
    *(v19 + 4) = v46;
    *(v19 + 12) = 2080;
    v20 = sub_1E65E68B8();
    v38 = v8;
    v22 = sub_1E5DFD4B0(v20, v21, &v47);
    v36 = v14;
    v23 = v11;
    v24 = a2;
    v25 = a3;
    v26 = a5;
    v27 = v22;
    LOBYTE(v8) = v38;

    *(v19 + 14) = v27;
    a5 = v26;
    a3 = v25;
    a2 = v24;
    v11 = v23;
    *(v19 + 22) = 2048;
    *(v19 + 24) = a5;
    v28 = v41;
    _os_log_impl(&dword_1E5DE9000, v41, v40, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v19, 0x20u);
    v29 = v37;
    __swift_destroy_boxed_opaque_existential_1(v37);
    MEMORY[0x1E694F1C0](v29, -1, -1);
    MEMORY[0x1E694F1C0](v19, -1, -1);

    (*(v43 + 8))(v16, v36);
  }

  else
  {

    (*(v43 + 8))(v16, v14);
  }

  v30 = v45;
  (*(v45 + 16))(v13, v42, v11);
  v31 = (*(v30 + 80) + 56) & ~*(v30 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = v46;
  *(v32 + 24) = a2;
  *(v32 + 32) = a3;
  *(v32 + 40) = v8;
  *(v32 + 48) = a5;
  (*(v30 + 32))(v32 + v31, v13, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B690, &qword_1E660CA10);
  v33 = sub_1E65DACC8();
  v34 = swift_allocObject();
  *(v34 + 16) = sub_1E6588124;
  *(v34 + 24) = v32;

  v33(sub_1E5E20B18, v34);
}

uint64_t sub_1E6586DBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = a4;
  v42 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B688, &qword_1E660CA08);
  v45 = *(v11 - 8);
  v44 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v36 - v12;
  v14 = sub_1E65E3B68();
  v43 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_1E5FB8174(0x65uLL);
  sub_1E65DE338();
  v17 = sub_1E65E3B48();
  v40 = sub_1E65E6338();
  v41 = v17;
  if (os_log_type_enabled(v17, v40))
  {
    v18 = swift_slowAlloc();
    v39 = a6;
    v19 = v18;
    v37 = swift_slowAlloc();
    v47 = v37;
    *v19 = 134218498;
    *(v19 + 4) = v46;
    *(v19 + 12) = 2080;
    v20 = sub_1E65E68B8();
    v38 = v8;
    v22 = sub_1E5DFD4B0(v20, v21, &v47);
    v36 = v14;
    v23 = v11;
    v24 = a2;
    v25 = a3;
    v26 = a5;
    v27 = v22;
    LOBYTE(v8) = v38;

    *(v19 + 14) = v27;
    a5 = v26;
    a3 = v25;
    a2 = v24;
    v11 = v23;
    *(v19 + 22) = 2048;
    *(v19 + 24) = a5;
    v28 = v41;
    _os_log_impl(&dword_1E5DE9000, v41, v40, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v19, 0x20u);
    v29 = v37;
    __swift_destroy_boxed_opaque_existential_1(v37);
    MEMORY[0x1E694F1C0](v29, -1, -1);
    MEMORY[0x1E694F1C0](v19, -1, -1);

    (*(v43 + 8))(v16, v36);
  }

  else
  {

    (*(v43 + 8))(v16, v14);
  }

  v30 = v45;
  (*(v45 + 16))(v13, v42, v11);
  v31 = (*(v30 + 80) + 56) & ~*(v30 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = v46;
  *(v32 + 24) = a2;
  *(v32 + 32) = a3;
  *(v32 + 40) = v8;
  *(v32 + 48) = a5;
  (*(v30 + 32))(v32 + v31, v13, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B678, &qword_1E660C9C8);
  v33 = sub_1E65DACC8();
  v34 = swift_allocObject();
  *(v34 + 16) = sub_1E65880E0;
  *(v34 + 24) = v32;

  v33(sub_1E5E20B0C, v34);
}

uint64_t sub_1E6587198(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, uint64_t a7, uint64_t a8, uint64_t *a9, uint64_t *a10)
{
  v32 = a7;
  v31 = a6;
  v30[2] = a5;
  v33 = a2;
  v13 = a10;
  v34 = a9;
  v14 = sub_1E65E3B68();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E65DE338();
  v18 = sub_1E65E3B48();
  v19 = sub_1E65E6338();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v30[1] = a8;
    v21 = v20;
    v22 = swift_slowAlloc();
    v30[0] = a10;
    v23 = v22;
    v35 = v22;
    *v21 = 134218498;
    *(v21 + 4) = a3;
    *(v21 + 12) = 2080;
    v24 = sub_1E65E68B8();
    v26 = sub_1E5DFD4B0(v24, v25, &v35);

    *(v21 + 14) = v26;
    *(v21 + 22) = 2048;
    *(v21 + 24) = v32;
    _os_log_impl(&dword_1E5DE9000, v18, v19, "Finished P->A conversion: %ld:%s:%lu", v21, 0x20u);
    __swift_destroy_boxed_opaque_existential_1(v23);
    v27 = v23;
    v13 = v30[0];
    MEMORY[0x1E694F1C0](v27, -1, -1);
    MEMORY[0x1E694F1C0](v21, -1, -1);
  }

  (*(v15 + 8))(v17, v14);
  v35 = a1;
  if (v33)
  {
    v28 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(v34, v13);
    return sub_1E65E5FE8();
  }

  else
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(v34, v13);
    return sub_1E65E5FF8();
  }
}

uint64_t sub_1E65873F0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E5FEE4D4;

  return sub_1E6585CE4(a1);
}

uint64_t sub_1E6587488(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E5FEE4D4;

  return sub_1E6585D7C(a1);
}

uint64_t sub_1E6587520(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E5FE99E8;

  return sub_1E6585E14(a1);
}

uint64_t sub_1E65875B8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E5FEE4D4;

  return sub_1E6585EAC(a1);
}

uint64_t sub_1E6587650(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E5FEE4D4;

  return sub_1E6585F44(a1);
}

uint64_t sub_1E65876E8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E5FEE4D4;

  return sub_1E6585FDC(a1);
}

uint64_t sub_1E6587780(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E5FEE4D4;

  return sub_1E6586074(a1);
}

uint64_t sub_1E6587818(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E5DFE6BC;

  return sub_1E658610C(a1);
}

uint64_t sub_1E65878B0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E5DFE6BC;

  return sub_1E65861A4(a1);
}

uint64_t sub_1E6587948(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5DFA78C;

  return sub_1E658623C(a1, v1);
}

uint64_t sub_1E65879E4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E5FEE4D4;

  return sub_1E6586328();
}

uint64_t sub_1E6587A74(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E5FEE4D4;

  return sub_1E65863B8(a1);
}

uint64_t sub_1E6587B0C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E5FEE4D4;

  return sub_1E6586450();
}

uint64_t sub_1E6587B9C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E5FEE4D4;

  return sub_1E65864E0(a1);
}

uint64_t sub_1E6587C34(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E5FEE4D4;

  return sub_1E6586578(a1);
}

uint64_t sub_1E6587CCC(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5DFE6BC;

  return sub_1E6586610(a1, v1);
}

uint64_t sub_1E6587D64(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E5DFE6BC;

  return sub_1E658685C(a1);
}

uint64_t sub_1E6587DFC(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5DFE6BC;

  return sub_1E65868F4(a1, v1);
}

unint64_t sub_1E6587EB0()
{
  result = qword_1ED07B680;
  if (!qword_1ED07B680)
  {
    type metadata accessor for LiveBookmarkService();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED07B680);
  }

  return result;
}

uint64_t sub_1E6587F04(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1E5DFE6BC;

  return sub_1E6585380(a1, a2, v7, v6);
}

uint64_t sub_1E6587FB8(uint64_t a1)
{
  v4 = *(sub_1E65DAEB8() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1E5DFE6BC;

  return sub_1E65858C4(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_1E65881D0(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1E5DFA78C;

  return sub_1E6584460(a1, a2, v7, v6);
}

uint64_t sub_1E6588284(uint64_t a1)
{
  v4 = *(sub_1E65DAEB8() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1E5DFE6BC;

  return sub_1E65849A4(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_1E6588390(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = sub_1E65DADD8();
  v2[7] = v3;
  v2[8] = *(v3 - 8);
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E658845C, v1, 0);
}

void sub_1E658845C()
{
  v1 = v0[6];
  swift_beginAccess();
  v2 = *(*(v1 + 112) + 16);

  v36 = v2;
  if (v2)
  {
    v4 = 0;
    v5 = v0[8];
    v6 = v0[5];
    v7 = v6 + 56;
    v33 = (v5 + 32);
    v34 = MEMORY[0x1E69E7CC0];
    v35 = v3;
    while (v4 < *(v3 + 16))
    {
      v37 = (*(v5 + 80) + 32) & ~*(v5 + 80);
      v10 = *(v5 + 72);
      (*(v5 + 16))(v0[10], v3 + v37 + v10 * v4, v0[7]);
      v11 = sub_1E65DADA8();
      v13 = v12;
      if (*(v6 + 16) && (v14 = v11, sub_1E65E6D28(), sub_1E65E5D78(), v15 = sub_1E65E6D78(), v16 = -1 << *(v6 + 32), v17 = v15 & ~v16, ((*(v7 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) != 0))
      {
        v18 = ~v16;
        while (1)
        {
          v19 = (*(v6 + 48) + 16 * v17);
          v20 = *v19 == v14 && v19[1] == v13;
          if (v20 || (sub_1E65E6C18() & 1) != 0)
          {
            break;
          }

          v17 = (v17 + 1) & v18;
          if (((*(v7 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
          {
            goto LABEL_3;
          }
        }

        v22 = v0[9];
        v21 = v0[10];
        v23 = v0[7];

        v24 = v23;
        v25 = *v33;
        (*v33)(v22, v21, v24);
        v26 = v34;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1E658DFCC(0, *(v34 + 16) + 1, 1);
          v26 = v34;
        }

        v28 = *(v26 + 16);
        v27 = *(v26 + 24);
        if (v28 >= v27 >> 1)
        {
          sub_1E658DFCC((v27 > 1), v28 + 1, 1);
          v26 = v34;
        }

        v29 = v0[9];
        v30 = v0[7];
        *(v26 + 16) = v28 + 1;
        v34 = v26;
        v25(v26 + v37 + v28 * v10, v29, v30);
      }

      else
      {
LABEL_3:
        v8 = v0[10];
        v9 = v0[7];

        (*(v5 + 8))(v8, v9);
      }

      ++v4;
      v3 = v35;
      if (v4 == v36)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
  }

  else
  {
    v34 = MEMORY[0x1E69E7CC0];
LABEL_22:

    v31 = sub_1E658ECEC(v34);

    v32 = v0[1];

    v32(v31);
  }
}

uint64_t sub_1E6588774(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v3 = sub_1E65DADD8();
  v2[10] = v3;
  v2[11] = *(v3 - 8);
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6588840, v1, 0);
}

void sub_1E6588840()
{
  v1 = *(v0 + 72);
  swift_beginAccess();
  v2 = *(*(v1 + 112) + 16);

  v33 = v2;
  if (v2)
  {
    v4 = 0;
    v5 = *(v0 + 88);
    v6 = *(v0 + 64);
    v36 = v6 + 56;
    v30 = (v5 + 32);
    v31 = MEMORY[0x1E69E7CC0];
    v32 = v3;
    while (v4 < *(v3 + 16))
    {
      v35 = (*(v5 + 80) + 32) & ~*(v5 + 80);
      v34 = *(v5 + 72);
      (*(v5 + 16))(*(v0 + 104), v3 + v35 + v34 * v4, *(v0 + 80));
      v7 = sub_1E65DAD78();
      v9 = v8;
      *(v0 + 40) = v7;
      *(v0 + 48) = v8;
      v11 = v10 & 1;
      *(v0 + 56) = v10 & 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0752A8, &unk_1E660CC10);
      sub_1E65D7FB8();
      sub_1E5FEE4CC(v7, v9, v11);
      if (*(v0 + 57) != 9 && *(v6 + 16) && (sub_1E65E6D28(), sub_1E65D94E8(), sub_1E65E5D78(), , v12 = sub_1E65E6D78(), v13 = -1 << *(v6 + 32), v14 = v12 & ~v13, ((*(v36 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) != 0))
      {
        v15 = ~v13;
        while (1)
        {
          v16 = sub_1E65D94E8();
          v18 = v17;
          if (v16 == sub_1E65D94E8() && v18 == v19)
          {
            break;
          }

          v21 = sub_1E65E6C18();

          if (v21)
          {
            goto LABEL_18;
          }

          v14 = (v14 + 1) & v15;
          if (((*(v36 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
          {
            goto LABEL_3;
          }
        }

LABEL_18:
        v22 = *v30;
        (*v30)(*(v0 + 96), *(v0 + 104), *(v0 + 80));
        v23 = v31;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1E658DFCC(0, *(v31 + 16) + 1, 1);
          v23 = v31;
        }

        v25 = *(v23 + 16);
        v24 = *(v23 + 24);
        if (v25 >= v24 >> 1)
        {
          sub_1E658DFCC((v24 > 1), v25 + 1, 1);
          v23 = v31;
        }

        v26 = *(v0 + 96);
        v27 = *(v0 + 80);
        *(v23 + 16) = v25 + 1;
        v31 = v23;
        v22(v23 + v35 + v25 * v34, v26, v27);
      }

      else
      {
LABEL_3:
        (*(v5 + 8))(*(v0 + 104), *(v0 + 80));
      }

      ++v4;
      v3 = v32;
      if (v4 == v33)
      {
        goto LABEL_24;
      }
    }

    __break(1u);
  }

  else
  {
    v31 = MEMORY[0x1E69E7CC0];
LABEL_24:

    v28 = sub_1E658ECEC(v31);

    v29 = *(v0 + 8);

    v29(v28);
  }
}

uint64_t sub_1E6588BE0(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = sub_1E65DADD8();
  v2[7] = v3;
  v2[8] = *(v3 - 8);
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6588CAC, v1, 0);
}

void sub_1E6588CAC()
{
  v1 = v0[8];
  v2 = v0[6];
  v3 = v0[5];
  v6 = *(v3 + 56);
  v5 = v3 + 56;
  v4 = v6;
  v7 = -1;
  v8 = -1 << *(v0[5] + 32);
  if (-v8 < 64)
  {
    v7 = ~(-1 << -v8);
  }

  v9 = v7 & v4;
  v10 = (63 - v8) >> 6;
  v24 = v0[5];

  v11 = 0;
  v25 = v2;
  v26 = v1;
  v23 = v5;
  if (v9)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
      return;
    }

    if (v12 >= v10)
    {
      break;
    }

    v9 = *(v5 + 8 * v12);
    ++v11;
    if (v9)
    {
      v11 = v12;
      do
      {
LABEL_8:
        v13 = *(v1 + 72);
        v14 = *(v1 + 16);
        v14(v0[10], *(v24 + 48) + v13 * (__clz(__rbit64(v9)) | (v11 << 6)), v0[7]);
        if ((swift_task_isCurrentExecutor() & 1) == 0)
        {
          swift_task_reportUnexpectedExecutor();
        }

        v14(v0[9], v0[10], v0[7]);
        swift_beginAccess();
        v15 = *(v2 + 112);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v2 + 112) = v15;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v15 = sub_1E658E35C(0, v15[2] + 1, 1, v15);
          *(v2 + 112) = v15;
        }

        v18 = v15[2];
        v17 = v15[3];
        if (v18 >= v17 >> 1)
        {
          v15 = sub_1E658E35C((v17 > 1), v18 + 1, 1, v15);
        }

        v9 &= v9 - 1;
        v19 = v0[9];
        v20 = v0[10];
        v21 = v0[7];
        v15[2] = v18 + 1;
        v1 = v26;
        (*(v26 + 32))(v15 + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + v18 * v13, v19, v21);
        v2 = v25;
        *(v25 + 112) = v15;
        swift_endAccess();
        (*(v26 + 8))(v20, v21);
        v5 = v23;
      }

      while (v9);
    }
  }

  v22 = v0[1];

  v22();
}

uint64_t sub_1E6588F44(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = sub_1E65DADD8();
  v2[7] = v3;
  v2[8] = *(v3 - 8);
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E658901C, v1, 0);
}

void sub_1E658901C()
{
  v1 = v0[6];
  swift_beginAccess();
  v24 = v1;
  v2 = *(v1 + 112);
  v3 = *(v2 + 16);

  v27 = v3;
  if (v3)
  {
    v4 = 0;
    v5 = v0[8];
    v33 = v0[5];
    v32 = v33 + 56;
    v6 = (v5 + 8);
    v7 = MEMORY[0x1E69E7CC0];
    v25 = v5;
    v26 = v2;
    v28 = (v5 + 32);
    while (v4 < *(v2 + 16))
    {
      v29 = (*(v25 + 80) + 32) & ~*(v25 + 80);
      v30 = v7;
      v8 = *(v25 + 72);
      v31 = v4;
      v9 = *(v25 + 16);
      v9(v0[11], v2 + v29 + v8 * v4, v0[7]);
      if (*(v33 + 16) && (sub_1E658F778(&qword_1ED071FE0, MEMORY[0x1E69CD2D8], MEMORY[0x1E69CD2E8]), v10 = sub_1E65E5B38(), v11 = -1 << *(v33 + 32), v12 = v10 & ~v11, ((*(v32 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0))
      {
        v13 = ~v11;
        while (1)
        {
          v14 = v0[10];
          v15 = v0[7];
          v9(v14, *(v33 + 48) + v12 * v8, v15);
          sub_1E658F778(&qword_1EE2D6FB0, MEMORY[0x1E69CD2D8], MEMORY[0x1E69CD2F0]);
          v16 = sub_1E65E5B98();
          v17 = *v6;
          (*v6)(v14, v15);
          if (v16)
          {
            break;
          }

          v12 = (v12 + 1) & v13;
          if (((*(v32 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
          {
            goto LABEL_11;
          }
        }

        v17(v0[11], v0[7]);
        v7 = v30;
      }

      else
      {
LABEL_11:
        v18 = *v28;
        (*v28)(v0[9], v0[11], v0[7]);
        v7 = v30;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1E658DFCC(0, *(v30 + 16) + 1, 1);
          v7 = v30;
        }

        v20 = *(v7 + 16);
        v19 = *(v7 + 24);
        if (v20 >= v19 >> 1)
        {
          sub_1E658DFCC((v19 > 1), v20 + 1, 1);
          v7 = v30;
        }

        v21 = v0[9];
        v22 = v0[7];
        *(v7 + 16) = v20 + 1;
        v18(v7 + v29 + v20 * v8, v21, v22);
      }

      v4 = v31 + 1;
      v2 = v26;
      if (v31 + 1 == v27)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
LABEL_17:

    *(v24 + 112) = v7;

    v23 = v0[1];

    v23();
  }
}

uint64_t sub_1E65893B0(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0752D8, &qword_1E660CC30);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v51 = v36 - v4;
  v56 = sub_1E65DADD8();
  v5 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v50 = v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_1E65DAEB8();
  v7 = *(v49 - 8);
  v8 = MEMORY[0x1EEE9AC00](v49);
  v48 = v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v36 - v10;
  v12 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v12)
  {
    v36[1] = v1;
    v58 = MEMORY[0x1E69E7CC0];
    sub_1E658E010(0, v12, 0);
    v57 = v58;
    v14 = a1 + 56;
    result = sub_1E65E6748();
    v15 = result;
    v16 = 0;
    v44 = (v7 + 8);
    v45 = v5 + 16;
    v46 = v7;
    v47 = v5;
    v42 = v7 + 32;
    v43 = v5 + 8;
    v37 = a1 + 64;
    v38 = v12;
    v39 = a1 + 56;
    v40 = a1;
    v41 = v11;
    while ((v15 & 0x8000000000000000) == 0 && v15 < 1 << *(a1 + 32))
    {
      if ((*(v14 + 8 * (v15 >> 6)) & (1 << v15)) == 0)
      {
        goto LABEL_22;
      }

      v54 = 1 << v15;
      v55 = v15 >> 6;
      v18 = *(a1 + 36);
      v52 = v16;
      v53 = v18;
      v19 = v47;
      v20 = v50;
      (*(v47 + 16))(v50, *(a1 + 48) + *(v47 + 72) * v15, v56);
      v21 = v48;
      sub_1E65DAEA8();
      sub_1E65DADA8();
      v22 = v51;
      sub_1E65DAD88();
      v23 = sub_1E65D76A8();
      (*(*(v23 - 8) + 56))(v22, 0, 1, v23);
      sub_1E65DAE98();

      sub_1E62E3040(v22);
      v24 = v49;
      (*v44)(v21, v49);
      (*(v19 + 8))(v20, v56);
      v25 = v57;
      v58 = v57;
      v27 = *(v57 + 16);
      v26 = *(v57 + 24);
      if (v27 >= v26 >> 1)
      {
        sub_1E658E010((v26 > 1), v27 + 1, 1);
        v25 = v58;
      }

      *(v25 + 16) = v27 + 1;
      v28 = (*(v46 + 80) + 32) & ~*(v46 + 80);
      v57 = v25;
      result = (*(v46 + 32))(v25 + v28 + *(v46 + 72) * v27, v41, v24);
      a1 = v40;
      v17 = 1 << *(v40 + 32);
      if (v15 >= v17)
      {
        goto LABEL_23;
      }

      v14 = v39;
      v29 = *(v39 + 8 * v55);
      if ((v29 & v54) == 0)
      {
        goto LABEL_24;
      }

      if (v53 != *(v40 + 36))
      {
        goto LABEL_25;
      }

      v30 = v29 & (-2 << (v15 & 0x3F));
      if (v30)
      {
        v17 = __clz(__rbit64(v30)) | v15 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v31 = v55 << 6;
        v32 = v55 + 1;
        v33 = (v37 + 8 * v55);
        while (v32 < (v17 + 63) >> 6)
        {
          v35 = *v33++;
          v34 = v35;
          v31 += 64;
          ++v32;
          if (v35)
          {
            result = sub_1E5F87098(v15, v53, 0);
            v17 = __clz(__rbit64(v34)) + v31;
            goto LABEL_4;
          }
        }

        result = sub_1E5F87098(v15, v53, 0);
      }

LABEL_4:
      v16 = v52 + 1;
      v15 = v17;
      if (v52 + 1 == v38)
      {
        return v57;
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
  }

  return result;
}

uint64_t sub_1E65898A0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0752D8, &qword_1E660CC30);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v22 - v1;
  v3 = sub_1E65DADD8();
  v4 = *(v3 - 8);
  v5 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_defaultActor_initialize();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073228, &qword_1E65ED080);
  v8 = *(v4 + 72);
  v9 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v25 = 8 * v8;
  v10 = swift_allocObject();
  v26 = v10;
  *(v10 + 16) = xmmword_1E660CA60;
  v11 = v10 + v9;
  sub_1E65DADC8();
  sub_1E658C184(0.0, 10000.0);
  sub_1E65D7538();
  v12 = sub_1E65D76A8();
  v13 = *(v12 - 8);
  v14 = *(v13 + 56);
  v15 = v13 + 56;
  v14(v2, 0, 1, v12);
  v23 = v14;
  v28 = v11;
  sub_1E65DADB8();
  sub_1E62E3040(v2);
  v16 = *(v5 + 8);
  v16(v7, v3);
  sub_1E65DADC8();
  sub_1E658C184(0.0, 10000.0);
  sub_1E65D7538();
  v22 = v12;
  v14(v2, 0, 1, v12);
  v30 = v8;
  sub_1E65DADB8();
  sub_1E62E3040(v2);
  v29 = v5 + 8;
  v16(v7, v3);
  sub_1E65DADC8();
  sub_1E658C184(0.0, 10000.0);
  sub_1E65D7538();
  v24 = v15;
  v17 = v23;
  v23(v2, 0, 1, v12);
  sub_1E65DADB8();
  sub_1E62E3040(v2);
  v31 = v3;
  v16(v7, v3);
  sub_1E65DADC8();
  sub_1E658C184(0.0, 10000.0);
  sub_1E65D7538();
  v18 = v22;
  v17(v2, 0, 1, v22);
  sub_1E65DADB8();
  sub_1E62E3040(v2);
  v16(v7, v31);
  sub_1E65DADC8();
  sub_1E658C184(0.0, 10000.0);
  sub_1E65D7538();
  v17(v2, 0, 1, v18);
  sub_1E65DADB8();
  sub_1E62E3040(v2);
  v19 = v31;
  v16(v7, v31);
  sub_1E65DADC8();
  sub_1E658C184(0.0, 10000.0);
  sub_1E65D7538();
  v17(v2, 0, 1, v18);
  sub_1E65DADB8();
  sub_1E62E3040(v2);
  v16(v7, v19);
  sub_1E65DADC8();
  sub_1E658C184(0.0, 10000.0);
  sub_1E65D7538();
  v17(v2, 0, 1, v18);
  sub_1E65DADB8();
  sub_1E62E3040(v2);
  v20 = v31;
  v16(v7, v31);
  sub_1E65DADC8();
  sub_1E658C184(0.0, 10000.0);
  sub_1E65D7538();
  v17(v2, 0, 1, v18);
  sub_1E65DADB8();
  sub_1E62E3040(v2);
  v16(v7, v20);
  result = v27;
  *(v27 + 112) = v26;
  return result;
}

uint64_t static BookmarkService.simulator()@<X0>(void *a1@<X8>)
{
  type metadata accessor for SimulatorBookmarkService();
  v2 = swift_allocObject();
  sub_1E65898A0();
  *a1 = &unk_1E660CA78;
  a1[1] = v2;
  a1[2] = &unk_1E660CA88;
  a1[3] = v2;
  a1[4] = &unk_1E660CA98;
  a1[5] = v2;
  a1[6] = &unk_1E660CAA8;
  a1[7] = v2;
  a1[8] = &unk_1E660CAB8;
  a1[9] = v2;
  a1[10] = &unk_1E660CAC8;
  a1[11] = v2;
  a1[12] = &unk_1E660CAD8;
  a1[13] = v2;
  a1[14] = &unk_1E660CAE8;
  a1[15] = v2;
  a1[16] = &unk_1E660CAF8;
  a1[17] = v2;
  a1[18] = &unk_1E660CB08;
  a1[19] = v2;
  a1[20] = &unk_1E660CB18;
  a1[21] = v2;
  a1[22] = &unk_1E660CB28;
  a1[23] = v2;
  a1[24] = &unk_1E660CB38;
  a1[25] = v2;
  a1[26] = &unk_1E660CB48;
  a1[27] = v2;
  a1[28] = &unk_1E660CB58;
  a1[29] = v2;
  a1[30] = &unk_1E660CB68;
  a1[31] = v2;
  a1[32] = &unk_1E660CB78;
  a1[33] = v2;
  a1[34] = &unk_1E660CB88;
  a1[35] = v2;
  return swift_retain_n();
}

uint64_t sub_1E658A054(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E60C34A4;

  return sub_1E6588390(a1);
}

uint64_t sub_1E658A0EC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E5FEE4D4;

  return sub_1E658A054(a1);
}

uint64_t sub_1E658A184(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E658A1A0, a2, 0);
}

uint64_t sub_1E658A1A0()
{
  v7 = v0;
  v1 = v0[2];
  v2 = v0[3];
  v6 = MEMORY[0x1E69E7CC0];

  sub_1E658E8F8(v1, &v6, v2);

  v3 = sub_1E658ECEC(v6);

  v4 = v0[1];

  return v4(v3);
}

uint64_t sub_1E658A254(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5FEE4D4;

  return sub_1E658A184(a1, v1);
}

uint64_t sub_1E658A2EC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E5FE99E8;

  return sub_1E6539828();
}

uint64_t sub_1E658A384(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E60ABB70;

  return sub_1E6588774(a1);
}

uint64_t sub_1E658A41C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E5FEE4D4;

  return sub_1E658A384(a1);
}

uint64_t sub_1E658A4B4(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E658A4D0, a2, 0);
}

uint64_t sub_1E658A4D0()
{
  v8 = v0;
  v1 = v0[2];
  v2 = v0[3];
  v7 = MEMORY[0x1E69E7CC0];

  sub_1E658E8F8(v1, &v7, v2);

  v3 = sub_1E658ECEC(v7);

  v4 = *(v3 + 16);

  v5 = v0[1];

  return v5(v4);
}

uint64_t sub_1E658A590(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5FEE4D4;

  return sub_1E658A4B4(a1, v1);
}

uint64_t sub_1E658A644()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E5FEE4D4;

  return sub_1E658A628();
}

uint64_t sub_1E658A6DC(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a2;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_1E658A778;

  return sub_1E6588774(a1);
}

uint64_t sub_1E658A778(uint64_t a1)
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
    v8 = *(v4 + 16);
    *(v4 + 32) = a1;

    return MEMORY[0x1EEE6DFA0](sub_1E658A8C4, v8, 0);
  }
}

uint64_t sub_1E658A8C4()
{
  v1 = *(*(v0 + 32) + 16);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1E658A930(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5FEE4D4;

  return sub_1E658A6DC(a1, v1);
}

uint64_t sub_1E658A9C8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E5DFA78C;

  return sub_1E6588BE0(a1);
}

uint64_t sub_1E658AA60(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E5DFA78C;

  return sub_1E658A9C8(a1);
}

uint64_t sub_1E658AAF8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E5DFE6BC;

  return sub_1E6588F44(a1);
}

uint64_t sub_1E658AB90(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E5DFE6BC;

  return sub_1E658AAF8(a1);
}

uint64_t sub_1E658AC28(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B6C0, &qword_1E660CC48);
  v2[3] = v4;
  v2[4] = *(v4 - 8);
  v2[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E658ACF8, a2, 0);
}

uint64_t sub_1E658ACF8()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  sub_1E65D8C08();
  (*(v2 + 104))(v1, *MEMORY[0x1E69E8650], v3);
  sub_1E65E6128();

  v4 = v0[1];

  return v4();
}

uint64_t sub_1E658ADCC(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5DFA78C;

  return sub_1E658AC28(a1, v1);
}

uint64_t sub_1E658AE88()
{
  v1 = sub_1E5F9B84C(&unk_1F5FCB528);
  *(v0 + 24) = v1;
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  *v2 = v0;
  v2[1] = sub_1E658AF30;

  return sub_1E6588774(v1);
}

uint64_t sub_1E658AF30(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 40) = v1;

  if (v1)
  {
    v5 = *(v4 + 16);
    v6 = sub_1E658F7C8;
  }

  else
  {
    v7 = *(v4 + 16);

    *(v4 + 48) = a1;
    v6 = sub_1E658F7C4;
    v5 = v7;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1E658B06C()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1E5FEE4D4;

  return sub_1E658AE68(v0);
}

uint64_t sub_1E658B118()
{
  v1 = sub_1E5F9B84C(&unk_1F5FCB550);
  *(v0 + 24) = v1;
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  *v2 = v0;
  v2[1] = sub_1E658B1C0;

  return sub_1E6588774(v1);
}

uint64_t sub_1E658B1C0(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 40) = v1;

  if (v1)
  {
    v5 = *(v4 + 16);
    v6 = sub_1E658B390;
  }

  else
  {
    v7 = *(v4 + 16);

    *(v4 + 48) = a1;
    v6 = sub_1E658B2FC;
    v5 = v7;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1E658B2FC()
{
  v1 = sub_1E65893B0(*(v0 + 48));

  v2 = sub_1E658EE88(v1);

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_1E658B390()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E658B3F4(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5FEE4D4;

  return sub_1E658B0FC(a1, v1);
}

uint64_t sub_1E658B4AC()
{
  v1 = sub_1E5F9B84C(&unk_1F5FCB578);
  *(v0 + 24) = v1;
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  *v2 = v0;
  v2[1] = sub_1E658B554;

  return sub_1E6588774(v1);
}

uint64_t sub_1E658B554(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 40) = v1;

  if (v1)
  {
    v5 = *(v4 + 16);
    v6 = sub_1E658F7C8;
  }

  else
  {
    v7 = *(v4 + 16);

    *(v4 + 48) = a1;
    v6 = sub_1E658F7C0;
    v5 = v7;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1E658B690()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1E5FEE4D4;

  return sub_1E658B48C(v0);
}

uint64_t sub_1E658B73C()
{
  v1 = sub_1E5F9B84C(&unk_1F5FCB5A0);
  *(v0 + 24) = v1;
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  *v2 = v0;
  v2[1] = sub_1E658B7E4;

  return sub_1E6588774(v1);
}

uint64_t sub_1E658B7E4(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 40) = v1;

  if (v1)
  {
    v5 = *(v4 + 16);
    v6 = sub_1E658F7C8;
  }

  else
  {
    v7 = *(v4 + 16);

    *(v4 + 48) = a1;
    v6 = sub_1E658B920;
    v5 = v7;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1E658B920()
{
  v1 = sub_1E65893B0(*(v0 + 48));

  v2 = sub_1E658EE88(v1);

  v3 = *(v2 + 16);

  v4 = *(v0 + 8);

  return v4(v3);
}

uint64_t sub_1E658B9C0(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5FEE4D4;

  return sub_1E658B720(a1, v1);
}

uint64_t sub_1E658BA58(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E658BA74, a2, 0);
}

uint64_t sub_1E658BA74()
{
  v1 = sub_1E5F9B84C(&unk_1F5FCB5C8);
  *(v0 + 32) = v1;
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *v2 = v0;
  v2[1] = sub_1E658BB1C;

  return sub_1E6588774(v1);
}

uint64_t sub_1E658BB1C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 48) = v1;

  if (v1)
  {
    v5 = *(v4 + 24);
    v6 = sub_1E658BD18;
  }

  else
  {
    v7 = *(v4 + 24);

    *(v4 + 56) = a1;
    v6 = sub_1E658BC58;
    v5 = v7;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1E658BC58()
{
  v1 = v0[2];
  v2 = sub_1E65893B0(v0[7]);

  v3 = sub_1E658EE88(v2);

  v4 = sub_1E658F328(v3, v1);

  v5 = v0[1];

  return v5(v4);
}

uint64_t sub_1E658BD18()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E658BD7C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5FEE4D4;

  return sub_1E658BA58(a1, v1);
}

uint64_t sub_1E658BE14()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E5DFE6BC;

  return sub_1E5E1CF6C();
}

uint64_t sub_1E658BEAC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E5DFE6BC;

  return sub_1E5E1CF6C();
}

uint64_t sub_1E658BF44(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B6A8, &qword_1E660CC20);
  v2[3] = v4;
  v2[4] = *(v4 - 8);
  v2[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E658C014, a2, 0);
}

uint64_t sub_1E658C014()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  sub_1E65D8D78();
  (*(v2 + 104))(v1, *MEMORY[0x1E69E8650], v3);
  sub_1E65E6128();

  v4 = v0[1];

  return v4();
}

uint64_t sub_1E658C0E8(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5DFE6BC;

  return sub_1E658BF44(a1, v1);
}

uint64_t sub_1E658C184(double a1, double a2)
{
  if (a1 == a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  v4 = a2 - a1;
  if (COERCE__INT64(fabs(a2 - a1)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v6 = 0;
  result = MEMORY[0x1E694F1E0](&v6, 8);
  if (v4 * vcvtd_n_f64_u64(v6 & 0x1FFFFFFFFFFFFFLL, 0x35uLL) + a1 == a2)
  {
    return sub_1E658C184(a1, a2);
  }

  return result;
}

unint64_t sub_1E658C228(uint64_t a1)
{
  sub_1E65E6D28();
  sub_1E65D89A8();
  sub_1E65E5D78();

  v2 = sub_1E65E6D78();

  return sub_1E658C2B0(a1, v2);
}

unint64_t sub_1E658C2B0(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_1E65D89A8();
      v8 = v7;
      if (v6 == sub_1E65D89A8() && v8 == v9)
      {
        break;
      }

      v11 = sub_1E65E6C18();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

void sub_1E658C3B4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    goto LABEL_14;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_10;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073228, &qword_1E65ED080);
      v7 = *(sub_1E65DADD8() - 8);
      v8 = *(v7 + 72);
      v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      if (!v8)
      {
LABEL_15:
        __break(1u);
LABEL_16:
        __break(1u);
        return;
      }

      if (v11 - v9 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_16;
      }

      v10[2] = v5;
      v10[3] = 2 * ((v11 - v9) / v8);
      if (v4 != a3)
      {
LABEL_10:
        sub_1E65DADD8();
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }
}

uint64_t sub_1E658C554(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_1E65DADD8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_1E658F778(&qword_1ED071FE0, MEMORY[0x1E69CD2D8], MEMORY[0x1E69CD2E8]);
  v33 = a2;
  v11 = sub_1E65E5B38();
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
      sub_1E658F778(&qword_1EE2D6FB0, MEMORY[0x1E69CD2D8], MEMORY[0x1E69CD2F0]);
      v21 = sub_1E65E5B98();
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
    sub_1E658D1CC(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_1E658C834(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_1E65DAEB8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_1E658F778(&qword_1ED076258, MEMORY[0x1E69CD370], MEMORY[0x1E69CD380]);
  v33 = a2;
  v11 = sub_1E65E5B38();
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
      sub_1E658F778(&qword_1EE2D6FA8, MEMORY[0x1E69CD370], MEMORY[0x1E69CD388]);
      v21 = sub_1E65E5B98();
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
    sub_1E658D494(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_1E658CB14(uint64_t a1)
{
  v2 = v1;
  v36 = sub_1E65DADD8();
  v3 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071FD8, &qword_1E65EA458);
  result = sub_1E65E6868();
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
      sub_1E658F778(&qword_1ED071FE0, MEMORY[0x1E69CD2D8], MEMORY[0x1E69CD2E8]);
      result = sub_1E65E5B38();
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

uint64_t sub_1E658CE70(uint64_t a1)
{
  v2 = v1;
  v36 = sub_1E65DAEB8();
  v3 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B6B0, &qword_1E660CC28);
  result = sub_1E65E6868();
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
      sub_1E658F778(&qword_1ED076258, MEMORY[0x1E69CD370], MEMORY[0x1E69CD380]);
      result = sub_1E65E5B38();
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

uint64_t sub_1E658D1CC(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = sub_1E65DADD8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
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
    sub_1E658CB14(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      sub_1E658D75C(MEMORY[0x1E69CD2D8], &qword_1ED071FD8, &qword_1E65EA458);
      goto LABEL_12;
    }

    sub_1E658D994(v10 + 1);
  }

  v12 = *v3;
  sub_1E658F778(&qword_1ED071FE0, MEMORY[0x1E69CD2D8], MEMORY[0x1E69CD2E8]);
  v13 = sub_1E65E5B38();
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
      sub_1E658F778(&qword_1EE2D6FB0, MEMORY[0x1E69CD2D8], MEMORY[0x1E69CD2F0]);
      v21 = sub_1E65E5B98();
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
  result = sub_1E65E6C58();
  __break(1u);
  return result;
}

uint64_t sub_1E658D494(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = sub_1E65DAEB8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
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
    sub_1E658CE70(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      sub_1E658D75C(MEMORY[0x1E69CD370], &qword_1ED07B6B0, &qword_1E660CC28);
      goto LABEL_12;
    }

    sub_1E658DCB0(v10 + 1);
  }

  v12 = *v3;
  sub_1E658F778(&qword_1ED076258, MEMORY[0x1E69CD370], MEMORY[0x1E69CD380]);
  v13 = sub_1E65E5B38();
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
      sub_1E658F778(&qword_1EE2D6FA8, MEMORY[0x1E69CD370], MEMORY[0x1E69CD388]);
      v21 = sub_1E65E5B98();
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
  result = sub_1E65E6C58();
  __break(1u);
  return result;
}

void *sub_1E658D75C(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  v6 = v3;
  v7 = a1(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v26 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v11 = *v3;
  v12 = sub_1E65E6858();
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

uint64_t sub_1E658D994(uint64_t a1)
{
  v2 = v1;
  v33 = sub_1E65DADD8();
  v3 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071FD8, &qword_1E65EA458);
  v7 = sub_1E65E6868();
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
      sub_1E658F778(&qword_1ED071FE0, MEMORY[0x1E69CD2D8], MEMORY[0x1E69CD2E8]);
      result = sub_1E65E5B38();
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

uint64_t sub_1E658DCB0(uint64_t a1)
{
  v2 = v1;
  v33 = sub_1E65DAEB8();
  v3 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B6B0, &qword_1E660CC28);
  v7 = sub_1E65E6868();
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
      sub_1E658F778(&qword_1ED076258, MEMORY[0x1E69CD370], MEMORY[0x1E69CD380]);
      result = sub_1E65E5B38();
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

void *sub_1E658DFCC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1E658E054(a1, a2, a3, *v3, &qword_1ED073228, &qword_1E65ED080, MEMORY[0x1E69CD2D8]);
  *v3 = result;
  return result;
}

void *sub_1E658E010(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1E658E054(a1, a2, a3, *v3, &qword_1ED07B6B8, &qword_1E660CC38, MEMORY[0x1E69CD370]);
  *v3 = result;
  return result;
}

void *sub_1E658E054(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t sub_1E658E230(uint64_t result)
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
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = sub_1E658E35C(isUniquelyReferenced_nonNull_native, v12, 1, v3);
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
  v8 = (v3[3] >> 1) - v3[2];
  result = sub_1E65DADD8();
  if (v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = v3[2];
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    v3[2] = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_1E658E35C(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073228, &qword_1E65ED080);
  v10 = *(sub_1E65DADD8() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_1E65DADD8() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

unint64_t *sub_1E658E534(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = sub_1E658F024(v7, a2, a3, a4);
    swift_bridgeObjectRelease_n();

    return v8;
  }

  return result;
}

uint64_t sub_1E658E5D0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = sub_1E65DAEB8();
  v8 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v34 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x1E69E7CD0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B6B0, &qword_1E660CC28);
  result = sub_1E65E6888();
  v10 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  v30 = (v8 + 32);
  v31 = v8 + 16;
  v29 = a4;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v32 = (v12 - 1) & v12;
LABEL_16:
    v18 = *(a4 + 48);
    v33 = *(v8 + 72);
    (*(v8 + 16))(v34, v18 + v33 * (v15 | (v13 << 6)), v35);
    sub_1E658F778(&qword_1ED076258, MEMORY[0x1E69CD370], MEMORY[0x1E69CD380]);
    result = sub_1E65E5B38();
    v19 = -1 << *(v10 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v14 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v14 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v14 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v14 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    result = (*v30)(*(v10 + 48) + v22 * v33, v34, v35);
    ++*(v10 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v29;
    v12 = v32;
    if (!a3)
    {
LABEL_28:

      return v10;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_28;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v32 = (v17 - 1) & v17;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

unint64_t sub_1E658E8F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a1 + 56;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 56);

  result = swift_beginAccess();
  v9 = 0;
  v10 = (v5 + 63) >> 6;
  v37 = a3;
  while (v7)
  {
LABEL_11:
    v13 = *(*(a1 + 48) + (__clz(__rbit64(v7)) | (v9 << 6)));
    result = swift_task_isCurrentExecutor();
    if ((result & 1) == 0)
    {
      result = swift_task_reportUnexpectedExecutor();
    }

    v14 = *(a3 + 112);
    v15 = *(v14 + 16);
    if (v15 < 3)
    {
      goto LABEL_29;
    }

    v35 = v13;
    if (v15 == 3)
    {
    }

    else
    {
      v32 = *(sub_1E65DADD8() - 8);
      sub_1E658C3B4(v14, v14 + ((*(v32 + 80) + 32) & ~*(v32 + 80)), 0, 7uLL);
      v14 = v33;
    }

    v36 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073228, &qword_1E65ED080);
    v16 = sub_1E65DADD8();
    v17 = *(v16 - 8);
    v18 = *(v17 + 72);
    v19 = (*(v17 + 80) + 32) & ~*(v17 + 80);
    result = swift_allocObject();
    *(result + 16) = xmmword_1E65EA670;
    v20 = *(v37 + 112);
    if (*(v20 + 16) < 4uLL)
    {
      goto LABEL_30;
    }

    v21 = result;
    (*(v17 + 16))(result + v19, v20 + v19 + 3 * v18, v16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B6C8, &qword_1E660CC50);
    v22 = sub_1E65E6A28();

    result = sub_1E658C228(3);
    if (v23)
    {
      goto LABEL_27;
    }

    *(v22 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v22[6] + result) = 3;
    *(v22[7] + 8 * result) = v36;
    v24 = v22[2];
    v25 = __OFADD__(v24, 1);
    v26 = v24 + 1;
    if (v25)
    {
      goto LABEL_28;
    }

    v22[2] = v26;

    result = sub_1E658C228(2);
    if (v27)
    {
      goto LABEL_27;
    }

    *(v22 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v22[6] + result) = 2;
    *(v22[7] + 8 * result) = v21;
    v28 = v22[2];
    v25 = __OFADD__(v28, 1);
    v29 = v28 + 1;
    if (v25)
    {
      goto LABEL_28;
    }

    v22[2] = v29;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07B6D0, &qword_1E660CC58);
    swift_arrayDestroy();
    if (v22[2] && (v30 = sub_1E658C228(v35), (v31 & 1) != 0))
    {
      v11 = *(v22[7] + 8 * v30);
    }

    else
    {
      v11 = MEMORY[0x1E69E7CC0];
    }

    v7 &= v7 - 1;

    result = sub_1E658E230(v11);
    a3 = v37;
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v10)
    {
    }

    v7 = *(v4 + 8 * v12);
    ++v9;
    if (v7)
    {
      v9 = v12;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

uint64_t sub_1E658ECEC(uint64_t a1)
{
  v2 = sub_1E65DADD8();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = sub_1E658F778(&qword_1ED071FE0, MEMORY[0x1E69CD2D8], MEMORY[0x1E69CD2E8]);
  result = MEMORY[0x1E694DC60](v9, v2, v10);
  v18 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v6, v15, v2);
      sub_1E658C554(v8, v6);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

uint64_t sub_1E658EE88(uint64_t a1)
{
  v2 = sub_1E65DAEB8();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = sub_1E658F778(&qword_1ED076258, MEMORY[0x1E69CD370], MEMORY[0x1E69CD380]);
  result = MEMORY[0x1E694DC60](v9, v2, v10);
  v18 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v6, v15, v2);
      sub_1E658C834(v8, v6);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

uint64_t sub_1E658F024(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v38 = a2;
  v39 = a1;
  v6 = sub_1E65DAEB8();
  result = MEMORY[0x1EEE9AC00](v6);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = 0;
  v47 = a3;
  v14 = *(a3 + 56);
  v13 = a3 + 56;
  v12 = v14;
  v15 = 1 << *(v13 - 24);
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  else
  {
    v16 = -1;
  }

  v17 = v16 & v12;
  v18 = (v15 + 63) >> 6;
  v40 = 0;
  v41 = v8 + 16;
  v48 = a4 + 56;
  v42 = v8;
  v43 = (v8 + 8);
  v44 = v10;
  v45 = result;
  while (v17)
  {
    v19 = __clz(__rbit64(v17));
    v17 &= v17 - 1;
LABEL_13:
    v22 = v19 | (v11 << 6);
    v23 = *(v47 + 48);
    v24 = *(v42 + 72);
    v46 = v22;
    (*(v42 + 16))(v10, v23 + v24 * v22, v6);
    v25 = sub_1E65DAE48();
    v27 = v26;
    if (*(a4 + 16) && (v28 = v25, sub_1E65E6D28(), sub_1E65E5D78(), v29 = sub_1E65E6D78(), v30 = -1 << *(a4 + 32), v31 = v29 & ~v30, ((*(v48 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31) & 1) != 0))
    {
      v32 = ~v30;
      while (1)
      {
        v33 = (*(a4 + 48) + 16 * v31);
        v34 = *v33 == v28 && v33[1] == v27;
        if (v34 || (sub_1E65E6C18() & 1) != 0)
        {
          break;
        }

        v31 = (v31 + 1) & v32;
        if (((*(v48 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31) & 1) == 0)
        {
          goto LABEL_5;
        }
      }

      v10 = v44;
      v6 = v45;
      result = (*v43)(v44, v45);
      *(v39 + ((v46 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v46;
      if (__OFADD__(v40++, 1))
      {
        __break(1u);
LABEL_26:
        v36 = v47;

        return sub_1E658E5D0(v39, v38, v40, v36);
      }
    }

    else
    {
LABEL_5:

      v10 = v44;
      v6 = v45;
      result = (*v43)(v44, v45);
    }
  }

  v20 = v11;
  while (1)
  {
    v11 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v11 >= v18)
    {
      goto LABEL_26;
    }

    v21 = *(v13 + 8 * v11);
    ++v20;
    if (v21)
    {
      v19 = __clz(__rbit64(v21));
      v17 = (v21 - 1) & v21;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E658F328(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v53 = *MEMORY[0x1E69E9840];
  v6 = sub_1E65DAEB8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v51 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v8) = *(a1 + 32);
  v9 = v8 & 0x3F;
  v10 = ((1 << v8) + 63) >> 6;
  v11 = 8 * v10;

  v52 = a2;
  if (v9 > 0xD)
  {
    goto LABEL_30;
  }

  while (1)
  {
    v41 = v10;
    v42 = v3;
    v40 = &v40;
    MEMORY[0x1EEE9AC00](v12);
    v43 = &v40 - ((v11 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v43, v11);
    v10 = 0;
    v13 = a1 + 56;
    v14 = 1 << *(a1 + 32);
    v15 = v14 < 64 ? ~(-1 << v14) : -1;
    v16 = v15 & *(a1 + 56);
    v11 = (v14 + 63) >> 6;
    v17 = v7 + 16;
    v18 = v7;
    v7 = a2 + 56;
    v48 = v17;
    v49 = v18;
    v44 = 0;
    v45 = (v18 + 8);
    v46 = v6;
    v47 = a1;
    while (v16)
    {
      v19 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_14:
      v22 = v19 | (v10 << 6);
      v23 = *(a1 + 48);
      v24 = *(v49 + 72);
      v50 = v22;
      (*(v49 + 16))(v51, v23 + v24 * v22, v6);
      v25 = sub_1E65DAE48();
      v27 = v26;
      if (*(v52 + 16) && (v28 = v25, sub_1E65E6D28(), sub_1E65E5D78(), v29 = sub_1E65E6D78(), v30 = v52, v31 = -1 << *(v52 + 32), v32 = v29 & ~v31, ((*(v7 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32) & 1) != 0))
      {
        v3 = ~v31;
        while (1)
        {
          v33 = (*(v30 + 48) + 16 * v32);
          v34 = *v33 == v28 && v33[1] == v27;
          if (v34 || (sub_1E65E6C18() & 1) != 0)
          {
            break;
          }

          v32 = (v32 + 1) & v3;
          v30 = v52;
          if (((*(v7 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32) & 1) == 0)
          {
            goto LABEL_6;
          }
        }

        v6 = v46;
        (*v45)(v51, v46);
        *&v43[(v50 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v50;
        v35 = __OFADD__(v44++, 1);
        a1 = v47;
        if (v35)
        {
          __break(1u);
LABEL_27:
          v36 = sub_1E658E5D0(v43, v41, v44, a1);

          return v36;
        }
      }

      else
      {
LABEL_6:

        v6 = v46;
        (*v45)(v51, v46);
        a1 = v47;
      }
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v10 >= v11)
      {
        goto LABEL_27;
      }

      v21 = *(v13 + 8 * v10);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v16 = (v21 - 1) & v21;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_30:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    a2 = v52;
  }

  v38 = swift_slowAlloc();
  v39 = v52;

  v36 = sub_1E658E534(v38, v10, a1, v39);

  MEMORY[0x1E694F1C0](v38, -1, -1);

  return v36;
}

uint64_t sub_1E658F778(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t BookmarkService.queryBookmarks.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t BookmarkService.queryBookmarksByMediaTypes.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t BookmarkService.filterBookmarks.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t BookmarkService.queryBookmarksByReferenceTypes.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t BookmarkService.queryBookmarkCountByMediaTypes.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t BookmarkService.queryBookmarkCountWithFilter.getter()
{
  v1 = *(v0 + 80);

  return v1;
}

uint64_t BookmarkService.queryBookmarkCountByReferenceTypes.getter()
{
  v1 = *(v0 + 96);

  return v1;
}

uint64_t BookmarkService.insertBookmarks.getter()
{
  v1 = *(v0 + 112);

  return v1;
}

uint64_t BookmarkService.removeBookmarks.getter()
{
  v1 = *(v0 + 128);

  return v1;
}

uint64_t BookmarkService.makeBookmarkUpdatedStream.getter()
{
  v1 = *(v0 + 144);

  return v1;
}

uint64_t BookmarkService.queryAllPlaylists.getter()
{
  v1 = *(v0 + 160);

  return v1;
}

uint64_t BookmarkService.filterPlaylists.getter()
{
  v1 = *(v0 + 176);

  return v1;
}

uint64_t BookmarkService.queryPlaylistCount.getter()
{
  v1 = *(v0 + 192);

  return v1;
}

uint64_t BookmarkService.queryPlaylistCountWithFilter.getter()
{
  v1 = *(v0 + 208);

  return v1;
}

uint64_t BookmarkService.queryPlaylists.getter()
{
  v1 = *(v0 + 224);

  return v1;
}

uint64_t BookmarkService.insertPlaylists.getter()
{
  v1 = *(v0 + 240);

  return v1;
}

uint64_t BookmarkService.removePlaylists.getter()
{
  v1 = *(v0 + 256);

  return v1;
}

uint64_t BookmarkService.makePlaylistUpdatedStream.getter()
{
  v1 = *(v0 + 272);

  return v1;
}

uint64_t sub_1E658FB34(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 288))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E658FB7C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 280) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 288) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 288) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1E658FC08(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B770, &qword_1E660CEC0);
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E658FCD4, v1, 0);
}

uint64_t sub_1E658FCD4()
{
  __swift_project_boxed_opaque_existential_1((*(v0 + 24) + 120), *(*(v0 + 24) + 144));
  sub_1E65DD318();

  return MEMORY[0x1EEE6DFA0](sub_1E658FD68, 0, 0);
}

uint64_t sub_1E658FD68()
{
  v1 = v0[6];
  v2 = swift_task_alloc();
  v0[7] = v2;
  *(v2 + 16) = "FitnessEngagementService/LiveEngagementService.swift";
  *(v2 + 24) = 52;
  *(v2 + 32) = 2;
  *(v2 + 40) = 34;
  *(v2 + 48) = v1;
  v3 = swift_task_alloc();
  v0[8] = v3;
  v4 = sub_1E65D7A18();
  *v3 = v0;
  v3[1] = sub_1E656FB24;
  v5 = v0[2];

  return MEMORY[0x1EEE6DE38](v5, 0, 0, 0xD000000000000013, 0x80000001E6610AC0, sub_1E65940C4, v2, v4);
}

uint64_t sub_1E658FE80(uint64_t a1, uint64_t a2)
{
  v3[21] = a2;
  v3[22] = v2;
  v3[20] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B720, &qword_1E660C640);
  v3[23] = v4;
  v3[24] = *(v4 - 8);
  v3[25] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B728, &unk_1E660CE90);
  v3[26] = v5;
  v3[27] = *(v5 - 8);
  v3[28] = swift_task_alloc();
  v6 = sub_1E65D70A8();
  v3[29] = v6;
  v3[30] = *(v6 - 8);
  v3[31] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B730, &qword_1E65FCA88);
  v3[32] = swift_task_alloc();
  v3[33] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6590058, v2, 0);
}

uint64_t sub_1E6590058()
{
  v1 = v0[32];
  v2 = v0[33];
  sub_1E65D70E8();
  sub_1E5DFD1CC(v2, v1, &qword_1ED07B730, &qword_1E65FCA88);
  v3 = sub_1E65D7158();
  v4 = *(v3 - 8);
  v5 = (*(v4 + 48))(v1, 1, v3);
  v6 = v0[32];
  if (v5 == 1)
  {
    sub_1E6327C08(v0[32]);
    goto LABEL_10;
  }

  v7 = sub_1E65D70C8();
  (*(v4 + 8))(v6, v3);
  if (!v7)
  {
LABEL_10:

    v7 = MEMORY[0x1E69E7CC0];
    v8 = *(MEMORY[0x1E69E7CC0] + 16);
    if (!v8)
    {
      goto LABEL_11;
    }

    goto LABEL_5;
  }

  v8 = *(v7 + 16);
  if (!v8)
  {
LABEL_11:

    v10 = MEMORY[0x1E69E7CC0];
    goto LABEL_12;
  }

LABEL_5:
  v9 = v0[30];
  v37 = MEMORY[0x1E69E7CC0];
  sub_1E601C0B8(0, v8, 0);
  v10 = v37;
  v11 = *(v9 + 16);
  v9 += 16;
  v12 = v7 + ((*(v9 + 64) + 32) & ~*(v9 + 64));
  v35 = *(v9 + 56);
  v36 = v11;
  v34 = (v9 - 8);
  do
  {
    v13 = v0[31];
    v14 = v0[29];
    v36(v13, v12, v14);
    v15 = sub_1E65D7088();
    v17 = v16;
    (*v34)(v13, v14);
    v19 = *(v37 + 16);
    v18 = *(v37 + 24);
    if (v19 >= v18 >> 1)
    {
      sub_1E601C0B8((v18 > 1), v19 + 1, 1);
    }

    *(v37 + 16) = v19 + 1;
    v20 = v37 + 16 * v19;
    *(v20 + 32) = v15;
    *(v20 + 40) = v17;
    v12 += v35;
    --v8;
  }

  while (v8);

LABEL_12:
  v21 = sub_1E600AA08(v10);
  v0[34] = v21;

  if (*(v21 + 16))
  {
    v23 = v0[27];
    v22 = v0[28];
    v24 = v0[26];
    v25 = *(v0[22] + 112);
    sub_1E65DE3D8();
    v26 = sub_1E65E5C48();

    v27 = [v25 arrayForKey_];
    v0[35] = v27;

    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_1E6590540;
    swift_continuation_init();
    v0[17] = v24;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B738, &unk_1E660CEA0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B740, &qword_1E65ED600);
    sub_1E65E5FD8();
    (*(v23 + 32))(boxed_opaque_existential_1, v22, v24);
    v0[10] = MEMORY[0x1E69E9820];
    v0[11] = 1107296256;
    v0[12] = sub_1E6590D9C;
    v0[13] = &block_descriptor_24;
    [v27 valueWithCompletion_];
    (*(v23 + 8))(boxed_opaque_existential_1, v24);

    return MEMORY[0x1EEE6DEC8](v0 + 2);
  }

  else
  {
    v30 = v0[20];
    v29 = v0[21];
    sub_1E6327C08(v0[33]);

    v31 = sub_1E65D74E8();
    (*(*(v31 - 8) + 16))(v30, v29, v31);

    v32 = v0[1];

    return v32();
  }
}

uint64_t sub_1E6590540()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 288) = v2;
  if (v2)
  {
    v3 = *(v1 + 176);

    v4 = sub_1E6590CE4;
    v5 = v3;
  }

  else
  {
    v5 = *(v1 + 176);
    v4 = sub_1E6590668;
  }

  return MEMORY[0x1EEE6DFA0](v4, v5, 0);
}

uint64_t sub_1E6590668()
{
  v1 = v0[35];
  v2 = v0[18];
  v0[37] = v2;

  sub_1E65E5F08();
  v3 = v0[33];

  v4 = sub_1E65D8848();
  sub_1E6594104(&qword_1ED07B748, MEMORY[0x1E69CB5E8], MEMORY[0x1E69CB5F0]);
  swift_allocError();
  (*(*(v4 - 8) + 104))(v5, *MEMORY[0x1E69CB5D8], v4);
  swift_willThrow();

  sub_1E6327C08(v3);

  v6 = v0[1];

  return v6();
}

uint64_t sub_1E6590890()
{
  v1 = v0[25];
  v2 = swift_task_alloc();
  v0[38] = v2;
  *(v2 + 16) = "FitnessEngagementService/LiveEngagementService.swift";
  *(v2 + 24) = 52;
  *(v2 + 32) = 2;
  *(v2 + 40) = 53;
  *(v2 + 48) = v1;
  v3 = swift_task_alloc();
  v0[39] = v3;
  v4 = sub_1E65D74E8();
  *v3 = v0;
  v3[1] = sub_1E65909A8;
  v5 = v0[20];

  return MEMORY[0x1EEE6DE38](v5, 0, 0, 0xD000000000000013, 0x80000001E6610AC0, sub_1E65940AC, v2, v4);
}

uint64_t sub_1E65909A8()
{
  v2 = *v1;
  *(*v1 + 320) = v0;

  if (v0)
  {

    v3 = sub_1E6590BB8;
    v4 = 0;
  }

  else
  {
    v6 = v2[24];
    v5 = v2[25];
    v9 = v2 + 22;
    v7 = v2[22];
    v8 = v9[1];

    (*(v6 + 8))(v5, v8);
    v3 = sub_1E6590B0C;
    v4 = v7;
  }

  return MEMORY[0x1EEE6DFA0](v3, v4, 0);
}

uint64_t sub_1E6590B0C()
{
  v1 = *(v0 + 264);

  sub_1E6327C08(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1E6590BB8()
{
  v1 = v0[22];
  (*(v0[24] + 8))(v0[25], v0[23]);

  return MEMORY[0x1EEE6DFA0](sub_1E6590C30, v1, 0);
}

uint64_t sub_1E6590C30()
{
  v1 = *(v0 + 264);

  sub_1E6327C08(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1E6590CE4(uint64_t a1)
{
  v2 = v1[35];
  v3 = v1[33];
  swift_willThrow();
  sub_1E6327C08(v3);

  v4 = v1[1];

  return v4();
}

void sub_1E6590D9C(uint64_t a1, void *a2, char a3, void *a4)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a4)
  {
    v6 = a4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B728, &unk_1E660CE90);
    sub_1E65E5FE8();
  }

  else if (a2)
  {
    v7 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B728, &unk_1E660CE90);
    sub_1E65E5FF8();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1E6590E54(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B708, &qword_1E660CE70);
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6590F20, v1, 0);
}

uint64_t sub_1E6590F20()
{
  __swift_project_boxed_opaque_existential_1((*(v0 + 24) + 120), *(*(v0 + 24) + 144));
  sub_1E65DD2C8();

  return MEMORY[0x1EEE6DFA0](sub_1E6590FB4, 0, 0);
}

uint64_t sub_1E6590FB4()
{
  v1 = v0[6];
  v2 = swift_task_alloc();
  v0[7] = v2;
  *(v2 + 16) = "FitnessEngagementService/LiveEngagementService.swift";
  *(v2 + 24) = 52;
  *(v2 + 32) = 2;
  *(v2 + 40) = 76;
  *(v2 + 48) = v1;
  v3 = swift_task_alloc();
  v0[8] = v3;
  v4 = sub_1E65DA518();
  *v3 = v0;
  v3[1] = sub_1E6549180;
  v5 = v0[2];

  return MEMORY[0x1EEE6DE38](v5, 0, 0, 0xD000000000000013, 0x80000001E6610AC0, sub_1E6593FD4, v2, v4);
}

uint64_t sub_1E65910CC(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B6F0, &qword_1E660CE58);
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6591198, v1, 0);
}

uint64_t sub_1E6591198()
{
  __swift_project_boxed_opaque_existential_1((*(v0 + 24) + 120), *(*(v0 + 24) + 144));
  sub_1E65DD2D8();

  return MEMORY[0x1EEE6DFA0](sub_1E659122C, 0, 0);
}

uint64_t sub_1E659122C()
{
  v1 = v0[6];
  v2 = swift_task_alloc();
  v0[7] = v2;
  *(v2 + 16) = "FitnessEngagementService/LiveEngagementService.swift";
  *(v2 + 24) = 52;
  *(v2 + 32) = 2;
  *(v2 + 40) = 80;
  *(v2 + 48) = v1;
  v3 = swift_task_alloc();
  v0[8] = v3;
  v4 = sub_1E65DABE8();
  *v3 = v0;
  v3[1] = sub_1E656FB24;
  v5 = v0[2];

  return MEMORY[0x1EEE6DE38](v5, 0, 0, 0xD000000000000013, 0x80000001E6610AC0, sub_1E6593F7C, v2, v4);
}

uint64_t sub_1E6591344(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07B6E0, &unk_1E6603F10);
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6591410, v1, 0);
}

uint64_t sub_1E6591410()
{
  __swift_project_boxed_opaque_existential_1((*(v0 + 24) + 120), *(*(v0 + 24) + 144));
  sub_1E65DD2E8();

  return MEMORY[0x1EEE6DFA0](sub_1E65914AC, 0, 0);
}

uint64_t sub_1E65914AC()
{
  v1 = v0[6];
  v2 = swift_task_alloc();
  v0[7] = v2;
  *(v2 + 16) = "FitnessEngagementService/LiveEngagementService.swift";
  *(v2 + 24) = 52;
  *(v2 + 32) = 2;
  *(v2 + 40) = 84;
  *(v2 + 48) = v1;
  v3 = swift_task_alloc();
  v0[8] = v3;
  *v3 = v0;
  v3[1] = sub_1E654D1D0;
  v4 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v3, 0, 0, 0xD000000000000013, 0x80000001E6610AC0, sub_1E6593F64, v2, v4);
}

uint64_t sub_1E65915BC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E5DFE6BC;

  return sub_1E658FC08(a1);
}

uint64_t sub_1E6591658(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1E5DFA78C;

  return sub_1E658FE80(a1, a2);
}

uint64_t sub_1E6591704(char a1, uint64_t a2)
{
  *(v2 + 32) = a2;
  *(v2 + 25) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1E6591724, a2, 0);
}

uint64_t sub_1E6591724()
{
  v1 = *(*(v0 + 32) + 160);
  *(v0 + 40) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1E6591748, v1, 0);
}

uint64_t sub_1E6591748()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 25);
  v3 = sub_1E6594104(&qword_1EE2D58A0, type metadata accessor for EngagementPlacementRegistry, &unk_1E660D1D4);
  v4 = swift_task_alloc();
  *(v0 + 48) = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  v5 = swift_task_alloc();
  *(v0 + 56) = v5;
  *v5 = v0;
  v5[1] = sub_1E6591888;

  return MEMORY[0x1EEE6DE38](v0 + 16, v1, v3, 0xD000000000000012, 0x80000001E6619E50, sub_1E5E1B62C, v4, &type metadata for EngagementPlacement);
}

uint64_t sub_1E6591888()
{
  v2 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v3 = *(v2 + 40);
    v4 = sub_1E63F9A00;
  }

  else
  {
    v5 = *(v2 + 40);

    v4 = sub_1E65919AC;
    v3 = v5;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1E65919CC(char a1, uint64_t a2)
{
  *(v2 + 16) = a2;
  *(v2 + 32) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1E65919EC, a2, 0);
}

uint64_t sub_1E65919EC()
{
  v1 = *(*(v0 + 16) + 160);
  *(v0 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1E6591A10, v1, 0);
}

uint64_t sub_1E6591A10()
{
  sub_1E6595BE0(*(v0 + 32));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E6591A74(char a1, uint64_t a2)
{
  *(v2 + 16) = a2;
  *(v2 + 32) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1E6591A94, a2, 0);
}

uint64_t sub_1E6591A94()
{
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_1E6591B30;
  v2 = *(v0 + 32);

  return sub_1E5E1ACF8(v2);
}

uint64_t sub_1E6591B30(uint64_t a1, char a2)
{
  v6 = *v3;

  if (v2)
  {
    v7 = *(v6 + 8);

    return v7();
  }

  else
  {
    v9 = *(v6 + 8);

    return v9(a1, a2 & 1);
  }
}

uint64_t sub_1E6591C74(uint64_t a1, char a2, uint64_t a3)
{
  *(v3 + 64) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B798, &qword_1E660CEE8);
  *(v3 + 32) = v5;
  *(v3 + 40) = *(v5 - 8);
  *(v3 + 48) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6591D48, a3, 0);
}

uint64_t sub_1E6591D48()
{
  (*(*(v0 + 40) + 104))(*(v0 + 48), *MEMORY[0x1E69E8650], *(v0 + 32));
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v1[1] = sub_1E6591E0C;
  v2 = *(v0 + 48);
  v3 = *(v0 + 16);
  v4 = *(v0 + 64);

  return sub_1E65961E4(v3, v4, v2);
}

uint64_t sub_1E6591E0C()
{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 40);
  v3 = *(*v0 + 32);
  v6 = *v0;

  (*(v2 + 8))(v1, v3);

  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_1E6591F64(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E5DFE6BC;

  return sub_1E6590E54(a1);
}

uint64_t sub_1E6592000(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E5DFE6BC;

  return sub_1E65910CC(a1);
}

uint64_t sub_1E659209C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E5DFE6BC;

  return sub_1E6591344(a1);
}

uint64_t sub_1E6592134(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = a4;
  v42 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B778, &qword_1E660CEC8);
  v45 = *(v11 - 8);
  v44 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v36 - v12;
  v14 = sub_1E65E3B68();
  v43 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_1E5FB8174(0x65uLL);
  sub_1E65DE338();
  v17 = sub_1E65E3B48();
  v40 = sub_1E65E6338();
  v41 = v17;
  if (os_log_type_enabled(v17, v40))
  {
    v18 = swift_slowAlloc();
    v39 = a6;
    v19 = v18;
    v37 = swift_slowAlloc();
    v47 = v37;
    *v19 = 134218498;
    *(v19 + 4) = v46;
    *(v19 + 12) = 2080;
    v20 = sub_1E65E68B8();
    v38 = v8;
    v22 = sub_1E5DFD4B0(v20, v21, &v47);
    v36 = v14;
    v23 = v11;
    v24 = a2;
    v25 = a3;
    v26 = a5;
    v27 = v22;
    LOBYTE(v8) = v38;

    *(v19 + 14) = v27;
    a5 = v26;
    a3 = v25;
    a2 = v24;
    v11 = v23;
    *(v19 + 22) = 2048;
    *(v19 + 24) = a5;
    v28 = v41;
    _os_log_impl(&dword_1E5DE9000, v41, v40, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v19, 0x20u);
    v29 = v37;
    __swift_destroy_boxed_opaque_existential_1(v37);
    MEMORY[0x1E694F1C0](v29, -1, -1);
    MEMORY[0x1E694F1C0](v19, -1, -1);

    (*(v43 + 8))(v16, v36);
  }

  else
  {

    (*(v43 + 8))(v16, v14);
  }

  v30 = v45;
  (*(v45 + 16))(v13, v42, v11);
  v31 = (*(v30 + 80) + 56) & ~*(v30 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = v46;
  *(v32 + 24) = a2;
  *(v32 + 32) = a3;
  *(v32 + 40) = v8;
  *(v32 + 48) = a5;
  (*(v30 + 32))(v32 + v31, v13, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B770, &qword_1E660CEC0);
  v33 = sub_1E65DACC8();
  v34 = swift_allocObject();
  *(v34 + 16) = sub_1E65940DC;
  *(v34 + 24) = v32;

  v33(sub_1E6557D70, v34);
}

uint64_t sub_1E6592510(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = a4;
  v42 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B710, &qword_1E660CE78);
  v45 = *(v11 - 8);
  v44 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v36 - v12;
  v14 = sub_1E65E3B68();
  v43 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_1E5FB8174(0x65uLL);
  sub_1E65DE338();
  v17 = sub_1E65E3B48();
  v40 = sub_1E65E6338();
  v41 = v17;
  if (os_log_type_enabled(v17, v40))
  {
    v18 = swift_slowAlloc();
    v39 = a6;
    v19 = v18;
    v37 = swift_slowAlloc();
    v47 = v37;
    *v19 = 134218498;
    *(v19 + 4) = v46;
    *(v19 + 12) = 2080;
    v20 = sub_1E65E68B8();
    v38 = v8;
    v22 = sub_1E5DFD4B0(v20, v21, &v47);
    v36 = v14;
    v23 = v11;
    v24 = a2;
    v25 = a3;
    v26 = a5;
    v27 = v22;
    LOBYTE(v8) = v38;

    *(v19 + 14) = v27;
    a5 = v26;
    a3 = v25;
    a2 = v24;
    v11 = v23;
    *(v19 + 22) = 2048;
    *(v19 + 24) = a5;
    v28 = v41;
    _os_log_impl(&dword_1E5DE9000, v41, v40, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v19, 0x20u);
    v29 = v37;
    __swift_destroy_boxed_opaque_existential_1(v37);
    MEMORY[0x1E694F1C0](v29, -1, -1);
    MEMORY[0x1E694F1C0](v19, -1, -1);

    (*(v43 + 8))(v16, v36);
  }

  else
  {

    (*(v43 + 8))(v16, v14);
  }

  v30 = v45;
  (*(v45 + 16))(v13, v42, v11);
  v31 = (*(v30 + 80) + 56) & ~*(v30 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = v46;
  *(v32 + 24) = a2;
  *(v32 + 32) = a3;
  *(v32 + 40) = v8;
  *(v32 + 48) = a5;
  (*(v30 + 32))(v32 + v31, v13, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B708, &qword_1E660CE70);
  v33 = sub_1E65DACC8();
  v34 = swift_allocObject();
  *(v34 + 16) = sub_1E6593FEC;
  *(v34 + 24) = v32;

  v33(sub_1E6557D70, v34);
}

uint64_t sub_1E65928EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = a4;
  v42 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B6F8, &qword_1E660CE60);
  v45 = *(v11 - 8);
  v44 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v36 - v12;
  v14 = sub_1E65E3B68();
  v43 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_1E5FB8174(0x65uLL);
  sub_1E65DE338();
  v17 = sub_1E65E3B48();
  v40 = sub_1E65E6338();
  v41 = v17;
  if (os_log_type_enabled(v17, v40))
  {
    v18 = swift_slowAlloc();
    v39 = a6;
    v19 = v18;
    v37 = swift_slowAlloc();
    v47 = v37;
    *v19 = 134218498;
    *(v19 + 4) = v46;
    *(v19 + 12) = 2080;
    v20 = sub_1E65E68B8();
    v38 = v8;
    v22 = sub_1E5DFD4B0(v20, v21, &v47);
    v36 = v14;
    v23 = v11;
    v24 = a2;
    v25 = a3;
    v26 = a5;
    v27 = v22;
    LOBYTE(v8) = v38;

    *(v19 + 14) = v27;
    a5 = v26;
    a3 = v25;
    a2 = v24;
    v11 = v23;
    *(v19 + 22) = 2048;
    *(v19 + 24) = a5;
    v28 = v41;
    _os_log_impl(&dword_1E5DE9000, v41, v40, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v19, 0x20u);
    v29 = v37;
    __swift_destroy_boxed_opaque_existential_1(v37);
    MEMORY[0x1E694F1C0](v29, -1, -1);
    MEMORY[0x1E694F1C0](v19, -1, -1);

    (*(v43 + 8))(v16, v36);
  }

  else
  {

    (*(v43 + 8))(v16, v14);
  }

  v30 = v45;
  (*(v45 + 16))(v13, v42, v11);
  v31 = (*(v30 + 80) + 56) & ~*(v30 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = v46;
  *(v32 + 24) = a2;
  *(v32 + 32) = a3;
  *(v32 + 40) = v8;
  *(v32 + 48) = a5;
  (*(v30 + 32))(v32 + v31, v13, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B6F0, &qword_1E660CE58);
  v33 = sub_1E65DACC8();
  v34 = swift_allocObject();
  *(v34 + 16) = sub_1E6593FAC;
  *(v34 + 24) = v32;

  v33(sub_1E6557D70, v34);
}

uint64_t sub_1E6592CC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6, uint64_t a7)
{
  v41 = a6;
  v40 = a5;
  v38 = a3;
  v39 = a4;
  v10 = sub_1E65D7A18();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B780, &unk_1E660CED0);
  MEMORY[0x1EEE9AC00](v44);
  v15 = (&v34 - v14);
  v16 = sub_1E65E3B68();
  v42 = *(v16 - 8);
  v43 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E65DE338();
  v19 = sub_1E65E3B48();
  v20 = sub_1E65E6338();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v36 = v13;
    v22 = v21;
    v23 = swift_slowAlloc();
    v37 = a7;
    v35 = v23;
    v45 = v23;
    *v22 = 134218498;
    *(v22 + 4) = a2;
    *(v22 + 12) = 2080;
    v24 = sub_1E65E68B8();
    v26 = v15;
    v27 = a1;
    v28 = v11;
    v29 = v10;
    v30 = sub_1E5DFD4B0(v24, v25, &v45);

    *(v22 + 14) = v30;
    v10 = v29;
    v11 = v28;
    a1 = v27;
    v15 = v26;
    *(v22 + 22) = 2048;
    *(v22 + 24) = v41;
    _os_log_impl(&dword_1E5DE9000, v19, v20, "Finished P->A conversion: %ld:%s:%lu", v22, 0x20u);
    v31 = v35;
    __swift_destroy_boxed_opaque_existential_1(v35);
    MEMORY[0x1E694F1C0](v31, -1, -1);
    v32 = v22;
    v13 = v36;
    MEMORY[0x1E694F1C0](v32, -1, -1);
  }

  (*(v42 + 8))(v18, v43);
  sub_1E5DFD1CC(a1, v15, &qword_1ED07B780, &unk_1E660CED0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v45 = *v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B778, &qword_1E660CEC8);
    return sub_1E65E5FE8();
  }

  else
  {
    (*(v11 + 32))(v13, v15, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B778, &qword_1E660CEC8);
    return sub_1E65E5FF8();
  }
}

uint64_t sub_1E659303C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6, uint64_t a7)
{
  v41 = a6;
  v40 = a5;
  v38 = a3;
  v39 = a4;
  v10 = sub_1E65DA518();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B718, &unk_1E660CE80);
  MEMORY[0x1EEE9AC00](v44);
  v15 = (&v34 - v14);
  v16 = sub_1E65E3B68();
  v42 = *(v16 - 8);
  v43 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E65DE338();
  v19 = sub_1E65E3B48();
  v20 = sub_1E65E6338();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v36 = v13;
    v22 = v21;
    v23 = swift_slowAlloc();
    v37 = a7;
    v35 = v23;
    v45 = v23;
    *v22 = 134218498;
    *(v22 + 4) = a2;
    *(v22 + 12) = 2080;
    v24 = sub_1E65E68B8();
    v26 = v15;
    v27 = a1;
    v28 = v11;
    v29 = v10;
    v30 = sub_1E5DFD4B0(v24, v25, &v45);

    *(v22 + 14) = v30;
    v10 = v29;
    v11 = v28;
    a1 = v27;
    v15 = v26;
    *(v22 + 22) = 2048;
    *(v22 + 24) = v41;
    _os_log_impl(&dword_1E5DE9000, v19, v20, "Finished P->A conversion: %ld:%s:%lu", v22, 0x20u);
    v31 = v35;
    __swift_destroy_boxed_opaque_existential_1(v35);
    MEMORY[0x1E694F1C0](v31, -1, -1);
    v32 = v22;
    v13 = v36;
    MEMORY[0x1E694F1C0](v32, -1, -1);
  }

  (*(v42 + 8))(v18, v43);
  sub_1E5DFD1CC(a1, v15, &qword_1ED07B718, &unk_1E660CE80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v45 = *v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B710, &qword_1E660CE78);
    return sub_1E65E5FE8();
  }

  else
  {
    (*(v11 + 32))(v13, v15, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B710, &qword_1E660CE78);
    return sub_1E65E5FF8();
  }
}

uint64_t sub_1E65933B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6, uint64_t a7)
{
  v41 = a6;
  v40 = a5;
  v38 = a3;
  v39 = a4;
  v10 = sub_1E65DABE8();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B700, &qword_1E660CE68);
  MEMORY[0x1EEE9AC00](v44);
  v15 = (&v34 - v14);
  v16 = sub_1E65E3B68();
  v42 = *(v16 - 8);
  v43 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E65DE338();
  v19 = sub_1E65E3B48();
  v20 = sub_1E65E6338();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v36 = v13;
    v22 = v21;
    v23 = swift_slowAlloc();
    v37 = a7;
    v35 = v23;
    v45 = v23;
    *v22 = 134218498;
    *(v22 + 4) = a2;
    *(v22 + 12) = 2080;
    v24 = sub_1E65E68B8();
    v26 = v15;
    v27 = a1;
    v28 = v11;
    v29 = v10;
    v30 = sub_1E5DFD4B0(v24, v25, &v45);

    *(v22 + 14) = v30;
    v10 = v29;
    v11 = v28;
    a1 = v27;
    v15 = v26;
    *(v22 + 22) = 2048;
    *(v22 + 24) = v41;
    _os_log_impl(&dword_1E5DE9000, v19, v20, "Finished P->A conversion: %ld:%s:%lu", v22, 0x20u);
    v31 = v35;
    __swift_destroy_boxed_opaque_existential_1(v35);
    MEMORY[0x1E694F1C0](v31, -1, -1);
    v32 = v22;
    v13 = v36;
    MEMORY[0x1E694F1C0](v32, -1, -1);
  }

  (*(v42 + 8))(v18, v43);
  sub_1E5DFD1CC(a1, v15, &qword_1ED07B700, &qword_1E660CE68);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v45 = *v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B6F8, &qword_1E660CE60);
    return sub_1E65E5FE8();
  }

  else
  {
    (*(v11 + 32))(v13, v15, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B6F8, &qword_1E660CE60);
    return sub_1E65E5FF8();
  }
}

uint64_t sub_1E6593724(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 1;
  }

  v2 = *(a1 + 16);
  if (!v2)
  {
    return 1;
  }

  v4 = 0;
  v5 = a1 + 32;
  v6 = a2 + 56;
  while (1)
  {
    if (!*(a2 + 16))
    {
      goto LABEL_5;
    }

    v7 = (v5 + 16 * v4);
    v9 = *v7;
    v8 = v7[1];
    sub_1E65E6D28();

    sub_1E65E5D78();
    v10 = sub_1E65E6D78();
    v11 = -1 << *(a2 + 32);
    v12 = v10 & ~v11;
    if ((*(v6 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
    {
      break;
    }

LABEL_4:

LABEL_5:
    if (++v4 == v2)
    {
      return 1;
    }
  }

  v13 = ~v11;
  while (1)
  {
    v14 = (*(a2 + 48) + 16 * v12);
    v15 = *v14 == v9 && v14[1] == v8;
    if (v15 || (sub_1E65E6C18() & 1) != 0)
    {
      break;
    }

    v12 = (v12 + 1) & v13;
    if (((*(v6 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      goto LABEL_4;
    }
  }

  return 0;
}

void *sub_1E6593870(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1E6593890(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1E6593890(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B788, &qword_1E660D580);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B790, &qword_1E660CEE0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1E65939D8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E5DFE6BC;

  return sub_1E65915BC(a1);
}

uint64_t sub_1E6593A74(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1E5DFA78C;

  return sub_1E6591658(a1, a2);
}

uint64_t sub_1E6593B20(char a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E621FCB8;

  return sub_1E6591704(a1, v1);
}

uint64_t sub_1E6593BB8(char a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5DFE6BC;

  return sub_1E65919CC(a1, v1);
}

uint64_t sub_1E6593C50(char a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E659414C;

  return sub_1E6591A74(a1, v1);
}

uint64_t sub_1E6593CE8(uint64_t a1, char a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1E5DFA78C;

  return sub_1E6591C74(a1, a2, v2);
}

uint64_t sub_1E6593D94(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E5DFE6BC;

  return sub_1E6591F64(a1);
}

uint64_t sub_1E6593E30(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E5DFE6BC;

  return sub_1E6592000(a1);
}

uint64_t sub_1E6593ECC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E5DFE6BC;

  return sub_1E659209C(a1);
}

uint64_t sub_1E6594014(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a2, a3) - 8);
  v7 = *(v4 + 16);
  v8 = *(v4 + 24);
  v9 = *(v4 + 32);
  v10 = *(v4 + 48);
  v11 = *(v4 + 40);
  v12 = v4 + ((*(v6 + 80) + 56) & ~*(v6 + 80));

  return a4(a1, v7, v8, v9, v11, v10, v12);
}

uint64_t sub_1E6594104(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_1E6594154()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410);
  v1 = MEMORY[0x1EEE9AC00](v0 - 8);
  v36 = &v36 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v36 - v3;
  v5 = sub_1E65D76F8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E65D76E8();
  v9 = sub_1E65D76C8();
  v11 = v10;
  (*(v6 + 8))(v8, v5);
  sub_1E5E1CB40(MEMORY[0x1E69E7CC0]);
  v12 = objc_allocWithZone(MEMORY[0x1E698C8C0]);
  v13 = sub_1E65E5C48();
  v14 = sub_1E65E5C48();
  v15 = sub_1E65E5AF8();

  v16 = [v12 initWithTitle:v13 message:v14 appearanceInfo:v15];

  v38 = v9;
  v37 = v11;
  v17 = sub_1E65E5C48();
  [v16 setIdentifier_];

  sub_1E65D74C8();
  v18 = sub_1E65D74E8();
  v19 = *(v18 - 8);
  v20 = *(v19 + 48);
  v21 = 0;
  if (v20(v4, 1, v18) != 1)
  {
    v21 = sub_1E65D7448();
    (*(v19 + 8))(v4, v18);
  }

  [v16 setIconURL_];

  v22 = objc_opt_self();
  v23 = [v22 actionWithTitle:0 style:2];
  [v16 addButtonAction_];

  [v16 setStyle_];
  v24 = sub_1E65E5C48();
  v25 = [v22 actionWithTitle_];

  v26 = v36;
  sub_1E65D74C8();
  v27 = 0;
  if (v20(v26, 1, v18) != 1)
  {
    v27 = sub_1E65D7448();
    (*(v19 + 8))(v26, v18);
  }

  [v25 setDeepLink_];

  [v16 addButtonAction_];
  sub_1E65D7D88();
  sub_1E65D7D98();
  v28 = objc_allocWithZone(MEMORY[0x1E698CA08]);
  v29 = sub_1E65E5C48();

  v30 = [v28 initWithTopic_];

  [v16 setMetricsEvent_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B7A0, &qword_1E660CEF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E65EB9E0;
  v39 = 0xD000000000000012;
  v40 = 0x80000001E6616710;
  v32 = MEMORY[0x1E69E6158];
  sub_1E65E6848();
  *(inited + 96) = v32;
  v33 = v37;
  *(inited + 72) = v38;
  *(inited + 80) = v33;
  v39 = 0x6E656D6563616C70;
  v40 = 0xE900000000000074;
  sub_1E65E6848();
  *(inited + 168) = v32;
  *(inited + 144) = 0xD000000000000013;
  *(inited + 152) = 0x80000001E6619C90;
  sub_1E5E1CB40(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B7A8, &qword_1E660CEF8);
  swift_arrayDestroy();
  v34 = sub_1E65E5AF8();

  [v16 setClickstreamMetricsEvent_];

  return v16;
}

id sub_1E6594788()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410);
  v1 = MEMORY[0x1EEE9AC00](v0 - 8);
  v36 = &v36 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v36 - v3;
  v5 = sub_1E65D76F8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E65D76E8();
  v9 = sub_1E65D76C8();
  v11 = v10;
  (*(v6 + 8))(v8, v5);
  sub_1E5E1CB40(MEMORY[0x1E69E7CC0]);
  v12 = objc_allocWithZone(MEMORY[0x1E698C8C0]);
  v13 = sub_1E65E5C48();
  v14 = sub_1E65E5C48();
  v15 = sub_1E65E5AF8();

  v16 = [v12 initWithTitle:v13 message:v14 appearanceInfo:v15];

  v38 = v9;
  v37 = v11;
  v17 = sub_1E65E5C48();
  [v16 setIdentifier_];

  [v16 setStyle_];
  sub_1E65D74C8();
  v18 = sub_1E65D74E8();
  v19 = *(v18 - 8);
  v20 = *(v19 + 48);
  v21 = 0;
  if (v20(v4, 1, v18) != 1)
  {
    v21 = sub_1E65D7448();
    (*(v19 + 8))(v4, v18);
  }

  [v16 setIconURL_];

  v22 = objc_opt_self();
  v23 = [v22 actionWithTitle:0 style:2];
  [v16 addButtonAction_];

  v24 = sub_1E65E5C48();
  v25 = [v22 actionWithTitle_];

  v26 = v36;
  sub_1E65D74C8();
  v27 = 0;
  if (v20(v26, 1, v18) != 1)
  {
    v27 = sub_1E65D7448();
    (*(v19 + 8))(v26, v18);
  }

  [v25 setDeepLink_];

  [v16 addButtonAction_];
  sub_1E65D7D88();
  sub_1E65D7D98();
  v28 = objc_allocWithZone(MEMORY[0x1E698CA08]);
  v29 = sub_1E65E5C48();

  v30 = [v28 initWithTopic_];

  [v16 setMetricsEvent_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B7A0, &qword_1E660CEF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E65EB9E0;
  v39 = 0xD000000000000012;
  v40 = 0x80000001E6616710;
  v32 = MEMORY[0x1E69E6158];
  sub_1E65E6848();
  *(inited + 96) = v32;
  v33 = v37;
  *(inited + 72) = v38;
  *(inited + 80) = v33;
  v39 = 0x6E656D6563616C70;
  v40 = 0xE900000000000074;
  sub_1E65E6848();
  *(inited + 168) = v32;
  *(inited + 144) = 0xD000000000000016;
  *(inited + 152) = 0x80000001E6618C50;
  sub_1E5E1CB40(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B7A8, &qword_1E660CEF8);
  swift_arrayDestroy();
  v34 = sub_1E65E5AF8();

  [v16 setClickstreamMetricsEvent_];

  return v16;
}

id sub_1E6594DBC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v29 - v1;
  v3 = sub_1E65D76F8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E65D76E8();
  v31 = sub_1E65D76C8();
  v30 = v7;
  v8 = *(v4 + 8);
  v8(v6, v3);
  sub_1E5E1CB40(MEMORY[0x1E69E7CC0]);
  v9 = objc_allocWithZone(MEMORY[0x1E698C8C0]);
  v10 = sub_1E65E5C48();
  v11 = sub_1E65E5C48();
  v12 = sub_1E65E5AF8();

  v13 = [v9 initWithTitle:v10 message:v11 appearanceInfo:v12];

  [v13 setStyle_];
  sub_1E65D76E8();
  sub_1E65D76C8();
  v8(v6, v3);
  v14 = sub_1E65E5C48();

  [v13 setIdentifier_];

  sub_1E65D74C8();
  v15 = sub_1E65D74E8();
  v16 = *(v15 - 8);
  v17 = 0;
  if ((*(v16 + 48))(v2, 1, v15) != 1)
  {
    v17 = sub_1E65D7448();
    (*(v16 + 8))(v2, v15);
  }

  [v13 setIconURL_];

  v18 = [objc_opt_self() actionWithTitle:0 style:2];
  [v13 addButtonAction_];

  sub_1E65D7D88();
  sub_1E65D7D98();
  v19 = objc_allocWithZone(MEMORY[0x1E698CA08]);
  v20 = sub_1E65E5C48();

  v21 = [v19 initWithTopic_];

  [v13 setMetricsEvent_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B7A0, &qword_1E660CEF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E65EB9E0;
  v32 = 0xD000000000000012;
  v33 = 0x80000001E6616710;
  v23 = MEMORY[0x1E69E6158];
  sub_1E65E6848();
  *(inited + 96) = v23;
  v24 = v30;
  *(inited + 72) = v31;
  *(inited + 80) = v24;
  v32 = 0x6E656D6563616C70;
  v33 = 0xE900000000000074;
  sub_1E65E6848();
  v25 = sub_1E65DB7F8();
  *(inited + 168) = v23;
  *(inited + 144) = v25;
  *(inited + 152) = v26;
  sub_1E5E1CB40(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B7A8, &qword_1E660CEF8);
  swift_arrayDestroy();
  v27 = sub_1E65E5AF8();

  [v13 setClickstreamMetricsEvent_];

  return v13;
}

id sub_1E65952F0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v29 - v1;
  v3 = sub_1E65D76F8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E65D76E8();
  v7 = sub_1E65D76C8();
  v9 = v8;
  (*(v4 + 8))(v6, v3);
  sub_1E5E1CB40(MEMORY[0x1E69E7CC0]);
  v10 = objc_allocWithZone(MEMORY[0x1E698C8C0]);
  v11 = sub_1E65E5C48();
  v12 = sub_1E65E5C48();
  v13 = sub_1E65E5AF8();

  v14 = [v10 initWithTitle:v11 message:v12 appearanceInfo:v13];

  v15 = sub_1E65E5C48();
  [v14 setIdentifier_];

  [v14 setStyle_];
  sub_1E65D74C8();
  v16 = sub_1E65D74E8();
  v17 = *(v16 - 8);
  v18 = 0;
  if ((*(v17 + 48))(v2, 1, v16) != 1)
  {
    v18 = sub_1E65D7448();
    (*(v17 + 8))(v2, v16);
  }

  [v14 setIconURL_];

  v19 = [objc_opt_self() actionWithTitle:0 style:2];
  [v14 addButtonAction_];

  sub_1E65D7D88();
  sub_1E65D7D98();
  v20 = objc_allocWithZone(MEMORY[0x1E698CA08]);
  v21 = sub_1E65E5C48();

  v22 = [v20 initWithTopic_];

  [v14 setMetricsEvent_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B7A0, &qword_1E660CEF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E65EB9E0;
  v30 = 0xD000000000000012;
  v31 = 0x80000001E6616710;
  v24 = MEMORY[0x1E69E6158];
  sub_1E65E6848();
  *(inited + 96) = v24;
  *(inited + 72) = v7;
  *(inited + 80) = v9;
  v30 = 0x6E656D6563616C70;
  v31 = 0xE900000000000074;
  sub_1E65E6848();
  v25 = sub_1E65DB7F8();
  *(inited + 168) = v24;
  *(inited + 144) = v25;
  *(inited + 152) = v26;
  sub_1E5E1CB40(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B7A8, &qword_1E660CEF8);
  swift_arrayDestroy();
  v27 = sub_1E65E5AF8();

  [v14 setClickstreamMetricsEvent_];

  return v14;
}

id _sSo16AMSDialogRequestC24FitnessEngagementServiceE24makeSummaryPaletteBannerAByFZ_0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410);
  v1 = MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v25 - v4;
  v6 = sub_1E65D76F8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E65D76E8();
  sub_1E65D76C8();
  (*(v7 + 8))(v9, v6);
  sub_1E5E1CB40(MEMORY[0x1E69E7CC0]);
  v10 = objc_allocWithZone(MEMORY[0x1E698C8C0]);
  v11 = sub_1E65E5C48();
  v12 = sub_1E65E5C48();
  v13 = sub_1E65E5AF8();

  v14 = [v10 initWithTitle:v11 message:v12 appearanceInfo:v13];

  v15 = sub_1E65E5C48();

  [v14 setIdentifier_];

  [v14 setStyle_];
  sub_1E65D74C8();
  v16 = sub_1E65D74E8();
  v17 = *(v16 - 8);
  v18 = *(v17 + 48);
  v19 = 0;
  if (v18(v5, 1, v16) != 1)
  {
    v19 = sub_1E65D7448();
    (*(v17 + 8))(v5, v16);
  }

  [v14 setIconURL_];

  v20 = objc_opt_self();
  v21 = [v20 actionWithTitle:0 style:2];
  [v14 addButtonAction_];

  v22 = [v20 actionWithTitle:0 style:0];
  sub_1E65D74C8();
  v23 = 0;
  if (v18(v3, 1, v16) != 1)
  {
    v23 = sub_1E65D7448();
    (*(v17 + 8))(v3, v16);
  }

  [v22 setDeepLink_];

  [v14 setDefaultAction_];
  return v14;
}

void sub_1E6595BE0(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B898, &qword_1E660D328);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v35 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v35 - v9;
  swift_beginAccess();
  v11 = *(v1 + 176);
  if (*(v11 + 16) && (v12 = sub_1E5E1B97C(a1), (v13 & 1) != 0))
  {
    v14 = *(v11 + 56) + 16 * v12;
    v15 = *v14;
    v16 = *(v14 + 8);
    swift_endAccess();
    if (v16 < 0)
    {
      swift_beginAccess();
      sub_1E6596778(0, 254, a1);
      swift_endAccess();
      v32 = sub_1E65E60A8();
      (*(*(v32 - 8) + 56))(v10, 1, 1, v32);
      v33 = sub_1E5E1B028();
      v34 = swift_allocObject();
      *(v34 + 16) = v2;
      *(v34 + 24) = v33;
      *(v34 + 32) = v2;
      *(v34 + 40) = a1;
      swift_retain_n();
      sub_1E64B83F8(0, 0, v10, &unk_1E660D368, v34);
    }

    else
    {
      swift_beginAccess();

      sub_1E6596778(0, 254, a1);
      swift_endAccess();
      v17 = sub_1E65E60A8();
      (*(*(v17 - 8) + 56))(v10, 1, 1, v17);
      v18 = sub_1E5E1B028();
      v19 = swift_allocObject();
      *(v19 + 16) = v2;
      *(v19 + 24) = v18;
      *(v19 + 32) = v2;
      *(v19 + 40) = a1;
      swift_retain_n();
      sub_1E64B83F8(0, 0, v10, &unk_1E660D358, v19);

      v20 = v15[2];
      if (v20)
      {
        v37 = v16;
        v23 = *(v5 + 16);
        v21 = v5 + 16;
        v22 = v23;
        v24 = (*(v21 + 64) + 32) & ~*(v21 + 64);
        v36 = v15;
        v25 = v15 + v24;
        v26 = *(v21 + 56);
        v27 = (v21 - 8);
        do
        {
          v22(v7, v25, v4);
          sub_1E6599984();
          v28 = swift_allocError();
          *v29 = 3;
          v38 = v28;
          sub_1E65E5FE8();
          (*v27)(v7, v4);
          v25 += v26;
          --v20;
        }

        while (v20);
        v30 = v36;
        v31 = v37;
      }

      else
      {
        v30 = v15;
        v31 = v16;
      }

      sub_1E659B884(v30, v31);
    }
  }

  else
  {
    swift_endAccess();
  }
}

uint64_t sub_1E6595FAC()
{
  v2 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = *(v2 + 32);
    v4 = sub_1E6596160;
  }

  else
  {
    v5 = *(v2 + 32);

    v4 = sub_1E65960D4;
    v3 = v5;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1E65960D4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_1E6597498(*(v0 + 26));

  v3 = *(v0 + 8);

  return v3(v1, v2);
}

uint64_t sub_1E6596160()
{
  v1 = *(v0 + 26);

  sub_1E6597498(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1E65961E4(uint64_t a1, char a2, uint64_t a3)
{
  *(v4 + 48) = a3;
  *(v4 + 56) = v3;
  *(v4 + 88) = a2;
  *(v4 + 40) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1E659620C, v3, 0);
}

uint64_t sub_1E659620C()
{
  v1 = *(v0 + 56);
  swift_beginAccess();
  v2 = *(v1 + 168);
  if (*(v2 + 16))
  {
    v3 = sub_1E5E1B97C(*(v0 + 88));
    if (v4)
    {
      *(v0 + 64) = *(*(v2 + 56) + 8 * v3);
      swift_endAccess();

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07B860, &qword_1E660D2C8);
      sub_1E659B6AC();
      v5 = sub_1E65E5FC8();
      v7 = v6;
      v8 = sub_1E6596438;
      goto LABEL_11;
    }
  }

  v9 = *(v0 + 56);
  swift_endAccess();
  swift_beginAccess();
  v10 = *(v9 + 176);
  if (!*(v10 + 16) || (v11 = sub_1E5E1B97C(*(v0 + 88)), (v12 & 1) == 0))
  {
    swift_endAccess();
    goto LABEL_9;
  }

  v13 = *(v10 + 56) + 16 * v11;
  v14 = *v13;
  v15 = *(v13 + 8);
  swift_endAccess();
  if ((v15 & 0x80000000) == 0)
  {
LABEL_9:
    v14 = 0;
    v16 = -1;
    goto LABEL_10;
  }

  v16 = v15 & 1;
  v17 = v14;
LABEL_10:
  *(v0 + 89) = v16;
  *(v0 + 72) = v14;
  v18 = *(v0 + 88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07B860, &qword_1E660D2C8);
  *(v0 + 16) = v14;
  *(v0 + 24) = v16;
  sub_1E659B698(v14, v16);
  v19 = sub_1E65E1808();
  *(v0 + 80) = v19;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v23 = *(v1 + 168);
  *(v1 + 168) = 0x8000000000000000;
  sub_1E659A5AC(v19, v18, isUniquelyReferenced_nonNull_native);
  *(v1 + 168) = v23;
  swift_endAccess();
  sub_1E659B6AC();
  v5 = sub_1E65E5FC8();
  v7 = v21;
  v8 = sub_1E6596504;
LABEL_11:

  return MEMORY[0x1EEE6DFA0](v8, v5, v7);
}

uint64_t sub_1E6596438()
{
  v1 = *(v0 + 56);
  sub_1E65E17F8();

  return MEMORY[0x1EEE6DFA0](sub_1E65964A4, v1, 0);
}

uint64_t sub_1E65964A4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E6596504()
{
  v1 = *(v0 + 56);
  sub_1E65E17F8();

  return MEMORY[0x1EEE6DFA0](sub_1E6596574, v1, 0);
}

uint64_t sub_1E6596574()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 89);

  sub_1E659B710(v1, v2);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t EngagementPlacementError.hashValue.getter()
{
  v1 = *v0;
  sub_1E65E6D28();
  MEMORY[0x1E694E740](v1);
  return sub_1E65E6D78();
}

unint64_t sub_1E6596670()
{
  result = qword_1ED07B7B0;
  if (!qword_1ED07B7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED07B7B0);
  }

  return result;
}

uint64_t sub_1E65966D0(uint64_t a1, unsigned int a2)
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

uint64_t sub_1E6596718(uint64_t result, unsigned int a2, unsigned int a3)
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

void sub_1E6596778(uint64_t a1, char a2, uint64_t a3)
{
  v4 = v3;
  if (a2 <= 0xFDu)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    sub_1E5E1B714(a1, a2, a3, isUniquelyReferenced_nonNull_native);
    *v3 = v15;
  }

  else
  {
    v5 = sub_1E5E1B97C(a3);
    if (v6)
    {
      v7 = v5;
      v8 = swift_isUniquelyReferenced_nonNull_native();
      v9 = *v3;
      v14 = *v4;
      if (!v8)
      {
        sub_1E659A6F8();
        v9 = v14;
      }

      sub_1E659B884(*(*(v9 + 56) + 16 * v7), *(*(v9 + 56) + 16 * v7 + 8));
      sub_1E659A2B0(v7, v9);
      *v4 = v9;
    }
  }
}

uint64_t sub_1E6596858(uint64_t a1)
{
  v3 = *v2;
  v3[13] = a1;
  v3[14] = v1;

  if (v1)
  {
    v4 = v3[7];
    v5 = sub_1E6596CA8;
  }

  else
  {
    v6 = v3[7];

    v5 = sub_1E6596980;
    v4 = v6;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

uint64_t sub_1E6596980()
{
  v34 = v0;
  sub_1E65DE2D8();

  v1 = sub_1E65E3B48();
  v2 = sub_1E65E6338();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 104);
    v4 = *(v0 + 72);
    v32 = *(v0 + 80);
    v5 = *(v0 + 64);
    v6 = *(v0 + 121);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v33[0] = v8;
    *v7 = 136315394;
    *(v0 + 120) = v6;
    v9 = sub_1E65E5CE8();
    v11 = sub_1E5DFD4B0(v9, v10, v33);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2080;
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B790, &qword_1E660CEE0);
    v13 = MEMORY[0x1E694D940](v3, v12);
    v15 = sub_1E5DFD4B0(v13, v14, v33);

    *(v7 + 14) = v15;
    _os_log_impl(&dword_1E5DE9000, v1, v2, "%s requests: %s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E694F1C0](v8, -1, -1);
    MEMORY[0x1E694F1C0](v7, -1, -1);

    (*(v4 + 8))(v32, v5);
  }

  else
  {
    v17 = *(v0 + 72);
    v16 = *(v0 + 80);
    v18 = *(v0 + 64);

    (*(v17 + 8))(v16, v18);
  }

  v19 = *(v0 + 104);
  if (*(v19 + 16))
  {
    v20 = *(v0 + 121);
    sub_1E5DF650C(v19 + 32, v0 + 16);

    v21 = sub_1E659BA88((v0 + 16), v20);
    if (v22 != -1)
    {
      v23 = v21;
      v24 = v22;
      sub_1E6596D4C(*(v0 + 121), v21, v22 & 1);
      sub_1E659B710(v23, v24);
      __swift_destroy_boxed_opaque_existential_1((v0 + 16));
      goto LABEL_10;
    }

    sub_1E6599984();
    v25 = swift_allocError();
    *v27 = 1;
    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  }

  else
  {

    sub_1E6599984();
    v25 = swift_allocError();
    *v26 = 0;
    swift_willThrow();
  }

  v28 = *(v0 + 121);
  v29 = v25;
  sub_1E6596D4C(v28, v25, 256);

LABEL_10:

  v30 = *(v0 + 8);

  return v30();
}

uint64_t sub_1E6596CA8()
{

  v1 = *(v0 + 112);
  v2 = *(v0 + 121);
  v3 = v1;
  sub_1E6596D4C(v2, v1, 256);

  v4 = *(v0 + 8);

  return v4();
}

void sub_1E6596D4C(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v5 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B898, &qword_1E660D328);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v44 - v13;
  if ((v5 & 0x100) != 0)
  {
    swift_beginAccess();
    v31 = *(v3 + 176);
    if (*(v31 + 16))
    {
      v32 = sub_1E5E1B97C(a1);
      if (v33)
      {
        v34 = *(v31 + 56) + 16 * v32;
        v35 = *v34;
        v36 = *(v34 + 8);
        swift_endAccess();
        if (v36 < 0)
        {
          return;
        }

        swift_beginAccess();

        sub_1E6596778(0, 254, a1);
        swift_endAccess();
        v37 = v35[2];
        if (v37)
        {
          LODWORD(v46) = v36;
          v39 = *(v9 + 16);
          v38 = v9 + 16;
          v47 = v39;
          v40 = *(v38 + 64);
          v45 = v35;
          v41 = v35 + ((v40 + 32) & ~v40);
          v42 = v38;
          v43 = *(v38 + 56);
          do
          {
            v47(v12, v41, v8);
            v49 = a2;
            sub_1E659B89C(a2);
            sub_1E65E5FE8();
            (*(v42 - 8))(v12, v8);
            v41 += v43;
            --v37;
          }

          while (v37);
          v29 = v45;
          v30 = v46;
        }

        else
        {
          v29 = v35;
          v30 = v36;
        }

        goto LABEL_19;
      }
    }

LABEL_16:
    swift_endAccess();
    return;
  }

  swift_beginAccess();
  v15 = *(v3 + 176);
  if (!*(v15 + 16))
  {
    goto LABEL_16;
  }

  v16 = sub_1E5E1B97C(a1);
  if ((v17 & 1) == 0)
  {
    goto LABEL_16;
  }

  v18 = *(v15 + 56) + 16 * v16;
  v19 = *v18;
  v20 = *(v18 + 8);
  swift_endAccess();
  if (v20 < 0)
  {
    return;
  }

  swift_beginAccess();
  sub_1E659B890(v19, v20);
  sub_1E659B89C(a2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v48 = *(v4 + 176);
  *(v4 + 176) = 0x8000000000000000;
  v46 = v19;
  sub_1E5E1B714(a2, v5 & 1 | 0x80, a1, isUniquelyReferenced_nonNull_native);
  v22 = v46;
  *(v4 + 176) = v48;
  swift_endAccess();
  v23 = v22[2];
  if (v23)
  {
    LODWORD(v45) = v20;
    v25 = *(v9 + 16);
    v24 = v9 + 16;
    v47 = v25;
    v26 = v22 + ((*(v24 + 64) + 32) & ~*(v24 + 64));
    v27 = *(v24 + 56);
    v28 = (v24 - 8);
    do
    {
      v47(v14, v26, v8);
      v49 = a2;
      v50 = v5 & 1;
      sub_1E659B89C(a2);
      sub_1E65E5FF8();
      (*v28)(v14, v8);
      v26 += v27;
      --v23;
    }

    while (v23);
    v29 = v46;
    v30 = v45;
  }

  else
  {
    v29 = v22;
    v30 = v20;
  }

LABEL_19:
  sub_1E659B884(v29, v30);
}

uint64_t sub_1E65970F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 64) = a5;
  *(v5 + 40) = a1;
  *(v5 + 48) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1E6597118, a4, 0);
}

uint64_t sub_1E6597118()
{
  v1 = *(v0 + 48);
  swift_beginAccess();
  v2 = *(v1 + 168);
  if (*(v2 + 16) && (v3 = sub_1E5E1B97C(*(v0 + 64)), (v4 & 1) != 0))
  {
    *(v0 + 56) = *(*(v2 + 56) + 8 * v3);
    swift_endAccess();
    *(v0 + 16) = 0;
    *(v0 + 24) = -1;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07B860, &qword_1E660D2C8);
    sub_1E659B6AC();
    v6 = sub_1E65E5FC8();

    return MEMORY[0x1EEE6DFA0](sub_1E6597244, v6, v5);
  }

  else
  {
    swift_endAccess();
    **(v0 + 40) = 1;
    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_1E6597244()
{
  v1 = *(v0 + 48);
  sub_1E65E1818();

  return MEMORY[0x1EEE6DFA0](sub_1E659BA84, v1, 0);
}

uint64_t sub_1E65972B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 64) = a5;
  *(v5 + 40) = a1;
  *(v5 + 48) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1E65972DC, a4, 0);
}

uint64_t sub_1E65972DC()
{
  v1 = *(v0 + 48);
  swift_beginAccess();
  v2 = *(v1 + 168);
  if (*(v2 + 16) && (v3 = sub_1E5E1B97C(*(v0 + 64)), (v4 & 1) != 0))
  {
    *(v0 + 56) = *(*(v2 + 56) + 8 * v3);
    swift_endAccess();
    *(v0 + 16) = 0;
    *(v0 + 24) = -1;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07B860, &qword_1E660D2C8);
    sub_1E659B6AC();
    v6 = sub_1E65E5FC8();

    return MEMORY[0x1EEE6DFA0](sub_1E6597408, v6, v5);
  }

  else
  {
    swift_endAccess();
    **(v0 + 40) = 1;
    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_1E6597408()
{
  v1 = *(v0 + 48);
  sub_1E65E1818();

  return MEMORY[0x1EEE6DFA0](sub_1E659747C, v1, 0);
}

void sub_1E6597498(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1E65E3B68();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (*(v1[23] + 16) && (sub_1E5E1B97C(a1), (v8 & 1) != 0))
  {
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    sub_1E65DE2D8();
    v9 = sub_1E65E3B48();
    v10 = sub_1E65E6338();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v34[0] = v12;
      *v11 = 136315138;
      v13 = sub_1E65DB7F8();
      v31 = v4;
      v15 = sub_1E5DFD4B0(v13, v14, v34);

      *(v11 + 4) = v15;
      _os_log_impl(&dword_1E5DE9000, v9, v10, "Observing placement: %s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v12);
      MEMORY[0x1E694F1C0](v12, -1, -1);
      MEMORY[0x1E694F1C0](v11, -1, -1);

      (*(v5 + 8))(v7, v31);
    }

    else
    {

      (*(v5 + 8))(v7, v4);
    }

    v16 = swift_allocObject();
    swift_weakInit();
    v17 = swift_allocObject();
    swift_weakInit();
    v18 = type metadata accessor for MarketingPlacementObserver();
    v19 = objc_allocWithZone(v18);
    v19[OBJC_IVAR____TtC24FitnessEngagementServiceP33_BEC6C0704903DD2FBF3B8EA6FBD9907426MarketingPlacementObserver_placement] = a1;
    v20 = &v19[OBJC_IVAR____TtC24FitnessEngagementServiceP33_BEC6C0704903DD2FBF3B8EA6FBD9907426MarketingPlacementObserver_onRequestUpdateForDialogPlacement];
    *v20 = &unk_1E660D2E8;
    v20[1] = v16;
    v21 = &v19[OBJC_IVAR____TtC24FitnessEngagementServiceP33_BEC6C0704903DD2FBF3B8EA6FBD9907426MarketingPlacementObserver_onRequestUpdateForEngagementPlacement];
    *v21 = &unk_1E660D2F8;
    v21[1] = v17;
    v33.receiver = v19;
    v33.super_class = v18;
    v22 = objc_msgSendSuper2(&v33, sel_init);
    v23 = v2[17];
    v24 = v2[18];
    __swift_project_boxed_opaque_existential_1(v2 + 14, v23);
    v25 = v22;
    v26 = sub_1E65DB7F8();
    (*(v24 + 16))(v25, v26, v27, v2[19], v2[20], v23, v24);

    swift_beginAccess();
    v28 = v25;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v32 = v2[23];
    v2[23] = 0x8000000000000000;
    sub_1E659A464(v28, a1, isUniquelyReferenced_nonNull_native);
    v2[23] = v32;
    swift_endAccess();
  }
}

uint64_t sub_1E6597824(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a3;
  v4[8] = a4;
  v4[5] = a1;
  v4[6] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E6597848, 0, 0);
}

uint64_t sub_1E6597848()
{
  v1 = v0[5];
  v2 = v0[6];

  v3 = MEMORY[0x1E69431F0](v1, v2);
  if (v3 == 5 || (v4 = v3, swift_beginAccess(), Strong = swift_weakLoadStrong(), (v0[9] = Strong) == 0))
  {
    v9 = v0[1];

    return v9();
  }

  else
  {
    v6 = swift_task_alloc();
    v0[10] = v6;
    *v6 = v0;
    v6[1] = sub_1E6597964;
    v7 = v0[7];

    return sub_1E6597A74(v4, v7);
  }
}

uint64_t sub_1E6597964()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1E6597A74(char a1, uint64_t a2)
{
  *(v3 + 144) = a2;
  *(v3 + 152) = v2;
  *(v3 + 121) = a1;
  v4 = sub_1E65E3B68();
  *(v3 + 160) = v4;
  *(v3 + 168) = *(v4 - 8);
  *(v3 + 176) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6597B38, v2, 0);
}

uint64_t sub_1E6597B38()
{
  v46 = v0;
  v1 = *(v0 + 144);
  if (v1)
  {
    v2 = v1;
    sub_1E65DE2D8();
    v3 = v2;
    v4 = sub_1E65E3B48();
    v5 = sub_1E65E6338();

    v6 = os_log_type_enabled(v4, v5);
    v7 = *(v0 + 168);
    v8 = *(v0 + 176);
    v9 = *(v0 + 160);
    if (v6)
    {
      v44 = *(v0 + 160);
      v10 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v45 = v43;
      *v10 = 136315394;
      v11 = sub_1E65DB7F8();
      v13 = sub_1E5DFD4B0(v11, v12, &v45);

      *(v10 + 4) = v13;
      *(v10 + 12) = 2080;
      v14 = v3;
      v15 = [v14 description];
      v16 = sub_1E65E5C78();
      v42 = v8;
      v18 = v17;

      v19 = sub_1E5DFD4B0(v16, v18, &v45);

      *(v10 + 14) = v19;
      _os_log_impl(&dword_1E5DE9000, v4, v5, "Engagement Placement %s updated with dialog %s", v10, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E694F1C0](v43, -1, -1);
      MEMORY[0x1E694F1C0](v10, -1, -1);

      (*(v7 + 8))(v42, v44);
    }

    else
    {

      (*(v7 + 8))(v8, v9);
    }

    v29 = *(v0 + 144);
    v30 = *(v0 + 152);
    v31 = *(v0 + 121);
    swift_beginAccess();
    v32 = v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v45 = *(v30 + 176);
    *(v30 + 176) = 0x8000000000000000;
    sub_1E5E1B714(v29, 128, v31, isUniquelyReferenced_nonNull_native);
    *(v30 + 176) = v45;
    swift_endAccess();
    swift_beginAccess();
    v34 = *(v30 + 168);
    if (*(v34 + 16))
    {
      v35 = sub_1E5E1B97C(*(v0 + 121));
      if (v36)
      {
        v37 = *(v0 + 144);
        *(v0 + 184) = *(*(v34 + 56) + 8 * v35);
        swift_endAccess();
        *(v0 + 128) = v37;
        *(v0 + 136) = 0;
        v38 = v32;

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07B860, &qword_1E660D2C8);
        sub_1E659B6AC();
        v25 = sub_1E65E5FC8();
        v27 = v39;
        v28 = sub_1E6597F6C;
        goto LABEL_11;
      }
    }

    swift_endAccess();
  }

  else
  {
    v20 = *(v0 + 152);
    v21 = *(v0 + 121);
    swift_beginAccess();
    sub_1E6596778(0, 254, v21);
    swift_endAccess();
    swift_beginAccess();
    v22 = *(v20 + 168);
    if (*(v22 + 16))
    {
      v23 = sub_1E5E1B97C(*(v0 + 121));
      if (v24)
      {
        *(v0 + 192) = *(*(v22 + 56) + 8 * v23);
        swift_endAccess();
        *(v0 + 112) = 0;
        *(v0 + 120) = -1;

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07B860, &qword_1E660D2C8);
        sub_1E659B6AC();
        v25 = sub_1E65E5FC8();
        v27 = v26;
        v28 = sub_1E659BA74;
LABEL_11:

        return MEMORY[0x1EEE6DFA0](v28, v25, v27);
      }
    }

    swift_endAccess();
  }

  v40 = *(v0 + 8);

  return v40();
}

uint64_t sub_1E6597F6C()
{
  v2 = *(v0 + 144);
  v1 = *(v0 + 152);
  sub_1E65E1818();

  return MEMORY[0x1EEE6DFA0](sub_1E659BA80, v1, 0);
}

uint64_t sub_1E6597FF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a3;
  v4[8] = a4;
  v4[5] = a1;
  v4[6] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E6598014, 0, 0);
}

uint64_t sub_1E6598014()
{
  v1 = v0[5];
  v2 = v0[6];

  v3 = MEMORY[0x1E69431F0](v1, v2);
  if (v3 == 5 || (v4 = v3, swift_beginAccess(), Strong = swift_weakLoadStrong(), (v0[9] = Strong) == 0))
  {
    v9 = v0[1];

    return v9();
  }

  else
  {
    v6 = swift_task_alloc();
    v0[10] = v6;
    *v6 = v0;
    v6[1] = sub_1E659BA70;
    v7 = v0[7];

    return sub_1E6598130(v4, v7);
  }
}

uint64_t sub_1E6598130(char a1, uint64_t a2)
{
  *(v3 + 144) = a2;
  *(v3 + 152) = v2;
  *(v3 + 121) = a1;
  v4 = sub_1E65E3B68();
  *(v3 + 160) = v4;
  *(v3 + 168) = *(v4 - 8);
  *(v3 + 176) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E65981F4, v2, 0);
}

uint64_t sub_1E65981F4()
{
  v46 = v0;
  v1 = *(v0 + 144);
  if (v1)
  {
    v2 = v1;
    sub_1E65DE2D8();
    v3 = v2;
    v4 = sub_1E65E3B48();
    v5 = sub_1E65E6338();

    v6 = os_log_type_enabled(v4, v5);
    v7 = *(v0 + 168);
    v8 = *(v0 + 176);
    v9 = *(v0 + 160);
    if (v6)
    {
      v44 = *(v0 + 160);
      v10 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v45 = v43;
      *v10 = 136315394;
      v11 = sub_1E65DB7F8();
      v13 = sub_1E5DFD4B0(v11, v12, &v45);

      *(v10 + 4) = v13;
      *(v10 + 12) = 2080;
      v14 = v3;
      v15 = [v14 description];
      v16 = sub_1E65E5C78();
      v42 = v8;
      v18 = v17;

      v19 = sub_1E5DFD4B0(v16, v18, &v45);

      *(v10 + 14) = v19;
      _os_log_impl(&dword_1E5DE9000, v4, v5, "Engagement Placement %s updated with request %s", v10, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E694F1C0](v43, -1, -1);
      MEMORY[0x1E694F1C0](v10, -1, -1);

      (*(v7 + 8))(v42, v44);
    }

    else
    {

      (*(v7 + 8))(v8, v9);
    }

    v29 = *(v0 + 144);
    v30 = *(v0 + 152);
    v31 = *(v0 + 121);
    swift_beginAccess();
    v32 = v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v45 = *(v30 + 176);
    *(v30 + 176) = 0x8000000000000000;
    sub_1E5E1B714(v29, 129, v31, isUniquelyReferenced_nonNull_native);
    *(v30 + 176) = v45;
    swift_endAccess();
    swift_beginAccess();
    v34 = *(v30 + 168);
    if (*(v34 + 16))
    {
      v35 = sub_1E5E1B97C(*(v0 + 121));
      if (v36)
      {
        v37 = *(v0 + 144);
        *(v0 + 184) = *(*(v34 + 56) + 8 * v35);
        swift_endAccess();
        *(v0 + 128) = v37;
        *(v0 + 136) = 1;
        v38 = v32;

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07B860, &qword_1E660D2C8);
        sub_1E659B6AC();
        v25 = sub_1E65E5FC8();
        v27 = v39;
        v28 = sub_1E659862C;
        goto LABEL_11;
      }
    }

    swift_endAccess();
  }

  else
  {
    v20 = *(v0 + 152);
    v21 = *(v0 + 121);
    swift_beginAccess();
    sub_1E6596778(0, 254, v21);
    swift_endAccess();
    swift_beginAccess();
    v22 = *(v20 + 168);
    if (*(v22 + 16))
    {
      v23 = sub_1E5E1B97C(*(v0 + 121));
      if (v24)
      {
        *(v0 + 192) = *(*(v22 + 56) + 8 * v23);
        swift_endAccess();
        *(v0 + 112) = 0;
        *(v0 + 120) = -1;

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07B860, &qword_1E660D2C8);
        sub_1E659B6AC();
        v25 = sub_1E65E5FC8();
        v27 = v26;
        v28 = sub_1E6598718;
LABEL_11:

        return MEMORY[0x1EEE6DFA0](v28, v25, v27);
      }
    }

    swift_endAccess();
  }

  v40 = *(v0 + 8);

  return v40();
}

uint64_t sub_1E659862C()
{
  v2 = *(v0 + 144);
  v1 = *(v0 + 152);
  sub_1E65E1818();

  return MEMORY[0x1EEE6DFA0](sub_1E65986B0, v1, 0);
}

uint64_t sub_1E65986B0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E6598718()
{
  sub_1E65E1818();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E6598834(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a6;
  v7[6] = a7;
  v7[3] = a4;
  v7[4] = a5;
  v7[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1E659885C, 0, 0);
}

uint64_t sub_1E659885C()
{
  v1 = (*(v0 + 24) + OBJC_IVAR____TtC24FitnessEngagementServiceP33_BEC6C0704903DD2FBF3B8EA6FBD9907426MarketingPlacementObserver_onRequestUpdateForDialogPlacement);
  v2 = *v1;
  *(v0 + 56) = *v1;
  if (v2)
  {
    v9 = (v2 + *v2);
    v3 = swift_task_alloc();
    *(v0 + 64) = v3;
    *v3 = v0;
    v3[1] = sub_1E65989A8;
    v4 = *(v0 + 40);
    v5 = *(v0 + 48);
    v6 = *(v0 + 32);

    return v9(v6, v4, v5);
  }

  else
  {
    **(v0 + 16) = 1;
    v8 = *(v0 + 8);

    return v8();
  }
}

uint64_t sub_1E65989A8()
{

  return MEMORY[0x1EEE6DFA0](sub_1E657688C, 0, 0);
}

uint64_t sub_1E6598CE8(void *a1, void *a2, uint64_t a3, int a4, void *aBlock, void *a6)
{
  v6[3] = a2;
  v6[4] = a6;
  v6[2] = a1;
  v6[5] = _Block_copy(aBlock);
  v10 = sub_1E65E5C78();
  v12 = v11;
  v6[6] = v11;
  v13 = a1;
  v14 = a2;
  a6;
  v15 = swift_task_alloc();
  v6[7] = v15;
  *v15 = v6;
  v15[1] = sub_1E6598DE0;

  return sub_1E659AFD4(a2, v10, v12);
}

uint64_t sub_1E6598DE0(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 32);
  v7 = *(*v2 + 24);
  v8 = *(*v2 + 16);
  v9 = *v2;

  v10 = *(v5 + 40);
  if (v3)
  {
    v11 = sub_1E65D73A8();

    (v10)[2](v10, 0, v11);
    _Block_release(v10);
  }

  else
  {
    (v10)[2](*(v5 + 40), a1, 0);
    _Block_release(v10);
  }

  v12 = *(v9 + 8);

  return v12();
}

uint64_t sub_1E6599164(int a1, int a2, void *aBlock)
{
  *(v3 + 16) = _Block_copy(aBlock);

  return MEMORY[0x1EEE6DFA0](sub_1E65991D0, 0, 0);
}

uint64_t sub_1E65991D0(uint64_t a1)
{
  v2 = *(v1 + 16);
  sub_1E6599984();
  v3 = swift_allocError();
  *v4 = 0;
  swift_willThrow();
  v5 = sub_1E65D73A8();

  (v2)[2](v2, 0, v5);
  _Block_release(v2);
  v6 = *(v1 + 8);

  return v6();
}

uint64_t sub_1E6599434(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7F && *(a1 + 9))
  {
    return (*a1 + 127);
  }

  v3 = (*(a1 + 8) & 0x7E | (*(a1 + 8) >> 7)) ^ 0x7F;
  if (v3 >= 0x7E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1E6599484(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *(result + 8) = 0;
    *result = a2 - 127;
    if (a3 >= 0x7F)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 2 * (((-a2 >> 1) & 0x3F) - (a2 << 6));
    }
  }

  return result;
}

uint64_t sub_1E65994FC(int a1, int a2, void *aBlock)
{
  *(v3 + 16) = _Block_copy(aBlock);

  return MEMORY[0x1EEE6DFA0](sub_1E659BA78, 0, 0);
}

uint64_t sub_1E6599568()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1E5DFE6BC;

  return sub_1E65994FC(v2, v3, v4);
}

uint64_t sub_1E6599628(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_1E5DFE6BC;

  return v6();
}

uint64_t sub_1E6599710()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1E5DFE6BC;

  return sub_1E6599628(v2, v3, v4);
}

uint64_t sub_1E65997D0(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_1E5DFA78C;

  return v7();
}

uint64_t sub_1E65998B8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1E5DFE6BC;

  return sub_1E65997D0(a1, v4, v5, v6);
}

unint64_t sub_1E6599984()
{
  result = qword_1EE2D58A8;
  if (!qword_1EE2D58A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D58A8);
  }

  return result;
}

uint64_t sub_1E65999D8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1E5DFE6BC;

  return sub_1E6599164(v2, v3, v4);
}

uint64_t sub_1E6599A98()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v7 = v0[6];
  v6 = v0[7];
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_1E5DFE6BC;

  return sub_1E6598CE8(v2, v3, v4, v5, v7, v6);
}

void *sub_1E6599B6C(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B890, &qword_1E660D320);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B898, &qword_1E660D328) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B898, &qword_1E660D328) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_1E6599D5C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B880, &qword_1E660D300);
  v31 = v4;
  result = sub_1E65E6A18();
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
      v20 = *(*(v5 + 48) + v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v31 & 1) == 0)
      {
        v22 = v21;
      }

      sub_1E65E6D28();
      sub_1E65DB7F8();
      sub_1E65E5D78();

      result = sub_1E65E6D78();
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
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
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
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

    if ((v31 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v2;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1E659A004(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07B870, &qword_1E660D2D0);
  v30 = v4;
  result = sub_1E65E6A18();
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
      v20 = *(*(v5 + 48) + v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v30 & 1) == 0)
      {
      }

      sub_1E65E6D28();
      sub_1E65DB7F8();
      sub_1E65E5D78();

      result = sub_1E65E6D78();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
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

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1E659A2B0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1E65E6758() + 1) & ~v5;
    do
    {
      sub_1E65E6D28();
      sub_1E65DB7F8();
      sub_1E65E5D78();

      result = sub_1E65E6D78();
      v9 = result & v7;
      if (v3 >= v8)
      {
        if (v9 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v9 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v9)
      {
LABEL_10:
        v10 = *(a2 + 48);
        v11 = (v10 + v3);
        v12 = (v10 + v6);
        if (v3 != v6 || v11 >= v12 + 1)
        {
          *v11 = *v12;
        }

        v13 = *(a2 + 56);
        v14 = (v13 + 16 * v3);
        v15 = (v13 + 16 * v6);
        if (16 * v3 != 16 * v6 || (v3 = v6, v14 >= v15 + 1))
        {
          *v14 = *v15;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v16 = *(a2 + 16);
  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v18;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_1E659A464(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_1E5E1B97C(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 >= v14 && (a3 & 1) != 0)
  {
LABEL_8:
    v19 = *v4;
    if (v15)
    {
      *(v19[7] + 8 * result) = a1;

      return MEMORY[0x1EEE66BB8]();
    }

    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + result) = a2;
    *(v19[7] + 8 * result) = a1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return result;
    }

    goto LABEL_15;
  }

  if (v16 >= v14 && (a3 & 1) == 0)
  {
    v17 = result;
    sub_1E659A868();
    result = v17;
    goto LABEL_8;
  }

  sub_1E6599D5C(v14, a3 & 1);
  result = sub_1E5E1B97C(a2);
  if ((v15 & 1) == (v18 & 1))
  {
    goto LABEL_8;
  }

LABEL_16:
  sub_1E65E6C68();
  __break(1u);
  return MEMORY[0x1EEE66BB8]();
}

unint64_t sub_1E659A5AC(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_1E5E1B97C(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_1E659A004(v14, a3 & 1);
      result = sub_1E5E1B97C(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        result = sub_1E65E6C68();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_1E659A9C4();
      result = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + result) = a2;
    *(v19[7] + 8 * result) = a1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return result;
    }

    goto LABEL_15;
  }

  *(v19[7] + 8 * result) = a1;
}

void sub_1E659A6F8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B888, &qword_1E660D310);
  v2 = *v0;
  v3 = sub_1E65E6A08();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = *(v2 + 56) + 16 * v17;
        v19 = *v18;
        v20 = *(v18 + 8);
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        v21 = *(v4 + 56) + 16 * v17;
        *v21 = v19;
        *(v21 + 8) = v20;
        sub_1E659B890(v19, v20);
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

      v16 = *(v2 + 64 + 8 * v8);
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

id sub_1E659A868()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B880, &qword_1E660D300);
  v2 = *v0;
  v3 = sub_1E65E6A08();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        *(*(v4 + 56) + 8 * v17) = v18;
        result = v18;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void sub_1E659A9C4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07B870, &qword_1E660D2D0);
  v2 = *v0;
  v3 = sub_1E65E6A08();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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

      v16 = *(v2 + 64 + 8 * v8);
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

uint64_t sub_1E659AB20(uint64_t result)
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
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = sub_1E6599B6C(isUniquelyReferenced_nonNull_native, v12, 1, v3);
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
  v8 = (v3[3] >> 1) - v3[2];
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B898, &qword_1E660D328);
  if (v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = v3[2];
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    v3[2] = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1E659AC58(void *a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v32 - v9;
  v11 = sub_1E65E3B68();
  v36 = *(v11 - 8);
  v37 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E65DE2D8();
  v14 = a1;

  v15 = sub_1E65E3B48();
  v16 = sub_1E65E6338();
  v35 = v14;

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v34 = v10;
    v18 = v17;
    v33 = swift_slowAlloc();
    v39 = v33;
    *v18 = 136315394;
    *(v18 + 4) = sub_1E5DFD4B0(a2, a3, &v39);
    *(v18 + 12) = 2080;
    v38 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07B850, &qword_1E660D2B8);
    v19 = sub_1E65E6638();
    v21 = sub_1E5DFD4B0(v19, v20, &v39);

    *(v18 + 14) = v21;
    v4 = v3;
    _os_log_impl(&dword_1E5DE9000, v15, v16, "Engagement Placement %s updated with dialog request %s", v18, 0x16u);
    v22 = v33;
    swift_arrayDestroy();
    MEMORY[0x1E694F1C0](v22, -1, -1);
    v23 = v18;
    v10 = v34;
    MEMORY[0x1E694F1C0](v23, -1, -1);
  }

  (*(v36 + 8))(v13, v37);
  if (sub_1E65DB7F8() == a2 && v24 == a3)
  {

    goto LABEL_10;
  }

  v26 = sub_1E65E6C18();

  if (v26)
  {
LABEL_10:
    v28 = sub_1E65E60A8();
    (*(*(v28 - 8) + 56))(v10, 1, 1, v28);
    v29 = swift_allocObject();
    v29[2] = 0;
    v29[3] = 0;
    v29[4] = v4;
    v29[5] = a2;
    v29[6] = a3;
    v29[7] = a1;

    v30 = v35;
    v31 = v4;
    sub_1E64B83F8(0, 0, v10, &unk_1E660D2B0, v29);
  }

  return result;
}

uint64_t sub_1E659AFD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  v5 = sub_1E65E3B68();
  v4[7] = v5;
  v4[8] = *(v5 - 8);
  v4[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E659B098, 0, 0);
}

uint64_t sub_1E659B098(uint64_t a1)
{
  v36 = v1;
  v2 = v1[3];
  sub_1E65DE2D8();
  v3 = v2;

  v4 = sub_1E65E3B48();
  v5 = sub_1E65E6338();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v1[8];
    v33 = v1[9];
    v7 = v1[7];
    v9 = v1[4];
    v8 = v1[5];
    v10 = v1[3];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v35[0] = v12;
    *v11 = 136315394;
    *(v11 + 4) = sub_1E5DFD4B0(v9, v8, v35);
    *(v11 + 12) = 2080;
    v1[2] = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07B840, &unk_1E660D298);
    v13 = sub_1E65E6638();
    v15 = sub_1E5DFD4B0(v13, v14, v35);

    *(v11 + 14) = v15;
    _os_log_impl(&dword_1E5DE9000, v4, v5, "Engagement Placement %s updated with engagement request %s", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E694F1C0](v12, -1, -1);
    MEMORY[0x1E694F1C0](v11, -1, -1);

    (*(v6 + 8))(v33, v7);
  }

  else
  {
    v17 = v1[8];
    v16 = v1[9];
    v18 = v1[7];

    (*(v17 + 8))(v16, v18);
  }

  v19 = v1[5];
  v20 = v1[4];
  if (sub_1E65DB7F8() == v20 && v21 == v19)
  {
  }

  else
  {
    v23 = sub_1E65E6C18();

    if ((v23 & 1) == 0)
    {
      v24 = 2;
LABEL_16:
      sub_1E6599984();
      swift_allocError();
      *v31 = v24;
      swift_willThrow();

      v32 = v1[1];

      return v32();
    }
  }

  v25 = (v1[6] + OBJC_IVAR____TtC24FitnessEngagementServiceP33_BEC6C0704903DD2FBF3B8EA6FBD9907426MarketingPlacementObserver_onRequestUpdateForEngagementPlacement);
  if (!*v25)
  {
    v24 = 0;
    goto LABEL_16;
  }

  v34 = (*v25 + **v25);
  v26 = swift_task_alloc();
  v1[10] = v26;
  *v26 = v1;
  v26[1] = sub_1E659B42C;
  v28 = v1[4];
  v27 = v1[5];
  v29 = v1[3];

  return v34(v28, v27, v29);
}

uint64_t sub_1E659B42C()
{

  return MEMORY[0x1EEE6DFA0](sub_1E659B528, 0, 0);
}

uint64_t sub_1E659B528()
{
  sub_1E6599984();
  swift_allocError();
  *v1 = 0;
  swift_willThrow();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1E659B5C4(uint64_t a1)
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
  v10[1] = sub_1E5DFE6BC;

  return sub_1E6598834(a1, v4, v5, v6, v7, v9, v8);
}

id sub_1E659B698(id result, char a2)
{
  if (a2 != -1)
  {
    return result;
  }

  return result;
}

unint64_t sub_1E659B6AC()
{
  result = qword_1EE2D64A8;
  if (!qword_1EE2D64A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ED07B860, &qword_1E660D2C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D64A8);
  }

  return result;
}

void sub_1E659B710(id a1, char a2)
{
  if (a2 != -1)
  {
  }
}

uint64_t sub_1E659B724(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_1E5DFE6BC;

  return sub_1E6597824(a1, a2, a3, v3);
}

uint64_t sub_1E659B7D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_1E5DFE6BC;

  return sub_1E6597FF0(a1, a2, a3, v3);
}

void sub_1E659B884(void *a1, char a2)
{
  if (a2 < 0)
  {
  }

  else
  {
  }
}

void sub_1E659B890(void *a1, char a2)
{
  if (a2 < 0)
  {
    v2 = a1;
  }

  else
  {
  }
}

uint64_t sub_1E659B8A8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1E5DFE6BC;

  return sub_1E65972B8(a1, v4, v5, v6, v7);
}

uint64_t objectdestroy_94Tm_0()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1E659B9AC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1E5DFE6BC;

  return sub_1E65970F4(a1, v4, v5, v6, v7);
}