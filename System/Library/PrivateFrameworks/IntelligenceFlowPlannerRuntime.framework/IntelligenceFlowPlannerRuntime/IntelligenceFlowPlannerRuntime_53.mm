void sub_22C85DB48()
{
  if (!qword_281433348[0])
  {
    v0 = sub_22C90AC6C();
    if (!v1)
    {
      atomic_store(v0, qword_281433348);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for ToolSelectionCriteria(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

uint64_t ModularQueryDecorationService.__allocating_init(clientApplicationIdentifier:toolboxResources:toolExecutionSession:queryDecorator:)()
{
  sub_22C862E44();
  v0 = swift_allocObject();
  sub_22C3806B8();
  ModularQueryDecorationService.init(clientApplicationIdentifier:toolboxResources:toolExecutionSession:queryDecorator:)();
  return v0;
}

uint64_t sub_22C85DCF4()
{
  sub_22C369980();
  v1[4] = v2;
  v1[5] = v0;
  v1[3] = v3;
  v4 = sub_22C9063DC();
  v1[6] = v4;
  sub_22C3699B8(v4);
  v1[7] = v5;
  v1[8] = sub_22C3699D4();
  v6 = sub_22C9072BC();
  v1[9] = v6;
  sub_22C3699B8(v6);
  v1[10] = v7;
  v1[11] = sub_22C3699D4();
  v8 = sub_22C3A5908(&qword_27D9BD290, &qword_22C917EC0);
  sub_22C369914(v8);
  v1[12] = sub_22C3699D4();
  v9 = sub_22C903F4C();
  v1[13] = v9;
  sub_22C3699B8(v9);
  v1[14] = v10;
  v1[15] = sub_22C3856B8();
  v1[16] = swift_task_alloc();
  v11 = sub_22C90771C();
  v1[17] = v11;
  sub_22C3699B8(v11);
  v1[18] = v12;
  v1[19] = sub_22C3699D4();
  v13 = sub_22C9089DC();
  v1[20] = v13;
  sub_22C3699B8(v13);
  v1[21] = v14;
  v1[22] = sub_22C3856B8();
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  v15 = sub_22C90880C();
  v1[25] = v15;
  sub_22C3699B8(v15);
  v1[26] = v16;
  v1[27] = sub_22C3699D4();
  v17 = sub_22C3A5908(&qword_27D9BA808, &qword_22C90C6E0);
  sub_22C369914(v17);
  v1[28] = sub_22C3699D4();
  v18 = sub_22C908A0C();
  v1[29] = v18;
  sub_22C3699B8(v18);
  v1[30] = v19;
  v1[31] = sub_22C3699D4();
  v20 = sub_22C37BB20();

  return MEMORY[0x2822009F8](v20, v21, v22);
}

uint64_t sub_22C85DFE0(uint64_t a1)
{
  v3 = v1[28];
  v2 = v1[29];
  sub_22C90878C();
  v4 = sub_22C9087DC();
  v5 = sub_22C36ECB4();
  v6(v5);
  v1[2] = v4;
  sub_22C3A5908(&qword_27D9BA9F0, &qword_22C912420);
  sub_22C3AC13C();
  sub_22C907F4C();

  if (sub_22C370B74(v3, 1, v2) == 1)
  {
    v7 = v1 + 8;
    sub_22C36DD28(v1[28], &qword_27D9BA808, &qword_22C90C6E0);
    sub_22C90408C();
    v8 = sub_22C9063CC();
    sub_22C90AADC();
    sub_22C37E84C();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = sub_22C36D240();
      sub_22C36C890(v10);
      sub_22C38C43C(&dword_22C366000, v8, v2, "No contextRetrievalRequest / toolRetrievalRequest / spanMatchRequest found in transcript");
      sub_22C372FB0();
    }

    sub_22C381414();
    v12 = v1 + 6;
LABEL_5:
    (*v11)(*v7, *v12);

    sub_22C36D5E0();
    sub_22C36D5F8();

    __asm { BRAA            X2, X16 }
  }

  v7 = v1 + 24;
  v12 = v1 + 20;
  (*(v1[30] + 32))(v1[31], v1[28], v1[29]);
  sub_22C9089EC();
  v15 = sub_22C36BAFC();
  v17 = v16(v15);
  if (v17 == *MEMORY[0x277D1E7D0])
  {
    (*(v1[21] + 96))(v1[24], v1[20]);
    v18 = sub_22C372838();
    v19(v18);
    sub_22C9072AC();
    v1[35] = v20;
    v21 = swift_task_alloc();
    v1[36] = v21;
    *v21 = v1;
    v21[1] = sub_22C85E820;
    sub_22C36D5F8();

    return sub_22C8607BC();
  }

  else if (v17 == *MEMORY[0x277D1E818])
  {
    v24 = swift_task_alloc();
    v1[32] = v24;
    *v24 = v1;
    v24[1] = sub_22C85E498;
    sub_22C36D5F8();

    return sub_22C860070();
  }

  else
  {
    if (v17 != *MEMORY[0x277D1E780])
    {
      (*(v1[30] + 8))(v1[31], v1[29]);
      sub_22C381414();
      goto LABEL_5;
    }

    (*(v1[21] + 96))(v1[24], v1[20]);
    v26 = sub_22C372838();
    v27(v26);
    sub_22C9072AC();
    v1[38] = v28;
    v29 = swift_task_alloc();
    v1[39] = v29;
    *v29 = v1;
    v29[1] = sub_22C85EE34;
    sub_22C3818A8();
    sub_22C36D5F8();

    return sub_22C85F934();
  }
}

uint64_t sub_22C85E498()
{
  sub_22C36FB38();
  v2 = *v1;
  sub_22C369A30();
  *v4 = v3;
  v5 = *v1;
  sub_22C369A30();
  *v6 = v5;
  *(v8 + 264) = v7;
  *(v8 + 272) = v0;

  v9 = *(v2 + 40);
  if (v0)
  {
    v10 = sub_22C85F1A0;
  }

  else
  {
    v10 = sub_22C85E5C0;
  }

  return MEMORY[0x2822009F8](v10, v9, 0);
}

uint64_t sub_22C85E5C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_22C36CC74();
  sub_22C379BA4();
  v19 = v18[33];
  if (v19)
  {
    v20 = v18[30];
    v41 = v18[31];
    v43 = v18[29];
    v21 = v18[23];
    v22 = v18[21];
    v39 = v18[20];
    v23 = v18[3];
    sub_22C3A5908(&qword_27D9BAE10, &unk_22C91DB10);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_22C90F800;
    v25 = swift_task_alloc();
    *(v25 + 16) = v23;
    sub_22C3B2784(sub_22C8625DC, v25, v19);

    sub_22C906F6C();
    (*(v22 + 104))(v21, *MEMORY[0x277D1E760], v39);
    v45 = v24;
    sub_22C90893C();
    v26 = *(v22 + 8);
    v26(v21, v39);
    (*(v20 + 8))(v41, v43);
  }

  else
  {
    v27 = v18[21];
    (*(v18[30] + 8))(v18[31], v18[29]);
    v26 = *(v27 + 8);
    v45 = MEMORY[0x277D84F90];
  }

  v37 = v18[16];
  v38 = v18[15];
  v40 = v18[12];
  v42 = v18[11];
  v44 = v18[8];
  v26(v18[24], v18[20]);

  sub_22C36D5E0();
  sub_22C375E04();

  return v30(v28, v29, v30, v31, v32, v33, v34, v35, v37, v38, v40, v42, v44, v45, a15, a16, a17, a18);
}

uint64_t sub_22C85E820()
{
  sub_22C36FB38();
  v2 = *v1;
  sub_22C369A30();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 296) = v0;

  v5 = *(v2 + 40);

  if (v0)
  {
    v6 = sub_22C85F2AC;
  }

  else
  {
    v6 = sub_22C85E960;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_22C85E960()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = sub_22C3707B4();
  if (sub_22C370B74(v3, v4, v1) == 1)
  {
    sub_22C36DD28(v2, &qword_27D9BD290, &qword_22C917EC0);
    v5 = sub_22C36BAFC();
    v6(v5);
    sub_22C381414();
    v30 = MEMORY[0x277D84F90];
  }

  else
  {
    (*(v0[14] + 32))(v0[16], v2, v1);
    v7 = *(sub_22C903F1C() + 16);

    sub_22C3A5908(&qword_27D9BAE10, &unk_22C91DB10);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_22C90F800;
    v8 = v0[23];
    v9 = v0[21];
    v29 = v0[20];
    v10 = v0[18];
    v11 = v0[19];
    v12 = v0[17];
    v28 = v0[16];
    if (v7)
    {
      v13 = v0[14];
      v14 = v0[15];
      v26 = v0[13];
      (*(v13 + 16))(v14, v0[16]);
      sub_22C903EEC();
      sub_22C903EFC();
      sub_22C903F0C();
      sub_22C903F1C();
      sub_22C903F3C();
      sub_22C907C7C();
      v15 = *(v13 + 8);
      v15(v14, v26);
      (*(v9 + 104))(v8, *MEMORY[0x277D1E740], v29);
      sub_22C862EB0();
      (*(v9 + 8))(v8, v29);
      v15(v28, v26);
    }

    else
    {
      v16 = v0[14];
      v27 = v0[13];
      sub_22C9068EC();
      sub_22C8626EC(&qword_27D9C0A30, 255, MEMORY[0x277D1DCC0], MEMORY[0x277D1DCC8]);
      swift_allocError();
      sub_22C36BBA8();
      (*(v17 + 104))();
      sub_22C901E9C();
      v18 = *MEMORY[0x277D1DCE0];
      sub_22C90694C();
      sub_22C36985C();
      (*(v19 + 104))(v8, v18);
      v20 = *MEMORY[0x277D1DC58];
      sub_22C90688C();
      sub_22C36985C();
      (*(v21 + 104))(v8, v20);
      (*(v9 + 104))(v8, *MEMORY[0x277D1E718], v29);
      sub_22C862EB0();
      (*(v9 + 8))(v8, v29);
      (*(v16 + 8))(v28, v27);
    }

    (*(v10 + 8))(v11, v12);
    sub_22C381414();
  }

  v22 = v0[31];
  sub_22C37ADC0();
  v23(v22);

  sub_22C36D5E0();

  return v24(v30);
}

uint64_t sub_22C85EE34()
{
  sub_22C36FB38();
  v2 = *v1;
  sub_22C369A30();
  *v4 = v3;
  v5 = *v1;
  sub_22C369A30();
  *v6 = v5;
  *(v8 + 320) = v7;
  *(v8 + 328) = v0;

  v9 = *(v2 + 40);

  if (v0)
  {
    v10 = sub_22C85F3BC;
  }

  else
  {
    v10 = sub_22C85EF78;
  }

  return MEMORY[0x2822009F8](v10, v9, 0);
}

uint64_t sub_22C85EF78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_22C36CC74();
  sub_22C379BA4();
  v19 = v18[40];
  if (v19)
  {
    v20 = v18[3];
    v21 = swift_task_alloc();
    *(v21 + 16) = v20;
    sub_22C3B27D8(sub_22C862594, v21, v19);
  }

  v23 = v18[21];
  v22 = v18[22];
  v24 = v18[20];
  v25 = v18[10];
  v40 = v18[9];
  v42 = v18[11];
  sub_22C3A5908(&qword_27D9BAE10, &unk_22C91DB10);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_22C90F800;
  sub_22C90679C();
  (*(v23 + 104))(v22, *MEMORY[0x277D1E788], v24);
  sub_22C90893C();
  (*(v23 + 8))(v22, v24);
  (*(v25 + 8))(v42, v40);
  v27 = v18[31];
  sub_22C37ADC0();
  v38 = v18[15];
  v39 = v18[12];
  v41 = v18[11];
  v43 = v18[8];
  v28(v27);

  sub_22C36D5E0();
  sub_22C375E04();

  return v31(v29, v30, v31, v32, v33, v34, v35, v36, a9, v38, v39, v41, v43, v26, a15, a16, a17, a18);
}

uint64_t sub_22C85F1A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_22C36CC74();
  sub_22C379BA4();
  v33 = v18[34];
  v19 = v18[31];
  v20 = v18[24];
  v21 = v18[21];
  v22 = v18[20];
  sub_22C36FEF0();
  v23(v19);
  (*(v21 + 8))(v20, v22);

  sub_22C369A24();
  sub_22C375E04();

  return v25(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10, a11, a12, a13, a14, v33, a16, a17, a18);
}

uint64_t sub_22C85F2AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_22C36CC74();
  sub_22C379BA4();
  v33 = v18[37];
  v19 = v18[30];
  v20 = v18[31];
  v21 = v18[29];
  v22 = v18[19];
  sub_22C36FEF0();
  v23(v22);
  (*(v19 + 8))(v20, v21);

  sub_22C369A24();
  sub_22C375E04();

  return v25(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10, a11, a12, a13, a14, v33, a16, a17, a18);
}

uint64_t sub_22C85F3BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_22C36CC74();
  sub_22C379BA4();
  v35 = v18[41];
  v30 = v18[19];
  v31 = v18[16];
  v32 = v18[15];
  v33 = v18[12];
  v34 = v18[8];
  (*(v18[10] + 8))(v18[11], v18[9]);
  v19 = sub_22C36ECB4();
  v20(v19);

  sub_22C369A24();
  sub_22C375E04();

  return v22(v21, v22, v23, v24, v25, v26, v27, v28, a9, v30, v31, v32, v33, v34, v35, a16, a17, a18);
}

uint64_t sub_22C85F4DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(uint64_t, char *))
{
  v7 = a4(0);
  sub_22C369824();
  v9 = v8;
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v10);
  v12 = &v19 - v11;
  v13 = sub_22C901FAC();
  v14 = sub_22C369914(v13);
  MEMORY[0x28223BE20](v14);
  sub_22C369838();
  v17 = v16 - v15;
  sub_22C9087AC();
  sub_22C90882C();

  (*(v9 + 16))(v12, a1, v7);
  return a5(v17, v12);
}

void ModularQueryDecorationService.init(clientApplicationIdentifier:toolboxResources:toolExecutionSession:queryDecorator:)()
{
  sub_22C36BA7C();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v29 = sub_22C90B0EC();
  sub_22C369824();
  v28 = v12;
  MEMORY[0x28223BE20](v13);
  sub_22C369838();
  v16 = v15 - v14;
  v27 = sub_22C90B10C();
  sub_22C369824();
  v26 = v17;
  MEMORY[0x28223BE20](v18);
  sub_22C369838();
  v21 = v20 - v19;
  swift_defaultActor_initialize();
  v0[15] = v11;
  v0[16] = v9;
  v0[17] = v7;
  sub_22C3E8FB4(v5, (v0 + 18), &qword_27D9C06A0, &qword_22C929950);
  v22 = sub_22C9043BC();
  sub_22C3856A0(v22);

  v0[23] = sub_22C9043AC();
  v0[26] = v22;
  v0[27] = &protocol witness table for ContextRetrieval;
  if (v3)
  {

    sub_22C36DD28(v5, &qword_27D9C06A0, &qword_22C929950);
  }

  else
  {
    sub_22C378AB0((v0 + 23), v33);
    DecorationSignposter = type metadata accessor for QueryDecorationSignposter(0);
    v24 = sub_22C3856A0(DecorationSignposter);
    sub_22C90B0FC();
    v32[3] = DecorationSignposter;
    v32[4] = &off_283FC1370;
    v32[0] = v24;

    sub_22C90B0FC();
    sub_22C90B0CC();
    type metadata accessor for QueryDecorator();
    sub_22C377A58(v32, v7 != 0);
    sub_22C378AB0(v33, &v30);
    swift_allocObject();

    sub_22C36EFB8();
    v3 = v25;
    sub_22C389A50(v31, v7);

    sub_22C36DD28(v5, &qword_27D9C06A0, &qword_22C929950);
    sub_22C36FF94(v31);
    (*(v28 + 8))(v16, v29);
    (*(v26 + 8))(v21, v27);
    sub_22C36FF94(v33);
    sub_22C36FF94(v32);
  }

  v1[14] = v3;
  sub_22C36CC48();
}

uint64_t sub_22C85F934()
{
  sub_22C369980();
  v1[5] = v2;
  v1[6] = v0;
  v1[3] = v3;
  v1[4] = v4;
  v1[2] = v5;
  v6 = sub_22C90069C();
  sub_22C369914(v6);
  v1[7] = sub_22C3699D4();
  v7 = sub_22C90880C();
  v1[8] = v7;
  sub_22C3699B8(v7);
  v1[9] = v8;
  v1[10] = sub_22C3699D4();
  v9 = sub_22C3A5908(&qword_27D9C06F8, &qword_22C929520);
  sub_22C369914(v9);
  v1[11] = sub_22C3699D4();
  v10 = sub_22C903E9C();
  v1[12] = v10;
  sub_22C3699B8(v10);
  v1[13] = v11;
  v1[14] = sub_22C3699D4();
  v12 = sub_22C9063DC();
  v1[15] = v12;
  sub_22C3699B8(v12);
  v1[16] = v13;
  v1[17] = sub_22C3856B8();
  v1[18] = swift_task_alloc();
  v14 = sub_22C37BB20();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

uint64_t sub_22C85FAD0(uint64_t a1)
{
  sub_22C90408C();
  v3 = sub_22C9063CC();
  sub_22C90AACC();
  sub_22C37E84C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = sub_22C36D240();
    sub_22C36C890(v5);
    sub_22C38C43C(&dword_22C366000, v3, v1, "ModularQueryDecorationService getSpanMatches is being run.");
    sub_22C372FB0();
  }

  v6 = v2[16];
  v8 = v2[13];
  v7 = v2[14];
  v9 = v2[12];

  v10 = *(v6 + 8);
  v11 = sub_22C36BAFC();
  v10(v11);
  (*(v8 + 104))(v7, *MEMORY[0x277D1F170], v9);
  sub_22C8619D4();
  v13 = v12;
  v2[19] = v12;
  v14 = sub_22C36ECB4();
  v15(v14);
  if (!v13)
  {
    sub_22C90408C();
    v26 = sub_22C9063CC();
    v27 = sub_22C90AADC();
    if (sub_22C36D08C(v27))
    {
      *sub_22C36D240() = 0;
      sub_22C374ED0();
      _os_log_impl(v28, v29, v30, v31, v32, 2u);
      sub_22C36BAE0();
    }

    v33 = sub_22C36BAFC();
    v10(v33);
LABEL_12:
    sub_22C37B490();

    sub_22C371EA8();
    sub_22C36D5F8();

    __asm { BRAA            X2, X16 }
  }

  if (!*(v2[6] + 112))
  {

    goto LABEL_12;
  }

  v16 = v2[10];
  v17 = v2[8];
  v18 = v2[9];
  sub_22C90878C();
  sub_22C9087FC();
  (*(v18 + 8))(v16, v17);
  sub_22C902DAC();
  sub_22C902DBC();
  sub_22C36BECC();
  sub_22C36C640(v19, v20, v21, v22);
  v23 = swift_task_alloc();
  v2[20] = v23;
  *v23 = v2;
  v23[1] = sub_22C85FDBC;
  sub_22C36D5F8();

  return QueryDecorator.getSpanMatches(queryDecorationInput:sessionId:)();
}

uint64_t sub_22C85FDBC()
{
  sub_22C36D5EC();
  v3 = v2;
  v4 = *v1;
  v5 = *v1;
  sub_22C369970();
  *v6 = v5;
  *v6 = *v1;
  *(v5 + 168) = v0;

  v7 = *(v4 + 88);
  v8 = *(v4 + 48);
  if (v0)
  {
    sub_22C36DD28(v7, &qword_27D9C06F8, &qword_22C929520);
    v9 = sub_22C85FFCC;
  }

  else
  {
    *(v5 + 176) = v3;
    sub_22C36DD28(v7, &qword_27D9C06F8, &qword_22C929520);
    v9 = sub_22C85FF2C;
  }

  return MEMORY[0x2822009F8](v9, v8, 0);
}

uint64_t sub_22C85FF2C()
{
  sub_22C36D5EC();

  sub_22C37B490();

  v1 = sub_22C371EA8();

  return v2(v1);
}

uint64_t sub_22C85FFCC()
{
  sub_22C36D5EC();
  sub_22C37B490();

  sub_22C369A24();

  return v1();
}

uint64_t sub_22C860070()
{
  sub_22C369980();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = sub_22C90069C();
  sub_22C369914(v4);
  v1[5] = sub_22C3699D4();
  v5 = sub_22C90880C();
  v1[6] = v5;
  sub_22C3699B8(v5);
  v1[7] = v6;
  v1[8] = sub_22C3699D4();
  v7 = sub_22C3A5908(&qword_27D9C06F8, &qword_22C929520);
  sub_22C369914(v7);
  v1[9] = sub_22C3699D4();
  v8 = sub_22C903E9C();
  v1[10] = v8;
  sub_22C3699B8(v8);
  v1[11] = v9;
  v1[12] = sub_22C3699D4();
  v10 = sub_22C9063DC();
  v1[13] = v10;
  sub_22C3699B8(v10);
  v1[14] = v11;
  v1[15] = sub_22C3856B8();
  v1[16] = swift_task_alloc();
  v12 = sub_22C37BB20();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_22C860208(uint64_t a1)
{
  sub_22C90408C();
  v3 = sub_22C9063CC();
  sub_22C90AACC();
  sub_22C37E84C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = sub_22C36D240();
    sub_22C36C890(v5);
    sub_22C38C43C(&dword_22C366000, v3, v1, "ModularQueryDecorationService getContext is being run.");
    sub_22C372FB0();
  }

  v6 = v2[14];
  v8 = v2[11];
  v7 = v2[12];
  v9 = v2[10];

  v10 = *(v6 + 8);
  v11 = sub_22C36BAFC();
  v10(v11);
  (*(v8 + 104))(v7, *MEMORY[0x277D1F188], v9);
  sub_22C8619D4();
  v13 = v12;
  v2[17] = v12;
  v14 = sub_22C36ECB4();
  v15(v14);
  if (v13)
  {
    if (*(v2[4] + 112))
    {
      v16 = v2[8];
      v17 = v2[6];
      v18 = v2[7];
      sub_22C90878C();
      sub_22C9087FC();
      (*(v18 + 8))(v16, v17);
      sub_22C902DAC();
      sub_22C902DBC();
      sub_22C36BECC();
      sub_22C36C640(v19, v20, v21, v22);
      v23 = swift_task_alloc();
      v2[18] = v23;
      *v23 = v2;
      v23[1] = sub_22C860508;

      return QueryDecorator.getContext(queryDecorationInput:sessionId:)();
    }
  }

  else
  {
    sub_22C90408C();
    v25 = sub_22C9063CC();
    v26 = sub_22C90AADC();
    if (sub_22C36D08C(v26))
    {
      *sub_22C36D240() = 0;
      sub_22C374ED0();
      _os_log_impl(v27, v28, v29, v30, v31, 2u);
      sub_22C36BAE0();
    }

    v32 = sub_22C36BAFC();
    v10(v32);
  }

  sub_22C862DEC();

  v33 = sub_22C371EA8();

  return v34(v33);
}

uint64_t sub_22C860508()
{
  sub_22C36D5EC();
  v3 = v2;
  v4 = *v1;
  v5 = *v1;
  sub_22C369970();
  *v6 = v5;
  *v6 = *v1;
  *(v5 + 152) = v0;

  v7 = *(v4 + 72);
  v8 = *(v4 + 32);
  if (v0)
  {
    sub_22C36DD28(v7, &qword_27D9C06F8, &qword_22C929520);
    v9 = sub_22C860718;
  }

  else
  {
    *(v5 + 160) = v3;
    sub_22C36DD28(v7, &qword_27D9C06F8, &qword_22C929520);
    v9 = sub_22C860678;
  }

  return MEMORY[0x2822009F8](v9, v8, 0);
}

uint64_t sub_22C860678()
{
  sub_22C36D5EC();

  sub_22C862DEC();

  v1 = sub_22C371EA8();

  return v2(v1);
}

uint64_t sub_22C860718()
{
  sub_22C36D5EC();
  sub_22C862DEC();

  sub_22C369A24();

  return v1();
}

uint64_t sub_22C8607BC()
{
  sub_22C369980();
  v1[7] = v2;
  v1[8] = v0;
  v1[5] = v3;
  v1[6] = v4;
  v1[3] = v5;
  v1[4] = v6;
  v7 = sub_22C903F4C();
  v1[9] = v7;
  sub_22C3699B8(v7);
  v1[10] = v8;
  v1[11] = sub_22C3856B8();
  v1[12] = swift_task_alloc();
  v9 = sub_22C9036EC();
  v1[13] = v9;
  sub_22C3699B8(v9);
  v1[14] = v10;
  v1[15] = sub_22C3699D4();
  v11 = sub_22C3A5908(&qword_27D9BC1E8, &qword_22C9123B0);
  sub_22C369914(v11);
  v1[16] = sub_22C3699D4();
  v12 = sub_22C9037EC();
  v1[17] = v12;
  sub_22C3699B8(v12);
  v1[18] = v13;
  v1[19] = sub_22C3856B8();
  v1[20] = swift_task_alloc();
  v14 = sub_22C90069C();
  sub_22C369914(v14);
  v1[21] = sub_22C3699D4();
  v15 = sub_22C3A5908(&qword_27D9C06F8, &qword_22C929520);
  sub_22C369914(v15);
  v1[22] = sub_22C3699D4();
  v16 = sub_22C90880C();
  v1[23] = v16;
  sub_22C3699B8(v16);
  v1[24] = v17;
  v1[25] = sub_22C3699D4();
  v18 = sub_22C3A5908(&qword_27D9C0250, &unk_22C929510);
  sub_22C369914(v18);
  v1[26] = sub_22C3699D4();
  v19 = sub_22C3A5908(&qword_27D9BD290, &qword_22C917EC0);
  sub_22C369914(v19);
  v1[27] = sub_22C3856B8();
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  v20 = sub_22C9063DC();
  v1[30] = v20;
  sub_22C3699B8(v20);
  v1[31] = v21;
  v1[32] = sub_22C3856B8();
  v1[33] = swift_task_alloc();
  v22 = sub_22C37BB20();

  return MEMORY[0x2822009F8](v22, v23, v24);
}

void sub_22C860AA4(uint64_t a1)
{
  sub_22C90408C();
  v2 = sub_22C9063CC();
  v3 = sub_22C90AACC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = sub_22C36D240();
    *v4 = 0;
    _os_log_impl(&dword_22C366000, v2, v3, "ModularQueryDecorationService getRetrievedTools is being run.", v4, 2u);
    sub_22C3699EC();
  }

  v5 = *(v1 + 264);
  v6 = *(v1 + 240);
  v7 = *(v1 + 248);
  v99 = *(v1 + 56);
  v100 = *(v1 + 64);
  v8 = *(v1 + 40);
  v9 = *(v1 + 32);

  v10 = *(v7 + 8);
  (v10)(v5, v6);
  sub_22C3A5908(&qword_27D9C0A38, &qword_22C929D48);
  v11 = sub_22C903E9C();
  sub_22C369824();
  v13 = v12;
  v15 = *(v14 + 72);
  v16 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_22C90F870;
  v18 = v17 + v16;
  v20 = *(v13 + 104);
  v19 = v13 + 104;
  v20(v18, *MEMORY[0x277D1F180], v11);
  v20(v18 + v15, *MEMORY[0x277D1F198], v11);
  sub_22C3806B8();
  sub_22C861ACC();
  v22 = v21;
  *(v1 + 272) = v21;

  if (!v22)
  {
    sub_22C90408C();
    v39 = sub_22C9063CC();
    sub_22C90AADC();
    sub_22C37E84C();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = sub_22C36D240();
      sub_22C36C890(v41);
      sub_22C38C43C(&dword_22C366000, v39, OS_LOG_TYPE_DEFAULT, "Failed to generate Query Decoration Input");
      sub_22C372FB0();
    }

    v42 = *(v1 + 72);

    v43 = sub_22C36BAFC();
    (v10)(v43);
    sub_22C36A748();
    v47 = sub_22C36C640(v44, v45, v46, v42);
