uint64_t sub_21495C010(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_21498E600();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v5 = sub_21498E690();
  v3[8] = v5;
  v3[9] = *(v5 - 8);
  v3[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21495C130, 0, 0);
}

uint64_t sub_21495C130()
{
  if (qword_281191830 != -1)
  {
    swift_once();
  }

  if (byte_281194E48 == 1)
  {
    if (qword_281190DA0 != -1)
    {
      swift_once();
    }

    v2 = v0[9];
    v1 = v0[10];
    v3 = v0[8];
    v4 = __swift_project_value_buffer(v3, qword_281194E18);
    (*(v2 + 16))(v1, v4, v3);
    v5 = sub_21498E670();
    v6 = sub_21498FB90();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_21488E000, v5, v6, "[iCloudMailAssistantProviderSwift] unblockSender", v7, 2u);
      MEMORY[0x216059AC0](v7, -1, -1);
    }

    v9 = v0[9];
    v8 = v0[10];
    v10 = v0[8];

    (*(v9 + 8))(v8, v10);
    if (qword_281190DA8 != -1)
    {
      swift_once();
    }

    v12 = v0[6];
    v11 = v0[7];
    v13 = v0[5];
    v14 = __swift_project_value_buffer(v13, qword_281194E30);
    (*(v12 + 16))(v11, v14, v13);

    v15 = swift_task_alloc();
    v0[11] = v15;
    *v15 = v0;
    v15[1] = sub_21495C3F8;
    v16 = v0[7];
    v18 = v0[3];
    v17 = v0[4];
    v19 = v0[2];

    return sub_21497E88C(sub_21497E88C, "UnblockSender", 13, 2, v16, v17, v19, v18);
  }

  else
  {

    v21 = v0[1];

    return v21();
  }
}

uint64_t sub_21495C3F8()
{
  v2 = *(*v1 + 56);
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 40);
  *(*v1 + 96) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_21496A358;
  }

  else
  {
    v5 = sub_21496A340;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_21495C568()
{
  v1 = sub_21498E690();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281191830 != -1)
  {
    swift_once();
  }

  if (byte_281194E48 == 1)
  {
    v5 = *(v0 + 64) + OBJC_IVAR____TtCC19iCloudMailAssistant32iCloudMailAssistantProviderSwift13ProviderModel_state;
    swift_beginAccess();
    if (*(v5 + *(type metadata accessor for MailCleanupState(0) + 36)) == 1)
    {
      v6 = 1;
    }

    else
    {
      v6 = sub_214990080();
    }

    if (qword_281190DA0 != -1)
    {
      swift_once();
    }

    v7 = __swift_project_value_buffer(v1, qword_281194E18);
    (*(v2 + 16))(v4, v7, v1);
    v8 = sub_21498E670();
    v9 = sub_21498FB90();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 67109120;
      *(v10 + 4) = v6 & 1;
      _os_log_impl(&dword_21488E000, v8, v9, "[iCloudMailAssistantProviderSwift] isConsentAccepted: %{BOOL}d", v10, 8u);
      MEMORY[0x216059AC0](v10, -1, -1);
    }

    (*(v2 + 8))(v4, v1);
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t sub_21495C828()
{
  v1 = sub_21498E690();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281191830 != -1)
  {
    swift_once();
  }

  if (byte_281194E48 == 1)
  {
    v5 = *(v0 + 64) + OBJC_IVAR____TtCC19iCloudMailAssistant32iCloudMailAssistantProviderSwift13ProviderModel_state;
    swift_beginAccess();
    v6 = *(v5 + *(type metadata accessor for MailCleanupState(0) + 28));
    if (qword_281190DA0 != -1)
    {
      swift_once();
    }

    v7 = __swift_project_value_buffer(v1, qword_281194E18);
    (*(v2 + 16))(v4, v7, v1);
    v8 = sub_21498E670();
    v9 = sub_21498FB90();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 67109120;
      *(v10 + 4) = v6 & 1;
      _os_log_impl(&dword_21488E000, v8, v9, "[iCloudMailAssistantProviderSwift] isUnsubscribeEnabled: %{BOOL}d", v10, 8u);
      MEMORY[0x216059AC0](v10, -1, -1);
    }

    (*(v2 + 8))(v4, v1);
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t sub_21495CA74()
{
  v0[3] = *(v0[2] + 64);

  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_21495CB20;

  return sub_21494B3A8(1, 1);
}

uint64_t sub_21495CB20()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_21495CC30()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C660, &qword_21499B530);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v15 - v2;
  v4 = sub_21498FC90();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1CB78, &unk_21499D710);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v15 - v10;
  v15[0] = v0;
  if (qword_281190CB8 != -1)
  {
    swift_once();
  }

  sub_21498FCA0();
  sub_2148FFDCC();
  v12 = sub_21498FC20();
  v15[1] = v12;
  v13 = sub_21498FC00();
  (*(*(v13 - 8) + 56))(v3, 1, 1, v13);
  sub_214969664(&qword_281190CB0, MEMORY[0x277CC9DB0], MEMORY[0x277CC9DA8]);
  sub_214969664(&qword_281190CC8, sub_2148FFDCC, MEMORY[0x277D85228]);
  sub_21498EA60();
  sub_21489DFCC(v3, &qword_27CA1C660, &qword_21499B530);

  (*(v5 + 8))(v7, v4);
  swift_allocObject();
  swift_weakInit();
  sub_2148B4C20(&qword_281190D98, &qword_27CA1CB78, &unk_21499D710, MEMORY[0x277CBCD60]);
  sub_21498EA70();

  (*(v9 + 8))(v11, v8);
  swift_beginAccess();
  sub_21498E9A0();
  swift_endAccess();
}

uint64_t sub_21495CFF0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C660, &qword_21499B530);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = v14 - v1;
  v3 = sub_21498FC90();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1CB78, &unk_21499D710);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v14 - v9;
  sub_21498FCA0();
  sub_2148FFDCC();
  v11 = sub_21498FC20();
  v14[1] = v11;
  v12 = sub_21498FC00();
  (*(*(v12 - 8) + 56))(v2, 1, 1, v12);
  sub_214969664(&qword_281190CB0, MEMORY[0x277CC9DB0], MEMORY[0x277CC9DA8]);
  sub_214969664(&qword_281190CC8, sub_2148FFDCC, MEMORY[0x277D85228]);
  sub_21498EA60();
  sub_21489DFCC(v2, &qword_27CA1C660, &qword_21499B530);

  (*(v4 + 8))(v6, v3);
  swift_allocObject();
  swift_weakInit();
  sub_2148B4C20(&qword_281190D98, &qword_27CA1CB78, &unk_21499D710, MEMORY[0x277CBCD60]);
  sub_21498EA70();

  (*(v8 + 8))(v10, v7);
  swift_beginAccess();
  sub_21498E9A0();
  swift_endAccess();
}

uint64_t sub_21495D384()
{
  v0 = sub_21498F510();
  v30 = *(v0 - 8);
  v31 = v0;
  MEMORY[0x28223BE20](v0);
  v27 = &v25 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_21498F540();
  v28 = *(v2 - 8);
  v29 = v2;
  MEMORY[0x28223BE20](v2);
  v26 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_21498F560();
  v4 = *(v32 - 8);
  v5 = MEMORY[0x28223BE20](v32);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v25 - v8;
  v10 = sub_21498E690();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281190DA0 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v10, qword_281194E18);
  (*(v11 + 16))(v13, v14, v10);
  v15 = sub_21498E670();
  v16 = sub_21498FB90();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_21488E000, v15, v16, "[iCloudMailAssistantProviderSwift] handleAppWillEnterForeground", v17, 2u);
    MEMORY[0x216059AC0](v17, -1, -1);
  }

  (*(v11 + 8))(v13, v10);
  sub_2148FFDCC();
  v18 = sub_21498FC20();
  sub_21498F550();
  sub_21498F570();
  v25 = *(v4 + 8);
  v25(v7, v32);
  v19 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_214969760;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2148A457C;
  aBlock[3] = &block_descriptor_63_0;
  v20 = _Block_copy(aBlock);

  v21 = v26;
  sub_21498F530();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_214969664(&qword_281190D90, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C348, &qword_21499A980);
  sub_2148B4C20(&qword_281190D00, &qword_27CA1C348, &qword_21499A980, MEMORY[0x277D83970]);
  v22 = v27;
  v23 = v31;
  sub_21498FD60();
  MEMORY[0x216058C80](v9, v21, v22, v20);
  _Block_release(v20);

  (*(v30 + 8))(v22, v23);
  (*(v28 + 8))(v21, v29);
  return (v25)(v9, v32);
}

uint64_t sub_21495D8C0(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B6D0, &qword_2149916C0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v10 - v2;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = result;
    v6 = sub_21498FAE0();
    (*(*(v6 - 8) + 56))(v3, 1, 1, v6);
    sub_21498FAB0();

    v7 = sub_21498FAA0();
    v8 = swift_allocObject();
    v9 = MEMORY[0x277D85700];
    v8[2] = v7;
    v8[3] = v9;
    v8[4] = v5;
    sub_214926978(0, 0, v3, &unk_21499D738, v8);
  }

  return result;
}

uint64_t sub_21495DA14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_21498FAB0();
  v4[3] = sub_21498FAA0();
  v6 = sub_21498FA50();
  v4[4] = v6;
  v4[5] = v5;

  return MEMORY[0x2822009F8](sub_21495DAAC, v6, v5);
}

uint64_t sub_21495DAAC()
{
  v0[6] = *(v0[2] + 64);

  v1 = swift_task_alloc();
  v0[7] = v1;
  *v1 = v0;
  v1[1] = sub_21495DB58;

  return sub_21494B3A8(0, 0);
}

uint64_t sub_21495DB58()
{
  v1 = *v0;

  v2 = *(v1 + 40);
  v3 = *(v1 + 32);

  return MEMORY[0x2822009F8](sub_21496A374, v3, v2);
}

uint64_t sub_21495DC9C()
{
  v0 = sub_21498F510();
  v11 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v2 = &v10 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_21498F540();
  v3 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2148FFDCC();
  v6 = sub_21498FC20();
  v7 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_214969644;
  aBlock[5] = v7;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2148A457C;
  aBlock[3] = &block_descriptor_9;
  v8 = _Block_copy(aBlock);

  sub_21498F530();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_214969664(&qword_281190D90, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C348, &qword_21499A980);
  sub_2148B4C20(&qword_281190D00, &qword_27CA1C348, &qword_21499A980, MEMORY[0x277D83970]);
  sub_21498FD60();
  MEMORY[0x216058CD0](0, v5, v2, v8);
  _Block_release(v8);

  (*(v11 + 8))(v2, v0);
  return (*(v3 + 8))(v5, v10);
}

uint64_t sub_21495DF84(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B6D0, &qword_2149916C0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v10 - v2;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = result;

    sub_21494CF34();

    v6 = sub_21498FAE0();
    (*(*(v6 - 8) + 56))(v3, 1, 1, v6);
    sub_21498FAB0();

    v7 = sub_21498FAA0();
    v8 = swift_allocObject();
    v9 = MEMORY[0x277D85700];
    v8[2] = v7;
    v8[3] = v9;
    v8[4] = v5;
    sub_214926978(0, 0, v3, &unk_21499D728, v8);
  }

  return result;
}

uint64_t sub_21495E0F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_21498FAB0();
  v4[3] = sub_21498FAA0();
  v6 = sub_21498FA50();
  v4[4] = v6;
  v4[5] = v5;

  return MEMORY[0x2822009F8](sub_21495E190, v6, v5);
}

uint64_t sub_21495E190()
{
  v0[6] = *(v0[2] + 64);

  v1 = swift_task_alloc();
  v0[7] = v1;
  *v1 = v0;
  v1[1] = sub_21495E23C;

  return sub_21494B3A8(0, 0);
}

uint64_t sub_21495E23C()
{
  v1 = *v0;

  v2 = *(v1 + 40);
  v3 = *(v1 + 32);

  return MEMORY[0x2822009F8](sub_21495E380, v3, v2);
}

uint64_t sub_21495E380()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21495E3E0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_21498E690();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281190DA0 != -1)
  {
    swift_once();
  }

  v10 = __swift_project_value_buffer(v6, qword_281194E18);
  (*(v7 + 16))(v9, v10, v6);
  v11 = sub_21498E670();
  v12 = sub_21498FB90();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_21488E000, v11, v12, "[iCloudMailAssistantProviderSwift] startObservingCleanupJobUpdates", v13, 2u);
    MEMORY[0x216059AC0](v13, -1, -1);
  }

  (*(v7 + 8))(v9, v6);
  v14 = *(v3 + 16);
  v15 = *(v3 + 24);
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;

  return sub_214895734(v14, v15);
}

uint64_t sub_21495E5A4()
{
  v1 = v0;
  v2 = sub_21498E690();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281190DA0 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v2, qword_281194E18);
  (*(v3 + 16))(v5, v6, v2);
  v7 = sub_21498E670();
  v8 = sub_21498FB90();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_21488E000, v7, v8, "[iCloudMailAssistantProviderSwift] stopObservingCleanupJobUpdates", v9, 2u);
    MEMORY[0x216059AC0](v9, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  return sub_214895734(v10, v11);
}

uint64_t sub_21495E748()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C660, &qword_21499B530);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = v14 - v1;
  v3 = sub_21498FC90();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1CB78, &unk_21499D710);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v14 - v9;
  sub_21498FCA0();
  sub_2148FFDCC();
  v11 = sub_21498FC20();
  v14[1] = v11;
  v12 = sub_21498FC00();
  (*(*(v12 - 8) + 56))(v2, 1, 1, v12);
  sub_214969664(&qword_281190CB0, MEMORY[0x277CC9DB0], MEMORY[0x277CC9DA8]);
  sub_214969664(&qword_281190CC8, sub_2148FFDCC, MEMORY[0x277D85228]);
  sub_21498EA60();
  sub_21489DFCC(v2, &qword_27CA1C660, &qword_21499B530);

  (*(v4 + 8))(v6, v3);
  swift_allocObject();
  swift_weakInit();
  sub_2148B4C20(&qword_281190D98, &qword_27CA1CB78, &unk_21499D710, MEMORY[0x277CBCD60]);
  sub_21498EA70();

  (*(v8 + 8))(v10, v7);
  swift_beginAccess();
  sub_21498E9A0();
  swift_endAccess();
}

uint64_t sub_21495EADC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    a3();
  }

  return result;
}

uint64_t sub_21495EB3C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B6D0, &qword_2149916C0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v27 - v3;
  v5 = sub_21498E380();
  v31 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21498E690();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281190DA0 != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v8, qword_281194E18);
  (*(v9 + 16))(v11, v12, v8);
  v13 = sub_21498E670();
  v14 = sub_21498FB90();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v29 = v4;
    v16 = v15;
    v17 = swift_slowAlloc();
    v28 = v5;
    v18 = v17;
    v32 = v17;
    *v16 = 136315138;
    sub_21498E370();
    v19 = sub_21498E360();
    v30 = v1;
    v21 = v20;
    (*(v31 + 8))(v7, v28);
    v22 = sub_2149079F4(v19, v21, &v32);
    v1 = v30;

    *(v16 + 4) = v22;
    _os_log_impl(&dword_21488E000, v13, v14, "[iCloudMailAssistantProviderSwift] handleLocaleChange() - %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v18);
    MEMORY[0x216059AC0](v18, -1, -1);
    v23 = v16;
    v4 = v29;
    MEMORY[0x216059AC0](v23, -1, -1);
  }

  (*(v9 + 8))(v11, v8);
  v24 = sub_21498FAE0();
  (*(*(v24 - 8) + 56))(v4, 1, 1, v24);
  v25 = swift_allocObject();
  v25[2] = 0;
  v25[3] = 0;
  v25[4] = v1;

  sub_214926978(0, 0, v4, &unk_21499D700, v25);
}

uint64_t sub_21495EEF8()
{
  v0[5] = *(v0[4] + 64);

  v1 = swift_task_alloc();
  v0[6] = v1;
  *v1 = v0;
  v1[1] = sub_21495EF9C;

  return sub_21494FA90();
}

uint64_t sub_21495EF9C(uint64_t a1)
{
  v2 = *v1;
  *(v2 + 16) = v1;
  *(v2 + 24) = a1;

  return MEMORY[0x2822009F8](sub_21495F09C, 0, 0);
}

uint64_t sub_21495F09C()
{
  if (qword_281191B88 != -1)
  {
    swift_once();
  }

  *(v0 + 56) = *(v0 + 24);
  v1 = qword_281194E50;

  return MEMORY[0x2822009F8](sub_21495F138, v1, 0);
}

uint64_t sub_21495F138()
{
  sub_21496CB54();
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v1[1] = sub_21495F1D8;

  return sub_21494B3A8(0, 1);
}

uint64_t sub_21495F1D8()
{

  return MEMORY[0x2822009F8](sub_21496A350, 0, 0);
}

uint64_t iCloudMailAssistantProviderSwift.deinit()
{
  v1 = v0;
  v2 = sub_21498E690();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281190DA0 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v2, qword_281194E18);
  (*(v3 + 16))(v5, v6, v2);
  v7 = sub_21498E670();
  v8 = sub_21498FB90();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_21488E000, v7, v8, "[iCloudMailAssistantProviderSwift] deinit()", v9, 2u);
    MEMORY[0x216059AC0](v9, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  sub_214895734(*(v1 + 16), *(v1 + 24));

  MEMORY[0x216059B90](v1 + 80);
  return v1;
}

uint64_t iCloudMailAssistantProviderSwift.__deallocating_deinit()
{
  iCloudMailAssistantProviderSwift.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_21495F4E4()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B6D0, &qword_2149916C0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v16 - v3;
  v5 = sub_21498E690();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281190DA0 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v5, qword_281194E18);
  (*(v6 + 16))(v8, v9, v5);
  v10 = sub_21498E670();
  v11 = sub_21498FBA0();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_21488E000, v10, v11, "[iCloudMailAssistantProviderSwift] clearCache()", v12, 2u);
    MEMORY[0x216059AC0](v12, -1, -1);
  }

  (*(v6 + 8))(v8, v5);
  v13 = sub_21498FAE0();
  (*(*(v13 - 8) + 56))(v4, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = v1;

  sub_214926978(0, 0, v4, &unk_21499D588, v14);
}

uint64_t sub_21495F77C()
{
  v0[5] = *(v0[4] + 64);

  v1 = swift_task_alloc();
  v0[6] = v1;
  *v1 = v0;
  v1[1] = sub_21495F820;

  return sub_21494FA90();
}

uint64_t sub_21495F820(uint64_t a1)
{
  v2 = *v1;
  *(v2 + 16) = v1;
  *(v2 + 24) = a1;

  return MEMORY[0x2822009F8](sub_21495F920, 0, 0);
}

uint64_t sub_21495F920()
{
  if (qword_281191B88 != -1)
  {
    swift_once();
  }

  *(v0 + 56) = *(v0 + 24);
  v1 = qword_281194E50;

  return MEMORY[0x2822009F8](sub_21495F9BC, v1, 0);
}

uint64_t sub_21495F9BC()
{
  sub_21496E454();

  return MEMORY[0x2822009F8](sub_21495FA24, 0, 0);
}

uint64_t sub_21495FA24()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21495FAB0()
{
  v1 = *(v0[2] + 64);
  v0[3] = v1;
  v2 = (v1 + OBJC_IVAR____TtCC19iCloudMailAssistant32iCloudMailAssistantProviderSwift13ProviderModel_repository);
  v3 = *(v1 + OBJC_IVAR____TtCC19iCloudMailAssistant32iCloudMailAssistantProviderSwift13ProviderModel_repository + 24);

  __swift_project_boxed_opaque_existential_1(v2, v3);
  v4 = swift_task_alloc();
  v0[4] = v4;
  *v4 = v0;
  v4[1] = sub_21495FB70;

  return sub_21492A40C();
}

uint64_t sub_21495FB70(uint64_t a1)
{
  *(*v1 + 40) = a1;

  return MEMORY[0x2822009F8](sub_21495FC70, 0, 0);
}

uint64_t sub_21495FC70()
{
  v1 = *(v0 + 16);

  (*(*v1 + 416))(v2);
  v5 = (*(*v1 + 344) + **(*v1 + 344));
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  *v3 = v0;
  v3[1] = sub_21495FDCC;

  return v5();
}

uint64_t sub_21495FDCC()
{
  v1 = *v0;
  v5 = *v0;

  v2 = *(v5 + 8);
  v3 = *(v1 + 40);

  return v2(v3);
}

void *sub_21495FED8@<X0>(void (*a1)(char *, uint64_t)@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, void *a5@<X8>)
{
  v6 = v5;
  v25 = a1;
  v26 = a3;
  v10 = sub_21498E690();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281190DA0 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v10, qword_281194E18);
  (*(v11 + 16))(v13, v14, v10);

  v15 = sub_21498E670();
  v16 = sub_21498FBA0();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v24 = a5;
    v18 = v17;
    v19 = swift_slowAlloc();
    v23[1] = v6;
    v20 = v19;
    *&v27[0] = v19;
    *v18 = 136315394;
    *(v18 + 4) = sub_2149079F4(v25, a2, v27);
    *(v18 + 12) = 2080;
    *(v18 + 14) = sub_2149079F4(v26, a4, v27);
    _os_log_impl(&dword_21488E000, v15, v16, "[iCloudMailAssistantProviderSwift] getTip(for: %s, %s)", v18, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x216059AC0](v20, -1, -1);
    v21 = v18;
    a5 = v24;
    MEMORY[0x216059AC0](v21, -1, -1);
  }

  (*(v11 + 8))(v13, v10);
  if (qword_281191830 != -1)
  {
    swift_once();
  }

  if (byte_281194E48)
  {

    sub_21494BABC(v25, a2, v26, a4, a5);
  }

  else
  {
    sub_2148DA328(v27);
    return memcpy(a5, v27, 0x179uLL);
  }
}

uint64_t sub_2149601B4(uint64_t a1, void (*a2)(char *, uint64_t, uint64_t, uint64_t), uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v63 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B6D0, &qword_2149916C0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v54 - v10;
  v12 = sub_21498E690();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v14);
  v19 = &v54 - v18;
  if (qword_281191830 != -1)
  {
    result = swift_once();
  }

  if (byte_281194E48 != 1)
  {
    return result;
  }

  v60 = v16;
  v55 = a4;
  v56 = v11;
  if (qword_281190DA0 != -1)
  {
    swift_once();
  }

  v54 = a3;
  v20 = __swift_project_value_buffer(v12, qword_281194E18);
  v58 = *(v13 + 16);
  v59 = v20;
  v58(v19);

  v21 = sub_21498E670();
  v22 = sub_21498FB90();

  v23 = os_log_type_enabled(v21, v22);
  v61 = v13;
  v62 = a2;
  if (v23)
  {
    v24 = swift_slowAlloc();
    v57 = v5;
    v25 = v24;
    v26 = swift_slowAlloc();
    v69[0] = v26;
    *v25 = 136315138;
    v27 = v63;
    *(v25 + 4) = sub_2149079F4(v63, v62, v69);
    _os_log_impl(&dword_21488E000, v21, v22, "[iCloudMailAssistantProviderSwift] acceptTip(for: %s)", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v26);
    MEMORY[0x216059AC0](v26, -1, -1);
    v28 = v25;
    v5 = v57;
    MEMORY[0x216059AC0](v28, -1, -1);

    v29 = *(v13 + 8);
    v29(v19, v12);
  }

  else
  {

    v29 = *(v13 + 8);
    v29(v19, v12);
    v27 = v63;
  }

  sub_21494F990(v27, v62, v67);
  memcpy(v68, v67, 0x179uLL);
  if (get_enum_tag_for_layout_string_19iCloudMailAssistant9MATipIconVSg_0(v68) == 1)
  {
LABEL_15:
    v35 = v60;
    (v58)(v60, v59, v12);
    v36 = sub_21498E670();
    v37 = sub_21498FB90();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_21488E000, v36, v37, "[iCloudMailAssistantProviderSwift] acceptTip - Not found", v38, 2u);
      MEMORY[0x216059AC0](v38, -1, -1);
    }

    return (v29)(v35, v12);
  }

  memcpy(v69, v68, 0x179uLL);
  v30 = *(&v68[6] + 1);
  if (!*(&v68[6] + 1))
  {
    sub_21489DFCC(v67, &qword_27CA1AAB0, &qword_214993648);
    goto LABEL_15;
  }

  v63 = *&v68[6];
  v73 = v68[7];
  v74 = v68[8];
  v75 = v68[9];
  v31 = v68[0];
  if (__PAIR128__(0x80000002149A31C0, 0xD000000000000014) == v68[0] || (sub_214990080() & 1) != 0)
  {
    v32 = *(v5 + 32);
    v33 = v5;
    sub_2148AA824(&v68[6], v66, &qword_27CA1B9F0, &qword_2149970D0);

    v34 = sub_21498F840();
    [v32 setURL:0 forKey:v34];
  }

  else
  {
    sub_2148AA824(&v68[6], v66, &qword_27CA1B9F0, &qword_2149970D0);

    v33 = v5;
  }

  v39 = sub_21498FAE0();
  v40 = v56;
  v62 = *(*(v39 - 8) + 56);
  v62(v56, 1, 1, v39);
  v41 = swift_allocObject();
  *(v41 + 16) = 0;
  *(v41 + 24) = 0;
  *(v41 + 32) = v33;
  memcpy((v41 + 40), v69, 0x179uLL);
  *(v41 + 424) = v63;
  *(v41 + 432) = v30;
  v42 = v74;
  *(v41 + 440) = v73;
  *(v41 + 456) = v42;
  *(v41 + 472) = v75;
  v43 = v54;
  v44 = v55;
  *(v41 + 488) = v54;
  *(v41 + 496) = v44;
  v57 = v33;

  sub_2148AA824(v67, v66, &qword_27CA1AAB0, &qword_214993648);
  sub_21490D9F8(v43, v44);
  sub_214926978(0, 0, v40, &unk_21499D5A0, v41);

  v45 = *(&v68[19] + 1);
  if (*(&v68[19] + 1))
  {
    v46 = *&v68[19];
    v70 = v68[20];
    v71 = v68[21];
    v72 = v68[22];
    v64 = 0x4B43494C435F4E4FLL;
    v65 = 0xE90000000000005FLL;
    sub_2148AA824(&v68[19], v66, &qword_27CA1B9F0, &qword_2149970D0);
    MEMORY[0x2160589C0](v31, *(&v31 + 1));

    v47 = sub_2148EDBD4(v64, v65);

    if (v47)
    {
      v48 = v56;
      v62(v56, 1, 1, v39);
      v49 = swift_allocObject();
      *(v49 + 16) = 0;
      *(v49 + 24) = 0;
      *(v49 + 32) = v57;
      memcpy((v49 + 40), v69, 0x179uLL);
      *(v49 + 424) = v46;
      *(v49 + 432) = v45;
      v50 = v71;
      *(v49 + 440) = v70;
      *(v49 + 456) = v50;
      *(v49 + 472) = v72;

      sub_214926978(0, 0, v48, &unk_21499D5B0, v49);
    }

    sub_21489DFCC(v67, &qword_27CA1AAB0, &qword_214993648);
    v51 = &qword_27CA1B9F0;
    v52 = &qword_2149970D0;
    v53 = &v68[19];
  }

  else
  {

    v51 = &qword_27CA1AAB0;
    v52 = &qword_214993648;
    v53 = v67;
  }

  return sub_21489DFCC(v53, v51, v52);
}

