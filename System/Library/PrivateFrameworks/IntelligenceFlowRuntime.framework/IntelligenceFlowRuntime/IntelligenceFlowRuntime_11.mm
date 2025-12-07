uint64_t sub_22BC896F0(uint64_t a1)
{
  v2 = sub_22BC8D1C4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BC8972C(uint64_t a1)
{
  v2 = sub_22BC8D1C4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BC8979C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_22BDBA1C4();
  sub_22BB30444();
  v40 = v4;
  MEMORY[0x28223BE20](v5);
  sub_22BB30574();
  v8 = v7 - v6;
  v9 = sub_22BBE6DE0(&qword_27D8E37C8, &qword_22BDBFB30);
  v10 = sub_22BB2F0C8(v9);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v37 - v14;
  v16 = sub_22BBE6DE0(&qword_27D8E2528, &unk_22BDBD190);
  sub_22BB2F0C8(v16);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v17);
  sub_22BB3721C();
  v18 = sub_22BBE6DE0(&qword_27D8E3760, &qword_22BDBFAA8);
  sub_22BB2F0C8(v18);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v19);
  sub_22BDBA214();
  sub_22BDBA1D4();
  sub_22BB38518();
  sub_22BC5E5C4();
  sub_22BB31814(v13, 1, v3);
  if (v20)
  {
    sub_22BB58728(v15, &qword_27D8E37C8, &qword_22BDBFB30);
    v27 = type metadata accessor for TypedValueUndoContext(0);
    v31 = v1;
    v32 = 1;
  }

  else
  {
    v21 = v40;
    (*(v40 + 32))(v8, v13, v3);
    sub_22BDBA1A4();
    v22 = sub_22BDBA184();
    v38 = v23;
    v39 = v22;
    v24 = sub_22BDBA194();
    v26 = v25;
    (*(v21 + 8))(v8, v3);
    sub_22BB58728(v15, &qword_27D8E37C8, &qword_22BDBFB30);
    v27 = type metadata accessor for TypedValueUndoContext(0);
    v28 = (v1 + *(v27 + 20));
    v29 = v38;
    *v28 = v39;
    v28[1] = v29;
    v30 = (v1 + *(v27 + 24));
    *v30 = v24;
    v30[1] = v26;
    v31 = v1;
    v32 = 0;
  }

  sub_22BB336D0(v31, v32, 1, v27);
  v33 = sub_22BDBA1E4();
  v34 = sub_22BBE6DE0(&qword_27D8E3018, &qword_22BDBDAA8);
  sub_22BDBA1F4();
  v35 = sub_22BDBA204();
  sub_22BC8D26C();
  result = sub_22BC8D26C();
  *(a1 + *(v34 + 40)) = v33;
  *(a1 + *(v34 + 48)) = v35 & 1;
  return result;
}

uint64_t sub_22BC89AD8(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_22BB35954();
}

uint64_t sub_22BC89AEC()
{
  sub_22BB2F35C();
  sub_22BB699C4(*(v2 + 24));
  swift_task_alloc();
  sub_22BB30B34();
  *(v2 + 32) = v3;
  *v3 = v4;
  v3[1] = sub_22BC8DA70;
  v5 = sub_22BB95750();

  return MEMORY[0x282177E58](v5, v0, v1);
}

uint64_t sub_22BC89B90()
{
  sub_22BB2F0D4();
  v1[21] = v2;
  v1[22] = v0;
  v1[19] = v3;
  v1[20] = v4;
  v1[17] = v5;
  v1[18] = v6;
  v7 = sub_22BDBA224();
  v1[23] = v7;
  sub_22BB30434(v7);
  v1[24] = v8;
  v1[25] = sub_22BB30ACC();
  v9 = sub_22BBE6DE0(&qword_27D8E2988, &unk_22BDBD050);
  sub_22BB2F0C8(v9);
  v1[26] = sub_22BB30ACC();
  v10 = sub_22BDBA014();
  v1[27] = v10;
  sub_22BB30434(v10);
  v1[28] = v11;
  v1[29] = sub_22BB30ACC();
  v12 = sub_22BDBA044();
  v1[30] = v12;
  sub_22BB30434(v12);
  v1[31] = v13;
  v1[32] = sub_22BB30ACC();
  v14 = sub_22BBE6DE0(&qword_27D8E2B20, &unk_22BDBF750);
  sub_22BB2F0C8(v14);
  v1[33] = sub_22BB30ACC();
  v15 = sub_22BBE6DE0(&qword_27D8E2968, &unk_22BDBD220);
  sub_22BB2F0C8(v15);
  v1[34] = sub_22BB30ACC();
  v16 = sub_22BBE6DE0(&qword_27D8E37B0, &unk_22BDBFB18);
  sub_22BB2F0C8(v16);
  v1[35] = sub_22BB31AF0();
  v1[36] = swift_task_alloc();
  v17 = sub_22BDBA264();
  v1[37] = v17;
  sub_22BB30434(v17);
  v1[38] = v18;
  v1[39] = sub_22BB30ACC();
  v19 = sub_22BB31C00();

  return MEMORY[0x2822009F8](v19, v20, v21);
}

uint64_t sub_22BC8A578@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_22BDB8274();
  sub_22BB30444();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  sub_22BB30574();
  (*(v6 + 16))(v9 - v8, v2, v4);
  v10 = sub_22BB37494();
  v12 = v11(v10);
  if (v12 == *MEMORY[0x277D1DC20])
  {
    v13 = MEMORY[0x277D72620];
LABEL_7:
    v15 = *v13;
    v16 = sub_22BDBA244();
    sub_22BB2F330();
    (*(v17 + 104))(a1, v15, v16);
    v18 = sub_22BB72084();
    v21 = v16;
    return sub_22BB336D0(v18, v19, v20, v21);
  }

  v14 = v12;
  if (v12 == *MEMORY[0x277D1DC30])
  {
    v13 = MEMORY[0x277D72638];
    goto LABEL_7;
  }

  if (v12 == *MEMORY[0x277D1DC28])
  {
    v13 = MEMORY[0x277D72628];
    goto LABEL_7;
  }

  v23 = *MEMORY[0x277D1DC18];
  v24 = sub_22BDBA244();
  sub_22BB2F330();
  v26 = *(v25 + 104);
  if (v14 == v23)
  {
    v26(a1, *MEMORY[0x277D72618], v24);
    v18 = sub_22BB72084();
    v21 = v24;
    return sub_22BB336D0(v18, v19, v20, v21);
  }

  v26(a1, *MEMORY[0x277D72630], v24);
  v27 = sub_22BB72084();
  sub_22BB336D0(v27, v28, v29, v24);
  v30 = sub_22BB37494();
  return v31(v30);
}

uint64_t sub_22BC8A7A0(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return sub_22BB35954();
}

uint64_t sub_22BC8A7B8()
{
  sub_22BB2F35C();
  sub_22BB699C4(*(v0 + 32));
  swift_task_alloc();
  sub_22BB30B34();
  *(v0 + 40) = v1;
  *v1 = v2;
  v3 = sub_22BB6C6BC(v1);

  return MEMORY[0x282177E90](v3);
}

uint64_t sub_22BC8A850()
{
  sub_22BB2F0D4();
  v1[22] = v2;
  v1[23] = v0;
  v1[20] = v3;
  v1[21] = v4;
  v5 = sub_22BBE6DE0(&qword_27D8E37A8, &qword_22BDBFAE8);
  sub_22BB2F0C8(v5);
  v1[24] = sub_22BB30ACC();
  v6 = sub_22BB31C00();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_22BC8A8D8()
{
  sub_22BB2F35C();
  sub_22BB690EC(v0[23], (v0 + 10));
  sub_22BB69FEC(v0 + 10, v0[13]);
  sub_22BC5E5C4();
  v1 = v0[24];
  if (v0[5])
  {
    sub_22BB690EC((v0 + 2), (v0 + 15));
    sub_22BDBA9E4();
    sub_22BC8D11C((v0 + 2));
    v2 = sub_22BDBA9F4();
    v3 = v1;
    v4 = 0;
  }

  else
  {
    sub_22BB58728((v0 + 2), &qword_27D8E2990, &qword_22BDBFAF0);
    v2 = sub_22BDBA9F4();
    v3 = v1;
    v4 = 1;
  }

  sub_22BB336D0(v3, v4, 1, v2);
  v5 = swift_task_alloc();
  v0[25] = v5;
  *v5 = v0;
  v5[1] = sub_22BC8AA40;
  v6 = sub_22BB3487C(v0[20]);

  return MEMORY[0x282177E98](v6);
}

uint64_t sub_22BC8AC70(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_22BB35954();
}

uint64_t sub_22BC8AC84()
{
  sub_22BB2F35C();
  sub_22BB699C4(*(v2 + 24));
  v3 = swift_task_alloc();
  *(v2 + 32) = v3;
  *v3 = v2;
  v3[1] = sub_22BC8DA70;
  v4 = sub_22BB3487C(*(v2 + 16));

  return MEMORY[0x282177E60](v4, v0, v1);
}

uint64_t sub_22BC8AD2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return sub_22BB35954();
}

uint64_t sub_22BC8AD44()
{
  sub_22BB2F35C();
  sub_22BB699C4(*(v0 + 40));
  swift_task_alloc();
  sub_22BB30B34();
  *(v0 + 48) = v1;
  *v1 = v2;
  v3 = sub_22BB52E04(v1);

  return MEMORY[0x282177E68](v3);
}

uint64_t sub_22BC8ADDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return sub_22BB35954();
}

uint64_t sub_22BC8ADF4()
{
  sub_22BB2F35C();
  sub_22BB699C4(*(v0 + 40));
  swift_task_alloc();
  sub_22BB30B34();
  *(v0 + 48) = v1;
  *v1 = v2;
  v3 = sub_22BB52E04(v1);

  return MEMORY[0x282177E78](v3);
}

uint64_t sub_22BC8AE8C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return sub_22BB35954();
}

uint64_t sub_22BC8AEA4()
{
  sub_22BB2F35C();
  sub_22BB699C4(*(v0 + 32));
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_22BC8AF4C;
  v2 = sub_22BB3487C(*(v0 + 16));

  return MEMORY[0x282177E80](v2);
}

uint64_t sub_22BC8B038(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return sub_22BB35954();
}

uint64_t sub_22BC8B050()
{
  sub_22BB2F35C();
  sub_22BB699C4(*(v0 + 32));
  swift_task_alloc();
  sub_22BB30B34();
  *(v0 + 40) = v1;
  *v1 = v2;
  v3 = sub_22BB6C6BC(v1);

  return MEMORY[0x282177E88](v3);
}

uint64_t sub_22BC8B1E8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22BB3C48C;

  return sub_22BC89AD8(a1);
}

uint64_t sub_22BC8B280()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22BB3C48C;

  return sub_22BC89B90();
}

uint64_t sub_22BC8B348(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22BB3C48C;

  return sub_22BC8A7A0(a1, a2);
}

uint64_t sub_22BC8B3F0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22BB3C48C;

  return sub_22BC8B038(a1, a2);
}

uint64_t sub_22BC8B498()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22BC8DAA0;

  return sub_22BC8A850();
}

uint64_t sub_22BC8B544(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22BB3C48C;

  return sub_22BC8AC70(a1);
}

uint64_t sub_22BC8B5D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_22BB3C48C;

  return sub_22BC8AD2C(a1, a2, a3);
}

uint64_t sub_22BC8B688(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_22BB3C48C;

  return sub_22BC8ADDC(a1, a2, a3);
}

uint64_t sub_22BC8B738(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22BC8B7DC;

  return sub_22BC8AE8C(a1, a2);
}

uint64_t sub_22BC8B8C8()
{
  sub_22BB35F54();
  sub_22BBCBF80(v0);
  v3 = v3 && v1 == v2;
  if (!v3 && (sub_22BDBB6D4() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for DisambiguationListItem(0);

  return sub_22BDBA574();
}

uint64_t sub_22BC8B934(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_22BDBB6D4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_22BDBB6D4();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_22BC8B9F0(char a1)
{
  if (a1)
  {
    return 0x65756C6176;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_22BC8BA18()
{
  v1 = sub_22BBE6DE0(&qword_27D8E3800, &qword_22BDBFB58);
  sub_22BB30444();
  v3 = v2;
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v4);
  v6 = &v12[-v5];
  v7 = sub_22BB313A8();
  sub_22BB699E4(v7, v8);
  sub_22BC8D218();
  sub_22BC8DAAC();
  sub_22BDBB8A4();
  v12[15] = 0;
  sub_22BDBB624();
  if (!v0)
  {
    type metadata accessor for DisambiguationListItem(0);
    sub_22BB393D0();
    sub_22BDBA594();
    sub_22BB89844();
    sub_22BC80F98(v9, v10, MEMORY[0x277D72A80]);
    sub_22BDBB664();
  }

  return (*(v3 + 8))(v6, v1);
}

void sub_22BC8BBA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_22BB31014();
  v26 = v25;
  v42 = sub_22BDBA594();
  sub_22BB30444();
  v41 = v27;
  MEMORY[0x28223BE20](v28);
  sub_22BB30574();
  sub_22BB36FD8();
  sub_22BBE6DE0(&qword_27D8E37F0, &qword_22BDBFB50);
  sub_22BB30444();
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v29);
  v30 = sub_22BB3A5CC();
  v31 = type metadata accessor for DisambiguationListItem(v30);
  sub_22BB2F330();
  MEMORY[0x28223BE20](v32);
  sub_22BB30574();
  v35 = (v34 - v33);
  sub_22BB699E4(v26, v26[3]);
  sub_22BC8D218();
  sub_22BDBB894();
  if (v23)
  {
    sub_22BB32FA4(v26);
  }

  else
  {
    *v35 = sub_22BDBB594();
    v35[1] = v36;
    sub_22BB393D0();
    sub_22BB89844();
    sub_22BC80F98(v37, v38, MEMORY[0x277D72A98]);
    sub_22BB3DE30();
    sub_22BDBB5D4();
    v39 = sub_22BC8DAB8();
    v40(v39);
    (*(v41 + 32))(v35 + *(v31 + 20), v24, v42);
    sub_22BB8C3BC();
    sub_22BB32FA4(v26);
    sub_22BB8DA24(v35, type metadata accessor for DisambiguationListItem);
  }

  sub_22BB376A8();
}

uint64_t sub_22BC8BE64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22BC8B934(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22BC8BE8C(uint64_t a1)
{
  v2 = sub_22BC8D218();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BC8BEC8(uint64_t a1)
{
  v2 = sub_22BC8D218();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BC8BF04@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_22BC8BF98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_22BBE6DE0(&qword_27D8E3928, &qword_22BDC0280);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v27 - v5;
  v7 = sub_22BDB54A4();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v27 - v13;
  v15 = MEMORY[0x2318A4880](v12);
  v16 = [v15 source];

  sub_22BC8C278(v16, v6);
  if (sub_22BB3AA28(v6, 1, v7) == 1)
  {
    v17 = sub_22BDBA8C4();
    (*(*(v17 - 8) + 8))(a1, v17);
    sub_22BB58728(v6, &qword_27D8E3928, &qword_22BDC0280);
    v18 = 1;
  }

  else
  {
    v19 = (*(v8 + 32))(v14, v6, v7);
    v20 = MEMORY[0x2318A4880](v19);
    v21 = [v20 bundleIdentifier];

    sub_22BDBABF4();
    v22 = (*(v8 + 16))(v11, v14, v7);
    v23 = MEMORY[0x2318A4880](v22);
    [v23 isExplicitRequest];

    sub_22BDB5494();
    v24 = sub_22BDBA8C4();
    (*(*(v24 - 8) + 8))(a1, v24);
    (*(v8 + 8))(v14, v7);
    v18 = 0;
  }

  v25 = sub_22BDB54B4();
  return sub_22BB336D0(a2, v18, 1, v25);
}

uint64_t sub_22BC8C278@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_22BDB77D4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22BDB54A4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >= 4)
  {
    sub_22BDB63F4();
    v13 = sub_22BDB77C4();
    v14 = sub_22BDBB114();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v24 = a2;
      v25 = a1;
      v17 = v16;
      v26 = v16;
      *v15 = 136315138;
      type metadata accessor for LNConfirmationSystemStyleMontaraEnablementSource(0);
      v18 = sub_22BDBAC14();
      v20 = sub_22BB32EE0(v18, v19, &v26);

      *(v15 + 4) = v20;
      _os_log_impl(&dword_22BB2C000, v13, v14, "ShortcutsDialogPromptHandler: Unexpected LNConfirmationSystemStyleMontaraEnablementSource case: %s", v15, 0xCu);
      sub_22BB32FA4(v17);
      v21 = v17;
      a2 = v24;
      MEMORY[0x2318A6080](v21, -1, -1);
      MEMORY[0x2318A6080](v15, -1, -1);
    }

    (*(v5 + 8))(v7, v4);
    v12 = 1;
  }

  else
  {
    (*(v9 + 104))(v11, **(&unk_278722E00 + a1), v8);
    (*(v9 + 32))(a2, v11, v8);
    v12 = 0;
  }

  return sub_22BB336D0(a2, v12, 1, v8);
}

void sub_22BC8C518(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_22BB31014();
  v28 = v27;
  v56 = v29;
  v62 = type metadata accessor for TypedValueUndoContext(0);
  sub_22BB2F330();
  MEMORY[0x28223BE20](v30);
  sub_22BB30574();
  sub_22BDBA564();
  sub_22BB30444();
  v57 = v32;
  v58 = v31;
  MEMORY[0x28223BE20](v31);
  sub_22BB30574();
  v35 = v34 - v33;
  v36 = sub_22BDBA044();
  sub_22BB30444();
  v61 = v37;
  MEMORY[0x28223BE20](v38);
  sub_22BB30574();
  sub_22BB36FD8();
  v63 = sub_22BBE6DE0(&qword_27D8E3738, &unk_22BDBFA90);
  sub_22BB30444();
  v59 = v39;
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v40);
  sub_22BB395E0();
  sub_22BB699E4(v28, v28[3]);
  sub_22BC8CF00(0, v41, v42, v43);
  sub_22BB3A41C();
  sub_22BC80F98(v44, v45, &unk_22BDC01B0);
  sub_22BDBB894();
  if (!v25)
  {
    v46 = v59;
    sub_22BB92830();
    sub_22BC80F98(v47, v48, MEMORY[0x277D72290]);
    sub_22BDBB5D4();
    sub_22BB393D0();
    sub_22BC80F98(&qword_281428908, MEMORY[0x277D72A10], MEMORY[0x277D72A20]);
    sub_22BB3DE30();
    sub_22BDBB5D4();
    sub_22BB8D22C();
    sub_22BC80F98(&qword_27D8E3750, type metadata accessor for TypedValueUndoContext, &unk_22BDBF84C);
    sub_22BDBB5D4();
    v60 = sub_22BDBB5A4();
    (*(v46 + 8))(v24, v63);
    (*(v57 + 32))(v56, v35, v58);
    sub_22BB331C8();
    sub_22BB336D0(v49, v50, v51, v58);
    v52 = sub_22BBE6DE0(&qword_27D8E3018, &qword_22BDBDAA8);
    sub_22BBADC44();
    sub_22BB8D7FC();
    sub_22BB331C8();
    sub_22BB336D0(v53, v54, v55, v62);
    (*(v61 + 32))(v56 + v52[11], v26, v36);
    *(v56 + v52[10]) = 0;
    *(v56 + v52[12]) = v60 & 1;
  }

  sub_22BB32FA4(v28);
  sub_22BB376A8();
}

void sub_22BC8C98C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int128 a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  sub_22BB31014();
  a18 = v22;
  a19 = v23;
  sub_22BBBEB7C();
  v24 = sub_22BBE6DE0(&qword_27D8E3758, &qword_22BDBFAA0);
  sub_22BB30444();
  v26 = v25;
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v27);
  sub_22BB3721C();
  v28 = sub_22BB313A8();
  sub_22BB699E4(v28, v29);
  sub_22BC8CF00(0, v30, v31, v32);
  sub_22BB3A41C();
  sub_22BC80F98(v33, v34, &unk_22BDC01B0);
  sub_22BC8DAAC();
  sub_22BDBB8A4();
  v35 = sub_22BBE6DE0(&qword_27D8E3018, &qword_22BDBDAA8);
  v36 = *(v35 + 44);
  BYTE7(a10) = 0;
  sub_22BDBA044();
  sub_22BB92830();
  v39 = sub_22BC80F98(v37, v38, MEMORY[0x277D72280]);
  sub_22BB3B7A8(v21 + v36, &a10 + 7, v40, v41, v39);
  if (!v19)
  {
    sub_22BB393D0();
    sub_22BBE6DE0(&qword_27D8E3760, &qword_22BDBFAA8);
    sub_22BC8CF60();
    sub_22BB3DE30();
    sub_22BB3B7A8(v21, v42, v43, v44, v45);
    v46 = *(v35 + 36);
    sub_22BB8D22C();
    sub_22BBE6DE0(&qword_27D8E2528, &unk_22BDBD190);
    v47 = sub_22BC8D014();
    sub_22BB3B7A8(v21 + v46, &a10 + 5, v48, v49, v47);
    sub_22BB3B668();
    sub_22BDBB634();
  }

  (*(v26 + 8))(v20, v24);
  sub_22BB376A8();
}

unint64_t sub_22BC8CB94(uint64_t a1, uint64_t a2)
{
  v2 = sub_22BDBB534();

  if (v2 >= 5)
  {
    return 5;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_22BC8CBE0(char a1)
{
  result = 0x74757074756FLL;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0x746E6F436F646E75;
      break;
    case 3:
      result = 0xD000000000000011;
      break;
    case 4:
      result = 0x727474416B6E696CLL;
      break;
    default:
      result = 0xD000000000000010;
      break;
  }

  return result;
}

unint64_t sub_22BC8CCBC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_22BC8CB94(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_22BC8CCEC@<X0>(unint64_t *a1@<X8>)
{
  result = sub_22BC8CBE0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_22BC8CD34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22BC8CB94(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22BC8CD68(uint64_t a1)
{
  v2 = sub_22BC80F98(&qword_27D8E3748, sub_22BC8CF00, &unk_22BDC01B0);

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BC8CDD4(uint64_t a1)
{
  v2 = sub_22BC80F98(&qword_27D8E3748, sub_22BC8CF00, &unk_22BDC01B0);

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_22BC8CE74()
{
  result = qword_281429970;
  if (!qword_281429970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281429970);
  }

  return result;
}

void sub_22BC8CF00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!qword_27D8E3740)
  {
    v4 = _s10CodingKeysOMa(0, a2, a3, a4);
    if (!v5)
    {
      atomic_store(v4, &qword_27D8E3740);
    }
  }
}

unint64_t sub_22BC8CF60()
{
  result = qword_27D8E3768;
  if (!qword_27D8E3768)
  {
    sub_22BBEB2E0(&qword_27D8E3760, &qword_22BDBFAA8);
    sub_22BC80F98(&qword_281428910, MEMORY[0x277D72A10], MEMORY[0x277D72A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E3768);
  }

  return result;
}

unint64_t sub_22BC8D014()
{
  result = qword_27D8E3770;
  if (!qword_27D8E3770)
  {
    sub_22BBEB2E0(&qword_27D8E2528, &unk_22BDBD190);
    sub_22BC80F98(&qword_27D8E3778, type metadata accessor for TypedValueUndoContext, &unk_22BDBF824);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E3770);
  }

  return result;
}

unint64_t sub_22BC8D0C8()
{
  result = qword_27D8E3788;
  if (!qword_27D8E3788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E3788);
  }

  return result;
}

unint64_t sub_22BC8D170()
{
  result = qword_27D8E37C0;
  if (!qword_27D8E37C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E37C0);
  }

  return result;
}

unint64_t sub_22BC8D1C4()
{
  result = qword_27D8E37D8;
  if (!qword_27D8E37D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E37D8);
  }

  return result;
}

unint64_t sub_22BC8D218()
{
  result = qword_27D8E37F8;
  if (!qword_27D8E37F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E37F8);
  }

  return result;
}

uint64_t sub_22BC8D26C()
{
  sub_22BB35F54();
  sub_22BBE6DE0(v1, v2);
  sub_22BB2F330();
  v3 = sub_22BB31F54();
  v4(v3);
  return v0;
}

_BYTE *storeEnumTagSinglePayload for DisambiguationListItem.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_22BC8D3B0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22BC8D3F0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *sub_22BC8D448(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t _s17ActionPromptVoterVwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFC)
  {
    if (a2 + 4 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 4) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 5;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v5 = v6 - 5;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_22BC8D5B4(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_22BC8D6CC()
{
  result = qword_27D8E38C0;
  if (!qword_27D8E38C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E38C0);
  }

  return result;
}

unint64_t sub_22BC8D724()
{
  result = qword_27D8E38C8;
  if (!qword_27D8E38C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E38C8);
  }

  return result;
}

unint64_t sub_22BC8D77C()
{
  result = qword_27D8E38D0;
  if (!qword_27D8E38D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E38D0);
  }

  return result;
}

unint64_t sub_22BC8D7D4()
{
  result = qword_27D8E38D8;
  if (!qword_27D8E38D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E38D8);
  }

  return result;
}

unint64_t sub_22BC8D82C()
{
  result = qword_27D8E38E0;
  if (!qword_27D8E38E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E38E0);
  }

  return result;
}

unint64_t sub_22BC8D884()
{
  result = qword_27D8E38E8;
  if (!qword_27D8E38E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E38E8);
  }

  return result;
}

unint64_t sub_22BC8D8DC()
{
  result = qword_27D8E38F0;
  if (!qword_27D8E38F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E38F0);
  }

  return result;
}

unint64_t sub_22BC8D934()
{
  result = qword_27D8E38F8;
  if (!qword_27D8E38F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E38F8);
  }

  return result;
}

unint64_t sub_22BC8D98C()
{
  result = qword_27D8E3900;
  if (!qword_27D8E3900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E3900);
  }

  return result;
}

uint64_t sub_22BC8DB14@<X0>(char *a1@<X0>, char a3@<W2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v120 = a1;
  v8 = sub_22BBE6DE0(&qword_27D8E2680, &qword_22BDBCCB0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v115 - v9;
  v11 = sub_22BBE6DE0(&qword_27D8E3930, &qword_22BDC0308);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v115 - v12;
  v14 = sub_22BDBA594();
  v126 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = (&v115 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = sub_22BBE6DE0(&qword_27D8E3938, &unk_22BDC0310);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v115 - v18;
  if (a3)
  {
    if (a3 == 1)
    {
      sub_22BDBA654();
      v20 = sub_22BDBA894();
      if (sub_22BB3AA28(v10, 1, v20) == 1)
      {
        v21 = &qword_27D8E2680;
        v22 = &qword_22BDBCCB0;
        v23 = v10;
LABEL_9:
        result = sub_22BB6B75C(v23, v21, v22);
        *a4 = 0u;
        *(a4 + 16) = 0u;
        *(a4 + 32) = 0;
        return result;
      }

      v124 = v20;
      sub_22BBE6DE0(qword_27D8E2550, &unk_22BDBCC10);
      v28 = v126;
      v29 = (*(v126 + 80) + 32) & ~*(v126 + 80);
      v30 = swift_allocObject();
      *(v30 + 16) = xmmword_22BDBCBD0;
      v31 = sub_22BDBA514();
      v39 = swift_allocBox(v31, v32, v33, v34, v35, v36, v37, v38, v115, v116, v117);
      v118 = a4;
      v40 = v39;
      v125 = v14;
      v42 = v41;
      sub_22BC8E318();
      v43 = v120;
      sub_22BDBA5E4();
      sub_22BB30474();
      (*(v44 + 104))(v42);
      *(v30 + v29) = v40;
      a4 = v118;
      (*(v28 + 104))(v30 + v29, *MEMORY[0x277D72A58], v125);
      *(a4 + 24) = sub_22BBE6DE0(&qword_27D8E3940, &qword_22BDC0320);
      *(a4 + 32) = swift_getOpaqueTypeConformance2();
      sub_22BB8B8A0(a4, v45, v46, v47, v48, v49, v50, v51);
      sub_22BDBA884();
      if (v4)
      {

        sub_22BB35A90();
        (*(v52 + 8))(v10, v53);
        return sub_22BC8E35C(a4);
      }

      sub_22BB35A90();
      return (*(v110 + 8))(v10, v111);
    }

    else
    {
      v25 = v19;
      sub_22BDBA664();
      v26 = sub_22BDBA6B4();
      if (sub_22BB3AA28(v25, 1, v26) == 1)
      {
        v21 = &qword_27D8E3938;
        v22 = &unk_22BDC0310;
        v23 = v25;
        goto LABEL_9;
      }

      v117 = v25;
      v82 = v120;
      v83 = v120[2];
      if (v83)
      {
        v116 = v26;
        v118 = a4;
        v119 = v4;
        v127 = MEMORY[0x277D84F90];
        sub_22BD27A40(0, v83, 0);
        v84 = v127;
        v92 = sub_22BDBA514();
        LODWORD(v125) = *MEMORY[0x277D729B8];
        v124 = v92 - 8;
        v123 = *MEMORY[0x277D72A58];
        v121 = v126 + 32;
        v122 = (v126 + 104);
        v93 = v82 + 5;
        do
        {
          v95 = *(v93 - 1);
          v94 = *v93;
          v96 = v14;
          v97 = swift_allocBox(v92, v85, v86, v87, v88, v89, v90, v91, v115, v116, v117);
          *v98 = v95;
          v98[1] = v94;
          (*(*(v92 - 8) + 104))(v98, v125, v92);
          *v16 = v97;
          (*v122)(v16, v123, v96);
          v127 = v84;
          v100 = *(v84 + 16);
          v99 = *(v84 + 24);

          if (v100 >= v99 >> 1)
          {
            sub_22BD27A40(v99 > 1, v100 + 1, 1);
            v84 = v127;
          }

          *(v84 + 16) = v100 + 1;
          (*(v126 + 32))(v84 + ((*(v126 + 80) + 32) & ~*(v126 + 80)) + *(v126 + 72) * v100, v16, v96);
          v93 += 2;
          --v83;
          v14 = v96;
        }

        while (v83);
        a4 = v118;
        v5 = v119;
        v26 = v116;
      }

      *(a4 + 24) = sub_22BBE6DE0(qword_27D8E3950, qword_22BDC0330);
      *(a4 + 32) = swift_getOpaqueTypeConformance2();
      sub_22BB8B8A0(a4, v101, v102, v103, v104, v105, v106, v107);
      v108 = v117;
      sub_22BDBA6A4();
      if (v5)
      {

        sub_22BB30474();
        (*(v109 + 8))(v108, v26);
        return sub_22BC8E35C(a4);
      }

      sub_22BB30474();
      return (*(v114 + 8))(v108, v26);
    }
  }

  else
  {
    sub_22BDBA644();
    v24 = sub_22BDBA7F4();
    if (sub_22BB3AA28(v13, 1, v24) == 1)
    {
      v21 = &qword_27D8E3930;
      v22 = &qword_22BDC0308;
      v23 = v13;
      goto LABEL_9;
    }

    v124 = v24;
    sub_22BBE6DE0(qword_27D8E2550, &unk_22BDBCC10);
    v54 = v126;
    v55 = *(v126 + 80);
    v119 = v4;
    v56 = (v55 + 32) & ~v55;
    v57 = swift_allocObject();
    *(v57 + 16) = xmmword_22BDBCBD0;
    v58 = sub_22BDBA514();
    v66 = a4;
    v67 = swift_allocBox(v58, v59, v60, v61, v62, v63, v64, v65, v115, v116, v117);
    v125 = v14;
    v69 = v68;
    *v68 = sub_22BDBAC44();
    v69[1] = v70;
    sub_22BB30474();
    (*(v71 + 104))(v69);
    *(v57 + v56) = v67;
    a4 = v66;
    (*(v54 + 104))(v57 + v56, *MEMORY[0x277D72A58], v125);
    v66[3] = sub_22BBE6DE0(&qword_27D8E3948, &qword_22BDC0328);
    v66[4] = swift_getOpaqueTypeConformance2();
    sub_22BB8B8A0(v66, v72, v73, v74, v75, v76, v77, v78);
    v79 = v119;
    sub_22BDBA7E4();
    if (v79)
    {

      sub_22BB35A90();
      (*(v80 + 8))(v13, v81);
      return sub_22BC8E35C(a4);
    }

    sub_22BB35A90();
    return (*(v112 + 8))(v13, v113);
  }
}

unint64_t sub_22BC8E318()
{
  result = qword_27D8E2698[0];
  if (!qword_27D8E2698[0])
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, qword_27D8E2698);
  }

  return result;
}

