double sub_1C4458FE0(uint64_t a1, char a2)
{
  sub_1C4EF9CD8();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v3);
  sub_1C43FBCC4();
  v4 = 0.0;
  switch(a2)
  {
    case 1:
      sub_1C4EF9B58();
      goto LABEL_4;
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
    case 10:
      sub_1C4EF9BE8();
LABEL_4:
      sub_1C4EF9AD8();
      v4 = v5;
      v6 = sub_1C4404C28();
      v7(v6);
      break;
    default:
      return v4;
  }

  return v4;
}

void sub_1C445916C()
{
  sub_1C4414FE4();
  v4 = v3;
  v33 = v5;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = sub_1C456902C(&unk_1EC0C06C0, &unk_1C4F10DB0);
  sub_1C43FBD18(v14);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v15);
  v16 = sub_1C440101C();
  sub_1C43FCDF8();
  v18 = v17;
  MEMORY[0x1EEE9AC00](v19);
  sub_1C43FBCC4();
  sub_1C44247B4();
  sub_1C4440C6C(v4);

  if (!v1)
  {

    sub_1C456902C(&unk_1EC0C0720, &unk_1C4F0EB20);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_1C4F0D480;
    v21 = MEMORY[0x1E69E63B0];
    v22 = MEMORY[0x1E69A0168];
    *(v20 + 56) = MEMORY[0x1E69E63B0];
    *(v20 + 64) = v22;
    *(v20 + 32) = v11;
    *(v20 + 96) = v21;
    *(v20 + 104) = v22;
    *(v20 + 72) = v9;
    v23 = v33;
    if (v33 >> 60 == 15)
    {
      sub_1C44053F0();
      *(v20 + 128) = 0;
    }

    else
    {
      v24 = MEMORY[0x1E699FD70];
      v25 = MEMORY[0x1E6969080];
      v26 = v7;
      v27 = v33;
    }

    *(v20 + 112) = v26;
    *(v20 + 120) = v27;
    v28 = MEMORY[0x1E69E6530];
    *(v20 + 136) = v25;
    *(v20 + 144) = v24;
    v29 = MEMORY[0x1E69A0180];
    *(v20 + 176) = v28;
    *(v20 + 184) = v29;
    *(v20 + 152) = v13;
    sub_1C4431E64(v7, v23);
    sub_1C4EFB728();
    sub_1C4EFC088();
    (*(v18 + 8))(v2, v16);
    v30 = sub_1C44038D0();
    sub_1C440FD0C(v30, v31, v32, v16);
    sub_1C4423A0C(v0, &unk_1EC0C06C0, &unk_1C4F10DB0);
  }

  sub_1C440A17C();
}

uint64_t sub_1C4459390()
{
  sub_1C43FCF70();
  v3 = v2;
  sub_1C43FBDE4();
  v5 = v4;
  sub_1C44001F0();
  *v6 = v5;
  v7 = *v1;
  sub_1C43FBDAC();
  *v8 = v7;
  *(v5 + 96) = v0;

  if (!v0)
  {

    *(v5 + 104) = v3;
  }

  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1C44594A4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1C43FBCE0();
  v4 = sub_1C43FBC98();
  v5(v4);
  return a2;
}

uint64_t sub_1C4459500()
{
  sub_1C4404078();
  v1(0);
  sub_1C43FBCE0();
  v2 = sub_1C43FBC98();
  v3(v2);
  return v0;
}

unint64_t sub_1C4459558(uint64_t a1)
{
  v2 = sub_1C4F01ED8();

  return sub_1C4458058(a1, v2);
}

unint64_t sub_1C445959C()
{
  result = qword_1EDDDB8A8;
  if (!qword_1EDDDB8A8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDDDB8A8);
  }

  return result;
}

__n128 sub_1C44595E0(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 15) = *(a2 + 15);
  *a1 = result;
  return result;
}

void sub_1C44595F4(uint64_t a1, int a2, void *a3, double a4)
{
  sub_1C4459558(a3);
  sub_1C442C5D8();
  if (v10)
  {
    __break(1u);
LABEL_14:
    sub_1C4461BB8(0, &qword_1EDDDB8A8, 0x1E69A9EE8);
    sub_1C4F029F8();
    __break(1u);
    return;
  }

  sub_1C4411974();
  v11 = sub_1C456902C(&qword_1EC0BA798, &qword_1C4F146C8);
  if (sub_1C440D17C(v11))
  {
    sub_1C4459558(a3);
    sub_1C44331E4();
    if (!v13)
    {
      goto LABEL_14;
    }

    v5 = v12;
  }

  v14 = *v4;
  if (v6)
  {
    v15 = v14[7] + 24 * v5;
    v16 = *v15;
    *v15 = a1;
    *(v15 + 8) = a4;
    *(v15 + 16) = a2;
    *(v15 + 18) = BYTE2(a2);
  }

  else
  {
    sub_1C4458118(v5, a3, a1, a2 & 0xFFFFFF, v14, a4);

    v17 = a3;
  }
}

uint64_t sub_1C4459750(void *a1)
{
  v1 = [a1 bookmark];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1C4EF9A68();

  return v3;
}

uint64_t sub_1C44597B4()
{
  sub_1C43FEAEC();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = sub_1C44598B4(v1, v2);
  if (v4 == -1)
  {

    sub_1C4459988(v1, v2);
  }

  else
  {
    v5 = v3;
    v6 = v4;
    sub_1C4474164(*(v0 + 48), v3, v4 & 1);

    sub_1C4459988(v1, v2);
    sub_1C4474DF8(v5, v6);
  }

  v7 = *(v0 + 56);
  v8 = *(v0 + 32);
  sub_1C4429198();

  *(v8 + v7) = 0;

  sub_1C43FBDA0();

  return v9();
}

uint64_t sub_1C44598B4(id a1, char a2)
{
  v2 = a1;
  if (a2)
  {
    if (a2 == 1)
    {
      v3 = a1;
    }

    else if (a1 >= 2)
    {
      sub_1C4F01828();
      sub_1C4411404();
      sub_1C4428DF0(v4, v5, MEMORY[0x1E69E8558]);
      v2 = swift_allocError();
      sub_1C4F00EA8();
    }

    else
    {
      return 0;
    }
  }

  else
  {
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }

  return v2;
}

