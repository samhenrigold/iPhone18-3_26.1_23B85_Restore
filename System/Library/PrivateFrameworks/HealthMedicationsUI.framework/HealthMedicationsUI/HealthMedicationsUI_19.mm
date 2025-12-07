void sub_22836BF68()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  sub_228368E1C(0, &qword_27D827C30, MEMORY[0x277D85720]);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = aBlock - v4;
  v6 = &v0[qword_27D824BF0];
  MedicationOnboardingFlowManager.makeNextViewControllerForStep()(qword_27D824BF0);
  if (!v7)
  {
    sub_2283922B0();
    v12 = sub_2283922D0();
    (*(*(v12 - 8) + 56))(v5, 0, 1, v12);
    sub_2283922A0();
    v13 = v0;
    v14 = sub_228392290();
    v15 = swift_allocObject();
    v16 = MEMORY[0x277D85700];
    v15[2] = v14;
    v15[3] = v16;
    v15[4] = v13;
    v15[5] = ObjectType;
    sub_2281DC568(0, 0, v5, &unk_2283A64F0, v15);

    return;
  }

  v8 = v7;
  v9 = type metadata accessor for MedicationOnboardingFlowManager(0);
  sub_228391870();
  v10 = aBlock[0];
  if (aBlock[0])
  {
    v11 = v6[*(v9 + 28)];
    if (v11 >> 5 > 2 && v11 >> 5 == 3 && v11 == 96)
    {
      v17 = swift_allocObject();
      *(v17 + 16) = v1;
      *(v17 + 24) = v8;
      v18 = objc_allocWithZone(MEMORY[0x277D115A0]);
      v19 = v1;
      v20 = v8;
      v8 = [v18 init];
      v21 = swift_allocObject();
      v21[2] = sub_228382DC4;
      v21[3] = v17;
      v21[4] = 0;
      v21[5] = 0;
      v21[6] = v19;
      v21[7] = ObjectType;
      aBlock[4] = sub_22817E1C0;
      aBlock[5] = v21;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_2281A2F3C;
      aBlock[3] = &block_descriptor_195;
      v22 = _Block_copy(aBlock);
      v23 = v19;

      [v8 checkIncompatibilityForSchedule:v10 completion:v22];
      _Block_release(v22);

      goto LABEL_9;
    }
  }

  [v1 showViewController:v8 sender:v1];
LABEL_9:
}

void sub_22836C28C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  sub_228368E1C(0, &qword_27D827C30, MEMORY[0x277D85720]);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = aBlock - v4;
  v6 = &v0[qword_27D824BF0];
  MedicationOnboardingFlowManager.makeNextViewControllerForStep()(qword_27D824BF0);
  if (!v7)
  {
    sub_2283922B0();
    v12 = sub_2283922D0();
    (*(*(v12 - 8) + 56))(v5, 0, 1, v12);
    sub_2283922A0();
    v13 = v0;
    v14 = sub_228392290();
    v15 = swift_allocObject();
    v16 = MEMORY[0x277D85700];
    v15[2] = v14;
    v15[3] = v16;
    v15[4] = v13;
    v15[5] = ObjectType;
    sub_2281DC568(0, 0, v5, &unk_2283A6500, v15);

    return;
  }

  v8 = v7;
  v9 = type metadata accessor for MedicationOnboardingFlowManager(0);
  sub_228391870();
  v10 = aBlock[0];
  if (aBlock[0])
  {
    v11 = v6[*(v9 + 28)];
    if (v11 >> 5 > 2 && v11 >> 5 == 3 && v11 == 96)
    {
      v17 = swift_allocObject();
      *(v17 + 16) = v1;
      *(v17 + 24) = v8;
      v18 = objc_allocWithZone(MEMORY[0x277D115A0]);
      v19 = v1;
      v20 = v8;
      v8 = [v18 init];
      v21 = swift_allocObject();
      v21[2] = sub_228382DC4;
      v21[3] = v17;
      v21[4] = 0;
      v21[5] = 0;
      v21[6] = v19;
      v21[7] = ObjectType;
      aBlock[4] = sub_22817E1C0;
      aBlock[5] = v21;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_2281A2F3C;
      aBlock[3] = &block_descriptor_221;
      v22 = _Block_copy(aBlock);
      v23 = v19;

      [v8 checkIncompatibilityForSchedule:v10 completion:v22];
      _Block_release(v22);

      goto LABEL_9;
    }
  }

  [v1 showViewController:v8 sender:v1];
LABEL_9:
}

void sub_22836C5B0()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  sub_228368E1C(0, &qword_27D827C30, MEMORY[0x277D85720]);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = aBlock - v4;
  v6 = &v0[qword_27D824BF0];
  MedicationOnboardingFlowManager.makeNextViewControllerForStep()(qword_27D824BF0);
  if (!v7)
  {
    sub_2283922B0();
    v12 = sub_2283922D0();
    (*(*(v12 - 8) + 56))(v5, 0, 1, v12);
    sub_2283922A0();
    v13 = v0;
    v14 = sub_228392290();
    v15 = swift_allocObject();
    v16 = MEMORY[0x277D85700];
    v15[2] = v14;
    v15[3] = v16;
    v15[4] = v13;
    v15[5] = ObjectType;
    sub_2281DC568(0, 0, v5, &unk_2283A6510, v15);

    return;
  }

  v8 = v7;
  v9 = type metadata accessor for MedicationOnboardingFlowManager(0);
  sub_228391870();
  v10 = aBlock[0];
  if (aBlock[0])
  {
    v11 = v6[*(v9 + 28)];
    if (v11 >> 5 > 2 && v11 >> 5 == 3 && v11 == 96)
    {
      v17 = swift_allocObject();
      *(v17 + 16) = v1;
      *(v17 + 24) = v8;
      v18 = objc_allocWithZone(MEMORY[0x277D115A0]);
      v19 = v1;
      v20 = v8;
      v8 = [v18 init];
      v21 = swift_allocObject();
      v21[2] = sub_228382DC4;
      v21[3] = v17;
      v21[4] = 0;
      v21[5] = 0;
      v21[6] = v19;
      v21[7] = ObjectType;
      aBlock[4] = sub_22817E1C0;
      aBlock[5] = v21;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_2281A2F3C;
      aBlock[3] = &block_descriptor_247;
      v22 = _Block_copy(aBlock);
      v23 = v19;

      [v8 checkIncompatibilityForSchedule:v10 completion:v22];
      _Block_release(v22);

      goto LABEL_9;
    }
  }

  [v1 showViewController:v8 sender:v1];
LABEL_9:
}

void sub_22836C8D4()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  sub_228368E1C(0, &qword_27D827C30, MEMORY[0x277D85720]);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = aBlock - v4;
  v6 = &v0[qword_27D824BF0];
  MedicationOnboardingFlowManager.makeNextViewControllerForStep()(qword_27D824BF0);
  if (!v7)
  {
    sub_2283922B0();
    v12 = sub_2283922D0();
    (*(*(v12 - 8) + 56))(v5, 0, 1, v12);
    sub_2283922A0();
    v13 = v0;
    v14 = sub_228392290();
    v15 = swift_allocObject();
    v16 = MEMORY[0x277D85700];
    v15[2] = v14;
    v15[3] = v16;
    v15[4] = v13;
    v15[5] = ObjectType;
    sub_2281DC568(0, 0, v5, &unk_2283A6520, v15);

    return;
  }

  v8 = v7;
  v9 = type metadata accessor for MedicationOnboardingFlowManager(0);
  sub_228391870();
  v10 = aBlock[0];
  if (aBlock[0])
  {
    v11 = v6[*(v9 + 28)];
    if (v11 >> 5 > 2 && v11 >> 5 == 3 && v11 == 96)
    {
      v17 = swift_allocObject();
      *(v17 + 16) = v1;
      *(v17 + 24) = v8;
      v18 = objc_allocWithZone(MEMORY[0x277D115A0]);
      v19 = v1;
      v20 = v8;
      v8 = [v18 init];
      v21 = swift_allocObject();
      v21[2] = sub_2281E78BC;
      v21[3] = v17;
      v21[4] = 0;
      v21[5] = 0;
      v21[6] = v19;
      v21[7] = ObjectType;
      aBlock[4] = sub_22817E1C0;
      aBlock[5] = v21;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_2281A2F3C;
      aBlock[3] = &block_descriptor_273;
      v22 = _Block_copy(aBlock);
      v23 = v19;

      [v8 checkIncompatibilityForSchedule:v10 completion:v22];
      _Block_release(v22);

      goto LABEL_9;
    }
  }

  [v1 showViewController:v8 sender:v1];
LABEL_9:
}

void sub_22836CBF8()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  sub_228368E1C(0, &qword_27D827C30, MEMORY[0x277D85720]);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = aBlock - v4;
  v6 = &v0[qword_27D824BF0];
  MedicationOnboardingFlowManager.makeNextViewControllerForStep()(qword_27D824BF0);
  if (!v7)
  {
    sub_2283922B0();
    v12 = sub_2283922D0();
    (*(*(v12 - 8) + 56))(v5, 0, 1, v12);
    sub_2283922A0();
    v13 = v0;
    v14 = sub_228392290();
    v15 = swift_allocObject();
    v16 = MEMORY[0x277D85700];
    v15[2] = v14;
    v15[3] = v16;
    v15[4] = v13;
    v15[5] = ObjectType;
    sub_2281DC568(0, 0, v5, &unk_2283A6530, v15);

    return;
  }

  v8 = v7;
  v9 = type metadata accessor for MedicationOnboardingFlowManager(0);
  sub_228391870();
  v10 = aBlock[0];
  if (aBlock[0])
  {
    v11 = v6[*(v9 + 28)];
    if (v11 >> 5 > 2 && v11 >> 5 == 3 && v11 == 96)
    {
      v17 = swift_allocObject();
      *(v17 + 16) = v1;
      *(v17 + 24) = v8;
      v18 = objc_allocWithZone(MEMORY[0x277D115A0]);
      v19 = v1;
      v20 = v8;
      v8 = [v18 init];
      v21 = swift_allocObject();
      v21[2] = sub_228382DC4;
      v21[3] = v17;
      v21[4] = 0;
      v21[5] = 0;
      v21[6] = v19;
      v21[7] = ObjectType;
      aBlock[4] = sub_22817E1C0;
      aBlock[5] = v21;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_2281A2F3C;
      aBlock[3] = &block_descriptor_302;
      v22 = _Block_copy(aBlock);
      v23 = v19;

      [v8 checkIncompatibilityForSchedule:v10 completion:v22];
      _Block_release(v22);

      goto LABEL_9;
    }
  }

  [v1 showViewController:v8 sender:v1];
LABEL_9:
}

void sub_22836CF1C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  sub_228368E1C(0, &qword_27D827C30, MEMORY[0x277D85720]);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = aBlock - v4;
  v6 = &v0[qword_27D824BF0];
  MedicationOnboardingFlowManager.makeNextViewControllerForStep()(qword_27D824BF0);
  if (!v7)
  {
    sub_2283922B0();
    v12 = sub_2283922D0();
    (*(*(v12 - 8) + 56))(v5, 0, 1, v12);
    sub_2283922A0();
    v13 = v0;
    v14 = sub_228392290();
    v15 = swift_allocObject();
    v16 = MEMORY[0x277D85700];
    v15[2] = v14;
    v15[3] = v16;
    v15[4] = v13;
    v15[5] = ObjectType;
    sub_2281DC568(0, 0, v5, &unk_2283A6540, v15);

    return;
  }

  v8 = v7;
  v9 = type metadata accessor for MedicationOnboardingFlowManager(0);
  sub_228391870();
  v10 = aBlock[0];
  if (aBlock[0])
  {
    v11 = v6[*(v9 + 28)];
    if (v11 >> 5 > 2 && v11 >> 5 == 3 && v11 == 96)
    {
      v17 = swift_allocObject();
      *(v17 + 16) = v1;
      *(v17 + 24) = v8;
      v18 = objc_allocWithZone(MEMORY[0x277D115A0]);
      v19 = v1;
      v20 = v8;
      v8 = [v18 init];
      v21 = swift_allocObject();
      v21[2] = sub_228382DC4;
      v21[3] = v17;
      v21[4] = 0;
      v21[5] = 0;
      v21[6] = v19;
      v21[7] = ObjectType;
      aBlock[4] = sub_22817E1C0;
      aBlock[5] = v21;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_2281A2F3C;
      aBlock[3] = &block_descriptor_328;
      v22 = _Block_copy(aBlock);
      v23 = v19;

      [v8 checkIncompatibilityForSchedule:v10 completion:v22];
      _Block_release(v22);

      goto LABEL_9;
    }
  }

  [v1 showViewController:v8 sender:v1];
LABEL_9:
}

void __swiftcall MedicationOnboardingFlowManager.makeNextViewControllerForStep()(UIViewController_optional *__return_ptr retstr)
{
  sub_228368E1C(0, &qword_27D8238D0, type metadata accessor for MedicationSearchItem);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v14[-v3];
  v5 = type metadata accessor for MedicationOnboardingFlowManager(0);
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v14[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = *(v1 + *(v6 + 28));
  sub_228373B04(&v16, &v17);
  v9 = v17;
  if (v17 <= 0xFDu)
  {
    v15 = v17;
    sub_2283743F4(&v15, v8);
    v10 = v9 >> 5;
    if (v9 >> 5 > 2)
    {
      if (v10 == 3)
      {
        if (v9 == 96)
        {
          sub_2283761D4(v8);
        }

        else
        {
          sub_22837213C(v4);
          v11 = sub_228390840();
          v12 = objc_allocWithZone(type metadata accessor for ShapeStepViewController(0));
          v13 = sub_228181260(v4, v11);
          sub_22837C1D4(97, v8, v13);
        }
      }

      else if (v10 == 4)
      {
        if (v9 == 128)
        {
          sub_2283764D4(v8);
        }

        else
        {
          sub_2283767E4(v8);
        }
      }

      else if (v9 == 160)
      {
        sub_228376B64(v8);
      }

      else
      {
        sub_228376D88(v8);
      }
    }

    else if (v10)
    {
      if (v10 == 1)
      {
        sub_228375748(v8);
      }

      else if (v9 != 64)
      {
        sub_228374FD0(v8);
      }
    }

    else
    {
      sub_2283751CC(v8);
    }

    sub_2283808C0(v8, type metadata accessor for MedicationOnboardingFlowManager);
  }
}

uint64_t sub_22836D4B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v6 = sub_2283911B0();
  v5[5] = v6;
  v5[6] = *(v6 - 8);
  v5[7] = swift_task_alloc();
  sub_2283922A0();
  v5[8] = sub_228392290();
  v8 = sub_228392250();
  v5[9] = v8;
  v5[10] = v7;

  return MEMORY[0x2822009F8](sub_22836D5A4, v8, v7);
}

uint64_t sub_22836D5A4()
{
  v1 = [*(v0 + 24) buttonTray];
  [v1 showButtonsBusy];

  *(v0 + 88) = sub_228390890();
  sub_228390880();
  sub_228390840();

  *(v0 + 96) = sub_228390660();

  *(v0 + 104) = qword_27D824BF0;
  v2 = swift_task_alloc();
  *(v0 + 112) = v2;
  *v2 = v0;
  v2[1] = sub_22836D6B8;

  return sub_22836DF24();
}

uint64_t sub_22836D6B8()
{
  v2 = *v1;
  *(*v1 + 120) = v0;

  v3 = *(v2 + 80);
  v4 = *(v2 + 72);
  if (v0)
  {
    v5 = sub_228382D90;
  }

  else
  {
    v5 = sub_228382D94;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_22836D7F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v6 = sub_2283911B0();
  v5[5] = v6;
  v5[6] = *(v6 - 8);
  v5[7] = swift_task_alloc();
  sub_2283922A0();
  v5[8] = sub_228392290();
  v8 = sub_228392250();
  v5[9] = v8;
  v5[10] = v7;

  return MEMORY[0x2822009F8](sub_22836D8E8, v8, v7);
}

uint64_t sub_22836D8E8()
{
  v1 = [*(v0 + 24) buttonTray];
  [v1 showButtonsBusy];

  *(v0 + 88) = sub_228390890();
  sub_228390880();
  sub_228390840();

  *(v0 + 96) = sub_228390660();

  *(v0 + 104) = qword_27D824BF0;
  v2 = swift_task_alloc();
  *(v0 + 112) = v2;
  *v2 = v0;
  v2[1] = sub_22836D9FC;

  return sub_22836DF24();
}

uint64_t sub_22836D9FC()
{
  v2 = *v1;
  *(*v1 + 120) = v0;

  v3 = *(v2 + 80);
  v4 = *(v2 + 72);
  if (v0)
  {
    v5 = sub_22836DCB0;
  }

  else
  {
    v5 = sub_22836DB38;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_22836DB38()
{

  sub_22837053C();
  sub_228390880();
  sub_228390830();

  sub_22817A958(0, &qword_280DDBAF0, 0x277CBEBD0);
  sub_2283925F0();
  sub_2283907E0();
  swift_allocObject();
  sub_228390700();
  if ((sub_228390750() & 1) == 0)
  {
    type metadata accessor for MedicationOnboardingFlowManager(0);
    sub_228390760();
  }

  v1 = v0[12];
  v2 = v0[3];

  sub_228382948(v1);

  [v2 dismissViewControllerAnimated:1 completion:0];
  v3 = [v2 buttonTray];
  [v3 showButtonsAvailable];

  v4 = v0[1];

  return v4();
}

uint64_t sub_22836DCB0()
{
  v24 = v0;
  v1 = *(v0 + 120);

  sub_228391150();
  v2 = v1;
  v3 = sub_2283911A0();
  v4 = sub_2283925C0();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 120);
    v6 = *(v0 + 48);
    v22 = *(v0 + 56);
    v7 = *(v0 + 40);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v23 = v9;
    *v8 = 136446722;
    v10 = sub_228393600();
    v12 = sub_2281C96FC(v10, v11, &v23);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2082;
    *(v8 + 14) = sub_2281C96FC(0xD000000000000023, 0x80000002283AAC50, &v23);
    *(v8 + 22) = 2080;
    *(v0 + 16) = v5;
    v13 = v5;
    sub_22818217C(0, &qword_280DDB860, MEMORY[0x277D84948], 1);
    v14 = sub_228392020();
    v16 = sub_2281C96FC(v14, v15, &v23);

    *(v8 + 24) = v16;
    _os_log_impl(&dword_22816B000, v3, v4, "[%{public}s.%{public}s]: Failed to save medication with %s", v8, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x22AAB7B80](v9, -1, -1);
    MEMORY[0x22AAB7B80](v8, -1, -1);

    (*(v6 + 8))(v22, v7);
  }

  else
  {
    v18 = *(v0 + 48);
    v17 = *(v0 + 56);
    v19 = *(v0 + 40);

    (*(v18 + 8))(v17, v19);
  }

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_22836DF24()
{
  v1[35] = v0;
  v2 = sub_2283911B0();
  v1[36] = v2;
  v1[37] = *(v2 - 8);
  v1[38] = swift_task_alloc();
  v1[39] = swift_task_alloc();
  v1[40] = swift_task_alloc();
  v1[41] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22836E008, 0, 0);
}

uint64_t sub_22836E008()
{
  type metadata accessor for MedicationOnboardingFlowManager(0);
  v1 = sub_228390820();
  v0[42] = v1;
  v0[43] = sub_228390840();
  v2 = MedicationOnboardingFlowManager.currentMedicationUDC.getter();
  v0[44] = v2;
  v3 = v2;
  v4 = [v3 semanticIdentifier];
  v0[45] = [v4 healthConceptIdentifier];

  v5 = MedicationOnboardingFlowManager.currentMedicationUDC.getter();
  sub_22837827C(v5);

  v6 = [v3 firstConceptIdentifier];
  v0[46] = v6;
  if (v6)
  {
    v7 = v6;
    v8 = [v3 propertyCollection];

    if (v8)
    {
      v9 = [v8 properties];

      if (!v9)
      {
        sub_22817A958(0, &qword_27D823928, 0x277CCDB20);
        sub_2283921A0();
        v9 = sub_228392190();
      }
    }

    else
    {
      v9 = 0;
    }

    v10 = v0 + 10;
    v0[47] = v9;
    v13 = [objc_opt_self() medicationUserDomainConceptTypeIdentifier];
    v0[48] = v13;
    v0[10] = v0;
    v0[15] = v0 + 34;
    v0[11] = sub_22836E374;
    v14 = swift_continuation_init();
    sub_228380920(0, &qword_27D8285B0, &qword_27D824A30, 0x277CCDAF0, sub_22817A958);
    v0[33] = v15;
    v0[26] = MEMORY[0x277D85DD0];
    v0[27] = 1107296256;
    v0[28] = sub_228378AB0;
    v0[29] = &block_descriptor_23;
    v0[30] = v14;
    [v1 insertNewUserDomainConceptBackedByOntologyConceptWithIdentifier:v7 supplementaryProperties:v9 userDomainConceptTypeIdentifier:v13 completion:v0 + 26];
  }

  else
  {

    v10 = v0 + 2;
    v0[2] = v0;
    v0[3] = sub_22836EC28;
    v11 = swift_continuation_init();
    sub_2281E0600(0);
    v0[25] = v12;
    v0[18] = MEMORY[0x277D85DD0];
    v0[19] = 1107296256;
    v0[20] = sub_2282B4368;
    v0[21] = &block_descriptor_31;
    v0[22] = v11;
    [v1 saveOrUpdateUserDomainConcept:v3 completion:v0 + 18];
  }

  return MEMORY[0x282200938](v10);
}

uint64_t sub_22836E374()
{
  v1 = *(*v0 + 112);
  *(*v0 + 392) = v1;
  if (v1)
  {
    v2 = sub_22836F420;
  }

  else
  {
    v2 = sub_22836E484;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22836E484()
{
  v2 = v0[47];
  v1 = v0[48];
  v3 = v0[34];
  v0[50] = v3;
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  v0[51] = v4;

  if (v4)
  {
    v5 = v0[43];
    v6 = swift_task_alloc();
    v0[52] = v6;
    *(v6 + 16) = v5;
    *(v6 + 24) = v4;
    v7 = swift_task_alloc();
    v0[53] = v7;
    *v7 = v0;
    v7[1] = sub_22836E624;
    v8 = MEMORY[0x277D839B0];

    return MEMORY[0x2822007B8](v0 + 521, 0, 0, 0xD00000000000001ELL, 0x80000002283B39E0, sub_228382DD8, v6, v8);
  }

  else
  {

    return sub_228393300();
  }
}

uint64_t sub_22836E624()
{

  return MEMORY[0x2822009F8](sub_22836E73C, 0, 0);
}

uint64_t sub_22836E73C(uint64_t a1)
{
  v14 = v1;
  if ((*(v1 + 521) & 1) == 0)
  {
    sub_228391190();
    v2 = sub_2283911A0();
    v3 = sub_2283925C0();
    v4 = os_log_type_enabled(v2, v3);
    v5 = *(v1 + 328);
    v6 = *(v1 + 288);
    v7 = *(v1 + 296);
    if (v4)
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v13 = v9;
      *v8 = 136315138;
      *(v8 + 4) = sub_2281C96FC(0xD00000000000001FLL, 0x80000002283A6420, &v13);
      _os_log_impl(&dword_22816B000, v2, v3, "[%s] Failed to add medication to active list", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v9);
      MEMORY[0x22AAB7B80](v9, -1, -1);
      MEMORY[0x22AAB7B80](v8, -1, -1);
    }

    (*(v7 + 8))(v5, v6);
  }

  v10 = swift_task_alloc();
  *(v1 + 432) = v10;
  *v10 = v1;
  v10[1] = sub_22836E8E4;
  v11 = *(v1 + 408);

  return sub_228378B90(v11);
}

uint64_t sub_22836E8E4()
{
  v2 = *v1;
  v2[55] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_22836F69C, 0, 0);
  }

  else
  {
    v3 = swift_task_alloc();
    v2[56] = v3;
    *v3 = v2;
    v3[1] = sub_22836EA58;
    v4 = v2[45];

    return sub_228379368(v4);
  }
}

uint64_t sub_22836EA58()
{
  *(*v1 + 456) = v0;

  if (v0)
  {
    v2 = sub_22836F90C;
  }

  else
  {
    v2 = sub_22836EB6C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22836EB6C()
{
  v1 = *(v0 + 400);
  v2 = *(v0 + 360);
  v3 = *(v0 + 352);
  v4 = *(v0 + 336);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_22836EC28()
{
  v1 = *(*v0 + 48);
  *(*v0 + 464) = v1;
  if (v1)
  {
    v2 = sub_22836FB7C;
  }

  else
  {
    v2 = sub_22836ED38;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22836ED38()
{
  v1 = swift_task_alloc();
  *(v0 + 472) = v1;
  *(v1 + 16) = *(v0 + 344);
  v2 = swift_task_alloc();
  *(v0 + 480) = v2;
  *v2 = v0;
  v2[1] = sub_22836EE34;
  v3 = MEMORY[0x277D839B0];

  return MEMORY[0x2822007B8](v0 + 520, 0, 0, 0xD00000000000001ELL, 0x80000002283B39E0, sub_228309460, v1, v3);
}

uint64_t sub_22836EE34()
{

  return MEMORY[0x2822009F8](sub_22836EF4C, 0, 0);
}

uint64_t sub_22836EF4C(uint64_t a1)
{
  v14 = v1;
  if ((*(v1 + 520) & 1) == 0)
  {
    sub_228391190();
    v2 = sub_2283911A0();
    v3 = sub_2283925C0();
    v4 = os_log_type_enabled(v2, v3);
    v5 = *(v1 + 320);
    v6 = *(v1 + 288);
    v7 = *(v1 + 296);
    if (v4)
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v13 = v9;
      *v8 = 136315138;
      *(v8 + 4) = sub_2281C96FC(0xD00000000000001FLL, 0x80000002283A6420, &v13);
      _os_log_impl(&dword_22816B000, v2, v3, "[%s] Failed to add medication to active list", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v9);
      MEMORY[0x22AAB7B80](v9, -1, -1);
      MEMORY[0x22AAB7B80](v8, -1, -1);
    }

    (*(v7 + 8))(v5, v6);
  }

  v10 = swift_task_alloc();
  *(v1 + 488) = v10;
  *v10 = v1;
  v10[1] = sub_22836F0F4;
  v11 = *(v1 + 352);

  return sub_228378B90(v11);
}

uint64_t sub_22836F0F4()
{
  v2 = *v1;
  v2[62] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_22836FDDC, 0, 0);
  }

  else
  {
    v3 = swift_task_alloc();
    v2[63] = v3;
    *v3 = v2;
    v3[1] = sub_22836F268;
    v4 = v2[45];

    return sub_228379368(v4);
  }
}

uint64_t sub_22836F268()
{
  *(*v1 + 512) = v0;

  if (v0)
  {
    v2 = sub_228370034;
  }

  else
  {
    v2 = sub_22836F37C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22836F37C()
{
  v1 = *(v0 + 352);
  v2 = *(v0 + 336);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_22836F420(uint64_t a1)
{
  v27 = v1;
  v2 = *(v1 + 384);
  v3 = *(v1 + 376);
  swift_willThrow();

  v4 = *(v1 + 392);
  sub_228391190();
  v5 = v4;
  v6 = sub_2283911A0();
  v7 = sub_2283925C0();

  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v1 + 360);
  v10 = *(v1 + 368);
  v11 = *(v1 + 336);
  v12 = *(v1 + 312);
  v14 = *(v1 + 288);
  v13 = *(v1 + 296);
  if (v8)
  {
    v24 = *(v1 + 352);
    v25 = *(v1 + 312);
    v15 = swift_slowAlloc();
    v22 = v11;
    v16 = swift_slowAlloc();
    v23 = v14;
    v17 = swift_slowAlloc();
    v26 = v17;
    *v15 = 136315394;
    *(v15 + 4) = sub_2281C96FC(0xD00000000000001FLL, 0x80000002283A6420, &v26);
    *(v15 + 12) = 2112;
    v18 = v4;
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v15 + 14) = v19;
    *v16 = v19;
    _os_log_impl(&dword_22816B000, v6, v7, "[%s] Failed to save ontology-backed medication with error: '%@'", v15, 0x16u);
    sub_228193354(v16);
    MEMORY[0x22AAB7B80](v16, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v17);
    MEMORY[0x22AAB7B80](v17, -1, -1);
    MEMORY[0x22AAB7B80](v15, -1, -1);

    (*(v13 + 8))(v25, v23);
  }

  else
  {

    (*(v13 + 8))(v12, v14);
  }

  v20 = *(v1 + 8);

  return v20();
}

uint64_t sub_22836F69C()
{
  v24 = v0;

  v1 = *(v0 + 440);
  sub_228391190();
  v2 = v1;
  v3 = sub_2283911A0();
  v4 = sub_2283925C0();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 360);
  v7 = *(v0 + 368);
  v8 = *(v0 + 336);
  v9 = *(v0 + 312);
  v11 = *(v0 + 288);
  v10 = *(v0 + 296);
  if (v5)
  {
    v21 = *(v0 + 352);
    v22 = *(v0 + 312);
    v12 = swift_slowAlloc();
    v19 = v8;
    v13 = swift_slowAlloc();
    v20 = v11;
    v14 = swift_slowAlloc();
    v23 = v14;
    *v12 = 136315394;
    *(v12 + 4) = sub_2281C96FC(0xD00000000000001FLL, 0x80000002283A6420, &v23);
    *(v12 + 12) = 2112;
    v15 = v1;
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 14) = v16;
    *v13 = v16;
    _os_log_impl(&dword_22816B000, v3, v4, "[%s] Failed to save ontology-backed medication with error: '%@'", v12, 0x16u);
    sub_228193354(v13);
    MEMORY[0x22AAB7B80](v13, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x22AAB7B80](v14, -1, -1);
    MEMORY[0x22AAB7B80](v12, -1, -1);

    (*(v10 + 8))(v22, v20);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_22836F90C()
{
  v24 = v0;

  v1 = *(v0 + 456);
  sub_228391190();
  v2 = v1;
  v3 = sub_2283911A0();
  v4 = sub_2283925C0();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 360);
  v7 = *(v0 + 368);
  v8 = *(v0 + 336);
  v9 = *(v0 + 312);
  v11 = *(v0 + 288);
  v10 = *(v0 + 296);
  if (v5)
  {
    v21 = *(v0 + 352);
    v22 = *(v0 + 312);
    v12 = swift_slowAlloc();
    v19 = v8;
    v13 = swift_slowAlloc();
    v20 = v11;
    v14 = swift_slowAlloc();
    v23 = v14;
    *v12 = 136315394;
    *(v12 + 4) = sub_2281C96FC(0xD00000000000001FLL, 0x80000002283A6420, &v23);
    *(v12 + 12) = 2112;
    v15 = v1;
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 14) = v16;
    *v13 = v16;
    _os_log_impl(&dword_22816B000, v3, v4, "[%s] Failed to save ontology-backed medication with error: '%@'", v12, 0x16u);
    sub_228193354(v13);
    MEMORY[0x22AAB7B80](v13, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x22AAB7B80](v14, -1, -1);
    MEMORY[0x22AAB7B80](v12, -1, -1);

    (*(v10 + 8))(v22, v20);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_22836FB7C(uint64_t a1)
{
  v24 = v1;
  swift_willThrow();
  v2 = *(v1 + 464);
  sub_228391190();
  v3 = v2;
  v4 = sub_2283911A0();
  v5 = sub_2283925C0();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v1 + 360);
  v8 = *(v1 + 336);
  v9 = *(v1 + 296);
  v10 = *(v1 + 304);
  v11 = *(v1 + 288);
  if (v6)
  {
    v21 = *(v1 + 352);
    v22 = *(v1 + 304);
    v12 = swift_slowAlloc();
    v19 = v8;
    v13 = swift_slowAlloc();
    v20 = v11;
    v14 = swift_slowAlloc();
    v23 = v14;
    *v12 = 136315394;
    *(v12 + 4) = sub_2281C96FC(0xD00000000000001FLL, 0x80000002283A6420, &v23);
    *(v12 + 12) = 2112;
    v15 = v2;
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 14) = v16;
    *v13 = v16;
    _os_log_impl(&dword_22816B000, v4, v5, "[%s] Failed to save manual medication with error: '%@'", v12, 0x16u);
    sub_228193354(v13);
    MEMORY[0x22AAB7B80](v13, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x22AAB7B80](v14, -1, -1);
    MEMORY[0x22AAB7B80](v12, -1, -1);

    (*(v9 + 8))(v22, v20);
  }

  else
  {

    (*(v9 + 8))(v10, v11);
  }

  v17 = *(v1 + 8);

  return v17();
}

uint64_t sub_22836FDDC(uint64_t a1)
{
  v24 = v1;
  v2 = *(v1 + 496);
  sub_228391190();
  v3 = v2;
  v4 = sub_2283911A0();
  v5 = sub_2283925C0();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v1 + 360);
  v8 = *(v1 + 336);
  v9 = *(v1 + 296);
  v10 = *(v1 + 304);
  v11 = *(v1 + 288);
  if (v6)
  {
    v21 = *(v1 + 352);
    v22 = *(v1 + 304);
    v12 = swift_slowAlloc();
    v19 = v8;
    v13 = swift_slowAlloc();
    v20 = v11;
    v14 = swift_slowAlloc();
    v23 = v14;
    *v12 = 136315394;
    *(v12 + 4) = sub_2281C96FC(0xD00000000000001FLL, 0x80000002283A6420, &v23);
    *(v12 + 12) = 2112;
    v15 = v2;
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 14) = v16;
    *v13 = v16;
    _os_log_impl(&dword_22816B000, v4, v5, "[%s] Failed to save manual medication with error: '%@'", v12, 0x16u);
    sub_228193354(v13);
    MEMORY[0x22AAB7B80](v13, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x22AAB7B80](v14, -1, -1);
    MEMORY[0x22AAB7B80](v12, -1, -1);

    (*(v9 + 8))(v22, v20);
  }

  else
  {

    (*(v9 + 8))(v10, v11);
  }

  v17 = *(v1 + 8);

  return v17();
}

uint64_t sub_228370034(uint64_t a1)
{
  v24 = v1;
  v2 = *(v1 + 512);
  sub_228391190();
  v3 = v2;
  v4 = sub_2283911A0();
  v5 = sub_2283925C0();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v1 + 360);
  v8 = *(v1 + 336);
  v9 = *(v1 + 296);
  v10 = *(v1 + 304);
  v11 = *(v1 + 288);
  if (v6)
  {
    v21 = *(v1 + 352);
    v22 = *(v1 + 304);
    v12 = swift_slowAlloc();
    v19 = v8;
    v13 = swift_slowAlloc();
    v20 = v11;
    v14 = swift_slowAlloc();
    v23 = v14;
    *v12 = 136315394;
    *(v12 + 4) = sub_2281C96FC(0xD00000000000001FLL, 0x80000002283A6420, &v23);
    *(v12 + 12) = 2112;
    v15 = v2;
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 14) = v16;
    *v13 = v16;
    _os_log_impl(&dword_22816B000, v4, v5, "[%s] Failed to save manual medication with error: '%@'", v12, 0x16u);
    sub_228193354(v13);
    MEMORY[0x22AAB7B80](v13, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x22AAB7B80](v14, -1, -1);
    MEMORY[0x22AAB7B80](v12, -1, -1);

    (*(v9 + 8))(v22, v20);
  }

  else
  {

    (*(v9 + 8))(v10, v11);
  }

  v17 = *(v1 + 8);

  return v17();
}

void sub_22837028C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = [v2 navigationItem];
  v5 = [v4 rightBarButtonItem];

  if (v5)
  {

    MEMORY[0x22AAB5C80](0x614274686769522ELL, 0xEF6E6F7474754272);
    v6 = sub_228391FC0();

    [v5 setAccessibilityIdentifier_];
  }

  v7 = [v3 navigationItem];
  v8 = [v7 backBarButtonItem];

  if (v8)
  {

    MEMORY[0x22AAB5C80](0x7261426B6361422ELL, 0xEE006E6F74747542);
    v9 = sub_228391FC0();

    [v8 setAccessibilityIdentifier_];
  }

  v10 = [v3 navigationItem];
  v11 = [v10 leftBarButtonItem];

  if (v11)
  {

    MEMORY[0x22AAB5C80](0x7261427466654C2ELL, 0xEE006E6F74747542);
    v12 = sub_228391FC0();

    [v11 setAccessibilityIdentifier_];
  }

  v13 = [v3 editButtonItem];

  MEMORY[0x22AAB5C80](0x747542746964452ELL, 0xEB000000006E6F74);
  v14 = sub_228391FC0();

  [v13 setAccessibilityIdentifier_];
}

void sub_22837053C()
{
  swift_getObjectType();
  v0 = sub_2283911B0();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228391150();
  v4 = sub_2283911A0();
  v5 = sub_2283925A0();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v25[0] = v7;
    *v6 = 136446210;
    v8 = sub_228393600();
    v10 = sub_2281C96FC(v8, v9, v25);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_22816B000, v4, v5, "[%{public}s]: Submitting Tips Discoverability Signal", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x22AAB7B80](v7, -1, -1);
    MEMORY[0x22AAB7B80](v6, -1, -1);
  }

  (*(v1 + 8))(v3, v0);
  v11 = [BiomeLibrary() Discoverability];
  swift_unknownObjectRelease();
  v12 = [v11 Signals];
  swift_unknownObjectRelease();
  v13 = [v12 source];
  v14 = *MEMORY[0x277CCE3A8];
  v15 = sub_228391FC0();
  v16 = MGGetStringAnswer();
  if (v16)
  {
    v17 = v16;
    v18 = sub_228392000();
    v20 = v19;

    v25[0] = 760434537;
    v25[1] = 0xE400000000000000;
    MEMORY[0x22AAB5C80](v18, v20);

    v21 = objc_allocWithZone(MEMORY[0x277CF1168]);
    v22 = sub_228391FC0();
    v23 = sub_228391FC0();

    v24 = [v21 initWithContentIdentifier:v22 context:v14 osBuild:v23 userInfo:0];

    [v13 sendEvent_];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_22837087C(int a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    for (result = 0; v2 != result; ++result)
    {
      v5 = *(a2 + 32 + result);
      v6 = v5 >> 5;
      if (v5 >> 5 > 2)
      {
        if (v6 == 3)
        {
          if (v5 == 96)
          {
            if (a1 == 96)
            {
              return result;
            }
          }

          else if (a1 == 97)
          {
            return result;
          }
        }

        else if (v6 == 4)
        {
          if (v5 == 128)
          {
            if (a1 == 128)
            {
              return result;
            }
          }

          else if (a1 == 129)
          {
            return result;
          }
        }

        else if (v5 == 160)
        {
          if (a1 == 160)
          {
            return result;
          }
        }

        else if (a1 == 161)
        {
          return result;
        }
      }

      else
      {
        if (!v6)
        {
          if (a1 > 0x1Fu)
          {
            continue;
          }

          goto LABEL_16;
        }

        if (v6 == 1)
        {
          if ((a1 & 0xE0) != 0x20)
          {
            continue;
          }

LABEL_16:
          if (((v5 ^ a1) & 1) == 0)
          {
            return result;
          }

          continue;
        }

        if (v5 == 64)
        {
          if (a1 == 64)
          {
            return result;
          }
        }

        else if (a1 == 65)
        {
          return result;
        }
      }
    }
  }

  return 0;
}