uint64_t sub_214960940(int a1, int a2, int a3, int a4, void *__src, _OWORD *a6, uint64_t a7, uint64_t a8)
{
  memcpy((v8 + 16), __src, 0x179uLL);
  v12 = a6[1];
  *(v8 + 400) = *a6;
  *(v8 + 416) = v12;
  v13 = a6[3];
  *(v8 + 432) = a6[2];
  *(v8 + 448) = v13;
  v14 = swift_task_alloc();
  *(v8 + 464) = v14;
  *v14 = v8;
  v14[1] = sub_21496A370;

  return sub_214960A1C((v8 + 16), (v8 + 400), a7, a8);
}

uint64_t sub_214960A1C(uint64_t *a1, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 152) = a4;
  *(v5 + 160) = v4;
  *(v5 + 144) = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B6D0, &qword_2149916C0);
  *(v5 + 168) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A348, &qword_214991700);
  *(v5 + 176) = swift_task_alloc();
  *(v5 + 184) = swift_task_alloc();
  v8 = sub_21498E1B0();
  *(v5 + 192) = v8;
  *(v5 + 200) = *(v8 - 8);
  *(v5 + 208) = swift_task_alloc();
  *(v5 + 216) = swift_task_alloc();
  v9 = sub_21498E690();
  *(v5 + 224) = v9;
  *(v5 + 232) = *(v9 - 8);
  *(v5 + 240) = swift_task_alloc();
  *(v5 + 248) = swift_task_alloc();
  *(v5 + 256) = swift_task_alloc();
  *(v5 + 264) = swift_task_alloc();
  *(v5 + 272) = swift_task_alloc();
  v10 = swift_task_alloc();
  v11 = *a1;
  v12 = a1[1];
  *(v5 + 280) = v10;
  *(v5 + 288) = v11;
  *(v5 + 296) = v12;
  v13 = a2[1];
  *(v5 + 16) = *a2;
  *(v5 + 32) = v13;
  v14 = a2[3];
  *(v5 + 48) = a2[2];
  *(v5 + 64) = v14;
  *(v5 + 304) = sub_21498FAB0();
  *(v5 + 312) = sub_21498FAA0();
  v16 = sub_21498FA50();
  *(v5 + 320) = v16;
  *(v5 + 328) = v15;

  return MEMORY[0x2822009F8](sub_214960C60, v16, v15);
}

id sub_214960C60()
{
  v75 = v0;
  if (qword_281190DA0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 280);
  v2 = *(v0 + 224);
  v3 = *(v0 + 232);
  v4 = __swift_project_value_buffer(v2, qword_281194E18);
  v5 = *(v3 + 16);
  v5(v1, v4, v2);
  v6 = sub_21498E670();
  v7 = sub_21498FB90();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_21488E000, v6, v7, "[iCloudMailAssistantProviderSwift] processAction()", v8, 2u);
    MEMORY[0x216059AC0](v8, -1, -1);
  }

  v9 = *(v0 + 280);
  v10 = *(v0 + 224);
  v11 = *(v0 + 232);

  v12 = *(v11 + 8);
  v12(v9, v10);
  v13 = *(v0 + 16);
  v14 = *(v0 + 24);
  if (v13 == 0x7373696D736964 && v14 == 0xE700000000000000 || (sub_214990080() & 1) != 0)
  {
    *(v0 + 336) = *(*(v0 + 160) + 64);

    v15 = swift_task_alloc();
    *(v0 + 344) = v15;
    *v15 = v0;
    v15[1] = sub_2149615D8;

    return sub_21494FA90();
  }

  if ((v13 != 0x6C61646F6DLL || v14 != 0xE500000000000000) && (sub_214990080() & 1) == 0)
  {
    if ((v13 != 1802398060 || v14 != 0xE400000000000000) && (sub_214990080() & 1) == 0)
    {

      if ((v13 != 0x6B63616264656566 || v14 != 0xE800000000000000) && (sub_214990080() & 1) == 0)
      {
        v5(*(v0 + 240), v4, *(v0 + 224));

        v24 = sub_21498E670();
        v25 = sub_21498FBB0();

        v71 = os_log_type_enabled(v24, v25);
        v27 = *(v0 + 240);
        v28 = *(v0 + 224);
        if (v71)
        {
          v73 = *(v0 + 240);
          v29 = swift_slowAlloc();
          v30 = swift_slowAlloc();
          v74 = v30;
          *v29 = 136315138;
          *(v29 + 4) = sub_2149079F4(v13, v14, &v74);
          v31 = "[iCloudMailAssistantProviderSwift] processAction - unsupported tip action type: %s";
          goto LABEL_18;
        }

        goto LABEL_40;
      }

      v56 = *(v0 + 160);
      v55 = *(v0 + 168);
      v58 = *(v0 + 144);
      v57 = *(v0 + 152);
      v59 = sub_21498FAE0();
      (*(*(v59 - 8) + 56))(v55, 1, 1, v59);

      sub_2148F6BD0(v0 + 16, v0 + 80);
      sub_21490D9F8(v58, v57);
      v60 = sub_21498FAA0();
      v61 = swift_allocObject();
      v62 = *(v0 + 32);
      *(v61 + 40) = *(v0 + 16);
      *(v61 + 56) = v62;
      v63 = *(v0 + 64);
      *(v61 + 72) = *(v0 + 48);
      v64 = MEMORY[0x277D85700];
      *(v61 + 16) = v60;
      *(v61 + 24) = v64;
      *(v61 + 32) = v56;
      *(v61 + 88) = v63;
      *(v61 + 104) = v58;
      *(v61 + 112) = v57;
      sub_214926978(0, 0, v55, &unk_21499D770, v61);

      goto LABEL_43;
    }

    v17 = *(v0 + 40);
    if (v17)
    {
      v18 = *(v0 + 32);
      v40 = *(v0 + 192);
      v41 = *(v0 + 200);
      v42 = *(v0 + 176);
      sub_21498E1A0();
      if ((*(v41 + 48))(v42, 1, v40) != 1)
      {
        (*(*(v0 + 200) + 32))(*(v0 + 208), *(v0 + 176), *(v0 + 192));
        result = [objc_opt_self() defaultWorkspace];
        if (!result)
        {
          __break(1u);
          return result;
        }

        v65 = result;
        v67 = *(v0 + 200);
        v66 = *(v0 + 208);
        v68 = *(v0 + 192);

        v69 = sub_21498E140();
        sub_2148E0B1C(MEMORY[0x277D84F90]);
        v70 = sub_21498F7D0();

        [v65 openSensitiveURL:v69 withOptions:v70];

        (*(v67 + 8))(v66, v68);
        goto LABEL_43;
      }

      v43 = *(v0 + 256);
      v44 = *(v0 + 224);
      v45 = *(v0 + 176);

      sub_21489DFCC(v45, &qword_27CA1A348, &qword_214991700);
      v5(v43, v4, v44);

      v24 = sub_21498E670();
      v25 = sub_21498FBB0();

      v46 = os_log_type_enabled(v24, v25);
      v27 = *(v0 + 256);
      v28 = *(v0 + 224);
      if (v46)
      {
        goto LABEL_17;
      }

      goto LABEL_40;
    }

    v52 = *(v0 + 248);
    v53 = *(v0 + 224);

    v5(v52, v4, v53);
    v33 = sub_21498E670();
    v34 = sub_21498FBB0();
    v54 = os_log_type_enabled(v33, v34);
    v36 = *(v0 + 248);
    v37 = *(v0 + 224);
    if (v54)
    {
      goto LABEL_20;
    }

    goto LABEL_21;
  }

  v17 = *(v0 + 40);
  if (!v17)
  {
    v5(*(v0 + 264), v4, *(v0 + 224));
    v33 = sub_21498E670();
    v34 = sub_21498FBB0();
    v35 = os_log_type_enabled(v33, v34);
    v36 = *(v0 + 264);
    v37 = *(v0 + 224);
    if (v35)
    {
LABEL_20:
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_21488E000, v33, v34, "[iCloudMailAssistantProviderSwift] processAction - url missing", v38, 2u);
      MEMORY[0x216059AC0](v38, -1, -1);
    }

LABEL_21:

    v32 = v36;
    v39 = v37;
LABEL_42:
    v12(v32, v39);
    goto LABEL_43;
  }

  v18 = *(v0 + 32);
  v19 = *(v0 + 192);
  v20 = *(v0 + 200);
  v21 = *(v0 + 184);
  sub_21498E1A0();
  if ((*(v20 + 48))(v21, 1, v19) == 1)
  {
    v22 = *(v0 + 272);
    v23 = *(v0 + 224);
    sub_21489DFCC(*(v0 + 184), &qword_27CA1A348, &qword_214991700);
    v5(v22, v4, v23);

    v24 = sub_21498E670();
    v25 = sub_21498FBB0();

    v26 = os_log_type_enabled(v24, v25);
    v27 = *(v0 + 272);
    v28 = *(v0 + 224);
    if (v26)
    {
LABEL_17:
      v73 = v27;
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v74 = v30;
      *v29 = 136315138;
      *(v29 + 4) = sub_2149079F4(v18, v17, &v74);
      v31 = "[iCloudMailAssistantProviderSwift] processAction - url invalid: %s";
LABEL_18:
      _os_log_impl(&dword_21488E000, v24, v25, v31, v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v30);
      MEMORY[0x216059AC0](v30, -1, -1);
      MEMORY[0x216059AC0](v29, -1, -1);

      v32 = v73;
LABEL_41:
      v39 = v28;
      goto LABEL_42;
    }

LABEL_40:

    v32 = v27;
    goto LABEL_41;
  }

  v47 = *(v0 + 216);
  v48 = *(v0 + 192);
  v49 = *(v0 + 200);
  v50 = *(v0 + 152);
  v51 = *(v0 + 144);
  (*(v49 + 32))(v47, *(v0 + 184), v48);
  sub_214962E84(v47, *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), v51, v50);
  (*(v49 + 8))(v47, v48);
LABEL_43:

  v72 = *(v0 + 8);

  return v72();
}

uint64_t sub_2149615D8(uint64_t a1)
{
  *(*v1 + 352) = a1;

  return MEMORY[0x2822009F8](sub_2149616D8, 0, 0);
}

uint64_t sub_2149616D8()
{
  if (qword_281191B88 != -1)
  {
    swift_once();
  }

  v0 = qword_281194E50;

  return MEMORY[0x2822009F8](sub_21496176C, v0, 0);
}

uint64_t sub_21496176C()
{
  sub_21496D0E4(*(v0 + 288), *(v0 + 296));

  return MEMORY[0x2822009F8](sub_2149617D8, 0, 0);
}

uint64_t sub_2149617D8()
{

  v1 = *(v0 + 320);
  v2 = *(v0 + 328);

  return MEMORY[0x2822009F8](sub_214961848, v1, v2);
}

uint64_t sub_214961848()
{
  v0[45] = *(v0[20] + 64);

  v1 = swift_task_alloc();
  v0[46] = v1;
  *v1 = v0;
  v1[1] = sub_2149618F4;

  return sub_21494B3A8(0, 1);
}

uint64_t sub_2149618F4()
{
  v1 = *v0;

  v2 = *(v1 + 328);
  v3 = *(v1 + 320);

  return MEMORY[0x2822009F8](sub_214961A38, v3, v2);
}

uint64_t sub_214961A38()
{
  v1 = *(v0 + 144);

  if (v1)
  {
    (*(v0 + 144))(v2);
  }

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_214961B3C(int a1, int a2, int a3, int a4, void *__src, _OWORD *a6)
{
  memcpy((v6 + 16), __src, 0x179uLL);
  v8 = a6[1];
  *(v6 + 400) = *a6;
  *(v6 + 416) = v8;
  v9 = a6[3];
  *(v6 + 432) = a6[2];
  *(v6 + 448) = v9;
  v10 = swift_task_alloc();
  *(v6 + 464) = v10;
  *v10 = v6;
  v10[1] = sub_21496A370;

  return sub_214960A1C((v6 + 16), (v6 + 400), 0, 0);
}

void sub_214961C3C(uint64_t a1, unint64_t a2, void (*a3)(void), uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B6D0, &qword_2149916C0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v57 - v10;
  v12 = sub_21498E690();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v57 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v21 = &v57 - v20;
  if (qword_281191830 != -1)
  {
    v61 = v19;
    v66 = a1;
    v55 = v18;
    swift_once();
    v18 = v55;
    a1 = v66;
    v19 = v61;
  }

  if (byte_281194E48)
  {
    v60 = v11;
    v61 = v19;
    v59 = v17;
    v65 = a4;
    v66 = v4;
    if (qword_281190DA0 != -1)
    {
      v56 = v18;
      swift_once();
      v18 = v56;
    }

    v22 = v18;
    v23 = __swift_project_value_buffer(v18, qword_281194E18);
    v24 = *(v13 + 16);
    v62 = v23;
    v63 = v24;
    v64 = v13 + 16;
    (v24)(v21);

    v25 = v22;
    v26 = v13;
    v27 = sub_21498E670();
    v28 = sub_21498FB90();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v58 = a3;
      v31 = v30;
      v70[0] = v30;
      *v29 = 136315138;
      *(v29 + 4) = sub_2149079F4(a1, a2, v70);
      _os_log_impl(&dword_21488E000, v27, v28, "[iCloudMailAssistantProviderSwift] dismissTip(for: %s)", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v31);
      v32 = v31;
      a3 = v58;
      MEMORY[0x216059AC0](v32, -1, -1);
      MEMORY[0x216059AC0](v29, -1, -1);
    }

    v33 = *(v26 + 8);
    v34 = v21;
    v35 = v25;
    v33(v34, v25);
    v36 = v66;
    sub_21494F990(a1, a2, v68);
    memcpy(v69, v68, 0x179uLL);
    if (get_enum_tag_for_layout_string_19iCloudMailAssistant9MATipIconVSg_0(v69) == 1)
    {
      v37 = v61;
      v63(v61, v62, v25);
      v38 = sub_21498E670();
      v39 = sub_21498FB90();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        *v40 = 0;
        _os_log_impl(&dword_21488E000, v38, v39, "[iCloudMailAssistantProviderSwift] dismissTip - Not found", v40, 2u);
        MEMORY[0x216059AC0](v40, -1, -1);
      }

      v41 = v37;
    }

    else
    {
      memcpy(v70, v69, 0x179uLL);
      if (__PAIR128__(0x80000002149A31C0, 0xD000000000000014) == v69[0] || (sub_214990080() & 1) != 0)
      {
        sub_21489DFCC(v68, &qword_27CA1AAB0, &qword_214993648);
        v42 = *(v36 + 32);

        v43 = sub_21498F840();

        [v42 setBool:1 forKey:v43];

        if (!a3)
        {
          return;
        }

        goto LABEL_19;
      }

      v44 = *(&v69[11] + 1);
      if (*(&v69[11] + 1))
      {
        v45 = *&v69[11];
        v71 = v69[12];
        v72 = v69[13];
        v73 = v69[14];
        v46 = sub_21498FAE0();
        v47 = v60;
        (*(*(v46 - 8) + 56))(v60, 1, 1, v46);
        v48 = swift_allocObject();
        *(v48 + 16) = 0;
        *(v48 + 24) = 0;
        *(v48 + 32) = v36;
        memcpy((v48 + 40), v70, 0x179uLL);
        *(v48 + 424) = v45;
        *(v48 + 432) = v44;
        v49 = v72;
        *(v48 + 440) = v71;
        *(v48 + 456) = v49;
        *(v48 + 472) = v73;
        v50 = v65;
        *(v48 + 488) = a3;
        *(v48 + 496) = v50;
        sub_2148AA824(&v69[11], &v67, &qword_27CA1B9F0, &qword_2149970D0);

        sub_21490D9F8(a3, v50);
        sub_214926978(0, 0, v47, &unk_21499D5C0, v48);

        return;
      }

      sub_21489DFCC(v68, &qword_27CA1AAB0, &qword_214993648);
      v51 = v59;
      v63(v59, v62, v25);
      v52 = sub_21498E670();
      v53 = sub_21498FB90();
      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        *v54 = 0;
        _os_log_impl(&dword_21488E000, v52, v53, "[iCloudMailAssistantProviderSwift] dismissTip - No cancel action provided", v54, 2u);
        MEMORY[0x216059AC0](v54, -1, -1);
      }

      v41 = v51;
    }

    v33(v41, v35);
    if (!a3)
    {
      return;
    }
  }

  else if (!a3)
  {
    return;
  }

LABEL_19:
  a3();
}

uint64_t sub_2149622E8(int a1, int a2, int a3, int a4, void *__src, _OWORD *a6, uint64_t a7, uint64_t a8)
{
  memcpy((v8 + 16), __src, 0x179uLL);
  v12 = a6[1];
  *(v8 + 400) = *a6;
  *(v8 + 416) = v12;
  v13 = a6[3];
  *(v8 + 432) = a6[2];
  *(v8 + 448) = v13;
  v14 = swift_task_alloc();
  *(v8 + 464) = v14;
  *v14 = v8;
  v14[1] = sub_2149623C4;

  return sub_214960A1C((v8 + 16), (v8 + 400), a7, a8);
}

uint64_t sub_2149623C4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_2149624B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4)
{
  v5 = v4;
  v58 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B6D0, &qword_2149916C0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v49 - v10;
  v12 = sub_21498E690();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v14);
  v19 = &v49 - v18;
  if (qword_281191830 != -1)
  {
    result = swift_once();
  }

  if (byte_281194E48)
  {
    v55 = v16;
    v50 = v11;
    v51 = a4;
    v57 = a3;
    if (qword_281190DA0 != -1)
    {
      swift_once();
    }

    v20 = __swift_project_value_buffer(v12, qword_281194E18);
    v21 = *(v13 + 16);
    v53 = v20;
    v54 = v13 + 16;
    v52 = v21;
    (v21)(v19);

    v22 = sub_21498E670();
    v23 = sub_21498FB90();

    v24 = os_log_type_enabled(v22, v23);
    v25 = a2;
    v56 = v13;
    if (v24)
    {
      v26 = swift_slowAlloc();
      v49 = v5;
      v27 = v26;
      v28 = swift_slowAlloc();
      v64[0] = v28;
      *v27 = 136315138;
      v29 = v58;
      *(v27 + 4) = sub_2149079F4(v58, v25, v64);
      _os_log_impl(&dword_21488E000, v22, v23, "[iCloudMailAssistantProviderSwift] onAppearTip(for: %s)", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v28);
      MEMORY[0x216059AC0](v28, -1, -1);
      v30 = v27;
      v5 = v49;
      MEMORY[0x216059AC0](v30, -1, -1);

      v31 = *(v13 + 8);
      v31(v19, v12);
    }

    else
    {

      v31 = *(v13 + 8);
      v31(v19, v12);
      v29 = v58;
    }

    v32 = v25;
    sub_21494F990(v29, v25, v62);
    memcpy(v63, v62, 0x179uLL);
    if (get_enum_tag_for_layout_string_19iCloudMailAssistant9MATipIconVSg_0(v63) == 1)
    {
      v33 = v55;
      v52(v55, v53, v12);
      v34 = sub_21498E670();
      v35 = sub_21498FB90();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        *v36 = 0;
        _os_log_impl(&dword_21488E000, v34, v35, "[iCloudMailAssistantProviderSwift] onAppearTip - Not found", v36, 2u);
        MEMORY[0x216059AC0](v36, -1, -1);
      }

      result = (v31)(v33, v12);
      if (v57)
      {
        return (v57)(result);
      }
    }

    else
    {
      memcpy(v64, v63, 0x179uLL);
      v37 = *(&v63[15] + 1);
      if (*(&v63[15] + 1))
      {
        v38 = *&v63[15];
        v65 = v63[16];
        v66 = v63[17];
        v67 = v63[18];
        v60 = 0x41455050415F4E4FLL;
        v61 = 0xEA00000000005F52;
        sub_2148AA824(&v63[15], &v59, &qword_27CA1B9F0, &qword_2149970D0);
        MEMORY[0x2160589C0](v29, v32);
        v39 = sub_2148EDBD4(v60, v61);

        if (v39)
        {
          v40 = sub_21498FAE0();
          v41 = v50;
          (*(*(v40 - 8) + 56))(v50, 1, 1, v40);
          v42 = swift_allocObject();
          *(v42 + 16) = 0;
          *(v42 + 24) = 0;
          *(v42 + 32) = v5;
          memcpy((v42 + 40), v64, 0x179uLL);
          *(v42 + 424) = v38;
          *(v42 + 432) = v37;
          v43 = v66;
          *(v42 + 440) = v65;
          *(v42 + 456) = v43;
          *(v42 + 472) = v67;
          v44 = v57;
          v45 = v51;
          *(v42 + 488) = v57;
          *(v42 + 496) = v45;

          sub_21490D9F8(v44, v45);
          sub_214926978(0, 0, v41, &unk_21499D5D0, v42);
        }

        sub_21489DFCC(v62, &qword_27CA1AAB0, &qword_214993648);
        v46 = &qword_27CA1B9F0;
        v47 = &qword_2149970D0;
        v48 = &v63[15];
      }

      else
      {
        v46 = &qword_27CA1AAB0;
        v47 = &qword_214993648;
        v48 = v62;
      }

      return sub_21489DFCC(v48, v46, v47);
    }
  }

  else if (a3)
  {
    return a3();
  }

  return result;
}

uint64_t sub_214962AB8(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A348, &qword_214991700);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v25 - v6;
  v8 = sub_21498E1B0();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_21498E690();
  v13 = *(v12 - 8);
  result = MEMORY[0x28223BE20](v12);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281191830 != -1)
  {
    result = swift_once();
  }

  if (byte_281194E48 == 1)
  {
    v27 = v8;
    v28 = v2;
    v25 = a1;
    if (qword_281190DA0 != -1)
    {
      swift_once();
    }

    v26 = a2;
    v17 = __swift_project_value_buffer(v12, qword_281194E18);
    (*(v13 + 16))(v16, v17, v12);
    v18 = sub_21498E670();
    v19 = sub_21498FB90();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_21488E000, v18, v19, "[iCloudMailAssistantProviderSwift] presentConsentView", v20, 2u);
      MEMORY[0x216059AC0](v20, -1, -1);
    }

    (*(v13 + 8))(v16, v12);
    v21 = sub_21489E320(*(v28 + 48));
    v31 = 0xD00000000000002DLL;
    v32 = 0x80000002149A1950;
    v29 = v21;
    v30 = v22;
    v29 = sub_21498F970();
    v30 = v23;
    sub_21498F920();
    sub_21498E1A0();
    v24 = v27;
    result = (*(v9 + 48))(v7, 1, v27);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {

      (*(v9 + 32))(v11, v7, v24);
      sub_214962E84(v11, 1414745936, 0xE400000000000000, 0, 0xE000000000000000, v25, v26);
      return (*(v9 + 8))(v11, v24);
    }
  }

  return result;
}

uint64_t sub_214962E84(uint64_t a1, uint64_t a2, void (*a3)(void, void, void, void), uint64_t (*a4)(uint64_t a1), uint64_t (*a5)(uint64_t a1), uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v122 = a6;
  v123 = a7;
  v108 = a5;
  v120 = a4;
  v109 = a3;
  v107 = a2;
  v110 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A320, &unk_2149916D0);
  MEMORY[0x28223BE20](v9 - 8);
  v119 = &v100 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A328, &unk_2149933A0);
  MEMORY[0x28223BE20](v11 - 8);
  v116 = &v100 - v12;
  v13 = sub_21498E510();
  v113 = *(v13 - 8);
  v114 = v13;
  MEMORY[0x28223BE20](v13);
  v111 = &v100 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A330, &qword_2149916E0);
  MEMORY[0x28223BE20](v15 - 8);
  v115 = (&v100 - v16);
  v106 = type metadata accessor for TracingContext(0);
  MEMORY[0x28223BE20](v106);
  v18 = (&v100 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v124 = type metadata accessor for MALiftUISource(0);
  v112 = *(v124 - 8);
  v19 = MEMORY[0x28223BE20](v124);
  v21 = &v100 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v100 - v22;
  v105 = type metadata accessor for MARemoteView(0);
  v24 = MEMORY[0x28223BE20](v105);
  v117 = &v100 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v118 = (&v100 - v26);
  v27 = sub_21498E690();
  v28 = *(v27 - 8);
  v29 = MEMORY[0x28223BE20](v27);
  v104 = &v100 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v32 = &v100 - v31;
  if (qword_281190DA0 != -1)
  {
    swift_once();
  }

  v33 = __swift_project_value_buffer(v27, qword_281194E18);
  v34 = *(v28 + 16);
  v103 = v33;
  v102 = v34;
  (v34)(v32);
  v35 = sub_21498E670();
  v36 = sub_21498FBB0();
  v37 = os_log_type_enabled(v35, v36);
  v121 = v23;
  v125 = v21;
  if (v37)
  {
    v38 = swift_slowAlloc();
    *v38 = 0;
    _os_log_impl(&dword_21488E000, v35, v36, "[iCloudMailAssistantProviderSwift] presentRemoteView()", v38, 2u);
    v39 = v38;
    v21 = v125;
    v23 = v121;
    MEMORY[0x216059AC0](v39, -1, -1);
  }

  v40 = *(v28 + 8);
  v41 = v40(v32, v27);
  v42 = (*(*v8 + 216))(v41);
  if (v42)
  {
    v104 = v42;
    v43 = swift_allocObject();
    swift_weakInit();
    v44 = swift_allocObject();
    v45 = v18;
    v101 = v18;
    v46 = v44;
    v48 = v122;
    v47 = v123;
    v44[2] = v43;
    v44[3] = v48;
    v44[4] = v47;
    v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B1C8, &qword_214994C20);
    v50 = v21;
    v51 = &v23[*(v49 + 48)];
    v52 = &v23[*(v49 + 64)];
    v53 = sub_21498E1B0();
    (*(*(v53 - 8) + 16))(v23, v110, v53);
    v54 = v109;
    *v51 = v107;
    v51[1] = v54;
    v55 = v108;
    *v52 = v120;
    v52[1] = v55;
    swift_storeEnumTagMultiPayload();
    v120 = type metadata accessor for MALiftUISource;
    sub_21496987C(v23, v50, type metadata accessor for MALiftUISource);
    v56 = v8[6];
    v103 = v8[7];
    v57 = swift_allocObject();
    *(v57 + 16) = sub_214969AF8;
    *(v57 + 24) = v46;
    v107 = v43;

    sub_21490D9F8(v122, v123);

    v123 = v46;

    v58 = sub_21498E170();
    v60 = v59;
    v61 = v105;
    v62 = v106[5];
    v108 = v62;
    v110 = sub_21498E5D0();
    v63 = *(v110 - 8);
    v109 = *(v63 + 56);
    v122 = v63 + 56;
    v109(v62 + v45, 1, 1, v110);
    *v45 = v58;
    v45[1] = v60;
    v64 = v118;
    *v118 = v58;
    *(v64 + 8) = v60;
    v65 = v125;
    sub_21496987C(v125, v64 + v61[5], v120);
    v66 = v103;
    *(v64 + v61[9]) = v103;
    *(v64 + v61[10]) = v56;
    v67 = (v64 + v61[7]);
    *v67 = sub_21496A344;
    v67[1] = v57;
    sub_21498E8C0();
    swift_allocObject();

    v68 = v66;
    v106 = v56;
    v69 = sub_21498E8B0();
    v70 = swift_allocObject();
    v72 = v113;
    v71 = v114;
    v73 = v111;
    (*(v113 + 104))(v111, *MEMORY[0x277D245A0], v114);
    LOBYTE(v55) = sub_21498E500();
    (*(v72 + 8))(v73, v71);
    *(v70 + 16) = v55 & 1;
    v74 = v115;
    *v115 = v70;
    v75 = *MEMORY[0x277D23258];
    v76 = sub_21498E7C0();
    v77 = *(v76 - 8);
    (*(v77 + 104))(v74, v75, v76);
    (*(v77 + 56))(v74, 0, 1, v76);
    sub_21498E8E0();
    v78 = v116;
    sub_21496987C(v65, v116, v120);
    (*(v112 + 56))(v78, 0, 1, v124);
    type metadata accessor for MARemoteViewModel(0);
    aBlock = 0u;
    v127 = 0u;
    v128 = 0;
    swift_allocObject();
    v79 = v106;

    v80 = sub_21490B164(v79, v78, v69, &aBlock);
    v81 = v64 + v61[6];
    *v81 = sub_21496A348;
    *(v81 + 8) = v80;
    *(v81 + 16) = 0;
    v82 = v108;
    v83 = v101;
    sub_2148AA824(v108 + v101, v64 + v61[11], &qword_27CA1A320, &unk_2149916D0);
    v84 = v83;
    v85 = v119;
    sub_2148AA824(v82 + v83, v119, &qword_27CA1A320, &unk_2149916D0);
    type metadata accessor for MARemoteViewDelegate(0);
    v86 = swift_allocObject();
    v87 = OBJC_IVAR____TtC19iCloudMailAssistant20MARemoteViewDelegate_signpostID;
    v109(v86 + OBJC_IVAR____TtC19iCloudMailAssistant20MARemoteViewDelegate_signpostID, 1, 1, v110);
    v88 = qword_281190DA8;
    swift_retain_n();
    if (v88 != -1)
    {
      swift_once();
    }

    sub_2149698E8(v84, type metadata accessor for TracingContext);
    sub_2149698E8(v125, type metadata accessor for MALiftUISource);
    sub_2149698E8(v121, type metadata accessor for MALiftUISource);
    v89 = sub_21498E600();
    __swift_project_value_buffer(v89, qword_281194E30);
    *(v86 + 16) = "LoadRemoteView";
    *(v86 + 24) = 14;
    *(v86 + 32) = 2;
    swift_beginAccess();
    sub_21489B818(v85, v86 + v87);
    swift_endAccess();
    v90 = (v86 + OBJC_IVAR____TtC19iCloudMailAssistant20MARemoteViewDelegate_onRetry);
    *v90 = sub_21496A34C;
    v90[1] = v80;

    *(v64 + v61[8]) = v86;
    sub_21496987C(v64, v117, type metadata accessor for MARemoteView);
    v91 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1CB68, &qword_21499D5E0));
    v92 = sub_21498EE80();
    v128 = sub_21496720C;
    v129 = 0;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    *&v127 = sub_2148A457C;
    *(&v127 + 1) = &block_descriptor_113;
    v93 = _Block_copy(&aBlock);
    v94 = v104;
    [v104 presentViewController:v92 animated:1 completion:v93];
    _Block_release(v93);

    return sub_2149698E8(v64, type metadata accessor for MARemoteView);
  }

  else
  {
    v96 = v104;
    v102(v104, v103, v27);
    v97 = sub_21498E670();
    v98 = sub_21498FBB0();
    if (os_log_type_enabled(v97, v98))
    {
      v99 = swift_slowAlloc();
      *v99 = 0;
      _os_log_impl(&dword_21488E000, v97, v98, "[iCloudMailAssistantProviderSwift] presentRemoteView - delegate is not set", v99, 2u);
      MEMORY[0x216059AC0](v99, -1, -1);
    }

    return v40(v96, v27);
  }
}

