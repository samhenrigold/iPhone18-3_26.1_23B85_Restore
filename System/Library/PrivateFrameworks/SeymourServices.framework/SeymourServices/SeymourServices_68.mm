uint64_t sub_2275AE350()
{

  v1 = *(v0 + 8);

  return v1(0);
}

void sub_2275AE44C()
{
  v1 = *(v0 + 608);
  v2 = *(v0 + 576);

  v3 = sub_2275B3674(v1, v2);

  v4 = sub_2274CFEB4(v3);
  v6 = v5;

  *(v0 + 616) = v4;
  *(v0 + 1218) = v6;
  v7 = *&v4;
  if (v6)
  {
    v7 = 0.0;
    v8 = 0;
  }

  else
  {
    v8 = (v4 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000;
  }

  if (v8)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v7 <= -9.22337204e18)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v7 >= 9.22337204e18)
  {
LABEL_12:
    __break(1u);
    return;
  }

  v9 = swift_task_alloc();
  *(v0 + 624) = v9;
  *v9 = v0;
  v9[1] = sub_2275AE5AC;

  sub_2275A6B80();
}

uint64_t sub_2275AE5AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v5[79] = a1;
  v5[80] = a2;
  v5[81] = v3;

  if (v3)
  {
    v6 = sub_2275AE8DC;
  }

  else
  {

    v6 = sub_2275AE6D4;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

void sub_2275AE6D4()
{
  v1 = *(v0 + 640);
  v2 = *(v0 + 632);
  v3 = *(v0 + 520);
  if (__ROR8__(0xCCCCCCCCCCCCCCCDLL * *(v0 + 32) + 0x1999999999999998, 1) > 0x1999999999999998uLL || (*(v0 + 1218) & 1) != 0 || *(v0 + 616) < 6)
  {
  }

  else
  {

    v2 = v1;
  }

  v4 = sub_2275B3674(v2, v3);

  v5 = sub_2274CFEB4(v4);
  v7 = v6;

  *(v0 + 656) = v5;
  *(v0 + 1219) = v7;
  v8 = *&v5;
  if (v7)
  {
    v8 = 0.0;
  }

  else if ((v5 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    __break(1u);
    goto LABEL_18;
  }

  if (v8 <= -9.22337204e18)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v8 >= 9.22337204e18)
  {
LABEL_19:
    __break(1u);
    return;
  }

  v9 = *(v0 + 1218);
  v10 = *(v0 + 616);
  v11 = *(v0 + 32);
  v12 = swift_task_alloc();
  *(v0 + 664) = v12;
  *v12 = v0;
  v12[1] = sub_2275AE9CC;
  v13 = (__ROR8__(0xCCCCCCCCCCCCCCCDLL * v11 + 0x1999999999999998, 1) < 0x1999999999999999uLL) & ~v9;
  if (v10 > 5)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  v15 = *(v0 + 24);

  sub_2275A8F38(v15, v14, 2);
}

uint64_t sub_2275AE8DC()
{

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_2275AE9CC(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 672) = a1;
  *(v3 + 680) = v1;

  if (v1)
  {
    v4 = sub_2275AEBA4;
  }

  else
  {
    v4 = sub_2275AEAE4;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2275AEAE4()
{
  v1 = *(v0 + 40);
  v2 = *(*(v0 + 520) + 16);

  if (v2 >= v1)
  {
    goto LABEL_6;
  }

  v6 = *(v0 + 656);
  if (*(v0 + 1219))
  {
    v6 = 0;
  }

  v7 = *(v0 + 40) - v2;
  v8 = v7 * v6;
  if ((v7 * v6) >> 64 != (v7 * v6) >> 63)
  {
    __break(1u);
LABEL_6:
    v8 = 0;
  }

  v9 = *(v0 + 672);
  v10 = __OFADD__(v9, v8);
  v11 = v9 + v8;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    *(v0 + 568) = v11;
    v3 = sub_2275AE008;
    v4 = 0;
    v5 = 0;
  }

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_2275AEBA4()
{

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_2275AEC94(char a1)
{
  v4 = *v2;
  *(*v2 + 712) = v1;

  if (v1)
  {
    v5 = sub_2275B2B08;
  }

  else
  {

    *(v4 + 1220) = a1 & 1;
    v5 = sub_2275AEDC8;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

void sub_2275AEDC8()
{
  if (*(v0 + 1220) == 1)
  {
    v1 = *(v0 + 16);

    v2 = *MEMORY[0x277D511F8];
    v3 = sub_227664EC0();
    v4 = *(v3 - 8);
    (*(v4 + 104))(v1, v2, v3);
    (*(v4 + 56))(v1, 0, 1, v3);

    v5 = *(v0 + 8);

    v5(0);
  }

  else
  {
    v7 = *(v0 + 32);
    v6 = *(v0 + 40);
    *(v0 + 720) = v7 * v6;
    if ((v7 * v6) >> 64 == (v7 * v6) >> 63)
    {
      v8 = *(v0 + 696);
      v9 = *(v8 + 16);
      if (v9)
      {
        v10 = *(v0 + 24);
        if (v9 <= *(v10 + 16) >> 3)
        {
          v15 = *(v0 + 24);

          sub_2270062A8(v8);
          v11 = v15;
        }

        else
        {

          v11 = sub_227009F28(v8, v10);
        }

        *(v0 + 744) = v11;
        v14 = swift_task_alloc();
        *(v0 + 752) = v14;
        *v14 = v0;
        v14[1] = sub_2275AF4A4;

        sub_2275A6B80();
      }

      else
      {
        v12 = swift_task_alloc();
        *(v0 + 728) = v12;
        *v12 = v0;
        v12[1] = sub_2275AF0B0;
        v13 = *(v0 + 24);

        sub_2275A8F38(v13, 0, 2);
      }
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_2275AF0B0(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {

    v6 = *(v5 + 8);

    return v6(0);
  }

  else
  {
    *(v4 + 736) = a1;

    return MEMORY[0x2822009F8](sub_2275AF2A0, 0, 0);
  }
}

uint64_t sub_2275AF2A0()
{
  v1 = v0[12];
  v2 = v0[8];
  v3 = *(v2 + 48);
  if (v0[90] >= v0[92])
  {
    v5 = sub_227664EC0();
    v6 = *(v5 - 8);
    v7 = 1;
    v8 = v1;
  }

  else
  {
    v4 = *MEMORY[0x277D51200];
    v5 = sub_227664EC0();
    v6 = *(v5 - 8);
    (*(v6 + 104))(v1 + v3, v4, v5);
    v7 = 0;
    v8 = v0[12];
    v2 = v0[8];
  }

  v9 = v0[2];
  (*(v6 + 56))(v1 + v3, v7, 1, v5);
  sub_2275B4728(v8 + *(v2 + 48), v9);
  v12 = v0[90] >= v0[92];

  v10 = v0[1];

  return v10(v12);
}

uint64_t sub_2275AF4A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v4;
  *(*v4 + 760) = v3;

  if (v3)
  {
    v8 = sub_2275AF5E8;
  }

  else
  {

    *(v7 + 768) = a2;
    *(v7 + 776) = a1;
    v8 = sub_2275AF6E4;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_2275AF5E8()
{

  v1 = *(v0 + 8);

  return v1(0);
}

void sub_2275AF6E4()
{
  v1 = *(v0 + 776);
  v2 = *(v0 + 744);

  v3 = sub_2275B3674(v1, v2);

  v4 = sub_2274CFEB4(v3);
  v6 = v5;

  *(v0 + 784) = v4;
  *(v0 + 1221) = v6;
  v7 = *&v4;
  if (v6)
  {
    v7 = 0.0;
    v8 = 0;
  }

  else
  {
    v8 = (v4 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000;
  }

  if (v8)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v7 <= -9.22337204e18)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v7 >= 9.22337204e18)
  {
LABEL_12:
    __break(1u);
    return;
  }

  v9 = swift_task_alloc();
  *(v0 + 792) = v9;
  *v9 = v0;
  v9[1] = sub_2275AF844;

  sub_2275A6B80();
}

uint64_t sub_2275AF844(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v5[100] = a1;
  v5[101] = a2;
  v5[102] = v3;

  if (v3)
  {
    v6 = sub_2275AFB74;
  }

  else
  {

    v6 = sub_2275AF96C;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

void sub_2275AF96C()
{
  v1 = *(v0 + 808);
  v2 = *(v0 + 800);
  v3 = *(v0 + 696);
  if (__ROR8__(0xCCCCCCCCCCCCCCCDLL * *(v0 + 32) + 0x1999999999999998, 1) > 0x1999999999999998uLL || (*(v0 + 1221) & 1) != 0 || *(v0 + 784) < 6)
  {
  }

  else
  {

    v2 = v1;
  }

  v4 = sub_2275B3674(v2, v3);

  v5 = sub_2274CFEB4(v4);
  v7 = v6;

  *(v0 + 824) = v5;
  *(v0 + 1222) = v7;
  v8 = *&v5;
  if (v7)
  {
    v8 = 0.0;
  }

  else if ((v5 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    __break(1u);
    goto LABEL_18;
  }

  if (v8 <= -9.22337204e18)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v8 >= 9.22337204e18)
  {
LABEL_19:
    __break(1u);
    return;
  }

  v9 = *(v0 + 1221);
  v10 = *(v0 + 784);
  v11 = *(v0 + 32);
  v12 = swift_task_alloc();
  *(v0 + 832) = v12;
  *v12 = v0;
  v12[1] = sub_2275AFC64;
  v13 = (__ROR8__(0xCCCCCCCCCCCCCCCDLL * v11 + 0x1999999999999998, 1) < 0x1999999999999999uLL) & ~v9;
  if (v10 > 5)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  v15 = *(v0 + 24);

  sub_2275A8F38(v15, v14, 2);
}

uint64_t sub_2275AFB74()
{

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_2275AFC64(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 840) = a1;
  *(v3 + 848) = v1;

  if (v1)
  {
    v4 = sub_2275AFE3C;
  }

  else
  {
    v4 = sub_2275AFD7C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2275AFD7C()
{
  v1 = *(v0 + 40);
  v2 = *(*(v0 + 696) + 16);

  if (v2 >= v1)
  {
    goto LABEL_6;
  }

  v6 = *(v0 + 824);
  if (*(v0 + 1222))
  {
    v6 = 0;
  }

  v7 = *(v0 + 40) - v2;
  v8 = v7 * v6;
  if ((v7 * v6) >> 64 != (v7 * v6) >> 63)
  {
    __break(1u);
LABEL_6:
    v8 = 0;
  }

  v9 = *(v0 + 840);
  v10 = __OFADD__(v9, v8);
  v11 = v9 + v8;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    *(v0 + 736) = v11;
    v3 = sub_2275AF2A0;
    v4 = 0;
    v5 = 0;
  }

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_2275AFE3C()
{

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_2275AFF2C(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {

    v6 = *(v5 + 8);

    return v6(0);
  }

  else
  {
    *(v4 + 864) = a1;

    return MEMORY[0x2822009F8](sub_2275B0100, 0, 0);
  }
}

uint64_t sub_2275B0100()
{
  v1 = v0[108];
  v2 = v0[11];
  v3 = v0[8];
  v4 = v0[4];
  v5 = *(v3 + 48);
  if (v1 > v4)
  {
    v10 = *MEMORY[0x277D511F8];
    v6 = sub_227664EC0();
    v7 = *(v6 - 8);
    (*(v7 + 104))(v2 + v5, v10, v6);
    v8 = 0;
    v9 = v0[11];
    v3 = v0[8];
  }

  else
  {
    v6 = sub_227664EC0();
    v7 = *(v6 - 8);
    v8 = 1;
    v9 = v2;
  }

  v14 = v1 <= v4;
  v11 = v0[2];
  (*(v7 + 56))(v2 + v5, v8, 1, v6);
  sub_2275B4728(v9 + *(v3 + 48), v11);

  v12 = v0[1];

  return v12(v14);
}

uint64_t sub_2275B02FC(char a1)
{
  v4 = *v2;
  *(*v2 + 896) = v1;

  if (v1)
  {
    v5 = sub_2275B2C04;
  }

  else
  {

    *(v4 + 1223) = a1 & 1;
    v5 = sub_2275B0430;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

void sub_2275B0430()
{
  if (*(v0 + 1223) == 1)
  {
    v1 = *(v0 + 16);

    v2 = *MEMORY[0x277D511F8];
    v3 = sub_227664EC0();
    v4 = *(v3 - 8);
    (*(v4 + 104))(v1, v2, v3);
    (*(v4 + 56))(v1, 0, 1, v3);

    v5 = *(v0 + 8);

    v5(0);
  }

  else
  {
    v7 = *(v0 + 32);
    v6 = *(v0 + 40);
    *(v0 + 904) = v7 * v6;
    if ((v7 * v6) >> 64 == (v7 * v6) >> 63)
    {
      v8 = *(v0 + 880);
      v9 = *(v8 + 16);
      if (v9)
      {
        v10 = *(v0 + 24);
        if (v9 <= *(v10 + 16) >> 3)
        {
          v15 = *(v0 + 24);

          sub_2270062A8(v8);
          v11 = v15;
        }

        else
        {

          v11 = sub_227009F28(v8, v10);
        }

        *(v0 + 928) = v11;
        v14 = swift_task_alloc();
        *(v0 + 936) = v14;
        *v14 = v0;
        v14[1] = sub_2275B0B0C;

        sub_2275A6B80();
      }

      else
      {
        v12 = swift_task_alloc();
        *(v0 + 912) = v12;
        *v12 = v0;
        v12[1] = sub_2275B0718;
        v13 = *(v0 + 24);

        sub_2275A8F38(v13, 0, 2);
      }
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_2275B0718(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {

    v6 = *(v5 + 8);

    return v6(0);
  }

  else
  {
    *(v4 + 920) = a1;

    return MEMORY[0x2822009F8](sub_2275B0908, 0, 0);
  }
}

uint64_t sub_2275B0908()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = *(v2 + 48);
  if (v0[113] >= v0[115])
  {
    v5 = sub_227664EC0();
    v6 = *(v5 - 8);
    v7 = 1;
    v8 = v1;
  }

  else
  {
    v4 = *MEMORY[0x277D51200];
    v5 = sub_227664EC0();
    v6 = *(v5 - 8);
    (*(v6 + 104))(v1 + v3, v4, v5);
    v7 = 0;
    v8 = v0[10];
    v2 = v0[8];
  }

  v9 = v0[2];
  (*(v6 + 56))(v1 + v3, v7, 1, v5);
  sub_2275B4728(v8 + *(v2 + 48), v9);
  v12 = v0[113] >= v0[115];

  v10 = v0[1];

  return v10(v12);
}

uint64_t sub_2275B0B0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v4;
  *(*v4 + 944) = v3;

  if (v3)
  {
    v8 = sub_2275B0C50;
  }

  else
  {

    *(v7 + 952) = a2;
    *(v7 + 960) = a1;
    v8 = sub_2275B0D4C;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_2275B0C50()
{

  v1 = *(v0 + 8);

  return v1(0);
}

void sub_2275B0D4C()
{
  v1 = *(v0 + 960);
  v2 = *(v0 + 928);

  v3 = sub_2275B3674(v1, v2);

  v4 = sub_2274CFEB4(v3);
  v6 = v5;

  *(v0 + 968) = v4;
  *(v0 + 1224) = v6;
  v7 = *&v4;
  if (v6)
  {
    v7 = 0.0;
    v8 = 0;
  }

  else
  {
    v8 = (v4 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000;
  }

  if (v8)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v7 <= -9.22337204e18)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v7 >= 9.22337204e18)
  {
LABEL_12:
    __break(1u);
    return;
  }

  v9 = swift_task_alloc();
  *(v0 + 976) = v9;
  *v9 = v0;
  v9[1] = sub_2275B0EAC;

  sub_2275A6B80();
}

uint64_t sub_2275B0EAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v5[123] = a1;
  v5[124] = a2;
  v5[125] = v3;

  if (v3)
  {
    v6 = sub_2275B11DC;
  }

  else
  {

    v6 = sub_2275B0FD4;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

void sub_2275B0FD4()
{
  v1 = *(v0 + 992);
  v2 = *(v0 + 984);
  v3 = *(v0 + 880);
  if (__ROR8__(0xCCCCCCCCCCCCCCCDLL * *(v0 + 32) + 0x1999999999999998, 1) > 0x1999999999999998uLL || (*(v0 + 1224) & 1) != 0 || *(v0 + 968) < 6)
  {
  }

  else
  {

    v2 = v1;
  }

  v4 = sub_2275B3674(v2, v3);

  v5 = sub_2274CFEB4(v4);
  v7 = v6;

  *(v0 + 1008) = v5;
  *(v0 + 1225) = v7;
  v8 = *&v5;
  if (v7)
  {
    v8 = 0.0;
  }

  else if ((v5 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    __break(1u);
    goto LABEL_18;
  }

  if (v8 <= -9.22337204e18)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v8 >= 9.22337204e18)
  {
LABEL_19:
    __break(1u);
    return;
  }

  v9 = *(v0 + 1224);
  v10 = *(v0 + 968);
  v11 = *(v0 + 32);
  v12 = swift_task_alloc();
  *(v0 + 1016) = v12;
  *v12 = v0;
  v12[1] = sub_2275B12CC;
  v13 = (__ROR8__(0xCCCCCCCCCCCCCCCDLL * v11 + 0x1999999999999998, 1) < 0x1999999999999999uLL) & ~v9;
  if (v10 > 5)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  v15 = *(v0 + 24);

  sub_2275A8F38(v15, v14, 2);
}

uint64_t sub_2275B11DC()
{

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_2275B12CC(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 1024) = a1;
  *(v3 + 1032) = v1;

  if (v1)
  {
    v4 = sub_2275B14A4;
  }

  else
  {
    v4 = sub_2275B13E4;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2275B13E4()
{
  v1 = *(v0 + 40);
  v2 = *(*(v0 + 880) + 16);

  if (v2 >= v1)
  {
    goto LABEL_6;
  }

  v6 = *(v0 + 1008);
  if (*(v0 + 1225))
  {
    v6 = 0;
  }

  v7 = *(v0 + 40) - v2;
  v8 = v7 * v6;
  if ((v7 * v6) >> 64 != (v7 * v6) >> 63)
  {
    __break(1u);
LABEL_6:
    v8 = 0;
  }

  v9 = *(v0 + 1024);
  v10 = __OFADD__(v9, v8);
  v11 = v9 + v8;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    *(v0 + 920) = v11;
    v3 = sub_2275B0908;
    v4 = 0;
    v5 = 0;
  }

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_2275B14A4()
{

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_2275B1594(char a1)
{
  v4 = *v2;
  *(*v2 + 1064) = v1;

  if (v1)
  {
    v5 = sub_2275B2D00;
  }

  else
  {

    *(v4 + 1226) = a1 & 1;
    v5 = sub_2275B16C8;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

void sub_2275B16C8()
{
  if (*(v0 + 1226) == 1)
  {
    v1 = *(v0 + 16);

    v2 = *MEMORY[0x277D511F8];
    v3 = sub_227664EC0();
    v4 = *(v3 - 8);
    (*(v4 + 104))(v1, v2, v3);
    (*(v4 + 56))(v1, 0, 1, v3);

    v5 = *(v0 + 8);

    v5(0);
  }

  else
  {
    v7 = *(v0 + 32);
    v6 = *(v0 + 40);
    *(v0 + 1072) = v7 * v6;
    if ((v7 * v6) >> 64 == (v7 * v6) >> 63)
    {
      v8 = *(v0 + 1048);
      v9 = *(v8 + 16);
      if (v9)
      {
        v10 = *(v0 + 24);
        if (v9 <= *(v10 + 16) >> 3)
        {
          v15 = *(v0 + 24);

          sub_2270062A8(v8);
          v11 = v15;
        }

        else
        {

          v11 = sub_227009F28(v8, v10);
        }

        *(v0 + 1096) = v11;
        v14 = swift_task_alloc();
        *(v0 + 1104) = v14;
        *v14 = v0;
        v14[1] = sub_2275B1D9C;

        sub_2275A6B80();
      }

      else
      {
        v12 = swift_task_alloc();
        *(v0 + 1080) = v12;
        *v12 = v0;
        v12[1] = sub_2275B19B0;
        v13 = *(v0 + 24);

        sub_2275A8F38(v13, 0, 2);
      }
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_2275B19B0(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {

    v6 = *(v5 + 8);

    return v6(0);
  }

  else
  {
    *(v4 + 1088) = a1;

    return MEMORY[0x2822009F8](sub_2275B1BA0, 0, 0);
  }
}

uint64_t sub_2275B1BA0()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = *(v2 + 48);
  if (v0[134] >= v0[136])
  {
    v5 = sub_227664EC0();
    v6 = *(v5 - 8);
    v7 = 1;
    v8 = v1;
  }

  else
  {
    v4 = *MEMORY[0x277D51200];
    v5 = sub_227664EC0();
    v6 = *(v5 - 8);
    (*(v6 + 104))(v1 + v3, v4, v5);
    v7 = 0;
    v2 = v0[8];
    v8 = v0[9];
  }

  v9 = v0[2];
  (*(v6 + 56))(v1 + v3, v7, 1, v5);
  sub_2275B4728(v8 + *(v2 + 48), v9);
  v12 = v0[134] >= v0[136];

  v10 = v0[1];

  return v10(v12);
}

uint64_t sub_2275B1D9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v4;
  *(*v4 + 1112) = v3;

  if (v3)
  {
    v8 = sub_2275B1EE0;
  }

  else
  {

    *(v7 + 1120) = a2;
    *(v7 + 1128) = a1;
    v8 = sub_2275B1FDC;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_2275B1EE0()
{

  v1 = *(v0 + 8);

  return v1(0);
}

void sub_2275B1FDC()
{
  v1 = *(v0 + 1128);
  v2 = *(v0 + 1096);

  v3 = sub_2275B3674(v1, v2);

  v4 = sub_2274CFEB4(v3);
  v6 = v5;

  *(v0 + 1136) = v4;
  *(v0 + 1227) = v6;
  v7 = *&v4;
  if (v6)
  {
    v7 = 0.0;
    v8 = 0;
  }

  else
  {
    v8 = (v4 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000;
  }

  if (v8)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v7 <= -9.22337204e18)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v7 >= 9.22337204e18)
  {
LABEL_12:
    __break(1u);
    return;
  }

  v9 = swift_task_alloc();
  *(v0 + 1144) = v9;
  *v9 = v0;
  v9[1] = sub_2275B213C;

  sub_2275A6B80();
}

uint64_t sub_2275B213C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v5[144] = a1;
  v5[145] = a2;
  v5[146] = v3;

  if (v3)
  {
    v6 = sub_2275B246C;
  }

  else
  {

    v6 = sub_2275B2264;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

void sub_2275B2264()
{
  v1 = *(v0 + 1160);
  v2 = *(v0 + 1152);
  v3 = *(v0 + 1048);
  if (__ROR8__(0xCCCCCCCCCCCCCCCDLL * *(v0 + 32) + 0x1999999999999998, 1) > 0x1999999999999998uLL || (*(v0 + 1227) & 1) != 0 || *(v0 + 1136) < 6)
  {
  }

  else
  {

    v2 = v1;
  }

  v4 = sub_2275B3674(v2, v3);

  v5 = sub_2274CFEB4(v4);
  v7 = v6;

  *(v0 + 1176) = v5;
  *(v0 + 1228) = v7;
  v8 = *&v5;
  if (v7)
  {
    v8 = 0.0;
  }

  else if ((v5 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    __break(1u);
    goto LABEL_18;
  }

  if (v8 <= -9.22337204e18)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v8 >= 9.22337204e18)
  {
LABEL_19:
    __break(1u);
    return;
  }

  v9 = *(v0 + 1227);
  v10 = *(v0 + 1136);
  v11 = *(v0 + 32);
  v12 = swift_task_alloc();
  *(v0 + 1184) = v12;
  *v12 = v0;
  v12[1] = sub_2275B255C;
  v13 = (__ROR8__(0xCCCCCCCCCCCCCCCDLL * v11 + 0x1999999999999998, 1) < 0x1999999999999999uLL) & ~v9;
  if (v10 > 5)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  v15 = *(v0 + 24);

  sub_2275A8F38(v15, v14, 2);
}

uint64_t sub_2275B246C()
{

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_2275B255C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 1192) = a1;
  *(v3 + 1200) = v1;

  if (v1)
  {
    v4 = sub_2275B2734;
  }

  else
  {
    v4 = sub_2275B2674;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2275B2674()
{
  v1 = *(v0 + 40);
  v2 = *(*(v0 + 1048) + 16);

  if (v2 >= v1)
  {
    goto LABEL_6;
  }

  v6 = *(v0 + 1176);
  if (*(v0 + 1228))
  {
    v6 = 0;
  }

  v7 = *(v0 + 40) - v2;
  v8 = v7 * v6;
  if ((v7 * v6) >> 64 != (v7 * v6) >> 63)
  {
    __break(1u);
LABEL_6:
    v8 = 0;
  }

  v9 = *(v0 + 1192);
  v10 = __OFADD__(v9, v8);
  v11 = v9 + v8;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    *(v0 + 1088) = v11;
    v3 = sub_2275B1BA0;
    v4 = 0;
    v5 = 0;
  }

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_2275B2734()
{

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_2275B2824()
{

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_2275B2914()
{

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_2275B2A0C()
{

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_2275B2B08()
{

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_2275B2C04()
{

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_2275B2D00()
{

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_2275B2DFC()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  __swift_destroy_boxed_opaque_existential_0(v0 + 12);

  return swift_deallocClassInstance();
}

unint64_t *sub_2275B2E80(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
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

    v8 = sub_2275B3394(v7, a2, a3, a4);
    swift_bridgeObjectRelease_n();

    return v8;
  }

  return result;
}

void *sub_2275B2F1C(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *), uint64_t a5)
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

    sub_2272C595C(result, a2, a3, a4, a5);
    v11 = v10;

    return v11;
  }

  return result;
}

void sub_2275B2FAC(uint64_t a1, char a2, void *a3)
{
  v38 = *(a1 + 16);
  if (!v38)
  {
    goto LABEL_21;
  }

  LOBYTE(v5) = a2;
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = *(a1 + 56);
  v9 = *(a1 + 48);
  v10 = *a3;
  sub_226EB396C(v7, v6, v9);
  v11 = sub_226F491D8();
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v17 = v12;
  if (v10[3] < v16)
  {
    sub_226FEEFE8(v16, v5 & 1);
    v11 = sub_226F491D8();
    if ((v17 & 1) == (v18 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8560, &unk_227671560);
    v11 = sub_22766D220();
    __break(1u);
  }

  if (v5)
  {
LABEL_7:
    if (v17)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v21 = v11;
  sub_226FF5CF4();
  v11 = v21;
  if (v17)
  {
LABEL_8:
    v19 = swift_allocError();
    swift_willThrow();

    v20 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA3C0, &qword_2276709C0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      sub_226EB2DFC(v7, v6, v9);

      return;
    }

    goto LABEL_25;
  }

LABEL_11:
  v22 = *a3;
  *(*a3 + 8 * (v11 >> 6) + 64) |= 1 << v11;
  v23 = v22[6] + 24 * v11;
  *v23 = v7;
  *(v23 + 8) = v6;
  *(v23 + 16) = v9;
  *(v22[7] + 8 * v11) = v8;
  v24 = v22[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (!v15)
  {
    v22[2] = v25;
    if (v38 != 1)
    {
      v5 = (a1 + 88);
      v26 = 1;
      while (v26 < *(a1 + 16))
      {
        v7 = *(v5 - 3);
        v6 = *(v5 - 2);
        v8 = *v5;
        v9 = *(v5 - 8);
        v27 = *a3;
        sub_226EB396C(v7, v6, v9);
        v28 = sub_226F491D8();
        v30 = v27[2];
        v31 = (v29 & 1) == 0;
        v15 = __OFADD__(v30, v31);
        v32 = v30 + v31;
        if (v15)
        {
          goto LABEL_22;
        }

        v17 = v29;
        if (v27[3] < v32)
        {
          sub_226FEEFE8(v32, 1);
          v28 = sub_226F491D8();
          if ((v17 & 1) != (v33 & 1))
          {
            goto LABEL_5;
          }
        }

        if (v17)
        {
          goto LABEL_8;
        }

        v34 = *a3;
        *(*a3 + 8 * (v28 >> 6) + 64) |= 1 << v28;
        v35 = v34[6] + 24 * v28;
        *v35 = v7;
        *(v35 + 8) = v6;
        *(v35 + 16) = v9;
        *(v34[7] + 8 * v28) = v8;
        v36 = v34[2];
        v15 = __OFADD__(v36, 1);
        v37 = v36 + 1;
        if (v15)
        {
          goto LABEL_23;
        }

        ++v26;
        v34[2] = v37;
        v5 += 4;
        if (v38 == v26)
        {
          goto LABEL_21;
        }
      }

      goto LABEL_24;
    }

LABEL_21:

    return;
  }

LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  sub_22766CE20();
  MEMORY[0x22AA98450](0xD00000000000001BLL, 0x8000000227694E60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8560, &unk_227671560);
  sub_22766CF90();
  MEMORY[0x22AA98450](39, 0xE100000000000000);
  sub_22766CFB0();
  __break(1u);
}

unint64_t *sub_2275B3394(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v26 = result;
  v30 = 0;
  v5 = 0;
  v8 = *(a3 + 64);
  v6 = a3 + 64;
  v7 = v8;
  v9 = 1 << *(v6 - 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & v7;
  v12 = (v9 + 63) >> 6;
  v33 = a4 + 56;
  v28 = v12;
  v29 = v6;
  while (v11)
  {
    v13 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_13:
    if (*(a4 + 16))
    {
      v32 = v11;
      v27 = v13 | (v5 << 6);
      v16 = *(a3 + 48) + 24 * v27;
      v18 = *v16;
      v17 = *(v16 + 8);
      v19 = *(v16 + 16);
      sub_22766D370();
      sub_226EB396C(v18, v17, v19);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8560, &unk_227671560);
      sub_226F480FC();
      sub_227663B10();
      v20 = sub_22766D3F0();
      v21 = -1 << *(a4 + 32);
      v22 = v20 & ~v21;
      if ((*(v33 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22))
      {
        v23 = ~v21;
        sub_226F48150();
        sub_226EC1E18();
        while ((sub_227663B20() & 1) == 0)
        {
          v22 = (v22 + 1) & v23;
          if (((*(v33 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
          {
            goto LABEL_5;
          }
        }

        result = sub_226EB2DFC(v18, v17, v19);
        *(v26 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
        v6 = v29;
        v24 = __OFADD__(v30++, 1);
        v12 = v28;
        v11 = v32;
        if (v24)
        {
          __break(1u);
          return sub_2273297D0(v26, a2, v30, a3);
        }
      }

      else
      {
LABEL_5:
        result = sub_226EB2DFC(v18, v17, v19);
        v12 = v28;
        v6 = v29;
        v11 = v32;
      }
    }
  }

  v14 = v5;
  while (1)
  {
    v5 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v5 >= v12)
    {
      return sub_2273297D0(v26, a2, v30, a3);
    }

    v15 = *(v6 + 8 * v5);
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v11 = (v15 - 1) & v15;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_2275B3674(uint64_t a1, uint64_t a2)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = 8 * v7;
  v9 = swift_bridgeObjectRetain_n();
  if (v6 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v12 = swift_slowAlloc();

      v10 = sub_2275B2E80(v12, v7, a1, a2);
      MEMORY[0x22AA9A450](v12, -1, -1);
      swift_bridgeObjectRelease_n();
      return v10;
    }
  }

  MEMORY[0x28223BE20](v9);
  bzero(v13 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0), v8);

  v10 = sub_2275B3394((v13 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0)), v7, a1, a2);

  if (v2)
  {
    swift_willThrow();
  }

  swift_bridgeObjectRelease_n();
  return v10;
}

uint64_t sub_2275B3834(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC950, &unk_22767F840);
  v4[6] = swift_task_alloc();
  v4[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2275B38E0, 0, 0);
}

void sub_2275B38E0()
{
  v1 = v0[4];
  v2 = sub_227667950();
  v3 = v2;
  v4 = v2 + 56;
  v5 = -1;
  v6 = -1 << *(v2 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(v2 + 56);
  v8 = (63 - v6) >> 6;

  v9 = 0;
  v26 = MEMORY[0x277D84F90];
  while (v7)
  {
    v10 = v7;
LABEL_10:
    v7 = (v10 - 1) & v10;
    if (*(v1 + 16))
    {
      v12 = (*(v3 + 48) + ((v9 << 10) | (16 * __clz(__rbit64(v10)))));
      v13 = *v12;
      v14 = v12[1];

      v15 = sub_226E92000(v13, v14);
      if (v16)
      {
        v17 = *(v1 + 56) + 24 * v15;
        v18 = *v17;
        v19 = *(v17 + 8);
        v24 = *(v17 + 16);
        sub_226EB396C(*v17, v19, v24);

        v25 = v18;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v26 = sub_2273A59E0(0, v26[2] + 1, 1, v26);
        }

        v21 = v26[2];
        v20 = v26[3];
        if (v21 >= v20 >> 1)
        {
          v26 = sub_2273A59E0((v20 > 1), v21 + 1, 1, v26);
        }

        v26[2] = v21 + 1;
        v22 = &v26[3 * v21];
        v22[4] = v25;
        v22[5] = v19;
        *(v22 + 48) = v24;
      }

      else
      {
      }
    }
  }

  while (1)
  {
    v11 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
      return;
    }

    if (v11 >= v8)
    {
      break;
    }

    v10 = *(v4 + 8 * v11);
    ++v9;
    if (v10)
    {
      v9 = v11;
      goto LABEL_10;
    }
  }

  v0[8] = sub_226F43CE0(v26);

  v0[9] = sub_227667940();
  v0[10] = sub_227667960();
  v23 = swift_task_alloc();
  v0[11] = v23;
  *v23 = v0;
  v23[1] = sub_2275B3B5C;

  sub_2275A6B80();
}

uint64_t sub_2275B3B5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v4;
  *(*v4 + 96) = v3;

  if (v3)
  {
    v7[18] = v3;
    v8 = sub_2275B4030;
  }

  else
  {

    v7[13] = a2;
    v7[14] = a1;
    v8 = sub_2275B3CA0;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_2275B3CA0()
{
  v1 = v0[14];
  v2 = v0[8];

  v3 = sub_2275B3674(v1, v2);

  v4 = sub_2274CFDA4(v3);
  LOBYTE(v2) = v5;

  v9 = *&v4;
  if (v2)
  {
    v9 = 0.0;
    v10 = 0;
  }

  else
  {
    v10 = (v4 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000;
  }

  if (v10)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (v9 <= -9.22337204e18)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v9 >= 9.22337204e18)
  {
LABEL_16:
    __break(1u);
    return MEMORY[0x2822009F8](v6, v7, v8);
  }

  if (v0[9] < v9)
  {
    v11 = sub_227664EC0();
    sub_226EAC144(&qword_28139B898, MEMORY[0x277D51210], MEMORY[0x277D51220]);
    v12 = swift_allocError();
    (*(*(v11 - 8) + 104))(v13, *MEMORY[0x277D511F8], v11);
    swift_willThrow();
    v0[18] = v12;
    v6 = sub_2275B4030;
    v7 = 0;
    v8 = 0;

    return MEMORY[0x2822009F8](v6, v7, v8);
  }

  v14 = *(v0[10] + 16);
  v15 = sub_227667250();
  v0[15] = v15;
  v16 = swift_task_alloc();
  v0[16] = v16;
  *v16 = v0;
  v16[1] = sub_2275B3EFC;
  v17 = v0[8];
  v18 = v0[9];
  v19 = v0[7];

  return sub_2275AA00C(v19, v17, v18, v14, v15);
}

uint64_t sub_2275B3EFC(char a1)
{
  v4 = *v2;
  *(*v2 + 136) = v1;

  if (v1)
  {
    v5 = sub_2275B4354;
  }

  else
  {

    *(v4 + 184) = a1 & 1;
    v5 = sub_2275B40BC;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2275B4030()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2275B40BC(uint64_t (*a1)(), uint64_t a2, uint64_t a3)
{
  if (*(v3 + 184) != 1)
  {
    v9 = *(v3 + 48);
    sub_226E93170(*(v3 + 56), v9, &qword_27D7BC950, &unk_22767F840);
    v10 = sub_227664EC0();
    sub_226EAC144(&qword_28139B898, MEMORY[0x277D51210], MEMORY[0x277D51220]);
    v11 = swift_allocError();
    v13 = v12;
    v14 = *(v10 - 8);
    v15 = *(v14 + 48);
    v16 = v15(v9, 1, v10);
    v17 = *(v3 + 48);
    if (v16 == 1)
    {
      (*(v14 + 104))(v13, *MEMORY[0x277D51200], v10);
      if (v15(v17, 1, v10) != 1)
      {
        sub_226E97D1C(*(v3 + 48), &qword_27D7BC950, &unk_22767F840);
      }
    }

    else
    {
      (*(v14 + 32))(v13, *(v3 + 48), v10);
    }

    v18 = *(v3 + 56);
    swift_willThrow();
    sub_226E97D1C(v18, &qword_27D7BC950, &unk_22767F840);
    *(v3 + 144) = v11;
    a1 = sub_2275B4030;
    a2 = 0;
    a3 = 0;

    return MEMORY[0x2822009F8](a1, a2, a3);
  }

  v4 = *(v3 + 72);
  v5 = *(*(v3 + 80) + 16);
  *(v3 + 152) = v4 * v5;
  if ((v4 * v5) >> 64 != (v4 * v5) >> 63)
  {
    __break(1u);
    return MEMORY[0x2822009F8](a1, a2, a3);
  }

  v6 = swift_task_alloc();
  *(v3 + 160) = v6;
  *v6 = v3;
  v6[1] = sub_2275B43C4;
  v7 = *(v3 + 64);

  return sub_2275A8F38(v7, 0, 2);
}

uint64_t sub_2275B4354()
{

  *(v0 + 144) = *(v0 + 136);

  return MEMORY[0x2822009F8](sub_2275B4030, 0, 0);
}

uint64_t sub_2275B43C4(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 168) = v1;

  if (v1)
  {
    v5 = sub_2275B46A8;
  }

  else
  {
    *(v4 + 176) = a1;
    v5 = sub_2275B44EC;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2275B44EC()
{
  if (v0[19] >= v0[22])
  {
    sub_226E97D1C(v0[7], &qword_27D7BC950, &unk_22767F840);

    v5 = v0[1];

    return v5();
  }

  else
  {
    v1 = v0[7];
    v2 = sub_227664EC0();
    sub_226EAC144(&qword_28139B898, MEMORY[0x277D51210], MEMORY[0x277D51220]);
    v3 = swift_allocError();
    (*(*(v2 - 8) + 104))(v4, *MEMORY[0x277D51200], v2);
    swift_willThrow();
    sub_226E97D1C(v1, &qword_27D7BC950, &unk_22767F840);
    v0[18] = v3;

    return MEMORY[0x2822009F8](sub_2275B4030, 0, 0);
  }
}

uint64_t sub_2275B46A8()
{
  sub_226E97D1C(v0[7], &qword_27D7BC950, &unk_22767F840);
  v0[18] = v0[21];

  return MEMORY[0x2822009F8](sub_2275B4030, 0, 0);
}

uint64_t sub_2275B4728(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC950, &unk_22767F840);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_2275B4838@<D0>(uint64_t a1@<X8>)
{
  *a1 = sub_227666FB0();
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  result = sub_227664000() / 60.0;
  *(a1 + 24) = result;
  return result;
}

double sub_2275B48B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20 = a3;
  v5 = sub_22766B3B0();
  v22 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_22766B3F0();
  v8 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22766B3C0();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;
  sub_226EA1CF4();
  (*(v12 + 104))(v14, *MEMORY[0x277D851D0], v11);

  v16 = sub_22766C980();
  (*(v12 + 8))(v14, v11);
  v17 = swift_allocObject();
  v17[2] = v20;
  v17[3] = sub_226EB496C;
  v17[4] = v15;
  aBlock[4] = sub_2275B5430;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_226E9D72C;
  aBlock[3] = &block_descriptor_41;
  v18 = _Block_copy(aBlock);

  sub_22766B3D0();
  v23 = MEMORY[0x277D84F90];
  sub_226E9D3F8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BA240, &unk_227674420);
  sub_226E9D394();
  sub_22766CC80();
  MEMORY[0x22AA98C80](0, v10, v7, v18);
  _Block_release(v18);

  (*(v22 + 8))(v7, v5);
  (*(v8 + 8))(v10, v21);

  return result;
}

void sub_2275B4C3C(uint64_t a1, void (*a2)(void *, void), uint64_t a3)
{
  v41 = a3;
  v42 = a2;
  v40 = a1;
  v3 = sub_22766B390();
  v38 = *(v3 - 8);
  v39 = v3;
  MEMORY[0x28223BE20](v3);
  v37 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v36 = &v35 - v6;
  MEMORY[0x28223BE20](v7);
  v35 = &v35 - v8;
  v9 = sub_227669A90();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = objc_opt_self();
  v14 = [v13 standardUserDefaults];
  v15 = *(v10 + 104);
  v15(v12, *MEMORY[0x277D4F060], v9);
  sub_227669A80();
  v16 = *(v10 + 8);
  v16(v12, v9);
  v17 = sub_22766BFD0();

  [v14 doubleForKey_];
  v19 = v18;

  if (v19 == 0.0)
  {
    v20 = v37;
    sub_22766A730();
    v21 = sub_22766B380();
    v22 = sub_22766C8B0();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      v24 = "Last jetpack update not recorded, updating now";
LABEL_10:
      v32 = v22;
      goto LABEL_11;
    }

    goto LABEL_12;
  }

  v20 = v36;
  sub_2276625E0();
  v26 = v25 - v19;
  sub_22766C510();
  if (v26 >= v27)
  {
    sub_22766A730();
    v21 = sub_22766B380();
    v22 = sub_22766C8B0();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      v24 = "Last jetpack update more than 3 days ago, updating now";
      goto LABEL_10;
    }

LABEL_12:

    (*(v38 + 8))(v20, v39);
    swift_getObjectType();
    sub_2271BD400();
    sub_2276699D0();
    goto LABEL_13;
  }

  v28 = [v13 standardUserDefaults];
  v15(v12, *MEMORY[0x277D4EFC8], v9);
  sub_227669A80();
  v16(v12, v9);
  v29 = sub_22766BFD0();

  v30 = [v28 BOOLForKey_];

  if (v30)
  {
    v20 = v35;
    sub_22766A730();
    v21 = sub_22766B380();
    v31 = sub_22766C8B0();
    if (os_log_type_enabled(v21, v31))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      v24 = "Found a pending server request for jetpack update, updating now";
      v32 = v31;
LABEL_11:
      _os_log_impl(&dword_226E8E000, v21, v32, v24, v23, 2u);
      MEMORY[0x22AA9A450](v23, -1, -1);
      goto LABEL_12;
    }

    goto LABEL_12;
  }

LABEL_13:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA3C0, &qword_2276709C0);
  sub_22766D430();
  v33 = v43;
  v34 = v44;
  v42(v43, v44);
  sub_226EB4548(v33, v34);
}

uint64_t sub_2275B50F0()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0((v0 + 32));

  return swift_deallocClassInstance();
}

void sub_2275B5154()
{
  v0 = sub_227669A90();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_22766B390();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A730();
  sub_22766B370();
  (*(v5 + 8))(v7, v4);
  sub_2276625E0();
  v9 = v8;
  v10 = objc_opt_self();
  v11 = [v10 standardUserDefaults];
  v12 = *(v1 + 104);
  v12(v3, *MEMORY[0x277D4F060], v0);
  sub_227669A80();
  v13 = *(v1 + 8);
  v13(v3, v0);
  v14 = sub_22766BFD0();

  [v11 setDouble:v14 forKey:v9];

  v15 = [v10 standardUserDefaults];
  v12(v3, *MEMORY[0x277D4EFC8], v0);
  sub_227669A80();
  v13(v3, v0);
  v16 = sub_22766BFD0();

  [v15 removeObjectForKey_];
}

void sub_2275B5448(void *a1@<X0>, char *a2@<X8>)
{
  v4 = [a1 shownState];
  if (v4 == 1)
  {
    v5 = 1;
    goto LABEL_5;
  }

  if (!v4)
  {
    v5 = 0;
LABEL_5:

    *a2 = v5;
    return;
  }

  v6 = sub_227664DD0();
  sub_226FC4F70();
  swift_allocError();
  (*(*(v6 - 8) + 104))(v7, *MEMORY[0x277D51028], v6);
  swift_willThrow();
}

uint64_t sub_2275B5554(uint64_t a1, uint64_t a2)
{
  v4 = sub_2275B561C();

  return MEMORY[0x2821B22E0](a1, a2, v4);
}

unint64_t sub_2275B55A0(uint64_t a1)
{
  result = sub_2275B55C8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2275B55C8()
{
  result = qword_27D7BF598;
  if (!qword_27D7BF598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BF598);
  }

  return result;
}

unint64_t sub_2275B561C()
{
  result = qword_27D7BF5A0;
  if (!qword_27D7BF5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BF5A0);
  }

  return result;
}

uint64_t sub_2275B5680(void *a1)
{
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v6 = sub_22766BA40();
  sub_227366BD4(0x6572617764726168, 0xED00006C65646F4DLL, &v3);
  sub_226EBC888(&v3);
  v4 = sub_22766BC40();
  v5 = MEMORY[0x277D22338];
  __swift_allocate_boxed_opaque_existential_0(&v3);
  sub_22766BC30();
  __swift_destroy_boxed_opaque_existential_0(a1);
  return sub_226E92AB8(&v3, a1);
}

uint64_t sub_2275B5754@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v51 = a1;
  v49 = a4;
  v54[5] = *MEMORY[0x277D85DE8];
  v5 = sub_22766B390();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A730();
  sub_22766B370();
  (*(v6 + 8))(v8, v5);
  v54[0] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF5D8, &qword_22768C478);
  sub_2273CCBB4(&qword_27D7BF5E0, &qword_27D7BF5D8, &qword_22768C478);
  v9 = sub_22766C7A0();
  v10 = v9;
  v11 = *(v9 + 16);
  if (!v11)
  {
LABEL_60:

    v42 = sub_227666740();
    sub_2275BB6AC(&qword_28139B638, MEMORY[0x277D52688], MEMORY[0x277D52690]);
    v43 = swift_allocError();
    (*(*(v42 - 8) + 104))(v44, *MEMORY[0x277D52608], v42);
    *(swift_allocObject() + 16) = v43;
    return sub_227669280();
  }

  v12 = 0;
  v50 = 0;
  v13 = v9 + 32;
  v48 = v11;
  while (1)
  {
    if (v12 >= *(v10 + 16))
    {
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      __break(1u);
LABEL_68:
      __break(1u);
LABEL_69:
      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
LABEL_72:
      __break(1u);
LABEL_73:
      __break(1u);
    }

    sub_226E91B50(v13, v54);
    __swift_project_boxed_opaque_existential_0(v54, v54[3]);
    v14 = sub_22766AC80();
    v16 = v15;
    __swift_destroy_boxed_opaque_existential_0(v54);
    v17 = sub_227668B90();
    v19 = v17;
    v20 = v18;
    if (v16 >> 60 == 15)
    {
      if (v18 >> 60 == 15)
      {

        sub_226FB1424(v14, v16);
        return sub_2276692A0();
      }

LABEL_8:
      sub_226FB1424(v14, v16);
      v21 = v19;
      v22 = v20;
LABEL_9:
      sub_226FB1424(v21, v22);
      goto LABEL_10;
    }

    if (v18 >> 60 == 15)
    {
      goto LABEL_8;
    }

    v23 = v16 >> 62;
    v24 = v18 >> 62;
    if (v16 >> 62 == 3)
    {
      v25 = 0;
      if (!v14 && v16 == 0xC000000000000000 && v18 >> 62 == 3)
      {
        v25 = 0;
        if (!v17 && v18 == 0xC000000000000000)
        {
          sub_226FB1424(0, 0xC000000000000000);
          v14 = 0;
          goto LABEL_62;
        }
      }

LABEL_29:
      if (v24 <= 1)
      {
        goto LABEL_30;
      }

      goto LABEL_35;
    }

    if (v23 <= 1)
    {
      if (!v23)
      {
        v25 = BYTE6(v16);
        if (v24 <= 1)
        {
          goto LABEL_30;
        }

        goto LABEL_35;
      }

      LODWORD(v25) = HIDWORD(v14) - v14;
      if (__OFSUB__(HIDWORD(v14), v14))
      {
        goto LABEL_68;
      }

      v25 = v25;
      goto LABEL_29;
    }

    if (v23 == 2)
    {
      v27 = *(v14 + 16);
      v26 = *(v14 + 24);
      v28 = __OFSUB__(v26, v27);
      v25 = v26 - v27;
      if (v28)
      {
        goto LABEL_69;
      }

      goto LABEL_29;
    }

    v25 = 0;
    if (v24 <= 1)
    {
LABEL_30:
      if (v24)
      {
        LODWORD(v29) = HIDWORD(v17) - v17;
        if (__OFSUB__(HIDWORD(v17), v17))
        {
          goto LABEL_66;
        }

        v29 = v29;
      }

      else
      {
        v29 = BYTE6(v18);
      }

      goto LABEL_37;
    }

LABEL_35:
    if (v24 != 2)
    {
      break;
    }

    v31 = *(v17 + 16);
    v30 = *(v17 + 24);
    v28 = __OFSUB__(v30, v31);
    v29 = v30 - v31;
    if (v28)
    {
      goto LABEL_67;
    }

LABEL_37:
    if (v25 != v29)
    {
      goto LABEL_43;
    }

    if (v25 < 1)
    {
      goto LABEL_61;
    }

    if (v23 > 1)
    {
      if (v23 != 2)
      {
        memset(v53, 0, 14);
        sub_226FB1554(v14, v16);
        sub_226FB1554(v19, v20);
        goto LABEL_57;
      }

      v32 = *(v14 + 16);
      v47 = *(v14 + 24);
      sub_226FB1554(v14, v16);
      sub_226FB1554(v19, v20);
      v33 = sub_227662060();
      if (v33)
      {
        v34 = sub_227662090();
        if (__OFSUB__(v32, v34))
        {
          goto LABEL_72;
        }

        v33 += v32 - v34;
      }

      if (__OFSUB__(v47, v32))
      {
        goto LABEL_71;
      }

      sub_227662080();
      v35 = v33;
      v36 = v19;
      v37 = v20;
      v38 = v50;
    }

    else
    {
      if (!v23)
      {
        v53[0] = v14;
        LOWORD(v53[1]) = v16;
        BYTE2(v53[1]) = BYTE2(v16);
        BYTE3(v53[1]) = BYTE3(v16);
        BYTE4(v53[1]) = BYTE4(v16);
        BYTE5(v53[1]) = BYTE5(v16);
        sub_226FB1554(v14, v16);
        sub_226FB1554(v19, v20);
LABEL_57:
        v38 = v50;
        sub_2275BA344(v53, v19, v20, &v52);
        sub_226FB1424(v19, v20);
        sub_226FB1424(v14, v16);
        sub_226FB1424(v19, v20);
        v41 = v52;
        goto LABEL_58;
      }

      if (v14 >> 32 < v14)
      {
        goto LABEL_70;
      }

      v47 = (v14 >> 32) - v14;
      sub_226FB1554(v14, v16);
      sub_226FB1554(v19, v20);
      v39 = sub_227662060();
      if (v39)
      {
        v40 = sub_227662090();
        if (__OFSUB__(v14, v40))
        {
          goto LABEL_73;
        }

        v39 += v14 - v40;
      }

      v38 = v50;
      sub_227662080();
      v35 = v39;
      v36 = v19;
      v37 = v20;
    }

    sub_2275BA344(v35, v36, v37, v53);
    sub_226FB1424(v19, v20);
    sub_226FB1424(v14, v16);
    sub_226FB1424(v19, v20);
    v41 = v53[0];
LABEL_58:
    sub_226FB1424(v14, v16);
    if (v41)
    {
      goto LABEL_63;
    }

    v50 = v38;
    v11 = v48;
LABEL_10:
    ++v12;
    v13 += 40;
    if (v11 == v12)
    {
      goto LABEL_60;
    }
  }

  if (v25)
  {
LABEL_43:
    sub_226FB1424(v17, v18);
    v21 = v14;
    v22 = v16;
    goto LABEL_9;
  }

LABEL_61:
  sub_226FB1424(v17, v18);
LABEL_62:
  sub_226FB1424(v14, v16);
LABEL_63:

  return sub_2276692A0();
}

void sub_2275B5E70(void *a1, uint64_t a2)
{
  v56 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCED8, &qword_227682028);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v51 - v4;
  v6 = sub_227668BB0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v55 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22766B390();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for RemoteBrowsingGuestPairingVerifier.Verification(0);
  MEMORY[0x28223BE20](v13);
  v54 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v53 = a1;
  v18 = *a1;
  if (*(v18 + 16))
  {
    v52 = v12;
    v19 = &v51 - v16;
    v20 = v5;
    v21 = v9;
    v22 = v7;
    v23 = v6;
    v24 = v17;
    v25 = sub_226F3B28C(v56);
    v26 = v24;
    v27 = v23;
    v28 = v22;
    v29 = v21;
    v30 = v20;
    v31 = v13;
    v32 = v19;
    v33 = v10;
    v34 = v52;
    if (v35)
    {
      v36 = *(v18 + 56) + *(v26 + 72) * v25;
      v37 = v54;
      v51 = v26;
      sub_2275BA59C(v36, v54);
      sub_2275BAD08(v37, v32);
      sub_22766A730();
      sub_22766B370();
      (*(v33 + 8))(v34, v29);
      (*(v28 + 16))(v55, v56, v27);
      v39 = *v32;
      v38 = *(v32 + 1);
      sub_226E91B50((v32 + 16), (v30 + 16));
      v40 = v31[6];
      v41 = sub_227662750();
      v42 = *(v41 - 8);
      (*(v42 + 16))(&v30[v40], &v32[v40], v41);
      v43 = *&v32[v31[7]];
      v44 = v43 + 1;
      if (__OFADD__(v43, 1))
      {
        __break(1u);
      }

      else
      {
        v45 = v39;
        v46 = v31[8];

        sub_227662720();
        (*(v42 + 56))(&v30[v46], 0, 1, v41);
        v47 = &v32[v31[9]];
        v48 = *v47;
        v49 = *(v47 + 1);
        *v30 = v45;
        *(v30 + 1) = v38;
        *&v30[v31[7]] = v44;
        v50 = &v30[v31[9]];
        *v50 = v48;
        *(v50 + 1) = v49;
        (*(v51 + 56))(v30, 0, 1, v31);

        sub_2273647D4(v30, v55);
        sub_2275BA600(v32);
      }
    }
  }
}

uint64_t sub_2275B62B4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v6 = type metadata accessor for RemoteBrowsingGuestPairingVerifier.Verification(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = (&v26 - v11);
  v13 = sub_22766B390();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A730();
  sub_22766B370();
  result = (*(v14 + 8))(v16, v13);
  v18 = *a1;
  v19 = *(*a1 + 16);
  if (v19)
  {
    result = sub_226F3B28C(a2);
    if (v20)
    {
      sub_2275BA59C(*(v18 + 56) + *(v7 + 72) * result, v9);
      sub_2275BAD08(v9, v12);
      v21 = *v12;
      v22 = v12[1];
      if (v21 == sub_227668BA0() && v22 == v23)
      {
        v25 = 1;
      }

      else
      {
        v25 = sub_22766D190();
      }

      result = sub_2275BA600(v12);
      LOBYTE(v19) = v25 & 1;
    }

    else
    {
      LOBYTE(v19) = 0;
    }
  }

  *a3 = v19;
  return result;
}

void sub_2275B6500(void *a1, void *a2, uint64_t a3, ValueMetadata *a4)
{
  v76 = a4;
  v85 = a3;
  v6 = sub_22766B390();
  v81 = *(v6 - 8);
  v82 = v6;
  MEMORY[0x28223BE20](v6);
  v80 = &v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9690, qword_227670B50);
  MEMORY[0x28223BE20](v8 - 8);
  v73 = &v70 - v9;
  v79 = sub_227662750();
  v77 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v72 = &v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v75 = &v70 - v12;
  MEMORY[0x28223BE20](v13);
  v78 = &v70 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD6D0, &qword_22768C440);
  MEMORY[0x28223BE20](v15);
  v83 = (&v70 - v16);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCED8, &qword_227682028);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v70 - v18;
  v20 = sub_227668BB0();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v70 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = type metadata accessor for RemoteBrowsingGuestPairingVerifier.Verification(0);
  v24 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v26 = &v70 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v86 = (&v70 - v28);
  v74 = a1;
  v29 = *a1;
  if (*(v29 + 16))
  {
    v30 = sub_226F3B28C(a2);
    if (v31)
    {
      sub_2275BA59C(*(v29 + 56) + *(v24 + 72) * v30, v26);
      v32 = v26;
      v33 = v86;
      sub_2275BAD08(v32, v86);
      v71 = a2;
      if (sub_227668BA0() == *v33 && v34 == v33[1])
      {
      }

      else
      {
        v35 = sub_22766D190();

        if ((v35 & 1) == 0)
        {
LABEL_15:
          sub_2275BA600(v86);
          return;
        }
      }

      (*(v21 + 16))(v23, v71, v20);
      v36 = v84;
      (*(v24 + 56))(v19, 1, 1, v84);
      sub_2273647D4(v19, v23);
      v37 = v85;
      v38 = v83;
      sub_226E93170(v85, v83, &qword_27D7BD6D0, &qword_22768C440);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v39 = *v38;
        __swift_project_boxed_opaque_existential_0(&v76[1].Kind, v76[2].Description);
        v40 = v75;
        sub_227662720();
        v41 = v86;
        sub_227662680();
        v43 = v42;
        (*(v77 + 8))(v40, v79);
        v44 = *(v41 + *(v36 + 28));
        v89 = &type metadata for GuestPairingVerifierAnalyticsEvent;
        v90 = sub_2275BACB4();
        v45 = swift_allocObject();
        v88[0] = v45;
        v45[2] = v43;
        v45[3] = 0;
        v45[4] = v44;
        v45[5] = v39;
        v46 = v39;
        sub_227669B60();

        __swift_destroy_boxed_opaque_existential_0(v88);
      }

      else
      {
        v47 = v78;
        sub_227662720();
        sub_226E91B50(&v76[1], v88);
        v74 = v90;
        v76 = v89;
        v71 = __swift_project_boxed_opaque_existential_0(v88, v89);
        v48 = v75;
        sub_227662720();
        v41 = v86;
        sub_227662680();
        v50 = v49;
        v51 = v77;
        v52 = *(v77 + 8);
        v53 = v48;
        v54 = v36;
        v55 = v79;
        v52(v53, v79);
        v56 = v73;
        sub_226E93170(v41 + *(v54 + 32), v73, &qword_27D7B9690, qword_227670B50);
        v57 = *(v51 + 48);
        if (v57(v56, 1, v55) == 1)
        {
          v58 = v47;
          v59 = v72;
          (*(v51 + 16))(v72, v58, v55);
          v60 = v57(v56, 1, v55);
          v61 = v59;
          if (v60 != 1)
          {
            sub_226E97D1C(v56, &qword_27D7B9690, qword_227670B50);
          }
        }

        else
        {
          v61 = v72;
          (*(v51 + 32))(v72, v56, v55);
        }

        v62 = v78;
        sub_227662680();
        v64 = v63;
        v52(v61, v55);
        v65 = v84;
        v66 = *(v41 + *(v84 + 28));
        v87[3] = &type metadata for GuestPairingVerifierAnalyticsEvent;
        v87[4] = sub_2275BACB4();
        v67 = swift_allocObject();
        v87[0] = v67;
        v67[2] = v50;
        v67[3] = v64;
        v67[4] = v66;
        v67[5] = 0;
        sub_227669B60();
        v68 = v55;
        v36 = v65;
        v52(v62, v68);
        __swift_destroy_boxed_opaque_existential_0(v87);
        __swift_destroy_boxed_opaque_existential_0(v88);
        sub_226E97D1C(v83, &qword_27D7BD6D0, &qword_22768C440);
        v37 = v85;
      }

      v69 = v80;
      sub_22766A730();
      sub_22766B370();
      (*(v81 + 8))(v69, v82);
      (*(v41 + *(v36 + 36)))(v37);
      goto LABEL_15;
    }
  }
}

uint64_t sub_2275B6D68()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v0 + 14);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for RemoteBrowsingGuestPairingVerifier.Verification(uint64_t a1)
{
  result = qword_28139D8C0;
  if (!qword_28139D8C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2275B6E58(uint64_t a1)
{
  sub_22713E174();
  if (v1 <= 0x3F)
  {
    sub_227662750();
    if (v2 <= 0x3F)
    {
      sub_2270503BC(319);
      if (v3 <= 0x3F)
      {
        sub_227551450();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_2275B6F24(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_22766B390();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A730();
  sub_22766B370();
  (*(v6 + 8))(v8, v5);
  v9 = *(a1 + 152);

  os_unfair_lock_lock((v9 + 24));
  sub_2275BA65C((v9 + 16), &v12);
  os_unfair_lock_unlock((v9 + 24));
  if (v2)
  {
    __break(1u);
  }

  else
  {
    v10 = v12;

    *a2 = v10;
  }
}

void sub_2275B708C(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{

  v7 = sub_2275BA7DC(v6, a2);
  swift_bridgeObjectRelease_n();

  *a1 = MEMORY[0x277D84F98];
  *a3 = v7;
}

void sub_2275B7110(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD6D0, &qword_22768C440);
  MEMORY[0x28223BE20](v30);
  v5 = (v24 - v4);
  v29 = type metadata accessor for RemoteBrowsingGuestPairingVerifier.Verification(0);
  v6 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v8 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v9 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v11 = v24 - v10;
  v12 = *a1;
  v13 = *(*a1 + 16);
  v14 = MEMORY[0x277D84F90];
  if (v13)
  {
    v24[1] = a2;
    v31 = MEMORY[0x277D84F90];
    sub_226F1F4E8(0, v13, 0);
    v14 = v31;
    v15 = v12 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v26 = *(v6 + 72);
    v25 = *MEMORY[0x277D51BA0];
    v24[2] = v9 + 32;
    v27 = v9;
    do
    {
      sub_2275BA59C(v15, v8);
      v16 = v11;
      v17 = *&v8[*(v29 + 36)];
      v18 = sub_227665A60();
      sub_2275BB6AC(&qword_27D7BD250, MEMORY[0x277D51BF0], MEMORY[0x277D51BF8]);
      v19 = swift_allocError();
      (*(*(v18 - 8) + 104))(v20, v25, v18);
      *v5 = v19;
      swift_storeEnumTagMultiPayload();
      v17(v5);
      v11 = v16;
      sub_226E97D1C(v5, &qword_27D7BD6D0, &qword_22768C440);
      __swift_project_boxed_opaque_existential_0(v8 + 2, *(v8 + 5));
      sub_22766AD00();
      sub_2275BA600(v8);
      v31 = v14;
      v22 = *(v14 + 16);
      v21 = *(v14 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_226F1F4E8((v21 > 1), v22 + 1, 1);
        v14 = v31;
      }

      *(v14 + 16) = v22 + 1;
      (*(v27 + 32))(v14 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v22, v16, v28);
      v15 += v26;
      --v13;
    }

    while (v13);
  }

  v31 = v14;
  sub_226EA1CF4();
  v23 = sub_22766C950();
  sub_227669A50();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA0C8, qword_227677C60);
  sub_2273CCBB4(&qword_281398FB0, &qword_27D7BA0C8, qword_227677C60);
  sub_227669260();
}

uint64_t sub_2275B7524(void (*a1)(void **), void (*a2)(void), uint64_t a3, uint64_t a4)
{
  v96 = a4;
  v93 = a2;
  v83 = sub_227668BB0();
  v95 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v88 = v6;
  v89 = &v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v85 = *(v86 - 8);
  v7 = *(v85 + 64);
  MEMORY[0x28223BE20](v86);
  v82 = &v73 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v94 = &v73 - v9;
  MEMORY[0x28223BE20](v10);
  v91 = &v73 - v11;
  MEMORY[0x28223BE20](v12);
  v84 = &v73 - v13;
  v78 = sub_22766B390();
  v77 = *(v78 - 1);
  MEMORY[0x28223BE20](v78);
  v76 = &v73 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for RemoteBrowsingGuestPairingVerifier.Verification(0);
  v79 = *(v15 - 8);
  v16 = *(v79 + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v80 = (&v73 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v17);
  v90 = &v73 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD6D0, &qword_22768C440);
  MEMORY[0x28223BE20](v19);
  v21 = (&v73 - v20);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF5B8, &qword_22768C448);
  MEMORY[0x28223BE20](v22);
  v24 = (&v73 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v25);
  v27 = (&v73 - v26);
  v28 = *(a3 + 152);
  v97 = v96;
  v98 = a3;
  v92 = a3;
  v81 = a1;
  v99 = a1;
  v100 = v93;

  os_unfair_lock_lock((v28 + 24));
  sub_2275BADF0((v28 + 16), v27);
  os_unfair_lock_unlock((v28 + 24));

  v87 = v27;
  sub_226E93170(v27, v24, &qword_27D7BF5B8, &qword_22768C448);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v29 = *v24;
    *v21 = *v24;
    swift_storeEnumTagMultiPayload();
    v30 = v29;
    v81(v21);

    sub_226E97D1C(v21, &qword_27D7BD6D0, &qword_22768C440);
  }

  else
  {
    v31 = v90;
    sub_2275BAD08(v24, v90);
    v32 = v76;
    sub_22766A730();
    sub_22766B370();
    (*(v77 + 8))(v32, v78);
    v102 = 0;
    memset(v101, 0, sizeof(v101));
    sub_2276693D0();
    v33 = v94;
    sub_227668B60();
    sub_226E97D1C(v101, &qword_27D7BE4C8, &unk_22768C450);
    v34 = v80;
    sub_2275BA59C(v31, v80);
    v35 = v95;
    v36 = *(v95 + 16);
    v81 = (v95 + 16);
    v93 = v36;
    v74 = v7;
    v37 = v89;
    v38 = v16;
    v39 = v83;
    v36();
    v40 = (*(v79 + 80) + 16) & ~*(v79 + 80);
    v41 = *(v35 + 80);
    v42 = v35;
    v43 = (v38 + v41 + v40) & ~v41;
    v79 = v41 | 7;
    v44 = (v88 + v43 + 7) & 0xFFFFFFFFFFFFFFF8;
    v45 = swift_allocObject();
    sub_2275BAD08(v34, v45 + v40);
    v46 = *(v42 + 32);
    v95 = v42 + 32;
    v80 = v46;
    v47 = v37;
    v48 = v39;
    (v46)(v45 + v43, v47, v39);
    *(v45 + v44) = v92;
    v49 = swift_allocObject();
    *(v49 + 16) = sub_2275BAE10;
    *(v49 + 24) = v45;
    v50 = v85;
    v51 = *(v85 + 16);
    v77 = v85 + 16;
    v78 = v51;
    v52 = v82;
    v53 = v33;
    v54 = v86;
    v51(v82, v53, v86);
    v55 = (*(v50 + 80) + 16) & ~*(v50 + 80);
    v76 = *(v50 + 80);
    v75 = v55;
    v56 = (v74 + v55 + 7) & 0xFFFFFFFFFFFFFFF8;
    v73 = v56;
    v57 = swift_allocObject();
    v74 = *(v50 + 32);
    v74(v57 + v55, v52, v54);
    v58 = (v57 + v56);
    *v58 = sub_227086964;
    v58[1] = v49;
    v59 = v92;

    sub_227669270();
    v85 = *(v50 + 8);
    (v85)(v94, v54);
    v60 = v89;
    (v93)(v89, v96, v48);
    v61 = swift_allocObject();
    *(v61 + 16) = v59;
    (v80)(v61 + ((v41 + 24) & ~v41), v60, v48);
    v62 = swift_allocObject();
    *(v62 + 16) = sub_2275BAF10;
    *(v62 + 24) = v61;
    v63 = v94;
    v64 = v91;
    v78(v94, v91, v54);
    v65 = v73;
    v66 = swift_allocObject();
    v74(v66 + v75, v63, v54);
    v67 = (v66 + v65);
    *v67 = sub_226F5AAF8;
    v67[1] = v62;

    v68 = v84;
    sub_227669270();
    v69 = v85;
    (v85)(v64, v54);
    v70 = sub_227669290();
    v71 = swift_allocObject();
    *(v71 + 16) = 0;
    *(v71 + 24) = 0;
    v70(sub_226E9F7B0, v71);

    v69(v68, v54);
    sub_2275BA600(v90);
  }

  return sub_226E97D1C(v87, &qword_27D7BF5B8, &qword_22768C448);
}

uint64_t sub_2275B7F2C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v57 = a4;
  v58 = a5;
  v55 = a3;
  v62 = a6;
  v8 = sub_22766B390();
  v53 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v54 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_227668BB0();
  v60 = *(v10 - 8);
  v61 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v56 = &v52 - v14;
  v15 = type metadata accessor for RemoteBrowsingGuestPairingVerifier.Verification(0);
  v16 = *(v15 - 1);
  MEMORY[0x28223BE20](v15);
  v18 = (&v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCED8, &qword_227682028);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v52 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23.n128_f64[0] = MEMORY[0x28223BE20](v22);
  v25 = &v52 - v24;
  v59 = a1;
  v26 = *a1;
  if (*(v26 + 16) && (v27 = sub_226F3B28C(a2), (v28 & 1) != 0))
  {
    v59 = v8;
    sub_2275BA59C(*(v26 + 56) + *(v16 + 72) * v27, v25);
    (*(v16 + 56))(v25, 0, 1, v15);
    sub_226E97D1C(v25, &qword_27D7BCED8, &qword_227682028);
    v29 = v54;
    sub_22766A730();
    v30 = v60;
    v31 = v61;
    (*(v60 + 16))(v12, a2, v61);
    v32 = sub_22766B380();
    v33 = sub_22766C890();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v63 = v35;
      *v34 = 136446210;
      sub_2275BB6AC(&qword_27D7BB3E0, MEMORY[0x277D537B0], MEMORY[0x277D537C8]);
      v36 = sub_22766D140();
      v38 = v37;
      (*(v30 + 8))(v12, v31);
      v39 = sub_226E97AE8(v36, v38, &v63);

      *(v34 + 4) = v39;
      _os_log_impl(&dword_226E8E000, v32, v33, "Already verifying guest pairing request for handshake %{public}s", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v35);
      MEMORY[0x22AA9A450](v35, -1, -1);
      MEMORY[0x22AA9A450](v34, -1, -1);

      (*(v53 + 8))(v54, v59);
    }

    else
    {

      (*(v30 + 8))(v12, v31);
      (*(v53 + 8))(v29, v59);
    }

    v48 = sub_227665A60();
    sub_2275BB6AC(&qword_27D7BD250, MEMORY[0x277D51BF0], MEMORY[0x277D51BF8]);
    v49 = swift_allocError();
    (*(*(v48 - 8) + 104))(v50, *MEMORY[0x277D51BC8], v48);
    *v62 = v49;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF5B8, &qword_22768C448);
  }

  else
  {
    v54 = *(v16 + 56);
    (v54)(v25, 1, 1, v15, v23);
    sub_226E97D1C(v25, &qword_27D7BCED8, &qword_227682028);
    v40 = sub_227668BA0();
    v42 = v41;
    __swift_project_boxed_opaque_existential_0(v55 + 7, v55[10]);
    sub_22766AD70();
    sub_227662720();
    v43 = v15[8];
    v44 = sub_227662750();
    (*(*(v44 - 8) + 56))(v18 + v43, 1, 1, v44);
    *v18 = v40;
    v18[1] = v42;
    *(v18 + v15[7]) = 0;
    v45 = (v18 + v15[9]);
    v46 = v58;
    *v45 = v57;
    v45[1] = v46;
    v47 = v56;
    (*(v60 + 16))(v56, a2, v61);
    sub_2275BA59C(v18, v21);
    (v54)(v21, 0, 1, v15);

    sub_2273647D4(v21, v47);
    sub_2275BAD08(v18, v62);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF5B8, &qword_22768C448);
  }

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_2275B85D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v41 = a4;
  v7 = sub_227668BB0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA2A0, &qword_22768C460);
  v10 = *(v40 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v40);
  v39 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v33 - v13;
  sub_226E91B50(a1 + 16, v44);
  v36 = v46;
  v37 = v45;
  v35 = __swift_project_boxed_opaque_existential_0(v44, v45);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF5C0, &qword_22768C468);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_227670CD0;
  v38 = a2;
  v16 = sub_227668B70();
  if (v17 == -1)
  {
    *(inited + 32) = 4;

    v19 = MEMORY[0x277D84F90];
  }

  else
  {
    v34 = a3;
    v42 = v16;
    v43 = v17 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF5C8, &qword_22768C470);
    sub_227663B00();
    v18 = *(inited + 32);

    if (v18 == 4)
    {
      v19 = MEMORY[0x277D84F90];
    }

    else
    {
      v19 = sub_2273A7268(0, 1, 1, MEMORY[0x277D84F90]);
      v21 = *(v19 + 2);
      v20 = *(v19 + 3);
      v22 = v21 + 1;
      if (v21 >= v20 >> 1)
      {
        v33 = v21 + 1;
        v32 = sub_2273A7268((v20 > 1), v21 + 1, 1, v19);
        v22 = v33;
        v19 = v32;
      }

      *(v19 + 2) = v22;
      v19[v21 + 32] = v18;
    }

    a3 = v34;
  }

  sub_226F47FF4(v19);

  (*(v8 + 16))(&v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v38, v7);
  v23 = (*(v8 + 80) + 24) & ~*(v8 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = a3;
  (*(v8 + 32))(v24 + v23, &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v7);

  sub_22766AD20();

  v25 = swift_allocObject();
  *(v25 + 16) = nullsub_1;
  *(v25 + 24) = 0;
  v27 = v39;
  v26 = v40;
  (*(v10 + 16))(v39, v14, v40);
  v28 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v29 = swift_allocObject();
  (*(v10 + 32))(v29 + v28, v27, v26);
  v30 = (v29 + ((v11 + v28 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v30 = sub_2275BB118;
  v30[1] = v25;
  sub_227669270();
  (*(v10 + 8))(v14, v26);
  return __swift_destroy_boxed_opaque_existential_0(v44);
}

uint64_t sub_2275B8A3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v114 = a3;
  v115 = a4;
  v119 = a2;
  v124 = a7;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD5F0, &qword_227684C80);
  v110 = *(v111 - 8);
  MEMORY[0x28223BE20](v111);
  v109 = &v96 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = v10;
  MEMORY[0x28223BE20](v11);
  v127 = &v96 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v116 = *(v13 - 8);
  v117 = v13;
  MEMORY[0x28223BE20](v13);
  v113 = &v96 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = v14;
  MEMORY[0x28223BE20](v15);
  v123 = &v96 - v16;
  v17 = sub_227668BB0();
  v18 = *(v17 - 8);
  v128 = v17;
  v129 = v18;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v122 = &v96 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v96 - v21;
  v23 = sub_227665350();
  v125 = *(v23 - 8);
  v126 = v23;
  MEMORY[0x28223BE20](v23);
  v120 = v24;
  v121 = &v96 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v27 = &v96 - v26;
  v103 = sub_22766B390();
  v102 = *(v103 - 1);
  MEMORY[0x28223BE20](v103);
  v29 = &v96 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = *(a5 + 152);
  v130 = a6;

  os_unfair_lock_lock((v30 + 24));
  sub_2275BB154((v30 + 16), &v131);
  os_unfair_lock_unlock((v30 + 24));
  v31 = v131;

  if (v31 == 1)
  {
    v118 = a5;
    v33 = *(a5 + 152);
    MEMORY[0x28223BE20](v32);
    *(&v96 - 2) = a6;

    os_unfair_lock_lock((v33 + 24));
    sub_2275BB170((v33 + 16));
    os_unfair_lock_unlock((v33 + 24));

    sub_22766A730();
    v34 = *(v125 + 16);
    v107 = v125 + 16;
    v106 = v34;
    v34(v27, a1, v126);
    v35 = *(v129 + 16);
    v105 = v129 + 16;
    v104 = v35;
    v35(v22, a6, v128);
    v36 = sub_22766B380();
    v37 = sub_22766C8B0();
    v38 = os_log_type_enabled(v36, v37);
    v101 = a1;
    v100 = a6;
    v99 = v19;
    if (v38)
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v131 = v40;
      *v39 = 136446466;
      sub_2275BB6AC(&qword_27D7BF5D0, MEMORY[0x277D515D0], MEMORY[0x277D515E8]);
      v41 = v36;
      v42 = v37;
      v43 = v126;
      v44 = sub_22766D140();
      v46 = v45;
      (*(v125 + 8))(v27, v43);
      v47 = sub_226E97AE8(v44, v46, &v131);

      *(v39 + 4) = v47;
      *(v39 + 12) = 2082;
      sub_2275BB6AC(&qword_27D7BB3E0, MEMORY[0x277D537B0], MEMORY[0x277D537C8]);
      v48 = v128;
      v49 = sub_22766D140();
      v51 = v50;
      (*(v129 + 8))(v22, v48);
      v52 = sub_226E97AE8(v49, v51, &v131);

      *(v39 + 14) = v52;
      _os_log_impl(&dword_226E8E000, v41, v42, "Handshaking with %{public}s matching %{public}s...", v39, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AA9A450](v40, -1, -1);
      v53 = v39;
      a6 = v100;
      v54 = v101;
      MEMORY[0x22AA9A450](v53, -1, -1);
    }

    else
    {
      v54 = a1;

      (*(v129 + 8))(v22, v128);
      (*(v125 + 8))(v27, v126);
    }

    (*(v102 + 8))(v29, v103);
    v59 = v118;
    __swift_project_boxed_opaque_existential_0((v118 + 112), *(v118 + 136));
    sub_22766C9A0();
    sub_22766ACB0();
    v60 = v122;
    v61 = v128;
    v104(v122, a6, v128);
    v62 = v121;
    v63 = v126;
    v106(v121, v54, v126);
    v64 = v129;
    v97 = *(v129 + 80);
    v65 = (v97 + 24) & ~v97;
    v66 = v125;
    v98 = *(v125 + 80);
    v99 += v98;
    v67 = (v99 + v65) & ~v98;
    v102 = v97 | v98;
    v68 = swift_allocObject();
    *(v68 + 16) = v59;
    v103 = *(v64 + 32);
    v129 = v64 + 32;
    v103(v68 + v65, v60, v61);
    v125 = *(v66 + 32);
    v69 = v63;
    (v125)(v68 + v67, v62, v63);
    v70 = v110;
    v71 = v109;
    v72 = v111;
    (*(v110 + 16))(v109, v127, v111);
    v73 = (*(v70 + 80) + 16) & ~*(v70 + 80);
    v74 = (v108 + v73 + 7) & 0xFFFFFFFFFFFFFFF8;
    v75 = swift_allocObject();
    (*(v70 + 32))(v75 + v73, v71, v72);
    v76 = (v75 + v74);
    *v76 = sub_2275BB18C;
    v76[1] = v68;
    v77 = v118;

    sub_227669270();
    (*(v70 + 8))(v127, v72);
    v78 = v122;
    v79 = v128;
    v104(v122, v100, v128);
    v80 = v121;
    v81 = v69;
    v106(v121, v101, v69);
    v82 = (v97 + 48) & ~v97;
    v83 = (v99 + v82) & ~v98;
    v84 = swift_allocObject();
    v85 = v119;
    v84[2] = v77;
    v84[3] = v85;
    v86 = v115;
    v84[4] = v114;
    v84[5] = v86;
    v103(v84 + v82, v78, v79);
    (v125)(v84 + v83, v80, v81);
    v87 = swift_allocObject();
    *(v87 + 16) = sub_2275BB294;
    *(v87 + 24) = v84;
    v89 = v116;
    v88 = v117;
    v90 = v113;
    v91 = v123;
    (*(v116 + 16))(v113, v123, v117);
    v92 = (*(v89 + 80) + 16) & ~*(v89 + 80);
    v93 = (v112 + v92 + 7) & 0xFFFFFFFFFFFFFFF8;
    v94 = swift_allocObject();
    (*(v89 + 32))(v94 + v92, v90, v88);
    v95 = (v94 + v93);
    *v95 = sub_22732067C;
    v95[1] = v87;

    swift_unknownObjectRetain();
    sub_227669270();
    return (*(v89 + 8))(v91, v88);
  }

  else
  {
    v55 = sub_227665A60();
    sub_2275BB6AC(&qword_27D7BD250, MEMORY[0x277D51BF0], MEMORY[0x277D51BF8]);
    v56 = swift_allocError();
    (*(*(v55 - 8) + 104))(v57, *MEMORY[0x277D51BB0], v55);
    *(swift_allocObject() + 16) = v56;
    return sub_227669280();
  }
}

uint64_t sub_2275B966C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v61 = a5;
  v62 = a6;
  v49 = a4;
  v51 = a3;
  v47 = a2;
  v7 = sub_227668BB0();
  v58 = *(v7 - 8);
  v59 = v7;
  v60 = *(v58 + 64);
  MEMORY[0x28223BE20](v7);
  v56 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_227665350();
  v9 = *(v50 - 8);
  v54 = *(v9 + 64);
  MEMORY[0x28223BE20](v50);
  v48 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_227669A70();
  v11 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBB78, &qword_22767BC10);
  v53 = *(v57 - 8);
  v55 = *(v53 + 64);
  MEMORY[0x28223BE20](v57);
  v52 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v44 = &v44 - v16;
  v17 = sub_22766A790();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = a1;
  swift_getObjectType();
  sub_22766A780();
  sub_2276699D0();
  (*(v18 + 8))(v20, v17);
  swift_getObjectType();
  v21 = v45;
  (*(v11 + 104))(v13, *MEMORY[0x277D4EC70], v45);
  v22 = v49;
  v63 = sub_227668BA0();
  v64 = v23;
  sub_227667670();
  sub_227669610();

  (*(v11 + 8))(v13, v21);
  v24 = v48;
  v25 = v50;
  (*(v9 + 16))(v48, v61, v50);
  v26 = v58;
  v27 = v56;
  v28 = v22;
  v29 = v59;
  (*(v58 + 16))(v56, v28, v59);
  v30 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v31 = v26;
  v32 = (v54 + *(v26 + 80) + v30) & ~*(v26 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = v46;
  (*(v9 + 32))(v33 + v30, v24, v25);
  (*(v31 + 32))(v33 + v32, v27, v29);
  v34 = swift_allocObject();
  *(v34 + 16) = sub_2275BB4D0;
  *(v34 + 24) = v33;
  v35 = v52;
  v36 = v53;
  v37 = v44;
  v38 = v57;
  (*(v53 + 16))(v52, v44, v57);
  v39 = (*(v36 + 80) + 16) & ~*(v36 + 80);
  v40 = (v55 + v39 + 7) & 0xFFFFFFFFFFFFFFF8;
  v41 = swift_allocObject();
  (*(v36 + 32))(v41 + v39, v35, v38);
  v42 = (v41 + v40);
  *v42 = sub_2275BB5B4;
  v42[1] = v34;

  sub_227669270();
  return (*(v36 + 8))(v37, v38);
}

void sub_2275B9C64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21 = a1;
  v22 = a4;
  v20 = a3;
  v5 = sub_227667670();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_227665350();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD6D0, &qword_22768C440);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v19 - v15;
  (*(v10 + 16))(v12, v20, v9, v14);
  (*(v6 + 16))(v8, v21, v5);
  sub_227668710();
  swift_storeEnumTagMultiPayload();
  v17 = *(a2 + 152);
  v23 = v22;
  v24 = v16;
  v25 = a2;

  os_unfair_lock_lock((v17 + 24));
  v18 = v26;
  sub_2275BB6F4((v17 + 16));
  os_unfair_lock_unlock((v17 + 24));
  if (v18)
  {
    __break(1u);
  }

  else
  {

    sub_226E97D1C(v16, &qword_27D7BD6D0, &qword_22768C440);
  }
}

void sub_2275B9EC4(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD6D0, &qword_22768C440);
  MEMORY[0x28223BE20](v7);
  v9 = &v12[-v8];
  *&v12[-v8] = a1;
  swift_storeEnumTagMultiPayload();
  v10 = *(a2 + 152);
  v13 = a3;
  v14 = v9;
  v15 = a2;
  v11 = a1;

  os_unfair_lock_lock((v10 + 24));
  sub_2275BAF90((v10 + 16));
  os_unfair_lock_unlock((v10 + 24));
  if (v3)
  {
    __break(1u);
  }

  else
  {

    sub_226E97D1C(v9, &qword_27D7BD6D0, &qword_22768C440);
  }
}

uint64_t sub_2275B9FE0(uint64_t a1)
{
  v3 = sub_227668BB0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v7 = *v1;
  (*(v4 + 16))(&v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3, v6);
  v8 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  (*(v4 + 32))(v9 + v8, &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  sub_227668720();

  return sub_227669270();
}

uint64_t sub_2275BA138()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD5E0, &unk_227684C70);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v11 - v5;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF5A8, &qword_22768C438);
  sub_227669280();
  (*(v1 + 16))(v3, v6, v0);
  v7 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v8 = swift_allocObject();
  (*(v1 + 32))(v8 + v7, v3, v0);
  v9 = (v8 + ((v2 + v7 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v9 = sub_2275B7110;
  v9[1] = 0;
  sub_227669270();
  return (*(v1 + 8))(v6, v0);
}

uint64_t sub_2275BA344@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = sub_227662060();
    if (v10)
    {
      v11 = sub_227662090();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = sub_227662080();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v20 = a3;
    v21 = BYTE2(a3);
    v22 = BYTE3(a3);
    v23 = BYTE4(a3);
    v24 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = sub_227662060();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_227662090();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_227662080();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_2275BA59C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RemoteBrowsingGuestPairingVerifier.Verification(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2275BA600(uint64_t a1)
{
  v2 = type metadata accessor for RemoteBrowsingGuestPairingVerifier.Verification(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2275BA678(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 2);
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  *(v7 + 32) = *a1;
  *(v7 + 48) = v6;

  swift_unknownObjectRetain();

  return sub_227669270();
}

void sub_2275BA738(void (*a1)(__int128 *), uint64_t a2, void (*a3)(void **__return_ptr, __int128 *), uint64_t a4, __int128 *a5)
{
  v6 = *(a5 + 2);
  v8 = *a5;
  v9 = v6;
  a3(&v10, &v8);
  v7 = v10;
  *&v8 = v10;
  BYTE8(v8) = 0;
  a1(&v8);

  sub_226EB4548(v7, 0);
}

uint64_t sub_2275BA7DC(uint64_t a1, void *a2)
{
  v51 = a2;
  v50 = sub_227662750();
  v4 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v49 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for RemoteBrowsingGuestPairingVerifier.Verification(0);
  v6 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v9)
  {
    v42 = v2;
    v60 = MEMORY[0x277D84F90];
    sub_226F20828(0, v9, 0);
    v57 = a1 + 64;
    v58 = v60;
    result = sub_22766CC90();
    v11 = result;
    v12 = 0;
    v47 = (v4 + 8);
    v46 = *MEMORY[0x277D51BA0];
    v43 = a1 + 72;
    v44 = v9;
    v45 = a1;
    while ((v11 & 0x8000000000000000) == 0 && v11 < 1 << *(a1 + 32))
    {
      v15 = v11 >> 6;
      if ((*(v57 + 8 * (v11 >> 6)) & (1 << v11)) == 0)
      {
        goto LABEL_23;
      }

      v16 = *(a1 + 36);
      v52 = v12;
      v53 = v16;
      v17 = *(a1 + 56);
      v56 = *(v6 + 72);
      sub_2275BA59C(v17 + v56 * v11, v8);
      v18 = v51[5];
      v55 = v51[6];
      v54 = __swift_project_boxed_opaque_existential_0(v51 + 2, v18);
      v19 = v49;
      sub_227662720();
      v20 = v8;
      v21 = v48;
      sub_227662680();
      v23 = v22;
      (*v47)(v19, v50);
      v24 = *(v20 + *(v21 + 28));
      v25 = sub_227665A60();
      sub_2275BB6AC(&qword_27D7BD250, MEMORY[0x277D51BF0], MEMORY[0x277D51BF8]);
      v26 = v6;
      v27 = swift_allocError();
      (*(*(v25 - 8) + 104))(v28, v46, v25);
      v59[3] = &type metadata for GuestPairingVerifierAnalyticsEvent;
      v59[4] = sub_2275BACB4();
      v29 = swift_allocObject();
      v59[0] = v29;
      v29[2] = v23;
      v29[3] = 0;
      v29[4] = v24;
      v29[5] = v27;
      sub_227669B60();
      __swift_destroy_boxed_opaque_existential_0(v59);
      v30 = v58;
      v60 = v58;
      v32 = *(v58 + 16);
      v31 = *(v58 + 24);
      if (v32 >= v31 >> 1)
      {
        sub_226F20828((v31 > 1), v32 + 1, 1);
        v30 = v60;
      }

      *(v30 + 16) = v32 + 1;
      v33 = (*(v26 + 80) + 32) & ~*(v26 + 80);
      v58 = v30;
      result = sub_2275BAD08(v20, v30 + v33 + v32 * v56);
      a1 = v45;
      v13 = 1 << *(v45 + 32);
      if (v11 >= v13)
      {
        goto LABEL_24;
      }

      v34 = *(v57 + 8 * v15);
      if ((v34 & (1 << v11)) == 0)
      {
        goto LABEL_25;
      }

      if (v53 != *(v45 + 36))
      {
        goto LABEL_26;
      }

      v6 = v26;
      v8 = v20;
      v35 = v34 & (-2 << (v11 & 0x3F));
      if (v35)
      {
        v13 = __clz(__rbit64(v35)) | v11 & 0x7FFFFFFFFFFFFFC0;
        v14 = v44;
      }

      else
      {
        v36 = v20;
        v37 = v15 << 6;
        v38 = v15 + 1;
        v39 = (v43 + 8 * v15);
        v14 = v44;
        while (v38 < (v13 + 63) >> 6)
        {
          v41 = *v39++;
          v40 = v41;
          v37 += 64;
          ++v38;
          if (v41)
          {
            result = sub_226EB526C(v11, v53, 0);
            v13 = __clz(__rbit64(v40)) + v37;
            goto LABEL_19;
          }
        }

        result = sub_226EB526C(v11, v53, 0);
LABEL_19:
        v8 = v36;
      }

      v12 = v52 + 1;
      v11 = v13;
      if (v52 + 1 == v14)
      {
        return v58;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }

  return result;
}

unint64_t sub_2275BACB4()
{
  result = qword_27D7BF5B0;
  if (!qword_27D7BF5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BF5B0);
  }

  return result;
}

uint64_t sub_2275BAD08(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RemoteBrowsingGuestPairingVerifier.Verification(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2275BAD6C(void (*a1)(void **), void (*a2)(void))
{
  v5 = *(sub_227668BB0() - 8);
  v6 = *(v2 + 16);
  v7 = v2 + ((*(v5 + 80) + 24) & ~*(v5 + 80));

  return sub_2275B7524(a1, a2, v6, v7);
}

uint64_t sub_2275BAE10@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RemoteBrowsingGuestPairingVerifier.Verification(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_227668BB0() - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = *(v1 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_2275B85D0(v1 + v4, v1 + v7, v8, a1);
}

uint64_t objectdestroy_7Tm_1()
{
  v1 = sub_227668BB0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2275BB074@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v11 = *(sub_227668BB0() - 8);
  v12 = *(v5 + 16);
  v13 = v5 + ((*(v11 + 80) + 24) & ~*(v11 + 80));

  return sub_2275B8A3C(a1, a2, a3, a4, v12, v13, a5);
}

uint64_t sub_2275BB18C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(sub_227668BB0() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  sub_227665350();
  return sub_2275B5754(v2 + v6, *a1, a2);
}

uint64_t sub_2275BB294@<X0>(uint64_t a1@<X8>)
{
  v3 = *(sub_227668BB0() - 8);
  v4 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_227665350() - 8);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_2275B966C(v7, v8, v9, v1 + v4, v10, a1);
}

uint64_t objectdestroy_48Tm_0(uint64_t (*a1)(void), uint64_t (*a2)(void))
{
  v4 = a1(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = (v6 + 24) & ~v6;
  v8 = *(v5 + 64);
  v9 = a2(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 80);
  v12 = (v7 + v8 + v11) & ~v11;
  v13 = *(v10 + 64);
  v14 = v6 | v11;

  (*(v5 + 8))(v2 + v7, v4);
  (*(v10 + 8))(v2 + v12, v9);

  return MEMORY[0x2821FE8E8](v2, v12 + v13, v14 | 7);
}

void sub_2275BB4D0(uint64_t a1)
{
  v3 = *(sub_227665350() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_227668BB0() - 8);
  sub_2275B9C64(a1, *(v1 + 16), v1 + v4, v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80)));
}

uint64_t sub_2275BB5E4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (v5 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return a5(a1, a2, v5 + v9, v11, v12);
}

uint64_t sub_2275BB6AC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_2275BB710(void *a1)
{
  v2 = [a1 identifier];
  if (v2)
  {
    v3 = v2;
    sub_22766C000();

    v4 = [a1 name];
    if (v4)
    {
      v5 = v4;
      sub_22766C000();

      sub_227667B00();
      return;
    }
  }

  v6 = sub_227664DD0();
  sub_2275BBBD4(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
  swift_allocError();
  (*(*(v6 - 8) + 104))(v7, *MEMORY[0x277D51028], v6);
  swift_willThrow();
}

void *static CatalogTipCategoryReference.representativeSamples()()
{
  v14 = sub_227667B30();
  v0 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v2 = &v12 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_22766C090();
  v20 = sub_22766C090();
  v21[0] = v3;
  v21[1] = v21;
  v21[2] = &v20;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B84E0, &qword_22767C6B0);
  v19 = v18;
  v16 = sub_2272BFE28();
  v17 = v16;
  v4 = sub_2276638E0();

  v5 = *(v4 + 16);
  if (v5)
  {
    v15 = MEMORY[0x277D84F90];
    result = sub_226F1F9C8(0, v5, 0);
    v7 = 0;
    v8 = v15;
    v12 = v0 + 32;
    v13 = v4;
    v9 = v4 + 56;
    while (v7 < *(v4 + 16))
    {

      sub_227667B00();
      v15 = v8;
      v11 = *(v8 + 16);
      v10 = *(v8 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_226F1F9C8((v10 > 1), v11 + 1, 1);
        v8 = v15;
      }

      ++v7;
      *(v8 + 16) = v11 + 1;
      result = (*(v0 + 32))(v8 + ((*(v0 + 80) + 32) & ~*(v0 + 80)) + *(v0 + 72) * v11, v2, v14);
      v9 += 32;
      v4 = v13;
      if (v5 == v7)
      {

        return v8;
      }
    }

    __break(1u);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return result;
}

void sub_2275BBAE0(void *a1)
{
  sub_227667B10();
  v2 = sub_22766BFD0();

  [a1 setIdentifier_];

  sub_227667B20();
  v3 = sub_22766BFD0();

  [a1 setName_];
}

uint64_t sub_2275BBB7C(uint64_t a1)
{
  result = sub_2275BBBD4(&qword_28139B4F0, MEMORY[0x277D53128], &protocol conformance descriptor for CatalogTipCategoryReference);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2275BBBD4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for DateIntervalSessionThreshold(uint64_t a1)
{
  result = qword_281399DA0;
  if (!qword_281399DA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2275BBC90(uint64_t a1)
{
  sub_227662010();
  if (v1 <= 0x3F)
  {
    sub_2275BBD1C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2275BBD1C()
{
  if (!qword_27D7BF5E8)
  {
    v0 = sub_22766CB90();
    if (!v1)
    {
      atomic_store(v0, &qword_27D7BF5E8);
    }
  }
}

void sub_2275BBD6C(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB2C0, &unk_227687210);
  MEMORY[0x28223BE20](v4 - 8);
  v5 = sub_227662750();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v26 - v10;
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v26 - v14;
  v16 = [a1 bundleIdentifier];
  if (v16)
  {
    v29 = a2;
    v17 = v16;
    v28 = sub_22766C000();
    v32 = v18;

    v19 = [a1 reason];
    if (v19)
    {
      v20 = v19;
      v26 = sub_22766C000();
      v27 = v21;

      v22 = [a1 date];
      if (v22)
      {
        v23 = v22;
        sub_227662710();

        (*(v6 + 32))(v15, v11, v5);
        v30 = v26;
        v31 = v27;
        sub_2276662B0();
        sub_2275BC9A4(&qword_27D7BB2C8, MEMORY[0x277D52240], MEMORY[0x277D52248]);
        sub_227663AE0();
        (*(v6 + 16))(v8, v15, v5);
        sub_227666270();

        (*(v6 + 8))(v15, v5);
        return;
      }
    }
  }

  v24 = sub_227664DD0();
  sub_2275BC9A4(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
  swift_allocError();
  (*(*(v24 - 8) + 104))(v25, *MEMORY[0x277D51028], v24);
  swift_willThrow();
}

void *static AssetBundleLoadFailure.representativeSamples()()
{
  v37 = sub_227662750();
  v0 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v36 = v26 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB2C0, &unk_227687210);
  MEMORY[0x28223BE20](v2 - 8);
  v35 = v26 - v3;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF5F0, &qword_22768C4F0);
  v4 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v32 = v26 - v5;
  v33 = sub_2276662D0();
  v38 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v7 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC980, &unk_227671070);
  v8 = swift_allocObject();
  v31 = xmmword_227670CD0;
  *(v8 + 16) = xmmword_227670CD0;
  *(v8 + 32) = sub_22766C0A0();
  *(v8 + 40) = v9;
  sub_2276662B0();
  v10 = MEMORY[0x277D52240];
  sub_2275BC9A4(&qword_27D7BF5F8, MEMORY[0x277D52240], MEMORY[0x277D52250]);
  sub_2275BC9A4(&qword_27D7BB2C8, v10, MEMORY[0x277D52248]);
  v11 = sub_227663B50();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BACA0, &qword_2276796E8);
  v12 = swift_allocObject();
  *(v12 + 16) = v31;
  sub_227662640();
  v47 = v11;
  v48[0] = v8;
  v48[1] = v48;
  v48[2] = &v47;
  v46 = v12;
  v48[3] = &v46;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B84E0, &qword_22767C6B0);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF600, &qword_22768C4F8);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8CF0, &qword_227671E48);
  v40 = sub_226F5BF60(&qword_27D7B8500, &qword_27D7B84E0, &qword_22767C6B0);
  v41 = sub_226F5BF60(&qword_27D7BF608, &qword_27D7BF600, &qword_22768C4F8);
  v42 = sub_226F5BF60(&qword_27D7B8D10, &qword_27D7B8CF0, &qword_227671E48);
  v13 = sub_2276638E0();

  v14 = *(v13 + 16);
  if (v14)
  {
    *&v31 = v7;
    v39 = MEMORY[0x277D84F90];
    result = sub_226F20848(0, v14, 0);
    v16 = v4;
    v17 = 0;
    v28 = v13 + ((*(v16 + 80) + 32) & ~*(v16 + 80));
    v27 = (v0 + 16);
    v18 = v39;
    v26[1] = v38 + 32;
    v19 = v16;
    v30 = v13;
    v29 = v16;
    v26[0] = v14;
    v20 = v35;
    v21 = v31;
    while (v17 < *(v13 + 16))
    {
      v22 = v32;
      sub_226E93170(v28 + *(v19 + 72) * v17, v32, &qword_27D7BF5F0, &qword_22768C4F0);
      v23 = *(v34 + 64);
      sub_226E93170(v22 + *(v34 + 48), v20, &qword_27D7BB2C0, &unk_227687210);
      (*v27)(v36, v22 + v23, v37);

      sub_227666270();
      sub_226E97D1C(v22, &qword_27D7BF5F0, &qword_22768C4F0);
      v39 = v18;
      v25 = *(v18 + 16);
      v24 = *(v18 + 24);
      if (v25 >= v24 >> 1)
      {
        sub_226F20848((v24 > 1), v25 + 1, 1);
        v18 = v39;
      }

      ++v17;
      *(v18 + 16) = v25 + 1;
      result = (*(v38 + 32))(v18 + ((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 72) * v25, v21, v33);
      v19 = v29;
      v13 = v30;
      if (v26[0] == v17)
      {

        return v18;
      }
    }

    __break(1u);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return result;
}

uint64_t sub_2275BC758(uint64_t a1)
{
  result = sub_2275BC9A4(&qword_28139B6A0, MEMORY[0x277D52258], &protocol conformance descriptor for AssetBundleLoadFailure);
  *(a1 + 8) = result;
  return result;
}

void sub_2275BC7B0(void *a1)
{
  v2 = sub_227662750();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB2C0, &unk_227687210);
  MEMORY[0x28223BE20](v6);
  v8 = &v12 - v7;
  sub_227666280();
  v9 = sub_22766BFD0();

  [a1 setBundleIdentifier_];

  sub_2276662C0();
  sub_227663AD0();
  sub_226E97D1C(v8, &qword_27D7BB2C0, &unk_227687210);
  v10 = sub_22766BFD0();

  [a1 setReason_];

  sub_227666290();
  v11 = sub_2276626A0();
  (*(v3 + 8))(v5, v2);
  [a1 setDate_];
}

uint64_t sub_2275BC9A4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2275BC9EC()
{
  v1 = v0;
  v2 = sub_227669A70();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v90 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22766B390();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v90 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A730();
  sub_22766B370();
  (*(v7 + 8))(v9, v6);
  v10 = *(v1 + 16);
  v114 = *(v1 + 32);
  v121 = v1;
  ObjectType = swift_getObjectType();
  v122 = v10;
  v11 = *MEMORY[0x277D4E718];
  v12 = *(v3 + 104);
  v117 = v3 + 104;
  v12(v5, v11, v2);
  v115 = v12;
  swift_allocObject();
  swift_weakInit();
  v13 = sub_227665720();
  v14 = sub_2276638D0();
  swift_unknownObjectRetain_n();
  v113 = v14;
  sub_227669EC0();

  v15 = *(v3 + 8);
  v116 = v3 + 8;
  v119 = v2;
  v120 = v15;
  v15(v5, v2);
  swift_unknownObjectRelease();
  v122 = v10;
  v107 = *MEMORY[0x277D4E470];
  (v12)(v5);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  v106 = v13;
  sub_227669EC0();

  v16 = v119;
  v120(v5, v119);
  swift_unknownObjectRelease();
  v122 = v10;
  v17 = v5;
  v18 = v5;
  v19 = v115;
  (v115)(v17, *MEMORY[0x277D4E520], v16);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  sub_227669EC0();

  v90[0] = v18;
  v20 = v120;
  v120(v18, v119);
  swift_unknownObjectRelease();
  v122 = v10;
  LODWORD(v111) = *MEMORY[0x277D4E4D0];
  v19(v18);
  swift_allocObject();
  swift_weakInit();
  v105 = sub_227663090();
  v109 = v10;
  swift_unknownObjectRetain();
  v21 = v90[0];
  sub_227669EC0();

  v22 = v119;
  v20(v21, v119);
  swift_unknownObjectRelease();
  v23 = *(v121 + 80);
  v110 = *(v121 + 96);
  v112 = swift_getObjectType();
  v122 = v23;
  v24 = v22;
  v25 = v115;
  (v115)(v21, v111, v22);
  swift_allocObject();
  swift_weakInit();
  v108 = v23;
  swift_unknownObjectRetain_n();
  sub_227669EC0();

  v26 = v120;
  v120(v21, v22);
  swift_unknownObjectRelease();
  v27 = v109;
  v122 = v109;
  (v25)(v21, *MEMORY[0x277D4E6E0], v22);
  swift_allocObject();
  swift_weakInit();
  v99 = sub_227667990();
  sub_227665C20();
  v28 = v27;
  swift_unknownObjectRetain();
  sub_227669EC0();

  v26(v21, v24);
  swift_unknownObjectRelease();
  v122 = v27;
  v29 = v115;
  (v115)(v21, *MEMORY[0x277D4E680], v24);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  sub_227669ED0();

  v30 = v120;
  v120(v21, v24);
  swift_unknownObjectRelease();
  v122 = v27;
  (v29)(v21, *MEMORY[0x277D4EC98], v24);
  swift_allocObject();
  swift_weakInit();
  sub_227667C60();
  swift_unknownObjectRetain();
  sub_227669ED0();

  v31 = v119;
  v30(v21, v119);
  swift_unknownObjectRelease();
  v122 = v28;
  (v29)(v21, *MEMORY[0x277D4E7E8], v31);
  swift_allocObject();
  swift_weakInit();
  sub_227666E30();
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF610, &qword_22768C618);
  sub_226F62F70(&qword_281399088, &qword_27D7BF610, &qword_22768C618);
  sub_2275C71F8();
  sub_227669EC0();

  v32 = v119;
  v120(v21, v119);
  swift_unknownObjectRelease();
  v122 = v28;
  LODWORD(v105) = *MEMORY[0x277D4E9F8];
  v33 = v115;
  v115(v21);
  swift_allocObject();
  swift_weakInit();
  v104 = sub_227668760();
  v103 = sub_227666DE0();
  swift_unknownObjectRetain();
  sub_227669EC0();

  v120(v21, v32);
  swift_unknownObjectRelease();
  v122 = v28;
  (v33)(v21, *MEMORY[0x277D4E920], v32);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC180, &qword_2276854E0);
  v95 = sub_2275C7404();
  v97 = sub_2275C7488();
  sub_227669EC0();

  v34 = v119;
  v35 = v120;
  v120(v21, v119);
  swift_unknownObjectRelease();
  v122 = v28;
  v36 = v115;
  (v115)(v21, *MEMORY[0x277D4E498], v34);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  sub_227669EE0();

  v37 = v119;
  v35(v21, v119);
  swift_unknownObjectRelease();
  v122 = v28;
  (v36)(v21, *MEMORY[0x277D4E7A0], v37);
  swift_allocObject();
  swift_weakInit();
  sub_227665CA0();
  swift_unknownObjectRetain();
  sub_227669EE0();

  v38 = v119;
  v35(v21, v119);
  swift_unknownObjectRelease();
  v122 = v28;
  (v115)(v21, *MEMORY[0x277D4E878], v38);
  swift_allocObject();
  swift_weakInit();
  v39 = sub_2276627D0();
  swift_unknownObjectRetain();
  v111 = v39;
  sub_227669EE0();

  v35(v21, v38);
  swift_unknownObjectRelease();
  v122 = v28;
  v40 = v115;
  (v115)(v21, *MEMORY[0x277D4E480], v38);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  sub_227669EE0();

  v120(v21, v119);
  swift_unknownObjectRelease();
  v122 = v28;
  v102 = *MEMORY[0x277D4E530];
  v40(v21);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  sub_227669EC0();

  v41 = v119;
  v42 = v120;
  v120(v21, v119);
  swift_unknownObjectRelease();
  v122 = v28;
  v101 = *MEMORY[0x277D4E9C8];
  v115(v21);
  swift_allocObject();
  swift_weakInit();
  v100 = sub_227668430();
  swift_unknownObjectRetain();
  sub_227669EC0();

  v42(v21, v41);
  swift_unknownObjectRelease();
  v122 = v28;
  v43 = v115;
  (v115)(v21, *MEMORY[0x277D4E8B8], v41);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  sub_227669EE0();

  v44 = v119;
  v42(v21, v119);
  swift_unknownObjectRelease();
  v122 = v28;
  (v43)(v21, *MEMORY[0x277D4E6F0], v44);
  swift_allocObject();
  swift_weakInit();
  v99 = sub_227665750();
  swift_unknownObjectRetain();
  sub_227669EC0();

  v45 = v119;
  v42(v21, v119);
  swift_unknownObjectRelease();
  v122 = v28;
  (v43)(v21, *MEMORY[0x277D4E9E8], v45);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  sub_227669ED0();

  v46 = v120;
  v120(v21, v45);
  swift_unknownObjectRelease();
  v122 = v28;
  (v43)(v21, *MEMORY[0x277D4EAA8], v45);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC1E0, &qword_22767CEB0);
  sub_2275C7B70();
  sub_2275C7BF4();
  sub_227669ED0();

  v46(v21, v119);
  swift_unknownObjectRelease();
  v122 = v28;
  LODWORD(v99) = *MEMORY[0x277D4EB18];
  v47 = v115;
  v115(v21);
  swift_allocObject();
  swift_weakInit();
  v98 = sub_227667440();
  swift_unknownObjectRetain();
  sub_227669EE0();

  v48 = v119;
  v120(v21, v119);
  swift_unknownObjectRelease();
  v122 = v28;
  (v47)(v21, *MEMORY[0x277D4E9E0], v48);
  swift_allocObject();
  swift_weakInit();
  v94 = sub_227662750();
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF618, &qword_22768C710);
  sub_226F62F70(&unk_281398FE0, &qword_27D7BF618, &qword_22768C710);
  sub_2275C7DEC();
  sub_227669EC0();

  v49 = v119;
  v120(v21, v119);
  swift_unknownObjectRelease();
  v122 = v28;
  (v47)(v21, *MEMORY[0x277D4EC60], v49);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC198, &unk_22767CD40);
  sub_2275C7F3C();
  sub_2275C7FC0();
  sub_227669ED0();

  v50 = v119;
  v51 = v120;
  v120(v21, v119);
  swift_unknownObjectRelease();
  v122 = v28;
  (v47)(v21, *MEMORY[0x277D4EB30], v50);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  sub_227669ED0();

  v52 = v119;
  v51(v21, v119);
  swift_unknownObjectRelease();
  v122 = v28;
  (v47)(v21, *MEMORY[0x277D4EAD0], v52);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCFC0, &qword_227683170);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC190, &unk_2276855E0);
  v92 = sub_2275C81BC();
  v91 = sub_2275C8240();
  sub_2275C82F4();
  sub_2275C8378();
  sub_227669EC0();

  v53 = v120;
  v120(v21, v52);
  swift_unknownObjectRelease();
  v122 = v28;
  v54 = v115;
  (v115)(v21, *MEMORY[0x277D4E7F0], v52);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC188, &qword_22768C760);
  sub_2275C84D8();
  sub_2275C855C();
  sub_227669EC0();

  v53(v21, v52);
  swift_unknownObjectRelease();
  v122 = v28;
  (v54)(v21, *MEMORY[0x277D4E990], v52);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  sub_227669EC0();

  v120(v21, v119);
  swift_unknownObjectRelease();
  v122 = v28;
  LODWORD(v97) = *MEMORY[0x277D4EA90];
  v54(v21);
  swift_allocObject();
  swift_weakInit();
  v96 = sub_227667780();
  swift_unknownObjectRetain();
  sub_227669EE0();

  v55 = v119;
  v56 = v120;
  v120(v21, v119);
  swift_unknownObjectRelease();
  v122 = v28;
  v57 = v115;
  (v115)(v21, *MEMORY[0x277D4E368], v55);
  swift_allocObject();
  swift_weakInit();
  sub_227668FE0();
  sub_2276657D0();
  swift_unknownObjectRetain();
  sub_227669EC0();

  v58 = v119;
  v56(v21, v119);
  v59 = v109;
  swift_unknownObjectRelease();
  v122 = v59;
  (v57)(v21, *MEMORY[0x277D4EBB8], v58);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF620, &qword_22768C7A8);
  sub_2275C889C();
  sub_2275C8920();
  sub_227669ED0();

  v60 = v120;
  v120(v21, v58);
  v61 = v109;
  swift_unknownObjectRelease();
  v122 = v61;
  LODWORD(v95) = *MEMORY[0x277D4E3D8];
  v62 = v115;
  v115(v21);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  sub_227669EE0();

  v63 = v119;
  v60(v21, v119);
  v64 = v109;
  swift_unknownObjectRelease();
  v122 = v64;
  (v62)(v21, *MEMORY[0x277D4EB98], v63);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();

  sub_227669EF0();

  v65 = v120;
  v120(v21, v119);

  swift_unknownObjectRelease();
  v122 = v64;
  LODWORD(v93) = *MEMORY[0x277D4E808];
  v66 = v62;
  v62(v21);
  swift_allocObject();
  swift_weakInit();
  v92 = sub_227668A70();
  swift_unknownObjectRetain();
  sub_227669EE0();

  v67 = v119;
  v65(v21, v119);
  swift_unknownObjectRelease();
  v122 = v64;
  (v66)(v21, *MEMORY[0x277D4EBD0], v67);
  swift_allocObject();
  swift_weakInit();
  sub_227665F20();
  swift_unknownObjectRetain();
  sub_227669EC0();

  v68 = v67;
  v69 = v67;
  v70 = v120;
  v120(v21, v69);
  swift_unknownObjectRelease();
  v122 = v64;
  (v66)(v21, *MEMORY[0x277D4ECF8], v68);
  swift_allocObject();
  swift_weakInit();
  sub_227668E60();
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC160, &qword_22767CCF0);
  sub_2275C8CEC();
  sub_2275C8D70();
  sub_227669EC0();

  v70(v21, v68);
  swift_unknownObjectRelease();
  v122 = v64;
  LODWORD(v94) = *MEMORY[0x277D4E4D8];
  v115(v21);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  sub_227669EC0();

  v70(v21, v68);
  swift_unknownObjectRelease();
  v122 = v64;
  LODWORD(v91) = *MEMORY[0x277D4EB20];
  v71 = v115;
  v115(v21);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF628, &qword_22768C828);
  v73 = sub_2275C8F6C();
  v74 = sub_2275C8FF0();
  v90[1] = v72;
  v90[2] = v73;
  v90[3] = v74;
  sub_227669ED0();

  v120(v21, v68);
  swift_unknownObjectRelease();
  v122 = v64;
  (v71)(v21, *MEMORY[0x277D4E348], v68);
  swift_allocObject();
  swift_weakInit();
  sub_227669EC0();

  v75 = v119;
  v76 = v120;
  v120(v21, v119);
  swift_unknownObjectRelease();
  v122 = v64;
  v77 = v115;
  (v115)(v21, *MEMORY[0x277D4E770], v75);
  swift_allocObject();
  swift_weakInit();
  sub_227669EE0();

  v78 = v119;
  v76(v21, v119);
  swift_unknownObjectRelease();
  v122 = v108;
  (v77)(v21, v107, v78);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  sub_227669EC0();

  v120(v21, v78);
  v79 = v108;
  swift_unknownObjectRelease();
  v122 = v79;
  (v115)(v21, v102, v78);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  sub_227669EC0();

  v80 = v120;
  v120(v21, v78);
  swift_unknownObjectRelease();
  v122 = v79;
  v81 = v78;
  v82 = v115;
  (v115)(v21, v101, v81);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  sub_227669EC0();

  v83 = v119;
  v80(v21, v119);
  swift_unknownObjectRelease();
  v122 = v79;
  (v82)(v21, *MEMORY[0x277D4EB78], v83);
  swift_allocObject();
  swift_weakInit();
  sub_227666E80();
  swift_unknownObjectRetain();
  sub_227669ED0();

  v84 = v120;
  v120(v21, v83);
  swift_unknownObjectRelease();
  v122 = v79;
  v85 = v115;
  (v115)(v21, v93, v83);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  sub_227669EE0();

  v84(v21, v83);
  swift_unknownObjectRelease();
  v122 = v79;
  (v85)(v21, v91, v83);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  sub_227669ED0();

  v86 = v120;
  v120(v21, v83);
  swift_unknownObjectRelease();
  v122 = v79;
  (v85)(v21, v99, v83);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  sub_227669EE0();

  v86(v21, v83);
  swift_unknownObjectRelease();
  v122 = v79;
  v87 = v115;
  (v115)(v21, v95, v83);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  sub_227669EE0();

  v86(v21, v83);
  swift_unknownObjectRelease();
  v122 = v79;
  (v87)(v21, v105, v83);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  sub_227669EC0();

  v88 = v120;
  v120(v21, v83);
  swift_unknownObjectRelease();
  v122 = v79;
  (v115)(v21, v94, v83);
  swift_allocObject();
  swift_weakInit();
  sub_227669EC0();

  v88(v21, v83);
  swift_unknownObjectRelease();
  v122 = v79;
  (v115)(v21, v97, v83);
  swift_allocObject();
  swift_weakInit();
  sub_227669EE0();

  v88(v21, v83);
  return swift_unknownObjectRelease();
}

uint64_t sub_2275BF920(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[11] = a2;
  v3[12] = a3;
  v3[10] = a1;
  return MEMORY[0x2822009F8](sub_2275BF944, 0, 0);
}

uint64_t sub_2275BF944()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 104, (v0 + 2));

    __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
    v2 = swift_task_alloc();
    v0[13] = v2;
    *v2 = v0;
    v2[1] = sub_2275BFA98;
    v3 = v0[10];
    v4 = v0[11];

    return sub_2271ED5EC(v3, v4);
  }

  else
  {
    v6 = v0[10];
    v7 = sub_2276638D0();
    (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_2275BFA98()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_226F69340;
  }

  else
  {
    v2 = sub_2275C9C28;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2275BFBAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[11] = a2;
  v3[12] = a3;
  v3[10] = a1;
  return MEMORY[0x2822009F8](sub_2275BFBD0, 0, 0);
}

uint64_t sub_2275BFBD0()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 104, (v0 + 2));

    __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
    v2 = swift_task_alloc();
    v0[13] = v2;
    *v2 = v0;
    v2[1] = sub_2275BFA98;
    v3 = v0[10];
    v4 = v0[11];

    return sub_2271EAACC(v3, v4);
  }

  else
  {
    v6 = v0[10];
    v7 = sub_2276638D0();
    (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_2275BFD24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[11] = a2;
  v3[12] = a3;
  v3[10] = a1;
  return MEMORY[0x2822009F8](sub_2275BFD48, 0, 0);
}

uint64_t sub_2275BFD48()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 104, (v0 + 2));

    __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
    v2 = swift_task_alloc();
    v0[13] = v2;
    *v2 = v0;
    v2[1] = sub_2275BFA98;
    v3 = v0[10];
    v4 = v0[11];

    return sub_2271EC824(v3, v4);
  }

  else
  {
    v6 = v0[10];
    v7 = sub_2276638D0();
    (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_2275BFE9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[11] = a2;
  v3[12] = a3;
  v3[10] = a1;
  return MEMORY[0x2822009F8](sub_2275BFEC0, 0, 0);
}

uint64_t sub_2275BFEC0()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 104, (v0 + 2));

    __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
    v2 = swift_task_alloc();
    v0[13] = v2;
    *v2 = v0;
    v2[1] = sub_2275BFA98;
    v3 = v0[10];
    v4 = v0[11];

    return sub_2271EE5C0(v3, v4);
  }

  else
  {
    v6 = v0[10];
    v7 = sub_2276638D0();
    (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_2275C0014(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[11] = a2;
  v3[12] = a3;
  v3[10] = a1;
  return MEMORY[0x2822009F8](sub_2275C0038, 0, 0);
}

uint64_t sub_2275C0038()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 104, (v0 + 2));

    __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
    v2 = swift_task_alloc();
    v0[13] = v2;
    *v2 = v0;
    v2[1] = sub_2275C018C;
    v3 = v0[10];
    v4 = v0[11];

    return sub_2271E9BFC(v3, v4);
  }

  else
  {
    v6 = v0[10];
    v7 = sub_227665C20();
    (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_2275C018C()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_226F69340;
  }

  else
  {
    v2 = sub_2275C02A0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2275C02A0()
{
  v1 = v0[10];
  v2 = sub_227665C20();
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v3 = v0[1];

  return v3();
}

uint64_t sub_2275C0348(uint64_t a1, uint64_t a2)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return MEMORY[0x2822009F8](sub_2275C0368, 0, 0);
}

uint64_t sub_2275C0368()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 104, (v0 + 2));

    __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
    v2 = swift_task_alloc();
    v0[12] = v2;
    *v2 = v0;
    v2[1] = sub_2275C04BC;
    v3 = v0[10];

    return sub_226E988E0(v3);
  }

  else
  {
    v5 = v0[10];
    v6 = sub_2276638D0();
    (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_2275C04BC()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_226F618C8;
  }

  else
  {
    v2 = sub_2275C9C28;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2275C05D0(uint64_t a1, uint64_t a2)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return MEMORY[0x2822009F8](sub_2275C05F0, 0, 0);
}

uint64_t sub_2275C05F0()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 104, (v0 + 2));

    v2 = __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
    v3 = *v2;
    v0[12] = *v2;
    v4 = v3[16];
    v5 = v3[17];
    __swift_project_boxed_opaque_existential_0(v3 + 13, v4);
    v6 = *(v5 + 24);

    v14 = (v6 + *v6);
    v7 = swift_task_alloc();
    v0[13] = v7;
    v8 = sub_227667C60();
    v0[14] = v8;
    *v7 = v0;
    v7[1] = sub_2275C0828;
    v9 = v0[10];

    return (v14)(v9, sub_2275C9BDC, v3, v8, v4, v5);
  }

  else
  {
    v11 = v0[10];
    v12 = sub_227667C60();
    (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
    v13 = v0[1];

    return v13();
  }
}

uint64_t sub_2275C0828()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_2275C09E0;
  }

  else
  {

    v2 = sub_2275C0944;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2275C0944()
{
  (*(*(v0[14] - 8) + 56))(v0[10], 0, 1);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v1 = v0[1];

  return v1();
}

uint64_t sub_2275C09E0()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2275C0A4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[11] = a2;
  v3[12] = a3;
  v3[10] = a1;
  return MEMORY[0x2822009F8](sub_2275C0A70, 0, 0);
}