uint64_t sub_22BC8E35C(uint64_t result)
{
  if ((*(*(*(result + 24) - 8) + 80) & 0x20000) != 0)
  {
    JUMPOUT(0x2318A6080);
  }

  return result;
}

uint64_t sub_22BC8E3B8()
{
  v1 = *v0;
  if (*(v0 + 32))
  {
    if (*(v0 + 32) == 1)
    {
      sub_22BBE6DE0(&qword_27D8E3370, &qword_22BDBF370);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_22BDBCBD0;
      *(inited + 32) = 0xD000000000000011;
      *(inited + 40) = 0x800000022BDD2470;
      *(inited + 72) = sub_22BBE6DE0(&qword_27D8E39E8, &qword_22BDC04C8);
      *(inited + 48) = v1;
    }
  }

  else
  {
    v4 = v0[2];
    v3 = v0[3];
    v5 = v0[1];
    sub_22BBE6DE0(&qword_27D8E3370, &qword_22BDBF370);
    v6 = swift_initStackObject();
    *(v6 + 16) = xmmword_22BDBCBC0;
    *(v6 + 32) = 0x64496C6F6F74;
    *(v6 + 40) = 0xE600000000000000;
    v7 = MEMORY[0x277D837D0];
    *(v6 + 48) = v1;
    *(v6 + 56) = v5;
    *(v6 + 72) = v7;
    *(v6 + 80) = 0x6574656D61726170;
    *(v6 + 120) = v7;
    *(v6 + 88) = 0xEB00000000644972;
    *(v6 + 96) = v4;
    *(v6 + 104) = v3;
  }

  return sub_22BDBAB14();
}

uint64_t sub_22BC8E598(uint64_t a1)
{
  v2 = sub_22BC8EBEC();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_22BC8E5D4(uint64_t a1)
{
  v2 = sub_22BC8EBEC();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_22BC8E634(uint64_t a1)
{
  if ((*(a1 + 32) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 32) & 3;
  }
}

__n128 sub_22BC8E650(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_22BC8E664(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 33))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 32);
      if (v3 <= 2)
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

uint64_t sub_22BC8E6A4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_22BC8E6EC(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 32) = a2;
  return result;
}

uint64_t sub_22BC8E718(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = sub_22BC8EAD0();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_22BC8E7A0(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(*(v4 - 8) + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
LABEL_26:
    if (v5 < 0x7FFFFFFF)
    {
      v16 = *(((result + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 24);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }

    else
    {
      return sub_22BB3AA28(result, v5, v4);
    }
  }

  else
  {
    v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 40;
    v9 = a2 - v7;
    v10 = v8 & 0xFFFFFFF8;
    if ((v8 & 0xFFFFFFF8) != 0)
    {
      v11 = 2;
    }

    else
    {
      v11 = v9 + 1;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    switch(v13)
    {
      case 1:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

LABEL_22:
        v15 = v14 - 1;
        if (v10)
        {
          v15 = 0;
          LODWORD(v10) = *result;
        }

        result = v7 + (v10 | v15) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_22BC8E8DC(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(*(v6 - 8) + 84);
  }

  v9 = *(*(v6 - 8) + 64);
  v10 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 40;
  if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFD8)
  {
    v11 = a3 - v8 + 1;
  }

  else
  {
    v11 = 2;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a3)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (a2 <= v8)
  {
    switch(v14)
    {
      case 1:
        a1[v10] = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        break;
      case 2:
        *&a1[v10] = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        break;
      case 3:
LABEL_43:
        __break(1u);
        break;
      case 4:
        *&a1[v10] = 0;
        goto LABEL_32;
      default:
LABEL_32:
        if (a2)
        {
LABEL_33:
          if (v7 < 0x7FFFFFFF)
          {
            v17 = &a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8;
            if ((a2 & 0x80000000) != 0)
            {
              *(v17 + 8) = 0u;
              *(v17 + 24) = 0u;
              *v17 = a2 & 0x7FFFFFFF;
            }

            else
            {
              *(v17 + 24) = (a2 - 1);
            }
          }

          else
          {

            sub_22BB336D0(a1, a2, v7, v6);
          }
        }

        break;
    }
  }

  else
  {
    if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFD8)
    {
      v15 = a2 - v8;
    }

    else
    {
      v15 = 1;
    }

    if (((v9 + 7) & 0xFFFFFFF8) != 0xFFFFFFD8)
    {
      v16 = ~v8 + a2;
      bzero(a1, ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 40);
      *a1 = v16;
    }

    switch(v14)
    {
      case 1:
        a1[v10] = v15;
        break;
      case 2:
        *&a1[v10] = v15;
        break;
      case 3:
        goto LABEL_43;
      case 4:
        *&a1[v10] = v15;
        break;
      default:
        return;
    }
  }
}

unint64_t sub_22BC8EAD0()
{
  result = qword_27D8E39D8;
  if (!qword_27D8E39D8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27D8E39D8);
  }

  return result;
}

__n128 sub_22BC8EB2C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_22BC8EB48(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 57))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22BC8EB88(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_22BC8EBEC()
{
  result = qword_27D8E39E0;
  if (!qword_27D8E39E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E39E0);
  }

  return result;
}

void sub_22BC8EC40(int a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v145 = a5;
  v130 = a4;
  v137 = a2;
  v144 = a1;
  v6 = sub_22BBE6DE0(&qword_27D8E3038, &qword_22BDBDAD0);
  MEMORY[0x28223BE20](v6 - 8);
  v131 = &v125 - v7;
  sub_22BB2F120();
  v132 = sub_22BDB8B64();
  sub_22BB30444();
  v129 = v8;
  MEMORY[0x28223BE20](v9);
  sub_22BB30574();
  v128 = v11 - v10;
  sub_22BB2F120();
  v136 = sub_22BDBA424();
  sub_22BB30444();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  sub_22BB30574();
  v135 = v16 - v15;
  sub_22BB2F120();
  v141 = sub_22BDBA4B4();
  sub_22BB30444();
  v18 = v17;
  MEMORY[0x28223BE20](v19);
  sub_22BB30574();
  v140 = v21 - v20;
  sub_22BB2F120();
  v22 = sub_22BDBA594();
  sub_22BB30444();
  v24 = v23;
  MEMORY[0x28223BE20](v25);
  sub_22BB30560();
  v142 = v26;
  sub_22BB30B70();
  MEMORY[0x28223BE20](v27);
  v146 = &v125 - v28;
  sub_22BB30B70();
  v30 = MEMORY[0x28223BE20](v29);
  v32 = (&v125 - v31);
  MEMORY[0x28223BE20](v30);
  v34 = &v125 - v33;
  v35 = a3 + 64;
  v36 = 1 << *(a3 + 32);
  v37 = -1;
  if (v36 < 64)
  {
    v37 = ~(-1 << v36);
  }

  v38 = v37 & *(a3 + 64);
  v39 = (v36 + 63) >> 6;
  v150 = v24 + 88;
  v151 = v24 + 16;
  v149 = *MEMORY[0x277D72A38];
  v148 = *MEMORY[0x277D729F8];
  v152 = (v24 + 8);
  v153 = a3;
  v143 = v24 + 96;
  v133 = v13 + 8;
  v134 = v13 + 16;
  v138 = v18 + 8;
  v139 = v18 + 16;

  v40 = 0;
  v147 = MEMORY[0x277D84F90];
  while (1)
  {
    v41 = v40;
    if (!v38)
    {
      break;
    }

LABEL_8:
    v42 = __clz(__rbit64(v38));
    v38 &= v38 - 1;
    v43 = *(v24 + 16);
    v43(v34, *(v153 + 56) + *(v24 + 72) * (v42 | (v40 << 6)), v22);
    v43(v32, v34, v22);
    v44 = sub_22BB31B54();
    v46 = v45(v44);
    if (v46 == v149)
    {
      v49 = sub_22BB33C50();
      v50(v49);
      v126 = *v32;
      swift_projectBox();
      v51 = sub_22BB31F1C();
      v52 = v141;
      v53(v51);
      v54 = sub_22BDBA3B4();
      sub_22BB31074(v54, v55);
      goto LABEL_13;
    }

    if (v46 == v148)
    {
      v56 = sub_22BB33C50();
      v57(v56);
      v126 = *v32;
      swift_projectBox();
      v58 = sub_22BB31F1C();
      v52 = v136;
      v59(v58);
      v60 = sub_22BDBA3B4();
      sub_22BB31074(v60, v61);
LABEL_13:
      v62 = sub_22BB31F1C();
      v63(v62, v52);
      v64 = sub_22BB30CAC();
      v65(v64);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_22BB305BC();
        sub_22BB8C414();
        v147 = v73;
      }

      v66 = v125;
      v68 = *(v147 + 16);
      v67 = *(v147 + 24);
      v69 = v68 + 1;
      if (v68 >= v67 >> 1)
      {
        sub_22BB2F158(v67);
        v126 = v74;
        sub_22BB8C414();
        v69 = v126;
        v147 = v75;
      }

      v70 = v147;
      *(v147 + 16) = v69;
      v71 = v70 + 16 * v68;
      v72 = v127;
      *(v71 + 32) = v66;
      *(v71 + 40) = v72;
    }

    else
    {
      v47 = *v152;
      (*v152)(v34, v22);
      v48 = sub_22BB31B54();
      (v47)(v48);
    }
  }

  while (2)
  {
    v40 = v41 + 1;
    if (__OFADD__(v41, 1))
    {
      __break(1u);
    }

    else
    {
      if (v40 < v39)
      {
        v38 = *(v35 + 8 * v40);
        ++v41;
        if (v38)
        {
          goto LABEL_8;
        }

        continue;
      }

      v76 = sub_22BD1D0F4(v147);
      v77 = v145;
      v78 = sub_22BC8F598(v145);
      if (v144)
      {
        goto LABEL_20;
      }

      v79 = v78;
      if (sub_22BDB9FF4())
      {
        goto LABEL_20;
      }

      v80 = v131;
      sub_22BC90370(v130, v131);
      v81 = v132;
      if (sub_22BB3AA28(v80, 1, v132) == 1)
      {
        sub_22BB58780(v80, &qword_27D8E3038, &qword_22BDBDAD0);
      }

      else
      {
        v82 = v129;
        v83 = v128;
        v84 = sub_22BB34278();
        v85(v84);
        if (v79)
        {
          v86 = sub_22BDB8B54();
          v147 = v76;
          v87 = v86;
          v88 = sub_22BDB9FE4();
          v90 = sub_22BC1E3F0(v88, v89, v87);

          v76 = v147;

          (*(v82 + 8))(v83, v81);
          if (v90)
          {
            goto LABEL_20;
          }
        }

        else
        {
          (*(v82 + 8))(v83, v81);
        }
      }

      if (v77 && *(v76 + 16) && (v79 & 1) != 0)
      {
        v147 = v76;
        v91 = sub_22BC8F7B8(v77);
        v92 = *(v91 + 16);
        if (v92)
        {
          v93 = *(v24 + 80);
          v145 = v91;
          v94 = v91 + ((v93 + 32) & ~v93);
          v153 = *(v24 + 72);
          v95 = *(v24 + 16);
          v96 = MEMORY[0x277D84F90];
          v97 = v142;
          while (1)
          {
            v98 = v146;
            v95(v146, v94, v22);
            v95(v97, v98, v22);
            v99 = sub_22BB31B54();
            v101 = v100(v99);
            if (v101 == v149)
            {
              break;
            }

            if (v101 == v148)
            {
              v110 = sub_22BB33C50();
              v111(v110);
              swift_projectBox();
              v112 = sub_22BB31F1C();
              v105 = v136;
              v113(v112);
              v107 = sub_22BDBA3B4();
              v109 = v114;
              goto LABEL_36;
            }

            v120 = *v152;
            v121 = sub_22BB31B54();
            (v120)(v121);
            v120(v146, v22);
LABEL_42:
            v94 += v153;
            if (!--v92)
            {

              goto LABEL_46;
            }
          }

          v102 = sub_22BB33C50();
          v103(v102);
          swift_projectBox();
          v104 = sub_22BB31F1C();
          v105 = v141;
          v106(v104);
          v107 = sub_22BDBA3B4();
          v109 = v108;
LABEL_36:
          v115 = sub_22BB31F1C();
          v116(v115, v105);

          (*v152)(v146, v22);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_22BB305BC();
            sub_22BB8C414();
            v96 = v122;
          }

          v118 = *(v96 + 16);
          v117 = *(v96 + 24);
          if (v118 >= v117 >> 1)
          {
            sub_22BB2F158(v117);
            sub_22BB8C414();
            v96 = v123;
          }

          *(v96 + 16) = v118 + 1;
          v119 = v96 + 16 * v118;
          *(v119 + 32) = v107;
          *(v119 + 40) = v109;
          v97 = v142;
          goto LABEL_42;
        }

        v96 = MEMORY[0x277D84F90];
LABEL_46:
        v124 = sub_22BD1D0F4(v96);
        sub_22BC903E0(v124, v147);
      }

      else
      {
LABEL_20:
      }
    }

    break;
  }
}

uint64_t sub_22BC8F598(uint64_t a1)
{
  v2 = sub_22BBE6DE0(qword_27D8E39F0, &qword_22BDC04D0);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v14 - v6;
  sub_22BDB9FC4();
  v8 = sub_22BDBA734();
  if (sub_22BB3AA28(v5, 1, v8) == 1)
  {
    sub_22BDB9FA4();
    sub_22BB336D0(v7, 0, 1, v8);
    if (sub_22BB3AA28(v5, 1, v8) != 1)
    {
      sub_22BB58780(v5, qword_27D8E39F0, &qword_22BDC04D0);
    }
  }

  else
  {
    (*(*(v8 - 8) + 32))(v7, v5, v8);
    sub_22BB336D0(v7, 0, 1, v8);
  }

  if (sub_22BB3AA28(v7, 1, v8) == 1)
  {
    sub_22BB58780(v7, qword_27D8E39F0, &qword_22BDC04D0);
    LOBYTE(a1) = 0;
  }

  else
  {
    v9 = sub_22BDBA714();
    v11 = v10;
    (*(*(v8 - 8) + 8))(v7, v8);
    if (a1)
    {
      sub_22BC8FC98(a1);
      LOBYTE(a1) = sub_22BC1E3F0(v9, v11, v12);
    }
  }

  return a1 & 1;
}

uint64_t sub_22BC8F7B8(uint64_t a1)
{
  v77 = sub_22BDB6094();
  sub_22BB30444();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  sub_22BB30574();
  v7 = v6 - v5;
  v8 = sub_22BDB6174();
  sub_22BB30444();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  sub_22BB30560();
  v65 = v12;
  sub_22BB30B70();
  MEMORY[0x28223BE20](v13);
  v76 = &v61 - v14;
  v15 = sub_22BBE6DE0(&qword_27D8E2668, &unk_22BDBCCD0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v61 - v16;
  v78 = sub_22BDBA594();
  sub_22BB30444();
  v19 = v18;
  MEMORY[0x28223BE20](v20);
  sub_22BB30574();
  v64 = (v22 - v21);
  sub_22BB2F120();
  sub_22BDB92A4();
  sub_22BB30444();
  MEMORY[0x28223BE20](v23);
  sub_22BB30574();
  v28 = v27 - v26;
  v29 = *(a1 + 16);
  if (v29)
  {
    v74 = v8;
    v75 = v7;
    v31 = *(v25 + 16);
    v30 = v25 + 16;
    v32 = a1 + ((*(v30 + 64) + 32) & ~*(v30 + 64));
    v71 = *(v30 + 56);
    v72 = v31;
    v33 = (v10 + 8);
    v70 = v3 + 88;
    v69 = *MEMORY[0x277D1EB18];
    v67 = v3 + 8;
    v68 = v30 - 8;
    v62 = v19;
    v63 = (v19 + 32);
    v66 = MEMORY[0x277D84F90];
    v34 = v24;
    v73 = v30;
    while (1)
    {
      v72(v28, v32, v34);
      v35 = v76;
      sub_22BDB9294();
      sub_22BDB6164();
      v36 = *v33;
      v37 = v35;
      v38 = v34;
      v39 = v74;
      (*v33)(v37, v74);
      v40 = sub_22BB3722C();
      v41 = v77;
      v43 = v42(v40, v77);
      if (v43 == v69)
      {
        v44 = sub_22BB3722C();
        v45(v44, v41);
        v46 = v65;
        sub_22BDB9294();
        sub_22BDB6154();
        v36(v46, v39);
        v47 = sub_22BB30CAC();
        v48(v47);
        v34 = v38;
        if (sub_22BB3AA28(v17, 1, v78) != 1)
        {
          v49 = *v63;
          (*v63)(v64, v17, v78);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_22BB305BC();
            sub_22BD8EBF4();
            v66 = v58;
          }

          v51 = *(v66 + 16);
          v50 = *(v66 + 24);
          v52 = v62;
          if (v51 >= v50 >> 1)
          {
            sub_22BB2F158(v50);
            sub_22BD8EBF4();
            v52 = v62;
            v66 = v59;
          }

          v53 = v66;
          *(v66 + 16) = v51 + 1;
          v49(v53 + ((*(v52 + 80) + 32) & ~*(v52 + 80)) + *(v52 + 72) * v51, v64, v78);
          goto LABEL_12;
        }
      }

      else
      {
        v54 = sub_22BB30CAC();
        v55(v54);
        v56 = sub_22BB3722C();
        v57(v56, v41);
        sub_22BB336D0(v17, 1, 1, v78);
        v34 = v38;
      }

      sub_22BB58780(v17, &qword_27D8E2668, &unk_22BDBCCD0);
LABEL_12:
      v32 += v71;
      if (!--v29)
      {
        return v66;
      }
    }
  }

  return MEMORY[0x277D84F90];
}

void sub_22BC8FC98(uint64_t a1)
{
  v74 = sub_22BDBA4D4();
  sub_22BB30444();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  sub_22BB30574();
  v73 = v6 - v5;
  v7 = sub_22BBE6DE0(&qword_27D8E2668, &unk_22BDBCCD0);
  MEMORY[0x28223BE20](v7 - 8);
  v87 = &v68 - v8;
  sub_22BB2F120();
  v83 = sub_22BDBA514();
  sub_22BB30444();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  sub_22BB30560();
  v82 = v12;
  sub_22BB30B70();
  MEMORY[0x28223BE20](v13);
  v81 = &v68 - v14;
  sub_22BB2F120();
  v15 = sub_22BDB6094();
  sub_22BB30444();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  sub_22BB30574();
  v21 = v20 - v19;
  v92 = sub_22BDB6174();
  sub_22BB30444();
  MEMORY[0x28223BE20](v22);
  v86 = &v68 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22BB30B70();
  MEMORY[0x28223BE20](v24);
  v26 = &v68 - v25;
  v27 = 0;
  v28 = *(a1 + 16);
  v90 = a1;
  v91 = (v29 + 8);
  v30 = (v17 + 88);
  v89 = *MEMORY[0x277D1EAB8];
  v88 = (v17 + 8);
  v84 = *MEMORY[0x277D72A58];
  v78 = v10 + 88;
  v79 = (v10 + 16);
  v77 = *MEMORY[0x277D72970];
  v76 = (v10 + 8);
  v72 = v10 + 96;
  v71 = (v3 + 32);
  v70 = (v3 + 8);
  v75 = MEMORY[0x277D84F90];
  v80 = v15;
  v85 = (v17 + 88);
  while (1)
  {
    if (v28 == v27)
    {
      sub_22BD1D0F4(v75);
      return;
    }

    if (v27 >= v28)
    {
      break;
    }

    sub_22BDB92A4();
    v31 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      goto LABEL_21;
    }

    sub_22BDB9294();
    sub_22BDB6164();
    v32 = *v91;
    (*v91)(v26, v92);
    v33 = (*v30)(v21, v15);
    (*v88)(v21, v15);
    if (v33 == v89)
    {
      v34 = v28;
      v35 = v86;
      sub_22BDB9294();
      v36 = v87;
      sub_22BDB6154();
      v32(v35, v92);
      v37 = sub_22BDBA594();
      if (sub_22BB3AA28(v36, 1, v37) == 1)
      {
        sub_22BB58780(v36, &qword_27D8E2668, &unk_22BDBCCD0);
        v28 = v34;
LABEL_12:
        v30 = v85;
        goto LABEL_13;
      }

      v38 = sub_22BB34278();
      v40 = v39(v38);
      v28 = v34;
      if (v40 != v84)
      {
        v53 = sub_22BB34278();
        v54(v53);
        goto LABEL_12;
      }

      v41 = sub_22BB34278();
      v42(v41);
      v43 = swift_projectBox();
      v44 = *v79;
      v45 = v81;
      v46 = v83;
      (*v79)(v81, v43, v83);

      v47 = v82;
      v44(v82, v45, v46);
      v48 = v47;
      v49 = sub_22BB31F1C();
      v51 = v50(v49, v46);
      v30 = v85;
      if (v51 != v77)
      {
        v52 = *v76;
        (*v76)(v45, v46);
        v52(v48, v46);
        v15 = v80;
        goto LABEL_13;
      }

      v55 = sub_22BB3722C();
      v56(v55, v46);
      v57 = v73;
      v58 = v74;
      (*v71)(v73, v47, v74);
      v59 = sub_22BDBA4C4();
      v69 = v60;
      (*v70)(v57, v58);
      (*v76)(v45, v46);
      v61 = v75;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_22BB305BC();
        sub_22BB8C414();
        v61 = v66;
      }

      v15 = v80;
      v63 = *(v61 + 16);
      v62 = *(v61 + 24);
      if (v63 >= v62 >> 1)
      {
        sub_22BB2F158(v62);
        sub_22BB8C414();
        v61 = v67;
      }

      *(v61 + 16) = v63 + 1;
      v75 = v61;
      v64 = v61 + 16 * v63;
      v65 = v69;
      *(v64 + 32) = v59;
      *(v64 + 40) = v65;
      v27 = v31;
    }

    else
    {
LABEL_13:
      ++v27;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
}

uint64_t sub_22BC90370(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BBE6DE0(&qword_27D8E3038, &qword_22BDBDAD0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t *sub_22BC903E0(uint64_t a1, uint64_t a2)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v6 = ((1 << v4) + 63) >> 6;

  if (v5 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x28223BE20](isStackAllocationSafe);
    v8 = (v12 - ((8 * v6 + 15) & 0x3FFFFFFFFFFFFFF0));
    sub_22BBC0B54(0, v6, v8);
    v9 = sub_22BC90638(v8, v6, a2, a1);
  }

  else
  {
    v11 = swift_slowAlloc();

    v9 = sub_22BC905A8(v11, v6, a2, a1);

    MEMORY[0x2318A6080](v11, -1, -1);
  }

  return v9;
}

unint64_t *sub_22BC905A8(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
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

    v8 = sub_22BC90638(v7, a2, a3, a4);

    return v8;
  }

  return result;
}

