uint64_t sub_26BF0ACA0()
{
  v1 = v0[91];
  v2 = v0[90];

  sub_26BE132D4(v2, v1);

  v3 = v0[1];

  return v3();
}

uint64_t sub_26BF0AD54()
{
  v1 = v0[95];
  v2 = v0[94];
  v3 = v0[91];
  v4 = v0[90];

  sub_26BE132D4(v4, v3);
  sub_26BE00258(v2, v1);

  v5 = v0[1];

  return v5();
}

uint64_t sub_26BF0AE24(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 520) = v3;
  *(v4 + 371) = a3;
  *(v4 + 504) = a1;
  *(v4 + 512) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FA38, &qword_26C01D890);
  *(v4 + 528) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26BF0AEC8, 0, 0);
}

uint64_t sub_26BF0AEC8()
{
  v1 = v0[65];
  swift_beginAccess();
  v2 = *(v1 + 56);
  if (*(v2 + 16))
  {
    v4 = v0[63];
    v3 = v0[64];

    v5 = sub_26BEBB618(v4, v3);
    if (v6)
    {
      v7 = v0[65];
      v0[67] = *(*(v2 + 56) + 8 * v5);

      v0[68] = *(v7 + 72);
      v9 = *(v7 + 80);
      v0[69] = v9;
      if (v9)
      {
        v10 = v0[65];
        if (*(v10 + 65))
        {
          swift_beginAccess();
          if (*(v10 + 32) == 1)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E958, &qword_26C012648);
            v11 = swift_allocObject();
            *(v11 + 16) = xmmword_26C011280;
            *(v11 + 56) = MEMORY[0x277D837D0];
            *(v11 + 32) = 0xD00000000000003BLL;
            *(v11 + 40) = 0x800000026C02CC00;

            sub_26C00B03C();
          }

          else
          {
          }

          v30 = swift_task_alloc();
          v0[70] = v30;
          *v30 = v0;
          v30[1] = sub_26BF0B280;

          return sub_26BF820B8();
        }
      }

      v14 = v0[67];
      v15 = v14[2];
      v0[76] = v15;
      if (v15)
      {
        v16 = v0[65];
        v17 = v14[4];
        v18 = v14[5];
        result = swift_beginAccess();
        v19 = *(v16 + 48);
        if (*(v19 + 16))
        {

          v20 = sub_26BEBB618(v17, v18);
          v22 = v21;

          if (v22)
          {
            v23 = *(*(v19 + 56) + 8 * v20);
            if (*(v23 + 16))
            {
              v25 = v0[63];
              v24 = v0[64];

              v26 = sub_26BEBB618(v25, v24);
              LOBYTE(v25) = v27;

              if (v25)
              {
                v28 = *(*(v23 + 56) + 8 * v26);
                v0[77] = v28;

                v29 = swift_task_alloc();
                v0[78] = v29;
                *v29 = v0;
                v29[1] = sub_26BF0B848;

                return sub_26BEAE7D0(v28, &unk_26C01D8C8, v28);
              }

LABEL_27:
              __break(1u);
              return result;
            }

LABEL_26:
            __break(1u);
            goto LABEL_27;
          }

LABEL_25:
          __break(1u);
          goto LABEL_26;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      goto LABEL_25;
    }
  }

  sub_26BE773C4();
  swift_allocError();
  *v12 = xmmword_26C01D5E0;
  swift_willThrow();

  v13 = v0[1];

  return v13();
}

