uint64_t sub_21C82392C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED340, &qword_21CBA6688);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v11 - v6;
  sub_21C6EDBAC(a3, &v11 - v6, &qword_27CDED340, &qword_21CBA6688);
  v8 = sub_21CB82124();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_21C6EA794(v7, &qword_27CDED340, &qword_21CBA6688);
  }

  else
  {
    sub_21CB820D4();
    (*(v9 + 8))(v7, v8);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED348, &qword_21CBA6690);
  return sub_21CB85884();
}

void sub_21C823A8C(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  v6 = a2;
  v5(a2, a3);
}

uint64_t sub_21C823B04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[23] = a4;
  v5[24] = a5;
  v6 = type metadata accessor for PMAppSourceListModel.Source(0);
  v5[25] = v6;
  v5[26] = *(v6 - 8);
  v5[27] = swift_task_alloc();
  v5[28] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDED310, &unk_21CBA0150);
  v5[29] = swift_task_alloc();
  v5[30] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC20, &qword_21CBAD710);
  v5[31] = swift_task_alloc();
  v5[32] = swift_task_alloc();
  v5[33] = swift_task_alloc();
  v5[34] = swift_task_alloc();
  v5[35] = swift_task_alloc();
  v5[36] = swift_task_alloc();
  v5[37] = swift_task_alloc();
  v5[38] = swift_task_alloc();
  v7 = sub_21CB86184();
  v5[39] = v7;
  v5[40] = *(v7 - 8);
  v5[41] = swift_task_alloc();
  v5[42] = swift_task_alloc();
  v5[43] = swift_task_alloc();
  v8 = sub_21CB86194();
  v5[44] = v8;
  v5[45] = *(v8 - 8);
  v5[46] = swift_task_alloc();
  v5[47] = swift_task_alloc();
  sub_21CB858B4();
  v5[48] = sub_21CB858A4();
  v10 = sub_21CB85874();
  v5[49] = v10;
  v5[50] = v9;

  return MEMORY[0x2822009F8](sub_21C823DA8, v10, v9);
}

uint64_t sub_21C823DA8()
{
  sub_21CB82114();
  *(v0 + 408) = 0;
  v2 = *(v0 + 296);
  v1 = *(v0 + 304);
  v3 = *(v0 + 240);
  v25 = *(v0 + 224);
  v4 = *(v0 + 200);
  v5 = *(v0 + 208);
  v6 = *(*(v0 + 192) + 64);
  *(v0 + 448) = v6;
  swift_storeEnumTagMultiPayload();
  v7 = *(v5 + 56);
  *(v0 + 456) = v7;
  *(v0 + 464) = (v5 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v7(v1, 0, 1, v4);
  v8 = OBJC_IVAR____TtC17PasswordManagerUI20PMAppSourceListModel__selectedSource;
  *(v0 + 472) = OBJC_IVAR____TtC17PasswordManagerUI20PMAppSourceListModel__selectedSource;
  swift_beginAccess();
  v26 = v6;
  v24 = v8;
  sub_21C6EDBAC(v6 + v8, v2, &qword_27CDEAC20, &qword_21CBAD710);
  v9 = *(v25 + 48);
  sub_21C6EDBAC(v2, v3, &qword_27CDEAC20, &qword_21CBAD710);
  sub_21C6EDBAC(v1, v3 + v9, &qword_27CDEAC20, &qword_21CBAD710);
  v10 = *(v5 + 48);
  *(v0 + 480) = v10;
  *(v0 + 488) = (v5 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v10(v3, 1, v4) != 1)
  {
    v12 = *(v0 + 200);
    sub_21C6EDBAC(*(v0 + 240), *(v0 + 288), &qword_27CDEAC20, &qword_21CBAD710);
    v13 = v10(v3 + v9, 1, v12);
    v14 = *(v0 + 288);
    v15 = *(v0 + 296);
    if (v13 != 1)
    {
      v18 = *(v0 + 240);
      v19 = *(v0 + 216);
      sub_21C82A8D0(v3 + v9, v19, type metadata accessor for PMAppSourceListModel.Source);
      v20 = sub_21C918FE4(v14, v19);
      sub_21C82A9A0(v19, type metadata accessor for PMAppSourceListModel.Source);
      sub_21C6EA794(v15, &qword_27CDEAC20, &qword_21CBAD710);
      sub_21C82A9A0(v14, type metadata accessor for PMAppSourceListModel.Source);
      sub_21C6EA794(v18, &qword_27CDEAC20, &qword_21CBAD710);
      if (v20)
      {
        goto LABEL_9;
      }

LABEL_7:
      v16 = *(v0 + 304);
      swift_getKeyPath(byte_21CBA6620);
      v17 = swift_task_alloc();
      *(v17 + 16) = v26;
      *(v17 + 24) = v16;
      *(v0 + 168) = v26;
      sub_21C7094C0(&qword_27CDED320, type metadata accessor for PMAppSourceListModel, &unk_21CBB0DB8);
      sub_21CB810C4();

      goto LABEL_10;
    }

    sub_21C6EA794(*(v0 + 296), &qword_27CDEAC20, &qword_21CBAD710);
    sub_21C82A9A0(v14, type metadata accessor for PMAppSourceListModel.Source);
LABEL_6:
    sub_21C6EA794(*(v0 + 240), &unk_27CDED310, &unk_21CBA0150);
    goto LABEL_7;
  }

  v11 = *(v0 + 200);
  sub_21C6EA794(*(v0 + 296), &qword_27CDEAC20, &qword_21CBAD710);
  if (v10(v3 + v9, 1, v11) != 1)
  {
    goto LABEL_6;
  }

  sub_21C6EA794(*(v0 + 240), &qword_27CDEAC20, &qword_21CBAD710);
LABEL_9:
  v22 = *(v0 + 272);
  v21 = *(v0 + 280);
  sub_21C6EDBAC(*(v0 + 304), v21, &qword_27CDEAC20, &qword_21CBAD710);
  sub_21C6EDBAC(v6 + v24, v22, &qword_27CDEAC20, &qword_21CBAD710);
  swift_beginAccess();
  sub_21C743188(v21, v6 + v24);
  swift_endAccess();
  sub_21C7431F8(v22);
  sub_21C6EA794(v22, &qword_27CDEAC20, &qword_21CBAD710);
  sub_21C6EA794(v21, &qword_27CDEAC20, &qword_21CBAD710);
LABEL_10:
  sub_21C6EA794(*(v0 + 304), &qword_27CDEAC20, &qword_21CBAD710);
  sub_21CB863E4();
  *(v0 + 136) = xmmword_21CBA6140;
  *(v0 + 88) = 0;
  *(v0 + 96) = 0;
  *(v0 + 104) = 1;

  return MEMORY[0x2822009F8](sub_21C824B7C, 0, 0);
}

uint64_t sub_21C824248()
{
  v1 = v0[42];
  v2 = v0[39];
  v3 = v0[40];
  v4 = sub_21C7094C0(&qword_27CDED328, MEMORY[0x277D85928], MEMORY[0x277D85930]);
  sub_21CB863C4();
  sub_21C7094C0(&unk_27CDED330, MEMORY[0x277D858F8], MEMORY[0x277D85920]);
  sub_21CB861A4();
  v5 = *(v3 + 8);
  v0[52] = v5;
  v0[53] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v1, v2);
  v6 = swift_task_alloc();
  v0[54] = v6;
  *v6 = v0;
  v6[1] = sub_21C8243CC;
  v8 = v0[43];
  v7 = v0[44];

  return MEMORY[0x2822008C8](v8, v0 + 14, v7, v4);
}

uint64_t sub_21C8243CC()
{
  v2 = *v1;
  *(*v1 + 440) = v0;

  if (v0)
  {
    (*(v2 + 416))(*(v2 + 344), *(v2 + 312));
    v3 = sub_21C8249C8;
    v4 = 0;
    v5 = 0;
  }

  else
  {
    v6 = *(v2 + 376);
    v7 = *(v2 + 352);
    v8 = *(v2 + 360);
    (*(v2 + 416))(*(v2 + 344), *(v2 + 312));
    (*(v8 + 8))(v6, v7);
    v4 = *(v2 + 392);
    v5 = *(v2 + 400);
    v3 = sub_21C824530;
  }

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_21C824530()
{
  v2 = *(v0 + 296);
  v1 = *(v0 + 304);
  v3 = *(v0 + 240);
  v25 = *(v0 + 224);
  v5 = *(v0 + 200);
  v4 = *(v0 + 208);
  v6 = *(*(v0 + 192) + 64);
  *(v0 + 448) = v6;
  swift_storeEnumTagMultiPayload();
  v7 = *(v4 + 56);
  *(v0 + 456) = v7;
  *(v0 + 464) = (v4 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v7(v1, 0, 1, v5);
  v8 = OBJC_IVAR____TtC17PasswordManagerUI20PMAppSourceListModel__selectedSource;
  *(v0 + 472) = OBJC_IVAR____TtC17PasswordManagerUI20PMAppSourceListModel__selectedSource;
  swift_beginAccess();
  v26 = v6;
  v24 = v8;
  sub_21C6EDBAC(v6 + v8, v2, &qword_27CDEAC20, &qword_21CBAD710);
  v9 = *(v25 + 48);
  sub_21C6EDBAC(v2, v3, &qword_27CDEAC20, &qword_21CBAD710);
  sub_21C6EDBAC(v1, v3 + v9, &qword_27CDEAC20, &qword_21CBAD710);
  v10 = *(v4 + 48);
  *(v0 + 480) = v10;
  *(v0 + 488) = (v4 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v10(v3, 1, v5) != 1)
  {
    v12 = *(v0 + 200);
    sub_21C6EDBAC(*(v0 + 240), *(v0 + 288), &qword_27CDEAC20, &qword_21CBAD710);
    v13 = v10(v3 + v9, 1, v12);
    v14 = *(v0 + 288);
    v15 = *(v0 + 296);
    if (v13 != 1)
    {
      v18 = *(v0 + 240);
      v19 = *(v0 + 216);
      sub_21C82A8D0(v3 + v9, v19, type metadata accessor for PMAppSourceListModel.Source);
      v20 = sub_21C918FE4(v14, v19);
      sub_21C82A9A0(v19, type metadata accessor for PMAppSourceListModel.Source);
      sub_21C6EA794(v15, &qword_27CDEAC20, &qword_21CBAD710);
      sub_21C82A9A0(v14, type metadata accessor for PMAppSourceListModel.Source);
      sub_21C6EA794(v18, &qword_27CDEAC20, &qword_21CBAD710);
      if (v20)
      {
        goto LABEL_9;
      }

LABEL_7:
      v16 = *(v0 + 304);
      swift_getKeyPath(byte_21CBA6620, v24);
      v17 = swift_task_alloc();
      *(v17 + 16) = v26;
      *(v17 + 24) = v16;
      *(v0 + 168) = v26;
      sub_21C7094C0(&qword_27CDED320, type metadata accessor for PMAppSourceListModel, &unk_21CBB0DB8);
      sub_21CB810C4();

      goto LABEL_10;
    }

    sub_21C6EA794(*(v0 + 296), &qword_27CDEAC20, &qword_21CBAD710);
    sub_21C82A9A0(v14, type metadata accessor for PMAppSourceListModel.Source);
LABEL_6:
    sub_21C6EA794(*(v0 + 240), &unk_27CDED310, &unk_21CBA0150);
    goto LABEL_7;
  }

  v11 = *(v0 + 200);
  sub_21C6EA794(*(v0 + 296), &qword_27CDEAC20, &qword_21CBAD710);
  if (v10(v3 + v9, 1, v11) != 1)
  {
    goto LABEL_6;
  }

  sub_21C6EA794(*(v0 + 240), &qword_27CDEAC20, &qword_21CBAD710);
LABEL_9:
  v22 = *(v0 + 272);
  v21 = *(v0 + 280);
  sub_21C6EDBAC(*(v0 + 304), v21, &qword_27CDEAC20, &qword_21CBAD710);
  sub_21C6EDBAC(v6 + v24, v22, &qword_27CDEAC20, &qword_21CBAD710);
  swift_beginAccess();
  sub_21C743188(v21, v6 + v24);
  swift_endAccess();
  sub_21C7431F8(v22);
  sub_21C6EA794(v22, &qword_27CDEAC20, &qword_21CBAD710);
  sub_21C6EA794(v21, &qword_27CDEAC20, &qword_21CBAD710);
LABEL_10:
  sub_21C6EA794(*(v0 + 304), &qword_27CDEAC20, &qword_21CBAD710);
  sub_21CB863E4();
  *(v0 + 136) = xmmword_21CBA6140;
  *(v0 + 88) = 0;
  *(v0 + 96) = 0;
  *(v0 + 104) = 1;

  return MEMORY[0x2822009F8](sub_21C824B7C, 0, 0);
}

uint64_t sub_21C8249C8()
{
  (*(v0[45] + 8))(v0[47], v0[44]);
  v1 = v0[49];
  v2 = v0[50];

  return MEMORY[0x2822009F8](sub_21C824A3C, v1, v2);
}

uint64_t sub_21C824A3C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21C824B7C()
{
  v1 = v0[42];
  v2 = v0[39];
  v3 = v0[40];
  v4 = sub_21C7094C0(&qword_27CDED328, MEMORY[0x277D85928], MEMORY[0x277D85930]);
  sub_21CB863C4();
  sub_21C7094C0(&unk_27CDED330, MEMORY[0x277D858F8], MEMORY[0x277D85920]);
  sub_21CB861A4();
  v5 = *(v3 + 8);
  v0[62] = v5;
  v0[63] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v1, v2);
  v6 = swift_task_alloc();
  v0[64] = v6;
  *v6 = v0;
  v6[1] = sub_21C824D04;
  v7 = v0[44];
  v8 = v0[41];

  return MEMORY[0x2822008C8](v8, v0 + 11, v7, v4);
}

uint64_t sub_21C824D04()
{
  v2 = *v1;
  *(*v1 + 520) = v0;

  if (v0)
  {
    (*(v2 + 496))(*(v2 + 328), *(v2 + 312));
    v3 = sub_21C82539C;
    v4 = 0;
    v5 = 0;
  }

  else
  {
    v7 = *(v2 + 360);
    v6 = *(v2 + 368);
    v8 = *(v2 + 352);
    (*(v2 + 496))(*(v2 + 328), *(v2 + 312));
    (*(v7 + 8))(v6, v8);
    v4 = *(v2 + 392);
    v5 = *(v2 + 400);
    v3 = sub_21C824E68;
  }

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_21C824E68()
{
  v29 = *(v0 + 480);
  v1 = *(v0 + 472);
  v2 = *(v0 + 448);
  v4 = *(v0 + 256);
  v3 = *(v0 + 264);
  v6 = *(v0 + 224);
  v5 = *(v0 + 232);
  v7 = *(v0 + 200);
  (*(v0 + 456))(v3, 1, 1, v7);
  sub_21C6EDBAC(v2 + v1, v4, &qword_27CDEAC20, &qword_21CBAD710);
  v8 = *(v6 + 48);
  sub_21C6EDBAC(v4, v5, &qword_27CDEAC20, &qword_21CBAD710);
  sub_21C6EDBAC(v3, v5 + v8, &qword_27CDEAC20, &qword_21CBAD710);
  v9 = v29(v5, 1, v7);
  v10 = *(v0 + 480);
  if (v9 != 1)
  {
    v12 = *(v0 + 200);
    sub_21C6EDBAC(*(v0 + 232), *(v0 + 248), &qword_27CDEAC20, &qword_21CBAD710);
    v13 = v10(v5 + v8, 1, v12);
    v14 = *(v0 + 248);
    v15 = *(v0 + 256);
    if (v13 != 1)
    {
      v19 = *(v0 + 232);
      v20 = *(v0 + 216);
      sub_21C82A8D0(v5 + v8, v20, type metadata accessor for PMAppSourceListModel.Source);
      v21 = sub_21C918FE4(v14, v20);
      sub_21C82A9A0(v20, type metadata accessor for PMAppSourceListModel.Source);
      sub_21C6EA794(v15, &qword_27CDEAC20, &qword_21CBAD710);
      sub_21C82A9A0(v14, type metadata accessor for PMAppSourceListModel.Source);
      sub_21C6EA794(v19, &qword_27CDEAC20, &qword_21CBAD710);
      if (v21)
      {
        goto LABEL_9;
      }

LABEL_7:
      v16 = *(v0 + 448);
      v17 = *(v0 + 264);
      swift_getKeyPath(byte_21CBA6620);
      v18 = swift_task_alloc();
      *(v18 + 16) = v16;
      *(v18 + 24) = v17;
      *(v0 + 176) = v16;
      sub_21C7094C0(&qword_27CDED320, type metadata accessor for PMAppSourceListModel, &unk_21CBB0DB8);
      sub_21CB810C4();

      goto LABEL_10;
    }

    sub_21C6EA794(*(v0 + 256), &qword_27CDEAC20, &qword_21CBAD710);
    sub_21C82A9A0(v14, type metadata accessor for PMAppSourceListModel.Source);
LABEL_6:
    sub_21C6EA794(*(v0 + 232), &unk_27CDED310, &unk_21CBA0150);
    goto LABEL_7;
  }

  v11 = *(v0 + 200);
  sub_21C6EA794(*(v0 + 256), &qword_27CDEAC20, &qword_21CBAD710);
  if (v10(v5 + v8, 1, v11) != 1)
  {
    goto LABEL_6;
  }

  sub_21C6EA794(*(v0 + 232), &qword_27CDEAC20, &qword_21CBAD710);
LABEL_9:
  v22 = *(v0 + 472);
  v23 = *(v0 + 448);
  v25 = *(v0 + 272);
  v24 = *(v0 + 280);
  sub_21C6EDBAC(*(v0 + 264), v24, &qword_27CDEAC20, &qword_21CBAD710);
  sub_21C6EDBAC(v23 + v22, v25, &qword_27CDEAC20, &qword_21CBAD710);
  swift_beginAccess();
  sub_21C743188(v24, v23 + v22);
  swift_endAccess();
  sub_21C7431F8(v25);
  sub_21C6EA794(v25, &qword_27CDEAC20, &qword_21CBAD710);
  sub_21C6EA794(v24, &qword_27CDEAC20, &qword_21CBAD710);
LABEL_10:
  v26 = *(v0 + 408);
  sub_21C6EA794(*(v0 + 264), &qword_27CDEAC20, &qword_21CBAD710);
  if (v26 == 2)
  {

    sub_21CB82094();

    v27 = *(v0 + 8);

    return v27();
  }

  else
  {
    ++*(v0 + 408);
    sub_21CB863E4();
    *(v0 + 152) = xmmword_21CBA6140;
    *(v0 + 112) = 0;
    *(v0 + 120) = 0;
    *(v0 + 128) = 1;

    return MEMORY[0x2822009F8](sub_21C824248, 0, 0);
  }
}

uint64_t sub_21C82539C()
{
  (*(v0[45] + 8))(v0[46], v0[44]);
  v1 = v0[49];
  v2 = v0[50];

  return MEMORY[0x2822009F8](sub_21C825410, v1, v2);
}

uint64_t sub_21C825410()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21C825550(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v6 = sub_21CB82124();
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v5[12] = *(v7 + 64);
  v5[13] = swift_task_alloc();
  sub_21CB858B4();
  v5[14] = sub_21CB858A4();
  v9 = sub_21CB85874();

  return MEMORY[0x2822009F8](sub_21C82564C, v9, v8);
}

uint64_t sub_21C82564C()
{
  v1 = v0[13];
  v2 = v0[11];
  v3 = v0[10];
  v4 = v0[8];

  sub_21CB82114();
  sub_21C8C7F84();
  sub_21C87FF18(102, 0xE100000000000000);

  v5 = objc_opt_self();
  (*(v2 + 16))(v1, v4, v3);
  v6 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v7 = swift_allocObject();
  (*(v2 + 32))(v7 + v6, v1, v3);
  v0[6] = sub_21C82A660;
  v0[7] = v7;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_21C6ECBD4;
  v0[5] = &block_descriptor_3;
  v8 = _Block_copy(v0 + 2);

  [v5 addCommitHandler:v8 forPhase:2];
  _Block_release(v8);

  v9 = v0[1];

  return v9();
}

char *sub_21C8257FC()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 16);
  }

  else
  {
    v2 = v0;
    type metadata accessor for PMAccountsState(0);
    swift_allocObject();
    v1 = sub_21C6EB34C();
    swift_getKeyPath(aX_35);
    swift_getKeyPath(a8_11);

    sub_21CB81DC4();
    swift_getKeyPath(asc_21CBA6728);
    swift_getKeyPath(byte_21CBA6750);

    sub_21CB81DC4();
    *(v1 + 3) = &off_282E4C138;
    swift_unknownObjectWeakAssign();
    *(v2 + 16) = v1;
  }

  return v1;
}

id sub_21C825920()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = *(v0 + 24);
  }

  else
  {
    v3 = [objc_allocWithZone(MEMORY[0x277D499D8]) initForTesting_];
    v4 = *(v0 + 24);
    *(v0 + 24) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

uint64_t sub_21C825990()
{

  return swift_deallocClassInstance();
}

uint64_t sub_21C8259F4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3FFD && *(a1 + 16))
  {
    return (*a1 + 16381);
  }

  v3 = (((*(a1 + 8) >> 50) >> 12) | (4 * ((*(a1 + 8) >> 50) & 0xC00 | ((*(a1 + 8) & 7) << 7) | (*a1 >> 57) & 0x78 | *a1 & 7))) ^ 0x3FFF;
  if (v3 >> 2 >= 0xFFF)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_21C825A6C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3FFC)
  {
    *result = a2 - 16381;
    *(result + 8) = 0;
    if (a3 >= 0x3FFD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3FFD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0xFFF | ((-a2 & 0x3FFF) << 12);
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
      *(result + 8) = ((v3 >> 7) | (v3 << 50)) & 0xF000000000000007;
    }
  }

  return result;
}

void *sub_21C825AE8(void *result, uint64_t a2)
{
  if (a2 < 3)
  {
    v2 = result[1] & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
    *result &= 0xFFFFFFFFFFFFFF8uLL;
    result[1] = v2;
  }

  else
  {
    *result = 8 * (a2 - 3);
    result[1] = 0xC000000000000000;
  }

  return result;
}

uint64_t sub_21C825B18(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_21C825B60(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

uint64_t sub_21C825BA8()
{
  sub_21CB858B4();
  *(v0 + 16) = sub_21CB858A4();
  v2 = sub_21CB85874();

  return MEMORY[0x2822009F8](sub_21C825C3C, v2, v1);
}

uint64_t sub_21C825C3C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21C825CA0@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for PMAccount(0);
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_21C825D0C()
{
  sub_21CB858B4();
  *(v0 + 16) = sub_21CB858A4();
  v2 = sub_21CB85874();

  return MEMORY[0x2822009F8](sub_21C82AFB8, v2, v1);
}

uint64_t sub_21C825E84()
{
  sub_21CB858B4();
  *(v0 + 16) = sub_21CB858A4();
  v2 = sub_21CB85874();

  return MEMORY[0x2822009F8](sub_21C825F18, v2, v1);
}

uint64_t sub_21C825F18()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21C825F7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for PMBulkOperationProgress(0);
  swift_allocObject();

  sub_21C71DD5C(a3, a4);
  v7 = sub_21C94C1A0(1, a1, a3, a4);
  swift_getKeyPath(byte_21CBA6698);
  swift_getKeyPath(aP_25);

  sub_21CB81DC4();
  v8 = *(v7 + OBJC_IVAR____TtC17PasswordManagerUI23PMBulkOperationProgress_onCompletion);
  if (v8)
  {
    v8(0, 255);
  }

  return v7;
}

unint64_t sub_21C826104()
{
  result = qword_27CDED228;
  if (!qword_27CDED228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDED228);
  }

  return result;
}

void sub_21C826158(void *a1)
{
  v2 = *(type metadata accessor for PMAccount(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_21C715B40(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_21C82773C(v5);
  *a1 = v3;
}

__n128 sub_21C826200@<Q0>(uint64_t a2@<X8>)
{
  swift_getKeyPath(byte_21CBA6578);
  swift_getKeyPath(aP_11);
  sub_21CB81DB4();

  result = v5;
  *(a2 + 32) = v6;
  *(a2 + 48) = v7;
  *(a2 + 64) = v8;
  *(a2 + 80) = v9;
  *a2 = v4;
  *(a2 + 16) = v5;
  return result;
}

uint64_t sub_21C8262BC(__int128 *a1, uint64_t *a2)
{
  v3 = a1[3];
  v16[2] = a1[2];
  v16[3] = v3;
  v16[4] = a1[4];
  v17 = *(a1 + 10);
  v4 = a1[1];
  v16[0] = *a1;
  v16[1] = v4;
  swift_getKeyPath(byte_21CBA6578);
  swift_getKeyPath(aP_11);
  v5 = a1[2];
  v6 = a1[4];
  v13 = a1[3];
  v14 = v6;
  v15 = *(a1 + 10);
  v7 = a1[1];
  v10 = *a1;
  v11 = v7;
  v12 = v5;

  sub_21C6EDBAC(v16, v9, &unk_27CDED230, &unk_21CBA6460);
  return sub_21CB81DC4();
}

uint64_t sub_21C826394()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1D50, &qword_21CBA0C00);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v11 - v3;
  v5 = sub_21CB858E4();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = swift_allocObject();
  swift_weakInit();
  sub_21CB858B4();

  v7 = sub_21CB858A4();
  v8 = swift_allocObject();
  v9 = MEMORY[0x277D85700];
  v8[2] = v7;
  v8[3] = v9;
  v8[4] = v6;

  *(v1 + OBJC_IVAR____TtC17PasswordManagerUI11PMTipsStore_observeTipsHandle) = sub_21C98B308(0, 0, v4, &unk_21CBA6548, v8);
}

uint64_t sub_21C826504(uint64_t a1)
{
  v20 = v1;
  v2 = sub_21CB86314();
  if (!v2)
  {
    v2 = swift_allocError();
  }

  v3 = v2;
  (*(*(v1 + 432) + 8))(*(v1 + 440), *(v1 + 424));
  *(v1 + 376) = v3;
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED298, &qword_21CBA6570);
  sub_21C82A2F0();
  result = swift_dynamicCast();
  if (result)
  {

    v6 = *(v1 + 384);
    if (qword_27CDEA470 != -1)
    {
      swift_once();
    }

    v7 = sub_21CB81C84();
    __swift_project_value_buffer(v7, qword_27CE186E0);
    v8 = v6;
    v9 = sub_21CB81C64();
    v10 = sub_21CB85AF4();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v19 = v12;
      *v11 = 136446210;
      v13 = [v8 safari_privacyPreservingDescription];
      v14 = sub_21CB855C4();
      v16 = v15;

      v17 = sub_21C98E004(v14, v16, &v19);

      *(v11 + 4) = v17;
      _os_log_impl(&dword_21C6E5000, v9, v10, "Tips stream failed with error: %{public}s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v12);
      MEMORY[0x21CF16D90](v12, -1, -1);
      MEMORY[0x21CF16D90](v11, -1, -1);
    }

    else
    {
    }

    v18 = *(v1 + 8);

    return v18();
  }

  return result;
}

uint64_t sub_21C8267B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[49] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED270, &qword_21CBA6558);
  v4[50] = v5;
  v4[51] = *(v5 - 8);
  v4[52] = swift_task_alloc();
  v4[53] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED278, &qword_21CBA6560);
  v4[54] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED280, &qword_21CBA6568);
  v4[55] = v6;
  v4[56] = *(v6 - 8);
  v4[57] = swift_task_alloc();
  v4[58] = sub_21CB858B4();
  v4[59] = sub_21CB858A4();
  v8 = sub_21CB85874();
  v4[60] = v8;
  v4[61] = v7;

  return MEMORY[0x2822009F8](sub_21C82695C, v8, v7);
}