uint64_t sub_2275C0A70()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 104, v0 + 16);

    __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
    v2 = swift_task_alloc();
    *(v0 + 104) = v2;
    *v2 = v0;
    v2[1] = sub_2275C0B8C;
    v3 = *(v0 + 88);

    return sub_2271F50AC(v3);
  }

  else
  {
    **(v0 + 80) = 0;
    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_2275C0B8C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 112) = v1;

  if (v1)
  {
    v5 = sub_226F69340;
  }

  else
  {
    *(v4 + 120) = a1;
    v5 = sub_226FAAC80;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2275C0CB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[11] = a2;
  v3[12] = a3;
  v3[10] = a1;
  return MEMORY[0x2822009F8](sub_2275C0CD8, 0, 0);
}

uint64_t sub_2275C0CD8()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 104, (v0 + 2));

    __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
    v2 = swift_task_alloc();
    v0[13] = v2;
    *v2 = v0;
    v2[1] = sub_2275C0E2C;
    v3 = v0[10];
    v4 = v0[11];

    return sub_2271FB980(v3, v4);
  }

  else
  {
    v6 = v0[10];
    v7 = sub_227666DE0();
    (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_2275C0E2C()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_226F69340;
  }

  else
  {
    v2 = sub_2275C9C30;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2275C0F40(uint64_t a1, void *a2, uint64_t a3)
{
  v3[14] = a1;
  v3[15] = a3;
  v3[16] = *a2;
  return MEMORY[0x2822009F8](sub_2275C0F68, 0, 0);
}

uint64_t sub_2275C0F68()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = *(v0 + 128);
    sub_226E91B50(Strong + 104, v0 + 16);

    v3 = __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
    *(v0 + 96) = v2;
    sub_226FAF774();
    sub_227663AE0();
    v4 = *(v0 + 80);
    v5 = *(v0 + 88);
    v6 = *v3;
    v7 = *(*v3 + 128);
    v8 = *(*v3 + 136);
    __swift_project_boxed_opaque_existential_0((*v3 + 104), v7);
    v9 = swift_allocObject();
    *(v0 + 136) = v9;
    *(v9 + 16) = v6;
    *(v9 + 24) = v4;
    *(v9 + 32) = v5;
    v10 = *(v8 + 24);

    v15 = (v10 + *v10);
    v11 = swift_task_alloc();
    *(v0 + 144) = v11;
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC180, &qword_2276854E0);
    *v11 = v0;
    v11[1] = sub_2275C11CC;

    return (v15)(v0 + 104, sub_2275C9BBC, v9, v12, v7, v8);
  }

  else
  {
    **(v0 + 112) = 0;
    v14 = *(v0 + 8);

    return v14();
  }
}

