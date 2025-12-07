uint64_t sub_226C85810()
{
  sub_226AC47B0(*(v0 + 80), &qword_27D7A8848, &unk_226D79EE8);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_226C858BC()
{
  sub_226AC47B0(*(v0 + 80), &qword_27D7A8848, &unk_226D79EE8);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_226C85970(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v4 = sub_226D6BEDC();
  v2[4] = v4;
  v2[5] = *(v4 - 8);
  v2[6] = swift_task_alloc();
  v5 = swift_task_alloc();
  v2[7] = v5;
  v2[8] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8840, &unk_226D79EC0);
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v6 = swift_task_alloc();
  v2[11] = v6;
  *v6 = v2;
  v6[1] = sub_226C85ACC;

  return sub_226CF67F0(v5, a1);
}

uint64_t sub_226C85ACC()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_226C85D6C;
  }

  else
  {
    v2 = sub_226C85BE0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_226C85BE0()
{
  (*(v0[5] + 32))(v0[10], v0[7], v0[4]);
  swift_storeEnumTagMultiPayload();
  sub_226AC40E8(v0[10], v0[9], &qword_27D7A8840, &unk_226D79EC0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v2 = v0[9];
  if (EnumCaseMultiPayload == 1)
  {
    v3 = *v2;
    v0[15] = *v2;
    v4 = swift_task_alloc();
    v0[16] = v4;
    *v4 = v0;
    v4[1] = sub_226C86174;
    v5 = v0[2];

    return sub_226CF7DB0(v3, v5);
  }

  else
  {
    (*(v0[5] + 32))(v0[6], v2, v0[4]);
    v7 = swift_task_alloc();
    v0[13] = v7;
    *v7 = v0;
    v7[1] = sub_226C85EE0;
    v8 = v0[6];
    v9 = v0[2];

    return sub_226CF7564(v8, v9);
  }
}

uint64_t sub_226C85D6C()
{
  *v0[10] = v0[12];
  swift_storeEnumTagMultiPayload();
  sub_226AC40E8(v0[10], v0[9], &qword_27D7A8840, &unk_226D79EC0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v2 = v0[9];
  if (EnumCaseMultiPayload == 1)
  {
    v3 = *v2;
    v0[15] = *v2;
    v4 = swift_task_alloc();
    v0[16] = v4;
    *v4 = v0;
    v4[1] = sub_226C86174;
    v5 = v0[2];

    return sub_226CF7DB0(v3, v5);
  }

  else
  {
    (*(v0[5] + 32))(v0[6], v2, v0[4]);
    v7 = swift_task_alloc();
    v0[13] = v7;
    *v7 = v0;
    v7[1] = sub_226C85EE0;
    v8 = v0[6];
    v9 = v0[2];

    return sub_226CF7564(v8, v9);
  }
}

uint64_t sub_226C85EE0()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_226C860B0;
  }

  else
  {
    v2 = sub_226C85FF4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_226C85FF4()
{
  (*(v0[5] + 8))(v0[6], v0[4]);
  sub_226AC47B0(v0[10], &qword_27D7A8840, &unk_226D79EC0);

  v1 = v0[1];

  return v1();
}

uint64_t sub_226C860B0()
{
  (*(v0[5] + 8))(v0[6], v0[4]);
  sub_226AC47B0(v0[10], &qword_27D7A8840, &unk_226D79EC0);

  v1 = v0[1];

  return v1();
}

uint64_t sub_226C86174()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = sub_226C86334;
  }

  else
  {
    v2 = sub_226C86288;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_226C86288()
{
  sub_226AC47B0(*(v0 + 80), &qword_27D7A8840, &unk_226D79EC0);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_226C86334()
{
  sub_226AC47B0(*(v0 + 80), &qword_27D7A8840, &unk_226D79EC0);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_226C863EC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_226AD827C;

  return sub_226C84300(a1);
}

uint64_t sub_226C86574(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_226AE5A84;

  return sub_226C849D8(a1);
}

uint64_t sub_226C86650(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_226AE5A84;

  return sub_226C84EF8(a1);
}

uint64_t sub_226C8672C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_226AE5A84;

  return sub_226C85970(a1);
}

uint64_t FinancialDataDeletedAccountsRemover.removeDeletedAccounts(accountsToBeRemoved:in:)(uint64_t a1, uint64_t a2)
{
  v5 = v2[5];
  v6 = v2[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v5);
  return (*(v6 + 8))(a1, a2, v5, v6);
}

uint64_t sub_226C86874()
{
  if (qword_2810610C0 != -1)
  {
    swift_once();
  }

  v0 = qword_2810610C8;
  v4 = type metadata accessor for FinancialDataAppPermissions();
  v5 = &protocol witness table for FinancialDataAppPermissions;
  *&v3 = v0;
  type metadata accessor for FinancialDataDeletedAccountsRemover();
  v1 = swift_allocObject();
  sub_226AC484C(&v3, v1 + 16);
  qword_281060138 = v1;
}

uint64_t static FinancialDataDeletedAccountsRemover.shared.getter()
{
  if (qword_281060130 != -1)
  {
    swift_once();
  }
}

uint64_t FinancialDataDeletedAccountsRemover.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_226C869DC(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 40);
  v6 = *(*v2 + 48);
  __swift_project_boxed_opaque_existential_1((*v2 + 16), v5);
  return (*(v6 + 8))(a1, a2, v5, v6);
}

uint64_t BankConnectServiceImplementation.termsAndConditions(withInstitutionID:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_226C86B4C, 0, 0);
}

uint64_t sub_226C86B4C()
{
  v1 = v0[4];
  v2 = v0[3];
  __swift_project_boxed_opaque_existential_1((v0[5] + 16), *(v0[5] + 40));
  sub_226D6BAAC();
  v3 = sub_226D676AC();

  v4 = swift_task_alloc();
  v4[2] = v3;
  v4[3] = v2;
  v4[4] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A73F8, &qword_226D74E20);
  sub_226D6EB8C();

  v5 = v0[1];

  return v5();
}

uint64_t BankConnectServiceImplementation.termsAndConditionsURL(forTermsAndConditionsID:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_226D6869C();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v6 = sub_226D688FC();
  v4[9] = v6;
  v4[10] = *(v6 - 8);
  v4[11] = swift_task_alloc();
  v7 = sub_226D6C92C();
  v4[12] = v7;
  v4[13] = *(v7 - 8);
  v4[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226C86DE8, 0, 0);
}

uint64_t sub_226C86DE8()
{
  v1 = v0[14];
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A62D8, &unk_226D74950);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_226D70840;
  *(v5 + 32) = v4;
  *(v5 + 40) = v2;

  sub_226D6D54C();
  sub_226D6C91C();
  v6 = __swift_project_boxed_opaque_existential_1((v3 + 16), *(v3 + 40));
  __swift_project_boxed_opaque_existential_1(v6 + 1, v6[4]);
  v7 = sub_226D6C2AC();
  v0[15] = v7;
  v8 = swift_task_alloc();
  v0[16] = v8;
  *(v8 + 16) = v7;
  *(v8 + 24) = v1;
  v9 = swift_task_alloc();
  v0[17] = v9;
  *v9 = v0;
  v9[1] = sub_226C86F50;
  v10 = v0[11];
  v11 = v0[9];

  return MEMORY[0x282119B28](v10, &unk_226D79FE0, v8, v11);
}

uint64_t sub_226C86F50()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_226C87234;
  }

  else
  {

    v2 = sub_226C8706C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_226C8706C()
{
  v1 = sub_226D688EC();
  v3 = v0[10];
  v2 = v0[11];
  v4 = v0[9];
  if (*(v1 + 16))
  {
    v6 = v0[7];
    v5 = v0[8];
    v7 = v0[6];
    (*(v6 + 16))(v5, v1 + ((*(v6 + 80) + 32) & ~*(v6 + 80)), v7);

    sub_226D6868C();

    (*(v3 + 8))(v2, v4);
    (*(v6 + 8))(v5, v7);
  }

  else
  {
    v8 = v0[2];

    (*(v3 + 8))(v2, v4);
    v9 = sub_226D6D1AC();
    (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  }

  (*(v0[13] + 8))(v0[14], v0[12]);

  v10 = v0[1];

  return v10();
}

uint64_t sub_226C87234()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t BankConnectServiceImplementation.updateTermsAndConditions(withTermsAndConditionsID:reviewedAt:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_226C87310, 0, 0);
}

uint64_t sub_226C87310()
{
  v2 = v0[4];
  v1 = v0[5];
  v4 = v0[2];
  v3 = v0[3];
  __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
  sub_226D6BAAC();
  v5 = sub_226D676AC();

  v6 = swift_task_alloc();
  v6[2] = v5;
  v6[3] = v4;
  v6[4] = v3;
  v6[5] = v1;
  v6[6] = v2;
  sub_226D6EB7C();

  v7 = v0[1];

  return v7();
}

void *sub_226C87424@<X0>(void *a1@<X0>, uint64_t a4@<X8>)
{
  v17[1] = *MEMORY[0x277D85DE8];
  v7 = [objc_opt_self() currentQueryGenerationToken];
  v17[0] = 0;
  v8 = [a1 setQueryGenerationFromToken:v7 error:v17];

  v9 = v17[0];
  if (v8)
  {
    sub_226D6842C();
    v10 = v9;
    result = sub_226D683EC();
    if (!v4)
    {
      v12 = result;
      v13 = [result termsAndConditionsObject];

      if (v13)
      {
        sub_226D6B42C();
        v14 = sub_226D6B43C();
        return (*(*(v14 - 8) + 56))(a4, 0, 1, v14);
      }

      else
      {
        v16 = sub_226D6B43C();
        return (*(*(v16 - 8) + 56))(a4, 1, 1, v16);
      }
    }
  }

  else
  {
    v15 = v17[0];
    sub_226D6D04C();

    return swift_willThrow();
  }

  return result;
}

uint64_t sub_226C875EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_226AD827C;

  return MEMORY[0x282119AF8](a1, a3);
}

void sub_226C876A0(void *a1, uint64_t a2, unint64_t a3)
{
  v22[1] = *MEMORY[0x277D85DE8];
  v7 = [objc_opt_self() currentQueryGenerationToken];
  v22[0] = 0;
  v8 = [a1 setQueryGenerationFromToken:v7 error:v22];

  v9 = v22[0];
  if (v8)
  {
    sub_226D6C37C();
    v10 = v9;
    v11 = sub_226D6C36C();
    if (!v3)
    {
      v12 = v11;
      if (v11)
      {
        v13 = sub_226D6D3EC();
        [v12 setReviewedAt_];

        v22[0] = 0;
        if ([a1 save_])
        {
          v14 = v22[0];
        }

        else
        {
          v21 = v22[0];
          sub_226D6D04C();

          swift_willThrow();
        }
      }

      else
      {
        if (qword_27D7A5F60 != -1)
        {
          swift_once();
        }

        v16 = sub_226D6E07C();
        __swift_project_value_buffer(v16, qword_27D7A7D10);

        v17 = sub_226D6E05C();
        v18 = sub_226D6E9CC();

        if (os_log_type_enabled(v17, v18))
        {
          v19 = swift_slowAlloc();
          v20 = swift_slowAlloc();
          v22[0] = v20;
          *v19 = 136315138;
          *(v19 + 4) = sub_226AC4530(a2, a3, v22);
          _os_log_impl(&dword_226AB4000, v17, v18, "Failed to update terms and conditions. T&Cs with termsAndConditionsID %s don't exist.", v19, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v20);
          MEMORY[0x22AA8BEE0](v20, -1, -1);
          MEMORY[0x22AA8BEE0](v19, -1, -1);
        }
      }
    }
  }

  else
  {
    v15 = v22[0];
    sub_226D6D04C();

    swift_willThrow();
  }
}

uint64_t sub_226C87950(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_226AD827C;

  return sub_226C875EC(a1, v5, v4);
}

id DaemonCoreDataStoreServerHandlingPolicy.__allocating_init<A>(bundleInfoProvider:policyLevelProvider:authStatusProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = objc_allocWithZone(v5);
  v12 = sub_226C8A468(a1, a2, a3, a4, a5);
  (*(*(a4 - 8) + 8))(a3, a4);
  return v12;
}

uint64_t sub_226C87A98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_226D68CEC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_226D67D8C())
  {
    (*(v7 + 8))(a2, v6);
    v10 = sub_226D67E0C();
    (*(*(v10 - 8) + 8))(a1, v10);
    v11 = MEMORY[0x277CC7BB8];
  }

  else if (sub_226D67DBC())
  {
    (*(v7 + 8))(a2, v6);
    v12 = sub_226D67E0C();
    (*(*(v12 - 8) + 8))(a1, v12);
    v11 = MEMORY[0x277CC7BA8];
  }

  else
  {
    v13 = sub_226D67DCC();
    v14 = sub_226D67E0C();
    (*(*(v14 - 8) + 8))(a1, v14);
    if (v13)
    {
      (*(v7 + 32))(v9, a2, v6);
      v15 = (*(v7 + 88))(v9, v6);
      v16 = *MEMORY[0x277CC75F8];
      v17 = sub_226D6A34C();
      v18 = *(*(v17 - 8) + 104);
      if (v15 == v16)
      {
        return v18(a3, *MEMORY[0x277CC7BA0], v17);
      }

      v18(a3, *MEMORY[0x277CC7BB0], v17);
      return (*(v7 + 8))(v9, v6);
    }

    (*(v7 + 8))(a2, v6);
    v11 = MEMORY[0x277CC7BC0];
  }

  v20 = *v11;
  v21 = sub_226D6A34C();
  v22 = *(*(v21 - 8) + 104);

  return v22(a3, v20, v21);
}

id sub_226C87DD0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v15 - v3;
  v5 = sub_226D6D4AC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226AC40E8(a1, v4, &qword_27D7A8BE0, &unk_226D718F0);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_226AC47B0(v4, &qword_27D7A8BE0, &unk_226D718F0);
    return 0;
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    sub_226AE59B4(0, &qword_28105F4B8, 0x277CCAC30);
    v10 = sub_226D6E91C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A88A0, &qword_226D7A048);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_226D70840;
    *(inited + 32) = 1163149636;
    *(inited + 40) = 0xE400000000000000;
    *(inited + 48) = sub_226D6D3EC();
    v12 = sub_226B242A0(inited);
    swift_setDeallocating();
    sub_226AC47B0(inited + 32, &qword_27D7A88A8, &unk_226D7A050);
    sub_226C880A0(v12);

    v13 = sub_226D6E2AC();

    v14 = [v10 predicateWithSubstitutionVariables_];

    (*(v6 + 8))(v8, v5);
    return v14;
  }
}

void sub_226C880A0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6AD0, &qword_226D725F0);
    v2 = sub_226D6F10C();
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
    v11 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v7;
    if (v5)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v13 = v12 | (v11 << 6);
        v14 = (*(a1 + 48) + 16 * v13);
        v16 = *v14;
        v15 = v14[1];
        v17 = *(*(a1 + 56) + 8 * v13);
        sub_226AE59B4(0, &qword_28105F410, 0x277CBEAA8);

        v18 = v17;
        swift_dynamicCast();
        sub_226B24A98(&v25, v27);
        sub_226B24A98(v27, v28);
        sub_226B24A98(v28, &v26);
        v19 = sub_226C2FDD4(v16, v15);
        if (v20)
        {
          v8 = (v2[6] + 16 * v19);
          *v8 = v16;
          v8[1] = v15;
          v9 = v19;

          v10 = (v2[7] + 32 * v9);
          __swift_destroy_boxed_opaque_existential_0Tm(v10);
          sub_226B24A98(&v26, v10);
          v7 = v11;
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

          *(v2 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v19;
          v21 = (v2[6] + 16 * v19);
          *v21 = v16;
          v21[1] = v15;
          sub_226B24A98(&v26, (v2[7] + 32 * v19));
          v22 = v2[2];
          v23 = __OFADD__(v22, 1);
          v24 = v22 + 1;
          if (v23)
          {
            goto LABEL_21;
          }

          v2[2] = v24;
          v7 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v11 = v7;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
}

uint64_t sub_226C8830C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_226AE59B4(0, &qword_28105F4B8, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B80, &qword_226D73120);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_226D70840;
  v4 = sub_226D6D4DC();
  *(v3 + 56) = sub_226AE59B4(0, &qword_27D7A8890, 0x277CCAD78);
  *(v3 + 64) = sub_226C8BE70(&qword_27D7A8898, &qword_27D7A8890, 0x277CCAD78);
  *(v3 + 32) = v4;
  return sub_226D6E91C();
}

uint64_t sub_226C883F4(uint64_t a1)
{
  v2 = sub_226D6D4AC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v14 - v7;
  sub_226AC40E8(a1, &v14 - v7, &qword_27D7A8BE0, &unk_226D718F0);
  v9 = (*(v3 + 48))(v8, 1, v2);
  result = 0;
  if (v9 != 1)
  {
    (*(v3 + 32))(v5, v8, v2);
    sub_226AE59B4(0, &qword_28105F4B8, 0x277CCAC30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B80, &qword_226D73120);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_226D70840;
    v12 = sub_226D6D3EC();
    *(v11 + 56) = sub_226AE59B4(0, &qword_28105F410, 0x277CBEAA8);
    *(v11 + 64) = sub_226C8BE70(&qword_28105F400, &qword_28105F410, 0x277CBEAA8);
    *(v11 + 32) = v12;
    v13 = sub_226D6E91C();
    (*(v3 + 8))(v5, v2);
    return v13;
  }

  return result;
}

uint64_t sub_226C88644()
{
  v0 = sub_226D6825C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226AE59B4(0, &qword_28105F4B8, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B80, &qword_226D73120);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_226D70840;
  (*(v1 + 104))(v3, *MEMORY[0x277CC7218], v0);
  v5 = sub_226D6824C();
  (*(v1 + 8))(v3, v0);
  v6 = MEMORY[0x277D849A0];
  *(v4 + 56) = MEMORY[0x277D84958];
  *(v4 + 64) = v6;
  *(v4 + 32) = v5;
  return sub_226D6E91C();
}

uint64_t sub_226C887C4()
{
  sub_226AE59B4(0, &qword_28105F4B8, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B80, &qword_226D73120);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_226D70840;
  v1 = sub_226D6D4DC();
  *(v0 + 56) = sub_226AE59B4(0, &qword_27D7A8890, 0x277CCAD78);
  *(v0 + 64) = sub_226C8BE70(&qword_27D7A8898, &qword_27D7A8890, 0x277CCAD78);
  *(v0 + 32) = v1;
  return sub_226D6E91C();
}

uint64_t sub_226C888AC()
{
  sub_226AE59B4(0, &qword_28105F4B8, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B80, &qword_226D73120);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_226D70840;
  v1 = sub_226D67F0C();
  v3 = v2;
  *(v0 + 56) = MEMORY[0x277D837D0];
  *(v0 + 64) = sub_226B16404();
  *(v0 + 32) = v1;
  *(v0 + 40) = v3;
  return sub_226D6E91C();
}

uint64_t sub_226C88970@<X0>(uint64_t a1@<X8>)
{
  if ([v1 userInfo])
  {
    sub_226D6ED0C();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  v11[0] = v9;
  v11[1] = v10;
  if (!*(&v10 + 1))
  {
    sub_226AC47B0(v11, &unk_27D7A8BB0, &unk_226D74340);
    goto LABEL_12;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6260, &qword_226D70C80);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_12;
  }

  if (!*(v8 + 16) || (v3 = sub_226C2FDD4(0x4449656C646E7562, 0xE800000000000000), (v4 & 1) == 0))
  {

    goto LABEL_12;
  }

  sub_226AC4708(*(v8 + 56) + 32 * v3, v11);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_12:
    v5 = 1;
    goto LABEL_13;
  }

  sub_226D67EFC();
  v5 = 0;
LABEL_13:
  v6 = sub_226D67F1C();
  return (*(*(v6 - 8) + 56))(a1, v5, 1, v6);
}

uint64_t sub_226C88B00(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7180, &qword_226D74600);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v15[-v5];
  v7 = sub_226D67F1C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v15[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_226C88D90(a1);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_226AC47B0(v6, &qword_27D7A7180, &qword_226D74600);
    sub_226C8BE1C();
    swift_allocError();
    return swift_willThrow();
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6660, &qword_226D74320);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_226D70840;
    *(inited + 32) = 0x4449656C646E7562;
    *(inited + 40) = 0xE800000000000000;
    *(inited + 48) = sub_226D67F0C();
    *(inited + 56) = v13;
    sub_226B224FC(inited);
    swift_setDeallocating();
    sub_226AC47B0(inited + 32, &qword_27D7A6668, &qword_226D71880);
    v14 = sub_226D6E2AC();

    [v2 setUserInfo_];

    return (*(v8 + 8))(v10, v7);
  }
}

uint64_t sub_226C88D90(uint64_t a1)
{
  v3 = sub_226D67E0C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226AC40E8(a1, &v8, &qword_27D7A7028, &qword_226D73F30);
  if (v9)
  {
    sub_226AC484C(&v8, v10);
    __swift_project_boxed_opaque_existential_1(v10, v10[3]);
    sub_226D68CFC();
    return __swift_destroy_boxed_opaque_existential_0Tm(v10);
  }

  else
  {
    sub_226AC47B0(&v8, &qword_27D7A7028, &qword_226D73F30);
    [v1 auditToken];
    sub_226D69A6C();
    sub_226D67DAC();
    return (*(v4 + 8))(v6, v3);
  }
}

id DaemonCoreDataStoreServerHandlingPolicy.init<A>(bundleInfoProvider:policyLevelProvider:authStatusProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_226C8A468(a1, a2, a3, a4, a5);
  (*(*(a4 - 8) + 8))(a3, a4);
  return v7;
}

uint64_t sub_226C88F7C()
{
  v0 = sub_226C8A5C8(&unk_283A69FA8);
  result = swift_arrayDestroy();
  qword_27D7B61F8 = v0;
  return result;
}

uint64_t sub_226C88FC8(void *a1)
{
  v41 = sub_226D68CEC();
  v45 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v44 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v43 = &v35 - v5;
  v6 = sub_226D67E0C();
  v42 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v35 - v10;
  v12 = sub_226D6A34C();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v1 + OBJC_IVAR____TtC13FinanceDaemon39DaemonCoreDataStoreServerHandlingPolicy_entitlementChecker);
  v46 = a1;
  sub_226C88B00(v1 + OBJC_IVAR____TtC13FinanceDaemon39DaemonCoreDataStoreServerHandlingPolicy_bundleInfoProvider, v16);
  v36 = v8;
  v37 = v11;
  v38 = v12;
  v39 = v15;
  v40 = v13;
  v17 = OBJC_IVAR____TtC13FinanceDaemon39DaemonCoreDataStoreServerHandlingPolicy_authStatusProvider;
  sub_226AC40E8(v1 + OBJC_IVAR____TtC13FinanceDaemon39DaemonCoreDataStoreServerHandlingPolicy_policyLevelProvider, &v47, &qword_27D7A7030, &qword_226D73F38);
  if (v49)
  {
    sub_226AC484C(&v47, v50);
    __swift_project_boxed_opaque_existential_1(v50, v51);
    v18 = v39;
    sub_226D6923C();
  }

  else
  {
    sub_226AC47B0(&v47, &qword_27D7A7030, &qword_226D73F38);
    sub_226AE532C(v1 + v17, v50);
    [v46 auditToken];
    v19 = v47;
    v21 = v48;
    v20 = v49;
    v22 = v37;
    sub_226D69A6C();
    v24 = v51;
    v23 = v52;
    __swift_project_boxed_opaque_existential_1(v50, v51);
    v25 = v43;
    (*(v23 + 8))(v19, *(&v19 + 1), v21, v20, v22, v24, v23);
    v26 = v42;
    v27 = v36;
    (*(v42 + 16))(v36, v22, v6);
    v29 = v44;
    v28 = v45;
    v30 = v41;
    (*(v45 + 16))(v44, v25, v41);
    v18 = v39;
    sub_226C87A98(v27, v29, v39);
    (*(v28 + 8))(v25, v30);
    (*(v26 + 8))(v22, v6);
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v50);
  v31 = v38;
  v32 = v40;
  v33 = sub_226C8A8F0(v18);
  (*(v32 + 8))(v18, v31);
  return v33 & 1;
}