uint64_t sub_21C82695C()
{
  v2 = v0[51];
  v1 = v0[52];
  v3 = v0[50];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDED230, &unk_21CBA6460);
  (*(v2 + 104))(v1, *MEMORY[0x277D85778], v3);
  sub_21CB85924();
  sub_21C6EADEC(&qword_27CDED288, &qword_27CDED278, &qword_21CBA6560, MEMORY[0x277D857C0]);
  sub_21CB85964();
  swift_beginAccess();
  v4 = sub_21CB858A4();
  v0[62] = v4;
  sub_21C6EADEC(&qword_27CDED290, &qword_27CDED280, &qword_21CBA6568, MEMORY[0x277D857B0]);
  v5 = swift_task_alloc();
  v0[63] = v5;
  *v5 = v0;
  v5[1] = sub_21C826B38;
  v6 = MEMORY[0x277D85700];

  return MEMORY[0x282200310](v0 + 2, v4, v6);
}

uint64_t sub_21C826B38()
{
  v2 = *v1;

  v3 = *(v2 + 480);
  v4 = *(v2 + 488);
  if (v0)
  {
    v5 = sub_21C826E98;
  }

  else
  {
    v5 = sub_21C826C58;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_21C826C58()
{
  v1 = *(v0 + 32);
  *(v0 + 104) = *(v0 + 16);
  v2 = *(v0 + 48);
  v3 = *(v0 + 64);
  *(v0 + 136) = v2;
  *(v0 + 152) = v3;
  v4 = *(v0 + 80);
  *(v0 + 168) = v4;
  v5 = *(v0 + 96);
  v6 = *(v0 + 104);
  *(v0 + 184) = v5;
  *(v0 + 120) = v1;
  v7 = *(v0 + 112);
  *(v0 + 344) = v5;
  *(v0 + 312) = v3;
  *(v0 + 328) = v4;
  *(v0 + 280) = v1;
  *(v0 + 296) = v2;
  if (v7 == 1)
  {
    (*(*(v0 + 448) + 8))(*(v0 + 456), *(v0 + 440));

    v8 = *(v0 + 8);

    return v8();
  }

  else
  {
    if (swift_weakLoadStrong())
    {
      swift_getKeyPath(byte_21CBA6578);
      swift_getKeyPath(aP_11);
      *(v0 + 192) = v6;
      *(v0 + 200) = v7;
      v10 = *(v0 + 328);
      *(v0 + 240) = *(v0 + 312);
      *(v0 + 256) = v10;
      *(v0 + 272) = *(v0 + 344);
      v11 = *(v0 + 296);
      *(v0 + 208) = *(v0 + 280);
      *(v0 + 224) = v11;
      sub_21CB81DC4();
    }

    else
    {
      sub_21C6EA794(v0 + 104, &qword_27CDED2A8, &qword_21CBA65C0);
    }

    v12 = sub_21CB858A4();
    *(v0 + 496) = v12;
    sub_21C6EADEC(&qword_27CDED290, &qword_27CDED280, &qword_21CBA6568, MEMORY[0x277D857B0]);
    v13 = swift_task_alloc();
    *(v0 + 504) = v13;
    *v13 = v0;
    v13[1] = sub_21C826B38;
    v14 = MEMORY[0x277D85700];

    return MEMORY[0x282200310](v0 + 16, v12, v14);
  }
}

uint64_t sub_21C826E98(uint64_t a1)
{
  v20 = v1;
  v2 = sub_21CB86314();
  if (!v2)
  {
    v2 = swift_allocError();
  }

  v3 = v2;
  (*(*(v1 + 448) + 8))(*(v1 + 456), *(v1 + 440));
  *(v1 + 376) = v3;
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED298, &qword_21CBA6570);
  sub_21C82A2F0();
  result = swift_dynamicCast();
  if (result)
  {

    v6 = *(v1 + 384);
    if (qword_27CDEA470 != -1)
    {
      swift_once();
    }

    v7 = sub_21CB81C84();
    __swift_project_value_buffer(v7, qword_27CE186E0);
    v8 = v6;
    v9 = sub_21CB81C64();
    v10 = sub_21CB85AF4();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v19 = v12;
      *v11 = 136446210;
      v13 = [v8 safari_privacyPreservingDescription];
      v14 = sub_21CB855C4();
      v16 = v15;

      v17 = sub_21C98E004(v14, v16, &v19);

      *(v11 + 4) = v17;
      _os_log_impl(&dword_21C6E5000, v9, v10, "Tips stream failed with error: %{public}s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v12);
      MEMORY[0x21CF16D90](v12, -1, -1);
      MEMORY[0x21CF16D90](v11, -1, -1);
    }

    else
    {
    }

    v18 = *(v1 + 8);

    return v18();
  }

  return result;
}

double sub_21C827154@<D0>(_OWORD *a2@<X8>)
{
  swift_getKeyPath(aP_12);
  swift_getKeyPath(aP_13);
  sub_21CB81DB4();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_21C8271D4(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  swift_getKeyPath(aP_12);
  swift_getKeyPath(aP_13);

  sub_21C82A1B0(v2, v3);
  return sub_21CB81DC4();
}

uint64_t sub_21C827284(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_21CB86184();
  *(v6 + 64) = v12;
  *(v6 + 72) = *(v12 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x2822009F8](sub_21C827384, 0, 0);
}

uint64_t sub_21C827384()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = sub_21CB86194();
  v5 = sub_21C7094C0(&qword_27CDED328, MEMORY[0x277D85928], MEMORY[0x277D85930]);
  sub_21CB863C4();
  sub_21C7094C0(&unk_27CDED330, MEMORY[0x277D858F8], MEMORY[0x277D85920]);
  sub_21CB861A4();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_21C827514;
  v8 = v0[11];

  return MEMORY[0x2822008C8](v8, v0 + 2, v4, v5);
}

uint64_t sub_21C827514()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 64);
  v5 = *v1;
  *(v5 + 120) = v0;

  v2(v3, v4);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_21C8276D0, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_21C8276D0()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_21C82773C(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_21CB862E4();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for PMAccount(0);
        v6 = sub_21CB85844();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for PMAccount(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_21C827C48(v8, v9, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_21C827868(0, v2, 1, a1);
  }
}

void sub_21C827868(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v50 = type metadata accessor for PMAccount.Storage(0);
  MEMORY[0x28223BE20](v50);
  v49 = (&v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v11 = (&v38 - v10);
  v12 = type metadata accessor for PMAccount(0);
  MEMORY[0x28223BE20](v12);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v38 - v16;
  MEMORY[0x28223BE20](v18);
  v22 = &v38 - v21;
  v40 = a2;
  if (a3 != a2)
  {
    v23 = v19;
    v24 = *a4;
    v25 = *(v20 + 72);
    v26 = *a4 + v25 * (a3 - 1);
    v47 = -v25;
    v48 = v24;
    v27 = a1 - a3;
    v39 = v25;
    v28 = v24 + v25 * a3;
    v46 = v11;
LABEL_5:
    v43 = v26;
    v44 = a3;
    v41 = v28;
    v42 = v27;
    v29 = v26;
    while (1)
    {
      sub_21C82A938(v28, v22, type metadata accessor for PMAccount);
      sub_21C82A938(v29, v17, type metadata accessor for PMAccount);
      sub_21C82A938(&v22[*(v23 + 24)], v11, type metadata accessor for PMAccount.Storage);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v31 = v11;
      if (EnumCaseMultiPayload == 1)
      {
        goto LABEL_9;
      }

      v32 = *v11;
      v33 = v17;
      sub_21C82A938(&v17[*(v23 + 24)], v49, type metadata accessor for PMAccount.Storage);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        break;
      }

      v34 = v14;
      v35 = v23;
      v36 = *v49;
      v45 = [v32 compare_];

      v23 = v35;
      v14 = v34;

      sub_21C82A9A0(v33, type metadata accessor for PMAccount);
      sub_21C82A9A0(v22, type metadata accessor for PMAccount);
      v17 = v33;
      v11 = v46;
      if (v45 != -1)
      {
        goto LABEL_4;
      }

LABEL_11:
      if (!v48)
      {
        __break(1u);
        return;
      }

      sub_21C82A8D0(v28, v14, type metadata accessor for PMAccount);
      swift_arrayInitWithTakeFrontToBack();
      sub_21C82A8D0(v14, v29, type metadata accessor for PMAccount);
      v29 += v47;
      v28 += v47;
      if (__CFADD__(v27++, 1))
      {
LABEL_4:
        a3 = v44 + 1;
        v26 = v43 + v39;
        v27 = v42 - 1;
        v28 = v41 + v39;
        if (v44 + 1 == v40)
        {
          return;
        }

        goto LABEL_5;
      }
    }

    v31 = v49;
    v11 = v46;
LABEL_9:
    sub_21C82A9A0(v31, type metadata accessor for PMAccount.Storage);
    sub_21C82A9A0(v17, type metadata accessor for PMAccount);
    sub_21C82A9A0(v22, type metadata accessor for PMAccount);
    goto LABEL_11;
  }
}

void sub_21C827C48(int64_t *a1, uint64_t a2, uint64_t a3, int64_t a4)
{
  v157 = a1;
  v6 = type metadata accessor for PMAccount.Storage(0);
  MEMORY[0x28223BE20](v6);
  v8 = (&v150 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v11 = (&v150 - v10);
  MEMORY[0x28223BE20](v12);
  v161 = (&v150 - v13);
  MEMORY[0x28223BE20](v14);
  v163 = (&v150 - v15);
  MEMORY[0x28223BE20](v16);
  v151 = (&v150 - v17);
  MEMORY[0x28223BE20](v18);
  v153 = (&v150 - v19);
  v175 = type metadata accessor for PMAccount(0);
  v166 = *(v175 - 8);
  MEMORY[0x28223BE20](v175);
  v162 = &v150 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v179 = &v150 - v22;
  MEMORY[0x28223BE20](v23);
  v25 = &v150 - v24;
  MEMORY[0x28223BE20](v26);
  v28 = &v150 - v27;
  MEMORY[0x28223BE20](v29);
  MEMORY[0x28223BE20](v30);
  v170 = &v150 - v31;
  MEMORY[0x28223BE20](v32);
  v152 = &v150 - v33;
  MEMORY[0x28223BE20](v34);
  v155 = &v150 - v36;
  v37 = *(a3 + 8);
  if (v37 < 1)
  {
    v39 = MEMORY[0x277D84F90];
LABEL_112:
    a4 = *v157;
    if (!*v157)
    {
      goto LABEL_152;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v41 = v171;
    if (isUniquelyReferenced_nonNull_native)
    {
      v146 = v39;
LABEL_115:
      v39 = v41;
      v181 = v146;
      v41 = *(v146 + 2);
      if (v41 >= 2)
      {
        while (*a3)
        {
          v147 = *&v146[16 * v41];
          v148 = *&v146[16 * v41 + 24];
          sub_21C828B10(*a3 + *(v166 + 72) * v147, *a3 + *(v166 + 72) * *&v146[16 * v41 + 16], *a3 + *(v166 + 72) * v148, a4);
          if (v39)
          {
            goto LABEL_123;
          }

          if (v148 < v147)
          {
            goto LABEL_139;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v146 = sub_21C864538(v146);
          }

          if (v41 - 2 >= *(v146 + 2))
          {
            goto LABEL_140;
          }

          v149 = &v146[16 * v41];
          *v149 = v147;
          *(v149 + 1) = v148;
          v181 = v146;
          sub_21C8644AC(v41 - 1);
          v146 = v181;
          v41 = *(v181 + 2);
          if (v41 <= 1)
          {
            goto LABEL_123;
          }
        }

        goto LABEL_150;
      }

LABEL_123:

      return;
    }

LABEL_146:
    v146 = sub_21C864538(v39);
    goto LABEL_115;
  }

  v169 = v35;
  v38 = 0;
  v39 = MEMORY[0x277D84F90];
  v167 = a3;
  v156 = a4;
  v173 = v8;
  v174 = v6;
  v180 = v25;
  v176 = v28;
  while (2)
  {
    v40 = a3;
    v41 = v38;
    a3 = (v38 + 1);
    v158 = v38;
    if ((v38 + 1) >= v37)
    {
      goto LABEL_38;
    }

    v164 = v37;
    v42 = *v40;
    v43 = *(v166 + 72);
    v172 = v38 + 1;
    v44 = v42 + v43 * a3;
    v45 = v155;
    sub_21C82A938(v44, v155, type metadata accessor for PMAccount);
    v168 = v43;
    v46 = v42 + v43 * v41;
    v47 = v42;
    v48 = v152;
    sub_21C82A938(v46, v152, type metadata accessor for PMAccount);
    v49 = v175;
    v50 = v153;
    sub_21C82A938(v45 + *(v175 + 24), v153, type metadata accessor for PMAccount.Storage);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v51 = v50;
    }

    else
    {
      v52 = *v50;
      v53 = v48 + *(v49 + 24);
      v54 = v151;
      sub_21C82A938(v53, v151, type metadata accessor for PMAccount.Storage);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        v56 = *v54;
        v57 = [v52 compare_];

        v58 = v57 + 1 == 0;
        v25 = v180;
        v55 = v58;
        goto LABEL_13;
      }

      v51 = v54;
    }

    sub_21C82A9A0(v51, type metadata accessor for PMAccount.Storage);
    v55 = 1;
LABEL_13:
    LODWORD(v165) = v55;
    v154 = v39;
    sub_21C82A9A0(v48, type metadata accessor for PMAccount);
    sub_21C82A9A0(v155, type metadata accessor for PMAccount);
    v59 = v158 + 2;
    v60 = v168 * (v158 + 2);
    v61 = v47 + v60;
    v62 = v172;
    v63 = (v168 * v172);
    v64 = v47 + v168 * v172;
    do
    {
      v66 = v59;
      v67 = v62;
      v39 = v63;
      a3 = v60;
      v177 = v59;
      if (v59 >= v164)
      {
        break;
      }

      v178 = v62;
      v68 = v170;
      sub_21C82A938(v61, v170, type metadata accessor for PMAccount);
      v69 = v169;
      sub_21C82A938(v64, v169, type metadata accessor for PMAccount);
      v70 = v175;
      v71 = v163;
      sub_21C82A938(v68 + *(v175 + 24), v163, type metadata accessor for PMAccount.Storage);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        v172 = *v71;
        v71 = v161;
        sub_21C82A938(v69 + *(v70 + 24), v161, type metadata accessor for PMAccount.Storage);
        if (swift_getEnumCaseMultiPayload() != 1)
        {
          v72 = *v71;
          v73 = v172;
          v74 = [v172 compare_];

          v65 = v74 == -1;
          goto LABEL_16;
        }
      }

      sub_21C82A9A0(v71, type metadata accessor for PMAccount.Storage);
      v65 = 1;
LABEL_16:
      v28 = v176;
      v66 = v177;
      sub_21C82A9A0(v169, type metadata accessor for PMAccount);
      sub_21C82A9A0(v170, type metadata accessor for PMAccount);
      v59 = v66 + 1;
      v61 += v168;
      v64 += v168;
      v67 = v178;
      v62 = v178 + 1;
      v63 = &v39[v168];
      v60 = a3 + v168;
      v25 = v180;
    }

    while (v165 == v65);
    if (!v165)
    {
      a3 = v66;
      v40 = v167;
      a4 = v156;
      v6 = v174;
      v39 = v154;
      goto LABEL_37;
    }

    v41 = v158;
    a4 = v156;
    if (v66 < v158)
    {
      goto LABEL_143;
    }

    if (v158 >= v66)
    {
      a3 = v66;
      v40 = v167;
      v6 = v174;
      v39 = v154;
    }

    else
    {
      v75 = v158;
      v76 = (v158 * v168);
      v6 = v174;
      do
      {
        if (v75 != v67)
        {
          v178 = v67;
          v78 = v6;
          v79 = *v167;
          if (!*v167)
          {
            goto LABEL_149;
          }

          sub_21C82A8D0(&v76[v79], v162, type metadata accessor for PMAccount);
          if (v76 < v39 || &v76[v79] >= v79 + a3)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v76 != v39)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          sub_21C82A8D0(v162, &v39[v79], type metadata accessor for PMAccount);
          v6 = v78;
          v66 = v177;
          v67 = v178;
        }

        ++v75;
        v39 -= v168;
        a3 -= v168;
        v76 += v168;
      }

      while (v75 < v67--);
      a3 = v66;
      v40 = v167;
      a4 = v156;
      v39 = v154;
      v28 = v176;
LABEL_37:
      v41 = v158;
    }

LABEL_38:
    v80 = v40[1];
    if (a3 >= v80)
    {
      goto LABEL_59;
    }

    if (__OFSUB__(a3, v41))
    {
      goto LABEL_142;
    }

    if ((a3 - v41) >= a4)
    {
      goto LABEL_59;
    }

    v81 = (v41 + a4);
    if (__OFADD__(v41, a4))
    {
      goto LABEL_144;
    }

    if (v81 >= v80)
    {
      v81 = v80;
    }

    if (v81 < v41)
    {
LABEL_145:
      __break(1u);
      goto LABEL_146;
    }

    if (a3 == v81)
    {
LABEL_59:
      if (a3 < v41)
      {
        goto LABEL_141;
      }

      v172 = a3;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v39 = sub_21C86467C(0, *(v39 + 2) + 1, 1, v39);
      }

      v100 = *(v39 + 2);
      v99 = *(v39 + 3);
      v41 = v100 + 1;
      v38 = v172;
      if (v100 >= v99 >> 1)
      {
        v144 = sub_21C86467C((v99 > 1), v100 + 1, 1, v39);
        v38 = v172;
        v39 = v144;
      }

      *(v39 + 2) = v41;
      v101 = &v39[16 * v100];
      *(v101 + 4) = v158;
      *(v101 + 5) = v38;
      if (!*v157)
      {
        goto LABEL_151;
      }

      if (!v100)
      {
LABEL_3:
        a3 = v167;
        v37 = v167[1];
        a4 = v156;
        if (v38 >= v37)
        {
          goto LABEL_112;
        }

        continue;
      }

      a3 = *v157;
      while (1)
      {
        a4 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v102 = *(v39 + 4);
          v103 = *(v39 + 5);
          v112 = __OFSUB__(v103, v102);
          v104 = v103 - v102;
          v105 = v112;
LABEL_80:
          if (v105)
          {
            goto LABEL_130;
          }

          v118 = &v39[16 * v41];
          v120 = *v118;
          v119 = *(v118 + 1);
          v121 = __OFSUB__(v119, v120);
          v122 = v119 - v120;
          v123 = v121;
          if (v121)
          {
            goto LABEL_133;
          }

          v124 = &v39[16 * a4 + 32];
          v126 = *v124;
          v125 = *(v124 + 1);
          v112 = __OFSUB__(v125, v126);
          v127 = v125 - v126;
          if (v112)
          {
            goto LABEL_136;
          }

          if (__OFADD__(v122, v127))
          {
            goto LABEL_137;
          }

          if (v122 + v127 >= v104)
          {
            if (v104 < v127)
            {
              a4 = v41 - 2;
            }

            goto LABEL_101;
          }

          goto LABEL_94;
        }

        v128 = &v39[16 * v41];
        v130 = *v128;
        v129 = *(v128 + 1);
        v112 = __OFSUB__(v129, v130);
        v122 = v129 - v130;
        v123 = v112;
LABEL_94:
        if (v123)
        {
          goto LABEL_132;
        }

        v131 = &v39[16 * a4];
        v133 = *(v131 + 4);
        v132 = *(v131 + 5);
        v112 = __OFSUB__(v132, v133);
        v134 = v132 - v133;
        if (v112)
        {
          goto LABEL_135;
        }

        if (v134 < v122)
        {
          goto LABEL_3;
        }

LABEL_101:
        v139 = a4 - 1;
        if (a4 - 1 >= v41)
        {
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
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
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
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
          goto LABEL_145;
        }

        if (!*v167)
        {
          goto LABEL_148;
        }

        v140 = v6;
        v41 = *&v39[16 * v139 + 32];
        v141 = *&v39[16 * a4 + 40];
        v142 = v171;
        sub_21C828B10(*v167 + *(v166 + 72) * v41, *v167 + *(v166 + 72) * *&v39[16 * a4 + 32], *v167 + *(v166 + 72) * v141, a3);
        v171 = v142;
        if (v142)
        {
          goto LABEL_123;
        }

        if (v141 < v41)
        {
          goto LABEL_126;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v39 = sub_21C864538(v39);
        }

        if (v139 >= *(v39 + 2))
        {
          goto LABEL_127;
        }

        v143 = &v39[16 * v139];
        *(v143 + 4) = v41;
        *(v143 + 5) = v141;
        v181 = v39;
        sub_21C8644AC(a4);
        v39 = v181;
        v41 = *(v181 + 2);
        v28 = v176;
        v6 = v140;
        v38 = v172;
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v106 = &v39[16 * v41 + 32];
      v107 = *(v106 - 64);
      v108 = *(v106 - 56);
      v112 = __OFSUB__(v108, v107);
      v109 = v108 - v107;
      if (v112)
      {
        goto LABEL_128;
      }

      v111 = *(v106 - 48);
      v110 = *(v106 - 40);
      v112 = __OFSUB__(v110, v111);
      v104 = v110 - v111;
      v105 = v112;
      if (v112)
      {
        goto LABEL_129;
      }

      v113 = &v39[16 * v41];
      v115 = *v113;
      v114 = *(v113 + 1);
      v112 = __OFSUB__(v114, v115);
      v116 = v114 - v115;
      if (v112)
      {
        goto LABEL_131;
      }

      v112 = __OFADD__(v104, v116);
      v117 = v104 + v116;
      if (v112)
      {
        goto LABEL_134;
      }

      if (v117 >= v109)
      {
        v135 = &v39[16 * a4 + 32];
        v137 = *v135;
        v136 = *(v135 + 1);
        v112 = __OFSUB__(v136, v137);
        v138 = v136 - v137;
        if (v112)
        {
          goto LABEL_138;
        }

        if (v104 < v138)
        {
          a4 = v41 - 2;
        }

        goto LABEL_101;
      }

      goto LABEL_80;
    }

    break;
  }

  v154 = v39;
  v82 = *v167;
  v83 = *(v166 + 72);
  v84 = *v167 + v83 * (a3 - 1);
  v177 = -v83;
  v178 = v82;
  v85 = v41 - a3;
  v159 = v83;
  a4 = &v82[a3 * v83];
  v160 = v81;
LABEL_48:
  v172 = a3;
  v164 = a4;
  v165 = v85;
  v168 = v84;
  v86 = v84;
  v87 = v175;
  while (1)
  {
    sub_21C82A938(a4, v28, type metadata accessor for PMAccount);
    sub_21C82A938(v86, v25, type metadata accessor for PMAccount);
    sub_21C82A938(&v28[*(v87 + 24)], v11, type metadata accessor for PMAccount.Storage);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v89 = v11;
    v90 = v87;
    if (EnumCaseMultiPayload == 1)
    {
      goto LABEL_52;
    }

    v91 = v11;
    v92 = *v11;
    v93 = v173;
    sub_21C82A938(&v25[*(v87 + 24)], v173, type metadata accessor for PMAccount.Storage);
    if (swift_getEnumCaseMultiPayload() == 1)
    {

      v89 = v93;
      v90 = v175;
      v11 = v91;
      v6 = v174;
      v28 = v176;
LABEL_52:
      sub_21C82A9A0(v89, type metadata accessor for PMAccount.Storage);
      sub_21C82A9A0(v25, type metadata accessor for PMAccount);
      sub_21C82A9A0(v28, type metadata accessor for PMAccount);
      goto LABEL_54;
    }

    v94 = *v93;
    v95 = [v92 compare_];

    sub_21C82A9A0(v25, type metadata accessor for PMAccount);
    v28 = v176;
    sub_21C82A9A0(v176, type metadata accessor for PMAccount);
    v90 = v175;
    v11 = v91;
    v6 = v174;
    if (v95 != -1)
    {
      goto LABEL_47;
    }

LABEL_54:
    if (!v178)
    {
      break;
    }

    v96 = v179;
    sub_21C82A8D0(a4, v179, type metadata accessor for PMAccount);
    swift_arrayInitWithTakeFrontToBack();
    v97 = v96;
    v25 = v180;
    sub_21C82A8D0(v97, v86, type metadata accessor for PMAccount);
    v86 += v177;
    a4 += v177;
    v98 = __CFADD__(v85++, 1);
    v87 = v90;
    if (v98)
    {
LABEL_47:
      a3 = v172 + 1;
      v84 = v168 + v159;
      v85 = v165 - 1;
      a4 = v164 + v159;
      if (v172 + 1 == v160)
      {
        a3 = v160;
        v39 = v154;
        v41 = v158;
        goto LABEL_59;
      }

      goto LABEL_48;
    }
  }

  __break(1u);
LABEL_148:
  __break(1u);
LABEL_149:
  __break(1u);
LABEL_150:
  __break(1u);
LABEL_151:
  __break(1u);
LABEL_152:
  __break(1u);
}