unint64_t *sub_22BC90638(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v52 = result;
  if (*(a4 + 16) >= *(a3 + 16))
  {
    v53 = 0;
    v28 = 0;
    v29 = 1 << *(a3 + 32);
    if (v29 < 64)
    {
      v30 = ~(-1 << v29);
    }

    else
    {
      v30 = -1;
    }

    v31 = v30 & *(a3 + 56);
    v32 = (v29 + 63) >> 6;
    v33 = a4 + 56;
LABEL_28:
    while (v31)
    {
      v34 = __clz(__rbit64(v31));
      v51 = (v31 - 1) & v31;
LABEL_35:
      v49 = v34 | (v28 << 6);
      v37 = (*(v5 + 48) + 16 * v49);
      v39 = *v37;
      v38 = v37[1];
      sub_22BDBB814();

      sub_22BDBAC54();
      v40 = sub_22BDBB834();
      v41 = ~(-1 << *(v4 + 32));
      do
      {
        v42 = v40 & v41;
        if (((*(v33 + (((v40 & v41) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v40 & v41)) & 1) == 0)
        {

          v4 = a4;
          v31 = v51;
          goto LABEL_28;
        }

        v43 = (*(a4 + 48) + 16 * v42);
        if (*v43 == v39 && v43[1] == v38)
        {
          break;
        }

        v45 = sub_22BDBB6D4();
        v40 = v42 + 1;
      }

      while ((v45 & 1) == 0);

      *(v52 + ((v49 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v49;
      v27 = __OFADD__(v53++, 1);
      v4 = a4;
      v31 = v51;
      if (v27)
      {
        goto LABEL_50;
      }
    }

    v35 = v28;
    while (1)
    {
      v28 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      if (v28 >= v32)
      {
LABEL_46:

        return sub_22BC9D7C8(v52, a2, v53, v5);
      }

      v36 = *(v5 + 56 + 8 * v28);
      ++v35;
      if (v36)
      {
        v34 = __clz(__rbit64(v36));
        v51 = (v36 - 1) & v36;
        goto LABEL_35;
      }
    }
  }

  else
  {
    v53 = 0;
    v6 = 0;
    v46 = a4 + 56;
    v7 = 1 << *(a4 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(a4 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = a3 + 56;
    v48 = v10;
LABEL_6:
    while (v9)
    {
      v12 = __clz(__rbit64(v9));
      v50 = (v9 - 1) & v9;
LABEL_13:
      v15 = (*(v4 + 48) + 16 * (v12 | (v6 << 6)));
      v17 = *v15;
      v16 = v15[1];
      sub_22BDBB814();

      sub_22BDBAC54();
      v18 = sub_22BDBB834();
      v19 = v5;
      v20 = ~(-1 << *(v5 + 32));
      do
      {
        v21 = v18 & v20;
        v22 = (v18 & v20) >> 6;
        v23 = 1 << (v18 & v20);
        if ((v23 & *(v11 + 8 * v22)) == 0)
        {

          v5 = v19;
          v4 = a4;
          v10 = v48;
          v9 = v50;
          goto LABEL_6;
        }

        v24 = (*(v19 + 48) + 16 * v21);
        if (*v24 == v17 && v24[1] == v16)
        {
          break;
        }

        v26 = sub_22BDBB6D4();
        v18 = v21 + 1;
      }

      while ((v26 & 1) == 0);

      v9 = v50;
      v52[v22] |= v23;
      v27 = __OFADD__(v53++, 1);
      v5 = v19;
      v4 = a4;
      v10 = v48;
      if (v27)
      {
        goto LABEL_49;
      }
    }

    v13 = v6;
    while (1)
    {
      v6 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v6 >= v10)
      {
        goto LABEL_46;
      }

      v14 = *(v46 + 8 * v6);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v50 = (v14 - 1) & v14;
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
  return result;
}

void sub_22BC909DC(uint64_t a1)
{
  sub_22BDB8E14();
  if (v1 <= 0x3F)
  {
    sub_22BC9D1E8(319, &qword_281428A60, MEMORY[0x277D1E5C0]);
    if (v2 <= 0x3F)
    {
      sub_22BC9D1E8(319, qword_28142D9D8, type metadata accessor for ResultResponse);
      if (v3 <= 0x3F)
      {
        sub_22BC9D1E8(319, qword_28142A4F8, type metadata accessor for FollowUpActionRequest);
        if (v4 <= 0x3F)
        {
          swift_checkMetadataState();
          if (v5 <= 0x3F)
          {
            sub_22BDB43E4();
            if (v6 <= 0x3F)
            {
              swift_initClassMetadata2();
            }
          }
        }
      }
    }
  }
}

void sub_22BC90C1C()
{
  sub_22BB30F94();
  v1 = v0;
  v3 = v2;
  v4 = sub_22BDBA594();
  sub_22BB30444();
  v68 = v5;
  MEMORY[0x28223BE20](v6);
  sub_22BB30C74();
  v9 = v7 - v8;
  MEMORY[0x28223BE20](v10);
  sub_22BB2F39C();
  v67 = v11;
  v12 = sub_22BBE6DE0(&qword_27D8E27D8, &qword_22BDC0640);
  v13 = sub_22BB2F0C8(v12);
  MEMORY[0x28223BE20](v13);
  sub_22BB30C74();
  MEMORY[0x28223BE20](v14);
  v63 = v1;
  if (v3 == v1 || *(v3 + 16) != *(v63 + 16))
  {
LABEL_20:
    sub_22BB314EC();
  }

  else
  {
    v61 = (&v57 - v15);
    v62 = v16;
    v60 = v9;
    v17 = 0;
    v58 = v3;
    v18 = *(v3 + 64);
    v57 = v3 + 64;
    v19 = 1 << *(v3 + 32);
    v20 = -1;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    v21 = v20 & v18;
    v22 = (v19 + 63) >> 6;
    v64 = v68 + 16;
    v65 = (v68 + 32);
    v59 = (v68 + 8);
    while (1)
    {
      v23 = v62;
      if (!v21)
      {
        break;
      }

      v66 = (v21 - 1) & v21;
      v24 = __clz(__rbit64(v21)) | (v17 << 6);
LABEL_12:
      v27 = (*(v58 + 48) + 16 * v24);
      v28 = *v27;
      v29 = v27[1];
      v31 = v67;
      v30 = v68;
      (*(v68 + 16))(v67, *(v58 + 56) + *(v68 + 72) * v24, v4);
      v32 = sub_22BBE6DE0(&qword_27D8E27E8, &qword_22BDBF4C0);
      v33 = *(v32 + 48);
      *v23 = v28;
      *(v23 + 1) = v29;
      (*(v30 + 32))(&v23[v33], v31, v4);
      sub_22BB331C8();
      sub_22BB336D0(v34, v35, v36, v32);

LABEL_13:
      v37 = v61;
      sub_22BB6BEE0(v23, v61, &qword_27D8E27D8, &qword_22BDC0640);
      v38 = sub_22BBE6DE0(&qword_27D8E27E8, &qword_22BDBF4C0);
      v39 = sub_22BB36B68();
      if (sub_22BB3AA28(v39, v40, v38) == 1)
      {
        goto LABEL_20;
      }

      v41 = *(v38 + 48);
      v43 = *v37;
      v42 = v37[1];
      v44 = v63;
      v45 = v60;
      (*v65)(v60, v37 + v41, v4);
      v46 = sub_22BD8446C(v43, v42);
      v48 = v47;

      if ((v48 & 1) == 0)
      {
        (*v59)(v45, v4);
        goto LABEL_20;
      }

      v50 = v67;
      v49 = v68;
      (*(v68 + 16))(v67, *(v44 + 56) + *(v68 + 72) * v46, v4);
      sub_22BC9D714(&qword_27D8E3168, MEMORY[0x277D72A78]);
      v51 = sub_22BDBABD4();
      v52 = *(v49 + 8);
      v52(v50, v4);
      v52(v45, v4);
      v21 = v66;
      if ((v51 & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    while (1)
    {
      v25 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v25 >= v22)
      {
        sub_22BBE6DE0(&qword_27D8E27E8, &qword_22BDBF4C0);
        sub_22BB30B28();
        sub_22BB336D0(v53, v54, v55, v56);
        v66 = 0;
        goto LABEL_13;
      }

      v26 = *(v57 + 8 * v25);
      ++v17;
      if (v26)
      {
        v66 = (v26 - 1) & v26;
        v24 = __clz(__rbit64(v26)) | (v25 << 6);
        v17 = v25;
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

uint64_t sub_22BC9106C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BDB9504();
  v59 = *(v4 - 8);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v58 = &v48 - v8;
  v9 = sub_22BBE6DE0(&qword_27D8E3040, &qword_22BDBDAD8);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  result = MEMORY[0x28223BE20](v10);
  v54 = a2;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(v54 + 16))
  {
    return 0;
  }

  v52 = (&v48 - v12);
  v53 = v13;
  v51 = v7;
  v14 = 0;
  v49 = a1;
  v15 = *(a1 + 64);
  v48 = a1 + 64;
  v16 = 1 << *(a1 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & v15;
  v19 = (v16 + 63) >> 6;
  v55 = v59 + 16;
  v56 = (v59 + 32);
  v50 = (v59 + 8);
  while (1)
  {
    v20 = v53;
    if (!v18)
    {
      break;
    }

    v57 = (v18 - 1) & v18;
    v21 = __clz(__rbit64(v18)) | (v14 << 6);
LABEL_12:
    v24 = (*(v49 + 48) + 16 * v21);
    v25 = *v24;
    v26 = v24[1];
    v28 = v58;
    v27 = v59;
    (*(v59 + 16))(v58, *(v49 + 56) + *(v59 + 72) * v21, v4);
    v29 = sub_22BBE6DE0(&qword_27D8E3060, &qword_22BDBDAF0);
    v30 = *(v29 + 48);
    *v20 = v25;
    *(v20 + 1) = v26;
    (*(v27 + 32))(&v20[v30], v28, v4);
    sub_22BB336D0(v20, 0, 1, v29);

LABEL_13:
    v31 = v52;
    sub_22BB6BEE0(v20, v52, &qword_27D8E3040, &qword_22BDBDAD8);
    v32 = sub_22BBE6DE0(&qword_27D8E3060, &qword_22BDBDAF0);
    v33 = sub_22BB3AA28(v31, 1, v32);
    v34 = v33 == 1;
    if (v33 == 1)
    {
      return v34;
    }

    v35 = *(v32 + 48);
    v37 = *v31;
    v36 = v31[1];
    v38 = v54;
    v39 = v51;
    (*v56)(v51, v31 + v35, v4);
    v40 = sub_22BD8446C(v37, v36);
    v42 = v41;

    if ((v42 & 1) == 0)
    {
      (*v50)(v39, v4);
      return 0;
    }

    v44 = v58;
    v43 = v59;
    (*(v59 + 16))(v58, *(v38 + 56) + *(v59 + 72) * v40, v4);
    sub_22BC9D714(qword_27D8E3AB0, MEMORY[0x277D1E5B0]);
    v45 = sub_22BDBABD4();
    v46 = *(v43 + 8);
    v46(v44, v4);
    result = (v46)(v39, v4);
    v18 = v57;
    if ((v45 & 1) == 0)
    {
      return v34;
    }
  }

  while (1)
  {
    v22 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v22 >= v19)
    {
      v47 = sub_22BBE6DE0(&qword_27D8E3060, &qword_22BDBDAF0);
      sub_22BB336D0(v20, 1, 1, v47);
      v57 = 0;
      goto LABEL_13;
    }

    v23 = *(v48 + 8 * v22);
    ++v14;
    if (v23)
    {
      v57 = (v23 - 1) & v23;
      v21 = __clz(__rbit64(v23)) | (v22 << 6);
      v14 = v22;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22BC91514(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v21 = result;
  if (v7)
  {
    while (2)
    {
      v9 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_13:
      v12 = (*(result + 48) + 16 * (v9 | (v3 << 6)));
      v14 = *v12;
      v13 = v12[1];
      sub_22BDBB814();

      sub_22BDBAC54();
      v15 = sub_22BDBB834();
      v16 = ~(-1 << *(a2 + 32));
      do
      {
        v17 = v15 & v16;
        if (((*(a2 + 56 + (((v15 & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v15 & v16)) & 1) == 0)
        {

          return 0;
        }

        v18 = (*(a2 + 48) + 16 * v17);
        if (*v18 == v14 && v18[1] == v13)
        {
          break;
        }

        v20 = sub_22BDBB6D4();
        v15 = v17 + 1;
      }

      while ((v20 & 1) == 0);

      result = v21;
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22BC916BC@<X0>(void (*a1)(char *, char *)@<X0>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X6>, uint64_t a5@<X8>)
{
  v24 = a4;
  v25 = a1;
  v26 = a3;
  v22 = *(a2 - 8);
  v23 = a2;
  v7 = MEMORY[0x28223BE20](a1);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v10 + 16);
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v7);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))(v17, v19);
  v20 = 1;
  if (sub_22BB3AA28(v17, 1, v11) != 1)
  {
    (*(v12 + 32))(v15, v17, v11);
    v25(v15, v9);
    (*(v12 + 8))(v15, v11);
    if (v5)
    {
      return (*(v22 + 32))(v24, v9, v23);
    }

    v20 = 0;
  }

  return sub_22BB336D0(a5, v20, 1, v26);
}

uint64_t sub_22BC91948(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v12 = swift_allocObject();
  a6(a1, a2, a3, a4, a5);
  return v12;
}

uint64_t sub_22BC919C8()
{
  sub_22BBDB89C();
  sub_22BB2F330();
  MEMORY[0x28223BE20](v1);
  sub_22BB30574();
  sub_22BB33230();
  sub_22BB33C64();
  v2 = sub_22BB2F324();
  sub_22BC9E554(v2, v3, v4);
  sub_22BB30AE4();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = 1;
  switch(EnumCaseMultiPayload)
  {
    case 1:

      v8 = *(sub_22BBE6DE0(&qword_27D8E3BA0, &unk_22BDC0840) + 48);
      sub_22BDB9504();
      sub_22BB31F70();
      (*(v9 + 8))(v0 + v8);
      result = 3;
      break;
    case 2:
      sub_22BC9D3D4(v0, type metadata accessor for DialogResponseError);
      result = 4;
      break;
    case 3:
      return result;
    default:
      sub_22BDB9504();
      sub_22BB31F70();
      (*(v7 + 8))(v0);
      result = 2;
      break;
  }

  return result;
}

void sub_22BC91B08()
{
  sub_22BB30F94();
  v1 = v0;
  v2 = sub_22BDB9504();
  sub_22BB30444();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  sub_22BB30574();
  v8 = v7 - v6;
  type metadata accessor for DialogResponseError(0);
  sub_22BB2F330();
  MEMORY[0x28223BE20](v9);
  sub_22BB30574();
  v12 = (v11 - v10);
  sub_22BB33C64();
  sub_22BC9E554(v1, v12, v13);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v26 = *v12;
      v27 = *(v12 + 1);
      v28 = sub_22BBE6DE0(&qword_27D8E3BA0, &unk_22BDC0840);
      (*(v4 + 32))(v8, &v12[*(v28 + 48)], v2);
      sub_22BBE6DE0(&qword_27D8E3370, &qword_22BDBF370);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_22BDBCBC0;
      *(inited + 32) = 7955819;
      *(inited + 40) = 0xE300000000000000;
      v30 = MEMORY[0x277D837D0];
      *(inited + 48) = v26;
      *(inited + 56) = v27;
      *(inited + 72) = v30;
      *(inited + 80) = 0x65756C6176;
      *(inited + 88) = 0xE500000000000000;
      *(inited + 120) = v2;
      sub_22BB8B8A0((inited + 96), v31, v32, v33, v34, v35, v36, v37);
      sub_22BC9F7D8();
      v38();
      goto LABEL_6;
    case 2u:
      v23 = *v12;
      v24 = *(v12 + 1);
      sub_22BBE6DE0(&qword_27D8E3370, &qword_22BDBF370);
      v25 = swift_initStackObject();
      *(v25 + 16) = xmmword_22BDBCBD0;
      strcpy((v25 + 32), "parameterKey");
      *(v25 + 45) = 0;
      *(v25 + 46) = -5120;
      *(v25 + 72) = MEMORY[0x277D837D0];
      *(v25 + 48) = v23;
      *(v25 + 56) = v24;
      goto LABEL_4;
    case 3u:
LABEL_4:
      sub_22BDBAB14();
      break;
    default:
      (*(v4 + 32))(v8, v12, v2);
      sub_22BBE6DE0(&qword_27D8E3370, &qword_22BDBF370);
      v14 = swift_initStackObject();
      *(v14 + 16) = xmmword_22BDBCBD0;
      *(v14 + 32) = 0x65756C6176;
      *(v14 + 40) = 0xE500000000000000;
      *(v14 + 72) = v2;
      sub_22BB8B8A0((v14 + 48), v15, v16, v17, v18, v19, v20, v21);
      sub_22BC9F7D8();
      v22();
LABEL_6:
      sub_22BDBAB14();
      (*(v4 + 8))(v8, v2);
      break;
  }

  sub_22BB314EC();
}

void sub_22BC91E54()
{
  sub_22BB30F94();
  v2 = v1;
  v4 = v3;
  sub_22BDB9504();
  sub_22BB30444();
  v61 = v5;
  v62 = v6;
  MEMORY[0x28223BE20](v5);
  sub_22BB30C74();
  v59 = (v7 - v8);
  sub_22BB30B70();
  MEMORY[0x28223BE20](v9);
  v60 = &v59 - v10;
  sub_22BB30B70();
  MEMORY[0x28223BE20](v11);
  v13 = &v59 - v12;
  type metadata accessor for DialogResponseError(0);
  sub_22BB2F330();
  MEMORY[0x28223BE20](v14);
  sub_22BB30C74();
  v17 = (v15 - v16);
  v19 = MEMORY[0x28223BE20](v18);
  v21 = &v59 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v59 - v22;
  v24 = sub_22BBE6DE0(&qword_27D8E3B98, &qword_22BDC0838);
  sub_22BB2F0C8(v24);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v25);
  sub_22BB33230();
  v27 = (v0 + *(v26 + 56));
  sub_22BC9E554(v4, v0, type metadata accessor for DialogResponseError);
  sub_22BC9E554(v2, v27, type metadata accessor for DialogResponseError);
  sub_22BB33728();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_22BB33C64();
      sub_22BC9E554(v0, v21, v37);
      v39 = *v21;
      v38 = *(v21 + 1);
      v40 = *(sub_22BBE6DE0(&qword_27D8E3BA0, &unk_22BDC0840) + 48);
      if (sub_22BB32E10() != 1)
      {
        (*(v62 + 8))(&v21[v40], v61);
        goto LABEL_21;
      }

      v42 = *v27;
      v41 = v27[1];
      v43 = *(v62 + 32);
      v44 = &v21[v40];
      v45 = v61;
      v43(v60, v44, v61);
      v46 = v27 + v40;
      v47 = v59;
      v43(v59, v46, v45);
      if (v39 == v42 && v38 == v41)
      {
      }

      else
      {
        v49 = sub_22BDBB6D4();

        if ((v49 & 1) == 0)
        {
          v50 = *(v62 + 8);
          v50(v47, v45);
          v50(v60, v45);
          goto LABEL_27;
        }
      }

      v57 = v60;
      sub_22BB39744();
      sub_22BDB94D4();
      v58 = *(v62 + 8);
      v58(v47, v45);
      v58(v57, v45);
      goto LABEL_27;
    case 2u:
      sub_22BB33C64();
      v31 = sub_22BB30AE4();
      sub_22BC9E554(v31, v32, v33);
      v35 = *v17;
      v34 = v17[1];
      if (sub_22BB32E10() != 2)
      {
LABEL_21:

        goto LABEL_22;
      }

      if (v35 != *v27 || v34 != v27[1])
      {
        sub_22BDBB6D4();
      }

      goto LABEL_27;
    case 3u:
      if (sub_22BB32E10() == 3)
      {
        goto LABEL_27;
      }

      goto LABEL_22;
    default:
      sub_22BB33C64();
      v28 = sub_22BB31F54();
      sub_22BC9E554(v28, v29, v30);
      if (sub_22BB32E10())
      {
        (*(v62 + 8))(v23, v61);
LABEL_22:
        sub_22BB325EC(v0, &qword_27D8E3B98, &qword_22BDC0838);
      }

      else
      {
        v51 = v61;
        v52 = v62;
        v53 = sub_22BB32E04();
        v54(v53);
        sub_22BDB94D4();
        v55 = *(v52 + 8);
        v55(v13, v51);
        v56 = sub_22BB345A8();
        (v55)(v56);
LABEL_27:
        sub_22BB361E4();
      }

      sub_22BB314EC();
      return;
  }
}

uint64_t sub_22BC922EC(uint64_t a1)
{
  v2 = sub_22BC9D714(&qword_27D8E3B88, type metadata accessor for DialogResponseError);

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_22BC92358(uint64_t a1)
{
  v2 = sub_22BC9D714(&qword_27D8E3B88, type metadata accessor for DialogResponseError);

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_22BC92420(uint64_t a1)
{
  v2 = sub_22BC9F768();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_22BC9245C(uint64_t a1)
{
  v2 = sub_22BC9F768();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_22BC924F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for ToolExecutionEvent(255, *(*v5 + 80), *(*v5 + 96), a4);
  sub_22BB36A38();
  v7 = sub_22BDBB254();
  sub_22BB30444();
  v9 = v8;
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v10);
  sub_22BB33230();

  sub_22BC926B8(v11, v4);

  v12 = sub_22BB36B68();
  if (sub_22BB3AA28(v12, v13, v6) == 1)
  {
    (*(v9 + 8))(v4, v7);
  }

  else
  {
    sub_22BB30AE4();
    if (swift_getEnumCaseMultiPayload() == 7)
    {
      v14 = *(v4 + 16);

      v15 = sub_22BBE6DE0(&qword_27D8E2EA0, &unk_22BDC05E0);
      v16 = v15[12];
      sub_22BB37CAC(v15[16]);

      sub_22BB37CAC(v15[20]);

      sub_22BB37CAC(v15[24]);

      sub_22BB325EC(v4 + v16, &qword_27D8E2928, &qword_22BDBCFA0);
      return 1;
    }

    sub_22BB30474();
    v18 = sub_22BB30AE4();
    v19(v18);
  }

  return 0;
}

uint64_t sub_22BC926B8@<X0>(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = type metadata accessor for ToolExecutionEvent(255, *(*v2 + 80), *(*v2 + 96), a1);
  v6 = sub_22BDBB254();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v13 - v8;
  v10 = *(v4 + 112);
  swift_beginAccess();
  (*(v7 + 16))(v9, v2 + v10, v6);
  sub_22BC916BC(sub_22BC9D428, MEMORY[0x277D84A98], v5, v11, a2);
  return (*(v7 + 8))(v9, v6);
}

void sub_22BC92848()
{
  sub_22BB30F94();
  v1 = v0;
  v42 = v2;
  v43 = v3;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = *v0;
  v11 = sub_22BBE6DE0(&qword_27D8E3A80, &qword_22BDC0608);
  sub_22BB2F0C8(v11);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v12);
  v14 = &v41 - v13;
  swift_defaultActor_initialize();
  v15 = qword_28142F458;
  v16 = sub_22BDB9564();
  sub_22BB30B28();
  sub_22BB336D0(v17, v18, v19, v16);
  v0[qword_28142F460] = 0;
  v20 = qword_28142DAB0;
  v44 = *(v10 + 80);
  v41 = *(v10 + 88);
  *&v0[v20] = sub_22BC9F7EC(v41);
  type metadata accessor for ResultResponse(0);
  sub_22BB30B28();
  sub_22BB336D0(v21, v22, v23, v24);
  type metadata accessor for FollowUpActionRequest(0);
  sub_22BB30B28();
  sub_22BB336D0(v25, v26, v27, v28);
  v29 = qword_28142DA98;
  sub_22BDB8E14();
  sub_22BB2F330();
  (*(v30 + 32))(&v1[v29], v9);
  sub_22BB30B28();
  sub_22BB336D0(v31, v32, v33, v16);
  sub_22BB3B574(&v1[v15], &v44);
  sub_22BB385F4(v14, &v1[v15], &qword_27D8E3A80, &qword_22BDC0608);
  swift_endAccess();
  sub_22BB34070();
  sub_22BB3E388();
  (*(v34 + 32))(&v1[v35], v7);
  sub_22BB34070();
  v1[*(v36 + 176)] = v5;
  sub_22BB34070();
  v38 = *(v37 + 184);
  sub_22BDB43E4();
  sub_22BB2F330();
  (*(v39 + 32))(&v1[v38], v42);
  sub_22BB34070();
  sub_22BB95B48(*(v40 + 192));
  sub_22BB314EC();
}

void sub_22BC92ADC()
{
  sub_22BB30F94();
  v1 = v0;
  v49 = v2;
  v50 = v3;
  v48 = v4;
  v46 = v5;
  v47 = v6;
  v7 = *v0;
  v8 = sub_22BBE6DE0(&qword_27D8E3A80, &qword_22BDC0608);
  sub_22BB2F0C8(v8);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v9);
  v11 = &v45 - v10;
  v12 = sub_22BDB8E14();
  sub_22BB30444();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  sub_22BB30574();
  v18 = v17 - v16;
  swift_defaultActor_initialize();
  v19 = qword_28142F458;
  v20 = sub_22BDB9564();
  sub_22BB30B28();
  sub_22BB336D0(v21, v22, v23, v20);
  v0[qword_28142F460] = 0;
  v24 = qword_28142DAB0;
  v51 = *(v7 + 80);
  v45 = *(v7 + 88);
  *&v0[v24] = sub_22BC9F7EC(v45);
  type metadata accessor for ResultResponse(0);
  sub_22BB30B28();
  sub_22BB336D0(v25, v26, v27, v28);
  type metadata accessor for FollowUpActionRequest(0);
  sub_22BB30B28();
  sub_22BB336D0(v29, v30, v31, v32);
  v33 = v46;
  sub_22BDB9544();
  (*(v14 + 32))(&v1[qword_28142DA98], v18, v12);
  sub_22BB30474();
  (*(v34 + 32))(v11, v33, v20);
  sub_22BB331C8();
  sub_22BB336D0(v35, v36, v37, v20);
  sub_22BB3B574(&v1[v19], &v51);
  sub_22BB385F4(v11, &v1[v19], &qword_27D8E3A80, &qword_22BDC0608);
  swift_endAccess();
  sub_22BB34070();
  sub_22BB3E388();
  (*(v38 + 32))(&v1[v39], v47);
  sub_22BB34070();
  v1[*(v40 + 176)] = v48;
  sub_22BB34070();
  v42 = *(v41 + 184);
  sub_22BDB43E4();
  sub_22BB2F330();
  (*(v43 + 32))(&v1[v42], v49);
  sub_22BB34070();
  sub_22BB95B48(*(v44 + 192));
  sub_22BB314EC();
}

uint64_t sub_22BC92DF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _OWORD *a6@<X8>)
{
  v119 = a6;
  v117 = a3;
  v118 = a5;
  v11 = sub_22BBE6DE0(&qword_27D8E2928, &qword_22BDBCFA0);
  sub_22BB2F0C8(v11);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v12);
  sub_22BB334AC();
  v13 = sub_22BDBA594();
  sub_22BB30444();
  *&v116 = v14;
  MEMORY[0x28223BE20](v15);
  sub_22BB30574();
  sub_22BB33230();
  v16 = sub_22BDBA5C4();
  sub_22BB30444();
  *&v115 = v17;
  MEMORY[0x28223BE20](v18);
  sub_22BB30574();
  v21 = (v20 - v19);
  v120 = a2;
  v121 = a4;
  v23 = type metadata accessor for ToolExecutionEvent(0, a2, a4, v22);
  sub_22BB30444();
  v25 = v24;
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v26);
  v28 = &v109 - v27;
  (*(v25 + 16))(&v109 - v27, a1, v23);
  sub_22BB2F12C();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
    case 2u:
      v74 = sub_22BB3A5E0();
      v75(v74);
      sub_22BBC96CC();
      v76 = v119;
      v77 = v115;
      *v119 = v116;
      v76[1] = v77;
      *(v76 + 4) = v6;
      *(v76 + 5) = v25;
      sub_22BB30740();
      return swift_storeEnumTagMultiPayload();
    case 3u:
      v54 = sub_22BB3A5E0();
      v55(v54);
      v56 = *(v28 + 4);
      v57 = sub_22BBE6DE0(&qword_27D8E2EE0, &qword_22BDBD750);
      v58 = v57[16];
      v59 = &v28[v57[20]];
      v60 = *v59;
      v61 = *(v59 + 1);
      sub_22BB3B0A8(v57[24]);
      v62 = *(v28 + 1);
      v116 = *v28;
      v114 = v62;

      v63 = *(v115 + 32);
      v63(v21, &v28[v58], v16);
      v64 = sub_22BBE6DE0(&qword_27D8E3058, &qword_22BDBDAE8);
      v65 = *(v64 + 64);
      v66 = v119;
      v67 = (v119 + *(v64 + 80));
      v68 = v114;
      *v119 = v116;
      v66[1] = v68;
      *(v66 + 4) = v56;
      v63(v66 + v65, v21, v16);
      *v67 = v60;
      v67[1] = v61;
      sub_22BB30740();
      return swift_storeEnumTagMultiPayload();
    case 4u:
      v69 = sub_22BB3A5E0();
      v70(v69);
      v71 = sub_22BBE6DE0(&qword_27D8E2EC8, &qword_22BDBD730);
      sub_22BB3B0A8(*(v71 + 48));

      sub_22BC9D54C(v28, v119, type metadata accessor for ActionConfirmationDialogRequest);
      sub_22BB30740();
      return swift_storeEnumTagMultiPayload();
    case 5u:
      v32 = sub_22BB3A5E0();
      v33(v32);
      v113 = *(v28 + 4);
      v34 = sub_22BBE6DE0(&qword_27D8E2EC0, &qword_22BDBD720);
      v35 = v34[16];
      v36 = v34[20];
      v37 = &v28[v34[24]];
      v39 = *v37;
      v38 = *(v37 + 1);
      *&v115 = v39;
      *&v114 = v38;
      v40 = &v28[v34[28]];
      v41 = *v40;
      v111 = *(v40 + 1);
      v112 = v41;
      sub_22BB3B0A8(v34[32]);
      v42 = *(v28 + 1);
      v110 = *v28;
      v109 = v42;

      v43 = *(v116 + 32);
      v43(v6, &v28[v35], v13);
      sub_22BB6BEE0(&v28[v36], v7, &qword_27D8E2928, &qword_22BDBCFA0);
      v44 = sub_22BBE6DE0(&qword_27D8E3048, &unk_22BDC0630);
      v45 = v44[16];
      v46 = v44[20];
      v47 = v119;
      v48 = (v119 + v44[24]);
      v49 = (v119 + v44[28]);
      v50 = v109;
      *v119 = v110;
      v47[1] = v50;
      *(v47 + 4) = v113;
      v43(v47 + v45, v6, v13);
      sub_22BB6BEE0(v7, v47 + v46, &qword_27D8E2928, &qword_22BDBCFA0);
      v51 = v114;
      *v48 = v115;
      v48[1] = v51;
      v52 = v111;
      *v49 = v112;
      v49[1] = v52;
      sub_22BB30740();
      return swift_storeEnumTagMultiPayload();
    case 6u:
      v78 = sub_22BB3A5E0();
      v79(v78);
      v80 = *v28;
      v81 = *(v28 + 1);

      v82 = v119;
      *v119 = v80;
      *(v82 + 1) = v81;
      sub_22BB30740();
      return swift_storeEnumTagMultiPayload();
    case 7u:
      v83 = sub_22BB3A5E0();
      v84(v83);
      v116 = *v28;
      v85 = *(v28 + 2);
      v86 = sub_22BBE6DE0(&qword_27D8E2EA0, &unk_22BDC05E0);
      v87 = v86[12];
      v88 = &v28[v86[16]];
      v89 = *v88;
      v90 = *(v88 + 1);
      v91 = &v28[v86[20]];
      v92 = *v91;
      v93 = *(v91 + 1);
      sub_22BB3B0A8(v86[24]);

      v94 = type metadata accessor for ActionConfirmationDialogRequest(0);
      v95 = v119;
      sub_22BB6BEE0(&v28[v87], v119 + v94[5], &qword_27D8E2928, &qword_22BDBCFA0);
      sub_22BDB54C4();
      sub_22BB30B28();
      sub_22BB336D0(v96, v97, v98, v99);
      *v95 = v116;
      *(v95 + 2) = v85;
      v100 = (v95 + v94[6]);
      *v100 = v89;
      v100[1] = v90;
      v101 = (v95 + v94[7]);
      *v101 = v92;
      v101[1] = v93;
      *(v95 + v94[9]) = 1;
      *(v95 + v94[10]) = 0;
      sub_22BB30740();
      return swift_storeEnumTagMultiPayload();
    case 8u:
      v72 = sub_22BBE6DE0(&qword_27D8E2E90, &qword_22BDBD6D0);
      sub_22BB3B0A8(*(v72 + 48));

      sub_22BB3650C();
      sub_22BC9D3D4(v28, v73);
      goto LABEL_13;
    case 9u:
      v103 = *(v28 + 2);

      v104 = sub_22BBE6DE0(&qword_27D8E2EB8, &qword_22BDBD710);
      v105 = *(v104 + 48);
      sub_22BB3B0A8(*(v104 + 64));

      sub_22BB325EC(&v28[v105], &qword_27D8E2928, &qword_22BDBCFA0);
      goto LABEL_13;
    case 0xBu:
      type metadata accessor for TypedValueExecutionResult(0, v120, v121, v29);
      sub_22BB31F70();
      (*(v53 + 8))(v28);
      goto LABEL_13;
    default:
      v30 = sub_22BB2F12C();
      v31(v30);
LABEL_13:
      sub_22BC9D758();
      sub_22BB369E0();
      swift_allocError();
      *v106 = 2;
      swift_willThrow();
      v107 = sub_22BB3A5E0();
      return v108(v107);
  }
}

uint64_t sub_22BC93528(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[39] = a4;
  v5[40] = v4;
  v5[37] = a2;
  v5[38] = a3;
  v5[36] = a1;
  v6 = sub_22BBE6DE0(&qword_27D8E2B40, &unk_22BDBD9B0);
  v5[41] = v6;
  sub_22BB2F0C8(v6);
  v5[42] = sub_22BB30ACC();
  v7 = sub_22BDBA874();
  v5[43] = v7;
  sub_22BB30434(v7);
  v5[44] = v8;
  v5[45] = sub_22BB30ACC();
  v9 = type metadata accessor for FollowUpActionRequest(0);
  v5[46] = v9;
  sub_22BB2F0C8(v9);
  v5[47] = sub_22BB30ACC();
  v10 = sub_22BDB97C4();
  v5[48] = v10;
  sub_22BB30434(v10);
  v5[49] = v11;
  v5[50] = sub_22BB30ACC();
  v12 = sub_22BDBA134();
  v5[51] = v12;
  sub_22BB30434(v12);
  v5[52] = v13;
  v5[53] = sub_22BB30ACC();
  v14 = sub_22BBE6DE0(&qword_27D8E2530, &qword_22BDBCBF0);
  v5[54] = v14;
  sub_22BB2F0C8(v14);
  v5[55] = sub_22BBB79B0();
  v5[56] = swift_task_alloc();
  v15 = sub_22BBE6DE0(&qword_27D8E2928, &qword_22BDBCFA0);
  sub_22BB2F0C8(v15);
  v5[57] = sub_22BB30ACC();
  v16 = sub_22BDBA084();
  v5[58] = v16;
  sub_22BB30434(v16);
  v5[59] = v17;
  v5[60] = sub_22BB30ACC();
  sub_22BB36F5C();
  v5[61] = *(v18 + 80);
  sub_22BB36F5C();
  v20 = *(v19 + 96);
  v5[62] = v20;
  v21 = sub_22BB36A38();
  v24 = type metadata accessor for TypedValueExecutionResult(v21, v22, v20, v23);
  v5[63] = v24;
  sub_22BB30434(v24);
  v5[64] = v25;
  v5[65] = sub_22BB30ACC();
  v26 = sub_22BDB77D4();
  v5[66] = v26;
  sub_22BB30434(v26);
  v5[67] = v27;
  v5[68] = swift_task_alloc();
  v5[69] = swift_task_alloc();
  v5[70] = swift_task_alloc();
  v5[71] = swift_task_alloc();
  v5[72] = swift_task_alloc();
  v28 = sub_22BB36A38();
  v5[73] = type metadata accessor for ToolExecutionEvent(v28, v29, v20, v30);
  sub_22BB30444();
  v5[74] = v31;
  v5[75] = swift_task_alloc();
  v5[76] = swift_task_alloc();
  v5[77] = swift_task_alloc();
  v5[78] = swift_task_alloc();
  v5[79] = swift_task_alloc();
  sub_22BB36F5C();
  v5[80] = *(v32 + 104);
  sub_22BB36F5C();
  v5[81] = *(v33 + 88);
  v34 = sub_22BB3E2CC();
  v5[82] = v34;
  sub_22BB30434(v34);
  v5[83] = v35;
  v5[84] = swift_task_alloc();
  v5[85] = swift_task_alloc();
  sub_22BB36A38();
  v36 = sub_22BDBB254();
  sub_22BB2F0C8(v36);
  v5[86] = sub_22BB30ACC();
  sub_22BB30418();
  v5[87] = v37;
  v5[88] = sub_22BB30ACC();
  v38 = sub_22BB3E2CC();
  v5[89] = v38;
  sub_22BB30434(v38);
  v5[90] = v39;
  v5[91] = sub_22BB30ACC();
  v40 = sub_22BB355F0();

  return MEMORY[0x2822009F8](v40, v41, v42);
}

uint64_t sub_22BC93A5C()
{
  v1 = *(v0 + 648);
  v2 = *(v0 + 640);
  v4 = *(v0 + 488);
  v3 = *(v0 + 496);
  v5 = *(v0 + 320);
  (*(*(v0 + 696) + 16))(*(v0 + 704), v5 + *(*v5 + 168), v1);
  sub_22BB2F0E0();
  sub_22BDBB054();
  *(v0 + 56) = v4;
  *(v0 + 64) = v1;
  *(v0 + 72) = v3;
  *(v0 + 80) = v2;
  type metadata accessor for ToolExecution(255, v0 + 56);
  *(v0 + 736) = swift_getWitnessTable();
  *(v0 + 744) = qword_28142DA98;
  *(v0 + 752) = qword_28142DAB0;
  *(v0 + 760) = *(*v5 + 176);
  *(v0 + 768) = qword_28142DAA8;
  *(v0 + 776) = qword_28142DAA0;
  sub_22BB31B88();
  swift_beginAccess();
  *(v0 + 808) = *MEMORY[0x277D723D8];
  *(v0 + 812) = *MEMORY[0x277D722A8];
  sub_22BB345D8();
  *(v0 + 784) = swift_getAssociatedConformanceWitness();
  v6 = swift_task_alloc();
  *(v0 + 792) = v6;
  *v6 = v0;
  v7 = sub_22BB38000(v6);

  return MEMORY[0x282200310](v7);
}

uint64_t sub_22BC93D40()
{
  v5 = *(v0 + 688);
  v6 = *(v0 + 584);
  sub_22BB36B74(v5);
  if (v7)
  {
    v8 = *(v0 + 800);
    v9 = sub_22BB69224();
    (*(v10 + 8))(v9);
    sub_22BDBB004();
    v11 = v8;
    if (!v8)
    {
      type metadata accessor for RuntimeError(0);
      sub_22BB31C10();
      sub_22BC9D714(v12, v13);
      sub_22BB358DC();
      sub_22BB369E0();
      v11 = swift_allocError();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
    }

LABEL_29:
    sub_22BB89D04();
    v109 = *(v0 + 672);
    v110 = *(v0 + 632);
    v111 = *(v0 + 624);
    v112 = *(v0 + 616);
    sub_22BB699FC();
    v113, v114, v115, v116, v117, v118, v119, v120, v545, v595, v645, v695, v745, v795, v845, v896, v947, v998, v1049, v1099, v1153, *(v0 + 376), *(v0 + 360), *(v0 + 336), v11;
    v3, v121, v122, v123, v124, v125, v126, v127, v546, v596, v646, v696, v746, v796, v846, v897, v948, v999, v1050, v1101, v1157, v1213, v1269, v1325, v1378;
    v11, v128, v129, v130, v131, v132, v133, v134, v547, v597, v647, v697, v747, v797, v847, v898, v949, v1000, v1051, v1102, v1158, v1214, v1270, v1326, v1379;
    v4, v135, v136, v137, v138, v139, v140, v141, v548, v598, v648, v698, v748, v798, v848, v899, v950, v1001, v1052, v1103, v1159, v1215, v1271, v1327, v1380;
    v109, v142, v143, v144, v145, v146, v147, v148, v549, v599, v649, v699, v749, v799, v849, v900, v951, v1002, v1053, v1104, v1160, v1216, v1272, v1328, v1381;
    v110, v149, v150, v151, v152, v153, v154, v155, v550, v600, v650, v700, v750, v800, v850, v901, v952, v1003, v1054, v1105, v1161, v1217, v1273, v1329, v1382;
    v111, v156, v157, v158, v159, v160, v161, v162, v551, v601, v651, v701, v751, v801, v851, v902, v953, v1004, v1055, v1106, v1162, v1218, v1274, v1330, v1383;
    v112, v163, v164, v165, v166, v167, v168, v169, v552, v602, v652, v702, v752, v802, v852, v903, v954, v1005, v1056, v1107, v1163, v1219, v1275, v1331, v1384;
    v1, v170, v171, v172, v173, v174, v175, v176, v553, v603, v653, v703, v753, v803, v853, v904, v955, v1006, v1057, v1108, v1164, v1220, v1276, v1332, v1385;
    v2, v177, v178, v179, v180, v181, v182, v183, v554, v604, v654, v704, v754, v804, v854, v905, v956, v1007, v1058, v1109, v1165, v1221, v1277, v1333, v1386;
    v605, v184, v185, v186, v187, v188, v189, v190, v555, v605, v655, v705, v755, v805, v855, v906, v957, v1008, v1059, v1110, v1166, v1222, v1278, v1334, v1387;
    v656, v191, v192, v193, v194, v195, v196, v197, v556, v606, v656, v706, v756, v806, v856, v907, v958, v1009, v1060, v1111, v1167, v1223, v1279, v1335, v1388;
    v707, v198, v199, v200, v201, v202, v203, v204, v557, v607, v657, v707, v757, v807, v857, v908, v959, v1010, v1061, v1112, v1168, v1224, v1280, v1336, v1389;
    v758, v205, v206, v207, v208, v209, v210, v211, v558, v608, v658, v708, v758, v808, v858, v909, v960, v1011, v1062, v1113, v1169, v1225, v1281, v1337, v1390;
    v809, v212, v213, v214, v215, v216, v217, v218, v559, v609, v659, v709, v759, v809, v859, v910, v961, v1012, v1063, v1114, v1170, v1226, v1282, v1338, v1391;
    v860, v219, v220, v221, v222, v223, v224, v225, v560, v610, v660, v710, v760, v810, v860, v911, v962, v1013, v1064, v1115, v1171, v1227, v1283, v1339, v1392;
    v912, v226, v227, v228, v229, v230, v231, v232, v561, v611, v661, v711, v761, v811, v861, v912, v963, v1014, v1065, v1116, v1172, v1228, v1284, v1340, v1393;
    v964, v233, v234, v235, v236, v237, v238, v239, v562, v612, v662, v712, v762, v812, v862, v913, v964, v1015, v1066, v1117, v1173, v1229, v1285, v1341, v1394;
    v1016, v240, v241, v242, v243, v244, v245, v246, v563, v613, v663, v713, v763, v813, v863, v914, v965, v1016, v1067, v1118, v1174, v1230, v1286, v1342, v1395;
    v1068, v247, v248, v249, v250, v251, v252, v253, v564, v614, v664, v714, v764, v814, v864, v915, v966, v1017, v1068, v1119, v1175, v1231, v1287, v1343, v1396;
    v1120, v254, v255, v256, v257, v258, v259, v260, v565, v615, v665, v715, v765, v815, v865, v916, v967, v1018, v1069, v1120, v1176, v1232, v1288, v1344, v1397;
    v1177, v261, v262, v263, v264, v265, v266, v267, v566, v616, v666, v716, v766, v816, v866, v917, v968, v1019, v1070, v1121, v1177, v1233, v1289, v1345, v1398;
    v1234, v268, v269, v270, v271, v272, v273, v274, v567, v617, v667, v717, v767, v817, v867, v918, v969, v1020, v1071, v1122, v1178, v1234, v1290, v1346, v1399;
    v1291, v275, v276, v277, v278, v279, v280, v281, v568, v618, v668, v718, v768, v818, v868, v919, v970, v1021, v1072, v1123, v1179, v1235, v1291, v1347, v1400;
    v1348, v282, v283, v284, v285, v286, v287, v288, v569, v619, v669, v719, v769, v819, v869, v920, v971, v1022, v1073, v1124, v1180, v1236, v1292, v1348, v1401;
    sub_22BB2F09C();
LABEL_30:

    return v289();
  }

  else
  {
    (*(*(v0 + 592) + 32))(*(v0 + 632), v5, v6);
    sub_22BDB63F4();

    v14 = sub_22BDB77C4();
    v15 = sub_22BDBB134();

    if (os_log_type_enabled(v14, v15))
    {
      v1375 = *(v0 + 576);
      v1264 = *(v0 + 536);
      v1321 = *(v0 + 528);
      v17 = swift_slowAlloc();
      v3 = swift_slowAlloc();
      *v17 = 136315394;
      v18 = sub_22BDB8E04();
      v20 = sub_22BB3CDBC(v18, v19);

      *(v17 + 4) = v20;
      *(v17 + 12) = 2080;
      sub_22BB31B88();
      swift_beginAccess();
      v21 = sub_22BB2F3F0();
      v22(v21);
      v23 = sub_22BDBAC14();
      v25 = sub_22BB3CDBC(v23, v24);

      *(v17 + 14) = v25;
      _os_log_impl(&dword_22BB2C000, v14, v15, "ToolExecution: %s received dialog event %s", v17, 0x16u);
      swift_arrayDestroy();
      sub_22BB2F368();
      MEMORY[0x2318A6080]();
      sub_22BB2F368();
      MEMORY[0x2318A6080]();

      v26 = *(v1264 + 8);
      v26(v1375, v1321);
    }

    else
    {
      v27 = *(v0 + 536);

      v26 = *(v27 + 8);
      v28 = sub_22BB2F3F0();
      (v26)(v28);
    }

    v29 = *(v0 + 632);
    v30 = *(v0 + 616);
    v31 = *(v0 + 592);
    sub_22BB3B574(v29, v0 + 144);

    sub_22BC95364(v29);
    swift_endAccess();

    v4 = *(v31 + 16);
    sub_22BB35FA0();
    v4();
    sub_22BB2F0E0();
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
      case 2u:
        (*(*(v0 + 592) + 8))(*(v0 + 616), *(v0 + 584));
        goto LABEL_23;
      case 3u:
        v79 = *(v0 + 616);
        v80 = *(v79 + 16);

        sub_22BBE6DE0(&qword_27D8E2EE0, &qword_22BDBD750);
        sub_22BB3518C();
        sub_22BB37CAC(*(v81 + 80));

        sub_22BB37CAC(v80[24]);

        sub_22BDBA5C4();
        goto LABEL_22;
      case 4u:
        v40 = *(v0 + 616);
        sub_22BBE6DE0(&qword_27D8E2EC8, &qword_22BDBD730);

        sub_22BB37238();
        sub_22BC9D3D4(v40, v41);
        goto LABEL_23;
      case 5u:
        v79 = *(v0 + 616);
        v86 = *(v79 + 16);

        sub_22BBE6DE0(&qword_27D8E2EC0, &qword_22BDBD720);
        sub_22BB3518C();
        v88 = *(v87 + 80);
        sub_22BB37CAC(*(v87 + 96));

        sub_22BB37CAC(v86[28]);

        sub_22BB37CAC(v86[32]);

        sub_22BB325EC(v79 + v88, &qword_27D8E2928, &qword_22BDBCFA0);
        sub_22BDBA594();
LABEL_22:
        sub_22BB31F70();
        (*(v89 + 8))(v79 + v30);
        goto LABEL_23;
      case 6u:
        v1324 = *(v0 + 800);
        v1212 = *(v0 + 648);
        v1268 = *(v0 + 640);
        v101 = *(v0 + 632);
        v1 = *(v0 + 600);
        v102 = *(v0 + 592);
        v2 = *(v0 + 584);
        v103 = *(v0 + 488);
        v104 = *(v0 + 496);
        v105 = *(v0 + 288);
        v106 = *(v102 + 8);
        v3 = v102 + 8;
        v1377 = v106;
        v106(*(v0 + 616), v2);
        (v4)(v1, v101, v2);
        sub_22BC92DF8(v1, v103, v1212, v104, v1268, v105);
        v107 = sub_22BB69224();
        if (!v1324)
        {
          (*(v108 + 8))(v107);
          v324 = v1377;
          goto LABEL_41;
        }

        v11 = v1324;
        (*(v108 + 8))(v107);
        v46 = sub_22BB2F324();
        v47 = v1377;
LABEL_28:
        v47(v46);
        goto LABEL_29;
      case 7u:
        v82 = *(v0 + 616);
        v83 = *(v82 + 16);

        v84 = sub_22BBE6DE0(&qword_27D8E2EA0, &unk_22BDC05E0);
        v85 = v84[12];
        sub_22BB37CAC(v84[16]);

        sub_22BB37CAC(v84[20]);

        sub_22BB37CAC(v84[24]);

        sub_22BB325EC(v82 + v85, &qword_27D8E2928, &qword_22BDBCFA0);
LABEL_23:
        v90 = *(v0 + 800);
        v91 = *(v0 + 648);
        v92 = *(v0 + 640);
        v2 = *(v0 + 488);
        v1 = *(v0 + 496);
        v3 = *(v0 + 288);
        (v4)(*(v0 + 608), *(v0 + 632), *(v0 + 584));
        v93 = sub_22BB39744();
        sub_22BC92DF8(v93, v94, v91, v1, v92, v95);
        v96 = sub_22BB69224();
        if (v90)
        {
          v11 = v90;
          (*(v97 + 8))(v96);
          v98 = sub_22BB2F324();
          v99(v98);
          goto LABEL_29;
        }

        v100 = *(v0 + 592);
        (*(v97 + 8))(v96);
LABEL_40:
        v324 = *(v100 + 8);
LABEL_41:
        v325 = *(v0 + 728);
        v326 = *(v0 + 704);
        v327 = *(v0 + 688);
        v328 = *(v0 + 680);
        v329 = *(v0 + 672);
        v330 = *(v0 + 632);
        v331 = *(v0 + 624);
        v332 = *(v0 + 616);
        v570 = *(v0 + 608);
        v620 = *(v0 + 600);
        v670 = *(v0 + 576);
        v720 = *(v0 + 568);
        v770 = *(v0 + 560);
        v820 = *(v0 + 552);
        v870 = *(v0 + 544);
        v921 = *(v0 + 520);
        v972 = *(v0 + 480);
        v1023 = *(v0 + 456);
        v1074 = *(v0 + 448);
        v1126 = *(v0 + 440);
        v1182 = *(v0 + 424);
        v1238 = *(v0 + 400);
        v1294 = *(v0 + 376);
        v1349 = *(v0 + 360);
        v1402 = *(v0 + 336);
        v324(v330, *(v0 + 584));
        v325, v333, v334, v335, v336, v337, v338, v339, v570, v620, v670, v720, v770, v820, v870, v921, v972, v1023, v1074, v1126, v1182, v1238, v1294, v1349, v1402;
        v326, v340, v341, v342, v343, v344, v345, v346, v571, v621, v671, v721, v771, v821, v871, v922, v973, v1024, v1075, v1127, v1183, v1239, v1295, v1350, v1403;
        v327, v347, v348, v349, v350, v351, v352, v353, v572, v622, v672, v722, v772, v822, v872, v923, v974, v1025, v1076, v1128, v1184, v1240, v1296, v1351, v1404;
        v328, v354, v355, v356, v357, v358, v359, v360, v573, v623, v673, v723, v773, v823, v873, v924, v975, v1026, v1077, v1129, v1185, v1241, v1297, v1352, v1405;
        v329, v361, v362, v363, v364, v365, v366, v367, v574, v624, v674, v724, v774, v824, v874, v925, v976, v1027, v1078, v1130, v1186, v1242, v1298, v1353, v1406;
        v330, v368, v369, v370, v371, v372, v373, v374, v575, v625, v675, v725, v775, v825, v875, v926, v977, v1028, v1079, v1131, v1187, v1243, v1299, v1354, v1407;
        v331, v375, v376, v377, v378, v379, v380, v381, v576, v626, v676, v726, v776, v826, v876, v927, v978, v1029, v1080, v1132, v1188, v1244, v1300, v1355, v1408;
        v332, v382, v383, v384, v385, v386, v387, v388, v577, v627, v677, v727, v777, v827, v877, v928, v979, v1030, v1081, v1133, v1189, v1245, v1301, v1356, v1409;
        v578, v389, v390, v391, v392, v393, v394, v395, v578, v628, v678, v728, v778, v828, v878, v929, v980, v1031, v1082, v1134, v1190, v1246, v1302, v1357, v1410;
        v629, v396, v397, v398, v399, v400, v401, v402, v579, v629, v679, v729, v779, v829, v879, v930, v981, v1032, v1083, v1135, v1191, v1247, v1303, v1358, v1411;
        v680, v403, v404, v405, v406, v407, v408, v409, v580, v630, v680, v730, v780, v830, v880, v931, v982, v1033, v1084, v1136, v1192, v1248, v1304, v1359, v1412;
        v731, v410, v411, v412, v413, v414, v415, v416, v581, v631, v681, v731, v781, v831, v881, v932, v983, v1034, v1085, v1137, v1193, v1249, v1305, v1360, v1413;
        v782, v417, v418, v419, v420, v421, v422, v423, v582, v632, v682, v732, v782, v832, v882, v933, v984, v1035, v1086, v1138, v1194, v1250, v1306, v1361, v1414;
        v833, v424, v425, v426, v427, v428, v429, v430, v583, v633, v683, v733, v783, v833, v883, v934, v985, v1036, v1087, v1139, v1195, v1251, v1307, v1362, v1415;
        v884, v431, v432, v433, v434, v435, v436, v437, v584, v634, v684, v734, v784, v834, v884, v935, v986, v1037, v1088, v1140, v1196, v1252, v1308, v1363, v1416;
        v936, v438, v439, v440, v441, v442, v443, v444, v585, v635, v685, v735, v785, v835, v885, v936, v987, v1038, v1089, v1141, v1197, v1253, v1309, v1364, v1417;
        v988, v445, v446, v447, v448, v449, v450, v451, v586, v636, v686, v736, v786, v836, v886, v937, v988, v1039, v1090, v1142, v1198, v1254, v1310, v1365, v1418;
        v1040, v452, v453, v454, v455, v456, v457, v458, v587, v637, v687, v737, v787, v837, v887, v938, v989, v1040, v1091, v1143, v1199, v1255, v1311, v1366, v1419;
        v1092, v459, v460, v461, v462, v463, v464, v465, v588, v638, v688, v738, v788, v838, v888, v939, v990, v1041, v1092, v1144, v1200, v1256, v1312, v1367, v1420;
        v1145, v466, v467, v468, v469, v470, v471, v472, v589, v639, v689, v739, v789, v839, v889, v940, v991, v1042, v1093, v1145, v1201, v1257, v1313, v1368, v1421;
        v1202, v473, v474, v475, v476, v477, v478, v479, v590, v640, v690, v740, v790, v840, v890, v941, v992, v1043, v1094, v1146, v1202, v1258, v1314, v1369, v1422;
        v1259, v480, v481, v482, v483, v484, v485, v486, v591, v641, v691, v741, v791, v841, v891, v942, v993, v1044, v1095, v1147, v1203, v1259, v1315, v1370, v1423;
        v1316, v487, v488, v489, v490, v491, v492, v493, v592, v642, v692, v742, v792, v842, v892, v943, v994, v1045, v1096, v1148, v1204, v1260, v1316, v1371, v1424;
        v1372, v494, v495, v496, v497, v498, v499, v500, v593, v643, v693, v743, v793, v843, v893, v944, v995, v1046, v1097, v1149, v1205, v1261, v1317, v1372, v1425;
        v1426, v501, v502, v503, v504, v505, v506, v507, v594, v644, v694, v744, v794, v844, v894, v945, v996, v1047, v1098, v1150, v1206, v1262, v1318, v1373, v1426;
        sub_22BB2F09C();
        goto LABEL_30;
      case 8u:
        v300 = *(v0 + 760);
        v294 = *(v0 + 616);
        v301 = *(v0 + 320);
        v302 = *(v294 + *(sub_22BBE6DE0(&qword_27D8E2E90, &qword_22BDBD6D0) + 48));
        v303 = sub_22BB30AE4();
        sub_22BC9D54C(v303, v304, v305);
        if (*(v301 + v300) == 1)
        {
          sub_22BC9F7C4();
          v306 = *(v0 + 376);
          v307 = *(v0 + 360);
          v309 = *(v0 + 304);
          v308 = *(v0 + 312);
          sub_22BDBA864();
          v302(v307, v309, v308);

          v310 = sub_22BB32E04();
          v311(v310);
          sub_22BB3650C();
          sub_22BC9D3D4(v306, v312);
          goto LABEL_49;
        }

        v528 = *(v0 + 768);
        v529 = *(v0 + 592);
        v1374 = *(v0 + 584);
        v1427 = *(v0 + 632);
        v530 = *(v0 + 368);
        v531 = *(v0 + 352);
        v532 = *(v0 + 360);
        v533 = *(v0 + 336);
        v1263 = *(v0 + 376);
        v1320 = *(v0 + 344);
        v534 = *(v0 + 320);
        v1152 = *(v0 + 304);
        v1208 = *(v0 + 312);
        sub_22BC9E554(v1263, v533, type metadata accessor for FollowUpActionRequest);
        sub_22BB331C8();
        sub_22BB336D0(v535, v536, v537, v530);
        sub_22BB3B574(v534 + v528, v0 + 168);
        sub_22BB385F4(v533, v534 + v528, &qword_27D8E2B40, &unk_22BDBD9B0);
        swift_endAccess();
        sub_22BDBA864();
        v302(v532, v1152, v1208);

        (*(v531 + 8))(v532, v1320);
        sub_22BB3650C();
        sub_22BC9D3D4(v1263, v538);
        (*(v529 + 8))(v1427, v1374);
        break;
      case 9u:
        v48 = *(v0 + 616);
        v49 = *(v0 + 456);
        v50 = *v48;
        v1376 = v48[1];
        v1210 = v48[2];
        v51 = sub_22BBE6DE0(&qword_27D8E2EB8, &qword_22BDBD710);
        v1266 = *(v48 + *(v51 + 64));
        sub_22BB6BEE0(v48 + *(v51 + 48), v49, &qword_27D8E2928, &qword_22BDBCFA0);
        sub_22BDB63F4();

        v52 = sub_22BDB77C4();
        v53 = sub_22BDBB134();

        if (os_log_type_enabled(v52, v53))
        {
          v54 = *(v0 + 528);
          v1155 = *(v0 + 552);
          sub_22BB31AD8();
          sub_22BB6B650();
          *v3 = 136315138;
          v55 = sub_22BDB8E04();
          v57 = sub_22BB3CDBC(v55, v56);

          *(v3 + 4) = v57;
          _os_log_impl(&dword_22BB2C000, v52, v53, "ToolExecution: %s received result dialog event. Storing to be returned with output", v3, 0xCu);
          sub_22BB393DC();
          sub_22BB2F368();
          MEMORY[0x2318A6080]();
          sub_22BB2F368();
          MEMORY[0x2318A6080]();

          v58 = v1155;
          v59 = v54;
        }

        else
        {

          v58 = sub_22BB2F3F0();
        }

        v26(v58, v59);
        v1048 = *(v0 + 808);
        v508 = *(v0 + 776);
        v509 = *(v0 + 592);
        v1151 = *(v0 + 584);
        v1207 = *(v0 + 632);
        v510 = *(v0 + 448);
        v511 = *(v0 + 456);
        v512 = *(v0 + 416);
        v513 = *(v0 + 424);
        v514 = *(v0 + 320);
        v997 = *(v0 + 312);
        v895 = *(v0 + 408);
        v946 = *(v0 + 304);
        v515 = type metadata accessor for ResultResponse(0);
        sub_22BB3CD70(v511, v510 + *(v515 + 20), &qword_27D8E2928, &qword_22BDBCFA0);
        *v510 = v50;
        v510[1] = v1376;
        v510[2] = v1210;
        sub_22BB331C8();
        sub_22BB336D0(v516, v517, v518, v515);
        sub_22BB3B574(v514 + v508, v0 + 192);
        v519 = v1210;

        sub_22BB385F4(v510, v514 + v508, &qword_27D8E2530, &qword_22BDBCBF0);
        swift_endAccess();
        (*(v512 + 104))(v513, v1048, v895);
        v1266(v513, v946, v997);

        (*(v512 + 8))(v513, v895);
        sub_22BB325EC(v511, &qword_27D8E2928, &qword_22BDBCFA0);
        (*(v509 + 8))(v1207, v1151);
        break;
      case 0xAu:
        v291 = *(v0 + 776);
        v292 = *(v0 + 440);
        v293 = *(v0 + 320);
        (*(*(v0 + 392) + 32))(*(v0 + 400), *(v0 + 616), *(v0 + 384));
        v294 = &qword_27D8E2530;
        sub_22BB3CD70(v293 + v291, v292, &qword_27D8E2530, &qword_22BDBCBF0);
        v295 = type metadata accessor for ResultResponse(0);
        LODWORD(v291) = sub_22BB3AA28(v292, 1, v295);
        v296 = sub_22BB2F324();
        sub_22BB325EC(v296, v297, &qword_22BDBCBF0);
        if (v291 == 1)
        {
          sub_22BB3CD70(*(v0 + 296), v0 + 16, &qword_27D8E2B28, &unk_22BDBD230);
          if (*(v0 + 40))
          {
            sub_22BB69FEC((v0 + 16), *(v0 + 40));
            sub_22BB39744();
            sub_22BDB9234();
            v298 = sub_22BB331D4();
            v299(v298);
            sub_22BB32FA4((v0 + 16));
          }

          else
          {
            v539 = sub_22BB331D4();
            v540(v539);
            sub_22BB325EC(v0 + 16, &qword_27D8E2B28, &unk_22BDBD230);
          }

          v541 = sub_22BB30AE4();
          v542(v541);
        }

        else
        {
          sub_22BDB63F4();
          v520 = sub_22BDB77C4();
          v521 = sub_22BDBB134();
          os_log_type_enabled(v520, v521);
          sub_22BC9F7C4();
          v522 = *(v0 + 544);
          v523 = *(v0 + 528);
          v524 = *(v0 + 392);
          v1319 = *(v0 + 400);
          v525 = *(v0 + 384);
          if (v526)
          {
            sub_22BB2F114();
            v527 = swift_slowAlloc();
            *v527 = 0;
            _os_log_impl(&dword_22BB2C000, v520, v521, "ToolExecution: Ignoring status update since we've received the completion result", v527, 2u);
            sub_22BB2F368();
            MEMORY[0x2318A6080]();
          }

          v26(v522, v523);
          (*(v524 + 8))(v1319, v525);
LABEL_49:
          (v294[1])(v1375, v1321);
        }

        break;
      case 0xBu:
        v1322 = *(*(v0 + 512) + 32);
        (v1322)(*(v0 + 520), *(v0 + 616), *(v0 + 504));
        sub_22BDB63F4();

        v32 = sub_22BDB77C4();
        v33 = sub_22BDBB134();

        if (os_log_type_enabled(v32, v33))
        {
          v34 = *(v0 + 720);
          v1209 = *(v0 + 712);
          v1265 = *(v0 + 728);
          v35 = *(v0 + 528);
          v1154 = *(v0 + 568);
          v36 = sub_22BB31AD8();
          v1428 = swift_slowAlloc();
          *v36 = 136315138;
          v37 = sub_22BDB8E04();
          v39 = sub_22BB3CDBC(v37, v38);

          *(v36 + 4) = v39;
          _os_log_impl(&dword_22BB2C000, v32, v33, "ToolExecution: %s completed", v36, 0xCu);
          sub_22BB32FA4(v1428);
          sub_22BB2F368();
          MEMORY[0x2318A6080]();
          sub_22BB2F368();
          MEMORY[0x2318A6080]();

          v26(v1154, v35);
          (*(v34 + 8))(v1265, v1209);
        }

        else
        {

          v313 = sub_22BB39744();
          (v26)(v313);
          v314 = sub_22BB2F3F0();
          v315(v314);
        }

        v316 = *(v0 + 776);
        v317 = *(v0 + 768);
        v1237 = *(v0 + 648);
        v1293 = *(v0 + 640);
        v100 = *(v0 + 592);
        v1125 = *(v0 + 488);
        v1181 = *(v0 + 496);
        v318 = *(v0 + 320);
        v319 = *(v0 + 288);
        sub_22BB36A38();
        TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
        v321 = *(TupleTypeMetadata3 + 48);
        v322 = *(TupleTypeMetadata3 + 64);
        v323 = sub_22BB2F324();
        v1322(v323);
        sub_22BB31B88();
        swift_beginAccess();
        sub_22BB3CD70(v318 + v316, v319 + v321, &qword_27D8E2530, &qword_22BDBCBF0);
        sub_22BB31B88();
        swift_beginAccess();
        sub_22BB3CD70(v318 + v317, v319 + v322, &qword_27D8E2B40, &unk_22BDBD9B0);
        *(v0 + 88) = v1125;
        *(v0 + 96) = v1237;
        *(v0 + 104) = v1181;
        *(v0 + 112) = v1293;
        type metadata accessor for ToolExecution.Outcome(0, v0 + 88);
        sub_22BB358DC();
        swift_storeEnumTagMultiPayload();
        goto LABEL_40;
      case 0xCu:
        v42 = *(v0 + 720);
        v43 = *(v0 + 592);
        v1 = *(v0 + 584);
        v11 = **(v0 + 616);
        swift_willThrow();
        v2 = v42 + 8;
        v44 = sub_22BB2F324();
        v45(v44);
        v3 = v43 + 8;
        v46 = sub_22BB331D4();
        goto LABEL_28;
      default:
        v60 = *(v0 + 616);
        v61 = *(v60 + 16);
        v1323 = *(v60 + 40);

        sub_22BDB63F4();
        v62 = sub_22BDB77C4();
        v63 = sub_22BDBB114();
        if (sub_22BB3FCAC(v63))
        {
          sub_22BB2F114();
          v64 = swift_slowAlloc();
          sub_22BB3E4A8(v64);
          sub_22BB5420C();
          _os_log_impl(v65, v66, v67, v68, v69, 2u);
          sub_22BB2F368();
          MEMORY[0x2318A6080]();
        }

        v1156 = *(v0 + 812);
        v70 = *(v0 + 592);
        v1211 = *(v0 + 584);
        v1267 = *(v0 + 632);
        v71 = *(v0 + 560);
        v72 = *(v0 + 528);
        v73 = *(v0 + 480);
        v74 = *(v0 + 464);
        v75 = *(v0 + 304);
        v1100 = *(v0 + 312);

        v26(v71, v72);
        sub_22BB379E4();
        v76(v73, v1156, v74);
        v1323(v73, v75, v1100);

        v77 = sub_22BB2F12C();
        v78(v77);
        (*(v70 + 8))(v1267, v1211);
        break;
    }

    sub_22BB345D8();
    *(v0 + 784) = swift_getAssociatedConformanceWitness();
    v543 = swift_task_alloc();
    *(v0 + 792) = v543;
    *v543 = v0;
    v544 = sub_22BB38000(v543);

    return MEMORY[0x282200310](v544);
  }
}

uint64_t sub_22BC95130()
{
  v4 = v0[83];
  v7 = *(v4 + 32);
  v5 = v4 + 32;
  v6 = v7;
  v7(v0[84], v0[85], v0[82]);
  sub_22BB2F324();
  swift_getAssociatedConformanceWitness();
  sub_22BB2F0E0();
  v8 = sub_22BDBB6A4();
  v9 = v0[84];
  if (v8)
  {
    v593 = v8;
    (*(v0[83] + 8))(v9, v0[82]);
  }

  else
  {
    v10 = v0[82];
    sub_22BB369E0();
    v593 = swift_allocError();
    v6(v11, v9, v10);
  }

  v12 = sub_22BB69224();
  (*(v13 + 8))(v12);
  sub_22BB89D04();
  v14 = v0[84];
  v15 = v0[79];
  v16 = v0[78];
  v17 = v0[77];
  sub_22BB699FC();
  v18, v19, v20, v21, v22, v23, v24, v25, v196, v221, v246, v271, v296, v321, v346, v371, v396, v421, v446, v471, v496, v0[47], v0[45], v0[42], v593;
  v1, v26, v27, v28, v29, v30, v31, v32, v197, v222, v247, v272, v297, v322, v347, v372, v397, v422, v447, v472, v497, v521, v545, v569, v594;
  v2, v33, v34, v35, v36, v37, v38, v39, v198, v223, v248, v273, v298, v323, v348, v373, v398, v423, v448, v473, v498, v522, v546, v570, v595;
  v3, v40, v41, v42, v43, v44, v45, v46, v199, v224, v249, v274, v299, v324, v349, v374, v399, v424, v449, v474, v499, v523, v547, v571, v596;
  v14, v47, v48, v49, v50, v51, v52, v53, v200, v225, v250, v275, v300, v325, v350, v375, v400, v425, v450, v475, v500, v524, v548, v572, v597;
  v15, v54, v55, v56, v57, v58, v59, v60, v201, v226, v251, v276, v301, v326, v351, v376, v401, v426, v451, v476, v501, v525, v549, v573, v598;
  v16, v61, v62, v63, v64, v65, v66, v67, v202, v227, v252, v277, v302, v327, v352, v377, v402, v427, v452, v477, v502, v526, v550, v574, v599;
  v17, v68, v69, v70, v71, v72, v73, v74, v203, v228, v253, v278, v303, v328, v353, v378, v403, v428, v453, v478, v503, v527, v551, v575, v600;
  v5, v75, v76, v77, v78, v79, v80, v81, v204, v229, v254, v279, v304, v329, v354, v379, v404, v429, v454, v479, v504, v528, v552, v576, v601;
  v6, v82, v83, v84, v85, v86, v87, v88, v205, v230, v255, v280, v305, v330, v355, v380, v405, v430, v455, v480, v505, v529, v553, v577, v602;
  v231, v89, v90, v91, v92, v93, v94, v95, v206, v231, v256, v281, v306, v331, v356, v381, v406, v431, v456, v481, v506, v530, v554, v578, v603;
  v257, v96, v97, v98, v99, v100, v101, v102, v207, v232, v257, v282, v307, v332, v357, v382, v407, v432, v457, v482, v507, v531, v555, v579, v604;
  v283, v103, v104, v105, v106, v107, v108, v109, v208, v233, v258, v283, v308, v333, v358, v383, v408, v433, v458, v483, v508, v532, v556, v580, v605;
  v309, v110, v111, v112, v113, v114, v115, v116, v209, v234, v259, v284, v309, v334, v359, v384, v409, v434, v459, v484, v509, v533, v557, v581, v606;
  v335, v117, v118, v119, v120, v121, v122, v123, v210, v235, v260, v285, v310, v335, v360, v385, v410, v435, v460, v485, v510, v534, v558, v582, v607;
  v361, v124, v125, v126, v127, v128, v129, v130, v211, v236, v261, v286, v311, v336, v361, v386, v411, v436, v461, v486, v511, v535, v559, v583, v608;
  v387, v131, v132, v133, v134, v135, v136, v137, v212, v237, v262, v287, v312, v337, v362, v387, v412, v437, v462, v487, v512, v536, v560, v584, v609;
  v413, v138, v139, v140, v141, v142, v143, v144, v213, v238, v263, v288, v313, v338, v363, v388, v413, v438, v463, v488, v513, v537, v561, v585, v610;
  v439, v145, v146, v147, v148, v149, v150, v151, v214, v239, v264, v289, v314, v339, v364, v389, v414, v439, v464, v489, v514, v538, v562, v586, v611;
  v465, v152, v153, v154, v155, v156, v157, v158, v215, v240, v265, v290, v315, v340, v365, v390, v415, v440, v465, v490, v515, v539, v563, v587, v612;
  v491, v159, v160, v161, v162, v163, v164, v165, v216, v241, v266, v291, v316, v341, v366, v391, v416, v441, v466, v491, v516, v540, v564, v588, v613;
  v517, v166, v167, v168, v169, v170, v171, v172, v217, v242, v267, v292, v317, v342, v367, v392, v417, v442, v467, v492, v517, v541, v565, v589, v614;
  v542, v173, v174, v175, v176, v177, v178, v179, v218, v243, v268, v293, v318, v343, v368, v393, v418, v443, v468, v493, v518, v542, v566, v590, v615;
  v567, v180, v181, v182, v183, v184, v185, v186, v219, v244, v269, v294, v319, v344, v369, v394, v419, v444, v469, v494, v519, v543, v567, v591, v616;
  v592, v187, v188, v189, v190, v191, v192, v193, v220, v245, v270, v295, v320, v345, v370, v395, v420, v445, v470, v495, v520, v544, v568, v592, v617;
  sub_22BB2F09C();

  return v194();
}

uint64_t sub_22BC95364(_OWORD *a1)
{
  v2 = v1;
  v47 = a1;
  v3 = *v1;
  v4 = sub_22BDB77D4();
  v45 = *(v4 - 8);
  v46 = v4;
  MEMORY[0x28223BE20](v4);
  v44 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ToolExecutionEvent(255, v3[10], v3[12], v6);
  v8 = sub_22BDBB254();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v42 - v14;
  v16 = *(v7 - 8);
  v17 = MEMORY[0x28223BE20](v13);
  v43 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v42 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v42 - v22;
  v24 = v3[14];
  swift_beginAccess();
  (*(v9 + 16))(v15, v2 + v24, v8);
  if (sub_22BB3AA28(v15, 1, v7) == 1)
  {
    (*(v9 + 8))(v15, v8);
    v25 = v47;
    if (sub_22BC9C70C(v7))
    {
      (*(v16 + 16))(v12, v25, v7);
      v26 = v12;
      v27 = 0;
    }

    else
    {
      v26 = v12;
      v27 = 1;
    }

    sub_22BB336D0(v26, v27, 1, v7);
    swift_beginAccess();
    (*(v9 + 40))(v2 + v24, v12, v8);
    swift_endAccess();
    (*(v16 + 32))(v21, v25, v7);
    sub_22BC9BD30(v21, v25);
    return (*(v16 + 8))(v21, v7);
  }

  else
  {
    (*(v16 + 32))(v23, v15, v7);
    v29 = *(v16 + 16);
    v29(v21, v47, v7);
    v47 = sub_22BDBAC14();
    v31 = v30;
    sub_22BDB63F4();
    v29(v43, v23, v7);

    v32 = sub_22BDB77C4();
    v33 = sub_22BDBB114();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v48[0] = v42;
      *v34 = 136315394;
      v35 = sub_22BB32EE0(v47, v31, v48);

      *(v34 + 4) = v35;
      *(v34 + 12) = 2080;
      v36 = v43;
      v29(v21, v43, v7);
      v37 = sub_22BDBAC14();
      v39 = v38;
      (*(v16 + 8))(v36, v7);
      v40 = sub_22BB32EE0(v37, v39, v48);

      *(v34 + 14) = v40;
      _os_log_impl(&dword_22BB2C000, v32, v33, "ToolExecution: Received new event: %s while current event was not responded to: %s", v34, 0x16u);
      v41 = v42;
      swift_arrayDestroy();
      MEMORY[0x2318A6080](v41, -1, -1);
      MEMORY[0x2318A6080](v34, -1, -1);
    }

    else
    {

      (*(v16 + 8))(v43, v7);
    }

    (*(v45 + 8))(v44, v46);
    result = sub_22BDBB4D4();
    __break(1u);
  }

  return result;
}

uint64_t sub_22BC9595C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[7] = a3;
  v4[8] = v3;
  v4[5] = a1;
  v4[6] = a2;
  v5 = sub_22BDB77D4();
  v4[9] = v5;
  sub_22BB30434(v5);
  v4[10] = v6;
  v4[11] = sub_22BB30ACC();
  v7 = sub_22BBE6DE0(&qword_27D8E3A80, &qword_22BDC0608);
  sub_22BB2F0C8(v7);
  v4[12] = sub_22BB30ACC();
  sub_22BB36F5C();
  sub_22BB36F5C();
  v11 = type metadata accessor for ToolExecutionEvent(255, v9, *(v8 + 96), v10);
  v4[13] = v11;
  v12 = sub_22BDBB254();
  v4[14] = v12;
  sub_22BB30434(v12);
  v4[15] = v13;
  v4[16] = sub_22BB30ACC();
  v4[17] = *(v11 - 8);
  v4[18] = sub_22BB30ACC();
  v14 = sub_22BB355F0();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

uint64_t sub_22BC9607C(uint64_t a1, uint64_t a2)
{
  *(v3 + 120) = a2;
  *(v3 + 128) = v2;
  *(v3 + 112) = a1;
  v4 = *v2;
  v5 = *v2;
  v6 = *(*v2 + 80);
  *(v3 + 136) = v6;
  v7 = *(v4 + 96);
  *(v3 + 144) = v7;
  *&v8 = v6;
  *(&v8 + 1) = *(v5 + 88);
  *&v9 = v7;
  *(&v9 + 1) = *(v5 + 104);
  *(v3 + 72) = v9;
  *(v3 + 56) = v8;
  v10 = type metadata accessor for ToolExecution.Outcome(0, v3 + 56);
  *(v3 + 152) = v10;
  sub_22BB30434(v10);
  *(v3 + 160) = v11;
  *(v3 + 168) = sub_22BB30ACC();
  v12 = sub_22BDB77D4();
  *(v3 + 176) = v12;
  sub_22BB30434(v12);
  *(v3 + 184) = v13;
  *(v3 + 192) = sub_22BB3307C();
  *(v3 + 200) = swift_task_alloc();
  *(v3 + 208) = swift_task_alloc();
  *(v3 + 216) = swift_task_alloc();
  *(v3 + 224) = swift_task_alloc();
  v14 = sub_22BDB4C34();
  *(v3 + 232) = v14;
  sub_22BB30434(v14);
  *(v3 + 240) = v15;
  *(v3 + 248) = sub_22BB30ACC();
  v16 = sub_22BBE6DE0(&qword_27D8E3A80, &qword_22BDC0608);
  sub_22BB2F0C8(v16);
  *(v3 + 256) = sub_22BB30ACC();
  v17 = sub_22BBE6DE0(&qword_27D8E27C0, &qword_22BDBCDF0);
  sub_22BB2F0C8(v17);
  *(v3 + 264) = sub_22BB3307C();
  *(v3 + 272) = swift_task_alloc();
  v18 = sub_22BB355F0();

  return MEMORY[0x2822009F8](v18, v19, v20);
}

uint64_t sub_22BC962D0()
{
  v2 = *(v0 + 256);
  v3 = *(v0 + 128);
  v4 = qword_28142F458;
  sub_22BB31B88();
  swift_beginAccess();
  sub_22BB3CD70(v3 + v4, v2, &qword_27D8E3A80, &qword_22BDC0608);
  sub_22BDB9564();
  v5 = 1;
  v6 = sub_22BB36B68();
  if (!sub_22BB3AA28(v6, v7, v8))
  {
    sub_22BDB8174();
    v5 = 0;
  }

  v10 = *(v0 + 264);
  v9 = *(v0 + 272);
  v11 = *(v0 + 232);
  sub_22BB325EC(*(v0 + 256), &qword_27D8E3A80, &qword_22BDC0608);
  sub_22BB336D0(v9, v5, 1, v11);
  v12 = sub_22BB30AE4();
  sub_22BB3CD70(v12, v13, v14, v15);
  v16 = sub_22BB3AA28(v10, 1, v11);
  v17 = *(v0 + 272);
  if (v16 == 1)
  {
    sub_22BB325EC(*(v0 + 272), &qword_27D8E27C0, &qword_22BDBCDF0);
    v18 = sub_22BDB8E04();
    v20 = v19;
  }

  else
  {
    v22 = *(v0 + 240);
    v21 = *(v0 + 248);
    v23 = *(v0 + 232);
    (*(v22 + 32))(v21, *(v0 + 264), v23);
    sub_22BB6BA68();
    sub_22BC9D714(v24, v25);
    v18 = sub_22BDBB684();
    v20 = v26;
    (*(v22 + 8))(v21, v23);
    sub_22BB325EC(v17, &qword_27D8E27C0, &qword_22BDBCDF0);
  }

  *(v0 + 280) = v20;
  *(v0 + 288) = v18;
  sub_22BDB63F4();

  v27 = sub_22BDB77C4();
  v28 = sub_22BDBB134();

  v29 = os_log_type_enabled(v27, v28);
  v30 = *(v0 + 184);
  if (v29)
  {
    sub_22BB31AD8();
    sub_22BB6B650();
    *v1 = 136315138;
    v31 = sub_22BB30AE4();
    *(v1 + 4) = sub_22BB32EE0(v31, v32, v33);
    sub_22BB34EB8(&dword_22BB2C000, v34, v28, "ToolExecution: Cancelling execution of %s");
    sub_22BB393DC();
    sub_22BB2F368();
    MEMORY[0x2318A6080](v35);
    sub_22BB2F368();
    MEMORY[0x2318A6080](v36);
  }

  v37 = *(v30 + 8);
  v38 = sub_22BB331D4();
  v37(v38);
  *(v0 + 296) = v37;

  v39 = sub_22BB31F54();
  sub_22BC96D00(v39, v40);

  *(v0 + 48) = 0;
  *(v0 + 32) = 0u;
  *(v0 + 16) = 0u;
  v41 = swift_task_alloc();
  *(v0 + 304) = v41;
  *v41 = v0;
  v41[1] = sub_22BC9662C;
  sub_22BB31B88();

  return sub_22BC93528(v42, v43, v44, v45);
}

uint64_t sub_22BC96D00(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = sub_22BDBA874();
  v116 = *(v7 - 8);
  v117 = v7;
  MEMORY[0x28223BE20](v7);
  v115 = &v95 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22BDBA794();
  v113 = *(v9 - 8);
  v114 = v9;
  MEMORY[0x28223BE20](v9);
  v112 = &v95 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22BDBA784();
  v119 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v118 = &v95 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22BBE6DE0(&qword_27D8E2ED0, &qword_22BDBD740);
  v110 = *(v13 - 8);
  v111 = v13;
  MEMORY[0x28223BE20](v13);
  v109 = &v95 - v14;
  v15 = sub_22BBE6DE0(&qword_27D8E2EE8, &qword_22BDBD760);
  v107 = *(v15 - 8);
  v108 = v15;
  MEMORY[0x28223BE20](v15);
  v106 = &v95 - v16;
  v105 = sub_22BBE6DE0(&qword_27D8E2EF8, &qword_22BDC0230);
  v104 = *(v105 - 8);
  MEMORY[0x28223BE20](v105);
  v103 = &v95 - v17;
  v102 = sub_22BDBA084();
  v101 = *(v102 - 8);
  MEMORY[0x28223BE20](v102);
  v100 = &v95 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v6 + 96);
  v99 = *(v6 + 80);
  v98 = v19;
  v123 = type metadata accessor for ToolExecutionEvent(255, v99, v19, v20);
  v21 = sub_22BDBB254();
  v120 = *(v21 - 8);
  v121 = v21;
  v22 = MEMORY[0x28223BE20](v21);
  v24 = (&v95 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v22);
  v26 = &v95 - v25;
  v122 = sub_22BDB77D4();
  v27 = *(v122 - 8);
  MEMORY[0x28223BE20](v122);
  v29 = &v95 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22BDB63F4();

  v30 = sub_22BDB77C4();
  v31 = sub_22BDBB134();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v97 = a2;
    v33 = v32;
    v34 = swift_slowAlloc();
    v95 = v11;
    v35 = v34;
    v124 = v34;
    *v33 = 136315138;
    v36 = *v3;
    v96 = v24;
    v37 = a1;
    v38 = *(v36 + 112);
    swift_beginAccess();
    v39 = v3 + v38;
    a1 = v37;
    (*(v120 + 16))(v26, v39, v121);
    v40 = sub_22BDBAC14();
    v42 = sub_22BB32EE0(v40, v41, &v124);
    v24 = v96;

    *(v33 + 4) = v42;
    _os_log_impl(&dword_22BB2C000, v30, v31, "ToolExecution: Handling %s as part of cancellation", v33, 0xCu);
    sub_22BB32FA4(v35);
    v43 = v35;
    v11 = v95;
    MEMORY[0x2318A6080](v43, -1, -1);
    v44 = v33;
    a2 = v97;
    MEMORY[0x2318A6080](v44, -1, -1);
  }

  (*(v27 + 8))(v29, v122);
  sub_22BC926B8(v45, v24);
  v46 = v123;
  result = sub_22BB3AA28(v24, 1, v123);
  if (result != 1)
  {
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        v81 = v24[2];
        v58 = v24[6];

        v60 = v104;
        v61 = v103;
        v59 = v105;
        (*(v104 + 104))(v103, *MEMORY[0x277D720A0], v105);
        goto LABEL_15;
      case 2u:
        v57 = v24[2];
        v58 = v24[6];

        v60 = v107;
        v59 = v108;
        v61 = v106;
        (*(v107 + 104))(v106, *MEMORY[0x277D720A0], v108);
LABEL_15:
        v58(v61, a1, a2);

        return (*(v60 + 8))(v61, v59);
      case 3u:
        v62 = v24[2];

        v63 = sub_22BBE6DE0(&qword_27D8E2EE0, &qword_22BDBD750);
        v64 = *(v63 + 64);

        v65 = *(v24 + *(v63 + 96));
        v67 = v109;
        v66 = v110;
        v68 = v111;
        (*(v110 + 104))(v109, *MEMORY[0x277D720A0], v111);
        v65(v67, a1, a2);

        (*(v66 + 8))(v67, v68);
        v69 = sub_22BDBA5C4();
        return (*(*(v69 - 8) + 8))(v24 + v64, v69);
      case 4u:
        v49 = *(v24 + *(sub_22BBE6DE0(&qword_27D8E2EC8, &qword_22BDBD730) + 48));
        v51 = v118;
        v50 = v119;
        (*(v119 + 104))(v118, *MEMORY[0x277D731A8], v11);
        v49(v51, a1, a2);

        (*(v50 + 8))(v51, v11);
        v52 = type metadata accessor for ActionConfirmationDialogRequest;
        return sub_22BC9D3D4(v24, v52);
      case 5u:
        v82 = v24[2];

        v83 = sub_22BBE6DE0(&qword_27D8E2EC0, &qword_22BDBD720);
        v64 = v83[16];
        v84 = v11;
        v85 = v83[20];

        v86 = *(v24 + v83[32]);
        v88 = v118;
        v87 = v119;
        (*(v119 + 104))(v118, *MEMORY[0x277D731A8], v84);
        v86(v88, a1, a2);

        (*(v87 + 8))(v88, v84);
        sub_22BB325EC(v24 + v85, &qword_27D8E2928, &qword_22BDBCFA0);
        v69 = sub_22BDBA594();
        return (*(*(v69 - 8) + 8))(v24 + v64, v69);
      case 6u:
        v89 = v24[2];

        v91 = v112;
        v90 = v113;
        v92 = v114;
        (*(v113 + 104))(v112, *MEMORY[0x277D731C8], v114);
        v89(v91, a1, a2);

        return (*(v90 + 8))(v91, v92);
      case 7u:
        v70 = v24[2];

        v71 = sub_22BBE6DE0(&qword_27D8E2EA0, &unk_22BDC05E0);
        v72 = *(v71 + 48);

        v73 = *(v24 + *(v71 + 96));
        v75 = v118;
        v74 = v119;
        (*(v119 + 104))(v118, *MEMORY[0x277D731A8], v11);
        v73(v75, a1, a2);

        (*(v74 + 8))(v75, v11);
        v55 = v24 + v72;
        goto LABEL_12;
      case 8u:
        v93 = *(v24 + *(sub_22BBE6DE0(&qword_27D8E2E90, &qword_22BDBD6D0) + 48));
        v94 = v115;
        sub_22BDBA864();
        v93(v94, a1, a2);

        (*(v116 + 8))(v94, v117);
        v52 = type metadata accessor for FollowUpActionRequest;
        return sub_22BC9D3D4(v24, v52);
      case 9u:
        v53 = v24[2];

        v54 = *(sub_22BBE6DE0(&qword_27D8E2EB8, &qword_22BDBD710) + 48);

        v55 = v24 + v54;
LABEL_12:
        result = sub_22BB325EC(v55, &qword_27D8E2928, &qword_22BDBCFA0);
        break;
      case 0xAu:
      case 0xCu:
        result = (*(*(v46 - 8) + 8))(v24, v46);
        break;
      case 0xBu:
        v56 = type metadata accessor for TypedValueExecutionResult(0, v99, v98, v48);
        result = (*(*(v56 - 8) + 8))(v24, v56);
        break;
      default:
        v76 = v24[2];
        v77 = v24[5];

        v78 = v101;
        v79 = v100;
        v80 = v102;
        (*(v101 + 104))(v100, *MEMORY[0x277D722B0], v102);
        v77(v79, a1, a2);

        result = (*(v78 + 8))(v79, v80);
        break;
    }
  }

  return result;
}

uint64_t sub_22BC97A60(uint64_t a1, uint64_t a2)
{
  v222 = a2;
  v214 = a1;
  sub_22BDB77D4();
  sub_22BB30444();
  v224 = v5;
  v225 = v4;
  MEMORY[0x28223BE20](v4);
  sub_22BB30574();
  v223 = v7 - v6;
  v8 = sub_22BBE6DE0(&qword_27D8E2F80, &qword_22BDC0600);
  v9 = sub_22BB2F0C8(v8);
  MEMORY[0x28223BE20](v9);
  sub_22BB30C74();
  v209 = v10 - v11;
  sub_22BB30B70();
  MEMORY[0x28223BE20](v12);
  sub_22BB2F39C();
  v208 = v13;
  v14 = sub_22BBE6DE0(&qword_27D8E2F78, &unk_22BDBD980);
  v15 = sub_22BB2F0C8(v14);
  MEMORY[0x28223BE20](v15);
  sub_22BB30C74();
  v211 = v16 - v17;
  sub_22BB30B70();
  MEMORY[0x28223BE20](v18);
  sub_22BB2F39C();
  v210 = v19;
  sub_22BB36F5C();
  sub_22BB36F5C();
  v21 = *(v20 + 96);
  v207 = v22;
  v206 = v21;
  type metadata accessor for ToolExecutionEvent(0, v22, v21, v23);
  sub_22BB30444();
  v212 = v25;
  v213 = v24;
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v26);
  v215 = &v205 - v27;
  v220 = sub_22BDB8E14();
  sub_22BB30444();
  v227 = v28;
  MEMORY[0x28223BE20](v29);
  sub_22BB30C74();
  v217 = v30 - v31;
  sub_22BB30B70();
  MEMORY[0x28223BE20](v32);
  v216 = &v205 - v33;
  sub_22BB30B70();
  MEMORY[0x28223BE20](v34);
  v219 = &v205 - v35;
  sub_22BB30B70();
  MEMORY[0x28223BE20](v36);
  sub_22BB2F39C();
  v218 = v37;
  v221 = sub_22BDB4C34();
  sub_22BB30444();
  v39 = v38;
  MEMORY[0x28223BE20](v40);
  sub_22BB30C74();
  v43 = v41 - v42;
  MEMORY[0x28223BE20](v44);
  v46 = &v205 - v45;
  v47 = sub_22BBE6DE0(&qword_27D8E3A80, &qword_22BDC0608);
  sub_22BB2F0C8(v47);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v48);
  sub_22BB334AC();
  v49 = sub_22BDB9564();
  sub_22BB30444();
  v51 = v50;
  MEMORY[0x28223BE20](v52);
  sub_22BB30574();
  v55 = v54 - v53;
  v56 = qword_28142F458;
  sub_22BB31B88();
  swift_beginAccess();
  v57 = v2 + v56;
  v58 = v49;
  sub_22BB3CD70(v57, v3, &qword_27D8E3A80, &qword_22BDC0608);
  if (sub_22BB3AA28(v3, 1, v49) == 1)
  {
    sub_22BB325EC(v3, &qword_27D8E3A80, &qword_22BDC0608);
    v59 = v223;
    sub_22BDB63F4();
    v60 = sub_22BDB77C4();
    v61 = sub_22BDBB114();
    if (os_log_type_enabled(v60, v61))
    {
      sub_22BB2F114();
      v62 = swift_slowAlloc();
      *v62 = 0;
      _os_log_impl(&dword_22BB2C000, v60, v61, "ToolExecution: Not checking action requirements given this execution was initialized without an action value", v62, 2u);
      sub_22BB2F368();
      MEMORY[0x2318A6080]();
    }

    (*(v224 + 8))(v59, v225);
    goto LABEL_5;
  }

  v63 = v51;
  (*(v51 + 32))(v55, v3, v58);
  v64 = v222;
  sub_22BDB8174();
  sub_22BDB8174();
  sub_22BB33728();
  v65 = sub_22BDB4C04();
  v66 = *(v39 + 8);
  v66(v43, v221);
  v67 = sub_22BB33728();
  (v66)(v67);
  v68 = v55;
  if (v65)
  {
    v225 = v63;
    v223 = v58;
    v69 = v218;
    sub_22BDB9544();
    v70 = sub_22BDB8E04();
    v46 = v71;
    v72 = (v227 + 1);
    v73 = v227[1];
    v73(v69, v220);
    v224 = v68;
    sub_22BDB9544();
    v74 = sub_22BDB8E04();
    v76 = v75;
    v77 = sub_22BB2F12C();
    v227 = v72;
    (v73)(v77);
    if (v70 == v74 && v46 == v76)
    {

      sub_22BB319EC();
    }

    else
    {
      sub_22BB35FA0();
      v82 = sub_22BB8AB80(v79, v80, v81);

      sub_22BB319EC();
      if ((v82 & 1) == 0)
      {
        goto LABEL_37;
      }
    }

    v83 = sub_22BDB9554();
    v46 = v84;
    v85 = sub_22BDB9554();
    LOBYTE(v87) = v86;
    if (v46)
    {
      if (!v86)
      {
        goto LABEL_36;
      }

      if (v83 == v85 && v46 == v86)
      {
      }

      else
      {
        v89 = sub_22BB8AB80(v83, v46, v85);

        if ((v89 & 1) == 0)
        {
          goto LABEL_37;
        }
      }
    }

    else if (v86)
    {
      goto LABEL_34;
    }

    v90 = v216;
    sub_22BDB9544();
    v91 = sub_22BDB8DC4();
    v46 = v92;
    v93 = v220;
    v94 = v227;
    v73(v90, v220);
    v95 = v217;
    sub_22BDB9544();
    v96 = sub_22BDB8DC4();
    v87 = v97;
    v73(v95, v93);
    if (v46)
    {
      if (v87)
      {
        v98 = v91 == v96 && v46 == v87;
        v94 = v223;
        if (v98)
        {

          v96 = v224;
        }

        else
        {
          sub_22BB35FA0();
          v102 = sub_22BB8AB80(v99, v100, v101);

          v96 = v224;
          if ((v102 & 1) == 0)
          {
            goto LABEL_37;
          }
        }

        goto LABEL_41;
      }

      sub_22BB319EC();
LABEL_36:

      goto LABEL_37;
    }

    sub_22BB319EC();
    if (!v87)
    {
LABEL_41:
      sub_22BDB9524();
      sub_22BDB9524();
      v107 = sub_22BB31F54();
      v109 = sub_22BC9106C(v107, v108);

      if (v109)
      {
        v110 = sub_22BB39744();
        v111(v110);
LABEL_5:
        LOBYTE(v46) = 1;
        return v46 & 1;
      }

      v112 = sub_22BDB9524();
      v113 = sub_22BD1D1B4(v112);
      v114 = sub_22BDB9524();
      v115 = sub_22BD1D1B4(v114);
      v116 = v96;
      MEMORY[0x28223BE20](v115);
      *(&v205 - 2) = v96;
      *(&v205 - 1) = v64;
      v117 = v226;
      v118 = sub_22BC99200(0, sub_22BC9D7AC, (&v205 - 4), v113);
      v119 = v117;
      if (v118 > 1)
      {

        (*(v225 + 8))(v96, v94);
LABEL_55:
        LOBYTE(v46) = 0;
        return v46 & 1;
      }

      v120 = v118;
      v121 = sub_22BB31F54();
      v123 = sub_22BC91514(v121, v122);
      if (!v120 && (v123 & 1) != 0)
      {

        (*(v225 + 8))(v224, v94);
        LOBYTE(v46) = 1;
        return v46 & 1;
      }

      v124 = sub_22BB2F324();
      v126 = *(sub_22BC99354(v124, v125) + 16);

      v127 = v224;
      v128 = v225;
      if (v126)
      {

        (*(v128 + 8))(v127, v94);
        goto LABEL_55;
      }

      v129 = sub_22BB31F54();
      v131 = sub_22BC99354(v129, v130);

      if (v131[2] > 1uLL)
      {

LABEL_54:
        (*(v128 + 8))(v224, v94);
        goto LABEL_55;
      }

      v133 = v212;
      v132 = v213;
      v134 = v215;
      (*(v212 + 16))(v215, v214, v213);
      switch(swift_getEnumCaseMultiPayload())
      {
        case 1u:
          sub_22BB3E198();

          if (!v117)
          {
            goto LABEL_75;
          }

          v139 = sub_22BDB9524();
          v140 = sub_22BB31B54();
          sub_22BD80EEC(v140, v141, v139, v142);

          v143 = sub_22BDB9504();
          v144 = sub_22BB3A840();
          if (sub_22BB3AA28(v144, v145, v143) == 1)
          {

            sub_22BB325EC(v208, &qword_27D8E2F80, &qword_22BDC0600);
            sub_22BDB5284();
            sub_22BB30B28();
            sub_22BB336D0(v146, v147, v148, v149);
LABEL_82:
            v193 = v210;
            goto LABEL_86;
          }

          v188 = v208;
          sub_22BDB94C4();
          sub_22BB30474();
          (*(v189 + 8))(v188, v143);
          v190 = sub_22BDB5284();
          v191 = sub_22BB3A840();
          if (sub_22BB3AA28(v191, v192, v190) == 1)
          {

            goto LABEL_82;
          }

          sub_22BB30418();
          v200 = v199;
          if ((*(v201 + 88))(v210, v190) != *MEMORY[0x277D1CAF0])
          {

            (*(v200 + 8))(v210, v190);
LABEL_87:
            (*(v128 + 8))(v116, v94);
            LOBYTE(v46) = 0;
            return v46 & 1;
          }

LABEL_68:
          if (v227[2])
          {
            v173 = sub_22BC740CC(v227);
            v175 = v174;

            if (!v175)
            {
              LOBYTE(v46) = 0;
LABEL_97:

              (*(v128 + 8))(v116, v94);
              return v46 & 1;
            }

            if (v132 == v173 && v119 == v175)
            {
              LOBYTE(v46) = 1;
            }

            else
            {
              v177 = sub_22BB31B54();
              LOBYTE(v46) = sub_22BB8AB80(v177, v178, v173);
            }

            v227 = v175;
          }

          else
          {
            LOBYTE(v46) = 1;
          }

          goto LABEL_97;
        case 2u:
          sub_22BB3E198();

          if (!v117)
          {
            goto LABEL_75;
          }

          v157 = sub_22BDB9524();
          v158 = sub_22BB31B54();
          sub_22BD80EEC(v158, v159, v157, v160);

          v161 = sub_22BDB9504();
          v162 = sub_22BB3A840();
          if (sub_22BB3AA28(v162, v163, v161) == 1)
          {

            sub_22BB325EC(v209, &qword_27D8E2F80, &qword_22BDC0600);
            sub_22BDB5284();
            sub_22BB30B28();
            sub_22BB336D0(v164, v165, v166, v167);
          }

          else
          {
            v194 = v209;
            sub_22BDB94C4();
            sub_22BB30474();
            (*(v195 + 8))(v194, v161);
            v196 = sub_22BDB5284();
            v197 = sub_22BB3A840();
            if (sub_22BB3AA28(v197, v198, v196) != 1)
            {
              sub_22BB30418();
              v203 = v202;
              if ((*(v204 + 88))(v211, v196) == *MEMORY[0x277D1CAF0])
              {
                goto LABEL_68;
              }

              (*(v203 + 8))(v211, v196);
              goto LABEL_87;
            }
          }

          v193 = v211;
LABEL_86:
          sub_22BB325EC(v193, &qword_27D8E2F78, &unk_22BDBD980);
          goto LABEL_87;
        case 3u:
          v227 = v131;
          v116 = v224;
          v226 = v117;
          v168 = *(v134 + 16);

          v169 = sub_22BBE6DE0(&qword_27D8E2EE0, &qword_22BDBD750);
          v170 = v169[16];
          v171 = (v134 + v169[20]);
          v132 = *v171;
          v119 = v171[1];
          sub_22BB6B644(v169[24]);

          sub_22BDBA5C4();
          sub_22BB31F70();
          (*(v172 + 8))(v134 + v170);
          if (v119)
          {
            goto LABEL_68;
          }

LABEL_75:

          LOBYTE(v46) = type metadata accessor for RuntimeError(0);
          sub_22BB31C10();
          sub_22BC9D714(v179, v180);
          sub_22BB369E0();
          swift_allocError();
          swift_storeEnumTagMultiPayload();
          swift_willThrow();
          goto LABEL_38;
        case 4u:

          v155 = sub_22BBE6DE0(&qword_27D8E2EC8, &qword_22BDBD730);
          sub_22BB6B644(*(v155 + 48));

          v156 = type metadata accessor for ActionConfirmationDialogRequest;
          goto LABEL_77;
        case 5u:

          v182 = *(v134 + 16);

          v183 = sub_22BBE6DE0(&qword_27D8E2EC0, &qword_22BDBD720);
          v184 = *(v183 + 64);
          v185 = v134;
          v186 = *(v183 + 80);

          sub_22BB325EC(v185 + v186, &qword_27D8E2928, &qword_22BDBCFA0);
          sub_22BDBA594();
          sub_22BB31F70();
          (*(v187 + 8))(v185 + v184);
          goto LABEL_54;
        case 7u:

          v152 = *(v134 + 16);

          v153 = sub_22BBE6DE0(&qword_27D8E2EA0, &unk_22BDC05E0);
          v154 = v153[12];
          sub_22BB6B644(v153[16]);

          sub_22BB6B644(v153[20]);

          sub_22BB6B644(v153[24]);

          v138 = v134 + v154;
          goto LABEL_62;
        case 8u:

          v181 = sub_22BBE6DE0(&qword_27D8E2E90, &qword_22BDBD6D0);
          sub_22BB6B644(*(v181 + 48));

          v156 = type metadata accessor for FollowUpActionRequest;
LABEL_77:
          sub_22BC9D3D4(v134, v156);
          goto LABEL_54;
        case 9u:

          v135 = *(v134 + 16);

          v136 = sub_22BBE6DE0(&qword_27D8E2EB8, &qword_22BDBD710);
          v137 = *(v136 + 48);
          sub_22BB6B644(*(v136 + 64));

          v138 = v134 + v137;
LABEL_62:
          sub_22BB325EC(v138, &qword_27D8E2928, &qword_22BDBCFA0);
          goto LABEL_54;
        case 0xBu:

          type metadata accessor for TypedValueExecutionResult(0, v207, v206, v150);
          sub_22BB31F70();
          (*(v151 + 8))(v134);
          goto LABEL_54;
        default:

          (*(v133 + 8))(v134, v132);
          goto LABEL_54;
      }
    }

LABEL_34:
    LOBYTE(v46) = v87;
    goto LABEL_36;
  }

LABEL_37:
  sub_22BC9D758();
  sub_22BB369E0();
  swift_allocError();
  *v103 = 1;
  swift_willThrow();
LABEL_38:
  v104 = sub_22BB39744();
  v105(v104);
  return v46 & 1;
}

uint64_t sub_22BC98C08@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X3>, void *a4@<X8>)
{
  v44 = a3;
  v43 = a4;
  v47 = sub_22BDB8CB4();
  v42 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v40 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_22BBE6DE0(&qword_27D8E3A98, &qword_22BDC0618);
  MEMORY[0x28223BE20](v45);
  v8 = &v40 - v7;
  v9 = sub_22BBE6DE0(&qword_27D8E2F80, &qword_22BDC0600);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v40 - v13;
  v15 = sub_22BBE6DE0(&qword_27D8E3AA0, &unk_22BDC0620);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v41 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v40 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v40 - v21;
  v46 = *a1;
  v24 = *a2;
  v23 = a2[1];
  v25 = sub_22BDB9524();
  sub_22BD80EEC(v24, v23, v25, v14);

  v26 = sub_22BDB9504();
  if (sub_22BB3AA28(v14, 1, v26) == 1)
  {
    sub_22BB325EC(v14, &qword_27D8E2F80, &qword_22BDC0600);
    v27 = 1;
  }

  else
  {
    sub_22BDB94F4();
    (*(*(v26 - 8) + 8))(v14, v26);
    v27 = 0;
  }

  sub_22BB336D0(v22, v27, 1, v47);
  v28 = sub_22BDB9524();
  sub_22BD80EEC(v24, v23, v28, v12);

  if (sub_22BB3AA28(v12, 1, v26) == 1)
  {
    sub_22BB325EC(v12, &qword_27D8E2F80, &qword_22BDC0600);
    v29 = 1;
  }

  else
  {
    sub_22BDB94F4();
    (*(*(v26 - 8) + 8))(v12, v26);
    v29 = 0;
  }

  v30 = v47;
  sub_22BB336D0(v20, v29, 1, v47);
  v31 = *(v45 + 48);
  sub_22BB3CD70(v22, v8, &qword_27D8E3AA0, &unk_22BDC0620);
  sub_22BB3CD70(v20, &v8[v31], &qword_27D8E3AA0, &unk_22BDC0620);
  if (sub_22BB3AA28(v8, 1, v30) == 1)
  {
    sub_22BB325EC(v20, &qword_27D8E3AA0, &unk_22BDC0620);
    sub_22BB325EC(v22, &qword_27D8E3AA0, &unk_22BDC0620);
    if (sub_22BB3AA28(&v8[v31], 1, v30) == 1)
    {
      result = sub_22BB325EC(v8, &qword_27D8E3AA0, &unk_22BDC0620);
      v33 = v46;
LABEL_14:
      *v43 = v33;
      return result;
    }

    goto LABEL_12;
  }

  v34 = v41;
  sub_22BB3CD70(v8, v41, &qword_27D8E3AA0, &unk_22BDC0620);
  if (sub_22BB3AA28(&v8[v31], 1, v30) == 1)
  {
    sub_22BB325EC(v20, &qword_27D8E3AA0, &unk_22BDC0620);
    sub_22BB325EC(v22, &qword_27D8E3AA0, &unk_22BDC0620);
    (*(v42 + 8))(v34, v30);
LABEL_12:
    result = sub_22BB325EC(v8, &qword_27D8E3A98, &qword_22BDC0618);
    v33 = v46;
    goto LABEL_13;
  }

  v36 = v42;
  v37 = &v8[v31];
  v38 = v40;
  (*(v42 + 32))(v40, v37, v30);
  sub_22BC9D714(&qword_27D8E3AA8, MEMORY[0x277D1E048]);
  LODWORD(v45) = sub_22BDBABD4();
  v39 = *(v36 + 8);
  v39(v38, v30);
  sub_22BB325EC(v20, &qword_27D8E3AA0, &unk_22BDC0620);
  sub_22BB325EC(v22, &qword_27D8E3AA0, &unk_22BDC0620);
  v39(v34, v30);
  result = sub_22BB325EC(v8, &qword_27D8E3AA0, &unk_22BDC0620);
  v33 = v46;
  if (v45)
  {
    goto LABEL_14;
  }

LABEL_13:
  if (!__OFADD__(v33++, 1))
  {
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

uint64_t sub_22BC99200(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t *, void *), uint64_t a3, uint64_t a4)
{
  v20 = a1;
  v6 = a1;
  v7 = a4 + 56;
  v8 = 1 << *(a4 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a4 + 56);
  v11 = (v8 + 63) >> 6;

  v13 = 0;
  if (v10)
  {
    while (1)
    {
      v14 = v13;
LABEL_8:
      v15 = (*(a4 + 48) + ((v14 << 10) | (16 * __clz(__rbit64(v10)))));
      v16 = v15[1];
      v19[0] = *v15;
      v19[1] = v16;

      a2(&v18, &v20, v19);
      if (v4)
      {
        break;
      }

      v10 &= v10 - 1;

      v6 = v18;
      v20 = v18;
      v13 = v14;
      if (!v10)
      {
        goto LABEL_5;
      }
    }

    return v6;
  }

  else
  {
LABEL_5:
    while (1)
    {
      v14 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v14 >= v11)
      {

        return v6;
      }

      v10 = *(v7 + 8 * v14);
      ++v13;
      if (v10)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_22BC99354(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) <= *(a2 + 16) >> 3)
  {
    sub_22BC9D9E4(a1);
    return a2;
  }

  else
  {

    return sub_22BC9DB10(a1, a2);
  }
}

uint64_t sub_22BC993A8()
{
  sub_22BB2F35C();
  v1[5] = v2;
  v1[6] = v0;
  v1[3] = v3;
  v1[4] = v4;
  v1[2] = v5;
  v6 = sub_22BDBA794();
  v1[7] = v6;
  sub_22BB30434(v6);
  v1[8] = v7;
  v1[9] = sub_22BB30ACC();
  v8 = sub_22BDB5284();
  v1[10] = v8;
  sub_22BB30434(v8);
  v1[11] = v9;
  v1[12] = sub_22BBB79B0();
  v1[13] = swift_task_alloc();
  v10 = sub_22BDBA784();
  v1[14] = v10;
  sub_22BB30434(v10);
  v1[15] = v11;
  v1[16] = sub_22BB30ACC();
  v12 = sub_22BBE6DE0(&qword_27D8E2ED0, &qword_22BDBD740);
  v1[17] = v12;
  sub_22BB30434(v12);
  v1[18] = v13;
  v1[19] = sub_22BB30ACC();
  v14 = sub_22BDB8CB4();
  v1[20] = v14;
  sub_22BB30434(v14);
  v1[21] = v15;
  v1[22] = sub_22BB30ACC();
  v16 = sub_22BDBA594();
  v1[23] = v16;
  sub_22BB30434(v16);
  v1[24] = v17;
  v1[25] = sub_22BBB79B0();
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v18 = sub_22BBE6DE0(&qword_27D8E2EE8, &qword_22BDBD760);
  v1[28] = v18;
  sub_22BB30434(v18);
  v1[29] = v19;
  v1[30] = sub_22BB30ACC();
  v20 = type metadata accessor for DisambiguationListItem(0);
  sub_22BB30434(v20);
  v1[31] = v21;
  v1[32] = sub_22BB30ACC();
  v22 = sub_22BBE6DE0(&qword_27D8E2EF8, &qword_22BDC0230);
  v1[33] = v22;
  sub_22BB30434(v22);
  v1[34] = v23;
  v1[35] = sub_22BB30ACC();
  v24 = sub_22BBE6DE0(&qword_27D8E2F78, &unk_22BDBD980);
  sub_22BB2F0C8(v24);
  v1[36] = sub_22BBB79B0();
  v1[37] = swift_task_alloc();
  v1[38] = swift_task_alloc();
  v25 = sub_22BBE6DE0(&qword_27D8E2F80, &qword_22BDC0600);
  sub_22BB2F0C8(v25);
  v1[39] = sub_22BBB79B0();
  v1[40] = swift_task_alloc();
  v1[41] = swift_task_alloc();
  v1[42] = swift_task_alloc();
  v26 = sub_22BDB9504();
  v1[43] = v26;
  sub_22BB30434(v26);
  v1[44] = v27;
  v1[45] = sub_22BBB79B0();
  v1[46] = swift_task_alloc();
  v1[47] = swift_task_alloc();
  v1[48] = swift_task_alloc();
  v28 = sub_22BDBA084();
  v1[49] = v28;
  sub_22BB30434(v28);
  v1[50] = v29;
  v1[51] = sub_22BB30ACC();
  sub_22BB36F5C();
  v1[52] = *(v30 + 80);
  sub_22BB36F5C();
  v32 = *(v31 + 96);
  v1[53] = v32;
  v35 = type metadata accessor for ToolExecutionEvent(0, v33, v32, v34);
  v1[54] = v35;
  sub_22BB30434(v35);
  v1[55] = v36;
  v1[56] = sub_22BB3307C();
  v1[57] = swift_task_alloc();
  v1[58] = swift_task_alloc();
  v37 = sub_22BDB77D4();
  v1[59] = v37;
  sub_22BB30434(v37);
  v1[60] = v38;
  v1[61] = sub_22BB3307C();
  v1[62] = swift_task_alloc();
  v1[63] = swift_task_alloc();
  v1[64] = swift_task_alloc();
  v1[65] = swift_task_alloc();
  v1[66] = swift_task_alloc();
  v1[67] = swift_task_alloc();
  v1[68] = swift_task_alloc();
  v1[69] = swift_task_alloc();
  v39 = sub_22BDB4C34();
  v1[70] = v39;
  sub_22BB30434(v39);
  v1[71] = v40;
  v1[72] = sub_22BB3307C();
  v1[73] = swift_task_alloc();
  v41 = sub_22BB355F0();

  return MEMORY[0x2822009F8](v41, v42, v43);
}

uint64_t sub_22BC999E4(uint64_t a1)
{
  v2319 = v1;
  v2 = v1;
  v3 = sub_22BDB9524();
  sub_22BDB8174();
  v2288 = sub_22BDB9494();
  sub_22BDB63F4();
  sub_22BB35FA0();
  v4();

  v5 = sub_22BDB77C4();
  v6 = sub_22BDBB134();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v2[69];
  v9 = v2[59];
  v10 = v2[60];
  v2312 = v3;
  if (v7)
  {
    v2303 = v2;
    v11 = swift_slowAlloc();
    v2318[0] = swift_slowAlloc();
    *v11 = 136315650;
    sub_22BB6BA68();
    sub_22BC9D714(v12, v13);
    v2267 = v9;
    v2279 = v8;
    v14 = sub_22BDBB684();
    v16 = v15;
    v17 = sub_22BB2F324();
    v2294 = v18;
    (v18)(v17);
    v19 = sub_22BB32EE0(v14, v16, v2318);

    *(v11 + 4) = v19;
    *(v11 + 12) = 2080;
    v20 = sub_22BDBAAF4();
    v22 = sub_22BB32EE0(v20, v21, v2318);

    *(v11 + 14) = v22;
    *(v11 + 22) = 1024;
    *(v11 + 24) = v2288 & 1;
    _os_log_impl(&dword_22BB2C000, v5, v6, "ToolExecution: Updating execution of %s with parameters - %s confirmation value %{BOOL}d", v11, 0x1Cu);
    swift_arrayDestroy();
    sub_22BB2F368();
    MEMORY[0x2318A6080]();
    v2 = v2303;
    sub_22BB2F368();
    MEMORY[0x2318A6080]();

    v23 = *(v10 + 8);
    v23(v2279, v2267);
  }

  else
  {

    v24 = sub_22BB2F324();
    v2294 = v25;
    (v25)(v24);
    v23 = *(v10 + 8);
    v23(v8, v9);
  }

  v26 = v2[55];
  v27 = v2[2];
  sub_22BDB63F4();
  v30 = *(v26 + 16);
  v28 = v26 + 16;
  v29 = v30;
  v31 = sub_22BB33728();
  (v30)(v31);
  v32 = sub_22BDB77C4();
  v33 = sub_22BDBB134();
  v34 = os_log_type_enabled(v32, v33);
  v35 = v2[68];
  v2304 = v2[59];
  v36 = v2[58];
  if (v34)
  {
    v2254 = v33;
    v37 = v2[57];
    v2268 = v23;
    v2280 = v29;
    v38 = v2[54];
    v39 = v2[55];
    log = v32;
    v40 = sub_22BB31AD8();
    v2260 = v35;
    v41 = swift_slowAlloc();
    v2318[0] = v41;
    *v40 = 136315138;
    v2280(v37, v36, v38);
    sub_22BB345A8();
    v42 = sub_22BDBAC14();
    v44 = v43;
    v45 = *(v39 + 8);
    v46 = v38;
    v27 = v2268;
    v45(v36, v46);
    v29 = v2280;
    v47 = sub_22BB32EE0(v42, v44, v2318);

    *(v40 + 4) = v47;
    _os_log_impl(&dword_22BB2C000, log, v2254, "ToolExecution: Attempting to respond to event: %s", v40, 0xCu);
    sub_22BB32FA4(v41);
    sub_22BB2F368();
    MEMORY[0x2318A6080]();
    v48 = v45;
    v23 = v2268;
    sub_22BB2F368();
    MEMORY[0x2318A6080]();

    v2268(v2260, v2304);
  }

  else
  {
    v49 = v2[54];
    v50 = v2[55];

    v51 = *(v50 + 8);
    v42 = (v50 + 8);
    v48 = v51;
    (v51)(v36, v49);
    v23(v35, v2304);
  }

  v52 = v2[56];
  v29(v52, v2[2], v2[54]);
  sub_22BB2F324();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_22BB347B4();

      if (!v52)
      {
        goto LABEL_42;
      }

      v87 = v2[42];
      v86 = v2[43];
      sub_22BB6BE44();

      sub_22BB36B74(v87);
      if (v88)
      {
        sub_22BB8AC30();
        v89 = v42[42];
        goto LABEL_33;
      }

      v2315 = v27;
      v309 = v2[38];
      v276 = v2;
      v310 = v2[10];

      v311 = sub_22BB8DCA0();
      v312(v311);
      sub_22BDB94C4();
      v313 = sub_22BB3AA28(v309, 1, v310);
      v314 = v276[38];
      if (v313 == 1)
      {

        sub_22BB325EC(v314, &qword_27D8E2F78, &unk_22BDBD980);
LABEL_87:
        v690 = v276[48];
        goto LABEL_88;
      }

      v648 = (*(v276[11] + 88))(v276[38], v276[10]);
      v649 = v276[38];
      if (v648 != *MEMORY[0x277D1CAF0])
      {

        v677 = sub_22BB2F324();
        v678(v677);
        goto LABEL_87;
      }

      v650 = sub_22BB2F324();
      v651(v650);
      v652 = *v649;
      if (*v649 >= *(v48 + 2))
      {

        goto LABEL_87;
      }

      sub_22BDB63F4();
      v653 = sub_22BDB77C4();
      v654 = sub_22BDBB134();
      if (sub_22BB34888(v654))
      {
        v655 = sub_22BB31AD8();
        *v655 = 134217984;
        *(v655 + 4) = v652;
        sub_22BB395F0(&dword_22BB2C000, v656, v657, "ToolExecution: Disambiguating with index: %ld");
        sub_22BB2F368();
        MEMORY[0x2318A6080]();
      }

      v658 = sub_22BB31B54();
      result = (v23)(v658);
      if ((v652 & 0x8000000000000000) != 0)
      {
        goto LABEL_99;
      }

      if (v652 >= *(v48 + 2))
      {
        goto LABEL_101;
      }

      v659 = v276[73];
      v2300 = v276[70];
      v2286 = v276[48];
      v660 = v276[44];
      v661 = v276[34];
      v662 = v276[35];
      v663 = v276[32];
      v664 = v276[33];
      v2265 = v276[5];
      v2277 = v276[43];
      v2258 = v276[4];
      sub_22BB5184C();
      sub_22BB3B328();
      sub_22BC9E554(v665, v663, v666);

      v668 = *v663;
      v667 = v663[1];

      sub_22BB386EC();
      sub_22BC9D3D4(v663, v669);
      *v662 = v668;
      v662[1] = v667;
      (*(v661 + 104))(v662, *MEMORY[0x277D72098], v664);
      (v2315)(v662, v2258, v2265);

      v670 = v662;
      v2 = v276;
      (*(v661 + 8))(v670, v664);
      (*(v660 + 8))(v2286, v2277);
      v163 = v659;
      goto LABEL_74;
    case 2u:
      sub_22BB347B4();

      if (!v52)
      {
LABEL_42:
        sub_22BB3FDD8();

        type metadata accessor for RuntimeError(0);
        sub_22BB31C10();
        v218 = sub_22BC9D714(v216, v217);
        v219 = sub_22BB38D10(v218);
        sub_22BB51330(v219, v220);
        v221 = swift_storeEnumTagMultiPayload();
        sub_22BB6C6D4(v221, v222, v223, v224, v225, v226, v227, v228, v969);

LABEL_89:
        v178 = sub_22BB2F324();
LABEL_90:
        v2294(v178, v179);
        goto LABEL_91;
      }

      v86 = v2[43];
      v87 = v2[41];
      sub_22BB6BE44();

      sub_22BB36B74(v87);
      if (v88)
      {
        sub_22BB8AC30();
        v89 = v42[41];
LABEL_33:

        sub_22BB325EC(v89, &qword_27D8E2F80, &qword_22BDC0600);
        sub_22BBDB89C();
        sub_22BB35AA4();
        v166 = sub_22BC9D714(v164, v165);
        v167 = sub_22BB38D10(v166);
        sub_22BB51330(v167, v168);
        *v169 = v28;
        v169[1] = v52;
        v170 = swift_storeEnumTagMultiPayload();
        sub_22BB6C6D4(v170, v171, v172, v173, v174, v175, v176, v177, v969);

        v2 = v42;
        v178 = v86;
        v179 = v87;
        goto LABEL_90;
      }

      v2313 = v27;
      v275 = v2[37];
      v276 = v2;
      v277 = v2[10];

      v278 = sub_22BB8DCA0();
      v279(v278);
      sub_22BDB94C4();
      v280 = sub_22BB3AA28(v275, 1, v277);
      v281 = v276[37];
      if (v280 == 1)
      {

        sub_22BB325EC(v281, &qword_27D8E2F78, &unk_22BDBD980);
        goto LABEL_85;
      }

      v338 = (*(v276[11] + 88))(v276[37], v276[10]);
      v339 = v276[37];
      if (v338 != *MEMORY[0x277D1CAF0])
      {

        v675 = sub_22BB2F324();
        v676(v675);
        goto LABEL_85;
      }

      v340 = sub_22BB2F324();
      v341(v340);
      v342 = *v339;
      if (*v339 >= *(v48 + 2))
      {

LABEL_85:
        v690 = v276[47];
LABEL_88:
        v691 = v276[43];
        v692 = v276[44];
        sub_22BBDB89C();
        sub_22BB35AA4();
        v695 = sub_22BC9D714(v693, v694);
        sub_22BB38D10(v695);
        (*(v692 + 16))(v696, v690, v691);
        swift_storeEnumTagMultiPayload();
        swift_willThrow();

        v697 = sub_22BB32E04();
        v698(v697);
        v2 = v276;
        goto LABEL_89;
      }

      sub_22BDB63F4();
      v343 = sub_22BDB77C4();
      v344 = sub_22BDBB134();
      if (sub_22BB34888(v344))
      {
        v345 = sub_22BB31AD8();
        *v345 = 134217984;
        *(v345 + 4) = v342;
        sub_22BB395F0(&dword_22BB2C000, v346, v347, "ToolExecution: Disambiguating with index: %ld");
        sub_22BB2F368();
        MEMORY[0x2318A6080]();
      }

      v348 = sub_22BB31B54();
      (v23)(v348);
      sub_22BBE6DE0(&qword_27D8E2B48, &qword_22BDBD250);
      result = swift_allocObject();
      *(result + 16) = xmmword_22BDBCBD0;
      if ((v342 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_99:
        __break(1u);
LABEL_100:
        __break(1u);
LABEL_101:
        __break(1u);
      }

      else
      {
        if (v342 >= *(v48 + 2))
        {
          goto LABEL_100;
        }

        v350 = result;
        v2300 = v276[70];
        v2284 = v276[47];
        v351 = v276[44];
        v2263 = v276[73];
        v2274 = v276[43];
        v352 = v276[32];
        v353 = v276[29];
        v354 = v276[30];
        v355 = v276[28];
        loge = v276[4];
        v2256 = v276[5];
        sub_22BB5184C();
        sub_22BB3B328();
        sub_22BC9E554(v356, v352, v357);

        v359 = *v352;
        v358 = v352[1];

        sub_22BB386EC();
        sub_22BC9D3D4(v352, v360);
        *(v350 + 32) = v359;
        *(v350 + 40) = v358;
        *v354 = v350;
        (*(v353 + 104))(v354, *MEMORY[0x277D72098], v355);
        v2313(v354, loge, v2256);

        v361 = v354;
        v2 = v276;
        (*(v353 + 8))(v361, v355);
        (*(v351 + 8))(v2284, v2274);
        v163 = v2263;
LABEL_74:
        v162 = v2300;
LABEL_38:
        v2294(v163, v162);
LABEL_66:
        v377 = v2[73];
        v378 = v2[72];
        v379 = v2[69];
        v380 = v2[68];
        v381 = v2;
        v382 = v2[67];
        v383 = v381[66];
        v384 = v381[65];
        v385 = v381[63];
        v386 = v381[64];
        v387 = v381[62];
        v2232 = v381[36];
        v2237 = v381[35];
        v2241 = v381[32];
        logg = v381[30];
        v2257 = v381[27];
        v2264 = v381[26];
        v2276 = v381[25];
        v2285 = v381[22];
        v2292 = v381[19];
        v2295 = v381[16];
        v2301 = v381[13];
        v2310 = v381[12];
        v2316 = v381[9];
        v377, v55, v56, v57, v58, v59, v60, v61, v969, v1044, v381[61], v381[58], v381[57], v381[56], v381[51], v381[48], v381[47], v381[46], v381[45], v381[42], v381[41], v381[40], v381[39], v381[38], v381[37];
        v378, v388, v389, v390, v391, v392, v393, v394, v970, v1045, v1119, v1193, v1267, v1341, v1415, v1489, v1563, v1637, v1711, v1785, v1859, v1933, v2007, v2082, v2157;
        v379, v395, v396, v397, v398, v399, v400, v401, v971, v1046, v1120, v1194, v1268, v1342, v1416, v1490, v1564, v1638, v1712, v1786, v1860, v1934, v2008, v2083, v2158;
        v380, v402, v403, v404, v405, v406, v407, v408, v972, v1047, v1121, v1195, v1269, v1343, v1417, v1491, v1565, v1639, v1713, v1787, v1861, v1935, v2009, v2084, v2159;
        v382, v409, v410, v411, v412, v413, v414, v415, v973, v1048, v1122, v1196, v1270, v1344, v1418, v1492, v1566, v1640, v1714, v1788, v1862, v1936, v2010, v2085, v2160;
        v383, v416, v417, v418, v419, v420, v421, v422, v974, v1049, v1123, v1197, v1271, v1345, v1419, v1493, v1567, v1641, v1715, v1789, v1863, v1937, v2011, v2086, v2161;
        v384, v423, v424, v425, v426, v427, v428, v429, v975, v1050, v1124, v1198, v1272, v1346, v1420, v1494, v1568, v1642, v1716, v1790, v1864, v1938, v2012, v2087, v2162;
        v386, v430, v431, v432, v433, v434, v435, v436, v976, v1051, v1125, v1199, v1273, v1347, v1421, v1495, v1569, v1643, v1717, v1791, v1865, v1939, v2013, v2088, v2163;
        v385, v437, v438, v439, v440, v441, v442, v443, v977, v1052, v1126, v1200, v1274, v1348, v1422, v1496, v1570, v1644, v1718, v1792, v1866, v1940, v2014, v2089, v2164;
        v387, v444, v445, v446, v447, v448, v449, v450, v978, v1053, v1127, v1201, v1275, v1349, v1423, v1497, v1571, v1645, v1719, v1793, v1867, v1941, v2015, v2090, v2165;
        v1128, v451, v452, v453, v454, v455, v456, v457, v979, v1054, v1128, v1202, v1276, v1350, v1424, v1498, v1572, v1646, v1720, v1794, v1868, v1942, v2016, v2091, v2166;
        v1203, v458, v459, v460, v461, v462, v463, v464, v980, v1055, v1129, v1203, v1277, v1351, v1425, v1499, v1573, v1647, v1721, v1795, v1869, v1943, v2017, v2092, v2167;
        v1278, v465, v466, v467, v468, v469, v470, v471, v981, v1056, v1130, v1204, v1278, v1352, v1426, v1500, v1574, v1648, v1722, v1796, v1870, v1944, v2018, v2093, v2168;
        v1353, v472, v473, v474, v475, v476, v477, v478, v982, v1057, v1131, v1205, v1279, v1353, v1427, v1501, v1575, v1649, v1723, v1797, v1871, v1945, v2019, v2094, v2169;
        v1428, v479, v480, v481, v482, v483, v484, v485, v983, v1058, v1132, v1206, v1280, v1354, v1428, v1502, v1576, v1650, v1724, v1798, v1872, v1946, v2020, v2095, v2170;
        v1503, v486, v487, v488, v489, v490, v491, v492, v984, v1059, v1133, v1207, v1281, v1355, v1429, v1503, v1577, v1651, v1725, v1799, v1873, v1947, v2021, v2096, v2171;
        v1578, v493, v494, v495, v496, v497, v498, v499, v985, v1060, v1134, v1208, v1282, v1356, v1430, v1504, v1578, v1652, v1726, v1800, v1874, v1948, v2022, v2097, v2172;
        v1653, v500, v501, v502, v503, v504, v505, v506, v986, v1061, v1135, v1209, v1283, v1357, v1431, v1505, v1579, v1653, v1727, v1801, v1875, v1949, v2023, v2098, v2173;
        v1728, v507, v508, v509, v510, v511, v512, v513, v987, v1062, v1136, v1210, v1284, v1358, v1432, v1506, v1580, v1654, v1728, v1802, v1876, v1950, v2024, v2099, v2174;
        v1803, v514, v515, v516, v517, v518, v519, v520, v988, v1063, v1137, v1211, v1285, v1359, v1433, v1507, v1581, v1655, v1729, v1803, v1877, v1951, v2025, v2100, v2175;
        v1878, v521, v522, v523, v524, v525, v526, v527, v989, v1064, v1138, v1212, v1286, v1360, v1434, v1508, v1582, v1656, v1730, v1804, v1878, v1952, v2026, v2101, v2176;
        v1953, v528, v529, v530, v531, v532, v533, v534, v990, v1065, v1139, v1213, v1287, v1361, v1435, v1509, v1583, v1657, v1731, v1805, v1879, v1953, v2027, v2102, v2177;
        v2028, v535, v536, v537, v538, v539, v540, v541, v991, v1066, v1140, v1214, v1288, v1362, v1436, v1510, v1584, v1658, v1732, v1806, v1880, v1954, v2028, v2103, v2178;
        v2104, v542, v543, v544, v545, v546, v547, v548, v992, v1067, v1141, v1215, v1289, v1363, v1437, v1511, v1585, v1659, v1733, v1807, v1881, v1955, v2029, v2104, v2179;
        v2180, v549, v550, v551, v552, v553, v554, v555, v993, v1068, v1142, v1216, v1290, v1364, v1438, v1512, v1586, v1660, v1734, v1808, v1882, v1956, v2030, v2105, v2180;
        v2232, v556, v557, v558, v559, v560, v561, v562, v994, v1069, v1143, v1217, v1291, v1365, v1439, v1513, v1587, v1661, v1735, v1809, v1883, v1957, v2031, v2106, v2181;
        v2237, v563, v564, v565, v566, v567, v568, v569, v995, v1070, v1144, v1218, v1292, v1366, v1440, v1514, v1588, v1662, v1736, v1810, v1884, v1958, v2032, v2107, v2182;
        v2241, v570, v571, v572, v573, v574, v575, v576, v996, v1071, v1145, v1219, v1293, v1367, v1441, v1515, v1589, v1663, v1737, v1811, v1885, v1959, v2033, v2108, v2183;
        logg, v577, v578, v579, v580, v581, v582, v583, v997, v1072, v1146, v1220, v1294, v1368, v1442, v1516, v1590, v1664, v1738, v1812, v1886, v1960, v2034, v2109, v2184;
        v2257, v584, v585, v586, v587, v588, v589, v590, v998, v1073, v1147, v1221, v1295, v1369, v1443, v1517, v1591, v1665, v1739, v1813, v1887, v1961, v2035, v2110, v2185;
        v2264, v591, v592, v593, v594, v595, v596, v597, v999, v1074, v1148, v1222, v1296, v1370, v1444, v1518, v1592, v1666, v1740, v1814, v1888, v1962, v2036, v2111, v2186;
        v2276, v598, v599, v600, v601, v602, v603, v604, v1000, v1075, v1149, v1223, v1297, v1371, v1445, v1519, v1593, v1667, v1741, v1815, v1889, v1963, v2037, v2112, v2187;
        v2285, v605, v606, v607, v608, v609, v610, v611, v1001, v1076, v1150, v1224, v1298, v1372, v1446, v1520, v1594, v1668, v1742, v1816, v1890, v1964, v2038, v2113, v2188;
        v2292, v612, v613, v614, v615, v616, v617, v618, v1002, v1077, v1151, v1225, v1299, v1373, v1447, v1521, v1595, v1669, v1743, v1817, v1891, v1965, v2039, v2114, v2189;
        v2295, v619, v620, v621, v622, v623, v624, v625, v1003, v1078, v1152, v1226, v1300, v1374, v1448, v1522, v1596, v1670, v1744, v1818, v1892, v1966, v2040, v2115, v2190;
        v2301, v626, v627, v628, v629, v630, v631, v632, v1004, v1079, v1153, v1227, v1301, v1375, v1449, v1523, v1597, v1671, v1745, v1819, v1893, v1967, v2041, v2116, v2191;
        v2310, v633, v634, v635, v636, v637, v638, v639, v1005, v1080, v1154, v1228, v1302, v1376, v1450, v1524, v1598, v1672, v1746, v1820, v1894, v1968, v2042, v2117, v2192;
        v2316, v640, v641, v642, v643, v644, v645, v646, v1006, v1081, v1155, v1229, v1303, v1377, v1451, v1525, v1599, v1673, v1747, v1821, v1895, v1969, v2043, v2118, v2193;
        sub_22BB2F09C();
LABEL_92:

        return v647();
      }

      return result;
    case 3u:
      v90 = v2[56];
      v91 = *(v90 + 16);

      v92 = sub_22BBE6DE0(&qword_27D8E2EE0, &qword_22BDBD750);
      v93 = v92[16];
      v94 = (v90 + v92[20]);
      v95 = v94[1];
      if (!v95)
      {
        sub_22BB3FDD8();

        type metadata accessor for RuntimeError(0);
        sub_22BB31C10();
        v262 = sub_22BC9D714(v260, v261);
        v263 = sub_22BB38D10(v262);
        sub_22BB51330(v263, v264);
        v265 = swift_storeEnumTagMultiPayload();
        sub_22BB6C6D4(v265, v266, v267, v268, v269, v270, v271, v272, v969);

        v273 = sub_22BB2F324();
        (v2294)(v273);
        sub_22BDBA5C4();
        sub_22BB31F70();
        (*(v274 + 8))(v90 + v93);
        goto LABEL_91;
      }

      v2306 = v92[16];
      v96 = *v94;
      v97 = *(v90 + v92[24]);
      v98 = v2[43];
      v99 = sub_22BB31F54();
      sub_22BD80EEC(v99, v100, v2312, v101);

      v102 = sub_22BB3A840();
      if (sub_22BB3AA28(v102, v103, v98) == 1)
      {
        sub_22BB325EC(v2[40], &qword_27D8E2F80, &qword_22BDC0600);
        sub_22BBDB89C();
        sub_22BB35AA4();
        v106 = sub_22BC9D714(v104, v105);
        v107 = sub_22BB38D10(v106);
        sub_22BB51330(v107, v108);
        *v109 = v96;
        v109[1] = v95;
        v110 = swift_storeEnumTagMultiPayload();
        sub_22BB6C6D4(v110, v111, v112, v113, v114, v115, v116, v117, v969);

        v118 = sub_22BB32E04();
        (v2294)(v118);
        sub_22BDBA5C4();
        sub_22BB31F70();
        (*(v119 + 8))(v90 + v2306);
        goto LABEL_91;
      }

      v2283 = v90;
      v2291 = v97;
      v2273 = v23;
      v282 = v2[46];
      v284 = v2[43];
      v283 = v2[44];
      v285 = v2[40];
      v286 = v2[27];
      v2314 = v2[26];
      v287 = v2[24];
      v2261 = v2[23];
      v288 = v2[21];
      v289 = v2[22];
      logb = v2[20];

      (*(v283 + 32))(v282, v285, v284);
      sub_22BDB94F4();
      sub_22BDB8C94();
      (*(v288 + 8))(v289, logb);
      sub_22BDB63F4();
      v290 = *(v287 + 16);
      v290(v2314, v286, v2261);
      v291 = v290;
      v292 = sub_22BDB77C4();
      v293 = sub_22BDBB134();
      v294 = os_log_type_enabled(v292, v293);
      v295 = v2[64];
      v2156 = v291;
      if (v294)
      {
        logc = v2[59];
        v296 = v2[23];
        v297 = sub_22BB31AD8();
        v2235 = v295;
        v298 = swift_slowAlloc();
        v2318[0] = v298;
        *v297 = 136315138;
        v299 = sub_22BB331D4();
        (v291)(v299);
        v300 = sub_22BDBAC14();
        v301 = v293;
        v303 = v302;
        v304 = sub_22BB394C8();
        v2262 = v305;
        v305(v304, v296);
        v306 = sub_22BB32EE0(v300, v303, v2318);

        *(v297 + 4) = v306;
        _os_log_impl(&dword_22BB2C000, v292, v301, "ToolExecution: Choosing value: %s", v297, 0xCu);
        sub_22BB32FA4(v298);
        sub_22BB2F368();
        MEMORY[0x2318A6080]();
        sub_22BB2F368();
        MEMORY[0x2318A6080]();

        v307 = v2235;
        v308 = logc;
      }

      else
      {
        v362 = v2[23];

        v363 = sub_22BB394C8();
        v2262 = v364;
        v364(v363, v362);
        v307 = sub_22BB33728();
      }

      v2273(v307, v308);
      v2275 = v2[73];
      logf = v2[70];
      v365 = v2[44];
      v2231 = v2[43];
      v2236 = v2[46];
      v366 = v2[27];
      v368 = v2[23];
      v367 = v2[24];
      v369 = v2[18];
      v370 = v2[19];
      v371 = v2[17];
      v372 = v2[4];
      v2081 = v2[5];
      sub_22BBE6DE0(qword_27D8E2550, &unk_22BDBCC10);
      v373 = (*(v367 + 80) + 32) & ~*(v367 + 80);
      v374 = swift_allocObject();
      *(v374 + 16) = xmmword_22BDBCBD0;
      v2156(v374 + v373, v366, v368);
      *v370 = v374;
      sub_22BB379E4();
      v375(v370);
      v2291(v370, v372, v2081);

      (*(v369 + 8))(v370, v371);
      v2262(v366, v368);
      (*(v365 + 8))(v2236, v2231);
      v2294(v2275, logf);
      sub_22BDBA5C4();
      sub_22BB31F70();
      (*(v376 + 8))(v2283 + v2306);
      goto LABEL_66;
    case 4u:
      v62 = v2[56];

      v63 = (v62 + *(sub_22BBE6DE0(&qword_27D8E2EC8, &qword_22BDBD730) + 48));
      if ((v2288 & 1) == 0)
      {
        sub_22BB3FDD8();
        v229 = v2[56];
        sub_22BBDB89C();
        sub_22BB35AA4();
        v232 = sub_22BC9D714(v230, v231);
        sub_22BB38D10(v232);
        swift_storeEnumTagMultiPayload();
        swift_willThrow();

        v233 = sub_22BB345A8();
        (v2294)(v233);
        sub_22BB37238();
        sub_22BC9D3D4(v229, v234);
        goto LABEL_91;
      }

      v2269 = v23;
      v2305 = *v63;
      sub_22BDB63F4();
      v64 = sub_22BDB77C4();
      v65 = sub_22BDBB134();
      if (sub_22BB3FCAC(v65))
      {
        sub_22BB2F114();
        v66 = swift_slowAlloc();
        sub_22BB3E4A8(v66);
        sub_22BB5420C();
        _os_log_impl(v67, v68, v69, v70, v71, 2u);
        sub_22BB2F368();
        MEMORY[0x2318A6080]();
      }

      sub_22BB3ACE8();
      v2297 = v2[56];
      v73 = v2[15];
      v72 = v2[16];
      v74 = v2[14];

      v75 = sub_22BB32E04();
      v2269(v75);
      (*(v73 + 104))(v72, *MEMORY[0x277D731B0], v74);
      v76 = sub_22BB30AE4();
      v2305(v76);

      (*(v73 + 8))(v72, v74);
      v77 = sub_22BB53C54();
      v78(v77);
      sub_22BB37238();
      v80 = v2297;
LABEL_41:
      sub_22BC9D3D4(v80, v79);
      goto LABEL_66;
    case 5u:
      v180 = v23;
      v181 = v2[56];
      v182 = v2[39];
      v183 = *(v181 + 2);

      v184 = *(v181 + 3);
      v185 = *(v181 + 4);
      v186 = sub_22BBE6DE0(&qword_27D8E2EC0, &qword_22BDBD720);
      v187 = *(v186 + 64);

      v2290 = *&v181[*(v186 + 128)];
      v188 = sub_22BB2F3F0();
      sub_22BD80EEC(v188, v189, v2312, v190);
      sub_22BB36B74(v182);
      v2308 = v187;
      if (v88)
      {
        v191 = v2[70];
        v192 = v2[39];
        v2281 = v2[73];

        sub_22BB325EC(v192, &qword_27D8E2F80, &qword_22BDC0600);
        type metadata accessor for DialogResponseError(0);
        sub_22BB35AA4();
        sub_22BC9D714(v193, v194);
        sub_22BB369E0();
        swift_allocError();
        *v195 = v184;
        v195[1] = v185;
        swift_storeEnumTagMultiPayload();
        swift_willThrow();

        v196 = (v2294)(v2281, v191);
        sub_22BB71F1C(v196, &qword_27D8E2928, &qword_22BDBCFA0);
        v197 = sub_22BB313D4();
        v198(v197);
        goto LABEL_91;
      }

      v239 = v2[10];
      (*(v2[44] + 32))(v2[45], v2[39], v2[43]);
      sub_22BDB94C4();
      v240 = sub_22BB36B68();
      v242 = sub_22BB3AA28(v240, v241, v239);
      if (v242 == 1)
      {
        sub_22BB3ACE8();
        v2272 = v243;
        v2282 = v244;
        v245 = v2[44];
        v246 = v2[45];
        v247 = v2;
        v248 = v2[43];
        v249 = v247[36];

        sub_22BB325EC(v249, &qword_27D8E2F78, &unk_22BDBD980);
        type metadata accessor for DialogResponseError(0);
        sub_22BB35AA4();
        sub_22BC9D714(v250, v251);
        sub_22BB369E0();
        v252 = swift_allocError();
        v254 = sub_22BBC7F68(v252, v253);
        v255(v254);
        swift_storeEnumTagMultiPayload();
        swift_willThrow();

        v256 = v248;
        v2 = v247;
        (*(v245 + 8))(v246, v256);
        v257 = (v2294)(v2282, v2272);
        sub_22BB71F1C(v257, &qword_27D8E2928, &qword_22BDBCFA0);
        v258 = sub_22BB313D4();
        v259(v258);
        goto LABEL_91;
      }

      (*(v2[11] + 32))(v2[13], v2[36], v2[10]);
      v315 = sub_22BB31F54();
      v316(v315);
      v317 = sub_22BB31B54();
      v319 = v318(v317);
      if (v319 == *MEMORY[0x277D1CAF0])
      {
        v320 = v2[44];
        v321 = v2[45];
        v322 = v2;
        v323 = v2[43];
        logd = v322[13];
        v324 = v322[11];
        v2240 = v322[10];

        sub_22BBDB89C();
        sub_22BB35AA4();
        v327 = sub_22BC9D714(v325, v326);
        v328 = sub_22BB38D10(v327);
        v330 = sub_22BBC7F68(v328, v329);
        v331(v330);
        sub_22BB2F3F0();
        swift_storeEnumTagMultiPayload();
        swift_willThrow();

        (*(v324 + 8))(logd, v2240);
        v332 = v323;
        v2 = v322;
        (*(v320 + 8))(v321, v332);
        v333 = sub_22BB58694();
        v335 = v334(v333);
        sub_22BB71F1C(v335, &qword_27D8E2928, &qword_22BDBCFA0);
        v336 = sub_22BB313D4();
        v337(v336);
        goto LABEL_91;
      }

      if (v319 == *MEMORY[0x277D1CB00])
      {

        sub_22BDB63F4();
        v671 = sub_22BDB77C4();
        v672 = sub_22BDBB134();
        if (sub_22BB34888(v672))
        {
          sub_22BB2F114();
          v673 = swift_slowAlloc();
          *v673 = 0;
          _os_log_impl(&dword_22BB2C000, v671, v672, "ToolExecution: Accepting parameter confirmation prompt", v673, 2u);
          sub_22BB2F368();
          MEMORY[0x2318A6080]();
        }

        v674 = sub_22BB30AE4();
        v180(v674);
      }

      else
      {
        if (v319 != *MEMORY[0x277D1CAF8])
        {

          return sub_22BDBB6C4();
        }
      }

      v679 = v2[44];
      v2242 = v2[43];
      logh = v2[45];
      v680 = v2[24];
      v2317 = v2[23];
      v681 = v2[16];
      v682 = v2[11];
      v2233 = v2[10];
      v2238 = v2[13];
      sub_22BB379E4();
      v683(v681);
      v684 = sub_22BB331D4();
      v2290(v684);

      v685 = sub_22BB39744();
      v686(v685);
      (*(v682 + 8))(v2238, v2233);
      (*(v679 + 8))(logh, v2242);
      v687 = sub_22BB58694();
      v689 = v688(v687);
      sub_22BB71F1C(v689, &qword_27D8E2928, &qword_22BDBCFA0);
      (*(v680 + 8))(&v181[v2308], v2317);
      goto LABEL_66;
    case 6u:
      v2309 = v2[73];
      v199 = v2[70];
      v200 = v2[56];
      v201 = v2[9];

      v202 = *(v200 + 16);

      sub_22BB379E4();
      v203(v201);
      v204 = sub_22BB39744();
      v202(v204);

      v205 = sub_22BB331D4();
      v206(v205);
      v163 = v2309;
      v162 = v199;
      goto LABEL_38;
    case 7u:
      v127 = v2[56];

      v128 = *(v127 + 16);

      v129 = sub_22BBE6DE0(&qword_27D8E2EA0, &unk_22BDC05E0);
      v130 = v129[12];
      sub_22BB37CAC(v129[16]);

      sub_22BB37CAC(v129[20]);

      if (v2288)
      {
        v2270 = v23;
        v2298 = *(v127 + v129[24]);
        sub_22BDB63F4();
        v131 = sub_22BDB77C4();
        v132 = sub_22BDBB134();
        if (sub_22BB3FCAC(v132))
        {
          sub_22BB2F114();
          v133 = swift_slowAlloc();
          sub_22BB3E4A8(v133);
          sub_22BB5420C();
          _os_log_impl(v134, v135, v136, v137, v138, 2u);
          sub_22BB2F368();
          MEMORY[0x2318A6080]();
        }

        sub_22BB3ACE8();
        v139 = v2[15];
        v140 = v2[16];
        v141 = v2[14];
        v142 = v2[6];
        loga = v2[4];
        v2255 = v2[5];

        v143 = sub_22BB32E04();
        v2270(v143);
        *(v142 + qword_28142F460) = 1;
        (*(v139 + 104))(v140, *MEMORY[0x277D731B0], v141);
        v2298(v140, loga, v2255);

        (*(v139 + 8))(v140, v141);
        v144 = sub_22BB53C54();
        v145(v144);
        v85 = v127 + v130;
LABEL_25:
        sub_22BB325EC(v85, &qword_27D8E2928, &qword_22BDBCFA0);
        goto LABEL_66;
      }

      sub_22BB3FDD8();
      sub_22BBDB89C();
      sub_22BB35AA4();
      v237 = sub_22BC9D714(v235, v236);
      sub_22BB38D10(v237);
      swift_storeEnumTagMultiPayload();
      swift_willThrow();

      v238 = sub_22BB345A8();
      (v2294)(v238);
      sub_22BB325EC(v127 + v130, &qword_27D8E2928, &qword_22BDBCFA0);
LABEL_91:
      v699 = v2[73];
      v700 = v2[72];
      v701 = v2[69];
      v702 = v2;
      v703 = v2[68];
      v704 = v702[67];
      v705 = v702[66];
      v706 = v702[65];
      v707 = v702[63];
      v708 = v702[64];
      v709 = v702[62];
      v2234 = v702[35];
      v2239 = v702[32];
      v2243 = v702[30];
      logi = v702[27];
      v2259 = v702[26];
      v2266 = v702[25];
      v2278 = v702[22];
      v2287 = v702[19];
      v2293 = v702[16];
      v2296 = v702[13];
      v2302 = v702[12];
      v2311 = v702[9];
      v699, v120, v121, v122, v123, v124, v125, v126, v969, v702[61], v702[58], v702[57], v702[56], v702[51], v702[48], v702[47], v702[46], v702[45], v702[42], v702[41], v702[40], v702[39], v702[38], v702[37], v702[36];
      v700, v710, v711, v712, v713, v714, v715, v716, v1007, v1082, v1156, v1230, v1304, v1378, v1452, v1526, v1600, v1674, v1748, v1822, v1896, v1970, v2044, v2119, v2194;
      v701, v717, v718, v719, v720, v721, v722, v723, v1008, v1083, v1157, v1231, v1305, v1379, v1453, v1527, v1601, v1675, v1749, v1823, v1897, v1971, v2045, v2120, v2195;
      v703, v724, v725, v726, v727, v728, v729, v730, v1009, v1084, v1158, v1232, v1306, v1380, v1454, v1528, v1602, v1676, v1750, v1824, v1898, v1972, v2046, v2121, v2196;
      v704, v731, v732, v733, v734, v735, v736, v737, v1010, v1085, v1159, v1233, v1307, v1381, v1455, v1529, v1603, v1677, v1751, v1825, v1899, v1973, v2047, v2122, v2197;
      v705, v738, v739, v740, v741, v742, v743, v744, v1011, v1086, v1160, v1234, v1308, v1382, v1456, v1530, v1604, v1678, v1752, v1826, v1900, v1974, v2048, v2123, v2198;
      v706, v745, v746, v747, v748, v749, v750, v751, v1012, v1087, v1161, v1235, v1309, v1383, v1457, v1531, v1605, v1679, v1753, v1827, v1901, v1975, v2049, v2124, v2199;
      v708, v752, v753, v754, v755, v756, v757, v758, v1013, v1088, v1162, v1236, v1310, v1384, v1458, v1532, v1606, v1680, v1754, v1828, v1902, v1976, v2050, v2125, v2200;
      v707, v759, v760, v761, v762, v763, v764, v765, v1014, v1089, v1163, v1237, v1311, v1385, v1459, v1533, v1607, v1681, v1755, v1829, v1903, v1977, v2051, v2126, v2201;
      v709, v766, v767, v768, v769, v770, v771, v772, v1015, v1090, v1164, v1238, v1312, v1386, v1460, v1534, v1608, v1682, v1756, v1830, v1904, v1978, v2052, v2127, v2202;
      v1091, v773, v774, v775, v776, v777, v778, v779, v1016, v1091, v1165, v1239, v1313, v1387, v1461, v1535, v1609, v1683, v1757, v1831, v1905, v1979, v2053, v2128, v2203;
      v1166, v780, v781, v782, v783, v784, v785, v786, v1017, v1092, v1166, v1240, v1314, v1388, v1462, v1536, v1610, v1684, v1758, v1832, v1906, v1980, v2054, v2129, v2204;
      v1241, v787, v788, v789, v790, v791, v792, v793, v1018, v1093, v1167, v1241, v1315, v1389, v1463, v1537, v1611, v1685, v1759, v1833, v1907, v1981, v2055, v2130, v2205;
      v1316, v794, v795, v796, v797, v798, v799, v800, v1019, v1094, v1168, v1242, v1316, v1390, v1464, v1538, v1612, v1686, v1760, v1834, v1908, v1982, v2056, v2131, v2206;
      v1391, v801, v802, v803, v804, v805, v806, v807, v1020, v1095, v1169, v1243, v1317, v1391, v1465, v1539, v1613, v1687, v1761, v1835, v1909, v1983, v2057, v2132, v2207;
      v1466, v808, v809, v810, v811, v812, v813, v814, v1021, v1096, v1170, v1244, v1318, v1392, v1466, v1540, v1614, v1688, v1762, v1836, v1910, v1984, v2058, v2133, v2208;
      v1541, v815, v816, v817, v818, v819, v820, v821, v1022, v1097, v1171, v1245, v1319, v1393, v1467, v1541, v1615, v1689, v1763, v1837, v1911, v1985, v2059, v2134, v2209;
      v1616, v822, v823, v824, v825, v826, v827, v828, v1023, v1098, v1172, v1246, v1320, v1394, v1468, v1542, v1616, v1690, v1764, v1838, v1912, v1986, v2060, v2135, v2210;
      v1691, v829, v830, v831, v832, v833, v834, v835, v1024, v1099, v1173, v1247, v1321, v1395, v1469, v1543, v1617, v1691, v1765, v1839, v1913, v1987, v2061, v2136, v2211;
      v1766, v836, v837, v838, v839, v840, v841, v842, v1025, v1100, v1174, v1248, v1322, v1396, v1470, v1544, v1618, v1692, v1766, v1840, v1914, v1988, v2062, v2137, v2212;
      v1841, v843, v844, v845, v846, v847, v848, v849, v1026, v1101, v1175, v1249, v1323, v1397, v1471, v1545, v1619, v1693, v1767, v1841, v1915, v1989, v2063, v2138, v2213;
      v1916, v850, v851, v852, v853, v854, v855, v856, v1027, v1102, v1176, v1250, v1324, v1398, v1472, v1546, v1620, v1694, v1768, v1842, v1916, v1990, v2064, v2139, v2214;
      v1991, v857, v858, v859, v860, v861, v862, v863, v1028, v1103, v1177, v1251, v1325, v1399, v1473, v1547, v1621, v1695, v1769, v1843, v1917, v1991, v2065, v2140, v2215;
      v2066, v864, v865, v866, v867, v868, v869, v870, v1029, v1104, v1178, v1252, v1326, v1400, v1474, v1548, v1622, v1696, v1770, v1844, v1918, v1992, v2066, v2141, v2216;
      v2142, v871, v872, v873, v874, v875, v876, v877, v1030, v1105, v1179, v1253, v1327, v1401, v1475, v1549, v1623, v1697, v1771, v1845, v1919, v1993, v2067, v2142, v2217;
      v2218, v878, v879, v880, v881, v882, v883, v884, v1031, v1106, v1180, v1254, v1328, v1402, v1476, v1550, v1624, v1698, v1772, v1846, v1920, v1994, v2068, v2143, v2218;
      v2234, v885, v886, v887, v888, v889, v890, v891, v1032, v1107, v1181, v1255, v1329, v1403, v1477, v1551, v1625, v1699, v1773, v1847, v1921, v1995, v2069, v2144, v2219;
      v2239, v892, v893, v894, v895, v896, v897, v898, v1033, v1108, v1182, v1256, v1330, v1404, v1478, v1552, v1626, v1700, v1774, v1848, v1922, v1996, v2070, v2145, v2220;
      v2243, v899, v900, v901, v902, v903, v904, v905, v1034, v1109, v1183, v1257, v1331, v1405, v1479, v1553, v1627, v1701, v1775, v1849, v1923, v1997, v2071, v2146, v2221;
      logi, v906, v907, v908, v909, v910, v911, v912, v1035, v1110, v1184, v1258, v1332, v1406, v1480, v1554, v1628, v1702, v1776, v1850, v1924, v1998, v2072, v2147, v2222;
      v2259, v913, v914, v915, v916, v917, v918, v919, v1036, v1111, v1185, v1259, v1333, v1407, v1481, v1555, v1629, v1703, v1777, v1851, v1925, v1999, v2073, v2148, v2223;
      v2266, v920, v921, v922, v923, v924, v925, v926, v1037, v1112, v1186, v1260, v1334, v1408, v1482, v1556, v1630, v1704, v1778, v1852, v1926, v2000, v2074, v2149, v2224;
      v2278, v927, v928, v929, v930, v931, v932, v933, v1038, v1113, v1187, v1261, v1335, v1409, v1483, v1557, v1631, v1705, v1779, v1853, v1927, v2001, v2075, v2150, v2225;
      v2287, v934, v935, v936, v937, v938, v939, v940, v1039, v1114, v1188, v1262, v1336, v1410, v1484, v1558, v1632, v1706, v1780, v1854, v1928, v2002, v2076, v2151, v2226;
      v2293, v941, v942, v943, v944, v945, v946, v947, v1040, v1115, v1189, v1263, v1337, v1411, v1485, v1559, v1633, v1707, v1781, v1855, v1929, v2003, v2077, v2152, v2227;
      v2296, v948, v949, v950, v951, v952, v953, v954, v1041, v1116, v1190, v1264, v1338, v1412, v1486, v1560, v1634, v1708, v1782, v1856, v1930, v2004, v2078, v2153, v2228;
      v2302, v955, v956, v957, v958, v959, v960, v961, v1042, v1117, v1191, v1265, v1339, v1413, v1487, v1561, v1635, v1709, v1783, v1857, v1931, v2005, v2079, v2154, v2229;
      v2311, v962, v963, v964, v965, v966, v967, v968, v1043, v1118, v1192, v1266, v1340, v1414, v1488, v1562, v1636, v1710, v1784, v1858, v1932, v2006, v2080, v2155, v2230;
      sub_22BB2F09C();
      goto LABEL_92;
    case 8u:
      sub_22BB3349C();
      v214 = v2[56];
      sub_22BB8D238();
      v215();

      sub_22BBE6DE0(&qword_27D8E2E90, &qword_22BDBD6D0);

      sub_22BB3650C();
      v80 = v214;
      goto LABEL_41;
    case 9u:
      sub_22BB3349C();
      v81 = v2[56];
      sub_22BB8D238();
      v82();

      v83 = *(v81 + 16);

      v84 = *(sub_22BBE6DE0(&qword_27D8E2EB8, &qword_22BDBD710) + 48);

      v85 = v81 + v84;
      goto LABEL_25;
    case 0xAu:
    case 0xCu:
      sub_22BB3349C();
      sub_22BB8D238();
      v53();

      v54 = sub_22BB2F324();
      v48(v54);
      goto LABEL_66;
    case 0xBu:
      sub_22BB3349C();
      v207 = v2[56];
      v208 = v2[53];
      sub_22BB8D238();
      v209();

      v210 = sub_22BB36A38();
      type metadata accessor for TypedValueExecutionResult(v210, v211, v208, v212);
      sub_22BB31F70();
      (*(v213 + 8))(v207);
      goto LABEL_66;
    default:
      v2271 = v23;
      v146 = v2[56];

      v147 = *(v146 + 16);
      v2307 = *(v146 + 40);

      sub_22BDB63F4();
      v148 = sub_22BDB77C4();
      v149 = sub_22BDBB114();
      if (sub_22BB3FCAC(v149))
      {
        sub_22BB2F114();
        v150 = swift_slowAlloc();
        sub_22BB3E4A8(v150);
        sub_22BB5420C();
        _os_log_impl(v151, v152, v153, v154, v155, 2u);
        sub_22BB2F368();
        MEMORY[0x2318A6080]();
      }

      v2299 = v2[73];
      v2289 = v2[70];
      v156 = v2[50];
      v157 = v2[51];
      v158 = v2[49];
      v159 = v2[4];
      v160 = v2[5];

      v161 = sub_22BB32E04();
      v2271(v161);
      (*(v156 + 104))(v157, *MEMORY[0x277D722A8], v158);
      v2307(v157, v159, v160);

      (*(v156 + 8))(v157, v158);
      v162 = v2289;
      v163 = v2299;
      goto LABEL_38;
  }
}

uint64_t sub_22BC9BD30@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v122 = a2;
  v4 = *v2;
  v5 = sub_22BBE6DE0(&qword_27D8E2928, &qword_22BDBCFA0);
  MEMORY[0x28223BE20](v5 - 8);
  *&v120 = &v110 - v6;
  *&v118 = sub_22BDBA594();
  *&v117 = *(v118 - 8);
  MEMORY[0x28223BE20](v118);
  v116 = &v110 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22BDBA5C4();
  v115 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v110 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v4 + 80);
  v121 = v2;
  v12 = *(v4 + 96);
  v14 = type metadata accessor for ToolExecutionEvent(0, v11, v12, v13);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v110 - v16;
  v18 = *(v15 + 16);
  *&v119 = a1;
  v18(&v110 - v16, a1, v14);
  v123 = v14;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v72 = *v17;
      v119 = *(v17 + 1);
      v120 = v72;
      v73 = *(v17 + 4);
      v74 = *(v17 + 5);
      v75 = swift_allocObject();
      v76 = v122;
      *(v75 + 16) = v121;
      *(v75 + 24) = *(v17 + 3);
      v77 = v119;
      *v76 = v120;
      v76[1] = v77;
      *(v76 + 4) = v73;
      *(v76 + 5) = v74;
      *(v76 + 6) = sub_22BC9D638;
      *(v76 + 7) = v75;
      goto LABEL_16;
    case 2u:
      v32 = *v17;
      v119 = *(v17 + 1);
      v120 = v32;
      v33 = *(v17 + 4);
      v34 = *(v17 + 5);
      v35 = swift_allocObject();
      v36 = v122;
      *(v35 + 16) = v121;
      *(v35 + 24) = *(v17 + 3);
      v37 = v119;
      *v36 = v120;
      v36[1] = v37;
      *(v36 + 4) = v33;
      *(v36 + 5) = v34;
      *(v36 + 6) = sub_22BC9D5F0;
      *(v36 + 7) = v35;
      goto LABEL_16;
    case 3u:
      v38 = *(v17 + 4);
      v39 = sub_22BBE6DE0(&qword_27D8E2EE0, &qword_22BDBD750);
      v40 = v39[16];
      v41 = &v17[v39[20]];
      v42 = *v41;
      v43 = *(v41 + 1);
      v44 = v39[24];
      v45 = *(v115 + 32);
      v46 = *v17;
      v118 = *(v17 + 1);
      v119 = v46;
      v120 = *&v17[v44];
      v45(v10, &v17[v40], v8);
      v47 = v39[16];
      v48 = v122;
      v49 = (v122 + v39[20]);
      v50 = (v122 + v39[24]);
      v51 = v118;
      *v122 = v119;
      v48[1] = v51;
      *(v48 + 4) = v38;
      v45(v48 + v47, v10, v8);
      *v49 = v42;
      v49[1] = v43;
      v52 = swift_allocObject();
      *(v52 + 16) = v121;
      *(v52 + 24) = v120;
      *v50 = sub_22BC9D5A8;
      v50[1] = v52;
      goto LABEL_16;
    case 4u:
      v21 = *(sub_22BBE6DE0(&qword_27D8E2EC8, &qword_22BDBD730) + 48);
      v22 = (v122 + v21);
      v120 = *&v17[v21];
      sub_22BC9D54C(v17, v122, type metadata accessor for ActionConfirmationDialogRequest);
      v23 = swift_allocObject();
      *(v23 + 16) = v121;
      *(v23 + 24) = v120;
      *v22 = sub_22BC9D4D8;
      v22[1] = v23;
      goto LABEL_16;
    case 5u:
      v113 = *(v17 + 4);
      v78 = sub_22BBE6DE0(&qword_27D8E2EC0, &qword_22BDBD720);
      v79 = v78[16];
      v80 = v78[20];
      v81 = &v17[v78[24]];
      v82 = *v81;
      v114 = *(v81 + 1);
      v115 = v82;
      v83 = &v17[v78[28]];
      v84 = *v83;
      v111 = *(v83 + 1);
      v112 = v84;
      v85 = v78[32];
      v86 = v116;
      v87 = *(v117 + 32);
      v88 = *(v17 + 1);
      v117 = *v17;
      v110 = v88;
      v119 = *&v17[v85];
      v89 = v118;
      v87(v116, &v17[v79], v118);
      v90 = v120;
      sub_22BB6BEE0(&v17[v80], v120, &qword_27D8E2928, &qword_22BDBCFA0);
      v91 = v78[16];
      v92 = v78[20];
      v93 = v122;
      v94 = (v122 + v78[24]);
      v95 = (v122 + v78[28]);
      v96 = (v122 + v78[32]);
      v97 = v110;
      *v122 = v117;
      v93[1] = v97;
      *(v93 + 4) = v113;
      v87(v93 + v91, v86, v89);
      sub_22BB6BEE0(v90, v93 + v92, &qword_27D8E2928, &qword_22BDBCFA0);
      v98 = v114;
      *v94 = v115;
      v94[1] = v98;
      v99 = v111;
      *v95 = v112;
      v95[1] = v99;
      v100 = swift_allocObject();
      *(v100 + 16) = v121;
      *(v100 + 24) = v119;
      *v96 = sub_22BC9D4D8;
      v96[1] = v100;
      goto LABEL_16;
    case 6u:
      v101 = *v17;
      v102 = *(v17 + 1);
      v103 = swift_allocObject();
      v104 = v122;
      *(v103 + 16) = v121;
      *(v103 + 24) = *(v17 + 1);
      *v104 = v101;
      v104[1] = v102;
      v104[2] = sub_22BC9D508;
      v104[3] = v103;
      goto LABEL_16;
    case 7u:
      v118 = *v17;
      *&v117 = *(v17 + 2);
      v53 = sub_22BBE6DE0(&qword_27D8E2EA0, &unk_22BDC05E0);
      v54 = v53[12];
      v55 = &v17[v53[16]];
      v56 = *v55;
      v57 = *(v55 + 1);
      v58 = &v17[v53[20]];
      v59 = *v58;
      v60 = *(v58 + 1);
      v119 = *&v17[v53[24]];
      v61 = v120;
      sub_22BB6BEE0(&v17[v54], v120, &qword_27D8E2928, &qword_22BDBCFA0);
      v62 = v53[12];
      v63 = v122;
      v64 = (v122 + v53[16]);
      v65 = (v122 + v53[20]);
      v66 = (v122 + v53[24]);
      *v122 = v118;
      *(v63 + 2) = v117;
      sub_22BB6BEE0(v61, v63 + v62, &qword_27D8E2928, &qword_22BDBCFA0);
      *v64 = v56;
      v64[1] = v57;
      *v65 = v59;
      v65[1] = v60;
      v67 = swift_allocObject();
      *(v67 + 16) = v121;
      *(v67 + 24) = v119;
      *v66 = sub_22BC9D4D8;
      v66[1] = v67;
      goto LABEL_16;
    case 8u:
      v107 = *(sub_22BBE6DE0(&qword_27D8E2E90, &qword_22BDBD6D0) + 48);
      v108 = (v122 + v107);
      v120 = *&v17[v107];
      sub_22BC9D54C(v17, v122, type metadata accessor for FollowUpActionRequest);
      v109 = swift_allocObject();
      *(v109 + 16) = v121;
      *(v109 + 24) = v120;
      *v108 = sub_22BC9D494;
      v108[1] = v109;
      goto LABEL_16;
    case 9u:
      v118 = *v17;
      v24 = *(v17 + 2);
      v25 = sub_22BBE6DE0(&qword_27D8E2EB8, &qword_22BDBD710);
      v26 = *(v25 + 48);
      v119 = *&v17[*(v25 + 64)];
      v27 = v120;
      sub_22BB6BEE0(&v17[v26], v120, &qword_27D8E2928, &qword_22BDBCFA0);
      v28 = *(v25 + 48);
      v29 = v122;
      v30 = (v122 + *(v25 + 64));
      *v122 = v118;
      *(v29 + 2) = v24;
      sub_22BB6BEE0(v27, v29 + v28, &qword_27D8E2928, &qword_22BDBCFA0);
      v31 = swift_allocObject();
      *(v31 + 16) = v121;
      *(v31 + 24) = v119;
      *v30 = sub_22BC9D450;
      v30[1] = v31;
      goto LABEL_16;
    case 0xAu:
    case 0xCu:
      v20 = v123;
      (*(v15 + 8))(v17, v123);
      goto LABEL_14;
    case 0xBu:
      v105 = type metadata accessor for TypedValueExecutionResult(0, v11, v12, v19);
      (*(*(v105 - 8) + 8))(v17, v105);
      v20 = v123;
LABEL_14:
      result = (v18)(v122, v119, v20);
      break;
    default:
      v68 = *(v17 + 4);
      v69 = swift_allocObject();
      v70 = v122;
      *(v69 + 16) = v121;
      *(v69 + 24) = *(v17 + 40);
      v71 = *(v17 + 1);
      *v70 = *v17;
      v70[1] = v71;
      *(v70 + 4) = v68;
      *(v70 + 5) = sub_22BC9D680;
      *(v70 + 6) = v69;
LABEL_16:
      swift_storeEnumTagMultiPayload();

      break;
  }

  return result;
}