uint64_t sub_214963B74(void *a1, char *a2)
{
  v4 = type metadata accessor for MARemoteView(0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v13 - v8;
  sub_214963C88(a1, a2, (&v13 - v8));
  sub_21496987C(v9, v7, type metadata accessor for MARemoteView);
  v10 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1CB68, &qword_21499D5E0));
  v11 = sub_21498EE80();
  sub_2149698E8(v9, type metadata accessor for MARemoteView);
  return v11;
}

uint64_t sub_214963C88@<X0>(void *a1@<X0>, char *a2@<X1>, uint64_t *a3@<X8>)
{
  v98 = a2;
  v97 = a1;
  v99 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A320, &unk_2149916D0);
  MEMORY[0x28223BE20](v4 - 8);
  v106 = &v86 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A328, &unk_2149933A0);
  MEMORY[0x28223BE20](v6 - 8);
  v105 = &v86 - v7;
  v8 = sub_21498E510();
  v102 = *(v8 - 8);
  v103 = v8;
  MEMORY[0x28223BE20](v8);
  v100 = &v86 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A330, &qword_2149916E0);
  MEMORY[0x28223BE20](v10 - 8);
  v104 = (&v86 - v11);
  v96 = type metadata accessor for TracingContext(0);
  MEMORY[0x28223BE20](v96);
  v13 = &v86 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = type metadata accessor for MALiftUISource(0);
  v101 = *(v110 - 8);
  v14 = MEMORY[0x28223BE20](v110);
  v109 = &v86 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v111 = &v86 - v16;
  v17 = sub_21498F8C0();
  MEMORY[0x28223BE20](v17 - 8);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A348, &qword_214991700);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v86 - v19;
  v21 = sub_21498E1B0();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = &v86 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = v3;
  v95 = *(v3 + 48);
  v26 = sub_21489E320(v95);
  *&v112[0] = 0xD00000000000002DLL;
  *(&v112[0] + 1) = 0x80000002149A1950;
  v114 = v26;
  v115 = v27;
  v114 = sub_21498F970();
  v115 = v28;
  sub_21498F920();
  sub_21498E1A0();
  result = (*(v22 + 48))(v20, 1, v21);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {

    v107 = v21;
    v108 = v22;
    (*(v22 + 32))(v24, v20, v21);
    sub_21498DF70();
    swift_allocObject();
    sub_21498DF60();
    LOBYTE(v112[0]) = 2;
    sub_21496999C();
    v30 = sub_21498DF50();
    v93 = v13;
    v31 = v30;
    v33 = v32;

    sub_21498F8B0();
    v34 = sub_21498F890();
    if (v35)
    {
      v36 = v35;
      v94 = v34;
      sub_21489B4F8(v31, v33);
    }

    else
    {
      sub_21489B4F8(v31, v33);
      v94 = 0;
      v36 = 0xE000000000000000;
    }

    v37 = v111;
    v38 = swift_allocObject();
    swift_weakInit();
    v39 = swift_allocObject();
    v40 = v97;
    v39[2] = v38;
    v39[3] = v40;
    v41 = v98;
    v39[4] = v98;
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B1C8, &qword_214994C20);
    v43 = *(v42 + 48);
    v44 = (v37 + *(v42 + 64));
    (*(v108 + 16))(v37, v24, v107);
    *(v37 + v43) = xmmword_214994690;
    *v44 = v94;
    v44[1] = v36;
    swift_storeEnumTagMultiPayload();
    v45 = v109;
    v88 = type metadata accessor for MALiftUISource;
    sub_21496987C(v37, v109, type metadata accessor for MALiftUISource);
    v87 = *(v25 + 56);
    v46 = v45;
    v47 = swift_allocObject();
    *(v47 + 16) = sub_2149699F0;
    *(v47 + 24) = v39;
    v94 = v38;

    sub_21490D9F8(v40, v41);
    v97 = v39;

    v98 = v24;
    v48 = sub_21498E170();
    v50 = v49;
    v51 = *(v96 + 20);
    v89 = v51;
    v91 = sub_21498E5D0();
    v52 = *(v91 - 8);
    v90 = *(v52 + 56);
    v92 = v52 + 56;
    v53 = v93;
    v90(v93 + v51, 1, 1, v91);
    *v53 = v48;
    v53[1] = v50;
    v54 = v99;
    *v99 = v48;
    v54[1] = v50;
    v55 = v54;
    v56 = type metadata accessor for MARemoteView(0);
    sub_21496987C(v46, v55 + v56[5], type metadata accessor for MALiftUISource);
    v57 = v87;
    *(v55 + v56[9]) = v87;
    v58 = v95;
    *(v55 + v56[10]) = v95;
    v59 = (v55 + v56[7]);
    *v59 = sub_21496A344;
    v59[1] = v47;
    sub_21498E8C0();
    swift_allocObject();

    v60 = v57;
    v61 = v53;
    v95 = v58;
    v96 = v47;
    v62 = v55;

    v63 = sub_21498E8B0();
    v64 = swift_allocObject();
    v66 = v102;
    v65 = v103;
    v67 = v100;
    (*(v102 + 104))(v100, *MEMORY[0x277D245A0], v103);
    v68 = sub_21498E500();
    (*(v66 + 8))(v67, v65);
    v69 = v68 & 1;
    v70 = v109;
    *(v64 + 16) = v69;
    v71 = v104;
    *v104 = v64;
    v72 = *MEMORY[0x277D23258];
    v73 = sub_21498E7C0();
    v74 = *(v73 - 8);
    (*(v74 + 104))(v71, v72, v73);
    (*(v74 + 56))(v71, 0, 1, v73);
    sub_21498E8E0();
    v75 = v105;
    sub_21496987C(v70, v105, v88);
    (*(v101 + 56))(v75, 0, 1, v110);
    type metadata accessor for MARemoteViewModel(0);
    memset(v112, 0, sizeof(v112));
    v113 = 0;
    swift_allocObject();
    v76 = v95;

    v77 = sub_21490B164(v76, v75, v63, v112);
    v78 = v62 + v56[6];
    *v78 = sub_21496A348;
    *(v78 + 8) = v77;
    *(v78 + 16) = 0;
    v79 = v89;
    sub_2148AA824(v61 + v89, v62 + v56[11], &qword_27CA1A320, &unk_2149916D0);
    v80 = v106;
    sub_2148AA824(v61 + v79, v106, &qword_27CA1A320, &unk_2149916D0);
    type metadata accessor for MARemoteViewDelegate(0);
    v81 = swift_allocObject();
    v82 = OBJC_IVAR____TtC19iCloudMailAssistant20MARemoteViewDelegate_signpostID;
    v90((v81 + OBJC_IVAR____TtC19iCloudMailAssistant20MARemoteViewDelegate_signpostID), 1, 1, v91);
    v83 = qword_281190DA8;
    swift_retain_n();
    if (v83 != -1)
    {
      swift_once();
    }

    sub_2149698E8(v61, type metadata accessor for TracingContext);
    sub_2149698E8(v70, type metadata accessor for MALiftUISource);
    sub_2149698E8(v111, type metadata accessor for MALiftUISource);
    (*(v108 + 8))(v98, v107);
    v84 = sub_21498E600();
    __swift_project_value_buffer(v84, qword_281194E30);
    *(v81 + 16) = "LoadRemoteView";
    *(v81 + 24) = 14;
    *(v81 + 32) = 2;
    swift_beginAccess();
    sub_21489B818(v80, v81 + v82);
    swift_endAccess();
    v85 = (v81 + OBJC_IVAR____TtC19iCloudMailAssistant20MARemoteViewDelegate_onRetry);
    *v85 = sub_21496A34C;
    v85[1] = v77;

    *(v62 + v56[8]) = v81;
  }

  return result;
}

uint64_t sub_214964878(uint64_t a1)
{
  v1 = a1;
  v2 = type metadata accessor for MARemoteView(0);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v11 - v6;
  sub_21496497C(v1, (&v11 - v6));
  sub_21496987C(v7, v5, type metadata accessor for MARemoteView);
  v8 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1CB68, &qword_21499D5E0));
  v9 = sub_21498EE80();
  sub_2149698E8(v7, type metadata accessor for MARemoteView);
  return v9;
}

uint64_t sub_21496497C@<X0>(int a1@<W0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  LODWORD(v90) = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A320, &unk_2149916D0);
  MEMORY[0x28223BE20](v5 - 8);
  v100 = &v85 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A328, &unk_2149933A0);
  MEMORY[0x28223BE20](v7 - 8);
  v98 = &v85 - v8;
  v9 = sub_21498E510();
  v95 = *(v9 - 8);
  v96 = v9;
  MEMORY[0x28223BE20](v9);
  v93 = &v85 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A330, &qword_2149916E0);
  MEMORY[0x28223BE20](v11 - 8);
  v97 = (&v85 - v12);
  v92 = type metadata accessor for TracingContext(0);
  MEMORY[0x28223BE20](v92);
  v99 = (&v85 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v105 = type metadata accessor for MALiftUISource(0);
  v94 = *(v105 - 8);
  v14 = MEMORY[0x28223BE20](v105);
  v104 = &v85 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v106 = &v85 - v16;
  v17 = sub_21498F8C0();
  MEMORY[0x28223BE20](v17 - 8);
  v88 = &v85 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A348, &qword_214991700);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v85 - v20;
  v22 = sub_21498E1B0();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v85 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = *(v3 + 48);
  v26 = sub_21489E320(v91);
  *&v107[0] = 0xD00000000000002FLL;
  *(&v107[0] + 1) = 0x80000002149A34E0;
  v109 = v26;
  v110 = v27;
  v109 = sub_21498F970();
  v110 = v28;
  sub_21498F920();
  sub_21498E1A0();
  result = (*(v23 + 48))(v21, 1, v22);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {

    v102 = v22;
    v103 = v23;
    v30 = *(v23 + 32);
    v31 = v25;
    v30(v25, v21, v22);
    v32 = v3;
    v33 = *(v3 + 32);
    v34 = sub_21498F840();
    v35 = [v33 BOOLForKey_];

    v36 = sub_21498F840();
    v37 = [v33 BOOLForKey_];

    sub_21498DF70();
    swift_allocObject();
    sub_21498DF60();
    LOBYTE(v107[0]) = v90;
    BYTE1(v107[0]) = v35;
    BYTE2(v107[0]) = v37;
    sub_214969948();
    v38 = sub_21498DF50();
    v101 = a2;
    v39 = v38;
    v41 = v40;

    sub_21498F8B0();
    v42 = sub_21498F890();
    if (v43)
    {
      v44 = v42;
      v45 = v43;
      sub_21489B4F8(v39, v41);
    }

    else
    {
      sub_21489B4F8(v39, v41);
      v44 = 0;
      v45 = 0xE000000000000000;
    }

    v46 = v106;
    v89 = v31;
    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B1C8, &qword_214994C20);
    v48 = *(v47 + 48);
    v49 = (v46 + *(v47 + 64));
    (*(v103 + 16))(v46, v31, v102);
    *(v46 + v48) = xmmword_214994690;
    *v49 = v44;
    v49[1] = v45;
    swift_storeEnumTagMultiPayload();
    v50 = v104;
    v85 = type metadata accessor for MALiftUISource;
    sub_21496987C(v46, v104, type metadata accessor for MALiftUISource);
    v51 = *(v32 + 56);
    v52 = swift_allocObject();
    *(v52 + 16) = 0;
    *(v52 + 24) = 0;
    v53 = sub_21498E170();
    v55 = v54;
    v56 = *(v92 + 20);
    v86 = v56;
    v88 = sub_21498E5D0();
    v57 = *(v88 - 1);
    v87 = *(v57 + 56);
    v90 = v57 + 56;
    v58 = v99;
    v87(v99 + v56, 1, 1, v88);
    *v58 = v53;
    v58[1] = v55;
    v59 = v101;
    *v101 = v53;
    v59[1] = v55;
    v60 = type metadata accessor for MARemoteView(0);
    sub_21496987C(v50, v59 + v60[5], type metadata accessor for MALiftUISource);
    *(v59 + v60[9]) = v51;
    v61 = v91;
    *(v59 + v60[10]) = v91;
    v62 = (v59 + v60[7]);
    *v62 = sub_21496A344;
    v62[1] = v52;
    sub_21498E8C0();
    swift_allocObject();

    v63 = v51;
    v91 = v61;
    v92 = v52;

    v64 = sub_21498E8B0();
    v65 = swift_allocObject();
    v67 = v95;
    v66 = v96;
    v68 = v93;
    (*(v95 + 104))(v93, *MEMORY[0x277D245A0], v96);
    LOBYTE(v52) = sub_21498E500();
    (*(v67 + 8))(v68, v66);
    *(v65 + 16) = v52 & 1;
    v69 = v97;
    *v97 = v65;
    v70 = *MEMORY[0x277D23258];
    v71 = sub_21498E7C0();
    v72 = *(v71 - 8);
    (*(v72 + 104))(v69, v70, v71);
    (*(v72 + 56))(v69, 0, 1, v71);
    v73 = v101;
    sub_21498E8E0();
    v74 = v98;
    sub_21496987C(v50, v98, v85);
    (*(v94 + 56))(v74, 0, 1, v105);
    type metadata accessor for MARemoteViewModel(0);
    memset(v107, 0, sizeof(v107));
    v108 = 0;
    swift_allocObject();
    v75 = v91;

    v76 = sub_21490B164(v75, v74, v64, v107);
    v77 = v73 + v60[6];
    *v77 = sub_21496A348;
    *(v77 + 1) = v76;
    v77[16] = 0;
    v78 = v86;
    sub_2148AA824(v58 + v86, v73 + v60[11], &qword_27CA1A320, &unk_2149916D0);
    v79 = v100;
    sub_2148AA824(v58 + v78, v100, &qword_27CA1A320, &unk_2149916D0);
    type metadata accessor for MARemoteViewDelegate(0);
    v80 = swift_allocObject();
    v81 = OBJC_IVAR____TtC19iCloudMailAssistant20MARemoteViewDelegate_signpostID;
    v87((v80 + OBJC_IVAR____TtC19iCloudMailAssistant20MARemoteViewDelegate_signpostID), 1, 1, v88);
    v82 = qword_281190DA8;

    if (v82 != -1)
    {
      swift_once();
    }

    sub_2149698E8(v58, type metadata accessor for TracingContext);
    sub_2149698E8(v104, type metadata accessor for MALiftUISource);
    sub_2149698E8(v106, type metadata accessor for MALiftUISource);
    (*(v103 + 8))(v89, v102);
    v83 = sub_21498E600();
    __swift_project_value_buffer(v83, qword_281194E30);
    *(v80 + 16) = "LoadRemoteView";
    *(v80 + 24) = 14;
    *(v80 + 32) = 2;
    swift_beginAccess();
    sub_21489B818(v79, v80 + v81);
    result = swift_endAccess();
    v84 = (v80 + OBJC_IVAR____TtC19iCloudMailAssistant20MARemoteViewDelegate_onRetry);
    *v84 = sub_21496A34C;
    v84[1] = v76;
    *(v73 + v60[8]) = v80;
  }

  return result;
}

uint64_t sub_2149654E8(void (*a1)(char *, uint64_t), uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1CB70, &qword_21499D5E8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = (&v17 - v5);
  v7 = type metadata accessor for MARemoteView(0);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v17 - v12;
  sub_2149656D4(a1, a2, v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_21489DFCC(v6, &qword_27CA1CB70, &qword_21499D5E8);
    return 0;
  }

  else
  {
    sub_21490D5B4(v6, v13);
    sub_21496987C(v13, v11, type metadata accessor for MARemoteView);
    v15 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1CB68, &qword_21499D5E0));
    v16 = sub_21498EE80();
    sub_2149698E8(v13, type metadata accessor for MARemoteView);
    return v16;
  }
}

uint64_t sub_2149656D4@<X0>(void (*a1)(char *, uint64_t)@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v144 = a2;
  v146 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A320, &unk_2149916D0);
  MEMORY[0x28223BE20](v4 - 8);
  v126 = &v120 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A328, &unk_2149933A0);
  MEMORY[0x28223BE20](v6 - 8);
  v133 = &v120 - v7;
  v8 = sub_21498E510();
  v130 = *(v8 - 8);
  v131 = v8;
  MEMORY[0x28223BE20](v8);
  v128 = &v120 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A330, &qword_2149916E0);
  MEMORY[0x28223BE20](v10 - 8);
  v132 = (&v120 - v11);
  v127 = type metadata accessor for TracingContext(0);
  MEMORY[0x28223BE20](v127);
  v13 = &v120 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = type metadata accessor for MALiftUISource(0);
  v129 = *(v135 - 8);
  v14 = MEMORY[0x28223BE20](v135);
  v16 = &v120 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v120 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A348, &qword_214991700);
  MEMORY[0x28223BE20](v19 - 8);
  v137 = &v120 - v20;
  v21 = sub_21498E1B0();
  v139 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v138 = &v120 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_21498E690();
  v24 = *(v23 - 8);
  v25 = MEMORY[0x28223BE20](v23);
  v27 = &v120 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v25);
  v140 = &v120 - v29;
  MEMORY[0x28223BE20](v28);
  v31 = &v120 - v30;
  if (qword_281190DA0 != -1)
  {
    swift_once();
  }

  v32 = __swift_project_value_buffer(v23, qword_281194E18);
  v147 = v23;
  v148 = v24;
  v33 = *(v24 + 16);
  v141 = v32;
  v142 = v33;
  v143 = v24 + 16;
  v33(v31);
  v34 = sub_21498E670();
  v35 = sub_21498FB90();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v136 = v21;
    v37 = v18;
    v38 = v16;
    v39 = a3;
    v40 = v36;
    *v36 = 0;
    _os_log_impl(&dword_21488E000, v34, v35, "[iCloudMailAssistantProviderSwift] createTipModalViewController()", v36, 2u);
    v41 = v40;
    a3 = v39;
    v16 = v38;
    v18 = v37;
    v21 = v136;
    MEMORY[0x216059AC0](v41, -1, -1);
  }

  v134 = v13;
  v42 = a3;

  v43 = v147;
  v44 = v148[1];
  ++v148;
  v44(v31, v147);
  v45 = v144;
  sub_21494F990(v146, v144, v153);
  memcpy(v154, v153, 0x179uLL);
  if (get_enum_tag_for_layout_string_19iCloudMailAssistant9MATipIconVSg_0(v154) == 1)
  {
    v46 = v27;
    (v142)(v27, v141, v43);

    v47 = sub_21498E670();
    v48 = sub_21498FB90();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = v44;
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v152[0] = v51;
      *v50 = 136315138;
      *(v50 + 4) = sub_2149079F4(v146, v45, v152);
      _os_log_impl(&dword_21488E000, v47, v48, "[iCloudMailAssistantProviderSwift] createTipModalViewController -- tip not found: %s", v50, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v51);
      MEMORY[0x216059AC0](v51, -1, -1);
      MEMORY[0x216059AC0](v50, -1, -1);

      v49(v46, v43);
    }

    else
    {

      v44(v27, v43);
    }

    v72 = type metadata accessor for MARemoteView(0);
    v73 = *(*(v72 - 8) + 56);
    v74 = v42;
    return v73(v74, 1, 1, v72);
  }

  v146 = v44;
  v52 = v154[13];
  v53 = v42;
  if (!v154[13] || !v154[15])
  {
LABEL_13:
    v61 = v140;
    v62 = v147;
    (v142)(v140, v141, v147);
    memcpy(v152, v153, 0x179uLL);
    sub_2148D8FC8(v152, v151);
    v63 = sub_21498E670();
    v64 = sub_21498FB90();
    sub_21489DFCC(v153, &qword_27CA1AAB0, &qword_214993648);
    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v150 = v66;
      *v65 = 136315138;
      memcpy(v149, v154, sizeof(v149));
      v67 = MATip.description.getter();
      v68 = v53;
      v70 = v69;
      memcpy(v151, v149, 0x179uLL);
      sub_2148F6AF8(v151);
      v71 = sub_2149079F4(v67, v70, &v150);
      v53 = v68;

      *(v65 + 4) = v71;
      _os_log_impl(&dword_21488E000, v63, v64, "[iCloudMailAssistantProviderSwift] createTipModalViewController -- modal action not found: %s", v65, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v66);
      MEMORY[0x216059AC0](v66, -1, -1);
      MEMORY[0x216059AC0](v65, -1, -1);
    }

    else
    {
      sub_21489DFCC(v153, &qword_27CA1AAB0, &qword_214993648);
    }

    v146(v61, v62);
    v72 = type metadata accessor for MARemoteView(0);
    v73 = *(*(v72 - 8) + 56);
    v74 = v53;
    return v73(v74, 1, 1, v72);
  }

  v125 = v18;
  v144 = v42;
  v54 = v154[12];
  v55 = v154[17];
  v122 = v154[18];
  v123 = v154[16];
  v124 = v154[19];
  sub_2148AA824(&v154[12], v152, &qword_27CA1B9F0, &qword_2149970D0);

  v56 = v137;
  sub_21498E1A0();

  v57 = v139;
  if ((*(v139 + 48))(v56, 1, v21) == 1)
  {
    sub_21489DFCC(&v154[12], &qword_27CA1B9F0, &qword_2149970D0);
    v58 = &qword_27CA1A348;
    v59 = &qword_214991700;
    v60 = v56;
LABEL_12:
    sub_21489DFCC(v60, v58, v59);
    v53 = v144;
    goto LABEL_13;
  }

  (*(v57 + 32))(v138, v56, v21);
  if ((v54 != 0x6C61646F6DLL || v52 != 0xE500000000000000) && (sub_214990080() & 1) == 0)
  {
    (*(v57 + 8))(v138, v21);
    v58 = &qword_27CA1B9F0;
    v59 = &qword_2149970D0;
    v60 = &v154[12];
    goto LABEL_12;
  }

  sub_21489DFCC(v153, &qword_27CA1AAB0, &qword_214993648);
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B1C8, &qword_214994C20);
  v77 = v125;
  v78 = &v125[*(v76 + 48)];
  v79 = v21;
  v80 = &v125[*(v76 + 64)];
  v81 = *(v57 + 16);
  v136 = v79;
  v81(v125, v138);
  v82 = v122;
  *v78 = v123;
  *(v78 + 1) = v55;
  v83 = v124;
  *v80 = v82;
  *(v80 + 1) = v83;
  swift_storeEnumTagMultiPayload();
  v84 = v16;
  v121 = v16;
  v142 = type metadata accessor for MALiftUISource;
  sub_21496987C(v77, v16, type metadata accessor for MALiftUISource);
  v85 = *(v145 + 48);
  v148 = *(v145 + 56);
  v86 = swift_allocObject();
  *(v86 + 16) = 0;
  *(v86 + 24) = 0;

  v87 = sub_21498E170();
  v89 = v88;
  v90 = *(v127 + 20);
  v143 = v90;
  v146 = sub_21498E5D0();
  v91 = *(v146 - 1);
  v145 = *(v91 + 56);
  v147 = v91 + 56;
  v92 = v134;
  (v145)(v134 + v90, 1, 1, v146);
  *v92 = v87;
  v92[1] = v89;
  v93 = v144;
  *v144 = v87;
  v93[1] = v89;
  v94 = type metadata accessor for MARemoteView(0);
  sub_21496987C(v84, v93 + v94[5], type metadata accessor for MALiftUISource);
  v95 = v148;
  *(v93 + v94[9]) = v148;
  *(v93 + v94[10]) = v85;
  v96 = (v93 + v94[7]);
  *v96 = sub_2149698E4;
  v96[1] = v86;
  sub_21498E8C0();
  swift_allocObject();

  v97 = v95;
  v141 = v85;
  v148 = v86;

  v98 = sub_21498E8B0();
  v99 = swift_allocObject();
  v101 = v130;
  v100 = v131;
  v102 = v128;
  (*(v130 + 104))(v128, *MEMORY[0x277D245A0], v131);
  LOBYTE(v95) = sub_21498E500();
  (*(v101 + 8))(v102, v100);
  v103 = v95 & 1;
  v104 = v126;
  *(v99 + 16) = v103;
  v105 = v132;
  *v132 = v99;
  v106 = *MEMORY[0x277D23258];
  v107 = sub_21498E7C0();
  v108 = *(v107 - 8);
  (*(v108 + 104))(v105, v106, v107);
  (*(v108 + 56))(v105, 0, 1, v107);
  sub_21498E8E0();
  v109 = v133;
  sub_21496987C(v121, v133, v142);
  (*(v129 + 56))(v109, 0, 1, v135);
  type metadata accessor for MARemoteViewModel(0);
  memset(v152, 0, 40);
  swift_allocObject();
  v110 = v141;

  v111 = sub_21490B164(v110, v109, v98, v152);
  v112 = v93 + v94[6];
  *v112 = sub_21489B760;
  *(v112 + 1) = v111;
  v112[16] = 0;
  v113 = v143;
  v114 = v134;
  sub_2148AA824(v134 + v143, v93 + v94[11], &qword_27CA1A320, &unk_2149916D0);
  sub_2148AA824(v114 + v113, v104, &qword_27CA1A320, &unk_2149916D0);
  type metadata accessor for MARemoteViewDelegate(0);
  v115 = swift_allocObject();
  v116 = OBJC_IVAR____TtC19iCloudMailAssistant20MARemoteViewDelegate_signpostID;
  (v145)(v115 + OBJC_IVAR____TtC19iCloudMailAssistant20MARemoteViewDelegate_signpostID, 1, 1, v146);
  v117 = qword_281190DA8;
  swift_retain_n();
  if (v117 != -1)
  {
    swift_once();
  }

  sub_21489DFCC(&v154[12], &qword_27CA1B9F0, &qword_2149970D0);

  sub_2149698E8(v114, type metadata accessor for TracingContext);
  sub_2149698E8(v121, type metadata accessor for MALiftUISource);
  sub_2149698E8(v125, type metadata accessor for MALiftUISource);
  (*(v139 + 8))(v138, v136);
  v118 = sub_21498E600();
  __swift_project_value_buffer(v118, qword_281194E30);
  *(v115 + 16) = "LoadRemoteView";
  *(v115 + 24) = 14;
  *(v115 + 32) = 2;
  swift_beginAccess();
  sub_21489B818(v104, v115 + v116);
  swift_endAccess();
  v119 = (v115 + OBJC_IVAR____TtC19iCloudMailAssistant20MARemoteViewDelegate_onRetry);
  *v119 = sub_21489B7D8;
  v119[1] = v111;
  *(v93 + v94[8]) = v115;
  return (*(*(v94 - 1) + 56))(v93, 0, 1, v94);
}