void sub_21C828B10(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v75 = type metadata accessor for PMAccount.Storage(0);
  MEMORY[0x28223BE20](v75);
  v66 = (&v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v11 = (&v65 - v10);
  MEMORY[0x28223BE20](v12);
  v71 = (&v65 - v13);
  MEMORY[0x28223BE20](v14);
  v16 = (&v65 - v15);
  v17 = type metadata accessor for PMAccount(0);
  MEMORY[0x28223BE20](v17);
  MEMORY[0x28223BE20](v18);
  v72 = &v65 - v19;
  MEMORY[0x28223BE20](v20);
  v22 = &v65 - v21;
  MEMORY[0x28223BE20](v23);
  v26 = &v65 - v25;
  v28 = *(v27 + 72);
  if (!v28)
  {
    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v28 == -1)
  {
    goto LABEL_74;
  }

  v29 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v28 == -1)
  {
    goto LABEL_75;
  }

  v70 = a3;
  v30 = (a2 - a1) / v28;
  v78 = a1;
  v77 = a4;
  v73 = v17;
  v74 = v28;
  if (v30 < v29 / v28)
  {
    v31 = v30 * v28;
    if (a4 < a1 || a1 + v31 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
      v32 = v71;
    }

    else
    {
      v32 = v71;
      if (a4 != a1)
      {
        swift_arrayInitWithTakeBackToFront();
      }
    }

    v72 = a4 + v31;
    v76 = a4 + v31;
    if (v31 < 1 || a2 >= v70)
    {
      goto LABEL_72;
    }

    while (1)
    {
      sub_21C82A938(a2, v26, type metadata accessor for PMAccount);
      sub_21C82A938(a4, v22, type metadata accessor for PMAccount);
      sub_21C82A938(&v26[*(v17 + 24)], v16, type metadata accessor for PMAccount.Storage);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v36 = v16;
      if (EnumCaseMultiPayload == 1)
      {
        goto LABEL_23;
      }

      v37 = *v16;
      sub_21C82A938(&v22[*(v17 + 24)], v32, type metadata accessor for PMAccount.Storage);
      if (swift_getEnumCaseMultiPayload() == 1)
      {

        v36 = v32;
LABEL_23:
        sub_21C82A9A0(v36, type metadata accessor for PMAccount.Storage);
        sub_21C82A9A0(v22, type metadata accessor for PMAccount);
        sub_21C82A9A0(v26, type metadata accessor for PMAccount);
LABEL_24:
        v38 = v74;
        v39 = a2 + v74;
        if (a1 < a2 || a1 >= v39)
        {
          swift_arrayInitWithTakeFrontToBack();
LABEL_29:
          v38 = v74;
        }

        else if (a1 != a2)
        {
          swift_arrayInitWithTakeBackToFront();
          goto LABEL_29;
        }

        a2 = v39;
        goto LABEL_31;
      }

      v40 = a4;
      v41 = *v32;
      v42 = [v37 compare_];

      a4 = v40;
      v17 = v73;

      sub_21C82A9A0(v22, type metadata accessor for PMAccount);
      sub_21C82A9A0(v26, type metadata accessor for PMAccount);
      v43 = v42 + 1 == 0;
      v32 = v71;
      if (v43)
      {
        goto LABEL_24;
      }

      v38 = v74;
      v44 = a4 + v74;
      if (a1 < a4 || a1 >= v44)
      {
        break;
      }

      if (a1 != a4)
      {
        swift_arrayInitWithTakeBackToFront();
LABEL_40:
        v38 = v74;
      }

      v77 = v44;
      a4 = v44;
LABEL_31:
      a1 += v38;
      v78 = a1;
      if (a4 >= v72 || a2 >= v70)
      {
        goto LABEL_72;
      }
    }

    swift_arrayInitWithTakeFrontToBack();
    goto LABEL_40;
  }

  v33 = v29 / v28 * v28;
  v71 = v24;
  if (a4 < a2 || a2 + v33 <= a4)
  {
    swift_arrayInitWithTakeFrontToBack();
  }

  else
  {
    if (a4 == a2)
    {
      goto LABEL_44;
    }

    swift_arrayInitWithTakeBackToFront();
  }

  v28 = v74;
LABEL_44:
  v45 = a4 + v33;
  if (v33 < 1)
  {
    goto LABEL_71;
  }

  v46 = -v28;
  v47 = a4 + v33;
  v48 = v70;
  v67 = a4;
  v68 = v11;
  v74 = -v28;
  while (2)
  {
    while (2)
    {
      v65 = v45;
      v49 = a2;
      a2 += v46;
      v69 = v49;
      while (1)
      {
        if (v49 <= a1)
        {
          v78 = v49;
          v76 = v65;
          goto LABEL_72;
        }

        v51 = v48;
        v70 = v45;
        v52 = v47 + v46;
        v53 = v72;
        sub_21C82A938(v52, v72, type metadata accessor for PMAccount);
        v54 = v71;
        sub_21C82A938(a2, v71, type metadata accessor for PMAccount);
        v55 = v73;
        sub_21C82A938(v53 + *(v73 + 24), v11, type metadata accessor for PMAccount.Storage);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v56 = v11;
LABEL_55:
          sub_21C82A9A0(v56, type metadata accessor for PMAccount.Storage);
          v60 = 1;
          goto LABEL_57;
        }

        v57 = *v11;
        v58 = v54 + *(v55 + 24);
        v59 = v66;
        sub_21C82A938(v58, v66, type metadata accessor for PMAccount.Storage);
        if (swift_getEnumCaseMultiPayload() == 1)
        {

          v56 = v59;
          goto LABEL_55;
        }

        v61 = *v59;
        v62 = [v57 compare_];

        v60 = v62 == -1;
LABEL_57:
        v45 = v70;
        v48 = v51 + v74;
        sub_21C82A9A0(v71, type metadata accessor for PMAccount);
        sub_21C82A9A0(v72, type metadata accessor for PMAccount);
        if (v60)
        {
          break;
        }

        v45 = v52;
        v63 = v67;
        if (v51 < v47 || v48 >= v47)
        {
          swift_arrayInitWithTakeFrontToBack();
          v11 = v68;
        }

        else
        {
          v11 = v68;
          if (v51 != v47)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v47 = v52;
        v50 = v52 > v63;
        v46 = v74;
        v49 = v69;
        if (!v50)
        {
          a2 = v69;
          goto LABEL_71;
        }
      }

      v64 = v67;
      if (v51 >= v69 && v48 < v69)
      {
        v46 = v74;
        v11 = v68;
        if (v51 != v69)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        if (v47 <= v64)
        {
          goto LABEL_71;
        }

        continue;
      }

      break;
    }

    swift_arrayInitWithTakeFrontToBack();
    v11 = v68;
    v46 = v74;
    if (v47 > v64)
    {
      continue;
    }

    break;
  }

LABEL_71:
  v78 = a2;
  v76 = v45;
LABEL_72:
  sub_21C864564(&v78, &v77, &v76);
}

uint64_t sub_21C8292E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_21C6F35D0;

  return sub_21C8267B4(a1, a2, a3, a5);
}

uint64_t sub_21C82939C()
{
  v0 = type metadata accessor for PMAccount.SIWAUniqueID(0);
  MEMORY[0x28223BE20](v0 - 8);
  v93 = &v90[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v2 = type metadata accessor for PMAccount.CombinedUniqueID(0);
  MEMORY[0x28223BE20](v2 - 8);
  v92 = &v90[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v108 = type metadata accessor for PMAccount.UniqueID(0);
  MEMORY[0x28223BE20](v108);
  v107 = &v90[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v106 = type metadata accessor for PMAccount.Storage(0);
  MEMORY[0x28223BE20](v106);
  v105 = &v90[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  MEMORY[0x28223BE20](v6 - 8);
  v104 = &v90[-v7];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEC2F0, &unk_21CBA1660);
  MEMORY[0x28223BE20](v8 - 8);
  v128 = &v90[-v9];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAF58, &unk_21CBA0980);
  MEMORY[0x28223BE20](v10 - 8);
  v127 = &v90[-v11];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDED250, &qword_21CBA64C0);
  MEMORY[0x28223BE20](v12 - 8);
  v103 = &v90[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v14);
  v126 = &v90[-v15];
  v102 = type metadata accessor for PMAccount.MockData(0);
  MEMORY[0x28223BE20](v102);
  v101 = &v90[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v17);
  v100 = &v90[-v18];
  v99 = type metadata accessor for PMAccount(0);
  v98 = *(v99 - 8);
  *&v19 = MEMORY[0x28223BE20](v99).n128_u64[0];
  v97 = &v90[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  KeyPath = swift_getKeyPath(asc_21CBA64C8, v19);
  v109 = 1;
  v96 = xmmword_21CBA0690;
  v95 = xmmword_21CBA6150;
  do
  {
    v22 = 0;
    v23 = 0;
    do
    {
      v91 = v22;
      v24 = &unk_282E48BD8 + 16 * v23;
      v25 = *(v24 + 5);
      v129 = *(v24 + 4);
      v110 = v25;

      v26 = 0;
      v27 = 0;
      do
      {
        v125 = v26;
        v28 = &unk_282E48C18 + 16 * v27;
        v29 = *(v28 + 4);
        v30 = *(v28 + 5);
        v31 = qword_27CDEA4C0;

        if (v31 != -1)
        {
          swift_once();
        }

        sub_21CB86544();
        v32 = v130;
        if (*(v130 + 16) && (v33 = sub_21CB10910(KeyPath), (v34 & 1) != 0) && (sub_21C7A3394(*(v32 + 56) + 32 * v33, &v130), type metadata accessor for PMAccountsState(0), (swift_dynamicCast() & 1) != 0) && v132)
        {
          v123 = v132;
        }

        else
        {
          if (qword_27CDEA3C8 != -1)
          {
            swift_once();
          }

          v35 = qword_27CE184E8;
          swift_beginAccess();
          v36 = *(v35 + 80);
          ObjectType = swift_getObjectType();
          v38 = *(v36 + 8);

          swift_unknownObjectRetain();
          v123 = v38(ObjectType, v36);

          swift_unknownObjectRelease();
        }

        v130 = 0x2072657375;
        v131 = 0xE500000000000000;
        v132 = v109;
        v39 = sub_21CB862F4();
        MEMORY[0x21CF151F0](v39);

        MEMORY[0x21CF151F0](32, 0xE100000000000000);
        if (v30)
        {
          v40 = v29;
        }

        else
        {
          v40 = 0;
        }

        if (v30)
        {
          v41 = v30;
        }

        else
        {
          v41 = 0xE000000000000000;
        }

        MEMORY[0x21CF151F0](v40, v41);

        v120 = v131;
        v121 = v130;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAFA8, &unk_21CBA0C70);
        v42 = swift_allocObject();
        v122 = v42;
        *(v42 + 16) = v96;
        v43 = v110;
        *(v42 + 32) = v129;
        *(v42 + 40) = v43;
        v44 = sub_21CB80DD4();
        v45 = *(v44 - 8);
        v111 = v29;
        v46 = *(v45 + 56);
        v124 = v30;
        v46(v126, 1, 1, v44);
        v47 = sub_21CB85BB4();
        v48 = *(v47 - 8);
        v118 = *(v48 + 56);
        v119 = v48 + 56;
        v118(v127, 1, 1, v47);
        v49 = sub_21CB85C04();
        v112 = *(*(v49 - 8) + 56);
        v112(v128, 1, 1, v49);

        v50 = v103;
        sub_21CB80DA4();
        v46(v50, 0, 1, v44);
        v51 = v102;
        v115 = *(v102 + 32);
        v52 = v100;
        v46(&v100[v115], 1, 1, v44);
        v53 = v51[11];
        v113 = (v52 + v51[10]);
        v114 = (v52 + v53);
        v116 = v51[12];
        v46((v52 + v116), 1, 1, v44);
        v54 = v51[15];
        v117 = v51[14];
        v118((v52 + v54), 1, 1, v47);
        v55 = v51[16];
        v112((v52 + v55), 1, 1, v49);
        v56 = v51[18];
        v57 = (v52 + v51[17]);
        v58 = sub_21CB85C44();
        v118 = *(*(v58 - 8) + 56);
        v119 = v56;
        v118((v52 + v56), 1, 1, v58);
        v59 = v120;
        *v52 = v121;
        *(v52 + 8) = v59;
        *(v52 + 16) = v95;
        v60 = v129;
        *(v52 + 32) = v129;
        *(v52 + 40) = v43;
        *(v52 + 48) = v60;
        *(v52 + 56) = v43;
        swift_bridgeObjectRetain_n();
        sub_21C7D3344(v50, v52 + v115, &unk_27CDED250, &qword_21CBA64C0);
        *(v52 + v51[9]) = v122;
        v61 = v113;
        *v113 = 0;
        v61[1] = 0;
        v62 = v114;
        *v114 = 0;
        v62[1] = 0;
        v63 = 1;
        sub_21C7D3344(v126, v52 + v116, &unk_27CDED250, &qword_21CBA64C0);
        *(v52 + v51[13]) = 1;
        *(v52 + v117) = 0;
        v64 = v124;
        sub_21C7D3344(v127, v52 + v54, &qword_27CDEAF58, &unk_21CBA0980);
        sub_21C7D3344(v128, v52 + v55, &unk_27CDEC2F0, &unk_21CBA1660);
        *v57 = 0;
        v57[1] = 0;
        if (v64)
        {

          v65 = v104;
          sub_21CB85B54();
          v63 = 0;
        }

        else
        {
          v65 = v104;
        }

        v118(v65, v63, 1, v58);
        sub_21C7D3344(v65, v52 + v119, &unk_27CDF20B0, &unk_21CBA0090);
        v66 = v101;
        sub_21C82A938(v52, v101, type metadata accessor for PMAccount.MockData);
        v67 = v105;
        sub_21C82A938(v66, v105, type metadata accessor for PMAccount.MockData);
        swift_storeEnumTagMultiPayload();
        v68 = v99;
        v69 = v97;
        v70 = (v97 + *(v99 + 28));
        *v70 = 0u;
        v70[1] = 0u;
        sub_21C82A938(v67, v69 + *(v68 + 24), type metadata accessor for PMAccount.Storage);
        v71 = *(v68 + 20);
        sub_21C7C8A3C(v69 + v71);
        v72 = v69 + v71;
        v73 = v107;
        sub_21C82A938(v72, v107, type metadata accessor for PMAccount.UniqueID);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v74 = v73;
          v75 = v93;
          sub_21C82A8D0(v74, v93, type metadata accessor for PMAccount.SIWAUniqueID);
          v76 = sub_21C7CE99C();
          v78 = v77;
          sub_21C82A9A0(v67, type metadata accessor for PMAccount.Storage);
          v79 = type metadata accessor for PMAccount.SIWAUniqueID;
        }

        else
        {
          v80 = v73;
          v75 = v92;
          sub_21C82A8D0(v80, v92, type metadata accessor for PMAccount.CombinedUniqueID);
          v76 = sub_21C7CE408();
          v78 = v81;
          sub_21C82A9A0(v67, type metadata accessor for PMAccount.Storage);
          v79 = type metadata accessor for PMAccount.CombinedUniqueID;
        }

        sub_21C82A9A0(v75, v79);
        *v69 = v76;
        v69[1] = v78;
        sub_21C82A9A0(v66, type metadata accessor for PMAccount.MockData);
        sub_21C82A9A0(v52, type metadata accessor for PMAccount.MockData);

        swift_getKeyPath(byte_21CBA64F8);
        swift_getKeyPath(byte_21CBA6520);
        v82 = sub_21CB81DA4();
        v84 = v83;
        v85 = *v83;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v84 = v85;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v85 = sub_21CA4F1B8(0, v85[2] + 1, 1, v85);
          *v84 = v85;
        }

        v88 = v85[2];
        v87 = v85[3];
        if (v88 >= v87 >> 1)
        {
          v85 = sub_21CA4F1B8((v87 > 1), v88 + 1, 1, v85);
          *v84 = v85;
        }

        v85[2] = v88 + 1;
        sub_21C82A8D0(v69, v85 + ((*(v98 + 80) + 32) & ~*(v98 + 80)) + *(v98 + 72) * v88, type metadata accessor for PMAccount);
        v82(&v130, 0);

        v26 = 1;
        v27 = 1;
      }

      while ((v125 & 1) == 0);

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDED260, &qword_21CBA1C60);
      swift_arrayDestroy();
      v22 = 1;
      v23 = 1;
    }

    while ((v91 & 1) == 0);
    swift_arrayDestroy();
  }

  while (v109++ != 200);
}

id sub_21C82A1B0(id result, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
      return result;
    }
  }

  else if (!v2)
  {

    return result;
  }

  v3 = result;
}

uint64_t sub_21C82A228(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21C6F35D0;

  return sub_21C8292E4(a1, v4, v5, sub_21C8292E4, v6);
}

unint64_t sub_21C82A2F0()
{
  result = qword_27CDED2A0;
  if (!qword_27CDED2A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CDED2A0);
  }

  return result;
}

uint64_t objectdestroy_57Tm()
{
  sub_21C70AC30(*(v0 + 16), *(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

unint64_t sub_21C82A3E0()
{
  result = qword_27CDED2F0;
  if (!qword_27CDED2F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDED2F8, &qword_21CBA65F8);
    sub_21C7094C0(&unk_27CDED300, type metadata accessor for PMAppAccountsList, &unk_21CBAA650);
    sub_21C6EADEC(&qword_27CDED1A8, &unk_27CDED1B0, &unk_21CBA6420, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDED2F0);
  }

  return result;
}

void sub_21C82A4C8(void *a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
      return;
    }
  }

  else if (!v2)
  {

    return;
  }
}

uint64_t sub_21C82A540(uint64_t a1)
{
  v4 = *(sub_21CB82124() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_21C6F35D0;

  return sub_21C825550(a1, v6, v7, v1 + v5, v8);
}

uint64_t objectdestroy_67Tm()
{
  v1 = sub_21CB82124();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_21C82A794(uint64_t a1)
{
  v4 = *(sub_21CB82124() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_21C6F35D0;

  return sub_21C823B04(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_21C82A8D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21C82A938(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21C82A9A0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21C82AA00(uint64_t a1)
{
  sub_21CB82124();
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  v7 = *(v1 + 48);
  v8 = *(v1 + 56);
  v9 = *(v1 + 64);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_21C702EFC;

  return sub_21C8219A0(a1, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_21C82AB48(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED340, &qword_21CBA6688);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C82ABB8(uint64_t a1, uint64_t a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED340, &qword_21CBA6688) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_21CB820A4() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED348, &qword_21CBA6690);

  return sub_21C82392C(a1, a2, v2 + v6, v2 + v9);
}

uint64_t sub_21C82AD10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t), uint64_t a6, uint64_t a7)
{
  v8 = a6;
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;
  type metadata accessor for PMBulkOperationProgress(0);
  swift_allocObject();

  a5(a2, a3);
  v14 = sub_21C94C1A0(v8, a1, a7, v13);
  swift_getKeyPath(byte_21CBA6698);
  swift_getKeyPath(aP_25);

  sub_21CB81DC4();
  v15 = *(v14 + OBJC_IVAR____TtC17PasswordManagerUI23PMBulkOperationProgress_onCompletion);
  if (v15)
  {
    v15(0, 255);
  }

  return v14;
}

uint64_t sub_21C82AE40(uint64_t a1, char a2)
{
  v3 = *(v2 + 16);
  if (a2 == -1 || (a2 & 1) == 0)
  {
    if (!v3)
    {
      return a1;
    }

    a1 = 0;
    return v3(a1);
  }

  if (v3)
  {
    return v3(a1);
  }

  return a1;
}

uint64_t objectdestroy_114Tm()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21C82AEC8()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1();
  }

  return result;
}

uint64_t sub_21C82AFBC@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath(aP_42);
  v5 = v1;
  sub_21C82B234();
  sub_21CB810D4();

  v3 = OBJC_IVAR____TtC17PasswordManagerUI24PMAppAccountDetailsModel__state;
  swift_beginAccess();
  return sub_21C82B28C(v5 + v3, a1);
}

uint64_t sub_21C82B054(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC17PasswordManagerUI24PMAppAccountDetailsModel__state;
  swift_beginAccess();
  sub_21C82B1D0(a2, a1 + v4);
  return swift_endAccess();
}

uint64_t sub_21C82B0C0()
{
  sub_21C82B174(v0 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppAccountDetailsModel__state);
  v1 = OBJC_IVAR____TtC17PasswordManagerUI24PMAppAccountDetailsModel___observationRegistrar;
  v2 = sub_21CB81114();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_21C82B174(uint64_t a1)
{
  v2 = type metadata accessor for PMAppAccountDetailsModel.State(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21C82B1D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMAppAccountDetailsModel.State(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

unint64_t sub_21C82B234()
{
  result = qword_27CDED418;
  if (!qword_27CDED418)
  {
    type metadata accessor for PMAppAccountDetailsModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDED418);
  }

  return result;
}

uint64_t sub_21C82B28C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMAppAccountDetailsModel.State(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *sub_21C82B2F0()
{
  swift_getKeyPath(byte_21CBA6A80);
  sub_21C82EAE0();
  sub_21CB810D4();

  v1 = *(v0 + 40);
  v2 = v1;
  return v1;
}

id sub_21C82B368@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath(byte_21CBA6A80);
  sub_21C82EAE0();
  sub_21CB810D4();

  v4 = *(v3 + 40);
  *a2 = v4;

  return v4;
}

void sub_21C82B3F0(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 40);
  if (!v4)
  {
    if (!a1)
    {
      v8 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath(byte_21CBA6A80);
    MEMORY[0x28223BE20](KeyPath);
    sub_21C82EAE0();
    sub_21CB810C4();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_21C6E8F4C(0, &qword_27CDEBB30, 0x277D755B8);
  v5 = v4;
  v6 = a1;
  v7 = sub_21CB85DD4();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(v2 + 40);
LABEL_8:
  *(v2 + 40) = a1;
}

uint64_t sub_21C82B550()
{
  swift_getKeyPath(byte_21CBA6A58);
  sub_21C82EAE0();
  sub_21CB810D4();

  v1 = *(v0 + 48);

  return v1;
}

uint64_t sub_21C82B5D0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath(byte_21CBA6A58);
  sub_21C82EAE0();
  sub_21CB810D4();

  v4 = *(v3 + 56);
  *a2 = *(v3 + 48);
  a2[1] = v4;
}

uint64_t sub_21C82B64C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 56);
  if (v5)
  {
    if (a2)
    {
      v6 = *(v2 + 48) == a1 && v5 == a2;
      if (v6 || (sub_21CB86344() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    KeyPath = swift_getKeyPath(byte_21CBA6A58);
    MEMORY[0x28223BE20](KeyPath);
    sub_21C82EAE0();
    sub_21CB810C4();
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
}

uint64_t sub_21C82B78C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21CB81824();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_allocWithZone(MEMORY[0x277CD4790]) init];
  if ([v6 canEvaluatePolicy:1 error:0])
  {
    v7 = [v6 biometryType];

    if (v7 > 1)
    {
      if (v7 == 2)
      {
        v8 = MEMORY[0x277CBA800];
        goto LABEL_11;
      }

      if (v7 == 4)
      {
        v8 = MEMORY[0x277CBA808];
        goto LABEL_11;
      }
    }

    else if (v7 == 1)
    {
      v8 = MEMORY[0x277CBA810];
LABEL_11:
      (*(v3 + 104))(v5, *v8, v2);
      sub_21CB81384();
      (*(v3 + 8))(v5, v2);
      goto LABEL_12;
    }
  }

  else
  {
  }

  sub_21CB81394();
LABEL_12:
  v9 = sub_21CB813C4();
  return (*(*(v9 - 8) + 56))(a1, 0, 1, v9);
}

uint64_t sub_21C82B95C@<X0>(void *a1@<X8>)
{
  swift_getKeyPath(byte_21CBA6A58);
  sub_21C82EAE0();
  sub_21CB810D4();

  v3 = v1[7];
  if (v3)
  {
    *a1 = v1[6];
    a1[1] = v3;
    v4 = *MEMORY[0x277CBA880];
    v5 = sub_21CB81A04();
    (*(*(v5 - 8) + 104))(a1, v4, v5);
    v6 = type metadata accessor for PMOsloBadge(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v6 - 8) + 56))(a1, 0, 1, v6);
  }

  else
  {
    swift_getKeyPath(byte_21CBA6A80);
    sub_21CB810D4();

    v7 = v1[5];
    if (v7)
    {
      *a1 = v7;
      v8 = type metadata accessor for PMOsloBadge(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v8 - 8) + 56))(a1, 0, 1, v8);
      v9 = v7;
    }

    else
    {
      v11 = type metadata accessor for PMOsloBadge(0);
      (*(*(v11 - 8) + 56))(a1, 1, 1, v11);
    }
  }
}

uint64_t sub_21C82BB64(__int128 *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1D50, &qword_21CBA0C00);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v38[-v5];
  v7 = sub_21CB81744();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v38[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = a1[5];
  *v44 = a1[4];
  *&v44[16] = v11;
  v45 = *(a1 + 12);
  v12 = a1[1];
  v40 = *a1;
  v41 = v12;
  v13 = a1[3];
  v42 = a1[2];
  v43 = v13;
  *(v2 + 48) = 0;
  *(v2 + 56) = 0;
  *(v2 + 40) = 0;
  sub_21CB81104();
  v14 = v40;
  if (v40 == 2)
  {
    v15 = sub_21CA4F5B8(0, 1, 1, MEMORY[0x277D84F90]);
    v17 = *(v15 + 2);
    v20 = *(v15 + 3);
    v18 = v17 + 1;
    if (v17 >= v20 >> 1)
    {
      v15 = sub_21CA4F5B8((v20 > 1), v17 + 1, 1, v15);
    }

    v19 = 10;
  }

  else if (v40 == 1)
  {
    v15 = sub_21CA4F5B8(0, 1, 1, MEMORY[0x277D84F90]);
    v17 = *(v15 + 2);
    v16 = *(v15 + 3);
    v18 = v17 + 1;
    if (v17 >= v16 >> 1)
    {
      v15 = sub_21CA4F5B8((v16 > 1), v17 + 1, 1, v15);
    }

    v19 = 9;
  }

  else
  {
    if (v40)
    {
      type metadata accessor for PMSafariStreamlinedAutoFillViewControllerField(0);
      aBlock[0] = v14;
      result = sub_21CB86374();
      __break(1u);
      return result;
    }

    v15 = sub_21CA4F5B8(0, 1, 1, MEMORY[0x277D84F90]);
    v17 = *(v15 + 2);
    v21 = *(v15 + 3);
    v18 = v17 + 1;
    if (v17 >= v21 >> 1)
    {
      v15 = sub_21CA4F5B8((v21 > 1), v17 + 1, 1, v15);
    }

    v19 = 11;
  }

  *(v15 + 2) = v18;
  v15[v17 + 32] = v19;
  (*(v8 + 104))(v10, *MEMORY[0x277CBA7E0], v7);
  v22 = sub_21CB81734();
  v24 = v23;
  (*(v8 + 8))(v10, v7);
  v25 = sub_21C82C014(&v40);
  *(v2 + 64) = v22;
  *(v2 + 72) = v24;
  *(v2 + 80) = v25;
  *(v2 + 88) = v26;
  *(v2 + 96) = v15;
  *(v2 + 104) = 256;
  *(v2 + 106) = 0;
  v46 = *&v44[8];
  *(v2 + 24) = *&v44[8];
  v27 = objc_allocWithZone(MEMORY[0x277CBAA50]);
  aBlock[4] = sub_21C82CB18;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21C95CD64;
  aBlock[3] = &block_descriptor_4;
  v28 = _Block_copy(aBlock);
  sub_21C6EDBAC(&v46, v38, &unk_27CDED260, &qword_21CBA1C60);
  v29 = [v27 initWithAllowNetworkFetchingBlock_];
  _Block_release(v28);

  *(v2 + 16) = v29;
  if (PMOnboardingShouldShowIconBadge())
  {
    v30 = sub_21CB858E4();
    (*(*(v30 - 8) + 56))(v6, 1, 1, v30);
    sub_21CB858B4();

    v31 = sub_21CB858A4();
    v32 = swift_allocObject();
    v33 = v42;
    *(v32 + 88) = v43;
    v34 = *&v44[16];
    *(v32 + 104) = *v44;
    *(v32 + 120) = v34;
    v35 = v41;
    *(v32 + 40) = v40;
    *(v32 + 56) = v35;
    v36 = MEMORY[0x277D85700];
    *(v32 + 16) = v31;
    *(v32 + 24) = v36;
    *(v32 + 32) = v2;
    *(v32 + 136) = v45;
    *(v32 + 72) = v33;
    sub_21C98B308(0, 0, v6, &unk_21CBA6AB0, v32);
  }

  else
  {
    sub_21C82EB78(&v40);
  }

  return v2;
}