uint64_t sub_22BC9C70C(uint64_t a1)
{
  sub_22BB30444();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  sub_22BB30574();
  sub_22BB33230();
  (*(v4 + 16))(v1);
  sub_22BB31F54();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 3u:
      v11 = *(v1 + 16);

      sub_22BBE6DE0(&qword_27D8E2EE0, &qword_22BDBD750);
      sub_22BB3518C();
      sub_22BB37CAC(*(v12 + 80));

      sub_22BB37CAC(v11[24]);

      sub_22BDBA5C4();
      goto LABEL_10;
    case 4u:
      v20 = sub_22BBE6DE0(&qword_27D8E2EC8, &qword_22BDBD730);
      sub_22BB37CAC(*(v20 + 48));

      v21 = type metadata accessor for ActionConfirmationDialogRequest;
      goto LABEL_14;
    case 5u:
      v22 = *(v1 + 16);

      sub_22BBE6DE0(&qword_27D8E2EC0, &qword_22BDBD720);
      sub_22BB3518C();
      v24 = *(v23 + 80);
      sub_22BB37CAC(*(v23 + 96));

      sub_22BB37CAC(v22[28]);

      sub_22BB37CAC(v22[32]);

      sub_22BB325EC(v1 + v24, &qword_27D8E2928, &qword_22BDBCFA0);
      sub_22BDBA594();
LABEL_10:
      sub_22BB31F70();
      (*(v25 + 8))(v1 + v4);
      goto LABEL_15;
    case 7u:
      v17 = *(v1 + 16);

      v18 = sub_22BBE6DE0(&qword_27D8E2EA0, &unk_22BDC05E0);
      v19 = v18[12];
      sub_22BB37CAC(v18[16]);

      sub_22BB37CAC(v18[20]);

      sub_22BB37CAC(v18[24]);

      v16 = v1 + v19;
      goto LABEL_7;
    case 8u:
      v28 = sub_22BBE6DE0(&qword_27D8E2E90, &qword_22BDBD6D0);
      sub_22BB37CAC(*(v28 + 48));

      v21 = type metadata accessor for FollowUpActionRequest;
LABEL_14:
      sub_22BC9D3D4(v1, v21);
      goto LABEL_15;
    case 9u:
      v13 = *(v1 + 16);

      v14 = sub_22BBE6DE0(&qword_27D8E2EB8, &qword_22BDBD710);
      v15 = *(v14 + 48);
      sub_22BB37CAC(*(v14 + 64));

      v16 = v1 + v15;
LABEL_7:
      sub_22BB325EC(v16, &qword_27D8E2928, &qword_22BDBCFA0);
      goto LABEL_15;
    case 0xAu:
    case 0xCu:
      v9 = sub_22BB31F54();
      v10(v9);
      goto LABEL_12;
    case 0xBu:
      type metadata accessor for TypedValueExecutionResult(0, *(a1 + 16), *(a1 + 24), v6);
      sub_22BB31F70();
      (*(v26 + 8))(v1);
LABEL_12:
      result = 0;
      break;
    default:
      v7 = sub_22BB31F54();
      v8(v7);
LABEL_15:
      result = 1;
      break;
  }

  return result;
}