uint64_t sub_2275C11CC()
{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = sub_2275C1354;
  }

  else
  {

    v2 = sub_2275C12E8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2275C12E8()
{
  **(v0 + 112) = *(v0 + 104);
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2275C1354()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2275C13C0(uint64_t a1, uint64_t a2)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return MEMORY[0x2822009F8](sub_2275C13E0, 0, 0);
}

uint64_t sub_2275C13E0()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 104, (v0 + 2));

    __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
    v2 = swift_task_alloc();
    v0[12] = v2;
    *v2 = v0;
    v2[1] = sub_226F623A8;
    v3 = v0[10];

    return sub_2271FDFD0(v3);
  }

  else
  {
    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_2275C14F4(uint64_t a1, uint64_t a2)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return MEMORY[0x2822009F8](sub_2275C1514, 0, 0);
}

uint64_t sub_2275C1514()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 104, (v0 + 2));

    __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
    v2 = swift_task_alloc();
    v0[12] = v2;
    *v2 = v0;
    v2[1] = sub_226F623A8;
    v3 = v0[10];

    return sub_2271FE820(v3);
  }

  else
  {
    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_2275C1628(uint64_t a1, uint64_t a2)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return MEMORY[0x2822009F8](sub_2275C1648, 0, 0);
}

uint64_t sub_2275C1648()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 104, (v0 + 2));

    __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
    v2 = swift_task_alloc();
    v0[12] = v2;
    *v2 = v0;
    v2[1] = sub_226F623A8;
    v3 = v0[10];

    return sub_2271FCD9C(v3);
  }

  else
  {
    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_2275C175C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[11] = a2;
  v3[12] = a3;
  v3[10] = a1;
  v4 = sub_2276627D0();
  v3[13] = v4;
  v5 = *(v4 - 8);
  v3[14] = v5;
  v3[15] = *(v5 + 64);
  v3[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2275C1828, 0, 0);
}