void sub_226C89634(uint64_t a1, void *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7180, &qword_226D74600);
  MEMORY[0x28223BE20](v5 - 8);
  v77 = &v66 - v6;
  v70 = sub_226D68CEC();
  v76 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v73 = &v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v72 = &v66 - v9;
  v10 = sub_226D67E0C();
  v74 = *(v10 - 8);
  v75 = v10;
  MEMORY[0x28223BE20](v10);
  v71 = &v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v66 - v13;
  v78 = sub_226D6A34C();
  v15 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v17 = &v66 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v66 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v66 - v22;
  if (a1)
  {
    v69 = a1;
    if (a2)
    {
      v24 = OBJC_IVAR____TtC13FinanceDaemon39DaemonCoreDataStoreServerHandlingPolicy_authStatusProvider;
      sub_226AC40E8(v2 + OBJC_IVAR____TtC13FinanceDaemon39DaemonCoreDataStoreServerHandlingPolicy_policyLevelProvider, &v79, &qword_27D7A7030, &qword_226D73F38);
      if (v81)
      {
        sub_226AC484C(&v79, v82);
        __swift_project_boxed_opaque_existential_1(v82, v83);
        sub_226D6923C();
      }

      else
      {
        sub_226AC47B0(&v79, &qword_27D7A7030, &qword_226D73F38);
        sub_226AE532C(v2 + v24, v82);
        [a2 auditToken];
        v67 = v15;
        v27 = *(&v79 + 1);
        v26 = v79;
        v29 = v80;
        v28 = v81;
        v68 = v14;
        sub_226D69A6C();
        v30 = v83;
        v31 = v84;
        __swift_project_boxed_opaque_existential_1(v82, v83);
        v32 = v72;
        v33 = v27;
        v15 = v67;
        v34 = v28;
        v35 = v68;
        (*(v31 + 8))(v26, v33, v29, v34, v68, v30, v31);
        v37 = v74;
        v36 = v75;
        v38 = v71;
        (*(v74 + 16))(v71, v35, v75);
        v39 = v76;
        v40 = v73;
        v41 = v70;
        (*(v76 + 16))(v73, v32, v70);
        sub_226C87A98(v38, v40, v20);
        (*(v39 + 8))(v32, v41);
        (*(v37 + 8))(v68, v36);
      }

      __swift_destroy_boxed_opaque_existential_0Tm(v82);
      v42 = v69;
      v43 = v77;
      sub_226C88970(v77);
      v44 = [a2 managedObjectContext];
      if (v44)
      {
        v45 = v44;
        sub_226C8B12C(v20, v42, v43, v44);

        sub_226AC47B0(v43, &qword_27D7A7180, &qword_226D74600);
        (*(v15 + 8))(v20, v78);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_19;
  }

  if (!a2)
  {
LABEL_19:
    __break(1u);
    return;
  }

  v25 = OBJC_IVAR____TtC13FinanceDaemon39DaemonCoreDataStoreServerHandlingPolicy_authStatusProvider;
  sub_226AC40E8(v2 + OBJC_IVAR____TtC13FinanceDaemon39DaemonCoreDataStoreServerHandlingPolicy_policyLevelProvider, &v79, &qword_27D7A7030, &qword_226D73F38);
  if (v81)
  {
    sub_226AC484C(&v79, v82);
    __swift_project_boxed_opaque_existential_1(v82, v83);
    sub_226D6922C();
  }

  else
  {
    sub_226AC47B0(&v79, &qword_27D7A7030, &qword_226D73F38);
    sub_226AE532C(v2 + v25, v82);
    [a2 auditToken];
    v46 = v79;
    v47 = v80;
    v77 = v81;
    v68 = v14;
    sub_226D69A6C();
    v48 = v83;
    v49 = v84;
    __swift_project_boxed_opaque_existential_1(v82, v83);
    v50 = v72;
    v51 = v47;
    v52 = v68;
    (*(v49 + 8))(v46, *(&v46 + 1), v51, v77, v68, v48, v49);
    v53 = v74;
    v54 = v75;
    v55 = v71;
    (*(v74 + 16))(v71, v52, v75);
    v56 = v76;
    v57 = v73;
    v58 = v70;
    (*(v76 + 16))(v73, v50, v70);
    sub_226C87A98(v55, v57, v23);
    (*(v56 + 8))(v50, v58);
    (*(v53 + 8))(v68, v54);
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v82);
  v59 = *(v15 + 104);
  v60 = v78;
  v59(v17, *MEMORY[0x277CC7BB8], v78);
  v61 = sub_226D6A33C();
  v62 = *(v15 + 8);
  v62(v17, v60);
  if (v61 & 1) != 0 || (v63 = v78, v59(v17, *MEMORY[0x277CC7BA8], v78), v64 = sub_226D6A33C(), v62(v17, v63), (v64))
  {
    v65 = [objc_opt_self() predicateWithValue_];
  }

  else
  {
    v65 = [objc_opt_self() predicateWithValue_];
  }

  v65;
  v62(v23, v78);
}

void sub_226C89E80(void *a1)
{
  v3 = sub_226D68CEC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v42 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v41 = &v34 - v7;
  v43 = sub_226D67E0C();
  v40 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v39 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v44 = &v34 - v10;
  v11 = sub_226D6A34C();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v34 - v16;
  if (a1)
  {
    v18 = OBJC_IVAR____TtC13FinanceDaemon39DaemonCoreDataStoreServerHandlingPolicy_authStatusProvider;
    sub_226AC40E8(v1 + OBJC_IVAR____TtC13FinanceDaemon39DaemonCoreDataStoreServerHandlingPolicy_policyLevelProvider, &v45, &qword_27D7A7030, &qword_226D73F38);
    if (v47)
    {
      sub_226AC484C(&v45, v48);
      __swift_project_boxed_opaque_existential_1(v48, v49);
      sub_226D6923C();
    }

    else
    {
      sub_226AC47B0(&v45, &qword_27D7A7030, &qword_226D73F38);
      sub_226AE532C(v1 + v18, v48);
      [a1 auditToken];
      v19 = *(&v45 + 1);
      v35 = v45;
      v37 = v4;
      v38 = v11;
      v20 = v46;
      v21 = v47;
      sub_226D69A6C();
      v36 = v3;
      v22 = v49;
      v23 = v50;
      __swift_project_boxed_opaque_existential_1(v48, v49);
      v24 = v41;
      v25 = v20;
      v11 = v38;
      v26 = v21;
      v27 = v44;
      (*(v23 + 8))(v35, v19, v25, v26, v44, v22, v23);
      v29 = v39;
      v28 = v40;
      (*(v40 + 16))(v39, v27, v43);
      v30 = v36;
      v31 = v37;
      v32 = v42;
      (*(v37 + 16))(v42, v24, v36);
      sub_226C87A98(v29, v32, v17);
      (*(v31 + 8))(v24, v30);
      (*(v28 + 8))(v44, v43);
    }

    __swift_destroy_boxed_opaque_existential_0Tm(v48);
    (*(v12 + 104))(v14, *MEMORY[0x277CC7BB8], v11);
    sub_226D6A33C();
    v33 = *(v12 + 8);
    v33(v14, v11);
    v33(v17, v11);
  }

  else
  {
    __break(1u);
  }
}

id DaemonCoreDataStoreServerHandlingPolicy.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DaemonCoreDataStoreServerHandlingPolicy.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for DaemonCoreDataStoreServerHandlingPolicy();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id sub_226C8A468(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = OBJC_IVAR____TtC13FinanceDaemon39DaemonCoreDataStoreServerHandlingPolicy_entitlementChecker;
  sub_226D69A8C();
  swift_allocObject();
  *&v5[v11] = sub_226D69A7C();
  sub_226AC40E8(a1, &v5[OBJC_IVAR____TtC13FinanceDaemon39DaemonCoreDataStoreServerHandlingPolicy_bundleInfoProvider], &qword_27D7A7028, &qword_226D73F30);
  sub_226AC40E8(a2, &v5[OBJC_IVAR____TtC13FinanceDaemon39DaemonCoreDataStoreServerHandlingPolicy_policyLevelProvider], &qword_27D7A7030, &qword_226D73F38);
  v12 = &v5[OBJC_IVAR____TtC13FinanceDaemon39DaemonCoreDataStoreServerHandlingPolicy_authStatusProvider];
  v12[3] = a4;
  v12[4] = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v12);
  (*(*(a4 - 8) + 16))(boxed_opaque_existential_1, a3, a4);
  v16.receiver = v5;
  v16.super_class = type metadata accessor for DaemonCoreDataStoreServerHandlingPolicy();
  v14 = objc_msgSendSuper2(&v16, sel_init);
  sub_226AC47B0(a2, &qword_27D7A7030, &qword_226D73F38);
  sub_226AC47B0(a1, &qword_27D7A7028, &qword_226D73F30);
  return v14;
}

void *sub_226C8A5C8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = (a1 + 56);
    v41 = MEMORY[0x277D84F98];
    while (1)
    {
      v36 = v1;
      v4 = *(v2 - 2);
      v40 = *(v2 - 3);
      v6 = *(v2 - 1);
      v5 = *v2;
      v8 = v2[1];
      v7 = v2[2];
      v10 = v2[3];
      v9 = v2[4];
      v12 = v2[5];
      v11 = v2[6];

      sub_226ACD178(v6, v5);
      sub_226ACD178(v8, v7);
      sub_226ACD178(v10, v9);
      sub_226ACD178(v12, v11);

      sub_226ACD178(v6, v5);
      sub_226ACD178(v8, v7);
      v37 = v9;
      sub_226ACD178(v10, v9);
      v38 = v12;
      v39 = v11;
      sub_226ACD178(v12, v11);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v15 = sub_226C2FDD4(v40, v4);
      v16 = v41[2];
      v17 = (v14 & 1) == 0;
      v18 = v16 + v17;
      if (__OFADD__(v16, v17))
      {
        break;
      }

      v19 = v14;
      if (v41[3] >= v18)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_226C39B3C();
        }
      }

      else
      {
        sub_226C35390(v18, isUniquelyReferenced_nonNull_native);
        v20 = sub_226C2FDD4(v40, v4);
        if ((v19 & 1) != (v21 & 1))
        {
          goto LABEL_18;
        }

        v15 = v20;
      }

      if (v19)
      {
        v3 = (v41[7] + 80 * v15);
        v28 = v3[3];
        v29 = v3[2];
        v31 = v3[4];
        v30 = v3[5];
        v32 = v3[7];
        v33 = v3[6];
        v35 = v3[8];
        v34 = v3[9];
        *v3 = v40;
        v3[1] = v4;
        v3[2] = v6;
        v3[3] = v5;
        v3[4] = v8;
        v3[5] = v7;
        v3[6] = v10;
        v3[7] = v37;
        v3[8] = v38;
        v3[9] = v39;

        sub_226AC7B44(v29, v28);
        sub_226AC7B44(v31, v30);
        sub_226AC7B44(v33, v32);
        sub_226AC7B44(v35, v34);

        sub_226AC7B44(v6, v5);
        sub_226AC7B44(v8, v7);
        sub_226AC7B44(v10, v37);
        sub_226AC7B44(v38, v39);
      }

      else
      {
        v41[(v15 >> 6) + 8] |= 1 << v15;
        v22 = (v41[6] + 16 * v15);
        *v22 = v40;
        v22[1] = v4;
        v23 = (v41[7] + 80 * v15);
        *v23 = v40;
        v23[1] = v4;
        v23[2] = v6;
        v23[3] = v5;
        v23[4] = v8;
        v23[5] = v7;
        v23[6] = v10;
        v23[7] = v37;
        v23[8] = v38;
        v23[9] = v39;
        sub_226AC7B44(v6, v5);
        sub_226AC7B44(v8, v7);
        sub_226AC7B44(v10, v37);
        sub_226AC7B44(v38, v39);
        v24 = v41[2];
        v25 = __OFADD__(v24, 1);
        v26 = v24 + 1;
        if (v25)
        {
          goto LABEL_17;
        }

        v41[2] = v26;
      }

      v2 += 10;
      v1 = v36 - 1;
      if (v36 == 1)
      {
        return v41;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    result = sub_226D6F25C();
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_226C8A8F0(uint64_t a1)
{
  v1 = sub_226D6A34C();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v2 + 104);
  v6(v5, *MEMORY[0x277CC7BB0], v1, v3);
  v7 = sub_226D6A33C();
  v8 = *(v2 + 8);
  v8(v5, v1);
  if ((v7 & 1) == 0)
  {
    (v6)(v5, *MEMORY[0x277CC7BC0], v1);
    v9 = sub_226D6A33C();
    v8(v5, v1);
    if ((v9 & 1) == 0)
    {
      return 1;
    }
  }

  if (qword_28105F5F8 != -1)
  {
    swift_once();
  }

  v10 = sub_226D6E07C();
  __swift_project_value_buffer(v10, qword_28105F600);
  v11 = sub_226D6E05C();
  v12 = sub_226D6E9CC();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_226AB4000, v11, v12, "Caller did not have entitlements or TCC rights, declining connection", v13, 2u);
    MEMORY[0x22AA8BEE0](v13, -1, -1);
  }

  return 0;
}

uint64_t sub_226C8AB00()
{
  v10 = MEMORY[0x277D84F90];
  sub_226D6A96C();
  v0 = sub_226D6A95C();
  sub_226CEE2B0(v0);
  sub_226D6A9BC();
  v1 = sub_226D6A9AC();
  sub_226CEE2B0(v1);
  sub_226D6B8DC();
  v2 = [swift_getObjCClassFromMetadata() allowedTopLevelClasses];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8880, &qword_226D7A040);
  v3 = sub_226D6E5EC();

  sub_226CEE2B0(v3);
  sub_226D6C4FC();
  v4 = sub_226D6C4EC();
  sub_226CEE2B0(v4);
  sub_226D6B57C();
  v5 = sub_226D6B56C();
  sub_226CEE2B0(v5);
  sub_226D6A2AC();
  v6 = sub_226D6A29C();
  sub_226CEE2B0(v6);
  sub_226CB2F2C(v10);

  v7 = objc_allocWithZone(MEMORY[0x277CBEB98]);
  v8 = sub_226D6E5CC();

  [v7 initWithArray_];

  result = sub_226D6E87C();
  __break(1u);
  return result;
}

void sub_226C8ACA0(void *a1)
{
  v3 = sub_226D68CEC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v48 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v45 = &v39 - v7;
  v8 = sub_226D67E0C();
  v46 = *(v8 - 8);
  v47 = v8;
  MEMORY[0x28223BE20](v8);
  v44 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v39 - v11;
  v13 = sub_226D6A34C();
  v49 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v39 - v17;
  if (a1)
  {
    v19 = OBJC_IVAR____TtC13FinanceDaemon39DaemonCoreDataStoreServerHandlingPolicy_authStatusProvider;
    sub_226AC40E8(v1 + OBJC_IVAR____TtC13FinanceDaemon39DaemonCoreDataStoreServerHandlingPolicy_policyLevelProvider, &v50, &qword_27D7A7030, &qword_226D73F38);
    if (v52)
    {
      sub_226AC484C(&v50, v53);
      __swift_project_boxed_opaque_existential_1(v53, v54);
      sub_226D6923C();
    }

    else
    {
      sub_226AC47B0(&v50, &qword_27D7A7030, &qword_226D73F38);
      sub_226AE532C(v1 + v19, v53);
      [a1 auditToken];
      v41 = v18;
      v42 = v13;
      v21 = *(&v50 + 1);
      v20 = v50;
      v40 = v3;
      v22 = v51;
      v23 = v52;
      v43 = v12;
      sub_226D69A6C();
      v25 = v54;
      v24 = v55;
      __swift_project_boxed_opaque_existential_1(v53, v54);
      v26 = v45;
      v27 = v21;
      v28 = v22;
      v29 = v23;
      v18 = v41;
      v13 = v42;
      v30 = v43;
      (*(v24 + 8))(v20, v27, v28, v29, v43, v25, v24);
      v32 = v46;
      v31 = v47;
      v33 = v44;
      (*(v46 + 16))(v44, v30, v47);
      v34 = v48;
      v35 = v40;
      (*(v4 + 16))(v48, v26, v40);
      sub_226C87A98(v33, v34, v18);
      (*(v4 + 8))(v26, v35);
      (*(v32 + 8))(v43, v31);
    }

    __swift_destroy_boxed_opaque_existential_0Tm(v53);
    v36 = v49;
    (*(v49 + 104))(v15, *MEMORY[0x277CC7BB8], v13);
    v37 = sub_226D6A33C();
    v38 = *(v36 + 8);
    v38(v15, v13);
    if (v37)
    {
      [objc_opt_self() predicateWithValue_];
    }

    v38(v18, v13);
  }

  else
  {
    __break(1u);
  }
}