uint64_t sub_1C445996C(uint64_t a1)
{
  if ((*(a1 + 8) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

void sub_1C4459988(void *a1, char a2)
{
  if (a2 == 1)
  {
  }

  else if (!a2)
  {
  }
}

uint64_t sub_1C44599A4()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  v2 = *(v1 + 32);
  v3 = *v0;
  sub_1C43FBDAC();
  *v4 = v3;

  return MEMORY[0x1EEE6DFA0](sub_1C44597B4, v2, 0);
}

uint64_t sub_1C4459AA4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C4459AF0()
{
  *(v0 - 64) = 0;
  *(v0 - 56) = 0xE000000000000000;

  return sub_1C4F02248();
}

id sub_1C4459B20(uint64_t a1)
{
  v3 = *(*(v1 + 56) + 8 * a1);

  return v3;
}

uint64_t sub_1C4459B80()
{

  return swift_dynamicCast();
}

uint64_t sub_1C4459C2C()
{
}

void *sub_1C4459CA8()
{
  v4 = *(v0 + 56);
  *(v3 - 112) = v1;
  v5 = (v1 + v4);
  *v5 = 0;
  v5[1] = 0;
  v6 = v2[3];
  *(v3 - 128) = v2;
  return sub_1C4409678(v2, v6);
}

uint64_t sub_1C4459CE0(uint64_t a1)
{
  *(v3 + *(v2 + 44)) = v5;
  *(v3 + *(v2 + 48)) = *(v1 + 220);

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C4459D20()
{
  sub_1C4404B08();
  v57 = v0;
  sub_1C444AF3C(v0 + 16);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v5 = sub_1C4F00968();
  sub_1C4F01CF8();
  sub_1C44624E4();

  if (sub_1C444AD54())
  {
    v2 = *(v0 + 240);
    v3 = *(v0 + 232);
    sub_1C43FECF0();
    swift_slowAlloc();
    sub_1C440A2C8();
    swift_slowAlloc();
    sub_1C442AD20();
    *v1 = 136446210;
    sub_1C43FE990();
    v6 = sub_1C444AB08();
    sub_1C448602C(v6, v7, v8, v9);
    sub_1C4D1ED44();
    *(v1 + 4) = v3;
    sub_1C4415A90();
    _os_log_impl(v10, v11, v12, v13, v14, 0xCu);
    sub_1C440962C(v4);
    v15 = sub_1C4416E14();
    MEMORY[0x1C6942830](v15);
    v16 = sub_1C43FEF7C();
    MEMORY[0x1C6942830](v16);
  }

  v17 = *(v0 + 224);
  v18 = v17[6];
  v19 = sub_1C4409678(v17 + 2, v17[5]);
  v20 = sub_1C4402B58();
  if (v21(v20))
  {
    if ((*(v0 + 376) & 0xC000) == 0x8000)
    {
      v22 = sub_1C44889D0();
      v24 = v22 == v18 && v23 == 0xE400000000000000;
      if (v24)
      {
      }

      else
      {
        sub_1C442E6C0(v22, v23);
        sub_1C44624E4();

        if ((v18 & 1) == 0)
        {
          v25 = *(*(*(v0 + 160) + OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate13ViewUpdateJob_manager) + 16);
          v26 = swift_task_alloc();
          *(v26 + 16) = v19;
          swift_task_alloc();
          sub_1C441692C();
          v27[2] = v28;
          v27[3] = v26;
          v27[4] = v25;

          sub_1C444AE28();
        }
      }
    }

    sub_1C44752DC();

    v36 = sub_1C4F00968();
    sub_1C4F01CF8();
    sub_1C440D060();

    if (sub_1C44020E0())
    {
      v37 = *(v0 + 376);
      sub_1C43FECF0();
      v38 = swift_slowAlloc();
      sub_1C43FEC60();
      swift_slowAlloc();
      sub_1C44057F8();
      *v38 = 136446210;
      v39 = sub_1C43FD2BC();
      v41 = sub_1C442A10C(v39, v40);
      sub_1C441D828(v41, v42, &v56);
      sub_1C44036EC();
      *(v38 + 4) = v37;
      sub_1C4402B48();
      _os_log_impl(v43, v44, v45, v46, v47, 0xCu);
      sub_1C4406614();
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
    }

    v48 = *(v0 + 224);
    v49 = *(v0 + 208);
    sub_1C440F1BC();
    swift_beginAccess();
    v34 = *(v48 + 88);
    sub_1C44DDE2C();
    sub_1C4401818(v49);
    sub_1C4466DD0();
    if (v24)
    {
      v50 = v4[1];
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v51 = sub_1C43FD2BC();
      v50(v51);

      sub_1C4420C3C(v3, &qword_1EC0C6428, qword_1C4F6D7E8);
    }

    else
    {
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4420C3C(v3, &qword_1EC0C6428, qword_1C4F6D7E8);
      sub_1C445A19C(v49);

      v52 = sub_1C43FD2BC();
      v53(v52);
    }

    v35 = 0;
  }

  else
  {
    v29 = *(v0 + 200);
    sub_1C44DDE2C();
    sub_1C442F7D8();
    sub_1C441D778();
    if (v24)
    {
      v30 = sub_1C4402694();
      v31(v30);

      sub_1C4420C3C(v2, &qword_1EC0C6428, qword_1C4F6D7E8);
    }

    else
    {
      sub_1C4420C3C(v2, &qword_1EC0C6428, qword_1C4F6D7E8);
      sub_1C445A19C(v29);

      v32 = sub_1C4402694();
      v33(v32);
    }

    v34 = 0;
    v35 = 2;
  }

  sub_1C4D1ECD4();

  return v54(v34, v35);
}

uint64_t sub_1C445A19C(uint64_t a1)
{
  v2 = v1;
  v34 = a1;
  v3 = sub_1C456902C(&qword_1EC0C6428, qword_1C4F6D7E8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v32 - v7;
  v9 = _s7MetricsO7PayloadVMa(0);
  v35 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  MEMORY[0x1EEE9AC00](v10);
  v36 = &v32 - v11;
  v12 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v32 - v13;
  v15 = sub_1C444AF90(v37);
  if (!sub_1C44157D4(v16, 1, v9))
  {
    sub_1C4EF9CC8();
    v17 = sub_1C4EF9CD8();
    sub_1C440BAA8(v14, 0, 1, v17);
    sub_1C468282C();
  }

  (v15)(v37, 0);
  v18 = sub_1C444AF90(v37);
  if (!sub_1C44157D4(v19, 1, v9))
  {
    sub_1C4EF9CC8();
    v20 = sub_1C4EF9CD8();
    sub_1C440BAA8(v14, 0, 1, v20);
    sub_1C468282C();
  }

  (v18)(v37, 0);
  swift_beginAccess();
  sub_1C44DDE2C();
  v21 = v9;
  if (sub_1C44157D4(v8, 1, v9) == 1)
  {
    sub_1C4420C3C(v8, &qword_1EC0C6428, qword_1C4F6D7E8);
    if (qword_1EDDFD018 != -1)
    {
      swift_once();
    }

    v22 = sub_1C4F00978();
    sub_1C442B738(v22, qword_1EDE2DDF8);
    v23 = sub_1C4F00968();
    v24 = sub_1C4F01CE8();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_1C43F8000, v23, v24, "EventLog.WriteEvent payload was not defined.", v25, 2u);
      MEMORY[0x1C6942830](v25, -1, -1);
    }
  }

  else
  {
    v32 = v5;
    v33 = v9;
    sub_1C446268C();
    sub_1C4F00288();
    sub_1C4459500();
    swift_allocObject();
    sub_1C446268C();
    sub_1C4F00278();

    v26 = *(v2 + OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate13ViewUpdateJob_viewQuery);
    v27 = *(v2 + OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate13ViewUpdateJob_viewQuery + 8);
    if (v27 >> 14)
    {
      v5 = v32;
      if (v27 >> 14 == 1)
      {
        v26 = (v27 >> 8) & 0x3F;
      }

      else
      {
        v26 >>= 16;
      }
    }

    else
    {
      v5 = v32;
    }

    v21 = v33;
    if (v26 == 2)
    {
      v28 = v34;
      swift_beginAccess();
      sub_1C4589678();
      v29 = *(*(v28 + 88) + 16);
      sub_1C458A1F8();
      v30 = *(v28 + 88);
      *(v30 + 16) = v29 + 1;
      sub_1C4459500();
      *(v28 + 88) = v30;
      v21 = v33;
      swift_endAccess();
    }

    sub_1C44544DC(v36, _s7MetricsO7PayloadVMa);
  }

  sub_1C440BAA8(v5, 1, 1, v21);
  swift_beginAccess();
  sub_1C468282C();
  return swift_endAccess();
}

uint64_t sub_1C445A770()
{
  sub_1C43FBD3C();
  v1 = _s7MetricsO7PayloadVMa(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  v3 = sub_1C4EF9CD8();
  sub_1C43FBCE0();
  v5 = *(v4 + 8);
  v6 = sub_1C443E470();
  v5(v6);
  if (!sub_1C4418138())
  {
    v7 = sub_1C443E470();
    v5(v7);
  }

  if (!sub_1C4418138())
  {
    v8 = sub_1C443E470();
    v5(v8);
  }

  if (!sub_1C4418138())
  {
    v9 = sub_1C443E470();
    v5(v9);
  }

  if (!sub_1C4418138())
  {
    v10 = sub_1C443E470();
    v5(v10);
  }

  if (!sub_1C4418138())
  {
    v11 = sub_1C443E470();
    v5(v11);
  }

  if (!sub_1C4418138())
  {
    v12 = sub_1C443E470();
    v5(v12);
  }

  v13 = *(v1 + 64);
  if (!sub_1C44157D4(v2 + v13, 1, v3))
  {
    (v5)(v2 + v13, v3);
  }

  sub_1C43FE9F0();

  return MEMORY[0x1EEE6BDD0](v14, v15, v16);
}

void sub_1C445A93C()
{

  sub_1C4785250();
}

void sub_1C445A960()
{
  *(v3 - 312) = v2;
  *(v3 - 256) = v0;
  *(v3 - 248) = v1;
}

uint64_t sub_1C445A998()
{
  v2 = *(v0 - 672);
  v3 = *(v0 - 680);

  return sub_1C44239FC(v2, v3);
}

void sub_1C445A9C8(uint64_t a1@<X8>)
{
  v2 = v1 + a1;
  *v2 = 0;
  *(v2 + 8) = 1;
}

uint64_t sub_1C445AA1C(uint64_t a1)
{

  return sub_1C4F02938();
}

uint64_t sub_1C445AA94@<X0>(char a1@<W8>)
{
  *(v1 - 65) = a1;

  return sub_1C4F02618();
}

uint64_t sub_1C445AAC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{

  return swift_beginAccess();
}

uint64_t sub_1C445AAE8()
{
  v2 = *(v0 - 144);
  v3 = *(v0 - 160);

  return sub_1C4471988(v2, v3);
}

uint64_t sub_1C445AB38()
{

  return sub_1C4F01828();
}

uint64_t sub_1C445AB80(uint64_t a1)
{

  return sub_1C4430900(v1, a1);
}

uint64_t sub_1C445ABB8()
{

  return sub_1C4851984();
}

uint64_t sub_1C445ABE8()
{
  v2 = *(v0 - 424);
  v3 = *(v0 - 432);

  return sub_1C44239FC(v2, v3);
}

void sub_1C445AC20(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t sub_1C445AC50()
{
  *(v1 - 216) = v0;

  return sub_1C4EFF0C8();
}

uint64_t sub_1C445ACCC()
{

  sub_1C440CABC();
  v0 = sub_1C445AD5C();

  return v0 & 1;
}

uint64_t sub_1C445ADFC()
{
  sub_1C43FCF70();
  v3 = v2;
  v5 = v4;
  sub_1C43FBDE4();
  v6 = *v1;
  sub_1C43FBDAC();
  *v7 = v6;

  sub_1C4D1ECD4();
  if (!v0)
  {
    v8 = v5;
    v9 = v3;
  }

  return v10(v8, v9);
}

uint64_t sub_1C445AEFC()
{
  sub_1C43FCF70();
  v2 = *v1;
  sub_1C44001F0();
  *v4 = v3;
  *(v3 + 105) = v5;
  *(v3 + 88) = v6;
  *(v3 + 96) = v0;

  v7 = *(v2 + 56);
  if (v0)
  {
    v8 = sub_1C4CDB7A8;
  }

  else
  {
    v8 = sub_1C445B028;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, 0);
}

uint64_t sub_1C445B028()
{
  sub_1C4415A68();
  sub_1C43FEAEC();
  v2 = *(v0 + 105);
  if (v2 < 2)
  {
    goto LABEL_9;
  }

  if (v2 == 2 && *(v0 + 88) == 2)
  {
    LOBYTE(v2) = 2;
LABEL_9:
    v7 = *(v0 + 48);
    v8 = (*(v0 + 56) + *(v0 + 72));
    *v7 = *(v0 + 88);
    *(v7 + 8) = v2;
    v9 = *v8;
    v10 = v8[1];
    *v8 = 0;
    v8[1] = 0;
    sub_1C44239FC(v9, v10);
    goto LABEL_10;
  }

  v3 = *(v0 + 96);
  sub_1C4F01968();
  LOBYTE(v2) = *(v0 + 105);
  if (!v3)
  {
    goto LABEL_9;
  }

  sub_1C4459988(*(v0 + 88), v2);
  sub_1C43FF870();
  swift_getErrorValue();
  sub_1C4D118BC();
  if (v4)
  {
    v5 = *(v0 + 64);

    v6 = *(v0 + 48);
    if (*(v5 + OBJC_IVAR____TtCCO24IntelligencePlatformCore10ViewUpdate12JobScheduler10JobTracker_cancelled) == 1)
    {
      sub_1C44054BC(v6);
    }

    else
    {
      sub_1C43FCB64(v6);
    }
  }

  else
  {
    if (qword_1EDDFD018 != -1)
    {
      sub_1C4400660(&qword_1EDDFD018);
    }

    v20 = sub_1C4F00978();
    sub_1C442B738(v20, qword_1EDE2DDF8);
    v21 = sub_1C43FCFC0();
    v22 = sub_1C4F00968();
    v23 = sub_1C4F01CD8();

    if (os_log_type_enabled(v22, v23))
    {
      sub_1C43FD084();
      v24 = sub_1C4405A9C();
      *v1 = 138412290;
      v25 = v3;
      v26 = _swift_stdlib_bridgeErrorToNSError();
      sub_1C4416538(v26);
      sub_1C43FF718(&dword_1C43F8000, v27, v23, "ViewUpdate.JobScheduler/ExecutorTask: Job 'next' threw an error: %@");
      sub_1C4420C3C(v24, &qword_1EC0BDA00, &qword_1C4F10D30);
      sub_1C43FFD4C();
      sub_1C43FEA20();
    }

    v28 = *(v0 + 48);

    *v28 = v3;
    *(v28 + 8) = 1;
  }

LABEL_10:
  sub_1C44500B4(OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate12JobScheduler_currentlyRunningJob);
  sub_1C44500B4(OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate12JobScheduler_currentJobTask);
  sub_1C43FBDA0();
  sub_1C4426C44();

  return v12(v11, v12, v13, v14, v15, v16, v17, v18);
}

uint64_t sub_1C445B22C()
{
  sub_1C43FCF70();
  v1 = *v0;
  v2 = *v0;
  sub_1C43FBDAC();
  *v3 = v2;
  v4 = *(v1 + 32);
  v5 = *v0;
  *v3 = *v0;

  v6 = *(v2 + 24);
  *v4 = *(v1 + 16);
  *(v4 + 8) = v6;
  v7 = *(v5 + 8);

  return v7();
}

uint64_t sub_1C445B354()
{
  sub_1C43FCF70();
  sub_1C447CCB8();
  sub_1C44001F0();
  *v3 = v2;
  v4 = *v1;
  sub_1C43FEB84();
  *v5 = v4;
  *(v7 + 512) = v6;
  *(v7 + 504) = v0;

  sub_1C4461DAC();
  sub_1C447E3E8();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1C445B46C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C44A3C24();
  a19 = v24;
  a20 = v25;
  sub_1C4404B08();
  a18 = v22;
  if (*(v22 + 512))
  {
    if ((*(v22 + 512) & 0x100) == 0)
    {
      sub_1C445C3F8();
      v27 = v26;
      v29 = *(v26 + 16);
      v28 = *(v26 + 24);
      v30 = (v29 + 1);
      if (v29 >= v28 >> 1)
      {
        sub_1C43FFD98(v28);
        sub_1C445C3F8();
        v27 = v69;
      }

      v31 = *(v22 + 352);
      *(v27 + 16) = v30;
      *(v27 + 8 * v29 + 32) = v31;

      goto LABEL_8;
    }

LABEL_15:
    sub_1C445AB38();
    sub_1C4440AFC();
    sub_1C443D71C(v43, 255, v44, MEMORY[0x1E69E8558]);
    sub_1C441C114();
    swift_allocError();
    sub_1C4F00EA8();
    swift_willThrow();
    sub_1C445B84C();
    sub_1C4420C3C(v20, &qword_1EC0BE5A8, &qword_1C4F376A8);
    sub_1C44081DC();
    sub_1C44544DC(v21, v45);
    sub_1C4413FF0();

    sub_1C43FBDA0();
    goto LABEL_27;
  }

  if ((*(v22 + 512) & 0x100) != 0)
  {

    goto LABEL_15;
  }

  v30 = *(MEMORY[0x1E69E7CC0] + 16);

  if (!v30)
  {
    v32 = v22 + 288;
    if (qword_1EDDFD018 != -1)
    {
      sub_1C441A86C();
      swift_once();
    }

    v46 = *(v22 + 456);
    v47 = sub_1C4F00978();
    sub_1C442B738(v47, qword_1EDE2DDF8);
    sub_1C43FCFC0();
    swift_bridgeObjectRetain_n();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v30 = sub_1C4F00968();
    v48 = sub_1C4F01CF8();

    if (os_log_type_enabled(v30, v48))
    {
      v49 = *(v22 + 456);
      sub_1C43FECF0();
      v50 = swift_slowAlloc();
      sub_1C43FEC60();
      swift_slowAlloc();
      sub_1C44057F8();
      *v50 = 136315138;
      if (v49)
      {
        v51 = (v22 + 448);
      }

      else
      {
        v46 = *(v22 + 368);
        v51 = (v22 + 360);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      }

      v52 = sub_1C441D828(*v51, v46, &a10);

      *(v50 + 4) = v52;
      sub_1C440A610(&dword_1C43F8000, v53, v48, "ViewUpdate: %s did not update");
      sub_1C4406614();
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
    }

    else
    {
    }

    sub_1C4D1ECF8();
    sub_1C444AF90(v22 + 288);
    sub_1C44249A8();
    v56 = sub_1C4462128(v54, v55);
    if (!sub_1C44157D4(v56, v57, v48))
    {
      *(v46 + 32) = 4;
    }

    goto LABEL_26;
  }

LABEL_8:
  v32 = v22 + 256;
  if (qword_1EDDFECD0 != -1)
  {
    sub_1C4400FC0();
    swift_once();
  }

  v33 = sub_1C4F00978();
  sub_1C43FCEE8(v33, qword_1EDE2DF70);
  v34 = sub_1C4F00968();
  v35 = sub_1C4F01CF8();
  if (os_log_type_enabled(v34, v35))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    sub_1C4485C10(&dword_1C43F8000, v36, v37, "ViewUpdate: completed update");
    v38 = sub_1C43FEF7C();
    MEMORY[0x1C6942830](v38);
  }

  sub_1C4D1ECF8();

  sub_1C444AF90(v22 + 256);
  sub_1C44249A8();
  v41 = sub_1C4462128(v39, v40);
  if (!sub_1C44157D4(v41, v42, v23))
  {
    *(v35 + 32) = 1;
  }

LABEL_26:
  v58 = sub_1C4401EF4();
  (v30)(v58);
  sub_1C44D4570();
  sub_1C4420C3C(v30, &qword_1EC0BE5A8, &qword_1C4F376A8);
  sub_1C44081DC();
  sub_1C44544DC(v32, v59);
  sub_1C4413FF0();

  sub_1C43FC1B0();
LABEL_27:
  sub_1C4410B00();

  return v61(v60, v61, v62, v63, v64, v65, v66, v67, a9, a10, a11, a12);
}

uint64_t sub_1C445B84C()
{
  v0 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v9[-v1];
  v3 = sub_1C444AF90(v9);
  v5 = v4;
  v6 = _s7MetricsO7PayloadVMa(0);
  if (!sub_1C44157D4(v5, 1, v6))
  {
    sub_1C4EF9CC8();
    v7 = sub_1C4EF9CD8();
    sub_1C440BAA8(v2, 0, 1, v7);
    sub_1C468282C();
  }

  return (v3)(v9, 0);
}

uint64_t sub_1C445B95C()
{
  sub_1C43FCF70();
  sub_1C447CCB8();
  sub_1C44001F0();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 344) = v0;

  sub_1C4461DAC();
  sub_1C447E3E8();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C445BA70@<X0>(uint64_t a1@<X8>)
{

  return sub_1C4430900(v3 + v1, v2 + a1);
}

uint64_t sub_1C445BA94()
{

  return sub_1C4EFF0C8();
}

uint64_t sub_1C445BAB4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_1C444088C(v4, v5 + v6, a3, a4);
}

uint64_t sub_1C445BAE8(uint64_t a1)
{

  return sub_1C4F010B8();
}

uint64_t sub_1C445BB70()
{
}

uint64_t sub_1C445BBB0()
{

  return sub_1C4F00DA8();
}

uint64_t sub_1C445BBF0(uint64_t a1)
{

  return sub_1C4F01198();
}

uint64_t sub_1C445BC14(float a1)
{
  *v1 = a1;

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C445BC48()
{
}

uint64_t sub_1C445BCC8(uint64_t a1)
{

  return sub_1C4F02618();
}

uint64_t sub_1C445BCE4(uint64_t a1)
{

  return swift_dynamicCast();
}

uint64_t sub_1C445BD08()
{

  return sub_1C4430900(v1, v0);
}

void sub_1C445BD24()
{

  sub_1C45D9880();
}

uint64_t sub_1C445BD44()
{
  v3 = *(v0 - 48);
  v4 = *(v0 - 32);
  *(v1 - 119) = *(v0 - 23);
  *(v1 - 144) = v3;
  *(v1 - 128) = v4;

  return sub_1C45A2358(v1 - 144, v1 - 208);
}

uint64_t sub_1C445BD88()
{
  *(v0 - 96) = 0;

  return sub_1C4EFF0C8();
}

uint64_t sub_1C445BDB4()
{
  v2 = *(v0 - 472);
  v3 = *(v0 - 480);

  return sub_1C44239FC(v2, v3);
}

uint64_t sub_1C445BE04(__n128 *a1, __n128 a2)
{
  a1[1] = a2;

  return sub_1C4424B10(v2);
}

uint64_t sub_1C445BE98()
{

  return type metadata accessor for PHPersonStructs.Person(0);
}

uint64_t sub_1C445BF00(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{

  return swift_dynamicCast();
}

void sub_1C445BF24(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

unint64_t sub_1C445BF44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);

  return sub_1C441D828(v22, v21, va);
}

id sub_1C445BF60(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t sub_1C445BF78()
{
}

uint64_t sub_1C445BFA4@<X0>(uint64_t a1@<X8>)
{
  *(v2 + 8 * *(a1 - 256)) = v1;
}

uint64_t sub_1C445BFE0(uint64_t a1)
{

  return sub_1C4EFF808();
}

double sub_1C445C02C(uint64_t a1)
{
  v2 = *(v1 + 24);
  *(v1 + 128) = a1;
  *(v1 + 136) = *(v2 + 24);
  return *(v1 + 104);
}

uint64_t sub_1C445C058@<X0>(char a1@<W8>)
{
  *(v1 - 72) = a1;

  return sub_1C4F02618();
}

uint64_t sub_1C445C128()
{
  v5 = (*(v0 + 48) + 16 * v3);
  *v5 = v2;
  v5[1] = v1;
}

uint64_t sub_1C445C154()
{
  *(v1 + 240) = *(v2 + 8);
  *(v1 + 248) = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  return v0;
}

uint64_t sub_1C445C170()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t sub_1C445C198()
{
  v2 = *(v0 - 776);
  v3 = *(v0 - 784);

  return sub_1C44239FC(v2, v3);
}

uint64_t sub_1C445C1D0()
{
  sub_1C440962C((v0 + 136));
}

void sub_1C445C200()
{
  *(v1 + 14) = v0;
  *(v1 + 22) = 1024;
  *(v1 + 24) = 0;
}

uint64_t sub_1C445C228()
{
  *(v0 - 192) = 0;
  *(v0 - 184) = 0xE000000000000000;

  return sub_1C4F02248();
}

void sub_1C445C280(uint64_t a1)
{

  sub_1C44CD9C0(0, a1 & ~(a1 >> 63), 0);
}

uint64_t sub_1C445C2C4()
{
  v2 = *(v1 - 184);
  *(v1 - 208) = *(*(v1 - 176) + 16);
  *(v1 - 200) = v0;
  return v2;
}

uint64_t sub_1C445C32C@<X0>(void *a1@<X8>)
{
  result = *(v1 + 224);
  *a1 = v2;
  a1[1] = result;
  return result;
}

void sub_1C445C33C()
{
  sub_1C441B754();
  if ((v5 & 1) == 0 || (sub_1C441172C(), v6 == v7))
  {
LABEL_6:
    sub_1C441E1B8();
    if (v4)
    {
      sub_1C4422208(v8, v9, v10, v11, v12, v13);
      v14 = sub_1C44182F4();
      j__malloc_size(v14);
      sub_1C441EA34();
      v14[2] = v3;
      v14[3] = v15;
      if (v2)
      {
LABEL_8:
        v16 = sub_1C44099F4();
        v1(v16);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v2)
    {
      goto LABEL_8;
    }

    v17 = sub_1C440CAA0();
    memcpy(v17, v18, v19);
    goto LABEL_11;
  }

  sub_1C442B904();
  if (!v6)
  {
    sub_1C440A4D4();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_1C445C448()
{
  sub_1C43FE96C();
  sub_1C441FC74();
  sub_1C4EFB1E8();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v3);
  sub_1C43FBFDC();
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v4);
  sub_1C43FC010();
  sub_1C4EFAD98();
  sub_1C43FCDF8();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  sub_1C4406E1C();
  sub_1C4414B64();
  sub_1C4404B44();
  sub_1C4EFB2C8();
  if (!v2)
  {
    sub_1C443137C();
    goto LABEL_8;
  }

  v8 = v2;
  sub_1C4EFA798();
  sub_1C441CA74();
  sub_1C442FDF8();
  v9 = *(v6 + 8);
  v10 = sub_1C43FD574();
  v9(v10);
  if (v0)
  {

    v13 = sub_1C4778264();
    sub_1C43FFB2C(&type metadata for ErrorHandlingDatabasePoolError, v13);
    sub_1C4405CA4();
LABEL_8:
    sub_1C440E3AC();
    sub_1C43FBC80();
    return;
  }

  v11 = v2;
  sub_1C4EFAAC8();
  sub_1C441CA74();
  sub_1C442FDF8();
  v12 = sub_1C43FD574();
  v9(v12);
  v20 = v2;
  v14 = v2;
  v15 = sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
  if (!sub_1C442DFA8(v1, &v20, v15))
  {

    goto LABEL_8;
  }

  v16 = sub_1C44132A8();
  v17(v16);
  v18 = sub_1C441733C(OBJC_IVAR____TtC24IntelligencePlatformCore25ErrorHandlingDatabasePool_databaseFileURL);
  sub_1C4774554(v18, v19);
  __break(1u);
}

uint64_t sub_1C445C6B0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, void (*a3)(uint64_t *__return_ptr, uint64_t, uint64_t)@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>)
{
  result = sub_1C445C6FC(a2, a3, a4, a5);
  if (!v5)
  {
    *a1 = result & 1;
  }

  return result;
}

uint64_t sub_1C445C6FC(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a3, uint64_t a4)
{
  swift_unownedRetain();

  a2(&v10, v7, a4);

  swift_unownedRelease();
  if (!v4)
  {
    v8 = v10;
  }

  return v8 & 1;
}

void sub_1C445C780()
{
  sub_1C43FE96C();
  sub_1C44054CC();
  v6 = sub_1C456902C(&unk_1EC0C06C0, &unk_1C4F10DB0);
  sub_1C43FBD18(v6);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v7);
  sub_1C4402A68();
  v8 = sub_1C4EFB768();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v9);
  sub_1C440A82C();
  v10 = sub_1C4424B10(v3);
  if (v10 == v5 && v11 == 0xE400000000000000)
  {
  }

  else
  {
    v13 = sub_1C442E6C0(v10, v11);

    if ((v13 & 1) == 0)
    {
      sub_1C442F794();
      v0 = v1;
      if (v1)
      {
        goto LABEL_11;
      }
    }
  }

  swift_unownedRetainStrong();
  sub_1C4440C6C(v4);
  sub_1C441CEF4();

  if (!v0)
  {

    v14 = sub_1C456902C(&unk_1EC0C0720, &unk_1C4F0EB20);
    v15 = sub_1C4404370(v14);
    v16 = sub_1C445BE04(v15, xmmword_1C4F0CE60);
    v17 = MEMORY[0x1E69A0138];
    v15[3].n128_u64[1] = MEMORY[0x1E69E6158];
    v15[4].n128_u64[0] = v17;
    v15[2].n128_u64[0] = v16;
    v15[2].n128_u64[1] = v18;
    sub_1C4401F74();
    sub_1C4466DA4();
    sub_1C4EFC088();
    v19 = sub_1C441B144();
    v20(v19, v8);
    v21 = sub_1C44179F4();
    sub_1C43FF8A0(v21, v22, v23, v8);
    sub_1C443474C();
    sub_1C44150DC();
    sub_1C4EFB9A8();

    sub_1C4420C3C(&v24, &unk_1EC0BC770, &qword_1C4F10DC0);
    sub_1C4420C3C(v2, &unk_1EC0C06C0, &unk_1C4F10DB0);
  }

LABEL_11:
  sub_1C4402144();
  sub_1C43FBC80();
}

void sub_1C445C9B8(_BYTE *a1@<X8>)
{
  sub_1C445C780();
  if (!v1)
  {
    *a1 = v3 & 1;
  }
}

uint64_t sub_1C445CA14(void *a1)
{
  v1 = [a1 latestBookmark];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1C4EF9A68();

  return v3;
}

uint64_t sub_1C445CA78(uint64_t a1, uint64_t a2, char a3, char a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, __int16 a9)
{
  *(v9 + 120) = 0;
  *(v9 + 128) = 0;
  *(v9 + 136) = 0xE000000000000000;
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  *(v9 + 32) = a3;
  *(v9 + 80) = a4 & 1;
  *(v9 + 88) = a5;
  *(v9 + 96) = a6;
  *(v9 + 144) = a5;
  *(v9 + 152) = a6;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4431E64(a5, a6);
  sub_1C441DFEC(0, 0xF000000000000000);
  *(v9 + 104) = a7;
  *(v9 + 112) = a8;
  *(v9 + 33) = a9;
  *(v9 + 40) = a1;
  *(v9 + 48) = a2;
  *(v9 + 56) = 0;
  *(v9 + 64) = 0;
  *(v9 + 72) = 0;
  return v9;
}

void sub_1C445CB4C(uint64_t a1)
{
  v4 = sub_1C49E1A90(a1);
  if (v6)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v5(v4, 1);
  v7 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  sub_1C44A1EDC();
  if (v9 < v1)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v10 = v7 + 40 * v8;
  v11 = sub_1C43FE99C();
  v13 = sub_1C456902C(v11, v12);
  sub_1C44D3DF4(v10 + 32, v14, v15, v13);

  if (!v1)
  {
LABEL_8:
    *v2 = v7;
    return;
  }

  v16 = *(v7 + 16);
  v6 = __OFADD__(v16, v1);
  v17 = v16 + v1;
  if (!v6)
  {
    *(v7 + 16) = v17;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

uint64_t sub_1C445CC30(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = *v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v6;
  if (!result || a1 > *(v6 + 24) >> 1)
  {
    result = a3();
    *v3 = result;
  }

  return result;
}

uint64_t sub_1C445CCA8()
{

  return swift_allocObject();
}

uint64_t sub_1C445CCE4(float a1)
{
  *v1 = a1;

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C445CD08()
{

  return swift_arrayDestroy();
}

uint64_t sub_1C445CD44()
{

  return sub_1C4F02738();
}

uint64_t sub_1C445CD68(uint64_t result, uint64_t a2)
{
  v3 = *(v2 - 216);
  *v3 = result;
  v3[1] = a2;
  *(v2 - 70) = 7;
  return result;
}

void sub_1C445CDD8(uint64_t a1, uint64_t a2, char a3, uint64_t a4, _OWORD *a5, uint64_t a6, uint64_t a7, void *a8)
{
  v9 = sub_1C4428DA0(a6);
  v10 = 0;
  v11 = a6 & 0xC000000000000001;
  while (1)
  {
    if (v9 == v10)
    {

      sub_1C445DA1C(a5);
      sub_1C440AD7C();
      sub_1C4F02248();

      sub_1C4401288();
      sub_1C43FCB40(v19);
      sub_1C441F098();

      v20 = sub_1C4402CD0();
      MEMORY[0x1C6940010](v20);

      v21 = sub_1C446D0DC();
      v22 = sub_1C43FFB2C(&type metadata for ViewUpdateError, v21);
      sub_1C440B6F4(v22, v23);
LABEL_33:

LABEL_34:

      return;
    }

    if (v11)
    {
      v12 = MEMORY[0x1C6940F90](v10, a6);
    }

    else
    {
      if (v10 >= *((a6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_97;
      }

      v12 = *(a6 + 8 * v10 + 32);
    }

    if (__OFADD__(v10, 1))
    {
      break;
    }

    v139 = v12;
    v13 = [v12 configIdentifier];
    v14 = [v13 updateType];

    v15 = sub_1C4F01138();
    v17 = v16;

    if (v15 == 0x6E6F6974656C6564 && v17 == 0xE800000000000000)
    {

LABEL_16:
      for (i = 0; ; ++i)
      {
        if (v9 == i)
        {

          sub_1C445DA1C(a5);
          sub_1C440AD7C();
          sub_1C4F02248();

          sub_1C4401288();
          sub_1C43FCB40(v33);
          sub_1C441F098();

          v34 = sub_1C4402CD0();
          MEMORY[0x1C6940010](v34);

          v35 = sub_1C446D0DC();
          v36 = sub_1C43FFB2C(&type metadata for ViewUpdateError, v35);
          sub_1C440B6F4(v36, v37);

          goto LABEL_33;
        }

        if (v11)
        {
          v25 = MEMORY[0x1C6940F90](i, a6);
        }

        else
        {
          if (i >= *((a6 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_99;
          }

          v25 = *(a6 + 8 * i + 32);
        }

        if (__OFADD__(i, 1))
        {
          goto LABEL_98;
        }

        v26 = v25;
        v27 = [v25 configIdentifier];
        v28 = [v27 updateType];

        v29 = sub_1C4F01138();
        v31 = v30;

        if (v29 == 0x6C616D726F6ELL && v31 == 0xE600000000000000)
        {
          break;
        }

        sub_1C4F02938();
        sub_1C4406248();
        if (v29)
        {
          goto LABEL_31;
        }
      }

LABEL_31:

      v38 = [v26 state];
      sub_1C4F01138();

      v39 = sub_1C43FD168();
      v41 = sub_1C443BE78(v39, v40);
      if (v41 == 5)
      {
        sub_1C445DA1C(a5);
        sub_1C440AD7C();
        sub_1C4F02248();

        sub_1C4401288();
        sub_1C4430348(v42);

        MEMORY[0x1C6940010](8250, 0xE200000000000000);
        v43 = [v26 state];
        v44 = sub_1C4F01138();
        v46 = v45;

        MEMORY[0x1C6940010](v44, v46);

        v47 = sub_1C446D0DC();
        v48 = sub_1C43FFB2C(&type metadata for ViewUpdateError, v47);
        sub_1C440B6F4(v48, v49);

        goto LABEL_33;
      }

      v50 = v41;
      v51 = [v139 state];
      sub_1C4F01138();

      v52 = sub_1C43FD168();
      v54 = sub_1C443BE78(v52, v53);
      if (v54 == 5)
      {
        sub_1C445DA1C(a5);
        sub_1C440AD7C();
        sub_1C4F02248();

        sub_1C4401288();
        sub_1C4430348(v55);

        MEMORY[0x1C6940010](8250, 0xE200000000000000);
        v56 = [v139 state];
        v57 = sub_1C4F01138();
        v59 = v58;

        MEMORY[0x1C6940010](v57, v59);

        v60 = sub_1C446D0DC();
        v61 = sub_1C43FFB2C(&type metadata for ViewUpdateError, v60);
        sub_1C440B6F4(v61, v62);

        goto LABEL_34;
      }

      v63 = v54;
      sub_1C4441C50(v54);
      if (v64 == 0x7165527261656C63 && v65 == 0xED00006465726975)
      {

        v67 = v63;
      }

      else
      {
        sub_1C441BE04(v64);
        sub_1C4406248();
        if (v29)
        {
          v67 = v63;
        }

        else
        {
          v67 = v50;
        }
      }

      sub_1C4441C50(v63);
      if (v69 == 0xD000000000000013 && 0x80000001C4F87C40 == v68)
      {
      }

      else
      {
        sub_1C4F02938();
        sub_1C4406248();
        if ((v29 & 1) == 0)
        {
          goto LABEL_59;
        }
      }

      sub_1C4441C50(v67);
      if (v71 == 0x7165527261656C63 && v72 == 0xED00006465726975)
      {
      }

      else
      {
        v74 = sub_1C441BE04(v71);

        if ((v74 & 1) == 0)
        {
          v67 = v63;
        }
      }

LABEL_59:
      sub_1C4441C50(v63);
      if (v76 == 0x676E616843736168 && v75 == 0xEA00000000007365)
      {
      }

      else
      {
        v78 = sub_1C4F02938();

        if ((v78 & 1) == 0)
        {
          goto LABEL_74;
        }
      }

      sub_1C4441C50(v67);
      if (v79 == 0x65676E6168436F6ELL && v80 == 0xE900000000000073)
      {

        v67 = v63;
      }

      else
      {
        v82 = sub_1C442C0D4(v79, v80, 0x65676E6168436F6ELL);

        if (v82)
        {
          v67 = v63;
        }
      }

LABEL_74:
      v83 = [v26 configIdentifier];
      v84 = [v83 sourceIdentifier];

      sub_1C4F01138();
      sub_1C441F098();

      v85 = sub_1C4402CD0();
      v130 = sub_1C4441B18(v85);
      v137 = v86;
      v88 = v87;
      v90 = v89;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v91 = sub_1C43FD024();
      v93 = sub_1C445D7D0(v91, v92);
      v94 = v93;
      if (v90)
      {
        if (!v93)
        {
          sub_1C44F638C();
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          v95 = sub_1C43FD024();
          v94 = sub_1C445D7D0(v95, v96);

          if (!v94)
          {
            sub_1C445DA1C(a5);

            sub_1C440AD7C();
            sub_1C4F02248();

            sub_1C43FBDF0();
            v138 = v116;
            v117 = sub_1C43FD024();
            MEMORY[0x1C6940010](v117);

            v118 = sub_1C446D0DC();
            sub_1C43FFB2C(&type metadata for ViewUpdateError, v118);
            *v119 = 0xD00000000000001BLL;
            v119[1] = v138;
            sub_1C440DB00(v119, 3);

            goto LABEL_34;
          }
        }

        v128 = v94;
      }

      else
      {
        v128 = v93;
      }

      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      if ([v26 triggered])
      {
        v127 = 1;
      }

      else
      {
        v127 = [v139 triggered];
      }

      v129 = v67;
      sub_1C4441C50(v67);
      v99 = v88;
      if (v97 == 0x65676E6168436F6ELL && v98 == 0xE900000000000073)
      {

        v102 = 1;
      }

      else
      {
        v101 = sub_1C442C0D4(v97, v98, 0x65676E6168436F6ELL);

        v102 = v101 & 1;
      }

      v103 = sub_1C443D554(v26);
      v125 = v104;
      v126 = v103;
      v105 = sub_1C445CA14(v26);
      v123 = v106;
      v124 = v105;
      v107 = sub_1C443D554(v139);
      v121 = v108;
      v122 = v107;
      v109 = sub_1C445CA14(v139);
      v111 = v110;
      sub_1C4441C50(v63);
      if (v112 == 0x65676E6168436F6ELL && v113 == 0xE900000000000073)
      {

        v115 = 0;
      }

      else
      {
        sub_1C442C0D4(v112, v113, 0x65676E6168436F6ELL);
        sub_1C4406248();
        v115 = 111;
      }

      swift_allocObject();
      HIBYTE(v120) = v102;
      LOBYTE(v120) = v129;
      sub_1C445D864(a1, a2, a5, a1, a2, a3, a4, v127, v120, v128, a8, v130, v137, v99, v90, v126, v125, v124, v123, v122, v121, v109, v111, v115 & 1);

      return;
    }

    sub_1C4F02938();
    sub_1C4406248();
    if (v14)
    {
      goto LABEL_16;
    }

    ++v10;
  }

  __break(1u);
LABEL_97:
  __break(1u);
LABEL_98:
  __break(1u);
LABEL_99:
  __break(1u);
}

uint64_t sub_1C445D7D0(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v3 = *(v2 + OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate19SyncDeviceRetriever_lockedBox);
  MEMORY[0x1EEE9AC00](a1);
  os_unfair_lock_lock(v3 + 6);
  sub_1C44F69C4(&v3[4], &v5);
  os_unfair_lock_unlock(v3 + 6);
  return v5;
}

uint64_t sub_1C445D864(uint64_t a1, uint64_t a2, _OWORD *a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, char a8, __int16 a9, void *a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24)
{
  *(v24 + 288) = xmmword_1C4F29230;
  *(v24 + 304) = xmmword_1C4F14630;
  *(v24 + 320) = xmmword_1C4F14630;
  *(v24 + 336) = xmmword_1C4F14630;
  v25 = a3[1];
  *(v24 + 72) = *a3;
  *(v24 + 88) = v25;
  v26 = a3[3];
  *(v24 + 104) = a3[2];
  v27 = a24;
  *(v24 + 16) = a1;
  *(v24 + 24) = a2;
  *(v24 + 120) = v26;
  *(v24 + 40) = a4;
  *(v24 + 48) = a5;
  *(v24 + 56) = a6;
  *(v24 + 64) = a7;
  *(v24 + 32) = a8;
  *(v24 + 33) = a9;
  *(v24 + 136) = a10;
  *(v24 + 144) = a11;
  *(v24 + 184) = a12;
  *(v24 + 192) = a13;
  if (a10)
  {
    v38 = a11;
    v28 = a10;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v29 = [v28 deviceIdentifier];
    v30 = sub_1C4F01138();
    v32 = v31;

    v27 = a24;
    v33 = *(v24 + 288);
    v34 = *(v24 + 296);
  }

  else
  {
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v33 = 0;
    v30 = 0;
    v32 = 0;
    v34 = 0xF000000000000000;
  }

  *(v24 + 200) = v30;
  *(v24 + 208) = v32;
  *(v24 + 152) = a12;
  *(v24 + 160) = a13;
  *(v24 + 168) = a14;
  *(v24 + 176) = a15;
  *(v24 + 224) = a16;
  *(v24 + 232) = a17;
  *(v24 + 240) = a18;
  *(v24 + 248) = a19;
  *(v24 + 256) = a20;
  *(v24 + 264) = a21;
  *(v24 + 272) = a22;
  *(v24 + 280) = a23;
  *(v24 + 288) = a20;
  *(v24 + 296) = a21;
  v35 = sub_1C4404C28();
  sub_1C4431E64(v35, v36);
  sub_1C441DFEC(v33, v34);
  *(v24 + 216) = v27 & 1;
  return v24;
}

void sub_1C445DA70()
{
  sub_1C43FBD3C();
  sub_1C44236D8();
  if (v2)
  {
    v1 = sub_1C4405C30();
  }

  else
  {
    sub_1C441DD08();
  }

  if (!v1)
  {
LABEL_14:
    sub_1C43FE9F0();
    return;
  }

  v25 = MEMORY[0x1E69E7CC0];
  v3 = sub_1C441CA38();
  sub_1C445E6E0(v3, v4, v5);
  if ((v1 & 0x8000000000000000) == 0)
  {
    v6 = 0;
    v7 = v25;
    do
    {
      if ((v0 & 0xC000000000000001) != 0)
      {
        sub_1C444192C();
        v9 = v8;
      }

      else
      {
        v9 = *(v0 + 8 * v6 + 32);
      }

      v10 = _s11BiomeSourceCMa();
      v23 = v10;
      v11 = sub_1C445E5E8(&qword_1EDDFC688, _s11BiomeSourceCMa, &unk_1C4F67EE8);
      v24 = v11;
      v25 = v7;
      v22[0] = v9;
      v12 = *(v7 + 16);
      if (v12 >= *(v7 + 24) >> 1)
      {
        sub_1C441B964();
        sub_1C445E6E0(v19, v20, v21);
        v10 = v23;
        v13 = v24;
      }

      else
      {
        v13 = v11;
      }

      ++v6;
      sub_1C4418280(v22, v10);
      sub_1C43FCE64();
      MEMORY[0x1EEE9AC00](v14);
      sub_1C43FBCC4();
      v17 = v16 - v15;
      (*(v18 + 16))(v16 - v15);
      sub_1C445EC18(v12, v17, &v25, v10, v13);
      sub_1C440962C(v22);
      v7 = v25;
    }

    while (v1 != v6);
    goto LABEL_14;
  }

  __break(1u);
}

uint64_t sub_1C445DC44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v6 = a3;
  *a5 = a1;
  a5[1] = a2;
  v163 = a5;
  sub_1C445E254(a3, (a5 + 2));
  v178 = MEMORY[0x1E69E7CC0];
  v176 = MEMORY[0x1E69E7CC0];
  v177 = MEMORY[0x1E69E7CC0];
  v174 = MEMORY[0x1E69E7CC0];
  v175 = MEMORY[0x1E69E7CC0];
  v172 = MEMORY[0x1E69E7CC0];
  v173 = MEMORY[0x1E69E7CC0];
  v171 = MEMORY[0x1E69E7CC0];
  v8 = *(a4 + 16);
  if (v8)
  {
    v141 = a2;
    v148 = v6;
    v9 = 0;
    v10 = MEMORY[0x1E69E7CC0];
    v11 = a4 + 32;
    v166 = MEMORY[0x1E69E7CC0];
    v167 = MEMORY[0x1E69E7CC0];
    v164 = MEMORY[0x1E69E7CC0];
    v165 = MEMORY[0x1E69E7CC0];
    v161 = MEMORY[0x1E69E7CC0];
    v162 = MEMORY[0x1E69E7CC0];
    v12 = MEMORY[0x1E69E7CC0];
    while (v9 < *(a4 + 16))
    {
      sub_1C442E860(v11, v170);
      sub_1C442E860(v170, v169);
      sub_1C456902C(&qword_1EC0B87C8, &unk_1C4F0E940);
      v13 = _s13ControlSourceCMa();
      if (sub_1C4432E68(v13, v14, v15, v16, v17, v18, v19, v20, v141, v148, v154))
      {

        MEMORY[0x1C6940330](v21);
        if (*((v178 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v178 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1C440A93C();
        }

        sub_1C4F01748();

        v12 = v178;
      }

      else
      {
        v22 = _s20KnowledgeGraphSourceCMa();
        if (sub_1C4432E68(v22, v23, v24, v25, v26, v27, v28, v29, v141, v148, v154))
        {

          MEMORY[0x1C6940330](v30);
          if (*((v177 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v177 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1C440A93C();
          }

          sub_1C4F01748();

          v10 = v177;
        }

        else
        {
          v31 = _s26GlobalKnowledgeGraphSourceCMa();
          v39 = sub_1C4432E68(v31, v32, v33, v34, v35, v36, v37, v38, v141, v148, v154);
          if (v39)
          {
            v47 = sub_1C442F4D8(v39, v40, v41, v42, v43, v44, v45, v46, v142, v149, v155, v161, v162, v163, v164, v165, v166, v167, v168);
            MEMORY[0x1C6940330](v47);
            sub_1C4405468();
            if (v48)
            {
              sub_1C44303E4();
            }

            sub_1C4433EF8();

            v167 = v176;
          }

          else
          {
            v49 = _s11BiomeSourceCMa();
            v57 = sub_1C4432E68(v49, v50, v51, v52, v53, v54, v55, v56, v142, v149, v155);
            if (v57)
            {
              v65 = sub_1C442F4D8(v57, v58, v59, v60, v61, v62, v63, v64, v143, v150, v156, v161, v162, v163, v164, v165, v166, v167, v168);
              MEMORY[0x1C6940330](v65);
              sub_1C4405468();
              if (v48)
              {
                sub_1C44303E4();
              }

              sub_1C4433EF8();

              v166 = v175;
            }

            else
            {
              updated = _s18AlwaysUpdateSourceCMa();
              v74 = sub_1C4432E68(updated, v67, v68, v69, v70, v71, v72, v73, v143, v150, v156);
              if (v74)
              {
                v82 = sub_1C442F4D8(v74, v75, v76, v77, v78, v79, v80, v81, v144, v151, v157, v161, v162, v163, v164, v165, v166, v167, v168);
                MEMORY[0x1C6940330](v82);
                sub_1C4405468();
                if (v48)
                {
                  sub_1C44303E4();
                }

                sub_1C4433EF8();

                v165 = v174;
              }

              else
              {
                v83 = _s10ViewSourceCMa();
                v91 = sub_1C4432E68(v83, v84, v85, v86, v87, v88, v89, v90, v144, v151, v157);
                if (v91)
                {
                  v99 = sub_1C442F4D8(v91, v92, v93, v94, v95, v96, v97, v98, v145, v152, v158, v161, v162, v163, v164, v165, v166, v167, v168);
                  MEMORY[0x1C6940330](v99);
                  sub_1C4405468();
                  if (v48)
                  {
                    sub_1C44303E4();
                  }

                  sub_1C4433EF8();

                  v164 = v173;
                }

                else
                {
                  v100 = _s14KeyValueSourceCMa();
                  v108 = sub_1C4432E68(v100, v101, v102, v103, v104, v105, v106, v107, v145, v152, v158);
                  if (v108)
                  {
                    v116 = sub_1C442F4D8(v108, v109, v110, v111, v112, v113, v114, v115, v146, v153, v159, v161, v162, v163, v164, v165, v166, v167, v168);
                    MEMORY[0x1C6940330](v116);
                    sub_1C4405468();
                    if (v48)
                    {
                      sub_1C44303E4();
                    }

                    sub_1C4433EF8();

                    v162 = v172;
                  }

                  else
                  {
                    v117 = _s18NotificationSourceCMa();
                    v125 = sub_1C4432E68(v117, v118, v119, v120, v121, v122, v123, v124, v146, v153, v159);
                    if (!v125)
                    {
                      goto LABEL_47;
                    }

                    v133 = sub_1C442F4D8(v125, v126, v127, v128, v129, v130, v131, v132, v147, v148, v160, v161, v162, v163, v164, v165, v166, v167, v168);
                    MEMORY[0x1C6940330](v133);
                    sub_1C4405468();
                    if (v48)
                    {
                      sub_1C44303E4();
                    }

                    sub_1C4433EF8();

                    v161 = v171;
                  }
                }
              }
            }
          }
        }
      }

      ++v9;
      sub_1C440962C(v169);
      sub_1C440962C(v170);
      v11 += 40;
      if (v8 == v9)
      {

        v6 = v148;
        v134 = v161;
        v135 = v162;
        goto LABEL_39;
      }
    }

    __break(1u);
LABEL_47:

    sub_1C4F02248();
    MEMORY[0x1C6940010](0xD000000000000015, 0x80000001C4FC6280);
    sub_1C4409678(v170, v170[3]);
    sub_1C4F028F8();
    sub_1C446D0DC();
    sub_1C441C114();
    swift_allocError();
    *v140 = 0;
    *(v140 + 8) = 0xE000000000000000;
    *(v140 + 16) = 2;
    swift_willThrow();
    sub_1C445E30C(v148);
    sub_1C440962C(v169);
    sub_1C440962C(v170);

    v136 = v163;
    return sub_1C445E30C((v136 + 2));
  }

  v10 = MEMORY[0x1E69E7CC0];
  v166 = MEMORY[0x1E69E7CC0];
  v167 = MEMORY[0x1E69E7CC0];
  v164 = MEMORY[0x1E69E7CC0];
  v165 = MEMORY[0x1E69E7CC0];
  v135 = MEMORY[0x1E69E7CC0];
  v134 = MEMORY[0x1E69E7CC0];
  v12 = MEMORY[0x1E69E7CC0];
LABEL_39:
  v136 = v163;
  if (sub_1C4428DA0(v12) != 1 || !sub_1C4428DA0(v12))
  {

    sub_1C446D0DC();
    sub_1C441C114();
    swift_allocError();
    *v139 = 0xD000000000000023;
    *(v139 + 8) = 0x80000001C4FC62A0;
    *(v139 + 16) = 2;
    swift_willThrow();
    sub_1C445E30C(v6);

    return sub_1C445E30C((v136 + 2));
  }

  sub_1C4431590(0, (v12 & 0xC000000000000001) == 0, v12);
  if ((v12 & 0xC000000000000001) != 0)
  {
    v137 = MEMORY[0x1C6940F90](0, v12);
  }

  else
  {
    v137 = *(v12 + 32);
  }

  result = sub_1C445E30C(v6);
  v163[7] = v137;
  v163[8] = v10;
  v163[9] = v165;
  v163[10] = v166;
  v163[11] = v164;
  v163[12] = v135;
  v163[13] = v167;
  v163[14] = v134;
  return result;
}

uint64_t sub_1C445E254(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0C5438, &qword_1C4F61338);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C445E30C(uint64_t a1)
{
  v2 = sub_1C456902C(&qword_1EC0C5438, &qword_1C4F61338);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C445E374(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 248) = a3;
  *(v4 + 152) = a2;
  *(v4 + 160) = v3;
  return MEMORY[0x1EEE6DFA0](sub_1C445E398, 0, 0);
}

uint64_t sub_1C445E398()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 160);
  v3 = v1[3];
  v4 = v1[4];
  sub_1C4409678(v1, v3);
  v5 = *v2;
  *(v0 + 168) = *v2;
  v6 = v2[1];
  *(v0 + 176) = v6;
  sub_1C4411260();
  v11 = (v7 + *v7);
  v8 = swift_task_alloc();
  *(v0 + 184) = v8;
  *v8 = v0;
  v8[1] = sub_1C445F764;
  v9 = *(v0 + 248);

  return v11(v5, v6, v9, v3, v4);
}

uint64_t sub_1C445E4D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1C4BE616C;

  return sub_1C445E588(a1, a2, v4);
}

uint64_t sub_1C445E588(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 64) = a2;
  *(v4 + 72) = v3;
  *(v4 + 112) = a3;
  *(v4 + 56) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1C443B0F8, 0, 0);
}

uint64_t sub_1C445E5E8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1C445E76C(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v6, a4, v4, 2u);
}

uint64_t sub_1C445E7D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t), void (*a6)(uint64_t), void (*a7)(uint64_t), void (*a8)(uint64_t))
{

  return sub_1C47BC864(v8, v11, v10, v9, a5, a6, a7, a8);
}

void sub_1C445E7F4()
{
}

void sub_1C445E868(unint64_t a1@<X8>)
{

  sub_1C459E7C8(a1 > 1, v1, 1);
}

uint64_t sub_1C445E8CC()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

double sub_1C445E8EC()
{
  *(v0 + 264) = 0;
  result = 0.0;
  *(v0 + 248) = 0u;
  *(v0 + 232) = 0u;
  return result;
}

uint64_t sub_1C445E918()
{
  *(v0 + 64) = *(*(v0 + 32) + 56);
}

uint64_t sub_1C445E938()
{

  return sub_1C4EFF088();
}

uint64_t sub_1C445E950(uint64_t a1, uint64_t a2)
{
  v5 = *(v3 - 376) & 1;

  return sub_1C440951C(v2, a2, v5);
}

uint64_t sub_1C445E970()
{

  return sub_1C4420C3C(v0, v1, v2);
}

void sub_1C445E9B8()
{

  JUMPOUT(0x1C6940010);
}

uint64_t sub_1C445E9D0(uint64_t a1)
{
  *(v2 - 128) = v1;
  *(v2 - 208) = a1;
  return 0;
}

double sub_1C445EA20()
{
  *(v0 - 112) = 0;
  result = 0.0;
  *(v0 - 144) = 0u;
  *(v0 - 128) = 0u;
  return result;
}

uint64_t sub_1C445EA3C()
{

  return sub_1C4F00978();
}

uint64_t sub_1C445EA5C(uint64_t a1, uint64_t a2)
{

  return sub_1C4EFBFF8();
}

void sub_1C445EA88()
{
  sub_1C4CD7B5C(v0);

  JUMPOUT(0x1C6942830);
}

__n128 sub_1C445EACC(__n128 *a1)
{
  result = v1[10];
  a1[1] = result;
  return result;
}

uint64_t sub_1C445EAF0@<X0>(void *a1@<X8>)
{
  v1[32] = a1[4];
  v1[33] = a1[5];
  v1[34] = a1[6];

  return swift_bridgeObjectRetain_n();
}

uint64_t sub_1C445EB7C@<X0>(void *a1@<X8>, double a2@<D0>)
{
  *a1 = *(v2 - 256);
  a1[1] = v4;
  v8 = (v3 + v5[10]);
  v9 = *(v6 - 224);
  *v8 = *(v6 - 232);
  v8[1] = v9;
  *(v3 + v5[11]) = a2;
  *(v3 + v5[12]) = *(v6 - 260);

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C445EBBC()
{
  v1 = *(v0 - 312);
  v2 = *(v0 - 128);
  result = *(v2 + v1);
  *(v2 + v1) = *(v0 - 112);
  return result;
}

uint64_t sub_1C445EC18(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  v9 = sub_1C4422F90(&v12);
  (*(*(a4 - 8) + 32))(v9, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_1C443FA18(&v12, v10 + 40 * a1 + 32);
}

char *sub_1C445ECB0(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[40 * a2] <= a3)
  {
    return sub_1C441904C(a3, result);
  }

  return result;
}

void sub_1C445ECDC()
{
  sub_1C442F0C4();
  sub_1C43FFC44();
  if (v4)
  {
    sub_1C441172C();
    if (v5 != v6)
    {
      sub_1C442B904();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_1C440A4D4();
    }
  }

  sub_1C44108C0();
  if (v2)
  {
    v13 = sub_1C4422208(v7, v8, v9, v10, v11, v12);
    v3 = 40;
    v14 = sub_1C4440F6C(v13);
    sub_1C43FEA8C(v14);
  }

  sub_1C440BB20();
  if (v1)
  {
    sub_1C4469098();
    if (v16)
    {
      v17 = v15 > v3;
    }

    else
    {
      v17 = 0;
    }

    if (!v17)
    {
      v18 = sub_1C4404044();
      memmove(v18, v19, v20);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    v21 = sub_1C4404050();
    sub_1C456902C(v21, v22);
    sub_1C4416D38();
    swift_arrayInitWithCopy();
  }

  sub_1C4422220();
}

unint64_t sub_1C445EDA0(uint64_t a1, uint64_t a2)
{
  sub_1C4F025D8();
  sub_1C4406834();

  if (v2 >= 0xD)
  {
    return 13;
  }

  else
  {
    return v2;
  }
}

void sub_1C445EDE8(char a1)
{
  switch(a1)
  {
    case 1:
    case 6:
      sub_1C43FE984();
      break;
    case 5:
      sub_1C443F3D8();
      break;
    default:
      return;
  }
}

unint64_t sub_1C445EF64(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xE500000000000000;
      v8 = 0x656D6F6962;
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v8 = 0xD000000000000010;
          v7 = 0x80000001C4F86930;
          break;
        case 2:
          v7 = 0xE800000000000000;
          v8 = 0x4C5153656D6F6962;
          break;
        case 3:
          v7 = 0xE600000000000000;
          v8 = 0x6D6F74737563;
          break;
        case 4:
          v9 = 0x6D6F74737563;
          goto LABEL_12;
        case 5:
          v7 = 0xE800000000000000;
          v8 = 0x6264726F74636576;
          break;
        case 6:
          v8 = 0xD000000000000010;
          v7 = 0x80000001C4F86960;
          break;
        case 7:
          v9 = 0x7463656A626FLL;
LABEL_12:
          v8 = v9 & 0xFFFFFFFFFFFFLL | 0x5153000000000000;
          v7 = 0xE90000000000004CLL;
          break;
        case 8:
          v7 = 0xE800000000000000;
          v8 = 0x6B6E615265676170;
          break;
        case 9:
          v7 = 0xE600000000000000;
          v8 = 0x6C616E676973;
          break;
        case 0xA:
          v8 = 0x656E6E6F436C7173;
          v7 = 0xED00006E6F697463;
          break;
        case 0xB:
          v7 = 0xE800000000000000;
          v8 = 0x6870617267627573;
          break;
        case 0xC:
          v8 = 0xD000000000000011;
          v7 = 0x80000001C4F869A0;
          break;
        default:
          break;
      }

      v10 = 0xE500000000000000;
      v11 = 0x656D6F6962;
      switch(a1)
      {
        case 1:
          v11 = 0xD000000000000010;
          v10 = 0x80000001C4F86930;
          break;
        case 2:
          v10 = 0xE800000000000000;
          v11 = 0x4C5153656D6F6962;
          break;
        case 3:
          v10 = 0xE600000000000000;
          v11 = 0x6D6F74737563;
          break;
        case 4:
          v12 = 0x6D6F74737563;
          goto LABEL_26;
        case 5:
          v10 = 0xE800000000000000;
          v11 = 0x6264726F74636576;
          break;
        case 6:
          v11 = 0xD000000000000010;
          v10 = 0x80000001C4F86960;
          break;
        case 7:
          v12 = 0x7463656A626FLL;
LABEL_26:
          v11 = v12 & 0xFFFFFFFFFFFFLL | 0x5153000000000000;
          v10 = 0xE90000000000004CLL;
          break;
        case 8:
          v10 = 0xE800000000000000;
          v11 = 0x6B6E615265676170;
          break;
        case 9:
          v10 = 0xE600000000000000;
          v11 = 0x6C616E676973;
          break;
        case 10:
          v11 = 0x656E6E6F436C7173;
          v10 = 0xED00006E6F697463;
          break;
        case 11:
          v10 = 0xE800000000000000;
          v11 = 0x6870617267627573;
          break;
        case 12:
          v11 = 0xD000000000000011;
          v10 = 0x80000001C4F869A0;
          break;
        default:
          break;
      }

      if (v8 == v11 && v7 == v10)
      {
        break;
      }

      v14 = sub_1C4F02938();

      if ((v14 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

void *sub_1C445F364(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v10 = _s10ViewConfigVMa(0);
  MEMORY[0x1EEE9AC00](v10);
  sub_1C43FBCC4();
  v13 = v12 - v11;
  sub_1C443A738(a1, a2, v14, v15, v16, v17, v18, v19);
  if (!v5)
  {
    v20 = (v13 + *(v10 + 76));
    v21 = v20[1];
    if (v21 && a5)
    {
      v24 = *v20;
      if (*(v13 + 248))
      {
        v22 = *(v13 + 248);
      }

      else
      {
        v22 = MEMORY[0x1E69E7CC0];
      }

      _s29BiomeIncrementalViewGeneratorCMa();
      a4 = swift_allocObject();
      a4[2] = a1;
      a4[3] = a2;
      a4[4] = v24;
      a4[5] = v21;
      a4[6] = a5;
      a4[7] = v22;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    }

    else
    {
      _s33NullBiomeIncrementalViewGeneratorCMa();
      a4 = swift_allocObject();
    }

    sub_1C445F57C(v13);
  }

  return a4;
}

uint64_t sub_1C445F4CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C445F364(a1, a2, 0, *v2, *(v2 + 8));
  v5 = *(v3 + 8);

  return v5(v4);
}

uint64_t sub_1C445F57C(uint64_t a1)
{
  v2 = _s10ViewConfigVMa(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C445F5D8(uint64_t a1, uint64_t a2)
{
  sub_1C43FBDE4();
  v7 = v6;
  v8 = *v3;
  sub_1C43FBDAC();
  *v9 = v8;
  v7[11] = v2;

  if (v2)
  {
    v10 = sub_1C4C81BA8;
  }

  else
  {
    v7[12] = a2;
    v7[13] = a1;
    v10 = sub_1C445F700;
  }

  return MEMORY[0x1EEE6DFA0](v10, 0, 0);
}

uint64_t sub_1C445F700()
{
  sub_1C43FBCD4();
  sub_1C440962C(v0 + 2);
  v1 = v0[1];
  v3 = v0[12];
  v2 = v0[13];

  return v1(v2, v3);
}

uint64_t sub_1C445F764()
{
  sub_1C43FBCD4();
  sub_1C43FEB84();
  *v3 = v2;
  *v3 = *v1;
  v2[24] = v4;
  v2[25] = v5;
  v2[26] = v0;

  if (v0)
  {
    sub_1C43FBDA0();

    return v6();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1C445F88C, 0, 0);
  }
}

uint64_t sub_1C445F88C(uint64_t a1)
{
  v2 = v1[26];
  sub_1C4F01968();
  if (v2)
  {
    swift_unknownObjectRelease();
    sub_1C43FBDA0();

    return v3();
  }

  else
  {
    swift_getObjectType();
    sub_1C4450104();
    if (v5)
    {
      sub_1C4411260();
      v12 = (v6 + *v6);
      v7 = swift_task_alloc();
      v1[27] = v7;
      *v7 = v1;
      v11 = sub_1C442D848(v7);
      v8 = v12;
    }

    else
    {
      sub_1C4411260();
      v13 = (v9 + *v9);
      v10 = swift_task_alloc();
      v1[29] = v10;
      *v10 = v1;
      v11 = sub_1C442D848(v10);
      v8 = v13;
    }

    return v8(v11);
  }
}

uint64_t sub_1C445FAC0(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  sub_1C443309C(a1);
  sub_1C4F01298();
  v5 = sub_1C4F02B68();

  return a3(a1, a2, v5);
}

unint64_t sub_1C445FB3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_1C4F02938() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_1C445FBF0()
{

  return type metadata accessor for Blocker(0);
}

void *sub_1C445FC08@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{

  return memmove(a1, v2, 8 * a2);
}

uint64_t sub_1C445FC3C()
{
}

uint64_t sub_1C445FC68(uint64_t a1)
{

  return sub_1C4F02618();
}

uint64_t sub_1C445FD38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(v3 - 144);
  v6 = *(v3 - 216);

  return sub_1C4471874(v5, v6);
}

void sub_1C445FD88()
{

  sub_1C457B070();
}

uint64_t sub_1C445FDA0()
{

  return swift_dynamicCast();
}

uint64_t sub_1C445FDB8(unint64_t *a1)
{
  v4 = MEMORY[0x1E69E8868];

  return sub_1C4401CBC(a1, v2, v1, v4);
}

uint64_t sub_1C445FE04(uint64_t a1)
{
  sub_1C440BAA8(v1, 1, 1, a1);

  return sub_1C4EFF1A8();
}

uint64_t sub_1C445FE5C(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

uint64_t sub_1C445FEC0@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a2 = a3;
  *(a2 + 8) = v3;
  *(a2 + 16) = 1;

  return swift_willThrow();
}

uint64_t sub_1C445FF08()
{

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C445FFA8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_1C43FBCA4(a1, a2, a3, a4);
  sub_1C43FCE50();
  v5 = sub_1C43FBC98();
  v6(v5);
  return v4;
}

uint64_t sub_1C445FFF0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_1C456902C(a3, a4);
  sub_1C43FBCE0();
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1C4460050(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_1C43FBCA4(a1, a2, a3, a4);
  sub_1C43FBCE0();
  (*(v6 + 16))(v4, v5);
  return v4;
}

uint64_t sub_1C44600A0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1C456902C(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1C4460108(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_1C43FBCA4(a1, a2, a3, a4);
  sub_1C43FBCE0();
  v5 = sub_1C43FBC98();
  v6(v5);
  return v4;
}

uint64_t sub_1C4460188()
{

  return sub_1C4EF9CD8();
}

uint64_t sub_1C44601DC()
{
}

uint64_t sub_1C4460240(uint64_t a1)
{

  return sub_1C4F02AC8();
}

void sub_1C446028C()
{
  v2 = *(v0 + 8);
  *(v1 + 616) = v2;
  *(v1 + 624) = *(v2 + 16);
}

uint64_t sub_1C44602A0(double a1)
{
  *(v1 + 8) = a1;

  return sub_1C4EF9CD8();
}

void sub_1C44602BC()
{
  v1[45] = v0;
  v1[46] = 0x6D617473656D6974;
  v1[47] = 0xE900000000000070;
}

uint64_t sub_1C44602F8(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1C4F02938();
}

uint64_t sub_1C4460344(uint64_t a1, uint64_t a2)
{

  return sub_1C4EF97B8();
}

unint64_t sub_1C4460374(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);

  return sub_1C441D828(a1, a2, va);
}

uint64_t sub_1C4460398()
{
  v2 = *(v0 + 184);
  v3 = *(v0 + 208);

  return sub_1C4431590(v3, (v2 & 0xC000000000000001) == 0, v2);
}

uint64_t sub_1C44603BC()
{

  return sub_1C4F00198();
}

void sub_1C44603D4()
{

  sub_1C4B1E304();
}

uint64_t sub_1C4460410()
{
  v4 = *(v1 + 24);
  v3 = *(v1 + 32);
  v5 = *(v1 + 16);
  v6 = *(v1 + 240);

  return sub_1C449F920(v3, v6, v0, v5, v4);
}

uint64_t sub_1C4460448(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_dynamicCast();
}

uint64_t sub_1C446047C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{

  return sub_1C4F02008();
}

uint64_t sub_1C44604A0()
{
  v2 = *(v1 - 200);
  *(v1 - 88) = *(v1 - 196);
  *(v1 - 87) = v2;
  *(v1 - 86) = *(v1 - 204);
  *(v1 - 85) = v0;
  return v1 - 128;
}

uint64_t sub_1C44604C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{

  return sub_1C4F02938();
}

uint64_t sub_1C44604E8(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1C4F02938();
}

uint64_t sub_1C4460504(uint64_t a1, uint64_t a2, uint64_t *a3)
{

  return sub_1C44FDC24(a1, v5, a3, v3, v4);
}

uint64_t sub_1C446052C@<X0>(char a1@<W8>)
{
  *(v1 - 65) = a1;

  return sub_1C4F02618();
}

uint64_t sub_1C4460550(double a1)
{
  v7 = (v4 + v5[8]);
  *v7 = v3;
  v7[1] = v2;
  v8 = (v4 + v5[10]);
  v9 = *(v1 + 200);
  *v8 = *(v1 + 192);
  v8[1] = v9;
  *(v4 + v5[11]) = a1;
  *(v4 + v5[12]) = *(v1 + 156);

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C4460590(uint64_t a1, uint64_t a2)
{

  return sub_1C4F026C8();
}

uint64_t sub_1C4460618()
{
}

uint64_t sub_1C4460630()
{

  return swift_beginAccess();
}

uint64_t sub_1C4460650()
{
}

uint64_t sub_1C446069C(uint64_t result, uint64_t a2)
{
  *(v2 + 192) = result;
  *(v2 + 200) = a2;
  return result;
}

uint64_t sub_1C44606BC(uint64_t a1)
{

  return swift_arrayInitWithCopy();
}

uint64_t sub_1C44606DC(uint64_t a1)
{

  return sub_1C4F01678();
}

void sub_1C446073C(uint64_t a1@<X8>)
{
  *(v2 + 40) = a1;

  os_unfair_lock_unlock(v1 + 6);
}

uint64_t sub_1C4460754(uint64_t a1)
{

  return sub_1C4EF9C88();
}

uint64_t sub_1C446078C(uint64_t a1)
{

  return sub_1C4F02778();
}

uint64_t sub_1C44607D4(uint64_t a1)
{
  *(v2 - 176) = a1;
  *(v2 - 120) = v1;

  return sub_1C4EF93D8();
}

uint64_t sub_1C4460830(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_1C4F026C8();
}

uint64_t sub_1C4460864()
{
  v2 = *(v0 - 576);
  v3 = *(v0 - 584);

  return sub_1C44239FC(v2, v3);
}

__n128 sub_1C446089C(__n128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a13, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __n128 a14)
{
  result = a14;
  a1[1] = a14;
  return result;
}

void sub_1C44608A8(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{
  v8 = *(v6 - 460);

  _os_log_impl(a1, v4, v8, a4, v5, 0x1Cu);
}

void sub_1C44608EC()
{

  JUMPOUT(0x1C6940010);
}

uint64_t sub_1C4460954(uint64_t a1)
{

  return swift_beginAccess();
}

uint64_t sub_1C4460970(uint64_t a1, uint64_t a2)
{

  return sub_1C4F02618();
}

id sub_1C44609F0(id a1, SEL a2, double a3)
{
  v6 = *(v3 - 260);
  v7 = *(v3 - 240);
  LODWORD(a3) = v5;

  return [a1 a2];
}

uint64_t sub_1C4460A3C()
{
}

void sub_1C4460A54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  v25 = *(v22 - 288);
  v26 = *(v22 - 276);
  v27 = *(v22 - 296);

  sub_1C4601D10(v25, v26, v27, a1, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_1C4460A90(uint64_t result, uint64_t a2)
{
  *(v2 + 144) = result;
  *(v2 + 152) = a2;
  return result;
}

uint64_t sub_1C4460AC8()
{

  return type metadata accessor for PeopleMatcher(0);
}

uint64_t sub_1C4460AE0(uint64_t result)
{
  *(v2 - 440) = v1;
  *(v2 - 456) = result;
  *(v2 - 176) = result;
  return result;
}

uint64_t sub_1C4460AF8(uint64_t a1)
{

  return sub_1C4EFB438();
}

uint64_t sub_1C4460B18()
{
  *(v1 - 192) = *(v0 + 592);
  *(v1 - 184) = 0;

  return sub_1C44E3634(v1 - 240);
}

uint64_t sub_1C4460B4C(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1C4F02BC8();
}

void sub_1C4460BA4()
{

  sub_1C44F4214();
}

uint64_t sub_1C4460BC8()
{
  v8 = (v3 + v4[8]);
  *v8 = *(v5 - 248);
  v8[1] = v0;
  v9 = (v3 + v4[10]);
  *v9 = v1;
  v9[1] = v2;
  *(v3 + v4[11]) = v7;
  *(v3 + v4[12]) = *(v5 - 124);

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

void sub_1C4460C1C()
{
  *(v5 - 176) = v3;
  *(v5 - 168) = v2;
  *(v5 - 192) = v4;
  *(v5 - 184) = v0;
  *(v5 - 96) = v1;
  *(v5 - 65) = 0;
}

uint64_t static Configuration.intelligencePlatformComputeService.getter()
{
  sub_1C44059B8();
  sub_1C4EF98F8();
  sub_1C442C678();
  MEMORY[0x1EEE9AC00](v0);
  sub_1C440E01C();
  if (qword_1EDDFFA78 != -1)
  {
    sub_1C4416F34(&qword_1EDDFFA78);
  }

  v9 = xmmword_1EDDFFA80;
  if (qword_1EDDFFA40 != -1)
  {
    sub_1C4402E14(&qword_1EDDFFA40);
  }

  v10 = xmmword_1EDDFFA48;
  if (qword_1EDDFA610 != -1)
  {
    sub_1C4434F24(&qword_1EDDFA610);
  }

  v11 = xmmword_1EDDFA618;
  if (qword_1EDDFEC60 != -1)
  {
    sub_1C43FC180(&qword_1EDDFEC60);
  }

  v12 = xmmword_1EDDFFAE0;
  if (qword_1EDDFEC10 != -1)
  {
    sub_1C43FD3C4(&qword_1EDDFEC10);
  }

  sub_1C4412EB0();
  v13 = xmmword_1EDDFEC18;
  do
  {
    sub_1C44119E0();
  }

  while (v1 != 64);
  sub_1C4F001A8();
  v2 = sub_1C4406994();
  v3(v2);
  static Features.optionsForEnabledFeatures.getter(&v8);
  v4 = sub_1C440F45C();
  v5(v4);
  v6 = sub_1C442DE2C();
  return sub_1C44320F0(v6);
}

uint64_t static Features.optionsForEnabledFeatures.getter@<X0>(void *a1@<X8>)
{
  v2 = sub_1C4F001E8();
  sub_1C43FCDF8();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C4F001B8();
  v9 = *(v8 + 16);
  if (v9)
  {
    v34[1] = v8;
    v35 = a1;
    v12 = *(v4 + 16);
    v10 = v4 + 16;
    v11 = v12;
    v13 = v8 + ((*(v10 + 64) + 32) & ~*(v10 + 64));
    v14 = *(v10 + 56);
    v15 = (v10 - 8);
    v16 = MEMORY[0x1E69E7CC0];
    v36 = v10;
    do
    {
      v11(v7, v13, v2);
      if (sub_1C4F001D8())
      {
        Features.FeatureFlag.asOption()();
        (*v15)(v7, v2);
        v37 = v38;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1C4461ABC(0, *(v16 + 16) + 1, 1, v16);
          v16 = v19;
        }

        v18 = *(v16 + 16);
        v17 = *(v16 + 24);
        if (v18 >= v17 >> 1)
        {
          sub_1C4461ABC(v17 > 1, v18 + 1, 1, v16);
          v16 = v20;
        }

        *(v16 + 16) = v18 + 1;
        *(v16 + 16 * v18 + 32) = v37;
      }

      else
      {
        (*v15)(v7, v2);
      }

      v13 += v14;
      --v9;
    }

    while (v9);

    a1 = v35;
  }

  else
  {

    v16 = MEMORY[0x1E69E7CC0];
  }

  v21 = *(v16 + 16);
  if (v21)
  {
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = (v16 + 40);
    do
    {
      v27 = *(v26 - 1);
      v28 = *v26;
      v29 = *v26 & v24;
      v26 += 2;
      v30 = (v27 & ~v25) == 0 && v29 == v28;
      v31 = v27 | v25;
      v32 = v28 | v24;
      if (!v30)
      {
        v22 = v31;
        v23 = v32;
        v24 = v32;
        v25 = v31;
      }

      --v21;
    }

    while (v21);
  }

  else
  {
    v22 = 0;
    v23 = 0;
  }

  *a1 = v22;
  a1[1] = v23;
  return result;
}

IntelligencePlatformCore::Options __swiftcall Features.FeatureFlag.asOption()()
{
  v2 = v1;
  v3 = v0;
  v4 = sub_1C4F001E8();
  sub_1C43FCDF8();
  v6 = v5;
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v10, v2, v4, v8);
  v11 = (*(v6 + 88))(v10, v4);
  if (v11 == *MEMORY[0x1E69A9CA8])
  {
    if (qword_1EDDDBFD0 != -1)
    {
      v11 = swift_once();
    }

    v13 = xmmword_1EDDDBFD8;
  }

  else if (v11 == *MEMORY[0x1E69A9CB0])
  {
    if (qword_1EDDFA648 != -1)
    {
      v11 = swift_once();
    }

    v13 = &xmmword_1EDDFA650;
  }

  else if (v11 == *MEMORY[0x1E69A9D60])
  {
    if (qword_1EDDFFA10 != -1)
    {
      v11 = swift_once();
    }

    v13 = &xmmword_1EDDFFA18;
  }

  else if (v11 == *MEMORY[0x1E69A9D68])
  {
    if (qword_1EDDF0C58 != -1)
    {
      v11 = swift_once();
    }

    v13 = &xmmword_1EDDF0C60;
  }

  else if (v11 == *MEMORY[0x1E69A9CC0])
  {
    if (qword_1EDDFFAC8 != -1)
    {
      v11 = swift_once();
    }

    v13 = &xmmword_1EDDFFAD0;
  }

  else if (v11 == *MEMORY[0x1E69A9D10])
  {
    if (qword_1EDDFFA90 != -1)
    {
      v11 = swift_once();
    }

    v13 = &xmmword_1EDDFFA98;
  }

  else if (v11 == *MEMORY[0x1E69A9C98])
  {
    if (qword_1EC0B7000 != -1)
    {
      v11 = swift_once();
    }

    v13 = &xmmword_1EC0C22A8;
  }

  else if (v11 == *MEMORY[0x1E69A9D48])
  {
    if (qword_1EDDFFA28 != -1)
    {
      v11 = swift_once();
    }

    v13 = &xmmword_1EDDFFA30;
  }

  else if (v11 == *MEMORY[0x1E69A9CF0])
  {
    if (qword_1EDDDBF60 != -1)
    {
      v11 = swift_once();
    }

    v13 = &xmmword_1EDDDBF68;
  }

  else if (v11 == *MEMORY[0x1E69A9CF8])
  {
    if (qword_1EDDDBF48 != -1)
    {
      v11 = swift_once();
    }

    v13 = &xmmword_1EDDDBF50;
  }

  else if (v11 == *MEMORY[0x1E69A9D30])
  {
    if (qword_1EC0B7008 != -1)
    {
      v11 = swift_once();
    }

    v13 = &xmmword_1EC0C22B8;
  }

  else if (v11 == *MEMORY[0x1E69A9D18])
  {
    if (qword_1EDDF0C70 != -1)
    {
      v11 = swift_once();
    }

    v13 = &xmmword_1EDDF0C78;
  }

  else if (v11 == *MEMORY[0x1E69A9CA0])
  {
    if (qword_1EDDDBF28 != -1)
    {
      v11 = swift_once();
    }

    v13 = &xmmword_1EDDDBF30;
  }

  else if (v11 == *MEMORY[0x1E69A9D38])
  {
    if (qword_1EDDDBEF8 != -1)
    {
      v11 = swift_once();
    }

    v13 = &xmmword_1EDDDBF00;
  }

  else if (v11 == *MEMORY[0x1E69A9D00])
  {
    if (qword_1EDDFFAB0 != -1)
    {
      v11 = swift_once();
    }

    v13 = &xmmword_1EDDFEBD0;
  }

  else if (v11 == *MEMORY[0x1E69A9CE8])
  {
    if (qword_1EDDFA628 != -1)
    {
      v11 = swift_once();
    }

    v13 = &xmmword_1EDDFA630;
  }

  else if (v11 == *MEMORY[0x1E69A9D78])
  {
    if (qword_1EDDFFA60 != -1)
    {
      v11 = swift_once();
    }

    v13 = &xmmword_1EDDFFA68;
  }

  else if (v11 == *MEMORY[0x1E69A9CD0])
  {
    if (qword_1EDDDBF80 != -1)
    {
      v11 = swift_once();
    }

    v13 = &xmmword_1EDDDBF88;
  }

  else if (v11 == *MEMORY[0x1E69A9D50])
  {
    if (qword_1EC0B7010 != -1)
    {
      v11 = swift_once();
    }

    v13 = &xmmword_1EC0C22C8;
  }

  else if (v11 == *MEMORY[0x1E69A9CD8])
  {
    if (qword_1EDDFFAB8 != -1)
    {
      v11 = swift_once();
    }

    v13 = &xmmword_1EDDFEBF8;
  }

  else if (v11 == *MEMORY[0x1E69A9D28])
  {
    if (qword_1EC0B7020 != -1)
    {
      v11 = swift_once();
    }

    v13 = &xmmword_1EC0C22D8;
  }

  else if (v11 == *MEMORY[0x1E69A9CC8])
  {
    if (qword_1EDDDBF98 != -1)
    {
      v11 = swift_once();
    }

    v13 = &xmmword_1EDDDBFA0;
  }

  else if (v11 == *MEMORY[0x1E69A9D20])
  {
    if (qword_1EDDDBF10 != -1)
    {
      v11 = swift_once();
    }

    v13 = &xmmword_1EDDDBF18;
  }

  else if (v11 == *MEMORY[0x1E69A9CB8])
  {
    if (qword_1EDDDBFB8 != -1)
    {
      v11 = swift_once();
    }

    v13 = &xmmword_1EDDDBFC0;
  }

  else if (v11 == *MEMORY[0x1E69A9D58])
  {
    if (qword_1EDDFEB80 != -1)
    {
      v11 = swift_once();
    }

    v13 = &xmmword_1EDDFEB88;
  }

  else if (v11 == *MEMORY[0x1E69A9D08])
  {
    if (qword_1EC0B7028 != -1)
    {
      v11 = swift_once();
    }

    v13 = &xmmword_1EC0C22E8;
  }

  else if (v11 == *MEMORY[0x1E69A9D40])
  {
    if (qword_1EDDDBEE0 != -1)
    {
      v11 = swift_once();
    }

    v13 = &xmmword_1EDDDBEE8;
  }

  else if (v11 == *MEMORY[0x1E69A9D70])
  {
    if (qword_1EDDFEB68 != -1)
    {
      v11 = swift_once();
    }

    v13 = &xmmword_1EDDFEB70;
  }

  else
  {
    if (v11 != *MEMORY[0x1E69A9CE0])
    {
      v11 = sub_1C4F02928();
      __break(1u);
      goto LABEL_119;
    }

    if (qword_1EDDFEBE0 != -1)
    {
      v11 = swift_once();
    }

    v13 = &xmmword_1EDDFEBE8;
  }

  v15 = *v13;
  v14 = *(v13 + 1);
  *v3 = v15;
  v3[1] = v14;
LABEL_119:
  result.rawValue.featureFlags = v12;
  result.rawValue.options = v11;
  return result;
}

void sub_1C4461AE4()
{
  sub_1C441B754();
  if ((v5 & 1) == 0 || (sub_1C441172C(), v6 == v7))
  {
LABEL_6:
    sub_1C441E1B8();
    if (v4)
    {
      sub_1C4422208(v8, v9, v10, v11, v12, v13);
      v14 = sub_1C44182F4();
      j__malloc_size(v14);
      sub_1C4402B0C();
      v14[2] = v3;
      v14[3] = v15;
      if (v2)
      {
LABEL_8:
        v16 = sub_1C44099F4();
        v1(v16);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v2)
    {
      goto LABEL_8;
    }

    v17 = sub_1C440CAA0();
    memcpy(v17, v18, v19);
    goto LABEL_11;
  }

  sub_1C442B904();
  if (!v6)
  {
    sub_1C440A4D4();
    goto LABEL_6;
  }

  __break(1u);
}

char *sub_1C4461B98(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[16 * a2] <= a3)
  {
    return sub_1C441904C(a3, result);
  }

  return result;
}

uint64_t sub_1C4461BB8(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_1C4461C04(uint64_t a1)
{

  return sub_1C4EF93B8();
}

uint64_t sub_1C4461C24()
{

  return sub_1C4F02938();
}

uint64_t sub_1C4461C4C()
{

  return sub_1C4485354(v1, v0);
}

unint64_t sub_1C4461C64(uint64_t a1, unint64_t a2)
{

  return sub_1C441D828(a1, a2, (v2 - 168));
}

void sub_1C4461C7C(unint64_t a1@<X8>)
{

  sub_1C458C108(a1 > 1, v1, 1, v2);
}

uint64_t sub_1C4461CC0()
{

  return sub_1C4F01298();
}

uint64_t sub_1C4461CDC()
{

  return sub_1C44CDA7C();
}

void sub_1C4461D38()
{

  os_unfair_lock_unlock(v0 + 6);
}

uint64_t sub_1C4461D70(uint64_t a1)
{

  return swift_dynamicCast();
}

uint64_t sub_1C4461D94()
{
}

BOOL sub_1C4461DB8(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_1C4461DE4()
{

  return sub_1C4EFF888();
}

void sub_1C4461E3C()
{
  v7 = (v2 + v4[8]);
  *v7 = *(v5 - 184);
  v7[1] = v1;
  v8 = (v2 + v4[10]);
  *v8 = v0;
  v8[1] = v3;
  *(v2 + v4[11]) = v6;
}

uint64_t sub_1C4461E68()
{
  sub_1C43FC784();
  v1 = sub_1C43FDCD8();
  sub_1C4462C04(v1, v2);
  sub_1C4461D38();
  if (v0)
  {
    return sub_1C440246C();
  }

  if (v4)
  {
    if (qword_1EDDFEC88 != -1)
    {
      sub_1C4410E64(&qword_1EDDFEC88);
    }

    return sub_1C440246C();
  }

  sub_1C443288C();
  result = sub_1C44122F4();
  __break(1u);
  return result;
}

uint64_t ViewUpdate.ViewInProcessRunner.update(viewName:requests:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return sub_1C43FEB04();
}

uint64_t sub_1C4461F5C(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1C448C9D8();
}

__n128 sub_1C4461F74()
{
  result = v0[7];
  v0[33] = result;
  return result;
}

double sub_1C4461FD4(uint64_t a1, double a2)
{
  *v2 = a2;

  sub_1C4EF9AD8();
  return result;
}

void sub_1C4461FF0()
{

  sub_1C44CD9C0(0, v0, 0);
}

uint64_t sub_1C446202C(uint64_t a1)
{
  *(v2 + *(v1 + 36)) = a1;

  return sub_1C44829A4(v4, v3);
}

uint64_t sub_1C4462064()
{

  return sub_1C4EFBD48();
}

uint64_t sub_1C44620AC()
{
}

uint64_t sub_1C44620D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_1C4F02938();
}

uint64_t sub_1C44620EC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  a1[7] = v3;
  a1[8] = a2;
  a1[4] = v2;

  return sub_1C4EFB728();
}

uint64_t sub_1C4462134()
{
  result = v0;
  *(v1 - 208) = *(*(v1 - 112) + 8);
  return result;
}

uint64_t sub_1C446218C()
{
  sub_1C43FCF70();
  v0 = swift_task_alloc();
  v1 = sub_1C43FCF54(v0);
  *v1 = v2;
  v1[1] = sub_1C442E8C4;
  v3 = sub_1C441B0C0();

  return v4(v3);
}

uint64_t sub_1C446222C()
{
  sub_1C43FCF70();
  v1 = v0;
  v7 = (v2 + *v2);
  v3 = swift_task_alloc();
  v4 = sub_1C43FCF54(v3);
  *v4 = v5;
  v4[1] = sub_1C445229C;

  return v7(v1);
}

uint64_t static ViewUpdate.ViewInProcessRunner.sharedInProcessRunner(for:)()
{
  if (qword_1EDDFE628 != -1)
  {
    sub_1C4402394(&qword_1EDDFE628);
  }

  return sub_1C4461E68();
}

uint64_t sub_1C44623AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  return sub_1C4EFDE58();
}

uint64_t sub_1C44623C4@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v4 = v3 + a3;
  *v4 = result;
  *(v4 + 8) = a2 & 1;
  return result;
}

uint64_t sub_1C44623D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_1C4F004B8();
}

uint64_t sub_1C4462420(uint64_t a1)
{
  v4 = v1[14];
  *(v2 - 136) = v1[15];
  *(v2 - 128) = v4;
  v5 = v1[10];
  *(v2 - 120) = v1[11];
  *(v2 - 112) = v5;
  *(v2 - 104) = v1[7];
}

uint64_t sub_1C4462470()
{
  *(v3 - 200) = v1;
  v5 = *(v3 - 88);

  return sub_1C4471BAC(v0 + v2 * v1, v5);
}

uint64_t sub_1C44624A0(uint64_t a1)
{

  return sub_1C4F02938();
}

unint64_t sub_1C44624F0()
{

  return sub_1C441D828(v1, v0, (v2 - 168));
}

uint64_t sub_1C446250C(uint64_t a1)
{

  return sub_1C44157D4(v1 + v2, 1, a1);
}

uint64_t sub_1C4462540()
{
  *(v0 - 104) = 5;

  return sub_1C4F026C8();
}

uint64_t sub_1C44625AC(double a1)
{
  v5 = (v1 + v2[10]);
  v6 = *(v3 - 112);
  *v5 = *(v3 - 120);
  v5[1] = v6;
  *(v1 + v2[11]) = a1;
  *(v1 + v2[12]) = *(v3 - 132);

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C4462610@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_1C4415624(a1, a2, sub_1C44019F8, type metadata accessor for ViewUpdate.ViewInProcessRunner, ViewUpdate.ViewInProcessRunner.__allocating_init(config:), sub_1C4662DE4);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_1C446268C()
{
  sub_1C4404078();
  v1(0);
  sub_1C43FBCE0();
  v2 = sub_1C43FBC98();
  v3(v2);
  return v0;
}

uint64_t sub_1C44626F8()
{
  sub_1C440DD3C();
  if (v1 == v2)
  {
    return sub_1C4475524();
  }

  v4 = v0;
  sub_1C4EF9CD8();
  v5 = sub_1C4412B9C(*(v4 + 28));

  return sub_1C44157D4(v5, v6, v7);
}

uint64_t sub_1C4462788(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1C4F02BC8();
}

uint64_t sub_1C44627BC(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_1C44627E4()
{
  v2 = *(v0 - 704);
  v3 = *(v0 - 712);

  return sub_1C44239FC(v2, v3);
}

uint64_t sub_1C4462804()
{
  *(v1 + *(v0 + 28)) = *(v2 - 120);

  return sub_1C4EF9E48();
}

uint64_t sub_1C4462830()
{
}

uint64_t sub_1C4462848()
{

  return swift_dynamicCast();
}

uint64_t sub_1C446286C(uint64_t a1)
{

  return sub_1C4EFB438();
}

uint64_t sub_1C4462894()
{

  return sub_1C4F02938();
}

uint64_t sub_1C44628C8@<X0>(uint64_t a1@<X8>)
{
  v5 = v1 + *(v3 + 36);

  return sub_1C449ED64(v2 + a1, v5);
}

uint64_t sub_1C4462934()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + *(type metadata accessor for Configuration(0) + 20));
  if (qword_1EDDFA628 != -1)
  {
    sub_1C442CC60();
    v13 = v12;
    swift_once();
    v2 = v13;
  }

  v3.n128_u64[0] = sub_1C43FC158(xmmword_1EDDFA630, v2);
  if (v4)
  {
    if (qword_1EDDFD018 != -1)
    {
      sub_1C4400660(&qword_1EDDFD018);
    }

    v5 = sub_1C4F00978();
    sub_1C442B738(v5, qword_1EDE2DDF8);
    v6 = sub_1C4F00968();
    v7 = sub_1C4F01CF8();
    if (sub_1C43FEB2C(v7))
    {
      *sub_1C43FCED0() = 0;
      sub_1C43FFFD8(&dword_1C43F8000, v8, v9, "IntelligencePlatformComputeSystem: Preparing...");
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
    }
  }

  v10 = *(v0 + 8);

  return v10(v3);
}

uint64_t sub_1C4462A6C()
{
  sub_1C4415A68();
  sub_1C43FEAEC();
  v1 = v0[4];
  v2 = v0[5];
  v4 = v0[2];
  v3 = v0[3];
  v5 = swift_allocObject();
  v0[6] = v5;
  v5[2] = v4;
  v5[3] = v3;
  v5[4] = v1;
  v5[5] = v2;
  sub_1C447FAB0(&dword_1C4F69F48);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

  v6 = swift_task_alloc();
  v0[7] = v6;
  *v6 = v0;
  v6[1] = sub_1C4454A50;
  sub_1C4426C44();

  return v11(v7, v8, v9, v10, v11, v12, v13, v14);
}

uint64_t sub_1C4462B70()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t type metadata accessor for ViewUpdate.ViewInProcessRunner(uint64_t a1)
{
  result = qword_1EDDFC838;
  if (!qword_1EDDFC838)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C4462C40()
{
  sub_1C43FBD3C();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = sub_1C456902C(&qword_1EC0C6438, &qword_1C4F6D808);
  sub_1C43FBD18(v7);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v8);
  v9 = sub_1C4EFD618();
  sub_1C43FCF64();
  sub_1C440BAA8(v10, v11, v12, v9);
  sub_1C4EF9CD8();
  sub_1C43FCF64();
  sub_1C440BAA8(v13, v14, v15, v16);
  v17 = (v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate14SignpostHelper_name);
  *v17 = v6;
  v17[1] = v4;
  *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate14SignpostHelper_requests) = v2;
  sub_1C446268C();
  sub_1C43FCF64();
  sub_1C440BAA8(v18, v19, v20, v9);
  sub_1C4403138(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate14SignpostHelper_signpost, &v21);
  sub_1C468282C();
  swift_endAccess();
  sub_1C43FE9F0();
}

void sub_1C4462D98()
{
  sub_1C43FBD3C();
  v1 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  sub_1C43FBD18(v1);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v2);
  v77 = &v65 - v3;
  sub_1C43FBE44();
  sub_1C4F008B8();
  sub_1C43FCDF8();
  v75 = v5;
  v76 = v4;
  MEMORY[0x1EEE9AC00](v4);
  sub_1C43FBD08();
  v72 = v6 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v79 = &v65 - v9;
  sub_1C43FBE44();
  sub_1C4F008F8();
  sub_1C43FCDF8();
  v73 = v11;
  v74 = v10;
  MEMORY[0x1EEE9AC00](v10);
  sub_1C43FBD08();
  v71 = v12 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v65 - v15;
  v17 = sub_1C4F00978();
  sub_1C43FCDF8();
  v19 = v18;
  MEMORY[0x1EEE9AC00](v20);
  sub_1C43FBD08();
  v23 = v21 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v65 - v25;
  v27 = sub_1C456902C(&qword_1EC0C6438, &qword_1C4F6D808);
  v28 = sub_1C43FBD18(v27);
  MEMORY[0x1EEE9AC00](v28);
  sub_1C43FBD08();
  v70 = v29 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v65 - v32;
  v34 = OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate14SignpostHelper_signpost;
  sub_1C440F1BC();
  swift_beginAccess();
  v78 = v0;
  v69 = v34;
  sub_1C44DDE2C();
  v35 = sub_1C4EFD618();
  sub_1C4401818(v33);
  v36 = sub_1C44AB2BC();
  sub_1C4420C3C(v36, &qword_1EC0C6438, &qword_1C4F6D808);
  if (v34 == 1)
  {
    v65 = v35;
    sub_1C4F00188();
    v66 = v26;
    v67 = v19;
    v37 = *(v19 + 16);
    v68 = v17;
    v37(v23, v26, v17);
    sub_1C4F008C8();
    sub_1C4F008D8();
    sub_1C4F00898();
    v38 = sub_1C4F008D8();
    v39 = sub_1C4F01E28();
    if (sub_1C4F01F28())
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      v41 = sub_1C4F008A8();
      _os_signpost_emit_with_name_impl(&dword_1C43F8000, v38, v39, v41, "viewGeneration", "", v40, 2u);
      v42 = sub_1C43FEF7C();
      MEMORY[0x1C6942830](v42);
    }

    v44 = v75;
    v43 = v76;
    v45 = v79;
    (*(v75 + 16))(v72, v79, v76);
    sub_1C4F00948();
    swift_allocObject();
    sub_1C4F00938();
    v46 = v73;
    v47 = v74;
    (*(v73 + 16))(v71, v16, v74);
    sub_1C4EFD5E8();
    (*(v44 + 8))(v45, v43);
    (*(v46 + 8))(v16, v47);
    (*(v67 + 8))(v66, v68);
    sub_1C43FBD94();
    sub_1C440BAA8(v48, v49, v50, v65);
    v51 = v78;
    sub_1C4403138(v78 + v69, v80);
    sub_1C468282C();
    swift_endAccess();
    sub_1C4EF9CC8();
    sub_1C4EF9CD8();
    sub_1C43FBD94();
    sub_1C440BAA8(v52, v53, v54, v55);
    sub_1C4403138(v51 + OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate14SignpostHelper_startDate, v80);
    sub_1C468282C();
    swift_endAccess();
  }

  else
  {
    if (qword_1EDDFD018 != -1)
    {
      sub_1C441A86C();
      swift_once();
    }

    sub_1C43FCEE8(v17, qword_1EDE2DDF8);
    v56 = v78;

    v57 = sub_1C4F00968();
    sub_1C4F01CD8();
    sub_1C44624E4();

    if (sub_1C444AD54())
    {
      sub_1C43FECF0();
      v58 = swift_slowAlloc();
      sub_1C43FEC60();
      v59 = swift_slowAlloc();
      v80[0] = v59;
      *v58 = 136446210;
      *(v58 + 4) = sub_1C441D828(*(v56 + OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate14SignpostHelper_name), *(v56 + OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate14SignpostHelper_name + 8), v80);
      sub_1C43FD0B4();
      _os_log_impl(v60, v61, v62, v63, v58, 0xCu);
      sub_1C440962C(v59);
      v64 = sub_1C43FEF7C();
      MEMORY[0x1C6942830](v64);
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
    }
  }

  sub_1C43FE9F0();
}

uint64_t sub_1C446339C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void *sub_1C44633C0()
{
  v1 = objc_autoreleasePoolPush();
  sub_1C4402120();
  sub_1C4434BD0(v2, v3, v4, v5);
  objc_autoreleasePoolPop(v1);
  if (v0)
  {
    v6 = sub_1C4402120();
    sub_1C4434000(v6, v7);
    sub_1C441DFEC(0, 0xF000000000000000);
  }

  else
  {
    v1 = v13;
    sub_1C441DFEC(0, 0xF000000000000000);
    swift_unknownObjectRetain();
    v8 = sub_1C4402120();
    sub_1C4431E64(v8, v9);
    swift_unknownObjectRelease();
    v10 = sub_1C4402120();
    sub_1C441DFEC(v10, v11);
  }

  return v1;
}

void sub_1C44634A0(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = a1;
  v10[1] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    goto LABEL_5;
  }

  v10[0] = 0;
  v4 = [objc_opt_self() archivedDataWithRootObject:a1 requiringSecureCoding:1 error:v10];
  v5 = v10[0];
  if (!v4)
  {
    v8 = v5;
    v9 = sub_1C4EF97A8();

    swift_willThrow();
    v2 = 0;
LABEL_5:
    v7 = 0xF000000000000000;
    goto LABEL_6;
  }

  v2 = sub_1C4EF9A68();
  v7 = v6;

LABEL_6:
  *a2 = v2;
  a2[1] = v7;
}

void sub_1C446359C()
{
  sub_1C441F35C();
  if (!(v2 ^ v3 | v1))
  {
    sub_1C441016C();
    sub_1C44635EC();
    *v0 = v4;
  }
}

void sub_1C44635EC()
{
  sub_1C442F0C4();
  sub_1C43FFC44();
  if ((v4 & 1) == 0 || (sub_1C441172C(), v5 == v6))
  {
LABEL_6:
    sub_1C44108C0();
    if (v3)
    {
      v13 = sub_1C4422208(v7, v8, v9, v10, v11, v12);
      v14 = sub_1C4440F6C(v13);
      sub_1C43FEA8C(v14);
      if (v2)
      {
LABEL_8:
        v15 = sub_1C44330CC();
        v1(v15);
        *(v0 + 16) = 0;
LABEL_11:

        sub_1C4422220();
        return;
      }
    }

    else if (v2)
    {
      goto LABEL_8;
    }

    sub_1C4405788();
    goto LABEL_11;
  }

  sub_1C442B904();
  if (!v5)
  {
    sub_1C440A4D4();
    goto LABEL_6;
  }

  __break(1u);
}

char *sub_1C4463698(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[24 * a2] <= a3)
  {
    return sub_1C441904C(a3, result);
  }

  return result;
}

uint64_t sub_1C4463710()
{
  sub_1C4463744();

  return swift_deallocClassInstance();
}

uint64_t sub_1C4463744()
{
  [objc_opt_self() clearCache];

  return v0;
}

uint64_t sub_1C446380C()
{

  sub_1C4EFF108();

  os_unfair_lock_lock(v1 + 6);
  sub_1C4F00238();
  os_unfair_lock_unlock(v1 + 6);
}

uint64_t sub_1C4463890(uint64_t a1, __int16 a2)
{
  if ((a2 & 0xC000) == 0x4000)
  {
  }

  return result;
}

double sub_1C44638A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v35 = a7;
  v36 = a3;
  v37 = a4;
  v38 = a5;
  v10 = *(a1 + 56);
  v9 = *(a1 + 64);
  if (*(a1 + 49))
  {
    sub_1C44F92C4();
  }

  else
  {
    sub_1C4463B90();
  }

  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v14 = &v31 - v13;
  sub_1C4463BE4();
  if (!v7)
  {
    v34 = v10;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v16 = (*(AssociatedConformanceWitness + 32))(AssociatedTypeWitness, AssociatedConformanceWitness);
    v33 = v17;
    (*(v12 + 8))(v14, AssociatedTypeWitness);
    v32 = 0xEu >> (v35 & 0xF);
    LODWORD(v35) = 0x20104u >> (8 * v35);
    v18 = v35;
    v19 = objc_allocWithZone(MEMORY[0x1E69A9EE8]);
    v20 = v37;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v21 = sub_1C4440254(v36, v20, 0x6C6F72746E6F63, 0xE700000000000000, 0, 0x6C616D726F6ELL, 0xE600000000000000, 0, 0xE000000000000000);
    sub_1C4441C50(v18);
    v23 = v22;
    v25 = v24;
    objc_allocWithZone(MEMORY[0x1E69A9F18]);
    v26 = v21;
    v27 = v34;
    sub_1C4431E64(v34, v9);
    v28 = v33;
    sub_1C44344B8(v16, v33);
    sub_1C4441D58(v26, v27, v9, v16, v28, v23, v25, v32 & 1);
    sub_1C4EF9AD8();
    v8 = v29;

    sub_1C4434000(v16, v28);
  }

  return v8;
}