LABEL_47:
    sub_22C862D78(v47, v48, v49, v50, v51, v52, v53, v54);

    sub_22C369A24();
    sub_22C5CAD40();

    __asm { BRAA            X1, X16 }
  }

  v23 = *(*(v1 + 64) + 112);
  *(v1 + 280) = v23;
  if (!v23)
  {
    sub_22C36A748();
    sub_22C36C640(v55, v56, v57, v58);
    v59 = sub_22C3707B4();
    if (!sub_22C370B74(v59, v60, v61))
    {
      v10 = *(v1 + 144);
      sub_22C903F1C();
      sub_22C38761C();
      v98 = MEMORY[0x277D84F90];
LABEL_13:
      while (v8 != v99)
      {
        if (v8 >= *(v17 + 16))
        {
          __break(1u);
          return;
        }

        v62 = sub_22C36C530();
        v63(v62);
        ++v8;
        sub_22C90371C();
        v64 = v18;
        sub_22C9036BC();
        v65 = sub_22C386BE0();
        v66(v65);
        v67 = sub_22C908EAC();
        sub_22C862ED0(v67);
        if (v72)
        {
          sub_22C36DD28(v18, &qword_27D9BC1E8, &qword_22C9123B0);
        }

        else
        {
          v18 = sub_22C908E7C();
          v11 = v68;
          sub_22C36BBA8();
          (*(v69 + 8))(v64, v19);
          if (qword_27D9BA7B8 != -1)
          {
            sub_22C862D64();
            swift_once();
          }

          v19 = qword_27D9E4020;
          if (*(qword_27D9E4020 + 16))
          {
            sub_22C3866CC();
            sub_22C909FFC();
            sub_22C90B66C();
            sub_22C862E14();
            while (1)
            {
              sub_22C862DFC();
              if ((v70 & 1) == 0)
              {
                break;
              }

              sub_22C862E9C();
              v72 = v72 && v71 == v11;
              if (v72 || (sub_22C90B4FC() & 1) != 0)
              {
                v18 = *(v1 + 136);

                v73 = sub_22C376068();
                v74(v73);
                v17 = v9;
                goto LABEL_13;
              }
            }

            v17 = v9;
            v9 = v100;
          }

          else
          {
          }
        }

        v75 = sub_22C36EE98();
        (v18)(v75);
        v76 = v98;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_22C862E5C();
          v76 = v98;
        }

        v10 = *(v76 + 16);
        v77 = *(v76 + 24);
        v11 = v10 + 1;
        if (v10 >= v77 >> 1)
        {
          sub_22C37EE20(v77);
        }

        v78 = sub_22C372518();
        (v18)(v78);
      }

      v8 = *(v1 + 72);

      v79 = sub_22C3707B4();
      if (sub_22C370B74(v79, v80, v8))
      {
      }

      else
      {
        sub_22C903F2C();
      }
    }

    v81 = *(v1 + 72);
    sub_22C3E8FB4(*(v1 + 232), *(v1 + 224), &qword_27D9BD290, &qword_22C917EC0);
    v82 = sub_22C3707B4();
    v84 = sub_22C370B74(v82, v83, v81);
    v85 = *(v1 + 224);
    if (v84 == 1)
    {

      v86 = v85;
    }

    else
    {
      v87 = sub_22C862E2C();
      (v17)(v87);
      if (v81)
      {
        sub_22C381C20();

        (*(v18 + 8))(v10, v8);
        if (sub_22C370B74(v81, 1, v8) != 1)
        {
          v88 = sub_22C862DD0();
          (v17)(v88);
          sub_22C36DD28(v85, &qword_27D9BD290, &qword_22C917EC0);
          (v17)(v85, v81, v10);
          sub_22C36BECC();
          sub_22C36C640(v89, v90, v91, v10);
LABEL_46:
          v47 = sub_22C862624(*(v1 + 232), *(v1 + 24));
          goto LABEL_47;
        }
      }

      else
      {
        v92 = sub_22C862DB4();
        v93(v92);

        v94 = sub_22C3707B4();
        sub_22C36C640(v94, v95, 1, 0);
      }

      v86 = *(v1 + 216);
    }

    sub_22C36DD28(v86, &qword_27D9BD290, &qword_22C917EC0);
    goto LABEL_46;
  }

  v24 = *(v1 + 200);
  v25 = *(v1 + 184);
  v26 = *(v1 + 192);
  sub_22C90878C();
  v27 = sub_22C9087DC();
  v28 = *(v26 + 8);
  v28(v24, v25);
  *(v1 + 16) = v27;
  sub_22C3A5908(&qword_27D9BA9F0, &qword_22C912420);
  sub_22C3AC13C();
  sub_22C907EDC();

  sub_22C903DEC();
  sub_22C36BECC();
  sub_22C36C640(v29, v30, v31, v32);
  sub_22C90878C();
  sub_22C9087FC();
  v28(v24, v25);
  sub_22C902DAC();
  sub_22C902DBC();
  sub_22C36BECC();
  sub_22C36C640(v33, v34, v35, v36);
  v37 = swift_task_alloc();
  *(v1 + 288) = v37;
  *v37 = v1;
  v37[1] = sub_22C8612DC;
  sub_22C5CAD40();

  QueryDecorator.getRetrievedTools(queryDecorationInput:toolboxResources:qdLookback:toolExecutionSession:sessionId:)();
}

uint64_t sub_22C8612DC()
{
  sub_22C36D5EC();
  v2 = *v1;
  sub_22C369A30();
  *v4 = v3;
  v5 = v2[26];
  v6 = v2[22];
  *v4 = *v1;
  *(v3 + 296) = v0;

  sub_22C36DD28(v6, &qword_27D9C06F8, &qword_22C929520);
  sub_22C36DD28(v5, &qword_27D9C0250, &unk_22C929510);
  v7 = v2[8];
  if (v0)
  {
    v8 = sub_22C8618CC;
  }

  else
  {
    v8 = sub_22C861460;
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

void sub_22C861460()
{
  v8 = sub_22C3707B4();
  if (sub_22C370B74(v8, v9, v10))
  {
LABEL_28:
    v30 = *(v1 + 72);
    sub_22C3E8FB4(*(v1 + 232), *(v1 + 224), &qword_27D9BD290, &qword_22C917EC0);
    v31 = sub_22C3707B4();
    v33 = sub_22C370B74(v31, v32, v30);
    v34 = *(v1 + 224);
    if (v33 == 1)
    {

      v35 = v34;
    }

    else
    {
      v36 = sub_22C862E2C();
      (v4)(v36);
      if (v30)
      {
        sub_22C381C20();

        (*(v6 + 8))(v0, v2);
        if (sub_22C370B74(v30, 1, v2) != 1)
        {
          v37 = sub_22C862DD0();
          (v4)(v37);
          sub_22C36DD28(v34, &qword_27D9BD290, &qword_22C917EC0);
          (v4)(v34, v30, v0);
          sub_22C36BECC();
          sub_22C36C640(v38, v39, v40, v0);
          goto LABEL_36;
        }
      }

      else
      {
        v41 = sub_22C862DB4();
        v42(v41);

        v43 = sub_22C3707B4();
        sub_22C36C640(v43, v44, 1, 0);
      }

      v35 = *(v1 + 216);
    }

    sub_22C36DD28(v35, &qword_27D9BD290, &qword_22C917EC0);
LABEL_36:
    v45 = sub_22C862624(*(v1 + 232), *(v1 + 24));
    sub_22C862D78(v45, v46, v47, v48, v49, v50, v51, v52);

    sub_22C369A24();
    sub_22C5CAD40();

    __asm { BRAA            X1, X16 }
  }

  v0 = *(v1 + 144);
  sub_22C903F1C();
  sub_22C38761C();
  v55 = MEMORY[0x277D84F90];
  while (1)
  {
LABEL_3:
    if (v2 == v56)
    {
      v2 = *(v1 + 72);

      v28 = sub_22C3707B4();
      if (sub_22C370B74(v28, v29, v2))
      {
      }

      else
      {
        sub_22C903F2C();
      }

      goto LABEL_28;
    }

    if (v2 >= *(v4 + 16))
    {
      break;
    }

    v11 = sub_22C36C530();
    v12(v11);
    ++v2;
    sub_22C90371C();
    v13 = v6;
    sub_22C9036BC();
    v14 = sub_22C386BE0();
    v15(v14);
    v16 = sub_22C908EAC();
    sub_22C862ED0(v16);
    if (v21)
    {
      sub_22C36DD28(v6, &qword_27D9BC1E8, &qword_22C9123B0);
    }

    else
    {
      v6 = sub_22C908E7C();
      v5 = v17;
      sub_22C36BBA8();
      (*(v18 + 8))(v13, v7);
      if (qword_27D9BA7B8 != -1)
      {
        sub_22C862D64();
        swift_once();
      }

      v7 = qword_27D9E4020;
      if (*(qword_27D9E4020 + 16))
      {
        sub_22C3866CC();
        sub_22C909FFC();
        sub_22C90B66C();
        sub_22C862E14();
        while (1)
        {
          sub_22C862DFC();
          if ((v19 & 1) == 0)
          {
            break;
          }

          sub_22C862E9C();
          v21 = v21 && v20 == v5;
          if (v21 || (sub_22C90B4FC() & 1) != 0)
          {
            v6 = *(v1 + 136);

            v22 = sub_22C376068();
            v23(v22);
            v4 = v3;
            goto LABEL_3;
          }
        }

        v4 = v3;
        v3 = v57;
      }

      else
      {
      }
    }

    v24 = sub_22C36EE98();
    (v6)(v24);
    v25 = v55;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_22C862E5C();
      v25 = v55;
    }

    v0 = *(v25 + 16);
    v26 = *(v25 + 24);
    v5 = v0 + 1;
    if (v0 >= v26 >> 1)
    {
      sub_22C37EE20(v26);
    }

    v27 = sub_22C372518();
    (v6)(v27);
  }

  __break(1u);
}

uint64_t sub_22C8618CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_22C36CC74();
  sub_22C379BA4();
  v28 = *(v18 + 160);
  v29 = *(v18 + 152);
  v30 = *(v18 + 128);
  v31 = *(v18 + 120);
  v32 = *(v18 + 96);
  v33 = *(v18 + 88);

  sub_22C369A24();
  sub_22C375E04();

  return v20(v19, v20, v21, v22, v23, v24, v25, v26, a9, v28, v29, v30, v31, v32, v33, a16, a17, a18);
}

void sub_22C8619D4()
{
  sub_22C36BA7C();
  sub_22C862E44();
  sub_22C3A5908(&qword_27D9C0A38, &qword_22C929D48);
  v1 = sub_22C903E9C();
  sub_22C369824();
  v3 = v2;
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_22C90F800;
  (*(v3 + 16))(v5 + v4, v0, v1);
  sub_22C3806B8();
  sub_22C861ACC();

  sub_22C36CC48();
}

void sub_22C861ACC()
{
  sub_22C36BA7C();
  v65 = v0;
  v66 = v1;
  v63 = v3;
  v64 = v2;
  sub_22C9063DC();
  sub_22C369824();
  object = v5;
  countAndFlagsBits = v4;
  MEMORY[0x28223BE20](v4);
  sub_22C369ABC();
  v8 = v6 - v7;
  MEMORY[0x28223BE20](v9);
  v67 = v58 - v10;
  v11 = sub_22C903D4C();
  v12 = sub_22C369914(v11);
  MEMORY[0x28223BE20](v12);
  sub_22C369838();
  v62 = v14 - v13;
  sub_22C90069C();
  sub_22C369824();
  v59 = v16;
  v60 = v15;
  MEMORY[0x28223BE20](v15);
  sub_22C369838();
  v61 = v18 - v17;
  v19 = sub_22C3A5908(&qword_27D9BE068, &qword_22C91CE40);
  sub_22C369914(v19);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v20);
  v22 = v58 - v21;
  v23 = sub_22C3A5908(&qword_27D9BEB48, &unk_22C91FF10);
  sub_22C369914(v23);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v24);
  v26 = v58 - v25;
  v27 = sub_22C9068CC();
  sub_22C369824();
  v68 = v28;
  MEMORY[0x28223BE20](v29);
  sub_22C369838();
  v32 = v31 - v30;
  v33 = sub_22C3A5908(&qword_27D9BA808, &qword_22C90C6E0);
  sub_22C369914(v33);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v34);
  v36 = v58 - v35;
  v37 = sub_22C908A0C();
  sub_22C369824();
  v39 = v38;
  MEMORY[0x28223BE20](v40);
  sub_22C369838();
  v43 = v42 - v41;
  sub_22C862100();
  if (sub_22C370B74(v36, 1, v37) == 1)
  {
    sub_22C36DD28(v36, &qword_27D9BA808, &qword_22C90C6E0);
    sub_22C90408C();
    v44 = sub_22C9063CC();
    v45 = sub_22C90AADC();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = sub_22C36D240();
      *v46 = 0;
      _os_log_impl(&dword_22C366000, v44, v45, "No query event found in transcript. QDInput will be nil", v46, 2u);
      sub_22C3699EC();
    }

    object[1](v8, countAndFlagsBits);
  }

  else
  {
    v58[2] = v39;
    (*(v39 + 32))(v43, v36, v37);
    sub_22C90877C();
    sub_22C36BECC();
    sub_22C36C640(v47, v48, v49, v27);
    (*(v68 + 32))(v32, v26, v27);
    v50 = Session.Event.getSessionScopedLoggingSalt()();
    object = v50._object;
    countAndFlagsBits = v50._countAndFlagsBits;
    v67 = sub_22C90891C();
    v58[1] = v51;
    sub_22C9068AC();
    v52 = sub_22C90212C();
    v53 = sub_22C370B74(v22, 1, v52);
    if (v53 == 1)
    {
      sub_22C36DD28(v22, &qword_27D9BE068, &qword_22C91CE40);
    }

    else
    {
      sub_22C90211C();
      sub_22C36BBA8();
      (*(v54 + 8))(v22, v52);
    }

    (*(v59 + 16))(v61, v63, v60);

    sub_22C9034DC();
    v55 = objc_allocWithZone(sub_22C903CBC());
    sub_22C903C4C();
    (*(v68 + 8))(v32, v27);
    v56 = sub_22C38845C();
    v57(v56);
  }

  sub_22C36CC48();
}

void sub_22C862100()
{
  sub_22C36BA7C();
  v30 = v0;
  v1 = sub_22C9063DC();
  sub_22C369824();
  v29 = v2;
  MEMORY[0x28223BE20](v3);
  sub_22C369838();
  v6 = v5 - v4;
  v7 = sub_22C90880C();
  sub_22C369824();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  sub_22C369838();
  v13 = v12 - v11;
  sub_22C90878C();
  sub_22C9087DC();
  v14 = *(v9 + 8);
  v14(v13, v7);
  sub_22C3A5908(&qword_27D9BA9F0, &qword_22C912420);
  sub_22C3AC13C();
  sub_22C907ECC();

  if (!v32)
  {
    sub_22C90408C();
    v22 = sub_22C9063CC();
    v23 = sub_22C90AABC();
    if (sub_22C36D08C(v23))
    {
      *sub_22C36D240() = 0;
      sub_22C374ED0();
      _os_log_impl(v24, v25, v26, v27, v28, 2u);
      sub_22C36BAE0();
    }

    (*(v29 + 8))(v6, v1);
    sub_22C908A0C();
    sub_22C36A748();
    goto LABEL_8;
  }

  sub_22C90878C();
  v15 = sub_22C9087DC();
  v14(v13, v7);
  if ((v31 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v31 < *(v15 + 16))
  {
    v16 = sub_22C908A0C();
    sub_22C36985C();
    (*(v17 + 16))(v30, v15 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * v31, v16);

    sub_22C36BECC();
    v21 = v16;
LABEL_8:
    sub_22C36C640(v18, v19, v20, v21);
    sub_22C36CC48();
    return;
  }

  __break(1u);
}

uint64_t ModularQueryDecorationService.deinit()
{

  sub_22C36DD28(v0 + 144, &qword_27D9C06A0, &qword_22C929950);
  sub_22C36FF94((v0 + 184));
  swift_defaultActor_destroy();
  return v0;
}

uint64_t ModularQueryDecorationService.__deallocating_deinit()
{
  ModularQueryDecorationService.deinit();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_22C86245C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22C382AF4;

  return sub_22C85DCD0();
}

uint64_t sub_22C8624E8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22C3C0980;

  return sub_22C85DCF4();
}

