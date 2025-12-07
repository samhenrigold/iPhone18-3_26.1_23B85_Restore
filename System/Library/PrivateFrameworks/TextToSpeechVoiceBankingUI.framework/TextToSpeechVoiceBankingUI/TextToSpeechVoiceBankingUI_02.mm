void *sub_26EE40AB0(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806C9E50, &qword_26EF3FC20);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_26EE40B24(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806C9E50, &qword_26EF3FC20);
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

uint64_t sub_26EE40C18(uint64_t a1)
{
  v1 = sub_26EF3869C();
  v3 = v2;
  v4 = sub_26EF38A6C();
  if (v3)
  {
    if (v1 == v4 && v3 == v5)
    {
      v7 = 1;
    }

    else
    {
      v7 = sub_26EF3B82C();
    }
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t sub_26EE40CBC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26EE40D04(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_26EE40D74()
{
  v1 = type metadata accessor for DeleteVoiceButton(0);
  v2 = *(*(v1 - 1) + 80);
  v16 = *(*(v1 - 1) + 64);
  v3 = sub_26EF38AAC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v17 = *(v4 + 64);
  swift_unknownObjectRelease();
  v6 = v0 + ((v2 + 32) & ~v2);
  sub_26EE05C9C(*v6, *(v6 + 8));
  v7 = v1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7510, &unk_26EF3E320);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_26EF3988C();
    (*(*(v8 - 8) + 8))(v6 + v7, v8);
  }

  else
  {
  }

  v9 = v1[7];
  if (!(*(v4 + 48))(v6 + v9, 1, v3))
  {
    (*(v4 + 8))(v6 + v9, v3);
  }

  v10 = v1[8];
  v11 = sub_26EF38DBC();
  v12 = *(v11 - 8);
  if (!(*(v12 + 48))(v6 + v10, 1, v11))
  {
    (*(v12 + 8))(v6 + v10, v11);
  }

  v13 = v2 | v5;
  v14 = (((v2 + 32) & ~v2) + v16 + v5) & ~v5;

  (*(v4 + 8))(v0 + v14, v3);

  return MEMORY[0x2821FE8E8](v0, v14 + v17, v13 | 7);
}

uint64_t sub_26EE4103C()
{
  v2 = *(type metadata accessor for DeleteVoiceButton(0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(sub_26EF38AAC() - 8);
  v6 = (v3 + v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_26EE15538;

  return sub_26EE3F178(v7, v8, v9, v0 + v3, v0 + v6);
}

uint64_t VoiceBankingNavigationModel.itemPath.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26EF3952C();

  return v1;
}

uint64_t VoiceBankingNavigationModel.itemPath.setter(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_26EF3953C();
}

uint64_t (*VoiceBankingNavigationModel.itemPath.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
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
  *(v3 + 48) = sub_26EF3951C();
  return sub_26EE44158;
}

uint64_t sub_26EE41378(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C75A8, &qword_26EF3E4A8);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C75A0, &qword_26EF3E4A0);
  sub_26EF3950C();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t VoiceBankingNavigationModel.$itemPath.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C75A8, &qword_26EF3E4A8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C75A0, &qword_26EF3E4A0);
  sub_26EF3950C();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*VoiceBankingNavigationModel.$itemPath.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C75A8, &qword_26EF3E4A8);
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

  v10 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI27VoiceBankingNavigationModel__itemPath[0];
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C75A0, &qword_26EF3E4A0);
  sub_26EF394FC();
  swift_endAccess();
  return sub_26EE4415C;
}

uint64_t VoiceBankingNavigationModel.columnVisibility.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26EF3952C();
}

uint64_t sub_26EE4181C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26EF3952C();
}

uint64_t sub_26EE41898(uint64_t a1, uint64_t *a2)
{
  v3 = sub_26EF3A34C();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  swift_getKeyPath();
  swift_getKeyPath();
  v10(v7, v9, v3);

  sub_26EF3953C();
  return (*(v4 + 8))(v9, v3);
}

uint64_t VoiceBankingNavigationModel.columnVisibility.setter(uint64_t a1)
{
  v2 = sub_26EF3A34C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  (*(v3 + 16))(v5, a1, v2);

  sub_26EF3953C();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*VoiceBankingNavigationModel.columnVisibility.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
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
  *(v3 + 48) = sub_26EF3951C();
  return sub_26EE44158;
}

uint64_t sub_26EE41C0C(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C75B8, &qword_26EF3E500);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C75B0, &qword_26EF3E4F8);
  sub_26EF3950C();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t VoiceBankingNavigationModel.$columnVisibility.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C75B8, &qword_26EF3E500);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C75B0, &qword_26EF3E4F8);
  sub_26EF3950C();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*VoiceBankingNavigationModel.$columnVisibility.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C75B8, &qword_26EF3E500);
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

  v10 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI27VoiceBankingNavigationModel__columnVisibility;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C75B0, &qword_26EF3E4F8);
  sub_26EF394FC();
  swift_endAccess();
  return sub_26EE4415C;
}

uint64_t (*VoiceBankingNavigationModel.presentManagerRootView.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
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
  *(v3 + 48) = sub_26EF3951C();
  return sub_26EE44158;
}

uint64_t sub_26EE42164(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C75C0, &qword_26EF44060);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806C9BA0, &unk_26EF3E550);
  sub_26EF3950C();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t VoiceBankingNavigationModel.$presentManagerRootView.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C75C0, &qword_26EF44060);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806C9BA0, &unk_26EF3E550);
  sub_26EF3950C();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*VoiceBankingNavigationModel.$presentManagerRootView.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C75C0, &qword_26EF44060);
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

  v10 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI27VoiceBankingNavigationModel__presentManagerRootView[0];
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806C9BA0, &unk_26EF3E550);
  sub_26EF394FC();
  swift_endAccess();
  return sub_26EE4415C;
}

uint64_t sub_26EE425A4(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26EF3952C();

  return v3;
}

uint64_t sub_26EE42624@<X0>(_BYTE *a4@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26EF3952C();

  *a4 = v6;
  return result;
}

uint64_t sub_26EE426B4(char *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_26EF3953C();
}

uint64_t sub_26EE42738(char a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_26EF3953C();
}

uint64_t (*VoiceBankingNavigationModel.presentVoiceRootView.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
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
  *(v3 + 48) = sub_26EF3951C();
  return sub_26EE42848;
}

uint64_t sub_26EE42884(char *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C75C0, &qword_26EF44060);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806C9BA0, &unk_26EF3E550);
  sub_26EF3950C();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t VoiceBankingNavigationModel.$presentVoiceRootView.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C75C0, &qword_26EF44060);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806C9BA0, &unk_26EF3E550);
  sub_26EF3950C();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*VoiceBankingNavigationModel.$presentVoiceRootView.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C75C0, &qword_26EF44060);
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

  v10 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI27VoiceBankingNavigationModel__presentVoiceRootView[0];
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806C9BA0, &unk_26EF3E550);
  sub_26EF394FC();
  swift_endAccess();
  return sub_26EE42CB0;
}

uint64_t VoiceBankingNavigationModel.initialViewType.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26EF3952C();
}

uint64_t sub_26EE42D2C@<X0>(uint64_t a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26EF3952C();

  *a2 = v4;
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_26EE42DB4(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_26EF3953C();
}

uint64_t VoiceBankingNavigationModel.initialViewType.setter(uint64_t *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_26EF3953C();
}

uint64_t (*VoiceBankingNavigationModel.initialViewType.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
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
  *(v3 + 48) = sub_26EF3951C();
  return sub_26EE44158;
}

void sub_26EE42F5C(void *a1)
{
  v1 = *a1;
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t sub_26EE42FE0(void *a1, uint64_t *a2, uint64_t *a3)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  sub_26EF394FC();
  return swift_endAccess();
}

uint64_t sub_26EE43074(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t *a5, uint64_t *a6)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  sub_26EF394FC();
  return swift_endAccess();
}

uint64_t sub_26EE430F0(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C75D0, &qword_26EF3E5F8);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C75C8, &qword_26EF3E5F0);
  sub_26EF3950C();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t VoiceBankingNavigationModel.$initialViewType.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C75D0, &qword_26EF3E5F8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C75C8, &qword_26EF3E5F0);
  sub_26EF3950C();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*VoiceBankingNavigationModel.$initialViewType.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C75D0, &qword_26EF3E5F8);
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

  v10 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI27VoiceBankingNavigationModel__initialViewType[0];
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C75C8, &qword_26EF3E5F0);
  sub_26EF394FC();
  swift_endAccess();
  return sub_26EE4415C;
}

void sub_26EE4351C(uint64_t a1, char a2)
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
    sub_26EF3950C();
    swift_endAccess();
    v9 = *(v7 + 8);
    v9(v5, v8);
    v10 = v11;
    v9(v11, v8);
  }

  else
  {
    swift_beginAccess();
    sub_26EF3950C();
    swift_endAccess();
    v10 = v11;
    (*(v7 + 8))(v11, v8);
  }

  free(v10);
  free(v5);
  free(v6);

  free(v3);
}

uint64_t VoiceBankingNavigationModel.__allocating_init(itemPath:columnVisibility:)(uint64_t a1, char *a2)
{
  v4 = swift_allocObject();
  VoiceBankingNavigationModel.init(itemPath:columnVisibility:)(a1, a2);
  return v4;
}

uint64_t VoiceBankingNavigationModel.init(itemPath:columnVisibility:)(uint64_t a1, char *a2)
{
  v29 = a2;
  v26 = a1;
  v3 = sub_26EF3A34C();
  v27 = *(v3 - 8);
  v4 = MEMORY[0x28223BE20](v3);
  v28 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v25 = &v24 - v6;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C75C8, &qword_26EF3E5F0);
  v7 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v9 = &v24 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806C9BA0, &unk_26EF3E550);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v24 - v12;
  v14 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI27VoiceBankingNavigationModel__presentManagerRootView[0];
  LOBYTE(v31) = 0;
  sub_26EF394EC();
  v15 = *(v11 + 32);
  v15(v2 + v14, v13, v10);
  v16 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI27VoiceBankingNavigationModel__presentVoiceRootView[0];
  LOBYTE(v31) = 0;
  sub_26EF394EC();
  v15(v2 + v16, v13, v10);
  v17 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI27VoiceBankingNavigationModel__initialViewType[0];
  v31 = 0;
  v32 = 1;
  sub_26EF394EC();
  (*(v7 + 32))(v2 + v17, v9, v24);
  swift_beginAccess();
  v30 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6C60, &qword_26EF3E450);
  sub_26EF394EC();
  swift_endAccess();
  v18 = v27;
  v19 = *(v27 + 16);
  v20 = v25;
  v21 = v29;
  v19(v25, v29, v3);
  swift_beginAccess();
  v19(v28, v20, v3);
  sub_26EF394EC();
  v22 = *(v18 + 8);
  v22(v20, v3);
  swift_endAccess();
  v22(v21, v3);
  return v2;
}

Swift::Void __swiftcall VoiceBankingNavigationModel.dismissSheet()()
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_26EF3953C();
  swift_getKeyPath();
  swift_getKeyPath();

  sub_26EF3953C();
}

uint64_t VoiceBankingNavigationModel.deinit()
{
  v1 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI27VoiceBankingNavigationModel__itemPath[0];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C75A0, &qword_26EF3E4A0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI27VoiceBankingNavigationModel__columnVisibility;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C75B0, &qword_26EF3E4F8);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI27VoiceBankingNavigationModel__presentManagerRootView[0];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806C9BA0, &unk_26EF3E550);
  v7 = *(*(v6 - 8) + 8);
  v7(v0 + v5, v6);
  v7(v0 + OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI27VoiceBankingNavigationModel__presentVoiceRootView[0], v6);
  v8 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI27VoiceBankingNavigationModel__initialViewType[0];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C75C8, &qword_26EF3E5F0);
  (*(*(v9 - 8) + 8))(v0 + v8, v9);
  return v0;
}

uint64_t VoiceBankingNavigationModel.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI27VoiceBankingNavigationModel__itemPath[0];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C75A0, &qword_26EF3E4A0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI27VoiceBankingNavigationModel__columnVisibility;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C75B0, &qword_26EF3E4F8);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI27VoiceBankingNavigationModel__presentManagerRootView[0];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806C9BA0, &unk_26EF3E550);
  v7 = *(*(v6 - 8) + 8);
  v7(v0 + v5, v6);
  v7(v0 + OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI27VoiceBankingNavigationModel__presentVoiceRootView[0], v6);
  v8 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI27VoiceBankingNavigationModel__initialViewType[0];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C75C8, &qword_26EF3E5F0);
  (*(*(v9 - 8) + 8))(v0 + v8, v9);
  v10 = *(*v0 + 48);
  v11 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v10, v11);
}

uint64_t type metadata accessor for VoiceBankingNavigationModel(uint64_t a1)
{
  result = qword_2806CB6C0;
  if (!qword_2806CB6C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26EE43EC4(uint64_t a1)
{
  sub_26EE44050(319);
  if (v1 <= 0x3F)
  {
    sub_26EE440B4(319);
    if (v2 <= 0x3F)
    {
      sub_26EE4410C(319, &qword_2806C75E8, MEMORY[0x277D839B0]);
      if (v3 <= 0x3F)
      {
        sub_26EE4410C(319, &qword_2806C75F0, &type metadata for VBNavigationItem);
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_26EE44050(uint64_t a1)
{
  if (!qword_2806C75D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C6C60, &qword_26EF3E450);
    v1 = sub_26EF3954C();
    if (!v2)
    {
      atomic_store(v1, &qword_2806C75D8);
    }
  }
}

void sub_26EE440B4(uint64_t a1)
{
  if (!qword_2806C75E0)
  {
    sub_26EF3A34C();
    v1 = sub_26EF3954C();
    if (!v2)
    {
      atomic_store(v1, &qword_2806C75E0);
    }
  }
}

void sub_26EE4410C(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_26EF3954C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_26EE441B0()
{
  swift_getKeyPath();
  (*(*v0 + 384))();

  swift_beginAccess();
  v1 = v0[2];

  return v1;
}

uint64_t sub_26EE44240@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 152))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_26EE4428C(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 160);

  return v4(v2, v3);
}

uint64_t sub_26EE442F4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = v2[2] == a1 && v2[3] == a2;
  if (v5 || (sub_26EF3B82C() & 1) != 0)
  {
    v2[2] = a1;
    v2[3] = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v8 = MEMORY[0x28223BE20](KeyPath);
    v9 = v2;
    v10 = a1;
    v11 = a2;
    (*(*v2 + 392))(v8, sub_26EE44428);
  }
}

uint64_t sub_26EE44428()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  swift_beginAccess();
  *(v1 + 16) = v2;
  *(v1 + 24) = v3;
}

uint64_t (*sub_26EE44490(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 384))(KeyPath);

  v4[5] = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI20AUParameterViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_26EE52938(&qword_2806C75F8, type metadata accessor for AUParameterViewModel, &unk_26EF3EB10);
  sub_26EF3802C();

  v4[7] = sub_26EE44160(v4);
  return sub_26EE445E0;
}

uint64_t sub_26EE4465C()
{
  swift_getKeyPath();
  (*(*v0 + 384))();

  swift_beginAccess();
  return v0[4];
}

uint64_t sub_26EE446DC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 200))();
  *a2 = result;
  return result;
}

uint64_t sub_26EE44770(uint64_t a1)
{
  result = swift_beginAccess();
  if (v1[4] != a1)
  {
    KeyPath = swift_getKeyPath();
    v5 = MEMORY[0x28223BE20](KeyPath);
    v6 = v1;
    v7 = a1;
    (*(*v1 + 392))(v5, sub_26EE44868);
  }

  return result;
}

uint64_t sub_26EE44868()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  result = swift_beginAccess();
  *(v2 + 32) = v1;
  return result;
}

uint64_t (*sub_26EE448B8(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 384))(KeyPath);

  v4[5] = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI20AUParameterViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_26EE52938(&qword_2806C75F8, type metadata accessor for AUParameterViewModel, &unk_26EF3EB10);
  sub_26EF3802C();

  v4[7] = sub_26EE4460C(v4);
  return sub_26EE44A08;
}

float sub_26EE44A68()
{
  swift_getKeyPath();
  (*(*v0 + 384))();

  swift_beginAccess();
  return v0[10];
}

uint64_t sub_26EE44B84(float a1)
{
  result = swift_beginAccess();
  if (v1[10] == a1)
  {
    v1[10] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v5 = MEMORY[0x28223BE20](KeyPath);
    (*(*v1 + 392))(v5, sub_26EE44C8C);
  }

  return result;
}

uint64_t sub_26EE44C8C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 40) = v2;
  return result;
}

uint64_t (*sub_26EE44CE0(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 384))(KeyPath);

  v4[5] = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI20AUParameterViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_26EE52938(&qword_2806C75F8, type metadata accessor for AUParameterViewModel, &unk_26EF3EB10);
  sub_26EF3802C();

  v4[7] = sub_26EE44A14(v4);
  return sub_26EE44E30;
}

uint64_t sub_26EE44E8C()
{
  swift_getKeyPath();
  (*(*v0 + 384))();

  swift_beginAccess();
  v1 = v0[6];

  return v1;
}

uint64_t sub_26EE44F1C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 296))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_26EE44F70(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 304);

  return v4(v2, v3);
}

uint64_t sub_26EE44FE0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = v2[6] == a1 && v2[7] == a2;
  if (v5 || (sub_26EF3B82C() & 1) != 0)
  {
    v2[6] = a1;
    v2[7] = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v8 = MEMORY[0x28223BE20](KeyPath);
    v9 = v2;
    v10 = a1;
    v11 = a2;
    (*(*v2 + 392))(v8, sub_26EE45114);
  }
}

uint64_t sub_26EE45114()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  swift_beginAccess();
  *(v1 + 48) = v2;
  *(v1 + 56) = v3;
}

uint64_t (*sub_26EE4517C(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 384))(KeyPath);

  v4[5] = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI20AUParameterViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_26EE52938(&qword_2806C75F8, type metadata accessor for AUParameterViewModel, &unk_26EF3EB10);
  sub_26EF3802C();

  v4[7] = sub_26EE44E3C(v4);
  return sub_26EE452CC;
}

id sub_26EE45328()
{
  swift_getKeyPath();
  (*(*v0 + 384))();

  swift_beginAccess();
  v1 = v0[8];

  return v1;
}

uint64_t sub_26EE453B8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 344))();
  *a2 = result;
  return result;
}

void sub_26EE45468(void *a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = v1[8];
  sub_26EE1FAB8(0, &qword_2806C7600, 0x277CEFD30);
  v5 = v4;
  v6 = sub_26EF3B5AC();

  if (v6)
  {
    v7 = v2[8];
    v2[8] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v9 = MEMORY[0x28223BE20](KeyPath);
    v10 = v2;
    v11 = a1;
    (*(*v2 + 392))(v9, sub_26EE455AC);
  }
}

void sub_26EE455AC()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  swift_beginAccess();
  v3 = *(v2 + 64);
  *(v2 + 64) = v1;
  v4 = v1;
}

uint64_t (*sub_26EE45608(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 384))(KeyPath);

  v4[5] = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI20AUParameterViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_26EE52938(&qword_2806C75F8, type metadata accessor for AUParameterViewModel, &unk_26EF3EB10);
  sub_26EF3802C();

  v4[7] = sub_26EE452D8(v4);
  return sub_26EE45758;
}

void sub_26EE45764(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  (*(*a1 + 56))(*a1, 0);
  *v3 = v3[4];
  swift_getKeyPath();
  sub_26EF3801C();

  free(v3);
}

uint64_t sub_26EE457F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, float a7)
{
  v14 = swift_allocObject();
  sub_26EF3803C();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  *(v14 + 32) = a3;
  *(v14 + 40) = a7;
  *(v14 + 48) = a4;
  *(v14 + 56) = a5;
  *(v14 + 64) = a6;
  return v14;
}

uint64_t sub_26EE4588C(uint64_t a1)
{
  (*(*v1 + 296))();
  sub_26EF3B16C();

  v3 = (*(*v1 + 200))(v2);
  v4 = MEMORY[0x274383980](v3);
  (*(*v1 + 248))(v4);
  v5 = sub_26EF3B8AC();
  (*(*v1 + 152))(v5);
  sub_26EF3B16C();
}

uint64_t sub_26EE45B08()
{

  v1 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI20AUParameterViewModel___observationRegistrar;
  v2 = sub_26EF3804C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 12);
  v4 = *(*v0 + 26);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t sub_26EE45BBC()
{
  sub_26EF3B87C();
  (*(*v0 + 376))(v2);
  return sub_26EF3B8CC();
}