unint64_t sub_1C4463B90()
{
  result = qword_1EDDFE148[0];
  if (!qword_1EDDFE148[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDDFE148);
  }

  return result;
}

void sub_1C4463BE4()
{
  sub_1C43FE96C();
  v30 = v2;
  v31 = v0;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = sub_1C4F01F48();
  sub_1C43FCE64();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v24 - v14;
  sub_1C43FCE64();
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v24 - v18;
  if (v8 >> 60 == 15)
  {
    sub_1C440BAA8(v15, 1, 1, AssociatedTypeWitness);
    (*(v4 + 56))(v15, v6, v4);
    (*(v12 + 8))(v15, v10);
  }

  else
  {
    v25 = v17;
    v26 = v12;
    v27 = v10;
    v28 = v4;
    v29 = v6;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v21 = *(AssociatedConformanceWitness + 40);
    v22 = v30;
    sub_1C44344B8(v30, v8);
    v21(v22, v8, AssociatedTypeWitness, AssociatedConformanceWitness);
    if (!v1)
    {
      v23 = v25;
      (*(v25 + 16))(v15, v19, AssociatedTypeWitness);
      sub_1C440BAA8(v15, 0, 1, AssociatedTypeWitness);
      (*(v28 + 56))(v15, v29);
      (*(v26 + 8))(v15, v27);
      (*(v23 + 8))(v19, AssociatedTypeWitness);
    }
  }

  sub_1C43FBC80();
}