uint64_t MedicationOnboardingFlowManager.init(entryMode:currentStep:didShowLifeStyleFactors:sourcesWithExistingAuthorizationsPublisher:analyticsContext:analyticsEntryMode:)@<X0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v61 = a5;
  v62 = a6;
  v60 = a4;
  v63 = a3;
  v58 = a1;
  v9 = type metadata accessor for MedicationOnboardingFlowManager(0);
  v55 = *(v9 - 1);
  MEMORY[0x28223BE20](v9);
  v56 = v10;
  v57 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228368E1C(0, &qword_27D827C30, MEMORY[0x277D85720]);
  MEMORY[0x28223BE20](v11 - 8);
  v54 = &v54 - v12;
  sub_228368E1C(0, &qword_280DDBD20, MEMORY[0x277D116C8]);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v54 - v14;
  sub_228368E1C(0, &qword_27D8238A8, MEMORY[0x277D11640]);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v54 - v17;
  sub_228368E1C(0, &unk_27D827790, type metadata accessor for FormStepResult);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v54 - v20;
  v22 = MEMORY[0x277CC95F0];
  sub_228368E1C(0, &qword_27D827160, MEMORY[0x277CC95F0]);
  MEMORY[0x28223BE20](v23 - 8);
  v25 = &v54 - v24;
  v59 = *a2;
  v26 = v9[9];
  v27 = sub_22838F4A0();
  (*(*(v27 - 8) + 56))(v25, 1, 1, v27);
  sub_228380330(0, &qword_27D8277A0, &qword_27D827160, v22);
  swift_allocObject();
  *(a7 + v26) = sub_228391890();
  v28 = v9[10];
  *&v64 = 0;
  sub_2283802B0(0, &qword_27D8277A8, &unk_27D8277B0, &qword_27D823BD8, 0x277CCD1B0);
  swift_allocObject();
  *(a7 + v28) = sub_228391890();
  v29 = v9[11];
  LOBYTE(v64) = 0;
  sub_228380CDC(0, &qword_27D8277C0, MEMORY[0x277CBCE30]);
  swift_allocObject();
  *(a7 + v29) = sub_228391890();
  v30 = v9[12];
  v31 = type metadata accessor for FormStepResult(0);
  (*(*(v31 - 8) + 56))(v21, 1, 1, v31);
  sub_228212A9C(0);
  swift_allocObject();
  *(a7 + v30) = sub_228391890();
  v32 = v9[13];
  sub_228380234(0, &qword_27D8277D0, &qword_27D825070, MEMORY[0x277D837D0]);
  v64 = 0uLL;
  swift_allocObject();
  *(a7 + v32) = sub_228391890();
  v33 = v9[14];
  v64 = 0uLL;
  swift_allocObject();

  *(a7 + v33) = sub_228391890();
  v34 = v58;
  v35 = v9[15];
  *&v64 = 0;
  sub_2283802B0(0, &qword_27D8277E0, &qword_27D826008, &qword_27D8277F0, 0x277CCDAB0);
  swift_allocObject();
  *(a7 + v35) = sub_228391890();
  v36 = v9[16];
  v37 = sub_2283909E0();
  (*(*(v37 - 8) + 56))(v18, 1, 1, v37);
  sub_228181EDC(0);
  swift_allocObject();
  *(a7 + v36) = sub_228391890();
  v38 = v9[17];
  v39 = sub_228390D50();
  (*(*(v39 - 8) + 56))(v15, 1, 1, v39);
  sub_2281E4AF0(0);
  swift_allocObject();
  v40 = v60;
  *(a7 + v38) = sub_228391890();
  v41 = v9[18];
  sub_228380234(0, &qword_27D827808, &qword_27D827810, &type metadata for MedicationNicknameNotes);
  v64 = 0u;
  v65 = 0u;
  swift_allocObject();
  *(a7 + v41) = sub_228391890();
  v42 = v9[19];
  *&v64 = 0;
  sub_2283802B0(0, &qword_27D8245A0, &qword_280DDBA60, &unk_280DDBA68, 0x277D11570);
  swift_allocObject();
  *(a7 + v42) = sub_228391890();
  v43 = v9[21];
  *&v64 = 0;
  sub_22829C0BC(0);
  swift_allocObject();
  *(a7 + v43) = sub_228391890();
  v44 = v9[22];
  sub_228390890();
  *(a7 + v44) = sub_228390880();
  sub_228380F74(v34, a7, type metadata accessor for MedicationOnboardingFlowManager.EntryMode);
  *(a7 + v9[7]) = v59;
  *(a7 + v9[5]) = v61;

  v45 = v62;
  sub_228390DF0();

  *(a7 + v9[6]) = v45;
  *(a7 + v9[8]) = v63 & 1;
  *&v64 = sub_228371268();
  *(&v64 + 1) = v46;
  sub_228391850();

  if (v40)
  {
    *(a7 + v9[20]) = v40;
  }

  else
  {
    *&v64 = 0;
    sub_2283803B8(0);
    swift_allocObject();
    *(a7 + v9[20]) = sub_228391890();
  }

  sub_228391870();
  if (v64)
  {
  }

  else
  {
    v47 = sub_2283922D0();
    v48 = v54;
    (*(*(v47 - 8) + 56))(v54, 1, 1, v47);
    v49 = a7;
    v50 = v57;
    sub_228380F74(v49, v57, type metadata accessor for MedicationOnboardingFlowManager);
    v51 = (*(v55 + 80) + 32) & ~*(v55 + 80);
    v52 = swift_allocObject();
    *(v52 + 16) = 0;
    *(v52 + 24) = 0;
    sub_228381EB4(v50, v52 + v51, type metadata accessor for MedicationOnboardingFlowManager);
    sub_2281DC568(0, 0, v48, &unk_2283A3060, v52);
  }

  return sub_2283808C0(v34, type metadata accessor for MedicationOnboardingFlowManager.EntryMode);
}

uint64_t sub_228371268()
{
  v1 = v0;
  v2 = sub_228390B70();
  v39 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for MedicationSearchItem.Source(0);
  v6 = MEMORY[0x28223BE20](v5);
  v8 = (&v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6);
  v10 = (&v38 - v9);
  v11 = type metadata accessor for MedicationSearchItem(0);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v38 - v15;
  v17 = type metadata accessor for MedicationOnboardingFlowManager.EntryMode(0);
  MEMORY[0x28223BE20](v17);
  v19 = &v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228380F74(v1, v19, type metadata accessor for MedicationOnboardingFlowManager.EntryMode);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v24 = *v19;
      sub_2282FEBEC(0);
      v26 = *(v25 + 48);
      v22 = sub_228392E90();

      v27 = sub_22838F4A0();
      (*(*(v27 - 8) + 8))(&v19[v26], v27);
    }

    else
    {
      return *v19;
    }
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      sub_228381EB4(v19, v14, type metadata accessor for MedicationSearchItem);
      sub_228380F74(v14, v8, type metadata accessor for MedicationSearchItem.Source);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        v33 = *v8;
        sub_22818DE38(0);
        v35 = *(v34 + 48);
        v22 = sub_228392E30();

        sub_2283808C0(v14, type metadata accessor for MedicationSearchItem);
        v36 = sub_228390C30();
        (*(*(v36 - 8) + 8))(v8 + v35, v36);
        return v22;
      }

      v28 = v39;
      (*(v39 + 32))(v4, v8, v2);
      v22 = sub_228390B30();
      (*(v28 + 8))(v4, v2);
      v23 = v14;
    }

    else
    {
      sub_228381EB4(v19, v16, type metadata accessor for MedicationSearchItem);
      sub_228380F74(v16, v10, type metadata accessor for MedicationSearchItem.Source);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        v29 = *v10;
        sub_22818DE38(0);
        v31 = *(v30 + 48);
        v22 = sub_228392E30();

        sub_2283808C0(v16, type metadata accessor for MedicationSearchItem);
        v32 = sub_228390C30();
        (*(*(v32 - 8) + 8))(v10 + v31, v32);
        return v22;
      }

      v21 = v39;
      (*(v39 + 32))(v4, v10, v2);
      v22 = sub_228390B30();
      (*(v21 + 8))(v4, v2);
      v23 = v16;
    }

    sub_2283808C0(v23, type metadata accessor for MedicationSearchItem);
  }

  return v22;
}

uint64_t MedicationOnboardingFlowManager.analyticsContext.getter()
{
  type metadata accessor for MedicationOnboardingFlowManager(0);
}

uint64_t MedicationOnboardingFlowManager.analyticsContext.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MedicationOnboardingFlowManager(0) + 20);

  *(v1 + v3) = a1;
  return result;
}