uint64_t sub_22C862624(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C3A5908(&qword_27D9BD290, &qword_22C917EC0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22C862694(uint64_t a1, uint64_t a2)
{
  result = sub_22C8626EC(&qword_27D9C0A40, a2, type metadata accessor for ModularQueryDecorationService, &protocol conformance descriptor for ModularQueryDecorationService);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C8626EC(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t dispatch thunk of ModularQueryDecorationService.setup(sessionState:)()
{
  sub_22C36FB38();
  v1 = v0;
  sub_22C36C89C();
  v7 = (*(v2 + 128) + **(v2 + 128));
  v3 = swift_task_alloc();
  v4 = sub_22C374D1C(v3);
  *v4 = v5;
  v4[1] = sub_22C46BC08;

  return v7(v1);
}

uint64_t dispatch thunk of ModularQueryDecorationService.handle(_:plannerServiceContext:)()
{
  sub_22C36D5EC();
  sub_22C36C89C();
  v6 = (*(v0 + 136) + **(v0 + 136));
  v1 = swift_task_alloc();
  v2 = sub_22C374D1C(v1);
  *v2 = v3;
  v2[1] = sub_22C85D11C;
  v4 = sub_22C3818A8();

  return v6(v4);
}

uint64_t dispatch thunk of ModularQueryDecorationService.getSpanMatches(query:_:plannerServiceContext:)()
{
  sub_22C36C89C();
  v6 = (*(v0 + 160) + **(v0 + 160));
  v1 = swift_task_alloc();
  v2 = sub_22C374D1C(v1);
  *v2 = v3;
  v2[1] = sub_22C85D11C;
  v4 = sub_22C3806B8();

  return v6(v4);
}

uint64_t dispatch thunk of ModularQueryDecorationService.getContext(_:plannerServiceContext:)()
{
  sub_22C36D5EC();
  sub_22C36C89C();
  v6 = (*(v0 + 168) + **(v0 + 168));
  v1 = swift_task_alloc();
  v2 = sub_22C374D1C(v1);
  *v2 = v3;
  v2[1] = sub_22C7D8F18;
  v4 = sub_22C3818A8();

  return v6(v4);
}

uint64_t dispatch thunk of ModularQueryDecorationService.getRetrievedTools(query:_:plannerServiceContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_22C36C89C();
  v15 = (*(v10 + 176) + **(v10 + 176));
  v11 = swift_task_alloc();
  v12 = sub_22C374D1C(v11);
  *v12 = v13;
  v12[1] = sub_22C382AF4;

  return v15(a1, a2, a3, a4, a5);
}

uint64_t sub_22C862D78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
}

void sub_22C862E5C()
{
  v2 = *(v0 + 16) + 1;

  sub_22C3B60C0(0, v2, 1);
}

uint64_t sub_22C862E80()
{

  return swift_slowAlloc();
}

uint64_t sub_22C862EB0()
{

  return sub_22C90893C();
}

unint64_t sub_22C862F28(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    if ((a3 & 0x2000000000000000) != 0)
    {
      v3 = HIBYTE(a3) & 0xF;
    }

    else
    {
      v3 = a2 & 0xFFFFFFFFFFFFLL;
    }

    v4 = 7;
    if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
    {
      v4 = 11;
    }

    v5 = v4 | (v3 << 16);
    result = sub_22C90A33C();
    if (v6)
    {
      result = v5;
    }

    if (4 * v3 >= result >> 14)
    {
      sub_22C90A4AC();
      sub_22C8236DC();
      return sub_22C86812C();
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_22C862FDC(unint64_t result, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    result = sub_22C90AC9C();
    if (v6)
    {
      result = a3;
    }

    if (a3 >> 14 >= result >> 14)
    {
      sub_22C90ACCC();
      sub_22C8236DC();
      return sub_22C86812C();
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22C863074(uint64_t result, uint64_t a2, uint64_t (*a3)(void, uint64_t, uint64_t, uint64_t), void (*a4)(void))
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = *(a2 + 16);
    result = a3(0, result, v5, a2);
    if (v6)
    {
      result = v5;
    }

    if (v5 >= result)
    {
      a4();
      sub_22C8236DC();
      return sub_22C86812C();
    }
  }

  __break(1u);
  return result;
}

uint64_t ToolRetrievalResponse.init(_:)(uint64_t a1)
{
  sub_22C903EEC();
  sub_22C903EFC();
  sub_22C903F0C();
  sub_22C903F1C();
  sub_22C903F3C();
  sub_22C907C7C();
  sub_22C903F4C();
  sub_22C36985C();
  v4 = *(v3 + 8);

  return v4(a1, v2);
}

Swift::String __swiftcall Session.Event.getSessionScopedLoggingSalt()()
{
  sub_22C90069C();
  sub_22C369824();
  MEMORY[0x28223BE20](v0);
  sub_22C369838();
  v1 = sub_22C9088EC();
  v3 = v2;

  v4 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v4 = v1 & 0xFFFFFFFFFFFFLL;
  }

  if (v4)
  {

    v5 = sub_22C9088EC();
  }

  else
  {
    sub_22C9089FC();
    v7 = sub_22C90065C();
    v9 = v8;
    v10 = sub_22C36A724();
    v11(v10);
    v5 = v7;
    v6 = v9;
  }

  result._object = v6;
  result._countAndFlagsBits = v5;
  return result;
}

uint64_t sub_22C8632E4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22C3C0980;
  sub_22C36A724();

  return sub_22C863384();
}

uint64_t sub_22C863384()
{
  sub_22C369980();
  v1[4] = v2;
  v1[5] = v0;
  v1[3] = v3;
  v1[6] = *v0;
  v4 = sub_22C903D4C();
  v1[7] = v4;
  sub_22C3699B8(v4);
  v1[8] = v5;
  v1[9] = sub_22C3699D4();
  v6 = sub_22C90637C();
  v1[10] = v6;
  sub_22C3699B8(v6);
  v1[11] = v7;
  v1[12] = sub_22C3856B8();
  v1[13] = swift_task_alloc();
  v8 = sub_22C9063DC();
  v1[14] = v8;
  sub_22C3699B8(v8);
  v1[15] = v9;
  v1[16] = sub_22C3856B8();
  v1[17] = swift_task_alloc();
  v10 = sub_22C90069C();
  sub_22C369914(v10);
  v1[18] = sub_22C3699D4();
  v11 = sub_22C3A5908(&qword_27D9C06F8, &qword_22C929520);
  sub_22C369914(v11);
  v1[19] = sub_22C3856B8();
  v1[20] = swift_task_alloc();
  v12 = sub_22C90880C();
  v1[21] = v12;
  sub_22C3699B8(v12);
  v1[22] = v13;
  v1[23] = sub_22C3699D4();
  v14 = sub_22C3A5908(&qword_27D9C0250, &unk_22C929510);
  sub_22C369914(v14);
  v1[24] = sub_22C3699D4();
  v15 = sub_22C90634C();
  v1[25] = v15;
  sub_22C3699B8(v15);
  v1[26] = v16;
  v1[27] = sub_22C3856B8();
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  v17 = sub_22C90636C();
  v1[31] = v17;
  sub_22C3699B8(v17);
  v1[32] = v18;
  v1[33] = sub_22C3856B8();
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();
  v1[36] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22C8636BC, v0, 0);
}

uint64_t sub_22C8636BC()
{
  sub_22C866B0C(v0[3], v0[4]);
  v0[37] = v1;
  if (!v1)
  {
    sub_22C90400C();
    v38 = sub_22C9063CC();
    v39 = sub_22C90AADC();
    v40 = sub_22C370048(v39);
    v42 = v0[15];
    v41 = v0[16];
    v43 = v0[14];
    if (v40)
    {
      v44 = sub_22C36D240();
      sub_22C37585C(v44);
      sub_22C369A04(&dword_22C366000, v45, v46, "Failed to generate Query Decoration Input");
      sub_22C36BAE0();
    }

    (*(v42 + 8))(v41, v43);
    sub_22C375C38();

    sub_22C36D5E0();
    sub_22C381608();

    __asm { BRAA            X2, X16 }
  }

  v70 = v1;
  v2 = v0[35];
  v3 = v0[31];
  v4 = v0[32];
  v5 = v0[30];
  sub_22C90367C();
  sub_22C90367C();
  sub_22C90635C();
  sub_22C90631C();
  v6 = *(v4 + 8);
  v0[38] = v6;
  v0[39] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v71 = v6;
  v6(v2, v3);
  v7 = sub_22C90635C();
  v8 = sub_22C90AB6C();
  if (sub_22C90AC5C())
  {
    v9 = sub_22C36D240();
    sub_22C37585C(v9);
    v10 = sub_22C90632C();
    _os_signpost_emit_with_name_impl(&dword_22C366000, v7, v8, v10, "QueryDecoration.mightyCollection", "", v5, 2u);
    sub_22C36BAE0();
  }

  v11 = v0[36];
  v13 = v0[30];
  v12 = v0[31];
  v14 = v0[29];
  v16 = v0[25];
  v15 = v0[26];
  v17 = v0[5];

  (*(v15 + 16))(v14, v13, v16);
  sub_22C9063AC();
  swift_allocObject();
  v0[40] = sub_22C90639C();
  v18 = *(v15 + 8);
  v0[41] = v18;
  v0[42] = (v15 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v19 = v13;
  v20 = v18;
  v18(v19, v16);
  v71(v11, v12);
  v21 = *(v17 + 112);
  v0[43] = v21;
  if (!v21)
  {
    v69 = v20;
    sub_22C90367C();
    v49 = sub_22C90635C();
    sub_22C90638C();
    v50 = sub_22C90AB5C();
    if (sub_22C90AC5C())
    {
      v52 = v0[11];
      v51 = v0[12];
      v53 = v0[10];

      sub_22C9063BC();

      if ((*(v52 + 88))(v51, v53) == *MEMORY[0x277D85B00])
      {
        v54 = "[Error] Interval already ended";
      }

      else
      {
        (*(v0[11] + 8))(v0[12], v0[10]);
        v54 = "";
      }

      v55 = sub_22C36D240();
      *v55 = 0;
      v56 = sub_22C90632C();
      _os_signpost_emit_with_name_impl(&dword_22C366000, v49, v50, v56, "QueryDecoration.mightyCollection", v54, v55, 2u);
      sub_22C3699EC();
    }

    v57 = v0[33];
    v58 = v0[31];
    v59 = v0[27];
    v60 = v0[25];
    v61 = v49;
    v62 = v0[8];
    v63 = v0[9];
    v68 = v0[7];

    v69(v59, v60);
    v71(v57, v58);
    sub_22C903C7C();
    v64 = sub_22C903CEC();
    static AutoBugCaptureHelper.snapshot(caseType:subType:subTypeContext:)(0x4670757465534451, 0xED000064656C6961, v64, v65, 0, 0xE000000000000000);

    (*(v62 + 8))(v63, v68);
    sub_22C867FB4();
    swift_allocError();
    swift_willThrow();

    sub_22C375C38();

    sub_22C369A24();
    sub_22C381608();

    __asm { BRAA            X1, X16 }
  }

  v22 = v0[23];
  v23 = v0[21];
  v24 = v0[22];

  sub_22C90878C();
  v25 = sub_22C9087DC();
  v26 = *(v24 + 8);
  v0[44] = v26;
  v0[45] = (v24 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v26(v22, v23);
  v0[2] = v25;
  sub_22C3A5908(&qword_27D9BA9F0, &qword_22C912420);
  sub_22C3AC13C();
  sub_22C907EDC();

  sub_22C903DEC();
  sub_22C36BECC();
  sub_22C36C640(v27, v28, v29, v30);
  sub_22C90878C();
  sub_22C9087FC();
  v26(v22, v23);
  sub_22C902DAC();
  v0[46] = sub_22C902DBC();
  sub_22C36BECC();
  sub_22C36C640(v31, v32, v33, v34);
  v35 = swift_task_alloc();
  v0[47] = v35;
  *v35 = v0;
  v35[1] = sub_22C863E6C;
  sub_22C381608();

  return QueryDecorator.queryDecorationCollection(qdInput:toolboxResources:qdLookback:toolExecutionSession:sessionId:)();
}

uint64_t sub_22C863E6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *v9;
  v11 = *v9;
  v11[48] = a1;
  v11[49] = v8;

  v12 = v10[24];
  v13 = v10[20];
  v14 = v10[5];

  sub_22C36DD28(v13, &qword_27D9C06F8, &qword_22C929520);
  sub_22C36DD28(v12, &qword_27D9C0250, &unk_22C929510);
  if (v8)
  {
    v15 = sub_22C864400;
  }

  else
  {
    v15 = sub_22C86401C;
  }

  return MEMORY[0x2822009F8](v15, v14, 0);
}

uint64_t sub_22C86401C(uint64_t a1)
{
  sub_22C90400C();
  v3 = sub_22C9063CC();
  v4 = sub_22C90AACC();
  if (sub_22C370048(v4))
  {
    v5 = sub_22C36D240();
    sub_22C36C890(v5);
    _os_log_impl(&dword_22C366000, v3, v4, "handleQueryDecoration has completed", v1, 2u);
    sub_22C372FB0();
  }

  v6 = v2[17];
  v7 = v2[14];
  v8 = v2[15];

  (*(v8 + 8))(v6, v7);
  sub_22C90367C();
  v9 = sub_22C90635C();
  sub_22C90638C();
  v10 = sub_22C90AB5C();
  if (sub_22C90AC5C())
  {
    v11 = v2[13];
    v13 = v2[10];
    v12 = v2[11];

    sub_22C9063BC();

    if ((*(v12 + 88))(v11, v13) == *MEMORY[0x277D85B00])
    {
      v14 = "[Error] Interval already ended";
    }

    else
    {
      (*(v2[11] + 8))(v2[13], v2[10]);
      v14 = "";
    }

    v15 = sub_22C36D240();
    sub_22C37585C(v15);
    v16 = sub_22C90632C();
    _os_signpost_emit_with_name_impl(&dword_22C366000, v9, v10, v16, "QueryDecoration.mightyCollection", v14, v13, 2u);
    sub_22C36BAE0();
  }

  v38 = v2[48];
  v39 = v2[46];
  v37 = v2[44];
  v34 = v2[41];
  v17 = v2[37];
  v35 = v2[38];
  v18 = v2[34];
  v19 = v2[31];
  v20 = v2[28];
  v21 = v9;
  v22 = v2[25];
  v23 = v2[23];
  v24 = v2[19];
  v36 = v2[21];
  v25 = v2[5];
  v26 = v2[3];

  v34(v20, v22);
  v35(v18, v19);
  v27 = *(v25 + 112);

  v28 = v17;
  sub_22C90878C();
  sub_22C9087FC();
  v37(v23, v36);
  sub_22C902DAC();
  sub_22C36BECC();
  sub_22C36C640(v29, v30, v31, v39);
  v40 = static QueryDecorationService.events(for:sessionState:queryDecorator:qdInput:sessionId:)(v38, v26, v27, v17, v24);

  sub_22C36DD28(v24, &qword_27D9C06F8, &qword_22C929520);
  sub_22C375C38();

  sub_22C36D5E0();

  return v32(v40);
}

uint64_t sub_22C864400()
{
  v1 = *(v0 + 296);

  sub_22C375C38();

  sub_22C369A24();

  return v2();
}

uint64_t static QueryDecorationService.events(for:sessionState:queryDecorator:qdInput:sessionId:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v193 = a5;
  v202 = a4;
  v182 = a3;
  v210 = a1;
  v220 = sub_22C901FAC();
  sub_22C369824();
  v181 = v7;
  MEMORY[0x28223BE20](v8);
  sub_22C3698A8();
  v219 = v9;
  sub_22C36BA0C();
  v218 = sub_22C9081CC();
  sub_22C369824();
  v221 = v10;
  MEMORY[0x28223BE20](v11);
  sub_22C3698A8();
  v217 = v12;
  v13 = sub_22C3A5908(&qword_27D9C06F8, &qword_22C929520);
  sub_22C369914(v13);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v14);
  sub_22C36D5B4();
  sub_22C3698F8(v15);
  v191 = sub_22C902DBC();
  sub_22C36985C();
  MEMORY[0x28223BE20](v16);
  sub_22C3698A8();
  sub_22C3698F8(v17);
  sub_22C9063DC();
  sub_22C369824();
  v211 = v19;
  v212 = v18;
  MEMORY[0x28223BE20](v18);
  sub_22C3698E4();
  v225 = v20;
  sub_22C369930();
  MEMORY[0x28223BE20](v21);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v22);
  sub_22C36BA64();
  sub_22C3698F8(v23);
  v187 = sub_22C907C8C();
  sub_22C369824();
  v186 = v24;
  MEMORY[0x28223BE20](v25);
  sub_22C3698A8();
  v196 = v26;
  v27 = sub_22C3A5908(&qword_27D9BD290, &qword_22C917EC0);
  v28 = sub_22C369914(v27);
  MEMORY[0x28223BE20](v28);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v29);
  sub_22C36BA64();
  sub_22C3698F8(v30);
  v204 = sub_22C903F4C();
  sub_22C369824();
  v185 = v31;
  MEMORY[0x28223BE20](v32);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v33);
  sub_22C36BA64();
  sub_22C3698F8(v34);
  v214 = sub_22C9089DC();
  sub_22C369824();
  v216 = v35;
  MEMORY[0x28223BE20](v36);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v37);
  sub_22C36BA64();
  sub_22C3698F8(v38);
  v209 = sub_22C90795C();
  sub_22C369824();
  v208 = v39;
  MEMORY[0x28223BE20](v40);
  sub_22C3698A8();
  v207 = v41;
  v42 = sub_22C3A5908(&qword_27D9BA808, &qword_22C90C6E0);
  v43 = sub_22C3699B8(v42);
  v194 = v44;
  MEMORY[0x28223BE20](v43);
  sub_22C3834F0();
  v46 = MEMORY[0x28223BE20](v45);
  v48 = v180 - v47;
  MEMORY[0x28223BE20](v46);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v49);
  sub_22C36BA58();
  v215 = v50;
  sub_22C369930();
  MEMORY[0x28223BE20](v51);
  v53 = v180 - v52;
  v54 = sub_22C90880C();
  sub_22C369824();
  v56 = v55;
  MEMORY[0x28223BE20](v57);
  sub_22C369838();
  v60 = v59 - v58;
  v61 = sub_22C908A0C();
  sub_22C369824();
  v222 = v62;
  MEMORY[0x28223BE20](v63);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v64);
  sub_22C36BA58();
  v226 = v65;
  sub_22C369930();
  v67 = MEMORY[0x28223BE20](v66);
  v69 = v180 - v68;
  MEMORY[0x28223BE20](v67);
  sub_22C36BA64();
  v213 = v70;
  v71 = a2;
  sub_22C90878C();
  v72 = sub_22C9087DC();
  (*(v56 + 8))(v60, v54);
  sub_22C3A5950(v72);

  v223 = v61;
  if (sub_22C370B74(v53, 1, v61) == 1)
  {
    sub_22C36DD28(v53, &qword_27D9BA808, &qword_22C90C6E0);
    v73 = v225;
    sub_22C90408C();
    v74 = sub_22C9063CC();
    v75 = sub_22C90AADC();
    if (sub_22C369E90(v75))
    {
      v76 = sub_22C36D240();
      sub_22C36C890(v76);
      sub_22C86810C(&dword_22C366000, v77, v78, "Unable to find any events in the transcript");
      sub_22C372FB0();
    }

    (*(v211 + 8))(v73, v212);
    return MEMORY[0x277D84F90];
  }

  else
  {
    v224 = *(v222 + 32);
    v225 = v222 + 32;
    (v224)(v213, v53, v223);
    v80 = sub_22C903DAC();
    if (v80)
    {
      v81 = v80;
    }

    else
    {
      v81 = MEMORY[0x277D84F90];
    }

    MEMORY[0x28223BE20](v80);
    sub_22C36FF0C();
    *(v82 - 256) = v71;
    *(v83 - 16) = v71;
    sub_22C3B27D8(sub_22C867AE8, v84, v81);
    v180[1] = 0;

    v85 = v207;
    sub_22C90679C();
    v86 = sub_22C868140();
    v87(v86, v85, v209);
    v88 = *MEMORY[0x277D1E788];
    v89 = v216;
    v90 = v216 + 104;
    v91 = v214;
    v189 = *(v216 + 104);
    v189(0, v88, v214);
    v199 = v69;
    sub_22C90893C();
    v92 = *(v89 + 8);
    (v92)(0, v91);
    v93 = v215;
    sub_22C36C640(v215, 1, 1, v223);
    v94 = v205;
    sub_22C903D5C();
    v95 = v204;
    v96 = sub_22C370B74(v94, 1, v204);
    v97 = v222;
    v216 = v89 + 8;
    v180[2] = v90;
    v188 = v92;
    if (v96 == 1)
    {
      sub_22C36DD28(v205, &qword_27D9BD290, &qword_22C917EC0);
      v98 = v223;
    }

    else
    {
      v99 = v185;
      v100 = v195;
      (*(v185 + 32))(v195, v205, v95);
      v101 = v184;
      (*(v99 + 16))(v184, v100, v95);
      v205 = sub_22C903EEC();
      v180[0] = v102;
      sub_22C903EFC();
      sub_22C903F0C();
      v103 = sub_22C903F1C();
      sub_22C903F3C();
      v104 = v196;
      sub_22C907C7C();
      v205 = *(v99 + 8);
      (v205)(v101, v95);
      v105 = v186;
      v106 = sub_22C868140();
      v107 = v187;
      v108(v106, v104, v187);
      v109 = v214;
      v189(v103, *MEMORY[0x277D1E740], v214);
      v110 = v183;
      sub_22C90893C();
      v188(v103, v109);
      v93 = v215;
      (*(v105 + 8))(v196, v107);
      (v205)(v195, v204);
      v97 = v222;
      sub_22C36DD28(v93, &qword_27D9BA808, &qword_22C90C6E0);
      sub_22C36BECC();
      v98 = v223;
      sub_22C36C640(v111, v112, v113, v223);
      sub_22C3DB08C(v110, v93, &qword_27D9BA808, &qword_22C90C6E0);
    }

    sub_22C3A5908(&qword_27D9BE098, &qword_22C91CE70);
    v114 = *(v194 + 72);
    v115 = (*(v194 + 80) + 32) & ~*(v194 + 80);
    v116 = swift_allocObject();
    *(v116 + 16) = xmmword_22C90F870;
    v205 = v116;
    v117 = v116 + v115;
    v118 = *(v97 + 16);
    v204 = v97 + 16;
    v203 = v118;
    v118(v116 + v115, v199, v98);
    sub_22C36BECC();
    sub_22C36C640(v119, v120, v121, v98);
    sub_22C3DB138(v93, v117 + v114, &qword_27D9BA808, &qword_22C90C6E0);
    v122 = 0;
    v123 = 0;
    v124 = MEMORY[0x277D84F90];
    do
    {
      v125 = v122;
      sub_22C3DB138(v117 + v123 * v114, v48, &qword_27D9BA808, &qword_22C90C6E0);
      sub_22C3DB08C(v48, v5, &qword_27D9BA808, &qword_22C90C6E0);
      if (sub_22C370B74(v5, 1, v98) == 1)
      {
        sub_22C36DD28(v5, &qword_27D9BA808, &qword_22C90C6E0);
      }

      else
      {
        (v224)(v226, v5, v98);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_22C590488();
          v124 = v128;
        }

        v126 = *(v124 + 16);
        if (v126 >= *(v124 + 24) >> 1)
        {
          sub_22C590488();
          v124 = v129;
        }

        *(v124 + 16) = v126 + 1;
        v127 = v124 + ((*(v222 + 80) + 32) & ~*(v222 + 80)) + *(v222 + 72) * v126;
        v98 = v223;
        (v224)(v127, v226, v223);
      }

      v122 = 1;
      v123 = 1;
    }

    while ((v125 & 1) == 0);
    swift_setDeallocating();
    sub_22C590000();
    v130 = sub_22C903D8C();
    if (v130)
    {
      v131 = v130;
    }

    else
    {
      v131 = MEMORY[0x277D84F90];
    }

    MEMORY[0x28223BE20](v130);
    sub_22C36FF0C();
    *(v133 - 16) = *(v132 - 256);
    sub_22C3B5384(sub_22C867B30, v134, v131);
    v136 = v135;

    v137 = v197;
    sub_22C90400C();

    v138 = sub_22C9063CC();
    v139 = sub_22C90AABC();

    v140 = os_log_type_enabled(v138, v139);
    v196 = v136;
    if (v140)
    {
      v141 = swift_slowAlloc();
      v227 = swift_slowAlloc();
      *v141 = 136315394;
      *(v141 + 4) = sub_22C36F9F4(0xD00000000000003ALL, 0x800000022C937CD0, &v227);
      *(v141 + 12) = 2080;
      type metadata accessor for QueryDecorationService();
      v142 = sub_22C8658EC(v136);
      v144 = sub_22C36F9F4(v142, v143, &v227);

      *(v141 + 14) = v144;
      _os_log_impl(&dword_22C366000, v138, v139, "QDInternal: dynamicEnumerationEntities with statementId's in %s\n%s", v141, 0x16u);
      swift_arrayDestroy();
      sub_22C3699EC();
      sub_22C36BAE0();
    }

    v145 = v212;
    v197 = *(v211 + 8);
    v197(v137, v212);
    v146 = v202;
    v147 = v222;
    v148 = sub_22C903DBC();
    v205 = sub_22C86602C(v148, v198);

    v149 = v223;
    if (v146)
    {
      v150 = v192;
      sub_22C3DB138(v193, v192, &qword_27D9C06F8, &qword_22C929520);
      if (sub_22C370B74(v150, 1, v191) == 1)
      {
        sub_22C36DD28(v150, &qword_27D9C06F8, &qword_22C929520);
      }

      else
      {
        v151 = v190;
        sub_22C867B78(v150, v190);
        if (v182)
        {
          v152 = v205;
          v153 = *(v205 + 16);
          if (v153)
          {
            v227 = MEMORY[0x277D84F90];
            v154 = v146;

            sub_22C3B7754(0, v153, 0);
            v155 = v227;
            v156 = *(v221 + 16);
            v157 = v152 + ((*(v221 + 80) + 32) & ~*(v221 + 80));
            v225 = *(v221 + 72);
            v226 = v156;
            v224 = (v181 + 8);
            v221 += 16;
            v158 = (v221 - 8);
            do
            {
              v159 = v217;
              v160 = v218;
              v226(v217, v157, v218);
              v161 = v219;
              sub_22C9068FC();
              v162 = sub_22C901F9C();
              (*v224)(v161, v220);
              (*v158)(v159, v160);
              v227 = v155;
              v164 = *(v155 + 16);
              v163 = *(v155 + 24);
              if (v164 >= v163 >> 1)
              {
                sub_22C3B7754(v163 > 1, v164 + 1, 1);
                v155 = v227;
              }

              *(v155 + 16) = v164 + 1;
              *(v155 + 4 * v164 + 32) = v162;
              v157 += v225;
              --v153;
            }

            while (v153);
            v145 = v212;
            v146 = v202;
            v147 = v222;
          }

          else
          {
            v165 = v146;

            v155 = MEMORY[0x277D84F90];
          }

          v166 = v190;
          sub_22C85BE0C(v155, v146, v190);

          sub_22C867BDC(v166);
          v149 = v223;
        }

        else
        {
          sub_22C867BDC(v151);
        }
      }
    }

    sub_22C903DAC();
    sub_22C903D5C();
    sub_22C9079BC();
    sub_22C9079CC();
    v167 = v200;
    sub_22C9079AC();
    v189(v167, *MEMORY[0x277D1E808], v214);
    v168 = v213;
    sub_22C90893C();
    v169 = sub_22C36A724();
    (v188)(v169);
    v170 = v201;
    sub_22C90408C();
    v171 = sub_22C9063CC();
    v172 = sub_22C90AACC();
    if (sub_22C369E90(v172))
    {
      v173 = sub_22C36D240();
      sub_22C36C890(v173);
      sub_22C86810C(&dword_22C366000, v174, v175, "Finished generating QueryDecorationService events");
      sub_22C372FB0();
    }

    v197(v170, v145);
    sub_22C3A5908(&qword_27D9BAE10, &unk_22C91DB10);
    v176 = (*(v147 + 80) + 32) & ~*(v147 + 80);
    v177 = swift_allocObject();
    *(v177 + 16) = xmmword_22C90F800;
    v178 = v206;
    v203(v177 + v176, v206, v149);
    v227 = v124;
    sub_22C3CF0B0(v177);
    v179 = *(v147 + 8);
    v179(v178, v149);
    sub_22C36DD28(v215, &qword_27D9BA808, &qword_22C90C6E0);
    v179(v199, v149);
    (*(v208 + 8))(v207, v209);
    v179(v168, v149);
    return v227;
  }
}

uint64_t sub_22C8658EC(uint64_t a1)
{
  v63 = sub_22C9093BC();
  v2 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v62 = v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_22C903E2C();
  v4 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v6 = v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_22C901FAC();
  v7 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v59 = v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_22C9084CC();
  v9 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v58 = v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22C3A5908(&qword_27D9C0A58, &qword_22C929F68);
  MEMORY[0x28223BE20](v11);
  v47 = (v46 - v12);
  v13 = sub_22C3A5908(&qword_27D9C0A60, &unk_22C929F70);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v16 = v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v64 = (v46 - v17);
  v72 = 0;
  v73 = 0xE000000000000000;
  v46[1] = v9 + 16;
  v55 = (v9 + 32);
  v18 = *(a1 + 16);
  v53 = (v4 + 8);
  v52 = (v2 + 8);
  v51 = (v7 + 8);
  v48 = v9;
  v50 = (v9 + 8);
  v49 = a1;

  v20 = 0;
  v56 = v16;
  v57 = v11;
  v54 = v18;
  v21 = v58;
  v22 = v59;
  while (1)
  {
    if (v20 == v18)
    {
      v23 = 1;
      v24 = v18;
      goto LABEL_7;
    }

    if (v20 >= v18)
    {
      break;
    }

    v24 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      goto LABEL_11;
    }

    v25 = v48;
    v26 = v49 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v20;
    v27 = *(v11 + 48);
    v28 = v47;
    *v47 = v20;
    (*(v25 + 16))(v28 + v27, v26, v67);
    sub_22C3DB08C(v28, v16, &qword_27D9C0A58, &qword_22C929F68);
    v23 = 0;
LABEL_7:
    v29 = v64;
    sub_22C36C640(v16, v23, 1, v11);
    sub_22C3DB08C(v16, v29, &qword_27D9C0A60, &unk_22C929F70);
    if (sub_22C370B74(v29, 1, v11) == 1)
    {

      return v72;
    }

    v66 = v24;
    v30 = *v29;
    (*v55)(v21, v29 + *(v11 + 48), v67);
    sub_22C9068FC();
    sub_22C9084AC();
    v65 = sub_22C90381C();
    v32 = v31;
    v33 = *v53;
    v34 = v61;
    (*v53)(v6, v61);
    sub_22C9084AC();
    v35 = v62;
    sub_22C903E0C();
    v33(v6, v34);
    v70 = v30;
    v70 = sub_22C90B47C();
    v71 = v36;
    v68 = 32;
    v69 = 0xE100000000000000;
    sub_22C3858B4();
    v37 = sub_22C90AD7C();
    v39 = v38;

    v70 = 0;
    v71 = 0xE000000000000000;
    sub_22C90AF5C();
    MEMORY[0x2318B7850](8202, 0xE200000000000000);
    MEMORY[0x2318B7850](v37, v39);

    MEMORY[0x2318B7850](0x656D657461747320, 0xEE00203A6449746ELL);
    sub_22C867F24(&qword_27D9BAA48, 255, MEMORY[0x277D1C338], MEMORY[0x277D1C368]);
    v40 = v60;
    v41 = sub_22C90B47C();
    MEMORY[0x2318B7850](v41);

    MEMORY[0x2318B7850](0x6669746E65646920, 0xED0000203A726569);
    MEMORY[0x2318B7850](v65, v32);

    MEMORY[0x2318B7850](0x6156646570797420, 0xED0000203A65756CLL);
    v42 = v63;
    sub_22C90B12C();
    MEMORY[0x2318B7850](v70, v71);
    v20 = v66;

    v43 = v35;
    v44 = v42;
    v16 = v56;
    v11 = v57;
    (*v52)(v43, v44);
    v45 = v40;
    v18 = v54;
    (*v51)(v22, v45);
    result = (*v50)(v21, v67);
  }

  __break(1u);
LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_22C86602C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C9063DC();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    return MEMORY[0x277D84F90];
  }

  MEMORY[0x28223BE20](v6);
  v19[-2] = a2;
  sub_22C3B2784(sub_22C867F6C, &v19[-4], a1);
  v10 = v9;
  sub_22C90400C();

  v11 = sub_22C9063CC();
  v12 = sub_22C90AABC();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v19[0] = v14;
    *v13 = 136315394;
    *(v13 + 4) = sub_22C36F9F4(0xD000000000000029, 0x800000022C937D70, v19);
    *(v13 + 12) = 2080;
    type metadata accessor for QueryDecorationService();
    v15 = sub_22C8663D0(v10);
    v17 = sub_22C36F9F4(v15, v16, v19);

    *(v13 + 14) = v17;
    _os_log_impl(&dword_22C366000, v11, v12, "QDInternal: retrievedContext with statementId's in %s\n%s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2318B9880](v14, -1, -1);
    MEMORY[0x2318B9880](v13, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  return v10;
}

uint64_t sub_22C866290(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(uint64_t, char *))
{
  v7 = a4(0);
  sub_22C369824();
  v9 = v8;
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v10);
  v12 = &v19 - v11;
  v13 = sub_22C901FAC();
  v14 = sub_22C369914(v13);
  MEMORY[0x28223BE20](v14);
  sub_22C369838();
  v17 = v16 - v15;
  sub_22C9087AC();
  sub_22C90882C();

  (*(v9 + 16))(v12, a1, v7);
  return a5(v17, v12);
}

uint64_t sub_22C8663D0(uint64_t a1)
{
  v59 = sub_22C3A5908(&qword_27D9BB908, &qword_22C910960);
  v2 = MEMORY[0x28223BE20](v59);
  v58 = &v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v57 = &v47 - v4;
  v56 = sub_22C90355C();
  v5 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v55 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_22C90399C();
  v7 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_22C901FAC();
  v10 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v64 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_22C9081CC();
  v12 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v14 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_22C3A5908(&qword_27D9C0A68, &unk_22C929F80);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v60 = &v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = (&v47 - v18);
  v72 = 0;
  v73 = 0xE000000000000000;
  v70 = 0;
  v71 = 0;
  v52 = (v12 + 32);
  v51 = (v7 + 8);
  v49 = (v5 + 8);
  v48 = (v10 + 8);
  v47 = (v12 + 8);
  v69 = a1;

  v50 = v19;
  while (1)
  {
    v28 = v60;
    sub_22C80EE78(v20, v21, v22, v23, v24, v25, v26, v27, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58);
    sub_22C3DB08C(v28, v19, &qword_27D9C0A68, &unk_22C929F80);
    v29 = sub_22C3A5908(&qword_27D9BF300, &unk_22C922550);
    if (sub_22C370B74(v19, 1, v29) == 1)
    {
      break;
    }

    v30 = *v19;
    (*v52)(v14, v19 + *(v29 + 48), v63);
    sub_22C9068FC();
    sub_22C9081AC();
    v31 = v55;
    sub_22C90394C();
    v32 = *v51;
    v33 = v54;
    (*v51)(v9, v54);
    v61 = sub_22C90354C();
    v35 = v34;
    (*v49)(v31, v56);
    sub_22C9081AC();
    v62 = sub_22C90390C();
    v37 = v36;
    v32(v9, v33);
    sub_22C9081AC();
    v38 = v57;
    sub_22C90391C();
    v32(v9, v33);
    v67 = v30;
    v67 = sub_22C90B47C();
    v68 = v39;
    v65 = 32;
    v66 = 0xE100000000000000;
    sub_22C3858B4();
    v40 = sub_22C90AD7C();
    v42 = v41;

    v67 = 0;
    v68 = 0xE000000000000000;
    sub_22C90AF5C();
    MEMORY[0x2318B7850](8202, 0xE200000000000000);
    MEMORY[0x2318B7850](v40, v42);
    v19 = v50;

    MEMORY[0x2318B7850](0x656D657461747320, 0xEE00203A6449746ELL);
    v43 = v64;
    LODWORD(v65) = sub_22C901F9C();
    v44 = sub_22C90B47C();
    MEMORY[0x2318B7850](v44);

    MEMORY[0x2318B7850](0x747865746E6F6320, 0xEE00203A65707954);
    MEMORY[0x2318B7850](v61, v35);

    MEMORY[0x2318B7850](0x6669746E65646920, 0xED0000203A726569);
    MEMORY[0x2318B7850](v62, v37);

    MEMORY[0x2318B7850](0x6156646570797420, 0xED0000203A65756CLL);
    sub_22C3DB138(v38, v58, &qword_27D9BB908, &qword_22C910960);
    v45 = sub_22C90A1AC();
    MEMORY[0x2318B7850](v45);

    MEMORY[0x2318B7850](v67, v68);

    sub_22C36DD28(v38, &qword_27D9BB908, &qword_22C910960);
    (*v48)(v43, v53);
    v20 = (*v47)(v14, v63);
  }

  return v72;
}