uint64_t sub_21C82C014(uint64_t a1)
{
  v101 = a1;
  v1 = sub_21CB81664();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v100 = (&v84 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v4);
  v88 = (&v84 - v5);
  v6 = sub_21CB817E4();
  v98 = *(v6 - 8);
  v99 = v6;
  MEMORY[0x28223BE20](v6);
  v92 = (&v84 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v94 = sub_21CB81644();
  v93 = *(v94 - 8);
  MEMORY[0x28223BE20](v94);
  v91 = &v84 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v87 = &v84 - v10;
  v11 = sub_21CB81024();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v96 = &v84 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v95 = &v84 - v15;
  v16 = objc_opt_self();
  v17 = [v16 sharedManager];
  v97 = [v17 numberOfAutoFillProvidersEnabled];

  v18 = [v16 sharedManager];
  v19 = [v18 getEnabledExtensionsSynchronously];

  if (v19)
  {
    v89 = v2;
    sub_21C6E8F4C(0, qword_280E22EE0, 0x277CCA9C8);
    v20 = sub_21CB85824();

    v90 = v1;
    v86 = v11;
    v85 = v12;
    v84 = v16;
    if (v20 >> 62)
    {
      goto LABEL_26;
    }

    for (i = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_21CB85FA4())
    {
      v22 = 0;
      while (1)
      {
        if ((v20 & 0xC000000000000001) != 0)
        {
          v23 = MEMORY[0x21CF15BD0](v22, v20);
        }

        else
        {
          if (v22 >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_25;
          }

          v23 = *(v20 + 8 * v22 + 32);
        }

        v24 = v23;
        v25 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          break;
        }

        v26 = [v23 sf_bundleIdentifierForContainingApp];
        if (v26)
        {
          v27 = v26;
          v28 = sub_21CB855C4();
          v30 = v29;

          v31 = *(v101 + 80);
          if (v31)
          {
            if (v28 == *(v101 + 72) && v31 == v30)
            {

LABEL_23:

              v34 = v24;
              v35 = [v84 sharedManager];
              v36 = [v35 displayNameForExtension_];

              v37 = sub_21CB855C4();
              v39 = v38;

              v1 = v90;
              v2 = v89;
              goto LABEL_29;
            }

            v33 = sub_21CB86344();

            if (v33)
            {
              goto LABEL_23;
            }
          }

          else
          {
          }
        }

        else if (!*(v101 + 80))
        {
          goto LABEL_23;
        }

        ++v22;
        if (v25 == i)
        {
          goto LABEL_27;
        }
      }

      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      ;
    }

LABEL_27:

    v1 = v90;
    v2 = v89;
    v11 = v86;
    v12 = v85;
  }

  v40 = v95;
  sub_21CB81014();
  v41 = v96;
  sub_21CB81014();
  v37 = sub_21CB80FF4();
  v39 = v42;
  v43 = *(v12 + 8);
  v43(v41, v11);
  v43(v40, v11);
  v34 = 0;
LABEL_29:
  v44 = v101;
  v45 = (v101 + 24);
  if (*v101)
  {
    v107[0] = *v45;
    v46 = *(&v107[0] + 1);
    if (!*(&v107[0] + 1) || (v106 = *(v101 + 8), v47 = *&v107[0], v107[0] == v106) || (v48 = sub_21CB86344(), v44 = v101, (v48 & 1) != 0))
    {
      v49 = v44;
      v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED480, &qword_21CBA6AC8);
      v51 = v50[12];
      v52 = v50[16];
      v105 = *(v49 + 8);
      v53 = v99;
      v54 = v100;
      *v100 = v105;
      (*(v98 + 104))(v54, *MEMORY[0x277CBA7F0], v53);
      v55 = *(v49 + 40);
      *(v54 + v51) = v55;
      v103 = *(v49 + 88);
      v104 = v55;
      *(v54 + v52) = v103;
      if (v97 < 2)
      {
        sub_21C805950(&v105, v102);
        sub_21C805950(&v104, v102);
        sub_21C6EDBAC(&v103, v102, &unk_27CDED260, &qword_21CBA1C60);

        v37 = 0;
        v39 = 0;
      }

      else
      {
        sub_21C805950(&v105, v102);
        sub_21C805950(&v104, v102);
        sub_21C6EDBAC(&v103, v102, &unk_27CDED260, &qword_21CBA1C60);
      }

      v67 = v100;
      v68 = (v100 + v50[20]);
      *v68 = v37;
      v68[1] = v39;
      (*(v2 + 104))(v67, *MEMORY[0x277CBA7B0], v1);
      v66 = sub_21CB81654();

      (*(v2 + 8))(v67, v1);
    }

    else
    {
      v70 = v101;
      sub_21C6EDBAC(v107, &v105, &unk_27CDED260, &qword_21CBA1C60);
      sub_21C805950(&v106, &v105);

      v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED488, &qword_21CBA6AD0);
      v72 = v88;
      v73 = (v88 + *(v71 + 48));
      v74 = v2;
      v75 = (v88 + *(v71 + 64));
      *v88 = v106;
      (*(v98 + 104))(v72, *MEMORY[0x277CBA7F0], v99);
      v76 = *(v70 + 40);
      v77 = *(v70 + 48);
      *v73 = v76;
      v73[1] = v77;
      *v75 = v47;
      v75[1] = v46;
      (*(v74 + 104))(v72, *MEMORY[0x277CBA7A8], v1);

      v66 = sub_21CB81654();

      (*(v74 + 8))(v72, v1);
    }
  }

  else
  {
    v107[0] = *v45;
    v56 = *(&v107[0] + 1);
    if (!*(&v107[0] + 1) || (v106 = *(v101 + 8), v57 = *&v107[0], v107[0] == v106) || (v58 = sub_21CB86344(), v44 = v101, (v58 & 1) != 0))
    {
      v60 = v97;
      v59 = v98;
      v105 = *(v44 + 8);
      v61 = v92;
      *v92 = v105;
      (*(v59 + 104))(v61, *MEMORY[0x277CBA7F0], v99);
      sub_21C805950(&v105, &v104);

      v62 = v91;
      sub_21CB816F4();
      if (v60 < 2)
      {

        v37 = 0;
        v39 = 0;
      }

      v63 = &v62[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED490, &qword_21CBA6AD8) + 48)];
      *v63 = v37;
      v63[1] = v39;
      v64 = v93;
      v65 = v94;
      (*(v93 + 104))(v62, *MEMORY[0x277CBA7A0], v94);
      v66 = sub_21CB81634();

      (*(v64 + 8))(v62, v65);
    }

    else
    {
      sub_21C6EDBAC(v107, &v105, &unk_27CDED260, &qword_21CBA1C60);
      sub_21C805950(&v106, &v105);

      v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED498, &unk_21CBA6AE0);
      v79 = v87;
      v80 = &v87[*(v78 + 48)];
      v81 = v92;
      *v92 = v106;
      (*(v98 + 104))(v81, *MEMORY[0x277CBA7F0], v99);

      sub_21CB816F4();
      *v80 = v57;
      *(v80 + 1) = v56;
      v82 = v93;
      v83 = v94;
      (*(v93 + 104))(v79, *MEMORY[0x277CBA798], v94);
      v66 = sub_21CB81634();

      (*(v82 + 8))(v79, v83);
    }
  }

  return v66;
}

uint64_t sub_21C82CB44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[28] = a4;
  v5[29] = a5;
  sub_21CB858B4();
  v5[30] = sub_21CB858A4();
  v7 = sub_21CB85874();
  v5[31] = v7;
  v5[32] = v6;

  return MEMORY[0x2822009F8](sub_21C82CBDC, v7, v6);
}

uint64_t sub_21C82CBDC()
{
  v1 = v0[29];
  v2 = *(v0[28] + 16);
  v0[33] = v2;
  v0[34] = *(v1 + 56);
  v0[35] = *(v1 + 64);
  v3 = sub_21CB85584();
  v0[36] = v3;
  v0[2] = v0;
  v0[7] = v0 + 26;
  v0[3] = sub_21C82CD28;
  v4 = swift_continuation_init();
  v0[25] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED470, &qword_21CBA6AB8);
  v0[18] = MEMORY[0x277D85DD0];
  v0[19] = 1107296256;
  v0[20] = sub_21C82D154;
  v0[21] = &block_descriptor_31;
  v0[22] = v4;
  [v2 bundleIDForDomain:v3 completionHandler:v0 + 18];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_21C82CD28()
{
  v1 = *(*v0 + 256);
  v2 = *(*v0 + 248);

  return MEMORY[0x2822009F8](sub_21C82CE30, v2, v1);
}

uint64_t sub_21C82CE30()
{
  v1 = *(v0 + 216);
  if (v1)
  {
    v2 = *(v0 + 288);
    v3 = *(v0 + 208);

    sub_21C82B64C(v3, v1);
    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v6 = *(v0 + 264);

    v7 = sub_21CB85584();
    *(v0 + 296) = v7;
    *(v0 + 80) = v0;
    *(v0 + 120) = v0 + 208;
    *(v0 + 88) = sub_21C82CFD8;
    v8 = swift_continuation_init();
    *(v0 + 200) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED478, &qword_21CBA6AC0);
    *(v0 + 144) = MEMORY[0x277D85DD0];
    *(v0 + 152) = 1107296256;
    *(v0 + 160) = sub_21C82D1CC;
    *(v0 + 168) = &block_descriptor_34;
    *(v0 + 176) = v8;
    [v6 iconForDomain:v7 requestID:0 responseHandler:v0 + 144];

    return MEMORY[0x282200938](v0 + 80);
  }
}

uint64_t sub_21C82CFD8()
{
  v1 = *(*v0 + 256);
  v2 = *(*v0 + 248);

  return MEMORY[0x2822009F8](sub_21C82D0E0, v2, v1);
}

uint64_t sub_21C82D0E0()
{
  v1 = *(v0 + 296);

  sub_21C82B3F0(*(v0 + 208));

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_21C82D154(uint64_t a1, uint64_t a2)
{
  v3 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a2)
  {
    v4 = sub_21CB855C4();
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  v6 = *(*(v3 + 64) + 40);
  *v6 = v4;
  v6[1] = v5;

  return MEMORY[0x282200948](v3);
}

uint64_t sub_21C82D1CC(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  v4 = *v3;
  **(*(*v3 + 64) + 40) = a2;
  v5 = a2;

  return MEMORY[0x282200948](v4);
}

uint64_t sub_21C82D230()
{

  v1 = OBJC_IVAR____TtCE17PasswordManagerUICSo41PMSafariStreamlinedAutoFillViewController21ConfigurationProvider___observationRegistrar;
  v2 = sub_21CB81114();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

__n128 PMSafariStreamlinedAutoFillViewController.AutofillConfiguration.init(field:host:matchedHost:username:domainForWebsiteImage:credentialProviderBundleID:creationDate:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, __n128 a11, uint64_t a12)
{
  result = a11;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  *(a9 + 80) = a11;
  *(a9 + 96) = a12;
  return result;
}

uint64_t PMSafariStreamlinedAutoFillViewController.AutofillConfiguration.hash(into:)(uint64_t a1)
{
  v2 = v1[4];
  v3 = v1[10];
  v4 = v1[12];
  MEMORY[0x21CF15F90](*v1);
  sub_21CB854C4();
  sub_21CB864A4();
  if (v2)
  {
    sub_21CB854C4();
  }

  sub_21CB854C4();
  sub_21CB854C4();
  if (!v3)
  {
    sub_21CB864A4();
    if (v4)
    {
      goto LABEL_5;
    }

    return sub_21CB864A4();
  }

  sub_21CB864A4();
  sub_21CB854C4();
  if (!v4)
  {
    return sub_21CB864A4();
  }

LABEL_5:
  sub_21CB864A4();

  return sub_21CB854C4();
}

uint64_t PMSafariStreamlinedAutoFillViewController.AutofillConfiguration.hashValue.getter()
{
  sub_21CB86484();
  PMSafariStreamlinedAutoFillViewController.AutofillConfiguration.hash(into:)(v1);
  return sub_21CB864D4();
}

uint64_t sub_21C82D59C()
{
  sub_21CB86484();
  PMSafariStreamlinedAutoFillViewController.AutofillConfiguration.hash(into:)(v1);
  return sub_21CB864D4();
}

uint64_t sub_21C82D5E0(uint64_t a1)
{
  sub_21CB86484();
  PMSafariStreamlinedAutoFillViewController.AutofillConfiguration.hash(into:)(v2);
  return sub_21CB864D4();
}

id PMSafariStreamlinedAutoFillViewController.init(savedAccountMatch:host:hasPasswordFieldToFill:)(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  v6 = sub_21CB80DD4();
  v7 = *(v6 - 8);
  *&v8 = MEMORY[0x28223BE20](v6).n128_u64[0];
  v10 = v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [a1 autoFillPasskey];
  if (v11)
  {

    v25[0] = 0;
  }

  else
  {
    v12 = 1;
    if ((a4 & 1) == 0)
    {
      v12 = 2;
    }

    v25[0] = v12;
  }

  v13 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  [v13 setTimeStyle_];
  [v13 setDateStyle_];
  [v13 setFormattingContext_];
  v14 = sub_21CB85584();

  v15 = [a1 host];
  if (!v15)
  {
    sub_21CB855C4();
    v15 = sub_21CB85584();
  }

  v16 = [v15 safari_highLevelDomainFromHost];

  v17 = [a1 user];
  if (!v17)
  {
    sub_21CB855C4();
    v17 = sub_21CB85584();
  }

  v18 = [a1 host];
  if (!v18)
  {
    sub_21CB855C4();
    v18 = sub_21CB85584();
  }

  v19 = [v18 safari_highLevelDomainForPasswordManager];

  if (!v19)
  {
    sub_21CB855C4();
    v19 = sub_21CB85584();
  }

  v20 = [a1 creationDate];
  sub_21CB80D94();

  v21 = sub_21CB80D24();
  (*(v7 + 8))(v10, v6);
  v22 = [v13 stringFromDate_];

  if (!v22)
  {
    sub_21CB855C4();
    v22 = sub_21CB85584();
  }

  v23 = [v25[1] initWithField:v25[0] host:v14 matchedHost:v16 username:v17 domainForWebsiteImage:v19 credentialProviderBundleID:0 creationDate:v22];

  return v23;
}

id sub_21C82D9A4(void *a1, uint64_t a2, uint64_t a3, char a4, SEL *a5)
{
  v8 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v9 = sub_21CB85584();

  v10 = [v8 *a5];

  return v10;
}

id PMSafariStreamlinedAutoFillViewController.init(credentialIdentity:host:hasPasswordFieldToFill:)(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  v7 = [a1 type];
  v8 = sub_21CB85584();

  v9 = [a1 user];
  if (!v9)
  {
    sub_21CB855C4();
    v9 = sub_21CB85584();
  }

  v10 = [a1 serviceIdentifier];
  if (!v10)
  {
    sub_21CB855C4();
    v10 = sub_21CB85584();
  }

  v11 = [a1 owningExtensionState];
  if (v11)
  {
    v12 = v11;
    v13 = [v11 providerBundleID];
  }

  else
  {
    v13 = 0;
  }

  v14 = 1;
  if ((a4 & 1) == 0)
  {
    v14 = 2;
  }

  if (v7 == 2)
  {
    v15 = 0;
  }

  else
  {
    v15 = v14;
  }

  v16 = [v4 initWithField:v15 host:v8 matchedHost:0 username:v9 domainForWebsiteImage:v10 credentialProviderBundleID:v13 creationDate:0];

  return v16;
}

id sub_21C82DC3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10, uint64_t a11)
{
  *(v11 + OBJC_IVAR___PMSafariStreamlinedAutoFillViewController_delegate) = 0;
  v12 = v11 + OBJC_IVAR___PMSafariStreamlinedAutoFillViewController_autofillConfiguration;
  *v12 = a1;
  *(v12 + 8) = a2;
  *(v12 + 16) = a3;
  *(v12 + 24) = a4;
  *(v12 + 32) = a5;
  *(v12 + 40) = a6;
  *(v12 + 48) = a7;
  *(v12 + 56) = a8;
  *(v12 + 64) = a9;
  *(v12 + 80) = a10;
  *(v12 + 96) = a11;
  v14.super_class = PMSafariStreamlinedAutoFillViewController;
  return objc_msgSendSuper2(&v14, sel_initWithNibName_bundle_, 0, 0);
}

id PMSafariStreamlinedAutoFillViewController.init(autofillConfiguration:)(void *a1)
{
  v1 = a1[4];
  v2 = a1[10];
  v3 = a1[12];
  v4 = sub_21CB85584();
  if (v1)
  {

    v5 = sub_21CB85584();
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_21CB85584();
  v7 = sub_21CB85584();
  if (!v2)
  {
    v8 = 0;
    if (v3)
    {
      goto LABEL_6;
    }

LABEL_8:
    v9 = 0;
    goto LABEL_9;
  }

  v8 = sub_21CB85584();

  if (!v3)
  {
    goto LABEL_8;
  }

LABEL_6:

  v9 = sub_21CB85584();

LABEL_9:
  v10 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithField:v12 host:v4 matchedHost:v5 username:v6 domainForWebsiteImage:v7 credentialProviderBundleID:v8 creationDate:v9];

  return v10;
}

void PMSafariStreamlinedAutoFillViewController.init(coder:)()
{
  *(v0 + OBJC_IVAR___PMSafariStreamlinedAutoFillViewController_delegate) = 0;
  sub_21CB861C4();
  __break(1u);
}

Swift::Void __swiftcall PMSafariStreamlinedAutoFillViewController.loadView()()
{
  v1 = *&v0[OBJC_IVAR___PMSafariStreamlinedAutoFillViewController_autofillConfiguration + 48];
  v2 = *&v0[OBJC_IVAR___PMSafariStreamlinedAutoFillViewController_autofillConfiguration + 80];
  v35 = *&v0[OBJC_IVAR___PMSafariStreamlinedAutoFillViewController_autofillConfiguration + 64];
  v36 = v2;
  v3 = *&v0[OBJC_IVAR___PMSafariStreamlinedAutoFillViewController_autofillConfiguration + 16];
  v32[0] = *&v0[OBJC_IVAR___PMSafariStreamlinedAutoFillViewController_autofillConfiguration];
  v32[1] = v3;
  v4 = *&v0[OBJC_IVAR___PMSafariStreamlinedAutoFillViewController_autofillConfiguration + 48];
  v6 = *&v0[OBJC_IVAR___PMSafariStreamlinedAutoFillViewController_autofillConfiguration];
  v5 = *&v0[OBJC_IVAR___PMSafariStreamlinedAutoFillViewController_autofillConfiguration + 16];
  v33 = *&v0[OBJC_IVAR___PMSafariStreamlinedAutoFillViewController_autofillConfiguration + 32];
  v34 = v4;
  v7 = *&v0[OBJC_IVAR___PMSafariStreamlinedAutoFillViewController_autofillConfiguration + 80];
  v26 = v35;
  v27 = v7;
  v22 = v6;
  v23 = v5;
  v37 = *&v0[OBJC_IVAR___PMSafariStreamlinedAutoFillViewController_autofillConfiguration + 96];
  v9 = *(&v35 + 1);
  v8 = v36;
  v28 = *&v0[OBJC_IVAR___PMSafariStreamlinedAutoFillViewController_autofillConfiguration + 96];
  v24 = v33;
  v25 = v1;
  _s21ConfigurationProviderCMa(0);
  v10 = swift_allocObject();
  sub_21C82E828(v32, v17);

  sub_21C82BB64(&v22);
  v18 = 0;
  memset(v17, 0, sizeof(v17));
  v11 = swift_allocObject();
  *(v11 + 16) = v0;
  v12 = swift_allocObject();
  *(v12 + 16) = v0;
  v21 = 0;
  memset(v20, 0, sizeof(v20));
  sub_21C6EDBAC(v20, v19, &unk_27CDFA2C0, &unk_21CBA68A0);
  v13 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDFA2C0, &unk_21CBA68A0);
  sub_21CB84D44();
  sub_21C6EA794(v20, &unk_27CDFA2C0, &unk_21CBA68A0);
  *&v22 = sub_21C82E860;
  *(&v22 + 1) = v11;
  *&v23 = nullsub_1;
  *(&v23 + 1) = 0;
  v26 = v10;
  sub_21C6EA794(&v27, &qword_27CDF3260, &qword_21CBAF450);
  v29 = 0;
  sub_21C6EDBAC(v17, &v27, &unk_27CDFA2C0, &unk_21CBA68A0);
  *&v24 = sub_21C82E868;
  *(&v24 + 1) = v12;
  *&v25 = v9;
  *(&v25 + 1) = v8;
  v14 = objc_opt_self();
  v30 = [v14 biometryType];
  LOBYTE(v14) = [v14 isPad];
  sub_21C6EA794(v17, &unk_27CDFA2C0, &unk_21CBA68A0);
  v31 = v14;
  sub_21C6EDBAC(&v22, v17, &qword_27CDED430, &qword_21CBA68B0);
  v15 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED438, &qword_21CBA68B8));
  v16 = sub_21CB827D4();
  sub_21C6EA794(&v22, &qword_27CDED430, &qword_21CBA68B0);
  [v13 setView_];
}

id sub_21C82E318(uint64_t a1, id a2)
{
  result = [a2 delegate];
  if (result)
  {
    v5 = &selRef_streamlinedAutoFillViewControllerShowKeyboard_;
    if (a1)
    {
      v5 = &selRef_streamlinedAutoFillViewControllerFillCredential_;
    }

    [result *v5];

    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_21C82E3A0(char a1, id a2)
{
  result = [a2 delegate];
  if (result)
  {
    v5 = &selRef_streamlinedAutoFillViewControllerShowOtherPasswords_;
    if ((a1 & 1) == 0)
    {
      v5 = &selRef_streamlinedAutoFillViewControllerShowKeyboard_;
    }

    [result *v5];

    return swift_unknownObjectRelease();
  }

  return result;
}

void __swiftcall PMSafariStreamlinedAutoFillViewController.init(nibName:bundle:)(PMSafariStreamlinedAutoFillViewController *__return_ptr retstr, Swift::String_optional nibName, NSBundle_optional bundle)
{
  isa = bundle.value.super.isa;
  if (nibName.value._object)
  {
    v4 = sub_21CB85584();
  }

  else
  {
    v4 = 0;
  }

  [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithNibName:v4 bundle:isa];
}

uint64_t _sSo41PMSafariStreamlinedAutoFillViewControllerC17PasswordManagerUIE21AutofillConfigurationV2eeoiySbAE_AEtFZ_0(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = a1[3];
  v4 = a1[4];
  v3 = a1[5];
  v5 = a1[6];
  v21 = a1[8];
  v22 = a1[7];
  v20 = a1[10];
  v18 = a1[12];
  v6 = a2[3];
  v7 = a2[4];
  v8 = a2[5];
  v9 = a2[6];
  v10 = a2[7];
  v11 = a2[8];
  v15 = a2[9];
  v16 = a1[9];
  v19 = a2[10];
  v13 = a1[11];
  v14 = a2[11];
  v17 = a2[12];
  if ((a1[1] != a2[1] || a1[2] != a2[2]) && (sub_21CB86344() & 1) == 0)
  {
    return 0;
  }

  if (v4)
  {
    if (!v7 || (v2 != v6 || v4 != v7) && (sub_21CB86344() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  if ((v3 != v8 || v5 != v9) && (sub_21CB86344() & 1) == 0 || (v22 != v10 || v21 != v11) && (sub_21CB86344() & 1) == 0)
  {
    return 0;
  }

  if (v20)
  {
    if (!v19 || (v16 != v15 || v20 != v19) && (sub_21CB86344() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v19)
  {
    return 0;
  }

  if (v18)
  {
    if (v17 && (v13 == v14 && v18 == v17 || (sub_21CB86344() & 1) != 0))
    {
      return 1;
    }
  }

  else if (!v17)
  {
    return 1;
  }

  return 0;
}

uint64_t _s21ConfigurationProviderCMa(uint64_t a1)
{
  result = qword_27CDED450;
  if (!qword_27CDED450)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_21C82E878()
{
  result = qword_27CDED440;
  if (!qword_27CDED440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDED440);
  }

  return result;
}

uint64_t sub_21C82E8D4(uint64_t a1)
{
  result = sub_21CB81114();
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

__n128 __swift_memcpy104_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_21C82E9C0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21C82EA08(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_21C82EAE0()
{
  result = qword_27CDED468;
  if (!qword_27CDED468)
  {
    _s21ConfigurationProviderCMa(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDED468);
  }

  return result;
}

uint64_t sub_21C82EB38()
{
  v1 = v0[2];
  v2 = v0[4];
  *(v1 + 48) = v0[3];
  *(v1 + 56) = v2;
}

uint64_t sub_21C82EBA8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21C702EFC;

  return sub_21C82CB44(a1, v4, v5, v6, (v1 + 5));
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_21C82EC94(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_21C82ECDC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21C82ED48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a5@<X8>)
{
  v27[1] = a3;
  v29 = a1;
  v30 = a2;
  v31 = a5;
  v5 = sub_21CB82A54();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED4A0, &qword_21CBA6B80);
  MEMORY[0x28223BE20](v9);
  v11 = v27 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED4A8, &qword_21CBA6B88);
  MEMORY[0x28223BE20](v12);
  v14 = v27 - v13;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED4B0, &qword_21CBA6B90);
  MEMORY[0x28223BE20](v28);
  v16 = v27 - v15;
  v32 = 0;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED4B8, &qword_21CBA6B98);
  sub_21C82F1AC();
  sub_21CB84DA4();
  v17 = sub_21CB83CE4();
  sub_21CB81F24();
  v18 = &v11[*(v9 + 36)];
  *v18 = v17;
  *(v18 + 1) = v19;
  *(v18 + 2) = v20;
  *(v18 + 3) = v21;
  *(v18 + 4) = v22;
  v18[40] = 0;
  sub_21CB82A44();
  sub_21C82F3A8();
  sub_21C82F6F0(&qword_27CDED508, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
  sub_21CB84124();
  (*(v6 + 8))(v8, v5);
  sub_21C82F460(v11);
  v33 = 0;
  sub_21CB84D44();
  LOBYTE(v9) = v34;
  v23 = v35;
  KeyPath = swift_getKeyPath(asc_21CBA6BD8);
  v25 = &v14[*(v12 + 36)];
  *v25 = v9;
  *(v25 + 1) = v23;
  *(v25 + 2) = KeyPath;
  v25[24] = 0;
  v34 = v29;
  v35 = v30;
  sub_21C82F4C8();
  sub_21C71F3FC();
  sub_21CB843E4();
  sub_21C6EA794(v14, &qword_27CDED4A8, &qword_21CBA6B88);
  sub_21CB828E4();
  return sub_21C6EA794(v16, &qword_27CDED4B0, &qword_21CBA6B90);
}

void sub_21C82F0D0(uint64_t a1@<X8>)
{
  v3 = sub_21CB84BB4();
  sub_21CB83D94();
  sub_21CB83E04();
  v4 = sub_21CB83E54();

  KeyPath = swift_getKeyPath(byte_21CBA6C08);
  v6 = sub_21CB837E4();
  v7 = sub_21CB83CE4();
  sub_21CB81F24();
  *a1 = v3;
  *(a1 + 8) = KeyPath;
  *(a1 + 16) = v4;
  *(a1 + 24) = v6;
  *(a1 + 28) = 0;
  *(a1 + 32) = v7;
  *(a1 + 40) = v8;
  *(a1 + 48) = v9;
  *(a1 + 56) = v10;
  *(a1 + 64) = v11;
  *(a1 + 72) = 0;
}

unint64_t sub_21C82F1AC()
{
  result = qword_27CDED4C0;
  if (!qword_27CDED4C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDED4B8, &qword_21CBA6B98);
    sub_21C82F238();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDED4C0);
  }

  return result;
}

unint64_t sub_21C82F238()
{
  result = qword_27CDED4C8;
  if (!qword_27CDED4C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDED4D0, &qword_21CBA6BA0);
    sub_21C82F2F0();
    sub_21C6EADEC(&qword_27CDEB970, &qword_27CDEB948, &unk_21CBA26E0, MEMORY[0x277CE0470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDED4C8);
  }

  return result;
}

unint64_t sub_21C82F2F0()
{
  result = qword_27CDED4D8;
  if (!qword_27CDED4D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDED4E0, &qword_21CBA6BA8);
    sub_21C74DDEC();
    sub_21C6EADEC(&qword_27CDEC730, &qword_27CDEC738, &unk_21CBA6BC0, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDED4D8);
  }

  return result;
}

unint64_t sub_21C82F3A8()
{
  result = qword_27CDED4F0;
  if (!qword_27CDED4F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDED4A0, &qword_21CBA6B80);
    sub_21C6EADEC(&qword_27CDED4F8, &qword_27CDED500, &qword_21CBA6BD0, MEMORY[0x277CDF028]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDED4F0);
  }

  return result;
}

uint64_t sub_21C82F460(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED4A0, &qword_21CBA6B80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_21C82F4C8()
{
  result = qword_27CDED510;
  if (!qword_27CDED510)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDED4A8, &qword_21CBA6B88);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDED4A0, &qword_21CBA6B80);
    sub_21CB82A54();
    sub_21C82F3A8();
    sub_21C82F6F0(&qword_27CDED508, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
    swift_getOpaqueTypeConformance2();
    sub_21C82F5E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDED510);
  }

  return result;
}