uint64_t sub_26EE45C24@<X0>(uint64_t *a1@<X8>)
{
  result = (*(**v1 + 296))();
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_26EE45D10(uint64_t a1)
{
  sub_26EF3B87C();
  (*(**v1 + 376))(v3);
  return sub_26EF3B8CC();
}

uint64_t AUParamView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v363 = a1;
  v310 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7178, &qword_26EF3DD70);
  v309 = *(v310 - 8);
  MEMORY[0x28223BE20](v310);
  v308 = &v289 - v2;
  v329 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7610, &qword_26EF3E748);
  MEMORY[0x28223BE20](v329);
  v311 = &v289 - v3;
  v331 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7618, &qword_26EF3E750);
  MEMORY[0x28223BE20](v331);
  v332 = (&v289 - v4);
  v326 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7620, &qword_26EF3E758);
  MEMORY[0x28223BE20](v326);
  v327 = &v289 - v5;
  v330 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7628, &qword_26EF3E760);
  MEMORY[0x28223BE20](v330);
  v328 = &v289 - v6;
  v362 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7630, &qword_26EF3E768);
  MEMORY[0x28223BE20](v362);
  v333 = &v289 - v7;
  v304 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7638, &qword_26EF3E770);
  MEMORY[0x28223BE20](v304);
  v305 = &v289 - v8;
  v306 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7640, &qword_26EF3E778);
  v290 = *(v306 - 8);
  MEMORY[0x28223BE20](v306);
  v289 = &v289 - v9;
  v299 = sub_26EF3850C();
  v298 = *(v299 - 8);
  MEMORY[0x28223BE20](v299);
  v297 = &v289 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v313 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7648, &qword_26EF3E780);
  v312 = *(v313 - 8);
  MEMORY[0x28223BE20](v313);
  v303 = &v289 - v11;
  v301 = sub_26EF39E1C();
  v296 = *(v301 - 8);
  MEMORY[0x28223BE20](v301);
  v295 = &v289 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v300 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7650, &qword_26EF3E788);
  v294 = *(v300 - 8);
  MEMORY[0x28223BE20](v300);
  v293 = &v289 - v13;
  v316 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7658, &qword_26EF3E790);
  v302 = *(v316 - 8);
  MEMORY[0x28223BE20](v316);
  v315 = &v289 - v14;
  v325 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7660, &qword_26EF3E798);
  MEMORY[0x28223BE20](v325);
  v314 = &v289 - v15;
  v318 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7668, &qword_26EF3E7A0);
  MEMORY[0x28223BE20](v318);
  v319 = &v289 - v16;
  v350 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7670, &qword_26EF3E7A8);
  MEMORY[0x28223BE20](v350);
  v320 = &v289 - v17;
  v18 = sub_26EF39E9C();
  MEMORY[0x28223BE20](v18 - 8);
  v359 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7678, &qword_26EF3E7B0);
  MEMORY[0x28223BE20](v359);
  v361 = &v289 - v19;
  v347 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7680, &qword_26EF3E7B8);
  MEMORY[0x28223BE20](v347);
  v349 = &v289 - v20;
  v322 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7688, &qword_26EF3E7C0);
  MEMORY[0x28223BE20](v322);
  v323 = &v289 - v21;
  v348 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7690, &qword_26EF3E7C8);
  MEMORY[0x28223BE20](v348);
  v324 = &v289 - v22;
  v360 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7698, &qword_26EF3E7D0);
  MEMORY[0x28223BE20](v360);
  v346 = &v289 - v23;
  v291 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C76A0, &qword_26EF3E7D8);
  MEMORY[0x28223BE20](v291);
  v292 = &v289 - v24;
  v25 = type metadata accessor for AUParamView(0);
  v352 = *(v25 - 8);
  MEMORY[0x28223BE20](v25 - 8);
  v356 = v26;
  v357 = &v289 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v355 = sub_26EF39F4C();
  v354 = *(v355 - 8);
  MEMORY[0x28223BE20](v355);
  v353 = &v289 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v341 = sub_26EF3A2EC();
  v340 = *(v341 - 8);
  MEMORY[0x28223BE20](v341);
  v339 = &v289 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7608, &unk_26EF3E738);
  v30 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v32 = &v289 - v31;
  v342 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C76A8, &qword_26EF3E7E0);
  v338 = *(v342 - 8);
  MEMORY[0x28223BE20](v342);
  v337 = &v289 - v33;
  v345 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C76B0, &qword_26EF3E7E8);
  v344 = *(v345 - 8);
  MEMORY[0x28223BE20](v345);
  v343 = &v289 - v34;
  v351 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C76B8, &qword_26EF3E7F0);
  v35 = MEMORY[0x28223BE20](v351);
  v358 = &v289 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x28223BE20](v35);
  v334 = &v289 - v38;
  v39 = MEMORY[0x28223BE20](v37);
  v335 = &v289 - v40;
  MEMORY[0x28223BE20](v39);
  v336 = &v289 - v41;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C76C0, &qword_26EF3E7F8);
  MEMORY[0x28223BE20](v42 - 8);
  v44 = &v289 - v43;
  v45 = sub_26EF384CC();
  v317 = *(v45 - 8);
  v46 = MEMORY[0x28223BE20](v45);
  v48 = &v289 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v46);
  v50 = &v289 - v49;
  v321 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C76C8, &qword_26EF3E800);
  MEMORY[0x28223BE20](v321);
  v307 = &v289 - v51;
  v364 = v1;
  v52 = sub_26EF3AD9C();
  v53 = (*(*v374 + 344))(v52);

  v54 = [v53 unit];

  if (v54 <= 2)
  {
    if (v54)
    {
      if (v54 == 1)
      {
        v153 = sub_26EF3AD9C();
        v154 = (*(*v374 + 344))(v153);

        v155 = [v154 valueStrings];

        if (v155)
        {
          sub_26EF3B20C();

          v156 = sub_26EF3AD9C();
          v157 = (*(*v374 + 152))(v156);
          v159 = v158;

          v366 = v157;
          v367 = v159;
          sub_26EF3ADAC();
          swift_getKeyPath();
          sub_26EF3ADCC();

          v160 = (*(v30 + 8))(v32, v29);
          v370 = v374;
          v371 = v375;
          v372 = v376;
          MEMORY[0x28223BE20](v160);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7748, &qword_26EF3E810);
          v161 = sub_26EE53338();
          v357 = sub_26EE12538(v161, v162, v163);
          v164 = v293;
          sub_26EF3ABAC();

          v165 = v295;
          sub_26EF39E0C();
          v166 = sub_26EE154C8(&qword_2806C76F0, &qword_2806C7650, &qword_26EF3E788, MEMORY[0x277CDF038]);
          v167 = v315;
          v168 = v300;
          v169 = v301;
          v358 = v166;
          sub_26EF3A69C();
          (*(v296 + 8))(v165, v169);
          (*(v294 + 8))(v164, v168);
          v170 = sub_26EF3AD9C();
          v171 = (*(*v374 + 344))(v170);

          v172 = v297;
          sub_26EF3B41C();

          v173 = sub_26EF384EC();
          v175 = v174;
          v176 = (*(v298 + 8))(v172, v299);
          if (v175)
          {
            v356 = &v289;
            MEMORY[0x28223BE20](v176);
            v177 = sub_26EF3AD9C();
            v178 = (*(*v374 + 152))(v177);
            v179 = v169;
            v181 = v180;

            v374 = v178;
            v375 = v181;
            v374 = sub_26EF3A5DC();
            v375 = v182;
            LOBYTE(v376) = v183 & 1;
            v377 = v184;
            v370 = v173;
            v371 = v175;
            v370 = sub_26EF3A5DC();
            v371 = v185;
            LOBYTE(v372) = v186 & 1;
            v373 = v187;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7758, &qword_26EF3E818);
            v366 = v168;
            v367 = v179;
            v368 = v358;
            v369 = MEMORY[0x277CDDDA0];
            OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
            v366 = v316;
            v367 = OpaqueTypeConformance2;
            swift_getOpaqueTypeConformance2();
            v189 = v289;
            sub_26EF3AD5C();
            v190 = v290;
            v191 = v306;
            (*(v290 + 16))(v305, v189, v306);
            swift_storeEnumTagMultiPayload();
            sub_26EE526F4();
            v192 = v303;
            sub_26EF3A06C();
            (*(v190 + 8))(v189, v191);
            v193 = v333;
            v194 = v332;
            v195 = v328;
            v196 = v302;
          }

          else
          {
            v196 = v302;
            (*(v302 + 16))(v305, v167, v316);
            swift_storeEnumTagMultiPayload();
            sub_26EE526F4();
            v374 = v168;
            v375 = v169;
            v376 = v358;
            v377 = MEMORY[0x277CDDDA0];
            swift_getOpaqueTypeConformance2();
            v192 = v303;
            sub_26EF3A06C();
            v193 = v333;
            v194 = v332;
            v195 = v328;
          }

          v288 = v314;
          sub_26EE53400(v192, v314);
          (*(v312 + 56))(v288, 0, 1, v313);
          (*(v196 + 8))(v315, v316);
        }

        else
        {
          v288 = v314;
          (*(v312 + 56))(v314, 1, 1, v313);
          v193 = v333;
          v194 = v332;
          v195 = v328;
        }

        sub_26EE13B88(v288, v327, &qword_2806C7660, &qword_26EF3E798);
        swift_storeEnumTagMultiPayload();
        sub_26EE52554();
        sub_26EE52850();
        sub_26EF3A06C();
        sub_26EE13B88(v195, v194, &qword_2806C7628, &qword_26EF3E760);
        swift_storeEnumTagMultiPayload();
        sub_26EE524C8();
        sub_26EF3A06C();
        sub_26EE14578(v195, &qword_2806C7628, &qword_26EF3E760);
        sub_26EE13B88(v193, v361, &qword_2806C7630, &qword_26EF3E768);
        swift_storeEnumTagMultiPayload();
        sub_26EE52980();
        sub_26EE52D58();
        sub_26EF3A06C();
        sub_26EE14578(v193, &qword_2806C7630, &qword_26EF3E768);
        v150 = v288;
        v151 = &qword_2806C7660;
        v152 = &qword_26EF3E798;
        return sub_26EE14578(v150, v151, v152);
      }

      if (v54 == 2)
      {
        v55 = v364;
        v56 = v357;
        sub_26EE52DE4(v364, v357);
        sub_26EF3B2DC();
        v57 = sub_26EF3B2CC();
        v58 = (*(v352 + 80) + 32) & ~*(v352 + 80);
        v59 = swift_allocObject();
        v60 = MEMORY[0x277D85700];
        *(v59 + 16) = v57;
        *(v59 + 24) = v60;
        sub_26EE52E4C(v56, v59 + v58);
        sub_26EE52DE4(v55, v56);
        v61 = sub_26EF3B2CC();
        v62 = swift_allocObject();
        *(v62 + 16) = v61;
        *(v62 + 24) = v60;
        sub_26EE52E4C(v56, v62 + v58);
        sub_26EF3AC6C();
        MEMORY[0x28223BE20](v374);
        v63 = v308;
        sub_26EF3ABCC();
        v64 = v353;
        sub_26EF39F0C();
        sub_26EE154C8(&qword_2806C7230, &qword_2806C7178, &qword_26EF3DD70, MEMORY[0x277CDF068]);
        v65 = v311;
        v66 = v310;
        sub_26EF3A81C();
        (*(v354 + 8))(v64, v355);
        (*(v309 + 8))(v63, v66);
        sub_26EE13B88(v65, v327, &qword_2806C7610, &qword_26EF3E748);
        swift_storeEnumTagMultiPayload();
        sub_26EE52554();
        sub_26EE52850();
        v67 = v328;
        sub_26EF3A06C();
        sub_26EE13B88(v67, v332, &qword_2806C7628, &qword_26EF3E760);
        swift_storeEnumTagMultiPayload();
        sub_26EE524C8();
        v68 = v333;
        sub_26EF3A06C();
        sub_26EE14578(v67, &qword_2806C7628, &qword_26EF3E760);
        sub_26EE13B88(v68, v361, &qword_2806C7630, &qword_26EF3E768);
        swift_storeEnumTagMultiPayload();
        sub_26EE52980();
        sub_26EE52D58();
        sub_26EF3A06C();
        sub_26EE14578(v68, &qword_2806C7630, &qword_26EF3E768);
        return sub_26EE14578(v65, &qword_2806C7610, &qword_26EF3E748);
      }

      goto LABEL_21;
    }

    v73 = v364;
    sub_26EF3ADAC();
    swift_getKeyPath();
    sub_26EF3ADCC();

    (*(v30 + 8))(v32, v29);
    v74 = v374;
    v75 = v375;
    v76 = v376;
    v77 = sub_26EF3AD9C();
    v78 = (*(*v370 + 344))(v77);

    [v78 minValue];
    v80 = v79;

    v81 = sub_26EF3AD9C();
    v82 = (*(*v370 + 344))(v81);

    [v82 maxValue];
    v84 = v83;

    if (v80 <= v84)
    {
      MEMORY[0x28223BE20](v85);
      v370 = v74;
      v371 = v75;
      v372 = v76;
      v366 = __PAIR64__(LODWORD(v84), LODWORD(v80));
      v365 = 1065353216;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7760, qword_26EF3E820);
      sub_26EE154C8(&qword_2806C7768, &qword_2806C7760, qword_26EF3E820, MEMORY[0x277CE14C0]);
      v86 = v337;
      sub_26EF3AD8C();
      v87 = v339;
      sub_26EF3A2CC();
      v88 = sub_26EE154C8(&qword_2806C7730, &qword_2806C76A8, &qword_26EF3E7E0, MEMORY[0x277CDF0B8]);
      v89 = v343;
      v90 = v342;
      sub_26EF3A7DC();
      (*(v340 + 8))(v87, v341);
      (*(v338 + 8))(v86, v90);
      v91 = sub_26EF3AD9C();
      v92 = (*(*v374 + 152))(v91);
      v94 = v93;

      v374 = v92;
      v375 = v94;
      v370 = v90;
      v371 = v88;
      v95 = swift_getOpaqueTypeConformance2();
      sub_26EE12538(v95, v96, v97);
      v98 = v345;
      sub_26EF3A78C();

      (*(v344 + 8))(v89, v98);
      sub_26EF39E8C();
      sub_26EF39E7C();
      v99 = sub_26EF3AD9C();
      v100 = (*(*v374 + 248))(v99);

      if ((LODWORD(v100) & 0x7FFFFFFFu) <= 0x7F7FFFFF)
      {
        if (v100 > -9.2234e18)
        {
          if (v100 < 9.2234e18)
          {
            v374 = v100;
            sub_26EF39E5C();
            sub_26EF39E7C();
            sub_26EF39EBC();
            v101 = v334;
            v102 = v358;
            sub_26EF39A6C();

            sub_26EE14578(v102, &qword_2806C76B8, &qword_26EF3E7F0);
            v103 = v353;
            sub_26EF39F0C();
            v104 = v335;
            sub_26EF39A8C();
            (*(v354 + 8))(v103, v355);
            sub_26EE14578(v101, &qword_2806C76B8, &qword_26EF3E7F0);
            v105 = v73;
            v106 = v357;
            sub_26EE52DE4(v105, v357);
            v107 = (*(v352 + 80) + 16) & ~*(v352 + 80);
            v108 = swift_allocObject();
            sub_26EE52E4C(v106, v108 + v107);
            v109 = v336;
            sub_26EF39AAC();

            sub_26EE14578(v104, &qword_2806C76B8, &qword_26EF3E7F0);
            sub_26EE13B88(v109, v323, &qword_2806C76B8, &qword_26EF3E7F0);
            swift_storeEnumTagMultiPayload();
            sub_26EE52A98();
            sub_26EE52BA8();
            v110 = v324;
            sub_26EF3A06C();
            v111 = &qword_2806C7690;
            v112 = &qword_26EF3E7C8;
            sub_26EE13B88(v110, v349, &qword_2806C7690, &qword_26EF3E7C8);
            swift_storeEnumTagMultiPayload();
            sub_26EE52A0C();
            sub_26EE52CD4();
            v113 = v346;
            sub_26EF3A06C();
            v114 = v110;
LABEL_30:
            sub_26EE14578(v114, v111, v112);
            sub_26EE13B88(v113, v361, &qword_2806C7698, &qword_26EF3E7D0);
            swift_storeEnumTagMultiPayload();
            sub_26EE52980();
            sub_26EE52D58();
            sub_26EF3A06C();
            sub_26EE14578(v113, &qword_2806C7698, &qword_26EF3E7D0);
            v150 = v109;
            v151 = &qword_2806C76B8;
            v152 = &qword_26EF3E7F0;
            return sub_26EE14578(v150, v151, v152);
          }

          goto LABEL_54;
        }

        goto LABEL_51;
      }

      goto LABEL_48;
    }

    __break(1u);
    goto LABEL_46;
  }

  if (v54 == 3)
  {
    v115 = v364;
    sub_26EF3ADAC();
    swift_getKeyPath();
    sub_26EF3ADCC();

    (*(v30 + 8))(v32, v29);
    v116 = v374;
    v117 = v375;
    v118 = v376;
    v119 = sub_26EF3AD9C();
    v120 = (*(*v370 + 344))(v119);

    [v120 minValue];
    v122 = v121;

    v123 = sub_26EF3AD9C();
    v124 = (*(*v370 + 344))(v123);

    [v124 maxValue];
    v126 = v125;

    if (v122 > v126)
    {
LABEL_46:
      __break(1u);
      goto LABEL_47;
    }

    MEMORY[0x28223BE20](v127);
    v370 = v116;
    v371 = v117;
    v372 = v118;
    v366 = __PAIR64__(LODWORD(v126), LODWORD(v122));
    v365 = 1084227584;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7760, qword_26EF3E820);
    sub_26EE154C8(&qword_2806C7768, &qword_2806C7760, qword_26EF3E820, MEMORY[0x277CE14C0]);
    v128 = v337;
    sub_26EF3AD8C();
    v129 = v339;
    sub_26EF3A2CC();
    v130 = sub_26EE154C8(&qword_2806C7730, &qword_2806C76A8, &qword_26EF3E7E0, MEMORY[0x277CDF0B8]);
    v131 = v343;
    v132 = v342;
    sub_26EF3A7DC();
    (*(v340 + 8))(v129, v341);
    (*(v338 + 8))(v128, v132);
    v133 = sub_26EF3AD9C();
    v134 = (*(*v374 + 152))(v133);
    v136 = v135;

    v374 = v134;
    v375 = v136;
    v370 = v132;
    v371 = v130;
    v137 = swift_getOpaqueTypeConformance2();
    sub_26EE12538(v137, v138, v139);
    v140 = MEMORY[0x277D837D0];
    v141 = v345;
    sub_26EF3A78C();

    (*(v344 + 8))(v131, v141);
    v142 = sub_26EE17094();
    v143._object = 0xEE0054414D524F46;
    v144 = v142 & 1;
    v143._countAndFlagsBits = 0x5F544E4543524550;
    TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(v143, v144, 0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C67B0, &qword_26EF3D4B0);
    v145 = swift_allocObject();
    *(v145 + 16) = xmmword_26EF3C6B0;
    v146 = sub_26EF3AD9C();
    v147 = (*(*v374 + 248))(v146);

    if ((LODWORD(v147) & 0x7FFFFFFFu) > 0x7F7FFFFF)
    {
LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

    if (v147 <= -9.2234e18)
    {
LABEL_52:
      __break(1u);
      goto LABEL_53;
    }

    if (v147 >= 9.2234e18)
    {
LABEL_55:
      __break(1u);
      goto LABEL_56;
    }

LABEL_29:
    v374 = v147;
    v225 = sub_26EF3B7FC();
    v227 = v226;
    *(v145 + 56) = v140;
    *(v145 + 64) = sub_26EE1EFBC(v225, v226, v228);
    *(v145 + 32) = v225;
    *(v145 + 40) = v227;
    v229 = sub_26EF3B10C();
    v231 = v230;

    v374 = v229;
    v375 = v231;
    v232 = v334;
    v233 = v358;
    sub_26EF39A7C();

    sub_26EE14578(v233, &qword_2806C76B8, &qword_26EF3E7F0);
    v234 = v353;
    sub_26EF39F0C();
    v235 = v335;
    sub_26EF39A8C();
    (*(v354 + 8))(v234, v355);
    sub_26EE14578(v232, &qword_2806C76B8, &qword_26EF3E7F0);
    v236 = v357;
    sub_26EE52DE4(v115, v357);
    v237 = (*(v352 + 80) + 16) & ~*(v352 + 80);
    v238 = swift_allocObject();
    sub_26EE52E4C(v236, v238 + v237);
    v109 = v336;
    sub_26EF39AAC();

    sub_26EE14578(v235, &qword_2806C76B8, &qword_26EF3E7F0);
    sub_26EE13B88(v109, v319, &qword_2806C76B8, &qword_26EF3E7F0);
    swift_storeEnumTagMultiPayload();
    sub_26EE52BA8();
    v239 = v320;
    sub_26EF3A06C();
    v111 = &qword_2806C7670;
    v112 = &qword_26EF3E7A8;
    sub_26EE13B88(v239, v349, &qword_2806C7670, &qword_26EF3E7A8);
    swift_storeEnumTagMultiPayload();
    sub_26EE52A0C();
    sub_26EE52CD4();
    v113 = v346;
    sub_26EF3A06C();
    v114 = v239;
    goto LABEL_30;
  }

  if (v54 == 8)
  {
    v115 = v364;
    sub_26EF3ADAC();
    swift_getKeyPath();
    sub_26EF3ADCC();

    (*(v30 + 8))(v32, v29);
    v197 = v374;
    v198 = v375;
    v199 = v376;
    v200 = sub_26EF3AD9C();
    v201 = (*(*v370 + 344))(v200);

    [v201 minValue];
    v203 = v202;

    v204 = sub_26EF3AD9C();
    v205 = (*(*v370 + 344))(v204);

    [v205 maxValue];
    v207 = v206;

    if (v203 > v207)
    {
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
      goto LABEL_49;
    }

    MEMORY[0x28223BE20](v208);
    v370 = v197;
    v371 = v198;
    v372 = v199;
    v366 = __PAIR64__(LODWORD(v207), LODWORD(v203));
    v365 = 1101004800;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7760, qword_26EF3E820);
    sub_26EE154C8(&qword_2806C7768, &qword_2806C7760, qword_26EF3E820, MEMORY[0x277CE14C0]);
    v209 = v337;
    sub_26EF3AD8C();
    v210 = v339;
    sub_26EF3A2CC();
    v211 = sub_26EE154C8(&qword_2806C7730, &qword_2806C76A8, &qword_26EF3E7E0, MEMORY[0x277CDF0B8]);
    v212 = v343;
    v213 = v342;
    sub_26EF3A7DC();
    (*(v340 + 8))(v210, v341);
    (*(v338 + 8))(v209, v213);
    v214 = sub_26EF3AD9C();
    v215 = (*(*v374 + 152))(v214);
    v217 = v216;

    v374 = v215;
    v375 = v217;
    v370 = v213;
    v371 = v211;
    v218 = swift_getOpaqueTypeConformance2();
    sub_26EE12538(v218, v219, v220);
    v140 = MEMORY[0x277D837D0];
    v221 = v345;
    sub_26EF3A78C();

    (*(v344 + 8))(v212, v221);
    v222 = sub_26EE17094() & 1;
    v223._countAndFlagsBits = 0x414D524F465F5A48;
    v223._object = 0xE900000000000054;
    TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(v223, v222, 0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C67B0, &qword_26EF3D4B0);
    v145 = swift_allocObject();
    *(v145 + 16) = xmmword_26EF3C6B0;
    v224 = sub_26EF3AD9C();
    v147 = (*(*v374 + 248))(v224);

    if ((LODWORD(v147) & 0x7FFFFFFFu) > 0x7F7FFFFF)
    {
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
      goto LABEL_52;
    }

    if (v147 <= -9.2234e18)
    {
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
      goto LABEL_55;
    }

    if (v147 >= 9.2234e18)
    {
LABEL_56:
      __break(1u);
      goto LABEL_57;
    }

    goto LABEL_29;
  }

  if (v54 != 26)
  {
LABEL_21:
    v148 = v332;
    *v332 = 0;
    *(v148 + 8) = 1;
    swift_storeEnumTagMultiPayload();
    sub_26EE524C8();
    v149 = v333;
    sub_26EF3A06C();
    sub_26EE13B88(v149, v361, &qword_2806C7630, &qword_26EF3E768);
    swift_storeEnumTagMultiPayload();
    sub_26EE52980();
    sub_26EE52D58();
    sub_26EF3A06C();
    v150 = v149;
    v151 = &qword_2806C7630;
    v152 = &qword_26EF3E768;
    return sub_26EE14578(v150, v151, v152);
  }

  v70 = sub_26EF3AD9C();
  v71 = (*(*v374 + 344))(v70);

  v72 = [v71 unitName];

  if (v72)
  {
    sub_26EF3B0FC();
  }

  sub_26EF384BC();
  v240 = v317;
  if ((*(v317 + 48))(v44, 1, v45) == 1)
  {
    sub_26EE14578(v44, &qword_2806C76C0, &qword_26EF3E7F8);
    v241 = 1;
    v242 = v346;
    v243 = v307;
    goto LABEL_39;
  }

  (*(v240 + 32))(v50, v44, v45);
  (*(v240 + 16))(v48, v50, v45);
  if ((*(v240 + 88))(v48, v45) == *MEMORY[0x277D70370])
  {
    sub_26EF3ADAC();
    swift_getKeyPath();
    sub_26EF3ADCC();

    (*(v30 + 8))(v32, v29);
    v244 = v374;
    v245 = v375;
    v246 = v376;
    v247 = sub_26EF3AD9C();
    v248 = (*(*v370 + 344))(v247);

    [v248 minValue];
    v250 = v249;

    v251 = sub_26EF3AD9C();
    v252 = (*(*v370 + 344))(v251);

    [v252 maxValue];
    v254 = v253;

    if (v250 > v254)
    {
LABEL_57:
      __break(1u);
      goto LABEL_58;
    }

    MEMORY[0x28223BE20](v255);
    v370 = v244;
    v371 = v245;
    v372 = v246;
    v366 = __PAIR64__(LODWORD(v254), LODWORD(v250));
    v365 = 1092616192;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7760, qword_26EF3E820);
    sub_26EE154C8(&qword_2806C7768, &qword_2806C7760, qword_26EF3E820, MEMORY[0x277CE14C0]);
    v256 = v337;
    sub_26EF3AD8C();
    v257 = v339;
    sub_26EF3A2CC();
    v258 = sub_26EE154C8(&qword_2806C7730, &qword_2806C76A8, &qword_26EF3E7E0, MEMORY[0x277CDF0B8]);
    v259 = v343;
    v260 = v342;
    sub_26EF3A7DC();
    (*(v340 + 8))(v257, v341);
    (*(v338 + 8))(v256, v260);
    v261 = sub_26EF3AD9C();
    v262 = (*(*v374 + 152))(v261);
    v264 = v263;

    v374 = v262;
    v375 = v264;
    v370 = v260;
    v371 = v258;
    v265 = swift_getOpaqueTypeConformance2();
    sub_26EE12538(v265, v266, v267);
    v268 = v345;
    sub_26EF3A78C();

    (*(v344 + 8))(v259, v268);
    v269 = sub_26EE17094() & 1;
    v270._countAndFlagsBits = 0x4D524F465F4D5057;
    v270._object = 0xEA00000000005441;
    TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(v270, v269, 0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C67B0, &qword_26EF3D4B0);
    v271 = swift_allocObject();
    *(v271 + 16) = xmmword_26EF3C6B0;
    v272 = sub_26EF3AD9C();
    v273 = (*(*v374 + 248))(v272);

    if ((LODWORD(v273) & 0x7FFFFFFFu) > 0x7F7FFFFF)
    {
LABEL_58:
      __break(1u);
      goto LABEL_59;
    }

    if (v273 <= -9.2234e18)
    {
LABEL_59:
      __break(1u);
      goto LABEL_60;
    }

    if (v273 >= 9.2234e18)
    {
LABEL_60:
      __break(1u);
      goto LABEL_61;
    }

    v274 = MEMORY[0x277D83C10];
    *(v271 + 56) = MEMORY[0x277D83B88];
    *(v271 + 64) = v274;
    *(v271 + 32) = v273;
    v275 = sub_26EF3B0CC();
    v277 = v276;

    v374 = v275;
    v375 = v277;
    v278 = v334;
    v279 = v358;
    sub_26EF39A7C();

    sub_26EE14578(v279, &qword_2806C76B8, &qword_26EF3E7F0);
    v280 = v353;
    sub_26EF39F0C();
    v281 = v335;
    sub_26EF39A8C();
    (*(v354 + 8))(v280, v355);
    sub_26EE14578(v278, &qword_2806C76B8, &qword_26EF3E7F0);
    v282 = v357;
    sub_26EE52DE4(v364, v357);
    v283 = (*(v352 + 80) + 16) & ~*(v352 + 80);
    v284 = swift_allocObject();
    sub_26EE52E4C(v282, v284 + v283);
    v285 = v336;
    sub_26EF39AAC();

    sub_26EE14578(v281, &qword_2806C76B8, &qword_26EF3E7F0);
    sub_26EE13B88(v285, v292, &qword_2806C76B8, &qword_26EF3E7F0);
    swift_storeEnumTagMultiPayload();
    sub_26EE52BA8();
    v243 = v307;
    sub_26EF3A06C();
    sub_26EE14578(v285, &qword_2806C76B8, &qword_26EF3E7F0);
    (*(v317 + 8))(v50, v45);
    v241 = 0;
    v242 = v346;
LABEL_39:
    v286 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7720, &qword_26EF3E808);
    (*(*(v286 - 8) + 56))(v243, v241, 1, v286);
    sub_26EE13B88(v243, v323, &qword_2806C76C8, &qword_26EF3E800);
    swift_storeEnumTagMultiPayload();
    sub_26EE52A98();
    sub_26EE52BA8();
    v287 = v324;
    sub_26EF3A06C();
    sub_26EE13B88(v287, v349, &qword_2806C7690, &qword_26EF3E7C8);
    swift_storeEnumTagMultiPayload();
    sub_26EE52A0C();
    sub_26EE52CD4();
    sub_26EF3A06C();
    sub_26EE14578(v287, &qword_2806C7690, &qword_26EF3E7C8);
    sub_26EE13B88(v242, v361, &qword_2806C7698, &qword_26EF3E7D0);
    swift_storeEnumTagMultiPayload();
    sub_26EE52980();
    sub_26EE52D58();
    sub_26EF3A06C();
    sub_26EE14578(v242, &qword_2806C7698, &qword_26EF3E7D0);
    v150 = v243;
    v151 = &qword_2806C76C8;
    v152 = &qword_26EF3E800;
    return sub_26EE14578(v150, v151, v152);
  }

LABEL_61:
  result = sub_26EF3B78C();
  __break(1u);
  return result;
}

uint64_t sub_26EE49AC4(uint64_t a1)
{
  v2 = sub_26EF3A35C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, a1, v2);
  v6 = (*(v3 + 88))(v5, v2);
  if (v6 == *MEMORY[0x277CDE498])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7608, &unk_26EF3E738);
    sub_26EF3AD9C();
    v7 = v24;
    v8 = sub_26EF3AD9C();
    v9 = (*(*v24 + 344))(v8);

    [v9 maxValue];
    v11 = v10;

    v12 = sub_26EF3AD9C();
    v13 = (*(*v24 + 248))(v12);

    v15.n128_f32[0] = v13 + 10.0;
    if ((v13 + 10.0) >= v11)
    {
      v15.n128_f32[0] = v11;
    }