void sub_22C866B0C(uint64_t a1, uint64_t a2)
{
  v137 = a2;
  v4 = sub_22C903D4C();
  v5 = sub_22C369914(v4);
  MEMORY[0x28223BE20](v5);
  sub_22C369838();
  v8 = v7 - v6;
  v135 = sub_22C90069C();
  sub_22C369824();
  v134 = v9;
  MEMORY[0x28223BE20](v10);
  sub_22C3698A8();
  v136 = v11;
  v12 = sub_22C3A5908(&qword_27D9BE068, &qword_22C91CE40);
  sub_22C369914(v12);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v13);
  sub_22C36D5B4();
  v142 = v14;
  v15 = sub_22C3A5908(&qword_27D9BEB48, &unk_22C91FF10);
  sub_22C369914(v15);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v16);
  sub_22C36D5B4();
  countAndFlagsBits = v17;
  sub_22C36BA0C();
  v147 = sub_22C9068CC();
  sub_22C369824();
  v144 = v18;
  MEMORY[0x28223BE20](v19);
  sub_22C3698A8();
  v143 = v20;
  v21 = sub_22C3A5908(&qword_27D9BA808, &qword_22C90C6E0);
  sub_22C369914(v21);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v22);
  sub_22C36D5B4();
  object = v23;
  sub_22C36BA0C();
  sub_22C908A0C();
  sub_22C369824();
  v152 = v24;
  v153 = v25;
  MEMORY[0x28223BE20](v24);
  sub_22C3698A8();
  v151 = v26;
  sub_22C36BA0C();
  v154 = sub_22C9063DC();
  sub_22C369824();
  v28 = v27;
  MEMORY[0x28223BE20](v29);
  sub_22C3834F0();
  MEMORY[0x28223BE20](v30);
  sub_22C36BA58();
  v146 = v31;
  sub_22C369930();
  v33 = MEMORY[0x28223BE20](v32);
  v35 = &v126 - v34;
  MEMORY[0x28223BE20](v33);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v36);
  v38 = &v126 - v37;
  v39 = sub_22C90880C();
  sub_22C369824();
  v41 = v40;
  MEMORY[0x28223BE20](v42);
  sub_22C369838();
  v45 = v44 - v43;
  v150 = a1;
  sub_22C90878C();
  v46 = sub_22C9087DC();
  v47 = *(v41 + 8);
  v140 = v41 + 8;
  v141 = v39;
  v139 = v47;
  v47(v45, v39);
  v155[0] = v46;
  v48 = sub_22C3A5908(&qword_27D9BA9F0, &qword_22C912420);
  v138 = sub_22C3AC13C();
  v49 = sub_22C907E9C();

  if (v49[2])
  {
    v130 = v48;
    v131 = v35;
    v50 = v49[6];
    v128 = v49[5];
    v145 = v50;

    sub_22C90400C();

    v51 = sub_22C9063CC();
    v52 = sub_22C90AACC();

    v53 = os_log_type_enabled(v51, v52);
    v129 = v8;
    if (v53)
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v155[0] = v55;
      *v54 = 136315138;
      v56 = sub_22C3A5908(&qword_27D9C0A50, &qword_22C929F60);
      v57 = MEMORY[0x2318B7AD0](v49, v56);
      v132 = v28;
      v58 = v57;
      v60 = v59;

      v61 = sub_22C36F9F4(v58, v60, v155);
      v62 = v153;

      *(v54 + 4) = v61;
      v28 = v132;
      _os_log_impl(&dword_22C366000, v51, v52, "Tool Retrieval queries: %s", v54, 0xCu);
      sub_22C36FF94(v55);
      v63 = v154;
      sub_22C3699EC();
      sub_22C3699EC();

      v64 = *(v28 + 8);
      v64(v38, v63);
    }

    else
    {

      v64 = *(v28 + 8);
      v63 = v154;
      v64(v38, v154);
      v62 = v153;
    }

    v68 = object;
    sub_22C86775C(object);
    v69 = v152;
    v70 = sub_22C370B74(v68, 1, v152);
    v71 = countAndFlagsBits;
    if (v70 == 1)
    {

      sub_22C36DD28(v68, &qword_27D9BA808, &qword_22C90C6E0);
      v72 = v146;
      sub_22C90400C();
      v73 = sub_22C9063CC();
      v74 = sub_22C90AADC();
      if (sub_22C369E90(v74))
      {
        v75 = sub_22C36D240();
        sub_22C36C890(v75);
        sub_22C86810C(&dword_22C366000, v76, v77, "No query event found in transcript. QDInput will be nil");
        sub_22C372FB0();
      }

      v64(v72, v63);
      return;
    }

    (*(v62 + 32))(v151, v68, v69);
    sub_22C90877C();
    sub_22C36BECC();
    v78 = v71;
    v79 = v147;
    sub_22C36C640(v80, v81, v82, v147);
    (*(v144 + 32))(v143, v78, v79);
    v83 = Session.Event.getSessionScopedLoggingSalt()();
    object = v83._object;
    countAndFlagsBits = v83._countAndFlagsBits;
    v84 = sub_22C90891C();
    v131 = v85;
    v86 = v142;
    sub_22C9068AC();
    v87 = sub_22C90212C();
    v88 = sub_22C370B74(v86, 1, v87);
    v132 = v28;
    v146 = v84;
    if (v88 == 1)
    {
      sub_22C36DD28(v86, &qword_27D9BE068, &qword_22C91CE40);
      v127 = 0;
      v126 = 0;
    }

    else
    {
      v127 = sub_22C90211C();
      v126 = v89;
      (*(*(v87 - 8) + 8))(v86, v87);
    }

    v90 = v141;
    sub_22C90878C();
    v91 = sub_22C9087DC();
    v139(v45, v90);
    v155[0] = v91;
    v92 = sub_22C907F5C();

    v93 = sub_22C863074(1, v92, sub_22C88842C, sub_22C633A28);
    v100 = v96 >> 1;
    v101 = (v96 >> 1) - v95;
    if (__OFSUB__(v96 >> 1, v95))
    {
      goto LABEL_29;
    }

    if (v101)
    {
      v102 = v94;
      v103 = v95;
      v150 = v93;
      v155[0] = MEMORY[0x277D84F90];
      sub_22C3B5E2C(0, v101 & ~(v101 >> 63), 0, v96, v97, v98, v99);
      if (v101 < 0)
      {
LABEL_30:
        __break(1u);
        return;
      }

      v104 = v155[0];
      v105 = (v102 + 24 * v103 + 16);
      while (v103 < v100)
      {
        v106 = *(v105 - 1);
        v107 = *v105;
        v155[0] = v104;
        v109 = *(v104 + 16);
        v108 = *(v104 + 24);

        if (v109 >= v108 >> 1)
        {
          sub_22C3B5E2C(v108 > 1, v109 + 1, 1, v110, v111, v112, v113);
          v104 = v155[0];
        }

        *(v104 + 16) = v109 + 1;
        v114 = v104 + 16 * v109;
        *(v114 + 32) = v106;
        *(v114 + 40) = v107;
        ++v103;
        v105 += 3;
        if (v100 == v103)
        {
          swift_unknownObjectRelease();
          v63 = v154;
          goto LABEL_25;
        }
      }

      __break(1u);
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    swift_unknownObjectRelease();
    v104 = MEMORY[0x277D84F90];
LABEL_25:
    v115 = v133;
    sub_22C90400C();

    v116 = sub_22C9063CC();
    v117 = sub_22C90AACC();

    if (os_log_type_enabled(v116, v117))
    {
      v118 = swift_slowAlloc();
      v119 = swift_slowAlloc();
      v155[0] = v119;
      *v118 = 136315138;
      v120 = MEMORY[0x2318B7AD0](v104, MEMORY[0x277D837D0]);
      v122 = sub_22C36F9F4(v120, v121, v155);

      *(v118 + 4) = v122;
      _os_log_impl(&dword_22C366000, v116, v117, "Tool Retrieval previousQueries: %s", v118, 0xCu);
      sub_22C36FF94(v119);
      sub_22C3699EC();
      sub_22C36BAE0();
    }

    v64(v115, v63);
    v124 = v151;
    v123 = v152;
    (*(v134 + 16))(v136, v137, v135);
    sub_22C9034CC();
    v125 = objc_allocWithZone(sub_22C903CBC());
    sub_22C903C5C();
    (*(v144 + 8))(v143, v147);
    (*(v153 + 8))(v124, v123);
  }

  else
  {

    sub_22C90400C();
    v65 = sub_22C9063CC();
    v66 = sub_22C90AADC();
    if (sub_22C370048(v66))
    {
      v67 = sub_22C36D240();
      *v67 = 0;
      _os_log_impl(&dword_22C366000, v65, v66, "No query found in transcript. QDInput will be nil", v67, 2u);
      sub_22C3699EC();
    }

    (*(v28 + 8))(v2, v154);
  }
}

uint64_t sub_22C86775C@<X0>(uint64_t a1@<X8>)
{
  v1 = sub_22C9063DC();
  sub_22C369824();
  v28 = v2;
  MEMORY[0x28223BE20](v3);
  sub_22C369838();
  v6 = v5 - v4;
  v7 = sub_22C90880C();
  sub_22C369824();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  sub_22C369838();
  v13 = v12 - v11;
  sub_22C90878C();
  sub_22C9087DC();
  v14 = *(v9 + 8);
  v14(v13, v7);
  sub_22C3A5908(&qword_27D9BA9F0, &qword_22C912420);
  sub_22C3AC13C();
  sub_22C907ECC();

  if (!v31)
  {
    sub_22C90400C();
    v23 = sub_22C9063CC();
    v24 = sub_22C90AABC();
    if (sub_22C370048(v24))
    {
      v25 = sub_22C36D240();
      sub_22C37585C(v25);
      sub_22C369A04(&dword_22C366000, v26, v27, "No query found in transcript");
      sub_22C36BAE0();
    }

    (*(v28 + 8))(v6, v1);
    v22 = sub_22C908A0C();
    v19 = a1;
    v20 = 1;
    v21 = 1;
    return sub_22C36C640(v19, v20, v21, v22);
  }

  sub_22C90878C();
  v15 = sub_22C9087DC();
  result = (v14)(v13, v7);
  if ((v30 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v30 < *(v15 + 16))
  {
    v17 = sub_22C908A0C();
    sub_22C36985C();
    (*(v18 + 16))(a1, v15 + ((*(v18 + 80) + 32) & ~*(v18 + 80)) + *(v18 + 72) * v30, v17);

    sub_22C36BECC();
    v22 = v17;
    return sub_22C36C640(v19, v20, v21, v22);
  }

  __break(1u);
  return result;
}

uint64_t sub_22C867A40()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22C85D138;

  return sub_22C8632E4();
}