uint64_t sub_2149666BC@<X0>(uint64_t *a3@<X8>)
{
  type metadata accessor for iCloudMailAssistantProviderSwift();
  result = sub_21498E9D0();
  *a3 = result;
  return result;
}

uint64_t sub_2149666F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[12] = a6;
  v7[13] = a7;
  v7[10] = a4;
  v7[11] = a5;
  sub_21498FAB0();
  v7[14] = sub_21498FAA0();
  v9 = sub_21498FA50();
  v7[15] = v9;
  v7[16] = v8;

  return MEMORY[0x2822009F8](sub_214966794, v9, v8);
}

uint64_t sub_214966794()
{
  *(v0 + 136) = *(*(v0 + 80) + 64);

  return MEMORY[0x2822009F8](sub_214966808, 0, 0);
}

uint64_t sub_214966808()
{
  v1 = *(v0 + 88);
  __swift_project_boxed_opaque_existential_1((*(v0 + 136) + OBJC_IVAR____TtCC19iCloudMailAssistant32iCloudMailAssistantProviderSwift13ProviderModel_repository), *(*(v0 + 136) + OBJC_IVAR____TtCC19iCloudMailAssistant32iCloudMailAssistantProviderSwift13ProviderModel_repository + 24));
  v3 = v1[2];
  v2 = v1[3];
  v4 = v1[1];
  *(v0 + 16) = *v1;
  *(v0 + 32) = v4;
  *(v0 + 48) = v3;
  *(v0 + 64) = v2;
  v5 = swift_task_alloc();
  *(v0 + 144) = v5;
  *v5 = v0;
  v5[1] = sub_2149668D0;

  return sub_21493A828((v0 + 16));
}

uint64_t sub_2149668D0()
{

  return MEMORY[0x2822009F8](sub_2149669CC, 0, 0);
}

uint64_t sub_2149669CC()
{
  v1 = v0[12];
  if (v1)
  {
    v1();
  }

  v2 = v0[15];
  v3 = v0[16];

  return MEMORY[0x2822009F8](sub_214966A44, v2, v3);
}

uint64_t sub_214966A44()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_214966AA4(uint64_t a1, void (*a2)(uint64_t), uint64_t a3)
{
  v30[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B6D0, &qword_2149916C0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v30 - v6;
  v8 = sub_21498E320();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v13 = *(Strong + 32);

    sub_21498E310();
    v14 = sub_21498E2B0();
    v15 = sub_21498F840();
    [v13 setValue:v14 forKey:v15];

    (*(v9 + 8))(v11, v8);
  }

  swift_beginAccess();
  v16 = swift_weakLoadStrong();
  if (v16)
  {
    v17 = *(v16 + 32);

    sub_21498E310();
    v18 = sub_21498E2B0();
    v19 = sub_21498F840();
    [v17 setValue:v18 forKey:v19];

    (*(v9 + 8))(v11, v8);
  }

  swift_beginAccess();
  v20 = swift_weakLoadStrong();
  if (v20)
  {
    v21 = *(v20 + 32);

    sub_21498E310();
    v22 = sub_21498E2B0();
    v23 = sub_21498F840();
    [v21 setValue:v22 forKey:v23];

    (*(v9 + 8))(v11, v8);
  }

  swift_beginAccess();
  v24 = swift_weakLoadStrong();
  if (v24)
  {

    sub_21494CF34();
  }

  if (a2)
  {
    a2(v24);
  }

  v25 = sub_21498FAE0();
  (*(*(v25 - 8) + 56))(v7, 1, 1, v25);
  sub_21498FAB0();

  v26 = sub_21498FAA0();
  v27 = swift_allocObject();
  v28 = MEMORY[0x277D85700];
  v27[2] = v26;
  v27[3] = v28;
  v27[4] = a1;
  sub_214926C38(0, 0, v7, &unk_21499D758, v27);
}

uint64_t sub_214966E98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a1;
  v4[6] = a4;
  sub_21498FAB0();
  v4[7] = sub_21498FAA0();
  v6 = sub_21498FA50();
  v4[8] = v6;
  v4[9] = v5;

  return MEMORY[0x2822009F8](sub_214966F30, v6, v5);
}

uint64_t sub_214966F30()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 80) = Strong;
  if (Strong)
  {
    *(v0 + 88) = *(Strong + 64);

    v2 = swift_task_alloc();
    *(v0 + 96) = v2;
    *v2 = v0;
    v2[1] = sub_214967054;

    return sub_21494B3A8(0, 1);
  }

  else
  {

    **(v0 + 40) = *(v0 + 80) == 0;
    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_214967054()
{
  v1 = *v0;

  v2 = *(v1 + 72);
  v3 = *(v1 + 64);

  return MEMORY[0x2822009F8](sub_214967198, v3, v2);
}

uint64_t sub_214967198()
{

  **(v0 + 40) = *(v0 + 80) == 0;
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21496720C()
{
  v0 = sub_21498E690();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281190DA0 != -1)
  {
    swift_once();
  }

  v4 = __swift_project_value_buffer(v0, qword_281194E18);
  (*(v1 + 16))(v3, v4, v0);
  v5 = sub_21498E670();
  v6 = sub_21498FBB0();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_21488E000, v5, v6, "[iCloudMailAssistantProviderSwift] presentRemoteView - presented", v7, 2u);
    MEMORY[0x216059AC0](v7, -1, -1);
  }

  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_214967398(uint64_t a1, void (*a2)(uint64_t))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B6D0, &qword_2149916C0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v21[-v5];
  v7 = sub_21498E320();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v21[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v12 = *(Strong + 32);

    sub_21498E310();
    v13 = sub_21498E2B0();
    v14 = sub_21498F840();
    [v12 setValue:v13 forKey:v14];

    (*(v8 + 8))(v10, v7);
  }

  swift_beginAccess();
  v15 = swift_weakLoadStrong();
  if (v15)
  {

    sub_21494CF34();
  }

  if (a2)
  {
    a2(v15);
  }

  v16 = sub_21498FAE0();
  (*(*(v16 - 8) + 56))(v6, 1, 1, v16);
  sub_21498FAB0();

  v17 = sub_21498FAA0();
  v18 = swift_allocObject();
  v19 = MEMORY[0x277D85700];
  v18[2] = v17;
  v18[3] = v19;
  v18[4] = a1;
  sub_214926C38(0, 0, v6, &unk_21499D748, v18);
}

uint64_t sub_21496764C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a1;
  v4[6] = a4;
  sub_21498FAB0();
  v4[7] = sub_21498FAA0();
  v6 = sub_21498FA50();
  v4[8] = v6;
  v4[9] = v5;

  return MEMORY[0x2822009F8](sub_2149676E4, v6, v5);
}

uint64_t sub_2149676E4()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 80) = Strong;
  if (Strong)
  {
    *(v0 + 88) = *(Strong + 64);

    v2 = swift_task_alloc();
    *(v0 + 96) = v2;
    *v2 = v0;
    v2[1] = sub_214967808;

    return sub_21494B3A8(0, 1);
  }

  else
  {

    **(v0 + 40) = *(v0 + 80) == 0;
    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_214967808()
{
  v1 = *v0;

  v2 = *(v1 + 72);
  v3 = *(v1 + 64);

  return MEMORY[0x2822009F8](sub_21496A364, v3, v2);
}

uint64_t sub_21496794C(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1CB90, &qword_21499D838);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9[-v6];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214969EE8();
  sub_2149901C0();
  v9[15] = 0;
  sub_21498FFD0();
  if (v2)
  {
    return (*(v5 + 8))(v7, v4);
  }

  v9[14] = 1;
  sub_21498FFD0();
  v9[13] = 2;
  sub_21498FFD0();
  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_214967AEC()
{
  v1 = 0x5341426573557369;
  if (*v0 == 1)
  {
    v1 = 0xD000000000000012;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000015;
  }
}

uint64_t sub_214967B54@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21496A214(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_214967B7C(uint64_t a1)
{
  v2 = sub_214969EE8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214967BB8(uint64_t a1)
{
  v2 = sub_214969EE8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214967C18(void *a1, char a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1CBA0, &qword_21499D840);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9[-v6];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214969F3C();
  sub_2149901C0();
  v9[15] = a2;
  sub_214969F90();
  sub_21498FFE0();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_214967D80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x507972746E456163 && a2 == 0xEC000000746E696FLL)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_214990080();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_214967E0C(uint64_t a1)
{
  v2 = sub_214969F3C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214967E48(uint64_t a1)
{
  v2 = sub_214969F3C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214967EA0@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  if (result)
  {
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_214967EB0(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t sub_214967F24@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

void *_s19iCloudMailAssistant01iabC13ProviderSwiftC12appleAccount12accountStore13shouldPrepare0J10ClearCacheACSo9ACAccountC_So0nI0CS2btcfC_0(void *a1, void *a2, int a3, char a4)
{
  LODWORD(v5) = a3;
  v53 = a1;
  v7 = sub_21498F710();
  MEMORY[0x28223BE20](v7 - 8);
  v54 = &v50[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v52 = sub_21498E350();
  v9 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v11 = &v50[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = sub_21498E690();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v50[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v14);
  v18 = &v50[-v17];
  if (a4)
  {
    if (qword_281190DA0 != -1)
    {
      swift_once();
    }

    v19 = __swift_project_value_buffer(v12, qword_281194E18);
    (*(v13 + 16))(v18, v19, v12);
    v20 = sub_21498E670();
    v21 = sub_21498FBB0();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v51 = v5;
      v5 = a2;
      v23 = v22;
      *v22 = 0;
      _os_log_impl(&dword_21488E000, v20, v21, "[iCloudMailAssistantProviderSwift] init - shouldClearCache is no longer supported.", v22, 2u);
      v24 = v23;
      a2 = v5;
      LOBYTE(v5) = v51;
      MEMORY[0x216059AC0](v24, -1, -1);
    }

    (*(v13 + 8))(v18, v12);
  }

  if (v5)
  {
    if (qword_281190DA0 != -1)
    {
      swift_once();
    }

    v25 = __swift_project_value_buffer(v12, qword_281194E18);
    (*(v13 + 16))(v16, v25, v12);
    v26 = sub_21498E670();
    v27 = sub_21498FBB0();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = a2;
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_21488E000, v26, v27, "[iCloudMailAssistantProviderSwift] init - shouldPrepare is no longer supported.", v29, 2u);
      v30 = v29;
      a2 = v28;
      MEMORY[0x216059AC0](v30, -1, -1);
    }

    (*(v13 + 8))(v16, v12);
  }

  v31 = type metadata accessor for MARepositoryDefault();
  v32 = swift_allocObject();
  v33 = a2;
  v34 = v53;
  sub_21498E340();
  v35 = sub_21498E330();
  v37 = v36;
  (*(v9 + 8))(v11, v52);
  v32[2] = v35;
  v32[3] = v37;
  v32[4] = v33;
  v32[5] = v34;
  _sSo14NSUserDefaultsC19iCloudMailAssistantE11mailCleanupAbCE0dg4UserB0CvgZ_0();
  v39 = v38;
  v40 = [objc_opt_self() defaultCenter];
  v41 = v54;
  sub_21496BCB8(v54);
  type metadata accessor for NetworkStatusProvider(0);
  swift_allocObject();
  v42 = sub_214988258();
  v55[3] = v31;
  v55[4] = &off_2826CB168;
  v55[0] = v32;
  type metadata accessor for iCloudMailAssistantProviderSwift();
  v43 = swift_allocObject();
  v44 = __swift_mutable_project_boxed_opaque_existential_1(v55, v31);
  MEMORY[0x28223BE20](v44);
  v46 = &v50[-((v45 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v47 + 16))(v46);
  v48 = sub_2148D72D0(v34, v33, *v46, v39, v40, v41, v42, 0x3FE0000000000000, 0, v43);
  __swift_destroy_boxed_opaque_existential_1(v55);
  return v48;
}

uint64_t sub_2149684D8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_214899138;

  return sub_21495F75C(a1, v4, v5, v6);
}

uint64_t sub_21496858C(int a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 488);
  v8 = *(v1 + 496);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_214899964;

  return sub_214960940(a1, v4, v5, v6, (v1 + 40), (v1 + 424), v7, v8);
}

uint64_t sub_214968664(int a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_214899964;

  return sub_214961B3C(a1, v4, v5, v6, (v1 + 40), (v1 + 424));
}

uint64_t sub_214968728(int a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 488);
  v8 = *(v1 + 496);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_214899964;

  return sub_2149622E8(a1, v4, v5, v6, (v1 + 40), (v1 + 424), v7, v8);
}

uint64_t objectdestroy_13Tm_0()
{
  swift_unknownObjectRelease();

  if (v0[8])
  {
  }

  if (v0[18])
  {
  }

  if (v0[28])
  {
  }

  if (v0[36])
  {
  }

  if (v0[44])
  {
  }

  if (v0[61])
  {
  }

  return MEMORY[0x2821FE8E8](v0, 504, 7);
}

uint64_t sub_214968944(int a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 488);
  v8 = *(v1 + 496);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_214899964;

  return sub_214960940(a1, v4, v5, v6, (v1 + 40), (v1 + 424), v7, v8);
}

uint64_t dispatch thunk of iCloudMailAssistantProviderSwift.prepare()()
{
  v4 = (*(*v0 + 256) + **(*v0 + 256));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_214899964;

  return v4();
}

uint64_t dispatch thunk of iCloudMailAssistantProviderSwift.blockSender(sender:entryPoint:analytics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = (*(*v5 + 304) + **(*v5 + 304));
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  *v12 = v6;
  v12[1] = sub_214899138;

  return v14(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of iCloudMailAssistantProviderSwift.blockSender(sender:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 312) + **(*v2 + 312));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_214899964;

  return v8(a1, a2);
}

uint64_t dispatch thunk of iCloudMailAssistantProviderSwift.unblockSender(sender:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 320) + **(*v2 + 320));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_214899964;

  return v8(a1, a2);
}

uint64_t dispatch thunk of iCloudMailAssistantProviderSwift.forceSync()()
{
  v4 = (*(*v0 + 344) + **(*v0 + 344));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_214899964;

  return v4();
}

uint64_t dispatch thunk of iCloudMailAssistantProviderSwift.resetMailCleanup()()
{
  v4 = (*(*v0 + 424) + **(*v0 + 424));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_21493093C;

  return v4();
}

uint64_t sub_214969560(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_214899964;

  return sub_21495EED8(a1, v4, v5, v6);
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_214969664(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2149696AC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_214899964;

  return sub_21495E0F8(a1, v4, v5, v6);
}

uint64_t sub_214969768(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_214899964;

  return sub_21495DA14(a1, v4, v5, v6);
}

uint64_t sub_21496987C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2149698E8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_214969948()
{
  result = qword_27CA1CB80;
  if (!qword_27CA1CB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1CB80);
  }

  return result;
}

unint64_t sub_21496999C()
{
  result = qword_27CA1CB88;
  if (!qword_27CA1CB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1CB88);
  }

  return result;
}

uint64_t sub_2149699FC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_214899964;

  return sub_21496764C(a1, v4, v5, v6);
}

uint64_t objectdestroy_86Tm()
{

  if (*(v0 + 24))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t objectdestroy_72Tm()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_214969B44()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1();
  }

  return result;
}

uint64_t sub_214969B74(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_214899964;

  return sub_214966E98(a1, v4, v5, v6);
}

uint64_t sub_214969C28(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[13];
  v8 = v1[14];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_214899964;

  return sub_2149666F8(a1, v4, v5, v6, (v1 + 5), v7, v8);
}

uint64_t getEnumTagSinglePayload for MAConsentRequestBody(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  if (v6 <= 3)
  {
    v7 = 3;
  }

  else
  {
    v7 = *a1;
  }

  v8 = v7 - 4;
  if (v6 < 3)
  {
    v9 = -1;
  }

  else
  {
    v9 = v8;
  }

  return (v9 + 1);
}

uint64_t __swift_memcpy3_1(uint64_t result, __int16 *a2)
{
  v2 = *a2;
  *(result + 2) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for MADashboardRequestBody(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE)
  {
    if ((a2 + 33554178) >> 24)
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776962;
      }
    }

    else
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776962;
      }
    }
  }

  v4 = *a1;
  if (v4 >= 2)
  {
    v5 = ((v4 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v5 = -2;
  }

  if (v5 < 0)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for MADashboardRequestBody(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a3 + 33554178) >> 24)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (a3 <= 0xFD)
  {
    v3 = 0;
  }

  if (a2 > 0xFD)
  {
    *result = a2 - 254;
    *(result + 2) = (a2 - 254) >> 16;
    if (v3)
    {
      v4 = ((a2 - 254) >> 24) + 1;
      if (v3 == 2)
      {
        *(result + 3) = v4;
      }

      else
      {
        *(result + 3) = v4;
      }
    }
  }

  else
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    if (v3 == 2)
    {
      *(result + 3) = 0;
LABEL_10:
      if (!a2)
      {
        return result;
      }

LABEL_16:
      *result = a2 + 2;
      return result;
    }

    *(result + 3) = 0;
    if (a2)
    {
      goto LABEL_16;
    }
  }

  return result;
}

unint64_t sub_214969EE8()
{
  result = qword_27CA1CB98;
  if (!qword_27CA1CB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1CB98);
  }

  return result;
}

unint64_t sub_214969F3C()
{
  result = qword_27CA1CBA8;
  if (!qword_27CA1CBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1CBA8);
  }

  return result;
}

unint64_t sub_214969F90()
{
  result = qword_27CA1CBB0;
  if (!qword_27CA1CBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1CBB0);
  }

  return result;
}

unint64_t sub_21496A008()
{
  result = qword_27CA1CBB8;
  if (!qword_27CA1CBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1CBB8);
  }

  return result;
}

unint64_t sub_21496A060()
{
  result = qword_27CA1CBC0;
  if (!qword_27CA1CBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1CBC0);
  }

  return result;
}

unint64_t sub_21496A0B8()
{
  result = qword_27CA1CBC8;
  if (!qword_27CA1CBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1CBC8);
  }

  return result;
}

unint64_t sub_21496A110()
{
  result = qword_27CA1CBD0;
  if (!qword_27CA1CBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1CBD0);
  }

  return result;
}

unint64_t sub_21496A168()
{
  result = qword_27CA1CBD8;
  if (!qword_27CA1CBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1CBD8);
  }

  return result;
}

unint64_t sub_21496A1C0()
{
  result = qword_27CA1CBE0;
  if (!qword_27CA1CBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1CBE0);
  }

  return result;
}