double sub_1C4463E90(uint64_t a1, unint64_t a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v5 = 0.0;
  sub_1C4463F50(&v5, &v6, a1, a2);
  sub_1C4434000(a1, a2);
  return v5;
}

uint64_t sub_1C4463F50(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  switch(a4 >> 62)
  {
    case 1uLL:
      LODWORD(v4) = HIDWORD(a3) - a3;
      if (__OFSUB__(HIDWORD(a3), a3))
      {
        goto LABEL_8;
      }

      v4 = v4;
LABEL_5:
      if (v4 < 0)
      {
        __break(1u);
LABEL_8:
        __break(1u);
LABEL_9:
        __break(1u);
        JUMPOUT(0x1C4464048);
      }

LABEL_6:
      sub_1C456902C(&qword_1EC0C4030, &unk_1C4F57320);
      sub_1C4464058();
      sub_1C44640AC();
      return sub_1C4EF9498();
    case 2uLL:
      v6 = *(a3 + 16);
      v5 = *(a3 + 24);
      v7 = __OFSUB__(v5, v6);
      v4 = v5 - v6;
      if (!v7)
      {
        goto LABEL_5;
      }

      goto LABEL_9;
    default:
      goto LABEL_6;
  }
}

unint64_t sub_1C4464058()
{
  result = qword_1EDDFE880;
  if (!qword_1EDDFE880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFE880);
  }

  return result;
}

