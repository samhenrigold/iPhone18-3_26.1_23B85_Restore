uint64_t sub_22963FC90()
{
  v2 = *v1;
  *(*v1 + 368) = v0;

  if (v0)
  {
    v3 = *(v2 + 248);

    v4 = sub_22963FFE0;
  }

  else
  {
    v3 = *(v2 + 248);

    v4 = sub_22963FDE0;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_22963FDE0()
{

  *(v0 + 376) = *(v0 + 104);
  *(v0 + 113) = *(v0 + 112);

  return MEMORY[0x2822009F8](sub_22963FE68, 0, 0);
}

uint64_t sub_22963FE68()
{
  if (*(v0 + 376))
  {
    v1 = *(v0 + 304);
    v2 = *(v0 + 224);
    sub_2296561E0();
    swift_allocError();
    *v3 = 0xD000000000000030;
    v3[1] = 0x800000022A58EA90;
    swift_willThrow();

LABEL_5:
    sub_229656184(v2);

    v5 = *(v0 + 8);

    return v5();
  }

  if (*(v0 + 113))
  {
    v1 = *(v0 + 304);
    v2 = *(v0 + 224);

    sub_2296561E0();
    swift_allocError();
    *v4 = 0xD000000000000020;
    v4[1] = 0x800000022A58EAD0;
    swift_willThrow();
    goto LABEL_5;
  }

  v7 = *(v0 + 320);

  return MEMORY[0x2822009F8](sub_229640074, v7, 0);
}

uint64_t sub_22963FFFC()
{
  v1 = *(v0 + 224);

  sub_229656184(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_229640074()
{
  v1 = *(v0 + 38);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *(v2 + 16) = v1;
  v5 = (*MEMORY[0x277D0EF78] + MEMORY[0x277D0EF78]);
  v3 = swift_task_alloc();
  *(v0 + 49) = v3;
  *v3 = v0;
  v3[1] = sub_229640164;

  return v5(v0 + 59, &unk_22A57B910, v2, &type metadata for ExpressSettings);
}

uint64_t sub_229640164()
{
  v2 = *v1;
  *(v2 + 400) = v0;

  v3 = *(v2 + 320);
  if (v0)
  {

    v4 = sub_229640440;
  }

  else
  {

    v4 = sub_2296402C8;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_2296402C8()
{
  v0[114] = v0[59];
  v0[115] = v0[60];
  return MEMORY[0x2822009F8](sub_2296402F4, 0, 0);
}

uint64_t sub_2296402F4()
{
  v1 = 0xD000000000000013;
  if (*(v0 + 114) != 1)
  {
    v2 = "pass was not in wallet";
    goto LABEL_5;
  }

  if (*(v0 + 115))
  {
    v2 = "as newly enabled";
    v1 = 0xD000000000000021;
LABEL_5:
    v3 = *(v0 + 304);
    v4 = *(v0 + 224);

    sub_2296561E0();
    swift_allocError();
    *v5 = v1;
    v5[1] = v2 | 0x8000000000000000;
    swift_willThrow();

    sub_229656184(v4);

    v6 = *(v0 + 8);

    return v6();
  }

  v8 = *(v0 + 248);
  *(*(v0 + 224) + *(v0 + 68) + *(v0 + 116)) = 0;

  return MEMORY[0x2822009F8](sub_2296404D4, v8, 0);
}

uint64_t sub_22964045C()
{
  v1 = *(v0 + 224);

  sub_229656184(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2296404D4()
{
  v1 = v0[31];
  v2 = v0[28];
  v3 = swift_task_alloc();
  v0[51] = v3;
  v3[2] = v1;
  v3[3] = 0;
  v3[4] = v2;
  v7 = (*MEMORY[0x277D0EF78] + MEMORY[0x277D0EF78]);
  v4 = swift_task_alloc();
  v0[52] = v4;
  *v4 = v0;
  v4[1] = sub_2296405C8;
  v5 = v0[34];

  return v7(v0 + 15, &unk_22A57B918, v3, v5);
}

uint64_t sub_2296405C8()
{
  v2 = *v1;
  *(*v1 + 424) = v0;

  if (v0)
  {
    v3 = *(v2 + 248);

    v4 = sub_229640918;
  }

  else
  {
    v3 = *(v2 + 248);

    v4 = sub_229640718;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_229640718()
{

  *(v0 + 432) = *(v0 + 152);
  *(v0 + 161) = *(v0 + 160);

  return MEMORY[0x2822009F8](sub_2296407A0, 0, 0);
}

uint64_t sub_2296407A0()
{
  v1 = *(v0 + 304);
  if (*(v0 + 432))
  {
    v2 = *(v0 + 224);
    sub_2296561E0();
    swift_allocError();
    *v3 = 0xD00000000000001CLL;
    v3[1] = 0x800000022A58EB30;
    swift_willThrow();

LABEL_5:
    sub_229656184(v2);

    v6 = *(v0 + 8);

    return v6();
  }

  v4 = *(v0 + 161);

  if (v4)
  {
    v1 = *(v0 + 304);
    v2 = *(v0 + 224);
    sub_2296561E0();
    swift_allocError();
    *v5 = 0xD000000000000020;
    v5[1] = 0x800000022A58EAD0;
    swift_willThrow();
    goto LABEL_5;
  }

  v8 = *(v0 + 320);

  return MEMORY[0x2822009F8](sub_2296409AC, v8, 0);
}

uint64_t sub_229640934()
{
  v1 = *(v0 + 224);

  sub_229656184(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2296409AC()
{
  v1 = *(v0 + 38);
  v2 = swift_task_alloc();
  *(v0 + 55) = v2;
  *(v2 + 16) = v1;
  v5 = (*MEMORY[0x277D0EF78] + MEMORY[0x277D0EF78]);
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  *v3 = v0;
  v3[1] = sub_229640A9C;

  return v5(v0 + 61, &unk_22A57B920, v2, &type metadata for ExpressSettings);
}

uint64_t sub_229640A9C()
{
  v2 = *v1;
  *(*v1 + 456) = v0;

  if (v0)
  {
    v3 = *(v2 + 320);
    v4 = sub_229640D3C;
  }

  else
  {
    v5 = *(v2 + 320);

    v4 = sub_229640BC4;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_229640BC4()
{
  v0[162] = v0[61];
  v0[163] = v0[62];
  return MEMORY[0x2822009F8](sub_229640BF0, 0, 0);
}

uint64_t sub_229640BF0()
{
  v1 = 0xD000000000000013;
  if (*(v0 + 162) != 1)
  {
    v2 = "pass was not in wallet";
    goto LABEL_5;
  }

  if (*(v0 + 163))
  {
    v2 = "express settings was changed";
    v1 = 0xD000000000000020;
LABEL_5:
    v3 = *(v0 + 304);
    v4 = *(v0 + 224);
    v5 = v2 | 0x8000000000000000;
    sub_2296561E0();
    swift_allocError();
    *v6 = v1;
    v6[1] = v5;
    swift_willThrow();

    sub_229656184(v4);

    v7 = *(v0 + 8);

    return v7();
  }

  v9 = *(v0 + 248);
  *(*(v0 + 224) + *(v0 + 68) + *(v0 + 116)) = 1;

  return MEMORY[0x2822009F8](sub_229640E1C, v9, 0);
}

uint64_t sub_229640D3C()
{

  return MEMORY[0x2822009F8](sub_229640DA4, 0, 0);
}

uint64_t sub_229640DA4()
{
  v1 = *(v0 + 224);

  sub_229656184(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_229640E1C()
{
  v1 = v0[31];
  v2 = v0[28];
  v3 = swift_task_alloc();
  v0[58] = v3;
  v3[2] = v1;
  v3[3] = 0;
  v3[4] = v2;
  v7 = (*MEMORY[0x277D0EF78] + MEMORY[0x277D0EF78]);
  v4 = swift_task_alloc();
  v0[59] = v4;
  *v4 = v0;
  v4[1] = sub_229640F10;
  v5 = v0[34];

  return v7(v0 + 21, &unk_22A57B928, v3, v5);
}

uint64_t sub_229640F10()
{
  v2 = *v1;
  *(*v1 + 480) = v0;

  if (v0)
  {
    v3 = *(v2 + 248);
    v4 = sub_2296411F8;
  }

  else
  {
    v5 = *(v2 + 248);

    v4 = sub_229641038;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_229641038()
{

  *(v0 + 488) = *(v0 + 200);
  *(v0 + 164) = *(v0 + 208);

  return MEMORY[0x2822009F8](sub_2296410C0, 0, 0);
}

uint64_t sub_2296410C0()
{
  v1 = 0xD00000000000001CLL;
  if (*(v0 + 488) == 2)
  {
    if (*(v0 + 164) == 1)
    {
      v2 = *(v0 + 320);

      return MEMORY[0x2822009F8](sub_2296412D8, v2, 0);
    }

    v3 = "n't newly enabled";
    v1 = 0xD000000000000023;
  }

  else
  {
    v3 = "but should not be";
  }

  v4 = *(v0 + 304);
  v5 = *(v0 + 224);
  v6 = v3 | 0x8000000000000000;
  sub_2296561E0();
  swift_allocError();
  *v7 = v1;
  v7[1] = v6;
  swift_willThrow();

  sub_229656184(v5);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_2296411F8()
{

  return MEMORY[0x2822009F8](sub_229641260, 0, 0);
}

uint64_t sub_229641260()
{
  v1 = *(v0 + 224);

  sub_229656184(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2296412D8()
{
  v1 = *(v0 + 38);
  v2 = swift_task_alloc();
  *(v0 + 62) = v2;
  *(v2 + 16) = v1;
  v5 = (*MEMORY[0x277D0EF78] + MEMORY[0x277D0EF78]);
  v3 = swift_task_alloc();
  *(v0 + 63) = v3;
  *v3 = v0;
  v3[1] = sub_2296413C8;

  return v5(v0 + 63, &unk_22A57B930, v2, &type metadata for ExpressSettings);
}

uint64_t sub_2296413C8()
{
  v2 = *v1;
  *(*v1 + 512) = v0;

  if (v0)
  {
    v3 = *(v2 + 320);
    v4 = sub_229641638;
  }

  else
  {
    v5 = *(v2 + 320);

    v4 = sub_2296414F0;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_2296414F0()
{
  v0[165] = v0[63];
  v0[166] = v0[64];
  return MEMORY[0x2822009F8](sub_22964151C, 0, 0);
}

uint64_t sub_22964151C()
{
  if (*(v0 + 165) == 1)
  {
    v1 = *(v0 + 304);
    v2 = *(v0 + 224);
    if (*(v0 + 166))
    {

      sub_229656184(v2);

      v3 = *(v0 + 8);
      goto LABEL_7;
    }

    v4 = "NFC was not enabled";
  }

  else
  {
    v1 = *(v0 + 304);
    v4 = "pass was not in wallet";
    v2 = *(v0 + 224);
  }

  v5 = v4 | 0x8000000000000000;
  sub_2296561E0();
  swift_allocError();
  *v6 = 0xD000000000000013;
  v6[1] = v5;
  swift_willThrow();

  sub_229656184(v2);

  v3 = *(v0 + 8);
LABEL_7:

  return v3();
}

uint64_t sub_229641638()
{

  return MEMORY[0x2822009F8](sub_2296416A0, 0, 0);
}

uint64_t sub_2296416A0()
{
  v1 = *(v0 + 224);

  sub_229656184(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_229641718()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22964177C()
{
  sub_229656184(*(v0 + 224));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2296417E8()
{
  type metadata accessor for HomePassState(0);
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  v2 = swift_task_alloc();
  *(v0 + 72) = v2;
  *v2 = v0;
  v2[1] = sub_2296418AC;

  return sub_229633120(v1);
}

uint64_t sub_2296418AC()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_229641F9C;
  }

  else
  {
    v2 = sub_2296419C0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2296419C0()
{
  if (qword_281402DF8 != -1)
  {
    swift_once();
  }

  v1 = static PassUpdater.shared;
  *(v0 + 88) = static PassUpdater.shared;

  return MEMORY[0x2822009F8](sub_229641A5C, v1, 0);
}

uint64_t sub_229641A5C()
{
  v1 = v0[11];
  v2 = v0[8];
  v3 = swift_task_alloc();
  v0[12] = v3;
  v3[2] = v1;
  v3[3] = 0;
  v3[4] = v2;
  v7 = (*MEMORY[0x277D0EF78] + MEMORY[0x277D0EF78]);
  v4 = swift_task_alloc();
  v0[13] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E2A0, &qword_22A57B798);
  *v4 = v0;
  v4[1] = sub_229641B64;

  return v7(v0 + 2, &unk_22A57B8E8, v3, v5);
}

uint64_t sub_229641B64()
{
  v2 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = *(v2 + 88);
    v4 = sub_2296388D8;
  }

  else
  {
    v5 = *(v2 + 88);

    v4 = sub_229641C88;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_229641C88()
{

  v1 = swift_task_alloc();
  *(v0 + 120) = v1;
  *v1 = v0;
  v1[1] = sub_229641D34;
  v2 = *(v0 + 64);

  return sub_229633730(v2);
}

uint64_t sub_229641D34(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 128) = v1;

  if (v1)
  {
    v5 = sub_229642000;
  }

  else
  {
    *(v4 + 136) = a1;
    v5 = sub_229641E5C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_229641E5C()
{
  v1 = v0[17];
  if (v1 && (objc_opt_self(), (v2 = swift_dynamicCastObjCClass()) != 0))
  {
    v3 = v2;
    v4 = v1;
    sub_22964206C(v3, 1, 1);
    sub_229656184(v0[8]);
  }

  else
  {
    v5 = v0[8];
    sub_2296561E0();
    swift_allocError();
    *v6 = 0xD000000000000023;
    v6[1] = 0x800000022A58E4B0;
    swift_willThrow();

    sub_229656184(v5);
  }

  v7 = v0[1];

  return v7();
}

uint64_t sub_229641F9C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_229642000()
{
  sub_229656184(*(v0 + 64));

  v1 = *(v0 + 8);

  return v1();
}

void sub_22964206C(void *a1, char a2, char a3)
{
  v5 = [a1 secureElementPass];
  v50 = a2;
  if (!v5 || (v6 = v5, v7 = [v5 paymentApplications], v6, !v7))
  {
    v14 = 0;
    v15 = 0;
    v8 = 0;
    if ((a2 & 1) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_6;
  }

  v49 = a3;
  sub_229562F68(0, &qword_281401930, 0x277D37FE0);
  sub_2296562D4();
  v8 = sub_22A4DDB6C();

  if ((v8 & 0xC000000000000001) != 0)
  {

    swift_unknownObjectRetain();
    sub_22A4DE09C();
    sub_22A4DDBAC();
    v9 = v52;
    v10 = v53;
    v12 = v54;
    v11 = v55;
    v13 = v56;
  }

  else
  {
    v18 = -1 << *(v8 + 32);
    v10 = v8 + 56;
    v12 = ~v18;
    v19 = -v18;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v13 = v20 & *(v8 + 56);
    swift_bridgeObjectRetain_n();
    v11 = 0;
    v9 = v8;
  }

  v21 = (v12 + 64) >> 6;
  if ((v9 & 0x8000000000000000) == 0)
  {
    goto LABEL_17;
  }

LABEL_14:
  if (!sub_22A4DE12C() || (swift_dynamicCast(), v22 = v51, v23 = v11, v24 = v13, !v51))
  {
LABEL_25:
    v48 = 0;
LABEL_26:
    sub_22953EE84(v9);

    if ((v8 & 0xC000000000000001) != 0)
    {

      swift_unknownObjectRetain();
      sub_22A4DE09C();
      sub_22A4DDBAC();
      v27 = v57;
      v28 = v58;
      v29 = v59;
      v30 = v60;
      v31 = v61;
    }

    else
    {
      v32 = -1 << *(v8 + 32);
      v28 = v8 + 56;
      v29 = ~v32;
      v33 = -v32;
      if (v33 < 64)
      {
        v34 = ~(-1 << v33);
      }

      else
      {
        v34 = -1;
      }

      v31 = v34 & *(v8 + 56);
      swift_bridgeObjectRetain_n();
      v30 = 0;
      v27 = v8;
    }

    v35 = (v29 + 64) >> 6;
    if ((v27 & 0x8000000000000000) == 0)
    {
      goto LABEL_36;
    }

LABEL_33:
    if (sub_22A4DE12C())
    {
      swift_dynamicCast();
      v14 = v51;
      i = v30;
      v37 = v31;
      if (v51)
      {
        while ([v14 paymentType] != 1004)
        {

          v30 = i;
          v31 = v37;
          if (v27 < 0)
          {
            goto LABEL_33;
          }

LABEL_36:
          v38 = v30;
          v39 = v31;
          for (i = v30; !v39; ++v38)
          {
            i = v38 + 1;
            if (__OFADD__(v38, 1))
            {
              goto LABEL_72;
            }

            if (i >= v35)
            {
              goto LABEL_44;
            }

            v39 = *(v28 + 8 * i);
          }

          v37 = (v39 - 1) & v39;
          v14 = *(*(v27 + 48) + ((i << 9) | (8 * __clz(__rbit64(v39)))));
          if (!v14)
          {
            break;
          }
        }
      }
    }

    else
    {
LABEL_44:
      v14 = 0;
    }

    sub_22953EE84(v27);

    a3 = v49;
    v15 = v48;
    if ((v50 & 1) == 0)
    {
LABEL_46:
      if ((a3 & 1) == 0)
      {
        v16 = 0;
        if (v8)
        {
LABEL_48:
          if ((v8 & 0xC000000000000001) != 0)
          {

            v17 = sub_22A4DE0EC();
          }

          else
          {
            v17 = *(v8 + 16);
          }

LABEL_53:
          sub_22A4DE1FC();
          MEMORY[0x22AAD08C0](0xD000000000000027, 0x800000022A58E570);
          v40 = sub_22A4DE5CC();
          MEMORY[0x22AAD08C0](v40);

          MEMORY[0x22AAD08C0](0x6F6620747562202CLL, 0xEC00000020646E75);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E2B0, &qword_22A57B7B8);
          v41 = sub_22A4DD64C();
          MEMORY[0x22AAD08C0](v41);

          if (v17 != v16)
          {
            sub_2296561E0();
            swift_allocError();
            *v44 = 0;
            v44[1] = 0xE000000000000000;
LABEL_66:
            swift_willThrow();

            goto LABEL_67;
          }

          if (v50)
          {
            v42 = v15;
            if (!v15)
            {
              sub_2296561E0();
              swift_allocError();
              *v43 = 0x5520676E7373696DLL;
              v43[1] = 0xE900000000000041;
              swift_willThrow();
              v15 = v14;
LABEL_67:

              return;
            }
          }

          else
          {
            v42 = v15;
            if (v15)
            {
              v45 = 0x800000022A58E5A0;
              sub_2296561E0();
              swift_allocError();
              *v46 = 0xD000000000000015;
LABEL_65:
              v46[1] = v45;
              goto LABEL_66;
            }
          }

          if (a3)
          {
            if (!v14)
            {
              sub_2296561E0();
              swift_allocError();
              strcpy(v47, "missng aliro");
              v47[13] = 0;
              *(v47 + 7) = -5120;
              swift_willThrow();
              goto LABEL_67;
            }

            v42 = v15;
            goto LABEL_68;
          }

          if (!v14)
          {
LABEL_68:

            return;
          }

          v45 = 0x800000022A58E5C0;
          sub_2296561E0();
          swift_allocError();
          *v46 = 0xD000000000000018;
          goto LABEL_65;
        }

LABEL_8:
        v17 = 0;
        goto LABEL_53;
      }

LABEL_47:
      v16 = 1;
      if (v8)
      {
        goto LABEL_48;
      }

      goto LABEL_8;
    }

LABEL_6:
    if (a3)
    {
      v16 = 2;
      if (v8)
      {
        goto LABEL_48;
      }

      goto LABEL_8;
    }

    goto LABEL_47;
  }

  while (1)
  {
    if ([v22 paymentType] == 1003)
    {
      v48 = v22;
      goto LABEL_26;
    }

    v11 = v23;
    v13 = v24;
    if (v9 < 0)
    {
      goto LABEL_14;
    }

LABEL_17:
    v25 = v11;
    v26 = v13;
    v23 = v11;
    if (!v13)
    {
      break;
    }

LABEL_21:
    v24 = (v26 - 1) & v26;
    v22 = *(*(v9 + 48) + ((v23 << 9) | (8 * __clz(__rbit64(v26)))));
    if (!v22)
    {
      goto LABEL_25;
    }
  }

  while (1)
  {
    v23 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    if (v23 >= v21)
    {
      goto LABEL_25;
    }

    v26 = *(v10 + 8 * v23);
    ++v25;
    if (v26)
    {
      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_72:
  __break(1u);
}

uint64_t sub_229642754()
{
  v0[8] = type metadata accessor for HomePassState(0);
  v1 = swift_task_alloc();
  v0[9] = v1;
  v2 = swift_task_alloc();
  v0[10] = v2;
  *v2 = v0;
  v2[1] = sub_22964281C;

  return sub_229633120(v1);
}

uint64_t sub_22964281C()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_229643000;
  }

  else
  {
    v2 = sub_229642930;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_229642930()
{
  v1 = v0[9] + *(v0[8] + 48);
  *(v1 + *(type metadata accessor for HomePassData(0) + 72)) = 2;
  if (qword_281402DF8 != -1)
  {
    swift_once();
  }

  v2 = static PassUpdater.shared;
  v0[12] = static PassUpdater.shared;

  return MEMORY[0x2822009F8](sub_2296429EC, v2, 0);
}

uint64_t sub_2296429EC()
{
  v1 = v0[12];
  v2 = v0[9];
  v3 = swift_task_alloc();
  v0[13] = v3;
  v3[2] = v1;
  v3[3] = 0;
  v3[4] = v2;
  v7 = (*MEMORY[0x277D0EF78] + MEMORY[0x277D0EF78]);
  v4 = swift_task_alloc();
  v0[14] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E2A0, &qword_22A57B798);
  *v4 = v0;
  v4[1] = sub_229642AF4;

  return v7(v0 + 2, &unk_22A57B8D8, v3, v5);
}

uint64_t sub_229642AF4()
{
  v2 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = *(v2 + 96);
    v4 = sub_229642DEC;
  }

  else
  {
    v5 = *(v2 + 96);

    v4 = sub_229642C18;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_229642C18()
{

  v1 = swift_task_alloc();
  *(v0 + 128) = v1;
  *v1 = v0;
  v1[1] = sub_229642CC4;
  v2 = *(v0 + 72);

  return sub_229633730(v2);
}

uint64_t sub_229642CC4(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 136) = v1;

  if (v1)
  {
    v5 = sub_229643064;
  }

  else
  {
    *(v4 + 144) = a1;
    v5 = sub_229642EC0;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_229642DEC()
{

  return MEMORY[0x2822009F8](sub_229642E54, 0, 0);
}

uint64_t sub_229642E54()
{
  sub_229656184(*(v0 + 72));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_229642EC0(uint64_t a1)
{
  v2 = v1[18];
  if (v2 && (objc_opt_self(), (v3 = swift_dynamicCastObjCClass()) != 0))
  {
    v4 = v3;
    v5 = v2;
    sub_22964206C(v4, 1, 0);
    sub_229656184(v1[9]);
  }

  else
  {
    v6 = v1[9];
    sub_2296561E0();
    swift_allocError();
    *v7 = 0xD000000000000023;
    v7[1] = 0x800000022A58E4B0;
    swift_willThrow();

    sub_229656184(v6);
  }

  v8 = v1[1];

  return v8();
}

uint64_t sub_229643000()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_229643064()
{
  sub_229656184(*(v0 + 72));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2296430D0()
{
  v0[8] = type metadata accessor for HomePassState(0);
  v1 = swift_task_alloc();
  v0[9] = v1;
  v2 = swift_task_alloc();
  v0[10] = v2;
  *v2 = v0;
  v2[1] = sub_229643198;

  return sub_229633120(v1);
}

uint64_t sub_229643198()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_229656530;
  }

  else
  {
    v2 = sub_2296432AC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2296432AC()
{
  v1 = v0[9] + *(v0[8] + 48);
  *(v1 + *(type metadata accessor for HomePassData(0) + 68)) = 0;
  if (qword_281402DF8 != -1)
  {
    swift_once();
  }

  v2 = static PassUpdater.shared;
  v0[12] = static PassUpdater.shared;

  return MEMORY[0x2822009F8](sub_229643364, v2, 0);
}

uint64_t sub_229643364()
{
  v1 = v0[12];
  v2 = v0[9];
  v3 = swift_task_alloc();
  v0[13] = v3;
  v3[2] = v1;
  v3[3] = 0;
  v3[4] = v2;
  v7 = (*MEMORY[0x277D0EF78] + MEMORY[0x277D0EF78]);
  v4 = swift_task_alloc();
  v0[14] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E2A0, &qword_22A57B798);
  *v4 = v0;
  v4[1] = sub_22964346C;

  return v7(v0 + 2, &unk_22A57B8C8, v3, v5);
}

uint64_t sub_22964346C()
{
  v2 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = *(v2 + 96);
    v4 = sub_22963BBDC;
  }

  else
  {
    v5 = *(v2 + 96);

    v4 = sub_229643590;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_229643590()
{

  v1 = swift_task_alloc();
  *(v0 + 128) = v1;
  *v1 = v0;
  v1[1] = sub_22964363C;
  v2 = *(v0 + 72);

  return sub_229633730(v2);
}

uint64_t sub_22964363C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 136) = v1;

  if (v1)
  {
    v5 = sub_229656548;
  }

  else
  {
    *(v4 + 144) = a1;
    v5 = sub_229643764;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_229643764(uint64_t a1)
{
  v2 = v1[18];
  if (v2 && (objc_opt_self(), (v3 = swift_dynamicCastObjCClass()) != 0))
  {
    v4 = v3;
    v5 = v2;
    sub_22964206C(v4, 0, 1);
    sub_229656184(v1[9]);
  }

  else
  {
    v6 = v1[9];
    sub_2296561E0();
    swift_allocError();
    *v7 = 0xD000000000000023;
    v7[1] = 0x800000022A58E4B0;
    swift_willThrow();

    sub_229656184(v6);
  }

  v8 = v1[1];

  return v8();
}

uint64_t sub_2296438A4()
{
  v0[14] = type metadata accessor for HomePassState(0);
  v1 = swift_task_alloc();
  v0[15] = v1;
  v2 = swift_task_alloc();
  v0[16] = v2;
  *v2 = v0;
  v2[1] = sub_22964396C;

  return sub_229633120(v1);
}

uint64_t sub_22964396C()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = sub_22965652C;
  }

  else
  {
    v2 = sub_229643A80;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_229643A80()
{
  if (qword_281402DF8 != -1)
  {
    swift_once();
  }

  v1 = static PassUpdater.shared;
  *(v0 + 144) = static PassUpdater.shared;

  return MEMORY[0x2822009F8](sub_229643B1C, v1, 0);
}

uint64_t sub_229643B1C()
{
  v1 = v0[18];
  v2 = v0[15];
  v3 = swift_task_alloc();
  v0[19] = v3;
  v3[2] = v1;
  v3[3] = 0;
  v3[4] = v2;
  v7 = (*MEMORY[0x277D0EF78] + MEMORY[0x277D0EF78]);
  v4 = swift_task_alloc();
  v0[20] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E2A0, &qword_22A57B798);
  v0[21] = v5;
  *v4 = v0;
  v4[1] = sub_229643C28;

  return v7(v0 + 2, &unk_22A57B8B0, v3, v5);
}

uint64_t sub_229643C28()
{
  v2 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v3 = *(v2 + 144);
    v4 = sub_229637B7C;
  }

  else
  {
    v5 = *(v2 + 144);

    v4 = sub_229643D4C;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_229643D4C()
{

  v1 = swift_task_alloc();
  *(v0 + 184) = v1;
  *v1 = v0;
  v1[1] = sub_229643DF8;
  v2 = *(v0 + 120);

  return sub_229633730(v2);
}

uint64_t sub_229643DF8(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 192) = v1;

  if (v1)
  {
    v5 = sub_2296446A4;
  }

  else
  {
    *(v4 + 200) = a1;
    v5 = sub_229643F20;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_229643F20(uint64_t a1)
{
  v2 = v1[25];
  if (!v2 || (objc_opt_self(), (v3 = swift_dynamicCastObjCClass()) == 0))
  {
    v7 = v1[15];
    sub_2296561E0();
    swift_allocError();
    *v8 = 0xD000000000000023;
    v8[1] = 0x800000022A58E4B0;
    swift_willThrow();

    sub_229656184(v7);
    goto LABEL_6;
  }

  v4 = v3;
  v5 = v1[24];
  v6 = v2;
  sub_22964206C(v4, 1, 1);
  if (v5)
  {
    sub_229656184(v1[15]);

LABEL_6:

    v9 = v1[1];

    return v9();
  }

  v11 = v1[18];
  v12 = v1[15] + *(v1[14] + 48);
  *(v12 + *(type metadata accessor for HomePassData(0) + 72)) = 2;

  return MEMORY[0x2822009F8](sub_2296440AC, v11, 0);
}

uint64_t sub_2296440AC()
{
  v1 = v0[18];
  v2 = v0[15];
  v3 = swift_task_alloc();
  v0[26] = v3;
  v3[2] = v1;
  v3[3] = 0;
  v3[4] = v2;
  v7 = (*MEMORY[0x277D0EF78] + MEMORY[0x277D0EF78]);
  v4 = swift_task_alloc();
  v0[27] = v4;
  *v4 = v0;
  v4[1] = sub_2296441A0;
  v5 = v0[21];

  return v7(v0 + 8, &unk_22A57B8B8, v3, v5);
}

uint64_t sub_2296441A0()
{
  v2 = *v1;
  *(*v1 + 224) = v0;

  if (v0)
  {
    v3 = *(v2 + 144);

    v4 = sub_2296444B8;
  }

  else
  {
    v3 = *(v2 + 144);

    v4 = sub_2296442F0;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_2296442F0()
{

  v1 = swift_task_alloc();
  *(v0 + 232) = v1;
  *v1 = v0;
  v1[1] = sub_22964439C;
  v2 = *(v0 + 120);

  return sub_229633730(v2);
}

uint64_t sub_22964439C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 240) = a1;
  *(v3 + 248) = v1;

  if (v1)
  {

    v4 = sub_229644710;
  }

  else
  {
    v4 = sub_22964454C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2296444D4()
{
  v1 = *(v0 + 120);

  sub_229656184(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_22964454C()
{
  v1 = v0[30];
  if (v1 && (objc_opt_self(), (v2 = swift_dynamicCastObjCClass()) != 0))
  {
    v3 = v2;
    v4 = v1;
    sub_22964206C(v3, 1, 0);
    v5 = v0[25];
    sub_229656184(v0[15]);
  }

  else
  {
    v6 = v0[25];
    v7 = v0[15];

    sub_2296561E0();
    swift_allocError();
    *v8 = 0xD000000000000016;
    v8[1] = 0x800000022A58E510;
    swift_willThrow();

    sub_229656184(v7);
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_2296446A4()
{
  sub_229656184(*(v0 + 120));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_229644710()
{
  v1 = *(v0 + 120);

  sub_229656184(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_229644788()
{
  v0[14] = type metadata accessor for HomePassState(0);
  v1 = swift_task_alloc();
  v0[15] = v1;
  v2 = swift_task_alloc();
  v0[16] = v2;
  *v2 = v0;
  v2[1] = sub_229644850;

  return sub_229633120(v1);
}

uint64_t sub_229644850()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = sub_22965652C;
  }

  else
  {
    v2 = sub_229644964;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_229644964()
{
  if (qword_281402DF8 != -1)
  {
    swift_once();
  }

  v1 = static PassUpdater.shared;
  *(v0 + 144) = static PassUpdater.shared;

  return MEMORY[0x2822009F8](sub_229644A00, v1, 0);
}

uint64_t sub_229644A00()
{
  v1 = v0[18];
  v2 = v0[15];
  v3 = swift_task_alloc();
  v0[19] = v3;
  v3[2] = v1;
  v3[3] = 0;
  v3[4] = v2;
  v7 = (*MEMORY[0x277D0EF78] + MEMORY[0x277D0EF78]);
  v4 = swift_task_alloc();
  v0[20] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E2A0, &qword_22A57B798);
  v0[21] = v5;
  *v4 = v0;
  v4[1] = sub_229644B0C;

  return v7(v0 + 2, &unk_22A57B898, v3, v5);
}

uint64_t sub_229644B0C()
{
  v2 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v3 = *(v2 + 144);
    v4 = sub_229637B7C;
  }

  else
  {
    v5 = *(v2 + 144);

    v4 = sub_229644C30;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_229644C30()
{

  v1 = swift_task_alloc();
  *(v0 + 184) = v1;
  *v1 = v0;
  v1[1] = sub_229644CDC;
  v2 = *(v0 + 120);

  return sub_229633730(v2);
}

uint64_t sub_229644CDC(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 192) = v1;

  if (v1)
  {
    v5 = sub_22965654C;
  }

  else
  {
    *(v4 + 200) = a1;
    v5 = sub_229644E04;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_229644E04(uint64_t a1)
{
  v2 = v1[25];
  if (!v2 || (objc_opt_self(), (v3 = swift_dynamicCastObjCClass()) == 0))
  {
    v7 = v1[15];
    sub_2296561E0();
    swift_allocError();
    *v8 = 0xD000000000000023;
    v8[1] = 0x800000022A58E4B0;
    swift_willThrow();

    sub_229656184(v7);
    goto LABEL_6;
  }

  v4 = v3;
  v5 = v1[24];
  v6 = v2;
  sub_22964206C(v4, 1, 1);
  if (v5)
  {
    sub_229656184(v1[15]);

LABEL_6:

    v9 = v1[1];

    return v9();
  }

  v11 = v1[18];
  v12 = v1[15] + *(v1[14] + 48);
  *(v12 + *(type metadata accessor for HomePassData(0) + 68)) = 0;

  return MEMORY[0x2822009F8](sub_229644F8C, v11, 0);
}

uint64_t sub_229644F8C()
{
  v1 = v0[18];
  v2 = v0[15];
  v3 = swift_task_alloc();
  v0[26] = v3;
  v3[2] = v1;
  v3[3] = 0;
  v3[4] = v2;
  v7 = (*MEMORY[0x277D0EF78] + MEMORY[0x277D0EF78]);
  v4 = swift_task_alloc();
  v0[27] = v4;
  *v4 = v0;
  v4[1] = sub_229645080;
  v5 = v0[21];

  return v7(v0 + 8, &unk_22A57B8A0, v3, v5);
}

uint64_t sub_229645080()
{
  v2 = *v1;
  *(*v1 + 224) = v0;

  if (v0)
  {
    v3 = *(v2 + 144);

    v4 = sub_229645398;
  }

  else
  {
    v3 = *(v2 + 144);

    v4 = sub_2296451D0;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_2296451D0()
{

  v1 = swift_task_alloc();
  *(v0 + 232) = v1;
  *v1 = v0;
  v1[1] = sub_22964527C;
  v2 = *(v0 + 120);

  return sub_229633730(v2);
}

uint64_t sub_22964527C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 240) = a1;
  *(v3 + 248) = v1;

  if (v1)
  {

    v4 = sub_229656520;
  }

  else
  {
    v4 = sub_2296453B4;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2296453B4()
{
  v1 = v0[30];
  if (v1 && (objc_opt_self(), (v2 = swift_dynamicCastObjCClass()) != 0))
  {
    v3 = v2;
    v4 = v1;
    sub_22964206C(v3, 0, 1);
    v5 = v0[25];
    sub_229656184(v0[15]);
  }

  else
  {
    v6 = v0[25];
    v7 = v0[15];

    sub_2296561E0();
    swift_allocError();
    *v8 = 0xD000000000000016;
    v8[1] = 0x800000022A58E510;
    swift_willThrow();

    sub_229656184(v7);
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_22964550C()
{
  v0[38] = type metadata accessor for HomePassState(0);
  v1 = swift_task_alloc();
  v0[39] = v1;
  v2 = swift_task_alloc();
  v0[40] = v2;
  *v2 = v0;
  v2[1] = sub_2296455D4;

  return sub_229633120(v1);
}

uint64_t sub_2296455D4()
{
  *(*v1 + 328) = v0;

  if (v0)
  {
    v2 = sub_229647510;
  }

  else
  {
    v2 = sub_2296456E8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2296456E8()
{
  if (qword_281402DF8 != -1)
  {
    swift_once();
  }

  v1 = static PassUpdater.shared;
  *(v0 + 336) = static PassUpdater.shared;

  return MEMORY[0x2822009F8](sub_229645784, v1, 0);
}

uint64_t sub_229645784()
{
  v1 = v0[42];
  v2 = v0[39];
  v3 = swift_task_alloc();
  v0[43] = v3;
  v3[2] = v1;
  v3[3] = 0;
  v3[4] = v2;
  v7 = (*MEMORY[0x277D0EF78] + MEMORY[0x277D0EF78]);
  v4 = swift_task_alloc();
  v0[44] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E2A0, &qword_22A57B798);
  v0[45] = v5;
  *v4 = v0;
  v4[1] = sub_229645890;

  return v7(v0 + 8, &unk_22A57B868, v3, v5);
}

uint64_t sub_229645890()
{
  v2 = *v1;
  *(*v1 + 368) = v0;

  if (v0)
  {
    v3 = *(v2 + 336);
    v4 = sub_229645BC8;
  }

  else
  {
    v5 = *(v2 + 336);

    v4 = sub_2296459B4;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_2296459B4()
{
  *(v0 + 376) = *(v0 + 72);
  *(v0 + 392) = *(v0 + 88);
  return MEMORY[0x2822009F8](sub_2296459E4, 0, 0);
}

uint64_t sub_2296459E4()
{
  v1 = *(v0 + 376);
  if (v1 >> 62)
  {
    v2 = sub_22A4DE0EC();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = 0xD00000000000001BLL;
  if (v2 == 2)
  {
    v4 = *(v0 + 384);
    if (v4 >> 62)
    {
      if (sub_22A4DE0EC() == 2)
      {
        goto LABEL_6;
      }
    }

    else if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10) == 2)
    {
LABEL_6:
      v5 = *(v0 + 336);
      v6 = *(v0 + 312);
      v7 = *(*(v0 + 304) + 48);
      *(v0 + 108) = v7;
      v8 = type metadata accessor for HomePassData(0);
      *(v0 + 400) = v8;
      v9 = (v6 + *(v8 + 36) + v7);

      *v9 = 7824750;
      v9[1] = 0xE300000000000000;

      return MEMORY[0x2822009F8](sub_229645C9C, v5, 0);
    }

    v10 = "wrong count for paymentApps";
    v3 = 0xD000000000000020;
  }

  else
  {
    v10 = "ions changed on non roll update";
  }

  v11 = *(v0 + 392);
  v12 = v10 | 0x8000000000000000;
  v13 = *(v0 + 312);
  sub_2296561E0();
  swift_allocError();
  *v14 = v3;
  v14[1] = v12;
  swift_willThrow();

  sub_229656184(v13);

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_229645BC8()
{

  return MEMORY[0x2822009F8](sub_229645C30, 0, 0);
}

uint64_t sub_229645C30()
{
  sub_229656184(*(v0 + 312));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_229645C9C()
{
  v1 = v0[42];
  v2 = v0[39];
  v3 = swift_task_alloc();
  v0[51] = v3;
  v3[2] = v1;
  v3[3] = 0;
  v3[4] = v2;
  v7 = (*MEMORY[0x277D0EF78] + MEMORY[0x277D0EF78]);
  v4 = swift_task_alloc();
  v0[52] = v4;
  *v4 = v0;
  v4[1] = sub_229645D90;
  v5 = v0[45];

  return v7(v0 + 14, &unk_22A57B870, v3, v5);
}

uint64_t sub_229645D90()
{
  v2 = *v1;
  *(*v1 + 424) = v0;

  if (v0)
  {
    v3 = *(v2 + 336);
    v4 = sub_229646120;
  }

  else
  {
    v5 = *(v2 + 336);

    v4 = sub_229645EB8;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_229645EB8()
{
  *(v0 + 432) = *(v0 + 120);
  *(v0 + 448) = *(v0 + 136);
  return MEMORY[0x2822009F8](sub_229645EE4, 0, 0);
}

uint64_t sub_229645EE4()
{
  v1 = (v0 + 448);
  v2 = *(v0 + 432);
  if (v2 >> 62)
  {
    v3 = sub_22A4DE0EC();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = (v0 + 440);
  if (v3 != 2)
  {
    v19 = 0xD00000000000001BLL;
    v5 = (v0 + 448);
    v1 = (v0 + 392);
    v6 = "ions changed on non roll update";
    goto LABEL_8;
  }

  if (*v4 >> 62)
  {
    if (sub_22A4DE0EC())
    {
      goto LABEL_6;
    }
  }

  else if (*((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_6:
    v5 = (v0 + 392);
    v6 = "wrong count for paymentApps";
    v19 = 0xD000000000000020;
LABEL_8:
    v7 = *v1;
    v8 = *v5;
    v9 = v6 | 0x8000000000000000;
    v10 = *(v0 + 312);
    sub_2296561E0();
    swift_allocError();
    *v11 = v19;
    v11[1] = v9;
    swift_willThrow();

    sub_229656184(v10);

    v12 = *(v0 + 8);

    return v12();
  }

  v14 = *(v0 + 400);
  v15 = *(v0 + 336);
  v16 = *(v0 + 312);
  v17 = v16 + *(v0 + 108);
  *(v16 + 16) = 0;
  *(v16 + 24) = 1;
  v18 = *(v14 + 72);
  *(v0 + 156) = v18;
  *(v17 + v18) = 2;

  return MEMORY[0x2822009F8](sub_229646218, v15, 0);
}

uint64_t sub_229646120()
{

  return MEMORY[0x2822009F8](sub_229646188, 0, 0);
}

uint64_t sub_229646188()
{
  v1 = v0[49];
  v2 = v0[39];

  sub_229656184(v2);

  v3 = v0[1];

  return v3();
}

uint64_t sub_229646218()
{
  v1 = v0[42];
  v2 = v0[39];
  v3 = swift_task_alloc();
  v0[57] = v3;
  v3[2] = v1;
  v3[3] = 0;
  v3[4] = v2;
  v7 = (*MEMORY[0x277D0EF78] + MEMORY[0x277D0EF78]);
  v4 = swift_task_alloc();
  v0[58] = v4;
  *v4 = v0;
  v4[1] = sub_22964630C;
  v5 = v0[45];

  return v7(v0 + 20, &unk_22A57B878, v3, v5);
}

uint64_t sub_22964630C()
{
  v2 = *v1;
  *(*v1 + 472) = v0;

  if (v0)
  {
    v3 = *(v2 + 336);
    v4 = sub_2296466B8;
  }

  else
  {
    v5 = *(v2 + 336);

    v4 = sub_229646434;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_229646434()
{
  *(v0 + 480) = *(v0 + 168);
  *(v0 + 496) = *(v0 + 184);
  return MEMORY[0x2822009F8](sub_229646460, 0, 0);
}

uint64_t sub_229646460()
{
  v1 = (v0 + 496);
  v2 = *(v0 + 480);
  if (v2 >> 62)
  {
    v3 = sub_22A4DE0EC();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = (v0 + 488);
  if (v3 != 1)
  {
    v16 = 0xD00000000000001BLL;
    v5 = (v0 + 496);
    v1 = (v0 + 392);
    v6 = "ions changed on non roll update";
    goto LABEL_8;
  }

  if (*v4 >> 62)
  {
    if (sub_22A4DE0EC())
    {
      goto LABEL_6;
    }
  }

  else if (*((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_6:
    v5 = (v0 + 392);
    v6 = "wrong count for paymentApps";
    v16 = 0xD000000000000020;
LABEL_8:
    v14 = *(v0 + 448);
    v15 = *v1;
    v13 = *v5;
    v7 = v6 | 0x8000000000000000;
    v8 = *(v0 + 312);
    sub_2296561E0();
    swift_allocError();
    *v9 = v16;
    v9[1] = v7;
    swift_willThrow();

    sub_229656184(v8);

    v10 = *(v0 + 8);

    return v10();
  }

  v12 = *(v0 + 336);
  *(*(v0 + 312) + *(v0 + 108) + *(v0 + 156)) = 1;

  return MEMORY[0x2822009F8](sub_2296467D4, v12, 0);
}

uint64_t sub_2296466B8()
{

  return MEMORY[0x2822009F8](sub_229646720, 0, 0);
}

uint64_t sub_229646720()
{
  v1 = v0[56];
  v2 = v0[49];
  v3 = v0[39];

  sub_229656184(v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_2296467D4()
{
  v1 = v0[42];
  v2 = v0[39];
  v3 = swift_task_alloc();
  v0[63] = v3;
  v3[2] = v1;
  v3[3] = 0;
  v3[4] = v2;
  v7 = (*MEMORY[0x277D0EF78] + MEMORY[0x277D0EF78]);
  v4 = swift_task_alloc();
  v0[64] = v4;
  *v4 = v0;
  v4[1] = sub_2296468C8;
  v5 = v0[45];

  return v7(v0 + 26, &unk_22A57B880, v3, v5);
}

uint64_t sub_2296468C8()
{
  v2 = *v1;
  *(*v1 + 520) = v0;

  if (v0)
  {
    v3 = *(v2 + 336);
    v4 = sub_229646D08;
  }

  else
  {
    v5 = *(v2 + 336);

    v4 = sub_2296469F0;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_2296469F0()
{
  *(v0 + 528) = *(v0 + 216);
  *(v0 + 544) = *(v0 + 232);
  return MEMORY[0x2822009F8](sub_229646A1C, 0, 0);
}

uint64_t sub_229646A1C()
{
  v1 = *(v0 + 528);
  if (!(v1 >> 62))
  {
    if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10) == 2)
    {
      goto LABEL_3;
    }

LABEL_11:
    v5 = *(v0 + 496);
    v6 = *(v0 + 448);
    v7 = *(v0 + 392);
    v14 = *(v0 + 544);
    v9 = 0x800000022A58E9E0;
    v15 = *(v0 + 312);
    sub_2296561E0();
    swift_allocError();
    v11 = 0xD00000000000001BLL;
LABEL_14:
    *v10 = v11;
    v10[1] = v9;
    swift_willThrow();
    v4 = v14;
    goto LABEL_15;
  }

  if (sub_22A4DE0EC() != 2)
  {
    goto LABEL_11;
  }

LABEL_3:
  v2 = *(v0 + 536);
  if (!(v2 >> 62))
  {
    if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (sub_22A4DE0EC() != 1)
  {
LABEL_13:
    v5 = *(v0 + 496);
    v6 = *(v0 + 448);
    v7 = *(v0 + 392);
    v14 = *(v0 + 544);
    v9 = 0x800000022A58EA00;
    v15 = *(v0 + 312);
    sub_2296561E0();
    swift_allocError();
    v11 = 0xD000000000000020;
    goto LABEL_14;
  }

LABEL_5:
  v3 = *(v0 + 520);
  sub_229647574((v0 + 16));
  if (v3)
  {
    v4 = *(v0 + 544);
    v5 = *(v0 + 496);
    v6 = *(v0 + 448);
    v7 = *(v0 + 392);
    v15 = *(v0 + 312);
LABEL_15:

    sub_229656184(v15);

    v12 = *(v0 + 8);

    return v12();
  }

  v8 = *(v0 + 336);
  sub_2296564B4(v0 + 16, *(v0 + 312) + *(v0 + 108) + *(*(v0 + 400) + 32));

  return MEMORY[0x2822009F8](sub_229646E50, v8, 0);
}

uint64_t sub_229646D08()
{

  return MEMORY[0x2822009F8](sub_229646D70, 0, 0);
}

uint64_t sub_229646D70()
{
  v1 = v0[62];
  v2 = v0[56];
  v3 = v0[49];
  v4 = v0[39];

  sub_229656184(v4);

  v5 = v0[1];

  return v5();
}

uint64_t sub_229646E50()
{
  v1 = v0[42];
  v2 = v0[39];
  v3 = swift_task_alloc();
  v0[69] = v3;
  v3[2] = v1;
  v3[3] = 0;
  v3[4] = v2;
  v7 = (*MEMORY[0x277D0EF78] + MEMORY[0x277D0EF78]);
  v4 = swift_task_alloc();
  v0[70] = v4;
  *v4 = v0;
  v4[1] = sub_229646F44;
  v5 = v0[45];

  return v7(v0 + 32, &unk_22A57B888, v3, v5);
}

uint64_t sub_229646F44()
{
  v2 = *v1;
  *(*v1 + 568) = v0;

  if (v0)
  {
    v3 = *(v2 + 336);
    v4 = sub_229647398;
  }

  else
  {
    v5 = *(v2 + 336);

    v4 = sub_22964706C;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_22964706C()
{
  *(v0 + 576) = *(v0 + 264);
  *(v0 + 592) = *(v0 + 280);
  return MEMORY[0x2822009F8](sub_22964709C, 0, 0);
}

uint64_t sub_22964709C()
{
  v1 = v0[72];
  if (v1 >> 62)
  {
    v2 = sub_22A4DE0EC();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = 0xD00000000000001BLL;
  if (v2 == 2)
  {
    v4 = v0[73];
    if (v4 >> 62)
    {
      v5 = sub_22A4DE0EC();
    }

    else
    {
      v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v6 = v0[39];
    v16 = v0[68];
    v17 = v0[74];
    v14 = v0[56];
    v15 = v0[62];
    v13 = v0[49];
    if (v5 == 2)
    {

      sub_229656184(v6);

      v7 = v0[1];
      goto LABEL_11;
    }

    v12 = v0[39];
    v8 = "wrong count for paymentApps";
    v3 = 0xD000000000000020;
  }

  else
  {
    v16 = v0[68];
    v17 = v0[74];
    v14 = v0[56];
    v15 = v0[62];
    v13 = v0[49];
    v8 = "ions changed on non roll update";
    v12 = v0[39];
  }

  v9 = v8 | 0x8000000000000000;
  sub_2296561E0();
  swift_allocError();
  *v10 = v3;
  v10[1] = v9;
  swift_willThrow();

  sub_229656184(v12);

  v7 = v0[1];
LABEL_11:

  return v7();
}

uint64_t sub_229647398()
{

  return MEMORY[0x2822009F8](sub_229647400, 0, 0);
}

uint64_t sub_229647400()
{
  v1 = v0[68];
  v2 = v0[62];
  v7 = v0[49];
  v5 = v0[56];
  v6 = v0[39];

  sub_229656184(v6);

  v3 = v0[1];

  return v3();
}

uint64_t sub_229647510()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_229647574(uint64_t *a1@<X8>)
{
  v3 = objc_opt_self();
  v4 = [v3 createNIST256KeyPair];
  if (v4)
  {
    v5 = v4;
    v6 = sub_22A4DB62C();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0xF000000000000000;
  }

  v38 = v8;
  v9 = MEMORY[0x277CC9318];
  v35 = MEMORY[0x277CC9318];
  sub_22A4DBD4C();
  if (v1)
  {
    sub_229590D18(v6, v38);
  }

  else
  {
    v37 = a1;
    sub_229590D18(v6, v38);
    v10 = sub_22A4DB61C();
    v11 = [v3 publicKeyExternalRepresentationFromKeyPairExternalRepresentation_];

    if (v11)
    {
      v12 = sub_22A4DB62C();
      v14 = v13;
    }

    else
    {
      v12 = 0;
      v14 = 0xF000000000000000;
    }

    sub_22A4DBD4C();
    sub_229590D18(v12, v14);
    v15 = sub_22A4DB61C();
    v16 = [v3 publicKeyFromKeyPairExternalRepresentation_];

    if (v16)
    {
      v17 = sub_22A4DB62C();
      v19 = v18;
    }

    else
    {
      v17 = 0;
      v19 = 0xF000000000000000;
    }

    sub_22A4DBD4C();
    sub_229590D18(v17, v19);
    v20 = sub_22A4DB61C();
    v21 = [v3 privateKeyFromKeyPairExternalRepresentation_];

    if (v21)
    {
      v22 = sub_22A4DB62C();
      v24 = v23;
    }

    else
    {
      v22 = 0;
      v24 = 0xF000000000000000;
    }

    sub_22A4DBD4C();
    sub_229590D18(v22, v24);
    v25 = objc_opt_self();
    v26 = sub_22A4DB61C();
    v27 = [v25 identifierForKey_];

    v36 = sub_22A4DB62C();
    v29 = v28;

    v30 = sub_22A4DB61C();
    v31 = [v3 identifier16BytesForKey_];

    v32 = sub_22A4DB62C();
    v34 = v33;
    sub_2295798D4(v39, v40);
    sub_2295798D4(v39, v40);
    sub_2295798D4(v39, v40);

    *v37 = v39;
    v37[1] = v40;
    v37[2] = v36;
    v37[3] = v29;
    v37[4] = v32;
    v37[5] = v34;
  }
}

uint64_t sub_2296479B0()
{
  v0[14] = type metadata accessor for HomePassState(0);
  v1 = swift_task_alloc();
  v0[15] = v1;
  v2 = swift_task_alloc();
  v0[16] = v2;
  *v2 = v0;
  v2[1] = sub_229647A78;

  return sub_229633120(v1);
}

uint64_t sub_229647A78()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = sub_22965652C;
  }

  else
  {
    v2 = sub_229647B8C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_229647B8C()
{
  v1 = *(v0 + 120);
  *(v1 + 9) = 1;
  *(v1 + 16) = 4;
  *(v1 + 24) = 0;
  if (qword_281402DF8 != -1)
  {
    swift_once();
  }

  v2 = static PassUpdater.shared;
  *(v0 + 144) = static PassUpdater.shared;

  return MEMORY[0x2822009F8](sub_229647C40, v2, 0);
}

uint64_t sub_229647C40()
{
  v1 = v0[18];
  v2 = v0[15];
  v3 = swift_task_alloc();
  v0[19] = v3;
  v3[2] = v1;
  v3[3] = 0;
  v3[4] = v2;
  v7 = (*MEMORY[0x277D0EF78] + MEMORY[0x277D0EF78]);
  v4 = swift_task_alloc();
  v0[20] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E2A0, &qword_22A57B798);
  v0[21] = v5;
  *v4 = v0;
  v4[1] = sub_229647D4C;

  return v7(v0 + 2, &unk_22A57B840, v3, v5);
}

uint64_t sub_229647D4C()
{
  v2 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v3 = *(v2 + 144);
    v4 = sub_229634F3C;
  }

  else
  {
    v5 = *(v2 + 144);

    v4 = sub_229647E70;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_229647E70()
{

  *(v0 + 184) = *(v0 + 48);

  return MEMORY[0x2822009F8](sub_229647EF0, 0, 0);
}

uint64_t sub_229647EF0(uint64_t a1)
{
  if (v1[23] == 2)
  {
    v2 = swift_task_alloc();
    v1[24] = v2;
    *v2 = v1;
    v2[1] = sub_229648028;
    v3 = v1[15];

    return sub_229633730(v3);
  }

  else
  {
    v5 = v1[15];
    sub_2296561E0();
    swift_allocError();
    *v6 = 0xD000000000000020;
    v6[1] = 0x800000022A58E900;
    swift_willThrow();
    sub_229656184(v5);

    v7 = v1[1];

    return v7();
  }
}

uint64_t sub_229648028(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 200) = v1;

  if (v1)
  {
    v5 = sub_229635738;
  }

  else
  {
    *(v4 + 208) = a1;
    v5 = sub_229648150;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_229648150(uint64_t a1)
{
  v2 = v1[26];
  if (v2 && (objc_opt_self(), v3 = swift_dynamicCastObjCClass(), (v1[27] = v3) != 0))
  {
    if (qword_281402F18 != -1)
    {
      swift_once();
    }

    v4 = static PassLibrary.shared;
    v1[28] = static PassLibrary.shared;

    return MEMORY[0x2822009F8](sub_2296482BC, v4, 0);
  }

  else
  {
    v5 = v1[15];
    sub_2296561E0();
    swift_allocError();
    *v6 = 0xD000000000000023;
    v6[1] = 0x800000022A58E4B0;
    swift_willThrow();

    sub_229656184(v5);

    v7 = v1[1];

    return v7();
  }
}

uint64_t sub_2296482BC()
{
  v1 = *(v0 + 27);
  v2 = swift_task_alloc();
  *(v0 + 29) = v2;
  *(v2 + 16) = v1;
  v5 = (*MEMORY[0x277D0EF78] + MEMORY[0x277D0EF78]);
  v3 = swift_task_alloc();
  *(v0 + 30) = v3;
  *v3 = v0;
  v3[1] = sub_2296483A8;

  return v5(v0 + 57, &unk_22A57B848, v2, &type metadata for ExpressSettings);
}

uint64_t sub_2296483A8()
{
  v2 = *v1;
  *(*v1 + 248) = v0;

  if (v0)
  {
    v3 = *(v2 + 224);
    v4 = sub_229648674;
  }

  else
  {
    v5 = *(v2 + 224);

    v4 = sub_2296484CC;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_2296484CC()
{
  v0[61] = v0[57];
  v0[62] = v0[58];
  return MEMORY[0x2822009F8](sub_2296484F8, 0, 0);
}

uint64_t sub_2296484F8(uint64_t a1)
{
  v2 = 0xD000000000000013;
  if (*(v1 + 61))
  {
    v3 = " was not enabled";
    v2 = 0xD000000000000021;
LABEL_8:
    v9 = v3 | 0x8000000000000000;
    v10 = *(v1 + 208);
    v11 = *(v1 + 120);
    sub_2296561E0();
    swift_allocError();
    *v12 = v2;
    v12[1] = v9;
    swift_willThrow();

    sub_229656184(v11);

    v13 = *(v1 + 8);

    return v13();
  }

  if (*(v1 + 62) != 1)
  {
    v3 = "NFC was not enabled";
    goto LABEL_8;
  }

  v4 = *(v1 + 144);
  v5 = *(v1 + 112);
  v6 = *(v1 + 120);
  *(v6 + 9) = 2;
  v7 = *(v5 + 48);
  v8 = (v6 + *(type metadata accessor for HomePassData(0) + 36) + v7);

  *v8 = 0x656D616E2077656ELL;
  v8[1] = 0xE800000000000000;

  return MEMORY[0x2822009F8](sub_229648754, v4, 0);
}

uint64_t sub_229648674()
{

  return MEMORY[0x2822009F8](sub_2296486DC, 0, 0);
}

uint64_t sub_2296486DC()
{
  v1 = *(v0 + 120);

  sub_229656184(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_229648754()
{
  v1 = v0[18];
  v2 = v0[15];
  v3 = swift_task_alloc();
  v0[32] = v3;
  v3[2] = v1;
  v3[3] = 0;
  v3[4] = v2;
  v7 = (*MEMORY[0x277D0EF78] + MEMORY[0x277D0EF78]);
  v4 = swift_task_alloc();
  v0[33] = v4;
  *v4 = v0;
  v4[1] = sub_229648848;
  v5 = v0[21];

  return v7(v0 + 8, &unk_22A57B850, v3, v5);
}

uint64_t sub_229648848()
{
  v2 = *v1;
  *(*v1 + 272) = v0;

  if (v0)
  {
    v3 = *(v2 + 144);
    v4 = sub_229648B38;
  }

  else
  {
    v5 = *(v2 + 144);

    v4 = sub_229648970;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_229648970()
{

  *(v0 + 280) = *(v0 + 96);

  return MEMORY[0x2822009F8](sub_2296489F0, 0, 0);
}

uint64_t sub_2296489F0(uint64_t a1)
{
  if (v1[35])
  {
    v2 = v1[26];
    v3 = v1[15];
    sub_2296561E0();
    swift_allocError();
    *v4 = 0xD00000000000001FLL;
    v4[1] = 0x800000022A58E960;
    swift_willThrow();

    sub_229656184(v3);

    v5 = v1[1];

    return v5();
  }

  else
  {
    v7 = swift_task_alloc();
    v1[36] = v7;
    *v7 = v1;
    v7[1] = sub_229648C18;
    v8 = v1[15];

    return sub_229633730(v8);
  }
}

uint64_t sub_229648B38()
{

  return MEMORY[0x2822009F8](sub_229648BA0, 0, 0);
}

uint64_t sub_229648BA0()
{
  v1 = *(v0 + 120);

  sub_229656184(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_229648C18(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 296) = v1;

  if (v1)
  {
    v5 = sub_229649458;
  }

  else
  {
    *(v4 + 304) = a1;
    v5 = sub_229648D40;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_229648D40(uint64_t a1)
{
  v2 = v1[38];
  if (v2)
  {
    objc_opt_self();
    v3 = swift_dynamicCastObjCClass();
    v1[39] = v3;
    if (v3)
    {
      v4 = v3;
      v5 = v1[27];
      v6 = v2;
      v7 = [v5 paymentApplications];
      if (v7)
      {
        v8 = v7;
        sub_229562F68(0, &qword_281401930, 0x277D37FE0);
        sub_2296562D4();
        v9 = sub_22A4DDB6C();
      }

      else
      {
        v9 = 0;
      }

      v12 = [v4 paymentApplications];
      if (v12)
      {
        v13 = v12;
        sub_229562F68(0, &qword_281401930, 0x277D37FE0);
        sub_2296562D4();
        v14 = sub_22A4DDB6C();

        if (v9)
        {
          if (v14)
          {
            v15 = sub_2296CBED4(v9, v14);

            if (v15)
            {
              goto LABEL_20;
            }

            goto LABEL_16;
          }

LABEL_15:

LABEL_16:
          v16 = v1[26];
          v10 = v1[15];
          sub_2296561E0();
          swift_allocError();
          *v17 = 0xD00000000000002FLL;
          v17[1] = 0x800000022A58E9B0;
          swift_willThrow();

          v2 = v6;
          goto LABEL_17;
        }

        if (v14)
        {
          goto LABEL_15;
        }
      }

      else if (v9)
      {
        goto LABEL_15;
      }

LABEL_20:
      v20 = v1[28];

      return MEMORY[0x2822009F8](sub_229648FE4, v20, 0);
    }
  }

  v6 = v1[26];
  v10 = v1[15];
  sub_2296561E0();
  swift_allocError();
  *v11 = 0xD000000000000025;
  v11[1] = 0x800000022A58E980;
  swift_willThrow();
LABEL_17:

  sub_229656184(v10);

  v18 = v1[1];

  return v18();
}

uint64_t sub_229648FE4()
{
  v1 = *(v0 + 39);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *(v2 + 16) = v1;
  v5 = (*MEMORY[0x277D0EF78] + MEMORY[0x277D0EF78]);
  v3 = swift_task_alloc();
  *(v0 + 41) = v3;
  *v3 = v0;
  v3[1] = sub_2296490D4;

  return v5(v0 + 59, &unk_22A57B858, v2, &type metadata for ExpressSettings);
}

uint64_t sub_2296490D4()
{
  v2 = *v1;
  *(*v1 + 336) = v0;

  if (v0)
  {
    v3 = *(v2 + 224);
    v4 = sub_229649364;
  }

  else
  {
    v5 = *(v2 + 224);

    v4 = sub_2296491FC;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_2296491FC()
{
  v0[63] = v0[59];
  v0[105] = v0[60];
  return MEMORY[0x2822009F8](sub_229649228, 0, 0);
}

uint64_t sub_229649228(uint64_t a1)
{
  v2 = 0xD000000000000013;
  if (*(v1 + 63))
  {
    v3 = *(v1 + 304);
    v4 = *(v1 + 208);
    v5 = *(v1 + 120);
    v6 = " was not enabled";
    v2 = 0xD000000000000021;
  }

  else
  {
    v3 = *(v1 + 304);
    v4 = *(v1 + 208);
    v5 = *(v1 + 120);
    if (*(v1 + 105))
    {

      sub_229656184(v5);

      v7 = *(v1 + 8);
      goto LABEL_7;
    }

    v6 = "NFC was not enabled";
  }

  v8 = v6 | 0x8000000000000000;
  sub_2296561E0();
  swift_allocError();
  *v9 = v2;
  v9[1] = v8;
  swift_willThrow();

  sub_229656184(v5);

  v7 = *(v1 + 8);
LABEL_7:

  return v7();
}

uint64_t sub_229649364()
{

  return MEMORY[0x2822009F8](sub_2296493CC, 0, 0);
}

uint64_t sub_2296493CC()
{
  v1 = v0[38];
  v2 = v0[26];
  v3 = v0[15];

  sub_229656184(v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_229649458()
{
  v1 = *(v0 + 120);

  sub_229656184(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2296494D0()
{
  v0[14] = type metadata accessor for HomePassState(0);
  v1 = swift_task_alloc();
  v0[15] = v1;
  v2 = swift_task_alloc();
  v0[16] = v2;
  *v2 = v0;
  v2[1] = sub_229649598;

  return sub_229633120(v1);
}

uint64_t sub_229649598()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = sub_22965652C;
  }

  else
  {
    v2 = sub_2296496AC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2296496AC()
{
  v1 = *(v0 + 120);
  v2 = *(*(v0 + 112) + 48);
  *(v0 + 108) = v2;
  v3 = v1 + v2;
  v4 = type metadata accessor for HomePassData(0);
  v5 = *(v4 + 72);
  *(v0 + 344) = v5;
  *(v3 + v5) = 2;
  *(v3 + *(v4 + 40)) = 5;
  if (qword_281402DF8 != -1)
  {
    swift_once();
  }

  v6 = static PassUpdater.shared;
  *(v0 + 144) = static PassUpdater.shared;

  return MEMORY[0x2822009F8](sub_22964977C, v6, 0);
}

uint64_t sub_22964977C()
{
  v1 = v0[18];
  v2 = v0[15];
  v3 = swift_task_alloc();
  v0[19] = v3;
  v3[2] = v1;
  v3[3] = 0;
  v3[4] = v2;
  v7 = (*MEMORY[0x277D0EF78] + MEMORY[0x277D0EF78]);
  v4 = swift_task_alloc();
  v0[20] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E2A0, &qword_22A57B798);
  v0[21] = v5;
  *v4 = v0;
  v4[1] = sub_229649888;

  return v7(v0 + 2, &unk_22A57B818, v3, v5);
}

uint64_t sub_229649888()
{
  v2 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v3 = *(v2 + 144);
    v4 = sub_229637B7C;
  }

  else
  {
    v5 = *(v2 + 144);

    v4 = sub_2296499AC;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_2296499AC()
{

  *(v0 + 184) = *(v0 + 48);

  return MEMORY[0x2822009F8](sub_229649A2C, 0, 0);
}

uint64_t sub_229649A2C(uint64_t a1)
{
  if (v1[23] == 1)
  {
    v2 = swift_task_alloc();
    v1[24] = v2;
    *v2 = v1;
    v2[1] = sub_229649B64;
    v3 = v1[15];

    return sub_229633730(v3);
  }

  else
  {
    v5 = v1[15];
    sub_2296561E0();
    swift_allocError();
    *v6 = 0xD000000000000022;
    v6[1] = 0x800000022A58E7D0;
    swift_willThrow();
    sub_229656184(v5);

    v7 = v1[1];

    return v7();
  }
}

uint64_t sub_229649B64(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 200) = v1;

  if (v1)
  {
    v5 = sub_229656550;
  }

  else
  {
    *(v4 + 208) = a1;
    v5 = sub_229649C8C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_229649C8C(uint64_t a1)
{
  v2 = v1[26];
  if (v2 && (objc_opt_self(), v3 = swift_dynamicCastObjCClass(), (v1[27] = v3) != 0))
  {
    v4 = qword_281402F18;
    v5 = v2;
    if (v4 != -1)
    {
      swift_once();
    }

    v6 = static PassLibrary.shared;
    v1[28] = static PassLibrary.shared;

    return MEMORY[0x2822009F8](sub_229649DFC, v6, 0);
  }

  else
  {
    v7 = v1[15];
    sub_2296561E0();
    swift_allocError();
    *v8 = 0xD000000000000016;
    v8[1] = 0x800000022A58E510;
    swift_willThrow();

    sub_229656184(v7);

    v9 = v1[1];

    return v9();
  }
}

uint64_t sub_229649DFC()
{
  v1 = *(v0 + 27);
  v2 = swift_task_alloc();
  *(v0 + 29) = v2;
  *(v2 + 16) = v1;
  v5 = (*MEMORY[0x277D0EF78] + MEMORY[0x277D0EF78]);
  v3 = swift_task_alloc();
  *(v0 + 30) = v3;
  *v3 = v0;
  v3[1] = sub_229649EE8;

  return v5(v0 + 57, &unk_22A57B820, v2, &type metadata for ExpressSettings);
}

uint64_t sub_229649EE8()
{
  v2 = *v1;
  *(v2 + 248) = v0;

  v3 = *(v2 + 224);
  if (v0)
  {

    v4 = sub_22964A1DC;
  }

  else
  {

    v4 = sub_22964A04C;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_22964A04C()
{
  v0[61] = v0[57];
  v0[62] = v0[58];
  return MEMORY[0x2822009F8](sub_22964A078, 0, 0);
}

uint64_t sub_22964A078(uint64_t a1)
{
  if (*(v1 + 61) != 1)
  {
    v2 = 0x800000022A58E800;
    v3 = 0xD000000000000021;
    goto LABEL_5;
  }

  if (*(v1 + 62))
  {
    v2 = 0xEF64656C62616E65;
    v3 = 0x2073617720425755;
LABEL_5:
    v4 = *(v1 + 208);
    v5 = *(v1 + 120);
    sub_2296561E0();
    swift_allocError();
    *v6 = v3;
    v6[1] = v2;
    swift_willThrow();

    sub_229656184(v5);

    v7 = *(v1 + 8);

    return v7();
  }

  v9 = *(v1 + 144);
  v10 = *(v1 + 120);
  *(v10 + *(v1 + 108) + *(v1 + 344)) = 1;
  *(v10 + 9) = 1;

  return MEMORY[0x2822009F8](sub_22964A1F8, v9, 0);
}

uint64_t sub_22964A1F8()
{
  v1 = v0[18];
  v2 = v0[15];
  v3 = swift_task_alloc();
  v0[32] = v3;
  v3[2] = v1;
  v3[3] = 0;
  v3[4] = v2;
  v7 = (*MEMORY[0x277D0EF78] + MEMORY[0x277D0EF78]);
  v4 = swift_task_alloc();
  v0[33] = v4;
  *v4 = v0;
  v4[1] = sub_22964A2EC;
  v5 = v0[21];

  return v7(v0 + 8, &unk_22A57B828, v3, v5);
}

uint64_t sub_22964A2EC()
{
  v2 = *v1;
  *(*v1 + 272) = v0;

  if (v0)
  {
    v3 = *(v2 + 144);
    v4 = sub_22964A5E4;
  }

  else
  {
    v5 = *(v2 + 144);

    v4 = sub_22964A414;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_22964A414()
{

  *(v0 + 280) = *(v0 + 96);

  return MEMORY[0x2822009F8](sub_22964A494, 0, 0);
}

uint64_t sub_22964A494(uint64_t a1)
{
  if (v1[35] == 2)
  {
    v2 = swift_task_alloc();
    v1[36] = v2;
    *v2 = v1;
    v2[1] = sub_22964A6C8;
    v3 = v1[15];

    return sub_229633730(v3);
  }

  else
  {
    v5 = v1[26];
    v6 = v1[15];
    sub_2296561E0();
    swift_allocError();
    *v7 = 0xD000000000000022;
    v7[1] = 0x800000022A58E830;
    swift_willThrow();

    sub_229656184(v6);

    v8 = v1[1];

    return v8();
  }
}

uint64_t sub_22964A5E4()
{

  return MEMORY[0x2822009F8](sub_22964A64C, 0, 0);
}

uint64_t sub_22964A64C()
{
  v1 = v0[26];
  v2 = v0[15];

  sub_229656184(v2);

  v3 = v0[1];

  return v3();
}

uint64_t sub_22964A6C8(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 296) = v1;

  if (v1)
  {
    v5 = sub_22964AF18;
  }

  else
  {
    *(v4 + 304) = a1;
    v5 = sub_22964A7F0;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22964A7F0(uint64_t a1)
{
  v2 = *(v1 + 304);
  if (v2)
  {
    objc_opt_self();
    v3 = swift_dynamicCastObjCClass();
    *(v1 + 312) = v3;
    if (v3)
    {
      v4 = v3;
      v5 = v2;
      v6 = [v4 paymentApplications];
      if (v6)
      {
        v7 = v6;
        sub_229562F68(0, &qword_281401930, 0x277D37FE0);
        sub_2296562D4();
        v8 = sub_22A4DDB6C();
      }

      else
      {
        v8 = 0;
      }

      v14 = [*(v1 + 216) paymentApplications];
      if (v14)
      {
        v15 = v14;
        sub_229562F68(0, &qword_281401930, 0x277D37FE0);
        sub_2296562D4();
        v16 = sub_22A4DDB6C();

        if (v8)
        {
          if (v16)
          {
            v17 = sub_2296CBED4(v8, v16);

            if ((v17 & 1) == 0)
            {

LABEL_19:
              v18 = *(v1 + 224);

              return MEMORY[0x2822009F8](sub_22964AAAC, v18, 0);
            }

            goto LABEL_22;
          }

LABEL_18:

          goto LABEL_19;
        }

        if (v16)
        {
          goto LABEL_18;
        }
      }

      else if (v8)
      {
        goto LABEL_18;
      }

LABEL_22:
      v9 = *(v1 + 208);
      v10 = *(v1 + 120);
      sub_2296561E0();
      swift_allocError();
      *v19 = 0xD000000000000032;
      v19[1] = 0x800000022A58E8C0;
      swift_willThrow();

      v2 = v5;
      goto LABEL_6;
    }
  }

  v9 = *(v1 + 208);
  v10 = *(v1 + 120);
  sub_2296561E0();
  swift_allocError();
  *v11 = 0xD000000000000028;
  v11[1] = 0x800000022A58E860;
  swift_willThrow();
  v5 = v9;
LABEL_6:

  sub_229656184(v10);

  v12 = *(v1 + 8);

  return v12();
}

uint64_t sub_22964AAAC()
{
  v1 = *(v0 + 39);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *(v2 + 16) = v1;
  v5 = (*MEMORY[0x277D0EF78] + MEMORY[0x277D0EF78]);
  v3 = swift_task_alloc();
  *(v0 + 41) = v3;
  *v3 = v0;
  v3[1] = sub_22964AB9C;

  return v5(v0 + 59, &unk_22A57B830, v2, &type metadata for ExpressSettings);
}

uint64_t sub_22964AB9C()
{
  v2 = *v1;
  *(*v1 + 336) = v0;

  if (v0)
  {
    v3 = *(v2 + 224);
    v4 = sub_22964AE2C;
  }

  else
  {
    v5 = *(v2 + 224);

    v4 = sub_22964ACD8;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_22964ACD8()
{
  v0[63] = v0[59];
  v0[105] = v0[60];
  return MEMORY[0x2822009F8](sub_22964AD04, 0, 0);
}

uint64_t sub_22964AD04(uint64_t a1)
{
  if (*(v1 + 63) == 1)
  {
    v2 = *(v1 + 304);
    v3 = *(v1 + 208);
    v4 = *(v1 + 120);
    if (*(v1 + 105))
    {

      sub_229656184(v4);

      v5 = *(v1 + 8);
      goto LABEL_7;
    }

    v6 = "UWB was not enabled but should be";
  }

  else
  {
    v2 = *(v1 + 304);
    v3 = *(v1 + 208);
    v4 = *(v1 + 120);
    v6 = "NFC was not enabled but should be";
  }

  v7 = (v6 - 32) | 0x8000000000000000;
  sub_2296561E0();
  swift_allocError();
  *v8 = 0xD000000000000021;
  v8[1] = v7;
  swift_willThrow();

  sub_229656184(v4);

  v5 = *(v1 + 8);
LABEL_7:

  return v5();
}

uint64_t sub_22964AE2C()
{

  return MEMORY[0x2822009F8](sub_22964AE94, 0, 0);
}

uint64_t sub_22964AE94()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 120);

  sub_229656184(v2);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_22964AF18()
{
  v1 = v0[26];
  v2 = v0[15];

  sub_229656184(v2);

  v3 = v0[1];

  return v3();
}

uint64_t sub_22964AF94()
{
  v0[22] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87DBA0, &qword_22A57A158);
  v0[23] = swift_task_alloc();
  v1 = sub_22A4DB7DC();
  v0[24] = v1;
  v0[25] = *(v1 - 8);
  v0[26] = swift_task_alloc();
  v0[27] = type metadata accessor for HomePassState(0);
  v0[28] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D2A0, &unk_22A578BD0);
  v0[29] = swift_task_alloc();
  v0[30] = swift_task_alloc();
  v0[31] = swift_task_alloc();
  v0[32] = swift_task_alloc();
  v0[33] = swift_task_alloc();
  v0[34] = swift_task_alloc();
  v0[35] = swift_task_alloc();
  v0[36] = swift_task_alloc();
  v0[37] = swift_task_alloc();
  v0[38] = swift_task_alloc();
  v0[39] = swift_task_alloc();
  v0[40] = swift_task_alloc();
  v0[41] = swift_task_alloc();
  v0[42] = swift_task_alloc();
  v0[43] = swift_task_alloc();
  v0[44] = swift_task_alloc();
  v0[45] = swift_task_alloc();
  v0[46] = swift_task_alloc();
  v0[47] = swift_task_alloc();
  v0[48] = swift_task_alloc();
  v0[49] = swift_task_alloc();
  v0[50] = swift_task_alloc();
  v0[51] = swift_task_alloc();
  v0[52] = swift_task_alloc();
  v0[53] = swift_task_alloc();
  v0[54] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22964B220, 0, 0);
}

uint64_t sub_22964B220()
{
  v1 = [objc_opt_self() driver];
  v2 = [v1 homeManager];
  v0[55] = v2;

  v3 = [v2 homes];
  if (v3)
  {
    v4 = v3;
    sub_229562F68(0, &qword_2814017B0, off_278666198);
    v5 = sub_22A4DD83C();
  }

  else
  {
    v5 = 0;
  }

  v0[21] = v5;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F2F0, &qword_22A5787B0);
  sub_22A4DBD4C();

  v8 = v0[20];
  if (v8 >> 62)
  {
    result = sub_22A4DE0EC();
    if (result)
    {
      goto LABEL_10;
    }

LABEL_20:

    sub_2296561E0();
    swift_allocError();
    *v21 = 0xD000000000000013;
    v21[1] = 0x800000022A58E770;
    swift_willThrow();

    v6 = v0[1];

    return v6();
  }

  result = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_20;
  }

LABEL_10:
  if ((v8 & 0xC000000000000001) != 0)
  {
    v9 = MEMORY[0x22AAD13F0](0, v8);
  }

  else
  {
    if (!*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v9 = *(v8 + 32);
  }

  v10 = v9;
  v0[56] = v9;

  v11 = v10;
  v12 = [v11 clientWalletKeyUUID];
  if (v12)
  {
    v13 = v12;
    sub_22A4DB79C();

    v14 = 0;
  }

  else
  {
    v14 = 1;
  }

  v16 = v0[53];
  v15 = v0[54];
  v17 = v0[24];
  v18 = *(v0[25] + 56);
  v0[57] = v18;
  v18(v16, v14, 1, v17);
  sub_229564B0C(v16, v15);
  [v11 saveClientWalletKeyUUIDToLocalStore_];
  v19 = swift_task_alloc();
  v0[58] = v19;
  *v19 = v0;
  v19[1] = sub_22964B6C4;
  v20 = v0[28];

  return sub_229633120(v20);
}

uint64_t sub_22964B6C4()
{
  *(*v1 + 472) = v0;

  if (v0)
  {
    v2 = sub_22964E5A0;
  }

  else
  {
    v2 = sub_22964B7D8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22964B7D8()
{
  v2 = *(v0 + 216);
  v1 = *(v0 + 224);
  v4 = *(v0 + 200);
  v3 = *(v0 + 208);
  v5 = *(v0 + 192);
  v6 = [*(v0 + 448) uuid];
  sub_22A4DB79C();

  v7 = *(v2 + 48);
  *(v0 + 60) = v7;
  v8 = type metadata accessor for HomePassData(0);
  *(v0 + 480) = v8;
  v9 = *(v8 + 20);
  *(v0 + 108) = v9;
  v10 = *(v4 + 40);
  *(v0 + 488) = v10;
  *(v0 + 496) = (v4 + 40) & 0xFFFFFFFFFFFFLL | 0xEFDA000000000000;
  v10(v1 + v9 + v7, v3, v5);
  if (qword_281402DF8 != -1)
  {
    swift_once();
  }

  v11 = *(v0 + 448);
  v12 = static PassUpdater.shared;
  *(v0 + 504) = static PassUpdater.shared;
  v13 = v11;

  return MEMORY[0x2822009F8](sub_22964B910, v12, 0);
}

uint64_t sub_22964B910()
{
  v1 = v0[63];
  v2 = v0[56];
  v3 = v0[28];
  v4 = swift_task_alloc();
  v0[64] = v4;
  v4[2] = v1;
  v4[3] = v2;
  v4[4] = v3;
  v8 = (*MEMORY[0x277D0EF78] + MEMORY[0x277D0EF78]);
  v5 = swift_task_alloc();
  v0[65] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E2A0, &qword_22A57B798);
  v0[66] = v6;
  *v5 = v0;
  v5[1] = sub_22964BA24;

  return v8(v0 + 2, &unk_22A57B7F8, v4, v6);
}

uint64_t sub_22964BA24()
{
  v2 = *v1;
  *(*v1 + 536) = v0;

  if (v0)
  {
    v3 = *(v2 + 504);
    v4 = sub_22964BD14;
  }

  else
  {
    v5 = *(v2 + 504);

    v4 = sub_22964BB48;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_22964BB48()
{

  v1 = swift_task_alloc();
  *(v0 + 544) = v1;
  *v1 = v0;
  v1[1] = sub_22964BBF4;
  v2 = *(v0 + 224);

  return sub_229633730(v2);
}

uint64_t sub_22964BBF4(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 552) = a1;
  *(v3 + 560) = v1;

  if (v1)
  {

    v4 = sub_22964E820;
  }

  else
  {
    v4 = sub_22964C014;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_22964BD14()
{

  return MEMORY[0x2822009F8](sub_22964BD88, 0, 0);
}

uint64_t sub_22964BD88()
{
  v1 = v0[54];
  v2 = v0[52];
  v3 = v0[24];
  v4 = v0[25];
  sub_229656184(v0[28]);
  sub_2295F2274(v1, v2);
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    v5 = 0;
  }

  else
  {
    v6 = v0[52];
    v7 = v0[24];
    v8 = v0[25];
    v5 = sub_22A4DB77C();
    (*(v8 + 8))(v6, v7);
  }

  v10 = v0[55];
  v9 = v0[56];
  v11 = v0[54];
  [v9 saveClientWalletKeyUUIDToLocalStore_];

  sub_22953EAE4(v11, &unk_27D87D2A0, &unk_22A578BD0);

  v12 = v0[1];

  return v12();
}

uint64_t sub_22964C014()
{
  v1 = *(v0 + 552);
  if (!v1 || (objc_opt_self(), v2 = swift_dynamicCastObjCClass(), (*(v0 + 568) = v2) == 0))
  {
    v6 = &selRef_runTransformWithError_;
    v8 = (v0 + 200);
    v7 = *(v0 + 200);
    v9 = *(v0 + 432);
    v10 = *(v0 + 408);
    v11 = *(v0 + 224);
    v12 = *(v0 + 192);
    v56 = (v0 + 192);

    sub_2296561E0();
    swift_allocError();
    *v13 = 0xD000000000000023;
    v13[1] = 0x800000022A58E4B0;
    swift_willThrow();

    sub_229656184(v11);
    sub_2295F2274(v9, v10);
    if ((*(v7 + 48))(v10, 1, v12) != 1)
    {
      v15 = (v0 + 408);
LABEL_20:
      v43 = *v15;
      v44 = *v8;
      v45 = *v56;
      v14 = sub_22A4DB77C();
      (*(v44 + 8))(v43, v45);
      goto LABEL_21;
    }

    v14 = 0;
LABEL_21:
    v47 = *(v0 + 440);
    v46 = *(v0 + 448);
    v48 = *(v0 + 432);
    [v46 v6[59]];

    sub_22953EAE4(v48, &unk_27D87D2A0, &unk_22A578BD0);

    v49 = *(v0 + 8);

    return v49();
  }

  v3 = [*(v0 + 448) clientWalletKeyUUID];
  if (v3)
  {
    v4 = v3;
    sub_22A4DB79C();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v8 = (v0 + 200);
  v16 = *(v0 + 200);
  v18 = *(v0 + 392);
  v17 = *(v0 + 400);
  v19 = *(v0 + 192);
  (*(v0 + 456))(v18, v5, 1, v19);
  sub_229564B0C(v18, v17);
  v20 = *(v16 + 48);
  *(v0 + 576) = v20;
  *(v0 + 584) = (v16 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v20(v17, 1, v19) == 1)
  {
    v56 = (v0 + 192);
    v21 = *(v0 + 432);
    v22 = *(v0 + 400);
    v23 = *(v0 + 376);
    v24 = *(v0 + 224);
    v54 = *(v0 + 192);

    sub_2296561E0();
    swift_allocError();
    *v25 = 0xD00000000000001ELL;
    v25[1] = 0x800000022A58E630;
    swift_willThrow();

    sub_22953EAE4(v22, &unk_27D87D2A0, &unk_22A578BD0);
    sub_229656184(v24);
    sub_2295F2274(v21, v23);
    if (v20(v23, 1, v54) != 1)
    {
      v15 = (v0 + 376);
LABEL_19:
      v6 = &selRef_runTransformWithError_;
      goto LABEL_20;
    }

LABEL_14:
    v14 = 0;
    v6 = &selRef_runTransformWithError_;
    goto LABEL_21;
  }

  v26 = *(v0 + 448);
  [v26 saveClientWalletKeyUUIDToLocalStore_];
  v27 = [v26 clientWalletKeyUUID];
  if (v27)
  {
    v28 = *(v0 + 456);
    v58 = *(v0 + 448);
    v55 = *(v0 + 432);
    v51 = *(v0 + 400);
    v57 = v20;
    v29 = *(v0 + 384);
    v53 = *(v0 + 368);
    v52 = *(v0 + 224);
    v30 = *(v0 + 192);
    v31 = v27;
    sub_22A4DB79C();

    v28(v29, 0, 1, v30);
    sub_22953EAE4(v29, &unk_27D87D2A0, &unk_22A578BD0);

    sub_2296561E0();
    swift_allocError();
    *v32 = 0xD00000000000002ALL;
    v32[1] = 0x800000022A58E650;
    swift_willThrow();

    sub_22953EAE4(v51, &unk_27D87D2A0, &unk_22A578BD0);
    sub_229656184(v52);
    sub_2295F2274(v55, v53);
    if (v57(v53, 1, v30) != 1)
    {
      v56 = (v0 + 192);
      v15 = (v0 + 368);
      goto LABEL_19;
    }

    goto LABEL_14;
  }

  v59 = *(v0 + 504);
  v33 = *(v0 + 108);
  v35 = *(v0 + 480);
  v34 = *(v0 + 488);
  v36 = *(v0 + 448);
  v37 = *(v0 + 384);
  v38 = *(v0 + 192);
  v39 = *(v0 + 224) + *(v0 + 60);
  v40 = *(v0 + 208);
  (*(v0 + 456))(v37, 1, 1, v38);
  sub_22953EAE4(v37, &unk_27D87D2A0, &unk_22A578BD0);
  v41 = [v36 uuid];
  sub_22A4DB79C();

  v34(v39 + v33, v40, v38);
  v42 = *(v35 + 68);
  *(v0 + 156) = v42;
  *(v39 + v42) = 0;

  return MEMORY[0x2822009F8](sub_22964C6FC, v59, 0);
}

uint64_t sub_22964C6FC()
{
  v1 = v0[63];
  v2 = v0[56];
  v3 = v0[28];
  v4 = swift_task_alloc();
  v0[74] = v4;
  v4[2] = v1;
  v4[3] = v2;
  v4[4] = v3;
  v8 = (*MEMORY[0x277D0EF78] + MEMORY[0x277D0EF78]);
  v5 = swift_task_alloc();
  v0[75] = v5;
  *v5 = v0;
  v5[1] = sub_22964C7F8;
  v6 = v0[66];

  return v8(v0 + 8, &unk_22A57B800, v4, v6);
}

uint64_t sub_22964C7F8()
{
  v2 = *v1;
  *(*v1 + 608) = v0;

  if (v0)
  {
    v3 = *(v2 + 504);
    v4 = sub_22964CAEC;
  }

  else
  {
    v5 = *(v2 + 504);

    v4 = sub_22964C920;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_22964C920()
{

  v1 = swift_task_alloc();
  *(v0 + 616) = v1;
  *v1 = v0;
  v1[1] = sub_22964C9CC;
  v2 = *(v0 + 224);

  return sub_229633730(v2);
}

uint64_t sub_22964C9CC(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 624) = a1;
  *(v3 + 632) = v1;

  if (v1)
  {

    v4 = sub_22964EAAC;
  }

  else
  {
    v4 = sub_22964CE10;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_22964CAEC()
{

  return MEMORY[0x2822009F8](sub_22964CB60, 0, 0);
}

uint64_t sub_22964CB60()
{
  v1 = *(v0 + 576);
  v2 = *(v0 + 432);
  v3 = *(v0 + 400);
  v4 = *(v0 + 360);
  v5 = *(v0 + 224);
  v6 = *(v0 + 192);

  sub_22953EAE4(v3, &unk_27D87D2A0, &unk_22A578BD0);
  sub_229656184(v5);
  sub_2295F2274(v2, v4);
  if (v1(v4, 1, v6) == 1)
  {
    v7 = 0;
  }

  else
  {
    v8 = *(v0 + 360);
    v9 = *(v0 + 192);
    v10 = *(v0 + 200);
    v7 = sub_22A4DB77C();
    (*(v10 + 8))(v8, v9);
  }

  v12 = *(v0 + 440);
  v11 = *(v0 + 448);
  v13 = *(v0 + 432);
  [v11 saveClientWalletKeyUUIDToLocalStore_];

  sub_22953EAE4(v13, &unk_27D87D2A0, &unk_22A578BD0);

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_22964CE10()
{
  v1 = v0;
  v2 = *(v0 + 624);
  if (!v2 || (objc_opt_self(), v84 = v2, !swift_dynamicCastObjCClass()))
  {
    v11 = (v0 + 192);
    v12 = *(v0 + 576);
    v85 = *(v0 + 192);
    v13 = *(v0 + 552);
    v14 = *(v0 + 432);
    v15 = *(v1 + 400);
    v16 = *(v1 + 352);
    v17 = *(v1 + 224);

    sub_2296561E0();
    swift_allocError();
    *v18 = 0xD00000000000002DLL;
    v18[1] = 0x800000022A58E680;
    swift_willThrow();

    sub_22953EAE4(v15, &unk_27D87D2A0, &unk_22A578BD0);
    sub_229656184(v17);
    sub_2295F2274(v14, v16);
    if (v12(v16, 1, v85) == 1)
    {
      goto LABEL_15;
    }

    v19 = (v1 + 352);
    v86 = (v1 + 200);
LABEL_17:
    v44 = *v19;
    v45 = *v86;
    v46 = *v11;
    v43 = sub_22A4DB77C();
    (*(v45 + 8))(v44, v46);
    goto LABEL_18;
  }

  v3 = *(v0 + 568);
  v4 = *(v0 + 448);
  v5 = *(v0 + 552);
  v6 = sub_22A4DBCDC();
  v7 = [objc_allocWithZone(HMDHomeWalletKey) initWithPKPass:v3 flow:v6];
  *(v0 + 640) = v7;

  v8 = [v4 clientWalletKeyUUID];
  if (v8)
  {
    v9 = v8;
    sub_22A4DB79C();

    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  v87 = *(v0 + 576);
  v20 = *(v0 + 456);
  v11 = (v0 + 192);
  v21 = *(v0 + 192);
  v23 = *(v0 + 336);
  v22 = *(v0 + 344);
  v77 = *(v0 + 184);
  v81 = *(v0 + 176);
  v24 = *(v0 + 200) + 56;
  v20(v22, v10, 1, v21);
  v76 = v7;
  v25 = [v7 uuid];
  sub_22A4DB79C();

  *(v0 + 648) = v24 & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v20(v23, 0, 1, v21);
  v26 = *(v81 + 48);
  sub_2295F2274(v22, v77);
  sub_2295F2274(v23, v77 + v26);
  v27 = v87(v77, 1, v21);
  v28 = *(v0 + 576);
  v86 = (v0 + 200);
  v29 = *(v0 + 192);
  if (v27 == 1)
  {
    v30 = *(v0 + 344);
    sub_22953EAE4(*(v0 + 336), &unk_27D87D2A0, &unk_22A578BD0);
    sub_22953EAE4(v30, &unk_27D87D2A0, &unk_22A578BD0);
    if (v28(v77 + v26, 1, v29) == 1)
    {
      sub_22953EAE4(*(v0 + 184), &unk_27D87D2A0, &unk_22A578BD0);
      goto LABEL_22;
    }

    goto LABEL_13;
  }

  sub_2295F2274(*(v0 + 184), *(v0 + 328));
  v31 = v28(v77 + v26, 1, v29);
  v32 = *(v0 + 336);
  v89 = *(v0 + 344);
  v33 = *(v0 + 328);
  if (v31 == 1)
  {
    v34 = *v86;
    v35 = *v11;
    sub_22953EAE4(v32, &unk_27D87D2A0, &unk_22A578BD0);
    sub_22953EAE4(v89, &unk_27D87D2A0, &unk_22A578BD0);
    (*(v34 + 8))(v33, v35);
LABEL_13:
    sub_22953EAE4(*(v0 + 184), &qword_27D87DBA0, &qword_22A57A158);
LABEL_14:
    v78 = *(v1 + 576);
    v36 = *(v1 + 552);
    v37 = *(v1 + 432);
    v38 = *(v1 + 400);
    v39 = *(v1 + 312);
    v40 = *(v1 + 224);
    v41 = *(v1 + 192);

    sub_2296561E0();
    swift_allocError();
    *v42 = 0xD00000000000003ELL;
    v42[1] = 0x800000022A58E790;
    swift_willThrow();

    sub_22953EAE4(v38, &unk_27D87D2A0, &unk_22A578BD0);
    sub_229656184(v40);
    sub_2295F2274(v37, v39);
    if (v78(v39, 1, v41) == 1)
    {
      goto LABEL_15;
    }

    v19 = (v1 + 312);
    goto LABEL_17;
  }

  v52 = *(v0 + 200);
  v53 = *(v1 + 208);
  v54 = *(v1 + 192);
  v82 = *(v1 + 184);
  (*(v52 + 32))(v53, v77 + v26, v54);
  sub_2295B2378();
  v79 = sub_22A4DD58C();
  v55 = *(v52 + 8);
  v55(v53, v54);
  sub_22953EAE4(v32, &unk_27D87D2A0, &unk_22A578BD0);
  sub_22953EAE4(v89, &unk_27D87D2A0, &unk_22A578BD0);
  v55(v33, v54);
  sub_22953EAE4(v82, &unk_27D87D2A0, &unk_22A578BD0);
  if ((v79 & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_22:
  v56 = [*(v1 + 448) clientWalletKeyUUID];
  if (v56)
  {
    v88 = *(v1 + 156);
    v90 = *(v1 + 504);
    v57 = *(v1 + 108);
    v58 = *(v1 + 488);
    v83 = *(v1 + 480);
    v59 = *(v1 + 448);
    v60 = *(v1 + 456);
    v61 = *(v1 + 320);
    v62 = *(v1 + 208);
    v63 = *(v1 + 224) + *(v1 + 60);
    v64 = *(v1 + 192);
    v65 = v56;
    sub_22A4DB79C();

    v60(v61, 0, 1, v64);
    sub_22953EAE4(v61, &unk_27D87D2A0, &unk_22A578BD0);
    v66 = [v59 uuid];
    sub_22A4DB79C();

    v58(v63 + v57, v62, v64);
    *(v63 + v88) = 0;
    *(v63 + *(v83 + 72)) = 2;

    return MEMORY[0x2822009F8](sub_22964D7C0, v90, 0);
  }

  v80 = *(v1 + 576);
  v67 = *(v1 + 552);
  v68 = *(v1 + 448);
  v69 = *(v1 + 400);
  v70 = *(v1 + 320);
  v71 = *(v1 + 304);
  v74 = *(v1 + 224);
  v75 = *(v1 + 432);
  v72 = *(v1 + 192);
  (*(v1 + 456))(v70, 1, 1, v72);
  sub_22953EAE4(v70, &unk_27D87D2A0, &unk_22A578BD0);

  sub_2296561E0();
  swift_allocError();
  *v73 = 0xD00000000000001ELL;
  v73[1] = 0x800000022A58E630;
  swift_willThrow();

  sub_22953EAE4(v69, &unk_27D87D2A0, &unk_22A578BD0);
  sub_229656184(v74);
  sub_2295F2274(v75, v71);
  if (v80(v71, 1, v72) != 1)
  {
    v19 = (v1 + 304);
    goto LABEL_17;
  }

LABEL_15:
  v43 = 0;
LABEL_18:
  v48 = *(v1 + 440);
  v47 = *(v1 + 448);
  v49 = *(v1 + 432);
  [v47 saveClientWalletKeyUUIDToLocalStore_];

  sub_22953EAE4(v49, &unk_27D87D2A0, &unk_22A578BD0);

  v50 = *(v1 + 8);

  return v50();
}

uint64_t sub_22964D7C0()
{
  v1 = v0[63];
  v2 = v0[56];
  v3 = v0[28];
  v4 = swift_task_alloc();
  v0[82] = v4;
  v4[2] = v1;
  v4[3] = v2;
  v4[4] = v3;
  v8 = (*MEMORY[0x277D0EF78] + MEMORY[0x277D0EF78]);
  v5 = swift_task_alloc();
  v0[83] = v5;
  *v5 = v0;
  v5[1] = sub_22964D8BC;
  v6 = v0[66];

  return v8(v0 + 14, &unk_22A57B808, v4, v6);
}

uint64_t sub_22964D8BC()
{
  v2 = *v1;
  *(*v1 + 672) = v0;

  if (v0)
  {
    v3 = *(v2 + 504);
    v4 = sub_22964DBB0;
  }

  else
  {
    v5 = *(v2 + 504);

    v4 = sub_22964D9E4;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_22964D9E4()
{

  v1 = swift_task_alloc();
  *(v0 + 680) = v1;
  *v1 = v0;
  v1[1] = sub_22964DA98;
  v2 = *(v0 + 224);

  return sub_229633730(v2);
}

uint64_t sub_22964DA98(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 688) = a1;
  *(v3 + 696) = v1;

  if (v1)
  {
    v4 = sub_22964ED5C;
  }

  else
  {
    v4 = sub_22964DEE4;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_22964DBB0()
{

  return MEMORY[0x2822009F8](sub_22964DC24, 0, 0);
}

uint64_t sub_22964DC24()
{
  v1 = *(v0 + 624);
  v2 = *(v0 + 576);
  v3 = *(v0 + 552);
  v4 = *(v0 + 432);
  v5 = *(v0 + 400);
  v6 = *(v0 + 296);
  v7 = *(v0 + 224);
  v8 = *(v0 + 192);

  sub_22953EAE4(v5, &unk_27D87D2A0, &unk_22A578BD0);
  sub_229656184(v7);
  sub_2295F2274(v4, v6);
  if (v2(v6, 1, v8) == 1)
  {
    v9 = 0;
  }

  else
  {
    v10 = *(v0 + 296);
    v11 = *(v0 + 192);
    v12 = *(v0 + 200);
    v9 = sub_22A4DB77C();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(v0 + 440);
  v13 = *(v0 + 448);
  v15 = *(v0 + 432);
  [v13 saveClientWalletKeyUUIDToLocalStore_];

  sub_22953EAE4(v15, &unk_27D87D2A0, &unk_22A578BD0);

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_22964DEE4(uint64_t a1)
{
  v2 = *(v1 + 688);
  if (v2)
  {
    v3 = *(v1 + 640);
    v4 = *(v1 + 624);
    v43 = *(v1 + 576);
    v5 = *(v1 + 552);
    v41 = *(v1 + 432);
    v6 = *(v1 + 400);
    v7 = *(v1 + 280);
    v8 = *(v1 + 224);
    v9 = *(v1 + 192);
    sub_2296561E0();
    swift_allocError();
    *v10 = 0xD000000000000014;
    v10[1] = 0x800000022A58E730;
    swift_willThrow();

    sub_22953EAE4(v6, &unk_27D87D2A0, &unk_22A578BD0);
    sub_229656184(v8);
    sub_2295F2274(v41, v7);
    if (v43(v7, 1, v9) != 1)
    {
      v11 = (v1 + 280);
LABEL_10:
      v25 = *v11;
      v26 = *(v1 + 192);
      v27 = *(v1 + 200);
      v22 = sub_22A4DB77C();
      (*(v27 + 8))(v25, v26);
      goto LABEL_11;
    }
  }

  else
  {
    v12 = [*(v1 + 448) clientWalletKeyUUID];
    v13 = *(v1 + 640);
    v14 = *(v1 + 624);
    v44 = *(v1 + 576);
    v39 = *(v1 + 552);
    v15 = *(v1 + 456);
    v16 = *(v1 + 400);
    v17 = *(v1 + 288);
    v40 = *(v1 + 224);
    v42 = *(v1 + 432);
    v18 = *(v1 + 192);
    if (!v12)
    {
      v23 = *(v1 + 272);
      v15(v17, 1, 1, *(v1 + 192));
      sub_22953EAE4(v17, &unk_27D87D2A0, &unk_22A578BD0);

      sub_22953EAE4(v16, &unk_27D87D2A0, &unk_22A578BD0);
      sub_229656184(v40);
      sub_2295F2274(v42, v23);
      if (v44(v23, 1, v18) == 1)
      {
        v24 = 0;
      }

      else
      {
        v33 = *(v1 + 272);
        v34 = *(v1 + 192);
        v35 = *(v1 + 200);
        v24 = sub_22A4DB77C();
        (*(v35 + 8))(v33, v34);
      }

      v37 = *(v1 + 440);
      v36 = *(v1 + 448);
      v38 = *(v1 + 432);
      [v36 saveClientWalletKeyUUIDToLocalStore_];

      sub_22953EAE4(v38, &unk_27D87D2A0, &unk_22A578BD0);

      v31 = *(v1 + 8);
      goto LABEL_12;
    }

    v19 = *(v1 + 264);
    v20 = v12;
    sub_22A4DB79C();

    v15(v17, 0, 1, v18);
    sub_22953EAE4(v17, &unk_27D87D2A0, &unk_22A578BD0);
    sub_2296561E0();
    swift_allocError();
    *v21 = 0xD00000000000001FLL;
    v21[1] = 0x800000022A58E750;
    swift_willThrow();

    sub_22953EAE4(v16, &unk_27D87D2A0, &unk_22A578BD0);
    sub_229656184(v40);
    sub_2295F2274(v42, v19);
    if (v44(v19, 1, v18) != 1)
    {
      v11 = (v1 + 264);
      goto LABEL_10;
    }
  }

  v22 = 0;
LABEL_11:
  v29 = *(v1 + 440);
  v28 = *(v1 + 448);
  v30 = *(v1 + 432);
  [v28 saveClientWalletKeyUUIDToLocalStore_];

  sub_22953EAE4(v30, &unk_27D87D2A0, &unk_22A578BD0);

  v31 = *(v1 + 8);
LABEL_12:

  return v31();
}

uint64_t sub_22964E5A0()
{
  v1 = v0[32];
  v2 = v0[24];
  v3 = v0[25];
  sub_2295F2274(v0[54], v1);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = 0;
  }

  else
  {
    v5 = v0[32];
    v6 = v0[24];
    v7 = v0[25];
    v4 = sub_22A4DB77C();
    (*(v7 + 8))(v5, v6);
  }

  v9 = v0[55];
  v8 = v0[56];
  v10 = v0[54];
  [v8 saveClientWalletKeyUUIDToLocalStore_];

  sub_22953EAE4(v10, &unk_27D87D2A0, &unk_22A578BD0);

  v11 = v0[1];

  return v11();
}

uint64_t sub_22964E820()
{
  v1 = v0[54];
  v2 = v0[31];
  v3 = v0[24];
  v4 = v0[25];
  sub_229656184(v0[28]);
  sub_2295F2274(v1, v2);
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    v5 = 0;
  }

  else
  {
    v6 = v0[31];
    v7 = v0[24];
    v8 = v0[25];
    v5 = sub_22A4DB77C();
    (*(v8 + 8))(v6, v7);
  }

  v10 = v0[55];
  v9 = v0[56];
  v11 = v0[54];
  [v9 saveClientWalletKeyUUIDToLocalStore_];

  sub_22953EAE4(v11, &unk_27D87D2A0, &unk_22A578BD0);

  v12 = v0[1];

  return v12();
}

uint64_t sub_22964EAAC()
{
  v1 = *(v0 + 576);
  v2 = *(v0 + 432);
  v3 = *(v0 + 400);
  v4 = *(v0 + 240);
  v5 = *(v0 + 224);
  v6 = *(v0 + 192);

  sub_22953EAE4(v3, &unk_27D87D2A0, &unk_22A578BD0);
  sub_229656184(v5);
  sub_2295F2274(v2, v4);
  if (v1(v4, 1, v6) == 1)
  {
    v7 = 0;
  }

  else
  {
    v8 = *(v0 + 240);
    v9 = *(v0 + 192);
    v10 = *(v0 + 200);
    v7 = sub_22A4DB77C();
    (*(v10 + 8))(v8, v9);
  }

  v12 = *(v0 + 440);
  v11 = *(v0 + 448);
  v13 = *(v0 + 432);
  [v11 saveClientWalletKeyUUIDToLocalStore_];

  sub_22953EAE4(v13, &unk_27D87D2A0, &unk_22A578BD0);

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_22964ED5C()
{
  v1 = *(v0 + 624);
  v2 = *(v0 + 576);
  v3 = *(v0 + 552);
  v4 = *(v0 + 432);
  v5 = *(v0 + 400);
  v7 = *(v0 + 224);
  v6 = *(v0 + 232);
  v8 = *(v0 + 192);

  sub_22953EAE4(v5, &unk_27D87D2A0, &unk_22A578BD0);
  sub_229656184(v7);
  sub_2295F2274(v4, v6);
  if (v2(v6, 1, v8) == 1)
  {
    v9 = 0;
  }

  else
  {
    v10 = *(v0 + 232);
    v11 = *(v0 + 192);
    v12 = *(v0 + 200);
    v9 = sub_22A4DB77C();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(v0 + 440);
  v13 = *(v0 + 448);
  v15 = *(v0 + 432);
  [v13 saveClientWalletKeyUUIDToLocalStore_];

  sub_22953EAE4(v15, &unk_27D87D2A0, &unk_22A578BD0);

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_22964F018()
{
  v0[28] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87DBA0, &qword_22A57A158);
  v0[29] = swift_task_alloc();
  v0[30] = swift_task_alloc();
  v1 = sub_22A4DB7DC();
  v0[31] = v1;
  v0[32] = *(v1 - 8);
  v0[33] = swift_task_alloc();
  v0[34] = type metadata accessor for HomePassState(0);
  v0[35] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D2A0, &unk_22A578BD0);
  v0[36] = swift_task_alloc();
  v0[37] = swift_task_alloc();
  v0[38] = swift_task_alloc();
  v0[39] = swift_task_alloc();
  v0[40] = swift_task_alloc();
  v0[41] = swift_task_alloc();
  v0[42] = swift_task_alloc();
  v0[43] = swift_task_alloc();
  v0[44] = swift_task_alloc();
  v0[45] = swift_task_alloc();
  v0[46] = swift_task_alloc();
  v0[47] = swift_task_alloc();
  v0[48] = swift_task_alloc();
  v0[49] = swift_task_alloc();
  v0[50] = swift_task_alloc();
  v0[51] = swift_task_alloc();
  v0[52] = swift_task_alloc();
  v0[53] = swift_task_alloc();
  v0[54] = swift_task_alloc();
  v0[55] = swift_task_alloc();
  v0[56] = swift_task_alloc();
  v0[57] = swift_task_alloc();
  v0[58] = swift_task_alloc();
  v0[59] = swift_task_alloc();
  v0[60] = swift_task_alloc();
  v0[61] = swift_task_alloc();
  v0[62] = swift_task_alloc();
  v0[63] = swift_task_alloc();
  v0[64] = swift_task_alloc();
  v0[65] = swift_task_alloc();
  v0[66] = swift_task_alloc();
  v0[67] = swift_task_alloc();
  v0[68] = swift_task_alloc();
  v0[69] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22964F310, 0, 0);
}

uint64_t sub_22964F310()
{
  v1 = [objc_opt_self() driver];
  v2 = [v1 homeManager];
  v0[70] = v2;

  v3 = [v2 homes];
  if (v3)
  {
    v4 = v3;
    sub_229562F68(0, &qword_2814017B0, off_278666198);
    v5 = sub_22A4DD83C();
  }

  else
  {
    v5 = 0;
  }

  v0[27] = v5;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F2F0, &qword_22A5787B0);
  sub_22A4DBD4C();

  v8 = v0[26];
  if (v8 >> 62)
  {
    result = sub_22A4DE0EC();
    if (result)
    {
      goto LABEL_10;
    }

LABEL_20:

    sub_2296561E0();
    swift_allocError();
    *v21 = 0xD000000000000013;
    v21[1] = 0x800000022A58E770;
    swift_willThrow();

    v6 = v0[1];

    return v6();
  }

  result = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_20;
  }

LABEL_10:
  if ((v8 & 0xC000000000000001) != 0)
  {
    v9 = MEMORY[0x22AAD13F0](0, v8);
  }

  else
  {
    if (!*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v9 = *(v8 + 32);
  }

  v10 = v9;
  v0[71] = v9;

  v11 = v10;
  v12 = [v11 clientWalletKeyUUID];
  if (v12)
  {
    v13 = v12;
    sub_22A4DB79C();

    v14 = 0;
  }

  else
  {
    v14 = 1;
  }

  v15 = v0[69];
  v16 = v0[68];
  v17 = v0[31];
  v18 = *(v0[32] + 56);
  v0[72] = v18;
  v18(v16, v14, 1, v17);
  sub_229564B0C(v16, v15);
  [v11 saveClientWalletKeyUUIDToLocalStore_];
  v19 = swift_task_alloc();
  v0[73] = v19;
  *v19 = v0;
  v19[1] = sub_22964F828;
  v20 = v0[35];

  return sub_229633120(v20);
}

uint64_t sub_22964F828()
{
  *(*v1 + 592) = v0;

  if (v0)
  {
    v2 = sub_229653AA4;
  }

  else
  {
    v2 = sub_22964F93C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22964F93C()
{
  v2 = *(v0 + 272);
  v1 = *(v0 + 280);
  v4 = *(v0 + 256);
  v3 = *(v0 + 264);
  v5 = *(v0 + 248);
  v6 = [*(v0 + 568) uuid];
  sub_22A4DB79C();

  v7 = *(v2 + 48);
  *(v0 + 60) = v7;
  v8 = type metadata accessor for HomePassData(0);
  *(v0 + 600) = v8;
  v9 = *(v8 + 20);
  *(v0 + 108) = v9;
  v10 = *(v4 + 40);
  *(v0 + 608) = v10;
  *(v0 + 616) = (v4 + 40) & 0xFFFFFFFFFFFFLL | 0xEFDA000000000000;
  v10(v1 + v9 + v7, v3, v5);
  *(v1 + 9) = 1;
  if (qword_281402DF8 != -1)
  {
    swift_once();
  }

  v11 = *(v0 + 568);
  v12 = static PassUpdater.shared;
  *(v0 + 624) = static PassUpdater.shared;
  v13 = v11;

  return MEMORY[0x2822009F8](sub_22964FA80, v12, 0);
}

uint64_t sub_22964FA80()
{
  v1 = v0[78];
  v2 = v0[71];
  v3 = v0[35];
  v4 = swift_task_alloc();
  v0[79] = v4;
  v4[2] = v1;
  v4[3] = v2;
  v4[4] = v3;
  v8 = (*MEMORY[0x277D0EF78] + MEMORY[0x277D0EF78]);
  v5 = swift_task_alloc();
  v0[80] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E2A0, &qword_22A57B798);
  v0[81] = v6;
  *v5 = v0;
  v5[1] = sub_22964FB94;

  return v8(v0 + 2, &unk_22A57B7D0, v4, v6);
}

uint64_t sub_22964FB94()
{
  v2 = *v1;
  *(*v1 + 656) = v0;

  if (v0)
  {
    v3 = *(v2 + 624);
    v4 = sub_22964FE88;
  }

  else
  {
    v5 = *(v2 + 624);

    v4 = sub_22964FCBC;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_22964FCBC()
{

  v1 = swift_task_alloc();
  *(v0 + 664) = v1;
  *v1 = v0;
  v1[1] = sub_22964FD68;
  v2 = *(v0 + 280);

  return sub_229633730(v2);
}

uint64_t sub_22964FD68(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 672) = a1;
  *(v3 + 680) = v1;

  if (v1)
  {

    v4 = sub_229653D98;
  }

  else
  {
    v4 = sub_2296501FC;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_22964FE88()
{

  return MEMORY[0x2822009F8](sub_22964FEFC, 0, 0);
}

uint64_t sub_22964FEFC()
{
  v1 = v0[69];
  v2 = v0[67];
  v3 = v0[31];
  v4 = v0[32];
  sub_229656184(v0[35]);
  sub_2295F2274(v1, v2);
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    v5 = 0;
  }

  else
  {
    v6 = v0[67];
    v7 = v0[31];
    v8 = v0[32];
    v5 = sub_22A4DB77C();
    (*(v8 + 8))(v6, v7);
  }

  v9 = v0[71];
  v10 = v0[70];
  v11 = v0[69];
  [v9 saveClientWalletKeyUUIDToLocalStore_];

  sub_22953EAE4(v11, &unk_27D87D2A0, &unk_22A578BD0);

  v12 = v0[1];

  return v12();
}

uint64_t sub_2296501FC()
{
  v1 = *(v0 + 672);
  v2 = &selRef_runTransformWithError_;
  if (!v1 || (objc_opt_self(), v3 = swift_dynamicCastObjCClass(), (*(v0 + 688) = v3) == 0))
  {
    v8 = (v0 + 248);
    v7 = *(v0 + 248);
    v9 = *(v0 + 552);
    v10 = *(v0 + 528);
    v11 = *(v0 + 280);
    v12 = *(v0 + 256);

    sub_2296561E0();
    swift_allocError();
    *v13 = 0xD000000000000023;
    v13[1] = 0x800000022A58E4B0;
    swift_willThrow();

    sub_229656184(v11);
    sub_2295F2274(v9, v10);
    if ((*(v12 + 48))(v10, 1, v7) != 1)
    {
      v15 = (v0 + 528);
      v16 = (v0 + 256);
LABEL_20:
      v43 = *v15;
      v44 = *v16;
      v45 = *v8;
      v14 = sub_22A4DB77C();
      (*(v44 + 8))(v43, v45);
      goto LABEL_21;
    }

    v14 = 0;
LABEL_21:
    v46 = *(v0 + 568);
    v47 = *(v0 + 560);
    v48 = *(v0 + 552);
    [v46 v2[59]];

    sub_22953EAE4(v48, &unk_27D87D2A0, &unk_22A578BD0);

    v49 = *(v0 + 8);

    return v49();
  }

  v4 = [*(v0 + 568) clientWalletKeyUUID];
  if (v4)
  {
    v5 = v4;
    sub_22A4DB79C();

    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  v8 = (v0 + 248);
  v17 = *(v0 + 248);
  v19 = *(v0 + 512);
  v18 = *(v0 + 520);
  v20 = *(v0 + 256);
  (*(v0 + 576))(v19, v6, 1, v17);
  sub_229564B0C(v19, v18);
  v21 = *(v20 + 48);
  *(v0 + 696) = v21;
  *(v0 + 704) = (v20 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v21(v18, 1, v17) == 1)
  {
    v22 = *(v0 + 552);
    v23 = *(v0 + 520);
    v24 = *(v0 + 496);
    v25 = *(v0 + 280);
    v54 = *(v0 + 248);

    sub_2296561E0();
    swift_allocError();
    *v26 = 0xD00000000000001ELL;
    v26[1] = 0x800000022A58E630;
    swift_willThrow();

    sub_22953EAE4(v23, &unk_27D87D2A0, &unk_22A578BD0);
    sub_229656184(v25);
    sub_2295F2274(v22, v24);
    if (v21(v24, 1, v54) != 1)
    {
      v15 = (v0 + 496);
LABEL_19:
      v2 = &selRef_runTransformWithError_;
      v16 = (v0 + 256);
      goto LABEL_20;
    }

LABEL_14:
    v14 = 0;
    v2 = &selRef_runTransformWithError_;
    goto LABEL_21;
  }

  v27 = *(v0 + 568);
  [v27 saveClientWalletKeyUUIDToLocalStore_];
  v28 = [v27 clientWalletKeyUUID];
  if (v28)
  {
    v29 = *(v0 + 576);
    v56 = *(v0 + 568);
    v30 = *(v0 + 504);
    v53 = *(v0 + 488);
    v55 = *(v0 + 552);
    v51 = *(v0 + 520);
    v52 = *(v0 + 280);
    v31 = *(v0 + 248);
    v32 = v28;
    sub_22A4DB79C();

    v29(v30, 0, 1, v31);
    sub_22953EAE4(v30, &unk_27D87D2A0, &unk_22A578BD0);

    sub_2296561E0();
    swift_allocError();
    *v33 = 0xD00000000000002ALL;
    v33[1] = 0x800000022A58E650;
    swift_willThrow();

    sub_22953EAE4(v51, &unk_27D87D2A0, &unk_22A578BD0);
    sub_229656184(v52);
    sub_2295F2274(v55, v53);
    if (v21(v53, 1, v31) != 1)
    {
      v15 = (v0 + 488);
      goto LABEL_19;
    }

    goto LABEL_14;
  }

  v57 = *(v0 + 624);
  v34 = *(v0 + 608);
  v35 = *(v0 + 108);
  v36 = *(v0 + 568);
  v37 = *(v0 + 504);
  v38 = *(v0 + 280);
  v39 = *(v0 + 248);
  v40 = v38 + *(v0 + 60);
  v41 = *(v0 + 264);
  (*(v0 + 576))(v37, 1, 1, v39);
  sub_22953EAE4(v37, &unk_27D87D2A0, &unk_22A578BD0);
  v42 = [v36 uuid];
  sub_22A4DB79C();

  v34(v40 + v35, v41, v39);
  *(v38 + 9) = 1;

  return MEMORY[0x2822009F8](sub_229650944, v57, 0);
}

uint64_t sub_229650944()
{
  v1 = v0[78];
  v2 = v0[71];
  v3 = v0[35];
  v4 = swift_task_alloc();
  v0[89] = v4;
  v4[2] = v1;
  v4[3] = v2;
  v4[4] = v3;
  v8 = (*MEMORY[0x277D0EF78] + MEMORY[0x277D0EF78]);
  v5 = swift_task_alloc();
  v0[90] = v5;
  *v5 = v0;
  v5[1] = sub_229650A40;
  v6 = v0[81];

  return v8(v0 + 8, &unk_22A57B7D8, v4, v6);
}

uint64_t sub_229650A40()
{
  v2 = *v1;
  *(*v1 + 728) = v0;

  if (v0)
  {
    v3 = *(v2 + 624);
    v4 = sub_229650D34;
  }

  else
  {
    v5 = *(v2 + 624);

    v4 = sub_229650B68;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_229650B68()
{

  v1 = swift_task_alloc();
  *(v0 + 736) = v1;
  *v1 = v0;
  v1[1] = sub_229650C14;
  v2 = *(v0 + 280);

  return sub_229633730(v2);
}

uint64_t sub_229650C14(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 744) = a1;
  *(v3 + 752) = v1;

  if (v1)
  {

    v4 = sub_229654098;
  }

  else
  {
    v4 = sub_2296510CC;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_229650D34()
{

  return MEMORY[0x2822009F8](sub_229650DA8, 0, 0);
}

uint64_t sub_229650DA8()
{
  v1 = *(v0 + 696);
  v2 = *(v0 + 552);
  v3 = *(v0 + 520);
  v4 = *(v0 + 480);
  v5 = *(v0 + 280);
  v6 = *(v0 + 248);

  sub_22953EAE4(v3, &unk_27D87D2A0, &unk_22A578BD0);
  sub_229656184(v5);
  sub_2295F2274(v2, v4);
  if (v1(v4, 1, v6) == 1)
  {
    v7 = 0;
  }

  else
  {
    v8 = *(v0 + 480);
    v9 = *(v0 + 248);
    v10 = *(v0 + 256);
    v7 = sub_22A4DB77C();
    (*(v10 + 8))(v8, v9);
  }

  v11 = *(v0 + 568);
  v12 = *(v0 + 560);
  v13 = *(v0 + 552);
  [v11 saveClientWalletKeyUUIDToLocalStore_];

  sub_22953EAE4(v13, &unk_27D87D2A0, &unk_22A578BD0);

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_2296510CC()
{
  v1 = *(v0 + 744);
  if (!v1 || (objc_opt_self(), v85 = v1, !swift_dynamicCastObjCClass()))
  {
    v10 = (v0 + 248);
    v11 = *(v0 + 696);
    v86 = *(v0 + 248);
    v12 = *(v0 + 672);
    v13 = *(v0 + 552);
    v14 = *(v0 + 520);
    v15 = *(v0 + 472);
    v16 = *(v0 + 280);

    sub_2296561E0();
    swift_allocError();
    *v17 = 0xD00000000000002DLL;
    v17[1] = 0x800000022A58E680;
    swift_willThrow();

    sub_22953EAE4(v14, &unk_27D87D2A0, &unk_22A578BD0);
    sub_229656184(v16);
    sub_2295F2274(v13, v15);
    if (v11(v15, 1, v86) != 1)
    {
      v18 = (v0 + 472);
      v19 = (v0 + 256);
LABEL_18:
      v46 = *v18;
      v47 = *v19;
      v48 = *v10;
      v45 = sub_22A4DB77C();
      (*(v47 + 8))(v46, v48);
      goto LABEL_19;
    }

    goto LABEL_15;
  }

  v2 = *(v0 + 688);
  v3 = *(v0 + 568);
  v4 = *(v0 + 672);
  v5 = sub_22A4DBCDC();
  v6 = [objc_allocWithZone(HMDHomeWalletKey) initWithPKPass:v2 flow:v5];
  *(v0 + 760) = v6;

  v7 = [v3 clientWalletKeyUUID];
  if (v7)
  {
    v8 = v7;
    sub_22A4DB79C();

    v9 = 0;
  }

  else
  {
    v9 = 1;
  }

  v10 = (v0 + 248);
  v20 = *(v0 + 248);
  v21 = *(v0 + 576);
  v23 = *(v0 + 456);
  v22 = *(v0 + 464);
  v24 = *(v0 + 240);
  v79 = *(v0 + 224);
  v82 = *(v0 + 696);
  v25 = *(v0 + 256) + 56;
  v21(v22, v9, 1, v20);
  v78 = v6;
  v26 = [v6 uuid];
  sub_22A4DB79C();

  *(v0 + 768) = v25 & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v21(v23, 0, 1, v20);
  v27 = *(v79 + 48);
  sub_2295F2274(v22, v24);
  sub_2295F2274(v23, v24 + v27);
  v28 = v82(v24, 1, v20);
  v29 = *(v0 + 696);
  v30 = *(v0 + 248);
  if (v28 == 1)
  {
    v31 = *(v0 + 464);
    sub_22953EAE4(*(v0 + 456), &unk_27D87D2A0, &unk_22A578BD0);
    sub_22953EAE4(v31, &unk_27D87D2A0, &unk_22A578BD0);
    if (v29(v24 + v27, 1, v30) == 1)
    {
      sub_22953EAE4(*(v0 + 240), &unk_27D87D2A0, &unk_22A578BD0);
      goto LABEL_23;
    }

    goto LABEL_13;
  }

  sub_2295F2274(*(v0 + 240), *(v0 + 448));
  v32 = v29(v24 + v27, 1, v30);
  v34 = *(v0 + 456);
  v33 = *(v0 + 464);
  v35 = *(v0 + 448);
  if (v32 == 1)
  {
    v36 = *(v0 + 256);
    v37 = *v10;
    sub_22953EAE4(*(v0 + 456), &unk_27D87D2A0, &unk_22A578BD0);
    sub_22953EAE4(v33, &unk_27D87D2A0, &unk_22A578BD0);
    (*(v36 + 8))(v35, v37);
LABEL_13:
    sub_22953EAE4(*(v0 + 240), &qword_27D87DBA0, &qword_22A57A158);
    goto LABEL_14;
  }

  v54 = *(v0 + 256);
  v55 = *(v0 + 264);
  v56 = *(v0 + 248);
  v87 = *(v0 + 240);
  (*(v54 + 32))(v55, v24 + v27, v56);
  sub_2295B2378();
  v83 = sub_22A4DD58C();
  v57 = *(v54 + 8);
  v57(v55, v56);
  sub_22953EAE4(v34, &unk_27D87D2A0, &unk_22A578BD0);
  sub_22953EAE4(v33, &unk_27D87D2A0, &unk_22A578BD0);
  v57(v35, v56);
  sub_22953EAE4(v87, &unk_27D87D2A0, &unk_22A578BD0);
  if (v83)
  {
LABEL_23:
    *(v0 + 776) = 0x800000022A58E6B0;
    v58 = [*(v0 + 568) clientWalletKeyUUID];
    if (v58)
    {
      v88 = *(v0 + 624);
      v84 = *(v0 + 608);
      v59 = *(v0 + 108);
      v60 = *(v0 + 576);
      v61 = *(v0 + 568);
      v62 = *(v0 + 440);
      v63 = *(v0 + 280);
      v64 = *(v0 + 264);
      v65 = v63 + *(v0 + 60);
      v66 = *(v0 + 248);
      v67 = v58;
      sub_22A4DB79C();

      v60(v62, 0, 1, v66);
      sub_22953EAE4(v62, &unk_27D87D2A0, &unk_22A578BD0);
      v68 = [v61 uuid];
      sub_22A4DB79C();

      v84(v65 + v59, v64, v66);
      *(v63 + 9) = 1;

      return MEMORY[0x2822009F8](sub_229651AE8, v88, 0);
    }

    v81 = *(v0 + 696);
    v69 = *(v0 + 672);
    v70 = *(v0 + 568);
    v77 = *(v0 + 552);
    v71 = *(v0 + 520);
    v72 = *(v0 + 440);
    v73 = *(v0 + 424);
    v74 = *(v0 + 280);
    v75 = *(v0 + 248);
    (*(v0 + 576))(v72, 1, 1, v75);
    sub_22953EAE4(v72, &unk_27D87D2A0, &unk_22A578BD0);

    sub_2296561E0();
    swift_allocError();
    *v76 = 0xD00000000000001ELL;
    v76[1] = 0x800000022A58E630;
    swift_willThrow();

    sub_22953EAE4(v71, &unk_27D87D2A0, &unk_22A578BD0);
    sub_229656184(v74);
    sub_2295F2274(v77, v73);
    if (v81(v73, 1, v75) != 1)
    {
      v18 = (v0 + 424);
      goto LABEL_17;
    }

    goto LABEL_15;
  }

LABEL_14:
  v80 = *(v0 + 696);
  v38 = *(v0 + 672);
  v39 = *(v0 + 552);
  v40 = *(v0 + 520);
  v41 = *(v0 + 432);
  v42 = *(v0 + 280);
  v43 = *(v0 + 248);

  sub_2296561E0();
  swift_allocError();
  *v44 = 0xD00000000000003CLL;
  v44[1] = 0x800000022A58E6B0;
  swift_willThrow();

  sub_22953EAE4(v40, &unk_27D87D2A0, &unk_22A578BD0);
  sub_229656184(v42);
  sub_2295F2274(v39, v41);
  if (v80(v41, 1, v43) != 1)
  {
    v18 = (v0 + 432);
LABEL_17:
    v19 = (v0 + 256);
    goto LABEL_18;
  }

LABEL_15:
  v45 = 0;
LABEL_19:
  v49 = *(v0 + 568);
  v50 = *(v0 + 560);
  v51 = *(v0 + 552);
  [v49 saveClientWalletKeyUUIDToLocalStore_];

  sub_22953EAE4(v51, &unk_27D87D2A0, &unk_22A578BD0);

  v52 = *(v0 + 8);

  return v52();
}

uint64_t sub_229651AE8()
{
  v1 = v0[78];
  v2 = v0[71];
  v3 = v0[35];
  v4 = swift_task_alloc();
  v0[98] = v4;
  v4[2] = v1;
  v4[3] = v2;
  v4[4] = v3;
  v8 = (*MEMORY[0x277D0EF78] + MEMORY[0x277D0EF78]);
  v5 = swift_task_alloc();
  v0[99] = v5;
  *v5 = v0;
  v5[1] = sub_229651BE4;
  v6 = v0[81];

  return v8(v0 + 14, &unk_22A57B7E0, v4, v6);
}

uint64_t sub_229651BE4()
{
  v2 = *v1;
  *(*v1 + 800) = v0;

  if (v0)
  {
    v3 = *(v2 + 624);
    v4 = sub_229651ED8;
  }

  else
  {
    v5 = *(v2 + 624);

    v4 = sub_229651D0C;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_229651D0C()
{

  v1 = swift_task_alloc();
  *(v0 + 808) = v1;
  *v1 = v0;
  v1[1] = sub_229651DB8;
  v2 = *(v0 + 280);

  return sub_229633730(v2);
}

uint64_t sub_229651DB8(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 816) = a1;
  *(v3 + 824) = v1;

  if (v1)
  {

    v4 = sub_2296543BC;
  }

  else
  {
    v4 = sub_229652280;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_229651ED8()
{

  return MEMORY[0x2822009F8](sub_229651F4C, 0, 0);
}

uint64_t sub_229651F4C()
{
  v1 = *(v0 + 744);
  v2 = *(v0 + 696);
  v3 = *(v0 + 672);
  v4 = *(v0 + 552);
  v5 = *(v0 + 520);
  v6 = *(v0 + 416);
  v7 = *(v0 + 280);
  v8 = *(v0 + 248);

  sub_22953EAE4(v5, &unk_27D87D2A0, &unk_22A578BD0);
  sub_229656184(v7);
  sub_2295F2274(v4, v6);
  if (v2(v6, 1, v8) == 1)
  {
    v9 = 0;
  }

  else
  {
    v10 = *(v0 + 416);
    v11 = *(v0 + 248);
    v12 = *(v0 + 256);
    v9 = sub_22A4DB77C();
    (*(v12 + 8))(v10, v11);
  }

  v13 = *(v0 + 568);
  v14 = *(v0 + 560);
  v15 = *(v0 + 552);
  [v13 saveClientWalletKeyUUIDToLocalStore_];

  sub_22953EAE4(v15, &unk_27D87D2A0, &unk_22A578BD0);

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_229652280()
{
  v1 = *(v0 + 816);
  if (v1)
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v69 = v1;
      v2 = [*(v0 + 568) clientWalletKeyUUID];
      if (v2)
      {
        v3 = v2;
        sub_22A4DB79C();

        v4 = 0;
      }

      else
      {
        v4 = 1;
      }

      v14 = *(v0 + 760);
      v15 = *(v0 + 696);
      v16 = *(v0 + 576);
      v18 = *(v0 + 392);
      v17 = *(v0 + 400);
      v19 = *(v0 + 248);
      v21 = *(v0 + 224);
      v20 = *(v0 + 232);
      v16(v17, v4, 1, v19);
      v22 = [v14 uuid];
      sub_22A4DB79C();

      v16(v18, 0, 1, v19);
      v23 = *(v21 + 48);
      sub_2295F2274(v17, v20);
      sub_2295F2274(v18, v20 + v23);
      v24 = v15(v20, 1, v19);
      v25 = *(v0 + 696);
      v26 = *(v0 + 248);
      if (v24 == 1)
      {
        v27 = *(v0 + 400);
        sub_22953EAE4(*(v0 + 392), &unk_27D87D2A0, &unk_22A578BD0);
        sub_22953EAE4(v27, &unk_27D87D2A0, &unk_22A578BD0);
        if (v25(v20 + v23, 1, v26) == 1)
        {
          sub_22953EAE4(*(v0 + 232), &unk_27D87D2A0, &unk_22A578BD0);
LABEL_22:
          v57 = *(v0 + 624);
          v58 = *(v0 + 608);
          v59 = *(v0 + 108);
          v60 = *(v0 + 600);
          v61 = *(v0 + 264);
          v62 = *(v0 + 248);
          v63 = *(v0 + 280) + *(v0 + 60);
          v64 = [*(v0 + 568) uuid];
          sub_22A4DB79C();

          v58(v63 + v59, v61, v62);
          *(v63 + *(v60 + 68)) = 0;
          *(v63 + *(v60 + 72)) = 2;

          return MEMORY[0x2822009F8](sub_229652A6C, v57, 0);
        }
      }

      else
      {
        sub_2295F2274(*(v0 + 232), *(v0 + 384));
        v28 = v25(v20 + v23, 1, v26);
        v30 = *(v0 + 392);
        v29 = *(v0 + 400);
        v31 = *(v0 + 384);
        if (v28 != 1)
        {
          v52 = *(v0 + 256);
          v53 = *(v0 + 264);
          v54 = *(v0 + 248);
          v70 = *(v0 + 232);
          (*(v52 + 32))(v53, v20 + v23, v54);
          sub_2295B2378();
          v55 = sub_22A4DD58C();
          v56 = *(v52 + 8);
          v56(v53, v54);
          sub_22953EAE4(v30, &unk_27D87D2A0, &unk_22A578BD0);
          sub_22953EAE4(v29, &unk_27D87D2A0, &unk_22A578BD0);
          v56(v31, v54);
          sub_22953EAE4(v70, &unk_27D87D2A0, &unk_22A578BD0);
          if (v55)
          {
            goto LABEL_22;
          }

          goto LABEL_14;
        }

        v33 = *(v0 + 248);
        v32 = *(v0 + 256);
        sub_22953EAE4(*(v0 + 392), &unk_27D87D2A0, &unk_22A578BD0);
        sub_22953EAE4(v29, &unk_27D87D2A0, &unk_22A578BD0);
        (*(v32 + 8))(v31, v33);
      }

      sub_22953EAE4(*(v0 + 232), &qword_27D87DBA0, &qword_22A57A158);
LABEL_14:
      v34 = *(v0 + 776);
      v35 = *(v0 + 760);
      v36 = *(v0 + 744);
      v67 = *(v0 + 696);
      v37 = *(v0 + 672);
      v38 = *(v0 + 552);
      v39 = *(v0 + 520);
      v40 = *(v0 + 376);
      v41 = *(v0 + 280);
      v65 = *(v0 + 248);

      sub_2296561E0();
      swift_allocError();
      *v42 = 0xD00000000000003CLL;
      v42[1] = v34;
      swift_willThrow();

      sub_22953EAE4(v39, &unk_27D87D2A0, &unk_22A578BD0);
      sub_229656184(v41);
      sub_2295F2274(v38, v40);
      if (v67(v40, 1, v65) == 1)
      {
        goto LABEL_15;
      }

      v13 = (v0 + 376);
LABEL_17:
      v44 = *v13;
      v45 = *(v0 + 248);
      v46 = *(v0 + 256);
      v43 = sub_22A4DB77C();
      (*(v46 + 8))(v44, v45);
      goto LABEL_18;
    }
  }

  v5 = *(v0 + 760);
  v6 = *(v0 + 744);
  v68 = *(v0 + 696);
  v7 = *(v0 + 672);
  v8 = *(v0 + 552);
  v9 = *(v0 + 520);
  v10 = *(v0 + 408);
  v11 = *(v0 + 280);
  v66 = *(v0 + 248);

  sub_2296561E0();
  swift_allocError();
  *v12 = 0xD000000000000035;
  v12[1] = 0x800000022A58E6F0;
  swift_willThrow();

  sub_22953EAE4(v9, &unk_27D87D2A0, &unk_22A578BD0);
  sub_229656184(v11);
  sub_2295F2274(v8, v10);
  if (v68(v10, 1, v66) != 1)
  {
    v13 = (v0 + 408);
    goto LABEL_17;
  }

LABEL_15:
  v43 = 0;
LABEL_18:
  v47 = *(v0 + 568);
  v48 = *(v0 + 560);
  v49 = *(v0 + 552);
  [v47 saveClientWalletKeyUUIDToLocalStore_];

  sub_22953EAE4(v49, &unk_27D87D2A0, &unk_22A578BD0);

  v50 = *(v0 + 8);

  return v50();
}

uint64_t sub_229652A6C()
{
  v1 = v0[78];
  v2 = v0[71];
  v3 = v0[35];
  v4 = swift_task_alloc();
  v0[104] = v4;
  v4[2] = v1;
  v4[3] = v2;
  v4[4] = v3;
  v8 = (*MEMORY[0x277D0EF78] + MEMORY[0x277D0EF78]);
  v5 = swift_task_alloc();
  v0[105] = v5;
  *v5 = v0;
  v5[1] = sub_229652B68;
  v6 = v0[81];

  return v8(v0 + 20, &unk_22A57B7E8, v4, v6);
}

uint64_t sub_229652B68()
{
  v2 = *v1;
  *(*v1 + 848) = v0;

  if (v0)
  {
    v3 = *(v2 + 624);
    v4 = sub_229652E5C;
  }

  else
  {
    v5 = *(v2 + 624);

    v4 = sub_229652C90;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_229652C90()
{

  v1 = swift_task_alloc();
  *(v0 + 856) = v1;
  *v1 = v0;
  v1[1] = sub_229652D44;
  v2 = *(v0 + 280);

  return sub_229633730(v2);
}

uint64_t sub_229652D44(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 864) = a1;
  *(v3 + 872) = v1;

  if (v1)
  {
    v4 = sub_2296546F0;
  }

  else
  {
    v4 = sub_229653214;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_229652E5C()
{

  return MEMORY[0x2822009F8](sub_229652ED0, 0, 0);
}

uint64_t sub_229652ED0()
{
  v1 = *(v0 + 816);
  v2 = *(v0 + 744);
  v3 = *(v0 + 696);
  v4 = *(v0 + 672);
  v5 = *(v0 + 552);
  v6 = *(v0 + 520);
  v7 = *(v0 + 368);
  v8 = *(v0 + 280);
  v9 = *(v0 + 248);

  sub_22953EAE4(v6, &unk_27D87D2A0, &unk_22A578BD0);
  sub_229656184(v8);
  sub_2295F2274(v5, v7);
  if (v3(v7, 1, v9) == 1)
  {
    v10 = 0;
  }

  else
  {
    v11 = *(v0 + 368);
    v12 = *(v0 + 248);
    v13 = *(v0 + 256);
    v10 = sub_22A4DB77C();
    (*(v13 + 8))(v11, v12);
  }

  v14 = *(v0 + 568);
  v15 = *(v0 + 560);
  v16 = *(v0 + 552);
  [v14 saveClientWalletKeyUUIDToLocalStore_];

  sub_22953EAE4(v16, &unk_27D87D2A0, &unk_22A578BD0);

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_229653214(uint64_t a1)
{
  v2 = *(v1 + 864);
  if (v2)
  {
    v3 = *(v1 + 816);
    v4 = *(v1 + 760);
    v5 = *(v1 + 744);
    v61 = *(v1 + 696);
    v6 = *(v1 + 672);
    v7 = *(v1 + 520);
    v8 = *(v1 + 352);
    v9 = *(v1 + 280);
    v57 = *(v1 + 248);
    v59 = *(v1 + 552);
    sub_2296561E0();
    swift_allocError();
    *v10 = 0xD000000000000014;
    v10[1] = 0x800000022A58E730;
    swift_willThrow();

    sub_22953EAE4(v7, &unk_27D87D2A0, &unk_22A578BD0);
    sub_229656184(v9);
    sub_2295F2274(v59, v8);
    if (v61(v8, 1, v57) != 1)
    {
      v11 = (v1 + 352);
LABEL_10:
      v29 = *v11;
      v30 = *(v1 + 248);
      v31 = *(v1 + 256);
      v22 = sub_22A4DB77C();
      (*(v31 + 8))(v29, v30);
      goto LABEL_11;
    }
  }

  else
  {
    v12 = [*(v1 + 568) clientWalletKeyUUID];
    if (!v12)
    {
      v23 = *(v1 + 696);
      v24 = *(v1 + 552);
      v25 = *(v1 + 360);
      v26 = *(v1 + 344);
      v27 = *(v1 + 248);
      (*(v1 + 576))(v25, 1, 1, v27);
      sub_22953EAE4(v25, &unk_27D87D2A0, &unk_22A578BD0);
      sub_2295F2274(v24, v26);
      if (v23(v26, 1, v27) == 1)
      {
        v28 = 0;
      }

      else
      {
        v37 = *(v1 + 344);
        v38 = *(v1 + 248);
        v39 = *(v1 + 256);
        v28 = sub_22A4DB77C();
        (*(v39 + 8))(v37, v38);
      }

      v40 = *(v1 + 816);
      v41 = *(v1 + 760);
      v42 = *(v1 + 744);
      v64 = *(v1 + 696);
      v43 = *(v1 + 672);
      v44 = *(v1 + 552);
      v45 = *(v1 + 520);
      v46 = *(v1 + 328);
      v47 = *(v1 + 280);
      v63 = *(v1 + 248);
      [*(v1 + 568) saveClientWalletKeyUUIDToLocalStore_];

      sub_22953EAE4(v45, &unk_27D87D2A0, &unk_22A578BD0);
      sub_229656184(v47);
      sub_2295F2274(v44, v46);
      if (v64(v46, 1, v63) == 1)
      {
        v48 = 0;
      }

      else
      {
        v49 = *(v1 + 328);
        v50 = *(v1 + 248);
        v51 = *(v1 + 256);
        v48 = sub_22A4DB77C();
        (*(v51 + 8))(v49, v50);
      }

      v52 = *(v1 + 568);
      v53 = *(v1 + 560);
      v54 = *(v1 + 552);
      [v52 saveClientWalletKeyUUIDToLocalStore_];

      sub_22953EAE4(v54, &unk_27D87D2A0, &unk_22A578BD0);

      v35 = *(v1 + 8);
      goto LABEL_12;
    }

    v13 = *(v1 + 760);
    v14 = *(v1 + 744);
    v62 = *(v1 + 696);
    v55 = *(v1 + 672);
    v56 = *(v1 + 816);
    v15 = *(v1 + 576);
    v16 = *(v1 + 520);
    v17 = *(v1 + 360);
    v18 = *(v1 + 336);
    v58 = *(v1 + 280);
    v60 = *(v1 + 552);
    v19 = *(v1 + 248);
    v20 = v12;
    sub_22A4DB79C();

    v15(v17, 0, 1, v19);
    sub_22953EAE4(v17, &unk_27D87D2A0, &unk_22A578BD0);
    sub_2296561E0();
    swift_allocError();
    *v21 = 0xD00000000000001FLL;
    v21[1] = 0x800000022A58E750;
    swift_willThrow();

    sub_22953EAE4(v16, &unk_27D87D2A0, &unk_22A578BD0);
    sub_229656184(v58);
    sub_2295F2274(v60, v18);
    if (v62(v18, 1, v19) != 1)
    {
      v11 = (v1 + 336);
      goto LABEL_10;
    }
  }

  v22 = 0;
LABEL_11:
  v32 = *(v1 + 568);
  v33 = *(v1 + 560);
  v34 = *(v1 + 552);
  [v32 saveClientWalletKeyUUIDToLocalStore_];

  sub_22953EAE4(v34, &unk_27D87D2A0, &unk_22A578BD0);

  v35 = *(v1 + 8);
LABEL_12:

  return v35();
}

uint64_t sub_229653AA4()
{
  v1 = v0[40];
  v2 = v0[31];
  v3 = v0[32];
  sub_2295F2274(v0[69], v1);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = 0;
  }

  else
  {
    v5 = v0[40];
    v6 = v0[31];
    v7 = v0[32];
    v4 = sub_22A4DB77C();
    (*(v7 + 8))(v5, v6);
  }

  v8 = v0[71];
  v9 = v0[70];
  v10 = v0[69];
  [v8 saveClientWalletKeyUUIDToLocalStore_];

  sub_22953EAE4(v10, &unk_27D87D2A0, &unk_22A578BD0);

  v11 = v0[1];

  return v11();
}

uint64_t sub_229653D98()
{
  v1 = v0[69];
  v2 = v0[39];
  v3 = v0[31];
  v4 = v0[32];
  sub_229656184(v0[35]);
  sub_2295F2274(v1, v2);
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    v5 = 0;
  }

  else
  {
    v6 = v0[39];
    v7 = v0[31];
    v8 = v0[32];
    v5 = sub_22A4DB77C();
    (*(v8 + 8))(v6, v7);
  }

  v9 = v0[71];
  v10 = v0[70];
  v11 = v0[69];
  [v9 saveClientWalletKeyUUIDToLocalStore_];

  sub_22953EAE4(v11, &unk_27D87D2A0, &unk_22A578BD0);

  v12 = v0[1];

  return v12();
}

uint64_t sub_229654098()
{
  v1 = *(v0 + 696);
  v2 = *(v0 + 552);
  v3 = *(v0 + 520);
  v4 = *(v0 + 304);
  v5 = *(v0 + 280);
  v6 = *(v0 + 248);

  sub_22953EAE4(v3, &unk_27D87D2A0, &unk_22A578BD0);
  sub_229656184(v5);
  sub_2295F2274(v2, v4);
  if (v1(v4, 1, v6) == 1)
  {
    v7 = 0;
  }

  else
  {
    v8 = *(v0 + 304);
    v9 = *(v0 + 248);
    v10 = *(v0 + 256);
    v7 = sub_22A4DB77C();
    (*(v10 + 8))(v8, v9);
  }

  v11 = *(v0 + 568);
  v12 = *(v0 + 560);
  v13 = *(v0 + 552);
  [v11 saveClientWalletKeyUUIDToLocalStore_];

  sub_22953EAE4(v13, &unk_27D87D2A0, &unk_22A578BD0);

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_2296543BC()
{
  v1 = *(v0 + 744);
  v2 = *(v0 + 696);
  v3 = *(v0 + 672);
  v4 = *(v0 + 552);
  v5 = *(v0 + 520);
  v6 = *(v0 + 296);
  v7 = *(v0 + 280);
  v8 = *(v0 + 248);

  sub_22953EAE4(v5, &unk_27D87D2A0, &unk_22A578BD0);
  sub_229656184(v7);
  sub_2295F2274(v4, v6);
  if (v2(v6, 1, v8) == 1)
  {
    v9 = 0;
  }

  else
  {
    v10 = *(v0 + 296);
    v11 = *(v0 + 248);
    v12 = *(v0 + 256);
    v9 = sub_22A4DB77C();
    (*(v12 + 8))(v10, v11);
  }

  v13 = *(v0 + 568);
  v14 = *(v0 + 560);
  v15 = *(v0 + 552);
  [v13 saveClientWalletKeyUUIDToLocalStore_];

  sub_22953EAE4(v15, &unk_27D87D2A0, &unk_22A578BD0);

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_2296546F0()
{
  v1 = *(v0 + 816);
  v2 = *(v0 + 744);
  v3 = *(v0 + 696);
  v4 = *(v0 + 672);
  v5 = *(v0 + 552);
  v6 = *(v0 + 520);
  v8 = *(v0 + 280);
  v7 = *(v0 + 288);
  v9 = *(v0 + 248);

  sub_22953EAE4(v6, &unk_27D87D2A0, &unk_22A578BD0);
  sub_229656184(v8);
  sub_2295F2274(v5, v7);
  if (v3(v7, 1, v9) == 1)
  {
    v10 = 0;
  }

  else
  {
    v11 = *(v0 + 288);
    v12 = *(v0 + 248);
    v13 = *(v0 + 256);
    v10 = sub_22A4DB77C();
    (*(v13 + 8))(v11, v12);
  }

  v14 = *(v0 + 568);
  v15 = *(v0 + 560);
  v16 = *(v0 + 552);
  [v14 saveClientWalletKeyUUIDToLocalStore_];

  sub_22953EAE4(v16, &unk_27D87D2A0, &unk_22A578BD0);

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_229654A30()
{
  type metadata accessor for HomePassState(0);
  v1 = swift_task_alloc();
  *(v0 + 112) = v1;
  v2 = swift_task_alloc();
  *(v0 + 120) = v2;
  *v2 = v0;
  v2[1] = sub_229654AF4;

  return sub_229633120(v1);
}

uint64_t sub_229654AF4()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_229655F5C;
  }

  else
  {
    v2 = sub_229654C08;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_229654C08()
{
  if (qword_281402DF8 != -1)
  {
    swift_once();
  }

  v1 = static PassUpdater.shared;
  *(v0 + 136) = static PassUpdater.shared;

  return MEMORY[0x2822009F8](sub_229654CA4, v1, 0);
}

uint64_t sub_229654CA4()
{
  v1 = v0[17];
  v2 = v0[14];
  v3 = swift_task_alloc();
  v0[18] = v3;
  v3[2] = v1;
  v3[3] = 0;
  v3[4] = v2;
  v7 = (*MEMORY[0x277D0EF78] + MEMORY[0x277D0EF78]);
  v4 = swift_task_alloc();
  v0[19] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E2A0, &qword_22A57B798);
  v0[20] = v5;
  *v4 = v0;
  v4[1] = sub_229654DB0;

  return v7(v0 + 2, &unk_22A57B790, v3, v5);
}

uint64_t sub_229654DB0()
{
  v2 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    v3 = *(v2 + 136);
    v4 = sub_2296550A8;
  }

  else
  {
    v5 = *(v2 + 136);

    v4 = sub_229654ED4;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_229654ED4()
{

  v1 = swift_task_alloc();
  *(v0 + 176) = v1;
  *v1 = v0;
  v1[1] = sub_229654F80;
  v2 = *(v0 + 112);

  return sub_229633730(v2);
}

uint64_t sub_229654F80(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 184) = v1;

  if (v1)
  {
    v5 = sub_229655FC0;
  }

  else
  {
    *(v4 + 192) = a1;
    v5 = sub_22965517C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2296550A8()
{

  return MEMORY[0x2822009F8](sub_229655110, 0, 0);
}

uint64_t sub_229655110()
{
  sub_229656184(*(v0 + 112));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22965517C(uint64_t a1)
{
  v2 = v1[24];
  if (!v2 || (objc_opt_self(), (v3 = swift_dynamicCastObjCClass()) == 0))
  {
    v7 = v1[14];
    sub_2296561E0();
    swift_allocError();
    *v8 = 0xD000000000000023;
    v8[1] = 0x800000022A58E4B0;
    swift_willThrow();

    sub_229656184(v7);
    goto LABEL_6;
  }

  v4 = v3;
  v5 = v1[23];
  v6 = v2;
  sub_22964206C(v4, 1, 1);
  if (v5)
  {
    sub_229656184(v1[14]);

LABEL_6:

    v9 = v1[1];

    return v9();
  }

  v11 = v1[17];

  return MEMORY[0x2822009F8](sub_2296552E4, v11, 0);
}

uint64_t sub_2296552E4()
{
  v1 = v0[17];
  v2 = v0[14];
  v3 = swift_task_alloc();
  v0[25] = v3;
  v3[2] = v1;
  v3[3] = 0;
  v3[4] = v2;
  v7 = (*MEMORY[0x277D0EF78] + MEMORY[0x277D0EF78]);
  v4 = swift_task_alloc();
  v0[26] = v4;
  *v4 = v0;
  v4[1] = sub_2296553D8;
  v5 = v0[20];

  return v7(v0 + 8, &unk_22A57B7A8, v3, v5);
}

uint64_t sub_2296553D8()
{
  v2 = *v1;
  *(*v1 + 216) = v0;

  if (v0)
  {
    v3 = *(v2 + 136);

    v4 = sub_2296556D4;
  }

  else
  {
    v3 = *(v2 + 136);

    v4 = sub_229655528;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_229655528()
{
  *(v0 + 224) = *(v0 + 64);
  *(v0 + 232) = *(v0 + 72);
  *(v0 + 248) = *(v0 + 88);
  return MEMORY[0x2822009F8](sub_22965555C, 0, 0);
}

uint64_t sub_22965555C()
{
  if (v0[28] == 4)
  {
    v1 = swift_task_alloc();
    v0[32] = v1;
    *v1 = v0;
    v1[1] = sub_229655768;
    v2 = v0[14];

    return sub_229633730(v2);
  }

  else
  {
    v4 = v0[31];
    v5 = v0[24];
    v6 = v0[14];

    sub_2296561E0();
    swift_allocError();
    *v7 = 0xD000000000000022;
    v7[1] = 0x800000022A58E4E0;
    swift_willThrow();

    sub_229656184(v6);

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_2296556F0()
{
  v1 = *(v0 + 112);

  sub_229656184(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_229655768(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 264) = a1;
  *(v3 + 272) = v1;

  if (v1)
  {

    v4 = sub_22965602C;
  }

  else
  {
    v4 = sub_229655884;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_229655884()
{
  v1 = v0[33];
  if (!v1 || (objc_opt_self(), v2 = swift_dynamicCastObjCClass(), (v0[35] = v2) == 0))
  {
    v8 = v0[31];
    v9 = v0[24];
    v10 = v0[14];

    sub_2296561E0();
    swift_allocError();
    *v11 = 0xD000000000000016;
    v11[1] = 0x800000022A58E510;
    swift_willThrow();

    sub_229656184(v10);
    goto LABEL_6;
  }

  v3 = v2;
  v4 = v0[34];
  v5 = v1;
  sub_22964206C(v3, 1, 1);
  if (v4)
  {
    v6 = v0[31];
    v7 = v0[24];
    sub_229656184(v0[14]);

LABEL_6:

    v12 = v0[1];

    return v12();
  }

  v14 = v0[24];

  if (qword_281402F18 != -1)
  {
    swift_once();
  }

  v15 = static PassLibrary.shared;
  v0[36] = static PassLibrary.shared;

  return MEMORY[0x2822009F8](sub_229655A9C, v15, 0);
}

uint64_t sub_229655A9C()
{
  v1 = *(v0 + 35);
  v2 = swift_task_alloc();
  *(v0 + 37) = v2;
  *(v2 + 16) = v1;
  v5 = (*MEMORY[0x277D0EF78] + MEMORY[0x277D0EF78]);
  v3 = swift_task_alloc();
  *(v0 + 38) = v3;
  *v3 = v0;
  v3[1] = sub_229655B88;

  return v5(v0 + 57, &unk_22A57B7B0, v2, &type metadata for ExpressSettings);
}

uint64_t sub_229655B88()
{
  v2 = *v1;
  *(*v1 + 312) = v0;

  if (v0)
  {
    v3 = *(v2 + 288);
    v4 = sub_229655E4C;
  }

  else
  {
    v5 = *(v2 + 288);

    v4 = sub_229655CAC;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_229655CAC()
{
  v0[59] = v0[57];
  v0[60] = v0[58];
  return MEMORY[0x2822009F8](sub_229655CD8, 0, 0);
}

uint64_t sub_229655CD8(uint64_t a1)
{
  if (*(v1 + 59) == 1)
  {
    v2 = *(v1 + 264);
    v3 = *(v1 + 248);
    v4 = *(v1 + 192);
    v5 = *(v1 + 112);
    if (*(v1 + 60))
    {

      sub_229656184(v5);

      v6 = *(v1 + 8);
      goto LABEL_7;
    }

    v7 = "NFC was not enabled";
  }

  else
  {
    v2 = *(v1 + 264);
    v3 = *(v1 + 248);
    v4 = *(v1 + 192);
    v7 = "pass was not in wallet";
    v5 = *(v1 + 112);
  }

  v8 = v7 | 0x8000000000000000;
  sub_2296561E0();
  swift_allocError();
  *v9 = 0xD000000000000013;
  v9[1] = v8;
  swift_willThrow();

  sub_229656184(v5);

  v6 = *(v1 + 8);
LABEL_7:

  return v6();
}

uint64_t sub_229655E4C()
{

  return MEMORY[0x2822009F8](sub_229655EB4, 0, 0);
}

uint64_t sub_229655EB4()
{
  v1 = v0[33];
  v2 = v0[31];
  v3 = v0[24];
  v4 = v0[14];

  sub_229656184(v4);

  v5 = v0[1];

  return v5();
}

uint64_t sub_229655F5C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_229655FC0()
{
  sub_229656184(*(v0 + 112));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22965602C()
{
  v1 = v0[31];
  v2 = v0[24];
  v3 = v0[14];

  sub_229656184(v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_2296560D0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_229586D38;

  return sub_229859A44(a1, v4, v5, v6);
}

uint64_t sub_229656184(uint64_t a1)
{
  v2 = type metadata accessor for HomePassState(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2296561E0()
{
  result = qword_27D87E2A8;
  if (!qword_27D87E2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87E2A8);
  }

  return result;
}

uint64_t sub_229656234(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_229586D38;

  return sub_229868D84(a1, v4);
}

unint64_t sub_2296562D4()
{
  result = qword_27D87E2B8;
  if (!qword_27D87E2B8)
  {
    sub_229562F68(255, &qword_281401930, 0x277D37FE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87E2B8);
  }

  return result;
}

uint64_t sub_22965633C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_229586D38;

  return sub_229866644(a1, v4, v5, v7, v6);
}

uint64_t sub_229656450(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HomePassData(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_2296565A4(void *a1, uint64_t a2, void *a3, void *a4, void *a5, uint64_t a6)
{
  v7 = v6;
  v27 = a6;
  v13 = sub_22A4DB7DC();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_unknownObjectWeakInit();
  v17 = &v7[OBJC_IVAR____TtC13HomeKitDaemon36MatterAccessoryInvokeCommandLogEvent_coreAnalyticsEventName];
  *v17 = 0xD00000000000003ALL;
  *(v17 + 1) = 0x800000022A58ECD0;
  *&v7[OBJC_IVAR____TtC13HomeKitDaemon36MatterAccessoryInvokeCommandLogEvent_coreAnalyticsEventOptions] = 0;
  swift_unknownObjectWeakAssign();
  *&v7[OBJC_IVAR____TtC13HomeKitDaemon36MatterAccessoryInvokeCommandLogEvent_nodeId] = a2;
  *&v7[OBJC_IVAR____TtC13HomeKitDaemon36MatterAccessoryInvokeCommandLogEvent_endpointId] = a3;
  *&v7[OBJC_IVAR____TtC13HomeKitDaemon36MatterAccessoryInvokeCommandLogEvent_clusterId] = a4;
  *&v7[OBJC_IVAR____TtC13HomeKitDaemon36MatterAccessoryInvokeCommandLogEvent_commandId] = a5;
  *&v7[OBJC_IVAR____TtC13HomeKitDaemon36MatterAccessoryInvokeCommandLogEvent_source] = v27;
  v18 = a3;
  v19 = a4;
  v20 = a5;
  v21 = [a1 uuid];
  sub_22A4DB79C();

  v22 = sub_22A4DB77C();
  (*(v14 + 8))(v16, v13);
  v23 = type metadata accessor for MatterAccessoryInvokeCommandLogEvent();
  v28.receiver = v7;
  v28.super_class = v23;
  v24 = objc_msgSendSuper2(&v28, sel_initWithHomeUUID_, v22);

  return v24;
}

unint64_t sub_229656904()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87CCC0, &unk_22A5779A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22A577B20;
  *(inited + 32) = 0x644965646F6ELL;
  *(inited + 40) = 0xE600000000000000;
  *(inited + 48) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedLongLong_];
  *(inited + 56) = 0x746E696F70646E65;
  *(inited + 64) = 0xEA00000000006449;
  v2 = *(v0 + OBJC_IVAR____TtC13HomeKitDaemon36MatterAccessoryInvokeCommandLogEvent_endpointId);
  *(inited + 72) = v2;
  *(inited + 80) = 0x4972657473756C63;
  *(inited + 88) = 0xE900000000000064;
  v3 = *(v0 + OBJC_IVAR____TtC13HomeKitDaemon36MatterAccessoryInvokeCommandLogEvent_clusterId);
  *(inited + 96) = v3;
  *(inited + 104) = 0x49646E616D6D6F63;
  *(inited + 112) = 0xE900000000000064;
  v4 = *(v0 + OBJC_IVAR____TtC13HomeKitDaemon36MatterAccessoryInvokeCommandLogEvent_commandId);
  *(inited + 120) = v4;
  *(inited + 128) = 0x656372756F73;
  *(inited + 136) = 0xE600000000000000;
  v5 = *(v0 + OBJC_IVAR____TtC13HomeKitDaemon36MatterAccessoryInvokeCommandLogEvent_source);
  v6 = objc_allocWithZone(MEMORY[0x277CCABB0]);
  v7 = v2;
  v8 = v3;
  v9 = v4;
  *(inited + 144) = [v6 initWithUnsignedInteger_];
  v10 = sub_22956AC48(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87CD90, &qword_22A5779F0);
  swift_arrayDestroy();
  return v10;
}

id sub_229656BD0(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for MatterAccessoryInvokeCommandLogEvent();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_229656CA8()
{
  v0 = sub_22A4DD07C();
  __swift_allocate_value_buffer(v0, qword_27D8AB750);
  __swift_project_value_buffer(v0, qword_27D8AB750);
  sub_22A4DD5EC();
  return sub_22A4DD06C();
}

uint64_t sub_229656D24(char a1)
{
  *(v2 + 32) = v1;
  *(v2 + 96) = a1;
  *(v2 + 40) = *v1;
  return MEMORY[0x2822009F8](sub_229656D70, v1, 0);
}

uint64_t sub_229656D70()
{
  v21 = v0;
  v1 = *(*(v0 + 32) + 112);
  *(v0 + 48) = v1;
  if (v1)
  {
    v2 = v1;
    v3 = [v2 backingStore];
    if (v3)
    {
      v4 = v3;
      v5 = [v3 context];
      *(v0 + 56) = v5;

      if (v5)
      {
        v6 = *(v0 + 32);
        v7 = *(v0 + 40);
        v8 = *(v0 + 96);
        v9 = swift_allocObject();
        *(v0 + 64) = v9;
        *(v9 + 16) = v2;
        *(v9 + 24) = v8;
        *(v9 + 32) = v6;
        *(v9 + 40) = v5;
        *(v9 + 48) = v7;
        v10 = v2;

        v11 = v5;

        return MEMORY[0x2822009F8](sub_229657054, 0, 0);
      }
    }
  }

  if (qword_27D87B960 != -1)
  {
    swift_once();
  }

  v12 = sub_22A4DD07C();
  __swift_project_value_buffer(v12, qword_27D8AB750);

  v13 = sub_22A4DD05C();
  v14 = sub_22A4DDCEC();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = *(v0 + 32);
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v20[0] = v17;
    *v16 = 136315394;
    *(v16 + 4) = sub_2295A3E30(*(v15 + 120), *(v15 + 128), v20);
    *(v16 + 12) = 2080;
    *(v16 + 14) = sub_2295A3E30(0xD000000000000036, 0x800000022A58ED80, v20);
    _os_log_impl(&dword_229538000, v13, v14, "%s %s Missing context, failed to save", v16, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v17, -1, -1);
    MEMORY[0x22AAD4E50](v16, -1, -1);
  }

  type metadata accessor for HMError(0);
  *(v0 + 24) = 20;
  sub_22956AD8C(MEMORY[0x277D84F90]);
  sub_22958E108();
  sub_22A4DB3CC();
  swift_willThrow();
  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_229657054()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = swift_task_alloc();
  v0[9] = v3;
  v3[2] = v2;
  v3[3] = sub_229657850;
  v3[4] = v1;
  v4 = swift_task_alloc();
  v0[10] = v4;
  *v4 = v0;
  v4[1] = sub_22965715C;
  v5 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v4, 0, 0, 0xD000000000000016, 0x800000022A58A7E0, sub_229586C80, v3, v5);
}

uint64_t sub_22965715C()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = sub_2296572F4;
    v4 = 0;
  }

  else
  {
    v5 = *(v2 + 32);

    v3 = sub_22965728C;
    v4 = v5;
  }

  return MEMORY[0x2822009F8](v3, v4, 0);
}

uint64_t sub_22965728C()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2296572F4()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2822009F8](sub_229657368, v1, 0);
}

uint64_t sub_229657368()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 8);

  return v2();
}

void sub_2296573D0(void *a1, int a2, uint64_t a3, uint64_t a4)
{
  LODWORD(v33) = a2;
  v8 = sub_22A4DB7DC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = objc_opt_self();
  v13 = [a1 uuid];
  sub_22A4DB79C();

  v14 = sub_22A4DB77C();
  (*(v9 + 8))(v11, v8);
  v15 = [v12 findHomeWithModelID_];

  v34 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D290, &qword_22A57BB20);
  sub_22A4DBD4C();
  swift_unknownObjectRelease();
  if (!v4)
  {
    v32[1] = a4;
    v16 = v35;
    v17 = [v35 isAllowedToEnableAdaptiveTemperatureAutomations];
    v18 = sub_22A4DD8AC();
    [v16 setIsAllowedToEnableAdaptiveTemperatureAutomations_];

    if (qword_27D87B960 != -1)
    {
      swift_once();
    }

    v19 = sub_22A4DD07C();
    __swift_project_value_buffer(v19, qword_27D8AB750);
    v20 = a3;

    v21 = v17;
    swift_unknownObjectRetain();
    v22 = sub_22A4DD05C();
    v23 = sub_22A4DDCCC();
    swift_unknownObjectRelease();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v33 = v17;
      v25 = v24;
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v28 = v20;
      v29 = v27;
      v35 = v27;
      *v25 = 136315906;
      *(v25 + 4) = sub_2295A3E30(*(v28 + 120), *(v28 + 128), &v35);
      *(v25 + 12) = 2080;
      *(v25 + 14) = sub_2295A3E30(0xD000000000000036, 0x800000022A58ED80, &v35);
      *(v25 + 22) = 2112;
      *(v25 + 24) = v21;
      *v26 = v33;
      *(v25 + 32) = 2112;
      v30 = v21;
      v31 = [v16 isAllowedToEnableAdaptiveTemperatureAutomations];
      *(v25 + 34) = v31;
      v26[1] = v31;
      _os_log_impl(&dword_229538000, v22, v23, "%s %s Saving isAllowedToEnableAdaptiveTemperatureAutomations from %@ to %@", v25, 0x2Au);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D7D0, &unk_22A578D90);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v26, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v29, -1, -1);
      MEMORY[0x22AAD4E50](v25, -1, -1);
    }

    sub_2297082C0();
    swift_unknownObjectRelease();
  }
}

uint64_t sub_2296577EC()
{

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

void *sub_229657878(void *a1)
{
  v2 = v1;
  swift_defaultActor_initialize();
  v2[14] = a1;
  v4 = [a1 logIdentifier];
  v5 = sub_22A4DD5EC();
  v7 = v6;

  MEMORY[0x22AAD08C0](v5, v7);

  MEMORY[0x22AAD08C0](93, 0xE100000000000000);
  v2[15] = 91;
  v2[16] = 0xE100000000000000;
  return v2;
}

id sub_229657924()
{
  result = [objc_allocWithZone(HMDRegistry) init];
  qword_281401C50 = result;
  return result;
}

unint64_t type metadata accessor for HMDRegistry()
{
  result = qword_27D87E310;
  if (!qword_27D87E310)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D87E310);
  }

  return result;
}

id sub_229657BA8()
{
  if (qword_281401E88 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_281401E90);
  if (off_281401E98)
  {
    v0 = off_281401E98;
  }

  else
  {
    v0 = sub_22989D2C4(0x65446E6F6D656144, 0xED0000746C756166);
    off_281401E98 = v0;
  }

  os_unfair_lock_unlock(&dword_281401E90);
  os_unfair_lock_lock(v0 + 4);
  v1 = *(v0 + 3);
  v2 = v1;
  os_unfair_lock_unlock(v0 + 4);
  if (!v1)
  {
    v3 = *(v0 + 11);
    v4 = *(v0 + 12);
    __swift_project_boxed_opaque_existential_0(v0 + 8, v3);
    v2 = (*(v4 + 16))(v0, v3, v4);
  }

  return v2;
}

id sub_229657CC8()
{
  if (qword_281401E88 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_281401E90);
  if (off_281401E98)
  {
    v0 = off_281401E98;
  }

  else
  {
    v0 = sub_22989D2C4(0x65446E6F6D656144, 0xED0000746C756166);
    off_281401E98 = v0;
  }

  os_unfair_lock_unlock(&dword_281401E90);
  os_unfair_lock_lock(v0 + 4);
  v1 = *(v0 + 4);
  v2 = v1;
  os_unfair_lock_unlock(v0 + 4);
  if (!v1)
  {
    v3 = *(v0 + 11);
    v4 = *(v0 + 12);
    __swift_project_boxed_opaque_existential_0(v0 + 8, v3);
    v2 = (*(v4 + 24))(v0, v3, v4);
  }

  return v2;
}

id sub_229657DE8()
{
  if (qword_281401E88 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_281401E90);
  if (off_281401E98)
  {
    v0 = off_281401E98;
  }

  else
  {
    v0 = sub_22989D2C4(0x65446E6F6D656144, 0xED0000746C756166);
    off_281401E98 = v0;
  }

  os_unfair_lock_unlock(&dword_281401E90);
  os_unfair_lock_lock(v0 + 4);
  v1 = *(v0 + 5);
  v2 = v1;
  os_unfair_lock_unlock(v0 + 4);
  if (!v1)
  {
    v3 = *(v0 + 11);
    v4 = *(v0 + 12);
    __swift_project_boxed_opaque_existential_0(v0 + 8, v3);
    v2 = (*(v4 + 32))(v0, v3, v4);
  }

  return v2;
}

id sub_229657F08()
{
  if (qword_281401E88 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_281401E90);
  if (off_281401E98)
  {
    v0 = off_281401E98;
  }

  else
  {
    v0 = sub_22989D2C4(0x65446E6F6D656144, 0xED0000746C756166);
    off_281401E98 = v0;
  }

  os_unfair_lock_unlock(&dword_281401E90);
  os_unfair_lock_lock(v0 + 4);
  v1 = *(v0 + 6);
  v2 = v1;
  os_unfair_lock_unlock(v0 + 4);
  if (!v1)
  {
    v3 = *(v0 + 11);
    v4 = *(v0 + 12);
    __swift_project_boxed_opaque_existential_0(v0 + 8, v3);
    v2 = (*(v4 + 40))(v0, v3, v4);
  }

  return v2;
}

uint64_t sub_229658028@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v24[0] = a3;
  v24[1] = a1;
  v4 = sub_22A4DB91C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22A4DB83C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22A4DB8CC();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 104))(v11, *MEMORY[0x277CC9830], v8);
  sub_22A4DB84C();
  (*(v9 + 8))(v11, v8);
  (*(v5 + 16))(v7, a2, v4);
  sub_22A4DB8AC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E318, "\nT\b");
  v16 = sub_22A4DB8BC();
  v17 = *(v16 - 8);
  v18 = *(v17 + 72);
  v19 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_22A5779B0;
  v21 = v20 + v19;
  v22 = *(v17 + 104);
  v22(v21, *MEMORY[0x277CC99B8], v16);
  v22(v21 + v18, *MEMORY[0x277CC9980], v16);
  v22(v21 + 2 * v18, *MEMORY[0x277CC99A0], v16);
  v22(v21 + 3 * v18, *MEMORY[0x277CC99A8], v16);
  sub_22965BCF4(v20);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_22A4DB86C();

  return (*(v13 + 8))(v15, v12);
}

uint64_t sub_2296583D0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_22A4DD07C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22A4DB30C();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v40 - v15;
  sub_229658028(a1, a2, &v40 - v15);
  result = sub_22A4DB2EC();
  if (v18)
  {
    sub_22A4DD5EC();
    sub_22A4DD06C();
    v19 = sub_22A4DD05C();
    v20 = sub_22A4DDCEC();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_229538000, v19, v20, "Missing weekday field from received date input", v21, 2u);
      MEMORY[0x22AAD4E50](v21, -1, -1);
    }

    (*(v7 + 8))(v9, v6);
    (*(v11 + 8))(v16, v10);
    return 0;
  }

  else if (__OFADD__(result, 5))
  {
    __break(1u);
  }

  else
  {
    v41 = HMDaysOfTheWeekForWeekday();
    v40 = HMDaysOfTheWeekForWeekday();
    v22 = [v3 startTime];
    sub_22A4DB2AC();

    v23 = sub_22A4DB29C();
    v24 = *(v11 + 8);
    v24(v14, v10);
    v25 = HMSecondsFromDateComponent();

    v26 = [v25 unsignedLongLongValue];
    v27 = [v3 endTime];
    sub_22A4DB2AC();

    v28 = sub_22A4DB29C();
    v24(v14, v10);
    v29 = HMSecondsFromDateComponent();

    v30 = [v29 unsignedLongLongValue];
    v31 = sub_22A4DB29C();
    v32 = HMSecondsFromDateComponent();

    v33 = [v32 unsignedLongLongValue];
    v34 = v41;
    if (v30 >= v26 || ((v34 & ~[v3 daysOfTheWeek]) != 0 || v33 < v26) && ((v35 = objc_msgSend(v3, sel_daysOfTheWeek), (v40 & ~v35) == 0) ? (v36 = v33 >= v30) : (v36 = 1), v36))
    {
      v37 = [v3 daysOfTheWeek];
      v24(v16, v10);
      return (v34 & ~v37) == 0 && v33 >= v26 && v33 < v30;
    }

    else
    {
      v24(v16, v10);
      return 1;
    }
  }

  return result;
}

uint64_t sub_22965882C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v214 = a2;
  v210 = a1;
  v159 = a3;
  v191 = sub_22A4DD07C();
  v190 = *(v191 - 1);
  MEMORY[0x28223BE20](v191);
  v211 = (v151 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v209 = sub_22A4DB87C();
  v184 = *(v209 - 8);
  MEMORY[0x28223BE20](v209);
  v208 = v151 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v207 = sub_22A4DB88C();
  v183 = *(v207 - 8);
  MEMORY[0x28223BE20](v207);
  v206 = v151 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v205 = sub_22A4DB85C();
  v182 = *(v205 - 8);
  MEMORY[0x28223BE20](v205);
  v204 = v151 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881AA0, &qword_22A57BC20);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v167 = v151 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v166 = v151 - v10;
  v215 = sub_22A4DB74C();
  v196 = *(v215 - 8);
  v11 = MEMORY[0x28223BE20](v215);
  v165 = v151 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v164 = v151 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v163 = v151 - v16;
  MEMORY[0x28223BE20](v15);
  v162 = v151 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E338, &qword_22A57BB48);
  MEMORY[0x28223BE20](v18 - 8);
  v203 = v151 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E340, &qword_22A57BB50);
  MEMORY[0x28223BE20](v20 - 8);
  v202 = v151 - v21;
  v22 = sub_22A4DB30C();
  v192 = *(v22 - 8);
  v23 = MEMORY[0x28223BE20](v22);
  v189 = v151 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v23);
  v195 = v151 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v201 = v151 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v193 = v151 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v187 = v151 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v188 = v151 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v37 = v151 - v36;
  MEMORY[0x28223BE20](v35);
  v39 = v151 - v38;
  v40 = sub_22A4DB91C();
  v41 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v43 = v151 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_22A4DB83C();
  v45 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v47 = v151 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v213 = sub_22A4DB8CC();
  v160 = *(v213 - 8);
  MEMORY[0x28223BE20](v213);
  v49 = v151 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v45 + 104))(v47, *MEMORY[0x277CC9830], v44);
  sub_22A4DB84C();
  v50 = v47;
  v51 = v22;
  v52 = v194;
  (*(v45 + 8))(v50, v44);
  v186 = v41;
  v53 = *(v41 + 16);
  v199 = v41 + 16;
  v200 = v40;
  v198 = v53;
  v53(v43, v214, v40);
  v212 = v49;
  sub_22A4DB8AC();
  v54 = [v52 startTime];
  sub_22A4DB2AC();

  v161 = sub_22A4DB2BC();
  LOBYTE(v54) = v55;
  v56 = (v192 + 8);
  v57 = v39;
  v58 = *(v192 + 8);
  v58(v57, v51);
  v197 = v58;
  if (v54 & 1) != 0 || (v59 = [v52 startTime], sub_22A4DB2AC(), v59, v158 = sub_22A4DB2CC(), LOBYTE(v59) = v60, v58(v37, v51), (v59) || (v61 = objc_msgSend(v52, sel_endTime), v62 = v188, sub_22A4DB2AC(), v61, v157 = sub_22A4DB2BC(), LOBYTE(v61) = v63, v58(v62, v51), (v61) || (v64 = objc_msgSend(v52, sel_endTime), v65 = v187, sub_22A4DB2AC(), v64, v156 = sub_22A4DB2CC(), LOBYTE(v64) = v66, v58(v65, v51), (v64))
  {
    sub_22A4DD5EC();
    v67 = v211;
    sub_22A4DD06C();
    v68 = v52;
    v69 = sub_22A4DD05C();
    v70 = sub_22A4DDCEC();

    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      LODWORD(v210) = v70;
      v72 = v71;
      v214 = swift_slowAlloc();
      v216 = v214;
      *v72 = 136315394;
      v73 = [v68 startTime];
      v74 = v189;
      sub_22A4DB2AC();

      sub_22965C8C0(&qword_27D87E348, MEMORY[0x277CC8990], MEMORY[0x277CC89C0]);
      v75 = sub_22A4DE5CC();
      v76 = v51;
      v78 = v77;
      v79 = v197;
      v197(v74, v76);
      v80 = sub_2295A3E30(v75, v78, &v216);

      *(v72 + 4) = v80;
      *(v72 + 12) = 2080;
      v81 = [v68 endTime];
      sub_22A4DB2AC();

      v82 = sub_22A4DE5CC();
      v84 = v83;
      v79(v74, v76);
      v85 = sub_2295A3E30(v82, v84, &v216);

      *(v72 + 14) = v85;
      _os_log_impl(&dword_229538000, v69, v210, "Missing hour or minute in %s %s", v72, 0x16u);
      v86 = v214;
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v86, -1, -1);
      MEMORY[0x22AAD4E50](v72, -1, -1);

      (*(v190 + 8))(v211, v191);
    }

    else
    {

      (*(v190 + 8))(v67, v191);
    }

    (*(v160 + 8))(v212, v213);
    return (*(v196 + 56))(v159, 1, 1, v215);
  }

  else
  {
    v155 = sub_229659FF8();
    [v52 daysOfTheWeek];
    v88 = HMDaysOfTheWeekToDateComponents();
    v89 = sub_22A4DD83C();

    v90 = *(v89 + 16);
    v194 = v56;
    if (v90)
    {
      v91 = v192 + 16;
      v211 = *(v192 + 16);
      v92 = (*(v192 + 80) + 32) & ~*(v192 + 80);
      v192 = v89;
      v93 = v89 + v92;
      v94 = *(v91 + 56);
      v95 = MEMORY[0x277D84F90];
      do
      {
        v96 = v193;
        (v211)(v193, v93, v51);
        v97 = sub_22A4DB2EC();
        v99 = v98;
        v58(v96, v51);
        if ((v99 & 1) == 0)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v95 = sub_22958A310(0, *(v95 + 2) + 1, 1, v95);
          }

          v101 = *(v95 + 2);
          v100 = *(v95 + 3);
          if (v101 >= v100 >> 1)
          {
            v95 = sub_22958A310((v100 > 1), v101 + 1, 1, v95);
          }

          *(v95 + 2) = v101 + 1;
          *&v95[8 * v101 + 32] = v97;
          v58 = v197;
        }

        v93 += v94;
        --v90;
      }

      while (v90);
    }

    else
    {

      v95 = MEMORY[0x277D84F90];
    }

    v102 = *(v95 + 2);
    v151[0] = v95;
    if (v102)
    {
      v154 = v51;
      v103 = (v95 + 32);
      v193 = *(v160 + 16);
      v192 = v160 + 56;
      v191 = (v186 + 56);
      LODWORD(v190) = *MEMORY[0x277CC9878];
      v189 = (v182 + 13);
      LODWORD(v188) = *MEMORY[0x277CC9900];
      v187 = (v183 + 13);
      LODWORD(v186) = *MEMORY[0x277CC98E8];
      v185 = (v184 + 13);
      ++v184;
      ++v183;
      ++v182;
      v181 = (v196 + 48);
      v180 = (v196 + 32);
      v152 = (v196 + 16);
      v151[1] = v196 + 8;
      v211 = MEMORY[0x277D84F90];
      v153 = v160 + 16;
      do
      {
        v179 = v102;
        v106 = *v103;
        v178 = v103 + 1;
        v107 = v202;
        v108 = v213;
        (v193)(v202, v212, v213);
        v176 = *v192;
        v176(v107, 0, 1, v108);
        v109 = v203;
        v110 = v200;
        v198(v203, v214, v200);
        v175 = *v191;
        v175(v109, 0, 1, v110);
        v177 = v106;
        sub_22A4DB2FC();
        v111 = v204;
        v112 = v205;
        v174 = *v189;
        v174(v204, v190, v205);
        v114 = v206;
        v113 = v207;
        v173 = *v187;
        v173(v206, v188, v207);
        v116 = v208;
        v115 = v209;
        v172 = *v185;
        v172(v208, v186, v209);
        v117 = v166;
        sub_22A4DB89C();
        v171 = *v184;
        v171(v116, v115);
        v170 = *v183;
        v170(v114, v113);
        v169 = *v182;
        v169(v111, v112);
        v118 = v215;
        v168 = *v181;
        if (v168(v117, 1, v215) == 1)
        {
          sub_2296224D4(v117);
        }

        else
        {
          v119 = *v180;
          v120 = v162;
          (*v180)(v162, v117, v118);
          (*v152)(v163, v120, v118);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v211 = sub_22958A2E8(0, v211[2] + 1, 1, v211);
          }

          v122 = v211[2];
          v121 = v211[3];
          if (v122 >= v121 >> 1)
          {
            v211 = sub_22958A2E8((v121 > 1), v122 + 1, 1, v211);
          }

          v123 = v196;
          v124 = v215;
          (*(v196 + 8))(v162, v215);
          v125 = v211;
          v211[2] = v122 + 1;
          v119(&v125[((*(v123 + 80) + 32) & ~*(v123 + 80)) + *(v123 + 72) * v122], v163, v124);
        }

        v126 = v202;
        v127 = v213;
        (v193)(v202, v212, v213);
        v176(v126, 0, 1, v127);
        v128 = v203;
        v129 = v200;
        v198(v203, v214, v200);
        v175(v128, 0, 1, v129);
        v130 = v195;
        sub_22A4DB2FC();
        v131 = v204;
        v132 = v205;
        v174(v204, v190, v205);
        v133 = v206;
        v134 = v207;
        v173(v206, v188, v207);
        v136 = v208;
        v135 = v209;
        v172(v208, v186, v209);
        v137 = v167;
        sub_22A4DB89C();
        v171(v136, v135);
        v170(v133, v134);
        v169(v131, v132);
        v138 = v215;
        if (v168(v137, 1, v215) == 1)
        {
          v104 = v154;
          v105 = v197;
          v197(v130, v154);
          v105(v201, v104);
          sub_2296224D4(v137);
        }

        else
        {
          v139 = *v180;
          v140 = v164;
          (*v180)(v164, v137, v138);
          (*v152)(v165, v140, v138);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v142 = v197;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v211 = sub_22958A2E8(0, v211[2] + 1, 1, v211);
          }

          v143 = v195;
          v145 = v211[2];
          v144 = v211[3];
          if (v145 >= v144 >> 1)
          {
            v211 = sub_22958A2E8((v144 > 1), v145 + 1, 1, v211);
          }

          v146 = v196;
          v147 = v215;
          (*(v196 + 8))(v164, v215);
          v148 = v143;
          v149 = v154;
          v142(v148, v154);
          v142(v201, v149);
          v150 = v211;
          v211[2] = v145 + 1;
          v139(&v150[((*(v146 + 80) + 32) & ~*(v146 + 80)) + *(v146 + 72) * v145], v165, v147);
        }

        v102 = v179 - 1;
        v103 = v178;
      }

      while (v179 != 1);
    }

    else
    {
      v211 = MEMORY[0x277D84F90];
    }

    sub_22965A19C(v211, v159);

    return (*(v160 + 8))(v212, v213);
  }
}

BOOL sub_229659FF8()
{
  v1 = v0;
  v2 = sub_22A4DB30C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [v1 startTime];
  sub_22A4DB2AC();

  v7 = sub_22A4DB29C();
  v8 = *(v3 + 8);
  v8(v5, v2);
  v9 = HMSecondsFromDateComponent();

  v10 = [v9 unsignedLongLongValue];
  v11 = [v1 endTime];
  sub_22A4DB2AC();

  v12 = sub_22A4DB29C();
  v8(v5, v2);
  v13 = HMSecondsFromDateComponent();

  v14 = [v13 unsignedLongLongValue];
  return v14 < v10;
}

uint64_t sub_22965A19C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_22A4DB74C();
  v5 = MEMORY[0x28223BE20](*(v4 - 8));
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v22 - v9;
  v11 = *(a1 + 16);
  if (v11)
  {
    v12 = *(v8 + 16);
    v13 = a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v25 = v8;
    v23 = a2;
    v24 = v12;
    v12(&v22 - v9, v13, v4);
    result = v25;
    if (v11 == 1)
    {
LABEL_3:
      v15 = v23;
      (*(result + 32))(v23, v10, v4);
      return (*(v25 + 56))(v15, 0, 1, v4);
    }

    else
    {
      v17 = (v25 + 32);
      v18 = 1;
      while (1)
      {
        v19 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          break;
        }

        v24(v7, v13 + *(result + 72) * v18, v4);
        sub_22965C8C0(&unk_27D87EBD0, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
        v20 = sub_22A4DD52C();
        v21 = *(v25 + 8);
        if (v20)
        {
          v21(v10, v4);
          (*v17)(v10, v7, v4);
        }

        else
        {
          v21(v7, v4);
        }

        ++v18;
        result = v25;
        if (v19 == v11)
        {
          goto LABEL_3;
        }
      }

      __break(1u);
    }
  }

  else
  {
    v16 = *(v8 + 56);

    return v16(a2, 1, 1, v4);
  }

  return result;
}

uint64_t sub_22965A44C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881AA0, &qword_22A57BC20);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v17 - v5;
  v7 = sub_22A4DB74C();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v17 - v12;
  if ((sub_2296583D0(a1, a2) & 1) == 0)
  {
    sub_22965A63C(a1, a2, v6);
    if ((*(v8 + 48))(v6, 1, v7) != 1)
    {
      (*(v8 + 32))(v13, v6, v7);
      sub_22A4DB6DC();
      v14 = sub_22A4DB6CC();
      v15 = *(v8 + 8);
      v15(v11, v7);
      v15(v13, v7);
      return v14 & 1;
    }

    sub_2296224D4(v6);
  }

  v14 = 0;
  return v14 & 1;
}

uint64_t sub_22965A63C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v179 = a2;
  v177 = a1;
  v139 = a3;
  v180 = sub_22A4DD07C();
  v161 = *(v180 - 8);
  MEMORY[0x28223BE20](v180);
  v184 = &v137 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v170 = sub_22A4DB88C();
  v149 = *(v170 - 8);
  MEMORY[0x28223BE20](v170);
  v169 = &v137 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v168 = sub_22A4DB87C();
  v158 = *(v168 - 8);
  MEMORY[0x28223BE20](v168);
  v167 = &v137 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v166 = sub_22A4DB85C();
  v147 = *(v166 - 8);
  MEMORY[0x28223BE20](v166);
  v165 = &v137 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881AA0, &qword_22A57BC20);
  MEMORY[0x28223BE20](v7 - 8);
  v185 = &v137 - v8;
  v182 = sub_22A4DB74C();
  v145 = *(v182 - 8);
  v9 = MEMORY[0x28223BE20](v182);
  v164 = &v137 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v163 = &v137 - v12;
  MEMORY[0x28223BE20](v11);
  v138 = &v137 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E338, &qword_22A57BB48);
  MEMORY[0x28223BE20](v14 - 8);
  v176 = &v137 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E340, &qword_22A57BB50);
  MEMORY[0x28223BE20](v16 - 8);
  v175 = &v137 - v17;
  v18 = sub_22A4DB30C();
  v181 = *(v18 - 8);
  v19 = MEMORY[0x28223BE20](v18);
  v159 = &v137 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v143 = &v137 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v137 - v24;
  v26 = MEMORY[0x28223BE20](v23);
  v186 = &v137 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v160 = &v137 - v29;
  MEMORY[0x28223BE20](v28);
  v31 = &v137 - v30;
  v32 = sub_22A4DB91C();
  v33 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v35 = &v137 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_22A4DB83C();
  v37 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v39 = &v137 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = sub_22A4DB8CC();
  v140 = *(v144 - 8);
  MEMORY[0x28223BE20](v144);
  v41 = &v137 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v37 + 104))(v39, *MEMORY[0x277CC9830], v36);
  sub_22A4DB84C();
  v42 = v36;
  v43 = v18;
  (*(v37 + 8))(v39, v42);
  v44 = v179;
  v45 = v183;
  v157 = v33;
  v46 = *(v33 + 16);
  v173 = v33 + 16;
  v174 = v32;
  v172 = v46;
  v46(v35, v179, v32);
  v187 = v41;
  sub_22A4DB8AC();
  v47 = [v45 endTime];
  sub_22A4DB2AC();

  v171 = sub_22A4DB2BC();
  LOBYTE(v47) = v48;
  v49 = v181;
  v50 = v181[1];
  v178 = v181 + 1;
  v188 = v50;
  v50(v31, v43);
  if (v47 & 1) != 0 || (v51 = [v45 endTime], v52 = v160, sub_22A4DB2AC(), v51, v162 = sub_22A4DB2CC(), LOBYTE(v51) = v53, v188(v52, v43), (v51))
  {
    sub_22A4DD5EC();
    v54 = v184;
    sub_22A4DD06C();
    v55 = v45;
    v56 = sub_22A4DD05C();
    v57 = sub_22A4DDCEC();

    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      LODWORD(v185) = v57;
      v59 = v58;
      v186 = swift_slowAlloc();
      v189 = v186;
      *v59 = 136315394;
      v60 = [v55 startTime];
      v61 = v159;
      sub_22A4DB2AC();

      sub_22965C8C0(&qword_27D87E348, MEMORY[0x277CC8990], MEMORY[0x277CC89C0]);
      v62 = sub_22A4DE5CC();
      v64 = v63;
      v65 = v188;
      v188(v61, v43);
      v66 = sub_2295A3E30(v62, v64, &v189);

      *(v59 + 4) = v66;
      *(v59 + 12) = 2080;
      v67 = [v55 endTime];
      sub_22A4DB2AC();

      v68 = sub_22A4DE5CC();
      v70 = v69;
      v65(v61, v43);
      v71 = sub_2295A3E30(v68, v70, &v189);

      *(v59 + 14) = v71;
      _os_log_impl(&dword_229538000, v56, v185, "Missing hour or minute in %s %s", v59, 0x16u);
      v72 = v186;
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v72, -1, -1);
      MEMORY[0x22AAD4E50](v59, -1, -1);

      (*(v161 + 8))(v184, v180);
    }

    else
    {

      (*(v161 + 8))(v54, v180);
    }

    (*(v140 + 8))(v187, v144);
    return (*(v145 + 56))(v139, 1, 1, v182);
  }

  sub_229658028(v177, v44, v186);
  LODWORD(v161) = sub_229659FF8();
  [v45 daysOfTheWeek];
  v74 = HMDaysOfTheWeekToDateComponents();
  v75 = sub_22A4DD83C();

  v76 = *(v75 + 16);
  v180 = v43;
  if (v76)
  {
    v77 = v49[2];
    v183 = v75;
    v184 = v77;
    v78 = v75 + ((*(v49 + 80) + 32) & ~*(v49 + 80));
    v79 = v49[9];
    v80 = MEMORY[0x277D84F90];
    (v77)(v25, v78, v43);
    while (1)
    {
      v81 = sub_22A4DB2EC();
      v83 = v82;
      v188(v25, v43);
      if ((v83 & 1) == 0)
      {
        v84 = v80;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v84 = sub_22958A310(0, *(v80 + 2) + 1, 1, v80);
        }

        v86 = *(v84 + 2);
        v85 = *(v84 + 3);
        v80 = v84;
        if (v86 >= v85 >> 1)
        {
          v80 = sub_22958A310((v85 > 1), v86 + 1, 1, v84);
        }

        *(v80 + 2) = v86 + 1;
        *&v80[8 * v86 + 32] = v81;
        v43 = v180;
      }

      v78 += v79;
      if (!--v76)
      {
        break;
      }

      (v184)(v25, v78, v43);
    }

    v87 = v80;
  }

  else
  {

    v87 = MEMORY[0x277D84F90];
  }

  v88 = v158;
  v89 = *(v87 + 2);
  v90 = v144;
  v91 = v143;
  v137 = v87;
  if (v89)
  {
    v92 = v87 + 32;
    v159 = *(v140 + 16);
    v160 = (v140 + 16);
    v158 = (v140 + 56);
    v157 += 7;
    v142 = (v145 + 16);
    v156 = (v145 + 32);
    v155 = *MEMORY[0x277CC9878];
    v154 = (v147 + 13);
    v153 = *MEMORY[0x277CC98F0];
    v152 = (v88 + 13);
    v151 = *MEMORY[0x277CC9900];
    v150 = (v149 + 13);
    ++v149;
    v148 = (v88 + 1);
    ++v147;
    v146 = (v145 + 48);
    v141 = v145 + 8;
    v181 = MEMORY[0x277D84F90];
    while (1)
    {
      v92 += 8;
      v93 = v175;
      (v159)(v175, v187, v90);
      (*v158)(v93, 0, 1, v90);
      v94 = v176;
      v95 = v174;
      v172(v176, v179, v174);
      (*v157)(v94, 0, 1, v95);
      sub_22A4DB2FC();
      v96 = sub_22A4DB2EC();
      v98 = v97;
      v99 = sub_22A4DB2EC();
      if (v98)
      {
        if ((v100 & 1) == 0)
        {
          goto LABEL_45;
        }
      }

      else if ((v100 & 1) != 0 || v96 != v99)
      {
        goto LABEL_45;
      }

      v101 = sub_22A4DB2BC();
      v103 = v102;
      v104 = sub_22A4DB2BC();
      if (v103)
      {
        if ((v105 & 1) == 0)
        {
          goto LABEL_45;
        }
      }

      else if ((v105 & 1) != 0 || v101 != v104)
      {
        goto LABEL_45;
      }

      v106 = sub_22A4DB2CC();
      v108 = v107;
      v109 = sub_22A4DB2CC();
      if (v108)
      {
        if ((v110 & 1) == 0)
        {
          goto LABEL_45;
        }
      }

      else if ((v110 & 1) != 0 || v106 != v109)
      {
        goto LABEL_45;
      }

      v111 = sub_22A4DB2DC();
      if ((v112 & 1) == 0 && !v111)
      {
        v113 = v182;
        (*v142)(v138, v177, v182);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v181 = sub_22958A2E8(0, v181[2] + 1, 1, v181);
        }

        v115 = v181[2];
        v114 = v181[3];
        if (v115 >= v114 >> 1)
        {
          v181 = sub_22958A2E8((v114 > 1), v115 + 1, 1, v181);
        }

        v188(v91, v180);
        v116 = v181;
        v181[2] = v115 + 1;
        (*(v145 + 32))(v116 + ((*(v145 + 80) + 32) & ~*(v145 + 80)) + *(v145 + 72) * v115, v138, v113);
        goto LABEL_22;
      }

LABEL_45:
      v183 = v89;
      v184 = v92;
      v117 = v90;
      v118 = v185;
      v119 = v165;
      v120 = v166;
      (*v154)(v165, v155, v166);
      v121 = v167;
      v122 = v91;
      v123 = v168;
      (*v152)(v167, v153, v168);
      v125 = v169;
      v124 = v170;
      (*v150)(v169, v151, v170);
      sub_22A4DB89C();
      (*v149)(v125, v124);
      (*v148)(v121, v123);
      (*v147)(v119, v120);
      v126 = v182;
      if ((*v146)(v118, 1, v182) == 1)
      {
        v188(v122, v180);
        sub_2296224D4(v185);
        v91 = v122;
        v90 = v117;
        v89 = v183;
        v92 = v184;
      }

      else
      {
        v127 = *v156;
        v128 = v163;
        (*v156)(v163, v185, v126);
        (*v142)(v164, v128, v126);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v181 = sub_22958A2E8(0, v181[2] + 1, 1, v181);
        }

        v89 = v183;
        v130 = v181[2];
        v129 = v181[3];
        if (v130 >= v129 >> 1)
        {
          v181 = sub_22958A2E8((v129 > 1), v130 + 1, 1, v181);
        }

        v131 = v145;
        v132 = v182;
        (*(v145 + 8))(v163, v182);
        v133 = v143;
        v188(v143, v180);
        v134 = v181;
        v181[2] = v130 + 1;
        v135 = v134 + ((*(v131 + 80) + 32) & ~*(v131 + 80));
        v136 = *(v131 + 72);
        v91 = v133;
        v127(&v135[v136 * v130], v164, v132);
        v90 = v144;
        v92 = v184;
      }

LABEL_22:
      if (!--v89)
      {
        goto LABEL_52;
      }
    }
  }

  v181 = MEMORY[0x277D84F90];
LABEL_52:

  sub_22965BA44(v181, v139);

  v188(v186, v180);
  return (*(v140 + 8))(v187, v90);
}

uint64_t sub_22965BA44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_22A4DB74C();
  v5 = MEMORY[0x28223BE20](*(v4 - 8));
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v22 - v9;
  v11 = *(a1 + 16);
  if (v11)
  {
    v12 = *(v8 + 16);
    v13 = a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v25 = v8;
    v23 = a2;
    v24 = v12;
    v12(&v22 - v9, v13, v4);
    result = v25;
    if (v11 == 1)
    {
LABEL_3:
      v15 = v23;
      (*(result + 32))(v23, v10, v4);
      return (*(v25 + 56))(v15, 0, 1, v4);
    }

    else
    {
      v17 = (v25 + 32);
      v18 = 1;
      while (1)
      {
        v19 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          break;
        }

        v24(v7, v13 + *(result + 72) * v18, v4);
        sub_22965C8C0(&unk_27D87EBD0, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
        v20 = sub_22A4DD52C();
        v21 = *(v25 + 8);
        if (v20)
        {
          v21(v10, v4);
          (*v17)(v10, v7, v4);
        }

        else
        {
          v21(v7, v4);
        }

        ++v18;
        result = v25;
        if (v19 == v11)
        {
          goto LABEL_3;
        }
      }

      __break(1u);
    }
  }

  else
  {
    v16 = *(v8 + 56);

    return v16(a2, 1, 1, v4);
  }

  return result;
}

uint64_t sub_22965BCF4(uint64_t a1)
{
  v2 = sub_22A4DB8BC();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E320, &qword_22A57BB40);
    v9 = sub_22A4DE1CC();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_22965C8C0(&qword_27D87E328, MEMORY[0x277CC99D0], MEMORY[0x277CC99D8]);
      v16 = sub_22A4DD4EC();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v6, *(v9 + 48) + v18 * v14, v2);
          sub_22965C8C0(&qword_27D87E330, MEMORY[0x277CC99D0], MEMORY[0x277CC99E0]);
          v23 = sub_22A4DD58C();
          v24 = *v15;
          (*v15)(v6, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_22965C038(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87CED8, &qword_22A57C0E0);
    v3 = sub_22A4DE1CC();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      sub_22A4DE77C();

      sub_22A4DD6BC();
      result = sub_22A4DE7BC();
      v11 = ~(-1 << *(v3 + 32));
      for (i = result & v11; ; i = (i + 1) & v11)
      {
        v13 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v13) == 0)
        {
          break;
        }

        v14 = (*(v3 + 48) + 16 * i);
        if (*v14 != v9 || v14[1] != v8)
        {
          result = sub_22A4DE60C();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v13;
      v16 = (*(v3 + 48) + 16 * i);
      *v16 = v9;
      v16[1] = v8;
      v17 = *(v3 + 16);
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (!v18)
      {
        *(v3 + 16) = v19;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84FA0];
  }

  return result;
}

uint64_t sub_22965C1A0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87CFC0, &qword_22A577DD8);
    v3 = sub_22A4DE1CC();
    v4 = 0;
    v5 = v3 + 56;
    v20 = v1;
    v21 = a1 + 32;
    while (2)
    {
      v6 = *(v21 + v4);
      sub_22A4DE77C();
      sub_2295C50B0(v6);
      sub_22A4DD6BC();

      result = sub_22A4DE7BC();
      v8 = ~(-1 << *(v3 + 32));
      for (i = result & v8; ; i = (i + 1) & v8)
      {
        v10 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v10) == 0)
        {
          break;
        }

        v11 = sub_2295C50B0(*(*(v3 + 48) + i));
        v13 = v12;
        if (v11 == sub_2295C50B0(v6) && v13 == v14)
        {

          goto LABEL_4;
        }

        v16 = sub_22A4DE60C();

        if (v16)
        {
          goto LABEL_4;
        }
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v10;
      *(*(v3 + 48) + i) = v6;
      v17 = *(v3 + 16);
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (!v18)
      {
        *(v3 + 16) = v19;
LABEL_4:
        if (++v4 == v20)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84FA0];
  }

  return result;
}

uint64_t sub_22965C354(uint64_t a1)
{
  v2 = type metadata accessor for HomeDeviceEntity(0);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - v7;
  v9 = *(a1 + 16);
  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87CFA8, &qword_22A577DC0);
    v10 = sub_22A4DE1CC();
    v11 = 0;
    v12 = v10 + 56;
    v25 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v26 = v9;
    v13 = *(v3 + 72);
    while (2)
    {
      sub_22959E67C(v25 + v13 * v11, v8);
      sub_22A4DE77C();
      sub_22A4DB7DC();
      sub_22965C8C0(&qword_281403880, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      sub_22A4DD4FC();
      v15 = sub_22A4DE7BC();
      v16 = ~(-1 << *(v10 + 32));
      for (i = v15 & v16; ; i = (i + 1) & v16)
      {
        v18 = *(v12 + 8 * (i >> 6));
        if (((1 << i) & v18) == 0)
        {
          break;
        }

        sub_22959E67C(*(v10 + 48) + i * v13, v6);
        v19 = sub_22A4DB78C();
        sub_22959E6E0(v6);
        if (v19)
        {
          sub_22959E6E0(v8);
          v14 = v26;
          goto LABEL_4;
        }
      }

      *(v12 + 8 * (i >> 6)) = (1 << i) | v18;
      result = sub_22959E73C(v8, *(v10 + 48) + i * v13);
      v21 = *(v10 + 16);
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      v14 = v26;
      if (!v22)
      {
        *(v10 + 16) = v23;
LABEL_4:
        if (++v11 == v14)
        {
          return v10;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84FA0];
  }

  return result;
}

void sub_22965C5D4(unint64_t a1, uint64_t *a2, uint64_t *a3, unint64_t *a4, void *a5)
{
  v5 = a1;
  v6 = a1 >> 62;
  if (a1 >> 62)
  {
    v10 = a3;
    v11 = a2;
    v12 = sub_22A4DE0EC();
    a2 = v11;
    a3 = v10;
    if (v12)
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
      v7 = sub_22A4DE1CC();
      v8 = v5 & 0xFFFFFFFFFFFFFF8;
      if (!v6)
      {
        goto LABEL_4;
      }

LABEL_8:
      v9 = sub_22A4DE0EC();
      if (!v9)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v7 = MEMORY[0x277D84FA0];
  v8 = v5 & 0xFFFFFFFFFFFFFF8;
  if (v6)
  {
    goto LABEL_8;
  }

LABEL_4:
  v9 = *(v8 + 16);
  if (!v9)
  {
    return;
  }

LABEL_9:
  v13 = v7 + 56;
  v46 = v9;
  if ((v5 & 0xC000000000000001) != 0)
  {
    v14 = 0;
    v42 = v5;
    while (1)
    {
      v15 = MEMORY[0x22AAD13F0](v14, v5);
      v16 = __OFADD__(v14++, 1);
      if (v16)
      {
        break;
      }

      v17 = v15;
      v18 = sub_22A4DDECC();
      v19 = -1 << *(v7 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      v22 = *(v13 + 8 * (v20 >> 6));
      v23 = 1 << v20;
      if (((1 << v20) & v22) != 0)
      {
        v24 = ~v19;
        sub_229562F68(0, a4, a5);
        while (1)
        {
          v25 = *(*(v7 + 48) + 8 * v20);
          v26 = sub_22A4DDEDC();

          if (v26)
          {
            break;
          }

          v20 = (v20 + 1) & v24;
          v21 = v20 >> 6;
          v22 = *(v13 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          if (((1 << v20) & v22) == 0)
          {
            v9 = v46;
            v5 = v42;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v9 = v46;
        v5 = v42;
        if (v14 == v46)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *(v13 + 8 * v21) = v23 | v22;
        *(*(v7 + 48) + 8 * v20) = v17;
        v27 = *(v7 + 16);
        v16 = __OFADD__(v27, 1);
        v28 = v27 + 1;
        if (v16)
        {
          goto LABEL_32;
        }

        *(v7 + 16) = v28;
        if (v14 == v9)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {
    v29 = 0;
    v43 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v29 != v43)
    {
      v30 = *(v5 + 32 + 8 * v29);
      v31 = sub_22A4DDECC();
      v32 = -1 << *(v7 + 32);
      v33 = v31 & ~v32;
      v34 = v33 >> 6;
      v35 = *(v13 + 8 * (v33 >> 6));
      v36 = 1 << v33;
      if (((1 << v33) & v35) != 0)
      {
        v37 = ~v32;
        sub_229562F68(0, a4, a5);
        while (1)
        {
          v38 = *(*(v7 + 48) + 8 * v33);
          v39 = sub_22A4DDEDC();

          if (v39)
          {
            break;
          }

          v33 = (v33 + 1) & v37;
          v34 = v33 >> 6;
          v35 = *(v13 + 8 * (v33 >> 6));
          v36 = 1 << v33;
          if (((1 << v33) & v35) == 0)
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
LABEL_29:
        *(v13 + 8 * v34) = v36 | v35;
        *(*(v7 + 48) + 8 * v33) = v30;
        v40 = *(v7 + 16);
        v16 = __OFADD__(v40, 1);
        v41 = v40 + 1;
        if (v16)
        {
          goto LABEL_34;
        }

        *(v7 + 16) = v41;
      }

      if (++v29 == v46)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

uint64_t sub_22965C8C0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22965C908()
{
  v0 = sub_22A4DD07C();
  __swift_allocate_value_buffer(v0, qword_281401F78);
  __swift_project_value_buffer(v0, qword_281401F78);
  sub_22A4DD5EC();
  return sub_22A4DD06C();
}

uint64_t sub_22965C980()
{
  *(v1 + 96) = v0;
  v2 = swift_task_alloc();
  *(v1 + 104) = v2;
  *v2 = v1;
  v2[1] = sub_22965CA1C;

  return sub_22965CD60(v1 + 56, 1);
}

uint64_t sub_22965CA1C()
{
  v2 = *(*v1 + 96);
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = sub_229669DB0;
  }

  else
  {
    v3 = sub_22965CB44;
  }

  return MEMORY[0x2822009F8](v3, v2, 0);
}

uint64_t sub_22965CB44()
{
  sub_229557188((v0 + 56), v0 + 16);
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_0((v0 + 16), v1);
  v3 = (*(v2 + 24))(v1, v2);
  v4 = sub_229668C28(v3);
  *(v0 + 120) = v4;

  v5 = swift_task_alloc();
  *(v0 + 128) = v5;
  *v5 = v0;
  v5[1] = sub_22965CC34;

  return sub_22965D440(v4);
}

uint64_t sub_22965CC34()
{
  v1 = *(*v0 + 96);

  return MEMORY[0x2822009F8](sub_229669DD8, v1, 0);
}

uint64_t sub_22965CD60(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  return MEMORY[0x2822009F8](sub_22965CD84, v2, 0);
}

void sub_22965CD84()
{
  v1 = objc_allocWithZone(MEMORY[0x277D289D8]);
  v2 = sub_22A4DD5AC();
  v3 = [v1 initWithType_];

  if (v3)
  {
    v5 = v0[7];
    v4 = v0[8];
    v6 = sub_229562F68(0, &qword_281401C08, 0x277D289D8);
    v5[3] = v6;
    v5[4] = &off_283CE22F8;
    *v5 = v3;
    [v3 returnTypes_];
    v8 = off_283CE2308 + *off_283CE2308;
    v7 = swift_task_alloc();
    v0[10] = v7;
    *v7 = v0;
    v7[1] = sub_22965CF38;

    (v8)(v6, &off_283CE22F8);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_22965CF38(uint64_t a1)
{
  v2 = *(*v1 + 72);
  *(*v1 + 88) = a1;

  return MEMORY[0x2822009F8](sub_22965D050, v2, 0);
}

uint64_t sub_22965D050()
{
  v32 = v0;
  v1 = v0[11];
  if (v1)
  {
    if (v1 == 2)
    {
      if (qword_281401F70 != -1)
      {
        swift_once();
      }

      v2 = sub_22A4DD07C();
      __swift_project_value_buffer(v2, qword_281401F78);
      v3 = sub_22A4DD05C();
      v4 = sub_22A4DDCCC();
      if (os_log_type_enabled(v3, v4))
      {
        v5 = swift_slowAlloc();
        *v5 = 0;
        _os_log_impl(&dword_229538000, v3, v4, "Query returned no metadata file", v5, 2u);
        MEMORY[0x22AAD4E50](v5, -1, -1);
      }

      v6 = 1;
    }

    else
    {
      if (qword_281401F70 != -1)
      {
        swift_once();
      }

      v15 = sub_22A4DD07C();
      __swift_project_value_buffer(v15, qword_281401F78);
      v16 = sub_22A4DD05C();
      v17 = sub_22A4DDCCC();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = v0[11];
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v31 = v20;
        *v19 = 134218242;
        *(v19 + 4) = v18;
        *(v19 + 12) = 2082;
        v21 = MEMORY[0x22AAD2B80](v18);
        if (v21)
        {
          v22 = v21;
          v23 = sub_22A4DD5EC();
          v25 = v24;
        }

        else
        {
          v23 = 0;
          v25 = 0xE000000000000000;
        }

        v27 = sub_2295A3E30(v23, v25, &v31);

        *(v19 + 14) = v27;
        _os_log_impl(&dword_229538000, v16, v17, "Query failed with result %ld (%{public}s)", v19, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v20);
        MEMORY[0x22AAD4E50](v20, -1, -1);
        MEMORY[0x22AAD4E50](v19, -1, -1);
      }

      v6 = 2;
    }

    v28 = v0[7];
    sub_2296691E4();
    swift_allocError();
    *v29 = v6;
    *(v29 + 8) = 1;
    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_0(v28);
    v26 = v0[1];
  }

  else
  {
    if (qword_281401F70 != -1)
    {
      swift_once();
    }

    v7 = v0[7];
    v8 = sub_22A4DD07C();
    __swift_project_value_buffer(v8, qword_281401F78);
    sub_22957F1C4(v7, (v0 + 2));
    v9 = sub_22A4DD05C();
    v10 = sub_22A4DDCCC();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 134217984;
      v12 = v0[5];
      v13 = v0[6];
      __swift_project_boxed_opaque_existential_0(v0 + 2, v12);
      v14 = *((*(v13 + 24))(v12, v13) + 16);

      __swift_destroy_boxed_opaque_existential_0(v0 + 2);
      *(v11 + 4) = v14;
      _os_log_impl(&dword_229538000, v9, v10, "Query returned %ld result(s)", v11, 0xCu);
      MEMORY[0x22AAD4E50](v11, -1, -1);
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_0(v0 + 2);
    }

    v26 = v0[1];
  }

  return v26();
}

uint64_t sub_22965D440(uint64_t a1)
{
  *(v2 + 288) = a1;
  *(v2 + 296) = v1;
  return MEMORY[0x2822009F8](sub_22965D460, v1, 0);
}

uint64_t sub_22965D460()
{
  v34 = v0;
  v1 = *(v0 + 36);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v1 + 32;
    v4 = MEMORY[0x277D84F90];
    do
    {
      sub_22957F1C4(v3, (v0 + 1));
      v5 = *(v0 + 5);
      v6 = *(v0 + 6);
      __swift_project_boxed_opaque_existential_0(v0 + 2, v5);
      if ((*(v6 + 32))(v5, v6))
      {
        sub_229557188(v0 + 1, v0 + 56);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v33 = v4;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_22958383C(0, *(v4 + 16) + 1, 1);
          v4 = v33;
        }

        v9 = *(v4 + 16);
        v8 = *(v4 + 24);
        if (v9 >= v8 >> 1)
        {
          sub_22958383C((v8 > 1), v9 + 1, 1);
        }

        v10 = *(v0 + 10);
        v11 = *(v0 + 11);
        v12 = __swift_mutable_project_boxed_opaque_existential_0(v0 + 56, v10);
        v13 = *(v10 - 8);
        v14 = swift_task_alloc();
        (*(v13 + 16))(v14, v12, v10);
        sub_229668B90(v9, v14, &v33, v10, v11);
        __swift_destroy_boxed_opaque_existential_0(v0 + 7);

        v4 = v33;
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_0(v0 + 2);
      }

      v3 += 40;
      --v2;
    }

    while (v2);
  }

  else
  {
    v4 = MEMORY[0x277D84F90];
  }

  *(v0 + 38) = v4;
  v15 = *(v4 + 16);
  *(v0 + 39) = v15;
  if (v15)
  {
    *(v0 + 40) = 0;
    sub_22957F1C4(v4 + 32, (v0 + 6));
    if (qword_281401F70 != -1)
    {
      swift_once();
    }

    v16 = sub_22A4DD07C();
    *(v0 + 41) = __swift_project_value_buffer(v16, qword_281401F78);
    sub_22957F1C4((v0 + 6), v0 + 136);
    v17 = sub_22A4DD05C();
    v18 = sub_22A4DDCCC();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v33 = v20;
      *v19 = 136315138;
      v21 = *(v0 + 20);
      v22 = *(v0 + 21);
      __swift_project_boxed_opaque_existential_0(v0 + 17, v21);
      *(v0 + 35) = sub_2297B96F4(v21, v22);
      v23 = sub_22A4DE5CC();
      v25 = v24;
      __swift_destroy_boxed_opaque_existential_0(v0 + 17);
      v26 = sub_2295A3E30(v23, v25, &v33);

      *(v19 + 4) = v26;
      _os_log_impl(&dword_229538000, v17, v18, "Purging asset with version %s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v20);
      MEMORY[0x22AAD4E50](v20, -1, -1);
      MEMORY[0x22AAD4E50](v19, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_0(v0 + 17);
    }

    v29 = *(v0 + 15);
    v30 = *(v0 + 16);
    __swift_project_boxed_opaque_existential_0(v0 + 12, v29);
    v32 = (*(v30 + 48) + **(v30 + 48));
    v31 = swift_task_alloc();
    *(v0 + 42) = v31;
    *v31 = v0;
    v31[1] = sub_22965D904;

    return v32(v29, v30);
  }

  else
  {

    v27 = *(v0 + 1);

    return v27();
  }
}

uint64_t sub_22965D904(uint64_t a1)
{
  v2 = *(*v1 + 296);
  *(*v1 + 344) = a1;

  return MEMORY[0x2822009F8](sub_22965DA1C, v2, 0);
}

uint64_t sub_22965DA1C()
{
  v48 = v0;
  v1 = (v0 + 12);
  if (v0[43])
  {
    sub_22957F1C4(v1, (v0 + 22));
    v2 = sub_22A4DD05C();
    v3 = sub_22A4DDCCC();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = v0[43];
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v0[32] = v6;
      *v5 = 136446722;
      v7 = v0[25];
      v8 = v0[26];
      __swift_project_boxed_opaque_existential_0(v0 + 22, v7);
      v0[33] = sub_2297B96F4(v7, v8);
      v9 = sub_22A4DE5CC();
      v11 = v10;
      __swift_destroy_boxed_opaque_existential_0(v0 + 22);
      v12 = sub_2295A3E30(v9, v11, v0 + 32);

      *(v5 + 4) = v12;
      *(v5 + 12) = 2048;
      *(v5 + 14) = v4;
      *(v5 + 22) = 2082;
      v13 = MEMORY[0x22AAD2B70](v4);
      if (v13)
      {
        v14 = v13;
        v15 = sub_22A4DD5EC();
        v17 = v16;
      }

      else
      {
        v15 = 0;
        v17 = 0xE000000000000000;
      }

      v26 = sub_2295A3E30(v15, v17, v0 + 32);

      *(v5 + 24) = v26;
      _os_log_impl(&dword_229538000, v2, v3, "Asset %{public}s purge failed with error %ld (%{public}s)", v5, 0x20u);
      swift_arrayDestroy();
      goto LABEL_12;
    }

    v25 = v0 + 22;
LABEL_9:
    __swift_destroy_boxed_opaque_existential_0(v25);
    goto LABEL_13;
  }

  sub_22957F1C4(v1, (v0 + 27));
  v2 = sub_22A4DD05C();
  v18 = sub_22A4DDCCC();
  if (!os_log_type_enabled(v2, v18))
  {

    v25 = v0 + 27;
    goto LABEL_9;
  }

  v5 = swift_slowAlloc();
  v6 = swift_slowAlloc();
  v47 = v6;
  *v5 = 136446210;
  v19 = v0[30];
  v20 = v0[31];
  __swift_project_boxed_opaque_existential_0(v0 + 27, v19);
  v0[34] = sub_2297B96F4(v19, v20);
  v21 = sub_22A4DE5CC();
  v23 = v22;
  __swift_destroy_boxed_opaque_existential_0(v0 + 27);
  v24 = sub_2295A3E30(v21, v23, &v47);

  *(v5 + 4) = v24;
  _os_log_impl(&dword_229538000, v2, v18, "Asset %{public}s purged", v5, 0xCu);
  __swift_destroy_boxed_opaque_existential_0(v6);
LABEL_12:
  MEMORY[0x22AAD4E50](v6, -1, -1);
  MEMORY[0x22AAD4E50](v5, -1, -1);

LABEL_13:
  v27 = v0[39];
  v28 = v0[40] + 1;
  __swift_destroy_boxed_opaque_existential_0(v0 + 12);
  if (v28 == v27)
  {

    v29 = v0[1];

    return v29();
  }

  else
  {
    v31 = v0[40];
    v0[40] = v31 + 1;
    sub_22957F1C4(v0[38] + 40 * v31 + 72, (v0 + 12));
    if (qword_281401F70 != -1)
    {
      swift_once();
    }

    v32 = sub_22A4DD07C();
    v0[41] = __swift_project_value_buffer(v32, qword_281401F78);
    sub_22957F1C4((v0 + 12), (v0 + 17));
    v33 = sub_22A4DD05C();
    v34 = sub_22A4DDCCC();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v47 = v36;
      *v35 = 136315138;
      v37 = v0[20];
      v38 = v0[21];
      __swift_project_boxed_opaque_existential_0(v0 + 17, v37);
      v0[35] = sub_2297B96F4(v37, v38);
      v39 = sub_22A4DE5CC();
      v41 = v40;
      __swift_destroy_boxed_opaque_existential_0(v0 + 17);
      v42 = sub_2295A3E30(v39, v41, &v47);

      *(v35 + 4) = v42;
      _os_log_impl(&dword_229538000, v33, v34, "Purging asset with version %s", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v36);
      MEMORY[0x22AAD4E50](v36, -1, -1);
      MEMORY[0x22AAD4E50](v35, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_0(v0 + 17);
    }

    v43 = v0[15];
    v44 = v0[16];
    __swift_project_boxed_opaque_existential_0(v0 + 12, v43);
    v46 = (*(v44 + 48) + **(v44 + 48));
    v45 = swift_task_alloc();
    v0[42] = v45;
    *v45 = v0;
    v45[1] = sub_22965D904;

    return v46(v43, v44);
  }
}