uint64_t sub_2275C1828()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = v0[16];
    v3 = v0[13];
    v4 = v0[14];
    v5 = v0[11];
    sub_226E91B50(Strong + 104, (v0 + 2));

    v6 = __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
    v7 = *v6;
    v8 = *(*v6 + 128);
    v9 = *(*v6 + 136);
    __swift_project_boxed_opaque_existential_0((*v6 + 104), v8);
    (*(v4 + 16))(v2, v5, v3);
    v10 = (*(v4 + 80) + 24) & ~*(v4 + 80);
    v11 = swift_allocObject();
    v0[17] = v11;
    *(v11 + 16) = v7;
    (*(v4 + 32))(v11 + v10, v2, v3);
    v12 = *(v9 + 24);

    v20 = (v12 + *v12);
    v13 = swift_task_alloc();
    v0[18] = v13;
    v14 = sub_2276638D0();
    v0[19] = v14;
    *v13 = v0;
    v13[1] = sub_2275C1AF0;
    v15 = v0[10];

    return v20(v15, sub_2275C9C08, v11, v14, v8, v9);
  }

  else
  {
    v17 = v0[10];
    v18 = sub_2276638D0();
    (*(*(v18 - 8) + 56))(v17, 1, 1, v18);

    v19 = v0[1];

    return v19();
  }
}