uint64_t sub_22C867B78(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C902DBC();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22C867BDC(uint64_t a1)
{
  v2 = sub_22C902DBC();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22C867C38(uint64_t a1, uint64_t a2)
{
  result = sub_22C867F24(qword_2814330C8, a2, type metadata accessor for QueryDecorationService, &protocol conformance descriptor for QueryDecorationService);
  *(a1 + 8) = result;
  return result;
}

uint64_t dispatch thunk of QueryDecorationService.setup(sessionState:)(uint64_t a1)
{
  v6 = (*(*v1 + 160) + **(*v1 + 160));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_22C382AF4;

  return v6(a1);
}

uint64_t dispatch thunk of QueryDecorationService.handle(_:plannerServiceContext:)()
{
  v5 = (*(*v0 + 168) + **(*v0 + 168));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_22C7D8F18;
  v3 = sub_22C36A724();

  return v5(v3);
}

uint64_t sub_22C867F24(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

unint64_t sub_22C867FB4()
{
  result = qword_27D9C0A70;
  if (!qword_27D9C0A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C0A70);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for QueryDecorationServiceError(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_22C8680B8()
{
  result = qword_27D9C0A78;
  if (!qword_27D9C0A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C0A78);
  }

  return result;
}

void sub_22C86810C(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t sub_22C868154()
{
  sub_22C869124(v0 + OBJC_IVAR____TtCC30IntelligenceFlowPlannerRuntime23ResponseGenerationValue7Builder_type);
  sub_22C869124(v0 + OBJC_IVAR____TtCC30IntelligenceFlowPlannerRuntime23ResponseGenerationValue7Builder_string);

  return swift_deallocClassInstance();
}

uint64_t sub_22C8681E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_22C3A5908(&qword_27D9C0AB8, &qword_22C92A190);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v25 - v11;
  v13 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v13 || (sub_22C373BCC(1701869940, 0xE400000000000000) & 1) != 0)
  {
    sub_22C869250(v3 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime23ResponseGenerationValue_type, v12);
    v14 = sub_22C902FBC();
    if (sub_22C370B74(v12, 1, v14) == 1)
    {
      v15 = v12;
LABEL_8:
      result = sub_22C869124(v15);
LABEL_9:
      *a3 = 0u;
      *(a3 + 16) = 0u;
      return result;
    }

    *(a3 + 24) = v14;
    v17 = sub_22C36D548(a3);
    return (*(*(v14 - 8) + 32))(v17, v12, v14);
  }

  else
  {
    v18 = a1 == 0x676E69727473 && a2 == 0xE600000000000000;
    if (v18 || (sub_22C373BCC(0x676E69727473, 0xE600000000000000) & 1) != 0)
    {
      sub_22C869250(v3 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime23ResponseGenerationValue_string, v10);
      v19 = sub_22C902FBC();
      if (sub_22C370B74(v10, 1, v19) == 1)
      {
        v15 = v10;
        goto LABEL_8;
      }

      *(a3 + 24) = v19;
      v20 = sub_22C36D548(a3);
      return (*(*(v19 - 8) + 32))(v20, v10, v19);
    }

    else
    {
      result = 0x7265626D756ELL;
      v21 = a1 == 0x7265626D756ELL && a2 == 0xE600000000000000;
      if (v21 || (result = sub_22C373BCC(0x7265626D756ELL, 0xE600000000000000), (result & 1) != 0))
      {
        if (*(v3 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime23ResponseGenerationValue_number + 8))
        {
          goto LABEL_9;
        }

        v22 = *(v3 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime23ResponseGenerationValue_number);
        *(a3 + 24) = MEMORY[0x277D839F8];
        *a3 = v22;
      }

      else
      {
        result = 0x6E61656C6F6F62;
        if (a1 != 0x6E61656C6F6F62 || a2 != 0xE700000000000000)
        {
          result = sub_22C373BCC(0x6E61656C6F6F62, 0xE700000000000000);
          if ((result & 1) == 0)
          {
            goto LABEL_9;
          }
        }

        v24 = *(v3 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime23ResponseGenerationValue_BOOLean);
        *(a3 + 24) = MEMORY[0x277D839B0];
        *a3 = v24;
      }
    }
  }

  return result;
}

unint64_t sub_22C868484(uint64_t a1)
{
  v1 = sub_22C90B21C();

  if (v1 >= 4)
  {
    return 4;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_22C8684D0(char a1)
{
  result = 1701869940;
  switch(a1)
  {
    case 1:
      result = 0x676E69727473;
      break;
    case 2:
      result = 0x7265626D756ELL;
      break;
    case 3:
      result = 0x6E61656C6F6F62;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_22C868568@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_22C868484(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_22C868598@<X0>(uint64_t *a1@<X8>)
{
  result = sub_22C8684D0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_22C8685CC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_22C868484(a1);
  *a2 = result;
  return result;
}

uint64_t sub_22C868600(uint64_t a1)
{
  v2 = sub_22C86918C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C86863C(uint64_t a1)
{
  v2 = sub_22C86918C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C868678()
{
  sub_22C869124(v0 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime23ResponseGenerationValue_type);
  sub_22C869124(v0 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime23ResponseGenerationValue_string);
  return v0;
}

uint64_t sub_22C8686B8()
{
  sub_22C868678();

  return swift_deallocClassInstance();
}

void sub_22C868738(uint64_t a1)
{
  sub_22C868A24(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_22C8687E8(void *a1)
{
  v3 = v1;
  v5 = sub_22C3A5908(&qword_27D9C0AD8, &qword_22C92A1A0);
  sub_22C369824();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v15[-v9];
  sub_22C374168(a1, a1[3]);
  sub_22C86918C();
  sub_22C90B6CC();
  v11 = OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime23ResponseGenerationValue_type;
  v17 = 0;
  sub_22C902FBC();
  sub_22C36B850();
  sub_22C8690DC(v12, v13, MEMORY[0x277D55C50]);
  sub_22C36A49C(v3 + v11, &v17);
  if (!v2)
  {
    v16 = 1;
    sub_22C36A49C(v3 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime23ResponseGenerationValue_string, &v16);
    v15[13] = 2;
    sub_22C90B39C();
    v15[12] = 3;
    sub_22C90B3DC();
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t sub_22C8689D4(void *a1)
{
  v2 = swift_allocObject();
  sub_22C868B48(a1);
  return v2;
}

void sub_22C868A24(uint64_t a1)
{
  if (!qword_27D9C0A90)
  {
    sub_22C902FBC();
    v1 = sub_22C90AC6C();
    if (!v2)
    {
      atomic_store(v1, &qword_27D9C0A90);
    }
  }
}

void sub_22C868AA4(uint64_t a1)
{
  sub_22C868A24(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

id *sub_22C868B48(void *a1)
{
  v3 = v1;
  v5 = sub_22C3A5908(&qword_27D9C0AB8, &qword_22C92A190);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v25 - v9;
  v25[2] = sub_22C3A5908(&qword_27D9C0AC0, &qword_22C92A198);
  sub_22C369824();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  *(v3 + 16) = 0;
  v14 = a1[3];
  v26 = a1;
  sub_22C374168(a1, v14);
  sub_22C86918C();
  sub_22C90B6BC();
  if (v2)
  {

    type metadata accessor for ResponseGenerationValue(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v25[1] = v12;
    v15 = sub_22C902FBC();
    v30 = 0;
    sub_22C36B850();
    sub_22C8690DC(v16, v17, MEMORY[0x277D55C60]);
    sub_22C8694A4(v15, &v30);
    sub_22C8691E0(v10, v3 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime23ResponseGenerationValue_type);
    v29 = 1;
    sub_22C8694A4(v15, &v29);
    sub_22C8691E0(v8, v3 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime23ResponseGenerationValue_string);
    v28 = 2;
    v19 = sub_22C90B28C();
    v20 = v3 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime23ResponseGenerationValue_number;
    *v20 = v19;
    *(v20 + 8) = v21 & 1;
    v27 = 3;
    v22 = sub_22C90B2EC();
    v23 = sub_22C371510();
    v24(v23);
    *(v3 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime23ResponseGenerationValue_BOOLean) = v22 & 1;
  }

  sub_22C36FF94(v26);
  return v3;
}

void *sub_22C868EF0()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 16);
  v3 = v2;
  return v2;
}

void sub_22C868F38(uint64_t a1)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = *(v3 + 16);
  *(v3 + 16) = a1;
}

uint64_t sub_22C868FFC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_22C8689D4(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_22C8690DC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22C869124(uint64_t a1)
{
  v2 = sub_22C3A5908(&qword_27D9C0AB8, &qword_22C92A190);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_22C86918C()
{
  result = qword_27D9C0AC8;
  if (!qword_27D9C0AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C0AC8);
  }

  return result;
}

uint64_t sub_22C8691E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C3A5908(&qword_27D9C0AB8, &qword_22C92A190);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22C869250(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C3A5908(&qword_27D9C0AB8, &qword_22C92A190);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_BYTE *storeEnumTagSinglePayload for ResponseGenerationValue.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_22C8693A0()
{
  result = qword_27D9C0AE8;
  if (!qword_27D9C0AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C0AE8);
  }

  return result;
}

unint64_t sub_22C8693F8()
{
  result = qword_27D9C0AF0;
  if (!qword_27D9C0AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C0AF0);
  }

  return result;
}

unint64_t sub_22C869450()
{
  result = qword_27D9C0AF8;
  if (!qword_27D9C0AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C0AF8);
  }

  return result;
}

uint64_t sub_22C8694A4(uint64_t a1, uint64_t a2)
{

  return sub_22C90B2BC();
}

uint64_t sub_22C869504()
{
  sub_22C9063DC();
  sub_22C369824();
  MEMORY[0x28223BE20](v2);
  sub_22C869EDC();
  sub_22C9027BC();
  sub_22C369824();
  MEMORY[0x28223BE20](v3);
  sub_22C36A0E0();
  MEMORY[0x28223BE20](v4);
  sub_22C3705C8();
  v6 = MEMORY[0x28223BE20](v5);
  v14 = sub_22C373BE8(v6, v7, v8, v9, v10, v11, v12, v13, v42);
  v1(v14);
  v15 = sub_22C388A98();
  v17 = v16(v15);
  if (v17 == *MEMORY[0x277D1CD18])
  {
    v18 = sub_22C36C56C();
    v19(v18);
    return 0xD00000000000001CLL;
  }

  else if (v17 == *MEMORY[0x277D1CD10])
  {
    v21 = sub_22C36C56C();
    v22(v21);
    return 0xD00000000000001ALL;
  }

  else if (v17 == *MEMORY[0x277D1CCE8])
  {
    sub_22C371EBC();
    return v23 + 3;
  }

  else if (v17 == *MEMORY[0x277D1CD00])
  {
    sub_22C371EBC();
    return v24 + 5;
  }

  else if (v17 == *MEMORY[0x277D1CCC0])
  {
    return 0xD000000000000011;
  }

  else if (v17 == *MEMORY[0x277D1CCE0])
  {
    sub_22C371EBC();
    return v25 | 2;
  }

  else if (v17 == *MEMORY[0x277D1CD08])
  {
    sub_22C371EBC();
    return v26 + 7;
  }

  else
  {
    v27 = sub_22C36C56C();
    v28(v27);
    sub_22C90405C();
    v29 = sub_22C386F08();
    v1(v29);
    v30 = sub_22C9063CC();
    v31 = sub_22C90AADC();
    if (sub_22C36DBFC(v31))
    {
      swift_slowAlloc();
      sub_22C869F30();
      v32 = sub_22C869EF8(4.8149e-34);
      v1(v32);
      sub_22C90A1AC();
      v33 = sub_22C378930();
      v34(v33);
      v35 = sub_22C389328();

      *(v0 + 4) = v35;
      sub_22C869F0C(&dword_22C366000, v36, v37, "Unknown system requirement %s");
      sub_22C3751A8();
      sub_22C370510();
    }

    else
    {

      v38 = sub_22C378930();
      v39(v38);
    }

    v40 = sub_22C372EE8();
    v41(v40);
    return 0;
  }
}

uint64_t sub_22C869898()
{
  sub_22C9063DC();
  sub_22C369824();
  MEMORY[0x28223BE20](v2);
  sub_22C869EDC();
  sub_22C90217C();
  sub_22C369824();
  MEMORY[0x28223BE20](v3);
  sub_22C36A0E0();
  MEMORY[0x28223BE20](v4);
  sub_22C3705C8();
  v6 = MEMORY[0x28223BE20](v5);
  v14 = sub_22C373BE8(v6, v7, v8, v9, v10, v11, v12, v13, v34);
  v1(v14);
  v15 = sub_22C388A98();
  v17 = v16(v15);
  if (v17 == *MEMORY[0x277D1C5D8])
  {
    return 0x65526E496E676973;
  }

  if (v17 == *MEMORY[0x277D1C5E0])
  {
    return 0xD000000000000014;
  }

  if (v17 == *MEMORY[0x277D1C5E8])
  {
    return 0xD000000000000018;
  }

  v19 = sub_22C36C56C();
  v20(v19);
  sub_22C90405C();
  v21 = sub_22C386F08();
  v1(v21);
  v22 = sub_22C9063CC();
  v23 = sub_22C90AADC();
  if (sub_22C36DBFC(v23))
  {
    swift_slowAlloc();
    sub_22C869F30();
    v24 = sub_22C869EF8(4.8149e-34);
    v1(v24);
    sub_22C90A1AC();
    v25 = sub_22C378930();
    v26(v25);
    v27 = sub_22C389328();

    *(v0 + 4) = v27;
    sub_22C869F0C(&dword_22C366000, v28, v29, "Unknown app requirement %s");
    sub_22C3751A8();
    sub_22C370510();
  }

  else
  {

    v30 = sub_22C378930();
    v31(v30);
  }

  v32 = sub_22C372EE8();
  v33(v32);
  return 0;
}

unint64_t sub_22C869B6C()
{
  sub_22C9063DC();
  sub_22C369824();
  MEMORY[0x28223BE20](v2);
  sub_22C869EDC();
  sub_22C9029BC();
  sub_22C369824();
  MEMORY[0x28223BE20](v3);
  sub_22C36A0E0();
  MEMORY[0x28223BE20](v4);
  sub_22C3705C8();
  v6 = MEMORY[0x28223BE20](v5);
  v14 = sub_22C373BE8(v6, v7, v8, v9, v10, v11, v12, v13, v38);
  v1(v14);
  v15 = sub_22C388A98();
  v17 = v16(v15);
  if (v17 == *MEMORY[0x277D1CF28])
  {
    return 0xD000000000000016;
  }

  if (v17 == *MEMORY[0x277D1CF58])
  {
    goto LABEL_4;
  }

  if (v17 == *MEMORY[0x277D1CF20])
  {
    sub_22C38C244();
    return v20 + 11;
  }

  if (v17 == *MEMORY[0x277D1CF48])
  {
    goto LABEL_8;
  }

  if (v17 == *MEMORY[0x277D1CF30])
  {
    return 0xD000000000000016;
  }

  if (v17 == *MEMORY[0x277D1CF50])
  {
LABEL_4:
    sub_22C38C244();
    return v19 + 5;
  }

  if (v17 == *MEMORY[0x277D1CF38])
  {
    sub_22C38C244();
    return v22 + 2;
  }

  else
  {
    if (v17 == *MEMORY[0x277D1CF40])
    {
LABEL_8:
      sub_22C38C244();
      return v21 + 4;
    }

    v23 = sub_22C36C56C();
    v24(v23);
    sub_22C90405C();
    v25 = sub_22C386F08();
    v1(v25);
    v26 = sub_22C9063CC();
    v27 = sub_22C90AADC();
    if (sub_22C36DBFC(v27))
    {
      swift_slowAlloc();
      sub_22C869F30();
      v28 = sub_22C869EF8(4.8149e-34);
      v1(v28);
      sub_22C90A1AC();
      v29 = sub_22C378930();
      v30(v29);
      v31 = sub_22C389328();

      *(v0 + 4) = v31;
      sub_22C869F0C(&dword_22C366000, v32, v33, "Unknown permission requirement %s");
      sub_22C3751A8();
      sub_22C370510();
    }

    else
    {

      v34 = sub_22C378930();
      v35(v34);
    }

    v36 = sub_22C372EE8();
    v37(v36);
    return 0;
  }
}

void sub_22C869F0C(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{
  v8 = *(v6 - 116);

  _os_log_impl(a1, v4, v8, a4, v5, 0xCu);
}

uint64_t sub_22C869F30()
{
  *(v1 - 116) = v0;

  return swift_slowAlloc();
}

uint64_t dispatch thunk of ResponseGenerationTranscriptPromptBuilding.buildPrompt(transcript:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 24) + **(a3 + 24));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_22C86A08C;

  return v9(a1, a2, a3);
}

uint64_t sub_22C86A08C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = *v8;

  v11 = *(v13 + 8);

  return v11(a1, a2);
}

double sub_22C86A198()
{
  v45 = sub_22C906ECC();
  v1 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v42 = &v34 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22C3A5908(&qword_27D9BAF00, &unk_22C912C80);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22C90FB40;
  v4 = swift_allocObject();
  v43 = 679043443;
  v44 = 0xE400000000000000;
  *(v4 + 16) = sub_22C90A49C();
  *(v4 + 24) = v5;
  *(inited + 32) = v4;
  v6 = MEMORY[0x2318B5650]();
  v7 = *(v6 + 16);
  if (v7)
  {
    v35 = inited;
    v36 = v0;
    v43 = MEMORY[0x277D84F90];
    sub_22C3B63D4(0, v7, 0);
    v8 = v43;
    v10 = *(v1 + 16);
    v9 = v1 + 16;
    v11 = *(v9 + 64);
    v34 = v6;
    v12 = v6 + ((v11 + 32) & ~v11);
    v39 = *(v9 + 56);
    v40 = v10;
    v38 = (v9 - 8);
    v37 = *MEMORY[0x277D1D798];
    v41 = v9;
    do
    {
      v13 = v42;
      v14 = v45;
      v40(v42, v12, v45);
      type metadata accessor for PromptTreeIdentifier.Label(0);
      v15 = swift_allocBox();
      v17 = v16;
      sub_22C901FAC();
      v18 = swift_allocBox();
      sub_22C906E1C();
      (*v38)(v13, v14);
      *v17 = v18;
      v19 = sub_22C902D0C();
      (*(*(v19 - 8) + 104))(v17, v37, v19);
      swift_storeEnumTagMultiPayload();
      v43 = v8;
      v21 = *(v8 + 16);
      v20 = *(v8 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_22C3B63D4(v20 > 1, v21 + 1, 1);
        v8 = v43;
      }

      *(v8 + 16) = v21 + 1;
      *(v8 + 8 * v21 + 32) = v15 | 0x2000000000000000;
      v12 += v39;
      --v7;
    }

    while (v7);

    inited = v35;
  }

  else
  {

    v8 = MEMORY[0x277D84F90];
  }

  v22 = sub_22C3DB9B0(v8);

  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_22C912A90;
  sub_22C3A5908(&qword_27D9BB770, qword_22C90FE80);
  sub_22C369AEC();
  v24 = swift_allocObject();
  *(v24 + 16) = v22;
  *(v23 + 32) = v24;
  sub_22C369AEC();
  v25 = swift_allocObject();
  sub_22C369AEC();
  v26 = swift_allocObject();
  *(v26 + 16) = v23 | 0x8000000000000000;
  *(v25 + 16) = v26;
  *(inited + 40) = v25 | 0x6000000000000000;
  v27 = swift_allocObject();
  v43 = 41;
  v44 = 0xE100000000000000;
  *(v27 + 16) = sub_22C90A49C();
  *(v27 + 24) = v28;
  *(inited + 48) = v27;
  v29 = sub_22C3DB9B0(inited);
  swift_setDeallocating();
  sub_22C58FFB0();
  sub_22C369AEC();
  v30 = swift_allocObject();
  sub_22C369AEC();
  v31 = swift_allocObject();
  *(v31 + 16) = v29;
  *(v30 + 16) = v31;
  sub_22C3A5908(&qword_27D9BC438, &unk_22C912FE0);
  v32 = swift_allocObject();
  *&result = 1;
  *(v32 + 16) = xmmword_22C90F800;
  *(v32 + 32) = 0;
  *(v32 + 40) = v30 | 0x6000000000000002;
  return result;
}

uint64_t sub_22C86A5F0(uint64_t (*a1)(unint64_t), uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v7 = *(a3 + 16);
  while (1)
  {
    if (v7 == v6)
    {
      return 0;
    }

    v8 = *(sub_22C907C5C() - 8);
    result = a1(a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v6);
    if (v3)
    {
      return result;
    }

    if (result)
    {
      break;
    }

    ++v6;
  }

  return v6;
}

void __swiftcall ResponseCatalogIdentifiers.init(appBundleID:intentID:actionType:responseMode:)(IntelligenceFlowPlannerRuntime::ResponseCatalogIdentifiers_optional *__return_ptr retstr, Swift::String_optional appBundleID, Swift::String_optional intentID, Swift::String_optional actionType, Swift::String_optional responseMode)
{
  sub_22C36BA7C();
  v8 = v7;
  v50 = v9;
  v51 = v10;
  v12 = v11;
  v14 = v13;
  v49 = v15;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  sub_22C9063DC();
  sub_22C369824();
  MEMORY[0x28223BE20](v22);
  sub_22C369ABC();
  v25 = (v23 - v24);
  MEMORY[0x28223BE20](v26);
  sub_22C37F9FC();
  MEMORY[0x28223BE20](v27);
  sub_22C37B03C();
  v29 = MEMORY[0x28223BE20](v28);
  v31 = &v48 - v30;
  if (!v17)
  {
    sub_22C383968(v29);

    sub_22C90405C();
    v33 = sub_22C9063CC();
    v34 = sub_22C90AADC();
    if (!os_log_type_enabled(v33, v34))
    {
      v25 = v31;
      goto LABEL_17;
    }

    sub_22C3720F4();
    v35 = swift_slowAlloc();
    sub_22C53799C(v35);
    _os_log_impl(&dword_22C366000, v33, v34, "ResponseCatalog identifier missing: appBundleID", v12, 2u);
    v25 = v31;
LABEL_16:
    sub_22C369B50();
    MEMORY[0x2318B9880]();
    goto LABEL_17;
  }

  if (!v14)
  {
    sub_22C383968(v29);

    sub_22C90405C();
    v33 = sub_22C9063CC();
    sub_22C90AADC();
    sub_22C375AAC();
    if (!os_log_type_enabled(v33, v36))
    {
      v25 = v6;
      goto LABEL_17;
    }

    sub_22C3720F4();
    v37 = swift_slowAlloc();
    sub_22C53799C(v37);
    sub_22C871EFC(&dword_22C366000, v38, v39, "ResponseCatalog identifier missing: intentID");
    v25 = v6;
    goto LABEL_16;
  }

  if (!v12)
  {
    sub_22C383968(v29);

    sub_22C90405C();
    v33 = sub_22C9063CC();
    sub_22C90AADC();
    sub_22C375AAC();
    if (!os_log_type_enabled(v33, v40))
    {
      v25 = v5;
      goto LABEL_17;
    }

    sub_22C3720F4();
    v41 = swift_slowAlloc();
    sub_22C53799C(v41);
    sub_22C871EFC(&dword_22C366000, v42, v43, "ResponseCatalog identifier missing: actionType");
    v25 = v5;
    goto LABEL_16;
  }

  if (!v8)
  {
    sub_22C383968(v29);

    sub_22C90405C();
    v33 = sub_22C9063CC();
    sub_22C90AADC();
    sub_22C375AAC();
    if (os_log_type_enabled(v33, v44))
    {
      sub_22C3720F4();
      v45 = swift_slowAlloc();
      sub_22C53799C(v45);
      sub_22C871EFC(&dword_22C366000, v46, v47, "ResponseCatalog identifier missing: responseMode");
      goto LABEL_16;
    }

LABEL_17:

    (*(v19 + 8))(v25, v51);
    *(v21 + 32) = 0u;
    *(v21 + 48) = 0u;
    *v21 = 0u;
    *(v21 + 16) = 0u;
    goto LABEL_18;
  }

  *v21 = v19;
  *(v21 + 8) = v17;
  v32 = v50;
  *(v21 + 16) = v49;
  *(v21 + 24) = v14;
  *(v21 + 32) = v32;
  *(v21 + 40) = v12;
  *(v21 + 48) = v51;
  *(v21 + 56) = v8;
LABEL_18:
  sub_22C36CC48();
}

IntelligenceFlowPlannerRuntime::RequestedResponseMode_optional __swiftcall RequestedResponseMode.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_22C90B21C();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

IntelligenceFlowPlannerRuntime::RequestedResponseMode_optional __swiftcall RequestedResponseMode.init(stringValue:)(Swift::String stringValue)
{
  v2 = v1;
  result.value = RequestedResponseMode.init(rawValue:)(stringValue).value;
  *v2 = v4;
  return result;
}

uint64_t RequestedResponseMode.stringValue.getter()
{
  result = 0x726143746E6F647ELL;
  switch(*v0)
  {
    case 1:
      result = 0x4679616C70736964;
      break;
    case 2:
      result = 0x4F79616C70736964;
      break;
    case 3:
      result = 0x726F466563696F76;
      break;
    case 4:
      result = 0x6C6E4F6563696F76;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_22C86AB84(uint64_t a1)
{
  v1 = sub_22C90B21C();

  if (v1 >= 6)
  {
    return 6;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_22C86AC04@<X0>(uint64_t *a1@<X8>)
{
  result = RequestedResponseMode.stringValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_22C86AC38(uint64_t a1)
{
  v2 = sub_22C871DB4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C86AC74(uint64_t a1)
{
  v2 = sub_22C871DB4();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_22C86ACD4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_22C86AB84(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_22C86AD04@<X0>(uint64_t *a1@<X8>)
{
  result = sub_22C3A2360(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_22C86AD38@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_22C86ABD0(a1);
  *a2 = result;
  return result;
}

uint64_t sub_22C86AD60(uint64_t a1)
{
  v2 = sub_22C870D58();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C86AD9C(uint64_t a1)
{
  v2 = sub_22C870D58();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C86ADD8()
{
  sub_22C3870A4();
  swift_beginAccess();

  return sub_22C36BA00();
}

uint64_t sub_22C86AE1C()
{
  sub_22C370250();
  sub_22C38009C();
  swift_beginAccess();
  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
}

uint64_t sub_22C86AEAC()
{
  sub_22C3870A4();
  swift_beginAccess();

  return sub_22C36BA00();
}

uint64_t sub_22C86AEF0()
{
  sub_22C370250();
  sub_22C38009C();
  swift_beginAccess();
  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
}

uint64_t sub_22C86AFB8()
{
  sub_22C3870A4();
  swift_beginAccess();

  return sub_22C36BA00();
}

uint64_t sub_22C86AFFC()
{
  sub_22C370250();
  sub_22C38009C();
  swift_beginAccess();
  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
}

uint64_t sub_22C86B08C()
{
  sub_22C3870A4();
  swift_beginAccess();

  return sub_22C36BA00();
}

uint64_t sub_22C86B0D0()
{
  sub_22C370250();
  sub_22C38009C();
  swift_beginAccess();
  *(v1 + 64) = v2;
  *(v1 + 72) = v0;
}

uint64_t sub_22C86B160()
{
  sub_22C3870A4();
  swift_beginAccess();

  return sub_22C36BA00();
}

uint64_t sub_22C86B1A4()
{
  sub_22C370250();
  sub_22C38009C();
  swift_beginAccess();
  *(v1 + 80) = v2;
  *(v1 + 88) = v0;
}

uint64_t sub_22C86B26C()
{
  sub_22C3870A4();
  swift_beginAccess();

  return sub_22C36BA00();
}

uint64_t sub_22C86B2B0()
{
  sub_22C370250();
  sub_22C38009C();
  swift_beginAccess();
  *(v1 + 96) = v2;
  *(v1 + 104) = v0;
}

uint64_t CatalogEntry.__allocating_init(from:)(uint64_t a1)
{
  v1 = swift_allocObject();
  CatalogEntry.init(from:)();
  return v1;
}

void CatalogEntry.init(from:)()
{
  sub_22C370030();
  v2 = v0;
  v4 = v3;
  v5 = sub_22C3A5908(&qword_27D9C0B00, &qword_22C92A3F0);
  sub_22C369824();
  v27 = v6;
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v7);
  v9 = &v26 - v8;
  v32 = v2;
  v2[4] = 0u;
  v2 += 4;
  v2[1] = 0u;
  v2[2] = 0u;
  v10 = v4[3];
  v28 = v4;
  sub_22C374168(v4, v10);
  sub_22C870D58();
  sub_22C90B6BC();
  if (v1)
  {

    type metadata accessor for CatalogEntry();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v11 = v27;
    v31 = 0;
    v12 = v9;
    v32[2] = sub_22C90B2DC();
    v32[3] = v13;
    sub_22C871F1C(1);
    v32[4] = sub_22C90B2DC();
    v32[5] = v14;
    sub_22C871F1C(2);
    v32[6] = sub_22C90B2DC();
    v32[7] = v15;
    sub_22C871F1C(5);
    v16 = sub_22C90B2DC();
    v26 = v17;
    sub_22C38009C();
    swift_beginAccess();
    v18 = v26;
    v32[12] = v16;
    v32[13] = v18;

    v30 = 3;
    v19 = v12;
    v20 = sub_22C90B2DC();
    v22 = v21;
    sub_22C38009C();
    swift_beginAccess();
    v32[8] = v20;
    v32[9] = v22;

    v29 = 4;
    v23 = sub_22C90B2DC();
    v25 = v24;
    (*(v11 + 8))(v19, v5);
    sub_22C38009C();
    swift_beginAccess();
    v32[10] = v23;
    v32[11] = v25;
  }

  sub_22C36FF94(v28);
  sub_22C36FB20();
}

void sub_22C86B738(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_22C370030();
  a22 = v24;
  a23 = v25;
  v26 = v23;
  v28 = v27;
  sub_22C3A5908(&qword_27D9C0B10, &qword_22C92A3F8);
  sub_22C369824();
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v29);
  sub_22C3881C0();
  sub_22C374168(v28, v28[3]);
  sub_22C870D58();
  sub_22C90B6CC();
  sub_22C3870A4();
  swift_beginAccess();
  v30 = *(v26 + 16);
  v48 = 0;

  sub_22C382A58(v31, v32, &v48);
  if (v30 || (, sub_22C3870A4(), swift_beginAccess(), v33 = *(v26 + 32), v47 = 1, v34 = , sub_22C382A58(v34, v35, &v47), v33) || (, sub_22C3870A4(), swift_beginAccess(), v36 = *(v26 + 48), v46 = 1, v37 = , sub_22C382A58(v37, v38, &v46), v36))
  {
    v39 = sub_22C371530();
    v40(v39);
  }

  else
  {

    sub_22C3870A4();
    swift_beginAccess();
    v45 = *(v26 + 64);
    LOBYTE(v44[0]) = 3;
    sub_22C3A5908(&qword_27D9BAD90, &unk_22C91D9E0);
    sub_22C7911C0();
    sub_22C376AB0(&v45, v44);
    sub_22C3870A4();
    swift_beginAccess();
    v44[0] = *(v26 + 80);
    LOBYTE(v43) = 4;
    sub_22C376AB0(v44, &v43);
    sub_22C3870A4();
    swift_beginAccess();
    v43 = *(v26 + 96);
    a13 = 5;
    sub_22C376AB0(&v43, &a13);
    v41 = sub_22C371530();
    v42(v41);
  }

  sub_22C36FB20();
}

uint64_t CatalogEntry.deinit()
{

  return v0;
}

uint64_t CatalogEntry.__deallocating_deinit()
{
  CatalogEntry.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_22C86BA34@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = CatalogEntry.__allocating_init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_22C86BA84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x282162858](a1, a2, a3, WitnessTable);
}

uint64_t sub_22C86BB94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x282162828](a1, a2, a3, WitnessTable);
}

uint64_t ResponseCatalog.__allocating_init(_:)()
{
  sub_22C370250();
  swift_allocObject();
  v0 = sub_22C36A724();
  v2 = ResponseCatalogDatabase.init(_:)(v0, v1);

  sub_22C872614();

  return v2;
}

uint64_t ResponseCatalog.init(_:)(uint64_t a1, uint64_t a2)
{
  v2 = ResponseCatalogDatabase.init(_:)(a1, a2);

  sub_22C872614();

  return v2;
}

uint64_t sub_22C86BCAC()
{
  sub_22C3A5908(&qword_27D9BAB68, &qword_22C914840);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_22C90FB40;
  sub_22C3819C0();
  *(v1 + 32) = 0xD0000000000000E1;
  *(v1 + 40) = v2;
  sub_22C3819C0();
  *(v3 + 48) = 0xD00000000000006FLL;
  *(v3 + 56) = v4;
  sub_22C90AF5C();

  sub_22C3819C0();
  v8 = v5;
  v6 = sub_22C90B47C();
  MEMORY[0x2318B7850](v6);

  *(v0 + 64) = 0xD000000000000014;
  *(v0 + 72) = v8;
  return v0;
}

uint64_t sub_22C86BDA4(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime23ResponseCatalogDatabase_databaseQueue))
  {
    v2 = MEMORY[0x28223BE20](result);
    MEMORY[0x28223BE20](v2);
    sub_22C90108C();

    sub_22C3A5908(&qword_27D9C0B20, &unk_22C92A410);
    sub_22C90109C();
  }

  return result;
}

uint64_t sub_22C86BEB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_22C90117C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = 0xD000000000000063;
  v13 = 0x800000022C9385E0;
  MEMORY[0x2318B7850](a2, a3);
  v9 = v12;
  v10 = v13;
  v12 = 0x20545245534E49;
  v13 = 0xE700000000000000;
  MEMORY[0x2318B7850](v9, v10);

  sub_22C90116C();
  sub_22C90120C();
  (*(v6 + 8))(v8, v5);
}

uint64_t sub_22C86C020@<X0>(uint64_t (*a1)(void)@<X1>, _BYTE *a2@<X8>)
{
  result = a1();
  if (!v2)
  {
    *a2 = 0;
  }

  return result;
}

void sub_22C86C054(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void (*a10)(void, void), uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22C370030();
  a19 = v22;
  a20 = v23;
  v24 = v21;
  v26 = v25;
  v27 = sub_22C9063DC();
  sub_22C369824();
  v29 = v28;
  MEMORY[0x28223BE20](v30);
  sub_22C369ABC();
  v32 = MEMORY[0x28223BE20](v31);
  v34 = &v69 - v33;
  MEMORY[0x28223BE20](v32);
  v37 = &v69 - v36;
  v38 = *(v20 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime23ResponseCatalogDatabase_databaseQueue);
  if (v38)
  {
    v77 = v29;
    v78 = v27;
    v39 = *v26;
    v40 = v26[1];
    v41 = v26[3];
    v74 = v26[2];
    v75 = v39;
    v42 = v26[5];
    v73 = v26[4];
    v43 = v26[6];
    v44 = v26[7];
    v71 = v35;
    v72 = v43;
    v76 = v38;

    sub_22C90405C();

    v45 = sub_22C9063CC();
    v46 = sub_22C90AACC();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v69 = v21;
      v48 = v47;
      v70 = swift_slowAlloc();
      a10 = v70;
      *v48 = 136315906;
      *(v48 + 4) = sub_22C36F9F4(v75, v40, &a10);
      *(v48 + 12) = 2080;
      *(v48 + 14) = sub_22C36F9F4(v74, v41, &a10);
      *(v48 + 22) = 2080;
      *(v48 + 24) = sub_22C36F9F4(v73, v42, &a10);
      *(v48 + 32) = 2080;
      v49 = v72;
      *(v48 + 34) = sub_22C36F9F4(v72, v44, &a10);
      _os_log_impl(&dword_22C366000, v45, v46, "ResponseCatalog: Querying for: appBundleID=%s, intentID=%s, actionType=%s, responseMode=%s", v48, 0x2Au);
      swift_arrayDestroy();
      sub_22C369B50();
      MEMORY[0x2318B9880]();
      v24 = v69;
      sub_22C369B50();
      MEMORY[0x2318B9880]();

      v50 = sub_22C871F68();
      v51(v50);
    }

    else
    {

      v55 = sub_22C871F68();
      v56(v55);
      v49 = v72;
    }

    v57 = swift_allocObject();
    v58 = v74;
    v57[2] = v75;
    v57[3] = v40;
    v57[4] = v58;
    v57[5] = v41;
    v57[6] = v73;
    v57[7] = v42;
    v57[8] = v49;
    v57[9] = v44;
    v59 = MEMORY[0x28223BE20](v57);
    *(&v69 - 2) = sub_22C870DD0;
    *(&v69 - 1) = v59;

    sub_22C3A5908(&qword_27D9C0B18, &unk_22C92A400);
    v60 = v24;
    sub_22C90106C();
    if (v24)
    {
      v61 = v71;
      sub_22C90405C();
      v62 = v24;
      v63 = sub_22C9063CC();
      v64 = sub_22C90AADC();

      if (os_log_type_enabled(v63, v64))
      {
        sub_22C36BED8();
        v65 = swift_slowAlloc();
        v66 = swift_slowAlloc();
        *v65 = 138412290;
        v67 = v60;
        v68 = _swift_stdlib_bridgeErrorToNSError();
        *(v65 + 4) = v68;
        *v66 = v68;
        _os_log_impl(&dword_22C366000, v63, v64, "Siri response cache read failed with: %@", v65, 0xCu);
        sub_22C36DD28(v66, &qword_27D9BB158, qword_22C910FD0);
        sub_22C369B50();
        MEMORY[0x2318B9880]();
        sub_22C369B50();
        MEMORY[0x2318B9880]();
      }

      else
      {
      }

      v70(v61, v78);
    }

    else
    {
    }
  }

  else
  {
    sub_22C90405C();
    v52 = sub_22C9063CC();
    sub_22C90AADC();
    sub_22C375AAC();
    if (os_log_type_enabled(v52, v53))
    {
      sub_22C3720F4();
      v54 = swift_slowAlloc();
      sub_22C53799C(v54);
      _os_log_impl(&dword_22C366000, v52, v34, "ResponseCatalog: Unable to access database", v37, 2u);
      sub_22C369B50();
      MEMORY[0x2318B9880]();
    }

    (*(v29 + 8))(v34, v27);
  }

  sub_22C36FB20();
}

char *sub_22C86C5AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8, unint64_t a9)
{
  v47 = a8;
  v44 = a1;
  v48 = a9;
  v15 = sub_22C9063DC();
  v37 = *(v15 - 8);
  v38 = v15;
  MEMORY[0x28223BE20](v15);
  v39 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_22C90117C();
  v43 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v18 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v49[0] = 0;
  *(&v49[0] + 1) = 0xE000000000000000;
  sub_22C90AF5C();
  MEMORY[0x2318B7850](0xD00000000000002ALL, 0x800000022C938650);
  v34 = a2;
  v40 = a3;
  v19 = a3;
  v20 = v48;
  MEMORY[0x2318B7850](a2, v19);
  MEMORY[0x2318B7850](0xD000000000000012, 0x800000022C938680);
  v35 = a4;
  v41 = a5;
  MEMORY[0x2318B7850](a4, a5);
  MEMORY[0x2318B7850](0xD000000000000016, 0x800000022C9382C0);
  v36 = a6;
  v42 = a7;
  MEMORY[0x2318B7850](a6, a7);
  MEMORY[0x2318B7850](0xD000000000000017, 0x800000022C9386A0);
  MEMORY[0x2318B7850](v47, v20);
  MEMORY[0x2318B7850](0xD000000000000015, 0x800000022C9386C0);
  MEMORY[0x2318B7850](0x726143746E6F647ELL, 0xE900000000000065);
  MEMORY[0x2318B7850](0xD00000000000001CLL, 0x800000022C9386E0);
  v21 = v49[0];
  sub_22C3A5908(&qword_27D9BAAE0, &qword_22C90D380);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_22C90F800;
  *&v49[0] = 0;
  *(&v49[0] + 1) = 0xE000000000000000;
  sub_22C90AF5C();

  *&v49[0] = 0xD00000000000001CLL;
  *(&v49[0] + 1) = 0x800000022C938700;
  MEMORY[0x2318B7850](v21, *(&v21 + 1));
  v23 = v49[0];
  *(v22 + 56) = MEMORY[0x277D837D0];
  *(v22 + 32) = v23;
  sub_22C90B5FC();

  type metadata accessor for CatalogEntry();
  v50 = 0;
  memset(v49, 0, sizeof(v49));
  sub_22C90116C();
  sub_22C871E58(&qword_27D9C0BC0, &protocol conformance descriptor for CatalogEntry);
  v24 = v46;
  sub_22C90114C();
  if (v24)
  {

    (*(v43 + 8))(v18, v45);
    sub_22C36DD28(v49, &qword_27D9C0BC8, &qword_22C92AFB0);
  }

  else
  {
    v25 = v39;

    (*(v43 + 8))(v18, v45);
    sub_22C36DD28(v49, &qword_27D9C0BC8, &qword_22C92AFB0);
    v18 = v51;
    if (!v51)
    {
      sub_22C90405C();

      v27 = v48;

      v28 = sub_22C9063CC();
      v29 = sub_22C90AABC();

      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        *&v49[0] = v31;
        *v30 = 136315906;
        *(v30 + 4) = sub_22C36F9F4(v34, v26, v49);
        *(v30 + 12) = 2080;
        *(v30 + 14) = sub_22C36F9F4(v35, v41, v49);
        *(v30 + 22) = 2080;
        *(v30 + 24) = sub_22C36F9F4(v36, v42, v49);
        *(v30 + 32) = 2080;
        *(v30 + 34) = sub_22C36F9F4(v47, v27, v49);
        _os_log_impl(&dword_22C366000, v28, v29, "ResponseCatalog: No cache entry found for %s:%s:%s:%s", v30, 0x2Au);
        swift_arrayDestroy();
        MEMORY[0x2318B9880](v31, -1, -1);
        MEMORY[0x2318B9880](v30, -1, -1);
      }

      (*(v37 + 8))(v25, v38);
    }
  }

  return v18;
}

uint64_t sub_22C86CBC8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = a1[4];
  v8 = a1[5];
  v15 = a1[7];
  v16 = a1[6];
  sub_22C90AF5C();

  v9 = sub_22C36FC2C();
  MEMORY[0x2318B7850](v9);
  sub_22C871F90();
  v10 = sub_22C36CC9C();
  MEMORY[0x2318B7850](v10);
  sub_22C871F90();
  MEMORY[0x2318B7850](v7, v8);
  v11 = sub_22C371530();
  MEMORY[0x2318B7850](v11);
  MEMORY[0x2318B7850](a2, a3);
  MEMORY[0x2318B7850](a6, a7);
  MEMORY[0x2318B7850](v16, v15);
  MEMORY[0x2318B7850](2107687, 0xE300000000000000);
  sub_22C86BDA4(10024);
}

void sub_22C86CCF8()
{
  sub_22C370030();
  v2 = *(v1 + 56);
  v10 = *(v1 + 48);
  sub_22C90AF5C();
  MEMORY[0x2318B7850](0xD000000000000028, 0x800000022C938270);
  v3 = sub_22C36CC9C();
  MEMORY[0x2318B7850](v3);
  MEMORY[0x2318B7850](0xD000000000000012, 0x800000022C9382A0);
  v4 = sub_22C371530();
  MEMORY[0x2318B7850](v4);
  v5 = sub_22C38C528();
  MEMORY[0x2318B7850](v5);
  v6 = sub_22C36FC2C();
  MEMORY[0x2318B7850](v6);
  v7 = sub_22C38C528();
  MEMORY[0x2318B7850](v7);
  MEMORY[0x2318B7850](v10, v2);
  v8 = MEMORY[0x2318B7850](39, 0xE100000000000000);
  if (*(v0 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime23ResponseCatalogDatabase_databaseQueue))
  {
    v9 = MEMORY[0x28223BE20](v8);
    MEMORY[0x28223BE20](v9);
    sub_22C90108C();

    sub_22C3A5908(&qword_27D9C0B20, &unk_22C92A410);
    sub_22C90109C();
  }

  sub_22C36FB20();
}

uint64_t sub_22C86CEEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_22C90117C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22C90116C();
  sub_22C90120C();
  return (*(v4 + 8))(v6, v3);
}

uint64_t ResponseCatalog.__deallocating_deinit()
{
  ResponseCatalogDatabase.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_22C86D044()
{
  v1 = sub_22C901DDC();
  sub_22C369824();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  sub_22C369838();
  sub_22C3881C0();
  v5 = sub_22C90210C();
  sub_22C369824();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  sub_22C369838();
  v11 = v10 - v9;
  sub_22C9020FC();
  (*(v3 + 104))(v0, *MEMORY[0x277D1C248], v1);
  sub_22C871F7C();
  sub_22C9020EC();
  v12 = sub_22C371530();
  v13(v12);
  return (*(v7 + 8))(v11, v5);
}

void sub_22C86D1D0()
{
  sub_22C36BA7C();
  v162 = v3;
  v5 = v4;
  v7 = v6;
  v139 = sub_22C90035C();
  sub_22C369824();
  v138 = v8;
  MEMORY[0x28223BE20](v9);
  sub_22C3698A8();
  v11 = sub_22C3698F8(v10);
  v158 = type metadata accessor for ResponseGenerationPreferences(v11);
  sub_22C36985C();
  MEMORY[0x28223BE20](v12);
  sub_22C3698A8();
  v159 = v13;
  v14 = sub_22C3A5908(&qword_27D9BD698, &qword_22C9187B0);
  v15 = sub_22C369914(v14);
  MEMORY[0x28223BE20](v15);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v16);
  sub_22C36BA64();
  v136 = v17;
  v18 = sub_22C3A5908(&qword_27D9BB138, &qword_22C90DB70);
  v19 = sub_22C369914(v18);
  MEMORY[0x28223BE20](v19);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v20);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v21);
  sub_22C36BA58();
  v161 = v22;
  MEMORY[0x28223BE20](v23);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v24);
  sub_22C36BA64();
  sub_22C3698F8(v25);
  v151 = sub_22C90687C();
  sub_22C369824();
  v150 = v26;
  MEMORY[0x28223BE20](v27);
  sub_22C3698A8();
  sub_22C3698F8(v28);
  v148 = sub_22C9026BC();
  sub_22C369824();
  v147 = v29;
  MEMORY[0x28223BE20](v30);
  sub_22C3698A8();
  sub_22C3698F8(v31);
  v145 = sub_22C907DEC();
  sub_22C369824();
  v144 = v32;
  MEMORY[0x28223BE20](v33);
  sub_22C3698A8();
  sub_22C3698F8(v34);
  v143 = sub_22C906ECC();
  sub_22C369824();
  v142 = v35;
  MEMORY[0x28223BE20](v36);
  sub_22C3698A8();
  sub_22C3698F8(v37);
  v135 = sub_22C90977C();
  sub_22C369824();
  v134[1] = v38;
  MEMORY[0x28223BE20](v39);
  sub_22C369838();
  sub_22C37B6BC();
  v40 = sub_22C907C5C();
  sub_22C369824();
  v42 = v41;
  MEMORY[0x28223BE20](v43);
  sub_22C369838();
  sub_22C3881C0();
  v44 = sub_22C3A5908(&qword_27D9BC1E8, &qword_22C9123B0);
  v45 = sub_22C369914(v44);
  MEMORY[0x28223BE20](v45);
  sub_22C369ABC();
  v48 = v46 - v47;
  MEMORY[0x28223BE20](v49);
  sub_22C37F9FC();
  MEMORY[0x28223BE20](v50);
  v52 = v134 - v51;
  *(v7 + 32) = 0u;
  *(v7 + 48) = 0u;
  *v7 = 0u;
  *(v7 + 16) = 0u;
  v157 = v5;
  sub_22C90803C();
  sub_22C907C3C();
  (*(v42 + 8))(v1, v40);
  v160 = v52;
  sub_22C379DF8(v52, v2, &qword_27D9BC1E8, &qword_22C9123B0);
  v53 = sub_22C908EAC();
  v54 = sub_22C36FD7C();
  sub_22C36D0A8(v54, v55, v53);
  if (v56)
  {
    sub_22C36DD28(v2, &qword_27D9BC1E8, &qword_22C9123B0);
    v58 = 0;
    v140 = 0xE000000000000000;
  }

  else
  {
    sub_22C908DDC();
    sub_22C36BBA8();
    (*(v57 + 8))(v2, v53);
    v58 = sub_22C9096FC();
    v140 = v59;
    sub_22C36FB04();
    v60(v0, v135);
  }

  sub_22C379DF8(v160, v48, &qword_27D9BC1E8, &qword_22C9123B0);
  sub_22C36D0A8(v48, 1, v53);
  v61 = v157;
  if (v56)
  {
    sub_22C36DD28(v48, &qword_27D9BC1E8, &qword_22C9123B0);
    v62 = 0;
    v64 = 0xE000000000000000;
  }

  else
  {
    v62 = sub_22C908E7C();
    v64 = v63;
    sub_22C36BBA8();
    v65 = sub_22C36FC2C();
    v66(v65);
  }

  v67 = v141;
  sub_22C90802C();
  sub_22C37205C();
  sub_22C906EBC();
  sub_22C36FB04();
  v68(v67, v143);
  v69 = v146;
  sub_22C907DAC();
  sub_22C36FB04();
  v70(v1, v145);
  v71 = sub_22C86DF98();
  v73 = v72;
  sub_22C36FB04();
  v74(v69, v148);
  v75 = v149;
  sub_22C907FDC();
  v76 = sub_22C90685C();
  v78 = v77;
  sub_22C36FB04();
  v79(v75, v151);
  v80 = *(v7 + 16);
  v165[0] = *v7;
  v165[1] = v80;
  v81 = *(v7 + 48);
  v165[2] = *(v7 + 32);
  v165[3] = v81;
  sub_22C36DD28(v165, &qword_27D9C0BB0, &qword_22C92A998);
  v82 = v140;
  *v7 = v58;
  *(v7 + 8) = v82;
  *(v7 + 16) = v62;
  *(v7 + 24) = v64;
  *(v7 + 32) = v71;
  *(v7 + 40) = v73;
  *(v7 + 48) = v76;
  *(v7 + 56) = v78;
  v83 = type metadata accessor for ResponseCatalogMatcher(0);
  v84 = v83[5];
  v85 = sub_22C90806C();
  v86 = *(*(v85 - 8) + 16);
  v151 = v85;
  v86(v7 + v84, v61);
  v87 = v152;
  sub_22C379DF8(v162, v152, &qword_27D9BB138, &qword_22C90DB70);
  v88 = sub_22C90046C();
  if (sub_22C370B74(v87, 1, v88) == 1)
  {
    v89 = v153;
    if (qword_2814357B8 != -1)
    {
      sub_22C371ED0(&qword_2814357B8);
    }

    v90 = sub_22C37AA60(v158, qword_281437588);
    sub_22C3870A4();
    swift_beginAccess();
    sub_22C36C57C();
    v91 = v159;
    sub_22C382BD4(v90, v159, v92);
    sub_22C3A5908(&qword_27D9BE020, &qword_22C91CD10);
    sub_22C901EDC();
    LODWORD(v90) = v164;
    sub_22C38C258();
    sub_22C38B6EC(v91, v93);
    v56 = v90 == 1;
    v94 = v136;
    if (v56)
    {
      sub_22C86D044();
    }

    else
    {
      sub_22C3879D0();
    }

    v97 = sub_22C902D7C();
    if (sub_22C379BB0(v97) == 1)
    {
      sub_22C36DD28(v94, &qword_27D9BD698, &qword_22C9187B0);
      v98 = sub_22C36FD7C();
      sub_22C36C640(v98, v99, 1, v88);
    }

    else
    {
      sub_22C902D5C();
      sub_22C36BBA8();
      v100 = sub_22C37170C();
      v101(v100);
    }

    v96 = v161;
    sub_22C36D0A8(v87, 1, v88);
    if (!v56)
    {
      sub_22C36DD28(v87, &qword_27D9BB138, &qword_22C90DB70);
    }
  }

  else
  {
    sub_22C36BBA8();
    v89 = v153;
    (*(v95 + 32))(v153, v87, v88);
    sub_22C36C640(v89, 0, 1, v88);
    v96 = v161;
  }

  v102 = v83[7];
  sub_22C871D44(v89, v7 + v102);
  v103 = v7 + v102;
  v104 = v154;
  sub_22C379DF8(v103, v154, &qword_27D9BB138, &qword_22C90DB70);
  sub_22C36D0A8(v104, 1, v88);
  if (v56)
  {
    sub_22C36DD28(v104, &qword_27D9BB138, &qword_22C90DB70);
    v112 = 1;
  }

  else
  {
    v105 = v138;
    v106 = v137;
    v107 = v83;
    v108 = v139;
    (*(v138 + 104))(v137, *MEMORY[0x277CC91D8], v139);
    sub_22C3858B4();
    sub_22C90042C();
    v109 = v108;
    v83 = v107;
    (*(v105 + 8))(v106, v109);
    sub_22C36BBA8();
    v110 = sub_22C37B9B0();
    v111(v110);
    v112 = 0;
  }

  sub_22C36C640(v96, v112, 1, v88);
  v113 = v155;
  sub_22C379DF8(v96, v155, &qword_27D9BB138, &qword_22C90DB70);
  v114 = type metadata accessor for DefaultCATResponseDialogGenerator(0);
  swift_allocObject();
  v115 = sub_22C3835E0(v113);
  v116 = (v7 + v83[8]);
  v116[3] = v114;
  v116[4] = &off_283FC29B0;
  *v116 = v115;
  if (qword_2814357B8 != -1)
  {
    sub_22C371ED0(&qword_2814357B8);
  }

  v117 = sub_22C37AA60(v158, qword_281437588);
  sub_22C3870A4();
  swift_beginAccess();
  sub_22C36C57C();
  v118 = v159;
  sub_22C382BD4(v117, v159, v119);
  sub_22C3A5908(&qword_27D9BE020, &qword_22C91CD10);
  sub_22C901EDC();
  LODWORD(v117) = v163;
  sub_22C38C258();
  sub_22C38B6EC(v118, v120);
  v56 = v117 == 1;
  v121 = v156;
  if (v56)
  {
    sub_22C86D044();
  }

  else
  {
    sub_22C3879D0();
  }

  v122 = sub_22C902D7C();
  if (sub_22C379BB0(v122) == 1)
  {
    sub_22C36DD28(v121, &qword_27D9BD698, &qword_22C9187B0);
LABEL_32:
    sub_22C36DD28(v162, &qword_27D9BB138, &qword_22C90DB70);
    v131 = sub_22C386BF4();
    v132(v131);
    sub_22C36DD28(v161, &qword_27D9BB138, &qword_22C90DB70);
    sub_22C36DD28(v160, &qword_27D9BC1E8, &qword_22C9123B0);

    v128 = 0xE700000000000000;
    v126 = 0x6E776F6E6B6E75;
    goto LABEL_33;
  }

  v123 = sub_22C902D6C();
  sub_22C36BBA8();
  v124 = sub_22C37170C();
  v125(v124);
  if (!v123)
  {
    goto LABEL_32;
  }

  v126 = sub_22C6054B8(0x7265567465737341, 0xEC0000006E6F6973, v123);
  v128 = v127;

  if (!v128)
  {
    goto LABEL_32;
  }

  sub_22C36DD28(v162, &qword_27D9BB138, &qword_22C90DB70);
  v129 = sub_22C386BF4();
  v130(v129);
  sub_22C36DD28(v161, &qword_27D9BB138, &qword_22C90DB70);
  sub_22C36DD28(v160, &qword_27D9BC1E8, &qword_22C9123B0);
LABEL_33:
  v133 = (v7 + v83[6]);
  *v133 = v126;
  v133[1] = v128;
  sub_22C36CC48();
}

uint64_t sub_22C86DF98()
{
  v1 = sub_22C9026BC();
  sub_22C369824();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  sub_22C369838();
  v7 = v6 - v5;
  v8 = sub_22C37170C();
  v9(v8);
  v10 = (*(v3 + 88))(v7, v1);
  if (v10 == *MEMORY[0x277D1CBF0])
  {
    v0 = 0x73736563637573;
  }

  else
  {
    if (v10 != *MEMORY[0x277D1CB98])
    {
      if (v10 == *MEMORY[0x277D1CBA8] || v10 == *MEMORY[0x277D1CBB0])
      {
        sub_22C387644();
        v0 = v11 - 1;
        goto LABEL_8;
      }

      if (v10 != *MEMORY[0x277D1CBB8])
      {
        if (v10 == *MEMORY[0x277D1CBD0])
        {
          sub_22C387644();
          v0 = v13 + 2;
          goto LABEL_8;
        }

        if (v10 == *MEMORY[0x277D1CBD8])
        {
          sub_22C387644();
          v0 = v14 | 4;
          goto LABEL_8;
        }

        if (v10 != *MEMORY[0x277D1CBC0])
        {
          if (v10 == *MEMORY[0x277D1CBE0])
          {
            sub_22C387644();
            v0 = v15 | 8;
            goto LABEL_8;
          }

          if (v10 == *MEMORY[0x277D1CBA0])
          {
            sub_22C387644();
            v0 = v16 - 2;
            goto LABEL_8;
          }

          if (v10 != *MEMORY[0x277D1CBC8] && v10 == *MEMORY[0x277D1CBE8])
          {
            v0 = 0x6572756C696166;
            goto LABEL_8;
          }
        }
      }
    }

    sub_22C871F5C();
  }

LABEL_8:
  (*(v3 + 8))(v7, v1);
  return v0;
}

uint64_t *sub_22C86E25C()
{
  v3 = v0;
  sub_22C9063DC();
  sub_22C369824();
  MEMORY[0x28223BE20](v4);
  sub_22C369838();
  v5 = sub_22C36FC2C();
  v7 = sub_22C3A5908(v5, v6);
  sub_22C369914(v7);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v8);
  v9 = sub_22C371BB4();
  v10 = type metadata accessor for ResponseCatalogMatcher(v9);
  sub_22C379DF8(v0 + *(v10 + 28), v2, &qword_27D9BB138, &qword_22C90DB70);
  v11 = sub_22C90046C();
  v12 = sub_22C36FD7C();
  if (sub_22C370B74(v12, v13, v11) == 1)
  {
    sub_22C36DD28(v2, &qword_27D9BB138, &qword_22C90DB70);
    sub_22C90405C();
    v14 = sub_22C9063CC();
    v15 = sub_22C90AADC();
    if (os_log_type_enabled(v14, v15))
    {
      sub_22C3720F4();
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_22C366000, v14, v15, "Could not get path for Catalog DB", v16, 2u);
      sub_22C369B50();
      MEMORY[0x2318B9880]();
    }

    v17 = sub_22C37B9B0();
    v18(v17);
    return 0;
  }

  else
  {
    v20 = sub_22C9003EC();
    v22 = v21;
    sub_22C36BBA8();
    (*(v23 + 8))(v2, v11);
    sub_22C86E4CC(0xD000000000000012, 0x800000022C9383F0, v20, v22);

    v24 = sub_22C37B9B0();
    v19 = v3;
    v26 = sub_22C86E54C(v24, v25);
    if (!v1)
    {
      v19 = v26;
    }
  }

  return v19;
}

uint64_t sub_22C86E4CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  v5 = sub_22C90A49C();
  sub_22C90A35C();
  return v5;
}

uint64_t *sub_22C86E54C(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  type metadata accessor for ResponseCatalog(0);
  swift_allocObject();

  ResponseCatalogDatabase.init(_:)(a1, a2);
  sub_22C872614();
  v14 = v4[1];
  if (v14)
  {
    v15 = *v4;
    v17 = v4[4];
    v16 = v4[5];
    v19 = v4[6];
    v18 = v4[7];
    *&v50 = *v4;
    *(&v50 + 1) = v14;
    v51 = *(v4 + 1);
    *&v52 = v17;
    *(&v52 + 1) = v16;
    *&v53 = v19;
    *(&v53 + 1) = v18;
    sub_22C86C054(&v50, v7, v8, v9, v10, v11, v12, v13, v38, v39, v40, v41, v42, v43, v44, v45, v46, *(&v46 + 1), v47, *(&v47 + 1));
    if (v3)
    {
    }

    else
    {
      v4 = v20;
      if (!v20)
      {
        *&v50 = v15;
        *(&v50 + 1) = v14;
        *&v51 = 5852737;
        *(&v51 + 1) = 0xE300000000000000;
        *&v52 = v17;
        *(&v52 + 1) = v16;
        *&v53 = v19;
        *(&v53 + 1) = v18;
        v46 = v50;
        v47 = v51;
        v48 = v52;
        v49 = v53;
        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRetain_n();

        sub_22C86C054(&v46, v22, v23, v24, v25, v26, v27, v28, v38, v39, v40, v41, v42, v43, v44, v45, v46, *(&v46 + 1), v47, *(&v47 + 1));
        v4 = v29;
        sub_22C871D14(&v50);
        if (!v4)
        {
          *&v48 = v17;
          *(&v48 + 1) = v16;
          *&v49 = v19;
          *(&v49 + 1) = v18;
          sub_22C86C054(&v38, v30, v31, v32, v33, v34, v35, v36, 5852737, 0xE300000000000000, 5852737, 0xE300000000000000, v17, v16, v19, v18, 5852737, 0xE300000000000000, 5852737, 0xE300000000000000);
          v4 = v37;

          sub_22C871D14(&v46);
          return v4;
        }
      }
    }
  }

  else
  {

    return 0;
  }

  return v4;
}

uint64_t sub_22C86E748(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[36] = a3;
  v4[37] = v3;
  v4[34] = a1;
  v4[35] = a2;
  v5 = type metadata accessor for ResponseCatalogMatcher(0);
  v4[38] = v5;
  sub_22C369914(v5);
  v4[39] = sub_22C3699D4();
  v6 = sub_22C9063DC();
  v4[40] = v6;
  sub_22C3699B8(v6);
  v4[41] = v7;
  v4[42] = swift_task_alloc();
  v4[43] = swift_task_alloc();
  v8 = sub_22C9021BC();
  v4[44] = v8;
  sub_22C3699B8(v8);
  v4[45] = v9;
  v4[46] = sub_22C3699D4();
  v10 = sub_22C90687C();
  v4[47] = v10;
  sub_22C3699B8(v10);
  v4[48] = v11;
  v4[49] = sub_22C3699D4();
  v12 = sub_22C90077C();
  v4[50] = v12;
  sub_22C3699B8(v12);
  v4[51] = v13;
  v4[52] = sub_22C3699D4();
  v14 = sub_22C3A5908(&qword_27D9BB138, &qword_22C90DB70);
  sub_22C369914(v14);
  v4[53] = sub_22C3699D4();

  return MEMORY[0x2822009F8](sub_22C86E944, 0, 0);
}

uint64_t sub_22C86E944()
{
  v1 = *(v0 + 280);
  sub_22C3870A4();
  swift_beginAccess();
  v2 = *(v1 + 72);
  *(v0 + 432) = v2;
  if (!v2)
  {
    sub_22C90405C();
    v3 = sub_22C36A724();
    sub_22C382BD4(v3, v4, v5);
    v6 = sub_22C9063CC();
    v7 = sub_22C90AABC();
    v8 = os_log_type_enabled(v6, v7);
    v9 = *(v0 + 328);
    v10 = *(v0 + 336);
    v12 = *(v0 + 312);
    v11 = *(v0 + 320);
    if (v8)
    {
      sub_22C36BED8();
      v62 = v10;
      v13 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      *v13 = 136315138;
      v14 = v12[2];
      v15 = v12[3];
      v17 = *v12;
      v16 = v12[1];
      *(v0 + 48) = v14;
      *(v0 + 64) = v15;
      *(v0 + 16) = v17;
      *(v0 + 32) = v16;
      *(v0 + 80) = v17;
      *(v0 + 96) = v16;
      *(v0 + 112) = v14;
      *(v0 + 128) = v15;
      sub_22C379DF8(v0 + 16, v0 + 144, &qword_27D9C0BB0, &qword_22C92A998);
      v18 = sub_22C36CC9C();
      sub_22C3A5908(v18, v19);
      sub_22C90A1AC();
      sub_22C38AC10();
      v20 = sub_22C36CC9C();
      v23 = sub_22C36F9F4(v20, v21, v22);

      *(v13 + 4) = v23;
      _os_log_impl(&dword_22C366000, v6, v7, "ResponseValidator did not find a CAT ID for %s", v13, 0xCu);
      sub_22C36FF94(v63);
      sub_22C369B50();
      MEMORY[0x2318B9880]();
      sub_22C369B50();
      MEMORY[0x2318B9880]();

      (*(v9 + 8))(v62, v11);
    }

    else
    {

      sub_22C38AC10();
      (*(v9 + 8))(v10, v11);
    }

    goto LABEL_10;
  }

  sub_22C86F24C();
  v25 = v24;
  sub_22C379DF8(*(v0 + 296) + *(*(v0 + 304) + 28), *(v0 + 424), &qword_27D9BB138, &qword_22C90DB70);
  v26 = sub_22C90046C();
  v27 = sub_22C379BB0(v26);
  v28 = *(v0 + 424);
  if (v27 == 1)
  {

    sub_22C36DD28(v28, &qword_27D9BB138, &qword_22C90DB70);
    sub_22C90405C();
    v29 = sub_22C9063CC();
    v30 = sub_22C90AADC();
    if (os_log_type_enabled(v29, v30))
    {
      sub_22C3720F4();
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_22C366000, v29, v30, "Could not get path for Catalog DB", v31, 2u);
      sub_22C369B50();
      MEMORY[0x2318B9880]();
    }

    v32 = *(v0 + 344);
    v33 = *(v0 + 320);
    v34 = *(v0 + 328);

    (*(v34 + 8))(v32, v33);
LABEL_10:
    sub_22C90234C();
    v35 = sub_22C36CCF8();
    v38 = sub_22C36C640(v35, v36, 1, v37);
    sub_22C871F38(v38, v39, v40, v41, v42, v43, v44, v45);

    sub_22C369A24();
    sub_22C36D5F8();

    __asm { BRAA            X1, X16 }
  }

  v49 = *(v0 + 296);
  v48 = *(v0 + 304);
  sub_22C9003EC();

  sub_22C36BBA8();
  v50 = sub_22C37170C();
  v51(v50);
  sub_22C378A4C(v49 + *(v48 + 32), v0 + 208);
  sub_22C374168((v0 + 208), *(v0 + 232));
  if (!v25)
  {
    v25 = sub_22C909F0C();
  }

  *(v0 + 440) = v25;
  sub_22C907FFC();
  sub_22C907FDC();
  sub_22C907FEC();
  v52 = swift_task_alloc();
  *(v0 + 448) = v52;
  *v52 = v0;
  v52[1] = sub_22C86EE64;
  sub_22C36D5F8();

  return sub_22C87CD94(v53, v54, v55, v56, v57, v58, v59);
}

uint64_t sub_22C86EE64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *v9;
  *(*v9 + 456) = v8;

  v24 = v10[52];
  v11 = v10[51];
  v12 = v10[50];
  v13 = v10[49];
  v14 = v10[48];
  v15 = v10[47];
  v16 = v10[46];
  v17 = v10[45];
  v18 = v10[44];

  (*(v17 + 8))(v16, v18);
  (*(v14 + 8))(v13, v15);
  (*(v11 + 8))(v24, v12);
  sub_22C36D5F8();

  return MEMORY[0x2822009F8](v19, v20, v21);
}

uint64_t sub_22C86F0C8()
{
  v1 = *(v0 + 272);
  v2 = sub_22C90234C();
  sub_22C36C640(v1, 0, 1, v2);
  v3 = sub_22C36FF94((v0 + 208));
  sub_22C871F38(v3, v4, v5, v6, v7, v8, v9, v10);

  sub_22C369A24();

  return v11();
}

uint64_t sub_22C86F18C()
{
  sub_22C36FF94((v0 + 208));

  sub_22C369A24();

  return v1();
}

void sub_22C86F24C()
{
  sub_22C370030();
  v225 = v1;
  v3 = v0;
  v217 = v4;
  v233 = *MEMORY[0x277D85DE8];
  sub_22C9063DC();
  sub_22C369824();
  v221 = v6;
  v222 = v5;
  MEMORY[0x28223BE20](v5);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v7);
  sub_22C36BA64();
  sub_22C3698F8(v8);
  v199 = sub_22C90A17C();
  sub_22C369824();
  v198 = v9;
  MEMORY[0x28223BE20](v10);
  sub_22C3698A8();
  v197 = v11;
  v12 = sub_22C3A5908(&qword_27D9BF9F0, &unk_22C92DAD0);
  sub_22C369914(v12);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v13);
  sub_22C3698F8(&v196 - v14);
  v203 = sub_22C90077C();
  sub_22C369824();
  v202 = v15;
  MEMORY[0x28223BE20](v16);
  sub_22C3698A8();
  v201 = v17;
  v18 = sub_22C3A5908(&qword_27D9BF328, &qword_22C9225C0);
  sub_22C369914(v18);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v19);
  sub_22C3698F8(&v196 - v20);
  v224 = sub_22C907DEC();
  sub_22C369824();
  v209 = v21;
  MEMORY[0x28223BE20](v22);
  sub_22C3698A8();
  sub_22C3698F8(v23);
  v208 = sub_22C906ECC();
  sub_22C369824();
  v207 = v24;
  MEMORY[0x28223BE20](v25);
  sub_22C3698A8();
  sub_22C3698F8(v26);
  v212 = sub_22C9026AC();
  sub_22C369824();
  v211 = v27;
  MEMORY[0x28223BE20](v28);
  sub_22C3698A8();
  sub_22C3698F8(v29);
  v30 = sub_22C907C5C();
  sub_22C369824();
  v32 = v31;
  MEMORY[0x28223BE20](v33);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v34);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v35);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v36);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v37);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v38);
  v40 = &v196 - v39;
  v41 = sub_22C3A5908(&qword_27D9BC1E8, &qword_22C9123B0);
  v42 = sub_22C369914(v41);
  MEMORY[0x28223BE20](v42);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v43);
  v45 = &v196 - v44;
  v46 = type metadata accessor for TypedValueFormatter(0);
  v47 = v46 - 8;
  MEMORY[0x28223BE20](v46);
  sub_22C369838();
  v48 = sub_22C371BB4();
  v49 = *(type metadata accessor for ResponseCatalogMatcher(v48) + 20);
  sub_22C907FFC();
  v50 = *(v47 + 28);
  v215 = v2;
  v51 = (v2 + v50);
  *v51 = 0;
  v51[1] = 0;
  sub_22C90803C();
  sub_22C907C3C();
  v52 = *(v32 + 8);
  v227 = v30;
  v219 = v32 + 8;
  v226 = v52;
  v52(v40, v30);
  sub_22C908EAC();
  v53 = sub_22C36CCF8();
  v223 = v54;
  if (sub_22C370B74(v53, v55, v54) == 1)
  {
    sub_22C36DD28(v45, &qword_27D9BC1E8, &qword_22C9123B0);
    v56 = MEMORY[0x277D84F90];
  }

  else
  {
    v56 = sub_22C908DCC();
    sub_22C36BBA8();
    (*(v57 + 8))(v45);
  }

  v216 = sub_22C909F0C();
  v58 = v206;
  sub_22C90802C();
  sub_22C37205C();
  sub_22C906EBC();
  sub_22C36FB04();
  v59(v58, v208);
  v60 = v213;
  sub_22C907DDC();
  sub_22C36FB04();
  v61(v49, v224);
  v62 = sub_22C36CCF8();
  v63 = v212;
  v65 = sub_22C370B74(v62, v64, v212);
  v224 = v49;
  v66 = v211;
  v67 = v210;
  if (v65 == 1)
  {
    sub_22C36DD28(v60, &qword_27D9BF328, &qword_22C9225C0);
    sub_22C37205C();
    sub_22C90803C();
    v68 = v204;
    sub_22C907C4C();
    v226(v49, v227);
    v69 = sub_22C9086FC();
    v70 = sub_22C36CCF8();
    if (sub_22C370B74(v70, v71, v69) == 1)
    {

      sub_22C36DD28(v68, &qword_27D9BF9F0, &unk_22C92DAD0);
      v72 = v224;
      goto LABEL_19;
    }

    v80 = v68;
    v81 = v225;
    v82 = sub_22C8F256C(v56, v217);
    v79 = v81;
    if (v81)
    {

      sub_22C36BBA8();
      (*(v83 + 8))(v80, v69);
      goto LABEL_11;
    }

    v84 = v82;

    sub_22C36BBA8();
    (*(v85 + 8))(v80, v69);
LABEL_14:
    v229 = v84;
    sub_22C3A5908(&qword_27D9C0B98, &qword_22C92A978);
    sub_22C871C34();
    sub_22C909F5C();
    v72 = v224;
    v225 = 0;

    v144 = v197;
    sub_22C90A15C();
    sub_22C90A12C();
    v146 = v145;

    sub_22C36FB04();
    v147(v144, v199);
    if (v146 >> 60 == 15)
    {
      v148 = 0xC000000000000000;
    }

    else
    {
      v148 = v146;
    }

    v149 = objc_opt_self();
    sub_22C36BA00();
    v150 = sub_22C90050C();
    v151 = sub_22C36BA00();
    sub_22C38B120(v151, v152);
    v229 = 0;
    v153 = [v149 JSONObjectWithData:v150 options:0 error:&v229];

    v154 = v229;
    if (v153)
    {
      sub_22C90ADDC();
      swift_unknownObjectRelease();
      v155 = sub_22C871F2C();
      sub_22C36F998(v155, v156);
      sub_22C3A5908(&qword_27D9BFAE0, &unk_22C92A980);
      if (swift_dynamicCast())
      {
        sub_22C8A598C(v228);
        sub_22C3743B4();
        v157 = v216;
        swift_isUniquelyReferenced_nonNull_native();
        v229 = v157;
        sub_22C36A4C0();
        v158 = v225;
        sub_22C8719D4(v148, v159, 0, v160, &v229);
        v225 = v158;
        sub_22C36FF94(&v231);
        v216 = v229;
      }

      else
      {
        sub_22C36FF94(&v231);
      }

      goto LABEL_19;
    }

    v179 = v154;
    v79 = sub_22C90030C();

    swift_willThrow();
    goto LABEL_15;
  }

  (*(v211 + 32))(v210, v60, v63);
  sub_22C37205C();
  sub_22C907FFC();
  v73 = sub_22C9006BC();
  v75 = v74;
  sub_22C36FB04();
  v76(v49, v203);
  v77 = v225;
  v78 = sub_22C8F1DEC(v56, v73, v75);
  v79 = v77;
  if (!v77)
  {
    v84 = v78;
    (*(v66 + 8))(v67, v63);

    goto LABEL_14;
  }

  (*(v66 + 8))(v67, v63);