uint64_t sub_26BF0B280(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[71] = a1;
  v4[72] = a2;
  v4[73] = v2;

  if (v2)
  {
    v5 = sub_26BF0D4F0;
  }

  else
  {
    v5 = sub_26BF0B39C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_26BF0B39C()
{
  v1 = v0[73];
  sub_26BF0DAD4(v0[68], v0[69], 0, 0, v0 + 2);
  if (v1)
  {
    sub_26BE00258(v0[71], v0[72]);

    v2 = v0[1];

    return v2();
  }

  else
  {

    v4 = swift_task_alloc();
    v0[74] = v4;
    *v4 = v0;
    v4[1] = sub_26BF0B4D4;
    v5 = v0[72];
    v6 = v0[71];

    return sub_26BF832D8((v0 + 2), v6, v5);
  }
}

uint64_t sub_26BF0B4D4()
{
  *(*v1 + 600) = v0;

  if (v0)
  {

    v2 = sub_26BF0D568;
  }

  else
  {
    v2 = sub_26BF0B5F0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

void sub_26BF0B5F0()
{
  v1 = v0[72];
  v2 = v0[71];
  if (*(v0[65] + 32) == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E958, &qword_26C012648);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_26C011280;
    *(v3 + 56) = MEMORY[0x277D837D0];
    *(v3 + 32) = 0xD00000000000002BLL;
    *(v3 + 40) = 0x800000026C02CBD0;
    sub_26C00B03C();

    sub_26BE00258(v2, v1);
    sub_26BE29710((v0 + 2));
  }

  else
  {
    sub_26BE29710((v0 + 2));
    sub_26BE00258(v2, v1);
  }

  v4 = v0[67];
  v5 = v4[2];
  v0[76] = v5;
  if (!v5)
  {
    __break(1u);
    goto LABEL_13;
  }

  v6 = v0[65];
  v7 = v4[4];
  v8 = v4[5];
  swift_beginAccess();
  v9 = *(v6 + 48);
  if (!*(v9 + 16))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v10 = sub_26BEBB618(v7, v8);
  v12 = v11;

  if ((v12 & 1) == 0)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v13 = *(*(v9 + 56) + 8 * v10);
  if (!*(v13 + 16))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v0[63];
  v14 = v0[64];

  v16 = sub_26BEBB618(v15, v14);
  LOBYTE(v15) = v17;

  if ((v15 & 1) == 0)
  {
LABEL_16:
    __break(1u);
    return;
  }

  v18 = *(*(v13 + 56) + 8 * v16);
  v0[77] = v18;

  v19 = swift_task_alloc();
  v0[78] = v19;
  *v19 = v0;
  v19[1] = sub_26BF0B848;

  sub_26BEAE7D0(v18, &unk_26C01D8C8, v18);
}

uint64_t sub_26BF0B848(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 632) = a1;
  *(v3 + 640) = v1;

  if (v1)
  {
    v4 = sub_26BF0BAE4;
  }

  else
  {
    v4 = sub_26BF0B960;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

void sub_26BF0B960()
{
  v1 = v0[65];
  v0[81] = 0;
  v2 = v0[67];
  if (!v2[2])
  {
    __break(1u);
    goto LABEL_10;
  }

  v3 = v2[4];
  v0[82] = v3;
  v4 = v2[5];
  v0[83] = v4;
  v5 = *(v1 + 48);
  if (!*(v5 + 16))
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v6 = sub_26BEBB618(v3, v4);
  if ((v7 & 1) == 0)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v8 = *(*(v5 + 56) + 8 * v6);
  if (!*(v8 + 16))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v10 = v0[63];
  v9 = v0[64];

  v11 = sub_26BEBB618(v10, v9);
  LOBYTE(v10) = v12;

  if ((v10 & 1) == 0)
  {
LABEL_13:
    __break(1u);
    return;
  }

  v0[84] = *(*(v8 + 56) + 8 * v11);

  v13 = swift_task_alloc();
  v0[85] = v13;
  *v13 = v0;
  v13[1] = sub_26BF0BB00;
  v14 = v0[77];

  (sub_26BEAE7D0)(v14, &unk_26C01D8D0);
}

uint64_t sub_26BF0BB00(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 688) = a1;
  *(v3 + 696) = v1;

  if (v1)
  {
    v4 = sub_26BF0BDFC;
  }

  else
  {
    v4 = sub_26BF0BC18;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_26BF0BC18()
{
  v1 = swift_task_alloc();
  *(v0 + 704) = v1;
  *v1 = v0;
  v1[1] = sub_26BF0BCD4;
  v2 = *(v0 + 672);

  return sub_26BEAE7D0(v2, &unk_26C01D8D8, v2);
}

uint64_t sub_26BF0BCD4(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 712) = v1;

  if (v1)
  {
    v5 = sub_26BF0C0A8;
  }

  else
  {
    *(v4 + 720) = a1;
    v5 = sub_26BF0BE18;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_26BF0BE18()
{
  if (v0[86] == v0[90])
  {
    if (*(v0[65] + 64) == 1)
    {
      v1 = swift_task_alloc();
      v0[91] = v1;
      *v1 = v0;
      v1[1] = sub_26BF0C0C4;
      v2 = v0[77];

      return sub_26BEAF004(v2, &unk_26C01D8E0, v2);
    }

    else
    {
      v6 = *(*v0[77] + 264);
      v8 = (v6 + *v6);
      v7 = swift_task_alloc();
      v0[95] = v7;
      *v7 = v0;
      v7[1] = sub_26BF0C77C;

      return v8();
    }
  }

  else
  {

    sub_26BE773C4();
    swift_allocError();
    *v4 = xmmword_26C01D600;
    swift_willThrow();

    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_26BF0C0C4(int a1)
{
  v3 = *v2;
  *(v3 + 832) = a1;
  *(v3 + 736) = v1;

  if (v1)
  {
    v4 = sub_26BF0C3C0;
  }

  else
  {
    v4 = sub_26BF0C1DC;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_26BF0C1DC()
{
  v1 = swift_task_alloc();
  *(v0 + 744) = v1;
  *v1 = v0;
  v1[1] = sub_26BF0C298;
  v2 = *(v0 + 672);

  return sub_26BEAF004(v2, &unk_26C01D8E8, v2);
}

uint64_t sub_26BF0C298(int a1)
{
  v4 = *v2;
  *(*v2 + 752) = v1;

  if (v1)
  {
    v5 = sub_26BF0C760;
  }

  else
  {
    *(v4 + 836) = a1;
    v5 = sub_26BF0C3DC;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_26BF0C3DC()
{
  v1 = *(v0 + 836);
  v2 = *(v0 + 832);
  if (v2 == v1)
  {
    v3 = *(**(v0 + 616) + 264);
    v16 = (v3 + *v3);
    v4 = swift_task_alloc();
    *(v0 + 760) = v4;
    *v4 = v0;
    v4[1] = sub_26BF0C77C;

    return v16();
  }

  else
  {
    v6 = *(v0 + 664);
    v7 = *(v0 + 656);
    v8 = *(v0 + 536);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E958, &qword_26C012648);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_26C011280;
    sub_26C00AC1C();

    v10 = *(v8 + 32);
    v11 = *(v8 + 40);

    MEMORY[0x26D699090](v10, v11);

    MEMORY[0x26D699090](0x6172652073616820, 0xE900000000000020);
    *(v0 + 372) = v2;
    v12 = sub_26C00AEFC();
    MEMORY[0x26D699090](v12);

    MEMORY[0x26D699090](0x20747562202CLL, 0xE600000000000000);
    MEMORY[0x26D699090](v7, v6);

    MEMORY[0x26D699090](0x6172652073616820, 0xE900000000000020);
    *(v0 + 824) = v1;
    v13 = sub_26C00AEFC();
    MEMORY[0x26D699090](v13);

    *(v9 + 56) = MEMORY[0x277D837D0];
    *(v9 + 32) = 0x6F662070756F7247;
    *(v9 + 40) = 0xEA00000000002072;
    sub_26C00B03C();

    sub_26BE773C4();
    swift_allocError();
    *v14 = xmmword_26C01D600;
    swift_willThrow();

    v15 = *(v0 + 8);

    return v15();
  }
}

uint64_t sub_26BF0C77C(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 672);
  v8 = *v2;
  v3[96] = a1;
  v3[97] = a2;

  v7 = (*(*v4 + 264) + **(*v4 + 264));
  v5 = swift_task_alloc();
  v3[98] = v5;
  *v5 = v8;
  v5[1] = sub_26BF0C968;

  return v7();
}

uint64_t sub_26BF0C968(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 792) = a1;
  *(v3 + 800) = a2;

  return MEMORY[0x2822009F8](sub_26BF0CA6C, 0, 0);
}

uint64_t sub_26BF0CA6C()
{
  v1 = *(v0 + 800);
  v2 = *(v0 + 776);
  if (v2 >> 60 != 15)
  {
    v3 = *(v0 + 792);
    v4 = *(v0 + 768);
    if (v1 >> 60 != 15)
    {
      sub_26BE2BAE8(*(v0 + 768), *(v0 + 776));
      sub_26BE2BAE8(v3, v1);
      v10 = sub_26BE02DEC(v4, v2, v3, v1);
      sub_26BE132D4(v3, v1);
      sub_26BE132D4(v4, v2);
      sub_26BE132D4(v3, v1);
      sub_26BE132D4(v4, v2);
      if (v10)
      {
        goto LABEL_14;
      }

LABEL_8:
      sub_26BE773C4();
      swift_allocError();
      *v7 = xmmword_26C01D600;
      swift_willThrow();
LABEL_9:

      v8 = *(v0 + 8);
LABEL_10:

      return v8();
    }

    sub_26BE2BAE8(*(v0 + 768), *(v0 + 776));
    sub_26BE2BAE8(v3, v1);

    sub_26BE132D4(v3, v1);
    sub_26BE132D4(v4, v2);
LABEL_7:
    v5 = *(v0 + 800);
    v6 = *(v0 + 792);
    sub_26BE132D4(*(v0 + 768), *(v0 + 776));
    sub_26BE132D4(v6, v5);
    goto LABEL_8;
  }

  if (v1 >> 60 != 15)
  {

    goto LABEL_7;
  }

  sub_26BE132D4(*(v0 + 768), *(v0 + 776));
LABEL_14:
  v11 = *(v0 + 371);
  if (v11 != 2 && (v11 & 1) != 0)
  {
    v12 = *(v0 + 528);
    type metadata accessor for MLS.Group.PureSwiftGroup(0);
    v13 = swift_dynamicCastClassUnconditional();
    v14 = OBJC_IVAR____TtCOO8SwiftMLS3MLS5Group14PureSwiftGroup_fileInfoForGroupSubject;

    swift_beginAccess();
    sub_26BE2E1F0(v13 + v14, v12, &qword_28045FA38, &qword_26C01D890);
    v15 = type metadata accessor for FileInfoAndSender(0);
    LODWORD(v13) = (*(*(v15 - 8) + 48))(v12, 1, v15);
    sub_26BE2E258(v12, &qword_28045FA38, &qword_26C01D890);
    v16 = *(v0 + 664);
    if (v13 == 1)
    {
      v17 = *(v0 + 656);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E958, &qword_26C012648);
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_26C011280;
      sub_26C00AC1C();
      MEMORY[0x26D699090](0xD000000000000010, 0x800000026C02CB30);
      MEMORY[0x26D699090](v17, v16);

      MEMORY[0x26D699090](0xD000000000000028, 0x800000026C02CB50);
      *(v18 + 56) = MEMORY[0x277D837D0];
      *(v18 + 32) = 0;
      *(v18 + 40) = 0xE000000000000000;
      sub_26C00B03C();

      sub_26BE773C4();
      swift_allocError();
      *v19 = xmmword_26C01D600;
      swift_willThrow();

      goto LABEL_9;
    }
  }

  v20 = *(v0 + 648);
  v21 = *(v0 + 608);

  if (v20 + 1 != v21)
  {
    v26 = *(v0 + 648) + 1;
    *(v0 + 648) = v26;
    v27 = *(v0 + 536);
    if (v26 >= *(v27 + 16))
    {
      __break(1u);
    }

    else
    {
      v28 = *(v0 + 520);
      v29 = v27 + 16 * v26;
      v30 = *(v29 + 32);
      *(v0 + 656) = v30;
      v31 = *(v29 + 40);
      *(v0 + 664) = v31;
      v32 = *(v28 + 48);
      if (*(v32 + 16))
      {

        result = sub_26BEBB618(v30, v31);
        if (v33)
        {
          v34 = *(*(v32 + 56) + 8 * result);
          if (*(v34 + 16))
          {
            v36 = *(v0 + 504);
            v35 = *(v0 + 512);

            v37 = sub_26BEBB618(v36, v35);
            LOBYTE(v36) = v38;

            if (v36)
            {
              *(v0 + 672) = *(*(v34 + 56) + 8 * v37);

              v41 = sub_26BEAE7D0;
              v39 = swift_task_alloc();
              *(v0 + 680) = v39;
              *v39 = v0;
              v39[1] = sub_26BF0BB00;
              v24 = *(v0 + 616);
              v25 = &unk_26C01D8D0;
              goto LABEL_28;
            }

LABEL_40:
            __break(1u);
            return result;
          }

LABEL_39:
          __break(1u);
          goto LABEL_40;
        }

LABEL_38:
        __break(1u);
        goto LABEL_39;
      }
    }

    __break(1u);
    goto LABEL_38;
  }

  v22 = *(v0 + 520);
  swift_beginAccess();
  if (*(v22 + 32) != 1)
  {

LABEL_35:

    v8 = *(v0 + 8);
    goto LABEL_10;
  }

  if (*(*(v0 + 520) + 64) != 1)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E958, &qword_26C012648);
    v40 = swift_allocObject();
    *(v40 + 16) = xmmword_26C011280;
    *(v40 + 56) = MEMORY[0x277D837D0];
    *(v40 + 32) = 0xD000000000000042;
    *(v40 + 40) = 0x800000026C02CB80;
    sub_26C00B03C();

    goto LABEL_35;
  }

  v41 = sub_26BEAF004;
  v23 = swift_task_alloc();
  *(v0 + 808) = v23;
  *v23 = v0;
  v23[1] = sub_26BF0D17C;
  v24 = *(v0 + 616);
  v25 = &unk_26C01D8F0;
LABEL_28:

  return v41(v24, v25, v24);
}

uint64_t sub_26BF0D17C(int a1)
{
  v4 = *v2;
  *(*v2 + 816) = v1;

  if (v1)
  {
    v5 = sub_26BF0D4D4;
  }

  else
  {

    *(v4 + 840) = a1;
    v5 = sub_26BF0D2AC;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_26BF0D2AC()
{
  v1 = *(v0 + 840);
  v2 = *(v0 + 632);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E958, &qword_26C012648);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_26C011280;
  sub_26C00AC1C();

  *(v0 + 828) = v1;
  v4 = sub_26C00AEFC();
  MEMORY[0x26D699090](v4);

  MEMORY[0x26D699090](0x2068636F7065202CLL, 0xE800000000000000);
  *(v0 + 496) = v2;
  v5 = sub_26C00AEFC();
  MEMORY[0x26D699090](v5);

  MEMORY[0x26D699090](46, 0xE100000000000000);
  v6 = MEMORY[0x277D837D0];
  *(v3 + 56) = MEMORY[0x277D837D0];
  *(v3 + 32) = 0x65206E6F206C6C41;
  *(v3 + 40) = 0xEB00000000206172;
  sub_26C00B03C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E958, &qword_26C012648);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_26C011280;
  *(v7 + 56) = v6;
  *(v7 + 32) = 0xD000000000000042;
  *(v7 + 40) = 0x800000026C02CB80;
  sub_26C00B03C();

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_26BF0D4F0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26BF0D568()
{
  sub_26BE00258(v0[71], v0[72]);
  sub_26BE29710((v0 + 2));

  v1 = v0[1];

  return v1();
}

uint64_t static Runner.getSMALikeRCSConfiguration(anchors:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v35 = a1;
  v2 = sub_26C009F3C();
  v32 = *(v2 - 8);
  v33 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_26C009EDC();
  v5 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_26C009EEC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_26C009EAC();
  v12 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 104))(v11, *MEMORY[0x277CC5450], v8);
  (*(v5 + 104))(v7, *MEMORY[0x277CC5438], v31);
  (*(v32 + 104))(v4, *MEMORY[0x277CC5460], v33);
  sub_26C009E7C();
  type metadata accessor for MLS.Cryptography.Ciphersuite.SuitePrimitives(0);
  v15 = swift_allocObject();
  (*(v12 + 32))(v15 + OBJC_IVAR____TtCVOO8SwiftMLS3MLS12Cryptography11Ciphersuite15SuitePrimitives_hpke, v14, v30);
  *(v15 + OBJC_IVAR____TtCVOO8SwiftMLS3MLS12Cryptography11Ciphersuite15SuitePrimitives_hash) = 0;
  LOWORD(v52) = 257;
  *(&v52 + 2) = v36;
  *(&v52 + 6) = WORD2(v36);
  BYTE10(v52) = 0;
  *(&v52 + 11) = v50;
  HIBYTE(v52) = v51;
  v53 = xmmword_26C00DA40;
  v54[0] = 1;
  *&v54[1] = v41[0];
  *&v54[4] = *(v41 + 3);
  *&v54[8] = xmmword_26C00CDC0;
  *&v54[24] = 16;
  v55 = v15;
  v16 = type metadata accessor for MLS.Storage.InMemoryGroupStateStore();
  v17 = swift_allocObject();
  v18 = MEMORY[0x277D84F90];
  *(v17 + 16) = sub_26C001A78(MEMORY[0x277D84F90]);
  *(v17 + 24) = sub_26C001A90(v18);
  v43 = v16;
  v44 = &protocol witness table for MLS.Storage.InMemoryGroupStateStore;
  v42 = v17;
  v19 = type metadata accessor for MLS.Storage.InMemoryGroupStateStoreV2();
  v20 = swift_allocObject();
  *(v20 + 16) = sub_26C001A78(v18);
  *(v20 + 24) = sub_26C001BDC(v18);
  *(&v37 + 1) = v19;
  *&v38 = &protocol witness table for MLS.Storage.InMemoryGroupStateStoreV2;
  *&v36 = v20;
  v21 = type metadata accessor for MLS.Storage.InMemoryClientStateStore();
  v22 = swift_allocObject();
  *(v22 + 16) = sub_26C001D40(v18);
  v48 = v21;
  v49 = &protocol witness table for MLS.Storage.InMemoryClientStateStore;
  LOBYTE(v41[0]) = 0;
  memset(v45, 0, sizeof(v45));
  v46 = 0;
  v47 = v22;
  sub_26BE2E258(v45, &qword_28045FA20, &qword_26C029070);
  v23 = v34;
  sub_26BE03890(&v36, v45);
  v24 = v56;
  static MLS.Client.Configuration.rcsConfiguration(anchors:validateCredentialsOverride:disallowBasicCredentials:)(v35, 2, 2, v23);
  if (v24)
  {
    sub_26BE29538(v41);
    return sub_26BE14F98(&v52);
  }

  else
  {
    v26 = *(v23 + 48);
    v38 = *(v23 + 32);
    v39 = v26;
    v40 = *(v23 + 64);
    v27 = *(v23 + 16);
    v36 = *v23;
    v37 = v27;
    sub_26BE14F98(&v36);
    v28 = v53;
    v29 = *&v54[16];
    *(v23 + 32) = *v54;
    *(v23 + 48) = v29;
    *(v23 + 64) = v55;
    *v23 = v52;
    *(v23 + 16) = v28;
    result = sub_26BE15058(v41, v23 + 72);
    *(v23 + 272) = 1;
    *(v23 + 10) = 1;
  }

  return result;
}

void sub_26BF0DAD4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E548, &qword_26C00E4C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26C011280;
  *(inited + 32) = a1;
  *(inited + 40) = a2;

  static MockRoot.getAnchors(anchorFilepaths:)(inited);
  v14 = v13;
  swift_setDeallocating();
  sub_26BF25CA8(inited + 32);
  if (!v6)
  {
    v17 = v14;
    if (a4)
    {
      sub_26BE77560(a3, a4);
      if (!v14)
      {
        __break(1u);
        return;
      }

      sub_26BF9F008(v15);
      v14 = v17;
    }

    static Runner.getSMALikeRCSConfiguration(anchors:)(v14, v16);
    LOBYTE(v16[136]) = *(v5 + 64);
    v16[176] = *(v5 + 34);
    LOBYTE(v16[177]) = 1;
    memcpy(a5, v16, 0x163uLL);
  }
}

uint64_t sub_26BF0DC34(uint64_t a1)
{
  v2[105] = v1;
  v2[104] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E458, &unk_26C00DAA0);
  v2[106] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26BF0DCD4, 0, 0);
}

uint64_t sub_26BF0DCD4()
{
  v1 = v0[105];
  v2 = v0[104];
  v3 = *v2;
  v0[107] = *v2;
  v4 = v2[1];
  v0[108] = v4;
  swift_beginAccess();
  v5 = *(*(v1 + 40) + 16);
  swift_bridgeObjectRetain_n();
  if (v5 && (, sub_26BEBB618(v3, v4), v7 = v6, , (v7 & 1) != 0))
  {
    swift_bridgeObjectRelease_n();
    sub_26C00AC1C();

    MEMORY[0x26D699090](v3, v4);
    MEMORY[0x26D699090](0x79646165726C6120, 0xEF73747369786520);
    sub_26BE773C4();
    swift_allocError();
    *v8 = 0x20746E65696C43;
    v8[1] = 0xE700000000000000;
    swift_willThrow();

    v14 = v0[1];

    return v14();
  }

  else
  {
    v9 = v0[104];
    v11 = v9[2];
    v10 = v9[3];
    v12 = v9[4];
    v13 = v9[5];

    sub_26BF0DAD4(v11, v10, v12, v13, v0 + 2);
    v16 = v0[106];
    v17 = v0[105];
    *(v17 + 72) = v11;
    *(v17 + 80) = v10;

    type metadata accessor for MLS.RCSClient(0);
    sub_26BE295A0((v0 + 2), (v0 + 47));
    v18 = sub_26C00928C();
    (*(*(v18 - 8) + 56))(v16, 1, 1, v18);
    v19 = swift_task_alloc();
    v0[109] = v19;
    *v19 = v0;
    v19[1] = sub_26BF0DFA0;
    v20 = v0[106];

    return MLS.Client.Client.__allocating_init(configuration:withClientUUID:)((v0 + 47), v20);
  }
}

uint64_t sub_26BF0DFA0(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 880) = v1;

  if (v1)
  {
    swift_bridgeObjectRelease_n();
    v5 = sub_26BF0E270;
  }

  else
  {
    *(v4 + 888) = a1;
    v5 = sub_26BF0E0D4;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_26BF0E0D4()
{
  v1 = v0[111];
  v2 = v0[108];
  v3 = v0[107];
  v4 = v0[105];
  v5 = *(v4 + 33);
  v6 = OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client_usePureSwiftOverride;
  swift_beginAccess();
  *(v1 + v6) = v5;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(v4 + 40);
  *(v4 + 40) = 0x8000000000000000;
  sub_26BE57A68(v1, v3, v2, isUniquelyReferenced_nonNull_native);

  *(v4 + 40) = v12;
  swift_endAccess();
  v8 = sub_26C005CAC(MEMORY[0x277D84F90]);
  swift_beginAccess();
  v9 = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(v4 + 48);
  *(v4 + 48) = 0x8000000000000000;
  sub_26BE57A28(v8, v3, v2, v9);

  *(v4 + 48) = v13;
  swift_endAccess();

  sub_26BE29710((v0 + 2));

  v10 = v0[1];

  return v10();
}

uint64_t sub_26BF0E270()
{
  sub_26BE29710(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26BF0E2DC(uint64_t a1)
{
  v2[36] = a1;
  v2[37] = v1;
  v3 = sub_26C008FDC();
  v2[38] = v3;
  v2[39] = *(v3 - 8);
  v2[40] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26BF0E39C, 0, 0);
}

uint64_t sub_26BF0E39C()
{
  v1 = v0[36];
  v2 = v0[37];
  v3 = *v1;
  v0[41] = *v1;
  v4 = v1[1];
  v0[42] = v4;
  swift_beginAccess();
  if (*(*(v2 + 40) + 16))
  {

    sub_26BEBB618(v3, v4);
    if (v5)
    {

      type metadata accessor for MLS.RCSClient(0);
      v6 = swift_dynamicCastClass();

      if (v6)
      {
        v8 = *(v2 + 40);
        if (*(v8 + 16))
        {

          result = sub_26BEBB618(v3, v4);
          if (v9)
          {
            v10 = v0[36];
            v0[43] = *(*(v8 + 56) + 8 * result);

            v11 = swift_dynamicCastClassUnconditional();
            v12 = *(v10 + 16);
            v13 = *(v10 + 24);

            v14 = swift_task_alloc();
            v0[44] = v14;
            *v14 = v0;
            v14[1] = sub_26BF0E658;

            return sub_26BE9A008((v0 + 2), v11, v12, v13, v11);
          }
        }

        else
        {
          __break(1u);
        }

        __break(1u);
        return result;
      }
    }

    else
    {
    }
  }

  sub_26C00AC1C();

  MEMORY[0x26D699090](v3, v4);
  MEMORY[0x26D699090](0xD000000000000015, 0x800000026C02CD70);
  sub_26BE773C4();
  swift_allocError();
  *v15 = 0x20746E65696C43;
  v15[1] = 0xE700000000000000;
  swift_willThrow();

  v16 = v0[1];

  return v16();
}

uint64_t sub_26BF0E658()
{
  *(*v1 + 360) = v0;

  if (v0)
  {
    v2 = sub_26BF0E9C8;
  }

  else
  {
    v2 = sub_26BF0E76C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26BF0E76C()
{
  v2 = *(v0 + 32);
  v1 = *(v0 + 48);
  v3 = *(v0 + 16);
  *(v0 + 80) = v3;
  *(v0 + 96) = v2;
  v4 = *(v0 + 64);
  *(v0 + 112) = v1;
  *(v0 + 128) = v4;
  *(v0 + 208) = v3;
  *(v0 + 224) = v2;
  *(v0 + 240) = *(v0 + 48);
  v5 = *(v0 + 120);
  *(v0 + 272) = v4;
  if (v5)
  {
    v6 = *(v0 + 360);
    sub_26C008DEC();
    swift_allocObject();
    sub_26C008DDC();
    v7 = *(v0 + 224);
    *(v0 + 144) = *(v0 + 208);
    *(v0 + 160) = v7;
    *(v0 + 176) = *(v0 + 240);
    *(v0 + 184) = v5;
    *(v0 + 192) = *(v0 + 272);
    sub_26BE774C0();
    v8 = sub_26C008DCC();
    if (v6)
    {

      sub_26BE2E258(v0 + 80, &qword_28045FA80, &qword_26C01D910);
    }

    else
    {
      v13 = v8;
      v14 = v9;
      sub_26C008F9C();
      sub_26C00912C();
      v16 = *(v0 + 312);
      v15 = *(v0 + 320);
      v17 = *(v0 + 304);

      sub_26BE00258(v13, v14);
      sub_26BE2E258(v0 + 80, &qword_28045FA80, &qword_26C01D910);
      (*(v16 + 8))(v15, v17);
    }
  }

  else
  {
    v10 = *(v0 + 336);
    v11 = *(v0 + 328);
    sub_26C00AC1C();

    MEMORY[0x26D699090](v11, v10);
    sub_26BE773C4();
    swift_allocError();
    *v12 = 0xD00000000000002ELL;
    v12[1] = 0x800000026C02CD90;
    swift_willThrow();
  }

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_26BF0E9C8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26BF0EA34(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  sub_26C00A4EC();
  v2[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26BF0EAC4, 0, 0);
}

uint64_t sub_26BF0EAC4()
{
  v1 = v0[8];
  v2 = v0[9];
  v3 = *v1;
  v0[11] = *v1;
  v4 = v1[1];
  v0[12] = v4;
  swift_beginAccess();
  if (*(*(v2 + 40) + 16))
  {

    sub_26BEBB618(v3, v4);
    if (v5)
    {

      type metadata accessor for MLS.RCSClient(0);
      v6 = swift_dynamicCastClass();

      if (v6)
      {
        v8 = *(v2 + 40);
        if (*(v8 + 16))
        {

          result = sub_26BEBB618(v3, v4);
          if (v9)
          {
            v0[13] = *(*(v8 + 56) + 8 * result);

            v10 = swift_dynamicCastClassUnconditional();
            v0[14] = v10;
            sub_26C00A4CC();
            v11 = sub_26C00A44C();
            sub_26BE77560(v11, v12);
            v0[15] = v13;
            v16 = v0[8];
            v17 = v13;

            v18 = *(v16 + 16);
            v0[16] = v18;
            v19 = *(v16 + 24);
            v0[17] = v19;
            v20 = swift_task_alloc();
            v0[18] = v20;
            v20[2] = v18;
            v20[3] = v19;
            v20[4] = v10;
            v20[5] = v17;
            v20[6] = 0x2000000000000000;
            v21 = swift_task_alloc();
            v0[19] = v21;
            *v21 = v0;
            v21[1] = sub_26BF0EE08;

            return sub_26BE1A744(sub_26BE1A744, &unk_26C01D918, v20);
          }
        }

        else
        {
          __break(1u);
        }

        __break(1u);
        return result;
      }
    }

    else
    {
    }
  }

  sub_26C00AC1C();

  MEMORY[0x26D699090](v3, v4);
  MEMORY[0x26D699090](0xD000000000000015, 0x800000026C02CD70);
  sub_26BE773C4();
  swift_allocError();
  *v14 = 0x20746E65696C43;
  v14[1] = 0xE700000000000000;
  swift_willThrow();

  v15 = v0[1];

  return v15();
}

uint64_t sub_26BF0EE08()
{
  *(*v1 + 160) = v0;

  if (v0)
  {
    v2 = sub_26BF0F128;
  }

  else
  {
    v2 = sub_26BF0EF3C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26BF0EF3C()
{
  v1 = v0[14];

  swift_beginAccess();
  if ((~*(v1 + 32) & 0x3000000000000000) != 0)
  {
    MLS.Identity.Credential.telURI.getter();
    if (v2)
    {
      if (v2[2])
      {
        v4 = v0[16];
        v3 = v0[17];
        v5 = v2[4];
        v6 = v2[5];

        if (v5 == v4 && v6 == v3)
        {

LABEL_9:

          v8 = v0[1];
          goto LABEL_11;
        }

        v7 = sub_26C00AF2C();

        if (v7)
        {
          goto LABEL_9;
        }
      }

      else
      {
      }
    }
  }

  v9 = v0[12];
  v10 = v0[11];
  sub_26C00AC1C();
  MEMORY[0x26D699090](0x20746E65696C43, 0xE700000000000000);
  MEMORY[0x26D699090](v10, v9);
  MEMORY[0x26D699090](0xD000000000000035, 0x800000026C02CDC0);
  sub_26BE773C4();
  swift_allocError();
  *v11 = 0;
  v11[1] = 0xE000000000000000;
  swift_willThrow();

  v8 = v0[1];
LABEL_11:

  return v8();
}

uint64_t sub_26BF0F128()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26BF0F1A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[88] = v4;
  v5[87] = a4;
  v5[86] = a3;
  v5[85] = a2;
  v5[84] = a1;
  return MEMORY[0x2822009F8](sub_26BF0F1D0, 0, 0);
}

uint64_t sub_26BF0F1D0()
{
  v1 = v0[88];
  swift_beginAccess();
  v2 = *(v1 + 40);
  if (!*(v2 + 16))
  {
    goto LABEL_11;
  }

  v3 = v0[85];
  v4 = v0[84];

  v5 = sub_26BEBB618(v4, v3);
  if ((v6 & 1) == 0)
  {

LABEL_11:
    sub_26BE773C4();
    swift_allocError();
    *v21 = xmmword_26C01D5C0;
    swift_willThrow();
    goto LABEL_17;
  }

  v7 = v0[88];
  v0[89] = *(*(v2 + 56) + 8 * v5);

  swift_beginAccess();
  v8 = *(v7 + 48);
  v9 = v0[85];
  if (*(v8 + 16))
  {
    v10 = v0[84];

    v11 = sub_26BEBB618(v10, v9);
    if (v12)
    {
      v13 = *(*(v8 + 56) + 8 * v11);

      if (*(v13 + 16))
      {
        v14 = v0[87];
        v15 = v0[86];

        v16 = sub_26BEBB618(v15, v14);
        if (v17)
        {
          v18 = *(*(v13 + 56) + 8 * v16);
          v0[90] = v18;

          v24 = (*(*v18 + 368) + **(*v18 + 368));
          v19 = swift_task_alloc();
          v0[91] = v19;
          *v19 = v0;
          v19[1] = sub_26BF0F4FC;

          return v24();
        }
      }
    }
  }

  sub_26BE773C4();
  swift_allocError();
  *v22 = xmmword_26C01D5E0;
  swift_willThrow();

LABEL_17:
  v23 = v0[1];

  return v23();
}

uint64_t sub_26BF0F4FC(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 736) = v1;

  if (v1)
  {

    v5 = sub_26BF11F10;
  }

  else
  {
    *(v4 + 744) = a1;
    v5 = sub_26BF0F638;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_26BF0F638()
{
  v0[94] = *(v0[93] + 16);

  v1 = swift_task_alloc();
  v0[95] = v1;
  *v1 = v0;
  v1[1] = sub_26BF0F704;
  v2 = v0[90];

  return sub_26BEAE7D0(v2, &unk_26C01D8F8, v2);
}

uint64_t sub_26BF0F704(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 768) = a1;
  *(v3 + 776) = v1;

  if (v1)
  {
    v4 = sub_26BF0FC60;
  }

  else
  {
    v4 = sub_26BF0F81C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_26BF0F81C()
{
  v1 = v0[88];
  result = swift_beginAccess();
  v3 = *(v1 + 56);
  if (!*(v3 + 16))
  {
    __break(1u);
    goto LABEL_34;
  }

  v4 = v0[87];
  v5 = v0[86];

  result = sub_26BEBB618(v5, v4);
  if ((v6 & 1) == 0)
  {
LABEL_34:
    __break(1u);
    return result;
  }

  v7 = *(*(v3 + 56) + 8 * result);
  v0[98] = v7;

  v8 = *(v7 + 16);
  if (!v8)
  {
LABEL_25:
    __break(1u);
LABEL_26:

    goto LABEL_27;
  }

  v9 = (v7 + 40);
  while (1)
  {
    v10 = v0[85];
    v11 = v0[84];
    v13 = *(v9 - 1);
    v12 = *v9;
    v0[99] = *v9;
    v14 = v13 == v11 && v12 == v10;
    if (!v14 && (sub_26C00AF2C() & 1) == 0)
    {
      break;
    }

    v9 += 2;
    if (!--v8)
    {
      goto LABEL_25;
    }
  }

  v15 = *(v0[88] + 40);
  v16 = *(v15 + 16);

  if (v16)
  {
    v17 = sub_26BEBB618(v13, v12);
    if (v18)
    {
      v19 = v0[88];
      v0[100] = *(*(v15 + 56) + 8 * v17);

      v20 = *(v19 + 48);
      if (*(v20 + 16))
      {

        v21 = sub_26BEBB618(v13, v12);
        if (v22)
        {
          v23 = *(*(v20 + 56) + 8 * v21);

          if (*(v23 + 16))
          {
            v24 = sub_26BEBB618(v0[86], v0[87]);
            if (v25)
            {
              v0[101] = *(*(v23 + 56) + 8 * v24);

              type metadata accessor for MLS.Group.PureSwiftGroup(0);
              v26 = swift_dynamicCastClass();
              v0[102] = v26;
              if (v26)
              {

                v27 = swift_task_alloc();
                v0[103] = v27;
                *v27 = v0;
                v27[1] = sub_26BF0FC7C;

                return sub_26BF5D2E0((v0 + 66));
              }

              sub_26BE773C4();
              swift_allocError();
              *v31 = 0xD000000000000031;
              v31[1] = 0x800000026C02CC40;
              swift_willThrow();

              goto LABEL_28;
            }
          }

          goto LABEL_26;
        }
      }

LABEL_27:

      sub_26BE773C4();
      swift_allocError();
      *v29 = xmmword_26C01D5E0;
      swift_willThrow();
LABEL_28:

      goto LABEL_29;
    }
  }

  sub_26BE773C4();
  swift_allocError();
  *v28 = xmmword_26C01D5C0;
  swift_willThrow();
LABEL_29:

  v30 = v0[1];

  return v30();
}

uint64_t sub_26BF0FC7C()
{
  *(*v1 + 832) = v0;

  if (v0)
  {

    v2 = sub_26BF11F80;
  }

  else
  {
    v2 = sub_26BF0FDD0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26BF0FDD0()
{
  *(v0 + 840) = *(v0 + 528);

  v1 = swift_task_alloc();
  *(v0 + 856) = v1;
  *v1 = v0;
  v1[1] = sub_26BF0FE98;
  v2 = *(v0 + 816);

  return sub_26BE9F40C(v0 + 544, v2, v2);
}

uint64_t sub_26BF0FE98()
{
  *(*v1 + 864) = v0;

  if (v0)
  {

    v2 = sub_26BF101FC;
  }

  else
  {
    v2 = sub_26BF0FFE0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26BF0FFE0()
{
  *(v0 + 872) = *(v0 + 544);

  v1 = swift_task_alloc();
  *(v0 + 888) = v1;
  *v1 = v0;
  v1[1] = sub_26BF100A8;
  v2 = *(v0 + 712);

  return sub_26BE8E304(v0 + 560, v2, v2);
}

uint64_t sub_26BF100A8()
{
  *(*v1 + 896) = v0;

  if (v0)
  {

    v2 = sub_26BF10548;
  }

  else
  {
    v2 = sub_26BF102A0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26BF101FC()
{
  sub_26BE00258(v0[105], v0[106]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_26BF102A0()
{
  v1 = *(v0 + 880);
  v2 = *(v0 + 872);
  v3 = *(v0 + 848);
  v4 = *(v0 + 840);
  v5 = *(v0 + 560);
  *(v0 + 904) = v5;
  v6 = *(v0 + 568);
  *(v0 + 912) = v6;
  sub_26BE00608(v4, v3);
  sub_26BE2BAE8(v2, v1);
  sub_26BE00608(v5, v6);
  sub_26BE132D4(0, 0xF000000000000000);
  *&v7 = v4;
  *(&v7 + 1) = v3;
  *&v8 = v2;
  *(&v8 + 1) = v1;
  *(v0 + 272) = v7;
  *(v0 + 288) = v8;
  *(v0 + 304) = v5;
  *(v0 + 312) = v6;
  *(v0 + 320) = 1;

  sub_26BF270AC(v0 + 272, v0 + 328);
  v9 = swift_task_alloc();
  *(v0 + 920) = v9;
  *v9 = v0;
  v9[1] = sub_26BF103F4;
  v10 = *(v0 + 712);

  return sub_26BEA202C(v0 + 456, v10, v10, v0 + 272);
}

uint64_t sub_26BF103F4()
{
  *(*v1 + 928) = v0;

  if (v0)
  {

    v2 = sub_26BF10A48;
  }

  else
  {
    v2 = sub_26BF10604;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26BF10548()
{
  v1 = v0[110];
  v2 = v0[109];
  sub_26BE00258(v0[105], v0[106]);
  sub_26BE132D4(v2, v1);

  v3 = v0[1];

  return v3();
}

uint64_t sub_26BF10604()
{
  v1 = *(v0 + 704);
  v2 = *(v0 + 680);
  v3 = *(v0 + 672);
  v4 = *(v0 + 456);
  v5 = *(v0 + 464);
  *(v0 + 936) = v4;
  *(v0 + 944) = v5;
  v6 = *(v0 + 472);
  *(v0 + 952) = v6;
  swift_beginAccess();

  sub_26BE00608(v4, v5);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v24 = *(v1 + 48);
  *(v1 + 48) = 0x8000000000000000;
  v9 = sub_26BEBB618(v3, v2);
  v10 = v24[2];
  v11 = (v8 & 1) == 0;
  result = v10 + v11;
  if (__OFADD__(v10, v11))
  {
    __break(1u);
    goto LABEL_18;
  }

  v13 = v8;
  if (v24[3] >= result)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      result = sub_26BE6F250();
    }
  }

  else
  {
    v14 = *(v0 + 680);
    v15 = *(v0 + 672);
    sub_26BE6C1E0(result, isUniquelyReferenced_nonNull_native);
    result = sub_26BEBB618(v15, v14);
    if ((v13 & 1) != (v16 & 1))
    {

      return sub_26C00AF8C();
    }

    v9 = result;
  }

  if ((v13 & 1) == 0)
  {
LABEL_18:
    __break(1u);
    return result;
  }

  v17 = *(v0 + 696);
  v18 = *(v0 + 688);
  v19 = *(v24[7] + 8 * v9);

  v20 = swift_isUniquelyReferenced_nonNull_native();
  sub_26BE57AE8(v6, v18, v17, v20);

  if (v19)
  {

    *(v24[7] + 8 * v9) = v19;
  }

  else
  {

    sub_26BF25CA8(v24[6] + 16 * v9);
    sub_26C006458(v9, v24);
  }

  *(*(v0 + 704) + 48) = v24;
  swift_endAccess();
  *(v0 + 576) = v4;
  *(v0 + 584) = v5;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0u;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0u;
  *(v0 + 128) = 0u;
  *(v0 + 16) = 0u;
  *(v0 + 144) = 0;
  *(v0 + 592) = xmmword_26C00DA60;
  v21 = swift_task_alloc();
  *(v0 + 960) = v21;
  *v21 = v0;
  v21[1] = sub_26BF108D8;
  v22 = *(v0 + 696);
  v23 = *(v0 + 688);

  return sub_26BEFDA68((v0 + 576), v23, v22, v0 + 16, 0, 0, (v0 + 592), 0);
}

uint64_t sub_26BF108D8(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 968) = a1;
  *(v3 + 976) = v1;

  if (v1)
  {

    sub_26BE2E258(v3 + 16, &qword_28045FA40, &qword_26C01D898);
    v4 = sub_26BF12010;
  }

  else
  {
    sub_26BE2E258(v3 + 16, &qword_28045FA40, &qword_26C01D898);
    v4 = sub_26BF10B28;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_26BF10A48()
{
  v1 = v0[114];
  v2 = v0[113];
  v3 = v0[110];
  v4 = v0[109];
  sub_26BE00258(v0[105], v0[106]);
  sub_26BE132D4(v4, v3);
  sub_26BE00258(v2, v1);

  sub_26BEAFA4C((v0 + 34));
  v5 = v0[1];

  return v5();
}

uint64_t sub_26BF10B28()
{
  v1 = *(v0 + 968);
  v2 = *(v1 + 16);
  result = swift_beginAccess();
  if (!v2)
  {
LABEL_14:
    v9 = *(v0 + 952);

    v28 = *v9 + 368;
    v10 = *v28;
    *(v0 + 984) = *v28;
    *(v0 + 992) = v28 & 0xFFFFFFFFFFFFLL | 0x5DEC000000000000;
    v29 = (v10 + *v10);
    v11 = swift_task_alloc();
    *(v0 + 1000) = v11;
    *v11 = v0;
    v11[1] = sub_26BF11030;

    return v29();
  }

  v4 = 0;
  v5 = *(v0 + 712);
  v6 = *(v0 + 968) + 32;
  while (1)
  {
    if (v4 >= *(v1 + 16))
    {
      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
      return result;
    }

    sub_26BF26CF0(v6, v0 + 152);
    if (*(v0 + 265) != 3)
    {
      v12 = *(v0 + 944);
      v13 = *(v0 + 936);
      v26 = *(v0 + 904);
      v27 = *(v0 + 912);
      v24 = *(v0 + 872);
      v25 = *(v0 + 880);
      v14 = *(v0 + 848);
      v15 = *(v0 + 840);

      sub_26BF26D4C(v0 + 152);
      sub_26BE01654();
      swift_allocError();
      *v16 = 1;
      *(v16 + 8) = 0u;
      *(v16 + 24) = 0u;
      *(v16 + 40) = 0u;
      *(v16 + 56) = 0u;
      *(v16 + 72) = 0u;
      *(v16 + 88) = 0u;
      *(v16 + 104) = 0;
      *(v16 + 112) = 23;
      swift_willThrow();
      sub_26BE00258(v15, v14);
      v17 = v24;
      goto LABEL_20;
    }

    result = *(v0 + 152);
    if (!result)
    {
      goto LABEL_25;
    }

    v7 = *(v5 + 32);
    if ((~v7 & 0x3000000000000000) == 0)
    {
      goto LABEL_24;
    }

    if ((v7 & 0x2000000000000000) == 0)
    {
      result = sub_26BF26F5C(result);
      goto LABEL_4;
    }

    if (*(*(v0 + 176) + 16) != 1 || *(*(v0 + 160) + 16))
    {
      break;
    }

    v8 = *(result + 16);
    result = sub_26BF26F5C(result);
    if (v8)
    {

      goto LABEL_19;
    }

LABEL_4:
    ++v4;
    v6 += 120;
    if (v2 == v4)
    {
      goto LABEL_14;
    }
  }

  v18 = *(v0 + 152);

  sub_26BF26F5C(v18);
LABEL_19:

  v12 = *(v0 + 944);
  v13 = *(v0 + 936);
  v26 = *(v0 + 904);
  v27 = *(v0 + 912);
  v25 = *(v0 + 880);
  v19 = *(v0 + 872);
  v20 = *(v0 + 848);
  v21 = *(v0 + 840);
  sub_26BE01654();
  swift_allocError();
  *v22 = 1;
  *(v22 + 8) = 0u;
  *(v22 + 24) = 0u;
  *(v22 + 40) = 0u;
  *(v22 + 56) = 0u;
  *(v22 + 72) = 0u;
  *(v22 + 88) = 0u;
  *(v22 + 104) = 0;
  *(v22 + 112) = 23;
  swift_willThrow();
  sub_26BE00258(v21, v20);
  v17 = v19;
LABEL_20:
  sub_26BE132D4(v17, v25);
  sub_26BE00258(v26, v27);
  sub_26BE00258(v13, v12);
  sub_26BEAFA4C(v0 + 272);

  sub_26BE00258(v13, v12);

  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_26BF11030(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 1008) = v1;

  if (v1)
  {
    v5 = sub_26BF12130;
  }

  else
  {
    *(v4 + 1016) = a1;
    v5 = sub_26BF11158;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_26BF11158()
{
  v16 = v0;
  v1 = *(v0 + 752);
  v2 = *(*(v0 + 1016) + 16);

  if (v2 == v1)
  {
    v3 = swift_task_alloc();
    *(v0 + 1056) = v3;
    *v3 = v0;
    v3[1] = sub_26BF117A4;
    v4 = *(v0 + 952);

    return sub_26BEAE7D0(v4, &unk_26C01D900, v4);
  }

  else
  {
    v6 = *(v0 + 984);
    v7 = *(v0 + 752);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E958, &qword_26C012648);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_26C011280;
    sub_26C00AC1C();

    strcpy(v15, "Old group had ");
    HIBYTE(v15[1]) = -18;
    *(v0 + 640) = v7;
    v9 = sub_26C00AEFC();
    MEMORY[0x26D699090](v9);

    MEMORY[0x26D699090](0x737265626D656D20, 0xE800000000000000);
    v10 = v15[0];
    v11 = v15[1];
    *(v8 + 56) = MEMORY[0x277D837D0];
    *(v8 + 32) = v10;
    *(v8 + 40) = v11;
    sub_26C00B03C();

    v12 = swift_allocObject();
    *(v0 + 1024) = v12;
    *(v12 + 16) = xmmword_26C011280;
    v15[0] = 0;
    v15[1] = 0xE000000000000000;
    sub_26C00AC1C();

    strcpy((v0 + 608), "New group has ");
    *(v0 + 623) = -18;
    v14 = (v6 + *v6);
    v13 = swift_task_alloc();
    *(v0 + 1032) = v13;
    *v13 = v0;
    v13[1] = sub_26BF1146C;

    return v14();
  }
}

uint64_t sub_26BF1146C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 1040) = v1;

  if (v1)
  {

    v5 = sub_26BF12260;
  }

  else
  {
    *(v4 + 1048) = a1;
    v5 = sub_26BF1159C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_26BF1159C()
{
  v1 = v0[128];
  v2 = v0[118];
  v3 = v0[117];
  v4 = v0[114];
  v5 = v0[113];
  v6 = v0[109];
  v14 = v0[110];
  v15 = v0[105];
  v16 = v0[106];
  v7 = *(v0[131] + 16);

  v0[81] = v7;
  v8 = sub_26C00AEFC();
  MEMORY[0x26D699090](v8);

  MEMORY[0x26D699090](0x737265626D656D20, 0xE800000000000000);
  v9 = v0[76];
  v10 = v0[77];
  v1[7] = MEMORY[0x277D837D0];
  v1[4] = v9;
  v1[5] = v10;
  sub_26C00B03C();

  sub_26BE773C4();
  swift_allocError();
  *v11 = 0xD000000000000036;
  v11[1] = 0x800000026C02CC80;
  swift_willThrow();
  sub_26BE00258(v3, v2);

  sub_26BE00258(v3, v2);

  sub_26BEAFA4C((v0 + 34));
  sub_26BE00258(v5, v4);
  sub_26BE132D4(v6, v14);
  sub_26BE00258(v15, v16);

  v12 = v0[1];

  return v12();
}

uint64_t sub_26BF117A4(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 1064) = a1;
  *(v3 + 1072) = v1;

  if (v1)
  {
    v4 = sub_26BF11BCC;
  }

  else
  {
    v4 = sub_26BF118BC;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

void sub_26BF118BC()
{
  v1 = v0[96];
  if (__OFADD__(v1, 1))
  {
    __break(1u);
  }

  else if (v0[133] == v1 + 1)
  {
    v2 = v0[118];
    v3 = v0[117];
    v4 = v0[114];
    v5 = v0[113];
    v6 = v0[110];
    v7 = v0[109];
    v8 = v0[106];
    v9 = v0[105];
    sub_26BE00258(v3, v2);

    sub_26BE00258(v3, v2);

    sub_26BEAFA4C((v0 + 34));
    sub_26BE00258(v5, v4);
    sub_26BE132D4(v7, v6);
    sub_26BE00258(v9, v8);

    v10 = v0[1];

    v10();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E958, &qword_26C012648);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_26C011280;
    sub_26C00AC1C();

    v0[82] = v1;
    v12 = sub_26C00AEFC();
    MEMORY[0x26D699090](v12);

    *(v11 + 56) = MEMORY[0x277D837D0];
    *(v11 + 32) = 0xD000000000000013;
    *(v11 + 40) = 0x800000026C02CCC0;
    sub_26C00B03C();

    v13 = swift_allocObject();
    v0[135] = v13;
    *(v13 + 16) = xmmword_26C011280;
    sub_26C00AC1C();

    v0[78] = 0xD000000000000013;
    v0[79] = 0x800000026C02CCE0;
    v14 = swift_task_alloc();
    v0[136] = v14;
    *v14 = v0;
    v14[1] = sub_26BF11BE8;
    v15 = v0[119];

    sub_26BEAE7D0(v15, &unk_26C01D908, v15);
  }
}

uint64_t sub_26BF11BE8(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 1096) = v1;

  if (v1)
  {
    v5 = sub_26BF11EF4;
  }

  else
  {
    *(v4 + 1104) = a1;
    v5 = sub_26BF11D10;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_26BF11D10()
{
  v1 = v0[135];
  v2 = v0[118];
  v3 = v0[117];
  v4 = v0[114];
  v5 = v0[113];
  v6 = v0[109];
  v13 = v0[110];
  v14 = v0[105];
  v15 = v0[106];
  v0[83] = v0[138];
  v7 = sub_26C00AEFC();
  MEMORY[0x26D699090](v7);

  v8 = v0[78];
  v9 = v0[79];
  v1[7] = MEMORY[0x277D837D0];
  v1[4] = v8;
  v1[5] = v9;
  sub_26C00B03C();

  sub_26BE773C4();
  swift_allocError();
  *v10 = 0xD00000000000002CLL;
  v10[1] = 0x800000026C02CD00;
  swift_willThrow();
  sub_26BE00258(v3, v2);

  sub_26BE00258(v3, v2);

  sub_26BEAFA4C((v0 + 34));
  sub_26BE00258(v5, v4);
  sub_26BE132D4(v6, v13);
  sub_26BE00258(v14, v15);

  v11 = v0[1];

  return v11();
}

uint64_t sub_26BF11F10()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26BF11F80()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26BF12010()
{
  v1 = v0[118];
  v2 = v0[117];
  v3 = v0[114];
  v4 = v0[113];
  v5 = v0[110];
  v6 = v0[109];
  sub_26BE00258(v0[105], v0[106]);
  sub_26BE132D4(v6, v5);
  sub_26BE00258(v4, v3);
  sub_26BEAFA4C((v0 + 34));

  sub_26BE00258(v2, v1);

  sub_26BE00258(v2, v1);
  v7 = v0[1];

  return v7();
}

uint64_t sub_26BF12130()
{
  v1 = v0[118];
  v2 = v0[117];
  v3 = v0[114];
  v4 = v0[113];
  v5 = v0[110];
  v6 = v0[109];
  v7 = v0[106];
  v8 = v0[105];
  sub_26BE00258(v2, v1);

  sub_26BE00258(v2, v1);

  sub_26BEAFA4C((v0 + 34));
  sub_26BE00258(v4, v3);
  sub_26BE132D4(v6, v5);
  sub_26BE00258(v8, v7);

  v9 = v0[1];

  return v9();
}

uint64_t sub_26BF12260()
{
  v1 = v0[128];
  v2 = v0[118];
  v3 = v0[117];
  v10 = v0[113];
  v11 = v0[114];
  v4 = v0[110];
  v5 = v0[109];
  v8 = v0[105];
  v9 = v0[106];

  sub_26BEAFA4C((v0 + 34));
  sub_26BE00258(v3, v2);

  sub_26BE00258(v3, v2);

  sub_26BE132D4(v5, v4);
  sub_26BE00258(v8, v9);
  sub_26BE00258(v10, v11);
  *(v1 + 16) = 0;

  v6 = v0[1];

  return v6();
}

uint64_t sub_26BF1238C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[49] = a4;
  v5[50] = v4;
  v5[47] = a2;
  v5[48] = a3;
  v5[46] = a1;
  return MEMORY[0x2822009F8](sub_26BF123B4, 0, 0);
}

uint64_t sub_26BF123B4()
{
  v1 = v0[50];
  result = swift_beginAccess();
  v3 = *(v1 + 48);
  if (!*(v3 + 16))
  {
    __break(1u);
    goto LABEL_9;
  }

  v5 = v0[46];
  v4 = v0[47];

  result = sub_26BEBB618(v5, v4);
  if ((v6 & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v7 = *(*(v3 + 56) + 8 * result);
  if (!*(v7 + 16))
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v9 = v0[48];
  v8 = v0[49];

  v10 = sub_26BEBB618(v9, v8);
  LOBYTE(v9) = v11;

  if ((v9 & 1) == 0)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v12 = *(*(v7 + 56) + 8 * v10);
  v0[51] = v12;

  v14 = (*(*v12 + 512) + **(*v12 + 512));
  v13 = swift_task_alloc();
  v0[52] = v13;
  *v13 = v0;
  v13[1] = sub_26BF125A0;

  return v14(v0 + 19);
}

uint64_t sub_26BF125A0()
{
  *(*v1 + 424) = v0;

  if (v0)
  {
    v2 = sub_26BF1299C;
  }

  else
  {
    v2 = sub_26BF126B4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26BF126B4()
{
  *(v0 + 232) = *(v0 + 152);
  *(v0 + 248) = *(v0 + 168);
  v1 = *(v0 + 200);
  *(v0 + 264) = *(v0 + 184);
  *(v0 + 280) = v1;
  *(v0 + 296) = *(v0 + 216);
  v2 = *(v0 + 232);
  v3 = *(v0 + 240);
  *(v0 + 336) = v2;
  *(v0 + 344) = v3;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0u;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0u;
  *(v0 + 128) = 0u;
  *(v0 + 144) = 0;
  *(v0 + 16) = 0u;
  *(v0 + 352) = xmmword_26C00DA60;
  sub_26BE00608(v2, v3);
  v4 = swift_task_alloc();
  *(v0 + 432) = v4;
  *v4 = v0;
  v4[1] = sub_26BF127C4;
  v5 = *(v0 + 392);
  v6 = *(v0 + 384);

  return sub_26BEFDA68((v0 + 336), v6, v5, v0 + 16, 0, 0, (v0 + 352), 0);
}

uint64_t sub_26BF127C4()
{
  v2 = *v1;
  *(*v1 + 440) = v0;

  if (v0)
  {
    sub_26BE2E258(v2 + 16, &qword_28045FA40, &qword_26C01D898);
    sub_26BE00258(*(v2 + 336), *(v2 + 344));
    v3 = sub_26BF12A00;
  }

  else
  {

    sub_26BE2E258(v2 + 16, &qword_28045FA40, &qword_26C01D898);
    sub_26BE00258(*(v2 + 336), *(v2 + 344));
    v3 = sub_26BF1292C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_26BF1292C()
{
  sub_26BF26EB4(v0 + 232);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26BF1299C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26BF12A00()
{

  sub_26BF26EB4(v0 + 232);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26BF12A6C(uint64_t a1)
{
  *(v2 + 584) = v1;
  *(v2 + 576) = a1;

  return MEMORY[0x2822009F8](sub_26BF12B00, 0, 0);
}

uint64_t sub_26BF12B00()
{
  v1 = *(v0 + 584);
  v2 = *(v0 + 576);
  v3 = *v2;
  v4 = v2[1];
  v5 = v2[2];
  v6 = v2[3];
  swift_beginAccess();
  v7 = *(v1 + 48);
  if (*(v7 + 16))
  {

    v8 = sub_26BEBB618(v3, v4);
    if (v9)
    {
      v10 = *(*(v7 + 56) + 8 * v8);

      if (*(v10 + 16))
      {
        v11 = sub_26BEBB618(v5, v6);
        if (v12)
        {
          v13 = *(v0 + 576);
          *(v0 + 592) = *(*(v10 + 56) + 8 * v11);

          v14 = *(v13 + 32);
          v15 = *(v13 + 40);

          result = sub_26BF26234(v14, v15);
          *(v0 + 600) = result;
          *(v0 + 608) = v17;
          if (v17 >> 60 == 15)
          {
            __break(1u);
          }

          else
          {
            *(v0 + 544) = result;
            *(v0 + 552) = v17;
            v18 = swift_task_alloc();
            *(v0 + 616) = v18;
            *v18 = v0;
            v18[1] = sub_26BF12D4C;

            return sub_26BF00564((v0 + 544), v5, v6, 0, 0xE000000000000000, 0, 0);
          }

          return result;
        }
      }
    }
  }

  sub_26BE773C4();
  swift_allocError();
  *v19 = xmmword_26C01D5C0;
  swift_willThrow();
  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_26BF12D4C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 624) = a1;
  *(v3 + 632) = v1;

  if (v1)
  {
    v4 = sub_26BF13970;
  }

  else
  {
    v4 = sub_26BF12E90;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_26BF12E90()
{
  v92 = v0;
  v91 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 624);
  v2 = *(v1 + 16);
  if (!v2)
  {
LABEL_93:

    sub_26BE132D4(*(v0 + 600), *(v0 + 608));

    v64 = *(v0 + 8);
    goto LABEL_95;
  }

  v3 = v0 + 376;
  v73 = (v0 + 560);
  v69 = (v0 + 568);
  v4 = *(v0 + 584);
  v5 = v1 + 32;
  swift_beginAccess();
  v6 = 0;
  v70 = v1;
  v71 = v0;
  v72 = v2;
  v76 = v4;
  v77 = v0 + 376;
  v75 = v1 + 32;
LABEL_7:
  if (v6 >= *(v1 + 16))
  {
    goto LABEL_106;
  }

  sub_26BF26CF0(v5 + 120 * v6, v0 + 16);
  sub_26BF26CF0(v0 + 16, v0 + 136);
  if (!*(v0 + 249))
  {
    v81 = v6;
    v18 = *(v0 + 192);
    v19 = *(v0 + 200);
    sub_26BE2E258(v0 + 136, &qword_28045E698, &unk_26C0204F0);
    if (*(v4 + 32) != 1)
    {
      sub_26BF26D4C(v0 + 16);
      sub_26BE00258(v18, v19);
      v6 = v81;
      goto LABEL_6;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E958, &qword_26C012648);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_26C011280;
    sub_26C00AC1C();

    v21 = v19 >> 62;
    v74 = v20;
    if ((v19 >> 62) > 1)
    {
      if (v21 != 2)
      {
        v29 = MEMORY[0x277D84F90];
        goto LABEL_92;
      }

      v28 = *(v18 + 16);
      v27 = *(v18 + 24);
      v22 = v27 - v28;
      if (__OFSUB__(v27, v28))
      {
        goto LABEL_119;
      }

      if (!v22)
      {
        goto LABEL_64;
      }
    }

    else
    {
      if (!v21)
      {
        v22 = BYTE6(v19);
        if (!BYTE6(v19))
        {
          goto LABEL_64;
        }

        goto LABEL_30;
      }

      v46 = HIDWORD(v18) - v18;
      if (__OFSUB__(HIDWORD(v18), v18))
      {
        goto LABEL_118;
      }

      v22 = v46;
      if (!v46)
      {
LABEL_64:
        v29 = MEMORY[0x277D84F90];
        goto LABEL_91;
      }
    }

LABEL_30:
    v83 = MEMORY[0x277D84F90];
    sub_26BECB834(0, v22 & ~(v22 >> 63), 0);
    v29 = v83;
    if (v21 == 2)
    {
      v30 = *(v18 + 16);
LABEL_67:
      if ((v22 & 0x8000000000000000) == 0)
      {
        goto LABEL_71;
      }

      goto LABEL_116;
    }

    if (v21 == 1)
    {
      v30 = v18;
      goto LABEL_67;
    }

    if (v22 < 0)
    {
      goto LABEL_120;
    }

    v30 = 0;
    while (1)
    {
LABEL_71:
      if (!v22)
      {
        goto LABEL_99;
      }

      if (v21 == 2)
      {
        if (v30 < *(v18 + 16))
        {
          goto LABEL_107;
        }

        if (v30 >= *(v18 + 24))
        {
          goto LABEL_110;
        }

        v51 = sub_26C008E9C();
        if (!v51)
        {
          goto LABEL_124;
        }

        v48 = v51;
        v52 = sub_26C008ECC();
        v50 = v30 - v52;
        if (__OFSUB__(v30, v52))
        {
          goto LABEL_112;
        }
      }

      else
      {
        if (v21 != 1)
        {
          if (v30 >= BYTE6(v19))
          {
            goto LABEL_108;
          }

          v85 = v18;
          v86 = v19;
          v87 = BYTE2(v19);
          v88 = BYTE3(v19);
          v89 = BYTE4(v19);
          v90 = BYTE5(v19);
          v53 = *(&v85 + v30);
          goto LABEL_87;
        }

        if (v30 < v18 || v30 >= v18 >> 32)
        {
          goto LABEL_109;
        }

        v47 = sub_26C008E9C();
        if (!v47)
        {
          goto LABEL_123;
        }

        v48 = v47;
        v49 = sub_26C008ECC();
        v50 = v30 - v49;
        if (__OFSUB__(v30, v49))
        {
          goto LABEL_111;
        }
      }

      v53 = *(v48 + v50);
LABEL_87:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FA78, &qword_26C020500);
      v54 = swift_allocObject();
      *(v54 + 16) = xmmword_26C011280;
      *(v54 + 56) = MEMORY[0x277D84B78];
      *(v54 + 64) = MEMORY[0x277D84BC0];
      *(v54 + 32) = v53;
      v55 = sub_26C00A4BC();
      v57 = v56;
      v59 = *(v83 + 16);
      v58 = *(v83 + 24);
      if (v59 >= v58 >> 1)
      {
        sub_26BECB834((v58 > 1), v59 + 1, 1);
      }

      *(v83 + 16) = v59 + 1;
      v60 = v83 + 16 * v59;
      *(v60 + 32) = v55;
      *(v60 + 40) = v57;
      ++v30;
      --v22;
      LODWORD(v21) = v19 >> 62;
      if (!v22)
      {
        v1 = v70;
        v0 = v71;
LABEL_91:
        v2 = v72;
LABEL_92:
        *v69 = v29;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4B0, &qword_26C00ECE0);
        sub_26BE13630(&qword_28045E4B8, &qword_28045E4B0, &qword_26C00ECE0, MEMORY[0x277D83958]);
        v61 = sub_26C00A3EC();
        v63 = v62;

        MEMORY[0x26D699090](v61, v63);

        v74[7] = MEMORY[0x277D837D0];
        v74[4] = 0xD000000000000012;
        v74[5] = 0x800000026C02CD50;
        sub_26C00B03C();

        sub_26BE00258(v18, v19);
        sub_26BF26D4C(v0 + 16);
        v4 = v76;
        v3 = v77;
        v5 = v75;
        v6 = v81;
        goto LABEL_6;
      }
    }
  }

  sub_26BF26D4C(v0 + 136);
  sub_26BF26CF0(v0 + 16, v0 + 256);
  if (*(v0 + 369) == 1)
  {
    v10 = *(v0 + 272);
    *v3 = *(v0 + 256);
    *(v3 + 16) = v10;
    v11 = *(v0 + 304);
    *(v3 + 32) = *(v0 + 288);
    *(v3 + 48) = v11;
    *(v3 + 112) = *(v0 + 368);
    v12 = *(v0 + 352);
    *(v3 + 80) = *(v0 + 336);
    *(v3 + 96) = v12;
    *(v3 + 64) = *(v0 + 320);
    if (*(v4 + 32) != 1)
    {
      goto LABEL_5;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E958, &qword_26C012648);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_26C011280;
    sub_26C00AC1C();

    v14 = *(v0 + 432);
    v15 = *(v0 + 440);
    v16 = v15 >> 62;
    v79 = v13;
    if ((v15 >> 62) > 1)
    {
      if (v16 != 2)
      {
        v25 = MEMORY[0x277D84F90];
        goto LABEL_4;
      }

      v80 = v6;
      v24 = *(v14 + 16);
      v23 = *(v14 + 24);
      v17 = v23 - v24;
      if (__OFSUB__(v23, v24))
      {
        goto LABEL_114;
      }

      if (!v17)
      {
        goto LABEL_35;
      }
    }

    else
    {
      v80 = v6;
      if (v16)
      {
        v31 = HIDWORD(v14) - v14;
        if (__OFSUB__(HIDWORD(v14), v14))
        {
          goto LABEL_115;
        }

        v17 = v31;
        if (!v31)
        {
LABEL_35:
          v25 = MEMORY[0x277D84F90];
          goto LABEL_3;
        }
      }

      else
      {
        v17 = BYTE6(v15);
        if (!BYTE6(v15))
        {
          goto LABEL_35;
        }
      }
    }

    v82 = MEMORY[0x277D84F90];
    sub_26BECB834(0, v17 & ~(v17 >> 63), 0);
    v25 = v82;
    if (v16 == 2)
    {
      v26 = *(v14 + 16);
      goto LABEL_38;
    }

    if (v16 == 1)
    {
      v26 = v14;
LABEL_38:
      if ((v17 & 0x8000000000000000) == 0)
      {
        goto LABEL_42;
      }

LABEL_113:
      __break(1u);
LABEL_114:
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
    }

    if (v17 < 0)
    {
      goto LABEL_117;
    }

    v26 = 0;
    while (1)
    {
LABEL_42:
      if (!v17)
      {
        __break(1u);
LABEL_99:
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
        __break(1u);
LABEL_107:
        __break(1u);
LABEL_108:
        __break(1u);
LABEL_109:
        __break(1u);
LABEL_110:
        __break(1u);
LABEL_111:
        __break(1u);
LABEL_112:
        __break(1u);
        goto LABEL_113;
      }

      if (v16 == 2)
      {
        if (v26 < *(v14 + 16))
        {
          goto LABEL_100;
        }

        if (v26 >= *(v14 + 24))
        {
          goto LABEL_103;
        }

        v36 = sub_26C008E9C();
        if (!v36)
        {
          goto LABEL_122;
        }

        v33 = v36;
        v37 = sub_26C008ECC();
        v35 = v26 - v37;
        if (__OFSUB__(v26, v37))
        {
          goto LABEL_105;
        }
      }

      else
      {
        if (v16 != 1)
        {
          if (v26 >= BYTE6(v15))
          {
            goto LABEL_101;
          }

          v85 = v14;
          v86 = v15;
          v87 = BYTE2(v15);
          v88 = BYTE3(v15);
          v89 = BYTE4(v15);
          v90 = BYTE5(v15);
          v38 = *(&v85 + v26);
          goto LABEL_58;
        }

        if (v26 < v14 || v26 >= v14 >> 32)
        {
          goto LABEL_102;
        }

        v32 = sub_26C008E9C();
        if (!v32)
        {
          goto LABEL_121;
        }

        v33 = v32;
        v34 = sub_26C008ECC();
        v35 = v26 - v34;
        if (__OFSUB__(v26, v34))
        {
          goto LABEL_104;
        }
      }

      v38 = *(v33 + v35);
LABEL_58:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FA78, &qword_26C020500);
      v39 = swift_allocObject();
      *(v39 + 16) = xmmword_26C011280;
      *(v39 + 56) = MEMORY[0x277D84B78];
      *(v39 + 64) = MEMORY[0x277D84BC0];
      *(v39 + 32) = v38;
      v40 = sub_26C00A4BC();
      v84 = v25;
      v43 = *(v25 + 16);
      v42 = *(v25 + 24);
      if (v43 >= v42 >> 1)
      {
        v78 = v40;
        v45 = v41;
        sub_26BECB834((v42 > 1), v43 + 1, 1);
        v41 = v45;
        v40 = v78;
        v25 = v84;
      }

      *(v25 + 16) = v43 + 1;
      v44 = v25 + 16 * v43;
      *(v44 + 32) = v40;
      *(v44 + 40) = v41;
      ++v26;
      if (!--v17)
      {
        v1 = v70;
        v0 = v71;
        v2 = v72;
LABEL_3:
        v6 = v80;
LABEL_4:
        *v73 = v25;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4B0, &qword_26C00ECE0);
        sub_26BE13630(&qword_28045E4B8, &qword_28045E4B0, &qword_26C00ECE0, MEMORY[0x277D83958]);
        v7 = sub_26C00A3EC();
        v9 = v8;

        MEMORY[0x26D699090](v7, v9);

        v79[7] = MEMORY[0x277D837D0];
        v79[4] = 0xD000000000000012;
        v79[5] = 0x800000026C02CD50;
        sub_26C00B03C();

        v4 = v76;
        v3 = v77;
        v5 = v75;
LABEL_5:
        sub_26BF26D4C(v0 + 16);
        sub_26BF26FBC(v3);
LABEL_6:
        if (++v6 == v2)
        {
          goto LABEL_93;
        }

        goto LABEL_7;
      }
    }
  }

  v65 = *(v0 + 608);
  v66 = *(v0 + 600);

  sub_26BF26D4C(v0 + 256);
  sub_26BE773C4();
  swift_allocError();
  *v67 = xmmword_26C01D5F0;
  swift_willThrow();
  sub_26BE132D4(v66, v65);

  sub_26BF26D4C(v71 + 16);
  v64 = *(v71 + 8);
LABEL_95:

  return v64();
}

uint64_t sub_26BF13970()
{
  v1 = v0[76];
  v2 = v0[75];

  sub_26BE132D4(v2, v1);
  v3 = v0[1];

  return v3();
}

uint64_t sub_26BF13A1C(uint64_t a1)
{
  *(v2 + 552) = v1;
  *(v2 + 544) = a1;
  return MEMORY[0x2822009F8](sub_26BF13A40, 0, 0);
}

uint64_t sub_26BF13A40()
{
  v1 = v0[69];
  swift_beginAccess();
  v2 = *(v1 + 48);
  if (*(v2 + 16))
  {
    v3 = v0[68];
    v4 = *(v3 + 16);
    v0[70] = v4;
    v5 = *(v3 + 24);
    v0[71] = v5;

    v6 = sub_26BEBB618(v4, v5);
    if (v7)
    {
      v8 = *(*(v2 + 56) + 8 * v6);

      if (*(v8 + 16))
      {
        v9 = v0[68];
        v10 = *(v9 + 32);
        v0[72] = v10;
        v11 = *(v9 + 40);
        v0[73] = v11;
        v12 = sub_26BEBB618(v10, v11);
        if (v13)
        {
          v14 = v0[68];
          v15 = *(*(v8 + 56) + 8 * v12);
          v0[74] = v15;

          v16 = *v14;
          v0[75] = *v14;
          v17 = v14[1];
          v0[76] = v17;
          v0[54] = v16;
          v0[55] = v17;
          v18 = *(*v15 + 600);

          v23 = (v18 + *v18);
          v19 = swift_task_alloc();
          v0[77] = v19;
          *v19 = v0;
          v19[1] = sub_26BF13CB8;

          return (v23)(v0 + 19, v0 + 54);
        }
      }
    }
  }

  sub_26BE773C4();
  swift_allocError();
  *v21 = xmmword_26C01D5E0;
  swift_willThrow();
  v22 = v0[1];

  return v22();
}

uint64_t sub_26BF13CB8()
{
  *(*v1 + 624) = v0;

  if (v0)
  {
    v2 = sub_26BF15624;
  }

  else
  {
    v2 = sub_26BF13DDC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26BF13DDC()
{
  *(v0 + 232) = *(v0 + 152);
  v1 = *(v0 + 216);
  *(v0 + 280) = *(v0 + 200);
  *(v0 + 296) = v1;
  *(v0 + 248) = *(v0 + 168);
  *(v0 + 264) = *(v0 + 184);
  v2 = *(v0 + 232);
  v9 = *(v0 + 280);
  *(v0 + 632) = v2;
  *(v0 + 648) = v9;
  v3 = *(v0 + 296);
  v4 = *(v0 + 304);
  *(v0 + 664) = v3;
  *(v0 + 672) = v4;
  *(v0 + 144) = 0;
  *(v0 + 112) = 0u;
  *(v0 + 128) = 0u;
  *(v0 + 80) = 0u;
  *(v0 + 96) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 16) = 0u;
  *(v0 + 448) = v2;
  *(v0 + 464) = xmmword_26C00DA60;
  sub_26BE00608(v2, *(&v2 + 1));
  sub_26BE00608(v9, *(&v9 + 1));
  sub_26BE00608(v3, v4);
  v5 = swift_task_alloc();
  *(v0 + 680) = v5;
  *v5 = v0;
  v5[1] = sub_26BF13F3C;
  v6 = *(v0 + 584);
  v7 = *(v0 + 576);

  return sub_26BEFDA68((v0 + 448), v7, v6, v0 + 16, 0, 0, (v0 + 464), 0);
}

uint64_t sub_26BF13F3C()
{
  v2 = *v1;
  v2[86] = v0;

  if (v0)
  {
    sub_26BE2E258((v2 + 2), &qword_28045FA40, &qword_26C01D898);

    return MEMORY[0x2822009F8](sub_26BF15688, 0, 0);
  }

  else
  {
    v3 = v2[74];

    sub_26BE2E258((v2 + 2), &qword_28045FA40, &qword_26C01D898);
    v6 = (*(*v3 + 624) + **(*v3 + 624));
    v4 = swift_task_alloc();
    v2[87] = v4;
    *v4 = v2;
    v4[1] = sub_26BF1418C;

    return v6();
  }
}

uint64_t sub_26BF1418C(char a1)
{
  v4 = *v2;
  *(*v2 + 704) = v1;

  if (v1)
  {
    v5 = sub_26BF1573C;
  }

  else
  {
    *(v4 + 145) = a1 & 1;
    v5 = sub_26BF142B8;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_26BF142B8()
{
  if (*(v0 + 145) == 1)
  {
    v1 = *(v0 + 552);
    swift_beginAccess();
    v2 = *(v1 + 56);
    v3 = *(v2 + 16);

    if (v3 && (v4 = sub_26BEBB618(*(v0 + 576), *(v0 + 584)), (v5 & 1) != 0))
    {
      v6 = *(*(v2 + 56) + 8 * v4);
    }

    else
    {
      v6 = MEMORY[0x277D84F90];
    }

    v16 = *(v6 + 16);
    if (v16)
    {
      v17 = 0;
      v18 = -v16;
      v19 = MEMORY[0x277D84F90];
      do
      {
        v20 = (v6 + 40 + 16 * v17++);
        while (1)
        {
          if ((v17 - 1) >= *(v6 + 16))
          {
            __break(1u);
            goto LABEL_38;
          }

          v21 = *(v20 - 1);
          v22 = *v20;
          if (v21 != *(v0 + 560) || v22 != *(v0 + 568))
          {
            result = sub_26C00AF2C();
            if ((result & 1) == 0)
            {
              break;
            }
          }

          ++v17;
          v20 += 2;
          if (v18 + v17 == 1)
          {
            goto LABEL_24;
          }
        }

        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_26BECB834(0, *(v19 + 16) + 1, 1);
        }

        v25 = *(v19 + 16);
        v24 = *(v19 + 24);
        v26 = v25 + 1;
        if (v25 >= v24 >> 1)
        {
          result = sub_26BECB834((v24 > 1), v25 + 1, 1);
          v26 = v25 + 1;
        }

        *(v19 + 16) = v26;
        v27 = v19 + 16 * v25;
        *(v27 + 32) = v21;
        *(v27 + 40) = v22;
      }

      while (v18 + v17);
    }

    else
    {
      v19 = MEMORY[0x277D84F90];
    }

LABEL_24:
    *(v0 + 712) = v19;

    v28 = *(v19 + 16);
    *(v0 + 720) = v28;
    if (v28)
    {
      *(v0 + 728) = 0;
      v29 = *(v0 + 712);
      if (v29[2])
      {
        v30 = *(v0 + 552);
        v31 = v29[4];
        *(v0 + 744) = v31;
        v32 = v29[5];
        *(v0 + 752) = v32;
        v33 = *(v30 + 48);
        if (*(v33 + 16))
        {

          result = sub_26BEBB618(v31, v32);
          if (v34)
          {
            v35 = *(*(v33 + 56) + 8 * result);
            if (*(v35 + 16))
            {
              v36 = *(v0 + 584);
              v37 = *(v0 + 576);

              v38 = sub_26BEBB618(v37, v36);
              LOBYTE(v37) = v39;

              if (v37)
              {
                v40 = *(v0 + 656);
                v41 = *(v0 + 648);
                v42 = *(*(v35 + 56) + 8 * v38);
                *(v0 + 760) = v42;

                *(v0 + 480) = v41;
                *(v0 + 488) = v40;
                v43 = *(*v42 + 608);
                sub_26BE00608(v41, v40);
                v51 = (v43 + *v43);
                v44 = swift_task_alloc();
                *(v0 + 768) = v44;
                *v44 = v0;
                v44[1] = sub_26BF147A0;

                return v51();
              }

LABEL_42:
              __break(1u);
              return result;
            }

LABEL_41:
            __break(1u);
            goto LABEL_42;
          }

LABEL_40:
          __break(1u);
          goto LABEL_41;
        }
      }

      else
      {
LABEL_38:
        __break(1u);
      }

      __break(1u);
      goto LABEL_40;
    }

    v45 = *(v0 + 672);
    v46 = *(v0 + 664);
    v47 = *(v0 + 656);
    v48 = *(v0 + 648);
    v49 = *(v0 + 640);
    v50 = *(v0 + 632);

    sub_26BE00258(v48, v47);
    sub_26BE00258(v46, v45);
    sub_26BE00258(v50, v49);

    sub_26BF271D0(v0 + 232);
    v14 = *(v0 + 8);
  }

  else
  {
    v7 = *(v0 + 672);
    v8 = *(v0 + 664);
    v9 = *(v0 + 656);
    v10 = *(v0 + 648);
    v11 = *(v0 + 640);
    v12 = *(v0 + 632);
    sub_26BE01654();
    swift_allocError();
    *v13 = 8;
    v13[112] = 9;
    swift_willThrow();
    sub_26BE00258(v8, v7);
    sub_26BE00258(v10, v9);
    sub_26BE00258(v12, v11);
    sub_26BF271D0(v0 + 232);

    v14 = *(v0 + 8);
  }

  return v14();
}

uint64_t sub_26BF147A0()
{
  v2 = *v1;
  *(*v1 + 776) = v0;

  sub_26BE00258(*(v2 + 480), *(v2 + 488));
  if (v0)
  {

    v3 = sub_26BF157F0;
  }

  else
  {
    v3 = sub_26BF148E4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_26BF148E4()
{
  v1 = *(**(v0 + 760) + 624);
  v4 = (v1 + *v1);
  v2 = swift_task_alloc();
  *(v0 + 784) = v2;
  *v2 = v0;
  v2[1] = sub_26BF14A04;

  return v4();
}

uint64_t sub_26BF14A04(char a1)
{
  v4 = *v2;
  *(*v2 + 792) = v1;

  if (v1)
  {

    v5 = sub_26BF158B0;
  }

  else
  {
    *(v4 + 146) = a1 & 1;
    v5 = sub_26BF14B44;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_26BF14B44()
{
  if (*(v0 + 146) == 1)
  {
    v1 = (v0 + 664);
    v2 = *(v0 + 544);
    v3 = *(v2 + 56);
    if (!v3 || ((result = *(v2 + 48), result == *(v0 + 744)) ? (v5 = v3 == *(v0 + 752)) : (v5 = 0), !v5 && (result = sub_26C00AF2C(), (result & 1) == 0)))
    {
      sub_26BE00608(*(v0 + 664), *(v0 + 672));
      v17 = *(v0 + 736);
      v18 = *v1;
LABEL_30:
      *(v0 + 808) = v18;
      *(v0 + 800) = v17;
      v30 = *(v0 + 760);
      *(v0 + 496) = v18;
      v31 = *(*v30 + 616);
      sub_26BE00608(v18, *(&v18 + 1));
      v33 = (v31 + *v31);
      v32 = swift_task_alloc();
      *(v0 + 824) = v32;
      *v32 = v0;
      v32[1] = sub_26BF14F38;

      return v33(v0 + 312, v0 + 496);
    }

    v6 = *(v0 + 672);
    v7 = v6 >> 62;
    if ((v6 >> 62) <= 1)
    {
      if (!v7)
      {
        v8 = BYTE6(v6);
        if (!BYTE6(v6))
        {
          goto LABEL_24;
        }

        goto LABEL_19;
      }

      v26 = *(v0 + 668);
      v27 = v26 - *v1;
      if (!__OFSUB__(v26, *v1))
      {
        v8 = v27;
        if (!v27)
        {
          goto LABEL_24;
        }

LABEL_19:
        if (v8 > 14)
        {
          v21 = *v1;
          v22 = *(v0 + 672);
          sub_26C008EEC();
          swift_allocObject();
          sub_26BE00608(v21, v22);
          v23 = sub_26C008EAC();
          if (v8 >= 0x7FFFFFFF)
          {
            sub_26C00904C();
            v24 = swift_allocObject();
            *(v24 + 16) = 0;
            *(v24 + 24) = v8;
            v25 = v23 | 0x8000000000000000;
          }

          else
          {
            v24 = v8 << 32;
            v25 = v23 | 0x4000000000000000;
          }

          v17 = *(v0 + 736);
          goto LABEL_29;
        }

        if ((v8 & 0x8000000000000000) == 0)
        {
          v17 = *(v0 + 736) & 0xF00000000000000 | (v8 << 48);
          sub_26BE00608(*(v0 + 664), v6);
          v24 = 0;
          v25 = v17;
          goto LABEL_29;
        }

LABEL_35:
        __break(1u);
        return result;
      }

LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    if (v7 == 2)
    {
      v19 = *(*v1 + 16);
      v20 = *(*v1 + 24);
      v8 = v20 - v19;
      if (__OFSUB__(v20, v19))
      {
        __break(1u);
        goto LABEL_34;
      }

      if (v8)
      {
        goto LABEL_19;
      }
    }

LABEL_24:
    sub_26BE00608(*(v0 + 664), v6);
    v24 = 0;
    v17 = *(v0 + 736);
    v25 = 0xC000000000000000;
LABEL_29:
    v28 = *(v0 + 672);
    v29 = *(v0 + 664);
    *(v0 + 528) = v24;
    *(v0 + 536) = v25;
    sub_26BFA5C8C((v0 + 528), 255);
    sub_26BE00258(v29, v28);
    v18 = *(v0 + 528);
    goto LABEL_30;
  }

  v9 = *(v0 + 672);
  v10 = *(v0 + 664);
  v11 = *(v0 + 656);
  v12 = *(v0 + 648);
  v13 = *(v0 + 640);
  v14 = *(v0 + 632);

  sub_26BE01654();
  swift_allocError();
  *v15 = 8;
  v15[112] = 9;
  swift_willThrow();
  sub_26BE00258(v12, v11);
  sub_26BE00258(v10, v9);
  sub_26BE00258(v14, v13);

  sub_26BF271D0(v0 + 232);

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_26BF14F38()
{
  v2 = *v1;
  *(*v1 + 832) = v0;

  sub_26BE00258(*(v2 + 496), *(v2 + 504));
  if (v0)
  {

    v3 = sub_26BF15970;
  }

  else
  {
    v3 = sub_26BF1507C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_26BF1507C()
{
  v2 = v0[39];
  v1 = v0[40];
  if (!v1)
  {
    goto LABEL_18;
  }

  v3 = v2 == v0[75] && v1 == v0[76];
  if (!v3 && (sub_26C00AF2C() & 1) == 0)
  {

LABEL_18:
    v34 = v0[94];
    v35 = v0[93];
    v44 = v0[101];
    v45 = v0[84];
    v43 = v0[83];
    v48 = v0[102];
    v49 = v0[82];
    v46 = v0[81];
    v36 = v0[79];
    v37 = v0[76];
    v38 = v0[75];
    v42 = v0[80];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E958, &qword_26C012648);
    v39 = swift_allocObject();
    *(v39 + 16) = xmmword_26C011280;
    sub_26C00AC1C();

    MEMORY[0x26D699090](v38, v37);
    MEMORY[0x26D699090](0x20746F67202CLL, 0xE600000000000000);
    v0[64] = v2;
    v0[65] = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045EE08, &qword_26C016570);
    v40 = sub_26C00A4FC();
    MEMORY[0x26D699090](v40);

    MEMORY[0x26D699090](0x6C6320726F66202CLL, 0xED000020746E6569);
    MEMORY[0x26D699090](v35, v34);

    MEMORY[0x26D699090](41, 0xE100000000000000);
    *(v39 + 56) = MEMORY[0x277D837D0];
    *(v39 + 32) = 0xD000000000000018;
    *(v39 + 40) = 0x800000026C02CE00;
    sub_26C00B03C();

    sub_26BE01654();
    swift_allocError();
    *v41 = 8;
    v41[112] = 9;
    swift_willThrow();

    sub_26BE00258(v36, v42);

    sub_26BF271D0((v0 + 29));
    sub_26BE00258(v44, v48);
    sub_26BE00258(v43, v45);
    sub_26BE00258(v46, v49);
    sub_26BF27224((v0 + 39));
    v15 = v0[1];
    goto LABEL_19;
  }

  v4 = v0[102];
  v5 = v0[101];
  v6 = v0[90];
  v7 = v0[91] + 1;

  sub_26BF27224((v0 + 39));
  sub_26BE00258(v5, v4);

  if (v7 == v6)
  {
    v9 = v0[84];
    v10 = v0[83];
    v11 = v0[82];
    v12 = v0[81];
    v13 = v0[80];
    v14 = v0[79];

    sub_26BE00258(v12, v11);
    sub_26BE00258(v10, v9);
    sub_26BE00258(v14, v13);

    sub_26BF271D0((v0 + 29));
    v15 = v0[1];
LABEL_19:

    return v15();
  }

  v16 = v0[91] + 1;
  v0[92] = v0[100];
  v0[91] = v16;
  v17 = v0[89];
  if (v16 >= *(v17 + 16))
  {
    __break(1u);
    goto LABEL_23;
  }

  v18 = v0[69];
  v19 = v17 + 16 * v16;
  v20 = *(v19 + 32);
  v0[93] = v20;
  v21 = *(v19 + 40);
  v0[94] = v21;
  v22 = *(v18 + 48);
  if (!*(v22 + 16))
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  result = sub_26BEBB618(v20, v21);
  if ((v23 & 1) == 0)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v24 = *(*(v22 + 56) + 8 * result);
  if (!*(v24 + 16))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v25 = v0[73];
  v26 = v0[72];

  v27 = sub_26BEBB618(v26, v25);
  LOBYTE(v26) = v28;

  if ((v26 & 1) == 0)
  {
LABEL_26:
    __break(1u);
    return result;
  }

  v29 = v0[82];
  v30 = v0[81];
  v31 = *(*(v24 + 56) + 8 * v27);
  v0[95] = v31;

  v0[60] = v30;
  v0[61] = v29;
  v32 = *(*v31 + 608);
  sub_26BE00608(v30, v29);
  v47 = (v32 + *v32);
  v33 = swift_task_alloc();
  v0[96] = v33;
  *v33 = v0;
  v33[1] = sub_26BF147A0;

  return v47();
}

uint64_t sub_26BF15624()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26BF15688()
{
  v1 = v0[84];
  v2 = v0[83];
  v3 = v0[80];
  v4 = v0[79];
  sub_26BE00258(v0[81], v0[82]);
  sub_26BE00258(v2, v1);

  sub_26BF271D0((v0 + 29));
  sub_26BE00258(v4, v3);
  v5 = v0[1];

  return v5();
}

uint64_t sub_26BF1573C()
{
  v1 = v0[82];
  v2 = v0[81];
  v3 = v0[80];
  v4 = v0[79];
  sub_26BE00258(v0[83], v0[84]);
  sub_26BE00258(v2, v1);
  sub_26BE00258(v4, v3);
  sub_26BF271D0((v0 + 29));

  v5 = v0[1];

  return v5();
}

uint64_t sub_26BF157F0()
{
  v1 = v0[84];
  v2 = v0[83];
  v3 = v0[80];
  v4 = v0[79];
  sub_26BE00258(v0[81], v0[82]);
  sub_26BE00258(v2, v1);

  sub_26BE00258(v4, v3);

  sub_26BF271D0((v0 + 29));
  v5 = v0[1];

  return v5();
}

uint64_t sub_26BF158B0()
{
  v1 = v0[84];
  v2 = v0[83];
  v3 = v0[80];
  v4 = v0[79];
  sub_26BE00258(v0[81], v0[82]);
  sub_26BE00258(v2, v1);
  sub_26BE00258(v4, v3);

  sub_26BF271D0((v0 + 29));

  v5 = v0[1];

  return v5();
}

uint64_t sub_26BF15970()
{
  v1 = v0[84];
  v2 = v0[83];
  v3 = v0[82];
  v4 = v0[81];
  v5 = v0[80];
  v6 = v0[79];
  sub_26BE00258(v0[101], v0[102]);
  sub_26BE00258(v4, v3);
  sub_26BE00258(v2, v1);

  sub_26BE00258(v6, v5);

  sub_26BF271D0((v0 + 29));
  v7 = v0[1];

  return v7();
}

uint64_t sub_26BF15A4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[11] = a4;
  v5[12] = v4;
  v5[9] = a2;
  v5[10] = a3;
  v5[8] = a1;
  return MEMORY[0x2822009F8](sub_26BF15A74, 0, 0);
}

uint64_t sub_26BF15A74()
{
  v1 = v0[12];
  swift_beginAccess();
  v2 = *(v1 + 40);
  if (!*(v2 + 16))
  {
    goto LABEL_7;
  }

  v4 = v0[8];
  v3 = v0[9];

  v5 = sub_26BEBB618(v4, v3);
  if ((v6 & 1) == 0)
  {

LABEL_7:
    sub_26BE773C4();
    swift_allocError();
    *v12 = xmmword_26C01D5C0;
    swift_willThrow();
    goto LABEL_10;
  }

  v8 = v0[10];
  v7 = v0[11];
  v9 = *(*(v2 + 56) + 8 * v5);

  swift_beginAccess();
  v15 = *(v9 + 280);
  v16 = *(v9 + 288);

  MEMORY[0x26D699090](0x696369747261702ELL, 0xEC000000746E6170);

  v10 = sub_26BF806E8(v15, v16, v8, v7);

  if (v10)
  {

    v11 = v0[1];
    goto LABEL_11;
  }

  sub_26BE01654();
  swift_allocError();
  *v13 = 12;
  v13[112] = 9;
  swift_willThrow();

LABEL_10:
  v11 = v0[1];
LABEL_11:

  return v11();
}

uint64_t sub_26BF15C60(uint64_t a1)
{
  *(v2 + 112) = a1;
  *(v2 + 120) = v1;
  return MEMORY[0x2822009F8](sub_26BF15C80, 0, 0);
}

uint64_t sub_26BF15C80()
{
  v1 = *(v0 + 120);
  swift_beginAccess();
  v2 = *(v1 + 40);
  if (!*(v2 + 16))
  {
    goto LABEL_11;
  }

  v3 = *(v0 + 112);
  v4 = *v3;
  v5 = v3[1];

  v6 = sub_26BEBB618(v4, v5);
  if ((v7 & 1) == 0)
  {

LABEL_11:
    sub_26BE773C4();
    swift_allocError();
    *v22 = xmmword_26C01D5C0;
    swift_willThrow();
    goto LABEL_14;
  }

  v8 = *(v0 + 120);
  *(v0 + 128) = *(*(v2 + 56) + 8 * v6);

  swift_beginAccess();
  v9 = *(v8 + 48);
  if (*(v9 + 16))
  {

    v10 = sub_26BEBB618(v4, v5);
    if (v11)
    {
      v12 = *(*(v9 + 56) + 8 * v10);

      if (*(v12 + 16))
      {
        v13 = sub_26BEBB618(*(*(v0 + 112) + 16), *(*(v0 + 112) + 24));
        if (v14)
        {
          v15 = *(v0 + 112);
          v16 = *(*(v12 + 56) + 8 * v13);
          *(v0 + 136) = v16;

          v17 = *(v15 + 56);
          v18 = *(v15 + 40);
          *(v0 + 16) = *(v15 + 32);
          *(v0 + 24) = v18;
          *(v0 + 40) = v17;
          v19 = *(*v16 + 680);

          v25 = (v19 + *v19);
          v20 = swift_task_alloc();
          *(v0 + 144) = v20;
          *v20 = v0;
          v20[1] = sub_26BF15F94;

          return v25(v0 + 160, v0 + 16);
        }
      }
    }
  }

  sub_26BE773C4();
  swift_allocError();
  *v23 = xmmword_26C01D5E0;
  swift_willThrow();

LABEL_14:
  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_26BF15F94()
{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = sub_26BF162C8;
  }

  else
  {
    v2 = sub_26BF160B8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26BF160B8()
{
  v1 = *(v0 + 160);
  v2 = *(*(v0 + 112) + 64);
  if (v1 == (v2 & 1))
  {

    v9 = *(v0 + 8);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E958, &qword_26C012648);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_26C011280;
    sub_26C00AC1C();
    *(v0 + 96) = 0;
    *(v0 + 104) = 0xE000000000000000;
    MEMORY[0x26D699090](0xD00000000000002ELL, 0x800000026C02CE20);
    if (v2)
    {
      v4 = 1702195828;
    }

    else
    {
      v4 = 0x65736C6166;
    }

    if (v2)
    {
      v5 = 0xE400000000000000;
    }

    else
    {
      v5 = 0xE500000000000000;
    }

    MEMORY[0x26D699090](v4, v5);

    MEMORY[0x26D699090](0x20746F67202CLL, 0xE600000000000000);
    *(v0 + 161) = v1;
    sub_26C00AD4C();
    v6 = *(v0 + 96);
    v7 = *(v0 + 104);
    *(v3 + 56) = MEMORY[0x277D837D0];
    *(v3 + 32) = v6;
    *(v3 + 40) = v7;
    sub_26C00B03C();

    sub_26BE01654();
    swift_allocError();
    *v8 = 12;
    v8[112] = 9;
    swift_willThrow();

    v9 = *(v0 + 8);
  }

  return v9();
}

uint64_t sub_26BF162C8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26BF16334(uint64_t a1)
{
  *(v2 + 360) = a1;
  *(v2 + 368) = v1;
  return MEMORY[0x2822009F8](sub_26BF16354, 0, 0);
}

uint64_t sub_26BF16354()
{
  v1 = v0[46];
  swift_beginAccess();
  v2 = *(v1 + 40);
  if (*(v2 + 16))
  {
    v3 = v0[45];
    v4 = *v3;
    v0[47] = *v3;
    v5 = v3[1];
    v0[48] = v5;
    swift_bridgeObjectRetain_n();

    v6 = sub_26BEBB618(v4, v5);
    if (v7)
    {
      v8 = v0[45];
      v9 = v0[46];
      v0[49] = *(*(v2 + 56) + 8 * v6);

      v10 = *(v8 + 16);
      v0[50] = v10;
      v11 = *(v8 + 24);
      v0[51] = v11;
      swift_beginAccess();
      v12 = *(v9 + 48);
      if (*(v12 + 16))
      {

        v2 = v12;
        v13 = sub_26BEBB618(v4, v5);
        if (v14)
        {
          v2 = *(*(v12 + 56) + 8 * v13);
          if (*(v2 + 16))
          {

            v15 = sub_26BEBB618(v10, v11);
            v17 = v16;

            if (v17)
            {
              v18 = v0[45];
              v0[52] = *(*(v2 + 56) + 8 * v15);

              v2 = *(v18 + 32);
              v0[53] = v2;

              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v20 = v2;
              if (isUniquelyReferenced_nonNull_native)
              {
                goto LABEL_8;
              }

              goto LABEL_36;
            }

LABEL_35:
            __break(1u);
LABEL_36:
            v20 = sub_26BEEDAF4(0, *(v2 + 16) + 1, 1, v2);
LABEL_8:
            v22 = *(v20 + 2);
            v21 = *(v20 + 3);
            v23 = v22 + 1;
            if (v22 >= v21 >> 1)
            {
              v20 = sub_26BEEDAF4((v21 > 1), v22 + 1, 1, v20);
            }

            v0[54] = v20;
            *(v20 + 2) = v23;
            v24 = &v20[16 * v22];
            *(v24 + 4) = v4;
            *(v24 + 5) = v5;
            v25 = sub_26C005DBC(MEMORY[0x277D84F90]);
            v26 = *(v2 + 16);
            v0[55] = v26;
            if (!v26)
            {
              v0[63] = v25;
              v0[64] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E958, &qword_26C012648);
              v49 = swift_allocObject();
              v0[65] = v49;
              *(v49 + 16) = xmmword_26C0125B0;
              *(v49 + 56) = MEMORY[0x277D837D0];
              *(v49 + 32) = 6648432;
              *(v49 + 40) = 0xE300000000000000;
              v50 = swift_task_alloc();
              v0[66] = v50;
              *v50 = v0;
              v50[1] = sub_26BF16E90;
              v45 = v0[52];
              v44 = &unk_26C01D920;
              v43 = v45;
              v46 = sub_26BEAE7D0;

              return v46(v43, v44, v45);
            }

            v0[56] = v25;
            v0[57] = 0;
            v27 = *(v0[46] + 40);
            if (*(v27 + 16))
            {
              v28 = v0[53];
              v30 = *(v28 + 32);
              v29 = *(v28 + 40);

              v31 = v30;
              v2 = v27;
              v32 = sub_26BEBB618(v31, v29);
              if (v33)
              {
                v2 = *(*(v27 + 56) + 8 * v32);
                v0[58] = v2;

                result = swift_beginAccess();
                v27 = *(v2 + 32);
                if ((~v27 & 0x3000000000000000) == 0 || (v27 & 0x2000000000000000) == 0)
                {
                  goto LABEL_43;
                }

                v23 = *(v2 + 24);
                if ((v23 & 0xC000000000000001) == 0)
                {
                  if (!*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
                    __break(1u);
                    goto LABEL_41;
                  }

                  v35 = *(v23 + 32);
                  sub_26BE2958C(*(v2 + 24), *(v2 + 32));
                  v36 = v35;
LABEL_18:
                  v37 = v36;
                  v38 = SecCertificateCopyURIs();
                  if (v38)
                  {
                    v39 = v38;

                    v40 = v39;
                    sub_26BE2962C(v23, v27);

                    v0[41] = v40;
                    type metadata accessor for CFArray(0);
                    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4A0, &qword_26C00E210);
                    result = swift_dynamicCast();
                    if (!result)
                    {
                      goto LABEL_43;
                    }

                    v41 = v0[42];
                    if (!v41)
                    {
                      goto LABEL_43;
                    }

                    if (v41[2])
                    {
                      v0[59] = v41[4];
                      v0[60] = v41[5];

                      v42 = swift_task_alloc();
                      v0[61] = v42;
                      *v42 = v0;
                      v42[1] = sub_26BF168F0;
                      v43 = (v0 + 37);
                      v44 = v2;
                      v45 = v2;
                      v46 = sub_26BE8E304;

                      return v46(v43, v44, v45);
                    }

LABEL_42:

LABEL_43:
                    __break(1u);
                    return result;
                  }

LABEL_41:
                  __break(1u);
                  goto LABEL_42;
                }

LABEL_39:
                sub_26BE04890(v23, v27);
                v36 = MEMORY[0x26D6996F0](0, v23);
                goto LABEL_18;
              }
            }

            else
            {
              __break(1u);
            }

            __break(1u);
            goto LABEL_39;
          }

LABEL_34:
          __break(1u);
          goto LABEL_35;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      goto LABEL_34;
    }

    swift_bridgeObjectRelease_n();
  }

  sub_26BE773C4();
  swift_allocError();
  *v47 = xmmword_26C01D5C0;
  swift_willThrow();
  v48 = v0[1];

  return v48();
}

uint64_t sub_26BF168F0()
{
  *(*v1 + 496) = v0;

  if (v0)
  {

    v2 = sub_26BF16A24;
  }

  else
  {
    v2 = sub_26BF16AC0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26BF16A24()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26BF16AC0()
{
  v36 = v0;
  v2 = v0[59];
  v1 = v0[60];
  v3 = v0[58];
  v5 = v0[55];
  v4 = v0[56];
  v6 = v0[57] + 1;
  v7 = v0[37];
  v8 = v0[38];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v35 = v4;
  v10 = &v35;
  sub_26BE57F90(v7, v8, v2, v1, isUniquelyReferenced_nonNull_native);

  if (v6 == v5)
  {
    v0[63] = v35;
    v0[64] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E958, &qword_26C012648);
    v11 = swift_allocObject();
    v0[65] = v11;
    *(v11 + 16) = xmmword_26C0125B0;
    *(v11 + 56) = MEMORY[0x277D837D0];
    *(v11 + 32) = 6648432;
    *(v11 + 40) = 0xE300000000000000;
    v12 = swift_task_alloc();
    v0[66] = v12;
    *v12 = v0;
    v12[1] = sub_26BF16E90;
    v13 = v0[52];
    v14 = &unk_26C01D920;
    v15 = v13;
    v16 = sub_26BEAE7D0;

    return v16(v15, v14, v13);
  }

  v18 = v0[57] + 1;
  v0[56] = v35;
  v0[57] = v18;
  v19 = *(v0[46] + 40);
  if (!*(v19 + 16))
  {
    __break(1u);
    goto LABEL_22;
  }

  v20 = v0[53] + 16 * v18;
  v22 = *(v20 + 32);
  v21 = *(v20 + 40);

  v23 = v22;
  v10 = v19;
  v24 = sub_26BEBB618(v23, v21);
  if ((v25 & 1) == 0)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    sub_26BE04890(v3, v19);
    v28 = MEMORY[0x26D6996F0](0, v3);
    goto LABEL_14;
  }

  v10 = *(*(v19 + 56) + 8 * v24);
  v0[58] = v10;

  result = swift_beginAccess();
  v19 = v10[4];
  if ((~v19 & 0x3000000000000000) == 0 || (v19 & 0x2000000000000000) == 0)
  {
    goto LABEL_27;
  }

  v3 = v10[3];
  if ((v3 & 0xC000000000000001) != 0)
  {
    goto LABEL_23;
  }

  if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_25;
  }

  v27 = *(v3 + 32);
  sub_26BE2958C(v10[3], v10[4]);
  v28 = v27;
LABEL_14:
  v29 = v28;
  v30 = SecCertificateCopyURIs();
  if (!v30)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v31 = v30;

  v32 = v31;
  sub_26BE2962C(v3, v19);

  v0[41] = v32;
  type metadata accessor for CFArray(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4A0, &qword_26C00E210);
  result = swift_dynamicCast();
  if (!result)
  {
    goto LABEL_27;
  }

  v33 = v0[42];
  if (!v33)
  {
    goto LABEL_27;
  }

  if (v33[2])
  {
    v0[59] = v33[4];
    v0[60] = v33[5];

    v34 = swift_task_alloc();
    v0[61] = v34;
    *v34 = v0;
    v34[1] = sub_26BF168F0;
    v15 = (v0 + 37);
    v14 = v10;
    v13 = v10;
    v16 = sub_26BE8E304;

    return v16(v15, v14, v13);
  }

LABEL_26:

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_26BF16E90(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 536) = v1;

  if (v1)
  {
    v5 = sub_26BF1729C;
  }

  else
  {
    *(v4 + 544) = a1;
    v5 = sub_26BF16FB8;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_26BF16FB8()
{
  v1 = v0[68];
  v2 = v0[65];
  v3 = v0[63];
  v4 = v0[52];
  *(v2 + 88) = MEMORY[0x277D84A28];
  *(v2 + 64) = v1;
  sub_26C00B03C();

  v0[43] = v3;
  v5 = *(*v4 + 664);

  v8 = (v5 + *v5);
  v6 = swift_task_alloc();
  v0[69] = v6;
  *v6 = v0;
  v6[1] = sub_26BF17144;

  return (v8)(v0 + 2, v0 + 43);
}

uint64_t sub_26BF17144()
{
  *(*v1 + 560) = v0;

  if (v0)
  {

    v2 = sub_26BF18960;
  }

  else
  {
    v2 = sub_26BF172B8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26BF172B8()
{
  v1 = *(v0 + 64);
  *(v0 + 128) = *(v0 + 48);
  *(v0 + 144) = v1;
  *(v0 + 160) = *(v0 + 80);
  v2 = *(v0 + 32);
  *(v0 + 96) = *(v0 + 16);
  *(v0 + 112) = v2;
  v3 = swift_allocObject();
  *(v0 + 568) = v3;
  *(v3 + 16) = xmmword_26C0125B0;
  *(v3 + 56) = MEMORY[0x277D837D0];
  *(v3 + 32) = 1953722224;
  *(v3 + 40) = 0xE400000000000000;
  v4 = swift_task_alloc();
  *(v0 + 576) = v4;
  *v4 = v0;
  v4[1] = sub_26BF173C8;
  v5 = *(v0 + 416);

  return sub_26BEAE7D0(v5, &unk_26C01D928, v5);
}

uint64_t sub_26BF173C8(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 584) = v1;

  if (v1)
  {
    v5 = sub_26BF17694;
  }

  else
  {
    *(v4 + 592) = a1;
    v5 = sub_26BF174F0;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_26BF174F0()
{
  v1 = v0[74];
  v2 = v0[71];
  *(v2 + 88) = MEMORY[0x277D84A28];
  *(v2 + 64) = v1;
  sub_26C00B03C();

  v4 = v0[12];
  v3 = v0[13];
  v0[75] = v4;
  v0[76] = v3;
  result = v0[14];
  v6 = v0[15];
  v0[77] = result;
  v0[78] = v6;
  if (v6 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    v7 = v0[52];
    v0[39] = v4;
    v0[40] = v3;
    v8 = *(*v7 + 448);
    sub_26BE2BAE8(result, v6);
    sub_26BE00608(v4, v3);
    v10 = (v8 + *v8);
    v9 = swift_task_alloc();
    v0[79] = v9;
    *v9 = v0;
    v9[1] = sub_26BF176B0;

    return v10(v0 + 39);
  }

  return result;
}

uint64_t sub_26BF176B0()
{
  *(*v1 + 640) = v0;

  if (v0)
  {

    v2 = sub_26BF189D0;
  }

  else
  {
    v2 = sub_26BF17804;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26BF17804()
{
  v3 = v0[47];
  v2 = v0[48];
  v4 = v0[46];
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v4 + 48);
  v56 = v6;
  *(v4 + 48) = 0x8000000000000000;
  v8 = sub_26BEBB618(v3, v2);
  v9 = *(v6 + 16);
  v10 = (v7 & 1) == 0;
  result = v9 + v10;
  if (__OFADD__(v9, v10))
  {
    __break(1u);
    goto LABEL_30;
  }

  LOBYTE(v3) = v7;
  if (*(v6 + 24) < result)
  {
    v13 = v0[47];
    v12 = v0[48];
    sub_26BE6C1E0(result, isUniquelyReferenced_nonNull_native);
    result = sub_26BEBB618(v13, v12);
    if ((v3 & 1) == (v14 & 1))
    {
      v8 = result;
      if (v3)
      {
        goto LABEL_8;
      }

      goto LABEL_32;
    }

LABEL_11:

    return sub_26C00AF8C();
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_31;
  }

  if (v7)
  {
LABEL_8:
    while (1)
    {
      v15 = v0[50];
      v3 = v0[51];
      v1 = v56;
      v16 = *(*(v56 + 56) + 8 * v8);
      v17 = swift_isUniquelyReferenced_nonNull_native();
      v57 = v16;
      result = sub_26BEBB618(v15, v3);
      v19 = *(v16 + 16);
      v20 = (v18 & 1) == 0;
      v21 = __OFADD__(v19, v20);
      v22 = v19 + v20;
      if (!v21)
      {
        break;
      }

LABEL_30:
      __break(1u);
LABEL_31:
      result = sub_26BE6F250();
      if ((v3 & 1) == 0)
      {
        goto LABEL_32;
      }
    }

    LOBYTE(v3) = v18;
    if (*(v16 + 24) >= v22)
    {
      if ((v17 & 1) == 0)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v24 = v0[50];
      v23 = v0[51];
      sub_26BE6C208(v22, v17);
      result = sub_26BEBB618(v24, v23);
      if ((v3 & 1) != (v25 & 1))
      {
        goto LABEL_11;
      }
    }

    if ((v3 & 1) == 0)
    {
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    goto LABEL_16;
  }

LABEL_32:
  __break(1u);
LABEL_33:
  v54 = result;
  sub_26BE6F278();
  result = v54;
  if ((v3 & 1) == 0)
  {
    goto LABEL_34;
  }

LABEL_16:
  v55 = v0[55];
  v26 = v0[52];
  v27 = v0[46];
  v28 = result;
  swift_retain_n();

  *(*(v57 + 56) + 8 * v28) = v26;

  *(*(v1 + 56) + 8 * v8) = v57;

  *(v27 + 48) = v1;
  result = swift_endAccess();
  if (v55)
  {
    v29 = v0[53];
    v0[81] = 0;
    v30 = v0[46];
    v31 = *(v29 + 32);
    v0[82] = v31;
    v32 = *(v29 + 40);
    v0[83] = v32;
    v33 = *(v30 + 40);
    if (!*(v33 + 16))
    {
LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

    result = sub_26BEBB618(v31, v32);
    if ((v34 & 1) == 0)
    {
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    v35 = v0[46];
    v36 = *(*(v33 + 56) + 8 * result);
    v0[84] = v36;

    v37 = *(v35 + 48);
    if (!*(v37 + 16))
    {
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    result = sub_26BEBB618(v31, v32);
    if ((v38 & 1) == 0)
    {
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v39 = *(*(v37 + 56) + 8 * result);
    if (!*(v39 + 16))
    {
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    v41 = v0[50];
    v40 = v0[51];

    v42 = sub_26BEBB618(v41, v40);
    LOBYTE(v41) = v43;

    if ((v41 & 1) == 0)
    {
LABEL_40:
      __break(1u);
      return result;
    }

    v44 = v0[78];
    v45 = v0[77];
    v0[85] = *(*(v39 + 56) + 8 * v42);

    sub_26BE2BAE8(v45, v44);

    v46 = swift_task_alloc();
    v0[86] = v46;
    *v46 = v0;
    v46[1] = sub_26BF17CC0;
    v47 = v0[78];
    v48 = v0[77];

    return sub_26BEAD328(v36, v36, v48, v47, 0, 0xF000000000000000);
  }

  else
  {
    v49 = v0[78];
    v50 = v0[77];
    v51 = v0[76];
    v52 = v0[75];

    sub_26BE00258(v52, v51);
    sub_26BE132D4(v50, v49);

    sub_26BE415F8((v0 + 12));

    v53 = v0[1];

    return v53();
  }
}

uint64_t sub_26BF17CC0(uint64_t a1)
{
  v3 = *v2;
  v3[87] = a1;
  v3[88] = v1;

  sub_26BE132D4(v3[77], v3[78]);
  if (v1)
  {

    v4 = sub_26BF17FD0;
  }

  else
  {
    v4 = sub_26BF17DFC;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_26BF17DFC()
{
  v1 = swift_task_alloc();
  *(v0 + 712) = v1;
  *v1 = v0;
  v1[1] = sub_26BF17EB8;
  v2 = *(v0 + 680);

  return sub_26BEAF004(v2, &unk_26C01D930, v2);
}

uint64_t sub_26BF17EB8(int a1)
{
  v3 = *v2;
  *(v3 + 752) = a1;
  *(v3 + 720) = v1;

  if (v1)
  {
    v4 = sub_26BF182A4;
  }

  else
  {
    v4 = sub_26BF180C0;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_26BF17FD0()
{
  v1 = v0[78];
  v2 = v0[77];
  v3 = v0[76];
  v4 = v0[75];

  sub_26BE415F8((v0 + 12));
  sub_26BE00258(v4, v3);

  sub_26BE132D4(v2, v1);
  v5 = v0[1];

  return v5();
}

uint64_t sub_26BF180C0()
{
  v1 = swift_task_alloc();
  *(v0 + 728) = v1;
  *v1 = v0;
  v1[1] = sub_26BF1817C;
  v2 = *(v0 + 696);

  return sub_26BEAF004(v2, &unk_26C01D938, v2);
}

uint64_t sub_26BF1817C(int a1)
{
  v4 = *v2;
  *(*v2 + 736) = v1;

  if (v1)
  {
    v5 = sub_26BF2730C;
  }

  else
  {
    *(v4 + 756) = a1;
    v5 = sub_26BF182C0;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_26BF182C0()
{
  v1 = *(v0 + 756);
  v2 = *(v0 + 752);
  if (v2 >= v1)
  {
    v17 = *(v0 + 664);
    v18 = *(v0 + 656);
    v61 = *(v0 + 616);
    v62 = *(v0 + 624);
    v19 = *(v0 + 608);
    v20 = *(v0 + 600);
    v21 = *(v0 + 408);
    v22 = *(v0 + 400);

    sub_26C00AC1C();
    MEMORY[0x26D699090](0x2070756F7247, 0xE600000000000000);
    MEMORY[0x26D699090](v22, v21);
    MEMORY[0x26D699090](0x696C6320726F6620, 0xEC00000020746E65);
    MEMORY[0x26D699090](v18, v17);

    MEMORY[0x26D699090](0xD00000000000001DLL, 0x800000026C02CE50);
    *(v0 + 744) = v2;
    v23 = sub_26C00AEFC();
    MEMORY[0x26D699090](v23);

    MEMORY[0x26D699090](0x203A77656E202CLL, 0xE700000000000000);
    *(v0 + 748) = v1;
    v24 = sub_26C00AEFC();
    MEMORY[0x26D699090](v24);

    MEMORY[0x26D699090](41, 0xE100000000000000);
    sub_26BE773C4();
    swift_allocError();
    *v25 = 0;
    v25[1] = 0xE000000000000000;
    swift_willThrow();
    sub_26BE415F8(v0 + 96);
    sub_26BE00258(v20, v19);
    sub_26BE132D4(v61, v62);

    v26 = *(v0 + 8);
LABEL_18:

    return v26();
  }

  v3 = *(v0 + 664);
  v4 = *(v0 + 656);
  v5 = *(v0 + 368);
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v5 + 48);
  *(v0 + 352) = v7;
  *(v5 + 48) = 0x8000000000000000;
  v9 = sub_26BEBB618(v4, v3);
  v10 = *(v7 + 16);
  v11 = (v8 & 1) == 0;
  result = v10 + v11;
  if (__OFADD__(v10, v11))
  {
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v13 = v8;
  if (*(v7 + 24) >= result)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      result = sub_26BE6F250();
    }
  }

  else
  {
    v14 = *(v0 + 664);
    v15 = *(v0 + 656);
    sub_26BE6C1E0(result, isUniquelyReferenced_nonNull_native);
    result = sub_26BEBB618(v15, v14);
    if ((v13 & 1) != (v16 & 1))
    {

      return sub_26C00AF8C();
    }

    v9 = result;
  }

  if ((v13 & 1) == 0)
  {
    goto LABEL_31;
  }

  v27 = *(v0 + 696);
  v29 = *(v0 + 400);
  v28 = *(v0 + 408);
  v30 = *(*(*(v0 + 352) + 56) + 8 * v9);

  v31 = swift_isUniquelyReferenced_nonNull_native();
  sub_26BE57AE8(v27, v29, v28, v31);

  v32 = v30;
  if (v30)
  {

    v33 = *(v0 + 352);
    *(*(v33 + 56) + 8 * v9) = v32;
  }

  else
  {

    v33 = *(v0 + 352);
    sub_26BF25CA8(*(v33 + 48) + 16 * v9);
    sub_26C006458(v9, v33);
  }

  v34 = *(v0 + 440);
  v35 = *(v0 + 648) + 1;
  *(*(v0 + 368) + 48) = v33;
  swift_endAccess();

  if (v35 == v34)
  {
    v36 = *(v0 + 624);
    v37 = *(v0 + 616);
    v38 = *(v0 + 608);
    v39 = *(v0 + 600);

    sub_26BE00258(v39, v38);
    sub_26BE132D4(v37, v36);

    sub_26BE415F8(v0 + 96);

    v26 = *(v0 + 8);
    goto LABEL_18;
  }

  v40 = *(v0 + 648) + 1;
  *(v0 + 648) = v40;
  v41 = *(v0 + 368);
  v42 = *(v0 + 424) + 16 * v40;
  v43 = *(v42 + 32);
  *(v0 + 656) = v43;
  v44 = *(v42 + 40);
  *(v0 + 664) = v44;
  v45 = *(v41 + 40);
  if (!*(v45 + 16))
  {
    goto LABEL_32;
  }

  result = sub_26BEBB618(v43, v44);
  if ((v46 & 1) == 0)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v47 = *(v0 + 368);
  v48 = *(*(v45 + 56) + 8 * result);
  *(v0 + 672) = v48;

  v49 = *(v47 + 48);
  if (!*(v49 + 16))
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  result = sub_26BEBB618(v43, v44);
  if ((v50 & 1) == 0)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v51 = *(*(v49 + 56) + 8 * result);
  if (!*(v51 + 16))
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v53 = *(v0 + 400);
  v52 = *(v0 + 408);

  v54 = sub_26BEBB618(v53, v52);
  LOBYTE(v53) = v55;

  if ((v53 & 1) == 0)
  {
LABEL_37:
    __break(1u);
    return result;
  }

  v56 = *(v0 + 624);
  v57 = *(v0 + 616);
  *(v0 + 680) = *(*(v51 + 56) + 8 * v54);

  sub_26BE2BAE8(v57, v56);

  v58 = swift_task_alloc();
  *(v0 + 688) = v58;
  *v58 = v0;
  v58[1] = sub_26BF17CC0;
  v59 = *(v0 + 624);
  v60 = *(v0 + 616);

  return sub_26BEAD328(v48, v48, v60, v59, 0, 0xF000000000000000);
}

uint64_t sub_26BF18960()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26BF189D0()
{
  v1 = v0[78];
  v2 = v0[77];
  v3 = v0[76];
  v4 = v0[75];
  sub_26BE415F8((v0 + 12));
  sub_26BE132D4(v2, v1);

  sub_26BE00258(v4, v3);
  v5 = v0[1];

  return v5();
}

uint64_t sub_26BF18A84(uint64_t a1)
{
  *(v2 + 800) = v1;
  *(v2 + 792) = a1;
  return MEMORY[0x2822009F8](sub_26BF18AA8, 0, 0);
}

uint64_t sub_26BF18AA8()
{
  v1 = v0[100];
  v2 = v0[99];
  v3 = *v2;
  v0[101] = *v2;
  v4 = v2[1];
  v0[102] = v4;
  v5 = v2[2];
  v0[103] = v5;
  v6 = v2[3];
  v0[104] = v6;
  result = swift_beginAccess();
  v8 = *(v1 + 48);
  if (!*(v8 + 16))
  {
    __break(1u);
    goto LABEL_9;
  }

  result = sub_26BEBB618(v3, v4);
  if ((v9 & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v10 = *(*(v8 + 56) + 8 * result);
  if (!*(v10 + 16))
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v11 = sub_26BEBB618(v5, v6);
  v13 = v12;

  if ((v13 & 1) == 0)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v14 = *(*(v10 + 56) + 8 * v11);
  v0[105] = v14;

  v16 = (*(*v14 + 488) + **(*v14 + 488));
  v15 = swift_task_alloc();
  v0[106] = v15;
  *v15 = v0;
  v15[1] = sub_26BF18CB8;

  return v16(v0 + 89);
}

uint64_t sub_26BF18CB8()
{
  *(*v1 + 856) = v0;

  if (v0)
  {

    v2 = sub_26BF1A26C;
  }

  else
  {
    v2 = sub_26BF18DD4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26BF18DD4()
{
  v1 = v0[105];
  v2 = v0[89];
  v0[108] = v2;
  v3 = v0[90];
  v0[109] = v3;
  v0[91] = v2;
  v0[92] = v3;
  v6 = (*(*v1 + 464) + **(*v1 + 464));
  v4 = swift_task_alloc();
  v0[110] = v4;
  *v4 = v0;
  v4[1] = sub_26BF18F1C;

  return v6(v0 + 91);
}

uint64_t sub_26BF18F1C()
{
  *(*v1 + 888) = v0;

  if (v0)
  {
    v2 = sub_26BF1A2D0;
  }

  else
  {
    v2 = sub_26BF1904C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26BF1904C()
{
  v1 = v0[100];
  swift_beginAccess();
  v2 = *(v1 + 56);
  v3 = *(v2 + 16);

  if (v3 && (v4 = sub_26BEBB618(v0[103], v0[104]), (v5 & 1) != 0))
  {
    v6 = *(*(v2 + 56) + 8 * v4);
  }

  else
  {
    v6 = MEMORY[0x277D84F90];
  }

  v8 = *(v6 + 16);
  if (v8)
  {
    v9 = 0;
    v10 = -v8;
    v11 = MEMORY[0x277D84F90];
    do
    {
      v12 = (v6 + 40 + 16 * v9++);
      while (1)
      {
        if ((v9 - 1) >= *(v6 + 16))
        {
          __break(1u);
          goto LABEL_39;
        }

        v13 = *(v12 - 1);
        v14 = *v12;
        if (v13 != v0[101] || v14 != v0[102])
        {
          result = sub_26C00AF2C();
          if ((result & 1) == 0)
          {
            break;
          }
        }

        ++v9;
        v12 += 2;
        if (v10 + v9 == 1)
        {
          goto LABEL_22;
        }
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_26BECB834(0, *(v11 + 16) + 1, 1);
      }

      v17 = *(v11 + 16);
      v16 = *(v11 + 24);
      if (v17 >= v16 >> 1)
      {
        result = sub_26BECB834((v16 > 1), v17 + 1, 1);
      }

      *(v11 + 16) = v17 + 1;
      v18 = v11 + 16 * v17;
      *(v18 + 32) = v13;
      *(v18 + 40) = v14;
    }

    while (v10 + v9);
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

LABEL_22:
  v0[112] = v11;

  v19 = *(v11 + 16);
  v0[113] = v19;
  if (v19)
  {
    v0[114] = 0;
    v20 = v0[112];
    if (v20[2])
    {
      v21 = *(v0[100] + 48);
      if (*(v21 + 16))
      {
        v22 = v20[4];
        v23 = v20[5];

        result = sub_26BEBB618(v22, v23);
        if (v24)
        {
          v25 = *(*(v21 + 56) + 8 * result);
          if (*(v25 + 16))
          {
            v26 = v0[104];
            v27 = v0[103];

            v28 = sub_26BEBB618(v27, v26);
            LOBYTE(v27) = v29;

            if (v27)
            {
              v30 = v0[109];
              v31 = v0[108];
              v32 = *(*(v25 + 56) + 8 * v28);
              v0[115] = v32;

              v0[93] = v31;
              v0[94] = v30;
              v46 = (*(*v32 + 464) + **(*v32 + 464));
              v33 = swift_task_alloc();
              v0[116] = v33;
              *v33 = v0;
              v33[1] = sub_26BF19534;

              return v46(v0 + 93);
            }

            goto LABEL_43;
          }

LABEL_42:
          __break(1u);
LABEL_43:
          __break(1u);
          goto LABEL_44;
        }

LABEL_41:
        __break(1u);
        goto LABEL_42;
      }
    }

    else
    {
LABEL_39:
      __break(1u);
    }

    __break(1u);
    goto LABEL_41;
  }

  v34 = *(v0[100] + 48);
  if (!*(v34 + 16))
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v35 = v0[99];
  v37 = *(v35 + 32);
  v36 = *(v35 + 40);

  result = sub_26BEBB618(v37, v36);
  if ((v38 & 1) == 0)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v39 = *(*(v34 + 56) + 8 * result);
  if (!*(v39 + 16))
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v40 = v0[104];
  v41 = v0[103];

  v42 = sub_26BEBB618(v41, v40);
  LOBYTE(v41) = v43;

  if ((v41 & 1) == 0)
  {
LABEL_47:
    __break(1u);
    return result;
  }

  v44 = *(*(v39 + 56) + 8 * v42);
  v0[119] = v44;

  v45 = swift_task_alloc();
  v0[120] = v45;
  *v45 = v0;
  v45[1] = sub_26BF19B60;

  return sub_26BE96744((v0 + 76), v44, v44);
}

uint64_t sub_26BF19534(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 936) = a1;
  *(v3 + 944) = v1;

  if (v1)
  {

    v4 = sub_26BF1A348;
  }

  else
  {
    v4 = sub_26BF19660;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_26BF19660()
{
  v1 = *(v0 + 936);
  if (!*(v1 + 16))
  {

    goto LABEL_15;
  }

  sub_26BF26CF0(v1 + 32, v0 + 152);

  if (*(v0 + 265) != 4 || *(v0 + 264) || (v2 = vorrq_s8(vorrq_s8(vorrq_s8(*(v0 + 200), *(v0 + 232)), vorrq_s8(*(v0 + 216), *(v0 + 248))), vorrq_s8(*(v0 + 168), *(v0 + 184))), *&vorr_s8(*v2.i8, *&vextq_s8(v2, v2, 8uLL)) | *(v0 + 160) | *(v0 + 152)))
  {

    sub_26BF26D4C(v0 + 152);
LABEL_15:
    v18 = *(v0 + 872);
    v19 = *(v0 + 864);
    sub_26BE773C4();
    swift_allocError();
    *v20 = 0xD000000000000019;
    v20[1] = 0x800000026C02CD30;
    swift_willThrow();
    sub_26BE00258(v19, v18);

    v21 = *(v0 + 8);

    return v21();
  }

  v3 = *(v0 + 912);
  v4 = *(v0 + 904);

  result = sub_26BF26D4C(v0 + 152);
  if (v3 + 1 == v4)
  {
    v6 = *(*(v0 + 800) + 48);
    if (*(v6 + 16))
    {
      v7 = *(v0 + 792);
      v9 = *(v7 + 32);
      v8 = *(v7 + 40);

      result = sub_26BEBB618(v9, v8);
      if (v10)
      {
        v11 = *(*(v6 + 56) + 8 * result);
        if (*(v11 + 16))
        {
          v12 = *(v0 + 832);
          v13 = *(v0 + 824);

          v14 = sub_26BEBB618(v13, v12);
          LOBYTE(v13) = v15;

          if (v13)
          {
            v16 = *(*(v11 + 56) + 8 * v14);
            *(v0 + 952) = v16;

            v17 = swift_task_alloc();
            *(v0 + 960) = v17;
            *v17 = v0;
            v17[1] = sub_26BF19B60;

            return sub_26BE96744(v0 + 608, v16, v16);
          }

          goto LABEL_32;
        }

        goto LABEL_30;
      }

      goto LABEL_28;
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v22 = *(v0 + 912) + 1;
  *(v0 + 912) = v22;
  v23 = *(v0 + 896);
  if (v22 >= *(v23 + 16))
  {
    goto LABEL_27;
  }

  v24 = *(*(v0 + 800) + 48);
  if (!*(v24 + 16))
  {
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v25 = v23 + 16 * v22;
  v26 = *(v25 + 32);
  v27 = *(v25 + 40);

  result = sub_26BEBB618(v26, v27);
  if ((v28 & 1) == 0)
  {
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v29 = *(*(v24 + 56) + 8 * result);
  if (!*(v29 + 16))
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v30 = *(v0 + 832);
  v31 = *(v0 + 824);

  v32 = sub_26BEBB618(v31, v30);
  LOBYTE(v31) = v33;

  if ((v31 & 1) == 0)
  {
LABEL_34:
    __break(1u);
    return result;
  }

  v34 = *(v0 + 872);
  v35 = *(v0 + 864);
  v36 = *(*(v29 + 56) + 8 * v32);
  *(v0 + 920) = v36;

  *(v0 + 744) = v35;
  *(v0 + 752) = v34;
  v38 = (*(*v36 + 464) + **(*v36 + 464));
  v37 = swift_task_alloc();
  *(v0 + 928) = v37;
  *v37 = v0;
  v37[1] = sub_26BF19534;

  return v38(v0 + 744);
}

uint64_t sub_26BF19B60()
{
  *(*v1 + 968) = v0;

  if (v0)
  {
    v2 = sub_26BF19EDC;
  }

  else
  {
    v2 = sub_26BF19C74;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26BF19C74()
{
  v1 = *(v0 + 952);
  v2 = *(v0 + 624);
  *(v0 + 552) = *(v0 + 608);
  *(v0 + 568) = v2;
  *(v0 + 584) = *(v0 + 640);
  *(v0 + 600) = *(v0 + 656);
  v5 = (*(*v1 + 512) + **(*v1 + 512));
  v3 = swift_task_alloc();
  *(v0 + 976) = v3;
  *v3 = v0;
  v3[1] = sub_26BF19DC0;

  return v5(v0 + 392);
}

uint64_t sub_26BF19DC0()
{
  *(*v1 + 984) = v0;

  if (v0)
  {

    v2 = sub_26BF1A3D4;
  }

  else
  {
    v2 = sub_26BF19EF8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26BF19EF8()
{
  v1 = *(v0 + 816);
  v2 = *(v0 + 808);
  v3 = *(v0 + 440);
  *(v0 + 504) = *(v0 + 424);
  *(v0 + 520) = v3;
  *(v0 + 536) = *(v0 + 456);
  v4 = *(v0 + 408);
  *(v0 + 472) = *(v0 + 392);
  *(v0 + 488) = v4;
  sub_26BE2DA9C(v0 + 552, v0 + 272);
  *(v0 + 384) = 22;
  v6 = *(v0 + 472);
  v5 = *(v0 + 480);
  *(v0 + 760) = v6;
  *(v0 + 768) = v5;
  *(v0 + 16) = v2;
  *(v0 + 24) = v1;
  sub_26BE2DC18(v0 + 272, v0 + 32);
  *(v0 + 776) = 0;
  *(v0 + 784) = 0xF000000000000000;
  sub_26BE00608(v6, v5);
  v7 = swift_task_alloc();
  *(v0 + 992) = v7;
  *v7 = v0;
  v7[1] = sub_26BF1A034;
  v8 = *(v0 + 832);
  v9 = *(v0 + 824);

  return sub_26BEFDA68((v0 + 760), v9, v8, v0 + 16, 0, 0, (v0 + 776), 0);
}

uint64_t sub_26BF1A034()
{
  v2 = *v1;
  *(*v1 + 1000) = v0;

  if (v0)
  {
    sub_26BE2E258(v2 + 16, &qword_28045FA40, &qword_26C01D898);
    sub_26BE00258(*(v2 + 760), *(v2 + 768));
    v3 = sub_26BF1A45C;
  }

  else
  {

    sub_26BE2E258(v2 + 16, &qword_28045FA40, &qword_26C01D898);
    sub_26BE00258(*(v2 + 760), *(v2 + 768));
    v3 = sub_26BF1A1A4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_26BF1A1A4()
{
  sub_26BF05BF0(v0[101], v0[102], v0[103], v0[104]);
  sub_26BE00258(v0[108], v0[109]);

  sub_26BF26EB4((v0 + 59));
  sub_26BE2DC9C((v0 + 34));
  sub_26BE2DAF8((v0 + 69));
  v1 = v0[1];

  return v1();
}

uint64_t sub_26BF1A26C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26BF1A2D0()
{
  v1 = v0[109];
  v2 = v0[108];

  sub_26BE00258(v2, v1);
  v3 = v0[1];

  return v3();
}

uint64_t sub_26BF1A348()
{
  v1 = v0[109];
  v2 = v0[108];

  sub_26BE00258(v2, v1);
  v3 = v0[1];

  return v3();
}

uint64_t sub_26BF1A3D4()
{
  sub_26BE00258(v0[108], v0[109]);

  sub_26BE2DAF8((v0 + 69));
  v1 = v0[1];

  return v1();
}

uint64_t sub_26BF1A45C()
{
  sub_26BE00258(v0[108], v0[109]);

  sub_26BF26EB4((v0 + 59));
  sub_26BE2DC9C((v0 + 34));
  sub_26BE2DAF8((v0 + 69));
  v1 = v0[1];

  return v1();
}

uint64_t sub_26BF1A514()
{
  v1 = v0[50];
  v0[51] = *(v1 + 72);
  v2 = *(v1 + 80);
  v0[52] = v2;
  if (v2 && *(v1 + 66) == 1)
  {
    swift_beginAccess();
    if (*(v1 + 32) == 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E958, &qword_26C012648);
      v3 = swift_allocObject();
      *(v3 + 16) = xmmword_26C011280;
      *(v3 + 56) = MEMORY[0x277D837D0];
      *(v3 + 32) = 0xD000000000000039;
      *(v3 + 40) = 0x800000026C02CE90;

      sub_26C00B03C();
    }

    else
    {
    }

    v6 = swift_task_alloc();
    v0[53] = v6;
    *v6 = v0;
    v6[1] = sub_26BF1A6A8;

    return sub_26BF820B8();
  }

  else
  {
    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_26BF1A6A8(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[54] = a1;
  v4[55] = a2;
  v4[56] = v2;

  if (v2)
  {
    v5 = sub_26BF1AB04;
  }

  else
  {
    v5 = sub_26BF1A7C0;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_26BF1A7C0()
{
  v1 = v0[56];
  sub_26BF0DAD4(v0[51], v0[52], 0, 0, v0 + 2);
  if (v1)
  {
    sub_26BE00258(v0[54], v0[55]);

    v2 = v0[1];

    return v2();
  }

  else
  {

    v4 = swift_task_alloc();
    v0[57] = v4;
    *v4 = v0;
    v4[1] = sub_26BF1A8D8;
    v5 = v0[54];
    v6 = v0[55];

    return sub_26BF832D8((v0 + 2), v5, v6);
  }
}

uint64_t sub_26BF1A8D8()
{
  *(*v1 + 464) = v0;

  if (v0)
  {
    v2 = sub_26BF1AB68;
  }

  else
  {
    v2 = sub_26BF1A9EC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26BF1A9EC()
{
  v1 = v0[54];
  v2 = v0[55];
  if (*(v0[50] + 32) == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E958, &qword_26C012648);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_26C011280;
    *(v3 + 56) = MEMORY[0x277D837D0];
    *(v3 + 32) = 0xD00000000000001ALL;
    *(v3 + 40) = 0x800000026C02CE70;
    sub_26C00B03C();

    sub_26BE00258(v1, v2);
    sub_26BE29710((v0 + 2));
  }

  else
  {
    sub_26BE29710((v0 + 2));
    sub_26BE00258(v1, v2);
  }

  v4 = v0[1];

  return v4();
}

uint64_t sub_26BF1AB04()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26BF1AB68()
{
  sub_26BE00258(v0[54], v0[55]);
  sub_26BE29710((v0 + 2));
  v1 = v0[1];

  return v1();
}

uint64_t sub_26BF1ABD4(uint64_t a1)
{
  *(v2 + 768) = v1;
  *(v2 + 760) = a1;
  return MEMORY[0x2822009F8](sub_26BF1ABF8, 0, 0);
}

uint64_t sub_26BF1ABF8()
{
  v1 = v0[96];
  v2 = v0[95];
  v3 = *v2;
  v4 = v2[1];
  v5 = v2[2];
  v0[97] = v5;
  v6 = v2[3];
  v0[98] = v6;
  result = swift_beginAccess();
  v8 = *(v1 + 48);
  if (!*(v8 + 16))
  {
    __break(1u);
    goto LABEL_15;
  }

  result = sub_26BEBB618(v3, v4);
  if ((v9 & 1) == 0)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v10 = *(*(v8 + 56) + 8 * result);
  if (!*(v10 + 16))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = sub_26BEBB618(v5, v6);
  v13 = v12;

  if ((v13 & 1) == 0)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v14 = v0[95];
  v0[99] = *(*(v10 + 56) + 8 * v11);

  v15 = *(v14 + 32);
  v0[100] = v15;
  v16 = *(v15 + 16);
  v0[101] = v16;
  result = swift_beginAccess();
  if (v16)
  {
    v0[103] = 0;
    v0[102] = MEMORY[0x277D84F90];
    v17 = v0[100];
    v18 = v0[96];
    v19 = *(v17 + 32);
    v0[104] = v19;
    v20 = *(v17 + 40);
    v0[105] = v20;
    v21 = *(v18 + 40);
    if (*(v21 + 16))
    {

      result = sub_26BEBB618(v19, v20);
      if (v22)
      {
        v23 = *(*(v21 + 56) + 8 * result);
        v0[106] = v23;

        v24 = swift_task_alloc();
        v0[107] = v24;
        *v24 = v0;
        v24[1] = sub_26BF1AF44;

        return sub_26BE8E304((v0 + 86), v23, v23);
      }

LABEL_19:
      __break(1u);
      return result;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v25 = MEMORY[0x277D84F90];
  v0[114] = MEMORY[0x277D84F90];
  v26 = v0[99];
  v0[94] = v25;
  v27 = *(*v26 + 576);

  v29 = (v27 + *v27);
  v28 = swift_task_alloc();
  v0[115] = v28;
  *v28 = v0;
  v28[1] = sub_26BF1B6EC;

  return (v29)(v0 + 34, v0 + 94);
}

uint64_t sub_26BF1AF44()
{
  *(*v1 + 864) = v0;

  if (v0)
  {

    v2 = sub_26BF1B068;
  }

  else
  {

    v2 = sub_26BF1B0E4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26BF1B068()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_26BF1B0E4()
{
  v1 = *(v0 + 768);
  *(v0 + 872) = *(v0 + 688);
  v2 = *(v1 + 48);
  if (!*(v2 + 16))
  {
    __break(1u);
    goto LABEL_9;
  }

  v3 = *(v0 + 840);
  v4 = *(v0 + 832);

  v5 = sub_26BEBB618(v4, v3);
  if ((v6 & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v7 = *(*(v2 + 56) + 8 * v5);
  if (!*(v7 + 16))
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v8 = *(v0 + 784);
  v9 = *(v0 + 776);

  v10 = sub_26BEBB618(v9, v8);
  LOBYTE(v9) = v11;

  if ((v9 & 1) == 0)
  {
LABEL_11:
    __break(1u);
    return;
  }

  v12 = *(*(v7 + 56) + 8 * v10);
  *(v0 + 888) = v12;

  v13 = swift_task_alloc();
  *(v0 + 896) = v13;
  *v13 = v0;
  v13[1] = sub_26BF1B268;

  sub_26BE96EDC(v0 + 560, v12, v12);
}

uint64_t sub_26BF1B268()
{
  *(*v1 + 904) = v0;

  if (v0)
  {
    v2 = sub_26BF1B6D0;
  }

  else
  {

    v2 = sub_26BF1B384;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26BF1B384()
{
  v1 = *(v0 + 880);
  v2 = *(v0 + 872);
  v3 = *(v0 + 576);
  *(v0 + 504) = *(v0 + 560);
  *(v0 + 520) = v3;
  *(v0 + 536) = *(v0 + 592);
  *(v0 + 552) = *(v0 + 608);
  sub_26BE2DB68(v0 + 504, v0 + 432);
  *(v0 + 488) = v2;
  *(v0 + 496) = v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + 816);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v5 = sub_26BEEDC00(0, *(v5 + 2) + 1, 1, *(v0 + 816));
  }

  v7 = *(v5 + 2);
  v6 = *(v5 + 3);
  if (v7 >= v6 >> 1)
  {
    v5 = sub_26BEEDC00((v6 > 1), v7 + 1, 1, v5);
  }

  v8 = *(v0 + 808);
  v9 = *(v0 + 824) + 1;
  result = sub_26BE2DBC4(v0 + 504);
  *(v5 + 2) = v7 + 1;
  v11 = &v5[72 * v7];
  *(v11 + 2) = *(v0 + 432);
  v13 = *(v0 + 464);
  v12 = *(v0 + 480);
  v14 = *(v0 + 448);
  *(v11 + 12) = *(v0 + 496);
  *(v11 + 4) = v13;
  *(v11 + 5) = v12;
  *(v11 + 3) = v14;
  if (v9 == v8)
  {
    *(v0 + 912) = v5;
    v15 = *(v0 + 792);
    *(v0 + 752) = v5;
    v16 = *(*v15 + 576);

    v27 = (v16 + *v16);
    v17 = swift_task_alloc();
    *(v0 + 920) = v17;
    *v17 = v0;
    v17[1] = sub_26BF1B6EC;

    return v27(v0 + 272, v0 + 752);
  }

  v18 = *(v0 + 824) + 1;
  *(v0 + 824) = v18;
  *(v0 + 816) = v5;
  v19 = *(v0 + 768);
  v20 = *(v0 + 800) + 16 * v18;
  v21 = *(v20 + 32);
  *(v0 + 832) = v21;
  v22 = *(v20 + 40);
  *(v0 + 840) = v22;
  v23 = *(v19 + 40);
  if (!*(v23 + 16))
  {
    __break(1u);
    goto LABEL_15;
  }

  result = sub_26BEBB618(v21, v22);
  if ((v24 & 1) == 0)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  v25 = *(*(v23 + 56) + 8 * result);
  *(v0 + 848) = v25;

  v26 = swift_task_alloc();
  *(v0 + 856) = v26;
  *v26 = v0;
  v26[1] = sub_26BF1AF44;

  return sub_26BE8E304(v0 + 688, v25, v25);
}

uint64_t sub_26BF1B6EC()
{
  *(*v1 + 928) = v0;

  if (v0)
  {

    v2 = sub_26BF1BE2C;
  }

  else
  {
    v2 = sub_26BF1B81C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26BF1B81C()
{
  v1 = *(v0 + 800);
  v2 = *(v0 + 288);
  *(v0 + 352) = *(v0 + 272);
  *(v0 + 368) = v2;
  v3 = *(v0 + 320);
  *(v0 + 384) = *(v0 + 304);
  *(v0 + 400) = v3;
  *(v0 + 416) = *(v0 + 336);
  v4 = *(v0 + 352);
  v5 = *(v0 + 360);
  v6 = *(v0 + 368);
  v7 = *(v0 + 376);
  *(v0 + 704) = v4;
  *(v0 + 712) = v5;
  *(v0 + 144) = 0;
  *(v0 + 112) = 0u;
  *(v0 + 128) = 0u;
  *(v0 + 80) = 0u;
  *(v0 + 96) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 16) = 0u;
  *(v0 + 720) = v6;
  *(v0 + 728) = v7;
  sub_26BE00608(v4, v5);
  sub_26BE2BAE8(v6, v7);
  v8 = swift_task_alloc();
  *(v0 + 936) = v8;
  *v8 = v0;
  v8[1] = sub_26BF1B944;
  v9 = *(v0 + 784);
  v10 = *(v0 + 776);

  return sub_26BEFDA68((v0 + 704), v10, v9, v0 + 16, 0, 0, (v0 + 720), v1);
}

uint64_t sub_26BF1B944(uint64_t a1)
{
  v3 = *v2;
  v3[118] = a1;
  v3[119] = v1;

  sub_26BE132D4(v3[90], v3[91]);
  sub_26BE2E258((v3 + 2), &qword_28045FA40, &qword_26C01D898);
  sub_26BE00258(v3[88], v3[89]);
  if (v1)
  {

    v4 = sub_26BF1BE90;
  }

  else
  {
    v4 = sub_26BF1BAC8;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_26BF1BAC8()
{
  v1 = *(v0 + 768);
  result = swift_beginAccess();
  v3 = *(v1 + 56);
  if (!*(v3 + 16))
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    return result;
  }

  v4 = *(v0 + 784);
  v5 = *(v0 + 776);

  result = sub_26BEBB618(v5, v4);
  if ((v6 & 1) == 0)
  {
    goto LABEL_26;
  }

  v7 = *(*(v3 + 56) + 8 * result);

  v8 = *(v7 + 16);
  if (v8)
  {
    v9 = 0;
    v10 = 0;
    v25 = *(v0 + 944);
    v24 = *(v0 + 808) + 1;
    v11 = *(v0 + 952);
    v12 = (v7 + 40);
    v23 = v7;
    while (v10 < *(v7 + 16))
    {
      v13 = *(v0 + 800);
      v14 = *v12;
      *(v0 + 736) = *(v12 - 1);
      *(v0 + 744) = v14;
      v15 = swift_task_alloc();
      *(v15 + 16) = v0 + 736;

      LOBYTE(v13) = sub_26BEC254C(sub_26BF27278, v15, v13);

      if (v13)
      {
      }

      else
      {
        if ((v9 & 0x8000000000000000) != 0)
        {
          goto LABEL_23;
        }

        if (v9 >= *(v25 + 16))
        {
          goto LABEL_24;
        }

        result = sub_26BF26CF0(v25 + 32 + 120 * v9, v0 + 152);
        if (*(v0 + 265) != 3)
        {

          sub_26BF26D4C(v0 + 152);
LABEL_18:
          sub_26BE01654();
          swift_allocError();
          *v22 = 1;
          *(v22 + 8) = 0u;
          *(v22 + 24) = 0u;
          *(v22 + 40) = 0u;
          *(v22 + 56) = 0u;
          *(v22 + 72) = 0u;
          *(v22 + 88) = 0u;
          *(v22 + 104) = 0;
          *(v22 + 112) = 23;
          swift_willThrow();
          sub_26BE41488(v0 + 352);

          v21 = *(v0 + 8);
          goto LABEL_19;
        }

        v16 = *(v0 + 152);
        if (!v16)
        {
          goto LABEL_27;
        }

        v17 = v11;
        v18 = v8;
        v19 = *(v0 + 176);

        sub_26BF26F5C(v16);
        v20 = *(v19 + 16);

        if (v20 != v24)
        {

          goto LABEL_18;
        }

        ++v9;
        v7 = v23;
        v8 = v18;
        v11 = v17;
      }

      ++v10;
      v12 += 2;
      if (v8 == v10)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_15:

  sub_26BE41488(v0 + 352);

  v21 = *(v0 + 8);
LABEL_19:

  return v21();
}

uint64_t sub_26BF1BE2C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26BF1BE90()
{
  sub_26BE41488(v0 + 352);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26BF1BF00(uint64_t a1)
{
  *(v2 + 96) = a1;
  *(v2 + 104) = v1;

  return MEMORY[0x2822009F8](sub_26BF1BF90, 0, 0);
}

uint64_t sub_26BF1BF90()
{
  v1 = v0[12];
  v2 = v0[13];
  v3 = *v1;
  v0[14] = *v1;
  v4 = v1[1];
  v0[15] = v4;
  swift_beginAccess();
  v5 = *(v2 + 40);
  if (!*(v5 + 16))
  {
    __break(1u);
LABEL_7:
    __break(1u);
  }

  v6 = sub_26BEBB618(v3, v4);
  if ((v7 & 1) == 0)
  {
    goto LABEL_7;
  }

  v8 = *(*(v5 + 56) + 8 * v6);
  v0[16] = v8;

  v9 = swift_task_alloc();
  v0[17] = v9;
  *v9 = v0;
  v9[1] = sub_26BF1C0EC;

  return sub_26BE90BC4(v8, v8);
}

uint64_t sub_26BF1C0EC(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 144) = a1;
  *(v3 + 152) = v1;

  if (v1)
  {
    v4 = sub_26BF1C3C4;
  }

  else
  {
    v4 = sub_26BF1C22C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_26BF1C22C()
{
  v1 = v0[12];
  if ((*(v1 + 24) & 1) != 0 || *(v0[18] + 16) == *(v1 + 16))
  {
    v2 = swift_task_alloc();
    v0[20] = v2;
    *v2 = v0;
    v2[1] = sub_26BF1C454;

    return sub_26BE270D4();
  }

  else
  {

    sub_26BE01654();
    swift_allocError();
    *v4 = 1;
    *(v4 + 8) = 0u;
    *(v4 + 24) = 0u;
    *(v4 + 40) = 0u;
    *(v4 + 56) = 0u;
    *(v4 + 72) = 0u;
    *(v4 + 88) = 0u;
    *(v4 + 104) = 0;
    *(v4 + 112) = 23;
    swift_willThrow();

    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_26BF1C3C4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26BF1C454()
{
  *(*v1 + 168) = v0;

  if (v0)
  {

    v2 = sub_26BF1D79C;
  }

  else
  {
    v2 = sub_26BF1C5A4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26BF1C5A4()
{

  v1 = swift_task_alloc();
  *(v0 + 176) = v1;
  *v1 = v0;
  v1[1] = sub_26BF1C684;
  v2 = *(v0 + 128);

  return sub_26BE90BC4(v2, v2);
}

uint64_t sub_26BF1C684(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 184) = a1;
  *(v3 + 192) = v1;

  if (v1)
  {

    v4 = sub_26BF1CC60;
  }

  else
  {
    v4 = sub_26BF1C7D4;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_26BF1C7D4()
{
  v1 = *(v0 + 96);
  if ((*(v1 + 40) & 1) == 0 && *(*(v0 + 184) + 16) != *(v1 + 32))
  {

    sub_26BE01654();
    swift_allocError();
    *v11 = 1;
    *(v11 + 8) = 0u;
    *(v11 + 24) = 0u;
    *(v11 + 40) = 0u;
    *(v11 + 56) = 0u;
    *(v11 + 72) = 0u;
    *(v11 + 88) = 0u;
    *(v11 + 104) = 0;
    *(v11 + 112) = 23;
    swift_willThrow();
LABEL_10:

    v10 = *(v0 + 8);
    goto LABEL_11;
  }

  v2 = *(*(v0 + 144) + 16);
  *(v0 + 200) = v2;
  if (!v2)
  {
LABEL_8:

    v10 = *(v0 + 8);
LABEL_11:

    return v10();
  }

  swift_beginAccess();
  v3 = 0;
  while (1)
  {
    *(v0 + 208) = v3;
    v4 = *(v0 + 144);
    if (v3 >= *(v4 + 16))
    {
      __break(1u);
      goto LABEL_28;
    }

    v5 = *(v0 + 184);
    v6 = v4 + 16 * v3;
    v7 = *(v6 + 32);
    *(v0 + 216) = v7;
    v8 = *(v6 + 40);
    *(v0 + 224) = v8;
    *(v0 + 64) = v7;
    *(v0 + 72) = v8;
    v9 = swift_task_alloc();
    *(v9 + 16) = v0 + 64;
    sub_26BE00608(v7, v8);
    LOBYTE(v5) = sub_26BEC25F8(sub_26BF272D0, v9, v5);

    if ((v5 & 1) == 0)
    {
      break;
    }

    sub_26BE00258(v7, v8);
    v3 = *(v0 + 208) + 1;
    if (v3 == *(v0 + 200))
    {
      goto LABEL_8;
    }
  }

  v13 = *(*(v0 + 104) + 48);
  if (!*(v13 + 16))
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
  }

  v15 = *(v0 + 112);
  v14 = *(v0 + 120);

  v16 = sub_26BEBB618(v15, v14);
  if ((v17 & 1) == 0)
  {
    goto LABEL_29;
  }

  v18 = *(*(v13 + 56) + 8 * v16);
  *(v0 + 232) = v18;

  v19 = *(v18 + 32);
  *(v0 + 328) = v19;
  v20 = -1;
  v21 = -1 << v19;
  if (-v21 < 64)
  {
    v20 = ~(-1 << -v21);
  }

  v22 = v20 & *(v18 + 64);
  if (!v22)
  {
    v25 = 0;
    v26 = ((63 - v21) >> 6) - 1;
    v24 = *(v0 + 232);
    while (v26 != v25)
    {
      v23 = v25 + 1;
      v22 = *(v24 + 8 * v25++ + 72);
      if (v22)
      {
        goto LABEL_23;
      }
    }

    v32 = *(v0 + 216);
    v31 = *(v0 + 224);

    sub_26BE01654();
    swift_allocError();
    *v33 = 1;
    *(v33 + 8) = 0u;
    *(v33 + 24) = 0u;
    *(v33 + 40) = 0u;
    *(v33 + 56) = 0u;
    *(v33 + 72) = 0u;
    *(v33 + 88) = 0u;
    *(v33 + 104) = 0;
    *(v33 + 112) = 23;
    swift_willThrow();
    sub_26BE00258(v32, v31);
    goto LABEL_10;
  }

  v23 = 0;
  v24 = *(v0 + 232);
LABEL_23:
  *(v0 + 240) = v22;
  *(v0 + 248) = v23;
  v27 = __clz(__rbit64(v22)) | (v23 << 6);
  v28 = (*(v24 + 48) + 16 * v27);
  *(v0 + 256) = *v28;
  *(v0 + 264) = v28[1];
  v29 = *(*(v24 + 56) + 8 * v27);
  *(v0 + 272) = v29;
  swift_retain_n();

  v30 = swift_task_alloc();
  *(v0 + 280) = v30;
  *v30 = v0;
  v30[1] = sub_26BF1CCF0;

  return sub_26BE8FE74(v0 + 80, v29, v29);
}

uint64_t sub_26BF1CC60()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26BF1CCF0()
{
  *(*v1 + 288) = v0;

  if (v0)
  {
    v2 = sub_26BF1D710;
  }

  else
  {
    v2 = sub_26BF1CE30;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

void sub_26BF1CE30()
{

  v1 = *(v0 + 80);
  v2 = *(v0 + 88);
  v3 = v2 >> 62;
  if (v2 >> 62 == 3)
  {
    v4 = 0;
    if (!v1)
    {
      v5 = *(v0 + 224);
      v6 = v2 == 0xC000000000000000 && v5 >> 62 == 3;
      v7 = v6 && v5 == 0xC000000000000000;
      if (v7 && *(v0 + 216) == 0)
      {

        v9 = 0;
        v10 = 0xC000000000000000;
LABEL_53:
        sub_26BE00258(v9, v10);

        v24 = *(v0 + 288);
        goto LABEL_54;
      }
    }

    goto LABEL_25;
  }

  if (v3 <= 1)
  {
    if (!v3)
    {
      v4 = BYTE6(v2);
      goto LABEL_25;
    }

    goto LABEL_22;
  }

  if (v3 != 2)
  {
    v4 = 0;
    goto LABEL_25;
  }

  v12 = *(v1 + 16);
  v11 = *(v1 + 24);
  v13 = __OFSUB__(v11, v12);
  v4 = v11 - v12;
  if (v13)
  {
    __break(1u);
LABEL_22:
    LODWORD(v4) = HIDWORD(v1) - v1;
    if (__OFSUB__(HIDWORD(v1), v1))
    {
LABEL_105:
      __break(1u);
      goto LABEL_106;
    }

    v4 = v4;
  }

LABEL_25:
  v14 = *(v0 + 224);
  v15 = v14 >> 62;
  if ((v14 >> 62) <= 1)
  {
    if (v15)
    {
      v19 = *(v0 + 216);
      v20 = *(v0 + 220);
      v13 = __OFSUB__(v20, v19);
      v21 = v20 - v19;
      if (v13)
      {
LABEL_104:
        __break(1u);
        goto LABEL_105;
      }

      if (v4 != v21)
      {
        goto LABEL_42;
      }
    }

    else if (v4 != BYTE6(v14))
    {
      goto LABEL_42;
    }

LABEL_35:
    if (v4 >= 1)
    {
      if (v3 > 1)
      {
        if (v3 == 2)
        {
          v53 = *(v1 + 16);
          v54 = *(v1 + 24);
          sub_26BE00608(*(v0 + 216), *(v0 + 224));
          v55 = sub_26C008E9C();
          if (v55)
          {
            v56 = v55;
            v57 = sub_26C008ECC();
            if (__OFSUB__(v53, v57))
            {
LABEL_108:
              __break(1u);
LABEL_109:
              __break(1u);
            }

            v58 = v53 - v57 + v56;
          }

          else
          {
            v58 = 0;
          }

          if (__OFSUB__(v54, v53))
          {
LABEL_107:
            __break(1u);
            goto LABEL_108;
          }

          v74 = *(v0 + 288);
          v71 = *(v0 + 216);
          v70 = *(v0 + 224);
          sub_26C008EBC();
          sub_26BE567B0(v58, v71, v70, (v0 + 324));
          sub_26BE00258(*(v0 + 216), *(v0 + 224));
          if (v74)
          {
            return;
          }

          sub_26BE00258(v1, v2);
          if ((*(v0 + 324) & 1) == 0)
          {
            goto LABEL_40;
          }
        }

        else
        {
          v63 = *(v0 + 288);
          v64 = *(v0 + 216);
          *(v0 + 310) = 0;
          *(v0 + 316) = 0;
          sub_26BE00608(v64, v14);
          sub_26BE567B0(v0 + 310, v64, v14, (v0 + 327));
          sub_26BE00258(*(v0 + 216), *(v0 + 224));
          if (v63)
          {
            return;
          }

          sub_26BE00258(v1, v2);
          if ((*(v0 + 327) & 1) == 0)
          {
            goto LABEL_40;
          }
        }
      }

      else if (v3)
      {
        if (v1 >> 32 < v1)
        {
LABEL_106:
          __break(1u);
          goto LABEL_107;
        }

        sub_26BE00608(*(v0 + 216), *(v0 + 224));
        v59 = sub_26C008E9C();
        if (v59)
        {
          v60 = v59;
          v61 = sub_26C008ECC();
          if (__OFSUB__(v1, v61))
          {
            goto LABEL_109;
          }

          v62 = v1 - v61 + v60;
        }

        else
        {
          v62 = 0;
        }

        v75 = *(v0 + 288);
        v73 = *(v0 + 216);
        v72 = *(v0 + 224);
        sub_26C008EBC();
        sub_26BE567B0(v62, v73, v72, (v0 + 325));
        sub_26BE00258(*(v0 + 216), *(v0 + 224));
        if (v75)
        {
          return;
        }

        sub_26BE00258(v1, v2);
        if ((*(v0 + 325) & 1) == 0)
        {
          goto LABEL_40;
        }
      }

      else
      {
        v22 = *(v0 + 288);
        v23 = *(v0 + 216);
        *(v0 + 296) = v1;
        *(v0 + 304) = v2;
        *(v0 + 306) = BYTE2(v2);
        *(v0 + 307) = BYTE3(v2);
        *(v0 + 308) = BYTE4(v2);
        *(v0 + 309) = BYTE5(v2);
        sub_26BE00608(v23, v14);
        sub_26BE567B0(v0 + 296, v23, v14, (v0 + 326));
        sub_26BE00258(*(v0 + 216), *(v0 + 224));
        if (v22)
        {
          return;
        }

        sub_26BE00258(v1, v2);
        if ((*(v0 + 326) & 1) == 0)
        {
LABEL_40:

          v24 = 0;
          goto LABEL_43;
        }
      }

      v24 = 0;
LABEL_54:
      v33 = *(v0 + 256);
      v34 = *(v0 + 264);
      goto LABEL_55;
    }

    goto LABEL_52;
  }

  if (v15 == 2)
  {
    v16 = *(*(v0 + 216) + 16);
    v17 = *(*(v0 + 216) + 24);
    v13 = __OFSUB__(v17, v16);
    v18 = v17 - v16;
    if (v13)
    {
LABEL_103:
      __break(1u);
      goto LABEL_104;
    }

    if (v4 != v18)
    {
      goto LABEL_42;
    }

    goto LABEL_35;
  }

  if (!v4)
  {
LABEL_52:

    v9 = v1;
    v10 = v2;
    goto LABEL_53;
  }

LABEL_42:

  sub_26BE00258(v1, v2);
  v24 = *(v0 + 288);
LABEL_43:
  v25 = *(v0 + 248);
  v26 = (*(v0 + 240) - 1) & *(v0 + 240);
  if (v26)
  {
LABEL_74:
    v28 = *(v0 + 232);
    goto LABEL_48;
  }

  while (1)
  {
    while (1)
    {
      v27 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
LABEL_100:
        __break(1u);
LABEL_101:
        __break(1u);
LABEL_102:
        __break(1u);
        goto LABEL_103;
      }

      v28 = *(v0 + 232);
      if (v27 >= (((1 << *(v0 + 328)) + 63) >> 6))
      {
        break;
      }

      v26 = *(v28 + 8 * v27 + 64);
      ++v25;
      if (v26)
      {
        v25 = v27;
LABEL_48:
        *(v0 + 240) = v26;
        *(v0 + 248) = v25;
        v29 = __clz(__rbit64(v26)) | (v25 << 6);
        v30 = (*(v28 + 48) + 16 * v29);
        *(v0 + 256) = *v30;
        *(v0 + 264) = v30[1];
        v31 = *(*(v28 + 56) + 8 * v29);
        *(v0 + 272) = v31;
        swift_retain_n();

        v32 = swift_task_alloc();
        *(v0 + 280) = v32;
        *v32 = v0;
        v32[1] = sub_26BF1CCF0;

        sub_26BE8FE74(v0 + 80, v31, v31);
        return;
      }
    }

    v33 = 0;
    v34 = 0xE000000000000000;
LABEL_55:
    v35 = HIBYTE(v34) & 0xF;
    if ((v34 & 0x2000000000000000) == 0)
    {
      v35 = v33 & 0xFFFFFFFFFFFFLL;
    }

    if (!v35)
    {
      v66 = *(v0 + 216);
      v65 = *(v0 + 224);

      sub_26BE01654();
      swift_allocError();
      *v67 = 1;
      *(v67 + 8) = 0u;
      *(v67 + 24) = 0u;
      *(v67 + 40) = 0u;
      *(v67 + 56) = 0u;
      *(v67 + 72) = 0u;
      *(v67 + 88) = 0u;
      *(v67 + 104) = 0;
      *(v67 + 112) = 23;
      swift_willThrow();
      sub_26BE00258(v66, v65);
      goto LABEL_88;
    }

    sub_26BF05BF0(*(v0 + 112), *(v0 + 120), v33, v34);
    if (v24)
    {
      break;
    }

    sub_26BE00258(*(v0 + 216), *(v0 + 224));

    v36 = *(v0 + 208) + 1;
    if (v36 == *(v0 + 200))
    {
LABEL_64:

      v43 = *(v0 + 8);
      goto LABEL_65;
    }

    v24 = 0;
    while (1)
    {
      *(v0 + 208) = v36;
      v37 = *(v0 + 144);
      if (v36 >= *(v37 + 16))
      {
        goto LABEL_100;
      }

      v38 = *(v0 + 184);
      v39 = v37 + 16 * v36;
      v40 = *(v39 + 32);
      *(v0 + 216) = v40;
      v41 = *(v39 + 40);
      *(v0 + 224) = v41;
      *(v0 + 64) = v40;
      *(v0 + 72) = v41;
      v42 = swift_task_alloc();
      *(v42 + 16) = v0 + 64;
      sub_26BE00608(v40, v41);
      LOBYTE(v38) = sub_26BEC25F8(sub_26BF272D0, v42, v38);

      if ((v38 & 1) == 0)
      {
        break;
      }

      sub_26BE00258(v40, v41);
      v36 = *(v0 + 208) + 1;
      if (v36 == *(v0 + 200))
      {
        goto LABEL_64;
      }
    }

    v44 = *(*(v0 + 104) + 48);
    if (!*(v44 + 16))
    {
      goto LABEL_101;
    }

    v46 = *(v0 + 112);
    v45 = *(v0 + 120);

    v47 = sub_26BEBB618(v46, v45);
    if ((v48 & 1) == 0)
    {
      goto LABEL_102;
    }

    v49 = *(*(v44 + 56) + 8 * v47);
    *(v0 + 232) = v49;

    v25 = 0;
    v50 = *(v49 + 32);
    *(v0 + 328) = v50;
    v51 = 1 << v50;
    if (v51 < 64)
    {
      v52 = ~(-1 << v51);
    }

    else
    {
      v52 = -1;
    }

    v26 = v52 & *(v49 + 64);
    if (v26)
    {
      goto LABEL_74;
    }
  }

  v68 = *(v0 + 216);
  v69 = *(v0 + 224);

  sub_26BE00258(v68, v69);

LABEL_88:

  v43 = *(v0 + 8);
LABEL_65:

  v43();
}

uint64_t sub_26BF1D710()
{

  return swift_unexpectedError();
}

uint64_t sub_26BF1D79C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26BF1D82C()
{
  v1[458] = v0;
  v2 = sub_26C00921C();
  v1[459] = v2;
  v1[460] = *(v2 - 8);
  v1[461] = swift_task_alloc();
  v1[462] = swift_task_alloc();
  v3 = sub_26C008FDC();
  v1[463] = v3;
  v1[464] = *(v3 - 8);
  v1[465] = swift_task_alloc();
  v1[466] = swift_task_alloc();
  v1[467] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4A8, &unk_26C00ECB0);
  v1[468] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26BF1D99C, 0, 0);
}

uint64_t sub_26BF1D99C()
{
  v1 = *(v0 + 3664);
  swift_beginAccess();
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  if (v2 >= *(v3 + 16))
  {
    if (qword_28045DF48 == -1)
    {
LABEL_10:
      v21 = *(v0 + 3744);
      v22 = *(v0 + 3680);
      v23 = *(v0 + 3672);
      v24 = __swift_project_value_buffer(*(v0 + 3736), qword_28045E4F0);
      (*(v22 + 56))(v21, 1, 1, v23);
      swift_beginAccess();
      sub_26BF25BE4(v21, v24);
      swift_endAccess();

      v25 = *(v0 + 8);
LABEL_11:

      return v25();
    }

LABEL_55:
    swift_once();
    goto LABEL_10;
  }

  if (v2 < 0)
  {
    __break(1u);
    goto LABEL_55;
  }

  v4 = *(v0 + 3664);
  sub_26BE038A8(v3 + 40 * v2 + 32, v0 + 1896);
  if (*(v4 + 32) == 1)
  {
    v5 = *(v0 + 3664);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E958, &qword_26C012648);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_26C011280;
    *(v0 + 3072) = 0;
    *(v0 + 3080) = 0xE000000000000000;
    sub_26C00AC1C();

    strcpy((v0 + 3120), "Running step ");
    *(v0 + 3134) = -4864;
    *(v0 + 3640) = *(v5 + 24);
    v7 = sub_26C00AEFC();
    MEMORY[0x26D699090](v7);

    MEMORY[0x26D699090](3026478, 0xE300000000000000);
    v8 = *(v0 + 3120);
    v9 = *(v0 + 3128);
    v10 = MEMORY[0x277D837D0];
    *(v6 + 56) = MEMORY[0x277D837D0];
    *(v6 + 32) = v8;
    *(v6 + 40) = v9;
    sub_26C00B03C();

    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_26C011280;
    *(v0 + 2976) = 0;
    *(v0 + 2984) = 0xE000000000000000;
    sub_26C00AC1C();
    v12 = *(v0 + 2984);
    *(v0 + 3024) = *(v0 + 2976);
    *(v0 + 3032) = v12;
    MEMORY[0x26D699090](0x6974636120746F47, 0xEB00000000206E6FLL);
    __swift_project_boxed_opaque_existential_1((v0 + 1896), *(v0 + 1920));
    sub_26C00AF0C();
    MEMORY[0x26D699090](3026478, 0xE300000000000000);
    v13 = *(v0 + 3024);
    v14 = *(v0 + 3032);
    *(v11 + 56) = v10;
    *(v11 + 32) = v13;
    *(v11 + 40) = v14;
    sub_26C00B03C();
  }

  sub_26BE038A8(v0 + 1896, v0 + 1976);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FA28, &qword_26C01D618);
  if (swift_dynamicCast())
  {
    v15 = *(v0 + 2184);
    v16 = *(v0 + 2192);
    *(v0 + 3752) = v16;
    v17 = *(v0 + 2200);
    v18 = *(v0 + 2208);
    *(v0 + 3760) = v18;
    v19 = swift_task_alloc();
    *(v0 + 3768) = v19;
    *v19 = v0;
    v19[1] = sub_26BF1F230;

    return sub_26BEFD100(v15, v16, v17, v18);
  }

  if (swift_dynamicCast())
  {
    v26 = *(v0 + 2152);
    v27 = *(v0 + 2160);
    *(v0 + 3784) = v27;
    v28 = *(v0 + 2168);
    v29 = *(v0 + 2176);
    *(v0 + 3792) = v29;
    v30 = swift_task_alloc();
    *(v0 + 3800) = v30;
    *v30 = v0;
    v30[1] = sub_26BF1F434;

    return sub_26BF0177C(v26, v27, v28, v29);
  }

  if (swift_dynamicCast())
  {
    v31 = *(v0 + 424);
    *(v0 + 496) = *(v0 + 408);
    *(v0 + 512) = v31;
    *(v0 + 528) = *(v0 + 440);
    *(v0 + 544) = *(v0 + 456);
    v32 = *(v0 + 392);
    *(v0 + 464) = *(v0 + 376);
    *(v0 + 480) = v32;
    v33 = swift_task_alloc();
    *(v0 + 3816) = v33;
    *v33 = v0;
    v33[1] = sub_26BF1F584;

    return sub_26BF01DA0(v0 + 464);
  }

  if (swift_dynamicCast())
  {
    v34 = *(v0 + 1096);
    *(v0 + 1136) = *(v0 + 1080);
    *(v0 + 1152) = v34;
    *(v0 + 1168) = *(v0 + 1112);
    *(v0 + 1184) = *(v0 + 1128);
    v35 = swift_task_alloc();
    *(v0 + 3832) = v35;
    *v35 = v0;
    v35[1] = sub_26BF1F6A0;

    return sub_26BF05E40(v0 + 1136);
  }

  if (swift_dynamicCast())
  {
    v36 = *(v0 + 3600);
    v37 = *(v0 + 3608);
    *(v0 + 3848) = v37;
    v38 = swift_task_alloc();
    *(v0 + 3856) = v38;
    *v38 = v0;
    v38[1] = sub_26BF1F7BC;

    return sub_26BF07E6C(v36, v37);
  }

  if (swift_dynamicCast())
  {
    v39 = *(v0 + 904);
    *(v0 + 824) = *(v0 + 888);
    *(v0 + 840) = v39;
    v40 = *(v0 + 936);
    *(v0 + 856) = *(v0 + 920);
    *(v0 + 872) = v40;
    v41 = swift_task_alloc();
    *(v0 + 3872) = v41;
    *v41 = v0;
    v41[1] = sub_26BF1F8F0;

    return sub_26BF097B4(v0 + 824);
  }

  if (swift_dynamicCast())
  {
    v42 = *(v0 + 2888);
    v43 = *(v0 + 2896);
    *(v0 + 3888) = v43;
    v44 = *(v0 + 2904);
    v45 = swift_task_alloc();
    *(v0 + 3896) = v45;
    *v45 = v0;
    v45[1] = sub_26BF1FA0C;

    return sub_26BF0AE24(v42, v43, v44);
  }

  if (swift_dynamicCast())
  {
    v46 = *(v0 + 2120);
    v47 = *(v0 + 2128);
    *(v0 + 3912) = v47;
    v48 = *(v0 + 2136);
    v49 = *(v0 + 2144);
    *(v0 + 3920) = v49;
    v50 = swift_task_alloc();
    *(v0 + 3928) = v50;
    *v50 = v0;
    v50[1] = sub_26BF1FB40;

    return sub_26BF0F1A0(v46, v47, v48, v49);
  }

  if (swift_dynamicCast())
  {
    v51 = *(v0 + 2088);
    v52 = *(v0 + 2096);
    *(v0 + 3944) = v52;
    v53 = *(v0 + 2104);
    v54 = *(v0 + 2112);
    *(v0 + 3952) = v54;
    v55 = swift_task_alloc();
    *(v0 + 3960) = v55;
    *v55 = v0;
    v55[1] = sub_26BF1FC90;

    return sub_26BF1238C(v51, v52, v53, v54);
  }

  if (swift_dynamicCast())
  {
    v56 = *(v0 + 1448);
    *(v0 + 1384) = *(v0 + 1432);
    *(v0 + 1400) = v56;
    *(v0 + 1416) = *(v0 + 1464);
    v57 = swift_task_alloc();
    *(v0 + 3976) = v57;
    *v57 = v0;
    v57[1] = sub_26BF1FDE0;

    return sub_26BF18A84(v0 + 1384);
  }

  if (swift_dynamicCast())
  {
    v58 = *(v0 + 1496);
    *(v0 + 1336) = *(v0 + 1480);
    *(v0 + 1352) = v58;
    *(v0 + 1368) = *(v0 + 1512);
    v59 = swift_task_alloc();
    *(v0 + 3992) = v59;
    *v59 = v0;
    v59[1] = sub_26BF1FF70;

    return sub_26BF12A6C(v0 + 1336);
  }

  if (swift_dynamicCast())
  {
    v60 = *(v0 + 1544);
    *(v0 + 1288) = *(v0 + 1528);
    *(v0 + 1304) = v60;
    *(v0 + 1320) = *(v0 + 1560);
    v61 = swift_task_alloc();
    *(v0 + 4008) = v61;
    *v61 = v0;
    v61[1] = sub_26BF20100;

    return sub_26BF0DC34(v0 + 1288);
  }

  if (swift_dynamicCast())
  {
    v62 = *(v0 + 1592);
    *(v0 + 1240) = *(v0 + 1576);
    *(v0 + 1256) = v62;
    *(v0 + 1272) = *(v0 + 1608);
    v63 = swift_task_alloc();
    *(v0 + 4024) = v63;
    *v63 = v0;
    v63[1] = sub_26BF202B0;

    return sub_26BF0E2DC(v0 + 1240);
  }

  if (swift_dynamicCast())
  {
    v64 = *(v0 + 776);
    *(v0 + 1016) = *(v0 + 760);
    *(v0 + 1032) = v64;
    v65 = *(v0 + 808);
    *(v0 + 1048) = *(v0 + 792);
    *(v0 + 1064) = v65;
    v66 = swift_task_alloc();
    *(v0 + 4040) = v66;
    *v66 = v0;
    v66[1] = sub_26BF20440;

    return sub_26BF265C4(v0 + 1016);
  }

  if (swift_dynamicCast())
  {
    v67 = *(v0 + 1688);
    *(v0 + 1192) = *(v0 + 1672);
    *(v0 + 1208) = v67;
    *(v0 + 1224) = *(v0 + 1704);
    v68 = swift_task_alloc();
    *(v0 + 4056) = v68;
    *v68 = v0;
    v68[1] = sub_26BF206A8;

    return sub_26BF0EA34(v0 + 1192);
  }

  if (swift_dynamicCast())
  {
    v69 = *(v0 + 712);
    *(v0 + 952) = *(v0 + 696);
    *(v0 + 968) = v69;
    v70 = *(v0 + 744);
    *(v0 + 984) = *(v0 + 728);
    *(v0 + 1000) = v70;
    v71 = swift_task_alloc();
    *(v0 + 4072) = v71;
    *v71 = v0;
    v71[1] = sub_26BF20838;

    return sub_26BF13A1C(v0 + 952);
  }

  if (swift_dynamicCast())
  {
    v72 = *(v0 + 2056);
    v73 = *(v0 + 2064);
    *(v0 + 4088) = v73;
    v74 = *(v0 + 2072);
    v75 = *(v0 + 2080);
    *(v0 + 4096) = v75;
    v76 = swift_task_alloc();
    *(v0 + 4104) = v76;
    *v76 = v0;
    v76[1] = sub_26BF20954;

    return sub_26BF15A4C(v72, v73, v74, v75);
  }

  if (swift_dynamicCast())
  {
    v77 = *(v0 + 600);
    *(v0 + 656) = *(v0 + 584);
    *(v0 + 672) = v77;
    *(v0 + 688) = *(v0 + 616);
    v78 = *(v0 + 568);
    *(v0 + 624) = *(v0 + 552);
    *(v0 + 640) = v78;
    v79 = swift_task_alloc();
    *(v0 + 4120) = v79;
    *v79 = v0;
    v79[1] = sub_26BF20AA4;

    return sub_26BF15C60(v0 + 624);
  }

  if (swift_dynamicCast())
  {
    v80 = *(v0 + 2032);
    *(v0 + 1816) = *(v0 + 2016);
    *(v0 + 1832) = v80;
    *(v0 + 1848) = *(v0 + 2048);
    v81 = swift_task_alloc();
    *(v0 + 4136) = v81;
    *v81 = v0;
    v81[1] = sub_26BF20BC0;

    return sub_26BF16334(v0 + 1816);
  }

  if (swift_dynamicCast())
  {
    v82 = *(v0 + 371);
    if (v82 != 2)
    {
      *(*(v0 + 3664) + 64) = v82 & 1;
    }

LABEL_91:
    v83 = *(v0 + 3664);
    __swift_destroy_boxed_opaque_existential_1((v0 + 1976));
    v84 = *(v83 + 24);
    v85 = __OFADD__(v84, 1);
    v86 = v84 + 1;
    if (!v85)
    {
      *(*(v0 + 3664) + 24) = v86;
      v87 = swift_task_alloc();
      *(v0 + 4296) = v87;
      *v87 = v0;
      v87[1] = sub_26BF217E8;

      return sub_26BF1A4F4();
    }

    __break(1u);
LABEL_120:
    swift_once();
LABEL_110:
    v106 = *(v0 + 3744);
    v107 = *(v0 + 3680);
    v108 = *(v0 + 3672);
    v109 = __swift_project_value_buffer(*(v0 + 3736), qword_28045E4F0);
    (*(v107 + 56))(v106, 1, 1, v108);
    swift_beginAccess();
    sub_26BF25BE4(v106, v109);
    swift_endAccess();

    v25 = *(v0 + 8);
    goto LABEL_11;
  }

  if (swift_dynamicCast())
  {
    *(v0 + 4152) = *(v0 + 3136);
    *(v0 + 4160) = *(v0 + 3144);
    v88 = swift_task_alloc();
    *(v0 + 4168) = v88;
    *v88 = v0;
    v88[1] = sub_26BF20D64;

    return sub_26BF820B8();
  }

  else if (swift_dynamicCast())
  {
    *(v0 + 4208) = *(v0 + 1632);
    v89 = *(v0 + 1640);
    v90 = *(v0 + 1648);
    *(v0 + 4216) = v90;
    v91 = *(v0 + 1656);
    v92 = *(v0 + 1664);
    *(v0 + 4224) = v92;
    sub_26BF0DAD4(v89, v90, v91, v92, (v0 + 16));
    sub_26C008F9C();
    v104 = sub_26C008FFC();
    *(v0 + 4232) = v104;
    *(v0 + 4240) = v105;
    v112 = v104;
    v113 = v105;
    (*(*(v0 + 3712) + 8))(*(v0 + 3720), *(v0 + 3704));
    v114 = swift_task_alloc();
    *(v0 + 4248) = v114;
    *v114 = v0;
    v114[1] = sub_26BF2119C;

    return sub_26BF832D8(v0 + 16, v112, v113);
  }

  else
  {
    if (swift_dynamicCast())
    {
      v93 = *(v0 + 3688);
      v94 = *(v0 + 3680);
      v95 = *(v0 + 3672);
      sub_26C00920C();
      sub_26C0091BC();
      v96 = *(v94 + 8);
      v96(v93, v95);
      if (qword_28045DF48 != -1)
      {
        swift_once();
      }

      v97 = *(v0 + 3744);
      v98 = *(v0 + 3696);
      v99 = *(v0 + 3680);
      v100 = *(v0 + 3672);
      v101 = __swift_project_value_buffer(*(v0 + 3736), qword_28045E4F0);
      (*(v99 + 16))(v97, v98, v100);
      (*(v99 + 56))(v97, 0, 1, v100);
      swift_beginAccess();
      sub_26BF25BE4(v97, v101);
      swift_endAccess();
      v96(v98, v100);
      goto LABEL_91;
    }

    if (swift_dynamicCast())
    {
      v102 = *(v0 + 1952);
      *(v0 + 1856) = *(v0 + 1936);
      *(v0 + 1872) = v102;
      *(v0 + 1888) = *(v0 + 1968);
      v103 = swift_task_alloc();
      *(v0 + 4264) = v103;
      *v103 = v0;
      v103[1] = sub_26BF21528;

      return sub_26BF1ABD4(v0 + 1856);
    }

    else
    {
      if (!swift_dynamicCast())
      {
        sub_26BE773C4();
        swift_allocError();
        *v115 = 0;
        v115[1] = 0;
        swift_willThrow();
        __swift_destroy_boxed_opaque_existential_1((v0 + 1976));
        __swift_destroy_boxed_opaque_existential_1((v0 + 1896));
        if (qword_28045DF48 == -1)
        {
          goto LABEL_110;
        }

        goto LABEL_120;
      }

      v110 = *(v0 + 1784);
      *(v0 + 1720) = *(v0 + 1768);
      *(v0 + 1736) = v110;
      *(v0 + 1745) = *(v0 + 1793);
      v111 = swift_task_alloc();
      *(v0 + 4280) = v111;
      *v111 = v0;
      v111[1] = sub_26BF216CC;

      return sub_26BF1BF00(v0 + 1720);
    }
  }
}

uint64_t sub_26BF1F230()
{
  *(*v1 + 3776) = v0;

  if (v0)
  {
    v2 = sub_26BF23184;
  }

  else
  {
    v2 = sub_26BF1F380;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26BF1F380()
{
  v1 = v0[458];
  result = __swift_destroy_boxed_opaque_existential_1(v0 + 247);
  v3 = *(v1 + 24);
  v4 = __OFADD__(v3, 1);
  v5 = v3 + 1;
  if (v4)
  {
    __break(1u);
  }

  else
  {
    *(v0[458] + 24) = v5;
    v6 = swift_task_alloc();
    v0[537] = v6;
    *v6 = v0;
    v6[1] = sub_26BF217E8;

    return sub_26BF1A4F4();
  }

  return result;
}

uint64_t sub_26BF1F434()
{
  *(*v1 + 3808) = v0;

  if (v0)
  {
    v2 = sub_26BF232D0;
  }

  else
  {
    v2 = sub_26BF1F380;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26BF1F584()
{
  v2 = *v1;
  *(v2 + 3824) = v0;

  sub_26BEFB09C(v2 + 464);
  if (v0)
  {
    v3 = sub_26BF2341C;
  }

  else
  {
    v3 = sub_26BF1F380;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_26BF1F6A0()
{
  v2 = *v1;
  *(v2 + 3840) = v0;

  sub_26BF268C8(v2 + 1136);
  if (v0)
  {
    v3 = sub_26BF23568;
  }

  else
  {
    v3 = sub_26BF1F380;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_26BF1F7BC()
{
  *(*v1 + 3864) = v0;

  if (v0)
  {
    v2 = sub_26BF236B4;
  }

  else
  {
    v2 = sub_26BF1F380;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26BF1F8F0()
{
  v2 = *v1;
  *(v2 + 3880) = v0;

  sub_26BEFAF38(v2 + 824);
  if (v0)
  {
    v3 = sub_26BF23800;
  }

  else
  {
    v3 = sub_26BF1F380;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_26BF1FA0C()
{
  *(*v1 + 3904) = v0;

  if (v0)
  {
    v2 = sub_26BF2394C;
  }

  else
  {
    v2 = sub_26BF1F380;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26BF1FB40()
{
  *(*v1 + 3936) = v0;

  if (v0)
  {
    v2 = sub_26BF23A98;
  }

  else
  {
    v2 = sub_26BF1F380;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26BF1FC90()
{
  *(*v1 + 3968) = v0;

  if (v0)
  {
    v2 = sub_26BF23BE4;
  }

  else
  {
    v2 = sub_26BF1F380;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26BF1FDE0()
{
  v2 = *v1;
  v3 = (*v1 + 1384);
  *(v2 + 3984) = v0;

  v4 = (v2 + 1416);
  v5 = (v2 + 1400);
  if (v0)
  {
    *(v2 + 3168) = *v3;
    sub_26BF25CA8(v2 + 3168);
    *(v2 + 3152) = *v5;
    sub_26BF25CA8(v2 + 3152);
    *(v2 + 2912) = *v4;
    sub_26BF25CA8(v2 + 2912);
    v6 = sub_26BF23D30;
  }

  else
  {
    *(v2 + 3568) = *v3;
    sub_26BF25CA8(v2 + 3568);
    *(v2 + 3584) = *v5;
    sub_26BF25CA8(v2 + 3584);
    *(v2 + 2928) = *v4;
    sub_26BF25CA8(v2 + 2928);
    v6 = sub_26BF1F380;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_26BF1FF70()
{
  v2 = *v1;
  v3 = (*v1 + 1336);
  *(v2 + 4000) = v0;

  v4 = (v2 + 1368);
  v5 = (v2 + 1352);
  if (v0)
  {
    *(v2 + 3520) = *v3;
    sub_26BF25CA8(v2 + 3520);
    *(v2 + 3536) = *v5;
    sub_26BF25CA8(v2 + 3536);
    *(v2 + 3552) = *v4;
    sub_26BF25CA8(v2 + 3552);
    v6 = sub_26BF23E7C;
  }

  else
  {
    *(v2 + 3472) = *v3;
    sub_26BF25CA8(v2 + 3472);
    *(v2 + 3488) = *v5;
    sub_26BF25CA8(v2 + 3488);
    *(v2 + 3504) = *v4;
    sub_26BF25CA8(v2 + 3504);
    v6 = sub_26BF1F380;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_26BF20100()
{
  v2 = *v1;
  v3 = (*v1 + 1288);
  *(v2 + 4016) = v0;

  v4 = (v2 + 1320);
  v5 = (v2 + 1304);
  if (v0)
  {
    *(v2 + 3424) = *v3;
    sub_26BF25CA8(v2 + 3424);
    *(v2 + 3440) = *v5;
    sub_26BF25CA8(v2 + 3440);
    *(v2 + 3456) = *v4;
    sub_26BE2E258(v2 + 3456, &qword_28045EE08, &qword_26C016570);
    v6 = sub_26BF23FC8;
  }

  else
  {
    *(v2 + 3376) = *v3;
    sub_26BF25CA8(v2 + 3376);
    *(v2 + 3392) = *v5;
    sub_26BF25CA8(v2 + 3392);
    *(v2 + 3408) = *v4;
    sub_26BE2E258(v2 + 3408, &qword_28045EE08, &qword_26C016570);
    v6 = sub_26BF1F380;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_26BF202B0()
{
  v2 = *v1;
  v3 = (*v1 + 1240);
  *(v2 + 4032) = v0;

  v4 = (v2 + 1272);
  v5 = (v2 + 1256);
  if (v0)
  {
    *(v2 + 3328) = *v3;
    sub_26BF25CA8(v2 + 3328);
    *(v2 + 3344) = *v5;
    sub_26BF25CA8(v2 + 3344);
    *(v2 + 3360) = *v4;
    sub_26BF25CA8(v2 + 3360);
    v6 = sub_26BF24114;
  }

  else
  {
    *(v2 + 3280) = *v3;
    sub_26BF25CA8(v2 + 3280);
    *(v2 + 3296) = *v5;
    sub_26BF25CA8(v2 + 3296);
    *(v2 + 3312) = *v4;
    sub_26BF25CA8(v2 + 3312);
    v6 = sub_26BF1F380;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_26BF20440()
{
  v2 = *v1;
  *(v2 + 4048) = v0;

  sub_26BEFAC30(v2 + 1016);
  if (v0)
  {
    v3 = sub_26BF2055C;
  }

  else
  {
    v3 = sub_26BF1F380;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_26BF2055C()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 247);
  __swift_destroy_boxed_opaque_existential_1(v0 + 237);
  if (qword_28045DF48 != -1)
  {
    swift_once();
  }

  v1 = v0[468];
  v2 = v0[460];
  v3 = v0[459];
  v4 = __swift_project_value_buffer(v0[467], qword_28045E4F0);
  (*(v2 + 56))(v1, 1, 1, v3);
  swift_beginAccess();
  sub_26BF25BE4(v1, v4);
  swift_endAccess();

  v5 = v0[1];

  return v5();
}

uint64_t sub_26BF206A8()
{
  v2 = *v1;
  v3 = (*v1 + 1192);
  *(v2 + 4064) = v0;

  v4 = (v2 + 1224);
  v5 = (v2 + 1208);
  if (v0)
  {
    *(v2 + 3232) = *v3;
    sub_26BF25CA8(v2 + 3232);
    *(v2 + 3248) = *v5;
    sub_26BF25CA8(v2 + 3248);
    *(v2 + 3264) = *v4;
    sub_26BF25CA8(v2 + 3264);
    v6 = sub_26BF24260;
  }

  else
  {
    *(v2 + 3184) = *v3;
    sub_26BF25CA8(v2 + 3184);
    *(v2 + 3200) = *v5;
    sub_26BF25CA8(v2 + 3200);
    *(v2 + 3216) = *v4;
    sub_26BF25CA8(v2 + 3216);
    v6 = sub_26BF1F380;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_26BF20838()
{
  v2 = *v1;
  *(v2 + 4080) = v0;

  sub_26BEFAB20(v2 + 952);
  if (v0)
  {
    v3 = sub_26BF243AC;
  }

  else
  {
    v3 = sub_26BF1F380;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_26BF20954()
{
  *(*v1 + 4112) = v0;

  if (v0)
  {
    v2 = sub_26BF244F8;
  }

  else
  {
    v2 = sub_26BF1F380;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26BF20AA4()
{
  v2 = *v1;
  *(v2 + 4128) = v0;

  sub_26BEFAA10(v2 + 624);
  if (v0)
  {
    v3 = sub_26BF24644;
  }

  else
  {
    v3 = sub_26BF1F380;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_26BF20BC0()
{
  v2 = *v1;
  v3 = (*v1 + 1816);
  *(v2 + 4144) = v0;

  v4 = (v2 + 1832);
  if (v0)
  {
    *(v2 + 3088) = *v3;
    sub_26BF25CA8(v2 + 3088);
    *(v2 + 3104) = *v4;
    sub_26BF25CA8(v2 + 3104);
    *(v2 + 3624) = *(v2 + 1848);
    sub_26BE2E258(v2 + 3624, &qword_28045E4B0, &qword_26C00ECE0);
    v5 = sub_26BF24790;
  }

  else
  {
    *(v2 + 3040) = *v3;
    sub_26BF25CA8(v2 + 3040);
    *(v2 + 3056) = *v4;
    sub_26BF25CA8(v2 + 3056);
    *(v2 + 3632) = *(v2 + 1848);
    sub_26BE2E258(v2 + 3632, &qword_28045E4B0, &qword_26C00ECE0);
    v5 = sub_26BF1F380;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_26BF20D64(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[522] = a1;
  v4[523] = a2;
  v4[524] = v2;

  if (v2)
  {

    v4[525] = v2;
    v5 = sub_26BF21050;
  }

  else
  {
    v5 = sub_26BF20E98;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_26BF20E98()
{
  v1 = v0[524];
  sub_26C008F9C();
  sub_26C00912C();
  if (v1)
  {
    v2 = v0[466];
    v3 = v0[464];
    v4 = v0[463];
    sub_26BE00258(v0[522], v0[523]);

    (*(v3 + 8))(v2, v4);
    v0[525] = v1;
    v5 = sub_26BF21050;
    v6 = 0;
    v7 = 0;

    return MEMORY[0x2822009F8](v5, v6, v7);
  }

  v8 = v0[466];
  v9 = v0[464];
  v10 = v0[463];
  sub_26BE00258(v0[522], v0[523]);

  (*(v9 + 8))(v8, v10);
  v11 = v0[458];
  v5 = __swift_destroy_boxed_opaque_existential_1(v0 + 247);
  v12 = *(v11 + 24);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
    return MEMORY[0x2822009F8](v5, v6, v7);
  }

  *(v0[458] + 24) = v14;
  v15 = swift_task_alloc();
  v0[537] = v15;
  *v15 = v0;
  v15[1] = sub_26BF217E8;

  return sub_26BF1A4F4();
}

uint64_t sub_26BF21050()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 247);
  __swift_destroy_boxed_opaque_existential_1(v0 + 237);
  if (qword_28045DF48 != -1)
  {
    swift_once();
  }

  v1 = v0[468];
  v2 = v0[460];
  v3 = v0[459];
  v4 = __swift_project_value_buffer(v0[467], qword_28045E4F0);
  (*(v2 + 56))(v1, 1, 1, v3);
  swift_beginAccess();
  sub_26BF25BE4(v1, v4);
  swift_endAccess();

  v5 = v0[1];

  return v5();
}

uint64_t sub_26BF2119C()
{
  *(*v1 + 4256) = v0;

  if (v0)
  {
    v2 = sub_26BF213A4;
  }

  else
  {
    v2 = sub_26BF212B0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26BF212B0()
{
  sub_26BE00258(v0[529], v0[530]);

  sub_26BE29710((v0 + 2));
  v1 = v0[458];
  result = __swift_destroy_boxed_opaque_existential_1(v0 + 247);
  v3 = *(v1 + 24);
  v4 = __OFADD__(v3, 1);
  v5 = v3 + 1;
  if (v4)
  {
    __break(1u);
  }

  else
  {
    *(v0[458] + 24) = v5;
    v6 = swift_task_alloc();
    v0[537] = v6;
    *v6 = v0;
    v6[1] = sub_26BF217E8;

    return sub_26BF1A4F4();
  }

  return result;
}

uint64_t sub_26BF213A4()
{
  sub_26BE00258(v0[529], v0[530]);

  sub_26BE29710((v0 + 2));
  __swift_destroy_boxed_opaque_existential_1(v0 + 247);
  __swift_destroy_boxed_opaque_existential_1(v0 + 237);
  if (qword_28045DF48 != -1)
  {
    swift_once();
  }

  v1 = v0[468];
  v2 = v0[460];
  v3 = v0[459];
  v4 = __swift_project_value_buffer(v0[467], qword_28045E4F0);
  (*(v2 + 56))(v1, 1, 1, v3);
  swift_beginAccess();
  sub_26BF25BE4(v1, v4);
  swift_endAccess();

  v5 = v0[1];

  return v5();
}

uint64_t sub_26BF21528()
{
  v2 = *v1;
  v3 = (*v1 + 1856);
  *(v2 + 4272) = v0;

  v4 = (v2 + 1872);
  if (v0)
  {
    *(v2 + 2992) = *v3;
    sub_26BF25CA8(v2 + 2992);
    *(v2 + 3008) = *v4;
    sub_26BF25CA8(v2 + 3008);
    *(v2 + 3648) = *(v2 + 1888);
    sub_26BE2E258(v2 + 3648, &qword_28045E4B0, &qword_26C00ECE0);
    v5 = sub_26BF248DC;
  }

  else
  {
    *(v2 + 2944) = *v3;
    sub_26BF25CA8(v2 + 2944);
    *(v2 + 2960) = *v4;
    sub_26BF25CA8(v2 + 2960);
    *(v2 + 3656) = *(v2 + 1888);
    sub_26BE2E258(v2 + 3656, &qword_28045E4B0, &qword_26C00ECE0);
    v5 = sub_26BF1F380;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_26BF216CC()
{
  v2 = *v1;
  *(v2 + 4288) = v0;

  sub_26BF25C54(v2 + 1720);
  if (v0)
  {
    v3 = sub_26BF24A28;
  }

  else
  {
    v3 = sub_26BF1F380;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_26BF217E8()
{
  *(*v1 + 4304) = v0;

  if (v0)
  {
    v2 = sub_26BF24B74;
  }

  else
  {
    v2 = sub_26BF218FC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26BF218FC()
{
  v1 = *(v0 + 3664);
  __swift_destroy_boxed_opaque_existential_1((v0 + 1896));
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  if (v2 >= *(v3 + 16))
  {
    if (qword_28045DF48 == -1)
    {
LABEL_10:
      v22 = *(v0 + 3744);
      v23 = *(v0 + 3680);
      v24 = *(v0 + 3672);
      v25 = __swift_project_value_buffer(*(v0 + 3736), qword_28045E4F0);
      (*(v23 + 56))(v22, 1, 1, v24);
      swift_beginAccess();
      sub_26BF25BE4(v22, v25);
      swift_endAccess();

      v26 = *(v0 + 8);
LABEL_11:

      return v26();
    }

LABEL_55:
    swift_once();
    goto LABEL_10;
  }

  if (v2 < 0)
  {
    __break(1u);
    goto LABEL_55;
  }

  v4 = *(v0 + 4304);
  v5 = *(v0 + 3664);
  sub_26BE038A8(v3 + 40 * v2 + 32, v0 + 1896);
  if (*(v5 + 32) == 1)
  {
    v6 = *(v0 + 3664);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E958, &qword_26C012648);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_26C011280;
    *(v0 + 3072) = 0;
    *(v0 + 3080) = 0xE000000000000000;
    sub_26C00AC1C();

    strcpy((v0 + 3120), "Running step ");
    *(v0 + 3134) = -4864;
    *(v0 + 3640) = *(v6 + 24);
    v8 = sub_26C00AEFC();
    MEMORY[0x26D699090](v8);

    MEMORY[0x26D699090](3026478, 0xE300000000000000);
    v9 = *(v0 + 3120);
    v10 = *(v0 + 3128);
    v11 = MEMORY[0x277D837D0];
    *(v7 + 56) = MEMORY[0x277D837D0];
    *(v7 + 32) = v9;
    *(v7 + 40) = v10;
    sub_26C00B03C();

    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_26C011280;
    *(v0 + 2976) = 0;
    *(v0 + 2984) = 0xE000000000000000;
    sub_26C00AC1C();
    v13 = *(v0 + 2984);
    *(v0 + 3024) = *(v0 + 2976);
    *(v0 + 3032) = v13;
    MEMORY[0x26D699090](0x6974636120746F47, 0xEB00000000206E6FLL);
    __swift_project_boxed_opaque_existential_1((v0 + 1896), *(v0 + 1920));
    sub_26C00AF0C();
    MEMORY[0x26D699090](3026478, 0xE300000000000000);
    v14 = *(v0 + 3024);
    v15 = *(v0 + 3032);
    *(v12 + 56) = v11;
    *(v12 + 32) = v14;
    *(v12 + 40) = v15;
    sub_26C00B03C();
  }

  sub_26BE038A8(v0 + 1896, v0 + 1976);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FA28, &qword_26C01D618);
  if (swift_dynamicCast())
  {
    v16 = *(v0 + 2184);
    v17 = *(v0 + 2192);
    *(v0 + 3752) = v17;
    v18 = *(v0 + 2200);
    v19 = *(v0 + 2208);
    *(v0 + 3760) = v19;
    v20 = swift_task_alloc();
    *(v0 + 3768) = v20;
    *v20 = v0;
    v20[1] = sub_26BF1F230;

    return sub_26BEFD100(v16, v17, v18, v19);
  }

  if (swift_dynamicCast())
  {
    v27 = *(v0 + 2152);
    v28 = *(v0 + 2160);
    *(v0 + 3784) = v28;
    v29 = *(v0 + 2168);
    v30 = *(v0 + 2176);
    *(v0 + 3792) = v30;
    v31 = swift_task_alloc();
    *(v0 + 3800) = v31;
    *v31 = v0;
    v31[1] = sub_26BF1F434;

    return sub_26BF0177C(v27, v28, v29, v30);
  }

  if (swift_dynamicCast())
  {
    v32 = *(v0 + 424);
    *(v0 + 496) = *(v0 + 408);
    *(v0 + 512) = v32;
    *(v0 + 528) = *(v0 + 440);
    *(v0 + 544) = *(v0 + 456);
    v33 = *(v0 + 392);
    *(v0 + 464) = *(v0 + 376);
    *(v0 + 480) = v33;
    v34 = swift_task_alloc();
    *(v0 + 3816) = v34;
    *v34 = v0;
    v34[1] = sub_26BF1F584;

    return sub_26BF01DA0(v0 + 464);
  }

  if (swift_dynamicCast())
  {
    v35 = *(v0 + 1096);
    *(v0 + 1136) = *(v0 + 1080);
    *(v0 + 1152) = v35;
    *(v0 + 1168) = *(v0 + 1112);
    *(v0 + 1184) = *(v0 + 1128);
    v36 = swift_task_alloc();
    *(v0 + 3832) = v36;
    *v36 = v0;
    v36[1] = sub_26BF1F6A0;

    return sub_26BF05E40(v0 + 1136);
  }

  if (swift_dynamicCast())
  {
    v37 = *(v0 + 3600);
    v38 = *(v0 + 3608);
    *(v0 + 3848) = v38;
    v39 = swift_task_alloc();
    *(v0 + 3856) = v39;
    *v39 = v0;
    v39[1] = sub_26BF1F7BC;

    return sub_26BF07E6C(v37, v38);
  }

  if (swift_dynamicCast())
  {
    v40 = *(v0 + 904);
    *(v0 + 824) = *(v0 + 888);
    *(v0 + 840) = v40;
    v41 = *(v0 + 936);
    *(v0 + 856) = *(v0 + 920);
    *(v0 + 872) = v41;
    v42 = swift_task_alloc();
    *(v0 + 3872) = v42;
    *v42 = v0;
    v42[1] = sub_26BF1F8F0;

    return sub_26BF097B4(v0 + 824);
  }

  if (swift_dynamicCast())
  {
    v43 = *(v0 + 2888);
    v44 = *(v0 + 2896);
    *(v0 + 3888) = v44;
    v45 = *(v0 + 2904);
    v46 = swift_task_alloc();
    *(v0 + 3896) = v46;
    *v46 = v0;
    v46[1] = sub_26BF1FA0C;

    return sub_26BF0AE24(v43, v44, v45);
  }

  if (swift_dynamicCast())
  {
    v47 = *(v0 + 2120);
    v48 = *(v0 + 2128);
    *(v0 + 3912) = v48;
    v49 = *(v0 + 2136);
    v50 = *(v0 + 2144);
    *(v0 + 3920) = v50;
    v51 = swift_task_alloc();
    *(v0 + 3928) = v51;
    *v51 = v0;
    v51[1] = sub_26BF1FB40;

    return sub_26BF0F1A0(v47, v48, v49, v50);
  }

  if (swift_dynamicCast())
  {
    v52 = *(v0 + 2088);
    v53 = *(v0 + 2096);
    *(v0 + 3944) = v53;
    v54 = *(v0 + 2104);
    v55 = *(v0 + 2112);
    *(v0 + 3952) = v55;
    v56 = swift_task_alloc();
    *(v0 + 3960) = v56;
    *v56 = v0;
    v56[1] = sub_26BF1FC90;

    return sub_26BF1238C(v52, v53, v54, v55);
  }

  if (swift_dynamicCast())
  {
    v57 = *(v0 + 1448);
    *(v0 + 1384) = *(v0 + 1432);
    *(v0 + 1400) = v57;
    *(v0 + 1416) = *(v0 + 1464);
    v58 = swift_task_alloc();
    *(v0 + 3976) = v58;
    *v58 = v0;
    v58[1] = sub_26BF1FDE0;

    return sub_26BF18A84(v0 + 1384);
  }

  if (swift_dynamicCast())
  {
    v59 = *(v0 + 1496);
    *(v0 + 1336) = *(v0 + 1480);
    *(v0 + 1352) = v59;
    *(v0 + 1368) = *(v0 + 1512);
    v60 = swift_task_alloc();
    *(v0 + 3992) = v60;
    *v60 = v0;
    v60[1] = sub_26BF1FF70;

    return sub_26BF12A6C(v0 + 1336);
  }

  if (swift_dynamicCast())
  {
    v61 = *(v0 + 1544);
    *(v0 + 1288) = *(v0 + 1528);
    *(v0 + 1304) = v61;
    *(v0 + 1320) = *(v0 + 1560);
    v62 = swift_task_alloc();
    *(v0 + 4008) = v62;
    *v62 = v0;
    v62[1] = sub_26BF20100;

    return sub_26BF0DC34(v0 + 1288);
  }

  if (swift_dynamicCast())
  {
    v63 = *(v0 + 1592);
    *(v0 + 1240) = *(v0 + 1576);
    *(v0 + 1256) = v63;
    *(v0 + 1272) = *(v0 + 1608);
    v64 = swift_task_alloc();
    *(v0 + 4024) = v64;
    *v64 = v0;
    v64[1] = sub_26BF202B0;

    return sub_26BF0E2DC(v0 + 1240);
  }

  if (swift_dynamicCast())
  {
    v65 = *(v0 + 776);
    *(v0 + 1016) = *(v0 + 760);
    *(v0 + 1032) = v65;
    v66 = *(v0 + 808);
    *(v0 + 1048) = *(v0 + 792);
    *(v0 + 1064) = v66;
    v67 = swift_task_alloc();
    *(v0 + 4040) = v67;
    *v67 = v0;
    v67[1] = sub_26BF20440;

    return sub_26BF265C4(v0 + 1016);
  }

  if (swift_dynamicCast())
  {
    v68 = *(v0 + 1688);
    *(v0 + 1192) = *(v0 + 1672);
    *(v0 + 1208) = v68;
    *(v0 + 1224) = *(v0 + 1704);
    v69 = swift_task_alloc();
    *(v0 + 4056) = v69;
    *v69 = v0;
    v69[1] = sub_26BF206A8;

    return sub_26BF0EA34(v0 + 1192);
  }

  if (swift_dynamicCast())
  {
    v70 = *(v0 + 712);
    *(v0 + 952) = *(v0 + 696);
    *(v0 + 968) = v70;
    v71 = *(v0 + 744);
    *(v0 + 984) = *(v0 + 728);
    *(v0 + 1000) = v71;
    v72 = swift_task_alloc();
    *(v0 + 4072) = v72;
    *v72 = v0;
    v72[1] = sub_26BF20838;

    return sub_26BF13A1C(v0 + 952);
  }

  if (swift_dynamicCast())
  {
    v73 = *(v0 + 2056);
    v74 = *(v0 + 2064);
    *(v0 + 4088) = v74;
    v75 = *(v0 + 2072);
    v76 = *(v0 + 2080);
    *(v0 + 4096) = v76;
    v77 = swift_task_alloc();
    *(v0 + 4104) = v77;
    *v77 = v0;
    v77[1] = sub_26BF20954;

    return sub_26BF15A4C(v73, v74, v75, v76);
  }

  if (swift_dynamicCast())
  {
    v78 = *(v0 + 600);
    *(v0 + 656) = *(v0 + 584);
    *(v0 + 672) = v78;
    *(v0 + 688) = *(v0 + 616);
    v79 = *(v0 + 568);
    *(v0 + 624) = *(v0 + 552);
    *(v0 + 640) = v79;
    v80 = swift_task_alloc();
    *(v0 + 4120) = v80;
    *v80 = v0;
    v80[1] = sub_26BF20AA4;

    return sub_26BF15C60(v0 + 624);
  }

  if (swift_dynamicCast())
  {
    v81 = *(v0 + 2032);
    *(v0 + 1816) = *(v0 + 2016);
    *(v0 + 1832) = v81;
    *(v0 + 1848) = *(v0 + 2048);
    v82 = swift_task_alloc();
    *(v0 + 4136) = v82;
    *v82 = v0;
    v82[1] = sub_26BF20BC0;

    return sub_26BF16334(v0 + 1816);
  }

  if (swift_dynamicCast())
  {
    v83 = *(v0 + 371);
    if (v83 != 2)
    {
      *(*(v0 + 3664) + 64) = v83 & 1;
    }

LABEL_91:
    v84 = *(v0 + 3664);
    __swift_destroy_boxed_opaque_existential_1((v0 + 1976));
    v85 = *(v84 + 24);
    v86 = __OFADD__(v85, 1);
    v87 = v85 + 1;
    if (!v86)
    {
      *(*(v0 + 3664) + 24) = v87;
      v88 = swift_task_alloc();
      *(v0 + 4296) = v88;
      *v88 = v0;
      v88[1] = sub_26BF217E8;

      return sub_26BF1A4F4();
    }

    __break(1u);
    goto LABEL_122;
  }

  if (swift_dynamicCast())
  {
    *(v0 + 4152) = *(v0 + 3136);
    *(v0 + 4160) = *(v0 + 3144);
    v89 = swift_task_alloc();
    *(v0 + 4168) = v89;
    *v89 = v0;
    v89[1] = sub_26BF20D64;

    return sub_26BF820B8();
  }

  if (swift_dynamicCast())
  {
    *(v0 + 4208) = *(v0 + 1632);
    v90 = *(v0 + 1640);
    v91 = *(v0 + 1648);
    *(v0 + 4216) = v91;
    v92 = *(v0 + 1656);
    v93 = *(v0 + 1664);
    *(v0 + 4224) = v93;
    sub_26BF0DAD4(v90, v91, v92, v93, (v0 + 16));
    if (v4)
    {

      goto LABEL_111;
    }

    sub_26C008F9C();
    v105 = sub_26C008FFC();
    *(v0 + 4232) = v105;
    *(v0 + 4240) = v106;
    v113 = v105;
    v114 = v106;
    (*(*(v0 + 3712) + 8))(*(v0 + 3720), *(v0 + 3704));
    v115 = swift_task_alloc();
    *(v0 + 4248) = v115;
    *v115 = v0;
    v115[1] = sub_26BF2119C;

    return sub_26BF832D8(v0 + 16, v113, v114);
  }

  else
  {
    if (swift_dynamicCast())
    {
      v94 = *(v0 + 3688);
      v95 = *(v0 + 3680);
      v96 = *(v0 + 3672);
      sub_26C00920C();
      sub_26C0091BC();
      v97 = *(v95 + 8);
      v97(v94, v96);
      if (qword_28045DF48 != -1)
      {
        swift_once();
      }

      v98 = *(v0 + 3744);
      v99 = *(v0 + 3696);
      v100 = *(v0 + 3680);
      v101 = *(v0 + 3672);
      v102 = __swift_project_value_buffer(*(v0 + 3736), qword_28045E4F0);
      (*(v100 + 16))(v98, v99, v101);
      (*(v100 + 56))(v98, 0, 1, v101);
      swift_beginAccess();
      sub_26BF25BE4(v98, v102);
      swift_endAccess();
      v97(v99, v101);
      goto LABEL_91;
    }

    if (swift_dynamicCast())
    {
      v103 = *(v0 + 1952);
      *(v0 + 1856) = *(v0 + 1936);
      *(v0 + 1872) = v103;
      *(v0 + 1888) = *(v0 + 1968);
      v104 = swift_task_alloc();
      *(v0 + 4264) = v104;
      *v104 = v0;
      v104[1] = sub_26BF21528;

      return sub_26BF1ABD4(v0 + 1856);
    }

    else
    {
      if (!swift_dynamicCast())
      {
        sub_26BE773C4();
        swift_allocError();
        *v116 = 0;
        v116[1] = 0;
        swift_willThrow();
LABEL_111:
        __swift_destroy_boxed_opaque_existential_1((v0 + 1976));
        __swift_destroy_boxed_opaque_existential_1((v0 + 1896));
        if (qword_28045DF48 == -1)
        {
LABEL_112:
          v107 = *(v0 + 3744);
          v108 = *(v0 + 3680);
          v109 = *(v0 + 3672);
          v110 = __swift_project_value_buffer(*(v0 + 3736), qword_28045E4F0);
          (*(v108 + 56))(v107, 1, 1, v109);
          swift_beginAccess();
          sub_26BF25BE4(v107, v110);
          swift_endAccess();

          v26 = *(v0 + 8);
          goto LABEL_11;
        }

LABEL_122:
        swift_once();
        goto LABEL_112;
      }

      v111 = *(v0 + 1784);
      *(v0 + 1720) = *(v0 + 1768);
      *(v0 + 1736) = v111;
      *(v0 + 1745) = *(v0 + 1793);
      v112 = swift_task_alloc();
      *(v0 + 4280) = v112;
      *v112 = v0;
      v112[1] = sub_26BF216CC;

      return sub_26BF1BF00(v0 + 1720);
    }
  }
}

uint64_t sub_26BF23184()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 247);
  __swift_destroy_boxed_opaque_existential_1(v0 + 237);
  if (qword_28045DF48 != -1)
  {
    swift_once();
  }

  v1 = v0[468];
  v2 = v0[460];
  v3 = v0[459];
  v4 = __swift_project_value_buffer(v0[467], qword_28045E4F0);
  (*(v2 + 56))(v1, 1, 1, v3);
  swift_beginAccess();
  sub_26BF25BE4(v1, v4);
  swift_endAccess();

  v5 = v0[1];

  return v5();
}

uint64_t sub_26BF232D0()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 247);
  __swift_destroy_boxed_opaque_existential_1(v0 + 237);
  if (qword_28045DF48 != -1)
  {
    swift_once();
  }

  v1 = v0[468];
  v2 = v0[460];
  v3 = v0[459];
  v4 = __swift_project_value_buffer(v0[467], qword_28045E4F0);
  (*(v2 + 56))(v1, 1, 1, v3);
  swift_beginAccess();
  sub_26BF25BE4(v1, v4);
  swift_endAccess();

  v5 = v0[1];

  return v5();
}

uint64_t sub_26BF2341C()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 247);
  __swift_destroy_boxed_opaque_existential_1(v0 + 237);
  if (qword_28045DF48 != -1)
  {
    swift_once();
  }

  v1 = v0[468];
  v2 = v0[460];
  v3 = v0[459];
  v4 = __swift_project_value_buffer(v0[467], qword_28045E4F0);
  (*(v2 + 56))(v1, 1, 1, v3);
  swift_beginAccess();
  sub_26BF25BE4(v1, v4);
  swift_endAccess();

  v5 = v0[1];

  return v5();
}

uint64_t sub_26BF23568()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 247);
  __swift_destroy_boxed_opaque_existential_1(v0 + 237);
  if (qword_28045DF48 != -1)
  {
    swift_once();
  }

  v1 = v0[468];
  v2 = v0[460];
  v3 = v0[459];
  v4 = __swift_project_value_buffer(v0[467], qword_28045E4F0);
  (*(v2 + 56))(v1, 1, 1, v3);
  swift_beginAccess();
  sub_26BF25BE4(v1, v4);
  swift_endAccess();

  v5 = v0[1];

  return v5();
}

uint64_t sub_26BF236B4()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 247);
  __swift_destroy_boxed_opaque_existential_1(v0 + 237);
  if (qword_28045DF48 != -1)
  {
    swift_once();
  }

  v1 = v0[468];
  v2 = v0[460];
  v3 = v0[459];
  v4 = __swift_project_value_buffer(v0[467], qword_28045E4F0);
  (*(v2 + 56))(v1, 1, 1, v3);
  swift_beginAccess();
  sub_26BF25BE4(v1, v4);
  swift_endAccess();

  v5 = v0[1];

  return v5();
}

uint64_t sub_26BF23800()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 247);
  __swift_destroy_boxed_opaque_existential_1(v0 + 237);
  if (qword_28045DF48 != -1)
  {
    swift_once();
  }

  v1 = v0[468];
  v2 = v0[460];
  v3 = v0[459];
  v4 = __swift_project_value_buffer(v0[467], qword_28045E4F0);
  (*(v2 + 56))(v1, 1, 1, v3);
  swift_beginAccess();
  sub_26BF25BE4(v1, v4);
  swift_endAccess();

  v5 = v0[1];

  return v5();
}

uint64_t sub_26BF2394C()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 247);
  __swift_destroy_boxed_opaque_existential_1(v0 + 237);
  if (qword_28045DF48 != -1)
  {
    swift_once();
  }

  v1 = v0[468];
  v2 = v0[460];
  v3 = v0[459];
  v4 = __swift_project_value_buffer(v0[467], qword_28045E4F0);
  (*(v2 + 56))(v1, 1, 1, v3);
  swift_beginAccess();
  sub_26BF25BE4(v1, v4);
  swift_endAccess();

  v5 = v0[1];

  return v5();
}

uint64_t sub_26BF23A98()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 247);
  __swift_destroy_boxed_opaque_existential_1(v0 + 237);
  if (qword_28045DF48 != -1)
  {
    swift_once();
  }

  v1 = v0[468];
  v2 = v0[460];
  v3 = v0[459];
  v4 = __swift_project_value_buffer(v0[467], qword_28045E4F0);
  (*(v2 + 56))(v1, 1, 1, v3);
  swift_beginAccess();
  sub_26BF25BE4(v1, v4);
  swift_endAccess();

  v5 = v0[1];

  return v5();
}