uint64_t sub_2275C1AF0()
{
  *(*v1 + 160) = v0;

  if (v0)
  {
    v2 = sub_2275C1CB0;
  }

  else
  {

    v2 = sub_2275C1C0C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2275C1C0C()
{
  (*(*(v0[19] - 8) + 56))(v0[10], 0, 1);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  v1 = v0[1];

  return v1();
}

uint64_t sub_2275C1CB0()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2275C1D24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[11] = a2;
  v3[12] = a3;
  v3[10] = a1;
  return MEMORY[0x2822009F8](sub_2275C1D48, 0, 0);
}

uint64_t sub_2275C1D48()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 104, (v0 + 2));

    __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
    v2 = swift_task_alloc();
    v0[13] = v2;
    *v2 = v0;
    v2[1] = sub_2275C1E9C;
    v3 = v0[10];
    v4 = v0[11];

    return sub_2271FC298(v3, v4);
  }

  else
  {
    v6 = v0[10];
    v7 = sub_2276638D0();
    (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_2275C1E9C()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_226F60D40;
  }

  else
  {
    v2 = sub_2275C1FB0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2275C1FB0()
{
  v1 = v0[10];
  v2 = sub_2276638D0();
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v3 = v0[1];

  return v3();
}

uint64_t sub_2275C2058(uint64_t a1, uint64_t a2)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return MEMORY[0x2822009F8](sub_2275C2078, 0, 0);
}

uint64_t sub_2275C2078()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 104, (v0 + 2));

    __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
    v2 = swift_task_alloc();
    v0[12] = v2;
    *v2 = v0;
    v2[1] = sub_226F623A8;
    v3 = v0[10];

    return sub_2271E9250(v3);
  }

  else
  {
    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_2275C218C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[11] = a2;
  v3[12] = a3;
  v3[10] = a1;
  return MEMORY[0x2822009F8](sub_2275C21B0, 0, 0);
}