LABEL_11:
  v72 = v224;
LABEL_15:
  v225 = 0;
  sub_22C90405C();
  v86 = v79;
  v87 = sub_22C9063CC();
  v88 = sub_22C90AADC();

  if (os_log_type_enabled(v87, v88))
  {
    sub_22C36BED8();
    v89 = swift_slowAlloc();
    v90 = swift_slowAlloc();
    *v89 = 138412290;
    v91 = v79;
    v92 = _swift_stdlib_bridgeErrorToNSError();
    *(v89 + 4) = v92;
    *v90 = v92;
    _os_log_impl(&dword_22C366000, v87, v88, "Error getting formattedParams: %@", v89, 0xCu);
    sub_22C36DD28(v90, &qword_27D9BB158, qword_22C910FD0);
    v72 = v224;
    sub_22C369B50();
    MEMORY[0x2318B9880]();
    sub_22C369B50();
    MEMORY[0x2318B9880]();
  }

  else
  {
  }

  (*(v221 + 8))(v220, v222);
LABEL_19:
  v93 = sub_22C90804C();
  sub_22C8EB724(v93);
  sub_22C3743B4();
  v232 = sub_22C3A5908(&qword_27D9C0B90, &qword_22C92A970);
  *&v231 = v3 + v72;
  v94 = sub_22C871F2C();
  sub_22C456E34(v94, v95);
  v96 = v216;
  swift_isUniquelyReferenced_nonNull_native();
  v228 = v96;
  sub_22C62F20C();
  v97 = v228;
  ResponseGenerationInput.parameterConfirmationValueStatementResultIndex.getter();
  if (v99)
  {
    v220 = v97;
  }

  else
  {
    v232 = MEMORY[0x277D83B88];
    *&v231 = v98;
    v100 = sub_22C871F2C();
    sub_22C456E34(v100, v101);
    swift_isUniquelyReferenced_nonNull_native();
    v228 = v97;
    sub_22C62F20C();
    v220 = v228;
  }

  v102 = v218;
  v103 = v217;
  v104 = v214;
  sub_22C90803C();
  v105 = v225;
  v106 = sub_22C8EBCC4();
  v107 = v104;
  v108 = v105;
  if (v105)
  {
    v226(v104, v227);
    v225 = 0;
LABEL_27:
    sub_22C90405C();
    v121 = v108;
    v122 = sub_22C9063CC();
    v123 = sub_22C90AADC();

    if (os_log_type_enabled(v122, v123))
    {
      sub_22C36BED8();
      v124 = swift_slowAlloc();
      v125 = swift_slowAlloc();
      *&v231 = v125;
      *v124 = 136315138;
      swift_getErrorValue();
      v126 = sub_22C90B57C();
      v128 = sub_22C36F9F4(v126, v127, &v231);

      *(v124 + 4) = v128;
      _os_log_impl(&dword_22C366000, v122, v123, "Error getting DialogValue params: %s", v124, 0xCu);
      sub_22C36FF94(v125);
      sub_22C369B50();
      MEMORY[0x2318B9880]();
      sub_22C369B50();
      MEMORY[0x2318B9880]();
    }

    else
    {
    }

    (*(v221 + 8))(v102, v222);
    v129 = v220;
    goto LABEL_31;
  }

  v109 = v106;
  v110 = (v226)(v107, v227);
  MEMORY[0x28223BE20](v110);
  sub_22C369920();
  *(v111 - 16) = v103;
  *(v111 - 8) = v3;
  sub_22C37EE44(v112, v113);
  sub_22C3743B4();
  sub_22C36FF20();
  *&v231 = v109;
  sub_22C36A4C0();
  sub_22C37B854(v114, v115, v116, v117);
  sub_22C3818B8();
  v118 = v200;
  sub_22C90803C();
  sub_22C8EBE00();
  v108 = v109;
  if (v109)
  {
    v120 = v118;
LABEL_26:
    v226(v120, v227);
    v225 = 0;
    v102 = v218;
    goto LABEL_27;
  }

  v161 = v119;
  v226(v118, v227);
  v162 = sub_22C36BA00();
  v165 = sub_22C8EF95C(v162, v163, v164, v161);

  MEMORY[0x28223BE20](v166);
  sub_22C369920();
  *(v167 - 16) = v217;
  *(v167 - 8) = v3;
  sub_22C37EE44(v168, v169);
  sub_22C3743B4();
  sub_22C36FF20();
  *&v231 = v165;
  sub_22C36A4C0();
  sub_22C37B854(v170, v171, v172, v173);
  sub_22C3818B8();
  v174 = v196;
  sub_22C90803C();
  v175 = sub_22C8EBE00();
  v108 = v165;
  if (v165)
  {
    v120 = v174;
    goto LABEL_26;
  }

  v183 = v175;
  v184 = v176;
  v185 = v177;
  v186 = v178;
  v226(v174, v227);
  v187 = sub_22C8EF95C(v183, v184, v185 & 1, v186);

  MEMORY[0x28223BE20](v188);
  sub_22C369920();
  *(v189 - 16) = v217;
  *(v189 - 8) = v3;
  sub_22C37EE44(v190, v191);
  sub_22C3743B4();
  sub_22C36FF20();
  *&v231 = v187;
  sub_22C36A4C0();
  sub_22C37B854(v192, v193, v194, v195);
  v225 = 0;
  v129 = v231;