unint64_t sub_21C82F5E0()
{
  result = qword_27CDED518;
  if (!qword_27CDED518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDED518);
  }

  return result;
}

unint64_t sub_21C82F634()
{
  result = qword_27CDED520;
  if (!qword_27CDED520)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDED4B0, &qword_21CBA6B90);
    sub_21C82F4C8();
    sub_21C82F6F0(&qword_27CDEB908, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDED520);
  }

  return result;
}

uint64_t sub_21C82F6F0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21C82F738()
{
  sub_21C71E9B8(*(v0 + 24));

  return swift_deallocClassInstance();
}

uint64_t get_enum_tag_for_layout_string_17PasswordManagerUI34PMAccountsNavigationContainerModelC5StateO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_21C82F788(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 8))
  {
    return (*a1 + 2147483645);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21C82F7E4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

void *sub_21C82F834(void *result, int a2)
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

void sub_21C82F8B0(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    sub_21C7226D8();
    if (v2 <= 0x3F)
    {
      sub_21C7205C4();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_21C82F950(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 9;
  v9 = (a2 - v7 + 255) >> 8;
  if (v8 <= 3)
  {
    v10 = v9 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v12 > 1)
  {
    if (v12 == 2)
    {
      v13 = *&a1[v8];
      if (!*&a1[v8])
      {
        goto LABEL_28;
      }
    }

    else
    {
      v13 = *&a1[v8];
      if (!v13)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v12 || (v13 = a1[v8]) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))(a1);
    }

    v17 = *(&a1[v6 + 7] & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v15 = (v13 - 1) << (8 * v8);
  if (v8 <= 3)
  {
    v16 = *a1;
  }

  else
  {
    v15 = 0;
    v16 = *a1;
  }

  return v7 + (v16 | v15) + 1;
}

void sub_21C82FAB4(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(*(*(a4 + 16) - 8) + 64);
  v10 = ((((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v8 >= a3)
  {
    v14 = 0;
    if (v8 >= a2)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v11 = (a3 - v8 + 255) >> 8;
    if (v10 <= 3)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    if (v8 >= a2)
    {
LABEL_17:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *&a1[v10] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_32;
        }

        *&a1[v10] = 0;
      }

      else if (v14)
      {
        a1[v10] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_32;
      }

      if (!a2)
      {
        return;
      }

LABEL_32:
      if (v7 < 0x7FFFFFFF)
      {
        v18 = (&a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          *v18 = a2 & 0x7FFFFFFF;
          v18[1] = 0;
        }

        else
        {
          *v18 = a2 - 1;
        }
      }

      else
      {
        v17 = *(v6 + 56);

        v17();
      }

      return;
    }
  }

  v15 = ~v8 + a2;
  bzero(a1, ((((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 9);
  if (v10 <= 3)
  {
    v16 = (v15 >> 8) + 1;
  }

  else
  {
    v16 = 1;
  }

  if (v10 <= 3)
  {
    *a1 = v15;
    if (v14 > 1)
    {
LABEL_27:
      if (v14 == 2)
      {
        *&a1[v10] = v16;
      }

      else
      {
        *&a1[v10] = v16;
      }

      return;
    }
  }

  else
  {
    *a1 = v15;
    if (v14 > 1)
    {
      goto LABEL_27;
    }
  }

  if (v14)
  {
    a1[v10] = v16;
  }
}

uint64_t sub_21C82FD0C(uint64_t a1)
{
  v2 = *(a1 + 48);
  v13[0] = *(a1 + 24);
  v13[1] = MEMORY[0x277D84A98];
  v13[2] = v2;
  v13[3] = MEMORY[0x277CE1538];
  v3 = sub_21CB82624();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = v13 - v8;
  sub_21C82FE8C(a1);
  WitnessTable = swift_getWitnessTable();
  sub_21C72BE10(v6, v3, WitnessTable);
  v11 = *(v4 + 8);
  v11(v6, v3);
  sub_21C72BE10(v9, v3, WitnessTable);
  return (v11)(v9, v3);
}

uint64_t sub_21C82FE8C(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = sub_21CB85E54();
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v10[-v6];
  v8 = *(v3 - 8);
  (*(v8 + 16))(&v10[-v6], v1, v3, v5);
  (*(v8 + 56))(v7, 0, 1, v3);
  v11 = v3;
  v12 = *(a1 + 24);
  v13 = *(a1 + 40);
  v14 = *(a1 + 48);
  v15 = v1;
  return sub_21CB82604();
}

uint64_t sub_21C82FFCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v11 = v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = v24 - v13;
  v24[0] = v15;
  v24[1] = v16;
  v24[2] = v17;
  v24[3] = v18;
  v24[4] = v19;
  v24[5] = v20;
  v21 = type metadata accessor for PMAccountsNavigationLink(0, v24);
  (*(a1 + *(v21 + 68)))();
  sub_21C72BE10(v11, a3, a6);
  v22 = *(v9 + 8);
  v22(v11, a3);
  sub_21C72BE10(v14, a3, a6);
  return (v22)(v14, a3);
}

uint64_t sub_21C830140()
{
  sub_21C723244();

  return sub_21CB82F94();
}

PasswordManagerUI::PMAccountsNavigationStyle_optional __swiftcall PMAccountsNavigationStyle.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_21CB86244();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t PMAccountsNavigationStyle.rawValue.getter()
{
  v1 = 0x65536D6574737973;
  v2 = 0x64726F7773736170;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000011;
  }

  if (*v0)
  {
    v1 = 7368801;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_21C830274()
{
  sub_21CB86484();
  sub_21CB854C4();

  return sub_21CB864D4();
}

uint64_t sub_21C83034C(uint64_t a1)
{
  sub_21CB854C4();
}

uint64_t sub_21C830410(uint64_t a1)
{
  sub_21CB86484();
  sub_21CB854C4();

  return sub_21CB864D4();
}

void sub_21C8304F0(unint64_t *a1@<X8>)
{
  v2 = 0xEE0073676E697474;
  v3 = 0x65536D6574737973;
  v4 = 0xEF736E6F6974704FLL;
  v5 = 0x64726F7773736170;
  if (*v1 != 2)
  {
    v5 = 0xD000000000000011;
    v4 = 0x800000021CB89F60;
  }

  if (*v1)
  {
    v3 = 7368801;
    v2 = 0xE300000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_21C830594(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_21C70CC08();

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

uint64_t sub_21C830624(uint64_t a1, char a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED670, &qword_21CBA7280);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v16[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED678, &qword_21CBA7288);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v16[-v10];
  v17 = a1;
  v18 = a2 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED680, &unk_21CBA7290);
  sub_21C830C8C();
  sub_21CB84C84();
  v19 = 0;
  LOBYTE(v20) = 1;
  v12 = sub_21C830DF8();
  v13 = sub_21C830E5C();
  sub_21CB844C4();
  (*(v5 + 8))(v7, v4);
  KeyPath = swift_getKeyPath(asc_21CBA72A0);
  v22 = v13;
  v23 = KeyPath;
  v24 = 0;
  v19 = v4;
  v20 = &type metadata for PMListSubtitleCellLabeledContentStyle;
  v21 = v12;
  swift_getOpaqueTypeConformance2();
  sub_21C830EB0();
  sub_21CB840E4();

  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_21C8308D0@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21CB81024();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = v17 - v7;
  sub_21CB81014();
  sub_21CB81014();
  v9 = sub_21CB80FF4();
  v11 = v10;
  v12 = *(v3 + 8);
  v12(v5, v2);
  v12(v8, v2);
  v17[0] = v9;
  v17[1] = v11;
  sub_21C71F3FC();
  result = sub_21CB84054();
  *a1 = result;
  *(a1 + 8) = v14;
  *(a1 + 16) = v15 & 1;
  *(a1 + 24) = v16;
  return result;
}

double sub_21C830A60@<D0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = sub_21CB82F84();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a2 & 1) == 0)
  {

    sub_21CB85B04();
    v12 = sub_21CB83C94();
    sub_21CB81C14();

    sub_21CB82F74();
    swift_getAtKeyPath();
    sub_21C7025C4(a1, 0);
    (*(v7 + 8))(v9, v6);
    if ((v19 & 1) == 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v17[0] = sub_21CB84BB4();
    memset(&v17[1], 0, 32);
    v18 = 1;
    goto LABEL_6;
  }

  if (a1)
  {
    goto LABEL_5;
  }

LABEL_3:
  v10 = sub_21CB84BB4();
  v11 = sub_21CB84A84();
  v17[0] = v10;
  v17[1] = v11;
  *&v17[2] = vdupq_n_s64(0x4040000000000000uLL);
  v17[4] = 0x4018000000000000;
  v18 = 0;
LABEL_6:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED698, &unk_21CBB8140);
  sub_21C830D18();
  sub_21CB83494();
  result = *&v19;
  v14 = v20;
  v15 = v21;
  v16 = v22;
  *a3 = v19;
  *(a3 + 16) = v14;
  *(a3 + 32) = v15;
  *(a3 + 40) = v16;
  return result;
}

unint64_t sub_21C830C8C()
{
  result = qword_27CDED688;
  if (!qword_27CDED688)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDED680, &unk_21CBA7290);
    sub_21C830D18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDED688);
  }

  return result;
}

unint64_t sub_21C830D18()
{
  result = qword_27CDED690;
  if (!qword_27CDED690)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDED698, &unk_21CBB8140);
    sub_21C830DA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDED690);
  }

  return result;
}

unint64_t sub_21C830DA4()
{
  result = qword_27CDED6A0;
  if (!qword_27CDED6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDED6A0);
  }

  return result;
}

unint64_t sub_21C830DF8()
{
  result = qword_27CDED6A8;
  if (!qword_27CDED6A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDED670, &qword_21CBA7280);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDED6A8);
  }

  return result;
}

unint64_t sub_21C830E5C()
{
  result = qword_27CDED6B0;
  if (!qword_27CDED6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDED6B0);
  }

  return result;
}

unint64_t sub_21C830EB0()
{
  result = qword_27CDED6B8;
  if (!qword_27CDED6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDED6B8);
  }

  return result;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_21C830F18(uint64_t a1, int a2)
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

uint64_t sub_21C830F60(uint64_t result, int a2, int a3)
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

uint64_t sub_21C830FD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v38 = a4;
  v45 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED6C0, &qword_21CBA73B8);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v37[-v10];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED6C8, &qword_21CBA73C0);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v37[-v14];
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED6D0, &qword_21CBA73C8);
  v43 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v17 = &v37[-v16];
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED6D8, &unk_21CBA73D0);
  v41 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v40 = &v37[-v18];
  v50 = a1;
  v51 = a2;
  v39 = a2;
  v52 = a3;
  v53 = v38 & 1;
  v46 = a1;
  v47 = a2;
  v48 = a3;
  v49 = v38 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED6E0, &qword_21CBBE3A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED6E8, &qword_21CBA73E0);
  sub_21C831C64();
  sub_21C831CE0();
  sub_21CB84C84();
  v54 = 0;
  LOBYTE(v55) = 1;
  v19 = sub_21C6EADEC(&qword_27CDED740, &qword_27CDED6C0, &qword_21CBA73B8, MEMORY[0x277CDEFF0]);
  v20 = sub_21C830E5C();
  sub_21CB844C4();
  (*(v9 + 8))(v11, v8);
  KeyPath = swift_getKeyPath(aH_61);
  v57 = v20;
  v58 = KeyPath;
  v59 = 0;
  v54 = v8;
  v55 = &type metadata for PMListSubtitleCellLabeledContentStyle;
  v56 = v19;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v23 = sub_21C830EB0();
  sub_21CB840E4();

  (*(v13 + 8))(v15, v12);
  swift_getKeyPath(asc_21CBA7430);
  swift_getKeyPath(asc_21CBA7458);
  sub_21CB81DB4();

  if ((v54 & 1) == 0 && sub_21C74C3BC() > 0)
  {
    sub_21C74C3BC();
  }

  v54 = v12;
  v55 = &type metadata for PMAccountsListNavigationCellLabelStyle;
  v56 = OpaqueTypeConformance2;
  v57 = v23;
  swift_getOpaqueTypeConformance2();
  v24 = v40;
  v25 = v44;
  sub_21CB84784();
  (*(v43 + 8))(v17, v25);
  LOBYTE(v25) = sub_21CB83D44();
  sub_21CB81F24();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v34 = v45;
  (*(v41 + 32))(v45, v24, v42);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED748, &qword_21CBA7478);
  v36 = v34 + *(result + 36);
  *v36 = v25;
  *(v36 + 8) = v27;
  *(v36 + 16) = v29;
  *(v36 + 24) = v31;
  *(v36 + 32) = v33;
  *(v36 + 40) = 0;
  return result;
}

uint64_t sub_21C831584@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{

  sub_21CB1AB84(a1);

  sub_21C71F3FC();
  result = sub_21CB84054();
  *a2 = result;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6 & 1;
  *(a2 + 24) = v7;
  return result;
}

uint64_t sub_21C831604@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21CB81024();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = v17 - v7;
  sub_21CB81014();
  sub_21CB81014();
  v9 = sub_21CB80FF4();
  v11 = v10;
  v12 = *(v3 + 8);
  v12(v5, v2);
  v12(v8, v2);
  v17[0] = v9;
  v17[1] = v11;
  sub_21C71F3FC();
  result = sub_21CB84054();
  *a1 = result;
  *(a1 + 8) = v14;
  *(a1 + 16) = v15 & 1;
  *(a1 + 24) = v16;
  return result;
}

double sub_21C831794@<D0>(uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v8 = sub_21CB82F84();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a4)
  {
    if ((a3 & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {

    sub_21CB85B04();
    v15 = sub_21CB83C94();
    sub_21CB81C14();

    sub_21CB82F74();
    swift_getAtKeyPath();
    sub_21C7025C4(a3, 0);
    (*(v9 + 8))(v11, v8);
    if ((v30[0] & 1) == 0)
    {
LABEL_3:
      sub_21C831AA8(v30);
      v12 = *&v30[0];
      v13 = BYTE8(v30[0]);
      swift_getKeyPath(byte_21CBA7480);
      sub_21CB81DB4();

      if (v24 == 1 && !sub_21C74C3BC())
      {
        v14 = sub_21CB84AC4();
      }

      else
      {
        v14 = sub_21CB84A64();
      }

      v24 = v12;
      v25 = v13;
      v26 = v14;
      v27 = vdupq_n_s64(0x4040000000000000uLL);
      v28 = 0x4018000000000000;
      v29 = 0;
      goto LABEL_12;
    }
  }

  sub_21C831AA8(v30);
  v16 = *&v30[0];
  v17 = BYTE8(v30[0]);
  swift_getKeyPath(byte_21CBA7480);
  sub_21CB81DB4();

  if (v24 == 1 && !sub_21C74C3BC())
  {
    v18 = sub_21CB84AC4();
  }

  else
  {
    v18 = sub_21CB84A64();
  }

  v24 = v16;
  v25 = v17;
  v26 = v18;
  v27 = 0uLL;
  v28 = 0;
  v29 = 1;
LABEL_12:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED708, &qword_21CBA73E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED728, &qword_21CBA73F8);
  sub_21C831D6C();
  sub_21C831E74();
  sub_21CB83494();
  result = *v30;
  v20 = v30[1];
  v21 = v30[2];
  v22 = v31;
  *a5 = v30[0];
  *(a5 + 16) = v20;
  *(a5 + 32) = v21;
  *(a5 + 48) = v22;
  return result;
}

uint64_t sub_21C831AA8@<X0>(uint64_t a2@<X8>)
{
  swift_getKeyPath(byte_21CBA7480);
  sub_21CB81DB4();

  if (v4 == 1)
  {
    sub_21C74C3BC();
  }

  sub_21CB84BB4();
  result = sub_21CB83494();
  *a2 = v4;
  *(a2 + 8) = v5;
  return result;
}

unint64_t sub_21C831C64()
{
  result = qword_27CDED6F0;
  if (!qword_27CDED6F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDED6E0, &qword_21CBBE3A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDED6F0);
  }

  return result;
}

unint64_t sub_21C831CE0()
{
  result = qword_27CDED6F8;
  if (!qword_27CDED6F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDED6E8, &qword_21CBA73E0);
    sub_21C831D6C();
    sub_21C831E74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDED6F8);
  }

  return result;
}

unint64_t sub_21C831D6C()
{
  result = qword_27CDED700;
  if (!qword_27CDED700)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDED708, &qword_21CBA73E8);
    sub_21C831DF8();
    sub_21C830DA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDED700);
  }

  return result;
}

unint64_t sub_21C831DF8()
{
  result = qword_27CDED710;
  if (!qword_27CDED710)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDED718, &qword_21CBA73F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDED710);
  }

  return result;
}

unint64_t sub_21C831E74()
{
  result = qword_27CDED720;
  if (!qword_27CDED720)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDED728, &qword_21CBA73F8);
    sub_21C831DF8();
    sub_21C6EADEC(&qword_27CDED730, &qword_27CDED738, &qword_21CBA7400, MEMORY[0x277CE07B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDED720);
  }

  return result;
}

uint64_t sub_21C831F2C@<X0>(_BYTE *a2@<X8>)
{
  swift_getKeyPath(asc_21CBA7430);
  swift_getKeyPath(asc_21CBA7458);
  sub_21CB81DB4();

  *a2 = v4;
  return result;
}

uint64_t sub_21C831FAC(char *a1, uint64_t *a2)
{
  swift_getKeyPath(asc_21CBA7430);
  swift_getKeyPath(asc_21CBA7458);

  return sub_21CB81DC4();
}

unint64_t sub_21C832030()
{
  result = qword_27CDED750;
  if (!qword_27CDED750)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDED748, &qword_21CBA7478);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDED6D0, &qword_21CBA73C8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDED6C8, &qword_21CBA73C0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDED6C0, &qword_21CBA73B8);
    sub_21C6EADEC(&qword_27CDED740, &qword_27CDED6C0, &qword_21CBA73B8, MEMORY[0x277CDEFF0]);
    sub_21C830E5C();
    swift_getOpaqueTypeConformance2();
    sub_21C830EB0();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDED750);
  }

  return result;
}

uint64_t sub_21C8321E8()
{
  swift_getKeyPath(byte_21CBA79F0);
  swift_getKeyPath(byte_21CBA7A18);
  sub_21CB81DB4();

  return v1;
}

uint64_t sub_21C83225C(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath(byte_21CBA79F0);
  swift_getKeyPath(byte_21CBA7A18);

  return sub_21CB81DC4();
}

BOOL sub_21C832408(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *a3;
  if (!*(*a3 + 16))
  {
    return 0;
  }

  v6 = sub_21CB10A3C(*a1, a1[1]);
  if ((v7 & 1) == 0)
  {
    return 0;
  }

  v8 = *(*(v3 + 56) + 8 * v6);
  v9 = sub_21CB81054();

  v10 = *a3;
  if (!*(*a3 + 16))
  {
    return 1;
  }

  v11 = sub_21CB10A3C(*a2, a2[1]);
  if ((v12 & 1) == 0)
  {
    return 1;
  }

  v13 = *(*(v10 + 56) + 8 * v11);
  v14 = sub_21CB81054();

  if (v9 != v14)
  {
    return v14 < v9;
  }

  PMAccount.titleForSorting.getter();
  v15 = sub_21CB85634();
  v17 = v16;

  PMAccount.titleForSorting.getter();
  v18 = sub_21CB85634();
  v20 = v19;

  if (v15 == v18 && v17 == v20)
  {

    return 0;
  }

  else
  {
    v22 = sub_21CB86344();

    return v22 & 1;
  }
}

uint64_t sub_21C832578@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  swift_getKeyPath(aP_21);
  swift_getKeyPath(a0_16);
  sub_21CB81DB4();

  swift_getKeyPath(byte_21CBA76B8);
  swift_getKeyPath(aH_30);
  sub_21CB81DB4();

  sub_21CAE8994(v15);
  v6 = (v15 + 56);
  v7 = *(v15 + 16) + 1;
  while (1)
  {
    if (!--v7)
    {

      *a3 = 0u;
      *(a3 + 16) = 0u;
      return result;
    }

    v9 = *(v6 - 3);
    v8 = *(v6 - 2);
    v10 = *(v6 - 8);
    v11 = *v6;
    if (v9 == a1 && v8 == a2)
    {
      break;
    }

    v6 += 4;
    if (sub_21CB86344())
    {
      goto LABEL_11;
    }
  }

  v9 = a1;
LABEL_11:

  v14 = v11;

  *a3 = v9;
  *(a3 + 8) = v8;
  *(a3 + 16) = v10;
  *(a3 + 24) = v14;
  return result;
}

void *sub_21C8326F0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBE60, &unk_21CB9FF40);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v19 - v3;
  v22 = type metadata accessor for PMAccount(0);
  *&v6 = MEMORY[0x28223BE20](v22).n128_u64[0];
  v21 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  if (!v8)
  {
    return MEMORY[0x277D84F90];
  }

  v20 = v5;
  v9 = (v5 + 48);
  v10 = MEMORY[0x277D84F90];
  v11 = (a1 + 40);
  do
  {
    v12 = *(v11 - 1);
    v13 = *v11;
    swift_getKeyPath(byte_21CBA7670, v6);
    swift_getKeyPath(byte_21CBA7698);

    sub_21CB81DB4();

    v15 = v23[0];
    v23[0] = v12;
    v23[1] = v13;
    MEMORY[0x28223BE20](v14);
    *(&v19 - 2) = v23;
    sub_21C968D04(sub_21C7AE738, v15, v4);

    if ((*v9)(v4, 1, v22) == 1)
    {
      sub_21C6EA794(v4, &unk_27CDEBE60, &unk_21CB9FF40);
    }

    else
    {
      sub_21C8399BC(v4, v21, type metadata accessor for PMAccount);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = sub_21CA4F1B8(0, v10[2] + 1, 1, v10);
      }

      v17 = v10[2];
      v16 = v10[3];
      if (v17 >= v16 >> 1)
      {
        v10 = sub_21CA4F1B8((v16 > 1), v17 + 1, 1, v10);
      }

      v10[2] = v17 + 1;
      sub_21C8399BC(v21, v10 + ((*(v20 + 80) + 32) & ~*(v20 + 80)) + *(v20 + 72) * v17, type metadata accessor for PMAccount);
    }

    v11 += 2;
    --v8;
  }

  while (v8);
  return v10;
}

uint64_t sub_21C8329EC(uint64_t a1)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = *(v1 + 24);
    ObjectType = swift_getObjectType();
    v6 = *(v4 + 104);

    v7 = v6(a1, sub_21C839CB8, v1, ObjectType, v4);
    swift_unknownObjectRelease();

    if (*(*(v7 + OBJC_IVAR____TtC17PasswordManagerUI23PMBulkOperationProgress_accounts) + 16) < 4uLL)
    {
    }

    else
    {
      swift_getKeyPath(byte_21CBA79F0);
      swift_getKeyPath(byte_21CBA7A18);

      return sub_21CB81DC4();
    }
  }

  return result;
}

uint64_t sub_21C832B2C(uint64_t a1)
{
  swift_getKeyPath(byte_21CBA79F0);
  swift_getKeyPath(byte_21CBA7A18);

  return sub_21CB81DC4();
}