id sub_226C8B12C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v102 = a4;
  v105 = a3;
  v103 = type metadata accessor for AccountAndStartingDate(0);
  v110 = *(v103 - 8);
  MEMORY[0x28223BE20](v103);
  v108 = &v100 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v109 = &v100 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7180, &qword_226D74600);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v100 - v9;
  v11 = sub_226D67F1C();
  v106 = *(v11 - 8);
  v107 = v11;
  MEMORY[0x28223BE20](v11);
  v104 = &v100 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_226D6A34C();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v100 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v14 + 104);
  (v18)(v17, *MEMORY[0x277CC7BB0], v13, v15);
  v19 = sub_226D6A33C();
  v20 = *(v14 + 8);
  (v20)(v17, v13);
  if (v19)
  {
    goto LABEL_3;
  }

  (v18)(v17, *MEMORY[0x277CC7BC0], v13);
  v21 = sub_226D6A33C();
  (v20)(v17, v13);
  if (v21)
  {
    goto LABEL_3;
  }

  (v18)(v17, *MEMORY[0x277CC7BB8], v13);
  v24 = sub_226D6A33C();
  (v20)(v17, v13);
  if (v24 & 1) != 0 || ((v18)(v17, *MEMORY[0x277CC7BA8], v13), v25 = sub_226D6A33C(), (v20)(v17, v13), (v25))
  {
    v22 = [objc_opt_self() predicateWithValue_];
    return v22;
  }

  if (!a2 || (v26 = [a2 name]) == 0)
  {
LABEL_3:
    v22 = [objc_opt_self() predicateWithValue_];
    return v22;
  }

  v27 = v26;
  v101 = sub_226D6E39C();
  v29 = v28;

  if (qword_27D7A5F98 != -1)
  {
    goto LABEL_69;
  }

  while (1)
  {
    if (!*(qword_27D7B61F8 + 16) || (v100 = qword_27D7B61F8, sub_226C2FDD4(v101, v29), (v30 & 1) == 0))
    {

      goto LABEL_3;
    }

    (v18)(v17, *MEMORY[0x277CC7BA0], v13);
    v31 = sub_226D6A33C();
    (v20)(v17, v13);
    if ((v31 & 1) == 0)
    {

      v22 = [objc_opt_self() predicateWithValue_];
      return v22;
    }

    sub_226AC40E8(v105, v10, &qword_27D7A7180, &qword_226D74600);
    v33 = v106;
    v32 = v107;
    if ((*(v106 + 48))(v10, 1, v107) == 1)
    {

      sub_226AC47B0(v10, &qword_27D7A7180, &qword_226D74600);
      v22 = [objc_opt_self() predicateWithValue_];
      return v22;
    }

    v105 = v29;
    v34 = v104;
    v35 = (*(v33 + 32))(v104, v10, v32);
    MEMORY[0x28223BE20](v35);
    v13 = (&v100 - 4);
    *(&v100 - 2) = v102;
    *(&v100 - 1) = v34;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8878, &unk_226D7A030);
    sub_226D6EB8C();
    v20 = 0;
    v36 = MEMORY[0x277D84F90];
    v29 = v112 + 56;
    v37 = *(v112 + 56);
    v38 = v112;
    v39 = 1 << *(v112 + 32);
    v40 = -1;
    if (v39 < 64)
    {
      v40 = ~(-1 << v39);
    }

    v112 = MEMORY[0x277D84F90];
    v18 = v40 & v37;
    v10 = ((v39 + 63) >> 6);
    v41 = MEMORY[0x277D84F90];
    v17 = v108;
    v42 = v100;
    if ((v40 & v37) != 0)
    {
      do
      {
LABEL_27:
        v44 = v109;
        sub_226AE51A0(*(v38 + 48) + *(v110 + 72) * (__clz(__rbit64(v18)) | (v20 << 6)), v109);
        sub_226B72720(v44, v17);
        v111 = v36;
        if (*(v42 + 16))
        {
          v45 = sub_226C2FDD4(v101, v105);
          if ((v46 & 1) != 0 && (v47 = *(v42 + 56) + 80 * v45, v50 = *(v47 + 16), v48 = v47 + 16, (v49 = v50) != 0))
          {
            v51 = *(v48 + 8);

            v52 = v49(v17);
            sub_226AC7B44(v49, v51);
            v53 = v52;
            MEMORY[0x22AA8A610]();
            if (*((v111 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v111 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_226D6E61C();
            }

            sub_226D6E65C();

            v13 = v111;
            v17 = v108;
            v42 = v100;
          }

          else
          {
            v13 = v36;
          }

          if (*(v42 + 16) && (v54 = *(v103 + 20), v55 = sub_226C2FDD4(v101, v105), (v56 & 1) != 0))
          {
            v57 = *(v42 + 56) + 80 * v55;
            v60 = *(v57 + 48);
            v58 = v57 + 48;
            v59 = v60;
            if (v60)
            {
              v61 = *(v58 + 8);

              v62 = v59(&v108[v54]);
              sub_226AC7B44(v59, v61);
              if (v62)
              {
                if (v13 >> 62)
                {
                  v63 = sub_226D6EDFC();
                }

                else
                {
                  v63 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
                }

                v17 = v108;
                v42 = v100;
                if (v63 != 1)
                {
                  goto LABEL_46;
                }

                v64 = v62;
                MEMORY[0x22AA8A610]();
                if (*((v111 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v111 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  sub_226D6E61C();
                  v17 = v108;
                }

                sub_226D6E65C();

                v13 = v111;
              }

              else
              {
                v17 = v108;
              }

              v42 = v100;
            }

            else
            {
              v62 = 0;
              v17 = v108;
            }
          }

          else
          {
            v62 = 0;
          }
        }

        else
        {
          v13 = v36;
          v62 = 0;
        }

LABEL_46:
        if (v13 >> 62)
        {
          v65 = sub_226D6EDFC();
        }

        else
        {
          v65 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v18 &= v18 - 1;
        if (v65)
        {
          sub_226AE59B4(0, &qword_28105F4B8, 0x277CCAC30);
          v66 = sub_226D6E5CC();

          v13 = [objc_opt_self() andPredicateWithSubpredicates_];

          MEMORY[0x22AA8A610]();
          if (*((v112 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v112 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_226D6E61C();
            v17 = v108;
          }

          sub_226D6E65C();

          sub_226AE5204(v17);
          v41 = v112;
          v42 = v100;
        }

        else
        {
          sub_226AE5204(v17);
        }

        v36 = MEMORY[0x277D84F90];
      }

      while (v18);
    }

LABEL_23:
    v43 = v20 + 1;
    if (!__OFADD__(v20, 1))
    {
      break;
    }

    __break(1u);
LABEL_69:
    swift_once();
  }

  if (v43 < v10)
  {
    v18 = *(v29 + 8 * v43);
    ++v20;
    if (v18)
    {
      v20 = v43;
      goto LABEL_27;
    }

    goto LABEL_23;
  }

  if (v41 >> 62)
  {
    v88 = sub_226D6EDFC();
    v68 = v105;
    if (!v88)
    {
      goto LABEL_71;
    }

LABEL_62:
    sub_226AE59B4(0, &qword_28105F4B8, 0x277CCAC30);
    v69 = sub_226D6E5CC();

    v70 = objc_opt_self();
    v71 = [v70 orPredicateWithSubpredicates_];

    v72 = v100;
    if (*(v100 + 16))
    {
      v73 = sub_226C2FDD4(v101, v68);
      v75 = v74;

      if (v75)
      {
        v76 = *(v72 + 56) + 80 * v73;
        v79 = *(v76 + 64);
        v77 = v76 + 64;
        v78 = v79;
        if (v79)
        {
          v80 = *(v77 + 8);

          v82 = v78(v81);
          sub_226AC7B44(v78, v80);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B70, &qword_226D73130);
          v83 = swift_allocObject();
          *(v83 + 16) = xmmword_226D71F40;
          *(v83 + 32) = v71;
          *(v83 + 40) = v82;
          v84 = v71;
          v85 = v82;
          v86 = sub_226D6E5CC();

          v87 = [v70 andPredicateWithSubpredicates_];

          (*(v106 + 8))(v104, v107);
          return v87;
        }
      }
    }

    else
    {
    }

    (*(v106 + 8))(v104, v107);
    return v71;
  }

  else
  {
    v67 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v68 = v105;
    if (v67)
    {
      goto LABEL_62;
    }

LABEL_71:

    if (*(v42 + 16))
    {
      v89 = sub_226C2FDD4(v101, v68);
      v91 = v90;

      if (v91)
      {
        v92 = *(v42 + 56) + 80 * v89;
        v95 = *(v92 + 32);
        v93 = v92 + 32;
        v94 = v95;
        if (v95)
        {
          v96 = *(v93 + 8);

          v97 = v104;
          v98 = v94(v104);
          sub_226AC7B44(v94, v96);
          (*(v106 + 8))(v97, v107);
          return v98;
        }
      }
    }

    else
    {
    }

    v99 = [objc_opt_self() predicateWithValue_];
    (*(v106 + 8))(v104, v107);
    return v99;
  }
}

uint64_t sub_226C8BDE8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_226B71D90(*(v1 + 16), *(v1 + 24));
  *a1 = result;
  return result;
}

unint64_t sub_226C8BE1C()
{
  result = qword_27D7A8888;
  if (!qword_27D7A8888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A8888);
  }

  return result;
}

uint64_t sub_226C8BE70(unint64_t *a1, unint64_t *a2, void *a3)
{
  result = *a1;
  if (!result)
  {
    sub_226AE59B4(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_226C8BED0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_226C8BF18(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_226C8BF80()
{
  result = qword_27D7A88B0;
  if (!qword_27D7A88B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A88B0);
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> BankConnectServiceImplementation.refreshCardArt(for:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
  sub_226D6BAAC();
  v4 = sub_226D676AC();

  v5 = __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
  __swift_project_boxed_opaque_existential_1(v5 + 103, v5[106]);
  sub_226D098E8(countAndFlagsBits, object, v4);
}

uint64_t type metadata accessor for OrderWebServiceLogTask(uint64_t a1)
{
  result = qword_27D7A88B8;
  if (!qword_27D7A88B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_226C8C11C(uint64_t a1)
{
  sub_226D6D1AC();
  if (v1 <= 0x3F)
  {
    sub_226B20350(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_226C8C1B8()
{
  sub_226D6EEFC();
  MEMORY[0x22AA8A510](0xD00000000000001FLL, 0x8000000226D86130);
  v1 = type metadata accessor for OrderWebServiceLogTask(0);
  MEMORY[0x22AA8A510](*(v0 + *(v1 + 20)), *(v0 + *(v1 + 20) + 8));
  MEMORY[0x22AA8A510](0xD000000000000010, 0x8000000226D85840);
  sub_226D6D1AC();
  sub_226C8FAB0(&qword_27D7A7018, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
  v2 = sub_226D6F1CC();
  MEMORY[0x22AA8A510](v2);

  MEMORY[0x22AA8A510](41, 0xE100000000000000);
  return 0;
}

uint64_t sub_226C8C2DC(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = type metadata accessor for OrderWebServiceLogTask(0);
  v2[5] = swift_task_alloc();
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226C8C37C, 0, 0);
}

uint64_t sub_226C8C37C()
{
  v25 = v0;
  if (qword_28105F5B8 != -1)
  {
    swift_once();
  }

  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[3];
  v4 = sub_226D6E07C();
  __swift_project_value_buffer(v4, qword_28105F5C0);
  sub_226C8F844(v3, v2);
  sub_226C8F844(v3, v1);
  v5 = sub_226D6E05C();
  v6 = sub_226D6E9EC();
  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[5];
  v9 = v0[6];
  if (v7)
  {
    v10 = v0[4];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v24 = v12;
    *v11 = 136315394;
    v13 = (v9 + *(v10 + 20));
    v14 = *v13;
    v15 = v13[1];

    sub_226C8FB04(v9, type metadata accessor for OrderWebServiceLogTask);
    v16 = sub_226AC4530(v14, v15, &v24);

    *(v11 + 4) = v16;
    *(v11 + 12) = 2080;
    sub_226D6D1AC();
    sub_226C8FAB0(&qword_27D7A7018, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v17 = sub_226D6F1CC();
    v19 = v18;
    sub_226C8FB04(v8, type metadata accessor for OrderWebServiceLogTask);
    v20 = sub_226AC4530(v17, v19, &v24);

    *(v11 + 14) = v20;
    _os_log_impl(&dword_226AB4000, v5, v6, "Starting log task for %s at %s", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA8BEE0](v12, -1, -1);
    MEMORY[0x22AA8BEE0](v11, -1, -1);
  }

  else
  {

    sub_226C8FB04(v8, type metadata accessor for OrderWebServiceLogTask);
    sub_226C8FB04(v9, type metadata accessor for OrderWebServiceLogTask);
  }

  v21 = swift_task_alloc();
  v0[7] = v21;
  *v21 = v0;
  v21[1] = sub_226C8C664;
  v22 = v0[2];

  return sub_226C8CE28(v22);
}

uint64_t sub_226C8C664(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 64) = a1;

  if (v1)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_226C8C7BC, 0, 0);
  }
}

uint64_t sub_226C8C7BC()
{
  if (*(v0[8] + 16))
  {
    v1 = swift_task_alloc();
    v0[9] = v1;
    *v1 = v0;
    v1[1] = sub_226C8C8A8;
    v2 = v0[8];

    return sub_226C8D36C(v2);
  }

  else
  {

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_226C8C8A8()
{
  v2 = *v1;
  v2[10] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_226C8CBF4, 0, 0);
  }

  else
  {
    v3 = swift_task_alloc();
    v2[11] = v3;
    *v3 = v2;
    v3[1] = sub_226C8CA24;
    v4 = v2[2];
    v5 = v2[8];

    return sub_226C8D754(v5, v4);
  }
}

uint64_t sub_226C8CA24()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_226C8CB74()
{
  v1 = *(v0 + 80);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_226C8CBF4()
{
  v1 = *(v0 + 80);
  v2 = swift_task_alloc();
  *(v0 + 96) = v2;
  *v2 = v0;
  v2[1] = sub_226C8CC94;
  v3 = *(v0 + 80);
  v4 = *(v0 + 16);

  return sub_226C8DB28(v3, v4);
}

uint64_t sub_226C8CC94()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_226C8CDA8;
  }

  else
  {
    v2 = sub_226C8CB74;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_226C8CDA8()
{
  v1 = *(v0 + 80);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_226C8CE28(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = sub_226D6EB9C();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v4 = *(type metadata accessor for OrderWebServiceLogTask(0) - 8);
  v2[8] = v4;
  v2[9] = *(v4 + 64);
  v2[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226C8CF48, 0, 0);
}

uint64_t sub_226C8CF48(uint64_t a1)
{
  v3 = v1[9];
  v2 = v1[10];
  v4 = v1[7];
  v5 = v1[8];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[4];
  v9 = sub_226D676AC();
  v1[11] = v9;
  sub_226C8F844(v8, v2);
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  v1[12] = v11;
  sub_226C8F9B4(v2, v11 + v10);
  *(v11 + ((v3 + v10 + 7) & 0xFFFFFFFFFFFFFFF8)) = v9;
  (*(v7 + 104))(v4, *MEMORY[0x277CBE110], v6);
  v9;
  v12 = swift_task_alloc();
  v1[13] = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A88E8, &unk_226D7A368);
  *v12 = v1;
  v12[1] = sub_226C8D0D8;
  v14 = v1[7];

  return MEMORY[0x28210EE50](v1 + 2, v14, sub_226C8FA18, v11, v13);
}

uint64_t sub_226C8D0D8()
{
  v2 = *(*v1 + 56);
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 40);
  *(*v1 + 112) = v0;

  (*(v3 + 8))(v2, v4);

  if (v0)
  {
    v5 = sub_226C8D2F4;
  }

  else
  {
    v5 = sub_226C8D26C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_226C8D26C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_226C8D2F4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_226C8D36C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = type metadata accessor for OrderWebServiceLogTask(0);
  v2[5] = swift_task_alloc();
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226C8D40C, 0, 0);
}

uint64_t sub_226C8D40C()
{
  v29 = v0;
  if (qword_28105F5B8 != -1)
  {
    swift_once();
  }

  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[3];
  v4 = sub_226D6E07C();
  __swift_project_value_buffer(v4, qword_28105F5C0);
  sub_226C8F844(v3, v2);
  sub_226C8F844(v3, v1);
  v5 = sub_226D6E05C();
  v6 = sub_226D6E9EC();
  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[5];
  v9 = v0[6];
  if (v7)
  {
    v10 = v0[4];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v28 = v12;
    *v11 = 136315394;
    v13 = (v9 + *(v10 + 20));
    v14 = *v13;
    v15 = v13[1];

    sub_226C8FB04(v9, type metadata accessor for OrderWebServiceLogTask);
    v16 = sub_226AC4530(v14, v15, &v28);

    *(v11 + 4) = v16;
    *(v11 + 12) = 2080;
    sub_226D6D1AC();
    sub_226C8FAB0(&qword_27D7A7018, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v17 = sub_226D6F1CC();
    v19 = v18;
    sub_226C8FB04(v8, type metadata accessor for OrderWebServiceLogTask);
    v20 = sub_226AC4530(v17, v19, &v28);

    *(v11 + 14) = v20;
    _os_log_impl(&dword_226AB4000, v5, v6, "Sending logs for %s to %s", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA8BEE0](v12, -1, -1);
    MEMORY[0x22AA8BEE0](v11, -1, -1);
  }

  else
  {

    sub_226C8FB04(v8, type metadata accessor for OrderWebServiceLogTask);
    sub_226C8FB04(v9, type metadata accessor for OrderWebServiceLogTask);
  }

  v22 = v0[2];
  v21 = v0[3];
  v23 = sub_226C0B798(v21);
  v0[7] = v23;
  v24 = swift_task_alloc();
  v0[8] = v24;
  v24[2] = v23;
  v24[3] = v21;
  v24[4] = v22;
  v27 = (*MEMORY[0x277CC7900] + MEMORY[0x277CC7900]);
  v25 = swift_task_alloc();
  v0[9] = v25;
  *v25 = v0;
  v25[1] = sub_226C6242C;

  return v27();
}

uint64_t sub_226C8D754(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = type metadata accessor for OrderWebServiceLogTask(0);
  v3[6] = swift_task_alloc();
  v3[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226C8D7F8, 0, 0);
}

uint64_t sub_226C8D7F8()
{
  v28 = v0;
  if (qword_28105F5B8 != -1)
  {
    swift_once();
  }

  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[4];
  v4 = sub_226D6E07C();
  __swift_project_value_buffer(v4, qword_28105F5C0);
  sub_226C8F844(v3, v2);
  sub_226C8F844(v3, v1);
  v5 = sub_226D6E05C();
  v6 = sub_226D6E9EC();
  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[6];
  v9 = v0[7];
  if (v7)
  {
    v10 = v0[5];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v27[0] = v12;
    *v11 = 136315394;
    v13 = (v9 + *(v10 + 20));
    v14 = *v13;
    v15 = v13[1];

    sub_226C8FB04(v9, type metadata accessor for OrderWebServiceLogTask);
    v16 = sub_226AC4530(v14, v15, v27);

    *(v11 + 4) = v16;
    *(v11 + 12) = 2080;
    sub_226D6D1AC();
    sub_226C8FAB0(&qword_27D7A7018, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v17 = sub_226D6F1CC();
    v19 = v18;
    sub_226C8FB04(v8, type metadata accessor for OrderWebServiceLogTask);
    v20 = sub_226AC4530(v17, v19, v27);

    *(v11 + 14) = v20;
    _os_log_impl(&dword_226AB4000, v5, v6, "Sent logs for %s to %s", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA8BEE0](v12, -1, -1);
    MEMORY[0x22AA8BEE0](v11, -1, -1);
  }

  else
  {

    sub_226C8FB04(v8, type metadata accessor for OrderWebServiceLogTask);
    sub_226C8FB04(v9, type metadata accessor for OrderWebServiceLogTask);
  }

  v21 = v0[4];
  v22 = v0[2];
  v23 = sub_226D676AC();
  v24 = swift_task_alloc();
  v24[2] = v22;
  v24[3] = v23;
  v24[4] = v21;
  sub_226D6EB8C();

  v25 = v0[1];

  return v25();
}

uint64_t sub_226C8DB28(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  v3[10] = type metadata accessor for OrderWebServiceLogTask(0);
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226C8DBCC, 0, 0);
}

uint64_t sub_226C8DBCC()
{
  v40 = v0;
  v1 = *(v0 + 56);
  type metadata accessor for OrdersAutoBugCaptureReporter();
  inited = swift_initStackObject();
  v3 = [objc_allocWithZone(MEMORY[0x277CC85F0]) init];
  *(inited + 16) = v3;
  v4 = sub_226C778C0();
  v5 = sub_226C6E52C(v1);
  sub_226BA21B0(v4, v5);

  if (qword_28105F5B8 != -1)
  {
    swift_once();
  }

  v6 = *(v0 + 88);
  v7 = *(v0 + 96);
  v8 = *(v0 + 72);
  v9 = *(v0 + 56);
  v10 = sub_226D6E07C();
  __swift_project_value_buffer(v10, qword_28105F5C0);
  sub_226C8F844(v8, v7);
  sub_226C8F844(v8, v6);
  v11 = v9;
  v12 = sub_226D6E05C();
  v13 = sub_226D6E9CC();

  v14 = os_log_type_enabled(v12, v13);
  v15 = *(v0 + 88);
  v16 = *(v0 + 96);
  if (!v14)
  {

    sub_226C8FB04(v15, type metadata accessor for OrderWebServiceLogTask);
    sub_226C8FB04(v16, type metadata accessor for OrderWebServiceLogTask);
    if (sub_226D6E82C())
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v17 = *(v0 + 80);
  v37 = *(v0 + 56);
  v18 = swift_slowAlloc();
  v19 = swift_slowAlloc();
  v38 = swift_slowAlloc();
  v39[0] = v38;
  *v18 = 136315650;
  v20 = (v16 + *(v17 + 20));
  v22 = *v20;
  v21 = v20[1];

  sub_226C8FB04(v16, type metadata accessor for OrderWebServiceLogTask);
  v23 = sub_226AC4530(v22, v21, v39);

  *(v18 + 4) = v23;
  *(v18 + 12) = 2080;
  sub_226D6D1AC();
  sub_226C8FAB0(&qword_27D7A7018, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
  v24 = sub_226D6F1CC();
  v26 = v25;
  sub_226C8FB04(v15, type metadata accessor for OrderWebServiceLogTask);
  v27 = sub_226AC4530(v24, v26, v39);

  *(v18 + 14) = v27;
  *(v18 + 22) = 2112;
  v28 = v37;
  v29 = _swift_stdlib_bridgeErrorToNSError();
  *(v18 + 24) = v29;
  *v19 = v29;
  _os_log_impl(&dword_226AB4000, v12, v13, "Failed to send logs for %s to %s with error: %@", v18, 0x20u);
  sub_226B17298(v19);
  MEMORY[0x22AA8BEE0](v19, -1, -1);
  swift_arrayDestroy();
  MEMORY[0x22AA8BEE0](v38, -1, -1);
  MEMORY[0x22AA8BEE0](v18, -1, -1);

  if ((sub_226D6E82C() & 1) == 0)
  {
LABEL_7:
    v30 = *(v0 + 72);
    v31 = sub_226D676AC();
    v32 = swift_task_alloc();
    *(v32 + 16) = v30;
    *(v32 + 24) = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A86F0, &unk_226D79950);
    sub_226D6EB7C();
    v33 = *(v0 + 64);
    v34 = *(v0 + 56);

    sub_226C6EE84(v34, *(v0 + 40), *(v0 + 48), v33 + 136);
  }

LABEL_8:

  v35 = *(v0 + 8);

  return v35();
}

void sub_226C8E030(uint64_t a1@<X0>, uint64_t *a3@<X8>)
{
  v6 = type metadata accessor for OrderWebServiceLogTask(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v51 - v10;
  v12 = sub_226D69F6C();
  v13 = sub_226D69F2C();
  if (!v3)
  {
    v53 = a3;
    v54 = 0;
    if (v13)
    {
      v14 = v13;
      sub_226D6B7BC();
      v15 = sub_226D6B79C();
      sub_226AE59B4(0, &qword_28105F4B8, 0x277CCAC30);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B80, &qword_226D73120);
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_226D70840;
      *(v16 + 56) = v12;
      *(v16 + 64) = sub_226C8FAB0(&qword_27D7A88F0, MEMORY[0x277CC7A78], MEMORY[0x277D85388]);
      *(v16 + 32) = v14;
      v17 = v14;
      v18 = sub_226D6E91C();
      [v15 setPredicate_];

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B70, &qword_226D73130);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_226D71F20;
      sub_226AE59B4(0, &qword_28105F498, 0x277CCAC98);
      swift_getKeyPath();
      *(v19 + 32) = sub_226D6E9FC();
      v20 = sub_226D6E5CC();

      [v15 setSortDescriptors_];

      [v15 setFetchLimit_];
      [v15 setReturnsObjectsAsFaults_];
      v21 = v54;
      v22 = sub_226D6EBBC();
      if (v21)
      {
      }

      else
      {
        v52 = v17;
        v36 = v22;
        if (v22 >> 62)
        {
          v37 = sub_226D6EDFC();
        }

        else
        {
          v37 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v38 = v53;
        v54 = 0;
        if (v37)
        {
          v51 = v15;
          v57 = MEMORY[0x277D84F90];
          sub_226AE28DC(0, v37 & ~(v37 >> 63), 0);
          if (v37 < 0)
          {
            __break(1u);
          }

          else
          {
            v39 = 0;
            v40 = v57;
            v41 = v36;
            v55 = v36 & 0xC000000000000001;
            v56 = v36;
            do
            {
              if (v55)
              {
                v42 = MEMORY[0x22AA8AFD0](v39, v41);
              }

              else
              {
                v42 = *(v41 + 8 * v39 + 32);
              }

              v43 = v42;
              v44 = [v42 objectID];
              v45 = sub_226D6B7AC();
              v47 = v46;

              v57 = v40;
              v49 = *(v40 + 16);
              v48 = *(v40 + 24);
              if (v49 >= v48 >> 1)
              {
                sub_226AE28DC((v48 > 1), v49 + 1, 1);
                v40 = v57;
              }

              ++v39;
              *(v40 + 16) = v49 + 1;
              v50 = (v40 + 24 * v49);
              v50[4] = v44;
              v50[5] = v45;
              v50[6] = v47;
              v41 = v56;
            }

            while (v37 != v39);

            *v53 = v40;
          }
        }

        else
        {

          *v38 = MEMORY[0x277D84F90];
        }
      }
    }

    else
    {
      if (qword_28105F5B8 != -1)
      {
        swift_once();
      }

      v23 = sub_226D6E07C();
      __swift_project_value_buffer(v23, qword_28105F5C0);
      sub_226C8F844(a1, v11);
      sub_226C8F844(a1, v8);
      v24 = sub_226D6E05C();
      v25 = sub_226D6E9AC();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        v57 = v27;
        *v26 = 136315394;
        v28 = &v11[*(v6 + 20)];
        v29 = *v28;
        v30 = v28[1];

        sub_226C8FB04(v11, type metadata accessor for OrderWebServiceLogTask);
        v31 = sub_226AC4530(v29, v30, &v57);

        *(v26 + 4) = v31;
        *(v26 + 12) = 2080;
        sub_226D6D1AC();
        sub_226C8FAB0(&qword_27D7A7018, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
        v32 = sub_226D6F1CC();
        v34 = v33;
        sub_226C8FB04(v8, type metadata accessor for OrderWebServiceLogTask);
        v35 = sub_226AC4530(v32, v34, &v57);

        *(v26 + 14) = v35;
        _os_log_impl(&dword_226AB4000, v24, v25, "OrderWebService (%s, %s) not found", v26, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x22AA8BEE0](v27, -1, -1);
        MEMORY[0x22AA8BEE0](v26, -1, -1);
      }

      else
      {

        sub_226C8FB04(v8, type metadata accessor for OrderWebServiceLogTask);
        sub_226C8FB04(v11, type metadata accessor for OrderWebServiceLogTask);
      }

      *v53 = MEMORY[0x277D84F90];
    }
  }
}

void sub_226C8E6A8(id *a1)
{
  v1 = [*a1 date];
  sub_226D6D45C();
}

uint64_t sub_226C8E708(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v11 = MEMORY[0x277D84F90];
    sub_226AE1D68(0, v1, 0);
    v2 = v11;
    v4 = (a1 + 48);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;
      v7 = *(v11 + 16);
      v8 = *(v11 + 24);

      if (v7 >= v8 >> 1)
      {
        sub_226AE1D68((v8 > 1), v7 + 1, 1);
      }

      *(v11 + 16) = v7 + 1;
      v9 = v11 + 16 * v7;
      *(v9 + 32) = v6;
      *(v9 + 40) = v5;
      v4 += 3;
      --v1;
    }

    while (v1);
  }

  return MEMORY[0x282119580](v2);
}

uint64_t sub_226C8E7F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a3;
  v4[4] = a4;
  v4[2] = a2;
  v5 = sub_226D6A78C();
  v4[5] = v5;
  v4[6] = *(v5 - 8);
  v4[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226C8E8BC, 0, 0);
}

uint64_t sub_226C8E8BC()
{
  sub_226C8E708(v0[4]);
  v4 = (*MEMORY[0x277CC7908] + MEMORY[0x277CC7908]);
  v1 = swift_task_alloc();
  v0[8] = v1;
  *v1 = v0;
  v1[1] = sub_226B4BF14;
  v2 = v0[7];

  return v4(v2);
}

void sub_226C8E974(uint64_t a1, void *a2)
{
  v16[1] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 16);
  if (v3)
  {
    v16[0] = MEMORY[0x277D84F90];
    sub_226D6EF8C();
    v5 = (a1 + 32);
    do
    {
      v6 = *v5;
      v5 += 3;
      v7 = v6;
      sub_226D6EF6C();
      sub_226D6EF9C();
      sub_226D6EFAC();
      sub_226D6EF7C();
      --v3;
    }

    while (v3);
  }

  v8 = objc_allocWithZone(MEMORY[0x277CBE360]);
  sub_226AE59B4(0, &qword_27D7A6370, 0x277CBE448);
  v9 = sub_226D6E5CC();

  v10 = [v8 initWithObjectIDs_];

  v16[0] = 0;
  v11 = [a2 executeRequest:v10 error:v16];
  if (v11)
  {
    v12 = v11;
    v13 = v16[0];

    MEMORY[0x28223BE20](v14);
    sub_226D6EB7C();
  }

  else
  {
    v15 = v16[0];
    sub_226D6D04C();

    swift_willThrow();
  }
}

void sub_226C8EB70(uint64_t a1, void *a2)
{
  v30[1] = *MEMORY[0x277D85DE8];
  v5 = type metadata accessor for OrderWebServiceLogTask(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v28 - v9;
  sub_226D69F6C();
  v11 = sub_226D69F2C();
  if (!v2)
  {
    if (v11)
    {
      v12 = v11;
      [v11 setRequestAttemptCount_];
      [v12 setLastRequestAttemptDate_];
      v30[0] = 0;
      if ([a2 save_])
      {
        v13 = v30[0];
      }

      else
      {
        v27 = v30[0];
        sub_226D6D04C();

        swift_willThrow();
      }
    }

    else
    {
      if (qword_28105F5B8 != -1)
      {
        swift_once();
      }

      v14 = sub_226D6E07C();
      __swift_project_value_buffer(v14, qword_28105F5C0);
      sub_226C8F844(a1, v10);
      sub_226C8F844(a1, v7);
      v15 = sub_226D6E05C();
      v16 = sub_226D6E9AC();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v30[0] = v29;
        *v17 = 136315394;
        v18 = &v10[*(v5 + 20)];
        v19 = *v18;
        v20 = v18[1];

        sub_226C8FB04(v10, type metadata accessor for OrderWebServiceLogTask);
        v21 = sub_226AC4530(v19, v20, v30);

        *(v17 + 4) = v21;
        *(v17 + 12) = 2080;
        sub_226D6D1AC();
        sub_226C8FAB0(&qword_27D7A7018, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
        v22 = sub_226D6F1CC();
        v24 = v23;
        sub_226C8FB04(v7, type metadata accessor for OrderWebServiceLogTask);
        v25 = sub_226AC4530(v22, v24, v30);

        *(v17 + 14) = v25;
        _os_log_impl(&dword_226AB4000, v15, v16, "OrderWebService (%s, %s) not found", v17, 0x16u);
        v26 = v29;
        swift_arrayDestroy();
        MEMORY[0x22AA8BEE0](v26, -1, -1);
        MEMORY[0x22AA8BEE0](v17, -1, -1);
      }

      else
      {

        sub_226C8FB04(v7, type metadata accessor for OrderWebServiceLogTask);
        sub_226C8FB04(v10, type metadata accessor for OrderWebServiceLogTask);
      }
    }
  }
}

void sub_226C8EF38(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v40 = a3;
  v42[1] = *MEMORY[0x277D85DE8];
  v5 = type metadata accessor for OrderWebServiceLogTask(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = (&v38 - v9);
  v11 = sub_226D6D4AC();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226D69F6C();
  v15 = v41;
  v16 = sub_226D69F2C();
  if (!v15)
  {
    v41 = 0;
    if (v16)
    {
      v10 = &selRef_setSortDescriptors_;
      v7 = v16;
      v17 = [v16 requestAttemptCount];
      if (!__OFADD__(v17, 1))
      {
        [v7 setRequestAttemptCount_];
        sub_226D6D46C();
        v18 = sub_226D6D3EC();
        (*(v12 + 8))(v14, v11);
        [v7 setLastRequestAttemptDate_];

        v42[0] = 0;
        if (![a2 save_])
        {
          v37 = v42[0];
          sub_226D6D04C();

          swift_willThrow();
          return;
        }

        v19 = v42[0];
        v20 = [v7 requestAttemptCount];

        v21 = v40;
        v11 = v7;
        goto LABEL_12;
      }

      __break(1u);
    }

    else
    {
      v11 = 0;
      if (qword_28105F5B8 == -1)
      {
LABEL_7:
        v22 = sub_226D6E07C();
        __swift_project_value_buffer(v22, qword_28105F5C0);
        sub_226C8F844(a1, v10);
        v23 = v7;
        sub_226C8F844(a1, v7);
        v24 = sub_226D6E05C();
        v25 = sub_226D6E9AC();
        if (os_log_type_enabled(v24, v25))
        {
          v26 = swift_slowAlloc();
          v39 = swift_slowAlloc();
          v42[0] = v39;
          *v26 = 136315394;
          v27 = (v10 + *(v5 + 20));
          v28 = v25;
          v29 = *v27;
          v30 = v27[1];

          sub_226C8FB04(v10, type metadata accessor for OrderWebServiceLogTask);
          v31 = sub_226AC4530(v29, v30, v42);

          *(v26 + 4) = v31;
          *(v26 + 12) = 2080;
          sub_226D6D1AC();
          sub_226C8FAB0(&qword_27D7A7018, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
          v32 = sub_226D6F1CC();
          v34 = v33;
          sub_226C8FB04(v23, type metadata accessor for OrderWebServiceLogTask);
          v35 = sub_226AC4530(v32, v34, v42);

          *(v26 + 14) = v35;
          _os_log_impl(&dword_226AB4000, v24, v28, "OrderWebService (%s, %s) not found", v26, 0x16u);
          v36 = v39;
          swift_arrayDestroy();
          MEMORY[0x22AA8BEE0](v36, -1, -1);
          MEMORY[0x22AA8BEE0](v26, -1, -1);
        }

        else
        {

          sub_226C8FB04(v23, type metadata accessor for OrderWebServiceLogTask);
          sub_226C8FB04(v10, type metadata accessor for OrderWebServiceLogTask);
        }

        v20 = 0;
        v21 = v40;
LABEL_12:
        *v21 = v20;
        *(v21 + 8) = v11 == 0;
        return;
      }
    }

    swift_once();
    goto LABEL_7;
  }
}

double sub_226C8F3FC@<D0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A86F8, &qword_226D7C3B0) + 48);
  v6 = (v2 + *(a1 + 20));
  v7 = v6[1];
  *a2 = *v6;
  *(a2 + 1) = v7;
  v8 = sub_226D6D1AC();
  (*(*(v8 - 8) + 16))(&a2[v5], v2, v8);
  type metadata accessor for OrderWebServiceTaskIdentifier(0);
  swift_storeEnumTagMultiPayload();

  return result;
}

uint64_t sub_226C8F4B8(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8630, &unk_226D79550);
  v3 = *(type metadata accessor for OrderWebServiceTaskExclusivityIdentifier(0) - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_226D70840;
  v6 = (v5 + v4);
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A86F8, &qword_226D7C3B0) + 48);
  v8 = (v1 + *(a1 + 20));
  v9 = v8[1];
  *v6 = *v8;
  *(v6 + 1) = v9;
  v10 = sub_226D6D1AC();
  (*(*(v10 - 8) + 16))(&v6[v7], v1, v10);
  swift_storeEnumTagMultiPayload();

  v11 = sub_226B1FBC0(v5);
  swift_setDeallocating();
  sub_226C8FB04(v6, type metadata accessor for OrderWebServiceTaskExclusivityIdentifier);
  swift_deallocClassInstance();
  return v11;
}

uint64_t sub_226C8F640(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_226AD827C;

  return sub_226C8C2DC(a1);
}

uint64_t sub_226C8F6D8(uint64_t a1)
{
  *(a1 + 8) = sub_226C8FAB0(&qword_27D7A88D0, type metadata accessor for OrderWebServiceLogTask, &unk_226D7A2CC);
  result = sub_226C8FAB0(&qword_27D7A88D8, type metadata accessor for OrderWebServiceLogTask, &unk_226D7A2B0);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_226C8F7EC(uint64_t a1)
{
  result = sub_226C8FAB0(&qword_27D7A88E0, type metadata accessor for OrderWebServiceLogTask, &unk_226D7A288);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_226C8F844(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OrderWebServiceLogTask(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_226C8F900(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_226AD827C;

  return sub_226C8E7F8(a1, v4, v5, v6);
}

uint64_t sub_226C8F9B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OrderWebServiceLogTask(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_226C8FAB0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_226C8FB04(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_226C8FB64(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_226C8FBAC(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_226C8FC00()
{
  v1[3] = v0;
  v2 = sub_226D6EB9C();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226C8FCC0, 0, 0);
}

uint64_t sub_226C8FCC0(uint64_t a1)
{
  v3 = v1[5];
  v2 = v1[6];
  v5 = v1[3];
  v4 = v1[4];
  v6 = sub_226D676AC();
  v1[7] = v6;
  v7 = swift_allocObject();
  v1[8] = v7;
  *(v7 + 16) = v6;
  *(v7 + 24) = v5;
  (*(v3 + 104))(v2, *MEMORY[0x277CBE110], v4);
  v6;

  v8 = swift_task_alloc();
  v1[9] = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A88F8, &qword_226D7A450);
  *v8 = v1;
  v8[1] = sub_226C8FE10;
  v10 = v1[6];

  return MEMORY[0x28210EE50](v1 + 2, v10, sub_226C93D10, v7, v9);
}

uint64_t sub_226C8FE10()
{
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 32);
  *(*v1 + 80) = v0;

  (*(v3 + 8))(v2, v4);

  if (v0)
  {
    v5 = sub_226B871D8;
  }

  else
  {
    v5 = sub_226C8FFA4;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_226C8FFA4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_226C90018@<X0>(void *a1@<X0>, id *a2@<X8>)
{
  v17[1] = *MEMORY[0x277D85DE8];
  v5 = [objc_opt_self() currentQueryGenerationToken];
  v17[0] = 0;
  v6 = [a1 setQueryGenerationFromToken:v5 error:v17];

  v7 = v17[0];
  if (v6)
  {
    v17[0] = MEMORY[0x277D84F90];
    v8 = v7;
    v9 = sub_226C901E4();
    if (v2)
    {
    }

    else
    {
      sub_226CEE39C(v9);
      v10 = sub_226C9042C(a1);
      sub_226CEE39C(v10);
      v11 = sub_226C909B0();
      sub_226CEE39C(v11);
      v12 = sub_226C90EF0(a1);
      sub_226CEE39C(v12);
      v13 = sub_226C916E8();
      sub_226CEE39C(v13);
      v14 = sub_226C91EA4();
      result = sub_226CEE39C(v14);
      *a2 = v17[0];
    }
  }

  else
  {
    v15 = v17[0];
    sub_226D6D04C();

    return swift_willThrow();
  }

  return result;
}

void *sub_226C901E4()
{
  v2 = v0;
  sub_226D6AF9C();
  v3 = sub_226D6AF7C();
  [v3 setReturnsObjectsAsFaults_];
  v4 = sub_226D6E5CC();
  [v3 setRelationshipKeyPathsForPrefetching_];

  v5 = sub_226D6EBBC();
  if (v1)
  {
  }

  else
  {
    v6 = v5;
    if (v5 >> 62)
    {
      goto LABEL_24;
    }

    for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_226D6EDFC())
    {
      v14 = v3;
      v18 = v2;
      swift_retain_n();
      if (!i)
      {
        break;
      }

      v8 = 0;
      v2 = v6 & 0xFFFFFFFFFFFFFF8;
      v4 = MEMORY[0x277D84F90];
      while (1)
      {
        if ((v6 & 0xC000000000000001) != 0)
        {
          v9 = MEMORY[0x22AA8AFD0](v8, v6);
        }

        else
        {
          if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_23;
          }

          v9 = *(v6 + 8 * v8 + 32);
        }

        v10 = v9;
        v11 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          break;
        }

        sub_226C922A8(v9, &v15);

        if (v16)
        {
          sub_226AC484C(&v15, v17);
          sub_226AC484C(v17, &v15);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v4 = sub_226BBBCA4(0, v4[2] + 1, 1, v4);
          }

          v3 = v4[2];
          v12 = v4[3];
          if (v3 >= v12 >> 1)
          {
            v4 = sub_226BBBCA4((v12 > 1), v3 + 1, 1, v4);
          }

          v4[2] = v3 + 1;
          sub_226AC484C(&v15, &v4[5 * v3 + 4]);
        }

        ++v8;
        if (v11 == i)
        {
          goto LABEL_20;
        }
      }

      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      ;
    }

    v4 = MEMORY[0x277D84F90];
LABEL_20:
  }

  return v4;
}

void *sub_226C9042C(uint64_t a1)
{
  v3 = v1;
  v5 = sub_226D6707C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226D68D6C();
  v9 = sub_226D6706C();
  (*(v6 + 8))(v8, v5);
  if ((v9 & 1) == 0)
  {
    return MEMORY[0x277D84F90];
  }

  v38[1] = v3;
  v42 = sub_226D67FDC();
  v43 = sub_226D67FAC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B70, &qword_226D73130);
  v10 = swift_allocObject();
  v41 = a1;
  v11 = v10;
  v39 = xmmword_226D71F30;
  *(v10 + 16) = xmmword_226D71F30;
  v12 = swift_allocObject();
  v47 = v2;
  v13 = v12;
  v40 = xmmword_226D71F40;
  *(v12 + 16) = xmmword_226D71F40;
  sub_226B2A4F4();
  v14 = MEMORY[0x277D84F90];
  *(v13 + 32) = sub_226D6E91C();
  *(v13 + 40) = sub_226D6E91C();
  v15 = sub_226D6E5CC();

  v16 = objc_opt_self();
  v17 = [v16 andPredicateWithSubpredicates_];

  v11[4] = v17;
  v18 = swift_allocObject();
  *(v18 + 16) = v39;
  *(v18 + 32) = sub_226D6E91C();
  *(v18 + 40) = sub_226D6E91C();
  *(v18 + 48) = sub_226D6E91C();
  v19 = sub_226D6E5CC();

  v20 = [v16 andPredicateWithSubpredicates_];

  v11[5] = v20;
  v21 = swift_allocObject();
  *(v21 + 16) = v40;
  *(v21 + 32) = sub_226D6E91C();
  *(v21 + 40) = sub_226D6E91C();
  v22 = sub_226D6E5CC();

  v23 = [v16 andPredicateWithSubpredicates_];

  v11[6] = v23;
  v24 = sub_226D6E5CC();

  v25 = [v16 orPredicateWithSubpredicates_];

  v26 = v43;
  [v43 setPredicate_];

  [v26 setReturnsObjectsAsFaults_];
  v27 = v47;
  v28 = sub_226D6EBBC();
  if (v27)
  {
  }

  else
  {
    v29 = v28;
    v47 = 0;
    if (v28 >> 62)
    {
      goto LABEL_25;
    }

    for (i = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_226D6EDFC())
    {
      swift_retain_n();
      if (!i)
      {
        break;
      }

      v31 = 0;
      while (1)
      {
        if ((v29 & 0xC000000000000001) != 0)
        {
          v32 = MEMORY[0x22AA8AFD0](v31, v29);
        }

        else
        {
          if (v31 >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_24;
          }

          v32 = *(v29 + 8 * v31 + 32);
        }

        v33 = v32;
        v34 = v31 + 1;
        if (__OFADD__(v31, 1))
        {
          break;
        }

        sub_226C926DC(v32, &v44);

        if (v45)
        {
          sub_226AC484C(&v44, v46);
          sub_226AC484C(v46, &v44);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v14 = sub_226BBBCA4(0, v14[2] + 1, 1, v14);
          }

          v36 = v14[2];
          v35 = v14[3];
          if (v36 >= v35 >> 1)
          {
            v14 = sub_226BBBCA4((v35 > 1), v36 + 1, 1, v14);
          }

          v14[2] = v36 + 1;
          sub_226AC484C(&v44, &v14[5 * v36 + 4]);
        }

        ++v31;
        if (v34 == i)
        {
          goto LABEL_21;
        }
      }

      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      ;
    }

LABEL_21:
  }

  return v14;
}

void *sub_226C909B0()
{
  v2 = v1;
  v3 = sub_226D6707C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_226D69F6C();
  v29 = sub_226D69F1C();
  v34 = MEMORY[0x277D84F90];
  v30 = v0;
  sub_226D68D6C();
  v8 = sub_226D6706C();
  (*(v4 + 8))(v6, v3);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B70, &qword_226D73130);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_226D71F30;
    sub_226B2A4F4();
    *(v9 + 32) = sub_226D6E91C();
    *(v9 + 40) = sub_226D6E91C();
    *(v9 + 48) = sub_226D6E91C();
    v10 = sub_226D6E5CC();

    v11 = [objc_opt_self() andPredicateWithSubpredicates_];

    v12 = v11;
    MEMORY[0x22AA8A610]();
    if (*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v34 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_226D6E61C();
    }

    sub_226D6E65C();
  }

  sub_226B2A4F4();
  sub_226D6E91C();
  MEMORY[0x22AA8A610]();
  if (*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v34 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_29;
  }

  while (1)
  {
    sub_226D6E65C();
    v13 = v34;
    v14 = sub_226D6E5CC();
    v15 = [objc_opt_self() orPredicateWithSubpredicates_];

    v16 = v29;
    [v29 setPredicate_];

    [v16 setReturnsObjectsAsFaults_];
    v17 = sub_226D6E5CC();
    [v16 setRelationshipKeyPathsForPrefetching_];

    v18 = sub_226D6EBBC();
    if (v2)
    {

      return v7;
    }

    v19 = v18;
    v20 = v18 >> 62 ? sub_226D6EDFC() : *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v28[0] = 0;
    v28[1] = v13;
    swift_retain_n();
    if (!v20)
    {
      break;
    }

    v21 = 0;
    v2 = v19 & 0xFFFFFFFFFFFFFF8;
    v7 = MEMORY[0x277D84F90];
    while (1)
    {
      if ((v19 & 0xC000000000000001) != 0)
      {
        v22 = MEMORY[0x22AA8AFD0](v21, v19);
      }

      else
      {
        if (v21 >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_28;
        }

        v22 = *(v19 + 8 * v21 + 32);
      }

      v23 = v22;
      v24 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      sub_226C92CD4(v22, &v31);

      if (v32)
      {
        sub_226AC484C(&v31, v33);
        sub_226AC484C(v33, &v31);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_226BBBCA4(0, v7[2] + 1, 1, v7);
        }

        v26 = v7[2];
        v25 = v7[3];
        if (v26 >= v25 >> 1)
        {
          v7 = sub_226BBBCA4((v25 > 1), v26 + 1, 1, v7);
        }

        v7[2] = v26 + 1;
        sub_226AC484C(&v31, &v7[5 * v26 + 4]);
      }

      ++v21;
      if (v24 == v20)
      {
        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    sub_226D6E61C();
  }

  v7 = MEMORY[0x277D84F90];
LABEL_25:

  return v7;
}

void *sub_226C90EF0(uint64_t a1)
{
  v3 = v1;
  v5 = sub_226D6707C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226D68D6C();
  v9 = sub_226D6706C();
  (*(v6 + 8))(v8, v5);
  if ((v9 & 1) == 0)
  {
    return MEMORY[0x277D84F90];
  }

  v45 = v3;
  v52 = sub_226D6751C();
  v53 = sub_226D6748C();
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B70, &qword_226D73130);
  v10 = swift_allocObject();
  v51 = a1;
  v11 = v10;
  v50 = xmmword_226D7A3E0;
  *(v10 + 16) = xmmword_226D7A3E0;
  v12 = swift_allocObject();
  v49 = xmmword_226D71F30;
  *(v12 + 16) = xmmword_226D71F30;
  sub_226B2A4F4();
  v54 = v2;
  *(v12 + 32) = sub_226D6E91C();
  *(v12 + 40) = sub_226D6E91C();
  *(v12 + 48) = sub_226D6E91C();
  v13 = sub_226D6E5CC();

  v14 = objc_opt_self();
  v15 = [v14 andPredicateWithSubpredicates_];

  v11[4] = v15;
  v16 = swift_allocObject();
  *(v16 + 16) = v49;
  *(v16 + 32) = sub_226D6E91C();
  v48 = "icUpdatesEnabled = TRUE";
  *(v16 + 40) = sub_226D6E91C();
  *(v16 + 48) = sub_226D6E91C();
  v17 = sub_226D6E5CC();

  v18 = [v14 andPredicateWithSubpredicates_];

  v11[5] = v18;
  v46 = v11;
  v19 = swift_allocObject();
  v49 = xmmword_226D72B90;
  *(v19 + 16) = xmmword_226D72B90;
  *(v19 + 32) = sub_226D6E91C();
  *(v19 + 40) = sub_226D6E91C();
  v47 = "n.isMaybeRegistered = TRUE";
  *(v19 + 48) = sub_226D6E91C();
  *(v19 + 56) = sub_226D6E91C();
  v20 = sub_226D6E5CC();

  v21 = [v14 andPredicateWithSubpredicates_];

  v11[6] = v21;
  v22 = swift_allocObject();
  *(v22 + 16) = v49;
  *(v22 + 32) = sub_226D6E91C();
  *(v22 + 40) = sub_226D6E91C();
  *(v22 + 48) = sub_226D6E91C();
  *(v22 + 56) = sub_226D6E91C();
  v23 = sub_226D6E5CC();

  v24 = [v14 andPredicateWithSubpredicates_];

  v25 = v46;
  v46[7] = v24;
  v26 = swift_allocObject();
  *(v26 + 16) = v50;
  *(v26 + 32) = sub_226D6E91C();
  *(v26 + 40) = sub_226D6E91C();
  v27 = v53;
  *(v26 + 48) = sub_226D6E91C();
  *(v26 + 56) = sub_226D6E91C();
  *(v26 + 64) = sub_226D6E91C();
  v28 = sub_226D6E5CC();

  v29 = [v14 andPredicateWithSubpredicates_];

  v25[8] = v29;
  v30 = sub_226D6E5CC();

  v31 = [v14 orPredicateWithSubpredicates_];

  [v27 setPredicate_];
  [v27 setReturnsObjectsAsFaults_];
  v32 = sub_226D6E5CC();
  [v27 setRelationshipKeyPathsForPrefetching_];

  v33 = v54;
  v34 = sub_226D6EBBC();
  v35 = v33;
  if (v33)
  {
  }

  else
  {
    v36 = v34;
    if (v34 >> 62)
    {
      goto LABEL_26;
    }

    for (i = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_226D6EDFC())
    {
      v54 = v35;
      swift_retain_n();
      if (!i)
      {
        break;
      }

      v38 = 0;
      v35 = v36 & 0xFFFFFFFFFFFFFF8;
      v29 = MEMORY[0x277D84F90];
      while (1)
      {
        if ((v36 & 0xC000000000000001) != 0)
        {
          v39 = MEMORY[0x22AA8AFD0](v38, v36);
        }

        else
        {
          if (v38 >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_25;
          }

          v39 = *(v36 + 8 * v38 + 32);
        }

        v40 = v39;
        v41 = v38 + 1;
        if (__OFADD__(v38, 1))
        {
          break;
        }

        sub_226C933B8(v39, &v55);

        if (v56)
        {
          sub_226AC484C(&v55, v57);
          sub_226AC484C(v57, &v55);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v29 = sub_226BBBCA4(0, v29[2] + 1, 1, v29);
          }

          v43 = v29[2];
          v42 = v29[3];
          if (v43 >= v42 >> 1)
          {
            v29 = sub_226BBBCA4((v42 > 1), v43 + 1, 1, v29);
          }

          v29[2] = v43 + 1;
          sub_226AC484C(&v55, &v29[5 * v43 + 4]);
        }

        ++v38;
        if (v41 == i)
        {
          goto LABEL_22;
        }
      }

      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      ;
    }

    v29 = MEMORY[0x277D84F90];
LABEL_22:
  }

  return v29;
}

void *sub_226C916E8()
{
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v65 - v4;
  v69 = sub_226D6D1AC();
  v6 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v85 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_226D6707C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = v0;
  sub_226D68D6C();
  v12 = sub_226D6706C();
  (*(v9 + 8))(v11, v8);
  if ((v12 & 1) == 0)
  {
    v66 = v1;
    return MEMORY[0x277D84F90];
  }

  sub_226D6A47C();
  v13 = sub_226D6A46C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B70, &qword_226D73130);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_226D71F40;
  sub_226B2A4F4();
  *(v14 + 32) = sub_226D6E91C();
  *(v14 + 40) = sub_226D6E91C();
  v15 = sub_226D6E5CC();

  v16 = [objc_opt_self() orPredicateWithSubpredicates_];

  [v13 setPredicate_];
  [v13 setReturnsObjectsAsFaults_];
  v17 = sub_226D6E5CC();
  [v13 setRelationshipKeyPathsForPrefetching_];

  v18 = sub_226D6EBBC();
  if (v1)
  {

    return v2;
  }

  v19 = v18;
  if (v18 >> 62)
  {
LABEL_34:
    v20 = sub_226D6EDFC();
  }

  else
  {
    v20 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v66 = 0;
  swift_retain_n();
  if (!v20)
  {
    v2 = MEMORY[0x277D84F90];
LABEL_30:

    return v2;
  }

  v21 = 0;
  v71 = v19 & 0xFFFFFFFFFFFFFF8;
  v72 = v19 & 0xC000000000000001;
  v68 = v6 + 4;
  v2 = MEMORY[0x277D84F90];
  v70 = v20;
  v67 = v19;
  while (1)
  {
    if (v72)
    {
      v22 = MEMORY[0x22AA8AFD0](v21, v19);
    }

    else
    {
      if (v21 >= *(v71 + 16))
      {
        goto LABEL_33;
      }

      v22 = *(v19 + 8 * v21 + 32);
    }

    v6 = v22;
    v23 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      __break(1u);
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    v24 = [v22 order];
    if (!v24)
    {
      break;
    }

    v25 = v24;
    v26 = [v24 effectiveAutomaticUpdatesEnabled];

    if (!v26)
    {
      break;
    }

    v83 = 0;
    v81 = 0u;
    v82 = 0u;
LABEL_23:

    v62 = v70;
    if (*(&v82 + 1))
    {
      sub_226AC484C(&v81, v84);
      sub_226AC484C(v84, &v81);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v2 = sub_226BBBCA4(0, v2[2] + 1, 1, v2);
      }

      v64 = v2[2];
      v63 = v2[3];
      v6 = (v64 + 1);
      if (v64 >= v63 >> 1)
      {
        v2 = sub_226BBBCA4((v63 > 1), v64 + 1, 1, v2);
      }

      v2[2] = v6;
      sub_226AC484C(&v81, &v2[5 * v64 + 4]);
    }

    ++v21;
    if (v23 == v62)
    {
      goto LABEL_30;
    }
  }

  v80 = v2;
  v27 = v13;
  result = [v6 orderWebService];
  if (result)
  {
    v29 = result;
    v30 = [result baseURL];

    sub_226D6D14C();
    v31 = [v6 deviceLibraryIdentifier];
    v32 = sub_226D6E39C();
    v79 = v33;

    v34 = [v6 orderTypeIdentifier];
    v35 = sub_226D6E39C();
    v77 = v36;
    v78 = v35;

    v37 = [v6 orderIdentifier];
    v38 = sub_226D6E39C();
    v75 = v39;
    v76 = v38;

    v40 = [v6 authenticationToken];
    v41 = sub_226D6E39C();
    v73 = v42;
    v74 = v41;

    v43 = [v6 requestAttemptCount];
    v44 = [v6 lastRequestAttemptDate];
    if (v44)
    {
      v45 = v44;
      sub_226D6D45C();

      v46 = 0;
    }

    else
    {
      v46 = 1;
    }

    v47 = sub_226D6D4AC();
    (*(*(v47 - 8) + 56))(v5, v46, 1, v47);
    v48 = type metadata accessor for OrderWebServiceUnregisterTask(0);
    *(&v82 + 1) = v48;
    v83 = sub_226C94010(&qword_27D7A8908, type metadata accessor for OrderWebServiceUnregisterTask, &unk_226D7C4A4);
    v49 = v5;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v81);
    (*v68)(boxed_opaque_existential_1, v85, v69);
    v51 = (boxed_opaque_existential_1 + v48[5]);
    v53 = v78;
    v52 = v79;
    *v51 = v32;
    v51[1] = v52;
    v54 = (boxed_opaque_existential_1 + v48[6]);
    v55 = v76;
    v56 = v77;
    *v54 = v53;
    v54[1] = v56;
    v57 = (boxed_opaque_existential_1 + v48[7]);
    *v57 = v55;
    v58 = v74;
    v57[1] = v75;
    v59 = (boxed_opaque_existential_1 + v48[8]);
    v60 = v73;
    *v59 = v58;
    v59[1] = v60;
    *(boxed_opaque_existential_1 + v48[9]) = v43;
    v61 = boxed_opaque_existential_1 + v48[10];
    v5 = v49;
    sub_226B72784(v49, v61);
    v13 = v27;
    v19 = v67;
    v2 = v80;
    goto LABEL_23;
  }

  __break(1u);
  return result;
}

unint64_t sub_226C91EA4()
{
  v2 = v1;
  v3 = v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v27 - v5;
  v7 = sub_226D6B3BC();
  v8 = *(v7 - 1);
  MEMORY[0x28223BE20](v7);
  v10 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226D6C8EC();
  v11 = sub_226D6C89C();
  [v11 setReturnsObjectsAsFaults_];
  result = sub_226D6EBBC();
  v13 = v1;
  if (v1)
  {

    return v2;
  }

  v28 = v11;
  if (result >> 62)
  {
    goto LABEL_21;
  }

  v14 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  v15 = v28;
  if (!v14)
  {
LABEL_22:

    return MEMORY[0x277D84F90];
  }

LABEL_5:
  v33 = result;
  v27[1] = v13;
  v31 = v7;
  v37 = MEMORY[0x277D84F90];
  v27[2] = v3;

  v13 = &v37;
  result = sub_226AE28FC(0, v14 & ~(v14 >> 63), 0);
  if ((v14 & 0x8000000000000000) == 0)
  {
    v16 = 0;
    v2 = v37;
    v32 = v33 & 0xC000000000000001;
    v29 = v33 & 0xFFFFFFFFFFFFFF8;
    v30 = v14;
    v7 = (v8 + 32);
    while (1)
    {
      if (v32)
      {
        v17 = MEMORY[0x22AA8AFD0](v16, v33);
      }

      else
      {
        if ((v16 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_20:
          __break(1u);
LABEL_21:
          v26 = result;
          v14 = sub_226D6EDFC();
          result = v26;
          v15 = v28;
          if (!v14)
          {
            goto LABEL_22;
          }

          goto LABEL_5;
        }

        if (v16 >= *(v29 + 16))
        {
          goto LABEL_20;
        }

        v17 = *(v33 + 8 * v16 + 32);
      }

      v13 = v17;
      sub_226D6C8CC();
      v18 = [v13 registrationAttemptCount];
      v19 = [v13 lastRegistrationAttemptDate];
      if (v19)
      {
        v20 = v19;
        sub_226D6D45C();

        v21 = 0;
      }

      else
      {
        v21 = 1;
      }

      v22 = sub_226D6D4AC();
      (*(*(v22 - 8) + 56))(v6, v21, 1, v22);
      v23 = type metadata accessor for PrismWebServiceRegisterTransactionTask(0);
      v35 = v23;
      v36 = sub_226C94010(&qword_27D7A8900, type metadata accessor for PrismWebServiceRegisterTransactionTask, &unk_226D7E6E8);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v34);
      (*v7)(boxed_opaque_existential_1, v10, v31);
      *(boxed_opaque_existential_1 + *(v23 + 20)) = v18;
      sub_226B72784(v6, boxed_opaque_existential_1 + *(v23 + 24));

      v37 = v2;
      v3 = v2[2];
      v25 = v2[3];
      v8 = v3 + 1;
      if (v3 >= v25 >> 1)
      {
        v13 = &v37;
        sub_226AE28FC((v25 > 1), v3 + 1, 1);
        v2 = v37;
      }

      ++v16;
      v2[2] = v8;
      result = sub_226AC484C(&v34, &v2[5 * v3 + 4]);
      if (v30 == v16)
      {

        return v2;
      }
    }
  }

  __break(1u);
  return result;
}

void *sub_226C922A8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v48 - v5;
  v7 = sub_226D6D1AC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_226D6D4AC();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226D6D46C();
  v15 = sub_226D6AF8C();
  (*(v12 + 8))(v14, v11);
  if (v15)
  {
    v53 = v7;
    result = [a1 orderWebService];
    if (result)
    {
      v17 = result;
      v18 = [result baseURL];

      sub_226D6D14C();
      v19 = [a1 orderTypeIdentifier];
      v20 = sub_226D6E39C();
      v51 = v21;
      v52 = v20;

      v22 = [a1 orderIdentifier];
      v23 = sub_226D6E39C();
      v49 = v24;
      v50 = v23;

      v25 = [a1 authenticationToken];
      v26 = sub_226D6E39C();
      v28 = v27;

      v29 = [a1 requestAttemptCount];
      v30 = [a1 lastRequestAttemptDate];
      if (v30)
      {
        v31 = v30;
        sub_226D6D45C();

        v32 = 0;
      }

      else
      {
        v32 = 1;
      }

      (*(v12 + 56))(v6, v32, 1, v11);
      PendingApplePayOrderTask = type metadata accessor for OrderWebServiceFetchPendingApplePayOrderTask(0);
      a2[3] = PendingApplePayOrderTask;
      a2[4] = sub_226C94010(&qword_27D7A8740, type metadata accessor for OrderWebServiceFetchPendingApplePayOrderTask, &unk_226D796DC);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
      (*(v8 + 32))(boxed_opaque_existential_1, v10, v53);
      v43 = (boxed_opaque_existential_1 + PendingApplePayOrderTask[5]);
      v44 = v51;
      *v43 = v52;
      v43[1] = v44;
      v45 = (boxed_opaque_existential_1 + PendingApplePayOrderTask[6]);
      v46 = v49;
      *v45 = v50;
      v45[1] = v46;
      v47 = (boxed_opaque_existential_1 + PendingApplePayOrderTask[7]);
      *v47 = v26;
      v47[1] = v28;
      *(boxed_opaque_existential_1 + PendingApplePayOrderTask[8]) = v29;
      return sub_226B72784(v6, boxed_opaque_existential_1 + PendingApplePayOrderTask[9]);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v33 = [a1 orderTypeIdentifier];
    v34 = sub_226D6E39C();
    v36 = v35;

    v37 = [a1 orderIdentifier];
    v38 = sub_226D6E39C();
    v40 = v39;

    a2[3] = &type metadata for OrderWebServiceDeletePendingApplePayOrderTask;
    a2[4] = sub_226C5E860();
    result = swift_allocObject();
    *a2 = result;
    result[2] = v34;
    result[3] = v36;
    result[4] = v38;
    result[5] = v40;
  }

  return result;
}

unint64_t sub_226C926DC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for TokenBucket.State(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v44 - v12;
  v14 = [a1 countOfOrdersWithEffectiveAutomaticUpdatesEnabled];
  result = [a1 hasPushToken];
  if (v14 < 1)
  {
    if (result)
    {
      v21 = [a1 orderTypeIdentifier];
      v22 = sub_226D6E39C();
      v24 = v23;

      *(a2 + 24) = &type metadata for OrderWebServiceInvalidateTokenTask;
      result = sub_226C82888();
      *(a2 + 32) = result;
      *a2 = v22;
      *(a2 + 8) = v24;
      return result;
    }

    goto LABEL_8;
  }

  if (result)
  {
    v16 = [a1 updateSequenceNumber];
    result = [a1 propagateUpdateSequenceNumber];
    if (v16 != result)
    {
      v17 = [a1 updateTokenCount];
      v18 = [a1 updateTokenRefillDate];
      if (v18)
      {
        v19 = v18;
        sub_226D6D45C();

        v20 = sub_226D6D4AC();
        (*(*(v20 - 8) + 56))(v9, 0, 1, v20);
      }

      else
      {
        v20 = sub_226D6D4AC();
        (*(*(v20 - 8) + 56))(v9, 1, 1, v20);
      }

      v36 = *(v4 + 20);
      sub_226D6D4AC();
      result = (*(*(v20 - 8) + 56))(&v6[v36], 1, 1, v20);
      if ((v17 & 0x80000000) != 0)
      {
        __break(1u);
      }

      else
      {
        *v6 = v17;
        sub_226B3E298(v9, &v6[v36]);
        v37 = [a1 orderTypeIdentifier];
        v38 = sub_226D6E39C();
        v40 = v39;

        v41 = [a1 updateSequenceNumber];
        updated = type metadata accessor for OrderWebServicePropagateUpdateTask(0);
        *(a2 + 24) = updated;
        *(a2 + 32) = sub_226C94010(&qword_27D7A8928, type metadata accessor for OrderWebServicePropagateUpdateTask, &unk_226D7AA80);
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
        *boxed_opaque_existential_1 = v38;
        boxed_opaque_existential_1[1] = v40;
        boxed_opaque_existential_1[2] = v41;
        return sub_226C93FA8(v6, boxed_opaque_existential_1 + *(updated + 24), type metadata accessor for TokenBucket.State);
      }

      return result;
    }

LABEL_8:
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    return result;
  }

  v25 = [a1 orderTypeIdentifier];
  v26 = sub_226D6E39C();
  v28 = v27;

  v29 = [a1 requestTokenAttemptCount];
  v30 = [a1 lastRequestTokenAttemptDate];
  if (v30)
  {
    v31 = v30;
    sub_226D6D45C();

    v32 = sub_226D6D4AC();
    (*(*(v32 - 8) + 56))(v13, 0, 1, v32);
  }

  else
  {
    v33 = sub_226D6D4AC();
    (*(*(v33 - 8) + 56))(v13, 1, 1, v33);
  }

  v34 = type metadata accessor for OrderWebServiceRequestTokenTask(0);
  *(a2 + 24) = v34;
  *(a2 + 32) = sub_226C94010(&qword_27D7A8920, type metadata accessor for OrderWebServiceRequestTokenTask, &unk_226D7B098);
  v35 = __swift_allocate_boxed_opaque_existential_1(a2);
  *v35 = v26;
  v35[1] = v28;
  v35[2] = v29;
  return sub_226B72784(v13, v35 + *(v34 + 24));
}

BOOL sub_226C92BA4(void *a1)
{
  v2 = sub_226D6707C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226D68D6C();
  v6 = sub_226D6706C();
  (*(v3 + 8))(v5, v2);
  if ((v6 & 1) == 0 || [a1 countOfOrdersWithEffectiveAutomaticUpdatesEnabled] < 1)
  {
    return 0;
  }

  v7 = [a1 updateSequenceNumber];
  return v7 != [a1 fetchChangesSequenceNumber];
}

void sub_226C92CD4(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v61 - v8;
  v10 = sub_226D6D1AC();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v61 - v16;
  if ([a1 requestAttemptCount] > 19)
  {
    goto LABEL_15;
  }

  if (sub_226C92BA4(a1))
  {
    v18 = [a1 orderType];
    if (!v18)
    {
      __break(1u);
      return;
    }

    v19 = v18;
    v20 = [v18 deviceLibraryIdentifier];
    if (v20)
    {
      v21 = v20;
      v68 = sub_226D6E39C();
      v23 = v22;

      v24 = [v19 pushToken];
      if (v24)
      {
        v67 = v11;
        v25 = v24;
        v26 = sub_226D6D21C();
        v65 = v27;
        v66 = v26;

        v28 = [a1 baseURL];
        sub_226D6D14C();

        v29 = [a1 orderTypeIdentifier];
        v30 = sub_226D6E39C();
        v63 = v31;
        v64 = v30;

        v62 = [a1 updateSequenceNumber];
        v32 = [a1 lastModifiedValue];
        if (v32)
        {
          v33 = v32;
          v34 = sub_226D6E39C();
          v36 = v35;
        }

        else
        {
          v34 = 0;
          v36 = 0;
        }

        v50 = [a1 requestAttemptCount];
        v51 = [a1 lastRequestAttemptDate];
        if (v51)
        {
          v52 = v51;
          sub_226D6D45C();

          v53 = 0;
        }

        else
        {
          v53 = 1;
        }

        v54 = sub_226D6D4AC();
        (*(*(v54 - 8) + 56))(v9, v53, 1, v54);
        ChangesTask = type metadata accessor for OrderWebServiceFetchChangesTask(0);
        *(a2 + 24) = ChangesTask;
        *(a2 + 32) = sub_226C94010(&qword_27D7A86B8, type metadata accessor for OrderWebServiceFetchChangesTask, &unk_226D794F4);
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
        (*(v67 + 32))(boxed_opaque_existential_1, v17, v10);
        v57 = (boxed_opaque_existential_1 + ChangesTask[5]);
        *v57 = v68;
        v57[1] = v23;
        v58 = (boxed_opaque_existential_1 + ChangesTask[6]);
        v59 = v63;
        *v58 = v64;
        v58[1] = v59;
        *(boxed_opaque_existential_1 + ChangesTask[7]) = v62;
        v60 = (boxed_opaque_existential_1 + ChangesTask[8]);
        *v60 = v34;
        v60[1] = v36;
        *(boxed_opaque_existential_1 + ChangesTask[9]) = v50;
        sub_226B72784(v9, boxed_opaque_existential_1 + ChangesTask[10]);

        sub_226B11B98(v66, v65);
        return;
      }
    }

    else
    {
    }

LABEL_15:
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    return;
  }

  if ([a1 countOfLogEntries] < 1)
  {
    goto LABEL_15;
  }

  v37 = [a1 baseURL];
  sub_226D6D14C();

  v38 = [a1 orderTypeIdentifier];
  v39 = sub_226D6E39C();
  v41 = v40;

  v42 = [a1 requestAttemptCount];
  v43 = [a1 lastRequestAttemptDate];
  if (v43)
  {
    v44 = v43;
    sub_226D6D45C();

    v45 = 0;
  }

  else
  {
    v45 = 1;
  }

  v46 = sub_226D6D4AC();
  (*(*(v46 - 8) + 56))(v6, v45, 1, v46);
  v47 = type metadata accessor for OrderWebServiceLogTask(0);
  *(a2 + 24) = v47;
  *(a2 + 32) = sub_226C94010(&qword_27D7A88C8, type metadata accessor for OrderWebServiceLogTask, &unk_226D7A310);
  v48 = __swift_allocate_boxed_opaque_existential_1(a2);
  (*(v11 + 32))(v48, v13, v10);
  v49 = (v48 + v47[5]);
  *v49 = v39;
  v49[1] = v41;
  *(v48 + v47[6]) = v42;
  sub_226B72784(v6, v48 + v47[7]);
}

uint64_t sub_226C9327C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 orderWebService];
  if (v4)
  {
    v5 = v4;
    v6 = [a1 authenticationToken];
    if (v6)
    {
      v7 = v6;
      v8 = sub_226D6E39C();
      v10 = v9;

      v11 = [v5 baseURL];
      sub_226D6D14C();

      v12 = type metadata accessor for OrderWebServicePendingTaskSource.AutomaticUpdatesInfo(0);
      v13 = (a2 + *(v12 + 20));
      *v13 = v8;
      v13[1] = v10;
      v14 = *(*(v12 - 8) + 56);
      v15 = v12;
      v16 = a2;
      v17 = 0;
      goto LABEL_6;
    }

    v4 = 0;
  }

  v18 = type metadata accessor for OrderWebServicePendingTaskSource.AutomaticUpdatesInfo(v4);
  v14 = *(*(v18 - 8) + 56);
  v15 = v18;
  v16 = a2;
  v17 = 1;
LABEL_6:

  return v14(v16, v17, 1, v15);
}