uint64_t sub_21496A214(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000015 && 0x80000002149A3510 == a2;
  if (v4 || (sub_214990080() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x80000002149A3530 == a2 || (sub_214990080() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x5341426573557369 && a2 == 0xE800000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_214990080();

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

uint64_t sub_21496A378(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x65756C6176;
  if (v2 != 1)
  {
    v3 = 0x79616C6564;
  }

  if (*a1)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0x636E657265666572;
  }

  if (v2)
  {
    v5 = 0xE500000000000000;
  }

  else
  {
    v5 = 0xE900000000000065;
  }

  v6 = 0x65756C6176;
  if (*a2 != 1)
  {
    v6 = 0x79616C6564;
  }

  if (*a2)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0x636E657265666572;
  }

  if (*a2)
  {
    v8 = 0xE500000000000000;
  }

  else
  {
    v8 = 0xE900000000000065;
  }

  if (v4 == v7 && v5 == v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_214990080();
  }

  return v9 & 1;
}

uint64_t sub_21496A46C()
{
  sub_214990160();
  sub_21498F900();

  return sub_214990190();
}

uint64_t sub_21496A50C(uint64_t a1)
{
  sub_21498F900();
}

uint64_t sub_21496A598(uint64_t a1)
{
  sub_214990160();
  sub_21498F900();

  return sub_214990190();
}

unint64_t sub_21496A634@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_21496BC58(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_21496A664(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000065;
  v4 = 0x65756C6176;
  if (v2 != 1)
  {
    v4 = 0x79616C6564;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0x636E657265666572;
  }

  if (!v5)
  {
    v3 = 0xE500000000000000;
  }

  *a1 = v6;
  a1[1] = v3;
}

uint64_t sub_21496A6C0()
{
  v1 = 0x65756C6176;
  if (*v0 != 1)
  {
    v1 = 0x79616C6564;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x636E657265666572;
  }
}

unint64_t sub_21496A718@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21496BC58(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21496A740(uint64_t a1)
{
  v2 = sub_21496BAEC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21496A77C(uint64_t a1)
{
  v2 = sub_21496BAEC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21496A7B8(uint64_t a1, uint64_t a2)
{
  v2 = sub_21498E690();
  MEMORY[0x28223BE20](v2);
  v3 = sub_21498E7C0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21498E7B0();
  sub_21498E8A0();
  return (*(v4 + 8))(v6, v3);
}

uint64_t *sub_21496AAD8(void *a1)
{
  v38 = *v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A848, &qword_214993160);
  v28 = *(v3 - 8);
  v29 = v3;
  MEMORY[0x28223BE20](v3);
  v30 = v25 - v4;
  v35 = sub_21498E7C0();
  v31 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v6 = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C988, &qword_21499DB80);
  v32 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v33 = v25 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1CC08, &qword_21499DB88);
  v34 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = v25 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21496BAEC();
  v12 = v36;
  sub_2149901B0();
  if (v12)
  {
    swift_deallocPartialClassInstance();
    __swift_destroy_boxed_opaque_existential_1(a1);
    return v1;
  }

  else
  {
    v36 = v11;
    v13 = v9;
    v14 = v32;
    v27 = v7;
    sub_2148994D0(a1, v37);
    sub_21496BAA4(&qword_27CA1A550, MEMORY[0x277D232B0], MEMORY[0x277D232C0]);
    v15 = v33;
    v16 = v35;
    sub_21498E740();
    v17 = *(v14 + 32);
    v25[1] = OBJC_IVAR____TtC19iCloudMailAssistant16DelayedSetAction_reference;
    v26 = v1;
    v17(v1 + OBJC_IVAR____TtC19iCloudMailAssistant16DelayedSetAction_reference, v15, v27);
    v37[0] = 1;
    v18 = v6;
    v19 = v13;
    v20 = v36;
    sub_21498FFA0();
    (*(v31 + 32))(v26 + OBJC_IVAR____TtC19iCloudMailAssistant16DelayedSetAction_value, v18, v16);
    v37[0] = 2;
    sub_2148B4C20(&qword_27CA1A930, &qword_27CA1A848, &qword_214993160, MEMORY[0x277D23238]);
    v22 = v29;
    v21 = v30;
    sub_21498FFA0();
    (*(v34 + 8))(v20, v19);
    v23 = v26;
    (*(v28 + 32))(v26 + OBJC_IVAR____TtC19iCloudMailAssistant16DelayedSetAction_delay, v21, v22);
    __swift_destroy_boxed_opaque_existential_1(a1);
    return v23;
  }
}

uint64_t sub_21496B05C()
{
  v1 = OBJC_IVAR____TtC19iCloudMailAssistant16DelayedSetAction_reference;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C988, &qword_21499DB80);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC19iCloudMailAssistant16DelayedSetAction_value;
  v4 = sub_21498E7C0();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC19iCloudMailAssistant16DelayedSetAction_delay;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A848, &qword_214993160);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for DelayedSetAction(uint64_t a1)
{
  result = qword_27CA1CBE8;
  if (!qword_27CA1CBE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21496B1E4(uint64_t a1)
{
  sub_214949624(319);
  if (v1 <= 0x3F)
  {
    sub_21498E7C0();
    if (v2 <= 0x3F)
    {
      sub_2148F7A38();
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t sub_21496B2E8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_214899138;

  return sub_21496B5A8(a1);
}

uint64_t *sub_21496B4C0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = swift_allocObject();
  result = sub_21496AAD8(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t sub_21496B5A8(uint64_t a1)
{
  v2[10] = a1;
  v2[11] = v1;
  v3 = sub_21498F510();
  v2[12] = v3;
  v2[13] = *(v3 - 8);
  v2[14] = swift_task_alloc();
  v4 = sub_21498F540();
  v2[15] = v4;
  v2[16] = *(v4 - 8);
  v2[17] = swift_task_alloc();
  v5 = sub_21498F560();
  v2[18] = v5;
  v2[19] = *(v5 - 8);
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21496B72C, 0, 0);
}

uint64_t sub_21496B72C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A848, &qword_214993160);
  sub_21498E750();
  v1 = v0[20];
  v2 = v0[21];
  v3 = v0[18];
  v4 = v0[19];
  v5 = v0[17];
  v17 = v0[16];
  v18 = v0[15];
  v16 = v0[13];
  v13 = v0[14];
  v14 = v0[12];
  v7 = v0[10];
  v6 = v0[11];
  sub_2148FFDCC();
  v12 = sub_21498FC20();
  sub_21498F550();
  sub_21498F570();
  v15 = *(v4 + 8);
  v15(v1, v3);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = v6;
  v0[6] = sub_21496BA84;
  v0[7] = v8;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_2148A457C;
  v0[5] = &block_descriptor_10;
  v9 = _Block_copy(v0 + 2);

  sub_21498F530();
  v0[9] = MEMORY[0x277D84F90];
  sub_21496BAA4(&qword_281190D90, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C348, &qword_21499A980);
  sub_2148B4C20(&qword_281190D00, &qword_27CA1C348, &qword_21499A980, MEMORY[0x277D83970]);
  sub_21498FD60();
  MEMORY[0x216058C80](v2, v5, v13, v9);
  _Block_release(v9);

  (*(v16 + 8))(v13, v14);
  (*(v17 + 8))(v5, v18);
  v15(v2, v3);

  v10 = v0[1];

  return v10();
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_21496BAA4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_21496BAEC()
{
  result = qword_27CA1CC10;
  if (!qword_27CA1CC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1CC10);
  }

  return result;
}

unint64_t sub_21496BB54()
{
  result = qword_27CA1CC18;
  if (!qword_27CA1CC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1CC18);
  }

  return result;
}

unint64_t sub_21496BBAC()
{
  result = qword_27CA1CC20;
  if (!qword_27CA1CC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1CC20);
  }

  return result;
}

unint64_t sub_21496BC04()
{
  result = qword_27CA1CC28;
  if (!qword_27CA1CC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1CC28);
  }

  return result;
}

unint64_t sub_21496BC58(uint64_t a1, uint64_t a2)
{
  v2 = sub_21498FEF0();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_21496BCB8@<X0>(uint64_t a1@<X8>)
{
  v49 = a1;
  v1 = sub_21498F700();
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v38[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_21498E690();
  v47 = *(v4 - 8);
  v48 = v4;
  MEMORY[0x28223BE20](v4);
  v50 = &v38[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v51 = sub_21498E1B0();
  v6 = *(v51 - 8);
  v7 = MEMORY[0x28223BE20](v51);
  v45 = &v38[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v10 = &v38[-v9];
  v11 = sub_21498F6E0();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v38[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v13);
  v17 = &v38[-v16];
  sub_21498F6D0();
  v18 = [objc_opt_self() defaultManager];
  v46 = "tegoriesDisabledTimestamp";
  v19 = sub_21498F840();
  v20 = [v18 containerURLForSecurityApplicationGroupIdentifier_];

  if (v20)
  {
    v42 = v15;
    sub_21498E160();

    if (qword_281190DA0 != -1)
    {
      swift_once();
    }

    v43 = v11;
    v44 = v3;
    v21 = v48;
    v22 = __swift_project_value_buffer(v48, qword_281194E18);
    v23 = v47;
    (*(v47 + 16))(v50, v22, v21);
    v24 = *(v6 + 16);
    v25 = v45;
    v41 = v10;
    v26 = v10;
    v27 = v51;
    v24(v45, v26, v51);
    v28 = sub_21498E670();
    v29 = sub_21498FB90();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v52 = v40;
      *v30 = 136315138;
      sub_214976158(&unk_281192700, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
      v39 = v29;
      v31 = sub_214990050();
      v33 = v32;
      v34 = *(v6 + 8);
      v34(v25, v51);
      v35 = sub_2149079F4(v31, v33, &v52);
      v27 = v51;

      *(v30 + 4) = v35;
      _os_log_impl(&dword_21488E000, v28, v39, "makeMailCleanupModelConfiguration - sharedContainerURL: %s", v30, 0xCu);
      v36 = v40;
      __swift_destroy_boxed_opaque_existential_1(v40);
      MEMORY[0x216059AC0](v36, -1, -1);
      MEMORY[0x216059AC0](v30, -1, -1);

      (*(v23 + 8))(v50, v48);
    }

    else
    {

      v34 = *(v6 + 8);
      v34(v25, v27);
      (*(v23 + 8))(v50, v21);
    }

    v15 = v42;
    sub_21498F6C0();
    v34(v41, v27);
    v11 = v43;
    (*(v12 + 8))(v17, v43);
    (*(v12 + 32))(v17, v15, v11);
  }

  sub_21498F7C0();
  sub_214976104();
  sub_21498F730();
  (*(v12 + 16))(v15, v17, v11);
  sub_21498F6D0();
  sub_21498F720();
  return (*(v12 + 8))(v17, v11);
}

void *sub_21496C298@<X0>(uint64_t (*a1)(_BYTE *)@<X0>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v5 = *(a2 + 16);
  if (v5)
  {
    v7 = (a2 + 32);
    while (1)
    {
      memcpy(__dst, v7, 0x179uLL);
      memcpy(__src, v7, 0x179uLL);
      sub_2148D8FC8(__dst, v11);
      v8 = a1(__src);
      if (v3)
      {
        memcpy(v11, __src, 0x179uLL);
        return sub_2148F6AF8(v11);
      }

      if (v8)
      {
        break;
      }

      memcpy(v11, __src, 0x179uLL);
      sub_2148F6AF8(v11);
      v7 += 384;
      if (!--v5)
      {
        goto LABEL_6;
      }
    }

    memcpy(v11, __src, 0x179uLL);
    nullsub_1();
    v9 = v11;
  }

  else
  {
LABEL_6:
    sub_2148DA328(__dst);
    v9 = __dst;
  }

  return memcpy(a3, v9, 0x179uLL);
}

uint64_t sub_21496C3B4()
{
  v1 = OBJC_IVAR____TtCCC19iCloudMailAssistant32iCloudMailAssistantProviderSwift13ProviderModel9DataStore____lazy_storage___modelContext;
  v2 = *(v0 + OBJC_IVAR____TtCCC19iCloudMailAssistant32iCloudMailAssistantProviderSwift13ProviderModel9DataStore____lazy_storage___modelContext);
  v3 = v2;
  if (v2 == 1)
  {
    v3 = sub_21496C424(v0);
    v4 = *(v0 + v1);
    *(v0 + v1) = v3;

    sub_214976060(v4);
  }

  sub_2149760F4(v2);
  return v3;
}

uint64_t sub_21496C424(uint64_t a1)
{
  v2 = sub_21498E690();
  MEMORY[0x28223BE20](v2);
  sub_21498F640();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B5F0, &qword_21499DEA0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_214991720;
  v4 = type metadata accessor for MailCleanupSchemaV1.DataModel(0);
  v5 = sub_214976158(&qword_281191F50, type metadata accessor for MailCleanupSchemaV1.DataModel, &unk_214995D60);
  *(v3 + 32) = v4;
  *(v3 + 40) = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1CC50, &qword_21499DEA8);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_214991720;
  v7 = sub_21498F710();
  *(v6 + 56) = v7;
  *(v6 + 64) = sub_214976158(&qword_281190D88, MEMORY[0x277CDD500], MEMORY[0x277CDD4F8]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v6 + 32));
  (*(*(v7 - 8) + 16))(boxed_opaque_existential_1, a1 + OBJC_IVAR____TtCCC19iCloudMailAssistant32iCloudMailAssistantProviderSwift13ProviderModel9DataStore_modelConfiguration, v7);
  sub_21498F630();
  sub_21498F610();
  swift_allocObject();
  return sub_21498F620();
}

id sub_21496C7C0()
{
  v1 = OBJC_IVAR____TtCCC19iCloudMailAssistant32iCloudMailAssistantProviderSwift13ProviderModel9DataStore____lazy_storage___dataModel;
  if (*(v0 + OBJC_IVAR____TtCCC19iCloudMailAssistant32iCloudMailAssistantProviderSwift13ProviderModel9DataStore____lazy_storage___dataModel))
  {
    v2 = *(v0 + OBJC_IVAR____TtCCC19iCloudMailAssistant32iCloudMailAssistantProviderSwift13ProviderModel9DataStore____lazy_storage___dataModel);
  }

  else
  {
    v2 = sub_21496E74C();
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_21496C824(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for MailCleanupState(0);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v27 - v8;
  v10 = sub_21498E690();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281190DA0 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v10, qword_281194E18);
  (*(v11 + 16))(v13, v14, v10);
  sub_214975F78(a1, v9, type metadata accessor for MailCleanupState);
  v15 = sub_21498E670();
  v16 = sub_21498FBA0();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v28 = a1;
    v18 = v17;
    v19 = swift_slowAlloc();
    v29 = v2;
    v30 = v19;
    v20 = v19;
    *v18 = 136315138;
    sub_214975F78(v9, v7, type metadata accessor for MailCleanupState);
    v21 = sub_21498F8D0();
    v23 = v22;
    sub_214950444(v9, type metadata accessor for MailCleanupState);
    v24 = sub_2149079F4(v21, v23, &v30);

    *(v18 + 4) = v24;
    _os_log_impl(&dword_21488E000, v15, v16, "[DataStore] onStateChange(%s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v20);
    MEMORY[0x216059AC0](v20, -1, -1);
    v25 = v18;
    a1 = v28;
    MEMORY[0x216059AC0](v25, -1, -1);
  }

  else
  {

    sub_214950444(v9, type metadata accessor for MailCleanupState);
  }

  (*(v11 + 8))(v13, v10);
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_21494B028(a1);
    swift_unknownObjectRelease();
  }

  return sub_21496F778();
}

uint64_t sub_21496CB54()
{
  v1 = v0;
  v2 = type metadata accessor for MailCleanupState(0);
  v3 = (v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v27 = (v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v4);
  v7 = (v26 - v6);
  v8 = sub_21498E380();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_21496C7C0();
  sub_21498E370();
  v13 = sub_21498E360();
  v15 = v14;
  (*(v9 + 8))(v11, v8);
  v31 = v12;
  swift_getKeyPath();
  v28 = v12;
  v29 = v13;
  v30 = v15;
  v26[4] = sub_214976158(&qword_281191F48, type metadata accessor for MailCleanupSchemaV1.DataModel, &unk_214995CA4);
  sub_21498E3C0();
  v26[0] = 0;

  v16 = *(v1 + OBJC_IVAR____TtCCC19iCloudMailAssistant32iCloudMailAssistantProviderSwift13ProviderModel9DataStore____lazy_storage___dataModel);
  v26[3] = OBJC_IVAR____TtCO19iCloudMailAssistant19MailCleanupSchemaV19DataModel___observationRegistrar;
  v31 = v16;
  swift_getKeyPath();

  sub_21498E3D0();

  swift_getKeyPath();
  v26[2] = sub_214976158(&qword_281191F50, type metadata accessor for MailCleanupSchemaV1.DataModel, &unk_214995D60);
  v26[1] = sub_214976158(&qword_281192040, type metadata accessor for MailCleanupState, &protocol conformance descriptor for MailCleanupState);
  v17 = v27;
  sub_21498F6A0();

  v18 = MEMORY[0x277D84F90];
  *v7 = MEMORY[0x277D84F90];
  v19 = v3[7];
  v20 = sub_21498E320();
  v21 = *(*(v20 - 8) + 56);
  v21(v7 + v19, 1, 1, v20);
  *(v7 + v3[8]) = v18;
  *(v7 + v3[9]) = 2;
  *(v7 + v3[10]) = 2;
  *(v7 + v3[11]) = 3;
  v21(v7 + v3[12], 1, 1, v20);
  *(v7 + v3[13]) = v18;
  *(v7 + v3[14]) = v18;
  v21(v7 + v3[15], 1, 1, v20);
  v22 = v3[16];
  sub_214950444(v17, type metadata accessor for MailCleanupState);
  *(v7 + v22) = v18;
  v23 = (v7 + v3[17]);
  *v23 = 0;
  v23[1] = 0;
  v21(v7 + v3[18], 1, 1, v20);
  v31 = v16;
  swift_getKeyPath();
  sub_21498E3D0();

  swift_getKeyPath();
  sub_21498F6A0();

  LOBYTE(v20) = _s19iCloudMailAssistant0B12CleanupStateV2eeoiySbAC_ACtFZ_0(v17, v7);
  sub_214950444(v17, type metadata accessor for MailCleanupState);
  if ((v20 & 1) == 0)
  {
    sub_214975F78(v7, v17, type metadata accessor for MailCleanupState);
    v31 = v16;
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v26[-2] = v16;
    v26[-1] = v17;
    sub_21498E3C0();

    sub_214950444(v17, type metadata accessor for MailCleanupState);
    sub_2148E3F20();
  }

  return sub_214950444(v7, type metadata accessor for MailCleanupState);
}

uint64_t sub_21496D0E4(uint64_t a1, uint64_t a2)
{
  v15 = a2;
  v3 = type metadata accessor for MailCleanupState(0);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = (&v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v4);
  v8 = (&v14 - v7);
  v9 = sub_21496C7C0();
  v10 = OBJC_IVAR____TtCO19iCloudMailAssistant19MailCleanupSchemaV19DataModel___observationRegistrar;
  v16 = v9;
  swift_getKeyPath();
  v14 = sub_214976158(&qword_281191F48, type metadata accessor for MailCleanupSchemaV1.DataModel, &unk_214995CA4);
  sub_21498E3D0();

  swift_getKeyPath();
  sub_214976158(&qword_281191F50, type metadata accessor for MailCleanupSchemaV1.DataModel, &unk_214995D60);
  sub_214976158(&qword_281192040, type metadata accessor for MailCleanupState, &protocol conformance descriptor for MailCleanupState);
  sub_21498F6A0();

  sub_21496D43C(v6, a1, v15, v8);
  sub_214950444(v6, type metadata accessor for MailCleanupState);
  v16 = v9;
  swift_getKeyPath();
  v15 = v10;
  sub_21498E3D0();

  swift_getKeyPath();
  sub_21498F6A0();

  v11 = _s19iCloudMailAssistant0B12CleanupStateV2eeoiySbAC_ACtFZ_0(v6, v8);
  sub_214950444(v6, type metadata accessor for MailCleanupState);
  if (!v11)
  {
    sub_214975F78(v8, v6, type metadata accessor for MailCleanupState);
    v16 = v9;
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    *(&v14 - 2) = v9;
    *(&v14 - 1) = v6;
    sub_21498E3C0();

    sub_214950444(v6, type metadata accessor for MailCleanupState);
    sub_2148E3F20();
  }

  return sub_214950444(v8, type metadata accessor for MailCleanupState);
}

uint64_t sub_21496D43C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for MATipDismissal(0);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = (&v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10);
  v14 = (&v25 - v13);
  sub_214975F78(a1, a4, type metadata accessor for MailCleanupState);
  v15 = 0;
  v25 = *(type metadata accessor for MailCleanupState(0) + 24);
  v26 = a4;
  v16 = *(a4 + v25);
  v17 = v16[2];
  while (v17 != v15)
  {
    if (v15 >= v16[2])
    {
      __break(1u);
      goto LABEL_16;
    }

    sub_214975F78(v16 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v15, v14, type metadata accessor for MATipDismissal);
    if (*v14 == a2 && v14[1] == a3)
    {
      return sub_214950444(v14, type metadata accessor for MATipDismissal);
    }

    ++v15;
    v19 = sub_214990080();
    result = sub_214950444(v14, type metadata accessor for MATipDismissal);
    if (v19)
    {
      return result;
    }
  }

  sub_21498E310();
  *v12 = a2;
  v12[1] = a3;
  *(v12 + *(v8 + 24)) = 0;
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    goto LABEL_11;
  }

LABEL_16:
  v16 = sub_2148A9994(0, v16[2] + 1, 1, v16);
LABEL_11:
  v22 = v25;
  v21 = v26;
  v24 = v16[2];
  v23 = v16[3];
  if (v24 >= v23 >> 1)
  {
    v16 = sub_2148A9994((v23 > 1), v24 + 1, 1, v16);
  }

  v16[2] = v24 + 1;
  result = sub_214976070(v12, v16 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v24);
  *(v21 + v22) = v16;
  return result;
}

uint64_t sub_21496D6C4(char a1, char a2)
{
  *(v3 + 808) = v2;
  *(v3 + 394) = a2;
  *(v3 + 393) = a1;
  v4 = type metadata accessor for MATipDismissal(0);
  *(v3 + 816) = v4;
  *(v3 + 824) = *(v4 - 8);
  *(v3 + 832) = swift_task_alloc();
  *(v3 + 840) = swift_task_alloc();
  *(v3 + 848) = type metadata accessor for MailCleanupState(0);
  *(v3 + 856) = swift_task_alloc();
  *(v3 + 864) = swift_task_alloc();
  *(v3 + 872) = swift_task_alloc();
  v5 = sub_21498E690();
  *(v3 + 880) = v5;
  *(v3 + 888) = *(v5 - 8);
  *(v3 + 896) = swift_task_alloc();
  if (qword_281191B88 != -1)
  {
    swift_once();
  }

  v6 = qword_281194E50;
  *(v3 + 904) = qword_281194E50;

  return MEMORY[0x2822009F8](sub_21496D874, v6, 0);
}

void *sub_21496D874()
{
  v25 = v0;
  if (qword_281190DA0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 896);
  v2 = *(v0 + 888);
  v3 = *(v0 + 880);
  v4 = __swift_project_value_buffer(v3, qword_281194E18);
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_21498E670();
  v6 = sub_21498FBA0();
  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 896);
  v9 = *(v0 + 888);
  v10 = *(v0 + 880);
  if (v7)
  {
    v11 = *(v0 + 393);
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v24 = v13;
    *v12 = 136315138;
    if (v11)
    {
      v14 = 0x646563726F66;
    }

    else
    {
      v14 = 0;
    }

    if (v11)
    {
      v15 = 0xE600000000000000;
    }

    else
    {
      v15 = 0xE000000000000000;
    }

    v16 = sub_2149079F4(v14, v15, &v24);

    *(v12 + 4) = v16;
    _os_log_impl(&dword_21488E000, v5, v6, "[DataStore] sync(%s)", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x216059AC0](v13, -1, -1);
    MEMORY[0x216059AC0](v12, -1, -1);
  }

  (*(v9 + 8))(v8, v10);
  result = sub_21496C7C0();
  *(v0 + 912) = result;
  v18 = result[2];
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    result[2] = v20;
    v21 = swift_task_alloc();
    *(v0 + 920) = v21;
    *v21 = v0;
    v21[1] = sub_21496DABC;
    v22 = *(v0 + 394);
    v23 = *(v0 + 393);

    return sub_21497274C(v23, v22);
  }

  return result;
}

uint64_t sub_21496DABC()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  *(v1 + 928) = v3;
  *v3 = v2;
  v3[1] = sub_21496DC08;
  v4 = *(v1 + 394);
  v5 = *(v1 + 393);

  return sub_214971EE8(v5, v4);
}

uint64_t sub_21496DC08()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  *(v1 + 936) = v3;
  *v3 = v2;
  v3[1] = sub_21496DD54;
  v4 = *(v1 + 394);
  v5 = *(v1 + 393);

  return sub_214973180(v5, v4);
}

uint64_t sub_21496DD54()
{
  v1 = *(*v0 + 904);

  return MEMORY[0x2822009F8](sub_21496DE64, v1, 0);
}

uint64_t sub_21496DE64()
{
  v38 = v0;
  v1 = *(v0 + 872);
  v2 = *(v0 + 864);
  v35 = *(v0 + 848);
  v3 = *(*(v0 + 808) + OBJC_IVAR____TtCCC19iCloudMailAssistant32iCloudMailAssistantProviderSwift13ProviderModel9DataStore____lazy_storage___dataModel);
  *(v0 + 784) = v3;
  swift_getKeyPath();
  sub_214976158(&qword_281191F48, type metadata accessor for MailCleanupSchemaV1.DataModel, &unk_214995CA4);

  sub_21498E3D0();

  swift_getKeyPath();
  sub_214976158(&qword_281191F50, type metadata accessor for MailCleanupSchemaV1.DataModel, &unk_214995D60);
  sub_214976158(&qword_281192040, type metadata accessor for MailCleanupState, &protocol conformance descriptor for MailCleanupState);
  v33 = v3;
  sub_21498F6A0();

  sub_214975F78(v2, v1, type metadata accessor for MailCleanupState);
  v32 = v1;
  v31 = *(v35 + 24);
  v4 = *(*(v1 + v31) + 16);

  if (v4)
  {
    v6 = *(v0 + 824);
    v7 = *(v6 + 72);
    v34 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v36 = *(v0 + 816);
    v8 = v5 + v34;
    v9 = MEMORY[0x277D84F90];
    while (1)
    {
      v11 = *(v0 + 872);
      v12 = *(v0 + 840);
      sub_214975F78(v8, v12, type metadata accessor for MATipDismissal);
      v13 = *v11;
      *(swift_task_alloc() + 16) = v12;

      sub_21496C298(sub_21492610C, v13, __src);

      memcpy((v0 + 400), __src, 0x179uLL);
      memcpy((v0 + 16), __src, 0x179uLL);
      if (get_enum_tag_for_layout_string_19iCloudMailAssistant9MATipIconVSg_0(v0 + 16) == 1)
      {
        v10 = *(v0 + 840);
      }

      else
      {
        sub_21489DFCC(v0 + 400, &qword_27CA1AAB0, &qword_214993648);
        v10 = *(v0 + 840);
        if ((*(v0 + 392) & 1) != 0 && *(v10 + *(v36 + 24)) <= 2)
        {
          sub_214976070(v10, *(v0 + 832));
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_2148A9C5C(0, *(v9 + 16) + 1, 1);
          }

          v15 = *(v9 + 16);
          v14 = *(v9 + 24);
          if (v15 >= v14 >> 1)
          {
            sub_2148A9C5C((v14 > 1), v15 + 1, 1);
          }

          v16 = *(v0 + 832);
          *(v9 + 16) = v15 + 1;
          sub_214976070(v16, v9 + v34 + v15 * v7);
          goto LABEL_5;
        }
      }

      sub_214950444(v10, type metadata accessor for MATipDismissal);
LABEL_5:
      v8 += v7;
      if (!--v4)
      {
        goto LABEL_15;
      }
    }
  }

  v9 = MEMORY[0x277D84F90];
LABEL_15:
  v17 = *(v0 + 872);
  v18 = *(v0 + 864);
  v19 = *(v0 + 856);

  sub_214950444(v18, type metadata accessor for MailCleanupState);

  *(v32 + v31) = v9;
  *(v0 + 792) = v33;
  swift_getKeyPath();
  sub_21498E3D0();

  swift_getKeyPath();
  sub_21498F6A0();

  v20 = _s19iCloudMailAssistant0B12CleanupStateV2eeoiySbAC_ACtFZ_0(v19, v17);
  sub_214950444(v19, type metadata accessor for MailCleanupState);
  if (!v20)
  {
    v21 = *(v0 + 856);
    sub_214975F78(*(v0 + 872), v21, type metadata accessor for MailCleanupState);
    *(v0 + 800) = v33;
    swift_getKeyPath();
    v22 = swift_task_alloc();
    *(v22 + 16) = v33;
    *(v22 + 24) = v21;
    sub_21498E3C0();

    sub_214950444(v21, type metadata accessor for MailCleanupState);
    sub_2148E3F20();
  }

  v23 = *(v0 + 912);
  v24 = *(v0 + 872);

  result = sub_214950444(v24, type metadata accessor for MailCleanupState);
  v26 = *(v23 + 16);
  v27 = __OFSUB__(v26, 1);
  v28 = v26 - 1;
  if (v27)
  {
    __break(1u);
  }

  else
  {
    *(*(v0 + 912) + 16) = v28;
    v29 = *(v0 + 912);
    if (!v28 && *(v29 + 24) == 1)
    {
      *(v29 + 24) = 0;
      sub_2148E3F20();
    }

    v30 = *(v0 + 8);

    return v30();
  }

  return result;
}

uint64_t sub_21496E454()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1CC38, &qword_21499DE30);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v14 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1CC40, &qword_21499DE38);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v14 - v6;
  result = sub_21496C3B4();
  if (result)
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1CC48, &qword_21499DE40);
    (*(*(v9 - 8) + 56))(v3, 1, 1, v9);
    type metadata accessor for MailCleanupSchemaV1.DataModel(0);
    sub_214976158(&qword_281191F50, type metadata accessor for MailCleanupSchemaV1.DataModel, &unk_214995D60);
    sub_21498F650();
    v10 = sub_21498F5E0();
    (*(v5 + 8))(v7, v4);
    v14[0] = v0;
    if (v10 >> 62)
    {
      goto LABEL_14;
    }

    for (i = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_21498FE90())
    {
      v12 = 0;
      while ((v10 & 0xC000000000000001) != 0)
      {
        MEMORY[0x216058EB0](v12, v10);
        v13 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          goto LABEL_12;
        }

LABEL_8:
        sub_21498F5F0();

        ++v12;
        if (v13 == i)
        {
          goto LABEL_15;
        }
      }

      if (v12 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v13 = v12 + 1;
      if (!__OFADD__(v12, 1))
      {
        goto LABEL_8;
      }

LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      ;
    }

LABEL_15:

    sub_21496F778();
  }

  return result;
}