LABEL_8:
    (*(*v7 + 256))(v14, v15);
  }

  if (v6 == *MEMORY[0x277CDE490])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7608, &unk_26EF3E738);
    sub_26EF3AD9C();
    v7 = v24;
    v16 = sub_26EF3AD9C();
    v17 = (*(*v24 + 344))(v16);

    [v17 minValue];
    v19 = v18;

    v20 = sub_26EF3AD9C();
    v21 = (*(*v24 + 248))(v20);

    v15.n128_f32[0] = v21 + -10.0;
    if (v19 > (v21 + -10.0))
    {
      v15.n128_f32[0] = v19;
    }

    goto LABEL_8;
  }

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_26EE49E1C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26EF39E9C();
  MEMORY[0x28223BE20](v2 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7608, &unk_26EF3E738);
  v3 = sub_26EF3AD9C();
  v4 = (*(*v26 + 152))(v3);

  v27 = v4;
  sub_26EE12538(v5, v6, v7);
  v8 = sub_26EF3A5DC();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  sub_26EF39E8C();
  sub_26EF39E7C();
  v15 = sub_26EF3AD9C();
  v16 = (*(*v27 + 248))(v15);

  if ((LODWORD(v16) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v16 <= -9.2234e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v16 < 9.2234e18)
  {
    sub_26EF39E5C();
    sub_26EF39E7C();
    sub_26EF39EBC();
    v18 = sub_26EF3A5CC();
    v20 = v19;
    v21 = v12 & 1;
    v25 = v12 & 1;
    v23 = v22 & 1;
    *a1 = v8;
    *(a1 + 8) = v10;
    *(a1 + 16) = v21;
    *(a1 + 24) = v14;
    *(a1 + 32) = v18;
    *(a1 + 40) = v19;
    *(a1 + 48) = v22 & 1;
    *(a1 + 56) = v24;
    sub_26EE13B20(v8, v10, v21);

    sub_26EE13B20(v18, v20, v23);

    sub_26EE12ABC(v18, v20, v23);

    sub_26EE12ABC(v8, v10, v25);
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_26EE4A0E8(uint64_t a1)
{
  v2 = sub_26EF3A35C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, a1, v2);
  v6 = (*(v3 + 88))(v5, v2);
  if (v6 == *MEMORY[0x277CDE498])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7608, &unk_26EF3E738);
    sub_26EF3AD9C();
    v7 = v24;
    v8 = sub_26EF3AD9C();
    v9 = (*(*v24 + 344))(v8);

    [v9 maxValue];
    v11 = v10;

    v12 = sub_26EF3AD9C();
    v13 = (*(*v24 + 248))(v12);

    v15.n128_f32[0] = v13 + 1.0;
    if ((v13 + 1.0) >= v11)
    {
      v15.n128_f32[0] = v11;
    }

LABEL_8:
    (*(*v7 + 256))(v14, v15);
  }

  if (v6 == *MEMORY[0x277CDE490])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7608, &unk_26EF3E738);
    sub_26EF3AD9C();
    v7 = v24;
    v16 = sub_26EF3AD9C();
    v17 = (*(*v24 + 344))(v16);

    [v17 minValue];
    v19 = v18;

    v20 = sub_26EF3AD9C();
    v21 = (*(*v24 + 248))(v20);

    v15.n128_f32[0] = v21 + -1.0;
    if (v19 > (v21 + -1.0))
    {
      v15.n128_f32[0] = v19;
    }

    goto LABEL_8;
  }

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_26EE4A440(uint64_t a1)
{
  v2 = sub_26EF3A35C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, a1, v2);
  v6 = (*(v3 + 88))(v5, v2);
  if (v6 == *MEMORY[0x277CDE498])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7608, &unk_26EF3E738);
    sub_26EF3AD9C();
    v7 = v24;
    v8 = sub_26EF3AD9C();
    v9 = (*(*v24 + 344))(v8);

    [v9 maxValue];
    v11 = v10;

    v12 = sub_26EF3AD9C();
    v13 = (*(*v24 + 248))(v12);

    v15.n128_f32[0] = v13 + 20.0;
    if ((v13 + 20.0) >= v11)
    {
      v15.n128_f32[0] = v11;
    }

LABEL_8:
    (*(*v7 + 256))(v14, v15);
  }

  if (v6 == *MEMORY[0x277CDE490])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7608, &unk_26EF3E738);
    sub_26EF3AD9C();
    v7 = v24;
    v16 = sub_26EF3AD9C();
    v17 = (*(*v24 + 344))(v16);

    [v17 minValue];
    v19 = v18;

    v20 = sub_26EF3AD9C();
    v21 = (*(*v24 + 248))(v20);

    v15.n128_f32[0] = v21 + -20.0;
    if (v19 > (v21 + -20.0))
    {
      v15.n128_f32[0] = v19;
    }

    goto LABEL_8;
  }

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_26EE4A798(uint64_t a1)
{
  v2 = sub_26EF3A35C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, a1, v2);
  v6 = (*(v3 + 88))(v5, v2);
  if (v6 == *MEMORY[0x277CDE498])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7608, &unk_26EF3E738);
    sub_26EF3AD9C();
    v7 = v24;
    v8 = sub_26EF3AD9C();
    v9 = (*(*v24 + 344))(v8);

    [v9 maxValue];
    v11 = v10;

    v12 = sub_26EF3AD9C();
    v13 = (*(*v24 + 248))(v12);

    v15.n128_f32[0] = v13 + 5.0;
    if ((v13 + 5.0) >= v11)
    {
      v15.n128_f32[0] = v11;
    }

LABEL_8:
    (*(*v7 + 256))(v14, v15);
  }

  if (v6 == *MEMORY[0x277CDE490])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7608, &unk_26EF3E738);
    sub_26EF3AD9C();
    v7 = v24;
    v16 = sub_26EF3AD9C();
    v17 = (*(*v24 + 344))(v16);

    [v17 minValue];
    v19 = v18;

    v20 = sub_26EF3AD9C();
    v21 = (*(*v24 + 248))(v20);

    v15.n128_f32[0] = v21 + -5.0;
    if (v19 > (v21 + -5.0))
    {
      v15.n128_f32[0] = v19;
    }

    goto LABEL_8;
  }

  return (*(v3 + 8))(v5, v2);
}

float sub_26EE4AAF0@<S0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *a1;
  sub_26EE12538(a1, a2, a3);

  v6 = sub_26EF3A5DC();
  result = v5;
  *a4 = v6;
  *(a4 + 8) = v8;
  *(a4 + 16) = v9 & 1;
  *(a4 + 24) = v10;
  *(a4 + 32) = v5;
  *(a4 + 36) = 1;
  return result;
}

uint64_t TTSPerVoiceSettingsView.voiceIdentifier.getter()
{
  v1 = *(v0 + 8);
  v4[2] = *v0;
  v4[3] = v1;
  v5 = *(v0 + 16);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7770, &qword_26EF40370);
  MEMORY[0x274382CF0](v4, v2);
  return v4[0];
}

double sub_26EE4ABCC@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = a1[1];
  v7 = *a1;
  v8 = v3;
  v9 = *(a1 + 1);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7770, &qword_26EF40370);
  MEMORY[0x274382CF0](&v6, v4);
  result = *&v6;
  *a2 = v6;
  return result;
}

uint64_t sub_26EE4AC2C(uint64_t *a1, uint64_t a2)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7770, &qword_26EF40370);
  return sub_26EF3AC3C();
}

uint64_t (*TTSPerVoiceSettingsView.voiceIdentifier.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *v1;
  v6 = v1[1];
  *(v3 + 96) = *v1;
  *(v3 + 104) = v6;
  v8 = v1[2];
  v7 = v1[3];
  v4[14] = v8;
  v4[15] = v7;
  *v4 = v5;
  v4[1] = v6;
  v4[2] = v8;
  v4[3] = v7;

  v4[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7770, &qword_26EF40370);
  MEMORY[0x274382CF0]();
  return sub_26EE4ADB0;
}

uint64_t TTSPerVoiceSettingsView.$voiceIdentifier.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7770, &qword_26EF40370);
  sub_26EF3AC5C();
  return v1;
}

uint64_t TTSPerVoiceSettingsView.settings.getter()
{
  v1 = *(v0 + 48);
  v5 = *(v0 + 32);
  v6 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7778, &qword_26EF3E840);
  MEMORY[0x274382CF0](&v4, v2);
  return v4;
}

void *sub_26EE4AE68@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 48);
  v7 = *(a1 + 32);
  v8 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7778, &qword_26EF3E840);
  result = MEMORY[0x274382CF0](&v6, v4);
  *a2 = v6;
  return result;
}

uint64_t sub_26EE4AEC8(uint64_t *a1, uint64_t a2)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7778, &qword_26EF3E840);
  return sub_26EF3AC3C();
}

uint64_t (*TTSPerVoiceSettingsView.settings.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = v1[4];
  v6 = v1[5];
  *(v3 + 64) = v5;
  *(v3 + 72) = v6;
  v7 = v1[6];
  v4[10] = v7;
  *v4 = v5;
  v4[1] = v6;
  v4[2] = v7;

  v4[11] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7778, &qword_26EF3E840);
  MEMORY[0x274382CF0]();
  return sub_26EE4B04C;
}

uint64_t TTSPerVoiceSettingsView.$settings.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7778, &qword_26EF3E840);
  sub_26EF3AC5C();
  return v1;
}

uint64_t TTSPerVoiceSettingsView.init(voiceIdentifier:settings:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  *a8 = result;
  a8[1] = a2;
  a8[2] = a3;
  a8[3] = a4;
  a8[4] = a5;
  a8[5] = a6;
  a8[6] = a7;
  return result;
}

uint64_t TTSPerVoiceSettingsView.body.getter()
{
  v1 = sub_26EF39B0C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v14[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7780, &qword_26EF3E848);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v14[-v8];
  v10 = *(v0 + 16);
  v16[0] = *v0;
  v16[1] = v10;
  v16[2] = *(v0 + 32);
  v17 = *(v0 + 48);
  v15 = v16;
  sub_26EE54068(v7, v11, v12);
  sub_26EF3A4EC();
  sub_26EF3AECC();
  sub_26EE154C8(&qword_2806C7790, &qword_2806C7780, &qword_26EF3E848, MEMORY[0x277CDE580]);
  sub_26EE52938(&qword_2806C7798, MEMORY[0x277CDDAB8], MEMORY[0x277CDDAA8]);
  sub_26EF3A93C();
  (*(v2 + 8))(v4, v1);
  return (*(v6 + 8))(v9, v5);
}

__n128 sub_26EE4B310@<Q0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[1];
  v22 = *a1;
  v23 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7770, &qword_26EF40370);
  sub_26EF3AC5C();
  sub_26EF3B2DC();
  sub_26EE55FA4(a1, &v22);
  v5 = sub_26EF3B2CC();
  v6 = swift_allocObject();
  v7 = MEMORY[0x277D85700];
  *(v6 + 16) = v5;
  *(v6 + 24) = v7;
  v8 = a1[1];
  *(v6 + 32) = *a1;
  *(v6 + 48) = v8;
  *(v6 + 64) = a1[2];
  *(v6 + 80) = *(a1 + 6);
  sub_26EE55FA4(a1, &v22);
  v9 = sub_26EF3B2CC();
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = v7;
  v11 = a1[1];
  *(v10 + 32) = *a1;
  *(v10 + 48) = v11;
  *(v10 + 64) = a1[2];
  *(v10 + 80) = *(a1 + 6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7800, &qword_26EF3E8E8);
  sub_26EF3AC6C();
  TTSPerVoiceSettingsAUParamsView.init(voiceIdentifier:settings:)(v18, v19, v20, v21, v18, v19, v20, &v22);
  v12 = v33;
  *(a2 + 160) = v32;
  *(a2 + 176) = v12;
  *(a2 + 192) = v34;
  v13 = v29;
  *(a2 + 96) = v28;
  *(a2 + 112) = v13;
  v14 = v31;
  *(a2 + 128) = v30;
  *(a2 + 144) = v14;
  v15 = v25;
  *(a2 + 32) = v24;
  *(a2 + 48) = v15;
  v16 = v27;
  *(a2 + 64) = v26;
  *(a2 + 80) = v16;
  result = v23;
  *a2 = v22;
  *(a2 + 16) = result;
  return result;
}

uint64_t sub_26EE4B4D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    v6 = *(a1 + 16);
    v10[0] = *a1;
    v10[1] = v6;
    v11 = *(a1 + 32);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v3;
    sub_26EE51BEC(v10, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v9;
  }

  else
  {
    sub_26EE14578(a1, &qword_2806C79B0, &qword_26EF3EDC8);
    sub_26EE51258(a2, a3, v10);

    return sub_26EE14578(v10, &qword_2806C79B0, &qword_26EF3EDC8);
  }

  return result;
}

uint64_t TTSPerVoiceSettingsAUParamsView.init(voiceIdentifier:settings:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C77A0, &qword_26EF3E850);
  sub_26EF3AAEC();
  *(a8 + 56) = v17;
  sub_26EF3AAEC();
  *(a8 + 72) = v17;
  *(a8 + 80) = *(&v17 + 1);
  sub_26EE540BC(MEMORY[0x277D84F90]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C77A8, &qword_26EF3E858);
  sub_26EF3AAEC();
  *(a8 + 88) = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C77B0, &qword_26EF3E860);
  sub_26EF3AAEC();
  *(a8 + 104) = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C77B8, &qword_26EF3E868);
  sub_26EF3AAEC();
  *(a8 + 120) = v17;
  sub_26EF3AAEC();
  *(a8 + 136) = v17;
  *(a8 + 144) = *(&v17 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C77C0, &qword_26EF3E870);
  sub_26EF3AAEC();
  *(a8 + 152) = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C77C8, &qword_26EF3E878);
  sub_26EF3AAEC();
  *(a8 + 168) = v17;
  result = swift_getKeyPath();
  *(a8 + 184) = result;
  *(a8 + 192) = 0;
  *a8 = a1;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 24) = a4;
  *(a8 + 32) = a5;
  *(a8 + 40) = a6;
  *(a8 + 48) = a7;
  return result;
}

uint64_t sub_26EE4B7BC()
{
  v1 = sub_26EF39B0C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v14[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7780, &qword_26EF3E848);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v14[-v8];
  v10 = *(v0 + 16);
  v16[0] = *v0;
  v16[1] = v10;
  v16[2] = *(v0 + 32);
  v17 = *(v0 + 48);
  v15 = v16;
  sub_26EE54068(v7, v11, v12);
  sub_26EF3A4EC();
  sub_26EF3AECC();
  sub_26EE154C8(&qword_2806C7790, &qword_2806C7780, &qword_26EF3E848, MEMORY[0x277CDE580]);
  sub_26EE52938(&qword_2806C7798, MEMORY[0x277CDDAB8], MEMORY[0x277CDDAA8]);
  sub_26EF3A93C();
  (*(v2 + 8))(v4, v1);
  return (*(v6 + 8))(v9, v5);
}

uint64_t TTSPerVoiceSettingsAUParamsView.voiceIdentifier.getter()
{
  v1 = *(v0 + 8);
  v4[2] = *v0;
  v4[3] = v1;
  v5 = *(v0 + 16);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7770, &qword_26EF40370);
  MEMORY[0x274382CF0](v4, v2);
  return v4[0];
}

uint64_t (*TTSPerVoiceSettingsAUParamsView.voiceIdentifier.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *v1;
  v6 = v1[1];
  *(v3 + 96) = *v1;
  *(v3 + 104) = v6;
  v8 = v1[2];
  v7 = v1[3];
  v4[14] = v8;
  v4[15] = v7;
  *v4 = v5;
  v4[1] = v6;
  v4[2] = v8;
  v4[3] = v7;

  v4[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7770, &qword_26EF40370);
  MEMORY[0x274382CF0]();
  return sub_26EE5647C;
}

void sub_26EE4BB84(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 104);
  v2[4] = *(*a1 + 96);
  v2[10] = v2[8];
  v4 = v2[9];
  v5 = v2[15];
  v6 = v2[14];
  v2[5] = v3;
  v2[6] = v6;
  v2[7] = v5;
  v2[11] = v4;
  if (a2)
  {

    sub_26EF3AC3C();
  }

  else
  {
    sub_26EF3AC3C();
  }

  free(v2);
}

uint64_t TTSPerVoiceSettingsAUParamsView.$voiceIdentifier.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7770, &qword_26EF40370);
  sub_26EF3AC5C();
  return v1;
}

uint64_t TTSPerVoiceSettingsAUParamsView.settings.getter()
{
  v1 = *(v0 + 48);
  v5 = *(v0 + 32);
  v6 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C77D0, &qword_26EF3E8B0);
  MEMORY[0x274382CF0](&v4, v2);
  return v4;
}

void *sub_26EE4BD10@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 48);
  v7 = *(a1 + 32);
  v8 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C77D0, &qword_26EF3E8B0);
  result = MEMORY[0x274382CF0](&v6, v4);
  *a2 = v6;
  return result;
}

uint64_t sub_26EE4BD70(uint64_t *a1, uint64_t a2)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C77D0, &qword_26EF3E8B0);
  return sub_26EF3AC3C();
}

uint64_t (*TTSPerVoiceSettingsAUParamsView.settings.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = v1[4];
  v6 = v1[5];
  *(v3 + 64) = v5;
  *(v3 + 72) = v6;
  v7 = v1[6];
  v4[10] = v7;
  *v4 = v5;
  v4[1] = v6;
  v4[2] = v7;

  v4[11] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C77D0, &qword_26EF3E8B0);
  MEMORY[0x274382CF0]();
  return sub_26EE56480;
}

void sub_26EE4BEF4(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v2[3] = *(*a1 + 64);
  v2[7] = v2[6];
  v4 = v2[10];
  v2[4] = v3;
  v2[5] = v4;
  if (a2)
  {

    sub_26EF3AC3C();
  }

  else
  {
    sub_26EF3AC3C();
  }

  free(v2);
}

uint64_t TTSPerVoiceSettingsAUParamsView.$settings.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C77D0, &qword_26EF3E8B0);
  sub_26EF3AC5C();
  return v1;
}

double TTSPerVoiceSettingsAUParamsView.init(voiceIdentifier:settings:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a8@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C77A0, &qword_26EF3E850);
  sub_26EF3AAEC();
  *(a8 + 56) = v21;
  sub_26EF3AAEC();
  v13 = *(&v21 + 1);
  *(a8 + 72) = v21;
  *(a8 + 80) = v13;
  sub_26EE540BC(MEMORY[0x277D84F90]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C77A8, &qword_26EF3E858);
  sub_26EF3AAEC();
  v14 = *(&v21 + 1);
  *(a8 + 88) = v21;
  *(a8 + 96) = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C77B0, &qword_26EF3E860);
  sub_26EF3AAEC();
  v15 = *(&v21 + 1);
  *(a8 + 104) = v21;
  *(a8 + 112) = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C77B8, &qword_26EF3E868);
  sub_26EF3AAEC();
  *(a8 + 120) = v21;
  sub_26EF3AAEC();
  v16 = *(&v21 + 1);
  *(a8 + 136) = v21;
  *(a8 + 144) = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C77C0, &qword_26EF3E870);
  sub_26EF3AAEC();
  *(a8 + 152) = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C77C8, &qword_26EF3E878);
  sub_26EF3AAEC();
  *(a8 + 168) = v21;
  *(a8 + 184) = swift_getKeyPath();
  *(a8 + 192) = 0;
  *a8 = a1;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 24) = a4;

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C77F8, &qword_26EF3E8E0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7800, &qword_26EF3E8E8);
  Binding.mapped<A>(_:set:)(sub_26EE4C2EC, 0, sub_26EE4C508, 0, v17, v18, &v21);

  result = *&v21;
  v20 = v22;
  *(a8 + 32) = v21;
  *(a8 + 48) = v20;
  return result;
}

void sub_26EE4C2EC(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  if (v3)
  {
    sub_26EE4C31C(v3);
  }

  *a2 = v3;
}

void sub_26EE4C31C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7998, &qword_26EF3EDB8);
    v2 = sub_26EF3B7CC();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v12 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v7;
    if (v5)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v14 = (*(a1 + 48) + 16 * (v13 | (v12 << 6)));
        v16 = *v14;
        v15 = v14[1];

        v17 = sub_26EF3B35C();
        v18 = sub_26EE1FCF4(v16, v15);
        if (v19)
        {
          v8 = (v2[6] + 16 * v18);
          *v8 = v16;
          v8[1] = v15;
          v9 = v18;

          v10 = v2[7];
          v11 = *(v10 + 8 * v9);
          *(v10 + 8 * v9) = v17;

          v7 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v18;
          v20 = (v2[6] + 16 * v18);
          *v20 = v16;
          v20[1] = v15;
          *(v2[7] + 8 * v18) = v17;
          v21 = v2[2];
          v22 = __OFADD__(v21, 1);
          v23 = v21 + 1;
          if (v22)
          {
            goto LABEL_21;
          }

          v2[2] = v23;
          v7 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v12 = v7;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
}

uint64_t *sub_26EE4C508@<X0>(uint64_t *result@<X0>, unint64_t *a2@<X8>)
{
  v3 = *result;
  if (!*result)
  {
    v4 = 0;
LABEL_29:
    *a2 = v4;
    return result;
  }

  v4 = sub_26EE3A7E8(MEMORY[0x277D84F90]);
  v5 = 1 << *(v3 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v3 + 64);
  v8 = (v5 + 63) >> 6;

  v9 = 0;
  while (1)
  {
    v10 = v9;
    if (!v7)
    {
      break;
    }

LABEL_9:
    v11 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v12 = (*(v3 + 48) + ((v9 << 10) | (16 * v11)));
    v14 = *v12;
    v13 = v12[1];
    v15 = *(v3 + 16);

    if (v15 && (v16 = sub_26EE1FCF4(v14, v13), (v17 & 1) != 0))
    {
      [*(*(v3 + 56) + 8 * v16) floatValue];
      v23 = v22;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v24 = sub_26EE1FCF4(v14, v13);
      v26 = *(v4 + 16);
      v27 = (v25 & 1) == 0;
      v28 = __OFADD__(v26, v27);
      v29 = v26 + v27;
      if (v28)
      {
        goto LABEL_31;
      }

      if (*(v4 + 24) < v29)
      {
        v35 = v25;
        sub_26EE39B10(v29, isUniquelyReferenced_nonNull_native);
        v24 = sub_26EE1FCF4(v14, v13);
        v31 = v30 & 1;
        v25 = v35;
        if ((v35 & 1) != v31)
        {
          goto LABEL_33;
        }

LABEL_21:
        v21 = v4;
        if (v25)
        {
          goto LABEL_22;
        }

        goto LABEL_25;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_21;
      }

      v38 = v24;
      v36 = v25;
      sub_26EE3A0C0();
      v24 = v38;
      v21 = v4;
      if (v36)
      {
LABEL_22:
        *(v21[7] + 4 * v24) = v23;

        goto LABEL_23;
      }

LABEL_25:
      v21[(v24 >> 6) + 8] |= 1 << v24;
      v32 = (v21[6] + 16 * v24);
      *v32 = v14;
      v32[1] = v13;
      *(v21[7] + 4 * v24) = v23;

      v33 = v21[2];
      v28 = __OFADD__(v33, 1);
      v34 = v33 + 1;
      if (v28)
      {
        goto LABEL_32;
      }

      v21[2] = v34;
      v4 = v21;
    }

    else
    {
      v18 = sub_26EE1FCF4(v14, v13);
      if (v19)
      {
        v20 = v18;
        v21 = v4;
        if (!swift_isUniquelyReferenced_nonNull_native())
        {
          sub_26EE3A0C0();
          v21 = v4;
        }

        sub_26EE39DB4(v20, v21);

LABEL_23:

        v4 = v21;
      }

      else
      {
      }
    }
  }

  while (1)
  {
    v9 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v9 >= v8)
    {

      goto LABEL_29;
    }

    v7 = *(v3 + 64 + 8 * v9);
    ++v10;
    if (v7)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  result = sub_26EF3B86C();
  __break(1u);
  return result;
}

uint64_t sub_26EE4C808()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C77D8, &qword_26EF3E8B8);
  sub_26EF3AB0C();
  sub_26EE540BC(MEMORY[0x277D84F90]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C77E0, &qword_26EF3E8C8);
  sub_26EF3AB0C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C77E8, &qword_26EF3E8D0);
  sub_26EF3AB0C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C72E0, &qword_26EF3E8C0);
  sub_26EF3AB0C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C77F0, &qword_26EF3E8D8);
  sub_26EF3AB0C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7808, &qword_26EF3E8F0);
  sub_26EF3AB0C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7810, &qword_26EF3E8F8);
  return sub_26EF3AB0C();
}

uint64_t sub_26EE4CA18()
{
  v2 = sub_26EF383AC();
  *(v1 + 512) = v2;
  *(v1 + 520) = *(v2 - 8);
  *(v1 + 528) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7818, &qword_26EF44380);
  *(v1 + 536) = swift_task_alloc();
  v3 = sub_26EF383FC();
  *(v1 + 544) = v3;
  *(v1 + 552) = *(v3 - 8);
  *(v1 + 560) = swift_task_alloc();
  v4 = *(v0 + 176);
  *(v1 + 176) = *(v0 + 160);
  *(v1 + 192) = v4;
  *(v1 + 208) = *(v0 + 192);
  v5 = *(v0 + 112);
  *(v1 + 112) = *(v0 + 96);
  *(v1 + 128) = v5;
  v6 = *(v0 + 144);
  *(v1 + 144) = *(v0 + 128);
  *(v1 + 160) = v6;
  v7 = *(v0 + 48);
  *(v1 + 48) = *(v0 + 32);
  *(v1 + 64) = v7;
  v8 = *(v0 + 80);
  *(v1 + 80) = *(v0 + 64);
  *(v1 + 96) = v8;
  v9 = *(v0 + 16);
  *(v1 + 16) = *v0;
  *(v1 + 32) = v9;
  sub_26EF3B2DC();
  *(v1 + 568) = sub_26EF3B2CC();
  v11 = sub_26EF3B29C();
  *(v1 + 576) = v11;
  *(v1 + 584) = v10;

  return MEMORY[0x2822009F8](sub_26EE4CBD8, v11, v10);
}