LABEL_31:
  sub_22C605DE8(v129, &v231);
  v130 = v224;
  if (!v232)
  {
    goto LABEL_39;
  }

  sub_22C3A5908(&qword_27D9BAB50, &qword_22C90D3F0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_40;
  }

  sub_22C605DE8(v229, &v231);

  if (v232)
  {
    v131 = MEMORY[0x277D837D0];
    if (swift_dynamicCast())
    {
      v220 = v129;
      v133 = v229;
      v132 = v230;
      if ((v229 || v230 != 0xE000000000000000) && (sub_22C90B4FC() & 1) == 0)
      {
        v232 = v131;
        *&v231 = v133;
        *(&v231 + 1) = v132;
        v180 = sub_22C871F2C();
        sub_22C456E34(v180, v181);
        v182 = v220;
        swift_isUniquelyReferenced_nonNull_native();
        v228 = v182;
LABEL_44:
        sub_22C62F20C();
        sub_22C871ED0();
        goto LABEL_46;
      }

      v130 = v224;
      v129 = v220;
    }
  }

  else
  {
LABEL_39:
    sub_22C36DD28(&v231, &qword_27D9BD5D8, &qword_22C918510);
  }

LABEL_40:
  sub_22C37205C();
  sub_22C90803C();
  v134 = v205;
  sub_22C907C3C();
  v226(v130, v227);
  v135 = sub_22C36FD7C();
  if (sub_22C370B74(v135, v136, v223) != 1)
  {
    v137 = v129;
    v138 = sub_22C908E0C();
    v140 = v139;
    sub_22C36BBA8();
    (*(v141 + 8))(v134);
    if (!v140)
    {
      sub_22C871ED0();
      goto LABEL_46;
    }

    v232 = MEMORY[0x277D837D0];
    *&v231 = v138;
    *(&v231 + 1) = v140;
    v142 = sub_22C871F2C();
    sub_22C456E34(v142, v143);
    swift_isUniquelyReferenced_nonNull_native();
    v228 = v137;
    goto LABEL_44;
  }

  sub_22C871ED0();
  sub_22C36DD28(v134, &qword_27D9BC1E8, &qword_22C9123B0);
LABEL_46:
  sub_22C36FB20();
}

void ResponseGenerationInput.parameterConfirmationValueStatementResultIndex.getter()
{
  sub_22C36BA7C();
  v3 = sub_22C3A5908(&qword_27D9BF318, &qword_22C9225A0);
  sub_22C369914(v3);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v4);
  v51 = &v43 - v5;
  sub_22C36BA0C();
  sub_22C9025EC();
  sub_22C369824();
  v49 = v7;
  v50 = v6;
  MEMORY[0x28223BE20](v6);
  sub_22C3698A8();
  v48 = v8;
  sub_22C36BA0C();
  v52 = sub_22C901ECC();
  sub_22C369824();
  v44 = v9;
  MEMORY[0x28223BE20](v10);
  sub_22C3698A8();
  v43 = v11;
  sub_22C36BA0C();
  v12 = sub_22C9026BC();
  sub_22C369824();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  sub_22C369838();
  v18 = v17 - v16;
  v19 = sub_22C907DEC();
  sub_22C369824();
  v21 = v20;
  MEMORY[0x28223BE20](v22);
  sub_22C369838();
  sub_22C371BB4();
  v23 = sub_22C906ECC();
  sub_22C369824();
  v25 = v24;
  MEMORY[0x28223BE20](v26);
  sub_22C369838();
  sub_22C37B6BC();
  sub_22C9029AC();
  sub_22C369824();
  v46 = v28;
  v47 = v27;
  MEMORY[0x28223BE20](v27);
  sub_22C3698A8();
  v53 = v29;
  v45 = v0;
  sub_22C90802C();
  sub_22C906EBC();
  (*(v25 + 8))(v1, v23);
  sub_22C907DAC();
  (*(v21 + 8))(v2, v19);
  if ((*(v14 + 88))(v18, v12) == *MEMORY[0x277D1CBD0])
  {
    (*(v14 + 96))(v18, v12);
    v31 = v46;
    v30 = v47;
    (*(v46 + 32))(v53, v18, v47);
    v32 = v48;
    sub_22C90298C();
    v33 = v51;
    sub_22C9025BC();
    (*(v49 + 8))(v32, v50);
    v34 = sub_22C36CCF8();
    v35 = v52;
    sub_22C36D0A8(v34, v36, v52);
    if (v37)
    {
      (*(v31 + 8))(v53, v30);
      sub_22C36DD28(v33, &qword_27D9BF318, &qword_22C9225A0);
    }

    else
    {
      v39 = v43;
      v38 = v44;
      (*(v44 + 32))(v43, v33, v35);
      v40 = sub_22C90804C();
      MEMORY[0x28223BE20](v40);
      sub_22C369920();
      *(v41 - 16) = v39;
      sub_22C86A5F0(sub_22C870E6C, v42, v40);

      (*(v31 + 8))(v53, v30);
      (*(v38 + 8))(v39, v35);
    }
  }

  else
  {
    (*(v14 + 8))(v18, v12);
  }

  sub_22C36CC48();
}

void sub_22C870A60()
{
  sub_22C370030();
  v13 = v0;
  v2 = v1;
  v3 = sub_22C90077C();
  sub_22C369824();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  sub_22C369838();
  v9 = v8 - v7;
  type metadata accessor for ResponseCatalogMatcher(0);
  sub_22C907FFC();
  v10 = sub_22C9006BC();
  v12 = v11;
  (*(v5 + 8))(v9, v3);
  v13(v2, v10, v12);

  sub_22C36FB20();
}

uint64_t sub_22C870B80()
{
  v0 = sub_22C901FAC();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v15 - v5;
  v7 = sub_22C906ECC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22C907C0C();
  sub_22C906E1C();
  v11 = (*(v8 + 8))(v10, v7);
  MEMORY[0x2318AF390](v11);
  v12 = sub_22C901F6C();
  v13 = *(v1 + 8);
  v13(v4, v0);
  v13(v6, v0);
  return v12 & 1;
}

unint64_t sub_22C870D58()
{
  result = qword_27D9C0B08;
  if (!qword_27D9C0B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C0B08);
  }

  return result;
}

uint64_t sub_22C870E04@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 16))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

unint64_t sub_22C870E90()
{
  result = qword_27D9C0B28;
  if (!qword_27D9C0B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C0B28);
  }

  return result;
}

unint64_t sub_22C870EE8()
{
  result = qword_27D9C0B30;
  if (!qword_27D9C0B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C0B30);
  }

  return result;
}

unint64_t sub_22C870F40()
{
  result = qword_27D9C0B38;
  if (!qword_27D9C0B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C0B38);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for RequestedResponseMode(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ResponseCatalogAsset(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

void sub_22C871658(uint64_t a1)
{
  sub_22C871714();
  if (v1 <= 0x3F)
  {
    sub_22C90806C();
    if (v2 <= 0x3F)
    {
      sub_22C5D37EC(319);
      if (v3 <= 0x3F)
      {
        sub_22C871764();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_22C871714()
{
  if (!qword_27D9C0B70)
  {
    v0 = sub_22C90AC6C();
    if (!v1)
    {
      atomic_store(v0, &qword_27D9C0B70);
    }
  }
}

unint64_t sub_22C871764()
{
  result = qword_281431E28[0];
  if (!qword_281431E28[0])
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, qword_281431E28);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CatalogEntry.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_22C8718A0()
{
  result = qword_27D9C0B78;
  if (!qword_27D9C0B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C0B78);
  }

  return result;
}

unint64_t sub_22C8718F8()
{
  result = qword_27D9C0B80;
  if (!qword_27D9C0B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C0B80);
  }

  return result;
}

unint64_t sub_22C871950()
{
  result = qword_27D9C0B88;
  if (!qword_27D9C0B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C0B88);
  }

  return result;
}

uint64_t sub_22C8719D4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  sub_22C8920A0();
  v42 = v46;
  v43 = v47;
  v44 = v48;
  v45 = v49;
  *(&v35 + 1) = a1;

  *&v35 = a3;

  while (1)
  {
    sub_22C891C58(v9, v10, v11, v12, v13, v14, v15, v16, v35, v36[0], v36[1], v37[0], v37[1], v38, v39, *(&v39 + 1), v40, v41, v42, *(&v42 + 1), v43, *(&v43 + 1), v44, *(&v44 + 1), v45, v46);
    v17 = *(&v38 + 1);
    if (!*(&v38 + 1))
    {
      sub_22C36A674(v42);
    }

    v18 = v38;
    sub_22C456E34(&v39, v37);
    v19 = *a5;
    v21 = sub_22C36E2BC(v18, v17);
    v22 = v19[2];
    v23 = (v20 & 1) == 0;
    if (__OFADD__(v22, v23))
    {
      break;
    }

    v24 = v20;
    if (v19[3] >= v22 + v23)
    {
      if (a4)
      {
        if (v20)
        {
          goto LABEL_10;
        }
      }

      else
      {
        sub_22C3A5908(&qword_27D9BF388, &unk_22C92B1F0);
        sub_22C90B16C();
        if (v24)
        {
          goto LABEL_10;
        }
      }
    }

    else
    {
      sub_22C88F6B8();
      v25 = sub_22C36E2BC(v18, v17);
      if ((v24 & 1) != (v26 & 1))
      {
        goto LABEL_18;
      }

      v21 = v25;
      if (v24)
      {
LABEL_10:
        v27 = *a5;
        sub_22C36F998(v37, v36);
        sub_22C36FF94(v37);

        v28 = (v27[7] + 32 * v21);
        sub_22C36FF94(v28);
        v9 = sub_22C456E34(v36, v28);
        goto LABEL_14;
      }
    }

    v29 = *a5;
    *(*a5 + 8 * (v21 >> 6) + 64) |= 1 << v21;
    v30 = (v29[6] + 16 * v21);
    *v30 = v18;
    v30[1] = v17;
    v9 = sub_22C456E34(v37, (v29[7] + 32 * v21));
    v31 = v29[2];
    v32 = __OFADD__(v31, 1);
    v33 = v31 + 1;
    if (v32)
    {
      goto LABEL_17;
    }

    v29[2] = v33;
LABEL_14:
    a4 = 1;
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  result = sub_22C90B54C();
  __break(1u);
  return result;
}

unint64_t sub_22C871C34()
{
  result = qword_27D9C0BA0;
  if (!qword_27D9C0BA0)
  {
    sub_22C3AC1A0(&qword_27D9C0B98, &qword_22C92A978);
    sub_22C871CC0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C0BA0);
  }

  return result;
}

unint64_t sub_22C871CC0()
{
  result = qword_27D9C0BA8;
  if (!qword_27D9C0BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C0BA8);
  }

  return result;
}

uint64_t sub_22C871D44(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C3A5908(&qword_27D9BB138, &qword_22C90DB70);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_22C871DB4()
{
  result = qword_27D9C0BB8;
  if (!qword_27D9C0BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C0BB8);
  }

  return result;
}

uint64_t sub_22C871E24@<X0>(_BYTE *a1@<X8>)
{
  result = (*(v1 + 16))();
  if (!v2)
  {
    *a1 = 0;
  }

  return result;
}

uint64_t sub_22C871E58(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CatalogEntry();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22C871ED0()
{
  v2 = *(v0 - 304);

  return sub_22C38B6EC(v2, type metadata accessor for TypedValueFormatter);
}

void sub_22C871EFC(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v6, v4, a4, v5, 2u);
}

uint64_t sub_22C871F38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
}

uint64_t sub_22C871F68()
{
  result = v0;
  *(v1 - 152) = *(*(v1 - 96) + 8);
  return result;
}

void sub_22C871F90()
{

  JUMPOUT(0x2318B7850);
}

uint64_t sub_22C871FB0()
{
}

uint64_t ResponseCatalogDatabase.init(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_22C90121C();
  sub_22C369824();
  v31 = v7;
  v32 = v6;
  MEMORY[0x28223BE20](v6);
  sub_22C369838();
  v30 = (v9 - v8);
  sub_22C90104C();
  sub_22C369824();
  v28 = v11;
  v29 = v10;
  MEMORY[0x28223BE20](v10);
  sub_22C369838();
  v14 = v13 - v12;
  sub_22C90AB1C();
  sub_22C36985C();
  MEMORY[0x28223BE20](v15);
  sub_22C369838();
  v16 = sub_22C90AB2C();
  sub_22C369824();
  v18 = v17;
  MEMORY[0x28223BE20](v19);
  sub_22C369838();
  v22 = v21 - v20;
  v23 = sub_22C909AFC();
  MEMORY[0x28223BE20](v23 - 8);
  sub_22C369838();
  *(v3 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime23ResponseCatalogDatabase_databaseQueue) = 0;
  v24 = (v3 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime23ResponseCatalogDatabase_filePath);
  *v24 = a1;
  v24[1] = a2;
  *(v3 + 16) = 0xD000000000000032;
  *(v3 + 24) = 0x800000022C938720;
  sub_22C87238C();
  sub_22C909AEC();
  (*(v18 + 104))(v22, *MEMORY[0x277D85260], v16);
  sub_22C8723D0();
  sub_22C3A5908(&qword_27D9C0BE8, &unk_22C92A9A0);
  sub_22C872428();
  sub_22C90AE4C();
  v25 = sub_22C90AB3C();
  sub_22C90103C();
  (*(v28 + 32))(v3 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime23ResponseCatalogDatabase_config, v14, v29);
  sub_22C388AAC();
  sub_22C90100C();
  swift_endAccess();
  sub_22C909AEC();
  sub_22C388AAC();
  sub_22C900FFC();
  sub_22C900FEC();
  *v30 = 0x3FB999999999999ALL;
  (*(v31 + 104))(v30, *MEMORY[0x277D0B810], v32);
  sub_22C90101C();
  sub_22C90102C();
  v26 = v25;
  sub_22C900FDC();
  swift_endAccess();

  return v3;
}

unint64_t sub_22C87238C()
{
  result = qword_27D9C0BD8;
  if (!qword_27D9C0BD8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D9C0BD8);
  }

  return result;
}

unint64_t sub_22C8723D0()
{
  result = qword_27D9C0BE0;
  if (!qword_27D9C0BE0)
  {
    sub_22C90AB1C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C0BE0);
  }

  return result;
}

unint64_t sub_22C872428()
{
  result = qword_27D9C0BF0;
  if (!qword_27D9C0BF0)
  {
    sub_22C3AC1A0(&qword_27D9C0BE8, &unk_22C92A9A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C0BF0);
  }

  return result;
}

uint64_t ResponseCatalogDatabase.deinit()
{
  *(v0 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime23ResponseCatalogDatabase_databaseQueue) = 0;

  v1 = OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime23ResponseCatalogDatabase_config;
  sub_22C90104C();
  sub_22C36985C();
  (*(v2 + 8))(v0 + v1);

  return v0;
}

uint64_t sub_22C872524(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime23ResponseCatalogDatabase_databaseQueue))
  {
    MEMORY[0x28223BE20](result);
    sub_22C90108C();

    sub_22C3A5908(&qword_27D9C0B20, &unk_22C92A410);
    sub_22C90109C();
  }

  return result;
}

uint64_t sub_22C872614()
{
  v1 = v0;
  v49 = sub_22C90104C();
  sub_22C369824();
  v3 = v2;
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v48 = &v41 - v8;
  v9 = sub_22C9063DC();
  sub_22C369824();
  v11 = v10;
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v41 - v16;
  sub_22C90405C();

  v18 = sub_22C9063CC();
  v19 = sub_22C90AACC();

  v20 = os_log_type_enabled(v18, v19);
  v45 = v11;
  v46 = v9;
  v47 = v15;
  v42 = v7;
  if (v20)
  {
    v21 = swift_slowAlloc();
    v43 = v3;
    v22 = v21;
    v50[0] = swift_slowAlloc();
    *v22 = 136315394;
    v23 = *(v1 + 16);
    v24 = *(v1 + 24);

    v25 = sub_22C36F9F4(v23, v24, v50);

    *(v22 + 4) = v25;
    *(v22 + 12) = 2080;
    v26 = *(v1 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime23ResponseCatalogDatabase_filePath);
    v27 = *(v1 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime23ResponseCatalogDatabase_filePath + 8);

    v28 = sub_22C36F9F4(v26, v27, v50);

    *(v22 + 14) = v28;
    _os_log_impl(&dword_22C366000, v18, v19, "Initializing %s DB queue at path: %s", v22, 0x16u);
    swift_arrayDestroy();
    sub_22C369B50();
    MEMORY[0x2318B9880]();
    v3 = v43;
    sub_22C369B50();
    MEMORY[0x2318B9880]();
  }

  v44 = *(v11 + 8);
  v44(v17, v9);
  v29 = [objc_opt_self() defaultManager];

  v30 = sub_22C90A0EC();

  LODWORD(v43) = [v29 fileExistsAtPath_];

  v31 = OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime23ResponseCatalogDatabase_config;
  swift_beginAccess();
  v32 = *(v3 + 16);
  v32(v48, v1 + v31, v49);
  sub_22C90108C();
  swift_allocObject();

  v33 = sub_22C90105C();
  v34 = OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime23ResponseCatalogDatabase_databaseQueue;
  *(v1 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime23ResponseCatalogDatabase_databaseQueue) = v33;

  if (v43)
  {
    if (*(v1 + v34))
    {

      sub_22C872C30();
      v40 = v39;

      if (v40 != 1)
      {

        sub_22C8733E8();
      }
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v36 = v42;
    v37 = v49;
    v38 = (v32)(v42, v1 + v31, v49);
    sub_22C872524(v38);
    return (*(v3 + 8))(v36, v37);
  }

  return result;
}

void sub_22C872C30()
{
  v2 = v1;
  v3 = v0;
  v4 = sub_22C9063DC();
  sub_22C369824();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  sub_22C369838();
  v10 = v9 - v8;
  sub_22C90106C();
  if (v1)
  {
    sub_22C90405C();

    v11 = sub_22C9063CC();
    sub_22C90AADC();

    v12 = sub_22C3729E4();
    if (os_log_type_enabled(v12, v13))
    {
      sub_22C36BED8();
      v29 = v6;
      v14 = swift_slowAlloc();
      sub_22C370220();
      v15 = swift_slowAlloc();
      v27 = v15;
      *v14 = 136315138;
      v16 = *(v3 + 16);
      v17 = *(v3 + 24);

      v26 = v4;
      v18 = sub_22C36F9F4(v16, v17, &v27);

      *(v14 + 4) = v18;
      sub_22C376034(&dword_22C366000, v19, v20, "Database version cannot be read for %s");
      sub_22C36FF94(v15);
      sub_22C369B50();
      MEMORY[0x2318B9880]();
      sub_22C369B50();
      MEMORY[0x2318B9880]();

      (*(v29 + 8))(v10, v26);
    }

    else
    {

      (*(v6 + 8))(v10, v4);
    }

    v27 = 0;
    v28 = 0xE000000000000000;
    sub_22C90AF5C();

    v27 = 0xD000000000000024;
    v28 = 0x800000022C938760;
    v21 = *(v3 + 16);
    v22 = *(v3 + 24);

    MEMORY[0x2318B7850](v21, v22);

    v23 = v27;
    v24 = v28;
    sub_22C873D48();
    swift_allocError();
    *v25 = v23;
    *(v25 + 8) = v24;
    *(v25 + 16) = 1;
    swift_willThrow();
  }
}

uint64_t sub_22C872EC8()
{
  v2 = v0;
  v3 = sub_22C9063DC();
  sub_22C369824();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  sub_22C369838();
  v9 = v8 - v7;
  if (!*(v0 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime23ResponseCatalogDatabase_databaseQueue) || (, sub_22C90107C(), result = , !v1))
  {
    sub_22C90405C();

    v11 = sub_22C9063CC();
    sub_22C90AABC();

    v12 = sub_22C3729E4();
    if (os_log_type_enabled(v12, v13))
    {
      sub_22C36BED8();
      v21 = v3;
      v14 = swift_slowAlloc();
      sub_22C370220();
      v15 = swift_slowAlloc();
      v22 = v15;
      *v14 = 136315138;
      v16 = *(v2 + 16);
      v17 = *(v2 + 24);

      v18 = sub_22C36F9F4(v16, v17, &v22);

      *(v14 + 4) = v18;
      sub_22C376034(&dword_22C366000, v19, v20, "Database closed: %s");
      sub_22C36FF94(v15);
      sub_22C369B50();
      MEMORY[0x2318B9880]();
      sub_22C369B50();
      MEMORY[0x2318B9880]();

      return (*(v5 + 8))(v9, v21);
    }

    else
    {

      return (*(v5 + 8))(v9, v3);
    }
  }

  return result;
}

uint64_t sub_22C8730A0()
{
  v1 = v0;
  v2 = sub_22C9063DC();
  sub_22C369824();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  sub_22C369838();
  v8 = v7 - v6;
  sub_22C872614();
  sub_22C90405C();

  v9 = sub_22C9063CC();
  sub_22C90AABC();

  v10 = sub_22C3729E4();
  if (os_log_type_enabled(v10, v11))
  {
    sub_22C36BED8();
    v12 = swift_slowAlloc();
    sub_22C370220();
    v13 = swift_slowAlloc();
    v20 = v13;
    *v12 = 136315138;
    v14 = *(v1 + 16);
    v15 = *(v1 + 24);

    v16 = sub_22C36F9F4(v14, v15, &v20);

    *(v12 + 4) = v16;
    sub_22C376034(&dword_22C366000, v17, v18, "Database reopened: %s");
    sub_22C36FF94(v13);
    sub_22C369B50();
    MEMORY[0x2318B9880]();
    sub_22C369B50();
    MEMORY[0x2318B9880]();
  }

  return (*(v4 + 8))(v8, v2);
}

uint64_t sub_22C87323C()
{
  v1 = v0;
  v2 = sub_22C9063DC();
  sub_22C369824();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  sub_22C369838();
  v8 = v7 - v6;
  sub_22C90405C();

  v9 = sub_22C9063CC();
  v10 = sub_22C90AABC();

  if (os_log_type_enabled(v9, v10))
  {
    sub_22C36BED8();
    v11 = swift_slowAlloc();
    sub_22C370220();
    v12 = swift_slowAlloc();
    v17 = v12;
    *v11 = 136315138;
    v13 = *(v1 + 16);
    v14 = *(v1 + 24);

    v15 = sub_22C36F9F4(v13, v14, &v17);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_22C366000, v9, v10, "Database queue destroyed: %s", v11, 0xCu);
    sub_22C36FF94(v12);
    sub_22C369B50();
    MEMORY[0x2318B9880]();
    sub_22C369B50();
    MEMORY[0x2318B9880]();
  }

  (*(v4 + 8))(v8, v2);
  *(v1 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime23ResponseCatalogDatabase_databaseQueue) = 0;
}

uint64_t sub_22C8733E8()
{
  sub_22C90AF5C();

  v1 = sub_22C90B47C();
  MEMORY[0x2318B7850](v1);

  MEMORY[0x2318B7850](544175136, 0xE400000000000000);
  v2 = sub_22C90B47C();
  MEMORY[0x2318B7850](v2);

  MEMORY[0x2318B7850](0x2064656C69616620, 0xEC00000020726F66);
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);

  MEMORY[0x2318B7850](v4, v3);

  sub_22C873D48();
  swift_allocError();
  *v5 = 0xD000000000000018;
  *(v5 + 8) = 0x800000022C938790;
  *(v5 + 16) = 3;
  return swift_willThrow();
}

uint64_t sub_22C87357C(uint64_t a1)
{
  v2 = sub_22C8740D4();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_22C8735B8(uint64_t a1)
{
  v2 = sub_22C8740D4();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_22C873618()
{
  sub_22C3A5908(&qword_27D9BAB68, &qword_22C914840);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_22C90F800;
  sub_22C90AF5C();

  v1 = sub_22C90B47C();
  MEMORY[0x2318B7850](v1);

  *(v0 + 32) = 0xD000000000000014;
  *(v0 + 40) = 0x800000022C938250;
  return v0;
}

void sub_22C8736EC(uint64_t a1, uint64_t a2)
{
  v31 = a1;
  v4 = sub_22C9063DC();
  v28 = *(v4 - 8);
  v29 = v4;
  MEMORY[0x28223BE20](v4);
  v27 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_22C90117C();
  v6 = *(v30 - 8);
  v7 = MEMORY[0x28223BE20](v30);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = (*(*a2 + 208))(v7);
  v11 = 0;
  v12 = *(v10 + 16);
  v13 = (v6 + 8);
  for (i = v10 + 40; ; i += 16)
  {
    if (v12 == v11)
    {

      return;
    }

    if (v11 >= *(v10 + 16))
    {
      __break(1u);
      return;
    }

    sub_22C90116C();
    sub_22C90120C();
    if (v2)
    {
      break;
    }

    ++v11;
    (*v13)(v9, v30);
  }

  (*v13)(v9, v30);

  v15 = v27;
  sub_22C90405C();
  v16 = v2;
  v17 = sub_22C9063CC();
  v18 = sub_22C90AADC();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v19 = 138412290;
    v21 = v2;
    v22 = _swift_stdlib_bridgeErrorToNSError();
    *(v19 + 4) = v22;
    *v20 = v22;
    _os_log_impl(&dword_22C366000, v17, v18, "ResponseCatalog: Error preparing uninitialized database: %@", v19, 0xCu);
    sub_22C36DD28(v20, &qword_27D9BB158, qword_22C910FD0);
    MEMORY[0x2318B9880](v20, -1, -1);
    MEMORY[0x2318B9880](v19, -1, -1);
  }

  (*(v28 + 8))(v15, v29);
  v32 = 0;
  v33 = 0xE000000000000000;
  sub_22C90AF5C();
  MEMORY[0x2318B7850](0xD000000000000025, 0x800000022C938840);
  v34 = v2;
  sub_22C3A5908(&qword_27D9BB188, &qword_22C90FE40);
  sub_22C90B12C();
  v23 = v32;
  v24 = v33;
  sub_22C873D48();
  swift_allocError();
  *v25 = v23;
  *(v25 + 8) = v24;
  *(v25 + 16) = 4;
  swift_willThrow();
}

uint64_t ResponseCatalogDatabase.__allocating_init(_:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  ResponseCatalogDatabase.init(_:)(a1, a2);
  return v4;
}

uint64_t ResponseCatalogDatabase.__deallocating_deinit()
{
  ResponseCatalogDatabase.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_22C873BA4@<X0>(uint64_t *a2@<X8>)
{
  v4 = sub_22C90117C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = 0;
  memset(v10, 0, sizeof(v10));
  sub_22C90116C();
  sub_22C90118C();
  if (v2)
  {
    (*(v5 + 8))(v7, v4);
    return sub_22C36DD28(v10, &qword_27D9C0BC8, &qword_22C92AFB0);
  }

  else
  {
    (*(v5 + 8))(v7, v4);
    result = sub_22C36DD28(v10, &qword_27D9C0BC8, &qword_22C92AFB0);
    if (v13)
    {
      v9 = -1;
    }

    else
    {
      v9 = v12;
    }

    *a2 = v9;
  }

  return result;
}

unint64_t sub_22C873D48()
{
  result = qword_27D9C0C00;
  if (!qword_27D9C0C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C0C00);
  }

  return result;
}

uint64_t sub_22C873DAC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xF8 && *(a1 + 17))
    {
      v2 = *a1 + 247;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 8)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22C873DEC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF7)
  {
    *(result + 16) = 0;
    *result = a2 - 248;
    *(result + 8) = 0;
    if (a3 >= 0xF8)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF8)
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