id sub_21496E74C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA1B600, &qword_214995ED8);
  MEMORY[0x28223BE20](v2 - 8);
  v93 = &v85 - v3;
  v4 = sub_21498E690();
  v5 = *(v4 - 8);
  v102 = v4;
  v103 = v5;
  v6 = MEMORY[0x28223BE20](v4);
  v7 = MEMORY[0x28223BE20](v6);
  v97 = &v85 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v94 = &v85 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v95 = &v85 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v91 = &v85 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v92 = &v85 - v16;
  MEMORY[0x28223BE20](v15);
  v96 = &v85 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1CC38, &qword_21499DE30);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v85 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1CC40, &qword_21499DE38);
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = &v85 - v23;
  v25 = sub_21498E380();
  v26 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v28 = &v85 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [*(*__swift_project_boxed_opaque_existential_1((v1 + 16) *(v1 + 40)) + 40)];
  if (result)
  {
    v30 = result;
    v99 = sub_21498F870();
    v100 = v31;

    sub_21498E370();
    v98 = sub_21498E360();
    v33 = v32;
    (*(v26 + 8))(v28, v25);
    v34 = sub_21496C3B4();
    v35 = v1;
    v101 = v33;
    if (!v34)
    {
LABEL_9:
      type metadata accessor for MailCleanupSchemaV1.DataModel(0);
      swift_allocObject();
      v47 = v100;

      v48 = sub_2148E5368(v99, v47, v98, v33, v35, &off_2826CCA70);

      if (qword_281190DA0 != -1)
      {
        swift_once();
      }

      v49 = v102;
      v50 = __swift_project_value_buffer(v102, qword_281194E18);
      v51 = v103;
      v52 = v97;
      (*(v103 + 16))(v97, v50, v49);
      v53 = sub_21498E670();
      v54 = sub_21498FBA0();
      if (os_log_type_enabled(v53, v54))
      {
        v55 = swift_slowAlloc();
        *v55 = 0;
        _os_log_impl(&dword_21488E000, v53, v54, "[DataStore] inserting newly created model", v55, 2u);
        MEMORY[0x216059AC0](v55, -1, -1);
      }

      (*(v51 + 8))(v52, v49);
      v56 = *(v35 + OBJC_IVAR____TtCCC19iCloudMailAssistant32iCloudMailAssistantProviderSwift13ProviderModel9DataStore____lazy_storage___modelContext);
      if (v56)
      {
        sub_214976158(&qword_281191F50, type metadata accessor for MailCleanupSchemaV1.DataModel, &unk_214995D60);

        sub_21498F600();
        sub_214976060(v56);
      }

      return v48;
    }

    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1CC48, &qword_21499DE40);
    (*(*(v36 - 8) + 56))(v20, 1, 1, v36);
    type metadata accessor for MailCleanupSchemaV1.DataModel(0);
    v37 = sub_214976158(&qword_281191F50, type metadata accessor for MailCleanupSchemaV1.DataModel, &unk_214995D60);
    sub_21498F650();
    v38 = sub_21498F5E0();
    (*(v22 + 8))(v24, v21);

    if (qword_281190DA0 != -1)
    {
      swift_once();
    }

    v39 = v102;
    v40 = __swift_project_value_buffer(v102, qword_281194E18);
    v41 = *(v103 + 16);
    v90 = v40;
    v41(v96);

    v42 = sub_21498E670();
    v43 = sub_21498FBA0();
    v44 = os_log_type_enabled(v42, v43);
    v33 = v101;
    v88 = v37;
    v89 = v38 >> 62;
    if (v44)
    {
      v45 = swift_slowAlloc();
      *v45 = 134217984;
      if (v38 >> 62)
      {
        v46 = sub_21498FE90();
        v39 = v102;
      }

      else
      {
        v46 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v45 + 4) = v46;

      _os_log_impl(&dword_21488E000, v42, v43, "[DataStore] Total Cached Models %ld", v45, 0xCu);
      MEMORY[0x216059AC0](v45, -1, -1);

      v33 = v101;
    }

    else
    {
    }

    v58 = (v103 + 8);
    v57 = *(v103 + 8);
    result = v57(v96, v39);
    v87 = v41;
    if (v89)
    {
      v84 = v35;
      if (sub_21498FE90() != 1)
      {
LABEL_48:
        v96 = v58;
        v69 = sub_21498FE90();
        v35 = v84;
LABEL_36:

        if (v69)
        {
          (v41)(v95, v90, v39);
          v70 = sub_21498E670();
          v71 = sub_21498FBA0();
          if (os_log_type_enabled(v70, v71))
          {
            v72 = v57;
            v73 = swift_slowAlloc();
            *v73 = 0;
            _os_log_impl(&dword_21488E000, v70, v71, "[DataStore] Cache does not match user id and locale. Clearing...", v73, 2u);
            v74 = v73;
            v57 = v72;
            MEMORY[0x216059AC0](v74, -1, -1);
          }

          v57(v95, v39);
          sub_21496E454();
          v75 = v94;
          v87(v94, v90, v39);
          v76 = sub_21498E670();
          v77 = sub_21498FBA0();
          if (os_log_type_enabled(v76, v77))
          {
            v78 = v57;
            v79 = swift_slowAlloc();
            *v79 = 0;
            _os_log_impl(&dword_21488E000, v76, v77, "[DataStore] Cleared", v79, 2u);
            MEMORY[0x216059AC0](v79, -1, -1);

            v78(v75, v39);
            goto LABEL_9;
          }
        }

        else
        {
          v80 = v41;
          v75 = v91;
          v80(v91, v90, v39);
          v76 = sub_21498E670();
          v81 = sub_21498FBA0();
          if (os_log_type_enabled(v76, v81))
          {
            v82 = v57;
            v83 = swift_slowAlloc();
            *v83 = 0;
            _os_log_impl(&dword_21488E000, v76, v81, "[DataStore] Cache is empty", v83, 2u);
            MEMORY[0x216059AC0](v83, -1, -1);

            v82(v75, v39);
            goto LABEL_9;
          }
        }

        v57(v75, v39);
        goto LABEL_9;
      }

      result = sub_21498FE90();
      if (!result)
      {
LABEL_47:
        v84 = v35;
        goto LABEL_48;
      }
    }

    else if (*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10) != 1)
    {
LABEL_35:
      v96 = v58;
      v69 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_36;
    }

    v86 = v57;
    if ((v38 & 0xC000000000000001) != 0)
    {
      v48 = MEMORY[0x216058EB0](0, v38);
      goto LABEL_23;
    }

    if (*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v48 = *(v38 + 32);

LABEL_23:
      v59 = OBJC_IVAR____TtCO19iCloudMailAssistant19MailCleanupSchemaV19DataModel___observationRegistrar;
      v104 = v48;
      swift_getKeyPath();
      sub_214976158(&qword_281191F48, type metadata accessor for MailCleanupSchemaV1.DataModel, &unk_214995CA4);
      v96 = v59;
      sub_21498E3D0();

      swift_getKeyPath();
      sub_21498F6A0();

      if (v104 == v99 && v105 == v100)
      {
      }

      else
      {
        v60 = sub_214990080();

        if ((v60 & 1) == 0)
        {
          goto LABEL_34;
        }
      }

      v104 = v48;
      swift_getKeyPath();
      sub_21498E3D0();

      swift_getKeyPath();
      sub_21498F6A0();

      if (v104 == v98 && v105 == v101)
      {

LABEL_31:

        v62 = v92;
        v87(v92, v90, v39);
        v63 = sub_21498E670();
        v64 = sub_21498FBA0();
        if (os_log_type_enabled(v63, v64))
        {
          v65 = swift_slowAlloc();
          *v65 = 0;
          _os_log_impl(&dword_21488E000, v63, v64, "[DataStore] Found cached model", v65, 2u);
          MEMORY[0x216059AC0](v65, -1, -1);
        }

        v86(v62, v39);
        *(v48 + 40) = &off_2826CCA70;
        swift_unknownObjectWeakAssign();
        swift_retain_n();

        v104 = v48;
        swift_getKeyPath();
        sub_21498E3D0();

        swift_getKeyPath();
        sub_214976158(&qword_281192040, type metadata accessor for MailCleanupState, &protocol conformance descriptor for MailCleanupState);
        v66 = v93;
        sub_21498F6A0();

        v67 = type metadata accessor for MailCleanupState(0);
        (*(*(v67 - 8) + 56))(v66, 0, 1, v67);
        v68 = OBJC_IVAR____TtCO19iCloudMailAssistant19MailCleanupSchemaV19DataModel_persistedState;
        swift_beginAccess();
        sub_214975FF0(v66, v48 + v68);
        swift_endAccess();

        return v48;
      }

      v61 = sub_214990080();

      if (v61)
      {
        goto LABEL_31;
      }

LABEL_34:

      v33 = v101;
      v57 = v86;
      v41 = v87;
      if (!v89)
      {
        goto LABEL_35;
      }

      goto LABEL_47;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_21496F778()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA1B600, &qword_214995ED8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v18 - v3;
  v5 = sub_21498E690();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281190DA0 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v5, qword_281194E18);
  (*(v6 + 16))(v8, v9, v5);
  v10 = sub_21498E670();
  v11 = sub_21498FBA0();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_21488E000, v10, v11, "[DataStore] saving...", v12, 2u);
    MEMORY[0x216059AC0](v12, -1, -1);
  }

  (*(v6 + 8))(v8, v5);
  sub_21496C7C0();
  v13 = sub_2148E3404();

  if (v13)
  {
    if (sub_21496C3B4())
    {
      sub_21498F5D0();
    }

    v18[0] = *(v1 + OBJC_IVAR____TtCCC19iCloudMailAssistant32iCloudMailAssistantProviderSwift13ProviderModel9DataStore____lazy_storage___dataModel);
    v15 = v18[0];
    swift_getKeyPath();
    sub_214976158(&qword_281191F48, type metadata accessor for MailCleanupSchemaV1.DataModel, &unk_214995CA4);

    sub_21498E3D0();

    swift_getKeyPath();
    sub_214976158(&qword_281191F50, type metadata accessor for MailCleanupSchemaV1.DataModel, &unk_214995D60);
    sub_214976158(&qword_281192040, type metadata accessor for MailCleanupState, &protocol conformance descriptor for MailCleanupState);
    sub_21498F6A0();

    v16 = type metadata accessor for MailCleanupState(0);
    (*(*(v16 - 8) + 56))(v4, 0, 1, v16);
    v17 = OBJC_IVAR____TtCO19iCloudMailAssistant19MailCleanupSchemaV19DataModel_persistedState;
    swift_beginAccess();
    sub_214975FF0(v4, v15 + v17);
    swift_endAccess();
  }

  return result;
}

uint64_t sub_21496FB38()
{
  v1[16] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1ABA0, &qword_214993E20);
  v1[17] = swift_task_alloc();
  v2 = sub_21498E320();
  v1[18] = v2;
  v1[19] = *(v2 - 8);
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v3 = sub_21498E690();
  v1[23] = v3;
  v1[24] = *(v3 - 8);
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  if (qword_281191B88 != -1)
  {
    swift_once();
  }

  v4 = qword_281194E50;
  v1[28] = qword_281194E50;

  return MEMORY[0x2822009F8](sub_21496FCF4, v4, 0);
}

uint64_t sub_21496FCF4()
{
  if (qword_281190DA0 != -1)
  {
    swift_once();
  }

  v1 = v0[27];
  v2 = v0[23];
  v3 = v0[24];
  v4 = __swift_project_value_buffer(v2, qword_281194E18);
  v0[29] = v4;
  v5 = *(v3 + 16);
  v0[30] = v5;
  v0[31] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v2);
  v6 = sub_21498E670();
  v7 = sub_21498FBA0();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_21488E000, v6, v7, "[DataStore] loadTipsAndDashboardEntrypointInfo()", v8, 2u);
    MEMORY[0x216059AC0](v8, -1, -1);
  }

  v9 = v0[27];
  v10 = v0[23];
  v11 = v0[24];
  v12 = v0[16];

  v13 = *(v11 + 8);
  v0[32] = v13;
  v13(v9, v10);
  sub_21498E310();
  __swift_project_boxed_opaque_existential_1((v12 + 16), *(v12 + 40));
  v14 = swift_task_alloc();
  v0[33] = v14;
  *v14 = v0;
  v14[1] = sub_21496FEC0;

  return sub_214937B00((v0 + 2), 1);
}

uint64_t sub_21496FEC0()
{
  v2 = *v1;
  *(*v1 + 272) = v0;

  v3 = *(v2 + 224);
  if (v0)
  {
    v4 = sub_214970438;
  }

  else
  {
    v4 = sub_21496FFEC;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_21496FFEC()
{
  v41 = v0;
  v1 = v0;
  (*(v0 + 240))(*(v0 + 208), *(v0 + 232), *(v0 + 184));
  v2 = v0 + 16;
  v3 = *(v2 + 24);
  *(v2 + 48) = *(v2 + 8);
  *(v2 + 64) = v3;

  sub_2148AA824(v2 + 48, v2 + 80, &qword_27CA1AB18, &unk_21499A610);
  sub_2148AA824(v2 + 64, v2 + 96, &qword_27CA1AB18, &unk_21499A610);
  v4 = sub_21498E670();
  v5 = sub_21498FBA0();

  sub_21489DFCC(v2 + 48, &qword_27CA1AB18, &unk_21499A610);
  sub_21489DFCC(v2 + 64, &qword_27CA1AB18, &unk_21499A610);
  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v2 + 240);
  v8 = v1[26];
  v9 = v1[23];
  if (v6)
  {
    v39 = v1[26];
    v10 = swift_slowAlloc();
    v38 = v9;
    v11 = swift_slowAlloc();
    v40 = v11;
    *v10 = 136315138;

    v37 = v7;
    v13 = MEMORY[0x216058A90](v12, &type metadata for MATip);
    v15 = v14;

    v16 = sub_2149079F4(v13, v15, &v40);

    *(v10 + 4) = v16;
    _os_log_impl(&dword_21488E000, v4, v5, "[DataStore] loadTipsAndDashboardEntrypointInfo - got: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x216059AC0](v11, -1, -1);
    MEMORY[0x216059AC0](v10, -1, -1);

    v37(v39, v38);
  }

  else
  {

    v7(v8, v9);
  }

  v17 = v1[22];
  v18 = v1[18];
  v19 = v1[19];
  v21 = v1[16];
  v20 = v1[17];
  sub_21496C7C0();
  v22 = swift_task_alloc();
  *(v22 + 16) = v2;
  *(v22 + 24) = v17;
  sub_2148E3C1C(sub_214975FE8, v22);

  sub_21489DFCC(v2 + 48, &qword_27CA1AB18, &unk_21499A610);
  sub_21489DFCC(v2 + 64, &qword_27CA1AB18, &unk_21499A610);

  v23 = *(v21 + 72);
  sub_214976218(v20);
  if ((*(v19 + 48))(v20, 1, v18) == 1)
  {
    sub_21489DFCC(v1[17], &qword_27CA1ABA0, &qword_214993E20);
  }

  else
  {
    v24 = v1[20];
    v26 = v1[18];
    v25 = v1[19];
    (*(v25 + 32))(v1[21], v1[17], v26);
    sub_21498E310();
    v27 = sub_21498E2C0();
    v28 = *(v25 + 8);
    v28(v24, v26);
    if (v27)
    {
      v29 = v1[21];
      v30 = v1[18];
      v31 = sub_21498E2B0();
      v32 = sub_21498F840();
      [v23 setValue:v31 forKey:v32];

      v33 = v29;
      v34 = v30;
    }

    else
    {
      v33 = v1[21];
      v34 = v1[18];
    }

    v28(v33, v34);
  }

  (*(v1[19] + 8))(v1[22], v1[18]);

  v35 = v1[1];

  return v35();
}

uint64_t sub_214970438()
{
  v1 = *(v0 + 272);
  (*(v0 + 240))(*(v0 + 200), *(v0 + 232), *(v0 + 184));
  v2 = v1;
  v3 = sub_21498E670();
  v4 = sub_21498FBB0();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 272);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_21488E000, v3, v4, "[DataStore] loadTipsAndDashboardEntrypointInfo - error: %@", v7, 0xCu);
    sub_21489DFCC(v8, &qword_27CA1A8F8, &unk_2149938A0);
    MEMORY[0x216059AC0](v8, -1, -1);
    MEMORY[0x216059AC0](v7, -1, -1);
  }

  else
  {
  }

  (*(v0 + 256))(*(v0 + 200), *(v0 + 184));
  (*(*(v0 + 152) + 8))(*(v0 + 176), *(v0 + 144));

  v11 = *(v0 + 8);

  return v11();
}

double sub_214970630@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  sub_214975F78(a1, a4, type metadata accessor for MailCleanupState);
  v7 = *a2;

  *a4 = v7;
  v8 = type metadata accessor for MailCleanupState(0);
  v9 = v8[5];
  sub_21489DFCC(&a4[v9], &qword_27CA1ABA0, &qword_214993E20);
  v10 = sub_21498E320();
  v11 = *(v10 - 8);
  v12 = *(v11 + 16);
  v12(&a4[v9], a3, v10);
  v13 = *(v11 + 56);
  v13(&a4[v9], 0, 1, v10);
  v14 = v8[16];
  sub_21489DFCC(&a4[v14], &qword_27CA1ABA0, &qword_214993E20);
  v12(&a4[v14], a3, v10);
  v13(&a4[v14], 0, 1, v10);
  v18 = *(a2 + 3);
  v15 = &a4[v8[15]];
  sub_2148AA824(&v18, &v17, &qword_27CA1AB18, &unk_21499A610);

  result = *&v18;
  *v15 = v18;
  return result;
}

uint64_t sub_2149707E4()
{
  v1[2] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1ABA0, &qword_214993E20);
  v1[3] = swift_task_alloc();
  v2 = sub_21498E320();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v3 = sub_21498E690();
  v1[8] = v3;
  v1[9] = *(v3 - 8);
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  if (qword_281191B88 != -1)
  {
    swift_once();
  }

  v4 = qword_281194E50;
  v1[12] = qword_281194E50;

  return MEMORY[0x2822009F8](sub_214970988, v4, 0);
}

uint64_t sub_214970988()
{
  if (qword_281190DA0 != -1)
  {
    swift_once();
  }

  v1 = v0[11];
  v2 = v0[8];
  v3 = v0[9];
  v4 = __swift_project_value_buffer(v2, qword_281194E18);
  v0[13] = v4;
  v5 = *(v3 + 16);
  v0[14] = v5;
  v0[15] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v2);
  v6 = sub_21498E670();
  v7 = sub_21498FBA0();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_21488E000, v6, v7, "[DataStore] loadBlockAndAutomationRules()", v8, 2u);
    MEMORY[0x216059AC0](v8, -1, -1);
  }

  v9 = v0[11];
  v10 = v0[8];
  v11 = v0[9];
  v12 = v0[2];

  v13 = *(v11 + 8);
  v0[16] = v13;
  v13(v9, v10);
  sub_21498E310();
  __swift_project_boxed_opaque_existential_1((v12 + 16), *(v12 + 40));
  v14 = swift_task_alloc();
  v0[17] = v14;
  *v14 = v0;
  v14[1] = sub_214970B54;

  return sub_214933DA0(&unk_2826C4430);
}

uint64_t sub_214970B54(uint64_t a1)
{
  v4 = *v2;
  v4[18] = v1;

  v5 = v4[12];
  if (v1)
  {
    v6 = sub_214970EB8;
  }

  else
  {
    v4[19] = a1;
    v6 = sub_214970C90;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_214970C90()
{
  v1 = v0[19];
  v2 = v0[7];
  v3 = v0[4];
  v4 = v0[5];
  v6 = v0[2];
  v5 = v0[3];
  sub_21496C7C0();
  v7 = swift_task_alloc();
  *(v7 + 16) = v1;
  *(v7 + 24) = v2;
  sub_2148E3C1C(sub_214975FE0, v7);

  v8 = *(v6 + 72);
  sub_214976374(v5);
  if ((*(v4 + 48))(v5, 1, v3) == 1)
  {
    v9 = v0[5];
    sub_21489DFCC(v0[3], &qword_27CA1ABA0, &qword_214993E20);
    v10 = *(v9 + 8);
  }

  else
  {
    (*(v0[5] + 32))(v0[6], v0[3], v0[4]);
    if (sub_21498E2C0())
    {
      v11 = v0[6];
      v12 = v0[4];
      v13 = v0[5];
      v14 = sub_21498E2B0();
      v15 = sub_21498F840();
      [v8 setValue:v14 forKey:v15];

      v10 = *(v13 + 8);
      v10(v11, v12);
    }

    else
    {
      v10 = *(v0[5] + 8);
      v10(v0[6], v0[4]);
    }
  }

  v10(v0[7], v0[4]);

  v16 = v0[1];

  return v16();
}

uint64_t sub_214970EB8()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 112);
  v3 = *(v0 + 104);
  v4 = *(v0 + 80);
  v5 = *(v0 + 64);
  (*(*(v0 + 40) + 8))(*(v0 + 56), *(v0 + 32));
  v2(v4, v3, v5);
  v6 = v1;
  v7 = sub_21498E670();
  v8 = sub_21498FBA0();

  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 144);
  if (v9)
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    v13 = v10;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 4) = v14;
    *v12 = v14;
    _os_log_impl(&dword_21488E000, v7, v8, "[DataStore] loadBlockAndAutomationRules - error: %@", v11, 0xCu);
    sub_21489DFCC(v12, &qword_27CA1A8F8, &unk_2149938A0);
    MEMORY[0x216059AC0](v12, -1, -1);
    MEMORY[0x216059AC0](v11, -1, -1);
  }

  else
  {
  }

  (*(v0 + 128))(*(v0 + 80), *(v0 + 64));

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_21497109C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  result = sub_214975F78(a1, a4, type metadata accessor for MailCleanupState);
  v6 = *(a2 + 16);
  v46 = a2;
  if (v6)
  {
    v7 = 0;
    v8 = a2 + 32;
    v9 = MEMORY[0x277D84F90];
    v48 = a2 + 32;
    do
    {
      v10 = (v8 + 112 * v7);
      v11 = v7;
      while (1)
      {
        if (v11 >= v6)
        {
          __break(1u);
LABEL_39:
          __break(1u);
          goto LABEL_40;
        }

        v12 = v10[5];
        v57 = v10[4];
        v58 = v12;
        v59 = v10[6];
        v13 = v10[1];
        v53 = *v10;
        v54 = v13;
        v14 = v10[3];
        v55 = v10[2];
        v56 = v14;
        v7 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          goto LABEL_39;
        }

        if (v55 && v55 != 2)
        {
          break;
        }

        v15 = sub_214990080();
        sub_2148D9164(&v53, v52);

        if (v15)
        {
          goto LABEL_12;
        }

        result = sub_2149504C4(&v53);
        ++v11;
        v10 += 7;
        if (v7 == v6)
        {
          goto LABEL_19;
        }
      }

      sub_2148D9164(&v53, v52);

LABEL_12:
      result = swift_isUniquelyReferenced_nonNull_native();
      v60 = v9;
      if ((result & 1) == 0)
      {
        result = sub_2148A9D20(0, *(v9 + 16) + 1, 1);
        v9 = v60;
      }

      v17 = *(v9 + 16);
      v16 = *(v9 + 24);
      if (v17 >= v16 >> 1)
      {
        result = sub_2148A9D20((v16 > 1), v17 + 1, 1);
        v9 = v60;
      }

      *(v9 + 16) = v17 + 1;
      v18 = (v9 + 112 * v17);
      v19 = v53;
      v20 = v55;
      v18[3] = v54;
      v18[4] = v20;
      v18[2] = v19;
      v21 = v56;
      v22 = v57;
      v23 = v59;
      v18[7] = v58;
      v18[8] = v23;
      v18[5] = v21;
      v18[6] = v22;
      v8 = v48;
    }

    while (v7 != v6);
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

LABEL_19:
  v49 = type metadata accessor for MailCleanupState(0);
  v24 = v49[11];

  *(a4 + v24) = v9;
  if (v6)
  {
    v25 = 0;
    v26 = v46 + 32;
    v27 = MEMORY[0x277D84F90];
    v47 = v46 + 32;
LABEL_21:
    v28 = (v26 + 112 * v25);
    v29 = v25;
    while (v29 < v6)
    {
      v30 = v28[5];
      v57 = v28[4];
      v58 = v30;
      v59 = v28[6];
      v31 = v28[1];
      v53 = *v28;
      v54 = v31;
      v32 = v28[3];
      v55 = v28[2];
      v56 = v32;
      v25 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        goto LABEL_41;
      }

      if (v55 && v55 != 1)
      {
        sub_2148D9164(&v53, v52);

LABEL_30:
        result = swift_isUniquelyReferenced_nonNull_native();
        v60 = v27;
        if ((result & 1) == 0)
        {
          result = sub_2148A9D20(0, *(v27 + 16) + 1, 1);
          v27 = v60;
        }

        v35 = *(v27 + 16);
        v34 = *(v27 + 24);
        if (v35 >= v34 >> 1)
        {
          result = sub_2148A9D20((v34 > 1), v35 + 1, 1);
          v27 = v60;
        }

        *(v27 + 16) = v35 + 1;
        v36 = (v27 + 112 * v35);
        v37 = v53;
        v38 = v55;
        v36[3] = v54;
        v36[4] = v38;
        v36[2] = v37;
        v39 = v56;
        v40 = v57;
        v41 = v59;
        v36[7] = v58;
        v36[8] = v41;
        v36[5] = v39;
        v36[6] = v40;
        v26 = v47;
        if (v25 != v6)
        {
          goto LABEL_21;
        }

        goto LABEL_37;
      }

      v33 = sub_214990080();
      sub_2148D9164(&v53, v52);

      if (v33)
      {
        goto LABEL_30;
      }

      result = sub_2149504C4(&v53);
      ++v29;
      v28 += 7;
      if (v25 == v6)
      {
        goto LABEL_37;
      }
    }

LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
  }

  else
  {
    v27 = MEMORY[0x277D84F90];
LABEL_37:
    v42 = v49[12];

    *(a4 + v42) = v27;
    v43 = v49[13];
    sub_21489DFCC(a4 + v43, &qword_27CA1ABA0, &qword_214993E20);
    v44 = sub_21498E320();
    v45 = *(v44 - 8);
    (*(v45 + 16))(a4 + v43, a3, v44);
    return (*(v45 + 56))(a4 + v43, 0, 1, v44);
  }

  return result;
}

uint64_t sub_214971514()
{
  v1[9] = v0;
  v2 = sub_21498E690();
  v1[10] = v2;
  v1[11] = *(v2 - 8);
  v1[12] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1ABA0, &qword_214993E20);
  v1[13] = swift_task_alloc();
  v3 = sub_21498E320();
  v1[14] = v3;
  v1[15] = *(v3 - 8);
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  if (qword_281191B88 != -1)
  {
    swift_once();
  }

  v4 = qword_281194E50;
  v1[18] = qword_281194E50;

  return MEMORY[0x2822009F8](sub_2149716AC, v4, 0);
}

uint64_t sub_2149716AC(uint64_t a1)
{
  v2 = *(v1 + 72);
  sub_21498E310();
  __swift_project_boxed_opaque_existential_1((v2 + 16), *(v2 + 40));
  v3 = swift_task_alloc();
  *(v1 + 152) = v3;
  *v3 = v1;
  v3[1] = sub_21497175C;

  return sub_21493A124(v1 + 16);
}

uint64_t sub_21497175C()
{
  v2 = *v1;
  *(*v1 + 160) = v0;

  v3 = *(v2 + 144);
  if (v0)
  {
    v4 = sub_214971AAC;
  }

  else
  {
    v4 = sub_214971888;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_214971888()
{
  v1 = v0[17];
  v2 = v0[14];
  v3 = v0[15];
  v4 = v0[13];
  v5 = v0[9];
  sub_21496C7C0();
  v6 = swift_task_alloc();
  *(v6 + 16) = v0 + 2;
  *(v6 + 24) = v1;
  sub_2148E3C1C(sub_214975F70, v6);
  sub_21492BB98((v0 + 2));

  v7 = *(v5 + 72);
  sub_21497620C(v4);
  if ((*(v3 + 48))(v4, 1, v2) == 1)
  {
    v8 = v0[15];
    sub_21489DFCC(v0[13], &qword_27CA1ABA0, &qword_214993E20);
    v9 = *(v8 + 8);
  }

  else
  {
    (*(v0[15] + 32))(v0[16], v0[13], v0[14]);
    if (sub_21498E2C0())
    {
      v10 = v0[16];
      v11 = v0[14];
      v12 = v0[15];
      v13 = sub_21498E2B0();
      v14 = sub_21498F840();
      [v7 setValue:v13 forKey:v14];

      v9 = *(v12 + 8);
      v9(v10, v11);
    }

    else
    {
      v9 = *(v0[15] + 8);
      v9(v0[16], v0[14]);
    }
  }

  v9(v0[17], v0[14]);

  v15 = v0[1];

  return v15();
}

uint64_t sub_214971AAC()
{
  (*(v0[15] + 8))(v0[17], v0[14]);
  if (qword_281190DA0 != -1)
  {
    swift_once();
  }

  v1 = v0[20];
  v3 = v0[11];
  v2 = v0[12];
  v4 = v0[10];
  v5 = __swift_project_value_buffer(v4, qword_281194E18);
  (*(v3 + 16))(v2, v5, v4);
  v6 = v1;
  v7 = sub_21498E670();
  v8 = sub_21498FBA0();

  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[20];
  if (v9)
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    v13 = v10;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 4) = v14;
    *v12 = v14;
    _os_log_impl(&dword_21488E000, v7, v8, "[DataStore] loadPreferences - error: %@", v11, 0xCu);
    sub_21489DFCC(v12, &qword_27CA1A8F8, &unk_2149938A0);
    MEMORY[0x216059AC0](v12, -1, -1);
    MEMORY[0x216059AC0](v11, -1, -1);
  }

  else
  {
  }

  (*(v0[11] + 8))(v0[12], v0[10]);

  v15 = v0[1];

  return v15();
}

uint64_t sub_214971CC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_214975F78(a1, a4, type metadata accessor for MailCleanupState);
  v7 = *(a2 + 8);
  v8 = *(a2 + 32);
  v9 = *(a2 + 48);
  if (v7 == 1 || v8 == 0)
  {
    *(a4 + *(type metadata accessor for MailCleanupState(0) + 36)) = 0;
    if (v7 == 1 || v9 == 2)
    {
LABEL_19:
      v12 = type metadata accessor for MailCleanupState(0);
      v14 = 1;
      *(a4 + v12[7]) = 1;
      goto LABEL_21;
    }
  }

  else
  {
    v15 = *(a2 + 24);
    v16 = v15 == 0x6465747065636341 && v8 == 0xE800000000000000;
    if (v16 || (sub_214990080() & 1) != 0)
    {
      v17 = 1;
    }

    else
    {
      v17 = 2;
      if (v15 != 0x64656E696C636544 || v8 != 0xE800000000000000)
      {
        if (sub_214990080())
        {
          v17 = 2;
        }

        else
        {
          v17 = 3;
        }
      }
    }

    *(a4 + *(type metadata accessor for MailCleanupState(0) + 36)) = v17;
    if (v9 == 2)
    {
      goto LABEL_19;
    }
  }

  v12 = type metadata accessor for MailCleanupState(0);
  v13 = v12[7];
  v14 = 0;
  *(a4 + v13) = (v9 & 1) != 0;
LABEL_21:
  *(a4 + v12[8]) = v14;
  type metadata accessor for MailCleanupState(0);
  v18 = v12[10];
  sub_21489DFCC(a4 + v18, &qword_27CA1ABA0, &qword_214993E20);
  v19 = sub_21498E320();
  v22 = *(v19 - 8);
  (*(v22 + 16))(a4 + v18, a3, v19);
  v20 = *(v22 + 56);

  return v20(a4 + v18, 0, 1, v19);
}