uint64_t sub_26EE4CBD8()
{
  v1 = *(v0 + 32);
  *(v0 + 216) = *(v0 + 16);
  *(v0 + 232) = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7770, &qword_26EF40370);
  MEMORY[0x274382CF0](v2);
  v3 = *(v0 + 280);
  v4 = *(v0 + 288);
  *(v0 + 592) = v3;
  *(v0 + 600) = v4;
  if (v4)
  {
    sub_26EF380CC();
    *(v0 + 608) = sub_26EF380BC();
    v9 = (*MEMORY[0x277D70100] + MEMORY[0x277D70100]);
    v5 = swift_task_alloc();
    *(v0 + 616) = v5;
    *v5 = v0;
    v5[1] = sub_26EE4CD40;
    v6 = *(v0 + 536);

    return v9(v6, v3, v4);
  }

  else
  {

    v8 = *(v0 + 8);

    return v8();
  }
}

uint64_t sub_26EE4CD40()
{
  v1 = *v0;

  v2 = *(v1 + 584);
  v3 = *(v1 + 576);

  return MEMORY[0x2822009F8](sub_26EE4CE84, v3, v2);
}

uint64_t sub_26EE4CE84()
{
  v1 = *(v0 + 552);
  v2 = *(v0 + 544);
  v3 = *(v0 + 536);
  if ((*(v1 + 48))(v3, 1, v2) == 1)
  {

    sub_26EE14578(v3, &qword_2806C7818, &qword_26EF44380);

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v6 = *(v0 + 528);
    v7 = *(v0 + 520);
    v8 = *(v0 + 512);
    (*(v1 + 32))(*(v0 + 560), v3, v2);
    *(v0 + 296) = *(v0 + 152);
    *(v0 + 211) = 1;
    *(v0 + 624) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C72E0, &qword_26EF3E8C0);
    sub_26EF3AB0C();
    sub_26EF382FC();
    v9 = sub_26EF382CC();
    (*(v7 + 8))(v6, v8);
    v10 = *(v0 + 88);
    *(v0 + 264) = v10;
    *(v0 + 328) = v10;
    *(v0 + 210) = (v9 & 1) == 0;
    sub_26EF3AB0C();
    v11 = swift_task_alloc();
    *(v0 + 632) = v11;
    *v11 = v0;
    v11[1] = sub_26EE4D0C8;

    return MEMORY[0x2821D6E60]();
  }
}

uint64_t sub_26EE4D0C8(uint64_t a1)
{
  v3 = *v2;
  v3[80] = a1;
  v3[81] = v1;

  if (v1)
  {

    v4 = v3[73];
    v5 = v3[72];
    v6 = sub_26EE4D6B0;
  }

  else
  {
    v4 = v3[73];
    v5 = v3[72];
    v6 = sub_26EE4D1F0;
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

id sub_26EE4D1F0()
{
  v1 = *(v0 + 640);
  *(v0 + 360) = *(v0 + 264);
  sub_26EF3AAFC();
  if ((*(v0 + 209) & 1) == 0)
  {
    if (v1)
    {
      v2 = [v1 remoteProcessIdentifier];
      if (v2)
      {
        v3 = v2;
        result = [objc_opt_self() defaultManager];
        if (!result)
        {
LABEL_21:
          __break(1u);
          return result;
        }

        v5 = result;
        v6 = [result containingAppForPlugInWithPid_];

        v7 = *(v0 + 648);
        if (v6)
        {
          v8 = sub_26EF3B0FC();
          v10 = v9;
          v11 = [objc_allocWithZone(MEMORY[0x277D1B1A8]) initWithBundleIdentifier_];

          *(v0 + 344) = *(v0 + 168);
          *(v0 + 496) = v11;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7808, &qword_26EF3E8F0);
          sub_26EF3AB0C();
          v12 = objc_allocWithZone(MEMORY[0x277CC1E70]);
          v13 = sub_26EE5117C(v8, v10, 0);
          if (v7)
          {
          }

          else if (v13)
          {
            *(v0 + 312) = *(v0 + 184);
            *(v0 + 504) = v13;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7810, &qword_26EF3E8F8);
            sub_26EF3AB0C();
          }
        }
      }
    }
  }

  v14 = *(v0 + 640);
  *(v0 + 392) = *(v0 + 72);
  *(v0 + 456) = v14;
  v15 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C77D8, &qword_26EF3E8B8);
  result = sub_26EF3AB0C();
  if (!v1)
  {
    __break(1u);
    goto LABEL_21;
  }

  v16 = v15;

  v17 = sub_26EF3B0BC();
  v18 = [v16 messageChannelFor_];

  v19 = [objc_allocWithZone(MEMORY[0x277D703C0]) initWithMessageChannel_];
  swift_unknownObjectRelease();
  v20 = *(v0 + 136);
  *(v0 + 408) = v20;
  *(v0 + 424) = v20;
  *(v0 + 472) = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C77F0, &qword_26EF3E8D8);
  sub_26EF3AB0C();
  *(v0 + 248) = *(v0 + 408);
  sub_26EF3AAFC();
  v21 = *(v0 + 464);
  if (v21)
  {
    sub_26EF382BC();
    v22 = sub_26EF3B0BC();

    [v21 prewarmWithVoice_];
  }

  *(v0 + 440) = *(v0 + 408);
  sub_26EF3AAFC();
  v23 = *(v0 + 480);
  if (v23)
  {
    v24 = sub_26EF3B0BC();

    v25 = [v23 defaultSettingsForVoice_];

    sub_26EE1FAB8(0, &qword_2806C7820, 0x277CCABB0);
    v26 = sub_26EF3B02C();
  }

  else
  {

    v26 = sub_26EE540BC(MEMORY[0x277D84F90]);
  }

  v27 = *(v0 + 560);
  v28 = *(v0 + 552);
  v29 = *(v0 + 544);
  *(v0 + 376) = *(v0 + 104);
  *(v0 + 488) = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C77E0, &qword_26EF3E8C8);
  sub_26EF3AB0C();
  *(swift_task_alloc() + 16) = v0 + 16;
  sub_26EF3AEAC();
  sub_26EF3992C();

  (*(v28 + 8))(v27, v29);

  v30 = *(v0 + 8);

  return v30();
}

uint64_t sub_26EE4D6B0()
{
  v1 = v0[81];
  v2 = v0[70];
  v3 = v0[69];
  v4 = v0[68];

  (*(v3 + 8))(v2, v4);

  v5 = v0[1];

  return v5();
}

void sub_26EE4D768()
{
  v1 = v0[11];
  v69 = v0[10];
  v70 = v1;
  v71 = *(v0 + 192);
  v2 = v0[7];
  *&v65[16] = v0[6];
  v66 = v2;
  v3 = v0[9];
  v67 = v0[8];
  v68 = v3;
  v4 = v0[3];
  v62 = v0[2];
  v63 = v4;
  v5 = v0[5];
  v64 = v0[4];
  *v65 = v5;
  v6 = v0[1];
  v60 = *v0;
  v61 = v6;
  v46 = *(v0 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C77D8, &qword_26EF3E8B8);
  sub_26EF3AAFC();
  if (!aBlock[0])
  {
    return;
  }

  v7 = [aBlock[0] parameterTree];

  if (!v7)
  {
    return;
  }

  v8 = [v7 allParameters];

  sub_26EE1FAB8(0, &qword_2806C7600, 0x277CEFD30);
  v9 = sub_26EF3B20C();

  if (v9 >> 62)
  {
    v10 = sub_26EF3B79C();
    if (v10)
    {
      goto LABEL_5;
    }

LABEL_30:

    v56 = v69;
    v57 = v70;
    v58 = v71;
    v52 = *&v65[16];
    v53 = v66;
    v54 = v67;
    v55 = v68;
    v48 = v62;
    v49 = v63;
    v50 = v64;
    v51 = *v65;
    v46 = v60;
    v47 = v61;
    sub_26EE4DE98();
    return;
  }

  v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v10)
  {
    goto LABEL_30;
  }

LABEL_5:
  if (v10 >= 1)
  {
    v11 = 0;
    v12 = v9 & 0xC000000000000001;
    v72 = v62;
    v73 = v63;
    while (1)
    {
      if (v12)
      {
        v21 = MEMORY[0x2743837E0](v11, v9);
      }

      else
      {
        v21 = *(v9 + 8 * v11 + 32);
      }

      v22 = v21;
      v46 = v72;
      *&v47 = v73;
      v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C77D0, &qword_26EF3E8B0);
      MEMORY[0x274382CF0](aBlock, v23);
      v24 = aBlock[0];
      if (aBlock[0])
      {
        v25 = [v22 identifier];
        v26 = sub_26EF3B0FC();
        v28 = v27;

        if (v24[2])
        {
          v29 = sub_26EE1FCF4(v26, v28);
          v31 = v30;

          if (v31)
          {
            v32 = *(v24[7] + 8 * v29);

            goto LABEL_21;
          }
        }

        else
        {
        }
      }

      v32 = 0;
LABEL_21:
      [v22 value];
      v34 = v33;
      sub_26EF384DC();
      if (v34 == v35)
      {
        if (v32)
        {
LABEL_8:
          [v32 floatValue];
        }

        else
        {
          v36 = [v22 identifier];
          v37 = sub_26EF3B0FC();
          v39 = v38;

          v46 = *&v65[8];
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C77E0, &qword_26EF3E8C8);
          sub_26EF3AAFC();
          v40 = aBlock[0];
          if (*(aBlock[0] + 2))
          {
            v41 = v12;
            v42 = sub_26EE1FCF4(v37, v39);
            v44 = v43;

            if (v44)
            {
              v45 = *(v40[7] + 8 * v42);

              [v45 floatValue];
            }

            else
            {
            }

            v12 = v41;
          }

          else
          {
          }
        }

        [v22 setValue_];
        goto LABEL_10;
      }

      if (v32)
      {
        goto LABEL_8;
      }

LABEL_10:
      ++v11;
      v13 = swift_allocObject();
      v14 = v70;
      *(v13 + 176) = v69;
      *(v13 + 192) = v14;
      *(v13 + 208) = v71;
      v15 = v66;
      *(v13 + 112) = *&v65[16];
      *(v13 + 128) = v15;
      v16 = v68;
      *(v13 + 144) = v67;
      *(v13 + 160) = v16;
      v17 = v63;
      *(v13 + 48) = v62;
      *(v13 + 64) = v17;
      v18 = *v65;
      *(v13 + 80) = v64;
      *(v13 + 96) = v18;
      v19 = v61;
      *(v13 + 16) = v60;
      *(v13 + 32) = v19;
      aBlock[4] = sub_26EE54230;
      aBlock[5] = v13;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_26EE4E6B0;
      aBlock[3] = &block_descriptor_0;
      v20 = _Block_copy(aBlock);
      sub_26EE5426C(&v60, &v46);

      [v22 tokenByAddingParameterObserver_];
      _Block_release(v20);

      if (v10 == v11)
      {
        goto LABEL_30;
      }
    }
  }

  __break(1u);
}

void *sub_26EE4DC48()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C77E8, &qword_26EF3E8D0);
  result = sub_26EF3AAFC();
  if (!(v10 >> 62))
  {
    v1 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v1)
    {
      goto LABEL_3;
    }
  }

  result = sub_26EF3B79C();
  v1 = result;
  if (!result)
  {
  }

LABEL_3:
  if (v1 >= 1)
  {
    v2 = 0;
    v9 = v1;
    do
    {
      if ((v10 & 0xC000000000000001) != 0)
      {
        v3 = MEMORY[0x2743837E0](v2);
      }

      else
      {
        v3 = *(v10 + 8 * v2 + 32);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C77D8, &qword_26EF3E8B8);
      sub_26EF3AAFC();
      if (v10 && (v4 = [v10 parameterTree], v10, v4))
      {
        v5 = [v4 parameterWithAddress_];

        if (v5)
        {
          v6 = [v5 value];
          v7 = *(*v3 + 248);
          if (v8 != (v7)(v6))
          {
            v7();
            [v5 setValue_];
          }

          v1 = v9;
        }

        else
        {
        }
      }

      else
      {
      }

      ++v2;
    }

    while (v1 != v2);
  }

  __break(1u);
  return result;
}

void sub_26EE4DE98()
{
  v48 = sub_26EF3850C();
  v1 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v47 = &v44 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = *(v0 + 104);
  v4 = *(v0 + 112);
  v60 = *(v0 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C77D8, &qword_26EF3E8B8);
  sub_26EF3AAFC();
  v5 = v57;
  if (v57)
  {
    v6 = [v57 parameterTree];

    if (v6)
    {
      v7 = [v6 allParameters];

      sub_26EE1FAB8(0, &qword_2806C7600, 0x277CEFD30);
      v8 = sub_26EF3B20C();

      v9 = v8;
      if (v8 >> 62)
      {
        goto LABEL_46;
      }

      for (i = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10); i; v9 = v43)
      {
        v11 = 0;
        v52 = v3;
        v53 = v9 & 0xC000000000000001;
        v44 = v9 + 32;
        v45 = v9 & 0xFFFFFFFFFFFFFF8;
        v46 = v1 + 1;
        v49 = i;
        v50 = v9;
        v51 = v4;
        while (1)
        {
          if (v53)
          {
            v13 = MEMORY[0x2743837E0](v11);
          }

          else
          {
            if (v11 >= *(v45 + 16))
            {
              goto LABEL_44;
            }

            v13 = *(v44 + 8 * v11);
          }

          v14 = v13;
          v15 = __OFADD__(v11, 1);
          v16 = v11 + 1;
          if (v15)
          {
            break;
          }

          v54 = v16;
          *&v60 = v3;
          *(&v60 + 1) = v4;
          v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C77E8, &qword_26EF3E8D0);
          sub_26EF3AAFC();
          v4 = v57;
          v55 = v17;
          v3 = v57 & 0xFFFFFFFFFFFFFF8;
          if (v57 >> 62)
          {
            v18 = sub_26EF3B79C();
          }

          else
          {
            v18 = *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v19 = -v18;
          v20 = 4;
          while (1)
          {
            if (v19 + v20 == 4)
            {

              v25 = v47;
              sub_26EF3B41C();
              v26 = sub_26EF384FC();
              v28 = v27;
              (*v46)(v25, v48);
              v29 = [v14 address];
              [v14 value];
              v31 = v30;
              v32 = [v14 identifier];
              v33 = sub_26EF3B0FC();
              v35 = v34;

              type metadata accessor for AUParameterViewModel(0);
              v36 = swift_allocObject();
              v1 = v14;
              sub_26EF3803C();
              *(v36 + 16) = v26;
              *(v36 + 24) = v28;
              *(v36 + 32) = v29;
              *(v36 + 40) = v31;
              *(v36 + 48) = v33;
              *(v36 + 56) = v35;
              *(v36 + 64) = v1;
              v4 = v51;
              v3 = v52;
              *&v60 = v52;
              *(&v60 + 1) = v51;

              v37 = sub_26EF3AAFC();
              MEMORY[0x2743832B0](v37);
              if (*((v59 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v59 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                sub_26EF3B22C();
              }

              sub_26EF3B25C();
              v57 = v3;
              v58 = v4;
              v56 = v59;
              sub_26EF3AB0C();

              goto LABEL_7;
            }

            v1 = (v20 - 4);
            if ((v4 & 0xC000000000000001) != 0)
            {
              v22 = MEMORY[0x2743837E0](v20 - 4, v4);
              v21 = v22;
            }

            else
            {
              if (v1 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                __break(1u);
LABEL_41:
                __break(1u);
                goto LABEL_42;
              }

              v21 = *(v4 + 8 * v20);
            }

            v23 = (*(*v21 + 200))(v22);
            v24 = [v14 address];

            if (v23 == v24)
            {
              break;
            }

            ++v20;
            if (__OFADD__(v1, 1))
            {
              goto LABEL_41;
            }
          }

          v4 = v51;
          v3 = v52;
          *&v60 = v52;
          *(&v60 + 1) = v51;
          sub_26EF3AAFC();
          if ((v57 & 0xC000000000000001) != 0)
          {
            v38 = MEMORY[0x2743837E0](v20 - 4, v57);
          }

          else
          {
            if (v1 >= *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v38 = *(v57 + 8 * v20);
          }

          v40 = (*(*v38 + 248))(v39);

          [v14 value];
          if (v40 == v41)
          {

LABEL_7:
            v12 = v49;
            v9 = v50;
            goto LABEL_8;
          }

          *&v60 = v3;
          *(&v60 + 1) = v4;
          sub_26EF3AAFC();
          if ((v57 & 0xC000000000000001) != 0)
          {
            v42 = MEMORY[0x2743837E0](v20 - 4, v57);
          }

          else
          {
            if (v1 >= *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_45;
            }

            v42 = *(v57 + 8 * v20);
          }

          v12 = v49;
          v1 = v50;

          (*(*v42 + 256))([v14 value]);

          v9 = v1;
LABEL_8:
          v11 = v54;
          if (v54 == v12)
          {
            goto LABEL_47;
          }
        }

LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        v43 = v9;
        i = sub_26EF3B79C();
      }

LABEL_47:
    }
  }
}

void *sub_26EE4E4C0(uint64_t a1, float a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C77E8, &qword_26EF3E8D0);
  sub_26EF3AAFC();
  if (v14 >> 62)
  {
LABEL_20:
    v4 = sub_26EF3B79C();
  }

  else
  {
    v4 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = -v4;
  v6 = 4;
  while (1)
  {
    if (v5 + v6 == 4)
    {
    }

    v7 = v6 - 4;
    if ((v14 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x2743837E0](v6 - 4);
      v8 = v9;
    }

    else
    {
      if (v7 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_19:
        __break(1u);
        goto LABEL_20;
      }

      v8 = *(v14 + 8 * v6);
    }

    v10 = (*(*v8 + 200))(v9);

    if (v10 == a1)
    {
      break;
    }

    ++v6;
    if (__OFADD__(v7, 1))
    {
      goto LABEL_19;
    }
  }

  result = sub_26EF3AAFC();
  if ((v14 & 0xC000000000000001) != 0)
  {
    v12 = MEMORY[0x2743837E0](v6 - 4);
    goto LABEL_17;
  }

  if (v7 < *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v12 = *(v14 + 8 * v6);

LABEL_17:

    (*(*v12 + 256))(v13, a2);
  }

  __break(1u);
  return result;
}

uint64_t sub_26EE4E6B0(uint64_t a1, uint64_t a2, float a3)
{
  v5 = *(a1 + 32);

  v5(a2, a3);
}

void sub_26EE4E714()
{
  v32 = *(v0 + 96);
  v33 = *(v0 + 88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C77D8, &qword_26EF3E8B8);
  sub_26EF3AAFC();
  if (!v34)
  {
    return;
  }

  v1 = [v34 parameterTree];

  if (!v1)
  {
    return;
  }

  v2 = [v1 allParameters];

  sub_26EE1FAB8(0, &qword_2806C7600, 0x277CEFD30);
  v3 = sub_26EF3B20C();

  if (v3 >> 62)
  {
    v4 = sub_26EF3B79C();
    if (v4)
    {
      goto LABEL_5;
    }

LABEL_26:

    return;
  }

  v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v4)
  {
    goto LABEL_26;
  }

LABEL_5:
  v5 = v4 - 1;
  if (v4 >= 1)
  {
    v6 = 0;
    if ((v3 & 0xC000000000000001) == 0)
    {
      goto LABEL_8;
    }

LABEL_7:
    for (i = MEMORY[0x2743837E0](v6, v3); ; i = *(v3 + 8 * v6 + 32))
    {
      v8 = i;
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C77D0, &qword_26EF3E8B0);
      MEMORY[0x274382CF0](&v34, v9);
      v10 = v34;
      if (v34)
      {
        v11 = [v8 identifier];
        v12 = sub_26EF3B0FC();
        v14 = v13;

        if (v10[2])
        {
          v15 = sub_26EE1FCF4(v12, v14);
          v17 = v16;

          if (v17)
          {
            v18 = *(v10[7] + 8 * v15);

            [v18 floatValue];
            v20 = v19;
            goto LABEL_20;
          }
        }

        else
        {
        }
      }

      v21 = [v8 identifier];
      v22 = sub_26EF3B0FC();
      v24 = v23;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C77E0, &qword_26EF3E8C8);
      sub_26EF3AAFC();
      v25 = v34;
      if (*(v34 + 2))
      {
        v26 = sub_26EE1FCF4(v22, v24);
        v28 = v27;

        if (v28)
        {
          v29 = *(v25[7] + 8 * v26);

          [v29 floatValue];
          v20 = v30;

          v18 = 0;
          goto LABEL_20;
        }
      }

      else
      {
      }

      v18 = 0;
      v20 = 0.0;
LABEL_20:
      [v8 value];
      if (*&v31 != v20)
      {
        *&v31 = v20;
        [v8 setValue_];
      }

      if (v5 == v6)
      {
        goto LABEL_26;
      }

      ++v6;
      if ((v3 & 0xC000000000000001) != 0)
      {
        goto LABEL_7;
      }

LABEL_8:
      ;
    }
  }

  __break(1u);
}

void sub_26EE4EA6C(uint64_t a1, uint64_t a2)
{
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v4 = 0;
    v5 = 1 << *(a1 + 32);
    v6 = -1;
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    v7 = v6 & *(a1 + 64);
    v8 = (v5 + 63) >> 6;
    while (v7)
    {
      v9 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_13:
      v12 = v9 | (v4 << 6);
      v13 = (*(a1 + 48) + 16 * v12);
      v14 = *v13;
      v15 = v13[1];
      v16 = *(*(a1 + 56) + 8 * v12);

      v17 = v16;
      v18 = sub_26EE1FCF4(v14, v15);
      v20 = v19;

      if ((v20 & 1) == 0)
      {

        return;
      }

      sub_26EE1FAB8(0, &qword_2806C7820, 0x277CCABB0);
      v21 = *(*(a2 + 56) + 8 * v18);
      v22 = sub_26EF3B5AC();

      if ((v22 & 1) == 0)
      {
        return;
      }
    }

    v10 = v4;
    while (1)
    {
      v4 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v4 >= v8)
      {
        return;
      }

      v11 = *(a1 + 64 + 8 * v4);
      ++v10;
      if (v11)
      {
        v9 = __clz(__rbit64(v11));
        v7 = (v11 - 1) & v11;
        goto LABEL_13;
      }
    }

    __break(1u);
  }
}

uint64_t TTSPerVoiceSettingsAUParamsView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v66 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7828, &qword_26EF3E910);
  MEMORY[0x28223BE20](v2);
  v4 = &v59 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7830, &qword_26EF3E918);
  v6 = *(v5 - 8);
  v62 = v5;
  v63 = v6;
  MEMORY[0x28223BE20](v5);
  v60 = &v59 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7838, &qword_26EF3E920);
  v9 = *(v8 - 8);
  v64 = v8;
  v65 = v9;
  MEMORY[0x28223BE20](v8);
  v61 = &v59 - v10;
  v11 = v1[11];
  v79 = v1[10];
  v80 = v11;
  v81 = *(v1 + 192);
  v12 = v1[7];
  v76[0] = v1[6];
  v76[1] = v12;
  v13 = v1[9];
  v77 = v1[8];
  v78 = v13;
  v14 = v1[3];
  v72 = v1[2];
  v73 = v14;
  v15 = v1[5];
  v74 = v1[4];
  v75 = v15;
  v16 = v1[1];
  v70 = *v1;
  v71 = v16;
  sub_26EE4F1E4(&v70, v4);
  v17 = swift_allocObject();
  v18 = v73;
  *(v17 + 48) = v72;
  *(v17 + 64) = v18;
  v19 = v76[1];
  *(v17 + 112) = v76[0];
  *(v17 + 128) = v19;
  v20 = v75;
  *(v17 + 80) = v74;
  *(v17 + 96) = v20;
  *(v17 + 208) = v81;
  v21 = v80;
  *(v17 + 176) = v79;
  *(v17 + 192) = v21;
  v22 = v78;
  *(v17 + 144) = v77;
  *(v17 + 160) = v22;
  v23 = v71;
  *(v17 + 16) = v70;
  *(v17 + 32) = v23;
  v24 = &v4[*(v2 + 36)];
  *v24 = 0;
  *(v24 + 1) = 0;
  *(v24 + 2) = sub_26EE547E8;
  *(v24 + 3) = v17;
  v69 = *(v76 + 8);
  sub_26EE5426C(&v70, &v67);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C77E8, &qword_26EF3E8D0);
  sub_26EF3AAFC();
  *&v69 = v67;
  v25 = swift_allocObject();
  v26 = v80;
  *(v25 + 176) = v79;
  *(v25 + 192) = v26;
  *(v25 + 208) = v81;
  v27 = v76[1];
  *(v25 + 112) = v76[0];
  *(v25 + 128) = v27;
  v28 = v78;
  *(v25 + 144) = v77;
  *(v25 + 160) = v28;
  v29 = v73;
  *(v25 + 48) = v72;
  *(v25 + 64) = v29;
  v30 = v75;
  *(v25 + 80) = v74;
  *(v25 + 96) = v30;
  v31 = v71;
  *(v25 + 16) = v70;
  *(v25 + 32) = v31;
  sub_26EE5426C(&v70, &v67);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C77B0, &qword_26EF3E860);
  v33 = sub_26EE54870();
  v34 = sub_26EE54D54();
  sub_26EF3A90C();

  sub_26EE14578(v4, &qword_2806C7828, &qword_26EF3E910);
  v67 = v70;
  v68 = v71;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7770, &qword_26EF40370);
  MEMORY[0x274382CF0](&v69, v35);
  v36 = swift_allocObject();
  v37 = v80;
  *(v36 + 176) = v79;
  *(v36 + 192) = v37;
  *(v36 + 208) = v81;
  v38 = v76[1];
  *(v36 + 112) = v76[0];
  *(v36 + 128) = v38;
  v39 = v78;
  *(v36 + 144) = v77;
  *(v36 + 160) = v39;
  v40 = v73;
  *(v36 + 48) = v72;
  *(v36 + 64) = v40;
  v41 = v75;
  *(v36 + 80) = v74;
  *(v36 + 96) = v41;
  v42 = v71;
  *(v36 + 16) = v70;
  *(v36 + 32) = v42;
  sub_26EE5426C(&v70, &v67);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C78E0, &qword_26EF40680);
  *&v67 = v2;
  *(&v67 + 1) = v32;
  *&v68 = v33;
  *(&v68 + 1) = v34;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v45 = sub_26EE54E10();
  v46 = v61;
  v47 = v62;
  v48 = v60;
  sub_26EF3A90C();

  (*(v63 + 8))(v48, v47);
  v67 = v72;
  *&v68 = v73;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C77D0, &qword_26EF3E8B0);
  MEMORY[0x274382CF0](&v69, v49);
  v50 = swift_allocObject();
  v51 = v80;
  *(v50 + 176) = v79;
  *(v50 + 192) = v51;
  *(v50 + 208) = v81;
  v52 = v76[1];
  *(v50 + 112) = v76[0];
  *(v50 + 128) = v52;
  v53 = v78;
  *(v50 + 144) = v77;
  *(v50 + 160) = v53;
  v54 = v73;
  *(v50 + 48) = v72;
  *(v50 + 64) = v54;
  v55 = v75;
  *(v50 + 80) = v74;
  *(v50 + 96) = v55;
  v56 = v71;
  *(v50 + 16) = v70;
  *(v50 + 32) = v56;
  sub_26EE5426C(&v70, &v67);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7800, &qword_26EF3E8E8);
  *&v67 = v47;
  *(&v67 + 1) = v43;
  *&v68 = OpaqueTypeConformance2;
  *(&v68 + 1) = v45;
  swift_getOpaqueTypeConformance2();
  sub_26EE54EB0();
  v57 = v64;
  sub_26EF3A90C();

  return (*(v65 + 8))(v46, v57);
}