uint64_t sub_21C832B9C(uint64_t a1)
{
  v3 = type metadata accessor for PMAccount(0);
  v55 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v50 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v56 = (&v49 - v6);
  MEMORY[0x28223BE20](v7);
  v51 = &v49 - v8;
  *&v10 = MEMORY[0x28223BE20](v9).n128_u64[0];
  v12 = (&v49 - v11);
  swift_getKeyPath(byte_21CBA7670, v10);
  swift_getKeyPath(byte_21CBA7698);
  v49 = v1;
  sub_21CB81DB4();

  result = v58;
  v54 = *(v58 + 16);
  if (v54)
  {
    v14 = 0;
    v15 = a1 + 56;
    v52 = MEMORY[0x277D84F90];
    v53 = v58;
    while (v14 < *(result + 16))
    {
      v16 = (*(v55 + 80) + 32) & ~*(v55 + 80);
      v17 = *(v55 + 72);
      sub_21C80EABC(result + v16 + v17 * v14, v12, type metadata accessor for PMAccount);
      if (*(a1 + 16) && (v18 = *v12, v19 = v12[1], sub_21CB86484(), sub_21CB854C4(), v20 = sub_21CB864D4(), v21 = -1 << *(a1 + 32), v22 = v20 & ~v21, ((*(v15 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) != 0))
      {
        v23 = ~v21;
        while (1)
        {
          v24 = (*(a1 + 48) + 16 * v22);
          v25 = *v24 == v18 && v24[1] == v19;
          if (v25 || (sub_21CB86344() & 1) != 0)
          {
            break;
          }

          v22 = (v22 + 1) & v23;
          if (((*(v15 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
          {
            goto LABEL_3;
          }
        }

        sub_21C8399BC(v12, v51, type metadata accessor for PMAccount);
        v26 = v52;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v59 = v26;
        if (isUniquelyReferenced_nonNull_native)
        {
          v28 = v26;
        }

        else
        {
          sub_21C7B0C4C(0, *(v26 + 16) + 1, 1);
          v28 = v59;
        }

        v30 = *(v28 + 16);
        v29 = *(v28 + 24);
        if (v30 >= v29 >> 1)
        {
          sub_21C7B0C4C((v29 > 1), v30 + 1, 1);
          v28 = v59;
        }

        *(v28 + 16) = v30 + 1;
        v52 = v28;
        sub_21C8399BC(v51, v28 + v16 + v30 * v17, type metadata accessor for PMAccount);
      }

      else
      {
LABEL_3:
        sub_21C7191E0(v12, type metadata accessor for PMAccount);
      }

      ++v14;
      result = v53;
      if (v14 == v54)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
    goto LABEL_47;
  }

  v52 = MEMORY[0x277D84F90];
LABEL_23:

  v59 = v52;
  swift_getKeyPath(a8_16);
  swift_getKeyPath(byte_21CBA79D0);
  sub_21CB81DB4();

  result = v58;
  v54 = *(v58 + 16);
  if (v54)
  {
    v31 = 0;
    v32 = a1 + 56;
    v53 = MEMORY[0x277D84F90];
    while (v31 < *(result + 16))
    {
      v33 = (*(v55 + 80) + 32) & ~*(v55 + 80);
      v34 = *(v55 + 72);
      v35 = result;
      sub_21C80EABC(result + v33 + v34 * v31, v56, type metadata accessor for PMAccount);
      if (*(a1 + 16) && (v36 = *v56, v37 = v56[1], sub_21CB86484(), sub_21CB854C4(), v38 = sub_21CB864D4(), v39 = -1 << *(a1 + 32), v40 = v38 & ~v39, ((*(v32 + ((v40 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v40) & 1) != 0))
      {
        v41 = ~v39;
        while (1)
        {
          v42 = (*(a1 + 48) + 16 * v40);
          v43 = *v42 == v36 && v42[1] == v37;
          if (v43 || (sub_21CB86344() & 1) != 0)
          {
            break;
          }

          v40 = (v40 + 1) & v41;
          if (((*(v32 + ((v40 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v40) & 1) == 0)
          {
            goto LABEL_25;
          }
        }

        sub_21C8399BC(v56, v50, type metadata accessor for PMAccount);
        v44 = v53;
        v45 = swift_isUniquelyReferenced_nonNull_native();
        v57 = v44;
        if (v45)
        {
          v46 = v44;
        }

        else
        {
          sub_21C7B0C4C(0, *(v44 + 16) + 1, 1);
          v46 = v57;
        }

        v48 = *(v46 + 16);
        v47 = *(v46 + 24);
        if (v48 >= v47 >> 1)
        {
          sub_21C7B0C4C((v47 > 1), v48 + 1, 1);
          v46 = v57;
        }

        *(v46 + 16) = v48 + 1;
        v53 = v46;
        sub_21C8399BC(v50, v46 + v33 + v48 * v34, type metadata accessor for PMAccount);
      }

      else
      {
LABEL_25:
        sub_21C7191E0(v56, type metadata accessor for PMAccount);
      }

      ++v31;
      result = v35;
      if (v31 == v54)
      {
        goto LABEL_45;
      }
    }

LABEL_47:
    __break(1u);
    return result;
  }

  v53 = MEMORY[0x277D84F90];
LABEL_45:

  sub_21CAE8CA8(v53);
  sub_21C8329EC(v59);
}

uint64_t sub_21C833194(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = *(v3 + 24);
    ObjectType = swift_getObjectType();
    v10 = swift_allocObject();
    v10[2] = a2;
    v10[3] = a3;
    v10[4] = v3;
    v11 = *(v8 + 112);

    v12 = v11(a1, sub_21C839CF0, v10, ObjectType, v8);
    swift_unknownObjectRelease();

    if (*(*(v12 + OBJC_IVAR____TtC17PasswordManagerUI23PMBulkOperationProgress_accounts) + 16) < 4uLL)
    {
    }

    else
    {
      swift_getKeyPath(byte_21CBA79F0);
      swift_getKeyPath(byte_21CBA7A18);

      return sub_21CB81DC4();
    }
  }

  return result;
}

uint64_t sub_21C833310(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = *(v3 + 24);
    ObjectType = swift_getObjectType();
    v10 = swift_allocObject();
    v10[2] = a2;
    v10[3] = a3;
    v10[4] = v3;
    v11 = *(v8 + 120);

    v12 = v11(a1, sub_21C839CC0, v10, ObjectType, v8);
    swift_unknownObjectRelease();

    if (*(*(v12 + OBJC_IVAR____TtC17PasswordManagerUI23PMBulkOperationProgress_accounts) + 16) < 4uLL)
    {
    }

    else
    {
      swift_getKeyPath(byte_21CBA79F0);
      swift_getKeyPath(byte_21CBA7A18);

      return sub_21CB81DC4();
    }
  }

  return result;
}

uint64_t sub_21C83348C(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4)
{
  a2(a1);
  swift_getKeyPath(byte_21CBA79F0);
  swift_getKeyPath(byte_21CBA7A18);

  return sub_21CB81DC4();
}

uint64_t sub_21C833508(uint64_t a1)
{
  v2[14] = a1;
  v2[15] = v1;
  sub_21CB858B4();
  v2[16] = sub_21CB858A4();
  v4 = sub_21CB85874();
  v2[17] = v4;
  v2[18] = v3;

  return MEMORY[0x2822009F8](sub_21C8335A0, v4, v3);
}

uint64_t sub_21C8335A0()
{
  v1 = *(v0 + 112);
  swift_getKeyPath(aP_21);
  swift_getKeyPath(a0_16);
  sub_21CB81DB4();

  v2 = *(v0 + 80);
  swift_getKeyPath(byte_21CBA76B8);
  swift_getKeyPath(aH_30);
  sub_21CB81DB4();

  v3 = *(v0 + 88);
  v4 = *(v1 + 16);
  *(v0 + 152) = v4;
  if (!v4)
  {
LABEL_35:
    v39 = *(v0 + 112);

    swift_getKeyPath(aP_21);
    swift_getKeyPath(a0_16);
    *(v0 + 96) = v2;

    sub_21CB81DC4();
    swift_getKeyPath(byte_21CBA76B8);
    swift_getKeyPath(aH_30);
    *(v0 + 104) = v3;

    sub_21CB81DC4();
    sub_21C834204(v39, 1);

    v40 = *(v0 + 8);

    return v40();
  }

  v5 = 0;
  while (1)
  {
    *(v0 + 160) = v5;
    v6 = *(v0 + 112) + 32 * v5;
    v8 = *(v6 + 32);
    v7 = *(v6 + 40);
    *(v0 + 168) = v7;
    v9 = *(v6 + 56);
    *(v0 + 176) = v9;
    if ((*(v6 + 48) & 1) == 0)
    {
      break;
    }

LABEL_3:
    if (++v5 == v4)
    {
      goto LABEL_35;
    }
  }

  *(v0 + 216) = 1;
  swift_bridgeObjectRetain_n();
  v10 = v9;
  v11 = [v10 severity];
  if (v11 == 1)
  {
    v20 = 0;
    v21 = *(v2 + 16);
    v22 = (v2 + 40);
    while (v21 != v20)
    {
      v15 = v20;
      if (*(v22 - 1) != v8 || *v22 != v7)
      {
        ++v20;
        v22 += 4;
        if ((sub_21CB86344() & 1) == 0)
        {
          continue;
        }
      }

      v24 = v10;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_21CAA10B4(v2);
        v2 = result;
      }

      v19 = v2;
      if (v15 < *(v2 + 16))
      {
LABEL_28:
        v25 = v19 + 32 * v15;
        v26 = *(v25 + 56);
        *(v25 + 32) = v8;
        *(v25 + 40) = v7;
        *(v25 + 48) = 1;
        *(v25 + 56) = v10;

        break;
      }

LABEL_41:
      __break(1u);
      return result;
    }
  }

  else if (v11 == 2)
  {
    v12 = 0;
    v13 = *(v3 + 16);
    v14 = (v3 + 40);
    while (v13 != v12)
    {
      v15 = v12;
      if (*(v14 - 1) != v8 || *v14 != v7)
      {
        ++v12;
        v14 += 4;
        if ((sub_21CB86344() & 1) == 0)
        {
          continue;
        }
      }

      v17 = v10;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_21CAA10B4(v3);
        v3 = result;
      }

      v19 = v3;
      if (v15 >= *(v3 + 16))
      {
        __break(1u);
        goto LABEL_41;
      }

      goto LABEL_28;
    }
  }

  *(v0 + 184) = v3;
  *(v0 + 192) = v2;
  v45 = *(v0 + 216);
  KeyPath = swift_getKeyPath(aP_22, v44);
  swift_getKeyPath(a0_17);

  v28 = v10;
  v44 = KeyPath;
  v29 = sub_21CB81DA4();
  v31 = v30;
  v32 = *v30;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v31 = v32;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v32 = sub_21CA4F1E0(0, *(v32 + 2) + 1, 1, v32);
    *v31 = v32;
  }

  v35 = *(v32 + 2);
  v34 = *(v32 + 3);
  if (v35 >= v34 >> 1)
  {
    v32 = sub_21CA4F1E0((v34 > 1), v35 + 1, 1, v32);
    *v31 = v32;
  }

  *(v32 + 2) = v35 + 1;
  v36 = &v32[32 * v35];
  *(v36 + 4) = v8;
  *(v36 + 5) = v7;
  v36[48] = v45;
  *(v36 + 7) = v28;
  v29();

  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 200) = Strong;
  if (!Strong)
  {

    v38 = *(v0 + 176);

    v3 = *(v0 + 184);
    v2 = *(v0 + 192);
    v4 = *(v0 + 152);
    v5 = *(v0 + 160);
    goto LABEL_3;
  }

  v41 = *(*(v0 + 120) + 24);
  ObjectType = swift_getObjectType();
  *(v0 + 48) = v8;
  *(v0 + 56) = v7;
  *(v0 + 64) = 0;
  *(v0 + 72) = v28;
  v46 = (*(v41 + 128) + **(v41 + 128));
  v43 = swift_task_alloc();
  *(v0 + 208) = v43;
  *v43 = v0;
  v43[1] = sub_21C833B78;

  return v46(v0 + 48, ObjectType, v41);
}

uint64_t sub_21C833B78()
{
  v1 = *v0;

  swift_unknownObjectRelease();
  v2 = *(v1 + 144);
  v3 = *(v1 + 136);

  return MEMORY[0x2822009F8](sub_21C833CBC, v3, v2);
}

uint64_t sub_21C833CBC()
{
  v1 = *(v0 + 176);

  while (2)
  {
    v2 = *(v0 + 176);

    v4 = *(v0 + 184);
    v3 = *(v0 + 192);
    v5 = *(v0 + 152);
    v6 = *(v0 + 160);
    v7 = v6 + 1;
    v8 = 32 * v6;
    do
    {
      if (v5 == v7)
      {
        v39 = *(v0 + 112);

        swift_getKeyPath(aP_21);
        swift_getKeyPath(a0_16);
        *(v0 + 96) = v3;

        sub_21CB81DC4();
        swift_getKeyPath(byte_21CBA76B8);
        swift_getKeyPath(aH_30);
        *(v0 + 104) = v4;

        sub_21CB81DC4();
        sub_21C834204(v39, 1);

        v40 = *(v0 + 8);

        return v40();
      }

      *(v0 + 160) = v7;
      v9 = *(v0 + 112) + v8;
      v11 = *(v9 + 64);
      v10 = *(v9 + 72);
      *(v0 + 168) = v10;
      v12 = *(v9 + 88);
      *(v0 + 176) = v12;
      ++v7;
      v8 += 32;
    }

    while ((*(v9 + 80) & 1) != 0);
    *(v0 + 216) = 1;
    swift_bridgeObjectRetain_n();
    v13 = v12;
    v14 = [v13 severity];
    if (v14 == 1)
    {
      v23 = 0;
      v24 = *(v3 + 16);
      v25 = (v3 + 40);
      while (v24 != v23)
      {
        v18 = v23;
        if (*(v25 - 1) != v11 || *v25 != v10)
        {
          ++v23;
          v25 += 4;
          if ((sub_21CB86344() & 1) == 0)
          {
            continue;
          }
        }

        v27 = v13;
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_21CAA10B4(v3);
          v3 = result;
        }

        v22 = v3;
        if (v18 < *(v3 + 16))
        {
LABEL_28:
          v28 = v22 + 32 * v18;
          v29 = *(v28 + 56);
          *(v28 + 32) = v11;
          *(v28 + 40) = v10;
          *(v28 + 48) = 1;
          *(v28 + 56) = v13;

          break;
        }

        __break(1u);
LABEL_42:
        __break(1u);
        return result;
      }
    }

    else if (v14 == 2)
    {
      v15 = 0;
      v16 = *(v4 + 16);
      v17 = (v4 + 40);
      while (v16 != v15)
      {
        v18 = v15;
        if (*(v17 - 1) != v11 || *v17 != v10)
        {
          ++v15;
          v17 += 4;
          if ((sub_21CB86344() & 1) == 0)
          {
            continue;
          }
        }

        v20 = v13;
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_21CAA10B4(v4);
          v4 = result;
        }

        v22 = v4;
        if (v18 < *(v4 + 16))
        {
          goto LABEL_28;
        }

        goto LABEL_42;
      }
    }

    *(v0 + 184) = v4;
    *(v0 + 192) = v3;
    v45 = *(v0 + 216);
    swift_getKeyPath(aP_22, v44);
    swift_getKeyPath(a0_17);

    v30 = v13;
    v44 = sub_21CB81DA4();
    v32 = v31;
    v33 = *v31;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v32 = v33;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v33 = sub_21CA4F1E0(0, *(v33 + 2) + 1, 1, v33);
      *v32 = v33;
    }

    v36 = *(v33 + 2);
    v35 = *(v33 + 3);
    if (v36 >= v35 >> 1)
    {
      v33 = sub_21CA4F1E0((v35 > 1), v36 + 1, 1, v33);
      *v32 = v33;
    }

    *(v33 + 2) = v36 + 1;
    v37 = &v33[32 * v36];
    *(v37 + 4) = v11;
    *(v37 + 5) = v10;
    v37[48] = v45;
    *(v37 + 7) = v30;
    v44();

    Strong = swift_unknownObjectWeakLoadStrong();
    *(v0 + 200) = Strong;
    if (!Strong)
    {

      continue;
    }

    break;
  }

  v41 = *(*(v0 + 120) + 24);
  ObjectType = swift_getObjectType();
  *(v0 + 48) = v11;
  *(v0 + 56) = v10;
  *(v0 + 64) = 0;
  *(v0 + 72) = v30;
  v46 = (*(v41 + 128) + **(v41 + 128));
  v43 = swift_task_alloc();
  *(v0 + 208) = v43;
  *v43 = v0;
  v43[1] = sub_21C833B78;

  return v46(v0 + 48, ObjectType, v41);
}

uint64_t sub_21C834204(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAF58, &unk_21CBA0980);
  MEMORY[0x28223BE20](v6 - 8);
  v139 = v128 - v7;
  v153 = type metadata accessor for PMAccount.MockData(0);
  MEMORY[0x28223BE20](v153);
  v152 = v128 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v163 = type metadata accessor for PMAccount.Storage(0);
  MEMORY[0x28223BE20](v163);
  v138 = (v128 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10);
  v133 = (v128 - v11);
  MEMORY[0x28223BE20](v12);
  v14 = (v128 - v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = v128 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v132 = v128 - v19;
  MEMORY[0x28223BE20](v20);
  v145 = v128 - v21;
  MEMORY[0x28223BE20](v22);
  v144 = v128 - v23;
  v158 = sub_21CB85C44();
  v24 = *(v158 - 8);
  MEMORY[0x28223BE20](v158);
  v137 = v128 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v130 = v128 - v27;
  MEMORY[0x28223BE20](v28);
  v150 = v128 - v29;
  v166 = type metadata accessor for PMAccount(0);
  v164 = *(v166 - 8);
  MEMORY[0x28223BE20](v166);
  v151 = v128 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v162 = v128 - v32;
  MEMORY[0x28223BE20](v33);
  v131 = v128 - v34;
  MEMORY[0x28223BE20](v35);
  v143 = v128 - v36;
  *&v38 = MEMORY[0x28223BE20](v37).n128_u64[0];
  v40 = (v128 - v39);
  swift_getKeyPath(byte_21CBA7670, v38);
  swift_getKeyPath(byte_21CBA7698);
  v128[1] = v3;
  sub_21CB81DB4();

  v41 = v167;

  v159 = sub_21CB12B08(MEMORY[0x277D84F90]);
  v42 = v41[2];

  v154 = v42;
  if (v42)
  {
    v146 = 0;
    v134 = 0;
    v43 = 0;
    v44 = *(a1 + 16);
    v147 = (v24 + 48);
    v136 = (v24 + 32);
    v129 = (v24 + 16);
    v135 = (v24 + 8);
    v140 = a2 & 1;
    v148 = v44 + 1;
    v149 = (a1 + 56);
    v142 = v14;
    v141 = v17;
    while (v43 < v41[2])
    {
      v165 = (*(v164 + 80) + 32) & ~*(v164 + 80);
      v157 = *(v164 + 72);
      v160 = v157 * v43;
      v161 = v43 + 1;
      sub_21C80EABC(v41 + v165 + v157 * v43, v40, type metadata accessor for PMAccount);
      v46 = v148;
      v47 = v149;
      while (--v46)
      {
        v48 = *(v47 - 3);
        v49 = *(v47 - 2);
        v50 = *v47;
        if (v48 != *v40 || v49 != v40[1])
        {
          v47 += 4;
          if ((sub_21CB86344() & 1) == 0)
          {
            continue;
          }
        }

        v52 = (v40 + *(v166 + 28));
        v53 = *v52;
        v54 = v52[1];
        v156 = v41;
        v55 = v52[2];
        v56 = v52[3];
        swift_bridgeObjectRetain_n();
        v155 = v50;
        v57 = v55;
        v41 = v156;
        sub_21C7D33F0(v53, v54, v57, v56);
        *v52 = v48;
        v52[1] = v49;
        v52[2] = v140;
        v52[3] = v50;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v41 = sub_21CAA108C(v41);
        }

        v58 = v142;
        v59 = v158;
        v17 = v141;
        if (v43 >= v41[2])
        {
          goto LABEL_70;
        }

        sub_21C839958(v40, v41 + v165 + v160);
        sub_21C80EABC(v40 + *(v166 + 24), v58, type metadata accessor for PMAccount.Storage);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v60 = v152;
          sub_21C8399BC(v58, v152, type metadata accessor for PMAccount.MockData);
          v61 = v145;
          sub_21C6EDBAC(v60 + *(v153 + 72), v145, &unk_27CDF20B0, &unk_21CBA0090);
          v62 = v60;
          v63 = v61;
          sub_21C7191E0(v62, type metadata accessor for PMAccount.MockData);
        }

        else
        {
          v67 = *v58;
          v63 = v145;
          sub_21CB85B94();
        }

        v68 = v63;
        v69 = v144;
        sub_21C7C3490(v68, v144);
        if ((*v147)(v69, 1, v59) != 1)
        {
          v70 = v41;
          v71 = v150;
          (*v136)(v150, v69, v59);
          sub_21C80EABC(v40, v143, type metadata accessor for PMAccount);
          sub_21C71B710(v146, 0);
          v72 = v159;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v167 = v72;
          v75 = sub_21CB10A54(v71);
          v76 = v72[2];
          v77 = (v74 & 1) == 0;
          v78 = v76 + v77;
          if (__OFADD__(v76, v77))
          {
            goto LABEL_71;
          }

          v79 = v74;
          if (v72[3] >= v78)
          {
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_21C8D58B0();
            }
          }

          else
          {
            sub_21C8D1B3C(v78, isUniquelyReferenced_nonNull_native);
            v80 = sub_21CB10A54(v150);
            if ((v79 & 1) != (v81 & 1))
            {
              goto LABEL_73;
            }

            v75 = v80;
          }

          v95 = v167;
          v159 = v167;
          if ((v79 & 1) == 0)
          {
            v96 = v130;
            (*v129)(v130, v150, v158);
            sub_21C8D5124(v75, v96, MEMORY[0x277D84F90], v159);
            v95 = v159;
          }

          v97 = v95[7];
          v98 = *(v97 + 8 * v75);
          v99 = swift_isUniquelyReferenced_nonNull_native();
          *(v97 + 8 * v75) = v98;
          if ((v99 & 1) == 0)
          {
            v98 = sub_21CA4F1B8(0, v98[2] + 1, 1, v98);
            *(v97 + 8 * v75) = v98;
          }

          v101 = v98[2];
          v100 = v98[3];
          if (v101 >= v100 >> 1)
          {
            *(v97 + 8 * v75) = sub_21CA4F1B8((v100 > 1), v101 + 1, 1, v98);
          }

          v102 = v155;

          (*v135)(v150, v158);

          v103 = *(v97 + 8 * v75);
          *(v103 + 16) = v101 + 1;
          sub_21C8399BC(v143, v103 + v165 + v101 * v157, type metadata accessor for PMAccount);
          v146 = sub_21C839CEC;
          v41 = v70;
          goto LABEL_5;
        }

        v45 = v155;

        swift_bridgeObjectRelease_n();
LABEL_4:
        sub_21C6EA794(v69, &unk_27CDF20B0, &unk_21CBA0090);
        goto LABEL_5;
      }

      v64 = v133;
      sub_21C80EABC(v40 + *(v166 + 24), v133, type metadata accessor for PMAccount.Storage);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v65 = v64;
        v66 = v152;
        sub_21C8399BC(v65, v152, type metadata accessor for PMAccount.MockData);
        sub_21C6EDBAC(v66 + *(v153 + 72), v17, &unk_27CDF20B0, &unk_21CBA0090);
        sub_21C7191E0(v66, type metadata accessor for PMAccount.MockData);
      }

      else
      {
        v82 = *v64;
        sub_21CB85B94();
      }

      v83 = v158;
      v69 = v132;
      sub_21C7C3490(v17, v132);
      if ((*v147)(v69, 1, v83) == 1)
      {
        goto LABEL_4;
      }

      v84 = v137;
      (*v136)(v137, v69, v83);
      sub_21C80EABC(v40, v131, type metadata accessor for PMAccount);
      sub_21C71B710(v134, 0);
      v85 = v159;
      v86 = swift_isUniquelyReferenced_nonNull_native();
      v167 = v85;
      v88 = sub_21CB10A54(v84);
      v89 = v85[2];
      v90 = (v87 & 1) == 0;
      v91 = v89 + v90;
      if (__OFADD__(v89, v90))
      {
        goto LABEL_72;
      }

      v92 = v87;
      if (v85[3] >= v91)
      {
        if ((v86 & 1) == 0)
        {
          sub_21C8D58B0();
        }
      }

      else
      {
        sub_21C8D1B3C(v91, v86);
        v93 = sub_21CB10A54(v137);
        if ((v92 & 1) != (v94 & 1))
        {
          goto LABEL_74;
        }

        v88 = v93;
      }

      v104 = v167;
      v159 = v167;
      if ((v92 & 1) == 0)
      {
        v105 = v130;
        (*v129)(v130, v137, v83);
        sub_21C8D5124(v88, v105, MEMORY[0x277D84F90], v159);
        v104 = v159;
      }

      v106 = v104[7];
      v107 = *(v106 + 8 * v88);
      v108 = swift_isUniquelyReferenced_nonNull_native();
      *(v106 + 8 * v88) = v107;
      if ((v108 & 1) == 0)
      {
        v107 = sub_21CA4F1B8(0, v107[2] + 1, 1, v107);
        *(v106 + 8 * v88) = v107;
      }

      v110 = v107[2];
      v109 = v107[3];
      if (v110 >= v109 >> 1)
      {
        *(v106 + 8 * v88) = sub_21CA4F1B8((v109 > 1), v110 + 1, 1, v107);
      }

      (*v135)(v137, v83);
      v111 = *(v106 + 8 * v88);
      *(v111 + 16) = v110 + 1;
      sub_21C8399BC(v131, v111 + v165 + v110 * v157, type metadata accessor for PMAccount);
      v134 = sub_21C839CEC;
LABEL_5:
      sub_21C7191E0(v40, type metadata accessor for PMAccount);
      v43 = v161;
      if (v161 == v154)
      {
        goto LABEL_52;
      }
    }

    __break(1u);
  }

  else
  {
    v146 = 0;
    v134 = 0;
LABEL_52:
    swift_getKeyPath(byte_21CBA7670);
    swift_getKeyPath(byte_21CBA7698);
    v167 = v41;
    v156 = v41;

    sub_21CB81DC4();
    swift_getKeyPath(byte_21CBA7670);
    swift_getKeyPath(byte_21CBA7698);
    sub_21CB81DB4();

    v112 = v167;
    v113 = v167[2];
    if (!v113)
    {
      v115 = MEMORY[0x277D84F90];
LABEL_67:

      swift_getKeyPath(byte_21CBA7888);
      swift_getKeyPath(byte_21CBA78B0);
      v167 = v115;

      sub_21CB81DC4();
      swift_getKeyPath(byte_21CBA78D0);
      swift_getKeyPath(byte_21CBA78F8);
      v167 = v159;

      sub_21CB81DC4();

      sub_21C71B710(v146, 0);
      return sub_21C71B710(v134, 0);
    }

    v114 = 0;
    v115 = MEMORY[0x277D84F90];
    v116 = v139;
    v117 = v138;
    while (v114 < v112[2])
    {
      v118 = (*(v164 + 80) + 32) & ~*(v164 + 80);
      v119 = *(v164 + 72);
      v120 = v162;
      sub_21C80EABC(v112 + v118 + v119 * v114, v162, type metadata accessor for PMAccount);
      sub_21C80EABC(v120 + *(v166 + 24), v117, type metadata accessor for PMAccount.Storage);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v121 = v152;
        sub_21C8399BC(v117, v152, type metadata accessor for PMAccount.MockData);
        sub_21C6EDBAC(v121 + *(v153 + 60), v116, &qword_27CDEAF58, &unk_21CBA0980);
        sub_21C7191E0(v121, type metadata accessor for PMAccount.MockData);
      }

      else
      {
        v122 = *v117;
        sub_21CB85BD4();
      }

      v123 = sub_21CB85BB4();
      if ((*(*(v123 - 8) + 48))(v116, 1, v123) == 1)
      {
        sub_21C7191E0(v162, type metadata accessor for PMAccount);
        sub_21C6EA794(v116, &qword_27CDEAF58, &unk_21CBA0980);
      }

      else
      {
        sub_21C6EA794(v116, &qword_27CDEAF58, &unk_21CBA0980);
        sub_21C8399BC(v162, v151, type metadata accessor for PMAccount);
        v124 = swift_isUniquelyReferenced_nonNull_native();
        v167 = v115;
        if ((v124 & 1) == 0)
        {
          sub_21C7B0C4C(0, v115[2] + 1, 1);
          v115 = v167;
        }

        v126 = v115[2];
        v125 = v115[3];
        if (v126 >= v125 >> 1)
        {
          sub_21C7B0C4C((v125 > 1), v126 + 1, 1);
          v115 = v167;
        }

        v115[2] = v126 + 1;
        sub_21C8399BC(v151, v115 + v118 + v126 * v119, type metadata accessor for PMAccount);
        v116 = v139;
        v117 = v138;
      }

      if (v113 == ++v114)
      {
        goto LABEL_67;
      }
    }
  }

  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:
  sub_21CB863B4();
  __break(1u);
LABEL_74:
  result = sub_21CB863B4();
  __break(1u);
  return result;
}

uint64_t sub_21C83532C(uint64_t a1)
{
  swift_getKeyPath(aP_21);
  swift_getKeyPath(a0_16);
  sub_21CB81DB4();

  v43 = v49[0];
  swift_getKeyPath(byte_21CBA76B8);
  swift_getKeyPath(aH_30);
  sub_21CB81DB4();

  v41 = a1;
  v42 = v49[0];
  v3 = *(a1 + 16);
  if (!v3)
  {
LABEL_45:
    swift_getKeyPath(aP_21);
    swift_getKeyPath(a0_16);
    v49[0] = v43;

    sub_21CB81DC4();
    swift_getKeyPath(byte_21CBA76B8);
    swift_getKeyPath(aH_30);
    v49[0] = v42;

    sub_21CB81DC4();
    sub_21C834204(v41, 0);
  }

  v4 = 0;
  v5 = a1 + 32;
  v45 = a1 + 32;
  v46 = *(a1 + 16);
  v44 = v1;
  while (1)
  {
    v8 = v5 + 32 * v4;
    if (*(v8 + 16) != 1)
    {
      goto LABEL_6;
    }

    v9 = *v8;
    v10 = *(v8 + 8);
    v11 = *(v8 + 24);
    swift_bridgeObjectRetain_n();
    v12 = v11;
    v13 = [v12 severity];
    v48 = v4;
    if (v13 == 1)
    {
      v22 = 0;
      v23 = *(v43 + 16);
      v24 = (v43 + 40);
      while (v23 != v22)
      {
        v17 = v22;
        if (*(v24 - 1) != v9 || *v24 != v10)
        {
          ++v22;
          v24 += 4;
          if ((sub_21CB86344() & 1) == 0)
          {
            continue;
          }
        }

        v26 = v12;
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_21CAA10B4(v43);
          v43 = result;
        }

        v21 = v43;
        if (v17 < *(v43 + 16))
        {
LABEL_32:
          v27 = v21 + 32 * v17;
          v28 = *(v27 + 56);
          *(v27 + 32) = v9;
          *(v27 + 40) = v10;
          *(v27 + 48) = 0;
          *(v27 + 56) = v12;

          break;
        }

        goto LABEL_51;
      }
    }

    else if (v13 == 2)
    {
      v14 = 0;
      v15 = *(v42 + 16);
      v16 = (v42 + 40);
      while (v15 != v14)
      {
        v17 = v14;
        if (*(v16 - 1) != v9 || *v16 != v10)
        {
          ++v14;
          v16 += 4;
          if ((sub_21CB86344() & 1) == 0)
          {
            continue;
          }
        }

        v19 = v12;
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_21CAA10B4(v42);
          v42 = result;
        }

        v21 = v42;
        if (v17 < *(v42 + 16))
        {
          goto LABEL_32;
        }

        goto LABEL_50;
      }
    }

    swift_getKeyPath(aP_22);
    swift_getKeyPath(a0_17);

    v29 = v12;
    v47 = sub_21CB81DA4();
    v31 = v30;
    v32 = sub_21C839AC4(v30, v9, v10);

    v33 = *v31;
    v34 = *(*v31 + 16);
    if (v34 < v32)
    {
      break;
    }

    if (v32 < 0)
    {
      goto LABEL_47;
    }

    v35 = v32 - v34;
    if (__OFADD__(v34, v32 - v34))
    {
      goto LABEL_48;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v31 = v33;
    if (!isUniquelyReferenced_nonNull_native || v32 > *(v33 + 3) >> 1)
    {
      if (*(v33 + 2) <= v32)
      {
        v37 = v32;
      }

      else
      {
        v37 = *(v33 + 2);
      }

      v33 = sub_21CA4F1E0(isUniquelyReferenced_nonNull_native, v37, 1, v33);
      *v31 = v33;
    }

    swift_arrayDestroy();
    if (v34 != v32)
    {
      result = memmove(&v33[32 * v32 + 32], &v33[32 * v34 + 32], 32 * (*(v33 + 2) - v34));
      v38 = *(v33 + 2);
      v39 = __OFADD__(v38, v35);
      v40 = v38 + v35;
      if (v39)
      {
        goto LABEL_49;
      }

      *(v33 + 2) = v40;
    }

    *v31 = v33;
    v47(v49, 0);

    if (swift_unknownObjectWeakLoadStrong())
    {
      v6 = *(v44 + 24);
      ObjectType = swift_getObjectType();
      v49[0] = v9;
      v49[1] = v10;
      v50 = 1;
      v51 = v29;
      (*(v6 + 136))(v49, ObjectType, v6);

      swift_bridgeObjectRelease_n();
      swift_unknownObjectRelease();
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }

    v5 = v45;
    v3 = v46;
    v4 = v48;
LABEL_6:
    if (++v4 == v3)
    {
      goto LABEL_45;
    }
  }

  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
  return result;
}