uint64_t type metadata accessor for ResponseCatalogDatabase(uint64_t a1)
{
  result = qword_27D9C0C08;
  if (!qword_27D9C0C08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22C873E9C(uint64_t a1)
{
  result = sub_22C90104C();
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

unint64_t sub_22C8740D4()
{
  result = qword_27D9C0C18;
  if (!qword_27D9C0C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C0C18);
  }

  return result;
}

void sub_22C874128(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  sub_22C387658();
  a25 = v27;
  a26 = v28;
  if (!*(v29 + 16))
  {
    goto LABEL_4;
  }

  sub_22C59774C();
  sub_22C371EF0();
  sub_22C3D1290(v30, v31, v32, v33);
  sub_22C38B868();
  sub_22C374ABC();
  if (!v34)
  {
    __break(1u);
LABEL_4:
    v26 = MEMORY[0x277D84F90];
  }

  a10 = v26;
  sub_22C876C2C(&a10);
  sub_22C388F1C();
}

void sub_22C8741B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  sub_22C387658();
  a25 = v27;
  a26 = v28;
  if (!*(v29 + 16))
  {
    goto LABEL_4;
  }

  sub_22C5977C8();
  sub_22C371EF0();
  sub_22C3D1388();
  sub_22C38B868();
  sub_22C374ABC();
  if (!v30)
  {
    __break(1u);
LABEL_4:
    v26 = MEMORY[0x277D84F90];
  }

  a10 = v26;
  sub_22C876CB0(&a10);
  sub_22C388F1C();
}

void *sub_22C874248(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    goto LABEL_4;
  }

  v2 = sub_22C5977C8();
  sub_22C3D2C14();
  v4 = v3;

  sub_22C36A674(v6);
  if (v4 != v1)
  {
    __break(1u);
LABEL_4:
    v2 = MEMORY[0x277D84F90];
  }

  v6 = v2;
  sub_22C876CB0(&v6);
  return v6;
}

BOOL sub_22C87435C@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_22C3A2890(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_22C874390@<X0>(uint64_t *a1@<X8>)
{
  result = sub_22C87432C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

BOOL sub_22C8743BC@<W0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C3A2890(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22C8743E8(uint64_t a1)
{
  v2 = sub_22C87475C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C874424(uint64_t a1)
{
  v2 = sub_22C87475C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C874460(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_22C8744EC(v1, v2);
}

uint64_t sub_22C8744A0()
{
  swift_beginAccess();
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_22C8744EC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t ValidationEntry.__allocating_init(from:)(void *a1)
{
  sub_22C36A8CC();
  v2 = swift_allocObject();
  ValidationEntry.init(from:)(a1);
  return v2;
}

uint64_t ValidationEntry.init(from:)(void *a1)
{
  v3 = v1;
  v5 = sub_22C3A5908(&qword_27D9C0C28, &qword_22C92AC10);
  sub_22C369824();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v15 - v9;
  sub_22C374168(a1, a1[3]);
  sub_22C87475C();
  sub_22C90B6BC();
  if (v2)
  {
    type metadata accessor for ValidationEntry();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v12 = sub_22C90B2DC();
    v14 = v13;
    (*(v7 + 8))(v10, v5);
    *(v3 + 16) = v12;
    *(v3 + 24) = v14;
  }

  sub_22C36FF94(a1);
  return v3;
}

unint64_t sub_22C87475C()
{
  result = qword_27D9C0C30;
  if (!qword_27D9C0C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C0C30);
  }

  return result;
}

uint64_t sub_22C8747D4(void *a1)
{
  v2 = sub_22C3A5908(&qword_27D9C0C38, &unk_22C92AC18);
  sub_22C369824();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  v7 = &v9 - v6;
  sub_22C374168(a1, a1[3]);
  sub_22C87475C();
  sub_22C90B6CC();
  swift_beginAccess();

  sub_22C90B3CC();
  (*(v4 + 8))(v7, v2);
}

uint64_t ValidationEntry.__deallocating_deinit()
{

  sub_22C36A8CC();

  return swift_deallocClassInstance();
}

uint64_t sub_22C874978@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = ValidationEntry.__allocating_init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_22C8749C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x282162858](a1, a2, a3, WitnessTable);
}

uint64_t sub_22C874A40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x282162828](a1, a2, a3, WitnessTable);
}

uint64_t sub_22C874AA8()
{
  type metadata accessor for ResponseValidator(0);
  swift_allocObject();
  v0 = ResponseCatalogDatabase.init(_:)(0xD00000000000001FLL, 0x800000022C938A40);

  sub_22C872614();

  qword_27D9C0C20 = v0;
  return result;
}

uint64_t sub_22C874B14(uint64_t a1, uint64_t a2)
{
  swift_allocObject();
  v4 = ResponseCatalogDatabase.init(_:)(a1, a2);

  sub_22C872614();

  return v4;
}

uint64_t static ResponseValidator.current.getter()
{
  if (qword_27D9BA7C8 != -1)
  {
    swift_once();
  }
}

uint64_t sub_22C874BD4()
{
  sub_22C3A5908(&qword_27D9BAB68, &qword_22C914840);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_22C90FB40;
  *(v0 + 32) = 0xD000000000000041;
  *(v0 + 40) = 0x800000022C938870;
  *(v0 + 48) = 0xD00000000000003CLL;
  *(v0 + 56) = 0x800000022C9388C0;
  sub_22C90AF5C();

  v1 = sub_22C90B47C();
  MEMORY[0x2318B7850](v1);

  *(v0 + 64) = 0xD000000000000014;
  *(v0 + 72) = 0x800000022C938250;
  return v0;
}

uint64_t sub_22C874CDC(uint64_t a1, Swift::String *a2)
{
  v75 = a1;
  sub_22C9063DC();
  sub_22C369824();
  v77 = v3;
  v78 = v4;
  MEMORY[0x28223BE20](v3);
  sub_22C369ABC();
  v76 = v5 - v6;
  sub_22C369930();
  MEMORY[0x28223BE20](v7);
  v73 = &v71 - v8;
  sub_22C369930();
  MEMORY[0x28223BE20](v9);
  v72 = &v71 - v10;
  sub_22C369930();
  MEMORY[0x28223BE20](v11);
  v13 = &v71 - v12;
  v14 = sub_22C90634C();
  sub_22C369824();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  sub_22C369ABC();
  v20 = v18 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v71 - v22;
  v74 = sub_22C90636C();
  sub_22C369824();
  v25 = v24;
  MEMORY[0x28223BE20](v26);
  v28 = &v71 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = a2[1];
  v80.appBundleID = *a2;
  v80.intentID = v29;
  v30 = a2[3];
  v80.actionType = a2[2];
  v80.responseMode = v30;
  sub_22C9036AC();
  sub_22C90633C();
  v31 = sub_22C90635C();
  v32 = sub_22C90AB6C();
  if (sub_22C90AC5C())
  {
    v33 = swift_slowAlloc();
    v71 = v13;
    v34 = v33;
    *v33 = 0;
    v35 = sub_22C90632C();
    _os_signpost_emit_with_name_impl(&dword_22C366000, v31, v32, v35, "ResponseGeneration.responseValidation", "", v34, 2u);
    v13 = v71;
    sub_22C369B50();
    MEMORY[0x2318B9880]();
  }

  (*(v16 + 16))(v20, v23, v14);
  sub_22C9063AC();
  swift_allocObject();
  v36 = sub_22C90639C();
  (*(v16 + 8))(v23, v14);
  (*(v25 + 8))(v28, v74);
  sub_22C90405C();
  v37 = sub_22C9063CC();
  v38 = sub_22C90AABC();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = v13;
    v40 = swift_slowAlloc();
    *v40 = 67109120;
    swift_getKeyPath();
    sub_22C901F3C();

    *(v40 + 4) = LOBYTE(identifiers.appBundleID._countAndFlagsBits);
    _os_log_impl(&dword_22C366000, v37, v38, "ResponseGeneration:(ResponseValidator)validateflag = %{BOOL}d", v40, 8u);
    v13 = v39;
    sub_22C369B50();
    MEMORY[0x2318B9880]();
  }

  v41 = v77;
  v43 = v78 + 8;
  v42 = *(v78 + 8);
  v42(v13, v77);
  swift_getKeyPath();
  sub_22C901F3C();

  if (LOBYTE(identifiers.appBundleID._countAndFlagsBits) == 1)
  {
    v44 = sub_22C874248(v75);
    identifiers = v80;
    v45 = hashInputKeysOnly(inputParamKeys:identifiers:)(v44, &identifiers);

    v56 = sub_22C875C2C(v45._countAndFlagsBits, v45._object);

    if (v56)
    {

      goto LABEL_13;
    }

    v58 = v72;
    sub_22C90405C();
    sub_22C87714C(&v80, &identifiers);

    v59 = sub_22C9063CC();
    v60 = sub_22C90AADC();
    sub_22C871D14(&v80);

    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      identifiers.appBundleID._countAndFlagsBits = swift_slowAlloc();
      *v61 = 136315907;
      v62 = v42;
      object = v80.intentID._object;
      v64 = sub_22C388ACC();
      *(v61 + 4) = sub_22C36F9F4(v64, object, v65);
      v78 = v43;
      *(v61 + 12) = 2080;
      v66 = sub_22C388ACC();
      *(v61 + 14) = sub_22C36F9F4(v66, object, v67);
      *(v61 + 22) = 2080;
      *(v61 + 24) = sub_22C36F9F4(v80.actionType._countAndFlagsBits, v80.actionType._object, &identifiers.appBundleID._countAndFlagsBits);
      *(v61 + 32) = 2085;
      type metadata accessor for DialogValue(0);
      v68 = sub_22C909EDC();
      v70 = sub_22C36F9F4(v68, v69, &identifiers.appBundleID._countAndFlagsBits);

      *(v61 + 34) = v70;
      _os_log_impl(&dword_22C366000, v59, v60, "ResponseValidator: INVALID request - Model not trained for these parameters:\n%s:%s:%s -%{sensitive}s", v61, 0x2Au);
      swift_arrayDestroy();
      sub_22C369B50();
      MEMORY[0x2318B9880]();
      sub_22C369B50();
      MEMORY[0x2318B9880]();

      v62(v72, v41);
      goto LABEL_13;
    }

    v55 = v58;
LABEL_12:
    v42(v55, v41);
    goto LABEL_13;
  }

  v46 = v73;
  sub_22C90405C();

  v47 = sub_22C9063CC();
  v48 = sub_22C90AABC();

  if (!os_log_type_enabled(v47, v48))
  {

    v55 = v46;
    goto LABEL_12;
  }

  v49 = swift_slowAlloc();
  v50 = swift_slowAlloc();
  identifiers.appBundleID._countAndFlagsBits = v50;
  *v49 = 136642819;
  type metadata accessor for DialogValue(0);
  v51 = sub_22C909EDC();
  v53 = v42;
  v54 = sub_22C36F9F4(v51, v52, &identifiers.appBundleID._countAndFlagsBits);

  *(v49 + 4) = v54;
  _os_log_impl(&dword_22C366000, v47, v48, "ResponseValidator: Because validation currently disabled, permitting the request to go through:\n%{sensitive}s", v49, 0xCu);
  sub_22C36FF94(v50);
  sub_22C369B50();
  MEMORY[0x2318B9880]();
  sub_22C369B50();
  MEMORY[0x2318B9880]();

  v53(v73, v41);
LABEL_13:
  sub_22C87561C(v36);

  return 1;
}

uint64_t sub_22C87561C(uint64_t a1)
{
  v29 = sub_22C90637C();
  v27 = *(v29 - 1);
  MEMORY[0x28223BE20](v29);
  v2 = &v23 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_22C90634C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22C90636C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22C9036AC();
  v11 = sub_22C90635C();
  sub_22C90638C();
  v28 = sub_22C90AB5C();
  if (sub_22C90AC5C())
  {
    v24 = v8;
    v25 = v7;
    v26 = v3;

    sub_22C9063BC();

    v12 = v27;
    v13 = v29;
    if ((*(v27 + 88))(v2, v29) == *MEMORY[0x277D85B00])
    {
      v14 = 0;
      v15 = 0;
      v29 = "[Error] Interval already ended";
    }

    else
    {
      (*(v12 + 8))(v2, v13);
      v29 = "%s";
      v15 = 2;
      v14 = 1;
    }

    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v30 = v18;
    *v17 = v15;
    *(v17 + 1) = v14;
    *(v17 + 2) = 2080;
    sub_22C90366C();
    v19 = sub_22C90AF7C();
    v21 = sub_22C36F9F4(v19, v20, &v30);

    *(v17 + 4) = v21;
    v22 = sub_22C90632C();
    _os_signpost_emit_with_name_impl(&dword_22C366000, v11, v28, v22, "ResponseGeneration.responseValidation", v29, v17, 0xCu);
    sub_22C36FF94(v18);
    MEMORY[0x2318B9880](v18, -1, -1);
    MEMORY[0x2318B9880](v17, -1, -1);

    (*(v4 + 8))(v6, v26);
    return (*(v24 + 8))(v10, v25);
  }

  else
  {

    (*(v4 + 8))(v6, v3);
    return (*(v8 + 8))(v10, v7);
  }
}

Swift::String __swiftcall hashInputKeysOnly(inputParamKeys:identifiers:)(Swift::OpaquePointer inputParamKeys, IntelligenceFlowPlannerRuntime::ResponseCatalogIdentifiers *identifiers)
{
  sub_22C387658();
  v57 = v2;
  v58 = v3;
  v5 = v4;
  v8 = *v6;
  v7 = v6[1];
  v10 = v6[2];
  v9 = v6[3];
  v11 = v6[5];
  v12 = v6[7];
  v53 = v6[4];
  v54 = v6[6];

  sub_22C590270(0, 1, 1, MEMORY[0x277D84F90]);
  v14 = v13;
  v16 = *(v13 + 16);
  v15 = *(v13 + 24);
  v17 = v15 >> 1;
  v18 = v16 + 1;
  if (v15 >> 1 <= v16)
  {
    v44 = sub_22C369AB0(v15);
    sub_22C36C594(v44, v16 + 1);
    v14 = v45;
    v15 = *(v45 + 24);
    v17 = v15 >> 1;
  }

  *(v14 + 16) = v18;
  v19 = v14 + 16 * v16;
  *(v19 + 32) = v8;
  *(v19 + 40) = v7;
  v20 = v16 + 2;
  if (v17 < (v16 + 2))
  {
    v46 = sub_22C369AB0(v15);
    sub_22C36C594(v46, v16 + 2);
    v14 = v47;
  }

  *(v14 + 16) = v20;
  v21 = v14 + 16 * v18;
  *(v21 + 32) = v10;
  *(v21 + 40) = v9;
  v22 = *(v14 + 24);
  v23 = v16 + 3;
  if ((v16 + 3) > (v22 >> 1))
  {
    v48 = sub_22C369AB0(v22);
    sub_22C36C594(v48, v16 + 3);
    v14 = v49;
  }

  *(v14 + 16) = v23;
  v24 = v14 + 16 * v20;
  *(v24 + 32) = v53;
  *(v24 + 40) = v11;
  v25 = *(v14 + 24);
  if ((v16 + 4) > (v25 >> 1))
  {
    v50 = sub_22C369AB0(v25);
    sub_22C36C594(v50, v16 + 4);
    v14 = v51;
  }

  *(v14 + 16) = v16 + 4;
  v26 = v14 + 16 * v23;
  *(v26 + 32) = v54;
  *(v26 + 40) = v12;
  v27 = *(v5 + 16);
  if (v27)
  {
    v28 = (v5 + 40);
    do
    {
      v30 = *(v28 - 1);
      v29 = *v28;
      v31 = *(v14 + 16);
      v32 = *(v14 + 24);

      if (v31 >= v32 >> 1)
      {
        sub_22C36C594(v32 > 1, v31 + 1);
        v14 = v34;
      }

      *(v14 + 16) = v31 + 1;
      v33 = v14 + 16 * v31;
      *(v33 + 32) = v30;
      *(v33 + 40) = v29;
      v28 += 2;
      --v27;
    }

    while (v27);
  }

  v55 = v14;

  sub_22C876CB0(&v55);

  v35 = v55;
  v55 = 0;
  v56 = 0xE000000000000000;
  v36 = *(v35 + 16);
  if (v36)
  {
    v37 = (v35 + 40);
    do
    {
      v38 = *(v37 - 1);
      v39 = *v37;

      MEMORY[0x2318B7850](v38, v39);

      v37 += 2;
      --v36;
    }

    while (v36);

    v40 = v55;
    v41 = v56;
  }

  else
  {

    v40 = 0;
    v41 = 0xE000000000000000;
  }

  sub_22C8767C4(v40, v41);

  sub_22C388F1C();
  result._object = v43;
  result._countAndFlagsBits = v42;
  return result;
}

uint64_t sub_22C875C2C(uint64_t a1, unint64_t a2)
{
  v6 = sub_22C9063DC();
  sub_22C369824();
  v41 = v7;
  MEMORY[0x28223BE20](v8);
  sub_22C369ABC();
  v40 = (v9 - v10);
  sub_22C369930();
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v38 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v38 - v15;
  if (*(v2 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime23ResponseCatalogDatabase_databaseQueue))
  {
    v39 = v6;
    v17 = swift_allocObject();
    *(v17 + 16) = a1;
    *(v17 + 24) = a2;

    sub_22C90405C();

    v18 = sub_22C9063CC();
    v19 = sub_22C90AABC();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v38 = v17;
      v22 = v21;
      v42 = v21;
      *v20 = 136315138;
      *(v20 + 4) = sub_22C36F9F4(a1, a2, &v42);
      _os_log_impl(&dword_22C366000, v18, v19, "ResponseValidator: searching cache for %s", v20, 0xCu);
      sub_22C36FF94(v22);
      v17 = v38;
      sub_22C369B50();
      MEMORY[0x2318B9880]();
      sub_22C369B50();
      MEMORY[0x2318B9880]();
    }

    v23 = *(v41 + 8);
    v24 = v39;
    v25 = v23(v16, v39);
    MEMORY[0x28223BE20](v25);
    *(&v38 - 2) = sub_22C876D1C;
    *(&v38 - 1) = v17;
    sub_22C3A5908(&qword_27D9C0C40, &unk_22C92AC28);
    sub_22C90106C();
    if (v3)
    {
      sub_22C90405C();
      v26 = v3;
      v27 = sub_22C9063CC();
      v28 = sub_22C90AADC();

      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v38 = v17;
        v31 = v30;
        *v29 = 138412290;
        v32 = v3;
        v33 = _swift_stdlib_bridgeErrorToNSError();
        *(v29 + 4) = v33;
        *v31 = v33;
        _os_log_impl(&dword_22C366000, v27, v28, "ResponseValidator: read failed with: %@", v29, 0xCu);
        sub_22C3770B0(v31, &qword_27D9BB158, qword_22C910FD0);
        sub_22C369B50();
        MEMORY[0x2318B9880]();
        sub_22C369B50();
        MEMORY[0x2318B9880]();
      }

      else
      {
      }

      v23(v40, v24);

      return 0;
    }

    else
    {

      return v42;
    }
  }

  else
  {
    sub_22C90405C();
    v34 = sub_22C9063CC();
    v35 = sub_22C90AADC();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_22C366000, v34, v35, "ResponseValidator: Unable to access database", v36, 2u);
      sub_22C369B50();
      MEMORY[0x2318B9880]();
    }

    (*(v41 + 8))(v14, v6);
    return 0;
  }
}

uint64_t sub_22C8760C4(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v24 = a1;
  v5 = sub_22C9063DC();
  v22 = *(v5 - 8);
  v23 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22C90117C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v26[0] = 0;
  *(&v26[0] + 1) = 0xE000000000000000;
  sub_22C90AF5C();
  MEMORY[0x2318B7850](0xD00000000000003DLL, 0x800000022C9389E0);
  MEMORY[0x2318B7850](a2, a3);
  MEMORY[0x2318B7850](15143, 0xE200000000000000);
  type metadata accessor for ValidationEntry();
  v27 = 0;
  memset(v26, 0, sizeof(v26));
  sub_22C90116C();
  sub_22C878D38(&qword_27D9C0C80, v12, type metadata accessor for ValidationEntry, &protocol conformance descriptor for ValidationEntry);
  v13 = v25;
  sub_22C90114C();
  if (v13)
  {

    (*(v9 + 8))(v11, v8);
    sub_22C3770B0(v26, &qword_27D9C0BC8, &qword_22C92AFB0);
  }

  else
  {
    v25 = a2;
    v14 = v23;

    (*(v9 + 8))(v11, v8);
    sub_22C3770B0(v26, &qword_27D9C0BC8, &qword_22C92AFB0);
    v8 = v28;
    if (!v28)
    {
      v15 = v7;
      sub_22C90405C();
      v16 = a3;

      v17 = sub_22C9063CC();
      v18 = sub_22C90AABC();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        *&v26[0] = v20;
        *v19 = 136315138;
        *(v19 + 4) = sub_22C36F9F4(v25, v16, v26);
        _os_log_impl(&dword_22C366000, v17, v18, "ResponseValidator: No entry found for hashcode '%s'", v19, 0xCu);
        sub_22C36FF94(v20);
        MEMORY[0x2318B9880](v20, -1, -1);
        MEMORY[0x2318B9880](v19, -1, -1);
      }

      (*(v22 + 8))(v15, v14);
    }
  }

  return v8;
}

uint64_t sub_22C87645C(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime23ResponseCatalogDatabase_databaseQueue))
  {
    v2 = MEMORY[0x28223BE20](result);
    MEMORY[0x28223BE20](v2);
    sub_22C90108C();

    sub_22C3A5908(&qword_27D9C0B20, &unk_22C92A410);
    sub_22C90109C();
  }

  return result;
}

uint64_t sub_22C876570(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_22C90117C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = 0xD000000000000027;
  v13 = 0x800000022C9389B0;
  MEMORY[0x2318B7850](a2, a3);
  v9 = v12;
  v10 = v13;
  v12 = 0x20545245534E49;
  v13 = 0xE700000000000000;
  MEMORY[0x2318B7850](v9, v10);

  sub_22C90116C();
  sub_22C90120C();
  (*(v6 + 8))(v8, v5);
}

uint64_t sub_22C8766D8(Swift::OpaquePointer a1, IntelligenceFlowPlannerRuntime::ResponseCatalogIdentifiers *a2)
{
  countAndFlagsBits = hashInputKeysOnly(inputParamKeys:identifiers:)(a1, a2)._countAndFlagsBits;
  MEMORY[0x2318B7850](countAndFlagsBits);

  MEMORY[0x2318B7850](2107687, 0xE300000000000000);
  sub_22C87645C(10024);
}

uint64_t ResponseValidator.__deallocating_deinit()
{
  ResponseCatalogDatabase.deinit();

  return swift_deallocClassInstance();
}

void sub_22C8767C4(uint64_t a1, uint64_t a2)
{
  v2 = sub_22C909CBC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22C909CAC();
  v44 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22C90A17C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22C90A15C();
  v13 = sub_22C90A12C();
  v15 = v14;
  v16 = v9;
  v17 = v15;
  (*(v10 + 8))(v12, v16);
  if (v17 >> 60 == 15)
  {
    goto LABEL_24;
  }

  sub_22C909C9C();
  sub_22C3C832C(v13, v17);
  sub_22C878670(v13, v17, v8);
  v43 = v13;
  sub_22C3C8114(v13, v17);
  sub_22C909C7C();
  v18 = sub_22C878954(0xD000000000000010, 0x800000022C938A20);
  if (sub_22C909C8C() + 0x4000000000000000 < 0)
  {
    goto LABEL_20;
  }

  sub_22C596D84();
  v20 = v19;
  sub_22C878D38(&qword_27D9C0C88, 255, MEMORY[0x277CC55B0], MEMORY[0x277CC55A8]);
  v21 = sub_22C909C5C();
  v23 = *(v21 + 16);
  v24 = v23 - v22;
  v41 = v8;
  v42 = v5;
  v40 = v17;
  if (v23 != v22)
  {
    if (v23 <= v22)
    {
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    if (v22 < 0)
    {
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    if (!v23)
    {
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
      return;
    }

    v37 = v6;
    v38 = v3;
    v39 = v2;
    v25 = v18 + 4;
    v26 = (v22 + v21 + 32);
    while (1)
    {
      v28 = *v26++;
      v27 = v28;
      if (v18[2] <= v28 >> 4)
      {
        break;
      }

      v29 = *(v25 + (v27 >> 4));
      v30 = *(v20 + 16);
      v31 = v30 + 1;
      if (v30 >= *(v20 + 24) >> 1)
      {
        sub_22C596D84();
        v20 = v33;
      }

      *(v20 + 16) = v31;
      *(v20 + 2 * v30 + 32) = v29;
      if (v18[2] <= (v27 & 0xF))
      {
        goto LABEL_19;
      }

      v32 = *(v25 + (v27 & 0xF));
      if ((v30 + 2) > *(v20 + 24) >> 1)
      {
        sub_22C596D84();
        v20 = v34;
      }

      *(v20 + 16) = v30 + 2;
      *(v20 + 2 * v31 + 32) = v32;
      if (!--v24)
      {

        v3 = v38;
        v2 = v39;
        v6 = v37;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_17:
  v35 = v44;

  sub_22C90A0DC();
  sub_22C3C8114(v43, v40);
  (*(v3 + 8))(v42, v2);
  (*(v35 + 8))(v41, v6);
}

uint64_t sub_22C876C2C(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_22C56C11C();
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_22C8771A8(v6);
  *a1 = v2;
  return result;
}

uint64_t sub_22C876CB0(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_22C56C134();
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_22C87729C(v6);
  *a1 = v2;
  return result;
}

uint64_t type metadata accessor for ResponseValidator(uint64_t a1)
{
  result = qword_27D9C0C58;
  if (!qword_27D9C0C58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ValidationEntry.CodingKeys(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_22C877048()
{
  result = qword_27D9C0C68;
  if (!qword_27D9C0C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C0C68);
  }

  return result;
}

unint64_t sub_22C8770A0()
{
  result = qword_27D9C0C70;
  if (!qword_27D9C0C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C0C70);
  }

  return result;
}

unint64_t sub_22C8770F8()
{
  result = qword_27D9C0C78;
  if (!qword_27D9C0C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C0C78);
  }

  return result;
}

uint64_t sub_22C8771A8(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_22C90B45C();
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
        v6 = sub_22C90A64C();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_22C877508(v7, v8, a1, v4);
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
    return sub_22C877390(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_22C87729C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_22C90B45C();
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
        v6 = sub_22C90A64C();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_22C877B4C(v7, v8, a1, v4);
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
    return sub_22C877440(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_22C877390(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 == a2)
  {
    return result;
  }

  v4 = *a4;
  v5 = *a4 + 24 * a3 - 24;
  v6 = result - a3;
  while (2)
  {
    v7 = v6;
    v8 = v5;
    do
    {
      v9 = *(v8 + 32);
      v10 = *(v8 + 40);
      v11 = *(v8 + 16);
      v12 = v10 >= v11;
      if (v10 != v11)
      {
        goto LABEL_7;
      }

      v13 = *(v8 + 24) >> 14;
      if (v13 == *v8 >> 14)
      {
        v12 = v9 >> 14 >= *(v8 + 8) >> 14;
LABEL_7:
        if (v12)
        {
          break;
        }

        goto LABEL_8;
      }

      if (v13 >= *v8 >> 14)
      {
        break;
      }

LABEL_8:
      if (!v4)
      {
        __break(1u);
        return result;
      }

      v15 = *(v8 + 16);
      v14 = *(v8 + 24);
      *(v8 + 24) = *v8;
      *(v8 + 40) = v15;
      *v8 = v14;
      *(v8 + 8) = v9;
      *(v8 + 16) = v10;
      v8 -= 24;
      v12 = __CFADD__(v7++, 1);
    }

    while (!v12);
    ++a3;
    v5 += 24;
    --v6;
    if (a3 != a2)
    {
      continue;
    }

    return result;
  }
}