uint64_t sub_26EE4F1E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v98 = *(a1 + 136);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C72E0, &qword_26EF3E8C0);
  sub_26EF3AAFC();
  if (v101 != 1)
  {
    v97 = a2;
    v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7880, &qword_26EF3E940);
    MEMORY[0x28223BE20](v96);
    v34 = &v84 - v33;
    v98 = *(a1 + 72);
    sub_26EF3AAFC();
    if (v101 == 1)
    {
      v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7890, &qword_26EF3E948);
      v95 = &v84;
      v36 = *(v35 - 8);
      MEMORY[0x28223BE20](v35);
      v38 = &v84 - v37;
      v98 = *(a1 + 104);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C77E8, &qword_26EF3E8D0);
      sub_26EF3AAFC();
      KeyPath = swift_getKeyPath();
      v39 = swift_allocObject();
      v40 = *(a1 + 176);
      *(v39 + 176) = *(a1 + 160);
      *(v39 + 192) = v40;
      *(v39 + 208) = *(a1 + 192);
      v41 = *(a1 + 112);
      *(v39 + 112) = *(a1 + 96);
      *(v39 + 128) = v41;
      v42 = *(a1 + 144);
      *(v39 + 144) = *(a1 + 128);
      *(v39 + 160) = v42;
      v43 = *(a1 + 48);
      *(v39 + 48) = *(a1 + 32);
      *(v39 + 64) = v43;
      v44 = *(a1 + 80);
      *(v39 + 80) = *(a1 + 64);
      *(v39 + 96) = v44;
      v45 = *(a1 + 16);
      *(v39 + 16) = *a1;
      *(v39 + 32) = v45;
      sub_26EE5426C(a1, &v98);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C77B0, &qword_26EF3E860);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7968, &qword_26EF3ED80);
      sub_26EE154C8(&qword_2806C7970, &qword_2806C77B0, &qword_26EF3E860, MEMORY[0x277D83980]);
      v46 = type metadata accessor for AUParamView(255);
      v47 = sub_26EE52938(&qword_2806C7898, type metadata accessor for AUParamView, &protocol conformance descriptor for AUParamView);
      *&v98 = v46;
      *(&v98 + 1) = MEMORY[0x277D83A90];
      v99 = v47;
      v100 = MEMORY[0x277D83AC0];
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      sub_26EF3ACEC();
      v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7940, &qword_26EF3ED60);
      MEMORY[0x28223BE20](v48);
      (*(v36 + 16))(&v84 - v49, v38, v35);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C78A8, &qword_26EF3E950);
      sub_26EE54B08();
      sub_26EE54C00();
      sub_26EF3A06C();
      (*(v36 + 8))(v38, v35);
LABEL_14:
      v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7948, &qword_26EF3ED68);
      MEMORY[0x28223BE20](v79);
      sub_26EE13B88(v34, &v84 - v80, &qword_2806C7880, &qword_26EF3E940);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7950, &qword_26EF3ED70);
      v81 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C7868, &unk_26EF41660);
      v82 = sub_26EE154C8(&qword_2806C7870, &qword_2806C7868, &unk_26EF41660, MEMORY[0x277CDD7F8]);
      *&v98 = v81;
      *(&v98 + 1) = v82;
      swift_getOpaqueTypeConformance2();
      sub_26EE54A7C();
      sub_26EF3A06C();
      return sub_26EE14578(v34, &qword_2806C7880, &qword_26EF3E940);
    }

    KeyPath = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C78A8, &qword_26EF3E950);
    MEMORY[0x28223BE20](KeyPath);
    v51 = &v84 - v50;
    v98 = *(a1 + 152);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7808, &qword_26EF3E8F0);
    sub_26EF3AAFC();
    v52 = v101;
    if (v101)
    {
      v98 = *(a1 + 168);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7810, &qword_26EF3E8F8);
      sub_26EF3AAFC();
      v53 = v101;
      if (v101)
      {
        v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7938, &qword_26EF3ED58);
        v93 = &v84;
        v91 = *(v92 - 1);
        MEMORY[0x28223BE20](v92);
        v88 = &v84 - v54;
        v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C78B0, &qword_26EF3E958);
        v90 = &v84;
        v89 = *(v87 - 1);
        MEMORY[0x28223BE20](v87);
        v56 = &v84 - v55;
        v57 = swift_allocObject();
        *(v57 + 16) = v53;
        MEMORY[0x28223BE20](v57);
        *(&v84 - 4) = v52;
        *(&v84 - 3) = a1;
        OpaqueTypeConformance2 = v53;
        v86 = v53;
        v95 = &v84;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7958, &qword_26EF3ED78);
        sub_26EE154C8(&qword_2806C7960, &qword_2806C7958, &qword_26EF3ED78, MEMORY[0x277CE1138]);
        sub_26EF3AB4C();
        v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C78B8, &unk_26EF3E960);
        v85 = &v84;
        v59 = *(v58 - 8);
        MEMORY[0x28223BE20](v58);
        v61 = &v84 - v60;
        sub_26EF3A09C();
        sub_26EE154C8(&qword_2806C78C0, &qword_2806C78B0, &qword_26EF3E958, MEMORY[0x277CDF028]);
        sub_26EE154C8(&qword_2806C78C8, &qword_2806C78B8, &unk_26EF3E960, MEMORY[0x277CDE368]);
        v62 = v88;
        v63 = v52;
        v64 = v87;
        sub_26EF3A65C();

        (*(v59 + 8))(v61, v58);
        (*(v89 + 1))(v56, v64);
        v65 = v91;
        v66 = v92;
        (v91[4])(v51, v62, v92);
        (v65[7])(v51, 0, 1, v66);
LABEL_13:
        v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7940, &qword_26EF3ED60);
        MEMORY[0x28223BE20](v77);
        sub_26EE13B88(v51, &v84 - v78, &qword_2806C78A8, &qword_26EF3E950);
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7890, &qword_26EF3E948);
        sub_26EE54B08();
        sub_26EE54C00();
        sub_26EF3A06C();
        sub_26EE14578(v51, &qword_2806C78A8, &qword_26EF3E950);
        goto LABEL_14;
      }
    }

    v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7938, &qword_26EF3ED58);
    (*(*(v76 - 8) + 56))(v51, 1, 1, v76);
    goto LABEL_13;
  }

  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7950, &qword_26EF3ED70);
  v96 = *(v4 - 8);
  v5 = MEMORY[0x28223BE20](v4);
  v95 = &v84 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = &v84;
  MEMORY[0x28223BE20](v5);
  v92 = &v84 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7868, &unk_26EF41660);
  v91 = &v84;
  KeyPath = v8;
  v90 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v89 = &v84 - v9;
  sub_26EF397DC();
  sub_26EF3B2DC();
  sub_26EE5426C(a1, &v98);
  v10 = sub_26EF3B2CC();
  v11 = swift_allocObject();
  v12 = MEMORY[0x277D85700];
  *(v11 + 16) = v10;
  *(v11 + 24) = v12;
  v13 = *(a1 + 176);
  *(v11 + 192) = *(a1 + 160);
  *(v11 + 208) = v13;
  *(v11 + 224) = *(a1 + 192);
  v14 = *(a1 + 112);
  *(v11 + 128) = *(a1 + 96);
  *(v11 + 144) = v14;
  v15 = *(a1 + 144);
  *(v11 + 160) = *(a1 + 128);
  *(v11 + 176) = v15;
  v16 = *(a1 + 48);
  *(v11 + 64) = *(a1 + 32);
  *(v11 + 80) = v16;
  v17 = *(a1 + 80);
  *(v11 + 96) = *(a1 + 64);
  *(v11 + 112) = v17;
  v18 = *(a1 + 16);
  *(v11 + 32) = *a1;
  *(v11 + 48) = v18;
  v88 = sub_26EF3B30C();
  v19 = *(v88 - 1);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v88);
  v21 = (v20 + 15) & 0xFFFFFFFFFFFFFFF0;
  v22 = &v84 - v21;
  sub_26EF3B2EC();
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    v86 = sub_26EF39A1C();
    v87 = &v84;
    v85 = *(v86 - 1);
    MEMORY[0x28223BE20](v86);
    v97 = a2;
    v24 = &v84 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
    *&v98 = 0;
    *(&v98 + 1) = 0xE000000000000000;
    sub_26EF3B70C();

    *&v98 = 0xD000000000000045;
    *(&v98 + 1) = 0x800000026EF45700;
    v101 = 364;
    v25 = sub_26EF3B7FC();
    MEMORY[0x274383240](v25);

    v84 = &v84;
    MEMORY[0x28223BE20](v26);
    v27 = &v84 - v21;
    v28 = &v84 - v21;
    v29 = v88;
    (*(v19 + 16))(v27, v28, v88);
    sub_26EF39A0C();
    (*(v19 + 8))(v22, v29);
    v30 = v92;
    v31 = KeyPath;
    (v90[4])(v92, v89, KeyPath);
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7910, &qword_26EF3E970);
    (v85[4])(&v30[*(v32 + 36)], v24, v86);
  }

  else
  {
    v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7918, qword_26EF3E978);
    v30 = v92;
    v68 = &v92[*(v67 + 36)];
    v69 = sub_26EF3990C();
    (*(v19 + 32))(&v68[*(v69 + 20)], &v84 - v21, v88);
    *v68 = &unk_26EF3ED90;
    *(v68 + 1) = v11;
    v31 = KeyPath;
    (v90[4])(v30, v89, KeyPath);
  }

  v70 = v96;
  v71 = v95;
  (*(v96 + 32))(v95, v30, v4);
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7948, &qword_26EF3ED68);
  MEMORY[0x28223BE20](v72);
  (*(v70 + 16))(&v84 - v73, v71, v4);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7880, &qword_26EF3E940);
  v74 = sub_26EE154C8(&qword_2806C7870, &qword_2806C7868, &unk_26EF41660, MEMORY[0x277CDD7F8]);
  *&v98 = v31;
  *(&v98 + 1) = v74;
  swift_getOpaqueTypeConformance2();
  sub_26EE54A7C();
  sub_26EF3A06C();
  return (*(v70 + 8))(v71, v4);
}

uint64_t sub_26EE504AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 216) = sub_26EF3B2DC();
  *(v3 + 224) = sub_26EF3B2CC();
  v5 = *(a3 + 176);
  *(v3 + 176) = *(a3 + 160);
  *(v3 + 192) = v5;
  *(v3 + 208) = *(a3 + 192);
  v6 = *(a3 + 112);
  *(v3 + 112) = *(a3 + 96);
  *(v3 + 128) = v6;
  v7 = *(a3 + 144);
  *(v3 + 144) = *(a3 + 128);
  *(v3 + 160) = v7;
  v8 = *(a3 + 48);
  *(v3 + 48) = *(a3 + 32);
  *(v3 + 64) = v8;
  v9 = *(a3 + 80);
  *(v3 + 80) = *(a3 + 64);
  *(v3 + 96) = v9;
  v10 = *(a3 + 16);
  *(v3 + 16) = *a3;
  *(v3 + 32) = v10;
  v11 = swift_task_alloc();
  *(v3 + 232) = v11;
  *v11 = v3;
  v11[1] = sub_26EE50590;

  return sub_26EE4CA18();
}

uint64_t sub_26EE50590()
{

  v1 = sub_26EF3B29C();

  return MEMORY[0x2822009F8](sub_26EE506CC, v1, v0);
}

uint64_t sub_26EE506CC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26EE5072C(uint64_t *a1, uint64_t a2)
{
  v4 = type metadata accessor for AUParamView(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v18[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v7 = *a1;
  type metadata accessor for AUParameterViewModel(0);
  sub_26EE52938(&qword_2806C75F8, type metadata accessor for AUParameterViewModel, &unk_26EF3EB10);

  v8 = sub_26EF3ADBC();
  v19 = (*(*v7 + 248))(v8);
  v9 = swift_allocObject();
  v10 = *(a2 + 176);
  *(v9 + 176) = *(a2 + 160);
  *(v9 + 192) = v10;
  *(v9 + 208) = *(a2 + 192);
  v11 = *(a2 + 112);
  *(v9 + 112) = *(a2 + 96);
  *(v9 + 128) = v11;
  v12 = *(a2 + 144);
  *(v9 + 144) = *(a2 + 128);
  *(v9 + 160) = v12;
  v13 = *(a2 + 48);
  *(v9 + 48) = *(a2 + 32);
  *(v9 + 64) = v13;
  v14 = *(a2 + 80);
  *(v9 + 80) = *(a2 + 64);
  *(v9 + 96) = v14;
  v15 = *(a2 + 16);
  *(v9 + 16) = *a2;
  *(v9 + 32) = v15;
  *(v9 + 216) = v7;

  sub_26EE5426C(a2, v18);
  sub_26EE52938(&qword_2806C7898, type metadata accessor for AUParamView, &protocol conformance descriptor for AUParamView);
  sub_26EF3A90C();

  return sub_26EE55F48(v6);
}

void sub_26EE50938(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_26EE509B0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, char *a4@<X8>)
{
  v52 = a4;
  v7 = sub_26EF39DDC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7980, &qword_26EF3EDA0);
  v50 = *(v11 - 8);
  v51 = v11;
  v12 = MEMORY[0x28223BE20](v11);
  v49 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v47 - v14;
  v16 = *MEMORY[0x277D1B240];
  v17 = objc_opt_self();
  v18 = a1;
  v19 = [v17 imageDescriptorNamed_];
  v56 = *(a2 + 192);
  v20 = *(a2 + 184);
  v55 = v20;
  if (v56 == 1)
  {
    v21 = v20;
  }

  else
  {

    sub_26EF3B46C();
    v22 = a3;
    v23 = sub_26EF3A36C();
    sub_26EF3880C();

    a3 = v22;
    sub_26EF39DCC();
    swift_getAtKeyPath();
    sub_26EE14578(&v55, &qword_2806C7988, &qword_26EF3EDA8);
    (*(v8 + 8))(v10, v7);
    v21 = v53;
  }

  [v19 setScale_];
  [v19 setDrawBorder_];
  v24 = v15;
  v48 = v15;
  sub_26EF3868C();
  v25 = [a3 localizedName];
  *&v26 = COERCE_DOUBLE(sub_26EF3B0FC());
  v28 = v27;

  v53 = *&v26;
  v54 = v28;
  sub_26EE12538(v29, v30, v31);
  v32 = sub_26EF3A5DC();
  v34 = v33;
  LOBYTE(v28) = v35;
  v37 = v36;
  v39 = v49;
  v38 = v50;
  v40 = *(v50 + 16);
  v41 = v24;
  v42 = v51;
  v40(v49, v41, v51);
  v43 = v52;
  v40(v52, v39, v42);
  v44 = &v43[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7990, &qword_26EF3EDB0) + 48)];
  *v44 = v32;
  *(v44 + 1) = v34;
  LOBYTE(v28) = v28 & 1;
  v44[16] = v28;
  *(v44 + 3) = v37;
  sub_26EE13B20(v32, v34, v28);
  v45 = *(v38 + 8);

  v45(v48, v42);
  sub_26EE12ABC(v32, v34, v28);

  return (v45)(v39, v42);
}

uint64_t sub_26EE50D88(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806C9C80, &qword_26EF3E400);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v17[-v3 - 8];
  v5 = sub_26EF3B30C();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  sub_26EF3B2DC();
  sub_26EE5426C(a1, v17);
  v6 = sub_26EF3B2CC();
  v7 = swift_allocObject();
  v8 = MEMORY[0x277D85700];
  *(v7 + 16) = v6;
  *(v7 + 24) = v8;
  v9 = *(a1 + 176);
  *(v7 + 192) = *(a1 + 160);
  *(v7 + 208) = v9;
  *(v7 + 224) = *(a1 + 192);
  v10 = *(a1 + 112);
  *(v7 + 128) = *(a1 + 96);
  *(v7 + 144) = v10;
  v11 = *(a1 + 144);
  *(v7 + 160) = *(a1 + 128);
  *(v7 + 176) = v11;
  v12 = *(a1 + 48);
  *(v7 + 64) = *(a1 + 32);
  *(v7 + 80) = v12;
  v13 = *(a1 + 80);
  *(v7 + 96) = *(a1 + 64);
  *(v7 + 112) = v13;
  v14 = *(a1 + 16);
  *(v7 + 32) = *a1;
  *(v7 + 48) = v14;
  sub_26EE2C388(0, 0, v4, &unk_26EF3ED48, v7);
}

uint64_t sub_26EE50EE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[27] = a4;
  sub_26EF3B2DC();
  v4[28] = sub_26EF3B2CC();
  v6 = sub_26EF3B29C();
  v4[29] = v6;
  v4[30] = v5;

  return MEMORY[0x2822009F8](sub_26EE50F80, v6, v5);
}

uint64_t sub_26EE50F80()
{
  v1 = *(v0 + 216);
  sub_26EE4C808();
  *(v0 + 16) = *v1;
  v2 = *(v1 + 16);
  v3 = *(v1 + 32);
  v4 = *(v1 + 64);
  *(v0 + 64) = *(v1 + 48);
  *(v0 + 80) = v4;
  *(v0 + 32) = v2;
  *(v0 + 48) = v3;
  v5 = *(v1 + 80);
  v6 = *(v1 + 96);
  v7 = *(v1 + 128);
  *(v0 + 128) = *(v1 + 112);
  *(v0 + 144) = v7;
  *(v0 + 96) = v5;
  *(v0 + 112) = v6;
  v8 = *(v1 + 144);
  v9 = *(v1 + 160);
  v10 = *(v1 + 176);
  *(v0 + 208) = *(v1 + 192);
  *(v0 + 176) = v9;
  *(v0 + 192) = v10;
  *(v0 + 160) = v8;
  v11 = swift_task_alloc();
  *(v0 + 248) = v11;
  *v11 = v0;
  v11[1] = sub_26EE51058;

  return sub_26EE4CA18();
}

uint64_t sub_26EE51058()
{
  v1 = *v0;

  v2 = *(v1 + 240);
  v3 = *(v1 + 232);

  return MEMORY[0x2822009F8](sub_26EE56488, v3, v2);
}

id sub_26EE5117C(uint64_t a1, uint64_t a2, char a3)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v5 = sub_26EF3B0BC();

  v10[0] = 0;
  v6 = [v3 initWithBundleIdentifier:v5 allowPlaceholder:a3 & 1 error:v10];

  if (v6)
  {
    v7 = v10[0];
  }

  else
  {
    v8 = v10[0];
    sub_26EF37D1C();

    swift_willThrow();
  }

  return v6;
}

double sub_26EE51258@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_26EE1FCF4(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v14 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_26EE51D7C();
      v10 = v14;
    }

    v11 = *(v10 + 56) + 40 * v8;
    v12 = *(v11 + 16);
    *a3 = *v11;
    *(a3 + 16) = v12;
    *(a3 + 32) = *(v11 + 32);
    sub_26EE51880(v8, v10);
    *v4 = v10;
  }

  else
  {
    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t sub_26EE5130C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C79B8, &qword_26EF3EDD0);
  v38 = v4;
  result = sub_26EF3B7BC();
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
      v20 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v23 = v20 | (v8 << 6);
      v24 = (*(v5 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(v5 + 56) + 40 * v23;
      if (v38)
      {
        v28 = *v27;
        v29 = *(v27 + 16);
        v41 = *(v27 + 32);
        v39 = v28;
        v40 = v29;
      }

      else
      {
        sub_26EE563E8(v27, &v39);
      }

      sub_26EF3B87C();
      sub_26EF3B16C();
      result = sub_26EF3B8CC();
      v30 = -1 << *(v7 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v14 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v14 + 8 * v32);
          if (v36 != -1)
          {
            v15 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v31) & ~*(v14 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v25;
      v16[1] = v26;
      v17 = *(v7 + 56) + 40 * v15;
      v18 = v39;
      v19 = v40;
      *(v17 + 32) = v41;
      *v17 = v18;
      *(v17 + 16) = v19;
      ++*(v7 + 16);
    }

    v21 = v8;
    while (1)
    {
      v8 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v22 = v9[v8];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v12 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v2;
    if (v37 >= 64)
    {
      bzero((v5 + 64), ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_26EE515DC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7998, &qword_26EF3EDB8);
  v35 = v4;
  result = sub_26EF3B7BC();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v5;
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
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {

        v25 = v24;
      }

      sub_26EF3B87C();
      sub_26EF3B16C();
      result = sub_26EF3B8CC();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_26EE51880(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_26EF3B6AC() + 1) & ~v5;
    do
    {
      sub_26EF3B87C();

      sub_26EF3B16C();
      v11 = sub_26EF3B8CC();

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v12 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v12)
      {
LABEL_10:
        v13 = *(a2 + 48);
        v14 = (v13 + 16 * v3);
        v15 = (v13 + 16 * v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
        }

        v16 = *(a2 + 56);
        v17 = v16 + 40 * v3;
        v18 = (v16 + 40 * v6);
        if (v3 != v6 || v17 >= v18 + 40)
        {
          v9 = *v18;
          v10 = v18[1];
          *(v17 + 32) = *(v18 + 4);
          *v17 = v9;
          *(v17 + 16) = v10;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_26EE51A3C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_26EF3B6AC() + 1) & ~v5;
    do
    {
      sub_26EF3B87C();

      sub_26EF3B16C();
      v9 = sub_26EF3B8CC();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_26EE51BEC(__int128 *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_26EE1FCF4(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_26EE5130C(v16, a4 & 1);
      v11 = sub_26EE1FCF4(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = sub_26EF3B86C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_26EE51D7C();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    v22 = v21[7] + 40 * v11;

    return sub_26EE5638C(a1, v22);
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v24 = (v21[6] + 16 * v11);
  *v24 = a2;
  v24[1] = a3;
  v25 = v21[7] + 40 * v11;
  v26 = *a1;
  v27 = a1[1];
  *(v25 + 32) = *(a1 + 4);
  *v25 = v26;
  *(v25 + 16) = v27;
  v28 = v21[2];
  v15 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v29;
}

void *sub_26EE51D7C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C79B8, &qword_26EF3EDD0);
  v2 = *v0;
  v3 = sub_26EF3B7AC();
  v4 = v3;
  if (*(v2 + 16))
  {
    v27 = v1;
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 40 * v17;
        sub_26EE563E8(*(v2 + 56) + 40 * v17, v28);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        v24 = *(v4 + 56) + v22;
        v25 = v29;
        v26 = v28[1];
        *v24 = v28[0];
        *(v24 + 16) = v26;
        *(v24 + 32) = v25;
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

        v1 = v27;
        goto LABEL_21;
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

id sub_26EE51F30()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7998, &qword_26EF3EDB8);
  v2 = *v0;
  v3 = sub_26EF3B7AC();
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
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

void *sub_26EE5209C(void *result)
{
  v1 = result[2];
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v3 = 0;
    v4 = 0;
    v5 = (MEMORY[0x277D84F90] + 32);
    v6 = result + 5;
    while (1)
    {
      v7 = *(v6 - 1);
      v8 = *v6;
      if (v4)
      {

        v9 = __OFSUB__(v4--, 1);
        if (v9)
        {
          goto LABEL_28;
        }
      }

      else
      {
        v10 = v2[3];
        if (((v10 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_29;
        }

        v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
        if (v11 <= 1)
        {
          v12 = 1;
        }

        else
        {
          v12 = v11;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C79E0, &unk_26EF3EE10);
        v13 = swift_allocObject();
        v14 = (_swift_stdlib_malloc_size(v13) - 32) / 24;
        v13[2] = v12;
        v13[3] = 2 * v14;
        v15 = v13 + 4;
        v16 = v2[3] >> 1;
        v5 = &v13[3 * v16 + 4];
        v17 = (v14 & 0x7FFFFFFFFFFFFFFFLL) - v16;
        if (v2[2])
        {
          if (v13 != v2 || v15 >= &v2[3 * v16 + 4])
          {
            memmove(v15, v2 + 4, 24 * v16);
          }

          v2[2] = 0;
        }

        else
        {
        }

        v2 = v13;
        v9 = __OFSUB__(v17, 1);
        v4 = v17 - 1;
        if (v9)
        {
LABEL_28:
          __break(1u);
LABEL_29:
          __break(1u);
LABEL_30:
          __break(1u);
          return result;
        }
      }

      *v5 = v3;
      v5[1] = v7;
      v5[2] = v8;
      v5 += 3;
      v6 += 2;
      if (v1 == ++v3)
      {
        goto LABEL_24;
      }
    }
  }

  v4 = 0;
LABEL_24:
  v19 = v2[3];
  if (v19 >= 2)
  {
    v20 = v19 >> 1;
    v9 = __OFSUB__(v20, v4);
    v21 = v20 - v4;
    if (v9)
    {
      goto LABEL_30;
    }

    v2[2] = v21;
  }

  return v2;
}

uint64_t sub_26EE5224C(uint64_t a1, uint64_t a2)
{
  v4 = (*(*a1 + 296))();
  v6 = v5;
  if (v4 == (*(*a2 + 296))() && v6 == v7)
  {
  }

  else
  {
    v9 = sub_26EF3B82C();

    if ((v9 & 1) == 0)
    {
LABEL_13:
      v17 = 0;
      return v17 & 1;
    }
  }

  v11 = (*(*a1 + 200))(v10);
  if (v11 != (*(*a2 + 200))())
  {
    goto LABEL_13;
  }

  v12 = (*(*a1 + 248))();
  if (v12 != (*(*a2 + 248))())
  {
    goto LABEL_13;
  }

  v13 = (*(*a1 + 152))();
  v15 = v14;
  if (v13 == (*(*a2 + 152))() && v15 == v16)
  {
    v17 = 1;
  }

  else
  {
    v17 = sub_26EF3B82C();
  }

  return v17 & 1;
}

unint64_t sub_26EE524C8()
{
  result = qword_2806C76D0;
  if (!qword_2806C76D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C7628, &qword_26EF3E760);
    sub_26EE52554();
    sub_26EE52850();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C76D0);
  }

  return result;
}

unint64_t sub_26EE52554()
{
  result = qword_2806C76D8;
  if (!qword_2806C76D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C7660, &qword_26EF3E798);
    sub_26EE525D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C76D8);
  }

  return result;
}

unint64_t sub_26EE525D8()
{
  result = qword_2806C76E0;
  if (!qword_2806C76E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C7648, &qword_26EF3E780);
    sub_26EE526F4();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C7650, &qword_26EF3E788);
    sub_26EF39E1C();
    sub_26EE154C8(&qword_2806C76F0, &qword_2806C7650, &qword_26EF3E788, MEMORY[0x277CDF038]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C76E0);
  }

  return result;
}

unint64_t sub_26EE526F4()
{
  result = qword_2806C76E8;
  if (!qword_2806C76E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C7640, &qword_26EF3E778);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C7658, &qword_26EF3E790);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C7650, &qword_26EF3E788);
    sub_26EF39E1C();
    sub_26EE154C8(&qword_2806C76F0, &qword_2806C7650, &qword_26EF3E788, MEMORY[0x277CDF038]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C76E8);
  }

  return result;
}