uint64_t sub_2275C21B0()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 104, (v0 + 2));

    v2 = __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
    __swift_project_boxed_opaque_existential_0((*v2 + 424), *(*v2 + 448));
    v3 = swift_task_alloc();
    v0[13] = v3;
    *v3 = v0;
    v3[1] = sub_2275C2314;
    v4 = v0[10];
    v5 = v0[11];

    return sub_22714E544(v4, v5);
  }

  else
  {
    v7 = v0[10];
    v8 = sub_227665750();
    (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_2275C2314()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_226F69340;
  }

  else
  {
    v2 = sub_2275C2428;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2275C2428()
{
  v1 = v0[10];
  v2 = sub_227665750();
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v3 = v0[1];

  return v3();
}

uint64_t sub_2275C24D0(uint64_t a1, uint64_t a2)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return MEMORY[0x2822009F8](sub_2275C24F0, 0, 0);
}

uint64_t sub_2275C24F0()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 104, (v0 + 2));

    __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
    v2 = swift_task_alloc();
    v0[12] = v2;
    *v2 = v0;
    v2[1] = sub_2275C2644;
    v3 = v0[10];

    return sub_227200030(v3);
  }

  else
  {
    v5 = v0[10];
    v6 = sub_227665750();
    (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_2275C2644()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_226F69344;
  }

  else
  {
    v2 = sub_2275C9C2C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2275C2758(uint64_t a1, uint64_t a2)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return MEMORY[0x2822009F8](sub_2275C2778, 0, 0);
}

uint64_t sub_2275C2778()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 104, v0 + 16);

    __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
    v2 = swift_task_alloc();
    *(v0 + 96) = v2;
    *v2 = v0;
    v2[1] = sub_226F61A60;

    return sub_2272011EC();
  }

  else
  {
    **(v0 + 80) = 0;
    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_2275C288C(uint64_t a1, uint64_t a2)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return MEMORY[0x2822009F8](sub_2275C28AC, 0, 0);
}

uint64_t sub_2275C28AC()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 104, (v0 + 2));

    __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
    v2 = swift_task_alloc();
    v0[12] = v2;
    *v2 = v0;
    v2[1] = sub_226F623A8;
    v3 = v0[10];

    return sub_227201694(v3);
  }

  else
  {
    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_2275C29C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[12] = a2;
  v3[13] = a3;
  v3[11] = a1;
  v4 = sub_227662750();
  v3[14] = v4;
  v5 = *(v4 - 8);
  v3[15] = v5;
  v3[16] = *(v5 + 64);
  v3[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2275C2A8C, 0, 0);
}

uint64_t sub_2275C2A8C()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = *(v0 + 136);
    v3 = *(v0 + 112);
    v4 = *(v0 + 120);
    v5 = *(v0 + 96);
    sub_226E91B50(Strong + 104, v0 + 16);

    v6 = __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
    v7 = *v6;
    v8 = *(*v6 + 128);
    v9 = *(*v6 + 136);
    __swift_project_boxed_opaque_existential_0((*v6 + 104), v8);
    (*(v4 + 16))(v2, v5, v3);
    v10 = (*(v4 + 80) + 24) & ~*(v4 + 80);
    v11 = swift_allocObject();
    *(v0 + 144) = v11;
    *(v11 + 16) = v7;
    (*(v4 + 32))(v11 + v10, v2, v3);
    v12 = *(v9 + 24);

    v17 = (v12 + *v12);
    v13 = swift_task_alloc();
    *(v0 + 152) = v13;
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF618, &qword_22768C710);
    *v13 = v0;
    v13[1] = sub_2275C2D24;

    return (v17)(v0 + 80, sub_2275C99E4, v11, v14, v8, v9);
  }

  else
  {
    **(v0 + 88) = 0;

    v16 = *(v0 + 8);

    return v16();
  }
}

uint64_t sub_2275C2D24()
{
  *(*v1 + 160) = v0;

  if (v0)
  {
    v2 = sub_226FABDEC;
  }

  else
  {

    v2 = sub_2275C2E40;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2275C2E40()
{
  **(v0 + 88) = *(v0 + 80);
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2275C2EB4(uint64_t a1, uint64_t a2)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return MEMORY[0x2822009F8](sub_2275C2ED4, 0, 0);
}

uint64_t sub_2275C2ED4()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 104, v0 + 16);

    __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
    v2 = swift_task_alloc();
    *(v0 + 96) = v2;
    *v2 = v0;
    v2[1] = sub_226F60ED8;

    return sub_2272036E0();
  }

  else
  {
    **(v0 + 80) = 0;
    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_2275C2FE8(uint64_t a1, uint64_t a2)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return MEMORY[0x2822009F8](sub_2275C3008, 0, 0);
}

uint64_t sub_2275C3008()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 104, (v0 + 2));

    __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
    v2 = swift_task_alloc();
    v0[12] = v2;
    *v2 = v0;
    v2[1] = sub_2275C3124;

    return sub_227203ED8();
  }

  else
  {
    v4 = v0[10];
    *v4 = 0;
    *(v4 + 8) = 1;
    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_2275C3124(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 104) = v1;

  if (v1)
  {
    v5 = sub_226F69344;
  }

  else
  {
    *(v4 + 112) = a1;
    v5 = sub_2275C324C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2275C324C()
{
  v1 = v0[10];
  *v1 = v0[14];
  *(v1 + 8) = 0;
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v2 = v0[1];

  return v2();
}

uint64_t sub_2275C32C0(uint64_t a1, void *a2, uint64_t a3)
{
  v3[10] = a1;
  v3[11] = a3;
  v3[12] = *a2;
  return MEMORY[0x2822009F8](sub_2275C32E8, 0, 0);
}

uint64_t sub_2275C32E8()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 104, v0 + 16);

    __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
    v2 = swift_task_alloc();
    *(v0 + 104) = v2;
    *v2 = v0;
    v2[1] = sub_226FABFA0;
    v3 = *(v0 + 96);

    return sub_227204158(v3);
  }

  else
  {
    **(v0 + 80) = 0;
    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_2275C3404(uint64_t a1, void *a2, uint64_t a3)
{
  v3[10] = a1;
  v3[11] = a3;
  v3[12] = *a2;
  return MEMORY[0x2822009F8](sub_2275C342C, 0, 0);
}

uint64_t sub_2275C342C()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 104, v0 + 16);

    __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
    v2 = swift_task_alloc();
    *(v0 + 104) = v2;
    *v2 = v0;
    v2[1] = sub_226FABFA0;
    v3 = *(v0 + 96);

    return sub_227204C74(v3);
  }

  else
  {
    **(v0 + 80) = 0;
    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_2275C3548(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[11] = a2;
  v3[12] = a3;
  v3[10] = a1;
  return MEMORY[0x2822009F8](sub_2275C356C, 0, 0);
}

uint64_t sub_2275C356C()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 104, v0 + 16);

    __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
    v2 = swift_task_alloc();
    *(v0 + 104) = v2;
    *v2 = v0;
    v2[1] = sub_226FABFA0;
    v3 = *(v0 + 88);

    return sub_2272046EC(v3);
  }

  else
  {
    **(v0 + 80) = 0;
    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_2275C3688(uint64_t a1, uint64_t a2)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return MEMORY[0x2822009F8](sub_2275C36A8, 0, 0);
}

uint64_t sub_2275C36A8()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 104, (v0 + 2));

    __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
    v2 = swift_task_alloc();
    v0[12] = v2;
    *v2 = v0;
    v2[1] = sub_226F620FC;
    v3 = v0[10];

    return sub_227202748(v3);
  }

  else
  {
    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_2275C37BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[11] = a2;
  v3[12] = a3;
  v3[10] = a1;
  v4 = sub_227668FE0();
  v3[13] = v4;
  v5 = *(v4 - 8);
  v3[14] = v5;
  v3[15] = *(v5 + 64);
  v3[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2275C3888, 0, 0);
}