uint64_t sub_22BC9CA50(uint64_t a1, uint64_t a2, void (*a3)(char *, char *), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v29 = a4;
  v30 = a3;
  v28 = a2;
  v31 = type metadata accessor for ToolExecutionEvent(255, *(*v6 + 80), *(*v6 + 96), a4);
  v11 = sub_22BDBB254();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v27 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v26 - v15;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v18 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v20 = &v26 - v19;
  (*(*(a5 - 8) + 16))(&v26 - v19, a1, a5);
  v21 = *(TupleTypeMetadata2 + 48);
  (*(*(a6 - 8) + 16))(&v20[v21], v28, a6);
  v22 = *(*v7 + 112);
  swift_beginAccess();
  (*(v12 + 16))(v16, v7 + v22, v11);
  LODWORD(a6) = sub_22BB3AA28(v16, 1, v31);
  v23 = *(v12 + 8);
  v28 = v11;
  v23(v16, v11);
  if (a6 == 1)
  {
    result = sub_22BDBB4D4();
    __break(1u);
  }

  else
  {
    v30(v20, &v20[v21]);
    (*(v18 + 8))(v20, TupleTypeMetadata2);
    v24 = v27;
    sub_22BB336D0(v27, 1, 1, v31);
    swift_beginAccess();
    (*(v12 + 40))(v7 + v22, v24, v28);
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_22BC9CDC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t *a8, void (*a9)(char *, char *))
{
  v14[0] = a2;
  v14[1] = a3;
  v13[2] = a5;
  v13[3] = a6;
  v10 = sub_22BBE6DE0(a7, a8);
  v11 = sub_22BBE6DE0(&qword_27D8E2E70, &unk_22BDC05F0);
  return sub_22BC9CA50(a1, v14, a9, v13, v10, v11);
}

uint64_t sub_22BC9CE48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(void), void (*a8)(char *, char *))
{
  v14[0] = a2;
  v14[1] = a3;
  v13[2] = a5;
  v13[3] = a6;
  v10 = a7(0);
  v11 = sub_22BBE6DE0(&qword_27D8E2E70, &unk_22BDC05F0);
  return sub_22BC9CA50(a1, v14, a8, v13, v10, v11);
}