id sub_226C933B8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v92 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v92 - v8;
  v10 = sub_226D6D1AC();
  v104 = *(v10 - 8);
  v105 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v92 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v92 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8910, &qword_226D7A458);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v92 - v17;
  v19 = type metadata accessor for OrderWebServicePendingTaskSource.AutomaticUpdatesInfo(0);
  v20 = *(v19 - 8);
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v92 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [a1 effectiveAutomaticUpdatesEnabled];
  if (!result)
  {
    goto LABEL_17;
  }

  sub_226C9327C(a1, v18);
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    result = sub_226C93D78(v18);
LABEL_14:
    *a2 = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0;
    return result;
  }

  sub_226C93FA8(v18, v23, type metadata accessor for OrderWebServicePendingTaskSource.AutomaticUpdatesInfo);
  result = [a1 orderType];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v25 = result;
  v26 = [result deviceLibraryIdentifier];
  if (!v26)
  {

LABEL_13:
    result = sub_226C93DE0(v23);
    goto LABEL_14;
  }

  v100 = v6;
  v27 = v26;
  v101 = sub_226D6E39C();
  v29 = v28;

  v30 = [v25 pushToken];
  if (!v30)
  {

    goto LABEL_13;
  }

  v31 = v30;
  v102 = v29;
  v32 = sub_226D6D21C();
  v103 = v33;

  if ([a1 requestAttemptCount] > 19)
  {
    sub_226C93DE0(v23);

    v47 = v32;
    v48 = v103;
LABEL_16:
    result = sub_226B11B98(v47, v48);
LABEL_17:
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    return result;
  }

  v34 = sub_226C93E3C(a1, v101, v102);
  v99 = v32;
  if (v34)
  {
    (*(v104 + 16))(v15, v23, v105);

    v35 = [a1 orderTypeIdentifier];
    v100 = sub_226D6E39C();
    v98 = v36;

    v37 = [a1 orderIdentifier];
    v38 = sub_226D6E39C();
    v96 = v39;
    v97 = v38;

    v40 = &v23[*(v19 + 20)];
    v41 = *(v40 + 1);
    v95 = *v40;

    v42 = v103;
    sub_226B11B44(v32, v103);
    v43 = [a1 requestAttemptCount];
    v44 = [a1 lastRequestAttemptDate];
    if (v44)
    {
      v45 = v44;
      sub_226D6D45C();

      v46 = 0;
    }

    else
    {
      v46 = 1;
    }

    sub_226C93DE0(v23);
    v62 = sub_226D6D4AC();
    (*(*(v62 - 8) + 56))(v9, v46, 1, v62);
    v63 = type metadata accessor for OrderWebServiceRegisterTask(0);
    *(a2 + 24) = v63;
    *(a2 + 32) = sub_226C94010(&qword_27D7A8918, type metadata accessor for OrderWebServiceRegisterTask, &unk_226D7ABE0);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
    (*(v104 + 32))(boxed_opaque_existential_1, v15, v105);
    v65 = (boxed_opaque_existential_1 + v63[5]);
    v66 = v102;
    *v65 = v101;
    v65[1] = v66;
    v67 = (boxed_opaque_existential_1 + v63[6]);
    v68 = v99;
    v69 = v97;
    v70 = v98;
    *v67 = v100;
    v67[1] = v70;
    v71 = (boxed_opaque_existential_1 + v63[7]);
    *v71 = v69;
    v72 = v95;
    v71[1] = v96;
    v73 = (boxed_opaque_existential_1 + v63[8]);
    *v73 = v72;
    v73[1] = v41;
    v74 = (boxed_opaque_existential_1 + v63[9]);
    *v74 = v68;
    v74[1] = v42;
    *(boxed_opaque_existential_1 + v63[10]) = v43;
    sub_226B72784(v9, boxed_opaque_existential_1 + v63[11]);

    return sub_226B11B98(v68, v42);
  }

  v49 = v103;
  v50 = [a1 updateSequenceNumber];
  if (v50 == [a1 fetchSequenceNumber])
  {
    sub_226C93DE0(v23);

    v47 = v99;
    v48 = v49;
    goto LABEL_16;
  }

  (*(v104 + 16))(v12, v23, v105);
  v51 = [a1 orderTypeIdentifier];
  v101 = sub_226D6E39C();
  v98 = v52;

  v53 = [a1 orderIdentifier];
  v54 = sub_226D6E39C();
  v96 = v55;
  v97 = v54;

  v56 = &v23[*(v19 + 20)];
  v57 = *(v56 + 1);
  v95 = *v56;

  v94 = [a1 updateSequenceNumber];
  v58 = [a1 lastModifiedValue];
  if (v58)
  {
    v59 = v58;
    v60 = sub_226D6E39C();
    v92 = v61;
    v93 = v60;
  }

  else
  {
    v92 = 0;
    v93 = 0;
  }

  v75 = v100;
  v76 = [a1 requestAttemptCount];
  v77 = [a1 lastRequestAttemptDate];
  if (v77)
  {
    v78 = v77;
    sub_226D6D45C();

    sub_226B11B98(v99, v103);

    sub_226C93DE0(v23);
    v79 = 0;
  }

  else
  {
    sub_226C93DE0(v23);

    sub_226B11B98(v99, v103);
    v79 = 1;
  }

  v80 = sub_226D6D4AC();
  (*(*(v80 - 8) + 56))(v75, v79, 1, v80);
  Task = type metadata accessor for OrderWebServiceFetchTask(0);
  *(a2 + 24) = Task;
  *(a2 + 32) = sub_226C94010(&qword_27D7A87C0, type metadata accessor for OrderWebServiceFetchTask, &unk_226D79910);
  v82 = __swift_allocate_boxed_opaque_existential_1(a2);
  (*(v104 + 32))(v82, v12, v105);
  v83 = (v82 + Task[5]);
  v84 = v97;
  v85 = v98;
  *v83 = v101;
  v83[1] = v85;
  v86 = (v82 + Task[6]);
  *v86 = v84;
  v87 = v95;
  v86[1] = v96;
  v88 = (v82 + Task[7]);
  *v88 = v87;
  v88[1] = v57;
  v89 = v93;
  *(v82 + Task[8]) = v94;
  v90 = (v82 + Task[9]);
  v91 = v92;
  *v90 = v89;
  v90[1] = v91;
  *(v82 + Task[10]) = v76;
  return sub_226B72784(v75, v82 + Task[11]);
}