uint64_t sub_2275C3888()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = v0[16];
    v3 = v0[13];
    v4 = v0[14];
    v5 = v0[11];
    sub_226E91B50(Strong + 104, (v0 + 2));

    v6 = __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
    v7 = *v6;
    v8 = *(*v6 + 128);
    v9 = *(*v6 + 136);
    __swift_project_boxed_opaque_existential_0((*v6 + 104), v8);
    (*(v4 + 16))(v2, v5, v3);
    v10 = (*(v4 + 80) + 24) & ~*(v4 + 80);
    v11 = swift_allocObject();
    v0[17] = v11;
    *(v11 + 16) = v7;
    (*(v4 + 32))(v11 + v10, v2, v3);
    v12 = *(v9 + 24);

    v20 = (v12 + *v12);
    v13 = swift_task_alloc();
    v0[18] = v13;
    v14 = sub_2276657D0();
    v0[19] = v14;
    *v13 = v0;
    v13[1] = sub_2275C3B50;
    v15 = v0[10];

    return v20(v15, sub_2275C99A4, v11, v14, v8, v9);
  }

  else
  {
    v17 = v0[10];
    v18 = sub_2276657D0();
    (*(*(v18 - 8) + 56))(v17, 1, 1, v18);

    v19 = v0[1];

    return v19();
  }
}

uint64_t sub_2275C3B50()
{
  *(*v1 + 160) = v0;

  if (v0)
  {
    v2 = sub_2275C9C24;
  }

  else
  {

    v2 = sub_2275C9C00;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2275C3C6C(uint64_t a1, uint64_t a2)
{
  *(v2 + 88) = a1;
  *(v2 + 96) = a2;
  return MEMORY[0x2822009F8](sub_2275C3C8C, 0, 0);
}

uint64_t sub_2275C3C8C()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 104, v0 + 16);

    v2 = __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
    v3 = *(*v2 + 128);
    v4 = *(*v2 + 136);
    __swift_project_boxed_opaque_existential_0((*v2 + 104), v3);
    v9 = (*(v4 + 24) + **(v4 + 24));
    v5 = swift_task_alloc();
    *(v0 + 104) = v5;
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF620, &qword_22768C7A8);
    *v5 = v0;
    v5[1] = sub_226FABC6C;

    return v9(v0 + 80, sub_2272034CC, 0, v6, v3, v4);
  }

  else
  {
    **(v0 + 88) = 0;
    v8 = *(v0 + 8);

    return v8();
  }
}

uint64_t sub_2275C3E80(uint64_t a1, uint64_t a2)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return MEMORY[0x2822009F8](sub_2275C3EA0, 0, 0);
}

uint64_t sub_2275C3EA0()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 104, (v0 + 2));

    __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
    v2 = swift_task_alloc();
    v0[12] = v2;
    *v2 = v0;
    v2[1] = sub_226F623A8;
    v3 = v0[10];

    return sub_2271FF424(v3);
  }

  else
  {
    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_2275C3FD4()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 104, (v0 + 2));

    __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
    v2 = swift_task_alloc();
    v0[11] = v2;
    *v2 = v0;
    v2[1] = sub_226F60430;

    return sub_2271E6B88();
  }

  else
  {
    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_2275C40E0(uint64_t a1, uint64_t a2)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return MEMORY[0x2822009F8](sub_2275C4100, 0, 0);
}

uint64_t sub_2275C4100()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 104, (v0 + 2));

    __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
    v2 = swift_task_alloc();
    v0[12] = v2;
    *v2 = v0;
    v2[1] = sub_226F623A8;
    v3 = v0[10];

    return sub_2272050BC(v3);
  }

  else
  {
    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_2275C4214(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[11] = a2;
  v3[12] = a3;
  v3[10] = a1;
  v4 = sub_227662750();
  v3[13] = v4;
  v5 = *(v4 - 8);
  v3[14] = v5;
  v3[15] = *(v5 + 64);
  v3[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2275C42E0, 0, 0);
}

uint64_t sub_2275C42E0()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = v0[16];
    v3 = v0[13];
    v4 = v0[14];
    v5 = v0[11];
    sub_226E91B50(Strong + 104, (v0 + 2));

    v6 = __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
    v7 = *v6;
    v8 = *(*v6 + 128);
    v9 = *(*v6 + 136);
    __swift_project_boxed_opaque_existential_0((*v6 + 104), v8);
    (*(v4 + 16))(v2, v5, v3);
    v10 = (*(v4 + 80) + 24) & ~*(v4 + 80);
    v11 = swift_allocObject();
    v0[17] = v11;
    *(v11 + 16) = v7;
    (*(v4 + 32))(v11 + v10, v2, v3);
    v12 = *(v9 + 24);

    v20 = (v12 + *v12);
    v13 = swift_task_alloc();
    v0[18] = v13;
    v14 = sub_227665F20();
    v0[19] = v14;
    *v13 = v0;
    v13[1] = sub_2275C3B50;
    v15 = v0[10];

    return v20(v15, sub_2275C9964, v11, v14, v8, v9);
  }

  else
  {
    v17 = v0[10];
    v18 = sub_227665F20();
    (*(*(v18 - 8) + 56))(v17, 1, 1, v18);

    v19 = v0[1];

    return v19();
  }
}

uint64_t sub_2275C45A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[11] = a2;
  v3[12] = a3;
  v3[10] = a1;
  return MEMORY[0x2822009F8](sub_2275C45CC, 0, 0);
}

uint64_t sub_2275C45CC()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 104, v0 + 16);

    __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
    v2 = swift_task_alloc();
    *(v0 + 104) = v2;
    *v2 = v0;
    v2[1] = sub_226FABFA0;
    v3 = *(v0 + 88);

    return sub_2271F80C8(v3);
  }

  else
  {
    **(v0 + 80) = 0;
    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_2275C46E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[11] = a2;
  v3[12] = a3;
  v3[10] = a1;
  v4 = sub_22766B390();
  v3[13] = v4;
  v3[14] = *(v4 - 8);
  v3[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2275C47AC, 0, 0);
}

uint64_t sub_2275C47AC()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = v0[14];
    v2 = v0[15];
    v4 = v0[13];
    sub_226E91B50(Strong + 104, (v0 + 2));

    __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
    sub_22766A630();
    sub_22766B370();
    (*(v3 + 8))(v2, v4);
    v5 = swift_task_alloc();
    v0[16] = v5;
    *v5 = v0;
    v5[1] = sub_2275C4978;
    v6 = v0[11];

    return sub_2271FDFD0(v6);
  }

  else
  {
    v8 = v0[10];
    v9 = sub_2276638D0();
    (*(*(v9 - 8) + 56))(v8, 1, 1, v9);

    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_2275C4978()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = sub_2275C4B90;
  }

  else
  {
    v2 = sub_2275C4A8C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2275C4A8C()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = sub_2276638D0();
  v4 = *(v3 - 8);
  (*(v4 + 16))(v1, v2, v3);
  (*(v4 + 56))(v1, 0, 1, v3);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  v5 = v0[1];

  return v5();
}

uint64_t sub_2275C4B90()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2275C4C00(uint64_t a1, uint64_t a2)
{
  v2[10] = a1;
  v2[11] = a2;
  v3 = sub_2276627D0();
  v2[12] = v3;
  v2[13] = *(v3 - 8);
  v2[14] = swift_task_alloc();
  v4 = sub_2276638D0();
  v2[15] = v4;
  v2[16] = *(v4 - 8);
  v2[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2275C4D1C, 0, 0);
}

uint64_t sub_2275C4D1C()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 104, v0 + 16);

    *(v0 + 144) = *__swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
    v2 = swift_task_alloc();
    *(v0 + 152) = v2;
    *v2 = v0;
    v2[1] = sub_2275C4E50;
    v3 = *(v0 + 136);

    return sub_226E988E0(v3);
  }

  else
  {
    **(v0 + 80) = 0;

    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_2275C4E50()
{
  *(*v1 + 160) = v0;

  if (v0)
  {
    v2 = sub_2275C5190;
  }

  else
  {
    v2 = sub_2275C4F64;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2275C4F64(uint64_t a1)
{
  sub_2276637C0();
  v2 = swift_task_alloc();
  *(v1 + 168) = v2;
  *v2 = v1;
  v2[1] = sub_2275C5008;
  v3 = *(v1 + 112);

  return sub_227201F00(v3);
}

uint64_t sub_2275C5008(uint64_t a1)
{
  v4 = *v2;
  v4[22] = v1;

  v5 = v4[14];
  v6 = v4[13];
  v7 = v4[12];
  if (v1)
  {
    (*(v6 + 8))(v5, v7);
    v8 = sub_2275C52B0;
  }

  else
  {
    v4[23] = a1;
    (*(v6 + 8))(v5, v7);
    v8 = sub_2275C5214;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_2275C5190()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2275C5214()
{
  v1 = v0[23];
  v2 = v0[10];
  (*(v0[16] + 8))(v0[17], v0[15]);
  *v2 = v1;
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  v3 = v0[1];

  return v3();
}

uint64_t sub_2275C52B0()
{
  (*(v0[16] + 8))(v0[17], v0[15]);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  v1 = v0[1];

  return v1();
}

uint64_t sub_2275C534C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[11] = a2;
  v3[12] = a3;
  v3[10] = a1;
  return MEMORY[0x2822009F8](sub_2275C5370, 0, 0);
}

uint64_t sub_2275C5370()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 104, v0 + 16);

    __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
    v2 = swift_task_alloc();
    *(v0 + 104) = v2;
    *v2 = v0;
    v2[1] = sub_226FABFA0;
    v3 = *(v0 + 88);

    return sub_227201F00(v3);
  }

  else
  {
    **(v0 + 80) = 0;
    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_2275C548C(uint64_t a1, uint64_t a2)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return MEMORY[0x2822009F8](sub_2275C54AC, 0, 0);
}

uint64_t sub_2275C54AC()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 104, (v0 + 2));

    __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
    v2 = swift_task_alloc();
    v0[12] = v2;
    *v2 = v0;
    v2[1] = sub_226F623A8;
    v3 = v0[10];

    return sub_2271FD694(v3);
  }

  else
  {
    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_2275C55C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[11] = a2;
  v3[12] = a3;
  v3[10] = a1;
  v4 = sub_2276627D0();
  v3[13] = v4;
  v5 = *(v4 - 8);
  v3[14] = v5;
  v3[15] = *(v5 + 64);
  v3[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2275C568C, 0, 0);
}

uint64_t sub_2275C568C()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = v0[16];
    v3 = v0[13];
    v4 = v0[14];
    v5 = v0[11];
    sub_226E91B50(Strong + 104, (v0 + 2));

    v6 = __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
    v7 = *v6;
    v8 = *(*v6 + 128);
    v9 = *(*v6 + 136);
    __swift_project_boxed_opaque_existential_0((*v6 + 104), v8);
    (*(v4 + 16))(v2, v5, v3);
    v10 = (*(v4 + 80) + 24) & ~*(v4 + 80);
    v11 = swift_allocObject();
    v0[17] = v11;
    *(v11 + 16) = v7;
    (*(v4 + 32))(v11 + v10, v2, v3);
    v12 = *(v9 + 24);

    v20 = (v12 + *v12);
    v13 = swift_task_alloc();
    v0[18] = v13;
    v14 = sub_2276638D0();
    v0[19] = v14;
    *v13 = v0;
    v13[1] = sub_2275C3B50;
    v15 = v0[10];

    return v20(v15, sub_2275C9924, v11, v14, v8, v9);
  }

  else
  {
    v17 = v0[10];
    v18 = sub_2276638D0();
    (*(*(v18 - 8) + 56))(v17, 1, 1, v18);

    v19 = v0[1];

    return v19();
  }
}

uint64_t sub_2275C5954(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[11] = a2;
  v3[12] = a3;
  v3[10] = a1;
  return MEMORY[0x2822009F8](sub_2275C5978, 0, 0);
}

uint64_t sub_2275C5978()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 104, (v0 + 2));

    __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
    v2 = swift_task_alloc();
    v0[13] = v2;
    *v2 = v0;
    v2[1] = sub_2275BFA98;
    v3 = v0[10];
    v4 = v0[11];

    return sub_2271FC298(v3, v4);
  }

  else
  {
    v6 = v0[10];
    v7 = sub_2276638D0();
    (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_2275C5ACC(uint64_t a1, uint64_t a2)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return MEMORY[0x2822009F8](sub_2275C5AEC, 0, 0);
}

uint64_t sub_2275C5AEC()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 104, (v0 + 2));

    __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
    v2 = swift_task_alloc();
    v0[12] = v2;
    *v2 = v0;
    v2[1] = sub_2275C5C40;
    v3 = v0[10];

    return sub_2271F70F0(v3);
  }

  else
  {
    v5 = v0[10];
    v6 = sub_227666E80();
    (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_2275C5C40()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_226F69344;
  }

  else
  {
    v2 = sub_2275C5D54;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2275C5D54()
{
  v1 = v0[10];
  v2 = sub_227666E80();
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v3 = v0[1];

  return v3();
}

uint64_t sub_2275C5DFC(uint64_t a1, uint64_t a2)
{
  v2[10] = a1;
  v2[11] = a2;
  v3 = sub_2276627D0();
  v2[12] = v3;
  v2[13] = *(v3 - 8);
  v2[14] = swift_task_alloc();
  v4 = sub_2276638D0();
  v2[15] = v4;
  v2[16] = *(v4 - 8);
  v2[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2275C5F18, 0, 0);
}

uint64_t sub_2275C5F18()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 104, v0 + 16);

    *(v0 + 144) = *__swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
    v2 = swift_task_alloc();
    *(v0 + 152) = v2;
    *v2 = v0;
    v2[1] = sub_2275C604C;
    v3 = *(v0 + 136);

    return sub_226E988E0(v3);
  }

  else
  {
    **(v0 + 80) = 0;

    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_2275C604C()
{
  *(*v1 + 160) = v0;

  if (v0)
  {
    v2 = sub_2275C9BFC;
  }

  else
  {
    v2 = sub_2275C6160;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2275C6160(uint64_t a1)
{
  sub_2276637C0();
  v2 = swift_task_alloc();
  *(v1 + 168) = v2;
  *v2 = v1;
  v2[1] = sub_2275C6204;
  v3 = *(v1 + 112);

  return sub_227201F00(v3);
}

uint64_t sub_2275C6204(uint64_t a1)
{
  v4 = *v2;
  v4[22] = v1;

  v5 = v4[14];
  v6 = v4[13];
  v7 = v4[12];
  if (v1)
  {
    (*(v6 + 8))(v5, v7);
    v8 = sub_2275C9C34;
  }

  else
  {
    v4[23] = a1;
    (*(v6 + 8))(v5, v7);
    v8 = sub_2275C9BF8;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_2275C638C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[11] = a2;
  v3[12] = a3;
  v3[10] = a1;
  return MEMORY[0x2822009F8](sub_2275C63B0, 0, 0);
}

uint64_t sub_2275C63B0()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 104, (v0 + 2));

    __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
    v2 = swift_task_alloc();
    v0[13] = v2;
    *v2 = v0;
    v2[1] = sub_2275C6504;
    v3 = v0[10];
    v4 = v0[11];

    return sub_2271FB980(v3, v4);
  }

  else
  {
    v6 = v0[10];
    v7 = sub_227666DE0();
    (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_2275C6504()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_226F69340;
  }

  else
  {
    v2 = sub_2275C6618;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2275C6618()
{
  v1 = v0[10];
  v2 = sub_227666DE0();
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v3 = v0[1];

  return v3();
}

uint64_t sub_2275C66C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[11] = a2;
  v3[12] = a3;
  v3[10] = a1;
  v4 = sub_22766B390();
  v3[13] = v4;
  v3[14] = *(v4 - 8);
  v3[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2275C6784, 0, 0);
}

uint64_t sub_2275C6784()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = v0[14];
    v2 = v0[15];
    v4 = v0[13];
    sub_226E91B50(Strong + 104, (v0 + 2));

    __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
    sub_22766A630();
    sub_22766B370();
    (*(v3 + 8))(v2, v4);
    v5 = swift_task_alloc();
    v0[16] = v5;
    *v5 = v0;
    v5[1] = sub_2275C6950;
    v6 = v0[11];

    return sub_2271FDFD0(v6);
  }

  else
  {
    v8 = v0[10];
    v9 = sub_2276638D0();
    (*(*(v9 - 8) + 56))(v8, 1, 1, v9);

    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_2275C6950()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = sub_2275C9C04;
  }

  else
  {
    v2 = sub_2275C9C20;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2275C6A64(uint64_t a1, uint64_t a2)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return MEMORY[0x2822009F8](sub_2275C6A84, 0, 0);
}

uint64_t sub_2275C6A84()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 104, (v0 + 2));

    __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
    v2 = swift_task_alloc();
    v0[12] = v2;
    *v2 = v0;
    v2[1] = sub_226F623A8;
    v3 = v0[10];

    return sub_227202748(v3);
  }

  else
  {
    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_2275C6B98()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0((v0 + 40));
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0((v0 + 104));

  return swift_deallocClassInstance();
}

uint64_t sub_2275C6C0C(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_226E93028;

  return sub_2275BF920(a1, a2, v2);
}

uint64_t sub_2275C6CB8(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_226E93028;

  return sub_2275BFBAC(a1, a2, v2);
}

uint64_t sub_2275C6D64(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_226E93028;

  return sub_2275BFD24(a1, a2, v2);
}

uint64_t sub_2275C6E10(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_226E93028;

  return sub_2275BFE9C(a1, a2, v2);
}

uint64_t sub_2275C6EBC(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_226E93028;

  return sub_2275BFE9C(a1, a2, v2);
}

uint64_t sub_2275C6F68(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_226E93028;

  return sub_2275C0014(a1, a2, v2);
}

uint64_t sub_2275C7014(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_2275C0348(a1, v1);
}

uint64_t sub_2275C70B0(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_2275C05D0(a1, v1);
}

uint64_t sub_2275C714C(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_226E93028;

  return sub_2275C0A4C(a1, a2, v2);
}

unint64_t sub_2275C71F8()
{
  result = qword_281399080;
  if (!qword_281399080)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7BF610, &qword_22768C618);
    sub_2275C90A4(&qword_28139B7D8, MEMORY[0x277D518F8], MEMORY[0x277D518F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281399080);
  }

  return result;
}

uint64_t sub_2275C72AC(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_226E93028;

  return sub_2275C0CB4(a1, a2, v2);
}

uint64_t sub_2275C7358(uint64_t a1, void *a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_226E93028;

  return sub_2275C0F40(a1, a2, v2);
}

unint64_t sub_2275C7404()
{
  result = qword_281398E88;
  if (!qword_281398E88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7BC180, &qword_2276854E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281398E88);
  }

  return result;
}

unint64_t sub_2275C7488()
{
  result = qword_281398E80;
  if (!qword_281398E80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7BC180, &qword_2276854E0);
    sub_2275C90A4(&unk_28139BCB0, MEMORY[0x277D50180], MEMORY[0x277D50178]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281398E80);
  }

  return result;
}

uint64_t sub_2275C753C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_2275C13C0(a1, v1);
}

uint64_t sub_2275C75D4(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_2275C14F4(a1, v1);
}

uint64_t sub_2275C766C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_2275C1628(a1, v1);
}

uint64_t sub_2275C7704(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_2275C1628(a1, v1);
}

uint64_t sub_2275C779C(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_226E92F34;

  return sub_2275C175C(a1, a2, v2);
}

uint64_t sub_2275C7848(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_226E93028;

  return sub_2275C1D24(a1, a2, v2);
}

uint64_t sub_2275C78F4(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_2275C2058(a1, v1);
}

uint64_t sub_2275C798C(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_226E93028;

  return sub_2275C218C(a1, a2, v2);
}

uint64_t sub_2275C7A38(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_2275C24D0(a1, v1);
}

uint64_t sub_2275C7AD4(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_2275C2758(a1, v1);
}

unint64_t sub_2275C7B70()
{
  result = qword_281398CB0;
  if (!qword_281398CB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7BC1E0, &qword_22767CEB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281398CB0);
  }

  return result;
}

unint64_t sub_2275C7BF4()
{
  result = qword_281398CA8;
  if (!qword_281398CA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7BC1E0, &qword_22767CEB0);
    sub_2275C90A4(&qword_28139B548, MEMORY[0x277D52D18], MEMORY[0x277D52D10]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281398CA8);
  }

  return result;
}

uint64_t sub_2275C7CA8(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_2275C288C(a1, v1);
}

uint64_t sub_2275C7D40(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_226E93028;

  return sub_2275C29C0(a1, a2, v2);
}

unint64_t sub_2275C7DEC()
{
  result = qword_281398FD8;
  if (!qword_281398FD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7BF618, &qword_22768C710);
    sub_2275C90A4(&qword_28139B4D0, MEMORY[0x277D53210], MEMORY[0x277D53208]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281398FD8);
  }

  return result;
}

uint64_t sub_2275C7EA0(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_2275C2EB4(a1, v1);
}

unint64_t sub_2275C7F3C()
{
  result = qword_281398C68;
  if (!qword_281398C68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7BC198, &unk_22767CD40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281398C68);
  }

  return result;
}

unint64_t sub_2275C7FC0()
{
  result = qword_281398C60;
  if (!qword_281398C60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7BC198, &unk_22767CD40);
    sub_2275C90A4(&qword_28139B4B8, MEMORY[0x277D53428], MEMORY[0x277D53420]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281398C60);
  }

  return result;
}

uint64_t sub_2275C8074(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_2275C2FE8(a1, v1);
}

uint64_t sub_2275C8110(uint64_t a1, void *a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_226E93028;

  return sub_2275C32C0(a1, a2, v2);
}

unint64_t sub_2275C81BC()
{
  result = qword_281398F28;
  if (!qword_281398F28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7BCFC0, &qword_227683170);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281398F28);
  }

  return result;
}

unint64_t sub_2275C8240()
{
  result = qword_281398F20;
  if (!qword_281398F20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7BCFC0, &qword_227683170);
    sub_2275C90A4(&qword_28139BDA8, MEMORY[0x277CC95F0], MEMORY[0x277D4FBD0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281398F20);
  }

  return result;
}

unint64_t sub_2275C82F4()
{
  result = qword_281398C78;
  if (!qword_281398C78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7BC190, &unk_2276855E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281398C78);
  }

  return result;
}

unint64_t sub_2275C8378()
{
  result = qword_281398C70;
  if (!qword_281398C70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7BC190, &unk_2276855E0);
    sub_2275C90A4(&qword_28139B4C0, MEMORY[0x277D53288], MEMORY[0x277D53280]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281398C70);
  }

  return result;
}

uint64_t sub_2275C842C(uint64_t a1, void *a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_226E93028;

  return sub_2275C3404(a1, a2, v2);
}