unint64_t sub_1C44640AC()
{
  result = qword_1EDDFCE80;
  if (!qword_1EDDFCE80)
  {
    sub_1C4572308(&qword_1EC0C4030, &unk_1C4F57320);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFCE80);
  }

  return result;
}

double sub_1C4464138()
{
  v0 = sub_1C4EF9CD8();
  sub_1C43FCDF8();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C4EF9C88();
  sub_1C4EF9AD8();
  v7 = v6;
  (*(v2 + 8))(v5, v0);
  return v7;
}

uint64_t sub_1C4464208()
{
  sub_1C447CCA8();
  v4 = v3;
  v5 = sub_1C456902C(&unk_1EC0C06C0, &unk_1C4F10DB0);
  sub_1C43FBD18(v5);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v6);
  v7 = sub_1C440101C();
  sub_1C43FCDF8();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  sub_1C440A82C();
  swift_unownedRetainStrong();
  sub_1C4458808();
  result = sub_1C4461D94();
  if (!v1)
  {

    sub_1C456902C(&unk_1EC0C0720, &unk_1C4F0EB20);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1C4F0C890;
    v13 = MEMORY[0x1E69A0180];
    *(v12 + 56) = MEMORY[0x1E69E6530];
    *(v12 + 64) = v13;
    v14 = MEMORY[0x1E69E6158];
    *(v12 + 32) = v4;
    v15 = MEMORY[0x1E69A0138];
    *(v12 + 96) = v14;
    *(v12 + 104) = v15;
    strcpy((v12 + 72), "alwaysUpdate");
    *(v12 + 85) = 0;
    *(v12 + 86) = -5120;
    *(v12 + 136) = &unk_1F44095F0;
    *(v12 + 144) = sub_1C44248E8();
    *(v12 + 112) = 1;
    sub_1C4EFB728();
    sub_1C4EFC088();
    (*(v9 + 8))(v2, v7);
    v16 = sub_1C44038D0();
    sub_1C440BAA8(v16, v17, v18, v7);
    sub_1C4EFC0A8();
    sub_1C4420C3C(v0, &unk_1EC0C06C0, &unk_1C4F10DB0);
  }

  return result;
}

uint64_t sub_1C4464408(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  a3();
  a4();

  return sub_1C4EFBA18();
}

unint64_t sub_1C44644B0()
{
  result = qword_1EDDF95D8;
  if (!qword_1EDDF95D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF95D8);
  }

  return result;
}

uint64_t sub_1C4464504()
{
  v1 = sub_1C4405D78();
  result = sub_1C4424B10(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

void sub_1C446452C()
{
  sub_1C43FE96C();
  sub_1C441AE30();
  v3 = sub_1C456902C(&unk_1EC0C06C0, &unk_1C4F10DB0);
  sub_1C43FBD18(v3);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v4);
  sub_1C440A474();
  v5 = sub_1C4EFB768();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FBCC4();
  sub_1C441C544();
  v7 = sub_1C4408D00();
  v8 = sub_1C4440C6C(v7);

  if (v0)
  {
    goto LABEL_3;
  }

  v9 = sub_1C456902C(&unk_1EC0C0720, &unk_1C4F0EB20);
  v10 = sub_1C44331AC(v9);
  v11 = MEMORY[0x1E69E6530];
  *(v10 + 16) = xmmword_1C4F0D130;
  v12 = MEMORY[0x1E69A0180];
  *(v10 + 56) = v11;
  *(v10 + 64) = v12;
  *(v10 + 32) = v1;
  sub_1C4EFB728();
  sub_1C4EFC088();
  v13 = sub_1C43FD018();
  v14(v13);
  sub_1C4EFBC58();
  sub_1C43FCF64();
  sub_1C44112DC(v15, v16, v17, v5);
  v18 = sub_1C4EFBC48();
  sub_1C4420C3C(&v31, &unk_1EC0BC770, &qword_1C4F10DC0);
  sub_1C4420C3C(v2, &unk_1EC0C06C0, &unk_1C4F10DB0);
  if (!v18)
  {
    v31.n128_u64[0] = v1;
    v20 = sub_1C4F02858();
    v22 = v21;
    sub_1C450B034();
    sub_1C441C114();
    v23 = swift_allocError();
    v24->n128_u64[0] = v20;
    v24->n128_u64[1] = v22;
    v24[1].n128_u64[0] = 0xD00000000000001BLL;
    v24[1].n128_u64[1] = 0x80000001C4FB5120;
    v24[2].n128_u64[0] = 0;
    v24[2].n128_u64[1] = 0xE000000000000000;
    sub_1C4426EA4(v31, v23, v24);

LABEL_3:
    sub_1C4402144();
    sub_1C43FBC80();
    return;
  }

  sub_1C445FEE0();
  sub_1C4EFBBA8();
  v19 = sub_1C4EFBBE8();
  if (v19)
  {
    if (sqlite3_column_type(v19, 0) != 5)
    {
      v31.n128_u64[0] = sub_1C4F011E8();
    }
  }

  else
  {
    sub_1C446C094();
    sub_1C4EFBBF8();
  }

  sub_1C44091DC();
  sub_1C4EFBBA8();
  v25 = sub_1C4EFBBE8();
  if (!v25)
  {
    sub_1C440CDC4();
    sub_1C4EFBB98();

    goto LABEL_3;
  }

  v26 = v25;
  MEMORY[0x1EEE9AC00](v25);
  sub_1C4423838();
  v29 = sub_1C4414708(v27, v28);
  if (v29 != 5)
  {
    sub_1C4F017E8();

    goto LABEL_3;
  }

  MEMORY[0x1EEE9AC00](v29);
  sub_1C43FD954();
  *(v30 - 16) = sub_1C487BF24;
  *(v30 - 8) = v8;
  sub_1C444157C(v26, 1, sub_1C487BF28);
  sub_1C4433888();
  swift_unexpectedError();
  __break(1u);
}

uint64_t sub_1C44649A8(uint64_t a1)
{
  v2 = _s20BookmarkLoadingStateVMa(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C4464A04(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0BE5A8, &qword_1C4F376A8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C4464A74()
{
  v0 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v9[-v1];
  v3 = sub_1C444AF90(v9);
  v5 = v4;
  v6 = _s7MetricsO7PayloadVMa(0);
  if (!sub_1C44157D4(v5, 1, v6))
  {
    sub_1C4EF9CC8();
    v7 = sub_1C4EF9CD8();
    sub_1C440BAA8(v2, 0, 1, v7);
    sub_1C468282C();
  }

  return (v3)(v9, 0);
}

uint64_t sub_1C4464B84(uint64_t a1, uint64_t a2)
{

  return sub_1C4471988(a1, a2);
}

uint64_t sub_1C4464B9C()
{

  return sub_1C45D17A0(v0 - 176, v0 - 240);
}

uint64_t sub_1C4464BC0(uint64_t a1)
{

  return swift_dynamicCast();
}

uint64_t sub_1C4464BF4()
{
  sub_1C43FBCD4();
  *(v1 + 40) = v2;
  *(v1 + 48) = v0;
  *(v1 + 113) = v3;
  *(v1 + 112) = v4;
  *(v1 + 24) = v5;
  *(v1 + 32) = v6;
  *(v1 + 16) = v7;
  updated = _s17ViewUpdateRequestVMa(0);
  sub_1C43FBD18(updated);
  *(v1 + 56) = sub_1C43FBE7C();
  v9 = _s17ViewUpdateResultsVMa(0);
  *(v1 + 64) = v9;
  sub_1C43FBD18(v9);
  *(v1 + 72) = sub_1C43FBE7C();
  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1C4464CA4()
{
  sub_1C43FEAEC();
  sub_1C4409678((v0[6] + 32), *(v0[6] + 56));
  v0[10] = sub_1C4464DE4();
  sub_1C4404280();
  v5 = (v1 + *v1);
  v2 = swift_task_alloc();
  v0[11] = v2;
  *v2 = v0;
  v2[1] = sub_1C4459390;
  v3 = sub_1C440F4D4(v0[3]);

  return v5(v3);
}

uint64_t sub_1C4464DE4()
{
  v11 = MEMORY[0x1E69E7CC0];
  v1 = *(v0 + 24);
  MEMORY[0x1C6940330]();
  v2 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x18);
  if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v2 >> 1)
  {
    sub_1C43FCFE8(v2);
    sub_1C4F016D8();
  }

  sub_1C4F01748();
  v3 = *(v0 + 48);
  v4 = *(v3 + 16);
  v5 = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    v10 = MEMORY[0x1E69E7CC0];
    sub_1C4F02348();
    v6 = (v3 + 32);
    do
    {
      v7 = *v6;
      v6 += 3;
      v8 = v7;
      sub_1C4F02318();
      sub_1C4F02358();
      sub_1C4F02368();
      sub_1C4F02328();
      --v4;
    }

    while (v4);
    v5 = v10;
  }

  sub_1C4464EF8(v5);
  return v11;
}

uint64_t sub_1C4464F38(uint64_t a1, uint64_t a2)
{
  v7[3] = MEMORY[0x1E69E6290];
  v7[4] = MEMORY[0x1E6969DF8];
  v7[0] = a1;
  v7[1] = a2;
  v2 = sub_1C4409678(v7, MEMORY[0x1E69E6290]);
  v3 = *v2;
  if (*v2)
  {
    v4 = v2[1];
    v5 = v4 - v3;
    if (v4 != v3)
    {
      if (v5 <= 14)
      {
        sub_1C4EF9908();
      }

      else if (v5 >= 0x7FFFFFFF)
      {
        MEMORY[0x1C6938610]();
      }

      else
      {
        MEMORY[0x1C6938650]();
      }
    }
  }

  sub_1C440962C(v7);
  return sub_1C43FBC98();
}

uint64_t sub_1C4464FF0(double a1)
{
  v3 = *MEMORY[0x1E69E9840];
  v2 = a1;
  return sub_1C4464F38(&v2, &v3);
}

uint64_t sub_1C446504C(uint64_t a1, uint64_t (*a2)(void), void (*a3)(uint64_t, uint64_t), void (*a4)(uint64_t, void, uint64_t))
{
  v9 = a2();
  v10 = (a2)(*v4);
  v11 = __OFADD__(v10, v9);
  result = v10 + v9;
  if (v11)
  {
    __break(1u);
    goto LABEL_8;
  }

  a3(result, 1);
  v13 = *v4;
  v14 = *v4 & 0xFFFFFFFFFFFFFF8;
  a4(v14 + 8 * *(v14 + 0x10) + 32, (*(v14 + 0x18) >> 1) - *(v14 + 0x10), a1);
  v16 = v15;

  if (v16 < v9)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v16 < 1)
  {
LABEL_6:
    *v4 = v13;
    return result;
  }

  v17 = *(v14 + 16);
  v11 = __OFADD__(v17, v16);
  v18 = v17 + v16;
  if (!v11)
  {
    *(v14 + 16) = v18;
    goto LABEL_6;
  }

LABEL_9:
  __break(1u);
  return result;
}

void sub_1C4465218()
{
  v2 = sub_1C4436470();
  *v1 = v0;
  if (!v2)
  {
    sub_1C441016C();
    sub_1C440F1DC();
    sub_1C44635EC();
    *v1 = v3;
  }
}

uint64_t sub_1C44652C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  if (a7 >> 60 != 11)
  {
    return sub_1C441DFEC(a6, a7);
  }

  return result;
}

void sub_1C44653AC()
{
  v29 = 0;
  v30 = 1;
  v27 = 0;
  v28 = 1;
  v23 = &v29;
  v24 = &v27;
  sub_1C4465390(sub_1C4465BCC, v22);
  if (v30)
  {
    return;
  }

  v0 = v29;
  if (v29 < 1)
  {
    return;
  }

  if (v28)
  {
    return;
  }

  if (v27 < 1)
  {
    return;
  }

  v1 = v27 - v29;
  v2 = (v27 - v29) / v27;
  if (v29 <= 0x400 && v2 >= 0.85)
  {
    return;
  }

  if (qword_1EDDFFAF0 != -1)
  {
    sub_1C440686C();
    swift_once();
  }

  v3 = sub_1C4F00978();
  sub_1C442B738(v3, qword_1EDE2E088);

  v4 = sub_1C4F00968();
  v5 = sub_1C4F01CC8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    sub_1C43FEC60();
    v7 = swift_slowAlloc();
    v25[0] = v7;
    *v6 = 136315394;
    v8 = sub_1C47773C4();
    v10 = sub_1C441D828(v8, v9, v25);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2048;
    *(v6 + 14) = v2;
    _os_log_impl(&dword_1C43F8000, v4, v5, "%s: load factor = %f", v6, 0x16u);
    sub_1C440962C(v7);
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  if (v2 >= 0.4)
  {
    goto LABEL_15;
  }

  v11 = v0 - v1;
  if (__OFSUB__(v0, v1))
  {
    __break(1u);
LABEL_15:
    if ((v0 + 0x4000000000000000) < 0)
    {
      __break(1u);
      return;
    }

    v11 = v0 / 5;
  }

  if (v11 >= 250)
  {
    v12 = 250;
  }

  else
  {
    v12 = v11;
  }

  v26 = v12;

  v13 = sub_1C4F00968();
  v14 = sub_1C4F01CC8();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    sub_1C43FEC60();
    v16 = swift_slowAlloc();
    v25[0] = v16;
    *v15 = 136315394;
    v17 = sub_1C47773C4();
    v19 = sub_1C441D828(v17, v18, v25);

    *(v15 + 4) = v19;
    *(v15 + 12) = 2048;
    *(v15 + 14) = v12;
    _os_log_impl(&dword_1C43F8000, v13, v14, "%s: will vacuum %ld pages.", v15, 0x16u);
    sub_1C440962C(v16);
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  MEMORY[0x1EEE9AC00](v20);
  v21[2] = &v26;
  sub_1C4470F24(sub_1C4471194, v21);
  swift_beginAccess();
}

void sub_1C446572C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  sub_1C43FE96C();
  sub_1C4417168();
  sub_1C4EFB1E8();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v12);
  sub_1C43FBFDC();
  sub_1C4433378();
  MEMORY[0x1EEE9AC00](v13);
  sub_1C442BAE8(v14, v15, v16, v17, v18, v19, v20, v21, v36);
  sub_1C43FCDF8();
  v23 = v22;
  MEMORY[0x1EEE9AC00](v24);
  sub_1C4406E1C();
  sub_1C444FD74();
  if (!v10)
  {
    goto LABEL_7;
  }

  v25 = v10;
  sub_1C4EFA798();
  sub_1C447F088();
  sub_1C445E7F4();
  v26 = *(v23 + 8);
  v27 = sub_1C43FCE84();
  v26(v27);
  if (v11)
  {

    v30 = sub_1C4778264();
    sub_1C43FFB2C(&type metadata for ErrorHandlingDatabasePoolError, v30);
    sub_1C4433CB8();
LABEL_7:
    sub_1C440431C();
    sub_1C43FBC80();
    return;
  }

  v28 = v10;
  sub_1C4EFAAC8();
  sub_1C447F088();
  sub_1C445E7F4();
  v29 = sub_1C43FCE84();
  v26(v29);
  sub_1C442F1A4();
  v31 = sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
  if (!sub_1C43FEF9C(v31))
  {

    goto LABEL_7;
  }

  v32 = sub_1C440F670();
  v33(v32);
  v34 = sub_1C441C250(OBJC_IVAR____TtC24IntelligencePlatformCore25ErrorHandlingDatabasePool_databaseFileURL);
  sub_1C4774554(v34, v35);
  __break(1u);
}

uint64_t sub_1C446594C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C456902C(&unk_1EC0C06C0, &unk_1C4F10DB0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v16 - v10;
  result = sub_1C4EFBED8();
  if (!v3)
  {
    v13 = sub_1C4EFB768();
    sub_1C440BAA8(v11, 1, 1, v13);
    v18 = 0;
    v16 = 0u;
    v17 = 0u;
    sub_1C4EFB9A8();

    sub_1C4423A0C(&v16, &unk_1EC0BC770, &qword_1C4F10DC0);
    sub_1C4423A0C(v11, &unk_1EC0C06C0, &unk_1C4F10DB0);
    v14 = v20;
    *a2 = v19;
    *(a2 + 8) = v14;
    sub_1C4EFBED8();
    sub_1C440BAA8(v8, 1, 1, v13);
    v18 = 0;
    v16 = 0u;
    v17 = 0u;
    sub_1C4EFB9A8();

    sub_1C4423A0C(&v16, &unk_1EC0BC770, &qword_1C4F10DC0);
    result = sub_1C4423A0C(v8, &unk_1EC0C06C0, &unk_1C4F10DB0);
    v15 = v20;
    *a3 = v19;
    *(a3 + 8) = v15;
  }

  return result;
}

void sub_1C4465BE8(uint64_t a1)
{
  v3 = *(sub_1C4EF98F8() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  sub_1C4465C84(a1, *(v1 + 16), *(v1 + 24), (v1 + v4), *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

void sub_1C4465C84(uint64_t a1, char a2, uint64_t a3, char *a4, uint64_t a5)
{
  v57 = a5;
  v66 = a4;
  v70 = a3;
  v73 = sub_1C4EFB1E8();
  v56 = *(v73 - 8);
  MEMORY[0x1EEE9AC00](v73);
  v55 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v72 = &v55 - v9;
  v10 = sub_1C4EFB768();
  v71 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v67 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v58 = &v55 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v65 = &v55 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v68 = &v55 - v17;
  v18 = sub_1C4EFBEC8();
  v63 = *(v18 - 8);
  v64 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v62 = &v55 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1C4EF98F8();
  v60 = *(v20 - 8);
  v61 = v20;
  v21 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v59 = &v55 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1C4EFB148();
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v55 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a2 & 0x10) == 0)
  {
    sub_1C4EFF9A8();
    sub_1C44901D4(&qword_1EDDFF9C0, MEMORY[0x1E69A9A70], MEMORY[0x1E69A9A68]);
    sub_1C4EFBE68();
    if (v5)
    {
      v27 = v72;
      v26 = v73;
      v28 = v5;
      goto LABEL_34;
    }
  }

  v69 = v10;
  if ((a2 & 0x20) == 0)
  {
    sub_1C4EFB588();
    swift_allocObject();
    LOBYTE(v74) = 0;
    sub_1C4EFB598();
    sub_1C4EFBF48();
  }

  sub_1C4EFBE88();
  v29 = sub_1C4EFB128();
  (*(v23 + 8))(v25, v22);
  if (v29)
  {
    v28 = v5;
  }

  else
  {
    sub_1C44FA5AC();
    v28 = v5;
    if (v5)
    {
      goto LABEL_33;
    }
  }

  if ((a2 & 1) != 0 && [objc_opt_self() isInternalDevice])
  {
    v30 = v59;
    v31 = v60;
    v32 = v61;
    (*(v60 + 16))(v59, v66, v61);
    v33 = (*(v31 + 80) + 16) & ~*(v31 + 80);
    v34 = swift_allocObject();
    (*(v31 + 32))(v34 + v33, v30, v32);
    v35 = v62;
    sub_1C4EFBEB8();
    sub_1C4EFBF88();

    (*(v63 + 8))(v35, v64);
  }

  if ((a2 & 2) != 0)
  {
    if (qword_1EDDFECB0 != -1)
    {
      swift_once();
    }

    v37 = sub_1C4F00978();
    sub_1C442B738(v37, qword_1EDDFECB8);
    v38 = sub_1C4F00968();
    v39 = sub_1C4F01CC8();
    v40 = os_log_type_enabled(v38, v39);
    v36 = v71;
    if (v40)
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v74 = v42;
      *v41 = 136315138;
      v43 = sub_1C4F02C58();
      v45 = v28;
      v46 = sub_1C441D828(v43, v44, &v74);

      *(v41 + 4) = v46;
      v28 = v45;
      _os_log_impl(&dword_1C43F8000, v38, v39, "%s: disabling cache_spill", v41, 0xCu);
      sub_1C440962C(v42);
      MEMORY[0x1C6942830](v42, -1, -1);
      MEMORY[0x1C6942830](v41, -1, -1);
    }

    v47 = v68;
    sub_1C4EFB758();
    sub_1C4EFBFF8();
    if (!v28)
    {
      (*(v36 + 8))(v47, v69);
      goto LABEL_31;
    }

    (*(v36 + 8))(v47, v69);
  }

  else
  {
    if ((a2 & 4) != 0)
    {
      v74 = 0;
      v75 = 0xE000000000000000;
      sub_1C4F02248();

      v74 = 0xD000000000000015;
      v75 = 0x80000001C4F8D6D0;
      v36 = v71;
      if (qword_1EDDF34F0 != -1)
      {
        swift_once();
      }

      v76 = qword_1EDE2D3C0;
      v48 = sub_1C4F02858();
      MEMORY[0x1C6940010](v48);

      v49 = v65;
      sub_1C4EFB758();
      sub_1C4EFBFF8();
      if (!v28)
      {
        goto LABEL_30;
      }
    }

    else
    {
      if ((a2 & 8) == 0)
      {
        v36 = v71;
LABEL_31:
        v51 = v67;
        sub_1C4EFB758();
        sub_1C4EFBFF8();
        if (!v28)
        {
          (*(v36 + 8))(v51, v69);
          return;
        }

        (*(v36 + 8))(v51, v69);
        goto LABEL_33;
      }

      v74 = 0;
      v75 = 0xE000000000000000;
      sub_1C4F02248();

      v74 = 0xD000000000000015;
      v75 = 0x80000001C4F8D6D0;
      if (qword_1EDDFEDC8 != -1)
      {
        swift_once();
      }

      v76 = qword_1EDE2DF90;
      v50 = sub_1C4F02858();
      MEMORY[0x1C6940010](v50);

      v49 = v58;
      sub_1C4EFB758();
      sub_1C4EFBFF8();
      v36 = v71;
      if (!v28)
      {
LABEL_30:
        (*(v36 + 8))(v49, v69);

        goto LABEL_31;
      }
    }

    (*(v36 + 8))(v49, v69);
  }

LABEL_33:
  v27 = v72;
  v26 = v73;
LABEL_34:
  v74 = v28;
  v52 = v28;
  sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
  if (swift_dynamicCast())
  {
    v53 = v27;
    v54 = v55;
    (*(v56 + 32))(v55, v53, v26);
    sub_1C4774554(v66, v54);
    __break(1u);
  }

  else
  {
  }
}

uint64_t sub_1C4466674()
{
  sub_1C4EF98F8();
  sub_1C43FD3F8();
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

void sub_1C4466710(char a1)
{
  v3 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v4);
  sub_1C43FBD08();
  v7 = v5 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v41[-v9];
  MEMORY[0x1EEE9AC00](v11);
  sub_1C440D124();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v41[-v13];
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v41[-v17];
  switch(a1)
  {
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
      return;
    case 7:
      if (qword_1EDDFC178 != -1)
      {
        v16 = sub_1C441294C(&qword_1EDDFC178);
      }

      sub_1C4406260(v16, qword_1EDE2DD88);
      sub_1C4466EEC(v3, v14);
      v28 = type metadata accessor for Configuration(0);
      sub_1C443DFF4(v14, v29, v28);
      sub_1C4420C3C(v14, &unk_1EC0B9610, &unk_1C4F0F2E0);
      if (v3 == 1)
      {
        goto LABEL_21;
      }

      type metadata accessor for OneShotSingletons();
      sub_1C44A1F64();
      MEMORY[0x1EEE9AC00](v30);
      sub_1C43FD954();
      *(v31 - 16) = 1;
      v23 = 0x72756F4877656976;
      goto LABEL_23;
    case 8:
      if (qword_1EDDFC178 != -1)
      {
        v16 = sub_1C441294C(&qword_1EDDFC178);
      }

      sub_1C4406260(v16, qword_1EDE2DD88);
      sub_1C4466EEC(v3, v10);
      v36 = type metadata accessor for Configuration(0);
      sub_1C443DFF4(v10, v37, v36);
      sub_1C4420C3C(v10, &unk_1EC0B9610, &unk_1C4F0F2E0);
      if (v3 == 1)
      {
        goto LABEL_21;
      }

      type metadata accessor for OneShotSingletons();
      sub_1C44A1F64();
      MEMORY[0x1EEE9AC00](v39);
      sub_1C4440E64();
      *(v40 - 16) = 2;
      v23 = 0xD000000000000012;
      goto LABEL_23;
    case 9:
      if (qword_1EDDFC178 != -1)
      {
        v16 = sub_1C441294C(&qword_1EDDFC178);
      }

      sub_1C4406260(v16, qword_1EDE2DD88);
      sub_1C4466EEC(v3, v1);
      v24 = type metadata accessor for Configuration(0);
      sub_1C443DFF4(v1, v25, v24);
      sub_1C4420C3C(v1, &unk_1EC0B9610, &unk_1C4F0F2E0);
      if (v3 == 1)
      {
        goto LABEL_21;
      }

      type metadata accessor for OneShotSingletons();
      sub_1C44A1F64();
      MEMORY[0x1EEE9AC00](v26);
      sub_1C4440E64();
      *(v27 - 16) = 3;
      v23 = 0xD000000000000011;
      goto LABEL_23;
    case 10:
      if (qword_1EDDFC178 != -1)
      {
        v16 = sub_1C441294C(&qword_1EDDFC178);
      }

      sub_1C4406260(v16, qword_1EDE2DD88);
      sub_1C4466EEC(v3, v7);
      v32 = type metadata accessor for Configuration(0);
      sub_1C443DFF4(v7, v33, v32);
      sub_1C4420C3C(v7, &unk_1EC0B9610, &unk_1C4F0F2E0);
      if (v3 == 1)
      {
        goto LABEL_21;
      }

      type metadata accessor for OneShotSingletons();
      sub_1C44A1F64();
      MEMORY[0x1EEE9AC00](v34);
      sub_1C4440E64();
      *(v35 - 16) = 4;
      v23 = 0xD000000000000017;
      goto LABEL_23;
    default:
      if (qword_1EDDFC178 != -1)
      {
        v16 = sub_1C441294C(&qword_1EDDFC178);
      }

      sub_1C4406260(v16, qword_1EDE2DD88);
      sub_1C4466EEC(v3, v18);
      v19 = type metadata accessor for Configuration(0);
      sub_1C443DFF4(v18, v20, v19);
      sub_1C4420C3C(v18, &unk_1EC0B9610, &unk_1C4F0F2E0);
      if (v3 == 1)
      {
LABEL_21:
        sub_1C446D0DC();
        swift_allocError();
        *v38 = 0xD000000000000037;
        *(v38 + 8) = 0x80000001C4FB1670;
        *(v38 + 16) = 2;
        swift_willThrow();
      }

      else
      {
        type metadata accessor for OneShotSingletons();
        sub_1C44A1F64();
        MEMORY[0x1EEE9AC00](v21);
        sub_1C43FD954();
        *(v22 - 16) = 0;
        v23 = 0x6576694C77656976;
LABEL_23:
        sub_1C446703C(v23);
        sub_1C4467260();
      }

      return;
  }
}