uint64_t sub_226C93C24()
{

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for OrderWebServicePendingTaskSource.AutomaticUpdatesInfo(uint64_t a1)
{
  result = qword_27D7A8930;
  if (!qword_27D7A8930)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_226C93D78(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8910, &qword_226D7A458);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_226C93DE0(uint64_t a1)
{
  v2 = type metadata accessor for OrderWebServicePendingTaskSource.AutomaticUpdatesInfo(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

BOOL sub_226C93E3C(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = [a1 orderRegistration];
  if (!v6)
  {
    return 1;
  }

  v7 = v6;
  if ([v6 isMaybeRegistered])
  {
    goto LABEL_3;
  }

  v9 = [v7 deviceLibraryIdentifier];
  v10 = sub_226D6E39C();
  v12 = v11;

  if (v10 == a2 && v12 == a3)
  {
  }

  else
  {
    v14 = sub_226D6F21C();

    if ((v14 & 1) == 0)
    {
LABEL_3:

      return 1;
    }
  }

  v15 = [a1 orderWebService];
  v16 = [v7 orderWebService];
  v17 = v16;
  if (!v15)
  {

    if (v17)
    {

      return 1;
    }

    return 0;
  }

  if (!v16)
  {

    goto LABEL_3;
  }

  sub_226D69F6C();
  v18 = sub_226D6EC3C();

  return (v18 & 1) == 0;
}

uint64_t sub_226C93FA8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_226C94010(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_226C94080(uint64_t a1)
{
  result = sub_226D6D1AC();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_226C940F4()
{
  __swift_project_boxed_opaque_existential_1((v0 + 112), *(v0 + 136));
  sub_226D6BAAC();
  v1 = sub_226D676AC();

  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = v1;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_226C97D4C;
  *(v3 + 24) = v2;
  v7[4] = sub_226B1BA20;
  v7[5] = v3;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 1107296256;
  v7[2] = sub_226CAD254;
  v7[3] = &block_descriptor_15;
  v4 = _Block_copy(v7);

  v5 = v1;

  [v5 performBlockAndWait_];

  _Block_release(v4);
  LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

  if (v5)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_226C94290(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v83 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7218, &unk_226D74820);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v83 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v117 = &v83 - v10;
  v11 = sub_226D6BCBC();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v96 = &v83 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v105 = &v83 - v15;
  MEMORY[0x28223BE20](v16);
  v18 = &v83 - v17;
  v19 = sub_226D6BC9C();
  v103 = *(v19 + 16);
  if (!v103)
  {
  }

  v20 = v19;
  v110 = sub_226D69F0C();
  result = v20;
  v22 = 0;
  v23 = 0;
  v102 = v20 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
  v108 = v12 + 16;
  v101 = v12 + 88;
  v100 = *MEMORY[0x277CC8110];
  v104 = (v12 + 8);
  v94 = *MEMORY[0x277CC8120];
  v88 = *MEMORY[0x277CC8118];
  v90 = "dOrderNotifications";
  v95 = "externalAccountId";
  v86 = "accountMatchObject != nil";
  v85 = 0x8000000226D86610;
  v87 = "Object.fpanID MATCHES %@";
  v93 = "accountMatchObject == nil";
  v92 = "externalAccountId = nil";
  *(&v24 + 1) = 5;
  v106 = xmmword_226D71F40;
  *&v24 = 136315394;
  v89 = v24;
  v84 = xmmword_226D71F30;
  v83 = xmmword_226D70840;
  v97 = a2;
  v116 = v5;
  v113 = v8;
  v107 = v11;
  v99 = v12;
  v114 = v18;
  v98 = v20;
  while (v22 < *(result + 16))
  {
    v27 = *(v12 + 72);
    v109 = v22;
    v28 = *(v12 + 16);
    v28(v18, v102 + v27 * v22, v11);
    sub_226D6BD1C();
    swift_allocObject();
    v115 = sub_226D6BD0C();
    v111 = sub_226D69DDC();
    v29 = v105;
    v28(v105, v18, v11);
    v30 = (*(v12 + 88))(v29, v11);
    if (v30 == v100)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B70, &qword_226D73130);
      v31 = swift_allocObject();
      *(v31 + 16) = v106;
      v32 = swift_allocObject();
      *(v32 + 16) = v106;
      sub_226AE59B4(0, &qword_28105F4B8, 0x277CCAC30);
      *(v32 + 32) = sub_226D6E91C();
      *(v32 + 40) = sub_226D6E91C();
      v33 = sub_226D6E5CC();

      v34 = objc_opt_self();
      v35 = [v34 orPredicateWithSubpredicates_];

      *(v31 + 32) = v35;
      *(v31 + 40) = sub_226D6E91C();
      v36 = sub_226D6E5CC();

      v37 = [v34 andPredicateWithSubpredicates_];
LABEL_13:
      v42 = v37;

      goto LABEL_14;
    }

    if (v30 == v94)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B70, &qword_226D73130);
      v38 = swift_allocObject();
      *(v38 + 16) = v106;
      sub_226AE59B4(0, &qword_28105F4B8, 0x277CCAC30);
      *(v38 + 32) = sub_226D6E91C();
      *(v38 + 40) = sub_226D6E91C();
      v36 = sub_226D6E5CC();

      v37 = [objc_opt_self() andPredicateWithSubpredicates_];
      goto LABEL_13;
    }

    if (v30 == v88)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B70, &qword_226D73130);
      v39 = swift_allocObject();
      *(v39 + 16) = v84;
      sub_226AE59B4(0, &qword_28105F4B8, 0x277CCAC30);
      *(v39 + 32) = sub_226D6E91C();
      *(v39 + 40) = sub_226D6E91C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B80, &qword_226D73120);
      v40 = swift_allocObject();
      *(v40 + 16) = v83;
      *(v40 + 56) = MEMORY[0x277D837D0];
      *(v40 + 64) = sub_226B16404();
      v41 = v85;
      *(v40 + 32) = 0xD000000000000011;
      *(v40 + 40) = v41;
      *(v39 + 48) = sub_226D6E91C();
      v36 = sub_226D6E5CC();

      v37 = [objc_opt_self() andPredicateWithSubpredicates_];
      goto LABEL_13;
    }

    sub_226AE59B4(0, &qword_28105F4B8, 0x277CCAC30);
    v42 = sub_226D6E91C();
    (*v104)(v105, v11);
LABEL_14:
    [v111 setPredicate_];

    v43 = sub_226D6EBBC();
    if (v23)
    {
      v44 = v96;
      if (qword_28105F5D8 != -1)
      {
        swift_once();
      }

      v45 = sub_226D6E07C();
      __swift_project_value_buffer(v45, qword_28105F5E0);
      v18 = v114;
      v11 = v107;
      v28(v44, v114, v107);
      v46 = v23;
      v47 = v44;
      v48 = sub_226D6E05C();
      v49 = sub_226D6E9CC();

      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        v51 = swift_slowAlloc();
        v112 = swift_slowAlloc();
        v118 = v112;
        *v50 = v89;
        v52 = sub_226D6BCAC();
        v54 = v53;
        v55 = *v104;
        (*v104)(v47, v107);
        v56 = sub_226AC4530(v52, v54, &v118);

        *(v50 + 4) = v56;
        *(v50 + 12) = 2112;
        v57 = v23;
        v58 = _swift_stdlib_bridgeErrorToNSError();
        *(v50 + 14) = v58;
        *v51 = v58;
        _os_log_impl(&dword_226AB4000, v48, v49, "Failed to load accounts for account match issue reporting: %s: %@", v50, 0x16u);
        sub_226AC47B0(v51, &qword_27D7A5FB0, &qword_226D70870);
        MEMORY[0x22AA8BEE0](v51, -1, -1);
        v59 = v112;
        __swift_destroy_boxed_opaque_existential_0Tm(v112);
        v18 = v114;
        MEMORY[0x22AA8BEE0](v59, -1, -1);
        v11 = v107;
        MEMORY[0x22AA8BEE0](v50, -1, -1);

        v55(v18, v11);
        v8 = v113;
      }

      else
      {

        v25 = *v104;
        (*v104)(v44, v11);
        v25(v18, v11);
      }

      v23 = 0;
      v12 = v99;
      result = v98;
      v26 = v109;
      goto LABEL_5;
    }

    v60 = v43;
    if (!(v43 >> 62))
    {
      v61 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v61)
      {
        goto LABEL_41;
      }

      goto LABEL_21;
    }

    v82 = v43;
    if (sub_226D6EDFC() < 1)
    {
LABEL_41:
      v18 = v114;
      v11 = v107;
      (*v104)(v114, v107);

      v12 = v99;
      result = v98;
      v26 = v109;
      goto LABEL_5;
    }

    v91 = 0;
    result = sub_226D6EDFC();
    v60 = v82;
    if (result)
    {
      v61 = result;
      if (result < 1)
      {
        goto LABEL_47;
      }

      v23 = v91;
LABEL_21:
      v91 = v23;
      v62 = 0;
      v112 = (v60 & 0xC000000000000001);
      v63 = v60;
      do
      {
        if (v112)
        {
          v69 = MEMORY[0x22AA8AFD0](v62);
        }

        else
        {
          v69 = *(v60 + 8 * v62 + 32);
        }

        v70 = v69;
        v71 = [v69 institutionId];
        sub_226D6E39C();

        sub_226D69E5C();
        [v70 isAccountMismatched];
        v72 = [v70 accountMatchObject];
        if (v72)
        {
          v73 = v72;
          sub_226D68E3C();

          v74 = 0;
        }

        else
        {
          v74 = 1;
        }

        v75 = sub_226D68CBC();
        v76 = 1;
        (*(*(v75 - 8) + 56))(v8, v74, 1, v75);
        v77 = [v70 accountMatchObject];
        if (v77)
        {
          v78 = v77;
          v79 = [v77 lastUpdatedAt];

          v65 = v116;
          sub_226D6D45C();

          v76 = 0;
        }

        else
        {
          v65 = v116;
        }

        v80 = sub_226D6D4AC();
        (*(*(v80 - 8) + 56))(v65, v76, 1, v80);
        v81 = [v70 accountMatchObject];
        if (v81)
        {
          v64 = v81;
          [v81 isMismatched];

          v65 = v116;
        }

        ++v62;
        v66 = v113;
        v67 = v117;
        sub_226D6BCDC();

        v68 = v65;
        v8 = v66;
        sub_226AC47B0(v68, &qword_27D7A8BE0, &unk_226D718F0);
        sub_226AC47B0(v66, &qword_27D7A7218, &unk_226D74820);
        sub_226AC47B0(v67, &qword_27D7A7218, &unk_226D74820);
        v60 = v63;
      }

      while (v61 != v62);
    }

    v18 = v114;
    v11 = v107;
    (*v104)(v114, v107);
    v12 = v99;
    result = v98;
    v26 = v109;
    v23 = v91;
LABEL_5:
    v22 = v26 + 1;
    if (v22 == v103)
    {
    }
  }

  __break(1u);
LABEL_47:
  __break(1u);
  return result;
}

uint64_t sub_226C95100@<X0>(uint64_t a1@<X8>)
{
  v56 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6558, &qword_226D7CCE0);
  MEMORY[0x28223BE20](v1 - 8);
  v51 = v47 - v2;
  v3 = sub_226D6CD7C();
  v54 = *(v3 - 8);
  v55 = v3;
  MEMORY[0x28223BE20](v3);
  v49 = v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_226D6D6CC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v47 - v10;
  v12 = sub_226D6D4AC();
  v57 = *(v12 - 8);
  v58 = v12;
  MEMORY[0x28223BE20](v12);
  v48 = v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v47[1] = v47 - v15;
  MEMORY[0x28223BE20](v16);
  v50 = v47 - v17;
  MEMORY[0x28223BE20](v18);
  v20 = v47 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8008, &unk_226D77290);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = v47 - v22;
  v24 = sub_226D6D61C();
  v25 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v27 = v47 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_226D6D6DC();
  v52 = *(v28 - 8);
  v53 = v28;
  v29 = MEMORY[0x28223BE20](v28);
  v31 = v47 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v25 + 104))(v27, *MEMORY[0x277CC9830], v24, v29);
  sub_226D6D62C();
  (*(v25 + 8))(v27, v24);
  sub_226D6D64C();
  sub_226D6D6EC();
  v32 = sub_226D6D71C();
  result = (*(*(v32 - 8) + 48))(v23, 1, v32);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_226D6D6BC();
    v34 = *(v6 + 104);
    v34(v8, *MEMORY[0x277CC9968], v5);
    sub_226D6D68C();
    v35 = *(v6 + 8);
    v35(v8, v5);
    if ((*(v57 + 48))(v11, 1, v58) == 1)
    {
      (*(v52 + 8))(v31, v53);
      sub_226AC47B0(v11, &qword_27D7A8BE0, &unk_226D718F0);
      v36 = 1;
      v38 = v55;
      v37 = v56;
      v39 = v54;
    }

    else
    {
      (*(v57 + 32))(v20, v11, v58);
      v34(v8, *MEMORY[0x277CC9940], v5);
      v40 = v51;
      sub_226D6D63C();
      v35(v8, v5);
      v39 = v54;
      v38 = v55;
      if ((*(v54 + 48))(v40, 1, v55) == 1)
      {
        (*(v57 + 8))(v20, v58);
        (*(v52 + 8))(v31, v53);
        sub_226AC47B0(v40, &qword_27D7A6558, &qword_226D7CCE0);
        v36 = 1;
        v37 = v56;
      }

      else
      {
        v41 = v49;
        (*(v39 + 32))(v49, v40, v38);
        sub_226D6CD4C();
        v42 = v48;
        sub_226D6CD2C();
        sub_226D6D3DC();
        v43 = *(v57 + 8);
        v44 = v42;
        v45 = v58;
        v43(v44, v58);
        v46 = v56;
        sub_226D6CD3C();
        (*(v39 + 8))(v41, v38);
        v43(v20, v45);
        (*(v52 + 8))(v31, v53);
        v37 = v46;
        v36 = 0;
      }
    }

    return (*(v39 + 56))(v37, v36, 1, v38);
  }

  return result;
}

id sub_226C95844()
{
  v1 = __swift_project_boxed_opaque_existential_1((v0 + 112), *(v0 + 136));
  sub_226AE532C((v1 + 16), v25);
  v2 = v26;
  v3 = v27;
  __swift_project_boxed_opaque_existential_1(v25, v26);
  (*(v3 + 8))(&v24, v2, v3);
  v4 = BankConnectPaymentPassDataSource.paymentPasses()();

  __swift_destroy_boxed_opaque_existential_0Tm(v25);
  v25[0] = MEMORY[0x277D84F90];
  if (v4 >> 62)
  {
    goto LABEL_42;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_226D6EDFC())
  {
    v6 = MEMORY[0x277D84F90];
    if (i)
    {
      v7 = 0;
      while (1)
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v8 = MEMORY[0x22AA8AFD0](v7, v4);
          v9 = v7 + 1;
          if (__OFADD__(v7, 1))
          {
LABEL_20:
            __break(1u);
LABEL_21:
            v14 = v25[0];
            v6 = MEMORY[0x277D84F90];
            goto LABEL_23;
          }
        }

        else
        {
          if (v7 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_40;
          }

          v8 = *(v4 + 8 * v7 + 32);
          v9 = v7 + 1;
          if (__OFADD__(v7, 1))
          {
            goto LABEL_20;
          }
        }

        v10 = v8;
        if ([v10 cardType] == 1)
        {
          v11 = [v10 isEMoneyPass] ^ 1;
        }

        else
        {
          v11 = 0;
        }

        v12 = [v10 hasAssociatedPeerPaymentAccount];
        v13 = [v10 associatedAccountServiceAccountIdentifier];

        if (v13)
        {
        }

        else if (v11 && (v12 & 1) == 0)
        {
          sub_226D6EF6C();
          sub_226D6EF9C();
          sub_226D6EFAC();
          sub_226D6EF7C();
        }

        else
        {
        }

        ++v7;
        if (v9 == i)
        {
          goto LABEL_21;
        }
      }
    }

    v14 = MEMORY[0x277D84F90];
LABEL_23:

    v25[0] = v6;

    v4 = *(v14 + 16);
    if (!v4)
    {
      goto LABEL_44;
    }

LABEL_26:
    v15 = 0;
    while (1)
    {
      if ((v14 & 0xC000000000000001) != 0)
      {
        v16 = MEMORY[0x22AA8AFD0](v15, v14);
      }

      else
      {
        if (v15 >= *(v14 + 16))
        {
          goto LABEL_41;
        }

        v16 = *(v14 + 8 * v15 + 32);
      }

      v17 = v16;
      v18 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      v19 = [v16 devicePrimaryPaymentApplication];
      if (!v19)
      {
        goto LABEL_27;
      }

      result = [v17 devicePrimaryPaymentApplication];
      if (!result)
      {
        __break(1u);
        return result;
      }

      v21 = result;
      v22 = [result state];

      if (v22 == 1)
      {
        sub_226D6EF6C();
        sub_226D6EF9C();
        sub_226D6EFAC();
        sub_226D6EF7C();
      }

      else
      {
LABEL_27:
      }

      ++v15;
      if (v18 == v4)
      {
        v23 = v25[0];
        goto LABEL_45;
      }
    }

LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    ;
  }

  v4 = sub_226D6EDFC();
  if (v4)
  {
    goto LABEL_26;
  }

LABEL_44:
  v23 = MEMORY[0x277D84F90];
LABEL_45:

  return v23;
}

uint64_t sub_226C95B98(unint64_t a1, uint64_t a2)
{
  v5 = sub_226D6D52C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226D6D51C();
  v46 = v2;
  if (a1 >> 62)
  {
    v9 = sub_226D6EDFC();
  }

  else
  {
    v9 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v10 = MEMORY[0x277D84F90];
  if (!v9)
  {
LABEL_16:
    v28 = v46;
    __swift_project_boxed_opaque_existential_1((v46 + 112), *(v46 + 136));
    sub_226D6BAAC();
    v29 = sub_226D676AC();

    MEMORY[0x28223BE20](v30);
    *(&v41 - 6) = v29;
    *(&v41 - 5) = v28;
    *(&v41 - 4) = v10;
    *(&v41 - 3) = a2;
    *(&v41 - 2) = a1;
    *(&v41 - 1) = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8760, &unk_226D79760);
    sub_226D6EB8C();

    v39 = v47;
    (*(v6 + 8))(v8, v5);
    return v39;
  }

  v47 = MEMORY[0x277D84F90];
  sub_226AE1D68(0, v9 & ~(v9 >> 63), 0);
  if ((v9 & 0x8000000000000000) == 0)
  {
    v42 = a2;
    v43 = v6;
    v44 = v8;
    v45 = v5;
    v10 = v47;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v11 = 0;
      do
      {
        MEMORY[0x22AA8AFD0](v11, a1);
        v12 = [swift_unknownObjectRetain() primaryAccountIdentifier];
        v13 = sub_226D6E39C();
        v15 = v14;
        swift_unknownObjectRelease_n();

        v47 = v10;
        v17 = *(v10 + 16);
        v16 = *(v10 + 24);
        if (v17 >= v16 >> 1)
        {
          sub_226AE1D68((v16 > 1), v17 + 1, 1);
          v10 = v47;
        }

        ++v11;
        *(v10 + 16) = v17 + 1;
        v18 = v10 + 16 * v17;
        *(v18 + 32) = v13;
        *(v18 + 40) = v15;
      }

      while (v9 != v11);
    }

    else
    {
      v19 = (a1 + 32);
      do
      {
        v20 = *v19;
        v21 = [v20 primaryAccountIdentifier];
        v22 = sub_226D6E39C();
        v24 = v23;

        v47 = v10;
        v26 = *(v10 + 16);
        v25 = *(v10 + 24);
        if (v26 >= v25 >> 1)
        {
          sub_226AE1D68((v25 > 1), v26 + 1, 1);
          v10 = v47;
        }

        *(v10 + 16) = v26 + 1;
        v27 = v10 + 16 * v26;
        *(v27 + 32) = v22;
        *(v27 + 40) = v24;
        ++v19;
        --v9;
      }

      while (v9);
    }

    v8 = v44;
    v5 = v45;
    a2 = v42;
    v6 = v43;
    goto LABEL_16;
  }

  __break(1u);
  swift_once();
  v31 = sub_226D6E07C();
  __swift_project_value_buffer(v31, qword_28105F5E0);
  v32 = a1;
  v33 = sub_226D6E05C();
  v34 = sub_226D6E9CC();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    *v35 = 138412290;
    v37 = a1;
    v38 = _swift_stdlib_bridgeErrorToNSError();
    *(v35 + 4) = v38;
    *v36 = v38;
    _os_log_impl(&dword_226AB4000, v33, v34, "Failed to create payment pass events: %@", v35, 0xCu);
    sub_226AC47B0(v36, &qword_27D7A5FB0, &qword_226D70870);
    MEMORY[0x22AA8BEE0](v36, -1, -1);
    MEMORY[0x22AA8BEE0](v35, -1, -1);
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_226C96040@<X0>(void *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, unint64_t a4@<X4>, uint64_t a5@<X5>, void *a6@<X8>)
{
  v24[1] = *MEMORY[0x277D85DE8];
  v13 = [objc_opt_self() currentQueryGenerationToken];
  v24[0] = 0;
  v14 = [a1 setQueryGenerationFromToken:v13 error:v24];

  if (v14)
  {
    v15 = v24[0];
    result = sub_226C96D28(a2);
    if (!v6)
    {
      v17 = result;
      sub_226C97148(a2, a3, a1);
      MEMORY[0x28223BE20](v19);
      v23[2] = v17;
      v23[3] = v20;
      v23[4] = a5;
      v23[5] = a3;
      sub_226C419A8(sub_226C97C84, v23, a4);
      v22 = v21;

      *a6 = v22;
    }
  }

  else
  {
    v18 = v24[0];
    sub_226D6D04C();

    return swift_willThrow();
  }

  return result;
}

id sub_226C961F8@<X0>(id *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v11 = *a1;
  v12 = [*a1 primaryAccountIdentifier];
  v13 = sub_226D6E39C();
  v15 = v14;

  v16 = sub_226D4D7A0(v13, v15, a2);
  if (!*(a3 + 16))
  {

    goto LABEL_5;
  }

  v17 = sub_226C2FDD4(v13, v15);
  v19 = v18;

  if ((v19 & 1) == 0)
  {
LABEL_5:
    v20 = 0;
    goto LABEL_6;
  }

  v20 = *(*(a3 + 56) + 8 * v17);
LABEL_6:
  v21 = _s28WeeklyTransactionsCountEventVMa(0);
  a6[3] = v21;
  a6[4] = sub_226C97CF4();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a6);
  v23 = v21[5];
  v24 = sub_226D6D52C();
  (*(*(v24 - 8) + 16))(boxed_opaque_existential_1 + v23, a4, v24);
  v25 = v21[6];
  v26 = sub_226D6CD7C();
  (*(*(v26 - 8) + 16))(boxed_opaque_existential_1 + v25, a5, v26);
  *boxed_opaque_existential_1 = 0xD00000000000002BLL;
  boxed_opaque_existential_1[1] = 0x8000000226D86460;
  *(boxed_opaque_existential_1 + v21[7]) = v11;
  *(boxed_opaque_existential_1 + v21[8]) = v16 & 1;
  *(boxed_opaque_existential_1 + v21[9]) = v20;
  return v11;
}

void sub_226C963B4()
{
  v36 = sub_226D6D52C();
  v35 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v34 = v30 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_226D6D4AC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = _s28WeeklyTransactionsCountEventVMa(0);
  v37 = *(v0 + *(v6 + 28));
  v7 = [v37 devicePrimaryPaymentApplication];
  v8 = v7;
  if (v7)
  {
    [v7 paymentNetworkIdentifier];
  }

  v9 = 0x6E776F6E6B6E75;
  v10 = PKPaymentNetworkNameForPaymentCredentialType();
  if (v10)
  {
    v11 = v10;
    v32 = sub_226D6E39C();
    v13 = v12;

    if (!v8)
    {
      goto LABEL_7;
    }

    goto LABEL_5;
  }

  v13 = 0xE700000000000000;
  v32 = 0x6E776F6E6B6E75;
  if (v8)
  {
LABEL_5:
    [v8 paymentType];
  }

LABEL_7:
  v14 = PKPaymentMethodTypeToString();
  if (v14)
  {
    v15 = v14;
    v9 = sub_226D6E39C();
    v30[0] = v16;
  }

  else
  {
    v30[0] = 0xE700000000000000;
  }

  v33 = v13;
  v30[1] = v9;
  v31 = v8;
  if (qword_27D7A5FA0 != -1)
  {
    swift_once();
  }

  v17 = qword_27D7B6200;
  v38 = v6;
  sub_226D6CD4C();
  v18 = sub_226D6D3EC();
  v19 = *(v3 + 8);
  v19(v5, v2);
  v20 = [v17 stringFromDate_];

  if (!v20)
  {
    __break(1u);
    goto LABEL_17;
  }

  sub_226D6CD2C();
  v21 = sub_226D6D3EC();
  v19(v5, v2);
  v22 = [v17 stringFromDate_];

  if (!v22)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8CE0, qword_226D771A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_226D7A480;
  *(inited + 32) = 0x444972657375;
  *(inited + 40) = 0xE600000000000000;
  sub_226D6D4CC();
  *(inited + 48) = sub_226D6E36C();
  *(inited + 56) = 0x444964726163;
  *(inited + 64) = 0xE600000000000000;
  v24 = v34;
  sub_226D6D51C();
  sub_226D6D4CC();
  (*(v35 + 8))(v24, v36);
  *(inited + 72) = sub_226D6E36C();
  *(inited + 80) = 0xD000000000000011;
  *(inited + 88) = 0x8000000226D866E0;
  *(inited + 96) = v20;
  *(inited + 104) = 0x655074726F706572;
  *(inited + 112) = 0xEF646E45646F6972;
  *(inited + 120) = v22;
  strcpy((inited + 128), "paymentNetwork");
  *(inited + 143) = -18;
  v25 = v22;
  v26 = v20;
  *(inited + 144) = sub_226D6E36C();
  *(inited + 152) = 0x726575737369;
  *(inited + 160) = 0xE600000000000000;
  v27 = [v37 organizationName];
  if (v27)
  {
    v28 = v27;

    *(inited + 168) = v28;
    *(inited + 176) = 0xD000000000000011;
    *(inited + 184) = 0x8000000226D86700;
    v29 = sub_226D6E36C();

    *(inited + 192) = v29;
    *(inited + 200) = 0x63656E6E6F437369;
    *(inited + 208) = 0xEF64726143646574;
    *(inited + 216) = sub_226D6E6BC();
    *(inited + 224) = 0xD000000000000010;
    *(inited + 232) = 0x8000000226D86560;
    *(inited + 240) = sub_226D6E8EC();
    sub_226B224E8(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A77D8, &qword_226D75660);
    swift_arrayDestroy();

    return;
  }

LABEL_18:
  __break(1u);
}

uint64_t sub_226C96998()
{
  sub_226D6EEFC();
  MEMORY[0x22AA8A510](0xD000000000000031, 0x8000000226D86720);
  MEMORY[0x22AA8A510](*v0, v0[1]);
  MEMORY[0x22AA8A510](0xD000000000000014, 0x8000000226D86760);
  sub_226C963B4();
  sub_226AE59B4(0, &qword_27D7A6580, 0x277D82BB8);
  v1 = sub_226D6E2CC();
  v3 = v2;

  MEMORY[0x22AA8A510](v1, v3);

  return 0;
}

id sub_226C96AA0()
{
  result = sub_226C96AC0();
  qword_27D7B6200 = result;
  return result;
}

id sub_226C96AC0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8008, &unk_226D77290);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v13 - v1;
  v3 = sub_226D6D5DC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  sub_226D6D53C();
  v8 = sub_226D6D55C();
  (*(v4 + 8))(v6, v3);
  [v7 setLocale_];

  sub_226D6D6EC();
  v9 = sub_226D6D71C();
  v10 = *(v9 - 8);
  result = (*(v10 + 48))(v2, 1, v9);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v12 = sub_226D6D6FC();
    (*(v10 + 8))(v2, v9);
    [v7 setTimeZone_];

    [v7 setDateStyle_];
    [v7 setTimeStyle_];
    return v7;
  }

  return result;
}

uint64_t sub_226C96D28(uint64_t a1)
{
  v2 = v1;
  sub_226D69F0C();
  v4 = sub_226D69E8C();
  sub_226AE59B4(0, &qword_28105F4B8, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B80, &qword_226D73120);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_226D70840;
  *(v5 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A5FC0, &unk_226D75DC0);
  *(v5 + 64) = sub_226C64634();
  *(v5 + 32) = a1;

  v6 = sub_226D6E91C();
  [v4 setPredicate_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6200, &unk_226D70C30);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_226D70840;
  *(v7 + 56) = MEMORY[0x277D837D0];
  v8 = 0x8000000226D86610;
  *(v7 + 32) = 0xD000000000000011;
  *(v7 + 40) = 0x8000000226D86610;
  v9 = sub_226D6E5CC();

  [v4 setPropertiesToFetch_];

  sub_226AE59B4(0, &qword_27D7A7178, 0x277CBEAC0);
  v10 = sub_226D6EBBC();
  v11 = v1;
  if (!v1)
  {
    v12 = v10;
    if (v10 >> 62)
    {
LABEL_30:
      v28 = v12 & 0xFFFFFFFFFFFFFF8;
      v13 = sub_226D6EDFC();
      if (v13)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v28 = v10 & 0xFFFFFFFFFFFFFF8;
      v13 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v13)
      {
LABEL_5:
        v14 = v8;
        v8 = 0;
        v15 = MEMORY[0x277D84F90];
        v26 = v11;
        v27 = v4;
        while (1)
        {
          v34 = v15;
          v16 = v8;
          while (1)
          {
            if ((v12 & 0xC000000000000001) != 0)
            {
              v17 = MEMORY[0x22AA8AFD0](v16, v12);
            }

            else
            {
              if (v16 >= *(v28 + 16))
              {
                goto LABEL_29;
              }

              v17 = *(v12 + 8 * v16 + 32);
            }

            v11 = v17;
            v8 = v16 + 1;
            if (__OFADD__(v16, 1))
            {
              __break(1u);
LABEL_29:
              __break(1u);
              goto LABEL_30;
            }

            *&v29 = 0xD000000000000011;
            *(&v29 + 1) = v14;
            v4 = [v17 __swift_objectForKeyedSubscript_];
            swift_unknownObjectRelease();
            if (v4)
            {
              sub_226D6ED0C();
              swift_unknownObjectRelease();
            }

            else
            {

              v29 = 0u;
              v30 = 0u;
            }

            v31[0] = v29;
            v31[1] = v30;
            if (*(&v30 + 1))
            {
              break;
            }

            sub_226AC47B0(v31, &unk_27D7A8BB0, &unk_226D74340);
LABEL_8:
            ++v16;
            if (v8 == v13)
            {
              v4 = v27;
              v15 = v34;
              goto LABEL_32;
            }
          }

          if ((swift_dynamicCast() & 1) == 0)
          {
            goto LABEL_8;
          }

          v4 = v33;
          if (!v33)
          {
            goto LABEL_8;
          }

          v18 = v32;
          v19 = v34;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v19 = sub_226BBAB0C(0, *(v19 + 2) + 1, 1, v19);
          }

          v22 = *(v19 + 2);
          v21 = *(v19 + 3);
          v23 = v19;
          if (v22 >= v21 >> 1)
          {
            v23 = sub_226BBAB0C((v21 > 1), v22 + 1, 1, v19);
          }

          *(v23 + 2) = v22 + 1;
          v24 = &v23[16 * v22];
          v15 = v23;
          *(v24 + 4) = v18;
          *(v24 + 5) = v4;
          v11 = v26;
          v4 = v27;
          if (v8 == v13)
          {
LABEL_32:

            v2 = sub_226AE3C28(v15);

            return v2;
          }
        }
      }
    }

    v15 = MEMORY[0x277D84F90];
    goto LABEL_32;
  }

  return v2;
}

void sub_226C97148(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v64 = a3;
  v68 = a2;
  v66 = sub_226D6D4AC();
  v76 = *(v66 - 1);
  MEMORY[0x28223BE20](v66);
  v60 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B70, &qword_226D73130);
  v67 = swift_allocObject();
  *(v67 + 16) = xmmword_226D72B90;
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_226D71F40;
  v62 = sub_226AE59B4(0, &qword_28105F4B8, 0x277CCAC30);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B80, &qword_226D73120);
  v7 = swift_allocObject();
  v69 = xmmword_226D70840;
  *(v7 + 16) = xmmword_226D70840;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A5FC0, &unk_226D75DC0);
  *(v7 + 56) = v8;
  v9 = sub_226C64634();
  *(v7 + 64) = v9;
  *(v7 + 32) = a1;

  *(v5 + 32) = sub_226D6E91C();
  v61 = v6;
  v10 = swift_allocObject();
  *(v10 + 16) = v69;
  *(v10 + 56) = v8;
  *(v10 + 64) = v9;
  *(v10 + 32) = a1;

  *(v5 + 40) = sub_226D6E91C();
  v11 = sub_226D6E5CC();

  v63 = objc_opt_self();
  v12 = [v63 orPredicateWithSubpredicates_];

  v13 = v67;
  *(v67 + 32) = v12;
  v14 = swift_allocObject();
  *(v14 + 16) = v69;
  v15 = v60;
  sub_226D6CD4C();
  v16 = sub_226D6D3EC();
  v17 = v76[1];
  ++v76;
  v18 = v66;
  v17(v15, v66);
  v19 = sub_226AE59B4(0, &qword_28105F410, 0x277CBEAA8);
  *(v14 + 56) = v19;
  v20 = sub_226C19454();
  *(v14 + 64) = v20;
  *(v14 + 32) = v16;
  *(v13 + 40) = sub_226D6E91C();
  v21 = swift_allocObject();
  *(v21 + 16) = v69;
  sub_226D6CD2C();
  v22 = sub_226D6D3EC();
  v17(v15, v18);
  *(v21 + 56) = v19;
  *(v21 + 64) = v20;
  *(v21 + 32) = v22;
  v23 = sub_226D6E91C();
  v24 = v67;
  *(v67 + 48) = v23;
  *(v24 + 56) = sub_226D6E91C();
  sub_226D6AC0C();
  v25 = sub_226D6AB7C();
  v66 = v25;
  v26 = sub_226D6E5CC();

  v27 = [v63 andPredicateWithSubpredicates_];

  [v25 setPredicate_];
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6200, &unk_226D70C30);
  v28 = swift_allocObject();
  *(v28 + 16) = v69;
  v29 = objc_opt_self();
  v30 = [v29 expressionForEvaluatedObject];
  *(v28 + 56) = sub_226AE59B4(0, &unk_27D7A8C60, 0x277CCA9C0);
  *(v28 + 32) = v30;
  v31 = sub_226D6E36C();
  v32 = sub_226D6E5CC();

  v33 = [v29 expressionForFunction:v31 arguments:v32];

  v34 = [objc_allocWithZone(MEMORY[0x277CBE410]) init];
  v63 = 0x8000000226D86560;
  v35 = sub_226D6E36C();
  [v34 setName_];

  *&v69 = v33;
  [v34 setExpression_];
  [v34 setExpressionResultType_];
  v67 = 0x8000000226D86580;
  v36 = 0x8000000226D865D0;
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_226D71190;
  v38 = MEMORY[0x277D837D0];
  *(v37 + 32) = 0xD000000000000024;
  *(v37 + 40) = 0x8000000226D86580;
  *(v37 + 56) = v38;
  *(v37 + 64) = 0xD000000000000017;
  *(v37 + 72) = 0x8000000226D865B0;
  *(v37 + 120) = v38;
  *(v37 + 88) = v38;
  *(v37 + 96) = 0xD00000000000001FLL;
  *(v37 + 104) = 0x8000000226D865D0;
  *(v37 + 152) = sub_226AE59B4(0, &qword_27D7A8948, 0x277CBE410);
  *(v37 + 128) = v34;
  v76 = v34;
  v39 = sub_226D6E5CC();

  v40 = v66;
  [v66 setPropertiesToFetch_];

  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_226D72130;
  *(v41 + 32) = 0xD000000000000024;
  v42 = v40;
  *(v41 + 40) = v67;
  *(v41 + 56) = v38;
  *(v41 + 64) = 0xD000000000000017;
  *(v41 + 72) = 0x8000000226D865B0;
  *(v41 + 120) = v38;
  *(v41 + 88) = v38;
  *(v41 + 96) = 0xD00000000000001FLL;
  *(v41 + 104) = 0x8000000226D865D0;
  v43 = sub_226D6E5CC();

  [v42 setPropertiesToGroupBy_];

  sub_226AE59B4(0, &qword_27D7A7178, 0x277CBEAC0);
  v44 = v65;
  v45 = sub_226D6EBBC();
  if (v44)
  {

    return;
  }

  v46 = v45;
  v64 = 0;
  v68 = 0x8000000226D865B0;
  if (v45 >> 62)
  {
LABEL_44:
    v67 = v46 & 0xFFFFFFFFFFFFFF8;
    v47 = sub_226D6EDFC();
  }

  else
  {
    v67 = v45 & 0xFFFFFFFFFFFFFF8;
    v47 = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v48 = v69;
  v49 = v76;
  if (!v47)
  {
    v65 = MEMORY[0x277D84F98];
    goto LABEL_40;
  }

  v62 = v36;
  v36 = 0;
  v65 = MEMORY[0x277D84F98];
  while (2)
  {
    v42 = v36;
    while (1)
    {
      if ((v46 & 0xC000000000000001) != 0)
      {
        v50 = MEMORY[0x22AA8AFD0](v42, v46);
      }

      else
      {
        if (v42 >= *(v67 + 16))
        {
          goto LABEL_43;
        }

        v50 = *(v46 + 8 * v42 + 32);
      }

      v51 = v50;
      v36 = v42 + 1;
      if (__OFADD__(v42, 1))
      {
        __break(1u);
LABEL_43:
        __break(1u);
        goto LABEL_44;
      }

      *&v72 = 0xD000000000000017;
      *(&v72 + 1) = v68;
      v52 = [v50 __swift_objectForKeyedSubscript_];
      swift_unknownObjectRelease();
      if (v52)
      {
        sub_226D6ED0C();
        swift_unknownObjectRelease();
      }

      else
      {
        v72 = 0u;
        v73 = 0u;
      }

      v74 = v72;
      v75 = v73;
      if (*(&v73 + 1))
      {
        break;
      }

      sub_226AC47B0(&v74, &unk_27D7A8BB0, &unk_226D74340);
LABEL_9:

      ++v42;
      v48 = v69;
      v49 = v76;
      if (v36 == v47)
      {
        v42 = v66;
        goto LABEL_40;
      }
    }

    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_9;
    }

    v60 = v70;
    v61 = v71;
    *&v74 = 0xD00000000000001FLL;
    *(&v74 + 1) = v62;
    v53 = [v51 __swift_objectForKeyedSubscript_];
    swift_unknownObjectRelease();
    if (v53)
    {
      sub_226D6ED0C();
      swift_unknownObjectRelease();
    }

    else
    {
      v72 = 0u;
      v73 = 0u;
    }

    v74 = v72;
    v75 = v73;
    if (*(&v73 + 1))
    {
      if (swift_dynamicCast())
      {
        v54 = v71;
        v60 = v70;

        v61 = v54;
      }
    }

    else
    {
      sub_226AC47B0(&v74, &unk_27D7A8BB0, &unk_226D74340);
    }

    *&v74 = 0xD000000000000010;
    *(&v74 + 1) = v63;
    v55 = [v51 __swift_objectForKeyedSubscript_];
    swift_unknownObjectRelease();
    if (v55)
    {
      sub_226D6ED0C();
      swift_unknownObjectRelease();
    }

    else
    {
      v72 = 0u;
      v73 = 0u;
    }

    v56 = v65;
    v74 = v72;
    v75 = v73;
    if (!*(&v73 + 1))
    {
      sub_226AC47B0(&v74, &unk_27D7A8BB0, &unk_226D74340);
      goto LABEL_35;
    }

    if ((swift_dynamicCast() & 1) == 0)
    {
LABEL_35:
      v57 = 0;
      goto LABEL_36;
    }

    v57 = v70;
LABEL_36:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v74 = v56;
    sub_226BE6B3C(v57, v60, v61, isUniquelyReferenced_nonNull_native);

    v65 = v74;
    v42 = v66;
    v48 = v69;
    v49 = v76;
    if (v36 != v47)
    {
      continue;
    }

    break;
  }

LABEL_40:
}

uint64_t _s28WeeklyTransactionsCountEventVMa(uint64_t a1)
{
  result = qword_27D7A8950;
  if (!qword_27D7A8950)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_226C97CF4()
{
  result = qword_27D7A8940;
  if (!qword_27D7A8940)
  {
    _s28WeeklyTransactionsCountEventVMa(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A8940);
  }

  return result;
}

uint64_t block_copy_helper_15(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_226C97D94(uint64_t a1)
{
  result = sub_226D6D52C();
  if (v2 <= 0x3F)
  {
    result = sub_226D6CD7C();
    if (v3 <= 0x3F)
    {
      result = sub_226AE59B4(319, &qword_27D7A8960, 0x277D38080);
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_226C97E78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v62 = a2;
  v57 = type metadata accessor for WebServicePendingTasksRetryState.TaskState(0);
  v56 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v55 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v64 = (&v54 - v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v54 - v13;
  v15 = sub_226D6D4AC();
  MEMORY[0x28223BE20](v15);
  v61 = &v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v60 = &v54 - v18;
  v21.n128_f64[0] = MEMORY[0x28223BE20](v19);
  v23 = &v54 - v22;
  v24 = *(a1 + 16);
  if (v24)
  {
    v54 = a4;
    v72 = v20;
    sub_226D6D3AC();
    v25 = a1 + 32;
    v58 = (v72 + 56);
    v66 = (v72 + 48);
    v63 = (v72 + 32);
    v65 = (v72 + 8);
    v59 = (v72 + 16);
    v68 = v14;
    v69 = v15;
    v67 = v23;
    do
    {
      v71 = v25;
      v72 = v24;
      sub_226AE532C(v25, v74);
      v26 = v75;
      v27 = v76;
      __swift_project_boxed_opaque_existential_1(v74, v75);
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      v70 = &v54;
      v29 = *(AssociatedTypeWitness - 8);
      v30 = *(v29 + 64);
      v31 = MEMORY[0x28223BE20](AssociatedTypeWitness);
      v32 = (*(v27 + 56))(v26, v27, v31);
      v33 = MEMORY[0x28223BE20](v32);
      (*(v29 + 32))(&v54 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0), &v54 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0), AssociatedTypeWitness, v33);
      swift_getAssociatedConformanceWitness();
      sub_226D6EE8C();
      if (*(a3 + 16) && (v34 = sub_226C2FE4C(v73), (v35 & 1) != 0))
      {
        v36 = v55;
        sub_226C9B568(*(a3 + 56) + *(v56 + 72) * v34, v55);
        sub_226AE5030(v73);
        v37 = v36;
        v38 = v64;
        sub_226C9B628(v37, v64);
        v39 = v68;
        if (*v38 >= 1)
        {
          exp2((*v38 - 1));
        }

        v42 = v69;
        v43 = v67;
        v44 = v64;
        sub_226D6D3DC();
        sub_226C9B5CC(v44);
        (*v58)(v39, 0, 1, v42);
      }

      else
      {
        sub_226AE5030(v73);
        v40 = v75;
        v41 = v76;
        __swift_project_boxed_opaque_existential_1(v74, v75);
        v39 = v68;
        (*(v41 + 72))(v40, v41);
        v42 = v69;
        v43 = v67;
      }

      __swift_destroy_boxed_opaque_existential_0Tm(v74);
      if ((*v66)(v39, 1, v42) == 1)
      {
        (*v65)(v43, v42);
        sub_226AC47B0(v39, &qword_27D7A8BE0, &unk_226D718F0);
        (*v59)(v43, v62, v42);
      }

      else
      {
        v45 = *v63;
        v46 = v60;
        (*v63)(v60, v39, v42);
        sub_226C9B8E8(&qword_27D7A66D8, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
        v47 = sub_226D6E32C();
        v48 = (v47 & 1) == 0;
        if (v47)
        {
          v49 = v43;
        }

        else
        {
          v49 = v46;
        }

        if (v48)
        {
          v46 = v43;
        }

        (*v65)(v49, v42);
        v50 = v61;
        v45(v61, v46, v42);
        v45(v43, v50, v42);
      }

      v25 = v71 + 40;
      v24 = v72 - 1;
    }

    while (v72 != 1);
    v51 = v54;
    (*v63)(v54, v43, v42);
    return (*v58)(v51, 0, 1, v42);
  }

  else
  {
    v53 = *(v20 + 56);

    return v53(a4, 1, 1, v15, v21);
  }
}

uint64_t sub_226C985A4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v31 = a3;
  v30 = type metadata accessor for WebServicePendingTasksRetryState.TaskState(0);
  v27 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v28 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v29 = (&v27 - v9);
  v10 = a1[3];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v10);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = *(AssociatedTypeWitness - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v16 = (*(v11 + 56))(v10, v11, v15);
  v17 = MEMORY[0x28223BE20](v16);
  (*(v13 + 32))(&v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), AssociatedTypeWitness, v17);
  swift_getAssociatedConformanceWitness();
  sub_226D6EE8C();
  if (*(a2 + 16) && (v18 = sub_226C2FE4C(v32), (v19 & 1) != 0))
  {
    v20 = v28;
    sub_226C9B568(*(a2 + 56) + *(v27 + 72) * v18, v28);
    sub_226AE5030(v32);
    v21 = v29;
    sub_226C9B628(v20, v29);
    if (*v21 >= 1)
    {
      exp2((*v21 - 1));
    }

    v25 = v31;
    sub_226D6D3DC();
    sub_226C9B5CC(v21);
    v26 = sub_226D6D4AC();
    return (*(*(v26 - 8) + 56))(v25, 0, 1, v26);
  }

  else
  {
    sub_226AE5030(v32);
    v22 = a1[3];
    v23 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v22);
    return (*(v23 + 72))(v22, v23);
  }
}

uint64_t sub_226C988E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v27 - v11;
  v13 = sub_226D6D4AC();
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*v5 < v5[1] && (v28 = a1, v29 = v14, v27 = a2, (*(a4 + 64))(a3, a4, v15), v18 = v5[2], swift_getAssociatedTypeWitness(), swift_getAssociatedConformanceWitness(), v19 = sub_226D6EE5C(), , sub_226C99964(v19, v18), v21 = v20, , (v21 & 1) != 0))
  {
    v22 = v5[3];
    v30[3] = a3;
    v30[4] = a4;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v30);
    (*(*(a3 - 8) + 16))(boxed_opaque_existential_1, v28, a3);
    sub_226C985A4(v30, v22, v12);
    __swift_destroy_boxed_opaque_existential_0Tm(v30);
    v24 = v29;
    if ((*(v29 + 48))(v12, 1, v13) == 1)
    {
      sub_226AC47B0(v12, &qword_27D7A8BE0, &unk_226D718F0);
      v25 = 1;
    }

    else
    {
      (*(v24 + 32))(v17, v12, v13);
      sub_226C9B8E8(&qword_27D7A66D8, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
      v25 = sub_226D6E34C();
      (*(v24 + 8))(v17, v13);
    }
  }

  else
  {
    v25 = 0;
  }

  return v25 & 1;
}