unint64_t sub_26EE52850()
{
  result = qword_2806C76F8;
  if (!qword_2806C76F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C7610, &qword_26EF3E748);
    sub_26EE154C8(&qword_2806C7230, &qword_2806C7178, &qword_26EF3DD70, MEMORY[0x277CDF068]);
    sub_26EE52938(&qword_2806C6AD8, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C76F8);
  }

  return result;
}

uint64_t sub_26EE52938(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_26EE52980()
{
  result = qword_2806C7700;
  if (!qword_2806C7700)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C7698, &qword_26EF3E7D0);
    sub_26EE52A0C();
    sub_26EE52CD4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C7700);
  }

  return result;
}

unint64_t sub_26EE52A0C()
{
  result = qword_2806C7708;
  if (!qword_2806C7708)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C7690, &qword_26EF3E7C8);
    sub_26EE52A98();
    sub_26EE52BA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C7708);
  }

  return result;
}

unint64_t sub_26EE52A98()
{
  result = qword_2806C7710;
  if (!qword_2806C7710)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C76C8, &qword_26EF3E800);
    sub_26EE52B1C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C7710);
  }

  return result;
}

unint64_t sub_26EE52B1C()
{
  result = qword_2806C7718;
  if (!qword_2806C7718)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C7720, &qword_26EF3E808);
    sub_26EE52BA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C7718);
  }

  return result;
}

unint64_t sub_26EE52BA8()
{
  result = qword_2806C7728;
  if (!qword_2806C7728)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C76B8, &qword_26EF3E7F0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C76A8, &qword_26EF3E7E0);
    sub_26EE154C8(&qword_2806C7730, &qword_2806C76A8, &qword_26EF3E7E0, MEMORY[0x277CDF0B8]);
    swift_getOpaqueTypeConformance2();
    sub_26EE52938(&qword_2806C6AD8, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C7728);
  }

  return result;
}

unint64_t sub_26EE52CD4()
{
  result = qword_2806C7738;
  if (!qword_2806C7738)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C7670, &qword_26EF3E7A8);
    sub_26EE52BA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C7738);
  }

  return result;
}

unint64_t sub_26EE52D58()
{
  result = qword_2806C7740;
  if (!qword_2806C7740)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C7630, &qword_26EF3E768);
    sub_26EE524C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C7740);
  }

  return result;
}

uint64_t sub_26EE52DE4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AUParamView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26EE52E4C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AUParamView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26EE52EB0@<X0>(BOOL *a1@<X8>)
{
  type metadata accessor for AUParamView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7608, &unk_26EF3E738);
  v2 = sub_26EF3AD9C();
  v3 = (*(*v5 + 248))(v2);

  *a1 = v3 == 1.0;
  return result;
}

uint64_t objectdestroyTm_3()
{
  v1 = *(type metadata accessor for AUParamView(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  swift_unknownObjectRelease();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7608, &unk_26EF3E738);
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_26EE53064(unsigned __int8 *a1)
{
  type metadata accessor for AUParamView(0);
  LODWORD(a1) = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7608, &unk_26EF3E738);
  v2 = sub_26EF3AD9C();
  v3.n128_u64[0] = 0;
  if (a1)
  {
    v3.n128_f32[0] = 1.0;
  }

  (*(*v5 + 256))(v2, v3);
}

uint64_t sub_26EE53144@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7608, &unk_26EF3E738);
  v2 = sub_26EF3AD9C();
  (*(*v10 + 152))(v2);

  sub_26EE12538(v3, v4, v5);
  result = sub_26EF3A5DC();
  *a1 = result;
  *(a1 + 8) = v7;
  *(a1 + 16) = v8 & 1;
  *(a1 + 24) = v9;
  return result;
}

uint64_t sub_26EE531F8()
{
  sub_26EE5209C(*(v0 + 16));
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C79C8, &qword_26EF3EE00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C79D0, &qword_26EF3EE08);
  sub_26EE154C8(&qword_2806C79D8, &qword_2806C79C8, &qword_26EF3EE00, MEMORY[0x277D83980]);
  swift_getOpaqueTypeConformance2();
  return sub_26EF3ACEC();
}

unint64_t sub_26EE53338()
{
  result = qword_2806C7750;
  if (!qword_2806C7750)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C7748, &qword_26EF3E810);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C7750);
  }

  return result;
}

uint64_t sub_26EE53400(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7648, &qword_26EF3E780);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26EE53470()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7658, &qword_26EF3E790);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C7650, &qword_26EF3E788);
  sub_26EF39E1C();
  sub_26EE154C8(&qword_2806C76F0, &qword_2806C7650, &qword_26EF3E788, MEMORY[0x277CDF038]);
  swift_getOpaqueTypeConformance2();
  return sub_26EF3A6BC();
}

uint64_t sub_26EE535BC@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7608, &unk_26EF3E738);
  v6 = sub_26EF3AD9C();
  v7 = (*(*v34 + 152))(v6);

  v35 = v7;
  sub_26EE12538(v8, v9, v10);
  v11 = sub_26EF3A5DC();
  v13 = v12;
  v33 = v14;
  v16 = v15;
  v17 = sub_26EE17094() & 1;
  v18._countAndFlagsBits = a1;
  v18._object = a2;
  TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(v18, v17, 0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C67B0, &qword_26EF3D4B0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_26EF3C6B0;
  v20 = sub_26EF3AD9C();
  v21 = (*(*v35 + 248))(v20);

  if ((LODWORD(v21) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v21 <= -9.2234e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v21 < 9.2234e18)
  {
    v23 = sub_26EF3B7FC();
    v25 = v24;
    *(v19 + 56) = MEMORY[0x277D837D0];
    *(v19 + 64) = sub_26EE1EFBC(v23, v24, v26);
    *(v19 + 32) = v23;
    *(v19 + 40) = v25;
    sub_26EF3B10C();

    v27 = sub_26EF3A5DC();
    v29 = v28;
    v31 = v30 & 1;
    *a3 = v11;
    *(a3 + 8) = v13;
    *(a3 + 16) = v33 & 1;
    *(a3 + 24) = v16;
    *(a3 + 32) = v27;
    *(a3 + 40) = v28;
    *(a3 + 48) = v30 & 1;
    *(a3 + 56) = v32;
    sub_26EE13B20(v11, v13, v33 & 1);

    sub_26EE13B20(v27, v29, v31);

    sub_26EE12ABC(v27, v29, v31);

    sub_26EE12ABC(v11, v13, v33 & 1);
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t objectdestroy_18Tm()
{
  v1 = *(type metadata accessor for AUParamView(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7608, &unk_26EF3E738);
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_26EE5397C(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for AUParamView(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t sub_26EE53A20@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7608, &unk_26EF3E738);
  v2 = sub_26EF3AD9C();
  v3 = (*(*v27 + 152))(v2);

  v28 = v3;
  sub_26EE12538(v4, v5, v6);
  v7 = sub_26EF3A5DC();
  v9 = v8;
  v26 = v10;
  v12 = v11;
  v13 = sub_26EE17094() & 1;
  v14._countAndFlagsBits = 0x4D524F465F4D5057;
  v14._object = 0xEA00000000005441;
  TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(v14, v13, 0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C67B0, &qword_26EF3D4B0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_26EF3C6B0;
  v16 = sub_26EF3AD9C();
  v17 = (*(*v28 + 248))(v16);

  if ((LODWORD(v17) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v17 <= -9.2234e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v17 < 9.2234e18)
  {
    v19 = MEMORY[0x277D83C10];
    *(v15 + 56) = MEMORY[0x277D83B88];
    *(v15 + 64) = v19;
    *(v15 + 32) = v17;
    sub_26EF3B0CC();

    v20 = sub_26EF3A5DC();
    v22 = v21;
    v24 = v23 & 1;
    *a1 = v7;
    *(a1 + 8) = v9;
    *(a1 + 16) = v26 & 1;
    *(a1 + 24) = v12;
    *(a1 + 32) = v20;
    *(a1 + 40) = v21;
    *(a1 + 48) = v23 & 1;
    *(a1 + 56) = v25;
    sub_26EE13B20(v7, v9, v26 & 1);

    sub_26EE13B20(v20, v22, v24);

    sub_26EE12ABC(v20, v22, v24);

    sub_26EE12ABC(v7, v9, v26 & 1);
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_26EE53CFC(uint64_t *a1)
{
  if (__isPlatformVersionAtLeast(2, 26, 0, 0))
  {
    sub_26EF3A28C();

    return sub_26EF39ABC();
  }

  else
  {
    sub_26EF39B8C();
    swift_getWitnessTable();
    sub_26EF3A1AC();
    sub_26EF39ABC();
    sub_26EF3B5CC();
    swift_getWitnessTable();
    sub_26EF39B8C();
    swift_getWitnessTable();
    sub_26EF3A1AC();
    return sub_26EF39ABC();
  }
}

uint64_t sub_26EE53E60(uint64_t *a1)
{
  if (__isPlatformVersionAtLeast(2, 26, 0, 0))
  {
    sub_26EF3A28C();
    sub_26EF39ABC();
  }

  else
  {
    sub_26EF39B8C();
    swift_getWitnessTable();
    sub_26EF3A1AC();
    sub_26EF39ABC();
    sub_26EF3B5CC();
    swift_getWitnessTable();
    sub_26EF39B8C();
    swift_getWitnessTable();
    sub_26EF3A1AC();
    sub_26EF39ABC();
    swift_getWitnessTable();
    swift_getWitnessTable();
  }

  swift_getWitnessTable();
  return swift_getWitnessTable();
}

unint64_t sub_26EE54068(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_2806C7788;
  if (!qword_2806C7788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C7788);
  }

  return result;
}

unint64_t sub_26EE540BC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7998, &qword_26EF3EDB8);
    v3 = sub_26EF3B7CC();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_26EE1FCF4(v5, v6);
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

uint64_t sub_26EE541C0()
{
  sub_26EE4D768();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C72E0, &qword_26EF3E8C0);
  return sub_26EF3AB0C();
}

uint64_t sub_26EE54224(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return v2;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_26EE542A4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C79B8, &qword_26EF3EDD0);
    v3 = sub_26EF3B7CC();
    v4 = a1 + 32;

    while (1)
    {
      sub_26EE13B88(v4, &v16, &qword_2806C79C0, &qword_26EF3EDD8);
      v5 = v16;
      v6 = v17;
      result = sub_26EE1FCF4(v16, v17);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      v10 = v3[7] + 40 * result;
      v11 = v18;
      v12 = v19;
      *(v10 + 32) = v20;
      *v10 = v11;
      *(v10 + 16) = v12;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      v4 += 56;
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

uint64_t sub_26EE543DC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C77E0, &qword_26EF3E8C8);
  sub_26EF3AAFC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C77E8, &qword_26EF3E8D0);
  sub_26EF3AAFC();
  isUniquelyReferenced_nonNull_native = v38;
  if (v38 >> 62)
  {
LABEL_33:
    v1 = sub_26EF3B79C();
    if (v1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v1 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v1)
    {
LABEL_3:
      v2 = 0;
      v35 = isUniquelyReferenced_nonNull_native;
      v36 = isUniquelyReferenced_nonNull_native & 0xC000000000000001;
      v33 = isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8;
      v34 = v1;
      do
      {
        if (v36)
        {
          v3 = MEMORY[0x2743837E0](v2, isUniquelyReferenced_nonNull_native);
          v4 = v2 + 1;
          if (__OFADD__(v2, 1))
          {
            goto LABEL_29;
          }
        }

        else
        {
          if (v2 >= *(v33 + 16))
          {
            goto LABEL_31;
          }

          v3 = *(isUniquelyReferenced_nonNull_native + 8 * v2 + 32);

          v4 = v2 + 1;
          if (__OFADD__(v2, 1))
          {
LABEL_29:
            __break(1u);
LABEL_30:
            __break(1u);
LABEL_31:
            __break(1u);
LABEL_32:
            __break(1u);
            goto LABEL_33;
          }
        }

        v37 = v4;
        v5 = (*(*v3 + 296))();
        v7 = v6;
        v8 = (*(*v3 + 248))();
        v9 = objc_allocWithZone(MEMORY[0x277CCABB0]);
        *&v10 = v8;
        v11 = [v9 initWithFloat_];
        if (!v11)
        {
          v21 = sub_26EE1FCF4(v5, v7);
          v23 = v22;

          if (v23)
          {
            if (!swift_isUniquelyReferenced_nonNull_native())
            {
              sub_26EE51F30();
            }

            sub_26EE51A3C(v21, v38);
          }

          goto LABEL_6;
        }

        v12 = v11;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v14 = sub_26EE1FCF4(v5, v7);
        v15 = *(v38 + 16);
        v16 = (v13 & 1) == 0;
        v17 = v15 + v16;
        if (__OFADD__(v15, v16))
        {
          goto LABEL_30;
        }

        v18 = v13;
        if (*(v38 + 24) >= v17)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            if ((v13 & 1) == 0)
            {
              goto LABEL_26;
            }
          }

          else
          {
            sub_26EE51F30();
            if ((v18 & 1) == 0)
            {
              goto LABEL_26;
            }
          }
        }

        else
        {
          sub_26EE515DC(v17, isUniquelyReferenced_nonNull_native);
          v19 = sub_26EE1FCF4(v5, v7);
          if ((v18 & 1) != (v20 & 1))
          {
            result = sub_26EF3B86C();
            __break(1u);
            return result;
          }

          v14 = v19;
          if ((v18 & 1) == 0)
          {
LABEL_26:
            *(v38 + 8 * (v14 >> 6) + 64) |= 1 << v14;
            v26 = (*(v38 + 48) + 16 * v14);
            *v26 = v5;
            v26[1] = v7;
            *(*(v38 + 56) + 8 * v14) = v12;

            v27 = *(v38 + 16);
            v28 = __OFADD__(v27, 1);
            v29 = v27 + 1;
            if (v28)
            {
              goto LABEL_32;
            }

            *(v38 + 16) = v29;
            goto LABEL_28;
          }
        }

        v24 = *(v38 + 56);
        v25 = *(v24 + 8 * v14);
        *(v24 + 8 * v14) = v12;

LABEL_28:
        v1 = v34;
        isUniquelyReferenced_nonNull_native = v35;
LABEL_6:
        ++v2;
      }

      while (v37 != v1);
    }
  }

  sub_26EF3AAFC();
  sub_26EE4EA6C(v38, v38);
  v31 = v30;

  if (v31)
  {
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C77D0, &qword_26EF3E8B0);
  return sub_26EF3AC3C();
}

uint64_t sub_26EE547E8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C72E0, &qword_26EF3E8C0);
  sub_26EF3AB0C();
  return sub_26EE4C808();
}

unint64_t sub_26EE54870()
{
  result = qword_2806C7840;
  if (!qword_2806C7840)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C7828, &qword_26EF3E910);
    sub_26EE548FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C7840);
  }

  return result;
}

unint64_t sub_26EE548FC()
{
  result = qword_2806C7848;
  if (!qword_2806C7848)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C7850, &qword_26EF3E928);
    sub_26EE54980();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C7848);
  }

  return result;
}

unint64_t sub_26EE54980()
{
  result = qword_2806C7858;
  if (!qword_2806C7858)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C7860, &unk_26EF3E930);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C7868, &unk_26EF41660);
    sub_26EE154C8(&qword_2806C7870, &qword_2806C7868, &unk_26EF41660, MEMORY[0x277CDD7F8]);
    swift_getOpaqueTypeConformance2();
    sub_26EE54A7C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C7858);
  }

  return result;
}

unint64_t sub_26EE54A7C()
{
  result = qword_2806C7878;
  if (!qword_2806C7878)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C7880, &qword_26EF3E940);
    sub_26EE54B08();
    sub_26EE54C00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C7878);
  }

  return result;
}

unint64_t sub_26EE54B08()
{
  result = qword_2806C7888;
  if (!qword_2806C7888)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C7890, &qword_26EF3E948);
    type metadata accessor for AUParamView(255);
    sub_26EE52938(&qword_2806C7898, type metadata accessor for AUParamView, &protocol conformance descriptor for AUParamView);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C7888);
  }

  return result;
}

unint64_t sub_26EE54C00()
{
  result = qword_2806C78A0;
  if (!qword_2806C78A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C78A8, &qword_26EF3E950);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C78B0, &qword_26EF3E958);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C78B8, &unk_26EF3E960);
    sub_26EE154C8(&qword_2806C78C0, &qword_2806C78B0, &qword_26EF3E958, MEMORY[0x277CDF028]);
    sub_26EE154C8(&qword_2806C78C8, &qword_2806C78B8, &unk_26EF3E960, MEMORY[0x277CDE368]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C78A0);
  }

  return result;
}

unint64_t sub_26EE54D54()
{
  result = qword_2806C78D0;
  if (!qword_2806C78D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C77B0, &qword_26EF3E860);
    sub_26EE52938(&qword_2806C78D8, type metadata accessor for AUParameterViewModel, &unk_26EF3E9F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C78D0);
  }

  return result;
}

unint64_t sub_26EE54E10()
{
  result = qword_2806C78E8;
  if (!qword_2806C78E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C78E0, &qword_26EF40680);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C78E8);
  }

  return result;
}

unint64_t sub_26EE54EB0()
{
  result = qword_2806C78F0;
  if (!qword_2806C78F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C7800, &qword_26EF3E8E8);
    sub_26EE56304(&qword_2806C78F8, &qword_2806C7900, MEMORY[0x277D85380], MEMORY[0x277D83518]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C78F0);
  }

  return result;
}

uint64_t sub_26EE54F6C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_26EE1FAB8(255, &qword_2806C7820, 0x277CCABB0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_26EE54FC0(uint64_t *a1)
{
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    sub_26EF39A1C();
  }

  else
  {
    sub_26EF3990C();
  }

  return sub_26EF39ABC();
}

uint64_t sub_26EE55028(uint64_t *a1)
{
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    sub_26EF39A1C();
    sub_26EF39ABC();
    sub_26EE5511C();
  }

  else
  {
    sub_26EF3990C();
    sub_26EF39ABC();
    sub_26EE52938(&qword_2806C6708, MEMORY[0x277CDD8B0], MEMORY[0x277CDD8A0]);
  }

  return swift_getWitnessTable();
}

unint64_t sub_26EE5511C()
{
  result = qword_2806C7908;
  if (!qword_2806C7908)
  {
    sub_26EF39A1C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C7908);
  }

  return result;
}

uint64_t sub_26EE5520C(uint64_t a1)
{
  result = sub_26EF3804C();
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

uint64_t sub_26EE552E8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7608, &unk_26EF3E738);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_26EE55374(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7608, &unk_26EF3E738);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_26EE553F0(uint64_t a1)
{
  sub_26EE5545C(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_26EE5545C(uint64_t a1)
{
  if (!qword_2806C7920)
  {
    type metadata accessor for AUParameterViewModel(255);
    v1 = sub_26EF3ADDC();
    if (!v2)
    {
      atomic_store(v1, &qword_2806C7920);
    }
  }
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

uint64_t sub_26EE554D0(uint64_t a1, int a2)
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

uint64_t sub_26EE55518(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy193_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  v5 = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = v5;
  *(a1 + 96) = v6;
  result = *(a2 + 144);
  v9 = *(a2 + 160);
  v10 = *(a2 + 176);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 160) = v9;
  *(a1 + 176) = v10;
  *(a1 + 144) = result;
  return result;
}

uint64_t sub_26EE555C4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 193))
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

uint64_t sub_26EE5560C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 184) = 0;
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
    *(result + 192) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 193) = 1;
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

    *(result + 193) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_26EE55694()
{
  result = qword_2806C7928;
  if (!qword_2806C7928)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C7930, &unk_26EF3ED30);
    sub_26EE52980();
    sub_26EE52D58();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C7928);
  }

  return result;
}

uint64_t sub_26EE55720()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C7780, &qword_26EF3E848);
  sub_26EF39B0C();
  sub_26EE154C8(&qword_2806C7790, &qword_2806C7780, &qword_26EF3E848, MEMORY[0x277CDE580]);
  sub_26EE52938(&qword_2806C7798, MEMORY[0x277CDDAB8], MEMORY[0x277CDDAA8]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_26EE55800()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C7838, &qword_26EF3E920);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C7800, &qword_26EF3E8E8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C7830, &qword_26EF3E918);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C78E0, &qword_26EF40680);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C7828, &qword_26EF3E910);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C77B0, &qword_26EF3E860);
  sub_26EE54870();
  sub_26EE54D54();
  swift_getOpaqueTypeConformance2();
  sub_26EE54E10();
  swift_getOpaqueTypeConformance2();
  sub_26EE54EB0();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_26EE55944()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_26EE15538;

  return sub_26EE50EE8(v2, v3, v4, v0 + 32);
}

uint64_t sub_26EE559D4()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

void sub_26EE55A0C()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() defaultWorkspace];
  if (v2)
  {
    v3 = v2;
    v4 = [v1 bundleIdentifier];
    v5 = [objc_allocWithZone(MEMORY[0x277CC1F00]) init];
    v7[4] = CGSizeMake;
    v7[5] = 0;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 1107296256;
    v7[2] = sub_26EE50938;
    v7[3] = &block_descriptor_122;
    v6 = _Block_copy(v7);
    [v3 openApplicationWithBundleIdentifier:v4 usingConfiguration:v5 completionHandler:v6];
    _Block_release(v6);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_26EE55B34@<X0>(uint64_t a2@<X8>)
{
  v4 = v2[2];
  v5 = v2[3];
  v6 = v2[4];
  *a2 = sub_26EF39E4C();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7978, &qword_26EF3ED98);
  return sub_26EE509B0(v4, v5, v6, (a2 + *(v7 + 44)));
}

uint64_t objectdestroy_39Tm()
{

  sub_26EE54224(*(v0 + 200), *(v0 + 208));

  return MEMORY[0x2821FE8E8](v0, 209, 7);
}

uint64_t objectdestroy_92Tm()
{
  swift_unknownObjectRelease();

  sub_26EE54224(*(v0 + 216), *(v0 + 224));

  return MEMORY[0x2821FE8E8](v0, 225, 7);
}

uint64_t sub_26EE55D70()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_26EE05D7C;

  return sub_26EE504AC(v2, v3, v0 + 32);
}

uint64_t sub_26EE55E00()
{

  sub_26EE54224(*(v0 + 200), *(v0 + 208));

  return MEMORY[0x2821FE8E8](v0, 224, 7);
}

uint64_t sub_26EE55F48(uint64_t a1)
{
  v2 = type metadata accessor for AUParamView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26EE55FE0@<X0>(void *a1@<X8>)
{
  v12 = *(v1 + 64);
  v13 = *(v1 + 80);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7778, &qword_26EF3E840);
  result = MEMORY[0x274382CF0](&v11, v3);
  v5 = v11;
  if (!v11)
  {
    goto LABEL_8;
  }

  v6 = sub_26EF3B0FC();
  if (!*(v5 + 16))
  {

    goto LABEL_7;
  }

  v8 = sub_26EE1FCF4(v6, v7);
  v10 = v9;

  if ((v10 & 1) == 0)
  {
LABEL_7:

    goto LABEL_8;
  }

  sub_26EE563E8(*(v5 + 56) + 40 * v8, v14);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C77A8, &qword_26EF3E858);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_8:
    *a1 = 0;
  }

  return result;
}

uint64_t objectdestroy_124Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_26EE56154(uint64_t *a1)
{
  v2 = *a1;
  v10 = *(v1 + 64);
  *&v11 = *(v1 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7778, &qword_26EF3E840);
  MEMORY[0x274382CF0](v13);
  if (v13[0])
  {
  }

  else
  {
    v3 = sub_26EE542A4(MEMORY[0x277D84F90]);
    v10 = *(v1 + 64);
    *&v11 = *(v1 + 80);
    v13[0] = v3;
    sub_26EF3AC3C();
  }

  v4 = TTSPerVoiceSettingsView.settings.modify(v13);
  if (!*v5)
  {
    return (v4)(v13, 0);
  }

  v6 = sub_26EF3B0FC();
  v8 = v7;
  if (v2)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C77A8, &qword_26EF3E858);
    sub_26EE56304(&qword_2806C79A0, &qword_2806C79A8, MEMORY[0x277D85378], MEMORY[0x277D83510]);
    sub_26EF3B6BC();
  }

  else
  {
    v12 = 0;
    v10 = 0u;
    v11 = 0u;
  }

  sub_26EE4B4D8(&v10, v6, v8);
  return (v4)(v13, 0);
}