void sub_1C4466CE4()
{
  v1 = *(v0 - 208);
  *(v0 - 240) = *(v0 - 200);
  *(v0 - 232) = v1;
}

uint64_t sub_1C4466D24()
{
  v2 = *(v0 - 992);
  v3 = *(v0 - 1008);

  return sub_1C44239FC(v2, v3);
}

uint64_t sub_1C4466D44(uint64_t a1)
{

  return LocationMatcher.init(stores:source:pipelineType:)(v2, v1, (v3 - 96), a1);
}

void sub_1C4466D68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  sub_1C4B1E304();
}

uint64_t sub_1C4466DB0(uint64_t a1, uint64_t a2, int a3)
{
  *(v3 - 100) = a3;
}

uint64_t sub_1C4466DE8()
{
}

void sub_1C4466E38()
{

  JUMPOUT(0x1C6940010);
}

uint64_t sub_1C4466E68()
{
  v7 = (v3 + v4[8]);
  *v7 = v2;
  v7[1] = v1;
  v8 = (v3 + v4[10]);
  v9 = *(v0 + 184);
  *v8 = *(v0 + 192);
  v8[1] = v9;
  *(v3 + v4[11]) = v6;
  *(v3 + v4[12]) = *(v0 + 180);

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C4466EEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C4466F70(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C4EF98F8();

  return sub_1C44157D4(a1, a2, v4);
}

uint64_t sub_1C4466FCC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C4EF98F8();

  return sub_1C440BAA8(a1, a2, a2, v4);
}

uint64_t sub_1C446703C(uint64_t a1)
{
  if (qword_1EDDFB440 != -1)
  {
    a1 = swift_once();
  }

  v1 = *(off_1EDDFB450 + 2);
  MEMORY[0x1EEE9AC00](a1);
  os_unfair_lock_lock((v1 + 24));
  sub_1C4467108((v1 + 16), &v3);
  os_unfair_lock_unlock((v1 + 24));
  return v3;
}

uint64_t sub_1C4467128@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(uint64_t)@<X3>, uint64_t *a5@<X8>)
{
  v9 = *a1;
  swift_beginAccess();
  v10 = *(v9 + 16);
  if (*(v10 + 16) && (v11 = sub_1C445FAA8(a2, a3), (v12 & 1) != 0))
  {
    v13 = *(*(v10 + 56) + 8 * v11);
    swift_endAccess();
    *a5 = v13;
  }

  else
  {
    v15 = swift_endAccess();
    v16 = a4(v15);
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *(v9 + 16);
    sub_1C466274C(v16, a2, a3, isUniquelyReferenced_nonNull_native);
    *(v9 + 16) = v18;
    result = swift_endAccess();
    *a5 = v16;
  }

  return result;
}

void sub_1C4467260()
{
  v1 = *(v0 + 56);
  os_unfair_lock_lock((v1 + 24));
  sub_1C4467244((v1 + 16));

  os_unfair_lock_unlock((v1 + 24));
}

void sub_1C44672B8(uint64_t *a1, void *a2)
{
  v3 = *a1;
  if ((*(*a1 + 16) & 1) == 0)
  {
    *(v3 + 16) = 1;
    if (*(v3 + 24))
    {
      v5 = swift_unknownObjectRetain();
      if (xpc_activity_copy_criteria(v5) && (swift_getObjectType(), v6 = sub_1C4A4E438(), swift_unknownObjectRelease(), !v6))
      {
        if (qword_1EDDFD028 != -1)
        {
          swift_once();
        }

        v21 = sub_1C4F00978();
        sub_1C442B738(v21, qword_1EDE2DE10);

        v22 = sub_1C4F00968();
        v23 = sub_1C4F01CB8();

        if (os_log_type_enabled(v22, v23))
        {
          v24 = swift_slowAlloc();
          v25 = swift_slowAlloc();
          v31 = v25;
          *v24 = 136315138;
          v26 = a2[5];
          v27 = a2[6];
          sub_1C4409678(a2 + 2, v26);
          v28 = (*(v27 + 8))(v26, v27);
          v30 = sub_1C441D828(v28, v29, &v31);

          *(v24 + 4) = v30;
          _os_log_impl(&dword_1C43F8000, v22, v23, "ScheduledTask: %s: has already been scheduled", v24, 0xCu);
          sub_1C440962C(v25);
          MEMORY[0x1C6942830](v25, -1, -1);
          MEMORY[0x1C6942830](v24, -1, -1);
        }

        else
        {
        }

        swift_unknownObjectRelease();
      }

      else
      {
        if (qword_1EDDFD028 != -1)
        {
          swift_once();
        }

        v7 = sub_1C4F00978();
        sub_1C442B738(v7, qword_1EDE2DE10);

        v8 = sub_1C4F00968();
        v9 = sub_1C4F01CB8();

        if (os_log_type_enabled(v8, v9))
        {
          v10 = swift_slowAlloc();
          v11 = swift_slowAlloc();
          v31 = v11;
          *v10 = 136315138;
          v13 = a2[5];
          v12 = a2[6];
          sub_1C4409678(a2 + 2, v13);
          v14 = (*(v12 + 8))(v13, v12);
          v16 = sub_1C441D828(v14, v15, &v31);

          *(v10 + 4) = v16;
          _os_log_impl(&dword_1C43F8000, v8, v9, "ScheduledTask: %s: scheduling OneShotTask", v10, 0xCu);
          sub_1C440962C(v11);
          MEMORY[0x1C6942830](v11, -1, -1);
          MEMORY[0x1C6942830](v10, -1, -1);
        }

        v17 = a2[11];
        v18 = a2[12];
        sub_1C4409678(a2 + 8, v17);
        v19 = (*(v18 + 16))(v17, v18);
        MEMORY[0x1EEE9AC00](v19);
        os_unfair_lock_lock(v20 + 6);
        sub_1C4AF1E4C((v19 + 16));
        os_unfair_lock_unlock((v19 + 24));
        if (v2)
        {
          __break(1u);
        }

        else
        {
          swift_unknownObjectRelease();
        }
      }
    }
  }
}

void sub_1C446769C()
{
  sub_1C447CCA8();
  v4 = v3;
  v6 = v5;
  v7 = sub_1C456902C(&unk_1EC0C06C0, &unk_1C4F10DB0);
  sub_1C43FBD18(v7);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v8);
  v9 = sub_1C440101C();
  sub_1C43FCDF8();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  sub_1C440A82C();
  swift_unownedRetainStrong();
  sub_1C4458808();
  sub_1C4461D94();
  if (!v1)
  {

    v13 = sub_1C456902C(&unk_1EC0C0720, &unk_1C4F0EB20);
    v14 = sub_1C4404370(v13);
    *(v14 + 16) = xmmword_1C4F0CE60;
    v15 = MEMORY[0x1E69A0180];
    *(v14 + 56) = MEMORY[0x1E69E6530];
    *(v14 + 64) = v15;
    v16 = MEMORY[0x1E69E63B0];
    *(v14 + 32) = v6;
    v17 = MEMORY[0x1E69A0168];
    *(v14 + 96) = v16;
    *(v14 + 104) = v17;
    *(v14 + 72) = v4;
    sub_1C4EFB728();
    sub_1C4EFC088();
    (*(v11 + 8))(v2, v9);
    v18 = sub_1C44038D0();
    sub_1C44554A8(v18, v19, v20);
    sub_1C4420C3C(v0, &unk_1EC0C06C0, &unk_1C4F10DB0);
  }

  sub_1C4403810();
}

void *sub_1C446784C(uint64_t a1, uint64_t *a2)
{
  sub_1C4401CBC(&qword_1EDDF0060, &unk_1EC0BC928, &qword_1C4F29AF0, MEMORY[0x1E699FF98]);
  result = sub_1C4EFB4D8();
  if (!v2)
  {
    return v4;
  }

  return result;
}

void *sub_1C4467900@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  result = sub_1C446784C(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_1C4467948(uint64_t a1)
{
  v2 = type metadata accessor for Configuration(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C44679C8(void *a1, int a2, uint64_t a3, void *aBlock, uint64_t a5)
{
  v7 = _Block_copy(aBlock);
  v8 = swift_allocObject();
  v8[2] = a3;
  v8[3] = v7;
  v8[4] = a1;
  v9 = a1;
  v10 = sub_1C43FBC98();

  return sub_1C446D134(v10, v11);
}

uint64_t sub_1C4467A44(uint64_t a1)
{
  sub_1C456902C(&qword_1EC0BA6C0, &unk_1C4F14600);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C4F3B920;
  *(inited + 32) = 0x656D614E77656956;
  *(inited + 40) = 0xE800000000000000;
  *(inited + 48) = sub_1C4F01108();
  *(inited + 56) = 0x7265646E6553;
  *(inited + 64) = 0xE600000000000000;
  *(inited + 72) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  strcpy((inited + 80), "UpdateStatus");
  *(inited + 93) = 0;
  *(inited + 94) = -5120;
  *(inited + 96) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  strcpy((inited + 104), "TotalDuration");
  *(inited + 118) = -4864;
  sub_1C4467E58();
  sub_1C441141C(objc_allocWithZone(MEMORY[0x1E696AD98]));
  sub_1C43FBDF0();
  *(inited + 120) = v3;
  *(inited + 128) = 0xD000000000000013;
  *(inited + 136) = v4;
  sub_1C4468050();
  sub_1C441141C(objc_allocWithZone(MEMORY[0x1E696AD98]));
  sub_1C43FBDF0();
  *(inited + 144) = v5;
  *(inited + 152) = 0xD000000000000016;
  *(inited + 160) = v6;
  v7 = _s7MetricsO7PayloadVMa(0);
  [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
  sub_1C43FBDF0();
  *(inited + 168) = v8;
  *(inited + 176) = 0xD000000000000011;
  *(inited + 184) = v9;
  [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
  sub_1C43FBDF0();
  *(inited + 192) = v10;
  *(inited + 200) = 0xD000000000000010;
  *(inited + 208) = v11;
  *(inited + 216) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
  sub_1C4468200();
  v12 = sub_1C4F00F28();
  sub_1C4468244();
  if ((v13 & 1) == 0)
  {
    sub_1C441141C(objc_allocWithZone(MEMORY[0x1E696AD98]));
    swift_isUniquelyReferenced_nonNull_native();
    sub_1C4417AC4();
    sub_1C44684D4();
    v12 = v17;
  }

  sub_1C44684FC();
  if ((v14 & 1) == 0)
  {
    sub_1C441141C(objc_allocWithZone(MEMORY[0x1E696AD98]));
    swift_isUniquelyReferenced_nonNull_native();
    sub_1C4417AC4();
    sub_1C44684D4();
    v12 = v17;
  }

  if (*(a1 + 24))
  {
    sub_1C4F01108();
    swift_isUniquelyReferenced_nonNull_native();
    sub_1C4417AC4();
    sub_1C44684D4();
    v12 = v17;
  }

  v15 = *(a1 + 34);
  if (v15 != 2)
  {
    [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
    swift_isUniquelyReferenced_nonNull_native();
    sub_1C4417AC4();
    sub_1C44684D4();
    return v17;
  }

  return v12;
}

uint64_t sub_1C4467DFC()
{
  v1 = _s7MetricsO7PayloadVMa(0);
  sub_1C43FBD18(v1);
  v3 = v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return sub_1C4467A44(v3);
}

uint64_t sub_1C4467E58()
{
  v1 = sub_1C4EF9CD8();
  sub_1C43FCDF8();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v8 = sub_1C43FBD18(v7);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v16 - v9;
  v11 = _s7MetricsO7PayloadVMa(0);
  sub_1C4467FE0(v0 + *(v11 + 40), v10);
  v12 = sub_1C44157D4(v10, 1, v1);
  result = 0;
  if (v12 != 1)
  {
    (*(v3 + 32))(v6, v10, v1);
    sub_1C4EF9B78();
    v15 = v14;
    (*(v3 + 8))(v6, v1);
    return v15;
  }

  return result;
}

uint64_t sub_1C4467FE0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1C4468050()
{
  sub_1C43FEC28();
  v4 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v5 = sub_1C43FBD18(v4);
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FBD08();
  sub_1C43FD248();
  MEMORY[0x1EEE9AC00](v6);
  sub_1C441292C();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FBD08();
  sub_1C4422BE4();
  MEMORY[0x1EEE9AC00](v8);
  v9 = sub_1C440B784();
  sub_1C4467FE0(v1 + *(v9 + 52), v2);
  sub_1C440A6F0(v2);
  if (v12)
  {
    v10 = v2;
LABEL_7:
    sub_1C44686E4(v10);
    goto LABEL_8;
  }

  v11 = sub_1C44208C0();
  v3(v11);
  sub_1C4467FE0(v1 + *(v9 + 56), v0);
  sub_1C440A6F0(v0);
  if (v12)
  {
    v13 = sub_1C4405814();
    v14(v13);
    v10 = v0;
    goto LABEL_7;
  }

  v15 = sub_1C4402EE8();
  v3(v15);
  sub_1C4EF9B78();
  v16 = sub_1C44012EC();
  v0(v16);
  v17 = sub_1C4405814();
  v0(v17);
LABEL_8:
  sub_1C44086C4();
}

unint64_t sub_1C4468200()
{
  result = qword_1EDDFCDD0[0];
  if (!qword_1EDDFCDD0[0])
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, qword_1EDDFCDD0);
  }

  return result;
}

void sub_1C4468244()
{
  sub_1C43FEC28();
  v4 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v5 = sub_1C43FBD18(v4);
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FBD08();
  sub_1C43FD248();
  MEMORY[0x1EEE9AC00](v6);
  sub_1C441292C();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FBD08();
  sub_1C4422BE4();
  MEMORY[0x1EEE9AC00](v8);
  v9 = sub_1C440B784();
  sub_1C4467FE0(v1 + *(v9 + 60), v2);
  sub_1C440A6F0(v2);
  if (v12)
  {
    v10 = v2;
LABEL_7:
    sub_1C44686E4(v10);
    goto LABEL_8;
  }

  v11 = sub_1C44208C0();
  v3(v11);
  sub_1C4467FE0(v1 + *(v9 + 64), v0);
  sub_1C440A6F0(v0);
  if (v12)
  {
    v13 = sub_1C4405814();
    v14(v13);
    v10 = v0;
    goto LABEL_7;
  }

  v15 = sub_1C4402EE8();
  v3(v15);
  sub_1C4EF9B78();
  v16 = sub_1C44012EC();
  v0(v16);
  v17 = sub_1C4405814();
  v0(v17);
LABEL_8:
  sub_1C44086C4();
}

void sub_1C44683F4()
{
  sub_1C44158A0();
  sub_1C446060C();
  v4 = sub_1C440DFB8(v2, v3);
  sub_1C445FAA8(v4, v5);
  sub_1C442C5D8();
  if (v6)
  {
    __break(1u);
LABEL_13:
    sub_1C4F029F8();
    __break(1u);
    return;
  }

  sub_1C4423AC0();
  sub_1C4408720();
  v7 = sub_1C4F02458();
  if (v7)
  {
    sub_1C4451290();
    sub_1C4410A40();
    if (!v11)
    {
      goto LABEL_13;
    }
  }

  if (v1)
  {
    sub_1C4440968(v7, v8, v9, v10, *v0);
    sub_1C4410198();
  }

  else
  {
    v14 = sub_1C441E240();
    v15(v14);
    sub_1C4410198();

    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }
}

void sub_1C44684FC()
{
  sub_1C43FEC28();
  v4 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v5 = sub_1C43FBD18(v4);
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FBD08();
  sub_1C43FD248();
  MEMORY[0x1EEE9AC00](v6);
  sub_1C441292C();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FBD08();
  sub_1C4422BE4();
  MEMORY[0x1EEE9AC00](v8);
  v9 = sub_1C440B784();
  sub_1C4467FE0(v1 + *(v9 + 44), v2);
  sub_1C440A6F0(v2);
  if (v12)
  {
    v10 = v2;
LABEL_7:
    sub_1C44686E4(v10);
    goto LABEL_8;
  }

  v11 = sub_1C44208C0();
  v3(v11);
  sub_1C4467FE0(v1 + *(v9 + 48), v0);
  sub_1C440A6F0(v0);
  if (v12)
  {
    v13 = sub_1C4405814();
    v14(v13);
    v10 = v0;
    goto LABEL_7;
  }

  v15 = sub_1C4402EE8();
  v3(v15);
  sub_1C4EF9B78();
  v16 = sub_1C44012EC();
  v0(v16);
  v17 = sub_1C4405814();
  v0(v17);
LABEL_8:
  sub_1C44086C4();
}

void sub_1C44686AC(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = sub_1C440647C(a1, a2, a3, a4, a5);
  *(*(v6 + 56) + 8 * v5) = v7;
  v8 = *(v6 + 16);
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    sub_1C43FEA08(v6, v10);
  }
}

uint64_t sub_1C44686E4(uint64_t a1)
{
  v2 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C446874C(uint64_t a1, uint64_t a2)
{
  v3 = sub_1C4F01108();
  v4 = [v2 valueForEntitlement_];

  if (v4)
  {
    sub_1C4F02078();
    swift_unknownObjectRelease();
  }

  else
  {
    v38 = 0u;
    v39 = 0u;
  }

  v40[0] = v38;
  v40[1] = v39;
  if (*(&v39 + 1))
  {
    if (swift_dynamicCast() && (v37 & 0x100000000000000) != 0)
    {
      if (qword_1EDDFA678 != -1)
      {
        sub_1C43FFCC0(&qword_1EDDFA678);
      }

      v5 = sub_1C4F00978();
      sub_1C442B738(v5, qword_1EDE2DCD8);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v6 = v2;
      v7 = sub_1C4F00968();
      v8 = sub_1C4F01CF8();

      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        v10 = swift_slowAlloc();
        *&v40[0] = v10;
        *(v9 + 4) = sub_1C442CFF4(4.8151e-34, v10, v11, v12, v13, v14, v15, v16, v17, v36, v37, v38, *(&v38 + 1));
        *(v9 + 12) = 1024;
        *(v9 + 14) = [v6 processIdentifier];

        sub_1C4407650(&dword_1C43F8000, v18, v19, "XPC connection for service(%s) from %d");
        sub_1C440962C(v10);
        sub_1C43FBE2C();
        sub_1C43FBE2C();
      }

      else
      {
      }

      return 1;
    }
  }

  else
  {
    sub_1C4448244(v40);
  }

  if (qword_1EDDFA678 != -1)
  {
    sub_1C43FFCC0(&qword_1EDDFA678);
  }

  v20 = sub_1C4F00978();
  sub_1C442B738(v20, qword_1EDE2DCD8);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v21 = v2;
  v22 = sub_1C4F00968();
  v23 = sub_1C4F01CD8();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *&v40[0] = v25;
    *(v24 + 4) = sub_1C442CFF4(4.8151e-34, v25, v26, v27, v28, v29, v30, v31, v32, v36, v37, v38, *(&v38 + 1));
    *(v24 + 12) = 1024;
    *(v24 + 14) = [v21 processIdentifier];

    sub_1C4407650(&dword_1C43F8000, v33, v34, "IntelligencePlatform %s: Rejecting connection from %d: lacking entitlement");
    sub_1C440962C(v25);
    sub_1C43FBE2C();
    sub_1C43FBE2C();
  }

  else
  {
  }

  return 0;
}

uint64_t sub_1C4468A64(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1C445229C;

  return v6(a1);
}

uint64_t sub_1C4468B5C(uint64_t a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v5 = a3;
  v6 = swift_task_alloc();
  v3[4] = v6;
  *v6 = v3;
  v6[1] = sub_1C4999D64;

  return KnowledgeConstructionXPC.Server.runFastpassPipeline(with:)();
}

uint64_t sub_1C4468C14()
{
  sub_1C43FCF70();
  v1 = [objc_opt_self() isInternalDevice];
  *(v0 + 96) = v1;
  if (v1)
  {
    if (qword_1EDDFA678 != -1)
    {
      sub_1C43FFCC0(&qword_1EDDFA678);
    }

    v2 = sub_1C4F00978();
    *(v0 + 64) = sub_1C442B738(v2, qword_1EDE2DCD8);
    v3 = sub_1C4F00968();
    v4 = sub_1C4F01CF8();
    if (sub_1C4402B64(v4))
    {
      v5 = sub_1C43FCED0();
      sub_1C43FBD24(v5);
      sub_1C43FFFD8(&dword_1C43F8000, v6, v7, "KnowledgeConstructionXPC: runFastpassPipeline");
      sub_1C43FE9D4();
    }

    if (qword_1EDDE1A10 != -1)
    {
      sub_1C4407344(&qword_1EDDE1A10);
    }

    v8 = sub_1C442B738(*(v0 + 48), qword_1EDE2CB88);
    sub_1C43FC600(v8);
    v9 = sub_1C43FBC98();
    sub_1C4466EEC(v9, v10);
    v11 = type metadata accessor for Configuration(0);
    result = sub_1C43FD9F0(v11);
    if (v13)
    {
      __break(1u);
    }

    else
    {
      if (qword_1EDDF0AB0 != -1)
      {
        sub_1C4402D88(&qword_1EDDF0AB0);
      }

      *(v0 + 72) = sub_1C4468E90();
      sub_1C4467948(*(v0 + 56));
      v22 = swift_task_alloc();
      *(v0 + 80) = v22;
      *v22 = v0;
      v22[1] = sub_1C49AF7F0;
      v23 = *(v0 + 40);

      return sub_1C4470C88(v23);
    }
  }

  else
  {
    if (qword_1EDDFA678 != -1)
    {
      sub_1C43FFCC0(&qword_1EDDFA678);
    }

    v14 = sub_1C4F00978();
    sub_1C43FCEE8(v14, qword_1EDE2DCD8);
    v15 = sub_1C4F00968();
    v16 = sub_1C4F01CF8();
    if (sub_1C4402B64(v16))
    {
      v17 = sub_1C43FCED0();
      sub_1C43FBD24(v17);
      sub_1C43FFFD8(&dword_1C43F8000, v18, v19, "KnowledgeConstructionXPC: API disabled on customer devices.");
      sub_1C43FE9D4();
    }

    sub_1C43FBCF0();
    v21 = *(v0 + 96);

    return v20(v21);
  }

  return result;
}

uint64_t sub_1C4468E90()
{
  sub_1C43FC784();
  v1 = sub_1C43FDCD8();
  sub_1C4470C6C(v1, v2);
  sub_1C4461D38();
  if (v0)
  {
    return sub_1C440246C();
  }

  if (v4)
  {
    if (qword_1EDDFEC88 != -1)
    {
      sub_1C4410E64(&qword_1EDDFEC88);
    }

    return sub_1C440246C();
  }

  sub_1C443288C();
  result = sub_1C44122F4();
  __break(1u);
  return result;
}

uint64_t sub_1C4468F24(uint64_t *a1, uint64_t a2)
{
  v5 = type metadata accessor for Configuration(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  swift_beginAccess();
  v9 = sub_1C44019F8(a2, *(v8 + 16));
  swift_endAccess();
  if (!v9)
  {
    sub_1C443113C(a2, v7);
    type metadata accessor for Pipeline(0);
    v9 = swift_allocObject();
    sub_1C4AC22D4(v7);
    if (!v2)
    {
      swift_beginAccess();

      swift_isUniquelyReferenced_nonNull_native();
      v12 = *(v8 + 16);
      sub_1C4661A80();
      *(v8 + 16) = v12;
      swift_endAccess();
    }
  }

  return v9;
}

void sub_1C44690B8()
{

  JUMPOUT(0x1C6940010);
}

id sub_1C44690E8(uint64_t a1, uint64_t a2)
{
  sub_1C442B738(a1, a2);

  return v2;
}

uint64_t sub_1C4469110()
{

  return sub_1C449D50C(v0 - 120, 0);
}

uint64_t sub_1C446912C()
{

  return sub_1C4EF9C18();
}

uint64_t sub_1C4469198()
{

  return type metadata accessor for Configuration(0);
}

void *sub_1C44691B8(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{

  return sub_1C4D2C7B8(a1, a2, v4, a4);
}

uint64_t sub_1C4469224()
{
}

uint64_t sub_1C4469240(uint64_t a1)
{

  return sub_1C4F00DB8();
}

uint64_t sub_1C446927C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return swift_getAssociatedConformanceWitness();
}

uint64_t sub_1C44692E0()
{
  v0[53] = v1;
  v0[54] = v4;
  v0[50] = v2;

  return sub_1C442E860(v3 + 128, (v0 + 44));
}

void sub_1C4469320()
{

  sub_1C4C75EF8();
}

id sub_1C446934C(id a1, SEL a2)
{

  return [a1 a2];
}

void sub_1C4469374(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x16u);
}

uint64_t sub_1C4469394()
{

  return sub_1C4F02938();
}

uint64_t sub_1C4469448@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v49 = a5;
  v54 = a4;
  v52 = a6;
  v53 = a3;
  v51 = a7;
  v9 = sub_1C456902C(&qword_1EC0BC660, &qword_1C4F29150);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v46 - v10;
  v12 = type metadata accessor for Pipeline.StatusStore(0);
  v50 = *(v12 - 8);
  v13 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v12);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v46 - v15;
  v17 = *a1;
  v18 = OBJC_IVAR____TtC24IntelligencePlatformCore8Pipeline_config;
  v19 = v56;
  result = sub_1C446DE28(a2 + OBJC_IVAR____TtC24IntelligencePlatformCore8Pipeline_config);
  if (!v19)
  {
    v46[1] = v13;
    v47 = v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    v56 = v17;
    v48 = v11;
    v21 = v52;
    sub_1C443113C(a2 + v18, v16);
    v23 = v53;
    v22 = v54;
    v16[*(v12 + 20)] = v53;
    sub_1C446A728(v16, v22);
    if (qword_1EDDFD028 != -1)
    {
      swift_once();
    }

    v24 = sub_1C4F00978();
    sub_1C442B738(v24, qword_1EDE2DE10);
    v25 = sub_1C4F00968();
    v26 = sub_1C4F01CF8();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_1C43F8000, v25, v26, "Pipeline: run starting.", v27, 2u);
      MEMORY[0x1C6942830](v27, -1, -1);
    }

    v28 = [objc_opt_self() defaultCenter];
    v29 = *MEMORY[0x1E69A9F50];
    sub_1C456902C(&qword_1EC0C2DE8, &unk_1C4F4E048);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C4F0D130;
    strcpy(v55, "pipelineType");
    HIBYTE(v55[6]) = 0;
    v55[7] = -5120;
    v31 = v29;
    v32 = MEMORY[0x1E69E6158];
    sub_1C4F02198();
    v33 = 0xE700000000000000;
    v34 = 0x6E776F6E6B6E75;
    switch(v23)
    {
      case 1:
        v33 = 0xE400000000000000;
        v34 = 1819047270;
        break;
      case 2:
        v33 = 0xE500000000000000;
        v34 = 0x61746C6564;
        break;
      case 3:
        v33 = 0xEA0000000000676ELL;
        v34 = 0x69686374614D6F74;
        break;
      default:
        break;
    }

    *(inited + 96) = v32;
    *(inited + 72) = v34;
    *(inited + 80) = v33;
    v35 = sub_1C4F00F28();
    sub_1C446C7A4(v31, 0, v35, v28);

    v36 = v56;
    *(v56 + 24) = v23;
    MEMORY[0x1EEE9AC00](v37);
    v46[-2] = v16;
    LOBYTE(v46[-1]) = v23;
    sub_1C446C840(0, 0, sub_1C446F14C);
    v38 = v48;
    sub_1C4F01898();
    v39 = sub_1C4F018C8();
    sub_1C440BAA8(v38, 0, 1, v39);
    v40 = v47;
    sub_1C443113C(v16, v47);
    v41 = (*(v50 + 80) + 64) & ~*(v50 + 80);
    v42 = swift_allocObject();
    v42[2] = 0;
    v42[3] = 0;
    v43 = v54;
    v42[4] = a2;
    v42[5] = v43;
    v42[6] = v49;
    v42[7] = v21;
    sub_1C44760B0(v40, v42 + v41);

    sub_1C4AC1B58();
    v45 = v44;
    sub_1C446F170(v38, &qword_1EC0BC660, &qword_1C4F29150);
    *(v36 + 32) = v45;

    *v51 = *(v36 + 32);

    return sub_1C4454270();
  }

  return result;
}