uint64_t sub_21C835884(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = v3;
  *(v4 + 88) = a3;
  *(v4 + 16) = a1;
  sub_21CB858B4();
  *(v4 + 40) = sub_21CB858A4();
  v6 = sub_21CB85874();
  *(v4 + 48) = v6;
  *(v4 + 56) = v5;

  return MEMORY[0x2822009F8](sub_21C835924, v6, v5);
}

uint64_t sub_21C835924()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 64) = Strong;
  if (Strong)
  {
    v2 = *(*(v0 + 32) + 24);
    ObjectType = swift_getObjectType();
    v10 = (*(v2 + 168) + **(v2 + 168));
    v4 = swift_task_alloc();
    *(v0 + 72) = v4;
    *v4 = v0;
    v4[1] = sub_21C835AA8;
    v5 = *(v0 + 88);
    v7 = *(v0 + 16);
    v6 = *(v0 + 24);

    return v10(v7, v6, v5, ObjectType, v2);
  }

  else
  {

    v9 = *(v0 + 8);

    return v9();
  }
}

uint64_t sub_21C835AA8()
{
  v2 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = *(v2 + 48);
    v4 = *(v2 + 56);
    v5 = sub_21C835C28;
  }

  else
  {
    swift_unknownObjectRelease();
    v3 = *(v2 + 48);
    v4 = *(v2 + 56);
    v5 = sub_21C835BC4;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_21C835BC4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21C835C28()
{

  swift_unknownObjectRelease();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21C835C98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v10 = *(v4 + 24);
    ObjectType = swift_getObjectType();
    v11 = swift_allocObject();
    v11[2] = a3;
    v11[3] = a4;
    v11[4] = v4;
    v12 = *(v10 + 176);
    sub_21C7335A8(a3, a4);

    v13 = v12(a1, a2, sub_21C839CE0, v11, ObjectType, v10);
    swift_unknownObjectRelease();

    if (*(*(v13 + OBJC_IVAR____TtC17PasswordManagerUI23PMBulkOperationProgress_accounts) + 16) < 4uLL)
    {
    }

    else
    {
      swift_getKeyPath(byte_21CBA79F0);
      swift_getKeyPath(byte_21CBA7A18);

      return sub_21CB81DC4();
    }
  }

  return result;
}

uint64_t sub_21C835E20(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t), uint64_t a4, uint64_t a5)
{
  if (a3)
  {
    a3(a1, a2);
  }

  swift_getKeyPath(byte_21CBA79F0, a2);
  swift_getKeyPath(byte_21CBA7A18);

  return sub_21CB81DC4();
}

uint64_t PMAccountsState.deinit()
{
  sub_21C7B0A14(v0 + 16);

  v1 = OBJC_IVAR____TtC17PasswordManagerUI15PMAccountsState__loadedAccounts;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC78, &qword_21CBA00C0);
  v15 = *(*(v2 - 8) + 8);
  v15(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC17PasswordManagerUI15PMAccountsState__accounts;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC00, &qword_21CB9FF10);
  v5 = *(*(v4 - 8) + 8);
  v5(v0 + v3, v4);
  v5(v0 + OBJC_IVAR____TtC17PasswordManagerUI15PMAccountsState__accountsInPersonalKeychain, v4);
  v6 = OBJC_IVAR____TtC17PasswordManagerUI15PMAccountsState__accountsByGroupID;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECD78, &qword_21CBA5730);
  v8 = *(*(v7 - 8) + 8);
  v8(v0 + v6, v7);
  v9 = OBJC_IVAR____TtC17PasswordManagerUI15PMAccountsState__inProgressBulkOperation;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED780, &qword_21CBA74C8);
  (*(*(v10 - 8) + 8))(v0 + v9, v10);
  v5(v0 + OBJC_IVAR____TtC17PasswordManagerUI15PMAccountsState__accountsWithNeverSaveMarker, v4);
  v5(v0 + OBJC_IVAR____TtC17PasswordManagerUI15PMAccountsState__accountsWithPasskeys, v4);
  v5(v0 + OBJC_IVAR____TtC17PasswordManagerUI15PMAccountsState__accountsWithTOTPGenerators, v4);
  v15(v0 + OBJC_IVAR____TtC17PasswordManagerUI15PMAccountsState__showHiddenSecurityRecommendations, v2);
  v5(v0 + OBJC_IVAR____TtC17PasswordManagerUI15PMAccountsState__recentlyDeletedAccounts, v4);
  v5(v0 + OBJC_IVAR____TtC17PasswordManagerUI15PMAccountsState__recentlyDeletedAccountsInPersonalKeychain, v4);
  v8(v0 + OBJC_IVAR____TtC17PasswordManagerUI15PMAccountsState__recentlyDeletedAccountsByGroupID, v7);
  v15(v0 + OBJC_IVAR____TtC17PasswordManagerUI15PMAccountsState__hasUnacknowledgedHighPriorityWarnings, v2);
  v11 = OBJC_IVAR____TtC17PasswordManagerUI15PMAccountsState__highPrioritySecurityRecommendations;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED7D0, &qword_21CBA74D0);
  v13 = *(*(v12 - 8) + 8);
  v13(v0 + v11, v12);
  v13(v0 + OBJC_IVAR____TtC17PasswordManagerUI15PMAccountsState__standardPrioritySecurityRecommendations, v12);
  v13(v0 + OBJC_IVAR____TtC17PasswordManagerUI15PMAccountsState__hiddenSecurityRecommendations, v12);
  v15(v0 + OBJC_IVAR____TtC17PasswordManagerUI15PMAccountsState__loadedSecurityRecommendations, v2);
  return v0;
}

uint64_t PMAccountsState.__deallocating_deinit()
{
  PMAccountsState.deinit();

  return swift_deallocClassInstance();
}

void sub_21C836240(void *a1, uint64_t *a2)
{
  v4 = *(type metadata accessor for PMAccount(0) - 8);
  v5 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = sub_21C715B40(v5);
  }

  v6 = v5[2];
  v7[0] = v5 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v7[1] = v6;
  sub_21C836370(v7, a2);
  *a1 = v5;
}

void sub_21C836370(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 8);
  v5 = sub_21CB862E4();
  if (v5 < v4)
  {
    if (v4 >= -1)
    {
      v6 = v5;
      v7 = v4 / 2;
      if (v4 <= 1)
      {
        v8 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for PMAccount(0);
        v8 = sub_21CB85844();
        *(v8 + 16) = v7;
      }

      v9 = *(type metadata accessor for PMAccount(0) - 8);
      v10[0] = (v8 + ((*(v9 + 80) + 32) & ~*(v9 + 80)));
      v10[1] = v7;
      sub_21C836B48(v10, v11, a1, v6, a2);
      *(v8 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {
    sub_21C8364A8(0, v4, 1, a1, a2);
  }
}

void sub_21C8364A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v67 = type metadata accessor for PMAccount.MockData(0);
  MEMORY[0x28223BE20](v67);
  v60 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v59 = &v58 - v12;
  v74 = type metadata accessor for PMAccount.Storage(0);
  MEMORY[0x28223BE20](v74);
  v66 = (&v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v14);
  v65 = (&v58 - v15);
  v16 = type metadata accessor for PMAccount(0);
  MEMORY[0x28223BE20](v16);
  v78 = &v58 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = (&v58 - v19);
  MEMORY[0x28223BE20](v21);
  v24 = (&v58 - v23);
  v62 = a2;
  if (a3 != a2)
  {
    v25 = *a4;
    v26 = *(v22 + 72);
    v27 = *a4 + v26 * (a3 - 1);
    v76 = -v26;
    v77 = v25;
    v28 = a1 - a3;
    v61 = v26;
    v29 = v25 + v26 * a3;
    v63 = (&v58 - v23);
    v64 = a5;
    v75 = v16;
LABEL_7:
    v70 = v27;
    v71 = a3;
    v68 = v29;
    v69 = v28;
    while (1)
    {
      sub_21C80EABC(v29, v24, type metadata accessor for PMAccount);
      sub_21C80EABC(v27, v20, type metadata accessor for PMAccount);
      v30 = *a5;
      if (!*(*a5 + 16))
      {
        goto LABEL_5;
      }

      v31 = sub_21CB10A3C(*v24, v24[1]);
      if ((v32 & 1) == 0)
      {
        goto LABEL_5;
      }

      v33 = *(*(v30 + 56) + 8 * v31);
      v34 = sub_21CB81054();

      v35 = *a5;
      if (*(*a5 + 16) && (v36 = sub_21CB10A3C(*v20, v20[1]), (v37 & 1) != 0))
      {
        v38 = *(*(v35 + 56) + 8 * v36);
        v39 = sub_21CB81054();

        if (v34 == v39)
        {
          v40 = v75;
          v41 = v65;
          sub_21C80EABC(v24 + *(v75 + 24), v65, type metadata accessor for PMAccount.Storage);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v42 = v41;
            v43 = v59;
            sub_21C8399BC(v42, v59, type metadata accessor for PMAccount.MockData);
            if (!*(v43 + *(v67 + 44) + 8))
            {
            }

            sub_21C7191E0(v43, type metadata accessor for PMAccount.MockData);
          }

          else
          {
            v45 = *v41;
            v46 = [*v41 effectiveTitleForSorting];
            sub_21CB855C4();

            v40 = v75;
          }

          v72 = sub_21CB85634();
          v73 = v47;

          v48 = v66;
          sub_21C80EABC(v20 + *(v40 + 24), v66, type metadata accessor for PMAccount.Storage);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v49 = v48;
            v50 = v60;
            sub_21C8399BC(v49, v60, type metadata accessor for PMAccount.MockData);
            if (!*(v50 + *(v67 + 44) + 8))
            {
            }

            a5 = v64;

            sub_21C7191E0(v50, type metadata accessor for PMAccount.MockData);
          }

          else
          {
            v51 = *v48;
            v52 = [v51 effectiveTitleForSorting];
            sub_21CB855C4();

            a5 = v64;
          }

          v53 = sub_21CB85634();
          v55 = v54;

          if (v72 == v53 && v73 == v55)
          {

LABEL_5:
            sub_21C7191E0(v20, type metadata accessor for PMAccount);
            sub_21C7191E0(v24, type metadata accessor for PMAccount);
LABEL_6:
            a3 = v71 + 1;
            v27 = v70 + v61;
            v28 = v69 - 1;
            v29 = v68 + v61;
            if (v71 + 1 == v62)
            {
              return;
            }

            goto LABEL_7;
          }

          v44 = sub_21CB86344();
          v24 = v63;
        }

        else
        {
          v44 = v39 < v34;
        }

        sub_21C7191E0(v20, type metadata accessor for PMAccount);
        sub_21C7191E0(v24, type metadata accessor for PMAccount);
        if ((v44 & 1) == 0)
        {
          goto LABEL_6;
        }
      }

      else
      {
        sub_21C7191E0(v20, type metadata accessor for PMAccount);
        sub_21C7191E0(v24, type metadata accessor for PMAccount);
      }

      if (!v77)
      {
        break;
      }

      v56 = v78;
      sub_21C8399BC(v29, v78, type metadata accessor for PMAccount);
      swift_arrayInitWithTakeFrontToBack();
      sub_21C8399BC(v56, v27, type metadata accessor for PMAccount);
      v27 += v76;
      v29 += v76;
      if (__CFADD__(v28++, 1))
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }
}

void sub_21C836B48(char **a1, uint64_t a2, uint64_t (**a3)(uint64_t a1), uint64_t a4, uint64_t *a5)
{
  v6 = v5;
  v186 = a1;
  v195 = type metadata accessor for PMAccount.MockData(0);
  MEMORY[0x28223BE20](v195);
  v188 = &v178 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v187 = &v178 - v12;
  MEMORY[0x28223BE20](v13);
  v179 = &v178 - v14;
  MEMORY[0x28223BE20](v15);
  v178 = &v178 - v16;
  v203 = type metadata accessor for PMAccount.Storage(0);
  MEMORY[0x28223BE20](v203);
  v18 = (&v178 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v19);
  v21 = (&v178 - v20);
  MEMORY[0x28223BE20](v22);
  v182 = (&v178 - v23);
  MEMORY[0x28223BE20](v24);
  v181 = (&v178 - v25);
  v26 = type metadata accessor for PMAccount(0);
  v201 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v191 = &v178 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v30 = &v178 - v29;
  MEMORY[0x28223BE20](v31);
  v212 = (&v178 - v32);
  MEMORY[0x28223BE20](v33);
  v211 = (&v178 - v34);
  MEMORY[0x28223BE20](v35);
  v207 = (&v178 - v36);
  MEMORY[0x28223BE20](v37);
  v205 = (&v178 - v38);
  MEMORY[0x28223BE20](v39);
  MEMORY[0x28223BE20](v40);
  v204 = a3;
  if (a3[1] >= 1)
  {
    v43 = a3[1];
    v183 = (&v178 - v41);
    v180 = v42;
    v192 = v21;
    v193 = v18;
    v44 = 0;
    v45 = MEMORY[0x277D84F90];
    v194 = a5;
    v185 = a4;
    v208 = v26;
    v202 = v30;
    v46 = v211;
    while (1)
    {
      v47 = v44 + 1;
      v200 = v45;
      v189 = v44;
      if ((v44 + 1) >= v43)
      {
        v59 = v44 + 1;
      }

      else
      {
        v206 = v43;
        v48 = *v204;
        v49 = *(v201 + 72);
        v50 = *v204 + v49 * v47;
        v210 = type metadata accessor for PMAccount;
        v51 = v183;
        sub_21C80EABC(v50, v183, type metadata accessor for PMAccount);
        v209 = v48;
        v199 = v49;
        v52 = v48 + v49 * v189;
        v53 = v189;
        v54 = v180;
        sub_21C80EABC(v52, v180, v210);
        LODWORD(v210) = sub_21C832408(v51, v54, a5);
        if (v6)
        {
          sub_21C7191E0(v54, type metadata accessor for PMAccount);
          sub_21C7191E0(v183, type metadata accessor for PMAccount);
          goto LABEL_163;
        }

        v184 = 0;
        sub_21C7191E0(v54, type metadata accessor for PMAccount);
        sub_21C7191E0(v183, type metadata accessor for PMAccount);
        v55 = (v53 + 2);
        v56 = v199;
        v44 = (v209 + v199 * (v53 + 2));
        while (1)
        {
          v59 = v206;
          if (v206 == v55)
          {
            break;
          }

          v60 = v205;
          sub_21C80EABC(v44, v205, type metadata accessor for PMAccount);
          sub_21C80EABC(v50, v207, type metadata accessor for PMAccount);
          v61 = *a5;
          if (*(*a5 + 16) && (v62 = sub_21CB10A3C(*v60, v60[1]), (v63 & 1) != 0))
          {
            v64 = *(*(v61 + 56) + 8 * v62);
            v65 = sub_21CB81054();

            v66 = *a5;
            if (*(*a5 + 16) && (v67 = sub_21CB10A3C(*v207, v207[1]), (v68 & 1) != 0))
            {
              v69 = *(*(v66 + 56) + 8 * v67);
              v70 = sub_21CB81054();

              if (v65 == v70)
              {
                v71 = v181;
                sub_21C80EABC(v205 + *(v208 + 24), v181, type metadata accessor for PMAccount.Storage);
                if (swift_getEnumCaseMultiPayload() == 1)
                {
                  v72 = v71;
                  v73 = v178;
                  sub_21C8399BC(v72, v178, type metadata accessor for PMAccount.MockData);
                  if (!*(v73 + *(v195 + 44) + 8))
                  {
                  }

                  v76 = v182;

                  sub_21C7191E0(v73, type metadata accessor for PMAccount.MockData);
                }

                else
                {
                  v74 = *v71;
                  v75 = [*v71 effectiveTitleForSorting];
                  sub_21CB855C4();

                  v76 = v182;
                }

                v209 = sub_21CB85634();
                v78 = v77;

                sub_21C80EABC(v207 + *(v208 + 24), v76, type metadata accessor for PMAccount.Storage);
                if (swift_getEnumCaseMultiPayload() == 1)
                {
                  v79 = v179;
                  sub_21C8399BC(v76, v179, type metadata accessor for PMAccount.MockData);
                  if (!*(v79 + *(v195 + 44) + 8))
                  {
                  }

                  sub_21C7191E0(v79, type metadata accessor for PMAccount.MockData);
                }

                else
                {
                  v80 = *v76;
                  v81 = [*v76 effectiveTitleForSorting];
                  sub_21CB855C4();

                  v45 = v200;
                }

                v82 = sub_21CB85634();
                v84 = v83;

                if (v209 == v82 && v78 == v84)
                {

                  v57 = 0;
                }

                else
                {
                  v57 = sub_21CB86344();
                }

                a5 = v194;
                v30 = v202;
              }

              else
              {
                v57 = v70 < v65;
                v30 = v202;
              }
            }

            else
            {
              v57 = 1;
            }
          }

          else
          {
            v57 = 0;
          }

          sub_21C7191E0(v207, type metadata accessor for PMAccount);
          sub_21C7191E0(v205, type metadata accessor for PMAccount);
          v58 = v210 ^ v57;
          v55 = (v55 + 1);
          v44 += v56;
          v50 += v56;
          v46 = v211;
          if (v58)
          {
            v59 = v55 - 1;
            break;
          }
        }

        v6 = v184;
        a4 = v185;
        if ((v210 & 1) == 0)
        {
          goto LABEL_48;
        }

        if (v59 < v189)
        {
          goto LABEL_184;
        }

        if (v189 < v59)
        {
          v85 = v59;
          v86 = v56 * (v59 - 1);
          v87 = v59 * v56;
          v206 = v59;
          v88 = v189;
          v89 = v189 * v56;
          do
          {
            if (v88 != --v85)
            {
              v90 = *v204;
              if (!*v204)
              {
                goto LABEL_188;
              }

              v44 = v90 + v89;
              sub_21C8399BC(v90 + v89, v191, type metadata accessor for PMAccount);
              if (v89 < v86 || v44 >= v90 + v87)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v89 != v86)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              sub_21C8399BC(v191, v90 + v86, type metadata accessor for PMAccount);
              v45 = v200;
            }

            ++v88;
            v86 -= v56;
            v87 -= v56;
            v89 += v56;
          }

          while (v88 < v85);
          v6 = v184;
          a5 = v194;
          v26 = v208;
          v30 = v202;
          v46 = v211;
          v59 = v206;
        }

        else
        {
LABEL_48:
          v26 = v208;
        }
      }

      v91 = v204[1];
      if (v59 >= v91)
      {
        goto LABEL_60;
      }

      if (__OFSUB__(v59, v189))
      {
        goto LABEL_181;
      }

      if (v59 - v189 >= a4)
      {
LABEL_60:
        v93 = v59;
        goto LABEL_61;
      }

      v44 = v189;
      if (__OFADD__(v189, a4))
      {
        goto LABEL_182;
      }

      if (&v189[a4] >= v91)
      {
        v92 = v204[1];
      }

      else
      {
        v92 = &v189[a4];
      }

      if (v92 < v189)
      {
LABEL_183:
        __break(1u);
LABEL_184:
        __break(1u);
LABEL_185:
        v45 = sub_21C864538(v45);
LABEL_153:
        v174 = v6;
        v213 = v45;
        v175 = *(v45 + 2);
        if (v175 >= 2)
        {
          while (*v204)
          {
            v176 = *&v45[16 * v175];
            v6 = *&v45[16 * v175 + 24];
            sub_21C837E30(*v204 + *(v201 + 72) * v176, *v204 + *(v201 + 72) * *&v45[16 * v175 + 16], *v204 + *(v201 + 72) * v6, v44, a5);
            if (v174)
            {
              goto LABEL_163;
            }

            if (v6 < v176)
            {
              goto LABEL_178;
            }

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v45 = sub_21C864538(v45);
            }

            if (v175 - 2 >= *(v45 + 2))
            {
              goto LABEL_179;
            }

            v177 = &v45[16 * v175];
            *v177 = v176;
            *(v177 + 1) = v6;
            v213 = v45;
            sub_21C8644AC(v175 - 1);
            v45 = v213;
            v175 = *(v213 + 2);
            if (v175 <= 1)
            {
              goto LABEL_163;
            }
          }

          goto LABEL_189;
        }

LABEL_163:

        return;
      }

      if (v59 == v92)
      {
        v93 = v59;
        goto LABEL_62;
      }

      v184 = v6;
      v142 = *v204;
      v143 = *(v201 + 72);
      v144 = *v204 + v143 * (v59 - 1);
      v209 = -v143;
      v210 = v142;
      v145 = v189 - v59;
      v190 = v143;
      v146 = v142 + v59 * v143;
      v196 = v92;
      while (2)
      {
        v206 = v59;
        v197 = v146;
        v198 = v145;
        v199 = v144;
        v147 = v144;
        while (1)
        {
          sub_21C80EABC(v146, v46, type metadata accessor for PMAccount);
          sub_21C80EABC(v147, v212, type metadata accessor for PMAccount);
          v148 = *a5;
          if (!*(*a5 + 16))
          {
            goto LABEL_118;
          }

          v149 = sub_21CB10A3C(*v46, v46[1]);
          if ((v150 & 1) == 0)
          {
            goto LABEL_118;
          }

          v151 = *(*(v148 + 56) + 8 * v149);
          v152 = sub_21CB81054();

          v153 = *a5;
          if (!*(*a5 + 16) || (v154 = sub_21CB10A3C(*v212, v212[1]), (v155 & 1) == 0))
          {
            sub_21C7191E0(v212, type metadata accessor for PMAccount);
            sub_21C7191E0(v211, type metadata accessor for PMAccount);
            goto LABEL_144;
          }

          v156 = *(*(v153 + 56) + 8 * v154);
          v157 = sub_21CB81054();

          if (v152 != v157)
          {
            v161 = v157 < v152;
            goto LABEL_143;
          }

          v158 = v192;
          sub_21C80EABC(v211 + *(v26 + 24), v192, type metadata accessor for PMAccount.Storage);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v159 = v187;
            sub_21C8399BC(v158, v187, type metadata accessor for PMAccount.MockData);
            v160 = v193;
            if (!*(v159 + *(v195 + 44) + 8))
            {
            }

            sub_21C7191E0(v159, type metadata accessor for PMAccount.MockData);
            v26 = v208;
          }

          else
          {
            v162 = *v158;
            v163 = [*v158 effectiveTitleForSorting];
            sub_21CB855C4();

            v160 = v193;
          }

          v164 = sub_21CB85634();
          v166 = v165;

          sub_21C80EABC(v212 + *(v26 + 24), v160, type metadata accessor for PMAccount.Storage);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v167 = v188;
            sub_21C8399BC(v160, v188, type metadata accessor for PMAccount.MockData);
            if (!*(v167 + *(v195 + 44) + 8))
            {
            }

            sub_21C7191E0(v167, type metadata accessor for PMAccount.MockData);
          }

          else
          {
            v168 = *v160;
            v169 = [*v160 effectiveTitleForSorting];
            sub_21CB855C4();
          }

          v170 = sub_21CB85634();
          v172 = v171;

          if (v164 == v170 && v166 == v172)
          {
            break;
          }

          v161 = sub_21CB86344();

          a5 = v194;
          v45 = v200;
          v26 = v208;
LABEL_143:
          v30 = v202;
          sub_21C7191E0(v212, type metadata accessor for PMAccount);
          sub_21C7191E0(v211, type metadata accessor for PMAccount);
          if ((v161 & 1) == 0)
          {
            v46 = v211;
            goto LABEL_119;
          }

LABEL_144:
          if (!v210)
          {
            __break(1u);
LABEL_187:
            __break(1u);
LABEL_188:
            __break(1u);
LABEL_189:
            __break(1u);
LABEL_190:
            __break(1u);
            goto LABEL_191;
          }

          sub_21C8399BC(v146, v30, type metadata accessor for PMAccount);
          swift_arrayInitWithTakeFrontToBack();
          sub_21C8399BC(v30, v147, type metadata accessor for PMAccount);
          v147 += v209;
          v146 += v209;
          v173 = __CFADD__(v145++, 1);
          v46 = v211;
          if (v173)
          {
            goto LABEL_119;
          }
        }

        a5 = v194;
        v45 = v200;
        v26 = v208;
        v30 = v202;
        v46 = v211;
LABEL_118:
        sub_21C7191E0(v212, type metadata accessor for PMAccount);
        sub_21C7191E0(v46, type metadata accessor for PMAccount);
LABEL_119:
        v59 = v206 + 1;
        v144 = v199 + v190;
        v145 = v198 - 1;
        v93 = v196;
        v146 = v197 + v190;
        if (v206 + 1 != v196)
        {
          continue;
        }

        break;
      }

      v6 = v184;
LABEL_61:
      v44 = v189;