uint64_t sub_214971EE8(char a1, char a2)
{
  *(v3 + 24) = v2;
  *(v3 + 105) = a2;
  *(v3 + 104) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1ABA0, &qword_214993E20);
  *(v3 + 32) = swift_task_alloc();
  *(v3 + 40) = swift_task_alloc();
  *(v3 + 48) = type metadata accessor for MailCleanupState(0);
  *(v3 + 56) = swift_task_alloc();
  v4 = sub_21498E690();
  *(v3 + 64) = v4;
  *(v3 + 72) = *(v4 - 8);
  *(v3 + 80) = swift_task_alloc();
  *(v3 + 88) = swift_task_alloc();
  if (qword_281191B88 != -1)
  {
    swift_once();
  }

  v5 = qword_281194E50;

  return MEMORY[0x2822009F8](sub_214972064, v5, 0);
}

uint64_t sub_214972064()
{
  v37 = v0;
  if (qword_281190DA0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 88);
  v2 = *(v0 + 72);
  v31 = __swift_project_value_buffer(*(v0 + 64), qword_281194E18);
  v30 = *(v2 + 16);
  v30(v1);
  v3 = sub_21498E670();
  v4 = sub_21498FBA0();
  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 88);
  v8 = *(v0 + 64);
  v7 = *(v0 + 72);
  if (v5)
  {
    v9 = *(v0 + 104);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v36 = v11;
    *v10 = 136315138;
    if (v9)
    {
      v12 = 0x646563726F66;
    }

    else
    {
      v12 = 0;
    }

    if (v9)
    {
      v13 = 0xE600000000000000;
    }

    else
    {
      v13 = 0xE000000000000000;
    }

    v14 = sub_2149079F4(v12, v13, &v36);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_21488E000, v3, v4, "[DataStore] syncBlockRules(%s)", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x216059AC0](v11, -1, -1);
    MEMORY[0x216059AC0](v10, -1, -1);
  }

  v29 = *(v7 + 8);
  v29(v6, v8);
  if (*(v0 + 105) == 1)
  {
    __swift_project_boxed_opaque_existential_1((*(v0 + 24) + 16), *(*(v0 + 24) + 40));
    v35 = sub_21493B060(0xD00000000000003ELL, 0x80000002149A3670);
    v15 = *(v0 + 105) ^ 1;
  }

  else
  {
    v35 = 0;
    v15 = 1;
  }

  v34 = v15;
  v16 = *(v0 + 56);
  v32 = *(v0 + 48);
  v18 = *(v0 + 32);
  v17 = *(v0 + 40);
  v33 = *(v0 + 104);
  *(v0 + 16) = sub_21496C7C0();
  swift_getKeyPath();
  sub_214976158(&qword_281191F48, type metadata accessor for MailCleanupSchemaV1.DataModel, &unk_214995CA4);
  sub_21498E3D0();

  swift_getKeyPath();
  sub_214976158(&qword_281191F50, type metadata accessor for MailCleanupSchemaV1.DataModel, &unk_214995D60);
  sub_214976158(&qword_281192040, type metadata accessor for MailCleanupState, &protocol conformance descriptor for MailCleanupState);
  sub_21498F6A0();

  sub_2148AA824(v16 + *(v32 + 52), v17, &qword_27CA1ABA0, &qword_214993E20);
  sub_214950444(v16, type metadata accessor for MailCleanupState);
  sub_214976374(v18);
  v19 = sub_214974D58(v33, v35, v34 & 1, v17, v18, 0);
  sub_21489DFCC(v18, &qword_27CA1ABA0, &qword_214993E20);
  sub_21489DFCC(v17, &qword_27CA1ABA0, &qword_214993E20);
  if (v19)
  {
    v20 = swift_task_alloc();
    *(v0 + 96) = v20;
    *v20 = v0;
    v20[1] = sub_2149725BC;

    return sub_2149707E4();
  }

  else
  {
    (v30)(*(v0 + 80), v31, *(v0 + 64));
    v22 = sub_21498E670();
    v23 = sub_21498FBA0();
    v24 = os_log_type_enabled(v22, v23);
    v25 = *(v0 + 80);
    v26 = *(v0 + 64);
    if (v24)
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_21488E000, v22, v23, "[DataStore] syncBlockRules - no need to refresh block rules", v27, 2u);
      MEMORY[0x216059AC0](v27, -1, -1);
    }

    v29(v25, v26);

    v28 = *(v0 + 8);

    return v28();
  }
}

uint64_t sub_2149725BC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_21497274C(char a1, char a2)
{
  *(v3 + 24) = v2;
  *(v3 + 153) = a2;
  *(v3 + 152) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1ABA0, &qword_214993E20);
  *(v3 + 32) = swift_task_alloc();
  *(v3 + 40) = swift_task_alloc();
  *(v3 + 48) = type metadata accessor for MailCleanupState(0);
  *(v3 + 56) = swift_task_alloc();
  v4 = sub_21498E690();
  *(v3 + 64) = v4;
  *(v3 + 72) = *(v4 - 8);
  *(v3 + 80) = swift_task_alloc();
  *(v3 + 88) = swift_task_alloc();
  if (qword_281191B88 != -1)
  {
    swift_once();
  }

  v5 = qword_281194E50;
  *(v3 + 96) = qword_281194E50;

  return MEMORY[0x2822009F8](sub_2149728CC, v5, 0);
}

uint64_t sub_2149728CC()
{
  v22 = v0;
  if (qword_281190DA0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 88);
  v2 = *(v0 + 64);
  v3 = *(v0 + 72);
  v4 = __swift_project_value_buffer(v2, qword_281194E18);
  *(v0 + 104) = v4;
  v5 = *(v3 + 16);
  *(v0 + 112) = v5;
  *(v0 + 120) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v2);
  v6 = sub_21498E670();
  v7 = sub_21498FBA0();
  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 88);
  v10 = *(v0 + 64);
  v11 = *(v0 + 72);
  if (v8)
  {
    v12 = *(v0 + 152);
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v21 = v14;
    *v13 = 136315138;
    if (v12)
    {
      v15 = 0x646563726F66;
    }

    else
    {
      v15 = 0;
    }

    if (v12)
    {
      v16 = 0xE600000000000000;
    }

    else
    {
      v16 = 0xE000000000000000;
    }

    v17 = sub_2149079F4(v15, v16, &v21);

    *(v13 + 4) = v17;
    _os_log_impl(&dword_21488E000, v6, v7, "[DataStore] syncTips(%s)", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x216059AC0](v14, -1, -1);
    MEMORY[0x216059AC0](v13, -1, -1);
  }

  v18 = *(v11 + 8);
  v18(v9, v10);
  *(v0 + 128) = v18;
  v19 = swift_task_alloc();
  *(v0 + 136) = v19;
  *v19 = v0;
  v19[1] = sub_214972AF4;

  return sub_214973874();
}

uint64_t sub_214972AF4(char a1)
{
  v2 = *(*v1 + 96);
  *(*v1 + 154) = a1;

  return MEMORY[0x2822009F8](sub_214972C0C, v2, 0);
}

uint64_t sub_214972C0C()
{
  if (*(v0 + 153) == 1)
  {
    __swift_project_boxed_opaque_existential_1((*(v0 + 24) + 16), *(*(v0 + 24) + 40));
    v20 = sub_21493B060(0xD00000000000003BLL, 0x80000002149A15B0);
    v1 = *(v0 + 153) ^ 1;
  }

  else
  {
    v20 = 0;
    v1 = 1;
  }

  v19 = v1;
  v2 = *(v0 + 56);
  v16 = *(v0 + 48);
  v4 = *(v0 + 32);
  v3 = *(v0 + 40);
  v17 = *(v0 + 152);
  v18 = *(v0 + 154);
  *(v0 + 16) = sub_21496C7C0();
  swift_getKeyPath();
  sub_214976158(&qword_281191F48, type metadata accessor for MailCleanupSchemaV1.DataModel, &unk_214995CA4);
  sub_21498E3D0();

  swift_getKeyPath();
  sub_214976158(&qword_281191F50, type metadata accessor for MailCleanupSchemaV1.DataModel, &unk_214995D60);
  sub_214976158(&qword_281192040, type metadata accessor for MailCleanupState, &protocol conformance descriptor for MailCleanupState);
  sub_21498F6A0();

  sub_2148AA824(v2 + *(v16 + 20), v3, &qword_27CA1ABA0, &qword_214993E20);
  sub_214950444(v2, type metadata accessor for MailCleanupState);
  sub_214976218(v4);
  v5 = sub_214974D58(v17, v20, v19 & 1, v3, v4, v18);
  sub_21489DFCC(v4, &qword_27CA1ABA0, &qword_214993E20);
  sub_21489DFCC(v3, &qword_27CA1ABA0, &qword_214993E20);
  if (v5)
  {
    v6 = swift_task_alloc();
    *(v0 + 144) = v6;
    *v6 = v0;
    v6[1] = sub_214972FF0;

    return sub_21496FB38();
  }

  else
  {
    (*(v0 + 112))(*(v0 + 80), *(v0 + 104), *(v0 + 64));
    v8 = sub_21498E670();
    v9 = sub_21498FBA0();
    v10 = os_log_type_enabled(v8, v9);
    v11 = *(v0 + 128);
    v12 = *(v0 + 80);
    v13 = *(v0 + 64);
    if (v10)
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_21488E000, v8, v9, "[DataStore] syncTips - no need to refresh tips", v14, 2u);
      MEMORY[0x216059AC0](v14, -1, -1);
    }

    v11(v12, v13);

    v15 = *(v0 + 8);

    return v15();
  }
}

uint64_t sub_214972FF0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_214973180(char a1, char a2)
{
  *(v3 + 24) = v2;
  *(v3 + 97) = a2;
  *(v3 + 96) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1ABA0, &qword_214993E20);
  *(v3 + 32) = swift_task_alloc();
  *(v3 + 40) = swift_task_alloc();
  *(v3 + 48) = type metadata accessor for MailCleanupState(0);
  *(v3 + 56) = swift_task_alloc();
  v4 = sub_21498E690();
  *(v3 + 64) = v4;
  *(v3 + 72) = *(v4 - 8);
  *(v3 + 80) = swift_task_alloc();
  if (qword_281191B88 != -1)
  {
    swift_once();
  }

  v5 = qword_281194E50;

  return MEMORY[0x2822009F8](sub_2149732F0, v5, 0);
}

uint64_t sub_2149732F0()
{
  if (qword_281190DA0 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  v3 = *(v0 + 64);
  v4 = __swift_project_value_buffer(v3, qword_281194E18);
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_21498E670();
  v6 = sub_21498FBA0();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_21488E000, v5, v6, "[DataStore] syncPreferences()", v7, 2u);
    MEMORY[0x216059AC0](v7, -1, -1);
  }

  v9 = *(v0 + 72);
  v8 = *(v0 + 80);
  v10 = *(v0 + 64);
  v11 = *(v0 + 97);

  (*(v9 + 8))(v8, v10);
  if (v11 == 1)
  {
    __swift_project_boxed_opaque_existential_1((*(v0 + 24) + 16), *(*(v0 + 24) + 40));
    v22 = sub_21493B060(0xD00000000000003DLL, 0x80000002149A3630);
  }

  else
  {
    v22 = 0;
  }

  v12 = *(v0 + 56);
  v19 = *(v0 + 48);
  v14 = *(v0 + 32);
  v13 = *(v0 + 40);
  v20 = *(v0 + 96);
  v21 = *(v0 + 97);
  *(v0 + 16) = sub_21496C7C0();
  swift_getKeyPath();
  sub_214976158(&qword_281191F48, type metadata accessor for MailCleanupSchemaV1.DataModel, &unk_214995CA4);
  sub_21498E3D0();

  swift_getKeyPath();
  sub_214976158(&qword_281191F50, type metadata accessor for MailCleanupSchemaV1.DataModel, &unk_214995D60);
  sub_214976158(&qword_281192040, type metadata accessor for MailCleanupState, &protocol conformance descriptor for MailCleanupState);
  sub_21498F6A0();

  sub_2148AA824(v12 + *(v19 + 40), v13, &qword_27CA1ABA0, &qword_214993E20);
  sub_214950444(v12, type metadata accessor for MailCleanupState);
  sub_21497620C(v14);
  v15 = sub_214974D58(v20, v22, (v21 & 1) == 0, v13, v14, 0);
  sub_21489DFCC(v14, &qword_27CA1ABA0, &qword_214993E20);
  sub_21489DFCC(v13, &qword_27CA1ABA0, &qword_214993E20);
  if (v15)
  {
    v16 = swift_task_alloc();
    *(v0 + 88) = v16;
    *v16 = v0;
    v16[1] = sub_214973708;

    return sub_214971514();
  }

  else
  {

    v18 = *(v0 + 8);

    return v18();
  }
}

uint64_t sub_214973708()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_214973874()
{
  v1[151] = v0;
  v1[152] = *(type metadata accessor for MATipDismissal(0) - 8);
  v1[153] = swift_task_alloc();
  v1[154] = type metadata accessor for MailCleanupState(0);
  v1[155] = swift_task_alloc();
  v1[156] = swift_task_alloc();
  if (qword_281191B88 != -1)
  {
    swift_once();
  }

  v2 = qword_281194E50;
  v1[157] = qword_281194E50;

  return MEMORY[0x2822009F8](sub_2149739A4, v2, 0);
}

uint64_t sub_2149739A4()
{
  v1 = *(v0 + 1240);
  v24 = *(v0 + 1232);
  v2 = *(v0 + 1208);
  *(v0 + 1184) = MEMORY[0x277D84FA0];
  *(v0 + 1192) = sub_21496C7C0();
  swift_getKeyPath();
  sub_214976158(&qword_281191F48, type metadata accessor for MailCleanupSchemaV1.DataModel, &unk_214995CA4);
  sub_21498E3D0();

  swift_getKeyPath();
  sub_214976158(&qword_281191F50, type metadata accessor for MailCleanupSchemaV1.DataModel, &unk_214995D60);
  sub_214976158(&qword_281192040, type metadata accessor for MailCleanupState, &protocol conformance descriptor for MailCleanupState);
  sub_21498F6A0();

  v3 = OBJC_IVAR____TtCCC19iCloudMailAssistant32iCloudMailAssistantProviderSwift13ProviderModel9DataStore____lazy_storage___dataModel;
  *(v0 + 1264) = OBJC_IVAR____TtCCC19iCloudMailAssistant32iCloudMailAssistantProviderSwift13ProviderModel9DataStore____lazy_storage___dataModel;
  *(v0 + 1200) = *(v2 + v3);
  swift_getKeyPath();

  sub_21498E3D0();

  swift_getKeyPath();
  sub_21498F6A0();

  v4 = *(v1 + *(v24 + 24));
  *(v0 + 1272) = v4;

  result = sub_214950444(v1, type metadata accessor for MailCleanupState);
  v6 = *(v4 + 16);
  *(v0 + 1280) = v6;
  if (v6)
  {
    v7 = 0;
    v8 = *(v0 + 1216);
    v9 = **(v0 + 1248);
    *(v0 + 1288) = v9;
    *(v0 + 1296) = *(v9 + 16);
    *(v0 + 396) = *(v8 + 80);
    while (1)
    {
      *(v0 + 1304) = v7;
      v10 = *(v0 + 1272);
      if (v7 >= *(v10 + 16))
      {
LABEL_25:
        __break(1u);
        return result;
      }

      v11 = *(v0 + 1296);
      v12 = *(v0 + 1224);
      sub_214975F78(v10 + ((*(v0 + 396) + 32) & ~*(v0 + 396)) + *(*(v0 + 1216) + 72) * v7, v12, type metadata accessor for MATipDismissal);
      v14 = *v12;
      v13 = v12[1];

      sub_214950444(v12, type metadata accessor for MATipDismissal);

      sub_214974494((v0 + 1168), v14, v13);

      if (v11)
      {
        break;
      }

LABEL_3:

LABEL_4:
      v7 = *(v0 + 1304) + 1;
      if (v7 == *(v0 + 1280))
      {
        goto LABEL_18;
      }
    }

    v15 = 0;
    v16 = 32;
    while (1)
    {
      v17 = *(v0 + 1288);
      if (v15 >= *(v17 + 16))
      {
        __break(1u);
        goto LABEL_25;
      }

      memcpy((v0 + 16), (v17 + v16), 0x179uLL);
      v18 = *(v0 + 392);
      if (*(v0 + 16) == v14 && *(v0 + 24) == v13)
      {
        break;
      }

      result = sub_214990080();
      if (result)
      {
        break;
      }

      ++v15;
      v16 += 384;
      if (v15 == *(v0 + 1296))
      {
        goto LABEL_3;
      }
    }

    sub_2148D8FC8(v0 + 16, v0 + 400);

    if (!v18)
    {
      result = sub_2148F6AF8(v0 + 16);
      goto LABEL_4;
    }

    __swift_project_boxed_opaque_existential_1((*(v0 + 1208) + 16), *(*(v0 + 1208) + 40));
    memcpy((v0 + 784), (v0 + 16), 0x179uLL);
    v23 = swift_task_alloc();
    *(v0 + 1312) = v23;
    *v23 = v0;
    v23[1] = sub_214973EB8;

    return sub_21493A44C(v0 + 784);
  }

  else
  {
LABEL_18:

    v20 = *(v0 + 1248);

    sub_2148E38CC(v21, (v0 + 1184));

    sub_214950444(v20, type metadata accessor for MailCleanupState);

    v22 = *(v0 + 8);

    return v22(0);
  }
}

uint64_t sub_214973EB8()
{
  v1 = *v0;
  v2 = *(*v0 + 1256);

  sub_2148F6AF8(v1 + 16);

  return MEMORY[0x2822009F8](sub_214973FD0, v2, 0);
}

void sub_214973FD0()
{
  while (1)
  {
LABEL_3:
    v1 = *(v0 + 1304) + 1;
    if (v1 == *(v0 + 1280))
    {

      v12 = *(v0 + 1248);

      sub_2148E38CC(v13, (v0 + 1184));

      sub_214950444(v12, type metadata accessor for MailCleanupState);

      v14 = *(v0 + 8);

      v14(1);
      return;
    }

    *(v0 + 1304) = v1;
    v2 = *(v0 + 1272);
    if (v1 >= *(v2 + 16))
    {
LABEL_24:
      __break(1u);
      return;
    }

    v3 = *(v0 + 1296);
    v4 = *(v0 + 1224);
    sub_214975F78(v2 + ((*(v0 + 396) + 32) & ~*(v0 + 396)) + *(*(v0 + 1216) + 72) * v1, v4, type metadata accessor for MATipDismissal);
    v6 = *v4;
    v5 = v4[1];

    sub_214950444(v4, type metadata accessor for MATipDismissal);

    sub_214974494((v0 + 1168), v6, v5);

    if (v3)
    {
      break;
    }

LABEL_2:
  }

  v7 = 0;
  v8 = 32;
  while (1)
  {
    v9 = *(v0 + 1288);
    if (v7 >= *(v9 + 16))
    {
      __break(1u);
      goto LABEL_24;
    }

    memcpy((v0 + 16), (v9 + v8), 0x179uLL);
    v10 = *(v0 + 392);
    v11 = *(v0 + 16) == v6 && *(v0 + 24) == v5;
    if (v11 || (sub_214990080() & 1) != 0)
    {
      break;
    }

    ++v7;
    v8 += 384;
    if (v7 == *(v0 + 1296))
    {
      goto LABEL_2;
    }
  }

  sub_2148D8FC8(v0 + 16, v0 + 400);

  if (!v10)
  {
    sub_2148F6AF8(v0 + 16);
    goto LABEL_3;
  }

  __swift_project_boxed_opaque_existential_1((*(v0 + 1208) + 16), *(*(v0 + 1208) + 40));
  memcpy((v0 + 784), (v0 + 16), 0x179uLL);
  v15 = swift_task_alloc();
  *(v0 + 1312) = v15;
  *v15 = v0;
  v15[1] = sub_214973EB8;

  sub_21493A44C(v0 + 784);
}

uint64_t sub_2149742A4()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  sub_2148E609C(v0 + 56);

  v1 = OBJC_IVAR____TtCCC19iCloudMailAssistant32iCloudMailAssistantProviderSwift13ProviderModel9DataStore_modelConfiguration;
  v2 = sub_21498F710();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_214976060(*(v0 + OBJC_IVAR____TtCCC19iCloudMailAssistant32iCloudMailAssistantProviderSwift13ProviderModel9DataStore____lazy_storage___modelContext));

  return swift_deallocClassInstance();
}