uint64_t sub_1C44699EC()
{
  v1 = type metadata accessor for Pipeline.StatusStore(0);
  sub_1C43FCF7C(v1);
  v3 = *(v2 + 80);
  swift_unknownObjectRelease();

  sub_1C4EF98F8();
  sub_1C43FD3F8();
  (*(v4 + 8))(v0 + ((v3 + 64) & ~v3));
  v5 = sub_1C445BFD0();

  return MEMORY[0x1EEE6BDD0](v5, v6, v7);
}

uint64_t sub_1C4469AB4(uint64_t a1, unsigned int a2)
{
  v3 = v2;
  v53 = a2;
  sub_1C4F00A58();
  sub_1C43FCDF8();
  v51 = v6;
  v52 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1C4EF98F8();
  sub_1C43FCDF8();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  v49 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v46 - v15;
  if (qword_1EDDFECB0 != -1)
  {
    sub_1C44064A8();
    swift_once();
  }

  v50 = v8;
  v17 = sub_1C4F00978();
  sub_1C442B738(v17, qword_1EDDFECB8);
  v18 = sub_1C4F00968();
  v19 = sub_1C4F01CB8();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v48 = v9;
    v21 = v20;
    v22 = swift_slowAlloc();
    v46 = v2;
    v23 = v22;
    v54[0] = v22;
    *v21 = 136315138;
    v24 = sub_1C446A060(v53);
    v47 = a1;
    v26 = sub_1C441D828(v24, v25, v54);
    a1 = v47;

    *(v21 + 4) = v26;
    _os_log_impl(&dword_1C43F8000, v18, v19, "%s: tryLock called.", v21, 0xCu);
    sub_1C440962C(v23);
    v3 = v46;
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
    v9 = v48;
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  (*(v11 + 16))(v16, a1, v9);
  v27 = v49;
  sub_1C446E1BC();
  v28 = sub_1C4EF98E8();
  v30 = v29;
  v31 = *(v11 + 8);
  v31(v27, v9);
  v32 = v50;
  v33 = MEMORY[0x1C693F750](v28, v30);
  v34 = &v46;
  MEMORY[0x1EEE9AC00](v33);
  sub_1C4F00A48();
  if (v3)
  {
    (*(v51 + 8))(v32, v52);
    goto LABEL_9;
  }

  (*(v51 + 8))(v32, v52);
  v35 = LODWORD(v54[0]);
  v36 = flock(v54[0], 6);
  LOBYTE(v34) = v36 == 0;
  if (!v36)
  {
    type metadata accessor for InterprocessLockDescriptors(0);
    sub_1C446E3AC(a1, v53, v35);
    goto LABEL_9;
  }

  v37 = sub_1C4999FA0();
  if (MEMORY[0x1C693F6A0](v37) == 35)
  {
LABEL_9:
    v31(v16, v9);
    return v34 & 1;
  }

  sub_1C440E49C();
  v39 = sub_1C446A060(v53);
  v41 = v40;

  v54[0] = v39;
  v54[1] = v41;
  v42 = sub_1C441FDAC();
  MEMORY[0x1C6940010](v42);
  sub_1C44266D0();
  v43 = sub_1C4F02858();
  MEMORY[0x1C6940010](v43);

  sub_1C43FE984();
  v44 = MEMORY[0x1C6940010](0xD000000000000022);
  LODWORD(v55) = MEMORY[0x1C693F6A0](v44);
  v45 = sub_1C4F02858();
  MEMORY[0x1C6940010](v45);

  sub_1C44072D4();
  result = sub_1C4F024A8();
  __break(1u);
  return result;
}

unint64_t sub_1C446A060(char a1)
{
  sub_1C4F02248();

  v2 = 0xED00006D65747379;
  v3 = sub_1C4400720() & 0xFFFFFFFFFFFFLL | 0x5365000000000000;
  switch(a1)
  {
    case 1:
      v2 = 0xE800000000000000;
      v3 = sub_1C43FD3B0();
      break;
    case 2:
      v2 = 0xED00006E6F697461;
      v3 = sub_1C4432574();
      break;
    case 3:
      v2 = 0xEE0070756E61656CLL;
      v3 = sub_1C4400720() & 0xFFFFFFFFFFFFLL | 0x4365000000000000;
      break;
    default:
      break;
  }

  MEMORY[0x1C6940010](v3, v2);

  MEMORY[0x1C6940010](62, 0xE100000000000000);
  return 0xD000000000000012;
}

uint64_t sub_1C446A178()
{
  sub_1C43FC784();
  v1 = sub_1C43FDCD8();
  sub_1C446A288(v1, v2);
  sub_1C4461D38();
  if (v0)
  {
    return sub_1C440246C();
  }

  if (v4)
  {
    if (qword_1EDDFEC88 != -1)
    {
      sub_1C4410E64(&qword_1EDDFEC88);
    }

    return sub_1C440246C();
  }

  sub_1C443288C();
  result = sub_1C44122F4();
  __break(1u);
  return result;
}

uint64_t sub_1C446A20C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_1C43FE424(a1, a2, sub_1C44019F8, type metadata accessor for InterprocessLockDescriptors, sub_1C499A74C, sub_1C46626FC);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

void sub_1C446A2A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1C442F0C4();
  sub_1C4424FA4();
  v14 = v13;
  sub_1C446A3F0(v15);
  sub_1C442C5D8();
  if (v16)
  {
    __break(1u);
LABEL_12:
    sub_1C4F029F8();
    __break(1u);
    return;
  }

  sub_1C44690DC();
  v17 = sub_1C456902C(&qword_1EC0BA888, &qword_1C4F14780);
  if (sub_1C440D17C(v17))
  {
    v18 = sub_1C440C3B4();
    sub_1C446A3F0(v18);
    sub_1C43FED0C();
    if (!v20)
    {
      goto LABEL_12;
    }

    v12 = v19;
  }

  if (v11)
  {
    *(*(*v10 + 56) + 4 * v12) = v14;
    sub_1C4422220();
  }

  else
  {
    sub_1C4422220();

    sub_1C457E55C(v21, v22, v23, v24);
  }
}

uint64_t sub_1C446A378(uint64_t a1, uint64_t (*a2)(_BYTE *, uint64_t), uint64_t (*a3)(uint64_t, uint64_t))
{
  sub_1C443309C(a1);
  a2(v8, a1);
  v5 = sub_1C4F02B68();

  return a3(a1, v5);
}

uint64_t sub_1C446A41C(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 1:
      sub_1C443FB80();
      break;
    case 2:
      sub_1C4410238();
      break;
    default:
      break;
  }

  sub_1C4F01298();
}

unint64_t sub_1C446A4F0(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xED00006D65747379;
      v8 = 0x53656761726F7473;
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v7 = 0xE800000000000000;
          v8 = 0x656E696C65706970;
          break;
        case 2:
          v8 = 0x7267694D77656976;
          v7 = 0xED00006E6F697461;
          break;
        case 3:
          v8 = 0x43656761726F7473;
          v7 = 0xEE0070756E61656CLL;
          break;
        default:
          break;
      }

      v9 = 0x53656761726F7473;
      v10 = 0xED00006D65747379;
      switch(a1)
      {
        case 1:
          v10 = 0xE800000000000000;
          v9 = 0x656E696C65706970;
          break;
        case 2:
          v9 = 0x7267694D77656976;
          v10 = 0xED00006E6F697461;
          break;
        case 3:
          v9 = 0x43656761726F7473;
          v10 = 0xEE0070756E61656CLL;
          break;
        default:
          break;
      }

      if (v8 == v9 && v7 == v10)
      {
        break;
      }

      v12 = sub_1C4F02938();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

uint64_t sub_1C446A728(uint64_t a1, uint64_t i)
{
  v4 = v3;
  v7 = *v2;
  if (Pipeline.StatusStore.currentSessionId()().value._object)
  {

    v8 = sub_1C4AD2440(10);
    v9 = sub_1C4AD2518();
    if ((v8 & 1) != 0 && (v9 & 1) == 0)
    {
      if (qword_1EDDFD028 != -1)
      {
        goto LABEL_21;
      }

      while (1)
      {
        v10 = sub_1C4F00978();
        sub_1C442B738(v10, qword_1EDE2DE10);
        v11 = sub_1C4F00968();
        v12 = sub_1C4F01CD8();
        v13 = os_log_type_enabled(v11, v12);
        v35 = v7;
        if (v13)
        {
          v14 = swift_slowAlloc();
          v31 = i;
          v32[0] = swift_slowAlloc();
          v15 = v32[0];
          *v14 = 136315138;
          v16 = sub_1C46655C4(v7);
          v7 = sub_1C441D828(v16, v17, v32);

          *(v14 + 4) = v7;
          _os_log_impl(&dword_1C43F8000, v11, v12, "%s pipeline failure: Tried too many times for current session", v14, 0xCu);
          sub_1C440962C(v15);
          v18 = v15;
          i = v31;
          MEMORY[0x1C6942830](v18, -1, -1);
          MEMORY[0x1C6942830](v14, -1, -1);
        }

        sub_1C4461BB8(0, &qword_1EDDFE900, 0x1E695E000);
        if ((static NSUserDefaults.testTelemetry.getter() & 1) != 0 || i != 1)
        {
          sub_1C4AD1484();
        }

        if (sub_1C4AD2654())
        {
          break;
        }

        v19 = sub_1C4F00968();
        v20 = sub_1C4F01CF8();
        if (os_log_type_enabled(v19, v20))
        {
          v7 = swift_slowAlloc();
          v21 = swift_slowAlloc();
          v32[0] = v21;
          *v7 = 136315138;
          v22 = sub_1C46655C4(v35);
          v24 = sub_1C441D828(v22, v23, v32);

          *(v7 + 4) = v24;
          _os_log_impl(&dword_1C43F8000, v19, v20, "%s reset intermediate data", v7, 0xCu);
          sub_1C440962C(v21);
          MEMORY[0x1C6942830](v21, -1, -1);
          MEMORY[0x1C6942830](v7, -1, -1);
        }

        LOBYTE(v32[0]) = *(a1 + *(type metadata accessor for Pipeline.StatusStore(0) + 20));
        sub_1C4AC3480(v32);
        type metadata accessor for PhaseStores(0);
        sub_1C4873648();
        if (v4)
        {
          break;
        }

        sub_1C446ABD0(0);
        v4 = 0;
        v25 = sub_1C4AC37B4();
        v26 = 0;
        v27 = *(v25 + 16);
        for (i = v25 + 32; ; i += 40)
        {
          if (v27 == v26)
          {

            return sub_1C446B930();
          }

          if (v26 >= *(v25 + 16))
          {
            break;
          }

          sub_1C448BD48(i, v32);
          v7 = v33;
          v28 = v34;
          v29 = sub_1C4409678(v32, v33);
          sub_1C446F2A0(v29, 0, 0, v7, v28);
          ++v26;
          sub_1C440962C(v32);
        }

        __break(1u);
LABEL_21:
        swift_once();
      }
    }
  }

  return sub_1C446B930();
}

Swift::String_optional __swiftcall Pipeline.StatusStore.currentSessionId()()
{
  if (qword_1EDDF7AC0 != -1)
  {
    swift_once();
  }

  sub_1C442013C();
  if (v0)
  {

    v1 = 0;
    v2 = 0;
  }

  else
  {
    sub_1C44078DC();
    v1 = sub_1C446B0A0();
    v2 = v5;
  }

  v3 = v1;
  v4 = v2;
  result.value._object = v4;
  result.value._countAndFlagsBits = v3;
  return result;
}

void *sub_1C446ABD0(uint64_t a1)
{
  v2 = a1;
  v3 = type metadata accessor for Configuration(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  sub_1C43FBCC4();
  v6 = v5 - v4;
  sub_1C44098F0(v1, v5 - v4);
  v11 = *(v1 + *(type metadata accessor for Pipeline.StatusStore(0) + 20));
  v7 = sub_1C446ACA4(&v11, v2);
  v9 = v8;
  type metadata accessor for KeyValueStore(0);
  swift_allocObject();
  return KeyValueStore.init(config:domain:)(v6, v7, v9);
}

unint64_t sub_1C446ACA4(unsigned __int8 *a1, char a2)
{
  v2 = *a1;
  v3 = 0xE700000000000000;
  v4 = 0x6E776F6E6B6E75;
  switch(v2)
  {
    case 1:
      v3 = 0xE400000000000000;
      v4 = 1819047270;
      break;
    case 2:
      v3 = 0xE500000000000000;
      v4 = 0x61746C6564;
      break;
    case 3:
      v3 = 0xEA0000000000676ELL;
      v4 = 0x69686374614D6F74;
      break;
    default:
      break;
  }

  MEMORY[0x1C6940010](v4, v3);

  if (a2)
  {
    v6 = 0x756F69766572702ELL;
  }

  else
  {
    v6 = 0x746E65727275632ELL;
  }

  if (a2)
  {
    v7 = 0xE900000000000073;
  }

  else
  {
    v7 = 0xE800000000000000;
  }

  MEMORY[0x1C6940010](v6, v7);

  return 0xD000000000000010;
}

void *KeyValueStore.init(config:domain:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  v7 = OBJC_IVAR____TtC24IntelligencePlatformCore13KeyValueStore_config;
  sub_1C44098F0(a1, v3 + OBJC_IVAR____TtC24IntelligencePlatformCore13KeyValueStore_config);
  if (qword_1EDDFF230 != -1)
  {
    swift_once();
  }

  v8 = sub_1C446B00C();
  if (v4)
  {
    sub_1C4467948(a1);

    sub_1C4467948(v3 + v7);
    swift_deallocPartialClassInstance();
  }

  else
  {
    *(v3 + OBJC_IVAR____TtC24IntelligencePlatformCore13KeyValueStore_db) = v8;
    sub_1C4EF96F8();
    swift_allocObject();
    *(v3 + OBJC_IVAR____TtC24IntelligencePlatformCore13KeyValueStore_encoder) = sub_1C4EF96E8();

    sub_1C4EF96C8();

    sub_1C4EF96B8();
    swift_allocObject();
    v9 = sub_1C4EF96A8();
    sub_1C4467948(a1);
    *(v5 + OBJC_IVAR____TtC24IntelligencePlatformCore13KeyValueStore_decoder) = v9;
  }

  return v5;
}

uint64_t sub_1C446AF74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_1C43FE424(a1, a2, sub_1C44019F8, type metadata accessor for KeyValueDatabase, sub_1C44FB3DC, sub_1C44FBF54);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_1C446B00C()
{
  sub_1C43FC784();
  v1 = sub_1C43FDCD8();
  sub_1C446AFF0(v1, v2);
  sub_1C4461D38();
  if (v0)
  {
    return sub_1C440246C();
  }

  if (v4)
  {
    if (qword_1EDDFEC88 != -1)
    {
      sub_1C4410E64(&qword_1EDDFEC88);
    }

    return sub_1C440246C();
  }

  sub_1C443288C();
  result = sub_1C44122F4();
  __break(1u);
  return result;
}

uint64_t sub_1C446B0A0()
{
  sub_1C441C090();

  v0 = sub_1C440CABC();
  sub_1C443ABE4(v0, v1, v2, v3, v4, v5, v6, v7, v11, v12);
  v9 = v8;

  return v9;
}

void (*sub_1C446B134@<X0>(void (**a1)(char *, uint64_t)@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>))(char *, uint64_t)
{
  result = sub_1C446B17C(a2, a3, a4, a5);
  if (!v5)
  {
    *a1 = result;
    a1[1] = v8;
  }

  return result;
}

void (*sub_1C446B1A8(uint64_t a1, uint64_t a2, uint64_t a3))(char *, uint64_t)
{
  v48 = a3;
  v31 = a2;
  v30[1] = a1;
  v4 = sub_1C456902C(&qword_1EC0B8EB0, &unk_1C4F0E910);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v30 - v9;
  if (qword_1EDDFE0F8 != -1)
  {
    swift_once();
  }

  v11 = sub_1C4EFBD38();
  v12 = sub_1C442B738(v11, qword_1EDE2E068);
  v37 = v11;
  v38 = MEMORY[0x1E69A0050];
  v13 = sub_1C4422F90(v36);
  v14 = *(*(v11 - 8) + 16);
  v14(v13, v12, v11);
  v30[0] = v3;
  v15 = *(v3 + 16);
  v16 = *(v3 + 24);
  v34 = MEMORY[0x1E69E6158];
  v35 = MEMORY[0x1E69A0130];
  v32 = v15;
  v33 = v16;
  v17 = sub_1C4EFB298();
  v40 = v17;
  v41 = MEMORY[0x1E699FE60];
  sub_1C4422F90(v39);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EFBB28();
  sub_1C4420C3C(&v32, &qword_1EC0C5040, &qword_1C4F0F950);
  sub_1C440962C(v36);
  sub_1C446B728();
  sub_1C4EFAE28();
  sub_1C440962C(v39);
  if (qword_1EDDFE100 != -1)
  {
    swift_once();
  }

  v18 = sub_1C442B738(v11, qword_1EDE2DF28);
  v37 = v11;
  v38 = MEMORY[0x1E69A0050];
  v19 = sub_1C4422F90(v36);
  v14(v19, v18, v11);
  v34 = MEMORY[0x1E69E6158];
  v35 = MEMORY[0x1E69A0130];
  v32 = v31;
  v33 = v48;
  v40 = v17;
  v41 = MEMORY[0x1E699FE60];
  sub_1C4422F90(v39);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EFBB28();
  sub_1C4420C3C(&v32, &qword_1EC0C5040, &qword_1C4F0F950);
  sub_1C440962C(v36);
  sub_1C4401CBC(&qword_1EDDFE858, &qword_1EC0B8EB0, &unk_1C4F0E910, MEMORY[0x1E699FF70]);
  sub_1C4EFB438();
  v20 = *(v5 + 8);
  v20(v7, v4);
  sub_1C440962C(v39);
  sub_1C4401CBC(&unk_1EDDFE860, &qword_1EC0B8EB0, &unk_1C4F0E910, MEMORY[0x1E699FF60]);
  sub_1C446B794();
  v21 = v30[2];
  sub_1C4EFAFF8();
  v20(v10, v4);
  if (v21)
  {
    return v20;
  }

  v23 = v43;
  if (!v43)
  {
    return 0;
  }

  v24 = v42;
  v25 = v44;
  v26 = v45;
  v27 = v46;
  v28 = v47;
  sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
  sub_1C45A2A18();
  sub_1C4EF9698();
  if (*(v42 + 16))
  {
    v29 = v25;
    v20 = *(v42 + 32);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4470E30(v24, v23, v29, v26, v27, v28);

    return v20;
  }

  v42 = 0;
  v43 = 0xE000000000000000;
  sub_1C4F02248();

  v42 = 0xD00000000000002FLL;
  v43 = 0x80000001C4F8A7E0;
  MEMORY[0x1C6940010](v31, v48);
  result = sub_1C4F024A8();
  __break(1u);
  return result;
}

unint64_t sub_1C446B728()
{
  result = qword_1EDDFE0E8;
  if (!qword_1EDDFE0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFE0E8);
  }

  return result;
}

unint64_t sub_1C446B794()
{
  result = qword_1EDDFE0D8;
  if (!qword_1EDDFE0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFE0D8);
  }

  return result;
}

uint64_t sub_1C446B7EC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C446B838(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t KeyValueStore.__deallocating_deinit()
{
  KeyValueStore.deinit();

  return swift_deallocClassInstance();
}

uint64_t KeyValueStore.deinit()
{

  sub_1C4467948(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore13KeyValueStore_config);

  return v0;
}

uint64_t sub_1C446B930()
{
  if (qword_1EDDF7BC0 != -1)
  {
    swift_once();
  }

  sub_1C446ABD0(0);
  sub_1C446BA18();
}

uint64_t sub_1C446BA18()
{
  sub_1C440D848();
  v2 = *(v1 + 24);
  if (v2)
  {
    v3 = *(v1 + 32);

    sub_1C4433DE4();
    sub_1C442604C();
    v2(v4);
    v5 = sub_1C441E6D0();
    return sub_1C44239FC(v5, v3);
  }

  else
  {
    if (v0)
    {
      sub_1C444B2B4();
      sub_1C441CBA4();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C443F350();
    }

    else
    {
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    }

    sub_1C441C09C();
    sub_1C446BAF0();
    sub_1C441E6D0();
  }
}

void sub_1C446BAF0()
{
  sub_1C4413F18();
  sub_1C440BDEC();
  v2 = v1;
  sub_1C456902C(&qword_1EC0BFE48, &qword_1C4F3DD88);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1C4F0D130;
  *(v3 + 32) = v2;
  sub_1C456902C(&qword_1EC0B9238, &qword_1C4F3DD90);
  v4 = sub_1C496D600();
  sub_1C4425D04(v4);
  sub_1C4410EA4();

  if (!v0)
  {
    sub_1C4409E00();
    MEMORY[0x1EEE9AC00](v5);
    sub_1C43FDA14();
    sub_1C4435934();
    v6 = sub_1C4404044();
    sub_1C4434000(v6, v7);
  }

  sub_1C441C2B4();
  sub_1C44102DC();
}

uint64_t sub_1C446BC24()
{
  *(v0 - 88) = 1;

  return sub_1C4EF9CD8();
}

uint64_t sub_1C446BC6C()
{

  return sub_1C4F02248();
}

uint64_t sub_1C446BC90()
{
  v2 = *(v0 - 344);
  v3 = *(v0 - 352);

  return sub_1C44239FC(v2, v3);
}

uint64_t sub_1C446BCBC()
{

  return type metadata accessor for Configuration(0);
}

uint64_t sub_1C446BCDC(uint64_t a1)
{
  *(v2 - 576) = v1;

  return sub_1C4F02858();
}

uint64_t sub_1C446BD00(uint64_t a1)
{

  return sub_1C4EFB448();
}

uint64_t sub_1C446BD4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_unownedRetain();
}

uint64_t sub_1C446BDB0()
{

  return sub_1C4EFEEF8();
}

void sub_1C446BE3C()
{

  JUMPOUT(0x1C6940010);
}

id sub_1C446BE6C(id a1)
{

  return a1;
}

uint64_t sub_1C446BE8C(uint64_t a1)
{

  return sub_1C4F01298();
}

uint64_t sub_1C446BEA4()
{

  return sub_1C44FEF34(v0 - 120, 1);
}

uint64_t sub_1C446BEC0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 - 256) = a6;
  *(v6 - 248) = a5;
  *(v6 - 72) = a4;
  *(v6 - 224) = result;
  *(v6 - 216) = a3;
  return result;
}

uint64_t sub_1C446BF24(uint64_t a1)
{
  type metadata accessor for HUTenPointContext(a1);

  return swift_isUniquelyReferenced_nonNull_native();
}

void *sub_1C446BF80(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{

  return sub_1C4D2C7B8(a1, a2, a3, a4);
}

uint64_t sub_1C446BF9C(uint64_t a1)
{
  type metadata accessor for LongitudinalEventData(a1);

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t sub_1C446BFD8()
{

  return sub_1C4EF9138();
}

void *sub_1C446BFF0(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  result[10] = v20;
  result[11] = a11;
  result[12] = a12;
  result[13] = a13;
  result[14] = a14;
  result[15] = a15;
  result[16] = a16;
  result[17] = a17;
  result[18] = a18;
  result[19] = a19;
  result[20] = a20;
  return result;
}

uint64_t sub_1C446C02C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  v15 = *(v13 + 56) + 32 * a1;

  return sub_1C442B870(v15, va);
}

uint64_t sub_1C446C048(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return swift_getAssociatedConformanceWitness();
}

uint64_t sub_1C446C080(uint64_t result, uint64_t a2)
{
  *(v2 + 440) = result;
  *(v2 + 448) = a2;
  return result;
}

void sub_1C446C0B8()
{

  JUMPOUT(0x1C6940010);
}

void sub_1C446C0D0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

void sub_1C446C0F0()
{
  *(v1 - 120) = 0x46204554454C4544;
  *(v1 - 112) = v0;

  JUMPOUT(0x1C6940010);
}

uint64_t sub_1C446C11C(uint64_t a1)
{

  return sub_1C446F170(a1, v1, v2);
}

id sub_1C446C140(uint64_t a1)
{
  *(v2 + 4) = a1;
  *(v2 + 12) = 2112;

  return v1;
}

uint64_t sub_1C446C160()
{

  return sub_1C4F02938();
}

uint64_t sub_1C446C24C(uint64_t a1, uint64_t a2)
{

  return sub_1C4F026C8();
}

unint64_t sub_1C446C2FC()
{
  result = qword_1EDDF7B70;
  if (!qword_1EDDF7B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF7B70);
  }

  return result;
}

unint64_t sub_1C446C350@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1C446E4BC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1C446C3EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C44344B8(a5, a6);
  sub_1C446C4A0();
  sub_1C4EFB6C8();

  return sub_1C4434000(a5, a6);
}

unint64_t sub_1C446C4A0()
{
  result = qword_1EDDFC188;
  if (!qword_1EDDFC188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFC188);
  }

  return result;
}

uint64_t sub_1C446C4F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C446C548();

  return MEMORY[0x1EEE096E8](a1, a2, a3, v6);
}

unint64_t sub_1C446C548()
{
  result = qword_1EDDFE0D0;
  if (!qword_1EDDFE0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFE0D0);
  }

  return result;
}

uint64_t sub_1C446C59C(void *a1)
{
  v3 = v1;
  v5 = sub_1C456902C(&qword_1EC0C09F0, &qword_1C4F3FDB8);
  sub_1C43FCDF8();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v17[-v9 - 8];
  sub_1C4409678(a1, a1[3]);
  sub_1C446C744();
  sub_1C4F02BF8();
  v11 = *v3;
  v12 = *(v3 + 8);
  LOBYTE(v18) = 0;
  sub_1C441FBD0(v11, v12);
  if (!v2)
  {
    v13 = *(v3 + 16);
    v14 = *(v3 + 24);
    LOBYTE(v18) = 1;
    sub_1C441FBD0(v13, v14);
    v18 = *(v3 + 32);
    v19 = v18;
    v17[23] = 2;
    sub_1C446E59C(&v19, v17);
    sub_1C446E5F8();
    sub_1C4F027E8();
    sub_1C4434000(v18, *(&v18 + 1));
  }

  return (*(v7 + 8))(v10, v5);
}

unint64_t sub_1C446C744()
{
  result = qword_1EDDFE118;
  if (!qword_1EDDFE118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFE118);
  }

  return result;
}

void sub_1C446C7A4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = sub_1C4F00EC8();

  [a4 postNotificationName:a1 object:a2 userInfo:v7];
}