uint64_t sub_26EE56304(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C77A8, &qword_26EF3E858);
    sub_26EE54F6C(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t type metadata accessor for VoiceInformationSection(uint64_t a1)
{
  result = qword_2806CBB40;
  if (!qword_2806CBB40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26EE564D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C70E8, &qword_26EF3DCA0);
  v31 = *(v3 - 8);
  v32 = v3;
  MEMORY[0x28223BE20](v3);
  v30 = &v30 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7088, &unk_26EF3E330);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v30 - v6;
  v8 = sub_26EF38DBC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7A98, &qword_26EF3EF50);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v30 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7AA0, &qword_26EF3EF58);
  v19 = MEMORY[0x28223BE20](v18 - 8);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v30 - v22;
  sub_26EE56948(&v30 - v22);
  v24 = type metadata accessor for VoiceInformationSection(0);
  sub_26EE13B88(a1 + *(v24 + 32), v7, &qword_2806C7088, &unk_26EF3E330);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_26EE14578(v7, &qword_2806C7088, &unk_26EF3E330);
LABEL_6:
    v26 = 1;
    goto LABEL_7;
  }

  (*(v9 + 32))(v11, v7, v8);
  if (sub_26EF38D8C() != 7)
  {
    (*(v9 + 8))(v11, v8);
    goto LABEL_6;
  }

  v25 = v30;
  sub_26EE5828C(v30);
  (*(v9 + 8))(v11, v8);
  sub_26EE14D98(v25, v17, &qword_2806C70E8, &qword_26EF3DCA0);
  v26 = 0;
LABEL_7:
  (*(v31 + 56))(v17, v26, 1, v32);
  sub_26EE13B88(v23, v21, &qword_2806C7AA0, &qword_26EF3EF58);
  sub_26EE13B88(v17, v15, &qword_2806C7A98, &qword_26EF3EF50);
  v27 = v33;
  sub_26EE13B88(v21, v33, &qword_2806C7AA0, &qword_26EF3EF58);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7AA8, &qword_26EF3EF60);
  sub_26EE13B88(v15, v27 + *(v28 + 48), &qword_2806C7A98, &qword_26EF3EF50);
  sub_26EE14578(v17, &qword_2806C7A98, &qword_26EF3EF50);
  sub_26EE14578(v23, &qword_2806C7AA0, &qword_26EF3EF58);
  sub_26EE14578(v15, &qword_2806C7A98, &qword_26EF3EF50);
  return sub_26EE14578(v21, &qword_2806C7AA0, &qword_26EF3EF58);
}

uint64_t sub_26EE56948@<X0>(uint64_t a1@<X8>)
{
  v26 = a1;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7AB0, &qword_26EF3EF78);
  MEMORY[0x28223BE20](v25);
  v3 = v24 - v2;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7AB8, &qword_26EF3EF80);
  v4 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v6 = v24 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7080, &unk_26EF3DBF0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v24 - v8;
  v10 = sub_26EF38AAC();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for VoiceInformationSection(0);
  sub_26EE13B88(v1 + *(v14 + 28), v9, &qword_2806C7080, &unk_26EF3DBF0);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_26EE14578(v9, &qword_2806C7080, &unk_26EF3DBF0);
    return (*(v4 + 56))(v26, 1, 1, v27);
  }

  else
  {
    v16 = (*(v11 + 32))(v13, v9, v10);
    v24[4] = v24;
    MEMORY[0x28223BE20](v16);
    v24[3] = &v24[-4];
    v24[-2] = v1;
    sub_26EE57AD4(v1, v3);
    v24[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7AC0, &qword_26EF3EF88);
    v24[1] = sub_26EE5CDBC();
    v17 = type metadata accessor for RenameVoiceView(255);
    v18 = type metadata accessor for VoiceBankingSession(255);
    v19 = v26;
    v20 = v18;
    v21 = sub_26EE5CE6C(&qword_2806C7AE0, type metadata accessor for RenameVoiceView, &unk_26EF3F998);
    v22 = sub_26EE5CE6C(&qword_2806C65C0, type metadata accessor for VoiceBankingSession, &protocol conformance descriptor for VoiceBankingSession);
    v28 = v17;
    v29 = v20;
    v30 = v21;
    v31 = v22;
    swift_getOpaqueTypeConformance2();
    sub_26EF3998C();
    v23 = v27;
    (*(v4 + 32))(v19, v6, v27);
    (*(v4 + 56))(v19, 0, 1, v23);
    return (*(v11 + 8))(v13, v10);
  }
}

uint64_t sub_26EE56DD0(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_26EE56E4C()
{
  result = qword_2806C7A20;
  if (!qword_2806C7A20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C7A28, &qword_26EF3EE48);
    sub_26EE154C8(&qword_2806C7A30, &qword_2806C7A38, qword_26EF3EE50, MEMORY[0x277CE1138]);
    sub_26EE3C584();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C7A20);
  }

  return result;
}

uint64_t sub_26EE56F04@<X0>(uint64_t a1@<X8>)
{
  v103 = a1;
  v2 = sub_26EF37FEC();
  v94 = *(v2 - 8);
  v95 = v2;
  v3 = MEMORY[0x28223BE20](v2);
  v88 = &v84 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v89 = &v84 - v6;
  MEMORY[0x28223BE20](v5);
  v96 = &v84 - v7;
  v8 = sub_26EF391EC();
  v92 = *(v8 - 8);
  v93 = v8;
  v9 = MEMORY[0x28223BE20](v8);
  v91 = &v84 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v98 = (&v84 - v11);
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7A58, &unk_26EF3EED0);
  MEMORY[0x28223BE20](v99);
  v101 = (&v84 - v12);
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7A38, qword_26EF3EE50);
  MEMORY[0x28223BE20](v100);
  v14 = &v84 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7A18, &qword_26EF3EE40);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v102 = &v84 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7088, &unk_26EF3E330);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v84 - v19;
  v21 = sub_26EF38DBC();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = &v84 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *(type metadata accessor for VoiceInformationSection(0) + 32);
  v97 = v1;
  sub_26EE13B88(v1 + v25, v20, &qword_2806C7088, &unk_26EF3E330);
  if (v22[6](v20, 1, v21) == 1)
  {
    sub_26EE14578(v20, &qword_2806C7088, &unk_26EF3E330);
    return (*(v16 + 56))(v103, 1, 1, v15);
  }

  v87 = v16;
  v90 = v15;
  v27 = v22[4];
  v86 = v21;
  v27(v24, v20, v21);
  v28 = sub_26EF38CFC();
  v29 = v103;
  if ((v28 & 1) == 0)
  {
    v34 = sub_26EF38D8C();
    v33 = v90;
    if (v34 == 7)
    {
      sub_26EF38D1C();
      v35 = v91;
      sub_26EF391BC();
      sub_26EE5CE6C(&qword_2806C7A60, MEMORY[0x277D70650], MEMORY[0x277D70668]);
      v36 = v93;
      sub_26EF3B1DC();
      sub_26EF3B1DC();
      if (v106 == v104 && v107 == v105)
      {
        v37 = *(v92 + 8);
        v37(v35, v36);
        v37(v98, v36);

        goto LABEL_10;
      }

      LODWORD(v97) = sub_26EF3B82C();
      v38 = v24;
      v39 = v22;
      v40 = *(v92 + 8);
      v40(v35, v36);
      v40(v98, v36);
      v22 = v39;
      v24 = v38;

      if (v97)
      {
LABEL_10:
        sub_26EF38D3C();
        v41 = v96;
        sub_26EF37F3C();
        v42 = sub_26EF38D5C();
        MEMORY[0x28223BE20](v42);
        *(&v84 - 2) = v41;
        v106 = sub_26EE58D88(sub_26EE5A9E8, (&v84 - 4), v43);

        sub_26EE5AA04(&v106);

        v44 = v106;
        v45 = sub_26EF37F2C();
        v47 = v46;
        if (v46)
        {
          v48 = *(v44 + 16);
          if (v48)
          {
            v98 = v22;
            v91 = v45;
            v49 = v94;
            v50 = v95;
            v51 = v44 + ((*(v94 + 80) + 32) & ~*(v94 + 80));
            v52 = v89;
            v92 = *(v94 + 16);
            (v92)(v89, v51, v95);
            v85 = sub_26EF37F2C();
            v54 = v53;
            v93 = *(v49 + 8);
            v93(v52, v50);
            v97 = v54;
            if (v54)
            {
              if (v48 > *(v44 + 16))
              {
                __break(1u);

                __break(1u);
                return result;
              }

              v55 = v95;
              v56 = v51 + *(v94 + 72) * (v48 - 1);
              v57 = v88;
              (v92)(v88, v56, v95);

              v58 = sub_26EF37F2C();
              v60 = v59;
              v93(v57, v55);
              if (v60)
              {
                v61 = sub_26EE17094();
                v62._object = 0x800000026EF45770;
                v63 = v61 & 1;
                v62._countAndFlagsBits = 0xD000000000000017;
                TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(v62, v63, 0);
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C67B0, &qword_26EF3D4B0);
                v64 = swift_allocObject();
                *(v64 + 16) = xmmword_26EF3EE20;
                v65 = MEMORY[0x277D837D0];
                *(v64 + 56) = MEMORY[0x277D837D0];
                v68 = sub_26EE1EFBC(v64, v66, v67);
                *(v64 + 32) = v91;
                *(v64 + 40) = v47;
                *(v64 + 96) = v65;
                *(v64 + 104) = v68;
                v69 = v85;
                *(v64 + 64) = v68;
                *(v64 + 72) = v69;
                *(v64 + 80) = v97;
                *(v64 + 136) = v65;
                *(v64 + 144) = v68;
                *(v64 + 112) = v58;
                *(v64 + 120) = v60;
                v70 = sub_26EF3B0CC();
                v72 = v71;

                v106 = v70;
                v107 = v72;
                sub_26EE12538(v73, v74, v75);
                v60 = sub_26EF3A5DC();
                v54 = v76;
                v47 = (v77 & 1);
                v79 = v78;
                sub_26EE13B20(v60, v78, v77 & 1);
              }

              else
              {

                v79 = 0;
                v47 = 0;
                v54 = 0;
              }
            }

            else
            {

              v60 = 0;
              v79 = 0;
              v47 = 0;
            }

            v29 = v103;
            v22 = v98;
            goto LABEL_26;
          }

          v60 = 0;
          v79 = 0;
          v47 = 0;
        }

        else
        {

          v60 = 0;
          v79 = 0;
        }

        v54 = 0;
LABEL_26:
        v82 = v101;
        *v101 = v60;
        v82[1] = v79;
        v82[2] = v47;
        v82[3] = v54;
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7530, &qword_26EF43ED0);
        sub_26EE154C8(&qword_2806C7A30, &qword_2806C7A38, qword_26EF3EE50, MEMORY[0x277CE1138]);
        sub_26EE3C584();
        v31 = v102;
        sub_26EF3A06C();
        sub_26EE5AAAC(v60, v79, v47, v54);
        v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7A28, &qword_26EF3EE48);
        (*(*(v83 - 8) + 56))(v31, 0, 1, v83);
        (*(v94 + 8))(v96, v95);
        v81 = v87;
        v33 = v90;
        goto LABEL_18;
      }
    }

    v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7A28, &qword_26EF3EE48);
    v31 = v102;
    (*(*(v80 - 8) + 56))(v102, 1, 1, v80);
    goto LABEL_17;
  }

  *v14 = sub_26EF39E4C();
  *(v14 + 1) = 0;
  v14[16] = 1;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7A68, &unk_26EF3EEE0);
  sub_26EE58904(v24, v97, &v14[*(v30 + 44)]);
  sub_26EE13B88(v14, v101, &qword_2806C7A38, qword_26EF3EE50);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7530, &qword_26EF43ED0);
  sub_26EE154C8(&qword_2806C7A30, &qword_2806C7A38, qword_26EF3EE50, MEMORY[0x277CE1138]);
  sub_26EE3C584();
  v31 = v102;
  sub_26EF3A06C();
  sub_26EE14578(v14, &qword_2806C7A38, qword_26EF3EE50);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7A28, &qword_26EF3EE48);
  (*(*(v32 - 8) + 56))(v31, 0, 1, v32);
  v33 = v90;
LABEL_17:
  v81 = v87;
LABEL_18:
  sub_26EE5A978(v31, v29);
  (*(v81 + 56))(v29, 0, 1, v33);
  return (v22[1])(v24, v86);
}

uint64_t sub_26EE57AD4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v25 = a2;
  v24 = sub_26EF39DDC();
  v3 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7568, &unk_26EF3E3D0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v23 - v7;
  v9 = sub_26EF37EDC();
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for RenameVoiceView(0);
  MEMORY[0x28223BE20](v12);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_26EF38A7C();
  v17 = v16;
  v18 = MEMORY[0x274380B50]();
  sub_26EE777E8(v18);
  sub_26EE7784C(v8, v15, v17, v11, v14);
  v19 = *a1;
  if (*(a1 + 8) == 1)
  {
    v20 = v19;
  }

  else
  {

    sub_26EF3B46C();
    v21 = sub_26EF3A36C();
    sub_26EF3880C();

    sub_26EF39DCC();
    swift_getAtKeyPath();
    sub_26EE05C9C(v19, 0);
    (*(v3 + 8))(v5, v24);
    v20 = v26;
  }

  type metadata accessor for VoiceBankingSession(0);
  sub_26EE5CE6C(&qword_2806C7AE0, type metadata accessor for RenameVoiceView, &unk_26EF3F998);
  sub_26EE5CE6C(&qword_2806C65C0, type metadata accessor for VoiceBankingSession, &protocol conformance descriptor for VoiceBankingSession);
  sub_26EF3A67C();

  return sub_26EE5CEB4(v14);
}

uint64_t sub_26EE57DF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7080, &unk_26EF3DBF0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v42 - v5;
  v7 = sub_26EF38AAC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for VoiceInformationSection(0);
  sub_26EE13B88(a1 + *(v11 + 28), v6, &qword_2806C7080, &unk_26EF3DBF0);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    result = sub_26EE14578(v6, &qword_2806C7080, &unk_26EF3DBF0);
    v13 = 0;
    v14 = 0;
    v15 = 0uLL;
    v16 = 0uLL;
    v17 = 0uLL;
    v18 = 0uLL;
    v19 = 0uLL;
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
    v50 = sub_26EF39E4C();
    v55 = 1;
    v20 = sub_26EE17094() & 1;
    v21._countAndFlagsBits = 0x454D414E5F4256;
    v21._object = 0xE700000000000000;
    v61 = TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(v21, v20, 0);
    sub_26EE12538(v61._countAndFlagsBits, v61._object, v22);
    v49 = v10;
    *&v43 = sub_26EF3A5DC();
    *&v42 = v23;
    LODWORD(v46) = v24;
    *&v44 = v25;
    v61._countAndFlagsBits = sub_26EF38A7C();
    v61._object = v26;
    v27 = sub_26EF3A5DC();
    v29 = v28;
    v31 = v30;
    v48 = v7;
    LODWORD(v61._countAndFlagsBits) = sub_26EF3A1DC();
    v32 = sub_26EF3A58C();
    v34 = v33;
    v47 = v8;
    v36 = v35;
    v38 = v37;
    sub_26EE12ABC(v27, v29, v31 & 1);

    LOBYTE(v27) = v46 & 1;
    LOBYTE(v61._countAndFlagsBits) = v27;
    LOBYTE(v56) = v46 & 1;
    v51[0] = 1;
    LOBYTE(v29) = v36 & 1;
    LOBYTE(v54[0]) = v36 & 1;
    LODWORD(v45) = 1;
    LODWORD(v46) = v36 & 1;
    v39 = v43;
    v40 = v42;
    sub_26EE13B20(v43, v42, v27);
    v41 = v44;

    sub_26EE13B20(v32, v34, v29);

    sub_26EE12ABC(v32, v34, v29);

    sub_26EE12ABC(v39, v40, v61._countAndFlagsBits);

    *(&v57 + 1) = v54[0];
    DWORD1(v57) = *(v54 + 3);
    *(&v58 + 9) = *v53;
    HIDWORD(v58) = *&v53[3];
    DWORD1(v60) = *&v52[3];
    *(&v60 + 1) = *v52;
    *&v56 = v39;
    *(&v56 + 1) = v40;
    v61._countAndFlagsBits = v39;
    v61._object = v40;
    LOBYTE(v57) = v27;
    *(&v57 + 1) = v41;
    *&v58 = 0;
    BYTE8(v58) = v45;
    *&v59 = v32;
    *(&v59 + 1) = v34;
    LOBYTE(v60) = v46;
    *(&v60 + 1) = v38;
    v62 = v27;
    *&v63[3] = *(v54 + 3);
    *v63 = v54[0];
    v64 = v41;
    v65 = 0;
    v66 = v45;
    *v67 = *v53;
    *&v67[3] = *&v53[3];
    v68 = v32;
    v69 = v34;
    v70 = v46;
    *&v71[3] = *&v52[3];
    *v71 = *v52;
    v72 = v38;
    sub_26EE13B88(&v56, v51, &qword_2806C7AE8, &qword_26EF3EF98);
    sub_26EE14578(&v61, &qword_2806C7AE8, &qword_26EF3EF98);
    v45 = v57;
    v46 = v56;
    v43 = v59;
    v44 = v58;
    v42 = v60;
    v14 = v55;
    result = (*(v47 + 8))(v49, v48);
    v19 = v42;
    v18 = v43;
    v17 = v44;
    v16 = v45;
    v15 = v46;
    v13 = v50;
  }

  *a2 = v13;
  *(a2 + 8) = 0;
  *(a2 + 16) = v14;
  *(a2 + 24) = v15;
  *(a2 + 40) = v16;
  *(a2 + 56) = v17;
  *(a2 + 72) = v18;
  *(a2 + 88) = v19;
  return result;
}

uint64_t sub_26EE5828C@<X0>(uint64_t a1@<X8>)
{
  v59 = a1;
  v2 = type metadata accessor for VoiceInformationSection(0);
  v49 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v50 = v3;
  v52 = v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7138, &unk_26EF3DCC0);
  MEMORY[0x28223BE20](v4 - 8);
  v53 = v47 - v5;
  v6 = sub_26EF3873C();
  v57 = *(v6 - 8);
  v58 = v6;
  MEMORY[0x28223BE20](v6);
  v51 = v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7088, &unk_26EF3E330);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v47 - v9;
  v11 = sub_26EF38DBC();
  v12 = *(v11 - 8);
  v55 = v11;
  v56 = v12;
  MEMORY[0x28223BE20](v11);
  v54 = v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7080, &unk_26EF3DBF0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = v47 - v15;
  v17 = sub_26EF38AAC();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v17);
  v48 = v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = v47 - v21;
  sub_26EE13B88(v1 + *(v2 + 28), v16, &qword_2806C7080, &unk_26EF3DBF0);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    sub_26EE14578(v16, &qword_2806C7080, &unk_26EF3DBF0);
LABEL_8:
    v45 = 1;
    v43 = v58;
    v44 = v59;
    v39 = v57;
    return (*(v39 + 56))(v44, v45, 1, v43);
  }

  v23 = *(v18 + 32);
  v23(v22, v16, v17);
  sub_26EE13B88(v1 + *(v2 + 32), v10, &qword_2806C7088, &unk_26EF3E330);
  v24 = v55;
  if ((*(v56 + 48))(v10, 1, v55) == 1)
  {
    (*(v18 + 8))(v22, v17);
    sub_26EE14578(v10, &qword_2806C7088, &unk_26EF3E330);
    goto LABEL_8;
  }

  v25 = v1;
  v26 = v54;
  (*(v56 + 32))();
  if (sub_26EF38D8C() != 7)
  {
    (*(v56 + 8))(v26, v24);
    (*(v18 + 8))(v22, v17);
    goto LABEL_8;
  }

  v27 = sub_26EE17094() & 1;
  v28._countAndFlagsBits = 0x49564552505F4256;
  v28._object = 0xEA00000000005745;
  v29 = TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(v28, v27, 0);
  v47[2] = v29._object;
  v47[3] = v29._countAndFlagsBits;
  v30 = sub_26EE59058();
  v47[0] = v31;
  v47[1] = v30;
  v32 = sub_26EF3961C();
  (*(*(v32 - 8) + 56))(v53, 1, 1, v32);
  v33 = v52;
  sub_26EE5C5D0(v25, v52);
  v34 = v48;
  (*(v18 + 16))(v48, v22, v17);
  v35 = (*(v49 + 80) + 16) & ~*(v49 + 80);
  v36 = (v50 + *(v18 + 80) + v35) & ~*(v18 + 80);
  v37 = swift_allocObject();
  sub_26EE5C86C(v33, v37 + v35);
  v23((v37 + v36), v34, v17);
  v38 = v51;
  sub_26EF3874C();
  (*(v56 + 8))(v54, v55);
  (*(v18 + 8))(v22, v17);
  v39 = v57;
  v40 = v59;
  v41 = v38;
  v42 = v58;
  (*(v57 + 32))(v59, v41, v58);
  v43 = v42;
  v44 = v40;
  v45 = 0;
  return (*(v39 + 56))(v44, v45, 1, v43);
}

uint64_t sub_26EE58904@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v40 = a2;
  v41 = a1;
  v42 = a3;
  v3 = sub_26EF3A2BC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7868, &unk_26EF41660);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v39 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7A70, &qword_26EF3EEF0);
  v12 = v11 - 8;
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v39 - v16;
  sub_26EF397DC();
  sub_26EF3A2AC();
  sub_26EE154C8(&qword_2806C7870, &qword_2806C7868, &unk_26EF41660, MEMORY[0x277CDD7F8]);
  sub_26EE5CE6C(&qword_2806C7A78, MEMORY[0x277CDE330], MEMORY[0x277CDE318]);
  sub_26EF3A63C();
  (*(v4 + 8))(v6, v3);
  (*(v8 + 8))(v10, v7);
  v18 = &v17[*(v12 + 44)];
  v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7A80, &qword_26EF3EEF8) + 28);
  v20 = *MEMORY[0x277CDF440];
  v21 = sub_26EF396EC();
  (*(*(v21 - 8) + 104))(v18 + v19, v20, v21);
  KeyPath = swift_getKeyPath();
  v23 = v40;
  *v18 = KeyPath;
  v24 = *(v23 + 16);
  if (v24)
  {
    v25 = *(*v24 + 88);

    v25(v26);

    v43 = sub_26EF38D2C();
    v44 = v27;
    sub_26EE12538(v43, v27, v28);
    v29 = sub_26EF3A5DC();
    v31 = v30;
    v33 = v32;
    v35 = v34;
    sub_26EE13B88(v17, v15, &qword_2806C7A70, &qword_26EF3EEF0);
    v36 = v42;
    sub_26EE13B88(v15, v42, &qword_2806C7A70, &qword_26EF3EEF0);
    v37 = v36 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7A88, &unk_26EF3EF30) + 48);
    *v37 = v29;
    *(v37 + 8) = v31;
    *(v37 + 16) = v33 & 1;
    *(v37 + 24) = v35;
    sub_26EE13B20(v29, v31, v33 & 1);

    sub_26EE14578(v17, &qword_2806C7A70, &qword_26EF3EEF0);
    sub_26EE12ABC(v29, v31, v33 & 1);

    return sub_26EE14578(v15, &qword_2806C7A70, &qword_26EF3EEF0);
  }

  else
  {
    type metadata accessor for VoiceBankingBatteryMonitor(0);
    sub_26EE5CE6C(&qword_2806C79E8, type metadata accessor for VoiceBankingBatteryMonitor, &unk_26EF44B48);
    result = sub_26EF39BFC();
    __break(1u);
  }

  return result;
}

uint64_t sub_26EE58D88(uint64_t (*a1)(void), uint64_t a2, uint64_t a3)
{
  v39 = sub_26EF37FEC();
  v7 = MEMORY[0x28223BE20](v39);
  v36 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v7);
  v38 = &v28 - v11;
  v35 = *(a3 + 16);
  if (v35)
  {
    v12 = 0;
    v32 = (v10 + 8);
    v33 = (v10 + 32);
    v34 = v10 + 16;
    v37 = MEMORY[0x277D84F90];
    v30 = a2;
    v31 = a3;
    v29 = a1;
    while (v12 < *(a3 + 16))
    {
      v13 = (*(v10 + 80) + 32) & ~*(v10 + 80);
      v14 = *(v10 + 72);
      v15 = a3;
      v16 = a3 + v13 + v14 * v12;
      v17 = v10;
      v18 = a1;
      v19 = v38;
      (*(v10 + 16))(v38, v16, v39);
      v20 = v19;
      a1 = v18;
      v21 = v18(v20);
      if (v3)
      {
        (*v32)(v38, v39);
        v27 = v37;

        return v27;
      }

      if (v21)
      {
        v22 = *v33;
        (*v33)(v36, v38, v39);
        v23 = v37;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v40 = v23;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_26EE5C2D8(0, *(v23 + 16) + 1, 1);
          v23 = v40;
        }

        v26 = *(v23 + 16);
        v25 = *(v23 + 24);
        if (v26 >= v25 >> 1)
        {
          sub_26EE5C2D8((v25 > 1), v26 + 1, 1);
          v23 = v40;
        }

        *(v23 + 16) = v26 + 1;
        v37 = v23;
        result = (v22)(v23 + v13 + v26 * v14, v36, v39);
        a3 = v31;
        a1 = v29;
      }

      else
      {
        result = (*v32)(v38, v39);
        a3 = v15;
      }

      ++v12;
      v10 = v17;
      if (v35 == v12)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    v37 = MEMORY[0x277D84F90];
LABEL_14:

    return v37;
  }

  return result;
}