LABEL_62:
      if (v93 < v44)
      {
        goto LABEL_180;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v196 = v93;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v45 = sub_21C86467C(0, *(v45 + 2) + 1, 1, v45);
      }

      v96 = *(v45 + 2);
      v95 = *(v45 + 3);
      v97 = v96 + 1;
      if (v96 >= v95 >> 1)
      {
        v45 = sub_21C86467C((v95 > 1), v96 + 1, 1, v45);
      }

      *(v45 + 2) = v97;
      v98 = &v45[16 * v96];
      v99 = v196;
      *(v98 + 4) = v44;
      *(v98 + 5) = v99;
      v44 = *v186;
      if (!*v186)
      {
        goto LABEL_190;
      }

      if (v96)
      {
        v46 = v211;
        while (1)
        {
          v100 = v97 - 1;
          if (v97 >= 4)
          {
            break;
          }

          if (v97 == 3)
          {
            v101 = *(v45 + 4);
            v102 = *(v45 + 5);
            v111 = __OFSUB__(v102, v101);
            v103 = v102 - v101;
            v104 = v111;
LABEL_83:
            if (v104)
            {
              goto LABEL_169;
            }

            v117 = &v45[16 * v97];
            v119 = *v117;
            v118 = *(v117 + 1);
            v120 = __OFSUB__(v118, v119);
            v121 = v118 - v119;
            v122 = v120;
            if (v120)
            {
              goto LABEL_172;
            }

            v123 = &v45[16 * v100 + 32];
            v125 = *v123;
            v124 = *(v123 + 1);
            v111 = __OFSUB__(v124, v125);
            v126 = v124 - v125;
            if (v111)
            {
              goto LABEL_175;
            }

            if (__OFADD__(v121, v126))
            {
              goto LABEL_176;
            }

            if (v121 + v126 >= v103)
            {
              if (v103 < v126)
              {
                v100 = v97 - 2;
              }

              goto LABEL_104;
            }

            goto LABEL_97;
          }

          v127 = &v45[16 * v97];
          v129 = *v127;
          v128 = *(v127 + 1);
          v111 = __OFSUB__(v128, v129);
          v121 = v128 - v129;
          v122 = v111;
LABEL_97:
          if (v122)
          {
            goto LABEL_171;
          }

          v130 = &v45[16 * v100];
          v132 = *(v130 + 4);
          v131 = *(v130 + 5);
          v111 = __OFSUB__(v131, v132);
          v133 = v131 - v132;
          if (v111)
          {
            goto LABEL_174;
          }

          if (v133 < v121)
          {
            goto LABEL_114;
          }

LABEL_104:
          v138 = v100 - 1;
          if (v100 - 1 >= v97)
          {
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
            __break(1u);
LABEL_170:
            __break(1u);
LABEL_171:
            __break(1u);
LABEL_172:
            __break(1u);
LABEL_173:
            __break(1u);
LABEL_174:
            __break(1u);
LABEL_175:
            __break(1u);
LABEL_176:
            __break(1u);
LABEL_177:
            __break(1u);
LABEL_178:
            __break(1u);
LABEL_179:
            __break(1u);
LABEL_180:
            __break(1u);
LABEL_181:
            __break(1u);
LABEL_182:
            __break(1u);
            goto LABEL_183;
          }

          if (!*v204)
          {
            goto LABEL_187;
          }

          v139 = *&v45[16 * v138 + 32];
          v140 = *&v45[16 * v100 + 40];
          sub_21C837E30(*v204 + *(v201 + 72) * v139, *v204 + *(v201 + 72) * *&v45[16 * v100 + 32], *v204 + *(v201 + 72) * v140, v44, a5);
          if (v6)
          {
            goto LABEL_163;
          }

          if (v140 < v139)
          {
            goto LABEL_165;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v45 = sub_21C864538(v45);
          }

          if (v138 >= *(v45 + 2))
          {
            goto LABEL_166;
          }

          v141 = &v45[16 * v138];
          *(v141 + 4) = v139;
          *(v141 + 5) = v140;
          v213 = v45;
          sub_21C8644AC(v100);
          v45 = v213;
          v97 = *(v213 + 2);
          v26 = v208;
          v46 = v211;
          if (v97 <= 1)
          {
            goto LABEL_114;
          }
        }

        v105 = &v45[16 * v97 + 32];
        v106 = *(v105 - 64);
        v107 = *(v105 - 56);
        v111 = __OFSUB__(v107, v106);
        v108 = v107 - v106;
        if (v111)
        {
          goto LABEL_167;
        }

        v110 = *(v105 - 48);
        v109 = *(v105 - 40);
        v111 = __OFSUB__(v109, v110);
        v103 = v109 - v110;
        v104 = v111;
        if (v111)
        {
          goto LABEL_168;
        }

        v112 = &v45[16 * v97];
        v114 = *v112;
        v113 = *(v112 + 1);
        v111 = __OFSUB__(v113, v114);
        v115 = v113 - v114;
        if (v111)
        {
          goto LABEL_170;
        }

        v111 = __OFADD__(v103, v115);
        v116 = v103 + v115;
        if (v111)
        {
          goto LABEL_173;
        }

        if (v116 >= v108)
        {
          v134 = &v45[16 * v100 + 32];
          v136 = *v134;
          v135 = *(v134 + 1);
          v111 = __OFSUB__(v135, v136);
          v137 = v135 - v136;
          if (v111)
          {
            goto LABEL_177;
          }

          if (v103 < v137)
          {
            v100 = v97 - 2;
          }

          goto LABEL_104;
        }

        goto LABEL_83;
      }

      v46 = v211;
LABEL_114:
      v43 = v204[1];
      v44 = v196;
      a4 = v185;
      if (v196 >= v43)
      {
        goto LABEL_151;
      }
    }
  }

  v45 = MEMORY[0x277D84F90];
LABEL_151:
  v44 = *v186;
  if (*v186)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_185;
    }

    goto LABEL_153;
  }

LABEL_191:
  __break(1u);
}

void sub_21C837E30(char *a1, char *a2, unint64_t a3, char *a4, uint64_t *a5)
{
  v119 = a5;
  v115 = type metadata accessor for PMAccount.MockData(0);
  MEMORY[0x28223BE20](v115);
  v111 = &v107 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v110 = &v107 - v11;
  MEMORY[0x28223BE20](v12);
  v117 = &v107 - v13;
  MEMORY[0x28223BE20](v14);
  v112 = &v107 - v15;
  v116 = type metadata accessor for PMAccount.Storage(0);
  MEMORY[0x28223BE20](v116);
  v114 = (&v107 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v17);
  v113 = (&v107 - v18);
  MEMORY[0x28223BE20](v19);
  v121 = (&v107 - v20);
  MEMORY[0x28223BE20](v21);
  v120 = &v107 - v22;
  v124 = type metadata accessor for PMAccount(0);
  MEMORY[0x28223BE20](v124);
  v123 = (&v107 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v24);
  MEMORY[0x28223BE20](v25);
  v27 = (&v107 - v26);
  MEMORY[0x28223BE20](v28);
  v31 = (&v107 - v30);
  v122 = *(v32 + 72);
  if (!v122)
  {
    __break(1u);
LABEL_113:
    __break(1u);
LABEL_114:
    __break(1u);
    return;
  }

  v33 = a2;
  if (a2 - a1 == 0x8000000000000000 && v122 == -1)
  {
    goto LABEL_113;
  }

  v34 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v122 == -1)
  {
    goto LABEL_114;
  }

  v35 = (a2 - a1) / v122;
  v127 = a1;
  v126 = a4;
  if (v35 >= v34 / v122)
  {
    v38 = v34 / v122 * v122;
    v121 = v29;
    if (a4 < a2 || &a2[v38] <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else
    {
      if (a4 == a2)
      {
LABEL_63:
        v66 = &a4[v38];
        if (v38 < 1)
        {
          goto LABEL_110;
        }

        v67 = -v122;
        v68 = &a4[v38];
        v122 = -v122;
        while (1)
        {
          v112 = v66;
          v69 = a2;
          v70 = &a2[v67];
          v118 = &a2[v67];
          v71 = v66;
          while (1)
          {
            if (v69 <= a1)
            {
              v127 = v69;
              v125 = v112;
              goto LABEL_111;
            }

            v73 = a3;
            v74 = a4;
            v75 = v69;
            v120 = v68;
            v76 = v68 + v67;
            v77 = v29;
            sub_21C80EABC(v76, v29, type metadata accessor for PMAccount);
            sub_21C80EABC(v70, v123, type metadata accessor for PMAccount);
            v78 = *v119;
            v79 = *(*v119 + 16);
            v117 = v71;
            if (!v79 || (v80 = sub_21CB10A3C(*v77, v77[1]), (v81 & 1) == 0))
            {
              v94 = 0;
              v69 = v75;
              goto LABEL_79;
            }

            v82 = *(*(v78 + 56) + 8 * v80);
            v83 = sub_21CB81054();

            v84 = *v119;
            v69 = v75;
            if (!*(*v119 + 16))
            {
              v94 = 1;
LABEL_79:
              a4 = v74;
LABEL_80:
              v89 = v73;
              goto LABEL_81;
            }

            v85 = sub_21CB10A3C(*v123, v123[1]);
            a4 = v74;
            if ((v86 & 1) == 0)
            {
              v94 = 1;
              goto LABEL_80;
            }

            v87 = *(*(v84 + 56) + 8 * v85);
            v88 = sub_21CB81054();

            v89 = v73;
            if (v83 == v88)
            {
              v90 = v113;
              sub_21C80EABC(v121 + *(v124 + 24), v113, type metadata accessor for PMAccount.Storage);
              if (swift_getEnumCaseMultiPayload() == 1)
              {
                v91 = v90;
                v92 = v110;
                sub_21C8399BC(v91, v110, type metadata accessor for PMAccount.MockData);
                v93 = v92;
                if (!*(v92 + *(v115 + 44) + 8))
                {
                }

                v97 = v114;

                sub_21C7191E0(v93, type metadata accessor for PMAccount.MockData);
              }

              else
              {
                v95 = *v90;
                v96 = [*v90 effectiveTitleForSorting];
                sub_21CB855C4();

                v97 = v114;
              }

              v109 = sub_21CB85634();
              v99 = v98;

              sub_21C80EABC(v123 + *(v124 + 24), v97, type metadata accessor for PMAccount.Storage);
              if (swift_getEnumCaseMultiPayload() == 1)
              {
                v100 = v111;
                sub_21C8399BC(v97, v111, type metadata accessor for PMAccount.MockData);
                if (!*(v100 + *(v115 + 44) + 8))
                {
                }

                sub_21C7191E0(v100, type metadata accessor for PMAccount.MockData);
              }

              else
              {
                v101 = *v97;
                v102 = [*v97 effectiveTitleForSorting];
                v108 = v99;
                v103 = v102;
                sub_21CB855C4();

                v99 = v108;
              }

              v104 = sub_21CB85634();
              v106 = v105;

              if (v109 == v104 && v99 == v106)
              {

                v94 = 0;
              }

              else
              {
                v94 = sub_21CB86344();
              }
            }

            else
            {
              v94 = v88 < v83;
            }

LABEL_81:
            a3 = v89 + v122;
            sub_21C7191E0(v123, type metadata accessor for PMAccount);
            sub_21C7191E0(v121, type metadata accessor for PMAccount);
            if (v94)
            {
              break;
            }

            v71 = v76;
            v70 = v118;
            if (v89 < v120 || a3 >= v120)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v89 != v120)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            v68 = v76;
            v72 = v76 > a4;
            v29 = v121;
            v67 = v122;
            if (!v72)
            {
              v66 = v71;
              a2 = v69;
              goto LABEL_110;
            }
          }

          a2 = v118;
          if (v89 < v69 || a3 >= v69)
          {
            swift_arrayInitWithTakeFrontToBack();
            v67 = v122;
          }

          else
          {
            v67 = v122;
            if (v89 != v69)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v68 = v120;
          v29 = v121;
          v66 = v117;
          if (v120 <= a4)
          {
LABEL_110:
            v127 = a2;
            v125 = v66;
            goto LABEL_111;
          }
        }
      }

      swift_arrayInitWithTakeBackToFront();
    }

    v29 = v121;
    goto LABEL_63;
  }

  v36 = v35 * v122;
  if (a4 < a1 || &a1[v36] <= a4)
  {
    swift_arrayInitWithTakeFrontToBack();
    v33 = a2;
    v37 = v119;
  }

  else
  {
    v37 = v119;
    if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
      v33 = a2;
    }
  }

  v123 = &a4[v36];
  v125 = &a4[v36];
  if (v36 >= 1 && v33 < a3)
  {
    do
    {
      v40 = v33;
      sub_21C80EABC(v33, v31, type metadata accessor for PMAccount);
      sub_21C80EABC(a4, v27, type metadata accessor for PMAccount);
      v41 = *v37;
      if (!*(*v37 + 16))
      {
        goto LABEL_48;
      }

      v42 = sub_21CB10A3C(*v31, v31[1]);
      if ((v43 & 1) == 0)
      {
        goto LABEL_48;
      }

      v44 = *(*(v41 + 56) + 8 * v42);
      v45 = sub_21CB81054();

      v46 = *v37;
      if (!*(*v37 + 16) || (v47 = sub_21CB10A3C(*v27, v27[1]), (v48 & 1) == 0))
      {
        sub_21C7191E0(v27, type metadata accessor for PMAccount);
        sub_21C7191E0(v31, type metadata accessor for PMAccount);
LABEL_29:
        v54 = v122;
        if (a1 < v40 || a1 >= v40 + v122)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != v40)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v33 = (v40 + v54);
        goto LABEL_55;
      }

      v49 = *(*(v46 + 56) + 8 * v47);
      v50 = sub_21CB81054();

      if (v45 == v50)
      {
        v51 = v120;
        sub_21C80EABC(v31 + *(v124 + 24), v120, type metadata accessor for PMAccount.Storage);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v52 = v51;
          v53 = v112;
          sub_21C8399BC(v52, v112, type metadata accessor for PMAccount.MockData);
          if (!*(v53 + *(v115 + 44) + 8))
          {
          }

          sub_21C7191E0(v53, type metadata accessor for PMAccount.MockData);
        }

        else
        {
          v118 = *v51;
          v56 = [v118 effectiveTitleForSorting];
          sub_21CB855C4();
        }

        v114 = sub_21CB85634();
        v118 = v57;

        v58 = v121;
        sub_21C80EABC(v27 + *(v124 + 24), v121, type metadata accessor for PMAccount.Storage);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v59 = v58;
          v60 = v117;
          sub_21C8399BC(v59, v117, type metadata accessor for PMAccount.MockData);
          if (!*(v60 + *(v115 + 44) + 8))
          {
          }

          sub_21C7191E0(v60, type metadata accessor for PMAccount.MockData);
        }

        else
        {
          v113 = *v58;
          v61 = [v113 effectiveTitleForSorting];
          sub_21CB855C4();
        }

        v62 = sub_21CB85634();
        v64 = v63;

        if (v114 == v62 && v118 == v64)
        {

          v37 = v119;
LABEL_48:
          sub_21C7191E0(v27, type metadata accessor for PMAccount);
          sub_21C7191E0(v31, type metadata accessor for PMAccount);
          goto LABEL_49;
        }

        v55 = sub_21CB86344();
      }

      else
      {
        v55 = v50 < v45;
      }

      sub_21C7191E0(v27, type metadata accessor for PMAccount);
      sub_21C7191E0(v31, type metadata accessor for PMAccount);
      v37 = v119;
      if (v55)
      {
        goto LABEL_29;
      }

LABEL_49:
      v54 = v122;
      v65 = &a4[v122];
      if (a1 < a4 || a1 >= v65)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (a1 != a4)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v126 = v65;
      a4 += v54;
      v33 = v40;
LABEL_55:
      a1 += v54;
      v127 = a1;
    }

    while (a4 < v123 && v33 < a3);
  }

LABEL_111:
  sub_21C864564(&v127, &v126, &v125);
}

void *_s17PasswordManagerUI15PMAccountsStateC6filter8accounts10searchText017associatedDomainsB0SayAA9PMAccountVGAE_SDySS10SafariCore26WBSSavedAccountSearchMatchCG0H7ResultstAJ_SSSo021WBSAutoFillAssociatedkB0CSgtFZ_0(unint64_t a1, void *a2, char *isUniquelyReferenced_nonNull_native, void *a4)
{
  v123 = a4;
  v7 = type metadata accessor for PMAccount.MockData(0);
  MEMORY[0x28223BE20](v7 - 8);
  v121 = &v107 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = type metadata accessor for PMAccount.Storage(0);
  MEMORY[0x28223BE20](v130);
  v124 = (&v107 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10);
  v126 = (&v107 - v11);
  MEMORY[0x28223BE20](v12);
  v128 = &v107 - v13;
  v14 = type metadata accessor for PMAccount(0);
  v15 = *(v14 - 8);
  v131 = v14;
  v132 = v15;
  MEMORY[0x28223BE20](v14);
  v110 = &v107 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v109 = &v107 - v18;
  MEMORY[0x28223BE20](v19);
  v21 = &v107 - v20;
  v22 = sub_21CB81C54();
  v23 = *(v22 - 1);
  MEMORY[0x28223BE20](v22);
  v25 = &v107 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_21CB85D34();
  if (qword_27CDEA458 != -1)
  {
LABEL_70:
    swift_once();
  }

  v27 = qword_27CE186B8;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
  v28 = swift_allocObject();
  v115 = xmmword_21CBA0690;
  *(v28 + 16) = xmmword_21CBA0690;
  *(v28 + 56) = MEMORY[0x277D837D0];
  v113 = sub_21C7C0050();
  *(v28 + 64) = v113;
  v129 = a2;
  *(v28 + 32) = a2;
  *(v28 + 40) = isUniquelyReferenced_nonNull_native;

  sub_21CB81C44();
  LOBYTE(v106) = 2;
  v117 = v27;
  sub_21CB81C24(v26, &dword_21C6E5000, v27, "pmui.accounts.search", 20, 2, v25, "%@", 2, v106, v28);

  v29 = *(v23 + 1);
  v23 = v23 + 8;
  v119 = v23;
  v120 = v22;
  v114 = v29;
  v29(v25, v22);
  v30 = MEMORY[0x277D84F90];
  v112 = sub_21CB127E8(MEMORY[0x277D84F90]);
  v134[0] = v112;
  a2 = *(a1 + 16);
  v118 = v25;
  v127 = isUniquelyReferenced_nonNull_native;
  if (!a2)
  {
    v32 = v30;
    goto LABEL_63;
  }

  v31 = a1;
  v22 = 0;
  v32 = MEMORY[0x277D84F90];
  v125 = v31;
  v26 = v130;
  v25 = v128;
  v122 = v21;
  while (2)
  {
    v111 = v32;
    a1 = v22;
    while (1)
    {
      if (a1 >= a2)
      {
        __break(1u);
LABEL_69:
        __break(1u);
        goto LABEL_70;
      }

      v22 = (a1 + 1);
      if (__OFADD__(a1, 1))
      {
        goto LABEL_69;
      }

      v33 = (*(v132 + 80) + 32) & ~*(v132 + 80);
      v23 = *(v132 + 72);
      sub_21C80EABC(v31 + v33 + v23 * a1, v21, type metadata accessor for PMAccount);
      if (sub_21CB85954())
      {

        v32 = MEMORY[0x277D84F90];
        sub_21CB127E8(MEMORY[0x277D84F90]);
        sub_21C7191E0(v21, type metadata accessor for PMAccount);

        v98 = v129;
        v99 = v120;
        v100 = v127;
        goto LABEL_67;
      }

      isUniquelyReferenced_nonNull_native = v25;
      v34 = *(v131 + 24);
      sub_21C80EABC(&v21[v34], isUniquelyReferenced_nonNull_native, type metadata accessor for PMAccount.Storage);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        break;
      }

      sub_21C7191E0(isUniquelyReferenced_nonNull_native, type metadata accessor for PMAccount.Storage);
      sub_21C7191E0(v21, type metadata accessor for PMAccount);
      v25 = isUniquelyReferenced_nonNull_native;
LABEL_6:
      ++a1;
      if (v22 == a2)
      {
        v32 = v111;
        goto LABEL_63;
      }
    }

    isUniquelyReferenced_nonNull_native = *isUniquelyReferenced_nonNull_native;
    v35 = v126;
    sub_21C80EABC(&v21[v34], v126, type metadata accessor for PMAccount.Storage);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_21C7191E0(v35, type metadata accessor for PMAccount.Storage);
      goto LABEL_16;
    }

    v36 = *v35;
    v37 = [*v35 credentialTypes];

    v26 = v130;
    if (v37 != 4)
    {
LABEL_16:
      v40 = v124;
      sub_21C80EABC(&v21[v34], v124, type metadata accessor for PMAccount.Storage);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v41 = isUniquelyReferenced_nonNull_native;
        v42 = v40;
        v43 = v121;
        sub_21C8399BC(v42, v121, type metadata accessor for PMAccount.MockData);

        sub_21C7191E0(v43, type metadata accessor for PMAccount.MockData);
        v44 = v123;
        if (v123)
        {
LABEL_18:
          v45 = sub_21CB85584();

          v46 = [v44 domainsWithAssociatedCredentialsForDomain_];

          if (v46)
          {
            sub_21CB859E4();
          }

          goto LABEL_23;
        }
      }

      else
      {
        v47 = *v40;
        v48 = [v47 highLevelDomain];
        if (!v48)
        {

          sub_21C7191E0(v21, type metadata accessor for PMAccount);
          v31 = v125;
LABEL_26:
          v25 = v128;
          goto LABEL_6;
        }

        v49 = v48;
        v41 = isUniquelyReferenced_nonNull_native;
        sub_21CB855C4();

        v44 = v123;
        if (v123)
        {
          goto LABEL_18;
        }
      }

LABEL_23:
      isUniquelyReferenced_nonNull_native = v41;
      v21 = v122;
LABEL_24:
      v50 = sub_21CB85584();
      v51 = sub_21CB859D4();

      v52 = [isUniquelyReferenced_nonNull_native searchMatchForUserTypedSearchPattern:v50 associatedDomains:v51];

      if (v52)
      {
        sub_21C80EABC(v21, v110, type metadata accessor for PMAccount);
        v32 = v111;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v32 = sub_21CA4F1B8(0, v32[2] + 1, 1, v32);
        }

        v54 = v32[2];
        v53 = v32[3];
        v108 = isUniquelyReferenced_nonNull_native;
        if (v54 >= v53 >> 1)
        {
          v32 = sub_21CA4F1B8((v53 > 1), v54 + 1, 1, v32);
        }

        v32[2] = v54 + 1;
        sub_21C8399BC(v110, v32 + v33 + v54 * v23, type metadata accessor for PMAccount);
        v55 = *v21;
        v56 = *(v21 + 1);

        v57 = v52;
        v58 = v134[0];
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v133 = v58;
        v112 = v55;
        v60 = sub_21CB10A3C(v55, v56);
        v61 = v58[2];
        v62 = (v59 & 1) == 0;
        v63 = v61 + v62;
        if (__OFADD__(v61, v62))
        {
          __break(1u);
        }

        else
        {
          v31 = v125;
          v25 = v128;
          if (v58[3] < v63)
          {
            v64 = v59;
            sub_21C8D13B4(v63, isUniquelyReferenced_nonNull_native);
            v65 = sub_21CB10A3C(v112, v56);
            if ((v64 & 1) == (v66 & 1))
            {
              v60 = v65;
              LOBYTE(v59) = v64;
              goto LABEL_38;
            }

LABEL_75:
            sub_21CB863B4();
            __break(1u);

            __break(1u);
            return result;
          }

          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v95 = v60;
            isUniquelyReferenced_nonNull_native = v59;
            sub_21C8D5458();
            LOBYTE(v59) = isUniquelyReferenced_nonNull_native;
            v60 = v95;
          }

LABEL_38:
          v67 = v108;
          v68 = v57;
          v23 = v133;
          if (v59)
          {
            v69 = v133[7];
            v70 = *(v69 + 8 * v60);
            *(v69 + 8 * v60) = v68;

            goto LABEL_54;
          }

          v133[(v60 >> 6) + 8] |= 1 << v60;
          v71 = (*(v23 + 6) + 16 * v60);
          *v71 = v112;
          v71[1] = v56;
          *(*(v23 + 7) + 8 * v60) = v68;
          v72 = *(v23 + 2);
          v73 = __OFADD__(v72, 1);
          v74 = v72 + 1;
          if (!v73)
          {
            *(v23 + 2) = v74;

            goto LABEL_55;
          }
        }

        __break(1u);
LABEL_73:
        __break(1u);
LABEL_74:
        __break(1u);
        goto LABEL_75;
      }

      sub_21C7191E0(v21, type metadata accessor for PMAccount);

      v31 = v125;
      v26 = v130;
      goto LABEL_26;
    }

    v38 = sub_21CB85584();
    v39 = [isUniquelyReferenced_nonNull_native searchMatchForUserTypedSearchPattern_];

    if (!v39)
    {
      goto LABEL_24;
    }

    sub_21C80EABC(v21, v109, type metadata accessor for PMAccount);
    v32 = v111;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v32 = sub_21CA4F1B8(0, v32[2] + 1, 1, v32);
    }

    v76 = v32[2];
    v75 = v32[3];
    v108 = isUniquelyReferenced_nonNull_native;
    if (v76 >= v75 >> 1)
    {
      v32 = sub_21CA4F1B8((v75 > 1), v76 + 1, 1, v32);
    }

    v32[2] = v76 + 1;
    sub_21C8399BC(v109, v32 + v33 + v76 * v23, type metadata accessor for PMAccount);
    v77 = *v21;
    v78 = *(v21 + 1);

    v112 = v39;
    v79 = v134[0];
    v80 = swift_isUniquelyReferenced_nonNull_native();
    v133 = v79;
    v82 = sub_21CB10A3C(v77, v78);
    v83 = v79[2];
    v84 = (v81 & 1) == 0;
    v85 = v83 + v84;
    if (__OFADD__(v83, v84))
    {
      goto LABEL_73;
    }

    v31 = v125;
    v25 = v128;
    if (v79[3] >= v85)
    {
      if (v80)
      {
        goto LABEL_51;
      }

      isUniquelyReferenced_nonNull_native = v77;
      v96 = v82;
      v97 = v81;
      sub_21C8D5458();
      v81 = v97;
      v82 = v96;
    }

    else
    {
      v86 = v81;
      sub_21C8D13B4(v85, v80);
      v87 = sub_21CB10A3C(v77, v78);
      if ((v86 & 1) != (v88 & 1))
      {
        goto LABEL_75;
      }

      v82 = v87;
      v81 = v86;
LABEL_51:
      isUniquelyReferenced_nonNull_native = v77;
    }

    v67 = v108;
    v23 = v133;
    if ((v81 & 1) == 0)
    {
      v133[(v82 >> 6) + 8] |= 1 << v82;
      v91 = (*(v23 + 6) + 16 * v82);
      *v91 = isUniquelyReferenced_nonNull_native;
      v91[1] = v78;
      v92 = v112;
      *(*(v23 + 7) + 8 * v82) = v112;
      v93 = *(v23 + 2);
      v73 = __OFADD__(v93, 1);
      v94 = v93 + 1;
      if (!v73)
      {
        *(v23 + 2) = v94;

        goto LABEL_55;
      }

      goto LABEL_74;
    }

    v89 = v133[7];
    v70 = *(v89 + 8 * v82);
    v90 = v112;
    *(v89 + 8 * v82) = v112;

LABEL_54:

    v67 = v70;
LABEL_55:
    v26 = v130;

    v112 = v23;
    v134[0] = v23;
    v21 = v122;
    sub_21C7191E0(v122, type metadata accessor for PMAccount);
    if (v22 != a2)
    {
      continue;
    }

    break;
  }

LABEL_63:
  if ([objc_opt_self() isPasswordsAppFuzzySearchEnabled])
  {
    v133 = v32;

    sub_21C836240(&v133, v134);
    v99 = v120;
    v100 = v127;

    v32 = v133;
  }

  else
  {
    v99 = v120;
    v100 = v127;
  }

  v98 = v129;
LABEL_67:
  v101 = sub_21CB85D24();
  v102 = swift_allocObject();
  *(v102 + 16) = v115;
  v103 = v113;
  *(v102 + 56) = MEMORY[0x277D837D0];
  *(v102 + 64) = v103;
  *(v102 + 32) = v98;
  *(v102 + 40) = v100;

  v104 = v118;
  sub_21CB81C44();
  LOBYTE(v106) = 2;
  sub_21CB81C24(v101, &dword_21C6E5000, v117, "pmui.accounts.search", 20, 2, v104, "%@", 2, v106, v102);

  v114(v104, v99);
  return v32;
}

uint64_t sub_21C839958(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMAccount(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C8399BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21C839A24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    return 0;
  }

  v6 = 0;
  for (i = (a1 + 40); ; i += 4)
  {
    v8 = *(i - 1) == a2 && *i == a3;
    if (v8 || (sub_21CB86344() & 1) != 0)
    {
      break;
    }

    if (v3 == ++v6)
    {
      return 0;
    }
  }

  return v6;
}