uint64_t sub_1C446C840(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  result = sub_1C446ABD0(0);
  if (!v3)
  {
    v18 = a1;
    result = a3();
    v8 = result;
    v9 = 0;
    v10 = *(result + 16);
    for (i = result + 32; ; i += 40)
    {
      if (v10 == v9)
      {
      }

      if (v9 >= *(v8 + 16))
      {
        break;
      }

      sub_1C442E860(i, v15);
      v12 = v16;
      v13 = v17;
      v14 = sub_1C4409678(v15, v16);
      sub_1C446F2A0(v14, v18, a2, v12, v13);
      ++v9;
      result = sub_1C440962C(v15);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1C446C964(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_1C456902C(a3, a4);
  sub_1C43FBCE0();
  v5 = sub_1C43FBC98();
  v6(v5);
  return a2;
}

uint64_t sub_1C446C9C0(uint64_t *a1, uint64_t *a2)
{
  sub_1C456902C(a1, a2);
  swift_arrayDestroy();
  sub_1C4406518();

  return swift_deallocClassInstance();
}

void sub_1C446CA08(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v59 = a3;
  v42 = a2;
  v40 = a1;
  v38 = a4;
  v5 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v37 = &v37 - v6;
  v7 = sub_1C456902C(&qword_1EC0B8EB0, &unk_1C4F0E910);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v37 - v12;
  if (qword_1EDDFE0F8 != -1)
  {
    swift_once();
  }

  v14 = sub_1C4EFBD38();
  v15 = sub_1C442B738(v14, qword_1EDE2E068);
  v48 = v14;
  v49 = MEMORY[0x1E69A0050];
  v16 = sub_1C4422F90(v47);
  v17 = *(*(v14 - 8) + 16);
  v17(v16, v15, v14);
  v39 = v4;
  v18 = *(v4 + 16);
  v19 = *(v4 + 24);
  v45 = MEMORY[0x1E69E6158];
  v46 = MEMORY[0x1E69A0130];
  v43 = v18;
  v44 = v19;
  v20 = sub_1C4EFB298();
  v51 = v20;
  v52 = MEMORY[0x1E699FE60];
  sub_1C4422F90(v50);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EFBB28();
  sub_1C4420C3C(&v43, &qword_1EC0C5040, &qword_1C4F0F950);
  sub_1C440962C(v47);
  sub_1C446B728();
  sub_1C4EFAE28();
  sub_1C440962C(v50);
  if (qword_1EDDFE100 != -1)
  {
    swift_once();
  }

  v21 = sub_1C442B738(v14, qword_1EDE2DF28);
  v48 = v14;
  v49 = MEMORY[0x1E69A0050];
  v22 = sub_1C4422F90(v47);
  v17(v22, v21, v14);
  v45 = MEMORY[0x1E69E6158];
  v46 = MEMORY[0x1E69A0130];
  v43 = v42;
  v44 = v59;
  v51 = v20;
  v52 = MEMORY[0x1E699FE60];
  sub_1C4422F90(v50);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EFBB28();
  sub_1C4420C3C(&v43, &qword_1EC0C5040, &qword_1C4F0F950);
  sub_1C440962C(v47);
  sub_1C4401CBC(&qword_1EDDFE858, &qword_1EC0B8EB0, &unk_1C4F0E910, MEMORY[0x1E699FF70]);
  sub_1C4EFB438();
  v23 = *(v8 + 8);
  v23(v10, v7);
  sub_1C440962C(v50);
  sub_1C4401CBC(&unk_1EDDFE860, &qword_1EC0B8EB0, &unk_1C4F0E910, MEMORY[0x1E699FF60]);
  sub_1C446B794();
  v24 = v41;
  sub_1C4EFAFF8();
  v23(v13, v7);
  if (!v24)
  {
    v25 = v54;
    if (v54)
    {
      v26 = v53;
      v28 = v55;
      v27 = v56;
      v29 = v57;
      v30 = v58;
      sub_1C456902C(&qword_1EC0B90E8, &qword_1C4F3DCF0);
      sub_1C4470054();
      sub_1C4EF9698();
      v41 = v28;
      v34 = v37;
      sub_1C446D094(v53, v37);
      v35 = sub_1C4EF9CD8();
      if (sub_1C44157D4(v34, 1, v35) == 1)
      {
        sub_1C4420C3C(v34, &unk_1EC0B84E0, qword_1C4F0D2D0);
        v53 = 0;
        v54 = 0xE000000000000000;
        sub_1C4F02248();

        v53 = 0xD00000000000002FLL;
        v54 = 0x80000001C4F8A7E0;
        MEMORY[0x1C6940010](v42, v59);
        sub_1C4F024A8();
        __break(1u);
        return;
      }

      sub_1C4470E30(v26, v25, v41, v27, v29, v30);
      v36 = v38;
      (*(*(v35 - 8) + 32))(v38, v34, v35);
      v32 = v36;
      v33 = 0;
      v31 = v35;
    }

    else
    {
      v31 = sub_1C4EF9CD8();
      v32 = v38;
      v33 = 1;
    }

    sub_1C440BAA8(v32, v33, 1, v31);
  }
}

__n128 sub_1C446D080(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_1C446D0AC(uint64_t a1, uint64_t a2)
{
  if (swift_isClassType())
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_1C446D0DC()
{
  result = qword_1EDDE7330;
  if (!qword_1EDDE7330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDE7330);
  }

  return result;
}

uint64_t sub_1C446D134(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0BC660, &qword_1C4F29150);
  sub_1C43FBD18(v4);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v12 - v6;
  v8 = sub_1C4F018C8();
  sub_1C440BAA8(v7, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = a1;
  v9[5] = a2;
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = &unk_1C4F6DB50;
  v10[5] = v9;
  sub_1C4D277B8(0, 0, v7, &unk_1C4F6DB60, v10);
}

uint64_t sub_1C446D244(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_1C442E8C4;

  return v7();
}

uint64_t sub_1C446D32C(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 712) = v4;
  *(v5 + 704) = a4;
  *(v5 + 696) = a3;
  *(v5 + 688) = a1;
  v7 = sub_1C4F01828();
  *(v5 + 720) = v7;
  *(v5 + 728) = *(v7 - 8);
  *(v5 + 736) = swift_task_alloc();
  *(v5 + 744) = swift_task_alloc();
  *(v5 + 578) = *a2;

  return MEMORY[0x1EEE6DFA0](sub_1C446D410, 0, 0);
}

uint64_t sub_1C446D410()
{
  v74 = v0;
  sub_1C4461BB8(0, &qword_1EDDFE900, 0x1E695E000);
  if (static NSUserDefaults.isGraphStoreManuallyOverridden.getter())
  {
    if (qword_1EDDFD028 != -1)
    {
      sub_1C4419274();
      swift_once();
    }

    v1 = sub_1C4F00978();
    sub_1C43FCEE8(v1, qword_1EDE2DE10);
    v2 = sub_1C4F00968();
    v3 = sub_1C4F01CD8();
    if (sub_1C4402B64(v3))
    {
      *sub_1C43FCED0() = 0;
      sub_1C4402B48();
      _os_log_impl(v4, v5, v6, v7, v8, 2u);
      sub_1C43FE9D4();
    }

    v9 = *(v0 + 688);

    if (v9 != 1)
    {
      sub_1C4ACE0A8();

      sub_1C43FC1B0();
      goto LABEL_11;
    }

    v10 = sub_1C4ACD9E4();
    sub_1C43FFB2C(&type metadata for PipelineError, v10);
    *v11 = 0xD000000000000061;
    *(v11 + 8) = 0x80000001C4FAFE70;
    *(v11 + 16) = 1;
    swift_willThrow();
    goto LABEL_9;
  }

  v12 = *(v0 + 578);
  v13 = *(v0 + 712);
  v14 = *(v0 + 688);
  v15 = *(v13 + OBJC_IVAR____TtC24IntelligencePlatformCore8Pipeline_lockbox);
  v16 = swift_task_alloc();
  v17 = *(v0 + 696);
  *(v16 + 16) = v13;
  *(v16 + 24) = v12;
  *(v16 + 32) = v14;
  *(v16 + 40) = v17;
  os_unfair_lock_lock((v15 + 24));
  sub_1C446F880((v15 + 16), &v73);
  os_unfair_lock_unlock((v15 + 24));
  v20 = v73;
  *(v0 + 752) = v73;

  if (!v20)
  {
    v25 = sub_1C4ACD9E4();
    v26 = sub_1C43FFB2C(&type metadata for PipelineError, v25);
    *v27 = 0;
    *(v27 + 8) = 0;
    *(v27 + 16) = 2;
    swift_willThrow();
    *(v0 + 664) = v26;
    v28 = v26;
    sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
    if (swift_dynamicCast())
    {
      v29 = *(v0 + 578);

      v30 = sub_1C43FE5F8();
      v31(v30);
      v32 = [objc_opt_self() defaultCenter];
      v33 = *MEMORY[0x1E69A9F38];
      sub_1C456902C(&qword_1EC0C2DE8, &unk_1C4F4E048);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1C4F0D130;
      strcpy((v0 + 616), "pipelineType");
      *(v0 + 629) = 0;
      *(v0 + 630) = -5120;
      v35 = v33;
      v36 = MEMORY[0x1E69E6158];
      sub_1C4F02198();
      sub_1C440BDD4();
      switch(v29)
      {
        case 1:
          sub_1C4426D3C();
          break;
        case 2:
          sub_1C44336F0();
          break;
        case 3:
          sub_1C4403620();
          break;
        default:
          break;
      }

      *(inited + 96) = v36;
      *(inited + 72) = v38;
      *(inited + 80) = v37;
      sub_1C4F00F28();
      v57 = sub_1C4440DAC();
      sub_1C446C7A4(v57, v58, v59, v32);

      sub_1C43FFB2C(&type metadata for PipelineError, v25);
      sub_1C44803FC();
      sub_1C4AC3120(v60);
      swift_willThrow();

      v61 = sub_1C4404044();
      v62(v61);
      v63 = *(v0 + 664);
    }

    else
    {

      *(v0 + 672) = v26;
      v39 = v26;
      v40 = swift_dynamicCast();
      v41 = *(v0 + 578);
      if (!v40)
      {

        v50 = [objc_opt_self() defaultCenter];
        v51 = *MEMORY[0x1E69A9F48];
        sub_1C456902C(&qword_1EC0C2DE8, &unk_1C4F4E048);
        v52 = swift_initStackObject();
        *(v52 + 16) = xmmword_1C4F0D130;
        strcpy((v0 + 584), "pipelineType");
        *(v0 + 597) = 0;
        *(v0 + 598) = -5120;
        v53 = v51;
        v54 = MEMORY[0x1E69E6158];
        sub_1C4F02198();
        sub_1C440BDD4();
        switch(v41)
        {
          case 1:
            sub_1C4426D3C();
            break;
          case 2:
            sub_1C44336F0();
            break;
          case 3:
            sub_1C4403620();
            break;
          default:
            break;
        }

        *(v52 + 96) = v54;
        *(v52 + 72) = v56;
        *(v52 + 80) = v55;
        v68 = sub_1C4F00F28();
        sub_1C446C7A4(v53, 0, v68, v50);

        swift_getErrorValue();
        v69 = *(v0 + 544);
        sub_1C43FFB2C(&type metadata for PipelineError, v25);
        sub_1C44803FC();
        sub_1C4ACE0C0(v69, v70);
        swift_willThrow();

        goto LABEL_9;
      }

      v71 = *(v0 + 568);
      v72 = *(v0 + 560);
      v42 = *(v0 + 576);
      v43 = [objc_opt_self() defaultCenter];
      v44 = *MEMORY[0x1E69A9F48];
      sub_1C456902C(&qword_1EC0C2DE8, &unk_1C4F4E048);
      v45 = swift_initStackObject();
      *(v45 + 16) = xmmword_1C4F0D130;
      strcpy((v0 + 600), "pipelineType");
      *(v0 + 613) = 0;
      *(v0 + 614) = -5120;
      v46 = v44;
      v47 = MEMORY[0x1E69E6158];
      sub_1C4F02198();
      sub_1C440BDD4();
      switch(v41)
      {
        case 1:
          sub_1C4426D3C();
          break;
        case 2:
          sub_1C44336F0();
          break;
        case 3:
          sub_1C4403620();
          break;
        default:
          break;
      }

      *(v45 + 96) = v47;
      *(v45 + 72) = v49;
      *(v45 + 80) = v48;
      sub_1C4F00F28();
      v64 = sub_1C4440DAC();
      sub_1C446C7A4(v64, v65, v66, v43);

      sub_1C43FFB2C(&type metadata for PipelineError, v25);
      *v67 = v72;
      *(v67 + 8) = v71;
      *(v67 + 16) = v42;
      swift_willThrow();

      v63 = *(v0 + 672);
    }

LABEL_9:
    sub_1C4ACE0A8();

    sub_1C43FBDA0();
LABEL_11:

    return v18();
  }

  v21 = swift_task_alloc();
  *(v0 + 760) = v21;
  v22 = sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
  *v21 = v0;
  v21[1] = sub_1C4AC2640;
  v23 = MEMORY[0x1E69E6370];
  v24 = MEMORY[0x1E69E7288];

  return MEMORY[0x1EEE6DA10](v0 + 577, v20, v23, v22, v24);
}

uint64_t sub_1C446DC44()
{
  sub_1C43FCF70();
  v0 = swift_task_alloc();
  v1 = sub_1C43FC218(v0);
  *v1 = v2;
  v3 = sub_1C4406C84(v1);

  return v4(v3);
}

uint64_t sub_1C446DCDC()
{
  sub_1C43FCF70();
  v0 = swift_task_alloc();
  v1 = sub_1C43FC218(v0);
  *v1 = v2;
  v3 = sub_1C440E174(v1);

  return v4(v3);
}

uint64_t sub_1C446DD70()
{
  sub_1C43FBCD4();
  *(v0 + 48) = 2;

  v1 = swift_task_alloc();
  v2 = sub_1C4414DF4(v1);
  *v2 = v3;
  v2[1] = sub_1C4ABFD8C;
  v4 = sub_1C4414E5C(*(v0 + 16));

  return sub_1C446D32C(v4, v5, v6, v7);
}

uint64_t sub_1C446DE28(uint64_t a1)
{
  if (*(v1 + 32))
  {
    v3 = *(v1 + 24);
    if (v3 == 4)
    {
      if (qword_1EDDFD028 != -1)
      {
        swift_once();
      }

      v4 = sub_1C4F00978();
      sub_1C442B738(v4, qword_1EDE2DE10);
      v5 = sub_1C4F00968();
      v6 = sub_1C4F01CE8();
      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        *v7 = 0;
        _os_log_impl(&dword_1C43F8000, v5, v6, "Pipeline: pipelineType was nil when task was not nil.", v7, 2u);
        MEMORY[0x1C6942830](v7, -1, -1);
      }

      sub_1C4ACD9E4();
      swift_allocError();
      *v8 = 0;
      *(v8 + 8) = 0;
    }

    else
    {
      if (qword_1EDDFD028 != -1)
      {
        swift_once();
      }

      v11 = sub_1C4F00978();
      sub_1C442B738(v11, qword_1EDE2DE10);
      v12 = sub_1C4F00968();
      v13 = sub_1C4F01CF8();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v19 = v15;
        *v14 = 136315138;
        sub_1C4F02248();

        v16 = 0xE700000000000000;
        v17 = 0x6E776F6E6B6E75;
        switch(v3)
        {
          case 1:
            v16 = 0xE400000000000000;
            v17 = 1819047270;
            break;
          case 2:
            v16 = 0xE500000000000000;
            v17 = 0x61746C6564;
            break;
          case 3:
            v16 = 0xEA0000000000676ELL;
            v17 = 0x69686374614D6F74;
            break;
          default:
            break;
        }

        MEMORY[0x1C6940010](v17, v16);

        MEMORY[0x1C6940010](62, 0xE100000000000000);
        v18 = sub_1C441D828(0x6E696C657069503CLL, 0xEF203A6570795465, &v19);

        *(v14 + 4) = v18;
        _os_log_impl(&dword_1C43F8000, v12, v13, "Pipeline: already running %s pipeline.", v14, 0xCu);
        sub_1C440962C(v15);
        MEMORY[0x1C6942830](v15, -1, -1);
        MEMORY[0x1C6942830](v14, -1, -1);
      }

      sub_1C4ACD9E4();
      swift_allocError();
      *v8 = v3;
      *(v8 + 8) = 0;
    }

    *(v8 + 16) = 0;
    return swift_willThrow();
  }

  result = sub_1C4469AB4(a1, 1u);
  if (!v2 && (result & 1) == 0)
  {
    sub_1C4ACD9E4();
    swift_allocError();
    *v10 = xmmword_1C4F49E20;
    *(v10 + 16) = 2;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1C446E1BC()
{
  v0 = 0xED00006D65747379;
  v1 = sub_1C4400720() & 0xFFFFFFFFFFFFLL | 0x5365000000000000;
  switch(v2)
  {
    case 1:
      v0 = 0xE800000000000000;
      v1 = sub_1C43FD3B0();
      break;
    case 2:
      v0 = 0xED00006E6F697461;
      v1 = sub_1C4432574();
      break;
    case 3:
      v0 = 0xEE0070756E61656CLL;
      v1 = sub_1C4400720() & 0xFFFFFFFFFFFFLL | 0x4365000000000000;
      break;
    default:
      break;
  }

  MEMORY[0x1C6940010](v1, v0);

  MEMORY[0x1C6940010](0x6B636F6C2ELL, 0xE500000000000000);
  sub_1C4EF9888();
}

uint64_t sub_1C446E324@<X0>(_DWORD *a5@<X8>)
{
  result = sub_1C4F00A28();
  v7 = result;
  if ((result & 0x100000000) != 0)
  {
    sub_1C499A9B0();
    swift_willThrowTypedImpl();
    result = swift_allocError();
    *v8 = v7;
  }

  else
  {
    *a5 = result;
  }

  return result;
}

uint64_t sub_1C446E3AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_1EDDF2318 != -1)
  {
    swift_once();
  }

  result = sub_1C446A178();
  if (!v3)
  {
    v7 = *(result + 16);

    os_unfair_lock_lock((v7 + 24));
    v8 = *(v7 + 16);
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1C446A2A4(a3, a2, isUniquelyReferenced_nonNull_native, v10, v11, v12, v13, v14, *(v8 + 16), v16);
    *(v8 + 16) = v15;
    swift_endAccess();
    os_unfair_lock_unlock((v7 + 24));
  }

  return result;
}

unint64_t sub_1C446E4BC(char a1)
{
  result = 0x676E696E6E7572;
  switch(a1)
  {
    case 1:
      result = 0x656C6C65636E6163;
      break;
    case 2:
      result = 0x6574656C706D6F63;
      break;
    case 3:
      result = 0xD000000000000018;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C446E554(char a1)
{
  if (!a1)
  {
    return 0x6E69616D6F64;
  }

  if (a1 == 1)
  {
    return 7955819;
  }

  return 0x65756C6176;
}

unint64_t sub_1C446E5F8()
{
  result = qword_1EDDFE8A0;
  if (!qword_1EDDFE8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFE8A0);
  }

  return result;
}

uint64_t sub_1C446E650(uint64_t a1, int a2)
{
  LODWORD(v92) = a2;
  v3 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v93 = &v78 - v4;
  v91 = sub_1C4EF9CD8();
  v5 = *(v91 - 8);
  MEMORY[0x1EEE9AC00](v91);
  v7 = &v78 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C4EF9D38();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v78 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1C456902C(&qword_1EC0C2AA8, &qword_1C4F4E070);
  MEMORY[0x1EEE9AC00](v12);
  v14 = (&v78 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v15);
  v87 = (&v78 - v16);
  v90 = a1;
  v17 = Pipeline.StatusStore.currentSessionId()();
  v18 = &qword_1C4F0D000;
  v85 = v5;
  v86 = v12;
  v84 = v7;
  if (v17.value._object)
  {

    v89 = MEMORY[0x1E69E7CC0];
    v19 = v92;
  }

  else
  {
    v82 = v11;
    v88 = v9;
    v89 = v8;
    if (qword_1EDDF7B38 != -1)
    {
      swift_once();
    }

    v21 = qword_1EDE2D8C0;
    v20 = *algn_1EDE2D8C8;
    v22 = qword_1EDE2D8D0;
    v23 = unk_1EDE2D8D8;
    v24 = qword_1EDE2D8E0;
    v25 = v12;
    v26 = v87;
    sub_1C4EF9CC8();
    *v26 = v21;
    v26[1] = v20;
    v26[2] = v22;
    v26[3] = v23;
    v26[4] = v24;
    v27 = (v26 + *(v25 + 48));
    *v27 = v23;
    v27[1] = v24;
    v101 = v25;
    v102 = sub_1C4401CBC(qword_1EDDF7CD8, &qword_1EC0C2AA8, &qword_1C4F4E070, &unk_1C4F555C8);
    v28 = sub_1C4422F90(&v100);
    sub_1C446C964(v26, v28, &qword_1EC0C2AA8, &qword_1C4F4E070);
    v81 = sub_1C456902C(&unk_1EC0C2E30, &qword_1C4F4E080);
    inited = swift_initStackObject();
    v80 = xmmword_1C4F0D130;
    *(inited + 16) = xmmword_1C4F0D130;
    v83 = inited;
    sub_1C441D670(&v100, inited + 32);
    sub_1C446F0D0(v23, v24);
    sub_1C446F0D0(v23, v24);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C446F170(v26, &qword_1EC0C2AA8, &qword_1C4F4E070);
    v30 = v82;
    if (qword_1EDDF7AC0 != -1)
    {
      swift_once();
    }

    v31 = qword_1EDE2D758;
    v32 = unk_1EDE2D760;
    v34 = qword_1EDE2D768;
    v33 = unk_1EDE2D770;
    v35 = qword_1EDE2D778;
    sub_1C4EF9058();
    v36 = sub_1C4EF9CF8();
    v79 = v36;
    v38 = v37;
    (*(v88 + 8))(v30, v89);
    *__src = v31;
    *&__src[8] = v32;
    *&__src[16] = v34;
    *&__src[24] = v33;
    *&__src[32] = v35;
    *&__src[40] = v36;
    *&__src[48] = v38;
    *&__src[56] = v33;
    *&__src[64] = v35;
    v98 = sub_1C456902C(&unk_1EC0C2E78, &qword_1C4F4E0A8);
    v99 = sub_1C4401CBC(&qword_1EDDF7CB0, &unk_1EC0C2E78, &qword_1C4F4E0A8, &unk_1C4F555C8);
    *&v97 = swift_allocObject();
    memcpy((v97 + 16), __src, 0x48uLL);
    v39 = swift_initStackObject();
    *(v39 + 16) = v80;
    sub_1C441D670(&v97, v39 + 32);
    v104 = v31;
    v105 = v32;
    v106 = v34;
    v107 = v33;
    v108 = v35;
    v109 = v79;
    v110 = v38;
    v111 = v33;
    v112 = v35;
    sub_1C446F0D0(v33, v35);
    sub_1C446F0D0(v33, v35);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C446C964(__src, &v94, &unk_1EC0C2E78, &qword_1C4F4E0A8);
    sub_1C446F170(&v104, &unk_1EC0C2E78, &qword_1C4F4E0A8);
    sub_1C456902C(&qword_1EC0C2E60, &unk_1C4F54100);
    v40 = swift_initStackObject();
    *(v40 + 16) = xmmword_1C4F0CE60;
    *(v40 + 32) = v83;
    *(v40 + 40) = v39;
    sub_1C446F8F4(v40);
    v89 = v41;
    swift_setDeallocating();
    sub_1C446FAEC();
    v12 = v86;
    v19 = v92;
    v18 = &qword_1C4F0D000;
  }

  *__src = 0xD000000000000013;
  *&__src[8] = 0x80000001C4FAFEE0;
  *&__src[24] = 0;
  *&__src[32] = 0;
  *&__src[16] = &unk_1F43DAAE0;
  __src[40] = v19;
  *&__src[48] = 0uLL;
  v101 = sub_1C456902C(&unk_1EC0C2E20, &qword_1C4F4E078);
  v102 = sub_1C4401CBC(&unk_1EDDF7CB8, &unk_1EC0C2E20, &qword_1C4F4E078, &unk_1C4F555C8);
  v42 = swift_allocObject();
  *&v100 = v42;
  v43 = *&__src[16];
  v42[1] = *__src;
  v42[2] = v43;
  v44 = *&__src[48];
  v42[3] = *&__src[32];
  v42[4] = v44;
  v45 = sub_1C456902C(&unk_1EC0C2E30, &qword_1C4F4E080);
  v46 = swift_initStackObject();
  v92 = *(v18 + 19);
  *(v46 + 16) = v92;
  v88 = v46;
  sub_1C441D670(&v100, v46 + 32);
  v104 = 0xD000000000000013;
  v105 = 0x80000001C4FAFEE0;
  v107 = 0;
  v108 = 0;
  v106 = &unk_1F43DAAE0;
  LOBYTE(v109) = v19;
  v110 = 0;
  v111 = 0;
  sub_1C446C964(__src, &v94, &unk_1EC0C2E20, &qword_1C4F4E078);
  sub_1C446F170(&v104, &unk_1EC0C2E20, &qword_1C4F4E078);
  if (qword_1EDDF7B98 != -1)
  {
    swift_once();
  }

  v48 = qword_1EDE2D9D8;
  v47 = unk_1EDE2D9E0;
  v49 = qword_1EDE2D9E8;
  v50 = unk_1EDE2D9F0;
  v51 = qword_1EDE2D9F8;
  sub_1C4EF9CC8();
  *v14 = v48;
  v14[1] = v47;
  v14[2] = v49;
  v14[3] = v50;
  v14[4] = v51;
  v52 = (v14 + *(v12 + 48));
  *v52 = v50;
  v52[1] = v51;
  v95 = v12;
  v82 = sub_1C4401CBC(qword_1EDDF7CD8, &qword_1EC0C2AA8, &qword_1C4F4E070, &unk_1C4F555C8);
  v96 = v82;
  v53 = sub_1C4422F90(&v94);
  sub_1C446C964(v14, v53, &qword_1EC0C2AA8, &qword_1C4F4E070);
  v83 = v45;
  v54 = swift_initStackObject();
  *(v54 + 16) = v92;
  sub_1C441D670(&v94, v54 + 32);
  sub_1C446F0D0(v50, v51);
  sub_1C446F0D0(v50, v51);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C446F170(v14, &qword_1EC0C2AA8, &qword_1C4F4E070);
  if (qword_1EDDF7B90 != -1)
  {
    swift_once();
  }

  sub_1C446ABD0(1);
  v55 = v91;
  v56 = v93;
  sub_1C446FB00();

  v63 = sub_1C44157D4(v56, 1, v55);
  if (v63 == 1)
  {
    sub_1C446F170(v56, &unk_1EC0B84E0, qword_1C4F0D2D0);
    v57 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v64 = v85;
    v65 = v84;
    (*(v85 + 32))();
    if (qword_1EDDF7AC8 != -1)
    {
      swift_once();
    }

    v66 = *algn_1EDE2D788;
    v81 = qword_1EDE2D780;
    v90 = *algn_1EDE2D788;
    v67 = qword_1EDE2D790;
    v68 = unk_1EDE2D798;
    v93 = qword_1EDE2D790;
    v69 = qword_1EDE2D7A0;
    v70 = v86;
    v71 = *(v64 + 16);
    v72 = v87;
    v71(v87 + *(v86 + 44), v65, v55);
    *v72 = v81;
    v72[1] = v66;
    v72[2] = v67;
    v72[3] = v68;
    v72[4] = v69;
    v73 = (v72 + *(v70 + 48));
    *v73 = v68;
    v73[1] = v69;
    v98 = v70;
    v99 = v82;
    v74 = sub_1C4422F90(&v97);
    v75 = v65;
    sub_1C446C964(v72, v74, &qword_1EC0C2AA8, &qword_1C4F4E070);
    v76 = swift_allocObject();
    v77 = v85;
    v57 = v76;
    *(v76 + 16) = v92;
    sub_1C441D670(&v97, v76 + 32);
    sub_1C446F0D0(v68, v69);
    sub_1C446F0D0(v68, v69);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C446F170(v72, &qword_1EC0C2AA8, &qword_1C4F4E070);
    (*(v77 + 8))(v75, v55);
  }

  sub_1C456902C(&qword_1EC0C2E60, &unk_1C4F54100);
  v58 = swift_initStackObject();
  *(v58 + 16) = xmmword_1C4F0D480;
  v59 = v88;
  *(v58 + 32) = v89;
  *(v58 + 40) = v59;
  *(v58 + 48) = v54;
  *(v58 + 56) = v57;
  sub_1C446F8F4(v58);
  v61 = v60;
  swift_setDeallocating();
  sub_1C446FAEC();
  return v61;
}