uint64_t sub_26EE59058()
{
  v1 = v0;
  v71 = sub_26EF37FEC();
  v69 = *(v71 - 8);
  v2 = MEMORY[0x28223BE20](v71);
  v66 = &v59 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x28223BE20](v2);
  v67 = &v59 - v5;
  MEMORY[0x28223BE20](v4);
  v70 = &v59 - v6;
  v7 = sub_26EF391EC();
  v68 = *(v7 - 1);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v59 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7088, &unk_26EF3E330);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v59 - v14;
  v16 = sub_26EF38DBC();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v59 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for VoiceInformationSection(0);
  sub_26EE13B88(v1 + *(v20 + 32), v15, &qword_2806C7088, &unk_26EF3E330);
  if ((*(v17 + 48))(v15, 1, v16) != 1)
  {
    (*(v17 + 32))(v19, v15, v16);
    if (sub_26EF38CFC())
    {
      v21 = *(v1 + 16);
      if (v21)
      {
        v22 = *(*v21 + 88);

        v22(v23);

        v24 = sub_26EF38D2C();
        (*(v17 + 8))(v19, v16);
        return v24;
      }

LABEL_29:
      type metadata accessor for VoiceBankingBatteryMonitor(0);
      sub_26EE5CE6C(&qword_2806C79E8, type metadata accessor for VoiceBankingBatteryMonitor, &unk_26EF44B48);
      sub_26EF39BFC();
      __break(1u);

      __break(1u);
      return result;
    }

    if (sub_26EF38D8C() == 7)
    {
      sub_26EF38D1C();
      sub_26EF391BC();
      sub_26EE5CE6C(&qword_2806C7A60, MEMORY[0x277D70650], MEMORY[0x277D70668]);
      sub_26EF3B1DC();
      sub_26EF3B1DC();
      if (v74[0] == v72 && v74[1] == v73)
      {
        v26 = *(v68 + 1);
        v26(v10, v7);
        v26(v12, v7);

        goto LABEL_12;
      }

      LODWORD(v65) = sub_26EF3B82C();
      v27 = *(v68 + 1);
      v27(v10, v7);
      v27(v12, v7);

      if (v65)
      {
LABEL_12:
        sub_26EF38D3C();
        v28 = v70;
        sub_26EF37F3C();
        v29 = sub_26EF38D5C();
        MEMORY[0x28223BE20](v29);
        *(&v59 - 2) = v28;
        v74[0] = sub_26EE58D88(sub_26EE5CF10, (&v59 - 4), v30);

        sub_26EE5AA04(v74);

        v31 = v74[0];
        v32 = sub_26EF37F2C();
        if (v33)
        {
          v34 = *(v31 + 16);
          if (v34)
          {
            v65 = v33;
            v61 = v32;
            v35 = v69;
            v36 = *(v69 + 16);
            v37 = v67;
            v62 = v31 + ((*(v69 + 80) + 32) & ~*(v69 + 80));
            v63 = v36;
            v38 = v71;
            (v36)(v67);
            v60 = sub_26EF37F2C();
            v40 = v39;
            v41 = *(v35 + 8);
            v7 = (v35 + 8);
            v67 = v7;
            v68 = v41;
            v41(v37, v38);
            v64 = v40;
            if (v40)
            {
              if (v34 > *(v31 + 16))
              {
                __break(1u);
                goto LABEL_29;
              }

              v42 = v69;
              v43 = v66;
              v44 = v71;
              v63(v66, v62 + *(v69 + 72) * (v34 - 1), v71);

              v63 = sub_26EF37F2C();
              v46 = v45;
              v68(v43, v44);
              if (v46)
              {
                v47 = sub_26EE17094();
                v48._object = 0x800000026EF45770;
                v49 = v47 & 1;
                v48._countAndFlagsBits = 0xD000000000000017;
                TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(v48, v49, 0);
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C67B0, &qword_26EF3D4B0);
                v50 = swift_allocObject();
                *(v50 + 16) = xmmword_26EF3EE20;
                v51 = MEMORY[0x277D837D0];
                *(v50 + 56) = MEMORY[0x277D837D0];
                v54 = sub_26EE1EFBC(v50, v52, v53);
                v55 = v65;
                *(v50 + 32) = v61;
                *(v50 + 40) = v55;
                *(v50 + 96) = v51;
                *(v50 + 104) = v54;
                v56 = v60;
                *(v50 + 64) = v54;
                *(v50 + 72) = v56;
                v57 = v63;
                *(v50 + 80) = v64;
                *(v50 + 136) = v51;
                *(v50 + 144) = v54;
                *(v50 + 112) = v57;
                *(v50 + 120) = v46;
                v24 = sub_26EF3B0CC();

                (*(v17 + 8))(v19, v16);
                v68(v70, v71);
                return v24;
              }

              (*(v17 + 8))(v19, v16);

              v28 = v70;
              v58 = v71;
LABEL_23:
              (*(v42 + 8))(v28, v58);
              return 0;
            }

            (*(v17 + 8))(v19, v16);

            v28 = v70;
            v58 = v71;
LABEL_22:
            v42 = v69;
            goto LABEL_23;
          }

          (*(v17 + 8))(v19, v16);
        }

        else
        {
          (*(v17 + 8))(v19, v16);
        }

        v58 = v71;
        goto LABEL_22;
      }
    }

    (*(v17 + 8))(v19, v16);
    return 0;
  }

  sub_26EE14578(v15, &qword_2806C7088, &unk_26EF3E330);
  return 0;
}

uint64_t sub_26EE598E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_26EF38AAC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for VoiceInformationSection(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806C9C80, &qword_26EF3E400);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v22 - v13;
  v15 = sub_26EF3B30C();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  sub_26EE5C5D0(a1, v11);
  (*(v5 + 16))(v7, a2, v4);
  sub_26EF3B2DC();
  v16 = sub_26EF3B2CC();
  v17 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v18 = (v10 + *(v5 + 80) + v17) & ~*(v5 + 80);
  v19 = swift_allocObject();
  v20 = MEMORY[0x277D85700];
  *(v19 + 16) = v16;
  *(v19 + 24) = v20;
  sub_26EE5C86C(v11, v19 + v17);
  (*(v5 + 32))(v19 + v18, v7, v4);
  sub_26EE2C388(0, 0, v14, &unk_26EF3EF70, v19);
}

uint64_t sub_26EE59B74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_26EF3883C();
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();
  sub_26EF3B2DC();
  v5[7] = sub_26EF3B2CC();
  v8 = sub_26EF3B29C();
  v5[8] = v8;
  v5[9] = v7;

  return MEMORY[0x2822009F8](sub_26EE59C68, v8, v7);
}

uint64_t sub_26EE59C68()
{
  v1 = *(v0[2] + 32);
  v0[10] = v1;
  if (v1)
  {
    v1;
    v2 = sub_26EF38A6C();
    v4 = v3;
    v0[11] = v3;
    v5 = sub_26EF38A9C();
    v7 = v6;
    v0[12] = v6;
    v8 = swift_task_alloc();
    v0[13] = v8;
    *v8 = v0;
    v8[1] = sub_26EE59DD4;

    return sub_26EF1E820(v2, v4, v5, v7);
  }

  else
  {
    type metadata accessor for VoiceBankingAudioServiceViewModel(0);
    sub_26EE5CE6C(&qword_2806C9BB0, type metadata accessor for VoiceBankingAudioServiceViewModel, &unk_26EF44398);

    return sub_26EF39BFC();
  }
}

uint64_t sub_26EE59DD4()
{
  v2 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = v2[8];
    v4 = v2[9];
    v5 = sub_26EE59F70;
  }

  else
  {
    v6 = v2[10];

    v3 = v2[8];
    v4 = v2[9];
    v5 = sub_26EE59F08;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_26EE59F08()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26EE59F70()
{
  v1 = v0[14];
  v2 = v0[10];
  v3 = v0[6];
  v4 = v0[4];
  v5 = v0[5];

  v6 = sub_26EE27DAC();
  (*(v5 + 16))(v3, v6, v4);
  v7 = v1;
  v8 = sub_26EF3881C();
  v9 = sub_26EF3B45C();

  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[14];
  if (v10)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    v14 = v11;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 4) = v15;
    *v13 = v15;
    _os_log_impl(&dword_26EE01000, v8, v9, "VoiceManagementView: Unable to preview personal voice. %@", v12, 0xCu);
    sub_26EE14578(v13, &qword_2806C7140, &unk_26EF3E420);
    MEMORY[0x2743842A0](v13, -1, -1);
    MEMORY[0x2743842A0](v12, -1, -1);
  }

  else
  {
  }

  (*(v0[5] + 8))(v0[6], v0[4]);

  v16 = v0[1];

  return v16();
}

uint64_t sub_26EE5A140@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  type metadata accessor for VoiceBankingSession(0);
  sub_26EE5CE6C(&qword_2806C65C0, type metadata accessor for VoiceBankingSession, &protocol conformance descriptor for VoiceBankingSession);
  *a3 = sub_26EF3973C();
  *(a3 + 8) = v6 & 1;
  type metadata accessor for VoiceBankingBatteryMonitor(0);
  sub_26EE5CE6C(&qword_2806C79E8, type metadata accessor for VoiceBankingBatteryMonitor, &unk_26EF44B48);
  *(a3 + 16) = sub_26EF39C1C();
  *(a3 + 24) = v7;
  type metadata accessor for VoiceBankingAudioServiceViewModel(0);
  sub_26EE5CE6C(&qword_2806C9BB0, type metadata accessor for VoiceBankingAudioServiceViewModel, &unk_26EF44398);
  *(a3 + 32) = sub_26EF39C1C();
  *(a3 + 40) = v8;
  v9 = type metadata accessor for VoiceInformationSection(0);
  sub_26EE14D98(a1, a3 + *(v9 + 28), &qword_2806C7080, &unk_26EF3DBF0);
  return sub_26EE14D98(a2, a3 + *(v9 + 32), &qword_2806C7088, &unk_26EF3E330);
}

uint64_t sub_26EE5A2D4()
{
  v1 = sub_26EF387DC();
  MEMORY[0x28223BE20](v1);
  (*(v3 + 104))(&v5[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x277CE76B8]);
  v7 = v0;
  v6 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C79F0, &qword_26EF3EE30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C79F8, &qword_26EF3EE38);
  sub_26EE154C8(&qword_2806C7A00, &qword_2806C79F0, &qword_26EF3EE30, MEMORY[0x277CE14C0]);
  sub_26EE56DD0(&qword_2806C7A08, &qword_2806C79F8, &qword_26EF3EE38, sub_26EE56DA0);
  return sub_26EF3878C();
}

uint64_t sub_26EE5A4AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
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
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7080, &unk_26EF3DBF0);
    v10 = *(v9 - 8);
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = *(v10 + 48);
      v13 = a1 + *(a3 + 28);

      return v12(v13, a2, v11);
    }

    else
    {
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7088, &unk_26EF3E330);
      v15 = *(*(v14 - 8) + 48);
      v16 = a1 + *(a3 + 32);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t sub_26EE5A608(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 16) = a2;
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7080, &unk_26EF3DBF0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 28);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7088, &unk_26EF3E330);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 32);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_26EE5A744(uint64_t a1)
{
  sub_26EE2E05C(319, &qword_2806C66B0, type metadata accessor for VoiceBankingSession, MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    sub_26EE5A8A0(319);
    if (v2 <= 0x3F)
    {
      sub_26EE1F7D0(319);
      if (v3 <= 0x3F)
      {
        sub_26EE2E05C(319, &qword_2806C70A8, MEMORY[0x277D70530], MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          sub_26EE2E05C(319, &qword_2806C70B0, MEMORY[0x277D705D8], MEMORY[0x277D83D88]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_26EE5A8A0(uint64_t a1)
{
  if (!qword_2806C7A40)
  {
    type metadata accessor for VoiceBankingBatteryMonitor(255);
    sub_26EE5CE6C(&qword_2806C79E8, type metadata accessor for VoiceBankingBatteryMonitor, &unk_26EF44B48);
    v1 = sub_26EF39C2C();
    if (!v2)
    {
      atomic_store(v1, &qword_2806C7A40);
    }
  }
}

uint64_t sub_26EE5A978(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7A18, &qword_26EF3EE40);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26EE5AA04(uint64_t *a1)
{
  v2 = *(sub_26EF37FEC() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_26EE5C5BC(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_26EE5AAF0(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_26EE5AAAC(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_26EE12ABC(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_26EE5AAF0(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = sub_26EF3B7EC();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_26EF37FEC();
        v6 = sub_26EF3B24C();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_26EF37FEC() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_26EE5AF24(v8, v9, a1, v4);
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
    return sub_26EE5AC1C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_26EE5AC1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_26EF37FEC();
  v9 = MEMORY[0x28223BE20](v8);
  v44 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v48 = &v34 - v12;
  result = MEMORY[0x28223BE20](v11);
  v47 = &v34 - v15;
  v36 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    v45 = *(v14 + 16);
    v46 = v14 + 16;
    v17 = *(v14 + 72);
    v18 = (v14 + 8);
    v42 = (v14 + 32);
    v43 = v16;
    v19 = v16 + v17 * (a3 - 1);
    v41 = -v17;
    v20 = a1 - a3;
    v35 = v17;
    v21 = v16 + v17 * a3;
LABEL_6:
    v39 = v19;
    v40 = a3;
    v37 = v21;
    v38 = v20;
    v23 = v19;
    while (1)
    {
      v24 = v45;
      v45(v47, v21, v8);
      v24(v48, v23, v8);
      v25 = sub_26EF37EFC();
      v27 = v26;
      if (sub_26EF37EFC() == v25 && v28 == v27)
      {

        v22 = *v18;
        (*v18)(v48, v8);
        result = (v22)(v47, v8);
LABEL_5:
        a3 = v40 + 1;
        v19 = v39 + v35;
        v20 = v38 - 1;
        v21 = v37 + v35;
        if (v40 + 1 == v36)
        {
          return result;
        }

        goto LABEL_6;
      }

      v29 = sub_26EF3B82C();

      v30 = *v18;
      (*v18)(v48, v8);
      result = (v30)(v47, v8);
      if ((v29 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v43)
      {
        break;
      }

      v31 = *v42;
      v32 = v44;
      (*v42)(v44, v21, v8);
      swift_arrayInitWithTakeFrontToBack();
      result = (v31)(v23, v32, v8);
      v23 += v41;
      v21 += v41;
      if (__CFADD__(v20++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_26EE5AF24(uint64_t *a1, uint64_t a2, char *a3, uint64_t a4)
{
  v6 = v4;
  v134 = a1;
  v9 = sub_26EF37FEC();
  v10 = MEMORY[0x28223BE20](v9);
  v138 = &v128 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v149 = &v128 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v154 = &v128 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v153 = &v128 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v146 = &v128 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v145 = &v128 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v133 = &v128 - v23;
  result = MEMORY[0x28223BE20](v22);
  v132 = &v128 - v26;
  v27 = *(a3 + 1);
  v143 = v25;
  if (v27 < 1)
  {
    v29 = MEMORY[0x277D84F90];
LABEL_103:
    v31 = *v134;
    if (!*v134)
    {
      goto LABEL_141;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v5 = v143;
    if (result)
    {
LABEL_105:
      v155 = v29;
      v122 = *(v29 + 16);
      if (v122 >= 2)
      {
        while (1)
        {
          v123 = *a3;
          if (!*a3)
          {
            goto LABEL_139;
          }

          v124 = a3;
          v125 = *(v29 + 16 * v122);
          a3 = v29;
          v126 = *(v29 + 16 * (v122 - 1) + 32);
          v29 = *(v29 + 16 * (v122 - 1) + 40);
          sub_26EE5BAD4(v123 + *(v5 + 72) * v125, (v123 + *(v5 + 72) * v126), (v123 + *(v5 + 72) * v29), v31);
          if (v6)
          {
          }

          if (v29 < v125)
          {
            goto LABEL_128;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            a3 = sub_26EE13990(a3);
          }

          if (v122 - 2 >= *(a3 + 2))
          {
            goto LABEL_129;
          }

          v127 = &a3[16 * v122];
          *v127 = v125;
          *(v127 + 1) = v29;
          v155 = a3;
          result = sub_26EE5C168(v122 - 1);
          v29 = v155;
          v122 = *(v155 + 2);
          a3 = v124;
          if (v122 <= 1)
          {
          }
        }
      }
    }

LABEL_135:
    result = sub_26EE13990(v29);
    v29 = result;
    goto LABEL_105;
  }

  v129 = a4;
  v28 = 0;
  v151 = v25 + 16;
  v152 = (v25 + 8);
  v150 = (v25 + 32);
  v29 = MEMORY[0x277D84F90];
  v135 = a3;
  while (1)
  {
    v30 = v28;
    v31 = v28 + 1;
    v137 = v28;
    if (v28 + 1 < v27)
    {
      v141 = v27;
      v130 = v29;
      v32 = *a3;
      v33 = *(v143 + 72);
      v5 = v28 + 1;
      v34 = v32 + v33 * v31;
      v35 = *(v143 + 16);
      v35(v132, v34, v9);
      v144 = v33;
      v140 = v35;
      v35(v133, v32 + v33 * v30, v9);
      v31 = sub_26EF37EFC();
      v37 = v36;
      v38 = sub_26EF37EFC();
      v131 = v6;
      if (v38 == v31 && v39 == v37)
      {
        LODWORD(v142) = 0;
      }

      else
      {
        LODWORD(v142) = sub_26EF3B82C();
      }

      v40 = *v152;
      (*v152)(v133, v9);
      v139 = v40;
      result = (v40)(v132, v9);
      v41 = (v137 + 2);
      v42 = v144 * (v137 + 2);
      v43 = v32 + v42;
      v44 = v144 * v5;
      v45 = v32 + v144 * v5;
      do
      {
        a3 = v41;
        v48 = v5;
        v6 = v44;
        v29 = v42;
        if (v41 >= v141)
        {
          break;
        }

        v147 = v5;
        v148 = v41;
        v49 = v140;
        (v140)(v145, v43, v9);
        v49(v146, v45, v9);
        v50 = sub_26EF37EFC();
        v52 = v51;
        if (sub_26EF37EFC() == v50 && v53 == v52)
        {
          v46 = 0;
        }

        else
        {
          v46 = sub_26EF3B82C();
        }

        a3 = v148;

        v31 = v139;
        v139(v146, v9);
        result = (v31)(v145, v9);
        v47 = v142 ^ v46;
        v41 = a3 + 1;
        v43 += v144;
        v45 += v144;
        v48 = v147;
        v5 = v147 + 1;
        v44 = v6 + v144;
        v42 = v29 + v144;
      }

      while ((v47 & 1) == 0);
      if (v142)
      {
        v30 = v137;
        if (a3 < v137)
        {
          goto LABEL_132;
        }

        if (v137 < a3)
        {
          v54 = v137 * v144;
          v55 = v137;
          do
          {
            if (v55 != v48)
            {
              v57 = *v135;
              if (!*v135)
              {
                goto LABEL_138;
              }

              v5 = v48;
              v148 = *v150;
              (v148)(v138, v57 + v54, v9);
              if (v54 < v6 || v57 + v54 >= (v57 + v29))
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v54 != v6)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = (v148)(v57 + v6, v138, v9);
              v30 = v137;
              v48 = v5;
            }

            ++v55;
            v6 -= v144;
            v29 -= v144;
            v54 += v144;
          }

          while (v55 < v48--);
        }

        v31 = a3;
        v6 = v131;
        a3 = v135;
        v29 = v130;
      }

      else
      {
        v31 = a3;
        v6 = v131;
        a3 = v135;
        v29 = v130;
        v30 = v137;
      }
    }

    v58 = *(a3 + 1);
    if (v31 < v58)
    {
      if (__OFSUB__(v31, v30))
      {
        goto LABEL_131;
      }

      if (v31 - v30 < v129)
      {
        break;
      }
    }

LABEL_52:
    if (v31 < v30)
    {
      goto LABEL_130;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_26EE12E30(0, *(v29 + 16) + 1, 1, v29);
      v29 = result;
    }

    v76 = *(v29 + 16);
    v75 = *(v29 + 24);
    v77 = v76 + 1;
    if (v76 >= v75 >> 1)
    {
      result = sub_26EE12E30((v75 > 1), v76 + 1, 1, v29);
      v29 = result;
    }

    *(v29 + 16) = v77;
    v78 = v29 + 16 * v76;
    *(v78 + 32) = v30;
    *(v78 + 40) = v31;
    v79 = *v134;
    if (!*v134)
    {
      goto LABEL_140;
    }

    v144 = v31;
    if (v76)
    {
      while (1)
      {
        v31 = v77 - 1;
        if (v77 >= 4)
        {
          break;
        }

        if (v77 == 3)
        {
          v80 = *(v29 + 32);
          v81 = *(v29 + 40);
          v90 = __OFSUB__(v81, v80);
          v82 = v81 - v80;
          v83 = v90;
LABEL_72:
          if (v83)
          {
            goto LABEL_119;
          }

          v96 = (v29 + 16 * v77);
          v98 = *v96;
          v97 = v96[1];
          v99 = __OFSUB__(v97, v98);
          v100 = v97 - v98;
          v101 = v99;
          if (v99)
          {
            goto LABEL_122;
          }

          v102 = (v29 + 32 + 16 * v31);
          v104 = *v102;
          v103 = v102[1];
          v90 = __OFSUB__(v103, v104);
          v105 = v103 - v104;
          if (v90)
          {
            goto LABEL_125;
          }

          if (__OFADD__(v100, v105))
          {
            goto LABEL_126;
          }

          if (v100 + v105 >= v82)
          {
            if (v82 < v105)
            {
              v31 = v77 - 2;
            }

            goto LABEL_93;
          }

          goto LABEL_86;
        }

        v106 = (v29 + 16 * v77);
        v108 = *v106;
        v107 = v106[1];
        v90 = __OFSUB__(v107, v108);
        v100 = v107 - v108;
        v101 = v90;
LABEL_86:
        if (v101)
        {
          goto LABEL_121;
        }

        v109 = v29 + 16 * v31;
        v111 = *(v109 + 32);
        v110 = *(v109 + 40);
        v90 = __OFSUB__(v110, v111);
        v112 = v110 - v111;
        if (v90)
        {
          goto LABEL_124;
        }

        if (v112 < v100)
        {
          goto LABEL_3;
        }

LABEL_93:
        v117 = v31 - 1;
        if (v31 - 1 >= v77)
        {
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
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
          goto LABEL_134;
        }

        v118 = *a3;
        if (!*a3)
        {
          goto LABEL_137;
        }

        v5 = a3;
        a3 = v29;
        v119 = *(v29 + 32 + 16 * v117);
        v120 = *(v29 + 32 + 16 * v31);
        v29 = *(v29 + 32 + 16 * v31 + 8);
        sub_26EE5BAD4(v118 + *(v143 + 72) * v119, (v118 + *(v143 + 72) * v120), (v118 + *(v143 + 72) * v29), v79);
        if (v6)
        {
        }

        if (v29 < v119)
        {
          goto LABEL_115;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          a3 = sub_26EE13990(a3);
        }

        if (v117 >= *(a3 + 2))
        {
          goto LABEL_116;
        }

        v121 = &a3[16 * v117];
        *(v121 + 4) = v119;
        *(v121 + 5) = v29;
        v155 = a3;
        result = sub_26EE5C168(v31);
        v29 = v155;
        v77 = *(v155 + 2);
        a3 = v5;
        if (v77 <= 1)
        {
          goto LABEL_3;
        }
      }

      v84 = v29 + 32 + 16 * v77;
      v85 = *(v84 - 64);
      v86 = *(v84 - 56);
      v90 = __OFSUB__(v86, v85);
      v87 = v86 - v85;
      if (v90)
      {
        goto LABEL_117;
      }

      v89 = *(v84 - 48);
      v88 = *(v84 - 40);
      v90 = __OFSUB__(v88, v89);
      v82 = v88 - v89;
      v83 = v90;
      if (v90)
      {
        goto LABEL_118;
      }

      v91 = (v29 + 16 * v77);
      v93 = *v91;
      v92 = v91[1];
      v90 = __OFSUB__(v92, v93);
      v94 = v92 - v93;
      if (v90)
      {
        goto LABEL_120;
      }

      v90 = __OFADD__(v82, v94);
      v95 = v82 + v94;
      if (v90)
      {
        goto LABEL_123;
      }

      if (v95 >= v87)
      {
        v113 = (v29 + 32 + 16 * v31);
        v115 = *v113;
        v114 = v113[1];
        v90 = __OFSUB__(v114, v115);
        v116 = v114 - v115;
        if (v90)
        {
          goto LABEL_127;
        }

        if (v82 < v116)
        {
          v31 = v77 - 2;
        }

        goto LABEL_93;
      }

      goto LABEL_72;
    }

LABEL_3:
    v27 = *(a3 + 1);
    v28 = v144;
    if (v144 >= v27)
    {
      goto LABEL_103;
    }
  }

  v59 = (v30 + v129);
  if (__OFADD__(v30, v129))
  {
    goto LABEL_133;
  }

  if (v59 >= v58)
  {
    v59 = *(a3 + 1);
  }

  if (v59 < v30)
  {
LABEL_134:
    __break(1u);
    goto LABEL_135;
  }

  if (v31 == v59)
  {
    goto LABEL_52;
  }

  v130 = v29;
  v131 = v6;
  v60 = *a3;
  v61 = *(v143 + 72);
  v62 = *(v143 + 16);
  v63 = *a3 + v61 * (v31 - 1);
  v147 = -v61;
  v148 = v60;
  v64 = v30 - v31;
  v136 = v61;
  v65 = &v60[v31 * v61];
  v139 = v59;
LABEL_43:
  v144 = v31;
  v140 = v65;
  v141 = v64;
  v142 = v63;
  v67 = v63;
  while (1)
  {
    v62(v153, v65, v9);
    (v62)(v154, v67);
    v5 = sub_26EF37EFC();
    v69 = v68;
    if (sub_26EF37EFC() == v5 && v70 == v69)
    {

      v66 = *v152;
      (*v152)(v154, v9);
      v66(v153, v9);
LABEL_42:
      v31 = v144 + 1;
      v63 = v142 + v136;
      v64 = v141 - 1;
      v65 = &v140[v136];
      if ((v144 + 1) == v139)
      {
        v31 = v139;
        v6 = v131;
        a3 = v135;
        v29 = v130;
        v30 = v137;
        goto LABEL_52;
      }

      goto LABEL_43;
    }

    v5 = sub_26EF3B82C();

    v71 = *v152;
    (*v152)(v154, v9);
    result = (v71)(v153, v9);
    if ((v5 & 1) == 0)
    {
      goto LABEL_42;
    }

    if (!v148)
    {
      break;
    }

    v72 = v149;
    v5 = v150;
    v73 = *v150;
    (*v150)(v149, v65, v9);
    swift_arrayInitWithTakeFrontToBack();
    (v73)(v67, v72, v9);
    v67 += v147;
    v65 += v147;
    if (__CFADD__(v64++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
  return result;
}