uint64_t _s9DataStoreCMa(uint64_t a1)
{
  result = qword_281192678;
  if (!qword_281192678)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2149743CC(uint64_t a1)
{
  result = sub_21498F710();
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

uint64_t sub_214974494(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_214990160();
  sub_21498F900();
  v8 = sub_214990190();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_214990080() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_214974844(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_2149745E4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1CC30, &qword_21499DE28);
  result = sub_21498FDE0();
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
      sub_214990160();
      sub_21498F900();
      result = sub_214990190();
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

uint64_t sub_214974844(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_2149745E4(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_2149749C4();
      goto LABEL_16;
    }

    sub_214974B20(v8 + 1);
  }

  v10 = *v4;
  sub_214990160();
  sub_21498F900();
  result = sub_214990190();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_214990080();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_2149900E0();
  __break(1u);
  return result;
}

void *sub_2149749C4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1CC30, &qword_21499DE28);
  v2 = *v0;
  v3 = sub_21498FDD0();
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
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

uint64_t sub_214974B20(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1CC30, &qword_21499DE28);
  result = sub_21498FDE0();
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
      sub_214990160();

      sub_21498F900();
      result = sub_214990190();
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

uint64_t sub_214974D58(char a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, char a6)
{
  v166 = a5;
  LODWORD(v168) = a3;
  v164 = a2;
  v9 = sub_21498E690();
  v171 = *(v9 - 8);
  v172 = v9;
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v153 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v167 = &v153 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v153 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v163 = &v153 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v162 = &v153 - v21;
  MEMORY[0x28223BE20](v20);
  v169 = &v153 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1ABA0, &qword_214993E20);
  v24 = MEMORY[0x28223BE20](v23 - 8);
  v165 = &v153 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v27 = &v153 - v26;
  v28 = sub_21498E320();
  v29 = *(v28 - 8);
  v173 = v28;
  v174 = v29;
  v30 = MEMORY[0x28223BE20](v28);
  v31 = MEMORY[0x28223BE20](v30);
  v32 = MEMORY[0x28223BE20](v31);
  v33 = MEMORY[0x28223BE20](v32);
  v34 = MEMORY[0x28223BE20](v33);
  v36 = &v153 - v35;
  v37 = MEMORY[0x28223BE20](v34);
  v38 = MEMORY[0x28223BE20](v37);
  v40 = &v153 - v39;
  v41 = MEMORY[0x28223BE20](v38);
  v43 = &v153 - v42;
  v44 = MEMORY[0x28223BE20](v41);
  MEMORY[0x28223BE20](v44);
  v52 = &v153 - v51;
  result = 1;
  if (a1 & 1) != 0 || (a6)
  {
    return result;
  }

  v158 = v46;
  v159 = v47;
  v155 = v45;
  v156 = v50;
  v157 = v17;
  v160 = v49;
  v170 = v48;
  sub_21498E310();
  sub_2148AA824(a4, v27, &qword_27CA1ABA0, &qword_214993E20);
  v55 = v173;
  v54 = v174;
  v56 = *(v174 + 48);
  if (v56(v27, 1, v173) == 1)
  {
    sub_21489DFCC(v27, &qword_27CA1ABA0, &qword_214993E20);
    if (qword_281190DA0 != -1)
    {
      swift_once();
    }

    v57 = v172;
    v58 = __swift_project_value_buffer(v172, qword_281194E18);
    v59 = v171;
    (*(v171 + 16))(v12, v58, v57);
    v60 = sub_21498E670();
    v61 = sub_21498FBB0();
    v62 = os_log_type_enabled(v60, v61);
    v63 = v173;
    if (v62)
    {
      v64 = swift_slowAlloc();
      *v64 = 0;
      _os_log_impl(&dword_21488E000, v60, v61, "[DataStore] dateFetched is null. Returning shouldLoad=true.", v64, 2u);
      MEMORY[0x216059AC0](v64, -1, -1);
    }

    (*(v59 + 8))(v12, v57);
    (*(v54 + 8))(v52, v63);
    return 1;
  }

  v154 = *(v54 + 32);
  v154(v170, v27, v55);
  v161 = v52;
  if (sub_21498E2C0())
  {
    if (qword_281190DA0 != -1)
    {
      swift_once();
    }

    v65 = v172;
    v66 = __swift_project_value_buffer(v172, qword_281194E18);
    v67 = v171;
    v68 = v169;
    (*(v171 + 16))(v169, v66, v65);
    v69 = v174;
    v70 = *(v174 + 16);
    v70(v43, v170, v55);
    v71 = v161;
    v70(v40, v161, v55);
    v72 = sub_21498E670();
    v73 = sub_21498FBB0();
    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      v168 = swift_slowAlloc();
      v175[0] = v168;
      *v74 = 136315394;
      sub_214976158(&qword_27CA1BA28, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
      v75 = v55;
      LODWORD(v167) = v73;
      v76 = sub_214990050();
      v78 = v77;
      v79 = *(v69 + 8);
      v79(v43, v55);
      v80 = sub_2149079F4(v76, v78, v175);

      *(v74 + 4) = v80;
      *(v74 + 12) = 2080;
      v81 = sub_214990050();
      v83 = v82;
      v79(v40, v75);
      v84 = sub_2149079F4(v81, v83, v175);

      *(v74 + 14) = v84;
      _os_log_impl(&dword_21488E000, v72, v167, "[DataStore] dateFetched is in the future: %s > currentTime: %s", v74, 0x16u);
      v85 = v168;
      swift_arrayDestroy();
      MEMORY[0x216059AC0](v85, -1, -1);
      MEMORY[0x216059AC0](v74, -1, -1);

      (*(v171 + 8))(v169, v172);
      v79(v170, v75);
      v79(v161, v75);
    }

    else
    {

      v99 = *(v69 + 8);
      v99(v40, v55);
      v99(v43, v55);
      (*(v67 + 8))(v68, v65);
      v99(v170, v55);
      v99(v71, v55);
    }

    return 1;
  }

  v86 = v172;
  if ((v168 & 1) == 0)
  {
    v87 = v55;
    v88 = v174;
    (*(v174 + 16))(v36, v170, v87);
    v89 = v159;
    sub_21498E2A0();
    sub_214976158(&qword_2811926F0, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
    if ((sub_21498F820() & 1) == 0)
    {
      if (qword_281190DA0 != -1)
      {
        swift_once();
      }

      v120 = __swift_project_value_buffer(v86, qword_281194E18);
      v121 = v171;
      v122 = v162;
      (*(v171 + 16))(v162, v120, v86);
      v123 = sub_21498E670();
      v124 = sub_21498FBB0();
      v125 = os_log_type_enabled(v123, v124);
      v127 = v173;
      v126 = v174;
      if (v125)
      {
        v128 = swift_slowAlloc();
        *v128 = 0;
        _os_log_impl(&dword_21488E000, v123, v124, "[DataStore] cache expired", v128, 2u);
        MEMORY[0x216059AC0](v128, -1, -1);
      }

      (*(v121 + 8))(v122, v86);
      v129 = *(v126 + 8);
      v129(v159, v127);
      v129(v170, v127);
      v129(v161, v127);
      return 1;
    }

    (*(v88 + 8))(v89, v87);
    v55 = v87;
  }

  v90 = v165;
  sub_2148AA824(v166, v165, &qword_27CA1ABA0, &qword_214993E20);
  if (v56(v90, 1, v55) != 1)
  {
    v100 = v160;
    v154(v160, v90, v55);
    v101 = sub_21498E2C0();
    v92 = v171;
    v93 = v167;
    if (v101)
    {
      v102 = v174;
      if (qword_281190DA0 != -1)
      {
        swift_once();
      }

      v103 = __swift_project_value_buffer(v86, qword_281194E18);
      v104 = v163;
      (*(v92 + 16))(v163, v103, v86);
      v105 = v158;
      v106 = v160;
      (*(v102 + 16))(v158, v160, v55);
      v107 = sub_21498E670();
      v108 = sub_21498FBB0();
      if (os_log_type_enabled(v107, v108))
      {
        v109 = swift_slowAlloc();
        v173 = v109;
        v110 = v102;
        v111 = swift_slowAlloc();
        v175[0] = v111;
        *v109 = 136315138;
        sub_214976158(&qword_27CA1BA28, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
        v112 = sub_214990050();
        v113 = v55;
        v115 = v114;
        v116 = *(v110 + 8);
        v116(v105, v113);
        v117 = sub_2149079F4(v112, v115, v175);

        v118 = v173;
        *(v173 + 4) = v117;
        v119 = v118;
        _os_log_impl(&dword_21488E000, v107, v108, "[DataStore] staleSince is in the future: %s", v118, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v111);
        MEMORY[0x216059AC0](v111, -1, -1);
        MEMORY[0x216059AC0](v119, -1, -1);

        (*(v92 + 8))(v163, v172);
        v116(v160, v113);
        v116(v170, v113);
        v116(v161, v113);
        return 1;
      }

      v131 = *(v102 + 8);
      v131(v105, v55);
      (*(v92 + 8))(v104, v86);
      v131(v106, v55);
      v132 = v170;
    }

    else
    {
      sub_214976158(&qword_2811926F0, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
      v130 = sub_21498F820();
      v91 = v174;
      if (v130)
      {
        (*(v174 + 8))(v100, v55);
        goto LABEL_19;
      }

      if (qword_281190DA0 != -1)
      {
        swift_once();
      }

      v133 = __swift_project_value_buffer(v86, qword_281194E18);
      v134 = v157;
      (*(v92 + 16))(v157, v133, v86);
      v135 = *(v91 + 16);
      v136 = v155;
      v137 = v170;
      v135(v155, v170, v55);
      v138 = v156;
      v135(v156, v160, v55);
      v139 = sub_21498E670();
      v140 = sub_21498FBB0();
      if (os_log_type_enabled(v139, v140))
      {
        v141 = swift_slowAlloc();
        v173 = swift_slowAlloc();
        v175[0] = v173;
        *v141 = 136315394;
        sub_214976158(&qword_27CA1BA28, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
        v142 = v55;
        LODWORD(v169) = v140;
        v143 = sub_214990050();
        v145 = v144;
        v146 = *(v91 + 8);
        v146(v136, v55);
        v147 = sub_2149079F4(v143, v145, v175);

        *(v141 + 4) = v147;
        *(v141 + 12) = 2080;
        v148 = sub_214990050();
        v150 = v149;
        v146(v138, v142);
        v151 = sub_2149079F4(v148, v150, v175);

        *(v141 + 14) = v151;
        _os_log_impl(&dword_21488E000, v139, v169, "[DataStore] dateFetched <= staleSince: %s <= %s", v141, 0x16u);
        v152 = v173;
        swift_arrayDestroy();
        MEMORY[0x216059AC0](v152, -1, -1);
        MEMORY[0x216059AC0](v141, -1, -1);

        (*(v171 + 8))(v157, v172);
        v146(v160, v142);
        v146(v170, v142);
        v146(v161, v142);
        return 1;
      }

      v131 = *(v91 + 8);
      v131(v138, v55);
      v131(v136, v55);
      (*(v92 + 8))(v134, v86);
      v131(v160, v55);
      v132 = v137;
    }

    v131(v132, v55);
    v131(v161, v55);
    return 1;
  }

  sub_21489DFCC(v90, &qword_27CA1ABA0, &qword_214993E20);
  v91 = v174;
  v92 = v171;
  v93 = v167;
LABEL_19:
  if (qword_281190DA0 != -1)
  {
    swift_once();
  }

  v94 = __swift_project_value_buffer(v86, qword_281194E18);
  (*(v92 + 16))(v93, v94, v86);
  v95 = sub_21498E670();
  v96 = sub_21498FBB0();
  if (os_log_type_enabled(v95, v96))
  {
    v97 = swift_slowAlloc();
    *v97 = 0;
    _os_log_impl(&dword_21488E000, v95, v96, "[DataStore] computeShouldLoad=false", v97, 2u);
    MEMORY[0x216059AC0](v97, -1, -1);
  }

  (*(v92 + 8))(v93, v86);
  v98 = *(v91 + 8);
  v98(v170, v55);
  v98(v161, v55);
  return 0;
}

uint64_t sub_214975F78(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_214975FF0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA1B600, &qword_214995ED8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_214976060(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_214976070(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MATipDismissal(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2149760F4(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

unint64_t sub_214976104()
{
  result = qword_281191C98[0];
  if (!qword_281191C98[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_281191C98);
  }

  return result;
}

uint64_t sub_214976158(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id NSUserDefaults.MailCleanupUserDefaults.__allocating_init(suiteName:)(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_21498F840();
  }

  else
  {
    v3 = 0;
  }

  v4 = [objc_allocWithZone(v2) initWithSuiteName_];

  return v4;
}

uint64_t sub_214976224@<X0>(uint64_t a2@<X8>)
{
  v4 = sub_21498F840();
  v5 = [v2 objectForKey_];

  if (v5)
  {
    sub_21498FD40();
    swift_unknownObjectRelease();
  }

  else
  {
    v10 = 0u;
    v11 = 0u;
  }

  v12[0] = v10;
  v12[1] = v11;
  if (*(&v11 + 1))
  {
    v6 = sub_21498E320();
    v7 = swift_dynamicCast();
    return (*(*(v6 - 8) + 56))(a2, v7 ^ 1u, 1, v6);
  }

  else
  {
    sub_21489DFCC(v12, &qword_27CA1B878, qword_214996678);
    v9 = sub_21498E320();
    return (*(*(v9 - 8) + 56))(a2, 1, 1, v9);
  }
}

id NSUserDefaults.MailCleanupUserDefaults.init(suiteName:)(uint64_t a1, uint64_t a2)
{
  v3 = &v2[OBJC_IVAR____TtCE19iCloudMailAssistantCSo14NSUserDefaults23MailCleanupUserDefaults_mailCleanupIsCategoryDisabledKey];
  *v3 = 0xD00000000000001DLL;
  *(v3 + 1) = 0x80000002149A36B0;
  v4 = &v2[OBJC_IVAR____TtCE19iCloudMailAssistantCSo14NSUserDefaults23MailCleanupUserDefaults_mailCleanupIsCacheDisabledKey];
  *v4 = 0xD00000000000001ALL;
  *(v4 + 1) = 0x80000002149A36D0;
  v5 = &v2[OBJC_IVAR____TtCE19iCloudMailAssistantCSo14NSUserDefaults23MailCleanupUserDefaults_turnOffMailCleanupTipDismissedKey];
  *v5 = 0xD00000000000001ELL;
  *(v5 + 1) = 0x80000002149A36F0;
  v6 = &v2[OBJC_IVAR____TtCE19iCloudMailAssistantCSo14NSUserDefaults23MailCleanupUserDefaults_useBulkActionServiceForDashboardKey];
  *v6 = 0xD000000000000020;
  *(v6 + 1) = 0x80000002149A3710;
  v7 = &v2[OBJC_IVAR____TtCE19iCloudMailAssistantCSo14NSUserDefaults23MailCleanupUserDefaults_categoriesDisabledTimestampKey];
  *v7 = 0xD000000000000029;
  *(v7 + 1) = 0x80000002149A1610;
  v8 = &v2[OBJC_IVAR____TtCE19iCloudMailAssistantCSo14NSUserDefaults23MailCleanupUserDefaults_showConsentInMailAppWhenDeclinedKey];
  *v8 = 0xD00000000000002BLL;
  *(v8 + 1) = 0x80000002149A3740;
  v9 = &v2[OBJC_IVAR____TtCE19iCloudMailAssistantCSo14NSUserDefaults23MailCleanupUserDefaults_preferencesStaleSinceKey];
  *v9 = 0xD000000000000020;
  *(v9 + 1) = 0x80000002149A3770;
  v10 = &v2[OBJC_IVAR____TtCE19iCloudMailAssistantCSo14NSUserDefaults23MailCleanupUserDefaults_tipsStaleSinceKey];
  *v10 = 0xD000000000000019;
  *(v10 + 1) = 0x80000002149A37A0;
  v11 = &v2[OBJC_IVAR____TtCE19iCloudMailAssistantCSo14NSUserDefaults23MailCleanupUserDefaults_rulesStaleSinceKey];
  *v11 = 0xD00000000000001ALL;
  *(v11 + 1) = 0x80000002149A37C0;
  v12 = &v2[OBJC_IVAR____TtCE19iCloudMailAssistantCSo14NSUserDefaults23MailCleanupUserDefaults_dashboardEntryPointInfoStaleSinceKey];
  *v12 = 0xD00000000000002CLL;
  *(v12 + 1) = 0x80000002149A37E0;
  v13 = &v2[OBJC_IVAR____TtCE19iCloudMailAssistantCSo14NSUserDefaults23MailCleanupUserDefaults_forceShowUnsubscribeTipKey];
  *v13 = 0xD000000000000022;
  *(v13 + 1) = 0x80000002149A3810;
  v14 = &v2[OBJC_IVAR____TtCE19iCloudMailAssistantCSo14NSUserDefaults23MailCleanupUserDefaults_forceShowPromotionsTipKey];
  *v14 = 0xD000000000000021;
  *(v14 + 1) = 0x80000002149A3840;
  if (a2)
  {
    v15 = sub_21498F840();
  }

  else
  {
    v15 = 0;
  }

  v18.receiver = v2;
  v18.super_class = type metadata accessor for NSUserDefaults.MailCleanupUserDefaults();
  v16 = objc_msgSendSuper2(&v18, sel_initWithSuiteName_, v15);

  if (v16)
  {
  }

  return v16;
}

id NSUserDefaults.MailCleanupUserDefaults.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for NSUserDefaults.MailCleanupUserDefaults();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void _sSo14NSUserDefaultsC19iCloudMailAssistantE11mailCleanupAbCE0dg4UserB0CvgZ_0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A348, &qword_214991700);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v11 - v1;
  v3 = [objc_opt_self() defaultManager];
  v4 = sub_21498F840();
  v5 = [v3 containerURLForSecurityApplicationGroupIdentifier_];

  if (v5)
  {
    sub_21498E160();

    v6 = sub_21498E1B0();
    (*(*(v6 - 8) + 56))(v2, 0, 1, v6);
  }

  else
  {
    v7 = sub_21498E1B0();
    (*(*(v7 - 8) + 56))(v2, 1, 1, v7);
  }

  sub_21489DFCC(v2, &qword_27CA1A348, &qword_214991700);
  v8 = objc_allocWithZone(type metadata accessor for NSUserDefaults.MailCleanupUserDefaults());
  v9 = sub_21498F840();
  v10 = [v8 initWithSuiteName_];

  if (!v10)
  {
    __break(1u);
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

uint64_t sub_214976974(uint64_t a1, int a2)
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

uint64_t sub_2149769BC(uint64_t result, int a2, int a3)
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

uint64_t sub_214976A30(uint64_t a1)
{
  v2 = sub_214978464();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214976A6C(uint64_t a1)
{
  v2 = sub_214978464();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214976AA8(uint64_t a1, uint64_t a2)
{
  v4 = sub_2148F0A20();

  return MEMORY[0x282182170](a1, v4, a2);
}

uint64_t sub_214976AFC(uint64_t a1, uint64_t a2)
{
  v4 = sub_214976EDC();

  return MEMORY[0x282182168](a1, a2, v4);
}

uint64_t sub_214976B48(uint64_t a1)
{
  v2 = sub_214976EDC();

  return MEMORY[0x2821822F0](a1, v2);
}

uint64_t sub_214976B94(uint64_t a1, uint64_t a2)
{
  v4 = sub_214977C44();

  return MEMORY[0x282182160](a1, a2, v4);
}

uint64_t sub_214976BE8@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_21498E450();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v17[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v7 = v1[1];
  v18 = *v1;
  v19 = v7;
  v20 = v1[2];
  v21 = *(v1 + 6);
  v8 = swift_allocObject();
  v9 = v1[1];
  *(v8 + 16) = *v1;
  *(v8 + 32) = v9;
  *(v8 + 48) = v1[2];
  *(v8 + 64) = *(v1 + 6);
  sub_21497842C(&v18, v17);
  sub_21498E400();
  v10 = sub_2148BEEDC(v19);
  v11 = *(&v19 + 1);
  if (*(&v19 + 1))
  {
    v12 = *(&v20 + 1);
    if (*(&v20 + 1))
    {
      v13 = v10;

      v14 = sub_2148BF184(v13, v11, v12);

      result = (*(v4 + 8))(v6, v3);
      *a1 = v14;
      return result;
    }
  }

  else
  {
    sub_21498E8C0();
    sub_214978370(&qword_27CA1A858, MEMORY[0x277D23330], MEMORY[0x277D233A0]);
    sub_21498ED10();
    __break(1u);
  }

  sub_21498E870();
  sub_214978370(&qword_27CA1AC08, MEMORY[0x277D232E8], MEMORY[0x277D233A0]);

  result = sub_21498ED10();
  __break(1u);
  return result;
}

unint64_t sub_214976EDC()
{
  result = qword_27CA1CCB8;
  if (!qword_27CA1CCB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1CCB8);
  }

  return result;
}

uint64_t sub_214976F30(void *a1)
{
  v2 = sub_21498E690();
  MEMORY[0x28223BE20](v2);
  if (!a1[3])
  {
    sub_21498E8C0();
    sub_214978370(&qword_27CA1A858, MEMORY[0x277D23330], MEMORY[0x277D233A0]);
    sub_21498ED10();
    __break(1u);
    goto LABEL_7;
  }

  if (!a1[5])
  {
LABEL_7:
    sub_21498E870();
    sub_214978370(&qword_27CA1AC08, MEMORY[0x277D232E8], MEMORY[0x277D233A0]);

    result = sub_21498ED10();
    __break(1u);
    return result;
  }

  sub_21498FA10();
}

uint64_t sub_2149772B8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x736E6F69746361;
  }

  else
  {
    v3 = 25705;
  }

  if (v2)
  {
    v4 = 0xE200000000000000;
  }

  else
  {
    v4 = 0xE700000000000000;
  }

  if (*a2)
  {
    v5 = 0x736E6F69746361;
  }

  else
  {
    v5 = 25705;
  }

  if (*a2)
  {
    v6 = 0xE700000000000000;
  }

  else
  {
    v6 = 0xE200000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_214990080();
  }

  return v8 & 1;
}

uint64_t sub_214977354()
{
  sub_214990160();
  sub_21498F900();

  return sub_214990190();
}

uint64_t sub_2149773CC(uint64_t a1)
{
  sub_214990160();
  sub_21498F900();

  return sub_214990190();
}

uint64_t sub_21497744C@<X0>(char *a3@<X8>)
{
  v4 = sub_21498FEF0();

  if (v4 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v4)
  {
    v6 = 0;
  }

  *a3 = v6;
  return result;
}

uint64_t sub_2149774B4@<X0>(char *a4@<X8>)
{
  v5 = sub_21498FEF0();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a4 = v7;
  return result;
}

uint64_t sub_214977514(uint64_t a1)
{
  v2 = sub_21497831C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214977550(uint64_t a1)
{
  v2 = sub_21497831C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21497758C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2148F0A74();

  return MEMORY[0x282182170](a1, v4, a2);
}

uint64_t sub_2149775E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_214977A90();

  return MEMORY[0x282182168](a1, a2, v4);
}

uint64_t sub_21497762C(uint64_t a1)
{
  v2 = sub_214977A90();

  return MEMORY[0x2821822F0](a1, v2);
}

uint64_t sub_214977678(uint64_t a1, uint64_t a2)
{
  v4 = sub_214977C98();

  return MEMORY[0x282182160](a1, a2, v4);
}

uint64_t sub_2149776CC@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_21498E410();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v17[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v7 = v1[1];
  v18 = *v1;
  v19 = v7;
  v20 = v1[2];
  v21 = *(v1 + 6);
  v8 = swift_allocObject();
  v9 = v1[1];
  *(v8 + 16) = *v1;
  *(v8 + 32) = v9;
  *(v8 + 48) = v1[2];
  *(v8 + 64) = *(v1 + 6);
  sub_214977D10(&v18, v17);
  sub_21498E400();
  v10 = sub_2148BEEDC(v19);
  v11 = *(&v19 + 1);
  if (*(&v19 + 1))
  {
    v12 = *(&v20 + 1);
    if (*(&v20 + 1))
    {
      v13 = v10;

      v14 = sub_2148BF1CC(v13, v11, v12);

      result = (*(v4 + 8))(v6, v3);
      *a1 = v14;
      return result;
    }
  }

  else
  {
    sub_21498E8C0();
    sub_214978370(&qword_27CA1A858, MEMORY[0x277D23330], MEMORY[0x277D233A0]);
    sub_21498ED10();
    __break(1u);
  }

  sub_21498E870();
  sub_214978370(&qword_27CA1AC08, MEMORY[0x277D232E8], MEMORY[0x277D233A0]);

  result = sub_21498ED10();
  __break(1u);
  return result;
}

double sub_214977978@<D0>(void *a1@<X0>, uint64_t *a2@<X3>, uint64_t *a3@<X4>, void (*a4)(void)@<X5>, uint64_t a6@<X8>)
{
  sub_214977D48(a1, a2, a3, a4, v10);
  if (!v6)
  {
    v9 = v10[1];
    *a6 = v10[0];
    *(a6 + 16) = v9;
    result = *&v11;
    *(a6 + 32) = v11;
    *(a6 + 48) = v12;
  }

  return result;
}

uint64_t sub_214977A20(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  a4(a1, a2, a3);
  a5();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_214977A90()
{
  result = qword_27CA1CCC0;
  if (!qword_27CA1CCC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1CCC0);
  }

  return result;
}

unint64_t sub_214977AE8()
{
  result = qword_27CA1CCC8;
  if (!qword_27CA1CCC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1CCC8);
  }

  return result;
}

unint64_t sub_214977B40()
{
  result = qword_27CA1CCD0;
  if (!qword_27CA1CCD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1CCD0);
  }

  return result;
}

unint64_t sub_214977B98()
{
  result = qword_27CA1CCD8;
  if (!qword_27CA1CCD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1CCD8);
  }

  return result;
}

unint64_t sub_214977BF0()
{
  result = qword_27CA1CCE0;
  if (!qword_27CA1CCE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1CCE0);
  }

  return result;
}

unint64_t sub_214977C44()
{
  result = qword_27CA1CCE8;
  if (!qword_27CA1CCE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1CCE8);
  }

  return result;
}

unint64_t sub_214977C98()
{
  result = qword_27CA1CCF0;
  if (!qword_27CA1CCF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1CCF0);
  }

  return result;
}

uint64_t sub_214977D48@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, void (*a4)(void)@<X3>, uint64_t *a6@<X8>)
{
  v56 = a4;
  v51 = a6;
  v61 = sub_21498E890();
  v54 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v60 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_21498E350();
  v52 = *(v10 - 8);
  v53 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a3;
  v14 = a1;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, v13);
  v55 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = &v45 - v16;
  sub_21498E8C0();
  v18 = MEMORY[0x277D233A0];
  sub_214978370(&qword_27CA1A858, MEMORY[0x277D23330], MEMORY[0x277D233A0]);
  v59 = sub_21498ED20();
  v50 = v19;
  sub_21498E870();
  sub_214978370(&qword_27CA1AC08, MEMORY[0x277D232E8], v18);
  v58 = sub_21498ED20();
  v21 = v20;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v56();
  v22 = v57;
  sub_2149901B0();
  if (v22)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v24 = v52;
    v23 = v53;
    v49 = v21;
    v25 = v54;
    LOBYTE(v62) = 0;
    v26 = sub_21498FF20();
    v48 = v17;
    if (v27)
    {
      v46 = v26;
      v47 = v27;
    }

    else
    {
      sub_21498E340();
      v46 = sub_21498E330();
      v47 = v29;
      (*(v24 + 8))(v12, v23);
    }

    v30 = v50;
    v31 = v51;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A5F0, &qword_21499B770);
    LOBYTE(v62) = 1;
    sub_2148AAA9C();
    v32 = v48;
    sub_21498FFA0();
    v52 = v15;
    v53 = 0;
    v33 = v64;
    v34 = *(v64 + 16);
    if (v34)
    {
      v45 = v14;
      v63 = MEMORY[0x277D84F90];
      sub_2148A9BD8(0, v34, 0);
      v35 = v63;
      v36 = *(v25 + 16);
      v37 = v33 + ((*(v25 + 80) + 32) & ~*(v25 + 80));
      v56 = *(v25 + 72);
      v57 = v36;
      v38 = v61;
      do
      {
        v39 = v60;
        v57(v60, v37, v38);
        sub_21498E880();
        v38 = v61;
        (*(v25 + 8))(v39, v61);
        v63 = v35;
        v41 = *(v35 + 16);
        v40 = *(v35 + 24);
        if (v41 >= v40 >> 1)
        {
          sub_2148A9BD8((v40 > 1), v41 + 1, 1);
          v38 = v61;
          v35 = v63;
        }

        *(v35 + 16) = v41 + 1;
        sub_2148970B8(&v62, v35 + 40 * v41 + 32);
        v37 += v56;
        --v34;
      }

      while (v34);
      (*(v55 + 8))(v48, v52);

      v14 = v45;
      v30 = v50;
      v31 = v51;
    }

    else
    {

      (*(v55 + 8))(v32, v52);
      v35 = MEMORY[0x277D84F90];
    }

    v42 = v58;

    v43 = v47;

    v44 = v59;

    __swift_destroy_boxed_opaque_existential_1(v14);

    *v31 = v46;
    v31[1] = v43;
    v31[2] = v35;
    v31[3] = v44;
    v31[4] = v30;
    v31[5] = v42;
    v31[6] = v49;
  }

  return result;
}

unint64_t sub_21497831C()
{
  result = qword_27CA1CD00;
  if (!qword_27CA1CD00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1CD00);
  }

  return result;
}

uint64_t sub_214978370(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t objectdestroyTm_5()
{

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

unint64_t sub_214978464()
{
  result = qword_27CA1CD10;
  if (!qword_27CA1CD10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1CD10);
  }

  return result;
}

unint64_t sub_2149784DC()
{
  result = qword_27CA1CD18;
  if (!qword_27CA1CD18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1CD18);
  }

  return result;
}

unint64_t sub_214978534()
{
  result = qword_27CA1CD20;
  if (!qword_27CA1CD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1CD20);
  }

  return result;
}

unint64_t sub_21497858C()
{
  result = qword_27CA1CD28;
  if (!qword_27CA1CD28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1CD28);
  }

  return result;
}

unint64_t sub_2149785E4()
{
  result = qword_27CA1CD30;
  if (!qword_27CA1CD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1CD30);
  }

  return result;
}

unint64_t sub_21497863C()
{
  result = qword_27CA1CD38;
  if (!qword_27CA1CD38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1CD38);
  }

  return result;
}

unint64_t sub_214978694()
{
  result = qword_27CA1CD40;
  if (!qword_27CA1CD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1CD40);
  }

  return result;
}

uint64_t sub_214978718(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x7361637265776F6CLL;
  v4 = 0xE400000000000000;
  if (v2 == 1)
  {
    v4 = 0xE900000000000065;
  }

  else
  {
    v3 = 1701736302;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x7361637265707075;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE900000000000065;
  }

  v7 = 0x7361637265776F6CLL;
  v8 = 0xE400000000000000;
  if (*a2 == 1)
  {
    v8 = 0xE900000000000065;
  }

  else
  {
    v7 = 1701736302;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x7361637265707075;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE900000000000065;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_214990080();
  }

  return v11 & 1;
}

uint64_t sub_214978804()
{
  sub_214990160();
  sub_21498F900();

  return sub_214990190();
}

uint64_t sub_2149788A0(uint64_t a1)
{
  sub_21498F900();
}

uint64_t sub_214978928(uint64_t a1)
{
  sub_214990160();
  sub_21498F900();

  return sub_214990190();
}

unint64_t sub_2149789C0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_214978F90(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_2149789F0(uint64_t *a1@<X8>)
{
  v2 = 0xE900000000000065;
  v3 = *v1;
  v4 = 0x7361637265776F6CLL;
  v5 = 0xE400000000000000;
  if (v3 == 1)
  {
    v5 = 0xE900000000000065;
  }

  else
  {
    v4 = 1701736302;
  }

  v6 = v3 == 0;
  if (*v1)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0x7361637265707075;
  }

  if (!v6)
  {
    v2 = v5;
  }

  *a1 = v7;
  a1[1] = v2;
}

uint64_t sub_214978AF8@<X0>(void *a1@<X0>, unsigned __int8 a2@<W3>, uint64_t *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1CD50, &qword_21499E538);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v22 - v10;
  v12 = a1[4];
  v13 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (a2 > 1u)
  {
    if (a2 != 2)
    {
      v19 = sub_21498F0D0();
      (*(*(v19 - 8) + 56))(v11, 1, 1, v19);
      goto LABEL_10;
    }

    v15 = sub_21498F0D0();
    (*(*(v15 - 8) + 56))(v9, 1, 1, v15);
  }

  else
  {
    v22[3] = v13;
    if (a2)
    {
      v14 = MEMORY[0x277CE0B40];
    }

    else
    {
      v14 = MEMORY[0x277CE0B48];
    }

    v16 = *v14;
    v17 = sub_21498F0D0();
    v18 = *(v17 - 8);
    (*(v18 + 104))(v9, v16, v17);
    (*(v18 + 56))(v9, 0, 1, v17);
  }

  sub_214978F20(v9, v11);
LABEL_10:
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA1CD58, &qword_21499E540);
  a3[3] = sub_21498ECC0();
  v20 = sub_214978E54();
  v22[0] = v12;
  v22[1] = v20;
  a3[4] = swift_getWitnessTable();
  __swift_allocate_boxed_opaque_existential_1(a3);
  sub_21498F230();
  return sub_214978EB8(v11);
}

unint64_t sub_214978DD0@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_214978FDC(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

unint64_t sub_214978E00()
{
  result = qword_27CA1CD48;
  if (!qword_27CA1CD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1CD48);
  }

  return result;
}

unint64_t sub_214978E54()
{
  result = qword_27CA1CD60;
  if (!qword_27CA1CD60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA1CD58, &qword_21499E540);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1CD60);
  }

  return result;
}

uint64_t sub_214978EB8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1CD50, &qword_21499E538);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_214978F20(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1CD50, &qword_21499E538);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_214978F90(uint64_t a1, uint64_t a2)
{
  v2 = sub_21498FEF0();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_214978FDC(void *a1)
{
  v3 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2149901A0();
  if (!v1)
  {
    __swift_project_boxed_opaque_existential_1(v5, v5[3]);
    sub_2149790B8();
    sub_2149900A0();
    v3 = v6;
    __swift_destroy_boxed_opaque_existential_1(v5);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v3;
}

unint64_t sub_2149790B8()
{
  result = qword_27CA1CD68;
  if (!qword_27CA1CD68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1CD68);
  }

  return result;
}

unint64_t sub_214979120()
{
  result = qword_27CA1CD70;
  if (!qword_27CA1CD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1CD70);
  }

  return result;
}

unint64_t sub_214979174()
{
  result = qword_27CA1CD78;
  if (!qword_27CA1CD78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1CD78);
  }

  return result;
}

uint64_t sub_2149791C8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}