unint64_t sub_2275C84D8()
{
  result = qword_281398D80;
  if (!qword_281398D80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7BC188, &qword_22768C760);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281398D80);
  }

  return result;
}

unint64_t sub_2275C855C()
{
  result = qword_281398D78;
  if (!qword_281398D78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7BC188, &qword_22768C760);
    sub_2275C90A4(&qword_28139B748, MEMORY[0x277D51CF0], MEMORY[0x277D51CE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281398D78);
  }

  return result;
}

uint64_t sub_2275C8610(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_226E93028;

  return sub_2275C3548(a1, a2, v2);
}

uint64_t sub_2275C86BC(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_2275C3688(a1, v1);
}

uint64_t sub_2275C8754(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_226E93028;

  return sub_2275C37BC(a1, a2, v2);
}

uint64_t sub_2275C8800(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_2275C3C6C(a1, v1);
}

unint64_t sub_2275C889C()
{
  result = qword_281398CA0;
  if (!qword_281398CA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7BF620, &qword_22768C7A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281398CA0);
  }

  return result;
}

unint64_t sub_2275C8920()
{
  result = qword_281398C98;
  if (!qword_281398C98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7BF620, &qword_22768C7A8);
    sub_2275C90A4(&qword_28139B518, MEMORY[0x277D52F78], MEMORY[0x277D52F70]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281398C98);
  }

  return result;
}

uint64_t sub_2275C89D4(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_2275C3E80(a1, v1);
}

uint64_t sub_2275C8A6C()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_226E93028;

  return sub_2275C3FB4(v0);
}

uint64_t sub_2275C8AFC(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_2275C40E0(a1, v1);
}

uint64_t sub_2275C8B94(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_226E93028;

  return sub_2275C4214(a1, a2, v2);
}

uint64_t sub_2275C8C40(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_226E93028;

  return sub_2275C45A8(a1, a2, v2);
}

unint64_t sub_2275C8CEC()
{
  result = qword_281398D40;
  if (!qword_281398D40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7BC160, &qword_22767CCF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281398D40);
  }

  return result;
}

unint64_t sub_2275C8D70()
{
  result = qword_281398D38;
  if (!qword_281398D38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7BC160, &qword_22767CCF0);
    sub_2275C90A4(&qword_28139B6E0, MEMORY[0x277D51FE0], MEMORY[0x277D51FD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281398D38);
  }

  return result;
}

uint64_t sub_2275C8E24(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_226E93028;

  return sub_2275C46E8(a1, a2, v2);
}

uint64_t sub_2275C8ED0(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_2275C4C00(a1, v1);
}

unint64_t sub_2275C8F6C()
{
  result = qword_281398C88;
  if (!qword_281398C88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7BF628, &qword_22768C828);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281398C88);
  }

  return result;
}

unint64_t sub_2275C8FF0()
{
  result = qword_281398C80;
  if (!qword_281398C80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7BF628, &qword_22768C828);
    sub_2275C90A4(&qword_28139B4C8, MEMORY[0x277D53250], MEMORY[0x277D53248]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281398C80);
  }

  return result;
}

uint64_t sub_2275C90A4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2275C90EC(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_226E93028;

  return sub_2275C534C(a1, a2, v2);
}

uint64_t sub_2275C9198(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_2275C548C(a1, v1);
}

uint64_t sub_2275C9230(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_226E93028;

  return sub_2275BFBAC(a1, a2, v2);
}

uint64_t sub_2275C92DC(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_226E93028;

  return sub_2275C55C0(a1, a2, v2);
}

uint64_t sub_2275C9388(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_226E93028;

  return sub_2275C5954(a1, a2, v2);
}

uint64_t sub_2275C9434(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_2275C5ACC(a1, v1);
}

uint64_t sub_2275C94D0(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_2275C40E0(a1, v1);
}

uint64_t sub_2275C9568(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_2275C5DFC(a1, v1);
}

uint64_t sub_2275C9604(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_2275C288C(a1, v1);
}

uint64_t sub_2275C969C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_2275C3E80(a1, v1);
}

uint64_t sub_2275C9734(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_226E93028;

  return sub_2275C638C(a1, a2, v2);
}

uint64_t sub_2275C97E0(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_226E93028;

  return sub_2275C66C0(a1, a2, v2);
}

uint64_t sub_2275C988C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_2275C6A64(a1, v1);
}

uint64_t objectdestroy_123Tm(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 24) & ~v4;
  v6 = *(v3 + 64);

  (*(v3 + 8))(v1 + v5, v2);

  return MEMORY[0x2821FE8E8](v1, v5 + v6, v4 | 7);
}

uint64_t sub_2275C9C38@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D53CA0];
  v3 = sub_2276694E0();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_2275C9CAC@<X0>(uint64_t *a2@<X8>)
{
  result = sub_227666150();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_2275C9CD4(uint64_t a1)
{
  *(a1 + 24) = sub_2275C9D3C(&qword_2813A56C8, &unk_227681848);
  result = sub_2275C9D3C(&qword_2813A56C0, MEMORY[0x277D520D8]);
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_2275C9D3C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_227666170();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2275C9D80()
{
  v1 = v0;
  v2 = sub_227669A70();
  v69 = v2;
  v67 = *(v2 - 8);
  v3 = v67;
  MEMORY[0x28223BE20](v2);
  v5 = v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22766B390();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A730();
  sub_22766B370();
  (*(v7 + 8))(v9, v6);
  v10 = v1[2];
  v63 = v1[4];
  ObjectType = swift_getObjectType();
  v70 = v10;
  v11 = *MEMORY[0x277D4E638];
  v64 = *(v3 + 104);
  v62 = v3 + 104;
  v64(v5, v11, v2);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain_n();
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B94F0, &unk_227670BA0);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCB38, &qword_22768C990);
  v54 = sub_226FA712C();
  v53 = sub_2275CD3B8(&qword_281398BC0, &qword_27D7B94F0, &unk_227670BA0, sub_226F62704);
  v59 = sub_227532B14();
  v60 = sub_227532B98();
  sub_227669EC0();

  v12 = v67 + 8;
  v66 = *(v67 + 8);
  v13 = v69;
  v66(v5, v69);
  v67 = v12;
  swift_unknownObjectRelease();
  v70 = v10;
  v14 = v64;
  v64(v5, *MEMORY[0x277D4E4A0], v13);
  swift_allocObject();
  v65 = v1;
  swift_weakInit();
  swift_unknownObjectRetain();
  sub_227669ED0();

  v15 = v66;
  v66(v5, v13);
  swift_unknownObjectRelease();
  v70 = v10;
  v14(v5, *MEMORY[0x277D4E900], v13);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF630, &qword_22768C9B8);
  v50 = sub_2275CD334();
  v49 = sub_2275CD3B8(&qword_281398DE8, &qword_27D7BF630, &qword_22768C9B8, sub_22712BDAC);
  sub_227669EC0();

  v16 = v69;
  v15(v5, v69);
  swift_unknownObjectRelease();
  v70 = v10;
  v64(v5, *MEMORY[0x277D4EAB8], v16);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF638, &qword_22768C9D0);
  v57 = sub_2275CD4E0();
  v52 = sub_2275CD3B8(&qword_281398D68, &qword_27D7BF638, &qword_22768C9D0, sub_2275CD564);
  sub_227669EC0();

  v17 = v69;
  v18 = v66;
  v66(v5, v69);
  swift_unknownObjectRelease();
  v70 = v10;
  v64(v5, *MEMORY[0x277D4EAB0], v17);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  sub_227669EC0();

  v18(v5, v17);
  swift_unknownObjectRelease();
  v70 = v10;
  v19 = v64;
  v64(v5, *MEMORY[0x277D4E420], v17);
  swift_allocObject();
  swift_weakInit();
  v51 = sub_2276641B0();
  swift_unknownObjectRetain();
  sub_227669EC0();

  v20 = v66;
  v66(v5, v17);
  swift_unknownObjectRelease();
  v70 = v10;
  v19(v5, *MEMORY[0x277D4E8F8], v17);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  sub_227669EC0();

  v20(v5, v17);
  swift_unknownObjectRelease();
  v70 = v10;
  v19(v5, *MEMORY[0x277D4EC10], v17);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  sub_227669EC0();

  v21 = v17;
  v22 = v66;
  v66(v5, v21);
  swift_unknownObjectRelease();
  v70 = v10;
  v56 = v10;
  LODWORD(v52) = *MEMORY[0x277D4E430];
  (v19)(v5);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  sub_227669EE0();

  v22(v5, v69);
  v23 = v56;
  swift_unknownObjectRelease();
  v70 = v23;
  LODWORD(v51) = *MEMORY[0x277D4E440];
  (v64)(v5);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  sub_227669EE0();

  v24 = v66;
  v66(v5, v69);
  swift_unknownObjectRelease();
  v70 = v23;
  LODWORD(v50) = *MEMORY[0x277D4E3E8];
  v25 = v64;
  (v64)(v5);
  swift_allocObject();
  swift_weakInit();
  v58 = sub_227669480();
  swift_unknownObjectRetain();
  sub_227669EE0();

  v26 = v5;
  v27 = v69;
  v24(v5, v69);
  v28 = v56;
  swift_unknownObjectRelease();
  v70 = v28;
  v25(v26, *MEMORY[0x277D4E4B0], v27);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCB30, &unk_227686AE0);
  v29 = sub_2275CDACC();
  v30 = sub_2275CDB50();
  v48[2] = v29;
  v49 = v30;
  sub_227669ED0();

  v31 = v69;
  v24(v26, v69);
  swift_unknownObjectRelease();
  v70 = v28;
  v25(v26, *MEMORY[0x277D4E428], v31);
  swift_allocObject();
  swift_weakInit();
  v48[1] = sub_227664390();
  swift_unknownObjectRetain();
  sub_227669EC0();

  v32 = v69;
  v66(v26, v69);
  swift_unknownObjectRelease();
  v70 = v28;
  v25(v26, *MEMORY[0x277D4E910], v32);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  sub_227669EC0();

  v33 = v66;
  v66(v26, v32);
  swift_unknownObjectRelease();
  v70 = v28;
  v34 = v64;
  v64(v26, *MEMORY[0x277D4E510], v32);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  sub_227669ED0();

  v35 = v69;
  v33(v26, v69);
  swift_unknownObjectRelease();
  v70 = v28;
  v34(v26, *MEMORY[0x277D4E3C0], v35);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  sub_227669EC0();

  v36 = v69;
  v66(v26, v69);
  swift_unknownObjectRelease();
  v70 = v28;
  v34(v26, *MEMORY[0x277D4E3F0], v36);
  swift_allocObject();
  swift_weakInit();
  sub_227669EC0();

  v37 = v69;
  v38 = v66;
  v66(v26, v69);
  swift_unknownObjectRelease();
  v70 = v28;
  LODWORD(v57) = *MEMORY[0x277D4E3D0];
  (v34)(v26);
  swift_allocObject();
  v39 = v65;
  swift_weakInit();
  sub_227669EE0();

  v38(v26, v37);
  swift_unknownObjectRelease();
  __swift_project_boxed_opaque_existential_0(v39 + 5, v39[8]);
  v40 = swift_allocObject();
  swift_weakInit();
  sub_2274814CC(0x1Au, &unk_22768CAC8, v40);

  __swift_project_boxed_opaque_existential_0(v39 + 5, v39[8]);
  v41 = swift_allocObject();
  swift_weakInit();
  sub_2274884EC(0x31u, &unk_22768CAD8, v41);

  v42 = v39[15];
  ObjectType = v39[17];
  v63 = swift_getObjectType();
  v70 = v42;
  v43 = v37;
  v44 = v64;
  v64(v26, v52, v43);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain_n();
  sub_227669EE0();

  v45 = v69;
  v66(v26, v69);
  swift_unknownObjectRelease();
  v70 = v42;
  v44(v26, v51, v45);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  sub_227669EE0();

  v46 = v66;
  v66(v26, v45);
  swift_unknownObjectRelease();
  v70 = v42;
  v64(v26, v50, v45);
  swift_allocObject();
  swift_weakInit();
  sub_227669EE0();

  v46(v26, v45);
  swift_unknownObjectRelease();
  v70 = v42;
  v64(v26, v57, v45);
  swift_allocObject();
  swift_weakInit();
  sub_227669EE0();

  v46(v26, v45);
  return swift_unknownObjectRelease();
}

uint64_t sub_2275CB380(uint64_t a1, void *a2, uint64_t a3)
{
  v3[10] = a1;
  v3[11] = a3;
  v3[12] = *a2;
  return MEMORY[0x2822009F8](sub_2275CB3A8, 0, 0);
}

uint64_t sub_2275CB3A8()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 80, v0 + 16);

    __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
    v2 = swift_task_alloc();
    *(v0 + 104) = v2;
    *v2 = v0;
    v2[1] = sub_226FABFA0;
    v3 = *(v0 + 96);

    return sub_227311594(v3);
  }

  else
  {
    **(v0 + 80) = 0;
    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_2275CB4C4(uint64_t a1, uint64_t a2)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return MEMORY[0x2822009F8](sub_2275CB4E4, 0, 0);
}

uint64_t sub_2275CB4E4()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 80, v0 + 16);

    __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
    v2 = swift_task_alloc();
    *(v0 + 96) = v2;
    *v2 = v0;
    v2[1] = sub_226F60ED8;

    return sub_227310E6C();
  }

  else
  {
    **(v0 + 80) = 0;
    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_2275CB5F8(uint64_t a1, void *a2, uint64_t a3)
{
  v3[10] = a1;
  v3[11] = a3;
  v3[12] = *a2;
  return MEMORY[0x2822009F8](sub_2275CB620, 0, 0);
}

uint64_t sub_2275CB620()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 80, v0 + 16);

    __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
    v2 = swift_task_alloc();
    *(v0 + 104) = v2;
    *v2 = v0;
    v2[1] = sub_226FABFA0;
    v3 = *(v0 + 96);

    return sub_227311974(v3);
  }

  else
  {
    **(v0 + 80) = 0;
    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_2275CB73C(uint64_t a1, void *a2, uint64_t a3)
{
  v3[10] = a1;
  v3[11] = a3;
  v3[12] = *a2;
  return MEMORY[0x2822009F8](sub_2275CB764, 0, 0);
}

uint64_t sub_2275CB764()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 80, v0 + 16);

    __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
    v2 = swift_task_alloc();
    *(v0 + 104) = v2;
    *v2 = v0;
    v2[1] = sub_226FABFA0;
    v3 = *(v0 + 96);

    return sub_227311C98(v3);
  }

  else
  {
    **(v0 + 80) = 0;
    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_2275CB880(uint64_t a1, void *a2, uint64_t a3)
{
  v3[10] = a1;
  v3[11] = a3;
  v3[12] = *a2;
  return MEMORY[0x2822009F8](sub_2275CB8A8, 0, 0);
}

uint64_t sub_2275CB8A8()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 80, (v0 + 2));

    __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
    v2 = swift_task_alloc();
    v0[13] = v2;
    *v2 = v0;
    v2[1] = sub_2275CB9CC;
    v3 = v0[12];

    return sub_227311FD8(v3);
  }

  else
  {
    v5 = v0[10];
    *v5 = 0;
    *(v5 + 8) = 1;
    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_2275CB9CC(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 112) = v1;

  if (v1)
  {
    v5 = sub_226F69340;
  }

  else
  {
    *(v4 + 120) = a1;
    v5 = sub_2275CE3D8;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2275CBAF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[11] = a2;
  v3[12] = a3;
  v3[10] = a1;
  return MEMORY[0x2822009F8](sub_2275CBB18, 0, 0);
}

uint64_t sub_2275CBB18()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 80, v0 + 16);

    __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
    v2 = swift_task_alloc();
    *(v0 + 104) = v2;
    *v2 = v0;
    v2[1] = sub_226FAAB58;
    v3 = *(v0 + 88);

    return sub_2273110FC(v3);
  }

  else
  {
    **(v0 + 80) = 0;
    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_2275CBC34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[11] = a2;
  v3[12] = a3;
  v3[10] = a1;
  return MEMORY[0x2822009F8](sub_2275CBC58, 0, 0);
}

uint64_t sub_2275CBC58()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 80, (v0 + 2));

    __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
    v2 = swift_task_alloc();
    v0[13] = v2;
    *v2 = v0;
    v2[1] = sub_2275CBD7C;
    v3 = v0[11];

    return sub_227312390(v3);
  }

  else
  {
    v5 = v0[10];
    *v5 = 0;
    *(v5 + 8) = 1;
    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_2275CBD7C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 112) = v1;

  if (v1)
  {
    v5 = sub_226F69340;
  }

  else
  {
    *(v4 + 120) = a1;
    v5 = sub_2275CBEA4;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2275CBEA4()
{
  v1 = v0[10];
  *v1 = v0[15];
  *(v1 + 8) = 0;
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v2 = v0[1];

  return v2();
}

uint64_t sub_2275CBF18(uint64_t a1, void *a2, uint64_t a3)
{
  v3[10] = a1;
  v3[11] = a3;
  v3[12] = *a2;
  return MEMORY[0x2822009F8](sub_2275CBF40, 0, 0);
}

uint64_t sub_2275CBF40()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 80, (v0 + 2));

    __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
    v2 = swift_task_alloc();
    v0[13] = v2;
    *v2 = v0;
    v2[1] = sub_2275CB9CC;
    v3 = v0[12];

    return sub_227312748(v3);
  }

  else
  {
    v5 = v0[10];
    *v5 = 0;
    *(v5 + 8) = 1;
    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_2275CC064(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  *(v2 + 80) = a2;
  *(v2 + 88) = v3;
  return MEMORY[0x2822009F8](sub_2275CC088, 0, 0);
}

uint64_t sub_2275CC088()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 80, (v0 + 2));

    __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
    v2 = swift_task_alloc();
    v0[12] = v2;
    *v2 = v0;
    v2[1] = sub_226F623A8;
    v3 = v0[11];

    return sub_227312B18(v3);
  }

  else
  {
    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_2275CC19C(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  *(v2 + 80) = a2;
  *(v2 + 88) = v3;
  return MEMORY[0x2822009F8](sub_2275CC1C0, 0, 0);
}

uint64_t sub_2275CC1C0()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 80, (v0 + 2));

    __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
    v2 = swift_task_alloc();
    v0[12] = v2;
    *v2 = v0;
    v2[1] = sub_226F623A8;
    v3 = v0[11];

    return sub_2273137F4(v3);
  }

  else
  {
    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_2275CC2D4(uint64_t a1, uint64_t a2)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return MEMORY[0x2822009F8](sub_2275CC2F4, 0, 0);
}

uint64_t sub_2275CC2F4()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 80, (v0 + 2));

    __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
    v2 = swift_task_alloc();
    v0[12] = v2;
    *v2 = v0;
    v2[1] = sub_226F623A8;
    v3 = v0[10];

    return sub_227314D68(v3);
  }

  else
  {
    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_2275CC408(uint64_t a1, uint64_t a2)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return MEMORY[0x2822009F8](sub_2275CC428, 0, 0);
}

uint64_t sub_2275CC428()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 80, v0 + 16);

    __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
    v2 = swift_task_alloc();
    *(v0 + 96) = v2;
    *v2 = v0;
    v2[1] = sub_226F60ED8;

    return sub_226EA191C();
  }

  else
  {
    **(v0 + 80) = 0;
    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_2275CC53C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[11] = a2;
  v3[12] = a3;
  v3[10] = a1;
  return MEMORY[0x2822009F8](sub_2275CC560, 0, 0);
}

uint64_t sub_2275CC560()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 80, v0 + 16);

    __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
    v2 = swift_task_alloc();
    *(v0 + 104) = v2;
    *v2 = v0;
    v2[1] = sub_226FABFA0;
    v3 = *(v0 + 88);

    return sub_227313F68(v3);
  }

  else
  {
    **(v0 + 80) = 0;
    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_2275CC67C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[11] = a2;
  v3[12] = a3;
  v3[10] = a1;
  return MEMORY[0x2822009F8](sub_2275CC6A0, 0, 0);
}

uint64_t sub_2275CC6A0()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 80, (v0 + 2));

    __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
    v2 = swift_task_alloc();
    v0[13] = v2;
    *v2 = v0;
    v2[1] = sub_2275CB9CC;

    return sub_227314564();
  }

  else
  {
    v4 = v0[10];
    *v4 = 0;
    *(v4 + 8) = 1;
    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_2275CC7C4(uint64_t a1, uint64_t a2)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return MEMORY[0x2822009F8](sub_2275CC7E4, 0, 0);
}

uint64_t sub_2275CC7E4()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 80, (v0 + 2));

    __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
    v2 = swift_task_alloc();
    v0[12] = v2;
    *v2 = v0;
    v2[1] = sub_2275C3124;

    return sub_2273142E4();
  }

  else
  {
    v4 = v0[10];
    *v4 = 0;
    *(v4 + 8) = 1;
    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_2275CC900(uint64_t a1, void *a2, uint64_t a3)
{
  v3[10] = a1;
  v3[11] = a3;
  v4 = a2[1];
  v3[12] = *a2;
  v3[13] = v4;
  return MEMORY[0x2822009F8](sub_2275CC928, 0, 0);
}

uint64_t sub_2275CC928()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 80, (v0 + 2));

    __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
    v2 = swift_task_alloc();
    v0[14] = v2;
    *v2 = v0;
    v2[1] = sub_2275CCA80;
    v3 = v0[12];
    v4 = v0[13];
    v5 = v0[10];

    return sub_2273147E4(v5, v3, v4);
  }

  else
  {
    v7 = v0[10];
    v8 = sub_227669480();
    (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_2275CCA80()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_226FAA9B0;
  }

  else
  {
    v2 = sub_2275CCB94;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2275CCB94()
{
  v1 = v0[10];
  v2 = sub_227669480();
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v3 = v0[1];

  return v3();
}

uint64_t sub_2275CCC3C(uint64_t a1, void *a2, uint64_t a3)
{
  v3[10] = a1;
  v3[11] = a3;
  v3[12] = *a2;
  return MEMORY[0x2822009F8](sub_2275CCC64, 0, 0);
}

uint64_t sub_2275CCC64()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 80, v0 + 16);

    __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
    v2 = swift_task_alloc();
    *(v0 + 104) = v2;
    *v2 = v0;
    v2[1] = sub_226FABFA0;
    v3 = *(v0 + 96);

    return sub_227314AA4(v3);
  }

  else
  {
    **(v0 + 80) = 0;
    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_2275CCD80(uint64_t a1, uint64_t a2)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return MEMORY[0x2822009F8](sub_2275CCDA0, 0, 0);
}

uint64_t sub_2275CCDA0()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 80, (v0 + 2));

    __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
    v2 = swift_task_alloc();
    v0[12] = v2;
    *v2 = v0;
    v2[1] = sub_226F620FC;
    v3 = v0[10];

    return sub_227315698(v3);
  }

  else
  {
    v5 = v0[1];

    return v5();
  }
}