uint64_t *sub_22BC9CEC8()
{
  v1 = *v0;
  sub_22BC96D00(0, 0);
  v2 = *(*v0 + 112);
  type metadata accessor for ToolExecutionEvent(255, *(v1 + 80), *(v1 + 96), v3);
  v4 = sub_22BDBB254();
  (*(*(v4 - 8) + 8))(v0 + v2, v4);
  return v0;
}

uint64_t sub_22BC9CF80()
{
  v0 = sub_22BC9CEC8();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_22BC9CFD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(*v4 + 112);
  v6 = type metadata accessor for ToolExecutionEvent(0, *(*v4 + 80), *(*v4 + 96), a4);
  sub_22BB336D0(v4 + v5, 1, 1, v6);
  return v4;
}

uint64_t *sub_22BC9D050()
{
  v1 = *v0;
  v2 = qword_28142DA98;
  sub_22BDB8E14();
  sub_22BB31F70();
  (*(v3 + 8))(v0 + v2);
  sub_22BB325EC(v0 + qword_28142F458, &qword_27D8E3A80, &qword_22BDC0608);

  sub_22BB325EC(v0 + qword_28142DAA0, &qword_27D8E2530, &qword_22BDBCBF0);
  sub_22BB325EC(v0 + qword_28142DAA8, &qword_27D8E2B40, &unk_22BDBD9B0);
  (*(*(*(v1 + 88) - 8) + 8))(v0 + *(*v0 + 168));
  v4 = *(*v0 + 184);
  sub_22BDB43E4();
  sub_22BB31F70();
  (*(v5 + 8))(v0 + v4);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_22BC9D1BC()
{
  sub_22BC9D050();

  return MEMORY[0x282200960](v0);
}

void sub_22BC9D1E8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_22BB358DC();
    v4 = sub_22BDBB254();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_22BC9D258(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ToolExecutionEvent(255, *(a1 + 80), *(a1 + 96), a4);
  result = sub_22BDBB254();
  if (v5 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_22BC9D33C(uint64_t a1)
{
  sub_22BC9D1E8(319, &qword_2814288F0, MEMORY[0x277D72DC0]);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_22BC9D3D4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_22BB31F70();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_22BC9D54C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_22BB2F330();
  v4 = sub_22BB31F54();
  v5(v4);
  return a2;
}

uint64_t sub_22BC9D714(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    sub_22BB358DC();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_22BC9D758()
{
  result = qword_27D8E3A88;
  if (!qword_27D8E3A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E3A88);
  }

  return result;
}

uint64_t sub_22BC9D7C8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_22BBE6DE0(&qword_27D8E3A90, &qword_22BDC0610);
  result = sub_22BDBB314();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v29 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    sub_22BDBB814();

    sub_22BDBAC54();
    result = sub_22BDBB834();
    v19 = -1 << *(v9 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
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
        v26 = *(v12 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_30;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v9 + 48) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_31;
    }

    v4 = v29;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_22BC9D9E4(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
        v12 = *v11;
        v13 = v11[1];

        sub_22BC9DFE8(v12, v13);

        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }

  return result;
}

uint64_t sub_22BC9DB10(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  v56 = *MEMORY[0x277D85DE8];
  if (*(a2 + 16))
  {
    v7 = a1 + 56;
    v6 = *(a1 + 56);
    v8 = -1;
    v9 = -1 << *(a1 + 32);
    v47 = ~v9;
    if (-v9 < 64)
    {
      v10 = ~(-1 << -v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & v6;
    v12 = (63 - v9) >> 6;
    v13 = a2 + 56;

    v15 = 0;
    v49 = v12;
    v50 = v7;
    v51 = v14;
    if (v11)
    {
      while (2)
      {
        v16 = v15;
LABEL_11:
        v18 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
        v19 = (*(v14 + 48) + ((v16 << 10) | (16 * v18)));
        v3 = *v19;
        v2 = v19[1];
        sub_22BDBB814();

        sub_22BDBAC54();
        v20 = sub_22BDBB834();
        v21 = ~(-1 << *(v5 + 32));
        while (1)
        {
          v7 = v20 & v21;
          v4 = (v20 & v21) >> 6;
          v8 = 1 << (v20 & v21);
          if ((v8 & *(v13 + 8 * v4)) == 0)
          {
            break;
          }

          v22 = (*(v5 + 48) + 16 * v7);
          v23 = *v22 == v3 && v22[1] == v2;
          if (v23 || (sub_22BDBB6D4() & 1) != 0)
          {
            v53 = v47;
            v54 = v16;
            v55 = v11;
            v3 = v50;
            v12 = v51;
            v52[0] = v51;
            v52[1] = v50;

            v25 = *(v5 + 32);
            v44 = ((1 << v25) + 63) >> 6;
            v2 = 8 * v44;
            if ((v25 & 0x3Fu) > 0xD)
            {
              goto LABEL_48;
            }

            while (1)
            {
              v45 = &v43;
              MEMORY[0x28223BE20](v24);
              v7 = &v43 - ((v2 + 15) & 0x3FFFFFFFFFFFFFF0);
              memcpy(v7, (v5 + 56), v2);
              v26 = *(v7 + 8 * v4) & ~v8;
              v27 = *(v5 + 16);
              v48 = v7;
              *(v7 + 8 * v4) = v26;
              v28 = v27 - 1;
              v29 = v49;
              while (1)
              {
                v46 = v28;
LABEL_24:
                if (!v11)
                {
                  break;
                }

LABEL_29:
                v31 = __clz(__rbit64(v11));
                v11 &= v11 - 1;
                v32 = (*(v12 + 48) + ((v16 << 10) | (16 * v31)));
                v2 = *v32;
                v33 = v32[1];
                sub_22BDBB814();

                sub_22BDBAC54();
                v34 = sub_22BDBB834();
                v35 = ~(-1 << *(v5 + 32));
                do
                {
                  v4 = v34 & v35;
                  v7 = (v34 & v35) >> 6;
                  v8 = 1 << (v34 & v35);
                  if ((v8 & *(v13 + 8 * v7)) == 0)
                  {

                    v3 = v50;
                    v12 = v51;
                    v29 = v49;
                    goto LABEL_24;
                  }

                  v36 = (*(v5 + 48) + 16 * v4);
                  if (*v36 == v2 && v36[1] == v33)
                  {
                    break;
                  }

                  v38 = sub_22BDBB6D4();
                  v34 = v4 + 1;
                }

                while ((v38 & 1) == 0);

                v39 = v48[v7];
                v48[v7] = v39 & ~v8;
                v3 = v50;
                v12 = v51;
                v29 = v49;
                if ((v39 & v8) == 0)
                {
                  goto LABEL_24;
                }

                v28 = v46 - 1;
                if (__OFSUB__(v46, 1))
                {
                  __break(1u);
                }

                if (v46 == 1)
                {

                  v5 = MEMORY[0x277D84FA0];
                  goto LABEL_44;
                }
              }

              while (1)
              {
                v30 = v16 + 1;
                if (__OFADD__(v16, 1))
                {
                  break;
                }

                if (v30 >= v29)
                {
                  v5 = sub_22BC9D7C8(v48, v44, v46, v5);
                  goto LABEL_44;
                }

                v11 = *(v3 + 8 * v30);
                ++v16;
                if (v11)
                {
                  v16 = v30;
                  goto LABEL_29;
                }
              }

              __break(1u);
LABEL_47:
              __break(1u);
LABEL_48:

              if (!swift_stdlib_isStackAllocationSafe())
              {
                break;
              }
            }

            v41 = swift_slowAlloc();
            v42 = sub_22BC9E2FC(v41, v44, (v5 + 56), v44, v5, v7, v52);

            MEMORY[0x2318A6080](v41, -1, -1);
            v47 = v53;
            v5 = v42;
            goto LABEL_44;
          }

          v20 = v7 + 1;
        }

        v15 = v16;
        v7 = v50;
        v14 = v51;
        v12 = v49;
        v8 = -1;
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    v17 = v15;
    while (1)
    {
      v16 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        goto LABEL_47;
      }

      if (v16 >= v12)
      {
        break;
      }

      v11 = *(v7 + 8 * v16);
      ++v17;
      if (v11)
      {
        goto LABEL_11;
      }
    }

LABEL_44:
    sub_22BBCD888();
  }

  else
  {

    return MEMORY[0x277D84FA0];
  }

  return v5;
}

uint64_t sub_22BC9DFE8(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  sub_22BDBB814();
  sub_22BDBAC54();
  v6 = sub_22BDBB834();
  v7 = ~(-1 << *(v5 + 32));
  while (1)
  {
    v8 = v6 & v7;
    if (((*(v5 + 56 + (((v6 & v7) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v6 & v7)) & 1) == 0)
    {
      return 0;
    }

    v9 = (*(v5 + 48) + 16 * v8);
    v10 = *v9 == a1 && v9[1] == a2;
    if (v10 || (sub_22BDBB6D4() & 1) != 0)
    {
      break;
    }

    v6 = v8 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *v2;
  v15 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_22BD2D290();
    v12 = v15;
  }

  v13 = *(*(v12 + 48) + 16 * v8);
  sub_22BC9E384(v8);
  *v2 = v15;
  return v13;
}

unint64_t *sub_22BC9E110(unint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  v27 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (1)
  {
    v26 = v8;
LABEL_3:
    v10 = a5[3];
    v11 = a5[4];
    if (!v11)
    {
      break;
    }

    v12 = a5[3];
LABEL_8:
    v13 = (*(*a5 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v11)))));
    v15 = *v13;
    v14 = v13[1];
    a5[3] = v12;
    a5[4] = (v11 - 1) & v11;
    sub_22BDBB814();

    sub_22BDBAC54();
    v16 = sub_22BDBB834();
    v17 = ~(-1 << *(a3 + 32));
    do
    {
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = 1 << (v16 & v17);
      if ((v20 & *(v9 + 8 * v19)) == 0)
      {

        goto LABEL_3;
      }

      v21 = (*(a3 + 48) + 16 * v18);
      if (*v21 == v15 && v21[1] == v14)
      {
        break;
      }

      v23 = sub_22BDBB6D4();
      v16 = v18 + 1;
    }

    while ((v23 & 1) == 0);

    v24 = v27[v19];
    v27[v19] = v24 & ~v20;
    if ((v24 & v20) == 0)
    {
      goto LABEL_3;
    }

    v8 = v26 - 1;
    if (__OFSUB__(v26, 1))
    {
      goto LABEL_23;
    }

    if (v26 == 1)
    {
      return MEMORY[0x277D84FA0];
    }
  }

  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= ((a5[2] + 64) >> 6))
    {
      a5[3] = v10;
      a5[4] = 0;

      return sub_22BC9D7C8(v27, a2, v26, a3);
    }

    v11 = *(a5[1] + 8 * v12);
    ++v10;
    if (v11)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

unint64_t *sub_22BC9E2FC(void *a1, uint64_t a2, void *__src, uint64_t a4, uint64_t a5, unint64_t a6, void *a7)
{
  memcpy(a1, __src, 8 * a4);
  v12 = sub_22BC9E110(a1, a2, a5, a6, a7);

  return v12;
}

unint64_t sub_22BC9E384(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_22BDBB2D4();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_22BDBB814();

        sub_22BDBAC54();
        v10 = sub_22BDBB834();

        v11 = v10 & v7;
        if (v2 >= v9)
        {
          if (v11 >= v9 && v2 >= v11)
          {
LABEL_15:
            v14 = *(v3 + 48);
            v15 = (v14 + 16 * v2);
            v16 = (v14 + 16 * v6);
            if (v2 != v6 || v15 >= v16 + 1)
            {
              *v15 = *v16;
              v2 = v6;
            }
          }
        }

        else if (v11 >= v9 || v2 >= v11)
        {
          goto LABEL_15;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v18 = *(v3 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v20;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_22BC9E554(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_22BB2F330();
  v4 = sub_22BB31F54();
  v5(v4);
  return a2;
}

void sub_22BC9E5B0(uint64_t a1)
{
  sub_22BC9F160(319);
  if (v2 <= 0x3F)
  {
    sub_22BC9F1F4(319);
    if (v3 <= 0x3F)
    {
      sub_22BC9F5E4(319, &qword_27D8E3B48, type metadata accessor for ActionConfirmationDialogRequest);
      if (v4 <= 0x3F)
      {
        sub_22BC9F31C(319);
        if (v5 <= 0x3F)
        {
          sub_22BC72D30();
          if (v7 <= 0x3F)
          {
            type metadata accessor for TypedValueExecutionResult(255, *(a1 + 16), *(a1 + 32), v6);
            sub_22BBEB2E0(&qword_27D8E2530, &qword_22BDBCBF0);
            sub_22BBEB2E0(&qword_27D8E2B40, &unk_22BDBD9B0);
            swift_getTupleTypeMetadata3();
            if (v8 <= 0x3F)
            {
              swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_22BC9E6F0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(sub_22BDBA5C4() - 8);
  v5 = ((*(v4 + 64) + ((*(v4 + 80) + 40) & ~*(v4 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  v6 = *(sub_22BDBA694() - 8);
  v7 = *(v6 + 80);
  v45 = (v7 + 24) & ~v7;
  v43 = *(v6 + 84);
  v42 = *(v6 + 64);
  v8 = *(sub_22BDB54C4() - 8);
  v9 = *(v8 + 80);
  v40 = *(v8 + 84);
  v41 = *(v8 + 64);
  v10 = *(sub_22BDBA594() - 8);
  v11 = *(v10 + 80);
  v12 = *(v10 + 64);
  v13 = *(*(*(a3 + 16) - 8) + 84);
  v44 = *(*(*(a3 + 16) - 8) + 64);
  v14 = *(sub_22BDB43E4() - 8);
  v15 = *(v14 + 80);
  v16 = *(v14 + 64);
  v17 = *(sub_22BDBA044() - 8);
  v18 = *(v17 + 80);
  v19 = *(v17 + 64);
  v20 = *(sub_22BBE6DE0(&qword_27D8E2E68, &unk_22BDBD5D0) - 8);
  v22 = v41;
  v21 = v42;
  if (!v43)
  {
    v21 = v42 + 1;
  }

  v23 = v45 + v21;
  if (!v40)
  {
    v22 = v41 + 1;
  }

  v24 = v22 + ((((((v45 + v21 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + v9 + 16) & ~v9) + 2;
  if (v5 > v24)
  {
    v24 = v5;
  }

  v25 = ((((v21 + ((v12 + v7 + ((v11 + 40) & ~v11)) & ~v7) + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v24 > v25)
  {
    v25 = v24;
  }

  v26 = *(v20 + 80);
  v27 = v26 | 7;
  v28 = (*(v20 + 64) + ((v26 + 16) & ~v26) + 7) & 0xFFFFFFFFFFFFFFF8;
  v29 = v44;
  if (!v13)
  {
    v29 = v44 + 1;
  }

  v30 = (((((v7 | 7) + v19 + ((((((v16 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + v18 + ((v29 + (v15 & 0xF8 | 7)) & ~(v15 & 0xF8 | 7)) + 24) & ~v18) + 1) & ~(v7 | 7)) + v23 + v27) & ~v27) + v28 + 8;
  if (v25 > v30)
  {
    v30 = v25;
  }

  v31 = 48;
  if (v30 > 0x30)
  {
    v31 = v30;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_34;
  }

  v32 = v31 + 1;
  v33 = 8 * (v31 + 1);
  if ((v31 + 1) <= 3)
  {
    v36 = ((a2 + ~(-1 << v33) - 249) >> v33) + 1;
    if (HIWORD(v36))
    {
      v34 = *(a1 + v32);
      if (!v34)
      {
        goto LABEL_34;
      }

      goto LABEL_26;
    }

    if (v36 > 0xFF)
    {
      v34 = *(a1 + v32);
      if (!*(a1 + v32))
      {
        goto LABEL_34;
      }

      goto LABEL_26;
    }

    if (v36 < 2)
    {
LABEL_34:
      v38 = *(a1 + v31);
      if (v38 >= 7)
      {
        return (v38 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v34 = *(a1 + v32);
  if (!*(a1 + v32))
  {
    goto LABEL_34;
  }

LABEL_26:
  v37 = (v34 - 1) << v33;
  if (v32 > 3)
  {
    v37 = 0;
  }

  if (v32)
  {
    if (v32 > 3)
    {
      LODWORD(v32) = 4;
    }

    switch(v32)
    {
      case 2:
        LODWORD(v32) = *a1;
        break;
      case 3:
        LODWORD(v32) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v32) = *a1;
        break;
      default:
        LODWORD(v32) = *a1;
        break;
    }
  }

  return (v32 | v37) + 250;
}

void sub_22BC9EBE8(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(sub_22BDBA5C4() - 8);
  v6 = ((*(v5 + 64) + ((*(v5 + 80) + 40) & ~*(v5 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  v7 = *(sub_22BDBA694() - 8);
  v8 = *(v7 + 80);
  v47 = (v8 + 24) & ~v8;
  v45 = *(v7 + 84);
  v44 = *(v7 + 64);
  v9 = *(sub_22BDB54C4() - 8);
  v10 = *(v9 + 80);
  v11 = *(v9 + 84);
  v43 = *(v9 + 64);
  v12 = *(sub_22BDBA594() - 8);
  v13 = *(v12 + 80);
  v14 = *(v12 + 64);
  v42 = *(*(*(a4 + 16) - 8) + 84);
  v46 = *(*(*(a4 + 16) - 8) + 64);
  v15 = *(sub_22BDB43E4() - 8);
  v16 = *(v15 + 80);
  v17 = *(v15 + 64);
  v18 = *(sub_22BDBA044() - 8);
  v19 = *(v18 + 80);
  v20 = *(v18 + 64);
  v21 = *(sub_22BBE6DE0(&qword_27D8E2E68, &unk_22BDBD5D0) - 8);
  v23 = v43;
  v22 = v44;
  if (!v45)
  {
    v22 = v44 + 1;
  }

  v24 = v47 + v22;
  if (!v11)
  {
    v23 = v43 + 1;
  }

  v25 = v23 + ((((((v47 + v22 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + v10 + 16) & ~v10) + 2;
  if (v6 > v25)
  {
    v25 = v6;
  }

  v26 = ((((v22 + ((v14 + v8 + ((v13 + 40) & ~v13)) & ~v8) + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v25 > v26)
  {
    v26 = v25;
  }

  v27 = *(v21 + 80);
  v28 = v27 | 7;
  v29 = (*(v21 + 64) + ((v27 + 16) & ~v27) + 7) & 0xFFFFFFFFFFFFFFF8;
  v30 = v46;
  if (!v42)
  {
    v30 = v46 + 1;
  }

  v31 = (((((v8 | 7) + v20 + ((((((v17 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + v19 + ((v30 + (v16 & 0xF8 | 7)) & ~(v16 & 0xF8 | 7)) + 24) & ~v19) + 1) & ~(v8 | 7)) + v24 + v28) & ~v28) + v29 + 8;
  if (v26 > v31)
  {
    v31 = v26;
  }

  if (v31 <= 0x30)
  {
    v31 = 48;
  }

  v32 = v31 + 1;
  v33 = 8 * (v31 + 1);
  if (a3 < 0xFA)
  {
    v36 = 0;
    v34 = a1;
    v35 = a2;
  }

  else
  {
    v34 = a1;
    v35 = a2;
    if (v32 <= 3)
    {
      v39 = ((a3 + ~(-1 << v33) - 249) >> v33) + 1;
      if (HIWORD(v39))
      {
        v36 = 4;
      }

      else
      {
        if (v39 < 0x100)
        {
          v40 = 1;
        }

        else
        {
          v40 = 2;
        }

        if (v39 >= 2)
        {
          v36 = v40;
        }

        else
        {
          v36 = 0;
        }
      }
    }

    else
    {
      v36 = 1;
    }
  }

  if (v35 > 0xF9)
  {
    v37 = v35 - 250;
    if (v32 < 4)
    {
      v38 = (v37 >> v33) + 1;
      if (v31 != -1)
      {
        v41 = v37 & ~(-1 << v33);
        bzero(v34, v32);
        if (v32 == 3)
        {
          *v34 = v41;
          v34[2] = BYTE2(v41);
        }

        else if (v32 == 2)
        {
          *v34 = v41;
        }

        else
        {
          *v34 = v37;
        }
      }
    }

    else
    {
      bzero(v34, v31 + 1);
      *v34 = v37;
      v38 = 1;
    }

    switch(v36)
    {
      case 1:
        v34[v32] = v38;
        break;
      case 2:
        *&v34[v32] = v38;
        break;
      case 3:
LABEL_49:
        __break(1u);
        break;
      case 4:
        *&v34[v32] = v38;
        break;
      default:
        return;
    }
  }

  else
  {
    switch(v36)
    {
      case 1:
        v34[v32] = 0;
        if (!v35)
        {
          return;
        }

        goto LABEL_38;
      case 2:
        *&v34[v32] = 0;
        goto LABEL_37;
      case 3:
        goto LABEL_49;
      case 4:
        *&v34[v32] = 0;
        if (!v35)
        {
          return;
        }

        goto LABEL_38;
      default:
LABEL_37:
        if (v35)
        {
LABEL_38:
          v34[v31] = -v35;
        }

        break;
    }
  }
}

void sub_22BC9F160(uint64_t a1)
{
  if (!qword_27D8E3B38)
  {
    sub_22BBEB2E0(&qword_27D8E2E80, qword_22BDC0650);
    sub_22BBEB2E0(&qword_27D8E2E70, &unk_22BDC05F0);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_27D8E3B38);
    }
  }
}

void sub_22BC9F1F4(uint64_t a1)
{
  if (!qword_27D8E3B40)
  {
    MEMORY[0x28223BE20](0);
    sub_22BBEB2E0(&qword_27D8E2E70, &unk_22BDC05F0);
    sub_22BDBA5C4();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_27D8E3B40);
    }
  }
}

void sub_22BC9F31C(uint64_t a1)
{
  if (!qword_27D8E3B50)
  {
    MEMORY[0x28223BE20](0);
    sub_22BDBA594();
    sub_22BBEB2E0(&qword_27D8E2928, &qword_22BDBCFA0);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_27D8E3B50);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for ToolExecutionError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

void sub_22BC9F540(uint64_t a1)
{
  sub_22BC9F5E4(319, &qword_27D8E3B68, MEMORY[0x277D1E5B0]);
  if (v1 <= 0x3F)
  {
    sub_22BC9F630(319);
    if (v2 <= 0x3F)
    {
      sub_22BC9F69C();
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_22BC9F5E4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
{
  if (!*a2)
  {
    v4 = a3(0);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_22BC9F630(uint64_t a1)
{
  if (!qword_27D8E3B70)
  {
    sub_22BDB9504();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27D8E3B70);
    }
  }
}

uint64_t sub_22BC9F69C()
{
  result = qword_27D8E3B78;
  if (!qword_27D8E3B78)
  {
    result = MEMORY[0x277D837D0];
    atomic_store(MEMORY[0x277D837D0], &qword_27D8E3B78);
  }

  return result;
}

unint64_t sub_22BC9F714()
{
  result = qword_27D8E3B80;
  if (!qword_27D8E3B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E3B80);
  }

  return result;
}

unint64_t sub_22BC9F768()
{
  result = qword_27D8E3B90;
  if (!qword_27D8E3B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E3B90);
  }

  return result;
}

void sub_22BC9F7C4()
{
  v2 = *(v0 + 632);
  *(v1 - 104) = *(v0 + 584);
  *(v1 - 96) = v2;
}

uint64_t sub_22BC9F7EC(__n128 a1)
{
  *(v2 - 104) = a1;
  *(v2 - 88) = v1;
  type metadata accessor for ToolExecution.DialogState(0, v2 - 112);

  return sub_22BC924C0();
}

uint64_t ToolInvocationSummaryInput.toolInvocation.getter@<X0>(uint64_t a1@<X8>)
{
  sub_22BDBA044();
  sub_22BB2F330();
  v5 = *(v4 + 16);

  return v5(a1, v1, v3);
}

uint64_t sub_22BC9F89C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6F766E496C6F6F74 && a2 == 0xEE006E6F69746163)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_22BDBB6D4();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_22BC9F944@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22BC9F89C(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_22BC9F970(uint64_t a1)
{
  v2 = sub_22BC9FB0C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BC9F9AC(uint64_t a1)
{
  v2 = sub_22BC9FB0C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ToolInvocationSummaryInput.encode(to:)(void *a1)
{
  sub_22BBE6DE0(&qword_27D8E3BA8, &qword_22BDC0850);
  sub_22BB30444();
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v2);
  sub_22BB69FEC(a1, a1[3]);
  v3 = sub_22BC9FB0C();
  sub_22BB38D30(&type metadata for ToolInvocationSummaryInput.CodingKeys, v4, v3);
  sub_22BDBA044();
  sub_22BB33C7C();
  v7 = sub_22BCA0304(v5, v6, MEMORY[0x277D72280]);
  sub_22BB32728(v7, v8);
  v9 = sub_22BB3620C();
  return v10(v9);
}

unint64_t sub_22BC9FB0C()
{
  result = qword_27D8E3BB0;
  if (!qword_27D8E3BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E3BB0);
  }

  return result;
}

uint64_t ToolInvocationSummaryInput.init(from:)@<X0>(uint64_t a1@<X8>)
{
  sub_22BB310A8(a1);
  sub_22BDBA044();
  sub_22BB30444();
  MEMORY[0x28223BE20](v3);
  sub_22BB30574();
  sub_22BBE6DE0(&qword_27D8E3BB8, &qword_22BDC0858);
  sub_22BB30444();
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v4);
  v5 = sub_22BB3A5CC();
  v6 = type metadata accessor for ToolInvocationSummaryInput(v5);
  MEMORY[0x28223BE20](v6 - 8);
  sub_22BB30574();
  v9 = v8 - v7;
  sub_22BB69FEC(v1, v1[3]);
  v10 = sub_22BC9FB0C();
  sub_22BB376EC(&type metadata for ToolInvocationSummaryInput.CodingKeys, v11, v10);
  if (!v2)
  {
    sub_22BB33C7C();
    v14 = sub_22BCA0304(v12, v13, MEMORY[0x277D72290]);
    sub_22BB31C28(v14, v15);
    v16 = sub_22BB30CBC();
    v17(v16);
    v18 = sub_22BB3569C();
    v19(v18);
    sub_22BCA034C(v9, v21, type metadata accessor for ToolInvocationSummaryInput);
  }

  return sub_22BB32FA4(v1);
}

uint64_t sub_22BC9FDC4@<X0>(uint64_t a1@<X0>, void (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  a2(0);
  sub_22BB2F330();
  v7 = *(v6 + 32);

  return v7(a3, a1, v5);
}

uint64_t sub_22BC9FE2C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000015 && 0x800000022BDD2700 == a2)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_22BDBB6D4();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_22BC9FECC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22BC9FE2C(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_22BC9FEF8(uint64_t a1)
{
  v2 = sub_22BCA0094();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BC9FF34(uint64_t a1)
{
  v2 = sub_22BCA0094();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ToolInvocationSummaryOutput.encode(to:)(void *a1)
{
  sub_22BBE6DE0(&qword_27D8E3BC0, &qword_22BDC0860);
  sub_22BB30444();
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v2);
  sub_22BB69FEC(a1, a1[3]);
  v3 = sub_22BCA0094();
  sub_22BB38D30(&type metadata for ToolInvocationSummaryOutput.CodingKeys, v4, v3);
  sub_22BDB5014();
  sub_22BB30778();
  v7 = sub_22BCA0304(v5, v6, MEMORY[0x277D1C738]);
  sub_22BB32728(v7, v8);
  v9 = sub_22BB3620C();
  return v10(v9);
}

unint64_t sub_22BCA0094()
{
  result = qword_27D8E3BC8;
  if (!qword_27D8E3BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E3BC8);
  }

  return result;
}

uint64_t ToolInvocationSummaryOutput.init(from:)@<X0>(uint64_t a1@<X8>)
{
  sub_22BB310A8(a1);
  sub_22BDB5014();
  sub_22BB30444();
  MEMORY[0x28223BE20](v3);
  sub_22BB30574();
  sub_22BBE6DE0(&qword_27D8E3BD8, &qword_22BDC0868);
  sub_22BB30444();
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v4);
  v5 = sub_22BB3A5CC();
  v6 = type metadata accessor for ToolInvocationSummaryOutput(v5);
  MEMORY[0x28223BE20](v6 - 8);
  sub_22BB30574();
  v9 = v8 - v7;
  sub_22BB69FEC(v1, v1[3]);
  v10 = sub_22BCA0094();
  sub_22BB376EC(&type metadata for ToolInvocationSummaryOutput.CodingKeys, v11, v10);
  if (!v2)
  {
    sub_22BB30778();
    v14 = sub_22BCA0304(v12, v13, MEMORY[0x277D1C740]);
    sub_22BB31C28(v14, v15);
    v16 = sub_22BB30CBC();
    v17(v16);
    v18 = sub_22BB3569C();
    v19(v18);
    sub_22BCA034C(v9, v21, type metadata accessor for ToolInvocationSummaryOutput);
  }

  return sub_22BB32FA4(v1);
}

uint64_t sub_22BCA0304(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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