uint64_t MedicationOnboardingFlowManager.analyticsEntryMode.setter(uint64_t a1)
{
  result = type metadata accessor for MedicationOnboardingFlowManager(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t MedicationOnboardingFlowManager.currentStep.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for MedicationOnboardingFlowManager(0);
  *a1 = *(v1 + *(result + 28));
  return result;
}

uint64_t MedicationOnboardingFlowManager.conceptPublisher.getter()
{
  type metadata accessor for MedicationOnboardingFlowManager(0);
}

uint64_t MedicationOnboardingFlowManager.proceededManuallyPublisher.getter()
{
  type metadata accessor for MedicationOnboardingFlowManager(0);
}

uint64_t sub_228371958()
{
  sub_228390890();
  sub_228390880();
  sub_228390830();

  sub_22817A958(0, &qword_280DDBAF0, 0x277CBEBD0);
  sub_2283925F0();
  sub_2283907E0();
  swift_allocObject();
  sub_228390700();
  sub_228382CF4(0, &qword_27D8286E8, MEMORY[0x277D839B0], MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_228398270;
  *(inited + 32) = sub_228390770() & 1;
  *(inited + 33) = sub_2283907C0() & 1;
  v1 = sub_228390790();
  *(inited + 34) = v1 & 1;
  if (*(inited + 32))
  {
    v2 = 0;
  }

  else
  {
    v2 = (*(inited + 33) | v1) ^ 1;
  }

  type metadata accessor for MedicationOnboardingFlowManager(0);
  sub_228390840();
  v3 = sub_228390660();

  if (v3 >> 62)
  {
    v4 = sub_2283930D0();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if ([objc_opt_self() supportsOntologyBackedMedications] && (sub_228391870(), v8))
  {

    if ((v2 & 1) != 0 && (sub_228390750() & 1) == 0)
    {

      v6 = 1;
    }

    else
    {
      v5 = sub_2283907B0();

      v6 = v5 | (v4 == 0);
    }
  }

  else
  {

    v6 = 0;
  }

  return v6 & 1;
}

id sub_228371B8C()
{
  v52 = *MEMORY[0x277D85DE8];
  if (!*(v0 + *(type metadata accessor for MedicationOnboardingFlowManager(0) + 80)))
  {
    return 0;
  }

  sub_228391870();
  v1 = v51;
  if (!v51)
  {
    return 0;
  }

  v48 = v51;
  if ((v51 & 0xC000000000000001) != 0)
  {
    v2 = MEMORY[0x277D84FA0];
    v51 = MEMORY[0x277D84FA0];

    v3 = sub_228393080();
    v4 = sub_228393100();
    if (v4)
    {
      v5 = v4;
      sub_22817A958(0, &qword_27D824240, 0x277CCDA00);
      v6 = v5;
      do
      {
        v49 = v6;
        swift_dynamicCast();
        if (![v50 _isApplication])
        {
          goto LABEL_15;
        }

        v13 = [objc_opt_self() defaultWorkspace];
        if (!v13)
        {
          __break(1u);
        }

        v14 = v13;
        v15 = [v50 bundleIdentifier];
        if (!v15)
        {
          sub_228392000();
          v15 = sub_228391FC0();
        }

        v16 = [v14 applicationIsInstalled_];

        if ((v16 & 1) == 0)
        {
        }

        else
        {
LABEL_15:
          v1 = v50;
          v17 = v2[2];
          if (v2[3] <= v17)
          {
            sub_2282D6DFC(v17 + 1);
          }

          v2 = v51;
          v7 = sub_228392C50();
          v8 = (v51 + 56);
          v9 = -1 << *(v51 + 32);
          v10 = v7 & ~v9;
          v11 = v10 >> 6;
          if (((-1 << v10) & ~*(v51 + 56 + 8 * (v10 >> 6))) != 0)
          {
            v12 = __clz(__rbit64((-1 << v10) & ~*(v51 + 56 + 8 * (v10 >> 6)))) | v10 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v18 = 0;
            v19 = (63 - v9) >> 6;
            do
            {
              if (++v11 == v19 && (v18 & 1) != 0)
              {
                __break(1u);
                goto LABEL_53;
              }

              v20 = v11 == v19;
              if (v11 == v19)
              {
                v11 = 0;
              }

              v18 |= v20;
              v21 = *&v8[8 * v11];
            }

            while (v21 == -1);
            v12 = __clz(__rbit64(~v21)) + (v11 << 6);
          }

          *&v8[(v12 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v12;
          *(v2[6] + 8 * v12) = v1;
          ++v2[2];
        }

        v6 = sub_228393100();
      }

      while (v6);
    }

    goto LABEL_49;
  }

  v23 = *(v51 + 32);
  v24 = v23 & 0x3F;
  v46 = ((1 << v23) + 63) >> 6;
  v3 = 8 * v46;

  if (v24 > 0xD)
  {
    goto LABEL_54;
  }

  while (2)
  {
    v45[1] = v45;
    MEMORY[0x28223BE20](v25);
    v26 = v45 - ((v3 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v26, v3);
    v47 = 0;
    v27 = 0;
    v28 = v1 + 56;
    v29 = 1 << v1[32];
    v30 = -1;
    if (v29 < 64)
    {
      v30 = ~(-1 << v29);
    }

    v31 = v30 & *(v1 + 7);
    v32 = (v29 + 63) >> 6;
    while (v31)
    {
      v34 = __clz(__rbit64(v31));
      v31 &= v31 - 1;
LABEL_40:
      v3 = v34 | (v27 << 6);
      v37 = *(*(v1 + 6) + 8 * v3);
      if ([v37 _isApplication])
      {
        result = [objc_opt_self() defaultWorkspace];
        if (!result)
        {
          __break(1u);
          return result;
        }

        v38 = result;
        v39 = [v37 bundleIdentifier];
        if (!v39)
        {
          sub_228392000();
          v39 = sub_228391FC0();
        }

        v33 = [v38 applicationIsInstalled_];

        v1 = v48;
        if (v33)
        {
          goto LABEL_45;
        }
      }

      else
      {

LABEL_45:
        *&v26[(v3 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v3;
        if (__OFADD__(v47++, 1))
        {
          __break(1u);
LABEL_48:
          v2 = sub_22827A9C0(v26, v46, v47, v1);
          goto LABEL_49;
        }
      }
    }

    v35 = v27;
    while (1)
    {
      v27 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      if (v27 >= v32)
      {
        goto LABEL_48;
      }

      v36 = *&v28[8 * v27];
      ++v35;
      if (v36)
      {
        v34 = __clz(__rbit64(v36));
        v31 = (v36 - 1) & v36;
        goto LABEL_40;
      }
    }

LABEL_53:
    __break(1u);
LABEL_54:

    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v44 = swift_slowAlloc();
  v2 = sub_22837F4E4(v44, v46, v1, sub_22837F6B4, 0);

  MEMORY[0x22AAB7B80](v44, -1, -1);
LABEL_49:
  sub_22837EFF8(v2);
  v42 = v41;

  if ((v42 & 0xC000000000000001) != 0)
  {
    v43 = sub_2283930D0();
  }

  else
  {
    v43 = *(v42 + 16);
  }

  return (v43 != 0);
}

uint64_t sub_22837213C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for MedicationOnboardingFlowManager.EntryMode(0);
  MEMORY[0x28223BE20](v4);
  v6 = (&v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_228380F74(v2, v6, type metadata accessor for MedicationOnboardingFlowManager.EntryMode);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {

      sub_2282FEBEC(0);
      v10 = *(v9 + 48);
      v11 = sub_22838F4A0();
      (*(*(v11 - 8) + 8))(v6 + v10, v11);
LABEL_7:
      v8 = 1;
      goto LABEL_8;
    }

LABEL_6:
    sub_2283808C0(v6, type metadata accessor for MedicationOnboardingFlowManager.EntryMode);
    goto LABEL_7;
  }

  if (EnumCaseMultiPayload)
  {
    goto LABEL_6;
  }

  sub_228381EB4(v6, a1, type metadata accessor for MedicationSearchItem);
  v8 = 0;
LABEL_8:
  v12 = type metadata accessor for MedicationSearchItem(0);
  return (*(*(v12 - 8) + 56))(a1, v8, 1, v12);
}

uint64_t sub_2283722D0()
{
  v0 = sub_22838F580();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MedicationOnboardingFlowManager(0);
  sub_228391870();
  if (v11[1])
  {
    v4 = [objc_allocWithZone(MEMORY[0x277CCABB8]) init];
    sub_22838F500();
    v5 = sub_22838F4F0();
    (*(v1 + 8))(v3, v0);
    [v4 setLocale_];

    v6 = sub_228391FC0();
    v7 = [v4 numberFromString_];

    if (v7)
    {
      [v7 doubleValue];
      v9 = v8;

      return v9;
    }
  }

  return 0;
}

id MedicationOnboardingFlowManager.currentMedicationUDC.getter()
{
  v1 = v0;
  v2 = sub_228390D50();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228368E1C(0, &qword_280DDBD20, MEMORY[0x277D116C8]);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v38 - v7;
  v9 = type metadata accessor for MedicationOnboardingFlowManager.EntryMode(0);
  MEMORY[0x28223BE20](v9);
  v11 = (&v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  sub_228380F74(v1, v11, type metadata accessor for MedicationOnboardingFlowManager.EntryMode);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      sub_2283808C0(v11, type metadata accessor for MedicationOnboardingFlowManager.EntryMode);
      goto LABEL_9;
    }

    sub_2282FEBEC(0);
    v15 = *(v14 + 48);
    v16 = sub_22838F4A0();
    (*(*(v16 - 8) + 8))(v11 + v15, v16);
  }

  else
  {
    sub_2283808C0(v11, type metadata accessor for MedicationOnboardingFlowManager.EntryMode);
  }

  type metadata accessor for MedicationOnboardingFlowManager(0);
  sub_228391870();
  v17 = v44;
  if (v44)
  {
    v38 = v5;
    v43 = v3;
    v18 = objc_opt_self();
    v42 = v17;
    v19 = [v17 identifier];
    v41 = [v18 appleOntologyCodingWithIdentifier_];

    sub_228391870();
    v20 = v44;
    v21 = v45;
    if (v45 == 1)
    {
      v40 = 0;
      v22 = 0;
    }

    else
    {

      v40 = v20;
      v22 = v21;
    }

    sub_228294FEC(v20, v21, v46, v47);
    sub_228391870();
    v24 = v45;
    v25 = v46;
    v26 = v47;
    if (v45 == 1)
    {
      v39 = 0;
      v27 = 0;
    }

    else
    {

      v39 = v25;
      v27 = v26;
    }

    sub_228294FEC(v44, v24, v25, v26);
    sub_228391870();
    v28 = v43;
    if ((*(v43 + 48))(v8, 1, v2))
    {
      sub_228380BA8(v8, &qword_280DDBD20, MEMORY[0x277D116C8]);
      v29 = 0;
      if (v22)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v33 = v38;
      (*(v28 + 16))(v38, v8, v2);
      sub_228380BA8(v8, &qword_280DDBD20, MEMORY[0x277D116C8]);
      sub_228390CF0();
      v29 = v34;
      (*(v28 + 8))(v33, v2);
      if (v22)
      {
LABEL_16:
        v30 = sub_228391FC0();

        if (v27)
        {
          goto LABEL_17;
        }

        goto LABEL_21;
      }
    }

    v30 = 0;
    if (v27)
    {
LABEL_17:
      v31 = sub_228391FC0();

      if (v29)
      {
LABEL_18:
        v32 = sub_228391FC0();

LABEL_23:
        v35 = objc_allocWithZone(MEMORY[0x277D115B8]);
        v36 = v41;
        v23 = [v35 initWithOntologyCoding:v41 userSpecifiedName:v30 userSpecifiedNotes:v31 medicationVisualizationConfig:v32 freeTextProperties:0];

        return v23;
      }

LABEL_22:
      v32 = 0;
      goto LABEL_23;
    }

LABEL_21:
    v31 = 0;
    if (v29)
    {
      goto LABEL_18;
    }

    goto LABEL_22;
  }

LABEL_9:
  v23 = sub_228372994(v12, v1);

  return v23;
}

id sub_228372994(uint64_t a1, uint64_t a2)
{
  v3 = (a1 + 16);
  v2 = *(a1 + 16);
  if (v2)
  {
    v4 = *(a1 + 16);
  }

  else
  {
    v5 = sub_228372A14();
    swift_beginAccess();
    v6 = *v3;
    *v3 = v5;
    v4 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v4;
}

id sub_228372A14()
{
  v0 = sub_228390D50();
  v44 = *(v0 - 8);
  v45 = v0;
  MEMORY[0x28223BE20](v0);
  v2 = &v38 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228368E1C(0, &qword_280DDBD20, MEMORY[0x277D116C8]);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v38 - v4;
  sub_228368E1C(0, &unk_27D827790, type metadata accessor for FormStepResult);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = (&v38 - v7);
  type metadata accessor for MedicationOnboardingFlowManager(0);
  sub_228391870();
  v9 = v46;
  if (!v46)
  {
    goto LABEL_4;
  }

  v10 = sub_2283722D0();
  if (v11)
  {

LABEL_4:
    v12 = 0;
    goto LABEL_6;
  }

  v13 = [objc_opt_self() quantityWithUnit:v9 doubleValue:*&v10];

  v12 = v13;
LABEL_6:
  sub_228391870();
  if (v47)
  {
    v43 = v46;
    sub_228391870();
    v14 = type metadata accessor for FormStepResult(0);
    if ((*(*(v14 - 8) + 48))(v8, 1, v14) == 1)
    {
      sub_228380BA8(v8, &unk_27D827790, type metadata accessor for FormStepResult);
    }

    else
    {
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v39 = v2;
        v42 = *v8;
        sub_228391870();
        v15 = v46;
        v16 = v47;
        if (v47 == 1)
        {
          v41 = 0;
          v17 = 0;
        }

        else
        {

          v41 = v15;
          v17 = v16;
        }

        sub_228294FEC(v15, v16, v48, v49);
        sub_228391870();
        v18 = v47;
        v19 = v48;
        v20 = v49;
        if (v47 == 1)
        {
          v40 = 0;
          v21 = 0;
        }

        else
        {

          v40 = v19;
          v21 = v20;
        }

        sub_228294FEC(v46, v18, v19, v20);
        sub_228391870();
        v23 = v44;
        v22 = v45;
        if ((*(v44 + 48))(v5, 1, v45))
        {
          sub_228380BA8(v5, &qword_280DDBD20, MEMORY[0x277D116C8]);
          v24 = 0;
        }

        else
        {
          v25 = v39;
          (*(v23 + 16))(v39, v5, v22);
          sub_228380BA8(v5, &qword_280DDBD20, MEMORY[0x277D116C8]);
          sub_228390CF0();
          v24 = v26;
          (*(v23 + 8))(v25, v22);
        }

        v27 = v12;
        v28 = objc_opt_self();
        v29 = sub_228391FC0();

        v30 = [v28 userDomainConceptPropertyListWithFreeTextMedicationName:v29 freeTextFormCode:v42 freeTextStrengthQuantity:v27];

        sub_22817A958(0, &qword_27D823928, 0x277CCDB20);
        sub_2283921A0();

        if (v17)
        {
          v31 = sub_228391FC0();

          if (v21)
          {
            goto LABEL_20;
          }
        }

        else
        {
          v31 = 0;
          if (v21)
          {
LABEL_20:
            v32 = sub_228391FC0();

            if (v24)
            {
LABEL_21:
              v33 = sub_228391FC0();

LABEL_25:
              v34 = objc_allocWithZone(MEMORY[0x277D115B8]);
              v35 = sub_228392190();

              v36 = [v34 initWithOntologyCoding:0 userSpecifiedName:v31 userSpecifiedNotes:v32 medicationVisualizationConfig:v33 freeTextProperties:v35];

              return v36;
            }

LABEL_24:
            v33 = 0;
            goto LABEL_25;
          }
        }

        v32 = 0;
        if (v24)
        {
          goto LABEL_21;
        }

        goto LABEL_24;
      }

      sub_2283808C0(v8, type metadata accessor for FormStepResult);
    }
  }

  result = sub_228393300();
  __break(1u);
  return result;
}

id static MedicationOnboardingFlowManager.makeInitialOnboardingViewController(manualEntryText:analyticsContext:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v64 = a1;
  v65 = a2;
  sub_228368E1C(0, &qword_27D827C30, MEMORY[0x277D85720]);
  MEMORY[0x28223BE20](v4 - 8);
  v63 = &v60 - v5;
  sub_228368E1C(0, &qword_280DDBD20, MEMORY[0x277D116C8]);
  MEMORY[0x28223BE20](v6 - 8);
  v67 = &v60 - v7;
  sub_228368E1C(0, &qword_27D8238A8, MEMORY[0x277D11640]);
  MEMORY[0x28223BE20](v8 - 8);
  v66 = &v60 - v9;
  sub_228368E1C(0, &unk_27D827790, type metadata accessor for FormStepResult);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v60 - v11;
  sub_228368E1C(0, &qword_27D827160, MEMORY[0x277CC95F0]);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v60 - v14;
  v16 = type metadata accessor for MedicationOnboardingFlowManager.EntryMode(0);
  MEMORY[0x28223BE20](v16);
  v18 = (&v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = type metadata accessor for MedicationOnboardingFlowManager(0);
  v61 = *(v19 - 1);
  v20 = *(v61 + 64);
  v21 = MEMORY[0x28223BE20](v19);
  v62 = &v60 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v21);
  v24 = &v60 - v23;
  MEMORY[0x28223BE20](v22);
  v68 = &v60 - v25;
  v69 = sub_228390890();
  sub_228390880();
  sub_228390830();

  sub_228390D90();
  swift_allocObject();

  v26 = sub_228390D80();
  sub_228390E70();
  sub_228390E60();
  if ([objc_opt_self() supportsOntologyBackedMedications])
  {
    sub_228390880();
    v27 = sub_228390830();

    sub_228390880();
    v28 = sub_228390840();

    v29 = objc_allocWithZone(type metadata accessor for NewMedicationOnboardingViewController(0));

    v30 = NewMedicationOnboardingViewController.init(healthStore:listManager:analyticsContext:)(v27, v28, a3);
LABEL_7:

    return v30;
  }

  v60 = v26;
  v31 = v64;
  v64 = a3;
  v32 = v65;
  *v18 = v31;
  v18[1] = v32;
  swift_storeEnumTagMultiPayload();
  v33 = v19[9];
  v34 = sub_22838F4A0();
  (*(*(v34 - 8) + 56))(v15, 1, 1, v34);
  sub_228380330(0, &qword_27D8277A0, &qword_27D827160, MEMORY[0x277CC95F0]);
  swift_allocObject();

  *&v24[v33] = sub_228391890();
  v35 = v19[10];
  *&v70 = 0;
  sub_2283802B0(0, &qword_27D8277A8, &unk_27D8277B0, &qword_27D823BD8, 0x277CCD1B0);
  swift_allocObject();
  *&v24[v35] = sub_228391890();
  v36 = v19[11];
  LOBYTE(v70) = 0;
  sub_228380CDC(0, &qword_27D8277C0, MEMORY[0x277CBCE30]);
  swift_allocObject();
  *&v24[v36] = sub_228391890();
  v37 = v19[12];
  v38 = type metadata accessor for FormStepResult(0);
  (*(*(v38 - 8) + 56))(v12, 1, 1, v38);
  sub_228212A9C(0);
  swift_allocObject();
  *&v24[v37] = sub_228391890();
  v39 = v19[13];
  sub_228380234(0, &qword_27D8277D0, &qword_27D825070, MEMORY[0x277D837D0]);
  v70 = 0uLL;
  swift_allocObject();
  *&v24[v39] = sub_228391890();
  v40 = v19[14];
  v70 = 0uLL;
  swift_allocObject();

  *&v24[v40] = sub_228391890();
  v41 = v19[15];
  *&v70 = 0;
  sub_2283802B0(0, &qword_27D8277E0, &qword_27D826008, &qword_27D8277F0, 0x277CCDAB0);
  swift_allocObject();
  *&v24[v41] = sub_228391890();
  v42 = v19[16];
  v43 = sub_2283909E0();
  (*(*(v43 - 8) + 56))(v66, 1, 1, v43);
  sub_228181EDC(0);
  swift_allocObject();
  *&v24[v42] = sub_228391890();
  v44 = v19[17];
  v45 = sub_228390D50();
  (*(*(v45 - 8) + 56))(v67, 1, 1, v45);
  sub_2281E4AF0(0);
  swift_allocObject();
  *&v24[v44] = sub_228391890();
  v46 = v19[18];
  sub_228380234(0, &qword_27D827808, &qword_27D827810, &type metadata for MedicationNicknameNotes);
  v70 = 0u;
  v71 = 0u;
  swift_allocObject();
  *&v24[v46] = sub_228391890();
  v47 = v19[19];
  *&v70 = 0;
  sub_2283802B0(0, &qword_27D8245A0, &qword_280DDBA60, &unk_280DDBA68, 0x277D11570);
  swift_allocObject();
  *&v24[v47] = sub_228391890();
  v48 = v19[21];
  *&v70 = 0;
  sub_22829C0BC(0);
  swift_allocObject();
  *&v24[v48] = sub_228391890();
  v49 = v19[22];
  *&v24[v49] = sub_228390880();
  sub_228380F74(v18, v24, type metadata accessor for MedicationOnboardingFlowManager.EntryMode);
  v24[v19[7]] = 64;
  *&v24[v19[5]] = v64;

  sub_228390DF0();
  *&v24[v19[6]] = 1;
  v24[v19[8]] = 0;
  *&v70 = sub_228371268();
  *(&v70 + 1) = v50;
  sub_228391850();

  *&v70 = 0;
  sub_2283803B8(0);
  swift_allocObject();
  *&v24[v19[20]] = sub_228391890();
  sub_228391870();
  if (v70)
  {
  }

  else
  {
    v51 = sub_2283922D0();
    v52 = v63;
    (*(*(v51 - 8) + 56))(v63, 1, 1, v51);
    v53 = v62;
    sub_228380F74(v24, v62, type metadata accessor for MedicationOnboardingFlowManager);
    v54 = (*(v61 + 80) + 32) & ~*(v61 + 80);
    v55 = swift_allocObject();
    *(v55 + 16) = 0;
    *(v55 + 24) = 0;
    sub_228381EB4(v53, v55 + v54, type metadata accessor for MedicationOnboardingFlowManager);
    sub_2281DC568(0, 0, v52, &unk_2283A63D0, v55);
  }

  sub_2283808C0(v18, type metadata accessor for MedicationOnboardingFlowManager.EntryMode);
  v56 = v68;
  sub_228381EB4(v24, v68, type metadata accessor for MedicationOnboardingFlowManager);
  MedicationOnboardingFlowManager.makeNextViewControllerForStep()(v57);
  v30 = v58;
  sub_2283808C0(v56, type metadata accessor for MedicationOnboardingFlowManager);
  result = v60;
  if (v30)
  {
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t sub_228373B04@<X0>(unsigned __int8 *a1@<X0>, char *a2@<X8>)
{
  v3 = v2;
  v75 = a2;
  sub_228368E1C(0, &qword_27D827160, MEMORY[0x277CC95F0]);
  MEMORY[0x28223BE20](v5 - 8);
  v69 = &v65 - v6;
  v7 = sub_22838F4A0();
  v72 = *(v7 - 8);
  v73 = v7;
  MEMORY[0x28223BE20](v7);
  v71 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228368E1C(0, &qword_27D8264E8, MEMORY[0x277D116A0]);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v67 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v66 = &v65 - v12;
  sub_228368E1C(0, &unk_27D827790, type metadata accessor for FormStepResult);
  MEMORY[0x28223BE20](v13 - 8);
  v68 = &v65 - v14;
  v15 = type metadata accessor for MedicationSearchItem(0);
  MEMORY[0x28223BE20](v15 - 8);
  v70 = &v65 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for MedicationOnboardingFlowManager.EntryMode(0);
  MEMORY[0x28223BE20](v17);
  v19 = (&v65 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = MEMORY[0x277D11640];
  sub_228368E1C(0, &qword_27D8238A8, MEMORY[0x277D11640]);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v65 - v22;
  v24 = *a1;
  v25 = sub_228371958();
  v74 = type metadata accessor for MedicationOnboardingFlowManager(0);
  sub_228391870();
  v26 = sub_2283909E0();
  v27 = (*(*(v26 - 8) + 48))(v23, 1, v26) == 1;
  sub_228380BA8(v23, &qword_27D8238A8, v20);
  v28 = sub_228371B8C();
  result = _s19HealthMedicationsUI17SpecificationStepO10finalSteps16shouldDisplayDDI17skipVisualization0hI23ThirdPartyAuthorizationSayACGSb_S2btFZ_0(v25 & 1, v27, v28 & 1);
  v30 = *(result + 16);
  if (v30)
  {
    v31 = result;
    v32 = v24 >> 5;
    if (v24 >> 5 > 2)
    {
      if (v32 == 3)
      {
        v34 = v24 == 96;
        v33 = 4;
      }

      else if (v32 == 4)
      {
        v34 = v24 == 128;
        v33 = 6;
      }

      else
      {
        v34 = v24 == 160;
        v33 = 8;
      }

      if (!v34)
      {
        ++v33;
      }
    }

    else if (v32)
    {
      if (v32 == 1)
      {
        v33 = 3;
      }

      else
      {
        v33 = v24 != 64;
      }
    }

    else
    {
      v33 = 2;
    }

    v35 = *(result + 32);
    v36 = v35 >> 5;
    if (v35 >> 5 > 2)
    {
      if (v36 == 3)
      {
        v34 = v35 == 96;
        v51 = 4;
        if (!v34)
        {
          v51 = 5;
        }

        if (v33 >= v51)
        {
          goto LABEL_34;
        }
      }

      else
      {
        v37 = 6;
        if (v35 != 128)
        {
          v37 = 7;
        }

        v34 = v35 == 160;
        v38 = 8;
        if (!v34)
        {
          v38 = 9;
        }

        if (v36 == 4)
        {
          v38 = v37;
        }

        if (v33 >= v38)
        {
          goto LABEL_34;
        }
      }
    }

    else if (v36)
    {
      if (v36 == 1)
      {
        if (v33 >= 3)
        {
          goto LABEL_34;
        }
      }

      else if (v33 >= (v35 != 64))
      {
LABEL_34:
        result = sub_22837087C(v24, result);
        if ((v48 & 1) == 0 && result < (v30 - 1))
        {
          if (result + 1 < v30)
          {
            v49 = *(v31 + 32 + result + 1);
LABEL_52:

            *v75 = v49;
            return result;
          }

          goto LABEL_58;
        }

        v50 = -2;
LABEL_56:
        *v75 = v50;
        return result;
      }
    }

    else if (v33 >= 2)
    {
      goto LABEL_34;
    }

    sub_228380F74(v3, v19, type metadata accessor for MedicationOnboardingFlowManager.EntryMode);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload != 2)
      {
        sub_2283808C0(v19, type metadata accessor for MedicationOnboardingFlowManager.EntryMode);
        v60 = sub_22837087C(v24, byte_283B66708);
        if ((v61 & 1) != 0 || (v62 = v60, v60 > 2))
        {
          v49 = *(v31 + 32);
          goto LABEL_52;
        }

        if (v62 < -1)
        {
          goto LABEL_59;
        }

        v50 = byte_283B66708[v62 + 33];
        goto LABEL_56;
      }

      v40 = *v19;
      sub_2282FEBEC(0);
      v43 = v72;
      v42 = v73;
      v44 = v19 + *(v41 + 48);
      v45 = v71;
      (*(v72 + 32))(v71, v44, v73);
      v46 = v69;
      (*(v43 + 16))(v69, v45, v42);
      (*(v43 + 56))(v46, 0, 1, v42);
      sub_228391850();
      sub_228380BA8(v46, &qword_27D827160, MEMORY[0x277CC95F0]);
      v76 = v40;
      v47 = v40;
      sub_228391850();

      result = (*(v43 + 8))(v45, v42);
    }

    else
    {
      if (!EnumCaseMultiPayload)
      {

        LOBYTE(v76) = v24;
        sub_228377730(&v76, v75);
        return sub_2283808C0(v19, type metadata accessor for MedicationOnboardingFlowManager.EntryMode);
      }

      v52 = v19;
      v53 = v70;
      sub_228381EB4(v52, v70, type metadata accessor for MedicationSearchItem);
      v54 = v66;
      sub_22826FCF8(v66);
      v55 = v67;
      sub_228382C68(v54, v67, &qword_27D8264E8, MEMORY[0x277D116A0]);
      v56 = sub_228390C30();
      v57 = *(v56 - 8);
      if ((*(v57 + 48))(v55, 1, v56) == 1)
      {
        v58 = type metadata accessor for FormStepResult(0);
        v59 = v68;
        (*(*(v58 - 8) + 56))(v68, 1, 1, v58);
      }

      else
      {
        v59 = v68;
        (*(v57 + 32))(v68, v55, v56);
        v63 = type metadata accessor for FormStepResult(0);
        swift_storeEnumTagMultiPayload();
        (*(*(v63 - 8) + 56))(v59, 0, 1, v63);
      }

      sub_228391850();
      sub_228380BA8(v59, &unk_27D827790, type metadata accessor for FormStepResult);
      v64 = sub_22826FA64();
      v76 = v64;
      sub_228391850();

      result = sub_2283808C0(v53, type metadata accessor for MedicationSearchItem);
    }

    v50 = 96;
    goto LABEL_56;
  }

  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
  return result;
}

uint64_t sub_2283743F4@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  sub_228368E1C(0, &qword_27D827C30, MEMORY[0x277D85720]);
  MEMORY[0x28223BE20](v6 - 8);
  v66 = &v62 - v7;
  sub_228368E1C(0, &qword_280DDBD20, MEMORY[0x277D116C8]);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v62 - v9;
  sub_228368E1C(0, &qword_27D8238A8, MEMORY[0x277D11640]);
  MEMORY[0x28223BE20](v11 - 8);
  v76 = &v62 - v12;
  sub_228368E1C(0, &unk_27D827790, type metadata accessor for FormStepResult);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v62 - v14;
  sub_228368E1C(0, &qword_27D827160, MEMORY[0x277CC95F0]);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v62 - v17;
  v19 = type metadata accessor for MedicationOnboardingFlowManager(0);
  v63 = *(v19 - 1);
  v20 = MEMORY[0x28223BE20](v19);
  v64 = v21;
  v65 = &v62 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v23 = &v62 - v22;
  v24 = type metadata accessor for MedicationOnboardingFlowManager.EntryMode(0);
  MEMORY[0x28223BE20](v24 - 8);
  v74 = v10;
  v75 = &v62 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = *a1;
  if (v70 == 160)
  {
    v26 = 1;
  }

  else
  {
    v26 = *(v3 + v19[8]);
  }

  v71 = v26;
  v68 = type metadata accessor for MedicationOnboardingFlowManager.EntryMode;
  v27 = v75;
  sub_228380F74(v3, v75, type metadata accessor for MedicationOnboardingFlowManager.EntryMode);
  v28 = *(v3 + v19[20]);
  v29 = v19[6];
  v67 = *(v3 + v19[5]);
  v69 = *(v3 + v29);
  v30 = v19[9];
  v31 = sub_22838F4A0();
  (*(*(v31 - 8) + 56))(v18, 1, 1, v31);
  sub_228380330(0, &qword_27D8277A0, &qword_27D827160, MEMORY[0x277CC95F0]);
  swift_allocObject();
  v73 = v18;
  *&v23[v30] = sub_228391890();
  v32 = v19[10];
  *&v79 = 0;
  sub_2283802B0(0, &qword_27D8277A8, &unk_27D8277B0, &qword_27D823BD8, 0x277CCD1B0);
  swift_allocObject();
  *&v23[v32] = sub_228391890();
  v33 = v19[11];
  LOBYTE(v79) = 0;
  sub_228380CDC(0, &qword_27D8277C0, MEMORY[0x277CBCE30]);
  swift_allocObject();
  *&v23[v33] = sub_228391890();
  v34 = v19[12];
  v35 = type metadata accessor for FormStepResult(0);
  (*(*(v35 - 8) + 56))(v15, 1, 1, v35);
  sub_228212A9C(0);
  swift_allocObject();
  v72 = v15;
  *&v23[v34] = sub_228391890();
  v36 = v19[13];
  sub_228380234(0, &qword_27D8277D0, &qword_27D825070, MEMORY[0x277D837D0]);
  v79 = 0uLL;
  swift_allocObject();
  *&v23[v36] = sub_228391890();
  v37 = v19[14];
  v79 = 0uLL;
  swift_allocObject();

  *&v23[v37] = sub_228391890();
  v38 = v19[15];
  *&v79 = 0;
  sub_2283802B0(0, &qword_27D8277E0, &qword_27D826008, &qword_27D8277F0, 0x277CCDAB0);
  swift_allocObject();
  *&v23[v38] = sub_228391890();
  v39 = v19[16];
  v40 = sub_2283909E0();
  (*(*(v40 - 8) + 56))(v76, 1, 1, v40);
  sub_228181EDC(0);
  swift_allocObject();
  *&v23[v39] = sub_228391890();
  v41 = v19[17];
  v42 = sub_228390D50();
  v43 = v74;
  (*(*(v42 - 8) + 56))(v74, 1, 1, v42);
  sub_2281E4AF0(0);
  swift_allocObject();
  *&v23[v41] = sub_228391890();
  v44 = v19[18];
  sub_228380234(0, &qword_27D827808, &qword_27D827810, &type metadata for MedicationNicknameNotes);
  v79 = 0u;
  v80 = 0u;
  swift_allocObject();
  *&v23[v44] = sub_228391890();
  v45 = v19[19];
  *&v79 = 0;
  sub_2283802B0(0, &qword_27D8245A0, &qword_280DDBA60, &unk_280DDBA68, 0x277D11570);
  swift_allocObject();
  *&v23[v45] = sub_228391890();
  v46 = v19[21];
  *&v79 = 0;
  sub_22829C0BC(0);
  swift_allocObject();
  *&v23[v46] = sub_228391890();
  v47 = v19[22];
  sub_228390890();
  *&v23[v47] = sub_228390880();
  sub_228380F74(v27, v23, v68);
  v23[v19[7]] = v70;
  *&v23[v19[5]] = v67;

  v48 = v69;
  sub_228390DF0();
  *&v23[v19[6]] = v48;
  v23[v19[8]] = v71;
  *&v79 = sub_228371268();
  *(&v79 + 1) = v49;
  sub_228391850();

  if (v28)
  {
    *&v23[v19[20]] = v28;
  }

  else
  {
    *&v79 = 0;
    sub_2283803B8(0);
    swift_allocObject();
    *&v23[v19[20]] = sub_228391890();
  }

  sub_228391870();
  v50 = v73;
  if (v79)
  {
  }

  else
  {
    v51 = sub_2283922D0();
    v52 = v66;
    (*(*(v51 - 8) + 56))(v66, 1, 1, v51);
    v53 = v65;
    sub_228380F74(v23, v65, type metadata accessor for MedicationOnboardingFlowManager);
    v54 = (*(v63 + 80) + 32) & ~*(v63 + 80);
    v55 = swift_allocObject();
    *(v55 + 16) = 0;
    *(v55 + 24) = 0;
    sub_228381EB4(v53, v55 + v54, type metadata accessor for MedicationOnboardingFlowManager);
    sub_2281DC568(0, 0, v52, &unk_2283A6548, v55);
  }

  sub_2283808C0(v75, type metadata accessor for MedicationOnboardingFlowManager.EntryMode);
  sub_228381EB4(v23, a2, type metadata accessor for MedicationOnboardingFlowManager);
  sub_228391870();
  v77 = v79;
  sub_228391850();

  v56 = v72;
  sub_228391870();
  sub_228391850();
  sub_228380BA8(v56, &unk_27D827790, type metadata accessor for FormStepResult);
  sub_228391870();
  v77 = v79;
  sub_228391850();

  sub_228391870();
  v57 = v79;
  *&v77 = v79;
  sub_228391850();

  sub_228391870();
  v58 = v79;
  *&v77 = v79;
  sub_228391850();

  sub_228391870();
  sub_228391850();
  sub_228380BA8(v50, &qword_27D827160, MEMORY[0x277CC95F0]);
  sub_228391870();
  v59 = v79;
  *&v77 = v79;
  sub_228391850();

  v60 = v76;
  sub_228391870();
  sub_228391850();
  sub_228380BA8(v60, &qword_27D8238A8, MEMORY[0x277D11640]);
  sub_228391870();
  sub_228391850();
  sub_228380BA8(v43, &qword_280DDBD20, MEMORY[0x277D116C8]);
  sub_228391870();
  v77 = v79;
  v78 = v80;
  sub_228391850();
  sub_228294FEC(v77, *(&v77 + 1), v78, *(&v78 + 1));
  sub_228391870();
  LOBYTE(v77) = v79;
  return sub_228391850();
}

char *sub_228374FD0(uint64_t a1)
{
  sub_228368E1C(0, &qword_27D8238D0, type metadata accessor for MedicationSearchItem);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v14 - v3;
  type metadata accessor for MedicationOnboardingFlowManager(0);
  v5 = sub_228390840();
  sub_228391870();
  v6 = v14[2];
  v7 = v14[3];
  objc_allocWithZone(type metadata accessor for ManualNameStepViewController(0));
  v14[0] = v6;
  v14[1] = v7;
  sub_228380234(0, &qword_27D8277D0, &qword_27D825070, MEMORY[0x277D837D0]);
  swift_allocObject();
  v8 = sub_228391890();
  type metadata accessor for ManualNameDataSource(0);
  swift_allocObject();
  v9 = sub_22823C620(v8);
  v10 = type metadata accessor for MedicationSearchItem(0);
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  v11 = sub_228380038(v4, v9, v5, &qword_27D828608, type metadata accessor for ManualNameDataSource, &off_28185BA98, &qword_27D825BC0);

  v12 = sub_22837A4A4(65, a1, v11);

  return v12;
}

char *sub_2283751CC(uint64_t a1)
{
  v47 = a1;
  v45 = type metadata accessor for MedicationSearchItem(0);
  v2 = *(v45 - 8);
  v3 = MEMORY[0x28223BE20](v45);
  v40 = v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v42 = v39 - v5;
  v48 = type metadata accessor for MedicationOnboardingFlowManager.EntryMode(0);
  MEMORY[0x28223BE20](v48);
  v46 = (v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_228368E1C(0, &qword_27D8238D0, type metadata accessor for MedicationSearchItem);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v39 - v8;
  sub_228368E1C(0, &unk_27D827790, type metadata accessor for FormStepResult);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = v39 - v14;
  v16 = type metadata accessor for MedicationOnboardingFlowManager(0);
  v17 = *(v16 + 88);
  v44 = v1;
  v39[1] = *(v1 + v17);
  v18 = sub_228390840();
  v41 = v16;
  v39[0] = *(v1 + *(v16 + 48));
  sub_228391870();
  v43 = objc_allocWithZone(type metadata accessor for ManualFormStepViewController(0));
  v19 = *(v2 + 56);
  v20 = v45;
  v19(v9, 1, 1, v45);
  sub_228380F08(v15, v13, &unk_27D827790, type metadata accessor for FormStepResult);
  sub_228212A9C(0);
  swift_allocObject();
  v21 = sub_228391890();
  type metadata accessor for ManaulFormsDataSource(0);
  swift_allocObject();
  v22 = sub_2282F6D70(v9, v21);

  v19(v9, 1, 1, v20);
  v23 = v47;
  v24 = sub_22837FEA8(v9, v22, v18, sub_22838142C, &qword_27D8252A8);
  v25 = v44;

  sub_228380BA8(v15, &unk_27D827790, type metadata accessor for FormStepResult);
  v26 = sub_22837A9B0(1, v23, v24);
  v27 = v46;
  v28 = v26;
  sub_228380F74(v25, v46, type metadata accessor for MedicationOnboardingFlowManager.EntryMode);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {

      sub_2282FEBEC(0);
      v32 = *(v31 + 48);
      v33 = sub_22838F4A0();
      (*(*(v33 - 8) + 8))(v27 + v32, v33);
      return 0;
    }

    else
    {

      sub_2283808C0(v27, type metadata accessor for MedicationOnboardingFlowManager.EntryMode);
    }
  }

  else if (EnumCaseMultiPayload)
  {

    sub_2283808C0(v27, type metadata accessor for MedicationOnboardingFlowManager.EntryMode);
    return 0;
  }

  else
  {
    v30 = v42;
    sub_228381EB4(v27, v42, type metadata accessor for MedicationSearchItem);
    sub_228391870();
    if (v49 == 1)
    {
      sub_2283808C0(v30, type metadata accessor for MedicationSearchItem);
    }

    else
    {
      v34 = v40;
      sub_228380F74(v30, v40, type metadata accessor for MedicationSearchItem);
      v35 = sub_228390840();
      sub_228391870();
      v36 = sub_22821273C(v34, v35, v15);
      v37 = sub_22837AE84(0, v23, v36);

      sub_2283808C0(v30, type metadata accessor for MedicationSearchItem);
      return v37;
    }
  }

  return v28;
}

char *sub_228375748(uint64_t a1)
{
  v79 = a1;
  v2 = sub_2283911B0();
  v83 = *(v2 - 8);
  v84 = v2;
  MEMORY[0x28223BE20](v2);
  v82 = &v67 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_228390C30();
  v73 = *(v76 - 8);
  v4 = MEMORY[0x28223BE20](v76);
  v71 = &v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v72 = &v67 - v7;
  MEMORY[0x28223BE20](v6);
  v75 = &v67 - v8;
  sub_228368E1C(0, &qword_27D8238D0, type metadata accessor for MedicationSearchItem);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v70 = &v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v78 = &v67 - v12;
  v13 = type metadata accessor for MedicationSearchItem(0);
  v80 = *(v13 - 8);
  v81 = v13;
  v14 = MEMORY[0x28223BE20](v13);
  v69 = &v67 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v74 = &v67 - v17;
  MEMORY[0x28223BE20](v16);
  v77 = &v67 - v18;
  v19 = type metadata accessor for MedicationOnboardingFlowManager.EntryMode(0);
  MEMORY[0x28223BE20](v19);
  v21 = (&v67 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_228368E1C(0, &unk_27D827790, type metadata accessor for FormStepResult);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = &v67 - v23;
  v25 = type metadata accessor for FormStepResult(0);
  v26 = *(v25 - 8);
  v27 = MEMORY[0x28223BE20](v25);
  v29 = &v67 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v31 = &v67 - v30;
  type metadata accessor for MedicationOnboardingFlowManager(0);
  sub_228391870();
  if ((*(v26 + 48))(v24, 1, v25) == 1)
  {
    sub_228380BA8(v24, &unk_27D827790, type metadata accessor for FormStepResult);
    v32 = v82;
    sub_228391150();
    v33 = sub_2283911A0();
    v34 = sub_2283925C0();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v85[0] = v36;
      *v35 = 136315138;
      *(v35 + 4) = sub_2281C96FC(0xD00000000000001FLL, 0x80000002283A6420, v85);
      _os_log_impl(&dword_22816B000, v33, v34, "[%s] Failed to create strength view controller, route form is nil!", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v36);
      MEMORY[0x22AAB7B80](v36, -1, -1);
      MEMORY[0x22AAB7B80](v35, -1, -1);
    }

    (*(v83 + 8))(v32, v84);
    return 0;
  }

  sub_228381EB4(v24, v31, type metadata accessor for FormStepResult);
  sub_228380F74(v1, v21, type metadata accessor for MedicationOnboardingFlowManager.EntryMode);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      sub_2283808C0(v21, type metadata accessor for MedicationOnboardingFlowManager.EntryMode);
      v43 = sub_22837DA30(v79);
      sub_2283808C0(v31, type metadata accessor for FormStepResult);
      return v43;
    }

    sub_2282FEBEC(0);
    v40 = *(v39 + 48);
    v41 = sub_22838F4A0();
    (*(*(v41 - 8) + 8))(v21 + v40, v41);
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      sub_2283808C0(v31, type metadata accessor for FormStepResult);
      sub_2283808C0(v21, type metadata accessor for MedicationOnboardingFlowManager.EntryMode);
      return 0;
    }

    sub_2283808C0(v21, type metadata accessor for MedicationOnboardingFlowManager.EntryMode);
  }

  v42 = v78;
  sub_22837213C(v78);
  if ((*(v80 + 48))(v42, 1, v81) == 1)
  {
    sub_2283808C0(v31, type metadata accessor for FormStepResult);
    sub_228380BA8(v42, &qword_27D8238D0, type metadata accessor for MedicationSearchItem);
    return 0;
  }

  v44 = v77;
  sub_228381EB4(v42, v77, type metadata accessor for MedicationSearchItem);
  sub_228380F74(v31, v29, type metadata accessor for FormStepResult);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2283808C0(v29, type metadata accessor for FormStepResult);
    v45 = v44;
    v46 = sub_22837DA30(v79);
    sub_2283808C0(v45, type metadata accessor for MedicationSearchItem);
    v47 = v31;
  }

  else
  {
    v48 = v73;
    v49 = v75;
    v50 = v76;
    (*(v73 + 32))(v75, v29, v76);
    v68 = type metadata accessor for MedicationSearchItem;
    v51 = v74;
    sub_228380F74(v44, v74, type metadata accessor for MedicationSearchItem);
    v83 = sub_228390840();
    sub_228391870();
    v52 = v87;
    v84 = v31;
    v53 = *(v48 + 16);
    v54 = v72;
    v53(v72, v49, v50);
    v82 = objc_allocWithZone(type metadata accessor for StrengthStepViewController(0));
    *&v82[qword_27D824828] = 0;
    v55 = v51;
    v56 = v69;
    v57 = v68;
    sub_228380F74(v55, v69, v68);
    v85[1] = 0;
    v85[2] = 0;
    if (v52)
    {
      v58 = 0;
    }

    else
    {
      v58 = -1;
    }

    v85[0] = v52;
    v86 = v58;
    sub_228380234(0, &qword_27D824858, &qword_27D824860, &type metadata for StrengthStepResult);
    swift_allocObject();
    v78 = v52;
    v59 = sub_228391890();
    v60 = v71;
    v61 = v76;
    v53(v71, v54, v76);
    type metadata accessor for MedicationStrengthsDataSource(0);
    swift_allocObject();
    v62 = sub_2282BAA94(v56, v59, v60);
    v63 = v74;
    v64 = v70;
    sub_228380F74(v74, v70, v57);
    (*(v80 + 56))(v64, 0, 1, v81);
    v65 = sub_22837FEA8(v64, v62, v83, sub_2283816F4, &qword_27D8252A8);

    v66 = *(v48 + 8);
    v66(v54, v61);
    sub_2283808C0(v63, type metadata accessor for MedicationSearchItem);
    v46 = sub_22837B82C(32, v79, v65);

    v66(v75, v61);
    sub_2283808C0(v77, type metadata accessor for MedicationSearchItem);
    v47 = v84;
  }

  sub_2283808C0(v47, type metadata accessor for FormStepResult);
  return v46;
}

char *sub_2283761D4(uint64_t a1)
{
  v31 = a1;
  sub_228368E1C(0, &qword_27D8238D0, type metadata accessor for MedicationSearchItem);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v28 - v6;
  v8 = type metadata accessor for MedicationSearchItem(0);
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = type metadata accessor for MedicationOnboardingFlowManager(0);
  v30 = sub_228390840();
  v10 = *(v1 + *(v9 + 76));
  v29 = MedicationOnboardingFlowManager.currentMedicationUDC.getter();
  sub_228391870();
  v11 = v32[0];
  if (v32[0])
  {
    v12 = sub_228392E70();
  }

  else
  {
    v12 = 0;
  }

  v13 = MedicationOnboardingFlowManager.title.getter();
  if (v14)
  {
    v15 = v13;
  }

  else
  {
    v15 = 0;
  }

  if (v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = 0xE000000000000000;
  }

  v17 = MedicationOnboardingFlowManager.subtitle.getter();
  v19 = v18;
  v20 = objc_allocWithZone(type metadata accessor for ScheduleStepViewController(0));
  v32[0] = v15;
  v32[1] = v16;
  v32[2] = v17;
  v32[3] = v19;
  type metadata accessor for MedicationScheduleDataSource(0);
  swift_allocObject();
  v21 = v12;

  v22 = v29;
  v23 = sub_228333ABC(v10, v22, v12, v32);

  sub_228380F08(v7, v5, &qword_27D8238D0, type metadata accessor for MedicationSearchItem);
  sub_228380F08(v5, &v20[qword_27D828B18], &qword_27D8238D0, type metadata accessor for MedicationSearchItem);
  sub_228381A0C(0);
  v24 = swift_allocObject();
  *(v24 + 16) = v23;
  *(v24 + 24) = *(v23 + qword_27D828F28);
  *&v20[qword_27D824D88] = v24;
  *&v20[qword_27D824D90] = v30;

  v25 = sub_228390480();

  sub_228380BA8(v5, &qword_27D8238D0, type metadata accessor for MedicationSearchItem);
  sub_228380BA8(v7, &qword_27D8238D0, type metadata accessor for MedicationSearchItem);
  v26 = sub_22837BD00(96, v31, v25);

  return v26;
}

char *sub_2283764D4(uint64_t a1)
{
  sub_228368E1C(0, &qword_27D8238D0, type metadata accessor for MedicationSearchItem);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v20 - v3;
  sub_228368E1C(0, &qword_27D8238A8, MEMORY[0x277D11640]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v20 - v6;
  v8 = sub_2283909E0();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = (&v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10);
  v14 = &v20 - v13;
  type metadata accessor for MedicationOnboardingFlowManager(0);
  sub_228391870();
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_228380BA8(v7, &qword_27D8238A8, MEMORY[0x277D11640]);
    result = sub_228393300();
    __break(1u);
  }

  else
  {
    (*(v9 + 32))(v14, v7, v8);
    sub_22837213C(v4);
    v15 = sub_228390840();
    (*(v9 + 16))(v12, v14, v8);
    v16 = objc_allocWithZone(type metadata accessor for VisualizationModificationStepViewController(0));
    v17 = sub_2281E36F4(v4, v15, v12);
    v18 = sub_22837C6A8(128, a1, v17);

    (*(v9 + 8))(v14, v8);
    return v18;
  }

  return result;
}

char *sub_2283767E4(uint64_t a1)
{
  v29 = a1;
  sub_228368E1C(0, &qword_27D8238D0, type metadata accessor for MedicationSearchItem);
  v2 = MEMORY[0x28223BE20](v1 - 8);
  v28 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v5 = &v22 - v4;
  type metadata accessor for MedicationOnboardingFlowManager(0);
  sub_228391870();
  if (v32)
  {
    v6 = v32;
    sub_22837DD7C(v6, &v34);
    v7 = v34;
    v8 = v35;
    v9 = v36;
    v10 = v37;
    v12 = v38;
    v11 = v39;
  }

  else
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v12 = 0;
    v11 = 0;
  }

  v24 = v12;
  v25 = v11;
  *&v40 = v7;
  *(&v40 + 1) = v8;
  v41 = v9;
  v42 = v10;
  v43 = v12;
  v44 = v11;
  sub_22837213C(v5);
  v27 = sub_228390840();
  sub_2283820E8(v7, v8, v9, v10, v12, v11);
  sub_228391870();
  v13 = type metadata accessor for NicknameNotesStepViewController(0);
  v23 = v32;
  v22 = v33;
  v26 = objc_allocWithZone(v13);
  v31 = v22;
  v30 = v23;
  sub_228380234(0, &qword_27D827808, &qword_27D827810, &type metadata for MedicationNicknameNotes);
  swift_allocObject();
  v14 = sub_228391890();
  type metadata accessor for NicknameAndNotesDataSource(0);
  swift_allocObject();
  sub_2283820E8(v7, v8, v9, v10, v12, v11);
  v15 = sub_228292F84(v14, &v40);
  v16 = v28;
  sub_228380F08(v5, v28, &qword_27D8238D0, type metadata accessor for MedicationSearchItem);
  v17 = sub_22837FEA8(v16, v15, v27, sub_2283823F8, &qword_27D826BB8);

  v18 = v24;
  v19 = v25;
  sub_228382128(v7, v8, v9, v10, v24, v25);
  sub_228380BA8(v5, &qword_27D8238D0, type metadata accessor for MedicationSearchItem);
  v20 = sub_22837CB7C(129, v29, v17);
  sub_228382128(v7, v8, v9, v10, v18, v19);

  return v20;
}

char *sub_228376B64(uint64_t a1)
{
  v13 = a1;
  sub_228368E1C(0, &qword_27D8238D0, type metadata accessor for MedicationSearchItem);
  v2 = MEMORY[0x28223BE20](v1 - 8);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v13 - v5;
  sub_22837213C(&v13 - v5);
  type metadata accessor for MedicationOnboardingFlowManager(0);
  v7 = sub_228390840();
  objc_allocWithZone(type metadata accessor for DDIStepViewController(0));
  sub_228380F08(v6, v4, &qword_27D8238D0, type metadata accessor for MedicationSearchItem);
  v14 = 1;
  sub_228380234(0, &qword_27D8268D8, &qword_27D823CF8, MEMORY[0x277D839B0]);
  swift_allocObject();
  v8 = sub_228391890();
  type metadata accessor for DDIOnboardingDataSource(0);
  swift_allocObject();
  v9 = sub_2282872B0(v4, v8);

  sub_228380F08(v6, v4, &qword_27D8238D0, type metadata accessor for MedicationSearchItem);
  v10 = sub_228380038(v4, v9, v7, &qword_27D8286C0, type metadata accessor for DDIOnboardingDataSource, &off_28185C7E8, &qword_27D8268A0);

  sub_228380BA8(v6, &qword_27D8238D0, type metadata accessor for MedicationSearchItem);
  v11 = sub_22837D050(160, v13, v10);

  return v11;
}

char *sub_228376D88(uint64_t a1)
{
  v2 = v1;
  v89[1] = *MEMORY[0x277D85DE8];
  v4 = sub_2283911B0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v76 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228368E1C(0, &qword_27D8238D0, type metadata accessor for MedicationSearchItem);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v76 - v9;
  v11 = type metadata accessor for MedicationOnboardingFlowManager(0);
  v12 = *(v2 + *(v11 + 80));
  if (!v12)
  {
    sub_228391150();
    v38 = sub_2283911A0();
    v39 = sub_2283925B0();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v89[0] = v41;
      *v40 = 136315138;
      *(v40 + 4) = sub_2281C96FC(0xD00000000000001FLL, 0x80000002283A6420, v89);
      _os_log_impl(&dword_22816B000, v38, v39, "[%s] sourcesWithExistingAuthorizationsPublisher is nil when trying to makeThirdPartyAuthorizationViewController during med-onboarding-flow", v40, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v41);
      MEMORY[0x22AAB7B80](v41, -1, -1);
      MEMORY[0x22AAB7B80](v40, -1, -1);
    }

    (*(v5 + 8))(v7, v4);
    return 0;
  }

  v13 = v11;
  sub_228390890();

  sub_228390880();
  v14 = sub_228390830();

  sub_228391870();
  v15 = v89[0];
  v84 = v12;
  v85 = a1;
  v83 = v10;
  if (!v89[0])
  {
    v43 = MEMORY[0x277D84FA0];
    goto LABEL_53;
  }

  v81 = v2;
  v82 = v89[0];
  v79 = v13;
  v80 = v14;
  if ((v89[0] & 0xC000000000000001) != 0)
  {
    v16 = MEMORY[0x277D84FA0];
    v88 = MEMORY[0x277D84FA0];

    v15 = sub_228393080();
    v17 = sub_228393100();
    if (v17)
    {
      v18 = v17;
      v19 = sub_22817A958(0, &qword_27D824240, 0x277CCDA00);
      v20 = v18;
      do
      {
        v86 = v20;
        swift_dynamicCast();
        v27 = v87;
        if (![v87 _isApplication])
        {
          goto LABEL_15;
        }

        v28 = [objc_opt_self() defaultWorkspace];
        if (!v28)
        {
          __break(1u);
        }

        v29 = v28;
        v30 = [v27 bundleIdentifier];
        if (!v30)
        {
          sub_228392000();
          v30 = sub_228391FC0();
        }

        v31 = [v29 applicationIsInstalled_];

        if ((v31 & 1) == 0)
        {
        }

        else
        {
LABEL_15:
          v32 = v87;
          v33 = *(v16 + 16);
          if (*(v16 + 24) <= v33)
          {
            sub_2282D6DFC(v33 + 1);
          }

          v16 = v88;
          v21 = sub_228392C50();
          v22 = v16 + 56;
          v23 = -1 << *(v16 + 32);
          v24 = v21 & ~v23;
          v25 = v24 >> 6;
          if (((-1 << v24) & ~*(v16 + 56 + 8 * (v24 >> 6))) != 0)
          {
            v26 = __clz(__rbit64((-1 << v24) & ~*(v16 + 56 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v34 = 0;
            v35 = (63 - v23) >> 6;
            do
            {
              if (++v25 == v35 && (v34 & 1) != 0)
              {
                __break(1u);
                goto LABEL_55;
              }

              v36 = v25 == v35;
              if (v25 == v35)
              {
                v25 = 0;
              }

              v34 |= v36;
              v37 = *(v22 + 8 * v25);
            }

            while (v37 == -1);
            v26 = __clz(__rbit64(~v37)) + (v25 << 6);
          }

          *(v22 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
          *(*(v16 + 48) + 8 * v26) = v32;
          ++*(v16 + 16);
        }

        v20 = sub_228393100();
      }

      while (v20);
    }

    goto LABEL_52;
  }

  v44 = *(v89[0] + 32);
  v45 = v44 & 0x3F;
  v77 = ((1 << v44) + 63) >> 6;
  v19 = 8 * v77;

  if (v45 > 0xD)
  {
    goto LABEL_56;
  }

  while (2)
  {
    v76 = &v76;
    MEMORY[0x28223BE20](v46);
    v47 = &v76 - ((v19 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v47, v19);
    v78 = 0;
    v48 = 0;
    v49 = v15 + 56;
    v50 = 1 << *(v15 + 32);
    v51 = -1;
    if (v50 < 64)
    {
      v51 = ~(-1 << v50);
    }

    v52 = v51 & *(v15 + 56);
    v53 = (v50 + 63) >> 6;
    while (v52)
    {
      v54 = __clz(__rbit64(v52));
      v52 &= v52 - 1;
LABEL_43:
      v57 = v54 | (v48 << 6);
      v58 = *(*(v15 + 48) + 8 * v57);
      if ([v58 _isApplication])
      {
        result = [objc_opt_self() defaultWorkspace];
        if (!result)
        {
          __break(1u);
          return result;
        }

        v60 = result;
        v61 = [v58 bundleIdentifier];
        if (!v61)
        {
          sub_228392000();
          v61 = sub_228391FC0();
        }

        v19 = [v60 applicationIsInstalled_];

        v15 = v82;
        if (v19)
        {
          goto LABEL_48;
        }
      }

      else
      {

LABEL_48:
        *&v47[(v57 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v57;
        if (__OFADD__(v78++, 1))
        {
          __break(1u);
LABEL_51:
          v16 = sub_22827A9C0(v47, v77, v78, v15);
          goto LABEL_52;
        }
      }
    }

    v55 = v48;
    while (1)
    {
      v48 = v55 + 1;
      if (__OFADD__(v55, 1))
      {
        break;
      }

      if (v48 >= v53)
      {
        goto LABEL_51;
      }

      v56 = *(v49 + 8 * v48);
      ++v55;
      if (v56)
      {
        v54 = __clz(__rbit64(v56));
        v52 = (v56 - 1) & v56;
        goto LABEL_43;
      }
    }

LABEL_55:
    __break(1u);
LABEL_56:

    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v75 = swift_slowAlloc();
  v16 = sub_22837F4E4(v75, v77, v15, sub_22837F6B4, 0);

  MEMORY[0x22AAB7B80](v75, -1, -1);
LABEL_52:
  sub_22837EFF8(v16);
  v43 = v63;

  v14 = v80;
LABEL_53:
  v64 = sub_2282B91E8(v43);

  v65 = sub_228390840();
  v66 = objc_allocWithZone(type metadata accessor for ThirdPartyAuthorizationStepViewController(0));
  type metadata accessor for ThirdPartyAuthorizationDataSource(0);
  swift_allocObject();
  v67 = v14;
  v68 = sub_228297D78(v67, v64);
  v69 = type metadata accessor for MedicationSearchItem(0);
  v70 = v83;
  (*(*(v69 - 8) + 56))(v83, 1, 1, v69);
  sub_228380F08(v70, &v66[qword_27D828B18], &qword_27D8238D0, type metadata accessor for MedicationSearchItem);
  sub_2283826A4(0);
  v71 = swift_allocObject();
  *(v71 + 16) = v68;
  *(v71 + 24) = *(v68 + qword_27D826CA8);
  *&v66[qword_27D824D88] = v71;
  *&v66[qword_27D824D90] = v65;
  sub_2283901F0();
  sub_22819A064(0, &qword_27D827750, &qword_27D8238E8, MEMORY[0x277D10F28], 0);
  v72 = swift_allocObject();
  *(v72 + 16) = xmmword_228397F40;
  v73 = MEMORY[0x277D10F80];
  *(v72 + 32) = v68;
  *(v72 + 40) = v73;
  swift_retain_n();

  sub_228390220();
  v74 = sub_228390480();
  sub_228380BA8(v70, &qword_27D8238D0, type metadata accessor for MedicationSearchItem);
  [*(v68 + qword_27D826CB0) fetchSources];

  v42 = sub_22837D55C(161, v85, v74);

  return v42;
}

void *sub_228377730@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = v2;
  v68 = a2;
  v5 = type metadata accessor for FormStepResult(0);
  v6 = *(v5 - 8);
  v63 = v5;
  v64 = v6;
  MEMORY[0x28223BE20](v5);
  v67 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228368E1C(0, &qword_27D8264E8, MEMORY[0x277D116A0]);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v62 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v66 = &v60 - v11;
  sub_228368E1C(0, &unk_27D827790, type metadata accessor for FormStepResult);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v65 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = (&v60 - v16);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v60 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v60 - v21;
  sub_228368E1C(0, &qword_27D8238D0, type metadata accessor for MedicationSearchItem);
  v24 = MEMORY[0x28223BE20](v23 - 8);
  v26 = &v60 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v28 = &v60 - v27;
  v29 = type metadata accessor for MedicationOnboardingFlowManager.EntryMode(0);
  MEMORY[0x28223BE20](v29);
  v31 = &v60 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = *a1;
  v33 = v3;
  sub_228380F74(v3, v31, type metadata accessor for MedicationOnboardingFlowManager.EntryMode);
  LODWORD(v3) = swift_getEnumCaseMultiPayload();
  result = sub_2283808C0(v31, type metadata accessor for MedicationOnboardingFlowManager.EntryMode);
  if (!v3)
  {
    v35 = v26;
    v36 = v33;
    v37 = v65;
    v38 = v66;
    v61 = v22;
    v39 = v67;
    v40 = v68;
    v41 = v32 >> 5;
    if (v32 >> 5)
    {
      if (v41 != 1)
      {
        if (v41 != 2 || v32 != 64)
        {
          *v68 = -2;
          return result;
        }

        v42 = v28;
        v67 = v36;
        sub_22837213C(v28);
        v43 = type metadata accessor for MedicationSearchItem(0);
        v44 = *(*(v43 - 8) + 48);
        v45 = v40;
        if (v44(v28, 1, v43) == 1)
        {
          v46 = &qword_27D8238D0;
          v47 = type metadata accessor for MedicationSearchItem;
          v48 = v28;
        }

        else
        {
          v52 = sub_22826F7C8();
          result = sub_2283808C0(v42, type metadata accessor for MedicationSearchItem);
          if ((v52 & 1) == 0)
          {
LABEL_28:
            *v45 = 0;
            return result;
          }

          v65 = *&v67[*(type metadata accessor for MedicationOnboardingFlowManager(0) + 48)];
          sub_22837213C(v35);
          if (v44(v35, 1, v43) == 1)
          {
            sub_228380BA8(v35, &qword_27D8238D0, type metadata accessor for MedicationSearchItem);
            v53 = 1;
            v54 = v63;
            v55 = v61;
          }

          else
          {
            sub_22826FCF8(v38);
            sub_2283808C0(v35, type metadata accessor for MedicationSearchItem);
            v56 = v62;
            sub_228382C68(v38, v62, &qword_27D8264E8, MEMORY[0x277D116A0]);
            v57 = sub_228390C30();
            v58 = *(v57 - 8);
            v53 = 1;
            v59 = (*(v58 + 48))(v56, 1, v57);
            v54 = v63;
            v55 = v61;
            if (v59 != 1)
            {
              (*(v58 + 32))(v61, v56, v57);
              swift_storeEnumTagMultiPayload();
              v53 = 0;
            }
          }

          (*(v64 + 56))(v55, v53, 1, v54);
          sub_228391850();
          v46 = &unk_27D827790;
          v47 = type metadata accessor for FormStepResult;
          v48 = v55;
        }

        result = sub_228380BA8(v48, v46, v47);
        goto LABEL_28;
      }

      if ((v32 & 1) != 0 || (type metadata accessor for MedicationOnboardingFlowManager(0), result = sub_228391870(), (v71 & 1) == 0))
      {
        *v40 = 96;
        return result;
      }

      sub_228377F78(v17);
      v49 = v17;
      v51 = v63;
      v50 = v64;
      if ((*(v64 + 48))(v49, 1, v63) == 1)
      {
        sub_228380BA8(v49, &unk_27D827790, type metadata accessor for FormStepResult);
        (*(v50 + 56))(v37, 1, 1, v51);
        sub_228391850();
        result = sub_228380BA8(v37, &unk_27D827790, type metadata accessor for FormStepResult);
        *v40 = 1;
        return result;
      }

      sub_228381EB4(v49, v39, type metadata accessor for FormStepResult);
      v70 = 0;
      sub_228391850();
      sub_228380F74(v39, v37, type metadata accessor for FormStepResult);
      (*(v50 + 56))(v37, 0, 1, v51);
      sub_228391850();
      sub_228380BA8(v37, &unk_27D827790, type metadata accessor for FormStepResult);
      result = sub_2283808C0(v39, type metadata accessor for FormStepResult);
    }

    else
    {
      type metadata accessor for MedicationOnboardingFlowManager(0);
      sub_228391870();
      result = (*(v64 + 48))(v20, 1, v63);
      if (result != 1)
      {
        result = swift_getEnumCaseMultiPayload();
        if (result != 1)
        {
          sub_228391870();
          *v40 = v69 | 0x20;
          return sub_2283808C0(v20, type metadata accessor for FormStepResult);
        }
      }
    }

    *v40 = 33;
    return result;
  }

  *v68 = -2;
  return result;
}

uint64_t sub_228377F78@<X0>(uint64_t *a1@<X8>)
{
  sub_228368E1C(0, &unk_27D827790, type metadata accessor for FormStepResult);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v16[-v3];
  v5 = sub_228390C30();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for MedicationOnboardingFlowManager(0);
  sub_228391870();
  v9 = type metadata accessor for FormStepResult(0);
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v4, 1, v9) == 1)
  {
    sub_228380BA8(v4, &unk_27D827790, type metadata accessor for FormStepResult);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2283808C0(v4, type metadata accessor for FormStepResult);
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    v11 = sub_228392A70();
    MEMORY[0x28223BE20](v11);
    *&v16[-16] = v8;
    v12 = sub_2282CD6F4(sub_228382CD4, &v16[-32], v11);
    v14 = v13;

    if (v14)
    {

      *a1 = v12;
      swift_storeEnumTagMultiPayload();
      (*(v10 + 56))(a1, 0, 1, v9);
      return (*(v6 + 8))(v8, v5);
    }

    (*(v6 + 8))(v8, v5);
  }

  return (*(v10 + 56))(a1, 1, 1, v9);
}

uint64_t sub_22837827C(uint64_t a1)
{
  v53 = a1;
  v2 = sub_2283911B0();
  v51 = *(v2 - 8);
  v52 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228368E1C(0, &qword_280DDCDB0, MEMORY[0x277CC9578]);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v48 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v50 = &v46 - v8;
  v9 = MEMORY[0x277CC95F0];
  sub_228368E1C(0, &qword_27D827160, MEMORY[0x277CC95F0]);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v46 - v11;
  sub_228368E1C(0, &qword_27D8285B8, MEMORY[0x277D117F8]);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v49 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v46 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v46 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v46 - v22;
  sub_228390580();
  sub_228390570();
  type metadata accessor for MedicationOnboardingFlowManager(0);
  sub_228391870();
  v54 = v23;
  sub_228390550();

  sub_228380BA8(v12, &qword_27D827160, v9);
  v53 = v1;
  v24 = sub_228390DB0();
  if (v24 == 2 || (v28 = v24, v29 = sub_228390DE0(), (v30 & 1) != 0) || v29 != 4)
  {
    sub_228391190();
    v25 = sub_2283911A0();
    v26 = sub_2283925C0();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_22816B000, v25, v26, "Wasn't able to send medication analytics in save because entry point type or suggestionsFromCHR was nil.", v27, 2u);
      MEMORY[0x22AAB7B80](v27, -1, -1);
    }

    (*(v51 + 8))(v4, v52);
  }

  else
  {
    sub_228380F08(v54, v21, &qword_27D8285B8, MEMORY[0x277D117F8]);
    v31 = sub_2283905C0();
    v32 = *(v31 - 8);
    v33 = *(v32 + 48);
    v34 = v33(v21, 1, v31);

    LODWORD(v51) = v34;
    if (v34 == 1)
    {
      sub_228380BA8(v21, &qword_27D8285B8, MEMORY[0x277D117F8]);
      v52 = 0;
    }

    else
    {
      v52 = sub_2283905A0();
      (*(v32 + 8))(v21, v31);
    }

    sub_228380F08(v54, v18, &qword_27D8285B8, MEMORY[0x277D117F8]);
    v35 = v33(v18, 1, v31);
    v47 = v28;
    if (v35 == 1)
    {
      sub_228380BA8(v18, &qword_27D8285B8, MEMORY[0x277D117F8]);
    }

    else
    {
      sub_228390590();
      (*(v32 + 8))(v18, v31);
    }

    v36 = v49;
    sub_228380F08(v54, v49, &qword_27D8285B8, MEMORY[0x277D117F8]);
    if (v33(v36, 1, v31) == 1)
    {
      sub_228380BA8(v36, &qword_27D8285B8, MEMORY[0x277D117F8]);
      v46 = 0;
    }

    else
    {
      v46 = sub_2283905B0();
      (*(v32 + 8))(v36, v31);
    }

    v37 = v50;
    sub_228390830();
    sub_228391870();
    v38 = v55;
    if (v55)
    {
      v39 = [v55 endDateTime];

      if (v39)
      {
        v40 = v48;
        sub_22838F3E0();

        v41 = 0;
      }

      else
      {
        v41 = 1;
        v40 = v48;
      }

      v43 = sub_22838F440();
      v44 = *(v43 - 8);
      (*(v44 + 56))(v40, v41, 1, v43);
      sub_228382C68(v40, v37, &qword_280DDCDB0, MEMORY[0x277CC9578]);
      (*(v44 + 48))(v37, 1, v43);
    }

    else
    {
      v42 = sub_22838F440();
      (*(*(v42 - 8) + 56))(v37, 1, 1, v42);
    }

    sub_228380BA8(v37, &qword_280DDCDB0, MEMORY[0x277CC9578]);
    sub_228390D90();
    swift_allocObject();
    sub_228390D80();
    sub_228390E70();
    sub_228390E60();
  }

  return sub_228380BA8(v54, &qword_27D8285B8, MEMORY[0x277D117F8]);
}

uint64_t sub_228378AB0(uint64_t a1, void *a2, void *a3)
{
  v5 = __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    sub_22818217C(0, &qword_280DDB860, MEMORY[0x277D84948], 1);
    v7 = swift_allocError();
    *v8 = a3;
    v9 = a3;

    return MEMORY[0x282200958](v6, v7);
  }

  else
  {
    if (a2)
    {
      **(v6[8] + 40) = a2;
      v10 = a2;
      v5 = v6;
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x282200950](v5);
  }
}

uint64_t sub_228378B90(uint64_t a1)
{
  v2[19] = a1;
  v2[20] = v1;
  v3 = sub_2283911B0();
  v2[21] = v3;
  v2[22] = *(v3 - 8);
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_228378C5C, 0, 0);
}

uint64_t sub_228378C5C()
{
  v39 = v0;
  type metadata accessor for MedicationOnboardingFlowManager(0);
  sub_228391870();
  v1 = *(v0 + 144);
  *(v0 + 200) = v1;
  if (v1)
  {
    v2 = [v1 medicationIdentifier];
    if (v2)
    {
      v3 = v2;
      v4 = sub_228392000();
      v6 = v5;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v17 = [*(v0 + 152) semanticIdentifier];
    v18 = [v17 stringValue];

    v19 = sub_228392000();
    v21 = v20;

    if (v6)
    {
      if (v4 == v19 && v6 == v21)
      {

LABEL_20:
        v25 = 0;
        goto LABEL_21;
      }

      v23 = sub_228393460();

      if (v23)
      {
        goto LABEL_20;
      }
    }

    else
    {
    }

    v24 = *(v0 + 152);
    sub_22817A958(0, &unk_280DDBA68, 0x277D11570);
    v1 = sub_22837A080(v1, v24);
    v25 = v1;
LABEL_21:
    *(v0 + 208) = v1;
    *(v0 + 216) = v25;
    v26 = v1;
    sub_228391150();
    v27 = sub_2283911A0();
    v28 = sub_2283925A0();
    v29 = os_log_type_enabled(v27, v28);
    v30 = *(v0 + 192);
    v31 = *(v0 + 168);
    v32 = *(v0 + 176);
    if (v29)
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v38 = v34;
      *v33 = 136315138;
      *(v33 + 4) = sub_2281C96FC(0xD00000000000001FLL, 0x80000002283A6420, &v38);
      _os_log_impl(&dword_22816B000, v27, v28, "[%s] Attempting to save medication schedule", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v34);
      MEMORY[0x22AAB7B80](v34, -1, -1);
      MEMORY[0x22AAB7B80](v33, -1, -1);
    }

    (*(v32 + 8))(v30, v31);
    v35 = sub_228390850();
    *(v0 + 224) = v35;
    *(v0 + 16) = v0;
    *(v0 + 24) = sub_228379124;
    v36 = swift_continuation_init();
    sub_2281E0600(0);
    *(v0 + 136) = v37;
    *(v0 + 80) = MEMORY[0x277D85DD0];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_2282B4368;
    *(v0 + 104) = &block_descriptor_34_0;
    *(v0 + 112) = v36;
    [v35 saveSchedule:v26 completion:v0 + 80];

    return MEMORY[0x282200938](v0 + 16);
  }

  sub_228391150();
  v7 = sub_2283911A0();
  v8 = sub_2283925C0();
  v9 = os_log_type_enabled(v7, v8);
  v11 = *(v0 + 176);
  v10 = *(v0 + 184);
  v12 = *(v0 + 168);
  if (v9)
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v38 = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_2281C96FC(0xD00000000000001FLL, 0x80000002283A6420, &v38);
    _os_log_impl(&dword_22816B000, v7, v8, "[%s] Unable to save medication schedule. Schedule was nil.", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x22AAB7B80](v14, -1, -1);
    MEMORY[0x22AAB7B80](v13, -1, -1);
  }

  (*(v11 + 8))(v10, v12);

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_228379124()
{
  v1 = *(*v0 + 48);
  *(*v0 + 232) = v1;
  if (v1)
  {
    v2 = sub_2283792C0;
  }

  else
  {
    v2 = sub_228379234;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_228379234()
{
  v1 = *(v0 + 224);
  v3 = *(v0 + 200);
  v2 = *(v0 + 208);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_2283792C0(uint64_t a1)
{
  v2 = v1[28];
  v4 = v1[26];
  v3 = v1[27];
  v5 = v1[25];
  swift_willThrow();

  v6 = v1[1];

  return v6();
}

uint64_t sub_228379368(uint64_t a1)
{
  v2[25] = a1;
  v2[26] = v1;
  sub_228368E1C(0, &qword_27D827160, MEMORY[0x277CC95F0]);
  v2[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_228379414, 0, 0);
}

uint64_t sub_228379414()
{
  *(v0 + 224) = type metadata accessor for MedicationOnboardingFlowManager(0);
  sub_228391870();
  v1 = *(v0 + 192);
  if (!v1)
  {
    v1 = sub_2281A875C(MEMORY[0x277D84F90]);
  }

  *(v0 + 232) = v1;
  v2 = *(v1 + 32);
  *(v0 + 304) = v2;
  v3 = -1;
  v4 = -1 << v2;
  if (-(-1 << v2) < 64)
  {
    v3 = ~(-1 << -(-1 << v2));
  }

  v5 = v3 & *(v1 + 64);
  if (v5)
  {
    v6 = 0;
LABEL_10:
    *(v0 + 240) = v5;
    *(v0 + 248) = v6;
    v9 = *(v0 + 200);
    v10 = __clz(__rbit64(v5)) | (v6 << 6);
    v11 = *(*(v1 + 48) + 8 * v10);
    *(v0 + 256) = v11;
    LODWORD(v10) = *(*(v1 + 56) + v10);
    *(v0 + 176) = v9;
    if (v10)
    {
      v12 = 2;
    }

    else
    {
      v12 = 1;
    }

    v13 = objc_allocWithZone(MEMORY[0x277CCABB0]);
    v14 = v11;
    v15 = v9;
    *(v0 + 184) = [v13 initWithInteger_];
    sub_2281A8908(0);
    v16 = sub_228393360();

    v17 = *(v0 + 184);
    v18 = *(v0 + 176);
    v19 = v17;
    v20 = sub_2281A7910(v18);
    if (v21)
    {
      __break(1u);
    }

    else
    {
      v16[(v20 >> 6) + 8] |= 1 << v20;
      *(v16[6] + 8 * v20) = v18;
      *(v16[7] + 8 * v20) = v19;
      v22 = v16[2];
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (!v23)
      {
        v25 = *(v0 + 216);
        v16[2] = v24;

        sub_2283808C0(v0 + 176, sub_2282B9158);
        v26 = sub_22838F4A0();
        v27 = *(v26 - 8);
        (*(v27 + 56))(v25, 1, 1, v26);
        sub_22817A958(0, &qword_27D824258, 0x277CCD4B0);
        sub_22817A958(0, &qword_280DDB960, 0x277CCABB0);
        sub_22818C470(&qword_27D824260, &qword_27D824258, 0x277CCD4B0, MEMORY[0x277D85378]);
        v28 = sub_228391F10();

        v29 = 0;
        if ((*(v27 + 48))(v25, 1, v26) != 1)
        {
          v30 = *(v0 + 216);
          v29 = sub_22838F460();
          (*(v27 + 8))(v30, v26);
        }

        v31 = [objc_allocWithZone(MEMORY[0x277CCD718]) initWithObjectAuthorizationStatuses:v28 sessionIdentifier:v29];
        *(v0 + 264) = v31;

        v32 = sub_228390810();
        *(v0 + 272) = v32;
        v33 = [objc_opt_self() userAnnotatedMedicationType];
        *(v0 + 280) = v33;
        v34 = [v14 bundleIdentifier];
        if (!v34)
        {
          sub_228392000();
          v34 = sub_228391FC0();
        }

        *(v0 + 288) = v34;
        *(v0 + 16) = v0;
        *(v0 + 24) = sub_228379924;
        v35 = swift_continuation_init();
        sub_2281E0600(0);
        *(v0 + 136) = v36;
        *(v0 + 80) = MEMORY[0x277D85DD0];
        *(v0 + 88) = 1107296256;
        *(v0 + 96) = sub_2282B4368;
        *(v0 + 104) = &block_descriptor_30_0;
        *(v0 + 112) = v35;
        [v32 setObjectAuthorizationStatusContext:v31 forObjectType:v33 bundleIdentifier:v34 completion:v0 + 80];
        v20 = v0 + 16;

        return MEMORY[0x282200938](v20);
      }
    }

    __break(1u);
    return MEMORY[0x282200938](v20);
  }

  v7 = 0;
  v8 = ((63 - v4) >> 6) - 1;
  while (v8 != v7)
  {
    v6 = v7 + 1;
    v5 = *(v1 + 8 * v7++ + 72);
    if (v5)
    {
      goto LABEL_10;
    }
  }

  v37 = *(v0 + 8);

  return v37();
}

uint64_t sub_228379924()
{
  v1 = *(*v0 + 48);
  *(*v0 + 296) = v1;
  if (v1)
  {
    v2 = sub_228379F1C;
  }

  else
  {
    v2 = sub_228379A34;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_228379A34()
{
  v1 = *(v0 + 280);
  v2 = *(v0 + 288);
  v3 = *(v0 + 272);
  v4 = *(v0 + 256);

  v6 = *(v0 + 248);
  v7 = (*(v0 + 240) - 1) & *(v0 + 240);
  if (v7)
  {
    v5 = *(v0 + 232);
LABEL_7:
    *(v0 + 240) = v7;
    *(v0 + 248) = v6;
    v9 = *(v0 + 200);
    v10 = __clz(__rbit64(v7)) | (v6 << 6);
    v11 = *(*(v5 + 48) + 8 * v10);
    *(v0 + 256) = v11;
    LODWORD(v10) = *(*(v5 + 56) + v10);
    *(v0 + 176) = v9;
    if (v10)
    {
      v12 = 2;
    }

    else
    {
      v12 = 1;
    }

    v13 = objc_allocWithZone(MEMORY[0x277CCABB0]);
    v14 = v11;
    v15 = v9;
    *(v0 + 184) = [v13 initWithInteger_];
    sub_2281A8908(0);
    v16 = sub_228393360();

    v17 = *(v0 + 184);
    v18 = *(v0 + 176);
    v19 = v17;
    v5 = sub_2281A7910(v18);
    if (v20)
    {
LABEL_23:
      __break(1u);
    }

    else
    {
      v16[(v5 >> 6) + 8] |= 1 << v5;
      *(v16[6] + 8 * v5) = v18;
      *(v16[7] + 8 * v5) = v19;
      v21 = v16[2];
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (!v22)
      {
        v24 = *(v0 + 216);
        v16[2] = v23;

        sub_2283808C0(v0 + 176, sub_2282B9158);
        v25 = sub_22838F4A0();
        v26 = *(v25 - 8);
        (*(v26 + 56))(v24, 1, 1, v25);
        sub_22817A958(0, &qword_27D824258, 0x277CCD4B0);
        sub_22817A958(0, &qword_280DDB960, 0x277CCABB0);
        sub_22818C470(&qword_27D824260, &qword_27D824258, 0x277CCD4B0, MEMORY[0x277D85378]);
        v27 = sub_228391F10();

        v28 = 0;
        if ((*(v26 + 48))(v24, 1, v25) != 1)
        {
          v29 = *(v0 + 216);
          v28 = sub_22838F460();
          (*(v26 + 8))(v29, v25);
        }

        v30 = [objc_allocWithZone(MEMORY[0x277CCD718]) initWithObjectAuthorizationStatuses:v27 sessionIdentifier:v28];
        *(v0 + 264) = v30;

        v31 = sub_228390810();
        *(v0 + 272) = v31;
        v32 = [objc_opt_self() userAnnotatedMedicationType];
        *(v0 + 280) = v32;
        v33 = [v14 bundleIdentifier];
        if (!v33)
        {
          sub_228392000();
          v33 = sub_228391FC0();
        }

        *(v0 + 288) = v33;
        *(v0 + 16) = v0;
        *(v0 + 24) = sub_228379924;
        v34 = swift_continuation_init();
        sub_2281E0600(0);
        *(v0 + 136) = v35;
        *(v0 + 80) = MEMORY[0x277D85DD0];
        *(v0 + 88) = 1107296256;
        *(v0 + 96) = sub_2282B4368;
        *(v0 + 104) = &block_descriptor_30_0;
        *(v0 + 112) = v34;
        [v31 setObjectAuthorizationStatusContext:v30 forObjectType:v32 bundleIdentifier:v33 completion:v0 + 80];
        v5 = v0 + 16;

        return MEMORY[0x282200938](v5);
      }
    }

    __break(1u);
    return MEMORY[0x282200938](v5);
  }

  while (1)
  {
    v8 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
      goto LABEL_23;
    }

    v5 = *(v0 + 232);
    if (v8 >= (((1 << *(v0 + 304)) + 63) >> 6))
    {
      break;
    }

    v7 = *(v5 + 8 * v8 + 64);
    ++v6;
    if (v7)
    {
      v6 = v8;
      goto LABEL_7;
    }
  }

  v36 = *(v0 + 8);

  return v36();
}

uint64_t sub_228379F1C(uint64_t a1)
{
  v2 = v1[36];
  v4 = v1[34];
  v3 = v1[35];
  v6 = v1[32];
  v5 = v1[33];
  swift_willThrow();

  v7 = v1[1];

  return v7();
}

uint64_t sub_228379FD4(uint64_t a1)
{
  v1 = sub_228392030();
  v3 = v2;
  sub_228390C00();
  v4 = sub_228392030();
  v6 = v5;

  if (v1 == v4 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_228393460();
  }

  return v8 & 1;
}

id sub_22837A080(void *a1, uint64_t a2)
{
  v3 = v2;
  v48 = a2;
  v5 = sub_2283911B0();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v47 - v10;
  sub_228391150();
  v12 = a1;
  v13 = sub_2283911A0();
  v14 = sub_2283925A0();

  v15 = os_log_type_enabled(v13, v14);
  v16 = &off_2785F4000;
  v49 = v6;
  v50 = v5;
  v47[1] = v3;
  if (v15)
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v51 = v18;
    *v17 = 136315394;
    v19 = sub_228393600();
    v21 = sub_2281C96FC(v19, v20, &v51);

    *(v17 + 4) = v21;
    *(v17 + 12) = 2080;
    v22 = [v12 medicationIdentifier];
    if (v22)
    {
      v23 = v22;
      v24 = sub_228392000();
      v26 = v25;
    }

    else
    {
      v24 = 0;
      v26 = 0xE000000000000000;
    }

    v28 = sub_2281C96FC(v24, v26, &v51);

    *(v17 + 14) = v28;
    _os_log_impl(&dword_22816B000, v13, v14, "[%s] Attempting to create new schedule. Old schedule medication identifier = %s", v17, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AAB7B80](v18, -1, -1);
    MEMORY[0x22AAB7B80](v17, -1, -1);

    v5 = v50;
    v27 = *(v49 + 8);
    v27(v11, v50);
    v16 = &off_2785F4000;
  }

  else
  {

    v27 = *(v6 + 8);
    v27(v11, v5);
  }

  v29 = [v12 copyScheduleForMedication_];
  sub_228391150();
  v30 = v29;
  v31 = sub_2283911A0();
  v32 = sub_2283925A0();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v51 = v34;
    *v33 = 136315394;
    v35 = sub_228393600();
    v37 = sub_2281C96FC(v35, v36, &v51);

    *(v33 + 4) = v37;
    *(v33 + 12) = 2080;
    v38 = [v30 v16[405]];
    if (v38)
    {
      v39 = v38;
      v40 = sub_228392000();
      v42 = v41;
    }

    else
    {
      v40 = 0;
      v42 = 0xE000000000000000;
    }

    v45 = sub_2281C96FC(v40, v42, &v51);

    *(v33 + 14) = v45;
    _os_log_impl(&dword_22816B000, v31, v32, "[%s] Created new schedule with medication identifier = %s", v33, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AAB7B80](v34, -1, -1);
    MEMORY[0x22AAB7B80](v33, -1, -1);

    v44 = v50;
    v43 = v9;
  }

  else
  {

    v43 = v9;
    v44 = v5;
  }

  v27(v43, v44);
  return v30;
}

char *sub_22837A4A4(int a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v43 = a3;
  v7 = a1;
  v8 = type metadata accessor for MedicationOnboardingFlowManager(0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228368E1C(0, &qword_280DDBD20, MEMORY[0x277D116C8]);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v41 - v11;
  v13 = sub_2282C1ED0(a1, &unk_283B66758);
  v14 = a1 >> 5;
  if (v7 != 128 && v14 == 4)
  {
    sub_228391870();
    v15 = sub_2281BF3D4(1, v12, 82.0, 82.0);
    sub_228380BA8(v12, &qword_280DDBD20, MEMORY[0x277D116C8]);
LABEL_4:
    v16 = MedicationOnboardingFlowManager.subtitle.getter();
LABEL_5:
    v41 = v17;
    v42 = v16;
    goto LABEL_13;
  }

  LOBYTE(v45) = a1;
  v15 = SpecificationStep.headerImage.getter();
  if (v14 == 5)
  {
    if (a1 == 161)
    {
      v16 = sub_22837E030(v4);
      goto LABEL_5;
    }
  }

  else if (v14 == 4 && a1 == 129)
  {
    goto LABEL_4;
  }

  v41 = 0;
  v42 = 0;
LABEL_13:
  sub_228380F74(a2, v44, type metadata accessor for MedicationOnboardingFlowManager);
  LOBYTE(v45) = a1;
  SpecificationStep.title.getter();
  if (!v18)
  {
    MedicationOnboardingFlowManager.title.getter();
  }

  v19 = *(v4 + *(v8 + 20));
  sub_228382638(0, &qword_27D8285D0, type metadata accessor for ManualNameDataSource, &off_28185BA98, type metadata accessor for OnboardingStepViewController);
  v21 = objc_allocWithZone(v20);
  v22 = &v21[qword_27D824BE8];
  v45 = sub_228392000();
  v46 = v23;

  MEMORY[0x22AAB5C80](0xD000000000000017, 0x80000002283B60D0);

  v24 = v46;
  *v22 = v45;
  v22[1] = v24;
  *&v21[qword_27D824BF8] = MEMORY[0x277D84FA0];
  v25 = qword_27D824C00;
  *&v21[qword_27D824C00] = 0;
  v26 = qword_27D824C08;
  v21[qword_27D824C08] = 0;
  *&v21[qword_27D824C18] = 0;
  *&v21[qword_27D824C28] = 0;
  *&v21[qword_27D824C30] = 0;
  *&v21[qword_27D824C38] = 0;
  *&v21[qword_27D824C40] = 0;
  sub_228380F74(v44, &v21[qword_27D824BF0], type metadata accessor for MedicationOnboardingFlowManager);
  v21[v26] = (v13 ^ 1) & 1;
  *&v21[v25] = v15;
  *&v21[qword_27D824C10] = v19;
  v27 = v43;
  *&v21[qword_27D824C20] = v43;
  if (v13)
  {
    v28 = v15;
  }

  v29 = v27;
  v30 = v15;
  v31 = v29;

  v32 = sub_228390400();
  v33 = *&v32[qword_27D824BE8 + 8];
  v45 = *&v32[qword_27D824BE8];
  v46 = v33;
  v34 = v32;

  MEMORY[0x22AAB5C80](0x7972616D6972502ELL, 0xEE006E6F74747542);
  v35 = sub_228391FC0();

  v36 = [v34 hxui:v35 addNextButtonWithAccessibilityIdentifier:{v41, v42}];

  v37 = qword_27D824C28;
  v38 = *&v34[qword_27D824C28];
  *&v34[qword_27D824C28] = v36;

  v39 = *&v34[v37];
  if (v39)
  {
    [v39 setEnabled_];
  }

  sub_228363934();
  sub_22836918C(&unk_283B6E198, sub_228380C04, sub_228380C20);
  sub_228369C7C(&unk_283B66730);

  sub_2283808C0(v44, type metadata accessor for MedicationOnboardingFlowManager);
  return v34;
}

char *sub_22837A9B0(int a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v43 = a3;
  v7 = a1;
  v8 = type metadata accessor for MedicationOnboardingFlowManager(0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228368E1C(0, &qword_280DDBD20, MEMORY[0x277D116C8]);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v41 - v11;
  v13 = sub_2282C1ED0(a1, &unk_283B667E8);
  v14 = a1 >> 5;
  if (v7 != 128 && v14 == 4)
  {
    sub_228391870();
    v15 = sub_2281BF3D4(1, v12, 82.0, 82.0);
    sub_228380BA8(v12, &qword_280DDBD20, MEMORY[0x277D116C8]);
LABEL_4:
    v16 = MedicationOnboardingFlowManager.subtitle.getter();
LABEL_5:
    v41 = v17;
    v42 = v16;
    goto LABEL_13;
  }

  LOBYTE(v45) = a1;
  v15 = SpecificationStep.headerImage.getter();
  if (v14 == 5)
  {
    if (a1 == 161)
    {
      v16 = sub_22837E030(v4);
      goto LABEL_5;
    }
  }

  else if (v14 == 4 && a1 == 129)
  {
    goto LABEL_4;
  }

  v41 = 0;
  v42 = 0;
LABEL_13:
  sub_228380F74(a2, v44, type metadata accessor for MedicationOnboardingFlowManager);
  LOBYTE(v45) = a1;
  SpecificationStep.title.getter();
  if (!v18)
  {
    MedicationOnboardingFlowManager.title.getter();
  }

  v19 = *(v4 + *(v8 + 20));
  sub_228381234(0);
  v21 = objc_allocWithZone(v20);
  v22 = &v21[qword_27D824BE8];
  v45 = sub_228392000();
  v46 = v23;

  MEMORY[0x22AAB5C80](0xD000000000000017, 0x80000002283B60D0);

  v24 = v46;
  *v22 = v45;
  v22[1] = v24;
  *&v21[qword_27D824BF8] = MEMORY[0x277D84FA0];
  v25 = qword_27D824C00;
  *&v21[qword_27D824C00] = 0;
  v26 = qword_27D824C08;
  v21[qword_27D824C08] = 0;
  *&v21[qword_27D824C18] = 0;
  *&v21[qword_27D824C28] = 0;
  *&v21[qword_27D824C30] = 0;
  *&v21[qword_27D824C38] = 0;
  *&v21[qword_27D824C40] = 0;
  sub_228380F74(v44, &v21[qword_27D824BF0], type metadata accessor for MedicationOnboardingFlowManager);
  v21[v26] = (v13 ^ 1) & 1;
  *&v21[v25] = v15;
  *&v21[qword_27D824C10] = v19;
  v27 = v43;
  *&v21[qword_27D824C20] = v43;
  if (v13)
  {
    v28 = v15;
  }

  v29 = v27;
  v30 = v15;
  v31 = v29;

  v32 = sub_228390400();
  v33 = *&v32[qword_27D824BE8 + 8];
  v45 = *&v32[qword_27D824BE8];
  v46 = v33;
  v34 = v32;

  MEMORY[0x22AAB5C80](0x7972616D6972502ELL, 0xEE006E6F74747542);
  v35 = sub_228391FC0();

  v36 = [v34 hxui:v35 addNextButtonWithAccessibilityIdentifier:{v41, v42}];

  v37 = qword_27D824C28;
  v38 = *&v34[qword_27D824C28];
  *&v34[qword_27D824C28] = v36;

  v39 = *&v34[v37];
  if (v39)
  {
    [v39 setEnabled_];
  }

  sub_2283641A4();
  sub_22836918C(&unk_283B6E328, sub_228382DC8, sub_228382DCC);
  sub_228369C7C(&unk_283B667C0);

  sub_2283808C0(v44, type metadata accessor for MedicationOnboardingFlowManager);
  return v34;
}

char *sub_22837AE84(int a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v43 = a3;
  v7 = a1;
  v8 = type metadata accessor for MedicationOnboardingFlowManager(0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228368E1C(0, &qword_280DDBD20, MEMORY[0x277D116C8]);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v41 - v11;
  v13 = sub_2282C1ED0(a1, &unk_283B66838);
  v14 = a1 >> 5;
  if (v7 != 128 && v14 == 4)
  {
    sub_228391870();
    v15 = sub_2281BF3D4(1, v12, 82.0, 82.0);
    sub_228380BA8(v12, &qword_280DDBD20, MEMORY[0x277D116C8]);
LABEL_4:
    v16 = MedicationOnboardingFlowManager.subtitle.getter();
LABEL_5:
    v41 = v17;
    v42 = v16;
    goto LABEL_13;
  }

  LOBYTE(v45) = a1;
  v15 = SpecificationStep.headerImage.getter();
  if (v14 == 5)
  {
    if (a1 == 161)
    {
      v16 = sub_22837E030(v4);
      goto LABEL_5;
    }
  }

  else if (v14 == 4 && a1 == 129)
  {
    goto LABEL_4;
  }

  v41 = 0;
  v42 = 0;
LABEL_13:
  sub_228380F74(a2, v44, type metadata accessor for MedicationOnboardingFlowManager);
  LOBYTE(v45) = a1;
  SpecificationStep.title.getter();
  if (!v18)
  {
    MedicationOnboardingFlowManager.title.getter();
  }

  v19 = *(v4 + *(v8 + 20));
  sub_228380FDC(0);
  v21 = objc_allocWithZone(v20);
  v22 = &v21[qword_27D824BE8];
  v45 = sub_228392000();
  v46 = v23;

  MEMORY[0x22AAB5C80](0xD000000000000017, 0x80000002283B60D0);

  v24 = v46;
  *v22 = v45;
  v22[1] = v24;
  *&v21[qword_27D824BF8] = MEMORY[0x277D84FA0];
  v25 = qword_27D824C00;
  *&v21[qword_27D824C00] = 0;
  v26 = qword_27D824C08;
  v21[qword_27D824C08] = 0;
  *&v21[qword_27D824C18] = 0;
  *&v21[qword_27D824C28] = 0;
  *&v21[qword_27D824C30] = 0;
  *&v21[qword_27D824C38] = 0;
  *&v21[qword_27D824C40] = 0;
  sub_228380F74(v44, &v21[qword_27D824BF0], type metadata accessor for MedicationOnboardingFlowManager);
  v21[v26] = (v13 ^ 1) & 1;
  *&v21[v25] = v15;
  *&v21[qword_27D824C10] = v19;
  v27 = v43;
  *&v21[qword_27D824C20] = v43;
  if (v13)
  {
    v28 = v15;
  }

  v29 = v27;
  v30 = v15;
  v31 = v29;

  v32 = sub_228390400();
  v33 = *&v32[qword_27D824BE8 + 8];
  v45 = *&v32[qword_27D824BE8];
  v46 = v33;
  v34 = v32;

  MEMORY[0x22AAB5C80](0x7972616D6972502ELL, 0xEE006E6F74747542);
  v35 = sub_228391FC0();

  v36 = [v34 hxui:v35 addNextButtonWithAccessibilityIdentifier:{v41, v42}];

  v37 = qword_27D824C28;
  v38 = *&v34[qword_27D824C28];
  *&v34[qword_27D824C28] = v36;

  v39 = *&v34[v37];
  if (v39)
  {
    [v39 setEnabled_];
  }

  sub_228363D60();
  sub_22836918C(&unk_283B6E260, sub_228382DC8, sub_228382DCC);
  sub_228369C7C(&unk_283B66810);

  sub_2283808C0(v44, type metadata accessor for MedicationOnboardingFlowManager);
  return v34;
}

char *sub_22837B358(int a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v43 = a3;
  v7 = a1;
  v8 = type metadata accessor for MedicationOnboardingFlowManager(0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228368E1C(0, &qword_280DDBD20, MEMORY[0x277D116C8]);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v41 - v11;
  v13 = sub_2282C1ED0(a1, &unk_283B668D8);
  v14 = a1 >> 5;
  if (v7 != 128 && v14 == 4)
  {
    sub_228391870();
    v15 = sub_2281BF3D4(1, v12, 82.0, 82.0);
    sub_228380BA8(v12, &qword_280DDBD20, MEMORY[0x277D116C8]);
LABEL_4:
    v16 = MedicationOnboardingFlowManager.subtitle.getter();
LABEL_5:
    v41 = v17;
    v42 = v16;
    goto LABEL_13;
  }

  LOBYTE(v45) = a1;
  v15 = SpecificationStep.headerImage.getter();
  if (v14 == 5)
  {
    if (a1 == 161)
    {
      v16 = sub_22837E030(v4);
      goto LABEL_5;
    }
  }

  else if (v14 == 4 && a1 == 129)
  {
    goto LABEL_4;
  }

  v41 = 0;
  v42 = 0;
LABEL_13:
  sub_228380F74(a2, v44, type metadata accessor for MedicationOnboardingFlowManager);
  LOBYTE(v45) = a1;
  SpecificationStep.title.getter();
  if (!v18)
  {
    MedicationOnboardingFlowManager.title.getter();
  }

  v19 = *(v4 + *(v8 + 20));
  sub_228381788(0);
  v21 = objc_allocWithZone(v20);
  v22 = &v21[qword_27D824BE8];
  v45 = sub_228392000();
  v46 = v23;

  MEMORY[0x22AAB5C80](0xD000000000000017, 0x80000002283B60D0);

  v24 = v46;
  *v22 = v45;
  v22[1] = v24;
  *&v21[qword_27D824BF8] = MEMORY[0x277D84FA0];
  v25 = qword_27D824C00;
  *&v21[qword_27D824C00] = 0;
  v26 = qword_27D824C08;
  v21[qword_27D824C08] = 0;
  *&v21[qword_27D824C18] = 0;
  *&v21[qword_27D824C28] = 0;
  *&v21[qword_27D824C30] = 0;
  *&v21[qword_27D824C38] = 0;
  *&v21[qword_27D824C40] = 0;
  sub_228380F74(v44, &v21[qword_27D824BF0], type metadata accessor for MedicationOnboardingFlowManager);
  v21[v26] = (v13 ^ 1) & 1;
  *&v21[v25] = v15;
  *&v21[qword_27D824C10] = v19;
  v27 = v43;
  *&v21[qword_27D824C20] = v43;
  if (v13)
  {
    v28 = v15;
  }

  v29 = v27;
  v30 = v15;
  v31 = v29;

  v32 = sub_228390400();
  v33 = *&v32[qword_27D824BE8 + 8];
  v45 = *&v32[qword_27D824BE8];
  v46 = v33;
  v34 = v32;

  MEMORY[0x22AAB5C80](0x7972616D6972502ELL, 0xEE006E6F74747542);
  v35 = sub_228391FC0();

  v36 = [v34 hxui:v35 addNextButtonWithAccessibilityIdentifier:{v41, v42}];

  v37 = qword_27D824C28;
  v38 = *&v34[qword_27D824C28];
  *&v34[qword_27D824C28] = v36;

  v39 = *&v34[v37];
  if (v39)
  {
    [v39 setEnabled_];
  }

  sub_2283645E8();
  sub_22836918C(&unk_283B6E4E0, sub_228382DC8, sub_228382DCC);
  sub_228369C7C(&unk_283B668B0);

  sub_2283808C0(v44, type metadata accessor for MedicationOnboardingFlowManager);
  return v34;
}

char *sub_22837B82C(int a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v43 = a3;
  v7 = a1;
  v8 = type metadata accessor for MedicationOnboardingFlowManager(0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228368E1C(0, &qword_280DDBD20, MEMORY[0x277D116C8]);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v41 - v11;
  v13 = sub_2282C1ED0(a1, &unk_283B66888);
  v14 = a1 >> 5;
  if (v7 != 128 && v14 == 4)
  {
    sub_228391870();
    v15 = sub_2281BF3D4(1, v12, 82.0, 82.0);
    sub_228380BA8(v12, &qword_280DDBD20, MEMORY[0x277D116C8]);
LABEL_4:
    v16 = MedicationOnboardingFlowManager.subtitle.getter();
LABEL_5:
    v41 = v17;
    v42 = v16;
    goto LABEL_13;
  }

  LOBYTE(v45) = a1;
  v15 = SpecificationStep.headerImage.getter();
  if (v14 == 5)
  {
    if (a1 == 161)
    {
      v16 = sub_22837E030(v4);
      goto LABEL_5;
    }
  }

  else if (v14 == 4 && a1 == 129)
  {
    goto LABEL_4;
  }

  v41 = 0;
  v42 = 0;
LABEL_13:
  sub_228380F74(a2, v44, type metadata accessor for MedicationOnboardingFlowManager);
  LOBYTE(v45) = a1;
  SpecificationStep.title.getter();
  if (!v18)
  {
    MedicationOnboardingFlowManager.title.getter();
  }

  v19 = *(v4 + *(v8 + 20));
  sub_2283814C0(0);
  v21 = objc_allocWithZone(v20);
  v22 = &v21[qword_27D824BE8];
  v45 = sub_228392000();
  v46 = v23;

  MEMORY[0x22AAB5C80](0xD000000000000017, 0x80000002283B60D0);

  v24 = v46;
  *v22 = v45;
  v22[1] = v24;
  *&v21[qword_27D824BF8] = MEMORY[0x277D84FA0];
  v25 = qword_27D824C00;
  *&v21[qword_27D824C00] = 0;
  v26 = qword_27D824C08;
  v21[qword_27D824C08] = 0;
  *&v21[qword_27D824C18] = 0;
  *&v21[qword_27D824C28] = 0;
  *&v21[qword_27D824C30] = 0;
  *&v21[qword_27D824C38] = 0;
  *&v21[qword_27D824C40] = 0;
  sub_228380F74(v44, &v21[qword_27D824BF0], type metadata accessor for MedicationOnboardingFlowManager);
  v21[v26] = (v13 ^ 1) & 1;
  *&v21[v25] = v15;
  *&v21[qword_27D824C10] = v19;
  v27 = v43;
  *&v21[qword_27D824C20] = v43;
  if (v13)
  {
    v28 = v15;
  }

  v29 = v27;
  v30 = v15;
  v31 = v29;

  v32 = sub_228390400();
  v33 = *&v32[qword_27D824BE8 + 8];
  v45 = *&v32[qword_27D824BE8];
  v46 = v33;
  v34 = v32;

  MEMORY[0x22AAB5C80](0x7972616D6972502ELL, 0xEE006E6F74747542);
  v35 = sub_228391FC0();

  v36 = [v34 hxui:v35 addNextButtonWithAccessibilityIdentifier:{v41, v42}];

  v37 = qword_27D824C28;
  v38 = *&v34[qword_27D824C28];
  *&v34[qword_27D824C28] = v36;

  v39 = *&v34[v37];
  if (v39)
  {
    [v39 setEnabled_];
  }

  sub_228364A14();
  sub_22836918C(&unk_283B6E3F0, sub_228382DC8, sub_228382DCC);
  sub_228369C7C(&unk_283B66860);

  sub_2283808C0(v44, type metadata accessor for MedicationOnboardingFlowManager);
  return v34;
}

char *sub_22837BD00(int a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v43 = a3;
  v7 = a1;
  v8 = type metadata accessor for MedicationOnboardingFlowManager(0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228368E1C(0, &qword_280DDBD20, MEMORY[0x277D116C8]);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v41 - v11;
  v13 = sub_2282C1ED0(a1, &unk_283B66928);
  v14 = a1 >> 5;
  if (v7 != 128 && v14 == 4)
  {
    sub_228391870();
    v15 = sub_2281BF3D4(1, v12, 82.0, 82.0);
    sub_228380BA8(v12, &qword_280DDBD20, MEMORY[0x277D116C8]);
LABEL_4:
    v16 = MedicationOnboardingFlowManager.subtitle.getter();
LABEL_5:
    v41 = v17;
    v42 = v16;
    goto LABEL_13;
  }

  LOBYTE(v45) = a1;
  v15 = SpecificationStep.headerImage.getter();
  if (v14 == 5)
  {
    if (a1 == 161)
    {
      v16 = sub_22837E030(v4);
      goto LABEL_5;
    }
  }

  else if (v14 == 4 && a1 == 129)
  {
    goto LABEL_4;
  }

  v41 = 0;
  v42 = 0;
LABEL_13:
  sub_228380F74(a2, v44, type metadata accessor for MedicationOnboardingFlowManager);
  LOBYTE(v45) = a1;
  SpecificationStep.title.getter();
  if (!v18)
  {
    MedicationOnboardingFlowManager.title.getter();
  }

  v19 = *(v4 + *(v8 + 20));
  sub_228381AA0(0);
  v21 = objc_allocWithZone(v20);
  v22 = &v21[qword_27D824BE8];
  v45 = sub_228392000();
  v46 = v23;

  MEMORY[0x22AAB5C80](0xD000000000000017, 0x80000002283B60D0);

  v24 = v46;
  *v22 = v45;
  v22[1] = v24;
  *&v21[qword_27D824BF8] = MEMORY[0x277D84FA0];
  v25 = qword_27D824C00;
  *&v21[qword_27D824C00] = 0;
  v26 = qword_27D824C08;
  v21[qword_27D824C08] = 0;
  *&v21[qword_27D824C18] = 0;
  *&v21[qword_27D824C28] = 0;
  *&v21[qword_27D824C30] = 0;
  *&v21[qword_27D824C38] = 0;
  *&v21[qword_27D824C40] = 0;
  sub_228380F74(v44, &v21[qword_27D824BF0], type metadata accessor for MedicationOnboardingFlowManager);
  v21[v26] = (v13 ^ 1) & 1;
  *&v21[v25] = v15;
  *&v21[qword_27D824C10] = v19;
  v27 = v43;
  *&v21[qword_27D824C20] = v43;
  if (v13)
  {
    v28 = v15;
  }

  v29 = v27;
  v30 = v15;
  v31 = v29;

  v32 = sub_228390400();
  v33 = *&v32[qword_27D824BE8 + 8];
  v45 = *&v32[qword_27D824BE8];
  v46 = v33;
  v34 = v32;

  MEMORY[0x22AAB5C80](0x7972616D6972502ELL, 0xEE006E6F74747542);
  v35 = sub_228391FC0();

  v36 = [v34 hxui:v35 addNextButtonWithAccessibilityIdentifier:{v41, v42}];

  v37 = qword_27D824C28;
  v38 = *&v34[qword_27D824C28];
  *&v34[qword_27D824C28] = v36;

  v39 = *&v34[v37];
  if (v39)
  {
    [v39 setEnabled_];
  }

  sub_228364E40();
  sub_22836918C(&unk_283B6E5A8, sub_228382DC8, sub_228382DCC);
  sub_228369C7C(&unk_283B66900);

  sub_2283808C0(v44, type metadata accessor for MedicationOnboardingFlowManager);
  return v34;
}

char *sub_22837C1D4(int a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v43 = a3;
  v7 = a1;
  v8 = type metadata accessor for MedicationOnboardingFlowManager(0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228368E1C(0, &qword_280DDBD20, MEMORY[0x277D116C8]);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v41 - v11;
  v13 = sub_2282C1ED0(a1, &unk_283B66978);
  v14 = a1 >> 5;
  if (v7 != 128 && v14 == 4)
  {
    sub_228391870();
    v15 = sub_2281BF3D4(1, v12, 82.0, 82.0);
    sub_228380BA8(v12, &qword_280DDBD20, MEMORY[0x277D116C8]);
LABEL_4:
    v16 = MedicationOnboardingFlowManager.subtitle.getter();
LABEL_5:
    v41 = v17;
    v42 = v16;
    goto LABEL_13;
  }

  LOBYTE(v45) = a1;
  v15 = SpecificationStep.headerImage.getter();
  if (v14 == 5)
  {
    if (a1 == 161)
    {
      v16 = sub_22837E030(v4);
      goto LABEL_5;
    }
  }

  else if (v14 == 4 && a1 == 129)
  {
    goto LABEL_4;
  }

  v41 = 0;
  v42 = 0;
LABEL_13:
  sub_228380F74(a2, v44, type metadata accessor for MedicationOnboardingFlowManager);
  LOBYTE(v45) = a1;
  SpecificationStep.title.getter();
  if (!v18)
  {
    MedicationOnboardingFlowManager.title.getter();
  }

  v19 = *(v4 + *(v8 + 20));
  sub_228381CE8(0);
  v21 = objc_allocWithZone(v20);
  v22 = &v21[qword_27D824BE8];
  v45 = sub_228392000();
  v46 = v23;

  MEMORY[0x22AAB5C80](0xD000000000000017, 0x80000002283B60D0);

  v24 = v46;
  *v22 = v45;
  v22[1] = v24;
  *&v21[qword_27D824BF8] = MEMORY[0x277D84FA0];
  v25 = qword_27D824C00;
  *&v21[qword_27D824C00] = 0;
  v26 = qword_27D824C08;
  v21[qword_27D824C08] = 0;
  *&v21[qword_27D824C18] = 0;
  *&v21[qword_27D824C28] = 0;
  *&v21[qword_27D824C30] = 0;
  *&v21[qword_27D824C38] = 0;
  *&v21[qword_27D824C40] = 0;
  sub_228380F74(v44, &v21[qword_27D824BF0], type metadata accessor for MedicationOnboardingFlowManager);
  v21[v26] = (v13 ^ 1) & 1;
  *&v21[v25] = v15;
  *&v21[qword_27D824C10] = v19;
  v27 = v43;
  *&v21[qword_27D824C20] = v43;
  if (v13)
  {
    v28 = v15;
  }

  v29 = v27;
  v30 = v15;
  v31 = v29;

  v32 = sub_228390400();
  v33 = *&v32[qword_27D824BE8 + 8];
  v45 = *&v32[qword_27D824BE8];
  v46 = v33;
  v34 = v32;

  MEMORY[0x22AAB5C80](0x7972616D6972502ELL, 0xEE006E6F74747542);
  v35 = sub_228391FC0();

  v36 = [v34 hxui:v35 addNextButtonWithAccessibilityIdentifier:{v41, v42}];

  v37 = qword_27D824C28;
  v38 = *&v34[qword_27D824C28];
  *&v34[qword_27D824C28] = v36;

  v39 = *&v34[v37];
  if (v39)
  {
    [v39 setEnabled_];
  }

  sub_228365274();
  sub_22836918C(&unk_283B6E670, sub_228382DC8, sub_228382DCC);
  sub_228369C7C(&unk_283B66950);

  sub_2283808C0(v44, type metadata accessor for MedicationOnboardingFlowManager);
  return v34;
}

char *sub_22837C6A8(int a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v43 = a3;
  v7 = a1;
  v8 = type metadata accessor for MedicationOnboardingFlowManager(0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228368E1C(0, &qword_280DDBD20, MEMORY[0x277D116C8]);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v41 - v11;
  v13 = sub_2282C1ED0(a1, &unk_283B669C8);
  v14 = a1 >> 5;
  if (v7 != 128 && v14 == 4)
  {
    sub_228391870();
    v15 = sub_2281BF3D4(1, v12, 82.0, 82.0);
    sub_228380BA8(v12, &qword_280DDBD20, MEMORY[0x277D116C8]);
LABEL_4:
    v16 = MedicationOnboardingFlowManager.subtitle.getter();
LABEL_5:
    v41 = v17;
    v42 = v16;
    goto LABEL_13;
  }

  LOBYTE(v45) = a1;
  v15 = SpecificationStep.headerImage.getter();
  if (v14 == 5)
  {
    if (a1 == 161)
    {
      v16 = sub_22837E030(v4);
      goto LABEL_5;
    }
  }

  else if (v14 == 4 && a1 == 129)
  {
    goto LABEL_4;
  }

  v41 = 0;
  v42 = 0;
LABEL_13:
  sub_228380F74(a2, v44, type metadata accessor for MedicationOnboardingFlowManager);
  LOBYTE(v45) = a1;
  SpecificationStep.title.getter();
  if (!v18)
  {
    MedicationOnboardingFlowManager.title.getter();
  }

  v19 = *(v4 + *(v8 + 20));
  sub_228381F1C(0);
  v21 = objc_allocWithZone(v20);
  v22 = &v21[qword_27D824BE8];
  v45 = sub_228392000();
  v46 = v23;

  MEMORY[0x22AAB5C80](0xD000000000000017, 0x80000002283B60D0);

  v24 = v46;
  *v22 = v45;
  v22[1] = v24;
  *&v21[qword_27D824BF8] = MEMORY[0x277D84FA0];
  v25 = qword_27D824C00;
  *&v21[qword_27D824C00] = 0;
  v26 = qword_27D824C08;
  v21[qword_27D824C08] = 0;
  *&v21[qword_27D824C18] = 0;
  *&v21[qword_27D824C28] = 0;
  *&v21[qword_27D824C30] = 0;
  *&v21[qword_27D824C38] = 0;
  *&v21[qword_27D824C40] = 0;
  sub_228380F74(v44, &v21[qword_27D824BF0], type metadata accessor for MedicationOnboardingFlowManager);
  v21[v26] = (v13 ^ 1) & 1;
  *&v21[v25] = v15;
  *&v21[qword_27D824C10] = v19;
  v27 = v43;
  *&v21[qword_27D824C20] = v43;
  if (v13)
  {
    v28 = v15;
  }

  v29 = v27;
  v30 = v15;
  v31 = v29;

  v32 = sub_228390400();
  v33 = *&v32[qword_27D824BE8 + 8];
  v45 = *&v32[qword_27D824BE8];
  v46 = v33;
  v34 = v32;

  MEMORY[0x22AAB5C80](0x7972616D6972502ELL, 0xEE006E6F74747542);
  v35 = sub_228391FC0();

  v36 = [v34 hxui:v35 addNextButtonWithAccessibilityIdentifier:{v41, v42}];

  v37 = qword_27D824C28;
  v38 = *&v34[qword_27D824C28];
  *&v34[qword_27D824C28] = v36;

  v39 = *&v34[v37];
  if (v39)
  {
    [v39 setEnabled_];
  }

  sub_2283656B8();
  sub_22836918C(&unk_283B6E738, sub_228382DC8, sub_228382DCC);
  sub_228369C7C(&unk_283B669A0);

  sub_2283808C0(v44, type metadata accessor for MedicationOnboardingFlowManager);
  return v34;
}

char *sub_22837CB7C(int a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v43 = a3;
  v7 = a1;
  v8 = type metadata accessor for MedicationOnboardingFlowManager(0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228368E1C(0, &qword_280DDBD20, MEMORY[0x277D116C8]);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v41 - v11;
  v13 = sub_2282C1ED0(a1, &unk_283B66A18);
  v14 = a1 >> 5;
  if (v7 != 128 && v14 == 4)
  {
    sub_228391870();
    v15 = sub_2281BF3D4(1, v12, 82.0, 82.0);
    sub_228380BA8(v12, &qword_280DDBD20, MEMORY[0x277D116C8]);
LABEL_4:
    v16 = MedicationOnboardingFlowManager.subtitle.getter();
LABEL_5:
    v41 = v17;
    v42 = v16;
    goto LABEL_13;
  }

  LOBYTE(v45) = a1;
  v15 = SpecificationStep.headerImage.getter();
  if (v14 == 5)
  {
    if (a1 == 161)
    {
      v16 = sub_22837E030(v4);
      goto LABEL_5;
    }
  }

  else if (v14 == 4 && a1 == 129)
  {
    goto LABEL_4;
  }

  v41 = 0;
  v42 = 0;
LABEL_13:
  sub_228380F74(a2, v44, type metadata accessor for MedicationOnboardingFlowManager);
  LOBYTE(v45) = a1;
  SpecificationStep.title.getter();
  if (!v18)
  {
    MedicationOnboardingFlowManager.title.getter();
  }

  v19 = *(v4 + *(v8 + 20));
  sub_228382168(0);
  v21 = objc_allocWithZone(v20);
  v22 = &v21[qword_27D824BE8];
  v45 = sub_228392000();
  v46 = v23;

  MEMORY[0x22AAB5C80](0xD000000000000017, 0x80000002283B60D0);

  v24 = v46;
  *v22 = v45;
  v22[1] = v24;
  *&v21[qword_27D824BF8] = MEMORY[0x277D84FA0];
  v25 = qword_27D824C00;
  *&v21[qword_27D824C00] = 0;
  v26 = qword_27D824C08;
  v21[qword_27D824C08] = 0;
  *&v21[qword_27D824C18] = 0;
  *&v21[qword_27D824C28] = 0;
  *&v21[qword_27D824C30] = 0;
  *&v21[qword_27D824C38] = 0;
  *&v21[qword_27D824C40] = 0;
  sub_228380F74(v44, &v21[qword_27D824BF0], type metadata accessor for MedicationOnboardingFlowManager);
  v21[v26] = (v13 ^ 1) & 1;
  *&v21[v25] = v15;
  *&v21[qword_27D824C10] = v19;
  v27 = v43;
  *&v21[qword_27D824C20] = v43;
  if (v13)
  {
    v28 = v15;
  }

  v29 = v27;
  v30 = v15;
  v31 = v29;

  v32 = sub_228390400();
  v33 = *&v32[qword_27D824BE8 + 8];
  v45 = *&v32[qword_27D824BE8];
  v46 = v33;
  v34 = v32;

  MEMORY[0x22AAB5C80](0x7972616D6972502ELL, 0xEE006E6F74747542);
  v35 = sub_228391FC0();

  v36 = [v34 hxui:v35 addNextButtonWithAccessibilityIdentifier:{v41, v42}];

  v37 = qword_27D824C28;
  v38 = *&v34[qword_27D824C28];
  *&v34[qword_27D824C28] = v36;

  v39 = *&v34[v37];
  if (v39)
  {
    [v39 setEnabled_];
  }

  sub_228365AFC();
  sub_22836918C(&unk_283B6E800, sub_228382DC8, sub_228382DCC);
  sub_228369C7C(&unk_283B669F0);

  sub_2283808C0(v44, type metadata accessor for MedicationOnboardingFlowManager);
  return v34;
}

char *sub_22837D050(int a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v43 = a3;
  v7 = a1;
  v8 = type metadata accessor for MedicationOnboardingFlowManager(0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228368E1C(0, &qword_280DDBD20, MEMORY[0x277D116C8]);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v41 - v11;
  v13 = sub_2282C1ED0(a1, &unk_283B66A68);
  v14 = a1 >> 5;
  if (v7 != 128 && v14 == 4)
  {
    sub_228391870();
    v15 = sub_2281BF3D4(1, v12, 82.0, 82.0);
    sub_228380BA8(v12, &qword_280DDBD20, MEMORY[0x277D116C8]);
LABEL_4:
    v16 = MedicationOnboardingFlowManager.subtitle.getter();
LABEL_5:
    v41 = v17;
    v42 = v16;
    goto LABEL_13;
  }

  LOBYTE(v45) = a1;
  v15 = SpecificationStep.headerImage.getter();
  if (v14 == 5)
  {
    if (a1 == 161)
    {
      v16 = sub_22837E030(v4);
      goto LABEL_5;
    }
  }

  else if (v14 == 4 && a1 == 129)
  {
    goto LABEL_4;
  }

  v41 = 0;
  v42 = 0;
LABEL_13:
  sub_228380F74(a2, v44, type metadata accessor for MedicationOnboardingFlowManager);
  LOBYTE(v45) = a1;
  SpecificationStep.title.getter();
  if (!v18)
  {
    MedicationOnboardingFlowManager.title.getter();
  }

  v19 = *(v4 + *(v8 + 20));
  sub_228382638(0, &qword_27D8286B8, type metadata accessor for DDIOnboardingDataSource, &off_28185C7E8, type metadata accessor for OnboardingStepViewController);
  v21 = objc_allocWithZone(v20);
  v22 = &v21[qword_27D824BE8];
  v45 = sub_228392000();
  v46 = v23;

  MEMORY[0x22AAB5C80](0xD000000000000017, 0x80000002283B60D0);

  v24 = v46;
  *v22 = v45;
  v22[1] = v24;
  *&v21[qword_27D824BF8] = MEMORY[0x277D84FA0];
  v25 = qword_27D824C00;
  *&v21[qword_27D824C00] = 0;
  v26 = qword_27D824C08;
  v21[qword_27D824C08] = 0;
  *&v21[qword_27D824C18] = 0;
  *&v21[qword_27D824C28] = 0;
  *&v21[qword_27D824C30] = 0;
  *&v21[qword_27D824C38] = 0;
  *&v21[qword_27D824C40] = 0;
  sub_228380F74(v44, &v21[qword_27D824BF0], type metadata accessor for MedicationOnboardingFlowManager);
  v21[v26] = (v13 ^ 1) & 1;
  *&v21[v25] = v15;
  *&v21[qword_27D824C10] = v19;
  v27 = v43;
  *&v21[qword_27D824C20] = v43;
  if (v13)
  {
    v28 = v15;
  }

  v29 = v27;
  v30 = v15;
  v31 = v29;

  v32 = sub_228390400();
  v33 = *&v32[qword_27D824BE8 + 8];
  v45 = *&v32[qword_27D824BE8];
  v46 = v33;
  v34 = v32;

  MEMORY[0x22AAB5C80](0x7972616D6972502ELL, 0xEE006E6F74747542);
  v35 = sub_228391FC0();

  v36 = [v34 hxui:v35 addNextButtonWithAccessibilityIdentifier:{v41, v42}];

  v37 = qword_27D824C28;
  v38 = *&v34[qword_27D824C28];
  *&v34[qword_27D824C28] = v36;

  v39 = *&v34[v37];
  if (v39)
  {
    [v39 setEnabled_];
  }

  sub_228365F28();
  sub_22836918C(&unk_283B6E8F0, sub_228382DC8, sub_228382DCC);
  sub_228369C7C(&unk_283B66A40);

  sub_2283808C0(v44, type metadata accessor for MedicationOnboardingFlowManager);
  return v34;
}

char *sub_22837D55C(int a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v43 = a3;
  v7 = a1;
  v8 = type metadata accessor for MedicationOnboardingFlowManager(0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228368E1C(0, &qword_280DDBD20, MEMORY[0x277D116C8]);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v41 - v11;
  v13 = sub_2282C1ED0(a1, &unk_283B66AB8);
  v14 = a1 >> 5;
  if (v7 != 128 && v14 == 4)
  {
    sub_228391870();
    v15 = sub_2281BF3D4(1, v12, 82.0, 82.0);
    sub_228380BA8(v12, &qword_280DDBD20, MEMORY[0x277D116C8]);
LABEL_4:
    v16 = MedicationOnboardingFlowManager.subtitle.getter();
LABEL_5:
    v41 = v17;
    v42 = v16;
    goto LABEL_13;
  }

  LOBYTE(v45) = a1;
  v15 = SpecificationStep.headerImage.getter();
  if (v14 == 5)
  {
    if (a1 == 161)
    {
      v16 = sub_22837E030(v4);
      goto LABEL_5;
    }
  }

  else if (v14 == 4 && a1 == 129)
  {
    goto LABEL_4;
  }

  v41 = 0;
  v42 = 0;
LABEL_13:
  sub_228380F74(a2, v44, type metadata accessor for MedicationOnboardingFlowManager);
  LOBYTE(v45) = a1;
  SpecificationStep.title.getter();
  if (!v18)
  {
    MedicationOnboardingFlowManager.title.getter();
  }

  v19 = *(v4 + *(v8 + 20));
  sub_228382738(0);
  v21 = objc_allocWithZone(v20);
  v22 = &v21[qword_27D824BE8];
  v45 = sub_228392000();
  v46 = v23;

  MEMORY[0x22AAB5C80](0xD000000000000017, 0x80000002283B60D0);

  v24 = v46;
  *v22 = v45;
  v22[1] = v24;
  *&v21[qword_27D824BF8] = MEMORY[0x277D84FA0];
  v25 = qword_27D824C00;
  *&v21[qword_27D824C00] = 0;
  v26 = qword_27D824C08;
  v21[qword_27D824C08] = 0;
  *&v21[qword_27D824C18] = 0;
  *&v21[qword_27D824C28] = 0;
  *&v21[qword_27D824C30] = 0;
  *&v21[qword_27D824C38] = 0;
  *&v21[qword_27D824C40] = 0;
  sub_228380F74(v44, &v21[qword_27D824BF0], type metadata accessor for MedicationOnboardingFlowManager);
  v21[v26] = (v13 ^ 1) & 1;
  *&v21[v25] = v15;
  *&v21[qword_27D824C10] = v19;
  v27 = v43;
  *&v21[qword_27D824C20] = v43;
  if (v13)
  {
    v28 = v15;
  }

  v29 = v27;
  v30 = v15;
  v31 = v29;

  v32 = sub_228390400();
  v33 = *&v32[qword_27D824BE8 + 8];
  v45 = *&v32[qword_27D824BE8];
  v46 = v33;
  v34 = v32;

  MEMORY[0x22AAB5C80](0x7972616D6972502ELL, 0xEE006E6F74747542);
  v35 = sub_228391FC0();

  v36 = [v34 hxui:v35 addNextButtonWithAccessibilityIdentifier:{v41, v42}];

  v37 = qword_27D824C28;
  v38 = *&v34[qword_27D824C28];
  *&v34[qword_27D824C28] = v36;

  v39 = *&v34[v37];
  if (v39)
  {
    [v39 setEnabled_];
  }

  sub_228366354();
  sub_22836918C(&unk_283B6E9B8, sub_228382DC8, sub_228382DCC);
  sub_228369C7C(&unk_283B66A90);

  sub_2283808C0(v44, type metadata accessor for MedicationOnboardingFlowManager);
  return v34;
}

char *sub_22837DA30(uint64_t a1)
{
  sub_228368E1C(0, &qword_27D8238D0, type metadata accessor for MedicationSearchItem);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v17 - v3;
  sub_228368E1C(0, &unk_27D827790, type metadata accessor for FormStepResult);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = (v17 - v6);
  type metadata accessor for MedicationOnboardingFlowManager(0);
  sub_228391870();
  v8 = type metadata accessor for FormStepResult(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_228380BA8(v7, &unk_27D827790, type metadata accessor for FormStepResult);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v9 = *v7;
      v10 = sub_228390840();
      objc_allocWithZone(type metadata accessor for ManualStrengthStepViewController(0));
      memset(v17, 0, sizeof(v17));
      v18 = -1;
      sub_228380234(0, &qword_27D824858, &qword_27D824860, &type metadata for StrengthStepResult);
      swift_allocObject();
      v11 = sub_228391890();
      type metadata accessor for ManualStrengthDataSource(0);
      swift_allocObject();
      v12 = sub_2282557D8(v11, v9);
      v13 = type metadata accessor for MedicationSearchItem(0);
      (*(*(v13 - 8) + 56))(v4, 1, 1, v13);
      v14 = sub_22837FEA8(v4, v12, v10, sub_228381978, &qword_27D825FA8);

      v15 = sub_22837B358(33, a1, v14);

      return v15;
    }

    sub_2283808C0(v7, type metadata accessor for FormStepResult);
  }

  result = sub_228393300();
  __break(1u);
  return result;
}

id sub_22837DD7C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for FormStepResult(0);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = (&v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6);
  v10 = &v23 - v9;
  sub_228368E1C(0, &unk_27D827790, type metadata accessor for FormStepResult);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v23 - v12;
  type metadata accessor for MedicationOnboardingFlowManager(0);
  sub_228391870();
  if ((*(v5 + 48))(v13, 1, v4))
  {
    sub_228380BA8(v13, &unk_27D827790, type metadata accessor for FormStepResult);
  }

  else
  {
    sub_228380F74(v13, v10, type metadata accessor for FormStepResult);
    sub_228380BA8(v13, &unk_27D827790, type metadata accessor for FormStepResult);
    sub_228381EB4(v10, v8, type metadata accessor for FormStepResult);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v14 = 0;
      v15 = *v8;
      goto LABEL_7;
    }

    sub_2283808C0(v8, type metadata accessor for FormStepResult);
  }

  v15 = 0;
  v14 = 1;
LABEL_7:
  v16 = MedicationOnboardingFlowManager.currentMedicationUDC.getter();
  v17 = sub_2283929F0();
  v19 = v18;

  sub_228391870();
  v20 = v24;
  if (v24)
  {
    v21 = sub_228392E70();
  }

  else
  {
    v21 = 0;
  }

  result = a1;
  *a2 = v15;
  *(a2 + 8) = v14;
  *(a2 + 16) = v17;
  *(a2 + 24) = v19 & 1;
  *(a2 + 32) = v21;
  *(a2 + 40) = result;
  return result;
}

uint64_t sub_22837E030(uint64_t a1)
{
  if (!*(a1 + *(type metadata accessor for MedicationOnboardingFlowManager(0) + 80)))
  {
    return 0;
  }

  sub_228391870();
  if (!v8)
  {
    return 0;
  }

  if ((v8 & 0xC000000000000001) != 0)
  {
    v1 = sub_2283930D0();
  }

  else
  {
    v1 = *(v8 + 16);
  }

  if (qword_280DDCF18 != -1)
  {
    swift_once();
  }

  sub_22819A064(0, &qword_280DDB870, &qword_280DDB830, MEMORY[0x277D84D98], 1);
  v3 = swift_allocObject();
  v4 = MEMORY[0x277D83B88];
  *(v3 + 16) = xmmword_228397F40;
  v5 = MEMORY[0x277D83C10];
  *(v3 + 56) = v4;
  *(v3 + 64) = v5;
  *(v3 + 32) = v1;
  v6 = sub_22838F0C0();
  if (*(v3 + 16))
  {
    v7 = sub_228391FD0();
  }

  else
  {
    v7 = v6;
  }

  return v7;
}

uint64_t sub_22837E1E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[22] = a4;
  v5 = sub_2283911B0();
  v4[23] = v5;
  v4[24] = *(v5 - 8);
  v4[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22837E2D0, 0, 0);
}

uint64_t sub_22837E2D0()
{
  v0[26] = type metadata accessor for MedicationOnboardingFlowManager(0);
  v1 = sub_228390810();
  v0[27] = v1;
  v2 = *MEMORY[0x277CCC190];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_22837E47C;
  v3 = swift_continuation_init();
  sub_228380920(0, &qword_27D8285C8, &qword_27D827190, MEMORY[0x277D83B48], sub_2283809B0);
  v0[17] = v4;
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_22837EDEC;
  v0[13] = &block_descriptor_38_0;
  v0[14] = v3;
  [v1 fetchSourcesWithExistingAuthorizationsForHealthConceptDomain:v2 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_22837E47C()
{
  v1 = *(*v0 + 48);
  *(*v0 + 224) = v1;
  if (v1)
  {
    v2 = sub_22837EBCC;
  }

  else
  {
    v2 = sub_22837E5B8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

id sub_22837E5B8()
{
  v55 = v0;
  v54 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 208);
  v2 = *(v0 + 176);
  v3 = *(v0 + 144);

  v4 = *(v2 + *(v1 + 80));
  if (!v4)
  {
    goto LABEL_49;
  }

  v51 = v4;
  v52 = v3;
  if ((v3 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x277D84FA0];
    v53 = MEMORY[0x277D84FA0];

    v6 = sub_228393080();
    v7 = sub_228393100();
    if (v7)
    {
      v8 = v7;
      sub_22817A958(0, &qword_27D824240, 0x277CCDA00);
      v9 = v8;
      do
      {
        *(v0 + 168) = v9;
        swift_dynamicCast();
        v16 = *(v0 + 160);
        if (![v16 _isApplication])
        {
          goto LABEL_14;
        }

        v17 = [objc_opt_self() defaultWorkspace];
        if (!v17)
        {
          __break(1u);
        }

        v18 = v17;
        v19 = [v16 bundleIdentifier];
        if (!v19)
        {
          sub_228392000();
          v19 = sub_228391FC0();
        }

        v20 = [v18 applicationIsInstalled_];

        if ((v20 & 1) == 0)
        {
        }

        else
        {
LABEL_14:
          v3 = *(v0 + 160);
          v21 = *(v5 + 16);
          if (*(v5 + 24) <= v21)
          {
            sub_2282D6DFC(v21 + 1);
            v5 = v53;
          }

          v10 = sub_228392C50();
          v11 = v5 + 56;
          v12 = -1 << *(v5 + 32);
          v13 = v10 & ~v12;
          v14 = v13 >> 6;
          if (((-1 << v13) & ~*(v5 + 56 + 8 * (v13 >> 6))) != 0)
          {
            v15 = __clz(__rbit64((-1 << v13) & ~*(v5 + 56 + 8 * (v13 >> 6)))) | v13 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v22 = 0;
            v23 = (63 - v12) >> 6;
            do
            {
              if (++v14 == v23 && (v22 & 1) != 0)
              {
                __break(1u);
                goto LABEL_52;
              }

              v24 = v14 == v23;
              if (v14 == v23)
              {
                v14 = 0;
              }

              v22 |= v24;
              v25 = *(v11 + 8 * v14);
            }

            while (v25 == -1);
            v15 = __clz(__rbit64(~v25)) + (v14 << 6);
          }

          *(v11 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
          *(*(v5 + 48) + 8 * v15) = v3;
          ++*(v5 + 16);
        }

        v9 = sub_228393100();
      }

      while (v9);
    }

    goto LABEL_48;
  }

  v26 = *(v3 + 32);
  v27 = v26 & 0x3F;
  v6 = ((1 << v26) + 63) >> 6;
  v5 = 8 * v6;

  if (v27 > 0xD)
  {
    goto LABEL_53;
  }

  while (2)
  {
    v47 = &v47;
    v48 = v6;
    MEMORY[0x28223BE20](v28);
    v49 = &v47 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v49, v5);
    v50 = 0;
    v29 = 0;
    v30 = v3 + 56;
    v31 = 1 << *(v3 + 32);
    v32 = -1;
    if (v31 < 64)
    {
      v32 = ~(-1 << v31);
    }

    v5 = v32 & *(v3 + 56);
    v33 = (v31 + 63) >> 6;
    while (v5)
    {
      v35 = __clz(__rbit64(v5));
      v5 &= v5 - 1;
LABEL_39:
      v6 = v35 | (v29 << 6);
      v38 = *(*(v3 + 48) + 8 * v6);
      if ([v38 _isApplication])
      {
        result = [objc_opt_self() defaultWorkspace];
        if (!result)
        {
          __break(1u);
          return result;
        }

        v40 = result;
        v41 = [v38 bundleIdentifier];
        if (!v41)
        {
          sub_228392000();
          v41 = sub_228391FC0();
        }

        v34 = [v40 applicationIsInstalled_];

        v3 = v52;
        if (v34)
        {
          goto LABEL_44;
        }
      }

      else
      {

LABEL_44:
        *&v49[(v6 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v6;
        if (__OFADD__(v50++, 1))
        {
          __break(1u);
LABEL_47:
          v5 = sub_22827A9C0(v49, v48, v50, v3);
          goto LABEL_48;
        }
      }
    }

    v36 = v29;
    while (1)
    {
      v29 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        break;
      }

      if (v29 >= v33)
      {
        goto LABEL_47;
      }

      v37 = *(v30 + 8 * v29);
      ++v36;
      if (v37)
      {
        v35 = __clz(__rbit64(v37));
        v5 = (v37 - 1) & v37;
        goto LABEL_39;
      }
    }

LABEL_52:
    __break(1u);
LABEL_53:

    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v46 = swift_slowAlloc();
  v5 = sub_22837F4E4(v46, v6, v3, sub_22837F6B4, 0);

  MEMORY[0x22AAB7B80](v46, -1, -1);
LABEL_48:
  sub_22837EFF8(v5);
  v44 = v43;

  *(v0 + 152) = v44;
  sub_228391850();
LABEL_49:

  v45 = *(v0 + 8);

  return v45();
}

uint64_t sub_22837EBCC(uint64_t a1)
{
  v20 = v1;
  v19[1] = *MEMORY[0x277D85DE8];
  v3 = v1[27];
  v2 = v1[28];
  swift_willThrow();

  sub_228391150();
  v4 = v2;
  v5 = sub_2283911A0();
  v6 = sub_2283925C0();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v1[28];
  v10 = v1[24];
  v9 = v1[25];
  v11 = v1[23];
  if (v7)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v19[0] = v14;
    *v12 = 136315394;
    *(v12 + 4) = sub_2281C96FC(0xD00000000000001FLL, 0x80000002283A6420, v19);
    *(v12 + 12) = 2112;
    v15 = v8;
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 14) = v16;
    *v13 = v16;
    _os_log_impl(&dword_22816B000, v5, v6, "[%s] %@", v12, 0x16u);
    sub_228193354(v13);
    MEMORY[0x22AAB7B80](v13, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x22AAB7B80](v14, -1, -1);
    MEMORY[0x22AAB7B80](v12, -1, -1);
  }

  else
  {
  }

  (*(v10 + 8))(v9, v11);

  v17 = v1[1];

  return v17();
}

uint64_t sub_22837EDEC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_22818217C(0, &qword_280DDB860, MEMORY[0x277D84948], 1);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return MEMORY[0x282200958](v4, v5);
  }

  else
  {
    sub_22817A958(0, &qword_27D824240, 0x277CCDA00);
    sub_22818C470(&qword_27D827840, &qword_27D824240, 0x277CCDA00, MEMORY[0x277D85378]);
    **(*(v4 + 64) + 40) = sub_228392480();

    return MEMORY[0x282200950](v4);
  }
}

uint64_t sub_22837EF28(void *a1)
{
  if (![a1 _isApplication])
  {
    return 1;
  }

  result = [objc_opt_self() defaultWorkspace];
  if (result)
  {
    v3 = result;
    v4 = [a1 bundleIdentifier];
    if (!v4)
    {
      sub_228392000();
      v4 = sub_228391FC0();
    }

    v5 = [v3 applicationIsInstalled_];

    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_22837EFF8(uint64_t a1)
{
  v1 = a1;
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) == 0)
  {
    if (*(a1 + 16))
    {
      goto LABEL_3;
    }

LABEL_5:
    v3 = MEMORY[0x277D84FA0];
    goto LABEL_6;
  }

  if (!sub_2283930D0())
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_2283809B0(0, &qword_27D824E98, MEMORY[0x277D84098]);
  v3 = sub_2283931A0();
LABEL_6:
  if (sub_22817A958(0, &qword_27D824240, 0x277CCDA00) == MEMORY[0x277D837D0])
  {
    if (v2)
    {

      sub_228393080();
      sub_22818C470(&qword_27D827840, &qword_27D824240, 0x277CCDA00, MEMORY[0x277D85378]);
      sub_2283924C0();
      v1 = v39;
      v8 = v40;
      v9 = v41;
      v10 = v42;
      v11 = v43;
    }

    else
    {
      v30 = -1 << *(v1 + 32);
      v8 = v1 + 56;
      v9 = ~v30;
      v31 = -v30;
      if (v31 < 64)
      {
        v32 = ~(-1 << v31);
      }

      else
      {
        v32 = -1;
      }

      v11 = v32 & *(v1 + 56);

      v10 = 0;
    }

    while ((v1 & 0x8000000000000000) == 0)
    {
      if (v11)
      {
        v33 = v10;
        goto LABEL_44;
      }

      v36 = v10;
      do
      {
        v33 = v36 + 1;
        if (__OFADD__(v36, 1))
        {
          goto LABEL_60;
        }

        if (v33 >= ((v9 + 64) >> 6))
        {
          v37 = v1;
          goto LABEL_56;
        }

        v11 = *(v8 + 8 * v33);
        ++v36;
      }

      while (!v11);
      v10 = v33;
LABEL_44:
      v34 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v35 = *(*(v1 + 48) + ((v33 << 9) | (8 * v34)));
LABEL_45:
      sub_22837F574(v35);
    }

    if (sub_228393100())
    {
      swift_dynamicCast();
      v35 = v38;
      goto LABEL_45;
    }

    v37 = v1;
LABEL_56:
    sub_2282B9E34(v37);
LABEL_57:

    return;
  }

  if (v2)
  {

    sub_228393080();
    sub_22818C470(&qword_27D827840, &qword_27D824240, 0x277CCDA00, MEMORY[0x277D85378]);
    sub_2283924C0();
    v1 = v39;
    v4 = v40;
    v5 = v41;
    v6 = v42;
    v7 = v43;
  }

  else
  {
    v12 = -1 << *(v1 + 32);
    v4 = v1 + 56;
    v5 = ~v12;
    v13 = -v12;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v7 = v14 & *(v1 + 56);

    v6 = 0;
  }

  v15 = (v5 + 64) >> 6;
  v16 = v3 + 56;
  while (v1 < 0)
  {
    if (!sub_228393100())
    {
LABEL_38:
      sub_2282B9E34(v1);
      goto LABEL_57;
    }

    swift_dynamicCast();
    v19 = v38;
LABEL_29:
    v22 = sub_228392C50();
    v23 = -1 << *(v3 + 32);
    v24 = v22 & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v16 + 8 * (v24 >> 6))) != 0)
    {
      v17 = __clz(__rbit64((-1 << v24) & ~*(v16 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v26 = 0;
      v27 = (63 - v23) >> 6;
      do
      {
        if (++v25 == v27 && (v26 & 1) != 0)
        {
          __break(1u);
          goto LABEL_59;
        }

        v28 = v25 == v27;
        if (v25 == v27)
        {
          v25 = 0;
        }

        v26 |= v28;
        v29 = *(v16 + 8 * v25);
      }

      while (v29 == -1);
      v17 = __clz(__rbit64(~v29)) + (v25 << 6);
    }

    *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
    *(*(v3 + 48) + 8 * v17) = v19;
    ++*(v3 + 16);
  }

  if (v7)
  {
    v18 = v6;
LABEL_28:
    v21 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v38 = *(*(v1 + 48) + ((v18 << 9) | (8 * v21)));
    v19 = v38;
    goto LABEL_29;
  }

  v20 = v6;
  while (1)
  {
    v18 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v18 >= v15)
    {
      goto LABEL_38;
    }

    v7 = *(v4 + 8 * v18);
    ++v20;
    if (v7)
    {
      v6 = v18;
      goto LABEL_28;
    }
  }

LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
}

void *sub_22837F4E4(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *), uint64_t a5)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      v8 = a5;
      v9 = a4;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
      a4 = v9;
      a5 = v8;
    }

    sub_22827A604(result, a2, a3, a4, a5);
    v11 = v10;

    return v11;
  }

  return result;
}

void sub_22837F574(uint64_t a1)
{
  v3 = *v1;
  v4 = sub_228392C50();
  v5 = v3 + 56;
  v6 = -1 << *(v3 + 32);
  v7 = v4 & ~v6;
  v8 = v7 >> 6;
  v9 = *(v3 + 56 + 8 * (v7 >> 6));
  v10 = 1 << v7;
  if (((1 << v7) & v9) != 0)
  {
    v11 = ~v6;
    sub_22817A958(0, &qword_27D824240, 0x277CCDA00);
    while (1)
    {
      v12 = *(*(v3 + 48) + 8 * v7);
      v13 = sub_228392C60();

      if (v13)
      {
        break;
      }

      v7 = (v7 + 1) & v11;
      v8 = v7 >> 6;
      v9 = *(v5 + 8 * (v7 >> 6));
      v10 = 1 << v7;
      if (((1 << v7) & v9) == 0)
      {
        goto LABEL_5;
      }
    }

    v15 = *(v3 + 48);
    v16 = *(v15 + 8 * v7);
    *(v15 + 8 * v7) = a1;
  }

  else
  {
LABEL_5:
    v14 = *(v3 + 16);
    if (v14 >= *(v3 + 24))
    {
      __break(1u);
    }

    else
    {
      *(v5 + 8 * v8) = v10 | v9;
      *(*(v3 + 48) + 8 * v7) = a1;
      *(v3 + 16) = v14 + 1;
    }
  }
}

uint64_t _s19HealthMedicationsUI31MedicationOnboardingFlowManagerV9EntryModeO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_22838F4A0();
  v77 = *(v4 - 8);
  v78 = v4;
  v5 = MEMORY[0x28223BE20](v4);
  v73 = &v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v74 = &v71 - v7;
  v76 = type metadata accessor for MedicationSearchItem(0);
  v8 = MEMORY[0x28223BE20](v76);
  v75 = &v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v72 = &v71 - v10;
  v11 = type metadata accessor for MedicationOnboardingFlowManager.EntryMode(0);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = (&v71 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = MEMORY[0x28223BE20](v12);
  v17 = (&v71 - v16);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v71 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v71 - v21;
  sub_22838085C(0);
  v24 = MEMORY[0x28223BE20](v23 - 8);
  v26 = &v71 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = &v26[*(v24 + 56)];
  sub_228380F74(a1, v26, type metadata accessor for MedicationOnboardingFlowManager.EntryMode);
  sub_228380F74(a2, v27, type metadata accessor for MedicationOnboardingFlowManager.EntryMode);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_228380F74(v26, v17, type metadata accessor for MedicationOnboardingFlowManager.EntryMode);
      v29 = *v17;
      sub_2282FEBEC(0);
      v31 = *(v30 + 48);
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        (*(v77 + 8))(v17 + v31, v78);

        goto LABEL_31;
      }

      v32 = *v27;
      v33 = v77;
      v34 = *(v77 + 32);
      v35 = v17 + v31;
      v36 = v74;
      v37 = v78;
      v34(v74, v35, v78);
      v38 = v27 + v31;
      v39 = v73;
      v34(v73, v38, v37);
      sub_22817A958(0, &qword_27D825620, 0x277D82BB8);
      v40 = sub_228392C60();

      if (v40)
      {
        v41 = sub_22838F470();
        v42 = *(v33 + 8);
        v42(v39, v37);
        v42(v36, v37);
LABEL_49:
        v58 = type metadata accessor for MedicationOnboardingFlowManager.EntryMode;
        goto LABEL_50;
      }

      v69 = *(v33 + 8);
      v69(v39, v37);
      v69(v36, v37);
LABEL_48:
      v41 = 0;
      goto LABEL_49;
    }

    sub_228380F74(v26, v14, type metadata accessor for MedicationOnboardingFlowManager.EntryMode);
    v54 = *v14;
    v53 = v14[1];
    if (swift_getEnumCaseMultiPayload() != 3)
    {

      goto LABEL_31;
    }

    v55 = v27[1];
    if (v53)
    {
      if (v55)
      {
        if (v54 == *v27 && v53 == v55)
        {

          goto LABEL_53;
        }

        v57 = sub_228393460();

        v58 = type metadata accessor for MedicationOnboardingFlowManager.EntryMode;
        if ((v57 & 1) == 0)
        {
          goto LABEL_48;
        }

LABEL_51:
        v41 = 1;
        goto LABEL_50;
      }
    }

    else
    {
      v58 = type metadata accessor for MedicationOnboardingFlowManager.EntryMode;
      if (!v55)
      {
        goto LABEL_51;
      }
    }

    goto LABEL_48;
  }

  if (EnumCaseMultiPayload)
  {
    sub_228380F74(v26, v20, type metadata accessor for MedicationOnboardingFlowManager.EntryMode);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_2283808C0(v20, type metadata accessor for MedicationSearchItem);
      goto LABEL_31;
    }

    v43 = v75;
    sub_228381EB4(v27, v75, type metadata accessor for MedicationSearchItem);
    if ((_s19HealthMedicationsUI20MedicationSearchItemV6SourceO2eeoiySbAE_AEtFZ_0(v20, v43) & 1) != 0 && *&v20[v76[5]] == *(v43 + v76[5]))
    {
      if (v44 = v76[6], v45 = *&v20[v44], v46 = *&v20[v44 + 8], v47 = (v43 + v44), v45 == *v47) && v46 == v47[1] || (sub_228393460())
      {
        if (v48 = v76[7], v49 = *&v20[v48], v50 = *&v20[v48 + 8], v51 = (v43 + v48), v49 == *v51) && v50 == v51[1] || (sub_228393460())
        {
          sub_2283808C0(v43, type metadata accessor for MedicationSearchItem);
          v52 = v20;
LABEL_42:
          sub_2283808C0(v52, type metadata accessor for MedicationSearchItem);
LABEL_53:
          v41 = 1;
          goto LABEL_49;
        }
      }
    }

    sub_2283808C0(v43, type metadata accessor for MedicationSearchItem);
    v59 = v20;
    goto LABEL_44;
  }

  sub_228380F74(v26, v22, type metadata accessor for MedicationOnboardingFlowManager.EntryMode);
  if (!swift_getEnumCaseMultiPayload())
  {
    v60 = v72;
    sub_228381EB4(v27, v72, type metadata accessor for MedicationSearchItem);
    if ((_s19HealthMedicationsUI20MedicationSearchItemV6SourceO2eeoiySbAE_AEtFZ_0(v22, v60) & 1) != 0 && *&v22[v76[5]] == *(v60 + v76[5]))
    {
      if (v61 = v76[6], v62 = *&v22[v61], v63 = *&v22[v61 + 8], v64 = (v60 + v61), v62 == *v64) && v63 == v64[1] || (sub_228393460())
      {
        if (v65 = v76[7], v66 = *&v22[v65], v67 = *&v22[v65 + 8], v68 = (v60 + v65), v66 == *v68) && v67 == v68[1] || (sub_228393460())
        {
          sub_2283808C0(v60, type metadata accessor for MedicationSearchItem);
          v52 = v22;
          goto LABEL_42;
        }
      }
    }

    sub_2283808C0(v60, type metadata accessor for MedicationSearchItem);
    v59 = v22;
LABEL_44:
    sub_2283808C0(v59, type metadata accessor for MedicationSearchItem);
    goto LABEL_48;
  }

  sub_2283808C0(v22, type metadata accessor for MedicationSearchItem);
LABEL_31:
  v41 = 0;
  v58 = sub_22838085C;
LABEL_50:
  sub_2283808C0(v26, v58);
  return v41 & 1;
}

uint64_t sub_22837FEA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), void *a5)
{
  v8 = v5;
  sub_228380F08(a1, v8 + qword_27D828B18, &qword_27D8238D0, type metadata accessor for MedicationSearchItem);
  a4(0);
  v12 = swift_allocObject();
  v13 = *(a2 + *a5);
  *(v8 + qword_27D824D88) = v12;
  *(v12 + 16) = a2;
  *(v12 + 24) = v13;
  *(v8 + qword_27D824D90) = a3;
  sub_2283901F0();
  sub_22819A064(0, &qword_27D827750, &qword_27D8238E8, MEMORY[0x277D10F28], 0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_228397F40;
  v15 = MEMORY[0x277D10F80];
  *(v14 + 32) = a2;
  *(v14 + 40) = v15;
  swift_retain_n();

  sub_228390220();
  v16 = sub_228390480();
  sub_228380BA8(a1, &qword_27D8238D0, type metadata accessor for MedicationSearchItem);
  return v16;
}

uint64_t sub_228380038(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6, void *a7)
{
  v12 = v7;
  sub_228380F08(a1, v12 + qword_27D828B18, &qword_27D8238D0, type metadata accessor for MedicationSearchItem);
  sub_228382638(0, a4, a5, a6, type metadata accessor for SpecificationStepViewController.MedicationOnboardingStepObservableDataSource);
  v16 = swift_allocObject();
  v17 = *(a2 + *a7);
  *(v12 + qword_27D824D88) = v16;
  *(v16 + 16) = a2;
  *(v16 + 24) = v17;
  *(v12 + qword_27D824D90) = a3;
  sub_2283901F0();
  sub_22819A064(0, &qword_27D827750, &qword_27D8238E8, MEMORY[0x277D10F28], 0);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_228397F40;
  v19 = MEMORY[0x277D10F80];
  *(v18 + 32) = a2;
  *(v18 + 40) = v19;
  swift_retain_n();

  sub_228390220();
  v20 = sub_228390480();
  sub_228380BA8(a1, &qword_27D8238D0, type metadata accessor for MedicationSearchItem);
  return v20;
}

void sub_2283801CC(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_22817A958(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_228380234(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_228382CF4(255, a3, a4, MEMORY[0x277D83D88]);
    v5 = sub_228391880();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_2283802B0(uint64_t a1, unint64_t *a2, unint64_t *a3, unint64_t *a4, void *a5)
{
  if (!*a2)
  {
    sub_2283801CC(255, a3, a4, a5, MEMORY[0x277D83D88]);
    v6 = sub_228391880();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_228380330(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_228368E1C(255, a3, a4);
    v5 = sub_228391880();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_2283803B8(uint64_t a1)
{
  if (!qword_27D827848)
  {
    sub_228380420(255);
    v1 = sub_228391880();
    if (!v2)
    {
      atomic_store(v1, &qword_27D827848);
    }
  }
}

void sub_228380420(uint64_t a1)
{
  if (!qword_27D827850)
  {
    sub_2283809B0(255, &qword_27D827190, MEMORY[0x277D83B48]);
    v1 = sub_228392F00();
    if (!v2)
    {
      atomic_store(v1, &qword_27D827850);
    }
  }
}

void sub_2283804BC(uint64_t a1)
{
  type metadata accessor for MedicationOnboardingFlowManager.EntryMode(319);
  if (v1 <= 0x3F)
  {
    sub_228390E00();
    if (v2 <= 0x3F)
    {
      type metadata accessor for HKMedicationListOnboardingDetailsEntryPointType(319);
      if (v3 <= 0x3F)
      {
        sub_228380330(319, &qword_27D8277A0, &qword_27D827160, MEMORY[0x277CC95F0]);
        if (v4 <= 0x3F)
        {
          sub_2283802B0(319, &qword_27D8277A8, &unk_27D8277B0, &qword_27D823BD8, 0x277CCD1B0);
          if (v5 <= 0x3F)
          {
            sub_228380CDC(319, &qword_27D8277C0, MEMORY[0x277CBCE30]);
            if (v6 <= 0x3F)
            {
              sub_228212A9C(319);
              if (v7 <= 0x3F)
              {
                sub_228380234(319, &qword_27D8277D0, &qword_27D825070, MEMORY[0x277D837D0]);
                if (v8 <= 0x3F)
                {
                  sub_2283802B0(319, &qword_27D8277E0, &qword_27D826008, &qword_27D8277F0, 0x277CCDAB0);
                  if (v9 <= 0x3F)
                  {
                    sub_228181EDC(319);
                    if (v10 <= 0x3F)
                    {
                      sub_2281E4AF0(319);
                      if (v11 <= 0x3F)
                      {
                        sub_228380234(319, &qword_27D827808, &qword_27D827810, &type metadata for MedicationNicknameNotes);
                        if (v12 <= 0x3F)
                        {
                          sub_2283802B0(319, &qword_27D8245A0, &qword_280DDBA60, &unk_280DDBA68, 0x277D11570);
                          if (v13 <= 0x3F)
                          {
                            sub_228368E1C(319, &qword_27D828598, sub_2283803B8);
                            if (v14 <= 0x3F)
                            {
                              sub_22829C0BC(319);
                              if (v15 <= 0x3F)
                              {
                                sub_228390890();
                                if (v16 <= 0x3F)
                                {
                                  swift_cvw_initStructMetadataWithLayoutString();
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_228380798(uint64_t a1)
{
  type metadata accessor for MedicationSearchItem(319);
  if (v1 <= 0x3F)
  {
    sub_2282FEBEC(319);
    if (v2 <= 0x3F)
    {
      sub_228382CF4(319, &qword_27D825070, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_22838085C(uint64_t a1)
{
  if (!qword_27D8285C0)
  {
    type metadata accessor for MedicationOnboardingFlowManager.EntryMode(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27D8285C0);
    }
  }
}

uint64_t sub_2283808C0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_228380920(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    a5(255, a3, a4);
    sub_22818217C(255, &qword_280DDB860, MEMORY[0x277D84948], 1);
    v6 = sub_228392350();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_2283809B0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_22817A958(255, &qword_27D824240, 0x277CCDA00);
    v7 = sub_22818C470(&qword_27D827840, &qword_27D824240, 0x277CCDA00, MEMORY[0x277D85378]);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_228380A60(uint64_t a1)
{
  if (!qword_27D8285E0)
  {
    sub_228392830();
    sub_22817A958(255, &qword_280DDB928, 0x277CBEB88);
    sub_228380B60(&qword_27D827528, MEMORY[0x277CC9DB0], MEMORY[0x277CC9DA8]);
    sub_22818C470(&qword_280DDB930, &qword_280DDB928, 0x277CBEB88, MEMORY[0x277CC9E80]);
    v1 = sub_228391760();
    if (!v2)
    {
      atomic_store(v1, &qword_27D8285E0);
    }
  }
}

uint64_t sub_228380B60(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_228380BA8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_228368E1C(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_228380C4C()
{
  result = qword_27D824058;
  if (!qword_27D824058)
  {
    sub_228380234(255, &qword_27D8277D0, &qword_27D825070, MEMORY[0x277D837D0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D824058);
  }

  return result;
}

void sub_228380CDC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void, void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x277D839B0], MEMORY[0x277D84A98], MEMORY[0x277D84AC0]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_228380DB4()
{
  result = qword_27D828600;
  if (!qword_27D828600)
  {
    sub_2283802B0(255, &qword_27D8277A8, &unk_27D8277B0, &qword_27D823BD8, 0x277CCD1B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D828600);
  }

  return result;
}

uint64_t sub_228380E48(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_22819DA1C;

  return sub_22836D4B0(a1, v4, v5, v7, v6);
}

uint64_t sub_228380F08(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_228368E1C(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_228380F74(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_228380FDC(uint64_t a1)
{
  if (!qword_27D828610)
  {
    v2 = type metadata accessor for MedicationFormsDataSource(255);
    v3 = sub_228380B60(&qword_27D828618, type metadata accessor for MedicationFormsDataSource, &protocol conformance descriptor for MedicationOptionsDataSource<A>);
    v5 = type metadata accessor for OnboardingStepViewController(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_27D828610);
    }
  }
}

uint64_t sub_2283810E0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_22819DA1C;

  return sub_22836D4B0(a1, v4, v5, v7, v6);
}

void sub_2283811A0(uint64_t a1)
{
  if (!qword_27D828620)
  {
    v2 = type metadata accessor for MedicationFormsDataSource(255);
    v3 = sub_228380B60(&qword_27D828618, type metadata accessor for MedicationFormsDataSource, &protocol conformance descriptor for MedicationOptionsDataSource<A>);
    v5 = type metadata accessor for SpecificationStepViewController.MedicationOnboardingStepObservableDataSource(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_27D828620);
    }
  }
}

void sub_228381234(uint64_t a1)
{
  if (!qword_27D828628)
  {
    v2 = type metadata accessor for ManaulFormsDataSource(255);
    v3 = sub_228380B60(&qword_27D828630, type metadata accessor for ManaulFormsDataSource, &protocol conformance descriptor for MedicationOptionsDataSource<A>);
    v5 = type metadata accessor for OnboardingStepViewController(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_27D828628);
    }
  }
}

uint64_t sub_228381354(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_22819DA1C;

  return sub_22836D4B0(a1, v4, v5, v7, v6);
}

uint64_t block_copy_helper_111(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_22838142C(uint64_t a1)
{
  if (!qword_27D828638)
  {
    v2 = type metadata accessor for ManaulFormsDataSource(255);
    v3 = sub_228380B60(&qword_27D828630, type metadata accessor for ManaulFormsDataSource, &protocol conformance descriptor for MedicationOptionsDataSource<A>);
    v5 = type metadata accessor for SpecificationStepViewController.MedicationOnboardingStepObservableDataSource(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_27D828638);
    }
  }
}

void sub_2283814C0(uint64_t a1)
{
  if (!qword_27D828640)
  {
    v2 = type metadata accessor for MedicationStrengthsDataSource(255);
    v3 = sub_228380B60(&qword_27D828648, type metadata accessor for MedicationStrengthsDataSource, &protocol conformance descriptor for MedicationOptionsDataSource<A>);
    v5 = type metadata accessor for OnboardingStepViewController(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_27D828640);
    }
  }
}

unint64_t sub_228381554()
{
  result = qword_27D824868;
  if (!qword_27D824868)
  {
    sub_228380234(255, &qword_27D824858, &qword_27D824860, &type metadata for StrengthStepResult);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D824868);
  }

  return result;
}

uint64_t sub_228381634(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_22819DA1C;

  return sub_22836D4B0(a1, v4, v5, v7, v6);
}

void sub_2283816F4(uint64_t a1)
{
  if (!qword_27D828650)
  {
    v2 = type metadata accessor for MedicationStrengthsDataSource(255);
    v3 = sub_228380B60(&qword_27D828648, type metadata accessor for MedicationStrengthsDataSource, &protocol conformance descriptor for MedicationOptionsDataSource<A>);
    v5 = type metadata accessor for SpecificationStepViewController.MedicationOnboardingStepObservableDataSource(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_27D828650);
    }
  }
}

void sub_228381788(uint64_t a1)
{
  if (!qword_27D828658)
  {
    v2 = type metadata accessor for ManualStrengthDataSource(255);
    v3 = sub_228380B60(&qword_27D828660, type metadata accessor for ManualStrengthDataSource, &unk_22839EC38);
    v5 = type metadata accessor for OnboardingStepViewController(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_27D828658);
    }
  }
}

uint64_t sub_2283818B8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_22819DA1C;

  return sub_22836D4B0(a1, v4, v5, v7, v6);
}

void sub_228381978(uint64_t a1)
{
  if (!qword_27D828668)
  {
    v2 = type metadata accessor for ManualStrengthDataSource(255);
    v3 = sub_228380B60(&qword_27D828660, type metadata accessor for ManualStrengthDataSource, &unk_22839EC38);
    v5 = type metadata accessor for SpecificationStepViewController.MedicationOnboardingStepObservableDataSource(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_27D828668);
    }
  }
}

void sub_228381A0C(uint64_t a1)
{
  if (!qword_27D828670)
  {
    v2 = type metadata accessor for MedicationScheduleDataSource(255);
    v3 = sub_228380B60(&qword_27D828678, type metadata accessor for MedicationScheduleDataSource, &protocol conformance descriptor for MedicationScheduleDataSource);
    v5 = type metadata accessor for SpecificationStepViewController.MedicationOnboardingStepObservableDataSource(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_27D828670);
    }
  }
}

void sub_228381AA0(uint64_t a1)
{
  if (!qword_27D828680)
  {
    v2 = type metadata accessor for MedicationScheduleDataSource(255);
    v3 = sub_228380B60(&qword_27D828678, type metadata accessor for MedicationScheduleDataSource, &protocol conformance descriptor for MedicationScheduleDataSource);
    v5 = type metadata accessor for OnboardingStepViewController(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_27D828680);
    }
  }
}

unint64_t sub_228381B40()
{
  result = qword_27D8245A8;
  if (!qword_27D8245A8)
  {
    sub_2283802B0(255, &qword_27D8245A0, &qword_280DDBA60, &unk_280DDBA68, 0x277D11570);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8245A8);
  }

  return result;
}

uint64_t sub_228381C28(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_22819DA1C;

  return sub_22836D4B0(a1, v4, v5, v7, v6);
}

void sub_228381CE8(uint64_t a1)
{
  if (!qword_27D828688)
  {
    v2 = type metadata accessor for VisualizationShapeDataSource(255);
    v3 = sub_228380B60(&qword_27D8238E0, type metadata accessor for VisualizationShapeDataSource, &protocol conformance descriptor for VisualizationShapeDataSource);
    v5 = type metadata accessor for OnboardingStepViewController(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_27D828688);
    }
  }
}

uint64_t sub_228381DF4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_22819DA1C;

  return sub_22836D4B0(a1, v4, v5, v7, v6);
}

uint64_t sub_228381EB4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_228381F1C(uint64_t a1)
{
  if (!qword_27D828690)
  {
    v2 = type metadata accessor for VisualizationModificationDataSource(255);
    v3 = sub_228380B60(&qword_27D824BE0, type metadata accessor for VisualizationModificationDataSource, &protocol conformance descriptor for VisualizationModificationDataSource);
    v5 = type metadata accessor for OnboardingStepViewController(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_27D828690);
    }
  }
}

uint64_t sub_228382028(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_22819DA1C;

  return sub_22836D4B0(a1, v4, v5, v7, v6);
}

void sub_2283820E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  if (a6)
  {
    v6 = a5;

    v7 = a6;
  }
}

void sub_228382128(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  if (a6)
  {
  }
}

void sub_228382168(uint64_t a1)
{
  if (!qword_27D828698)
  {
    v2 = type metadata accessor for NicknameAndNotesDataSource(255);
    v3 = sub_228380B60(&qword_27D8286A0, type metadata accessor for NicknameAndNotesDataSource, &unk_2283A1060);
    v5 = type metadata accessor for OnboardingStepViewController(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_27D828698);
    }
  }
}

unint64_t sub_228382210()
{
  result = qword_27D8286A8;
  if (!qword_27D8286A8)
  {
    sub_228380234(255, &qword_27D827808, &qword_27D827810, &type metadata for MedicationNicknameNotes);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8286A8);
  }

  return result;
}

uint64_t sub_2283822F0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_22819D87C;

  return sub_22836D7F4(a1, v4, v5, v7, v6);
}

void sub_2283823B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != 1)
  {
  }
}

void sub_2283823F8(uint64_t a1)
{
  if (!qword_27D8286B0)
  {
    v2 = type metadata accessor for NicknameAndNotesDataSource(255);
    v3 = sub_228380B60(&qword_27D8286A0, type metadata accessor for NicknameAndNotesDataSource, &unk_2283A1060);
    v5 = type metadata accessor for SpecificationStepViewController.MedicationOnboardingStepObservableDataSource(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_27D8286B0);
    }
  }
}

unint64_t sub_228382498()
{
  result = qword_27D8268E0;
  if (!qword_27D8268E0)
  {
    sub_228380234(255, &qword_27D8268D8, &qword_27D823CF8, MEMORY[0x277D839B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8268E0);
  }

  return result;
}

uint64_t sub_228382578(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_22819DA1C;

  return sub_22836D4B0(a1, v4, v5, v7, v6);
}

void sub_228382638(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a5(a1, v9, a4);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void sub_2283826A4(uint64_t a1)
{
  if (!qword_27D8286C8)
  {
    v2 = type metadata accessor for ThirdPartyAuthorizationDataSource(255);
    v3 = sub_228380B60(&qword_27D8286D0, type metadata accessor for ThirdPartyAuthorizationDataSource, &unk_2283A11F8);
    v5 = type metadata accessor for SpecificationStepViewController.MedicationOnboardingStepObservableDataSource(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_27D8286C8);
    }
  }
}

void sub_228382738(uint64_t a1)
{
  if (!qword_27D8286D8)
  {
    v2 = type metadata accessor for ThirdPartyAuthorizationDataSource(255);
    v3 = sub_228380B60(&qword_27D8286D0, type metadata accessor for ThirdPartyAuthorizationDataSource, &unk_2283A11F8);
    v5 = type metadata accessor for OnboardingStepViewController(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_27D8286D8);
    }
  }
}

uint64_t objectdestroy_50Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_228382888(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_22819DA1C;

  return sub_22836D4B0(a1, v4, v5, v7, v6);
}

void sub_228382948(unint64_t a1)
{
  v2 = sub_22838F440();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v19 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = &v19 - v10;
  sub_22838F810();
  sub_22838F800();
  v12 = sub_22838F7F0();

  v20 = [v12 authorizationStatus];

  if (a1 >> 62)
  {
LABEL_19:
    v21 = a1 & 0xFFFFFFFFFFFFFF8;
    v23 = sub_2283930D0();
  }

  else
  {
    v21 = a1 & 0xFFFFFFFFFFFFFF8;
    v23 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v13 = 0;
  v22 = a1 & 0xC000000000000001;
  v14 = v3 + 1;
  while (v23 != v13)
  {
    if (v22)
    {
      v15 = MEMORY[0x22AAB6D80](v13, a1);
    }

    else
    {
      if (v13 >= *(v21 + 16))
      {
        goto LABEL_18;
      }

      v15 = *(a1 + 8 * v13 + 32);
    }

    v3 = v15;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    v16 = [v15 creationDate];
    sub_22838F3E0();

    sub_22838F430();
    sub_22838F350();
    v17 = *v14;
    (*v14)(v6, v2);
    LOBYTE(v16) = sub_22838F3A0();

    v17(v9, v2);
    v17(v11, v2);
    ++v13;
    if ((v16 & 1) == 0)
    {
      return;
    }
  }

  if (v20 != 2)
  {
    v18 = [objc_opt_self() defaultCenter];
    if (qword_27D8232B0 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    [v18 postNotificationName:qword_27D824A88 object:0];
  }
}

uint64_t sub_228382C68(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_228368E1C(0, a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

void sub_228382CF4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t CollectionViewTextItem.reuseIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t CollectionViewTextItem.reuseIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t CollectionViewTextItem.uniqueIdentifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t CollectionViewTextItem.uniqueIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

void __swiftcall CollectionViewTextItem.init(text:)(HealthMedicationsUI::CollectionViewTextItem *__return_ptr retstr, Swift::String text)
{
  v3 = sub_22838F4A0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CollectionViewTextCell();
  sub_2283830B4();
  retstr->reuseIdentifier._countAndFlagsBits = sub_22838FBB0();
  retstr->reuseIdentifier._object = v7;
  v15 = 0x74497265746F6F46;
  v16 = 0xEB000000005F6D65;
  sub_22838F490();
  v8 = sub_22838F450();
  v10 = v9;
  (*(v4 + 8))(v6, v3);
  MEMORY[0x22AAB5C80](v8, v10);

  v11 = v16;
  retstr->uniqueIdentifier._countAndFlagsBits = v15;
  retstr->uniqueIdentifier._object = v11;
  v12 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v13 = sub_228391FC0();

  v14 = [v12 initWithString_];

  retstr->attributedText.super.isa = v14;
}

unint64_t sub_2283830B4()
{
  result = qword_27D8286F0;
  if (!qword_27D8286F0)
  {
    type metadata accessor for CollectionViewTextCell();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8286F0);
  }

  return result;
}

void __swiftcall CollectionViewTextItem.init(attributedText:)(HealthMedicationsUI::CollectionViewTextItem *__return_ptr retstr, NSAttributedString attributedText)
{
  v4 = sub_22838F4A0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CollectionViewTextCell();
  sub_2283830B4();
  retstr->reuseIdentifier._countAndFlagsBits = sub_22838FBB0();
  retstr->reuseIdentifier._object = v8;
  v13 = 0x74497265746F6F46;
  v14 = 0xEB000000005F6D65;
  sub_22838F490();
  v9 = sub_22838F450();
  v11 = v10;
  (*(v5 + 8))(v7, v4);
  MEMORY[0x22AAB5C80](v9, v11);

  v12 = v14;
  retstr->uniqueIdentifier._countAndFlagsBits = v13;
  retstr->uniqueIdentifier._object = v12;
  retstr->attributedText = attributedText;
}

uint64_t sub_228383254(uint64_t a1)
{
  v2 = sub_22838426C();

  return MEMORY[0x282169440](a1, v2);
}

uint64_t sub_2283832A0(uint64_t a1, uint64_t *a2)
{
  sub_22817A890(a1, v6, &qword_280DDCD50, sub_22817A700);
  v3 = *a2;
  v4 = OBJC_IVAR____TtC19HealthMedicationsUI22CollectionViewTextCell_item;
  swift_beginAccess();
  sub_22818FD64(v6, v3 + v4);
  swift_endAccess();
  sub_228383E20();
  return sub_22817A8FC(v6, &qword_280DDCD50, sub_22817A700);
}

uint64_t sub_228383344@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI22CollectionViewTextCell_item;
  swift_beginAccess();
  return sub_22817A890(v1 + v3, a1, &qword_280DDCD50, sub_22817A700);
}

uint64_t sub_2283833B8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI22CollectionViewTextCell_item;
  swift_beginAccess();
  sub_22818FD64(a1, v1 + v3);
  swift_endAccess();
  sub_228383E20();
  return sub_22817A8FC(a1, &qword_280DDCD50, sub_22817A700);
}

void (*sub_228383440(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_2283834A4;
}

void sub_2283834A4(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_228383E20();
  }
}

id sub_2283834D8()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI22CollectionViewTextCell____lazy_storage___label;
  v2 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI22CollectionViewTextCell____lazy_storage___label);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI22CollectionViewTextCell____lazy_storage___label);
  }

  else
  {
    v4 = sub_228383538();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_228383538()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v6 = sub_228392000();
  v7 = v1;
  v2 = v0;

  MEMORY[0x22AAB5C80](0xD000000000000017, 0x80000002283B6260);

  MEMORY[0x22AAB5C80](0x6C6562614C2ELL, 0xE600000000000000);

  v3 = sub_228391FC0();

  [v2 setAccessibilityIdentifier_];

  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  [v2 setNumberOfLines_];
  [v2 setAdjustsFontForContentSizeCategory_];
  v4 = [objc_opt_self() preferredFontForTextStyle_];
  [v2 setFont_];

  [v2 setClipsToBounds_];
  [v2 setTextAlignment_];
  [v2 setLineBreakMode_];
  return v2;
}

void sub_228383898()
{
  v1 = v0;
  v2 = [v0 contentView];
  v3 = sub_2283834D8();
  [v2 addSubview_];

  v4 = objc_opt_self();
  sub_228180ED0();
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_228397F00;
  v6 = OBJC_IVAR____TtC19HealthMedicationsUI22CollectionViewTextCell____lazy_storage___label;
  v7 = [*&v1[OBJC_IVAR____TtC19HealthMedicationsUI22CollectionViewTextCell____lazy_storage___label] topAnchor];
  v8 = [v1 contentView];
  v9 = [v8 topAnchor];

  v10 = [v7 constraintEqualToAnchor:v9 constant:-10.0];
  *(v5 + 32) = v10;
  v11 = [*&v1[v6] bottomAnchor];
  v12 = [v1 contentView];
  v13 = [v12 bottomAnchor];

  v14 = [v11 constraintEqualToAnchor:v13 constant:-26.0];
  *(v5 + 40) = v14;
  v15 = [*&v1[v6] leadingAnchor];
  v16 = [v1 contentView];
  v17 = [v16 leadingAnchor];

  v18 = [v15 constraintEqualToAnchor_];
  *(v5 + 48) = v18;
  v19 = [*&v1[v6] trailingAnchor];
  v20 = [v1 contentView];
  v21 = [v20 trailingAnchor];

  v22 = [v19 constraintEqualToAnchor_];
  *(v5 + 56) = v22;
  sub_2281BF1B8();
  v23 = sub_228392190();

  [v4 activateConstraints_];
}

uint64_t sub_228383B84()
{
  v1 = v0;
  sub_22817A7F0(0, &unk_280DDBCD0, MEMORY[0x277D74BD0]);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v14 - v6;
  v8 = sub_228391330();
  v9 = type metadata accessor for CollectionViewTextCell();
  v14.receiver = v1;
  v14.super_class = v9;
  objc_msgSendSuper2(&v14, sel__bridgedUpdateConfigurationUsingState_, v8);

  MEMORY[0x22AAB6410]();
  v10 = sub_2283913A0();
  if ((*(*(v10 - 8) + 48))(v7, 1, v10))
  {
    v11 = MEMORY[0x277D74BD0];
    sub_22817A890(v7, v5, &unk_280DDBCD0, MEMORY[0x277D74BD0]);
    MEMORY[0x22AAB6420](v5);
    return sub_22817A8FC(v7, &unk_280DDBCD0, v11);
  }

  else
  {
    v13 = [objc_opt_self() clearColor];
    sub_228391370();
    return MEMORY[0x22AAB6420](v7);
  }
}

void sub_228383E20()
{
  ObjectType = swift_getObjectType();
  v2 = sub_2283911B0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC19HealthMedicationsUI22CollectionViewTextCell_item;
  swift_beginAccess();
  sub_22817A890(v0 + v6, v18, &qword_280DDCD50, sub_22817A700);
  if (v18[3])
  {
    sub_22817A700();
    if (swift_dynamicCast())
    {
      v7 = v17[4];
      v8 = sub_2283834D8();
      [v8 setAttributedText_];

      return;
    }
  }

  else
  {
    sub_22817A8FC(v18, &qword_280DDCD50, sub_22817A700);
  }

  sub_228391180();
  v9 = sub_2283911A0();
  v10 = sub_2283925C0();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v17[0] = v12;
    *v11 = 136446210;
    v18[0] = ObjectType;
    swift_getMetatypeMetadata();
    v13 = sub_228392020();
    v15 = sub_2281C96FC(v13, v14, v17);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_22816B000, v9, v10, "[%{public}s] item is not an CollectionViewTextItem", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x22AAB7B80](v12, -1, -1);
    MEMORY[0x22AAB7B80](v11, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
}

id CollectionViewTextCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CollectionViewTextCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_2283840EC()
{
  result = qword_27D828700;
  if (!qword_27D828700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D828700);
  }

  return result;
}

unint64_t sub_22838426C()
{
  result = qword_27D828710;
  if (!qword_27D828710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D828710);
  }

  return result;
}

HealthMedicationsUI::InteractionsOnboardingEducationItem __swiftcall InteractionsOnboardingEducationItem.init(text:)(Swift::String text)
{
  object = text._object;
  countAndFlagsBits = text._countAndFlagsBits;
  v4 = v1;
  type metadata accessor for InteractionsOnboardingEducationCell();
  sub_228384334();
  v5 = sub_22838FBB0();
  v4[2] = v5;
  v4[3] = v6;
  *v4 = countAndFlagsBits;
  v4[1] = object;
  result.reuseIdentifier._object = v8;
  result.reuseIdentifier._countAndFlagsBits = v7;
  result.text._object = v6;
  result.text._countAndFlagsBits = v5;
  return result;
}

unint64_t sub_228384334()
{
  result = qword_27D8268C8;
  if (!qword_27D8268C8)
  {
    type metadata accessor for InteractionsOnboardingEducationCell();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8268C8);
  }

  return result;
}

uint64_t OnboardingLifestyleInteractionSwitchItem.__allocating_init(factor:settingsManager:)(uint64_t a1, uint64_t a2)
{
  swift_allocObject();
  v4 = sub_228385A54(a1, a2);

  return v4;
}

uint64_t InteractionsOnboardingEducationItem.reuseIdentifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t InteractionsOnboardingEducationItem.uniqueIdentifier.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];

  MEMORY[0x22AAB5C80](95, 0xE100000000000000);
  MEMORY[0x22AAB5C80](v1, v2);
  return v4;
}

uint64_t InteractionsOnboardingEducationItem.hash(into:)(uint64_t a1)
{
  sub_2283920B0();

  return sub_2283920B0();
}

uint64_t static InteractionsOnboardingEducationItem.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_228393460(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_228393460();
    }
  }

  return result;
}

uint64_t InteractionsOnboardingEducationItem.hashValue.getter()
{
  sub_228393520();
  sub_2283920B0();
  sub_2283920B0();
  return sub_228393570();
}

uint64_t sub_2283845D0()
{
  sub_228393520();
  sub_2283920B0();
  sub_2283920B0();
  return sub_228393570();
}

uint64_t sub_228384638(uint64_t a1)
{
  sub_2283920B0();

  return sub_2283920B0();
}

uint64_t sub_228384688(uint64_t a1)
{
  sub_228393520();
  sub_2283920B0();
  sub_2283920B0();
  return sub_228393570();
}

uint64_t sub_2283846EC()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];

  MEMORY[0x22AAB5C80](95, 0xE100000000000000);
  MEMORY[0x22AAB5C80](v1, v2);
  return v4;
}