void sub_226C98C10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return;
  }

  v3 = *(a1 + 16);
  if (!v3)
  {
    return;
  }

  if (v2 >= v3)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  v5 = v4 + 56;
  if (v2 >= v3)
  {
    v6 = a2;
  }

  else
  {
    v6 = a1;
  }

  v7 = 1 << *(v4 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v4 + 56);
  v10 = (v7 + 63) >> 6;
  v78 = v6 + 56;

  v80 = v6;

  v11 = 0;
  v72 = v4;
  v69 = v10;
  v70 = v4 + 56;
  while (1)
  {
    do
    {
LABEL_13:
      if (v9)
      {
        v12 = v9;
      }

      else
      {
        do
        {
          v13 = v11 + 1;
          if (__OFADD__(v11, 1))
          {
            __break(1u);
            return;
          }

          if (v13 >= v10)
          {

            return;
          }

          v12 = *(v5 + 8 * v13);
          ++v11;
        }

        while (!v12);
        v11 = v13;
      }

      v9 = (v12 - 1) & v12;
    }

    while (!*(v80 + 16));
    v14 = *(v4 + 48) + 56 * (__clz(__rbit64(v12)) | (v11 << 6));
    v84 = *v14;
    v85 = *(v14 + 8);
    v15 = *(v14 + 24);
    v81 = *(v14 + 32);
    v82 = *(v14 + 16);
    v83 = *(v14 + 40);
    v16 = *(v14 + 48);
    sub_226D6F2FC();
    v79 = v16;
    if (!v16)
    {
      v17 = 0;
      goto LABEL_24;
    }

    if (v16 == 1)
    {
      v17 = 1;
LABEL_24:
      MEMORY[0x22AA8B3B0](v17);

      sub_226D6E42C();
      goto LABEL_26;
    }

    MEMORY[0x22AA8B3B0](2);

    sub_226D6E42C();
    sub_226D6E42C();
LABEL_26:
    sub_226D6E42C();
    v18 = sub_226D6F35C();
    v19 = -1 << *(v80 + 32);
    v20 = v18 & ~v19;
    if ((*(v78 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20))
    {
      break;
    }

    sub_226AE5134(v84, v85, v82, v15, v81, v83, v16);
  }

  v71 = v9;
  v76 = v15;
  v77 = ~v19;
  v21 = v83;
  for (i = v81; ; i = v81)
  {
    v23 = v82;
    v24 = *(v80 + 48) + 56 * v20;
    v26 = *v24;
    v25 = *(v24 + 8);
    v28 = *(v24 + 16);
    v27 = *(v24 + 24);
    v29 = *(v24 + 32);
    v30 = *(v24 + 40);
    v31 = *(v24 + 48);
    v86[0] = *v24;
    v86[1] = v25;
    v86[2] = v28;
    v86[3] = v27;
    v86[4] = v29;
    v86[5] = v30;
    v87 = v31;
    v88 = v84;
    v89 = v85;
    v90 = v82;
    v91 = v15;
    v92 = i;
    v93 = v21;
    v94 = v79;
    v32 = v79;
    if (!v31)
    {
      if (v79)
      {
        goto LABEL_73;
      }

      if (v26 != v84 || v25 != v85)
      {
        v40 = sub_226D6F21C();
        i = v81;
        v23 = v82;
        v21 = v83;
        v32 = 0;
        if ((v40 & 1) == 0)
        {
          goto LABEL_73;
        }
      }

      if (v28 == v23 && v27 == v15)
      {
        v59 = v23;
        sub_226AFD74C(v84, v85, v23, v15, i, v21, 0);
        sub_226AFD74C(v26, v25, v59, v15, v29, v30, 0);
        sub_226AC47B0(v86, &unk_27D7A9640, &qword_226D7A5E0);
LABEL_83:

        v52 = v84;
        v53 = v85;
        v55 = v81;
        v54 = v82;
        v56 = v15;
        v57 = v83;
        v58 = 0;
LABEL_84:
        sub_226AE5134(v52, v53, v54, v56, v55, v57, v58);
        return;
      }

      v42 = v23;
      v74 = sub_226D6F21C();
      sub_226AFD74C(v84, v85, v42, v15, v81, v83, 0);
      sub_226AFD74C(v26, v25, v28, v27, v29, v30, 0);
      sub_226AC47B0(v86, &unk_27D7A9640, &qword_226D7A5E0);
      if (v74)
      {
        goto LABEL_83;
      }

      goto LABEL_74;
    }

    if (v31 != 1)
    {
      break;
    }

    if (v79 != 1)
    {
      goto LABEL_73;
    }

    if (v26 != v84 || v25 != v85)
    {
      v34 = sub_226D6F21C();
      i = v81;
      v23 = v82;
      v21 = v83;
      if ((v34 & 1) == 0)
      {
        v32 = 1;
        goto LABEL_73;
      }
    }

    if (v28 == v23 && v27 == v15)
    {
      v51 = v23;
      sub_226AFD74C(v84, v85, v23, v15, i, v21, 1u);
      sub_226AFD74C(v26, v25, v51, v15, v29, v30, 1u);
      sub_226AC47B0(v86, &unk_27D7A9640, &qword_226D7A5E0);
LABEL_81:

      v52 = v84;
      v53 = v85;
      v55 = v81;
      v54 = v82;
      v56 = v15;
      v57 = v83;
      v58 = 1;
      goto LABEL_84;
    }

    v36 = v23;
    v37 = i;
    v73 = sub_226D6F21C();
    v38 = v37;
    v15 = v76;
    sub_226AFD74C(v84, v85, v36, v76, v38, v83, 1u);
    sub_226AFD74C(v26, v25, v28, v27, v29, v30, 1u);
    sub_226AC47B0(v86, &unk_27D7A9640, &qword_226D7A5E0);
    if (v73)
    {
      goto LABEL_81;
    }

LABEL_74:
    v20 = (v20 + 1) & v77;
    if (((*(v78 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
    {
      sub_226AE5134(v84, v85, v82, v15, v81, v83, v79);
      v9 = v71;
      v4 = v72;
      v10 = v69;
      v5 = v70;
      goto LABEL_13;
    }

    v21 = v83;
  }

  if (v79 != 2)
  {
    goto LABEL_73;
  }

  v43 = v26 == v84 && v25 == v85;
  if (!v43 && (v44 = sub_226D6F21C(), i = v81, v23 = v82, v21 = v83, (v44 & 1) == 0) || (v28 == v23 ? (v45 = v27 == v15) : (v45 = 0), !v45 && (v46 = sub_226D6F21C(), i = v81, v23 = v82, v21 = v83, (v46 & 1) == 0)))
  {
    v32 = 2;
LABEL_73:
    sub_226AFD74C(v84, v85, v23, v15, i, v21, v32);
    sub_226AFD74C(v26, v25, v28, v27, v29, v30, v31);
    sub_226AC47B0(v86, &unk_27D7A9640, &qword_226D7A5E0);
    goto LABEL_74;
  }

  if (v29 != i || v30 != v21)
  {
    v48 = i;
    v49 = v21;
    v75 = sub_226D6F21C();
    v50 = v48;
    v15 = v76;
    sub_226AFD74C(v84, v85, v82, v76, v50, v49, 2u);
    sub_226AFD74C(v26, v25, v28, v27, v29, v30, 2u);
    sub_226AC47B0(v86, &unk_27D7A9640, &qword_226D7A5E0);
    if (v75)
    {

      v63 = v84;
      v64 = v85;
      v66 = v81;
      v65 = v82;
      v67 = v76;
      v68 = v83;
      goto LABEL_86;
    }

    goto LABEL_74;
  }

  v60 = v23;
  v61 = i;
  v62 = v21;
  sub_226AFD74C(v84, v85, v23, v15, i, v21, 2u);
  sub_226AFD74C(v26, v25, v28, v27, v61, v62, 2u);
  sub_226AC47B0(v86, &unk_27D7A9640, &qword_226D7A5E0);

  v63 = v84;
  v64 = v85;
  v65 = v60;
  v67 = v15;
  v66 = v61;
  v68 = v62;
LABEL_86:
  sub_226AE5134(v63, v64, v65, v67, v66, v68, 2u);
}

void sub_226C993BC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v3 = *(a1 + 16);
    if (v3)
    {
      if (v2 >= v3)
      {
        v4 = a1;
      }

      else
      {
        v4 = a2;
      }

      v5 = v4 + 56;
      if (v2 >= v3)
      {
        v6 = a2;
      }

      else
      {
        v6 = a1;
      }

      v7 = 1 << *(v4 + 32);
      if (v7 < 64)
      {
        v8 = ~(-1 << v7);
      }

      else
      {
        v8 = -1;
      }

      v9 = v8 & *(v4 + 56);
      v10 = (v7 + 63) >> 6;
      v11 = v6 + 56;

      v12 = 0;
      v24 = v4;
      while (v9)
      {
        v13 = v9;
LABEL_19:
        v9 = (v13 - 1) & v13;
        if (*(v6 + 16))
        {
          v15 = (*(v4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v13)))));
          v17 = *v15;
          v16 = v15[1];
          sub_226D6F2FC();

          sub_226D6E42C();
          v18 = sub_226D6F35C();
          v19 = -1 << *(v6 + 32);
          v20 = v18 & ~v19;
          if ((*(v11 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20))
          {
            v21 = ~v19;
            while (1)
            {
              v22 = (*(v6 + 48) + 16 * v20);
              v23 = *v22 == v17 && v22[1] == v16;
              if (v23 || (sub_226D6F21C() & 1) != 0)
              {
                break;
              }

              v20 = (v20 + 1) & v21;
              if (((*(v11 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
              {
                goto LABEL_28;
              }
            }

            return;
          }

LABEL_28:

          v4 = v24;
        }
      }

      while (1)
      {
        v14 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v14 >= v10)
        {

          return;
        }

        v13 = *(v5 + 8 * v14);
        ++v12;
        if (v13)
        {
          v12 = v14;
          goto LABEL_19;
        }
      }

      __break(1u);
    }
  }
}

void sub_226C995A4(void *a1, void *a2)
{
  v4 = sub_226D6715C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v33 - v9;
  MEMORY[0x28223BE20](v10);
  v39 = &v33 - v11;
  v12 = a2[2];
  if (v12)
  {
    v13 = a1[2];
    if (v13)
    {
      if (v12 >= v13)
      {
        v14 = a1;
      }

      else
      {
        v14 = a2;
      }

      if (v12 < v13)
      {
        a2 = a1;
      }

      v15 = v14 + 7;
      v16 = 1 << *(v14 + 32);
      if (v16 < 64)
      {
        v17 = ~(-1 << v16);
      }

      else
      {
        v17 = -1;
      }

      v18 = v17 & v14[7];
      v19 = (v16 + 63) >> 6;
      v42 = v5 + 16;
      v37 = v5 + 32;
      v38 = v14;
      v40 = a2 + 7;
      v20 = (v5 + 8);

      v43 = a2;

      v21 = 0;
      v34 = v19;
      v35 = v15;
      v36 = v5;
      while (v18)
      {
LABEL_18:
        v23 = v39;
        v24 = v38[6];
        v41 = *(v5 + 72);
        v25 = *(v5 + 16);
        v25(v39, v24 + v41 * (__clz(__rbit64(v18)) | (v21 << 6)), v4);
        (*(v5 + 32))(v44, v23, v4);
        if (v43[2])
        {
          v26 = v43;
          sub_226C9B8E8(&qword_27D7A6230, MEMORY[0x277CC6B60], MEMORY[0x277CC6B68]);
          v27 = sub_226D6E2FC();
          v28 = -1 << *(v26 + 32);
          v29 = v27 & ~v28;
          if ((*(v40 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29))
          {
            v30 = ~v28;
            while (1)
            {
              v25(v7, v43[6] + v29 * v41, v4);
              sub_226C9B8E8(&qword_27D7A6548, MEMORY[0x277CC6B60], MEMORY[0x277CC6B70]);
              v31 = sub_226D6E35C();
              v32 = *v20;
              (*v20)(v7, v4);
              if (v31)
              {
                break;
              }

              v29 = (v29 + 1) & v30;
              if (((*(v40 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29) & 1) == 0)
              {
                goto LABEL_12;
              }
            }

            v32(v44, v4);
            return;
          }
        }

LABEL_12:
        v18 &= v18 - 1;
        (*v20)(v44, v4);
        v15 = v35;
        v5 = v36;
        v19 = v34;
      }

      while (1)
      {
        v22 = v21 + 1;
        if (__OFADD__(v21, 1))
        {
          break;
        }

        if (v22 >= v19)
        {

          return;
        }

        v18 = v15[v22];
        ++v21;
        if (v18)
        {
          v21 = v22;
          goto LABEL_18;
        }
      }

      __break(1u);
    }
  }
}

void sub_226C99964(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v3 = *(a1 + 16);
    if (v3)
    {
      if (v2 >= v3)
      {
        v4 = a1;
      }

      else
      {
        v4 = a2;
      }

      v5 = v4 + 56;
      if (v2 >= v3)
      {
        v6 = a2;
      }

      else
      {
        v6 = a1;
      }

      v7 = 1 << *(v4 + 32);
      if (v7 < 64)
      {
        v8 = ~(-1 << v7);
      }

      else
      {
        v8 = -1;
      }

      v9 = v8 & *(v4 + 56);
      v10 = (v7 + 63) >> 6;
      v11 = v6 + 56;
      v19 = v4;

      v12 = 0;
      while (v9)
      {
LABEL_19:
        sub_226AE4FD4(*(v19 + 48) + 40 * (__clz(__rbit64(v9)) | (v12 << 6)), v23);
        v21[0] = v23[0];
        v21[1] = v23[1];
        v22 = v24;
        if (*(v6 + 16))
        {
          v14 = sub_226D6EE6C();
          v15 = -1 << *(v6 + 32);
          v16 = v14 & ~v15;
          if ((*(v11 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
          {
            v17 = ~v15;
            while (1)
            {
              sub_226AE4FD4(*(v6 + 48) + 40 * v16, v20);
              v18 = MEMORY[0x22AA8AF20](v20, v21);
              sub_226AE5030(v20);
              if (v18)
              {
                break;
              }

              v16 = (v16 + 1) & v17;
              if (((*(v11 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
              {
                goto LABEL_13;
              }
            }

            sub_226AE5030(v21);
            return;
          }
        }

LABEL_13:
        v9 &= v9 - 1;
        sub_226AE5030(v21);
      }

      while (1)
      {
        v13 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v13 >= v10)
        {

          return;
        }

        v9 = *(v5 + 8 * v13);
        ++v12;
        if (v9)
        {
          v12 = v13;
          goto LABEL_19;
        }
      }

      __break(1u);
    }
  }
}

void sub_226C99B40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (__OFADD__(*v3, 1))
  {
    __break(1u);
  }

  else
  {
    ++*v3;
    (*(a3 + 64))(a2, a3);
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    v4 = sub_226D6EE5C();

    sub_226B04718(v4);
  }
}

uint64_t sub_226C99C2C(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (__OFSUB__(*v3, 1))
  {
    __break(1u);
  }

  else
  {
    --*v3;
    v6 = result;
    (*(a3 + 64))(a2, a3);
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    v7 = sub_226D6EE5C();

    sub_226D53E64(v7);

    return sub_226C9ADE4(v6, (v3 + 3), a2, a3);
  }

  return result;
}

uint64_t sub_226C99D50(uint64_t result, void *a2, uint64_t a3, uint64_t a4)
{
  if (__OFSUB__(*v4, 1))
  {
    __break(1u);
  }

  else
  {
    --*v4;
    v8 = result;
    (*(a4 + 64))(a3, a4);
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    v9 = sub_226D6EE5C();

    sub_226D53E64(v9);

    return sub_226C9B028(v8, a2, v4 + 3, a3, a4);
  }

  return result;
}

uint64_t sub_226C99E84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6[8] = AssociatedTypeWitness;
  v6[9] = *(AssociatedTypeWitness - 8);
  v6[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226C99F60, 0, 0);
}

uint64_t sub_226C99F60()
{
  v10 = v0[6];
  v1 = (v0[7] + *(v0[4] + 36));
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  (*(v3 + 16))(v2, v3);
  v9 = (*(v10 + 80) + **(v10 + 80));
  v4 = swift_task_alloc();
  v0[11] = v4;
  *v4 = v0;
  v4[1] = sub_226C9A0C0;
  v5 = v0[10];
  v6 = v0[5];
  v7 = v0[6];

  return v9(v5, v6, v7);
}

uint64_t sub_226C9A0C0()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_226C9A2A8;
  }

  else
  {
    v2 = sub_226C9A1D4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_226C9A1D4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 40);
  *(v1 + 24) = v3;
  v4 = v3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1);
  (*(*(v4 - 8) + 16))(boxed_opaque_existential_1, v2, v4);
  v6 = *(v0 + 96) != 0;
  (*(*(v0 + 72) + 8))(*(v0 + 80), *(v0 + 64));

  v7 = *(v0 + 8);

  return v7(0, v6);
}

uint64_t sub_226C9A2A8()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 40);
  *(v2 + 24) = v4;
  v5 = v4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v2);
  (*(*(v5 - 8) + 16))(boxed_opaque_existential_1, v3, v5);
  v7 = *(v0 + 96) != 0;
  (*(*(v0 + 72) + 8))(*(v0 + 80), *(v0 + 64));

  v8 = *(v0 + 8);

  return v8(v1, v7);
}

uint64_t sub_226C9A388(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[16] = a6;
  v7[17] = v6;
  v7[14] = a4;
  v7[15] = a5;
  v7[12] = a2;
  v7[13] = a3;
  v7[11] = a1;
  v9 = *(a5 - 8);
  v7[18] = v9;
  v7[19] = *(v9 + 64);
  v7[20] = swift_task_alloc();
  v10 = *(a4 - 8);
  v7[21] = v10;
  v7[22] = *(v10 + 64);
  v7[23] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8BA0, &qword_226D734E0);
  v7[24] = swift_task_alloc();
  v11 = sub_226D6D4AC();
  v7[25] = v11;
  v7[26] = *(v11 - 8);
  v7[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226C9A53C, 0, 0);
}

uint64_t sub_226C9A53C(uint64_t a1)
{
  v3 = *(v1 + 208);
  v2 = *(v1 + 216);
  v4 = *(v1 + 200);
  v6 = *(v1 + 120);
  v5 = *(v1 + 128);
  v7 = *(v1 + 104);
  v8 = *(v1 + 88);
  v10 = v7[1];
  v9 = v7[2];
  *(v1 + 16) = *v7;
  *(v1 + 32) = v10;
  *(v1 + 48) = v9;
  sub_226D6D46C();
  v11 = sub_226C988E4(v8, v2, v6, v5);
  (*(v3 + 8))(v2, v4);
  if (v11)
  {
    v13 = *(v1 + 184);
    v12 = *(v1 + 192);
    v14 = *(v1 + 168);
    v15 = *(v1 + 160);
    v31 = v15;
    v32 = *(v1 + 176);
    v17 = *(v1 + 136);
    v16 = *(v1 + 144);
    v18 = *(v1 + 120);
    v33 = *(v1 + 128);
    v34 = v12;
    v19 = *(v1 + 112);
    v20 = *(v1 + 88);
    v21 = sub_226D6E79C();
    (*(*(v21 - 8) + 56))(v12, 1, 1, v21);
    (*(v14 + 16))(v13, v17, v19);
    (*(v16 + 16))(v15, v20, v18);
    v22 = (*(v14 + 80) + 64) & ~*(v14 + 80);
    v23 = (v32 + *(v16 + 80) + v22) & ~*(v16 + 80);
    v24 = swift_allocObject();
    *(v24 + 2) = 0;
    *(v24 + 3) = 0;
    *(v24 + 4) = *(v19 + 16);
    *(v24 + 5) = v18;
    *(v24 + 6) = *(v19 + 24);
    *(v24 + 7) = v33;
    (*(v14 + 32))(&v24[v22], v13, v19);
    (*(v16 + 32))(&v24[v23], v31, v18);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v26 = swift_getAssociatedTypeWitness();
    v27 = swift_getAssociatedTypeWitness();
    *(v1 + 64) = AssociatedTypeWitness;
    *(v1 + 72) = v26;
    *(v1 + 80) = v27;
    swift_getExtendedExistentialTypeMetadata_unique();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7A8970, &qword_226D7A5B8);
    swift_getTupleTypeMetadata2();
    v28 = sub_226D6E73C();
    LOBYTE(v22) = sub_226C9AABC(v34, &unk_226D7A5A8, v24, v28);
    sub_226AC47B0(v34, &unk_27D7A8BA0, &qword_226D734E0);
    if (v22)
    {
      sub_226C99B40(*(v1 + 88), *(v1 + 120), *(v1 + 128));
    }
  }

  v29 = *(v1 + 8);

  return v29();
}

uint64_t sub_226C9A898(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 16) = a1;
  v14 = swift_task_alloc();
  *(v8 + 24) = v14;
  v16 = type metadata accessor for WebServicePerformPendingTasksActivity(0, a6, a8, v15);
  *v14 = v8;
  v14[1] = sub_226C9A98C;

  return sub_226C99E84(a1, a5, v16, a7, v19);
}

uint64_t sub_226C9A98C(uint64_t a1, char a2)
{
  v3 = *v2;
  *(v3 + 32) = a1;
  *(v3 + 40) = a2;

  return MEMORY[0x2822009F8](sub_226C9AA90, 0, 0);
}

uint64_t sub_226C9AA90()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);
  *(v2 + 40) = *(v0 + 32);
  *(v2 + 48) = v1 & 1;
  return (*(v0 + 8))();
}

uint64_t sub_226C9AABC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8BA0, &qword_226D734E0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v22 - v10;
  v12 = *v4;
  v13 = swift_taskGroup_addPending();
  if ((v13 & 1) == 0)
  {
    goto LABEL_11;
  }

  sub_226B6F240(a1, v11);
  v14 = sub_226D6E79C();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v11, 1, v14) != 1)
  {
    sub_226D6E78C();
    (*(v15 + 8))(v11, v14);
    if (*(a3 + 16))
    {
      goto LABEL_4;
    }

LABEL_7:
    v16 = 0;
    v18 = 0;
    goto LABEL_8;
  }

  sub_226AC47B0(v11, &unk_27D7A8BA0, &qword_226D734E0);
  if (!*(a3 + 16))
  {
    goto LABEL_7;
  }

LABEL_4:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v16 = sub_226D6E6CC();
  v18 = v17;
  swift_unknownObjectRelease();
LABEL_8:
  v19 = swift_allocObject();
  v19[2] = *(a4 + 16);
  v19[3] = a2;
  v19[4] = a3;
  v20 = (v18 | v16);
  if (v18 | v16)
  {
    v23[0] = 0;
    v23[1] = 0;
    v20 = v23;
    v23[2] = v16;
    v23[3] = v18;
  }

  v22[1] = 1;
  v22[2] = v20;
  v22[3] = v12;
  swift_task_create();
LABEL_11:

  return v13 & 1;
}

uint64_t sub_226C9ACEC(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226B68114;

  return v6(a1);
}

uint64_t sub_226C9ADE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8968, &unk_226D7E430);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v17 - v8;
  v19 = a3;
  v20 = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v18);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_1, a1, a3);
  v11 = v19;
  v12 = v20;
  __swift_project_boxed_opaque_existential_1(v18, v19);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  (*(a4 + 56))(v11, v12, v14);
  swift_getAssociatedConformanceWitness();
  sub_226D6EE8C();
  v15 = type metadata accessor for WebServicePendingTasksRetryState.TaskState(0);
  (*(*(v15 - 8) + 56))(v9, 1, 1, v15);
  sub_226D490F4(v9, v17);
  return __swift_destroy_boxed_opaque_existential_0Tm(v18);
}