uint64_t sub_22838474C(uint64_t a1)
{
  v2 = sub_22828781C();

  return MEMORY[0x282169440](a1, v2);
}

uint64_t OnboardingLifestyleInteractionSwitchItem.baseIdentifier.getter()
{
  v1 = (v0 + qword_27D828718);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t OnboardingLifestyleInteractionSwitchItem.baseIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + qword_27D828718);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

uint64_t OnboardingLifestyleInteractionSwitchItem.init(factor:settingsManager:)(uint64_t a1, uint64_t a2)
{
  v2 = sub_228385A54(a1, a2);

  return v2;
}

uint64_t OnboardingLifestyleInteractionSwitchItem.isOn.getter(uint64_t a1)
{
  v2 = *(v1 + qword_27D828720);
  switch(v2)
  {
    case 3:
      v3 = sub_228390790();
      return v3 & 1;
    case 2:
      v3 = sub_2283907C0();
      return v3 & 1;
    case 1:
      v3 = sub_228390770();
      return v3 & 1;
  }

  return 0;
}

uint64_t OnboardingLifestyleInteractionSwitchItem.handleSwitchValueChanged(_:for:)(uint64_t result)
{
  v2 = *(v1 + qword_27D828720);
  switch(v2)
  {
    case 3:
      return sub_2283907A0();
    case 2:
      return sub_2283907D0();
    case 1:
      return sub_228390780();
  }

  return v3;
}

uint64_t sub_228384A1C()
{
}

uint64_t OnboardingLifestyleInteractionSwitchItem.deinit()
{
  v0 = _s19HealthMedicationsUI38InteractionFactorsLifestyleOptionsItemCfd_0();

  return v0;
}

uint64_t OnboardingLifestyleInteractionSwitchItem.__deallocating_deinit()
{
  _s19HealthMedicationsUI38InteractionFactorsLifestyleOptionsItemCfd_0();

  return swift_deallocClassInstance();
}

uint64_t sub_228384B24(uint64_t a1)
{
  v2 = *(v1 + qword_27D828720);
  switch(v2)
  {
    case 3:
      v3 = sub_228390790();
      return v3 & 1;
    case 2:
      v3 = sub_2283907C0();
      return v3 & 1;
    case 1:
      v3 = sub_228390770();
      return v3 & 1;
  }

  return 0;
}

uint64_t sub_228384BA8(uint64_t result)
{
  v2 = *(v1 + qword_27D828720);
  switch(v2)
  {
    case 3:
      return sub_2283907A0();
    case 2:
      return sub_2283907D0();
    case 1:
      return sub_228390780();
  }

  return v3;
}

uint64_t sub_228384C2C()
{
  v1 = (*v0 + qword_27D828718);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_228384C88(uint64_t a1, uint64_t a2)
{
  v5 = (*v2 + qword_27D828718);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

uint64_t InteractionsOnboardingEducationCell.item.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI35InteractionsOnboardingEducationCell_item;
  swift_beginAccess();
  return sub_22817E6C8(v1 + v3, a1);
}

uint64_t sub_228384DA8(uint64_t a1, uint64_t *a2)
{
  sub_22817E6C8(a1, v6);
  v3 = *a2;
  v4 = OBJC_IVAR____TtC19HealthMedicationsUI35InteractionsOnboardingEducationCell_item;
  swift_beginAccess();
  sub_22818FD64(v6, v3 + v4);
  swift_endAccess();
  sub_228384E84();
  return sub_22819482C(v6);
}

uint64_t InteractionsOnboardingEducationCell.item.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI35InteractionsOnboardingEducationCell_item;
  swift_beginAccess();
  sub_22818FD64(a1, v1 + v3);
  swift_endAccess();
  sub_228384E84();
  return sub_22819482C(a1);
}