uint64_t type metadata accessor for WebServicePendingTasksRetryState.TaskState(uint64_t a1)
{
  result = qword_281060518;
  if (!qword_281060518)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_226C9B028(uint64_t a1, void *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v45 = a3;
  v40 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8968, &unk_226D7E430);
  MEMORY[0x28223BE20](v8 - 8);
  v42 = v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v43 = (v38 - v11);
  MEMORY[0x28223BE20](v12);
  v14 = v38 - v13;
  v44 = type metadata accessor for WebServicePendingTasksRetryState.TaskState(0);
  v15 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v17 = v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = a4;
  v49 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v47);
  (*(*(a4 - 8) + 16))(boxed_opaque_existential_1, a1, a4);
  v20 = v48;
  v19 = v49;
  v21 = __swift_project_boxed_opaque_existential_1(v47, v48);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v23 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v38[0] = *(a5 + 56);
  v38[1] = v21;
  v41 = a5 + 56;
  (v38[0])(v20, v19, v23);
  v39 = v19;
  swift_getAssociatedConformanceWitness();
  sub_226D6EE8C();
  v24 = *v45;
  if (*(*v45 + 16) && (v25 = sub_226C2FE4C(v46), (v26 & 1) != 0))
  {
    sub_226C9B568(*(v24 + 56) + *(v15 + 72) * v25, v14);
    v27 = 0;
  }

  else
  {
    v27 = 1;
  }

  v28 = *(v15 + 56);
  v29 = v44;
  v28(v14, v27, 1, v44);
  v30 = v14;
  v31 = v43;
  sub_226C9B4F8(v30, v43);
  if ((*(v15 + 48))(v31, 1, v29) == 1)
  {
    *v17 = 0;
    sub_226D6D46C();
    sub_226AE5030(v46);
    result = sub_226AC47B0(v31, &qword_27D7A8968, &unk_226D7E430);
  }

  else
  {
    sub_226AE5030(v46);
    result = sub_226C9B628(v31, v17);
  }

  if (__OFADD__(*v17, 1))
  {
    __break(1u);
  }

  else
  {
    ++*v17;
    v33 = *(v29 + 20);
    v34 = sub_226D6D4AC();
    (*(*(v34 - 8) + 24))(&v17[v33], v40, v34);
    v43 = v28;
    __swift_project_boxed_opaque_existential_1(v47, v48);
    v35 = swift_getAssociatedTypeWitness();
    v40 = v38;
    v36 = MEMORY[0x28223BE20](v35);
    (v38[0])(v20, v39, v36);
    swift_getAssociatedConformanceWitness();
    sub_226D6EE8C();
    v37 = v42;
    sub_226C9B568(v17, v42);
    v43(v37, 0, 1, v29);
    sub_226D490F4(v37, v46);
    sub_226C9B5CC(v17);
    return __swift_destroy_boxed_opaque_existential_0Tm(v47);
  }

  return result;
}

uint64_t sub_226C9B4F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8968, &unk_226D7E430);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_226C9B568(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WebServicePendingTasksRetryState.TaskState(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_226C9B5CC(uint64_t a1)
{
  v2 = type metadata accessor for WebServicePendingTasksRetryState.TaskState(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_226C9B628(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WebServicePendingTasksRetryState.TaskState(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_226C9B6A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v5;
  v8 = v4[4];
  v7 = v4[5];
  v9 = v4[6];
  v10 = *(type metadata accessor for WebServicePerformPendingTasksActivity(0, v8, v9, a4) - 8);
  v11 = (*(v10 + 80) + 64) & ~*(v10 + 80);
  v12 = (v11 + *(v10 + 64) + *(*(v7 - 8) + 80)) & ~*(*(v7 - 8) + 80);
  v13 = v4[2];
  v14 = v4[3];
  v15 = swift_task_alloc();
  *(v6 + 16) = v15;
  *v15 = v6;
  v15[1] = sub_226AD827C;

  return sub_226C9A898(a1, v13, v14, v4 + v11, v4 + v12, v8, v7, v9);
}

uint64_t sub_226C9B820(uint64_t a1)
{
  v4 = *(v1 + 24);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_226AD827C;

  return sub_226C9ACEC(a1, v4);
}

uint64_t sub_226C9B8E8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_226C9B940(uint64_t a1)
{
  v1 = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_getAssociatedTypeWitness();
    swift_getExtendedExistentialTypeMetadata_unique();
    v1 = sub_226D6E07C();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v1;
}

uint64_t sub_226C9BA18(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = sub_226D6E07C();
  v9 = *(v8 - 8);
  v10 = *(v6 + 64);
  v11 = *(v9 + 80);
  if (v7 <= *(v9 + 84))
  {
    v12 = *(v9 + 84);
  }

  else
  {
    v12 = v7;
  }

  if (v12 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  else
  {
    v13 = v12;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 <= v13)
  {
    goto LABEL_31;
  }

  v14 = ((v11 + ((v10 + 7) & 0xFFFFFFFFFFFFFFF8) + 40) & ~v11) + *(*(v8 - 8) + 64);
  v15 = 8 * v14;
  if (v14 <= 3)
  {
    v18 = ((a2 - v13 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v18))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v18 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v18 < 2)
    {
LABEL_31:
      if (v7 == v13)
      {
        v22 = *(v6 + 48);

        return v22(a1, v7, v5);
      }

      else
      {
        v23 = (a1 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
        if ((v12 & 0x80000000) != 0)
        {
          v25 = *(v9 + 48);

          return v25((v23 + v11 + 40) & ~v11);
        }

        else
        {
          v24 = *(v23 + 24);
          if (v24 >= 0xFFFFFFFF)
          {
            LODWORD(v24) = -1;
          }

          return (v24 + 1);
        }
      }
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_31;
  }

LABEL_18:
  v19 = (v16 - 1) << v15;
  if (v14 > 3)
  {
    v19 = 0;
  }

  if (v14)
  {
    if (v14 <= 3)
    {
      v20 = v14;
    }

    else
    {
      v20 = 4;
    }

    if (v20 > 2)
    {
      if (v20 == 3)
      {
        v21 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v21 = *a1;
      }
    }

    else if (v20 == 1)
    {
      v21 = *a1;
    }

    else
    {
      v21 = *a1;
    }
  }

  else
  {
    v21 = 0;
  }

  return v13 + (v21 | v19) + 1;
}

double sub_226C9BCBC(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v26 = v8;
  v9 = *(v8 + 84);
  v10 = *(sub_226D6E07C() - 8);
  v12 = *(v8 + 64);
  v13 = *(v10 + 80);
  if (v9 <= *(v10 + 84))
  {
    v14 = *(v10 + 84);
  }

  else
  {
    v14 = v9;
  }

  if (v14 <= 0x7FFFFFFF)
  {
    v15 = 0x7FFFFFFF;
  }

  else
  {
    v15 = v14;
  }

  v16 = ((v13 + ((v12 + 7) & 0xFFFFFFFFFFFFFFF8) + 40) & ~v13) + *(v10 + 64);
  if (a3 <= v15)
  {
    v17 = 0;
  }

  else if (v16 <= 3)
  {
    v20 = ((a3 - v15 + ~(-1 << (8 * v16))) >> (8 * v16)) + 1;
    if (HIWORD(v20))
    {
      v17 = 4;
    }

    else
    {
      if (v20 < 0x100)
      {
        v21 = 1;
      }

      else
      {
        v21 = 2;
      }

      if (v20 >= 2)
      {
        v17 = v21;
      }

      else
      {
        v17 = 0;
      }
    }
  }

  else
  {
    v17 = 1;
  }

  if (v15 < a2)
  {
    v18 = ~v15 + a2;
    if (v16 < 4)
    {
      v19 = (v18 >> (8 * v16)) + 1;
      if (v16)
      {
        v22 = v18 & ~(-1 << (8 * v16));
        bzero(a1, v16);
        if (v16 != 3)
        {
          if (v16 == 2)
          {
            *a1 = v22;
            if (v17 > 1)
            {
LABEL_52:
              if (v17 == 2)
              {
                *&a1[v16] = v19;
              }

              else
              {
                *&a1[v16] = v19;
              }

              return result;
            }
          }

          else
          {
            *a1 = v18;
            if (v17 > 1)
            {
              goto LABEL_52;
            }
          }

          goto LABEL_49;
        }

        *a1 = v22;
        a1[2] = BYTE2(v22);
      }

      if (v17 > 1)
      {
        goto LABEL_52;
      }
    }

    else
    {
      bzero(a1, v16);
      *a1 = v18;
      v19 = 1;
      if (v17 > 1)
      {
        goto LABEL_52;
      }
    }

LABEL_49:
    if (v17)
    {
      a1[v16] = v19;
    }

    return result;
  }

  if (v17 > 1)
  {
    if (v17 != 2)
    {
      *&a1[v16] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_34;
    }

    *&a1[v16] = 0;
  }

  else if (v17)
  {
    a1[v16] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_34;
  }

  if (!a2)
  {
    return result;
  }

LABEL_34:
  if (v9 == v15)
  {
    v23 = *(v26 + 56);

    v23(a1, a2, v9, v7);
  }

  else
  {
    v24 = &a1[v12 + 7] & 0xFFFFFFFFFFFFFFF8;
    if ((v14 & 0x80000000) != 0)
    {
      v25 = *(v10 + 56);

      v25((v24 + v13 + 40) & ~v13, a2);
    }

    else if ((a2 & 0x80000000) != 0)
    {
      result = 0.0;
      *(v24 + 8) = 0u;
      *(v24 + 24) = 0u;
      *v24 = a2 & 0x7FFFFFFF;
    }

    else
    {
      *(v24 + 24) = (a2 - 1);
    }
  }

  return result;
}

uint64_t sub_226C9C028(uint64_t a1)
{
  result = sub_226D6D4AC();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_226C9C0AC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v130 = a4;
  v115 = sub_226D693EC();
  v114 = *(v115 - 8);
  MEMORY[0x28223BE20](v115);
  v113 = &v105 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v125 = &v105 - v11;
  v105 = sub_226D6948C();
  v132 = *(v105 - 8);
  MEMORY[0x28223BE20](v105);
  v120 = &v105 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v105 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v124 = &v105 - v17;
  MEMORY[0x28223BE20](v18);
  v20 = &v105 - v19;
  v21 = sub_226D6964C();
  MEMORY[0x28223BE20](v21 - 8);
  v122 = &v105 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_226D696BC();
  MEMORY[0x28223BE20](v23 - 8);
  v121 = &v105 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_226D696DC();
  MEMORY[0x28223BE20](v25 - 8);
  v126 = &v105 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = sub_226D693DC();
  v27 = *(v106 - 8);
  MEMORY[0x28223BE20](v106);
  v29 = &v105 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_226D6D52C();
  v128 = *(v30 - 8);
  v129 = v30;
  v31 = MEMORY[0x28223BE20](v30);
  v127 = &v105 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = [a1 orderEmails];
  if (v33)
  {
    v34 = v33;
    sub_226AE59B4(0, &qword_27D7A8980, 0x277D21198);
    v134 = sub_226D6E5EC();
  }

  else
  {
    v134 = MEMORY[0x277D84F90];
  }

  v35 = [a1 shippingFulfillments];
  v36 = MEMORY[0x277D84F90];
  if (v35)
  {
    v37 = v35;
    sub_226AE59B4(0, &qword_27D7A8978, 0x277D211A0);
    v36 = sub_226D6E5EC();
  }

  (*(v128 + 16))(v127, v130, v129);
  v38 = [a1 orderTypeIdentifier];
  if (v38)
  {
    v39 = v38;
    v112 = sub_226D6E39C();
    v111 = v40;
  }

  else
  {
    v112 = 0;
    v111 = 0;
  }

  v41 = [a1 orderIdentifier];
  if (v41)
  {
    v42 = v41;
    v110 = sub_226D6E39C();
    v109 = v43;
  }

  else
  {
    v110 = 0;
    v109 = 0;
  }

  v44 = [a1 orderNumber];
  if (v44)
  {
    v45 = v44;
    v108 = sub_226D6E39C();
    v107 = v46;
  }

  else
  {
    v108 = 0;
    v107 = 0;
  }

  v47 = v36;
  v123 = v20;
  v131 = a1;
  v48 = v134;
  if (v134 >> 62)
  {
    v103 = v134;
    v104 = sub_226D6EDFC();
    v47 = v36;
    v49 = v104;
    v48 = v103;
  }

  else
  {
    v49 = *((v134 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v133 = v47;
  v118 = a2;
  v119 = a3;
  v116 = v15;
  v117 = a5;
  if (v49)
  {
    v50 = v48;
    v135 = MEMORY[0x277D84F90];
    sub_226AE265C(0, v49 & ~(v49 >> 63), 0);
    if (v49 < 0)
    {
      __break(1u);
      goto LABEL_58;
    }

    v51 = 0;
    v52 = v135;
    v53 = v50;
    v54 = v50 & 0xC000000000000001;
    v55 = v106;
    do
    {
      if (v54)
      {
        v56 = MEMORY[0x22AA8AFD0](v51, v53);
      }

      else
      {
        v56 = *(v53 + 8 * v51 + 32);
      }

      sub_226C9CC84(v56, v29);
      v135 = v52;
      v58 = *(v52 + 16);
      v57 = *(v52 + 24);
      if (v58 >= v57 >> 1)
      {
        sub_226AE265C((v57 > 1), v58 + 1, 1);
        v55 = v106;
        v52 = v135;
      }

      ++v51;
      *(v52 + 16) = v58 + 1;
      (*(v27 + 32))(v52 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v58, v29, v55);
      v53 = v134;
    }

    while (v49 != v51);

    v36 = v133;
  }

  else
  {
  }

  v59 = v131;
  v60 = [v131 orderDate];
  if (v60)
  {
    v61 = v60;
    v62 = sub_226D6E39C();
    v64 = v63;
  }

  else
  {
    v62 = 0;
    v64 = 0;
  }

  sub_226C9D800([v59 merchant]);
  if (v36 >> 62)
  {
    v65 = sub_226D6EDFC();
  }

  else
  {
    v65 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v66 = v120;
  v134 = v62;
  v106 = v64;
  if (!v65)
  {
    goto LABEL_42;
  }

  v135 = MEMORY[0x277D84F90];
  sub_226AE2618(0, v65 & ~(v65 >> 63), 0);
  if (v65 < 0)
  {
LABEL_58:
    __break(1u);
LABEL_59:
    result = sub_226D6F0AC();
    __break(1u);
    return result;
  }

  v67 = 0;
  v68 = v135;
  v69 = v36;
  v70 = v36 & 0xC000000000000001;
  v71 = v105;
  do
  {
    if (v70)
    {
      v72 = MEMORY[0x22AA8AFD0](v67, v69);
    }

    else
    {
      v72 = *(v69 + 8 * v67 + 32);
    }

    sub_226C9DA40(v72, v66);
    v135 = v68;
    v73 = v66;
    v75 = *(v68 + 16);
    v74 = *(v68 + 24);
    if (v75 >= v74 >> 1)
    {
      sub_226AE2618((v74 > 1), v75 + 1, 1);
      v71 = v105;
      v68 = v135;
    }

    ++v67;
    *(v68 + 16) = v75 + 1;
    (*(v132 + 32))(v68 + ((*(v132 + 80) + 32) & ~*(v132 + 80)) + *(v132 + 72) * v75, v73, v71);
    v66 = v73;
    v69 = v133;
  }

  while (v65 != v67);
LABEL_42:

  v76 = v131;
  sub_226C9DEF0([v131 customer]);
  v77 = [v76 payment];
  sub_226C9E430(v77, v122);
  v78 = [v76 orderUpdateDate];
  if (v78)
  {
    v79 = v123;
    v80 = v78;
    sub_226D6D45C();

    v81 = 0;
  }

  else
  {
    v81 = 1;
    v79 = v123;
  }

  v82 = sub_226D6D4AC();
  v83 = *(*(v82 - 8) + 56);
  v83(v79, v81, 1, v82);
  v84 = [v76 trackedOrderIdentifier];
  if (v84)
  {
    v85 = v84;
    v86 = sub_226D6E39C();
    v132 = v87;
    v133 = v86;

    v76 = v131;
  }

  else
  {
    v132 = 0;
    v133 = 0;
  }

  v88 = v130;
  v89 = [v76 orderStatus];
  if (v89 >= 5)
  {
    goto LABEL_59;
  }

  v90 = v114;
  v91 = v113;
  v92 = v115;
  (*(v114 + 104))(v113, **(&unk_2785C8A68 + v89), v115);
  (*(v90 + 32))(v125, v91, v92);
  v93 = [v76 orderStatusUpdateDate];
  if (v93)
  {
    v94 = v124;
    v95 = v93;
    sub_226D6D45C();

    v96 = v94;
    v97 = 0;
  }

  else
  {
    v97 = 1;
    v96 = v124;
  }

  v98 = 1;
  v83(v96, v97, 1, v82);
  v99 = [v131 earliestEmailDateSent];
  v100 = v116;
  if (v99)
  {
    v101 = v99;
    sub_226D6D45C();

    v98 = 0;
  }

  v83(v100, v98, 1, v82);
  sub_226D6949C();

  return (*(v128 + 8))(v88, v129);
}

void sub_226C9CC84(void *a1@<X0>, uint64_t a2@<X8>)
{
  v129 = a2;
  v127 = sub_226D6936C();
  v3 = *(v127 - 8);
  MEMORY[0x28223BE20](v127);
  v5 = v98 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = v98 - v7;
  v9 = sub_226D6946C();
  MEMORY[0x28223BE20](v9 - 8);
  v131 = v98 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_226D6935C();
  MEMORY[0x28223BE20](v11 - 8);
  v130 = v98 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_226D6939C();
  MEMORY[0x28223BE20](v13 - 8);
  v15 = v98 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_226D693AC();
  MEMORY[0x28223BE20](v16 - 8);
  v128 = v98 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_226D693BC();
  MEMORY[0x28223BE20](v18 - 8);
  v20 = v98 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = v98 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v24);
  v27 = v98 - v26;
  v28 = [a1 emailMetadata];
  v29 = [a1 orderDetails];
  v132 = v27;
  v133 = v29;
  if (v28)
  {
    v30 = a1;
    v31 = v15;
    v32 = [v28 messageID];
    if (v32)
    {
      v33 = v32;
      v125 = sub_226D6E39C();
      v126 = v34;
    }

    else
    {
      v125 = 0;
      v126 = 0;
    }

    v36 = [v28 dateSent];
    if (v36)
    {
      v37 = v36;
      sub_226D6D45C();

      v38 = sub_226D6D4AC();
      (*(*(v38 - 8) + 56))(v23, 0, 1, v38);
    }

    else
    {
      v39 = sub_226D6D4AC();
      (*(*(v39 - 8) + 56))(v23, 1, 1, v39);
    }

    v15 = v31;
    sub_226B72784(v23, v132);
    v40 = [v28 subject];
    a1 = v30;
    if (v40)
    {
      v41 = v40;
      v42 = sub_226D6E39C();
      v123 = v43;
      v124 = v42;
    }

    else
    {
      v123 = 0;
      v124 = 0;
    }

    v44 = [v28 senderDomain];
    if (v44)
    {
      v45 = v44;
      v46 = sub_226D6E39C();
      v121 = v47;
      v122 = v46;
    }

    else
    {
      v121 = 0;
      v122 = 0;
    }

    v48 = [v28 fromEmailAddress];
    if (v48)
    {
      v49 = v48;
      v50 = sub_226D6E39C();
      v119 = v51;
      v120 = v50;
    }

    else
    {
      v119 = 0;
      v120 = 0;
    }

    v52 = [v28 fromDisplayName];
    if (v52)
    {
      v53 = v52;
      v54 = sub_226D6E39C();
      v117 = v55;
      v118 = v54;
    }

    else
    {
      v117 = 0;
      v118 = 0;
    }

    v56 = [v28 toEmailAddress];
    if (v56)
    {
      v57 = v56;
      v58 = sub_226D6E39C();
      v115 = v59;
      v116 = v58;
    }

    else
    {
      v115 = 0;
      v116 = 0;
    }

    v60 = [v28 toDisplayName];
    if (v60)
    {
      v61 = v60;
      v62 = sub_226D6E39C();
      v113 = v63;
      v114 = v62;
    }

    else
    {
      v113 = 0;
      v114 = 0;
    }

    v64 = [v28 replyToEmailAddress];
    if (v64)
    {
      v65 = v64;
      v112 = sub_226D6E39C();
      v111 = v66;
    }

    else
    {
      v112 = 0;
      v111 = 0;
    }

    v67 = [v28 replyToDisplayName];
    if (v67)
    {
      v68 = v67;
      v110 = sub_226D6E39C();
      v109 = v69;
    }

    else
    {
      v110 = 0;
      v109 = 0;
    }
  }

  else
  {
    v35 = sub_226D6D4AC();
    (*(*(v35 - 8) + 56))(v27, 1, 1, v35);
    v125 = 0;
    v126 = 0;
    v110 = 0;
    v109 = 0;
    v112 = 0;
    v111 = 0;
    v113 = 0;
    v114 = 0;
    v115 = 0;
    v116 = 0;
    v117 = 0;
    v118 = 0;
    v119 = 0;
    v120 = 0;
    v121 = 0;
    v122 = 0;
    v123 = 0;
    v124 = 0;
  }

  sub_226C9E760([a1 emailType], v20);
  v70 = [a1 spotlightUniqueIdentifier];
  if (v70)
  {
    v71 = v70;
    v108 = sub_226D6E39C();
    v107 = v72;
  }

  else
  {
    v108 = 0;
    v107 = 0;
  }

  v73 = [a1 spotlightDomainIdentifier];
  v104 = v28;
  if (v73)
  {
    v74 = v73;
    v106 = sub_226D6E39C();
    v105 = v75;
  }

  else
  {
    v106 = 0;
    v105 = 0;
  }

  v76 = v133;
  if (!v133)
  {
    v82 = v8;
    sub_226D6938C();
    sub_226C9E824(0, v131);
    sub_226D6934C();
    v83 = MEMORY[0x277CC7888];
LABEL_65:
    v97 = v127;
    (*(v3 + 104))(v5, *v83, v127);
    (*(v3 + 32))(v82, v5, v97);
    sub_226D6937C();
    sub_226D693CC();

    return;
  }

  v99 = a1;
  v77 = [v133 orderNumber];
  v78 = v76;
  v103 = v15;
  if (v77)
  {
    v79 = v77;
    sub_226D6E39C();
    v81 = v80;
  }

  else
  {
    v81 = 0;
  }

  v102 = v3;
  v84 = [v78 merchant];
  v101 = v8;
  v100 = v5;
  v98[1] = v81;
  if (v84)
  {
    v85 = v84;
    v86 = [v84 displayName];

    if (v86)
    {
      sub_226D6E39C();
    }
  }

  sub_226D6938C();
  v87 = [v78 shippingDetails];
  if (v87)
  {
    v88 = v87;
    v89 = [v87 status];
  }

  else
  {
    v89 = 0;
  }

  sub_226C9E824(v89, v131);
  v90 = [v78 shippingDetails];
  if (v90)
  {
    v91 = v90;
    v92 = [v90 trackingNumber];

    if (v92)
    {
      sub_226D6E39C();
    }
  }

  v93 = [v78 shippingDetails];
  if (v93)
  {
    v94 = v93;
    v95 = [v93 carrierName];

    if (v95)
    {
      sub_226D6E39C();
    }

    v78 = v133;
  }

  sub_226D6934C();
  v96 = [v78 orderContentType];
  if (!v96)
  {
    v83 = MEMORY[0x277CC7888];
    v3 = v102;
    v82 = v101;
    v5 = v100;
    goto LABEL_62;
  }

  v3 = v102;
  v82 = v101;
  v5 = v100;
  if (v96 == 2)
  {
    v83 = MEMORY[0x277CC7878];
LABEL_62:
    a1 = v99;
    goto LABEL_65;
  }

  a1 = v99;
  if (v96 == 1)
  {
    v83 = MEMORY[0x277CC7880];
    goto LABEL_65;
  }

  sub_226D6F0AC();
  __break(1u);
}

void sub_226C9D800(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v18 - v7;
  if (a1)
  {
    v9 = [a1 displayName];
    if (v9)
    {
      v10 = v9;
      sub_226D6E39C();
    }

    v12 = [a1 displayNameUpdateDate];
    if (v12)
    {
      v13 = v12;
      sub_226D6D45C();

      v14 = sub_226D6D4AC();
      (*(*(v14 - 8) + 56))(v4, 0, 1, v14);
    }

    else
    {
      v15 = sub_226D6D4AC();
      (*(*(v15 - 8) + 56))(v4, 1, 1, v15);
    }

    sub_226B72784(v4, v8);
    v16 = [a1 domainName];
    if (v16)
    {
      v17 = v16;
      sub_226D6E39C();
    }
  }

  else
  {
    v11 = sub_226D6D4AC();
    (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  }

  sub_226D696CC();
}

void sub_226C9DA40(void *a1@<X0>, uint64_t a2@<X8>)
{
  v69 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v53 - v4;
  v6 = sub_226D6945C();
  MEMORY[0x28223BE20](v6 - 8);
  v70 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_226D6946C();
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [a1 status];
  v68 = v11;
  sub_226C9E8E8(v12, v11);
  v13 = [a1 trackingNumber];
  if (v13)
  {
    v14 = v13;
    v15 = sub_226D6E39C();
    v66 = v16;
    v67 = v15;
  }

  else
  {
    v66 = 0;
    v67 = 0;
  }

  v17 = [a1 carrierName];
  if (v17)
  {
    v18 = v17;
    v19 = sub_226D6E39C();
    v64 = v20;
    v65 = v19;
  }

  else
  {
    v64 = 0;
    v65 = 0;
  }

  v21 = [a1 shippingMethod];
  if (v21)
  {
    v22 = v21;
    v23 = sub_226D6E39C();
    v62 = v24;
    v63 = v23;
  }

  else
  {
    v62 = 0;
    v63 = 0;
  }

  v25 = [a1 shippingDate];
  if (v25)
  {
    v26 = v25;
    v27 = sub_226D6E39C();
    v60 = v28;
    v61 = v27;
  }

  else
  {
    v60 = 0;
    v61 = 0;
  }

  v29 = [a1 shippingTime];
  if (v29)
  {
    v30 = v29;
    v31 = sub_226D6E39C();
    v58 = v32;
    v59 = v31;
  }

  else
  {
    v58 = 0;
    v59 = 0;
  }

  v33 = [a1 estimatedDeliveryStartDate];
  if (v33)
  {
    v34 = v33;
    v35 = sub_226D6E39C();
    v56 = v36;
    v57 = v35;
  }

  else
  {
    v56 = 0;
    v57 = 0;
  }

  v37 = [a1 estimatedDeliveryStartTime];
  if (v37)
  {
    v38 = v37;
    v39 = sub_226D6E39C();
    v54 = v40;
    v55 = v39;
  }

  else
  {
    v54 = 0;
    v55 = 0;
  }

  v41 = [a1 estimatedDeliveryEndDate];
  if (v41)
  {
    v42 = v41;
    v53 = sub_226D6E39C();
  }

  else
  {
    v53 = 0;
  }

  v43 = [a1 estimatedDeliveryEndTime];
  if (v43)
  {
    v44 = v43;
    sub_226D6E39C();
  }

  v45 = [a1 deliveryDate];
  if (v45)
  {
    v46 = v45;
    sub_226D6E39C();
  }

  v47 = [a1 deliveryTime];
  if (v47)
  {
    v48 = v47;
    sub_226D6E39C();
  }

  sub_226C9E9AC([a1 shippingRecipient]);
  v49 = [a1 fulfillmentUpdateDate];
  if (v49)
  {
    v50 = v49;
    sub_226D6D45C();

    v51 = 0;
  }

  else
  {
    v51 = 1;
  }

  v52 = sub_226D6D4AC();
  (*(*(v52 - 8) + 56))(v5, v51, 1, v52);
  sub_226D6947C();
}