id sub_228384E84()
{
  v1 = v0;
  v2 = sub_2283911B0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC19HealthMedicationsUI35InteractionsOnboardingEducationCell_item;
  swift_beginAccess();
  sub_22817E6C8(&v1[v6], v46);
  if (v47)
  {
    sub_22817A700();
    if (swift_dynamicCast())
    {
      v43 = v45[0];
      v44 = v45[3];
      v7 = [v1 contentView];
      v8 = [objc_opt_self() systemBackgroundColor];
      [v7 setBackgroundColor_];

      v9 = [v1 contentView];
      v10 = sub_2283854B4();
      [v9 addSubview_];

      v42 = objc_opt_self();
      sub_228180ED0();
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_228397F00;
      v12 = OBJC_IVAR____TtC19HealthMedicationsUI35InteractionsOnboardingEducationCell____lazy_storage___labelView;
      v13 = [*&v1[OBJC_IVAR____TtC19HealthMedicationsUI35InteractionsOnboardingEducationCell____lazy_storage___labelView] topAnchor];
      v14 = [v1 contentView];
      v15 = [v14 topAnchor];

      v16 = [v13 constraintEqualToAnchor_];
      *(v11 + 32) = v16;
      v17 = [*&v1[v12] leadingAnchor];
      v18 = [v1 contentView];
      v19 = [v18 leadingAnchor];

      v20 = [v17 constraintEqualToAnchor:v19 constant:10.0];
      *(v11 + 40) = v20;
      v21 = [*&v1[v12] trailingAnchor];
      v22 = [v1 contentView];
      v23 = [v22 trailingAnchor];

      v24 = [v21 constraintEqualToAnchor:v23 constant:-10.0];
      *(v11 + 48) = v24;
      v25 = [*&v1[v12] bottomAnchor];
      v26 = [v1 contentView];
      v27 = [v26 bottomAnchor];

      v28 = [v25 constraintEqualToAnchor_];
      *(v11 + 56) = v28;
      sub_22817A958(0, &qword_280DDBA90, 0x277CCAAD0);
      v29 = sub_228392190();

      [v42 activateConstraints_];

      v30 = *&v1[v12];
      v31 = sub_228391FC0();

      [v30 setText_];

      return [*&v1[v12] setTextAlignment_];
    }
  }

  else
  {
    sub_22819482C(v46);
  }

  sub_228391150();
  v33 = v1;
  v34 = sub_2283911A0();
  v35 = sub_2283925C0();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v45[0] = v37;
    *v36 = 136446210;
    sub_22817E6C8(&v1[v6], v46);
    sub_228181D50(0);
    v38 = sub_228392040();
    v40 = sub_2281C96FC(v38, v39, v45);

    *(v36 + 4) = v40;
    _os_log_impl(&dword_22816B000, v34, v35, "Incorrect view model for InteractionsOnboardingEducationItem: %{public}s", v36, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v37);
    MEMORY[0x22AAB7B80](v37, -1, -1);
    MEMORY[0x22AAB7B80](v36, -1, -1);
  }

  return (*(v3 + 8))(v5, v2);
}

id (*InteractionsOnboardingEducationCell.item.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_228385480;
}

id sub_228385480(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_228384E84();
  }

  return result;
}

id sub_2283854B4()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI35InteractionsOnboardingEducationCell____lazy_storage___labelView;
  v2 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI35InteractionsOnboardingEducationCell____lazy_storage___labelView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI35InteractionsOnboardingEducationCell____lazy_storage___labelView);
  }

  else
  {
    v4 = v0;
    v5 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
    [v5 setNumberOfLines_];
    [v5 setTranslatesAutoresizingMaskIntoConstraints_];
    sub_22817A958(0, &qword_280DDB9C0, 0x277D74300);
    v6 = sub_228392AD0();
    [v5 setFont_];

    v7 = *(v4 + v1);
    *(v4 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

id InteractionsOnboardingEducationCell.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id InteractionsOnboardingEducationCell.init(frame:)(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = &v4[OBJC_IVAR____TtC19HealthMedicationsUI35InteractionsOnboardingEducationCell_item];
  *v10 = 0u;
  *(v10 + 1) = 0u;
  *(v10 + 4) = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI35InteractionsOnboardingEducationCell____lazy_storage___labelView] = 0;
  v12.receiver = v4;
  v12.super_class = ObjectType;
  return objc_msgSendSuper2(&v12, sel_initWithFrame_, a1, a2, a3, a4);
}

id InteractionsOnboardingEducationCell.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id InteractionsOnboardingEducationCell.init(coder:)(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = &v1[OBJC_IVAR____TtC19HealthMedicationsUI35InteractionsOnboardingEducationCell_item];
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 4) = 0;
  *&v1[OBJC_IVAR____TtC19HealthMedicationsUI35InteractionsOnboardingEducationCell____lazy_storage___labelView] = 0;
  v7.receiver = v1;
  v7.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v7, sel_initWithCoder_, a1);

  if (v5)
  {
  }

  return v5;
}

id InteractionsOnboardingEducationCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_22838592C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI35InteractionsOnboardingEducationCell_item;
  swift_beginAccess();
  return sub_22817E6C8(v1 + v3, a1);
}

uint64_t sub_228385984(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI35InteractionsOnboardingEducationCell_item;
  swift_beginAccess();
  sub_22818FD64(a1, v1 + v3);
  swift_endAccess();
  sub_228384E84();
  return sub_22819482C(a1);
}

id (*sub_2283859F0(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_228385480;
}

uint64_t sub_228385A54(uint64_t a1, uint64_t a2)
{
  v4 = (v2 + qword_27D828718);
  *v4 = 0;
  v4[1] = 0;
  *(v2 + qword_27D828728) = a2;
  *(v2 + qword_27D828720) = a1;
  v16 = sub_228392000();
  v17 = v5;

  MEMORY[0x22AAB5C80](0xD000000000000018, 0x80000002283B6350);

  v6 = v16;
  v7 = v17;
  LOBYTE(v16) = 0;
  v8 = HKDrugInteractionLifestyleFactor.localizedString(variant:)(&v16, a1);
  v10 = v9;
  v16 = v6;
  v17 = v7;

  MEMORY[0x22AAB5C80](v8, v10);

  v11 = v16;
  v12 = v17;
  swift_beginAccess();
  *v4 = v11;
  v4[1] = v12;

  v15 = 0;
  HKDrugInteractionLifestyleFactor.localizedString(variant:)(&v15, a1);
  v13 = [objc_opt_self() tertiarySystemGroupedBackgroundColor];
  return sub_2283901A0();
}

unint64_t sub_228385BDC()
{
  result = qword_27D828740;
  if (!qword_27D828740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D828740);
  }

  return result;
}

unint64_t sub_228385C34()
{
  result = qword_27D828748;
  if (!qword_27D828748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D828748);
  }

  return result;
}

uint64_t type metadata accessor for OnboardingLifestyleInteractionSwitchItem(uint64_t a1)
{
  result = qword_27D828750;
  if (!qword_27D828750)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_228385D98()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI25MedicationsDayHistoryCell____lazy_storage___historyView;
  v2 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI25MedicationsDayHistoryCell____lazy_storage___historyView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI25MedicationsDayHistoryCell____lazy_storage___historyView);
  }

  else
  {
    type metadata accessor for MedicationsDayHistoryView(0);
    v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_228385E24()
{
  v1 = v0;
  v2 = sub_2283911B0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228386FB0(0, &qword_280DDCDB0, MEMORY[0x277CC9578]);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v36 - v7;
  sub_228386FB0(0, &unk_27D828770, type metadata accessor for MedicationsDayHistoryItem);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v36 - v10;
  v12 = type metadata accessor for MedicationsDayHistoryItem(0);
  v13 = *(v12 - 1);
  MEMORY[0x28223BE20](v12);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = OBJC_IVAR____TtC19HealthMedicationsUI25MedicationsDayHistoryCell_item;
  swift_beginAccess();
  sub_22817E6C8(v1 + v16, v38);
  if (v39)
  {
    sub_2281810DC(0, &qword_280DDCD60, MEMORY[0x277D10D48]);
    v17 = swift_dynamicCast();
    (*(v13 + 56))(v11, v17 ^ 1u, 1, v12);
    if ((*(v13 + 48))(v11, 1, v12) != 1)
    {
      sub_228387004(v11, v15);
      v18 = sub_228385D98();
      v19 = &v15[v12[5]];
      v21 = *v19;
      v20 = v19[1];
      v22 = *&v15[v12[6]];
      v23 = v12[9];
      v24 = sub_22838F440();
      v25 = *(v24 - 8);
      (*(v25 + 16))(v8, &v15[v23], v24);
      (*(v25 + 56))(v8, 0, 1, v24);
      v26 = v15[v12[10]];
      v18[OBJC_IVAR____TtC19HealthMedicationsUI25MedicationsDayHistoryView_previousDisplayContext] = v26;
      if (sub_228283B64(v21, v20, v22))
      {
        if (v26)
        {
          sub_2282819E8(v21, v20, v8);
          sub_228282A4C(v22);
LABEL_14:

          sub_22838850C(v8, &qword_280DDCDB0, MEMORY[0x277CC9578]);
          return sub_22833897C(v15);
        }
      }

      else
      {
        if ((sub_228283890(v8) & 1) == 0)
        {
          goto LABEL_14;
        }

        if (v26)
        {
          sub_2282819E8(v21, v20, v8);
          goto LABEL_14;
        }
      }

      sub_2282822FC(v21, v20, v8, v22);
      goto LABEL_14;
    }
  }

  else
  {
    sub_22819482C(v38);
    (*(v13 + 56))(v11, 1, 1, v12);
  }

  sub_22838850C(v11, &unk_27D828770, type metadata accessor for MedicationsDayHistoryItem);
  sub_228391150();
  v27 = v1;
  v28 = sub_2283911A0();
  v29 = sub_2283925C0();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v37 = v31;
    *v30 = 136315138;
    sub_22817E6C8(v1 + v16, v38);
    sub_2281AEAE8(0, &qword_280DDCD50, &qword_280DDCD60, MEMORY[0x277D10D48], MEMORY[0x277D83D88]);
    v32 = sub_228392040();
    v34 = sub_2281C96FC(v32, v33, &v37);

    *(v30 + 4) = v34;
    _os_log_impl(&dword_22816B000, v28, v29, "Incorrect view model for MedicationsDayHistoryItem: %s", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v31);
    MEMORY[0x22AAB7B80](v31, -1, -1);
    MEMORY[0x22AAB7B80](v30, -1, -1);
  }

  return (*(v3 + 8))(v5, v2);
}

char *sub_228386390(double a1, double a2, double a3, double a4)
{
  v9 = sub_228391590();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI25MedicationsDayHistoryCell____lazy_storage___historyView] = 0;
  v13 = &v4[OBJC_IVAR____TtC19HealthMedicationsUI25MedicationsDayHistoryCell_item];
  v14 = type metadata accessor for MedicationsDayHistoryCell();
  *v13 = 0u;
  *(v13 + 1) = 0u;
  *(v13 + 4) = 0;
  v25.receiver = v4;
  v25.super_class = v14;
  v15 = objc_msgSendSuper2(&v25, sel_initWithFrame_, a1, a2, a3, a4);
  v16 = [v15 contentView];
  v17 = sub_228385D98();
  [v16 addSubview_];

  sub_228391520();
  sub_2283914D0();
  v19 = v18;
  v21 = v20;
  (*(v10 + 8))(v12, v9);
  v22 = *&v15[OBJC_IVAR____TtC19HealthMedicationsUI25MedicationsDayHistoryCell____lazy_storage___historyView];
  v23 = [v15 contentView];

  [v22 hk:v23 alignConstraintsWithView:12.0 insets:{v19, 12.0, v21}];
  return v15;
}

uint64_t sub_228386634()
{
  v1 = v0;
  v2 = sub_2283911B0();
  v45 = *(v2 - 8);
  v46 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228386FB0(0, &unk_280DDBCD0, MEMORY[0x277D74BD0]);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v44 = &v44 - v10;
  MEMORY[0x28223BE20](v9);
  v12 = &v44 - v11;
  sub_228386FB0(0, &unk_27D828770, type metadata accessor for MedicationsDayHistoryItem);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v44 - v14;
  v16 = type metadata accessor for MedicationsDayHistoryItem(0);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_228391330();
  v21 = type metadata accessor for MedicationsDayHistoryCell();
  v50.receiver = v1;
  v50.super_class = v21;
  objc_msgSendSuper2(&v50, sel__bridgedUpdateConfigurationUsingState_, v20);

  v22 = OBJC_IVAR____TtC19HealthMedicationsUI25MedicationsDayHistoryCell_item;
  swift_beginAccess();
  sub_22817E6C8(v1 + v22, v48);
  if (!v49)
  {
    sub_22819482C(v48);
    (*(v17 + 56))(v15, 1, 1, v16);
    goto LABEL_7;
  }

  sub_2281810DC(0, &qword_280DDCD60, MEMORY[0x277D10D48]);
  v23 = swift_dynamicCast();
  (*(v17 + 56))(v15, v23 ^ 1u, 1, v16);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
LABEL_7:
    sub_22838850C(v15, &unk_27D828770, type metadata accessor for MedicationsDayHistoryItem);
    sub_228391150();
    v28 = v1;
    v29 = sub_2283911A0();
    v30 = sub_2283925C0();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v47 = v32;
      *v31 = 136315138;
      sub_22817E6C8(v1 + v22, v48);
      sub_2281AEAE8(0, &qword_280DDCD50, &qword_280DDCD60, MEMORY[0x277D10D48], MEMORY[0x277D83D88]);
      v33 = sub_228392040();
      v35 = sub_2281C96FC(v33, v34, &v47);

      *(v31 + 4) = v35;
      _os_log_impl(&dword_22816B000, v29, v30, "Incorrect view model for MedicationsDayHistoryItem: %s", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v32);
      MEMORY[0x22AAB7B80](v32, -1, -1);
      MEMORY[0x22AAB7B80](v31, -1, -1);
    }

    return (*(v45 + 8))(v4, v46);
  }

  sub_228387004(v15, v19);
  if ([v1 isHighlighted])
  {
    MEMORY[0x22AAB6410]();
    v24 = sub_2283913A0();
    if ((*(*(v24 - 8) + 48))(v12, 1, v24))
    {
      v25 = MEMORY[0x277D74BD0];
      v26 = v44;
      sub_2283884A0(v12, v44, &unk_280DDBCD0, MEMORY[0x277D74BD0]);
      MEMORY[0x22AAB6420](v26);
      sub_22833897C(v19);
      v27 = v12;
      return sub_22838850C(v27, &unk_280DDBCD0, v25);
    }

    sub_2281AF0A0();
    sub_228392BA0();
    sub_228391370();
    v39 = v12;
  }

  else
  {
    MEMORY[0x22AAB6410]();
    v37 = sub_2283913A0();
    if ((*(*(v37 - 8) + 48))(v8, 1, v37))
    {
      v25 = MEMORY[0x277D74BD0];
      v38 = v44;
      sub_2283884A0(v8, v44, &unk_280DDBCD0, MEMORY[0x277D74BD0]);
      MEMORY[0x22AAB6420](v38);
      sub_22833897C(v19);
      v27 = v8;
      return sub_22838850C(v27, &unk_280DDBCD0, v25);
    }

    v40 = v19[*(v16 + 40)];
    v41 = objc_opt_self();
    v42 = &selRef_secondarySystemBackgroundColor;
    if (!v40)
    {
      v42 = &selRef_quaternarySystemFillColor;
    }

    v43 = [v41 *v42];
    sub_228391370();
    v39 = v8;
  }

  MEMORY[0x22AAB6420](v39);
  return sub_22833897C(v19);
}

id sub_228386D88(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for MedicationsDayHistoryCell();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_228386E2C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI25MedicationsDayHistoryCell_item;
  swift_beginAccess();
  return sub_22817E6C8(v1 + v3, a1);
}

uint64_t sub_228386E84(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI25MedicationsDayHistoryCell_item;
  swift_beginAccess();
  sub_22818FD64(a1, v1 + v3);
  swift_endAccess();
  sub_228385E24();
  return sub_22819482C(a1);
}

uint64_t (*sub_228386EF0(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_228386F54;
}

uint64_t sub_228386F54(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_228385E24();
  }

  return result;
}

void sub_228386FB0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_228392F00();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_228387004(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MedicationsDayHistoryItem(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_228387068(void *a1)
{
  v2 = v1;
  v150 = a1;
  v3 = sub_2283911B0();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v136 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v136 - v8;
  v10 = sub_22838F440();
  v160 = *(v10 - 8);
  v161 = v10;
  v11 = MEMORY[0x28223BE20](v10);
  v154 = &v136 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v151 = &v136 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v156 = &v136 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v157 = &v136 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v153 = &v136 - v20;
  MEMORY[0x28223BE20](v19);
  v158 = &v136 - v21;
  sub_228386FB0(0, &qword_280DDCDB0, MEMORY[0x277CC9578]);
  v23 = MEMORY[0x28223BE20](v22 - 8);
  v155 = &v136 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v23);
  v152 = &v136 - v26;
  MEMORY[0x28223BE20](v25);
  v159 = &v136 - v27;
  sub_228386FB0(0, &unk_27D828770, type metadata accessor for MedicationsDayHistoryItem);
  MEMORY[0x28223BE20](v28 - 8);
  v30 = &v136 - v29;
  v31 = type metadata accessor for MedicationsDayHistoryItem(0);
  v32 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v34 = &v136 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = OBJC_IVAR____TtC19HealthMedicationsUI25MedicationsDayHistoryCell_item;
  swift_beginAccess();
  sub_22817E6C8(v2 + v35, v163);
  if (!v163[3])
  {
    sub_22819482C(v163);
    (*(v32 + 56))(v30, 1, 1, v31);
    goto LABEL_41;
  }

  sub_2281810DC(0, &qword_280DDCD60, MEMORY[0x277D10D48]);
  v36 = swift_dynamicCast();
  (*(v32 + 56))(v30, v36 ^ 1u, 1, v31);
  if ((*(v32 + 48))(v30, 1, v31) == 1)
  {
LABEL_41:
    sub_22838850C(v30, &unk_27D828770, type metadata accessor for MedicationsDayHistoryItem);
    sub_228391150();
    v75 = v2;
    v76 = sub_2283911A0();
    v77 = sub_2283925C0();

    if (os_log_type_enabled(v76, v77))
    {
      v78 = swift_slowAlloc();
      v79 = swift_slowAlloc();
      v162 = v79;
      *v78 = 136315138;
      sub_22817E6C8(v2 + v35, v163);
      sub_2281AEAE8(0, &qword_280DDCD50, &qword_280DDCD60, MEMORY[0x277D10D48], MEMORY[0x277D83D88]);
      v80 = sub_228392040();
      v82 = sub_2281C96FC(v80, v81, &v162);

      *(v78 + 4) = v82;
      _os_log_impl(&dword_22816B000, v76, v77, "Incorrect view model for MedicationsDayHistoryItem: %s", v78, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v79);
      MEMORY[0x22AAB7B80](v79, -1, -1);
      MEMORY[0x22AAB7B80](v78, -1, -1);
    }

    return (*(v4 + 8))(v7, v3);
  }

  sub_228387004(v30, v34);
  v37 = *&v34[*(v31 + 28)];
  if (v37)
  {
    v143 = v31;
    v163[0] = MEMORY[0x277D84F90];
    v162 = MEMORY[0x277D84F90];
    v38 = v159;
    v39 = *(v160 + 7);
    v40 = v161;
    v139 = v160 + 56;
    v138 = v39;
    v39(v159, 1, 1, v161);
    if (v37 >> 62)
    {
LABEL_75:
      v41 = sub_2283930D0();
    }

    else
    {
      v41 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v147 = v34;
    v142 = (v160 + 16);
    v148 = (v160 + 32);
    v140 = (v160 + 8);

    if (!v41)
    {
      v149 = MEMORY[0x277D84F90];
      v146 = MEMORY[0x277D84F90];
      goto LABEL_48;
    }

    v42 = 0;
    v34 = (v37 & 0xC000000000000001);
    v146 = MEMORY[0x277D84F90];
    v149 = MEMORY[0x277D84F90];
    while (2)
    {
      v43 = v42;
      while (1)
      {
        if (v34)
        {
          MEMORY[0x22AAB6D80](v43, v37);
          v42 = v43 + 1;
          if (__OFADD__(v43, 1))
          {
            goto LABEL_73;
          }
        }

        else
        {
          if (v43 >= *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_74;
          }

          v42 = v43 + 1;
          if (__OFADD__(v43, 1))
          {
LABEL_73:
            __break(1u);
LABEL_74:
            __break(1u);
            goto LABEL_75;
          }
        }

        v44 = sub_228390A20();
        if (v44)
        {
          break;
        }

        ++v43;
        if (v42 == v41)
        {
          goto LABEL_48;
        }
      }

      v45 = v44;
      v46 = sub_228390A10();
      sub_22838F3F0();
      type metadata accessor for MedicationsDoseLogViewModel(0);
      v47 = swift_allocObject();
      v47[2] = v45;
      v47[3] = v46;
      v145 = v47;
      v47[4] = 0;
      v141 = v45;
      v48 = v46;
      v49 = sub_2283928B0();
      v144 = v48;
      if (v50)
      {
        v49 = sub_2283928A0();
        if (v51)
        {
          v49 = 0x3FF0000000000000;
        }
      }

      v52 = v145;
      v145[5] = v49;
      v53 = v144;
      v52[6] = [v144 logStatus];
      v54 = [v53 logStatus];
      *(v52 + OBJC_IVAR____TtC19HealthMedicationsUI27MedicationsDoseLogViewModel_initialStatus) = v54;
      v55 = v52[6];
      if (qword_283B66BB8 == v55 || qword_283B66BC0 == v55)
      {
        v58 = [v144 startDate];
        v56 = v153;
        sub_22838F3E0();

        v57 = v161;
      }

      else
      {
        v56 = v153;
        v57 = v161;
        (*v142)(v153, v158, v161);
      }

      v59 = v145;
      v137 = *v148;
      (v137)(v145 + OBJC_IVAR____TtC19HealthMedicationsUI27MedicationsDoseLogViewModel_logDate, v56, v57);
      v60 = v59[6];
      if (qword_283B66BB8 == v60 || qword_283B66BC0 == v60)
      {
        v63 = v144;
        v64 = [v144 startDate];
        sub_22838F3E0();

        v61 = v161;
        (*v140)(v158, v161);
        v62 = v137;
      }

      else
      {

        v61 = v57;
        v62 = v137;
        (v137)(v157, v158, v57);
      }

      v65 = v61;
      v66 = v145;
      v62(v145 + OBJC_IVAR____TtC19HealthMedicationsUI27MedicationsDoseLogViewModel_initialLogDate, v157, v65);
      *(v66 + OBJC_IVAR____TtC19HealthMedicationsUI27MedicationsDoseLogViewModel_initialDoseAmount) = v66[5];
      *(v66 + OBJC_IVAR____TtC19HealthMedicationsUI27MedicationsDoseLogViewModel_index) = v43;
      v67 = v66[3];
      if (v67)
      {
        if ([v67 logOrigin] != 2)
        {
LABEL_31:

          MEMORY[0x22AAB5D20](v68);
          if (*((v163[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v163[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_2283921E0();
          }

          sub_228392230();
          v69 = v163[0];
          v70 = &v165;
          goto LABEL_38;
        }
      }

      else if (!v66[4])
      {
        goto LABEL_31;
      }

      MEMORY[0x22AAB5D20](v71);
      if (*((v162 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v162 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_2283921E0();
      }

      sub_228392230();
      v69 = v162;
      v70 = &v164;
LABEL_38:
      *(v70 - 32) = v69;
      v72 = sub_228390A10();
      v73 = [v72 startDate];

      v74 = v152;
      sub_22838F3E0();

      v38 = v159;
      sub_22838850C(v159, &qword_280DDCDB0, MEMORY[0x277CC9578]);
      v40 = v161;
      v138(v74, 0, 1, v161);
      sub_2281E793C(v74, v38);
      if (v42 != v41)
      {
        continue;
      }

      break;
    }

LABEL_48:

    v92 = v155;
    sub_2283884A0(v38, v155, &qword_280DDCDB0, MEMORY[0x277CC9578]);
    if ((*(v160 + 6))(v92, 1, v40) == 1)
    {
      v93 = MEMORY[0x277CC9578];
      sub_22838850C(v38, &qword_280DDCDB0, MEMORY[0x277CC9578]);

      sub_22833897C(v147);
      sub_22838850C(v92, &qword_280DDCDB0, v93);
    }

    v94 = v156;
    v160 = *v148;
    (v160)(v156, v92, v40);
    v95 = v147;
    if (v146 >> 62)
    {
      v96 = sub_2283930D0();
    }

    else
    {
      v96 = *((v146 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v97 = v149 >> 62;
    if (v96)
    {
      goto LABEL_55;
    }

    if (v97)
    {
      if (sub_2283930D0())
      {
        goto LABEL_55;
      }
    }

    else if (*((v149 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_55:
      v98 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
      [v98 setDateStyle_];
      [v98 setTimeStyle_];
      v99 = sub_228391FC0();
      v100 = sub_22838F380();
      v101 = [v98 hm:v99 localizableTimeStringKeyWithPrefix:v100 date:?];

      v158 = sub_228392000();
      if (v97)
      {
        v102 = sub_2283930D0();
      }

      else
      {
        v102 = *((v149 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v103 = *v142;
      v104 = v161;
      if (v102)
      {
        v103(v151, v94, v161);
        if (qword_280DDCF18 != -1)
        {
          swift_once();
        }

        sub_2281AEAE8(0, &qword_280DDB870, &qword_280DDB830, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
        v105 = swift_allocObject();
        *(v105 + 16) = xmmword_228397F40;
        v106 = &v147[*(v143 + 20)];
        v107 = *v106;
        v108 = *(v106 + 1);
        *(v105 + 56) = MEMORY[0x277D837D0];
        *(v105 + 64) = sub_22818E210();
        *(v105 + 32) = v107;
        *(v105 + 40) = v108;

        v109 = sub_22838F0C0();
        v111 = v110;
        if (*(v105 + 16))
        {
          v109 = sub_228391FD0();
          v113 = v112;

          v111 = v113;
        }

        else
        {
        }

        type metadata accessor for MedicationDoseLogListViewModel(0);
        v114 = swift_allocObject();
        v104 = v161;
        (v160)(v114 + OBJC_IVAR____TtC19HealthMedicationsUI30MedicationDoseLogListViewModel_date, v151, v161);
        v115 = (v114 + OBJC_IVAR____TtC19HealthMedicationsUI30MedicationDoseLogListViewModel_title);
        *v115 = v109;
        v115[1] = v111;
        *(v114 + 16) = v149;

        v94 = v156;
      }

      else
      {
        v114 = 0;
      }

      v103(v154, v94, v104);
      if (qword_280DDCF18 != -1)
      {
        swift_once();
      }

      sub_2281AEAE8(0, &qword_280DDB870, &qword_280DDB830, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
      v116 = swift_allocObject();
      *(v116 + 16) = xmmword_228397F40;
      v117 = &v147[*(v143 + 20)];
      v118 = *v117;
      v119 = *(v117 + 1);
      *(v116 + 56) = MEMORY[0x277D837D0];
      *(v116 + 64) = sub_22818E210();
      *(v116 + 32) = v118;
      *(v116 + 40) = v119;

      v120 = sub_22838F0C0();
      v122 = v121;

      if (*(v116 + 16))
      {
        v120 = sub_228391FD0();
        v124 = v123;

        v122 = v124;
      }

      else
      {
      }

      type metadata accessor for MedicationDoseLogListViewModel(0);
      v125 = swift_allocObject();
      v126 = v161;
      (v160)(v125 + OBJC_IVAR____TtC19HealthMedicationsUI30MedicationDoseLogListViewModel_date, v154, v161);
      v127 = (v125 + OBJC_IVAR____TtC19HealthMedicationsUI30MedicationDoseLogListViewModel_title);
      *v127 = v120;
      v127[1] = v122;
      *(v125 + 16) = v146;
      v128 = v147;
      v129 = *&v147[*(v143 + 32)];
      v130 = objc_allocWithZone(type metadata accessor for MedicationsLogViewController(0));

      v131 = v129;

      v133 = MedicationsLogViewController.init(medicationDoseLogList:asNeededMedicationDoseLogList:healthStore:showRecordAll:provenance:context:)(v132, v114, v131, 0, 2, 0, 3, 0);
      v134 = [objc_allocWithZone(MEMORY[0x277D12978]) initWithRootViewController_];
      [v134 setModalPresentationStyle_];
      [v134 setModalInPresentation_];
      [v150 presentViewController:v134 animated:1 completion:0];

      (*v140)(v156, v126);
      sub_22838850C(v159, &qword_280DDCDB0, MEMORY[0x277CC9578]);
      v135 = v128;
      goto LABEL_71;
    }

    (*v140)(v94, v161);
    sub_22838850C(v159, &qword_280DDCDB0, MEMORY[0x277CC9578]);

    v135 = v95;
LABEL_71:
    sub_22833897C(v135);
  }

  sub_228391150();
  v84 = v2;
  v85 = sub_2283911A0();
  v86 = sub_2283925C0();

  if (os_log_type_enabled(v85, v86))
  {
    v87 = swift_slowAlloc();
    v88 = swift_slowAlloc();
    v162 = v88;
    *v87 = 136315138;
    sub_22817E6C8(v2 + v35, v163);
    sub_2281AEAE8(0, &qword_280DDCD50, &qword_280DDCD60, MEMORY[0x277D10D48], MEMORY[0x277D83D88]);
    v89 = sub_228392040();
    v91 = sub_2281C96FC(v89, v90, &v162);

    *(v87 + 4) = v91;
    _os_log_impl(&dword_22816B000, v85, v86, "doseEvents do not exist on MedicationsDayHistoryItem: %s", v87, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v88);
    MEMORY[0x22AAB7B80](v88, -1, -1);
    MEMORY[0x22AAB7B80](v87, -1, -1);
  }

  (*(v4 + 8))(v9, v3);
  return sub_22833897C(v34);
}

uint64_t sub_2283884A0(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_228386FB0(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_22838850C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_228386FB0(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_228388574(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v5 = [objc_opt_self() defaultCenter];
  if (qword_280DDBA78 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  [v5 postNotificationName:qword_280DDBA80 object:a2];

  return a3(a2);
}

id sub_22838864C(uint64_t a1, void *a2)
{
  v25 = a2;
  v2 = MEMORY[0x277D83D88];
  sub_228389944(0, &qword_27D824530, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - v7;
  v9 = sub_228390A00();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x277CC9788];
  sub_228389944(0, &unk_27D825D00, MEMORY[0x277CC9788], v2);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v24 - v15;
  v17 = sub_22838F580();
  (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
  sub_2283909F0();
  sub_228391140();
  (*(v10 + 8))(v12, v9);
  sub_228389A3C(v16, &unk_27D825D00, v13);
  sub_22838F1E0();
  result = [objc_opt_self() defaultWorkspace];
  if (result)
  {
    v19 = result;

    sub_2283899A8(v8, v6);
    v20 = sub_22838F1F0();
    v21 = *(v20 - 8);
    v22 = 0;
    if ((*(v21 + 48))(v6, 1, v20) != 1)
    {
      v22 = sub_22838F1C0();
      (*(v21 + 8))(v6, v20);
    }

    sub_2281A8644(MEMORY[0x277D84F90]);
    v23 = sub_228391F10();

    [v19 openSensitiveURL:v22 withOptions:v23];

    [v25 dismissViewControllerAnimated:1 completion:0];
    return sub_228389A3C(v8, &qword_27D824530, MEMORY[0x277CC9260]);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id _sSo17UIAlertControllerC19HealthMedicationsUIE46makeAlertForMedicationWithIncompatibleSchedule10deviceName9okHandler06cancelP0ABSS_yycSgAHtFZ_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (qword_280DDCF18 != -1)
  {
    swift_once();
  }

  sub_228389944(0, &qword_280DDB870, sub_228201644, MEMORY[0x277D84560]);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_228397F40;
  *(v10 + 56) = MEMORY[0x277D837D0];
  *(v10 + 64) = sub_22818E210();
  *(v10 + 32) = a1;
  *(v10 + 40) = a2;

  sub_22838F0C0();
  if (*(v10 + 16))
  {
    sub_228391FD0();
  }

  sub_22838F0C0();
  v11 = sub_228391FC0();

  v12 = sub_228391FC0();

  v28 = [objc_opt_self() alertControllerWithTitle:v11 message:v12 preferredStyle:{1, 0xE000000000000000}];

  sub_22838F0C0();
  v13 = swift_allocObject();
  *(v13 + 16) = a3;
  *(v13 + 24) = a4;
  sub_228176FA8(a3, a4);
  v14 = sub_228391FC0();

  v35 = sub_228389AD4;
  v36 = v13;
  aBlock = MEMORY[0x277D85DD0];
  v32 = 1107296256;
  v33 = sub_228281980;
  v34 = &block_descriptor_18_1;
  v15 = _Block_copy(&aBlock);

  v16 = objc_opt_self();
  v27 = [v16 actionWithTitle:v14 style:0 handler:{v15, 0xE000000000000000}];
  _Block_release(v15);

  sub_22838F0C0();
  v17 = swift_allocObject();
  *(v17 + 16) = a5;
  *(v17 + 24) = a6;
  sub_228176FA8(a5, a6);
  v18 = sub_228391FC0();

  v35 = sub_228389AD4;
  v36 = v17;
  aBlock = MEMORY[0x277D85DD0];
  v32 = 1107296256;
  v33 = sub_228281980;
  v34 = &block_descriptor_24_2;
  v19 = _Block_copy(&aBlock);

  v20 = [v16 actionWithTitle:v18 style:0 handler:{v19, 0xE000000000000000}];
  _Block_release(v19);

  sub_22838F0C0();
  v21 = swift_allocObject();
  *(v21 + 16) = v28;
  v22 = v28;
  v23 = sub_228391FC0();

  v35 = sub_22838993C;
  v36 = v21;
  aBlock = MEMORY[0x277D85DD0];
  v32 = 1107296256;
  v33 = sub_228281980;
  v34 = &block_descriptor_30_1;
  v24 = _Block_copy(&aBlock);

  v25 = [v16 actionWithTitle:v23 style:1 handler:{v24, 0xE000000000000000}];
  _Block_release(v24);

  [v22 addAction_];
  [v22 addAction_];
  [v22 addAction_];

  return v22;
}

id _sSo17UIAlertControllerC19HealthMedicationsUIE27makeAlertForExsitingConcept7concept11listManager11showHandlerABSgSo9HKConceptC_25UserDomainConceptsSupport04ListjM0CySo012HKMedicationqrJ0CctFZ_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_280DDCF18 != -1)
  {
    swift_once();
  }

  sub_228389944(0, &qword_280DDB870, sub_228201644, MEMORY[0x277D84560]);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_228397F40;
  v6 = sub_228392E90();
  v8 = sub_2282AE540(v6, v7);
  v10 = v9;

  *(v5 + 56) = MEMORY[0x277D837D0];
  *(v5 + 64) = sub_22818E210();
  *(v5 + 32) = v8;
  *(v5 + 40) = v10;
  sub_22838F0C0();
  if (*(v5 + 16))
  {
    sub_228391FD0();
  }

  v11 = sub_228391FC0();

  v12 = [objc_opt_self() alertControllerWithTitle:v11 message:0 preferredStyle:{1, 0xE000000000000000}];

  v13 = sub_2283906A0();
  if (!v13)
  {
    v13 = sub_228390680();
    if (!v13)
    {

      return 0;
    }
  }

  v14 = v13;
  sub_22838F0C0();
  v15 = swift_allocObject();
  v15[2] = v14;
  v15[3] = a3;
  v15[4] = a4;
  v28 = v14;

  v16 = sub_228391FC0();

  aBlock[4] = sub_2283898F0;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_228281980;
  aBlock[3] = &block_descriptor_12_2;
  v17 = _Block_copy(aBlock);

  v18 = objc_opt_self();
  v19 = [v18 actionWithTitle:v16 style:0 handler:{v17, 0xE000000000000000}];
  _Block_release(v17);

  sub_22838F0C0();
  v20 = sub_228391FC0();

  v21 = [v18 actionWithTitle:v20 style:1 handler:{0, 0xE000000000000000}];

  [v12 addAction_];
  [v12 addAction_];
  v22 = sub_2283906A0();
  if (!v22)
  {
    v24 = sub_228390680();
    if (v24)
    {

      sub_22838F0C0();
      v25 = sub_228391FC0();

      [v12 setMessage_];

      return v12;
    }

    return 0;
  }

  v23 = v22;

  return v12;
}

id _sSo17UIAlertControllerC19HealthMedicationsUIE31makeAlertForArchivingMedication9onConfirm0K6CancelAByyc_yycSgtFZ_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_280DDCF18 != -1)
  {
    swift_once();
  }

  sub_22838F0C0();
  sub_22838F0C0();
  v5 = sub_228391FC0();

  v6 = sub_228391FC0();

  v7 = [objc_opt_self() alertControllerWithTitle:v5 message:v6 preferredStyle:{1, 0xE000000000000000}];

  sub_22838F0C0();
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;

  v9 = sub_228391FC0();

  v25 = sub_2281BC81C;
  v26 = v8;
  aBlock = MEMORY[0x277D85DD0];
  v22 = 1107296256;
  v23 = sub_228281980;
  v24 = &block_descriptor_32;
  v10 = _Block_copy(&aBlock);

  v11 = objc_opt_self();
  v12 = [v11 actionWithTitle:v9 style:0 handler:{v10, 0xE000000000000000}];
  _Block_release(v10);

  sub_22838F0C0();
  v13 = swift_allocObject();
  *(v13 + 16) = a3;
  *(v13 + 24) = a4;
  sub_228176FA8(a3, a4);
  v14 = sub_228391FC0();

  v25 = sub_2283898EC;
  v26 = v13;
  aBlock = MEMORY[0x277D85DD0];
  v22 = 1107296256;
  v23 = sub_228281980;
  v24 = &block_descriptor_6_0;
  v15 = _Block_copy(&aBlock);

  v16 = [v11 actionWithTitle:v14 style:1 handler:{v15, 0xE000000000000000}];
  _Block_release(v15);

  [v7 addAction_];
  [v7 addAction_];

  return v7;
}

uint64_t block_copy_helper_33(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroy_2Tm_1()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void sub_228389944(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_2283899A8(uint64_t a1, uint64_t a2)
{
  sub_228389944(0, &qword_27D824530, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_228389A3C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_228389944(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t FieldItem.init(text:placeholder:height:isEnabled:isNumeric:characterLimit:verticalAlignment:firstResponderHandler:hasClearButton:updateHandler:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, char a6@<W5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, double a10@<D0>, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16)
{
  sub_22838F490();
  v20 = type metadata accessor for FieldItem(0);
  v21 = (a9 + v20[5]);
  v22 = (a9 + v20[6]);
  v23 = a9 + v20[10];
  v24 = (a9 + v20[14]);
  v25 = (a9 + v20[15]);
  type metadata accessor for FieldCell();
  sub_22838DD0C(&qword_27D828780, v26, type metadata accessor for FieldCell, &unk_2283A6C1C);
  result = sub_22838FBB0();
  *v25 = result;
  v25[1] = v28;
  *v21 = a1;
  v21[1] = a2;
  *v22 = a3;
  v22[1] = a4;
  *(a9 + v20[7]) = a10;
  *v23 = a7;
  *(v23 + 8) = a8 & 1;
  *(a9 + v20[9]) = a6;
  *(a9 + v20[8]) = a5;
  *(a9 + v20[12]) = a11;
  *v24 = a12;
  v24[1] = a13;
  v29 = (a9 + v20[13]);
  *v29 = a15;
  v29[1] = a16;
  *(a9 + v20[11]) = a14;
  return result;
}

uint64_t type metadata accessor for FieldItem(uint64_t a1)
{
  result = qword_27D8287A0;
  if (!qword_27D8287A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t FieldItem.identifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_22838F4A0();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t FieldItem.text.getter()
{
  v1 = *(v0 + *(type metadata accessor for FieldItem(0) + 20));

  return v1;
}

uint64_t FieldItem.text.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for FieldItem(0) + 20));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t FieldItem.placeholder.getter()
{
  v1 = *(v0 + *(type metadata accessor for FieldItem(0) + 24));

  return v1;
}

uint64_t FieldItem.placeholder.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for FieldItem(0) + 24));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t FieldItem.height.setter(double a1)
{
  result = type metadata accessor for FieldItem(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t FieldItem.isEnabled.setter(char a1)
{
  result = type metadata accessor for FieldItem(0);
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t FieldItem.isNumeric.setter(char a1)
{
  result = type metadata accessor for FieldItem(0);
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t FieldItem.characterLimit.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for FieldItem(0);
  v6 = v2 + *(result + 40);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t FieldItem.hasClearButton.setter(char a1)
{
  result = type metadata accessor for FieldItem(0);
  *(v1 + *(result + 44)) = a1;
  return result;
}

uint64_t FieldItem.verticalAlignment.setter(uint64_t a1)
{
  result = type metadata accessor for FieldItem(0);
  *(v1 + *(result + 48)) = a1;
  return result;
}

uint64_t FieldItem.reuseIdentifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for FieldItem(0) + 60));

  return v1;
}

uint64_t FieldItem.uniqueIdentifier.getter(uint64_t a1)
{
  v1 = sub_22838F450();
  MEMORY[0x22AAB5C80](v1);

  return 0x657449646C656946;
}

uint64_t FieldItem.hash(into:)(uint64_t a1)
{
  v2 = type metadata accessor for FieldItem(0);
  if (*(v1 + v2[5] + 8))
  {
    sub_228393540();
    sub_2283920B0();
  }

  else
  {
    sub_228393540();
  }

  if (*(v1 + v2[6] + 8))
  {
    sub_228393540();
    sub_2283920B0();
  }

  else
  {
    sub_228393540();
  }

  v3 = *(v1 + v2[7]);
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  return MEMORY[0x22AAB7100](*&v3);
}

uint64_t FieldItem.hashValue.getter()
{
  sub_228393520();
  v1 = type metadata accessor for FieldItem(0);
  if (*(v0 + v1[5] + 8))
  {
    sub_228393540();
    sub_2283920B0();
  }

  else
  {
    sub_228393540();
  }

  if (*(v0 + v1[6] + 8))
  {
    sub_228393540();
    sub_2283920B0();
  }

  else
  {
    sub_228393540();
  }

  v2 = *(v0 + v1[7]);
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  MEMORY[0x22AAB7100](*&v2);
  return sub_228393570();
}

uint64_t sub_22838A528(uint64_t a1, int *a2)
{
  sub_228393520();
  if (*(v2 + a2[5] + 8))
  {
    sub_228393540();
    sub_2283920B0();
  }

  else
  {
    sub_228393540();
  }

  if (*(v2 + a2[6] + 8))
  {
    sub_228393540();
    sub_2283920B0();
  }

  else
  {
    sub_228393540();
  }

  v4 = *(v2 + a2[7]);
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  MEMORY[0x22AAB7100](*&v4);
  return sub_228393570();
}

uint64_t sub_22838A618(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 60));

  return v2;
}

uint64_t sub_22838A664(uint64_t a1)
{
  v1 = sub_22838F450();
  MEMORY[0x22AAB5C80](v1);

  return 0x657449646C656946;
}

uint64_t sub_22838A6C0(uint64_t a1)
{
  v2 = sub_22838DD0C(&qword_27D825BF0, 255, type metadata accessor for FieldItem, &protocol conformance descriptor for FieldItem);

  return MEMORY[0x282169440](a1, v2);
}

char *sub_22838A740()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI9FieldCell____lazy_storage___textField;
  v2 = *&v0[OBJC_IVAR____TtC19HealthMedicationsUI9FieldCell____lazy_storage___textField];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC19HealthMedicationsUI9FieldCell____lazy_storage___textField];
  }

  else
  {
    v4 = sub_22838A7A4(v0);
    v5 = *&v0[v1];
    *&v0[v1] = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

char *sub_22838A7A4(void *a1)
{
  type metadata accessor for UITextFieldWithInsets();
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  sub_228392560();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = &v2[OBJC_IVAR____TtC19HealthMedicationsUI21UITextFieldWithInsets_insets];
  swift_beginAccess();
  *v11 = v4;
  *(v11 + 1) = v6;
  *(v11 + 2) = v8;
  *(v11 + 3) = v10;
  v11[32] = 0;
  v12 = objc_opt_self();
  v13 = v2;
  v14 = [v12 secondarySystemBackgroundColor];
  [v13 setBackgroundColor_];

  v15 = v13;
  [v15 setAdjustsFontForContentSizeCategory_];
  sub_22817A958(0, &qword_280DDB9C0, 0x277D74300);
  v16 = sub_228392AD0();
  [v15 setFont_];

  v17 = v15;
  [v17 setContentVerticalAlignment_];
  if ([a1 effectiveUserInterfaceLayoutDirection] == 1)
  {
    v18 = 2;
  }

  else
  {
    v18 = 1;
  }

  [v17 setContentHorizontalAlignment_];

  [v17 setBorderStyle_];
  [v17 setTranslatesAutoresizingMaskIntoConstraints_];

  sub_22838F7B0();
  sub_228392B00();
  [v17 setDelegate_];
  [v17 addTarget:a1 action:sel_textFieldDidChangeWithSender_ forControlEvents:0x20000];

  return v17;
}

id sub_22838A9DC()
{
  v1 = v0;
  v2 = sub_22838F580();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC19HealthMedicationsUI9FieldCell____lazy_storage___numberFormatter;
  v7 = *(v1 + OBJC_IVAR____TtC19HealthMedicationsUI9FieldCell____lazy_storage___numberFormatter);
  if (v7)
  {
    v8 = *(v1 + OBJC_IVAR____TtC19HealthMedicationsUI9FieldCell____lazy_storage___numberFormatter);
  }

  else
  {
    v9 = [objc_allocWithZone(MEMORY[0x277CCABB8]) init];
    [v9 setNumberStyle_];
    sub_22838F500();
    v10 = sub_22838F4F0();
    (*(v3 + 8))(v5, v2);
    [v9 setLocale_];

    v11 = *(v1 + v6);
    *(v1 + v6) = v9;
    v8 = v9;

    v7 = 0;
  }

  v12 = v7;
  return v8;
}

char *sub_22838AB34(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI9FieldCell____lazy_storage___textField] = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI9FieldCell____lazy_storage___numberFormatter] = 0;
  v10 = &v4[OBJC_IVAR____TtC19HealthMedicationsUI9FieldCell_baseIdentifier];
  v21 = sub_228392000();
  v22 = v11;

  MEMORY[0x22AAB5C80](0xD000000000000016, 0x80000002283B65B0);

  *v10 = v21;
  v10[1] = v22;
  v12 = &v4[OBJC_IVAR____TtC19HealthMedicationsUI9FieldCell_item];
  v13 = type metadata accessor for FieldCell();
  *v12 = 0u;
  *(v12 + 1) = 0u;
  *(v12 + 4) = 0;
  v23.receiver = v5;
  v23.super_class = v13;
  v14 = objc_msgSendSuper2(&v23, sel_initWithFrame_, a1, a2, a3, a4);
  v15 = [v14 contentView];
  v16 = sub_22838A740();
  [v15 addSubview_];

  v17 = &v14[OBJC_IVAR____TtC19HealthMedicationsUI9FieldCell_baseIdentifier];
  swift_beginAccess();
  v19 = *v17;
  v18 = v17[1];

  sub_22838CC44(v19, v18);

  return v14;
}

void sub_22838ACF0()
{
  sub_22838DBBC(0, &qword_27D8287D8, type metadata accessor for FieldItem);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v34 - v2 + 22;
  sub_22826D838(0, &qword_280DDCE30, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22839CC40;
  v5 = sub_22838A740();
  v6 = [v5 leadingAnchor];

  v7 = [v0 contentView];
  v8 = [v7 leadingAnchor];

  v9 = [v6 constraintEqualToAnchor_];
  *(v4 + 32) = v9;
  v10 = OBJC_IVAR____TtC19HealthMedicationsUI9FieldCell____lazy_storage___textField;
  v11 = [*&v0[OBJC_IVAR____TtC19HealthMedicationsUI9FieldCell____lazy_storage___textField] trailingAnchor];
  v12 = [v0 contentView];
  v13 = [v12 trailingAnchor];

  v14 = [v11 constraintEqualToAnchor_];
  *(v4 + 40) = v14;
  v15 = [*&v0[v10] topAnchor];
  v16 = [v0 contentView];
  v17 = [v16 topAnchor];

  v18 = [v15 constraintEqualToAnchor_];
  *(v4 + 48) = v18;
  v19 = [*&v0[v10] bottomAnchor];
  v20 = [v0 contentView];
  v21 = [v20 bottomAnchor];

  v22 = [v19 constraintEqualToAnchor_];
  *(v4 + 56) = v22;
  v23 = [*&v0[v10] heightAnchor];
  v24 = OBJC_IVAR____TtC19HealthMedicationsUI9FieldCell_item;
  swift_beginAccess();
  sub_22817E6C8(&v0[v24], v34);
  if (!v35)
  {
    sub_22838DAFC(v34, &qword_280DDCD50, sub_22817A700);
    v29 = type metadata accessor for FieldItem(0);
    (*(*(v29 - 8) + 56))(v3, 1, 1, v29);
    goto LABEL_5;
  }

  sub_22817A700();
  v25 = type metadata accessor for FieldItem(0);
  v26 = swift_dynamicCast();
  v27 = *(v25 - 8);
  (*(v27 + 56))(v3, v26 ^ 1u, 1, v25);
  if ((*(v27 + 48))(v3, 1, v25) == 1)
  {
LABEL_5:
    sub_22838DAFC(v3, &qword_27D8287D8, type metadata accessor for FieldItem);
    v28 = 52.0;
    goto LABEL_6;
  }

  v28 = *&v3[*(v25 + 28)];
  sub_228294F90(v3);
LABEL_6:
  v30 = objc_opt_self();
  v31 = [v23 constraintGreaterThanOrEqualToConstant_];

  *(v4 + 64) = v31;
  sub_22817A958(0, &qword_280DDBA90, 0x277CCAAD0);
  v32 = sub_228392190();

  [v30 activateConstraints_];
}

uint64_t sub_22838B204()
{
  v1 = v0;
  v2 = sub_2283911B0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22838DBBC(0, &qword_27D8287D8, type metadata accessor for FieldItem);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v42 - v7;
  v9 = type metadata accessor for FieldItem(0);
  v10 = *(v9 - 1);
  MEMORY[0x28223BE20](v9);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtC19HealthMedicationsUI9FieldCell_item;
  swift_beginAccess();
  sub_22817E6C8(&v1[v13], v44);
  if (!v45)
  {
    sub_22838DAFC(v44, &qword_280DDCD50, sub_22817A700);
    (*(v10 + 56))(v8, 1, 1, v9);
    goto LABEL_8;
  }

  sub_22817A700();
  v14 = swift_dynamicCast();
  (*(v10 + 56))(v8, v14 ^ 1u, 1, v9);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
LABEL_8:
    sub_22838DAFC(v8, &qword_27D8287D8, type metadata accessor for FieldItem);
    sub_228391150();
    v20 = v1;
    v21 = sub_2283911A0();
    v22 = sub_2283925C0();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v43 = v24;
      *v23 = 136446210;
      sub_22817E6C8(&v1[v13], v44);
      sub_22838DBBC(0, &qword_280DDCD50, sub_22817A700);
      v25 = sub_228392040();
      v27 = sub_2281C96FC(v25, v26, &v43);

      *(v23 + 4) = v27;
      _os_log_impl(&dword_22816B000, v21, v22, "Incorrect view model for FieldCell: %{public}s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v24);
      MEMORY[0x22AAB7B80](v24, -1, -1);
      MEMORY[0x22AAB7B80](v23, -1, -1);
    }

    return (*(v3 + 8))(v5, v2);
  }

  sub_22838DB58(v8, v12);
  v15 = sub_22838A740();
  v16 = OBJC_IVAR____TtC19HealthMedicationsUI9FieldCell____lazy_storage___textField;
  v17 = [*&v1[OBJC_IVAR____TtC19HealthMedicationsUI9FieldCell____lazy_storage___textField] constraints];
  if (!v17)
  {
    sub_22817A958(0, &qword_280DDBA90, 0x277CCAAD0);
    sub_2283921A0();
    v17 = sub_228392190();
  }

  [v15 removeConstraints_];

  sub_22838ACF0();
  v18 = *&v12[v9[5] + 8];
  v19 = *&v1[v16];
  if (v18)
  {
    v18 = sub_228391FC0();
  }

  [v19 setText_];

  v29 = *&v12[v9[6] + 8];
  v30 = *&v1[v16];
  if (v29)
  {
    v29 = sub_228391FC0();
  }

  [v30 setPlaceholder_];

  [*&v1[v16] setContentVerticalAlignment_];
  v31 = *&v1[v16];
  if ([v1 effectiveUserInterfaceLayoutDirection] == 1)
  {
    v32 = 2;
  }

  else
  {
    v32 = 1;
  }

  [v31 setContentHorizontalAlignment_];

  if (v12[v9[9]] == 1)
  {
    [*&v1[v16] setKeyboardType_];
  }

  if (v12[v9[11]] == 1)
  {
    [*&v1[v16] setClearButtonMode_];
  }

  [*&v1[v16] setEnabled_];
  if (*&v12[v9[14]])
  {
    v33 = [objc_allocWithZone(MEMORY[0x277D75B80]) initWithTarget:v1 action:sel_didTapCell];
    [v1 addGestureRecognizer_];
  }

  else
  {
    v34 = [v1 gestureRecognizers];
    if (v34)
    {
      v35 = v34;
      sub_22817A958(0, &qword_27D8287F0, 0x277D75548);
      v36 = sub_2283921A0();

      if (v36 >> 62)
      {
        goto LABEL_35;
      }

      for (i = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2283930D0())
      {
        v38 = 0;
        while (1)
        {
          if ((v36 & 0xC000000000000001) != 0)
          {
            v39 = MEMORY[0x22AAB6D80](v38, v36);
          }

          else
          {
            if (v38 >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_34;
            }

            v39 = *(v36 + 8 * v38 + 32);
          }

          v40 = v39;
          v41 = v38 + 1;
          if (__OFADD__(v38, 1))
          {
            break;
          }

          [v1 removeGestureRecognizer_];

          ++v38;
          if (v41 == i)
          {
            goto LABEL_36;
          }
        }

        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        ;
      }

LABEL_36:
    }
  }

  return sub_228294F90(v12);
}

uint64_t sub_22838B914()
{
  v1 = v0;
  v2 = sub_2283911B0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22838DBBC(0, &qword_27D8287D8, type metadata accessor for FieldItem);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v28 - v7;
  v9 = type metadata accessor for FieldItem(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtC19HealthMedicationsUI9FieldCell_item;
  swift_beginAccess();
  sub_22817E6C8(&v1[v13], v30);
  if (v31)
  {
    sub_22817A700();
    v14 = swift_dynamicCast();
    (*(v10 + 56))(v8, v14 ^ 1u, 1, v9);
    if ((*(v10 + 48))(v8, 1, v9) != 1)
    {
      sub_22838DB58(v8, v12);
      v15 = *&v12[*(v9 + 56)];
      if (v15)
      {
        v16 = sub_22838A740();
        v17 = v15();

        if (v17)
        {
          v18 = OBJC_IVAR____TtC19HealthMedicationsUI9FieldCell____lazy_storage___textField;
          [*&v1[OBJC_IVAR____TtC19HealthMedicationsUI9FieldCell____lazy_storage___textField] setUserInteractionEnabled_];
          [*&v1[v18] becomeFirstResponder];
        }
      }

      return sub_228294F90(v12);
    }
  }

  else
  {
    sub_22838DAFC(v30, &qword_280DDCD50, sub_22817A700);
    (*(v10 + 56))(v8, 1, 1, v9);
  }

  sub_22838DAFC(v8, &qword_27D8287D8, type metadata accessor for FieldItem);
  sub_228391150();
  v20 = v1;
  v21 = sub_2283911A0();
  v22 = sub_2283925C0();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v29 = v24;
    *v23 = 136446210;
    sub_22817E6C8(&v1[v13], v30);
    sub_22838DBBC(0, &qword_280DDCD50, sub_22817A700);
    v25 = sub_228392040();
    v27 = sub_2281C96FC(v25, v26, &v29);

    *(v23 + 4) = v27;
    _os_log_impl(&dword_22816B000, v21, v22, "Incorrect view model for FieldCell: %{public}s", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v24);
    MEMORY[0x22AAB7B80](v24, -1, -1);
    MEMORY[0x22AAB7B80](v23, -1, -1);
  }

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_22838BD90(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v52 = a3;
  v7 = sub_2283911B0();
  v50 = *(v7 - 8);
  v51 = v7;
  MEMORY[0x28223BE20](v7);
  v49 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22838FB30();
  v47 = *(v9 - 8);
  v48 = v9;
  MEMORY[0x28223BE20](v9);
  v46 = (&v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_22838DBBC(0, &qword_27D8287D8, type metadata accessor for FieldItem);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v46 - v12;
  v14 = type metadata accessor for FieldItem(0);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = [a1 text];
  if (v18)
  {
    v19 = v18;
    sub_228392000();
  }

  v20 = sub_228391FC0();

  v21 = sub_228391FC0();
  v53 = v20;
  v22 = [v20 stringByReplacingCharactersInRange:a2 withString:{v52, v21}];

  v23 = sub_228392000();
  v25 = v24;

  v26 = OBJC_IVAR____TtC19HealthMedicationsUI9FieldCell_item;
  v27 = v54;
  swift_beginAccess();
  sub_22817E6C8(v27 + v26, v56);
  if (!v57)
  {

    sub_22838DAFC(v56, &qword_280DDCD50, sub_22817A700);
    (*(v15 + 56))(v13, 1, 1, v14);
    goto LABEL_7;
  }

  sub_22817A700();
  v28 = swift_dynamicCast();
  (*(v15 + 56))(v13, v28 ^ 1u, 1, v14);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {

LABEL_7:
    sub_22838DAFC(v13, &qword_27D8287D8, type metadata accessor for FieldItem);
    v29 = v49;
    sub_228391150();
    v30 = v27;
    v31 = sub_2283911A0();
    v32 = sub_2283925C0();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v35 = v27;
      v36 = v34;
      v55 = v34;
      *v33 = 136446210;
      sub_22817E6C8(v35 + v26, v56);
      sub_22838DBBC(0, &qword_280DDCD50, sub_22817A700);
      v37 = sub_228392040();
      v39 = sub_2281C96FC(v37, v38, &v55);

      *(v33 + 4) = v39;
      _os_log_impl(&dword_22816B000, v31, v32, "Incorrect view model for FieldCell: %{public}s", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v36);
      MEMORY[0x22AAB7B80](v36, -1, -1);
      MEMORY[0x22AAB7B80](v33, -1, -1);
    }

    (*(v50 + 8))(v29, v51);
    goto LABEL_10;
  }

  sub_22838DB58(v13, v17);
  if (v17[*(v14 + 36)] == 1)
  {
    v42 = v46;
    sub_22838C388(v23, v25, v46);

    v40 = sub_22838FB20();

    (*(v47 + 8))(v42, v48);
    sub_228294F90(v17);
    return v40 & 1;
  }

  v43 = &v17[*(v14 + 40)];
  if ((v43[8] & 1) == 0)
  {
    v44 = *v43;
    v45 = sub_2283920C0();

    sub_228294F90(v17);
    v40 = v44 >= v45;
    return v40 & 1;
  }

  sub_228294F90(v17);

LABEL_10:
  v40 = 1;
  return v40 & 1;
}

id sub_22838C388@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = v3;
  sub_22838DBBC(0, &unk_27D825D00, MEMORY[0x277CC9788]);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v77 - v9;
  v11 = sub_22838F580();
  v86 = *(v11 - 8);
  v12 = MEMORY[0x28223BE20](v11);
  v78 = &v77 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v87 = &v77 - v14;
  v15 = sub_22838EEE0();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v85 = &v77 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = &v77 - v19;
  v89 = a1;
  v90 = a2;
  sub_22838EED0();
  v83 = sub_22819DFF4();
  v21 = sub_228392F70();
  v23 = v22;
  v26 = *(v16 + 8);
  v25 = v16 + 8;
  v24 = v26;
  v26(v20, v15);
  v27 = HIBYTE(v23) & 0xF;
  if ((v23 & 0x2000000000000000) == 0)
  {
    v27 = v21 & 0xFFFFFFFFFFFFLL;
  }

  if (!v27)
  {
    v57 = *MEMORY[0x277D10DA0];
    v58 = sub_22838FB30();
    (*(*(v58 - 8) + 104))(a3, v57, v58);
  }

  v79 = v24;
  v28 = sub_22838A9DC();
  [v28 copy];

  sub_228392F90();
  swift_unknownObjectRelease();
  sub_22817A958(0, &unk_27D8287E0, 0x277CCABB8);
  swift_dynamicCast();
  v84 = v88;
  v77 = v4;
  v29 = sub_22838A740();
  v30 = [v29 textInputMode];

  v82 = v11;
  if (v30 && (v31 = [v30 primaryLanguage], v30, v31))
  {
    sub_228392000();

    v32 = v82;
    sub_22838F4B0();
    v33 = v86;
    (*(v86 + 56))(v10, 0, 1, v32);
    (*(v33 + 32))(v87, v10, v32);
  }

  else
  {
    v34 = v86;
    (*(v86 + 56))(v10, 1, 1, v11);
    sub_22838F540();
    if ((*(v34 + 48))(v10, 1, v11) != 1)
    {
      sub_22838DAFC(v10, &unk_27D825D00, MEMORY[0x277CC9788]);
    }
  }

  v80 = v15;
  v81 = a3;
  result = [v84 decimalSeparator];
  if (result)
  {
    v36 = result;
    v37 = sub_228392000();
    v39 = v38;

    v40 = v87;
    v41 = sub_22838F4E0();
    if (v42)
    {
      v43 = v41;
    }

    else
    {
      v43 = 0;
    }

    if (v42)
    {
      v44 = v42;
    }

    else
    {
      v44 = 0xE000000000000000;
    }

    v89 = v37;
    v90 = v39;

    MEMORY[0x22AAB5C80](v43, v44);

    v45 = v85;
    sub_22838EEC0();

    v89 = v21;
    v90 = v23;
    v46 = sub_228392F70();
    v48 = v47;

    v49 = HIBYTE(v48) & 0xF;
    if ((v48 & 0x2000000000000000) == 0)
    {
      v49 = v46 & 0xFFFFFFFFFFFFLL;
    }

    if (!v49)
    {

      v79(v45, v80);
      (*(v86 + 8))(v40, v82);
      v59 = *MEMORY[0x277D10DA0];
      v60 = sub_22838FB30();
      return (*(*(v60 - 8) + 104))(v81, v59, v60);
    }

    v83 = v25;
    v50 = sub_228391FC0();
    v51 = v84;
    v52 = [v84 numberFromString_];

    v53 = v81;
    if (v52)
    {

      v54 = v82;
      v55 = v87;
      v56 = v80;
    }

    else
    {
      v55 = v87;
      v61 = sub_22838F4F0();
      [v51 setLocale_];

      v62 = sub_228391FC0();

      v52 = [v51 numberFromString_];

      v63 = [*(v77 + OBJC_IVAR____TtC19HealthMedicationsUI9FieldCell____lazy_storage___numberFormatter) locale];
      if (v63)
      {
        v64 = v78;
        v65 = v63;
        sub_22838F530();

        v66 = sub_22838F4F0();
        v54 = v82;
        (*(v86 + 8))(v64, v82);
      }

      else
      {
        v66 = 0;
        v54 = v82;
      }

      v56 = v80;
      [v51 setLocale_];

      if (!v52)
      {
        goto LABEL_30;
      }
    }

    v67 = [v51 stringFromNumber_];
    if (v67)
    {
      v68 = v67;
      v69 = sub_228392000();
      v71 = v70;

      [v52 doubleValue];
      v73 = v72;

      v79(v85, v56);
      (*(v86 + 8))(v55, v54);
      *v53 = v69;
      v53[1] = v71;
      v53[2] = v73;
      v53[3] = v51;
      v74 = MEMORY[0x277D10DA8];
LABEL_31:
      v75 = *v74;
      v76 = sub_22838FB30();
      return (*(*(v76 - 8) + 104))(v53, v75, v76);
    }

LABEL_30:
    v79(v85, v56);
    (*(v86 + 8))(v55, v54);
    v74 = MEMORY[0x277D10D98];
    goto LABEL_31;
  }

  __break(1u);
  return result;
}

void sub_22838CC44(uint64_t a1, uint64_t a2)
{
  v4 = sub_2283911B0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v8 = sub_22838A740();
    v15 = a1;
    v16 = a2;

    MEMORY[0x22AAB5C80](0x656946747865542ELL, 0xEA0000000000646CLL);
    v14 = sub_228391FC0();

    [v8 setAccessibilityIdentifier_];

    v9 = v14;
  }

  else
  {
    sub_228391150();
    v10 = sub_2283911A0();
    v11 = sub_2283925C0();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_22816B000, v10, v11, "Unable to set automation identifiers as there is no base identifier.", v12, 2u);
      MEMORY[0x22AAB7B80](v12, -1, -1);
    }

    (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_22838CE78(void *a1)
{
  v2 = v1;
  v34 = a1;
  v35 = sub_2283911B0();
  v3 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22838FB30();
  v33 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = (&v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_22838DBBC(0, &qword_27D8287D8, type metadata accessor for FieldItem);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v33 - v10;
  v12 = type metadata accessor for FieldItem(0);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = OBJC_IVAR____TtC19HealthMedicationsUI9FieldCell_item;
  swift_beginAccess();
  sub_22817E6C8(v2 + v16, v37);
  if (v38)
  {
    sub_22817A700();
    v17 = swift_dynamicCast();
    (*(v13 + 56))(v11, v17 ^ 1u, 1, v12);
    if ((*(v13 + 48))(v11, 1, v12) != 1)
    {
      sub_22838DB58(v11, v15);
      v18 = [v34 text];
      if (v18)
      {
        v19 = v18;
        v20 = sub_228392000();
        v22 = v21;
      }

      else
      {
        v20 = 0;
        v22 = 0xE000000000000000;
      }

      if (v15[*(v12 + 36)] != 1 || (sub_22838C388(v20, v22, v8), v32 = sub_22838FB20(), (*(v33 + 8))(v8, v6), (v32 & 1) != 0))
      {
        (*&v15[*(v12 + 52)])(v15, v20, v22);
      }

      return sub_228294F90(v15);
    }
  }

  else
  {
    sub_22838DAFC(v37, &qword_280DDCD50, sub_22817A700);
    (*(v13 + 56))(v11, 1, 1, v12);
  }

  sub_22838DAFC(v11, &qword_27D8287D8, type metadata accessor for FieldItem);
  sub_228391150();
  v23 = v2;
  v24 = sub_2283911A0();
  v25 = sub_2283925C0();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v36 = v27;
    *v26 = 136446210;
    sub_22817E6C8(v2 + v16, v37);
    sub_22838DBBC(0, &qword_280DDCD50, sub_22817A700);
    v28 = sub_228392040();
    v30 = sub_2281C96FC(v28, v29, &v36);

    *(v26 + 4) = v30;
    _os_log_impl(&dword_22816B000, v24, v25, "Incorrect view model for FieldCell: %{public}s", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v27);
    MEMORY[0x22AAB7B80](v27, -1, -1);
    MEMORY[0x22AAB7B80](v26, -1, -1);
  }

  return (*(v3 + 8))(v5, v35);
}

id sub_22838D3E8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FieldCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_22838D49C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI9FieldCell_item;
  swift_beginAccess();
  return sub_22817E6C8(v1 + v3, a1);
}

uint64_t sub_22838D4F4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI9FieldCell_item;
  swift_beginAccess();
  sub_22818FD64(a1, v1 + v3);
  swift_endAccess();
  sub_22838B204();
  return sub_22838DAFC(a1, &qword_280DDCD50, sub_22817A700);
}

uint64_t (*sub_22838D57C(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_22838D5E0;
}

uint64_t sub_22838D5E0(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_22838B204();
  }

  return result;
}

uint64_t sub_22838D638()
{
  v1 = (*v0 + OBJC_IVAR____TtC19HealthMedicationsUI9FieldCell_baseIdentifier);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_22838D694(uint64_t a1, uint64_t a2)
{
  v5 = (*v2 + OBJC_IVAR____TtC19HealthMedicationsUI9FieldCell_baseIdentifier);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

uint64_t _s19HealthMedicationsUI9FieldItemV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FieldItem(0);
  v5 = v4[5];
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v8[1];
  if (v7)
  {
    if (!v9)
    {
      goto LABEL_21;
    }

    if (*v6 != *v8 || v7 != v9)
    {
      v11 = v4;
      v12 = sub_228393460();
      v4 = v11;
      if ((v12 & 1) == 0)
      {
        goto LABEL_21;
      }
    }
  }

  else if (v9)
  {
    goto LABEL_21;
  }

  v13 = v4[6];
  v14 = (a1 + v13);
  v15 = *(a1 + v13 + 8);
  v16 = (a2 + v13);
  v17 = v16[1];
  if (!v15)
  {
    if (!v17)
    {
      goto LABEL_19;
    }

LABEL_21:
    v21 = 0;
    return v21 & 1;
  }

  if (!v17)
  {
    goto LABEL_21;
  }

  if (*v14 != *v16 || v15 != v17)
  {
    v19 = v4;
    v20 = sub_228393460();
    v4 = v19;
    if ((v20 & 1) == 0)
    {
      goto LABEL_21;
    }
  }

LABEL_19:
  if (*(a1 + v4[7]) != *(a2 + v4[7]))
  {
    goto LABEL_21;
  }

  v21 = *(a1 + v4[8]) ^ *(a2 + v4[8]) ^ 1;
  return v21 & 1;
}

void sub_22838D98C(uint64_t a1)
{
  sub_22838F4A0();
  if (v1 <= 0x3F)
  {
    sub_22826D838(319, &qword_27D825070, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_22826D838(319, &unk_27D8262B8, MEMORY[0x277D83B88], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        type metadata accessor for ContentVerticalAlignment(319);
        if (v4 <= 0x3F)
        {
          sub_2281C35D8();
          if (v5 <= 0x3F)
          {
            sub_22838DBBC(319, &unk_27D826FC0, sub_2281C35D8);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_22838DAFC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_22838DBBC(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_22838DB58(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FieldItem(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_22838DBBC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_228392F00();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_22838DC10()
{
  *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI9FieldCell____lazy_storage___textField) = 0;
  *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI9FieldCell____lazy_storage___numberFormatter) = 0;
  v1 = (v0 + OBJC_IVAR____TtC19HealthMedicationsUI9FieldCell_baseIdentifier);
  v4 = sub_228392000();
  v5 = v2;

  MEMORY[0x22AAB5C80](0xD000000000000016, 0x80000002283B65B0);

  *v1 = v4;
  v1[1] = v5;
  v3 = v0 + OBJC_IVAR____TtC19HealthMedicationsUI9FieldCell_item;
  *v3 = 0u;
  *(v3 + 16) = 0u;
  *(v3 + 32) = 0;
  sub_228393300();
  __break(1u);
}

uint64_t sub_22838DD0C(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id MedicationListAllDataProvider.__allocating_init(displayType:profile:medication:predicate:)(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = objc_allocWithZone(v4);
  v10 = OBJC_IVAR____TtC19HealthMedicationsUI29MedicationListAllDataProvider_predicate;
  *&v9[OBJC_IVAR____TtC19HealthMedicationsUI29MedicationListAllDataProvider_predicate] = 0;
  *&v9[OBJC_IVAR____TtC19HealthMedicationsUI29MedicationListAllDataProvider_medication] = a3;
  *&v9[v10] = a4;
  v13.receiver = v9;
  v13.super_class = v4;
  v11 = objc_msgSendSuper2(&v13, sel_initWithDisplayType_profile_, a1, a2);

  return v11;
}

id MedicationListAllDataProvider.init(displayType:profile:medication:predicate:)(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = OBJC_IVAR____TtC19HealthMedicationsUI29MedicationListAllDataProvider_predicate;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI29MedicationListAllDataProvider_predicate] = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI29MedicationListAllDataProvider_medication] = a3;
  *&v4[v7] = a4;
  v10.receiver = v4;
  v10.super_class = type metadata accessor for MedicationListAllDataProvider();
  v8 = objc_msgSendSuper2(&v10, sel_initWithDisplayType_profile_, a1, a2);

  return v8;
}

id sub_22838DF40()
{
  v1 = v0;
  v12 = MEMORY[0x277D84F90];
  v2 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI29MedicationListAllDataProvider_medication);
  if (v2)
  {
    v3 = v2;
    v4 = [v3 semanticIdentifier];
    v5 = [v4 stringValue];

    if (!v5)
    {
      sub_228392000();
      v5 = sub_228391FC0();
    }

    v6 = [objc_opt_self() predicateForMedicationDoseEventWithMedicationIdentifier_];

    MEMORY[0x22AAB5D20]();
    if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_2283921E0();
    }

    sub_228392230();
  }

  v7 = *(v1 + OBJC_IVAR____TtC19HealthMedicationsUI29MedicationListAllDataProvider_predicate);
  if (v7)
  {
    v8 = v7;
    MEMORY[0x22AAB5D20]();
    if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_2283921E0();
    }

    sub_228392230();
  }

  sub_22817A958(0, &qword_280DDBB08, 0x277CCAC30);
  v9 = sub_228392190();

  v10 = [objc_opt_self() andPredicateWithSubpredicates_];

  return v10;
}

uint64_t sub_22838E190(uint64_t a1)
{
  swift_getObjectType();
  sub_2281BC4A4(a1, &v6);
  sub_22817A958(0, &qword_27D828808, 0x277CCD650);
  if (swift_dynamicCast())
  {
    v2 = sub_2281A23C0();

    return v2;
  }

  else
  {
    v6 = 0;
    v7 = 0xE000000000000000;
    sub_2283931D0();

    v6 = 0xD000000000000023;
    v7 = 0x80000002283B6640;
    v4 = sub_228393600();
    MEMORY[0x22AAB5C80](v4);

    MEMORY[0x22AAB5C80](0x726F662874786574, 0xEA0000000000293ALL);
    result = sub_228393300();
    __break(1u);
  }

  return result;
}

id sub_22838E464()
{
  swift_getObjectType();
  v1 = sub_22838F740();
  v2 = [v0 objectAtIndex:v1 forSection:sub_22838F750()];
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (v3)
  {
    v4 = v3;
    v5 = [v0 profileName];
    if (v5)
    {
      v6 = v5;
      sub_228392000();

      v7 = v0;
      swift_unknownObjectRetain();
      v8 = sub_228391FC0();
    }

    else
    {
      v9 = v0;
      swift_unknownObjectRetain();
      v8 = 0;
    }

    v10 = [objc_allocWithZone(MEMORY[0x277D12818]) initWithSample:v4 usingInsetStyling:1 profileName:v8 delegate:v0];
    swift_unknownObjectRelease_n();

    return v10;
  }

  else
  {
    swift_unknownObjectRelease();
    sub_2283931D0();

    v12 = sub_228393600();
    MEMORY[0x22AAB5C80](v12);

    MEMORY[0x22AAB5C80](0xD00000000000001ALL, 0x80000002283B6670);
    result = sub_228393300();
    __break(1u);
  }

  return result;
}

id MedicationListAllDataProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MedicationListAllDataProvider.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MedicationListAllDataProvider();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for NicknameNotesStepViewController(uint64_t a1)
{
  result = qword_27D828810;
  if (!qword_27D828810)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_22838EAC0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NicknameNotesStepViewController(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_22838EB00(uint64_t a1)
{
  v2 = v1;
  v4 = sub_22838F440();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v20 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v20 - v12;
  v14 = [v2 scheduledDateTime];
  sub_22838F3E0();

  if (a1 < 0 && __OFSUB__(0, a1))
  {
    __break(1u);
  }

  else
  {
    sub_22838F370();
    v15 = *(v5 + 8);
    v15(v11, v4);
    (*(v5 + 16))(v8, v13, v4);
    v16 = [v2 notificationSent];
    v17 = [v2 doses];
    if (!v17)
    {
      sub_22825A9CC();
      sub_2283921A0();
      v17 = sub_228392190();
    }

    v18 = objc_allocWithZone(MEMORY[0x277D11588]);
    v19 = sub_22838F380();
    [v18 initWithScheduledDateTime:v19 notificationSent:v16 doses:v17];

    v15(v8, v4);
    v15(v13, v4);
  }
}

unint64_t sub_22838EDB0()
{
  result = qword_27D828820;
  if (!qword_27D828820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D828820);
  }

  return result;
}

CGRect CGRectInset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x2821115C8](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

CGRect CGRectIntersection(CGRect r1, CGRect r2)
{
  MEMORY[0x2821115D8](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectOffset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x282111608](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}